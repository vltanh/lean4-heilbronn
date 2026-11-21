"""Read the two fixed cubic tables of N7_PROJECTED_SIGNS.md exactly.

Only standard-library rational arithmetic is used.  All polynomial factors
are reconstructed from the displayed coordinates and signed determinants;
no discovery output or numerical solver is imported.
"""
from fractions import Fraction as F
from itertools import combinations
from pathlib import Path
import re

N=13; ZERO=(0,)*N; s=F(93,1000)
LABELS='ABCDEFGHOP'

def const(x):
    x=F(x); return {ZERO:x} if x else {}
def add(*ps):
    out={}
    for p in ps:
        for e,c in p.items():out[e]=out.get(e,F(0))+c
    return {e:c for e,c in out.items() if c}
def scale(p,c):return {e:v*c for e,v in p.items() if v*c}
def mul(p,q):
    out={}
    for e,c in p.items():
        for f,d in q.items():
            g=tuple(a+b for a,b in zip(e,f));out[g]=out.get(g,F(0))+c*d
    return {e:c for e,c in out.items() if c}
def var(i):
    e=[0]*N;e[i]=1;return {tuple(e):F(1)}
vs=[var(i) for i in range(N)]
a,b,c,d,e,f,g,h,z,x,y,u,v=vs
O=const(0);I=const(1)
P=[(O,a),(b,O),(c,O),(I,d),(I,e),(f,I),(g,z),(O,h),(x,y),(u,v)]

def det(i,j,k):
    A,B,C=P[i],P[j],P[k]
    return add(mul(add(B[0],scale(A[0],-1)),add(C[1],scale(A[1],-1))),
               scale(mul(add(B[1],scale(A[1],-1)),add(C[0],scale(A[0],-1))),-1))
def canonical(word,sgn=1):
    ids=[LABELS.index(ch) for ch in word]
    inversions=sum(ids[i]>ids[j] for i in range(3) for j in range(i+1,3))
    return ''.join(LABELS[j] for j in sorted(ids))+('+' if sgn*(-1)**inversions==1 else '-')
def known_signs(branch):
    out=set()
    for tri in combinations(range(8),3):out.add(''.join(LABELS[j] for j in tri)+'+')
    for block in ['BCDE','FGHA']:
        for i,j in combinations(block,2):
            for k in 'OP':out.add(canonical(i+j+k))
    for i,ch in enumerate(LABELS[:8]):out.add(canonical(ch+'OP',1 if i in (0,5,6,7) else -1))
    for word in ['ADO+','BGO-','CFP+','EHP+','ABO+','ABP+','CDO+','CDP+',
                 'EFO+','BGP-','BHO-','BHP-','CFO+','DFO+','DFP+','EFP+','AEO-']:
        out.add(canonical(word[:3],1 if word[3]=='+' else -1))
    for i,j,sn in [('A','H',-1),('B','C',1),('D','E',1)]:
        for k in 'GOP':out.add(canonical(i+j+k,sn))
    if branch=='HGE':out.update(['AEP+','BFP-'])
    return out

def setup(branch):
    ell=F(7347,69700);eta=F(93,790)
    low=[eta,ell,ell,eta,eta,ell,ell,eta,eta,ell,eta,ell,eta]
    high=[1,1-ell,1-ell,1,1,1-ell,1-ell,1,1,1-ell,1,1-ell,1]
    if branch=='HGE':
        E=F(31,251);C=F(31657,55000)
        low=[E,E,1-C,E,1-C,1-C,E,1-C,eta,E,E,E,E]
        high=[C,C,1-E,C,1-E,1-E,C,1-E,1,1-E,1-E,1-E,1-E]
    L=[]
    for i,w in enumerate(vs):L.extend([add(w,const(-low[i])),add(const(high[i]),scale(w,-1))])
    L.extend([
        add(h,scale(a,-1),const(-s)),add(const(F(697,790)),scale(h,-1),a),
        add(e,scale(d,-1),const(-s)),add(const(F(697,790)),scale(e,-1),d),
        add(c,scale(b,-1),const(-F(117,1000))),add(const(F(79,100)),scale(c,-1),b),
        add(f,scale(b,-1)),add(c,scale(f,-1)),add(f,scale(g,-1)),
        add(h,scale(d,-1)),add(e,scale(a,-1)),
        add(u,scale(x,-1),const(-2*s)),add(v,scale(y,-1),const(-2*s)),
        add(b,scale(x,-1)),add(z,scale(h,-1),const(-s)),
        add(h,scale(e,-1)) if branch=='HGE' else add(e,scale(h,-1))])
    if branch=='HGE':
        for q in [add(e,scale(a,-1)),add(h,scale(d,-1)),add(f,scale(b,-1)),add(c,scale(g,-1))]:
            L.append(add(q,const(-F(21,250))))
        for q in [add(h,scale(a,-1)),add(e,scale(d,-1)),add(c,scale(b,-1)),add(f,scale(g,-1))]:
            L.append(add(const(F(753,1000)),scale(q,-1)))
    assert len(L)==(50 if branch=='HGE' else 42)
    return low,high,L

def factor(name,branch):
    if '*' in name:
        out=const(1)
        for part in name.split('*'):out=mul(out,factor(part,branch))
        return out
    _,_,L=setup(branch)
    if name.startswith('L'):return L[int(name[1:])]
    if name in ('S1','S2'):
        assert branch=='HGE'
        Q=add(I,scale(mul(add(e,scale(a,-1)),add(f,scale(b,-1))),-1))
        U=add(u,scale(x,-1));V=add(v,scale(y,-1))
        width=add(U,scale(mul(add(f,scale(b,-1)),V),-1)) if name=='S1' else add(V,scale(mul(add(e,scale(a,-1)),U),-1))
        return add(Q,scale(width,-1),const(-6*s))
    assert name in known_signs(branch),(branch,name)
    ids=[LABELS.index(ch) for ch in name[:3]]
    return add(scale(det(*ids),1 if name[3]=='+' else -1),const(-s))

def upper(poly,branch):
    low,high,_=setup(branch)
    total=F(0)
    for ex,co in poly.items():
        m=F(1)
        for z,p in zip(high if co>0 else low,ex):m*=z**p
        total+=co*m
    return total

def verify():
    text=Path(__file__).with_name('N7_PROJECTED_SIGNS.md').read_text()
    expected={'HLE':(346,F(-10972935931831798747,378991746125000000)),
              'HGE':(296,F(-7035149591836980332916187,103921720587437500000000))}
    for branch,(count,bound) in expected.items():
        section=text.split('### Row '+branch+'\n',1)[1].split('\n### ',1)[0]
        rows=re.findall(r'^\| (\d+) \| (\d+) \| ([A-Z0-9+*\-]+) \|$',section,re.M)
        assert len(rows)==count,(branch,len(rows))
        W={}
        for i,(index,weight,name) in enumerate(rows,1):
            assert int(index)==i and int(weight)>0
            q=factor(name,branch)
            assert all(sum(ex)<=3 for ex in q)
            W=add(W,scale(q,int(weight)))
        result=upper(W,branch)
        assert result==bound and result<0,(branch,result,bound)
        assert str(bound) in section
        print('PASS',branch,count,'fixed terms; exact upper bound',result)
    print('PASS: complete bad-coordinate split of the normalized inward-G good-sign chamber')

if __name__=='__main__':verify()
