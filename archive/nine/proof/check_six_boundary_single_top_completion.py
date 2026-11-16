"""Complete Fraction-only certificate check for N6-03-L0 and N6-03-L1.

The coefficient file is fixed data.  No linear-programming solver or numerical
library is imported by this verifier or its polynomial kernel.
"""
from collections import Counter
from fractions import Fraction as F
import json
from pathlib import Path

import single_top_polynomials as p


def verify():
    path = Path(__file__).with_name(
        'six_boundary_single_top_completion_certificates.json')
    data = json.loads(path.read_text())
    assert data['version'] == 1
    assert data['variables'] == p.VARIABLES
    assert data['vertices'] == ['A', 'B', 'C', 'D', 'X', 'F', 'H', 'P', 'Q']
    assert F(data['target']) == p.TARGET == F(79, 720)
    thresholds = {F(7, 64), F(8, 73), F(79, 720)}
    assert all(p.S <= s <= p.TARGET for s in thresholds)
    assert all((55 + 160*s)**2 < 81*65 for s in thresholds)
    assert (F(12, 7))**2 < 3  # rho < (4 + 2 sqrt(3)) * S.
    assert (F(31, 11))**2 < 8  # (3 + 2 sqrt(2)) * S > 7/11.

    assert len(p.WORDS) == 57 and len(p.ALLOWED) == 52
    assert len(p.LOWER) == 19 and len(p.UPPER) == 33
    assert len(p.CASES) == len(set(p.CASES)) == 884
    assert Counter(c[0] for c in p.CASES) == {'mixed': 615, 'upper': 269}
    cells = p.cells()
    assert len(cells) == len(set(cells)) == 890
    assert Counter(c[0][0] for c in cells) == {'mixed': 621, 'upper': 269}
    cell_index = {cell: i for i, cell in enumerate(cells)}

    certificates = data['certificates']
    assert len(certificates) == 542
    worst, terms = None, 0
    for i, cert in enumerate(certificates):
        case = p.tuple_case(cert['case'])
        assert case in p.CASES
        assert type(cert['index']) is int and 0 <= cert['index'] < len(p.CASES)
        assert p.CASES[cert['index']] == case
        extra = tuple(map(tuple, cert['extra']))
        assert len({v for v, _ in extra}) == len(extra)
        assert all(type(v) is int and 0 <= v < 7 and
                   type(sg) is int and sg in (-1, 1) for v, sg in extra)
        p.known_signs(case, extra)
        assert cert['scale'] == 4096
        assert F(cert['threshold']) in thresholds
        for v, sg, value in cert.get('cuts', []):
            assert type(v) is int and 0 <= v < 12
            assert type(sg) is int and sg in (-1, 1)
            assert 0 <= F(value) <= 1
        bound = p.cube_upper(p.residual(cert))
        assert bound == F(cert['upper_bound']) and bound <= -F(3, 4)
        terms += len(cert['terms'])
        worst = bound if worst is None else max(worst, bound)
        if (i + 1) % 50 == 0 or i + 1 == len(certificates):
            print('PASS:', i + 1, 'exact positive-sum certificates', flush=True)

    seen, used = set(), set()
    for ci, ri in data['cover']:
        assert type(ci) is int and 0 <= ci < len(cells) and ci not in seen
        assert type(ri) is int and 0 <= ri < len(certificates)
        assert p.applicable(certificates[ri], cells[ci])
        seen.add(ci)
        used.add(ri)
    assert len(seen) == 887

    expected = {(182, ()): 2, (185, ((5, -1),)): 7, (457, ()): 1}
    roots, leaves = set(), 0
    for record in data['subdivisions']:
        case_i = record['case_index']
        extra = tuple(map(tuple, record['extra']))
        key = (case_i, extra)
        assert key in expected and key not in roots
        roots.add(key)
        case = p.tuple_case(record['case'])
        assert type(case_i) is int and p.CASES[case_i] == case
        ci = cell_index[case, extra]
        assert ci not in seen
        seen.add(ci)

        def walk(node, cuts):
            if 'certificate' in node:
                assert set(node) == {'certificate'}
                ri = node['certificate']
                assert type(ri) is int and 0 <= ri < len(certificates)
                cert = certificates[ri]
                assert p.tuple_case(cert['case']) == case
                assert tuple(map(tuple, cert['extra'])) == extra
                assert cert['layout'] == 'strong'
                assert F(cert['threshold']) == p.TARGET
                actual = tuple((v, sg, F(value)) for v, sg, value
                               in cert.get('cuts', []))
                assert actual == cuts
                used.add(ri)
                return 1
            assert set(node) == {'variable', 'value', 'lo', 'hi'}
            v, value = node['variable'], F(node['value'])
            assert type(v) is int and 0 <= v < 12 and 0 < value < 1
            return (walk(node['lo'], cuts + ((v, -1, value),)) +
                    walk(node['hi'], cuts + ((v, 1, value),)))

        count = walk(record['tree'], ())
        assert count == expected[key]
        leaves += count

    assert roots == set(expected)
    assert seen == set(range(len(cells)))
    assert used == set(range(len(certificates)))
    assert leaves == 10 and len(data['cover']) + leaves == 897
    assert terms == 86610
    assert worst == -F(53009858789, 53888417792)
    print('PASS: all 884 base cases, 890 signed cells, and 897 final cells')
    print('PASS: complete N6-03-L0 and N6-03-L1 strict exclusion at 79/720')
    print('Positive terms:', terms, '; largest exact cube upper bound:', worst)


if __name__ == '__main__':
    verify()
