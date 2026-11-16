"""Explicit geometric inference rules for N6 exterior placement traces."""
from itertools import combinations,permutations,product
from functools import lru_cache

LABELS='ABCEFHPQRS'
ANCHORS='ABCEFH'
HALVES={'lower':'HABCPQ','upper':'HCEFRS'}
BASE_HULLS={'P':'HABC','Q':'HABC'}
LOCATIONS='IT'
def set_locations(locations):
 global LOCATIONS
 assert len(locations)==2 and set(locations)<=set('IRTL')
 LOCATIONS=locations
 BASE_HULLS.clear();BASE_HULLS.update({'P':'HABC','Q':'HABC'})
 BASE_HULLS.update({ch:'HCEF' for ch,loc in zip('RS',locations) if loc=='I'})
 HALVES.clear();HALVES['lower']='HABCPQ'
 if locations=='II':HALVES['upper']='HCEFRS'

@lru_cache(None)
def canonical(word,sg=1):
 ids=[LABELS.index(ch) for ch in word]
 inv=sum(ids[i]>ids[j] for i in range(3) for j in range(i+1,3))
 return ''.join(sorted(word,key=LABELS.index)),sg*(-1)**inv
def get(known,word):
 if len(set(word))<3:return 0
 key,sg=canonical(word);return sg*known.get(key,0)
class Contradiction(Exception):
 def __init__(self,witness):self.witness=witness;super().__init__(str(witness))
def put(known,word,sg):
 key,value=canonical(word,sg)
 if key in known:
  if known[key]!=value:raise Contradiction(['given',word,sg])
  return False
 known[key]=value;return True
def initial(case):
 known={}
 for tri in combinations(ANCHORS,3):put(known,''.join(tri),1)
 for point in 'PQRS':
  loc='I' if point in 'PQ' else LOCATIONS['RS'.index(point)]
  for aa,bb in zip(ANCHORS,ANCHORS[1:]+ANCHORS[:1]):
   put(known,aa+bb+point,-1 if (loc,aa+bb) in [('R','CE'),('T','EF'),('L','FH')] else 1)
  if point in 'RS' and loc!='I':
   put(known,'HE'+point,-1 if loc=='R' else 1)
   put(known,'CF'+point,1 if loc=='L' else -1)
  put(known,'HC'+point,-1 if point in 'PQ' else 1)
 for point in 'PQ':
  put(known,'AC'+point,1);put(known,'HB'+point,-1 if case=='mixed' and point=='P' else 1)
 for lower in 'PQ':
  for upper in 'RS':put(known,'H'+lower+upper,1);put(known,'C'+lower+upper,-1)
 return known
def inside(known,word,point):
 sg=get(known,word[:3])
 return bool(sg) and all(get(known,aa+bb+point)==sg for aa,bb in zip(word,word[1:]+word[:1]))
def convex(known,word):
 return all(get(known,''.join(word[i] for i in inds))==1 for inds in combinations(range(len(word)),3))
def line_patterns(known,hull,pair):
 old=[get(known,ch+pair) for ch in hull]
 return [ss for ss in product((-1,1),repeat=len(hull))
    if sum(ss[i]!=ss[(i+1)%len(ss)] for i in range(len(ss))) in
       ([2] if any(inside(known,hull,pt) for pt in pair) else [0,2])
    and all(not aa or aa==bb for aa,bb in zip(old,ss))]
def chord_hull(known,hull,pair):
 ss=[get(known,ch+pair) for ch in hull];assert all(ss)
 edges=[(hull[i],hull[(i+1)%len(hull)]) for i in range(len(hull)) if ss[i]!=ss[(i+1)%len(hull)]]
 assert len(edges)==2
 vertices=set(edges[0]+edges[1]);return ''.join(ch for ch in hull if ch in vertices)
def pluecker_products(known,word):
 aa,bb,cc,dd,ee=word
 pairs=[(aa+bb+cc,aa+dd+ee,1),(aa+bb+dd,aa+cc+ee,-1),(aa+bb+ee,aa+cc+dd,1)]
 return pairs,[sg*get(known,t1)*get(known,t2) for t1,t2,sg in pairs]

