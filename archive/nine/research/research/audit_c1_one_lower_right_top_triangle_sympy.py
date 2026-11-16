"""Independent SymPy expansion and coverage for the15 right/top cubics."""
from pathlib import Path
from itertools import product,combinations
from functools import lru_cache
import json
import sympy as S
root=Path(__file__).resolve().parents[3]/'proof'/'nine'
data=json.loads((root/'c1_one_lower_right_top_triangle_certificates.json').read_text())
h,c,d,f,rx,ry,xx,xy,lx,ly,px,py=vs=S.symbols('h c d f r_x r_y x_x x_y l_x l_y p_x p_y')
s=S.Rational(8,73);rho=S.Rational(49,60)
pts=[(0,0),(c,0),(rx,ry),(1,d),(xx,xy),(f,1),(0,h),(lx,ly),(px,py)]
tris=list(combinations(range(9),3));areas={}
for tr in tris:
 a,b,e=[pts[i]for i in tr]
 areas[tr]=S.Poly((b[0]-a[0])*(e[1]-a[1])-(b[1]-a[1])*(e[0]-a[0]),*vs,domain=S.QQ)
ff=[h-27*s/7,1-h,c-3*s,S.Rational(7,9)-c,d-4*s,S.Rational(41,65)-d,f-s,S.Rational(17,41)-f,h-d,c-f,d-f,rx-c-65*s/41,1-rx,ry-9*s/7,d-ry-S.Rational(8,49),xx-f-S.Rational(24,41),xy-d-S.Rational(24,65),1-xx,1-xy,lx-s,ly-9*s/7,c-lx-2*s,h-ly-18*s/7,1-s-lx-ly,px-f-S.Rational(8,41),py-d-S.Rational(8,65),1-s-px,1-s-py]
ff=[S.Poly(p,*vs,domain=S.QQ)for p in ff];cubic=S.Poly(d*c*(1-c)-s,*vs,domain=S.QQ)
def edge(w,i,j):return 1 if(j-i)%7<=w[i]else-1
def inside(w,tr):return all(edge(w,tr[i],tr[(i+1)%3])>0 for i in range(3))
words=[w for w in product(range(1,6),repeat=7)if all(edge(w,i,j)==-edge(w,j,i)for i,j in combinations(range(7),2))]
lo=[w for w in words if inside(w,(0,1,6))];cap=[w for w in words if inside(w,(3,4,5))]
assert(len(words),len(lo),len(cap))==(57,5,5)
cases={(i,j)for i in range(5)for j in range(5)}
def spec(case):
 i,j=case;ws=(lo[i],cap[j]);known={}
 for tr in tris:
  a,b,c=tr
  if c<7:known[tr]=1
  elif b<7:known[tr]=edge(ws[c-7],a,b)
 for v in range(7):
  if ws[0][v]!=ws[1][v]:known[v,7,8]=1 if ws[0][v]<ws[1][v]else-1
 orient={}
 for(a,b,c),sg in known.items():
  for tr in((a,b,c),(b,c,a),(c,a,b)):orient[tr]=sg
  for tr in((b,a,c),(a,c,b),(c,b,a)):orient[tr]=-sg
 out=[]
 for tr,sg in known.items():
  cnt=sum(all(orient.get((tr[k],tr[(k+1)%3],v))==sg for k in range(3))for v in(7,8)if v not in tr)
  out.append((tr,sg,(s,3*s,rho)[cnt]))
 return out
specs={case:spec(case)for case in cases};maps={case:{(tr,sg):th for tr,sg,th in sp}for case,sp in specs.items()}
@lru_cache(None)
def fp(ids):
 p=S.Poly(1,*vs,domain=S.QQ)
 for i in ids:p*=ff[i]
 return p
covered=set();total=0;bounds=[];refs=set()
for ci,cert in enumerate(data['certificates'],1):
 case=tuple(cert['case']);assert case in cases and case not in refs;refs.add(case)
 sp=specs[case];qs=[S.Poly((1-d)*(1-f)-3*s,*vs,domain=S.QQ)]+[sg*areas[tr]-th for tr,sg,th in sp]
 out=S.Poly(0,*vs,domain=S.QQ);used=set()
 for term in cert['terms']:
  if term[0]=='f':
   _,ids,weight=term;assert ids==sorted(ids)and 1<=len(ids)<=3 and all(0<=i<28 for i in ids)
   p=fp(tuple(ids))
  elif term[0]=='q':
   _,qi,fi,weight=term;assert 0<=qi<len(qs)and -1<=fi<28
   p=qs[qi]if fi==-1 else qs[qi]*ff[fi]
   if qi:used.add(qi-1)
  else:
   assert term[0]=='c'and len(term)==2
   _,weight=term;p=cubic
  assert isinstance(weight,int)and weight>0 and cert['scale']>0
  out+=S.Rational(weight,cert['scale'])*p
 assert out.total_degree()<=3
 bound=out.coeff_monomial(1)+sum(co for mon,co in out.terms()if any(mon)and co>0)
 assert bound==S.Rational(cert['upper_bound'])and bound<=-S.Rational(3,4)
 covered|={target for target,mp in maps.items()if all(mp.get((sp[i][0],sp[i][1]),-S.oo)>=sp[i][2]for i in used)}
 total+=len(cert['terms']);bounds.append(bound)
 print('PASS',ci,case,len(cert['terms']),bound,flush=True)
assert covered==cases and len(refs)==15 and total==1211
assert max(bounds)==-S.Rational(707476541255103311,712957274349465600)
print('INDEPENDENT SYMPY PASS:57 words,5+5 placements,all25 pairs;all15 cubics/1211 terms;worst',max(bounds))
