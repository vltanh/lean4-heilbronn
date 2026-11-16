"""Independent SymPy reconstruction of the complete N6 single-top proof.

This deliberately does not import the published verifier or its polynomial
engine. The words, pair-line signs, cuts, costs, reuse, and all rational
expressions are reconstructed from the manuscript.
"""
from pathlib import Path
from itertools import combinations,product
from functools import lru_cache
import json,sympy as S

ROOT=Path(__file__).resolve().parents[1]
data=json.loads((ROOT.parents[1] / 'proof/nine/six_boundary_single_top_certificates.json').read_text())
z=S.symbols('a h b c d f xx xy px py qx qy')
a,h,b,c,d,f,xx,xy,px,py,qx,qy=z
s,rho=S.Rational(8,73),S.Rational(49,60)
points=[(0,a),(b,0),(c,0),(1,d),(xx,xy),(f,1),(0,h),(px,py),(qx,qy)]
triples=list(combinations(range(9),3))
def poly(expression):return S.Poly(expression,*z,domain=S.QQ)
def determinant(tr):
    p,q,r=[points[i]for i in tr]
    return (q[0]-p[0])*(r[1]-p[1])-(q[1]-p[1])*(r[0]-p[0])
areas={tr:poly(determinant(tr))for tr in triples}
sign=lambda w,i,j:1 if(j-i)%7<=w[i]else-1
inside=lambda w,tr:all(sign(w,tr[k],tr[(k+1)%3])==1 for k in range(3))
allwords=[w for w in product(range(1,6),repeat=7)
          if all(sign(w,i,j)==-sign(w,j,i)for i,j in combinations(range(7),2))]
words=[w for w in allwords if sign(w,3,5)>0]
upper=lambda w:sign(w,6,2)>0
ears=[(0,1,6),(0,1,2),(1,2,3),(2,3,5),(3,5,6),(0,5,6)]
assert len(allwords)==57 and len(words)==52
assert sum(upper(w)for w in words)==33

def forced_pair(P,Q):
    if not(upper(P)and upper(Q)):return {}
    hd=(sign(P,6,3),sign(Q,6,3));cf=(sign(P,2,5),sign(Q,2,5))
    if hd[0]==hd[1]and cf[0]==cf[1]:return None
    if hd[0]!=hd[1]and cf[0]!=cf[1]:
        return {6:-hd[0],3:hd[0],2:-cf[0],5:cf[0]}
    if hd[0]==hd[1]:
        isolated=5 if hd[0]>0 else 2
        isolated_sign=cf[0]if isolated==5 else-cf[0]
    else:
        isolated=6 if cf[0]>0 else 3
        isolated_sign=-hd[0]if isolated==6 else hd[0]
    return {i:isolated_sign if i==isolated else-isolated_sign for i in(6,2,3,5)}

cases=[]
for i,P in enumerate(words):
    for j,Q in list(enumerate(words))[i:]:
        if not upper(P)and not upper(Q):continue
        if any(inside(P,tr)and inside(Q,tr)for tr in ears):continue
        forced=forced_pair(P,Q)
        if forced is None:continue
        if any(P[k]!=Q[k]and k in forced and forced[k]!=(1 if P[k]<Q[k]else-1)for k in range(7)):continue
        cases.append((i,j))
assert len(cases)==884 and sum(not(upper(words[i])and upper(words[j]))for i,j in cases)==615

@lru_cache(maxsize=None)
def base_signs(ci):
    P,Q=[words[i]for i in cases[ci]]
    out={}
    for tr in triples:
        i,j,k=tr
        if k<7:out[tr]=1
        elif j<7:out[tr]=sign(P if k==7 else Q,i,j)
    forced=forced_pair(P,Q)
    for v in range(7):
        value=1 if P[v]<Q[v]else-1 if P[v]>Q[v]else forced.get(v)
        if value is not None:out[v,7,8]=value
    return out

splits={196:(0,),260:(4,),262:(4,5),274:(5,)}
assert {i:cases[i]for i in splits}=={196:(6,15),260:(8,22),262:(8,24),274:(8,40)}
for ci,vertices in splits.items():
    assert vertices==tuple(v for v in range(7)if(v,7,8)not in base_signs(ci))
def cut(ci,bits):
    if ci==213:return 4,S.Rational(1,2)
    if ci==271:return 3,S.Rational(7,8)
    if ci==274 and bits==0:return 10,S.Rational(1,2)
    return None
assert cases[213]==(6,41)and cases[271]==(8,37)
cells=[(ci,bits,direction)for ci in range(884)
       for bits in range(2**len(splits.get(ci,())))
       for direction in((-1,1)if cut(ci,bits)else(0,))]
assert len(cells)==893

@lru_cache(maxsize=None)
def signs(cell):
    ci,bits,_=cell
    out=dict(base_signs(ci))
    for bi,v in enumerate(splits.get(ci,())):out[v,7,8]=1 if bits>>bi&1 else-1
    return out
def orient(ss,tr):
    if len(set(tr))<3:return 0
    value=ss.get(tuple(sorted(tr)))
    if value is None:return None
    return value*(-1)**sum(tr[i]>tr[j]for i in range(3)for j in range(i+1,3))

