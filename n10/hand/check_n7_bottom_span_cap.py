"""Exact identities and signs in N7_BOTTOM_SPAN_CAP.md."""
import sympy as sp
R=sp.Rational;s=R(93,1000);T0=R(13857,20000)
T,q,mu,z=sp.symbols('T q mu z');D=T/(1-s);mu0=s*D/(T-s)
F=T*(q*(1+mu)-1)*(1-q*(D+mu))-s*q*mu*(1-q*mu)
assert sp.expand(sp.diff(F,mu)-q*((2*T-s)-q*(T*(1+D)+2*(T-s)*mu)))==0
assert sp.cancel(T*(1-D)-s-2*(T-s)*mu0-(T*(1-3*s-T)-s*(1-s))/(1-s))==0
assert 1-3*s-2*T0<0
assert T0*(1-3*s-T0)-s*(1-s)==-R(25938909,400000000)<0
A=T*T*(T+s*s)/((T-s)*(1-s)**2)
B=T*(T*T+T-s)/((T-s)*(1-s))
assert sp.cancel(F.subs(mu,mu0)+A*q*q-B*q+T)==0
N=-T**4+2*T**3+(4*s*s-2*s-1)*T*T+(2*s-4*s**3)*T-s*s
assert sp.cancel(4*A*T-B*B-T*T*N/((1-s)**2*(T-s)**2))==0
shown=R(3862489023999,160000000000000000)+R(274285634607,2000000000000)*z+R(25089853,200000000)*z*z-R(3857,5000)*z**3-z**4
assert sp.expand(N.subs(T,T0+z)-shown)==0
assert R(274285634607,2000000000000)-R(3857,5000)/16-R(1,64)==R(146610634607,2000000000000)>0
assert 1-s-T0==R(4283,20000)<R(1,4)
assert R(69,40)**2<3 and T0==(4+2*R(69,40))*s
# The cleared contact inequality after the change of variables.
bb=1-q*(D+mu);rr=q*mu;LL=q*D
assert sp.expand(bb*((1-s)*LL-(1-rr)*T)-s*rr*(1-rr)-F)==0
print('PASS: N7 bottom-span capacity-one triangle, scalar substitutions and exact strict quartic gap')
