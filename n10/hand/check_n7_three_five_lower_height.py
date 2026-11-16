"""Check the fixed sums in N7_THREE_FIVE_LOWER_HEIGHT.md.

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
ROWS={'R1': ('ABC', 'AGP+', 'standard'), 'R2': ('ABC', 'AGP-,AEP-,BDO+', 'chain'), 'R3': ('ABC', 'AGP-,AEP-,BDO-', 'chain'), 'R4': ('ABC', 'AGP-,AEP+,ADO+,BEO+', 'chain'), 'R5': ('ABC', 'AGP-,AEP+,ADO+,BEO-', 'chain'), 'R6': ('ABC', 'AGP-,AEP+,ADO-,BHP+', 'standard'), 'R7': ('ABC', 'AGP-,AEP+,ADO-,BHP-,BGP-,AFP+', 'standard'), 'R8': ('ABC', 'AGP-,AEP+,ADO-,BHP-,BGP-,AFP-,CFO+', 'standard'), 'R9': ('ABC', 'AGP-,AEP+,ADO-,BHP-,BGP-,AFP-,CFO-', 'standard'), 'R10': ('ABC', 'AGP-,AEP+,ADO-,BHP-,BGP+,CFO-', 'standard'), 'R11': ('ABC', 'AGP-,AEP+,ADO-,BHP-,BGP+,CFO+,CGO+', 'standard'), 'R12': ('ABC', 'AGP-,AEP+,ADO-,BHP-,BGP+,CFO+,CGO-,AFP+', 'chain'), 'R13': ('ABC', 'AGP-,AEP+,ADO-,BHP-,BGP+,CFO+,CGO-,AFP-', 'chain'), 'R14': ('BCD', 'DFO-,CEO+', 'chain'), 'R15': ('BCD', 'DFO-,CEO-', 'chain'), 'R16': ('BCD', 'DFO+,DHO+', 'standard'), 'R17': ('BCD', 'DFO+,DHO-,ADP+,CFO+', 'chain'), 'R18': ('BCD', 'DFO+,DHO-,ADP+,CFO-', 'chain'), 'R19': ('BCD', 'DFO+,DHO-,ADP-,CEO-', 'standard'), 'R20': ('BCD', 'DFO+,DHO-,ADP-,CEO+,CFO+,DGO-,ACP+', 'chain'), 'R21': ('BCD', 'DFO+,DHO-,ADP-,CEO+,CFO+,DGO-,ACP-', 'chain'), 'R22': ('BCD', 'DFO+,DHO-,ADP-,CEO+,CFO+,DGO+,BGP-', 'standard'), 'R23': ('BCD', 'DFO+,DHO-,ADP-,CEO+,CFO+,DGO+,BGP+,ACP+', 'chain'), 'R24': ('BCD', 'DFO+,DHO-,ADP-,CEO+,CFO+,DGO+,BGP+,ACP-', 'chain'), 'R25': ('BCD', 'DFO+,DHO-,ADP-,CEO+,CFO-,BGP+', 'standard'), 'R26': ('BCD', 'DFO+,DHO-,ADP-,CEO+,CFO-,BGP-,BFP-', 'standard'), 'R27': ('BCD', 'DFO+,DHO-,ADP-,CEO+,CFO-,BGP-,BFP+', 'standard'), 'R28': ('CDE', 'ACP-', 'standard'), 'R29': ('CDE', 'ACP+,CGP-,DHP-', 'chain'), 'R30': ('CDE', 'ACP+,CGP-,DHP+,ADP+,DFO+', 'chain'), 'R31': ('CDE', 'ACP+,CGP-,DHP+,ADP+,DFO-', 'chain'), 'R32': ('CDE', 'ACP+,CGP-,DHP+,ADP-,AEO+', 'chain'), 'R33': ('CDE', 'ACP+,CGP-,DHP+,ADP-,AEO-', 'chain'), 'R34': ('CDE', 'ACP+,CGP+,CFO+,AEO+', 'chain'), 'R35': ('CDE', 'ACP+,CGP+,CFO+,AEO-', 'chain'), 'R36': ('CDE', 'ACP+,CGP+,CFO-,BDP-,CHP+', 'chain'), 'R37': ('CDE', 'ACP+,CGP+,CFO-,BDP-,CHP-', 'chain'), 'R38': ('CDE', 'ACP+,CGP+,CFO-,BDP+,ADP+,CHP+', 'standard'), 'R39': ('CDE', 'ACP+,CGP+,CFO-,BDP+,ADP+,CHP-,EHO+,DFO+', 'chain'), 'R40': ('CDE', 'ACP+,CGP+,CFO-,BDP+,ADP+,CHP-,EHO+,DFO-', 'chain'), 'R41': ('CDE', 'ACP+,CGP+,CFO-,BDP+,ADP+,CHP-,EHO-', 'standard'), 'R42': ('CDE', 'ACP+,CGP+,CFO-,BDP+,ADP-,EHO-', 'standard'), 'R43': ('CDE', 'ACP+,CGP+,CFO-,BDP+,ADP-,EHO+,AEO-', 'standard'), 'R44': ('CDE', 'ACP+,CGP+,CFO-,BDP+,ADP-,EHO+,AEO+', 'standard'), 'R45': ('DEF', 'FHO+,BFO-', 'standard'), 'R46': ('DEF', 'FHO+,BFO+,CFP+', 'standard'), 'R47': ('DEF', 'FHO+,BFO+,CFP-,EGO-', 'standard'), 'R48': ('DEF', 'FHO+,BFO+,CFP-,EGO+,EHO+,AFO+', 'standard'), 'R49': ('DEF', 'FHO+,BFO+,CFP-,EGO+,EHO+,AFO-,ADP+', 'standard'), 'R50': ('DEF', 'FHO+,BFO+,CFP-,EGO+,EHO+,AFO-,ADP-', 'standard'), 'R51': ('DEF', 'FHO+,BFO+,CFP-,EGO+,EHO-,ADP-', 'standard'), 'R52': ('DEF', 'FHO+,BFO+,CFP-,EGO+,EHO-,ADP+,DHP-', 'standard'), 'R53': ('DEF', 'FHO+,BFO+,CFP-,EGO+,EHO-,ADP+,DHP+', 'standard'), 'R54': ('EFG', 'CEP-', 'standard'), 'R55': ('EFG', 'CEP+,AEP+', 'standard'), 'R56': ('EFG', 'CEP+,AEP-,EHO+,CGO-', 'chain'), 'R57': ('EFG', 'CEP+,AEP-,EHO+,CGO+,CFP+', 'chain'), 'R58': ('EFG', 'CEP+,AEP-,EHO+,CGO+,CFP-,DFP+', 'chain'), 'R59': ('EFG', 'CEP+,AEP-,EHO+,CGO+,CFP-,DFP-', 'chain'), 'R60': ('EFG', 'CEP+,AEP-,EHO-,DFP-,BEP+', 'chain'), 'R61': ('EFG', 'CEP+,AEP-,EHO-,DFP-,BEP-', 'chain'), 'R62': ('EFG', 'CEP+,AEP-,EHO-,DFP+,CFP+,BEP-', 'standard'), 'R63': ('EFG', 'CEP+,AEP-,EHO-,DFP+,CFP+,BEP+,BGO-', 'standard'), 'R64': ('EFG', 'CEP+,AEP-,EHO-,DFP+,CFP+,BEP+,BGO+', 'standard'), 'R65': ('EFG', 'CEP+,AEP-,EHO-,DFP+,CFP-,BGO+', 'standard'), 'R66': ('EFG', 'CEP+,AEP-,EHO-,DFP+,CFP-,BGO-,CGO-', 'standard'), 'R67': ('EFG', 'CEP+,AEP-,EHO-,DFP+,CFP-,BGO-,CGO+', 'standard'), 'R68': ('GHA', 'EGP-', 'standard'), 'R69': ('GHA', 'EGP+,CGP+,BHO+', 'chain'), 'R70': ('GHA', 'EGP+,CGP+,BHO-', 'chain'), 'R71': ('GHA', 'EGP+,CGP-,BGO-,AEO+', 'chain'), 'R72': ('GHA', 'EGP+,CGP-,BGO-,AEO-,CHO+', 'chain'), 'R73': ('GHA', 'EGP+,CGP-,BGO-,AEO-,CHO-', 'chain'), 'R74': ('GHA', 'EGP+,CGP-,BGO+,FHP+,EHP+,DGP-', 'standard'), 'R75': ('GHA', 'EGP+,CGP-,BGO+,FHP+,EHP+,DGP+,ADO+,BHO+', 'chain'), 'R76': ('GHA', 'EGP+,CGP-,BGO+,FHP+,EHP+,DGP+,ADO+,BHO-', 'chain'), 'R77': ('GHA', 'EGP+,CGP-,BGO+,FHP+,EHP+,DGP+,ADO-', 'standard'), 'R78': ('GHA', 'EGP+,CGP-,BGO+,FHP+,EHP-,ADO-', 'standard'), 'R79': ('GHA', 'EGP+,CGP-,BGO+,FHP+,EHP-,ADO+,AEO+', 'standard'), 'R80': ('GHA', 'EGP+,CGP-,BGO+,FHP+,EHP-,ADO+,AEO-', 'standard'), 'R81': ('HAB', 'BDO-,BGP+', 'chain'), 'R82': ('HAB', 'BDO-,BGP-', 'chain'), 'R83': ('HAB', 'BDO+,BFO+', 'standard'), 'R84': ('HAB', 'BDO+,BFO-,BGP-,AFP+', 'chain'), 'R85': ('HAB', 'BDO+,BFO-,BGP-,AFP-', 'chain'), 'R86': ('HAB', 'BDO+,BFO-,BGP+,ACO-', 'standard'), 'R87': ('HAB', 'BDO+,BFO-,BGP+,ACO+,ADO+,BEO-', 'standard'), 'R88': ('HAB', 'BDO+,BFO-,BGP+,ACO+,ADO+,BEO+,EHP+', 'standard'), 'R89': ('HAB', 'BDO+,BFO-,BGP+,ACO+,ADO+,BEO+,EHP-', 'standard'), 'R90': ('HAB', 'BDO+,BFO-,BGP+,ACO+,ADO-,EHP-', 'standard'), 'R91': ('HAB', 'BDO+,BFO-,BGP+,ACO+,ADO-,EHP+,DHP+', 'standard'), 'R92': ('HAB', 'BDO+,BFO-,BGP+,ACO+,ADO-,EHP+,DHP-,BEO+', 'chain'), 'R93': ('HAB', 'BDO+,BFO-,BGP+,ACO+,ADO-,EHP+,DHP-,BEO-', 'chain')}
GEOMETRIC=[('DEF', 'FHO-', 'FHO+'), ('GHA', 'EGP+,CGP-,BGO+,FHP-', 'FHP+')]
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
    return (row[5:],'','standard') if row.startswith('BASE_') else ROWS[row]
@lru_cache(None)
def signs(row):
    arc,choices,model=metadata(row);arcids={LABELS.index(ch) for ch in arc};known={}
    for tri in combinations(range(8),3):put(known,tri,1)
    for i in range(8):put(known,(i,8,9),1 if i in arcids else -1)
    ids=[LABELS.index(ch) for ch in arc];assert len(ids)==3
    cap=[(ids[0]-1+i)%8 for i in range(5)]
    for k in (8,9):
        hept=[0,1,2,3,4,5,7]
        for poly in [hept,cap]:
            for i,j in zip(poly,poly[1:]+poly[:1]):put(known,(i,j,k),1)
        put(known,(ids[0],ids[-1],k),1)
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
    if model=='chain':
        for i,j,gap in [(0,7,2*x0),(3,4,2*ell)]:
            di=1 if LABELS[i] in arc else -1;dj=1 if LABELS[j] in arc else -1
            if di<dj:hi[9]=min(hi[9],hi[11]-gap);lo[11]=max(lo[11],lo[9]+gap)
            if di>dj:hi[11]=min(hi[11],hi[9]-gap);lo[9]=max(lo[9],lo[11]+gap)
        if ('B' in arc)!=('C' in arc):
            gap=2*eta
            if 'B' in arc:hi[10]=min(hi[10],hi[12]-gap);lo[12]=max(lo[12],lo[10]+gap)
            else:hi[12]=min(hi[12],hi[10]-gap);lo[10]=max(lo[10],lo[12]+gap)
    else: assert model=='standard'
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
        add(h,scale(d,-1)),add(e,scale(a,-1)),add(z,scale(h,-1),const(-s)),add(e,scale(h,-1))])
    for i,j in [(0,7),(3,4)]:
        di=1 if LABELS[i] in arc else -1;dj=1 if LABELS[j] in arc else -1
        if di!=dj:L.append(add(scale(add(u,scale(x,-1)),1 if dj>di else -1),const(-(2*x0 if (i,j)==(0,7) else 2*ell))))
    if ('B' in arc)!=('C' in arc):L.append(add(scale(add(v,scale(y,-1)),1 if 'B' in arc else -1),const(-2*eta)))
    for k in occupants:L.append(add(g,scale(P[k][0],-1),const(-2*x0)))
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
    text=Path(__file__).with_name('N7_THREE_FIVE_LOWER_HEIGHT.md').read_text()
    records=re.findall(r'^\| (R\d+) \| (\d+) \| (-\d+/\d+) \|$',text,re.M)
    assert len(records)==len(ROWS) and {r[0] for r in records}==set(ROWS)
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
    # Literal binary-trie coverage, without identifying geometric cases.
    for arc in ['ABC','BCD','CDE','DEF','EFG','GHA','HAB']:
        root={}
        paths=[choices for a,choices,model in ROWS.values() if a==arc]
        paths += [choices for a,choices,witness in GEOMETRIC if a==arc]
        for choices in paths:
            node=root
            for token in choices.split(','):
                assert '_leaf' not in node
                node=node.setdefault(token,{})
            assert not node;node['_leaf']=True
        def complete(node):
            if '_leaf' in node:assert len(node)==1;return 1
            assert len(node)==2
            tokens=list(node);assert tokens[0][:3]==tokens[1][:3] and {x[-1] for x in tokens}=={'+','-'}
            return sum(complete(child) for child in node.values())
        leaves=complete(root);print('PASS',arc,leaves,'exhaustive sign leaves')
    assert GEOMETRIC==[('DEF','FHO-','FHO+'),('GHA','EGP+,CGP-,BGO+,FHP-','FHP+')]
    # Positive actual-heptagon edge tests give the two geometric leaves.
    for arc,choices,witness in GEOMETRIC:
        assert witness in ('FHO+','FHP+') and witness[:3]+'-' in choices.split(',')
    assert add(quad('CDGH'),scale(add(z,scale(mul(add(c,scale(g,-1)),add(h,scale(d,-1))),-1)),-1))=={}
    for k in (8,9):
        Y=P[k][1]
        assert add(mul(z,det(1,7,k)),scale(mul(h,det(1,6,k)),-1),mul(Y,add(mul(b,add(z,scale(h,-1))),mul(h,g))))=={}
        coef=add(I,scale(c,-1),mul(d,add(c,scale(f,-1))))
        assert add(det(3,5,k),scale(mul(add(I,scale(d,-1)),det(2,5,k)),-1),scale(mul(coef,add(I,scale(Y,-1))),-1))=={}
    print('PASS',total,'fixed cubic terms, full leaf coverage and geometric identities')
if __name__=='__main__':verify()
