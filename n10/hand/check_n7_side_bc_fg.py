"""Check the fixed sums in N7_SIDE_BC_FG.md.

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
ROWS={'R01': ('CDEF', 'AFO-,BEP-,DGO-,BFO-,ADP-,BDP-', 'chain'), 'R02': ('CDEF', 'AFO-,BEP-,DGO-,BFO-,ADP-,BDP+', 'chain'), 'R03': ('CDEF', 'AFO-,BEP-,DGO-,BFO-,ADP+', 'chain'), 'R04': ('CDEF', 'AFO-,BEP-,DGO-,BFO+,EHO-,CHP-,ADP-', 'chain'), 'R05': ('CDEF', 'AFO-,BEP-,DGO-,BFO+,EHO-,CHP-,ADP+', 'chain'), 'R06': ('CDEF', 'AFO-,BEP-,DGO-,BFO+,EHO-,CHP+', 'chain'), 'R07': ('CDEF', 'AFO-,BEP-,DGO-,BFO+,EHO+,CHP-,CGP-', 'chain'), 'R08': ('CDEF', 'AFO-,BEP-,DGO-,BFO+,EHO+,CHP-,CGP+', 'chain'), 'R09': ('CDEF', 'AFO-,BEP-,DGO-,BFO+,EHO+,CHP+,ACP-', 'chain'), 'R10': ('CDEF', 'AFO-,BEP-,DGO-,BFO+,EHO+,CHP+,ACP+,ADP-', 'chain'), 'R11': ('CDEF', 'AFO-,BEP-,DGO-,BFO+,EHO+,CHP+,ACP+,ADP+', 'chain'), 'R12': ('CDEF', 'AFO-,BEP-,DGO+,CHP-,BFO-', 'chain'), 'R13': ('CDEF', 'AFO-,BEP-,DGO+,CHP-,BFO+,BDP-', 'chain'), 'R14': ('CDEF', 'AFO-,BEP-,DGO+,CHP-,BFO+,BDP+', 'chain'), 'R15': ('CDEF', 'AFO-,BEP-,DGO+,CHP+,BFO-,CGO-,AEO-', 'chain'), 'R16': ('CDEF', 'AFO-,BEP-,DGO+,CHP+,BFO-,CGO-,AEO+', 'chain'), 'R17': ('CDEF', 'AFO-,BEP-,DGO+,CHP+,BFO-,CGO+', 'chain'), 'R18': ('CDEF', 'AFO-,BEP-,DGO+,CHP+,BFO+,CGO-,ACP-', 'chain'), 'R19': ('CDEF', 'AFO-,BEP-,DGO+,CHP+,BFO+,CGO-,ACP+,DHO-,BDP-', 'chain'), 'R20': ('CDEF', 'AFO-,BEP-,DGO+,CHP+,BFO+,CGO-,ACP+,DHO-,BDP+', 'chain'), 'R21': ('CDEF', 'AFO-,BEP-,DGO+,CHP+,BFO+,CGO-,ACP+,DHO+', 'chain'), 'R22': ('CDEF', 'AFO-,BEP-,DGO+,CHP+,BFO+,CGO+,ACP-', 'chain'), 'R23': ('CDEF', 'AFO-,BEP-,DGO+,CHP+,BFO+,CGO+,ACP+', 'chain'), 'R24': ('CDEF', 'AFO-,BEP+,CHP-,ADP-,EHO-', 'chain'), 'R25': ('CDEF', 'AFO-,BEP+,CHP-,ADP-,EHO+', 'chain'), 'R26': ('CDEF', 'AFO-,BEP+,CHP-,ADP+,CGP-', 'chain'), 'R27': ('CDEF', 'AFO-,BEP+,CHP-,ADP+,CGP+,DGO-', 'chain'), 'R28': ('CDEF', 'AFO-,BEP+,CHP-,ADP+,CGP+,DGO+', 'chain'), 'R29': ('CDEF', 'AFO-,BEP+,CHP+,CGO-,EHO-', 'chain'), 'R30': ('CDEF', 'AFO-,BEP+,CHP+,CGO-,EHO+', 'chain'), 'R31': ('CDEF', 'AFO-,BEP+,CHP+,CGO+', 'chain'), 'R32': ('CDEF', 'AFO+,DGO-,EGO-', 'chain'), 'R33': ('CDEF', 'AFO+,DGO-,EGO+,EHO-', 'chain'), 'R34': ('CDEF', 'AFO+,DGO-,EGO+,EHO+,BEP-,ADP-', 'chain'), 'R35': ('CDEF', 'AFO+,DGO-,EGO+,EHO+,BEP-,ADP+,CHP-', 'chain'), 'R36': ('CDEF', 'AFO+,DGO-,EGO+,EHO+,BEP-,ADP+,CHP+', 'chain'), 'R37': ('CDEF', 'AFO+,DGO-,EGO+,EHO+,BEP+,CHP-,BFP-', 'chain'), 'R38': ('CDEF', 'AFO+,DGO-,EGO+,EHO+,BEP+,CHP-,BFP+', 'chain'), 'R39': ('CDEF', 'AFO+,DGO-,EGO+,EHO+,BEP+,CHP+', 'chain'), 'R40': ('CDEF', 'AFO+,DGO+,CHP-,EHO-', 'chain'), 'R41': ('CDEF', 'AFO+,DGO+,CHP-,EHO+', 'chain'), 'R42': ('CDEF', 'AFO+,DGO+,CHP+,CGO-,EHO-', 'chain'), 'R43': ('CDEF', 'AFO+,DGO+,CHP+,CGO-,EHO+,BEP-,BDP-,DHO-', 'chain'), 'R44': ('CDEF', 'AFO+,DGO+,CHP+,CGO-,EHO+,BEP-,BDP-,DHO+', 'chain'), 'R45': ('CDEF', 'AFO+,DGO+,CHP+,CGO-,EHO+,BEP-,BDP+', 'chain'), 'R46': ('CDEF', 'AFO+,DGO+,CHP+,CGO-,EHO+,BEP+,ADP-', 'chain'), 'R47': ('CDEF', 'AFO+,DGO+,CHP+,CGO-,EHO+,BEP+,ADP+', 'chain'), 'R48': ('CDEF', 'AFO+,DGO+,CHP+,CGO+,ACP-', 'chain'), 'R49': ('CDEF', 'AFO+,DGO+,CHP+,CGO+,ACP+', 'chain')}
SQUARES={'SQ0': (10, [1, 2, 1, 2, -1, 5, 2, 0, -2, -1, -5, -2, -4, -1]), 'SQ1': (10, [0, 0, -1, -3, 2, -1, -3, -2, 4, 5, -3, 1, -4, -1]), 'SQ2': (10, [1, -3, -2, 0, -2, -2, 0, 2, -3, 2, -5, 4, 2, 3]), 'SQ3': (10, [-2, 3, -1, 2, -1, -2, 2, 1, 1, -1, 2, 2, -6, 5]), 'SQ4': (20, [7, 1, 1, -1, -10, -4, -1, 7, -4, 4, 7, 0, -6, -8]), 'SQ5': (20, [1, 2, 5, 7, -6, 5, 8, 2, -10, -6, -1, -7, 1, 0]), 'SQ6': (20, [-4, 8, 3, -2, -7, 6, -4, 5, 0, -1, -2, 11, -7, -1]), 'SQ7': (10, [1, -5, -1, 1, -3, -4, 0, 4, -3, 0, 0, 5, 2, 1]), 'SQ8': (10, [-1, 3, -5, 1, 1, -1, 2, 1, 0, -2, 0, 0, -1, 7]), 'SQ9': (20, [2, 5, -5, -1, -3, 0, -3, 1, -8, 15, -4, -5, -1, -1]), 'SQ10': (20, [2, -6, -5, -5, 10, -9, -5, -3, 7, 3, 5, 2, 3, -1]), 'SQ11': (10, [4, -3, 1, -2, -4, -1, -3, 4, -2, 1, 1, 3, 0, -4]), 'SQ12': (50, [-9, 15, 18, -20, 10, 19, -12, -11, 3, 16, -5, 5, 1, -21]), 'SQ13': (20, [5, 6, 3, -4, 0, 0, 3, 1, 9, -14, 5, 0, -2, -4]), 'SQ14': (20, [0, 5, 5, 2, -12, 8, 5, 2, -7, -1, -6, -2, -4, -2]), 'SQ15': (10, [-3, 1, 3, -1, 4, 4, 2, -5, 3, -1, -1, -4, 1, -1]), 'SQ16': (20, [-9, 8, -10, 5, 2, 1, 5, 4, 1, -3, -1, 1, -2, 8]), 'SQ17': (50, [-19, -12, 6, 28, -8, 10, -28, -8, 4, 7, -4, 5, 2, 4]), 'SQ18': (1000, [180, -217, 26, 162, -260, 67, 49, 59, 390, -791, 188, -10, 11, 42]), 'SQ19': (50, [0, -24, -5, -8, 28, -16, -10, -10, 17, 1, 12, 4, 11, 4]), 'SQ20': (50, [3, -8, 8, -13, -16, -1, -22, 12, 7, 8, -2, 28, -4, -20]), 'SQ21': (20, [-7, 7, 3, -4, 3, 7, 1, -4, 12, -7, 1, 1, -2, -4]), 'SQ22': (50, [-18, 16, 4, -14, 17, -3, 6, -4, -12, 34, -7, 3, 2, -6]), 'SQ23': (20, [6, -1, -6, -2, 8, -10, -7, 4, -3, 6, 2, 6, 1, 0]), 'SQ24': (20, [-2, -6, 4, 0, -11, 4, -6, 7, -5, 4, -3, 9, 0, -3]), 'SQ25': (20, [0, 8, 3, -10, 1, 1, 9, 4, -8, 7, -2, -1, 0, -3])}
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
    arc,choices,model=metadata(row);known={};extra=choices.split(',') if choices else []
    assert arc=='CDEF'
    for tri in combinations(range(8),3):put(known,tri,1)
    for i in range(8):put(known,(i,8,9),1 if LABELS[i] in arc else -1)
    hept=[0,1,2,3,4,5,7]
    for k in (8,9):
     for i,j in zip(hept,hept[1:]+hept[:1]):put(known,(i,j,k),1)
    # The OP segment is contained in the quadrilateral joining the
    # four endpoints of its two crossed edges.
    ids=[LABELS.index(ch) for ch in arc]
    assert len(ids)==4 and all(ids[i+1]==(ids[i]+1)%8 for i in range(3))
    cap=[(ids[0]-1)%8,ids[0],ids[-1],(ids[-1]+1)%8]
    for k in (8,9):
     for i,j in zip(cap,cap[1:]+cap[:1]):put(known,(i,j,k),1)
    # Every same-sign arc chord has its two interior points on the
    # side opposite the corresponding boundary cap.
    for ordered in [ids,[(ids[-1]+1+i)%8 for i in range(4)]]:
     for ii,jj in combinations(ordered,2):
      for kk in (8,9):put(known,(ii,jj,kk),1)
    if arc=='DEFG':
     for word,sn in [('CGO',1),('CGP',-1),('DHO',-1),('DHP',1)]:
      put(known,tuple(LABELS.index(ch) for ch in word),sn)
    CAPS_LOCAL=[[(i+j)%8 for j in range(4)] for i in range(8)]+[[(i+j)%8 for j in range(3)] for i in range(8)]+[[LABELS.index(ch) for ch in word] for word in ['AEF','BEF','ABE','ABF','CDG','CGH','CDH','DGH']]
    # A four-consecutive cap is on the negative side of its endpoint chord.
    # Its capacity one, and monotonicity along OP, fix an endpoint sign.
    for i in range(8):
     j=(i+3)%8;di=1 if LABELS[i] in arc else -1;dj=1 if LABELS[j] in arc else -1
     if di!=dj:put(known,(i,j,8 if di<dj else 9),1)
    # Whole FGH placement transfers from the proved capacity-one caps.
    if arc=='FGH':
     for word,sn in [('AFO',1),('AFP',-1),('DGO',1),('CHP',-1),('AGP',-1),('BGP',-1),('BHP',-1),('EHO',1)]:
      put(known,tuple(LABELS.index(ch) for ch in word),sn)
    for item in extra:put(known,tuple(LABELS.index(ch) for ch in item[:3]),1 if item[-1]=='+' else -1)
    changed=True
    while changed:
     changed=False
     for word in ['ABEF','CDGH']:
      poly=[LABELS.index(ch) for ch in word]
      if all(inside(known,poly,k) for k in (8,9)):
       for I,J in [(poly[0],poly[2]),(poly[1],poly[3])]:
        di=1 if LABELS[I] in arc else -1;dj=1 if LABELS[J] in arc else -1
        if di!=dj:
         direction=1 if di>dj else -1
         changed|=put(known,(I,J,8),-direction);changed|=put(known,(I,J,9),direction)
     for k in (8,9):
      if get(known,(1,6,k))<0:changed|=put(known,(1,7,k),-1)
      if get(known,(2,5,k))>0:changed|=put(known,(3,5,k),1)
      if get(known,(0,5,k))<0:changed|=put(known,(0,6,k),-1)
      if get(known,(1,4,k))>0:changed|=put(known,(2,4,k),1)
     # Monotonicity of every hull chord along the directed OP line.
     for i,j in combinations(range(8),2):
      di=1 if LABELS[i] in arc else -1;dj=1 if LABELS[j] in arc else -1
      if di==dj:continue
      so,sp_=get(known,(i,j,8)),get(known,(i,j,9));direction=di-dj
      if so==(1 if direction>0 else -1):changed|=put(known,(i,j,9),so)
      if sp_==-(1 if direction>0 else -1):changed|=put(known,(i,j,8),sp_)
     # A proved containing triangle fixes all chord sides on which that
     # entire triangle lies.  This is convexity, not a sampling test.
     for k in (8,9):
      containers=[list(tri) for tri in combinations(range(8),3) if inside(known,list(tri),k)]
      for i,j in combinations(range(8),2):
       if get(known,(i,j,k)):continue
       for tri in containers:
        ss=[0 if v_ in (i,j) else get(known,(i,j,v_)) for v_ in tri]
        sn=1 if min(ss)>=0 and max(ss)>0 else -1 if max(ss)<=0 and min(ss)<0 else 0
        if sn:changed|=put(known,(i,j,k),sn);break
     # If one point occupies a capacity-one polygon, and all but one edge
     # tests for the other point are positive, the last test is negative.
     for poly in CAPS_LOCAL:
      edges=list(zip(poly,poly[1:]+poly[:1]))
      for k,l in [(8,9),(9,8)]:
       if not inside(known,poly,k):continue
       sides=[get(known,(i,j,l)) for i,j in edges]
       if min(sides)>=0 and sides.count(0)==1:
        i,j=edges[sides.index(0)];changed|=put(known,(i,j,l),-1)
    return known

@lru_cache(None)
def ranges(row):
    arc,choices,model=metadata(row);assert arc=='CDEF'
    h0=4*s/(1-ell);h1=1-s;f0=4*s/(1-eta);x0=s/(h1-eta);g1=1-ell-s/(1-h0)
    lo=[eta,x0,ell,eta,h0,f0,x0,h0,h0+s,x0,eta,x0,eta]
    hi=[1-4*s,1-ell,1-ell,h1,F(1),1-ell,min(g1,F(3,5)),h1,F(1),1-ell,1-s,1-ell,1-s]
    assert not any(inside(signs(row),[0,6,7],k) for k in (8,9))
    hi[12]-=2*eta;lo[10]+=2*eta
    assert all(0<a<b<=1 for a,b in zip(lo,hi)),row
    return lo,hi,x0,[]

@lru_cache(None)
def affines(row):
    arc,choices,model=metadata(row);lo,hi,x0,occupants=ranges(row);L=[]
    for i,w in enumerate(vs):L.extend([add(w,const(-lo[i])),add(const(hi[i]),scale(w,-1))])
    L.extend([
        add(h,scale(a,-1),const(-s)),add(const(F(697,790)),scale(h,-1),a),
        add(e,scale(d,-1),const(-s)),add(const(F(697,790)),scale(e,-1),d),
        add(c,scale(b,-1),const(-F(117,1000))),add(const(F(79,100)),scale(c,-1),b),
        add(f,scale(b,-1)),add(c,scale(f,-1)),add(f,scale(g,-1)),
        add(h,scale(d,-1)),add(e,scale(a,-1)),add(z,scale(h,-1),const(-s)),
        add(y,scale(v,-1),const(-2*eta))])
    assert len(L)==39
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
    text=Path(__file__).with_name('N7_SIDE_BC_FG.md').read_text()
    records=re.findall(r'^\| (R[0-9]+) \| (\d+) \| (-\d+/\d+) \|$',text,re.M)
    assert len(records)==len(ROWS) and {r[0] for r in records}==set(ROWS)
    printed_squares={}
    for line in re.search(r'```n7-bc-fg-squares\n(.*?)\n```',text,re.S).group(1).splitlines():
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
    root={}
    for arc,choices,model in ROWS.values():
        assert arc=='CDEF';node=root
        for token in choices.split(','):
            assert '_leaf' not in node
            node=node.setdefault(token,{})
        assert not node;node['_leaf']=True
    def complete(node):
        if '_leaf' in node:assert len(node)==1;return 1
        assert len(node)==2
        tokens=list(node);assert tokens[0][:3]==tokens[1][:3] and {token[-1] for token in tokens}=={'+','-'}
        return sum(complete(child) for child in node.values())
    assert complete(root)==49
    assert total==int(re.search(r'contain \*\*([0-9,]+) printed',text).group(1).replace(',',''))
    print('PASS the entire BC/FG edge pair; 49 exhaustive rows,',total,'printed terms.')

if __name__=='__main__':verify()
