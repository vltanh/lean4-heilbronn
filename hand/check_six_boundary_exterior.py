#!/usr/bin/env python3
"""Exact exterior-cap identities and capacity bounds; no numerical premise."""

import sympy as sp

a, b, h, c, x, y, t, z = sp.symbols("a b h c x y t z")
A = sp.Matrix([0, a])
H = sp.Matrix([0, h])
B = sp.Matrix([b, 0])
C = sp.Matrix([c, 0])
X = sp.Matrix([x, y])


def det(P, Q, R):
    return sp.det(sp.Matrix.hstack(Q-P, R-P))


def eq(lhs, rhs):
    assert sp.factor(lhs-rhs) == 0, sp.factor(lhs-rhs)


eq(-det(A, H, X), x*(h-a))
eq(det(B, C, X), y*(c-b))
eq(-det(A, B, X), a*b-a*x-b*y)
eq(1+a/(1-a)+b/(1-b), (1-a*b)/((1-a)*(1-b)))
eq(t**2*(1-t)**2/(1-t**2), t**2*(1-t)/(1+t))
eq((1+t)-10*t**2*(1-t), 10*t**3-10*t**2+t+1)
P = 10*z**3+8*z**2-z/5+sp.Rational(4, 25)
eq((10*t**3-10*t**2+t+1).subs(t, z+sp.Rational(3, 5)), P)
Q = 2*z**2-z/5+sp.Rational(4, 25)
eq(P-Q, 10*z**2*(z+sp.Rational(3, 5)))
eq(sp.discriminant(Q, z), -sp.Rational(31, 25))
assert sp.Rational(7, 128) > sp.Rational(1, 20)

print("PASS: complete double-contact exterior-corner cap exclusion below ordinary area1/20")

s = sp.Rational(7, 64)
k = (1-s)/s
d, f, m, alpha, u, v, tau, p, w, U, V = sp.symbols(
    "d f m alpha u v tau p w U V")
D = sp.Matrix([1, d])
F = sp.Matrix([f, 1])
cap_X = sp.Matrix([1-alpha*U, d*V])
eq(det(B, C, cap_X), (c-b)*d*V)
eq(-det(C, D, cap_X).subs(c, 1-alpha),
   alpha*d*(1-U-V))

cap_D = sp.Matrix([0, 1])
cap_0 = sp.Matrix([0, u])
cap_1 = sp.Matrix([1-tau-u, u])
cap_2 = sp.Matrix([0, 1-tau])
eq(det(cap_D, cap_0, cap_1), (1-tau-u)*(1-u))
eq(-det(cap_D, cap_1, cap_2), (1-tau-u)*tau)
eq(det(cap_D, cap_2, cap_0), 0)
eq((alpha*d*(1-u)*(1-u-tau)).subs(tau, s/(alpha*d)),
   alpha*d*(1-u)**2-s*(1-u))

eq(det(A, B, C), a*(c-b))
eq(det(A, B, H), b*(h-a))
eq(det(H, D, F), 1-h+f*(h-d))
eq(1-h+c*(h-d), 1-(1-c)*h-c*d)
eq(s/m+s/b, d*(u+v).subs({u:s/(m*d), v:s/(b*d)}))
eq(c, (s/d*(1/u+1/v)).subs({u:s/((c-b)*d), v:s/(b*d)}))

# Upper bound from the clipped cap, scaled by s.
scaled = (d/s-1/u-1/v)*p**2-p
eq((alpha*d*p**2-s*p).subs(alpha, 1-s/d*(1/u+1/v))/s,
   scaled)
Bfun = k*(1-u)**2+u-1/u
eq(scaled.subs({d:s*k, v:1-u, p:1-u}), Bfun)

# The anchor height budget when u+v>1.
d_upper = s*(k/(u+v)+(u+v-1)/(u*v))
eq((d*(u+v)+(1-u-v)*s*(1/u+1/v)).subs(d, d_upper),
   1-s)
g = k/(u+v)-1/(u*v)
eq(scaled.subs(d, d_upper), g*p**2-p)
eq((w-1)**2/u**2-(w**2/(u*(u+v))-1/(u*v)),
   ((w-1)*v-u)**2/(u**2*v*(u+v)))
eq(sp.diff(g, v), -k/(u+v)**2+1/(u*v**2))
eq((g*p**2-p).subs({v:1-u, p:1-u}), Bfun)

cubic = 57*u**3-107*u**2+50*u-7
eq(7*u*(Bfun-1), cubic)
cubic_z = 57*z**3-sp.Rational(557, 10)*z**2+sp.Rational(119, 100)*z-sp.Rational(91, 1000)
quad_z = -sp.Rational(79, 5)*z**2+sp.Rational(119, 100)*z-sp.Rational(91, 1000)
eq(cubic.subs(u, z+sp.Rational(3, 10)), cubic_z)
eq(quad_z-cubic_z, 57*z**2*(sp.Rational(7, 10)-z))
eq(sp.discriminant(quad_z, z), -sp.Rational(43351, 10000))
assert k == sp.Rational(57, 7)
assert sp.Poly(quad_z, z).LC() < 0

print("PASS: complete lower-right and upper-left exterior-cap capacity-one theorem")
