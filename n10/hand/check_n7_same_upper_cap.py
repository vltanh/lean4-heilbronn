"""Read and verify the five fixed tables in N7_SAME_UPPER_CAP.md.

Only standard-library rational arithmetic is used.  The checker rebuilds
every triangle and support-area factor from the manuscript's coordinates.
"""
from fractions import Fraction as F
from itertools import combinations
from functools import lru_cache
from pathlib import Path
import re

N=11;Z=(0,)*N;s=F(93,1000);K=F(149,20)
ell=F(7347,69700);eta=F(93,790)
f0=K*s/(1-eta);e0=eta+s/(1-f0);h1=1-3*s
x0=s/(h1-eta);h0=4*s/(1-ell);g1=1-ell-3*s/(1-h0)
low=[eta,x0,f0,eta,e0,f0,x0,h0,h0+3*s,x0,h0+s]
high=[1-K*s,1-ell,1-ell,1,1,1-ell,g1,h1,1,1-ell,1]

def const(x):
    x=F(x);return {Z:x} if x else {}
def add(*ps):
    out={}
    for p in ps:
        for ex,co in p.items():out[ex]=out.get(ex,F(0))+co
    return {ex:co for ex,co in out.items() if co}
def scale(p,c):return {ex:co*c for ex,co in p.items() if co*c}
def mul(*ps):
    out=const(1)
    for p in ps:
        nxt={}
        for ex,co in out.items():
            for ey,cy in p.items():
                ez=tuple(x+y for x,y in zip(ex,ey));nxt[ez]=nxt.get(ez,F(0))+co*cy
        out={ex:co for ex,co in nxt.items() if co}
    return out
def var(i):
    ex=[0]*N;ex[i]=1;return {tuple(ex):F(1)}
vs=[var(i) for i in range(N)]
a,b,c,d,e,f,g,h,z,x,y=vs;O=const(0);I=const(1)
P=[(O,a),(b,O),(c,O),(I,d),(I,e),(f,I),(g,z),(O,h),(x,y)]
LABELS='ABCDEFGHX'

def det(i,j,k):
    A,B,C=P[i],P[j],P[k]
    return add(mul(add(B[0],scale(A[0],-1)),add(C[1],scale(A[1],-1))),
               scale(mul(add(B[1],scale(A[1],-1)),add(C[0],scale(A[0],-1))),-1))
def canonical(tri,sn=1):
    inv=sum(tri[i]>tri[j] for i in range(3) for j in range(i+1,3))
    return tuple(sorted(tri)),sn*(-1)**inv
def put(known,tri,sn):
    key,value=canonical(tri,sn)
    if key in known:assert known[key]==value,(tri,value,known[key])
    known[key]=value
def get(known,tri):
    key,value=canonical(tri)
    return known.get(key,0)*value

@lru_cache(None)
def known_signs(row):
    known={}
    for tri in combinations(range(8),3):put(known,tri,1)
    for tri in [(5,6,7),(0,5,6)]:
        for i,j in zip(tri,tri[1:]+tri[:1]):put(known,(i,j,8),1)
    for i,j in combinations(range(8),2):
        if get(known,(i,j,8)):continue
        for tri in [(5,6,7),(0,5,6)]:
            sides=[0 if k in (i,j) else get(known,(i,j,k)) for k in tri]
            sn=1 if min(sides)>=0 and max(sides)>0 else -1 if max(sides)<=0 and min(sides)<0 else 0
            if sn:put(known,(i,j,8),sn);break
    missing={''.join(LABELS[i] for i in tri) for tri in combinations(range(9),3) if tri not in known}
    assert missing=={'BGX','CGX','DGX','EGX'}
    cut=int(row[1:])-1
    assert 0<=cut<=4
    for i,ch in enumerate('BCDE'):put(known,(LABELS.index(ch),6,8),-1 if i<cut else 1)
    assert len(known)==84
    return known

L=[]
for i,w in enumerate(vs):L.extend([add(w,const(-low[i])),add(const(high[i]),scale(w,-1))])
L.extend([
    add(h,scale(a,-1),const(-s)),add(const(F(697,790)),scale(h,-1),a),
    add(e,scale(d,-1),const(-s)),add(const(F(697,790)),scale(e,-1),d),
    add(c,scale(b,-1),const(-F(117,1000))),add(const(F(79,100)),scale(c,-1),b),
    add(f,scale(b,-1)),add(c,scale(f,-1)),add(f,scale(g,-1)),
    add(h,scale(d,-1)),add(e,scale(a,-1)),
    add(z,scale(h,-1),const(-3*s)),add(y,scale(h,-1),const(-s)),
    add(e,scale(h,-1))])
assert len(L)==36

@lru_cache(None)
def factor(name,row):
    if '*' in name:return mul(*(factor(part,row) for part in name.split('*')))
    if name.startswith('L'):return L[int(name[1:])]
    if name=='C_FGH':return add(det(5,6,7),const(-3*s))
    if name=='EP':return add(mul(f,add(I,scale(a,-1))),const(-K*s))
    if name=='EL':return add(mul(h,c),const(-4*s))
    if name=='ER':return add(mul(e,add(I,scale(b,-1))),const(-4*s))
    if name=='SUP':
        return add(mul(f,f,add(z,scale(a,-1))),
                   scale(mul(f,g,add(I,scale(a,-1))),-1),
                   scale(add(f,scale(g,-1)),-K*s))
    assert len(name)==4 and name[-1] in '+-',name
    tri=tuple(LABELS.index(ch) for ch in name[:3]);sn=1 if name[3]=='+' else -1
    assert get(known_signs(row),tri)==sn,(row,name)
    return add(scale(det(*tri),sn),const(-s))

def upper(poly):
    total=F(0)
    for ex,co in poly.items():
        m=F(1)
        for z,p in zip(high if co>0 else low,ex):m*=z**p
        total+=co*m
    return total

EXPECTED={
    'R1':(113,F(-3081578886642228300860477435923145380886144825141935276939,5664174093772833712565257577149419862248531987320000000000)),
    'R2':(98,F(-306785441981606083642994757080526258301842683359,729728756233089787755085604295138311265500000000)),
    'R3':(99,F(-938013619624565492922278536615662619399213,775263674328877845809229230862542000000000)),
    'R4':(128,F(-10467150078529364701488268370754402674385895388309126069,17472450204343605936458708488697760891746428280000000000)),
    'R5':(85,F(-2366085227912799585274761149912137080934401068706713,22117025575118488527162922137592102394615732000000000)),
}

def verify():
    text=Path(__file__).with_name('N7_SAME_UPPER_CAP.md').read_text()
    for row,(count,bound) in EXPECTED.items():
        section=text.split('### Row '+row+'\n',1)[1].split('\n### ',1)[0]
        rows=re.findall(r'^\| (\d+) \| (\d+) \| ([A-Z0-9+*_\-]+) \|$',section,re.M)
        assert len(rows)==count,(row,len(rows))
        W={}
        for i,(index,weight,name) in enumerate(rows,1):
            assert int(index)==i and int(weight)>0
            q=factor(name,row);assert all(sum(ex)<=3 for ex in q)
            W=add(W,scale(q,int(weight)))
        assert upper(W)==bound and bound<0,(row,upper(W),bound)
        assert str(bound) in section
        print('PASS',row,count,'fixed terms; exact bound',bound)
    assert F(7,5)**2<2 and F(12,5)**2<6
    assert s-F(100,1089)==F(1277,1089000)>0
    assert 12*s>1
    print('PASS: five exhaustive ray cuts and both analytic hull/height alternatives')

if __name__=='__main__':verify()
