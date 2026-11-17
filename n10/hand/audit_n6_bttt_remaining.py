"""Independent Fraction audit of the literal normalized BTTT ---+ proof.

Reads only Markdown, using a fresh parser and arithmetic implementation.
No discovery implementation or companion JavaScript reader is imported.
Run: python3 n10/hand/audit_n6_bttt_remaining.py
The additional flag --central-ear audits the separate +--+ HBP<0 proof.
The flag --central-positive audits the +--+, HBP>0, AFP>0 subcase.
The flag --central-negative audits the remaining AFP<0 subcase; add
--mutations to run twelve independent negative probes after its replay.
"""
from pathlib import Path
from fractions import Fraction as F
from itertools import combinations,permutations,product
import re,json,sys
ARGS=sys.argv[1:];MUTATIONS='--mutations' in ARGS
if MUTATIONS:ARGS.remove('--mutations')
assert ARGS in ([], ['--central-ear'], ['--central-positive'], ['--central-negative']) and (not MUTATIONS or ARGS==['--central-negative']), 'Unsupported audit mode'
CENTRAL_EAR=ARGS==['--central-ear'];CENTRAL_POSITIVE=ARGS==['--central-positive'];CENTRAL_NEGATIVE=ARGS==['--central-negative'];FEEDBACK=CENTRAL_POSITIVE or CENTRAL_NEGATIVE;CENTRAL=CENTRAL_EAR or FEEDBACK
ROOT=Path(__file__).resolve().parent/('N6_BTTT_REMAINING_CENTRAL_NEGATIVE_TABLES' if CENTRAL_NEGATIVE else 'N6_BTTT_REMAINING_CENTRAL_EAR_TABLES' if CENTRAL_EAR else 'N6_BTTT_REMAINING_CENTRAL_POSITIVE_TABLES' if CENTRAL_POSITIVE else 'N6_BTTT_REMAINING_TABLES');L='ABCEFHPQRS';V='a b c e f h p q u v r w j k'.split();s=F(93,1000);alpha=F(1037,10000);K=F(149,20);J=F(4427,500);G=F(1457,250)
TOP_COST=G if CENTRAL else K
CONTACT_CEILING=F(33,125) if CENTRAL else F(21,125)
EMPTY=['ABC','ABE','ACE','BCE']+([] if CENTRAL else ['ABF','ABH','AFH','BFH'])
COST=[s,3*s,K*s,J*s]
def rows(text,title):
 m=re.search(r'^#{2,3} '+re.escape(title)+r'\n',text,re.M)
 if not m:return []
 tail=text[m.end():];tail=re.split(r'^#{1,3} ',tail,maxsplit=1,flags=re.M)[0]
 lines=[l for l in tail.splitlines() if l.startswith('|')]
 return [[x.strip().strip('`') for x in l.strip().split('|')[1:-1]] for l in lines[2:]]
def blocks(text,kind):
 a=list(re.finditer(r'^## '+kind+r' (\d+)\n',text,re.M));return [(int(m[1]),text[m.end():a[i+1].start() if i+1<len(a) else len(text)]) for i,m in enumerate(a)]
def props(t):
 z=t.split('\n### ')[0];rr=[l for l in z.splitlines() if l.startswith('|')];return dict([x.strip().strip('`') for x in l.strip().split('|')[1:-1]] for l in rr[2:])
def key(w):return ''.join(sorted(w,key=L.index))
def sign(k,w):
 if len(set(w))<3:return 0
 n=sum(L.index(w[i])>L.index(w[j]) for i in range(3) for j in range(i+1,3));return k.get(key(w),0)*(-1)**n

