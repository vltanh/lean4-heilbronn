"""Exact identities for the simultaneous B/E inward sharp chamber."""
import sympy as S

a,b,c,d,e,f,g,h,x,y,eps,eta,u,v,s,p,q,t,z=S.symbols(
    'a b c d e f g h x y eps eta u v s p q t z', real=True)
L=h-a;M=f-g
pts={'A':(0,a),'B':(b,eps),'C':(c,0),'D':(1,d),'E':(1-eta,e),
     'F':(f,1),'G':(g,1),'H':(0,h),'O':(x,y)}
def det(word):
    P,Q,R=(pts[k]for k in word)
    return S.expand((Q[0]-P[0])*(R[1]-P[1])-(Q[1]-P[1])*(R[0]-P[0]))
formulas={
 'ABH':b*L,'ABC':a*(c-b)-c*eps,'AGH':g*L,
 'DEF':(1-f)*(e-d)-eta*(1-d),'GHF':M*(1-h),'GEF':M*(1-e),
 'ADO':y-a-(d-a)*x,'DHO':h-y-(h-d)*x,
 'BOE':(e-eps)*(x-b)-(1-eta-b)*(y-eps),
 'GCO':x-c+(c-g)*y,'OCF':c-x+(f-c)*y}
for word,expr in formulas.items():assert S.expand(det(word)-expr)==0
assert S.expand(formulas['ADO']+formulas['DHO']-L*(1-x))==0
assert S.expand(formulas['GCO']+formulas['OCF']-M*y)==0
endpoint=formulas['BOE'].subs({b:u,e:1-v,x:1-2*u,y:2*v})
F0=1-3*u-3*v+5*u*v
assert S.expand(endpoint-(F0+2*u*eps+2*v*eta-eps*eta))==0
alpha=1-v-s/u;beta=1-u-s/v
phi=6*u*v+(3*s-4)*(u+v)+2*s+2-s*(1-s)*(u+v)/(u*v)
expression=(alpha-s)*x-(beta-s)*y-alpha*(u+s)+beta*(1-v-s)-s
assert S.factor(expression.subs({x:1-2*u,y:2*v})-phi)==0
p0=(15-S.sqrt(65))/40;s0=(9*S.sqrt(65)-55)/160
lam=(77*S.sqrt(65)-615)/20
q0=(16257+1889*S.sqrt(65))/36104
assert S.simplify(20*p0**2-15*p0+2)==0
assert 615**2<77**2*65<621**2
assert 1889+16257>36104//2
# s0 > 7/64: 18 sqrt(65) > 145.
assert 18**2*65>145**2
symmetric=S.factor(p*(phi+lam*(F0-s)).subs({u:p,v:p,s:s0}))
assert S.simplify(symmetric-(6+5*lam)*(p-p0)**2*(p-q0))==0
mean_form=6*q+2*(3*s-4)*p+2*s+2-2*s*(1-s)*p/q+lam*(1-6*p+5*q-s)
assert S.simplify(S.diff(mean_form,q)-(6+5*lam+2*s*p*(1-s)/q**2))==0
# Coupled lower-bound minimization and the strict 3/5 coefficient comparison.
Xbound=v+s+s*(u+s)/(1-u-s/v)
qform=s+(q+s+s*(u+s)+s**2*(u+s)/q)/(1-u)
assert S.factor(Xbound-qform.subs(q,(1-u)*v-s))==0
assert S.simplify(1+(1+S.sqrt(u))**2/(1-u)-2/(1-S.sqrt(u)))==0
P=3*t**3+(10*s-3)*t**2-3*s*t+3*s
assert S.expand(64*P.subs(s,S.Rational(7,64))-(192*t**3-122*t**2-21*t+21))==0
assert S.expand((192*t**3-122*t**2-21*t+21).subs(t,z+S.Rational(1,2))
                -(192*z**3+166*z**2+z+4))==0
assert S.discriminant(70*z*z+z+4,z)==-1119
assert S.discriminant(10*t*t-3*t+3,t)<0
print('PASS: all eleven oriented doubled areas and both diagonal sums')
print('PASS: the two inward-loss scalar inequalities and sharp positive-weight identity')
print('PASS: the exact cubic coefficient bound, its AM-GM reduction, and all rational comparisons')
