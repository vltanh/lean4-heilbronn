"""Independent reconstruction of the N6-03 completion cover and certificates.

Run from any directory with Python and SymPy installed.  This script reads
only the fixed coefficient JSON.  It imports neither the supplied verifier
nor its polynomial kernel or discovery code.
"""

from collections import Counter
from fractions import Fraction
from functools import lru_cache
from itertools import combinations, combinations_with_replacement, product
import json
from pathlib import Path

from sympy.polys.domains import QQ
from sympy.polys.rings import ring


ROOT = Path(__file__).resolve().parents[1]
DATA = json.loads((ROOT.parents[1] / 'proof' / 'nine' /
                   'six_boundary_single_top_completion_certificates.json').read_text())
VARIABLES = 'a h b c d f x y px py qx qy'.split()
assert DATA['version'] == 1 and DATA['variables'] == VARIABLES
assert DATA['vertices'] == ['A', 'B', 'C', 'D', 'X', 'F', 'H', 'P', 'Q']
S, RHO, TARGET = QQ(7, 64), QQ(13, 16), QQ(79, 720)


def rational(value):
    """Parse exact JSON fractions without a floating-point intermediary."""
    value = Fraction(value)
    return QQ(value.numerator, value.denominator)


assert rational(DATA['target']) == TARGET
THRESHOLDS = {S, QQ(8, 73), TARGET}
assert all(S <= t <= TARGET and (55 + 160*t)**2 < 81*65
           for t in THRESHOLDS)
assert QQ(12, 7)**2 < 3 and QQ(31, 11)**2 < 8
R, *Z = ring(VARIABLES, QQ)
a, h, b, c, d, f, x, y, px, py, qx, qy = Z
ZERO, ONE = R.zero, R.one
POINTS = [(ZERO, a), (b, ZERO), (c, ZERO), (ONE, d),
          (x, y), (f, ONE), (ZERO, h), (px, py), (qx, qy)]
TRIPLES = tuple(combinations(range(9), 3))


def determinant(triple):
    u, v, w = (POINTS[i] for i in triple)
    return ((v[0] - u[0])*(w[1] - u[1]) -
            (v[1] - u[1])*(w[0] - u[0]))


AREAS = {t: determinant(t) for t in TRIPLES}
AREAS['W'] = 1 - (h-d)*(c-f)
AREAS['HC'] = h*c
EARS = ((0, 1, 6), (0, 1, 2), (1, 2, 3),
        (2, 3, 5), (3, 5, 6), (0, 5, 6))


def side(word, i, j):
    return 1 if (j-i) % 7 <= word[i] else -1


def in_triangle(word, triangle):
    return all(side(word, triangle[k], triangle[(k+1) % 3]) > 0
               for k in range(3))


# Every chord and its reverse must receive opposite signs.  No test of
# geometric realizability is used to shrink this necessary cover.
WORDS = tuple(w for w in product(range(1, 6), repeat=7)
              if all((j <= w[i]) == (7-j > w[(i+j) % 7])
                     for i in range(7) for j in range(1, 7)))
ALLOWED = tuple(w for w in WORDS if side(w, 3, 5) > 0)
LOWER = tuple(w for w in ALLOWED if side(w, 6, 2) < 0)
UPPER = tuple(w for w in ALLOWED if side(w, 6, 2) > 0)
assert tuple(map(len, (WORDS, ALLOWED, LOWER, UPPER))) == (57, 52, 19, 33)


def quadrilateral_signs(p, q):
    """Consequences of the central-pair and mixed-pair line theorems."""
    alpha, beta = side(p, 6, 3), side(p, 2, 5)
    alpha_q, beta_q = side(q, 6, 3), side(q, 2, 5)
    assert (alpha, beta) != (alpha_q, beta_q)
    if alpha != alpha_q and beta != beta_q:
        return {6: -alpha, 2: -beta, 3: alpha, 5: beta}
    # (unchanged diagonal, common sign, isolated vertex, oriented sign)
    if alpha == alpha_q:
        isolated, sign = (5, beta) if alpha > 0 else (2, -beta)
    else:
        isolated, sign = (6, -alpha) if beta > 0 else (3, alpha)
    return {i: sign if i == isolated else -sign for i in (6, 2, 3, 5)}


cases = []
census = {}
for kind, pairs in [('mixed', product(LOWER, UPPER)),
                    ('upper', combinations_with_replacement(UPPER, 2))]:
    counts = [0, 0, 0, 0]
    for p, q in pairs:
        counts[0] += 1
        if any(in_triangle(p, t) and in_triangle(q, t) for t in EARS):
            continue
        counts[1] += 1
        if kind == 'upper' and ((side(p, 6, 3), side(p, 2, 5)) ==
                                (side(q, 6, 3), side(q, 2, 5))):
            continue
        counts[2] += 1
        if kind == 'upper' and any(
                p[i] != q[i] and sg != (1 if p[i] < q[i] else -1)
                for i, sg in quadrilateral_signs(p, q).items()):
            continue
        counts[3] += 1
        cases.append((kind, p, q))
    census[kind] = tuple(counts)
