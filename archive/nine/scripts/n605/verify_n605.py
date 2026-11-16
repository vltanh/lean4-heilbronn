"""Independent exact verifier for the N6-05 certificates (Fraction arithmetic only).

Setting (coordinates of SIX_BOUNDARY_TWO_SIDE_UPPER):
    zeta = (a,h,b,c,d,f,x,y,z,w,r,t) in [0,1]^12,
    A=(0,a) H=(0,h) B=(b,0) C=(c,0) D=(1,d) F=(f,1),
    0<a<h<1, 0<b<c<1, a<=d<=h, b<=f<=c,
    X=(x,y) in the right cap conv{C,D,(1,0)}  (c<=x<=1, 0<=y<=d, [CXD]>=0),
    Y=(z,w) in the left  cap conv{F,H,(0,1)}  (0<=z<=f, h<=w<=1, [FYH]>=0),
    Q=(r,t) in the top   cap conv{D,F,(1,1)}  (f<=r<=1, d<=t<=1, [DQF]>=0),
    every one of the nine points' triangles has unsigned doubled area >= s = 7/64.
Conclusion: impossible, i.e. min ordinary area < 7/128 < A0.

This file shares no code with the discovery scripts.  It rebuilds every factor, every
cost and every product from the coordinates, checks the sign derivations as exact
polynomial identities, expands every certificate and checks the monomial bound.
"""
from fractions import Fraction as Fr
from itertools import combinations, product
import json, sys
from pathlib import Path

VARS = 'a h b c d f x y z w r t'.split()
S = Fr(7, 64)

# ---------- polynomials: dict  exponent-tuple(12) -> Fraction ----------
Z12 = (0,) * 12
def P(c): return {Z12: Fr(c)} if c else {}
def V(name):
    e = [0] * 12; e[VARS.index(name)] = 1
    return {tuple(e): Fr(1)}
def padd(*ps):
    o = {}
    for p in ps:
        for m, c in p.items(): o[m] = o.get(m, 0) + c
    return {m: c for m, c in o.items() if c}
def pneg(p): return {m: -c for m, c in p.items()}
def psub(p, q): return padd(p, pneg(q))
def pscale(p, k): return {m: c * k for m, c in p.items() if c * k}
def pmul(p, q):
    o = {}
    for m, c in p.items():
        for n, e in q.items():
            k = tuple(i + j for i, j in zip(m, n)); o[k] = o.get(k, 0) + c * e
    return {m: c for m, c in o.items() if c}
def deg(p): return max((sum(m) for m in p), default=0)
def monomial_bound(p):
    return p.get(Z12, Fr(0)) + sum((c for m, c in p.items() if m != Z12 and c > 0), Fr(0))

a, h, b, c, d, f, x, y, z, w, r, t = (V(n) for n in VARS)
ONE, ZERO = P(1), {}
PT = {'A': (ZERO, a), 'B': (b, ZERO), 'C': (c, ZERO), 'D': (ONE, d), 'F': (f, ONE), 'H': (ZERO, h),
      'X': (x, y), 'Y': (z, w), 'Q': (r, t)}
def det3(p, q, s_):
    (px, py), (qx, qy), (sx, sy) = PT[p], PT[q], PT[s_]
    return psub(pmul(psub(qx, px), psub(sy, py)), pmul(psub(qy, py), psub(sx, px)))

# cyclic counterclockwise order of the convex nonagon
CYCLE = ['A', 'B', 'C', 'X', 'D', 'Q', 'F', 'Y', 'H']
def cyclic_sign(label):
    """+1 if the three named points occur counterclockwise along CYCLE in the given order."""
    i, j, k = (CYCLE.index(ch) for ch in label)
    # counterclockwise iff (i,j,k) is a cyclic rotation of an increasing triple
    return 1 if (i < j < k) or (j < k < i) or (k < i < j) else -1

def cost(label):
    return psub(pscale(det3(*label), cyclic_sign(label)), P(S))

# ---------- affine factors, rebuilt from explicit specifications ----------
def L(**kw):
    out = P(kw.pop('k', 0))
    for n, v in kw.items(): out = padd(out, pscale(V(n), Fr(v)))
    return out
