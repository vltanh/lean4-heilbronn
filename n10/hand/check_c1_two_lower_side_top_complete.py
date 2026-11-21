#!/usr/bin/env python3
"""Read the four printed C1 side/top-pair rows and check them exactly."""
from collections import defaultdict
from fractions import Fraction as F
from itertools import combinations
from pathlib import Path
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
def initial(loc):
    assert loc in ['RTT','TTL'];kn={}
    for token in '-OHC -OHD -OHF +OCD +OCF +ODF +HCD +HCF +HDF +CDF +OYZ -HYZ +ODZ -OFY +OPQ +OPR +OQR'.split():put(kn,token[1:],1 if token[0]=='+' else -1)
    for point in 'YZ':
        for edge,sg in [('OH',-1),('OC',1),('HC',-1),('HD',-1),('HF',-1),('CD',1),('CF',1),('DF',1)]:put(kn,edge+point,sg)
    caps={'R':[('HF',-1),('CD',-1),('DF',1),('OD',-1),('OF',-1),('HD',-1),('CF',-1)],
          'T':[('HF',-1),('CD',1),('DF',-1),('OD',1),('OF',-1),('HD',1),('CF',-1)],
          'L':[('HF',1),('CD',1),('DF',1),('OD',1),('OF',1),('HD',1),('CF',1)]}
    for point,where in zip('PQR',loc):
        for edge,sg in [('OH',-1),('OC',1),('HC',1)]+caps[where]:put(kn,edge+point,sg)
        for lower in 'YZ':
            put(kn,'H'+lower+point,1);put(kn,'C'+lower+point,-1)
            put(kn,'F'+lower+point,-1 if where=='L' else 1)
            put(kn,'D'+lower+point,1 if where=='R' else -1)
    for side,where in zip('PQR',loc):
        for top,region in zip('PQR',loc):
            if where=='R' and region=='T':put(kn,'D'+side+top,-1)
            if where=='L' and region=='T':put(kn,'F'+top+side,-1)
    return kn
def replay(kn,step,loc):
    if step[0]=='H':
        _,token=step;sg=1 if token[0]=='+' else -1;word=token[1:]
        pair=''.join(ch for ch,where in zip('PQR',loc) if where=='T')
        assert word=='F'+pair and get(kn,'D'+pair)==-sg
        put(kn,word,sg);return
    assert step[0]=='P'
    _,word,token=step;assert len(set(word))==5
    a,b,c,d,e=word
    terms=[(a+b+c,a+d+e,1),(a+b+d,a+c+e,-1),(a+b+e,a+c+d,1)]
    signs=[co*get(kn,w1)*get(kn,w2) for w1,w2,co in terms]
    assert signs.count(0)==1 and len(set(q for q in signs if q))==1,step
    target=token[1:];sg=1 if token[0]=='+' else -1
    assert not get(kn,target)
    test=dict(kn);put(test,target,sg)
    w1,w2,co=terms[signs.index(0)]
    assert co*get(test,w1)*get(test,w2)==-next(q for q in signs if q),step
    put(kn,target,sg)

def factors(loc,box,kn):
    out={}
    for i,(lo,hi) in enumerate(box):out['L'+str(2*i)]=sub(vv[i],C(lo));out['L'+str(2*i+1)]=sub(C(hi),vv[i])
    more=[sub(h,d),sub(c,f),add(u,sc(z,-1),C(-2*S)),add(c,sc(u,-1),C(-2*S)),add(h,sc(v,-1),C(-4*S)),add(c,sc(z,-1),C(-2*S)),add(h,sc(w,-1),C(-2*S)),add(C(1-S),sc(u,-1),sc(v,-1)),add(C(1-S),sc(z,-1),sc(w,-1))]
    out.update({'L'+str(28+i):pp for i,pp in enumerate(more)})
    out.update(KLOW=add(mul(h,c),C(-RHO)),FAN=add(mul(h,u),C(-3*S)),TOPCOUNT=add(mul(sub(C(1),d),sub(C(1),f)),C(-3*S)),LEFTSUP=add(mul(mul(f,h),sub(C(1),h)),C(-S)))
    def area(word):return sc(D(word),get(kn,word))
    def factor(name):
        if name in out:
            if name=='LEFTSUP':assert loc=='TTL'
            return out[name]
        if name[0] in '+-':
            sg=1 if name[0]=='+' else -1;word=name[1:]
            assert len(word)==3 and get(kn,word)==sg,(name,loc)
            pp=add(sc(D(word),sg),C(-S))
        elif name.startswith('C_'):
            _,word,pts=name.split('_');assert len(pts)==1 and inside(kn,word,pts)
            pp=add(area(word),C(-3*S))
        elif name.startswith('Q_'):
            _,word,pts=name.split('_')
            assert convex(kn,word) and len(pts)==len(set(pts)) in [1,2] and all(inside(kn,word,T) for T in pts),(name,loc)
            pp=add(D(word[:3]),D(word[0]+word[2:]),C(-(F(449,1000) if len(pts)==1 else 8*S)))
        elif name.startswith('DROP_'):
            _,word,pts=name.split('_');assert len(pts)==1 and inside(kn,word,pts)
            assert word[:2] in ['OH','OC'];coord=PT[word[2]][0 if word[:2]=='OH' else 1]
            pp=add(coord,C(-3*S))
        elif name.startswith('BARY_'):
            _,pair,which=name.split('_');inner,outer=pair
            assert loc['PQR'.index(inner)]==loc['PQR'.index(outer)]=='T' and inside(kn,'DF'+outer,inner)
            xx,yy=PT[inner];ox,oy=PT[outer]
            formulas={'xl':add(sc(xx,4),C(-1),sc(f,-2),sc(ox,-1)),
                      'yl':add(sc(yy,4),C(-1),sc(d,-2),sc(oy,-1)),
                      'xu':add(C(2),f,ox,sc(xx,-4)),
                      'yu':add(C(2),d,oy,sc(yy,-4))}
            pp=formulas[which]
        else:
            words=name.split('_');typ,T=words[:2];xx,yy=PT[T]
            if typ in ['RX','RY','LX','LY']:
                assert loc['PQR'.index(T)]==('R' if typ[0]=='R' else 'L')
                pp={'RX':add(xx,sc(c,-1),C(-S)),'RY':add(d,sc(yy,-1),C(-S)),
                    'LX':add(f,sc(xx,-1),C(-S)),'LY':add(yy,sc(h,-1),C(-S))}[typ]
            else:
                assert typ in ['TX','TY','TPX','TPY'] and len(words)==3
                pts=words[2];assert len(pts)<=1 and loc['PQR'.index(T)]=='T'
                assert get(kn,'DF'+T)==-1 and all(inside(kn,'DF'+T,U) for U in pts)
                cost=3*S if pts else S
                pp={'TX':add(xx,sc(f,-1),C(-cost)),
                    'TY':add(yy,sc(d,-1),C(-cost)),
                    'TPX':add(mul(sub(C(1),d),sub(xx,f)),C(-cost)),
                    'TPY':add(mul(sub(C(1),f),sub(yy,d)),C(-cost))}[typ]
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

