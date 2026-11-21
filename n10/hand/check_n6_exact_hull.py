"""Replay only the fixed manuscript of the complete N6 exact-hull proof.

Uses Python's standard library. The input is N6_EXACT_HULL.md and its
three printed appendices. No search, optimizer, or discovery data is read.
"""
from pathlib import Path
from fractions import Fraction as F
from functools import lru_cache
from itertools import product
from collections import Counter
import re
from n6_hull_geometry import initial,get,put,replay,check_exclusion,Contradiction,LABELS
from n6_hull_algebra import box,VARIABLES,atom,mul,scale,add,upper

HERE=Path(__file__).parent
ROOTS=['CS--','CO--','CO+-','CO++','MH--','MH-+','MH++','MHC++']
ROOT_GIVENS={
 'CS--':'++----','CO--':'+++---','CO+-':'+++-+-','CO++':'+++-++',
 'MH--':'---+--','MH-+':'---+-+','MH++':'---+++','MHC++':'--++++'}
PAIR_WORDS=[''.join('+' if sg>0 else '-' for sg in signs) for signs in product((-1,1),repeat=4)
 if sum(a!=b for a,b in zip((1,signs[0],signs[1],-1,signs[2],signs[3]),
                          (signs[0],signs[1],-1,signs[2],signs[3],1)))==2]
assert PAIR_WORDS==['----','---+','--++','+---','+--+','+-++','++--','++-+','++++']

def one(pattern,text):
 found=re.findall(pattern,text,re.M);assert len(found)==1,(pattern,found)
 return found[0]
def block(name,text):return one(r'^```'+name+r'\n([\s\S]*?)^```$',text).rstrip('\n')

def read_manuscript():
 method=(HERE/'N6_EXACT_HULL.md').read_text()
 printed_roots={root:('central' if case=='central' else 'mixed',''.join(signs))
  for root,case,*signs in re.findall(r'^\| (CS--|CO--|CO\+-|CO\+\+|MH--|MH-\+|MH\+\+|MHC\+\+) \| (central|mixed) \| ([+-]) \| ([+-]) \| ([+-]) \| ([+-]) \| ([+-]) \| ([+-]) \|$',method,re.M)}
 assert set(printed_roots)==set(ROOTS)
 for root in ROOTS:assert printed_roots[root]==('central' if root.startswith('C') else 'mixed',ROOT_GIVENS[root])
 for kind in ('C','M0','M1','M2'):
  section=method.split('### Box '+kind+'\n',1)[1].split('\n### ',1)[0]
  floor=F(one(r'^Floor rho: `([^`]+)`\.$',section))
  records=re.findall(r'^\| ([a-z]) \| ([0-9/]+) \| ([0-9/]+) \|$',section,re.M)
  assert [name for name,_,_ in records]==VARIABLES
  assert ([F(lo) for _,lo,_ in records],[F(hi) for _,_,hi in records],floor)==box(kind)
 summary={root:(ident,*map(int,nums)) for root,ident,*nums in
  re.findall(r'^\| (CS--|CO--|CO\+-|CO\+\+|MH--|MH-\+|MH\+\+|MHC\+\+) \| (N\d{4}) \| (\d+) \| (\d+) \| (\d+) \| (\d+) \| (\d+) \|$',method,re.M)}
 assert set(summary)==set(ROOTS)
 nodes={}
 for filename in ['N6_EXACT_HULL_CS.md','N6_EXACT_HULL_CO.md','N6_EXACT_HULL_MIXED.md']:
  text=(HERE/filename).read_text()
  sections=re.split(r'^## Node (N\d{4})\n',text,flags=re.M)
  assert len(sections)%2==1
  for ident,section in zip(sections[1::2],sections[2::2]):
   assert ident not in nodes
   case=one(r'^Case: `([^`]+)`\.$',section)
   parent=one(r'^Parent: `(ROOT|N\d{4})`\.$',section)
   assumptions=one(r'^Assumptions: `([^`]+)`\.$',section).split(', ')
   assert all(re.fullmatch(r'[A-Z]{3}[+-]',tok) for tok in assumptions)
   trace=[line.split() for line in block('n6-trace',section).splitlines() if line]
   node={'id':ident,'tag':case,'parent':parent,'assumptions':assumptions,'steps':trace}
   if '\nExclusion: ' in section:
    node['exclusion']=one(r'^Exclusion: `([^`]+)`\.$',section).split()
   elif '\nSplit: ' in section:
    node['split']=one(r'^Split: `([^`]+)`\.$',section).split()
    entries=one(r'^Children: `([^`]+)`\.$',section).split('; ')
    children=[entry.split('=') for entry in entries]
    assert len({word for word,_ in children})==len(children)
    node['children']=dict(children)
   else:
    kind,count,bound=one(r'^Polynomial: `(C|M0|M1|M2)`; `(\d+)` terms; upper bound `(-[0-9/]+)`\.$',section)
    node.update(kind=kind,count=int(count),bound=F(bound))
    witnesses=[line.split() for line in block('n6-witnesses',section).splitlines() if line]
    assert len({entry[0] for entry in witnesses})==len(witnesses)
    node['witnesses']=dict(witnesses)
    squares=[line.split() for line in block('n6-squares',section).splitlines() if line]
    assert len({entry[0] for entry in squares})==len(squares)
    node['squares']={name:list(map(int,co)) for name,*co in squares}
    entries=re.split(r';\s*|\n',block('n6-sum',section))
    terms=[]
    for entry in entries:
     if not entry:continue
     match=re.fullmatch(r'(\d+) (\d+) ([A-Za-z0-9_+*\-]+)',entry);assert match,entry
     index,weight,name=match.groups();assert int(index)==len(terms)+1 and int(weight)>0
     terms.append((int(weight),name))
    assert len(terms)==int(count);node['terms']=terms
   nodes[ident]=node
 return summary,nodes

