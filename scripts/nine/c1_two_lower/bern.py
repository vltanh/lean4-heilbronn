#!/usr/bin/env python3
"""Labelled Bernstein subdivision trees for Heilbronn/Nine/C1/TwoLower/Bern.lean.

A certificate is a list of polynomials P_0, ..., P_{m-1} (sympy expressions in the variables
`vs`, with tensor degrees ns_j) and a box.  `find_tree` bisects the box until on every leaf some
P_j has all its tensor Bernstein coefficients positive; the leaf records j and the bound
M = floor(1 / min coefficient) + 1 needed by `Cert.bernsteinBoxCheck` (the check asks every
Bernstein coefficient of d * P_j to be at least 1/M, for the integer d >= 1 of `Expr.toPoly`).
Every leaf is verified in exact rational arithmetic.  `lean_tree` prints the `LTree` term.
"""
import itertools
from fractions import Fraction as Fr
from math import comb

import numpy as np
import sympy as sp


def coeffs(expr, vs):
    P = sp.Poly(sp.expand(expr), *vs)
    return {m: Fr(int(c.p), int(c.q)) for m, c in P.terms()}


def degrees(coef, k):
    return [max((m[i] for m in coef), default=0) for i in range(k)]


class Pol:
    def __init__(self, expr, vs, ns=None):
        self.coef = coeffs(expr, vs)
        self.k = len(vs)
        self.ns = ns if ns is not None else degrees(self.coef, self.k)
        assert all(all(m[i] <= self.ns[i] for i in range(self.k)) for m in self.coef)
        self.AF = np.zeros([n + 1 for n in self.ns])
        for m, c in self.coef.items():
            self.AF[m] = float(c)

    def bern_float(self, box):
        A = self.AF
        for ax, (lo, hi) in enumerate(box):
            n = self.ns[ax]
            M = np.zeros((n + 1, n + 1))
            for i in range(n + 1):
                for j in range(i + 1):
                    M[j, i] = comb(i, j) * float(lo) ** (i - j) * float(hi - lo) ** j
            A = np.moveaxis(np.tensordot(M, A, axes=([1], [ax])), 0, ax)
        for ax, n in enumerate(self.ns):
            M = np.zeros((n + 1, n + 1))
            for kk in range(n + 1):
                for i in range(kk + 1):
                    M[kk, i] = comb(kk, i) / comb(n, i)
            A = np.moveaxis(np.tensordot(M, A, axes=([1], [ax])), 0, ax)
        return A.min()

    def bern_exact(self, box):
        A = dict(self.coef)
        for ax in range(self.k):
            lo, hi = box[ax]
            B = {}
            for mon, c in A.items():
                i = mon[ax]
                for j in range(i + 1):
                    m2 = list(mon); m2[ax] = j; m2 = tuple(m2)
                    B[m2] = B.get(m2, 0) + c * comb(i, j) * lo ** (i - j) * (hi - lo) ** j
            A = B
        for ax in range(self.k):
            n = self.ns[ax]
            B = {}
            for mon, c in A.items():
                i = mon[ax]
                for kk in range(i, n + 1):
                    m2 = list(mon); m2[ax] = kk; m2 = tuple(m2)
                    B[m2] = B.get(m2, 0) + c * Fr(comb(kk, i), comb(n, i))
            A = B
        return min(A.get(idx, Fr(0)) for idx in itertools.product(*[range(n + 1) for n in self.ns]))


def find_tree(pols, box, axes, maxdepth=24, eps=1e-12, order=None):
    """Bisect `box` along `axes` (fixed cyclic order if `order` is given, else greedily)."""
    stats = {'leaves': 0, 'depth': 0}

    def leaf(b):
        best = None
        for j, p in enumerate(pols):
            m = p.bern_float(b)
            if best is None or m > best[0]:
                best = (m, j)
        return best

    def build(b, depth):
        m, j = leaf(b)
        if m > eps:
            mx = pols[j].bern_exact(b)
            if mx > 0:
                stats['leaves'] += 1
                stats['depth'] = max(stats['depth'], depth)
                return ('leaf', j, int(1 / mx) + 1)
        assert depth < maxdepth, (b, m)
        if order is not None:
            ax = order[depth % len(order)]
            mid = (b[ax][0] + b[ax][1]) / 2
            lb = list(b); lb[ax] = (b[ax][0], mid)
            rb = list(b); rb[ax] = (mid, b[ax][1])
        else:
            best = None
            for ax in axes:
                mid = (b[ax][0] + b[ax][1]) / 2
                lb = list(b); lb[ax] = (b[ax][0], mid)
                rb = list(b); rb[ax] = (mid, b[ax][1])
                sc = min(leaf(lb)[0], leaf(rb)[0])
                if best is None or sc > best[0]:
                    best = (sc, ax, mid, lb, rb)
            _, ax, mid, lb, rb = best
        return ('split', ax, mid, build(lb, depth + 1), build(rb, depth + 1))

    t = build(list(box), 0)
    return t, stats


def lean_q(x):
    x = Fr(x)
    return f"{x.numerator}/{x.denominator}" if x.denominator != 1 else f"{x.numerator}"


def lean_tree(t):
    if t[0] == 'leaf':
        return f".leaf {t[1]} {t[2]}"
    return f".split {t[1]} ({lean_q(t[2])}) ({lean_tree(t[3])}) ({lean_tree(t[4])})"


def subtrees(t, depth):
    """The subtrees at a given depth (for splitting a big tree over several theorems), with the
    paths to them."""
    out = []

    def go(t, d, path):
        if d == depth or t[0] == 'leaf':
            out.append((path, t))
            return
        go(t[3], d + 1, path + [(t[1], t[2], 0)])
        go(t[4], d + 1, path + [(t[1], t[2], 1)])
    go(t, 0, [])
    return out


def lean_box(box):
    return "[" + ", ".join(f"({lean_q(a)}, {lean_q(b)})" for a, b in box) + "]"


def chunked_lean(t, box, depth, es_name='es', prefix='t'):
    """Lean source splitting the tree `t` at `depth`: one `def`/`theorem` per subtree and the
    glued check of the whole tree (`ltreeCheck_split`)."""
    defs = []
    counter = [0]

    def go(t, b, d):
        if d == depth or t[0] == 'leaf':
            k = counter[0]; counter[0] += 1
            defs.append(f"def {prefix}{k} : LTree :=\n  {lean_tree(t)}\n\n"
                        f"theorem {prefix}{k}_check : ltreeCheck {es_name} {prefix}{k}\n"
                        f"    {lean_box(b)} = true := by\n  decide +kernel\n")
            return f"{prefix}{k}", f"{prefix}{k}_check"
        ax, m = t[1], t[2]
        lb = list(b); lb[ax] = (b[ax][0], m)
        rb = list(b); rb[ax] = (m, b[ax][1])
        lt, lp = go(t[3], lb, d + 1)
        rt, rp = go(t[4], rb, d + 1)
        return (f"(.split {ax} ({lean_q(m)}) {lt} {rt})",
                f"(ltreeCheck_split {lp} {rp})")
    tt, pp = go(t, list(box), 0)
    return "\n".join(defs), tt, pp
