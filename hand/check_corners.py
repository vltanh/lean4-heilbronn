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

print("PASS: degree-four Pluecker identity")
print("PASS: five cyclic degree-five Pluecker identities")
print("PASS: all eleven possible diagonal sign words")
print("PASS: support-triangle coordinates and exact threshold comparison")
print("PASS: two-interior-point area formulas")
print("PASS: distributed six-point mesh identities and all 20 attaining areas")
print("Written geometric and triangulation arguments remain to be reviewed by a reader.")
