#!/usr/bin/env python3
"""Exact replay of the fixed one-lower, central, side-pair, top-cap proof."""
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
QCOST={1:F('.449'),2:8*S,3:F(93,91),4:F('1.102'),5:F('1.517'),6:F('1.646')}
MESH_SIGNS='-OHC -OHY -OHZ -OHX +OCY +OCZ +OCX +OYZ -OYX -OZX -HCY -HCZ -HCX -HYZ -HYX +HZX +CYZ +CYX +CZX +YZX'.split()
CAPS={}
def topcost(loc):return S

def base_box(loc):
    assert loc=='RRT'
    cap=F(157,250);dhi=F(897,1000);clo=3*S;plo=F(851,1000);pyo=S/cap;pyhi=dhi-3*S/(1-clo)
    return [(RHO,F(1)),(clo,cap),(RHO,dhi),(S,cap),
        (S,cap-2*S),(S/cap,1-2*S/cap),(S,1-S),(S/cap,1-S),
        (plo,F(1)),(pyo,pyhi),((5*clo+2+2*plo)/9,(2*cap+7)/9),
        (2*(RHO+pyo)/9,(5*dhi+2*pyhi)/9),(S+S/(1-RHO),F(1)),(RHO+S/(1-S),F(1))]

def initial(loc):
    assert loc=='RRT';kn={}
    for tok in '-OHC -OHD -OHF +OCD +OCF +ODF +HCD +HCF +HDF +CDF +OPQ +OPR +OQR -DPQ +CPQ -DPR -DQR'.split():put(kn,tok[1:],1 if tok[0]=='+'else-1)
    caps={'B':{'OH':-1,'OC':1,'HC':-1,'HD':-1,'HF':-1,'CD':1,'CF':1,'DF':1},'U':{'OH':-1,'OC':1,'HC':1,'HF':-1,'CD':1,'DF':1},'R':{'OH':-1,'OC':1,'HC':1,'HF':-1,'CD':-1,'DF':1,'OD':-1,'OF':-1,'HD':-1,'CF':-1},'T':{'OH':-1,'OC':1,'HC':1,'HF':-1,'CD':1,'DF':-1,'OD':1,'OF':-1,'HD':1,'CF':-1}}
    for V,reg in [('Y','B'),('Z','U'),('P','R'),('Q','R'),('R','T')]:
        for edge,sg in caps[reg].items():put(kn,edge+V,sg)
    for V in 'ZPQR':put(kn,'HY'+V,1);put(kn,'CY'+V,-1)
    for V in 'PQ':put(kn,'DY'+V,1);put(kn,'FY'+V,1)
    put(kn,'DYR',-1);put(kn,'FYR',1)
    return kn

def mesh_predictions(kn,word,sg):
    assert len(set(word))==6
    A,B,C,Y,Z,X=word
    assert get(kn,A+B+C)==-sg and all(inside(kn,A+B+C,T)for T in Y+Z+X)
    assert inside(kn,A+B+Y,Z)and inside(kn,A+C+Y,X)
    mp=dict(zip('OHCYZX',word))
    return [(''.join(mp[T]for T in tok[1:]),sg*(1 if tok[0]=='+'else-1))for tok in MESH_SIGNS]

def upper_certificate(loc,word,sg,bound,seq):
    box=base_box(loc);pp=sc(D(word),sg)
    seen=set()
    for token in seq:
        i=VARS.index(token[:-1]);hi=token[-1]=='+';assert i not in seen;seen.add(i)
        der=defaultdict(F)
        for mon,co in pp.items():
            if i in mon:
                assert mon.count(i)==1
                mm=list(mon);mm.remove(i);der[tuple(mm)]+=co
        lo=up=der.get((),F(0))
        for mon,co in der.items():
            if mon:
                assert len(mon)==1;a,b=box[mon[0]]
                lo+=co*(a if co>=0 else b);up+=co*(b if co>=0 else a)
        assert lo>=0 if hi else up<=0
        new=defaultdict(F)
        for mon,co in pp.items():
            if i in mon:
                mm=list(mon);mm.remove(i);mon=tuple(mm);co*=box[i][int(hi)]
            new[mon]+=co
        pp={mon:co for mon,co in new.items()if co}
    assert set(pp)<={()}and pp.get((),F(0))==bound
    CAPS[loc,word,sg]=bound

