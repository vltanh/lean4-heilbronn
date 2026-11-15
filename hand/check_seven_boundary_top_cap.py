#!/usr/bin/env python3
"""Exact identities for the seven-boundary far-upper-cap argument."""
import sympy as S
R=S.Rational
f,g,h,e,k,L,rr,alpha,T,Z,u,s=S.symbols("f g h e k L rr alpha T Z u s")
points=[(0,h),(1,e),(g,k),(f,1)]
shoelace=sum(points[i][0]*points[(i+1)%4][1]-points[i][1]*points[(i+1)%4][0] for i in range(4))
assert S.expand(shoelace-((1-f)*(k-h)+g*(1-e)))==0
assert S.factor((1-alpha-L)*(1-s/L)+(1-alpha-rr)*(1-s/rr)
                -((1-alpha)*(2-s*(1/L+1/rr))-(L+rr)+2*s))==0
bound=2-s*Z-s*(2-s*Z)/(1-s*Z)-T+2*s
assert S.factor(S.diff(bound,Z)+s+s*s/(1-s*Z)**2)==0
assert S.factor(bound.subs(Z,4/T).subs(T,2*s/u)
                -2*(1-u)*(1-s*(1-u)/(u*(1-2*u))))==0
P=35-306*u+827*u*u-640*u**3
assert S.expand(P-(315*(u-R(17,63))**2+R(4,63)+640*(R(3,10)-u)*(u-R(1,4))**2))==0
assert S.expand(P-(R(7,20)+R(87,5)*(u-R(3,10))+123*(u-R(3,10))**2+640*(R(1,2)-u)*(u-R(3,10))**2))==0
expr=R(7,64)*(R(12,5)*u*(1-2*u)+(1-u)**2)-(1-u)*u*(1-2*u)
assert S.factor(expr-P/R(320))==0
assert R(7,5)**2<2
print("PASS: upper-cap quadrilateral area, monotone scalar bound, and exact contradiction")

# The lower quadrilateral, including the sign that benefits from inward X.
a,b,c,d,delta,M,V=S.symbols("a b c d delta M V")
bottom=a*(1-b)+c*d
sub=bottom.subs({a:1-s/T+f*delta/T-L,
                d:1-s/T-(1-f)*delta/T-rr})
assert S.expand(sub-((1-s/T-L)*(1-b)+(1-s/T-rr)*c
                    +delta/T*(f*(1-b)-c*(1-f))))==0
assert S.factor(sub.subs(delta,s/f)
                -((1-L)*(1-b)+c*(1-rr-s/(f*T))))==0
assert S.expand(g*g/4-f*(g-f)-(f-g/2)**2)==0
ss=R(7,64)
assert R(5,16)**2<ss
assert 4*ss-(1-ss)*R(11,16)**2==R(271,16384)
assert R(11,16)**2<R(24,5)*ss
print("PASS: both lower-quadrilateral sign branches and strict scalar gap")

# The left quadrilateral: the inward bonus is absorbed by the right gap.
U,r=S.symbols("U r",positive=True)
qr=(1-s/rr-M)*(1-s/M)+(1-s/rr-T)*(1-s/T)
assert S.factor(qr-((1-s/rr)*(2-s/M-s/T)-(M+T)+2*s))==0
assert S.diff((1-s/r)*(1+U),r)==s*(1+U)/r**2
ku=1-ss/u
Du=1-u-ss/ku
Fu=ku-ss/Du
assert S.factor(S.diff(Du,u)-(-1+ss**2/(u-ss)**2))==0
assert S.factor(S.diff(Fu,u)-(ss/u**2+ss*S.diff(Du,u)/Du**2))==0
assert S.factor(Fu.subs(u,R(7,12)))==R(299,704)<R(7,16)
assert S.factor(Fu.subs(u,R(2,3)))==R(2461,8320)<R(1,3)
assert ss/(R(7,12)-ss)==R(3,13)
assert ss*(R(144,49)-R(160,169)*R(144,25))==-R(6507,23660)
assert (u*u-(1-ss)*u+ss).subs(u,R(3,4))==R(1,256)
assert ss*(1+R(7,12))-R(1,2)*R(7,12)**2==R(7,2304)
assert ss*R(9,16)*R(19,12)-R(7,24)**2==R(455,36864)
assert ss*R(2,3)*R(5,3)-R(1,16)==R(17,288)
assert S.factor(((1-s/U)*(1+U)-(M+T)+2*s).subs(U,1-s*Z)
                -(2-s*Z-s*(2-s*Z)/(1-s*Z)-(M+T)+2*s))==0
print("PASS: left-quadrilateral elimination, all three slope ranges, and endpoint identity")

