"""Independent SymPy reconstruction of the N6 side/opposite certificate proof."""
from pathlib import Path
from itertools import product,combinations
from collections import defaultdict
import json
import sympy as sp

ROOT=Path(__file__).resolve().parents[1]
S=sp.Rational(8,73);rho=sp.Rational(13,16)
V=sp.symbols('a h b c d f x y z w r t')
a,h,b,c,d,f,x,y,z,w,r,t=V
pts=[(0,a),(b,0),(c,0),(x,y),(1,d),(z,w),(f,1),(0,h),(r,t)]
trips=list(combinations(range(9),3))
def det(i,j,k):
    p,q,u=pts[i],pts[j],pts[k]
    return sp.expand((q[0]-p[0])*(u[1]-p[1])-(q[1]-p[1])*(u[0]-p[0]))
areas={q:det(*q) for q in trips}
words=[]
for q in product(range(1,7),repeat=8):
    if q[2]<2 or q[4]<2 or not 2<=q[1]<=5:continue
    ok=True
    for i in range(8):
        for j in range(i+1,8):
            if ((j-i)<=q[i])==((8-j+i)<=q[j]):
                ok=False;break
        if not ok:break
    if ok:words.append(q)
assert len(words)==97 and sum(q[7]<3 for q in words)==18
assert [words[i] for i in (23,54,69,84)]==[
 (3,2,3,4,5,4,4,3),(4,3,3,2,3,4,5,4),
 (4,4,4,4,3,3,3,3),(5,4,4,3,3,2,3,4)]
def positive(q,i,j):
    return (j-i)%8<=q[i]
def contains(q,tri):
    i,j,k=tri
    return positive(q,i,j) and positive(q,j,k) and positive(q,k,i)
def orientation(q,tri):
    sort=sorted(tri)
    sg=1 if sort[-1]<8 or positive(q,sort[0],sort[1]) else -1
    parity=sum(tri[i]>tri[j] for i in range(3) for j in range(i+1,3))
    return sg*(-1)**parity
# Empty-ear restrictions are independently recovered directly.
for q in words:
    assert not contains(q,(0,1,7)) and not contains(q,(1,2,3))
    assert positive(q,2,4) and positive(q,4,6)

aff=[
 a-sp.Rational(1,7),b-sp.Rational(1,8),h-sp.Rational(1,2),c-4*S,
 d-sp.Rational(1,2),1-h,1-S-c,1-S-d,1-S-f,d-a,h-d,f-b,c-f,
 h-a-S,c-b-S,1-x,x-c-S,y-sp.Rational(1,7),d-y-sp.Rational(7,36),
 1-z,1-w,z-f-S,w-d-S,r-S,1-S-r,t-S,1-S-t,
 r-sp.Rational(1,8),t-sp.Rational(1,7),z-f-2*S,w-d-sp.Rational(1,8),
 sp.Rational(29,64)-b]
branch={
 'x_low':z-x,'x_high':x-z,'y_low':h-w,'y_high':w-h,
 'l_low':sp.Rational(11,20)-h+a,'l_high':h-a-sp.Rational(2,3),
 'm_low':sp.Rational(11,20)-z+f,'g_high':f-sp.Rational(1,4),
 'c_low':sp.Rational(2,3)-c}
assert len(aff)==32
all_aff=aff+list(branch.values())
aff_ids={name:32+i for i,name in enumerate(branch)}
aff_poly=[sp.Poly(p,*V,domain=sp.QQ) for p in all_aff]
one=sp.Poly(1,*V,domain=sp.QQ)
W=1-(h-d)*(c-f)
ears=[(0,1,7),(0,1,2),(1,2,4),(2,4,6),(4,6,7),(0,6,7)]
QPOLY=[];QIDS={}
def qid(expr):
    expr=sp.expand(expr)
    if expr not in QIDS:
        QIDS[expr]=len(QPOLY);QPOLY.append(sp.Poly(expr,*V,domain=sp.QQ))
    return QIDS[expr]
def cost_ids(word):
    out=[]
    for tr in trips:
        sign=1 if tr[-1]<8 or positive(word,tr[0],tr[1]) else -1
        lower=3*S if tr[-1]<8 and contains(word,tr) else S
        out.append(qid(sign*areas[tr]-lower))
    upper=word[7]>=3
    out += [qid(W-(4*S if upper else 2*S)),
            qid(h*c-(4*S if upper else sp.Rational(7,11))),
            qid(3*S-areas[(0,1,7)]),qid(3*S-areas[(1,2,3)])]
    out += [qid(rho-areas[e]) for e in ears]
    assert len(out)==94
    return out
all_costs=[cost_ids(word) for word in words]
# Both projection identities independently expand to zero.
assert sp.expand((1-f)*det(2,4,8)+(1-c)*det(4,6,8)
 -(d*(1-f)+(1-d)*(1-c))*(1-r))==0
assert sp.expand((1-h)*det(4,6,8)+(1-d)*det(6,7,8)
 -((1-h)*(1-f)+(1-d)*f)*(1-t))==0
