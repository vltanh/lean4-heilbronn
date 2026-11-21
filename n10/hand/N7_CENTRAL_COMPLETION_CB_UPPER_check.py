"""Exact source-complete reader for the literal central CB CE/EF exclusion tables.

Reads only the printed hand tables and established hand arithmetic modules.
No discovery engine or optimization code is imported.
"""
from pathlib import Path
from fractions import Fraction as F
from itertools import combinations,product,permutations
from collections import Counter
import sys,json,re
HERE=Path(__file__).resolve().parent
sys.path.insert(0,str(HERE))
import N7_CENTRAL_COMPLETION_E_ONLY_check as E
import n7_one_lower_rules as G
import n7_one_lower_polynomials as Q
import scalar_area_intervals as SAI
C=E.C;c,v,add,sub,sc,mul,det,poly,key,parity=E.c,E.v,E.add,E.sub,E.sc,E.mul,E.det,E.poly,E.key,E.parity
S,T,J=E.S,E.T,E.J;COUNTS=E.COUNTS
[a,b,cc,d,e,f,g,h,z,x,y,u,ve]=map(v,range(13));one=c(1)
TEMPLATE=G.MESH_TEMPLATE
assert det('AFH')==mul(f,sub(h,a))
assert all(F(883,1000)*(1-aa)<J for aa in(F(139,1000),F(122,1000)))
AA,BB,FF=F(137,200),F(535,907),F(883,1000)
assert det('ABF')==add(mul(b,sub(one,a)),mul(a,f))
assert not sub(sub(c(BB*(1-AA)+AA*FF),det('ABF')),add(mul(sub(c(AA),a),sub(f,b)),sc(sub(c(FF),f),AA),sc(sub(c(BB),b),1-AA)))
assert BB*(1-AA)+AA*FF==F(143425697,181400000)<J
assert not sub(add(det('ABE'),det('AEF')),sub(one,mul(sub(f,b),sub(e,a))))
assert F(93,91)>1
for pt in'OP':assert not sub(mul(sc(det('HOP'),-1),det('CF'+pt)),add(mul(det('FH'+pt),det('COP')),mul(det('HC'+pt),det('FOP'))))

def rootbox(cell):
 ell=F(7347,69700);h0=4*S/(1-ell)
 lo=['139/1000','108/1000','541/1000','120/1000',h0,'108/1000','118/1000','613/1000','139/1000','108/1000','120/1000','108/1000','120/1000'] if cell=='CA' else ['122/1000','123/1000','541/1000','122/1000',h0,'123/1000','123/1000','613/1000','134/1000',ell,'122/1000',ell,'122/1000']
 hi=['685/1000',F(535,907),'883/1000','705/1000','907/1000','883/1000','685/1000','1',('773/1000'if cell=='CA'else'775/1000'),'883/1000','907/1000','883/1000','907/1000']
 return list(map(F,lo)),list(map(F,hi))

