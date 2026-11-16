#!/usr/bin/env python3
"""Export docs/proof/nine/c1_one_lower_mixed_caps_certificates.json for Lean.

Mirror of Heilbronn/Nine/C1/OneLower/MixedCapsModel.lean: points O, C, D, F, H, X, Y, L, Q (the
zero-lower `pt`, variables h, c, d, f, x0, y0, ..., x3, y3); a case key (kind, i, j) with kind
0 = rt, 1 = rl, 2 = tl; atoms of a leaf
`factors key ++ cutAtoms path ++ qcosts key ++ costs(baseSigns key ++ realFacts path) ++ cubics key`.
The cover trees of the JSON are written as Lean trees (`.tri` splits, the `.cut` split on
q_x = 5/8, `.closed` leaves for the two `inconsistent` leaves); each certificate is converted to
integer weights over the Lean atoms of its leaf (data/nine/c1_one_lower_mc/).
"""
import json
import sys
from fractions import Fraction as F
from pathlib import Path

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE))
import common as C  # noqa: E402
from common import v, k, N, SQ, esarea  # noqa: E402
import certlib  # noqa: E402
import check_c1_one_lower_mixed_caps as Ck  # noqa: E402

ROOT = C.ROOT
DATA = ROOT / 'data' / 'nine' / 'c1_one_lower_mc'
S = SQ
RHO = F(49, 60)
KINDS = ['rt', 'rl', 'tl']
CAPW = {'r': [1, 0, 4, 3, 2], 't': [2, 1, 0, 4, 3], 'l': [3, 2, 1, 0, 4]}
LOWER = [list(w) for w in Ck.LOWER]
UPPER = [list(w) for w in Ck.UPPER]


def pt(i):
    return {0: (N(0), N(0)), 1: (v(1), N(0)), 2: (N(1), v(2)), 3: (v(3), N(1)), 4: (N(0), v(0)),
            5: (v(4), v(5)), 6: (v(6), v(7)), 7: (v(8), v(9)), 8: (v(10), v(11))}.get(i, (N(0), N(0)))


def words(key):
    kind, i, j = key
    kd = KINDS[kind]
    return [CAPW[kd[0]], CAPW[kd[1]], LOWER[i], UPPER[j]]


def base_signs(key):
    return C.hull_table(5, words(key)) + [((5, 6, 7), True)]


def factors(key):
    kind, i, j = key
    kd = KINDS[kind]
    out = [v(0) - k(3 * S), v(1) - k(3 * S), N(1) - v(0), N(1) - v(1), v(2) - k(S),
           k(1 - S) - v(2), v(3) - k(S), k(1 - S) - v(3), v(0) - v(2), v(1) - v(3), v(2) - v(3),
           v(2) - k(4 * S)]
    if 't' in kd:
        out += [k(F(67, 100)) - v(3), k(F(57, 65)) - v(2)]
    if 'r' in kd:
        out += [v(1) - k(F(1, 7)), k(F(6, 7)) - v(1)]
    if 'l' in kd:
        out += [v(3) - k(4 * S), v(0) - k(F(1, 7)), k(F(6, 7)) - v(0)]
    for cat, (x, y) in zip(kd, [(4, 5), (6, 7)]):
        out += [v(x) - k(S), v(y) - k(S)]
        if cat == 'r':
            gap = F(8, 41) if kd == 'rl' else F(8, 49)
            out += [N(1) - v(x), v(2) - v(y) - k(gap), v(x) - v(1) - k(F(8, 65)), v(y) - k(7 * S / 6)]
        elif cat == 't':
            gap = F(8, 41) if kd == 'tl' else F(8, 65)
            out += [N(1) - v(x), N(1) - v(y), v(x) - v(3) - k(F(8, 41)), v(y) - v(2) - k(gap)]
        else:
            out += [v(3) - v(x) - k(F(8, 41)), N(1) - v(y), v(y) - v(0) - k(F(8, 65)),
                    v(x) - k(7 * S / 6)]
    out += [v(8) - k(S), v(9) - k(S), v(1) - v(8) - k(2 * S), v(0) - v(9) - k(2 * S),
            N(1) - v(8) - v(9) - k(S), v(10) - k(S), v(11) - k(S), k(1 - S) - v(10),
            k(1 - S) - v(11)]
    if i == 1 and j in (3, 5):
        out += [v(0) - k(RHO), k(F(803, 1920)) - v(3)]
    return out


def qcosts(key):
    kind = key[0]
    kd = KINDS[kind]
    out = [v(0) * v(1) - k(3 * S), N(1) - (v(0) - v(2)) * (v(1) - v(3)) - k(4 * S),
           k(1 - 4 * S) - esarea(pt(2), pt(3), pt(4)),
           k(F(36, 49) if kd == 'rl' else F(67, 100)) - esarea(pt(0), pt(3), pt(4))]
    if 'l' in kd:
        out += [k(1 - 4 * S) - esarea(pt(1), pt(2), pt(3))]
    if 't' in kd:
        z = 5 + kd.index('t')
        out += [k(1 - F(7, 3) * S) - esarea(pt(1), pt(2), pt(z)),
                k(1 - F(7, 3) * S) - esarea(pt(3), pt(4), pt(z))]
    return out


