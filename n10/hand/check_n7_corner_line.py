"""Check the fixed sums in N7_CORNER_LINE.md using only rational arithmetic.

Signs follow the displayed geometric propagation rules, and each used
occupancy and spread factor is checked against its actual edge signs.
"""
from fractions import Fraction as F
from functools import lru_cache
from itertools import combinations, product
from pathlib import Path
import re
N=13; Z=(0,)*N; s=F(93,1000); K=F(149,20)
eta=F(93,790);ell=F(7347,69700);LABELS='ABCDEFGHOP'
ROWS={'R1': 'ADO+,BGO+,CFP+,EHP+,BHO+', 'R2': 'ADO+,BGO+,CFP+,EHP+,BHO-', 'R3': 'ADO+,BGO+,CFP+,EHP-', 'R4': 'ADO+,BGO+,CFP-,EHP+', 'R5': 'ADO+,BGO+,CFP-,EHP-', 'R6': 'ADO+,BGO-,CFP+,EHP-', 'R7': 'ADO+,BGO-,CFP-,EHP+', 'R8': 'ADO+,BGO-,CFP-,EHP-', 'R9': 'ADO-,BGO+,CFP+,EHP+,BHO+', 'R10': 'ADO-,BGO+,CFP+,EHP+,BHO-', 'R11': 'ADO-,BGO+,CFP+,EHP-', 'R12': 'ADO-,BGO+,CFP-,EHP+', 'R13': 'ADO-,BGO+,CFP-,EHP-,BHO+', 'R14': 'ADO-,BGO+,CFP-,EHP-,BHO-', 'R15': 'ADO-,BGO-,CFP+,EHP+', 'R16': 'ADO-,BGO-,CFP+,EHP-', 'R17': 'ADO-,BGO-,CFP-,EHP+', 'R18': 'ADO-,BGO-,CFP-,EHP-'}

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

ARC={0,5,6,7}
CAPS=[[(i+j)%8 for j in range(4)] for i in range(8)]
CAPS += [[(i+j)%8 for j in range(3)] for i in range(8)]
CAPS += [[0,4,5],[1,4,5],[0,1,4],[0,1,5]]
@lru_cache(None)
def signs(row):
    known={}
    for tri in combinations(range(8),3):put(known,tri,1)
    for i in range(8):put(known,(i,8,9),1 if i in ARC else -1)
    for k in (8,9):
        hept=[0,1,2,3,4,5,7]
        for i,j in zip(hept,hept[1:]+hept[:1]):put(known,(i,j,k),1)
        for i,j in [(0,1),(1,4),(4,5),(5,0)]:put(known,(i,j,k),1)
    for word,sn in [('AEO',-1),('AEP',1),('BFO',1),('BFP',-1),('BHP',-1)]:
        put(known,tuple(LABELS.index(ch) for ch in word),sn)
    for i in range(8):
        j=(i+3)%8;di=1 if i in ARC else -1;dj=1 if j in ARC else -1
        if di!=dj:put(known,(i,j,8 if di<dj else 9),1)
    if row!='BASE':
        for token in ROWS[row].split(','):
            put(known,tuple(LABELS.index(ch) for ch in token[:3]),1 if token[-1]=='+' else -1)
    changed=True
    while changed:
        changed=False
        for k in (8,9):
            if get(known,(1,6,k))<0:changed|=put(known,(1,7,k),-1)
            if get(known,(2,5,k))>0:changed|=put(known,(3,5,k),1)
        for i,j in combinations(range(8),2):
            di=1 if i in ARC else -1;dj=1 if j in ARC else -1
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
                assert min(ss)<1,('capacity contradiction',row,poly)
                if min(ss)>=0 and ss.count(0)==1:
                    i,j=edges[ss.index(0)];changed|=put(known,(i,j,l),-1)
    return known

@lru_cache(None)
def ranges(row):
    h0=4*s/(1-ell);h1=1-s;f0=4*s/(1-eta);x0=s/(h1-eta);g1=1-ell-s/(1-h0)
    lo=[eta,x0,ell,eta,h0,f0,x0,h0,h0+s,x0,eta,x0,eta]
    hi=[1-4*s,1-ell,1-ell,h1,F(1),1-ell,g1,h1,F(1),1-ell,1-s,1-ell,1-s]
    assert not any(inside(signs(row),[0,6,7],k) for k in (8,9))
    hi[6]=min(hi[6],F(3,5))
    hi[9]=min(hi[9],hi[11]-2*s);lo[11]=max(lo[11],lo[9]+2*s)
    hi[10]=min(hi[10],hi[12]-2*s);lo[12]=max(lo[12],lo[10]+2*s)
    assert all(0<a<b<=1 for a,b in zip(lo,hi))
    return lo,hi,x0

