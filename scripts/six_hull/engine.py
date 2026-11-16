#!/usr/bin/env python3
"""Exact mirror of Heilbronn/Six/HullModel.lean and the certificate/tree search for the exact
six-anchor hull (SIX_BOUNDARY_HULL Theorem 7): three free points strictly inside the anchor
hexagon of family N.

Points 0..5 = A, B, C, D, F, H (hexagon order), 6 = Q (below HC), 7 = P, 8 = R (above HC).
Variables 0 a, 1 h, 2 b, 3 c, 4 d, 5 f, 6 qx, 7 qy, 8 px, 9 py, 10 rx, 11 ry.
"""
import sys
from fractions import Fraction as Fr
from itertools import combinations_with_replacement, product
from pathlib import Path
import numpy as np
from scipy.optimize import linprog
from scipy.sparse import csc_matrix, hstack

ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT / 'scripts'))
from certlib import E, v, k, esarea, to_poly, integer_weights, check, deg  # noqa: E402

N = E.lift
S = Fr(7, 64)
RHO = Fr(102, 125)
NV = 12
FREE = [6, 7, 8]


def bnd(n):
    return S if n == 0 else 3 * S if n == 1 else RHO


def pt(i):
    return {0: (N(0), v(0)), 1: (v(2), N(0)), 2: (v(3), N(0)), 3: (N(1), v(4)),
            4: (v(5), N(1)), 5: (N(0), v(1)), 6: (v(6), v(7)), 7: (v(8), v(9)),
            8: (v(10), v(11))}[i]


EARS = [(5, 0, 1), (0, 1, 2), (1, 2, 3), (2, 3, 4), (3, 4, 5), (4, 5, 0)]


def factors():
    out = []
    for i in range(NV):
        out += [v(i), N(1) - v(i)]
    out += [v(1) - v(0), v(3) - v(2), v(4) - v(0), v(1) - v(4), v(5) - v(2), v(3) - v(5)]
    # W = 1 - (h - d)(c - f) >= 7/8 (QUADRILATERAL_HULL (15))
    out += [N(1) - (v(1) - v(4)) * (v(3) - v(5)) - k(Fr(7, 8))]
    # the six ears are below 13/16 (SIX_BOUNDARY_HULL Theorem 1)
    for (a, b, c) in EARS:
        out += [k(Fr(13, 16)) - esarea(pt(a), pt(b), pt(c))]
    return out


LEX = [(a, b, c) for a in range(9) for b in range(9) for c in range(9) if a < b < c]


def orient(a, b, c, sg):
    if a < b < c: return ((a, b, c), sg)
    if b < c < a: return ((b, c, a), sg)
    if c < a < b: return ((c, a, b), sg)
    if b < a < c: return ((b, a, c), not sg)
    if a < c < b: return ((a, c, b), not sg)
    return ((c, b, a), not sg)


def base():
    out = [(t, True) for t in LEX if t[2] < 6]
    for p in FREE:
        for i in range(6):
            out.append(orient(i, (i + 1) % 6, p, True))
    out.append(orient(5, 2, 6, False))
    out.append(orient(5, 2, 7, True))
    out.append(orient(5, 2, 8, True))
    out.append(orient(0, 2, 6, True))
    out.append(orient(5, 7, 8, True))
    # dedupe keeping first
    seen, res = set(), []
    for f in out:
        if f[0] not in seen:
            seen.add(f[0]); res.append(f)
    return res


BASE = base()


def lookup(tb, t):
    for f in tb:
        if f[0] == t:
            return f[1]
    return None


def oriented(tb, a, b, c):
    if a < b < c: return lookup(tb, (a, b, c))
    if b < c < a: return lookup(tb, (b, c, a))
    if c < a < b: return lookup(tb, (c, a, b))
    def neg(r): return None if r is None else (not r)
    if b < a < c: return neg(lookup(tb, (b, a, c)))
    if a < c < b: return neg(lookup(tb, (a, c, b)))
    if c < b < a: return neg(lookup(tb, (c, b, a)))
    return None


def inside_list(tb, f):
    (a, b, c), sg = f
    return [j for j in FREE if oriented(tb, a, b, j) == sg and oriented(tb, b, c, j) == sg
            and oriented(tb, c, a, j) == sg]


def cost_atom(f, n):
    (a, b, c), sg = f
    ar = esarea(pt(a), pt(b), pt(c))
    return (ar if sg else k(-1) * ar) - k(bnd(n))


def costs(tb):
    out = []
    for t in LEX:
        sg = lookup(tb, t)
        out.append(k(0) if sg is None else cost_atom((t, sg), len(inside_list(tb, (t, sg)))))
    return out


