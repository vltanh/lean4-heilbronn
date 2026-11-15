"""Exact symbolic diagnostics for the simultaneous E/F sharp chamber."""
import sympy as S
from fractions import Fraction as F

a,b,c,d,e,f,g,h,r,k,x,y = S.symbols('a b c d e f g h r k x y')
points = {'A':(0,a),'B':(b,0),'C':(c,0),'D':(1,d),'E':(1-r,e),
          'F':(f,k),'G':(g,1),'H':(0,h),'O':(x,y)}
def area(word):
    P,Q,R = [points[v] for v in word]
    return (Q[0]-P[0])*(R[1]-P[1])-(Q[1]-P[1])*(R[0]-P[0])
def equal(left,right):
    assert S.factor(left-right)==0
forms = {
    'ABH':b*(h-a),'ABC':a*(c-b),'AGH':g*(h-a),
    'DEF':(1-f)*(e-d)-r*(k-d),
    'GHF':(f-g)*(1-h)+g*(1-k),
    'GEF':(f-g)*(1-e)-(1-r-g)*(1-k),
    'ADO':y-a-(d-a)*x,'DHO':h-y-(h-d)*x,
    'BOE':e*(x-b)-(1-r-b)*y,
    'GCO':x-c+(c-g)*y,'OCF':k*(c-x)+(f-c)*y,
}
for word,formula in forms.items():equal(area(word),formula)
equal(forms['GEF'],(f-g)*(k-e)-(1-f-r)*(1-k))
equal(forms['DEF'],(1-f-r)*(e-d)-r*(k-e))
equal(forms['ADO']+forms['DHO'],(h-a)*(1-x))
equal(forms['GCO']+forms['OCF'],(f-g)*y-(1-k)*(c-x))

u,v,s,z,w,lam,X,Y = S.symbols('u v s z w lam X Y')
gg=u+z;M=s/v;B=1-gg-M;alpha=1-v-s/u;beta=B+z;Astar=alpha+gg*w
hu=1-v+gg*w;eu=1-v-(1-r-gg)*w;T=1-v-y+w*(gg-x)-s
eliminated=B*eu*x-r*(1-M*w)*x+(B-r)*(hu*(1-x)-y-s)-s*x
equal(eliminated,(B-r)*T-(s+r*v)*x)
E1=Astar*(x-u-s)-s*(1-y)
F2=B*T-s*x
F3=(1-v-(1-gg)*w)*(x-u)-(1-u)*y-s
E2=(B-r)*T-(s+r*v)*x
E3=eu*(x-u)-(1-r-u)*y-s
R=T+v*x-lam*w*(x-u)-lam*y
equal(E1+E2+lam*E3,E1+F2+lam*F3-r*R)
D0=1-r-u;theta=(x-u)/D0;y0=((1-v)*(x-u)-s)/D0
equal(R.subs(y,y0-(D0-z)*w*theta),1-v-s-(1+lam)*y0+v*x+w*z*(1-(1+lam)*theta))

phi=E1+F2+lam*F3
phi_xy=S.expand(phi.subs({x:1-X,y:Y}))
C2=B-s+lam*(1-u)
equal(-S.diff(phi_xy,Y),C2)
after_y=S.expand(phi_xy.subs(Y,2*v+w*(c-1+X)))
equal(-S.diff(after_y,X),Astar-s-s*w+lam*(1-v+z*w))
g0=1-3*u-3*v+5*u*v
H0=alpha*(1-3*u-s)+beta*(1-3*v-s)+2*s*(u+v-1)
av=1-3*v-s
K0=(B-s)*(c-gg)-gg*(1-3*u)+s*(1-2*u)+lam*(c*(1-u)-gg*(1-3*u)-2*u*u)
equal(after_y.subs(X,2*u),H0+lam*(g0-s)-z*av-w*K0)

assert 3*F(21,128)+F(7,64)==F(77,128)>F(9,20)
assert F(109,176)<F(5,8) and F(11,128)<F(3,32)
assert F(44,5)-F(65,25)==F(31,5)<7
assert (F(2,3)+F(21,128))/2+F(7,64)==F(403,768)>F(1,2)
assert 1-F(11,100)-F(1,10)-F(2,3)==F(37,300)
assert F(37,300)-F(5,256)==F(1993,19200)>F(1,10)
assert F(1,5)-F(11,100)*F(109,176)>0
assert -F(65,512)+F(21,320)+F(1,4)*(F(8,15)-F(65,512)-F(2,25))==F(3113,153600)>0
print('PASS: eleven E/F determinants, two diagonal sums, and both gap identities')
print('PASS: exact E/F elimination, mixed-loss rewrites, and weighted identity')
print('PASS: all rational gaps, including R>1/10 and K0>3113/153600')
