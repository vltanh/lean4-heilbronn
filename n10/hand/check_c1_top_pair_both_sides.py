#!/usr/bin/env python3
"""Exact arithmetic replay of C1_TOP_PAIR_BOTH_SIDES.md; no search."""
from collections import defaultdict
from fractions import Fraction as F
from pathlib import Path
import re

S=F(93,1000)
VARS='h c d f p q u v r t'.split()
BOX=[(F('.372'),F('.79')),(F('.372'),F('.79')),
     (F('.372'),F('.556')),(F('.372'),F('.556')),
     (F('.817'),F(1)),(F('.117'),F('.408')),
     (F('.816'),F(1)),(F('.816'),F(1)),
     (F('.117'),F('.408')),(F('.817'),F(1))]
def C(x):return {():F(x)} if x else {}
def V(i):return {(i,):F(1)}
def add(*pp):
    out=defaultdict(F)
    for p in pp:
        for e,c in p.items():out[e]+=c
    return {e:c for e,c in out.items() if c}
def sc(p,c):return {e:c*v for e,v in p.items() if c*v}
def sub(p,q):return add(p,sc(q,-1))
def mul(p,q):
    out=defaultdict(F)
    for e,c in p.items():
        for f,v in q.items():out[tuple(sorted(e+f))]+=c*v
    return {e:c for e,c in out.items() if c}
h,c,d,f,p,q,u,v,r,t=map(V,range(10))
PT={'O':({},{}),'H':({},h),'C':(c,{}),'D':(C(1),d),
    'F':(f,C(1)),'P':(p,q),'T':(u,v),'R':(r,t)}
def D(word):
    A,B,Cc=(PT[x] for x in word)
    return sub(mul(sub(B[0],A[0]),sub(Cc[1],A[1])),
               mul(sub(B[1],A[1]),sub(Cc[0],A[0])))

assert 1-4*S/(1-4*S)<F('.408')
assert F('.408')*F('.65')*F('.35')==F('.09282')<S
assert F('.408')*(F('.954')/2)**2<S
assert S/F('.65')>F('.143')
assert F('.046')*F('.628')+F('.265')*F('.241')==F('.092753')<S
assert 2*F('.628')*F('.759')-1+F('.372')**2==F('.091688')<S
assert 1-3*S/(1-4*S)<F('.556')
assert F('.556')*F('.79')*F('.21')==F('.0922404')<S
assert F('.556')*(F('.817')/2)**2<S
assert S/F('.79')>F('.117')
assert F('.556')-S/F('.628')<F('.408')
assert F('.372')+3*S/F('.628')>F('.816')

assert sc(D('DPT'),-1)==add(mul(sub(C(1),p),sub(v,d)),mul(sub(d,q),sub(C(1),u)))
assert sc(D('FTR'),-1)==add(mul(sub(C(1),t),sub(u,f)),mul(sub(f,r),sub(C(1),v)))
assert D('DTF')==add(mul(sub(C(1),d),u),mul(sub(C(1),f),v),C(-1),mul(d,f))
assert D('DTF')==sub(mul(sub(C(1),d),sub(u,f)),mul(sub(C(1),f),sub(C(1),v)))
assert D('DTF')==sub(mul(sub(C(1),f),sub(v,d)),mul(sub(C(1),d),sub(C(1),u)))
for word,pp in [('OCP',mul(c,q)),('ORH',mul(h,r)),('OCF',c),('ODH',h)]:assert D(word)==pp

FACT={}
for i,(lo,hi) in enumerate(BOX):
    FACT['L'+str(2*i)]=sub(V(i),C(lo))
    FACT['L'+str(2*i+1)]=sub(C(hi),V(i))
FACT.update(hd=sub(h,d),cf=sub(c,f),
    topx=add(u,sc(f,-1),C(-3*S)),topy=add(v,sc(d,-1),C(-3*S)),
    toppx=add(mul(sub(C(1),d),sub(u,f)),C(-3*S)),
    toppy=add(mul(sub(C(1),f),sub(v,d)),C(-3*S)),
    TopEar=add(D('DTF'),C(-3*S)))
for word in 'OCP ORH CPD PDT TFR FRH OCF ODH'.split():FACT['T'+word]=add(D(word),C(-S))

text=Path(__file__).with_name('C1_TOP_PAIR_BOTH_SIDES.md').read_text()
tables=re.findall(r'```c1-top-pair-sum\n(.*?)\n```',text,re.S)
assert len(tables)==1
total={};count=0
for line in tables[0].splitlines():
    coefficient,product=line.split();coefficient=int(coefficient);assert coefficient>0
    pp=C(coefficient)
    for name in product.split('*'):pp=mul(pp,FACT[name])
    assert max(map(len,pp),default=0)<=3
    total=add(total,pp);count+=1
assert count==158
shifted={}
for mon,co in total.items():
    pp=C(co)
    for i in mon:pp=mul(pp,{():BOX[i][0],(i,):F(1)})
    shifted=add(shifted,pp)
upper=shifted.get((),F(0))
for mon,co in shifted.items():
    if mon and co>0:
        for i in mon:co*=BOX[i][1]-BOX[i][0]
        upper+=co
assert upper==F(-63250709,250000000)<0
print('PASS: both top-hull alternatives, scalar bounds and area identities;')
print(f'158 printed nonnegative products, exact upper bound {upper}.')
