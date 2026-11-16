#!/usr/bin/env python3
"""Exact identities for UNBALANCED_FINAL_NEGATIVE_LINE.md; no numerical search."""

import sympy as sp

q, r, u, v, k, t, x, y, s, z, a = sp.symbols("q r u v k t x y s z a")
L = 1-r
alpha = v-q*L
D = sp.Matrix([0, 1])
C = sp.Matrix([1, 1])
E = sp.Matrix([0, 1-q])
R = sp.Matrix([r, 1-v])
S = sp.Matrix([k, t])
T = sp.Matrix([x, y])


def det(A, B, C):
    return sp.det(sp.Matrix.hstack(B-A, C-A))


def eq(lhs, rhs):
    assert sp.factor(lhs-rhs) == 0, sp.factor(lhs-rhs)


H = 1-y-q*(1-x)
d = v*x-r*(1-y)
F = (q*r-s)*H-s*(2*q*r+v+d)
eq(det(C, E, T), H)
eq(det(D, R, T), d)
eq(det(R, D, E), q*r)
eq(det(R, D, C), -v)
eq(det(R, D, T), -d)
eq(det(E, R, C), alpha)
eq(det(D, E, R), q*r)
eq(det(C, R, S), L*(1-t)-(1-k)*v)
eq(sp.diff(F, y), -(q*r-s+s*r))

line_rc = 1-v+(s+v*(x-r))/L
eq(sp.diff(F.subs(y, line_rc), x), -q*(r*alpha/L+s))
t_max = 1-s/L-(1-k)*v/L
rst_relaxed = det(R, S, T).subs(t, t_max)
eq(sp.diff(rst_relaxed, k), det(R, C, T)/L)
eq(rst_relaxed.subs(k, 1), L*(y-(1-v))-(v-s/L)*(x-r))
line_rs = 1-v+s/L+(v/L-s/L**2)*(x-r)
line_dr = 1+(s-v*x)/r
eq(sp.diff(F.subs(y, line_dr), x), (q*r*(q*r+v-s)-s*v)/r)

J = v-r*s/L
H0 = alpha-s*(2*alpha+q-s/L)/J
H1 = alpha-s/L
F0 = (q*r-s)*H0-s*(2*q*r+v+s)
F1 = (q*r-s)*H1-s*(2*q*r+v+r*s/L)
T0 = (s*D+(J-2*s)*R+s*sp.Matrix([1, 1-s/L]))/J
eq(det(D, R, T0), s)
eq(det(R, sp.Matrix([1, 1-s/L]), T0), s)
eq(det(C, E, T0), H0)
eq(F.subs({x: T0[0], y: T0[1]}, simultaneous=True), F0)
eq(F.subs({x: r, y: 1-v+s/L}, simultaneous=True), F1)
eq(sp.diff(H0, v), 1+s*(2*r-1)*(q+s/L)/J**2)
eq(sp.diff(F1, v), q*r-2*s)

N0 = (L-r*s)*((q*r-s)*(1-q*L)-s*(2*q*r+1+s))-s*(q*r-s)*(2*(1-q*L)*L+q*L-s)
N1 = L*((q*r-s)*(1-q*L)-s*(2*q*r+1))-s*q*r+s**2*L
eq(N0, L*J.subs(v, 1)*F0.subs(v, 1))
eq(N1, L*F1.subs(v, 1))
eq(sp.Poly(N0, q).coeff_monomial(q**2), -r*L**2*(1-s))
eq(sp.Poly(N1, q).coeff_monomial(q**2), -r*L**2)

sigma = sp.Rational(8, 73)
P0 = 32095521*r**4-79935586*r**3+66712689*r**2-18989360*r+270400
P1 = 6817*r**4-16482*r**3+13553*r**2-3888*r+64
eq(sp.discriminant(N0.subs(s, sigma), q), P0/28398241)
eq(sp.discriminant(N1.subs(s, sigma), q), P1/5329)
eq(3*sigma/(3*sigma+sp.Rational(3, 16)), sp.Rational(128, 201))
assert sp.Rational(128, 201) > sp.Rational(1, 2)

P0z = 32095521*z**4+sp.Rational(113850406, 5)*z**3-sp.Rational(47147919, 25)*z**2+sp.Rational(780536, 125)*z-sp.Rational(3538544, 625)
P1z = 6817*z**4+sp.Rational(26662, 5)*z**3+sp.Rational(4337, 25)*z**2+sp.Rational(14072, 125)*z-sp.Rational(11888, 625)
eq(P0.subs(r, z+sp.Rational(4, 5)), P0z)
eq(P1.subs(r, z+sp.Rational(4, 5)), P1z)
eq(sp.Rational(113850406, 5)-32095521*sp.Rational(3, 10), sp.Rational(131414249, 10))
zmax = sp.Rational(33, 365)
eq(sp.Rational(65, 73)-sp.Rational(4, 5), zmax)
Astar = 32095521*zmax**2+sp.Rational(113850406, 5)*zmax-sp.Rational(47147919, 25)
eq(Astar, sp.Rational(57966390072, 133225))
assert Astar > 0
eq(P0.subs(r, sp.Rational(65, 73)), -sp.Rational(43748556800, 28398241))
eq(P1.subs(r, sp.Rational(65, 73)), -sp.Rational(85999616, 28398241))
der_lower = sp.Rational(39084, 5)*a**2-sp.Rational(8674, 25)*a+sp.Rational(14072, 125)
eq(sp.diff(P1z, z).subs(z, -a)-der_lower, 27268*a**2*(sp.Rational(3, 10)-a))
eq(sp.discriminant(der_lower, a), -sp.Rational(2124721916, 625))

print("PASS: negative QT-E sign, both supporting-line ranges, and monotone endpoint reduction")
print("PASS: both concave quadratics and complete rational quartic-discriminant signs")