def replay(kn,step,loc):
    kind,*aa=step
    if kind=='P':
        word,token=aa;a,b,c,d,e=word
        terms=[(a+b+c,a+d+e,1),(a+b+d,a+c+e,-1),(a+b+e,a+c+d,1)]
        ss=[co*get(kn,t1)*get(kn,t2)for t1,t2,co in terms]
        assert ss.count(0)==1 and len(set(s for s in ss if s))==1
        target=token[1:];sg=1 if token[0]=='+'else-1;assert not get(kn,target)
        tt=dict(kn);put(tt,target,sg);t1,t2,co=terms[ss.index(0)]
        assert co*get(tt,t1)*get(tt,t2)==-next(s for s in ss if s)
        put(kn,target,sg)
    elif kind=='M':
        word,sg=aa
        for tr,s in mesh_predictions(kn,word,int(sg)):put(kn,tr,s)
    elif kind=='V':
        point,hull,edge,sg=aa;sg=int(sg)
        assert inside(kn,hull,point)and point not in edge
        vals=[0 if T in edge else get(kn,edge+T)for T in hull]
        assert sg in vals and all(T in edge or v==sg for T,v in zip(hull,vals))
        put(kn,edge+point,sg)
    else:
        assert kind=='C';hull,pts,target,token,claimed=aa
        sg=get(kn,hull);assert sg and len(set(pts))==len(pts)
        assert all(inside(kn,hull,T)for T in pts)
        ub=CAPS[loc,hull,sg];assert ub==F(claimed)
        assert len(pts)==3 or ub<TCOST[len(pts)+1]
        words=[a+b+target for a,b in zip(hull,hull[1:]+hull[:1])]
        ss=[sg*get(kn,tr)for tr in words]
        assert ss.count(0)==1 and ss.count(1)==2
        assert token[1:]==words[ss.index(0)]and(1 if token[0]=='+'else-1)==-sg
        put(kn,token[1:],-sg)

def top_witness(kn,why):
    kind,*aa=why
    if kind=='triangle':
        hull,pts=aa;assert hull[:2]=='DF'and len(pts)==2 and all(inside(kn,hull,T)for T in pts)
        return RHO
    hull,point=aa[:2];assert len(hull)==4 and convex(kn,hull)and inside(kn,hull,point)
    assert hull[0]=='D'and hull[-1]=='F';A,B=hull[1:3]
    if kind=='mixed':assert aa[2]in['D'+A+B,'F'+A+B]and inside(kn,aa[2],point);return RHO
    assert kind=='opposite'and inside(kn,'D'+A+B,point)and inside(kn,'F'+A+B,point)
    return 12*S

def bounds_trace(loc,kn,trace):
    box=[list(b)for b in base_box(loc)]
    def cost(hull,pts):
        pts=''if pts=='-'else pts
        assert len(pts)==len(set(pts))<=3 and all(inside(kn,hull,T)for T in pts)
        return TCOST[len(pts)]
    for step in trace:
        kind,word,pts,ii,side,vv0,*rest=step;idx=int(ii);value=F(vv0)
        if kind=='T':
            val=cost(word,pts);anchor=0 if word[:2]=='OH'else 1
            assert word[:2]in['OH','OC']
            coord=PT[word[2]][0 if anchor==0 else 1]
            if coord==C(1):assert idx==anchor and value==val
            else:
                mon,co=next(iter(coord.items()));assert len(coord)==1 and len(mon)==1 and co==1;other=mon[0]
                assert idx in[anchor,other]and value==val/box[other if idx==anchor else anchor][1]
            assert side=='lower'
        elif kind in['S','X','Y']:
            assert word in'PQR'and loc['PQR'.index(word)]=='T';val=cost('DF'+word,pts)
            if kind=='S':
                assert idx in[2,3]and side=='upper'
                other=5-idx;assert box[other][0]<1 and value==1-val/(1-box[other][0])
            else:
                ci=8+2*'PQR'.index(word)+(kind=='Y');assert idx==ci and side=='lower'
                a,b=(3,2)if kind=='X'else(2,3)
                assert box[b][0]<1 and value==box[a][0]+val/(1-box[b][0])
        elif kind=='H':
            why=[word]+([]if pts=='-'else pts.split(','))+rest;val=top_witness(kn,why)
            assert idx in[2,3]and side=='upper';other=5-idx
            assert value==1-val/(1-box[other][0])
        elif kind=='E':
            assert word in ['OD','OF'] and len(set(pts))==len(pts)==3
            sg=-1 if word=='OD'else 1
            assert all(get(kn,word+T)==sg for T in pts)
            val=9*S if(word=='OD'and'R'in loc)or(word=='OF'and'L'in loc)else F(823,1000)
            assert idx==(2 if word=='OD'else 3)and side=='lower'and value==val
        elif kind=='B':
            assert pts=='Q'and word in ['x','y']
            assert idx==(10 if word=='x'else 11)
            if word=='x':vv1=(5*box[1][0]+2+2*box[8][0])/9 if side=='lower'else(2*box[1][1]+2*box[8][1]+5)/9
            else:vv1=2*(box[2][0]+box[9][0])/9 if side=='lower'else(5*box[2][1]+2*box[9][1])/9
            assert value==vv1
        elif kind=='N':
            assert pts=='Y'and word in ['x','y']and side=='upper'and inside(kn,'OHC','Y')
            assert idx==(4 if word=='x'else 5)
            assert value==(box[1][1]-2*S/box[0][1]if word=='x'else box[0][1]-2*S/box[1][1])
        elif kind=='O':
            assert word in['dh','fc']
            a,b=(0,2)if word=='dh'else(1,3)
            assert (side=='lower'and idx==a and value==box[b][0])or(side=='upper'and idx==b and value==box[a][1])
        else:
            raise AssertionError(('unsupported interval rule',kind))
        if side=='lower':assert value>box[idx][0];box[idx][0]=value
        else:assert side=='upper'and value<box[idx][1];box[idx][1]=value
    return [tuple(b)for b in box]

