#!/usr/bin/env python3
"""Exact diagnostic for SEVEN_BOUNDARY_RIGHT_PAIR.md; no parameter search."""
import sympy as S

R = S.Rational
s, rho = R(7, 64), R(13, 16)
lam, mu = R(7, 1024), R(9, 256)
a, h, b, c, d, e, f, px, py, v = S.symbols("a h b c d e f px py v")
x, w, z = S.symbols("x w z")

def eq(left, right=0):
    assert S.factor(left - right) == 0, S.factor(left - right)

def area(P, Q, T):
    return S.det(S.Matrix([[Q[0]-P[0], Q[1]-P[1]],
                          [T[0]-P[0], T[1]-P[1]]]))

H, C, D, E, FF, X = (0,h), (c,0), (1,d), (1,e), (f,1), (px,py)
AA = h*(1-c)+c*e
BB = 1-c+e*(c-f)
JJ = 1+(e-h)*(c-f)
TT = h*(1-c)+c*d
WW = 1-(h-d)*(c-f)
rr = (1-c)*(e-d)
UU = 1-h+f*(h-d)
ZZ = c*(1-h)+f*h
for expression, P, Q, T in [
    (AA,H,C,E),(BB,C,E,FF),(TT,H,C,D),(rr,C,D,E),(UU,H,D,FF),(ZZ,H,C,FF)
]:
    eq(expression, area(P,Q,T))
eq(JJ-AA, area(H,E,FF))
eq(WW, TT+UU)
eq(WW*area(C,E,X)-BB*area(H,D,X)-(AA+rr)*area(C,FF,X), BB*TT)
eq(AA*area(C,D,FF)-rr*ZZ, BB*TT)
print("PASS: signed determinant formulas and positive weighted identity")

assert s-R(5,16)**2 > 0
assert s*R(21,16)**2-R(3,16) == R(15,16384)
eq(s*(R(16,3)+R(64,13))-1, R(19,156))
eq(s/(1-s-R(1,7))+7*s-(1-s), R(57,2680))
assert R(133,192)>1-3*s

Ef=1+s-s/f-s/(1-s-f)
eq(Ef.subs(f,R(3,16)), R(1067,2880))
assert s*(R(16,3)**2-R(64,45)**2)>2
eq(s/(1-R(3,16)+s)**2,R(448,3481))
assert R(448,3481)<R(1,7)
assert R(52,59)>R(7,8)
eq(3*s-R(52,59)*R(1067,2880),R(271,169920))
assert (1-R(3,16))/R(3,16)**2 > 1/(1-s-R(3,16))**2
eq(1-s/(1-s-R(1,6))-s*(1-R(3,16))/R(1,6),R(22469,71168))
eq(3*s-R(22469,71168),R(883,71168))

A,B,J=S.symbols("A B J")
p1=(A*B-s*(2*A+s))**2-4*s*A*B*(A+s)
p2=(A*B-s*(A+s+B))**2-4*s*A*B*(A+s)
for p, leading, value in [
    (p1,R(1633,50176),-R(19402095,822083584)),
    (p2,R(36961,200704),-R(3108335,822083584))
]:
    eq(S.Poly(p.subs(B,R(6,7)),A).LC(),leading)
    eq(p.subs({A:1,B:R(6,7)}),value)
    assert leading>0 and value<0
F=A*B*(v-s)-s*v*(A+B)-(A+s)*v*v
eq(F, A*S.diff(F,A)-s*B*v-s*v*v)
eq(F, B*S.diff(F,B)-s*A*v-(A+s)*v*v)
eq(S.discriminant(F.subs({A:1,B:R(5,6)}),v),-R(197,49152))
f0=F.subs({A:1,B:R(17,20)})
eq(f0.subs(v,R(1,4)),-R(1,2560))
eq(f0.subs(v,R(1,3)),-R(1,2880))
eq(S.diff(f0,v).subs(v,R(1,4)),R(119,1280))
eq(S.diff(f0,v).subs(v,R(1,3)),-R(353,3840))
print("PASS: endpoint pair-line contradictions and height interval")

q=R(3,16)
D0=b-b*b-s
C0=b*b-b*(s+q)+s
g=b*C0/D0
budget=(1-b)*(s/(c-b)+s/b)+b*(c-q)/(c-b)
eq(budget-(1-s), C0/(c-b)-D0/b)
eq(g-(1-b)/2,-(64*b**3+90*b**2-57*b+7)/(2*(8*b-7)*(8*b-1)))
N=64*b**3+90*b*b-57*b+7
eq(N.subs(b,R(3,20)),R(691,1000))
assert 192*R(3,20)**2+180*R(3,20)-57<0
RR=417792*b**5-308672*b**4+63040*b**3+4032*b*b-3479*b+343
eq(g*g-(1-b)*g+s*(1-b),RR/(64*(8*b-7)**2*(8*b-1)**2))
eq(RR.subs(b,R(3,20)-z),
   -417792*z**5+4672*z**4+28160*z**3+R(120744,25)*z*z+R(140467,125)*z+R(284,3125))
eq(4672-R(417792,140),R(59072,35))
print("PASS: exact bottom-parameter obstruction")

