"""Exact certificates for the two remaining one-lower C1 top hulls."""
from fractions import Fraction as F
from functools import lru_cache
from itertools import combinations, product
import json
from pathlib import Path
from check_c1_one_lower_top_cap import const, add, sub, scale, mul, area, cube_upper

S,RHO = F(8,73),F(49,60)
VARIABLES = 'h c d f x_x x_y y_x y_y l_x l_y q_x q_y'.split()
h,c,d,f,xx,xy,yx,yy,lx,ly,qx,qy = [{(i,):F(1)} for i in range(12)]
ZERO,ONE = const(0),const(1)
VERTICES = ['O','C','D','X','Y','F','H','L','Q']
POINTS = [(ZERO,ZERO),(c,ZERO),(ONE,d),(xx,xy),(yx,yy),(f,ONE),(ZERO,h),(lx,ly),(qx,qy)]
TRIPLES = list(combinations(range(9),3))
AREAS = {t:area(*(POINTS[i] for i in t)) for t in TRIPLES}

@lru_cache(maxsize=1)
def words():
    return tuple(w for w in product(range(1,6),repeat=7)
                 if all((j<=w[i])==(7-j>w[(i+j)%7]) for i in range(7) for j in range(1,7)))

def sign(w,i,j):
    return 1 if (j-i)%7<=w[i] else -1

def inside(w,t):
    return all(sign(w,t[k],t[(k+1)%3])>0 for k in range(3))

LOWER = tuple(w for w in words() if inside(w,(0,1,6)))
OTHER = {
    'upper':tuple(w for w in words() if all(sign(w,i,j)>0 for i,j in [(6,1),(1,2),(2,5),(5,6)])),
    'cap':tuple(w for w in words() if inside(w,(2,3,5)) and inside(w,(2,4,5)) and sign(w,2,5)<0),
}
SPLITS = {
    ('upper',(0,20)):(4,5), ('upper',(1,19)):(4,5), ('upper',(1,27)):(5,),
    ('upper',(3,9)):(2,), ('upper',(3,17)):(2,3),
    ('cap',(1,6)):(4,), ('cap',(3,6)):(3,),
}

@lru_cache(maxsize=2)
def cases(mode):
    return tuple((i,j) for i,L in enumerate(LOWER) for j,Q in enumerate(OTHER[mode])
                 if not any(inside(L,t) and inside(Q,t) for t in [(0,5,6),(0,1,2),(2,5,6)]))

@lru_cache(maxsize=2)
def cells(mode):
    return tuple((case,b) for case in cases(mode)
                 for b in range(2**len(SPLITS.get((mode,case),()))))

@lru_cache(maxsize=2)
def factors(mode):
    assert mode in OTHER
    out = [sub(h,const(3*S)),sub(c,const(3*S)),sub(ONE,h),sub(ONE,c),sub(d,const(S)),
           sub(const(F(33,65) if mode=='upper' else F(204,715)),d),sub(f,const(S)),
           sub(const(F(17,50) if mode=='upper' else F(13,64)),f),sub(h,d),sub(c,f),sub(d,f)]
    for x,y in [(xx,xy),(yx,yy)]:
        out += [sub(sub(x,f),const(F(8,65))),sub(sub(y,d),const(F(8,65))),sub(ONE,x),sub(ONE,y)]
    out += [sub(sub(xx,yx),const(S)),sub(sub(yy,xy),const(S)),sub(lx,const(S)),sub(ly,const(S)),
            sub(sub(c,lx),const(2*S)),sub(sub(h,ly),const(2*S)),sub(sub(sub(ONE,lx),ly),const(S))]
    if mode=='upper':
        out += [sub(qx,const(S)),sub(qy,const(S)),sub(const(1-S),qx),sub(const(1-S),qy)]
    else:
        out += [sub(sub(qx,f),const(F(8,65))),sub(sub(qy,d),const(F(8,65))),sub(const(1-S),qx),sub(const(1-S),qy)]
    assert len(out)==30
    return out

def oriented(signs,t):
    value = signs.get(tuple(sorted(t)))
    if value is None:
        return None
    return value*(-1)**sum(t[i]>t[j] for i in range(3) for j in range(i+1,3))

def known_signs(mode,case,branch=None):
    i,j = case
    ws = [LOWER[i],OTHER[mode][j]]
    out = {}
    for t in TRIPLES:
        if t[2]<7:
            out[t] = 1
        elif t[1]<7:
            out[t] = sign(ws[t[2]-7],t[0],t[1])
    for v in range(7):
        if ws[0][v]!=ws[1][v]:
            out[(v,7,8)] = 1 if ws[0][v]<ws[1][v] else -1
    if branch is not None:
        vv = SPLITS.get((mode,case),())
        assert type(branch) is int and 0<=branch<2**len(vv)
        for bit,v in enumerate(vv):
            assert (v,7,8) not in out
            out[(v,7,8)] = 1 if (branch>>bit)&1 else -1
    return out

