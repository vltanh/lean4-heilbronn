"""Check the fixed sums in N7_CDGH_LINE.md.

Every factor is reconstructed from the printed geometry, and the
literal case list is checked as a complete binary sign tree.
"""
from fractions import Fraction as F
from functools import lru_cache
from itertools import combinations
from pathlib import Path
import re
N=13; Z=(0,)*N; s=F(93,1000); K=F(149,20)
eta=F(93,790);ell=F(7347,69700);LABELS='ABCDEFGHOP'
ROWS={'R01': ('DEFG', 'ADP+,BGO+,CFP+,EHO+', 'chain'), 'R02': ('DEFG', 'ADP+,BGO+,CFP+,EHO-', 'chain'), 'R03': ('DEFG', 'ADP+,BGO+,CFP-,EHO+', 'chain'), 'R04': ('DEFG', 'ADP+,BGO+,CFP-,EHO-', 'chain'), 'R05a': ('DEFG', 'ADP+,BGO-,CFP+,EHO+,AFO-', 'chain'), 'R05b': ('DEFG', 'ADP+,BGO-,CFP+,EHO+,AFO+,BEP+', 'chain'), 'R05c': ('DEFG', 'ADP+,BGO-,CFP+,EHO+,AFO+,BEP-', 'chain'), 'R06': ('DEFG', 'ADP+,BGO-,CFP+,EHO-', 'chain'), 'R07': ('DEFG', 'ADP+,BGO-,CFP-,EHO+', 'chain'), 'R08': ('DEFG', 'ADP+,BGO-,CFP-,EHO-', 'chain'), 'R09': ('DEFG', 'ADP-,BGO+,CFP+,EHO+', 'chain'), 'R10': ('DEFG', 'ADP-,BGO+,CFP+,EHO-', 'chain'), 'R11': ('DEFG', 'ADP-,BGO+,CFP-,EHO+', 'chain'), 'R12': ('DEFG', 'ADP-,BGO+,CFP-,EHO-', 'chain'), 'R13': ('DEFG', 'ADP-,BGO-,CFP+,EHO+', 'chain'), 'R14': ('DEFG', 'ADP-,BGO-,CFP+,EHO-', 'chain'), 'R15': ('DEFG', 'ADP-,BGO-,CFP-,EHO+', 'chain'), 'R16': ('DEFG', 'ADP-,BGO-,CFP-,EHO-', 'chain')}
SQUARES={'SQ0': (10, [-2, -1, -1, 1, 4, -5, 1, 5, 2, -2, 4, 0, 1, 1]), 'SQ1': (10, [-1, 0, 1, 3, -4, -3, 3, -2, 3, -2, -1, 0, 3, -5]), 'SQ2': (10, [-4, 0, -2, 1, 1, 5, 1, -3, 3, -5, 0, 2, 1, 2]), 'SQ3': (10, [-1, 1, 3, 0, -1, -1, 0, -2, -5, -1, 5, 6, 1, 0]), 'SQ4': (10, [-2, 5, 4, 0, -5, 0, 0, 3, 2, -1, 0, -1, 0, 4]), 'SQ5': (10, [-1, -1, 0, 0, 4, -3, 0, 6, -1, 0, 6, 0, 0, 3]), 'SQ6': (10, [4, 2, 0, -2, -2, 1, -2, 2, -5, 4, -1, -2, -3, 1]), 'SQ7': (10, [1, -1, -1, 1, 3, -1, 1, 0, -5, 1, 1, 2, 2, -7]), 'SQ8': (50, [6, -9, -8, 3, 7, -5, 3, 19, 19, 9, -16, -32, -2, -12]), 'SQ9': (50, [-8, 2, -6, 19, 3, 0, 19, -5, -1, 5, 4, 3, -40, -3]), 'SQ10': (10, [1, 1, -1, -2, 3, -2, -2, 6, -2, 2, 5, -2, -2, 3]), 'SQ11': (10, [4, 4, -1, -3, -1, 3, -3, -2, -3, 4, -3, -1, -3, 1]), 'SQ12': (10, [0, 0, 1, 1, -3, 2, 1, 4, 3, -1, -4, -7, 1, 3]), 'SQ13': (100, [41, -54, -30, -13, 0, -34, -13, -25, 44, 9, -3, -13, -9, 8]), 'SQ14': (10, [1, 2, 0, -2, 4, -2, -2, 4, -1, 1, 5, 0, -2, 4]), 'SQ15': (20, [11, -1, -3, -4, -5, -2, -4, -1, -4, 11, -4, -7, -4, -1]), 'SQ16': (20, [1, 8, -6, 0, 1, -2, 0, -7, -7, 1, 2, 13, -2, -6]), 'SQ17': (100, [3, 12, 0, -38, -1, -1, -38, 4, -6, 3, -1, 2, 83, -6]), 'SQ18': (10, [1, -2, 1, -1, 3, -2, -1, 5, -2, 1, 5, -1, -1, 3]), 'SQ19': (20, [3, 1, -1, -4, -4, 1, -4, 6, 5, 3, -6, -13, 7, 3]), 'SQ20': (10, [4, 4, -1, -1, 2, 1, -1, -3, -3, 4, -1, -2, -6, 1]), 'SQ21': (20, [3, 2, 3, -3, 3, -1, -3, 9, -6, 3, 9, -4, -5, 10]), 'SQ22': (20, [-4, -2, -6, 2, 3, -8, 2, 1, 1, -4, 12, 10, 0, -2]), 'SQ23': (50, [11, 23, 8, -15, 22, -6, -15, -15, -6, 11, 5, 5, 7, -19])}
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


