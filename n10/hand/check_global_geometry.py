#!/usr/bin/env python3
"""Exact transcription checks for the new n=10 hand geometry.

This script checks polynomial identities and rational comparisons printed in
TRIANGLE_OCCUPANCY.md, THREE_CORNERS.md, CLUSTERED_TRIANGLE.md,
SIX_POINT_ENDPOINT.md, TYPE_II.md, SYMMETRIC_CHAMBER.md,
ASYMMETRIC_SIGN_CHAMBER.md, plus the opposite-corner notes.
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


def noncentral_corners():
    q = sp.Rational
    sigma, cap = q(93, 1000), q(89, 100)
    J, z, b = sp.symbols("J z b")
    x0 = sigma/J
    y0 = sigma*(1-J*J)/(J*(1-J-sigma))
    N = (-J**5+3*J**4+(4*sigma-3)*J**3
         +(2*sigma*sigma-6*sigma+1)*J*J
         +(2*sigma-2*sigma*sigma)*J+2*sigma*sigma-sigma**3)
    zero(sigma-(y0-x0)*(J-x0-y0)-sigma*N/(J*J*(1-J-sigma)**2))
    expansion = (q(300087, 5000000000)+q(5793, 12500000)*z
                 +z*z*(q(305249, 500000)+q(99, 250)*z-q(6, 5)*z*z-z**3))
    zero(N.subs(J, q(21, 25)+z)-expansion)
    assert q(149, 20)*sigma-q(83, 100)**2 == q(79, 20000) > 0
    W = J**3-(1+sigma)*J*J+2*sigma
    assert W.subs(J, q(83, 100)) == q(48193, 10000000) > 0
    assert q(300087, 5000000000)-q(5793, 12500000)/100 == q(55383, 1000000000) > 0
    assert q(305249, 500000)-q(99, 250)/100-q(6, 5)/400-q(1, 8000) == q(603413, 1000000) > 0

    fan_bound = (1-sigma/(1-b))*(b-4*sigma/cap)-sigma*(1+1/b)
    Nb = -(445000*b**3-631000*b*b+168702*b+41385)/445000
    zero(b*(1-b)*fan_bound-Nb)
    expansion = -z**3-q(4103, 4450)*z*z+q(861, 111250)*z-q(1239, 2225000)
    zero(Nb.subs(b, q(39, 50)+z)-expansion)
    assert q(4103, 4450)-q(39, 50) == q(316, 2225)
    assert q(1239, 2225000)-q(861, 111250)**2/(4*q(316, 2225)) == q(3173919, 7031000000) > 0
    print("PASS: noncentral corner cut polynomial and empty-fan inequality")


def mixed_corners():
    q = sp.Rational
    sigma, a, c = q(93, 1000), q(69, 100), q(89, 100)
    beta, h, b, z = sp.symbols("beta h b z")
    F = beta**3-beta**2+(3*sigma+sigma*sigma)*beta-2*sigma*sigma
    expansion = z**3+q(7, 20)*z*z-q(4851, 1000000)*z+q(15381, 20000000)
    zero(F.subs(beta, q(9, 20)+z)-expansion)
    assert q(4851, 1000000)**2-4*q(1, 5)*q(15381, 20000000) == -q(591707799, 1000000000000)
    G = h*b+h*sigma-(h*(1-beta)+b)*(1-3*sigma/beta)
    zero(G.subs({h:a,b:a})-(a*a-2*a-2*a*sigma+a*beta+6*a*sigma/beta))
    assert G.subs({h:a,b:a,beta:a}) == q(93, 50000) > 0
    D0 = h+b-h*b
    zero((D0*(h+b)/h).subs(b,a)-((1-a)*h+a*(2-a)+a*a/h))
    assert a*a-(1-a)*c*c == q(230549, 1000000) > 0
    T = (2-c)*(c-sigma)
    M = (c+a-c*a)*(c+a)/c
    assert T == q(88467, 100000)
    assert M == q(763061, 445000)
    assert 4*sigma*M-(T-sigma)**2 == q(9917547879, 890000000000) > 0
    print("PASS: mixed-half cubic, both containment bounds, same-corner constants")


def mixed_cross_corners():
    q = sp.Rational
    sigma, a, c, r = q(93, 1000), q(69, 100), q(89, 100), q(11, 100)
    h, b, f, u, v, x, y, z = sp.symbols("h b f u v x y z")
    f0 = 1-sigma/(1-h)
    X = (f*h*b-f*sigma-b*sigma)/(b+f*h)
    X0 = X.subs({b:c,f:f0})
    zero((q(21, 100)-X0)*(c+f0*h)*(1-h)
         -(680000*h*h-979430*h+354021)/1000000)
    zero((q(7, 40)-X0)*(c+f0*h)*(1-h)
         -(715000*h*h-980025*h+322871)/1000000)
    assert q(979430, 1000000)**2-4*q(680000, 1000000)*q(354021, 1000000) == -q(36539951, 10000000000)
    assert (715000*q(41, 50)**2-980025*q(41, 50)+322871)/1000000 == q(33, 2000000)
    for H, Z, lower, gap, derivative in [
        (q(41, 50), q(21, 100), a, q(117009, 89000000), q(27889, 111250)),
        (c, q(7, 40), q(41, 50), q(48367, 14240000), q(59013, 178000)),
    ]:
        L, K = H-sigma-sigma/c, lower/c+r
        assert sigma-Z*(L-K*Z) == gap > 0
        assert L-2*K*Z == derivative > 0
    D = y*u-x*v
    dH, dB = h*(u-x)-D, b*(y-v)-D
    zero((b-u)*(v-sp.Symbol("d")*u)+u*(b*sp.Symbol("d")-sp.Symbol("d")*u+(1-b)*v)-b*(1-u)*v)
    zero((b-u)*dH+u*dB-(u-x)*(h*(b-u)-b*v))
    V = h*(1-u/c)-sigma/(u-sigma/h)
    H0 = q(17, 20)
    poly = (q(85, 89)*z**3-q(141, 178)*z*z-q(1097, 178000)*z-q(165153, 151300000))
    zero(((V.subs(h,H0)-sigma/(1-u))*(u-sigma/H0)*(1-u)).subs(u,z+q(39, 100))-poly)
    assert q(165153, 151300000)-q(1097, 178000)**2/(4*q(373, 1780)) == q(472358599, 451479200000) > 0
    assert q(141, 178)-q(85, 89)*q(61, 100) == q(373, 1780)
    assert (V.subs({h:c,u:q(1,2)})-2*sigma) == -q(5481, 176000)
    assert (q(1,2)-sigma/c)**2-sigma == q(502387, 7921000) > 0
    L0 = h*h/sigma-(1+h)/f0-h/c
    zero((1+h)/f0-(h+1-sigma+sigma*(2-sigma)/(1-h-sigma)))
    zero((V-(2*h-u*(h*h/sigma-(1+h)/f0)))*(u-sigma/h)-u*(L0*(u-sigma/h)-h))
    assert 2*c/sigma-1-1/c-sigma*(2-sigma)/(1-H0-sigma)**2 == -q(112259480, 2987997)
    assert L0.subs(h,H0) == q(305930, 157263)
    assert sigma/c+H0/L0.subs(h,H0)-q(1,2) == q(22564199, 544555400) > 0
    print("PASS: mixed cross-pair signs, two rational tables, A-cut scalar contradiction")


def universal_mixed_corner():
    q = sp.Rational
    sigma = q(93, 1000)
    h, f, w, z = sp.symbols("h f w z")
    r = 1-w/h-sigma/(w-sigma)
    D = h+f-h*f
    T = D*(1-w/h)-(h+f)*sigma/(w-sigma)
    zero(sp.diff(T,f)-(r+w-h))
    zero(sp.diff(T,h)-(1-f+f*w/(h*h)-sigma/(w-sigma)))
    t = q(15717, 100000)
    assert 12*t-(1+2*t)**2 == q(396375911, 2500000000) > 0
    assert 4*q(31, 250)-(1-2*sigma-q(31, 250))**2 == q(199, 10000) > 0
    H, F = q(83, 100), q(17019, 41500)
    D1 = H+F-H*F
    U, V = D1*(1-sigma/H), sigma*D1*(H+F)/H
    assert U == q(2751827551, 3444500000)
    assert V == q(2233830552387, 17868343750000)
    assert 4*V-(U-sigma)**2 == q(20914942006991399, 11864580250000000000) > 0
    assert q(25947, 77000)**2-sigma*q(17,20)*q(1261,1000)/q(89,100) == q(204369639,131920250000) > 0
    f0, fmax = 2*sigma+2*sigma/h, 1-sigma/(1-h)
    w0 = sigma*(3/fmax-2)
    P = (250000000000*h**5-350223500000*h**4+104548000000*h**3
         -20978504853*h*h+25279678500*h+1430951103)
    zero(T.subs({f:f0,w:w0})-sigma-P/(69750000*h*h*(1000*h-907)))
    expansion = (250000000000*z**5+q(2074329500000,3)*z**4
                 +q(6059227000000,9)*z**3+q(6152926618969,27)*z*z
                 +q(19249553345,81)*z+q(4167656341,972))
    zero(P.subs(h,q(5,6)+z)-expansion)
    assert q(4167656341,972)-q(19249553345,81*300)-q(6059227000000,9*300**3)-q(250000000000,300**5) == q(1405598833,405) > 0
    print("PASS: universal mixed-corner envelope, both intervals, positive quintic")


def mixed_central_placement():
    q = sp.Rational
    sigma, c = q(93,1000), q(89,100)
    h, z = sp.symbols("h z")
    f0 = 1-sigma/(1-h)
    R = (h*c-(c+1)*sigma)/(h+c)
    W = R*(h-sigma*(h+1)/(h*f0)-sigma/c)-sigma*sigma/(h*c)
    N = 890000000*h**4-1251770000*h**3+270351000*h*h+141348747*h-8501967
    zero(sigma-W-N/(10000*h*(100*h+89)*(907-1000*h)))
    expansion = 890000000*z**4+1596230000*z**3+683703000*z*z-6768053*z+q(6197153,5)
    zero(N.subs(h,q(4,5)+z)-expansion)
    assert 683703000-1596230000*q(11,100) == 508117700
    assert 6768053**2-4*508117700*q(6197153,5) == -2473299961715671
    assert q(6197153,5)-q(6768053**2,4*508117700) == q(2473299961715671,2032470800) > 0
    R0 = c+sigma-c*sigma*(1+h)/(h*f0)
    g = 907*h*h-2000*h+907
    zero(sp.diff(R0,h)-8277*g/(100*h*h*(1000*h-907)**2))
    assert g.subs(h,q(69,100)) == -q(411773,10000)
    assert sp.diff(g,h).subs(h,c) < 0
    assert R0.subs(h,q(69,100)) == q(1116359,1610000)
    assert q(373,50)*sigma-R0.subs(h,q(69,100)) == q(1567,4025000) > 0
    print("PASS: mixed/central quartic, quadrilateral capacity, complete closure constants")


def opposite_mixed_complete():
    q = sp.Rational
    sigma, c = q(93,1000), q(89,100)
    h, b, d, f, p, t, u, v, x, y, r0, z = sp.symbols("h b d f p t u v x y r0 z")
    C, T = h*b-h*p-b*t, h*u+b*v-h*b
    dH = h*(u-p)+p*v-u*t
    zero((h+b)*dH-((h+u-v)*C+(h-t+p)*T))
    DA = x*v-u*y
    M, N = -DA-h*(u-x), DA+d*(u-x)-(v-y)
    K, L = h-y+(1-h)*x, v-d*u
    zero(M+N-((1-d)*x+h*(1-u)-K-L))
    zero(h*x+2*K+y-x-(h+K))
    assert 2*sigma*(4+q(100,69))-1 == q(39,2875) > 0
    a = sigma/c
    assert 1-2*sigma-2*a == q(26923,44500)
    assert 4*a-(1-2*sigma-2*a)**2 == q(102852071,1980250000) > 0

    A0 = sigma+a
    F = lambda f,b: (f*(b+sigma)-b*A0)*(b-2*sigma)-sigma*(1+b-f)*(f+A0)
    F1, F2 = F((1+r0-v)/2,(1+r0+v)/2), F((1-r0-v)/2,(1-r0+v)/2)
    P = 11125000*v**3+9311500*v*v-3106261*v+246761
    S0 = -P/44500000
    Cv = (11125000*v+26911500)/44500000
    J = (55625*r0*r0-55625*v*v+46615*v+85872)/222500
    zero(F1+F2-S0-Cv*r0*r0)
    zero(F1-F2-r0*J)
    assert Cv.subs(v,q(2,5)) < q(7,8)
    assert q(85872,222500)-q(3,8) == q(4869,445000) > 0
    expansion = 11125000*z**3+13761500*z*z-29861*z+q(3307637,135)
    zero(P.subs(v,z+q(2,15))-expansion)
    assert 13761500-11125000*q(2,15) == q(36834500,3)
    assert 29861**2-4*q(36834500,3)*q(3307637,135) == -q(97395898036199,81)
    print("PASS: opposite-mixed containment identity, both orientations, final cubic contradiction")


def n8_line_caps():
    a, b, r, z, X, Y, T, s = sp.symbols("a b r z X Y T s")
    zero(1+a/(1-a)+b/(1-b)-(1-a*b)/((1-a)*(1-b)))
    cap = r*r*(1-r)/(1+r)
    zero(sp.diff(cap,r)+2*r*(r*r+r-1)/(1+r)**2)
    zero(cap.subs(r,(sp.sqrt(5)-1)/2)-(5*sp.sqrt(5)-11)/2)
    W=(1-X-s/T)*(1-s/X)+(1-Y-s/T)*(1-s/Y)
    zero((W-(1+T-X-Y+s-s/T)).subs(T,1-s/X-s/Y))
    Wbound=1+T+s-s/T-4*s/(1-T)
    polynomial=T**3-7*s*T*T+(10*s-1)*T+s
    zero((8*s-Wbound)*T*(1-T)-polynomial)
    sigma=sp.Rational(93,1000)
    expansion=z**3+sp.Rational(849,1000)*z*z+sp.Rational(29,1000)*z+sp.Rational(81,4000)
    zero(polynomial.subs({T:z+sp.Rational(1,2),s:sigma})-expansion)
    assert Q(29,1000)**2-4*Q(349,1000)*Q(81,4000)==-Q(6857,250000)
    zero(sp.Rational(1,8)-z*z/(4*(1+z))-(1-z)*(2*z+1)/(8*(1+z)))
    assert 5*55**2<123**2
    assert 7*Q(93,1000)>Q(157,250)
    print("PASS: N8 octagon containment, both small-arc kinds, quadrilateral capacity")


def asymmetric_sign_chamber():
    a1, a2, a3, a4, b1, b2, b3, b4 = sp.symbols("a1 a2 a3 a4 b1 b2 b3 b4")
    x, y, U, V, s, M, m, k, t = sp.symbols("x y U V s M m k t")
    A, B, C, D, E, F, G, H, O, P = (sp.Matrix(p) for p in [
        (0,a1), (a2,0), (1-b1,0), (1,b2), (1,1-a3),
        (1-a4,1), (b3,1), (0,1-b4), (x,y), (x+U,y+V)])
    r = x*V-y*U
    identities = [
        (A,O,P,1,r+a1*U), (B,O,P,-1,a2*V-r),
        (E,O,P,-1,V-U+a3*U-r), (F,O,P,1,U-V+a4*V+r),
        (A,D,O,1,y-b2*x-a1*(1-x)),
        (B,G,O,-1,x-b3*y-a2*(1-y)),
        (C,F,P,1,1-x-U-b1*(1-y-V)-a4*(y+V)),
        (E,H,P,1,1-y-V-b4*(1-x-U)-a3*(x+U)),
        (A,G,H,1,b3*(1-a1-b4)), (B,C,D,1,b2*(1-a2-b1)),
        (C,D,E,1,b1*(1-a3-b2)), (F,G,H,1,b4*(1-a4-b3)),
    ]
    for p0,p1,p2,sign,formula in identities:
        zero(sign*2*area(p0,p1,p2)-formula)
    zero(U*y-U*b2*x-(s-r)*(1-x)-(x*(V-r-U*b2)-s*(1-x)))
    zero((1-x-U)*V-(1-y-V)*U-(V-U-r))
    qbound = (U+V)/(2*U)-s*(1+3*U)/(U*(1-U))
    zero(((U+V+2*s)/U-4*s*(1+U)/(U*(1-U)))/2-qbound)
    HH = (1+3*M)/(1-M)
    k0 = (1-M)/(4*M)
    DD = (M+m)/2
    first = k*(DD-k*M*m)/(1+k)
    zero(sp.diff(first,k)-(DD-M*m*k*(k+2))/(1+k)**2)
    zero(1-M*k0*(k0+2)-(7*M*M+10*M-1)/(16*M))
    psi = (1-M)*(2*M+m*(1+M))/(4*(1+3*M))
    zero(first.subs(k,k0)-psi)
    zero((DD-k0*M*m)/HH-psi)
    phi = t*(1-t/2)*(1-2*t)/(2-3*t)
    zero(psi.subs(m,M)-phi.subs(t,(1-M)/2))
    f = 12*t**3-27*t*t+20*t-4
    zero(sp.diff(phi,t)+f/(2*(2-3*t)**2))
    zero(sp.diff(f,t)-36*(t-sp.Rational(2,3))*(t-sp.Rational(5,6)))
    assert Q(9,130) < Q(1,11)
    assert 7*Q(1,10)**2+10*Q(1,10)-1 == Q(7,100) > 0
    print("PASS: asymmetric twelve-triangle formulas, reciprocal bounds, sharp scalar envelope")


def six_point_endpoint():
    q = sp.Rational
    h, beta, p, x, w, v, t, r, U, J = sp.symbols("h beta p x w v t r U J")
    rho, eta = sp.symbols("rho eta")
    rx, ry = (1-eta)/(1-rho*eta), rho*(1-eta)/(1-rho*eta)
    zero(ry-rho*rx)
    zero(rx-(1-eta+eta*ry))

    # The mixed-cell obstruction is valid at its own threshold 1/9.
    mixed = 9*h*h-11*h+3
    zero(9*h*(1-h)*(1/(3*h)+1/(9*(1-h))-1)-mixed)
    assert mixed.subs(h, q(13,16)) == q(1,256) > 0
    assert q(149,180) > q(13,16)
    assert q(69,40)**2 < 3
    assert q(1,9)-q(7,64) == q(1,576) > 0
    assert 7*q(7,64) > q(2,3)

    # Both same-side bounds and the opposite-side weighted identity.
    c0, a0 = 1/h+1/beta-1, 1-t*(1/h+1/beta)
    ell = lambda z: (t+(1-beta)*z)/beta
    upper = lambda z: 1-(t+z)/h
    zero(w*upper(v)-ell(w)*v-w+v
         -(v*(1-t/beta)-t*w/h-c0*w*v))
    zero(w*upper(v)-ell(w)*v
         -(w*(1-t/h)-t*v/beta-c0*w*v))
    P, X = sp.Matrix([p,p+w]), sp.Matrix([x,x+v])
    H, E = sp.Matrix([0,h]), sp.Matrix([1,1])
    dH, dE = 2*area(P,X,H), 2*area(P,X,E)
    K = h*(1-p)-w
    zero(w*dH+(h-w)*dE-K*(w-v))
    zero(K.subs(p,ell(w))/h-(1-t/beta-c0*w))
    A0 = 1-t/beta-c0*t
    zero(a0-A0-t*(1/beta-1))
    # Rearrangement of the mixed H/F sign branch.
    hf_bound = h*(1-beta)-t*(h-beta)*(2-beta)/beta-(1-beta)*t-3*t
    zero(hf_bound-(h*beta*(1-beta)-t*(2*h+2*beta-h*beta))/beta)
    scalar = beta*(1-beta)/(2+beta)
    assert scalar.subs(beta,q(2,3)) == q(1,12) < q(7,64)

    Phi = (U-t*J)**2-4*t*U*(J-U)
    zero(sp.diff(Phi,J)-2*t*(t*J-3*U))
    quad = (1+4*t)*r*r-12*t*r+4*t*t
    zero(Phi.subs({U:r*r,J:2*r})-r*r*quad)
    zero(1024*quad.subs(t,q(7,64))-(8*r-7)*(184*r-7))
    assert q(7,32) > q(7,184)
    assert q(7,8)*(1-q(7,8)) == q(7,64)
    assert q(7,3)**2 > 5
    assert 5*250**2-559**2 == 19 > 0
    sigma = q(93,1000)
    assert q(4427,500)*sigma-(1-sigma)**2 == q(773,1000000) > 0
    print("PASS: endpoint-six mixed obstruction, complete pair algebra, rational threshold")


def adjacent_corners():
    q = sp.Rational
    sigma, k = q(93,1000), 3-2*sp.sqrt(2)
    beta, h, b, x, z, a, r, y, t, w, v, rho = sp.symbols("beta h b x z a r y t w v rho")
    zero(k*(2-beta)-beta*(1-beta)-(beta-(2-sp.sqrt(2)))**2)
    zero(t+(1-beta)*t+(h-beta)*t*(2-beta)/beta-t*h*(2-beta)/beta)
    assert q(141,100)**2 < 2
    assert q(9,50) < q(3,16)
    assert (q(149,20)+4)*sigma-1 == q(1297,20000) > 0
    assert 1-9*sigma == q(163,1000)

    # The quadrilateral-left branch: exact denominator clearing and
    # the two positive bounds in its translated quartic.
    G = (2*x**4-q(907,1000)*x**3-q(93,250)*x*x
         +q(42036,312500)*x+q(8649,500000))
    cleared = (q(29,5)*sigma*sigma/(x*x-sigma)
               +2*x-2*sigma/x-(1-sigma))*x*(x*x-sigma)
    zero(cleared-G)
    expansion = (z*z*(2*z*z+q(2893,1000)*z+q(41721,40000))
                 +q(982583,40000000)*z+q(2989777,1600000000))
    zero(G.subs(x,z+q(19,40))-expansion)
    assert q(41721,40000)-q(2893,1000)*q(9,200) == q(22821,25000) > 0
    assert q(2989777,1600000000)-q(982583,40000000)*q(9,200) == q(3052819,4000000000) > 0
    assert 2*sigma > q(43,100)**2
    assert q(3,1)+2*q(7,5) == q(29,5)

    # The triangular-right and noncentral support cases use one exact cap.
    assert 1-q(69,100)/(1-3*sigma) == q(31,721)
    assert q(31,100)*q(31,721)+q(1,10)*(1-3*sigma) == q(615941,7210000)
    assert sigma-q(615941,7210000) == q(54589,7210000) > 0
    assert 11*sigma-1 == q(23,1000) > 0

    # Both quadrilateral side hulls: the right lower-point cap, the
    # actual cross-triangle formula, and the final scalar rearrangement.
    second = x*v-t*w+w-v-x+t
    zero(second.subs(v,(rho+t*w)/x).subs(w,1)
         -(1-x)*(x-t-rho)/x)
    B = sp.Matrix([b,0])
    P, R = sp.Matrix([b*a,y]), sp.Matrix([b+(1-b)*(1-r),t])
    cross = b*(1-a)*t+(1-b)*(1-r)*y
    zero(-2*area(B,P,R)-cross)
    bounded = cross.subs({t:1-r-sigma/((1-b)*r),y:1-a-sigma/(b*a)})
    zero(bounded-((1-a)*(1-r)
         -sigma*(b*(1-a)/((1-b)*r)+(1-b)*(1-r)/(b*a))))
    zero(((1-z)**2-2*sigma*(1-z)/z-sigma)*z
         -(z*(1-z)**2-sigma*(2-z)))
    print("PASS: adjacent-corner endpoint constants, side-hull quartic, cross-triangle bound")


def n8_triangle_caps():
    q = sp.Rational
    alpha, L, z, s = sp.symbols("alpha L z s")
    QL = (1-alpha-L)*((alpha-s)*L-s*alpha)
    square = (alpha-s)*(L-(1-alpha)/2-s*alpha/(2*(alpha-s)))**2
    zero((alpha*(1-alpha)-s)**2/(4*(alpha-s))-QL-square)
    zero(s/(1-s/L-s/alpha)*(s/(1-alpha-L)+s/L)
         -s*s*alpha*(1-alpha)/QL)
    sigma = q(93,1000)
    polynomial = (4*sigma*sigma*alpha*(alpha-sigma)*(1-alpha)
                  -(q(31,100)-alpha)*(alpha*(1-alpha)-sigma)**2)
    rows = [
        (q(1,10),q(1,5),250000000000,
         [4976370,26598258,19963803,8758105,7616264,24623380]),
        (q(1,5),q(31,100),25000000000000,
         [2462338000,4333120760,8399927317,15738884481,26467133562,40145457870]),
    ]
    for left,right,denominator,coefficients in rows:
        assert all(n > 0 for n in coefficients)
        bernstein = sum(q(n,denominator)*sp.binomial(5,i)*z**i*(1-z)**(5-i)
                        for i,n in enumerate(coefficients))
        zero(polynomial.subs(alpha,left+(right-left)*z)-bernstein)
    assert q(149,20)*sigma-q(69,100) == q(57,20000) > 0
    a,b,c,d,e,f,g,h,x,y,u,v = sp.symbols("a b c d e f g h x y u v")
    A,B,C,D,E,F,G,H,O,P = (sp.Matrix(p) for p in [
        (0,a),(b,0),(c,0),(1,d),(1,e),(f,1),(g,1),(0,h),(x,y),(u,v)])
    for T,U in [(A,F),(D,G),(C,H)]:
        zero(2*area(T,U,P)-2*area(T,U,O)
             -2*area(O,P,T)+2*area(O,P,U))
    zero(2*area(A,G,P)-(g/f)*2*area(A,F,P)+(1-g/f)*(1-a)*u)
    for V,formula in [(B,b*(1-a)+f*a),(C,c*(1-a)+f*a),
                       (D,1-f*d-(1-f)*a)]:
        zero(2*area(V,F,A)-formula)
        zero(2*area(V,F,H)-formula.subs(a,h))
    print("PASS: N8 triangle-cap elimination, both positive quintic rows, forced-sign identities")


def adjacent_four_right():
    q = sp.Rational
    b,K,G = sp.symbols("b K G", positive=True)
    sigma = q(93,1000)
    w = 1-b
    zero(sp.diff(w/b+G*b/w,b)-(-1/b**2+G/w**2))
    zero(sp.diff(K*w+G*b/w,b)-(-K+G/w**2))
    zero((w/b+G*b/w).subs(b,1/K)-((K-1)+G/(K-1)))
    zero((K*w+G*b/w).subs(b,1/K)-((K-1)+G/(K-1)))
    assert q(129,20)*sigma+sigma/q(3539,20000)-1 == q(8877383,70780000) > 0
    assert sigma*(q(189,20)+q(177,130))-1 == q(1423,260000) > 0
    assert q(69,40)**2 < 3 and q(67,30)**2 < 5
    assert 1-q(177,20)*sigma == q(3539,20000)
    print("PASS: adjacent-corner four-right lower-cut gap and uniform empty-fan bound")


def n8_ranges_and_quad_spread():
    q = sp.Rational
    sigma = q(93,1000)
    ell = q(31,251)
    assert q(753,1000)*q(247,1000) < 2*sigma
    assert sigma/q(753,1000) == ell
    assert 1-4*sigma/(1-ell) == q(31657,55000)
    assert sigma/q(31657,55000) == q(5115,31657)
    assert (6+4*q(707,500))*sigma-1 == q(10501,125000) > q(21,250)
    assert q(707,500)**2 < 2
    z,t,b,c,L,R,eps,eta = sp.symbols("z t b c L R eps eta")
    zero((1-b)*b*((2-c)/(1-b)+(1+c)/b-6)-(1-2*b)*(c-3*b+1))
    zero((3*b-1)*(b-t)-t*(1+b)-b*(3*b-1-4*t))
    H = z**3-2*z*z*t-10*z*t*t+6*z*t-z+6*t*t
    cleared = (2*t*(t*(3-z)/(1-z-2*t)+2*z)/(1+z)-z)*(1+z)*(1-z-2*t)
    zero(cleared-H)
    zero(H.subs(z,(1-8*t)/3)-8*(t+1)*(1-2*t)*(11*t-1)/27)
    assert q(3,121)+q(3,4)-1 == -q(109,484)
    a,e,f,h,x,y,U,V = sp.symbols("a e f h x y U V")
    A,E,F,H0,O,P = (sp.Matrix(p) for p in [
        (0,a),(1,e),(f,1),(0,h),(x,y),(x+U,y+V)])
    zero(2*area(A,E,F)+2*area(A,F,H0)-(1-a+f*(h-e)))
    zero(2*area(O,P,F)-2*area(O,P,A)-((1-a)*U-f*V))
    zero(2*area(O,P,H0)-2*area(O,P,E)-((h-e)*U+V))
    print("PASS: tightened N8 ranges, overlap gap, quadrilateral spread cubic and applications")


def adjacent_triangular_right():
    q = sp.Rational
    s = q(93,1000)
    b,x,t,z,a,r,v,dx,dy,T = sp.symbols("b x t z a r v dx dy T")
    w = 1-b
    M = x*(1-t)-(b+w*t+3*s)*(1-x+3*s)/w
    zero(sp.diff(M,x)-(1+3*s)/w)
    zero(M.subs({x:1-s,t:s/w})-(1+3*s)*(1-5*s/w))
    caps = [q(628,907),q(602053,907000),q(282659,453500)]
    gaps = [q(8299,18140000),q(527239,18140000),q(1261939,18140000)]
    for cap,gap in zip(caps,gaps):
        assert q(149,20)*s-cap==gap>0
    assert (q(177,20)+2)*s-1==q(181,20000)>0
    assert (q(177,20)+14)*s-2==q(2501,20000)>0
    first = z*dy-dx*(1-a)
    second = dx*(a-v)-(r-z)*dy
    zero((r-z)*first+z*second-(r*dx*(z/r+a-1)-z*dx*v))
    Fz = (1-s-z)*((1/r+1/w)*z-(1+s)/w)
    zero(sp.diff(Fz,z).subs(z,1-3*s)-((1/r+1/w)*(-1+5*s)+(1+s)/w))
    zero(Fz.subs(z,1-3*s)-2*s*((1-3*s)/r-4*s/w))
    U = x*(1-a)-z*(1-t)
    V = z*(t-q(1,10))-x*(a-q(1,10))+(a-t)
    zero((a-q(1,10))*U+(1-a)*V-(a-t)*(1-a-q(9,10)*z))
    assert q(99,200)**2/(4*q(9,10))==q(1089,16000)
    assert s-q(1089,16000)==q(399,16000)>0
    assert 1-q(177,20)*s/(1-s)==q(1679,18140)
    assert 1-q(157,20)*s/(1-s)==q(3539,18140)
    cap = x-b*T+s*(1+b)-s*(x+1)/T
    assert cap.subs({x:1-s,T:q(628,907),b:s})==q(78389420201,113919200000)
    assert q(149,20)*s-q(78389420201,113919200000)==q(539497519,113919200000)>0
    assert -q(1,5)+s*q(9,5)/q(7,10)**2>0
    print("PASS: triangular-right three-fan caps, both exterior-fan exclusions, negative-B cap")


def adjacent_upper_pair():
    qrat = sp.Rational
    s = qrat(93,1000)
    b,q,p,py,x,t,z = sp.symbols("b q p py x t z")
    lam = 1-q
    B,E,P,Q = (sp.Matrix(pt) for pt in [(b,0),(0,lam),(p,py),(x,t)])
    U,V = 2*area(B,P,Q),-2*area(E,P,Q)
    J = b*(t-lam)+lam*x
    zero((t-lam)*U+t*V-J*(py-t))
    c = b*q+lam
    t0 = lam+((1+q)*s+b*q*q)/(1+b*q)
    F = (1-s-t)*(c*(t-lam)-lam*s)-q*s*(2*t-lam)
    derivative = (-b*b*q*q*(q+s)+b*q*(q*q-4*s*q-3*s)
                  +(1-2*s)*q*(1-q)-2*s)
    zero((1+b*q)*sp.diff(F,t).subs(t,t0)-derivative)
    f = q*(q*q-4*s*q-3*s)
    g = (1-2*s)*q*(1-q)-2*s
    assert sp.diff(f,q).subs(q,qrat(69,100))==qrat(31797,50000)>0
    for lo,hi,upper in [(qrat(69,100),qrat(3,4),-qrat(112779,10000000)),
                        (qrat(3,4),qrat(17,20),-qrat(138981,10000000)),
                        (qrat(17,20),qrat(1),-qrat(3879,200000))]:
        assert f.subs(q,hi)>0
        assert qrat(9,50)*f.subs(q,hi)+g.subs(q,lo)==upper<0
    G = (qrat(93,1000)*b**3*q**3-qrat(907,1000)*b*b*q**3
         +qrat(194649,500000)*b*b*q*q+qrat(907,1000)*b*q**3
         -qrat(1253053,1000000)*b*q*q+qrat(432543,1000000)*b*q
         +qrat(84351,1000000)*q*q-qrat(177351,1000000)*q+qrat(31899,250000))
    zero(F.subs(t,t0)+q*G/(1+b*q)**2)
    zero(sp.diff(G,b,2)-q*q*(139500*b*q-453500*q+194649)/250000)
    assert ((139500*qrat(9,50)-453500)*qrat(69,100)+194649)/250000==-qrat(1009401,2500000)
    assert G.subs({b:0,q:1})==qrat(8649,250000)>0
    expansion = (-qrat(16801947,125000000)*z**3+qrat(85831701,312500000)*z*z
                 -qrat(58228623,1250000000)*z+qrat(42416289,1250000000))
    zero(G.subs({b:qrat(9,50),q:1-z})-expansion)
    assert qrat(85831701,312500000)-qrat(16801947,125000000)*qrat(31,100)==qrat(2912407683,12500000000)>0
    assert qrat(42416289,1250000000)-qrat(58228623,1250000000)*qrat(31,100)==qrat(2436541587,125000000000)>0
    print("PASS: adjacent upper-pair weighted identity, derivative table, complete positive rectangle")



def lower_contact_projection_and_caps():
    q = sp.Rational
    a,b,c,d,e,f,g,h,x,y,U,V,delta,eta = sp.symbols("a b c d e f g h x y U V delta eta")
    A,B,C,D,E,F,G,H,O,P = (sp.Matrix(t) for t in
        [(0,a),(b,0),(c,0),(1,d),(1,e),(f,1),(g,1),(0,h),(x,y),(x+U,y+V)])
    area2 = lambda I,J,K: 2*area(I,J,K)
    Din=sp.Matrix([1-delta,d]);Gin=sp.Matrix([g,1-eta])
    zero(area2(C,D,E)-area2(C,Din,E)-delta*e)
    zero(area2(F,G,H)-area2(F,Gin,H)-eta*f)
    zero(area2(A,D,O)-area2(A,Din,O)-delta*(y-a))
    zero(-area2(B,G,O)+area2(B,Gin,O)-eta*(x-b))
    Cin=sp.Matrix([c,eta]);Hin=sp.Matrix([eta,h])
    zero(area2(B,C,D)-area2(B,Cin,D)-eta*(1-b))
    zero(area2(C,F,P)-area2(Cin,F,P)-eta*(f-x-U))
    zero(area2(A,G,H)-area2(A,G,Hin)-eta*(1-a))
    zero(area2(E,H,P)-area2(E,Hin,P)-eta*(e-y-V))
    zero(area2(B,C,D)-area2(B,Cin,Din)-eta*(1-delta-b))
    zero(area2(C,D,E)-area2(Cin,Din,E)-delta*(e-eta))
    s=q(93,1000);M=sp.symbols("M")
    assert (M*M-(1-s)*M+s).subs(M,q(79,100))==q(57,100000)
    assert s/q(79,100)==q(93,790)
    assert s/(1-q(93,790))==q(7347,69700)
    assert (5+q(29,5))*s-1==q(11,2500)>0
    assert q(4427,500)*s-(1-s)**2==q(773,1000000)>0
    zz=sp.symbols("zz")
    assert (1-q(7,2)*zz+2*zz**2).subs(zz,q(1,3))==q(1,18)
    assert (-1+4*zz-2*zz**2).subs(zz,q(5,16))==q(7,128)
    print("PASS: N6/N7 projection identities, candidate margins, and exterior-cap rational bounds")



def adjacent_upper_p_and_two_upper():
    q=sp.Rational;s=q(93,1000)
    lam,b,px,py,y,t,z,a,xx,xy,r,v,T = sp.symbols("lam b px py y t z a xx xy r v T")
    E=sp.Matrix([0,lam]);B=sp.Matrix([b,0]);P=sp.Matrix([px,py]);Y=sp.Matrix([y,t]);R=sp.Matrix([r,v])
    area2=lambda I,J,K:2*area(I,J,K)
    ebp=area2(E,B,P)
    expr=((1-lam)*(ebp-s)).subs({px:(py-lam-s)/(1-lam),b:q(9,50),py:q(9,20)})
    zero(expr-(-q(41,50)*lam**2+q(189,1000)*lam-q(3,250)))
    assert -q(3,250)+q(189,1000)**2/(4*q(41,50))==-q(3639,3280000)
    assert ((1-3*s)*(1-s)-s)/(q(4,5)+1-3*s)==q(560947,1521000)
    assert 1-s*(2-q(3539,18140))/q(602053,907000)==q(8996147,12041060)
    assert (q(9,10)-s)/5-(q(9,10)-(1-3*s))*q(9,20)==q(1617,20000)<s
    assert q(149,20)*s-q(3,4)*(1-s)==q(63,5000)>0
    zero((y-b)*area2(E,R,Y)+(r-y)*area2(E,B,Y)-y*((r-b)*t-v*(y-b)))
    F=T+s-s*(1+T)/(1-3*s-s*T)
    assert F.subs(T,q(628,721))==q(230268674161,332696077000)
    assert q(149,20)*s-F.subs(T,q(628,721))==q(4796055769,6653921540000)>0
    assert 1-q(149,20)*s/(1-s)==q(4283,18140)
    assert 1-q(157,20)*s/(1-q(31,300))==q(9997,53800)
    assert q(93,500)-q(9997,53800)==q(49,269000)>0
    assert q(93,500)*q(177,1000)+q(11,100)*(1-3*s-q(177,1000))==q(46381,500000)<s
    b0=q(93,890)
    assert q(81,1000)-(1-q(177,20)*s/(1-b0))==q(143,1594000)>0
    assert q(185,1000)-(1-q(157,20)*s/(1-b0))==q(379,1594000)>0
    assert 3*s/(1-b0)-q(311,1000)==q(443,797000)>0
    assert q(585,1000)-(1-4*s/(1-b0))==q(13,31880)>0
    assert 1-3*s-q(4,5)*(q(177,20)+1)*s==-q(37,3125)
    print("PASS: upper-P sign contradictions, second-triangle identity, two-upper box constants")


def adjacent_one_upper():
    q=sp.Rational;s=q(93,1000);tau=q(93073,1000000)
    b,T,lam,y,t,z,a = sp.symbols("b T lam y t z a")
    D,E,B,Y,Z=(sp.Matrix(pt) for pt in [(0,1),(0,lam),(b,0),(y,t),(z,a)])
    area2=lambda I,J,K:2*area(I,J,K)
    zero(area2(E,Y,Z)-area2(D,Y,Z)-(1-lam)*(y-z))
    zero(area2(E,Y,Z)-area2(B,Y,Z)-b*(a-t)-lam*(z-y))
    assert 1-s/(1-q(177,20)*s)==q(1679,3539)<q(19,40)
    assert q(279,907)+2*s==q(223851,453500)>q(49,100)
    u=1-3*tau;Tb=1-tau/(1-b)
    F=T+tau-tau*(1+T)/(u-b*T)
    zero(sp.diff(F,T)-(1-tau*(u+b)/(u-b*T)**2))
    zero(sp.diff(F,b)+tau*T*(1+T)/(u-b*T)**2)
    assert 1-q(59,500)/q(27,50)**2==q(434,729)>0
    g=Tb-3*tau**2/b;f=F.subs(T,Tb)
    zero(sp.diff(g,b)-tau*(3*tau/b**2-1/(1-b)**2))
    cut=q(327,2500);cap=q(933,125)*tau
    assert f.subs(b,cut)==q(495032499115388709,712995842008000000)
    assert g.subs(b,cut)==q(65774049426083,94742800000000)
    assert cap==q(86837109,125000000)
    assert cap-f.subs(b,cut)==q(35435259571886247,89124480251000000000)>0
    assert cap-g.subs(b,cut)==q(217386892193,473714000000000)>0
    assert q(433,250)**2==q(187489,62500)<3
    print("PASS: single-upper containments' identities and exact monotone scalar cut")



def adjacent_lower_p():
    q=sp.Rational;s=q(93,1000);G=q(177,20);u=1-3*s
    b,lam,r,v,y,t,px,py=sp.symbols("b lam r v y t px py")
    F=u+s-(G-1)*s*b/(1-b)-s*u/b;B0=1-G*s
    zero(sp.diff(F,b)-s*(u/b**2-(G-1)/(1-b)**2))
    assert F.subs(b,B0)==q(3484138643,12528060000)
    assert 3*s-F.subs(b,B0)==q(11190097,12528060000)>0
    assert q(19,40)-q(15,8)*s==q(481,1600)
    assert q(279,907)-q(481,1600)==q(10133,1451200)>0
    assert (G+2)*s-1==q(181,20000)>0
    lam0=29*s/(10*(1-s));b0=s/(1-lam0)
    assert lam0==q(2697,9070) and b0==q(84351,637300)
    assert b0-q(13,100)==q(751,318650)>0
    assert 1-(G-1)*s/(1-q(13,100))==q(933,5800)
    assert q(161,1000)-q(933,5800)==q(1,7250)>0
    T=1-t;L=y-b*T;d=px-b*(1-py);c=lam-v;AA=r-b*c
    D,E,B,R,P,Y=(sp.Matrix(pt) for pt in [(0,1),(0,lam),(b,0),(r,v),(px,py),(y,t)])
    area2=lambda I,J,K:2*area(I,J,K)
    zero(area2(D,P,Y)-(L*(1-py)-T*d))
    zero(area2(E,B,R)+area2(E,R,P)-(AA*py+c*d))
    zero(AA*T-c*L-(r*T-c*y))
    assert q(9,10)*q(4,5)-q(19,40)*q(721,1000)==q(15101,40000)>0
    h=1-s*(2-t)/L
    zero(sp.diff(h,t)-s*(y+b)/L**2)
    value=h.subs({y:q(721,1000),b:q(13,100),t:q(161,1000)})
    assert value==q(440903,611930)
    assert q(721,1000)-value==q(29853,61193000)>0
    assert q(721,1000)-s/q(13,100)==q(73,13000)>0
    print("PASS: final triangular-right cut, empty EBY cap, ER bounds, quadrilateral barycentric identity")


def adjacent_nontriangular_right():
    q=sp.Rational;s=q(93,1000)
    b,r,v,h,beta,lam,Om,U,t=sp.symbols("b r v h beta lam Om U t")
    D0=1-s*(1-b)/b-9*b*s/(1-b)
    zero(sp.diff(D0,b)-s/b**2+9*s/(1-b)**2)
    val=(1-s)*D0.subs(b,q(103,1000))
    assert val==q(262504847,3079700000)
    assert s-val==q(23907253,3079700000)>0
    t0=q(31,299);r0=q(843,1000)
    Q=lambda z:(1+4*t)*z*z-12*t*z+4*t*t
    assert Q(r0).subs(t,t0)==-q(40450427,89401000000)
    zero(Q(2*t)-16*t*t*(t-1))
    assert r0*r0+t0-(1-2*s)==q(98051,299000000)>0
    D,E,B,C,H,FF=(sp.Matrix(pt) for pt in
        [(0,1),(0,lam),(b,0),(1,1),
         (b+h*(r-b),h*v),(r+(1-beta)*(1-r),v+(1-beta)*(1-v))])
    omega=r-b-(1-b)*v
    M=2*area(D,H,FF)
    zero(M-(1-beta+omega*(beta-h*beta)+v*(beta-h)))
    zero(2*area(E,H,FF)-M+(1-lam)*(FF[0]-H[0]))
    zero(2*area(D,B,H)-h*(omega+v))
    general=1-Om*U-(1-Om-v)*beta-v*U/beta
    zero(sp.diff(general,beta)+(1-Om)-v*(1+U/beta**2))
    zero(-(1-Om)+q(11,5)*(q(9,10)-Om)/q(9,10)-(q(6,5)-q(13,9)*Om))
    assert q(6,5)-13*s==-q(9,1000)
    assert q(177,20)*s-q(9,10)*(1-s)==q(27,4000)>0
    print("PASS: nontriangular right-hull product bound, physical middle areas, and both fan caps")


def exterior_count_budgets():
    q=sp.Rational;s=q(93,1000)
    a,b,e,f,p,qq,t,u=sp.symbols("a b e f p qq t u")
    zero((1-e)*(1-f)+e*(1-b)-(1-b*e-f*(1-e)))
    assert q(4427,500)*s-(1-s)**2==q(773,1000000)>0
    assert 3*s-q(1,4)==q(29,1000)>0
    assert (q(29,5)+5)*s-1==q(11,2500)>0
    first=p*qq*(1-f*t/((1-f)*(1-p))-(1-f)*t/(f*(1-qq)))-t*(f*qq/(1-f)+(1-f)*p/f)
    second=p*qq-t*(f*qq/((1-f)*(1-p))+(1-f)*p/(f*(1-qq)))
    zero(first-second)
    envelope=u*u*(1-u)/(1+u)
    zero(sp.diff(envelope,u)-2*u*(1-u-u*u)/(1+u)**2)
    zero(envelope.subs(u,(sp.sqrt(5)-1)/2)-(5*sp.sqrt(5)-11)/2)
    assert s-q(1,11)==q(23,11000)>0
    print("PASS: N6 exterior-count budgets and the complete N7 opposite-upper-cap inequality")


def central_support_pair():
    q=sp.Rational;t=q(31,299);m,z=sp.symbols("m z")
    S0=1/m+m/(m-t);W=m-t/(1-m)
    G=lambda x:x*(1-t*S0-(S0-1)*x)
    P=2*m**4-2*m**3+(t-1)*m*m+(t+1)*m-t
    Q=117208*m**3-117208*m*m+19499*m-961
    zero(sp.diff(G(z),z).subs(z,W)-Q/(299*m*(299*m-31)*(1-m)))
    zero(G(W)-t+t*P/((m-t)*(1-m)**2))
    printed=2*z**4+q(564,125)*z**3+q(40567403,18687500)*z*z-q(9508796,583984375)*z+q(1659390599,9343750000000)
    zero(P.subs(m,z+q(407,500))-printed)
    assert Q.subs(m,q(407,500))==q(7283395843,15625000)>0
    assert sp.diff(Q,m).subs(m,q(4,5))==q(1425139,25)>0
    assert q(40567403,18687500)-2==q(3192403,18687500)>0
    assert -q(9508796,583984375)+q(17,1000)==q(3351507,4671875000)>0
    assert q(1659390599,9343750000000)-q(17,100000)==q(70953099,9343750000000)>0
    zero(2*z*z-q(17,1000)*z+q(17,100000)-2*(z-q(17,4000))**2-q(1071,8000000))
    assert q(93,1000)/t==q(897,1000)
    print("PASS: complete central-support pair exclusion, height cap, positive quartic, and N6 area consequence")


def n7_same_upper_cap():
    q=sp.Rational;s=q(93,1000);K=q(149,20)
    a,f,g,h,z=sp.symbols("a f g h z")
    z0=(f*z-g)/(f-g);SS=f*(z0-a);u=(h-a)/(z0-a);v=g/f
    AGH=g*(h-a);FGH=f*(z-h)-g*(1-h)
    zero(AGH-SS*u*v)
    zero(FGH-SS*(1-u)*(1-v))
    zero((SS-K*s)*(f-g)-(f*f*(z-a)-f*g*(1-a)-K*s*(f-g)))
    assert s-q(100,1089)==q(1277,1089000)>0
    assert 12*s-1==q(29,250)>0
    ell=q(7347,69700);eta=q(93,790)
    f0=K*s/(1-eta);h0=4*s/(1-ell);h1=1-3*s
    assert 0<eta<h1<1 and 0<h0<1 and 0<f0<1
    assert q(7,5)**2<2 and q(12,5)**2<6
    print("PASS: same-upper-cap support identities, weighted-ear contradiction, and rational-box denominators")


def adjacent_mixed_i():
    q=sp.Rational;s=q(93,1000);t0=q(31,299)
    h,f,beta,t,x,z,u,v=sp.symbols("h f beta t x z u v")
    zero(2/f+3/(1-f)-q(49,5)-(49*(f-q(22,49))**2+q(6,49))/(5*f*(1-f)))
    assert q(49,5)*t0-1==q(24,1495)>0
    F=beta**3-beta**2+(3*t0+t0*t0)*beta-2*t0*t0
    assert F.subs(beta,q(2,5))==q(125338,11175125)>0
    assert sp.diff(F,beta).subs(beta,q(2,5))==q(3992,2235025)>0
    A,H,J,P,Q=(sp.Matrix(pt) for pt in [(0,0),(0,h),(1,1),(x,x+z),(u,u+v)])
    zero(z*2*area(P,Q,H)+(h-z)*2*area(P,Q,J)-(h*(1-x)-z)*(z-v))
    assert (h*h-(1+2*t0)*h+3*t0).subs(h,q(167,200))==q(1411,11960000)>0
    assert (q(149,20)-3)/(q(149,20)**2-2*q(149,20))==q(1780,16241)
    assert s/q(1780,16241)==q(1510413,1780000)
    assert q(152,1000)-(1-q(1510413,1780000))==q(973,1780000)>0
    assert q(167,200)*q(49,897)==q(8183,179400)<q(46,1000)
    assert q(167,200)+(1-q(167,200))*q(152,1000)==q(10751,12500)<q(861,1000)
    assert t0/q(21,25)==q(775,6279)>q(49,400)>q(3,25)
    b,lam,a,k,p,y,c,d=sp.symbols("b lam a k p y c d")
    D0=1-s*(1-b)/b-q(848,1000)*b/(1-b)
    assert q(167,200)*D0.subs(b,q(152,1000))==q(522209,1900000)
    assert 3*s-q(522209,1900000)==q(7891,1900000)>0
    assert q(6,5)*q(184,625)==q(1104,3125)<q(2,5)<4*t0
    B,C,D,E,H,P=(sp.Matrix(pt) for pt in [(b,0),(1,1),(0,1),(0,lam),(a,k),(p,y)])
    zero(2*area(E,H,P)-(a*y-k*p-lam*(a-p)))
    zero(-2*area(D,H,P)-(a*(1-y)-(1-k)*p))
    zero(2*area(E,H,P)-2*area(D,H,P)-(1-lam)*(a-p))
    T=p-b-(1-b)*y;U=a-p+(1-a)*y;W=a-b
    ratio=(U-(1-p)*k)/(W-(1-b)*k)
    zero(sp.diff(ratio,k)+(1-a)*T/(W-(1-b)*k)**2)
    E1=lam*(p-b)+b*y;E2=a*y-lam*(a-p)
    zero((a-p)*E1+(p-b)*E2-p*y*(a-b))
    assert (s-q(152,1000)*q(46,1000))-q(11,100)*q(758,1000)==q(657,250000)>0
    assert q(103,1000)+q(848,1000)*q(12,100)+3*s==q(48376,100000)>q(48,100)
    print("PASS: complete mixed-I support branch, contact eliminations, scalar gaps, and rational box")


def n7_small_arcs():
    q=sp.Rational;s=q(93,1000)
    a,b,c,d,e,f,g,h,z=sp.symbols("a b c d e f g h z")
    A,B,C,D,E,F,G,H=(sp.Matrix(pt) for pt in
        [(0,a),(b,0),(c,0),(1,d),(1,e),(f,1),(g,z),(0,h)])
    det=lambda X,Y,Z:2*area(X,Y,Z)
    zero(det(E,F,H)-det(E,F,G)-g*(1-e)-(1-f)*(z-h))
    zero(det(E,G,H)-(z-(1-g)*h-g*e))
    zero(sp.diff(det(E,F,G)+det(E,G,H),z)-f)
    zero(det(G,H,A)+det(G,A,B)-g*h-b*(z-a))
    apex=sp.Matrix([1,1+(1-z)*(1-f)/(f-g)])
    zero(det(D,apex,G)-(1-g)*(1-d+(1-z)*(1-f)/(f-g)))
    zero(det(G,F,apex))
    chains=[
        (A,E,sp.Matrix([0,1+f*(1-e)/(1-f)]),1-a+f*(1-e)/(1-f)),
        (B,sp.Matrix([1+e*(1-f)/(1-e),0]),F,1-b+e*(1-f)/(1-e)),
        (D,sp.Matrix([1,h+(z-h)/g]),H,h-d+(z-h)/g),
        (H,sp.Matrix([0,-d*c/(1-c)]),D,h+d*c/(1-c)),
        (A,sp.Matrix([1,-a*(1-b)/b]),E,e+a*(1-b)/b)]
    for X,Y,Z,S in chains:zero(det(X,Y,Z)-S)
    assert q(177,20)*s-(1-s)**2==q(401,1000000)>0
    assert s<q(4,25) and 1-4*s<7*s and 1-3*s<8*s
    eta=q(93,790);ell=q(7347,69700);h0=4*s/(1-ell);h1=1-s
    f0=4*s/(1-eta);x0=s/(h1-eta);g1=1-ell-s/(1-h0)
    assert 0<eta<h0<h1<1 and 0<x0<g1<1-ell and h0+s<1
    assert 0<f0<1-ell and 0<1-4*s
    print("PASS: N7 small-arc catalogue metrics, moving cap, actual endpoint triangle, and all five convex-chain factors")


def adjacent_mixed_iii():
    q=sp.Rational;s=q(93,1000);t0=q(31,299);eta0=q(167,200)
    Om,rho,x,z,b,r=sp.symbols("Om rho x z b r")
    assert eta0*(eta0-4*s)*q(897,1000)-s*(eta0+3)==-q(1974063,200000000)<0
    assert q(628,1000)-(1-3*t0/eta0)==q(6231,12483250)>0
    assert q(685,1000)-(q(152,1000)+q(628,1000)*q(848,1000))==q(57,125000)>0
    assert q(35,1000)-q(628,1000)*q(49,897)==q(623,897000)>0
    assert q(296,1000)-(q(1,4)+eta0*q(49,897))==q(347,897000)>0
    assert s-q(152,1000)*q(35,1000)-q(15,100)*q(582,1000)==q(19,50000)>0
    assert q(103,1000)+q(82,100)*q(848,1000)-q(798,1000)==q(9,25000)>0
    assert q(889,1000)-q(742,835)==q(63,167000)>0
    assert q(666,1000)-q(556,835)==q(11,83500)>0
    assert t0/q(628,1000)-q(165,1000)==q(881,9388600)>0
    assert q(103,1000)+q(848,1000)*q(165,1000)+s-q(33,100)==q(37,6250)>0
    assert q(555,1000)-(q(666,1000)-q(103,1000)-s)/q(848,1000)==q(1,1325)>0
    assert 2*s-q(49,1000)*q(435,1000)-q(835,1000)*q(19,100)==q(1207,200000)>0
    zero(r-(r-b)*x+(1-r)*(1-x-z)-(1-(1-b)*x-(1-r)*z))
    eta,k0,d1,u,v,t=sp.symbols("eta k0 d1 u v t")
    D,F,Q=(sp.Matrix(pt) for pt in [(d1,-k0),(0,eta),(u,u+v)])
    zero(2*area(D,F,Q)-(d1*(eta-u-v)-(eta+k0)*u))
    reduced=d1*eta*eta-t*(d1+4)*eta-3*t/Om
    zero(reduced.subs({d1:1/Om,eta:eta0,t:s/Om})-(eta0*(eta0-4*s)*Om-s*(eta0+3))/Om**2)
    print("PASS: final mixed-III support branch, forced DF straddle, physical map, and all box gaps")


def n6_exact_hull_reduction():
    q=sp.Rational;s=q(93,1000);K=q(149,20)
    a,b,c,e,f,h,x,y=sp.symbols("a b c e f h x y")
    A,B,C,E,F,H,X=(sp.Matrix(pt) for pt in
        [(0,a),(b,0),(c,0),(1,e),(f,1),(0,h),(x,y)])
    det=lambda U,V,W:2*area(U,V,W)
    zero((1-f)*det(C,E,X)+(1-c)*det(E,F,X)-det(C,E,F)*(1-x))
    zero((1-h)*det(E,F,X)+(1-e)*det(F,H,X)-det(E,F,H)*(1-y))
    zero(c*det(H,B,X)-b*det(H,C,X)-h*(c-b)*x)
    zero(det(A,B,X)-det(H,B,X)-(h-a)*(b-x))
    assert s-q(1037,10000)*(1-q(1037,10000))==q(5369,10**8)>0
    t,r=sp.symbols("t r");poly=(1+4*t)*r*r-12*t*r+4*t*t
    assert poly.subs({t:s,r:q(39,50)})==-q(1449,1250000)
    assert (3-6*r+2*r*r).subs(r,q(69,100))==-q(939,5000)
    assert (K-3)/(K*K-2*K)==q(1780,16241)
    assert s/q(1780,16241)==q(1510413,1780000)>9*s
    beta,z=sp.symbols("beta z")
    FF=beta**3-beta**2+(3*s+s*s)*beta-2*s*s
    zero(FF.subs(beta,z+q(9,20))-(z**3+q(7,20)*z*z-q(4851,10**6)*z+q(15381,20000000)))
    assert q(4851,10**6)**2-4*q(1,5)*q(15381,20000000)==-q(591707799,10**12)<0
    assert q(489,200)**2<6 and q(989,100)*s==q(91977,100000)
    ratio=r*r-(1-s)*r+2*s
    assert ratio.subs(r,q(313,1000))==ratio.subs(r,q(594,1000))==q(39,500000)>0
    assert q(313,1000)*q(91977,100000)==q(28788801,10**8)>q(287,1000)
    print("PASS: N6 exact-hull boxes, endpoint eliminations, mixed nested-row exclusion, and stronger remaining floors")


def n7_top_three_five():
    q=sp.Rational;s=q(93,1000);eta=q(93,790);ell=q(7347,69700)
    a,b,e,f,g,h,z,x,y,u,v=sp.symbols("a b e f g h z x y u v")
    A,B,E,F,G,H,O,P=(sp.Matrix(pt) for pt in
        [(0,a),(b,0),(1,e),(f,1),(g,z),(0,h),(x,y),(u,v)])
    det=lambda X,Y,Z:2*area(X,Y,Z)
    zero(det(H,O,P)-det(A,O,P)-(u-x)*(h-a))
    zero(f*det(A,G,P)-g*det(A,F,P)+u*det(A,F,G))
    zero(z*det(B,H,P)-h*det(B,G,P)+v*(b*(z-h)+h*g))
    zero((1-e)*det(F,H,O)+(1-h)*det(E,F,O)-det(E,F,H)*(1-y))
    zero(det(A,G,O)+det(G,H,O)-(h-a)*(g-x))
    bound=(1-ell)*(h-eta)*(1-h)-3*s*(1-h)-s*(h-eta)
    zero(bound+(492588700*h*h-652994170*h+205585707)/550630000)
    assert bound.subs(h,q(257,500))==-q(216669513,1376575000000)<0
    assert bound.subs(h,q(203,250))==-q(87402983,344143750000)<0
    assert sp.diff(bound,h).subs(h,q(257,500))>0
    assert sp.diff(bound,h).subs(h,q(203,250))<0
    print("PASS: complete N7 HGF 3/5 placement identities, ordinate bound, and the stronger AGO-positive box")


def c1_exact_pentagon():
    q=sp.Rational;s=q(93,1000);K0=q(3927,500)
    h,c,d,f,u,v,z,w,x,a,r,t=sp.symbols("h c d f u v z w x a r t")
    O,H,C,D,F,Y,Z,X,R=(sp.Matrix(pt) for pt in
        [(0,0),(0,h),(c,0),(1,d),(f,1),(u,v),(z,w),(x,a),(r,t)])
    det=lambda A,B,C:2*area(A,B,C)
    zero(det(H,C,D)+det(H,D,F)-(1-(h-d)*(c-f)))
    zero(det(C,D,Y)-(d*(c-u)+(1-c)*v))
    zero(det(D,F,Y)-(1-d*f-(1-d)*u-(1-f)*v))
    cap=x+w-z-a+z*a-x*w
    zero(det(Z,X,sp.Matrix([1,1]))-cap)
    zero(cap.subs({x:1-4*s,w:1-4*s,z:s,a:s})-(1-2*s-15*s*s))
    assert q(433,250)**2<3 and q(559,250)**2<5 and q(707,500)**2<2
    assert (4+2*q(433,250))*s>q(694,1000)
    assert (11+3*q(559,250))*s/2>q(823,1000)
    assert 2*(1+q(707,500))*s>q(449,1000)
    assert q(907,1000)**2<q(823,1000)
    assert 1-K0*s==q(134789,500000)<q(27,100)
    assert K0*s/2==q(365211,10**6)
    kappa=sp.symbols("kappa")
    envelope=(q(442,93)-kappa)**2/3+q(442,93)-kappa-6*kappa+3
    assert envelope.subs(kappa,q(8,5))==-q(87029,648675)<0
    assert sp.diff(envelope,kappa).subs(kappa,q(442,93))==-7
    assert 2*s/(1-s)>q(41,200) and s+q(41,200)==q(149,500)
    assert 1-2*s-15*s*s==q(684265,10**6)<q(694,1000)
    assert 1-4*s+3*s*s==q(653947,10**6)<q(694,1000)
    assert 1-4*s+s*s==q(636649,10**6)<q(694,1000)
    assert q(517,730)>q(177,250) and 1-q(306,823)>q(157,250)
    print("PASS: C1 exact-pentagon geometry, distributed-mesh ranges, capacity-one fans, and ear bounds")


def n7_height_three_five():
    q=sp.Rational;s=q(93,1000)
    c,d,e,f,g,h,z,x,y=sp.symbols("c d e f g h z x y")
    C,D,E,F,G,H,T=(sp.Matrix(pt) for pt in
        [(c,0),(1,d),(1,e),(f,1),(g,z),(0,h),(x,y)])
    Gp=sp.Matrix([g,1]);det=lambda A,B,C:2*area(A,B,C)
    zero(det(F,Gp,T)-det(F,G,T)-(1-z)*(f-x))
    zero(det(E,F,T)-((1-f)*(1-y)-(1-e)*(x-f)))
    zero(det(F,Gp,H)-(f-g)*(1-h))
    zero(det(E,F,Gp)-(f-g)*(1-e))
    for A,B,co in [(C,D,1-c),(C,H,-c),(D,H,-1)]:
        zero(sp.diff(det(A,B,G),z)-co)
    assert s/q(753,1000)==q(31,251)
    assert s/q(31657,55000)>q(31,251)>q(93,790)>q(7347,69700)
    p0,q0,r0,t0=sp.symbols("p0 q0 r0 t0")
    A0,B0,D0,E0=(sp.Matrix(pt) for pt in [(0,0),(p0,q0),(r0,t0),(1,0)])
    X=det(A0,B0,E0);Y=det(A0,D0,E0);Z=det(A0,B0,D0);Delta=X-Z
    R1=A0+Y/Delta*(B0-A0);R2=E0+X/Delta*(D0-E0)
    for coordinate in R1-R2:zero(coordinate)
    zero(Y-Delta-det(B0,D0,E0))
    zero(-det(A0,E0,R1)-X*Y/Delta)
    print("PASS: all N7 h>=e long-triangle transfers, uniform ordinate bound, and the five-chain supporting-ray identity")


def adjacent_223_core():
    q=sp.Rational;s=q(93,1000);Om0=q(271,500)
    b,lam,a,k,c,d,p,y,u,v,Om=sp.symbols("b lam a k c d p y u v Om")
    D,E,B,H,F,C,P,X=(sp.Matrix(pt) for pt in
        [(0,1),(0,lam),(b,0),(a,k),(c,d),(1,1),(p,y),(u,v)])
    det=lambda A,B,C:2*area(A,B,C)
    zero(det(E,B,H)-(lam*(a-b)+b*k))
    zero(det(E,C,P)-(y-lam-(1-lam)*p))
    zero(det(D,F,X)+det(F,C,X)-(v-d))
    assert q(7071,5000)**2<2 and 3/q(429,2500)>q(209,50)**2
    assert 1-q(209,25)*s==q(5563,25000)
    assert q(141421,100000)**2<2 and q(8579,50000)*Om0<s
    B0=q(23,50);C0=1-2*s+s/B0;R0=2*s*(1-B0)/B0
    assert C0==q(5843,5750) and R0==q(2511,11500)
    assert 4*R0-(C0-s)**2==q(11183711,529000000)>0
    J=(1-s/Om0)*(1-Om0/(1-b))
    for bb,aa,want,lower in [
        (q(279,1000),q(907,1000),q(13919217,245411096),q(56,1000)),
        (q(295,1000),q(907,1000),q(2789213,46770264),q(59,1000)),
        (q(296,1000),q(885,1000),q(872211,14046472),q(62,1000))]:
        assert (s-bb*J.subs(b,bb))/(aa-bb)==want>lower
    assert s*q(721,1000)<Om0**2 and q(721,1000)**2<Om0
    assert 3*s/q(944,1000)>q(295,1000)
    assert 3*s/q(941,1000)>q(296,1000)
    assert 3*s/q(938,1000)>q(297,1000)
    m=sp.symbols("m");G=m*(1-m)/(2-m);t0=q(93,704)
    m0=t0/q(164,1000)
    assert m0==q(11625,14432)>q(3,4)
    assert t0-G.subs(m,m0)==q(42687,45235136)>0
    epsilon=q(115,1000)
    assert t0-G.subs(m,s/epsilon)==q(24831,11091520)>0
    assert epsilon*(epsilon+s)/(epsilon-s)==q(299,275)>1
    assert J.subs(b,q(297,1000))==q(72289,381026)<q(19,100)
    assert 1-3*s/q(703,1000)<q(604,1000)
    assert s/q(938,1000)>q(99,1000)
    assert q(458,1000)-2*s/q(938,1000)<q(26,100)
    assert q(62,1000)+2*s>q(247,1000)
    assert 1-(q(99,1000)+s)/q(458,1000)<q(581,1000)
    qq=sp.symbols("qq");poly=b*qq**2-s*(2*b+1)*qq-s
    assert poly.subs({b:q(458,1000),qq:q(685,1000)})==-q(15373,10**8)
    assert s/q(588,1000)>q(158,1000)
    assert q(297,1000)+q(703,1000)*s/q(588,1000)+s>q(501,1000)
    assert 1-s/q(836,1000)<q(889,1000)
    assert (q(889,1000)-q(297,1000)-s)/q(703,1000)<q(71,100)
    assert q(542,1000)*q(158,1000)+s>q(178,1000)
    assert q(164,1000)+2*s==q(7,20)
    assert q(297,1000)+q(703,1000)*q(7,20)+s==q(12721,20000)>q(159,250)
    print("PASS: Type-II (2,2,3) eight-point core, all exact box bootstraps, and final contact gaps")


def c1_exterior_reduction():
    from pathlib import Path
    from itertools import product
    import re
    q=sp.Rational;s=q(93,1000)
    c,d,x,y=sp.symbols("c d x y")
    intercept=(d*x-y)/(d-y)
    zero(2*area(sp.Matrix([1,d]),sp.Matrix([x,y]),sp.Matrix([intercept,0])))
    zero((1-c)*(1-s-s/c)-(1-(1-s)*c-s/c))
    assert s*(1-s)==q(84351,10**6)>q(29,100)**2
    assert 1-2*q(29,100)==q(21,50)<q(347,500)
    z=sp.symbols("z");pair=z*z-(1-2*s)*z+s
    assert pair.subs(z,q(347,500))==q(243,25000)>0
    assert sp.diff(pair,z).subs(z,q(347,500))>0
    assert (1-q(347,500))*(1-s)==q(138771,500000)<3*s
    assert q(4427,500)*s-(1-s)**2==q(773,10**6)>0
    assert 3*s>q(1,4) and (1-4*s)**2==q(394384,10**6)<5*s
    triple=z*z-(1-2*s)*z+s*s
    assert triple.subs(z,q(823,1000))==q(2007,125000)>0
    assert sp.diff(triple,z).subs(z,q(823,1000))>0
    manuscript=Path(__file__).with_name("C1_EXTERIOR_REDUCTION.md").read_text()
    printed={int(k):set(tuple(map(int,rr)) for rr in re.findall(r'\((\d),(\d),(\d),(\d)\)',body))
        for k,body in re.findall(r'^\| ([0-3]) \| (.+) \|$',manuscript,re.M)}
    expected={k:set() for k in range(4)}
    for k,j,r,t,l in product(range(4),range(3),range(3),range(4),range(3)):
        if k+j+r+t+l!=5 or r<l or (r,l)==(2,2):continue
        if max(r,l)==2 and (k>1 or t>1):continue
        if (k==3 or t==3) and r*l:continue
        if (k,j,r,t,l)==(3,2,0,0,0):continue
        expected[k].add((j,r,t,l))
    assert printed==expected and [len(printed[k]) for k in range(4)]==[8,12,8,4]
    print("PASS: C1 exterior support cuts, all scalar gaps, and the complete 32-row count catalogue")


if __name__ == "__main__":
    triangle_occupancy()
    endpoint_cells()
    seven_point_endpoint()
    clustered_triangle()
    opposite_corners()
    noncentral_corners()
    mixed_corners()
    mixed_cross_corners()
    universal_mixed_corner()
    mixed_central_placement()
    opposite_mixed_complete()
    symmetric_opposite_orientation()
    asymmetric_sign_chamber()
    six_point_endpoint()
    adjacent_corners()
    n8_line_caps()
    n8_triangle_caps()
    adjacent_four_right()
    n8_ranges_and_quad_spread()
    adjacent_triangular_right()
    adjacent_upper_pair()
    lower_contact_projection_and_caps()
    adjacent_upper_p_and_two_upper()
    adjacent_one_upper()
    adjacent_lower_p()
    adjacent_nontriangular_right()
    exterior_count_budgets()
    central_support_pair()
    n7_same_upper_cap()
    adjacent_mixed_i()
    n7_small_arcs()
    adjacent_mixed_iii()
    n6_exact_hull_reduction()
    n7_top_three_five()
    c1_exact_pentagon()
    n7_height_three_five()
    adjacent_223_core()
    c1_exterior_reduction()