def verify(verbose=True):
 summary,nodes=read_manuscript();visited=set();stats={};squares_count=0;largest_weight=0;largest_bound=None
 def visit(ident,root,inherited,parent,expected_assumptions):
  nonlocal squares_count,largest_weight,largest_bound
  assert ident in nodes and ident not in visited
  visited.add(ident);node=nodes[ident];st=stats[root]
  assert node['parent']==parent and node['tag'].split('/')[0]==root
  assert node['assumptions']==expected_assumptions,(ident,node['assumptions'],expected_assumptions)
  st['nodes']+=1;st['steps']+=len(node['steps'])
  known=dict(inherited);conflict=None
  for token in node['assumptions']:
   try:put(known,token[:3],1 if token[-1]=='+' else -1)
   except Contradiction as exc:conflict=exc.witness;break
  if conflict:
   assert not node['steps'] and node['exclusion']==list(map(str,conflict))
  else:
   for step in node['steps']:replay(known,step)
  if 'exclusion' in node:
   check_exclusion(known,node['exclusion']);st['geometric']+=1;return
  assert not conflict
  if 'children' in node:
   split,*args=node['split'];children=node['children']
   if split=='rs':
    assert not args and node['tag']==root and not get(known,'HRS')
    assert set(children)=={'C','E','F','CE','EF','CEF'}
    for word,child in children.items():
     assumptions=['HRS-']+[ch+'RS'+('+' if ch in word else '-') for ch in 'CEF']
     assert nodes[child]['tag']==node['tag']+'/'+word
     visit(child,root,known,ident,assumptions)
   elif split=='sign':
    word,=args;assert len(set(word))==3 and all(ch in LABELS for ch in word)
    assert set(children)=={word+'+',word+'-'}
    for token,child in children.items():
     assert nodes[child]['tag']==node['tag']+'/'+token
     visit(child,root,known,ident,[token])
   elif split=='cross':
    pair,=args;assert pair in ['PR','PS','QR','QS']
    assert get(known,'H'+pair)==1 and get(known,'C'+pair)==-1
    shown={word[2:] for word in children};assert all(word[:2]==pair for word in children)
    needed={ss for ss in PAIR_WORDS if all(not get(known,ch+pair) or get(known,ch+pair)==(1 if sg=='+' else -1) for ch,sg in zip('ABEF',ss))}
    assert needed<=shown<=set(PAIR_WORDS),(ident,needed,shown)
    for word,child in children.items():
     assert nodes[child]['tag']==node['tag']+'/'+word
     visit(child,root,known,ident,[ch+pair+sg for ch,sg in zip('ABEF',word[2:])])
   else:raise AssertionError(('undefined split',split))
   return
  kind=node['kind'];assert (kind=='C')==root.startswith('C')
  names={name for _,word in node['terms'] for name in word.split('*')}
  assert set(node['squares'])=={nm for nm in names if nm.startswith('SOS')}
  assert set(node['witnesses'])=={nm for nm in names if nm.startswith('C_') or nm.startswith('Q_')}
  atoms={nm:atom(nm,kind,known,node['squares'],node['witnesses']) for nm in names}
  W={}
  for weight,word in node['terms']:
   pp=mul(*(atoms[nm] for nm in word.split('*')))
   assert max(map(len,pp),default=0)<=3
   W=add(W,scale(pp,weight));largest_weight=max(largest_weight,weight)
  bound=upper(W,kind);assert bound==node['bound']<0,(ident,bound,node['bound'])
  largest_bound=bound if largest_bound is None else max(largest_bound,bound)
  squares_count+=len(node['squares']);st['polynomial']+=1;st['terms']+=len(node['terms'])
  if verbose:print('PASS',ident,node['tag'],len(node['terms']),'fixed terms; exact bound',bound,flush=True)
 for root in ROOTS:
  stats[root]=Counter();case='central' if root.startswith('C') else 'mixed'
  assumptions=[ch+'PQ'+sg for ch,sg in zip('ABCH EF'.replace(' ',''),ROOT_GIVENS[root])]
  ident,*expected=summary[root];visit(ident,root,initial(case),'ROOT',assumptions)
  assert [stats[root][key] for key in ['nodes','polynomial','geometric','terms','steps']]==expected,(root,stats[root],expected)
 assert visited==set(nodes)
 totals=sum(stats.values(),Counter())
 assert (totals['nodes'],totals['polynomial'],totals['geometric'],totals['terms'],squares_count)==(686,290,229,44924,10),totals
 print('PASS complete N6 exact hull:',dict(totals),'; ten explicit squares; maximum weight',largest_weight,'; largest bound',largest_bound,flush=True)
 return stats

if __name__=='__main__':verify()
