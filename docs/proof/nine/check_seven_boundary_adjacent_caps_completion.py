"""Exact identities for the full four-word exterior R1 closure."""
import sympy as S

a,h,b,c,d,e,f,g,t,x,y=S.symbols('a h b c d e f g t x y')
s=S.Rational(7,64)
L=h-a;R=e-d

def area(P,Q,R):
 return S.expand((Q[0]-P[0])*(R[1]-P[1])-(Q[1]-P[1])*(R[0]-P[0]))
def eq(p,q):
 assert S.factor(p-q)==0,(p,q,S.factor(p-q))
A=(0,a);B=(b,0);C=(c,0);D=(1,d);E=(1,e);F=(f,1);G=(g,1);H=(t,h);O=(x,y)
eq(area(A,B,H),b*L+a*t)
eq(area(A,G,H),g*L-(1-a)*t)
eq(area(B,O,E)+area(D,O,G),(1+R)*x-1-b*(e-y)-g*(y-d))
D=(1-t,d);H=(0,h)
eq(area(C,D,E),(1-c)*R-e*t)
eq(area(D,E,F),(1-f)*R+(1-e)*t)
eq(area(D,O,G),(1-g)*(y-d)-(1-d)*(1-x)+t*(1-y))
eq(area(B,O,E),(1-b)*(e-y)-e*(1-x))
X,z,u,rr=S.symbols('X z u R')
eq(((1-(s+e*t)/R)*(1-y)+(1-(s-(1-e)*t)/R)*y-s),1-s/R-s-t*(e-y)/R)
eq((1+rr)*(s*(1+1/rr)+t*z/rr)-(1-u)*rr+2*s-t*(1-e+z),u*rr+2*s+s*(1+rr)*(1+1/rr)+t*(z/rr-(1-e))-rr)
q=(1-s)*rr**2+(2*s-1)*rr+2*s
eq(q,s*(2+rr)-(1-s)*rr*(1-rr))
assert S.discriminant(q,rr)==-S.Rational(173,1024)
eq(S.diff((1-rr)*(1-s-s/rr),rr),-(1-s)+s/rr**2)
assert ((1-rr)*(1-s-s/rr)-2*s).subs(rr,S.Rational(5,7))==-S.Rational(9,1120)
assert (-(1-s)+s/rr**2).subs(rr,S.Rational(5,7))<0
assert s*(2+4/S.Rational(5,7)+1/S.Rational(5,7)**2)==S.Rational(1673,1600)>1
rep=(3,2,3,2,5,4,5,4)
for word,shift in [((3,2,5,4,5,4,3,2),6),((5,4,3,2,3,2,5,4),2)]:
 assert tuple(word[(i+shift)%8] for i in range(8))==rep
print('PASS: both remaining R1 families, all changed area signs, and complete four-word assembly')
