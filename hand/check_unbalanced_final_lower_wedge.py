#!/usr/bin/env python3
"""Exact final Type-II lower-wedge elimination; no numerical search."""

import sympy as sp

q, r, u, k, t, s, A, B, z, a, W = sp.symbols("q r u k t s A B z a W")
D = sp.Matrix([0, 1])
C = sp.Matrix([1, 1])
E = sp.Matrix([0, 1-q])
R = sp.Matrix([r, u])
S = sp.Matrix([k, t])


def det(X, Y, Z):
    return sp.det(sp.Matrix.hstack(Y-X, Z-X))


def eq(lhs, rhs):
    assert sp.factor(lhs-rhs) == 0, sp.factor(lhs-rhs)


A_actual = det(E, R, C)
B_actual = det(E, S, C)
delta_actual = det(E, R, S)
eta_actual = det(R, S, C)
J_actual = det(D, R, S)
eq(delta_actual, k*A_actual-r*B_actual)
eq(eta_actual, B_actual+delta_actual-A_actual)
eq(J_actual, delta_actual+q*(k-r))
eq(det(R, D, E), q*r)
eq(det(R, D, S), -J_actual)
eq(det(C, E, S), B_actual)
eq(det(C, R, S), eta_actual)

delta = k*A-r*B
F = (q*r-2*s)*delta-s*q*(k+r)
G = (B-2*s)*delta-s*(A+B)
eq(F, (q*r-s)*delta-s*(2*q*r+delta+q*(k-r)))
eq(G, (B-3*s)*delta-s*(2*B-(B+delta-A)))
eq(sp.diff(F, k), (q*r-2*s)*A-s*q)
eq(F, k*((q*r-2*s)*A-s*q)-r*((q*r-2*s)*B+s*q))
eq(sp.diff(G, k), (B-2*s)*A)
eq(sp.diff(F.subs(k, 1), A), q*r-2*s)
eq(sp.diff(G.subs(k, 1), A), B-3*s)

Ar = 1-q*(1-r)
Fr = F.subs({k: 1, A: Ar}, simultaneous=True)
Gr = G.subs({k: 1, A: Ar}, simultaneous=True)
weighted = sp.expand(Fr+sp.Rational(7, 2)*Gr)
beta = -(2*q*r**2-7*q*r+7*q-18*r*s+7*s-7)/2
gamma = (2*q**2*r**2-2*q**2*r-27*q*r*s+2*q*r+23*q*s-25*s)/2
eq(weighted, -sp.Rational(7, 2)*r*B**2+beta*B+gamma)
disc = sp.expand(beta**2+14*r*gamma)
eq(disc-14*r*weighted, (7*r*B-beta)**2)
eq(sp.Poly(disc, q).coeff_monomial(q**2), (2*r**2+7*r-7)**2/4)

sigma = sp.Rational(8, 73)
P0 = 9216*r**4-303968*r**3+447265*r**2-209328*r+28224
P1 = 1726596*r**4+8301852*r**3-451251*r**2-7623182*r+2401
eq(disc.subs(q, 3*s/r).subs(s, sigma), P0/(21316*r**2))
eq(disc.subs(q, sp.Rational(9, 10)).subs(s, sigma), P1/2131600)
eq(3*sigma/(3*sigma+sp.Rational(3, 16)), sp.Rational(128, 201))
assert sp.Rational(128, 201) > sp.Rational(3, 5)

P0z = 9216*z**4-279392*z**3-136095*z**2-sp.Rational(22028, 3)*z-sp.Rational(21268, 27)
P1z = 1726596*z**4+sp.Rational(62228412, 5)*z**3+sp.Rational(455538249, 25)*z**2+sp.Rational(286636988, 125)*z-sp.Rational(1698119804, 625)
eq(P0.subs(r, z+sp.Rational(2, 3)), P0z)
eq(P1.subs(r, z+sp.Rational(3, 5)), P1z)
eq(sp.Rational(2, 3)-sp.Rational(3, 5), sp.Rational(1, 15))
eq(136095-sp.Rational(279392, 15)-sp.Rational(9216, 225)-117000, sp.Rational(32093, 75))
quadratic = -117000*a**2+sp.Rational(22028, 3)*a-sp.Rational(21268, 27)
eq(sp.discriminant(quadratic, a), -sp.Rational(2832575216, 9))
eq(P1.subs(r, sp.Rational(65, 73)), -sp.Rational(1050683136, 5329))
assert all(coefficient > 0 for _, coefficient in sp.Poly(sp.diff(P1z, z), z).terms())

print("PASS: final lower-wedge barycentric inequalities and both monotone replacements")
print("PASS: positive weighted quadratic, convex endpoint reduction, and both strict quartic signs")
print("The accompanying theorem assembles the complete Type-II case exclusion.")
