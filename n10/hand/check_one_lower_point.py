"""Exact identities in the local four-alternative one-lower-point lemma."""
import sympy as sp
q=sp.Rational;s=q(93,1000)
a,b,c,h,g,z,w=sp.symbols('a b c h g z w')
points={'A':(0,a),'B':(b,0),'H':(0,h),'C':(c,0),'G':(g,z)}
def det(word):
    A,B,C=[points[ch] for ch in word]
    return (B[0]-A[0])*(C[1]-A[1])-(B[1]-A[1])*(C[0]-A[0])
assert sp.expand(det('ABC')-a*(c-b))==0
assert sp.expand(det('ABH')-b*(h-a))==0
assert sp.expand(det('HBG').subs(z,h*(1-g/c-w))-h*g*(c-b)/c+b*h*w)==0
assert sp.expand(det('ABG').subs(z,h*(1-g/c-w))-b*(h-a)+(b*h-a*c)*g/c+b*h*w)==0
assert sp.factor(s+b*s/c+(b*h-a*c)*s*(c+b)/(c*h*(c-b))-s*(c+b)*(h-a)/(h*(c-b)))==0
assert 12*s>1
print('PASS: one-lower-point ear areas, central eliminations and exact contact-order cancellation')
