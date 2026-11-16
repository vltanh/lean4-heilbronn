"""Generic LP certificate search + rational rounding (monomial bound on [0,1]^n)."""
import itertools as it, time, math
from fractions import Fraction as Fr
import numpy as np, scipy.sparse as sp
from scipy.optimize import linprog
from polylib import const, add, scale, sub, mul, cube_upper


def columns(nf, nq, deg=3, fac_ids=None, cost_ids=None, qf=True):
    fac_ids = list(range(nf)) if fac_ids is None else list(fac_ids)
    cost_ids = list(range(nq)) if cost_ids is None else list(cost_ids)
    cols = []
    for dg in range(1, deg + 1):
        for ids in it.combinations_with_replacement(fac_ids, dg):
            cols.append(('f', tuple(ids)))
    for qi in cost_ids:
        cols.append(('q', qi, -1))
        if qf and deg >= 3:
            for fi in fac_ids:
                cols.append(('q', qi, fi))
    return cols


def colpoly(col, fpolys, qpolys, cache):
    if col in cache:
        return cache[col]
    if col[0] == 'f':
        p = {(): type(next(iter(fpolys[0].values())))(1)}
        for i in col[1]:
            p = mul(p, fpolys[i])
    else:
        _, qi, fi = col
        p = qpolys[qi] if fi == -1 else mul(qpolys[qi], fpolys[fi])
    cache[col] = p
    return p


def lp_search(cols, fpolys, qpolys, qpenalty=1.0, target=-1.0, verbose=True, normalize=False):
    cache = {}
    polys = [colpoly(c, fpolys, qpolys, cache) for c in cols]
    mons = sorted({m for p in polys for m in p} | {()}, key=lambda m: (len(m), m))
    mi = {m: i for i, m in enumerate(mons)}
    K, M = len(cols), len(mons)
    rows, cidx, vals = [], [], []
    for k, p in enumerate(polys):
        for m, c in p.items():
            rows.append(mi[m]); cidx.append(k); vals.append(float(c))
    Pm = sp.csr_matrix((vals, (rows, cidx)), shape=(M, K))
    nonc = Pm[1:, :]
    A_ub = sp.vstack([sp.hstack([nonc, -sp.identity(M - 1)]),
                      sp.hstack([Pm[0, :], sp.csr_matrix(np.ones((1, M - 1)))])]).tocsr()
    b_ub = np.concatenate([np.zeros(M - 1), [target]])
    w = np.array([qpenalty if c[0] == 'q' else 1.0 for c in cols])
    obj = np.concatenate([w, np.zeros(M - 1)])
    t0 = time.time()
    r = linprog(obj, A_ub=A_ub, b_ub=b_ub, bounds=(0, None), method='highs')
    if verbose:
        print('  LP K=%d M=%d status=%d obj=%s %.1fs' % (K, M, r.status, r.fun, time.time() - t0), flush=True)
    if r.status != 0:
        return None
    return r.x[:K]


def round_cert(cols, lam, fpolys_exact, qpolys_exact, scale_den=4096, thresh=1e-9):
    """Round to integer weights over scale_den; return (terms, exact bound)."""
    cache = {}
    terms = []
    for k in np.nonzero(lam > thresh)[0]:
        wgt = int(round(lam[k] * scale_den))
        if wgt > 0:
            terms.append((cols[k], wgt))
    out = {}
    for col, wgt in terms:
        p = colpoly(col, fpolys_exact, qpolys_exact, cache)
        for m, c in p.items():
            out[m] = out.get(m, 0) + c * Fr(wgt, scale_den)
    out = {m: c for m, c in out.items() if c != 0}
    return terms, cube_upper(out), out