@lru_cache(maxsize=None)
def cost_specs(mode,case,branch):
    signs = known_signs(mode,case,branch)
    out = []
    for t,sg in signs.items():
        count = sum(all(oriented(signs,(t[k],t[(k+1)%3],v))==sg for k in range(3))
                    for v in (7,8) if v not in t)
        out.append((t,sg,(S,3*S,RHO)[count]))
    return tuple(out)

def costs(mode,case,branch):
    out = [sub(mul(sub(ONE,d),sub(ONE,f)),const(4*S if mode=='upper' else F(7,11)))]
    out += [sub(scale(AREAS[t],sg),const(bound)) for t,sg,bound in cost_specs(mode,case,branch)]
    return out

def residual(cert):
    mode,case,branch = cert['mode'],tuple(cert['case']),cert['branch']
    ff,qq = factors(mode),costs(mode,case,branch)
    out = {}
    for row in cert['terms']:
        if row[0]=='f':
            _,indices,weight = row
            assert 1<=len(indices)<=3 and indices==sorted(indices)
            assert all(type(i) is int and 0<=i<30 for i in indices)
            p = const(1)
            for i in indices:
                p = mul(p,ff[i])
        else:
            assert row[0]=='q'
            _,qi,fi,weight = row
            assert type(qi) is int and 0<=qi<len(qq) and type(fi) is int and -1<=fi<30
            p = qq[qi] if fi==-1 else mul(qq[qi],ff[fi])
        assert type(weight) is int and weight>0
        out = add(out,scale(p,F(weight,cert['scale'])))
    assert all(len(m)<=3 for m in out)
    return out

def applicability(cert):
    mode,case,branch = cert['mode'],tuple(cert['case']),cert['branch']
    original = cost_specs(mode,case,branch)
    used = {row[1]-1 for row in cert['terms'] if row[0]=='q' and row[1]>0}
    out = set()
    for target,tb in cells(mode):
        available = {t:(sg,bound) for t,sg,bound in cost_specs(mode,target,tb)}
        if all(t in available and available[t][0]==sg and available[t][1]>=bound
               for t,sg,bound in (original[i] for i in used)):
            out.add((target,tb))
    return out

def verify():
    assert S/(1-S)==F(8,65)
    assert 4*S>F(1089,2500) and 1-4*S/(1-S)==F(33,65)
    assert F(7,11)>F(2601,4096) and 1-F(7,11)/(1-S)==F(204,715)
    assert F(33,65)<RHO and F(17,50)<RHO
    assert len(words())==57 and len(LOWER)==5
    assert LOWER==((1,5,5,4,3,2,1),(2,5,4,4,3,2,1),(3,5,4,3,3,2,1),(4,5,4,3,2,2,1),(5,5,4,3,2,1,1))
    assert len(OTHER['upper'])==33 and len(OTHER['cap'])==10
    assert len(cases('upper'))==157 and len(cases('cap'))==50
    assert len(cells('upper'))==168 and len(cells('cap'))==52
    data = json.loads(Path(__file__).with_name('c1_one_lower_convex_top_certificates.json').read_text())
    assert data['version']==1 and data['variables']==VARIABLES and data['vertices']==VERTICES
    covered = {mode:set() for mode in OTHER}
    count,worst = 0,None
    for cert in data['certificates']:
        mode,case,branch = cert['mode'],tuple(cert['case']),cert['branch']
        assert mode in OTHER and (case,branch) in cells(mode)
        assert type(cert['scale']) is int and cert['scale']>0
        bound = cube_upper(residual(cert))
        assert bound==F(cert['upper_bound']) and bound<=-F(3,4)
        applied = applicability(cert)
        assert (case,branch) in applied
        covered[mode] |= applied
        count += len(cert['terms'])
        worst = bound if worst is None else max(worst,bound)
        print(f'PASS: {mode}, {case}/{branch}, {len(cert["terms"])} terms, {len(applied)} cells')
    assert all(covered[mode]==set(cells(mode)) for mode in OTHER)
    assert len(data['certificates'])==155 and count==25184
    assert sum(c['mode']=='upper' for c in data['certificates'])==127
    assert sum(c['mode']=='cap' for c in data['certificates'])==28
    assert worst==-F(3448691771523,3500729749504)
    print(f'PASS: 155 exact cubics, {count} positive terms; all 168+52 cells; worst {worst}')

if __name__=='__main__':
    verify()
