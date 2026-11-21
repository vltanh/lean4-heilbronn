#!/usr/bin/env python3
"""Optional exact transcription check for C1_PENTAGON.md.

Reads the complete printed orientation tree, fixed geometric derivations,
factor definitions and integer sums. Uses Fraction arithmetic only; no
optimizer, external package, discovery file or configuration search.
The geometric theorems are proved in the companion manuscripts.
"""
from collections import defaultdict
from fractions import Fraction as F
from itertools import combinations, permutations
import re
S=F(93,1000)
LABELS='OHCDFYZXPQ'
VARS='h c d f u v z w x a p q l m'.split()
BOX=[(F(823,1000),F(1)),(F(823,1000),F(1)),(S,1-S),(S,1-S),
 (F(365211,1000000),1-4*S),(3*S,F(907,2000)),(S,F(27,100)),
 (3*S,1-4*S),(F(149,500),1-4*S),(S,F(27,100)),(S,F(1)),
 (S,F(1)),(S,F(1)),(S,F(1))]
def C(x):return {():F(x)} if x else {}
def V(i):return {(i,):F(1)}
def add(*ps):
 d=defaultdict(F)
 for p in ps:
  for e,x in p.items():d[e]+=x
 return {e:x for e,x in d.items() if x}
def sc(p,x):return {e:v*x for e,v in p.items() if v*x}
def sub(p,q):return add(p,sc(q,-1))
def mul(p,q):
 d=defaultdict(F)
 for a,v in p.items():
  for b,w in q.items():d[tuple(sorted(a+b))]+=v*w
 return {e:x for e,x in d.items() if x}
def det(a,b,c):return sub(mul(sub(b[0],a[0]),sub(c[1],a[1])),mul(sub(b[1],a[1]),sub(c[0],a[0])))
vv=[V(i) for i in range(14)]
h,c,d,f,u,v,z,w,x,a,p,q,l,m=vv
PT=dict(zip(LABELS,[({},{}),({},h),(c,{}),(C(1),d),(f,C(1)),(u,v),(z,w),(x,a),(p,q),(l,m)]))
def D(word):return det(*(PT[t] for t in word))
def keysg(word,sg=1):
 ids=[LABELS.index(t) for t in word]
 parity=sum(ids[i]>ids[j] for i in range(3) for j in range(i+1,3))
 return ''.join(sorted(word,key=LABELS.index)),sg*(-1)**parity
def get(kn,word):
 if len(set(word))<3:return 0
 k,sg=keysg(word);return kn.get(k,0)*sg
class Conflict(Exception):pass
def put(kn,word,sg):
 k,t=keysg(word,sg)
 if k in kn:
  if kn[k]!=t:raise Conflict((word,sg,kn[k]))
  return False
 kn[k]=t;return True
BASE={}
def init(word,sg):put(BASE,word,sg)
for token in '-OHC -OHD -OHF +OCD +OCF +ODF +HCD +HCF +HDF +CDF -OHY -OHZ -OHX +OCY +OCZ +OCX +OYZ -OYX -OZX -HCY -HCZ -HCX -HYZ -HYX +HZX +CYZ +CYX +CZX +YZX'.split():init(token[1:],1 if token[0]=='+' else -1)
for R in 'YZX':
 for ij,sg in [('HD',-1),('HF',-1),('CD',1),('CF',1),('DF',1)]:init(ij+R,sg)
for R in 'PQ':
 for ij,sg in [('OH',-1),('OC',1),('HC',1),('HF',-1),('CD',1),('DF',1)]:init(ij+R,sg)
for token in '+ODZ -OFX -OFY -HPQ +ZXP +ZXQ'.split():init(token[1:],1 if token[0]=='+' else -1)
for R in 'YZX':
 for T in 'PQ':init('H'+R+T,1);init('C'+R+T,-1)
