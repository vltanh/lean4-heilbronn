#!/usr/bin/env python3
"""Python mirror of Heilbronn/C1/ZeroLowerModel.lean (same expression trees, same order).

The atoms are built with certlib.E exactly as the Lean definitions build them, so that
certlib.to_poly agrees with Lean's Expr.toPoly. The combinatorial parts (words, base signs, seeds)
are cross-checked against the hand checker hand/check_c1_zero_lower_certificates.py.
"""
import sys
from fractions import Fraction as F
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT / 'scripts'))
sys.path.insert(0, str(ROOT / 'hand'))
from certlib import E, v, k, esarea  # noqa: E402

WORDS = [[1, 0, 4, 3, 2], [1, 1, 3, 3, 2], [1, 2, 3, 2, 2], [2, 1, 0, 4, 3], [2, 1, 1, 3, 3],
         [2, 1, 2, 3, 2], [2, 2, 1, 2, 3], [2, 2, 2, 2, 2], [3, 2, 1, 0, 4], [3, 2, 1, 1, 3],
         [3, 2, 2, 1, 2]]


def cat(w):
    return 1 if w == 0 else 2 if w == 3 else 3 if w == 8 else 0


def wsign(w, i, j):
    return (j + 5 - i) % 5 <= WORDS[w][i]


def cnt(ks, r):
    return sum(cat(w) == r for w in ks)


N = lambda n: E.lift(n)  # noqa: E731  Lean numerals (OfNat) are `const n`


def pt(i):
    return {0: (N(0), N(0)), 1: (v(1), N(0)), 2: (N(1), v(2)), 3: (v(3), N(1)), 4: (N(0), v(0)),
            5: (v(4), v(5)), 6: (v(6), v(7)), 7: (v(8), v(9)), 8: (v(10), v(11))}[i]


SQ = F(8, 73)


def point_factors(w, i):
    x, y = v(4 + 2 * i), v(5 + 2 * i)
    out = [x - k(SQ), y - k(SQ)]
    c = cat(w)
    if c == 1:
        out += [N(1) - x, v(2) - y - k(SQ), x - v(1) - k(SQ)]
    elif c == 2:
        out += [N(1) - x, N(1) - y, x - v(3) - k(SQ), y - v(2) - k(SQ)]
    elif c == 3:
        out += [v(3) - x - k(F(8, 41)), N(1) - y, y - v(0) - k(F(8, 65)), x - k(F(28, 219))]
    else:
        out += [k(F(65, 73)) - x, k(F(65, 73)) - y]
    return out


def factors(ks):
    out = [v(0) - k(SQ), v(1) - k(SQ), N(1) - v(0), N(1) - v(1), v(2) - k(SQ),
           k(F(65, 73)) - v(2), v(3) - k(SQ), k(F(65, 73)) - v(3), v(0) - v(2), v(1) - v(3),
           v(2) - v(3)]
    t, r, l = cnt(ks, 2), cnt(ks, 1), cnt(ks, 3)
    if t >= 1:
        out += [k(F(67, 100)) - v(3), k(F(57, 65)) - v(2)]
    if t >= 2:
        out += [k(F(3, 7)) - v(3), k(F(41, 65)) - v(2)]
    if t >= 3:
        out += [k(F(13, 64)) - v(3), k(F(204, 715)) - v(2)]
    if r >= 1:
        out += [v(2) - k(F(32, 73)), v(1) - k(F(1, 7)), k(F(6, 7)) - v(1)]
    if r == 2:
        out += [v(2) - k(F(49, 60)), k(F(49, 73)) - v(1)]
    if l >= 1:
        out += [v(3) - k(F(32, 73)), v(0) - k(F(1, 7)), k(F(6, 7)) - v(0)]
    for i in range(4):
        out += point_factors(ks[i], i)
    return out


