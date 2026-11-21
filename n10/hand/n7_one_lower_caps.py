"""Explicit elementary witnesses for scalar caps used by fixed factors."""
from fractions import Fraction as F
from itertools import combinations
import n7_one_lower_rules as g
q=g.q
word=lambda tri:''.join(g.L[i] for i in tri)
def requirement(name,known):
 if name.startswith('PB_'):
  _,five,target,_,cap=name.split('_');A,B,C,D,E=g.wi(five)
  pairs=[((A,B,C),(A,D,E),1),((A,B,D),(A,C,E),-1),((A,B,E),(A,C,D),1)]
  signs=[sn*g.get(known,t)*g.get(known,u) for t,u,sn in pairs];assert all(signs) and len(set(signs))==2
  j=next(j for j,sg in enumerate(signs) if signs.count(sg)==1);tt,uu,_=pairs[j]
  assert set(g.wi(target)) in [set(tt),set(uu)];paired=uu if set(g.wi(target))==set(tt) else tt
  return tuple(sorted(paired)),F(cap.replace('d','/'))
 assert name.startswith('F5_');fields=name.split('_');assert len(fields)==3
 A,B,C,D,E=g.wi(fields[1]);which=fields[2][0];cap=F(fields[2][1:].replace('d','/'))
 return (A,B,E) if which=='X' else (A,D,E),cap

def fixed_caps(known):
 caps=g.CAPBOUNDS.copy()
 if g.ins(known,[0,1,2],6):caps.append(([0,1,7],F(17,100)))
 if g.ins(known,[0,1,7],6):caps.append(([0,1,2],F(17,100)))
 return caps

def basic(tri,known,low,high):
 best=F(1);record=['square','1']
 for cap,value in fixed_caps(known):
  if value<best and all(t in cap or g.ins(known,cap,t) for t in tri):best=value;record=['fixed',word(cap),str(value)]
 value=g.shifted_polynomial_upper(q.scale(q.det(*tri),g.get(known,tri)),low,high)
 if value<best:best=value;record=['box',str(value)]
 values=g.vertex_polynomial_values(q.scale(q.det(*tri),g.get(known,tri)),low,high);value=max(values)
 if value<best:best=value;record=['vertices',str(value),*map(str,values)]
 return best,record

def make(name,known,low,high):
 tri,need=requirement(name,known);value,record=basic(tri,known,low,high)
 if value<=need:return [name,word(tri),*record]
 for outer in combinations(range(10),3):
  sg=g.get(known,outer)
  if not sg:continue
  poly=list(outer) if sg>0 else [outer[1],outer[0],outer[2]]
  for point in g.FREE:
   if not g.ins(known,poly,point):continue
   fans=[[i,j,point] for i,j in zip(poly,poly[1:]+poly[:1])]
   selected=[j for j,fan in enumerate(fans) if set(fan)==set(tri)]
   if not selected:continue
   other=[fan for j,fan in enumerate(fans) if j!=selected[0]]
   costs=[{0:F(1),1:F(3),2:g.K,3:g.J}[sum(g.ins(known,fan,t) for t in g.FREE)] for fan in other]
   top,source=basic(poly,known,low,high)
   if top-g.s*sum(costs)<=need:
    return [name,word(tri),'fan',word(poly),g.L[point],word(other[0]),str(costs[0]),word(other[1]),str(costs[1]),str(top),*source]
 raise AssertionError(('no printed cap witness',name))

def verify(tokens,known,low,high):
 name,triword,*record=tokens;tri,need=requirement(name,known);assert set(g.wi(triword))==set(tri)
 def check_basic(poly,proof):
  kind,*args=proof
  if kind=='square':assert args==['1'];return F(1)
  if kind=='box':
   assert len(args)==1;value=g.shifted_polynomial_upper(q.scale(q.det(*poly),g.get(known,poly)),low,high);assert value==F(args[0]);return value
  if kind=='vertices':
   assert len(args)>=2;values=g.vertex_polynomial_values(q.scale(q.det(*poly),g.get(known,poly)),low,high)
   assert values==list(map(F,args[1:]));value=max(values);assert value==F(args[0]);return value
  assert kind=='fixed' and len(args)==2
  cap=g.wi(args[0]);value=F(args[1]);assert any(cap==pp and value==bb for pp,bb in fixed_caps(known))
  assert all(t in cap or g.ins(known,cap,t) for t in poly);return value
 if record[0]!='fan':value=check_basic(tri,record)
 else:
  _,outer,point,one,c1,two,c2,top,*source=record;poly=g.wi(outer);pt=g.wi(point)[0]
  assert g.get(known,poly)>0 and g.ins(known,poly,pt)
  fans=[[i,j,pt] for i,j in zip(poly,poly[1:]+poly[:1])]
  assert {frozenset(fan) for fan in fans}=={frozenset(tri),frozenset(g.wi(one)),frozenset(g.wi(two))}
  for fan,cost in [(g.wi(one),F(c1)),(g.wi(two),F(c2))]:
   assert g.get(known,fan)>0
   n=sum(g.ins(known,fan,p) for p in g.FREE);assert cost<={0:F(1),1:F(3),2:g.K,3:g.J}[n]
  top=F(top);assert check_basic(poly,source)==top;value=top-g.s*(F(c1)+F(c2))
 assert value<=need
 return name
