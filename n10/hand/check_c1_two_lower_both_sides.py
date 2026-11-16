#!/usr/bin/env python3
"""Exact replay of the printed C1 two-lower/both-side tables."""
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
QCOST={1:F(449,1000),2:8*S,3:F(93,91)}
B=F(22,25);BM=RHO/B;AA=S/B;WW=B-2*AA;DELTA=S/(BM*(1-BM))
MESH_SIGNS='-OHC -OHY -OHZ -OHX +OCY +OCZ +OCX +OYZ -OYX -OZX -HCY -HCZ -HCX -HYZ -HYX +HZX +CYZ +CYX +CZX +YZX'.split()
def base_box(loc):
    box=[(BM,B),(BM,B),(DELTA,B),(DELTA,B),(3*AA,WW),(AA,B-4*AA),(AA,B-4*AA),(AA,WW)]
    for region in loc:
        pair={'U':[(AA,1-S),(AA,1-S)],'R':[(BM+AA,F(1)),(AA,F(11,25))],
              'L':[(AA,F(11,25)),(BM+AA,F(1))]}[region]
        box+=pair
    return box

def initial(loc):
    assert loc in ['URL','RUL','RLU'];kn={}
    for token in '-OHC -OHD -OHF +OCD +OCF +ODF +HCD +HCF +HDF +CDF +OYZ -HYZ +OPQ +OPR +OQR'.split():put(kn,token[1:],1 if token[0]=='+' else -1)
    for point in 'YZ':
        for edge,sg in [('OH',-1),('OC',1),('HC',-1),('HD',-1),('HF',-1),('CD',1),('CF',1),('DF',1)]:put(kn,edge+point,sg)
    caps={'U':[('HF',-1),('CD',1),('DF',1)],
          'R':[('HF',-1),('CD',-1),('DF',1),('OD',-1),('OF',-1),('HD',-1),('CF',-1)],
          'L':[('HF',1),('CD',1),('DF',1),('OD',1),('OF',1),('HD',1),('CF',1)]}
    for point,region in zip('PQR',loc):
        for edge,sg in [('OH',-1),('OC',1),('HC',1)]+caps[region]:put(kn,edge+point,sg)
        for lower in 'YZ':
            put(kn,'H'+lower+point,1);put(kn,'C'+lower+point,-1)
            if region!='U':
                put(kn,'F'+lower+point,1 if region=='R' else -1)
                put(kn,'D'+lower+point,1 if region=='R' else -1)
    right='PQR'[loc.index('R')];left='PQR'[loc.index('L')]
    for low in 'OYZ':put(kn,low+right+left,1)
    for anchor in 'DF':put(kn,anchor+right+left,-1)
    put(kn,'OZ'+right,-1);put(kn,'OY'+left,1)
    return kn

def mesh_premises(kn,word,sg):
    assert len(set(word))==6
    A,B,C,Y,Z,X=word
    assert get(kn,A+B+C)==-sg
    assert all(inside(kn,A+B+C,T) for T in Y+Z+X)
    assert inside(kn,A+B+Y,Z) and inside(kn,A+C+Y,X)
    mp=dict(zip('OHCYZX',word))
    return [(''.join(mp[T]for T in tok[1:]),sg*(1 if tok[0]=='+' else -1))for tok in MESH_SIGNS]

def cap_bound(loc,hull):
    if loc=='URL' and hull=='OCQ':return B*F(11,25)
    if loc=='RLU' and hull=='OHQ':return B*F(11,25)
    assert loc=='RUL'
    return {'CZP':(BM-AA)*F(11,25)+WW*(1-BM),'DZP':(1-AA)*(B-AA),
            'OYR':WW-AA*AA,'OZP':WW-AA*AA,'OCQ':B*(1-S),'OCR':B,'OHP':B}[hull]

def replay(kn,step,loc):
    kind,*args=step
    if kind=='P':
        word,token=args;a,b,c,d,e=word
        assert len(set(word))==5
        terms=[(a+b+c,a+d+e,1),(a+b+d,a+c+e,-1),(a+b+e,a+c+d,1)]
        vals=[co*get(kn,w1)*get(kn,w2)for w1,w2,co in terms]
        assert vals.count(0)==1 and len(set(x for x in vals if x))==1,step
        sg=1 if token[0]=='+' else -1;target=token[1:];assert not get(kn,target)
        test=dict(kn);put(test,target,sg)
        w1,w2,co=terms[vals.index(0)]
        assert co*get(test,w1)*get(test,w2)==-next(x for x in vals if x),step
        put(kn,target,sg)
    elif kind=='M':
        word,sg=args;sg=int(sg)
        for tr,ss in mesh_premises(kn,word,sg):put(kn,tr,ss)
    else:
        assert kind=='C';hull,points,target,token,claimed=args
        sg=get(kn,hull);assert sg and len(set(points))==len(points)
        assert all(inside(kn,hull,T)for T in points)
        assert target not in hull+points
        ub=cap_bound(loc,hull);assert ub==F(claimed)
        assert len(points)==3 or ub<TCOST[len(points)+1]
        words=[a+b+target for a,b in zip(hull,hull[1:]+hull[:1])]
        vals=[get(kn,w)*sg for w in words]
        assert vals.count(0)==1 and vals.count(1)==2
        wanted=words[vals.index(0)]
        assert canon(token[1:])==canon(wanted) and (1 if token[0]=='+'else-1)==-sg
        put(kn,token[1:],-sg)

