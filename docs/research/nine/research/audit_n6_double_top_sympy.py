"""Independent N6-06 cover reconstruction and SymPy-ring coefficient audit.

This script imports neither the proof checker nor its polynomial kernel.
It uses the fixed JSON only as coefficient/record data and reconstructs
determinants, constraints, radial covers, and complete branch trees here.
"""
from collections import Counter
from fractions import Fraction as F
from functools import lru_cache
from itertools import combinations, product
import json
from pathlib import Path

from sympy.polys.domains import QQ
from sympy.polys.rings import ring


ROOT = Path(__file__).resolve().parents[1]
DATA = json.loads((ROOT.parents[1] / 'proof/nine/six_boundary_double_top_certificates.json').read_text())
S, RHO = QQ(7, 64), QQ(13, 16)
THRESHOLDS = {QQ(7, 64), QQ(8, 73), QQ(79, 720)}
VARIABLES = {
    'convex': 'a h b c d f ex ey gx gy ox oy'.split(),
    'triangle': 'a h b c d f x y px py qx qy'.split(),
}
LABELS = {
    'convex': 'A B C D E G F H O'.split(),
    'triangle': 'A B C D X F H P Q'.split(),
}
TRIPLES = tuple(combinations(range(9), 3))
SHARP = (3, 2, 3, 4, 5, 4, 4, 3)
BRANCHES = {'Llow', 'Lhigh', 'Mlow', 'glarge', 'blarge', 'csmall', 'klow'}


def rational(value):
    value = F(value)
    return QQ(value.numerator, value.denominator)


def words(size):
    """Backtrack through all reverse-consistent directed chord signs."""
    result = []

    def extend(prefix):
        j = len(prefix)
        if j == size:
            result.append(prefix)
            return
        for value in range(1, size - 1):
            if all((j - i <= old) != (size - j + i <= value)
                   for i, old in enumerate(prefix)):
                extend(prefix + (value,))

    extend(())
    return tuple(result)


WORDS7, WORDS8 = words(7), words(8)
CONVEX = tuple(w for w in WORDS8 if w[3] >= 3)
CAP = tuple(w for w in WORDS7 if w[3] == 1)
INNER = tuple(w for w in WORDS7 if w[3] >= 2)
CASES = tuple(('lower' if v[6] < 3 else 'upper', u, v)
              for u in CAP for v in INNER)


def chord(word, i, j):
    distance = (j - i) % len(word)
    assert distance
    return 1 if distance <= word[i] else -1


def permutation_sign(triple):
    return -1 if sum(triple[i] > triple[j]
                     for i, j in combinations(range(3), 2)) % 2 else 1


def oriented(known, triple):
    value = known.get(tuple(sorted(triple)))
    return None if value is None else permutation_sign(triple) * value


def known_triangle(case, extra=()):
    _, first, second = case
    known = {}
    for i, j, k in TRIPLES:
        if k <= 6:
            known[i, j, k] = 1
        elif j <= 6:
            known[i, j, k] = chord(first if k == 7 else second, i, j)
        elif first[i] != second[i]:
            known[i, j, k] = 1 if first[i] < second[i] else -1
    for vertex, sign in extra:
        assert type(vertex) is int and 0 <= vertex < 7
        assert type(sign) is int and sign in (-1, 1)
        key = (vertex, 7, 8)
        assert key not in known
        known[key] = sign
    return known


def known_convex(word):
    return {tr: 1 if tr[2] < 8 else chord(word, tr[0], tr[1])
            for tr in TRIPLES}


def contains(known, triangle, point):
    sign = known[triangle]
    return all(oriented(known, (triangle[i], triangle[(i + 1) % 3], point)) == sign
               for i in range(3))


