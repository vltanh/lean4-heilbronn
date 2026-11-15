"""Optional transcription checks for CORNER_FAMILIES.md; no numerical proof."""
from itertools import combinations

import sympy as sp


def bracket(u, v):
    return sp.Rational(1, 2) * (u[0] * v[1] - u[1] * v[0])


v = [sp.symbols(f"x{i} y{i}") for i in range(5)]
a4 = [bracket(v[i], v[(i + 1) % 4]) for i in range(4)]
assert sp.expand(
    bracket(v[0], v[2]) * bracket(v[1], v[3])
    - a4[0] * a4[2] + a4[1] * a4[3]
) == 0

a5 = [bracket(v[i], v[(i + 1) % 5]) for i in range(5)]
b5 = [bracket(v[i], v[(i + 2) % 5]) for i in range(5)]
for i in range(5):
    assert sp.expand(
        b5[i] * b5[(i + 1) % 5]
        + a5[(i + 1) % 5] * b5[(i + 3) % 5]
        - a5[i] * a5[(i + 2) % 5]
    ) == 0

# In the proof two negative diagonal signs must be consecutive. Enumerate
# only the resulting eleven sign words, checking the stated choice of identity.
words = 0
for mask in range(32):
    neg = {i for i in range(5) if mask & (1 << i)}
    if any((j - i) % 5 not in (1, 4) for i, j in combinations(neg, 2)):
        continue
    assert len(neg) <= 2
    assert any(
        (i in neg) == ((i + 1) % 5 in neg) and (i + 3) % 5 not in neg
        for i in range(5)
    )
    words += 1
assert words == 11

# Support-triangle coordinates and exact threshold comparison.
rho, eta = sp.symbols("rho eta")
rx = (1 - eta) / (1 - rho * eta)
ry = rho * rx
assert sp.cancel(ry - rho * rx) == 0
assert sp.cancel(rx - (1 - eta + eta * ry)) == 0
assert sp.cancel(rx - ry - (1 - rho) * (1 - eta) / (1 - rho * eta)) == 0
assert 18**2 * 65 - 145**2 == 35

# The five areas used in the two-interior-point lemma.
aa, hh, lam, mu, pp, qq = sp.symbols("a h lam mu p q")
rr = (aa, hh)
ss1 = (aa * (1 - lam), hh * (1 - lam))
ss2 = (aa + mu * (1 - aa), hh * (1 - mu))
ppoint, qpoint = (pp, 0), (qq, 0)


def area_signed(u, v, w):
    return bracket((v[0] - u[0], v[1] - u[1]),
                   (w[0] - u[0], w[1] - u[1]))


assert sp.expand(area_signed(rr, ss1, ppoint) - lam * hh * pp / 2) == 0
assert sp.expand(area_signed(rr, qpoint, ss2) - mu * hh * (1 - qq) / 2) == 0
assert sp.expand(area_signed(rr, ppoint, qpoint) - hh * (qq - pp) / 2) == 0
assert sp.expand(area_signed(ss1, qpoint, ppoint) - (lam - 1) * hh * (qq - pp) / 2) == 0
assert sp.expand(area_signed(ss2, qpoint, ppoint) - (mu - 1) * hh * (qq - pp) / 2) == 0
assert sp.expand(area_signed(rr, ss1, ss2) - lam * mu * hh / 2) == 0

# Distributed three-interior-point mesh, with counterclockwise outer triangle.
outer_a, outer_b, outer_c = (0, 0), (1, 0), (0, 1)
inner_x = sp.symbols("xx xy")
inner_y = sp.symbols("yx yy")
inner_z = sp.symbols("zx zy")
ears = [area_signed(outer_a, outer_b, inner_z),
        area_signed(outer_b, outer_c, inner_x),
        area_signed(outer_c, outer_a, inner_y)]
connectors = [area_signed(outer_a, inner_z, inner_y),
              area_signed(outer_b, inner_x, inner_z),
              area_signed(outer_c, inner_y, inner_x)]
