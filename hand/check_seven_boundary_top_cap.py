#!/usr/bin/env python3
"""Exact identities for the seven-boundary far-upper-cap argument."""
import sympy as S
R=S.Rational
f,g,h,e,k,L,rr,alpha,T,Z,u,s=S.symbols("f g h e k L rr alpha T Z u s")
points=[(0,h),(1,e),(g,k),(f,1)]
shoelace=sum(points[i][0]*points[(i+1)%4][1]-points[i][1]*points[(i+1)%4][0] for i in range(4))
assert S.expand(shoelace-((1-f)*(k-h)+g*(1-e)))==0
assert S.factor((1-alpha-L)*(1-s/L)+(1-alpha-rr)*(1-s/rr)
                -((1-alpha)*(2-s*(1/L+1/rr))-(L+rr)+2*s))==0
bound=2-s*Z-s*(2-s*Z)/(1-s*Z)-T+2*s
assert S.factor(S.diff(bound,Z)+s+s*s/(1-s*Z)**2)==0
assert S.factor(bound.subs(Z,4/T).subs(T,2*s/u)
                -2*(1-u)*(1-s*(1-u)/(u*(1-2*u))))==0
P=35-306*u+827*u*u-640*u**3
assert S.expand(P-(315*(u-R(17,63))**2+R(4,63)+640*(R(3,10)-u)*(u-R(1,4))**2))==0
assert S.expand(P-(R(7,20)+R(87,5)*(u-R(3,10))+123*(u-R(3,10))**2+640*(R(1,2)-u)*(u-R(3,10))**2))==0
expr=R(7,64)*(R(12,5)*u*(1-2*u)+(1-u)**2)-(1-u)*u*(1-2*u)
assert S.factor(expr-P/R(320))==0
assert R(7,5)**2<2
print("PASS: upper-cap quadrilateral area, monotone scalar bound, and exact contradiction")

