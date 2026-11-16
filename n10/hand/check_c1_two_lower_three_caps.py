#!/usr/bin/env python3
"""Exact transcription checks for C1_TWO_LOWER_THREE_CAPS.md."""
import sympy as sp

R = sp.Rational
s, rho = R(93, 1000), R(347, 500)
z, h, c, d, f, x, y, u, v = sp.symbols("z h c d f x y u v")
P = (23250000*z**4 - 180614500*z**3 + 268737713*z**2
     - 125346463*z + 11198037)
identity = ((z*(1-z)-s)*(rho*(z-rho)-s*z*z)
            - s*rho*z*(1-z)*(z-rho))
assert sp.expand(P/R(250000000)-identity) == 0
assert sp.expand(sp.diff(P, z, 2)-2*(139500000*z*z-541843500*z+268737713)) == 0
assert sp.expand(sp.diff(P, z, 3)-3000*(186000*z-361229)) == 0
assert sp.diff(P, z, 2).subs(z, rho) == -80226908
assert sp.diff(P, z, 3).subs(z, R(177, 200)) < 0
assert P.subs(z, R(807, 1000)) == -R(15458353653, 4000000)
assert sp.diff(P, z).subs(z, R(807, 1000)) == R(8796113899, 2000)
assert P.subs(z, R(86, 100)) == -R(11263343, 2500)
assert sp.diff(P, z).subs(z, R(86, 100)) == -R(117796031, 25)

assert R(433, 250)**2 < 3
assert R(933, 125)*s == R(86769, 125000) > rho
assert (1-s)*R(177, 200)*R(23, 200) < s
assert s/(R(807, 1000)*R(193, 1000)) > R(597, 1000)
assert 1-s/R(403, 1000) == R(310, 403) < R(77, 100)
assert R(193, 1000)-s/(R(86, 100)*R(77, 100)) < R(53, 1000)
assert R(77, 100)-s/R(86, 100) < R(663, 1000)

def det(A, B, C):
    return sp.expand((B[0]-A[0])*(C[1]-A[1])
                     -(B[1]-A[1])*(C[0]-A[0]))

O, H, C, D, F = (0, 0), (0, h), (c, 0), (1, d), (f, 1)
Ppoint, Q = (x, y), (u, v)
assert sp.expand(det(H,D,F)-(1-d-(h-d)*(1-f))) == 0
assert sp.expand(det(C,D,F)-(1-f-(c-f)*(1-d))) == 0
assert sp.expand(-det(C,D,Ppoint)-(d*(x-c)-(1-c)*y)) == 0
assert sp.expand(-det(D,Ppoint,Q)-((1-x)*(v-d)+(d-y)*(1-u))) == 0
assert sp.expand(-det(D,F,Q)-((1-d)*u+(1-f)*v-1+d*f)) == 0
assert sp.simplify(c+(s+(1-c)*s/c)/d-(c+s/(c*d))) == 0

upper1 = R(53,1000)*R(403,1000)+R(663,1000)*R(108,1000)
upper2 = 2*R(403,1000)*R(892,1000)-1+R(597,1000)**2
assert upper1 == R(92963,1000000) == s-R(37,1000000) < s
assert upper2 == R(75361,1000000) == s-R(17639,1000000) < s
print("PASS: C1 two-lower three-cap polynomial, derivatives, determinants and exact scalar gaps")