def factors(loc,box,kn):
    out={}
    for i,(lo,hi)in enumerate(box):out['L'+str(2*i)]=sub(vv[i],C(lo));out['L'+str(2*i+1)]=sub(C(hi),vv[i])
    more=[sub(h,d),sub(c,f),add(sc(l,9),sc(c,-5),C(-2),sc(p,-2)),add(sc(c,2),sc(p,2),C(5),sc(l,-9)),add(sc(m,9),sc(d,-2),sc(q,-2)),add(sc(d,5),sc(q,2),sc(m,-9)),add(C(1-S),sc(u,-1),sc(v,-1))]
    out.update({'L'+str(28+i):pp for i,pp in enumerate(more)})
    out.update(KLOW=add(mul(h,c),C(-3*S)),PAIRSUP=add(mul(mul(d,c),sub(C(1),c)),C(-S),sc(c,-2*S)),TOPCOUNT=add(mul(sub(C(1),d),sub(C(1),f)),C(-S)),QCENT=add(C(1-F('.449')),sc(mul(sub(h,d),sub(c,f)),-1)))
    def area(poly):
        sg=get(kn,poly[:3]);assert sg
        return add(*(sc(D(poly[0]+poly[i]+poly[i+1]),sg)for i in range(1,len(poly)-1)))
    def factor(name):
        if name in out:return out[name]
        if name[0]in'+-':
            sg=1 if name[0]=='+'else-1;tr=name[1:];assert len(tr)==3 and get(kn,tr)==sg
            pp=add(sc(D(tr),sg),C(-S))
        elif name.startswith('C_'):
            _,word,pts=name.split('_');assert len(pts)==len(set(pts))in[1,2,3]and all(inside(kn,word,T)for T in pts)
            pp=add(area(word),C(-TCOST[len(pts)]))
        elif name.startswith('Q_'):
            _,word,pts=name.split('_');assert convex(kn,word)and len(pts)==len(set(pts))in QCOST
            assert all(inside(kn,word,T)for T in pts)
            pp=add(area(word),C(-QCOST[len(pts)]))
        elif name.startswith('DROP_'):
            _,word,pts=name.split('_');assert word[:2]in['OH','OC']and len(pts)==len(set(pts))in[1,2,3]
            assert all(inside(kn,word,T)for T in pts)
            coord=PT[word[2]][0 if word[:2]=='OH'else 1];pp=add(coord,C(-TCOST[len(pts)]))
        elif name.startswith('SP_'):
            _,hull,pair,ee=name.split('_');edge=ee[:2];sg=int(ee[2:])
            assert convex(kn,hull)and all(inside(kn,hull,T)for T in pair)
            assert all(get(kn,ij+pair[0])*get(kn,ij+pair[1])==-1 for ij in[hull[0]+hull[2],hull[1]+hull[3]])
            assert edge in[hull[0]+hull[2],hull[1]+hull[3]]and sg in[-1,1]
            rate=F(6)if set(hull)==set('HCDF')else F(1457,250)
            pp=add(area(hull),C(-rate*S),sc(sub(D(edge[1]+pair),D(edge[0]+pair)),sg))
        elif name.startswith('M_'):
            _,word,ss,jj=name.split('_');sg=int(ss);j=int(jj)
            for tr,s in mesh_predictions(kn,word,sg):assert get(kn,tr)==s
            A,B,Cc,Y,Z,X=word;ar=sc(D(A+B+Cc),-sg)
            ears=[sc(D(A+B+Z),-sg),sc(D(A+Cc+X),sg),sc(D(B+Cc+Y),-sg)]
            vals=[add(ar,sc(ear,-1),C(-F(3927,500)*S))for ear in ears]
            vals+=[add(C(F(8,5)*S),sc(D(Y+Z+X),-sg)),add(sc(D(B+Y+Z),-sg),sc(D(A+Z+X),-sg),sc(D(Cc+Y+X),sg),C(-F(2427,500)*S))]
            pp=vals[j]
        elif name.startswith('EP6_'):
            _,edge,pts=name.split('_');sg=-1 if edge=='OD'else 1
            assert edge in ['OD','OF']and len(set(pts))==len(pts)==3 and all(get(kn,edge+T)==sg for T in pts)
            cost=9*S if(edge=='OD'and'R'in loc)or(edge=='OF'and'L'in loc)else F(823,1000)
            pp=sub(d if edge=='OD'else f,C(cost))
        elif name[:3]in['RX_','RY_','LX_','LY_']:
            typ,T=name.split('_');reg=loc['PQR'.index(T)];xx,yy=PT[T]
            assert (reg=='R'and typ in ['RX','RY'])or(reg=='L'and typ in ['LX','LY'])
            pp={'RX':add(xx,sc(c,-1),C(-S)),'RY':add(d,sc(yy,-1),C(-S)),'LX':add(f,sc(xx,-1),C(-S)),'LY':add(yy,sc(h,-1),C(-S))}[typ]
        elif name.startswith('TOP3_'):
            cost=top_witness(kn,name.split('_')[1:]);pp=add(mul(sub(C(1),d),sub(C(1),f)),C(-cost))
        else:
            typ,T,pts=name.split('_');assert typ in['TX','TY','TPX','TPY']and loc['PQR'.index(T)]=='T'
            assert len(set(pts))==len(pts)<=3 and all(inside(kn,'DF'+T,U)for U in pts)
            val=TCOST[len(pts)];xx,yy=PT[T]
            pp={'TX':add(xx,sc(f,-1),C(-val)),'TY':add(yy,sc(d,-1),C(-val)),
                'TPX':add(mul(sub(C(1),d),sub(xx,f)),C(-val)),'TPY':add(mul(sub(C(1),f),sub(yy,d)),C(-val))}[typ]
        out[name]=pp;return pp
    return factor