class Geometry(E.Geometry):
 def __init__(self,packet,stage,earlier):
  self.packet=packet;self.earlier=earlier;self.k={}
  for tr in combinations('ABCDEFH',3):self.put(''.join(tr),1)
  for pt,region in(('G','HABC'),('O','HCEF'),('P','HCEF')):
   for hull in('ABCDEFH',region):
    for i,q in enumerate(hull):self.put(q+hull[(i+1)%len(hull)]+pt,1)
  for tr,sn in(('HOP',-1),('EHP',1),('ACG',1),('BGH',1),('DGO',-1)):self.put(tr,sn)
  assert packet['word']in('C','CE','EF','CEF')
  for q in 'CEF':self.put(q+'OP',1 if q in packet['word']else-1)
  assert all(token in packet['given']for token in stage.get('assumptions',packet['given']))
  for token in stage.get('assumptions',packet['given']):self.put(token[:3],1 if token[-1]=='+'else-1)
  for row in stage['trace']:self.step(row)
  assert all(self.k.get(t)==sn for t,sn in stage['known'].items())
 def cap(self,source,p,row):
  assert self.sg(p)>0
  if source[0]in('HCF2-AEF-cap1','HCF2-BEF-cap1'):
   assert all(self.inside('HCF',pt)for pt in'OP')
   assert p==('AEF'if source[0]=='HCF2-AEF-cap1'else'BEF');return 1
  if source[0]=='central-AEF-cap2':assert p=='AEF';return 2
  if source[0]=='central-AFH-cap2':assert p=='AFH';return 2
  if source[0]=='central-box-ABF-cap2':assert p=='ABF';return 2
  if source[0]=='HCE2-AEF-cap2':
   assert p=='AEF'and all(self.inside('HCE',pt)for pt in'OP');return 2
  if source[0].startswith('CEF2-'):assert all(self.inside('CEF',pt)for pt in'OP')
  return super().cap(source,p,row)
 def indexed(self,omit=None):return {tuple(Q.wi(t)):sn for t,sn in self.k.items()if t!=omit}
 def step(self,row):
  why=row['rule'];typ=why[0];target=row['target'];sn=row['sign']
  assert sn in(-1,1)and key(target)==target
  if typ=='quad-cap':
   _,p,occupants,pt,source=why
   assert p=='ABEF'and source==['central-ABEF-cap2']and all(self.sg(''.join(t))>0 for t in combinations(p,3))
   assert len(occupants)==len(set(occupants))==2 and all(q in'GOP'and self.inside(p,q)for q in occupants)
   assert pt in'GOP'and pt not in occupants
   tests=[p[i]+p[(i+1)%4]+pt for i in range(4)]
   assert sum(key(q)==target for q in tests)==1 and all(self.sg(q)>0 for q in tests if key(q)!=target)
   tr=next(q for q in tests if key(q)==target);assert sn*parity(tr)==-1
  elif typ in('via','hullvia','line','chord','mesh'):
   if typ in('via','hullvia'):
    _,pt,p,line=why;I,B=line;rule=[typ,Q.wi(pt)[0],Q.wi(p),Q.wi(I)[0],Q.wi(B)[0]]
   elif typ=='line':_,p,pair,vertex=why;rule=[typ,Q.wi(p),Q.wi(pair),Q.wi(vertex)[0]]
   elif typ=='chord':_,p,pair,chord,pt=why;rule=['chord_from',Q.wi(p),Q.wi(pair),Q.wi(chord)]
   else:_,out,pts=why;rule=[typ,Q.wi(out),Q.wi(pts)]
   known=self.indexed(target);G.step(known,(rule,target,sn));assert G.sg(known,target)==sn
  elif typ=='six':
   _,out,W,line=why;A,B,D=out;I,B0=line
   terms=[(out,I+B0+W,1),(W+B+D,I+B0+A,-1),(A+W+D,I+B0+B,-1),(A+B+W,I+B0+D,-1)]
   vals=[co*self.sg(X,target)*self.sg(Y,target)for X,Y,co in terms];assert vals.count(0)==1
   nz=[q for q in vals if q];assert len(set(nz))==1
   X,Y,co=terms[vals.index(0)];tr=X if key(X)==target else Y;other=self.sg(Y)if key(X)==target else self.sg(X)
   assert key(tr)==target and sn*parity(tr)==-nz[0]*co*other
   assert not add(*(sc(mul(det(X),det(Y)),co)for X,Y,co in terms))
  elif typ=='central-area':
   _,pt=why;assert pt in'OP'and target in(key('AG'+pt),key('DG'+pt))
   tr='DG'+pt if target==key('AG'+pt)else'AG'+pt
   assert self.sg(tr)>0 and sn*parity(target)==-1
  else:
   if typ.startswith('CEF2-'):assert all(self.inside('CEF',pt)for pt in'OP')
   if typ=='CEF2-E-only-AE-transfer':assert self.sg('AEG')<0 and self.sg('COP')<0 and self.sg('EOP')>0
   elif typ.startswith('CEF2-E-only'):assert self.packet['word']=='E'
   super().step(row);return
  self.put(target,sn);COUNTS['sign_deductions']+=1

