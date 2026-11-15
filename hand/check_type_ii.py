#!/usr/bin/env python3
"""Exact transcription diagnostics for TYPE_II.md; not a search or proof premise."""

import sympy as sp


def equal(left, right, name):
    difference = sp.factor(left - right)
    assert difference == 0, (name, difference)
    print(f"PASS: {name}")


b, beta, h, lam, z, q, qx, px, py, s, u, v = sp.symbols(
    "b beta h lam z q qx px py s u v", real=True
)
k = 3 - 2 * sp.sqrt(2)
sigma = sp.Rational(7, 64)

equal(
    2 - beta + (h - beta) * (2 / beta - 1),
    h * (2 / beta - 1),
    "five-point cell-II elimination",
)
equal(
    k * (2 - beta) - beta * (1 - beta),
    (beta - (2 - sp.sqrt(2))) ** 2,
    "five-point endpoint scalar square",
)
equal(
    b * (1 - s / (k * (1 - b))) + (1 - b) * (1 - 3 * s / b),
    1 - s * (b / (k * (1 - b)) + 3 * (1 - b) / b),
    "occupancy (2,1,3) elimination",
)


def det(P, Q, R):
    return sp.det(sp.Matrix.hstack(Q - P, R - P))


B = sp.Matrix([b, 0])
C = sp.Matrix([1, 1])
E = sp.Matrix([0, lam])
P = sp.Matrix([px, py])
Q = sp.Matrix([qx, q])
R = sp.Matrix([u, v])
Dq = b * (q - lam) + lam * qx

equal(-det(B, E, Q), Dq, "actual support-contact triangle BEQ")
equal(-det(B, C, R), u - b - (1 - b) * v, "support-apex area")
equal(
    (q - lam) * det(B, P, Q) - q * det(E, P, Q),
    Dq * (py - q),
    "two-point chamber weighted determinant",
)

a = b * z + 1 - z
q0 = 1 - z + ((1 + z) * sigma + b * z**2) / (1 + b * z)
F = (1 - sigma - q) * (a * (q - (1 - z)) - (1 - z) * sigma)
F -= z * sigma * (2 * q - (1 - z))
equal(
    64 * (1 + b * z) * sp.diff(F, q).subs(q, q0),
    -b**2 * z**2 * (64 * z + 7)
    + b * z * (64 * z**2 - 28 * z - 21)
    - (50 * z**2 - 50 * z + 14),
    "chamber derivative at lower endpoint",
)
G = (
    448 * b**3 * z**3
    + b**2 * z**2 * (1890 - 3648 * z)
    + b * z * (3648 * z**2 - 5293 * z + 2135)
    + 399 * z**2 - 847 * z + 644
)
equal(
    F.subs(q, q0),
    -z * G / (4096 * (1 + b * z) ** 2),
    "chamber lower-endpoint cubic",
)
equal(
    sp.diff(G, b, 2),
    z**2 * (2688 * b * z + 3780 - 7296 * z),
    "chamber cubic concavity",
)
w = sp.symbols("w", real=True)
equal(
    G.subs({b: sp.Rational(1, 2), z: 1 - w}),
    sp.Rational(115, 2) + sp.Rational(851, 2) * w
    + 1129 * w**2 - 968 * w**3,
    "chamber positive endpoint expansion",
)
equal(
    -sp.Rational(495, 16) * b**2 + 15 * b,
    sp.Rational(20, 11)
    - sp.Rational(495, 16) * (b - sp.Rational(8, 33)) ** 2,
    "derivative square completion",
)

assert sp.Rational(7, 64) * sp.Rational(49, 5) > 1
assert sp.Rational(87, 5) > sp.Rational(3249, 196)
assert sp.Rational(17, 12) ** 2 > 2
assert sp.Rational(7, 5) ** 2 < 2
assert sp.Rational(56, 25) ** 2 > 5
assert sp.Rational(20, 11) < sp.Rational(37, 8)
assert 18**2 * 65 - 145**2 == 35
print("PASS: exact rational threshold comparisons")
print("TYPE_II_IDENTITY_PASS: 12 groups")