def upper(poly,box):
    sp=defaultdict(F)
    for mon,co in poly.items():
        pp={():co}
        for i in mon:
            nn=defaultdict(F)
            for ee,cc in pp.items():nn[ee]+=cc*box[i][0];nn[tuple(sorted(ee+(i,)))]+=cc
            pp=nn
        for ee,cc in pp.items():sp[ee]+=cc
    out=sp.get((),F(0))
    for ee,cc in sp.items():
        if ee and cc>0:
            for i in ee:cc*=box[i][1]-box[i][0]
            out+=cc
    return out

def exclusion(kn,args,loc,box):
    kind,*aa=args
    if kind=='box':assert any(a>b for a,b in box)
    elif kind=='cluster':
        hull,pivot,fan,points=aa
        assert len(points)==2 and len(set(points))==2 and pivot not in points and pivot in fan
        assert set(fan)-set(hull)=={pivot}
        assert all(inside(kn,hull,T)for T in pivot+points)and all(inside(kn,fan,T)for T in points)
    elif kind=='area_cap':
        hull,points,ub,cost=aa;assert len(set(points))==len(points)in[1,2,3]
        assert all(inside(kn,hull,T)for T in points)
        assert CAPS[loc,hull,get(kn,hull)]==F(ub)<F(cost)==TCOST[len(points)]
    elif kind=='gp':
        a,b,c,d,e=aa[0]
        signs=[get(kn,a+b+c)*get(kn,a+d+e),-get(kn,a+b+d)*get(kn,a+c+e),get(kn,a+b+e)*get(kn,a+c+d)]
        assert 0 not in signs and len(set(signs))==1
    elif kind=='endpoint7':
        edge,pts=aa;sg=-1 if edge=='OD'else 1
        assert edge in ['OD','OF']and len(set(pts))==len(pts)==4 and all(get(kn,edge+T)==sg for T in pts)
    elif kind=='central_endpoint_top':
        base,side,pts=aa;right='R'in loc
        assert 'T'in loc and base==('OD'if right else'OF')and side=='PQR'[loc.index('R'if right else'L')]
        contact='C'if right else'H'
        assert len(set(pts))==len(pts)==2 and all(inside(kn,base+contact,T)and inside(kn,base+side,T)for T in pts)
        assert F(10,103)-F(897,1000)*F(10,103)**2<S
        assert F(299,31)*S==F(897,1000)
    elif kind=='four':
        hull,points=aa;assert len(set(points))==len(points)==4 and all(inside(kn,hull,T)for T in points)
    elif kind=='convex5top':
        hull,=aa;assert loc=='TTT'and set(hull)==set('DFPQR')and len(hull)==5
        sg=get(kn,hull[:3]);assert sg and all(get(kn,''.join(tr))==sg for tr in combinations(hull,3))
        assert S>F(1,11)
    elif kind=='top_fourth_cell':assert top_witness(kn,['opposite']+aa)>1
    elif kind=='mesh':assert any(get(kn,tr)==-sg for tr,sg in mesh_predictions(kn,aa[0],int(aa[1])))
    else:raise AssertionError(('unknown terminal',args))

