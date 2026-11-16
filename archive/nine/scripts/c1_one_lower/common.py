#!/usr/bin/env python3
"""Shared Python mirror of Heilbronn/Nine/C1/OneLower/CoverCommon.lean for the one-lower packages.

Atoms of a table cell are `pre ++ [costAtom pt bnd f (insideList tb free f).length for f in tb]
++ post` (Lean `tableAtoms`). Expressions are certlib.E trees built exactly as in Lean.

`convert` turns a hand-checker certificate (factor terms 'f', cost terms 'q', cubic terms 'c')
into rational terms over the Lean atoms of a target cell: a checker cost (t, sg, b_src) is the
Lean cost of (t, sg) with bound b_tgt >= b_src plus the nonnegative constant b_tgt - b_src, so the
expanded polynomial is unchanged (this also realizes the checkers' reuse rule).
"""
import sys
from fractions import Fraction as F
from pathlib import Path

ROOT = Path(__file__).resolve().parents[3]
sys.path.insert(0, str(ROOT / 'scripts'))
sys.path.insert(0, str(ROOT / 'docs' / 'proof' / 'nine'))
from certlib import E, v, k, esarea  # noqa: E402,F401
import certlib  # noqa: E402

N = lambda n: E.lift(n)  # noqa: E731  Lean numerals (OfNat) are `const n`
SQ = F(8, 73)
RHO = F(49, 60)


def bnd(n):
    return F(8, 73) if n == 0 else F(24, 73) if n == 1 else F(49, 60)


LEX = [(a, b, c) for a in range(9) for b in range(9) for c in range(9) if a < b < c]


def lookup(tb, t):
    for key, sg in tb:
        if key == t:
            return sg
    return None


def oriented_lookup(tb, a, b, c):
    if a < b < c:
        return lookup(tb, (a, b, c))
    if b < c < a:
        return lookup(tb, (b, c, a))
    if c < a < b:
        return lookup(tb, (c, a, b))
    flip = lambda s: None if s is None else (not s)  # noqa: E731
    if b < a < c:
        return flip(lookup(tb, (b, a, c)))
    if a < c < b:
        return flip(lookup(tb, (a, c, b)))
    if c < b < a:
        return flip(lookup(tb, (c, b, a)))
    return None


def inside_list(tb, free, f):
    (a, b, c), sg = f
    return [j for j in free if oriented_lookup(tb, a, b, j) == sg
            and oriented_lookup(tb, b, c, j) == sg and oriented_lookup(tb, c, a, j) == sg]


def cost_atom(pt, f, n):
    (a, b, c), sg = f
    e = esarea(pt(a), pt(b), pt(c))
    return (e if sg else k(-1) * e) - k(bnd(n))


def table_atoms(pre, post, pt, free, tb):
    """Lean `tableAtoms`; also returns {(t, sg): (index, bound)} for the costs."""
    costs, index = [], {}
    for f in tb:
        n = len(inside_list(tb, free, f))
        index.setdefault(f, (len(pre) + len(costs), bnd(n)))
        costs.append(cost_atom(pt, f, n))
    return pre + costs + post, index


def convert(cert, nfac, qmap, cmap=None):
    """Rational terms over Lean atoms.

    qmap(qi) -> (lean_index, extra) where extra = b_tgt - b_src >= 0 (0 if exact);
    cmap(ci) -> lean index of the cubic cost ci."""
    out = []
    scale = cert['scale']
    for term in cert['terms']:
        if term[0] == 'f':
            out.append((F(term[2], scale), list(term[1])))
        elif term[0] == 'q':
            _, qi, fi, w = term
            li, extra = qmap(qi)
            assert extra >= 0
            fac = [fi] if fi >= 0 else []
            out.append((F(w, scale), [li] + fac))
            if extra:
                out.append((F(w, scale) * extra, fac))
        else:
            _, ci, w = term
            out.append((F(w, scale), [cmap(ci)]))
    # merge equal index lists
    merged = {}
    for w, idx in out:
        key = tuple(sorted(idx))
        merged[key] = merged.get(key, 0) + w
    return [(w, list(key)) for key, w in merged.items()]


def same_poly(e1, e2):
    return certlib.rat_value_poly(e1) == certlib.rat_value_poly(e2)


def checker_poly(p):
    """A hand-checker polynomial (dict sorted-variable-tuple -> Fraction) in certlib keys."""
    out = {}
    for m, c in p.items():
        key = sum(certlib.BASE ** i for i in m)
        out[key] = out.get(key, 0) + c
    return {m: c for m, c in out.items() if c}


def lean_rows(path):
    return '(term_rows%% "%s")' % path
