"""Read N7_THREE_FIVE_TOP.md and verify its eleven fixed cubic sums.

Only standard-library rational arithmetic is used.  Signs are rebuilt
from the printed geometric rules, and every occupancy/spread factor is
checked against its actual edge tests.
"""
from fractions import Fraction as F
from functools import lru_cache
from itertools import combinations
from pathlib import Path
import re

N=13; Z=(0,)*N; s=F(93,1000); K=F(149,20)
eta=F(93,790);ell=F(7347,69700);LABELS='ABCDEFGHOP'
ROWS={
 'R1':'BHO+',
 'R2':'BHO-,DHO-',
 'R3':'BHO-,DHO+,EHP+,BGO+',
 'R4':'BHO-,DHO+,EHP+,BGO-',
 'R5':'BHO-,DHO+,EHP-,AGO+',
 'R6':'BHO-,DHO+,EHP-,AGO-,BGO-,CHO+',
 'R7':'BHO-,DHO+,EHP-,AGO-,BGO-,CHO-,CFP+',
 'R8':'BHO-,DHO+,EHP-,AGO-,BGO-,CHO-,CFP-',
 'R9':'BHO-,DHO+,EHP-,AGO-,BGO+,CFP-',
 'R10':'BHO-,DHO+,EHP-,AGO-,BGO+,CFP+,BFP+',
 'R11':'BHO-,DHO+,EHP-,AGO-,BGO+,CFP+,BFP-',
}

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
CAPS=[[(i+j)%8 for j in range(4)] for i in range(8)]
CAPS += [[(i+j)%8 for j in range(3)] for i in range(8)]
CAPS += [[0,4,5],[1,4,5]]

@lru_cache(None)
def signs(row):
    known={}
    for tri in combinations(range(8),3):put(known,tri,1)
    for i in range(8):put(known,(i,8,9),1 if i in (5,6,7) else -1)
    for k in (8,9):
        hept=[0,1,2,3,4,5,7]
        for i,j in zip(hept,hept[1:]+hept[:1]):put(known,(i,j,k),1)
        # Both points lie in the five-vertex cap AEFGH and below FH.
        for i,j in [(0,4),(4,5),(5,6),(6,7),(7,0),(5,7)]:put(known,(i,j,k),1)
    for word,sn in [('AFO',1),('AFP',-1),('DGO',1),('CHP',-1),
                    ('AGP',-1),('BGP',-1),('BHP',-1),('EHO',1)]:
        put(known,tuple(LABELS.index(ch) for ch in word),sn)
    if row!='BASE':
        for token in ROWS[row].split(','):
            put(known,tuple(LABELS.index(ch) for ch in token[:3]),1 if token[-1]=='+' else -1)
    changed=True
    while changed:
        changed=False
        for i,j in combinations(range(8),2):
            di=1 if i in (5,6,7) else -1;dj=1 if j in (5,6,7) else -1
            if di==dj:continue
            direction=1 if di>dj else -1
            so,sp=get(known,(i,j,8)),get(known,(i,j,9))
            if so==direction:changed|=put(known,(i,j,9),so)
            if sp==-direction:changed|=put(known,(i,j,8),sp)
        for k in (8,9):
            containers=[list(tri) for tri in combinations(range(8),3) if inside(known,list(tri),k)]
            for i,j in combinations(range(8),2):
                if get(known,(i,j,k)):continue
                for tri in containers:
                    ss=[0 if vertex in (i,j) else get(known,(i,j,vertex)) for vertex in tri]
                    sn=1 if min(ss)>=0 and max(ss)>0 else -1 if max(ss)<=0 and min(ss)<0 else 0
                    if sn:changed|=put(known,(i,j,k),sn);break
        for poly in CAPS:
            edges=list(zip(poly,poly[1:]+poly[:1]))
            for k,l in [(8,9),(9,8)]:
                if not inside(known,poly,k):continue
                ss=[get(known,(i,j,l)) for i,j in edges]
                assert min(ss)<1,('two points in a capacity-one cap',row,poly)
                if min(ss)>=0 and ss.count(0)==1:
                    i,j=edges[ss.index(0)];changed|=put(known,(i,j,l),-1)
    return known

