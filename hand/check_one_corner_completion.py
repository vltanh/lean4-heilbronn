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
