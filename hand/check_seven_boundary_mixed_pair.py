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


# The second common cell, ACE intersect ADE.
R = sp.symbols("R", positive=True)
ace = c*e+(1-c)*a
acd = c*d+(1-c)*a
j2 = acd+e-d
assert sp.expand(det(A, C, E)-ace) == 0
assert sp.expand(det(A, C, D)-acd) == 0
assert sp.expand(det(A, D, E)-(e-d)) == 0
assert sp.expand(ace+(e-d)-j2-c*(e-d)) == 0
assert 1-s-sp.Rational(7, 12) == sp.Rational(59, 192) < sp.Rational(1, 3)
assert 1-s-sp.Rational(1, 8) == sp.Rational(49, 64)
assert s/sp.Rational(49, 64) == sp.Rational(1, 7)
assert rho+sp.Rational(1, 7) == sp.Rational(107, 112) > 1-s
height = s/(1-s-b)+s/b
assert height.subs(b, sp.Rational(1, 7)) == sp.Rational(19551, 21440)
assert sp.Rational(19551, 21440)-(1-s) == sp.Rational(57, 2680) > 0
assert 1-4*s == sp.Rational(9, 16)
assert 1-sp.Rational(1, 7)-sp.Rational(7, 12) == sp.Rational(23, 84)
assert sp.Rational(3, 16)+sp.Rational(3, 8)*sp.Rational(23, 84) == sp.Rational(65, 224)
assert 3*s-sp.Rational(65, 224) == sp.Rational(17, 448) > 0
aupper = (1-s-b*e)/(1-b)-s/b
rawA = e-s/R*(e-aupper)
claimed = e-s/R*((e-1+s)/(1-b)+s/b)
assert sp.factor(rawA-claimed) == 0
assert sp.factor(sp.diff(claimed, e)-(1-s/(R*(1-b)))) == 0
assert sp.factor(claimed.subs(e, 1)-(1-s*s/(R*b*(1-b)))) == 0
assert sp.expand(R*((1-R)*(1-b-s/R)-s)
                 -(R*(1-R)*(1-b)-s)) == 0
ucap = 1-s/(R*(1-R))
assert ucap.subs(R, rho) == sp.Rational(11, 39) < sp.Rational(1, 2)
Abar = 1-s*(1-R)/ucap
assert sp.factor(Abar-(1-s*s/(R*ucap*(1-ucap)))) == 0
assert sp.factor(Abar-(1-s*R*(1-R)**2/(R*(1-R)-s))) == 0
assert 1-s-sp.Rational(1, 7) == sp.Rational(335, 448)
assert s/sp.Rational(335, 448) == sp.Rational(49, 335)
assert 1-sp.Rational(49, 335) == sp.Rational(286, 335) < sp.Rational(6, 7)
assert (rho-s)**2-4*s*rho == sp.Rational(569, 4096) > 0
assert 2*rho-6*s > 0
N = (200704*R**8+2334080*R**7+2783201*R**6-22065668*R**5
     +28243972*R**4-13878718*R**3+2580732*R**2-175616*R+2401)
F2 = (aa*R-s*(aa+R))**2-4*s*(aa+s)*aa*R
assert sp.factor(F2.subs(aa, Abar)
                 -N/(4096*(8*R-7)**2*(8*R-1)**2)) == 0
assert sp.Rational(6, 7)-rho == sp.Rational(5, 112) < sp.Rational(1, 20)
xx = sp.symbols("xx")
expansion = (-sp.Rational(80639, 2401)-sp.Rational(6306568, 2401)*xx
             -sp.Rational(283838904, 2401)*xx**2
             -sp.Rational(1780921934, 343)*xx**3
             +sp.Rational(1145488408, 49)*xx**4
             -sp.Rational(247361416, 7)*xx**5
             +20916449*xx**6-3710336*xx**7+200704*xx**8)
assert sp.expand(N.subs(R, sp.Rational(6, 7)-xx)-expansion) == 0
quadupper = (-sp.Rational(283838904, 2401)
             +sp.Rational(1145488408, 49*400)
             +sp.Rational(20916449, 160000)
             +sp.Rational(200704, 64000000))
assert quadupper == -sp.Rational(572810756110631, 9604000000) < 0
print("PASS: complete seven-boundary ACE-ADE pair-cell exclusion")


# The whole mixed placement above AF is excluded.
right_cdf = (1-sp.Rational(4, 5)
             +sp.Rational(391, 1600)
              *(sp.Rational(4, 5)-sp.Rational(97, 200)))
right_def = sp.Rational(103, 200)*(sp.Rational(633, 800)-sp.Rational(33, 200))
assert right_cdf == sp.Rational(88633, 320000) < 3*s
assert right_def == sp.Rational(51603, 160000) < 3*s
assert sp.expand(det(C, D, F)-(1-c+d*(c-f))) == 0
assert sp.expand(det(D, E, F)-(1-f)*(e-d)) == 0
print("PASS: complete mixed above-AF exclusion; the left point is in ACF")
