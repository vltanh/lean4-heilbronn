#!/usr/bin/env python3
"""Export docs/proof/nine/c1_one_lower_right_pair_certificates.json for Lean.

Mirror of Heilbronn/Nine/C1/OneLower/RightPairModel.lean. Cross-checks the base signs, factors, costs
and bounds against the hand checker, converts the 15 certificates to integer weights for
`Cert.check` on the Lean atoms `factors ++ qcosts ++ table costs ++ cubic`, writes
data/nine/c1_one_lower_right_pair/*.txt and Heilbronn/Nine/C1/OneLower/RightPairTrees.lean.
"""
import json
import sys
from fractions import Fraction as F
from pathlib import Path

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE))
from common import (ROOT, N, v, k, esarea, LEX, table_atoms, convert,  # noqa: E402
                    checker_poly, certlib)
import check_c1_one_lower_right_pair as Ck  # noqa: E402

DATA = ROOT / 'data' / 'nine' / 'c1_one_lower_right_pair'
LEAN = ROOT / 'Heilbronn' / 'Nine' / 'C1' / 'OneLower' / 'RightPairTrees.lean'

WR = [1, 0, 4, 3, 2]
WT = [2, 1, 0, 4, 3]
WL = [[2, 3, 2, 2, 1], [3, 3, 2, 1, 1]]
WU = [[2, 1, 2, 3, 2], [2, 2, 2, 2, 2], [3, 2, 2, 1, 2]]
FREE_PAIRS = [(0, 1), (0, 2), (0, 3), (1, 2), (1, 3), (2, 3)]


def pt(i):
    return {0: (N(0), N(0)), 1: (v(1), N(0)), 2: (N(1), v(2)), 3: (v(3), N(1)), 4: (N(0), v(0)),
            5: (v(4), v(5)), 6: (v(6), v(7)), 7: (v(8), v(9)), 8: (v(10), v(11))}[i]


def case_words(top, li, qi):
    return [WR, WR, WL[li], WT if top else WU[qi]]


def lsign(w, i, j):
    return (j + 5 - i) % 5 <= w[i]


def anchor_sign(ws, t):
    if t[2] < 5:
        return True
    if t[1] < 5:
        return lsign(ws[t[2] - 5], t[0], t[1])
    return None


def pair_sign(ws, a, b, vv):
    wa, wb = ws[a], ws[b]
    if wa[vv] != wb[vv]:
        return wa[vv] < wb[vv]
    if (a, b) == (0, 1):
        return {0: True, 1: True, 2: False}.get(vv)
    return None


def base_signs(ws):
    out = []
    for t in LEX:
        sg = anchor_sign(ws, t)
        if sg is not None:
            out.append((t, sg))
    for a, b in FREE_PAIRS:
        for vv in range(5):
            sg = pair_sign(ws, a, b, vv)
            if sg is not None:
                out.append(((vv, a + 5, b + 5), sg))
    return out


one = N(1)


def factors(top):
    out = [v(0) - k(F(49, 60)), v(1) - k(F(24, 73)), one - v(0), k(F(49, 73)) - v(1),
           v(2) - k(F(49, 60)), k(F(65, 73)) - v(2), v(3) - k(F(8, 73)), k(F(49, 73)) - v(3),
           v(0) - v(2), v(1) - v(3), v(2) - v(3)]
    if top:
        out += [k(F(323, 803)) - v(3), k(F(57, 65)) - v(2)]
    out += [v(4) - k(F(8, 73)), v(5) - k(F(8, 73)), one - v(4), v(2) - v(5) - k(F(8, 73)),
            v(4) - v(1) - k(F(8, 73)),
            v(6) - k(F(8, 73)), v(7) - k(F(8, 73)), one - v(6), v(2) - v(7) - k(F(8, 73)),
            v(6) - v(1) - k(F(8, 73)),
            v(8) - k(F(8, 73)), v(9) - k(F(8, 73)), v(1) - v(8) - k(F(16, 73)),
            v(0) - v(9) - k(F(16, 73)), one - v(8) - v(9) - k(F(8, 73)),
            v(10) - k(F(8, 73)), v(11) - k(F(8, 73))]
    if top:
        out += [one - v(10), one - v(11), v(10) - v(3) - k(F(8, 73)), v(11) - v(2) - k(F(8, 73))]
    else:
        out += [k(F(65, 73)) - v(10), k(F(65, 73)) - v(11)]
    return out


