"""Exact geometric and factor rules for the N7 one-lower-point manuscripts."""
from fractions import Fraction as F
from itertools import combinations, product
import n7_one_lower_polynomials as q
L=q.LABELS;s=q.s;K=q.K;J=q.J;ell=q.ell;eta=q.eta;h0=4*s/(1-ell)
a,b,c,d,e,f,g,h,z,x,y,u,v=q.vs;one=q.const(1)
wi=q.wi

def get(k,tri):
 if len(set(tri))<3:return 0
 return q.get(k,tuple(tri))
def sg(k,word):return get(k,wi(word))
def ins(k,poly,point):return point not in poly and all(get(k,(i,j,point))>0 for i,j in zip(poly,poly[1:]+poly[:1]))
def convex(k,poly):return all(get(k,t)>0 for t in combinations(poly,3))
def put(k,tri,sn):return q.put(k,tuple(tri),sn)
HULL=[0,1,2,3,4,5,7];FREE=[6,8,9];REG=[[7,0,1,2],[7,2,4,5],[2,3,4]];CAPS=[[7,4,5],[1,2,4],[3,4,5]]

def starting(extra):
 k={}
 for tri in combinations(HULL,3):put(k,tri,1)
 for point,poly in [(6,REG[0]),(8,REG[1]),(9,REG[1])]:
  for pp in [HULL,poly]:
   for i,j in zip(pp,pp[1:]+pp[:1]):put(k,(i,j,point),1)
 put(k,(7,8,9),-1);put(k,(4,7,9),1)
 for tok in extra:put(k,wi(tok[:3]),1 if tok[-1]=='+' else -1)
 return k

def step(k,item):
 why,target,sn=item;tri=wi(target)
 if get(k,tri):assert get(k,tri)==sn;return False
 op=why[0]
 if op=='plu':
  _,pivot,other=why;B,C,D,E=other
  terms=[((pivot,B,C),(pivot,D,E),1),((pivot,B,D),(pivot,C,E),-1),((pivot,B,E),(pivot,C,D),1)]
  values=[coef*get(k,t)*get(k,u) for t,u,coef in terms]
  assert values.count(0)==1 and len({v for v in values if v})==1,(why,values)
  t,u,coef=terms[values.index(0)];unknown=[p for p in [t,u] if not get(k,p)]
  assert len(unknown)==1 and set(unknown[0])==set(tri)
  put(k,tri,sn);assert coef*get(k,t)*get(k,u)==-next(v for v in values if v);return True
 if op in ['via','hullvia']:
  _,point,poly,i,j=why
  if op=='via':assert len(poly)==3 and get(k,poly)>0 and ins(k,poly,point)
  else:
   assert poly in [HULL,REG[0] if point==6 else REG[1]] and ins(k,poly,point)
  vals=[0 if t in [i,j] else get(k,(i,j,t)) for t in poly]
  assert all(t in [i,j] or vals[ii] for ii,t in enumerate(poly))
  assert sn in vals and all(t in [0,sn] for t in vals)
  assert tri==[i,j,point]
 elif op=='line':
  _,poly,pair,vertex=why;I,J=pair
  assert poly in [HULL,*REG] and convex(k,poly)
  old=[get(k,(i,I,J)) for i in poly];counts=[2] if any(ins(k,poly,t) for t in pair) else [0,2]
  words=[w for w in product((-1,1),repeat=len(poly)) if sum(w[i]!=w[(i+1)%len(poly)] for i in range(len(poly))) in counts and all(not xx or xx==yy for xx,yy in zip(old,w))]
  assert words and {w[poly.index(vertex)] for w in words}=={sn}
  assert tri==[vertex,I,J]
 elif op in ['chord_from','chord']:
  if op=='chord_from':_,poly,pair,chord=why
  else:
   _,I,J,chord=why;poly=HULL;pair=[I,J]
  I,J=pair;vals=[get(k,(t,I,J)) for t in poly]
  assert all(vals) and sum(vals[i]!=vals[(i+1)%len(poly)] for i in range(len(poly)))==2
  cut=[(poly[i],poly[(i+1)%len(poly)]) for i in range(len(poly)) if vals[i]!=vals[(i+1)%len(poly)]]
  ends=set(cut[0]+cut[1]);assert chord==[t for t in poly if t in ends]
  assert tri[-1] in pair and ins(k,poly,tri[-1]) and sn==1
  assert tuple(tri[:2]) in list(zip(chord,chord[1:]+chord[:1]))
 elif op=='topcap':
  _,first,second,poly=why;assert poly in CAPS and ins(k,poly,first)
  assert tri[-1]==second and sn==-1
  edges=list(zip(poly,poly[1:]+poly[:1]));assert tuple(tri[:2]) in edges
  assert all(get(k,(i,j,second))>0 for i,j in edges if (i,j)!=tuple(tri[:2]))
 elif op=='capray':
  _,poly,pair,I,J,Kc=why;assert poly in CAPS
  assert [I,J,Kc] in [poly[t:]+poly[:t] for t in range(3)]
  U,V=pair
  assert all(get(k,(J,Kc,pt))>0 and get(k,(Kc,I,pt))>0 for pt in pair)
  ss=get(k,(I,U,V));assert ss
  assert tri==[I,J,V if ss<0 else U] and sn==-1
 else:raise AssertionError(('unknown rule',why))
 put(k,tri,sn);return True