# The exact lower-parameter comparisons used in the geometry.
assert 4*S/(1-sp.Rational(1,8))>sp.Rational(1,2)
assert S/sp.Rational(49,64)>sp.Rational(1,7)
assert S/sp.Rational(9,16)>sp.Rational(7,36)
assert 7*S/6>sp.Rational(1,8)
assert 1-5*S<sp.Rational(29,64)
assert 2*1022**2>1445**2
assert 65*219**2-1765**2==2240

critical=['ABH','ABC','AGH','DEF','GHF','GEF','ADO','DHO','BOE','GCO','OCF']
for idx,order in [(23,[0,1,2,3,4,5,6,7,8]),(54,[2,3,4,5,6,7,0,1,8])]:
    index=dict(zip('ABCDEFGHO',order))
    for name in critical:
        assert orientation(words[idx],[index[ch] for ch in name])==1
rot=[(pts[i][1],1-pts[i][0]) for i in [2,3,4,5,6,7,0,1,8]]
assert rot==[(0,1-c),(y,1-x),(d,0),(w,1-z),(1,1-f),
             (h,1),(a,1),(0,1-b),(t,1-r)]
# Verify every rotated oriented determinant, not just its sign.
for i,j,k in trips:
    pp,qq,uu=rot[i],rot[j],rot[k]
    val=sp.expand((qq[0]-pp[0])*(uu[1]-pp[1])-(qq[1]-pp[1])*(uu[0]-pp[0]))
    order=[2,3,4,5,6,7,0,1,8]
    assert sp.expand(val-det(order[i],order[j],order[k]))==0

required={(i,('whole',)) for i in range(97) if i not in [23,54,69,84]}
required.update((23,(name,)) for name in ['x_low','y_low','l_low','l_high','m_low','g_high','c_low'])
required.update((54,(name,)) for name in ['x_low','y_low'])
for i in [69,84]:
    required.update([(i,('x_low',)),(i,('y_low',)),(i,('x_high','y_high'))])
assert len(required)==108
# Verify the two closed region covers that have no sharp remainder.
for xx,yy in product((-1,0,1),repeat=2):
    assert xx<=0 or yy<=0 or (xx>=0 and yy>=0)

data=json.loads((ROOT.parents[1] / 'proof/nine/six_boundary_side_opposite_certificates.json').read_text())
assert data['variables']==[str(v) for v in V]
assert data['vertices']==['A','B','C','X','D','Y','F','H','Q']
assert data['threshold']=='8/73'
cache={}
def polyterm(term,ids,qids):
    kind=term[0]
    if kind=='f':
        facs,wt=term[1:]
        assert facs==sorted(facs) and 1<=len(facs)<=3
        assert all(type(i) is int and 0<=i<len(ids) for i in facs)
        key=('f',tuple(sorted(ids[i] for i in facs)))
        if key not in cache:
            pp=one
            for i in key[1]:pp*=aff_poly[i]
            cache[key]=pp
    elif kind=='q':
        qi,fi,wt=term[1:]
        assert type(qi) is int and 0<=qi<94 and type(fi) is int and -1<=fi<len(ids)
        key=('q',qids[qi],-1 if fi<0 else ids[fi])
        if key not in cache:
            cache[key]=QPOLY[key[1]] if fi<0 else QPOLY[key[1]]*aff_poly[key[2]]
    else:
        assert kind=='qq'
        i,j,wt=term[1:]
        assert type(i) is int and type(j) is int and 0<=i<=j<94
        key=('qq',min(qids[i],qids[j]),max(qids[i],qids[j]))
        if key not in cache:cache[key]=QPOLY[key[1]]*QPOLY[key[2]]
    assert type(wt) is int and wt>0
    return cache[key],wt
seen=set();total=0;worst=None;quartics=[]
for ci,cert in enumerate(data['certificates']):
    idx=cert['index'];br=tuple(cert['branches']);key=(idx,br)
    assert key in required and key not in seen;seen.add(key)
    assert tuple(cert['word'])==words[idx] and cert['scale']==4096
    assert cert['threshold']=='8/73'
    ids=list(range(32))+([] if br==('whole',) else [aff_ids[name] for name in br])
    acc=defaultdict(lambda:sp.Rational(0))
    for term in cert['terms']:
        if term[0]=='qq':assert idx==84 and br==('x_high','y_high')
        pol,wt=polyterm(term,ids,all_costs[idx])
        for exp,coef in pol.terms():
            acc[exp]+=sp.Rational(wt,4096)*coef
    acc={exp:coef for exp,coef in acc.items() if coef}
    deg=max(map(sum,acc))
    if deg==4:quartics.append(key)
    else:assert deg<=3
    upper=acc.get((0,)*12,0)+sum(max(coef,0) for exp,coef in acc.items() if any(exp))
    assert upper==sp.Rational(cert['upper_bound']) and upper<-sp.Rational(3,4)
    worst=upper if worst is None else max(worst,upper)
    total+=len(cert['terms'])
    print('independent PASS',idx,','.join(br),len(cert['terms']),upper,flush=True)
assert seen==required and total==22019 and quartics==[(84,('x_high','y_high'))]
assert worst==-sp.Rational(77110359731,78230061056)
print('INDEPENDENT SYMPY PASS: 97 words,108 expressions,22019 terms, both sharp maps; worst',worst,flush=True)

