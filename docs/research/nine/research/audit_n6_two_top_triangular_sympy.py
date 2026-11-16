"""Independent SymPy audit of the triangular two-top N6 cover.

No published verifier, search model, or custom polynomial engine is imported.
"""
from pathlib import Path
from itertools import combinations,product
from functools import lru_cache
import json,sympy as S

ROOT=Path(__file__).resolve().parents[1]
data=json.loads((ROOT.parents[1] / 'proof/nine/six_boundary_two_top_triangular_certificates.json').read_text())
z=S.symbols('a h b c d f xx xy px py qx qy')
a,h,b,c,d,f,xx,xy,px,py,qx,qy=z
s,rho=S.Rational(8,73),S.Rational(49,60)
points=[(0,a),(b,0),(c,0),(1,d),(xx,xy),(f,1),(0,h),(px,py),(qx,qy)]
triples=list(combinations(range(9),3))
def poly(expression):return S.Poly(expression,*z,domain=S.QQ)
def determinant(tr):
    p,q,r=[points[i]for i in tr]
    return(q[0]-p[0])*(r[1]-p[1])-(q[1]-p[1])*(r[0]-p[0])
areas={tr:poly(determinant(tr))for tr in triples}
sign=lambda w,i,j:1 if(j-i)%7<=w[i]else-1
inside=lambda w,tr:all(sign(w,tr[k],tr[(k+1)%3])>0 for k in range(3))
words=[w for w in product(range(1,6),repeat=7)
       if all(sign(w,i,j)==-sign(w,j,i)for i,j in combinations(range(7),2))]
cap=[i for i,w in enumerate(words)if inside(w,(3,4,5))]
inner=[i for i,w in enumerate(words)if sign(w,3,5)>0]
assert len(words)==57 and len(cap)==5 and len(inner)==52
assert cap==[i for i,w in enumerate(words)if w[3]==1]
cases=[(i,j)for i in cap for j in inner]
assert len(cases)==260
upper=lambda w:sign(w,6,2)>0
ears=[(0,1,6),(0,1,2),(1,2,3),(2,3,5),(3,5,6),(0,5,6)]

@lru_cache(maxsize=None)
def base_signs(ci):
    P,Q=[words[i]for i in cases[ci]];out={}
    for tr in triples:
        i,j,k=tr
        if k<7:out[tr]=1
        elif j<7:out[tr]=sign(P if k==7 else Q,i,j)
    for v in range(7):
        if P[v]!=Q[v]:out[v,7,8]=1 if P[v]<Q[v]else-1
    return out
splits={230:(2,),238:(1,)}
for ci,vertices in splits.items():
    assert all((v,7,8)not in base_signs(ci)for v in vertices)
cells=[(ci,bits)for ci in range(260)for bits in range(2**len(splits.get(ci,())))]
assert len(cells)==262
@lru_cache(maxsize=None)
def signs(cell):
    ci,bits=cell;out=dict(base_signs(ci))
    for bi,v in enumerate(splits.get(ci,())):out[v,7,8]=1 if bits>>bi&1 else-1
    return out
def orient(ss,tr):
    if len(set(tr))<3:return 0
    sg=ss.get(tuple(sorted(tr)))
    return None if sg is None else sg*(-1)**sum(tr[i]>tr[j]for i in range(3)for j in range(i+1,3))

common=[a-S.Rational(1,8),b-S.Rational(1,8),h-4*s,c-4*s,1-h,1-c,
        d-a,h-d,f-b,c-f,d-f,h-a-s,c-b-s,S.Rational(319,511)-d,
        S.Rational(3,7)-f,xx-f-S.Rational(192,511),xy-d-S.Rational(192,511),
        1-xx,1-xy,px-f-S.Rational(64,511),py-d-S.Rational(64,511),
        1-s-px,1-s-py,qx-s,qy-s,1-s-qx,1-s-qy]
assert len(common)==27
@lru_cache(maxsize=None)
def factors(cell):
    ci,bits=cell;Q=words[cases[ci][1]];out=list(common)
    if not upper(Q):out +=[h-S.Rational(7,11),c-S.Rational(7,11),c-qx-2*s,h-qy-2*s,1-s-qx-qy]
    if ci==230:
        out +=[S.Rational(11,60)-f,xx-f-rho,xy-S.Rational(2234,2745),h-a-S.Rational(480,803)]
    return tuple(poly(e)for e in out)
@lru_cache(maxsize=None)
def specs(cell):
    ss=signs(cell);out=[]
    for tr,sg in sorted(ss.items()):
        count=sum(all(orient(ss,(tr[k],tr[(k+1)%3],v))==sg for k in range(3))
                  for v in(7,8)if v not in tr)
        out.append(('area',tr,sg,(s,3*s,rho)[count]))
    above=upper(words[cases[cell[0]][1]])
    out +=[('hc',(),1,4*s if above else S.Rational(7,11)),
           ('W',(),1,4*s if above else 2*s),('delta',(),1,3*s)]
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

assert data['version']==1 and data['complete']is True and data['variables']==[str(t)for t in z]
assert data['vertices']=='A B C D X F H P Q'.split()and data['threshold']==str(s)
assert cap==[19,22,28,38,39]and cases[230]==(39,24)and cases[238]==(39,33)
assert all(('area',(2,4,5),1,rho)in specs((230,bits))for bits in(0,1))
assert (rho-1+4*s)/(4*s-S.Rational(1,8))==S.Rational(2234,2745)
assert s/(1-rho)==S.Rational(480,803)
certs=data['certificates'];assert len(certs)==220
factor_cache={};q_cache={};terms=0;bounds=[];requirements=[]
for no,cert in enumerate(certs):
    cell=tuple(cert['cell']);assert cell in cells
    ff,qq=factors(cell),specs(cell);den=cert['scale']
    assert type(den)is int and den>0
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
            fk=signature(ff[fi])if fi!=-1 else None;key=(qspec,fk)
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
assert len(data['cover'])==262
used=set()
for cell,ci in zip(cells,data['cover']):
    assert type(ci)is int and 0<=ci<220
    required_factors,required_costs=requirements[ci];ff,qq=domain(cell)
    assert required_factors<=ff
    assert all(key in qq and qq[key]>=value for key,value in required_costs.items())
    used.add(ci)
assert used==set(range(220))
assert terms==29641 and max(bounds)==-S.Rational(4128115667948309,4197433925959680)
print('INDEPENDENT SYMPY PASS:57 words,5 cap words,52 inner words,260 base pairs,262 cells,220 cubics;',terms,'positive terms; every reuse verified',flush=True)
print('Greatest exact upper bound:',max(bounds),flush=True)
