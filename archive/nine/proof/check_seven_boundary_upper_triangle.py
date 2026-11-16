"""Exact diagnostics for the full seven-boundary HEF exclusion."""
from math import comb
import sympy as sp

q = sp.Rational
s = q(7, 64)
a, h, b, c, d, e, f, x, y = sp.symbols("a h b c d e f x y", real=True)
M, w, r, U, z = sp.symbols("M w r U z", real=True)
A, H, B, C, D, E, F, Y = [
    sp.Matrix(p) for p in ((0, a), (0, h), (b, 0), (c, 0),
                          (1, d), (1, e), (f, 1), (x, y))
]


def det(P, Q, R):
    return sp.det(sp.Matrix.hstack(Q-P, R-P))


def eq(lhs, rhs=0):
    assert sp.cancel(sp.expand(lhs-rhs)) == 0


def bernstein(poly, variable, lo, hi):
    xx = sp.symbols("bernstein_x")
    power = sp.Poly(sp.expand(poly.subs(variable, lo+(hi-lo)*xx)), xx)
    degree = power.degree()
    return [sum(power.nth(j)*sp.Rational(comb(i, j), comb(degree, j))
                for j in range(i+1)) for i in range(degree+1)]


tau = 1-(1-f)*h-f*e
L = h-a
R = e-d
vb = (1-b)*h+b*e
vc = (1-c)*h+c*e
abf = b*(1-a)+a*f
hdf = 1-(1-f)*h-f*d
deft = (1-f)*R
cdf = 1-c+d*(c-f)

# The two outer sectors, including their threshold-generalized root step.
eq(det(H, E, F), tau)
eq(det(H, D, F), hdf)
eq(det(D, E, F), deft)
eq(deft*det(H, E, Y)+(R+tau)*det(E, F, Y)
   +tau*det(F, D, Y), tau*deft)
eq(hdf, tau+f*R)
sector_poly = -f*(1-f)*r*r+((1-f)*U+s*(3*f-2))*r-2*s*U
eq(sector_poly, (U-f*r)*(1-f)*r-s*(r+2*(U-f*r)+(1-f)*r))
root_poly = x*x-2*s*(f+2)*x+s*s*(3*f-2)**2
eq(sp.discriminant(sector_poly, r), root_poly.subs(x, (1-f)*U))
eq(root_poly.subs(x, 3*s*(1-f)), s*s*(1-24*f*(1-f)))
assert 1-3*s < q(7, 8)
assert q(1, 8)*(1-q(1, 8)) == s
assert 1-24*s < 0
assert 6-q(12, 5)**2 > 0
assert s*q(49, 5) == q(343, 320) > 1
assert q(1, 2)-q(7, 10)**2 > 0
assert 1-s*q(17, 10)**2 == q(4377, 6400) < q(91, 128)
assert q(13, 2)*s == q(91, 128)
assert 3-q(12, 7)**2 > 0
assert s*(16+8*q(12, 7))/5 == q(13, 20)
assert q(2, 3)-q(4, 5)**2 > 0
assert 1-s*q(9, 5)**2 == q(1033, 1600) < q(13, 20)
assert 1-s-q(2, 7) == q(271, 448)
assert q(35, 4) > q(448, 271)**2
upper_u = 1-s/(1-s-b)-s*(1-f)/b
eq(sp.diff(upper_u, b), s*((1-f)/b**2-1/(1-s-b)**2))
Efun = 1+s-s/f-s/(1-s-f)
eq(upper_u.subs(b, f), Efun)
eq(sp.diff(Efun, f), s/f**2-s/(1-s-f)**2)
assert q(4, 7) < 1-s
Jfun = (1-f)*Efun+s*(3*f-2)
eq(Jfun.subs(f, q(1, 7)), -q(391, 150080))
assert 1-s-q(1, 7) > q(1, 2)
assert -2+q(6, 7)*45*s+3*s > 0
nf = (26525696*f**6-86881792*f**5+108928140*f**4
      -65584656*f**3+19766916*f**2-2911104*f+159201)
eq(Jfun**2-8*s*f*(1-f)*Efun, nf/(4096*f**2*(64*f-57)**2))
nf_coeff = [-7146392385, -14707888445, -15954597053,
            -15909143025, -16899649597, -19682284345,
            -24165919665]
assert bernstein(nf, f, q(1, 7), q(2, 7)) == [q(n, 1764735) for n in nf_coeff]
assert all(n < 0 for n in nf_coeff)
print("PASS: complete HEF-DEF sector, arbitrary projection f, and reflected AHF sector")

# The uniform top-area bound and the ABF sector.
assert q(1089, 1792)-q(3, 5) == q(69, 8960) > 0
assert 6*s > q(3, 5)
assert -16+q(16, 3)+4 < 0
eq(det(A, B, F), abf)
eq(abf*det(H, E, Y)+(tau+L)*det(B, F, Y)
   +(tau+vb)*det(F, A, Y), tau*abf)
eq(L+vb, (1-b)*a+(2-b)*L+b*e)
low_gap = 1/(1-b)+2/b-1
eq(low_gap.subs(b, q(1, 2)), 5)
assert q(1, 5)-s*(q(13, 10)+5*s) == -q(41, 20480)
print("PASS: top area below 2/5 and complete HEF-ABF sector")

# The middle fan sector, in both height orders.
eq((c-b)*det(H, E, Y)+(tau+vb)*det(C, F, Y)
   +(tau+vc)*det(F, B, Y), tau*(c-b))