@lru_cache(None)
def ranges(row):
    h0=4*s/(1-ell);h1=1-s;f0=4*s/(1-eta);x0=s/(h1-eta);g1=1-ell-s/(1-h0)
    low=[eta,x0,ell,eta,h0,f0,x0,h0,h0+s,x0,eta,x0,eta]
    high=[1-4*s,1-ell,1-ell,h1,1,1-ell,g1,h1,1,1-ell,1-s,1-ell,1-s]
    if row=='R5':
        assert inside(signs(row),[0,6,7],8)
        h0=F(257,500);h1=F(203,250);f0=K*s/(1-eta)
        x0=s/(h1-eta);g1=1-ell-s/(1-h0);e0=eta+s/(1-f0)
        low=[eta,x0,f0,eta,e0,f0,3*x0,h0,h0+s,x0,eta,x0,eta]
        high=[1-K*s,1-ell,1-ell,h1,1,1-ell,g1,h1,1,1-ell,1-s,1-ell,1-s]
    return low,high,x0

@lru_cache(None)
def affines(row):
    low,high,x0=ranges(row);L=[]
    for i,w in enumerate(vs):L.extend([add(w,const(-low[i])),add(const(high[i]),scale(w,-1))])
    L.extend([
        add(h,scale(a,-1),const(-s)),add(const(F(697,790)),scale(h,-1),a),
        add(e,scale(d,-1),const(-s)),add(const(F(697,790)),scale(e,-1),d),
        add(c,scale(b,-1),const(-F(117,1000))),add(const(F(79,100)),scale(c,-1),b),
        add(f,scale(b,-1)),add(c,scale(f,-1)),add(f,scale(g,-1)),
        add(h,scale(d,-1)),add(e,scale(a,-1)),add(z,scale(h,-1),const(-s)),
        add(u,scale(x,-1),const(-2*x0))])
    if row=='R5':L.append(add(g,scale(x,-1),const(-2*x0)))
    return L

@lru_cache(None)
def factor(name,row):
    if '*' in name:return mul(*(factor(part,row) for part in name.split('*')))
    if name.startswith('L'):return affines(row)[int(name[1:])]
    if name in ('EP','EL','ER'):
        p={'EP':mul(f,add(I,scale(a,-1))),'EL':mul(h,c),'ER':mul(e,add(I,scale(b,-1)))}[name]
        return add(p,const(-4*s))
    if name in ('SUP','SUPK'):
        t=K if name=='SUPK' else F(4)
        if name=='SUPK':assert inside(signs(row),[0,6,7],8)
        return add(mul(f,f,add(z,scale(a,-1))),scale(mul(f,g,add(I,scale(a,-1))),-1),scale(add(f,scale(g,-1)),-t*s))
    if name=='P_AHGFE':return add(mul(f,add(I,scale(e,-1))),mul(add(I,scale(f,-1)),add(I,scale(a,-1),const(-11*s))))
    if name=='P_BCDEF':return add(mul(e,add(I,scale(f,-1))),mul(add(I,scale(e,-1)),add(I,scale(b,-1),const(-11*s))))
    if name=='P_DEFGH':return add(mul(g,add(h,scale(d,-1))),z,scale(h,-1),scale(g,-11*s))
    if name=='P_HABCD':return add(mul(add(h,const(-11*s)),add(I,scale(c,-1))),mul(d,c))
    if name=='P_ABCDE':return add(mul(add(e,const(-11*s)),b),mul(a,add(I,scale(b,-1))))
    if name=='UBR':return add(const(9*s),scale(mul(e,add(I,scale(b,-1))),-1))
    if name=='UTR':
        return add(scale(add(f,scale(g,-1)),9*s),
                   scale(mul(add(I,scale(g,-1)),add(mul(add(I,scale(d,-1)),add(f,scale(g,-1))),mul(add(I,scale(z,-1)),add(I,scale(f,-1))))),-1))
    if name in ('UAEF','UBEF'):
        tri=tuple(LABELS.index(ch) for ch in name[1:]);return add(const(F(69,100)),scale(det(*tri),-1))
    if name.startswith('U'):
        assert name[1:] in ('ABCD','CDEF','EFGH','GHAB')
        return add(const(8*s),scale(quad(name[1:]),-1))
    if name.startswith('C') and '_' in name:
        word,count=name[1:].split('_');tri=[LABELS.index(ch) for ch in word];count=int(count)
        assert count in (1,2) and sum(inside(signs(row),tri,k) for k in (8,9))>=count
        return add(det(*tri),const(-(K if count==2 else F(3))*s))
    if name.startswith('Q'):
        word=name[1:];poly=[LABELS.index(ch) for ch in word]
        assert all(inside(signs(row),poly,k) for k in (8,9))
        return add(quad(word),const(-8*s))
    if name.startswith('R'):
        word,diag=name[1:].split('_');poly=[LABELS.index(ch) for ch in word]
        assert all(inside(signs(row),poly,k) for k in (8,9))
        i,j,k,l=poly
        assert all(get(signs(row),(i,j,8))*get(signs(row),(i,j,9))<0 for i,j in [(i,k),(j,l)])
        i,j=(LABELS.index(ch) for ch in diag);sn=get(signs(row),(i,j,8));assert sn in (-1,1)
        return add(quad(word),const(-F(29,5)*s),scale(add(det(i,j,8),scale(det(i,j,9),-1)),-sn))
    assert len(name)==4 and name[-1] in '+-',name
    tri=tuple(LABELS.index(ch) for ch in name[:3]);sn=1 if name[-1]=='+' else -1
    assert get(signs(row),tri)==sn,(row,name)
    return add(scale(det(*tri),sn),const(-s))

