#!/usr/bin/env python3
"""Exact mirror of Heilbronn/Seven/Interior/Model.lean and the certificate/tree search.

Atoms are certlib expressions built exactly as the Lean definitions build them; the LP runs in
floats on their polynomials (certlib keys: base-32 exponent vectors as integers), the weights are
rounded to rationals and re-checked exactly with certlib.check.

Points 0..6 = A, B, C, D, E, F, H (heptagon order), 7 = P, 8 = Q.
Variables 0 a, 1 h, 2 b, 3 c, 4 d, 5 e, 6 f, 7 px, 8 py, 9 qx, 10 qy.
"""
import sys
from fractions import Fraction as Fr
from itertools import combinations, combinations_with_replacement
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


def bnd(n):
    return S if n == 0 else 3 * S if n == 1 else RHO


def pt(i):
    return {0: (N(0), v(0)), 1: (v(2), N(0)), 2: (v(3), N(0)), 3: (N(1), v(4)),
            4: (N(1), v(5)), 5: (v(6), N(1)), 6: (N(0), v(1)), 7: (v(7), v(8)),
            8: (v(9), v(10))}[i]


def factors():
    out = []
    for i in range(11):
        out += [v(i), N(1) - v(i)]
    out += [v(1) - v(0), v(3) - v(2), v(5) - v(4), v(6) - v(2), v(3) - v(6), k(Fr(1, 2)) - v(6)]
    return out


# ---------- words ----------
def all_words():
    from itertools import product
    out = []
    for w in product(range(1, 6), repeat=7):
        if sum(w) != 21:
            continue
        if all((j <= w[i]) == (7 - j > w[(i + j) % 7]) for i in range(7) for j in range(1, 7)):
            out.append(list(w))
    return out


WORDS = all_words()
assert len(WORDS) == 57


def wsign(w, i, j):
    """[V_i V_j X] > 0 for word index w (i != j < 7)."""
    return (j + 7 - i) % 7 <= WORDS[w][i]


LEX = [(a, b, c) for a in range(9) for b in range(9) for c in range(9) if a < b < c]


def anchor_sign(ks, t):
    if t[2] < 7:
        return True
    if t[1] < 7:
        idx = t[2] - 7
        if idx < len(ks):
            return wsign(ks[idx], t[0], t[1])
    return None


def base_signs(ks):
    out = []
    for t in LEX:
        s = anchor_sign(ks, t)
        if s is not None:
            out.append((t, s))
    return out


def free(ks):
    return [7 + i for i in range(len(ks))]


def lookup(tb, t):
    for f in tb:
        if f[0] == t:
            return f[1]
    return None


def oriented(tb, a, b, c):
    if a < b and b < c: return lookup(tb, (a, b, c))
    if b < c and c < a: return lookup(tb, (b, c, a))
    if c < a and a < b: return lookup(tb, (c, a, b))
    def neg(r): return None if r is None else (not r)
    if b < a and a < c: return neg(lookup(tb, (b, a, c)))
    if a < c and c < b: return neg(lookup(tb, (a, c, b)))
    if c < b and b < a: return neg(lookup(tb, (c, b, a)))
    return None


def inside_list(tb, fr, f):
    (a, b, c), sg = f
    return [j for j in fr if oriented(tb, a, b, j) == sg and oriented(tb, b, c, j) == sg
            and oriented(tb, c, a, j) == sg]


def cost_atom(f, n):
    (a, b, c), sg = f
    ar = esarea(pt(a), pt(b), pt(c))
    return (ar if sg else k(-1) * ar) - k(bnd(n))


def atoms(ks, facts):
    """facts: list of ('s', ((a,b,c), sg)) or ('c', Expr). Mirrors Model.atoms."""
    tb = base_signs(ks) + [f for t, f in facts if t == 's']
    fr = free(ks)
    return (factors() + [cost_atom(f, len(inside_list(tb, fr, f))) for f in tb]
            + [e for t, e in facts if t == 'c'])


# ---------- float LP ----------
BASE = 32


def fpoly(e):
    d, p = to_poly(e)
    return {m: c / d for m, c in p.items()}


