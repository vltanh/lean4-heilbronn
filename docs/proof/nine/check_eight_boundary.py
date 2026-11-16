#!/usr/bin/env python3
"""Exact transcription checks for EIGHT_BOUNDARY.md.

This diagnostic does not search the configuration space. Each tested identity
and every inequality argument it supports is printed in the hand proof.
Run with Python and SymPy; no floating-point arithmetic is used.
"""

import sympy as S

Q = S.Rational
groups = 0


def equal(lhs, rhs=0):
    assert S.factor(lhs - rhs) == 0


def done(label):
    global groups
    groups += 1
    print(f"PASS: {label}")


# The quadrilateral determinant identity.
x1, y1, x2, y2, x3, y3, x4, y4 = S.symbols("x1 y1 x2 y2 x3 y3 x4 y4")
vectors = [(x1, y1), (x2, y2), (x3, y3), (x4, y4)]


def det(i, j):
    a, b = vectors[i], vectors[j]
    return a[0] * b[1] - a[1] * b[0]


equal(det(0, 1) * det(2, 3) - det(1, 2) * det(3, 0), det(0, 2) * det(1, 3))
done("quadrilateral Pluecker identity")

u, s, L, R, B, T, ell, r, t, w, v = S.symbols("u s L R B T ell r t w v")
poly = 35 - 306*u + 827*u**2 - 640*u**3
equal(poly, 315*(u-Q(17,63))**2 + Q(4,63) + 640*(Q(3,10)-u)*(u-Q(1,4))**2)
equal(poly, Q(7,20)+Q(87,5)*(u-Q(3,10))+123*(u-Q(3,10))**2+640*(Q(1,2)-u)*(u-Q(3,10))**2)
equal(Q(7,64)*(Q(12,5)*u*(1-2*u)+(1-u)**2)-(1-u)*u*(1-2*u), poly/320)
assert Q(145,18)**2 < 65
done("side-quadrilateral scalar bound")

A, C = s*(1+1/R), s*(1+1/B)
elimination = ((1+L)*(A+T*C)+(1+T)*(C+L*A))/(1-L*T)
collected = s*((1+L*T)*(2+1/B+1/R)+2*(L+T+L/R+T/B))/(1-L*T)
equal(elimination, collected)
equal(1+1/ell+(1+1/r)*(1+ell)/(1-ell), (1+ell)*(r+ell)/(ell*r*(1-ell)))
equal((5-2*S.sqrt(6))*(2+t)-t*(1-t), (t-(S.sqrt(6)-2))**2)
assert Q(71,29)**2 < 6
assert Q(3,58) < Q(17,320)
done("adjacent-double-wedge elimination and final square")

equal((1+R)*(1-s/R-s)-1-s*R/L-2*s, R*(1-s*(1+4/R+1/R**2+1/L)))
assert Q(49,499) < Q(21,200)
assert Q(21,400) < Q(17,320)
done("two-corner-cap rearrangement and comparisons")

F = 35*R**3-48*R**2+18*R-1
equal(F, Q(41,3)*(R-Q(79,123))**2+Q(32,1107)+35*(R-Q(3,7))*(R-Q(2,3))**2)
equal((7*R-3)*(-10*R**2+9*R-1)-(1+3*R)*(1-R), -2*F)
done("opposite-facing split cubic")

c0, a0, delta = Q(7,64), Q(7,44), Q(3,64)
upper_rows = [
    (Q(11,20), Q(2), Q(15,16), Q(3,1280), Q(9,2048)),
    (Q(3,5), Q(9,4), Q(21,20), Q(9,6400), Q(125,16384)),
    (Q(13,20), Q(12,5), Q(91,80), Q(23,6400), Q(13,25600)),
    (Q(11,16), Q(13,5), Q(49,40), Q(1,400), Q(33,4096)),
]
for U, kappa, q, gap1, gap2 in upper_rows:
    equal(kappa*(U-c0)-q*q, gap1)
    equal(kappa*c0*(U+delta)+2*c0*q-U+2*c0, gap2)
    assert gap1 > 0 and gap2 > 0
done("four single-cap upper-bound rows")

d = S.symbols("d")
lower_rows = [
    (Q(9,20), Q(9,4), Q(3,10), 11264,
     17280*v**3+2272*v**2+Q(241,5)*v+Q(15,2)),
    (Q(2,5), Q(12,5), Q(1,4), 8800,
     14400*v**3+3920*v**2+233*v+Q(43,4)),
    (Q(7,20), Q(13,5), Q(1,5), 70400,
     124800*v**3+52320*v**2+4955*v+Q(1149,5)),
]
for h, kappa, D, scale, numerator in lower_rows:
    polynomial = ((a0*d*(h-d)+c0*d)*(1-kappa*d)
                  + ((1-a0)*d-c0)*(h-d)*(1-kappa+kappa*d))
    equal(polynomial.subs(d, D-v), numerator/scale)
    assert h-a0 < D
    assert 1-kappa*D > 0 and 1-kappa+kappa*D < 0
    assert all(coefficient > 0 for coefficient in S.Poly(numerator, v).all_coeffs())
done("three single-cap lower-bound cubic rows")

a0 = Q(1,7)
K, z, C = 1-R-a0, c0+R*u, (53*R-4)/(64*R)
f = (R+a0)*c0*(1+2*u)/(c0+R*u)+K*u+c0*(5-3*a0)
equal(f, C+(K*z+(R+a0)*c0*(R-2*c0)/z)/R)
P = -12544*R**3+10857*R**2-1040*R-448
equal(4*K*(R+a0)*c0*(R-2*c0)-R**2*(1-C)**2, P/28672)
equal(P.subs(R,Q(7,19)), Q(104363,6859))
equal(P.subs(R,Q(5,8)), Q(5153,64))
assert S.diff(P,R,2).subs(R,Q(7,19)) < 0
assert Q(13,56) < Q(559,1296)
done("no-cap lower-R AM-GM identity and concavity endpoints")

D = 1-c0/R-2*c0/(1-R)
N = -14336*R**5+33792*R**4-27712*R**3+8928*R**2-721*R-49
equal(f.subs(u,D)-1, N/(448*R**2*(R-1)*(32*R-25)))
equal(N.subs(R,Q(5,8)+w), Q(181,16)+Q(53,2)*w+1168*w**2+768*w**3-11008*w**4-14336*w**5)
equal(1168-Q(11008,256)-Q(14336,4096), Q(2243,2))
equal(D.subs(R,Q(5,8)), Q(29,120))
done("no-cap upper-R rational identity and positive remainder")

b, g, e, y, beta, gamma = S.symbols("b g e y beta gamma")
W, P = b*(1-y)+g*y, b*(e-y)+g*(y-d)
equal(((1+R)*W-P).subs(e,d+R), b*(1-d-R*y)+g*(d+R*y))
equal((b*(1-d-R*y)+g*(d+R*y)).subs({b:u+beta,g:u+gamma}), u+beta*(1-d-R*y)+gamma*(d+R*y))
done("no-cap asymmetric weighted cancellation")

print(f"EIGHT_BOUNDARY_IDENTITY_PASS: {groups} groups")