def atoms(fs):
    tb = BASE + fs
    return factors() + costs(tb)


def branch_facts(p, i, val):
    return [orient(i, (i + j) % 6, p, j <= val) for j in range(1, 6)]


def consistent(tb, b):
    return all(lookup(tb, f[0]) in (None, f[1]) for f in b)


def vertex_branches(fs, p, i):
    tb = BASE + fs
    return [branch_facts(p, i, val) for val in range(1, 5) if consistent(tb, branch_facts(p, i, val))]


def pair_sign(tb, i, p, q):
    """The sign of [V_i p q] forced by a separating ray V_i V_{i+j}, or None."""
    for j in range(1, 5):
        sp = oriented(tb, i, (i + j) % 6, p)
        sq = oriented(tb, i, (i + j) % 6, q)
        if sp is not None and sq is not None and sp != sq:
            return sq  # sp false, sq true -> positive
    return None


def pair_branches(fs, i, p, q):
    tb = BASE + fs
    sg = pair_sign(tb, i, p, q)
    cands = [sg] if sg is not None else [False, True]
    return [[orient(i, p, q, s)] for s in cands if consistent(tb, [orient(i, p, q, s)])]


# ---------- words ----------
WORDS = [w for w in product(range(1, 5), repeat=6)
         if all((j <= w[i]) == (6 - j > w[(i + j) % 6]) for i in range(6) for j in range(1, 6))]
assert len(WORDS) == 26


def word_facts(p, w):
    out = []
    for i in range(6):
        out += branch_facts(p, i, w[i])
    return out


def word_ok(p, w):
    return consistent(BASE, word_facts(p, w))


# ---------- float LP ----------
def fpoly(e):
    d, p = to_poly(e)
    return {m: c / d for m, c in p.items()}


def fmul(p, q):
    out = {}
    for m, x in p.items():
        for n, y in q.items():
            out[m + n] = out.get(m + n, 0.0) + x * y
    return out


_PCACHE = {}


def fpoly_c(e):
    key = id(e)
    r = _PCACHE.get(key)
    if r is None:
        r = (e, fpoly(e))
        _PCACHE[key] = r
    return r[1]


def columns(degs, maxdeg, maxsize=3):
    n = len(degs)
    cols = []
    for r in range(1, maxsize + 1):
        for idx in combinations_with_replacement(range(n), r):
            if sum(degs[i] for i in idx) <= maxdeg:
                cols.append(idx)
    return cols


def lp(at, maxdeg=3, skip_zero=True):
    degs = [deg(a) for a in at]
    fps = [fpoly(a) for a in at]
    live = [i for i in range(len(at)) if not (skip_zero and fps[i] == {} )]
    # atoms equal to the constant 0 carry no information
    live = [i for i in live if not (len(fps[i]) == 1 and 0 in fps[i] and abs(fps[i][0]) < 1e-15)]
    sub_degs = [degs[i] for i in live]
    cols0 = columns(sub_degs, maxdeg)
    cols = [tuple(live[j] for j in c) for c in cols0]
    cache = {(): {0: 1.0}}
    polys = []
    for idx in cols:
        pre = idx[:-1]
        q = cache.get(pre)
        if q is None:
            q = {0: 1.0}
            for i in pre:
                q = fmul(q, fps[i])
            cache[pre] = q
        p = fmul(q, fps[idx[-1]])
        if len(idx) < 3:
            cache[idx] = p
        polys.append(p)
    mons = {0: 0}
    for p in polys:
        for m in p:
            if m not in mons:
                mons[m] = len(mons)
    nm, nc = len(mons), len(cols)
    rows, cs, vals = [], [], []
    for j, p in enumerate(polys):
        for m, x in p.items():
            if x != 0.0:
                rows.append(mons[m]); cs.append(j); vals.append(x)
    A = csc_matrix((vals, (rows, cs)), shape=(nm, nc))
    c0 = A[0, :].toarray().ravel()
    Ar = A[1:, :]
    It = csc_matrix((np.ones(nm - 1), (range(nm - 1), range(nm - 1))), shape=(nm - 1, nm - 1))
    A_ub = hstack([Ar, -It]).tocsc()
    cobj = np.concatenate([c0, np.ones(nm - 1)])
    A_eq = hstack([csc_matrix(np.ones((1, nc))), csc_matrix((1, nm - 1))]).tocsc()
    res = linprog(cobj, A_ub=A_ub, b_ub=np.zeros(nm - 1), A_eq=A_eq, b_eq=np.array([1.0]),
                  bounds=(0, None), method='highs')
    if res.status != 0:
        return None, None
    w = res.x[:nc]
    return res.fun, [(w[j], cols[j]) for j in range(nc) if w[j] > 1e-13]


