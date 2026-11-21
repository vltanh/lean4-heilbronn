"""Exact identities and rational constants in QUADRILATERAL_SUPPORT.md."""
import sympy as sp
q=sp.Rational
cx,cy,dx,dy=sp.symbols('cx cy dx dy')
A=sp.Matrix([0,0]);B=sp.Matrix([1,0]);C=sp.Matrix([cx,cy]);D=sp.Matrix([dx,dy])
def det(U,V,W):return sp.det(sp.Matrix.hstack(V-U,W-U))
X,Y,Z=det(A,B,C),det(A,B,D),det(A,C,D)
delta=Y-Z
assert sp.expand(delta-X+det(B,C,D))==0
R1=A+X/delta*(D-A);R2=B+Y/delta*(C-B)
assert all(sp.cancel(t)==0 for t in R1-R2)
assert sp.cancel(det(A,B,R1)-X*Y/delta)==0
assert q(69,40)**2<3 and q(7,5)**2<2
# Strictness for 29/5 comes from sqrt(2)>7/5; these are the weak endpoints.
assert q(29,5)==3+2*q(7,5)
assert q(149,20)==4+2*q(69,40)
assert q(139,10)==7+4*q(69,40)
assert q(199,10)==13+4*q(69,40)
assert q(149,5)==16+8*q(69,40)
assert q(31,299)>q(1,11) and q(299,31)>9
h,a,b,c,e,f=sp.symbols('h a b c e f')
H=sp.Matrix([0,h]);A=sp.Matrix([0,a]);B=sp.Matrix([b,0])
C=sp.Matrix([c,0]);E=sp.Matrix([1,e]);F=sp.Matrix([f,1])
identities=[
 (det(H,C,E),h-c*(h-e)),(det(H,C,F),c-h*(c-f)),
 (det(C,E,F),1-c+e*(c-f)),(det(H,E,F),1-h+f*(h-e)),
 (1-f-det(C,E,F),(1-e)*(c-f)),
 (1-e-det(H,E,F),(h-e)*(1-f)),
 (det(A,B,C),a*(c-b)),(det(A,B,H),b*(h-a)),
 (det(A,C,H),c*(h-a)),(det(B,C,H),h*(c-b))]
for lhs,rhs in identities:assert sp.expand(lhs-rhs)==0
print('PASS: occupied-quadrilateral support rays, all signed area identities, rational costs and contact caps')