CAPBOUNDS=[([0,1,2],F(403,1000)),([0,1,7],F(403,1000)),([1,2,3],F(357,1000)),([2,3,4],F(357,1000)),([7,4,5],1-h0),([1,2,4],F(13857,20000)),([3,4,5],F(13857,20000))]
def bound_proved(k,poly,B):
 caps=CAPBOUNDS.copy()
 if ins(k,[0,1,2],6):caps.append(([0,1,7],F(17,100)))
 if ins(k,[0,1,7],6):caps.append(([0,1,2],F(17,100)))
 return B>=1 or any(capB<=B and all(t in cap or ins(k,cap,t) for t in poly) for cap,capB in caps)

def factors(data,k):
 low=list(map(F,data['low']));high=list(map(F,data['high']));LL=[]
 for w,lo,hi in zip(q.vs,low,high):LL.extend([q.add(w,q.const(-lo)),q.add(q.const(hi),q.scale(w,-1))])
 LL.extend([q.add(h,q.scale(a,-1),q.const(-s)),q.add(q.const(F(697,790)),q.scale(h,-1),a),q.add(e,q.scale(d,-1),q.const(-s)),q.add(q.const(F(697,790)),q.scale(e,-1),d),q.add(c,q.scale(b,-1),q.const(-F(117,1000))),q.add(q.const(F(79,100)),q.scale(c,-1),b),q.add(f,q.scale(b,-1)),q.add(c,q.scale(f,-1)),q.add(h,q.scale(e,-1)),q.add(e,q.scale(a,-1))])
 if len(data['facet_names'])>36:
  assert data['facet_names'][36]=='Gsum'
  ear=data['facet_names'][37].endswith('_ear')
  assert data['facet_names'][37]=='UHC_O_'+('ear' if ear else 'base')
  assert data['facet_names'][38]=='UHC_P_'+('ear' if ear else 'base') and data['facet_names'][39]=='PHE_cap'
  if ear:assert any(ins(k,poly,6) for poly in [[0,1,2],[0,1,7]])
  floor=(K if ear else F(2911,500))*s
  LL.extend([q.add(q.const(F(790,883)),q.scale(g,-1),q.scale(z,-1)),
   q.add(x,q.scale(y,F(883,1000)),q.const(-floor-s)),
   q.add(u,q.scale(v,F(883,1000)),q.const(-floor-s)),
   q.add(q.const(1-s),q.scale(v,-1),q.scale(u,-s))])
 for name in data['facet_names'][40:]:
  if name=='LOWER_ACH_ratio':
   assert ins(k,[0,2,7],6);LL.append(q.add(q.scale(h,F(604,883)),q.scale(a,-1)))
  elif name=='LOWER_BCH_ratio':
   assert ins(k,[1,2,7],6);LL.append(q.add(q.scale(c,F(604,883)),q.scale(b,-1)))
  elif name=='HCF2_c':
   assert all(ins(k,[7,2,5],point) for point in (8,9));LL.append(q.add(c,q.const(-K*s)))
  elif name=='HCF2_f':
   assert all(ins(k,[7,2,5],point) for point in (8,9));LL.append(q.add(f,q.const(-high[2]+(high[2]-K*s)/low[7])))
  elif name=='CEF2_f':
   assert all(ins(k,[2,4,5],point) for point in (8,9));LL.append(q.add(q.const((1-K*s-(1-high[4])*low[2])/high[4]),q.scale(f,-1)))
  elif name=='CEF2_e':
   assert all(ins(k,[2,4,5],point) for point in (8,9));LL.append(q.add(e,q.const(-(K*s+low[2]-1)/(low[2]-low[5]))))
  elif name=='HCE2_e':
   assert all(ins(k,[7,2,4],point) for point in (8,9));LL.append(q.add(e,q.const(-1+(1-K*s)/low[2])))
  else:raise AssertionError(('unknown affine consequence',name))
 assert len(LL)==len(data['facet_names'])
 cell=data.get('cell')
 box_cache={};basic_cache={};proof_cache={}
 def box_upper(tri):
  key=tuple(sorted(tri))
  if key in box_cache:return box_cache[key]
  poly=q.scale(q.det(*tri),get(k,tri));shifted={}
  for ex,co in poly.items():
   term=q.const(co)
   for j,power in enumerate(ex):
    for _ in range(power):term=q.mul(term,q.add(q.const(low[j]),q.scale(q.vs[j],high[j]-low[j])))
   shifted=q.add(shifted,term)
  box_cache[key]=shifted.get(q.Z,F(0))+sum(max(F(0),co) for ex,co in shifted.items() if ex!=q.Z)
  return box_cache[key]
 def basic_cap(tri):
  key=tuple(sorted(tri))
  if key in basic_cache:return basic_cache[key]
  caps=CAPBOUNDS.copy()
  if ins(k,[0,1,2],6):caps.append(([0,1,7],F(17,100)))
  if ins(k,[0,1,7],6):caps.append(([0,1,2],F(17,100)))
  value=min(F(1),box_upper(tri))
  for cap,bb in caps:
   if all(t in cap or ins(k,cap,t) for t in tri):value=min(value,bb)
  basic_cache[key]=value;return value
 def plucker_cap_proved(tri,bb):
  key=(tuple(sorted(tri)),bb)
  if key not in proof_cache:proof_cache[key]=_plucker_cap_proved(tri,bb)
  return proof_cache[key]
 def _plucker_cap_proved(tri,bb):
  if bb>=basic_cap(tri):return True
  for outer in combinations(range(10),3):
   ss=get(k,outer)
   if not ss:continue
   poly=list(outer) if ss>0 else [outer[1],outer[0],outer[2]]
   for point in FREE:
    if not ins(k,poly,point):continue
    fans=[[I,J,point] for I,J in zip(poly,poly[1:]+poly[:1])]
    selected=[j for j,fan in enumerate(fans) if set(fan)==set(tri)]
    if not selected:continue
    floors=[]
    for j,fan in enumerate(fans):
     if j==selected[0]:continue
     count=sum(ins(k,fan,t) for t in FREE)
     floors.append({0:F(1),1:F(3),2:K,3:J}[count])
    if bb>=basic_cap(list(outer))-s*sum(floors):return True
  return False
 def factor(name,saved=None):
  if '*' in name:
   parts=name.split('*');pieces=[factor(t) for t in parts];out=q.mul(*pieces)
   if saved is None or out==saved:return out
   for j,part in enumerate(parts):
    if not part.startswith('R'):continue
    for delta in [-s/F(5),s/F(5)]:
     candidate=q.add(pieces[j],q.const(delta))
     try:factor(part,candidate)
     except AssertionError:continue
     alternative=pieces.copy();alternative[j]=candidate
     out=q.mul(*alternative)
     if out==saved:return out
   return out
  if name.startswith('L') and name[1:].isdigit():return LL[int(name[1:])]
  if name=='EL':return q.add(q.mul(h,c),q.const(-F(29,5)*s))
  if name=='ER':return q.add(q.mul(e,q.add(one,q.scale(b,-1))),q.const(-4*s))
  if name.startswith('ELK') or name in ['ABC_a','ABH_b']:
   assert any(ins(k,p,6) for p in [[0,1,2],[0,1,7]])
   if name=='ELK':return q.add(q.mul(h,c),q.const(-K*s))
   if name=='ELK_c':return q.add(c,q.const(-K*s))
   if name=='ELK_h':return q.add(h,q.const(-K*s/(1-ell)))
   if name=='ABC_a':assert ins(k,[0,1,2],6);return q.add(a,q.const(-3*eta))
   if name=='ABH_b':assert ins(k,[0,1,7],6);return q.add(b,q.const(-3*s/(1-eta)))
  if name.startswith('Central_'):
   assert sg(k,'ACG')==sg(k,'HBG')==1
   PP=q.mul(q.add(h,q.scale(a,-1)),q.add(c,q.scale(b,-1)));WW=q.add(q.scale(q.mul(h,c),3),q.scale(q.mul(a,c),-1),q.scale(q.mul(b,h),-1),q.scale(q.mul(a,b),-1))
   if name=='Central_order':assert cell in ['CA','CB'];return q.add(q.mul(a,c),q.scale(q.mul(b,h),-1)) if cell=='CA' else q.add(q.mul(b,h),q.scale(q.mul(a,c),-1))
   if name=='Central_endpoint':
    assert cell in ['CA','CB']
    return q.add(q.mul(c,a,q.add(h,q.scale(a,-1))),q.scale(q.add(h,a),-s)) if cell=='CA' else q.add(q.mul(h,b,q.add(c,q.scale(b,-1))),q.scale(q.add(c,b),-s))
   if name=='Central_strip_cap':return q.add(q.scale(PP,F(883,1000)),q.scale(WW,-s))
   if name=='Central_strip_h':return q.add(q.mul(h,PP),q.scale(WW,-s))
   if name=='Central_strip_c':return q.add(q.mul(c,PP),q.scale(WW,-s))
  if name.startswith('MESH_'):
   _,word,idx=name.split('_');idx=int(idx);A,B,C,Y,Zc,X=wi(word)
   assert len(set(word))==6 and get(k,(A,B,C))>0 and set([Y,Zc,X])==set(FREE)
   assert all(ins(k,[A,B,C],point) for point in FREE)
   tests=[([A,B,Y],Zc),([A,C,Y],X),([B,C,Zc],Y),([A,C,Zc],X),([B,C,X],Y),([A,B,X],Zc)]
   for tri,point in tests:
    ss=get(k,tri);assert ss
    oriented=tri if ss>0 else [tri[1],tri[0],tri[2]]
    assert ins(k,oriented,point)
   if idx in [0,1,2]:
    tri=[(A,B,Zc),(A,C,X),(B,C,Y)][idx]
    return q.add(q.det(A,B,C),q.scale(q.det(*tri),-get(k,tri)),q.const(-F(3927,500)*s))
   if idx==3:
    tris=[(B,Y,Zc),(A,Zc,X),(C,Y,X)];assert all(get(k,tri) for tri in tris)
    return q.add(*(q.scale(q.det(*tri),get(k,tri)) for tri in tris),q.const(-F(2427,500)*s))
   assert idx==4;tri=(Y,Zc,X)
   return q.add(q.const(F(8,5)*s),q.scale(q.det(*tri),-get(k,tri)))
  if name.startswith('PB_'):
   _,word,target,costwords,capword=name.split('_');pivot,B,C,D,E=wi(word)
   target=wi(target);costs=[F(x.replace('d','/')) for x in costwords.split('x')];cap=F(capword.replace('d','/'))
   assert len(costs)==4
   pairs=[((pivot,B,C),(pivot,D,E),1),((pivot,B,D),(pivot,C,E),-1),((pivot,B,E),(pivot,C,D),1)]
   signs=[sn*get(k,t)*get(k,u) for t,u,sn in pairs];assert all(signs) and len(set(signs))==2
   isolated=next(j for j,ss in enumerate(signs) if signs.count(ss)==1)
   tt,uu,_=pairs[isolated];assert set(target) in [set(tt),set(uu)]
   paired=uu if set(target)==set(tt) else tt
   assert plucker_cap_proved(list(paired),cap)
   others=[t for j,pair in enumerate(pairs) if j!=isolated for t in pair[:2]]
   for tri,cost in zip(others,costs):
    oriented=list(tri) if get(k,tri)>0 else [tri[1],tri[0],tri[2]]
    count=sum(ins(k,oriented,pt) for pt in FREE)
    assert cost<={0:F(1),1:F(3),2:K,3:J}[count]
   return q.add(q.scale(q.det(*target),cap*get(k,target)),q.const(-s*s*(costs[0]*costs[1]+costs[2]*costs[3])))
  if name.startswith('PAIR_'):
   if name=='PAIR_BL':return q.add(q.mul(h,c),q.scale(q.det(0,1,2),-1),q.scale(q.det(0,1,7),-1),q.const(-2*s))
   if name=='PAIR_BR':return q.add(q.mul(e,q.add(one,q.scale(b,-1))),q.scale(q.det(1,2,3),-1),q.scale(q.det(2,3,4),-1),q.const(-2*s))
   assert name=='PAIR_BL3' and any(ins(k,p,6) for p in [[0,1,2],[0,1,7]])
   return q.add(q.mul(h,c),q.scale(q.det(0,1,2),-1),q.scale(q.det(0,1,7),-1),q.const(-F(17,5)*s))
  if name.startswith('U'):
   word,bb=name[1:].split('_');B=F(bb.replace('d','/'));assert bound_proved(k,wi(word),B)
   return q.add(q.const(B),q.scale(q.det(*wi(word)),-1))
  if name.startswith('F5_'):
   fields=name.split('_');word=fields[1];assert len(set(word))==5 and convex(k,wi(word));A,B,C,D,E=wi(word)
   X=q.det(A,B,E);Y=q.det(A,D,E);Z=q.det(A,B,D)
   if len(fields)==2:return q.add(Y,q.scale(q.add(X,q.scale(Z,-1)),-11*s))
   which=fields[2][0];cap=F(fields[2][1:].replace('d','/'))
   assert cap>=basic_cap([A,B,E] if which=='X' else [A,D,E])
   return q.add(q.scale(Y,cap),q.scale(q.add(X,q.scale(Z,-1)),-11*s)) if which=='X' else q.add(q.scale(Z,11*s),q.scale(X,cap-11*s))
  if name.startswith(('E5_','E6_')):
   typ,word,which,cost=name.split('_');cost=F(cost.replace('d','/'));A,B,C,D=wi(word);assert convex(k,[A,B,C,D])
   if typ=='E5':
    assert set(word)==set('HABC') and ins(k,[A,B,C,D],6)
    cnt=sorted(int(ins(k,t,6)) for t in [[A,C,D],[B,C,D]])
    cc={(0,0):F(29,5),(0,1):K,(1,1):F(12)}[tuple(cnt)]
    upper={frozenset('ABC'):a,frozenset('ABH'):b,frozenset('ACH'):q.add(h,q.scale(a,-1)),frozenset('BCH'):q.add(c,q.scale(b,-1))}
   else:
    assert set(word)==set('HCEF') and all(ins(k,[A,B,C,D],t) for t in [8,9])
    cnt=sorted(sum(ins(k,t,j) for j in [8,9]) for t in [[A,C,D],[B,C,D]])
    cc={(0,0):F(9),(0,1):F(9),(0,2):F(139,10),(1,1):F(12),(1,2):F(199,10),(2,2):F(149,5)}[tuple(cnt)]
    if all(ins(k,[A,B,C],t) and ins(k,[A,B,D],t) for t in [8,9]):cc=max(cc,F(299,31))
    upper={frozenset('HCE'):h,frozenset('HCF'):c,frozenset('CEF'):q.add(one,q.scale(f,-1)),frozenset('HEF'):q.add(one,q.scale(e,-1))}
   assert cost<=cc
   X=q.det(A,B,C);Y=q.det(A,B,D);delta=q.add(Y,q.scale(q.det(A,C,D),-1))
   cap=upper[frozenset(word[:3] if which=='X' else word[:2]+word[3])]
   return q.add(q.mul(cap,Y if which=='X' else X),q.scale(delta,-cost*s))
  if name.startswith('C') and '_' in name:
   word,count=name[1:].split('_');count=int(count);assert sg(k,word)>0
   occ=[t for t in FREE if ins(k,wi(word),t)];assert len(occ)>=count
   return q.add(q.det(*wi(word)),q.const(-{1:F(3),2:K,3:J}[count]*s))
  if name.startswith('Q'):
   word,count=name[1:].split('_');count=int(count);assert convex(k,wi(word))
   occ=[t for t in FREE if ins(k,wi(word),t)];assert len(occ)>=count
   return q.add(q.quad(word),q.const(-{1:F(24,5)*s,2:8*s,3:F(93,91)}[count]))
  if name.startswith('R'):
   fields=name[1:].split('_');assert len(fields) in [3,4]
   word,pair,diag=fields[:3];explicit=None if len(fields)==3 else F(fields[3][1:].replace('d','/'))
   if len(fields)==4:assert fields[3].startswith('c')
   poly=wi(word);aa,bb=wi(pair);ii,jj=wi(diag)
   assert convex(k,poly) and ins(k,poly,aa) and ins(k,poly,bb)
   assert diag in [word[0]+word[2],word[1]+word[3]]
   assert all(get(k,(poly[t],poly[t+2],aa))*get(k,(poly[t],poly[t+2],bb))<0 for t in [0,1])
   base=q.add(q.quad(word),q.scale(q.add(q.det(ii,jj,aa),q.scale(q.det(ii,jj,bb),-1)),-get(k,(ii,jj,aa))))
   costs=[F(29,5)]
   if any(set(poly)<=set(rr) for rr in [REG[0],REG[1],[0,1,4,5]]):costs.append(F(6))
   candidates=[q.add(base,q.const(-cost*s)) for cost in costs]
   if explicit is not None:
    assert explicit in costs;return q.add(base,q.const(-explicit*s))
   if saved is not None:
    assert saved in candidates;return saved
   # Inside products the caller supplies no saved subfactor. Infer the
   # coefficient from the serialized row's corresponding base factor.
   for tt in data['terms']:
    if tt['name']==name:
     target={tuple(ex):F(co) for ex,co in tt['poly']}
     if target in candidates:return target
   return candidates[-1]
  if name.startswith('SQ'):
   sq=next(t for t in data.get('squares',[]) if t['name']==name);linear=q.add(q.const(F(sq['coefficients'][0],sq['scale'])),*(q.scale(var,F(co,sq['scale'])) for var,co in zip(q.vs,sq['coefficients'][1:])))
   return q.mul(linear,linear)
  assert len(name)==4 and name[-1] in '+-',name
  sign=1 if name[-1]=='+' else -1;assert sg(k,name[:3])==sign
  return q.add(q.scale(q.det(*wi(name[:3])),sign),q.const(-s))
 return factor

