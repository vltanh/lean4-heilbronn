"""Small exact-threshold cuts for the last nonsharp N6 convex word."""
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
exec((ROOT/'research/generate_n6_two_top_convex.py').read_text().split('sharp=[')[0])
ci=66;qs=costs(words[ci]);target=np.zeros(len(mons));target[0]=-1
outdir=ROOT.parent/'n6_two_top_convex';outdir.mkdir(exist_ok=True)
for vi,num,den in [(10,1,2),(11,1,2),(5,1,4),(4,1,3),(3,3,4),(1,3,4)]:
 successes=[]
 for sg0 in (-1,1):
  cut=sc(sub(var(vi),const(num/den)),sg0);ff=fac+[cut];rows=[]
  for degree in (1,2,3):
   for ids in it.combinations_with_replacement(range(len(ff)),degree):
    p=const(1)
    for i in ids:p=mul(p,ff[i])
    rows.append(p)
  for q in qs:rows.append(q);rows.extend(mul(q,l)for l in ff)
  A=matrix(rows);t0=time.time()
  sol=linprog(np.ones(A.shape[0]),A_eq=A.T,b_eq=target,bounds=(0,None),method='highs')
  print('SPLIT66',vi,num,den,sg0,sol.status,sol.message,round(time.time()-t0,2),flush=True)
  successes.append(sol.status==0)
  if sol.status==0:np.savez(outdir/f'split66_{vi}_{num}_{den}_{sg0}.npz',lam=sol.x,word=words[ci],cut=(vi,num,den,sg0))
 if all(successes):break
