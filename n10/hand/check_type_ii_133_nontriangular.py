#!/usr/bin/env python3
"""Exact replay of the printed nontriangular Type-II 133 cell tables.

Run with I, II or III as argument. Standard-library rational arithmetic only;
no solver, floating point arithmetic, search, or discovery data is used.
"""
from fractions import Fraction as F
from collections import defaultdict, Counter
from itertools import combinations, permutations, product
from functools import lru_cache
from math import floor,ceil
from pathlib import Path
import re,sys
S=F(93,1000);K=F(933,125);J=F(4427,500)
LABELS='DEBHFCXYZR';ANCHORS='DEBHFC';HALVES={}
CELL=None;EC=None;BASE_HULLS={}
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
def initial(case=None):
 known={}
 for tri in combinations(ANCHORS,3):put(known,''.join(tri),1)
 for point,hull in BASE_HULLS.items():
  for hh in [ANCHORS,hull]:
   for aa,bb in zip(hh,hh[1:]+hh[:1]):put(known,aa+bb+point,1)
 other={'I':'BHC','II':'BFC','III':'BFC'}[CELL]
 for aa,bb in zip(other,other[1:]+other[:1]):put(known,aa+bb+'R',1)
 for tri in ['DBZ','BCX','CDY','DZY','BXZ','CYX','ZXY','DZX','BXY','CYZ','DXY','BYZ','CZX']:put(known,tri,1)
 for point in 'XYZ':put(known,'B'+point+'R',-1);put(known,'C'+point+'R',1)
 if CELL in ('I','III') and EC>=2 or CELL=='II' and EC==3:
  for pt in 'XYZR':put(known,'EH'+pt,1)
 return known
def inside(known,word,point):
 sg=get(known,word[:3])
 return bool(sg) and all(get(known,aa+bb+point)==sg for aa,bb in zip(word,word[1:]+word[:1]))
def convex(known,word):
 return all(get(known,''.join(word[i] for i in inds))==1 for inds in combinations(range(len(word)),3))