def strong_box(cell):
 B=1-4*s/(1-s)
 tables={
 'ABC':('353/1000 143/1000 692/1000 125/1000 426/1000 143/1000 143/1000 784/1000 125/1000 143/1000 125/1000 143/1000 125/1000','843/1000 B 883/1000 606/1000 907/1000 883/1000 642/1000 1 602/1000 883/1000 907/1000 883/1000 907/1000'),
 'ABH':('170/1000 336/1000 692/1000 170/1000 471/1000 336/1000 112/1000 784/1000 170/1000 112/1000 170/1000 112/1000 170/1000','685/1000 B 883/1000 606/1000 907/1000 883/1000 397/1000 1 653/1000 883/1000 907/1000 883/1000 907/1000'),
 'CA':('139/1000 108/1000 541/1000 120/1000 h0 108/1000 118/1000 613/1000 139/1000 108/1000 120/1000 108/1000 120/1000','685/1000 B 883/1000 705/1000 907/1000 883/1000 685/1000 1 773/1000 883/1000 907/1000 883/1000 907/1000'),
 'CB':('122/1000 123/1000 541/1000 122/1000 h0 123/1000 123/1000 613/1000 134/1000 ell 122/1000 ell 122/1000','685/1000 B 883/1000 705/1000 907/1000 883/1000 685/1000 1 775/1000 883/1000 907/1000 883/1000 907/1000')}
 def val(t):return {'B':B,'h0':h0,'ell':ell}[t] if t in ['B','h0','ell'] else F(t)
 return tuple([val(t) for t in row.split()] for row in tables[cell])
