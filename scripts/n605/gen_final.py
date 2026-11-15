"""Discovery script: LP (HiGHS) + rounding for the N6-05 certificates.

Writes n605_single_certificate.json (variant A) and n605_three_cell_certificates.json (variant B).
The outputs are checked independently by verify_n605.py; this script is not a proof premise.
"""
import json, sys
from fractions import Fraction as Fr
from model import build, VARIABLES, NAMES, TRIPLES, sign
from certlp import columns, lp_search, round_cert
from polylib import var, const, sub, add, scale, cube_upper

USED = ['ABC', 'ABH', 'AYH', 'BCX', 'CXD', 'XDQ', 'DFQ', 'FYH', 'FYQ']


def lin_factor(exact, spec):
    """spec: dict var-> coeff, '' -> constant (Fractions)."""
    one = Fr(1) if exact else 1.0
    p = {}
    for k, v in spec.items():
        v = Fr(v) if exact else float(Fr(v))
        if k == '':
            p = add(p, const(v))
        else:
            p = add(p, {(VARIABLES.index(k),): v})
    return p

S = Fr(7, 64)
# variant B factor specs
PRIM_B = {
    'a': {'a': 1}, 'b': {'b': 1}, '1-h': {'': 1, 'h': -1}, '1-c': {'': 1, 'c': -1},
    'd-a': {'d': 1, 'a': -1}, 'h-d': {'h': 1, 'd': -1}, 'f-b': {'f': 1, 'b': -1}, 'c-f': {'c': 1, 'f': -1},
    '1-x': {'': 1, 'x': -1}, '1-w': {'': 1, 'w': -1},
    'r-f': {'r': 1, 'f': -1}, '1-r': {'': 1, 'r': -1}, 't-d': {'t': 1, 'd': -1}, '1-t': {'': 1, 't': -1},
    'h-a-s': {'h': 1, 'a': -1, '': -S}, 'c-b-s': {'c': 1, 'b': -1, '': -S},
    'x-c-s': {'x': 1, 'c': -1, '': -S}, 'w-h-s': {'w': 1, 'h': -1, '': -S},
    'd-y-s': {'d': 1, 'y': -1, '': -S}, 'f-z-s': {'f': 1, 'z': -1, '': -S},
    'y-s': {'y': 1, '': -S}, 'z-s': {'z': 1, '': -S},
}
CUTS = {'1/2-h': {'': Fr(1, 2), 'h': -1}, 'h-1/2': {'h': 1, '': -Fr(1, 2)},
        '1/2-c': {'': Fr(1, 2), 'c': -1}, 'c-1/2': {'c': 1, '': -Fr(1, 2)}}
CELLS_B = [['1/2-h'], ['h-1/2', '1/2-c'], ['h-1/2', 'c-1/2']]


def export_terms(cols, terms, fnames, qnames):
    out = []
    for col, w in terms:
        if col[0] == 'f':
            out.append(['f', [fnames[i] for i in col[1]], w])
        else:
            out.append(['q', qnames[col[1]], fnames[col[2]] if col[2] >= 0 else None, w])
    return out


def run_cell(fnames_ex, fpe, fpf, qnames, qpe, qpf, drop=()):
    ids = [i for i, n in enumerate(fnames_ex) if n not in drop]
    cols = columns(len(fpe), len(qpe), fac_ids=ids)
    lam = lp_search(cols, fpf, qpf)
    assert lam is not None
    terms, bound, _ = round_cert(cols, lam, fpe, qpe)
    return export_terms(cols, terms, fnames_ex, qnames), bound


def main():
    pts, dets, F_ex, Q_ex = build(exact=True)
    _, _, F_fl, Q_fl = build(exact=False)
    qidx = [i for i, (n, _) in enumerate(Q_ex) if n in USED]
    qnames = [Q_ex[i][0] for i in qidx]
    qpe = [Q_ex[i][1] for i in qidx]; qpf = [Q_fl[i][1] for i in qidx]
    # Variant A: SIX_BOUNDARY_TWO_SIDE_UPPER-style factors, without d-f (no transposition needed).
    fnA = [n for n, _ in F_ex]
    fpe = [p for _, p in F_ex]; fpf = [p for _, p in F_fl]
    termsA, boundA = run_cell(fnA, fpe, fpf, qnames, qpe, qpf, drop=('d-f',))
    print('A: terms', len(termsA), 'bound', boundA, float(boundA))
    json.dump({'variant': 'A', 'variables': VARIABLES, 's': '7/64', 'scale': 4096,
               'factors': [n for n in fnA if n != 'd-f'], 'costs': qnames,
               'cells': [{'cuts': [], 'terms': termsA, 'upper_bound': str(boundA)}]},
              open('n605_single_certificate.json', 'w'), indent=0)
    # Variant B: elementary factors and a 3-cell cover in h, c.
    certs = []
    for cuts in CELLS_B:
        names = list(PRIM_B) + cuts
        fpe = [lin_factor(True, (PRIM_B | CUTS)[n]) for n in names]
        fpf = [lin_factor(False, (PRIM_B | CUTS)[n]) for n in names]
        termsB, boundB = run_cell(names, fpe, fpf, qnames, qpe, qpf)
        print('B', cuts, 'terms', len(termsB), 'bound', boundB, float(boundB))
        certs.append({'cuts': cuts, 'terms': termsB, 'upper_bound': str(boundB)})
    json.dump({'variant': 'B', 'variables': VARIABLES, 's': '7/64', 'scale': 4096,
               'factors': list(PRIM_B), 'costs': qnames, 'cells': certs},
              open('n605_three_cell_certificates.json', 'w'), indent=0)


if __name__ == '__main__':
    main()
