#!/usr/bin/env python3
"""Exact transcription checks for the new n=10 hand geometry.

This script checks polynomial identities and rational comparisons printed in
TRIANGLE_OCCUPANCY.md, THREE_CORNERS.md, CLUSTERED_TRIANGLE.md and
SYMMETRIC_CHAMBER.md, plus the two opposite-corner notes.
It does not enumerate configurations
or prove geometric coverage. The written arguments supply those deductions.
Run locally with: python3 n10/hand/check_global_geometry.py
"""

from fractions import Fraction as Q

import sympy as sp


def zero(expression):
    assert sp.cancel(expression) == 0, expression


def area(u, v, w):
    return sp.det(sp.Matrix.hstack(v-u, w-u))/2


def triangle_occupancy():
    A, B, C = (sp.Matrix(p) for p in [(0, 0), (1, 0), (0, 1)])
    Z, X, Y = (sp.Matrix(sp.symbols(name)) for name in
               ["zx zy", "xx xy", "yx yy"])
    x, y, z = area(A, B, Z), area(B, C, X), area(C, A, Y)
    a, b, c, k = area(A, Z, Y), area(B, X, Z), area(C, Y, X), area(Z, X, Y)
    uA, uB, uC = area(A, Z, X), area(B, X, Y), area(C, Y, Z)
    vA, vB, vC = area(A, X, Y), area(B, Y, Z), area(C, Z, X)
    for expression in [
        x+y+z+a+b+c+k-area(A, B, C),
        a-uA-vA+k, b-uB-vB+k, c-uC-vC+k,
        x*k-a*b+uA*vB, y*k-b*c+uB*vC, z*k-c*a+uC*vA,
    ]:
        zero(expression)

    ta, tb, tc, K, ua, ub, uc = sp.symbols("ta tb tc K ua ub uc")
    va, vb, vc = ta+K-ua, tb+K-ub, tc+K-uc
    raw = ((1+ta)*(1+tb)+(1+tb)*(1+tc)+(1+tc)*(1+ta)
           -(1+ua)*(1+vb)-(1+ub)*(1+vc)-(1+uc)*(1+va))
    zero(raw-(ta*tb+tb*tc+tc*ta+ta+tb+tc-3*K-(ua*vb+ub*vc+uc*va)))

    r = Q(63, 200)
    assert r*r*(Q(5, 4)-r)/2 == Q(742203, 16000000)
    assert Q(742203, 16000000)-Q(5, 108) == Q(39481, 432000000) > 0
    assert Q(11, 5)**2 < 5
    print("PASS: seven face identities, scalar expansion, occupancy threshold")


def endpoint_cells():
    h, f, x, w, r, H, R = sp.symbols("h f x w r H R")
    alpha, beta = 1-h, 1-f
    L, K, N = f*w-beta*x, h*(1-x)-w, f*w+(h-beta)*x-f*h
    zero(N-(-f*K-alpha*beta*x))
    zero(N-(alpha*L-h*f*(1-x-w)))
    zero(N-(alpha*f-alpha*x-f*(1-x-w)))
    zero(1+alpha/h+f/beta-(h+beta-h*beta)/(h*beta))
    cap = R*(1-H+R)/(H-R)
    zero(sp.diff(cap, H)+R/(H-R)**2)
    phi = r*(1-r)**2/(2-r)
    zero(sp.diff(phi, r)-2*(1-r)*(r*r-3*r+1)/(2-r)**2)
    zero(phi.subs(r, (3-sp.sqrt(5))/2)-(5*sp.sqrt(5)-11)/2)
    assert 5*55**2 < 123**2
    assert Q(123, 55)*5/2-Q(11, 2) == Q(1, 11)
    print("PASS: endpoint-cell identities, cap maximum, exact comparison")


