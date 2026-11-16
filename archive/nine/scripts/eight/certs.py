#!/usr/bin/env python3
"""Polynomial certificates for the eight-boundary classes (Theorems 11, 12 of EIGHT_BOUNDARY.md
and the R6 class of R6_BOUND.md), in the model of Heilbronn/Nine/EightBoundary/Cert*.lean.

Variables (all in [0,1]): a b c d e f g h x y = v0 .. v9; the points are
A=(0,a), B=(b,0), C=(c,0), D=(1,d), E=(1,e), F=(f,1), G=(g,1), H=(0,h), O=(x,y).
Atoms: the 16 order/square facts, the 8 boundary budgets `[XYZ] - s`, the gap bounds
`11/16 - gap` (Lemma 7), the oriented O-triangles `[XYZ] - s` of the case, and extra facts
(Lemma 10: contact overlaps),
with s = 7/64. Columns: products of 1..3 atoms. The LP (HiGHS) finds weights making the monomial
bound on [0,1]^10 at most -1; weights are rounded to rationals and re-checked exactly with
scripts/certlib.py (the Python mirror of Lean's `Cert.check`).

usage: certs.py CASE   (CASE in thm11, thm12, r6)
"""
import sys, itertools as it, time
from fractions import Fraction as Fr
from pathlib import Path
import numpy as np, scipy.sparse as sp
from scipy.optimize import linprog

ROOT = Path(__file__).resolve().parents[3]
sys.path.insert(0, str(ROOT / 'scripts'))
import certlib as CL
from certlib import v, k, esarea

ONE, ZERO = CL.E.lift(1), CL.E.lift(0)
a, b, c, d, e, f, g, h, x, y = [v(i) for i in range(10)]
s = k(Fr(7, 64))
P = dict(A=(ZERO, a), B=(b, ZERO), C=(c, ZERO), D=(ONE, d), E=(ONE, e), F=(f, ONE), G=(g, ONE),
         H=(ZERO, h), O=(x, y))


def S(t):
    return esarea(P[t[0]], P[t[1]], P[t[2]])


ORDERS = [a, h - a, 1 - h, b, c - b, 1 - c, d, e - d, 1 - e, g, f - g, 1 - f, x, 1 - x, y, 1 - y]
BUDGETS = [S(t) - s for t in ['ABH', 'ABC', 'BCD', 'CDE', 'DEF', 'EFG', 'FGH', 'GHA']]
M0 = k(Fr(11, 16))
GAPS = [M0 - (h - a), M0 - (c - b), M0 - (e - d), M0 - (f - g)]
CASES = {
    'thm11': (['HDO', 'EAO', 'EBO', 'CDO', 'CFO', 'DGO', 'ADO', 'EHO', 'GBO', 'BCO', 'FGO'],
              [c - g, f - b]),
    'thm12': (['ADO', 'EHO', 'CFO', 'GBO', 'EAO', 'HDO', 'FBO', 'GCO', 'BEO', 'DGO', 'BCO', 'FGO',
               'DEO', 'HAO'], [c - g, f - b, e - a, h - d]),
}


# The seven O-orientations used by R6_BOUND.md (ADO, DHO, GCO, OCF > 0; AE, BF < 0; BE > 0),
# read off the R6 representative (3,3,3,4,4,4,4,3).
CASES['r6'] = (['OAD', 'ODH', 'OGC', 'OCF', 'OEA', 'OFB', 'OBE'], [c - g, f - b, e - a, h - d])


def atoms_of(case):
    tri, extra = CASES[case]
    return ORDERS + BUDGETS + GAPS + [S(t) - s for t in tri] + extra


def fpoly(atom):
    dd, p = CL.to_poly(atom)
    return {m: c / dd for m, c in p.items()}


def lp(atoms, deg=3):
    polys = [fpoly(t) for t in atoms]
    n = len(atoms)
    cols = [ids for dg in range(1, deg + 1) for ids in it.combinations_with_replacement(range(n), dg)]
    cache = {}

    def prod(ids):
        if ids in cache:
            return cache[ids]
        if len(ids) == 1:
            r = polys[ids[0]]
        else:
            r = CL._pmul(prod(ids[:-1]), polys[ids[-1]])
        cache[ids] = r
        return r
    cp = [prod(ids) for ids in cols]
    mons = sorted({m for p in cp for m in p} | {0})
    mi = {m: i for i, m in enumerate(mons)}
    K, M = len(cols), len(mons)
    rows, ci, vals = [], [], []
    for kk, p in enumerate(cp):
        for m, cf in p.items():
            rows.append(mi[m]); ci.append(kk); vals.append(cf)
    Pm = sp.csr_matrix((vals, (rows, ci)), shape=(M, K))
    i0 = mi[0]
    nonc_rows = [i for i in range(M) if i != i0]
    nonc = Pm[nonc_rows, :]
    A_ub = sp.vstack([sp.hstack([nonc, -sp.identity(M - 1)]),
                      sp.hstack([Pm[i0, :], sp.csr_matrix(np.ones((1, M - 1)))])]).tocsr()
    b_ub = np.concatenate([np.zeros(M - 1), [-1.0]])
    obj = np.concatenate([np.ones(K), np.zeros(M - 1)])
    t0 = time.time()
    r = linprog(obj, A_ub=A_ub, b_ub=b_ub, bounds=(0, None), method='highs')
    print('LP: atoms %d, columns %d, monomials %d, status %d, %.1fs' % (n, K, M, r.status,
          time.time() - t0), flush=True)
    if r.status != 0:
        return None
    lam = r.x[:K]
    return [(lam[kk], cols[kk]) for kk in np.nonzero(lam > 1e-12)[0]]


def certify(case, deg=3):
    atoms = atoms_of(case)
    sol = lp(atoms, deg)
    if sol is None:
        raise SystemExit('LP infeasible')
    for den in [2 ** 24, 2 ** 32, 2 ** 40]:
        terms = [(Fr(round(w * den), den), list(ids)) for w, ids in sol if round(w * den) > 0]
        W = CL.integer_weights(atoms, terms)
        if CL.check(atoms, W):
            print('certificate: %d terms, rounding 1/%d' % (len(W), den))
            out = ROOT / 'data' / 'nine' / 'eight' / ('%s_terms.txt' % case)
            CL.write_terms(out, W)
            (ROOT / 'data' / 'nine' / 'eight' / ('%s_atoms.lean.in' % case)).write_text(
                CL.lean_list('atoms', atoms) + '\n')
            return W
    raise SystemExit('rounding failed')


if __name__ == '__main__':
    certify(sys.argv[1])