G=BB*(TT-s)-s*(AA+rr)-WW*v
eq(S.diff(G,h),(1-c)*(BB-s)+v*(c-f))
eq(S.diff(G,f),-e*(TT-s)-v*(h-d))
eq(S.diff(G,d),BB*c+s*(1-c)-v*(c-f))
eq((b+s*b/((1-s)*b-s)).subs(b,R(1,6)),R(19,30))
eq(S.diff(b+s*b/((1-s)*b-s),b),1-s*s/((1-s)*b-s)**2)

he=(1-s-b*e)/(1-b)
Ae=he*(1-c)+c*e
Be=1-c+e*(c-b)
Je=Ae+s
Te=Ae-c*s/(1-c)
We=Je-s*(c-b)/(1-c)
Le=he-s/(c-b)-s/b
Fe=F.subs({A:Ae,B:Be})
Ge=Be*(Te-s)-s*Je-We*v
eq(G.subs({h:he,d:e-s/(1-c),f:b}),Ge)
eq(S.diff(Ae,e),(c-b)/(1-b))
eq(S.diff(Be,e),c-b)
eq(S.diff(Te,e),(c-b)/(1-b))
eq(S.diff(Ge,e),(c-b)*(Te-s)+(c-b)/(1-b)*(Be-s-v))
eq(S.diff(Le,e),-b/(1-b))
eq((1-s/(1-b)).subs(b,R(1,6)),R(139,160))
FA=S.diff(F,A)
FB=S.diff(F,B)
eq(FA.subs({B:rho,v:R(1,4)}),R(25,1024))
eq(FA.subs({B:rho,v:R(1,3)}),R(317,9216))
eq(FB.subs({A:R(139,160),v:R(1,4)}),R(971,10240))
assert rho-s-R(1,3)>0
assert R(7,15)*R(971,10240)-mu/5>0

Tv=(v+s)*(v+lam)
Hfun=(x*((1-s)*v-s+lam)-(1+s)*v*v-(s+lam*(1+2*s))*v
      -lam*s*(1+s)+mu+s*w*(s-v-lam+Tv/x)
      -lam*s*x*(1-v)/w-mu*s*(1/x+1/(x-w)+1/(1-x)))
eq((Fe+lam*Ge+mu*Le).subs({e:1,b:1-x,c:1-w}, simultaneous=True),Hfun)
derivatives={
 (x,x):2*s*(w*Tv-mu)/x**3-2*mu*s/(x-w)**3-2*mu*s/(1-x)**3,
 (w,w):-2*lam*s*x*(1-v)/w**3-2*mu*s/(x-w)**3,
 (v,v):-2*(1+s)+2*s*w/x,
 (x,w):-s*Tv/x**2+lam*s*(1-v)/w**2+2*mu*s/(x-w)**3,
 (x,v):1-s-s*w*(2*v+s+lam)/x**2+lam*s/w,
 (w,v):s*(-1+(2*v+s+lam)/x)-lam*s*x/w**2,
}
for (y,zv), expression in derivatives.items():
    eq(S.diff(Hfun,y,zv),expression)
print("PASS: monotone relaxations, rational combination, and all Hessian identities")

xl,xu,wl,wu,vl,vu=R(5,6),R(17,20),s,R(11,30),R(1,4),R(1,3)
ml=xl-wu
eq(ml,R(7,15))
Tmax=(vu+s)*(vu+lam)
xxupper=2*s*wu*Tmax/xl**3-2*mu*s/(1-xl)**3
eq(xxupper,-R(21499219,13107200))
assert xxupper<-R(8,5)
vvupper=-2*(1+s)+2*s*wu/xl
eq(vvupper,-R(849,400))
assert vvupper<-R(21,10)
xwpositive=lam*s*(1-vl)/wl**2+2*mu*s/ml**3
eq(xwpositive,R(49191,401408))
assert xwpositive<R(1,8)
assert s*Tmax/xl**2<R(1,8)
assert 1-s-s*wu*(2*vu+s+lam)/xl**2>0
eq(1-s+lam,R(919,1024))
assert 1-s+lam<R(9,10)
assert (2*vu+s+lam)/xl<1
wvmag=s*(1-(2*vl+s+lam)/xu)+lam*s*xu/wl**2
eq(wvmag,R(115879,1392640))
assert wvmag<R(17,200)
assert R(5,9)*lam>R(6,25)**4
assert mu>R(3,7)**4
wwlower=2*s*(R(6,25)+R(3,7))**4/xu**3
eq(wwlower,R(374777442,5266121875))
assert wwlower>R(7,100)
eq(R(8,5)-R(9,10)-R(13,20),R(1,20))
eq(R(21,10)-R(9,10)-R(23,20),R(1,20))
eq(R(7,100)-R(5,208)-R(289,46000)-R(1,32),R(10081,1196000))
assert R(1,20)>R(1,32)
eq(R(13,20)*R(5,208),R(1,8)**2)
eq(R(23,20)*R(289,46000),R(17,200)**2)

center={x:R(169,200),w:R(29,160),v:R(143,500)}
H0=Hfun.subs(center)
eq(H0,-R(114868742378149,2349840203776000000))
assert H0<-R(1,22000)
values=[R(107804812138059733,1307408322289257676800),
        -R(111256498368113,1459080213626880000),
        R(18741121,160595968000)]
for var,value in zip([x,w,v],values):
    eq(S.diff(Hfun,var).subs(center),value)
    assert abs(value)<R(1,3000)
eq(-R(1,22000)+R(48,3000**2),-R(331,8250000))
print("PASS: global strong-concavity certificate and strict rational final gap")

