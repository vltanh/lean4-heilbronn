"""Exact reconstruction of the factors in the N6 exterior proof."""
from fractions import Fraction as F
from functools import lru_cache
from itertools import combinations
from math import prod
import re
import n6_exterior_geometry as geometry
from n6_exterior_geometry import LABELS,HALVES,get,inside,convex

N=14; S=F(93,1000); K=F(149,20); J=F(4427,500)
VARIABLES='a b c e f h p q u v r w j k'.split()
def C(value):
 value=F(value);return {():value} if value else {}
def V(index):return {(index,):F(1)}
def add(*polys):
 out={}
 for poly in polys:
  for mon,co in poly.items():out[mon]=out.get(mon,F(0))+co
 return {mon:co for mon,co in out.items() if co}
def scale(poly,value):return {mon:co*value for mon,co in poly.items() if co*value}
def mul(*polys):
 out=C(1)
 for poly in polys:
  nxt={}
  for mon,co in out.items():
   for mon2,co2 in poly.items():
    key=tuple(sorted(mon+mon2));nxt[key]=nxt.get(key,F(0))+co*co2
  out={mon:co for mon,co in nxt.items() if co}
 return out
def sub(first,second):return add(first,scale(second,-1))
VS=[V(i) for i in range(N)]
a,b,c,e,f,h,p,q,u,v,r,w,j,k=VS
POINTS=dict(zip(LABELS,[(C(0),a),(b,C(0)),(c,C(0)),(C(1),e),
 (f,C(1)),(C(0),h),(p,q),(u,v),(r,w),(j,k)]))
@lru_cache(None)
def det(word):
 A,B,D=[POINTS[ch] for ch in word]
 return sub(mul(sub(B[0],A[0]),sub(D[1],A[1])),mul(sub(B[1],A[1]),sub(D[0],A[0])))
def area(word):return add(*(det(word[0]+word[i]+word[i+1]) for i in range(1,len(word)-1)))

@lru_cache(None)
def box(kind):
 assert kind in ('C','M0','M1','M2')
 if kind=='C':
  floor=F(897,1000);amin=F(1037,10000);amax=F(6143,20000)
  low=[amin,amin,floor,amin,amin,floor]+[S*(1+amin)/(1-amin)]*4+[S/(1-amin)]*4
  high=[amax,amax,F(1),1-S,1-S,F(1)]+[1-2*S]*4+[1-S]*4
 else:
  floor={'M0':9*S,'M1':F(1510413,1780000),'M2':F(91977,100000)}[kind]
  bmin=F(287,1000) if kind=='M2' else 3*S
  amax=F(6143,20000);amin=S/(1-bmin)
  bmax=F(297,500) if kind=='M2' else 1-S/amax
  free_x=S/(1-amin)
  py=3*S/(1-bmin) if kind=='M2' else 2*S
  low=[amin,bmin,floor,amin,bmin,floor,free_x,py,S*(1+bmin)/(1-bmin),
       S*(1+amin)/(1-amin),free_x,amin,free_x,amin]
  high=[amax,bmax,F(1),1-S,1-S,F(1),bmax-2*S,1-2*S/bmax,1-2*S,1-2*S,1-S,1-S,1-S,1-S]
 high[-4:]=[F(1)]*4
 assert all(0<lo<hi<=1 for lo,hi in zip(low,high))
 return low,high,floor

def choose_box(low,high):
 low=list(map(F,low));high=list(map(F,high))
 matches=[kind for kind in ('C','M0','M1','M2') if box(kind)[:2]==(low,high)]
 assert len(matches)==1,(low,high)
 return matches[0]

def occupants(known,hull,count):
 found=[pt for pt in LABELS if pt not in hull and inside(known,hull,pt)]
 assert len(found)>=count,(hull,count,found)
 return ''.join(found[:count])

