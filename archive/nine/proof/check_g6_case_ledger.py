#!/usr/bin/env python3
"""Combinatorial audit only: this does not establish geometric exclusions."""
from itertools import product
from math import comb


def n6_cases():
    return sorted(
        (left, top, right, 3 - left - top - right)
        for left in range(2)
        for right in range(left, 2)
        for top in range(4)
        if 1 <= left + top + right <= 3
    )


def c1_cases(upper_count):
    return sorted(
        (left, top, right, upper_count - left - top - right)
        for left, top, right in product(range(upper_count + 1), repeat=3)
        if left <= right and 1 <= left + top + right <= upper_count
    )


assert n6_cases() == sorted([
    (0, 0, 1, 2),
    (1, 0, 1, 1),
    (0, 1, 0, 2),
    (0, 1, 1, 1),
    (1, 1, 1, 0),
    (0, 2, 0, 1),
    (0, 2, 1, 0),
    (0, 3, 0, 0),
])
assert len(n6_cases()) == 8
assert sum(1 if inside == 0 else 2 for _, _, _, inside in n6_cases()) == 13

expected_c1 = {
    4: {
        0: [(0,1),(0,2),(0,3),(0,4),(1,1),(1,2),(1,3),(2,2)],
        1: [(0,0),(0,1),(0,2),(0,3),(1,1),(1,2)],
        2: [(0,0),(0,1),(0,2),(1,1)],
        3: [(0,0),(0,1)],
        4: [(0,0)],
    },
    3: {
        0: [(0,1),(0,2),(0,3),(1,1),(1,2)],
        1: [(0,0),(0,1),(0,2),(1,1)],
        2: [(0,0),(0,1)],
        3: [(0,0)],
    },
}
for upper_count, expected_by_top in expected_c1.items():
    cases = c1_cases(upper_count)
    for top, expected in expected_by_top.items():
        assert sorted((left, right) for left, t, right, _ in cases if t == top) == sorted(expected)
    assert len(cases) == sum(map(len, expected_by_top.values()))
    assert len(cases) == (21 if upper_count == 4 else 12)
    # Exhaustive up to the side-cap reflection L <-> R.
    raw = set(
        (left, top, right, upper_count - left - top - right)
        for left, top, right in product(range(upper_count + 1), repeat=3)
        if 1 <= left + top + right <= upper_count
    )
    assert len(raw) == comb(upper_count + 3, 3) - 1
    orbits = {min(item, (item[2],item[1],item[0],item[3])) for item in raw}
    assert set(cases) == orbits

sign_words = list(product((-1,+1), repeat=4))
assert len(sign_words) == 16
assert len(set(sign_words)) == 16
print('PASS: 8 N6 occupancy orbits and 13 lower/upper subdivisions')
print('PASS: 21 C1-zero-lower and 12 C1-one-lower cap orbits')
print('PASS: 16 exhaustive four-sign N7 orientation words')
print('NOT a geometry or global proof certificate')