CASES = tuple(cases)
assert census == {'mixed': (627, 615, 615, 615),
                  'upper': (561, 360, 307, 269)}
assert len(CASES) == len(set(CASES)) == 884


def parse_case(value):
    return value[0], tuple(value[1]), tuple(value[2])


@lru_cache(maxsize=None)
def signs(case, extra=()):
    kind, p, q = case
    result = {}
    for t in TRIPLES:
        i, j, k = t
        if k < 7:
            result[t] = 1
        elif j < 7:
            result[t] = side(p if k == 7 else q, i, j)
    forced = quadrilateral_signs(p, q) if kind == 'upper' else {}
    for i in range(7):
        sg = forced.get(i)
        if p[i] != q[i]:
            radial = 1 if p[i] < q[i] else -1
            assert sg is None or sg == radial
            sg = radial
        if sg is not None:
            result[i, 7, 8] = sg
    for i, sg in extra:
        assert type(i) is int and 0 <= i < 7
        assert type(sg) is int and sg in (-1, 1)
        assert (i, 7, 8) not in result
        result[i, 7, 8] = sg
    return result


def oriented(sign_table, triple):
    result = sign_table.get(tuple(sorted(triple)))
    if result is None:
        return None
    inversions = sum(triple[i] > triple[j] for i in range(3)
                     for j in range(i+1, 3))
    return -result if inversions % 2 else result


@lru_cache(maxsize=None)
def specifications(case, extra=(), threshold=S):
    table = signs(case, extra)
    result = []
    for t, sg in sorted(table.items()):
        contained = sum(all(oriented(table, (t[i], t[(i+1) % 3], v)) == sg
                            for i in range(3))
                        for v in (7, 8) if v not in t)
        result.append((t, sg, (threshold, 3*threshold, RHO)[contained]))
    if case[0] == 'mixed':
        result.extend([('W', 1, 4*threshold), ('HC', 1, QQ(7, 11))])
    else:
        result.extend([('W', 1, 8*threshold), ('HC', 1, 4*threshold)])
    result.extend((t, -1, -RHO) for t in EARS)
    return tuple(result)


BASE = [a-QQ(1, 8), b-QQ(1, 8), h-4*S, c-4*S, 1-h, 1-c,
        d-a, h-d, f-b, c-f, d-f, h-a-S, c-b-S,
        1-S-d, 1-S-f, 1-x, 1-y, x-f-S, y-d-S]
for coordinate in (px, py, qx, qy):
    BASE.extend([coordinate-S, 1-S-coordinate])
LOWER_FACTORS = [c-px-2*S, h-py-2*S, 1-px-py-S]
STRONG_EXTRA = [px-QQ(1, 8), py-QQ(1, 8), qx-QQ(1, 8), qy-QQ(1, 8),
                x-f-QQ(1, 8), y-d-QQ(1, 8), h-QQ(7, 11), c-QQ(7, 11)]


def factors(cert):
    kind = parse_case(cert['case'])[0]
    layout = cert['layout']
    assert layout in ('base', 'lower', 'strong')
    result = list(BASE)
    if layout != 'base':
        assert kind == 'mixed'
        result.extend(LOWER_FACTORS)
    if layout == 'strong':
        result.extend(STRONG_EXTRA)
    for variable, sign, value in cert.get('cuts', []):
        assert type(variable) is int and 0 <= variable < 12
        assert type(sign) is int and sign in (-1, 1)
        value = rational(value)
        assert 0 <= value <= 1
        result.append(sign*(Z[variable]-value))
    return result


SPLITS = {171: (4,), 173: (4, 5), 185: (5,), 226: (0,)}
cells = []
for i, case in enumerate(CASES):
    split = SPLITS.get(i, ())
    assert all((v, 7, 8) not in signs(case) for v in split)
    cells.extend((case, tuple(zip(split, ss)))
                 for ss in product((-1, 1), repeat=len(split)))
CELLS = tuple(cells)
CELL_INDEX = {cell: i for i, cell in enumerate(CELLS)}
assert len(CELLS) == len(CELL_INDEX) == 890
assert Counter(case[0] for case, _ in CELLS) == {'mixed': 621, 'upper': 269}


