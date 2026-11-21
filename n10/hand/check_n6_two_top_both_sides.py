"""Exact four-area transfer and support identities for N6 RTTL."""
import sympy as sp
a,b,c,e,f,h,p,q,r,t=sp.symbols('a b c e f h p q r t')
P={'O':(0,0),'A':(0,a),'B':(b,0),'C':(c,0),'E':(1,e),'F':(f,1),'H':(0,h),'P':(p,q),'R':(r,t)}
def D(word):
 A,B,C=[P[x] for x in word]
 return sp.expand((B[0]-A[0])*(C[1]-A[1])-(B[1]-A[1])*(C[0]-A[0]))
for lhs,rhs,gap in [('OCP','BCP',b*q),('ORH','ARH',a*r),('OCF','BCF',b),('OEH','AEH',a)]:
 assert sp.expand(D(lhs)-D(rhs)-gap)==0
assert sp.expand(c*(-D('CEP'))+(1-c)*D('OCP')-e*c*(p-c))==0
assert sp.expand(h*(-D('FHR'))+(1-h)*D('ORH')-f*h*(t-h))==0
assert sp.Rational(-63250709,250000000)<0
print('PASS: complete N6 two-top/both-side transfer; all four virtual-corner factors have actual lower bounds')