def exact_boxes(loc,outer):
    a=F(841,1000);delta=S/(RHO*(1-RHO));dmax=1-3*S/(1-S);fmax=1-3*S/(1-delta)
    right=[(RHO/a,F(1)),(RHO,a),(delta,dmax),(S,fmax),
           (3*S,a-2*S),(S/a,1-4*S/a),(S,a-4*S),(S/a,1-2*S/a)]
    left=[(RHO,a),(RHO/a,F(1)),(S,fmax),(delta,dmax),
          (3*S/a,1-2*S/a),(S,a-4*S),(S/a,1-4*S/a),(S,a-2*S)]
    box=right if loc=='RTT' else left
    for T,where in zip('PQR',loc):
        if where in 'RL':
            v=[(RHO+S/F(693,1000),F(1)),(S/a,F(693,1000)-S/(1-RHO))]
            if where=='L':v=v[::-1]
        else:
            cost=3*S if T==outer else S
            v=[(S+cost/(1-delta),F(1)),(delta+cost/(1-S),F(1))]
            if loc=='TTL':v=v[::-1]
        box+=v
    return box

def main():
    text=Path(__file__).with_name('C1_TWO_LOWER_SIDE_TOP_COMPLETE.md').read_text()
    sections=text.split('### Row ')[1:];assert len(sections)==4
    expected={'RTTm':('RTT','DQR',-1,'R'),'RTTp':('RTT','DQR',1,'Q'),
              'TTLm':('TTL','DPQ',-1,'Q'),'TTLp':('TTL','DPQ',1,'P')}
    nterms=0;nsteps=0
    for sec in sections:
        name=sec.splitlines()[0].strip();loc,tri,sg,outer=expected.pop(name)
        def block(tag):return re.search(r'```'+tag+r'\n(.*?)```',sec,re.S)[1].strip().splitlines()
        raw=[line.split() for line in block('c1st-box')]
        assert [r[0] for r in raw]==VARS
        box=[(F(r[1]),F(r[2])) for r in raw]
        exact=exact_boxes(loc,outer)
        assert all(lo<=a<=b<=hi for (lo,hi),(a,b) in zip(box,exact))
        kn=initial(loc);put(kn,tri,sg)
        for line in block('c1st-geometry'):replay(kn,line.split(),loc);nsteps+=1
        factor=factors(loc,box,kn);total={};count=0
        for line in block('c1st-sum'):
            for term in line.split(';'):
                weight,product=term.strip().split();weight=int(weight);assert weight>0
                pp=C(weight)
                for atom in product.split('*'):pp=mul(pp,factor(atom))
                assert max(map(len,pp),default=0)<=3
                total=add(total,pp);count+=1
        result=upper(total,box)
        stated=F(re.search(r'Upper bound: `([^`]+)`',sec)[1])
        assert result==stated and result<0,(name,result,stated)
        print(name,count,result);nterms+=count
    assert not expected and nterms==764 and nsteps==60
    print('PASS: all four exhaustive side/top-pair rows, 60 geometric deductions, 764 exact cubic terms')

if __name__=='__main__':main()
