"""Verify the determinant identities and the printed cubic comparisons."""
from fractions import Fraction
from pathlib import Path
import re

import sympy as S


def check_identity(left, right):
    assert S.cancel(left - right) == 0


z, u, v, w, x, y = S.symbols("z u v w x y")
a, b, c, d, g, m = S.symbols("a b c d g m")
left_height, right_height = z + u + v, w + x + y
second = (m + u*b) / v
first = (m + z*second) / u
check_identity(first + second + b, m*left_height/(u*v) + b*left_height/v)
fourth = (m + g*x) / w
fifth = (m + fourth*y) / x
check_identity(g + fourth + fifth, m*right_height/(w*x) + g*right_height/w)

p = S.symbols("p")
turn = p**2 * (1-p) / (1+p)
k = 2*p**2/(1+p)
horizontal = [k, 1-p, p-k, k-p, p-1, -k]
vertical = [0, (1-p)/2, p/2, p/2, (1-p)/2, 0]
for i in range(5):
    check_identity(horizontal[i]*vertical[i+1] - horizontal[i+1]*vertical[i], turn)
check_identity(S.diff(turn, p), 2*p*(1-p-p**2)/(1+p)**2)
check_identity(turn.subs(p, (S.sqrt(5)-1)/2), (5*S.sqrt(5)-11)/2)
assert 123**2 - 5*55**2 == 4

j, k, l, t = S.symbols("j k l t")
U, V = l*(1-k)-j*(1-t), k*(1-l)-t*(1-j)
check_identity(k*U+(1-k)*V, (k-t)*(1-j-k))
fourth = (c+g*x)/w
fifth = (d+fourth*y)/x
check_identity(g+fourth+fifth, g*right_height/w + (d*w+c*(x+y))/(w*x))

note = Path(__file__).with_name('SIX_POINT_MONOTONE_CHAIN.md').read_text()
rows = [list(map(int, re.findall(r'\d+', line)))
        for line in note.splitlines() if re.match(r'^\| \d', line)]
assert [r[:4] for r in rows] == [[462,93,93,93],[279,212,93,93],
                                  [279,93,257,93],[279,93,93,205]]
B = S.symbols('B')
for row in rows:
    a0, b0, c0, d0, mid = (S.Rational(n, 1000) for n in row[:5])
    poly = 4*a0*B*(c0+(d0-c0)*B)-(B-b0)**2*(1-B)
    for (left, right), printed in zip([(b0, mid), (mid, 1)], row[5:], strict=True):
        transformed = S.Poly(S.cancel((1+t)**3*poly.subs(B, (left+right*t)/(1+t))), t)
        coefficients = transformed.all_coeffs()
        assert len(coefficients) == 4 and min(coefficients)*10**12 == printed > 0
assert Fraction(93, 462) == Fraction(31, 154)
print('Five sharp turns, both eliminations, the cap orientation and all 32 cubic coefficients pass.')
