#!/usr/bin/env python3
"""Exact printed-table check for C1_THREE_LOWER_ONE_SIDE.md."""
from fractions import Fraction as F
from pathlib import Path
import re
import check_c1_pentagon as b
import check_c1_three_lower_side_top as e


def main():
    text = Path(__file__).with_name('C1_THREE_LOWER_ONE_SIDE.md').read_text()
    roots = {}
    for line in b.block(text, 'c1si-roots').splitlines():
        name, *signs = line.split()
        assert name not in roots and len(signs) == 4
        roots[name] = dict(zip(['OPQ', 'CPQ', 'DPQ', 'FPQ'], map(int, signs)))
    assert roots == e.roots_for('RU')
    branches = {}
    for line in b.block(text, 'c1si-tree').splitlines():
        node, triangle, negative, positive = line.split()
        assert node not in branches and negative != positive
        assert len(set(triangle)) == len(triangle) == 3 and set(triangle) <= set(b.LABELS)
        assert node.split('.')[0] == negative.split('.')[0] == positive.split('.')[0]
        branches[node] = (triangle, negative, positive)
    sections = re.findall(r'### Leaf ((?:RU|UR|LU|UL)\.R\d+[mp]*)\n(.*?)(?=\n### Leaf |\n## 4\.)', text, re.S)
    assert len(sections) == 61 and len({n for n, _ in sections}) == 61
    byleaf = dict(sections)
    assignments, seen = {}, set()

    def visit(node, assignment):
        assert node not in seen
        seen.add(node)
        if node not in branches:
            assert node in byleaf
            assignments[node] = assignment
            return
        triangle, negative, positive = branches[node]
        for child, sign in [(negative, -1), (positive, 1)]:
            visit(child, dict(assignment, **{triangle: sign}))

    for location in ['RU', 'UR', 'LU', 'UL']:
        for root, assignment in roots.items():
            visit(location + '.' + root, assignment)
    assert seen == set(branches) | set(byleaf)
    assert set(assignments) == set(byleaf) and len(branches) == 25
    poly_count = geo_count = total = largest = 0
    maximum = F(-10)
    for name, body in sections:
        location = name.split('.')[0]
        pc, gc, count, large, upper = e.verify_leaf(name, body, assignments[name], location, 'c1si', 59515)
        poly_count += pc
        geo_count += gc
        total += count
        largest = max(largest, large)
        if upper is not None:
            maximum = max(maximum, upper)
    assert (poly_count, geo_count, total, largest) == (51, 10, 2264, 59515)
    print('PASS: 4 exhaustive location models, 9 anchor-line rows each, 25 binary splits.')
    print('PASS: 51 polynomial leaves, 10 geometric leaves, 2264 entries, maximum coefficient 59515.')
    print('Largest exact upper bound:', maximum)


if __name__ == '__main__':
    main()