@lru_cache(maxsize=None)
def specifications(mode, cell, extra, threshold):
    known = known_convex(cell) if mode == 'convex' else known_triangle(cell, extra)
    interior = (8,) if mode == 'convex' else (7, 8)
    output = []
    for triangle, sign in sorted(known.items()):
        count = sum(contains(known, triangle, point)
                    for point in interior if point not in triangle)
        bound = (threshold, 3 * threshold, RHO)[count]
        output.append((triangle, sign, bound))
    if mode == 'convex':
        output += [('HC', 1, QQ(7, 11) if cell[7] < 3 else 4*S),
                   ('delta', 1, 2*S)]
        ears = ((0, 1, 7), (0, 1, 2), (1, 2, 3),
                (2, 3, 6), (3, 6, 7), (0, 6, 7))
        output += [(tr, -1, -RHO) for tr in ears]
        output.append(('delta', 1, 4*S))
    else:
        lower = cell[0] == 'lower'
        output += [('W', 1, 2*S if lower else 4*S),
                   ('HC', 1, QQ(7, 11) if lower else 4*S),
                   ('delta', 1, 3*S)]
        ears = ((0, 1, 6), (0, 1, 2), (1, 2, 3),
                (2, 3, 5), (3, 5, 6), (0, 5, 6))
        output += [(tr, -1, -RHO) for tr in ears]
        output.append(((3, 4, 5), -1, -QQ(49, 64)))
    return tuple(output)


def shoelace(points):
    return sum(first[0]*second[1] - second[0]*first[1]
               for first, second in zip(points, points[1:] + points[:1]))


@lru_cache(maxsize=None)
def geometry(mode):
    polynomial_ring, *variables = ring(VARIABLES[mode], QQ)
    a, h, b, c, d, f, x, y, px, py, qx, qy = variables
    zero, one = polynomial_ring.zero, polynomial_ring.one
    points = [(zero, a), (b, zero), (c, zero), (one, d)]
    if mode == 'convex':
        points += [(x, y), (px, py), (f, one), (zero, h), (qx, qy)]
    else:
        points += [(x, y), (f, one), (zero, h), (px, py), (qx, qy)]
    determinants = {tr: shoelace([points[i] for i in tr]) for tr in TRIPLES}
    ff, hh = (6, 7) if mode == 'convex' else (5, 6)
    determinants['HC'] = shoelace([(zero, zero), points[2], points[hh]])
    determinants['delta'] = shoelace([points[3], (one, one), points[ff]])
    determinants['W'] = shoelace([points[i] for i in (hh, 2, 3, ff)])
    assert determinants['HC'] == h*c
    assert determinants['delta'] == (1-d)*(1-f)
    assert determinants['W'] == 1-(h-d)*(c-f)
    affine = [a-QQ(1, 8), b-QQ(1, 8), h-4*S, c-4*S, 1-h, 1-c,
              d-a, h-d, f-b, c-f, d-f, h-a-S, c-b-S]
    if mode == 'convex':
        affine += [1-S-d, 1-S-f,
                   1-x, 1-y, x-f-S, y-d-S,
                   1-px, 1-py, px-f-S, py-d-S,
                   x-px, py-y, qx-S, 1-S-qx, qy-S, 1-S-qy,
                   QQ(1, 2)-d, QQ(11, 32)-f, x-px-QQ(1, 8), py-y-QQ(1, 8),
                   x-f-QQ(1, 8), y-d-QQ(1, 8), px-f-QQ(1, 8), py-d-QQ(1, 8)]
        assert len(affine) == 37
    else:
        affine += [QQ(5, 8)-d, QQ(7, 16)-f, 1-x, 1-y, x-f-3*S, y-d-3*S,
                   1-px, 1-py, px-f-S, py-d-S,
                   qx-S, 1-S-qx, qy-S, 1-S-qy,
                   x-f-QQ(3, 8), y-d-QQ(3, 8), px-f-QQ(1, 8), py-d-QQ(1, 8),
                   QQ(7, 8)-px, QQ(7, 8)-py]
        assert len(affine) == 33
    return polynomial_ring, variables, points, determinants, affine


def conditions(record):
    result = []
    for coordinate, value, direction in record['conditions']:
        assert type(coordinate) is int and 0 <= coordinate < 12
        assert type(direction) is int and direction in (-1, 1)
        value = F(value)
        assert 0 < value < 1
        result.append((coordinate, value, direction))
    return tuple(result)