def atom(name,kind,known,squares=None,witnesses=None):
 """Return a physical-coordinate polynomial, checking every premise.

 If witnesses is a mapping, its printed occupant lists are mandatory for
 conditional triangle/quadrilateral factors. Otherwise generate such lists.
 """
 low,high,floor=box(kind);squares=squares or {}
 assert (kind=='C') or get(known,'APQ')==-1
 if kind=='M2':assert get(known,'CPQ')==1
 def witness(hull,count):
  if witnesses is None:return occupants(known,hull,count)
  pts=witnesses[name]
  assert len(pts)==count and len(set(pts))==count
  assert all(pt not in hull and inside(known,hull,pt) for pt in pts)
  return pts
 if re.fullmatch(r'L\d+',name):
  n=int(name[1:]);assert 0<=n<2*N
  return sub(VS[n//2],C(low[n//2])) if n%2==0 else sub(C(high[n//2]),VS[n//2])
 if name in ('ha','ea','he','fb','cf'):
  return {'ha':sub(h,a),'ea':sub(e,a),'he':sub(h,e),'fb':sub(f,b),'cf':sub(c,f)}[name]
 if name.startswith('T_'):
  word=name[2:5];sg=1 if name[-1]=='+' else -1
  assert len(name)==6 and name[-1] in '+-' and get(known,word)==sg,(name,kind)
  return add(scale(det(word),sg),C(-S))
 if name=='Vlow':return add(mul(h,c),C(-floor))
 if name=='Qlow':return add(mul(h,c),scale(mul(a,b),-1),C(-8*S))
 if name=='Qup':return add(C(1-{0:F(2),1:F(24,5),2:F(8)}[geometry.LOCATIONS.count('I')]*S),scale(mul(sub(h,e),sub(c,f)),-1))
 if name.startswith('up_'):
  pt=name[-1];assert pt in 'RS';return add(*POINTS[pt],C(-floor-S))
 if name.startswith('low_'):
  pt=name[-1];assert pt in 'PQ';return add(C((1-S)/floor),*(scale(pol,-1) for pol in POINTS[pt]))
 if name in ('Px','Py'):
  assert kind!='C'
  return add(b,scale(p,-1),C(-2*S)) if name=='Px' else add(mul(b,sub(h,q)),C(-2*S))
 if name.startswith('Ratio_'):
  assert kind=='M2'
  if name=='Ratio_lo':return sub(b,scale(c,F(313,1000)))
  assert name=='Ratio_hi';return sub(scale(c,F(297,500)),b)
 if name=='Product':
  assert kind=='C'
  return sub(mul(sub(h,a),sub(c,b)),scale(mul(h,c),F(39,50)**2))
 if name.startswith('DX_') or name.startswith('DY_'):
  pair=name[3:];assert len(pair)==2 and len(set(pair))==2 and set(pair)<=set('PQRS')
  U,VV=[POINTS[ch] for ch in pair]
  if name.startswith('DX_'):
   sg=get(known,'A'+pair);assert sg and get(known,'H'+pair)==-sg
   return add(scale(sub(U[0],VV[0]),sg),C(-2*S/(high[5]-low[0])))
  sg=get(known,'B'+pair);assert sg and get(known,'C'+pair)==-sg
  return add(scale(sub(VV[1],U[1]),sg),C(-2*S/(high[2]-low[1])))
 if name in ('Top_pair','Right_support','Left_support'):
  if name=='Top_pair':
   assert geometry.LOCATIONS=='TT'
   return add(mul(sub(C(1),e),sub(C(1),f)),C(-3*S))
  if name=='Right_support':
   assert 'R' in geometry.LOCATIONS
   return add(mul(e,sub(C(1),b)),C(-4*S))
  assert 'L' in geometry.LOCATIONS
  return add(mul(f,sub(C(1),a)),C(-4*S))
 if name.startswith(('right_','top_','left_')):
  side,mode,pt=name.split('_');loc={'right':'R','top':'T','left':'L'}[side]
  assert pt in 'RS' and geometry.LOCATIONS['RS'.index(pt)]==loc
  hull={'R':'CE','T':'EF','L':'FH'}[loc]+pt
  assert get(known,hull)==-1
  if witnesses is None:
   found=[ch for ch in LABELS if ch not in hull and inside(known,hull,ch)]
  else:
   found=witnesses[name]
   assert len(set(found))==len(found) and all(ch not in hull and inside(known,hull,ch) for ch in found)
  assert len(found)<=3
  cost={0:F(1),1:F(3),2:K,3:J}[len(found)]*S
  xx,yy=POINTS[pt]
  if loc=='R':
   dx=sub(xx,c);dy=sub(e,yy);px=mul(e,dx);py=mul(sub(C(1),c),dy)
  elif loc=='T':
   dx=sub(xx,f);dy=sub(yy,e);px=mul(sub(C(1),e),dx);py=mul(sub(C(1),f),dy)
  else:
   dx=sub(f,xx);dy=sub(yy,h);px=mul(sub(C(1),h),dx);py=mul(f,dy)
  return add({'x':dx,'y':dy,'px':px,'py':py}[mode],C(-cost))
 if name.startswith('C_'):
  _,word,count=name.split('_');count=int(count);assert count in (1,2,3)
  witness(word,count);sg=get(known,word);assert sg
  return add(scale(det(word),sg),C(-{1:F(3),2:K,3:J}[count]*S))
 if name.startswith('Q_'):
  _,word,count=name.split('_');count=int(count)
  assert len(word)==4 and convex(known,word);witness(word,count)
  cap={1:F(24,5)*S,2:8*S,3:F(93,91),4:(J+3)*S,5:(J+K)*S,6:2*J*S}[count]
  return add(area(word),C(-cap))
 if name.startswith('S_'):
  _,word,pair,last=name.split('_');ii=int(last[0]);sg=1 if last[1]=='+' else -1
  assert len(word)==4 and convex(known,word) and len(pair)==2 and len(set(pair))==2
  assert all(pt not in word and inside(known,word,pt) for pt in pair)
  assert all(get(known,word[t]+word[t+2]+pair[0])*get(known,word[t]+word[t+2]+pair[1])==-1 for t in (0,1))
  assert ii in (0,1) and last[1] in '+-'
  small=any(set(word)<=set(half) for half in HALVES.values())
  spread=F(6) if small else F(29,5)
  return add(area(word),C(-spread*S),scale(sub(det(word[ii]+pair),det(word[ii+2]+pair)),sg))
 if name.startswith('M_'):
  _,outer,inner,part=name.split('_');AA,BB,CC=outer;XX,YY,ZZ=inner
  assert len(set(outer+inner))==6 and get(known,outer)==1 and get(known,ZZ+XX+YY)==1
  assert all(inside(known,outer,pt) for pt in inner)
  tests=[(AA+BB+YY,ZZ),(BB+CC+YY,XX),(CC+AA+ZZ,YY),
         (BB+CC+ZZ,XX),(CC+AA+XX,YY),(AA+BB+XX,ZZ)]
  assert all(inside(known,tri,pt) for tri,pt in tests)
  if part=='con':return add(det(AA+ZZ+YY),det(BB+XX+ZZ),det(CC+YY+XX),C(-(J-4)*S))
  assert part in ('ear0','ear1','ear2')
  ear=[AA+BB+ZZ,BB+CC+XX,CC+AA+YY][int(part[-1])]
  return add(det(outer),scale(det(ear),-1),C(-(J-1)*S))
 if name.startswith('SOS'):
  coeff=squares[name];assert len(coeff)==N+1 and all(type(co)==int for co in coeff)
  linear=add(C(coeff[0]),*(scale(sub(VS[i],C(low[i])),coeff[i+1]) for i in range(N)))
  return mul(linear,linear)
 raise AssertionError(('undefined atom',name))

def factor(name,kind,known,squares=None,witnesses=None):
 return mul(*(atom(part,kind,known,squares,witnesses) for part in name.split('*')))

def shift(poly,lower):
 cache={():C(1)}
 def translated(mon):
  if mon not in cache:cache[mon]=mul(translated(mon[:-1]),add(V(mon[-1]),C(lower[mon[-1]])))
  return cache[mon]
 return add(*(scale(translated(mon),co) for mon,co in poly.items()))

def upper(poly,kind):
 lo,hi,_=box(kind);width=[b-a for a,b in zip(lo,hi)];shifted=shift(poly,lo)
 return shifted.get((),F(0))+sum(co*prod(width[i] for i in mon) for mon,co in shifted.items() if mon and co>0)

def read_source_poly(data):
 return {tuple(i for i,power in enumerate(ex) for _ in range(power)):F(co) for ex,co in data if F(co)}
