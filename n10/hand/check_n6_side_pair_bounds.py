#!/usr/bin/env python3
"""Exact rational transcription checks for N6_SIDE_PAIR_BOUNDS.md."""
from fractions import Fraction as F
from collections import defaultdict

s=F(93,1000)
epsilon=F(1037,10000)
a=1-s
eta=1-epsilon
b0=F(77,125)
p0=F(183,200)
assert s-epsilon*(1-epsilon)==F(5369,10**8)>0
assert 0<epsilon<F(1,2)

def g(x):
    return a*(x-epsilon)*(1-x)-s*(3*(x-epsilon)+1-x)
def gp(x):
    return a*(1+epsilon-2*x)-2*s

assert g(b0)==-F(269697,1250000000)<0
assert gp(b0)==-F(3023681,10000000)<0
D=p0-epsilon-2*s/a
assert D==F(5498491,9070000)>0
assert 4*s*eta-a*D**2==F(8117242919,90700000000000)>0
assert s/(b0-epsilon)==F(930,5123)
K=F(50,13)*s
assert K==F(93,260)
T=a*eta+s-K
assert T==F(71272733,130000000)>0
assert 4*a*s*eta-T**2==F(31014498590711,16900000000000000)>0

def C(x):
    x=F(x)
    return {():x} if x else {}
def V(i):
    return {(i,):F(1)}
def add(*polys):
    out=defaultdict(F)
    for poly in polys:
        for mon,co in poly.items():
            out[mon]+=co
    return {mon:co for mon,co in out.items() if co}
def sc(poly,t):
    return {mon:co*t for mon,co in poly.items() if co*t}
def sub(p,q):
    return add(p,sc(q,-1))
def mul(p,q):
    out=defaultdict(F)
    for mon,co in p.items():
        for other,val in q.items():
            out[tuple(sorted(mon+other))]+=co*val
    return {mon:co for mon,co in out.items() if co}
def derivative(poly,i):
    out=defaultdict(F)
    for mon,co in poly.items():
        count=mon.count(i)
        if count:
            rest=list(mon)
            rest.remove(i)
            out[tuple(rest)]+=count*co
    return {mon:co for mon,co in out.items() if co}

e,c,beta,p,q,rE,rP=map(V,range(7))
one=C(1)
U=sub(mul(e,sub(p,c)),mul(sub(one,c),q))
Phi=sub(mul(mul(e,sub(c,beta)),sub(one,c)),
        sc(add(sc(sub(c,beta),3),sub(one,c)),s))
RHS=add(mul(sub(c,beta),sub(U,C(3*s))),
        mul(sub(one,c),sub(mul(sub(c,beta),q),C(s))),
        mul(mul(e,sub(c,beta)),sub(one,p)))
assert Phi==RHS

G=sub(sc(mul(sub(c,C(epsilon)),sub(one,c)),a),
      sc(add(sc(sub(c,C(epsilon)),3),sub(one,c)),s))
assert derivative(G,1)==add(C(a*(1+epsilon)-2*s),sc(c,-2*a))

rC=add(C(F(11,50)),sc(rE,-1),sc(rP,-1))
inner_x=add(sc(add(c,one,p),F(13,50)),
            mul(rC,c),rE,mul(rP,p))
inner_y=add(sc(add(e,q),F(13,50)),
            mul(rE,e),mul(rP,q))
assert add(sc(inner_x,50),sc(c,-24),C(-13),sc(p,-13))==sc(
    add(mul(rE,sub(one,c)),mul(rP,sub(p,c))),50)
assert add(sc(c,13),sc(p,13),C(24),sc(inner_x,-50))==sc(
    add(mul(rC,sub(one,c)),mul(rP,sub(one,p))),50)
assert add(sc(inner_y,50),sc(e,-13),sc(q,-13))==sc(
    add(mul(rE,e),mul(rP,q)),50)
assert add(sc(e,24),sc(q,13),sc(inner_y,-50))==sc(
    add(mul(rC,e),mul(rP,sub(e,q))),50)

# The two lower-contact clearances retain their shared actual contact.
alpha,h=V(7),V(8)
x=sub(c,beta)
assert sub(mul(beta,x),sc(c,s))==add(
    mul(beta,sub(mul(alpha,x),C(s))),
    mul(x,sub(mul(beta,sub(h,alpha)),C(s))),
    mul(mul(beta,x),sub(one,h)))
assert s-a/10==F(23,10000)>0

def power(poly,n):
    result=C(1)
    for _ in range(n):
        result=mul(result,poly)
    return result

xx,t=V(9),V(10)
R=sub(sc(mul(xx,sub(xx,C(s))),F(11,3)*s),
      mul(sub(sub(xx,power(xx,2)),C(s)),sub(sc(xx,a),C(s))))
coefficients=[-F(8649,1000000),F(72819,500000),
              -F(659,1000),F(907,1000)]
assert R==add(*(sc(power(xx,i),v) for i,v in enumerate(coefficients)))
bernstein=[
    (F(1,10),F(3,10),[F(1159,5000000),F(1781,600000),
                       F(2731,5000000),F(1107,5000000)]),
    (F(3,10),F(2,5),[F(1107,5000000),F(59,1000000),
                      F(3157,7500000),F(11071,5000000)]),
    (F(2,5),F(1),[F(11071,5000000),F(64869,5000000),
                   F(376307,5000000),F(384989,1000000)])]
assert [row[0] for row in bernstein]==[F(1,10),F(3,10),F(2,5)]
assert [row[1] for row in bernstein]==[F(3,10),F(2,5),F(1)]
for lower,upper,bs in bernstein:
    assert lower<upper and all(v>0 for v in bs)
    affine=add(C(lower),sc(t,upper-lower))
    expanded=add(*(sc(power(affine,i),v)
                   for i,v in enumerate(coefficients)))
    reconstructed=add(*(sc(mul(power(t,i),power(sub(one,t),3-i)),
                              bs[i]*[1,3,3,1][i])
                         for i in range(4)))
    assert expanded==reconstructed

rC=add(C(F(2,11)),sc(rE,-1),sc(rP,-1))
inner_x=add(sc(add(c,one,p),F(3,11)),
            mul(rC,c),rE,mul(rP,p))
inner_y=add(sc(add(e,q),F(3,11)),mul(rE,e),mul(rP,q))
assert add(sc(inner_x,11),sc(c,-5),C(-3),sc(p,-3))==sc(
    add(mul(rE,sub(one,c)),mul(rP,sub(p,c))),11)
assert add(sc(c,3),sc(p,3),C(5),sc(inner_x,-11))==sc(
    add(mul(rC,sub(one,c)),mul(rP,sub(one,p))),11)
assert add(sc(inner_y,11),sc(e,-3),sc(q,-3))==sc(
    add(mul(rE,e),mul(rP,q)),11)
assert add(sc(e,5),sc(q,3),sc(inner_y,-11))==sc(
    add(mul(rC,e),mul(rP,sub(e,q))),11)
assert F(11,3)*s==F(341,1000)
assert F(11,3)*s-2*s==F(31,200)
assert F(3,11)>F(13,50)

print("PASS: no-top N6 side-pair gaps, contact identities, "
      "eight barycentric remainders and twelve positive Bernstein coefficients")
