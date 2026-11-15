"""Exact preliminary cap bounds for the zero-lower C1 branch."""
from fractions import Fraction as F
from itertools import product

S, RHO = F(8, 73), F(49, 60)


def verify_caps():
    # 8/73 < 2 A0 and rho < (4+2 sqrt(3)) s.
    assert 65*219**2 > 1765**2
    assert 3*11**2 > 19**2
    assert F(82, 11)*S > RHO
    assert S > F(1, 10)
    assert 1-3*S < RHO
    assert S/(1-S) == F(8, 65) > F(6, 49)
    assert (1-3*S)*RHO*(1-RHO)-S == -F(2389, 262800)
    assert 1-RHO < 3*S
    assert (1-4*S)**2-3*S == -F(71, 5329)
    assert 1-4*S < F(7, 11)
    assert (1-S)**2 < RHO
    # s/(3-2 sqrt(2)) > 7/11 is equivalent to 1022 sqrt(2)>1445.
    assert 2*1022**2 > 1445**2
    assert S > F(33, 100)**2
    assert 3*S > F(4, 7)**2
    assert F(7, 11) > F(51, 64)**2
    assert 1-S/(1-S) == F(57, 65)
    assert 1-3*S/(1-S) == F(41, 65)
    assert 1-F(7, 11)/(1-S) == F(204, 715)
    # Theorem 2 and the upper quadrilateral capacity give precisely nine rows.
    rows = []
    for u, r, t, l in product(range(5), repeat=4):
        if u+r+t+l != 4 or u > 2 or r > 2 or t > 3 or l > 1:
            continue
        if r == 2 and (l or t > 1):
            continue
        if l and t > 1 or r and t > 2:
            continue
        rows.append((u, r, t, l))
    assert set(rows) == {(2,2,0,0),(2,1,1,0),(2,1,0,1),(2,0,2,0),(2,0,1,1),
                         (1,2,1,0),(1,1,2,0),(1,1,1,1),(1,0,3,0)}
    assert 10*S > 1
    print('PASS: exact C1 cap comparisons and all nine zero-lower occupancies')


if __name__ == '__main__':
    verify_caps()
