#!/usr/bin/env python3
"""Exact replay of the two C1 side-pair/opposite-cap central alternatives."""
from collections import defaultdict
from fractions import Fraction as F
from itertools import combinations, permutations
from pathlib import Path
from functools import lru_cache
import re

S=F(93,1000); RHO=F(347,500)
LABELS='OHCDFYZPQR'
VARS='h c d f u v z w p q l m r t'.split()
def C(x):return {():F(x)} if x else {}
def V(i):return {(i,):F(1)}
def add(*ps):
    out=defaultdict(F)
    for pp in ps:
        for e,c in pp.items():out[e]+=c
    return {e:c for e,c in out.items() if c}
def sc(pp,c):return {e:v*c for e,v in pp.items() if v*c}
def sub(pp,qq):return add(pp,sc(qq,-1))
def mul(pp,qq):
    out=defaultdict(F)
    for e,c in pp.items():
        for f,d in qq.items():out[tuple(sorted(e+f))]+=c*d
    return {e:c for e,c in out.items() if c}
vv=list(map(V,range(14)))
h,c,d,f,u,v,z,w,p,q,l,m,r,t=vv
PT=dict(zip(LABELS,[({},{}),({},h),(c,{}),(C(1),d),(f,C(1)),(u,v),(z,w),(p,q),(l,m),(r,t)]))
def D(word):
    a,b,c=(PT[ch] for ch in word)
    return sub(mul(sub(b[0],a[0]),sub(c[1],a[1])),mul(sub(b[1],a[1]),sub(c[0],a[0])))
def canon(word):
    assert len(word)==3 and len(set(word))==3
    ids=[LABELS.index(ch) for ch in word]
    return ''.join(sorted(word,key=LABELS.index)),(-1)**sum(ids[i]>ids[j] for i in range(3) for j in range(i+1,3))
def get(kn,word):
    key,sg=canon(word);return sg*kn.get(key,0)
def put(kn,word,sg):
    key,z=canon(word);val=sg*z
    assert key not in kn or kn[key]==val,(word,sg)
    kn[key]=val
def inside(kn,word,point):
    sg=get(kn,word[:3])
    return sg and point not in word and all(get(kn,a+b+point)==sg for a,b in zip(word,word[1:]+word[:1]))
def convex(kn,word):return all(get(kn,''.join(tr))==1 for tr in combinations(word,3))
TCOST={0:S,1:3*S,2:RHO,3:F(823,1000)}
UPPERS={}
def coarse_box(mode):
    box=[(F('.71'),F('.79')),(F('.45'),F('.56')),(F('.71'),F('.79')),(F('.45'),F('.56'))]
    for T in'YZ':box +=[(F('.117'),F('.443')),(F('.166'),F('.624'))]if mode and T=='Y'else[(F('.117'),1-S),(F('.166'),1-S)]
    return box+[(F('.947'),F(1)),(F('.166'),F('.283')),(F('.711'),F('.89')),(F('.219'),F('.466')),(F('.117'),F('.24')),(F('.943'),F(1))]
def exact_box(mode):
    bb=list(coarse_box(mode))
    for i in[4,6,12]:bb[i]=(S/F('.79'),bb[i][1])
    for i in[5,7,9]:bb[i]=(S/F('.56'),bb[i][1])
    return bb

def initial(mode):
    kn={}
    for tok in '-OHC -OHD -OHF +OCD +OCF +ODF +HCD +HCF +HDF +CDF +OPQ +OPR +OQR +CPQ -DPQ -DPR -DQR -FPR -FQR +ODY +ODZ +OYR +OZR'.split():put(kn,tok[1:],1 if tok[0]=='+'else-1)
    caps={'U':{'HC':1,'HF':-1,'CD':1,'DF':1},
          'B':{'HC':-1,'HD':-1,'HF':-1,'CD':1,'CF':1,'DF':1},
          'R':{'HC':1,'HF':-1,'CD':-1,'DF':1,'OD':-1,'OF':-1,'HD':-1,'CF':-1},
          'L':{'HC':1,'HF':1,'CD':1,'DF':1,'OD':1,'OF':1,'HD':1,'CF':1}}
    for T,reg in zip('YZPQR',('BU'if mode else'UU')+'RRL'):
        put(kn,'OH'+T,-1);put(kn,'OC'+T,1)
        for edge,sg in caps[reg].items():put(kn,edge+T,sg)
    for T in'YZ':
        for cap in'PQ':put(kn,'C'+T+cap,-1);put(kn,'D'+T+cap,1)
        put(kn,'H'+T+'R',1)
    if mode:
        for T in'ZPQR':put(kn,'HY'+T,1);put(kn,'CY'+T,-1)
        put(kn,'YPR',1);put(kn,'YQR',1)
    else:put(kn,'OYZ',1);put(kn,'OFY',-1)
    return kn