def record_specs(mode, record):
    if mode == 'convex':
        cell, extra = tuple(record['word']), ()
    else:
        c = record['case']
        cell, extra = (c[0], tuple(c[1]), tuple(c[2])), tuple(map(tuple, record['extra']))
    return specifications(mode, cell, extra, rational(record['threshold']))


def expand_record(mode, record):
    r, variables, points, determinants, common = geometry(mode)
    a, h, b, c, d, f, x, y, px, py, qx, qy = variables
    prefix = record['factor_prefix']
    assert type(prefix) is int and prefix in ((29, 37) if mode == 'convex' else (27, 33))
    affine = common[:prefix]
    branch = record.get('branch', 'whole')
    if branch != 'whole':
        assert mode == 'convex' and prefix == 37
        obstructions = {'Llow': QQ(11, 20)-h+a, 'Lhigh': h-a-QQ(2, 3),
                        'Mlow': QQ(11, 20)-px+f, 'glarge': f-QQ(1, 4),
                        'blarge': b-QQ(1, 4), 'csmall': QQ(2, 3)-c,
                        'klow': QQ(6, 7)-py}
        affine.append(obstructions[branch])
    path = conditions(record)
    if path:
        assert prefix == len(common) and branch == 'whole'
    affine += [direction*(variables[i]-rational(value)) for i, value, direction in path]
    assert rational(record['threshold']) in THRESHOLDS
    costs = [sign*determinants[key]-bound for key, sign, bound in record_specs(mode, record)]
    assert type(record['scale']) is int and record['scale'] == 4096
    result = r.zero
    for term in record['terms']:
        if term[0] == 'f':
            assert len(term) == 3
            _, indices, weight = term
            assert indices == sorted(indices) and 1 <= len(indices) <= 3
            polynomial = r.one
            for i in indices:
                assert type(i) is int and 0 <= i < len(affine)
                polynomial *= affine[i]
        else:
            assert term[0] == 'q' and len(term) == 4
            _, qi, fi, weight = term
            assert type(qi) is int and 0 <= qi < len(costs)
            assert type(fi) is int and -1 <= fi < len(affine)
            if mode == 'convex' and prefix == 29:
                assert qi < 92
            polynomial = costs[qi]
            if fi != -1:
                polynomial *= affine[fi]
        assert type(weight) is int and weight > 0
        result += QQ(weight, 4096)*polynomial
    assert all(sum(exponents) <= 3 for exponents in result)
    bound = result.get((0,)*12, QQ(0)) + sum(
        coefficient for monomial, coefficient in result.items()
        if any(monomial) and coefficient > 0)
    assert bound == rational(record['upper_bound']) and bound <= -QQ(3, 4)
    return len(record['terms']), bound


def identities():
    assert QQ(1, 8)*QQ(7, 8) == S
    assert S/QQ(7, 8) == QQ(1, 8) and 3*S/QQ(7, 8) == QQ(3, 8)
    assert 1-4*S/QQ(7, 8) == QQ(1, 2)
    assert QQ(21, 32)**2 < 4*S and QQ(9, 16)**2 < 3*S
    assert 1-3*S/QQ(7, 8) == QQ(5, 8)
    assert QQ(7, 8)**2 == QQ(49, 64)
    assert QQ(31, 11)**2 < 8 and (RHO/S-4)**2 < 12
    assert all((55+160*sigma)**2 < 81*65 for sigma in THRESHOLDS)
    for mode in VARIABLES:
        _, vv, points, areas, _ = geometry(mode)
        a, h, b, c, d, f, x, y, px, py, qx, qy = vv
        ff, hh = (6, 7) if mode == 'convex' else (5, 6)

        def area(*ids):
            return shoelace([points[i] for i in ids])

        assert area(0, 1, 2) == a*(c-b)
        assert area(0, 1, hh) == b*(h-a)
        assert (1-f)*area(2, 3, 8)+(1-c)*area(3, ff, 8) == area(2, 3, ff)*(1-qx)
        assert (1-d)*area(ff, hh, 8)+(1-h)*area(3, ff, 8) == area(3, ff, hh)*(1-qy)
        for xx, yy in ((x, y), (px, py)):
            cap = shoelace([points[3], (xx, yy), points[ff]])
            assert cap == (1-d)*(xx-f)-(1-f)*(1-yy)
            assert cap == (1-f)*(yy-d)-(1-d)*(1-xx)
        if mode == 'convex':
            assert area(3, 4, 5) == (x-px)*(y-d)-(1-x)*(py-y)
            assert area(6, 4, 5) == (py-y)*(px-f)-(1-py)*(x-px)
        else:
            assert area(3, 4, 7) == (y-d)*(1-px)-(1-x)*(py-d)
            assert area(4, 5, 7) == (x-f)*(1-py)-(1-y)*(px-f)
    critical = ((0, 1, 7), (0, 1, 2), (0, 6, 7), (3, 4, 5),
                (6, 7, 5), (6, 4, 5), (0, 3, 8), (3, 7, 8),
                (1, 8, 4), (6, 2, 8), (8, 2, 5))
    assert all(oriented(known_convex(SHARP), tr) == 1 for tr in critical)


