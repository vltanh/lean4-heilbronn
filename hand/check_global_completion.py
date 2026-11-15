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

print("PASS: parabolic affine length and removed-area identities")
print("PASS: complete convex-nonagon bound < 1936/37173 < 1/19 < A0")
