"""Research generation for the C1 right-plus-triangular-top placement."""
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
exec((ROOT/'research/generate_c1_convex_top.py').read_text().split('mode=sys.argv')[0])
h,c,d,f,rx,ry,xx,xy,lx,ly,px,py=[var(i)for i in range(12)];one=const(1);zero={}
points=[(zero,zero),(c,zero),(rx,ry),(one,d),(xx,xy),(f,one),(zero,h),(lx,ly),(px,py)]
tri=list(it.combinations(range(9),3));areas={t:det(*(points[i]for i in t))for t in tri}
words=[r for r in it.product(range(1,6),repeat=7)if all((j<=r[i])==(7-j>r[(i+j)%7])for i in range(7)for j in range(1,7))]
sg=lambda w,i,j:1 if(j-i)%7<=w[i]else-1
inside=lambda w,t:all(sg(w,t[k],t[(k+1)%3])>0 for k in range(3))
low=[w for w in words if inside(w,(0,1,6))];cap=[w for w in words if inside(w,(3,4,5))]
fac=[sub(h,const(27*s/7)),sub(one,h),sub(c,const(3*s)),sub(const(7/9),c),sub(d,const(4*s)),sub(const(41/65),d),sub(f,const(s)),sub(const(17/41),f),sub(h,d),sub(c,f),sub(d,f),sub(sub(rx,c),const(65*s/41)),sub(one,rx),sub(ry,const(9*s/7)),sub(sub(d,ry),const(8/49)),sub(sub(xx,f),const(24/41)),sub(sub(xy,d),const(24/65)),sub(one,xx),sub(one,xy),sub(lx,const(s)),sub(ly,const(9*s/7)),sub(sub(c,lx),const(2*s)),sub(sub(h,ly),const(18*s/7)),sub(sub(sub(one,lx),ly),const(s)),sub(sub(px,f),const(8/41)),sub(sub(py,d),const(8/65)),sub(const(1-s),px),sub(const(1-s),py)]
dom=[]
for degree in (1,2,3):
 for ids in it.combinations_with_replacement(range(len(fac)),degree):
  pp=const(1)
  for i in ids:pp=mul(pp,fac[i])
  dom.append(pp)
base=matrix(dom)
def orient(ss,t):
 val=ss.get(tuple(sorted(t)))
 return None if val is None else val*(-1)**sum(t[i]>t[j]for i in range(3)for j in range(i+1,3))
def costs(i,j):
 ww=[low[i],cap[j]];ss={}
 for t in tri:
  if t[2]<7:ss[t]=1
  elif t[1]<7:ss[t]=sg(ww[t[2]-7],t[0],t[1])
 for v in range(7):
  if ww[0][v]!=ww[1][v]:ss[(v,7,8)]=1 if ww[0][v]<ww[1][v]else-1
 qs=[sub(mul(sub(one,d),sub(one,f)),const(3*s))]
 for t,sign in ss.items():
  count=sum(all(orient(ss,(t[k],t[(k+1)%3],v))==sign for k in range(3))for v in(7,8)if v not in t)
  qs.append(sub(sc(areas[t],sign),const([s,3*s,rho][count])))
 return qs
cubic=sub(mul(mul(d,c),sub(one,c)),const(s))
cases=list(it.product(range(len(low)),range(len(cap))))
outdir=ROOT.parent/'c1_right_top_triangle';outdir.mkdir(exist_ok=True)
target=np.zeros(len(mons));target[0]=-1
for ci,(i,j)in enumerate(cases):
 path=outdir/f'cert_{ci:03}.npz'
 if path.exists():continue
 qs=costs(i,j);rows=[]
 for q in qs:rows.append(q);rows.extend(mul(q,l)for l in fac)
 rows.append(cubic);A=sp.vstack([base,matrix(rows)],format='csr');t0=time.time()
 sol=linprog(np.ones(A.shape[0]),A_eq=A.T,b_eq=target,bounds=(0,None),method='highs')
 print('CASE',ci,(i,j),sol.status,round(time.time()-t0,2),flush=True)
 if sol.status==0:np.savez(path,lam=sol.x,case=(i,j))
