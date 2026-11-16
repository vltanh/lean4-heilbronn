"""DISCOVERY ONLY: quartic positive products for remaining word84."""
import sys,time,json
from pathlib import Path
import numpy as np
from scipy.optimize import linprog
sys.path.insert(0,str(Path(__file__).resolve().parent))
import n6_side_opposite_rebuild as R
R.mons+=list(R.combinations_with_replacement(range(R.n),4));R.mi={m:i for i,m in enumerate(R.mons)}
wi=84;branches=['x_high','y_high'];fac=R.fac+[R.branch_factor(x)for x in branches];cs=R.costs(R.words[wi])
rows=[];labels=[]
for deg in(1,2,3):
 for ids in R.combinations_with_replacement(range(len(fac)),deg):
  p=R.cn(1)
  for i in ids:p=R.mul(p,fac[i])
  rows.append(p);labels.append(['f',list(ids)])
for i,p in enumerate(cs):
 rows.append(p);labels.append(['q',i,-1])
 for j,q in enumerate(fac):rows.append(R.mul(p,q));labels.append(['q',i,j])
for i,j in R.combinations_with_replacement(range(len(cs)),2):
 rows.append(R.mul(cs[i],cs[j]));labels.append(['qq',i,j])
print('ROWS',len(rows),'MONS',len(R.mons),flush=True)
A=R.matrix(rows);target=np.zeros(len(R.mons));target[0]=-1
st=time.time();sol=linprog(np.ones(A.shape[0]),A_eq=A.T,b_eq=target,bounds=(0,None),method='highs')
print('QUARTIC',wi,sol.success,'support',int(sum(sol.x>1e-8))if sol.success else sol.message,'secs',round(time.time()-st,2),flush=True)
if sol.success:
 terms=[lab+[int(round(v*4096))]for lab,v in zip(labels,sol.x)if round(v*4096)>0];ex={}
 for row in terms:
  if row[0]=='f':
   p=R.cn(1)
   for j in row[1]:p=R.mul(p,fac[j])
  elif row[0]=='q':
   _,i,j,_=row;p=cs[i]if j==-1 else R.mul(cs[i],fac[j])
  else:
   _,i,j,_=row;p=R.mul(cs[i],cs[j])
  ex=R.add(ex,R.sc(p,R.F(row[-1],4096)))
 bound=ex.get((),R.F(0))+sum(v for m,v in ex.items()if m and v>0)
 print('EXACT',bound,float(bound),flush=True)
 (R.BASE/'n6_side_opposite_quartic_84.json').write_text(json.dumps({'index':wi,'word':R.words[wi],'threshold':str(R.s),'branches':branches,'scale':4096,'upper_bound':str(bound),'terms':terms}))
