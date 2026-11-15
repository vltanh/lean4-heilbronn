"""Exact algebra for the rationally bounded simultaneous D/F chamber."""
import sympy as S

a,b,c,d,e,f,g,h,x,y,k,r=S.symbols('a b c d e f g h x y k r')
points={'A':(0,a),'B':(b,0),'C':(c,0),'D':(1-r,d),'E':(1,e),
        'F':(f,k),'G':(g,1),'H':(0,h),'O':(x,y)}
def area(labels):
    p,q,z=[points[t] for t in labels]
    return S.expand((q[0]-p[0])*(z[1]-p[1])
                    -(q[1]-p[1])*(z[0]-p[0]))
expected={
    'ABH':b*(h-a),'ABC':a*(c-b),'AGH':g*(h-a),
    'DEF':(1-f)*(e-d)+r*(k-e),
    'GHF':(f-g)*(1-h)+g*(1-k),
    'GEF':(f-g)*(1-e)-(1-g)*(1-k),
    'ADO':(1-r)*(y-a)-(d-a)*x,
    'DHO':(1-r)*(h-y)-(h-d)*x,
    'BOE':e*(x-b)-(1-b)*y,
    'GCO':x-c+(c-g)*y,
    'OCF':k*(c-x)+(f-c)*y,
}
for name,p in expected.items():
    assert S.expand(area(name)-p)==0,name
assert S.expand(expected['ADO']+expected['DHO']
                -(h-a)*(1-r-x))==0
assert S.expand(expected['GCO']+expected['OCF']
                -(f-g)*y+(1-k)*(c-x))==0
u,v,s,w,alpha,B,lam,X,Y=S.symbols('u v s w alpha B lam X Y')
geom=(B-r)*e*x+B*(1-r-x)*h-B*(1-r)*y-B*s+r*k*x
substituted=geom.subs({e:1-v-(1-g)*w,h:1-v+g*w,
                       k:1-(1-g-B)*w})
target=B*((1-r)*(1-v-y+w*(g-x))-s)+r*v*x
assert S.expand(substituted-target)==0
Ast=alpha+g*w
E1=Ast*(1-X-u-s)-s*(1-Y)
E2=B*((1-r)*(1-v-Y+w*(g-1+X))-s)-(s-r*v)*(1-X)
E3=(1-v-(1-g)*w)*(1-X-u)-(1-u)*Y-s
combined=S.expand(E1+E2+lam*E3)
C1=Ast-s+r*v-B*(1-r)*w+lam*(1-v-(1-g)*w)
C2=B*(1-r)-s+lam*(1-u)
assert S.expand(combined.coeff(X)+C1)==0
assert S.expand(combined.coeff(Y)+C2)==0
assert S.expand(C1+w*C2
                -(Ast-s+r*v-s*w+lam*(1-v+(g-u)*w)))==0
g0=1-3*u-3*v+5*u*v
H0=alpha*(1-3*u-s)+(B+g-u)*(1-3*v-s)+2*s*(u+v-1)
av=1-3*v-s
T=B*(1-3*v)+alpha-s-v*(1-2*u)+lam*(1-v)
K0=(B-s)*(c-g)-g*(1-3*u)+s*(1-2*u)+lam*(c*(1-u)-g*(1-3*u)-2*u*u)
K1=-B*(c-g)+(1+lam)*g-lam*u-s
loss=(g-u)*av+r*T+v*r*r+w*(K0+r*K1)
reduced=combined.subs(Y,2*v+w*(c-1+X)).subs(X,2*u+r)
assert S.expand(reduced-(H0+lam*(g0-s)-loss))==0
R=S.Rational
assert (R(9,20)-R(7,64))/R(11,20)==R(109,176)
assert 1-R(21,128)-R(11,20)==R(183,640)
assert R(1,5)-R(11,100)*R(109,176)>0
assert R(1,5)-R(11,100)**2>0
assert R(8,15)-R(65,512)-R(2,25)>0
assert -R(65,512)+R(21,320)+R(1,4)*(R(8,15)-R(65,512)-R(2,25))==R(3113,153600)
assert R(2,15)-R(11,100)+R(7,160)-R(43,320)+R(1,5)==R(637,4800)
assert -R(183,640)*R(107,128)+R(21,128)-R(11,100)==-R(75761,409600)
assert R(637,4800)-R(109,176)*R(75761,409600)==R(157073,8650752)
print('PASS: all11 determinants, both diagonal sums, and simultaneous elimination')
print('PASS: full D/F weighted identity and all rational positive coefficient bounds')