L=[]
for var,(lo,hi) in zip(vv,BOX):L.extend([sub(var,C(lo)),sub(C(hi),var)])
L.extend([add(x,sc(a,-1),C(-F(41,200))),add(h,c,C(-F(907,500))),sub(h,d),sub(c,f),add(u,sc(z,-1),C(-2*S)),add(v,sc(a,-1),C(-2*S)),sub(u,v),add(u,v,C(-F(3927,500)*S)),sub(h,C(S)),sub(c,C(S))])
assert len(L)==38
G={
 'M1':add(mul(h,sub(c,z)),C(-F(3927,500)*S)),
 'M2':add(mul(c,sub(h,a)),C(-F(3927,500)*S)),
 'M3':add(mul(h,u),mul(c,v),C(-F(3927,500)*S)),
 'M4':add(sc(D('HYZ'),-1),sc(D('OZX'),-1),D('CYX'),C(-F(2427,500)*S)),
 'M5':add(C(F(8,5)*S),sc(D('YZX'),-1)),
 'ED':add(mul(h,h),d,sc(h,-1)), 'EF':add(mul(c,c),f,sc(c,-1)),
 'CAPZXP':add(C(1-2*S-15*S*S),sc(D('ZXP'),-1)),
 'CAPZXQ':add(C(1-2*S-15*S*S),sc(D('ZXQ'),-1)),
 'CAPCDY':add(C(1-4*S+3*S*S),sc(D('CDY'),-1)),
 'CAPHFY':add(C(1-4*S+3*S*S),D('HFY')),
 'CAPDFY':add(C(1-4*S+S*S),sc(D('DFY'),-1)),
}
for R in 'PQ':
 xx,yy=PT[R]
 G['E'+R+'H']=add(yy,mul(mul(h,h),xx),sc(h,-1))
 G['E'+R+'C']=add(xx,mul(mul(c,c),yy),sc(c,-1))
TCOST={0:S,1:3*S,2:F(694,1000),3:F(823,1000)}
QCOST={0:2*S,1:F(449,1000),2:8*S,3:F(93,91),4:F(1102,1000),5:F(1517,1000),6:F(1646,1000)}
def inside(kn,R,hull):
 orient=get(kn,hull[:3])
 return bool(orient) and all(get(kn,A+B+R)==orient for A,B in zip(hull,hull[1:]+hull[:1]))
def convex(kn,hull):
 sigs=[get(kn,''.join(hull[i] for i in tr)) for tr in combinations(range(len(hull)),3)]
 return bool(sigs) and sigs[0]!=0 and len(set(sigs))==1

def area(kn,hull):
 assert convex(kn,hull),('nonconvex',hull)
 sg=get(kn,hull[:3]);out={}
 for i in range(1,len(hull)-1):out=add(out,sc(D(hull[0]+hull[i]+hull[i+1]),sg))
 return out

def implications(kn):
 out=[]
 def have(w,sg):return get(kn,w)==sg
 def emit(w,sg,why):out.append((w,sg,why))
 for R in 'PQ':
  if have('DY'+R,1):emit('HD'+R,-1,'containD')
  if have('OD'+R,-1):emit('HD'+R,-1,'containD')
  if have('FY'+R,-1) or have('OF'+R,1):emit('CF'+R,1,'containF')
  if have('OY'+R,1):
   emit('OX'+R,1,'ray');emit('YZ'+R,-1,'beyond');emit('OD'+R,1,'cluster')
   if have('CF'+R,1):emit('OF'+R,1,'cluster')
  if have('OY'+R,-1):
   emit('OZ'+R,-1,'ray');emit('YX'+R,1,'beyond');emit('OF'+R,-1,'cluster')
   if have('HD'+R,-1):emit('OD'+R,-1,'cluster')
  if all(have('OD'+T,1) for T in 'YZX'):
   if get(kn,'HD'+R):emit('OD'+R,get(kn,'HD'+R),'cutD')
   if get(kn,'OD'+R):emit('HD'+R,get(kn,'OD'+R),'cutD')
  if all(have('OF'+T,-1) for T in 'YZX') and get(kn,'OF'+R):emit('CF'+R,get(kn,'OF'+R),'cutF')
 sig=tuple(get(kn,k) for k in ['CPQ','DPQ','FPQ'])
 forced={(1,-1,-1):('HD',-1),(-1,1,-1):('CF',-1),(-1,-1,1):('HD',1),(1,1,1):('CF',1)}.get(sig)
 if forced:
  ij,sg=forced
  for R in 'PQ':emit(ij+R,sg,'ear')
 if have('OPQ',-1) and have('CPQ',-1):
  for R in 'YZX':emit(R+'PQ',-1,'lower')
 cuts={}
 for R in 'PQ':
  ss=[get(kn,'O'+T+R) for T in 'XYZ']
  for k in range(4):
   if ss==[1]*k+[-1]*(3-k):cuts[R]=k
 inner=(len(cuts)==2 and sorted(cuts.values())==[1,2]) or (have('CPQ',-1) and have('OYP',1) and have('OYQ',-1))
 if inner and get(kn,'OPQ'):
  for R in 'YZX':emit(R+'PQ',get(kn,'OPQ'),'inner')
 return out

