"""Exact manuscript-only replay for N7_HEPTAGON_TWO_UPPER_EAR.md."""
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

ROWS={'R01': ('DOP-,AGP-,EGO-,BGO-,DHP-,AEG-', 'W', 'mmmmmm'), 'R02': ('DOP-,AGP-,EGO-,BGO-,DHP-,AEG+', 'W', 'mmmmmp'), 'R03': ('DOP-,AGP-,EGO-,BGO-,DHP+', 'W', 'mmmmp'), 'R04': ('DOP-,AGP-,EGO-,BGO+,AGO-', 'W', 'mmmpm'), 'R05': ('DOP-,AGP-,EGO-,BGO+,AGO+,DFP-,CFO-,GOP-', 'T', 'mmmppmmm'), 'R06': ('DOP-,AGP-,EGO-,BGO+,AGO+,DFP-,CFO-,GOP+', 'T', 'mmmppmmp'), 'R07': ('DOP-,AGP-,EGO-,BGO+,AGO+,DFP-,CFO+,DGO-', 'T', 'mmmppmpm'), 'R08': ('DOP-,AGP-,EGO-,BGO+,AGO+,DFP-,CFO+,DGO+', 'T', 'mmmppmpp'), 'R09': ('DOP-,AGP-,EGO-,BGO+,AGO+,DFP+,GOP-', 'W', 'mmmpppm'), 'R10': ('DOP-,AGP-,EGO-,BGO+,AGO+,DFP+,GOP+', 'W', 'mmmpppp'), 'R11': ('DOP-,AGP-,EGO+,AEG-,CFO-,DFP-', 'W', 'mmpmmm'), 'R12': ('DOP-,AGP-,EGO+,AEG-,CFO-,DFP+', 'W', 'mmpmmp'), 'R13': ('DOP-,AGP-,EGO+,AEG-,CFO+,CGO-', 'W', 'mmpmpm'), 'R14': ('DOP-,AGP-,EGO+,AEG-,CFO+,CGO+,DHP-', 'W', 'mmpmppm'), 'R15': ('DOP-,AGP-,EGO+,AEG-,CFO+,CGO+,DHP+', 'W', 'mmpmppp'), 'R16': ('DOP-,AGP-,EGO+,AEG+,DGP-,AOP-,DFP-,CFO-', 'T', 'mmppmmmm'), 'R17': ('DOP-,AGP-,EGO+,AEG+,DGP-,AOP-,DFP-,CFO+', 'T', 'mmppmmmp'), 'R18': ('DOP-,AGP-,EGO+,AEG+,DGP-,AOP-,DFP+', 'W', 'mmppmmp'), 'R19': ('DOP-,AGP-,EGO+,AEG+,DGP-,AOP+,DFP-,BEO-', 'T', 'mmppmpmm'), 'R20': ('DOP-,AGP-,EGO+,AEG+,DGP-,AOP+,DFP-,BEO+', 'T', 'mmppmpmp'), 'R21': ('DOP-,AGP-,EGO+,AEG+,DGP-,AOP+,DFP+', 'W', 'mmppmpp'), 'R22': ('DOP-,AGP-,EGO+,AEG+,DGP+,GHP-', 'G', 'mmpppm'), 'R23': ('DOP-,AGP-,EGO+,AEG+,DGP+,GHP+,DFG-,ADO-', 'T', 'mmppppmm'), 'R24': ('DOP-,AGP-,EGO+,AEG+,DGP+,GHP+,DFG-,ADO+', 'T', 'mmppppmp'), 'R25': ('DOP-,AGP-,EGO+,AEG+,DGP+,GHP+,DFG+', 'W', 'mmppppp'), 'R26': ('DOP-,AGP+', 'W', 'mp'), 'R27': ('DOP+,ADP-,CFO-,GHP-', 'G', 'pmmm'), 'R28': ('DOP+,ADP-,CFO-,GHP+,EGO-,DGH-', 'W', 'pmmpmm'), 'R29': ('DOP+,ADP-,CFO-,GHP+,EGO-,DGH+,DFG-,HOP-', 'W', 'pmmpmpmm'), 'R30': ('DOP+,ADP-,CFO-,GHP+,EGO-,DGH+,DFG-,HOP+', 'W', 'pmmpmpmp'), 'R31': ('DOP+,ADP-,CFO-,GHP+,EGO-,DGH+,DFG+', 'W', 'pmmpmpp'), 'R32': ('DOP+,ADP-,CFO-,GHP+,EGO+,FGP-,BGO-,HOP-', 'W', 'pmmppmmm'), 'R33': ('DOP+,ADP-,CFO-,GHP+,EGO+,FGP-,BGO-,HOP+', 'W', 'pmmppmmp'), 'R34': ('DOP+,ADP-,CFO-,GHP+,EGO+,FGP-,BGO+,AEG-', 'W', 'pmmppmpm'), 'R35': ('DOP+,ADP-,CFO-,GHP+,EGO+,FGP-,BGO+,AEG+', 'W', 'pmmppmpp'), 'R36': ('DOP+,ADP-,CFO-,GHP+,EGO+,FGP+,HOP-', 'W', 'pmmpppm'), 'R37': ('DOP+,ADP-,CFO-,GHP+,EGO+,FGP+,HOP+', 'W', 'pmmpppp'), 'R38': ('DOP+,ADP-,CFO+,AGO-,CGO-', 'W', 'pmpmm'), 'R39': ('DOP+,ADP-,CFO+,AGO-,CGO+,BFO-', 'W', 'pmpmpm'), 'R40': ('DOP+,ADP-,CFO+,AGO-,CGO+,BFO+,AEO-', 'W', 'pmpmppm'), 'R41': ('DOP+,ADP-,CFO+,AGO-,CGO+,BFO+,AEO+', 'W', 'pmpmppp'), 'R42': ('DOP+,ADP-,CFO+,AGO+,GHP-', 'G', 'pmppm'), 'R43': ('DOP+,ADP-,CFO+,AGO+,GHP+,BFO-', 'W', 'pmpppm'), 'R44': ('DOP+,ADP-,CFO+,AGO+,GHP+,BFO+,FGP-,DFG-,EGO-', 'T', 'pmppppmmm'), 'R45': ('DOP+,ADP-,CFO+,AGO+,GHP+,BFO+,FGP-,DFG-,EGO+', 'T', 'pmppppmmp'), 'R46': ('DOP+,ADP-,CFO+,AGO+,GHP+,BFO+,FGP-,DFG+', 'W', 'pmppppmp'), 'R47': ('DOP+,ADP-,CFO+,AGO+,GHP+,BFO+,FGP+', 'W', 'pmppppp'), 'R48': ('DOP+,ADP+,DGP-,DHP-', 'W', 'ppmm'), 'R49': ('DOP+,ADP+,DGP-,DHP+', 'G', 'ppmp'), 'R50': ('DOP+,ADP+,DGP+,CFO-,GHP-', 'G', 'pppmm'), 'R51': ('DOP+,ADP+,DGP+,CFO-,GHP+,BGO-,FGP-,GOP-', 'W', 'pppmpmmm'), 'R52': ('DOP+,ADP+,DGP+,CFO-,GHP+,BGO-,FGP-,GOP+', 'W', 'pppmpmmp'), 'R53': ('DOP+,ADP+,DGP+,CFO-,GHP+,BGO-,FGP+,FGO-', 'G', 'pppmpmpm'), 'R54': ('DOP+,ADP+,DGP+,CFO-,GHP+,BGO-,FGP+,FGO+', 'W', 'pppmpmpp'), 'R55': ('DOP+,ADP+,DGP+,CFO-,GHP+,BGO+,EGO-,HOP-', 'W', 'pppmppmm'), 'R56': ('DOP+,ADP+,DGP+,CFO-,GHP+,BGO+,EGO-,HOP+', 'W', 'pppmppmp'), 'R57': ('DOP+,ADP+,DGP+,CFO-,GHP+,BGO+,EGO+', 'W', 'pppmppp'), 'R58': ('DOP+,ADP+,DGP+,CFO+,AGO-,BFO-', 'W', 'ppppmm'), 'R59': ('DOP+,ADP+,DGP+,CFO+,AGO-,BFO+', 'W', 'ppppmp'), 'R60': ('DOP+,ADP+,DGP+,CFO+,AGO+,FGP-,BFO-', 'W', 'pppppmm'), 'R61': ('DOP+,ADP+,DGP+,CFO+,AGO+,FGP-,BFO+,AFO-', 'W', 'pppppmpm'), 'R62': ('DOP+,ADP+,DGP+,CFO+,AGO+,FGP-,BFO+,AFO+,HOP-', 'T', 'pppppmppm'), 'R63': ('DOP+,ADP+,DGP+,CFO+,AGO+,FGP-,BFO+,AFO+,HOP+', 'T', 'pppppmppp'), 'R64': ('DOP+,ADP+,DGP+,CFO+,AGO+,FGP+', 'W', 'pppppp')}
HERE=Path(__file__).parent
FREE=(6,8,9);HULL=[0,1,2,3,4,5,7]
J=F(4427,500)
def block(text,name):
    fence=chr(96)*3
    matches=re.findall(r'^'+fence+re.escape(name)+r'\n(.*?)^'+fence+r'$',text,re.M|re.S)
    assert len(matches)==1,(name,len(matches));return matches[0].strip()
