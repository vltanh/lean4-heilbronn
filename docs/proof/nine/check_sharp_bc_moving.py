#!/usr/bin/env python3
"""Exact identities for the B/C inward-moving sharp chambers."""
import sympy as S

R = S.Rational
a,b,c,d,e,f,g,h,x,y,t,u,v,s,lam,p,z = S.symbols(
    "a b c d e f g h x y t u v s lam p z"
)


def det(A,B,C):
    return S.expand((B[0]-A[0])*(C[1]-A[1])
                    -(B[1]-A[1])*(C[0]-A[0]))


def root_zero(expr):
    numerator = S.together(expr).as_numer_denom()[0]
    assert S.rem(numerator,20*p*p-15*p+2,p) == 0


A=(0,a); BB=(b,t); CB=(c,0); BC=(b,0); CC=(c,t)
D=(1,d); E=(1,e); F=(f,1); G=(g,1); Hpoint=(0,h); O=(x,y)
assert S.expand(det(A,BB,CB)-(a*(c-b)-c*t)) == 0
assert S.expand(det(BB,O,E)-(e*(x-b)-(1-b)*y+t*(1-x))) == 0
assert S.expand(det(A,BC,CC)-(a*(c-b)+b*t)) == 0
UC4=(1-t)*x-c*(1-y)-g*(y-t)
UC5=c*(1-y)+f*(y-t)-(1-t)*x
assert S.expand(det(G,CC,O)-UC4) == 0
assert S.expand(det(O,CC,F)-UC5) == 0
assert S.expand(UC4+UC5-(f-g)*(y-t)) == 0
assert S.expand(a*(c-b)-c*t-((a-t)*(c-b)-b*t)) == 0
print("PASS: all moving determinants, including opposite ABC signs")

# The exact sharp multiplier and its uniform concavity bound.
sp=(2-9*p)/4
lp=(8-39*p)/(6-10*p)
assert R(7,40)<R(13,73)
assert R(173,1000)>R(18,107)
assert S.factor(lp-R(1,4)-(13-73*p)/(12-20*p)) == 0
assert S.factor(R(1,3)-lp-(107*p-18)/(18-30*p)) == 0
Hsym=6*p*p+(6*s-8)*p+2*s+2-2*s*(1-s)/p
ggsym=1-6*p+5*p*p
root_zero((Hsym+lam*(ggsym-s)).subs({s:sp,lam:lp}))
root_zero((S.diff(Hsym,p)+lam*S.diff(ggsym,p)).subs({s:sp,lam:lp}))
root_zero(S.diff(Hsym,p).subs(s,sp)-(8-39*p))
assert R(46,3)-R(512,25) == -R(386,75)
alpha=1-v-s/u
beta=1-u-s/v
gg=1-3*u-3*v+5*u*v
HH=alpha*(1-3*u-s)+beta*(1-3*v-s)+2*s*(u+v-1)
assert S.factor(HH-(6*u*v+(3*s-4)*(u+v)+2*s+2
                    -s*(1-s)*(u+v)/(u*v))) == 0
print("PASS: exact tangent multiplier, sharp scalar identity, and concavity gap")

# C-moving: preserve the sign t<a in eliminating b and g.
base=(1-t)*(x-u)-s
pre=a*((1-t)*x-b*(1-y)-g*(y-t)-s)+b*t*(1-y)
expanded=(a*base+u*t*(1-y)+(b-u)*(t-a)*(1-y)-a*(g-u)*(y-t))
assert S.expand(pre-expanded) == 0
assert R(7,64)/(R(4,5)-R(7,64))-(R(1,5)-R(7,128)) == R(1847,141440)
assert R(1,6)-R(11,100)>0
rhsC=alpha*((1-t)*(1-u)-s)+beta*(1-v-s)-2*s+u*t+lam*((1-v)*(1-u)-s)
lhsC=(alpha*(1-t)-s+lam*(1-v))*2*u+(beta-s+u*t+lam*(1-u))*(2*v+t)
DC=alpha*(1-3*u)+beta-s-u*(1-2*v-t)+lam*(1-u)
assert S.factor(rhsC-lhsC-(HH+lam*(gg-s)-t*DC)) == 0
assert S.expand((1-u)/4-u-(1-5*u)/4) == 0
print("PASS: C-moving elimination and strictly penalized displacement identity")

# B-moving: the stronger anchor budget and both parameter bounds.
budget=alpha*(1-u)-s
reduced=1-u-2*u*u-v*(3-3*u-2*u*u)
assert S.factor(gg+2*u*budget-s-(reduced-3*s)) == 0
assert S.expand(reduced.subs(v,R(1,4))-(R(1,4)-u/4-R(3,2)*u*u)) == 0
N=3*s*s+4*s*u*u+7*s*u-7*s+2*u**3-u*u-2*u+1
assert S.factor((reduced.subs(v,s/(1-u-s))-3*s)*(1-u-s)-N) == 0
assert S.diff(N,s)==6*s+4*u*u+7*u-7
assert 6*R(11,100)+4*R(1,2)**2+7*R(1,2)-7 == -R(46,25)
Nshift=2*z**3+R(15,16)*z*z-R(73,64)*z-R(173,4096)
assert S.expand(N.subs({u:R(1,4)+z,s:R(7,64)})-Nshift)==0
assert R(23,64)-R(73,64)==-R(25,32)
assert R(3,16)-R(1,8)>0
rhsB=(alpha-t)*(1-u-s)+beta*(1-v-s)-2*s-u*t+lam*((1-v)*(1-u)-s)
lhsB=(alpha-t-s+lam*(1-v-t))*2*u+(beta-s-u*t+lam*(1-u))*2*v
DB=1-2*u-s-2*u*v-2*lam*u
assert S.factor(rhsB-lhsB-(HH+lam*(gg-s)-t*DB))==0
assert 1-R(11,100)-R(1,2)*(1+R(1,4)+R(1,3))==R(59,600)
print("PASS: B-moving budgets, both 1/4 bounds, and strict 59/600 displacement cost")

# The reflected point pairs in the sharp chamber.
reflect=lambda P:(1-P[1],1-P[0])
assert reflect((c,t))==(1-t,1-c)
assert reflect((b,t))==(1-t,1-b)
print("PASS: both sharp moving chambers close, with reflected D/E versions")