CERTIFICATES = DATA['certificates']
assert len(CERTIFICATES) == 542
SOURCE_SPECS = []
term_count = 0
worst = None
for index, cert in enumerate(CERTIFICATES):
    case = parse_case(cert['case'])
    case_index = cert['index']
    assert type(case_index) is int and 0 <= case_index < len(CASES)
    assert CASES[case_index] == case
    extra = tuple(map(tuple, cert['extra']))
    threshold = rational(cert['threshold'])
    assert threshold in THRESHOLDS
    assert type(cert['scale']) is int and cert['scale'] == 4096
    fs = factors(cert)
    specs = specifications(case, extra, threshold)
    SOURCE_SPECS.append(specs)
    qs = [sg*AREAS[key]-bound for key, sg, bound in specs]
    total = ZERO
    for term in cert['terms']:
        if term[0] == 'f':
            _, indices, weight = term
            assert 1 <= len(indices) <= 3 and indices == sorted(indices)
            poly = ONE
            for i in indices:
                assert type(i) is int and 0 <= i < len(fs)
                poly *= fs[i]
        else:
            assert term[0] == 'q'
            _, qi, fi, weight = term
            assert type(qi) is int and 0 <= qi < len(qs)
            assert type(fi) is int and -1 <= fi < len(fs)
            poly = qs[qi] if fi == -1 else qs[qi]*fs[fi]
        assert type(weight) is int and weight > 0
        total += QQ(weight, 4096)*poly
        term_count += 1
    assert all(sum(exponents) <= 3 for exponents in total)
    bound = total.get((0,)*12, QQ(0)) + sum(
        max(coefficient, QQ(0)) for exponents, coefficient in total.items()
        if any(exponents))
    assert bound == rational(cert['upper_bound']) and bound <= -QQ(3, 4)
    worst = bound if worst is None else max(worst, bound)
    if (index+1) % 100 == 0:
        print('PASS independent polynomial expansions:', index+1, flush=True)


seen, used = set(), set()
for cell_index, cert_index in DATA['cover']:
    assert type(cell_index) is int and 0 <= cell_index < len(CELLS)
    assert type(cert_index) is int and 0 <= cert_index < len(CERTIFICATES)
    assert cell_index not in seen
    case, extra = CELLS[cell_index]
    cert = CERTIFICATES[cert_index]
    assert not cert.get('cuts')
    assert cert['layout'] == 'base' or case[0] == 'mixed'
    target_costs = {(key, sg): bound for key, sg, bound
                    in specifications(case, extra, TARGET)}
    source = SOURCE_SPECS[cert_index]
    for qi in {t[1] for t in cert['terms'] if t[0] == 'q'}:
        key, sg, bound = source[qi]
        assert (key, sg) in target_costs and target_costs[key, sg] >= bound
    seen.add(cell_index)
    used.add(cert_index)
assert len(seen) == 887


EXPECTED_TREES = {(182, ()): 2, (185, ((5, -1),)): 7, (457, ()): 1}
roots, leaf_count = set(), 0
for subdivision in DATA['subdivisions']:
    case_index = subdivision['case_index']
    assert type(case_index) is int and 0 <= case_index < len(CASES)
    case = parse_case(subdivision['case'])
    assert case == CASES[case_index]
    extra = tuple(map(tuple, subdivision['extra']))
    root = case_index, extra
    assert root in EXPECTED_TREES and root not in roots
    roots.add(root)
    cell_index = CELL_INDEX[case, extra]
    assert cell_index not in seen
    seen.add(cell_index)

    def visit(node, cuts):
        if 'certificate' in node:
            assert set(node) == {'certificate'}
            ci = node['certificate']
            assert type(ci) is int and 0 <= ci < len(CERTIFICATES)
            cert = CERTIFICATES[ci]
            assert parse_case(cert['case']) == case
            assert tuple(map(tuple, cert['extra'])) == extra
            assert cert['layout'] == 'strong'
            assert rational(cert['threshold']) == TARGET
            assert tuple((v, sg, rational(value)) for v, sg, value
                         in cert.get('cuts', [])) == cuts
            used.add(ci)
            return 1
        assert set(node) == {'variable', 'value', 'lo', 'hi'}
        v, value = node['variable'], rational(node['value'])
        assert type(v) is int and 0 <= v < 12 and 0 < value < 1
        # The two closed halfspaces cover equality as well as both sides.
        return (visit(node['lo'], cuts+((v, -1, value),)) +
                visit(node['hi'], cuts+((v, 1, value),)))

    leaves = visit(subdivision['tree'], ())
    assert leaves == EXPECTED_TREES[root]
    leaf_count += leaves

assert roots == set(EXPECTED_TREES)
assert seen == set(range(len(CELLS)))
assert used == set(range(len(CERTIFICATES)))
assert leaf_count == 10 and len(DATA['cover']) + leaf_count == 897
assert term_count == 86610
assert worst == -QQ(53009858789, 53888417792)
assert Counter(c['layout'] for c in CERTIFICATES) == {
    'base': 519, 'lower': 10, 'strong': 13}
assert Counter(rational(c['threshold']) for c in CERTIFICATES) == {
    S: 529, QQ(8, 73): 3, TARGET: 10}
print('PASS independent word cover:', census)
print('PASS all 884 base cases, 890 signed cells, and 897 final cells')
print('PASS independent expansions:', len(CERTIFICATES), 'certificates,',
      term_count, 'positive terms; largest bound', worst)