LONG=['AEF','BEF','ABE','ABF','CDG','CGH','CDH','DGH']
CAPS=[[(i+j)%8 for j in range(4)] for i in range(8)]
CAPS += [[(i+j)%8 for j in range(3)] for i in range(8)]
CAPS += [[LABELS.index(ch) for ch in word] for word in LONG]
def metadata(row):
    return (row[5:],'','chain') if row.startswith('BASE_') else ROWS[row]
@lru_cache(None)
def signs(row):
    arc,choices,model=metadata(row);arcids={LABELS.index(ch) for ch in arc};known={}
    for tri in combinations(range(8),3):put(known,tri,1)
    for i in range(8):put(known,(i,8,9),1 if i in arcids else -1)
    assert arc=='DEFG'
    for k in (8,9):
        for poly in [[0,1,2,3,4,5,7],[2,3,6,7]]:
            for i,j in zip(poly,poly[1:]+poly[:1]):put(known,(i,j,k),1)
    for word,sn in [('CGO',1),('CGP',-1),('DHO',-1),('DHP',1)]:
        put(known,tuple(LABELS.index(ch) for ch in word),sn)
    for i in range(8):
        j=(i+3)%8;di=1 if i in arcids else -1;dj=1 if j in arcids else -1
        if di!=dj:put(known,(i,j,8 if di<dj else 9),1)
    for token in choices.split(',') if choices else []:
        put(known,tuple(LABELS.index(ch) for ch in token[:3]),1 if token[-1]=='+' else -1)
    changed=True
    while changed:
        changed=False
        for k in (8,9):
            if get(known,(1,6,k))<0:changed|=put(known,(1,7,k),-1)
            if get(known,(2,5,k))>0:changed|=put(known,(3,5,k),1)
        for i,j in combinations(range(8),2):
            di=1 if i in arcids else -1;dj=1 if j in arcids else -1
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
    arc,choices,model=metadata(row)
    h0=4*s/(1-ell);h1=1-s;f0=4*s/(1-eta);x0=s/(h1-eta);g1=1-ell-s/(1-h0)
    lo=[eta,x0,ell,eta,h0,f0,x0,h0,h0+s,x0,eta,x0,eta]
    hi=[1-4*s,1-ell,1-ell,h1,F(1),1-ell,g1,h1,F(1),1-ell,1-s,1-ell,1-s]
    occupants=[k for k in (8,9) if inside(signs(row),[0,6,7],k)]
    if occupants:
        assert len(occupants)==1
        h0=F(257,500);h1=F(203,250);f0=K*s/(1-eta)
        x0=s/(h1-eta);g1=1-ell-s/(1-h0);e0=eta+s/(1-f0)
        lo=[eta,x0,f0,eta,e0,f0,3*x0,h0,h0+s,x0,eta,x0,eta]
        hi=[1-K*s,1-ell,1-ell,h1,F(1),1-ell,g1,h1,F(1),1-ell,1-s,1-ell,1-s]
    hi[6]=min(hi[6],F(3,5))
    assert model=='chain' and arc=='DEFG'
    assert not occupants
    hi[9]=min(hi[9],hi[11]-2*s);lo[11]=max(lo[11],lo[9]+2*s)
    lo[10]=max(lo[10],lo[12]+2*s);hi[12]=min(hi[12],hi[10]-2*s)
    assert all(0<a<b<=1 for a,b in zip(lo,hi)),row
    return lo,hi,x0,occupants