def natural_caps():
 return {'ABC':(a,mul(a,add(one,b,sc(cc,-1)))),
 'ABH':(b,mul(b,add(one,a,sc(h,-1)))),
 'ACH':(sub(h,a),mul(sub(h,a),sub(one,cc))),
 'BCH':(sub(cc,b),mul(sub(cc,b),sub(one,h))),
 'ABE':(e,mul(sub(e,a),sub(one,b))),
 'ABF':(f,mul(sub(f,b),sub(one,a))),
 'ACE':(e,mul(sub(e,a),sub(one,cc))),
 'ACF':(cc,mul(a,sub(cc,f))),
 'BCF':(sub(cc,b),{}),'BCD':(d,mul(d,add(one,b,sc(cc,-1)))),
 'CDE':(sub(one,cc),mul(sub(one,cc),add(one,d,sc(e,-1)))),
 'CDH':(h,mul(cc,sub(h,d))),
 'DEF':(sub(one,f),mul(sub(one,f),add(one,d,sc(e,-1)))),
 'CEH':(h,mul(cc,sub(h,e))),
 'CFH':(cc,mul(h,sub(cc,f))),
 'CEF':(sub(one,f),mul(sub(one,e),sub(cc,f))),
 'EFH':(sub(one,e),mul(sub(h,e),sub(one,f))),
 'AEF':(sub(one,a),mul(f,sub(e,a))),
 'BEF':(sub(one,b),mul(e,sub(f,b))),
 'CDF':(sub(one,f),mul(sub(cc,f),sub(one,d))),
 'BEH':(h,mul(b,sub(h,e))),
 'AFH':(f,mul(f,add(one,a,sc(h,-1)))),
 'BFH':(f,mul(sub(one,h),sub(f,b))),
 'ADH':(sub(h,a),{}),'AEH':(sub(h,a),{}),
 'BDE':(sub(e,d),mul(b,sub(e,d))),'DEH':(sub(e,d),{})}
CAPS=natural_caps()
for tr,(cap,rem)in CAPS.items():assert sub(cap,det(tr))==rem,tr

