"""Exact algebra for the complete seven-boundary smaller-left pair proof.

This diagnostic checks identities and printed rational signs. Geometric
containments, sign exhaustiveness, and monotone substitutions are proved in
SEVEN_BOUNDARY_LEFT_PAIR.md; this script is not a coordinate search.
"""

import sympy as sp

s = sp.Rational(7, 64)
a, h, b, c, d, e, f, x, y, alpha, t = sp.symbols(
    "a h b c d e f x y alpha t"
)
L = h - a
M = c - b
R = e - d


def equal(left, right):
    assert sp.simplify(left - right) == 0, (left, right)


def det(A, B, C):
    return sp.det(sp.Matrix([[B[0] - A[0], B[1] - A[1]],
                             [C[0] - A[0], C[1] - A[1]]]))


A, H, B, C, D, E, F, Q = (
    (0, a), (0, h), (b, 0), (c, 0), (1, d), (1, e), (f, 1), (x, y)
)
AFQ = det(A, F, Q)
ABQ = det(A, B, Q)
HBQ = det(H, B, Q)
QCH = det(Q, C, H)
equal(AFQ, f * (y - a) - (1 - a) * x)
equal(ABQ, b * (y - a) + a * x)
equal(HBQ, h * x + b * y - b * h)
equal(QCH, c * h - h * x - c * y)
equal(HBQ + QCH, M * (h - y))
equal(a * AFQ + (1 - a) * ABQ,
      (b * (1 - a) + a * f) * (y - a))
equal(h * AFQ + (1 - a) * HBQ,
      (h * f + (1 - a) * b) * y - h * f * a - b * h * (1 - a))

Y = h - 2 * alpha
T = Y - a
equal(((h * f + (1 - a) * b) * y - h * f * a - b * h * (1 - a)).subs(y, Y),
      h * f * T - 2 * alpha * b * (1 - a))
equal(h * T + 2 * alpha * a, L * Y)
equal((h + 1 - a) * T + 2 * alpha, L * (1 + T))
equal(f * T * (h * T + 2 * alpha * a)
      - s * ((h + 1 - a) * T + 2 * alpha),
      L * (T * (f * Y - s) - s))

# Boundary areas and first alpha/height bounds.
equal(det(A, B, H), b * L)
equal(det(A, B, C), a * M)
equal(det(B, C, D), d * M)
equal(det(C, D, E), (1 - c) * R)
equal(det(H, E, F), 1 - ((1 - f) * h + f * e))
assert s / (1 - 2 * s) == sp.Rational(7, 50)
alpha_poly = 192 * alpha**2 - 139 * alpha + 18
equal(64 * ((1 - 3 * alpha) * ((1 - 2 * alpha) / 2 - s) - s),
      alpha_poly)
assert alpha_poly.subs(alpha, sp.Rational(17, 100)) == -sp.Rational(203, 2500)
assert 384 * sp.Rational(1, 3) - 139 < 0
height_test = (1 - s - sp.Rational(21, 50)) * (
    (1 - s - sp.Rational(7, 25)) / 2 - s
)
assert s - height_test == sp.Rational(87869, 5120000) > 0

# Scalar height replacement and exact lower alpha endpoint.
D_t = 2 * (1 - s) - t - alpha
T_t = t - a - 2 * alpha
B_t = 1 - s / alpha - s / D_t
Psi = (1 - a) * B_t + a / 2 - s / T_t
equal(D_t - T_t, 2 * (1 - s - t) + a + alpha)
equal(sp.diff(Psi, t), s / T_t**2 - s * (1 - a) / D_t**2)
Astar = 1 - 2 * s
B1 = 1 - s / alpha - s / (Astar - alpha)
equal(B_t.subs(t, 1), B1)
equal(sp.diff(B1, alpha), s / alpha**2 - s / (Astar - alpha)**2)
assert B1.subs(alpha, sp.Rational(5, 32)) == sp.Rational(1, 8)
equal((1 + 3 * a) * (sp.Rational(18, 25) - a) / 8,
      sp.Rational(6241, 60000) - sp.Rational(3, 8) * (a - sp.Rational(29, 150))**2)
assert sp.Rational(6241, 60000) < s
equal(sp.diff(Psi.subs(t, 1), a), sp.Rational(1, 2) - B1 - s / (1 - a - 2 * alpha)**2)
assert s / sp.Rational(17, 32)**2 == sp.Rational(112, 289)
assert sp.Rational(3, 8) - sp.Rational(112, 289) == -sp.Rational(29, 2312)
psi = (1 - alpha) * B1 + alpha / 2 - s / (1 - 3 * alpha)
equal(sp.diff(psi, alpha),
      sp.Rational(1, 2) - B1 + (1 - alpha) * sp.diff(B1, alpha)
      - 3 * s / (1 - 3 * alpha)**2)
assert B1.subs(alpha, sp.Rational(1, 6)) == sp.Rational(313, 1888) < sp.Rational(1, 2)
assert s / (sp.Rational(25, 32) - sp.Rational(1, 6))**2 == sp.Rational(1008, 3481)
assert sp.Rational(63, 16) - sp.Rational(1008, 3481) > sp.Rational(7, 2)
assert sp.Rational(5, 6) * sp.Rational(7, 2) - 12 * s == sp.Rational(77, 48) > 0
assert psi.subs(alpha, sp.Rational(33, 200)) == -sp.Rational(2071033, 2629070400)
assert sp.Rational(5, 32) < sp.Rational(33, 200) < sp.Rational(1, 6)

