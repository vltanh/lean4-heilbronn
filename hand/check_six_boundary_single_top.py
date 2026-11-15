"""Exact complete sign cover for N with one opposite-cap and two inner points.

The coefficient file is produced separately; no optimizer is used here.
"""
from fractions import Fraction as F
from itertools import combinations, combinations_with_replacement, product as tuples
from pathlib import Path
import json
from check_seven_boundary_exterior_certificates import (
    const, add, sub, mul, scale, product, area, cube_upper,
)

VARIABLES = 'a h b c d f xx xy px py qx qy'.split()
S, RHO = F(8, 73), F(49, 60)
VARS = [{(i,): F(1)} for i in range(12)]
a,h,b,c,d,f,xx,xy,px,py,qx,qy = VARS
Z,U = const(0),const(1)
POINTS = [(Z,a),(b,Z),(c,Z),(U,d),(xx,xy),(f,U),(Z,h),(px,py),(qx,qy)]
TRIPLES = list(combinations(range(9),3))
AREAS = {tr:area(*(POINTS[i] for i in tr)) for tr in TRIPLES}
ALL_WORDS = [w for w in tuples(range(1,6),repeat=7)
             if all((j<=w[i]) == (7-j>w[(i+j)%7]) for i in range(7) for j in range(1,7))]
WORDS = [w for w in ALL_WORDS if w[3]>=2]
EARS = [(0,1,6),(0,1,2),(1,2,3),(2,3,5),(3,5,6),(0,5,6)]

def sign(w,i,j):
    return 1 if (j-i)%7<=w[i] else -1

def inside(w,tr):
    return all(sign(w,tr[i],tr[(i+1)%3])>0 for i in range(3))

def upper(w):
    return sign(w,6,2)>0

def forced_upper(P,Q):
    pHD,qHD=sign(P,6,3),sign(Q,6,3)
    pCF,qCF=sign(P,2,5),sign(Q,2,5)
    if (pHD,pCF)==(qHD,qCF):
        return None
    if pHD!=qHD and pCF!=qCF:
        return {6:-pHD,3:pHD,2:-pCF,5:pCF}
    if pHD==qHD:
        isolated=5 if pHD>0 else 2
        side=pCF if isolated==5 else -pCF
    else:
        isolated=6 if pCF>0 else 3
        side=-pHD if isolated==6 else pHD
    return {v:side if v==isolated else -side for v in (6,2,3,5)}

CASES=[]
for i,P in enumerate(WORDS):
    for j in range(i,len(WORDS)):
        Q=WORDS[j]
        if not upper(P) and not upper(Q):
            continue
        if any(inside(P,tr) and inside(Q,tr) for tr in EARS):
            continue
        forced=forced_upper(P,Q) if upper(P) and upper(Q) else {}
        if forced is None:
            continue
        if any(P[v]!=Q[v] and forced.get(v,1 if P[v]<Q[v] else -1)!=(1 if P[v]<Q[v] else -1) for v in range(7)):
            continue
        CASES.append((i,j))

def base_signs(ci):
    P,Q=[WORDS[i] for i in CASES[ci]]
    signs={}
    for tr in TRIPLES:
        i,j,k=tr
        if k<7:
            signs[tr]=1
        elif j<7:
            signs[tr]=sign(P if k==7 else Q,i,j)
    forced=forced_upper(P,Q) if upper(P) and upper(Q) else {}
    for v in range(7):
        sg=1 if P[v]<Q[v] else -1 if P[v]>Q[v] else forced.get(v)
        if sg is not None:
            signs[(v,7,8)]=sg
    return signs

SPLIT_CASES={196,260,262,274}
def split_vertices(ci):
    if ci not in SPLIT_CASES:
        return []
    signs=base_signs(ci)
    return [v for v in range(7) if (v,7,8) not in signs]

def scalar_cut(ci,bits):
    if ci==213:
        return 4,F(1,2)
    if ci==271:
        return 3,F(7,8)
    if ci==274 and bits==0:
        return 10,F(1,2)
    return None

CELLS=[]
for ci in range(len(CASES)):
    for bits in range(2**len(split_vertices(ci))):
        for direction in (-1,1) if scalar_cut(ci,bits) else (0,):
            CELLS.append((ci,bits,direction))

def signs_for(cell):
    ci,bits,direction=cell
    out=base_signs(ci)
    out.update({(v,7,8):1 if bits>>j&1 else -1 for j,v in enumerate(split_vertices(ci))})
    return out

def oriented(signs,tr):
    if len(set(tr))<3:
        return 0
    sg=signs.get(tuple(sorted(tr)))
    if sg is None:
        return None
    return sg*(-1)**sum(tr[i]>tr[j] for i in range(3) for j in range(i+1,3))

COMMON_FACTORS=[sub(a,const(F(1,8))),sub(b,const(F(1,8))),sub(h,const(4*S)),sub(c,const(4*S)),sub(U,h),sub(U,c),sub(d,a),sub(h,d),sub(f,b),sub(c,f),sub(d,f),sub(sub(h,a),const(S)),sub(sub(c,b),const(S)),sub(const(F(7,8)),d),sub(const(F(67,100)),f),sub(sub(xx,f),const(S)),sub(sub(xy,d),const(S)),sub(U,xx),sub(U,xy)]
for coord in (px,py,qx,qy):
    COMMON_FACTORS += [sub(coord,const(S)),sub(const(1-S),coord)]

