#!/usr/bin/env python3
"""Exact printed identities in C1_THREE_LOWER_TOP_PAIR.md.

Fraction arithmetic only. Reads all 150 printed integer coefficients;
no optimizer, discovery JSON, numerical samples, or box subdivision.
"""
from fractions import Fraction as F
from collections import defaultdict
from itertools import product
from math import comb,lcm
from pathlib import Path
import re
s=F(93,1000);rho=F(823,1000)
def C(v):return {():F(v)} if v else {}
def V(i):return {(i,):F(1)}
def add(*ps):
 out=defaultdict(F)
 for pp in ps:
  for e,v in pp.items():out[e]+=v
 return {e:v for e,v in out.items() if v}
def sc(pp,v):return {e:w*v for e,w in pp.items() if w*v}
def mul(pp,qq):
 out=defaultdict(F)
 for e,v in pp.items():
  for f,w in qq.items():out[tuple(sorted(e+f))]+=v*w
 return {e:v for e,v in out.items() if v}
h,u,v=V(0),V(1),V(2)
ahat=add(h,C(-rho),mul(h,v),sc(mul(mul(h,u),v),-1/rho))
up=add(C(1),sc(h,-1),u,sc(mul(u,v),-1/rho))
dhat=add(sc(mul(mul(h,u),v),1/rho),sc(h,-1),mul(h,h),C(rho),sc(h,-rho))
TOTAL=add(ahat,mul(h,up));PROD=mul(ahat,up)
PP=[add(sc(TOTAL,2*s),sc(PROD,-1)),add(sc(dhat,8*s),sc(PROD,-1),sc(TOTAL,s))]
SUB=[add(C(rho),sc(h,F(17,200))),add(C(s),sc(u,F(73,100))),add(C(s),sc(v,F(73,100)))]
DEGREES=[(2,4,5),(3,2,4)]
def substitute(pp):
 out={}
 for ee,co in pp.items():
  term=C(co)
  for i in ee:term=mul(term,SUB[i])
  out=add(out,term)
 return out

def bernstein(pp,degree):
 power=[((ee.count(0),ee.count(1),ee.count(2)),co) for ee,co in pp.items()]
 result={}
 for ijk in product(*(range(d+1) for d in degree)):
  value=F(0)
  for ee,co in power:
   if all(e<=i for e,i in zip(ee,ijk)):
    for e,i,d in zip(ee,ijk,degree):co*=F(comb(i,e),comb(d,e))
    value+=co
  result[ijk]=value
 return result

COEFF=[bernstein(substitute(pp),degree) for pp,degree in zip(PP,DEGREES)]

def determinant(a,b,c):
 dx1=add(b[0],sc(a[0],-1));dy1=add(b[1],sc(a[1],-1))
 dx2=add(c[0],sc(a[0],-1));dy2=add(c[1],sc(a[1],-1))
 return add(mul(dx1,dy2),sc(mul(dy1,dx2),-1))

def check_cap_identity():
 hh,cc,dd,ff,xx,yy=[V(i) for i in range(6)]
 H=({},hh);C0=(cc,{});D0=(C(1),dd);F0=(ff,C(1));Z=(xx,yy)
 aa=determinant(C0,D0,F0);uu=determinant(H,D0,F0)
 delta=add(mul(dd,ff),sc(mul(add(C(1),sc(hh,-1)),add(C(1),sc(cc,-1))),-1))
 lhs=add(mul(aa,sc(determinant(H,F0,Z),-1)),mul(uu,determinant(C0,D0,Z)),mul(delta,sc(determinant(D0,F0,Z),-1)),sc(mul(aa,uu),-1))
 assert not lhs

def main():
 text=Path(__file__).with_name('C1_THREE_LOWER_TOP_PAIR.md').read_text()
 assert rho>(1-s)**2 and rho>F(81,100) and s*s>F(81,10000)
 assert F(227,250)**2>rho and rho>2*s and s/rho<1
 check_cap_identity()
 total=0
 for e,(bb,degree) in enumerate(zip(COEFF,DEGREES),1):
  den=int(re.search(r'Denominator E'+str(e)+r': `(\d+)`',text).group(1))
  seen={}
  for i in range(degree[0]+1):
   name='c1-top-E'+str(e)+'-'+str(i)
   block=re.search(r'```'+name+r'\n(.*?)\n```',text,re.S).group(1)
   rows=[list(map(int,row.split())) for row in block.splitlines()]
   assert len(rows)==degree[1]+1
   for j,row in enumerate(rows):
    assert len(row)==degree[2]+1
    for k,integer in enumerate(row):
     assert integer>0
     assert F(integer,den)==bb[(i,j,k)],(e,i,j,k)
     seen[(i,j,k)]=integer;total+=1
  assert len(seen)==len(bb)
  print('E'+str(e)+':',len(bb),'printed positive coefficients; exact minimum',min(bb.values()))
 assert total==150
 print('PASS: cap identity, scalar rational comparisons, and all 150 fixed positive coefficients.')
 print('The two identities use one rational box and no subdivision.')

if __name__=='__main__':main()
