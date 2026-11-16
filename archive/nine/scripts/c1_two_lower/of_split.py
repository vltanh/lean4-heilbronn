import sympy as sp, time, sys
from fractions import Fraction as Fr
from bern import Pol, find_tree, lean_tree
s=sp.Rational(8,73); rho=sp.Rational(49,60); om=sp.Rational(5,64)
p,c,f=sp.symbols('p c f')
h=p/c
Z0=c*(1-h)+h*f
B=(c-f)*(1-h+h*f-s)-f*(c-1)
E0=c*(1-h+h*f-s)-f*rho
E1=c*(1-h)
R=(B-om*E1)**2-4*Z0*(s*f*(c-f)-om*E0)
c2R=sp.expand(sp.cancel(c**2*R))
print(sp.Poly(c2R,p,c,f).degree_list() if hasattr(sp.Poly(c2R,p,c,f),'degree_list') else [sp.degree(c2R,x) for x in (p,c,f)])
g0=-c2R
g1=23*s*c*(p+c)-f*p*(48*p-266*s)
g2=f-c+s
g3=p-c
vs=[p,c,f]
degs=lambda e:[sp.degree(e,x) for x in vs]
print(degs(g0),degs(g1))
pols=[Pol(g0,vs),Pol(g1,vs),Pol(g2,vs),Pol(g3,vs)]
box=[(Fr(49,60),Fr(1)),(Fr(49,60),Fr(1)),(Fr(1,4),Fr(65,73))]
t0=time.time()
t,st=find_tree(pols,box,[0,1,2],maxdepth=40)
print(st,time.time()-t0)
open('/tmp/claude-1000/-home-vltanh-Documents-lean4-heilbronn/9a87d339-f996-48cf-89b6-c74161be0cfc/scratchpad/of_tree.txt','w').write(lean_tree(t))
