"""Verify the fixed sums in N7_THREE_FIVE_UPPER_HEIGHT.md.

The checker reads the printed rows, reconstructs all factors using only
standard-library rational arithmetic, and validates every sign/occupancy.
"""
from fractions import Fraction as F
from functools import lru_cache
from itertools import combinations
from pathlib import Path
import re

N=13; Z=(0,)*N; s=F(93,1000); K=F(149,20)
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
CAPS=[[(i+j)%8 for j in range(4)] for i in range(8)]
CAPS += [[(i+j)%8 for j in range(3)] for i in range(8)]
LONG=['AEF','BEF','ABE','ABF','CDG','CGH','CDH','DGH']
CAPS += [[LABELS.index(ch) for ch in word] for word in LONG]

ARCS=['ABC','BCD','CDE','DEF','EFG','GHA','HAB']
TREE=['BHO+','BHO-,DHO-','BHO-,DHO+,EHP+','BHO-,DHO+,EHP-,AGO+',
      'BHO-,DHO+,EHP-,AGO-,BGO-,CHO+',
      'BHO-,DHO+,EHP-,AGO-,BGO-,CHO-,CFP+',
      'BHO-,DHO+,EHP-,AGO-,BGO-,CHO-,CFP-',
      'BHO-,DHO+,EHP-,AGO-,BGO+,CFP-',
      'BHO-,DHO+,EHP-,AGO-,BGO+,CFP+,BFP+',
      'BHO-,DHO+,EHP-,AGO-,BGO+,CFP+,BFP-']
def transport(arc,choices):
    start=LABELS.index(arc[0]);reflection=(start%2==0)
    perm=[(start+7-i)%8 if reflection else (i+start-5)%8 for i in range(8)]
    perm += [9,8] if reflection else [8,9]
    out=[]
    for token in choices.split(','):
        tri=[perm[LABELS.index(ch)] for ch in token[:3]]
        key,sn=canonical(tri,(1 if token[-1]=='+' else -1)*(-1 if reflection else 1))
        out.append(''.join(LABELS[i] for i in key)+('+' if sn>0 else '-'))
    return ','.join(out)
ROWS={};GEOMETRIC={}
for arc in ARCS:
    for index,choices in enumerate(TREE,1):
        name=arc+str(index)
        if name in ('DEF1','GHA4'):GEOMETRIC[name]=transport(arc,choices);continue
        if index==3 and arc in ('BCD','CDE','GHA'):
            ROWS[name+'a']=transport(arc,choices+',BGO+')
            ROWS[name+'b']=transport(arc,choices+',BGO-')
        else:ROWS[name]=transport(arc,choices)
assert len(ROWS)==71

@lru_cache(None)
def signs(row):
    arc=row[:3];assert arc in ARCS
    known={}
    for tri in combinations(range(8),3):put(known,tri,1)
    for i in range(8):put(known,(i,8,9),1 if LABELS[i] in arc else -1)
    hept=[0,1,2,3,4,5,7]
    first=LABELS.index(arc[0]);cap=[(first-1+i)%8 for i in range(5)]
    for k in (8,9):
        for poly in (hept,cap):
            for i,j in zip(poly,poly[1:]+poly[:1]):put(known,(i,j,k),1)
        put(known,(first,(first+2)%8,k),1)
    # Endpoint-chord consequence of each capacity-one four-vertex cap.
    for i in range(8):
        j=(i+3)%8;di=1 if LABELS[i] in arc else -1;dj=1 if LABELS[j] in arc else -1
        if di!=dj:put(known,(i,j,8 if di<dj else 9),1)
    if not row.endswith('BASE'):
        choices=ROWS[row] if row in ROWS else GEOMETRIC[row]
        for token in choices.split(','):
            put(known,tuple(LABELS.index(ch) for ch in token[:3]),1 if token[-1]=='+' else -1)
    changed=True
    while changed:
        changed=False
        for i,j in combinations(range(8),2):
            di=1 if LABELS[i] in arc else -1;dj=1 if LABELS[j] in arc else -1
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
                assert min(ss)<1,('two points in a capacity-one polygon',row,poly)
                if min(ss)>=0 and ss.count(0)==1:
                    i,j=edges[ss.index(0)];changed|=put(known,(i,j,l),-1)
    return known

@lru_cache(None)
def ranges(row):
    known=signs(row)
    occupants=[k for k in (8,9) if inside(known,[0,6,7],k)]
    assert len(occupants)<=1
    h0=4*s/(1-ell);h1=1-s;f0=4*s/(1-eta);x0=s/(h1-eta);g1=1-ell-s/(1-h0)
    low=[eta,x0,ell,eta,h0,f0,x0,h0,h0+s,x0,eta,x0,eta]
    high=[1-4*s,1-ell,1-ell,h1,1,1-ell,g1,h1,1,1-ell,1-s,1-ell,1-s]
    if occupants:
        h0=F(257,500);h1=F(203,250);f0=K*s/(1-eta)
        x0=s/(h1-eta);g1=1-ell-s/(1-h0);e0=eta+s/(1-f0)
        low=[eta,x0,f0,eta,e0,f0,3*x0,h0,h0+s,x0,eta,x0,eta]
        high=[1-K*s,1-ell,1-ell,h1,1,1-ell,g1,h1,1,1-ell,1-s,1-ell,1-s]
    t=F(31,251);o=F(31657,55000)
    projected_low=[t,t,1-o,t,1-o,1-o,t,1-o]
    projected_high=[o,o,1-t,o,1-t,1-t,o,1-t]
    for i in range(8):
        low[i]=max(low[i],projected_low[i]);high[i]=min(high[i],projected_high[i])
    low[8]=max(low[8],low[7]+s)
    for i in (9,11):low[i]=max(low[i],t);high[i]=min(high[i],1-t)
    for i in (10,12):low[i]=max(low[i],t)
    # Both choices below are valid by the uniform ordinate lemma.  This
    # deterministic selection reproduces the printed affine constants.
    for point,coordinate in [(8,10),(9,12)]:
        for tri in combinations(range(8),3):
            if inside(known,list(tri),point) and (set(tri)<=set([0,1,2,3,4,7]) or set(tri)<=set([0,1,5,6,7])):
                high[coordinate]=min(high[coordinate],1-t)
    return low,high,max(x0,t),occupants