class Stage(E.Stage):
 def __init__(self,packet,p,earlier):
  self.packet=packet;self.cell=packet['cell'];self.p={**p,'relations':{int(k):r for k,r in p['relations'].items()}}
  self.low=list(map(F,p['initial_box']['low']));self.high=list(map(F,p['initial_box']['high']))
  geom=Geometry(packet,p,earlier);self.signs=p['known']
  L,H=(rootbox(self.cell)if not earlier else(tuple(earlier[-1].finalbox[0]),tuple(earlier[-1].finalbox[1])));L=list(L);H=list(H)
  if all(self.inside('HCF',pt)for pt in'OP'):L[2]=max(L[2],T);L[5]=max(L[5],F(617,1000))
  if all(self.inside('HCE',pt)for pt in'OP'):L[7]=max(L[7],T)
  if all(self.inside('CEF',pt)for pt in'OP'):L[4]=max(L[4],F(57,100));H[1]=min(H[1],F(279,1000));H[5]=min(H[5],F(279,1000))
  assert(self.low,self.high)==(L,H),(packet['id'],p['id'],'box ancestry')
  self.bounds={}
  for name,r in p['initial'].items():self.initial(name,r);self.bounds[name]=SAI._bound(r)
  for ri,r in self.p['relations'].items():self.relation(ri,r)
  for row in p['updates']:self.update(row);COUNTS['scalar_updates']+=1
  for name,r in p['physical'].items():self.factor(name,r);COUNTS['physical_factors']+=1
  self.finalbox=(self.low.copy(),self.high.copy())
  if'coordinate'in p:self.coordinate(p['coordinate'])
 def initial(self,name,r):
  if r['witness']['kind']!='cap':return super().initial(name,r)
  t,side,n,w=r['triangle'],r['side'],F(r['value']),r['witness'];cap=w['cap'];assert side=='hi'and self.sg(cap)>0
  tab={'ABC':F(403,1000),'ABH':F(403,1000),'BCD':F(357,1000),'CDE':F(357,1000),'BCE':T,'DEF':T,'ADG':F(131,200),'BDG':F(6913,10000),'CDG':F(32697,50000),'EFH':1-4*S/(1-F(7347,69700))}
  tab['AEF']=F(814603,1000000)if self.cell=='CA'else F(164637,200000)
  tab['ABF']=F(143425697,181400000);tab['AFH']=F(760263,1000000)if self.cell=='CA'else F(387637,500000)
  if all(self.inside('HCF',pt)for pt in'OP'):
   tab.update(AEF=F(153747149,223000000)if self.cell=='CA'else F(303248649,438500000),BEF=F(151579,223000)if self.cell=='CA'else F(585361,877000))
  if all(self.inside('HCE',pt)for pt in'OP'):
   capvalue=F(814603,1000000)if self.cell=='CA'else F(164637,200000);tab['AEF']=min(tab.get('AEF',F(1)),capvalue)
  if all(self.inside('CEF',pt)for pt in'OP'):
   tab.update(ABE=F(167879,245720),ABF=F(279,1000),EFG=T,AEF=F(203613,250000)if self.cell=='CA'else F(51431,62500))
  assert key(cap)in tab and n==F(w['value'])==tab[key(cap)]
  assert all(q in cap or self.inside(cap,q)for q in t);COUNTS['initial_bounds']+=1
 def relation(self,rid,r):
  w=r['witness'];kind=w['kind']
  if kind=='bary_sign'and 'source_value'in w['outer_upper']:
   out,pt,line=w['outer'],w['point'],w['line'];assert self.sg(out)>0 and pt in'GOP'and self.inside(out,pt)
   up=w['outer_upper'];source=self.boundref(up['ref'],'hi',key(out));N0=F(up['value'])
   assert source==F(up['source_value'])<=N0
   floors=w['fan_lower'];assert len(floors)==3;ls=[]
   for i,b0 in enumerate(floors):
    tr=key(out[(i+1)%3]+out[(i+2)%3]+pt);assert b0['triangle']==tr
    lo=self.boundref(b0['ref'],'lo',tr);assert lo==F(b0['value']);ls.append(lo)
   residual=N0-sum(ls);assert residual==F(w['residual'])and residual>=0 and w['side']in('upper','lower')
   upper=w['side']=='upper';co={}
   for i,q in enumerate(out):
    if q in line:continue
    tr=line+q;sn=self.sg(tr);use=(upper and sn>0)or(not upper and sn<0)
    co[key(tr)]=co.get(key(tr),F())+(sn if upper else-sn)*(ls[i]+(residual if use else 0))
   if pt not in line:co[key(line+pt)]=co.get(key(line+pt),F())+(-self.sg(line+pt)if upper else self.sg(line+pt))*N0
   co={t:n for t,n in co.items()if n};row=r['row']
   assert row[0]=='linear'and F(row[2])==0 and{t:F(n)for t,n in row[1].items()}==co;COUNTS['relations']+=1;COUNTS['barycentric_weakenings']+=1;return
  if not kind.startswith('distributed_mesh_'):return super().relation(rid,r)
  out=w['outer'];order=w['order'];assert self.sg(out)>0 and sorted(order)==sorted('GOP')and all(self.inside(out,pt)for pt in order)
  mp=dict(zip('ABCXYZ',list(out)+list(order)));word=lambda t:''.join(mp[q]for q in t)
  assert all(self.sg(word(t))>0 for t in TEMPLATE)
  co={};rhs=None
  if kind=='distributed_mesh_cap':
   tr=w['triangle'];assert tr in[word(t)for t in('ABZ','ACX','BCY')];co={key(out):F(1),key(tr):F(-1)};rhs=F(3927,500)*S
  elif kind=='distributed_mesh_face_sum':co={key(word(t)):F(1)for t in('BYZ','AZX','CYX')};rhs=F(2427,500)*S
  else:assert kind=='distributed_mesh_inner_cap';co={key(word('YZX')):F(-1)};rhs=-F(8,5)*S
  row=r['row'];assert row[0]=='linear'and{t:F(n)for t,n in row[1].items()}==co and F(row[2])==rhs;COUNTS['relations']+=1
 def factor(self,name,r):
  w=r['why'];typ=w['kind'];p=poly(r['terms'])
  if typ=='unsigned_clearance':
   tr=w['triangle'];assert len(tr)==3 and len(set(tr))==3 and all(q in E.LABELS for q in tr);assert p==sub(mul(det(tr),det(tr)),c(S*S))
  elif typ=='central_endpoint_exact':
   assert w['cell']==self.cell and name=='Central_endpoint_exact'
   expected=sub(mul(cc,a,sub(h,a)),sc(add(h,a),S))if self.cell=='CA'else sub(mul(h,b,sub(cc,b)),sc(add(cc,b),S));assert p==expected
  elif typ=='natural_contact_support':
   _,X,Y,Z,k=self.p['relations'][w['relation']]['row'];paired,target=w['paired'],w['target']
   assert(paired,target)in((X,Y),(Y,X))and paired in CAPS and self.sg(paired)>0
   tag=w['scheme']['tag'];rate=F(w['scheme']['rate']);constant=F(w['scheme']['constant'])
   if tag=='SUPPORT':assert constant==0 and rate==F(k)
   else:
    assert tag=='QAREA';rr=self.p['relations'][w['relation']]['witness'];assert rr['kind']=='quad_support';qp=rr['poly'];V=key(qp[1:]);assert self.convex(qp)
    floors=[];assert len(w['floor_sources'])==4
    for tr,bb in zip((X,Y,Z,V),w['floor_sources']):
     nn=self.boundref(bb['ref'],'lo',tr);assert bb['triangle']==tr and nn==F(bb['value']);floors.append(nn)
    occ=[pt for pt in'GOP'if self.inside(qp,pt)];xx,yy,zz,vv=floors
    assert rate==max((F(0),F(449,1000),8*S,F(93,91))[len(occ)],yy+zz,xx+vv)
    assert constant==min(xx*yy,zz*vv)
    assert not sub(sub(mul(self.ar(X),self.ar(Y)),mul(self.ar(Z),self.ar(V))),mul(sub(self.ar(X),self.ar(Z)),add(self.ar(Y),self.ar(Z))))
   cap=CAPS[paired][0];raw=add(mul(cap,self.ar(target)),sc(sub(self.ar(X),self.ar(Z)),-rate),c(-constant));assert poly(w['raw'])==raw
   assert{k:list(map(F,vals))for k,vals in w['box'].items()}=={'low':self.low,'high':self.high}
   expected={}
   for mon,n in raw.items():
    dup=next((i for i in mon if mon.count(i)>1),None)
    if dup is None or not w['relax']:expected=add(expected,{mon:n});continue
    assert mon.count(dup)==2;rest=list(mon);rest.remove(dup);rest.remove(dup);assert len(set(rest))==len(rest)
    lo,hi=self.low[dup],self.high[dup];tt=(lo+hi)/2
    upper=add(sc(v(dup),lo+hi),c(-lo*hi))if n>0 else add(sc(v(dup),2*tt),c(-tt*tt))
    expected=add(expected,mul({tuple(rest):n},upper))
   assert p==expected
  elif typ=='central_secant':
   i={'h':7,'c':2}[w['variable']];lo,hi=self.low[i],self.high[i];assert(lo,hi)==(F(w['low']),F(w['high']))
   ww=add(sc(mul(h,cc),3),sc(mul(a,cc),-1),sc(mul(b,h),-1),sc(mul(a,b),-1));sec=add(sc(v(i),lo+hi),c(-lo*hi))
   expected=add(mul(sec,sub(cc,b)),sc(mul(h,a,sub(cc,b)),-1),sc(ww,-S))if i==7 else add(mul(sec,sub(h,a)),sc(mul(cc,b,sub(h,a)),-1),sc(ww,-S))
   assert p==expected
  else:return super().factor(name,r)

