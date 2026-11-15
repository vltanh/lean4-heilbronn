"""DISCOVERY model: two top-cap points with triangular hull, one inner point."""
from fractions import Fraction as F
from itertools import combinations,product as tuples
from functools import lru_cache
from pathlib import Path
import sys
sys.path.insert(0,str(Path(__file__).resolve().parents[1]/'hand'))
from check_seven_boundary_exterior_certificates import const,add,sub,mul,scale,product,area,cube_upper
VARIABLES='a h b c d f xx xy px py qx qy'.split()
S,RHO=F(8,73),F(49,60)
VARS=[{(i,):F(1)}for i in range(12)]
a,h,b,c,d,f,xx,xy,px,py,qx,qy=VARS
Z,U=const(0),const(1)
POINTS=[(Z,a),(b,Z),(c,Z),(U,d),(xx,xy),(f,U),(Z,h),(px,py),(qx,qy)]
TRIPLES=list(combinations(range(9),3));AREAS={tr:area(*(POINTS[i]for i in tr))for tr in TRIPLES}
ALL_WORDS=[w for w in tuples(range(1,6),repeat=7)if all((j<=w[i])==(7-j>w[(i+j)%7])for i in range(7)for j in range(1,7))]
CAP=[i for i,w in enumerate(ALL_WORDS)if w[3]==1]
INNER=[i for i,w in enumerate(ALL_WORDS)if w[3]>=2]
CASES=[(i,j)for i in CAP for j in INNER]
EARS=[(0,1,6),(0,1,2),(1,2,3),(2,3,5),(3,5,6),(0,5,6)]
def sign(w,i,j):return 1 if(j-i)%7<=w[i]else-1
def upper(w):return sign(w,6,2)>0
@lru_cache(None)
def base_signs(ci):
 P,Q=[ALL_WORDS[i]for i in CASES[ci]];out={}
 for tr in TRIPLES:
  i,j,k=tr
  if k<7:out[tr]=1
  elif j<7:out[tr]=sign(P if k==7 else Q,i,j)
 for v in range(7):
  if P[v]!=Q[v]:out[v,7,8]=1 if P[v]<Q[v]else-1
 return out
# Add only actual-line splits that are needed after exact discovery.
SPLITS={230:(2,),238:(1,)}
def split_vertices(ci):return SPLITS.get(ci,())
CELLS=[(ci,bits)for ci in range(len(CASES))for bits in range(2**len(split_vertices(ci)))]
def signs_for(cell):
 ci,bits=cell;out=dict(base_signs(ci))
 for j,v in enumerate(split_vertices(ci)):
  assert(v,7,8)not in out
  out[v,7,8]=1 if bits>>j&1 else-1
 return out

def oriented(signs,tr):
 if len(set(tr))<3:return 0
 sg=signs.get(tuple(sorted(tr)))
 if sg is None:return None
 return sg*(-1)**sum(tr[i]>tr[j]for i in range(3)for j in range(i+1,3))
COMMON_FACTORS=[sub(a,const(F(1,8))),sub(b,const(F(1,8))),sub(h,const(4*S)),sub(c,const(4*S)),sub(U,h),sub(U,c),sub(d,a),sub(h,d),sub(f,b),sub(c,f),sub(d,f),sub(sub(h,a),const(S)),sub(sub(c,b),const(S)),sub(const(F(319,511)),d),sub(const(F(3,7)),f),sub(sub(xx,f),const(F(192,511))),sub(sub(xy,d),const(F(192,511))),sub(U,xx),sub(U,xy),sub(sub(px,f),const(F(64,511))),sub(sub(py,d),const(F(64,511))),sub(const(1-S),px),sub(const(1-S),py),sub(qx,const(S)),sub(qy,const(S)),sub(const(1-S),qx),sub(const(1-S),qy)]
@lru_cache(None)
def factors(cell):
 ci,bits=cell;Q=ALL_WORDS[CASES[ci][1]]
 out=list(COMMON_FACTORS)
 if not upper(Q):out +=[sub(h,const(F(7,11))),sub(c,const(F(7,11))),sub(sub(c,qx),const(2*S)),sub(sub(h,qy),const(2*S)),sub(sub(sub(U,qx),qy),const(S))]
 if ci==230:out +=[sub(const(F(11,60)),f),sub(sub(xx,f),const(RHO)),sub(xy,const(F(2234,2745))),sub(sub(h,a),const(F(480,803)))]
 return out
HC=mul(h,c);W=sub(U,mul(sub(h,d),sub(c,f)));DELTA=mul(sub(U,d),sub(U,f))
@lru_cache(None)
def cost_specs(cell):
 signs=signs_for(cell);out=[]
 for tr,sg in sorted(signs.items()):
  count=sum(all(oriented(signs,(tr[i],tr[(i+1)%3],v))==sg for i in range(3))for v in(7,8)if v not in tr)
  out.append(('area',tr,sg,(S,3*S,RHO)[count]))
 Q=ALL_WORDS[CASES[cell[0]][1]];above=upper(Q)
 out +=[('hc',(),1,4*S if above else F(7,11)),('W',(),1,4*S if above else 2*S),('delta',(),1,3*S)]
 out +=[('area',tr,-1,-F(13,16))for tr in EARS]
 return out
@lru_cache(None)
def costs(cell):
 extra={'hc':HC,'W':W,'delta':DELTA}
 return[sub(scale(AREAS[tr]if kind=='area'else extra[kind],sg),const(bound))for kind,tr,sg,bound in cost_specs(cell)]
def signature(p):return tuple(sorted(p.items()))
@lru_cache(None)
def domain(cell):
 fs={signature(p)for p in factors(cell)};qs={}
 for kind,tr,sg,bound in cost_specs(cell):
  key=(kind,tr,sg);qs[key]=max(qs.get(key,bound),bound)
 return fs,qs

def requirements(cert):
 fs=factors(tuple(cert['cell']));sp=cost_specs(tuple(cert['cell']));needed=set();qs={}
 for term in cert['terms']:
  if term[0]=='f':needed.update(signature(fs[i])for i in term[1])
  else:
   assert term[0]=='q'
   _,qi,fi,_=term;kind,tr,sg,bound=sp[qi];key=(kind,tr,sg);qs[key]=max(qs.get(key,bound),bound)
   if fi!=-1:needed.add(signature(fs[fi]))
 return needed,qs

def residual(cert):
 cell=tuple(cert['cell']);assert cell in CELLS
 fac,qq=factors(cell),costs(cell);out={}
 assert type(cert['scale'])is int and cert['scale']>0
 for term in cert['terms']:
  if term[0]=='f':
   _,ids,weight=term;assert ids==sorted(ids)and 1<=len(ids)<=3
   assert all(type(i)is int and 0<=i<len(fac)for i in ids)
   p=product(fac[i]for i in ids)
  else:
   assert term[0]=='q';_,qi,fi,weight=term
   assert type(qi)is int and 0<=qi<len(qq)and type(fi)is int and -1<=fi<len(fac)
   p=qq[qi]if fi==-1 else mul(qq[qi],fac[fi])
  assert type(weight)is int and weight>0
  out=add(out,scale(p,F(weight,cert['scale'])))
 assert all(len(k)<=3 for k in out)
 return out

assert len(ALL_WORDS)==57 and len(CAP)==5 and len(INNER)==52 and len(CASES)==260