REASON={'CDY containment':'containD','HFY or OF containment':'containF','O-ray order':'ray','upper point beyond YX':'beyond','upper point beyond YZ':'beyond','upper ray between X and Y':'beyond','upper ray between Y and Z':'beyond','isolated upper hull vertex':'ear','lower point inside OHC':'lower','three lower points in OHD':'cutD','three lower points in OCF':'cutF','endpoint no-cluster rule':'cluster','inner quadrilateral and ZX capacity':'inner'}
MESH_BASIC={k:v for k,v in BASE.items() if set(k)<=set('OHCYZX')}
def eligible_meshes(kn):
 out=[]
 def have(w,sg):return get(kn,w)==sg
 if have('OPQ',1) and have('OYP',-1) and have('OYQ',1):out.append(('OHPQZY',1))
 if have('OPQ',-1) and have('CPQ',1) and have('OYP',1) and have('OYQ',-1):out.append(('OCPQXY',-1))
 cuts={}
 for R in 'PQ':
  ss=[get(kn,'O'+T+R) for T in 'XYZ']
  for k in range(4):
   if ss==[1]*k+[-1]*(3-k):cuts[R]=k
  if cuts.get(R)==0:out.append(('OH'+R+'YZX',1))
  if cuts.get(R)==3:out.append(('OC'+R+'YXZ',-1))
 if have('CPQ',-1) and cuts.get('P')==3 and cuts.get('Q')==0:out.append(('OPQYZX',1))
 return out

def apply_mesh(kn,word,orient):
 assert (word,orient) in eligible_meshes(kn),('unjustified mesh',word,orient)
 mp=dict(zip('OHCYZX',word))
 for tr,sg in MESH_BASIC.items():put(kn,''.join(mp[t] for t in tr),sg*orient)

def apply_interp(kn,point,hull,chord,sg):
 assert len(hull)==3 and point not in hull and point not in chord
 assert inside(kn,point,hull),('unproved containment',point,hull)
 sides=[get(kn,chord+T) if T not in chord else 0 for T in hull]
 assert all(t in (0,sg) for t in sides) and sg in sides,(point,hull,chord,sg,sides)
 for T in hull:
  assert T in chord or get(kn,chord+T)!=0
 put(kn,chord+point,sg)

def replay_trace(explicit,trace):
 kn=dict(BASE);steps=[];meshes=[]
 for tr,sg in explicit.items():put(kn,tr,sg)
 for rr in trace:
  for it in rr['implications']:
   tr,sg=it['triangle'],it['sign'];why=REASON[it['reason']]
   allowed={(keysg(a,b),r) for a,b,r in implications(kn)}
   assert (keysg(tr,sg),why) in allowed,('unproved implication',tr,sg,why)
   put(kn,tr,sg);steps.append(('imp',tr,sg,why))
  for it in rr['meshes']:
   mp=it['map'];word=''.join(LABELS[mp[str(i)]] for i in [0,1,2,5,6,7]);sg=it['orientation']
   apply_mesh(kn,word,sg)
   if (word,sg) not in meshes:steps.append(('mesh',word,sg));meshes.append((word,sg))
  for it in rr['interpolation']:
   aa=(it['point'],it['container'],it['chord'],it['sign']);apply_interp(kn,*aa);steps.append(('via',)+aa)
 return kn,steps,meshes

def shifted(pp):
 out=defaultdict(F)
 for mon,co in pp.items():
  part={():co}
  for ii in mon:
   nxt=defaultdict(F)
   for mm,vv in part.items():nxt[mm]+=vv*BOX[ii][0];nxt[tuple(sorted(mm+(ii,)))]+=vv
   part=nxt
  for mm,vv in part.items():out[mm]+=vv
 return {mm:vv for mm,vv in out.items() if vv}
