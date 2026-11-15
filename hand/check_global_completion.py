#!/usr/bin/env python3
"""Exact algebra diagnostics for GLOBAL_COMPLETION.md.

This does not verify the affine isoperimetric theorem or the geometric
convexity argument. Those are stated explicitly in the accompanying proof.
"""

from fractions import Fraction
from itertools import product
from math import comb

import sympy as sp


def det(p, q):
    return sp.expand(p[0] * q[1] - p[1] * q[0])


u = sp.symbols("u", real=True)
ax, ay, bx, by = sp.symbols("ax ay bx by", real=True)
a = sp.Matrix([ax, ay])
b = sp.Matrix([bx, by])
arc = ((1 - u) ** 2 * a + u**2 * b) / 2
d1 = arc.diff(u)
d2 = d1.diff(u)

assert sp.simplify(det(d1, d2) + det(a, b)) == 0
assert sp.simplify(sp.integrate(det(arc, d1) / 2, (u, 0, 1)) - det(a, b) / 24) == 0
assert d1.subs(u, 0) == -a
assert d1.subs(u, 1) == b

# pi^2 < (22/7)^2, followed by an increasing rational function.
q = Fraction(484, 49)
bound = 4 * q / (729 + 3 * q)
assert bound == Fraction(1936, 37173)
assert bound < Fraction(1, 19) < Fraction(7, 128)
assert 18**2 * 65 - 145**2 == 35

# Seven-boundary lower-cap identities and exact final contradiction.
f, h, e, lam = sp.symbols("f h e lam", real=True)
H = sp.Matrix([0, h])
F = sp.Matrix([f, 1])
E = sp.Matrix([1, e])
assert sp.expand(-det(F - H, E - H) - ((1 - f) * (1 - h) + f * (1 - e))) == 0
q_lam = lam * (1 - lam)
assert sp.simplify(1 + 3 / lam + 3 / (1 - lam) - (1 + 3 / q_lam)) == 0
assert sp.simplify((1 + 3 / lam) * 3 / (1 - lam) - 3 * (lam + 3) / q_lam) == 0
assert Fraction(2) - Fraction(7, 64) / 4 == Fraction(505, 256)
assert 7 * 192**2 - 505**2 == 3023

print("PASS: parabolic affine length and removed-area identities")
print("PASS: complete convex-nonagon bound < 1936/37173 < 1/19 < A0")
print("PASS: seven-boundary lower exterior-cap identities and strict 7/128 exclusion")


def bernstein_coefficients(polynomial, variables, degrees):
    """Exact power-to-product-Bernstein conversion, formula (38)."""
    poly = sp.Poly(sp.expand(polynomial), *variables)
    assert poly.degree_list() == tuple(degrees)
    terms = poly.terms()
    result = {}
    for index in product(*(range(n + 1) for n in degrees)):
        value = sp.S.Zero
        for powers, coefficient in terms:
            if all(i <= j for i, j in zip(powers, index)):
                value += coefficient * sp.prod(
                    sp.Rational(comb(j, i), comb(n, i))
                    for i, j, n in zip(powers, index, degrees)
                )
        result[index] = value
    return result