def replay(known,step):
 kind,*args=step
 if kind=='plu':
  word,target,sg=args;sg=int(sg);pairs,values=pluecker_products(known,word)
  assert values.count(0)==1 and len(set(v for v in values if v))==1
  t1,t2,coef=pairs[values.index(0)];wanted=-next(v for v in values if v)
  if canonical(target)[0]==canonical(t1)[0]:
   assert get(known,t2) and not get(known,t1)
   assert coef*sg*canonical(target)[1]*canonical(t1)[1]*get(known,t2)==wanted
  else:
   assert canonical(target)[0]==canonical(t2)[0] and get(known,t1) and not get(known,t2)
   assert coef*sg*canonical(target)[1]*canonical(t2)[1]*get(known,t1)==wanted
  put(known,target,sg)
 elif kind=='line':
  hull,pair,vertex,sg=args;sg=int(sg);possible=line_patterns(known,hull,pair)
  assert hull==ANCHORS or (pair,hull) in [('PQ','HABC'),('RS','HCEF')]
  assert convex(known,hull) and len(set(pair))==2 and not set(pair)&set(hull)
  assert possible and vertex in hull and all(ss[hull.index(vertex)]==sg for ss in possible)
  put(known,vertex+pair,sg)
 elif kind=='chord':
  hull,pair,edge,point=args;ch=chord_hull(known,hull,pair)
  assert hull==ANCHORS or (pair,hull) in [('PQ','HABC'),('RS','HCEF')]
  assert convex(known,hull) and inside(known,hull,point)
  assert point in pair and edge in [a+b for a,b in zip(ch,ch[1:]+ch[:1])]
  put(known,edge+point,1)
 elif kind in ('via','hullvia'):
  point,hull,edge,sg=args;sg=int(sg)
  if kind=='via':assert len(hull)==3 and point not in hull and inside(known,hull,point)
  else:assert point in BASE_HULLS and hull in (ANCHORS,BASE_HULLS[point])
  assert point not in edge and len(set(edge))==2
  vals=[]
  for vertex in hull:
   val=0 if vertex in edge else get(known,edge+vertex)
   assert vertex in edge or val
   vals.append(val)
  assert sg in vals and all(vv in (0,sg) for vv in vals)
  put(known,edge+point,sg)
 else:raise AssertionError(('unknown inference',step))

def check_exclusion(known,witness):
 kind,*args=witness
 if kind=='given':
  word,sg=args;assert get(known,word)==-int(sg)
 elif kind=='plubad':
  _,values=pluecker_products(known,args[0]);assert all(values) and len(set(values))==1
 elif kind=='linebad':assert not line_patterns(known,*args)
 elif kind=='stepbad':
  try:replay(dict(known),args)
  except Contradiction:return
  raise AssertionError(('noncontradictory inference',args))
 elif kind=='four':
  hull,points=args;assert len(points)==len(set(points))==4
  assert all(pt not in hull and inside(known,hull,pt) for pt in points)
 elif kind=='cluster':
  hull,pivot,fan,points=args
  assert len(points)==2 and pivot not in points and len(set(points))==2
  assert pivot in fan and set(fan)-set(hull)=={pivot}
  assert all(pt not in hull and inside(known,hull,pt) for pt in pivot+points)
  assert all(pt not in fan and inside(known,fan,pt) for pt in points)
 elif kind=='smallquad':
  hull,points,half=args
  assert len(hull)==len(set(hull))==4 and convex(known,hull)
  assert set(hull)<=set(HALVES[half]) and len(points)==len(set(points))==3
  assert all(pt not in hull and inside(known,hull,pt) for pt in points)
 else:raise AssertionError(('unknown exclusion',witness))

