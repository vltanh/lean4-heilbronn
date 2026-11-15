"""Exact identities for SEVEN_BOUNDARY_MIXED_PAIR.md; no search."""
import sympy as sp

a, h, b, c, d, e, f = sp.symbols("a h b c d e f")
s = sp.Rational(7, 64)
rho = sp.Rational(13, 16)
A, H, B, C, D, E, F = [
    sp.Matrix(p) for p in ((0, a), (0, h), (b, 0), (c, 0),
                          (1, d), (1, e), (f, 1))
]

def det(X, Y, Z):
    return sp.det(sp.Matrix.hstack(Y-X, Z-X))

area_a = (1-b)*h+b*e
area_b = 1-b-e*(f-b)
quad = 1+(h-e)*(f-b)
top = 1-(1-f)*h-f*e
assert sp.expand(det(H, B, E)-area_a) == 0
assert sp.expand(det(B, E, F)-area_b) == 0
assert sp.expand(det(H, E, F)-top) == 0
assert sp.expand(det(H, B, E)+det(H, E, F)-quad) == 0
assert sp.expand(quad-area_a-top) == 0
assert sp.expand(det(H, B, F)-(b*(1-h)+f*h)) == 0
assert sp.Rational(1, 8)*(1-sp.Rational(1, 8)) == s
assert sp.Rational(1, 8) > sp.Rational(1, 9)

# The b <= 2/15 contradiction.
fupper = b+(sp.Rational(3, 16)-b)*(1-b)/(4*s)
assert fupper.subs(b, sp.Rational(1, 8)) == sp.Rational(1, 4)
assert sp.factor(sp.diff(fupper, b)
                 -(1+(2*b-sp.Rational(19, 16))/(4*s))) == 0
assert sp.diff(fupper, b).subs(b, sp.Rational(2, 15)) < 0
assert -sp.Rational(15, 2)+sp.Rational(60, 13) == -sp.Rational(75, 26) < 0
G = sp.Rational(3, 4)/b+sp.Rational(9, 4)/(1-b)
assert sp.factor(sp.diff(G, b)
                 -(-sp.Rational(3, 4)/b**2+sp.Rational(9, 4)/(1-b)**2)) == 0
assert 3*(sp.Rational(2, 15)/(1-sp.Rational(2, 15)))**2 < 1
assert s*G.subs(b, sp.Rational(2, 15)) == sp.Rational(5985, 6656)
assert sp.Rational(5985, 6656)-(1-s) == sp.Rational(57, 6656) > 0
assert 4*s/(1-sp.Rational(2, 15)) == sp.Rational(105, 208) > sp.Rational(1, 2)
assert sp.Rational(3, 8)-sp.Rational(2, 15) == sp.Rational(29, 120)
assert 3*s-sp.Rational(29, 120) == sp.Rational(83, 960) > 0
assert rho-sp.Rational(29, 120) == sp.Rational(137, 240) > 0

# The common quadratic, its root endpoint, and the positive transfer.
aa, bb, jj, tt = sp.symbols("aa bb jj tt", positive=True)
root = (aa*bb-s*(aa+bb))**2-4*s*(aa+s)*aa*bb
leading = sp.Poly(root.subs(bb, sp.Rational(13, 15)), aa).LC()
assert leading == sp.Rational(179089, 921600) > 0
gap = root.subs({aa:1-s, bb:sp.Rational(13, 15)})
assert gap == -sp.Rational(1265779, 754974720) < 0
bracket = ((1-s)*sp.Rational(13, 15)
           -s*(1-s+sp.Rational(13, 15)))
assert bracket > 0
Lfun = (aa*bb-s*(aa+bb))/sp.sqrt(aa*bb)
assert sp.simplify(sp.diff(Lfun, aa)
                   -(aa*(bb-s)+s*bb)/(2*aa*sp.sqrt(aa*bb))) == 0
aa0, bb0 = 1-s, 1-b
assert sp.expand((aa0+tt)*(bb0-tt)
                 -aa0*bb0+tt*(aa0-bb0)+tt**2) == 0
pp, total = sp.symbols("pp total", positive=True)
assert sp.simplify(sp.diff((pp-s*total)/sp.sqrt(pp), pp)
                   -(pp+s*total)/(2*pp**sp.Rational(3, 2))) == 0
assert sp.expand((area_a+area_b-quad)
                 -(h*(1-f)+b*(e-1))) == 0

# The lower-left point forces Q below HE.
assert 2*128**2-181**2 == 7 > 0
assert sp.Rational(7, 11)/(1-s) == sp.Rational(448, 627)
assert sp.Rational(448, 627) > 1-3*s
assert sp.Rational(7, 11)+s == sp.Rational(525, 704)
assert sp.Rational(525, 704)-sp.Rational(6, 7)**2 == sp.Rational(381, 34496) > 0
assert s-sp.Rational(21, 64)**2 == sp.Rational(7, 4096) > 0
assert (sp.Rational(6, 7)+sp.Rational(21, 64))**2-(2-6*s) == sp.Rational(12265, 200704) > 0
print("PASS: seven-boundary common-cell exclusion and lower-point height separation")
