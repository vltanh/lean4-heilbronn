"""Exact fixed cubic completion of all one-lower C1 top-multiplicity rows.

Standard-library verification only; no numerical optimizer is imported.
"""
from fractions import Fraction as F
from functools import lru_cache
from itertools import combinations, product
import json
from pathlib import Path
from check_c1_one_lower_top_cap import const, add, sub, scale, mul, area, cube_upper
S=F(8,73);RHO=F(49,60)
VARIABLES='h c d f xx xy yx yy lx ly px py'.split()
h,c,d,f,xx,xy,yx,yy,lx,ly,px,py=[{(i,):F(1)} for i in range(12)]
Z,O=const(0),const(1)
MODES=('convex_two','side_triangle','three_top')
POINTS={
 'convex_two':[(Z,Z),(c,Z),(O,d),(xx,xy),(yx,yy),(f,O),(Z,h),(lx,ly),(px,py)],
 'side_triangle':[(Z,Z),(c,Z),(xx,xy),(O,d),(yx,yy),(f,O),(Z,h),(lx,ly),(px,py)],
 'three_top':[(Z,Z),(c,Z),(O,d),(xx,xy),(yx,yy),(f,O),(Z,h),(lx,ly),(px,py)]}
COMMON=[sub(h,const(3*S)),sub(c,const(3*S)),sub(O,h),sub(O,c),
 sub(d,const(S)),sub(f,const(S)),sub(h,d),sub(c,f),sub(d,f),
 sub(lx,const(S)),sub(ly,const(S)),sub(sub(c,lx),const(2*S)),sub(sub(h,ly),const(2*S)),
 sub(sub(sub(O,lx),ly),const(S))]
FACTORS={}
FACTORS['convex_two']=COMMON+[
 sub(const(F(33,65)),d),sub(const(F(17,50)),f),
 sub(sub(xx,f),const(F(8,65))),sub(sub(xy,d),const(F(8,65))),sub(O,xx),sub(O,xy),
 sub(sub(yx,f),const(F(8,65))),sub(sub(yy,d),const(F(8,65))),sub(O,yx),sub(O,yy),
 sub(sub(xx,yx),const(F(8,65))),sub(sub(yy,xy),const(F(8,65))),
 sub(px,const(S)),sub(py,const(S)),sub(const(1-S),px),sub(const(1-S),py)]
FACTORS['side_triangle']=COMMON+[
 sub(d,const(4*S)),sub(const(F(41,65)),d),sub(const(F(3,7)),f),
 sub(const(F(6,7)),c),
 sub(sub(xx,c),const(65*S/41)),sub(xy,const(7*S/6)),
 sub(sub(d,xy),const(F(8,49))),sub(O,xx),
 sub(sub(yx,f),const(F(24,41))),sub(sub(yy,d),const(F(24,65))),sub(O,yx),sub(O,yy),
 sub(sub(px,f),const(F(8,41))),sub(sub(py,d),const(F(8,65))),
 sub(const(1-S),px),sub(const(1-S),py)]
FACTORS['three_top']=COMMON+[
 sub(const(F(204,715)),d),sub(const(F(13,64)),f),
 sub(sub(xx,f),const(F(24,65))),sub(sub(xy,d),const(F(24,65))),sub(O,xx),sub(O,xy),
 sub(sub(yx,f),const(F(24,65))),sub(sub(yy,d),const(F(24,65))),sub(O,yx),sub(O,yy),
 sub(sub(xx,yx),const(F(8,65))),sub(sub(yy,xy),const(F(8,65))),
 sub(sub(px,f),const(F(8,65))),sub(sub(py,d),const(F(8,65))),sub(const(1-S),px),sub(const(1-S),py)]
TRIPLES=list(combinations(range(9),3))
AREAS={m:{t:area(*(POINTS[m][i] for i in t)) for t in TRIPLES} for m in MODES}
DELTA=mul(sub(O,d),sub(O,f))
@lru_cache(None)
def words():
 return tuple(r for r in product(range(1,6),repeat=7) if sum(r)==21 and all((j<=r[i])==(7-j>r[(i+j)%7]) for i in range(7) for j in range(1,7)))
def sign(w,i,j):return 1 if (j-i)%7<=w[i] else -1
def inside(w,t):return all(sign(w,t[i],t[(i+1)%3])>0 for i in range(3))
@lru_cache(None)
def lists(mode):
 lower=[w for w in words() if inside(w,(0,1,6))]
 if mode=='convex_two':upper=[w for w in words() if all(sign(w,i,j)>0 for i,j in [(6,1),(1,2),(2,5),(5,6)])]
 elif mode=='side_triangle':upper=[w for w in words() if inside(w,(3,4,5))]
 else:upper=[w for w in words() if inside(w,(2,3,5)) and inside(w,(2,4,5))]
 return lower,upper
