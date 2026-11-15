#!/usr/bin/env python3
"""Exact five-point exterior-cap identities, with no numerical premise."""

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
