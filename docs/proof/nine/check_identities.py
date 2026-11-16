import sympy as s
p=s.symbols('p');q=20*p*p-15*p+2
A=s.Matrix([0,4*p-s.Rational(1,2)])
B=s.Matrix([p,0]);C=s.Matrix([1-s.Rational(3,2)*p,0]);D=s.Matrix([1,s.Rational(3,2)*p])
E=s.Matrix([1,1-p]);F=s.Matrix([s.Rational(3,2)-4*p,1]);G=s.Matrix([p,1]);H=s.Matrix([0,1-p]);O=s.Matrix([1-2*p,2*p])
P=[A,B,C,D,E,F,G,H,O]; names='ABCDEFGHO'
# Signed areas matching the chosen chamber.
tr=[('ABH',1),('ABC',1),('ADO',1),('AGH',1),('BOE',1),('DHO',1),('DFE',-1),('GHF',1),('GOC',-1),('GFE',-1),('OCF',1)]
a=(3664*p-631)/7;b=s.Integer(1);c=49-278*p;d=2*(79*p-10)/7;e=1000*p-173;f=(109-616*p)/2
lam=[a,b,c,d,e,f,b,d,f,a,c]
mu1=3*(1187*p-202)/56;mu2=(402-2311*p)/4;mu3=3*(267*p-46)/4;mu4=(4302-24701*p)/56
mu=[(0,0,1,mu1),(1,1,1,mu2),(2,1,1,mu3),(3,0,-1,mu3),(4,0,-1,mu2),(5,1,-1,mu1),(6,1,-1,mu4),(7,0,1,mu4)]
J=[]
for (word,sgn) in tr:
 i,j,k=[names.index(v)for v in word];row=[s.Integer(0)]*18
 row[2*i]=sgn*(P[j][1]-P[k][1])/2;row[2*i+1]=sgn*(P[k][0]-P[j][0])/2
 row[2*j]=sgn*(P[k][1]-P[i][1])/2;row[2*j+1]=sgn*(P[i][0]-P[k][0])/2
 row[2*k]=sgn*(P[i][1]-P[j][1])/2;row[2*k+1]=sgn*(P[j][0]-P[i][0])/2
 J.append(row)
res=[sum(lam[i]*J[i][j]for i in range(11))for j in range(18)]
for i,coord,sgn,w in mu:res[2*i+coord]+=sgn*w
print('Stress residual / q, by point:')
for i,name in enumerate(names):
 pair=[s.cancel(res[2*i+j]/q)for j in range(2)]
 print(name, pair)
 for j in range(2):assert s.rem(s.together(res[2*i+j]).as_numer_denom()[0],q,p)==0
# Boundary-chamber algebra.
u,v,t=s.symbols('u v t',positive=True)
a0=1-v-t/u;b0=1-u-t/v
EE=a0*(1-3*u-t)+b0*(1-3*v-t)+2*t*(u+v-1)
expected=6*u*v+(3*t-4)*(u+v)+2*t+2-t*(1-t)*(u+v)/(u*v)
assert s.factor(EE-expected)==0
R=3*p**3+3*p*p*t-4*p*p+p*t+p+t*t-t
assert s.factor(expected.subs({u:p,v:p})-2*R/p)==0
g=1-6*p+5*p*p
assert s.factor(R.subs(t,g)-2*p*(p-1)*q)==0
assert s.rem(s.diff(R,p).subs(t,g)-(s.Rational(39,20)-85*p/8),q,p)==0
# Kernel elimination coefficient.
L=s.Rational(3,2)-5*p;aa=4*p-s.Rational(1,2);K=1-s.Rational(5,2)*p;xx=1-2*p;kk=1+L/p
coef=-2-xx*(1-K*kk/aa)-2*p*kk-2*(aa-s.Rational(3,2)*p)
want=12*(s.Rational(1,5)-p)/(p*(8*p-1))
assert s.rem(s.together(coef-want).as_numer_denom()[0],q,p)==0
print('All chamber identities, stress identities and kernel coefficient: PASS')

# Exact candidate attainment and positivity using only a rational isolating interval.
from itertools import combinations
lo=s.Rational(173,1000);hi=s.Rational(347,2000)
assert s.Rational(403,50)**2 < 65 < s.Rational(202,25)**2
area0=(2-9*p)/8
for pt in P:
    for coord in pt:
        ends=[coord.subs(p,lo),coord.subs(p,hi)]
        assert min(ends)>=0 and max(ends)<=1
ntight=0;seen=0
for i,j,k in combinations(range(9),3):
    v=P[j]-P[i];w=P[k]-P[i]
    poly=s.rem(s.expand((v[0]*w[1]-v[1]*w[0])/2),q,p)
    ends=[poly.subs(p,lo),poly.subs(p,hi)]
    if min(ends)>0: unsigned=poly
    elif max(ends)<0: unsigned=-poly
    else: raise ArithmeticError(('orientation not resolved',i,j,k,poly))
    gap=s.expand(unsigned-area0)
    if gap==0: ntight+=1
    else: assert min(gap.subs(p,lo),gap.subs(p,hi))>0
    seen+=1
assert seen==84 and ntight==11
for weight in lam+[entry[-1]for entry in mu]:
    # Each weight is affine. Nonnegative at both open-interval endpoints,
    # and positive at one endpoint, implies strict positivity inside.
    ends=[weight.subs(p,lo),weight.subs(p,hi)]
    assert min(ends)>=0 and max(ends)>0
productgap=(1-p-g/p)*(1-3*p-g)-g*(1-2*p)
assert s.rem(s.together(productgap).as_numer_denom()[0],q,p)==0
print('Exact 84-triangle attainment, 19 positive weights, equality product: PASS')
print('Scope: algebraic diagnostics only; no unrestricted global hand proof asserted.')