@lru_cache(None)
def affines(row):
    arc,choices,model=metadata(row);lo,hi,x0,occupants=ranges(row);L=[]
    for i,w in enumerate(vs):L.extend([add(w,const(-lo[i])),add(const(hi[i]),scale(w,-1))])
    L.extend([
        add(h,scale(a,-1),const(-s)),add(const(F(697,790)),scale(h,-1),a),
        add(e,scale(d,-1),const(-s)),add(const(F(697,790)),scale(e,-1),d),
        add(c,scale(b,-1),const(-F(117,1000))),add(const(F(79,100)),scale(c,-1),b),
        add(f,scale(b,-1)),add(c,scale(f,-1)),add(f,scale(g,-1)),
        add(h,scale(d,-1)),add(e,scale(a,-1)),add(z,scale(h,-1),const(-s))])
    for i,j in [(0,7),(3,4)]:
        di=1 if LABELS[i] in arc else -1;dj=1 if LABELS[j] in arc else -1
        if di!=dj:L.append(add(scale(add(u,scale(x,-1)),1 if dj>di else -1),const(-(2*x0 if (i,j)==(0,7) else 2*ell))))
    if ('B' in arc)!=('C' in arc):L.append(add(scale(add(v,scale(y,-1)),1 if 'B' in arc else -1),const(-2*eta)))
    for k in occupants:L.append(add(g,scale(P[k][0],-1),const(-2*x0)))
    L.extend([add(u,scale(x,-1),const(-2*s)),add(y,scale(v,-1),const(-2*s))])
    assert len(L)==40
    return L

@lru_cache(None)
def triangle_upper():
    out={tri:F(1) for tri in combinations(range(8),3)}
    for i in range(8):
        cap={(i+j)%8 for j in range(4)}
        B=8*s if i%2==0 else ((1-s)**2 if i in (5,7) else 9*s)
        for tri in out:
            if set(tri)<=cap:out[tri]=min(out[tri],B)
    for word in LONG:
        tri=tuple(sorted(LABELS.index(ch) for ch in word));out[tri]=min(out[tri],F(69,100))
    for word in ['ABC','ABH','BCD','CDE','AGH','FGH']:
        tri=tuple(sorted(LABELS.index(ch) for ch in word));out[tri]=min(out[tri],F(121,250))
    for word in ['DEF','EFG']:
        tri=tuple(sorted(LABELS.index(ch) for ch in word));out[tri]=min(out[tri],1-4*s)
    return out
