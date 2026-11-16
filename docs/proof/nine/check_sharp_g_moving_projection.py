"""Exact diagnostics for SHARP_G_MOVING_PROJECTION.md."""
import sympy as S

q=S.Rational
a,h,b,c,d,e,f,g,t,x,y=S.symbols('a h b c d e f g t x y',real=True)
u,v=S.symbols('u v',positive=True)
s=q(7,64)

def eq(lhs,rhs=0):
    assert S.cancel(S.expand(lhs-rhs))==0,(lhs,rhs)

def det(P,Q,R):
    U=Q-P;V=R-P
    return S.expand(S.det(S.Matrix.hstack(U,V)))

pts=[S.Matrix(p) for p in [(0,a),(b,0),(c,0),(1,d),(1,e),(f,1),(g,1-t),(0,h),(x,y)]]
triples=[(0,1,7),(0,1,2),(0,6,7),(3,4,5),(6,7,5),(6,4,5),(0,3,8),(3,7,8),(1,8,4),(6,2,8),(8,2,5)]
formulas=[b*(h-a),a*(c-b),g*(h-a),(1-f)*(e-d),(f-g)*(1-h)-f*t,(f-g)*(1-e)+(1-f)*t,y-a-(d-a)*x,h-y-(h-d)*x,e*(x-b)-(1-b)*y,(1-t)*(x-c)+(c-g)*y,c-x+(f-c)*y]
for tr,expr in zip(triples,formulas):eq(det(*(pts[j] for j in tr)),expr)
eq(formulas[6]+formulas[7],(h-a)*(1-x))
eq(formulas[9],(1-t)*(x-g)-(c-g)*(1-t-y))
eq((1-t)*(x-u)-(b-u)*(1-t-y)-(g-u)*y-(c-b)*(1-t-y),formulas[9])
print('PASS: all eleven signed areas and both GCO rearrangements')

M=s/v;alpha=1-v-s/u;beta=1-u-M;eta=1+u*v/s;A=alpha-eta*t
E=1-v+beta*v*t/s;z=1-3*u
eq(eta,(u+M)/M)
Dc=(1-u)*z-2*s*u;Dj=(1-u)*z-2*s*(1-2*u)
J=v*Dj-s*(2*u+s)+2*s*u*t
C=A*(1-u)*((1-t)*z-s)+s*(1-v)*z+beta*v*t*z-s*s-s*(1-u)+s*(1-u)*t
upper=(E*z-s)/(1-u)
lower_A=(1-t)+A-A*(1-t)*z/s
lower_G=(1-t)+v-v*(1-t)*z/s
eq(s*(1-u)*(upper-lower_A),C)
eq(s*(1-u)*(upper-lower_G),J)
eq(Dj-2*s*u,(1-u)*(z-2*s))
eq(Dc-Dj,2*s*z)
eq(s-q(1,8)*(1-q(1,8)))
eq(1-4*s,q(9,16))
eq(Dj.subs(u,q(1,4)),q(5,64))
assert 2*s/3<q(5,64)
eq(q(9,16)*q(5,64)-s*(q(1,2)+s),-q(93,4096))
eq((q(9,16)*Dj-s*(2*u+s)).subs(u,q(15,64)),-q(49,65536))
eq(Dj.subs(u,q(15,64)),q(455,4096))
assert S.diff(Dj,u).subs(u,q(1,3))<0
print('PASS: scalar height elimination and complete rational interval bounds')

mu=Dc/Dj;weight_poly=3*Dj-10*s*z
eq(S.diff(weight_poly,u),18*u-12+42*s)
eq(S.diff(weight_poly,u).subs(u,q(15,64)),-q(51,16))
eq(weight_poly.subs(u,q(15,64)),q(35,4096))
Ct0=C.subs(t,0);Jt0=J.subs(t,0)
exact_diff=t*(beta*v*z-(1-u)*(alpha*z+eta*(z-s))+s*(1-u))+t*t*(1-u)*eta*z
eq(C-Ct0,exact_diff)
B=1-2*u-u*z/s
bound=t*((1-u)*(v*B-z+2*s)-2*s*z)
eq(bound-exact_diff,t*(1-u)*z*(alpha-s/(1-u)-eta*t))
assert S.diff(B,u,2)>0
eq(B.subs(u,q(1,8)),q(1,28))
eq(B.subs(u,q(15,64)),-q(47,448))
eq(q(9,448)-q(19,64)+2*s,-q(13,224))
eq(2*s*q(15,64)*q(8,5),q(21,256))
eq(-q(49,64)*q(13,224)-q(133,2048)+q(21,256),-q(7,256))
print('PASS: positive weight and uniformly negative inward-displacement bound')

N=6144*u**3-8864*u**2+2349*u-175
eq(Ct0+mu*Jt0,3*(u-1)*(64*u-19)*N/(131072*u*Dj))
w=S.symbols('w',real=True)
eq(N.subs(u,w+q(1,6)),6144*w**3-5792*w*w-q(281,3)*w-q(23,18))
quadratic=-5280*w*w-q(281,3)*w-q(23,18)
eq(S.discriminant(quadratic,w),-q(163919,9))
assert q(15,64)<q(1,4)<q(19,64)
print('PASS: final negative cubic; complete projection-restricted G-moving exclusion')