def wi(word):return [LABELS.index(ch) for ch in word]
def sign(known,word):return get(known,tuple(wi(word)))
def convex(known,word):return all(sign(known,''.join(t))==1 for t in combinations(word,3))
def starting():
    known={}
    for tri in combinations(HULL,3):put(known,tri,1)
    for point,cell in [(6,'HCEF'),(8,'HCEF'),(9,'CDE')]:
        for word in ['ABCDEFH',cell]:
            for i,j in zip(word,word[1:]+word[:1]):put(known,(LABELS.index(i),LABELS.index(j),point),1)
    put(known,(7,6,8),-1)
    return known
def replay(known,step):
    op,*args=step
    if op=='plu':
        word,target,value=args;value=int(value);A,B,C,D,E=word
        terms=[(A+B+C,A+D+E,1),(A+B+D,A+C+E,-1),(A+B+E,A+C+D,1)]
        values=[coef*sign(known,T)*sign(known,U) for T,U,coef in terms]
        assert len(set(word))==5 and values.count(0)==1 and len(set(v for v in values if v))==1
        T,U,coef=terms[values.index(0)];unknown=[w for w in [T,U] if not sign(known,w)]
        assert len(unknown)==1 and canonical(tuple(wi(unknown[0])))[0]==canonical(tuple(wi(target)))[0]
        put(known,tuple(wi(target)),value)
        assert coef*sign(known,T)*sign(known,U)==-next(v for v in values if v)
    elif op=='via':
        point,hull,edge,value=args;value=int(value)
        assert len(hull)==3 and point not in hull and sign(known,hull)==1
        assert inside(known,wi(hull),LABELS.index(point))
        vals=[0 if vertex in edge else sign(known,edge+vertex) for vertex in hull]
        assert all(vertex in edge or vals[i] for i,vertex in enumerate(hull))
        assert value in vals and all(v in [0,value] for v in vals)
        put(known,tuple(wi(edge+point)),value)
    else:raise AssertionError(('undefined inference',step))
