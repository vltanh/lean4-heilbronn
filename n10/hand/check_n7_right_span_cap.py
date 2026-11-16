"""Exact balancing identities in N7_RIGHT_SPAN_CAP.md."""
import sympy as sp
b,c,d,e,f,a=sp.symbols('b c d e f a')
X=d*(c-b);Y=(1-c)*(e-d);cp=1-d*(1-b)/e
assert sp.expand(e*(c-b)-(1-b)*(e-d)-X+Y)==0
assert sp.cancel(cp-c-(Y-X)/e)==0
assert sp.cancel(d*(cp-b)-(1-cp)*(e-d))==0
assert sp.cancel(e*(cp-b)-(1-b)*(e-d))==0
assert sp.expand((1-b)*(e-d)-(1-f)*(e-d)-(f-b)*(e-d))==0
assert sp.cancel(a*(cp-b)-a*(c-b)-a*(cp-c))==0
assert sp.cancel(d*(cp-b)-d*(c-b)-d*(cp-c))==0
print('PASS: N7 right-span capacity-one triangle and exact auxiliary-contact balancing')