def seven_point_endpoint():
    h, beta, sigma, x, w = sp.symbols("h beta sigma x w")
    N = (1-beta)*w+(h-beta)*x-(1-beta)*h
    lower = beta*(1-h)*w/h-beta*(1-h)-sigma+beta*sigma/h
    zero(N.subs(x, 1-(sigma+w)/h)-lower)
    q = sp.Rational
    threshold, u, k0, k1 = q(93, 1000), q(9, 10), q(16461, 20000), q(4371, 5000)
    F = lambda z: z-threshold/(1-z)
    M, M1 = F(k0), F(k1)
    assert M == q(21055479, 70780000)
    assert M1 == q(424359, 3145000)
    assert threshold-(M1-threshold) == q(160611, 3145000) > 0
    assert (1-k0)**2 < threshold
    assert 3*threshold < M < 4*threshold
    B = lambda z: 1-2*threshold/u-(2/u-1)*z
    assert B(M) > 0
    assert B(3*threshold) == q(1357, 3000)
    bound = (M-threshold)*B(3*threshold)
    assert bound == q(6546592741, 70780000000)
    assert threshold-bound == q(35947259, 70780000000) > 0
    assert q(1, 11)-q(55, 608) == q(3, 6688) > 0
    # Regression check of the four explicitly proved vertex-pair rows.
    lo = [(0, threshold), (B(threshold), threshold), (0, M), (B(M), M)]
    hi = [(0, 3*threshold), (B(3*threshold), 3*threshold), (0, M), (B(M), M)]
    determinant = lambda p, q, r: ((q[0]-p[0])*(r[1]-p[1])
                                   -(q[1]-p[1])*(r[0]-p[0]))
    assert max(abs(determinant(p, q, r)) for p in hi for q in hi for r in lo) == bound
    print("PASS: seven-point strip identity, both exact gaps, trapezoid table")


def symmetric_opposite_orientation():
    a, b, t = sp.symbols("a b t")
    c = 1-a-b
    A, B, D, G, H, O = (sp.Matrix(p) for p in
                         [(0, a), (a, 0), (1, b), (b, 1), (0, 1-b), (t, t)])
    zero(-2*area(A, D, O)-(a*(1-2*t)-c*t))
    zero(-2*area(A, H, O)-c*t)
    zero(2*area(A, G, H)-b*c)
    zero(2*area(A, B, O)-a*(2*t-a))
    zero(a*(2*t-a)+a*(1-2*t)-c*t-(a*(1-a)-c*t))
    print("PASS: opposite symmetric orientation area formulas")


def clustered_triangle():
    u, h, x, z, sigma = sp.symbols("u h x z sigma")
    q, w = u+h, 1-u-h
    b, c = (1-h)*x+u*z, -h*x+u*z
    zero(u*(x+z)-(q*b+w*c))
    T = u*(w-sigma)-sigma
    x1, x2 = sigma*(1+u)/w, (u*(1-sigma)-sigma)/q
    zero(u-x1-T/w)
    zero(x2-u-T/q)
    A = sp.Matrix([0, 1])
    V1 = sp.Matrix([x1, 1-sigma-x1])
    V2 = sp.Matrix([x2, 1-sigma-x2])
    V3 = sp.Matrix([u, h+sigma/u])
    zero(2*area(A, V1, V2)-sigma*T/(q*w))
    zero(-2*area(A, V1, V3)-sigma*T/(u*w))
    zero(-2*area(A, V2, V3)-(u-sigma)*T/(u*q))
    numerator = ((u-sigma)*(u*(1-u-2*sigma)-sigma)
                 -sigma*u*(u+sigma))
    N = -u**3+(1-2*sigma)*u**2+(sigma**2-2*sigma)*u+sigma**2
    zero(numerator-N)
    zero(N.subs(u, sigma)+2*sigma**3)
    threshold, G = Q(93, 1000), Q(149, 20)
    q0 = 1-G*threshold
    assert q0 == Q(6143, 20000)
    assert 1-threshold-2*q0 == Q(2927, 10000) > 0
    assert 2-q0*(G-1) == Q(7553, 400000) > 0
    assert 2*(1-2*threshold-3*Q(1, 4)) == Q(16, 125) > 0
    assert N.subs({u: sp.Rational(1, 4), sigma: sp.Rational(93, 1000)}) == -sp.Rational(351, 800000)
    print("PASS: clustered-triangle identity, three vertex areas, exact cubic bounds")