Pexpr = tau*(c-b-2*s)-s*(c-b+vb+vc)
eq(sp.diff(Pexpr, h), -(1-f)*(c-b-2*s)-s*(2-b-c))
eq(sp.diff(Pexpr, e), -f*(c-b-2*s)-s*(b+c))
Pmin = sp.factor(Pexpr.subs({h:s/M+s/b, e:s/M+s/w, c:b+M}))
Phalf = sp.factor(Pmin.subs(f, q(1, 2)).subs(M, 1-b-w))
Mq = 1-b-w
const = (Mq-2*s)*(1-s/Mq)-s*(Mq+2*s/Mq-4*s)
eq(Phalf, const-s*(b+w)*(Mq/2+s*(b+w))/(b*w))
bound_half = (M-2*s)*(1-s/M)-s*(M+2*s/M-4*s)-4*s*(M/2+s*(1-M))/(1-M)
eq(bound_half, (57*M*M-64*M+21)/(64*(M-1)))
assert sp.discriminant(57*M*M-64*M+21, M) == -692
Qbw = ((4096*b-399)*w*w+(3648*b*b-3200*b+399)*w
       -448*b**3+399*b*b+49*b)
eq(Pmin.subs({f:b, M:1-b-w}), -Qbw/(4096*b*w))
disc_b = (20647936*b**4-30599424*b**3+12985092*b*b
          -2475396*b+159201)
eq(sp.discriminant(Qbw, w), disc_b)
assert 4096*q(1, 8)-399 > 0
disc_b_coeff = [-q(32879, 16), -q(1572235, 32), -q(494173, 32),
                -168290, -366656]
assert bernstein(disc_b, b, q(1, 8), q(1, 2)) == disc_b_coeff
print("PASS: complete HEF-BCF sector and both exact scalar signs")

# The CDF height identity and the order e >= h.
eq((1-d)*(-det(C, F, Y))+det(D, F, Y), cdf*(1-y))
eq(sp.diff((2-d)/(w+d*M), d), -(w+2*M)/(w+d*M)**2)
qq = sp.symbols("qq", positive=True)
gap_den = qq*qq-(qq+s)*M
aux = qq*qq/(qq+s)-M
eq(1/M+(qq+s-M)/gap_den,
   1/M+1/(qq+s)+s*(2*qq+s)/((qq+s)**2*aux))
eq(M+aux, qq*qq/(qq+s))
eq(1/(qq+s)+(1+sp.sqrt(s*(2*qq+s))/(qq+s))**2/(qq*qq/(qq+s)),
   2*(qq+s+sp.sqrt(s*(2*qq+s)))/(qq*qq))
root_gap = s*(2*qq+s)-(qq/4+q(7, 32))**2
assert sp.diff(root_gap, qq, 2) < 0
assert root_gap.subs(qq, q(1, 2)) == q(13, 4096)
assert root_gap.subs(qq, q(7, 8)) == q(49, 4096)
budget = s/b+s+q(5, 2)*s/(1-b)+6*s*s/(1-b)**2
numerator = sp.cancel((budget-1)*b*(1-b)**2)
expansion = -q(57, 64)*z**3+q(93, 128)*z*z+q(35, 2048)*z+q(25, 18432)
eq(numerator.subs(b, q(1, 3)+z), expansion)
quad = q(37, 64)*z*z+q(35, 2048)*z+q(25, 18432)
eq(expansion-quad, q(57, 64)*z*z*(q(1, 6)-z))
assert sp.discriminant(quad, z) == -q(107375, 37748736)
print("PASS: complete HEF-CDF exclusion for e >= h")

# The remaining order e < h.
assert (2-6*s)/s == q(86, 7)
assert 2-q(24, 17)**2 > 0
gfun = 1/z+q(99, 17)/(1-z)
assert gfun.subs(z, q(19, 100))-q(86, 7) == q(3398, 20349)
assert gfun.subs(z, q(41, 100))-q(86, 7) == q(6822, 287861)
assert sp.diff(gfun, z).subs(z, q(19, 100)) < 0
assert sp.diff(gfun, z).subs(z, q(41, 100)) > 0
assert s/q(5, 18) == q(63, 160)
assert s*(1+q(63, 160))-q(39, 100)**2 == q(437, 1280000) > 0
assert q(63, 160)+s+q(39, 50)-q(5, 18) == 1+q(77, 14400)
Jheight = d+s/w+s+s*(2-d)/(w+d*M)
eq(sp.diff(Jheight, d), 1-s*(w+2*M)/(w+d*M)**2)
monotone_gap = w*w+3*s*w+s*s-q(81, 50)*s
assert monotone_gap.subs(w, q(5, 18)) == q(25561, 8294400)
eq(Jheight.subs(d, s/M), s*w/(M*(w+s))+s/w+s+2*s/(w+s))
JupperM = s*w/((q(81, 100)-w)*(w+s))+s/w+s+2*s/(w+s)
pcubic = 364800*w**3-345188*w*w+71645*w+3969
eq(JupperM-1, pcubic/(64*w*(64*w+7)*(81-100*w)))
cubic_coeff = [q(2456459, 486), q(16921577, 4860),
               q(37555729, 22500), q(57466, 125)]
assert bernstein(pcubic, w, q(5, 18), q(41, 100)) == cubic_coeff
assert all(coefficient > 0 for coefficient in cubic_coeff)
print("PASS: complete HEF-CDF exclusion for e < h")
print("PASS: all five fan sectors excluded; the entire actual upper triangle HEF is empty")

