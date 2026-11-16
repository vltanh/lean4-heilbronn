"""Exact identities for the simultaneous B/D inward-moving chamber."""
import sympy as S

a,b,c,d,e,f,g,h,x,y,t,r=S.symbols('a b c d e f g h x y t r')
points={'A':(0,a),'B':(b,t),'C':(c,0),'D':(1-r,d),'E':(1,e),
        'F':(f,1),'G':(g,1),'H':(0,h),'O':(x,y)}
def area(labels):
    p,q,z=[points[k] for k in labels]
    return S.expand((q[0]-p[0])*(z[1]-p[1])
                    -(q[1]-p[1])*(z[0]-p[0]))
expected={
    'ABH':b*(h-a),'ABC':a*(c-b)-c*t,'AGH':g*(h-a),
    'DEF':(1-f)*(e-d)+r*(1-e),'GHF':(f-g)*(1-h),
    'GEF':(f-g)*(1-e),'ADO':(1-r)*(y-a)-(d-a)*x,
    'DHO':(1-r)*(h-y)-(h-d)*x,
    'BOE':e*(x-b)-(1-b)*y+t*(1-x),
    'GCO':x-c*(1-y)-g*y,'OCF':c*(1-y)+f*y-x,
}
for k,p in expected.items():
    assert S.expand(area(k)-p)==0,k
assert S.expand(expected['ADO']+expected['DHO']-(h-a)*(1-r-x))==0
assert S.expand(expected['GCO']+expected['OCF']-(f-g)*y)==0
u,v,s,alpha,beta,lam,X,Y=S.symbols('u v s alpha beta lam X Y')
g0=1-3*u-3*v+5*u*v
H0=alpha*(1-3*u-s)+beta*(1-3*v-s)+2*s*(u+v-1)
E1=(alpha-t)*(1-X-u-s)-(s+u*t)*(1-Y)
E2=beta*((1-r)*(1-v-Y)-s)-(s-v*r)*(1-X)
E3=(1-v)*(1-u)-s-(1-v-t)*X-(1-u)*Y
C1=alpha-t-s+v*r+lam*(1-v-t)
C2=beta*(1-r)-s-u*t+lam*(1-u)
combined=S.expand(E1+E2+lam*E3)
assert S.expand(combined.coeff(X)+C1)==0
assert S.expand(combined.coeff(Y)+C2)==0
KB=1-s-2*u*(1+v+lam)
Tv=beta*(1-3*v)+alpha-s-v*(1-2*u)+lam*(1-v)
loss=t*KB+r*Tv+v*r*r-(1+lam)*t*r
assert S.expand(combined.subs({X:2*u+r,Y:2*v})
                -(H0+lam*(g0-s)-loss))==0
rewrite=beta*(1-3*v)-v+2*u*v+lam*s*(1+1/u)
assert S.factor((Tv-(1+lam)*(alpha-s)-rewrite)
                .subs(alpha,1-v-s/u))==0
E0=1-u-4*v+5*u*v+13*s/4-s/v+s/(4*u)
assert S.factor(rewrite.subs({beta:1-u-s/v,lam:S.Rational(1,4)})-E0)==0
assert S.factor(E0.subs(u,S.Rational(1,4))
                -(S.Rational(3,4)-11*v/4+17*s/4-s/v))==0
assert S.Rational(1,16)-S.Rational(11,100)**2>0
assert 1-S.Rational(11,100)-S.Rational(1,2)*(1+S.Rational(1,4)+S.Rational(1,3))==S.Rational(59,600)
assert S.Rational(1,4)-4*S.Rational(7,64)==-S.Rational(3,16)
assert S.Rational(7,64)/(1-2*S.Rational(7,64))==S.Rational(7,50)
Q=311*v/256-11*v*v/4-S.Rational(11,100)
assert Q.subs(v,S.Rational(7,50))==S.Rational(1977,320000)
assert Q.subs(v,S.Rational(1,4))==S.Rational(559,25600)
print('PASS: all11 moving determinants and both diagonal sums')
print('PASS: exact combined B/D identity, positive loss rewrite, and quadratic endpoint gaps')