def bounds(pp):
 sp=shifted(pp);const=sp.get((),F(0));positive=F(0)
 for mon,co in sp.items():
  if mon and co>0:
   for ii in mon:co*=BOX[ii][1]-BOX[ii][0]
   positive+=co
 return const,positive,const+positive

def mesh_factors(word,orient):
 A,B,Cc,Y,Z,X=word
 ar=sc(D(A+B+Cc),-orient)
 ears=[sc(D(A+B+Z),-orient),sc(D(A+Cc+X),orient),sc(D(B+Cc+Y),-orient)]
 return [add(ar,sc(e,-1),C(-F(3927,500)*S)) for e in ears]+[add(C(F(8,5)*S),sc(D(Y+Z+X),-orient))]

def conditional_ear(kn,code):
 rules={
  'HDF1_dmax':('HDF',1,sub(C(1-3*S),d)),
  'CDF1_fmax':('CDF',1,sub(C(1-3*S),f)),
  'CDF_dmin':('CDF',2,sub(d,C(F(177,250)))),
  'CDF_fmax':('CDF',2,sub(C(F(153,500)),f)),
  'HDF_fmin':('HDF',2,sub(f,C(F(177,250)))),
  'HDF_dmax':('HDF',2,sub(C(F(153,500)),d)),
  'HCD_dmin':('HCD',2,sub(d,C(F(157,250)))),
  'HCF_fmin':('HCF',2,sub(f,C(F(157,250)))),
 }
 hull,ct,poly=rules[code]
 assert sum(inside(kn,R,hull) for R in 'PQ')>=ct,('unproved ear bound',code)
 return poly

def apply_step(kn,meshes,step):
 kind,*args=step
 if kind=='imp':
  tr,sg,why=args;sg=int(sg)
  allowed={(keysg(a,b),r) for a,b,r in implications(kn)}
  assert (keysg(tr,sg),why) in allowed,('unproved implication',step)
  put(kn,tr,sg)
 elif kind=='mesh':
  word,sg=args;sg=int(sg);apply_mesh(kn,word,sg);meshes.add((word,sg))
 elif kind=='via':
  R,hull,chord,sg=args;apply_interp(kn,R,hull,chord,int(sg))
 else:raise AssertionError(('unknown geometric step',step))

def check_exclusion(kn,meshes,step):
 kind,*args=step
 if kind in ['four','cap']:
  hull,pts=args
  assert len(pts)==(4 if kind=='four' else 2)
  assert len(set(pts))==len(pts) and all(R not in hull and inside(kn,R,hull) for R in pts)
  if kind=='cap':assert set(hull) in [set(w) for w in ['ZXP','ZXQ','HFY','DFY','CDY']]
 elif kind=='cluster':
  hull,R,fan,pts=args
  assert len(pts)==2 and R not in pts and R in fan and set(fan)-set(hull)=={R}
  assert all(T not in hull and inside(kn,T,hull) for T in R+pts)
  assert all(T not in fan and inside(kn,T,fan) for T in pts)
 elif kind=='rays':
  word,sg=args;sg=int(sg);a,b,c=word
  assert all(get(kn,tr)==sg for tr in ['O'+a+b,'O'+b+c,'O'+c+a])
 elif kind in ['imp','via']:
  try:apply_step(kn,meshes,step)
  except Conflict:return
  raise AssertionError(('expected contradictory inference',step))
 elif kind=='mesh':
  word,sg,*unused=args
  try:apply_mesh(kn,word,int(sg))
  except Conflict:return
  raise AssertionError(('expected contradictory mesh',step))
 else:raise AssertionError(('unknown exclusion',step))

