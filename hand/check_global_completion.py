#!/usr/bin/env python3
"""Exact algebra diagnostics for GLOBAL_COMPLETION.md.

This does not verify the affine isoperimetric theorem or the geometric
convexity argument. Those are stated explicitly in the accompanying proof.
"""

from fractions import Fraction

import sympy as sp


def det(p, q):
    return sp.expand(p[0] * q[1] - p[1] * q[0])


u = sp.symbols("u", real=True)
ax, ay, bx, by = sp.symbols("ax ay bx by", real=True)
a = sp.Matrix([ax, ay])
b = sp.Matrix([bx, by])
arc = ((1 - u) ** 2 * a + u**2 * b) / 2
d1 = arc.diff(u)
d2 = d1.diff(u)

assert sp.simplify(det(d1, d2) + det(a, b)) == 0
assert sp.simplify(sp.integrate(det(arc, d1) / 2, (u, 0, 1)) - det(a, b) / 24) == 0
assert d1.subs(u, 0) == -a
assert d1.subs(u, 1) == b

# pi^2 < (22/7)^2, followed by an increasing rational function.
q = Fraction(484, 49)
bound = 4 * q / (729 + 3 * q)
assert bound == Fraction(1936, 37173)
assert bound < Fraction(1, 19) < Fraction(7, 128)
assert 18**2 * 65 - 145**2 == 35

# Seven-boundary lower-cap identities and exact final contradiction.
f, h, e, lam = sp.symbols("f h e lam", real=True)
H = sp.Matrix([0, h])
F = sp.Matrix([f, 1])
E = sp.Matrix([1, e])
assert sp.expand(-det(F - H, E - H) - ((1 - f) * (1 - h) + f * (1 - e))) == 0
q_lam = lam * (1 - lam)
assert sp.simplify(1 + 3 / lam + 3 / (1 - lam) - (1 + 3 / q_lam)) == 0
assert sp.simplify((1 + 3 / lam) * 3 / (1 - lam) - 3 * (lam + 3) / q_lam) == 0
assert Fraction(2) - Fraction(7, 64) / 4 == Fraction(505, 256)
assert 7 * 192**2 - 505**2 == 3023

print("PASS: parabolic affine length and removed-area identities")
print("PASS: complete convex-nonagon bound < 1936/37173 < 1/19 < A0")
print("PASS: seven-boundary lower exterior-cap identities and strict 7/128 exclusion")
