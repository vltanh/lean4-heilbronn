"""Exact C1 exclusion: one right-cap point and a triangular two-top hull."""
from fractions import Fraction as F
from functools import lru_cache
from itertools import combinations
import json
from pathlib import Path
from check_c1_one_lower_top_cap import const, add, sub, scale, mul, area, cube_upper
from check_c1_one_lower_convex_top import words, sign, inside, oriented

S,RHO = F(8,73),F(49,60)
VARIABLES = 'h c d f r_x r_y x_x x_y l_x l_y p_x p_y'.split()
h,c,d,f,rx,ry,xx,xy,lx,ly,px,py = [{(i,):F(1)} for i in range(12)]
ZERO,ONE = const(0),const(1)
VERTICES = ['O','C','R','D','X','F','H','L','P']
POINTS = [(ZERO,ZERO),(c,ZERO),(rx,ry),(ONE,d),(xx,xy),(f,ONE),(ZERO,h),(lx,ly),(px,py)]
TRIPLES = list(combinations(range(9),3))
AREAS = {t:area(*(POINTS[i] for i in t)) for t in TRIPLES}
LOWER = tuple(w for w in words() if inside(w,(0,1,6)))
CAP = tuple(w for w in words() if inside(w,(3,4,5)))
CASES = tuple((i,j) for i in range(len(LOWER)) for j in range(len(CAP)))
FACTORS = [
    sub(h,const(27*S/7)),sub(ONE,h),sub(c,const(3*S)),sub(const(F(7,9)),c),
    sub(d,const(4*S)),sub(const(F(41,65)),d),sub(f,const(S)),sub(const(F(17,41)),f),
    sub(h,d),sub(c,f),sub(d,f),sub(sub(rx,c),const(65*S/41)),sub(ONE,rx),
    sub(ry,const(9*S/7)),sub(sub(d,ry),const(F(8,49))),
    sub(sub(xx,f),const(F(24,41))),sub(sub(xy,d),const(F(24,65))),sub(ONE,xx),sub(ONE,xy),
    sub(lx,const(S)),sub(ly,const(9*S/7)),sub(sub(c,lx),const(2*S)),
    sub(sub(h,ly),const(18*S/7)),sub(sub(sub(ONE,lx),ly),const(S)),
    sub(sub(px,f),const(F(8,41))),sub(sub(py,d),const(F(8,65))),
    sub(const(1-S),px),sub(const(1-S),py),
]
CUBIC = sub(mul(mul(d,c),sub(ONE,c)),const(S))

def known_signs(case):
    i,j = case
    ws = [LOWER[i],CAP[j]]
    out = {}
    for t in TRIPLES:
        if t[2]<7:out[t] = 1
        elif t[1]<7:out[t] = sign(ws[t[2]-7],t[0],t[1])
    for v in range(7):
        if ws[0][v]!=ws[1][v]:out[(v,7,8)] = 1 if ws[0][v]<ws[1][v] else -1
    return out

@lru_cache(maxsize=25)
def cost_specs(case):
    signs = known_signs(case)
    out = []
    for t,sg in signs.items():
        count = sum(all(oriented(signs,(t[k],t[(k+1)%3],v))==sg for k in range(3))
                    for v in (7,8) if v not in t)
        out.append((t,sg,(S,3*S,RHO)[count]))
    return tuple(out)

def costs(case):
    out = [sub(mul(sub(ONE,d),sub(ONE,f)),const(3*S))]
    out += [sub(scale(AREAS[t],sg),const(bound)) for t,sg,bound in cost_specs(case)]
    return out

def residual(cert):
    qq = costs(tuple(cert['case']))
    out = {}
    for row in cert['terms']:
        if row[0]=='f':
            _,indices,weight = row
            assert 1<=len(indices)<=3 and indices==sorted(indices)
            assert all(type(i) is int and 0<=i<28 for i in indices)
            p = const(1)
            for i in indices:p = mul(p,FACTORS[i])
        elif row[0]=='q':
            _,qi,fi,weight = row
            assert type(qi) is int and 0<=qi<len(qq) and type(fi) is int and -1<=fi<28
            p = qq[qi] if fi==-1 else mul(qq[qi],FACTORS[fi])
        else:
            assert row[0]=='c' and len(row)==2
            _,weight = row
            p = CUBIC
        assert type(weight) is int and weight>0
        out = add(out,scale(p,F(weight,cert['scale'])))
    assert all(len(m)<=3 for m in out)
    return out

def applicability(cert):
    original = cost_specs(tuple(cert['case']))
    used = {row[1]-1 for row in cert['terms'] if row[0]=='q' and row[1]>0}
    out = set()
    for case in CASES:
        available = {t:(sg,bound) for t,sg,bound in cost_specs(case)}
        if all(t in available and available[t][0]==sg and available[t][1]>=bound
               for t,sg,bound in (original[i] for i in used)):
            out.add(case)
    return out

def verify():
    assert 1-3*S/(1-S)==F(41,65)
    assert 65*S/41>F(14,81) and 3*S/F(7,9)==27*S/7
    assert S/(1-3*S)==F(8,49) and S/(1-4*S)==F(8,41)
    assert 3*S/(1-4*S)==F(24,41) and 3*S/(1-S)==F(24,65)
    assert len(LOWER)==5 and len(CAP)==5 and len(CASES)==25
    assert CAP==((3,2,1,1,5,5,4),(3,2,2,1,4,5,4),(3,3,2,1,3,5,4),(4,3,2,1,1,5,5),(4,3,2,1,2,5,4))
    data = json.loads(Path(__file__).with_name('c1_one_lower_right_top_triangle_certificates.json').read_text())
    assert data['version']==1 and data['variables']==VARIABLES and data['vertices']==VERTICES
    covered = set()
    count,worst = 0,None
    for cert in data['certificates']:
        case = tuple(cert['case'])
        assert case in CASES and type(cert['scale']) is int and cert['scale']>0
        bound = cube_upper(residual(cert))
        assert bound==F(cert['upper_bound']) and bound<=-F(3,4)
        applied = applicability(cert)
        assert case in applied
        covered |= applied
        count += len(cert['terms'])
        worst = bound if worst is None else max(worst,bound)
        print(f'PASS: reference {case}, {len(cert["terms"])} terms, {len(applied)} cases')
    assert covered==set(CASES) and len(data['certificates'])==15 and count==1211
    assert worst==-F(707476541255103311,712957274349465600)
    print(f'PASS: 15 exact cubics, {count} positive terms; all 25 pairs; worst {worst}')

if __name__=='__main__':verify()
