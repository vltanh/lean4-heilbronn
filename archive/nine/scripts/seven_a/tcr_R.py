"""Check (15)-(16) of SEVEN_BOUNDARY_TOP_CAP_RIGHT and the univariate Bernstein bounds."""
import sys
sys.path.insert(0, 'scripts')
import sympy as sp
from fractions import Fraction as F
from math import comb, floor
import certlib as cl

u, z = sp.symbols('u z')
s = sp.Rational(7, 64); q = sp.Rational(21, 40)
C = s - s/u + 2*u + u*(1-u)/s
V = z + 1 - u
R = sp.expand(sp.simplify(u*((q - C)*V**2 + (u/s - 1)*V**3 + 4*s*(1-u)*(V+u))))
Rp = sp.Poly(R, z)
C0 = (1-u)*(320*u**3-133*u**2-82*u+35)/320
C1 = (u-1)*(10240*u**3-9120*u**2+1939*u-245)/1120
C2 = -(40960*u**3-43200*u**2+5789*u-245)/2240
C3 = u*(64*u-7)/7
for i, Ci in enumerate([C0, C1, C2, C3]):
    print(i, sp.simplify(Rp.coeff_monomial(z**i) - Ci))
D = sp.expand(C1**2 - 4*C0*C2)
sext = 655360*u**6-2396160*u**5+2778528*u**4-1205910*u**3+123249*u**2+28126*u-3430
print('D', sp.simplify(D - u*(u-1)/7840*sext))


def bern1(expr, lo, hi, n):
    p = sp.Poly(sp.expand(expr.subs(u, lo + (hi-lo)*u)), u)
    a = [F(int(sp.numer(p.coeff_monomial(u**i))), int(sp.denom(p.coeff_monomial(u**i)))) for i in range(n+1)]
    return [sum(a[i]*F(comb(k, i), comb(n, i)) for i in range(k+1)) for k in range(n+1)]


for name, e, lo, hi, n in [('negC1poly', -(10240*u**3-9120*u**2+1939*u-245), sp.Rational(7,32), sp.Rational(13,20), 3),
                           ('negC2poly', -(40960*u**3-43200*u**2+5789*u-245), sp.Rational(7,32), sp.Rational(35,48), 3),
                           ('sext', sext, sp.Rational(13,20), sp.Rational(35,48), 6)]:
    bs = bern1(e, lo, hi, n)
    print(name, float(min(bs)))
