#!/usr/bin/env python3
"""LP search for the four bad-quadrant certificates of SIX_BOUNDARY_TWO_SIDE_COMPLETION (5).

Variables 0..11 = a h b c d f x y z w r t; X = (x, y) in the cap CD(1,0), Y = (z, w) in the cap
FH(0,1), Q = (r, t) in T0 = (0,0)HC.  Atoms: affine factors of the setting, the quadrant signs,
and doubled-area costs [T] - s (s = 7/64) of triangles of known orientation.
"""
import sys
from fractions import Fraction as F
from pathlib import Path
HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE.parents[0]))
sys.path.insert(0, str(HERE.parents[0] / 'n605'))
from certlib import v, k, esarea, to_poly  # noqa
import certlp  # noqa
import numpy as np

S = F(7, 64)
a, h, b, c, d, f, x, y, z, w, r, t = [v(i) for i in range(12)]
A, H, B, C, D, Fp, X, Y, Q = (0, a), (0, h), (b, 0), (c, 0), (1, d), (f, 1), (x, y), (z, w), (r, t)


def base_factors():
    return [a, h - a, 1 - h, b, c - b, 1 - c, d - a, h - d, f - b, c - f,
            1 - x, x - c, y, d - y, 1 - w, w - h, z, f - z, r, t, c - r, h - t]


def costs(qa, qb):
    s = k(S)
    # qa = +1 if t > a ([AQX] > 0), -1 otherwise; qb = +1 if r > b ([BQY] < 0)
    aqx = esarea(A, Q, X)
    bqy = esarea(B, Q, Y)
    return [a * (c - b) - s, b * (h - a) - s, (c - b) * y - s, (h - a) * z - s,
            k(-1) * esarea(C, D, X) - s, k(-1) * esarea(Fp, H, Y) - s,
            esarea(H, D, Fp) - s, esarea(C, D, Fp) - s, (h - a) * r - s, (c - b) * t - s,
            k(-1) * esarea(H, C, Q) - s,
            (aqx if qa > 0 else k(-1) * aqx) - s,
            (k(-1) * bqy if qb > 0 else bqy) - s,
            esarea(A, B, Q) - s]


def poly(e):
    """certlib expression -> polylib dict (monomial tuple of variable indices -> Fraction)."""
    dd, p = to_poly(e)
    out = {}
    for key, cf in p.items():
        mono = []
        kk = key
        i = 0
        while kk:
            e_ = kk % 32
            mono += [i] * e_
            kk //= 32
            i += 1
        out[tuple(mono)] = out.get(tuple(mono), F(0)) + F(cf, dd)
    return {m: cc for m, cc in out.items() if cc != 0}


def run(qa, qb, deg=3):
    fac = base_factors() + [(t - a) if qa > 0 else (a - t), (r - b) if qb > 0 else (b - r)]
    cs = costs(qa, qb)
    fp = [poly(e) for e in fac]
    qp = [poly(e) for e in cs]
    fpf = [{m: float(cc) for m, cc in p.items()} for p in fp]
    qpf = [{m: float(cc) for m, cc in p.items()} for p in qp]
    cols = certlp.columns(len(fac), len(cs), deg=deg)
    lam = certlp.lp_search(cols, fpf, qpf, target=-1.0)
    if lam is None:
        return None
    terms, ub, _ = certlp.round_cert(cols, lam, fp, qp)
    print('quadrant', qa, qb, 'terms', len(terms), 'bound', float(ub))
    return terms, ub


if __name__ == '__main__' and len(sys.argv) == 1:
    for qa, qb in [(1, 1), (1, -1), (-1, 1), (-1, -1)]:
        run(qa, qb)


def export():
    """Write data/six_two_side_completion/qN.txt and the Lean atom lists (stdout)."""
    import certlib
    root = HERE.parents[1]
    out = root / 'data' / 'six_two_side_completion'
    out.mkdir(parents=True, exist_ok=True)
    names = {(1, 1): 'qI', (1, -1): 'qM1', (-1, 1): 'qM2', (-1, -1): 'qIII'}
    lean = []
    for (qa, qb), nm in names.items():
        fac = base_factors() + [(t - a) if qa > 0 else (a - t), (r - b) if qb > 0 else (b - r)]
        cs = costs(qa, qb)
        atoms = fac + cs
        res = run(qa, qb)
        terms, ub = res
        nf = len(fac)
        rat = []
        for col, wgt in terms:
            if col[0] == 'f':
                rat.append((F(wgt, 4096), list(col[1])))
            else:
                _, qi, fi = col
                rat.append((F(wgt, 4096), [nf + qi] + ([fi] if fi >= 0 else [])))
        W = certlib.integer_weights(atoms, rat)
        assert certlib.check(atoms, W), nm
        certlib.write_terms(out / (nm + '.txt'), W)
        lean.append(certlib.lean_list(nm + 'Atoms', atoms))
    print('\n\n'.join(lean))


if __name__ == '__main__' and len(sys.argv) > 1 and sys.argv[1] == 'export':
    export()
