#!/usr/bin/env python3
"""Shared exporter for kernel-checked polynomial certificates (Heilbronn/Common/Certificate.lean).

A certificate excludes a case: atoms f_1..f_m (expressions known >= 0 in the case) and positive
weights w_j with index lists I_j such that sum_j w_j prod_{i in I_j} f_i is negative on [0,1]^n.
Lean's `check` multiplies the *integer* polynomials `(f_i.toPoly).2 = d_i * f_i`, so the integer
weights it receives must be rescaled: W_j = w_j * M / prod_{i in I_j} d_i for a common M.

This module mirrors Lean exactly:
  * `E` builds expressions with the constructors of `Heilbronn.Cert.Expr` (var, const, add, sub,
    mul); Python operators build them as Lean's `CertNotation` instances do (`+`, `-`, `*`,
    integer literals are `const n`);
  * `to_poly(e)` is `Expr.toPoly` (same denominators, unreduced), keys in base 32;
  * `lean(e)` prints the expression in Lean syntax (`v i`, `k (p/q)`, `+`, `-`, `*`, numerals);
  * `integer_weights(atoms, terms)` turns rational weights into the integer weights for
    `term_rows%`, and `check(atoms, int_terms)` re-runs Lean's test (monomial bound < 0) in Python.

Usage: build atoms as E objects, collect terms [(Fraction weight, [atom indices])], then
  W = integer_weights(atoms, terms); assert check(atoms, W); write_terms(path, W).
"""
from fractions import Fraction as F
from math import lcm, gcd

BASE = 32


class E:
    __slots__ = ('op', 'a', 'b')

    def __init__(self, op, a=None, b=None):
        self.op, self.a, self.b = op, a, b

    @staticmethod
    def lift(x):
        if isinstance(x, E):
            return x
        if isinstance(x, int):
            return E('nat', x) if x >= 0 else E('const', F(x))
        return E('const', F(x))

    def __add__(self, o): return E('add', self, E.lift(o))
    def __radd__(self, o): return E('add', E.lift(o), self)
    def __sub__(self, o): return E('sub', self, E.lift(o))
    def __rsub__(self, o): return E('sub', E.lift(o), self)
    def __mul__(self, o): return E('mul', self, E.lift(o))
    def __rmul__(self, o): return E('mul', E.lift(o), self)


def v(i): return E('var', i)
def k(q): return E('const', F(q))


def esarea(p, q, r):
    """Twice the signed area, as `Expr.esarea` in CertNotation.lean."""
    return (q[0] - p[0]) * (r[1] - p[1]) - (q[1] - p[1]) * (r[0] - p[0])


def _padd(p, q):
    out = dict(p)
    for m, c in q.items():
        out[m] = out.get(m, 0) + c
    return {m: c for m, c in out.items() if c}


def _pscale(c, p):
    return {m: c * x for m, x in p.items() if c * x}


def _pmul(p, q):
    out = {}
    for m, c in p.items():
        for n, d in q.items():
            out[m + n] = out.get(m + n, 0) + c * d
    return {m: c for m, c in out.items() if c}


def to_poly(e):
    """(d, poly) exactly as Lean's `Expr.toPoly`: d > 0 and poly = d * e (integer coefficients)."""
    if e.op == 'var':
        return 1, {BASE ** e.a: 1}
    if e.op == 'nat':
        return 1, ({0: e.a} if e.a else {})
    if e.op == 'const':
        q = e.a
        return q.denominator, ({0: q.numerator} if q.numerator else {})
    d1, p1 = to_poly(e.a)
    d2, p2 = to_poly(e.b)
    if e.op == 'add':
        return d1 * d2, _padd(_pscale(d2, p1), _pscale(d1, p2))
    if e.op == 'sub':
        return d1 * d2, _padd(_pscale(d2, p1), _pscale(-d1, p2))
    if e.op == 'mul':
        return d1 * d2, _pmul(p1, p2)
    raise ValueError(e.op)


def deg(e):
    """`Expr.deg`."""
    if e.op == 'var':
        return 1
    if e.op in ('nat', 'const'):
        return 0
    if e.op in ('add', 'sub'):
        return max(deg(e.a), deg(e.b))
    return deg(e.a) + deg(e.b)


def lean(e, prec=0):
    """Lean source for `e` using CertNotation (`v i`, `k (q)`, numerals, `+ - *`)."""
    if e.op == 'var':
        return 'v %d' % e.a
    if e.op == 'nat':
        return str(e.a)
    if e.op == 'const':
        q = e.a
        s = 'k (%d)' % q.numerator if q.denominator == 1 else 'k (%d / %d)' % (q.numerator, q.denominator)
        return s
    if e.op in ('add', 'sub'):
        s = '%s %s %s' % (lean(e.a, 1), '+' if e.op == 'add' else '-', lean(e.b, 2))
        return '(%s)' % s if prec >= 2 else s
    s = '%s * %s' % (lean(e.a, 2), lean(e.b, 3))
    return '(%s)' % s if prec >= 3 else s


def rat_value_poly(e):
    """The rational polynomial of e (dict key -> Fraction)."""
    d, p = to_poly(e)
    return {m: F(c, d) for m, c in p.items()}


def integer_weights(atoms, terms):
    """terms: [(Fraction w > 0, [indices])]. Returns [(int W > 0, indices)] for Lean's `check`,
    with W_j = w_j * M / prod d_i, M chosen so every W_j is an integer."""
    ds = [to_poly(a)[0] for a in atoms]
    raws = []
    for w, idx in terms:
        w = F(w)
        assert w > 0
        prod = 1
        for i in idx:
            prod *= ds[i]
        raws.append((w / prod, idx))
    M = 1
    for r, _ in raws:
        M = lcm(M, r.denominator)
    out = [(int(r * M), idx) for r, idx in raws]
    g = 0
    for W, _ in out:
        g = gcd(g, W)
    return [(W // g, idx) for W, idx in out]


def expand(atoms, int_terms):
    polys = [to_poly(a)[1] for a in atoms]
    total = {}
    for W, idx in int_terms:
        p = {0: 1}
        for i in idx:
            p = _pmul(p, polys[i])
        total = _padd(total, _pscale(W, p))
    return total


def bound(p):
    return sum(c if m == 0 else max(c, 0) for m, c in p.items())


def check(atoms, int_terms):
    """Python mirror of Lean's `check`: positive weights, degrees < 32, monomial bound < 0."""
    if any(W <= 0 for W, _ in int_terms):
        return False
    if any(sum(deg(atoms[i]) for i in idx) >= BASE for _, idx in int_terms):
        return False
    return bound(expand(atoms, int_terms)) < 0


def write_terms(path, int_terms):
    with open(path, 'w') as fh:
        for W, idx in int_terms:
            fh.write(' '.join(map(str, [W] + list(idx))) + '\n')


def lean_list(name, atoms, indent='  '):
    body = (',\n' + indent).join(lean(a) for a in atoms)
    return 'def %s : List Expr :=\n%s[%s]' % (name, indent, body)