def check_moving_chamber():
    """Audit the signed determinants, scalar reductions, and both tables."""
    R = sp.Rational
    a, b, c, d, e, f, g, h, k, x, y = sp.symbols(
        "a b c d e f g h k x y", real=True
    )
    points = {
        "A": sp.Matrix([0, a]),
        "B": sp.Matrix([b, 0]),
        "C": sp.Matrix([c, 0]),
        "D": sp.Matrix([1, d]),
        "E": sp.Matrix([1, e]),
        "F": sp.Matrix([f, k]),
        "G": sp.Matrix([g, 1]),
        "H": sp.Matrix([0, h]),
        "O": sp.Matrix([x, y]),
    }
    signed_areas = {
        "ABH": b * (h - a),
        "ABC": a * (c - b),
        "AGH": g * (h - a),
        "DEF": (1 - f) * (e - d),
        "GHF": (f - g) * (1 - h) + g * (1 - k),
        "GEF": (f - g) * (1 - e) - (1 - g) * (1 - k),
        "ADO": y - a - (d - a) * x,
        "DHO": h - y - (h - d) * x,
        "BOE": e * (x - b) - (1 - b) * y,
        "GCO": x - c + (c - g) * y,
        "OCF": k * (c - x) + (f - c) * y,
    }
    for order, formula in signed_areas.items():
        p1, p2, p3 = (points[name] for name in order)
        assert sp.expand(det(p2 - p1, p3 - p1) - formula) == 0
    assert sp.expand(signed_areas["ADO"] + signed_areas["DHO"] - (h - a) * (1 - x)) == 0
    assert sp.expand(
        signed_areas["GCO"] + signed_areas["OCF"]
        - ((f - g) * y - (1 - k) * (c - x))
    ) == 0
    assert sp.expand(
        signed_areas["GEF"]
        - ((1 - g) * (k - e) - (1 - f) * (1 - e))
    ) == 0
    # The x >= c exclusion uses only these exact rational comparisons.
    assert R(7, 8) * (1 - R(7, 8)) == R(7, 64)
    assert R(7, 64) * (1 - R(7, 64)) == R(399, 4096) > R(1, 16)
    assert R(3, 4) * (1 - R(3, 4)) > R(399, 4096)

    u, v, s, w, z, p, r = sp.symbols("u v s w z p r", real=True)
    alpha = 1 - v - s / u
    beta = 1 - u - s / v
    au = 1 - 3 * u - s
    av = 1 - 3 * v - s
    astar = alpha + g * w
    bstar = 1 - g - s / v
    x0 = (u * (1 - 3 * v) + s + 2 * v) / (1 - v)
    phi = 6 * u * v + (3 * s - 4) * (u + v) + 2 * s + 2 - s * (1 - s) * (u + v) / (u * v)
    assert sp.cancel(alpha * au + beta * av + 2 * s * (u + v - 1) - phi) == 0
    before_elimination = (
        astar * au + bstar * av + 2 * s * (u + v - 1)
        + w * (bstar * (g - x) - (bstar - s) * (c - x))
    )
    after_elimination = (
        phi - (g - u) * av
        + w * (g * (au + bstar) - (bstar - s) * c - s * x)
    )
    assert sp.cancel(before_elimination - after_elimination) == 0
    assert sp.expand(
        (1 - v - (1 - g) * w) * x
        + (1 - v + g * w) * (1 - x)
        - (1 - v + w * (g - x))
    ) == 0
    assert sp.cancel(sp.diff(x0, v) - (2 - 2 * u + s) / (1 - v) ** 2) == 0

    # Rational root bounds used in the manuscript, by squaring positives.
    assert 65 * 50**2 > 403**2  # p0 < 347/2000.
    assert 65 > 8**2  # p0 < 7/40.
    assert 65 * 81**2 - 653**2 == 56  # s0 > 79/720.
    assert 121**2 - 65 * 15**2 == 16  # s0 < 11/100.
    assert R(79, 720) > R(7, 64)
    assert R(7, 64) + R(1, 1600) == R(11, 100)
    assert 1 - 3 * R(111, 500) - R(11, 100) == R(28, 125)

    # u >= v: the one-variable H argument.
    psi = beta * av * (1 - v) - s * (u * (1 - 3 * v) + s + 2 * v)
    assert sp.cancel(sp.diff(psi, u) - (2 * s * v - 3 * v**2 + 4 * v - 1)) == 0
    assert 2 * R(11, 100) * R(7, 40) + 4 * R(7, 40) - 1 == -R(523, 2000)
    hp = (
        -2 * s**2 * v + s**2 + 2 * s * v**3 - 4 * s * v**2
        + 3 * s * v - s - 3 * v**4 + 7 * v**3 - 5 * v**2 + v
    )
    assert sp.cancel(v * psi.subs(u, v) - hp) == 0
    assert sp.expand(sp.diff(hp, v, 2) - 2 * (6 * s * v - 4 * s - 18 * v**2 + 21 * v - 5)) == 0
    relation = 20 * p**2 - 15 * p + 2
    candidate_s = (2 - 9 * p) / 4
    assert sp.rem(sp.Poly(hp.subs({v: p, s: candidate_s}), p), sp.Poly(relation, p)).is_zero
    hv_at_candidate = sp.diff(hp, v).subs({v: p, s: candidate_s})
    assert sp.rem(
        sp.Poly(hv_at_candidate - (R(29, 40) - R(331, 80) * p), p),
        sp.Poly(relation, p),
    ).is_zero
    assert R(29, 40) - R(331, 80) * R(347, 2000) == R(1143, 160000)

    # u < v, u+v <= 8/25: scalar margin and the four cubic formulas.
    relaxed = 6 * p**2 + 2 * p * (3 * s - 4) + 2 * s + 2 - 2 * s * (1 - s) / p
    assert sp.cancel(phi.subs({u: p, v: p}) - relaxed) == 0
    assert (
        18 * R(7, 64) - 8
        + 2 * R(7, 64) * R(89, 100) / R(16, 625)
    ) == R(3223, 2048)
    assert 6 * R(4, 25) + 2 - 2 * R(39, 50) / R(4, 25) == -R(679, 100)
    far_margin = relaxed.subs({p: R(4, 25), s: R(79, 720)})
    assert far_margin == -R(587423, 25920000) < -R(1, 45)
    assert R(7, 48) * (1 - R(7, 48)) == R(287, 2304) < R(1, 8)
    assert x0.subs({u: R(1, 8), v: R(7, 48), s: R(7, 64)}) == R(181, 328) > R(1, 2)
    assert R(39, 200) * R(7, 8) - R(7, 64) == R(49, 800) < R(7, 64)
    ncap = bstar * (1 - v) - s
    wcap = ncap / (bstar * (1 - g))
    assert sp.cancel(sp.diff(wcap, s) + 1 / bstar**2) == 0
    assert sp.cancel(sp.diff(wcap, v) - (-1 + s**2 / (v**2 * bstar**2)) / (1 - g)) == 0
    far_rows = [
        (R(7, 48), R(4, 25), R(143, 768), 1, [1510430]),
        (R(4, 25), R(43, 250), R(33041, 142416), 1, [282515]),
        (R(43, 250), R(23, 125), R(40769, 150144), 2, [1677106, 195230]),
        (R(23, 125), R(39, 200), R(272, 897), 4, [7683587, 1938633, 169864, 221125]),
    ]
    far_coefficients_checked = 0
    for low, high, gmax, subdivisions, bounds in far_rows:
        sl, sh = R(7, 64), R(11, 100)
        assert gmax == 1 - sl / (high * (1 - high))
        assert 1 - gmax - sh / low > 0
        assert R(1, 8) < gmax < R(1, 3)
        xl = x0.subs({u: R(1, 8), v: low, s: sl})
        assert xl > R(1, 2) > gmax
        cl = g * (1 - R(3, 8) - sl) + (1 - g - sh / low) * (g - xl)
        bh = 1 - g - sl / high
        nh = bh * (1 - high) - sl
        cubic = bh * (1 - g) / 45 - nh * cl
        assert nh.subs(g, gmax) == 0
        assert bh.subs(g, gmax) > 0
        assert len(bounds) == subdivisions
        for j, bound in enumerate(bounds):
            transformed = cubic.subs(
                g, R(1, 8) + (gmax - R(1, 8)) * (j + r) / subdivisions
            )
            coefficients = bernstein_coefficients(transformed, (r,), (3,))
            assert bound > 0
            assert min(coefficients.values()) >= R(bound, 10**9)
            far_coefficients_checked += len(coefficients)

    # u < v, u+v >= 8/25: the exact D cubic and six polynomial bounds.
    cstar = g * (au + bstar) - bstar * x0
    delta = (g - u) * av * bstar * (1 - g) - ncap * cstar
    t = x0 - u
    n0 = beta * (1 - v) - s
    c0 = u * au - beta * t
    bigk = au + beta + t
    d0 = -n0 * c0
    d1 = av * beta * (1 - u) - n0 * bigk + (1 - v) * c0
    d2 = -av * (beta + 1 - u) + n0 + (1 - v) * bigk
    d3 = -2 * v - s
    assert sp.cancel(cstar.subs(g, u + z) - (c0 + bigk * z - z**2)) == 0
    assert sp.cancel(delta.subs(g, u + z) - (d0 + d1 * z + d2 * z**2 + d3 * z**3)) == 0
    jcap = v * (1 - u) * (1 - v) - s
    zcap = jcap / (v * (1 - v))
    assert sp.cancel(zcap - (1 - s / (v * (1 - v)) - u)) == 0
    normalizers = [
        v**2 * (1 - v),
        5 * v**3 * (1 - v) ** 2,
        10 * v**3 * (1 - v) ** 2,
        10 * v**3 * (1 - v) ** 3,
        5 * v**3 * (1 - v) ** 3,
        v**2 * (1 - v) ** 3,
    ]
    polynomials = []
    bcoefficients = []
    for i, normalizer in enumerate(normalizers):
        bi = (
            d0 + R(i, 5) * d1 * zcap
            + R(i * (i - 1), 20) * d2 * zcap**2
            + R(i * (i - 1) * (i - 2), 60) * d3 * zcap**3
        )
        bcoefficients.append(bi)
        polynomial = sp.cancel(normalizer * bi / jcap)
        assert sp.denom(polynomial) == 1
        sp.Poly(polynomial, u, v, s)  # Enforce genuine polynomial cancellation.
        polynomials.append(polynomial)
    assert sp.cancel(
        sum(bi * sp.binomial(5, i) * r**i * (1 - r) ** (5 - i) for i, bi in enumerate(bcoefficients))
        - delta.subs(g, u + zcap * r)
    ) == 0
    assert sp.expand(polynomials[0] - (
        -s**2 - s * u * v**2 + 2 * s * u * v - s * v
        - u**2 * v**2 + 3 * u**2 * v - 3 * u * v**2 - u * v + 2 * v**2
    )) == 0
    assert sp.expand(polynomials[5] - s**2 * av) == 0

    qvar, dvar, eta = sp.symbols("q d eta", real=True)
    total = R(8, 25) + R(27, 1000) * qvar
    difference = R(97, 1000) * dvar
    substitution = {
        u: (total - difference) / 2,
        v: (total + difference) / 2,
        s: R(7, 64) + eta / 1600,
    }
    assert R(347, 1000) - R(1, 4) == R(97, 1000)
    near_rows = [
        ((4, 4, 2), [42608, 495578, 1060234, 1754000, 2593751]),
        ((6, 6, 2), [96401, 213295, 345096, 494730, 665376, 860372, 1083132]),
        ((6, 6, 3), [348924, 453900, 547176, 630129, 704650, 773034, 837883]),
        ((7, 7, 3), [436511, 451094, 448050, 418015, 367879, 302454, 222516, 128928]),
        ((6, 6, 3), [294942, 280045, 254818, 219391, 174027, 119091, 55028]),
        ((1, 1, 3), [442776, 268716]),
    ]
    near_coefficients_checked = 0
    for polynomial, (degrees, bounds) in zip(polynomials, near_rows):
        coefficients = bernstein_coefficients(
            polynomial.subs(substitution), (qvar, dvar, eta), degrees
        )
        assert len(bounds) == degrees[1] + 1
        for index, value in coefficients.items():
            bound = bounds[index[1]]
            assert bound > 0
            assert value >= R(bound, 10**8)
        near_coefficients_checked += len(coefficients)

    assert far_coefficients_checked == 32
    assert near_coefficients_checked == 886
    print("PASS: all eleven moving-F determinants and scalar elimination identities")
    print("PASS: moving-F u>=v argument and exact far-range scalar margin")
    print("PASS: 32 far-range and 886 near-range rational Bernstein coefficient bounds")


check_moving_chamber()
