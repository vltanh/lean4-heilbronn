"""Fresh exact expansion and rational arithmetic for the central N7 note.

This checker supplies the independent algebra pass. The note itself proves
the contact orders, containments, positive coefficients and capacity signs.
"""
from fractions import Fraction as F
from sympy import Matrix, symbols, cancel, expand

a,b,c,d,e,f,h,g,z,x,y,u,v=symbols('a b c d e f h g z x y u v')
points={'A':(0,a),'B':(b,0),'C':(c,0),'D':(1,d),'E':(1,e),
        'F':(f,1),'H':(0,h),'G':(g,z),'O':(x,y),'P':(u,v),'X':(x,y)}
def area(word):
    p,q,r=(points[t] for t in word)
    return Matrix([[q[0]-p[0],q[1]-p[1]],
                   [r[0]-p[0],r[1]-p[1]]]).det()

checks=0
def polynomial(left,right):
    global checks
    assert expand(left-right)==0
    checks+=1

for word,value in [
    ('AFH',f*(h-a)),('BFH',h*f+b*(1-h)),('ABF',a*f+b*(1-a)),
    ('HAX',(h-a)*x),('HBC',h*(c-b)),('HBE',h*(1-b)+b*e),
    ('HBF',h*f+b*(1-h)),('CFH',c*(1-h)+h*f),
    ('CFA',c*(1-a)+a*f),('CFB',c-b),('BCG',(c-b)*z),
    ('AEF',1-a-f*(e-a)),('CEH',h*(1-c)+c*e),
    ('CEA',a*(1-c)+c*e),('CEB',e*(c-b))]:
    polynomial(area(word),value)
for word,remainder in [
    ('AFH',f*(1-h+a)),('BFH',(f-b)*(1-h)),('ABF',(f-b)*(1-a))]:
    polynomial(f-area(word),remainder)
polynomial(area('FAG'),-area('AFG'))
polynomial(area('FBG'),-area('BFG'))
polynomial(area('AEF')*area('AGO')-area('AEG')*area('AFO')
           +area('AEO')*area('AFG'),0)
polynomial(area('EBC')*area('EOP')-area('EBO')*area('ECP')
           +area('EBP')*area('ECO'),0)

E0,R,ee,ff,f0,e1=symbols('E0 R ee ff f0 e1')
def phi(ee,ff):return (E0-ee*ff)*(R-ee*ff)/((1-ee)*(1-ff))
assert cancel(phi(ee,f0)-phi(ee,ff)-(ff-f0)*(
    ee*(E0+R)-E0*R-ee**2*(ff+f0-ff*f0))/((1-ee)*(1-f0)*(1-ff)))==0
assert cancel(phi(e1,f0)-phi(ee,f0)-(e1-ee)*(
    E0*R-f0*(E0+R)+f0**2*(ee+e1-ee*e1))/((1-f0)*(1-e1)*(1-ee)))==0
checks+=2

s=F(93,1000);T=F(149,20)*s;E0=1-s;R=1-T
L=F(2911,500)*s;f0=F(108,1000);f1=F(279,1000);e1=F(57,100)
def exact(value,expected):
    global checks
    assert value==expected and value>0
    checks+=1
exact((L+f0)/2-R,F(17573,1000000))
exact((E0+R)/2-E0*R-e1**2*(f1+f0),F(4055073,20000000))
exact(E0*R-f0*(E0+R),F(2949137,20000000))
cap=(E0-e1*f0)*(R-e1*f0)/((1-e1)*(1-f0))
exact(L-cap,F(567727,4794500000))
J=F(4427,500)*s
for aa,ff,stated,gap in [
    (F(139,1000),F(108,1000),F(203613,250000),F(897,100000)),
    (F(122,1000),F(123,1000),F(51431,62500),F(263,500000))]:
    assert 1-aa-ff*(e1-aa)==stated
    exact(J-stated,gap)
    checks+=1
exact(F(5)-F(559,250)**2,F(19,62500))
print(f'PASS: {checks} independent N7 polynomial identities and exact comparisons.')
