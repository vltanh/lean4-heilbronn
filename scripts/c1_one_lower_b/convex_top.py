#!/usr/bin/env python3
"""Export hand/c1_one_lower_convex_top_certificates.json for Lean.

Mirror of Heilbronn/C1/OneLower/ConvexTopModel.lean: points O, C, D, X, Y, F, H, L, Q
(variables h, c, d, f, x_x, x_y, y_x, y_y, l_x, l_y, q_x, q_y = v 0..11); mode `false` = `upper`,
`true` = `cap`; atoms of a leaf `factors m ++ [q0 m] ++ costs(hullTable 7 [lower, qword] ++ path)`.
Every leaf of the split trees gets the first certificate that applies to it (the checker's reuse
rule), converted to integer weights over the leaf's Lean atoms (data/c1_one_lower_ct/); the trees
and their kernel checks go to Heilbronn/C1/OneLower/ConvexTopTrees*.lean.
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
import check_c1_one_lower_convex_top as Ck  # noqa: E402

ROOT = C.ROOT
DATA = ROOT / 'data' / 'c1_one_lower_ct'
S = SQ


def pt(i):
    return {0: (N(0), N(0)), 1: (v(1), N(0)), 2: (N(1), v(2)), 3: (v(4), v(5)),
            4: (v(6), v(7)), 5: (v(3), N(1)), 6: (N(0), v(0)), 7: (v(8), v(9)),
            8: (v(10), v(11))}.get(i, (N(0), N(0)))


def factors(cap):
    out = [v(0) - k(3 * S), v(1) - k(3 * S), N(1) - v(0), N(1) - v(1), v(2) - k(S),
           k(F(204, 715) if cap else F(33, 65)) - v(2), v(3) - k(S),
           k(F(13, 64) if cap else F(17, 50)) - v(3), v(0) - v(2), v(1) - v(3), v(2) - v(3)]
    for x, y in [(4, 5), (6, 7)]:
        out += [v(x) - v(3) - k(F(8, 65)), v(y) - v(2) - k(F(8, 65)), N(1) - v(x), N(1) - v(y)]
    out += [v(4) - v(6) - k(S), v(7) - v(5) - k(S), v(8) - k(S), v(9) - k(S),
            v(1) - v(8) - k(2 * S), v(0) - v(9) - k(2 * S), N(1) - v(8) - v(9) - k(S)]
    if not cap:
        out += [v(10) - k(S), v(11) - k(S), k(1 - S) - v(10), k(1 - S) - v(11)]
    else:
        out += [v(10) - v(3) - k(F(8, 65)), v(11) - v(2) - k(F(8, 65)), k(1 - S) - v(10),
                k(1 - S) - v(11)]
    return out


def q0(cap):
    return (N(1) - v(2)) * (N(1) - v(3)) - k(F(7, 11) if cap else 4 * S)


LOWER = [list(w) for w in Ck.LOWER]
QW = {False: [list(w) for w in Ck.OTHER['upper']], True: [list(w) for w in Ck.OTHER['cap']]}
MODE = {False: 'upper', True: 'cap'}


def crosscheck():
    for cap in (False, True):
        fa = factors(cap)
        assert len(fa) == 30
        for a, b in zip(fa, Ck.factors(MODE[cap])):
            assert C.same_poly(a, b)
        case = Ck.cases(MODE[cap])[0]
        assert C.same_poly(q0(cap), Ck.costs(MODE[cap], case, 0)[0])


def leaf_atoms(cap, i, j, path):
    tb = C.hull_table(7, [LOWER[i], QW[cap][j]]) + path
    return C.table_atoms(factors(cap) + [q0(cap)], [], pt, [7, 8], tb)


def main():
    crosscheck()
    data = json.loads((ROOT / 'hand' / 'c1_one_lower_convex_top_certificates.json').read_text())
    certs = data['certificates']
    DATA.mkdir(parents=True, exist_ok=True)
    chosen = {}
    for cert in certs:
        for cell in sorted(Ck.applicability(cert)):
            chosen.setdefault((cert['mode'], cell), cert)
    cells = []
    total = 0
    for cap in (False, True):
        mode = MODE[cap]
        assert {c for (m, c) in chosen if m == mode} == set(Ck.cells(mode))
        for case in Ck.cases(mode):
            i, j = case
            vv = Ck.SPLITS.get((mode, case), ())

            def leaf(branch):
                cert = chosen[(mode, (case, branch))]
                path = [((vv[bit], 7, 8), bool((branch >> bit) & 1)) for bit in range(len(vv))]
                atl, idx = leaf_atoms(cap, i, j, path)
                src = Ck.cost_specs(mode, tuple(cert['case']), cert['branch'])

                def qmap(qi):
                    if qi == 0:
                        return 30, F(0)
                    t, sg, b = src[qi - 1]
                    li, lb = idx[(t, sg == 1)]
                    return li, lb - b
                terms = C.convert(cert, qmap)
                W = certlib.integer_weights(atl, terms)
                assert certlib.check(atl, W), (mode, case, branch)
                name = '%s_%d_%d_%d.txt' % ('c' if cap else 'u', i, j, branch)
                certlib.write_terms(DATA / name, W)
                return '.cert (term_rows%% "../../../../data/c1_one_lower_ct/%s")' % name, len(W)

            def tree(bit, branch):
                if bit == len(vv):
                    return leaf(branch)
                t0, n0 = tree(bit + 1, branch)
                t1, n1 = tree(bit + 1, branch | (1 << bit))
                return '.node (.tri %d 7 8) [%s, %s]' % (vv[bit], t0, t1), n0 + n1
            body, n = tree(0, 0)
            total += n
            cells.append(('(%s, %d, %d)' % ('true' if cap else 'false', i, j), body, n, (cap, i, j)))
    print('exported %d cases, %d terms' % (len(cells), total))
    nch = C.write_chunks(ROOT / 'Heilbronn' / 'C1' / 'OneLower' / 'ConvexTopTrees',
                         'Heilbronn.C1.OneLower.ConvexTopTrees',
                         'Heilbronn.C1OneLowerConvexTop.Model',
                         'Heilbronn.C1.OneLower.ConvexTopModel', 'Bool × ℕ × ℕ', cells,
                         'Convex-top one-lower cover', spec_call='(fun k => spec k.1 k.2.1 k.2.2)')
    print('chunks', nch)
    for cap in (False, True):
        print(cap, certlib.lean(q0(cap)))
        print(',\n'.join(certlib.lean(a) for a in factors(cap)))


if __name__ == '__main__':
    main()
