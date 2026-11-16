"""DISCOVERY ONLY: N6 side + top + anchor-interior radial cubic search.

The emitted positive-weight rational expressions need a separately audited
geometric cover and exact verifier before they form a completed proof.
"""
from fractions import Fraction as F
from itertools import combinations,combinations_with_replacement,product
from pathlib import Path
import json,sys,time,os
import numpy as np
from scipy.optimize import linprog
import scipy.sparse as sp
BASE=Path(__file__).resolve().parent
s=F(os.environ.get('RLT_THRESHOLD','8/73'));rho=F(13,16);n=12
mons=[()]+[(i,)for i in range(n)]+list(combinations_with_replacement(range(n),2))+list(combinations_with_replacement(range(n),3));mi={m:i for i,m in enumerate(mons)}
def cn(c):return{():F(c)}if c else{}
def add(*ps):
 o={}
 for p in ps:
  for m,c in p.items():o[m]=o.get(m,F(0))+c
 return{m:c for m,c in o.items()if c}
def sc(p,c):return{m:v*c for m,v in p.items()if v*c}
def sub(p,q):return add(p,sc(q,-1))
def mul(p,q):
 o={}
 for m,c in p.items():
  for k,d in q.items():
   ky=tuple(sorted(m+k));o[ky]=o.get(ky,F(0))+c*d
 return{m:c for m,c in o.items()if c}
def ar(p,q,r):return sub(mul(sub(q[0],p[0]),sub(r[1],p[1])),mul(sub(q[1],p[1]),sub(r[0],p[0])))
a,h,b,c,d,f,x,y,z,w,r,t=[{(i,):F(1)}for i in range(n)];zero={};one=cn(1)
pts=[(zero,a),(b,zero),(c,zero),(x,y),(one,d),(z,w),(f,one),(zero,h),(r,t)]
tr=list(combinations(range(9),3));areas={tri:ar(*(pts[i]for i in tri))for tri in tr}
fac=[sub(a,cn(F(1,7))),sub(b,cn(F(1,8))),sub(h,cn(F(1,2))),sub(c,cn(4*s)),sub(d,cn(F(1,2))),sub(one,h),sub(cn(1-s),c),sub(cn(1-s),d),sub(cn(1-s),f),sub(d,a),sub(h,d),sub(f,b),sub(c,f),sub(sub(h,a),cn(s)),sub(sub(c,b),cn(s)),sub(one,x),sub(sub(x,c),cn(s)),sub(y,cn(F(1,7))),sub(sub(d,y),cn(F(7,36))),sub(one,z),sub(one,w),sub(sub(z,f),cn(s)),sub(sub(w,d),cn(s)),sub(r,cn(s)),sub(cn(1-s),r),sub(t,cn(s)),sub(cn(1-s),t),sub(r,cn(F(1,8))),sub(t,cn(F(1,7))),sub(sub(z,f),cn(2*s)),sub(sub(w,d),cn(F(1,8))),sub(cn(F(29,64)),b)]
W=sub(one,mul(sub(h,d),sub(c,f)))
EAR=[(0,1,7),(0,1,2),(1,2,4),(2,4,6),(4,6,7),(0,6,7)]
def edge(word,i,j):return(j-i)%8<=word[i]
def inside(word,tri):return all(edge(word,tri[i],tri[(i+1)%3])for i in range(3))
words=[word for word in product(range(1,7),repeat=8)if word[2]>=2 and word[4]>=2 and 2<=word[1]<=5 and all((j<=word[i])==(8-j>word[(i+j)%8])for i in range(8)for j in range(1,8))]
assert len(words)==97 and sum(w[7]<3 for w in words)==18

def specs(word):
 out=[]
 for tri in tr:
  i,j,k=tri;sg=1 if k<8 or edge(word,i,j)else-1
  th=3*s if k<8 and inside(word,tri)else s
  out.append((tri,sg,th))
 return out

