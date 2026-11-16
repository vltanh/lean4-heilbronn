"""Exact arithmetic for SIX_POINT_ENDPOINT_REFINED.md; standard library only."""
from fractions import Fraction as F

rho=F(1142,125)
tau=1/rho
lower_gamma2=F(933,125)
h0=F(933,1142)

assert 3*250**2-433**2==11
assert 4+2*F(433,250)==lower_gamma2
assert lower_gamma2*tau==h0
assert h0*h0-(1+2*tau)*h0+3*tau==F(3,1142**2)>0
assert 2*h0-(1+2*tau)==F(237,571)>0
assert tau-F(7,64)==F(3,36544)>0
assert F(1,9)-tau==F(17,10278)>0
assert F(7,64)>F(1,11)>F(1,12)
assert rho>9

print('PASS refined nontriangular endpoint-six rate 1142/125')
