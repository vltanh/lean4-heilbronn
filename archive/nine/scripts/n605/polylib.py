"""Tiny sparse polynomial library (dict monomial-tuple -> coefficient)."""
from fractions import Fraction as Fr
import itertools as it

VARS = 'a h b c d f x1 y1 x2 y2 x3 y3'.split()
NV = len(VARS)

def const(c):
    return {(): c} if c else {}

def var(i, one=1):
    return {(i,): one}

def add(*ps):
    out = {}
    for p in ps:
        for m, c in p.items():
            out[m] = out.get(m, 0) + c
    return {m: c for m, c in out.items() if c != 0}

def scale(p, c):
    return {m: v * c for m, v in p.items() if v * c != 0}

def sub(p, q):
    return add(p, scale(q, -1))

def mul(p, q):
    out = {}
    for m, c in p.items():
        for k, d in q.items():
            key = tuple(sorted(m + k))
            out[key] = out.get(key, 0) + c * d
    return {m: c for m, c in out.items() if c != 0}

def det(P, Q, R):
    return sub(mul(sub(Q[0], P[0]), sub(R[1], P[1])),
               mul(sub(Q[1], P[1]), sub(R[0], P[0])))

def evalp(p, z):
    tot = 0
    for m, c in p.items():
        t = c
        for i in m:
            t = t * z[i]
        tot += t
    return tot

def cube_upper(p):
    return p.get((), 0) + sum(c for m, c in p.items() if m and c > 0)


def setup(exact=False, s=None):
    """Return (points, factor dict name->poly, costs list[(triple, poly)])."""
    one = Fr(1) if exact else 1.0
    if s is None:
        s = Fr(7, 64) if exact else 7 / 64
    V = [var(i, one) for i in range(NV)]
    a, h, b, c, d, f, x1, y1, x2, y2, x3, y3 = V
    ZERO, ONE = {}, const(one)
    # cyclic CCW order A,B,C,Z,D,Y,F,X,H
    P = {'A': (ZERO, a), 'B': (b, ZERO), 'C': (c, ZERO), 'Z': (x3, y3), 'D': (ONE, d),
         'Y': (x2, y2), 'F': (f, ONE), 'X': (x1, y1), 'H': (ZERO, h)}
    order = ['A', 'B', 'C', 'Z', 'D', 'Y', 'F', 'X', 'H']
    costs = []
    for i, j, k in it.combinations(range(9), 3):
        nm = order[i] + order[j] + order[k]
        costs.append((nm, sub(det(P[order[i]], P[order[j]], P[order[k]]), const(s))))
    fac = {}
    for i, nm in enumerate(VARS):
        fac[nm] = V[i]
        fac['1-' + nm] = sub(ONE, V[i])
    fac['h-a'] = sub(h, a)
    fac['c-b'] = sub(c, b)
    fac['d-a'] = sub(d, a)
    fac['h-d'] = sub(h, d)
    fac['f-b'] = sub(f, b)
    fac['c-f'] = sub(c, f)
    fac['d-f'] = sub(d, f)
    return P, order, fac, costs