def replay(kn,step,mode):
    typ,*args=step
    if typ=='P':
        word,token=args;a,b,c,d,e=word;assert len(set(word))==5
        pairs=[(a+b+c,a+d+e,1),(a+b+d,a+c+e,-1),(a+b+e,a+c+d,1)]
        signs=[co*get(kn,tr1)*get(kn,tr2)for tr1,tr2,co in pairs]
        assert signs.count(0)==1 and len(set(v for v in signs if v))==1
        tr1,tr2,co=pairs[signs.index(0)];sg=1 if token[0]=='+'else-1
        assert not get(kn,token[1:])
        tmp=dict(kn);put(tmp,token[1:],sg)
        assert co*get(tmp,tr1)*get(tmp,tr2)==-next(v for v in signs if v)
        put(kn,token[1:],sg)
    else:
        assert typ=='C';hull,points,target,token,claimed=args
        assert len(points)==1 and inside(kn,hull,points)
        sg=get(kn,hull);assert sg
        ub=UPPERS[mode,hull,sg];assert ub==F(claimed)<RHO
        words=[a+b+target for a,b in zip(hull,hull[1:]+hull[:1])]
        vals=[sg*get(kn,tr)for tr in words]
        assert vals.count(0)==1 and vals.count(1)==2
        assert token[1:]==words[vals.index(0)]and(1 if token[0]=='+'else-1)==-sg
        put(kn,token[1:],-sg)

def verify_upper(mode,word,sg,bound,sequence):
    box=coarse_box(mode);pp=sc(D(word),sg)
    used=set()
    for tok in sequence:
        i=VARS.index(tok[:-1]);end=1 if tok[-1]=='+'else 0
        assert i not in used;used.add(i)
        derivative=defaultdict(F)
        for mon,co in pp.items():
            if i in mon:
                assert mon.count(i)==1
                mm=list(mon);mm.remove(i);derivative[tuple(mm)]+=co
        dlo=dhi=derivative.get((),F(0))
        for mon,co in derivative.items():
            if mon:
                assert len(mon)==1
                lo,hi=box[mon[0]]
                dlo+=co*(lo if co>=0 else hi);dhi+=co*(hi if co>=0 else lo)
        assert dlo>=0 if end else dhi<=0
        nxt=defaultdict(F)
        for mon,co in pp.items():
            if i in mon:
                mm=list(mon);mm.remove(i);mon=tuple(mm);co*=box[i][end]
            nxt[mon]+=co
        pp={mon:co for mon,co in nxt.items()if co}
    assert set(pp)<={()} and pp.get((),F(0))==bound
    UPPERS[mode,word,sg]=bound

