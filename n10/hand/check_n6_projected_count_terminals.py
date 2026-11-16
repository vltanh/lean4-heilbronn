"""Exact relabeling and positive-increment identities for both N6 terminals."""
import sympy as sp
a,b,c,e,f,h,p,q,u,v,r,w,j,k=sp.symbols('a b c e f h p q u v r w j k')
points=dict(zip('ABCEFHPQRS',[(0,a),(b,0),(c,0),(1,e),(f,1),(0,h),
                             (p,q),(u,v),(r,w),(j,k)]))
def det(pts,word):
    A,B,C=(pts[ch] for ch in word)
    return sp.expand((B[0]-A[0])*(C[1]-A[1])-(B[1]-A[1])*(C[0]-A[0]))
def zero(expr):
    assert sp.expand(expr)==0
D=lambda word:det(points,word)
zero(D('APQ')-D('EPQ')-((v-q)-(e-a)*(u-p)))
zero(D('FPQ')-D('BPQ')-((u-p)-(f-b)*(v-q)))
# Explicit mapping avoids an implicit cyclic shift in the twelve expressions.
rotated={new:(points[old][1],1-points[old][0])
         for new,old in zip('ABCDEFGHOP','CERSFHABQP')}
mapping=[('AGH','CAB',1),('BCD','ERS',1),('CDE','RSF',1),('FGH','HAB',1),
         ('ADO','CSQ',1),('BGO','EAQ',1),('CFP','RHP',1),('EHP','FBP',1),
         ('AOP','CPQ',-1),('BOP','EPQ',-1),('EOP','FPQ',-1),('FOP','HPQ',-1)]
for left,right,sg in mapping:
    zero(det(rotated,left)-sg*D(right))
zero(-D('CPQ')+D('FPQ')-((u-p)-(c-f)*(q-v)))
zero(-D('HPQ')+D('EPQ')-((q-v)-(h-e)*(u-p)))
U,V,alpha,beta=sp.symbols('U V alpha beta')
zero(beta*(V-alpha*U)+(U-beta*V)-(1-alpha*beta)*U)
zero((V-alpha*U)+alpha*(U-beta*V)-(1-alpha*beta)*V)
print('PASS: both N6 count-terminal relabelings, all twelve rotated determinants and positive increments')
