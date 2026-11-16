from fractions import Fraction as Fr
import random
s=Fr(8,73); rho=Fr(49,60); om=Fr(5,64)
def Gint(H0,C0,th):
    cp=49+11*C0; pp=49+11*C0*H0
    Dp=pp*(3504*pp-127680); lp=184*cp*(pp+cp)
    Wp=(73*cp-480)*Dp-4380*lp; Fp=4380*lp+Wp*th
    X1=4380*Dp*cp-60*Fp; X2=60*Dp*(73*(cp-pp)-8*cp)+pp*Fp
    Y=64*(X1*X2-4380*Dp*Fp*cp*(cp-60))-5*cp*(cp-pp)*4380**2*Dp**2
    Zp=4380*Dp*cp*(cp-pp)+60*pp*Fp
    Vp=512*Fp*X1-1598700*Dp*(X2-49*Fp)
    return Y**2-15360*cp*Dp*Zp*Vp
def Grat(H0,C0,th):
    c=rho+(1-rho)*C0; p=rho+(c-rho)*H0
    D=p*(48*p-266*s); l=23*s*c*(p+c); W=(c-s)*D-l; F=l+W*th
    f=F/D; h=p/c
    Z0=c*(1-h)+h*f; B=(c-f)*(1-h+h*f-s)-f*(c-1); E0=c*(1-h+h*f-s)-f*rho; E1=c*(1-h)
    R=(B-om*E1)**2-4*Z0*(s*f*(c-f)-om*E0)
    return D**4*c**2*R
for _ in range(5):
    a,b,t=[Fr(random.randint(1,99),100) for _ in range(3)]
    print(Gint(a,b,t)/Grat(a,b,t))
print(64**2*(60*4380)**4)
