"""Independent exact rational and affine checks for the top-pair lemma."""
import sympy as sp
R=sp.Rational;s=R(93,1000);epsilon=R(1037,10000)
assert epsilon*(1-epsilon)==R(9294631,10**8)<s
assert (1-epsilon)**2==R(80335369,10**8)
assert 9*s-(1-epsilon)**2==R(3364631,10**8)>0
assert 1-epsilon-4*s==R(5243,10000)
assert R(17,3)*s-R(5243,10000)==R(27,10000)>0
e,f,u,v,eta_E,eta_F=sp.symbols('e f u v eta_E eta_F')
for den,num in [(9,1),(17,3)]:
    eta_U=1-R(3*num,den)-eta_E-eta_F
    xx=(R(num,den)+eta_E)+(R(num,den)+eta_F)*f+(R(num,den)+eta_U)*u
    yy=(R(num,den)+eta_E)*e+(R(num,den)+eta_F)+(R(num,den)+eta_U)*v
    other=den-2*num
    pairs=[(den*xx-other*f-num-num*u,den*((1-f)*eta_E+(u-f)*eta_U)),
           (num*f+num*u+other-den*xx,den*((1-f)*eta_F+(1-u)*eta_U)),
           (den*yy-other*e-num-num*v,den*((1-e)*eta_F+(v-e)*eta_U)),
           (num*e+num*v+other-den*yy,den*((1-e)*eta_E+(1-v)*eta_U))]
    for left,right in pairs:assert sp.expand(left-right)==0
print('PASS: N6 triangular top-pair weights1/9 and3/17, exact gaps and all eight remainder identities')
