"""Bernstein bounds for P(f,w) of SEVEN_BOUNDARY_TOP_CAP_RIGHT (4) on four subboxes."""
import sys
sys.path.insert(0, 'scripts')
from fractions import Fraction as F
from math import comb, floor
import certlib as cl

f, w = cl.v(0), cl.v(1)
P = (cl.k(F(20, 3)) * (1 - f) - cl.k(F(64, 7))) * w * (cl.k(F(17, 20)) - w) * (1 - f - w) \
    + f * (cl.k(F(17, 20)) - w) * (1 - f - w) + w * (1 - f - w) + w * (cl.k(F(17, 20)) - w)
d, poly = cl.to_poly(P)


def coeffs(poly):
    out = {}
    for key, c in poly.items():
        i, j = key % 32, (key // 32) % 32
        out[(i, j)] = out.get((i, j), 0) + c
    return out


def sub_box(cf, lo0, hi0, lo1, hi1):
    # substitute x -> lo + (hi-lo) x
    from itertools import product
    res = {}
    for (i, j), c in cf.items():
        # (lo0 + a0 x)^i (lo1 + a1 y)^j
        a0, a1 = hi0 - lo0, hi1 - lo1
        for p in range(i + 1):
            for q in range(j + 1):
                t = F(c) * comb(i, p) * lo0 ** (i - p) * a0 ** p * comb(j, q) * lo1 ** (j - q) * a1 ** q
                res[(p, q)] = res.get((p, q), 0) + t
    return res


def bern_min(cf, n, m):
    mins = None
    for P_ in range(n + 1):
        for Q in range(m + 1):
            b = sum(cf.get((i, j), 0) * F(comb(P_, i), comb(n, i)) * F(comb(Q, j), comb(m, j))
                    for i in range(P_ + 1) for j in range(Q + 1))
            mins = b if mins is None else min(mins, b)
    return mins


cf = coeffs(poly)
print('d =', d)
for (lo0, hi0) in [(F(1, 8), F(5, 16)), (F(5, 16), F(1, 2))]:
    for (lo1, hi1) in [(F(7, 64), F(39, 128)), (F(39, 128), F(1, 2))]:
        mn = bern_min(sub_box(cf, lo0, hi0, lo1, hi1), 2, 3)
        print((lo0, hi0, lo1, hi1), float(mn), 'M >=', floor(1 / mn) + 1)