def known_for(row,text):
    choices,kind,path=ROWS[row];known=starting()
    for token in choices.split(','):put(known,tuple(wi(token[:3])),1 if token[-1]=='+' else -1)
    for line in block(text,'n7-h2-'+row+'-trace').splitlines():
        if line:replay(known,line.split())
    return known
h0=4*s/(1-ell)
WLOW=[eta,ell,ell,eta,h0,ell,ell,h0,eta,ell,eta,ell,eta]
WHIGH=[1-s,1-4*s/(1-s),1-ell,1-2*s,1-s,1-ell,1-ell,F(1),1-s,1-ell,1-s,1-ell,1-s]
TLOW=[F(17,100),F(14,125),4*s,F(17,100),F(77,100),ell,F(14,125),F(77,100),F(17,100),F(14,125),F(17,100),F(14,125),F(17,100)]
THIGH=[F(76,125),F(237,1000),F(647,1000),F(463,1000),1-s,F(647,1000),F(883,1000),F(1),1-s,F(883,1000),1-s,F(883,1000),1-s]
@lru_cache(None)
def box(row):
    kind=ROWS[row][1];assert kind in ['W','T'];return (WLOW,WHIGH) if kind=='W' else (TLOW,THIGH)
@lru_cache(None)
def affines(row):
    low,high=box(row);L=[]
    for w,lo,hi in zip(vs,low,high):L.extend([add(w,const(-lo)),add(const(hi),scale(w,-1))])
    L.extend([add(h,scale(a,-1),const(-s)),add(const(F(697,790)),scale(h,-1),a),
      add(e,scale(d,-1),const(-s)),add(const(F(697,790)),scale(e,-1),d),
      add(c,scale(b,-1),const(-F(117,1000))),add(const(F(79,100)),scale(c,-1),b),
      add(f,scale(b,-1)),add(c,scale(f,-1)),add(h,scale(e,-1)),add(e,scale(a,-1))])
    assert len(L)==36;return L

