#!/usr/bin/env python3
"""Exact identities for SEVEN_BOUNDARY_CAPS.md; no orientation sampling."""

import sympy as sp


def doubled(p, q, r):
    return sp.expand((q[0] - p[0]) * (r[1] - p[1])
                     - (q[1] - p[1]) * (r[0] - p[0]))


s = sp.Rational(7, 64)
a, b, c, d, e, f, h, L = sp.symbols("a b c d e f h L", real=True)
A, H, B, C, D, E, F = (0, a), (0, h), (b, 0), (c, 0), (1, d), (1, e), (f, 1)

assert sp.expand(doubled(A, B, H) - b * (h - a)) == 0
assert sp.expand(doubled(H, E, F) - ((1 - f) * (1 - h) + f * (1 - e))) == 0
assert sp.expand(doubled(H, C, F) - (c - h * (c - f))) == 0
assert sp.expand(doubled(H, B, F) - (b * (1 - h) + f * h)) == 0
assert doubled(B, C, F) == c - b

height = L + s * L / ((1 - s) * L - 3 * s)
assert sp.simplify(sp.diff(height, L) - (1 - 3 * s**2 / ((1 - s) * L - 3 * s)**2)) == 0
assert 1 - 1 / (3 * (1 - 2 * s)**2) == sp.Rational(851, 1875)
assert height.subs(L, 6 * s) == sp.Rational(749, 800)
assert sp.Rational(51, 800) < s

assert sp.Rational(21, 8)**2 < 7
assert sp.Rational(12, 5)**2 < 6
assert sp.Rational(7, 5)**2 < 2
assert sp.Rational(21, 32) * (1 + (sp.Rational(12, 5) + sp.Rational(7, 5)) / 2) == sp.Rational(609, 320)
assert 2 - s == sp.Rational(605, 320)
assert sp.Rational(5, 3)**2 < 3
assert sp.Rational(28, 3) * s == sp.Rational(49, 48) > 1

J = b - b * s / (1 - s - b) + sp.Rational(1, 2)
assert sp.simplify(sp.diff(J, b) - (1 - s * (1 - s) / (1 - s - b)**2)) == 0
assert s * (1 - s) / (sp.Rational(1, 2) - s)**2 == sp.Rational(399, 625)
assert J.subs(b, sp.Rational(1, 2)) == sp.Rational(43, 50) < 8 * s

M = sp.symbols("M", positive=True)
assert sp.Rational(22, 3)*s - (1-s)**2 == sp.Rational(109, 12288) > 0
U, V = 1-3*s/M, 2-2*s-4*s/M
assert sp.factor(U-V/2 - s*(1-1/M)) == 0
assert sp.factor(V-U - (1-2*s-s/M)) == 0
budget_excess = M + s*M/(M-3*s) + s*M/((1-2*s)*M-s) - 1
N = (3200*M**3 - 3900*M**2 + 1449*M - 147)/4096
assert sp.factor(budget_excess*(M-3*s)*((1-2*s)*M-s) - N) == 0
assert sp.factor(sp.diff(N, M) - 3*(40*M-21)*(80*M-23)/4096) == 0
assert sp.Rational(23, 80) < 3*s < sp.Rational(21, 40)
assert N.subs(M, sp.Rational(21, 40)) == sp.Rational(147, 327680) > 0

