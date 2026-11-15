"""Independent SymPy audit of the external18-word lower-point package."""
from pathlib import Path
from itertools import product,combinations
from functools import lru_cache
import json
import sympy as S
base=Path(__file__).resolve().parents[1]/'hand'
data=json.loads((base/'six_boundary_side_top_lower_certificates.json').read_text())
a,h,b,c,d,f,x,y,z,w,r,t=vs=S.symbols('a h b c d f x y z w r t');s=S.Rational(7,64)
ff=[a-S.Rational(1,7),b-S.Rational(1,8),h-S.Rational(1,2),c-4*s,1-h,1-s-c,d-a,h-d,f-b,c-f,d-S.Rational(1,2),S.Rational(7,8)-d,1-s-f,h-a-s,c-b-s,x-c-s,1-x,y-S.Rational(1,7),d-y-S.Rational(7,36),z-f-2*s,w-d-S.Rational(1,8),1-z,1-w,r-s,t-s,1-s-r,1-s-t]
ff=[S.Poly(p,*vs,domain=S.QQ)for p in ff]
pts=[(0,a),(b,0),(c,0),(x,y),(1,d),(z,w),(f,1),(0,h),(r,t)]
tris=list(combinations(range(9),3));areas={}
for tr in tris:
 p,q,r0=[pts[i]for i in tr]
 areas[tr]=S.Poly((q[0]-p[0])*(r0[1]-p[1])-(q[1]-p[1])*(r0[0]-p[0]),*vs,domain=S.QQ)
def edge(word,i,j):return(j-i)%8<=word[i]
def inside(word,tr):return all(edge(word,tr[i],tr[(i+1)%3])for i in range(3))
words=[v for v in product(range(1,7),repeat=8)if v[7]<3 and 2<=v[1]<=5 and v[2]>=2 and v[4]>=2 and all(edge(v,i,j)!=edge(v,j,i)for i,j in combinations(range(8),2))]
assert len(words)==18
@lru_cache(None)
def fp(ids):
 p=S.Poly(1,*vs,domain=S.QQ)
 for i in ids:p*=ff[i]
 return p
seen=set();count=0;bounds=[]
for cert in data['certificates']:
 word=tuple(cert['word']);assert word in words and word not in seen;seen.add(word)
 assert cert['branch']=='whole'and cert['scale']==4096
 assert S.Rational(cert.get('threshold','7/64'))==s
 qs=[]
 for tr in tris:
  i,j,k=tr;sg=1 if k<8 or edge(word,i,j)else-1
  th=3*s if k<8 and inside(word,tr)else s
  qs.append(sg*areas[tr]-th)
 qs +=[S.Poly(h*c-S.Rational(7,11),*vs,domain=S.QQ),3*s-areas[0,1,7],3*s-areas[1,2,3]]
 out=S.Poly(0,*vs,domain=S.QQ)
 for term in cert['terms']:
  if term[0]=='f':
   _,ids,weight=term;assert ids==sorted(ids)and 1<=len(ids)<=3 and all(0<=i<27 for i in ids)
   p=fp(tuple(ids))
  else:
   assert term[0]=='q';_,qi,fi,weight=term;assert 0<=qi<87 and-1<=fi<27
   p=qs[qi]if fi==-1 else qs[qi]*ff[fi]
  assert isinstance(weight,int)and weight>0
  out+=S.Rational(weight,4096)*p
 assert out.total_degree()<=3
 bound=out.coeff_monomial(1)+sum(co for mon,co in out.terms()if any(mon)and co>0)
 assert bound==S.Rational(cert['upper_bound'])and bound<=-S.Rational(3,4)
 count+=len(cert['terms']);bounds.append(bound)
 print('PASS',word,len(cert['terms']),bound,flush=True)
assert seen==set(words)and count==3830
print('INDEPENDENT SYMPY PASS: all18 lower words;27 factors;87 costs;3830 positive terms;worst',max(bounds))