half, s7_50 = Fr(1, 2), Fr(7, 50)
FACTORS = {
    # normalization / cap membership (primitive)
    'a': L(a=1), 'b': L(b=1), '1-h': L(k=1, h=-1), '1-c': L(k=1, c=-1),
    'd-a': L(d=1, a=-1), 'h-d': L(h=1, d=-1), 'f-b': L(f=1, b=-1), 'c-f': L(c=1, f=-1),
    'd-f': L(d=1, f=-1),
    '1-x': L(k=1, x=-1), '1-w': L(k=1, w=-1),
    'r-f': L(r=1, f=-1), '1-r': L(k=1, r=-1), 't-d': L(t=1, d=-1), '1-t': L(k=1, t=-1),
    # one-cost consequences (identities checked below)
    'h-a-s': L(h=1, a=-1, k=-S), 'c-b-s': L(c=1, b=-1, k=-S),
    'x-c-s': L(x=1, c=-1, k=-S), 'w-h-s': L(w=1, h=-1, k=-S),
    'd-y-s': L(d=1, y=-1, k=-S), 'f-z-s': L(f=1, z=-1, k=-S),
    'y-s': L(y=1, k=-S), 'z-s': L(z=1, k=-S),
    # SIX_BOUNDARY_TWO_SIDE_UPPER Section 1 consequences (variant A only)
    'a-7/50': L(a=1, k=-s7_50), 'b-7/50': L(b=1, k=-s7_50),
    'h-1/2': L(h=1, k=-half), 'c-1/2': L(c=1, k=-half),
    '1-s-h': L(k=1 - S, h=-1), '1-s-c': L(k=1 - S, c=-1),
    'd-1/2': L(d=1, k=-half), 'f-1/2': L(f=1, k=-half),
    # scalar cuts (variant B)
    '1/2-h': L(k=half, h=-1), '1/2-c': L(k=half, c=-1),
}
USED = ['ABC', 'ABH', 'AYH', 'BCX', 'CXD', 'XDQ', 'DFQ', 'FYH', 'FYQ']

def check_signs_and_derivations():
    F_ = FACTORS
    # (i) sign of each used cost from the hypotheses, as an exact identity sigma*det = (nonneg expr)
    sd = lambda lab: pscale(det3(*lab), cyclic_sign(lab))
    ident = {
        'ABC': pmul(a, psub(c, b)), 'ABH': pmul(b, psub(h, a)), 'AYH': pmul(psub(h, a), z),
        'BCX': pmul(psub(c, b), y),
        'CXD': psub(pmul(d, psub(x, c)), pmul(psub(ONE, c), y)),          # X beyond CD (cap hypothesis)
        'FYH': psub(pmul(psub(ONE, h), psub(f, z)), pmul(f, psub(ONE, w))),  # Y beyond FH (cap hypothesis)
        'DFQ': psub(pmul(psub(ONE, f), psub(t, d)), pmul(psub(ONE, d), psub(ONE, r))),  # Q beyond DF
        'XDQ': padd(pmul(psub(ONE, x), psub(t, d)), pmul(psub(d, y), psub(ONE, r))),
        'FYQ': padd(pmul(psub(r, f), psub(ONE, w)), pmul(psub(ONE, t), psub(f, z))),
    }
    for lab in USED:
        assert sd(lab) == ident[lab], lab
    assert cyclic_sign('DFQ') == -1 and all(cyclic_sign(l) == 1 for l in USED if l != 'DFQ')
    # the cap-hypothesis forms are the actual determinants of the anchor edge with the cap point
    assert det3('C', 'X', 'D') == ident['CXD'] and det3('F', 'Y', 'H') == ident['FYH']
    assert det3('D', 'Q', 'F') == ident['DFQ']
    # (ii) one-cost consequences:  factor = (cost) + (sum of products of primitive nonnegatives)
    q = {lab: cost(lab) for lab in USED}
    der = {
        'h-a-s': padd(q['ABH'], pmul(psub(ONE, b), psub(h, a))),
        'c-b-s': padd(q['ABC'], pmul(psub(ONE, a), psub(c, b))),
        'y-s': padd(q['BCX'], pmul(padd(psub(ONE, c), b), y)),
        'z-s': padd(q['AYH'], pmul(padd(psub(ONE, h), a), z)),
        'x-c-s': padd(q['CXD'], pmul(psub(ONE, d), psub(x, c)), pmul(psub(ONE, c), y)),
        'd-y-s': padd(q['CXD'], pmul(d, psub(ONE, x)), pmul(c, psub(d, y))),
        'w-h-s': padd(q['FYH'], pmul(psub(ONE, h), z), pmul(psub(ONE, f), psub(w, h))),
        'f-z-s': padd(q['FYH'], pmul(f, psub(ONE, w)), pmul(h, psub(f, z))),
    }
    for n, e in der.items():
        assert F_[n] == e, n
    # (iii) scalar facts behind the variant-A factors (SIX_BOUNDARY_TWO_SIDE_UPPER (7),(8))
    assert S / (1 - 2 * S) == s7_50 and 4 * S / (1 - s7_50) > half
    print('PASS: sign identities for the 9 used costs; 8 one-cost factor identities')

def expand(cell, factor_names, cost_names, scale_den):
    fp = {n: FACTORS[n] for n in factor_names + cell['cuts']}
    qp = {n: cost(n) for n in cost_names}
    total = {}
    for term in cell['terms']:
        if term[0] == 'f':
            _, ids, wgt = term
            assert 1 <= len(ids) <= 3
            p = P(1)
            for n in ids:
                assert n in fp, n
                p = pmul(p, fp[n])
        else:
            assert term[0] == 'q'
            _, qn, fn, wgt = term
            assert qn in qp, qn
            p = qp[qn] if fn is None else pmul(qp[qn], fp[fn])
        assert type(wgt) is int and wgt > 0
        total = padd(total, pscale(p, Fr(wgt, scale_den)))
    return total