# Each tuple below is a full closed leaf; cuts are reconstructed from the
# manuscript, not read from the supplied proof checker or the coefficient file.
H = F(1, 2)
CONVEX_PATHS = {((3, H, -1),), ((3, H, 1), (11, H, -1)),
                ((3, H, 1), (11, H, 1))}
BOX_PATHS = {
    (92, ()): {()},
    (93, ()): {((10, H, 1),), ((10, H, -1), (9, H, -1)),
               ((10, H, -1), (9, H, 1), (11, H, -1)),
               ((10, H, -1), (9, H, 1), (11, H, 1))},
    (230, ((2, 1),)): {((10, H, -1),), ((10, H, 1), (9, H, -1)),
                       ((10, H, 1), (9, H, 1), (11, H, -1)),
                       ((10, H, 1), (9, H, 1), (11, H, 1))},
    (233, ()): {()},
}


def check_complete_paths(paths):
    """Every non-leaf node must have both closed children of one cut."""
    if () in paths:
        assert paths == {()}
        return
    roots = {path[0][:2] for path in paths}
    assert len(roots) == 1
    for sign in (-1, 1):
        children = {path[1:] for path in paths if path[0][2] == sign}
        assert children
        check_complete_paths(children)


def audit_convex():
    assert len(CONVEX) == 94 and CONVEX[31] == SHARP
    assert CONVEX[66] == (4, 4, 4, 4, 3, 3, 3, 3)
    check_complete_paths(CONVEX_PATHS)
    whole, boxes, sharp = set(), set(), set()
    count, worst = 0, None
    for number, record in enumerate(DATA['convex']):
        index = record['index']
        assert type(index) is int and 0 <= index < 94
        assert tuple(record['word']) == CONVEX[index]
        path = conditions(record)
        if record['scope'] == 'whole':
            assert index not in (31, 66) and index not in whole
            assert record['branch'] == 'whole' and not path
            whole.add(index)
        elif record['scope'] == 'box':
            assert index == 66 and record['branch'] == 'whole'
            assert record['factor_prefix'] == 37 and path in CONVEX_PATHS and path not in boxes
            boxes.add(path)
        else:
            assert record['scope'] == 'sharp' and index == 31 and not path
            assert record['branch'] in BRANCHES and record['branch'] not in sharp
            assert record['threshold'] == '7/64'
            sharp.add(record['branch'])
        terms, bound = expand_record('convex', record)
        count += terms
        worst = bound if worst is None else max(worst, bound)
        if (number+1) % 50 == 0:
            print('PASS independent SymPy convex certificates:', number+1, flush=True)
    assert whole == set(range(94))-{31, 66}
    assert boxes == CONVEX_PATHS and sharp == BRANCHES
    assert len(DATA['convex']) == 102 and count == 24786
    assert worst == -QQ(1055113337, 1073741824)
    print('PASS convex:', len(CONVEX), 'words, 102 certificates,', count,
          'terms, largest bound', worst, flush=True)
    return count, worst