center = area_signed(inner_z, inner_x, inner_y)
cross_u = [area_signed(outer_a, inner_z, inner_x),
           area_signed(outer_b, inner_x, inner_y),
           area_signed(outer_c, inner_y, inner_z)]
cross_v = [area_signed(outer_a, inner_x, inner_y),
           area_signed(outer_b, inner_y, inner_z),
           area_signed(outer_c, inner_z, inner_x)]
for i in range(3):
    assert sp.expand(connectors[i] - cross_u[i] - cross_v[i] + center) == 0
    assert sp.expand(ears[i] * center - connectors[i] * connectors[(i + 1) % 3]
                     + cross_u[i] * cross_v[(i + 1) % 3]) == 0
assert sp.expand(sum(ears) + sum(connectors) + center - sp.Rational(1, 2)) == 0

# Exact attainment: enumerate the 20 areas, after specializing the golden ratio.
phi = (1 + sp.sqrt(5)) / 2
rratio = 1 / (4 + 3 * phi)
bary_y = [rratio * (phi + 2), rratio, rratio * (2 * phi + 1)]
bary_z = [rratio * (2 * phi + 1), rratio * (phi + 2), rratio]
bary_x = [rratio, rratio * (2 * phi + 1), rratio * (phi + 2)]
points = [outer_a, outer_b, outer_c] + [(p[1], p[2]) for p in (bary_x, bary_y, bary_z)]
counts = {}
for triple in combinations(points, 3):
    val = sp.simplify(2 * sp.Abs(area_signed(*triple)))
    counts[val] = counts.get(val, 0) + 1
expected = {sp.Integer(1): 1,
            sp.simplify(rratio): 7,
            sp.simplify((phi + 2) * rratio): 3,
            sp.simplify((2 * phi + 1) * rratio): 3,
            sp.simplify(phi * rratio): 6}
assert counts == expected, (counts, expected)

# Projective normalization of a quadrilateral with one nearly square corner.
eps, eta = sp.symbols("eps eta")
rr = 1 - eps - eta
alpha = (1 - eta) / (1 - eps)
gg = -eta * (1 - eta) / (rr * (1 - eps))
hh = eps / rr
ee = (1 - eta) / rr
matrix = sp.Matrix([[alpha, 0, 0], [gg, ee, 0], [gg, hh, 1]])
assert sp.cancel(ee - 1 - hh) == 0
assert sp.cancel(alpha - 1 - gg - hh) == 0
assert sp.cancel(matrix.det() - alpha * ee) == 0
for original, expected, weight in [
    ((0, 0), (0, 0), 1),
    ((0, 1), (0, 1), ee),
    ((1, 1), (1, 1), alpha),
    ((1 - eps, eta), (1, 0), 1 - eta),
]:
    lifted = matrix * sp.Matrix([original[0], original[1], 1])
    assert sp.cancel(lifted[2] - weight) == 0
    assert sp.cancel(lifted[0] / lifted[2] - expected[0]) == 0
    assert sp.cancel(lifted[1] / lifted[2] - expected[1]) == 0
assert sp.cancel(alpha / ee**2 - rr**2 / ((1 - eps) * (1 - eta))) == 0
assert sp.Rational(4) * sp.Rational(193, 200)**2 / sp.Rational(393, 200)**2 == sp.Rational(148996, 154449)
assert 7 * 2830924 - 128 * 154449 == 46996
assert 67**2 < 5 * 30**2
assert sp.Rational(177, 10) * sp.Rational(7, 128) == sp.Rational(1239, 1280) > sp.Rational(193, 200)