# The diagonal triangle ACF has doubled area below 13/16.
alpha, v, t = sp.symbols("alpha v t", real=True)
u = 1 - s/alpha - v
f0 = 1 - sp.Rational(3, 16)/alpha + (1-alpha)*v/alpha
assert sp.expand(doubled(A, C, F) - (c*(1-a)+a*f)) == 0
assert sp.Rational(12, 7)**2 < 3
assert (4+2*sp.Rational(12, 7))*s == sp.Rational(13, 16)
assert sp.Rational(7, 47) < sp.Rational(3, 20)
p = alpha**2 - (1-2*s)*alpha + s*(1-s)
assert p.subs(alpha, sp.Rational(3, 20)) == sp.Rational(279, 102400)
assert sp.diff(p, alpha).subs(alpha, sp.Rational(3, 20)) < 0
N = sp.cancel((alpha + (1-f0)*s/u + f0*s/v - (1-s))*alpha*u*v)
assert sp.factor(sp.diff(N, v, 2) + (64*alpha**2-71*alpha+14)/32) == 0
assert 14-71*sp.Rational(5, 32) == sp.Rational(93, 32) > 0
v0 = s/(1-alpha)
v1 = (sp.Rational(3, 16)-alpha/2)/(1-alpha)
lower_numerator = 5376*t**3 + 4851*t**2 + sp.Rational(10773, 16)*t + sp.Rational(875, 1024)
upper_numerator = 16384*t**4 + 37120*t**3 + 19928*t**2 + sp.Rational(4243, 4)*t + sp.Rational(175, 128)
assert sp.factor((N.subs(v, v0)*262144*alpha*(1-alpha)**2).subs(alpha, sp.Rational(5, 32)-t) - lower_numerator) == 0
assert sp.factor((N.subs(v, v1)*65536*(1-alpha)**2).subs(alpha, sp.Rational(5, 32)-t) - upper_numerator) == 0
assert all(coef > 0 for coef in sp.Poly(lower_numerator, t).all_coeffs())
assert all(coef > 0 for coef in sp.Poly(upper_numerator, t).all_coeffs())

# The upper-left overlap AHF intersect HCF is empty.
x, y = sp.symbols("x y", real=True)
Q = (x, y)
gap = h-a
Z = c*(1-h)+f*h
assert sp.expand(Z*doubled(A, F, Q) + (Z+c*gap)*doubled(F, H, Q)
                 + f*gap*doubled(H, C, Q) - f*gap*Z) == 0
Psi = f*gap*Z-s*(2*Z+gap*(c+f))
assert sp.expand(sp.diff(Psi, f) - (gap*c*(1-h)+2*f*h*gap-s*(2*h+gap))) == 0
assert sp.factor(sp.diff(Psi.subs(f, sp.Rational(1, 2)), c)
                 - (gap*((1-h)/2-s)-2*s*(1-h))) == 0
assert (sp.Rational(1, 2)+s)**2-4*s == -sp.Rational(271, 4096)
assert sp.Rational(6, 49) < s/(1-s) == sp.Rational(7, 57)
R = sp.factor(Psi.subs({c:s/a+s/(h-a), f:sp.Rational(1, 2)}))
Dgap = (a-sp.Rational(7, 32))*gap**2 + (a/8+sp.Rational(49, 1024))*gap + sp.Rational(49, 512)*a
assert sp.factor(R.subs(h, 1)-R-(1-h)*Dgap/(4*a*gap)) == 0
endpoint = 1024*a**3-2400*a**2+1649*a-175
assert sp.factor(1024*Dgap.subs(h, 1)-endpoint) == 0
assert 1649-4800*sp.Rational(7, 32) == 599 > 0
assert endpoint.subs(a, sp.Rational(1, 7)) == sp.Rational(5000, 343) > 0
quadratic = (1-2*s)*a**2+(6*s-1)*a+4*s**2
assert sp.factor(R.subs(h, 1)+quadratic/(4*a)) == 0
assert sp.discriminant(quadratic, a) == -sp.Rational(257, 8192)
assert sp.factor(b+(f-b)*y-f*(y-a)/(1-a)
                 - (1-y)*(b*(1-a)+a*f)/(1-a)) == 0

# The remaining bottom-right ear CDE has doubled area below 3s.
assert sp.Rational(7, 5)**2 < 2
assert sp.Rational(5, 3)**2 < 3
assert s*(1+sp.Rational(7, 5)+sp.Rational(5, 3))**2 == sp.Rational(26047, 14400)
assert sp.Rational(26047, 14400)-2*(1-s) == sp.Rational(397, 14400) > 0
w = sp.symbols("w", real=True)
w0 = 3*s*M/(M-s)
b0 = 1-M-w0
poly_M = M**2-(1-3*s)*M+s
assert poly_M.subs(M, sp.Rational(1, 4)) == sp.Rational(1, 256)
assert sp.diff(poly_M, M).subs(M, sp.Rational(1, 4)) < 0
ratio_num = 2*M**2+(7*s-2)*M+2*s
assert sp.factor(w0-2*b0-ratio_num/(M-s)) == 0
assert sp.discriminant(ratio_num, M) == -sp.Rational(927, 4096)
right_budget = 1/M+1/(1-M-w)+3*(1-M-w)/w
assert sp.factor(sp.diff(right_budget, w)-1/(1-M-w)**2+3*(1-M)/w**2) == 0
P = 4096*M**3-2304*M**2+196*M+49
assert sp.factor(right_budget.subs(w, w0)-1/s+P/(7*(64*M**2-50*M+7))) == 0
assert sp.factor(b0+(64*M**2-50*M+7)/(64*M-7)) == 0
z = sp.symbols("z", real=True)
assert sp.expand(P.subs(M, z+sp.Rational(1, 3))
                 -(4096*z**3+1792*z**2+sp.Rational(76, 3)*z+sp.Rational(271, 27))) == 0