def qcosts(ks):
    out = []
    if cnt(ks, 0) == 2:
        out.append(N(1) - (v(0) - v(2)) * (v(1) - v(3)) - k(F(64, 73)))
    if cnt(ks, 1) == 2:
        out.append(v(2) * (N(1) - v(1)) - k(F(24, 73)))
    if cnt(ks, 2) == 2:
        out.append((N(1) - v(2)) * (N(1) - v(3)) - k(F(24, 73)))
    elif cnt(ks, 2) >= 3:
        out.append((N(1) - v(2)) * (N(1) - v(3)) - k(F(7, 11)))
    return out


def cubics(ks):
    out = []
    if cnt(ks, 1) >= 1:
        out.append(v(2) * v(1) * (N(1) - v(1)) - k(SQ))
    if cnt(ks, 3) >= 1:
        out.append(v(3) * v(0) * (N(1) - v(0)) - k(SQ))
    return out


def bnd(n):
    return F(8, 73) if n == 0 else F(24, 73) if n == 1 else F(49, 60)


LEX = [(a, b, c) for a in range(9) for b in range(9) for c in range(9) if a < b < c]


def anchor_sign(ks, t):
    if t[2] < 5:
        return True
    if t[1] < 5:
        return wsign(ks[t[2] - 5], t[0], t[1])
    return None


def upper_pair(p, q, vv):
    pHD, qHD, pCF, qCF = wsign(p, 4, 2), wsign(q, 4, 2), wsign(p, 1, 3), wsign(q, 1, 3)
    if vv == 0:
        return None
    if pHD != qHD and pCF != qCF:
        return (not pHD) if vv == 4 else pHD if vv == 2 else (not pCF) if vv == 1 else pCF
    if pHD == qHD:
        iso = 3 if pHD else 1
        side = pCF if iso == 3 else (not pCF)
    else:
        iso = 4 if pCF else 2
        side = (not pHD) if iso == 4 else pHD
    return side if vv == iso else (not side)


def pair_sign(ks, a, b, vv):
    wa, wb = ks[a], ks[b]
    if WORDS[wa][vv] != WORDS[wb][vv]:
        return WORDS[wa][vv] < WORDS[wb][vv]
    if wa == wb:
        if vv == 0:
            return True
        if cat(wa) == 1 and vv == 1:
            return True
        if cat(wa) == 1 and vv == 2:
            return False
        return None
    if cat(wa) == 0 and cat(wb) == 0:
        return upper_pair(wa, wb, vv)
    return None


FREE_PAIRS = [(0, 1), (0, 2), (0, 3), (1, 2), (1, 3), (2, 3)]


def base_signs(ks):
    out = []
    for t in LEX:
        sg = anchor_sign(ks, t)
        if sg is not None:
            out.append((t, sg))
    for a, b in FREE_PAIRS:
        for vv in range(5):
            sg = pair_sign(ks, a, b, vv)
            if sg is not None:
                out.append(((vv, a + 5, b + 5), sg))
    return out


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


def lookup(tb, t):
    for key, sg in tb:
        if key == t:
            return sg
    return None


def caps(ks):
    return [i + 5 for i in range(4) if cat(ks[i]) == 2]


def seed_raw(ks, i):
    cp = caps(ks)
    T = cp[i]
    R, U = [w for w in cp if w != T]
    out = [orient(w, R, U, True) for w in range(5)]
    out += [orient(R, U, w, True) for w in range(5, 9) if w not in (R, U)]
    out += [orient(2, R, T, True), orient(3, R, T, False), orient(2, U, T, True),
            orient(3, U, T, False)]
    return out


def seed(ks, i):
    base = base_signs(ks)
    return [f for f in seed_raw(ks, i) if lookup(base, f[0]) is None]


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


def atoms(ks, fs):
    tb = base_signs(ks) + list(fs)
    tri = [cost_atom(f, len(inside_list(tb, [5, 6, 7, 8], f))) for f in tb]
    return factors(ks), qcosts(ks), tri, cubics(ks)