# Quantitative six-point mesh: center and connector bounds.
s = sp.Rational(7, 64)
zmax = 1 / s - 7
assert zmax == sp.Rational(15, 7)
assert (zmax**2 / 3 + zmax - 3) / 6 == sp.Rational(11, 98)
assert sp.Rational(109, 98) < sp.Rational(9, 8)
assert 1 - sp.Rational(47, 6) * s == sp.Rational(55, 384)
aa, bb, cc, kap, uu, vv = sp.symbols("A B C kappa U V")
num_a = aa * (uu - cc) + kap * (uu + 1)
num_b = bb * (vv - cc) + kap * (vv + 1)
gap = (cc * aa * bb + aa * (vv - kap) * (vv + 1)
       + bb * (uu - kap) * (uu + 1)
       - (1 + kap) * uu * vv - kap * (cc + kap + 1))
assert sp.expand((aa * bb * uu * vv - kap * uu * vv - num_a * num_b
                   - kap * gap).subs(vv, cc + kap - uu)) == 0
mm = sp.Rational(43, 7) - kap - cc
ff = 177 * cc / 49 - 89 * kap / 7 + sp.Rational(57, 7) + (kap - 2)**2 / (4 * cc)
endpoint = (2 * (1 - kap) * mm
            + (sp.Rational(36, 7) * cc + kap - 2)**2 / (4 * cc)
            - ((1 + 2 * kap) * (cc + kap) - 1))
assert sp.cancel(endpoint - ff) == 0
assert ff.subs({cc: sp.Rational(6, 5), kap: 1}) == -sp.Rational(167, 5880)
assert sp.cancel(sp.diff(ff, kap) + sp.Rational(89, 7) - (kap - 2) / (2 * cc)) == 0
assert sp.cancel(sp.diff(ff, cc) - sp.Rational(177, 49) + (kap - 2)**2 / (4 * cc**2)) == 0

# Uniform signs for a point below the occupied diagonal.
u, v, p, q, c, a, x, y = sp.symbols("u v p q c a x y")
upper_y, upper_z, upper_x, lower_r = (u, v), (p, q), (c, 1 - a), (x, y)
h, z, kk, qq = 1 - v, 1 - q, 1 - v - a, (1 - v) * c - a * u
central = -2 * area_signed(upper_x, upper_y, upper_z)
assert sp.expand(central - qq - z * (u - c) + p * kk) == 0
assert sp.expand(2 * area_signed(upper_x, upper_y, lower_r)
                 - (c - u) * (1 - y) - kk * x + qq) == 0
b0 = (z * (1 + s) - s) / (p + z)
f0 = (c - u) * b0 + kk * (1 + s - b0) - qq
expected_f0 = ((1 + s) * (qq - central) + s * (kk - c + u)) / (p + z) - qq
assert sp.cancel(f0 - expected_f0) == 0
ee = sp.Rational(55, 384)
assert ee * (1 - 3 * s) == sp.Rational(2365, 24576) < s
assert 3 * s - ee == sp.Rational(71, 384) > sp.Rational(1, 8)
assert (3 * s - ee) / (1 - 3 * s) == sp.Rational(71, 258) > sp.Rational(1, 4)

# A-side feasible triangle and all three Z-determinants.
dd, cross_e = u - c, qq + u - c
ell, right = (s + cross_e) / kk, (u - s) / h
y0, x0 = v - s * (kk + h) / qq, u + s * (u + dd) / qq
left_vertex, right_vertex, top_vertex = (ell, 0), (right, 0), (x0, y0)
cross_p = u * (1 - q) - h * p
g0 = q * qq * y0 / (h * kk)
g1 = (s + central) * y0 / kk
g2 = (cross_p - s) * y0 / h
assert sp.cancel(kk * u - h * dd - qq) == 0
assert sp.cancel(h * x0 + u * y0 - u + s) == 0
assert sp.cancel(kk * x0 + dd * y0 - s - cross_e) == 0
for first, second, expected in [
    (left_vertex, right_vertex, g0),
    (left_vertex, top_vertex, g1),
    (right_vertex, top_vertex, g2),
]:
    assert sp.cancel(2 * area_signed(upper_z, first, second) - expected) == 0
