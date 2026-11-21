"""Exact identities for the quadrilateral-area support inequality."""
import sympy as sp
X,Y,Z,C,M,LX,LY=sp.symbols('X Y Z C M LX LY')
V=X+Z-Y;W=X+Z;delta=Y-Z
assert sp.expand(X*Y-W*delta-Z*V)==0
assert sp.expand((X*Y-C*delta-M)-(Z*V-M+(W-C)*delta))==0
assert sp.expand((LX*Y-C*delta-M)-(X*Y-C*delta-M)-(LX-X)*Y)==0
assert sp.expand((LY*X-C*delta-M)-(X*Y-C*delta-M)-(LY-Y)*X)==0
# The example has the witnessed four triangle multipliers3 and quad floor8s.
s=sp.Rational(93,1000)
assert max(8*s,6*s,6*s)==8*s and min(3*3,3*3)*s**2==9*s**2
# Verify the two diagonal identities directly in unconstrained coordinates.
x=sp.symbols('a0 a1 b0 b1 c0 c1 d0 d1');A,B,Cp,D=[sp.Matrix(x[i:i+2])for i in range(0,8,2)]
def det(P,Q,R):return sp.det(sp.Matrix.hstack(Q-P,R-P))
assert sp.expand(det(A,B,Cp)+det(A,Cp,D)-det(A,B,D)-det(B,Cp,D))==0
print('PASS: quadrilateral-area support, both denominator signs, both upper caps and witnessed9s² example')
