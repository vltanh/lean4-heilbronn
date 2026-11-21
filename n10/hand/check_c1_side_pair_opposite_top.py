#!/usr/bin/env python3
"""Exact transcription checks for C1_SIDE_PAIR_OPPOSITE_TOP.md."""
import sympy as q
s=q.Rational(93,1000);rho=q.Rational(347,500)
d,c,h,f,x,y,a,b,u,v=q.symbols('d c h f x y a b u v')
R=q.Rational
p=1000*d**3-1000*d**2-186*d+279
c0=s/(d*(1-d))
g=d*c*(1-c)-s*(1+2*c)
assert q.factor(g.subs(c,c0)+93*p/(10**6*d*(1-d)**2))==0
assert s/(rho*(1-rho))>R('.43')
assert R('.907')*R('.14')-2*s<0
assert 6000*rho-2000>0
for z,pv,pd in [('.71','.751','-93.7'),('.79','.999','106.3')]:
 assert p.subs(d,R(z))==R(pv)
 assert q.diff(p,d).subs(d,R(z))==R(pd)
assert g.subs({d:R('.79'),c:R('.56')})==R('-.002504')
assert R('.56')*R('.79')*R('.21')==R('.092904')<s
assert s/(R('.71')*R('.29'))>R('.45')
assert R('.79')*R('.45')**2>s
assert R('.45')+2*s/R('.79')+s/(R('.79')*R('.45'))>R('.947')
assert s/R('.56')>R('.166')
assert R('.56')*R('.71')**2>s
assert R('.71')+s/(R('.56')*R('.71'))>R('.943')
assert s/R('.79')>R('.117')
pts={'D':(1,d),'F':(f,1),'P':(x,y),'L':(a,b),'Q':(u,v)}
def det(word):
 A,B,C=[pts[t]for t in word]
 return q.expand((B[0]-A[0])*(C[1]-A[1])-(B[1]-A[1])*(C[0]-A[0]))
assert q.expand(-det('DPQ')-(1-x)*(v-d)-(d-y)*(1-u))==0
assert q.expand(-det('FQL')-(1-b)*(u-f)-(f-a)*(1-v))==0
assert q.expand(-det('DFQ')-((1-d)*u+(1-f)*v-1+d*f))==0
assert R('.053')*R('.29')+R('.624')*R('.124')==R('.092746')<s
assert R('.057')*R('.55')+R('.443')*R('.139')==R('.092927')<s
assert R('.29')*R('.876')+R('.55')*R('.861')-1+R('.71')*R('.45')==R('.04709')<s
print('PASS: side-pair cubic, anchor box, two side-point bounds, determinant identities, and final strict gaps.')
