#!/usr/bin/env python3
"""Exact algebra for UNBALANCED_FINAL_UPPER_PAIR.md."""

import sympy as sp

b, q, r, u, k, t, z, A, B, J, s = sp.symbols("b q r u k t z A B J s")
D = sp.Matrix([0, 1])
C = sp.Matrix([1, 1])
E = sp.Matrix([0, 1-q])
Bb = sp.Matrix([b, 0])
R = sp.Matrix([r, u])
S = sp.Matrix([k, t])


def det(X, Y, Z):
    return sp.det(sp.Matrix.hstack(Y-X, Z-X))


def eq(lhs, rhs):
    assert sp.factor(lhs-rhs) == 0, sp.factor(lhs-rhs)


eq(det(D, E, Bb), b*q)
eq(det(E, Bb, C), 1-(1-b)*q)
eq(det(E, R, C), 1-u-q*(1-r))
eq(det(E, S, C), 1-t-q*(1-k))
eq(det(C, R, S), (1-r)*(1-t)-(1-k)*(1-u))
eq(det(Bb, R, S), (r-b)*t-u*(k-b))
eq(det(E, R, C)+det(R, S, C), det(E, R, S)+det(E, S, C))

normalized_gap = (A*B/J**2-s*(A+B)/J**2)**2-4*(s/J)*(A*B/J**2)
eq(J**4*normalized_gap, (A*B-s*(A+B))**2-4*s*J*A*B)
eq(q*z*((1-s/z-s/q)*(1-z)-s), q*(z*(1-z)-s)-s*z*(1-z))
Abar = 1-s**2*(1-z)/(z*(1-z)-s)
eq(sp.diff(Abar, z), -s**2*(s-(1-z)**2)/(z*(1-z)-s)**2)

sigma = sp.Rational(8, 73)
rho = sp.Rational(13, 16)
assert sp.Rational(207, 256) < rho
assert sigma > sp.Rational(7, 64)
# 3-2sqrt(2)<11/64 is equivalent to 181/128<sqrt(2).
assert sp.Rational(181, 128)**2 < 2
assert sp.Rational(8, 65)-sp.Rational(6, 49) == sp.Rational(2, 3185) > 0
assert (1-rho)**2 < sigma
eq(Abar.subs({s: sigma, z: rho}), sp.Rational(55255, 58327))
eq(sp.Rational(19, 20)-sp.Rational(55255, 58327), sp.Rational(3113, 1166540))
eq(Abar.subs({s: sigma, z: sp.Rational(5, 6)}), sp.Rational(5237, 5621))
eq(sp.Rational(15, 16)-sp.Rational(5237, 5621), sp.Rational(523, 89936))

F = (A*B-s*(A+B))**2-4*s*(A+s)*A*B
eq(sp.Poly(F, B).coeff_monomial(B**2), (A-s)**2)
eq(sp.Poly(F, A).coeff_monomial(A**2), (B-s)**2-4*s*B)
eq(F.subs(B, s*A/(A-s)), -4*s**2*A**2*(A+s)/(A-s))
eq(F.subs(A, s*B/(B-s)), -4*s**3*B**2*(2*B-s)/(B-s)**2)
eq((rho-sigma)**2-4*sigma*rho, sp.Rational(188153, 1364224))
eq(F.subs({s: sigma, A: sp.Rational(19, 20), B: sp.Rational(5, 6)}), -sp.Rational(312517, 25579200))
eq(F.subs({s: sigma, A: sp.Rational(15, 16), B: sp.Rational(6, 7)}), -sp.Rational(8559, 16711744))

print("PASS: final upper common sector, anchor-area elimination, and decreasing containing-area bound")
print("PASS: both exact rational endpoint rectangles exclude the positive-bracket quadratic")
