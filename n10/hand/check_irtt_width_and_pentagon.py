"""Recompute the published IRTT width tables and determinant identities."""

from pathlib import Path

import sympy as sp


def determinant(p, q, r):
    return (q[0] - p[0]) * (r[1] - p[1]) - (q[1] - p[1]) * (r[0] - p[0])


def equal(left, right):
    assert sp.expand(left - right) == 0


def table_row(line):
    return [cell.strip() for cell in line.strip("|").split("|")]


def chart_coefficients(bounds, left, right):
    a, b, c, d = bounds
    t = sp.Symbol("t")
    n, h = left + right*t, 1 + t
    # Homogenize T(n/h) directly, independently of its endpoint derivatives.
    numerator = 4*a*n*(c*h + (d-c)*n)*h - (n-b*h)**2*(h-n)
    poly = sp.Poly(numerator, t)
    return [poly.nth(i) for i in range(4)]


Q = sp.Rational
s, alpha = Q(93, 1000), Q(1037, 10000)
width = 1 - alpha
sigma, tau = s/width, s/(1-Q(19, 100))
assert s-alpha*(1-alpha) == Q(5369, 10**8)
assert sigma == Q(930, 8963) and tau == Q(31, 270)

note = Path(__file__).with_name("N6_IRTT_CORE_CAPS.md").read_text()
rows = [table_row(line) for line in note.splitlines() if line.startswith("| ")]
cap_rows = [row for row in rows if len(row) == 6 and row[0][0].isdigit()]
values = {"sigma": sigma, "3sigma": 3*sigma}
expected_caps = [Q(8963, 25000), Q(295779, 2000000), Q(80667, 500000), Q(8963, 62500)]
for i, (row, cap) in enumerate(zip(cap_rows, expected_caps, strict=True)):
    bounds = [values[v] if v in values else Q(v) for v in row[:4]]
    baseline = [sigma if i == 0 else 3*sigma, sigma, sigma, sigma]
    assert all(value == baseline[j] for j, value in enumerate(bounds) if j != i)
    assert bounds[i]*width == cap
    mid = Q(row[4])
    assert bounds[1] < mid < 1
    coeffs = chart_coefficients(bounds, bounds[1], mid) + chart_coefficients(bounds, mid, 1)
    assert min(coeffs) == Q(row[5]) > 0
assert s/expected_caps[0] == Q(2325, 8963)

bottom_rows = [row for row in rows if len(row) == 3 and "/" in row[0]]
assert len(bottom_rows) == 6
prev = tau
for row in bottom_rows:
    left, right, printed = map(Q, row)
    assert left == prev and left < right
    assert min(chart_coefficients([3*tau, tau, tau, tau], left, right)) == printed > 0
    prev = right
assert prev == 1 and 1-s/Q(19, 100) == Q(97, 190)

a, b, c, e, f, h, u, v, r, w, j, k = sp.symbols("a b c e f h u v r w j k")
A, B, C, E, H = (0, a), (b, 0), (c, 0), (1, e), (0, h)
R, S, Qpoint = (r, w), (j, k), (u, v)
equal(determinant(C, Qpoint, R) - determinant(C, Qpoint, E), (u-c)*(w-e)+v*(1-r))
equal(determinant(Qpoint, E, R), (1-u)*(w-e)+(e-v)*(1-r))
dx, dy = r-j, w-k
for p, q, gap in [(A, H, (h-a)*dx), (B, A, a*dx+b*dy),
                  (C, B, (c-b)*dy), (Qpoint, C, (u-c)*dy-v*dx)]:
    equal(determinant(p, R, S) - determinant(q, R, S), gap)

# The affine normalization reverses orientation; unsigned areas are -det.
b, d, u, v = sp.symbols("b d u v")
A, B, C, D, E = (1, 0), (b, 0), (b*u, d*v), (0, d), (0, 1)
X, Y, Z = [-determinant(A, q, r) for q, r in [(B, E), (D, E), (B, D)]]
equal(X-Z, Y+determinant(B, D, E))
equal(X*Y, X-Z)
for triple, value in [((A, B, C), d*(1-b)*v), ((B, C, D), b*d*(1-u-v)),
                      ((C, D, E), b*(1-d)*u)]:
    equal(-determinant(*triple), value)
equal(d*(1-b)+b*d+b*(1-d), 1-(X-Z))
assert 3*40**2 - 69**2 == 39
print("56 cubic coefficients, four radial gaps, hull turns and pentagon support identities pass.")
