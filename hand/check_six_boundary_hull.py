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

# Section 3: a point in the opposite DF sector.
z, W, p, r, ss = sp.symbols("z W p r ss")
kk = p*r/z
WW = 1-z+p+r-kk
U, V = 1-ss+r-kk, 1-ss+p-kk
assert sp.factor(U*V-(1-ss)*(WW+z-ss)+(WW-ss)*kk) == 0
assert sp.factor(kk*(z-ss)-ss*(WW-1+z-ss)-(p-ss)*(r-ss)) == 0
klower = ss+ss*(W-1)/(z-ss)
J = W*(1-3*ss)-ss*z-ss+ss**2-ss*(W-ss)*(W-1)/(z-ss)
assert sp.factor((1-ss)*(W+z-ss)-(W-ss)*klower-z-ss*(W+ss)-J) == 0
assert sp.factor(sp.diff(J,z)-(-ss+ss*(W-ss)*(W-1)/(z-ss)**2)) == 0
assert sp.factor(sp.diff(J,W)-(1-3*ss-ss*(2*W-1-ss)/(z-ss))) == 0
z0 = sp.Rational(7, 11)
assert 2*128**2-181**2 == 7
assert 16*s-1-s > 0
assert 1-3*s-s*(1-s)/(z0-s) == sp.Rational(413, 848) > 0
end = J.subs({ss:s,z:z0,W:1})
assert end == sp.Rational(22747,45056) > 0
assert end**2-36*z0*s**2 == -sp.Rational(38925479,2030043136) < 0
print("PASS: the complete HC/DF opposite-sector exclusion")

# Section 4: cross-triangle capacities and the other opposite pair.
sigma = sp.Rational(8, 73)
assert 657**2*65-5295**2 == 20160
assert 3*100**2-173**2 == 71 > 0
X = 1-a-f*(d-a)
tau = 1-X
MM = 1-d*f-3*ss
assert sp.expand(det(A,C,D)-(a+c*(d-a))) == 0
assert sp.expand(det(H,B,F)-(b*(1-h)+f*h)) == 0
assert sp.expand(det(A,D,F)-X) == 0
assert sp.expand(det(B,D,F)-(1-b-d*(f-b))) == 0
assert sp.expand(X-det(H,D,F)-(1-f)*(h-a)) == 0
assert sp.expand(MM-a*(1-f)-(X-3*ss)) == 0
assert sp.cancel(ss/a+ss*(1-f)/(X-3*ss)-ss*MM/(a*(X-3*ss))) == 0
assert sp.expand(
    tau*(X-2*ss)-ss
    -(a*(X-3*ss)-ss*(1-d))
    -(d-a)*(f*(X-2*ss)-ss)
) == 0
tau0 = 1-sp.Rational(373,50)*sigma
assert tau0 == sp.Rational(333,1825)
assert 1-2*sigma-2*tau0 == sp.Rational(759,1825) > 0
assert tau0*(1-2*sigma-tau0)-sigma == -sp.Rational(1364,3330625) < 0
assert sp.expand(det(A,B,D)+det(A,D,F)-(1-(d-a)*(f-b))) == 0

u, v, eta, T, Y, Z, mm, nn, bound = sp.symbols(
    "u v eta T Y Z mm nn bound")
WW2 = 1-z*u*v
areaY, areaZ = h-z*u, c-z*v
# The smaller sector expression and its scalar endpoint.
sector1 = Z*(W-Y)-ss*(2*W+Z-Y)
sector2 = Y*(W-Z)-ss*(2*W+Y-Z)
assert sp.expand(sector1-sector2-(W-2*ss)*(Z-Y)) == 0
gg = (mm*(W-ss)-2*ss*W)/(mm-ss)
assert sp.cancel(sp.diff(gg,mm)-ss*(W+ss)/(mm-ss)**2) == 0
assert sp.cancel((gg-mm)*(mm-ss)+(mm**2-W*mm+2*ss*W)) == 0
assert sp.factor((gg.subs(mm,T)-T).subs(W,T**2/(T-2*ss))) == 0
assert sp.expand(eta+u*v/eta-u-v-(eta-u)*(eta-v)/eta) == 0
phi = (-(1-eta)*T**2+(1-2*eta*ss)*T-2*ss) / (
    eta*((1-eta)*T+2*eta*ss))