def fmul(p, q):
    out = {}
    for m, x in p.items():
        for n, y in q.items():
            out[m + n] = out.get(m + n, 0.0) + x * y
    return out


def columns(degs, maxdeg, maxsize=3):
    n = len(degs)
    cols = []
    for r in range(1, maxsize + 1):
        for idx in combinations_with_replacement(range(n), r):
            if sum(degs[i] for i in idx) <= maxdeg:
                cols.append(idx)
    return cols


def lp(at, maxdeg=3, maxsize=None):
    degs = [deg(a) for a in at]
    fps = [fpoly(a) for a in at]
    if maxsize is None:
        maxsize = maxdeg
    cols = columns(degs, maxdeg, maxsize)
    cache = {(): {0: 1.0}}
    polys = []
    for idx in cols:
        p = cache.get(idx)
        if p is None:
            pre = idx[:-1]
            if pre not in cache:
                # build prefix
                q = {0: 1.0}
                for i in pre:
                    q = fmul(q, fps[i])
                cache[pre] = q
            p = fmul(cache[pre], fps[idx[-1]])
            if len(idx) < maxsize:
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
    """Round float weights to rationals; return integer terms passing certlib.check, or None."""
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


def try_cert(at, margin=2e-6, degs=(3,)):
    for md in degs:
        val, terms = lp(at, maxdeg=md)
        if val is not None and val < -margin:
            W = exact(at, terms)
            if W is not None:
                return W, val, md
    return None, None, None


# ---------- tree search ----------
def known_tris(ks, facts):
    return {f[0] for f in base_signs(ks)} | {f[0] for t, f in facts if t == 's'}


def lpval(at, md=3):
    val, _ = lp(at, maxdeg=md)
    return 1.0 if val is None else val


def solve(ks, facts=(), iv=None, depth=4, nvars=None, deg4=True, log=None):
    """Returns a tree: ('cert', W) | ('tri', (a,b,c), [t0, t1]) | ('cut', i, q, [t0, t1]) or None."""
    facts = list(facts)
    if nvars is None:
        nvars = 7 + 2 * len(ks)
    if iv is None:
        iv = {i: (Fr(0), Fr(1)) for i in range(nvars)}
    at = atoms(ks, facts)
    W, val, md = try_cert(at)
    if W is not None:
        return ('cert', W)
    if depth == 0:
        if deg4:
            W, val, md = try_cert(at, degs=(4,))
            if W is not None:
                return ('cert', W)
        return None
    cands = []
    kn = known_tris(ks, facts)
    if len(ks) == 2:
        for i in range(7):
            if (i, 7, 8) not in kn:
                cands.append(('tri', (i, 7, 8)))
    for i in range(nvars):
        lo, hi = iv[i]
        cands.append(('cut', i, (lo + hi) / 2))
    best = None
    for cd in cands:
        ch = children(cd, facts)
        vals = [lpval(atoms(ks, c)) for c in ch]
        sc = max(vals)
        if best is None or sc < best[0]:
            best = (sc, cd)
    if log:
        log(ks, depth, best)
    cd = best[1]
    out = []
    for n, c in enumerate(children(cd, facts)):
        iv2 = dict(iv)
        if cd[0] == 'cut':
            lo, hi = iv[cd[1]]
            iv2[cd[1]] = (lo, cd[2]) if n == 0 else (cd[2], hi)
        t = solve(ks, c, iv2, depth - 1, nvars, deg4, log)
        if t is None:
            return None
        out.append(t)
    if cd[0] == 'tri':
        return ('tri', cd[1], out)
    return ('cut', cd[1], cd[2], out)


def children(cd, facts):
    if cd[0] == 'tri':
        return [facts + [('s', (cd[1], False))], facts + [('s', (cd[1], True))]]
    i, q = cd[1], cd[2]
    return [facts + [('c', k(q) - v(i))], facts + [('c', v(i) - k(q))]]


def tree_terms(t):
    if t[0] == 'cert':
        return len(t[1])
    return sum(tree_terms(c) for c in t[-1])


