"""Exact manuscript-only replay for N7_HEPTAGON_ONE_EAR.md."""
from fractions import Fraction as F
from functools import lru_cache
from itertools import combinations
from pathlib import Path
import re
N=13;Z=(0,)*N;s=F(93,1000);K=F(149,20)
eta=F(93,790);ell=F(7347,69700);LABELS='ABCDEFGHOP'
def const(c):
    c=F(c);return {Z:c} if c else {}
def add(*ps):
    out={}
    for p in ps:
        for ex,co in p.items():out[ex]=out.get(ex,F(0))+co
    return {ex:co for ex,co in out.items() if co}
def scale(p,c):
    c=F(c);return {ex:co*c for ex,co in p.items() if co*c}
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
    ex=[0]*N;ex[i]=1;return {tuple(ex):F(1)}
vs=[var(i) for i in range(N)]
a,b,c,d,e,f,g,h,z,x,y,u,v=vs;I=const(1);O=const(0)
P=[(O,a),(b,O),(c,O),(I,d),(I,e),(f,I),(g,z),(O,h),(x,y),(u,v)]
def det(i,j,k):
    A,B,C=P[i],P[j],P[k]
    return add(mul(add(B[0],scale(A[0],-1)),add(C[1],scale(A[1],-1))),
               scale(mul(add(B[1],scale(A[1],-1)),add(C[0],scale(A[0],-1))),-1))
def quad(word):
    i,j,k,l=(LABELS.index(ch) for ch in word)
    return add(det(i,j,k),det(i,k,l))
def canonical(tri,sn=1):
    inv=sum(tri[i]>tri[j] for i in range(3) for j in range(i+1,3))
    return tuple(sorted(tri)),sn*(-1)**inv
def put(known,tri,sn):
    key,value=canonical(tri,sn)
    if key in known:
        assert known[key]==value,(tri,value,known[key]);return False
    known[key]=value;return True
def get(known,tri):
    key,sn=canonical(tri);return sn*known.get(key,0)
def inside(known,poly,k):
    return all(get(known,(i,j,k))>0 for i,j in zip(poly,poly[1:]+poly[:1]))

HERE=Path(__file__).parent
def block(text,name):
    matches=re.findall(r'^```'+re.escape(name)+r'\n(.*?)^```$',text,re.M|re.S)
    assert len(matches)==1,(name,len(matches))
    return matches[0].strip()
def starting():
    known={}
    for tri in combinations('ABCDEFH',3):put(known,tuple(LABELS.index(ch) for ch in tri),1)
    for point,cell in [('G','HABC'),('O','HCEF'),('P','CDE')]:
        for hull in ('ABCDEFH',cell):
            for i,j in zip(hull,hull[1:]+hull[:1]):
                put(known,(LABELS.index(i),LABELS.index(j),LABELS.index(point)),1)
    return known
def word_get(known,word):return get(known,tuple(LABELS.index(ch) for ch in word))
def replay(known,word,target,sign):
    assert len(set(word))==len(word)==5 and len(set(target))==len(target)==3
    A,B,C,D,E=word
    pairs=[(A+B+C,A+D+E,1),(A+B+D,A+C+E,-1),(A+B+E,A+C+D,1)]
    values=[co*word_get(known,I)*word_get(known,J) for I,J,co in pairs]
    assert values.count(0)==1 and len(set(v for v in values if v))==1
    I,J,co=pairs[values.index(0)];wanted=-next(v for v in values if v)
    it=tuple(LABELS.index(ch) for ch in I);jt=tuple(LABELS.index(ch) for ch in J);tt=tuple(LABELS.index(ch) for ch in target)
    if canonical(it)[0]==canonical(tt)[0]:
        assert not get(known,it) and co*get(known,jt)*sign*canonical(it)[1]*canonical(tt)[1]==wanted
    else:
        assert canonical(jt)[0]==canonical(tt)[0] and not get(known,jt)
        assert co*get(known,it)*sign*canonical(jt)[1]*canonical(tt)[1]==wanted
    put(known,tt,sign)