def cubics(key):
    kd = KINDS[key[0]]
    out = []
    if 'r' in kd:
        out.append(v(2) * v(1) * (N(1) - v(1)) - k(S))
    if 'l' in kd:
        out.append(v(3) * v(0) * (N(1) - v(0)) - k(S))
    return out


def cut_atom(sg):
    return v(10) - k(F(5, 8)) if sg else k(F(5, 8)) - v(10)


def leaf_atoms(key, path):
    real = [f for f in path if f[0][0] < 9]
    cuts = [cut_atom(f[1]) for f in path if f[0][0] == 9]
    fac = factors(key) + cuts
    tb = base_signs(key) + real
    pre = fac + qcosts(key)
    return C.table_atoms(pre, cubics(key), pt, [5, 6, 7, 8], tb), len(fac), len(pre), tb


def crosscheck():
    for case in Ck.CASES:
        key = (KINDS.index(case[0]), case[1], case[2])
        assert [(t, sg == 1) for t, sg in Ck.base_signs(case).items()] == base_signs(key), case
        extra = ['double_od'] if case[1] == 1 and case[2] in (3, 5) else []
        for a, b in zip(factors(key), Ck.factors(case, extra)):
            assert C.same_poly(a, b), case
        assert len(factors(key)) == len(Ck.factors(case, extra))
        cq = Ck.costs(case)
        for a, b in zip(qcosts(key), cq):
            assert C.same_poly(a, b), case
        for a, b in zip(cubics(key), Ck.cubic_costs(case)):
            assert C.same_poly(a, b)


def main():
    crosscheck()
    data = json.loads((ROOT / 'docs' / 'proof' / 'nine' / 'c1_one_lower_mixed_caps_certificates.json').read_text())
    certs = data['certificates']
    DATA.mkdir(parents=True, exist_ok=True)
    cells = []
    total = 0
    for entry in data['cover']:
        case = tuple(entry['case'])
        key = (KINDS.index(case[0]), case[1], case[2])
        nodes = entry['nodes']
        nq_fixed = len(qcosts(key))

        def visit(ni, path, ckpath):
            nonlocal total
            node = nodes[ni]
            if 'split' in node:
                t = tuple(node['split'])
                ch = [visit(c, path + [(t, sg == 1)], ckpath + [(t, sg)])
                      for c, sg in zip(node['children'], (-1, 1))]
                return '.node (.tri %d %d %d) [%s, %s]' % (t + tuple(ch))
            if 'cut' in node:
                assert node['cut'] == [10, 5, 8]
                ch = [visit(c, path + [((9, 0, 0), sg == 1)], ckpath)
                      for c, sg in zip(node['children'], (-1, 1))]
                return '.node .cut [%s, %s]' % tuple(ch)
            if node.get('inconsistent'):
                last = [t for t, _ in path[-3:]]
                tag = 0 if (5, 6, 8) in last and path[-1] == ((5, 6, 8), False) else 1
                return '.closed %d' % tag
            cert = certs[node['certificate']]
            assert [tuple(x[0]) for x in cert['additional']] == [t for t, _ in ckpath]
            (atl, idx), nfac, npre, tb = leaf_atoms(key, path)
            specs = Ck.cost_specs(case, [(tuple(t), sg) for t, sg in cert['additional']])

            def qmap(qi):
                if qi < nq_fixed:
                    return nfac + qi, F(0)
                t, sg, b = specs[qi - nq_fixed]
                li, lb = idx[(t, sg == 1)]
                return li, lb - b
            terms = C.convert(cert, qmap, lambda ci: npre + len(tb) + ci)
            W = certlib.integer_weights(atl, terms)
            assert certlib.check(atl, W), (case, node['certificate'])
            name = 'm%03d.txt' % node['certificate']
            certlib.write_terms(DATA / name, W)
            total += len(W)
            visit.n += len(W)
            return '.cert (term_rows%% "../../../../../data/nine/c1_one_lower_mc/%s")' % name
        visit.n = 0
        body = visit(0, [], [])
        cells.append(('(%d, %d, %d)' % key, body, visit.n, key))
    print('exported %d cases, %d terms' % (len(cells), total))
    nch = C.write_chunks(ROOT / 'Heilbronn' / 'Nine' / 'C1' / 'OneLower' / 'MixedCapsTrees',
                         'Heilbronn.Nine.C1.OneLower.MixedCapsTrees',
                         'Heilbronn.Nine.C1OneLowerMixedCaps.Model',
                         'Heilbronn.Nine.C1.OneLower.MixedCapsModel', 'ℕ × ℕ × ℕ', cells,
                         'Mixed-caps one-lower cover', spec_call='spec', split_type='MSplit')
    print('chunks', nch)
    for key in [(0, 1, 3), (1, 0, 0), (2, 0, 0)]:
        print(key)
        print(',\n'.join(certlib.lean(a) for a in factors(key)))
        print(',\n'.join(certlib.lean(a) for a in qcosts(key)))
        print(',\n'.join(certlib.lean(a) for a in cubics(key)))


if __name__ == '__main__':
    main()
