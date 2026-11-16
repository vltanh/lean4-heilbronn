#!/usr/bin/env python3
"""Export hand/c1_one_lower_top_triangle_certificates.json for Lean.

Mirror of Heilbronn/C1/OneLower/TopTriangleModel.lean: points O, C, D, X, F, H, L, P, Q
(variables h, c, d, f, g, k, l_x, l_y, p_x, p_y, q_x, q_y = v 0..11), atoms
`factors ++ costs(hullTable 6 [lower, cap, upper] ++ path)`. Every leaf of the split trees gets
the first certificate that applies to it (the checker's reuse rule), converted to integer weights
over the leaf's Lean atoms (data/c1_one_lower_tt/); the trees and their kernel checks go to
Heilbronn/C1/OneLower/TopTriangleTrees*.lean.
"""
import json
import sys
from fractions import Fraction as F
from pathlib import Path

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE))
import common as C  # noqa: E402
from common import v, k, N, SQ  # noqa: E402
import certlib  # noqa: E402
import check_c1_one_lower_top_triangle as Ck  # noqa: E402

ROOT = C.ROOT
DATA = ROOT / 'data' / 'c1_one_lower_tt'
S = SQ


def pt(i):
    return {0: (N(0), N(0)), 1: (v(1), N(0)), 2: (N(1), v(2)), 3: (v(4), v(5)),
            4: (v(3), N(1)), 5: (N(0), v(0)), 6: (v(6), v(7)), 7: (v(8), v(9)),
            8: (v(10), v(11))}.get(i, (N(0), N(0)))


FACTORS = [
    v(0) - k(3 * S), v(1) - k(3 * S), N(1) - v(0), N(1) - v(1), v(2) - k(S),
    k(F(41, 65)) - v(2), v(3) - k(S), k(F(3, 7)) - v(3), v(0) - v(2), v(1) - v(3),
    v(2) - v(3), v(4) - v(3) - k(3 * S), v(5) - v(2) - k(3 * S), N(1) - v(4), N(1) - v(5),
    v(6) - k(S), v(7) - k(S), v(1) - v(6) - k(2 * S), v(0) - v(7) - k(2 * S),
    N(1) - v(6) - v(7) - k(S), v(8) - v(3) - k(F(8, 65)), k(1 - S) - v(8),
    v(9) - v(2) - k(F(8, 65)), k(1 - S) - v(9), v(10) - k(S), k(1 - S) - v(10),
    v(11) - k(S), k(1 - S) - v(11)]
LOWER = [list(w) for w in Ck.LOWER]
CAP = [list(w) for w in Ck.CAP]
UPPER = [list(w) for w in Ck.UPPER]


def leaf_atoms(case, path):
    i, j, l = case
    tb = C.hull_table(6, [LOWER[i], CAP[j], UPPER[l]]) + path
    return C.table_atoms(FACTORS, [], pt, [6, 7, 8], tb), tb


def main():
    assert len(FACTORS) == 28
    for a, b in zip(FACTORS, Ck.FACTORS):
        assert C.same_poly(a, b)
    data = json.loads((ROOT / 'hand' / 'c1_one_lower_top_triangle_certificates.json').read_text())
    certs = data['certificates']
    expected = Ck.cells()
    DATA.mkdir(parents=True, exist_ok=True)
    chosen = {}
    for cert in certs:
        for cell in expected:
            if cell not in chosen and Ck.applicable(cert, cell):
                chosen[cell] = cert
    assert set(chosen) == set(expected)
    cells = []
    total = 0
    for case in Ck.CASES:
        i, j, l = case
        unknown = Ck.unknown_triples(case) if case in Ck.SPLIT_CASES else []

        def leaf(branch, path):
            cert = chosen[(case, branch)]
            (atl, idx), tb = leaf_atoms(case, path)
            # the leaf's signs are the checker's known signs
            ks = Ck.known_signs(case, branch)
            assert {(t, sg == 1) for t, sg in ks.items()} == set(tb), (case, branch)
            src = Ck.cost_specs(tuple(cert['case']), cert['branch'])

            def qmap(qi):
                t, sg, b = src[qi]
                li, lb = idx[(t, sg == 1)]
                return li, lb - b
            terms = C.convert(cert, qmap)
            W = certlib.integer_weights(atl, terms)
            assert certlib.check(atl, W), (case, branch)
            name = 't_%d_%d_%d_%d.txt' % (i, j, l, branch)
            certlib.write_terms(DATA / name, W)
            return '.cert (term_rows%% "../../../../data/c1_one_lower_tt/%s")' % name, len(W)

        def tree(bit, branch, path):
            if bit == len(unknown):
                if case == (2, 3, 6) and branch == 2:
                    t0, n0 = leaf(2, path + [((6, 7, 8), False)])
                    t1, n1 = leaf(18, path + [((6, 7, 8), True)])
                    return '.node (.tri 6 7 8) [%s, %s]' % (t0, t1), n0 + n1
                return leaf(branch if unknown else -1, path)
            t = unknown[bit]
            t0, n0 = tree(bit + 1, branch, path + [(t, False)])
            t1, n1 = tree(bit + 1, branch | (1 << bit), path + [(t, True)])
            return '.node (.tri %d %d %d) [%s, %s]' % (t + (t0, t1)), n0 + n1
        body, n = tree(0, 0, [])
        total += n
        cells.append(('(%d, %d, %d)' % case, body, n, case))
    print('exported %d cases, %d terms' % (len(cells), total))
    nch = C.write_chunks(ROOT / 'Heilbronn' / 'C1' / 'OneLower' / 'TopTriangleTrees',
                         'Heilbronn.C1.OneLower.TopTriangleTrees',
                         'Heilbronn.C1OneLowerTopTriangle.Model',
                         'Heilbronn.C1.OneLower.TopTriangleModel', 'ℕ × ℕ × ℕ', cells,
                         'Top-triangle one-lower cover', spec_call='(fun k => spec k.1 k.2.1 k.2.2)')
    print('chunks', nch)
    print(',\n'.join(certlib.lean(a) for a in FACTORS))
    print(LOWER, CAP, UPPER, sep='\n')


if __name__ == '__main__':
    main()
