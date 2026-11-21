#!/usr/bin/env python3
"""Exact 11-point Goldberg construction verification (lower bound only).

No third-party packages or floating-point arithmetic are used.
"""
from fractions import Fraction as Q
from itertools import combinations

POINTS = (
    (Q(1, 3), Q(0)),
    (Q(2, 3), Q(0)),
    (Q(0), Q(2, 9)),
    (Q(1), Q(2, 9)),
    (Q(1, 3), Q(4, 9)),
    (Q(2, 3), Q(4, 9)),
    (Q(0), Q(2, 3)),
    (Q(1), Q(2, 3)),
    (Q(1, 2), Q(7, 9)),
    (Q(1, 6), Q(1)),
    (Q(5, 6), Q(1)),
)

def area(p, q, r):
    return abs((q[0] - p[0]) * (r[1] - p[1])
               - (q[1] - p[1]) * (r[0] - p[0])) / 2

def main():
    assert len(POINTS) == len(set(POINTS)) == 11
    assert all(0 <= x <= 1 and 0 <= y <= 1 for x, y in POINTS)
    areas = [area(POINTS[i], POINTS[j], POINTS[k])
             for i, j, k in combinations(range(11), 3)]
    assert len(areas) == 165
    assert min(areas) == Q(1, 27)
    assert areas.count(Q(1, 27)) == 28
    assert all(a >= Q(1, 27) for a in areas)
    print('GOLDBERG_N11_EXACT_ATTAINMENT_PASS: H11 >= 1/27;'
          ' triangles=165; tight=28')

if __name__ == '__main__':
    main()
