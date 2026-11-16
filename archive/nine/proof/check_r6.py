#!/usr/bin/env python3
"""Exact transcription checks for the hand proof in R6_BOUND.md."""

import sympy as S


def equal(left, right=0):
    assert S.factor(left - right) == 0, S.factor(left - right)


u, v, X, Y, delta, epsilon = S.symbols("u v X Y delta epsilon")
s = S.Rational(7, 64)
m = S.Rational(7, 50)
q = S.Rational(43, 192)
equal(q, S.Rational(1, 3) - s)
equal(m, s / (1 - 2 * s))
a = 1 - u - X
b = 1 - v - Y
rho = a - delta
tau = b - epsilon
bp = u + delta
ep = 1 - v - epsilon
equal((1 - bp) * Y - ep * (1 - X - bp), X * Y - rho * tau)

rho_star = (s + Y * (s / v - a)) / (1 - Y)
tau_star = (s + X * (s / u - b)) / (1 - X)
phi = X * Y - rho_star * tau_star
B = s**2 / Y + s**2 / v - s + s * X - u**2 * s / X + u**2 * (1 - v - Y)
equal(S.diff(phi, u), X * Y * B / (u**2 * (1 - X) * (1 - Y)))
equal(3 * s / (2 * q) - 1 + 3 * m / 2 + 3 * m**2,
      S.Rational(73, 53750))
equal(s - S.Rational(3, 50), S.Rational(79, 1600))
print("PASS offset elimination, positive lower margins, and fixed-X derivative")

upper = 1 - u - 3 * s
rho_upper = S.factor(rho_star.subs(X, upper))
tau_upper = S.factor(tau_star.subs(X, upper))
equal(rho_upper, s * (1 + Y * (1 / v - 3)) / (1 - Y))
equal(tau_upper, b + (s * (1 - 3 * s) / u - b) / (u + 3 * s))
C = s * (1 - 3 * s) * (2 * u + 3 * s) / u**2
equal(S.diff(phi.subs(X, upper), u),
      -Y + rho_upper * (C - b) / (u + 3 * s)**2)
equal(C.subs(u, q), S.Rational(3129, 2752))
assert S.Rational(3129, 2752) > S.Rational(9, 8)
equal(q + 3 * s, S.Rational(53, 96))
equal(3 * q - m, S.Rational(851, 1600))
equal(S.Rational(21, 64) * (S.Rational(9, 8) - S.Rational(29, 50))
      / S.Rational(9, 16)**2 - S.Rational(851, 1600),
      S.Rational(1439, 43200))
print("PASS upper-edge derivative and positive rational bound")

G = S.factor(phi.subs({X: 2 * u, Y: 2 * v}))
equal(G, -(128 * u * v + 21) * (640 * u * v - 128 * u - 128 * v + 21)
      / (4096 * (2 * u - 1) * (2 * v - 1)))
P = (16384 * u * (1 - u) * v * (1 - 5 * v)
     + 8192 * v**2 - 5376 * v + 903)
equal(S.diff(G, u), P / (2048 * (1 - 2 * u)**2 * (1 - 2 * v)))
equal((8192 * v**2 - 5376 * v + 903).subs(v, S.Rational(1, 5)),
      S.Rational(3887, 25))
lower = 903 - S.Rational(22756, 9) * v - S.Rational(54412, 9) * v**2
equal(P.subs(u, q), lower)
equal(lower.subs(v, q), S.Rational(2778101, 82944))
equal(G.subs({u: q, v: q}), S.Rational(3427, 36864))
equal(4 * q**2 - 9 * s**2, S.Rational(3427, 36864))
equal(s - S.Rational(3427, 36864), S.Rational(605, 36864))
print("PASS lower-edge derivative, positive bounds, and final contradiction")
print("R6_IDENTITIES_PASS")
