#!/usr/bin/env python3
"""Find and verify the Bernstein subdivision of Heilbronn/Global/MovingFCert.lean.

T(u, v, s, z) = u v^2 (1-v) (Delta - Phi B*(1-g)) is the corrected version of the hand proof's
Delta (hand/GLOBAL_COMPLETION.md (33)), with g = u + z, B* = 1 - g - s/v, X0 = (u(1-3v)+s+2v)/(1-v),
C* = g(a_u + B*) - B* X0, N = B*(1-v) - s, Phi the left side of HAND_PROOF.md (8).
The region 1/8 <= u, 0.1469 <= v, u + v <= 0.3469, s in [0.10974, 0.10976], 0 <= z <= 1/4 is cut
into six strips in u (each a box), and each box is bisected (float Bernstein bounds) until every
Bernstein coefficient of degrees (4, 4, 3, 3) is positive. The leaves are then re-verified in exact
rational arithmetic, and the Lean data (boxes, trees, bounds M) are printed.

usage: python3 scripts/movingf/find_tree.py
"""
import itertools
from fractions import Fraction as Fr
from math import comb

import numpy as np
from sympy import Poly, Rational, cancel, symbols

u, v, s, z = symbols('u v s z')
g = u + z
vB = v * (1 - u - z) - s
X0n = u * (1 - 3 * v) + s + 2 * v
au, av = 1 - 3 * u - s, 1 - 3 * v - s
vC = g * (au * v * (1 - v) + (1 - v) * vB) - vB * X0n
vN = vB * (1 - v) - s * v
phiNum = 6 * u**2 * v**2 + (3 * s - 4) * (u + v) * u * v + (2 * s + 2) * u * v - s * (1 - s) * (u + v)
T = u * (z * av * (1 - g) * v * (1 - v) * vB - vN * vC) - (1 - v) * phiNum * vB * (1 - g)

# sanity: T = u v^2 (1-v) Delta-tilde
Bs = vB / v
Cs = g * (au + Bs) - Bs * X0n / (1 - v)
N = Bs * (1 - v) - s
Dt = z * av * Bs * (1 - g) - N * Cs - phiNum / (u * v) * Bs * (1 - g)
assert cancel(T - u * v**2 * (1 - v) * Dt) == 0

NS = [4, 4, 3, 3]
P = Poly(T.expand(), u, v, s, z)
COEF = {m: Fr(int(c.p), int(c.q)) for m, c in P.terms()}
AF = np.zeros([n + 1 for n in NS])
for m, c in COEF.items():
    AF[m] = float(c)


def axis_apply(A, M, ax):
    return np.moveaxis(np.tensordot(M, A, axes=([1], [ax])), 0, ax)


def bern_min_float(box):
    A = AF
    for ax, (lo, hi) in enumerate(box):
        n = NS[ax]
        M = np.zeros((n + 1, n + 1))
        for i in range(n + 1):
            for j in range(i + 1):
                M[j, i] = comb(i, j) * float(lo)**(i - j) * float(hi - lo)**j
        A = axis_apply(A, M, ax)
    for ax, n in enumerate(NS):
        M = np.zeros((n + 1, n + 1))
        for k in range(n + 1):
            for i in range(k + 1):
                M[k, i] = comb(k, i) / comb(n, i)
        A = axis_apply(A, M, ax)
    return A.min()


def bern_min_exact(box):
    A = dict(COEF)
    for ax in range(4):
        lo, hi = box[ax]
        B = {}
        for mon, c in A.items():
            i = mon[ax]
            for j in range(i + 1):
                m2 = list(mon); m2[ax] = j; m2 = tuple(m2)
                B[m2] = B.get(m2, 0) + c * comb(i, j) * lo**(i - j) * (hi - lo)**j
        A = B
    for ax in range(4):
        n = NS[ax]
        B = {}
        for mon, c in A.items():
            i = mon[ax]
            for k in range(i, n + 1):
                m2 = list(mon); m2[ax] = k; m2 = tuple(m2)
                B[m2] = B.get(m2, 0) + c * Fr(comb(k, i), comb(n, i))
        A = B
    return min(A.get(idx, Fr(0)) for idx in itertools.product(*[range(n + 1) for n in NS]))


def build(box, depth=0):
    if bern_min_float(box) > 1e-9:
        m = bern_min_exact(box)
        assert m > 0
        return ('leaf', int(1 / m) + 1)
    assert depth < 12
    best = None
    for ax in (0, 1, 3):
        mid = (box[ax][0] + box[ax][1]) / 2
        lb = list(box); lb[ax] = (box[ax][0], mid)
        rb = list(box); rb[ax] = (mid, box[ax][1])
        sc = min(bern_min_float(lb), bern_min_float(rb))
        if best is None or sc > best[0]:
            best = (sc, ax, mid, lb, rb)
    _, ax, mid, lb, rb = best
    return ('split', ax, mid, build(lb, depth + 1), build(rb, depth + 1))


def lean_q(x):
    return f"{x.numerator}/{x.denominator}" if x.denominator != 1 else f"{x.numerator}"


def lean_tree(t):
    if t[0] == 'leaf':
        return f".leaf {t[1]}"
    return f".split {t[1]} ({lean_q(t[2])}) ({lean_tree(t[3])}) ({lean_tree(t[4])})"


if __name__ == '__main__':
    SB = (Fr(5487, 50000), Fr(343, 3125))
    Smax, vmin = Fr(3469, 10000), Fr(1469, 10000)
    for k in range(6):
        u0, u1 = Fr(1, 8) + Fr(k, 80), Fr(1, 8) + Fr(k + 1, 80)
        box = [(u0, u1), (vmin, Smax - u0), SB, (Fr(0), Fr(1, 4))]
        t = build(box)
        print(f"box{k} = {[(lean_q(a), lean_q(b)) for a, b in box]}")
        print(f"tree{k} = {lean_tree(t)}")
