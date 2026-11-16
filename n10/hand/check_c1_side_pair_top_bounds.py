#!/usr/bin/env python3
"""Exact identities and scalar comparisons in C1_SIDE_PAIR_TOP_BOUNDS.md."""
import sympy as q
R=q.Rational
s=R(93,1000);rho=R(347,500);a=R(897,1000)
h,c,d,f,p,y=q.symbols('h c d f p y')
HDF=1-h+f*(h-d)
assert q.expand(f*(HDF-s)+(1-f)*(h*f-s)-(f-d*f*f-s))==0
assert 1-s/(1-a)==R(10,103)
assert 1-2*a*R(10,103)==R(4253,5150)>0
assert R(10,103)-a*R(10,103)**2-s==R(-46337,10609000)<0
U=d*(p-c)-(1-c)*y
assert q.expand(c*(U-3*s)+(1-c)*(c*y-s)-(c*d*(p-c)-s*(1+2*c)))==0
g=a*c*(1-c)-s*(1+2*c)
for x,gv,dv in [('.165',R(-4233,40000000),R('.41499')),('.628',R(-15903,62500000),R('-.415632'))]:
    assert g.subs(c,R(x))==gv<0
    assert q.diff(g,c).subs(c,R(x))==dv
assert R('.851')-2*s/a>0
assert 4*s-a*(R('.851')-2*s/a)**2==R(118147197,299000000000)>0
assert q.expand((1-c)*(a-s/c)-(a+s-a*c-s/c))==0
assert a+s==R(99,100)
assert a*s-((a+s-R(9,2)*s)/2)**2==R(28287,16000000)>0
assert R(1732,1000)**2<3
assert (4+2*R(1732,1000))*s>rho
assert R(299,31)*s==a
kappa=4*s
assert a*kappa*kappa-s==R(1945653,62500000)>0
assert kappa+2*s/a+s/(a*kappa)==R(192421,224250)>R(858,1000)
assert a-3*s/(1-kappa)==R(71079,157000)<R(453,1000)
print('PASS: top-contact ceiling, side-pair interval, outer-point bounds,')
print('inner 2/9 barycentric comparison, and exact threshold constants.')
