#!/usr/bin/env python3
"""Exact transcription checks for the new n=10 hand geometry.

This script checks polynomial identities and rational comparisons printed in
TRIANGLE_OCCUPANCY.md, THREE_CORNERS.md and SYMMETRIC_CHAMBER.md.
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


if __name__ == "__main__":
    triangle_occupancy()
    endpoint_cells()
    seven_point_endpoint()
    symmetric_opposite_orientation()
