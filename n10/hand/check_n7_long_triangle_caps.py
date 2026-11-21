"""Check the eight fixed sums printed in N7_LONG_TRIANGLE_CAPS.md.

Only the standard library is used.  The factors, rational boxes and
coefficient bounds are reconstructed from the manuscript definitions.
"""
from fractions import Fraction as F
from functools import lru_cache
from pathlib import Path
import re

N=9; Z=(0,)*N; s=F(93,1000); eta=F(93,790); ell=F(7347,69700)
T=F(69,100); FM=1-ell
ROWS={'CDG':('CDG',3,'plain'),'CDH':('CDH',4,'plain'),
      'ABE':('ABE',4,'refined'),'ABF':('ABF',4,'refined'),
      'DGHlo':('DGH',3,'lo'),'DGHhi':('DGH',4,'hi'),
      'CGHlo':('CGH',3,'lo'),'CGHhi':('CGH',4,'hi')}

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
                ez=tuple(i+j for i,j in zip(ex,ey))
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
def tri(word): return det(*(LABELS.index(ch) for ch in word))
def quad(word): return add(tri(word[:3]),tri(word[0]+word[2:]))

@lru_cache(None)
def ranges(row):
    target,degree,kind=ROWS[row]
    h0=4*s/FM; h1=1-s; f0=4*s/(1-eta); x0=s/(h1-eta)
    g1=FM-s/(1-h0)
    lo=[eta,x0,ell,eta,h0,f0,x0,h0,h0+s]
    hi=[1-4*s,FM,FM,h1,F(1),FM,g1,h1,F(1)]
    if kind!='plain':
        lo[2]=max(lo[2],f0); hi[0]=min(hi[0],1-4*s/FM)
        hi[7]=min(hi[7],1-s/FM); hi[3]=min(hi[3],1-s/(1-f0))
        if target in ('ABE','ABF'):
            lo[1]=max(lo[1],(T-hi[0])/(1-hi[0]))
            if target=='ABF':
                lo[0]=max(lo[0],s/(FM+s-T));lo[5]=max(lo[5],T);lo[2]=max(lo[2],T)
            else:
                lo[0]=max(lo[0],F(7,25));lo[4]=max(lo[4],T)
        if target=='CGH':
            lo[2]=max(lo[2],T);lo[8]=max(lo[8],T/FM)
            lo[6]=max(lo[6],FM-(FM-T)/lo[7])
        if target=='DGH':
            hi[3]=min(hi[3],1-T);lo[8]=max(lo[8],T+eta)
            lo[6]=max(lo[6],(T-1+lo[7])/(lo[7]-eta))
        if kind=='lo': hi[6]=min(hi[6],F(1,2))
        if kind=='hi':
            lo[6]=max(lo[6],F(1,2));hi[6]=min(hi[6],F(3,5))
        for step in range(2):
            lo[1]=max(lo[1],s/(hi[7]-lo[0]));lo[6]=max(lo[6],s/(hi[7]-lo[0]))
            lo[7]=max(lo[7],lo[0]+s/hi[6]);hi[7]=min(hi[7],1-s/(FM-lo[6]))
            hi[6]=min(hi[6],FM-s/(1-lo[7]));lo[5]=max(lo[5],lo[6]+s/(1-lo[7]))
            lo[2]=max(lo[2],lo[5]);lo[4]=max(lo[4],lo[7],eta+s/(1-lo[2]),4*s/(1-lo[1]))
            hi[3]=min(hi[3],hi[7],1-s/(1-lo[5]));lo[8]=max(lo[8],lo[7]+s/FM)
    assert all(0<x<y<=1 for x,y in zip(lo,hi)),row
    L=[]
    for i,w in enumerate(vs): L.extend([add(w,const(-lo[i])),add(const(hi[i]),scale(w,-1))])
    L.extend([
        add(h,scale(a,-1),const(-s)),add(const(F(697,790)),scale(h,-1),a),
        add(e,scale(d,-1),const(-s)),add(const(F(697,790)),scale(e,-1),d),
        add(c,scale(b,-1),const(-F(117,1000))),add(const(F(79,100)),scale(c,-1),b),
        add(f,scale(b,-1)),add(c,scale(f,-1)),add(f,scale(g,-1)),
        add(h,scale(d,-1)),add(e,scale(a,-1)),add(z,scale(h,-1),const(-s)),
        add(e,scale(h,-1))])
    assert len(L)==31
    return lo,hi,L

