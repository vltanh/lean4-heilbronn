"""Verify the five printed sums in N7_OP_LINE_CAPS.md.

This is a standard-library, manuscript-reading check.  All factors are
rebuilt from the stated coordinates, independently of discovery data.
"""
from fractions import Fraction as F
from functools import lru_cache
from pathlib import Path
import re

N=9; Z=(0,)*N; s=F(93,1000)
eta=F(93,790); ell=F(7347,69700)
h0=4*s/(1-ell); h1=1-s; f0=4*s/(1-eta)
x0=s/(h1-eta); g1=1-ell-s/(1-h0)
low=[eta,x0,ell,eta,h0,f0,x0,h0,h0+s]
high=[1-4*s,1-ell,1-ell,h1,1,1-ell,g1,h1,1]

def const(c):
    c=F(c); return {Z:c} if c else {}
def add(*ps):
    out={}
    for p in ps:
        for ex,co in p.items(): out[ex]=out.get(ex,F(0))+co
    return {ex:co for ex,co in out.items() if co}
def scale(p,c):
    c=F(c); return {ex:co*c for ex,co in p.items() if co*c}
def mul(*ps):
    out=const(1)
    for p in ps:
        nxt={}
        for ex,co in out.items():
            for ey,cy in p.items():
                ez=tuple(x+y for x,y in zip(ex,ey))
                nxt[ez]=nxt.get(ez,F(0))+co*cy
        out={ex:co for ex,co in nxt.items() if co}
    return out
def var(i):
    ex=[0]*N; ex[i]=1; return {tuple(ex):F(1)}
vs=[var(i) for i in range(N)]
a,b,c,d,e,f,g,h,z=vs; O=const(0); I=const(1)
P=[(O,a),(b,O),(c,O),(I,d),(I,e),(f,I),(g,z),(O,h)]
LABELS='ABCDEFGH'

def det(i,j,k):
    A,B,C=P[i],P[j],P[k]
    return add(mul(add(B[0],scale(A[0],-1)),add(C[1],scale(A[1],-1))),
               scale(mul(add(B[1],scale(A[1],-1)),add(C[0],scale(A[0],-1))),-1))
def quad(word):
    ids=[LABELS.index(ch) for ch in word]
    return add(det(ids[0],ids[1],ids[2]),det(ids[0],ids[2],ids[3]))

L=[]
for i,w in enumerate(vs):
    L.extend([add(w,const(-low[i])),add(const(high[i]),scale(w,-1))])
L.extend([
    add(h,scale(a,-1),const(-s)),add(const(F(697,790)),scale(h,-1),a),
    add(e,scale(d,-1),const(-s)),add(const(F(697,790)),scale(e,-1),d),
    add(c,scale(b,-1),const(-F(117,1000))),add(const(F(79,100)),scale(c,-1),b),
    add(f,scale(b,-1)),add(c,scale(f,-1)),add(f,scale(g,-1)),
    add(h,scale(d,-1)),add(e,scale(a,-1)),add(z,scale(h,-1),const(-s)),
    add(e,scale(h,-1))])
assert len(L)==31

@lru_cache(None)
def factor(name,row):
    if '*' in name: return mul(*(factor(part,row) for part in name.split('*')))
    if name.startswith('L'):
        index=int(name[1:]); assert index<30 or row in ('ABCD','CDEF','GHAB')
        return L[index]
    if name=='EP': return add(mul(f,add(I,scale(a,-1))),const(-4*s))
    if name=='EL': return add(mul(h,c),const(-4*s))
    if name=='ER': return add(mul(e,add(I,scale(b,-1))),const(-4*s))
    if name=='SUP':
        return add(mul(f,f,add(z,scale(a,-1))),
                   scale(mul(f,g,add(I,scale(a,-1))),-1),
                   scale(add(f,scale(g,-1)),-4*s))
    if name=='P_AHGFE':
        return add(mul(f,add(I,scale(e,-1))),mul(add(I,scale(f,-1)),add(I,scale(a,-1),const(-11*s))))
    if name=='P_BCDEF':
        return add(mul(e,add(I,scale(f,-1))),mul(add(I,scale(e,-1)),add(I,scale(b,-1),const(-11*s))))
    if name=='P_DEFGH':
        return add(mul(g,add(h,scale(d,-1))),z,scale(h,-1),scale(g,-11*s))
    if name=='P_HABCD':
        return add(mul(add(h,const(-11*s)),add(I,scale(c,-1))),mul(d,c))
    if name=='P_ABCDE':
        return add(mul(add(e,const(-11*s)),b),mul(a,add(I,scale(b,-1))))
    if name=='BAD':
        if row=='BR': return add(mul(e,add(I,scale(b,-1))),const(-9*s))
        if row=='TR':
            return add(mul(add(I,scale(g,-1)),
                           add(mul(add(I,scale(d,-1)),add(f,scale(g,-1))),
                               mul(add(I,scale(z,-1)),add(I,scale(f,-1))))),
                       scale(add(f,scale(g,-1)),-9*s))
        return add(quad(row),const(-8*s))
    assert len(name)==4 and name[-1]=='+',name
    tri=tuple(LABELS.index(ch) for ch in name[:3]); assert tuple(sorted(tri))==tri
    return add(det(*tri),const(-s))

def upper(poly):
    out=F(0)
    for ex,co in poly.items():
        mon=F(1)
        for endpoint,power in zip(high if co>0 else low,ex): mon*=endpoint**power
        out+=co*mon
    return out

# The expected rows are read from the manuscript's exact summary table.
def verify():
    text=Path(__file__).with_name('N7_OP_LINE_CAPS.md').read_text()
    records=re.findall(r'^\| (BR|TR|ABCD|CDEF|GHAB) \| (\d+) \| (\d+) \| (-\d+/\d+) \|$',text,re.M)
    assert len(records)==5 and {r[0] for r in records}=={'BR','TR','ABCD','CDEF','GHAB'}
    total=0
    for row,count,degree,bound_text in records:
        count,degree,bound=int(count),int(degree),F(bound_text)
        section=text.split('### Row '+row+'\n',1)[1].split('\n### ',1)[0]
        entries=re.findall(r'^\| (\d+) \| (\d+) \| ([A-Z0-9+*_]+) \|$',section,re.M)
        assert len(entries)==count,(row,len(entries),count)
        W={}
        for i,(index,weight,name) in enumerate(entries,1):
            assert int(index)==i and int(weight)>0
            p=factor(name,row); assert all(sum(ex)<=degree for ex in p)
            W=add(W,scale(p,int(weight)))
        actual=upper(W); assert actual==bound and actual<0,(row,actual,bound)
        total+=count
        print('PASS',row,count,'printed terms; exact bound',bound)
    # Rational comparisons used by the analytic alternatives.
    assert s<F(4,25) and 1-4*s<7*s and 1-3*s<8*s
    assert F(177,20)*s-(1-s)**2==F(401,1000000)>0
    # Two displayed moving-vertex identities.
    assert add(det(4,5,7),scale(det(4,5,6),-1),
               scale(mul(g,add(I,scale(e,-1))),-1),
               scale(mul(add(I,scale(f,-1)),add(z,scale(h,-1))),-1))=={}
    assert add(quad('GHAB'),scale(add(mul(g,h),mul(b,add(z,scale(a,-1)))),-1))=={}
    print('PASS',total,'fixed terms and all analytic comparison identities')

if __name__=='__main__': verify()