def local_factor(kn,meshes,kind,args):
 if kind=='ear':return conditional_ear(kn,args[0])
 if kind=='drop':
  var,hull,ct,pts=args;ct=int(ct)
  target={'p':'OHP','q':'OCP','l':'OHQ','m':'OCQ'}
  assert target[var]==hull and 1<=ct<=3 and len(pts)==ct
  assert len(set(pts))==ct and all(R not in hull and inside(kn,R,hull) for R in pts)
  return sub(vv[VARS.index(var)],C(TCOST[ct]))
 if kind in ['triangle','quad']:
  hull,ct,pts=args;ct=int(ct);pts='' if pts=='-' else pts
  assert len(hull)==(3 if kind=='triangle' else 4) and len(set(hull))==len(hull)
  assert len(pts)==ct and len(set(pts))==ct
  assert all(R not in hull and inside(kn,R,hull) for R in pts)
  cost=TCOST[ct] if kind=='triangle' else QCOST[ct]
  return sub(area(kn,hull),C(cost))
 if kind=='spread':
  hull,pair,diagonal,sg,coef=args;sg=int(sg);coef=F(coef)
  assert len(hull)==4 and convex(kn,hull) and len(pair)==2 and pair[0]!=pair[1]
  assert all(R not in hull and inside(kn,R,hull) for R in pair)
  diags=[hull[0]+hull[2],hull[1]+hull[3]]
  assert diagonal in diags
  assert all(get(kn,ij+pair[0])*get(kn,ij+pair[1])==-1 for ij in diags)
  assert coef==(6 if set(hull)==set('HCDF') else F(1457,250))
  diff=sub(D(diagonal[1]+pair),D(diagonal[0]+pair))
  return add(area(kn,hull),C(-coef*S),sc(diff,sg))
 if kind=='mesh':
  word,sg,j=args;sg=int(sg);j=int(j)
  assert (word,sg) in meshes and 0<=j<=3
  return mesh_factors(word,sg)[j]
 raise AssertionError(('unknown factor definition',kind,args))

def factor(name,kn,local):
 if re.fullmatch(r'L\d+',name):return L[int(name[1:])]
 if name in G:return G[name]
 if name in local:return local[name]
 mm=re.fullmatch(r'T([pm])([OHCDFYZXPQ]{3})',name)
 assert mm is not None,('unknown factor',name)
 sg=1 if mm.group(1)=='p' else -1;word=mm.group(2)
 assert get(kn,word)==sg,('unproved area sign',name)
 return add(sc(D(word),sg),C(-S))

# The following parser reads only the manuscript beside this file.
# No optimizer, discovery JSON, coordinate sample, or external package is used.
import ast
from pathlib import Path

def parse_expr(source):
 def rec(node):
  if isinstance(node,ast.Constant):
   assert isinstance(node.value,int)
   return C(node.value)
  if isinstance(node,ast.Name):
   if node.id=='s':return C(S)
   if node.id in VARS:return vv[VARS.index(node.id)]
   if node.id.startswith('D_'):
    assert len(node.id)==5 and all(t in LABELS for t in node.id[2:])
    return D(node.id[2:])
   raise AssertionError(('unknown expression symbol',node.id))
  if isinstance(node,ast.UnaryOp):
   assert isinstance(node.op,(ast.UAdd,ast.USub))
   return sc(rec(node.operand),-1 if isinstance(node.op,ast.USub) else 1)
  assert isinstance(node,ast.BinOp)
  left,right=rec(node.left),rec(node.right)
  if isinstance(node.op,ast.Add):return add(left,right)
  if isinstance(node.op,ast.Sub):return sub(left,right)
  if isinstance(node.op,ast.Mult):return mul(left,right)
  assert isinstance(node.op,ast.Div) and set(right)=={()} and right[()]
  return sc(left,1/right[()])
 return rec(ast.parse(source,mode='eval').body)

def block(text,name):
 found=re.findall(r'```'+re.escape(name)+r'\n(.*?)\n```',text,re.S)
 assert len(found)==1,('missing or duplicate block',name,len(found))
 return found[0]