@lru_cache(None)
def factor(name,row):
    if '*' in name: return mul(*(factor(part,row) for part in name.split('*')))
    if name.startswith('L'): return ranges(row)[2][int(name[1:])]
    if name=='BAD': return add(tri(ROWS[row][0]),const(-T))
    if name=='EP': return add(mul(f,add(I,scale(a,-1))),const(-4*s))
    if name=='EL': return add(mul(h,c),const(-4*s))
    if name=='ER': return add(mul(e,add(I,scale(b,-1))),const(-4*s))
    if name=='SUP':
        return add(mul(f,f,add(z,scale(a,-1))),scale(mul(f,g,add(I,scale(a,-1))),-1),
                   scale(add(f,scale(g,-1)),-4*s))
    if name=='P_AHGFE':
        return add(mul(f,add(I,scale(e,-1))),mul(add(I,scale(f,-1)),add(I,scale(a,-1),const(-11*s))))
    if name=='P_BCDEF':
        return add(mul(e,add(I,scale(f,-1))),mul(add(I,scale(e,-1)),add(I,scale(b,-1),const(-11*s))))
    if name=='P_DEFGH': return add(mul(g,add(h,scale(d,-1))),z,scale(h,-1),scale(g,-11*s))
    if name=='P_HABCD': return add(mul(add(h,const(-11*s)),add(I,scale(c,-1))),mul(d,c))
    if name=='P_ABCDE': return add(mul(add(e,const(-11*s)),b),mul(a,add(I,scale(b,-1))))
    if name in ('UABCD','UCDEF','UEFGH','UGHAB'): return add(const(8*s),scale(quad(name[1:]),-1))
    if name=='UBR': return add(const(9*s),scale(mul(e,add(I,scale(b,-1))),-1))
    if name in ('UAEF','UBEF','UDGH'):
        assert name!='UDGH' or row=='CGHhi'
        return add(const(T),scale(tri(name[1:]),-1))
    if name.startswith('EAR_'): return add(const(F(121,250)),scale(tri(name[4:]),-1))
    if name=='PAIR_BL': return add(mul(h,c),scale(tri('ABC'),-1),scale(tri('ABH'),-1),const(-2*s))
    if name=='PAIR_BR': return add(mul(e,add(I,scale(b,-1))),scale(tri('BCD'),-1),scale(tri('CDE'),-1),const(-2*s))
    if name=='PAIR_TL':
        return add(mul(f,f,add(z,scale(a,-1))),scale(mul(f,g,add(I,scale(a,-1))),-1),
                   scale(mul(add(f,scale(g,-1)),add(tri('AGH'),tri('FGH'),const(2*s))),-1))
    assert len(name)==4 and name[-1]=='+',name
    ids=tuple(LABELS.index(ch) for ch in name[:3]); assert tuple(sorted(ids))==ids
    return add(det(*ids),const(-s))

def upper(poly,row):
    lo,hi,_=ranges(row);out=F(0)
    for ex,co in poly.items():
        mon=F(1)
        for endpoint,power in zip(hi if co>0 else lo,ex):mon*=endpoint**power
        out+=co*mon
    return out

def verify():
    text=Path(__file__).with_name('N7_LONG_TRIANGLE_CAPS.md').read_text()
    records=re.findall(r'^\| (CDG|CDH|ABE|ABF|DGHlo|DGHhi|CGHlo|CGHhi) \| (\d+) \| (\d+) \| (-\d+/\d+) \|$',text,re.M)
    assert len(records)==8 and {r[0] for r in records}==set(ROWS)
    total=0
    for row,count,degree,bound_text in records:
        count,degree,bound=int(count),int(degree),F(bound_text)
        assert degree==ROWS[row][1]
        section=text.split('### Row '+row+'\n',1)[1].split('\n### ',1)[0]
        entries=re.findall(r'^\| (\d+) \| (\d+) \| ([A-Z0-9+*_]+) \|$',section,re.M)
        assert len(entries)==count,(row,len(entries),count)
        W={}
        for i,(index,weight,name) in enumerate(entries,1):
            assert int(index)==i and int(weight)>0
            p=factor(name,row);assert all(sum(ex)<=degree for ex in p)
            W=add(W,scale(p,int(weight)))
        actual=upper(W,row);assert actual==bound and bound<0,(row,actual,bound)
        total+=count;print('PASS',row,count,'printed terms; exact bound',bound)
    # The analytic g<3/5 inequality and its quadratic bound.
    W=tri('EFH');gap=add(f,scale(g,-1))
    assert add(mul(add(I,scale(f,-1)),tri('FGH')),mul(f,tri('EFG')),scale(mul(gap,W),-1))=={}
    zz=add(f,const(-F(4,5)))
    B=add(scale(mul(f,f,f),-F(1275,5000)),scale(mul(f,f),-F(1565,5000)),scale(f,F(5003,5000)),const(-F(2349,5000)))
    assert add(B,scale(mul(zz,zz,zz),F(51,200)),scale(mul(zz,zz),F(37,40)),scale(zz,-F(51,5000)),const(F(1,5000)))=={}
    assert -F(1,5000)+F(51,5000)**2/(4*F(437,500))==-F(14879,87400000)<0
    assert s-F(609,2000)**2==F(1119,4000000)>0
    assert F(121,250)-(1-F(609,2000))**2==F(1119,4000000)>0
    assert FM+s+(1-FM)*F(7,25)-s/F(7,25)<T
    assert F(149,20)*s>T
    print('PASS',total,'fixed terms and the analytic comparisons')

if __name__=='__main__': verify()