def main():
    import sys
    family='PAIR_TOP_K1'
    path=Path(__file__).with_name('C1_ONE_LOWER_SIDE_PAIR_TOP.md')
    txt=path.read_text();prefix,*sections=txt.split('### Leaf ')
    expected=tuple(map(int,re.search(r'Counts: `(\d+) (\d+) (\d+) (\d+) (\d+)`',prefix).groups()))
    bounds=re.search(r'```c1top-upper\n(.*?)```',prefix,re.S)[1]
    for ln in bounds.splitlines():
        if ln:
            loc,tr,sg,ub,*seq=ln.split();upper_certificate(loc,tr,int(sg),F(ub),seq)
    tree=dict(ln.split()for ln in re.search(r'```c1top-tree\n(.*?)```',prefix,re.S)[1].splitlines()if ln)
    leaves={sec.splitlines()[0].strip():sec for sec in sections}
    seen=set();counts=[0,0,0,0,0]
    def visit(name,loc,ass):
        assert name not in seen;seen.add(name)
        if name in tree:
            for suf,sg in[('m',-1),('p',1)]:visit(name+suf,loc,{**ass,tree[name]:sg})
            return
        sec=leaves[name]
        def block(tag):return re.search(r'```'+tag+r'\n(.*?)```',sec,re.S)[1].strip().splitlines()
        got={tok[1:]:1 if tok[0]=='+'else-1 for tok in re.search(r'Assumptions: `([^`]*)`',sec)[1].split()}
        assert got==ass
        kn=initial(loc)
        for tr,sg in ass.items():put(kn,tr,sg)
        for ln in block('c1top-geometry'):replay(kn,ln.split(),loc);counts[3]+=1
        trace=[ln.split()for ln in block('c1top-bounds')]
        actual=bounds_trace(loc,kn,trace);counts[4]+=len(trace)
        if 'Exclusion:'in sec:
            exclusion(kn,re.search(r'Exclusion: `([^`]+)`',sec)[1].split(),loc,actual);counts[1]+=1;return
        raw=[ln.split()for ln in block('c1top-box')];assert [r[0]for r in raw]==VARS
        box=[(F(r[1]),F(r[2]))for r in raw]
        assert all(lo<=a<=b<=hi for(lo,hi),(a,b)in zip(box,actual))
        ff=factors(loc,box,kn);total={};n=0
        for ln in block('c1top-sum'):
            for term in ln.split(';'):
                wt,prod=term.strip().split();wt=int(wt);assert wt>0;pp=C(wt)
                for atom in prod.split('*'):pp=mul(pp,ff(atom))
                assert max(map(len,pp),default=0)<=3
                total=add(total,pp);n+=1
        result=upper(total,box);stated=F(re.search(r'Upper bound: `([^`]+)`',sec)[1])
        assert result==stated and result<0,(name,result,stated)
        counts[0]+=1;counts[2]+=n
        print(name,n,result)
    for loc in ['RRT']:visit(loc,loc,{})
    assert seen==set(tree)|set(leaves)
    assert tuple(counts)==expected,(counts,expected)
    print('PASS:',family,len(tree),'binary refinements;',counts,'cubics, geometric leaves, terms, geometric steps, interval refinements')
if __name__=='__main__':main()