def occupants(kn,hull):
    return ''.join(T for T in LABELS if T not in hull and inside(kn,hull,T))

def verify_box_trace(loc,kn,trace):
    box=[list(p)for p in base_box(loc)]
    for hull,index,bound,points in trace:
        index=int(index);bound=F(bound)
        assert hull[:2]in['OH','OC'] and len(points)==len(set(points))<=3
        assert all(inside(kn,hull,T)for T in points)
        cost=TCOST[len(points)]
        anchor=0 if hull[:2]=='OH'else 1
        coord=PT[hull[2]][0 if anchor==0 else 1]
        if coord==C(1):assert index==anchor and bound==cost
        else:
            assert len(coord)==1
            mon,co=next(iter(coord.items()));assert len(mon)==1 and co==1
            other=mon[0]
            assert index in[anchor,other]
            assert bound==cost/box[other if index==anchor else anchor][1]
        assert bound>=box[index][0]
        box[index][0]=bound
    assert all(lo<=hi for lo,hi in box)
    return [tuple(p)for p in box]

def factors(loc,box,kn):
    out={}
    for i,(lo,hi)in enumerate(box):out['L'+str(2*i)]=sub(vv[i],C(lo));out['L'+str(2*i+1)]=sub(C(hi),vv[i])
    central='PQR'[loc.index('U')];xx,yy=PT[central]
    more=[sub(h,d),sub(c,f),add(u,sc(z,-1),C(-2*S)),add(c,sc(u,-1),C(-2*S)),
          add(h,sc(v,-1),C(-4*S)),add(c,sc(z,-1),C(-2*S)),add(h,sc(w,-1),C(-2*S)),
          add(C(1-S),sc(u,-1),sc(v,-1)),add(C(1-S),sc(z,-1),sc(w,-1)),
          add(xx,yy,C(-(RHO+S)/B)),add(C(B-AA),sc(u,-1),sc(v,-1)),add(C(B-AA),sc(z,-1),sc(w,-1))]
    out.update({'L'+str(28+i):pp for i,pp in enumerate(more)})
    out.update(KLOW=add(mul(h,c),C(-RHO)),FAN=add(mul(h,u),C(-3*S)),
               CENT=add(mul(h,u),mul(c,v),sc(mul(h,z),-1),sc(mul(c,w),-1)),
               RIGHTSUP=add(mul(mul(d,c),sub(C(1),c)),C(-S)),LEFTSUP=add(mul(mul(f,h),sub(C(1),h)),C(-S)))
    for T in 'PQR':
        xx,yy=PT[T];out['QUAD'+T]=add(mul(h,xx),mul(c,yy),C(-8*S))
    def area(word):
        sg=get(kn,word[:3]);assert sg
        return add(*(sc(D(word[0]+word[i]+word[i+1]),sg)for i in range(1,len(word)-1)))
    def factor(name):
        if name in out:return out[name]
        if name[0]in'+-':
            sg=1 if name[0]=='+'else-1;word=name[1:]
            assert len(word)==3 and get(kn,word)==sg
            pp=add(sc(D(word),sg),C(-S))
        elif name.startswith('C_'):
            _,word,pts=name.split('_');assert len(pts)==len(set(pts))in[1,2,3]
            assert all(inside(kn,word,T)for T in pts)
            pp=add(area(word),C(-TCOST[len(pts)]))
        elif name.startswith('Q_'):
            _,word,pts=name.split('_');assert convex(kn,word)and len(pts)==len(set(pts))in[1,2,3]
            assert all(inside(kn,word,T)for T in pts)
            pp=add(area(word),C(-QCOST[len(pts)]))
        elif name.startswith('DROP_'):
            _,word,pts=name.split('_');assert word[:2]in['OH','OC']
            assert len(pts)==len(set(pts))in[1,2,3]and all(inside(kn,word,T)for T in pts)
            coord=PT[word[2]][0 if word[:2]=='OH'else 1]
            pp=add(coord,C(-TCOST[len(pts)]))
        elif name.startswith('SP_'):
            _,hull,pair,diag=name.split('_');edge=diag[:2];sg=int(diag[2:])
            assert len(hull)==4 and convex(kn,hull)and all(inside(kn,hull,T)for T in pair)
            assert all(get(kn,ij+pair[0])*get(kn,ij+pair[1])==-1 for ij in[hull[0]+hull[2],hull[1]+hull[3]])
            assert edge in[hull[0]+hull[2],hull[1]+hull[3]] and sg in[-1,1]
            pp=add(area(hull),C(-F(1457,250)*S),sc(sub(D(edge[1]+pair),D(edge[0]+pair)),sg))
        elif name.startswith('M_'):
            _,word,ss,jj=name.split('_');sg=int(ss);j=int(jj)
            for tr,ss in mesh_premises(kn,word,sg):assert get(kn,tr)==ss
            A,B,Cc,Y,Z,X=word
            ar=sc(D(A+B+Cc),-sg)
            ears=[sc(D(A+B+Z),-sg),sc(D(A+Cc+X),sg),sc(D(B+Cc+Y),-sg)]
            formulas=[add(ar,sc(ear,-1),C(-F(3927,500)*S))for ear in ears]
            formulas+=[add(C(F(8,5)*S),sc(D(Y+Z+X),-sg)),add(sc(D(B+Y+Z),-sg),sc(D(A+Z+X),-sg),sc(D(Cc+Y+X),sg),C(-F(2427,500)*S))]
            pp=formulas[j]
        else:
            typ,T=name.split('_');xx,yy=PT[T]
            assert typ in['RX','RY','LX','LY']and loc['PQR'.index(T)]==('R'if typ[0]=='R'else'L')
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
    text=Path(__file__).with_name('C1_TWO_LOWER_BOTH_SIDES.md').read_text()
    prefix,*sections=text.split('### Leaf ')
    splits=dict(line.split()for line in re.search(r'```c1bs-tree\n(.*?)```',prefix,re.S)[1].splitlines()if line)
    leaves={sec.splitlines()[0].strip():sec for sec in sections}
    expected=tuple(map(int,re.search(r'Counts: `(\d+) (\d+) (\d+) (\d+)`',prefix).groups()))
    seen=set();counts=[0,0,0,0]
    def visit(name,loc,ass):
        assert name not in seen;seen.add(name)
        if name in splits:
            for suffix,sg in [('m',-1),('p',1)]:visit(name+suffix,loc,{**ass,splits[name]:sg})
            return
        sec=leaves[name]
        def block(tag):return re.search(r'```'+tag+r'\n(.*?)```',sec,re.S)[1].strip().splitlines()
        stated={w[1:]:1 if w[0]=='+'else-1 for w in re.search(r'Assumptions: `([^`]*)`',sec)[1].split()}
        assert stated==ass
        kn=initial(loc)
        for word,sg in ass.items():put(kn,word,sg)
        for line in block('c1bs-geometry'):replay(kn,line.split(),loc);counts[3]+=1
        if 'Exclusion:'in sec:
            typ,word,sg=re.search(r'Exclusion: `([^`]+)`',sec)[1].split();assert typ=='mesh'
            predictions=mesh_premises(kn,word,int(sg))
            assert any(get(kn,tr)==-ss for tr,ss in predictions)
            counts[1]+=1;return
        btrace=[line.split()for line in block('c1bs-bounds')]
        exact=verify_box_trace(loc,kn,btrace)
        raw=[line.split()for line in block('c1bs-box')];assert [r[0]for r in raw]==VARS
        box=[(F(r[1]),F(r[2]))for r in raw]
        assert all(lo<=a<=b<=hi for(lo,hi),(a,b)in zip(box,exact))
        factor=factors(loc,box,kn);total={};nt=0
        for line in block('c1bs-sum'):
            for item in line.split(';'):
                co,prod=item.strip().split();co=int(co);assert co>0
                pp=C(co)
                for atom in prod.split('*'):pp=mul(pp,factor(atom))
                assert max(map(len,pp),default=0)<=3
                total=add(total,pp);nt+=1
        got=upper(total,box);stated=F(re.search(r'Upper bound: `([^`]+)`',sec)[1])
        assert got==stated and got<0,(name,got,stated)
        counts[0]+=1;counts[2]+=nt
        print(name,nt,got)
    for loc in['URL','RUL','RLU']:visit(loc,loc,{})
    assert seen==set(splits)|set(leaves)
    assert tuple(counts)==expected,(counts,expected)
    assert B*B*(1-B)<S and BM>F(1,2)and B-S/(1-BM)==F(11,25)
    print('PASS:',len(splits),'binary splits;',counts,'cubics, geometric leaves, integer terms, geometric steps')

if __name__=='__main__':main()
