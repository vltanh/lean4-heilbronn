"""Independent actual-contact identities and rational gaps for occupied HCF."""
from fractions import Fraction as F
from sympy import symbols, expand, cancel

a,b,c,d,e,f,h,a0,b0,e0,q=symbols('a b c d e f h a0 b0 e0 q')
pts={'A':(0,a),'B':(b,0),'C':(c,0),'D':(1,d),'E':(1,e),'F':(f,1),'H':(0,h)}
def det(word):
    p,r,t=(pts[x] for x in word)
    return (r[0]-p[0])*(t[1]-p[1])-(r[1]-p[1])*(t[0]-p[0])
assert expand(det('CDE')-(1-c)*(e-d))==0
assert expand(det('HCF')-c*(1-h)-h*f)==0
assert expand(det('AEF')-(1-a-f*(e-a)))==0
assert expand(det('BEF')-(1-b-e*(f-b)))==0
s=F(93,1000);T=F(149,20)*s;d0=F(3,25);h0=F(613,1000);q0=F(617,1000)
phi=lambda t:(1-t)*(1-s/(t-d0))+q0*t
assert cancel(phi(h0)-phi(h)-(h-h0)*((1-q0)-s*(1-d0)/((h0-d0)*(h-d0))))==0
assert cancel(phi(h)-det('HCF')-(1-h)*(1-s/(h-d0)-c)-h*(q0-f))==0
assert expand((1-c)*(h-d0)-(1-c)*(e-d)-(1-c)*(h-e+d-d0))==0
assert expand(1-a0-q*(e0-a0)-det('AEF')-(1-f)*(a-a0)-f*(e-e0)-(f-q)*(e0-a0))==0
assert expand(1-b0-e0*(q-b0)-det('BEF')-(1-e)*(b-b0)-(e-e0)*(f-b0)-e0*(f-q))==0
assert h0-d0==F(493,1000)>0
assert 1-q0-s*(1-d0)/(h0-d0)**2==F(11247767,243049000)>0
assert T-phi(h0)==F(312097,493000000)>0
for al,bl,el,ceiling,gap in [
    (F(139,1000),F(108,1000),F(93,223),F(153747149,223000000),F(758401,223000000)),
    (F(122,1000),F(123,1000),F(372,877),F(303248649,438500000),F(141519,109625000))]:
    assert el==4*s/(1-bl) and el>al
    assert 1-al-q0*(el-al)==ceiling and T-ceiling==gap>0
for bl,el,ceiling,gap in [
    (F(108,1000),F(93,223),F(151579,223000),F(58531,4460000)),
    (F(123,1000),F(372,877),F(585361,877000),F(445369,17540000))]:
    assert q0>bl and el>0 and 1-bl-el*(q0-bl)==ceiling and T-ceiling==gap>0
print('PASS: nine independent contact/difference identities and all exact positive endpoint gaps.')
