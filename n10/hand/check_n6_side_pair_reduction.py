"""Exact algebra checks for the six-contact side-pair reduction."""
import sympy as sp
q=sp.Rational
s=q(93,1000);K=q(149,20)
assert q(69,40)**2<3 and K==4+2*q(69,40)
assert s>q(1,11) and (K+4)*s-1==q(1297,20000)>0
b,c,e,f,x,y=sp.symbols('b c e f x y')
v=(e*x-y)/(e-y)
assert sp.cancel(v-c-(e*(x-c)-(1-c)*y)/(e-y))==0
assert sp.cancel(1-v-e*(1-x)/(e-y))==0
assert sp.expand((c-b)*(e*(x-c)-(1-c)*y)+(1-c)*(c-b)*y-e*(c-b)*(x-c))==0
assert sp.expand(3*(c-b)+(1-c)-(1+2*c-3*b))==0
assert sp.expand(e*(1-b)+(1-e)*(1-f)-(1-b-(1-e)*(f-b)))==0
print('PASS: N6 side-pair support identities, triangular cap hull and side-pair/top-pair strict gap')
