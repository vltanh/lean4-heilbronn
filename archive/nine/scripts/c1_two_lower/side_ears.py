import sympy as sp
from fractions import Fraction as Fr
from bern import Pol, find_tree, lean_tree
s=sp.Rational(8,73); rho=sp.Rational(49,60)
h,u,v=sp.symbols('h u v')
hA=h-rho+h*v-h*u*v/rho
U=1-h+u-u*v/rho
hD=h*u*v/rho-h+h**2+rho-rho*h
hJ=hA*U-s*(hA+3*h*U+hD)
P=Pol(-hJ,[h,u,v],[2,2,2])
box=[(Fr(49,60),Fr(1)),(Fr(8,73),Fr(49,60)),(Fr(8,73),Fr(49,60))]
t,st=find_tree([P],box,[0,1,2],order=[2])
print(st); print(lean_tree(t))