CAPONE={mode:[(0,5,6)] for mode in MODES}
@lru_cache(None)
def cases(mode):
 lw,uw=lists(mode)
 return tuple((i,j) for i,l in enumerate(lw) for j,p in enumerate(uw) if not any(inside(l,t) and inside(p,t) for t in CAPONE[mode]))
@lru_cache(None)
def signs(mode,case,branch=-1):
 lw,uw=lists(mode);w=lw[case[0]],uw[case[1]]
 out={}
 for t in TRIPLES:
  if t[2]<7:out[t]=1
  elif t[1]<7:out[t]=sign(w[t[2]-7],t[0],t[1])
 for v in range(7):
  if w[0][v]!=w[1][v]:out[(v,7,8)]=1 if w[0][v]<w[1][v] else -1
 if branch>=0:
  unknown=[t for t in TRIPLES if t not in out]
  assert branch<(1<<len(unknown))
  for bit,t in enumerate(unknown):out[t]=1 if branch&(1<<bit) else -1
 return out

def oriented(sg,t):
 key=tuple(sorted(t))
 if key not in sg:return None
 parity=sum(t[i]>t[j] for i in range(3) for j in range(i+1,3))
 return sg[key]*(-1 if parity%2 else 1)
@lru_cache(None)
def specs(mode,case,branch=-1):
 sg=signs(mode,case,branch);out=[]
 for t,sn in sorted(sg.items()):
  count=sum(all(oriented(sg,(t[i],t[(i+1)%3],v))==sn for i in range(3)) for v in (7,8) if v not in t)
  out.append((t,sn,(S,3*S,RHO)[count]))
 return out
@lru_cache(None)
def costs(mode,case,branch=-1):
 return [sub(scale(AREAS[mode][t],sg),const(bound)) for t,sg,bound in specs(mode,case,branch)]+[sub(DELTA,const({'convex_two':4*S,'side_triangle':3*S,'three_top':F(7,11)}[mode]))]
def residual(cert):
 mode=cert['mode'];fac=FACTORS[mode];qs=costs(mode,tuple(cert['case']),cert['branch']);out={}
 for term in cert['terms']:
  if term[0]=='f':
   _,ids,weight=term;assert 1<=len(ids)<=3 and ids==sorted(ids) and all(type(i)is int and 0<=i<len(fac) for i in ids)
   poly=const(1)
   for i in ids:poly=mul(poly,fac[i])
  else:
   assert term[0]=='q';_,qindex,factor,weight=term
   assert type(qindex)is int and 0<=qindex<len(qs) and type(factor)is int and -1<=factor<len(fac)
   poly=qs[qindex]
   if factor!=-1:poly=mul(poly,fac[factor])
  assert type(weight)is int and weight>0
  out=add(out,scale(poly,F(weight,cert['scale'])))
 return out

SPLIT_CASES = {'convex_two': {(0,20),(1,19),(1,27),(3,9),(3,17)}, 'side_triangle': set(),
               'three_top': {(1,6),(3,6)}}
HULLS = {'convex_two': ['O','C','D','X','Y','F','H','L','P'],
         'side_triangle': ['O','C','X','D','Y','F','H','L','P'],
         'three_top': ['O','C','D','X','Y','F','H','L','P']}


def cells(mode):
    result = []
    for case in cases(mode):
        if case not in SPLIT_CASES[mode]:
            result.append((case,-1))
            continue
        unknown = [t for t in TRIPLES if t not in signs(mode,case)]
        result.extend((case,branch) for branch in range(1 << len(unknown)))
    return result


def applicable(cert, target):
    mode = cert['mode']
    source = specs(mode,tuple(cert['case']),cert['branch'])
    target_costs = {(t,sg):bound for t,sg,bound in specs(mode,*target)}
    used = {term[1] for term in cert['terms'] if term[0] == 'q'}
    for index in used:
        if index == len(source):
            continue
        t,sg,bound = source[index]
        if (t,sg) not in target_costs or target_costs[t,sg] < bound:
            return False
    return True


