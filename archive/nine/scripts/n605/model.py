"""N6-05 model in the coordinates of SIX_BOUNDARY_TWO_SIDE_UPPER.

zeta = (a,h,b,c,d,f,x,y,z,w,r,t)
A=(0,a) H=(0,h) B=(b,0) C=(c,0) D=(1,d) F=(f,1)
X=(x,y) in right cap CD(1,0), Y=(z,w) in left cap FH(0,1), Q=(r,t) in top cap DF(1,1).
Point indices (as in SIX_BOUNDARY_TWO_SIDE_UPPER): A0 B1 C2 X3 D4 F5 Y6 H7 Q8.
Cyclic counterclockwise hull order: A,B,C,X,D,Q,F,Y,H.
"""
import itertools as it
from fractions import Fraction as Fr
from polylib import const, var, add, scale, sub, mul, det, cube_upper, evalp

VARIABLES = 'a h b c d f x y z w r t'.split()
NAMES = ['A', 'B', 'C', 'X', 'D', 'F', 'Y', 'H', 'Q']
TRIPLES = list(it.combinations(range(9), 3))


def sign(tr):
    i, j, k = tr
    if k < 8:
        return 1
    return -1 if (i <= 4 < j) else 1


def build(exact=True, s=None):
    one = Fr(1) if exact else 1.0
    q = (lambda n, d: Fr(n, d)) if exact else (lambda n, d: n / d)
    S = q(7, 64) if s is None else s
    V = [var(i, one) for i in range(12)]
    a, h, b, c, d, f, x, y, z, w, r, t = V
    Z0, ONE = {}, const(one)
    K = const
    pts = [(Z0, a), (b, Z0), (c, Z0), (x, y), (ONE, d), (f, ONE), (z, w), (Z0, h), (r, t)]
    dets = {tr: det(*(pts[i] for i in tr)) for tr in TRIPLES}
    costs = [(''.join(NAMES[i] for i in tr), sub(scale(dets[tr], sign(tr)), K(S))) for tr in TRIPLES]
    factors = [
        ('a-7/50', sub(a, K(q(7, 50)))), ('b-7/50', sub(b, K(q(7, 50)))),
        ('h-1/2', sub(h, K(q(1, 2)))), ('c-1/2', sub(c, K(q(1, 2)))),
        ('1-s-h', sub(K(one - S), h)), ('1-s-c', sub(K(one - S), c)),
        ('d-a', sub(d, a)), ('h-d', sub(h, d)), ('f-b', sub(f, b)), ('c-f', sub(c, f)), ('d-f', sub(d, f)),
        ('h-a-s', sub(sub(h, a), K(S))), ('c-b-s', sub(sub(c, b), K(S))),
        ('1-x', sub(ONE, x)), ('1-w', sub(ONE, w)),
        ('x-c-s', sub(sub(x, c), K(S))), ('w-h-s', sub(sub(w, h), K(S))),
        ('d-y-s', sub(sub(d, y), K(S))), ('f-z-s', sub(sub(f, z), K(S))),
        ('y-s', sub(y, K(S))), ('z-s', sub(z, K(S))),
        ('r-f', sub(r, f)), ('t-d', sub(t, d)), ('1-r', sub(ONE, r)), ('1-t', sub(ONE, t)),
        ('d-1/2', sub(d, K(q(1, 2)))), ('f-1/2', sub(f, K(q(1, 2)))),
    ]
    return pts, dets, factors, costs