def main():
 path=Path(__file__).with_name('C1_PENTAGON.md');text=path.read_text()
 rows=[line.split() for line in block(text,'c1-box').splitlines()]
 assert [(r[0],F(r[1]),F(r[2])) for r in rows]==[(name,lo,hi) for name,(lo,hi) in zip(VARS,BOX)]
 affines={name:parse_expr(expr) for name,expr in (line.split(maxsplit=1) for line in block(text,'c1-affines').splitlines())}
 assert affines=={'L'+str(i):L[i] for i in range(28,38)}
 global_factors={name:parse_expr(expr) for name,expr in (line.split(maxsplit=1) for line in block(text,'c1-global-factors').splitlines())}
 assert global_factors==G
 printed_signs={}
 for token in block(text,'c1-global-signs').split():put(printed_signs,token[1:],1 if token[0]=='+' else -1)
 assert printed_signs==BASE
 roots={}
 for line in block(text,'c1-roots').splitlines():
  name,*signs=line.split();assert name not in roots
  roots[name]=dict(zip(['OPQ','CPQ','DPQ','FPQ'],map(int,signs)))
 expected=[]
 for lo in range(4):
  for hi in range(lo,4):
   if lo==hi==0:continue
   expected.append(dict(zip(['OPQ','CPQ','DPQ','FPQ'],[1 if lo<=i<=hi else -1 for i in range(4)])))
 assert roots=={'R'+str(i):aa for i,aa in enumerate(expected,1)}
 branches={}
 for line in block(text,'c1-tree').splitlines():
  name,tri,neg,pos=line.split();assert name not in branches
  assert len(tri)==3 and len(set(tri))==3 and set(tri)<=set(LABELS)
  branches[name]=(tri,neg,pos)
 sections=re.findall(r'### Leaf (R[1-9][mp]*)\n(.*?)(?=\n### Leaf |\n## 7\.)',text,re.S)
 assert len(sections)==42 and len({name for name,_ in sections})==42
 byleaf=dict(sections);assignments={};seen=set()
 def visit(name,assignment):
  assert name not in seen;seen.add(name)
  if name not in branches:
   assert name in byleaf;assignments[name]=assignment;return
  tri,neg,pos=branches[name]
  assert neg!=pos
  for child,sg in [(neg,-1),(pos,1)]:visit(child,dict(assignment,**{tri:sg}))
 for name,aa in roots.items():visit(name,aa)
 assert set(assignments)==set(byleaf) and seen==set(branches)|set(byleaf)
 total=largest=poly_count=geo_count=0;maximum=F(-10)
 for name,body in sections:
  kn=dict(BASE);meshes=set()
  for tri,sg in assignments[name].items():put(kn,tri,sg)
  for line in block(body,'c1-geometry').splitlines():
   if line.strip():apply_step(kn,meshes,line.split())
  if '```c1-exclude\n' in body:
   check_exclusion(kn,meshes,block(body,'c1-exclude').split());geo_count+=1
   assert '```c1-sum\n' not in body
   print(name,'geometric exclusion verified')
   continue
  local={}
  for line in block(body,'c1-factors').splitlines():
   token,kind,*args=line.split()
   assert token=='B'+str(len(local)) and token not in local
   local[token]=local_factor(kn,meshes,kind,args)
  entries=[ee.strip() for ee in re.split(r'[;\n]',block(body,'c1-sum')) if ee.strip()]
  stated=int(re.search(r'There are (\d+) positive integer entries',body).group(1))
  assert stated==len(entries)
  polynomial={};used=set()
  for entry in entries:
   mm=re.fullmatch(r'(\d+) ([A-Za-z0-9_*]+)',entry);assert mm is not None,entry
   coeff=int(mm.group(1));assert 1<=coeff<=8438
   largest=max(largest,coeff);product=C(coeff)
   for token in mm.group(2).split('*'):
    product=mul(product,factor(token,kn,local));used.add(token)
   assert max(map(len,product),default=0)<=3
   polynomial=add(polynomial,product)
  assert set(local)<=used
  upper=bounds(polynomial)[2]
  printed=F(re.search(r'The exact upper bound \(33\) is\s+`([^`]+)`',body).group(1))
  assert upper==printed and upper<F(-1,100),(name,upper,printed)
  total+=len(entries);poly_count+=1;maximum=max(maximum,upper)
  print(name,'entries',len(entries),'exact upper bound',str(upper))
 assert (poly_count,geo_count,total,largest)==(34,8,3317,8438)
 print('PASS: 9 exhaustive roots, 33 binary splits, 34 polynomial leaves, 8 geometric leaves.')
 print('PASS: 3317 positive integer entries; largest coefficient 8438; every upper bound < -1/100.')
 print('Largest exact upper bound:',maximum)

if __name__=='__main__':main()