# Distributed central mesh: exact affine and Pluecker identities in Section 7.
xb, xc, yb, yc, zb, zc, qp, pp = sp.symbols('xb xc yb yc zb zc qp pp')
A = sp.Matrix([0, 0])
B = sp.Matrix([1, 0])
C = sp.Matrix([0, 1])
X = sp.Matrix([xb, xc])
Y = sp.Matrix([yb, yc])
Z = sp.Matrix([zb, zc])
E = sp.Matrix([qp, -pp])
XA, XB, XC = 1 - xb - xc, xb, xc
YA, YB, YC = 1 - yb - yc, yb, yc
ZA, ZB, ZC = 1 - zb - zc, zb, zc
ex, ey, ez = det(A, B, Z), det(B, C, X), det(C, A, Y)
ma, mb, mc, mk = det(A, Z, Y), det(B, X, Z), det(C, Y, X), det(Z, X, Y)
uA, uB, uC = det(A, Z, X), det(B, X, Y), det(C, Y, Z)
vA, vB, vC = det(A, X, Y), det(B, Y, Z), det(C, Z, X)
equal(ex + ey + ez + ma + mb + mc + mk, 1, 'central mesh partition')
equal(XB, ez + mc + vA, 'central X barycentric sum')
equal(ZA, ey + mb + vC, 'central Z barycentric sum')
equal(ma + vB, YC - ZC, 'central Y-Z coordinate difference')
equal(ma + uC, ZB - YB, 'central Z-Y coordinate difference')
equal(uA + mb, XC - ZC, 'central X-Z coordinate difference')
equal(
    ((1 + pp) * XB - s) * (ma + vB)
    - (ma + s + pp * (ma + uC)) * (XA + XB),
    mk * (1 + pp) - uC * (pp + XC) - s * (1 - XC + ma + vB),
    'two-point central-cut elimination',
)
equal(
    ((1 + pp) * uA - pp * vC - s) * (1 - YC)
    - (s + (1 + pp) * YB) * (uA + mb),
    mk * (1 + pp) - vC * (pp + YC) - s * (1 - YC + uA + mb),
    'one-point central-cut elimination',
)
equal(
    det(A, E, Z) * mk,
    ma * det(E, X, Z) - uA * det(E, Y, Z),
    'one-point central-cut Pluecker identity',
)
equal(det(A, E, Z), qp * ex + pp * ZB, 'one-point central-cut barycentric formula')
assert sp.Rational(113, 56) < sp.Rational(21, 10)
assert sp.Rational(357, 100) < sp.Rational(15, 4)
assert 5 * 224**2 - 495**2 == 5855
assert sp.Rational(23, 128) < sp.Rational(1, 5)
assert sp.Rational(361, 1920) < sp.Rational(7, 36)
assert sp.Rational(7, 48) > sp.Rational(1, 8)
print('PASS: central-triple rational comparisons')
print('TYPE_II_CENTRAL_TRIPLE_PASS: 11 further groups')

# The robust affine corollary only changes one cubic endpoint and constants.
equal(
    G.subs({b: sp.Rational(11, 20), z: 1 - w}),
    sp.Rational(8241, 1000) + sp.Rational(77669, 125) * w
    + sp.Rational(991823, 1000) * w**2
    - sp.Rational(122177, 125) * w**3,
    'robust chamber cubic endpoint',
)
assert sp.Rational(1435, 1408) > 1
assert sp.Rational(35, 248) > sp.Rational(1, 8)
assert sp.Rational(95, 216) * sp.Rational(2243, 5120) < sp.Rational(7, 36)
assert sp.Rational(13, 6) ** 2 < 5
print('PASS: robust affine rational comparisons')
print('TYPE_II_ROBUST_AFFINE_PASS: 2 further groups')
