"""Explicit geometric trace rules for the two N6 top-triple counts."""
from itertools import combinations,permutations,product
from functools import lru_cache

LABELS='ABCEFHPQRS'
ANCHORS='ABCEFH'
HALVES={}
BASE_HULLS={}
LOCATIONS='BIRL'
def set_locations(locations):
 global LOCATIONS
 assert len(locations)==4 and set(locations)<=set('BIRTL')
 assert locations.count('B')<=1 and locations.count('I')<=2
 LOCATIONS=locations
 BASE_HULLS.clear();BASE_HULLS.update({ch:('HABC' if loc=='B' else 'HCEF') for ch,loc in zip('PQRS',locations) if loc in 'BI'})
 HALVES.clear()
 HALVES['lower']='HABC'+''.join(ch for ch,loc in zip('PQRS',locations) if loc=='B')
 HALVES['upper']='HCEF'+''.join(ch for ch,loc in zip('PQRS',locations) if loc=='I')

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
 assert LOCATIONS in ['BTTT','ITTT']
 assert case==('below' if LOCATIONS[0]=='B' else 'above')
 for tri in combinations(ANCHORS,3):put(known,''.join(tri),1)
 for point,loc in zip('PQRS',LOCATIONS):
  for aa,bb in zip(ANCHORS,ANCHORS[1:]+ANCHORS[:1]):
   put(known,aa+bb+point,-1 if loc=='T' and aa+bb=='EF' else 1)
  put(known,'HC'+point,-1 if loc=='B' else 1)
  if loc=='T':put(known,'HE'+point,1);put(known,'CF'+point,-1)
 if LOCATIONS[0]=='B':
  for up in 'QRS':put(known,'HP'+up,1);put(known,'CP'+up,-1)
 for left,right in combinations('QRS',2):put(known,'E'+left+right,1)
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

MESH_TEMPLATE=['ABZ','BCX','CAY','AZY','BXZ','CYX','ZXY',
               'AZX','BXY','CYZ','AXY','BYZ','CZX']
def mesh_patterns(known,outer,points):
 assert len(set(outer+points))==6 and get(known,outer)==1
 assert all(inside(known,outer,pt) for pt in points)
 patterns=[]
 for named in permutations(points):
  mp=dict(zip('ABCXYZ',outer+''.join(named)))
  signs={canonical(''.join(mp[ch] for ch in word),1)[0]:canonical(''.join(mp[ch] for ch in word),1)[1] for word in MESH_TEMPLATE}
  if all(not known.get(tr) or known[tr]==sg for tr,sg in signs.items()):patterns.append(signs)
 return patterns

def replay(known,step):
 kind,*args=step
 if kind=='mesh':
  outer,points,word,sg=args;sg=int(sg);patterns=mesh_patterns(known,outer,points)
  key,e=canonical(word,sg)
  assert patterns and all(row.get(key)==e for row in patterns)
  put(known,word,sg)
 elif kind=='plu':
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
  assert hull==ANCHORS or (hull in ('HABC','HCEF') and all(BASE_HULLS.get(pt)==hull for pt in pair))
  assert convex(known,hull) and len(set(pair))==2 and not set(pair)&set(hull)
  assert possible and vertex in hull and all(ss[hull.index(vertex)]==sg for ss in possible)
  put(known,vertex+pair,sg)
 elif kind=='chord':
  hull,pair,edge,point=args;ch=chord_hull(known,hull,pair)
  assert hull==ANCHORS or (hull in ('HABC','HCEF') and all(BASE_HULLS.get(pt)==hull for pt in pair))
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
 elif kind=='nomesh':
  outer,points=args;assert not mesh_patterns(known,outer,points)
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