def factors(mode,box,kn):
    out={}
    for i,(lo,hi)in enumerate(box):out['L'+str(2*i)]=sub(vv[i],C(lo));out['L'+str(2*i+1)]=sub(C(hi),vv[i])
    extra=[sub(h,d),sub(c,f),add(sc(l,4),sc(c,-2),C(-1),sc(p,-1)),add(C(2),c,p,sc(l,-4)),add(sc(m,4),sc(d,-1),sc(q,-1)),add(sc(d,2),q,sc(m,-4))]
    out.update({'L'+str(28+i):pp for i,pp in enumerate(extra)})
    out['LEFTSUP']=add(mul(mul(f,h),sub(C(1),h)),C(-S))
    def area(poly):
        sg=get(kn,poly[:3]);assert sg
        return add(*(sc(D(poly[0]+poly[i]+poly[i+1]),sg)for i in range(1,len(poly)-1)))
    def factor(name):
        if name in out:return out[name]
        if name[0]in'+-':
            word=name[1:];sg=1 if name[0]=='+'else-1;assert get(kn,word)==sg
            pp=add(sc(D(word),sg),C(-S))
        elif name.startswith('C_'):
            _,word,points=name.split('_');assert len(points)==1 and inside(kn,word,points)
            pp=add(area(word),C(-3*S))
        elif name.startswith('Q_'):
            _,word,points=name.split('_');assert convex(kn,word)and len(set(points))==len(points)in[1,2]
            assert all(inside(kn,word,T)for T in points)
            pp=add(area(word),C(-(F('.449')if len(points)==1 else 8*S)))
        elif name.startswith('DROP_'):
            _,word,points=name.split('_');assert word[:2]in['OH','OC']and len(set(points))==len(points)in[1,2]
            assert all(inside(kn,word,T)for T in points)
            coord=PT[word[2]][0 if word[:2]=='OH'else 1]
            pp=add(coord,C(-TCOST[len(points)]))
        elif name.startswith('QS_'):
            _,hull,points,side,bd,q0=name.split('_');q0=F(q0)
            assert convex(kn,hull)and len(set(points))==len(points)in[1,2]
            assert all(inside(kn,hull,T)for T in points)
            A,B,Cc,Dd=hull
            n1=sum(inside(kn,A+Cc+Dd,T)for T in points);n2=sum(inside(kn,B+Cc+Dd,T)for T in points)
            pair=tuple(sorted((n1,n2)))
            if len(points)==1:limit={(0,0):F(29,5),(0,1):F(149,20),(1,1):F(12)}[pair]
            else:
                limit={(0,0):F(9),(0,1):F(9),(0,2):F(139,10),(1,1):F(12),(1,2):F(199,10),(2,2):F(149,5)}[pair]
                if all(inside(kn,A+B+Cc,T)and inside(kn,A+B+Dd,T)for T in points):limit=max(limit,F(299,31))
            assert q0<=limit
            X=D(A+B+Cc);Y=D(A+B+Dd);Z=D(A+Cc+Dd)
            word=A+B+(Cc if side=='X'else Dd);other=Y if side=='X'else X
            if bd=='box':upper=C(UPPERS[mode,word,1])
            else:
                assert bd=='yF'and set(word)==set('OCF');upper=C(1)
            pp=add(mul(upper,other),sc(sub(Y,Z),-q0*S))
        else:
            typ,T=name.split('_');xx,yy=PT[T]
            assert (typ in['RX','RY']and T in'PQ')or(typ in['LX','LY']and T=='R')
            pp={'RX':add(xx,sc(c,-1),C(-S)),'RY':add(d,sc(yy,-1),C(-S)),
                'LX':add(f,sc(xx,-1),C(-S)),'LY':add(yy,sc(h,-1),C(-S))}[typ]
        out[name]=pp;return pp
    return factor

def upper(poly,box):
    shifted=defaultdict(F)
    for mon,co in poly.items():
        part={():co}
        for i in mon:
            nxt=defaultdict(F)
            for ee,cc in part.items():nxt[ee]+=cc*box[i][0];nxt[tuple(sorted(ee+(i,)))]+=cc
            part=nxt
        for ee,cc in part.items():shifted[ee]+=cc
    out=shifted.get((),F(0))
    for ee,cc in shifted.items():
        if ee and cc>0:
            for i in ee:cc*=box[i][1]-box[i][0]
            out+=cc
    return out

def main():
    text=Path(__file__).with_name('C1_SIDE_PAIR_OPPOSITE_CENTRAL.md').read_text()
    prefix,*sections=text.split('### Row ')
    bounds=re.search(r'```c1pc-upper\n(.*?)```',prefix,re.S)[1]
    for line in bounds.splitlines():
        if line:
            mo,tr,sg,ub,*seq=line.split();verify_upper(int(mo),tr,int(sg),F(ub),seq)
    want={'C0':(0,None),'C1m':(1,-1),'C1p':(1,1)}
    counts=[0,0,0]
    for sec in sections:
        name=sec.splitlines()[0].strip();mode,sg=want.pop(name)
        def block(tag):return re.search(r'```'+tag+r'\n(.*?)```',sec,re.S)[1].strip().splitlines()
        kn=initial(mode)
        if sg:put(kn,'HPQ',sg)
        for line in block('c1pc-geometry'):replay(kn,line.split(),mode);counts[1]+=1
        raw=[line.split()for line in block('c1pc-box')];assert [r[0]for r in raw]==VARS
        box=[(F(r[1]),F(r[2]))for r in raw]
        assert all(lo<=a<=b<=hi for(lo,hi),(a,b)in zip(box,exact_box(mode)))
        factor=factors(mode,box,kn);total={};n=0
        for line in block('c1pc-sum'):
            for entry in line.split(';'):
                co,prod=entry.strip().split();co=int(co);assert co>0;pp=C(co)
                for atom in prod.split('*'):pp=mul(pp,factor(atom))
                assert max(map(len,pp),default=0)<=3
                total=add(total,pp);n+=1
        got=upper(total,box);expected=F(re.search(r'Upper bound: `([^`]+)`',sec)[1])
        assert got==expected and got<0,(name,got,expected)
        print(name,n,got);counts[0]+=1;counts[2]+=n
    assert not want and counts[0]==3 and counts[2]==454
    print('PASS: all three exhaustive rows,',counts[1],'geometric steps,',len(UPPERS),'explicit monotone area bounds, 454 fixed cubic terms')
if __name__=='__main__':main()