def factor(name,row,known,witnesses):
    if '*' in name:return mul(*(factor(n,row,known,witnesses) for n in name.split('*')))
    if name.startswith('L') and name[1:].isdigit():return affines(row)[int(name[1:])]
    if name=='EL':return add(mul(h,c),const(-4*s))
    if name=='ER':return add(mul(e,add(I,scale(b,-1))),const(-K*s))
    if name.startswith('F5_'):
        word=name[3:];assert len(set(word))==5 and convex(known,word)
        A,B,C,D,E=wi(word)
        return add(det(A,D,E),scale(add(det(A,B,E),scale(det(A,B,D),-1)),-11*s))
    if name.startswith('C') and '_' in name:
        word,count=name[1:].split('_');count=int(count);assert count in [1,2,3]
        assert len(set(word))==3 and sign(known,word)==1
        pts=witnesses[name];assert len(pts)==len(set(pts))==count
        assert all(pt not in word and inside(known,wi(word),LABELS.index(pt)) for pt in pts)
        return add(det(*wi(word)),const(-{1:F(3),2:K,3:J}[count]*s))
    if name.startswith('Q'):
        word,count=name[1:].split('_');count=int(count)
        assert len(set(word))==4 and convex(known,word) and count in [1,2,3]
        pts=witnesses[name];assert len(pts)==len(set(pts))==count
        assert all(pt not in word and inside(known,wi(word),LABELS.index(pt)) for pt in pts)
        return add(quad(word),const(-{1:F(24,5)*s,2:8*s,3:F(93,91)}[count]))
    if name.startswith('R'):
        word,pair,diag=name[1:].split('_');poly=wi(word)
        assert len(set(word))==4 and convex(known,word) and len(set(pair))==2 and not set(pair)&set(word)
        assert all(inside(known,poly,LABELS.index(pt)) for pt in pair)
        assert all(sign(known,word[i]+word[i+2]+pair[0])*sign(known,word[i]+word[i+2]+pair[1])==-1 for i in [0,1])
        assert diag in [word[0]+word[2],word[1]+word[3]]
        ii,jj=wi(diag);aa,bb=wi(pair);sg=get(known,(ii,jj,aa))
        return add(quad(word),const(-F(29,5)*s),scale(add(det(ii,jj,aa),scale(det(ii,jj,bb),-1)),-sg))
    assert len(name)==4 and name[-1] in '+-'
    word=name[:3];sg=1 if name[-1]=='+' else -1;assert sign(known,word)==sg,(row,name)
    return add(scale(det(*wi(word)),sg),const(-s))
def upper(poly,row):
    low,high=box(row);total=F(0)
    for ex,co in poly.items():
        mon=F(1)
        for endpoint,power in zip(high if co>0 else low,ex):mon*=endpoint**power
        total+=co*mon
    return total

def verify():
    text=(HERE/'N7_HEPTAGON_TWO_UPPER_EAR.md').read_text();terms=0;steps=0;geometric=0
    for row,(choices,kind,path) in ROWS.items():
        section=text.split('### Row '+row+'\n',1)[1].split('\n### ',1)[0]
        known=known_for(row,text);steps+=len(block(text,'n7-h2-'+row+'-trace').splitlines())
        if kind=='G':
            op,outer,pivot,fan,other=block(section,'n7-h2-'+row+'-exclusion').split();assert op=='cluster'
            assert len(set(outer))==3 and sign(known,outer)==1 and len(set(other))==2 and pivot not in other
            assert len(set(fan))==3 and set(fan)-set(outer)=={pivot}
            assert all(pt not in outer and inside(known,wi(outer),LABELS.index(pt)) for pt in pivot+other)
            assert all(pt not in fan and inside(known,wi(fan),LABELS.index(pt)) for pt in other)
            geometric+=1;print('PASS',row,'clustered triangle',outer);continue
        witnesses={}
        for line in block(section,'n7-h2-'+row+'-witnesses').splitlines():
            if not line:continue
            name,pts=line.split();assert name not in witnesses;witnesses[name]=pts
        entries=[line.split() for line in block(section,'n7-h2-'+row+'-sum').splitlines()]
        used={p for _,_,name in entries for p in name.split('*')}
        assert set(witnesses)=={p for p in used if (p.startswith('C') and '_' in p) or p.startswith('Q')}
        W={}
        for i,(index,weight,name) in enumerate(entries,1):
            assert int(index)==i and int(weight)>0
            p=factor(name,row,known,witnesses);assert all(sum(ex)<=3 for ex in p)
            W=add(W,scale(p,int(weight)))
        tick=chr(96);shown=F(re.search(r'Exact upper bound: '+tick+r'([^'+tick+r']+)'+tick,section).group(1))
        assert upper(W,row)==shown<0,(row,upper(W,row),shown)
        terms+=len(entries);print('PASS',row,len(entries),'terms; exact bound',shown)
    root={}
    for choices,kind,path in ROWS.values():
        node=root
        for token in choices.split(','):
            assert '_leaf' not in node;node=node.setdefault(token,{})
        assert not node;node['_leaf']=True
    def complete(node):
        if '_leaf' in node:assert len(node)==1;return 1
        assert len(node)==2
        tt=list(node);assert tt[0][:3]==tt[1][:3] and {t[-1] for t in tt}=={'+','-'}
        return sum(complete(v) for v in node.values())
    assert complete(root)==64 and geometric==6 and steps==2166
    assert terms==int(re.search(r'contain ([0-9,]+) positive integer terms',text).group(1).replace(',',''))
    print('PASS all 64 leaves, 2166 explicit deductions, 58 cubic sums, 6 geometric exclusions,',terms,'terms.')
if __name__=='__main__':verify()