def tree_leaves(t):
    if t[0] == 'cert':
        return 1
    return sum(tree_leaves(c) for c in t[-1])


# ---------- export ----------
def qlean(q):
    q = Fr(q)
    return '(%d)' % q.numerator if q.denominator == 1 else '(%d / %d)' % (q.numerator, q.denominator)


def export_tree(t, datadir, relprefix, name, counter):
    """Writes the certificate files of the tree; returns the Lean term. counter: [int]."""
    from certlib import write_terms
    if t[0] == 'cert':
        fn = '%s_%03d.txt' % (name, counter[0])
        counter[0] += 1
        write_terms(str(Path(datadir) / fn), t[1])
        return '.cert (term_rows%% "%s/%s")' % (relprefix, fn)
    kids = ', '.join(export_tree(c, datadir, relprefix, name, counter) for c in t[-1])
    if t[0] == 'tri':
        a, b, c = t[1]
        return '.node (.tri %d %d %d) [%s]' % (a, b, c, kids)
    return '.node (.cut %d %s) [%s]' % (t[1], qlean(t[2]), kids)


# ---------- case keys (mirror of Model.badKind, capPair) ----------
def winside(w, t):
    a, b, c = t
    return wsign(w, a, b) and wsign(w, b, c) and wsign(w, c, a)


def bad_kind(w):
    if winside(w, (0, 1, 6)): return 1
    if winside(w, (0, 1, 2)): return 2
    if winside(w, (2, 3, 4)): return 3
    if winside(w, (0, 5, 6)) and winside(w, (2, 5, 6)): return 4
    if winside(w, (4, 5, 6)): return 5
    return 0


CAP_TRIS = [(1, 2, 5), (2, 5, 6), (1, 5, 6), (0, 2, 5), (2, 3, 5), (3, 4, 5)]


def cap_pair(p, q):
    return any(winside(p, t) and winside(q, t) for t in CAP_TRIS)


def case_keys():
    singles = [[w] for w in range(57) if bad_kind(w) == 5]
    pairs = [[p, q] for p in range(57) for q in range(p, 57)
             if bad_kind(p) == 0 and bad_kind(q) == 0 and not cap_pair(p, q)]
    return singles, pairs


def solve2(ks, facts=(), iv=None, depth=6, log=print):
    """Search for the hardest cases: fix the signs of the [V_i P Q] first (choosing the most
    informative triangle), then cut variables; degree 4 is tried before every cut."""
    facts = list(facts)
    nvars = 7 + 2 * len(ks)
    if iv is None:
        iv = {i: (Fr(0), Fr(1)) for i in range(nvars)}
    at = atoms(ks, facts)
    W, val, md = try_cert(at)
    if W is not None:
        return ('cert', W)
    kn = known_tris(ks, facts)
    pq = [(i, 7, 8) for i in range(7) if (i, 7, 8) not in kn] if len(ks) == 2 else []
    if not pq:
        W, val, md = try_cert(at, degs=(4,))
        if W is not None:
            return ('cert', W)
        if depth == 0:
            return None
        cands = [('cut', i, (iv[i][0] + iv[i][1]) / 2) for i in range(nvars)]
    else:
        cands = [('tri', t) for t in pq]
    best = None
    for cd in cands:
        vals = [lpval(atoms(ks, c)) for c in children(cd, facts)]
        sc = (max(vals), min(vals))
        if best is None or sc < best[0]:
            best = (sc, cd)
    cd = best[1]
    log('  ', ks, depth, best, flush=True)
    out = []
    for n, c in enumerate(children(cd, facts)):
        iv2 = dict(iv)
        if cd[0] == 'cut':
            lo, hi = iv[cd[1]]
            iv2[cd[1]] = (lo, cd[2]) if n == 0 else (cd[2], hi)
        t = solve2(ks, c, iv2, depth - (1 if cd[0] == 'cut' else 0), log)
        if t is None:
            return None
        out.append(t)
    if cd[0] == 'tri':
        return ('tri', cd[1], out)
    return ('cut', cd[1], cd[2], out)