def polynomial_terminal(stage,cert):
    total={};used=set()
    for row in cert['factors']:
        w=row['weight'];assert type(w)is int and w>0;term=c(w)
        for name in row['atoms']:
            if re.fullmatch('L[0-9]+',name):
                j=int(name[1:]);i=j//2;assert 0<=i<13
                atom=add(c(stage.high[i]),sc(v(i),-1)) if j%2 else add(v(i),c(-stage.low[i]))
            else:assert name in stage.p['physical'];used.add(name);atom=poly(stage.p['physical'][name]['terms'])
            term=mul(term,atom)
        assert max(map(len,term),default=0)<=4;total=add(total,term);COUNTS['polynomial_products']+=1
    assert used==set(stage.p['physical']);translated=stage.translated(total)
    literal={tuple(map(int,k.split(','))) if k else ():F(n) for k,n in cert['sum'].items()}
    assert translated==literal
    upper=translated.get((),F())+sum(n for m,n in translated.items() if m and n>0)
    assert upper==F(cert['upper'])<0;return upper

def verify(packet,stages=None):
 if stages is None:
  stages=[]
  for p in packet['stages']:stages.append(Stage(packet,p,stages))
 end=packet['terminal']
 if end['kind']=='geometry':
  terminal=end['geometry'];geom=Geometry(packet,terminal,stages);q=terminal['contradiction']
  if q['kind']=='quad-capacity':
   p=q['poly'];pts=q['occupants']
   assert p=='ABEF'and q['source']==['central-ABEF-cap2']and q['capacity']==2
   assert all(geom.sg(''.join(t))>0 for t in combinations(p,3))and len(pts)==len(set(pts))==3
   assert all(pt in'GOP'and geom.inside(p,pt)for pt in pts);COUNTS['quad_capacity_terminals']+=1;return None
  if q['kind']=='capacity':
   n=geom.cap(q['source'],q['poly'],q);pts=q['occupants'];assert n==q['capacity']and len(pts)>n and len(set(pts))==len(pts)and all(pt in'GOP'and geom.inside(q['poly'],pt)for pt in pts);COUNTS['capacity_terminals']+=1;return None
  assert q['kind']=='nomesh'
  assert not G.mesh_patterns(geom.indexed(),Q.wi(q['outer']),Q.wi(q['points']))
  table=terminal['mesh_table'];assert len(table)==6 and {r['order']for r in table}=={''.join(order)for order in permutations(q['points'])}
  for row in table:
   mp=dict(zip('ABCXYZ',list(q['outer'])+list(row['order'])));words=[''.join(mp[a]for a in t)for t in TEMPLATE]
   assert row['opposite']in words and geom.sg(row['opposite'])<0
  COUNTS['mesh_failures']+=6;return None
 st=stages[end['stage']]
 if end['kind']=='polynomial':return polynomial_terminal(st,end['sum'])
 if end['kind']=='area_linear':return E.linear_terminal(st,end['sum'])
 if end['kind']=='scalar':
  q=end['contradiction'];lo=st.bounds[q['lower']];hi=st.bounds[q['upper']];assert(lo['triangle'],lo['side'],hi['triangle'],hi['side'])==(q['triangle'],'lo',q['triangle'],'hi')and lo['value']>hi['value'];return hi['value']-lo['value']
 assert end['kind']=='box'and st.p['coordinate']['contradiction']==end['contradiction'];return None

