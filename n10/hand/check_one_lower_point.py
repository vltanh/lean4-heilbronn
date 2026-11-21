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
gap=h*c-h*g-c*z-s
assert sp.expand(c*(det('HBG')-s)+b*gap-(h*(c-b)*g-s*(c+b)))==0
assert sp.expand(h*(det('ACG')-s)+a*gap-(c*(h-a)*z-s*(h+a)))==0
P=(h-a)*(c-b);W=3*h*c-a*c-b*h-a*b
assert sp.expand((c+b)*(h-a)+(h+a)*(c-b)+P-W)==0
quartic=h*c*P-s*W
assert sp.expand((c*P-s*W)-quartic-c*(1-h)*P)==0
assert sp.expand((h*P-s*W)-quartic-h*(1-c)*P)==0
M=sp.symbols('M')
assert sp.expand((M*P-s*W)-quartic-(M-h*c)*P)==0
assert sp.expand(h*c*(1-g-z)-(h*c-h*g-c*z)-h*(1-c)*g-c*(1-h)*z)==0
assert sp.cancel(sp.diff((c+b)/(c-b),c)+2*b/(c-b)**2)==0
assert sp.cancel(sp.diff((c+b)/(c-b),b)-2*c/(c-b)**2)==0
assert sp.cancel(sp.diff((h+a)/(h-a),h)+2*a/(h-a)**2)==0
assert sp.cancel(sp.diff((h+a)/(h-a),a)-2*h/(h-a)**2)==0
print('PASS: one-lower-point ears, ordered bounds, common strip, coordinate sum and monotone coordinate minima')