# All remaining rational box bounds.
assert s - (sp.Rational(99, 100) - sp.Rational(99, 200)) * (
    (sp.Rational(99, 100) - sp.Rational(33, 100)) / 2 - s
) == sp.Rational(53, 320000) > 0
assert s - sp.Rational(101, 200) * (
    sp.Rational(97, 200) * sp.Rational(67, 100) - s
) == sp.Rational(4077, 8000000) > 0
assert s - sp.Rational(193, 400) * (
    sp.Rational(67, 200) - s
) == sp.Rational(327, 640000) > 0
assert sp.Rational(57, 32) - sp.Rational(99, 100) == sp.Rational(633, 800)
assert sp.Rational(33, 200) + sp.Rational(7, 11) - sp.Rational(633, 800) == sp.Rational(89, 8800) > 0
b_test = (sp.Rational(4, 25) * (1 - a) + a / 2) * (sp.Rational(67, 100) - a)
assert sp.diff(b_test, a, 2) < 0
assert sp.diff(b_test, a).subs(a, sp.Rational(33, 200)) < 0
assert s - b_test.subs(a, sp.Rational(33, 200)) == sp.Rational(489, 2000000) > 0
assert s / sp.Rational(17, 100) == sp.Rational(175, 272)
assert sp.Rational(4, 25) + sp.Rational(175, 272) > sp.Rational(4, 5)
assert sp.Rational(53, 64) - sp.Rational(175, 272) < sp.Rational(3, 16)
assert sp.Rational(633, 800) - 5 * s == sp.Rational(391, 1600)

# AEP is positive: barycentric vertex values and lower bound.
JE = c * e + (1 - c) * a
U = 1 - a - f * (e - a)
Z = c * (1 - h) + f * h
equal(det(A, E, H), L)
equal(det(A, E, C), -JE)
equal(det(A, E, F), U)
equal(det(H, C, F), Z)
equal(Z, f + (c - f) * (1 - h))
assert sp.Rational(1, 2) + (sp.Rational(53, 64) - sp.Rational(97, 200)) / 100 == sp.Rational(80549, 160000) < sp.Rational(63, 125)
assert sp.Rational(99, 100) - sp.Rational(3, 16) == sp.Rational(321, 400)
assert 1 - (sp.Rational(3, 16) + sp.Rational(633, 800)) / 2 == sp.Rational(817, 1600)
assert sp.Rational(53, 64) * sp.Rational(633, 800) + sp.Rational(11, 64) * sp.Rational(3, 16) == sp.Rational(35199, 51200)
assert sp.Rational(321, 400) + sp.Rational(817, 1600) == sp.Rational(2101, 1600)
k0 = s / sp.Rational(63, 125)
assert k0 == sp.Rational(875, 4032) < sp.Rational(1, 2)
eta_lower = k0 * sp.Rational(2101, 1600) - (1 - 2 * k0) * sp.Rational(35199, 51200)
assert eta_lower == -sp.Rational(1535437, 14745600)
assert eta_lower + s == sp.Rational(77363, 14745600) > 0

# Positive HDP: barycentric upper bound in BCF.
UD = 1 - h + (h - d) * f
VB = (1 - b) * h + b * d
J = (1 - c) * h + c * d
equal(det(H, D, F), UD)
equal(det(H, D, B), -VB)
equal(det(H, D, C), -J)
equal(2 * UD + VB + J, 2 + (h - d) * (2 * f - b - c))
assert 1 - (sp.Rational(99, 100) + sp.Rational(33, 200)) / 2 == sp.Rational(169, 400)
assert sp.Rational(3, 16) + sp.Rational(53, 64) == sp.Rational(65, 64)
assert sp.Rational(97, 100) - sp.Rational(65, 64) == -sp.Rational(73, 1600) > -sp.Rational(3, 64)
assert 2 - sp.Rational(3, 64) == sp.Rational(125, 64)
hdp_upper = sp.Rational(169, 400) - sp.Rational(33, 200) * sp.Rational(125, 64)
assert hdp_upper == sp.Rational(1283, 12800)
assert s - hdp_upper == sp.Rational(117, 12800) > 0

# Negative HDP: barycentric upper bound for AEP in HCD.
equal(det(H, C, D), J)
equal(det(A, E, D), -R)
equal(JE + R, (1 - c) * a + c * d + (c + 1) * R)
J0 = sp.Rational(791, 2000)
L0 = sp.Rational(167, 200)
T0 = sp.Rational(33, 200) + 9 * s
assert 1 - sp.Rational(4, 5) * (1 - sp.Rational(391, 1600)) == J0
assert 1 - sp.Rational(33, 200) == L0
assert J0 > 2 * s
assert J0 * L0 - s * (J0 + 2 * L0 + T0) == -sp.Rational(273721, 12800000) < 0

print("PASS: four-area elimination and exact boundary box")
print("PASS: AEP sign and both HDP alternatives")
