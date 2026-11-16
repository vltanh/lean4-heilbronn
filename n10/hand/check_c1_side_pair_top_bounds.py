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
phi=(1-c)*(a-s/c)
assert q.simplify(q.diff(phi,c)-(-a+s/c**2))==0
assert phi.subs(c,kappa)==R(101579,250000)==R('.406316')
assert R(35,8)*s==R('.406875')
assert R(35,8)*s-phi.subs(c,kappa)==R(559,1000000)>0
eta_c,eta_d=q.symbols('eta_c eta_d')
eta_p=R(11,35)-eta_c-eta_d
ll=(R(8,35)+eta_c)*c+(R(8,35)+eta_d)+(R(8,35)+eta_p)*p
mm=(R(8,35)+eta_d)*d+(R(8,35)+eta_p)*y
identities=[
    (35*ll-19*c-8-8*p,35*((1-c)*eta_d+(p-c)*eta_p)),
    (8*c+8*p+19-35*ll,35*((1-c)*eta_c+(1-p)*eta_p)),
    (35*mm-8*d-8*y,35*(d*eta_d+y*eta_p)),
    (19*d+8*y-35*mm,35*(d*eta_c+(d-y)*eta_p)),
]
for left,right in identities:assert q.expand(left-right)==0
print('PASS: top-contact ceiling, side-pair interval, outer-point bounds,')
print('inner 2/9 and N6 8/35 barycentric bounds, four remainder identities,')
print('and exact threshold constants.')

epsilon=R(1037,10000)
assert epsilon*(1-epsilon)==R(9294631,100000000)<s
beta,x,L=q.symbols('beta x L',positive=True)
assert q.simplify(c+3*s/a+s*(1-c)/(a*(c-beta))-(beta+2*s/a+(c-beta)+s*(1-beta)/(a*(c-beta))))==0
assert R(23,25)-epsilon-2*s/a>0
assert 4*s*(1-epsilon)/a-(R(23,25)-epsilon-2*s/a)**2==R(8038656831,8940100000000)>0
assert q.expand((L-x)*(a-s/x)-(a*L+s-a*x-s*L/x))==0
assert a*(1-epsilon)+s-R(19,5)*s>0
assert 4*a*s*(1-epsilon)-(a*(1-epsilon)+s-R(19,5)*s)**2==R(360055692279,10**14)>0
assert q.expand((c-beta)*(U-3*s)+(1-c)*((c-beta)*y-s)-(d*(c-beta)*(p-c)-s*(3*(c-beta)+1-c)))==0
g1=a*(c-epsilon)*(1-c)-s*(3*(c-epsilon)+1-c)
assert g1.subs(c,R(609,1000))==R(-1193469,10**10)<0
assert q.diff(g1,c).subs(c,R(609,1000))==R(-2885271,10**7)<0
assert s/(R(609,1000)-epsilon)==R(930,5053)
eta_p=R(4,19)-eta_c-eta_d
ll=(R(5,19)+eta_c)*c+(R(5,19)+eta_d)+(R(5,19)+eta_p)*p
mm=(R(5,19)+eta_d)*d+(R(5,19)+eta_p)*y
for left,right in [
    (19*ll-9*c-5-5*p,19*((1-c)*eta_d+(p-c)*eta_p)),
    (5*c+5*p+9-19*ll,19*((1-c)*eta_c+(1-p)*eta_p)),
    (19*mm-5*d-5*y,19*(d*eta_d+y*eta_p)),
    (9*d+5*y-19*mm,19*(d*eta_c+(d-y)*eta_p))]:assert q.expand(left-right)==0
print('PASS: actual N6 bottom clearance gives outer p>.920, c<.609, and inner weights>5/19')