def upper(poly,row):
    low,high,_=ranges(row);out=F(0)
    for ex,co in poly.items():
        mon=F(1)
        for endpoint,power in zip(high if co>0 else low,ex):mon*=endpoint**power
        out+=co*mon
    return out

def verify():
    text=Path(__file__).with_name('N7_THREE_FIVE_TOP.md').read_text()
    records=re.findall(r'^\| (R\d+) \| (\d+) \| (-\d+/\d+) \|$',text,re.M)
    assert len(records)==11 and {r[0] for r in records}==set(ROWS)
    total=0
    for row,count,bound_text in records:
        count,bound=int(count),F(bound_text)
        section=text.split('### Row '+row+'\n',1)[1].split('\n### ',1)[0]
        entries=re.findall(r'^\| (\d+) \| (\d+) \| ([A-Z0-9+*_\-]+) \|$',section,re.M)
        assert len(entries)==count,(row,len(entries),count)
        W={}
        for i,(index,weight,name) in enumerate(entries,1):
            assert int(index)==i and int(weight)>0
            p=factor(name,row);assert all(sum(ex)<=3 for ex in p)
            W=add(W,scale(p,int(weight)))
        assert upper(W,row)==bound and bound<0,(row,upper(W,row),bound)
        total+=count
        print('PASS',row,count,'printed terms; exact bound',bound)
    # Exact identities for the two additional common signs.
    assert add(mul(f,det(0,6,9)),scale(mul(g,det(0,5,9)),-1),mul(u,det(0,5,6)))=={}
    assert add(mul(z,det(1,7,9)),scale(mul(h,det(1,6,9)),-1),mul(v,add(mul(b,add(z,scale(h,-1))),mul(h,g))))=={}
    def qp(t):return (1-ell)*(t-eta)*(1-t)-3*s*(1-t)-s*(t-eta)
    def qprime(t):return (1-ell)*(1+eta-2*t)+2*s
    assert qp(F(257,500))==F(-216669513,1376575000000)<0
    assert qp(F(203,250))==F(-87402983,344143750000)<0
    assert qprime(F(257,500))>0 and qprime(F(203,250))<0
    print('PASS',total,'fixed cubic terms, all factor signs, occupancies, and spread witnesses')

if __name__=='__main__':verify()