@lru_cache(None)
def factor(name,row):
    if '*' in name:return mul(*(factor(part,row) for part in name.split('*')))
    if name.startswith('L'):return affines(row)[int(name[1:])]
    if name.startswith('SQ'):
        denom,coefficients=SQUARES[name]
        linear=add(const(F(coefficients[0],denom)),*(scale(w,F(k,denom)) for w,k in zip(vs,coefficients[1:])))
        return mul(linear,linear)
    if name.startswith('Q1_'):
        word=name[3:];poly=[LABELS.index(ch) for ch in word];known=signs(row)
        assert len(set(poly))==4 and all(get(known,tuple(poly[i] for i in tri))>0 for tri in combinations(range(4),3))
        assert sum(k not in poly and inside(known,poly,k) for k in (8,9))==1
        return add(quad(word),const(-F(24,5)*s))
    if name.startswith('F5_'):
        prefix,word,side=name.split('_');ids=[LABELS.index(ch) for ch in word]
        ordered=sorted(ids);assert len(set(ids))==5 and any(ids==ordered[k:]+ordered[:k] for k in range(5))
        A,B,C,D,E=ids;X=det(A,B,E);Y=det(A,D,E);Zp=det(A,B,D)
        if side=='X':
            bound=triangle_upper()[tuple(sorted((A,B,E)))];assert bound<F(9,10)
            return add(scale(Y,bound),scale(add(X,scale(Zp,-1)),-11*s))
        assert side=='Y';bound=triangle_upper()[tuple(sorted((A,D,E)))];assert bound<F(9,10)
        return add(scale(Zp,11*s),scale(X,-(11*s-bound)))
    if name.startswith('EAR_'):
        word=name[4:];assert word in ['ABC','ABH','BCD','CDE','AGH','FGH']
        return add(const(F(121,250)),scale(det(*(LABELS.index(ch) for ch in word)),-1))
    if name=='PAIR_BL':return add(mul(h,c),scale(det(0,1,2),-1),scale(det(0,1,7),-1),const(-2*s))
    if name=='PAIR_BR':return add(mul(e,add(I,scale(b,-1))),scale(det(1,2,3),-1),scale(det(2,3,4),-1),const(-2*s))
    if name in ('ELK','ERK'):
        pair=[(0,1,2),(0,1,7)] if name=='ELK' else [(1,2,3),(2,3,4)]
        assert any(inside(signs(row),list(tri),k) for tri in pair for k in (8,9))
        expr=mul(h,c) if name=='ELK' else mul(e,add(I,scale(b,-1)))
        return add(expr,const(-K*s))
    if name in ('EP','EL','ER'):
        p={'EP':mul(f,add(I,scale(a,-1))),'EL':mul(h,c),'ER':mul(e,add(I,scale(b,-1)))}[name]
        return add(p,const(-4*s))
    if name in ('SUP','SUPK'):
        t=K if name=='SUPK' else F(4)
        if name=='SUPK':assert any(inside(signs(row),list(tri),k) for tri in [(0,6,7),(5,6,7)] for k in (8,9))
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
    if name in tuple('U'+word for word in LONG):
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
    if name.startswith('R') or (name.startswith('S') and '_' in name):
        word,diag=name[1:].split('_');poly=[LABELS.index(ch) for ch in word]
        assert all(inside(signs(row),poly,k) for k in (8,9))
        i,j,k,l=poly
        assert all(get(signs(row),(i,j,8))*get(signs(row),(i,j,9))<0 for i,j in [(i,k),(j,l)])
        i,j=(LABELS.index(ch) for ch in diag);sn=get(signs(row),(i,j,8));assert sn in (-1,1)
        if name.startswith('S'):assert word in ('ABEF','CDGH')
        amount=F(6) if name.startswith('S') else F(29,5)
        return add(quad(word),const(-amount*s),scale(add(det(i,j,8),scale(det(i,j,9),-1)),-sn))
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
    text=Path(__file__).with_name('N7_CDGH_LINE.md').read_text()
    records=re.findall(r'^\| (R[0-9]+[abc]?) \| (\d+) \| (-\d+/\d+) \|$',text,re.M)
    assert len(records)==len(ROWS) and {r[0] for r in records}==set(ROWS)
    printed_squares={}
    for line in re.search(r'```n7-cdgh-squares\n(.*?)\n```',text,re.S).group(1).splitlines():
        name,denom,*coefficients=line.split();assert name not in printed_squares
        printed_squares[name]=(int(denom),list(map(int,coefficients)))
    assert printed_squares==SQUARES
    total=0
    for row,count,bound_text in records:
        count,bound=int(count),F(bound_text)
        section=text.split('### Row '+row+'\n',1)[1].split('\n### ',1)[0]
        entries=re.findall(r'^\| (\d+) \| (\d+) \| ([A-Z0-9+*_\-]+) \|$',section,re.M)
        assert len(entries)==count,(row,len(entries),count)
        W={}
        for i,(index,weight,name) in enumerate(entries,1):
            assert int(index)==i and int(weight)>0
            poly=factor(name,row);assert all(sum(ex)<=3 for ex in poly)
            W=add(W,scale(poly,int(weight)))
        assert upper(W,row)==bound and bound<0,(row,upper(W,row),bound)
        total+=count;print('PASS',row,count,'printed terms; exact bound',bound)
    # Complete binary trie: all four oblique signs, then the stated AFO/BEP cuts.
    root={}
    for arc,choices,model in ROWS.values():
        assert arc=='DEFG';node=root
        for token in choices.split(','):
            assert '_leaf' not in node
            node=node.setdefault(token,{})
        assert not node;node['_leaf']=True
    def complete(node):
        if '_leaf' in node:assert len(node)==1;return 1
        assert len(node)==2
        tokens=list(node);assert tokens[0][:3]==tokens[1][:3] and {token[-1] for token in tokens}=={'+','-'}
        return sum(complete(child) for child in node.values())
    assert complete(root)==18
    assert total==int(re.search(r'contain \*\*([0-9,]+) printed',text).group(1).replace(',',''))
    print('PASS all 16 oblique words and two exhaustive refinements; 18 rows,',total,'printed terms.')

if __name__=='__main__':verify()