def inside(kn,h,p):return p not in h and sign(kn,h[:3])!=0 and all(sign(kn,h[i]+h[(i+1)%len(h)]+p)==sign(kn,h[:3]) for i in range(len(h)))
def occ(kn,h):return [x for x in L if inside(kn,h,x)]
def convex(kn,h):return len(set(h))==len(h) and all(sign(kn,''.join(c))==1 for c in combinations(h,3))
def listv(x):return [] if x=='none' else x.split(', ')
def down(x):return F(x.numerator*10**6//x.denominator,10**6)
def up(x):return -down(-x)
def polyadd(*pp):
 out={}
 for p in pp:
  for mon,c in p.items():out[mon]=out.get(mon,F(0))+c
 return {m:c for m,c in out.items() if c}
def scale(p,x):return {m:c*x for m,c in p.items() if c*x}
def const(x):return {():F(x)} if F(x) else {}
def var(i):return {(i,):F(1)}
def mul(a,b):
 out={}
 for m,c in a.items():
  for n,d in b.items():
   mon=tuple(sorted(m+n));out[mon]=out.get(mon,F(0))+c*d
 return {m:c for m,c in out.items() if c}
def sub(a,b):return polyadd(a,scale(b,-1))
vv=list(map(var,range(14)));zero={};one=const(1)
points={'A':(zero,vv[0]),'B':(vv[1],zero),'C':(vv[2],zero),'E':(one,vv[3]),'F':(vv[4],one),'H':(zero,vv[5]),'P':(vv[6],vv[7]),'Q':(vv[8],vv[9]),'R':(vv[10],vv[11]),'S':(vv[12],vv[13])}
def det(w):
 a,b,c=[points[x] for x in w];return sub(mul(sub(b[0],a[0]),sub(c[1],a[1])),mul(sub(b[1],a[1]),sub(c[0],a[0])))
def parsepoly(x):
 if x=='0/1':return {}
 out={}
 for tr in x.split(' + '):
  ts=tr.split(' * ');c=F(ts[0]);mon=tuple(sorted(V.index(v) for v in ts[1:]));assert mon not in out;out[mon]=c
 return {m:c for m,c in out.items() if c}
def ev(p,x):return sum(c*__import__('functools').reduce(lambda a,i:a*x[i],m,F(1)) for m,c in p.items())
def maxpoly(p,lo,hi):
 inds=sorted(set(sum((list(m) for m in p),[])));at=list(lo);best=None
 for bs in product([0,1],repeat=len(inds)):
  for i,b in zip(inds,bs):at[i]=hi[i] if b else lo[i]
  q=ev(p,at);best=q if best is None else max(q,best)
 return best
def area_coefficients(text):
 if text in ('0','0/1'):return {}
 out={}
 for term in text.split(' + '):
  value,triangle=term.split(' * ');assert triangle not in out and F(value)!=0;out[triangle]=F(value)
 return out
def normalized_relation(relation):
 kind,eqn,wit=relation
 if kind=='fan':
  outer,parts=eqn.split(' = ');return {'kind':'fan','outer':outer,'parts':parts.split(' + ')}
 if kind=='quad':
  parts,floor=eqn.split(' >= ');return {'kind':'quad','parts':parts.split(' + '),'floor':floor}
 if kind=='plu':
  iso,parts=eqn.split(' = ');return {'kind':'plu','iso':iso.split(' * '),'rhs':[p.split(' * ') for p in parts.split(' + ')]}
 if kind=='support':
  mm=re.fullmatch(r'([A-Z]{3}) \* ([A-Z]{3}) >= ([^ ]+) \* \(([A-Z]{3}) - ([A-Z]{3})\)',eqn);X,Y,c,XX,Z=mm.groups();assert X==XX
  return {'kind':'support','X':X,'Y':Y,'Z':Z,'constant':c}
 if kind=='bary':
  mm=re.fullmatch(r'outer ([A-Z]{3}); fans (.*); target (none|[A-Z]{3}); sign (-?1|0); vertices (.*)',eqn);outer,fans,target,sg0,verts=mm.groups()
  return {'kind':'bary','outer':outer,'fans':listv(fans),'target':None if target=='none' else target,'targetSign':int(sg0),'vertices':[{'name':None if a=='none' else a,'sign':int(b)} for a,b in (v.split() for v in verts.split('; '))]}
 raise AssertionError(kind)
ctx={};context_given={};geometry_n=0
for ci,t in blocks((ROOT/'contexts.md').read_text(),'Context'):
 kn={}
 def put(w,sg):
  k=key(w);e=sign({k:1},w)*sg;assert k not in kn or kn[k]==e;kn[k]=e
 for w in combinations('ABCEFH',3):put(''.join(w),1)
 for p in 'PQRS':
  for i,a in enumerate('ABCEFH'):
   edge=a+'ABCEFH'[(i+1)%6];put(edge+p,-1 if p!='P' and edge=='EF' else 1)
  put('HC'+p,-1 if p=='P' else 1)
  if p!='P':
   for edge,sg in [('HE',1),('CF',-1),('HP',1),('CP',-1)]:put(edge+p,sg)
 for w,sg in [('EQR',1),('EQS',1),('ERS',1),('FQR',1 if CENTRAL else -1),('FQS',-1),('FRS',-1),('QRS',1)]:put(w,sg)
 for i,w,sg,rule,wit in rows(t,'Geometric deductions'):
  sg=1 if sg=='+' else -1;assert sign(kn,w)==0
  if rule=='branch':assert w+('+' if sg==1 else '-') in listv(props(t)['Given actual signs'])
  elif rule=='fixed-top-cross':assert (w[0]=='E' and sg==-1 or w[0]=='F' and sg==1) and w[1]=='P' and w[2] in 'QRS'
  elif rule=='plu':
   a,b,c,d,e=wit;ss=[(a+b+c,a+d+e,1),(a+b+d,a+c+e,-1),(a+b+e,a+c+d,1)];vals=[co*sign(kn,x)*sign(kn,y) for x,y,co in ss];nz=[v for v in vals if v];assert len(nz)==2 and nz[0]==nz[1]
   x,y,co=ss[vals.index(0)];known=sign(kn,x) or sign(kn,y);tr=y if sign(kn,x) else x;assert sign({key(w):sg*sign({key(w):1},w)},tr)==-nz[0]*co*known
  elif rule in ['empty','via']:
   mm=re.fullmatch(r'hull ([A-Z]+); point ([A-Z])(?:; line ([A-Z]{2}))?',wit);h,p,line=mm.groups()
   if rule=='empty':
    assert h in EMPTY;tests=[h[j]+h[(j+1)%len(h)]+p for j in range(len(h))];assert sum(sign(kn,x)==1 for x in tests)==2;tr=next(x for x in tests if not sign(kn,x));assert key(tr)==key(w) and sg*sign({key(w):1},w)==-sign({key(tr):1},tr)
   else:
    assert h=='ABCEFH' and p=='P' or h=='HABC' and p=='P' or inside(kn,h,p)
    ss=[sign(kn,line+x) for x in h if x not in line];assert ss and 0 not in ss and len(set(ss))==1;assert sign({key(w):sg*sign({key(w):1},w)},line+p)==ss[0]
  elif rule=='mesh':
   mm=re.fullmatch(r'hull ([A-Z]+); points (.*)',wit);h,ps=mm.groups();ps=listv(ps);assert all(inside(kn,h,p) for p in ps)
   opts=[]
   for perm in permutations(ps):
    mp=dict(zip('ABCXYZ',h+''.join(perm)));cand={}
    for z in 'ABZ BCX CAY AZY BXZ CYX ZXY AZX BXY CYZ AXY BYZ CZX'.split():
     tr=''.join(mp[a] for a in z);cand[key(tr)]=sign({key(tr):1},tr)
    if all(k not in kn or kn[k]==v for k,v in cand.items()):opts.append(cand)
   assert opts and all(o[key(w)]==sg*sign({key(w):1},w) for o in opts)
  else:raise Exception(rule)
  put(w,sg)
  geometry_n+=1
 assert kn=={w:1 if sg=='+' else -1 for w,sg in rows(t,'Final actual signs')};ctx[ci]=kn;context_given[ci]=set(listv(props(t)['Given actual signs']))
print('independent geometry contexts/deductions',len(ctx),geometry_n,flush=True)
stages={};allbounds={};bary_updates=0;updates=0;coordinate=0;relations_n=0;physical_n=0;affine_n=0;affine_factors=0;affine_weights=0;affine_terminals=0;affine_samples={};stageboxes={};terminal_stages=set()
def mark_terminal(sid):
 assert sid not in terminal_stages
 terminal_stages.add(sid)
for filename in (sorted(p.name for p in ROOT.glob('stages_*.md')) if CENTRAL_NEGATIVE else ['stages_00.md'] if CENTRAL_EAR else ['stages_00.md','stages_01.md','stages_02.md']):
 for sid,t in blocks((ROOT/filename).read_text(),'Stage'):
  pp=props(t);kn=ctx[int(pp['Context'])];scope=pp['Scope'];assert sid not in stages;stages[sid]=(scope,t,kn)
  # Independently reconstruct printed physical factors and all endpoint interval updates.
  if pp['Box present']=='yes':
   box=rows(t,'Coordinate box');lo=[F(r[1]) for r in box];hi=[F(r[2]) for r in box]
   top=TOP_COST*s;cap=1-top/(1-alpha);delta=s/(1-alpha);ear=sign(kn,'ACP')<0 or sign(kn,'HBP')<0;rho=(K if ear else G)*s
   exlo=[alpha,alpha,rho,alpha,alpha,rho,delta,delta]+[alpha+s]*6;exhi=[min(cap,CONTACT_CEILING),cap,F(1),min(cap,CONTACT_CEILING),cap,F(1),1-s,1-s]+[F(1)]*6
   exlo[2]=max(exlo[2],alpha+s/exhi[0]);exlo[5]=max(exlo[5],alpha+s/exhi[1])
   if sign(kn,'ACP')==1 and sign(kn,'HBP')==1:exlo[6]=exlo[7]=s*(1+alpha)/(1-alpha)
   exhi[6]=1-s-exlo[7];exhi[7]=1-s-exlo[6]
   for pt in 'QRS':
    oo=[p for p in 'QRS' if p!=pt and inside(kn,'E'+pt+'F',p)];i=6+2*'PQRS'.index(pt);exlo[i]=exlo[i+1]=alpha+COST[len(oo)]/(1-alpha)
    for p in oo:j=6+2*'PQRS'.index(p);exhi[j]=min(exhi[j],1-delta);exhi[j+1]=min(exhi[j+1],1-delta)
   if pp['Parent box']!='none':
    parent=int(pp['Parent box']);assert FEEDBACK and parent<sid and parent in stageboxes and (scope==stages[parent][0] or scope.startswith(stages[parent][0]+'/'));plo,phi=stageboxes[parent];exlo=[max(a,b) for a,b in zip(exlo,plo)];exhi=[min(a,b) for a,b in zip(exhi,phi)]
   assert lo==exlo and hi==exhi
   polys={}
   for fi,name,prem,printed in rows(t,'Physical factors'):
    mm=re.fullmatch(r'actual ([A-Z]{3}); occupants (.*)',prem)
    if mm:
     tr,ii=mm.groups();assert sorted(listv(ii))==sorted(occ(kn,tr));expected=polyadd(scale(det(tr),sign(kn,tr)),const(-COST[len(listv(ii))]))
    elif prem.startswith('contact order '):
     aa,bb={'ha':(5,0),'ea':(3,0),'he':(5,3),'fb':(4,1),'cf':(2,4),'sym':(4,3)}[prem[14:]];expected=sub(vv[aa],vv[bb])
    elif prem.startswith('endpoint floor '):assert F(prem[15:])==rho;expected=polyadd(mul(vv[5],vv[2]),const(-rho))
    elif prem.startswith('earlier '):
     ref,tr,d,v=prem[8:].split('; ');br=allbounds[ref];assert (tr,d,F(v))==br[:3];assert br[3]<sid and (scope==br[4] or scope.startswith(br[4]+'/'));expected=polyadd(scale(det(tr),sign(kn,tr)*(1 if d=='lo' else -1)),const(-F(v) if d=='lo' else F(v)))
    elif prem.startswith('top hull '):
     if CENTRAL:assert convex(kn,'EQRF') and inside(kn,'EQRF','S')
     else:assert inside(kn,'EFQ','R') and inside(kn,'EFQ','S')
     expected=polyadd(mul(sub(one,vv[3]),sub(one,vv[4])),const(-TOP_COST*s))
    elif prem=='central lower x':
     assert FEEDBACK and sign(kn,'ACP')==1 and sign(kn,'HBP')==1 and sign(kn,'CHP')==1
     base=mul(mul(vv[5],sub(vv[2],vv[1])),vv[6]);assert base==polyadd(mul(vv[2],det('HBP')),mul(vv[1],det('CHP')));expected=polyadd(base,scale(polyadd(vv[2],vv[1]),-s))
    elif prem.startswith('anchor cap '):
     assert CENTRAL_NEGATIVE;mm=re.fullmatch(r'anchor cap ([A-Z]{3}) in ([A-Z]{3}); index (\d+); occupants (.*)',prem);tr,h0,index,pts=mm.groups();pts=listv(pts)
     assert h0=='ABF' and index=='0' and tr==h0 and pts and all(inside(kn,tr,p) for p in pts)
     assert sub(vv[4],det('ABF'))==mul(sub(vv[4],vv[1]),sub(one,vv[0]))
     expected=polyadd(vv[4],const(-COST[len(pts)]))
    elif prem.startswith('weighted '):
     mm=re.fullmatch(r'weighted ([QRS]) ([QRS]); costs (.*); M ([^;]+); axis ([0-3])',prem);outer,inner,cc,m0,axis=mm.groups();assert inside(kn,'EF'+outer,inner);costs=[F(a) for a in listv(cc)];assert costs==[COST[len(occ(kn,w))]/s for w in ['F'+outer+inner,'E'+outer+inner,'EF'+inner]]
     M=(1-alpha)**2/s;assert F(m0)==M and sum(costs)<=M;ce,cf,cu=costs;oi=6+2*'PQRS'.index(outer);ii=6+2*'PQRS'.index(inner)
     terms=[polyadd(scale(vv[ii],M),const(-ce),scale(vv[4],-(M-ce-cu)),scale(vv[oi],-cu)),polyadd(const(M-cf-cu),scale(vv[4],cf),scale(vv[oi],cu),scale(vv[ii],-M)),polyadd(scale(vv[ii+1],M),const(-cf),scale(vv[3],-(M-cf-cu)),scale(vv[oi+1],-cu)),polyadd(const(M-ce-cu),scale(vv[3],ce),scale(vv[oi+1],cu),scale(vv[ii+1],-M))];expected=terms[int(axis)]
    else:raise Exception(prem)
    assert parsepoly(printed)==expected,(sid,fi,name);polys[fi]=expected;physical_n+=1
   def lines(poly,idx):
    inds=sorted(set(sum((list(m) for m in poly),[]))-{idx});at=lo.copy();out=set()
    for bs in product([0,1],repeat=len(inds)):
     for j,b in zip(inds,bs):at[j]=hi[j] if b else lo[j]
     a=b=F(0)
     for mon,c in poly.items():
      cc=c
      for j in mon:
       if j!=idx:cc*=at[j]
      if idx in mon:a+=cc
      else:b+=cc
     out.add((a,b))
    return out
   def p_lines(st):return set((F(a),F(b)) for a,b in re.findall(r'\(([^,]+), ([^)]+)\)',st))
   for step,fi,target,ol,oh,rl,rh,nl,nh,ls in rows(t,'Exact coordinate updates'):
    i=V.index(target);assert (F(ol),F(oh))==(lo[i],hi[i]);ll=lines(polys[fi],i);assert ll==p_lines(ls);possible=[]
    for a,b in ll:
     l,h=lo[i],hi[i]
     if a>0:l=max(l,-b/a)
     elif a<0:h=min(h,-b/a)
     elif b<0:continue
     if l<=h:possible.append((l,h))
    raw=(min(a for a,b in possible),max(b for a,b in possible));assert raw==(F(rl),F(rh));assert (F(nl),F(nh))==(max(lo[i],down(raw[0])),min(hi[i],up(raw[1])));lo[i],hi[i]=F(nl),F(nh);coordinate+=1
   assert lo==[F(r[3]) for r in box] and hi==[F(r[4]) for r in box];stageboxes[sid]=(lo,hi)
   for fi,target,ol,oh,ls in rows(t,'Interval contradiction'):
    mark_terminal(sid)
    i=V.index(target);assert (F(ol),F(oh))==(lo[i],hi[i]);ll=lines(polys[fi],i);assert ll==p_lines(ls)
    terminal_max=max(max(a*lo[i]+b,a*hi[i]+b) for a,b in ll);assert terminal_max<0
    if CENTRAL:print('fresh central terminal maximum',sid,terminal_max,flush=True)
  records={}
  for rid,tr,d,vs,source in rows(t,'Initial area bounds'):
   v=F(vs)
   if source.startswith('occupants '):ii=listv(source[10:]);assert d=='lo' and sorted(ii)==sorted(occ(kn,tr)) and v==COST[len(ii)]
   elif source.startswith('vertex maximum '):lo,hi=stageboxes[sid];assert d=='hi' and v==F(source[15:])==min(F(1),maxpoly(scale(det(tr),sign(kn,tr)),lo,hi))
   elif source=='unit square':assert d=='hi' and v==1
   elif source.startswith('earlier '):
    ref,tt,dd,vv0=source[8:].split('; ');br=allbounds[ref];assert (tr,d,v)==(tt,dd,F(vv0))==br[:3] and br[3]<sid and (scope==br[4] or scope.startswith(br[4]+'/'))
   elif source.startswith('anchor cap '):
    assert CENTRAL_NEGATIVE and d=='hi';mm=re.fullmatch(r'anchor cap ([A-Z]{3}); expression (.*)',source);h0,expression=mm.groups()
    expected={'ABF':({'f':1},4,mul(sub(vv[4],vv[1]),sub(one,vv[0]))),'BFH':({'f':1},4,mul(sub(vv[4],vv[1]),sub(one,vv[5]))),'ACE':({'e':1},3,mul(sub(vv[3],vv[0]),sub(one,vv[2])))}[h0]
    expr,index,remainder=expected;assert json.loads(expression)==expr and sub(vv[index],det(h0))==remainder and all(p in h0 or inside(kn,h0,p) for p in tr);assert v==stageboxes[sid][1][index]
   else:raise Exception(source)
   records[rid]=(tr,d,v);allbounds[rid]=(tr,d,v,sid,scope)
  relations={}
  for ri,kind,eqn,wit in rows(t,'Scalar relations'):
   relations[ri]=(kind,eqn,wit);relations_n+=1
   if kind=='fan':
    outer,parts=eqn.split(' = ');parts=parts.split(' + ');assert wit.startswith('point ');p=wit[6:];assert inside(kn,outer,p);assert sorted(parts)==sorted(key(outer[i]+outer[(i+1)%3]+p) for i in range(3))
   elif kind=='plu':
    assert wit.startswith('circuit ');a,b,c,d,e=wit[8:];cs=[(a+b+c,a+d+e,1),(a+b+d,a+c+e,-1),(a+b+e,a+c+d,1)];ss=[co*sign(kn,x)*sign(kn,y) for x,y,co in cs];assert 0 not in ss and len(set(ss))==2;odd=next(i for i,x in enumerate(ss) if ss.count(x)==1);left,right=eqn.split(' = ');assert sorted(left.split(' * '))==sorted(map(key,cs[odd][:2]));assert sorted(sorted(z.split(' * ')) for z in right.split(' + '))==sorted(sorted(map(key,cs[i][:2])) for i in range(3) if i!=odd)
   elif kind=='quad':
    mm=re.fullmatch(r'quadrilateral ([A-Z]{4}); occupants (.*)',wit);h,ii=mm.groups();ii=listv(ii);assert convex(kn,h) and ii and len(set(ii))==len(ii) and all(inside(kn,h,p) for p in ii);parts,floor=eqn.split(' >= ');assert sorted(parts.split(' + '))==sorted([key(h[:3]),key(h[0]+h[2]+h[3])]);assert F(floor)==[None,F(24,5)*s,8*s,F(93,91),(J+3)*s,(J+K)*s,2*J*s][len(ii)]
   elif kind=='support':
    mm=re.fullmatch(r'([A-Z]{3}) \* ([A-Z]{3}) >= ([^ ]+) \* \(([A-Z]{3}) - ([A-Z]{3})\)',eqn);X,Y,ks,XX,Z=mm.groups();assert X==XX
    if wit.startswith('pentagon '):
     h=wit[9:];a,b,c,d,e=h;expected=list(map(key,[a+b+e,a+d+e,a+b+d]));rate=F(11)
    else:
     mm=re.fullmatch(r'quadrilateral ([A-Z]{4}); occupants (.*); rate ([^ ]+)',wit);h,ii,rate0=mm.groups();a,b,c,d=h;ii=listv(ii);assert 1<=len(ii)<=2 and len(set(ii))==len(ii) and all(inside(kn,h,p) for p in ii);nn=tuple(sorted([sum(inside(kn,a+c+d,p) for p in ii),sum(inside(kn,b+c+d,p) for p in ii)]));rates=({(0,0):F(29,5),(0,1):F(149,20),(1,1):F(12)} if len(ii)==1 else {(0,0):F(1142,125),(0,1):F(1142,125),(0,2):F(139,10),(1,1):F(12),(1,2):F(199,10),(2,2):F(149,5)});rate=rates[nn]
     if len(ii)==2 and all(inside(kn,a+b+c,p) and inside(kn,a+b+d,p) for p in ii):rate=max(rate,F(299,31))
     if CENTRAL_NEGATIVE:assert F(rate0)>0 and F(rate0)<=max(rate,G if len(ii)==1 else rate);rate=F(rate0)
     else:assert F(rate0)==rate
     expected=list(map(key,[a+b+d,a+b+c,a+c+d]))
    assert convex(kn,h) and [X,Y,Z]==expected and F(ks)==rate*s
   elif kind=='four':
    assert CENTRAL_NEGATIVE and wit.startswith('vertices ');a,b,c,d=wit[9:];assert len(set((a,b,c,d)))==4
    expected={key(w):co*sign(kn,w) for w,co in [(a+b+c,1),(a+c+d,1),(a+b+d,-1),(b+c+d,-1)]};assert all(expected.values())
    assert eqn.endswith(' = 0') and area_coefficients(eqn[:-4])==expected
    assert not polyadd(det(a+b+c),det(a+c+d),scale(det(a+b+d),-1),scale(det(b+c+d),-1))
   if kind=='bary':
    mm=re.fullmatch(r'outer ([A-Z]{3}); fans (.*); target (none|[A-Z]{3}); sign (-?1|0); vertices (.*)',eqn);outer,ff,target,sg0,verts=mm.groups();fans=listv(ff);mm=re.fullmatch(r'container ([A-Z]{3}); inner ([A-Z]); line ([A-Z]{2})',wit);h,inner,line=mm.groups();assert inside(kn,h,inner)
    assert outer==key(h) and fans==[key(h[1]+h[2]+inner),key(h[0]+h[2]+inner),key(h[0]+h[1]+inner)]
    assert target==('none' if inner in line else key(line+inner)) and int(sg0)==(0 if inner in line else sign(kn,line+inner));vs0=[a.split() for a in verts.split('; ')];assert vs0==[[('none' if a in line else key(line+a)),str(0 if a in line else sign(kn,line+a))] for a in h];assert all(int(v)!=0 for a,v in vs0 if a!='none')
  def bary(relation,refs,which):
   kind,eqn,wit=relation;mm=re.fullmatch(r'outer ([A-Z]{3}); fans (.*); target (none|[A-Z]{3}); sign (-?1|0); vertices (.*)',eqn);outer,ff,target,sg0,vs0=mm.groups();fans=listv(ff);verts=[(a,int(b)) for a,b in (v.split() for v in vs0.split('; '))]
   expected=[(outer,'hi')]+[(f,'lo') for f in fans]+[(a,which if sign>0 else ('hi' if which=='lo' else 'lo')) for a,sign in verts if a!='none'];assert [(a,b) for a,b,v in refs]==expected
   N=refs[0][2];bs=[r[2] for r in refs[1:4]];assert N>0 and all(b>0 for b in bs) and sum(bs)<=N
   vals=[];i=4
   for a,sign in verts:
    if a=='none':vals.append(F(0))
    else:vals.append(sign*refs[i][2]);i+=1
   return (sum(b*x for b,x in zip(bs,vals))+(N-sum(bs))*(min(vals) if which=='lo' else max(vals)))/N,int(sg0),target
  for rid,tr,d,value,raw,ri,refs0 in rows(t,'Exact area updates'):
   refs=[records[x] for x in listv(refs0)];assert all(int(x.split(':')[0])==sid and int(x.split(':')[1])<int(rid.split(':')[1]) for x in listv(refs0));vals=[a[2] for a in refs];kind,eqn,wit=relations[ri]
   if kind=='bary':
    sg0=int(re.search(r'; sign (-?1|0);',eqn)[1]);which=d if sg0>0 else ('hi' if d=='lo' else 'lo');q,sg0,target=bary(relations[ri],refs,which);assert target==tr;q*=sg0;bary_updates+=1
   elif kind=='fan':
    outer,fs=eqn.split(' = ');parts=fs.split(' + ')
    if tr==outer:assert [(a,b) for a,b,v in refs]==[(p,d) for p in parts];q=sum(vals)
    else:other=parts.copy();other.remove(tr);assert [(a,b) for a,b,v in refs]==[(outer,d)]+[(p,'hi' if d=='lo' else 'lo') for p in other];q=vals[0]-sum(vals[1:])
   elif kind=='quad':
    fs,floor=eqn.split(' >= ');parts=fs.split(' + ');other=next(p for p in parts if p!=tr);assert d=='lo' and [(a,b) for a,b,v in refs]==[(other,'hi')];q=F(floor)-vals[0]
   elif kind=='support':
    mm=re.fullmatch(r'([A-Z]{3}) \* ([A-Z]{3}) >= ([^ ]+) \* \(([A-Z]{3}) - ([A-Z]{3})\)',eqn);X,Y,k,XX,Z=mm.groups();assert X==XX;k=F(k)
    if tr==Y:assert d=='lo' and [(a,b) for a,b,v in refs]==[(Z,'hi'),(X,'lo')];q=k*(1-vals[0]/vals[1])
    elif tr==Z:assert d=='lo' and [(a,b) for a,b,v in refs]==[(X,'lo'),(Y,'hi')];assert vals[0]>0;q=vals[0]*(1-vals[1]/k)
    else:assert tr==X and d=='hi' and vals[1]<k and [(a,b) for a,b,v in refs]==[(Z,'hi'),(Y,'hi')];q=k*vals[0]/(k-vals[1])
   elif kind=='plu':
    iso,fs=eqn.split(' = ');iso=iso.split(' * ');ps=[p.split(' * ') for p in fs.split(' + ')]
    if tr in iso:
     other=next(p for p in iso if p!=tr);assert [(a,b) for a,b,v in refs]==[(p,d) for p in sum(ps,[])]+[(other,'hi' if d=='lo' else 'lo')];assert vals[4]>0;q=(vals[0]*vals[1]+vals[2]*vals[3])/vals[4]
    else:
     pi=next(i for i,p in enumerate(ps) if tr in p);other=next(p for p in ps[pi] if p!=tr);assert [(a,b) for a,b,v in refs]==[(p,d) for p in iso]+[(p,'hi' if d=='lo' else 'lo') for p in ps[1-pi]]+[(other,'hi' if d=='lo' else 'lo')];assert vals[4]>0;q=(vals[0]*vals[1]-vals[2]*vals[3])/vals[4]
     if d=='hi':q=max(F(0),q)
   elif kind=='four':
    co=area_coefficients(eqn[:-4]);assert tr in co and co[tr]!=0;others=[a for a in co if a!=tr]
    expected={a:('hi' if co[a]*co[tr]>0 else 'lo') if d=='lo' else ('lo' if co[a]*co[tr]>0 else 'hi') for a in others}
    assert len(refs)==len(others) and {a:b for a,b,v in refs}==expected
    q=-sum(co[a]*v for a,b,v in refs)/co[tr]
   else:raise Exception(kind)
   assert q==F(raw),(sid,rid);rounded=down(q) if d=='lo' else up(q);assert rounded==F(value);records[rid]=(tr,d,rounded);allbounds[rid]=(tr,d,rounded,sid,scope);updates+=1
  if CENTRAL_NEGATIVE:
   from n6_affine_bounds_independent import audit_certificate
   certificates={r[0]:{'factors':[],'weights':[],'box':{},'metadata':r} for r in rows(t,'Affine certificates')}
   for cid,fi,origin,c0,co in rows(t,'Exact affine factors'):
    certificates[cid]['factors'].append({'index':int(fi),'origin':json.loads(origin),'constant':c0,'coefficients':area_coefficients(co)})
   for cid,fi,weight in rows(t,'Positive affine weights'):certificates[cid]['weights'].append((int(fi),int(weight)))
   for cid,c0,co in rows(t,'Weighted affine sums'):
    assert 'sum' not in certificates[cid];certificates[cid]['sum']={'constant':c0,'coefficients':area_coefficients(co)}
   for cid,tr,lr,lv,ur,uv in rows(t,'Affine ceiling sources'):
    assert tr not in certificates[cid]['box'];certificates[cid]['box'][tr]={'lo':{'triangle':tr,'side':'lo','ref':lr,'value':lv},'hi':{'triangle':tr,'side':'hi','ref':ur,'value':uv}}
   for cid,cert in certificates.items():
    _,output,target,direction,raw,value,upper=cert.pop('metadata')
    if output=='none':
     assert target==direction==raw==value=='none';cert['upper']=upper;limit=None
    else:
     assert upper=='none' and int(output.split(':')[0])==sid and output not in allbounds;limit=int(output.split(':')[1]);assert all(int(ref.split(':')[1])<limit for ref in records)
     cert.update(target=target,direction=direction,raw=raw,value=value)
    def endpoint(obj):
     reference=obj['ref'];br=allbounds[reference];assert br[:3]==(obj['triangle'],obj['side'],F(obj['value']))
     ss,rr=map(int,reference.split(':'));assert ss==br[3] and ss<=sid and (scope==br[4] or scope.startswith(br[4]+'/')) and (ss<sid or limit is None or rr<limit)
     return br[2]
    result,stats=audit_certificate(cert,lambda ri:normalized_relation(relations[str(ri)]),endpoint,lambda word:sign(kn,word),key)
    affine_factors+=stats['factors'];affine_weights+=stats['weights']
    affine_samples.setdefault('terminal' if output=='none' else 'bound',(cert,kn,sid,scope,dict(relations),limit))
    if any(f['origin']['kind']=='bary_affine' for f in cert['factors']):affine_samples.setdefault('bary',(cert,kn,sid,scope,dict(relations),limit))
    if output=='none':mark_terminal(sid);affine_terminals+=1;print('fresh affine terminal',sid,result,flush=True)
    else:records[output]=(target,direction,result);allbounds[output]=(target,direction,result,sid,scope);affine_n+=1
  for ri,lr,ur,pl,pu in rows(t,'Zero barycentric contradiction'):
   mark_terminal(sid)
   low,_,target=bary(relations[ri],[records[x] for x in listv(lr)],'lo');high,_,_=bary(relations[ri],[records[x] for x in listv(ur)],'hi');assert target=='none' and low==F(pl) and high==F(pu) and (low>0 or high<0);print('fresh zero determinant interval',low,high,flush=True)
  for tr,lr,ur,pl,pu in rows(t,'Area contradiction'):
   mark_terminal(sid)
   assert records[lr]==(tr,'lo',F(pl)) and records[ur]==(tr,'hi',F(pu)) and F(pl)>F(pu)
  for h,ps in rows(t,'Distributed-mesh contradiction'):
   mark_terminal(sid)
   ps=listv(ps);assert len(ps)==3 and len(set(ps))==3 and all(inside(kn,h,p) for p in ps)
   for perm in permutations(ps):
    mp=dict(zip('ABCXYZ',h+''.join(perm)));assert any(sign(kn,''.join(mp[a] for a in w))==-1 for w in 'ABZ BCX CAY AZY BXZ CYX ZXY AZX BXY CYZ AXY BYZ CZX'.split())
print('independent exact physical/interval/scalar pass',{'physical_factors':physical_n,'coordinate':coordinate,'scalar':updates,'barycentric_updates':bary_updates,'relations':relations_n,'bounds':len(allbounds)},flush=True)
# Independent tree reachability and exact binary coverage.
idx=(ROOT/'INDEX.md').read_text();tree={r[0]:r for r in rows(idx,'Actual-sign case tree')};seen=set();leaves=[];assigned=set();forces=rows(idx,'Capacity-forced signs')
def visit(node,allowed=frozenset(),depth=0,parent=None):
 assert node not in seen;seen.add(node);r=tree[node];assert int(r[1])==depth and set(listv(r[2]))==set(allowed);sp=r[4];children=listv(r[5]);available=set(allowed)
 for st in map(int,listv(r[3])):
  assert st not in assigned;assigned.add(st);scope,text,kn=stages[st];assert scope==node and context_given[int(props(text)['Context'])]<=available
  expected_parent=parent if FEEDBACK else None;assert props(text)['Parent box']==('none' if expected_parent is None else str(expected_parent));parent=st
  for n,stage,token,h,ii,p,ref,upper,nextcost in forces:
   if n!=node or int(stage)!=st:continue
   ii=listv(ii);br=allbounds[ref];assert br[:4]==(key(h),'hi',F(upper),st);assert len(set(ii))==len(ii) and all(inside(kn,h,x) for x in ii) and p not in h and p not in ii;assert F(nextcost)==COST[len(ii)+1]>F(upper);sg=sign(kn,h);tests=[h[i]+h[(i+1)%3]+p for i in range(3)];assert sum(sign(kn,tr)==sg for tr in tests)==2;missing=next(tr for tr in tests if sign(kn,tr)!=sg);assert sign(kn,missing)==0 and key(missing)==key(token[:3]);assert sign({key(token[:3]):(1 if token[-1]=='+' else -1)*sign({key(token[:3]):1},token[:3])},missing)==-sg;available.add(token)
 if sp=='none':assert not children and r[6]!='none';leaves.append(int(r[6]));return
 assert len(set(sp))==3 and set(sp)<=set(L) and children==[node+'/'+sp+'-',node+'/'+sp+'+']
 for c,sg in zip(children,['-','+']):visit(c,available|{sp+sg},depth+1,parent)
root_given=frozenset({'BHP-','AFP-'}) if CENTRAL_NEGATIVE else frozenset({'BHP+'}) if CENTRAL_EAR else frozenset({'BHP-','AFP+'}) if CENTRAL_POSITIVE else frozenset()
visit('root',root_given);assert len(seen)==len(tree)==(131 if CENTRAL_NEGATIVE else 1 if CENTRAL_EAR else 11 if CENTRAL_POSITIVE else 27) and len(leaves)==(66 if CENTRAL_NEGATIVE else 1 if CENTRAL_EAR else 6 if CENTRAL_POSITIVE else 14) and assigned==set(stages);metadata=dict(rows(idx,'Hypotheses and format'));assert sorted(leaves)==sorted(map(int,listv(metadata['Terminal stage order'])))==sorted(terminal_stages);assert metadata['Top word']==('+--+' if CENTRAL else '---+') and metadata['Normalized e <= f']=='yes' and F(metadata['Threshold'])==s
totals=dict(rows(idx,'Exact totals'))
for name,value in {'contexts':len(ctx),'signNodes':len(tree),'signSplits':len(tree)-len(leaves),'signLeaves':len(leaves),'coordinateSplits':0,'terminals':len(terminal_stages),'stages':len(stages),'boxStages':len(stageboxes),'intervalSteps':coordinate,'physicalFactors':physical_n,'areaBounds':len(allbounds),'areaUpdates':updates,'scalarRelations':relations_n,'linearFactors':affine_factors,'linearWeights':affine_weights,'linearTerminals':affine_terminals,**({'affineBounds':affine_n} if CENTRAL_NEGATIVE else {})}.items():assert int(totals[name])==value
print('independent binary coverage',len(tree),len(leaves),sorted(leaves))

if MUTATIONS:
 from copy import deepcopy
 from n6_affine_bounds_independent import audit_certificate
 rejected=[]
 def probe(name,change,which='bound'):
  original,kn0,sid0,scope0,rels0,limit0=affine_samples[which];certificate=deepcopy(original);change(certificate)
  def endpoint0(obj):
   br=allbounds[obj['ref']];assert br[:3]==(obj['triangle'],obj['side'],F(obj['value']))
   ss,rr=map(int,obj['ref'].split(':'));assert ss==br[3] and ss<=sid0 and (scope0==br[4] or scope0.startswith(br[4]+'/')) and (ss<sid0 or limit0 is None or rr<limit0)
   return br[2]
  try:audit_certificate(certificate,lambda ri:normalized_relation(rels0[str(ri)]),endpoint0,lambda w:sign(kn0,w),key)
  except (AssertionError,KeyError,ValueError,IndexError):rejected.append(name);return
  raise AssertionError('corruption accepted: '+name)
 probe('zero affine weight',lambda c:c['weights'].__setitem__(0,(c['weights'][0][0],0)))
 probe('changed target quotient',lambda c:c.__setitem__('raw',str(F(c['raw'])+1)))
 probe('changed weighted constant',lambda c:c['sum'].__setitem__('constant',str(F(c['sum']['constant'])+1)))
 probe('changed physical coefficient',lambda c:c['factors'][0].__setitem__('constant',str(F(c['factors'][0]['constant'])+1)))
 probe('wrong product envelope',lambda c:next(f for f in c['factors'] if f['origin']['kind']=='product_linear_envelope')['origin']['products'][0].__setitem__('choice',1-next(f for f in c['factors'] if f['origin']['kind']=='product_linear_envelope')['origin']['products'][0]['choice']))
 probe('wrong four-point direction',lambda c:next(f for f in c['factors'] if f['origin']['kind']=='four_point')['origin'].__setitem__('direction',-next(f for f in c['factors'] if f['origin']['kind']=='four_point')['origin']['direction']))
 def reverse_fans(c):
  sources=next(f for f in c['factors'] if f['origin']['kind']=='bary_affine')['origin']['sources'];sources[1],sources[2]=sources[2],sources[1]
 probe('changed barycentric fan order',reverse_fans,'bary')
 probe('omitted ceiling endpoint',lambda c:c['box'].pop(next(iter(c['box']))))
 def future_bound(c):
  obj=next(f for f in c['factors'] if f['origin']['kind']=='bound')['origin']['bound']
  rid,br=next((rid,br) for rid,br in allbounds.items() if br[3]>affine_samples['bound'][2] and br[:2]==(obj['triangle'],obj['side']))
  obj.update(ref=rid,value=str(br[2]))
 probe('future area premise',future_bound)
 def sibling_bound(c):
  obj=next(f for f in c['factors'] if f['origin']['kind']=='bound')['origin']['bound'];scope0=affine_samples['bound'][3]
  rid,br=next((rid,br) for rid,br in allbounds.items() if br[3]<affine_samples['bound'][2] and br[:2]==(obj['triangle'],obj['side']) and not(scope0==br[4] or scope0.startswith(br[4]+'/')))
  obj.update(ref=rid,value=str(br[2]))
 probe('sibling area premise',sibling_bound)
 probe('changed terminal ceiling',lambda c:c.__setitem__('upper','-1'),'terminal')
 oldtree=tree;tree=dict(tree);leaf=next(n for n,r in tree.items() if r[4]=='none');del tree[leaf];seen=set();assigned=set();leaves=[]
 try:visit('root',root_given)
 except (AssertionError,KeyError):rejected.append('omitted binary leaf')
 else:raise AssertionError('omitted binary leaf accepted')
 tree=oldtree
 print('Rejected',len(rejected),'independent corruptions:',', '.join(rejected))
