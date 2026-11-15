"""Exact algebra diagnostic for SIX_BOUNDARY_HULL.md (not a search)."""
import sympy as sp

a, h, b, c, d, f, L, q = sp.symbols("a h b c d f L q")
s = sp.Rational(7, 64)
rho = sp.Rational(13, 16)
A, H, B, C, D, F = [
    sp.Matrix(p) for p in ((0, a), (0, h), (b, 0),
                          (c, 0), (1, d), (f, 1))
]
def det(X, Y, Z):
    return sp.det(sp.Matrix.hstack(Y-X, Z-X))

assert sp.expand(det(A, B, H) - b*(h-a)) == 0
assert sp.expand(det(A, B, C) - a*(c-b)) == 0
assert sp.expand(det(B, C, D) - d*(c-b)) == 0
assert sp.expand(det(A, F, H) - f*(h-a)) == 0
assert sp.expand(det(H, D, F) - (1-h+f*(h-d))) == 0
assert sp.expand(det(C, D, F) - (1-c+d*(c-f))) == 0
assert sp.expand(det(H, C, F) - (c*(1-h)+f*h)) == 0
assert sp.expand((1-f)-det(C, D, F)-(1-d)*(c-f)) == 0
assert sp.expand(((1-a-s*L)-(1-h+(1-s)*(h-a))).subs(L, h-a)) == 0
# Cauchy's nonnegative square, with q = sqrt(s).
assert sp.cancel((a+q**2*L)*(1/a+1/L)-(1+q)**2
                 -(a-q*L)**2/(a*L)) == 0
assert s-sp.Rational(5, 16)**2 == sp.Rational(3, 256) > 0
assert s*sp.Rational(21, 16)**2-sp.Rational(3, 16) == sp.Rational(15, 16384) > 0
assert s/(1-s) == sp.Rational(7, 57)
assert rho*(1+sp.Rational(7, 57)) == sp.Rational(52, 57)
assert sp.Rational(52, 57)-(1-s) == sp.Rational(79, 3648) > 0
Z = c*(1-h)+f*h
assert sp.expand(1-Z-det(C, D, F)-(h-d)*(c-f)) == 0
swap = {a:b, h:c, b:a, c:h, d:f, f:d}
assert sp.expand((f*(h-a)).subs(swap, simultaneous=True)-d*(c-b)) == 0
assert sp.expand((1-h+f*(h-d)).subs(swap, simultaneous=True)-(1-c+d*(c-f))) == 0
assert sp.expand(det(H,C,D)+det(H,D,F)-(1-(h-d)*(c-f))) == 0
print("PASS: six-anchor ear bounds, transpose identities, and exact gaps")

