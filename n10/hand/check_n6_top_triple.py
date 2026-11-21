"""Read the fixed N6 top-triple manuscripts; rational arithmetic only."""
from pathlib import Path
from fractions import Fraction as F
from collections import Counter
from itertools import product
import json,re,sys
import n6_top_triple_geometry as g
import n6_top_triple_algebra as a
import multiaffine_box as box
HERE=Path(__file__).parent

def parse_blocks(text):
 result={}
 for name,body in re.findall(r'^```(n6-top-[^\n]+)\n(.*?)^```$',text,re.M|re.S):
  assert name not in result;result[name]=body.strip()
 return result

def check_paths(paths):
 tree={}
 for path in paths:
  node=tree
  for token in path:
   assert 'leaf' not in node
   assert token in ('ORDER-','ORDER+') or re.fullmatch(r'[ABCEFHPQRS]{3}[+-]',token) and len(set(token[:3]))==3
   node=node.setdefault(token,{})
  assert not node;node['leaf']=True
 count=0
 def walk(node):
  nonlocal count
  if 'leaf' in node:assert len(node)==1;return
  assert len(node)==2
  aa,bb=sorted(node);assert aa[:-1]==bb[:-1] and {aa[-1],bb[-1]}=={'+','-'}
  count+=1
  for child in node.values():walk(child)
 walk(tree);return count

def verify(path):
 source_path=Path(path)
 blocks=parse_blocks(source_path.read_text())
 def block(name):return blocks['n6-top-'+name]
 normalized_word=blocks.get('n6-top-normalized','0');assert normalized_word in('0','1')
 normalized=normalized_word=='1'
 roots=[tuple(line.split()) for line in block('roots').splitlines()]
 assert len(set(roots))==len(roots) and all(loc in('BTTT','ITTT') and len(word)==4 and set(word)<={'+','-'} for loc,word in roots)
 rows=[];byroot={root:[] for root in roots}
 for line in block('leaves').splitlines():
  ident,loc,word,kind,pathword=line.split();assert kind in('P','G','B') and (loc,word) in byroot
  path=[] if pathword=='none' else pathword.split(',');byroot[loc,word].append(path)
  rows.append((ident,loc,word,kind,path))
 assert len({row[0] for row in rows})==len(rows)
 totals=Counter(roots=len(roots),splits=sum(check_paths(paths) for paths in byroot.values()))
 for ident,loc,word,kind,path0 in rows:
  g.set_locations(loc,normalized=normalized);known=g.initial('below' if loc=='BTTT' else 'above');order=None
  for triangle,sign in zip(('FQR','FQS','FRS','QRS'),word):g.put(known,triangle,1 if sign=='+' else -1)
  for token in path0:
   if token.startswith('ORDER'):assert order is None;order=token[-1]
   else:g.put(known,token[:3],1 if token[-1]=='+' else -1)
  trace=block(ident+'-trace')
  if trace!='none':
   for line in trace.splitlines():g.replay(known,line.split());totals['deductions']+=1
  if order is not None:assert loc=='BTTT' and g.get(known,'ACP')==g.get(known,'HBP')==1
  if kind=='G':
   terminal=json.loads(block(ident+'-terminal'))
   if terminal==['top-five']:assert word=='++++' and g.convex(known,'EQRSF')
   elif terminal==['top-fourth-cell']:assert word=='+++-' and g.convex(known,'EQSF') and all(g.inside(known,hull,'R') for hull in('EQS','FQS'))
   elif terminal==['double-lower-ear']:assert loc=='BTTT' and all(g.inside(known,hull,'P') for hull in('ABC','ABH'))
   else:g.check_exclusion(known,terminal)
   totals['geometry']+=1;continue
  metadata={}
  for line in block(ident+'-box').splitlines():
   key,*values=line.split();assert key not in metadata;metadata[key]=values
  version=int(metadata['version'][0]);floor=F(metadata['floor'][0]);top=F(metadata['top_cost'][0]);central=metadata['central']==['1']
  assert metadata['central'] in (['0'],['1']) and version in(1,2,3,4,5)
  assert version<4 or normalized
  lo=list(map(F,metadata['low']));hi=list(map(F,metadata['high']));startlo=list(map(F,metadata['initial_low']));starthi=list(map(F,metadata['initial_high']))
  assert a.box(4 if version>=4 else min(version,2),loc,known,floor,top,central)==(startlo,starthi)
  assert len(lo)==len(hi)==a.N and all(0<ll<=hh<=1 for ll,hh in zip(lo,hi))
  witnesses={};rates={};squares={}
  for mode,target in [('witnesses',witnesses),('rates',rates),('squares',squares)]:
   body=block(ident+'-'+mode)
   if body=='none':continue
   for line in body.splitlines():
    name,*values=line.split();assert name not in target
    if mode=='witnesses':assert len(values)==1;target[name]='' if values==['-'] else values[0]
    elif mode=='rates':assert len(values)==1;target[name]=F(values[0])
    else:assert len(values)==a.N+1;target[name]=list(map(int,values))
  ctx=a.Context(loc,known,lo,hi,floor,top,order,squares,witnesses,rates,normalized=normalized)
  used=set();tracebody=block(ident+'-intervals');intervals=[] if tracebody=='none' else [json.loads(line) for line in tracebody.splitlines()]
  contradiction=None if kind=='P' else json.loads(block(ident+'-terminal'))
  if version in(1,2,4):assert intervals==[] and contradiction is None and (lo,hi)==(startlo,starthi)
  else:
   factor_names={step['factor'] for step in intervals}
   if contradiction:factor_names.add(contradiction['factor'])
   factors={}
   initial_ctx=a.Context(loc,known,startlo,starthi,floor,top,order,squares,witnesses,rates,normalized=normalized)
   for name in factor_names:
    assert a.interval_factor_allowed(name),('box-dependent interval factor',name)
    initial_polynomial=initial_ctx.atom(name)
    assert initial_polynomial==ctx.atom(name)
    physical={}
    for mon,cc in initial_polynomial.items():
     ex=[0]*a.N
     for i in mon:ex[i]+=1
     physical[tuple(ex)]=cc
    factors[name]=physical
   used.update(factor_names)
   afterlo,afterhi=box.replay_trace(factors,startlo,starthi,intervals,contradiction)
   assert all(ll<=aa<=bb<=hh for ll,hh,aa,bb in zip(lo,hi,afterlo,afterhi))
   totals['interval_steps']+=len(intervals)
  if kind=='B':totals['interval_geometry']+=1
  else:
   total={}
   for line in block(ident+'-sum').splitlines():
    ww,name=line.split();ww=int(ww);assert ww>0
    names=name.split('*');polynomial=a.mul(*(ctx.atom(n) for n in names));assert max(map(len,polynomial),default=0)<=3
    total=a.add(total,a.scale(polynomial,ww));used.update(names);totals['terms']+=1
   bound=a.upper(total,lo,hi);assert bound==F(block(ident+'-bound'))<0,(ident,bound)
   totals['polynomial']+=1
  assert set(witnesses)=={name for name in used if name.startswith(('C_','Q_','ACAP_','top_'))}
  assert set(rates)=={name for name in used if name.startswith('QS_')}
  assert set(squares)=={name for name in used if name.startswith('SOS')}
 expected=json.loads(block('totals'));assert dict(totals)==expected,(dict(totals),expected)
 print(source_path.name,dict(totals),flush=True);return totals

if __name__=='__main__':
 for path in sys.argv[1:]:verify(path)
