#!/usr/bin/env python3
"""Exact manuscript-only check for the complete C1 three-lower/side/top count."""
from fractions import Fraction as F
from pathlib import Path
import re
import check_c1_pentagon as b
import check_c1_three_lower_two_top as top

CAP_SIGNS = {
    'U': {'HF': -1, 'CD': 1, 'DF': 1},
    'R': {'HF': -1, 'CD': -1, 'DF': 1, 'OD': -1, 'OF': -1,
          'HD': -1, 'CF': -1, 'FY': 1, 'DY': 1, 'OY': -1},
    'T': {'HF': -1, 'CD': 1, 'DF': -1, 'OD': 1, 'OF': -1,
          'HD': 1, 'CF': -1, 'FY': 1, 'DY': -1},
    'L': {'HF': 1, 'CD': 1, 'DF': 1, 'OD': 1, 'OF': 1,
          'HD': 1, 'CF': 1, 'FY': -1, 'DY': -1, 'OY': 1},
}


def base_for(location):
    assert len(location) == 2 and set(location) <= set(CAP_SIGNS)
    base = dict(b.BASE)
    for R, cap in zip('PQ', location):
        for edge, sign in CAP_SIGNS[cap].items():
            key, value = b.keysg(edge + R, sign)
            base[key] = value
    return base


def implications(kn):
    for word, sign, reason in b.implications(kn):
        if reason == 'ear':
            continue
        if reason == 'cluster':
            R = word[-1]
            if word == 'OD' + R and sign == 1 and b.get(kn, 'CD' + R) != 1:
                continue
            if word == 'OF' + R and sign == -1 and b.get(kn, 'HF' + R) != -1:
                continue
        yield word, sign, reason


def apply_step(kn, meshes, step):
    if step[0] != 'imp':
        return b.apply_step(kn, meshes, step)
    _, triangle, sign, reason = step
    sign = int(sign)
    allowed = {(b.keysg(t, s), r) for t, s, r in implications(kn)}
    assert (b.keysg(triangle, sign), reason) in allowed, ('unproved implication', step)
    b.put(kn, triangle, sign)


def check_exclusion(kn, meshes, step):
    if step[0] != 'imp':
        return b.check_exclusion(kn, meshes, step)
    try:
        apply_step(kn, meshes, step)
    except b.Conflict:
        return
    raise AssertionError(('expected contradictory implication', step))


def side_factor(code, R):
    xx, yy = b.PT[R]
    return {
        'right_x': b.add(xx, b.sc(b.c, -1), b.C(-b.S)),
        'right_y': b.add(b.d, b.sc(yy, -1), b.C(-b.S)),
        'right_d': b.sub(b.d, b.C(4 * b.S)),
        'right_support': b.add(b.mul(b.mul(b.d, b.c), b.sub(b.C(1), b.c)), b.C(-b.S)),
        'right_cmax': b.sub(b.C(F(177, 200)), b.c),
        'right_hmin': b.sub(b.h, b.C(F(929, 1000))),
        'right_dmin': b.sub(b.d, b.C(F(319, 500))),
        'right_ymax': b.sub(b.C(F(191, 500)), yy),
        'left_x': b.add(b.f, b.sc(xx, -1), b.C(-b.S)),
        'left_y': b.add(yy, b.sc(b.h, -1), b.C(-b.S)),
        'left_f': b.sub(b.f, b.C(4 * b.S)),
        'left_support': b.add(b.mul(b.mul(b.f, b.h), b.sub(b.C(1), b.h)), b.C(-b.S)),
        'left_hmax': b.sub(b.C(F(177, 200)), b.h),
        'left_cmin': b.sub(b.c, b.C(F(929, 1000))),
        'left_fmin': b.sub(b.f, b.C(F(319, 500))),
        'left_xmax': b.sub(b.C(F(191, 500)), xx),
    }[code]