def opposite_corners():
    q = sp.Rational
    sigma, cap, offset = q(93, 1000), q(89, 100), q(11, 100)
    h, beta, w, p, v, r = sp.symbols("h beta w p v r")
    F = lambda t: t-sigma/(1-t)
    R = ((1-beta)*(h-w)-sigma)/(h-beta)
    zero(sp.diff(R, h)-(1-beta)*(w-F(beta))/(h-beta)**2)
    zero(sp.diff(R, beta)-((1-h)*(h-w)-sigma)/(h-beta)**2)
    zero(R.subs({h: cap, beta: q(93, 110)})-(1-q(170, 49)*w))
    a, c = q(31, 300), q(1579, 441)
    assert 3*sigma-(1-a)/c == q(45111, 1579000) > 0
    assert sigma-(1-a)**2/(4*c) == q(2328191, 63160000) > 0
    assert 4*sigma*(1-offset**2)-((1-offset)*cap-2*sigma)**2 == q(14159, 100000000) > 0

    # The weighted determinant identity and the necessary product bound.
    x = sp.symbols("x")
    A, E, H = (sp.Matrix(t) for t in [(0, 0), (1, 1), (0, h)])
    P, Qp = sp.Matrix([p, p+w]), sp.Matrix([x, x+v])
    dH, dE = 2*area(P, Qp, H), 2*area(P, Qp, E)
    zero(w*dH+(h-w)*dE-(h*(1-p)-w)*(w-v))
    poly = (1+4*sigma)*r*r-12*sigma*r+4*sigma*sigma
    zero(poly.subs(r, 2*sigma)-16*sigma*sigma*(sigma-1))
    assert poly.subs(r, q(39, 50)) == -q(1449, 1250000)
    assert 8*sigma-q(1837, 2500) == q(23, 2500) > 0

    # Both same-half corner orientations and their convex quadratic.
    Lc = cap-sigma-sigma/cap
    D, Q0 = 2*sigma/cap, Lc/2
    assert sigma-Lc**2/8 == q(2094597311, 63368000000) > 0
    corner_pair = lambda z: z*(z-D)*(1/offset-1)-sigma*z/offset-sigma*(z-D)
    assert corner_pair(D) == -q(8649, 48950)
    assert sigma-corner_pair(Q0) == q(4970239, 356000000) > 0

    # The two cross-half corner bounds, including the small strict margins.
    f, d = sp.symbols("f d")
    L = cap-sigma/cap
    pair_bound = (L*(1-f*d)-sigma*(1+f))**2/(4*(1+d)*(1+f)*(1-f*d))
    assert sigma-pair_bound.subs({f: offset, d: offset}) == q(14159, 395160000) > 0
    U = (cap*h-(cap+3)*sigma)/(h+cap*offset)
    T = f*(h-sigma)+(1-h-f*offset)*U
    F0, k = q(307, 1000), q(1521, 2500)
    h0 = k/(1-F0)
    assert h0 == q(338, 385)
    rising_derivative = (275000000000*h**4+53845000000*h**3
                         +820950057500*h**2+93358980000*h+4569922071)
    rising_derivative /= 25000*h*h*(10000*h+979)**2
    falling_numerator = 5830000000*h*h+1141514000*h-4721013101
    zero(sp.diff(T.subs(f, 1-k/h), h)-rising_derivative)
    zero(sp.diff(T.subs(f, F0), h)+falling_numerator/(100*(10000*h+979)**2))
    assert falling_numerator.subs(h, q(7, 8)) == 741405399 > 0
    assert 3*sigma-T.subs({h: h0, f: F0}) == q(1027091, 17532270000) > 0
    print("PASS: opposite-corner identities, contact/product bounds, both corner exclusions")


if __name__ == "__main__":
    triangle_occupancy()
    endpoint_cells()
    seven_point_endpoint()
    clustered_triangle()
    opposite_corners()
    symmetric_opposite_orientation()
