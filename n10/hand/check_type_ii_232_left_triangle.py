#!/usr/bin/env python3
"""Exact arithmetic for the sixteen printed products; no search or solver."""
from fractions import Fraction as F
from collections import defaultdict

S=F(93,1000);K=F(933,125);J=F(4427,500)
BOX=[(F(279,1000),F(1,2)),(F(0),F(442,1000)),(S,F(314,1000)),
     (F(186,1000),F(628,1000)),(F(356,1000),F(768,1000)),
     (F(372,1000),F(721,1000)),(F(170,1000),F(582,1000)),
     (F(372,1000),F(721,1000))]
def const(c):return {():F(c)} if c else {}
def var(i):return {(i,):F(1)}
def add(*args):
 out=defaultdict(F)
 for poly in args:
  for e,c in poly.items():out[e]+=c
 return {e:c for e,c in out.items() if c}
def scale(poly,k):return {e:c*k for e,c in poly.items() if c*k}
def sub(a,b):return add(a,scale(b,-1))
def mul(a,b):
 out=defaultdict(F)
 for e,c in a.items():
  for f,d in b.items():out[tuple(sorted(e+f))]+=c*d
 return {e:c for e,c in out.items() if c}
def det(a,b,c):return sub(mul(sub(b[0],a[0]),sub(c[1],a[1])),mul(sub(b[1],a[1]),sub(c[0],a[0])))
vv=[var(i) for i in range(8)];b,lam,p,y,x,v,z,w=vv
pts={'D':({},const(1)),'E':({},lam),'B':(b,{}),'C':(const(1),const(1)),
     'P':(p,y),'X':(x,v),'Z':(z,w)}
def area(word):return det(*(pts[ch] for ch in word))
factors={}
for i,(lo,hi) in enumerate(BOX):factors['L'+str(2*i)]=sub(vv[i],const(lo));factors['L'+str(2*i+1)]=sub(const(hi),vv[i])
for word,sg in [('DCP',-1),('BCX',1),('DCX',-1),('DXZ',-1),('DPZ',1),('CPZ',1),('PXZ',1)]:
 factors[('+' if sg==1 else '-')+word]=add(scale(area(word),sg),const(-S))
for nm,word,cost in [('DEX2','DEX',K),('DPX1','DPX',3),('BCP2','BCP',K),('CPX1','CPX',3)]:
 factors[nm]=add(area(word),const(-cost*S))
factors['Q']=add(area('DPX'),area('DXC'),const(-8*S))
TABLE=[(15,'L4 L11'),(1,'-DCP L1'),(6,'+BCX'),(5,'+BCX L5'),
       (2,'-DCX L1'),(6,'-DXZ'),(8,'+DPZ L9'),(2,'+CPZ'),
       (8,'+CPZ L8'),(14,'+PXZ'),(7,'DEX2 L6'),(8,'DPX1 L12'),
       (3,'BCP2'),(5,'BCP2 L8'),(8,'CPX1 L13'),(5,'Q L1')]
W={}
for weight,word in TABLE:
 poly=const(weight)
 for name in word.split():poly=mul(poly,factors[name])
 W=add(W,poly)
shifted={}
for ex,co in W.items():
 pp=const(co)
 for i in ex:pp=mul(pp,add(var(i),const(BOX[i][0])))
 shifted=add(shifted,pp)
width=[hi-lo for lo,hi in BOX]
upper=shifted.get((),F(0))
for ex,co in shifted.items():
 if ex and co>0:
  for i in ex:co*=width[i]
  upper+=co
assert upper==-F(192675309,500000000),upper
assert J*S-(1-3*S)==F(51211,500000)
assert J*S-(1-2*S)==F(4711,500000)
assert 3*K*S-2==F(10307,125000)
assert 3*S+9*S*S>F(356,1000)
assert S+9*S*S>F(170,1000)
assert 1-5*S/2<F(768,1000)
assert 1-9*S/2<F(582,1000)
print('PASS: all 16 fixed products and the exact upper bound',upper)
