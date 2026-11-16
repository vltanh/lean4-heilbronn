#!/usr/bin/env python3
"""Bernstein coefficients of H1, H2 (hand/UNBALANCED_OCCUPIED_LOWER_EAR.md (18)-(20)) on the
physical boxes in (b, r, u), from the structural polynomial forms used in
Heilbronn/TypeII/Unbalanced/OccupiedLowerEar/Bernstein.lean."""
import sympy as sp
from fractions import Fraction as Fr
from math import comb

b, r, u = sp.symbols('b r u')
s = sp.Rational(8, 73)
w = 1 - b
L = 1 - r
g = r - b - w * u
LM = g * L - s * w


def polys(branch):
    if branch == '-':
        bd = b**2 * u + (b - s) * (r - b)      # b * delta
        bc = b - s * w                         # b * c
    else:
        bd = b * (b * u + (1 - 3 * s) * (r - b))
        bc = b * (1 - 3 * s * w)
    bFB = -s * b * bd
    bFR = bd * (bd - 3 * s * b)
    bFC = (bd - 2 * s * b) * bc - s * b * (bd + b * g)
    LK1 = (LM * (g - s) - s**2 * L) * bFC + s * LM * bFR + s**2 * L * bFB
    E0 = (g - 2 * s) * LM - s**2 * L
    H1 = LK1 + sp.Rational(3, 1024) * E0
    H2 = (g - s) * (s * L * bFB + LM * bFR) + s * (LM + s * L) * bFC
    return sp.expand(H1), sp.expand(H2)


def direct(branch):
    q = s / b if branch == '-' else 3 * s
    delta = b * u + (1 - q) * (r - b)
    c = 1 - w * q
    M = g - s * w / L
    FB = -s * delta
    FR = delta * (delta - 3 * s)
    FC = (delta - 2 * s) * c - s * (delta + g)
    K1 = (M * (g - s) - s**2) * FC + s * M * FR + s**2 * FB
    K2 = (g - s) * (s * FB + M * FR) + s * (M + s) * FC
    E0 = (g - 2 * s) * (g * L - s * w) - s**2 * L
    return L * b**2 * K1 + sp.Rational(3, 1024) * E0, L * b**2 * K2


def bern_min(P, box, degs):
    # substitute var -> lo + (hi-lo) t
    ts = sp.symbols('t0 t1 t2')
    vs = [b, r, u]
    Q = sp.expand(P.subs({vs[i]: box[i][0] + (box[i][1] - box[i][0]) * ts[i] for i in range(3)},
                         simultaneous=True))
    poly = sp.Poly(Q, *ts)
    A = {m: Fr(int(c.p), int(c.q)) for m, c in zip(poly.monoms(), poly.coeffs())}
    for m in A:
        assert all(m[i] <= degs[i] for i in range(3)), (m, degs)
    n0, n1, n2 = degs
    best = None
    for i in range(n0 + 1):
        for j in range(n1 + 1):
            for k in range(n2 + 1):
                tot = Fr(0)
                for (a, bb, cc), v in A.items():
                    if a <= i and bb <= j and cc <= k:
                        tot += v * Fr(comb(i, a), comb(n0, a)) * Fr(comb(j, bb), comb(n1, bb)) \
                            * Fr(comb(k, cc), comb(n2, cc))
                best = tot if best is None or tot > best else best
    return best


R = sp.Rational
rows = [
    ('-', 'H1', (R(1, 5), R(1, 3)), (0, R(1, 2)), (0, R(1, 2)), 3224550),
    ('-', 'H1', (R(1, 5), R(1, 3)), (0, R(1, 2)), (R(1, 2), 1), 413076),
    ('-', 'H1', (R(1, 5), R(1, 3)), (R(1, 2), R(5, 8)), (0, R(1, 4)), 3614646),
    ('-', 'H1', (R(1, 5), R(1, 3)), (R(5, 8), R(3, 4)), (0, R(1, 4)), 1983267),
    ('-', 'H1', (R(1, 5), R(1, 3)), (R(1, 2), R(3, 4)), (R(1, 4), R(1, 2)), 1439036),
    ('-', 'H1', (R(1, 5), R(1, 3)), (R(1, 2), R(3, 4)), (R(1, 2), 1), 351848),
    ('-', 'H1', (R(1, 5), R(1, 3)), (R(3, 4), 1), (0, 1), 486594),
    ('-', 'H2', (R(1, 5), R(1, 3)), (0, 1), (0, 1), 177533),
    ('+', 'H1', (R(1, 3), R(4, 11)), (0, R(1, 2)), (0, 1), 2703813),
    ('+', 'H1', (R(1, 3), R(4, 11)), (R(1, 2), 1), (0, 1), 841173),
    ('+', 'H2', (R(1, 3), R(4, 11)), (0, 1), (0, 1), 129369),
]

if __name__ == '__main__':
    cache = {}
    for br in '-+':
        H1, H2 = polys(br)
        D1, D2 = direct(br)
        assert sp.simplify(H1 - D1) == 0 and sp.simplify(H2 - D2) == 0
        cache[br] = {'H1': H1, 'H2': H2}
        for nm, P in (('H1', H1), ('H2', H2)):
            p = sp.Poly(P, b, r, u)
            print(br, nm, 'degrees', [p.degree(x) for x in (b, r, u)], 'terms', len(p.terms()))
    for br, nm, bb, yy, zz, N in rows:
        P = cache[br][nm]
        p = sp.Poly(P, b, r, u)
        degs = [p.degree(x) for x in (b, r, u)]
        box = [bb, (R(7, 10) + R(1, 5) * yy[0], R(7, 10) + R(1, 5) * yy[1]),
               (R(3, 16) * zz[0], R(3, 16) * zz[1])]
        m = bern_min(P, box, degs)
        print(br, nm, box, 'max coeff', float(m), 'ok' if m < Fr(-1, N) else 'FAIL')
