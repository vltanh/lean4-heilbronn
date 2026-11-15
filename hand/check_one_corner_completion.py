"""Exact diagnostics for the quadrilateral line-orientation theorem.

The geometric classification and root arguments are in the accompanying note.
No numerical search is a premise of that theorem.
"""
import sympy as S

s, a, b, T = S.symbols('s a b T', positive=True)
J = a + b - 1
h, beta, sigma = a/T, b/T, s/T
D = h + beta - h*beta
bracket = h*beta - sigma*(beta + 2*h - h*beta)
assert S.factor((T**2*bracket).subs(T, a*b/J) - (a*b-s*(1+a))) == 0
assert S.factor((T*D).subs(T, a*b/J) - 1) == 0
assert S.factor((T*h*(1-beta)).subs(T, a*b/J) - (1-b)) == 0
assert S.factor((T*(1-h)*beta).subs(T, a*b/J) - (1-a)) == 0
assert S.factor((T**4 * 4*sigma*D*h*beta).subs(T, a*b/J) - 4*s*a*b) == 0

# Direct check of the canonical sign identity.
h, beta, p, w, q, v = S.symbols('h beta p w q v')
A, E, H, F = S.Matrix([0,0]), S.Matrix([1,1]), S.Matrix([0,h]), S.Matrix([1-beta,1])
P, Q = S.Matrix([p,p+w]), S.Matrix([q,q+v])
def det(U,V):
    return S.det(S.Matrix.hstack(U,V))
def side(V):
    return det(Q-P,V-P)
u, e = -side(A), side(E)
k = h*(1-p)-w
ell = beta*p-(1-beta)*w
r = beta*(1-p-w)
N = (1-beta)*w + (h-beta)*p - (1-beta)*h
assert S.expand(w*side(H)-(k*u-h*p*e)) == 0
assert S.expand(w*side(F)-(r*u-ell*e)) == 0
assert S.expand(h*p*r-k*ell+w*N) == 0

s0 = S.Rational(7,64)
last = (1-4*s0+2*s0**2)**2 - 4*s0*(1-s0)**2
assert last == -S.Rational(13151,4194304)
assert 1-2*s0 > 0
assert 14*s0 > 1
assert 10*s0 > 1
print('PASS: affine area conversion, line-sign identities, and exact negative endpoint')

# Same-side case: the opposite hull-edge constraint, before maximization.
a, b, s, T, w = S.symbols('a b s T w', positive=True)
h, beta, sigma = a/T, b/T, s/T
height_upper = T*(beta-sigma/(1-beta))
assert S.factor(height_upper.subs(T,a*b/(a+b-1)) - (b-s*a/(1-b))) == 0

s0 = S.Rational(7,64)
A, B = 1-s0, S.Rational(17,20)
v = S.symbols('v')
def pair_bound(a,b,v):
    return a*b*(v-s0)-s0*v*(a+b)-v*v
first_discriminant = (A*B-s0*(A+B))**2-4*s0*A*B
assert first_discriminant == -S.Rational(847963,83886080)
height_cap = B-s0*B/(1-B)
assert height_cap == S.Rational(221,960)
assert pair_bound(A,A,height_cap) == -S.Rational(58967,29491200)
assert S.diff(pair_bound(A,A,v),v).subs(v,height_cap) == S.Rational(8477,61440)
assert s0 > (1-B)**2
print('PASS: opposite-edge height restriction and both exhaustive rational intervals')

# The two mixed-pair orientations have the same negative discriminant.
a, b, s, T = S.symbols('a b s T', positive=True)
h, beta, sigma = b/T, a/T, s/T
Tvalue = a*b/(a+b-1)
case_one = h*beta*(1-beta)-sigma*(3*h+beta-2*h*beta)
case_two = h*beta*(1-beta)-sigma*(2*h+2*beta-h*beta)
assert S.factor((T**2*case_one).subs(T,Tvalue)-(a*(1-a)-s*(2+b-a))) == 0
assert S.factor((T**2*case_two).subs(T,Tvalue)-(a*(1-a)-s*(1+a+b))) == 0
k_lower = S.Rational(149,20)
assert 1-6*s0+(1-4*k_lower)*s0**2 == -S.Rational(1,1280)
assert 3*40**2 > 69**2
print('PASS: both mixed-pair conversions and common negative discriminant')