ratio = T*(T+(1-W)/eta)/(W-eta*T)
assert sp.factor(ratio.subs(W,T**2/(T-2*ss))-phi) == 0
quadratic = (1-eta)*T**2-(1-2*eta*ss-bound*eta*(1-eta))*T+2*ss*(1+bound*eta**2)
assert sp.factor((bound-phi)*eta*((1-eta)*T+2*eta*ss)-quadratic) == 0
disc = sp.discriminant(quadratic,T)
assert disc.subs({ss:sigma,eta:sp.Rational(5,12),bound:sp.Rational(2,3)}) == -sp.Rational(3266423,248629824) < 0
assert disc.subs({ss:sigma,eta:sp.Rational(2,5),bound:sp.Rational(7,11)}) == -sp.Rational(1044639,403005625) < 0
assert sigma*sp.Rational(896,625)-sp.Rational(7,36)*sp.Rational(29,36) == sp.Rational(27853,59130000) > 0
assert sp.Rational(12,73)-sp.Rational(4,25) == sp.Rational(8,1825) > 0
assert 1-3*sp.Rational(7,36) == sp.Rational(5,12)
assert 1-3*sp.Rational(1,5) == sp.Rational(2,5)
print("PASS: cross-triangle capacities and complete CD/FH opposite-sector exclusion")

# Section 5: both radial signs of the mixed pair.
hbd, hcd = det(H,B,D), det(H,C,D)
quad_hbcd = det(H,B,C)+det(H,C,D)
assert sp.expand(hbd+hcd-quad_hbcd-(h*(1-c)+b*d)) == 0
AA, BB, VV, vv = sp.symbols("AA BB VV vv")
Fcentral = AA*BB*(vv-ss)-ss*vv*(AA+BB)-VV*vv**2
assert sp.factor(sp.discriminant(Fcentral,vv)-((AA*BB-ss*(AA+BB))**2-4*VV*ss*AA*BB)) == 0
rootpoly = (AA*BB-ss*(AA+BB))**2-4*ss*(AA+3*ss)*AA*BB
polyA = sp.Poly(rootpoly.subs({BB:1-sigma,ss:sigma}),AA)
assert polyA.LC() == sp.Rational(1169,5329) > 0
assert rootpoly.subs({AA:1,BB:1-sigma,ss:sigma}) == -sp.Rational(1471599,28398241) < 0
TT = h*(1-b)+b*d
Gbound = TT*(1-2*ss/(d*(c-b)))+ss*h/d
assert sp.factor(sp.diff(Gbound,b) - ((d-h)*(1-2*ss/(d*(c-b)))-2*ss*TT/(d*(c-b)**2))) == 0
assert sp.factor(sp.diff(Gbound,c)-2*ss*TT/(d*(c-b)**2)) == 0
Fheight = sp.Rational(7,8)*h+d/8-ss*h/d-2*ss/7
assert sp.factor(Gbound.subs({b:sp.Rational(1,8),c:1})-Fheight) == 0
assert sp.factor(sp.diff(Fheight,d)-(sp.Rational(1,8)+ss*h/d**2)) == 0
assert sp.factor(Fheight.subs(d,h)-(h-9*ss/7)) == 0
assert sp.Rational(373,50)*sigma-(1-16*sigma/7) == sp.Rational(869,12775) > 0
Dh = (1-ss-3*ss*h)/(1-3*ss)
assert sp.factor(sp.diff(Fheight.subs(d,Dh),h)-(
    sp.Rational(7,8)-ss/Dh-3*ss/(1-3*ss)*(sp.Rational(1,8)+ss*h/Dh**2))) == 0
d0 = Dh.subs({ss:sigma,h:1})
assert d0 == sp.Rational(41,49)
derlo = sp.Rational(7,8)-sigma/d0-3*sigma/(1-3*sigma)*(sp.Rational(1,8)+sigma/d0**2)
assert derlo == sp.Rational(29157287,48103496) > 0
endF = Fheight.subs({ss:sigma,h:1,d:d0})
assert endF == sp.Rational(119864,146657)
assert sp.Rational(373,50)*sigma-endF == sp.Rational(828,3666425) > 0
print("PASS: both mixed-pair radial cases when the lower point lies in HBC")
