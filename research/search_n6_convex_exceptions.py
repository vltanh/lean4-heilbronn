"""Sharp-word complementary cuts and quadratic-cost-product fallback."""
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
exec((ROOT/'research/generate_n6_two_top_convex.py').read_text().split('sharp=[')[0])
mode=sys.argv[1]if len(sys.argv)>1 else'cuts'
outdir=ROOT.parent/'n6_two_top_convex';outdir.mkdir(exist_ok=True)
if mode=='quartic':
 mons +=list(it.combinations_with_replacement(range(n),4));mi={m:i for i,m in enumerate(mons)}
 base=matrix(dom);target=np.zeros(len(mons));target[0]=-1
 ci=int(sys.argv[2])if len(sys.argv)>2 else 66
 qs=costs(words[ci]);rows=[]
 for q in qs:rows.append(q);rows.extend(mul(q,l)for l in fac)
 pairs=list(it.combinations_with_replacement(range(len(qs)),2))
 rows.extend(mul(qs[i],qs[j])for i,j in pairs)
 A=sp.vstack([base,matrix(rows)],format='csr');t0=time.time()
 sol=linprog(np.ones(A.shape[0]),A_eq=A.T,b_eq=target,bounds=(0,None),method='highs')
 print('QUARTIC',ci,sol.status,sol.message,round(time.time()-t0,2),flush=True)
 if sol.status==0:np.savez(outdir/f'quartic_{ci:03}.npz',lam=sol.x,word=words[ci])
else:
 ci=31;qs=costs(words[ci]);target=np.zeros(len(mons));target[0]=-1
 cuts=[sub(const(11/20),sub(h,a)),sub(sub(h,a),const(2/3)),sub(const(11/20),sub(gx,f)),sub(f,const(1/4)),sub(const(2/3),c),sub(h,gy)]
 for bi,cut in enumerate(cuts):
  ff=fac+[cut];dd=[]
  for degree in (1,2,3):
   for ids in it.combinations_with_replacement(range(len(ff)),degree):
    p=const(1)
    for i in ids:p=mul(p,ff[i])
    dd.append(p)
  rows=dd
  for q in qs:rows.append(q);rows.extend(mul(q,l)for l in ff)
  A=matrix(rows);t0=time.time()
  sol=linprog(np.ones(A.shape[0]),A_eq=A.T,b_eq=target,bounds=(0,None),method='highs')
  print('CUT',bi,sol.status,sol.message,round(time.time()-t0,2),flush=True)
  if sol.status==0:np.savez(outdir/f'cut_{bi}.npz',lam=sol.x,word=words[ci],cut=bi)
