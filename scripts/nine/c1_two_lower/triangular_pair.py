import sympy as sp, time
from fractions import Fraction as Fr
from bern import Pol, find_tree, lean_tree
s=sp.Rational(8,73); rho=sp.Rational(49,60)
h,u,v,r=sp.symbols('h u v r')
hA=h-rho+h*v-h*u*v/rho
U=1-h+u-u*v/rho
hD=h*u*v/rho-h+h**2+rho-rho*h
T=1-u*v/rho
d=v*h/rho
P0=hA*U-s*(hA+h*U)-hD*r
P1=(h-u)*(U-s)-u*r
P2=(T*(1-d)-d*r)*(r-s)-s*(1-d)*(2*r+T)
P3=(T*(U-s)+(T-h)*r)*(r-s)-s*U*(2*r+T)
vs=[h,u,v,r]
pols=[Pol(-P0,vs,[2,2,2,1]),Pol(-P1,vs,[2,2,1,1]),Pol(-P2,vs,[1,1,2,2]),Pol(-P3,vs,[1,2,2,2])]
box=[(Fr(49,60),Fr(1)),(Fr(8,73),Fr(49,60)),(Fr(8,73),Fr(49,60)),(Fr(24,73),Fr(65,73)**2)]
t0=time.time()
import sys
mode=sys.argv[1] if len(sys.argv)>1 else 'fixed'
if mode=='fixed':
    t,st=find_tree(pols,box,[0,1,2,3],order=[3,2,1,0],maxdepth=30)
else:
    t,st=find_tree(pols,box,[0,1,2,3],maxdepth=30)
print(st, time.time()-t0)
open('/tmp/claude-1000/-home-vltanh-Documents-lean4-heilbronn/9a87d339-f996-48cf-89b6-c74161be0cfc/scratchpad/tp_tree_%s.txt'%mode,'w').write(lean_tree(t))
