#!/usr/bin/env python3
"""Python mirror of Heilbronn/Nine/SixBoundary/SingleTop/Model.lean (same expression trees, same order).

The atoms are built with certlib.E exactly as the Lean definitions build them, so that
certlib.to_poly agrees with Lean's Expr.toPoly. The combinatorial parts (words, base pairs, base
signs, split vertices) are cross-checked against the hand checker
docs/proof/nine/check_six_boundary_single_top.py by export.py.

Points 0..8 are A, B, C, D, X, F, H, P, Q (the heptagon V0..V6 and the two interior points);
variables 0..11 are a, h, b, c, d, f, xX, yX, px, py, qx, qy.
"""
import sys
from fractions import Fraction as F
from pathlib import Path

ROOT = Path(__file__).resolve().parents[3]
sys.path.insert(0, str(ROOT / 'scripts'))
from certlib import E, v, k, esarea  # noqa: E402

ALL_WORDS = [[1, 1, 5, 5, 4, 3, 2], [1, 2, 5, 4, 4, 3, 2], [1, 3, 5, 4, 3, 3, 2],
             [1, 4, 5, 4, 3, 2, 2], [1, 5, 5, 4, 3, 2, 1], [2, 1, 1, 5, 5, 4, 3],
             [2, 1, 2, 5, 4, 4, 3], [2, 1, 3, 5, 4, 3, 3], [2, 1, 4, 5, 4, 3, 2],
             [2, 2, 1, 4, 5, 4, 3], [2, 2, 2, 4, 4, 4, 3], [2, 2, 3, 4, 4, 3, 3],
             [2, 2, 4, 4, 4, 3, 2], [2, 3, 2, 4, 3, 4, 3], [2, 3, 3, 4, 3, 3, 3],
             [2, 3, 4, 4, 3, 3, 2], [2, 4, 3, 4, 3, 2, 3], [2, 4, 4, 4, 3, 2, 2],
             [2, 5, 4, 4, 3, 2, 1], [3, 2, 1, 1, 5, 5, 4], [3, 2, 1, 2, 5, 4, 4],
             [3, 2, 1, 3, 5, 4, 3], [3, 2, 2, 1, 4, 5, 4], [3, 2, 2, 2, 4, 4, 4],
             [3, 2, 2, 3, 4, 4, 3], [3, 2, 3, 2, 4, 3, 4], [3, 2, 3, 3, 4, 3, 3],
             [3, 2, 4, 3, 4, 3, 2], [3, 3, 2, 1, 3, 5, 4], [3, 3, 2, 2, 3, 4, 4],
             [3, 3, 2, 3, 3, 4, 3], [3, 3, 3, 2, 3, 3, 4], [3, 3, 3, 3, 3, 3, 3],
             [3, 3, 4, 3, 3, 3, 2], [3, 4, 3, 2, 3, 2, 4], [3, 4, 3, 3, 3, 2, 3],
             [3, 4, 4, 3, 3, 2, 2], [3, 5, 4, 3, 3, 2, 1], [4, 3, 2, 1, 1, 5, 5],
             [4, 3, 2, 1, 2, 5, 4], [4, 3, 2, 2, 1, 4, 5], [4, 3, 2, 2, 2, 4, 4],
             [4, 3, 2, 3, 2, 4, 3], [4, 3, 3, 2, 1, 3, 5], [4, 3, 3, 2, 2, 3, 4],
             [4, 3, 3, 3, 2, 3, 3], [4, 3, 4, 3, 2, 3, 2], [4, 4, 3, 2, 1, 2, 5],
             [4, 4, 3, 2, 2, 2, 4], [4, 4, 3, 3, 2, 2, 3], [4, 4, 4, 3, 2, 2, 2],
             [4, 5, 4, 3, 2, 2, 1], [5, 4, 3, 2, 1, 1, 5], [5, 4, 3, 2, 2, 1, 4],
             [5, 4, 3, 3, 2, 1, 3], [5, 4, 4, 3, 2, 1, 2], [5, 5, 4, 3, 2, 1, 1]]
WORDS = [w for w in ALL_WORDS if w[3] >= 2]
EARS = [(0, 1, 6), (0, 1, 2), (1, 2, 3), (2, 3, 5), (3, 5, 6), (0, 5, 6)]


def word_at(w, i):
    return WORDS[w][i]


def wsign(w, i, j):
    return (j + 7 - i) % 7 <= WORDS[w][i]


def upper(w):
    return wsign(w, 6, 2)


def inside(w, t):
    a, b, c = t
    return wsign(w, a, b) and wsign(w, b, c) and wsign(w, c, a)


def same_sector(p, q):
    return wsign(p, 6, 3) == wsign(q, 6, 3) and wsign(p, 2, 5) == wsign(q, 2, 5)


