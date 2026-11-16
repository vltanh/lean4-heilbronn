"""Exact identities for the simultaneous C/D inward-moving chamber."""
import sympy as S

a,b,c,d,e,f,g,h,x,y,t,r=S.symbols('a b c d e f g h x y t r')
points={'A':(0,a),'B':(b,0),'C':(c,t),'D':(1-r,d),'E':(1,e),
        'F':(f,1),'G':(g,1),'H':(0,h),'O':(x,y)}
def area(labels):
 p,q,z=[points[k] for k in labels]
 return S.expand((q[0]-p[0])*(z[1]-p[1])-(q[1]-p[1])*(z[0]-p[0]))
expected={
 'ABH':b*(h-a),'ABC':a*(c-b)+b*t,'AGH':g*(h-a),
 'DEF':(1-f)*(e-d)+r*(1-e),'GHF':(f-g)*(1-h),
 'GEF':(f-g)*(1-e),'ADO':(1-r)*(y-a)-(d-a)*x,
 'DHO':(1-r)*(h-y)-(h-d)*x,'BOE':e*(x-b)-(1-b)*y,
 'GCO':(1-t)*x-c*(1-y)-g*(y-t),
 'OCF':c*(1-y)+f*(y-t)-(1-t)*x,
}
for k,p in expected.items():assert S.expand(area(k)-p)==0,k
assert S.expand(expected['ADO']+expected['DHO']-(h-a)*(1-r-x))==0
assert S.expand(expected['GCO']+expected['OCF']-(f-g)*(y-t))==0
u,v,s,alpha,beta,lam=S.symbols('u v s alpha beta lam')
X,Y=S.symbols('X Y')
g0=1-3*u-3*v+5*u*v
H0=alpha*(1-3*u-s)+beta*(1-3*v-s)+2*s*(u+v-1)
C1=alpha*(1-t)-s+v*r+lam*(1-v)
C2=beta*(1-r)-s+u*t+lam*(1-u)
RHS=alpha*((1-t)*(1-u)-s)-s+u*t+beta*((1-r)*(1-v)-s)-s+v*r+lam*((1-v)*(1-u)-s)
Tu=alpha*(1-3*u)+beta-s-u*(1-2*v)+lam*(1-u)
Tv=beta*(1-3*v)+alpha-s-v*(1-2*u)+lam*(1-v)
loss=t*Tu+r*Tv+u*t*t+v*r*r-(alpha+beta)*t*r
assert S.expand(RHS-C1*(2*u+r)-C2*(2*v+t)-(H0+lam*(g0-s)-loss))==0
assert S.factor((Tu-alpha*beta-alpha*(s/v-2*u)-(beta-s)+u*(1-2*v)-lam*(1-u)).subs(beta,1-u-s/v))==0
assert S.factor((Tv-alpha*beta-beta*(s/u-2*v)-(alpha-s)+v*(1-2*u)-lam*(1-v)).subs(alpha,1-v-s/u))==0
assert S.Rational(7,64)/(S.Rational(4,5)-S.Rational(7,64))-(S.Rational(1,5)-S.Rational(7,128))==S.Rational(1847,141440)
assert S.Rational(2,25)<S.Rational(7,64)<S.Rational(11,100)<S.Rational(1,5)
print('PASS: all11 moving determinants and both diagonal sums')
print('PASS: exact simultaneous-displacement weighted identity and both positive coefficient rewrites')
