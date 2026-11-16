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