def verify_identities():
    # Threshold comparisons, and every rational cap-bound simplification.
    assert (160*S+55)**2 < 81*65
    assert RHO/S > 4 and (RHO/S-4)**2 < 12
    assert S/(1-S) == F(8,65)
    assert S/(1-4*S) == F(8,41)
    assert S/(1-3*S) == F(8,49)
    assert 1-4*S/(1-S) == F(33,65)
    assert 4*S > F(33,50)**2
    assert 1-3*S/(1-S) == F(41,65)
    assert 3*S > F(4,7)**2
    assert S/(1-S) > F(6,49)
    assert (F(7,11)/S-3)**2 < 8
    assert 1-F(7,11)/(1-S) == F(204,715)
    assert F(51,64)**2 < F(7,11)
    assert F(17,50) < F(3,7) < RHO and F(13,64) < F(3,7)
    for mode in MODES:
        points = POINTS[mode]
        D,Fp = points[3 if mode == 'side_triangle' else 2],points[5]
        for z in (points[4], points[8]):
            zx,zy = z
            assert area(D,z,Fp) == sub(mul(sub(O,d),sub(zx,f)),
                                          mul(sub(O,f),sub(O,zy)))
            assert area(D,z,Fp) == sub(mul(sub(O,f),sub(zy,d)),
                                          mul(sub(O,d),sub(O,zx)))
    pts = POINTS['convex_two']
    assert area(pts[2],pts[3],pts[4]) == sub(mul(sub(xx,yx),sub(xy,d)),
                                                  mul(sub(O,xx),sub(yy,xy)))
    assert area(pts[5],pts[3],pts[4]) == sub(mul(sub(yy,xy),sub(yx,f)),
                                                  mul(sub(O,yy),sub(xx,yx)))
    pts = POINTS['side_triangle']
    assert area(pts[3],pts[4],pts[8]) == sub(mul(sub(yy,d),sub(O,px)),
                                                  mul(sub(O,yx),sub(py,d)))
    assert area(pts[4],pts[5],pts[8]) == sub(mul(sub(yx,f),sub(O,py)),
                                                  mul(sub(O,yy),sub(px,f)))
    assert len(words()) == 57
    expected = {'convex_two': (5,33,161), 'side_triangle': (5,5,25),
                'three_top': (5,10,50)}
    for mode in MODES:
        assert len(FACTORS[mode]) == 30
        lower,other = lists(mode)
        assert (len(lower),len(other),len(cases(mode))) == expected[mode]
        removed = {(i,j) for i in range(len(lower)) for j in range(len(other))}-set(cases(mode))
        assert removed == ({(4,j) for j in range(29,33)} if mode == 'convex_two' else set())


def verify():
    verify_identities()
    data = json.loads(Path(__file__).with_name('c1_one_lower_top_multiplicity_certificates.json').read_text())
    assert data['version'] == 1 and data['variables'] == VARIABLES and data['hulls'] == HULLS
    all_expected = {(mode,case,branch) for mode in MODES for case,branch in cells(mode)}
    seen = set(); covered = set(); totals = {mode:[0,0] for mode in MODES}; worst = None
    for cert in data['certificates']:
        mode,case,branch = cert['mode'],tuple(cert['case']),cert['branch']
        assert mode in MODES and case in cases(mode)
        # An unsplit source remains valid after that source's cell is split.
        assert branch == -1 or (case,branch) in cells(mode)
        key = (mode,case,branch)
        assert key not in seen
        seen.add(key)
        assert type(cert['scale']) is int and cert['scale'] > 0
        polynomial = residual(cert)
        assert all(len(mon)<=3 for mon in polynomial)
        bound = cube_upper(polynomial)
        assert bound == F(cert['upper_bound']) and bound <= -F(3,4)
        applies = {(mode,cc,bb) for cc,bb in cells(mode) if applicable(cert,(cc,bb))}
        assert applies
        covered |= applies
        totals[mode][0] += 1; totals[mode][1] += len(cert['terms'])
        worst = bound if worst is None else max(worst,bound)
    assert covered == all_expected, all_expected-covered
    assert len(all_expected) == 249 and len(seen) == 201
    assert totals == {'convex_two': [148, 22096], 'side_triangle': [21, 1412], 'three_top': [32, 4379]}
    assert worst == F(-862811889733003,875182437376000)
    for mode in MODES:
        print(f'PASS: {mode}, {len(cases(mode))} radial pairs, {len(cells(mode))} cells, '
              f'{totals[mode][0]} certificates, {totals[mode][1]} positive terms')
    print(f'PASS: all {len(all_expected)} cells; exact largest upper bound {worst}')


if __name__ == '__main__':
    verify()
