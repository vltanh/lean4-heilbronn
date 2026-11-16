#!/usr/bin/env python3
"""Exact transcription checks for C1_TWO_LOWER_SIDE_TOP_PAIR.md."""
import sympy as sp

R=sp.Rational
s,rho=R(93,1000),R(347,500)
c,d,t=sp.symbols('c d t')
assert s/(rho*(1-rho))>R(437,1000)
assert 1-3*s/(1-s)<R(693,1000)
assert R(693,1000)*R(841,1000)*R(159,1000)<s
assert R(306,1000)-s/(R(841,1000)*R(693,1000))<R(147,1000)
assert R(147,1000)*R(563,1000)<s
assert rho*R(307,1000)*(rho*R(437,1000)-2*s)>s*s
assert rho*R(437,1000)>2*s
A=1-c-s/(c*d)
B=d-s/c
E=(1-d)*(1-s-s/B+(1-d)*A/B)
derivative=(1-d)*(s*s-c*(1-d)*(c*d-2*s))/(c*d-s)**2
assert sp.factor(sp.diff(E,c)-derivative)==0
B0=(417094*d**3-2455*d*d-284067*d+93000)/1000000
assert sp.factor((4*s-E.subs(c,rho))*d*(rho*d-s)-B0)==0
coeff=[4802739945873,266106562641,4648189333265,
       20573116806609,50665017531537]
bern=sum(nn*sp.binomial(4,i)*t**i*(1-t)**(4-i)
         for i,nn in enumerate(coeff))/1500000000000000
assert sp.expand(B0.subs(d,R(437,1000)+R(32,125)*t)-bern)==0
assert all(nn>0 for nn in coeff)
print('PASS: side-cap top-pair domain, derivative and five positive Bernstein coefficients')
