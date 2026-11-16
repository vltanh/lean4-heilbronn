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
