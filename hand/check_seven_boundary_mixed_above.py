"""Exact identities for complete mixed cells above HC; no search is used."""
import sympy as S

a, h, b, c, d, e, f, x, y, w, z = S.symbols(
    "a h b c d e f x y w z"
)
s = S.Rational(7, 64)
L, R, M = h-a, e-d, c-b


def area(P, Q, T):
    return S.expand(
        (Q[0]-P[0])*(T[1]-P[1])-(Q[1]-P[1])*(T[0]-P[0])
    )


def eq(p, q):
    assert S.factor(p-q) == 0, S.factor(p-q)


A, H, B, C, D, E, F = (
    (0, a), (0, h), (b, 0), (c, 0), (1, d), (1, e), (f, 1)
)
Q = (x, y)
eq(area(A, E, Q)+area(E, H, Q), L*(1-x))
eq(area(D, E, Q), R*(1-x))
eq(area(D, E, F)-area(E, F, Q)-area(F, D, Q), R*(1-x))

Z = c-h*(c-f)
Ab, Bb = (1-b)*h+b*e, 1-b-e*(f-b)
eq(
    Z*(-area(B, E, Q)),
    Z*e*M-(e*M+Ab)*area(C, F, Q)-(e*M+Bb)*area(H, C, Q),
)
stress = (e*M-s)*Z-s*((1-b)*(1+h)+e*(2*c-f))
eq(stress, Z*e*M-s*(Z+2*e*M+Ab+Bb))
eq(S.diff(stress, b), -e*Z+s*(1+h))
eq(S.diff(stress, c), e*(Z-2*s)+(e*M-s)*(1-h))
eq(S.diff(stress, f), h*(e*M-s)+s*e)

endpoint = stress.subs(
    {
        c: 1-w,
        h: s/(1-b-w)+s/b,
        e: s/(1-b-w)+s/w,
        f: 2*(1-b-w)-1,
    },
    simultaneous=True,
)
N = (
    128*b**3*w-78*b**3+192*b**2*w**2-370*b**2*w+121*b**2
    +64*b*w**3-228*b*w**2+214*b*w-43*b
    +7*w**3-21*w**2+14*w
)
eq(endpoint, -7*N/(4096*b*w*(1-b-w)))
Nw = S.diff(N, w)
lower1 = -322*b**2+(217-456*w)*b+21*w**2-42*w+14
eq(Nw-lower1, 128*b**3+384*b**2*(w-S.Rational(1,8))
   +192*b*(w**2-S.Rational(1,64)))
lower2 = (S.Rational(273,2)-456*w)*b+21*w**2-42*w+14
eq(lower1-lower2, 322*b*(S.Rational(1,4)-b))
eq((21*w**2-42*w+14).subs(w, S.Rational(5,16)), S.Rational(749,256))
assert S.Rational(749,256)-S.Rational(3,2) == S.Rational(365,256) > 0
poly = -62*z**3+S.Rational(779,16)*z**2+S.Rational(35,512)*z+S.Rational(345,16384)
eq(N.subs({b:z+S.Rational(5,32), w:S.Rational(1,8)}), poly)
quad = S.Rational(343,8)*z**2+S.Rational(35,512)*z+S.Rational(345,16384)
eq(poly-quad, 62*z**2*(S.Rational(3,32)-z))
assert S.discriminant(quad, z) == -S.Rational(945455,262144) < 0

print("PASS: complete HCF-below-BE / AHE-DEF mixed placement, arbitrary projection f")