def local_factor(kn, meshes, kind, args, location):
    if kind == 'sidebound':
        code, R = args
        assert R in 'PQ' and location['PQ'.index(R)] == ('R' if code.startswith('right_') else 'L')
        return side_factor(code, R)
    if kind.startswith('top'):
        assert location['PQ'.index(args[0])] == 'T'
    return top.local_factor(kn, meshes, kind, args)


def roots_for(location):
    roots = [] if 'U' in location else [[-1] * 4]
    for lo in range(4):
        for hi in range(lo, 4):
            if lo == hi == 0:
                continue
            roots.append([1 if lo <= i <= hi else -1 for i in range(4)])
    return {'R' + str(i): dict(zip(['OPQ', 'CPQ', 'DPQ', 'FPQ'], signs))
            for i, signs in enumerate(roots)}


def verify_leaf(name, body, assignment, location, prefix, cap):
    kn, meshes = base_for(location), set()
    for tri, sign in assignment.items():
        b.put(kn, tri, sign)
    for line in b.block(body, prefix + '-geometry').splitlines():
        if line.strip():
            apply_step(kn, meshes, line.split())
    if '```' + prefix + '-exclude\n' in body:
        check_exclusion(kn, meshes, b.block(body, prefix + '-exclude').split())
        assert '```' + prefix + '-sum\n' not in body
        print(name, 'geometric exclusion verified')
        return (0, 1, 0, 0, None)
    local = {}
    for line in b.block(body, prefix + '-factors').splitlines():
        token, kind, *args = line.split()
        assert token == 'B' + str(len(local)) and token not in local
        local[token] = local_factor(kn, meshes, kind, args, location)
    entries = [e.strip() for e in re.split(r'[;\n]', b.block(body, prefix + '-sum')) if e.strip()]
    assert int(re.search(r'There are (\d+) positive integer entries', body).group(1)) == len(entries)
    polynomial, used, largest = {}, set(), 0
    for entry in entries:
        match = re.fullmatch(r'(\d+) ([A-Za-z0-9_*]+)', entry)
        assert match is not None, entry
        coefficient = int(match.group(1))
        assert 1 <= coefficient <= cap
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
    print(name, 'entries', len(entries), 'exact upper bound', str(upper))
    return (1, 0, len(entries), largest, upper)


def main():
    text = Path(__file__).with_name('C1_THREE_LOWER_SIDE_TOP.md').read_text()
    printed_roots = {}
    for line in b.block(text, 'c1st-roots').splitlines():
        name, *signs = line.split()
        assert name not in printed_roots and len(signs) == 4
        printed_roots[name] = dict(zip(['OPQ', 'CPQ', 'DPQ', 'FPQ'], map(int, signs)))
    assert printed_roots == roots_for('RT')
    sections = re.findall(r'### Leaf ([RTL]{2}\.R\d+)\n(.*?)(?=\n### Leaf |\n## 5\.)', text, re.S)
    assert len(sections) == 40 and len({n for n, _ in sections}) == 40
    assert {n for n, _ in sections} == {loc + '.' + root for loc in ['RT', 'TR', 'LT', 'TL'] for root in printed_roots}
    poly_count = geo_count = total = largest = 0
    maximum = F(-10)
    for name, body in sections:
        location, root = name.split('.')
        pc, gc, count, large, upper = verify_leaf(name, body, printed_roots[root], location, 'c1st', 635)
        poly_count += pc
        geo_count += gc
        total += count
        largest = max(largest, large)
        if upper is not None:
            maximum = max(maximum, upper)
    assert (poly_count, geo_count, total, largest) == (19, 21, 246, 635)
    print('PASS: 4 exhaustive location models, 10 anchor-line rows each, no further splits.')
    print('PASS: 19 polynomial rows, 21 geometric rows, 246 integer entries, maximum coefficient 635.')
    print('Largest exact upper bound:', maximum)


if __name__ == '__main__':
    main()
