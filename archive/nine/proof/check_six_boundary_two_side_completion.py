#!/usr/bin/env python3
"""Exact scalar algebra for the complete two-side N occupancy."""

import sympy as sp

s = sp.Rational(7, 64)
a, h, b, c, m, alpha, delta, L, M, r, t, x, y, z, w = sp.symbols(
    "a h b c m alpha delta L M r t x y z w")
p, q, lam, u, v = sp.symbols("p q lam u v")


def eq(lhs, rhs):
    value = sp.factor(lhs-rhs)
    assert value == 0, value


eq(sp.Rational(27, 256)-q**3*(1-q),
   (4*q-3)**2*(16*q**2+8*q+3)/256)
assert s-sp.Rational(27, 256) == sp.Rational(1, 256) > 0
eq((h*M-L*M).subs(h, a+L), a*M)
eq((c*L-L*M).subs(c, b+M), b*L)

# Mixed quadrant: t>a, r<b, with delta=b-r and c=m+b.
R_direct = ((h*(c-r)-s)/c)*(b-s/(h-s/m))-h*(b-r)
R = (h*r*m-s*b)/c-s*(h*(c-r)-s)/(c*(h-s/m))
eq((R_direct-R).subs(c, m+b), 0)
eq(sp.diff(R, h).subs(c, m+b),
   (r*m/c+s**2*delta/(c*m*(h-s/m)**2)).subs({c:m+b, delta:b-r}))
eq(R.subs({h:1, c:m+b}),
   (r*m/c-s-s*m*delta/(c*(m-s))).subs({c:m+b, delta:b-r}))
assert 8*s == sp.Rational(7, 8)
assert 12*s == sp.Rational(21, 16) > 1

# Lower-left quadrant: the two anchor-cap consequences used in the symmetric reduction.
eq(((s/M+s/b)*b-s*c/M).subs(c, b+M), 0)
eq(((s/L+s/a)*a-s*h/L).subs(h, a+L), 0)
eq((1-v*c)/((1-v)*(1-c)), 1/(1-c)+v/(1-v))
eq((1-u*h)/((1-u)*(1-h)), 1/(1-h)+u/(1-u))
eq(1/(1-q)+lam/(1-lam), (1-lam*q)/((1-q)*(1-lam)))

first = lam**2*q**2*(1-lam)
second = q**2*(1-lam)*(1-q)/(1-lam*q)
q0 = (1+lam)/(1+lam+lam**2)
J = lam**2*(1-lam)*(1+lam)**2/(1+lam+lam**2)**2
eq(first.subs(q, q0), J)
eq(second.subs(q, q0), J)
N = 2-(3+lam)*q+2*lam*q**2
eq(sp.diff(second, q), (1-lam)*q*N/(1-lam*q)**2)
D0 = lam**4+lam**3+2*lam**2-lam-1
eq(N.subs(q, q0), D0/(1+lam+lam**2)**2)
Q0 = sp.Rational(28, 9)*lam**2-lam-1
eq(Q0-D0, lam**2*(sp.Rational(2, 3)-lam)*(lam+sp.Rational(5, 3)))
assert Q0.subs(lam, 0) == -1
assert Q0.subs(lam, sp.Rational(2, 3)) == -sp.Rational(23, 81)

D1 = lam**4+2*lam**3+6*lam**2-lam-2
eq(sp.diff(J, lam), -lam*(1+lam)*D1/(1+lam+lam**2)**3)
Q1 = sp.Rational(29, 4)*lam**2-lam-2
eq(Q1-D1, lam**2*(sp.Rational(1, 2)-lam)*(lam+sp.Rational(5, 2)))
assert Q1.subs(lam, 0) == -2
assert Q1.subs(lam, sp.Rational(1, 2)) == -sp.Rational(11, 16)
eq(J.subs(lam, sp.Rational(1, 2)), sp.Rational(9, 98))
eq(sp.diff((1+lam)/(1+lam+lam**2), lam),
   -lam*(lam+2)/(1+lam+lam**2)**2)
eq(sp.Rational(4, 27)-lam**2*(1-lam),
   (lam-sp.Rational(2, 3))**2*(lam+sp.Rational(1, 3)))
assert sp.Rational(36, 49)*sp.Rational(4, 27) == sp.Rational(16, 147)
eq(sp.diff(second, lam), -q**2*(1-q)**2/(1-lam*q)**2)
eq(second.subs(lam, sp.Rational(2, 3)), q**2*(1-q)/(3-2*q))

cubic = 10*q**3-10*q**2-2*q+3
eq(10*(3-2*q)*(sp.Rational(1, 10)-q**2*(1-q)/(3-2*q)), cubic)
shifted = 10*z**3+sp.Rational(25, 2)*z**2-z/8+sp.Rational(3, 32)
lower = 5*z**2-z/8+sp.Rational(3, 32)
eq(cubic.subs(q, z+sp.Rational(3, 4)), shifted)
eq(shifted-lower, 10*z**2*(z+sp.Rational(3, 4)))
eq(sp.discriminant(lower, z), -sp.Rational(119, 64))
assert sp.Rational(9, 98) < sp.Rational(16, 147)
assert sp.Rational(1, 10) < sp.Rational(16, 147)
assert s-sp.Rational(16, 147) == sp.Rational(5, 9408) > 0

print("PASS: upper/right and both mixed simultaneous-projection obstructions")
print("PASS: lower/left symmetric reduction and the complete 16/147 scalar bound")