common=[a-S.Rational(1,8),b-S.Rational(1,8),h-4*s,c-4*s,1-h,1-c,
        d-a,h-d,f-b,c-f,d-f,h-a-s,c-b-s,S.Rational(7,8)-d,
        S.Rational(67,100)-f,xx-f-s,xy-d-s,1-xx,1-xy]
for coordinate in(px,py,qx,qy):common +=[coordinate-s,1-s-coordinate]
assert len(common)==27

@lru_cache(maxsize=None)
def factors(cell):
    ci,bits,direction=cell;P,Q=[words[i]for i in cases[ci]]
    out=list(common)
    if not(upper(P)and upper(Q)):
        lx,ly=points[7 if not upper(P)else 8]
        out +=[h-S.Rational(7,11),c-S.Rational(7,11),c-lx-2*s,h-ly-2*s,1-s-lx-ly]
    cc=cut(ci,bits)
    if cc:
        vi,value=cc;assert direction in(-1,1);out +=[direction*(z[vi]-value)]
    else:assert direction==0
    return tuple(poly(e)for e in out)

@lru_cache(maxsize=None)
def specs(cell):
    ss=signs(cell);out=[]
    for tr,sg in sorted(ss.items()):
        n=sum(all(orient(ss,(tr[k],tr[(k+1)%3],v))==sg for k in range(3))
              for v in(7,8)if v not in tr)
        out.append(('area',tr,sg,(s,3*s,rho)[n]))
    P,Q=[words[i]for i in cases[cell[0]]];mixed=not(upper(P)and upper(Q))
    out +=[('hc',(),1,S.Rational(7,11)if mixed else 4*s),
           ('W',(),1,4*s if mixed else 8*s),('delta',(),1,s)]
    out +=[('area',tr,-1,-S.Rational(13,16))for tr in ears]
    return tuple(out)
extras={'hc':poly(h*c),'W':poly(1-(h-d)*(c-f)),'delta':poly((1-d)*(1-f))}
@lru_cache(maxsize=None)
def cost(spec):
    kind,tr,sg,value=spec
    return sg*(areas[tr]if kind=='area'else extras[kind])-poly(value)
def signature(p):return tuple(sorted(p.as_dict().items()))

@lru_cache(maxsize=None)
def domain(cell):
    ff={signature(v)for v in factors(cell)};qq={}
    for kind,tr,sg,value in specs(cell):
        key=(kind,tr,sg);qq[key]=max(qq.get(key,value),value)
    return ff,qq

factor_cache={};q_cache={}
certs=data['certificates'];terms=0;bounds=[];requirements=[]
assert data['version']==1 and data['complete']is True and data['variables']==[str(t)for t in z]
assert len(certs)==616
for no,cert in enumerate(certs):
    cell=tuple(cert['cell']);assert cell in cells
    ff=factors(cell);qq=specs(cell)
    den=cert['scale'];assert type(den)is int and den>0
    result=poly(0);needed_factors=set();needed_costs={}
    for term in cert['terms']:
        if term[0]=='f':
            _,indices,weight=term
            assert 1<=len(indices)<=3 and indices==sorted(indices)
            assert all(type(i)is int and 0<=i<len(ff)for i in indices)
            key=tuple(signature(ff[i])for i in indices)
            if key not in factor_cache:
                p=poly(1)
                for i in indices:p*=ff[i]
                factor_cache[key]=p
            p=factor_cache[key];needed_factors.update(key)
        else:
            assert term[0]=='q';_,qi,fi,weight=term
            assert type(qi)is int and 0<=qi<len(qq)and type(fi)is int and -1<=fi<len(ff)
            qspec=qq[qi];kind,tr,sg,value=qspec
            key=(kind,tr,sg);needed_costs[key]=max(needed_costs.get(key,value),value)
            fk=signature(ff[fi])if fi!=-1 else None
            key=(qspec,fk)
            if key not in q_cache:q_cache[key]=cost(qspec)if fi==-1 else cost(qspec)*ff[fi]
            p=q_cache[key]
            if fi!=-1:needed_factors.add(fk)
        assert type(weight)is int and weight>0
        result+=S.Rational(weight,den)*p
    assert result.total_degree()<=3
    bound=result.coeff_monomial(1)+sum(value for power,value in result.terms()if any(power)and value>0)
    assert bound==S.Rational(cert['upper_bound'])and bound<-S.Rational(3,4)
    requirements.append((needed_factors,needed_costs));bounds.append(bound);terms+=len(cert['terms'])
    print('EXACT',no,cell,len(cert['terms']),bound,flush=True)
assert terms==89897
assert len(data['cover'])==893
used=set()
for cell,ci in zip(cells,data['cover']):
    assert type(ci)is int and 0<=ci<616
    needed_factors,needed_costs=requirements[ci];ff,qq=domain(cell)
    assert needed_factors<=ff
    assert all(key in qq and qq[key]>=value for key,value in needed_costs.items())
    used.add(ci)
assert used==set(range(616))
print('INDEPENDENT SYMPY PASS:57 hull words,52 inner words,884 base pairs,893 cells,616 cubics,89897 positive terms; every reuse verified',flush=True)
print('Greatest exact upper bound:',max(bounds),flush=True)
