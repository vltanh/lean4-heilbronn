"""Independent reconstruction of all convex-top C1 fixed expressions."""
from pathlib import Path
from itertools import product,combinations
from functools import lru_cache
import json
import sympy as S
base=Path(__file__).resolve().parents[3]/'proof'/'nine'
data=json.loads((base/'c1_one_lower_convex_top_certificates.json').read_text())
h,c,d,f,xx,xy,yx,yy,lx,ly,qx,qy=vs=S.symbols('h c d f x_x x_y y_x y_y l_x l_y q_x q_y')
s=S.Rational(8,73);rho=S.Rational(49,60)
pts=[(0,0),(c,0),(1,d),(xx,xy),(yx,yy),(f,1),(0,h),(lx,ly),(qx,qy)]
tris=list(combinations(range(9),3))
def det(i,j,k):
 a,b,c=[pts[v]for v in(i,j,k)]
 return S.Poly((b[0]-a[0])*(c[1]-a[1])-(b[1]-a[1])*(c[0]-a[0]),*vs,domain=S.QQ)
areas={tr:det(*tr)for tr in tris}
def edge(w,i,j):return 1 if(j-i)%7<=w[i]else-1
def inside(w,tr):return all(edge(w,tr[i],tr[(i+1)%3])>0 for i in range(3))
words=[w for w in product(range(1,6),repeat=7)if all(edge(w,i,j)==-edge(w,j,i)for i,j in combinations(range(7),2))]
lo=[w for w in words if inside(w,(0,1,6))]
up=[w for w in words if all(edge(w,i,j)>0 for i,j in ((6,1),(1,2),(2,5),(5,6)))]
cap=[w for w in words if inside(w,(2,3,5))and inside(w,(2,4,5))and edge(w,2,5)<0]
assert(len(words),len(lo),len(up),len(cap))==(57,5,33,10)
other={'upper':up,'cap':cap}
splits={('upper',(0,20)):(4,5),('upper',(1,19)):(4,5),('upper',(1,27)):(5,),('upper',(3,9)):(2,),('upper',(3,17)):(2,3),('cap',(1,6)):(4,),('cap',(3,6)):(3,)}
cases={mode:[(i,j)for i,l in enumerate(lo)for j,q in enumerate(ww)if not any(inside(l,tr)and inside(q,tr)for tr in((0,5,6),(0,1,2),(2,5,6)))]for mode,ww in other.items()}
assert [len(cases[m])for m in('upper','cap')]==[157,50]
cells={mode:{(case,k)for case in cc for k in range(2**len(splits.get((mode,case),())))}for mode,cc in cases.items()}
assert [len(cells[m])for m in('upper','cap')]==[168,52]
@lru_cache(None)
def spec(mode,case,branch):
 i,j=case;ws=(lo[i],other[mode][j]);sgs={}
 for tr in tris:
  a,b,c=tr
  if c<7:sgs[tr]=1
  elif b<7:sgs[tr]=edge(ws[c-7],a,b)
 for v in range(7):
  if ws[0][v]!=ws[1][v]:sgs[v,7,8]=1 if ws[0][v]<ws[1][v]else-1
 for bit,v in enumerate(splits.get((mode,case),())):
  assert(v,7,8)not in sgs
  sgs[v,7,8]=1 if(branch>>bit)&1 else-1
 orientation={}
 for(a,b,c),sg in sgs.items():
  for tr in((a,b,c),(b,c,a),(c,a,b)):orientation[tr]=sg
  for tr in((b,a,c),(a,c,b),(c,b,a)):orientation[tr]=-sg
 out=[]
 for tr,sg in sgs.items():
  count=sum(all(orientation.get((tr[k],tr[(k+1)%3],v))==sg for k in range(3))for v in(7,8)if v not in tr)
  out.append((tr,sg,(s,3*s,rho)[count]))
 return out
@lru_cache(None)
def factors(mode):
 a,b=(S.Rational(33,65),S.Rational(17,50))if mode=='upper'else(S.Rational(204,715),S.Rational(13,64))
 fs=[h-3*s,c-3*s,1-h,1-c,d-s,a-d,f-s,b-f,h-d,c-f,d-f]
 for x,y in((xx,xy),(yx,yy)):fs +=[x-f-S.Rational(8,65),y-d-S.Rational(8,65),1-x,1-y]
 fs +=[xx-yx-s,yy-xy-s,lx-s,ly-s,c-lx-2*s,h-ly-2*s,1-s-lx-ly]
 fs +=[qx-s,qy-s,1-s-qx,1-s-qy]if mode=='upper'else[qx-f-S.Rational(8,65),qy-d-S.Rational(8,65),1-s-qx,1-s-qy]
 assert len(fs)==30
 return[S.Poly(p,*vs,domain=S.QQ)for p in fs]
@lru_cache(None)
def fp(mode,ids):
 o=S.Poly(1,*vs,domain=S.QQ)
 for i in ids:o*=factors(mode)[i]
 return o
maps={mode:{cell:{(tr,sg):th for tr,sg,th in spec(mode,*cell)}for cell in cells[mode]}for mode in other}
covered={mode:set()for mode in other};refs=set();count=0;bounds=[]
for ci,cert in enumerate(data['certificates'],1):
 mode=cert['mode'];cell=(tuple(cert['case']),cert['branch']);assert cell in cells[mode]
 assert(mode,cell)not in refs;refs.add((mode,cell))
 sp=spec(mode,*cell);q0=(1-d)*(1-f)-(4*s if mode=='upper'else S.Rational(7,11))
 qs=[S.Poly(q0,*vs,domain=S.QQ)]+[sg*areas[tr]-th for tr,sg,th in sp]
 out=S.Poly(0,*vs,domain=S.QQ);used=set()
 assert isinstance(cert['scale'],int)and cert['scale']>0
 for term in cert['terms']:
  if term[0]=='f':
   _,ids,weight=term
   assert ids==sorted(ids)and 1<=len(ids)<=3 and all(0<=i<30 for i in ids)
   p=fp(mode,tuple(ids))
  else:
   assert term[0]=='q';_,qi,fi,weight=term
   assert 0<=qi<len(qs)and -1<=fi<30
   p=qs[qi]if fi==-1 else qs[qi]*fp(mode,(fi,))
   if qi:used.add(qi-1)
  assert isinstance(weight,int)and weight>0
  out+=S.Rational(weight,cert['scale'])*p
 assert out.total_degree()<=3
 bound=out.coeff_monomial(1)+sum(cf for mon,cf in out.terms()if any(mon)and cf>0)
 assert bound==S.Rational(cert['upper_bound'])and bound<=-S.Rational(3,4)
 applies={target for target,mp in maps[mode].items()if all(mp.get((sp[i][0],sp[i][1]),-S.oo)>=sp[i][2]for i in used)}
 assert cell in applies
 covered[mode]|=applies;count+=len(cert['terms']);bounds.append(bound)
 print('PASS',ci,mode,cell,len(cert['terms']),len(applies),bound,flush=True)
assert all(covered[mode]==cells[mode]for mode in other)
assert len(refs)==155 and count==25184
assert max(bounds)==-S.Rational(3448691771523,3500729749504)
assert sum(mode=='upper'for mode,cell in refs)==127
print('INDEPENDENT SYMPY PASS:57 words,5/33/10 placements,157+50 candidates,168+52 cells,all155 cubics/25184 terms; worst',max(bounds))