def factors(cell):
    ci,bits,direction=cell
    P,Q=[WORDS[i] for i in CASES[ci]]
    out=list(COMMON_FACTORS)
    if not (upper(P) and upper(Q)):
        lx,ly=POINTS[7 if not upper(P) else 8]
        out += [sub(h,const(F(7,11))),sub(c,const(F(7,11))),sub(sub(c,lx),const(2*S)),sub(sub(h,ly),const(2*S)),sub(sub(sub(U,lx),ly),const(S))]
    cut=scalar_cut(ci,bits)
    if cut:
        var,value=cut
        assert direction in (-1,1)
        out.append(scale(sub(VARS[var],const(value)),direction))
    else:
        assert direction==0
    return out

HC=mul(h,c)
W=sub(U,mul(sub(h,d),sub(c,f)))
DELTA=mul(sub(U,d),sub(U,f))

def cost_specs(cell):
    signs=signs_for(cell)
    out=[]
    for tr,sg in sorted(signs.items()):
        count=sum(all(oriented(signs,(tr[i],tr[(i+1)%3],v))==sg for i in range(3)) for v in (7,8) if v not in tr)
        out.append(('area',tr,sg,(S,3*S,RHO)[count]))
    P,Q=[WORDS[i] for i in CASES[cell[0]]]
    mixed=not(upper(P) and upper(Q))
    out += [('hc',(),1,F(7,11) if mixed else 4*S),('W',(),1,4*S if mixed else 8*S),('delta',(),1,S)]
    out += [('area',tr,-1,-F(13,16)) for tr in EARS]
    return out

def costs(cell):
    extra={'hc':HC,'W':W,'delta':DELTA}
    return [sub(scale(AREAS[tr] if kind=='area' else extra[kind],sg),const(bound)) for kind,tr,sg,bound in cost_specs(cell)]

def signature(p):
    return tuple(sorted(p.items()))

def domain(cell):
    fac={signature(p) for p in factors(cell)}
    qs={}
    for kind,tr,sg,bound in cost_specs(cell):
        key=(kind,tr,sg)
        qs[key]=max(qs.get(key,bound),bound)
    return fac,qs

def requirements(cert):
    fac=factors(tuple(cert['cell']));specs=cost_specs(tuple(cert['cell']))
    fs=set();qs={}
    for term in cert['terms']:
        if term[0]=='f':
            fs.update(signature(fac[i]) for i in term[1])
        else:
            _,qi,fi,_=term
            kind,tr,sg,bound=specs[qi];key=(kind,tr,sg)
            qs[key]=max(qs.get(key,bound),bound)
            if fi!=-1:
                fs.add(signature(fac[fi]))
    return fs,qs

def applies(cert,cell):
    fs,qs=requirements(cert);tf,tq=domain(cell)
    return fs<=tf and all(k in tq and tq[k]>=v for k,v in qs.items())

def residual(cert):
    cell=tuple(cert['cell']);assert cell in CELLS
    fac,qs=factors(cell),costs(cell)
    assert type(cert['scale']) is int and cert['scale']>0
    out={}
    for term in cert['terms']:
        if term[0]=='f':
            _,ids,weight=term
            assert ids==sorted(ids) and 1<=len(ids)<=3
            assert all(type(i) is int and 0<=i<len(fac) for i in ids)
            p=product(fac[i] for i in ids)
        else:
            assert term[0]=='q';_,qi,fi,weight=term
            assert type(qi) is int and 0<=qi<len(qs)
            assert type(fi) is int and -1<=fi<len(fac)
            p=qs[qi] if fi==-1 else mul(qs[qi],fac[fi])
        assert type(weight) is int and weight>0
        out=add(out,scale(p,F(weight,cert['scale'])))
    assert all(len(m)<=3 for m in out)
    return out

def verify():
    assert len(ALL_WORDS)==57 and len(WORDS)==52 and len(CASES)==884
    assert len(CELLS)==893 and len(COMMON_FACTORS)==27
    assert {ci:len(split_vertices(ci)) for ci in SPLIT_CASES}=={196:1,260:1,262:2,274:1}
    data=json.loads(Path(__file__).with_name('six_boundary_single_top_certificates.json').read_text())
    assert data['version']==1 and data['complete'] and data['variables']==VARIABLES
    certs=data['certificates'];worst=None;terms=0
    for cert in certs:
        upper_bound=cube_upper(residual(cert))
        assert upper_bound==F(cert['upper_bound']) and upper_bound<-F(3,4)
        terms+=len(cert['terms']);worst=upper_bound if worst is None else max(worst,upper_bound)
    cover=data['cover'];assert len(cover)==len(CELLS)
    for cell,ci in zip(CELLS,cover):
        assert type(ci) is int and 0<=ci<len(certs) and applies(certs[ci],cell)
    print('PASS:',len(CASES),'base pairs;',len(CELLS),'complete sign/rational-range cells;',len(certs),'certificates;',terms,'positive terms; worst',worst)

if __name__=='__main__':
    verify()
