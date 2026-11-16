import sympy as sp, time, sys
from fractions import Fraction as Fr
from bern import Pol, find_tree, lean_tree
s=sp.Rational(8,73); rho=sp.Rational(49,60); om=sp.Rational(5,64)
H0,C0,th=sp.symbols('H0 C0 th')
c=rho+(1-rho)*C0
p=rho+(c-rho)*H0
D=p*(48*p-266*s)
l=23*s*c*(p+c)
W=(c-s)*D-l
F=l+W*th
D2cB=(c*D-F)*(D*(c-p-s*c)+p*F)-F*D*c*(c-1)
first=D2cB-om*c*(c-p)*D**2
second=4*c*D*(D*(c**2-p*c)+p*F)*(s*F*(c*D-F)-om*D*(D*(c-p-s*c)+(p-rho)*F))
G=first**2-second
# check against R
pp,cc,ff=sp.symbols('pp cc ff')
h=pp/cc
Z0=cc*(1-h)+h*ff; B=(cc-ff)*(1-h+h*ff-s)-ff*(cc-1); E0=cc*(1-h+h*ff-s)-ff*rho; E1=cc*(1-h)
R=(B-om*E1)**2-4*Z0*(s*ff*(cc-ff)-om*E0)
Dp=pp*(48*pp-266*s)
chk=sp.simplify(Dp**4*cc**2*R.subs(ff,sp.Symbol('FF')/Dp)-(first**2-second).subs({}) ) if False else None
vs=[H0,C0,th]
Gx=sp.expand(G)
print([sp.degree(Gx,x) for x in vs])
P=Pol(-Gx,vs)
print(P.ns)
for box in [[(0,1),(0,Fr(1,2)),(0,1)],[(0,Fr(1,2)),(Fr(1,2),1),(0,1)],[(Fr(1,2),1),(Fr(1,2),1),(0,1)]]:
    box=[(Fr(a),Fr(b)) for a,b in box]
    m=P.bern_exact(box); print(float(m), int(1/m)+1 if m>0 else None)