def qcosts(top):
    out = [v(0) * v(1) - k(F(24, 73)), v(2) * (one - v(1)) - k(F(24, 73)),
           k(F(24, 73)) - esarea(pt(2), pt(3), pt(4)), k(F(49, 60)) - esarea(pt(0), pt(3), pt(4))]
    if not top:
        out.append(one - (v(0) - v(2)) * (v(1) - v(3)) - k(F(32, 73)))
    return out


CUBIC = [v(2) * v(1) * (one - v(1)) - k(F(8, 73))]


def lean_tree(nodes, idx, name):
    node = nodes[idx]
    if 'split' in node:
        a, b, c = node['split']
        return '.node (.tri %d %d %d) [%s, %s]' % (a, b, c, lean_tree(nodes, node['negative'], name),
                                                   lean_tree(nodes, node['positive'], name))
    assert node['leaf'] == 'certificate'
    return '.cert (term_rows%% "../../../../data/nine/c1_one_lower_right_pair/%s")' % name(node['certificate'])


def main():
    data = json.loads((ROOT / 'docs' / 'proof' / 'nine' / 'c1_one_lower_right_pair_certificates.json').read_text())
    certs = data['certificates']
    DATA.mkdir(parents=True, exist_ok=True)
    name = lambda i: 'c%02d.txt' % i  # noqa: E731
    total = 0
    for ci, cert in enumerate(certs):
        kind, li, qi = cert['case']
        top = kind == 'top'
        ws = case_words(top, li, qi)
        case = (kind, li, qi)
        assert ws == [list(w) for w in Ck.case_words(case)]
        fs = [(tuple(t), sg == 1) for t, sg in cert['additional']]
        base = base_signs(ws)
        assert [(t, sg == 1) for t, sg in Ck.base_signs(case).items()] == base, case
        fac, qc = factors(top), qcosts(top)
        for e, p in zip(fac, Ck.factors(case)):
            assert certlib.rat_value_poly(e) == checker_poly(p)
        assert len(fac) == len(Ck.factors(case))
        atoms, index = table_atoms(fac + qc, CUBIC, pt, [5, 6, 7, 8], base + fs)
        specs = Ck.cost_specs(case, [(tuple(t), sg) for t, sg in cert['additional']])
        cks = Ck.costs(case, [(tuple(t), sg) for t, sg in cert['additional']])
        nf = len(fac)
        assert len(cks) == len(qc) + len(specs) == len(atoms) - nf - 1
        for qi2, p in enumerate(cks):
            assert certlib.rat_value_poly(atoms[nf + qi2]) == checker_poly(p), (case, qi2)
        assert certlib.rat_value_poly(CUBIC[0]) == checker_poly(Ck.cubic_costs(case)[0])
        terms = convert(cert, nf, lambda q: (nf + q, 0), lambda c: len(atoms) - 1)
        W = certlib.integer_weights(atoms, terms)
        assert certlib.check(atoms, W), case
        certlib.write_terms(DATA / name(ci), W)
        total += len(W)
    print('right pair: %d certificates, %d terms' % (len(certs), total))
    lines = ['module', '', 'public import Heilbronn.Nine.C1.OneLower.RightPairModel',
             'public import Heilbronn.Common.DataReader', '',
             '/-! # The right-pair sign trees (generated by `scripts/nine/c1_one_lower/right_pair.py`)',
             '', 'Kernel checks of the seven case trees of '
             '`docs/proof/nine/c1_one_lower_right_pair_certificates.json` (%d terms). -/' % total, '',
             '@[expose] public section', '', 'namespace Heilbronn.Nine.C1OneLowerRightPair.Model', '',
             'open Cover C1OneLower', '']
    for cv in data['cover']:
        kind, li, qi = cv['case']
        top = kind == 'top'
        tag = '%s_%d_%d' % (kind, li, qi)
        lines += ['/-- The sign tree of the case %s. -/' % str(cv['case']).replace("'", ''),
                  'noncomputable def tree_%s : Cover.Tree C1ZeroLower.Model.Split :=' % tag,
                  '  ' + lean_tree(cv['tree'], 0, name), '',
                  'theorem tree_%s_ok : checkTree (spec %s %d %d) [] tree_%s = true := by'
                  % (tag, 'true' if top else 'false', li, qi, tag),
                  '  decide +kernel', '']
    lines += ['end Heilbronn.Nine.C1OneLowerRightPair.Model', '']
    LEAN.write_text('\n'.join(lines))


if __name__ == '__main__':
    main()
