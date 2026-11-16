import sympy as sp, time
from fractions import Fraction as Fr
from bern import Pol, find_tree, lean_tree
s=sp.Rational(8,73); rho=sp.Rational(49,60)
h,u,v=sp.symbols('h u v')
hA=h-rho+h*v-h*u*v/rho
U=1-h+u-u*v/rho
hD=h*u*v/rho-h+h**2+rho-rho*h
hB=hA*U-s*(hA+h*U)
Q=hB**2-4*s*hA*U*hD   # = h^2 G
P0=Pol(-hB,[h,u,v],[2,2,2]); P1=Pol(-Q,[h,u,v],[4,4,4])
box=[(Fr(49,60),Fr(113,125)),(Fr(8,73),Fr(49,60)),(Fr(8,73),Fr(49,60))]
t0=time.time()
t,st=find_tree([P0,P1],box,[0,1,2],order=[2,0,1])
print(st, time.time()-t0)
print(lean_tree(t))
