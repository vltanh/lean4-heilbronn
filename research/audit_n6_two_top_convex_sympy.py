"""Independent SymPy audit of the convex N6 two-top-cap proof."""
from pathlib import Path
from itertools import product,combinations
from collections import defaultdict
import json
import sympy as sp
ROOT=Path(__file__).resolve().parents[1]
S=sp.Rational(8,73)
V=sp.symbols('a h b c d f ex ey gx gy x y')
a,h,b,c,d,f,ex,ey,gx,gy,x,y=V
pts=[(0,a),(b,0),(c,0),(1,d),(ex,ey),(gx,gy),(f,1),(0,h),(x,y)]
trips=list(combinations(range(9),3))
def det(i,j,k):
    p,q,u=pts[i],pts[j],pts[k]
    return sp.expand((q[0]-p[0])*(u[1]-p[1])-(q[1]-p[1])*(u[0]-p[0]))
areas={q:det(*q) for q in trips}
words=[]
for w in product(range(1,7),repeat=8):
    if w[3]<3:continue
    ok=True
    for i in range(8):
        for j in range(i+1,8):
            if ((j-i)<=w[i])==((8-j+i)<=w[j]):
                ok=False;break
        if not ok:break
    if ok:words.append(w)
assert len(words)==94
assert words[31]==(3,2,3,4,5,4,4,3)
assert words[66]==(4,4,4,4,3,3,3,3)
def positive(w,i,j):return (j-i)%8<=w[i]
def contains(w,tr):
    i,j,k=tr
    return positive(w,i,j) and positive(w,j,k) and positive(w,k,i)
def orient(w,tr):
    ss=sorted(tr)
    sg=1 if ss[-1]<8 or positive(w,ss[0],ss[1]) else -1
    parity=sum(tr[i]>tr[j] for i in range(3) for j in range(i+1,3))
    return sg*(-1)**parity
assert all(positive(w,3,6) for w in words)
aff=[
 a-sp.Rational(1,8),b-sp.Rational(1,8),h-4*S,c-4*S,1-h,1-c,
 d-a,h-d,f-b,c-f,d-f,d-sp.Rational(1,8),f-sp.Rational(1,8),
 sp.Rational(255,511)-d,sp.Rational(17,50)-f,
 h-a-50*S/17,c-b-511*S/255,
 ex-f-sp.Rational(64,511),ey-d-sp.Rational(64,511),1-ex,1-ey,
 gx-f-sp.Rational(64,511),gy-d-sp.Rational(64,511),1-gx,1-gy,
 ex-gx-S,gy-ey-S,x-S,1-S-x,y-S,1-S-y]
branches={
 'l_low':sp.Rational(11,20)-h+a,'l_high':h-a-sp.Rational(2,3),
 'm_low':sp.Rational(11,20)-gx+f,'g_high':f-sp.Rational(1,4),
 'c_low':sp.Rational(2,3)-c,'k_low':h-gy,
 'x_low':sp.Rational(1,2)-x,'x_high':x-sp.Rational(1,2)}
assert len(aff)==31
allaff=aff+list(branches.values())
bid={name:31+i for i,name in enumerate(branches)}
ap=[sp.Poly(p,*V,domain=sp.QQ) for p in allaff]
one=sp.Poly(1,*V,domain=sp.QQ)
W=1-(h-d)*(c-f);delta=(1-d)*(1-f)
ears=[(0,1,7),(0,1,2),(1,2,3),(2,3,6),(3,6,7),(0,6,7)]
QPS=[];QID={}
def qi(expr):
    expr=sp.expand(expr)
    if expr not in QID:
        QID[expr]=len(QPS);QPS.append(sp.Poly(expr,*V,domain=sp.QQ))
    return QID[expr]
def cost_ids(w):
    upper=positive(w,7,2)
    out=[qi(delta-4*S),qi(h*c-(4*S if upper else sp.Rational(7,11))),
         qi(W-(4*S if upper else 2*S))]
    out += [qi(sp.Rational(13,16)-areas[t]) for t in ears]
    for tr in trips:
        sg=1 if tr[-1]<8 or positive(w,tr[0],tr[1]) else -1
        threshold=3*S if tr[-1]<8 and contains(w,tr) else S
        out.append(qi(sg*areas[tr]-threshold))
    assert len(out)==93
    return out
