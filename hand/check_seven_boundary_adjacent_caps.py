"""Exact diagnostics for the two exterior adjacent-cap words."""
import sympy as S
q=S.Rational;s=q(7,64)
a,h,b,c,d,e,f,g,k,x,y,L,R,Z,u,delta=S.symbols('a h b c d e f g k x y L R Z u delta',real=True)
def eq(a,b=0):assert S.cancel(S.expand(a-b))==0,(a,b)
def det(A,B,C):
 A=S.Matrix(A);B=S.Matrix(B);C=S.Matrix(C)
 return S.expand(S.det(S.Matrix.hstack(B-A,C-A)))
eq(det((g,1),(1,e),(f,1-delta)),(f-g)*(1-e)-(1-g)*delta)
eq(det((g,1-delta),(0,h),(f,1)),(f-g)*(1-h)-f*delta)
eq(det((g,1-delta),(1,e),(f,1)),(f-g)*(1-e)+(1-f)*delta)
boe=det((b,0),(x,y),(1,e))
dog0=det((1,d),(x,y),(g,1))
dog1=det((1,d),(x,y),(g,1-delta))
eq(boe+dog0,(1+e-d)*x-1-b*(e-y)-g*(y-d))
eq(boe+dog1,(1+e-d-delta)*x-1+delta-b*(e-y)-g*(y-d))
eq(det((x,y),(c,0),(f,k)),k*(c-x)+(f-c)*y)
print('PASS: all displaced areas and both adjacent-cap stresses')

gap=(1-Z)*(1-s-s/Z)-2*s
eq(gap.subs(Z,q(5,7)),-q(9,1120))
eq(S.diff(gap,Z),-(1-s)+s/Z**2)
assert S.diff(gap,Z).subs(Z,q(5,7))<0
eq(2+4/q(5,7)+1/q(5,7)**2,q(239,25))
assert s*q(239,25)>1
phi=1-R-s/(1-s-s/R)-s/(1-s)
eq(S.diff(phi,R),-1+s*s/((1-s)*R-s)**2)
eq(phi.subs(R,q(3,4)),-q(641,32604))
assert ((1-s)*q(3,4)-s)>s
eq(1-q(49,320)-q(7,48),q(673,960))
eq(s/q(673,960),q(105,673))
D=q(105,673)
eq(q(7,5)+2+(4+D)*q(4,3)+D*q(16,9),q(31021,3365))
eq(s*q(31021,3365),1+q(1787,215360))
print('PASS: side-gap intervals and both strict rational contradictions')

rep=(3,2,3,2,5,4,5,4)
other=(5,4,5,4,3,2,3,2)
assert tuple(7-other[(3-i)%8] for i in range(8))==rep
def inside(word,inds):
 i,j,k=sorted(inds)
 return j-i<=word[i] and k-j<=word[j] and (i-k)%8<=word[k]
assert inside(rep,(1,3,4)) and inside(rep,(3,4,6))
assert (3-6)%8==5 # Old exterior vertex becomes G under the reflection.
print('PASS: both complete R1 words and the reflected height hypothesis')
