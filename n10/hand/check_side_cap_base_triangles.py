#!/usr/bin/env python3
"""Exact scalar and polynomial transcription checks for side-base caps."""
from fractions import Fraction as F

s=F(93,1000)
a=1-s
assert 4*a*s-F(29,50)**2==F(251,250000)>0
assert F(21,50)<F(347,500)
assert (F(347,500)/s-4)>0
assert (F(347,500)/s-4)**2<12

# With z=1-c, multiplying (3) by z gives exactly
# z*(1-c*y-a*z)-s = c*(z*(a-y)-s).
# The coefficient triples below are in the independent variables c,y.
def add(*polys):
    out={}
    for p in polys:
        for mon,co in p.items():out[mon]=out.get(mon,F(0))+co
    return {m:c for m,c in out.items()if c}
def scale(p,t):return {m:c*t for m,c in p.items()if c*t}
def mul(p,q):
    out={}
    for (i,j),x in p.items():
        for (k,l),y in q.items():
            mon=(i+k,j+l);out[mon]=out.get(mon,F(0))+x*y
    return {m:c for m,c in out.items()if c}
one={(0,0):F(1)};cc={(1,0):F(1)};yy={(0,1):F(1)}
z=add(one,scale(cc,-1))
left=add(mul(z,add(one,scale(mul(cc,yy),-1),scale(z,-a))),scale(one,-s))
right=mul(cc,add(mul(z,add(scale(one,a),scale(yy,-1))),scale(one,-s)))
assert left==right
print('PASS: side-cap base triangles; exact identity, 251/250000 gap, capacity-one comparison')