def geometric_exclusion(known):
 for tri in combinations(LABELS,3):
  tri=''.join(tri);sg=get(known,tri)
  if not sg:continue
  points=[ch for ch in LABELS if ch not in tri and inside(known,tri,ch)]
  if len(points)>=4:return ['four',tri,''.join(points[:4])]
  if len(points)==3:
   outer=tri if sg==1 else tri[0]+tri[2]+tri[1]
   for pivot in points:
    others=''.join(ch for ch in points if ch!=pivot)
    for aa,bb in zip(outer,outer[1:]+outer[:1]):
     fan=aa+bb+pivot
     if all(inside(known,fan,ch) for ch in others):return ['cluster',tri,pivot,fan,others]
 for vertices in combinations(LABELS,4):
  halves=[name for name,pts in HALVES.items() if set(vertices)<=set(pts)]
  if not halves:continue
  for tail in permutations(vertices[1:]):
   hull=vertices[0]+''.join(tail)
   if not convex(known,hull):continue
   points=[ch for ch in LABELS if ch not in hull and inside(known,hull,ch)]
   if len(points)>=3:return ['smallquad',hull,''.join(points[:3]),halves[0]]
   break
 return None

def close(known):
 steps=[]
 def force(word,sg,step):
  if get(known,word)==sg:return False
  try:replay(known,step)
  except Contradiction:raise Contradiction(['stepbad']+step)
  steps.append(step);return True
 try:
  changed=True
  while changed:
   changed=False
   for aa in LABELS:
    for four in combinations([ch for ch in LABELS if ch!=aa],4):
     word=aa+''.join(four);pairs,values=pluecker_products(known,word)
     if all(values):
      if len(set(values))==1:raise Contradiction(['plubad',word])
     elif values.count(0)==1:
      others=[v for v in values if v]
      if others[0]!=others[1]:continue
      t1,t2,sg=pairs[values.index(0)];s1,s2=get(known,t1),get(known,t2)
      if s1 and not s2:
       result=-others[0]*sg*s1;changed|=force(t2,result,['plu',word,t2,result])
      elif s2 and not s1:
       result=-others[0]*sg*s2;changed|=force(t1,result,['plu',word,t1,result])
   for pair0 in combinations('PQRS',2):
    pair=''.join(pair0);hulls=[ANCHORS]
    if pair=='PQ':hulls.append('HABC')
    if pair=='RS' and LOCATIONS=='II':hulls.append('HCEF')
    for hull in hulls:
     possible=line_patterns(known,hull,pair)
     if not possible:raise Contradiction(['linebad',hull,pair])
     for i,vertex in enumerate(hull):
      forced={ss[i] for ss in possible}
      if not get(known,vertex+pair) and len(forced)==1:
       sg=next(iter(forced));changed|=force(vertex+pair,sg,['line',hull,pair,vertex,sg])
     if not all(get(known,vertex+pair) for vertex in hull):continue
     signs=[get(known,ch+pair) for ch in hull]
     if len(set(signs))==1:continue
     chord=chord_hull(known,hull,pair)
     for aa,bb in zip(chord,chord[1:]+chord[:1]):
      for pt in pair:
       if inside(known,hull,pt):changed|=force(aa+bb+pt,1,['chord',hull,pair,aa+bb,pt])
   for tri0 in combinations(LABELS,3):
    tri=''.join(tri0)
    if get(known,tri):continue
    for position in range(3):
     point=tri[position];edge=''.join(ch for i,ch in enumerate(tri) if i!=position)
     hulls=[(hull,'hullvia') for hull in (ANCHORS,BASE_HULLS[point])] if point in BASE_HULLS else []
     hulls += [(''.join(hull),'via') for hull in combinations([ch for ch in LABELS if ch!=point],3) if inside(known,''.join(hull),point)]
     for hull,kind in hulls:
      if any(vertex not in edge and not get(known,edge+vertex) for vertex in hull):continue
      ss=[0 if vertex in edge else get(known,edge+vertex) for vertex in hull]
      sg=1 if min(ss)>=0 and max(ss)>0 else -1 if max(ss)<=0 and min(ss)<0 else 0
      if sg:
       changed|=force(edge+point,sg,[kind,point,hull,edge,sg]);break
     if get(known,tri):break
  bad=geometric_exclusion(known)
  if bad:raise Contradiction(bad)
  return steps,None
 except Contradiction as exc:
  check_exclusion(known,exc.witness)
  return steps,exc.witness
