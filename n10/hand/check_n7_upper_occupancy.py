"""Exact constants and area identities in N7_UPPER_OCCUPANCY.md.

This is rational arithmetic for a fixed analytic proof, not a search.
"""
from fractions import Fraction as F

s=F(93,1000)
assert F(67,30)**2<5
assert F(7,5)**2<2
assert (F(177,20)+2)*s-1==F(181,20000)>0
assert (F(29,5)+5)*s-1==F(11,2500)>0

# Sparse coefficients in the monomial order a,d,f.
def add(*ps):
    out={}
    for p in ps:
        for e,c in p.items():out[e]=out.get(e,F(0))+c
    return {e:c for e,c in out.items() if c}
def neg(p):return {e:-c for e,c in p.items()}

SL={(0,0,1):F(1),(1,0,1):F(-1)}
SR={(0,0,0):F(1),(0,0,1):F(-1),(0,1,0):F(-1),(0,1,1):F(1)}
budget={(0,0,0):F(1),(1,0,1):F(-1),(0,1,0):F(-1),(0,1,1):F(1)}
assert add(SL,SR,neg(budget))=={}

print('PASS: larger endpoint-triangle area budget')
print('PASS: six-point exclusion gap',F(181,20000))
print('PASS: complete N7 three-exterior exclusion gap',F(11,2500))
