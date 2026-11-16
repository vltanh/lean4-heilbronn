#!/usr/bin/env python3
"""Exact checks for the complete C1 three-top/no-side theorem."""
import sympy as sp
R=sp.Rational
s=R(93,1000);G=R(1457,250)
assert R(707,500)**2<2 and G==3+2*R(707,500)
assert G*s==R(542004,1000000)
assert 1-G*s/(1-s)<R(403,1000)
assert R(403,1000)*R(360,1000)*R(640,1000)<s
assert R(480,1000)**2*R(403,1000)<s
assert R(403,1000)-s/R(640,1000)<R(258,1000)
upper=R(40,1000)*R(628,1000)+R(258,1000)*R(263,1000)
assert upper==R(92974,1000000)==s-R(26,1000000)<s
assert R(628,1000)*R(644,1000)==R(404432,1000000)<G*s
c,d,x,y,u,v=sp.symbols('c d x y u v')
assert sp.simplify(c+(s+(1-c)*s/c)/d-c-s/(c*d))==0
det=(x-1)*(v-d)-(y-d)*(u-1)
assert sp.expand(-det-((1-x)*(v-d)+(d-y)*(1-u)))==0
print('PASS: C1 three top points exclude either side cap, with exact scalar gaps')