allcost=[cost_ids(w) for w in words]
# All geometric identities reconstructed directly.
assert sp.expand((1-f)*det(2,3,8)+(1-c)*det(3,6,8)-det(2,3,6)*(1-x))==0
assert sp.expand((1-d)*det(6,7,8)+(1-h)*det(3,6,8)-det(3,6,7)*(1-y))==0
u=ex-gx;v=gy-ey
assert sp.expand(det(3,4,5)-(u*(ey-d)-(1-ex)*v))==0
assert sp.expand(det(6,4,5)-(v*(gx-f)-(1-gy)*u))==0
for zi in (4,5):
    zx,zy=pts[zi]
    assert sp.expand(det(3,zi,6)-((1-d)*(zx-f)-(1-f)*(1-zy)))==0
    assert sp.expand(det(3,zi,6)-((1-f)*(zy-d)-(1-d)*(1-zx)))==0
assert 4*S>sp.Rational(33,50)**2
assert 1-4*S/sp.Rational(7,8)==sp.Rational(255,511)
assert S/sp.Rational(7,8)==sp.Rational(64,511)
assert 8>sp.Rational(31,11)**2
assert 65*219**2-1765**2==2240

# The canonical E/F coordinates and all eleven formulas are independent.
names='ABCDEFGHO'
lookup=dict(zip(names,range(9)))
formula={
 'ABH':b*(h-a),'ABC':a*(c-b),'AGH':f*(h-a),
 'DEF':(1-gx)*(ey-d)-(1-ex)*(gy-d),
 'GHF':(gx-f)*(1-h)+f*(1-gy),
 'GEF':(gx-f)*(1-ey)-(ex-f)*(1-gy),
 'ADO':y-a-(d-a)*x,'DHO':h-y-(h-d)*x,
 'BOE':ey*(x-b)-(ex-b)*y,
 'GCO':x-c+(c-f)*y,'OCF':gy*(c-x)+(gx-c)*y}
for name,expr in formula.items():
    tr=[lookup[ch] for ch in name]
    assert sp.expand(det(*tr)-expr)==0
    assert orient(words[31],tr)==1
sharp=[i for i,w in enumerate(words)
       if all(orient(w,[lookup[ch] for ch in name])==1 for name in formula)]
assert sharp==[31]

required={(i,'whole') for i in range(94) if i not in (31,66)}
required.update((31,name) for name in ['l_low','l_high','m_low','g_high','c_low','k_low'])
required.update((66,name) for name in ['x_low','x_high'])
assert len(required)==100
data=json.loads((ROOT/'hand/six_boundary_two_top_convex_certificates.json').read_text())
assert data['variables']==list(map(str,V))
assert data['vertices']==['A','B','C','D','E','G','F','H','O'] and data['threshold']=='8/73'
cache={};seen=set();terms=0;worst=None
for cert in data['certificates']:
    idx=cert['index'];br=cert['branch'];key=(idx,br)
    assert key in required and key not in seen;seen.add(key)
    assert tuple(cert['word'])==words[idx] and cert['threshold']=='8/73'
    sc=cert['scale'];assert sc in (4096,16384,65536,262144)
    ids=list(range(31))+([] if br=='whole' else [bid[br]])
    acc=defaultdict(lambda:sp.Rational(0))
    for term in cert['terms']:
        if term[0]=='f':
            inds,wt=term[1:]
            assert inds==sorted(inds) and 1<=len(inds)<=3
            assert all(type(i) is int and 0<=i<len(ids) for i in inds)
            sig=('f',tuple(sorted(ids[i] for i in inds)))
            if sig not in cache:
                pp=one
                for i in sig[1]:pp*=ap[i]
                cache[sig]=pp
        else:
            assert term[0]=='q'
            iq,jf,wt=term[1:]
            assert type(iq) is int and 0<=iq<93
            assert type(jf) is int and -1<=jf<len(ids)
            sig=('q',allcost[idx][iq],-1 if jf<0 else ids[jf])
            if sig not in cache:
                cache[sig]=QPS[sig[1]] if jf<0 else QPS[sig[1]]*ap[sig[2]]
        assert type(wt) is int and wt>0
        for exp,coef in cache[sig].terms():
            acc[exp]+=sp.Rational(wt,sc)*coef
    acc={exp:coef for exp,coef in acc.items() if coef}
    assert all(sum(exp)<=3 for exp in acc)
    upper=acc.get((0,)*12,0)+sum(max(coef,0) for exp,coef in acc.items() if any(exp))
    assert upper==sp.Rational(cert['upper_bound']) and upper<=-sp.Rational(3,4)
    terms+=len(cert['terms']);worst=upper if worst is None else max(worst,upper)
    print('independent PASS',idx,br,len(cert['terms']),upper,flush=True)
assert seen==required and terms==17619
assert worst==-sp.Rational(11315534897214263309,11507808525803520000)
print('INDEPENDENT SYMPY PASS:94 words,100 cubics,17619 terms; sharp E/F map; worst',worst,flush=True)