def forced(p, q, vv):
    pHD, qHD, pCF, qCF = wsign(p, 6, 3), wsign(q, 6, 3), wsign(p, 2, 5), wsign(q, 2, 5)
    if pHD == qHD and pCF == qCF:
        return None
    if pHD != qHD and pCF != qCF:
        return {6: not pHD, 3: pHD, 2: not pCF, 5: pCF}.get(vv)
    if pHD == qHD:
        iso = 5 if pHD else 2
        side = pCF if iso == 5 else (not pCF)
    else:
        iso = 6 if pCF else 3
        side = (not pHD) if iso == 6 else pHD
    if vv == iso:
        return side
    return (not side) if vv in (6, 2, 3, 5) else None


def pair_sign(p, q, vv):
    if word_at(p, vv) < word_at(q, vv):
        return True
    if word_at(q, vv) < word_at(p, vv):
        return False
    if upper(p) and upper(q):
        return forced(p, q, vv)
    return None


def conflict(p, q):
    for vv in range(7):
        if word_at(p, vv) != word_at(q, vv):
            sg = forced(p, q, vv)
            if sg is not None and sg != (word_at(p, vv) < word_at(q, vv)):
                return True
    return False


def filter_ok(p, q):
    return ((upper(p) or upper(q)) and not any(inside(p, t) and inside(q, t) for t in EARS)
            and not (upper(p) and upper(q) and same_sector(p, q))
            and not (upper(p) and upper(q) and conflict(p, q)))


CASES = [(i, j) for i in range(52) for j in range(52) if i <= j and filter_ok(i, j)]

LEX = [(a, b, c) for a in range(9) for b in range(9) for c in range(9) if a < b < c]


def base_signs(p, q):
    out = []
    for t in LEX:
        if t[2] < 7:
            out.append((t, True))
        elif t[1] < 7:
            out.append((t, wsign(p if t[2] == 7 else q, t[0], t[1])))
        else:
            sg = pair_sign(p, q, t[0])
            if sg is not None:
                out.append((t, sg))
    return out


N = lambda n: E.lift(n)  # noqa: E731


def pt(i):
    return {0: (N(0), v(0)), 1: (v(2), N(0)), 2: (v(3), N(0)), 3: (N(1), v(4)),
            4: (v(6), v(7)), 5: (v(5), N(1)), 6: (N(0), v(1)), 7: (v(8), v(9)),
            8: (v(10), v(11))}[i]


SQ = F(8, 73)


def mixed(p, q):
    return not (upper(p) and upper(q))


def common_factors():
    out = [v(0) - k(F(1, 8)), v(2) - k(F(1, 8)), v(1) - k(4 * SQ), v(3) - k(4 * SQ),
           N(1) - v(1), N(1) - v(3), v(4) - v(0), v(1) - v(4), v(5) - v(2), v(3) - v(5),
           v(4) - v(5), v(1) - v(0) - k(SQ), v(3) - v(2) - k(SQ), k(F(7, 8)) - v(4),
           k(F(67, 100)) - v(5), v(6) - v(5) - k(SQ), v(7) - v(4) - k(SQ), N(1) - v(6),
           N(1) - v(7)]
    for i in (8, 9, 10, 11):
        out += [v(i) - k(SQ), k(1 - SQ) - v(i)]
    return out


def mixed_factors(lx, ly):
    return [v(1) - k(F(7, 11)), v(3) - k(F(7, 11)), v(3) - v(lx) - k(2 * SQ),
            v(1) - v(ly) - k(2 * SQ), k(1 - SQ) - v(lx) - v(ly)]


def factors(p, q):
    out = common_factors()
    if mixed(p, q):
        out += mixed_factors(10, 11) if upper(p) else mixed_factors(8, 9)
    return out


def bnd(n):
    return F(8, 73) if n == 0 else F(24, 73) if n == 1 else F(49, 60)


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


def cost_atom(f, n):
    (a, b, c), sg = f
    e = esarea(pt(a), pt(b), pt(c))
    return (e if sg else k(-1) * e) - k(bnd(n))


def extra(p, q):
    m = mixed(p, q)
    out = [v(1) * v(3) - k(F(7, 11) if m else 4 * SQ),
           N(1) - (v(1) - v(4)) * (v(3) - v(5)) - k(4 * SQ if m else 8 * SQ),
           (N(1) - v(4)) * (N(1) - v(5)) - k(SQ)]
    out += [k(F(13, 16)) - esarea(pt(a), pt(b), pt(c)) for (a, b, c) in EARS]
    return out


def atoms(p, q, sfs, cuts):
    """Lean `atoms p q fs` with the sign facts `sfs` and the cut atoms `cuts` (in fact order).
    Returns (atom list, table tb, number of factors)."""
    tb = base_signs(p, q) + list(sfs)
    out = factors(p, q) + list(cuts)
    nf = len(out)
    out += [cost_atom(f, len(inside_list(tb, [7, 8], f))) for f in tb]
    out += extra(p, q)
    return out, tb, nf