lower = sp.Rational(4352, 3)*z**2+sp.Rational(76, 3)*z+sp.Rational(271, 27)
assert sp.discriminant(lower, z) == -sp.Rational(4665584, 81)

# Both triangles adjacent to DF have capacity one.
assert sp.Rational(1, 8)*(1-sp.Rational(1, 8)) == s
assert sp.Rational(7, 8)*(1-sp.Rational(7, 8)) == s
assert sp.expand(doubled(C, D, F)-(1-c+d*(c-f))) == 0
assert sp.expand(doubled(D, E, F)-(1-f)*(e-d)) == 0
upper_cdf = 1-f-s*(c-f)/(1-c)
assert sp.factor(sp.diff(upper_cdf, f)+1-s/(1-c)) == 0
assert sp.factor(sp.diff(upper_cdf.subs(f, b), c)+s*(1-b)/(1-c)**2) == 0
G = 1-b-b*s**2/(b-s-b**2)
assert sp.factor(upper_cdf.subs(f, b).subs(c, b**2/(b-s))-G) == 0
H = -4096*b**3+4864*b**2-1167*b+84
assert sp.factor(sp.Rational(13, 16)-G-H/(4096*(b-s-b**2))) == 0
assert sp.expand(H.subs(b, z+sp.Rational(1, 8))
                 -(-4096*z**3+3328*z**2-143*z+sp.Rational(49, 8))) == 0
assert sp.discriminant(1792*z**2-143*z+sp.Rational(49, 8), z) == -23455
assert 1-sp.Rational(1, 8)-s == sp.Rational(49, 64) < sp.Rational(13, 16)

print("PASS: seven-boundary caps, diagonal capacity, upper-left overlap, and all three right-hand triangle bounds")

# The nearer upper exterior cap, Theorem 10.
cap_x, cap_y = sp.symbols("cap_x cap_y", real=True)
assert sp.expand(doubled((0, a), (0, h), (cap_x, cap_y)) + (h-a)*cap_x) == 0
assert sp.expand(doubled((0, h), (f, 1), (cap_x, cap_y))
                 - (f*(cap_y-h)-(1-h)*cap_x)) == 0
assert sp.factor(1/(h-a)+1/(1-h)-4/(1-a)
                 - (2*h-a-1)**2/((h-a)*(1-h)*(1-a))) == 0
assert sp.Rational(7, 50) - sp.Rational(1, 8) == sp.Rational(3, 200)
assert sp.Rational(7, 64) / (1 - 2 * sp.Rational(7, 64)) == sp.Rational(7, 50)
assert 1 - 8 * sp.Rational(7, 64) == sp.Rational(1, 8)
print("PASS: complete nearer upper exterior-cap exclusion")

# The far cap's fixed-leg support triangle and its strict area budget.
cap_k = 1-(1-f)*(1-cap_y)/(cap_x-f)
assert sp.factor(doubled((f, 1), (cap_x, cap_y), (1, cap_k))) == 0
assert sp.factor(cap_k-e
                 - doubled((f, 1), (1, e), (cap_x, cap_y))/(cap_x-f)) == 0
assert sp.factor(doubled((1, d), (1, cap_k), (f, 1))
                 - (1-f)*(cap_k-d)) == 0
assert sp.Rational(1, 12) < sp.Rational(1, 8)
assert sp.Rational(1, 10) < sp.Rational(1, 8)
assert sp.Rational(49, 64) < sp.Rational(13, 16)
print("PASS: far upper exterior-cap capacity one")
