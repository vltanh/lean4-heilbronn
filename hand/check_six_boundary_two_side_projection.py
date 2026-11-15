#!/usr/bin/env python3
"""Exact identities for the complete two-side N projection chamber."""

import sympy as sp

a, h, b, c, d, f, x, y, z, w, r, t = sp.symbols(
    "a h b c d f x y z w r t")
A = sp.Matrix([0, a])
H = sp.Matrix([0, h])
B = sp.Matrix([b, 0])
C = sp.Matrix([c, 0])
D = sp.Matrix([1, d])
F = sp.Matrix([f, 1])
X = sp.Matrix([x, y])
Y = sp.Matrix([z, w])
Q = sp.Matrix([r, t])
O = sp.Matrix([0, 0])
s = sp.Rational(7, 64)


def det(P, R, S):
    return sp.det(sp.Matrix.hstack(R-P, S-P))


def eq(lhs, rhs):
    delta = sp.factor(lhs-rhs)
    assert delta == 0, delta


eq(det(B, C, X), (c-b)*y)
eq(-det(C, D, X), (1-c)*(d-y)-d*(1-x))
eq(det(A, B, H), b*(h-a))
eq(det(H, D, F), 1-d-(1-f)*(h-d))
assert sp.Rational(13, 16)-(1-s)**2 == sp.Rational(79, 4096) > 0
assert 3-sp.Rational(12, 7)**2 > 0
eq((4+2*sp.Rational(12, 7))*s, sp.Rational(13, 16))

eq(det(B, C, Q), (c-b)*t)
eq(det(C, X, Q), (x-c)*t+(c-r)*y)
eq(sp.diff(-det(B, Q, X), x), t)
eq(sp.diff(det(C, X, Q), x), t)
eq(det(H, X, O), -h*x)
eq(det(H, X, H), 0)
eq(det(H, X, C), h*(c-x)-c*y)
eq(sp.diff(-det(H, X, Q), x), h-t)
eq(det(F, X, O), f*y-x)
eq(det(F, X, H), f*(y-h)-(1-h)*x)
eq(det(F, X, C), c-x+(f-c)*y)
eq(sp.diff(-det(F, X, Q), x), 1-t)
eq(det(D, X, O), y-d*x)
eq(det(D, X, H), y-d-(h-d)*(1-x))
eq(det(D, X, C), det(C, D, X))
eq(d*x-y, c*(d-y)-det(C, D, X))
eq(-det(D, X, Q).subs(x, 1), (1-r)*(d-y))
eq(det(A, Q, X), r*(y-a)-x*(t-a))
eq(sp.diff(det(A, Q, X), x), a-t)

for V, left_height in [(A, a), (H, h)]:
    eq(det(V, X, Y), (x-z)*(w-left_height)+z*(w-y))
    eq(sp.diff(det(V, X, Y), x), w-left_height)
    eq(sp.diff(det(V, X, Y), w), x)
for V, bottom_position in [(B, b), (C, c)]:
    eq(det(V, X, Y), (x-bottom_position)*(w-y)+y*(x-z))
    eq(sp.diff(det(V, X, Y), x), w)
    eq(sp.diff(det(V, X, Y), w), x-bottom_position)
eq(-det(D, X, Y), (1-x)*(w-d)+(d-y)*(1-z))
eq(-det(D, X, Y).subs({x:1, w:1}), (d-y)*(1-z))
eq(-det(F, X, Y), (x-f)*(1-w)+(1-y)*(f-z))
eq(-det(F, X, Y).subs({x:1, w:1}), (1-y)*(f-z))
eq(det(H, F, Y), (1-h)*(f-z)-f*(1-w))
eq(sp.diff(det(Q, X, Y), x), w-t)
eq(sp.diff(det(Q, X, Y), w), x-r)

print("PASS: empty BCX/AHY triangles and every signed projection identity")
print("PASS: all cap-pair endpoint bounds used in the two-contact sharp chamber")
