"""Python mirror of Heilbronn/Nine/SixBoundary/TwoSideUpperModel.lean (the two-side-upper cover).

Points 0..8 = A, B, C, X, D, F, Y, H, Q (octagon V0..V7 and the upper point Q); variables
0..11 = a, h, b, c, d, f, x, y, z, w, r, t.  Facts are signed triangles ((i, j, k), sign) with
i < j < k.  A split `vertex i` has six branches v = 1..6: the radial word entry r_i = v, i.e. the
signs of [V_i V_{i+j} Q] for j = 1..7 (positive iff j <= v).
"""
import sys
from fractions import Fraction as F
from itertools import combinations
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[2]))
from certlib import v, k, esarea  # noqa: E402

S = F(7, 64)

PT = {0: (0, v(0)), 1: (v(2), 0), 2: (v(3), 0), 3: (v(6), v(7)), 4: (1, v(4)), 5: (v(5), 1),
      6: (v(8), v(9)), 7: (0, v(1)), 8: (v(10), v(11))}


def pt(i):
    return PT.get(i, (0, 0))


def factors():
    s = k(S)
    return [v(0) - k(F(7, 50)), v(2) - k(F(7, 50)), v(1) - k(F(1, 2)), v(3) - k(F(1, 2)),
            k(1 - S) - v(1), k(1 - S) - v(3), v(4) - v(0), v(1) - v(4), v(5) - v(2), v(3) - v(5),
            v(4) - v(5), v(1) - v(0) - s, v(3) - v(2) - s, 1 - v(6), 1 - v(9),
            v(6) - v(3) - s, v(9) - v(1) - s, v(4) - v(7) - s, v(5) - v(8) - s,
            v(7) - s, v(8) - s, v(10) - s, v(11) - s, k(1 - S) - v(10), k(1 - S) - v(11),
            v(4) - k(F(1, 2)), v(5) - k(F(1, 2))]


LEX = list(combinations(range(9), 3))


def bnd(n):
    return S if n == 0 else 3 * S


def lookup(tb, t):
    for f in tb:
        if f[0] == t:
            return f[1]
    return None


def oriented_lookup(tb, a, b, c):
    if a < b < c:
        return lookup(tb, (a, b, c))
    if b < c < a:
        return lookup(tb, (b, c, a))
    if c < a < b:
        return lookup(tb, (c, a, b))
    for (p, q, r) in [(b, a, c), (a, c, b), (c, b, a)]:
        if p < q < r:
            x = lookup(tb, (p, q, r))
            return None if x is None else (not x)
    return None


def inside_list(tb, free, f):
    (a, b, c), sg = f
    return [j for j in free if oriented_lookup(tb, a, b, j) == sg and
            oriented_lookup(tb, b, c, j) == sg and oriented_lookup(tb, c, a, j) == sg]


def cost_atom(f, n):
    (a, b, c), sg = f
    e = esarea(pt(a), pt(b), pt(c))
    return (e if sg else k(-1) * e) - k(bnd(n))


def plain_atom(f):
    (a, b, c), sg = f
    e = esarea(pt(a), pt(b), pt(c))
    return (e if sg else k(-1) * e) - k(S)


def hull_facts():
    return [((i, j, l), True) for (i, j, l) in combinations(range(8), 3)]


def base():
    # HC, CD, FH tests of the upper quadrilateral: [H C Q] > 0, [C D Q] > 0, [F H Q] > 0
    return hull_facts() + [((2, 7, 8), False), ((2, 4, 8), True), ((5, 7, 8), True)]


def orient(a, b, c, sg):
    if a < b < c:
        return ((a, b, c), sg)
    if b < c < a:
        return ((b, c, a), sg)
    if c < a < b:
        return ((c, a, b), sg)
    if b < a < c:
        return ((b, a, c), not sg)
    if a < c < b:
        return ((a, c, b), not sg)
    return ((c, b, a), not sg)


def branch(i, val):
    return [orient(i, (i + j) % 8, 8, j <= val) for j in range(1, 8)]


def atoms(fs):
    tb = base() + fs
    strong = []
    plain = []
    for t in LEX:
        sg = lookup(tb, t)
        if sg is None:
            strong.append(k(0))
            plain.append(k(0))
        else:
            f = (t, sg)
            strong.append(cost_atom(f, len(inside_list(tb, [8], f))))
            plain.append(plain_atom(f))
    return factors() + strong + plain


def conflict(tb):
    seen = {}
    for t, sg in tb:
        if t in seen and seen[t] != sg:
            return True
        seen.setdefault(t, sg)
    return False