@lru_cache(None)
def affines(row):
    lo,hi,x0=ranges(row);L=[]
    for i,w in enumerate(vs):L.extend([add(w,const(-lo[i])),add(const(hi[i]),scale(w,-1))])
    L.extend([
        add(h,scale(a,-1),const(-s)),add(const(F(697,790)),scale(h,-1),a),
        add(e,scale(d,-1),const(-s)),add(const(F(697,790)),scale(e,-1),d),
        add(c,scale(b,-1),const(-F(117,1000))),add(const(F(79,100)),scale(c,-1),b),
        add(f,scale(b,-1)),add(c,scale(f,-1)),add(f,scale(g,-1)),
        add(h,scale(d,-1)),add(e,scale(a,-1)),add(z,scale(h,-1),const(-s)),
        add(u,scale(x,-1),const(-2*s)),add(v,scale(y,-1),const(-2*s))])
    assert len(L)==40
    return L
@lru_cache(None)
def factor(name,row):
    if '*' in name:return mul(*(factor(part,row) for part in name.split('*')))
    if name.startswith('L'):return affines(row)[int(name[1:])]
    if name in ('S_AE','S_BF'):
        W=add(I,scale(mul(add(e,scale(a,-1)),add(f,scale(b,-1))),-1))
        U=add(u,scale(x,-1));V=add(v,scale(y,-1))
        gap=add(V,scale(mul(add(e,scale(a,-1)),U),-1)) if name=='S_AE' else add(U,scale(mul(add(f,scale(b,-1)),V),-1))
        return add(W,const(-6*s),scale(gap,-1))
    if name=='ELK':
        assert any(inside(signs(row),list(tri),k) for tri in [(0,1,2),(0,1,7)] for k in (8,9))
        return add(mul(h,c),const(-K*s))
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
    if name in ('UAEF','UBEF','UABE','UABF'):
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
    text=Path(__file__).with_name('N7_CORNER_LINE.md').read_text()
    records=re.findall(r'^\| (R\d+) \| (\d+) \| (-\d+/\d+) \|$',text,re.M)
    assert len(records)==18 and {r[0] for r in records}==set(ROWS)
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
        total+=count;print('PASS',row,count,'printed terms; exact bound',bound)
    # Sixteen oblique sign words: the good one, or exactly one printed
    # alternative for each choice of the auxiliary BHO sign.
    for word in product('+-',repeat=4):
        for auxiliary in '+-':
            assignment=dict(zip(['ADO','BGO','CFP','EHP','BHO'],[*word,auxiliary]))
            hits=[row for row,choices in ROWS.items() if all(assignment[token[:3]]==token[-1] for token in choices.split(','))]
            assert len(hits)==(0 if word==('+','-','+','+') else 1),(word,auxiliary,hits)
    for k in (8,9):
        Y=P[k][1]
        assert add(mul(z,det(1,7,k)),scale(mul(h,det(1,6,k)),-1),mul(Y,add(mul(b,add(z,scale(h,-1))),mul(h,g))))=={}
        coef=add(I,scale(c,-1),mul(d,add(c,scale(f,-1))))
        assert add(det(3,5,k),scale(mul(add(I,scale(d,-1)),det(2,5,k)),-1),scale(mul(coef,add(I,scale(Y,-1))),-1))=={}
    U=add(u,scale(x,-1));V=add(v,scale(y,-1))
    assert add(det(0,8,9),scale(det(4,8,9),-1),scale(V,-1),mul(add(e,scale(a,-1)),U))=={}
    assert add(det(5,8,9),scale(det(1,8,9),-1),scale(U,-1),mul(add(f,scale(b,-1)),V))=={}
    assert add(quad('ABEF'),scale(add(I,scale(mul(add(e,scale(a,-1)),add(f,scale(b,-1))),-1)),-1))=={}
    print('PASS',total,'fixed cubic terms, complete sign catalogue, and geometric identities')

if __name__=='__main__':verify()
