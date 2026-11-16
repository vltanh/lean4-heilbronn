"""Regenerate the two exact C1 top-hull certificate packages after recovery."""
from pathlib import Path
import itertools as it,json,sys,time
import numpy as np
from scipy.optimize import linprog
import scipy.sparse as sp
n=12;s=8/73;rho=49/60
mons=[()]+[(i,)for i in range(n)]+list(it.combinations_with_replacement(range(n),2))+list(it.combinations_with_replacement(range(n),3));mi={m:i for i,m in enumerate(mons)}
def const(x):return{():float(x)}if x else{}
def var(i):return{(i,):1.}
def add(*ps):
 q={}
 for p in ps:
  for m,v in p.items():q[m]=q.get(m,0)+v
 return{m:v for m,v in q.items()if abs(v)>1e-15}
def sc(p,t):return{m:t*v for m,v in p.items()if t*v}
def sub(p,q):return add(p,sc(q,-1))
def mul(p,q):
 z={}
 for a,v in p.items():
  for b,w in q.items():
   m=tuple(sorted(a+b));z[m]=z.get(m,0)+v*w
 return{m:v for m,v in z.items()if abs(v)>1e-15}
def det(A,B,C):return sub(mul(sub(B[0],A[0]),sub(C[1],A[1])),mul(sub(B[1],A[1]),sub(C[0],A[0])))
def matrix(rows):
 I=[];J=[];V=[]
 for i,p in enumerate(rows):
  for m,v in p.items():I.append(i);J.append(mi[m]);V.append(v)
 return sp.csr_matrix((V,(I,J)),shape=(len(rows),len(mons)))
mode=sys.argv[1] if len(sys.argv)>1 else'upper'
h,c,d,f,xx,xy,yx,yy,lx,ly,qx,qy=[var(i)for i in range(12)];one=const(1);zero={}
points=[(zero,zero),(c,zero),(one,d),(xx,xy),(yx,yy),(f,one),(zero,h),(lx,ly),(qx,qy)]
tri=list(it.combinations(range(9),3));areas={t:det(*(points[i]for i in t))for t in tri}
words=[r for r in it.product(range(1,6),repeat=7)if all((j<=r[i])==(7-j>r[(i+j)%7])for i in range(7)for j in range(1,7))]
sg=lambda w,i,j:1 if (j-i)%7<=w[i]else-1
inside=lambda w,t:all(sg(w,t[k],t[(k+1)%3])>0 for k in range(3))
low=[w for w in words if inside(w,(0,1,6))]
other=[w for w in words if all(sg(w,i,j)>0 for i,j in[(6,1),(1,2),(2,5),(5,6)])]if mode=='upper'else[w for w in words if inside(w,(2,3,5))and inside(w,(2,4,5))and sg(w,2,5)<0]
fac=[sub(h,const(3*s)),sub(c,const(3*s)),sub(one,h),sub(one,c),sub(d,const(s)),sub(const(33/65 if mode=='upper'else 204/715),d),sub(f,const(s)),sub(const(17/50 if mode=='upper'else 13/64),f),sub(h,d),sub(c,f),sub(d,f)]
for x,y in[(xx,xy),(yx,yy)]:fac +=[sub(sub(x,f),const(8/65)),sub(sub(y,d),const(8/65)),sub(one,x),sub(one,y)]
fac +=[sub(sub(xx,yx),const(s)),sub(sub(yy,xy),const(s)),sub(lx,const(s)),sub(ly,const(s)),sub(sub(c,lx),const(2*s)),sub(sub(h,ly),const(2*s)),sub(sub(sub(one,lx),ly),const(s))]
if mode=='upper':fac +=[sub(qx,const(s)),sub(qy,const(s)),sub(const(1-s),qx),sub(const(1-s),qy)]
else:fac +=[sub(sub(qx,f),const(8/65)),sub(sub(qy,d),const(8/65)),sub(const(1-s),qx),sub(const(1-s),qy)]
dom=[]
for degree in (1,2,3):
 for ids in it.combinations_with_replacement(range(len(fac)),degree):
  p=const(1)
  for i in ids:p=mul(p,fac[i])
  dom.append(p)
base=matrix(dom)
def orient(signs,t):
 value=signs.get(tuple(sorted(t)))
 return None if value is None else value*(-1)**sum(t[i]>t[j]for i in range(3)for j in range(i+1,3))
def costs(i,j,extra=()):
 ss={};ww=[low[i],other[j]]
 for t in tri:
  if t[2]<7:ss[t]=1
  elif t[1]<7:ss[t]=sg(ww[t[2]-7],t[0],t[1])
 for v in range(7):
  if ww[0][v]!=ww[1][v]:ss[(v,7,8)]=1 if ww[0][v]<ww[1][v]else-1
 ss.update(extra);qs=[sub(mul(sub(one,d),sub(one,f)),const(4*s if mode=='upper'else 7/11))]
 for t,sign in ss.items():
  count=sum(all(orient(ss,(t[k],t[(k+1)%3],v))==sign for k in range(3))for v in (7,8)if v not in t)
  qs.append(sub(sc(areas[t],sign),const([s,3*s,rho][count])))
 return qs
cases=[(i,j)for i,lw in enumerate(low)for j,qw in enumerate(other)if not any(inside(lw,t)and inside(qw,t)for t in[(0,5,6),(0,1,2),(2,5,6)])]
splits={'upper':{16:[4,5],48:[4,5],56:[5],104:[2],112:[2,3]},'cap':{16:[4],36:[3]}}[mode]
outdir=Path(__file__).resolve().parents[5]/('c1_convex_top_'+mode);outdir.mkdir(exist_ok=True)
target=np.zeros(len(mons));target[0]=-1
print('MODE',mode,'CASES',len(cases),'CELLS',sum(2**len(splits.get(ci,[]))for ci in range(len(cases))),flush=True)
for ci,(i,j)in enumerate(cases):
 for branch in range(2**len(splits.get(ci,[]))):
  suffix=f'_{branch}'if ci in splits else''
  path=outdir/f'cert_{ci:03}{suffix}.npz'
  if path.exists():continue
  extra=[((v,7,8),1 if branch>>bit&1 else-1)for bit,v in enumerate(splits.get(ci,[]))]
  qs=costs(i,j,extra);rows=[]
  for q in qs:rows.append(q);rows.extend(mul(q,l)for l in fac)
  A=sp.vstack([base,matrix(rows)],format='csr');t0=time.time()
  sol=linprog(np.ones(A.shape[0]),A_eq=A.T,b_eq=target,bounds=(0,None),method='highs')
  print('CASE',ci,(i,j),branch,sol.status,round(time.time()-t0,2),flush=True)
  if sol.status==0:np.savez(path,lam=sol.x,case=(i,j),branch=branch)