def shifted_polynomial_upper(poly,low,high):
 shifted={}
 for ex,co in poly.items():
  term=q.const(co)
  for j,power in enumerate(ex):
   for _ in range(power):term=q.mul(term,q.add(q.const(low[j]),q.scale(q.vs[j],high[j]-low[j])))
  shifted=q.add(shifted,term)
 return shifted.get(q.Z,F(0))+sum(max(F(0),co) for ex,co in shifted.items() if ex!=q.Z)
def geometric_terminal(k,terminal,cell=None):
 kind,*args=terminal
 if kind=='plucker':
  pivot,other=args;B,C,D,E=other
  pairs=[((pivot,B,C),(pivot,D,E),1),((pivot,B,D),(pivot,C,E),-1),((pivot,B,E),(pivot,C,D),1)]
  signs=[co*get(k,t)*get(k,u) for t,u,co in pairs]
  assert all(signs) and len(set(signs))==1
 elif kind=='regionline':
  poly,pair=args;I,J=pair;assert poly in [HULL,*REG] and convex(k,poly)
  old=[get(k,(i,I,J)) for i in poly];counts=[2] if any(ins(k,poly,t) for t in pair) else [0,2]
  words=[w for w in product((-1,1),repeat=len(poly)) if sum(w[i]!=w[(i+1)%len(poly)] for i in range(len(poly))) in counts and all(not xx or xx==yy for xx,yy in zip(old,w))]
  assert not words
 elif kind=='cap':
  poly,pair=args;assert poly in CAPS and len(set(pair))==2 and all(ins(k,poly,pt) for pt in pair)
 elif kind=='lowerpaired':
  ears,pt=args;assert ears==[[0,1,2],[0,1,7]] and pt==6
  assert all(ins(k,ear,pt) for ear in ears) and 12*s>1
 elif kind=='cluster':
  outer,pivot,fan,rest=args
  assert get(k,outer)>0 and pivot not in outer and set([pivot,*rest])==set(FREE)
  assert all(ins(k,outer,t) for t in FREE)
  assert fan[-1]==pivot and tuple(fan[:2]) in list(zip(outer,outer[1:]+outer[:1]))
  assert all(ins(k,fan,t) for t in rest)
 elif kind=='smallquad':
  poly,occ=args
  assert convex(k,poly) and set(occ)==set(FREE) and all(ins(k,poly,t) for t in occ)
  assert any(set(poly)<=set(reg) for reg in [REG[0],REG[1],[0,1,4,5]])
 elif kind=='box_triangle':
  which,poly,occ,cost,bound=args
  if cell is not None:assert which==cell
  assert get(k,poly)>0 and all(ins(k,poly,point) for point in occ)
  cost=F(cost);assert cost=={1:3*s,2:K*s,3:J*s}[len(occ)]
  low,high=strong_box(which);actual=shifted_polynomial_upper(q.det(*poly),low,high)
  assert actual==F(bound)<cost
 elif kind=='inconsistent':
  tri,sn,why=args;assert get(k,tri)==-sn and why is not None
  old=k.copy();key,_=q.canonical(tuple(tri));del old[key]
  assert step(old,[why,''.join(L[i] for i in tri),sn]) and get(old,tri)==sn
 else:raise AssertionError(('unknown terminal',terminal))