def cover_ok(cells):
    """Every (h,c) in [0,1]^2 satisfies all cuts of some cell (cuts are closed half-lines)."""
    tests = {'1/2-h': lambda H, C: H <= half, 'h-1/2': lambda H, C: H >= half,
             '1/2-c': lambda H, C: C <= half, 'c-1/2': lambda H, C: C >= half}
    pts = [Fr(0), Fr(1, 4), half, Fr(3, 4), Fr(1)]   # one representative per sign pattern + boundaries
    return all(any(all(tests[k](H, C) for k in cell['cuts']) for cell in cells) for H in pts for C in pts)

def verify(path):
    data = json.loads(Path(path).read_text())
    assert data['variables'] == VARS and Fr(data['s']) == S
    assert data['costs'] == USED
    names = data['factors']
    assert len(set(names)) == len(names) and all(n in FACTORS for n in names)
    if data['variant'] == 'A':
        assert 'd-f' not in names            # no transposition normalization used
        assert len(data['cells']) == 1 and data['cells'][0]['cuts'] == []
    else:
        assert not any(n in names for n in ('a-7/50', 'b-7/50', 'h-1/2', 'c-1/2', '1-s-h', '1-s-c',
                                             'd-1/2', 'f-1/2', 'd-f'))
        assert cover_ok(data['cells'])
    worst, nterms = None, 0
    for cell in data['cells']:
        R = expand(cell, names, data['costs'], data['scale'])
        assert deg(R) <= 3
        ub = monomial_bound(R)
        assert ub == Fr(cell['upper_bound']) and ub < -Fr(3, 4), (ub, cell['cuts'])
        worst = ub if worst is None else max(worst, ub)
        nterms += len(cell['terms'])
        print('  cell', cell['cuts'] or '(whole case)', 'terms', len(cell['terms']),
              'monomial bound', ub, '~ %.6f' % float(ub))
    print('PASS variant %s: %d cell(s), %d positive terms, worst exact bound %s'
          % (data['variant'], len(data['cells']), nterms, worst))

def sanity_numeric():
    """At the numerical maximizer the predicted signs hold for all 84 triangles."""
    v = dict(zip(VARS, [0.17647872, 0.63733624, 0.17647872, 0.63733624, 0.54796239, 0.54796239,
                        0.90256244, 0.17647872, 0.17647872, 0.90256244, 0.86394223, 0.86394223]))
    def ev(p):
        tot = 0.0
        for m, co in p.items():
            term = float(co)
            for i, e in enumerate(m): term *= v[VARS[i]] ** e
            tot += term
        return tot
    mins = min(ev(pscale(det3(*lab), cyclic_sign(lab))) for lab in
               (''.join(tr) for tr in combinations(CYCLE, 3)))
    assert mins > 0.08
    print('sanity: at the numerical maximizer every predicted-sign doubled area >= %.6f' % mins)

def verify_lean_export(path, tag):
    """Re-check the integer Lean data: each atom row is a positive multiple of the rebuilt atom,
    weights are positive integers, and the integer expansion has negative monomial bound."""
    data = json.loads(Path(path).read_text())
    lean = Path(path).parent / 'lean'
    for ci, cell in enumerate(data['cells']):
        tg = f'{tag}_cell{ci}'
        if not (lean / f'{tg}_atoms.txt').exists():
            print('  (no Lean export for', tg, ')'); return
        expected = [FACTORS[n] for n in data['factors'] + cell['cuts']] + [cost(q) for q in data['costs']]
        atoms = []
        for line, ex in zip((lean / f'{tg}_atoms.txt').read_text().split('\n'), expected):
            nums = list(map(int, line.split())); assert len(nums) % 13 == 0
            p = {tuple(nums[i:i + 12]): Fr(nums[i + 12]) for i in range(0, len(nums), 13)}
            k = next(iter(p.values())) / ex[next(iter(p))]
            assert k > 0 and pscale(ex, k) == p     # positive multiple of the rebuilt atom
            atoms.append(p)
        assert len(atoms) == len(expected)
        total = {}
        lines = [l for l in (lean / f'{tg}_terms.txt').read_text().split('\n') if l.strip()]
        for line in lines:
            nums = list(map(int, line.split())); wgt, ids = nums[0], nums[1:]
            assert wgt > 0 and 1 <= len(ids) <= 3
            q = P(1)
            for i in ids: q = pmul(q, atoms[i])
            assert deg(q) <= 3
            total = padd(total, pscale(q, wgt))
        ub = monomial_bound(total)
        assert ub < 0 and all(v.denominator == 1 for v in total.values())
        print('  Lean data %s: %d atoms, %d terms, integer monomial bound %d (< 0)' % (tg, len(atoms), len(lines), ub))

if __name__ == '__main__':
    check_signs_and_derivations()
    sanity_numeric()
    here = Path(__file__).parent
    for fn, tag in [('n605_single_certificate.json', 'A'), ('n605_three_cell_certificates.json', 'B')]:
        verify(here / fn)
        verify_lean_export(here / fn, tag)
