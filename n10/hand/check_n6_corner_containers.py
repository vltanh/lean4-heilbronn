"""Exact container areas and fixed six-point endpoint gap."""
import sympy as sp
s=sp.Rational(93,1000);J=sp.Rational(4427,500)
a,b,c,e,f,h,x,y=sp.symbols('a b c e f h x y')
pts={'A':(0,a),'B':(b,0),'C':(c,0),'E':(1,e),'F':(f,1),'H':(0,h),'T':(x,y)}
def D(word):
 A,B,C=[pts[ch] for ch in word]
 return sp.expand((B[0]-A[0])*(C[1]-A[1])-(B[1]-A[1])*(C[0]-A[0]))
assert sp.expand(D('BET')-(1-b)*y+e*(x-b))==0
assert sp.expand(D('AFT')-f*(y-a)+(1-a)*x)==0
assert sp.expand((1-f)-D('CEF')-(1-e)*(c-f))==0
assert sp.expand((1-e)-D('EFH')-(1-f)*(h-e))==0
assert J*s-(1-s)**2==sp.Rational(773,1000000)>0
print('PASS: both six-contact endpoint containers and the exact gap773/1000000')
rx,ry,tx,ty,lx,ly=sp.symbols('rx ry tx ty lx ly')
pts.update(X=(rx,ry),Y=(tx,ty),Z=(lx,ly))
identities={
 'EXY':-(1-rx)*(ty-e)-(e-ry)*(1-tx),
 'FYZ':-(tx-f)*(1-ly)-(1-ty)*(f-lx),
 'EXZ':-(1-rx)*(ly-e)-(e-ry)*(1-lx),
 'FXZ':-(rx-f)*(1-ly)-(1-ry)*(f-lx),
 'CXZ':(rx-c)*ly+ry*(c-lx),
 'HXZ':rx*(ly-h)+(h-ry)*lx}
for word,expression in identities.items():assert sp.expand(D(word)-expression)==0
print('PASS: all six fixed cross-cap orientation identities')
