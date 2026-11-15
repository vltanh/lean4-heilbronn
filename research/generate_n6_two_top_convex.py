"""Research cubic search for N6 with a convex opposite-cap pair."""
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
exec((ROOT/'research/generate_c1_convex_top.py').read_text().split('mode=sys.argv')[0])
a,h,b,c,d,f,ex,ey,gx,gy,x,y=[var(i)for i in range(12)];one=const(1);zero={}
points=[(zero,a),(b,zero),(c,zero),(one,d),(ex,ey),(gx,gy),(f,one),(zero,h),(x,y)]
tri=list(it.combinations(range(9),3));areas={t:det(*(points[i]for i in t))for t in tri}
words=[w for w in it.product(range(1,7),repeat=8)if w[3]>=3 and all((j<=w[i])==(8-j>w[(i+j)%8])for i in range(8)for j in range(1,8))]
sg=lambda w,i,j:1 if(j-i)%8<=w[i]else-1
inside=lambda w,t:all(sg(w,t[k],t[(k+1)%3])>0 for k in range(3))
fac=[sub(a,const(1/8)),sub(b,const(1/8)),sub(h,const(4*s)),sub(c,const(4*s)),sub(one,h),sub(one,c),sub(d,a),sub(h,d),sub(f,b),sub(c,f),sub(d,f),sub(d,const(1/8)),sub(f,const(1/8)),sub(const(255/511),d),sub(const(17/50),f),sub(sub(h,a),const(50*s/17)),sub(sub(c,b),const(511*s/255)),sub(sub(ex,f),const(64/511)),sub(sub(ey,d),const(64/511)),sub(one,ex),sub(one,ey),sub(sub(gx,f),const(64/511)),sub(sub(gy,d),const(64/511)),sub(one,gx),sub(one,gy),sub(sub(ex,gx),const(s)),sub(sub(gy,ey),const(s)),sub(x,const(s)),sub(const(1-s),x),sub(y,const(s)),sub(const(1-s),y)]
dom=[]
for degree in (1,2,3):
 for ids in it.combinations_with_replacement(range(len(fac)),degree):
  p=const(1)
  for i in ids:p=mul(p,fac[i])
  dom.append(p)
base=matrix(dom)
ears=[(0,1,7),(0,1,2),(1,2,3),(2,3,6),(3,6,7),(0,6,7)]
W=sub(one,mul(sub(h,d),sub(c,f)))
def costs(word):
 upper=sg(word,7,2)>0
 qs=[sub(mul(sub(one,d),sub(one,f)),const(4*s)),sub(mul(h,c),const(4*s if upper else 7/11)),sub(W,const(4*s if upper else 2*s))]
 qs +=[sub(const(13/16),areas[t])for t in ears]
 for t,A in areas.items():
  if t[2]<8:sign=1;cost=3*s if inside(word,t)else s
  else:sign=sg(word,t[0],t[1]);cost=s
  qs.append(sub(sc(A,sign),const(cost)))
 return qs
sharp=[i for i,w in enumerate(words)if sg(w,0,3)>0 and sg(w,3,7)>0 and sg(w,1,4)<0 and sg(w,2,6)<0 and sg(w,2,5)>0]
print('WORDS',len(words),'SHARP',[(i,words[i])for i in sharp],'FACTORS',len(fac),flush=True)
outdir=ROOT.parent/'n6_two_top_convex';outdir.mkdir(exist_ok=True)
(outdir/'words.json').write_text(json.dumps(words))
target=np.zeros(len(mons));target[0]=-1
start=int(sys.argv[1])if len(sys.argv)>1 else 0;stop=int(sys.argv[2])if len(sys.argv)>2 else len(words)
for ci,word in list(enumerate(words))[start:stop]:
 path=outdir/f'cert_{ci:03}.npz'
 if path.exists():continue
 rows=[]
 for q in costs(word):rows.append(q);rows.extend(mul(q,l)for l in fac)
 A=sp.vstack([base,matrix(rows)],format='csr');t0=time.time()
 sol=linprog(np.ones(A.shape[0]),A_eq=A.T,b_eq=target,bounds=(0,None),method='highs')
 print('CASE',ci,word,sol.status,round(time.time()-t0,2),flush=True)
 if sol.status==0:np.savez(path,lam=sol.x,word=word)