def costs(word):
 out=[sub(sc(areas[tri],sg),cn(th))for tri,sg,th in specs(word)]
 out.extend([sub(W,cn(4*s if word[7]>=3 else 2*s)),sub(mul(h,c),cn(4*s if word[7]>=3 else F(7,11))),sub(cn(3*s),areas[0,1,7]),sub(cn(3*s),areas[1,2,3])])
 out.extend(sub(cn(rho),areas[tri])for tri in EAR)
 return out

def matrix(rows):
 I=[];J=[];V=[]
 for i,p in enumerate(rows):
  for m,v in p.items():I.append(i);J.append(mi[m]);V.append(float(v))
 return sp.csr_matrix((V,(I,J)),shape=(len(rows),len(mons)))

def branch_factor(branch):
 return {'x_low':sub(z,x),'x_high':sub(x,z),'y_low':sub(h,w),'y_high':sub(w,h),
         'l_low':sub(cn(F(11,20)),sub(h,a)),
         'l_high':sub(sub(h,a),cn(F(2,3))),
         'm_low':sub(cn(F(11,20)),sub(z,f)),
         'g_high':sub(f,cn(F(1,4))),
         'c_low':sub(cn(F(2,3)),c)}[branch]

if __name__=='__main__':
 specs0=sys.argv[1:] or [str(i)for i in range(97)]
 groups={}
 for spec in specs0:
  parts=spec.split(':');wi=int(parts[0]);br=parts[1:] or ['whole']
  groups.setdefault(tuple(br),[]).append(wi)
 print('WORDS',len(words),'LOWER',sum(w[7]<3 for w in words),'threshold',s,flush=True)
 for br,indices in groups.items():
  ff=fac.copy()
  if br!=('whole',):ff += [branch_factor(v)for v in br]
  rows0=[];labels0=[]
  for deg in(1,2,3):
   for ids in combinations_with_replacement(range(len(ff)),deg):
    p=cn(1)
    for i in ids:p=mul(p,ff[i])
    rows0.append(p);labels0.append(['f',list(ids)])
  dm=matrix(rows0);print('DOMAIN',br,len(rows0),'FACTORS',len(ff),flush=True)
  for wi in indices:
   word=words[wi];cs=costs(word);rows=[];labels=[]
   for i,p in enumerate(cs):
    rows.append(p);labels.append(['q',i,-1])
    for j,q in enumerate(ff):rows.append(mul(p,q));labels.append(['q',i,j])
   A=sp.vstack([dm,matrix(rows)],format='csr');target=np.zeros(len(mons));target[0]=-1
   st=time.time();sol=linprog(np.ones(A.shape[0]),A_eq=A.T,b_eq=target,bounds=(0,None),method='highs')
   print('CERT',wi,word,br,sol.success,'support',int(sum(sol.x>1e-8))if sol.success else sol.message,'secs',round(time.time()-st,2),flush=True)
   if not sol.success:continue
   terms=[lab+[int(round(v*4096))]for lab,v in zip(labels0+labels,sol.x)if round(v*4096)>0];ex={}
   for row in terms:
    if row[0]=='f':
     p=cn(1)
     for j in row[1]:p=mul(p,ff[j])
    else:
     _,i,j,_=row;p=cs[i]if j==-1 else mul(cs[i],ff[j])
    ex=add(ex,sc(p,F(row[-1],4096)))
   bound=ex.get((),F(0))+sum(v for m,v in ex.items()if m and v>0)
   assert bound<-F(3,4)
   print('EXACT',bound,float(bound),flush=True)
   name=f'n6_side_opposite_rebuilt_{s.numerator}_{s.denominator}_{wi}_'+('_'.join(br))+'.json'
   (BASE/name).write_text(json.dumps({'index':wi,'word':word,'threshold':str(s),'branches':br,'scale':4096,'upper_bound':str(bound),'terms':terms}))
