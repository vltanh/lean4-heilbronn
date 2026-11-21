#!/usr/bin/env python3
"""Exact transcription check for C1_THREE_LOWER_TWO_TOP.md.

Reuses the published Fraction/sign primitives of check_c1_pentagon.
Reads only the printed manuscript, never discovery output or an optimizer.
"""
from fractions import Fraction as F
from pathlib import Path
import re
import check_c1_pentagon as b

BASE = dict(b.BASE)
for R in 'PQ':
    for edge, sign in [('DF', -1), ('OD', 1), ('OF', -1),
                       ('HD', 1), ('CF', -1), ('FY', 1), ('DY', -1)]:
        key, value = b.keysg(edge + R, sign)
        BASE[key] = value


def local_factor(kn, meshes, kind, args):
    if kind not in ['topx', 'topy', 'topprojx', 'topprojy']:
        return b.local_factor(kn, meshes, kind, args)
    R, count, points = args
    count = int(count)
    points = '' if points == '-' else points
    assert R in 'PQ' and b.get(kn, 'DF' + R) == -1
    assert len(points) == count and len(set(points)) == count
    assert all(T not in 'DF' + R and b.inside(kn, T, 'DF' + R) for T in points)
    cost = b.TCOST[count]
    xx, yy = b.PT[R]
    if kind == 'topx':
        return b.add(xx, b.sc(b.f, -1), b.C(-cost))
    if kind == 'topy':
        return b.add(yy, b.sc(b.d, -1), b.C(-cost))
    if kind == 'topprojx':
        return b.add(b.mul(b.sub(b.C(1), b.d), b.sub(xx, b.f)), b.C(-cost))
    return b.add(b.mul(b.sub(b.C(1), b.f), b.sub(yy, b.d)), b.C(-cost))


def main():
    text = Path(__file__).with_name('C1_THREE_LOWER_TWO_TOP.md').read_text()
    roots = {}
    for line in b.block(text, 'c1tt-roots').splitlines():
        name, *signs = line.split()
        assert name not in roots and len(signs) == 4
        roots[name] = dict(zip(['OPQ', 'CPQ', 'DPQ', 'FPQ'], map(int, signs)))
    expected = {'R2': [1, 1, 1, -1], 'R5': [-1, 1, 1, -1],
                'R7': [-1, -1, 1, -1], 'R9': [-1, -1, -1, 1]}
    assert roots == {n: dict(zip(['OPQ', 'CPQ', 'DPQ', 'FPQ'], signs))
                     for n, signs in expected.items()}
    branches = {}
    for line in b.block(text, 'c1tt-tree').splitlines():
        name, tri, neg, pos = line.split()
        assert name not in branches
        assert len(tri) == 3 and len(set(tri)) == 3 and set(tri) <= set(b.LABELS)
        branches[name] = (tri, neg, pos)
    sections = re.findall(r'### Leaf (R\d+[mp]*)\n(.*?)(?=\n### Leaf |\n## 4\.)', text, re.S)
    assert len(sections) == 12 and len({n for n, _ in sections}) == 12
    byleaf = dict(sections)
    assignments = {}
    seen = set()

    def visit(name, assignment):
        assert name not in seen
        seen.add(name)
        if name not in branches:
            assert name in byleaf
            assignments[name] = assignment
            return
        tri, neg, pos = branches[name]
        assert neg != pos
        for child, sign in [(neg, -1), (pos, 1)]:
            visit(child, dict(assignment, **{tri: sign}))

    for name, assignment in roots.items():
        visit(name, assignment)
    assert set(assignments) == set(byleaf)
    assert seen == set(branches) | set(byleaf) and len(branches) == 8
    total = largest = poly_count = geo_count = 0
    maximum = F(-10)
    for name, body in sections:
        kn, meshes = dict(BASE), set()
        for tri, sign in assignments[name].items():
            b.put(kn, tri, sign)
        for line in b.block(body, 'c1tt-geometry').splitlines():
            if line.strip():
                step = line.split()
                assert not (step[0] == 'imp' and step[-1] == 'ear')
                b.apply_step(kn, meshes, step)
        if '```c1tt-exclude\n' in body:
            b.check_exclusion(kn, meshes, b.block(body, 'c1tt-exclude').split())
            geo_count += 1
            assert '```c1tt-sum\n' not in body
            print(name, 'geometric exclusion verified')
            continue
        local = {}
        for line in b.block(body, 'c1tt-factors').splitlines():
            token, kind, *args = line.split()
            assert token == 'B' + str(len(local)) and token not in local
            local[token] = local_factor(kn, meshes, kind, args)
        entries = [ee.strip() for ee in re.split(r'[;\n]', b.block(body, 'c1tt-sum')) if ee.strip()]
        assert int(re.search(r'There are (\d+) positive integer entries', body).group(1)) == len(entries)
        polynomial, used = {}, set()
        for entry in entries:
            match = re.fullmatch(r'(\d+) ([A-Za-z0-9_*]+)', entry)
            assert match is not None, entry
            coefficient = int(match.group(1))
            assert 1 <= coefficient <= 26949
            largest = max(largest, coefficient)
            product = b.C(coefficient)
            for token in match.group(2).split('*'):
                product = b.mul(product, b.factor(token, kn, local))
                used.add(token)
            assert max(map(len, product), default=0) <= 3
            polynomial = b.add(polynomial, product)
        assert set(local) <= used
        upper = b.bounds(polynomial)[2]
        printed = F(re.search(r'The exact coefficient-box upper bound is\s+`([^`]+)`', body).group(1))
        assert upper == printed and upper < F(-1, 100), (name, upper, printed)
        total += len(entries)
        poly_count += 1
        maximum = max(maximum, upper)
        print(name, 'entries', len(entries), 'exact upper bound', str(upper))
    assert (poly_count, geo_count, total, largest) == (10, 2, 1068, 26949)
    print('PASS: 4 exhaustive roots, 8 binary splits, 10 polynomial leaves, 2 geometric leaves.')
    print('PASS: 1068 positive integer entries; largest coefficient 26949; every bound < -1/100.')
    print('Largest exact upper bound:', maximum)


if __name__ == '__main__':
    main()