def audit_triangle():
    assert len(WORDS7) == 57 and len(CAP) == 5 and len(INNER) == 52
    assert len(CASES) == 260
    splits = {230: (2,), 235: (1, 2), 238: (1,)}
    targets = []
    for i, case in enumerate(CASES):
        split = splits.get(i, ())
        assert all((v, 7, 8) not in known_triangle(case) for v in split)
        targets += [(i, tuple(zip(split, signs)))
                    for signs in product((-1, 1), repeat=len(split))]
    assert len(targets) == 265
    for paths in BOX_PATHS.values():
        check_complete_paths(paths)
    expected_boxes = {(i, extra, path) for (i, extra), paths in BOX_PATHS.items()
                      for path in paths}
    expected_sign = {(i, ex) for i, ex in targets if i in (235, 238) or (i, ex) == (230, ((2, -1),))}
    assert len(expected_boxes) == 10 and len(expected_sign) == 7
    whole, boxes, signs, regular = set(), set(), set(), []
    count, worst = 0, None
    for number, record in enumerate(DATA['triangle']):
        index = record['index']
        assert type(index) is int and 0 <= index < len(CASES)
        c = record['case']
        assert (c[0], tuple(c[1]), tuple(c[2])) == CASES[index]
        extra, path = tuple(map(tuple, record['extra'])), conditions(record)
        known_triangle(CASES[index], extra)
        if record['scope'] == 'whole':
            assert not extra and not path and index not in whole
            assert record['factor_prefix'] == 27
            whole.add(index)
            regular.append(record)
        elif record['scope'] == 'sign':
            assert not path and (index, extra) in expected_sign and (index, extra) not in signs
            signs.add((index, extra))
            regular.append(record)
        else:
            assert record['scope'] == 'box' and record['factor_prefix'] == 33
            key = (index, extra, path)
            assert key in expected_boxes and key not in boxes
            boxes.add(key)
        terms, bound = expand_record('triangle', record)
        count += terms
        worst = bound if worst is None else max(worst, bound)
        if (number+1) % 50 == 0:
            print('PASS independent SymPy triangular certificates:', number+1, flush=True)
    assert len(whole) == 210 and signs == expected_sign and boxes == expected_boxes
    requirements = []
    for record in regular:
        specs = record_specs('triangle', record)
        used = {term[1] for term in record['terms'] if term[0] == 'q'}
        requirements.append((rational(record['threshold']), [specs[i] for i in used]))
    final = 0
    for i, extra in targets:
        if (i, extra) in BOX_PATHS:
            final += len(BOX_PATHS[i, extra])
            continue
        matched = False
        for threshold, required in requirements:
            available = {}
            for key, sign, bound in specifications('triangle', CASES[i], extra, threshold):
                available[key, sign] = max(available.get((key, sign), bound), bound)
            if all((key, sign) in available and available[key, sign] >= bound
                   for key, sign, bound in required):
                matched = True
                break
        assert matched, (i, extra)
        final += 1
    assert final == 271 and len(DATA['triangle']) == 227 and count == 31772
    assert worst == -QQ(264270775, 268435456)
    print('PASS triangle: 260 pairs, 265 sign cells,', final,
          'final cells; 227 certificates,', count, 'terms, largest bound', worst, flush=True)
    return count, worst


def main():
    assert DATA['version'] == 1 and DATA['variables'] == VARIABLES and DATA['vertices'] == LABELS
    assert tuple(DATA['sharp_word']) == SHARP
    identities()
    convex_count, convex_worst = audit_convex()
    triangle_count, triangle_worst = audit_triangle()
    assert convex_count+triangle_count == 56558
    print('PASS independent N6-06 audit: all 329 certificates, 56,558 positive terms')
    print('PASS independently reconstructed determinants, factors, signs, containment costs,')
    print('     complete coordinate trees, reused costs, and eleven sharp-chamber signs')
    print('Largest exact cube upper bound:', max(convex_worst, triangle_worst))


if __name__ == '__main__':
    main()
