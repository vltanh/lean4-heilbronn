"""N_k certificates for R(h, c, f) < 0 on f in [l/D, (l + W)/D] (OF_SPLIT §3, CONTAINMENT_PAIR §1)."""
import sympy as sp
from fractions import Fraction as Fr
from bern import Pol
s=sp.Rational(8,73); rho=sp.Rational(49,60); om=sp.Rational(5,64)
H0,C0=sp.symbols('H0 C0')
c=rho+sp.Rational(11,60)*C0
p=rho+sp.Rational(11,60)*C0*H0
def pieces(D,l,W):
    F0=l; F1=l+W
    A1=lambda F: c*D-F
    A2=lambda F: D*(c-p-s*c)+p*F
    first=lambda F: A1(F)*A2(F)-F*D*c*(c-1)-om*c*(c-p)*D**2
    Zc=lambda F: D*(c**2-p*c)+p*F
    V=lambda F: s*F*A1(F)-om*D*(A2(F)-rho*F)
    y0=first(F0); y2=first(F1)
    y1=(A1(F0)*A2(F1)+A1(F1)*A2(F0))/2-(F0+F1)/2*D*c*(c-1)-om*c*(c-p)*D**2
    z0=Zc(F0); z1=Zc(F1)
    v0=V(F0); v2=V(F1)
    v1=s*(F0*A1(F1)+F1*A1(F0))/2-om*D*((A2(F0)+A2(F1))/2-rho*(F0+F1)/2)
    K=4*c*D
    q=[y0**2,y0*y1,(y0*y2+2*y1**2)/3,y1*y2,y2**2]
    w=[z0*v0,(2*z0*v1+z1*v0)/3,(z0*v2+2*z1*v1)/3,z1*v2]
    e=[w[0],(w[0]+3*w[1])/4,(w[1]+w[2])/2,(3*w[2]+w[3])/4,w[3]]
    return [sp.expand(q[i]-K*e[i]) for i in range(5)]
import sys
which=sys.argv[1]
if which=='of':
    D=p*(48*p-266*s); l=23*s*c*(p+c); W=(c-s)*D-l
    rects=[[(0,1),(0,Fr(1,2))],[(0,Fr(1,2)),(Fr(1,2),1)],[(Fr(1,2),1),(Fr(1,2),1)]]
else:
    D=2*p; l=c**2; W=(c-s)*D-l
    rects=[[(0,1),(0,1)]]
Ns=pieces(D,l,W)
for i,N in enumerate(Ns):
    P=Pol(-N,[H0,C0])
    print(i,P.ns,[ (lambda m:(float(m), int(1/m)+1 if m>0 else None))(P.bern_exact([(Fr(a),Fr(b)) for a,b in r])) for r in rects])