def known_for(row,text=None):
    if text is None:text=(HERE/'N7_HEPTAGON_ONE_EAR.md').read_text()
    known=starting();put(known,(3,5,9),1 if row=='R1' else -1)
    for line in block(text,'n7-ear-'+row+'-trace').splitlines():
        op,word,target,sign=line.split();assert op=='plu';replay(known,word,target,int(sign))
    return known
Fmax=1-ell;h0=4*s/Fmax
LOW=[eta,ell,ell,eta,h0,ell,ell,h0,eta,ell,eta,ell,eta]
HIGH=[1-s,1-4*s/(1-s),Fmax,1-2*s,1-s,Fmax,Fmax,F(1),1-s,Fmax,1-s,Fmax,1-s]
AFF=[]
for w,lo,hi in zip(vs,LOW,HIGH):AFF.extend([add(w,const(-lo)),add(const(hi),scale(w,-1))])
AFF.extend([add(h,scale(a,-1),const(-s)),add(const(F(697,790)),scale(h,-1),a),
            add(e,scale(d,-1),const(-s)),add(const(F(697,790)),scale(e,-1),d),
            add(c,scale(b,-1),const(-F(117,1000))),add(const(F(79,100)),scale(c,-1),b),
            add(f,scale(b,-1)),add(c,scale(f,-1)),add(h,scale(e,-1)),add(e,scale(a,-1))])
assert len(AFF)==36
def factor(name,known):
    if '*' in name:return mul(*(factor(n,known) for n in name.split('*')))
    if name.startswith('L') and name[1:].isdigit():return AFF[int(name[1:])]
    if name=='EL':return add(mul(h,c),const(-F(29,5)*s))
    if name=='ER':return add(mul(e,add(I,scale(b,-1))),const(-K*s))
    if name=='CCDE_1':
        assert inside(known,[2,3,4],9)
        return add(det(2,3,4),const(-3*s))
    if name in ['QCDEF_1','QCDEG_1','QCDEO_1']:
        word=name[1:5];poly=[LABELS.index(ch) for ch in word]
        assert all(get(known,tuple(poly[i] for i in tri))>0 for tri in combinations(range(4),3))
        assert inside(known,poly,9)
        return add(quad(word),const(-F(24,5)*s))
    if name=='F5_EHACD':
        return add(det(2,3,4),scale(add(d,mul(add(h,scale(e,-1)),add(I,scale(c,-1)))),11*s))
    assert len(name)==4 and name[-1] in '+-',name
    tri=tuple(LABELS.index(ch) for ch in name[:3]);sg=1 if name[-1]=='+' else -1
    assert get(known,tri)==sg,name
    return add(scale(det(*tri),sg),const(-s))
def upper(poly):
    total=F(0)
    for ex,co in poly.items():
        mon=F(1)
        for bound,power in zip(HIGH if co>0 else LOW,ex):mon*=bound**power
        total+=co*mon
    return total
def verify():
    text=(HERE/'N7_HEPTAGON_ONE_EAR.md').read_text();total=0;deductions=0
    for row in ['R1','R2']:
        known=known_for(row,text);deductions+=len(block(text,'n7-ear-'+row+'-trace').splitlines())
        section=text.split('### Row '+row+'\n',1)[1]
        entries=[line.split() for line in block(section,'n7-ear-'+row+'-sum').splitlines()]
        W={}
        for i,(index,weight,name) in enumerate(entries,1):
            assert int(index)==i and int(weight)>0
            poly=factor(name,known);assert all(sum(ex)<=3 for ex in poly)
            W=add(W,scale(poly,int(weight)))
        shown=F(re.search(r'Exact upper bound: `([^`]+)`',section).group(1))
        assert upper(W)==shown<0,(row,upper(W),shown);total+=len(entries)
        print('PASS',row,len(entries),'printed cubic terms, exact bound',shown)
    assert deductions==52
    assert total==int(re.search(r'contain\s+(\d+) positive integer terms',text).group(1))
    print('PASS both DFP signs, 52 explicit Plucker deductions,',total,'integer terms.')
if __name__=='__main__':verify()
