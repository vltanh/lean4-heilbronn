"""Fixed exact cubic exclusions for one side-cap and two opposite-cap points."""
from fractions import Fraction as F
from itertools import combinations, combinations_with_replacement, product as tuples
from pathlib import Path
import json
from check_seven_boundary_exterior_certificates import const,add,sub,mul,scale,product,area,cube_upper
VARIABLES='a h b c d f x y ex ey ox oy'.split()
S=F(8,73)
a,h,b,c,d,f,x,y,ex,ey,ox,oy=[{(i,):F(1)} for i in range(12)]
Z,U=const(0),const(1)
FACTORS=[sub(a,const(F(1,7))),sub(b,const(F(1,8))),sub(h,const(F(1,2))),sub(c,const(4*S)),sub(U,h),sub(const(1-S),c),sub(d,a),sub(h,d),sub(f,b),sub(c,f),sub(d,const(F(1,2))),sub(const(F(5,8)),d),sub(sub(h,a),const(S)),sub(sub(c,b),const(S)),sub(sub(x,c),const(S)),sub(U,x),sub(y,const(F(1,7))),sub(sub(d,y),const(F(7,36))),sub(const(1-6*S),f),sub(sub(ex,f),const(6*S)),sub(sub(ey,d),const(3*S)),sub(U,ex),sub(U,ey),sub(sub(ox,f),const(2*S)),sub(sub(oy,d),const(F(1,8))),sub(const(1-S),ox),sub(const(1-S),oy)]
VERTICES=[(Z,a),(b,Z),(c,Z),(x,y),(U,d),(ex,ey),(f,U),(Z,h),(ox,oy)]
TRIPLES=list(combinations(range(9),3))
AREAS=[area(*(VERTICES[i] for i in tr)) for tr in TRIPLES]
WORDS=[w for w in tuples(range(1,7),repeat=8) if w[4]==1 and all((j<=w[i])==(8-j>w[(i+j)%8]) for i in range(8) for j in range(1,8))]
def inside(w,tr):return all((tr[(i+1)%3]-tr[i])%8<=w[tr[i]] for i in range(3))
def costs(w):
 out=[]
 for (i,j,k),p in zip(TRIPLES,AREAS):
  sg=1 if k<8 or j-i<=w[i] else -1
  threshold=3*S if k<8 and inside(w,(i,j,k)) else S
  out.append(sub(scale(p,sg),const(threshold)))
 return out+[sub(mul(sub(U,d),sub(U,f)),const(3*S))]
def residual(cert):
 qs=costs(cert['word']);out={}
 for term in cert['terms']:
  if term[0]=='f':
   _,ids,weight=term
   assert ids==sorted(ids) and 1<=len(ids)<=3
   assert all(type(i) is int and 0<=i<27 for i in ids)
   p=product(FACTORS[i] for i in ids)
  else:
   assert term[0]=='q';_,qi,fi,weight=term
   assert type(qi) is int and 0<=qi<85
   assert type(fi) is int and -1<=fi<27
   p=qs[qi] if fi==-1 else mul(qs[qi],FACTORS[fi])
  assert type(weight) is int and weight>0
  out=add(out,scale(p,F(weight,cert['scale'])))
 assert all(len(m)<=3 for m in out)
 return out

def verify():
 data=json.loads(Path(__file__).with_name('six_boundary_side_two_top_certificates.json').read_text())
 assert data['version']==1 and data['variables']==VARIABLES
 assert data['vertices']==['A','B','C','X','D','E','F','H','O']
 assert len(WORDS)==6 and len(FACTORS)==27
 seen=set();total=0;worst=None
 for cert in data['certificates']:
  w=tuple(cert['word']);assert w in WORDS and w not in seen and cert['scale']==4096
  seen.add(w);bound=cube_upper(residual(cert))
  assert bound==F(cert['upper_bound']) and bound<=-F(3,4)
  total+=len(cert['terms']);worst=bound if worst is None else max(worst,bound)
  print('PASS:',w,len(cert['terms']),'positive terms; exact bound <= -3/4')
 assert seen==set(WORDS)
 assert F(7,16)<4*S and F(319,511)<F(5,8) and F(64,447)>F(1,7) and F(8,41)>F(7,36)
 print('PASS:all6 complete radial words;',total,'positive terms; maximum',worst)
if __name__=='__main__':verify()