assert sp.cancel(g1 - g2 - (right - ell) * (q - y0)) == 0
connector_j = 2 * area_signed((1, 1), upper_x, upper_y)
connector_w = -2 * area_signed((0, 1), upper_x, upper_z)
cross_v = -2 * area_signed((1, 1), upper_z, upper_x)
assert sp.expand(connector_j - kk + qq) == 0
assert sp.expand(connector_w * connector_j - a * central - qq * cross_v) == 0
assert sp.expand(1 - q - a - connector_w - cross_v) == 0
assert sp.expand(connector_w - cross_p - qq + central) == 0

rho, gamma = sp.symbols("rho gamma", positive=True)
g1bound = ((sp.Rational(17, 8) * s)
           * (1 - sp.Rational(21, 5) * s - s * rho
              - sp.Rational(17, 5) * s / rho)
           / (s * rho + sp.Rational(6, 5) * s))
poly1 = 875 * rho**2 - 2605 * rho + 2023
assert sp.cancel((s - g1bound) * (512 * rho * (5 * rho + 6)) - poly1) == 0
assert sp.discriminant(poly1, rho) == -294475
assert 1 / s - sp.Rational(32, 5) == sp.Rational(96, 35)
height_bound = 1 - s * (rho + gamma + 3) - s * (2 * gamma + 1) / rho
zheight_bound = 1 - 2 * s - s * (1 + rho) / gamma
g0bound = zheight_bound * rho * height_bound / (s * (rho + gamma) * (rho + gamma + 1))
nn = (49 * gamma**3 + 448 * gamma**2 * rho + 749 * gamma**2
      + 350 * gamma * rho**2 - 2248 * gamma * rho + 252 * gamma
      - 49 * rho**3 + 252 * rho**2 + 252 * rho - 49)
assert sp.cancel(s - g0bound - nn / (448 * gamma * (gamma + rho) * (gamma + rho + 1))) == 0
assert sp.expand(sp.diff(nn, gamma, 2) - 14 * (21 * gamma + 64 * rho + 107)) == 0
nd = 2 * (4375 * rho**2 - 14660 * rho + 28266) / 25
assert sp.expand(sp.diff(nn, gamma).subs(gamma, sp.Rational(6, 5)) - nd) == 0
assert sp.discriminant(nd, rho) == -sp.Rational(44758304, 25)
poly0 = -6125 * rho**3 + 84000 * rho**2 - 225060 * rho + 177079
assert sp.expand(125 * nn.subs(gamma, sp.Rational(6, 5)) - poly0) == 0
quad0 = 71750 * rho**2 - 225060 * rho + 177079
assert sp.expand(poly0 - quad0 - 6125 * rho**2 * (2 - rho)) == 0
assert sp.discriminant(quad0, rho) == -169669400
assert sp.diff(poly0, rho).subs(rho, 2) == 37440
assert sp.diff(poly0, rho).subs(rho, sp.Rational(96, 35)) == 97500
assert sp.diff(poly0, rho, 3) == -36750
assert poly0.subs(rho, 2) == 13959
assert 4 * s - (1 - sp.Rational(26, 5) * s) == sp.Rational(1, 160)

print("PASS: degree-four Pluecker identity")
print("PASS: five cyclic degree-five Pluecker identities")
print("PASS: all eleven possible diagonal sign words")
print("PASS: support-triangle coordinates and exact threshold comparison")
print("PASS: two-interior-point area formulas")
print("PASS: distributed six-point mesh identities and all 20 attaining areas")
print("PASS: projective normalization, corner images, and exact area factors")
print("PASS: quantitative connector elimination and exact rational obstruction")
print("PASS: uniform lower-point sign identities and constants")
print("PASS: A-side feasible triangle and all three vertex-pair formulas")
print("PASS: both exact polynomial certificates closing the 3+3 class")
print("Written geometric and triangulation arguments remain to be reviewed by a reader.")
