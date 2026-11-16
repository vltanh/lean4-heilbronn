#!/usr/bin/env python3
"""Exact, fixed certificates for the last seven-boundary side quadrilateral."""
import sympy as S

R = S.Rational
s = R(7, 64)
f, w, x, y, b, c, g, k, h, e, d, M, T, delta = S.symbols(
    "f w x y b c g k h e d M T delta"
)


def bernstein2(poly, first, second, n, m):
    p = S.Poly(S.expand(poly), first, second)
    assert p.degree(first) <= n and p.degree(second) <= m
    return [
        S.factor(sum(
            coefficient * S.binomial(i, a) / S.binomial(n, a)
            * S.binomial(j, z) / S.binomial(m, z)
            for (a, z), coefficient in p.terms() if a <= i and z <= j
        ))
        for i in range(n + 1) for j in range(m + 1)
    ]


def bernstein1(poly, variable, low, high, degree):
    t = S.Dummy("t")
    p = S.Poly(S.expand(poly.subs(variable, low + (high - low) * t)), t)
    assert p.degree() <= degree
    return [S.factor(sum(
        p.nth(j) * S.binomial(i, j) / S.binomial(degree, j)
        for j in range(i + 1)
    )) for i in range(degree + 1)]


# Weighted top-area cancellation and the bottom-contact certificate.
HFX = T * (1-h) + f * delta
EFX = T * (1-e) - (1-f) * delta
assert S.expand((1-f)*HFX + f*EFX - T*(1-(1-f)*h-f*e)) == 0
assert (b*b/(b-s)).subs(b, R(3,20)) == R(36,65)
assert (s*b/(b-s)).subs(b, R(3,20)) == R(21,52)
assert R(21,52)-R(1,40) > R(3,8)
assert R(64,9)-R(200,9) < 0
phi = (1-f)/b + f/w + 1/(1-w-b) + 1/(1-w-f)
assert S.factor(S.diff(phi,b) - (1/(1-w-b)**2-(1-f)/b**2)) == 0
P = S.expand((R(20,3)*(1-f)-R(64,7))*w*(R(17,20)-w)*(1-f-w)
             +f*(R(17,20)-w)*(1-f-w)+w*(1-f-w)+w*(R(17,20)-w))
assert S.factor(P-(phi.subs(b,R(3,20))-R(64,7))
                *w*(R(17,20)-w)*(1-f-w)) == 0
printed = (-2800*f*f*w*w+2800*f*f*w-357*f*f-2800*f*w**3
           +4560*f*w*w-2693*f*w+357*f-1040*w**3+1084*w*w-107*w)
assert S.expand(420*P-printed) == 0
cube = S.expand(P.subs({f:R(1,8)+R(3,8)*x,w:R(7,64)+R(25,64)*y}))
bounds = {(0,0):R(719723,47185920),(0,1):R(30369499,587202560),
          (1,0):R(3304757,132120576),(1,1):R(486691,8388608)}
for (i,j), lower in bounds.items():
    coeffs = bernstein2(cube.subs({x:(x+i)/2,y:(y+j)/2}),x,y,2,3)
    assert len(coeffs) == 12 and min(coeffs) == lower > 0
print("PASS: weighted anchor budget and all 48 positive bottom-contact coefficients")

# Exterior-point height: both branches after the c minimization.
beta = R(3,20)
gm = (1+beta)/2
assert 1/gm+1/(gm*(gm-beta))+4/(1-beta)-R(64,7) == R(3816,2737)
height = 1/g+1/(g*(g-beta))+1/(g-beta)+1/(1-g)-R(64,7)
N = 1280*g**3-1612*g*g+332*g+119
assert S.factor(height*140*g*(g-beta)*(1-g)-N) == 0
t = S.symbols("t")
assert S.expand(N.subs(g,t+R(23,32))
                -(1280*t**3+1148*t*t-R(3,2)*t+R(35,256))) == 0
assert 1280*(-R(23,160))+1148 == 964
assert R(3,2)**2-4*964*R(35,256) == -R(8399,16)
assert S.diff((g-f)*(1-h)+f*(1-k),f) == h-k
assert S.diff((g-f)*(1-e)-(1-f)*(1-k),f) == e-k
print("PASS: exterior point above H, both height branches, and monotone f replacement")

# The endpoint area formula and its symmetric inward form.
u,v,V,z = S.symbols("u v V z")
Q = (1-c)*(k-d)+(1-g)*e
eta = 1-s/M-s/b
de = (s-T*eta)/b
ep = 1-s/T-(1-b)*de/T
qend = S.factor(Q.subs({c:b+M,g:b+T,k:1-de,d:s/M,e:ep}))
Cu = s-s/u+2*u+u*(1-u)/s
sym = Cu-(u/s-1)*(v+w)-s*(1-u)*(1/v+1/w+u/(v*w))
assert S.factor(qend.subs({b:s/u,M:s/v,T:s/w})-sym) == 0
assert S.factor(sym-(Cu-(u/s-1)*(v+w)-s*(1-u)*(v+w+u)/(v*w))) == 0
U = S.symbols("U")
qzero = (1-b-M)*(1-s/M)+(1-b-T)*(1-s/T)
assert S.factor(qzero.subs(b,s/U).subs(U,1-s/M-s/T)
                -((1-s/U)*(1+U)-(M+T)+2*s).subs(U,1-s/M-s/T)) == 0
print("PASS: both endpoint area eliminations and symmetric two-variable upper bound")

# Cubic in z; the final fixed 18-coefficient sign certificate.
q = R(21,40)
rr = S.expand((u*((q-Cu)*V*V+(u/s-1)*V**3+4*s*(1-u)*(V+u)))
              .subs(V,1-u+z))
C0 = (1-u)*(320*u**3-133*u*u-82*u+35)/320
C1 = (u-1)*(10240*u**3-9120*u*u+1939*u-245)/1120
C2 = -(40960*u**3-43200*u*u+5789*u-245)/2240
C3 = u*(64*u-7)/7
assert S.expand(rr-(C0+C1*z+C2*z*z+C3*z**3)) == 0
base = 320*u**3-133*u*u-82*u+35
assert S.expand(base.subs(u,t+R(1,2))-(320*t**3+347*t*t+25*t+R(3,4))) == 0
assert 347-320*R(9,32) == 257
assert 25**2-4*257*R(3,4) == -146
D = S.factor(C1*C1-4*C0*C2)
printedD = u*(u-1)*(655360*u**6-2396160*u**5+2778528*u**4
                    -1205910*u**3+123249*u*u+28126*u-3430)/7840
assert S.factor(D-printedD) == 0
co1 = bernstein1(C1,u,R(7,32),R(13,20),4)
co2 = bernstein1(C2,u,R(7,32),R(35,48),3)
cod = bernstein1(D,u,R(13,20),R(35,48),8)
assert len(co1)+len(co2)+len(cod) == 18
assert min(co1) == R(2569,320000) > 0
assert min(co2) == R(2821,10240) > 0
assert max(cod) == -R(582865829,6400000000) < 0
assert q == R(24,5)*s and R(7,5)**2 < 2
print("PASS: all 18 final coefficients, positive quadratic bounds, and strict 21/40 area bound")
