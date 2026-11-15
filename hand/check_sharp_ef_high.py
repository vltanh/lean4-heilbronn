"""Exact algebra for the rationally bounded simultaneous E/F chamber."""
import sympy as S

a,b,c,d,e,f,g,h,x,y,k,r = S.symbols('a b c d e f g h x y k r')
points = {'A':(0,a),'B':(b,0),'C':(c,0),'D':(1,d),'E':(1-r,e),
          'F':(f,k),'G':(g,1),'H':(0,h),'O':(x,y)}

def area(labels):
    p,q,z = [points[t] for t in labels]
    return S.expand((q[0]-p[0])*(z[1]-p[1])
                    -(q[1]-p[1])*(z[0]-p[0]))

expected = {
    'ABH':b*(h-a), 'ABC':a*(c-b), 'AGH':g*(h-a),
    'DEF':(1-f)*(e-d)-r*(k-d),
    'GHF':(f-g)*(1-h)+g*(1-k),
    'GEF':(f-g)*(1-e)-(1-g-r)*(1-k),
    'ADO':y-a-(d-a)*x, 'DHO':h-y-(h-d)*x,
    'BOE':e*(x-b)-(1-r-b)*y,
    'GCO':x-c+(c-g)*y,
    'OCF':k*(c-x)+(f-c)*y,
}
for name,polynomial in expected.items():
    assert S.expand(area(name)-polynomial) == 0, name
assert S.expand(expected['ADO']+expected['DHO']-(h-a)*(1-x)) == 0
assert S.expand(expected['GCO']+expected['OCF']
                -(f-g)*y+(1-k)*(c-x)) == 0
assert S.expand(expected['GEF']
                -((f-g)*(k-e)-(1-f-r)*(1-k))) == 0
assert S.expand(expected['DEF']
                -((1-f-r)*(e-d)-r*(k-e))) == 0

u,v,s,w,alpha,B,lam,X,Y = S.symbols('u v s w alpha B lam X Y')
geom = B*e*x-(B-r)*(y+s-h*(1-x))-r*k*x
substituted = geom.subs({e:1-v-(1-g-r)*w,h:1-v+g*w,
                          k:1-(1-g-B)*w})
target = (B-r)*(1-v-y-s+w*(g-x))-r*v*x
assert S.expand(substituted-target) == 0
Ast = alpha+g*w
E1 = Ast*(1-X-u-s)-s*(1-Y)
E2 = (B-r)*(1-v-Y-s+w*(g-1+X))-(s+r*v)*(1-X)
E3 = (1-v-(1-g-r)*w)*(1-X-u)-(1-r-u)*Y-s
combined = S.expand(E1+E2+lam*E3)
C1 = Ast-s-r*v-(B-r)*w+lam*(1-v-(1-g-r)*w)
C2 = B-r-s+lam*(1-r-u)
assert S.expand(combined.coeff(X)+C1) == 0
assert S.expand(combined.coeff(Y)+C2) == 0
assert S.expand(C1+w*C2
                -(Ast-s-r*v-s*w+lam*(1-v+(g-u)*w))) == 0

g0 = 1-3*u-3*v+5*u*v
H0 = alpha*(1-3*u-s)+(B+g-u)*(1-3*v-s)+2*s*(u+v-1)
av = 1-3*v-s
K0 = ((B-s)*(c-g)-g*(1-3*u)+s*(1-2*u)
      +lam*(c*(1-u)-g*(1-3*u)-2*u*u))
T = 1-s-2*v*(1+u+lam)
K1 = g+lam*u-(1+lam)*c
loss = (g-u)*av+w*K0+r*(T+w*K1)
reduced = combined.subs(Y,2*v+w*(c-1+X)).subs(X,2*u)
assert S.expand(reduced-(H0+lam*(g0-s)-loss)) == 0

R = S.Rational
p0 = (15-S.sqrt(65))/40
s0 = (9*S.sqrt(65)-55)/160
weight = (8-39*p0)/(6-10*p0)
assert S.simplify(weight-(77*S.sqrt(65)-615)/20) == 0
assert 620**2 < 77**2*65 < 621**2
assert (55+160*R(7,64))**2 < 81*65 < (55+160*R(11,100))**2
assert R(11,100)/R(11,20) == R(1,5)
assert R(3,2)*R(7,64) == R(21,128)
assert 1-R(1,5)-R(2,3) == R(2,15)
assert 1-R(21,128)-R(11,20) == R(183,640)
assert R(1,7)/R(11,20) == R(20,77)
assert 3*R(21,128)+R(11,20)-1 == R(27,640) > 0
assert R(21,128)+R(11,20) == R(457,640) > R(1,4)
assert R(1,4)*R(11,20) == R(11,80)
assert R(1,5)-R(183,3200)-R(11,100)*R(20,77) > 0
assert 1-R(3,5)-R(11,100) == R(29,100)
assert R(1,4)*(1-3*R(21,128)) == R(65,512)
assert R(7,64)*(1-R(2,5)) == R(21,320)
assert R(8,15)-R(65,512)-R(2,25) > 0
assert (-R(65,512)+R(21,320)
        +R(1,4)*(R(8,15)-R(65,512)-R(2,25))) == R(3113,153600)
assert 1-R(11,100)-R(2,5)*(1+R(1,5)+R(3,10)) == R(29,100)
assert R(105,512)-R(13,10) == -R(2803,2560)
assert R(29,100)-R(20,77)*R(2803,2560) == R(1381,246400) > 0
print('PASS: all eleven E/F determinants, both diagonal sums, and strengthened elimination')
print('PASS: full simultaneous E/F weighted identity and all rational coefficient bounds')
