"""Optional transcription checks for CORNER_FAMILIES.md; no numerical proof."""
from itertools import combinations

import sympy as sp


def bracket(u, v):
    return (u[0] * v[1] - u[1] * v[0]) / 2


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

# Doubled-area identities in the endpoint lemma.
x, y, d, e = sp.symbols("x y d e")
p, q = (x, y), (x + d, y + e)
missing = d * y + e * (1 - x)
assert sp.expand(2 * bracket(p, q) - (e - missing)) == 0
assert sp.expand(
    2 * bracket((x - 1, y - 1), (x + d - 1, y + e - 1))
    - (d - missing)
) == 0
assert sp.expand(
    2 * bracket((x - 1, y), (x + d - 1, y + e)) + missing
) == 0
assert (sp.Rational(1, 8) - sp.Rational(1, 64)) / 2 == sp.Rational(7, 128)
assert (1 - sp.Rational(1, 64)) / 18 == sp.Rational(7, 128)
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

print("PASS: degree-four Pluecker identity")
print("PASS: five cyclic degree-five Pluecker identities")
print("PASS: all eleven possible diagonal sign words")
print("PASS: endpoint-lemma area identities and exact threshold comparison")
print("PASS: two-interior-point area formulas")
print("Written geometric and triangulation arguments remain to be reviewed by a reader.")
