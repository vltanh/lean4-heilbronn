"""Find nonnegative product decompositions of the 56 octagon orientations (exterior case)."""
import sympy as sp
import itertools
from scipy.optimize import linprog
import numpy as np

a, h, b, c, d, e, f, g, k = sp.symbols('a h b c d e f g k')
V = [(0, a), (b, 0), (c, 0), (1, d), (1, e), (g, k), (f, 1), (0, h)]
names = ['A', 'B', 'C', 'D', 'E', 'X', 'F', 'H']
def sarea(p, q, r):
    return sp.expand((q[0]-p[0])*(r[1]-p[1]) - (q[1]-p[1])*(r[0]-p[0]))
atoms = {'a': a, 'h-a': h-a, '1-h': 1-h, 'b': b, 'c-b': c-b, '1-c': 1-c, 'd': d, 'e-d': e-d,
         '1-e': 1-e, 'f-b': f-b, 'c-f': c-f, 'g-f': g-f, '1-g': 1-g, 'k-e': k-e, 'k-h': k-h,
         '1-k': 1-k, '1/2-f': sp.Rational(1, 2)-f}
FEX = sarea((f, 1), (1, e), (g, k))
keys = list(atoms)
cands = [('1', sp.Integer(1))] + [(kk, atoms[kk]) for kk in keys] + [('FEX', FEX)]
for i in range(len(keys)):
    for j in range(i, len(keys)):
        cands.append((keys[i] + '*' + keys[j], sp.expand(atoms[keys[i]] * atoms[keys[j]])))
gens = [a, h, b, c, d, e, f, g, k]
out = {}
for (i, j, l) in itertools.combinations(range(8), 3):
    target = sarea(V[i], V[j], V[l])
    polys = [sp.Poly(cnd[1], *gens) for cnd in cands]
    tp = sp.Poly(target, *gens)
    monos = set(tp.monoms())
    for p in polys:
        monos |= set(p.monoms())
    monos = sorted(monos)
    A = np.array([[float(p.coeff_monomial(m)) for p in polys] for m in monos])
    bvec = np.array([float(tp.coeff_monomial(m)) for m in monos])
    # require positive part: weight on non-constant to get strict positivity; minimize sum
    res = linprog(np.ones(len(cands)), A_eq=A, b_eq=bvec, bounds=[(0, None)] * len(cands), method='highs')
    if res.status != 0:
        out[(i, j, l)] = None
        print(names[i] + names[j] + names[l], 'FAIL', target)
    else:
        used = [cands[t][0] for t in range(len(cands)) if res.x[t] > 1e-9]
        out[(i, j, l)] = used
        print(names[i] + names[j] + names[l], used)

# Lean generation
fact = {'a': ('pa', True), 'h-a': ('phA', True), '1-h': ('ph1', True), 'b': ('pb', True),
        'c-b': ('pcb', True), '1-c': ('pc1', True), 'd': ('pd', True), 'e-d': ('ped', True),
        '1-e': ('pe1', True), 'f-b': ('pfb', False), 'c-f': ('pcf', False), 'g-f': ('pgf', True),
        '1-g': ('pg1', True), 'k-e': ('pke', True), 'k-h': ('pkh', True), '1-k': ('pk1', False),
        '1/2-f': ('pf2', False), 'FEX': ('pFEX', True)}
def le(nm):
    n, strict = fact[nm]
    return n + '.le' if strict else n
lines = []
for (i, j, l), used in out.items():
    hints = []
    for u_ in used:
        if u_ == '1':
            continue
        if '*' in u_:
            x, y = u_.split('*')
            if fact[x][1] and fact[y][1]:
                hints.append('mul_pos %s %s' % (fact[x][0], fact[y][0]))
            else:
                hints.append('mul_nonneg %s %s' % (le(x), le(y)))
        else:
            hints.append(le(u_))
    nm = 't' + names[i] + names[j] + names[l]
    lines.append((i, j, l, nm, hints))
P = ['(0, a)', '(b, 0)', '(c, 0)', '(1, d)', '(1, e)', '(g, k)', '(f, 1)', '(0, h)']
import sys
outpath = sys.argv[1] if len(sys.argv) > 1 else 'convex.lean'
with open(outpath, 'w') as fh:
    for i, j, l, nm, hints in lines:
        fh.write('theorem cvx_%s%s%s (H : ConvHyp a h b c d e f g k) : 0 < sarea %s %s %s := by\n'
                 '  obtain ⟨pa, phA, ph1, pb, pcb, pc1, pd, ped, pe1, pfb, pcf, pgf, pg1, pke, pkh, pk1, pf2,\n'
                 '    pFEX⟩ := H\n'
                 '  simp only [sarea]; nlinarith [%s]\n\n' % (names[i], names[j], names[l], P[i], P[j], P[l], ', '.join(hints)))
    fh.write('theorem exterior_convex (H : ConvHyp a h b c d e f g k) :\n    IsConvexPolygon (exteriorOctagon a h b c d e f (g, k)) := by\n'
             '  intro i j l hij hjl\n  fin_cases i <;> fin_cases j <;> fin_cases l <;> simp at hij hjl <;>\n    first\n')
    for i, j, l, nm, hints in lines:
        fh.write('    | exact cvx_%s%s%s H\n' % (names[i], names[j], names[l]))
