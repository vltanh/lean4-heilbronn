"""Independent actual-coordinate identities for the broader AE transfer.

The accompanying hand proof supplies the capacity/containment argument;
none of these identities assumes a sign for FOP.
"""
import sympy as S

a, b, c, d, e, f, h, x, y, u, v = S.symbols('a b c d e f h x y u v')
points = {'A': (0, a), 'B': (b, 0), 'C': (c, 0), 'D': (1, d),
          'E': (1, e), 'F': (f, 1), 'H': (0, h), 'O': (x, y), 'P': (u, v)}


def det(word):
    p, q, r = [points[k] for k in word]
    return (q[0]-p[0])*(r[1]-p[1])-(q[1]-p[1])*(r[0]-p[0])


identities = [
    det('CEH') - (h*(1-c)+c*e),
    det('CEA') - (a*(1-c)+c*e),
    det('CEB') - e*(c-b),
    det('ACH') - c*(h-a),
    det('ACE') - (a*(1-c)+c*e),
    det('ACF') - (c*(1-a)+a*f),
    det('CEO')*det('EBP')-det('CEP')*det('EBO')-det('BCE')*det('EOP'),
]
assert all(S.expand(p) == 0 for p in identities)
print('Independent AE-transfer actual-coordinate identities:', len(identities), '; FOP unrestricted')