def verify_shared(j):
 assert j['schema']=='n7-central-shared-1'and j['cell']=='CB'and j['words']==['CE','EF']and j['roots']==['other_CB_CE','other_CB_EF']
 leaves={p['id']:p for p in j['leaves']};assert len(leaves)==len(j['leaves'])==84;splits=j['splits'];assert len(splits)==82;visited=set();paths={}
 assert j['unique_stage_count']==484 and Counter(p['terminal']['kind']for p in leaves.values())=={'polynomial':52,'scalar':24,'box':7,'geometry':1}
 q=next(p['terminal']['geometry']['contradiction']for p in leaves.values()if p['terminal']['kind']=='geometry');assert q['kind']=='capacity'and q['poly']=='BCE'and q['source']==['fixed','BCE']
 def walk(name,path,word):
  assert name not in visited;visited.add(name)
  if name in splits:
   assert name not in leaves;r=splits[name];tr=r['triangle'];assert len(tr)==3 and len(set(tr))==3 and all(q in E.LABELS for q in tr)and key(tr)==tr
   kids=r['children'];assert len(kids)==2 and all(type(q)is str for q in kids)and kids[0]!=kids[1]
   assert all(t[:3]!=tr for t in path)
   walk(kids[0],path+[tr+'+'],word);walk(kids[1],path+[tr+'-'],word)
  else:
   assert name in leaves;p=leaves[name];assert p['cell']=='CB'and p['word']==word and p['given']==path;paths[name]=path
 for word in j['words']:walk('other_CB_'+word,[],word)
 assert visited==set(splits)|set(leaves)
 used=set();cache={};done=0
 for name,p in leaves.items():
  earlier=[];prefix=[]
  for i,ref in enumerate(p['stages']):
   assert ref in j['stages'];used.add(ref);s=j['stages'][ref];assert s['id']==i and s['assumptions']==p['given'][:len(s['assumptions'])]
   if ref in cache:
    oldprefix,cell,word,assumptions,obj=cache[ref];assert oldprefix==prefix and(cell,word,assumptions)==(p['cell'],p['word'],s['assumptions'])
   else:
    obj=Stage(p,s,earlier);cache[ref]=(prefix.copy(),p['cell'],p['word'],s['assumptions'].copy(),obj)
   earlier.append(obj);prefix.append(ref)
  packet={**p,'stages':[j['stages'][r]for r in p['stages']]}
  gap=verify(packet,earlier);done+=1;print(name,p['terminal']['kind'],gap,'verified_unique_stages',len(cache),flush=True)
 assert used==set(j['stages'])and len(cache)==j['unique_stage_count']
 print('PASS:',len(leaves),'leaves;',len(splits),'splits;',len(cache),'unique stages;',dict(COUNTS),flush=True)



def read_tables(directory=None):
 directory=HERE/'N7_CENTRAL_COMPLETION_CB_UPPER_TABLES'if directory is None else Path(directory)
 def blocks(path):
  raw=re.findall(r'```json\n(.*?)\n```',path.read_text(),re.S)
  assert raw,path
  return [json.loads(t)for t in raw]
 index=blocks(directory/'INDEX.md');assert len(index)==1;j=index[0]
 assert j['stage_files']==['CB_CE_STAGES.md','CB_EF_STAGES.md'];pool={}
 for filename in j['stage_files']:
  for q in blocks(directory/filename):
   assert set(q)=={'stage_id','record'}and q['stage_id']not in pool
   pool[q['stage_id']]=q['record']
 j['stages']=pool
 return j

def main():
 verify_shared(read_tables())

if __name__=='__main__':main()
