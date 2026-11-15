"""Exact algebra checks for BALANCED_RIGHT_MIXED.md; no numerical search."""

import sympy as sp


def doubled(a, b, c):
    return sp.det(sp.Matrix.hstack(b - a, c - a))


b, q, v, r, l, h, x, z, a, y = sp.symbols(
    "b q v r l h x z a y", real=True
)
lam = 1 - q
u = 1 - v
D = sp.Matrix([0, 1])
C = sp.Matrix([1, 1])
E = sp.Matrix([0, lam])
B = sp.Matrix([b, 0])
R = sp.Matrix([r, u])
L = sp.Matrix([l, h])
S = sp.Matrix([x, z])
Q = sp.Matrix([a, y])

identities = [
    (doubled(D, E, R), q * r),
    (doubled(C, L, R), v * (1 - l) - (1 - r) * (1 - h)),
    (doubled(E, B, R), b * u + lam * (r - b)),
    (doubled(D, E, L), q * l),
    (doubled(E, C, L), h - lam - q * l),
    (doubled(R, C, S), v * (1 - x) - (1 - r) * (1 - z)),
    (doubled(D, R, S) + doubled(R, C, S), z - u),
    (doubled(C, B, S), x - b - (1 - b) * z),
    (doubled(B, R, S), (r - b) * z - u * (x - b)),
    (doubled(E, B, S), b * z + lam * (x - b)),
    (doubled(B, C, Q), b + (1 - b) * y - a),
    (doubled(L, R, Q), (r - l) * y + h * (a - r) + u * (l - a)),
    (doubled(E, B, Q), b * y + lam * (a - b)),
    (
        doubled(B, S, Q),
        (x - b - (1 - b) * z) * y
        + z * (b + (1 - b) * y - a),
    ),
]
for lhs, rhs in identities:
    assert sp.expand(lhs - rhs) == 0

s = sp.Rational(7, 64)
assert sp.Rational(13, 16) - (1 - s) ** 2 == sp.Rational(79, 4096)
assert sp.Rational(13, 16) / (1 - s) == sp.Rational(52, 57)
assert s / (1 - s) == sp.Rational(7, 57)
assert 2 * s > sp.Rational(3, 16)
assert 3 * s > sp.Rational(47, 160)

lam_var = sp.symbols("lam", real=True)
area = b * z + lam_var * (x - b)
height = z - s * (2 * z - lam_var) / area
assert sp.factor(
    sp.diff(height, x) - s * lam_var * (2 * z - lam_var) / area**2
) == 0
assert sp.factor(
    sp.diff(height, lam_var)
    - s / area
    - s * (2 * z - lam_var) * (x - b) / area**2
) == 0
assert sp.factor(
    sp.diff(height, z) - 1 + s * lam_var * (2 * x - b) / area**2
) == 0
assert 1 - sp.Rational(1, 24) / s == sp.Rational(13, 21)

w, t = sp.symbols("w t", real=True)
z_star = 1 - 2 * s / w
area_star = sp.Rational(1227, 1024) - 13 * w / 16 - 7 / (32 * w)
assert sp.factor(
    area.subs({b: 1 - w, x: 1 - s, z: z_star, lam_var: sp.Rational(3, 16)})
    - area_star
) == 0

poly = sp.factor(
    w**2
    * (
        area_star * (z_star - sp.Rational(47, 160))
        - s * (2 * z_star - sp.Rational(3, 16))
    )
)
assert sp.expand(
    poly + (94016 * w**3 - 135291 * w**2 + 60417 * w - 7840) / 163840
) == 0
shifted = (
    -sp.Rational(1469, 2560) * t**3
    - sp.Rational(169689, 819200) * t**2
    + sp.Rational(9873, 4096000) * t
    - sp.Rational(403, 5120000)
)
assert sp.expand(poly.subs(w, t + sp.Rational(3, 5)) - shifted) == 0
quadratic = (
    -sp.Rational(122681, 819200) * t**2
    + sp.Rational(9873, 4096000) * t
    - sp.Rational(403, 5120000)
)
assert sp.factor(
    quadratic
    - shifted
    - sp.Rational(1469, 2560) * t**2 * (t + sp.Rational(1, 10))
) == 0
disc = sp.discriminant(quadratic, t)
assert disc == -sp.Rational(693570959, 16777216000000)
assert disc < 0
assert sp.Poly(quadratic, t).LC() < 0

height_bound = sp.Rational(47, 160)
horizontal_bound = sp.Rational(1, 2) + height_bound / 2 - s
assert horizontal_bound < sp.Rational(52, 57)
final_bound = (
    (sp.Rational(45, 57) + 3 * s / 2) * height_bound
    + 3 * s * (sp.Rational(1, 2) - s - sp.Rational(52, 57))
)
assert final_bound == sp.Rational(10597, 97280)
assert s - final_bound == sp.Rational(43, 97280) > 0

print("All right mixed-cell identities and exact rational gaps verified.")
