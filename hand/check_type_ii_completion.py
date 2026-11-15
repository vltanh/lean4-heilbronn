"""Exact algebra diagnostics for TYPE_II_COMPLETION.md; not a global certificate."""

from fractions import Fraction
from itertools import combinations

import sympy as sp


def equal(left, right):
    assert sp.factor(left - right) == 0


x, y, z, lam = sp.symbols("x y z lam")
lower = (x - y) / (1 - y)
upper = x / (1 - y)
equal(upper - lower, y / (1 - y))
equal((1 - y) * (z - lower), z * (1 - y) + y - x)
equal((1 - y) * (upper - z), x - z * (1 - y))
equal(sp.det(sp.Matrix([[1, 0], [z, -1]])), -1)
equal(lam + (1 - lam) * x - x, lam * (1 - x))
equal((0 - lam) / (1 - lam), -lam / (1 - lam))
assert 18**2 * 65 - 145**2 == 35
assert len(list(combinations(range(7), 4))) == 35


def by_four_subsets(intervals):
    return all(max(intervals[i][0] for i in subset)
               > min(intervals[i][1] for i in subset)
               for subset in combinations(range(len(intervals)), 4))


def by_event_points(intervals):
    # For closed intervals any nonempty four-way intersection contains its
    # largest left endpoint. Checking all endpoints is consequently enough.
    endpoints = {v for interval in intervals for v in interval}
    return all(sum(left <= v <= right for left, right in intervals) <= 3
               for v in endpoints)


# Include endpoint-only intersections and singleton intervals explicitly.
examples = [
    [(Fraction(i), Fraction(i + 2)) for i in range(7)],
    [(Fraction(i), Fraction(i + 3)) for i in range(7)],
    [(Fraction(i), Fraction(i)) for i in range(7)],
    [(Fraction(0), Fraction(0))] * 4 + [(Fraction(i), Fraction(i + 1))
                                     for i in range(2, 5)],
    [(Fraction(-i), Fraction(i)) for i in range(7)],
]
for intervals in examples:
    assert by_four_subsets(intervals) == by_event_points(intervals)
assert by_four_subsets(examples[0])
assert not by_four_subsets(examples[1])  # Four closed intervals meet at 3.
assert by_four_subsets(examples[2])
assert not by_four_subsets(examples[3])
print("PASS: two-vertex triangle capacity algebra and 35 swept-interval tests")