@lru_cache(None)
def affines(row):
    arc=row[:3];low,high,x0,occupants=ranges(row);L=[]
    for i,w in enumerate(vs):L.extend([add(w,const(-low[i])),add(const(high[i]),scale(w,-1))])
    o=F(31657,55000);span=F(753,1000);gap=F(21,250)
    L.extend([
        add(h,scale(a,-1),const(-s/o)),add(const(span),scale(h,-1),a),
        add(e,scale(d,-1),const(-s/o)),add(const(span),scale(e,-1),d),
        add(c,scale(b,-1),const(-s/o)),add(const(span),scale(c,-1),b),
        add(f,scale(b,-1),const(-gap)),add(c,scale(f,-1)),add(f,scale(g,-1),const(-s/o)),
        add(h,scale(d,-1),const(-gap)),add(e,scale(a,-1),const(-gap)),add(z,scale(h,-1),const(-s))])
    for i,j in [(0,7),(3,4)]:
        di=1 if LABELS[i] in arc else -1;dj=1 if LABELS[j] in arc else -1
        if di!=dj:
            direction=1 if dj>di else -1
            L.append(add(scale(add(u,scale(x,-1)),direction),const(-2*(x0 if (i,j)==(0,7) else ell))))
    if ('B' in arc)!=('C' in arc):
        L.append(add(scale(add(v,scale(y,-1)),-1 if 'C' in arc else 1),const(-2*eta)))
    for k in occupants:L.append(add(g,scale(P[k][0],-1),const(-2*x0)))
    L.extend([add(h,scale(e,-1)),add(c,scale(g,-1),const(-gap))])
    return L

@lru_cache(None)
def factor(name,row):
    if '*' in name:return mul(*(factor(part,row) for part in name.split('*')))
    if name.startswith('L'):return affines(row)[int(name[1:])]
    if name in ('EP','EL','ER','ELK','ERK'):
        stem=name[:2];threshold=K if name.endswith('K') else F(4)
        if name=='ELK':assert any(inside(signs(row),tri,k) for tri in ([0,1,2],[0,1,7]) for k in (8,9))
        if name=='ERK':assert any(inside(signs(row),tri,k) for tri in ([1,2,3],[2,3,4]) for k in (8,9))
        p={'EP':mul(f,add(I,scale(a,-1))),'EL':mul(h,c),'ER':mul(e,add(I,scale(b,-1)))}[stem]
        return add(p,const(-threshold*s))
    if name in ('SUP','SUPK'):
        t=K if name=='SUPK' else F(4)
        if name=='SUPK':assert any(inside(signs(row),tri,k) for tri in ([0,6,7],[5,6,7]) for k in (8,9))
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
    if name.startswith('U'):
        word=name[1:]
        if word in LONG:return add(const(F(69,100)),scale(det(*(LABELS.index(ch) for ch in word)),-1))
        assert word in ('ABCD','CDEF','EFGH','GHAB');return add(const(8*s),scale(quad(word),-1))
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
        assert all(get(signs(row),(a,b,8))*get(signs(row),(a,b,9))<0 for a,b in [(i,k),(j,l)])
        i,j=(LABELS.index(ch) for ch in diag);sn=get(signs(row),(i,j,8));assert sn in (-1,1)
        return add(quad(word),const(-F(29,5)*s),scale(add(det(i,j,8),scale(det(i,j,9),-1)),-sn))
    assert len(name)==4 and name[-1] in '+-',name
    tri=tuple(LABELS.index(ch) for ch in name[:3]);sn=1 if name[-1]=='+' else -1
    assert get(signs(row),tri)==sn,(row,name)
    return add(scale(det(*tri),sn),const(-s))

def upper(poly,row):
    low,high,_,_=ranges(row);out=F(0)
    for ex,co in poly.items():
        mon=F(1)
        for endpoint,power in zip(high if co>0 else low,ex):mon*=endpoint**power
        out+=co*mon
    return out

def verify():
    text=Path(__file__).with_name('N7_THREE_FIVE_UPPER_HEIGHT.md').read_text()
    records=re.findall(r'^\| ([A-H]{3}\d+[ab]?) \| (\d+) \| (-\d+/\d+) \|$',text,re.M)
    assert len(records)==71 and {r[0] for r in records}==set(ROWS)
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
        print('PASS',row,count,'fixed cubic terms; exact negative bound verified')
    assert 'FHO-' in GEOMETRIC['DEF1'] and 'FHP-' in GEOMETRIC['GHA4']
    # Both are positive heptagon-edge determinants before any row choice.
    assert get(signs('DEFBASE'),(5,7,8))==1
    assert get(signs('GHABASE'),(5,7,9))==1
    print('PASS',total,'terms, 71 polynomial leaves, two direct sign contradictions')

if __name__=='__main__':verify()

