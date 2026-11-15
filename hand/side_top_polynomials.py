"""Exact fixed-polynomial checks for the N side-plus-top-cap occupancy."""
from fractions import Fraction as F
from itertools import combinations, product as tuples
from pathlib import Path
import json
from check_seven_boundary_exterior_certificates import const,add,sub,mul,scale,product,area,cube_upper

VARIABLES='a h b c d f x y z w r t'.split()
S=F(7,64)
a,h,b,c,d,f,x,y,z,w,r,t=[{(i,):F(1)} for i in range(12)]
Z,U=const(0),const(1)
FACTORS=[
 sub(a,const(F(1,7))),sub(b,const(F(1,8))),
 sub(h,const(F(1,2))),sub(c,const(4*S)),sub(U,h),sub(const(1-S),c),
 sub(d,a),sub(h,d),sub(f,b),sub(c,f),
 sub(d,const(F(1,2))),sub(const(F(7,8)),d),sub(const(1-S),f),
 sub(sub(h,a),const(S)),sub(sub(c,b),const(S)),
 sub(sub(x,c),const(S)),sub(U,x),sub(y,const(F(1,7))),sub(sub(d,y),const(F(7,36))),
 sub(sub(z,f),const(2*S)),sub(sub(w,d),const(F(1,8))),sub(U,z),sub(U,w),
 sub(r,const(S)),sub(t,const(S)),sub(const(1-S),r),sub(const(1-S),t),
]
VERTICES=[(Z,a),(b,Z),(c,Z),(x,y),(U,d),(z,w),(f,U),(Z,h),(r,t)]
TRIPLES=list(combinations(range(9),3))
AREAS=[area(*(VERTICES[i] for i in tr)) for tr in TRIPLES]
WORDS=[q for q in tuples(range(1,7),repeat=8)
       if 2<=q[1]<=5 and q[2]>=2 and q[4]>=2
       and all((j<=q[i])==(8-j>q[(i+j)%8]) for i in range(8) for j in range(1,8))]
SHARP=(4,3,3,2,3,4,5,4)
PROJECT=(3,2,3,4,5,4,4,3)

def inside(q,tr):
 return all(((tr[(i+1)%3]-tr[i])%8)<=q[tr[i]] for i in range(3))

def costs(q,threshold=S):
 out=[]
 for (i,j,k),p in zip(TRIPLES,AREAS):
  sg=1 if k<8 or j-i<=q[i] else -1
  target=3*threshold if k<8 and inside(q,(i,j,k)) else threshold
  out.append(sub(scale(p,sg),const(target)))
 out += [sub(mul(h,c),const(F(7,11) if q[7]<3 else 4*S)),
         sub(const(3*S),area(VERTICES[0],VERTICES[1],VERTICES[7])),
         sub(const(3*S),area(VERTICES[1],VERTICES[2],VERTICES[3]))]
 return out

def factors(branch='whole'):
 extras={'whole':[],'left':[sub(z,x)],'low':[sub(h,w)],
         'project_a':[sub(a,t)],'project_c':[sub(r,c)],'project_h':[sub(h,w)]}
 assert branch in extras
 return FACTORS+extras[branch]

def residual(cert):
 qs=costs(tuple(cert['word']),F(cert.get('threshold',str(S))));fs=factors(cert['branch']);out={}
 for term in cert['terms']:
  if term[0]=='f':
   _,ids,weight=term
   assert ids==sorted(ids) and 1<=len(ids)<=3
   assert all(type(i) is int and 0<=i<len(fs) for i in ids)
   p=product(fs[i] for i in ids)
  else:
   assert term[0]=='q';_,qi,fi,weight=term
   assert type(qi) is int and 0<=qi<len(qs)
   assert type(fi) is int and -1<=fi<len(fs)
   p=qs[qi] if fi==-1 else mul(qs[qi],fs[fi])
  assert type(weight) is int and weight>0
  out=add(out,scale(p,F(weight,cert['scale'])))
 assert all(len(m)<=3 for m in out)
 return out