def line_patterns(known,hull,pair):
 old=[get(known,ch+pair) for ch in hull]
 return [ss for ss in product((-1,1),repeat=len(hull))
    if sum(ss[i]!=ss[(i+1)%len(ss)] for i in range(len(ss)))==2
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

def mesh_patterns(known,outer,points):
 A,B,C=outer;patterns=[]
 for X,Y,Z in permutations(points):
  words=[A+B+Z,B+C+X,C+A+Y,A+Z+Y,B+X+Z,C+Y+X,Z+X+Y,A+Z+X,B+X+Y,C+Y+Z,A+X+Y,B+Y+Z,C+Z+X]
  if any(get(known,w)<0 for w in words):continue
  signs={}
  for w in words:
   key,sg=canonical(w);signs[key]=sg
  patterns.append((X+Y+Z,signs))
 return patterns

def replay(known,step):
 kind,*args=step
 if kind=='mesh':
  outer,points,target,sg=args;sg=int(sg)
  assert get(known,outer)==1 and len(points)==3 and all(inside(known,outer,pt) for pt in points)
  pats=mesh_patterns(known,outer,points);key,eps=canonical(target)
  assert pats and all(signs.get(key)==eps*sg for _,signs in pats)
  put(known,target,sg)
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
  assert hull==ANCHORS or (pair,hull) in [(pair,'DBC') for pair in ['XY','XZ','YZ']]
  assert convex(known,hull) and all(inside(known,hull,ch) for ch in pair)
  assert possible and vertex in hull and all(ss[hull.index(vertex)]==sg for ss in possible)
  put(known,vertex+pair,sg)
 elif kind=='chord':
  hull,pair,edge,point=args;ch=chord_hull(known,hull,pair)
  assert hull==ANCHORS or (pair,hull) in [(pair,'DBC') for pair in ['XY','XZ','YZ']]
  assert convex(known,hull) and all(inside(known,hull,pt) for pt in pair)
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
 if kind=='nomesh':
  outer,points=args;assert get(known,outer)==1 and len(points)==3 and all(inside(known,outer,pt) for pt in points)
  assert not mesh_patterns(known,outer,points)
 elif kind=='cap':
  hull,points,limit=args;limit=int(limit)
  caps={'DEBH':1 if CELL=='III' else 2}
  if CELL=='I':caps['DFC']=1
  assert caps.get(hull)==limit and len(points)==len(set(points))>limit
  assert (len(hull)==3 and get(known,hull)==1) or convex(known,hull)
  assert all(inside(known,hull,pt) for pt in points)
 elif kind=='given':
  word,sg=args;assert get(known,word)==-int(sg)
 elif kind=='plubad':
  _,values=pluecker_products(known,args[0]);assert all(values) and len(set(values))==1
 elif kind=='linebad':
  hull,pair=args
  assert hull==ANCHORS or (hull=='DBC' and pair in ('XY','XZ','YZ'))
  assert convex(known,hull) and all(inside(known,hull,pt) for pt in pair)
  assert not line_patterns(known,hull,pair)
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


def bounds(cell,ec):
 omega=F('.542') if cell=='II' else K*S
 mB=3 if cell=='I' else 1;mC=3 if cell=='III' else 1
 pCost=1 if cell=='III' else 3;qCost=1 if cell=='I' else 3
 bmin={'I':F('.101'),'II':F('.097'),'III':F('.106')}[cell]
 lmin={'I':F('.085'),'II':F('.044'),'III':F('.124')}[cell]
 lmax=F('.797') if cell=='II' else F('.696')
 amax={'I':F('.907'),'II':F('.893'),'III':F('.721')}[cell]
 if ec==0:
  assert cell=='II';bmin=F('.344');lmin=F('.674')
 elif ec==1:
  bmin=F('.164') if cell=='II' else F('.21');lmin=F('.435') if cell=='II' else F('.559')
 elif ec==2:lmax=1-K*S
 elif ec==3:lmax=1-J*S
 else:raise AssertionError(ec)
 bmax=1-omega;w=1-bmin;aa=1-mC*S/omega
 amin=bmin+pCost*S;kmax=aa*(1-omega/w)
 cmin=bmin+omega+mB*S*(w-omega)/omega
 dmin=mB*S/(amax-bmin);dmax=1-qCost*S/w
 jmin=S/(amax-bmin)
 rmin=bmin+w*jmin+S;rmax=1-S/(1-dmin)
 if cell=='I':
  assert 1-S*kmax/((amax-bmin)*dmin*dmin)>0
  jmax=dmax-S/(amax-bmin)*(2-kmax/dmax)
 elif cell=='III':
  assert 1-S*(1-cmin)/((1-dmin)*(1-amax)**2)>0
  rmin=max(rmin,amin+S/(1-dmin)*(1+(cmin-amin)/(1-amin)))
  jmax=1-S/(1-amin)*(1+(1-kmax)/(1-dmin))
 else:jmax=1-2*S/(amax-bmin)
 lo=lambda x:F(floor(x*1000),1000)
 hi=lambda x:F(ceil(x*1000),1000)
 bb=[(bmin,bmax),(lmin,lmax),(lo(amin),amax),(0,hi(kmax)),(lo(cmin),1),(lo(dmin),hi(dmax)),
  (lo(3*S+3*bmin*S),hi(1-4*S+3*bmax*S)),(4*S,1-3*S),
  (lo(3*S+bmin*S),hi(1-4*S+bmax*S)),(F('.730'),1-S),
  (lo(S+3*bmin*S),hi(1-6*S+3*bmax*S)),(4*S,1-3*S),
  (lo(rmin),hi(rmax)),(lo(jmin),hi(jmax))]
 return [(F(a),F(b)) for a,b in bb],{'omega':omega,'mB':mB,'mC':mC,'pCost':pCost,'qCost':qCost,'kFactor':aa}

def const(c):return {():F(c)} if c else {}
def var(i):return {(i,):F(1)}
def add(*polys):
    out=defaultdict(F)
    for pp in polys:
        for e,c in pp.items():out[e]+=c
    return {e:c for e,c in out.items() if c}
def scale(pp,c):return {e:c*v for e,v in pp.items() if c*v}
def sub(pp,qq):return add(pp,scale(qq,-1))
def mul(pp,qq):
    out=defaultdict(F)
    for e,c in pp.items():
        for f,d in qq.items():out[tuple(sorted(e+f))]+=c*d
    return {e:c for e,c in out.items() if c}
def determinant(a,b,c):return sub(mul(sub(b[0],a[0]),sub(c[1],a[1])),mul(sub(b[1],a[1]),sub(c[0],a[0])))


def shifted(pp,bounds):
    out=defaultdict(F)
    for e,c in pp.items():
        term={():c}
        for i in e:
            temp=defaultdict(F)
            for ee,cc in term.items():
                temp[ee]+=cc*bounds[i][0];temp[tuple(sorted(ee+(i,)))]+=cc
            term=temp
        for ee,cc in term.items():out[ee]+=cc
    return {e:c for e,c in out.items() if c}

def upper(pp,bounds):
    out=pp.get((),F(0))
    for e,c in pp.items():
        if e and c>0:
            for i in e:c*=bounds[i][1]-bounds[i][0]
            out+=c
    return out


def mesh_words(outer,points):
    A,B,C=outer;X,Y,Z=points
    return [A+B+Z,B+C+X,C+A+Y,A+Z+Y,B+X+Z,C+Y+X,Z+X+Y,
            A+Z+X,B+X+Y,C+Y+Z,A+X+Y,B+Y+Z,C+Z+X]

def factors(name,data,known):
    bb,par=bounds(CELL,EC);V=[var(i) for i in range(14)]
    b,lam,a,k,c,d,x,v,u,t,z,w,r,j=V
    one=const(1)
    pts={'D':({},one),'E':({},lam),'B':(b,{}),'H':(a,k),'F':(c,d),'C':(one,one),
         'X':(x,v),'Y':(u,t),'Z':(z,w),'R':(r,j)}
    def area(word):return determinant(*(pts[ch] for ch in word))
    cache={}
    for i,(lo,hi) in enumerate(bb):
        cache['L'+str(2*i)]=sub(V[i],const(lo));cache['L'+str(2*i+1)]=sub(const(hi),V[i])
    cache['L28']=add(t,scale(v,-1),const(-2*S));cache['L29']=add(t,scale(w,-1),const(-2*S))
    om=par['omega'];mb=par['mB'];mc=par['mC']
    cache['L30']=add(c,scale(a,-1),const(-mc*S));cache['L31']=add(d,scale(k,-1),const(-mb*S))
    cache['L32']=add(c,scale(b,-(1-mb*S/om)),const(-om+mb*S-mb*S/om))
    cache['L33']=add(d,scale(k,-1),const(-bb[5][0]))
    cache['L34']=add(a,scale(b,-1),const(-par['pCost']*S))
    def factor(nm):
        if nm in cache:return cache[nm]
        if nm[0] in '+-':
            match=re.fullmatch(r'([+-])([A-Z]{3})(?:o(.+))?',nm);assert match,nm
            sg=1 if match[1]=='+' else -1;word=match[2];cost=F(match[3]) if match[3] else F(1)
            assert get(known,word)==sg,(name,nm)
            if cost>1:
                needed={F(3):1,K:2,J:3}[cost];witness=data['witnesses'][nm]
                assert len(witness)==len(set(witness))==needed and all(inside(known,word,pt) for pt in witness),(name,nm,witness)
            out=add(scale(area(word),sg),const(-cost*S))
        elif nm.startswith('quad_'):
            _,hull,points=nm.split('_');n=len(points)
            assert len(hull)==4 and convex(known,hull),(name,nm)
            assert n==len(set(points)) and all(inside(known,hull,pt) for pt in points),(name,nm)
            cost={1:F('.449'),2:8*S,3:F(93,91),4:(J+3)*S,5:(K+J)*S,6:2*J*S}[n]
            out=add(area(hull[:3]),area(hull[0]+hull[2:]),const(-cost))
        elif nm.startswith(('ear_','connect_','center_')):
            outer,points=data['meshes'][nm]
            assert get(known,outer)==1 and len(points)==len(set(points))==3
            assert all(inside(known,outer,pt) for pt in points),(name,nm)
            words=mesh_words(outer,points)
            assert all(get(known,word)==1 for word in words),(name,nm)
            if nm.startswith('ear_'):
                _,outname,ear=nm.split('_');assert outname==outer and ear in words[:3]
                out=add(area(outer),scale(area(ear),-1),const(-F(3927,500)*S))
            elif nm.startswith('connect_'):
                assert nm=='connect_'+outer+'_'+points
                out=add(*(area(word) for word in words[3:6]),const(-F(2427,500)*S))
            else:
                assert nm=='center_'+words[6]
                out=add(const(F(8,5)*S),scale(area(words[6]),-1))
        elif nm=='contact_height':
            out=add(scale(sub(const(1-om),b),par['kFactor']),scale(mul(sub(one,b),k),-1))
        elif nm=='R_height':
            left=sub(a,b) if CELL in ('I','II') else sub(one,a)
            out=add(mul(left,sub(one,j)),const(-2*S))
        elif nm=='R_width':
            height=d if CELL=='I' else sub(one,d)
            out=add(mul(height,sub(r,b)),const(-2*S))
        else:raise AssertionError(('unknown factor',nm))
        cache[nm]=out;return out
    return bb,factor

def parse(cell):
    text=Path(__file__).with_name(f'TYPE_II_133_CELL_{cell}.md').read_text()
    expected=tuple(map(int,re.search(r'Counts: `(\d+) (\d+) (\d+)`',text).groups()))
    prefix,*sections=text.split('## Leaf ')
    block=re.search(r'```text\n(.*?)```',prefix,re.S)[1]
    splits=dict(line.split() for line in block.splitlines() if line)
    leaves={}
    for sec in sections:
        name=sec.splitlines()[0].strip();assert name not in leaves
        boxname=re.search(r'Box: `([^`]+)`',sec)[1]
        ass={token[1:]:1 if token[0]=='+' else -1 for token in re.search(r'Assumptions: `([^`]+)`',sec)[1].split()}
        trace=re.search(r'### Sign trace\n\n```text\n(.*?)```',sec,re.S)[1]
        data={'box':boxname,'extra':ass,'trace':[line.split() for line in trace.splitlines() if line]}
        if 'Exclusion:' in sec:
            data['bad']=re.search(r'Exclusion: `([^`]+)`',sec)[1].split()
        else:
            wit=re.search(r'### Strengthened triangle witnesses\n\n```text\n(.*?)```',sec,re.S)[1]
            data['witnesses']=dict(line.split() for line in wit.splitlines() if line)
            mesh=re.search(r'### Mesh witnesses\n\n```text\n(.*?)```',sec,re.S)[1]
            data['meshes']={line.split()[0]:line.split()[1:] for line in mesh.splitlines() if line}
            prods=re.search(r'### Fixed polynomial\n\n```text\n(.*?)```',sec,re.S)[1]
            data['products']=[(int(line.split()[0]),line.split()[1]) for line in prods.splitlines() if line]
            data['upper']=F(re.search(r'Upper bound: `([^`]+)`',sec)[1])
        leaves[name]=data
    return expected,splits,leaves

def scalar_checks():
    s=S;a=K*S
    assert F('.833')**2<a and F('.736')**2<F('.542')
    assert F(141421,100000)**2<2 and F(8579,50000)*F('.542')<s
    assert F(433,250)**2<3 and K==4+2*F(433,250)
    assert F(559,250)**2<5 and J==(11+3*F(559,250))/2
    assert (J+2)*s>1 and J+3<2*K
    assert F(707,500)**2<2 and 2*(1+F(707,500))*s>F('.449')
    M={cell:(1-(3 if cell=='III' else 1)*s/(F('.542') if cell=='II' else a))*(F('.264') if cell=='II' else F('.167'))**2 for cell in ('I','II','III')}
    assert (s-M['I'])/(F('.907')-s)>F('.084') and s/F('.916')>F('.101')
    assert (s-M['I'])/(F('.907')-F('.101'))>F('.085')
    assert (s-M['III'])/(F('.721')-s)>F('.121') and s/F('.879')>F('.105')
    assert (s-M['III'])/(F('.721')-F('.105'))>F('.1238') and s/F('.8762')>F('.106')
    assert (s-M['III'])/(F('.721')-F('.106'))>F('.124')
    assert (s-M['II'])/(F('.907')-s)>F('.043') and s/F('.957')>F('.097')
    g=lambda z:z*(1-z)/(2-z)
    assert 1-F('.107')/F('.542')>F(3,4) and s/F('.107')>F(3,4)
    assert s/F('.903')>g(s/F('.107')) and F('.107')*(F('.107')+s)/(F('.107')-s)>1
    assert (s-M['II'])/(F('.893')-F('.097'))>F('.044')
    assert 1-s/(1-a)<F('.696') and 1-s/F('.458')<F('.797')
    assert (2*a-1)/a>F('.559') and s/F('.441')>F('.21')
    assert (a-F('.458'))/F('.542')>F('.435') and s/F('.565')>F('.164')
    assert s/(1+s-J*s)>F('.344') and (J*s-F('.458'))/F('.542')>F('.674')
    assert F('.306')+F('.694')*F('.696')<J*s
    assert F('.907')+M['I']<1 and F('.893')+M['II']<1 and F('.721')+M['III']<8*s
    assert 3*s/(F('.907')-F('.101'))>F('.346') and F('.654')<K*s
    assert M['I']+(1-K*s)*(F('.907')-F('.101'))<3*s
    assert M['III']+(1-K*s)*(F('.721')-F('.106'))<3*s
    assert M['II']+(1-J*s)*(F('.893')-F('.097'))<3*s
    note=Path(__file__).with_name('TYPE_II_133_NONTRIANGULAR.md').read_text()
    printed={}
    for name,los,his in re.findall(r'Box (I{1,3}[0-3]):\n\n```text\nlo = \((.*?)\)\nhi = \((.*?)\)\n```',note):
        printed[name]=list(zip(map(F,los.split(', ')),map(F,his.split(', '))))
    assert len(printed)==10
    for cell in ('I','II','III'):
        for ec in ([0,1,2,3] if cell=='II' else [1,2,3]):
            bb,pa=bounds(cell,ec);assert printed[cell+str(ec)]==bb,(cell,ec,'printed box')
            om=pa['omega']
            assert om**2>pa['mC']*s*(1-s) and om**2>pa['mB']*s*(1-s)
            assert all(lo<hi for lo,hi in bb)


def main():
    global CELL,EC,BASE_HULLS
    assert len(sys.argv)==2 and sys.argv[1] in ('I','II','III'),'Pass I, II or III.'
    CELL=sys.argv[1]
    BASE_HULLS={'X':'DBC','Y':'DBC','Z':'DBC','R':{'I':'BHF','II':'BHC','III':'HFC'}[CELL]}
    scalar_checks();expected,splits,leaves=parse(CELL)
    seen=set();counts=Counter();steps=Counter();terms=0
    def visit(name,extra):
        nonlocal terms
        assert name not in seen;seen.add(name)
        if name in splits:
            assert name not in leaves
            tri=splits[name];canonical(tri)
            for suffix,sg in [('m',-1),('p',1)]:
                ee=dict(extra);ee[tri]=sg;visit(name+suffix,ee)
            return
        assert name in leaves,('unclosed leaf',name)
        data=leaves[name]
        assert data['extra']==extra and data['box']==CELL+str(EC),(name,'assumptions or box')
        known=initial()
        for word,sg in extra.items():put(known,word,sg)
        for step in data['trace']:replay(known,step);steps[step[0]]+=1
        if 'bad' in data:check_exclusion(known,data['bad']);counts['geometric']+=1;return
        bb,factor=factors(name,data,known);total={}
        for weight,productname in data['products']:
            assert weight>0;pp=const(weight)
            for nm in productname.split('*'):pp=mul(pp,factor(nm))
            assert max(map(len,pp),default=0)<=3,(name,productname)
            total=add(total,pp)
        got=upper(shifted(total,bb),bb)
        assert got==data['upper'] and got<0,(name,got,data['upper'])
        counts['polynomial']+=1;terms+=len(data['products'])
    pairs=[(-1,-1),(1,-1)] if CELL=='I' else [(1,-1),(1,1)] if CELL=='III' else [(-1,-1),(1,-1),(1,1)]
    root_count=0
    for ec in ([0,1,2,3] if CELL=='II' else [1,2,3]):
        EC=ec
        for dh in range(4):
            for df in range(dh+1):
                for rh,rf in pairs:
                    extra={**{'EC'+ch:1 if i<EC else -1 for i,ch in enumerate('YZX')},
                           **{'DH'+ch:1 if i<dh else -1 for i,ch in enumerate('YXZ')},
                           **{'DF'+ch:1 if i<df else -1 for i,ch in enumerate('YXZ')},'DHR':rh,'DFR':rf}
                    name=f'{CELL}_E{EC}H{dh}F{df}'+('m' if rh<0 else 'p')+('m' if rf<0 else 'p')
                    visit(name,extra);root_count+=1
    assert seen==set(splits)|set(leaves)
    assert root_count==(120 if CELL=='II' else 60)
    assert (counts['polynomial'],counts['geometric'],terms)==expected
    print(f'PASS cell {CELL}: {root_count} exhaustive roots, {len(splits)} binary refinements, {len(leaves)} closed leaves; {counts["polynomial"]} fixed cubics / {terms} terms; {counts["geometric"]} geometric exclusions; {sum(steps.values())} geometric deductions; 10 rational boxes and scalar gaps.')

if __name__=='__main__':main()