def exact(at, terms, den=10 ** 9):
    wmax = max(w for w, _ in terms)
    for d in (den, den * 1000):
        rat = []
        for w, idx in terms:
            q = Fr(round(w / wmax * d), d)
            if q > 0:
                rat.append((q, list(idx)))
        W = integer_weights(at, rat)
        if check(at, W):
            return W
    return None


def try_cert(at, margin=2e-6):
    val, terms = lp(at)
    if val is not None and val < -margin:
        W = exact(at, terms)
        if W is not None:
            return W, val
    return None, val


# ---------- search ----------
def tri_branches(fs, t):
    """Sign split of the sorted triple t, filtered by consistency."""
    tb = BASE + fs
    return [[(t, sg)] for sg in (False, True) if lookup(tb, t) in (None, sg)]


def undetermined(fs):
    tb = BASE + fs
    out = []
    for (p, q) in [(6, 7), (6, 8), (7, 8)]:
        for i in range(6):
            t = orient(i, p, q, True)[0]
            if lookup(tb, t) is None:
                out.append(('pair', i, p, q))
    if lookup(tb, (6, 7, 8)) is None:
        out.append(('tri', (6, 7, 8)))
    return out


def children(fs, sp):
    if sp[0] == 'pair':
        return [fs + b for b in pair_branches(fs, sp[1], sp[2], sp[3])]
    if sp[0] == 'tri':
        return [fs + b for b in tri_branches(fs, sp[1])]
    if sp[0] == 'vertex':
        return [fs + b for b in vertex_branches(fs, sp[1], sp[2])]
    raise ValueError(sp)


def lpval(fs):
    val, _ = lp(atoms(fs))
    return 1.0 if val is None else val


def solve_cell(fs, depth=4, log=None):
    """('cert', W) | ('node', split, [subtrees]) | None."""
    W, val = try_cert(atoms(fs))
    if W is not None:
        return ('cert', W)
    if depth == 0:
        return None
    cands = undetermined(fs)
    best = None
    for sp in cands:
        ch = children(fs, sp)
        vals = [lpval(c) for c in ch]
        sc = (max(vals) if vals else -1.0, min(vals) if vals else -1.0)
        if best is None or sc < best[0]:
            best = (sc, sp)
    if best is None:
        return None
    if log:
        log('   split', best)
    sp = best[1]
    out = []
    for c in children(fs, sp):
        t = solve_cell(c, depth - 1, log)
        if t is None:
            return None
        out.append(t)
    return ('node', sp, out)


def tree_terms(t):
    if t[0] == 'cert':
        return len(t[1])
    return sum(tree_terms(c) for c in t[2])


def tree_leaves(t):
    if t[0] == 'cert':
        return 1
    return sum(tree_leaves(c) for c in t[2])


def close_pairs(fs):
    """Apply every forced pair split; None if a forced sign contradicts the table."""
    for (p, q) in [(6, 7), (6, 8), (7, 8)]:
        for i in range(6):
            tb = BASE + fs
            t = orient(i, p, q, True)[0]
            if lookup(tb, t) is not None:
                # check forced sign consistency
                sg = pair_sign(tb, i, p, q)
                if sg is not None and not consistent(tb, [orient(i, p, q, sg)]):
                    return None
                continue
            sg = pair_sign(tb, i, p, q)
            if sg is not None:
                fs = fs + [orient(i, p, q, sg)]
    return fs



def try_cert4(at, margin=2e-6):
    val, terms = lp(at, maxdeg=4)
    if val is not None and val < -margin:
        W = exact(at, terms)
        if W is not None:
            return W, val
    return None, val


def solve_cell4(fs, depth=4, log=None):
    """As solve_cell, but a degree-4 certificate is tried before every split."""
    W, val = try_cert(atoms(fs))
    if W is not None:
        return ('cert', W)
    W, val4 = try_cert4(atoms(fs))
    if log:
        log('   deg4', val4)
    if W is not None:
        return ('cert', W)
    if depth == 0:
        return None
    cands = undetermined(fs)
    best = None
    for sp in cands:
        ch = children(fs, sp)
        vals = [lpval(c) for c in ch]
        sc = (max(vals) if vals else -1.0, min(vals) if vals else -1.0)
        if best is None or sc < best[0]:
            best = (sc, sp)
    if best is None:
        return None
    if log:
        log('   split', best)
    sp = best[1]
    out = []
    for c in children(fs, sp):
        t = solve_cell4(c, depth - 1, log)
        if t is None:
            return None
        out.append(t)
    return ('node', sp, out)
