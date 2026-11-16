"""Find `linarith` hints for polynomial sign goals by linear programming.

`hints(target, basics, deg=2)`: basics = [(name, sympy expr)] known >= 0; finds lambda >= 0 with
target - sum lambda_k m_k = c >= 0 (a constant), the m_k being basics and products of two basics
of total degree <= deg.  Returns the list of Lean hint terms (`H.n` or `mul_nonneg H.n1 H.n2`) of
the products with positive weight, or None.
"""
import sympy as sp
import numpy as np
from scipy.optimize import linprog


def _poly_dict(e, gens):
    p = sp.Poly(sp.expand(e), *gens)
    return {m: sp.Rational(c) for m, c in p.terms()}


def hints(target, basics, gens, deg=2, prefix='H.', strict_const=False):
    cands = []
    for i, (n, e) in enumerate(basics):
        cands.append(([n], e))
    for i in range(len(basics)):
        for j in range(i, len(basics)):
            e = basics[i][1] * basics[j][1]
            if sp.Poly(sp.expand(e), *gens).total_degree() <= deg:
                cands.append(([basics[i][0], basics[j][0]], e))
    tp = _poly_dict(target, gens)
    cps = [_poly_dict(e, gens) for _, e in cands]
    zero = tuple([0] * len(gens))
    monos = set(tp)
    for c in cps:
        monos |= set(c)
    monos.discard(zero)
    monos = sorted(monos)
    A = np.array([[float(c.get(m, 0)) for c in cps] for m in monos]) if monos else np.zeros((0, len(cps)))
    b = np.array([float(tp.get(m, 0)) for m in monos])
    # constant: tp0 - sum l_k c_k0 >= 0  ->  sum l_k c_k0 <= tp0
    A_ub = np.array([[float(c.get(zero, 0)) for c in cps]])
    b_ub = np.array([float(tp.get(zero, 0))])
    res = linprog(np.ones(len(cps)), A_ub=A_ub, b_ub=b_ub, A_eq=A, b_eq=b, bounds=(0, None),
                  method='highs')
    if res.status != 0:
        return None
    out = []
    for (names, _), x in zip(cands, res.x):
        if x > 1e-9:
            if len(names) == 1:
                out.append(prefix + names[0])
            else:
                out.append('mul_nonneg %s%s %s%s' % (prefix, names[0], prefix, names[1]))
    return out
