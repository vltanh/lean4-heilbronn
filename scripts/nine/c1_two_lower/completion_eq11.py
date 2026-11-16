import sympy as sp
from fractions import Fraction as Fr
from bern import Pol
s=sp.Rational(8,73); rho=sp.Rational(49,60)
h,c,Y=sp.symbols('h c Y')
U0=(1-h)*(c*Y-rho)-s*Y
T=c*Y+s-rho
Xh=h*c+(1-c)*Y-s
B=Xh-U0-s*(1+Y)-sp.Rational(5,4)*T
C4=4*Xh*(U0+sp.Rational(5,4)*T)-4*s*(1+Y)*((1-h)*(h*c-Xh)+sp.Rational(5,4)*h*c)
P=B**2+C4
# compare with definition
xs=c+((1-c)*Y-s)/h
Bd=h*xs-U0-s*(1+Y)-sp.Rational(5,4)*T
C0=xs*(U0+sp.Rational(5,4)*T)-s*(1+Y)*((1-h)*(c-xs)+sp.Rational(5,4)*c)
assert sp.simplify(Bd**2+4*h*C0-P)==0
p=Pol(-P,[h,c,Y],[2,2,2])
box=[(Fr(49,60),Fr(1))]*3
m=p.bern_exact(box); print(m, int(1/m)+1)
