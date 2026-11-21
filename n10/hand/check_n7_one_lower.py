"""Read and check the fixed N7 one-lower-cell manuscripts, with Fraction only."""
from pathlib import Path
from fractions import Fraction as F
import re,sys
import n7_one_lower_rules as g
import n7_one_lower_polynomials as q
import n7_one_lower_caps as caps
from n7_one_lower_records import decode_step,decode_terminal
ROOTS={'ABC':['ACG-','BGH+'],'ABH':['ACG+','BGH-'],'CA':['ACG+','BGH+'],'CB':['ACG+','BGH+']}
COORDINATES='a b c d e f g h z x y u v'.split()
COMMON=['Llo','Lhi','Rlo','Rhi','Mlo','Mhi','fb','cf','he','ea']
HERE=Path(__file__).parent

def block(text,name):
 fence=chr(96)*3
 matches=re.findall(r'^'+fence+re.escape(name)+r'\n(.*?)^'+fence+r'$',text,re.M|re.S)
 assert len(matches)==1,(name,len(matches));return matches[0].strip()
def complete(paths):
 root={}
 for path in paths:
  node=root
  for token in path:
   assert '_terminal' not in node
   node=node.setdefault(token,{})
  assert not node;node['_terminal']=True
 def walk(node):
  if '_terminal' in node:assert len(node)==1;return
  assert len(node)==2,node
  a,b=sorted(node);assert len(a)==len(b)==4 and a[:3]==b[:3] and {a[-1],b[-1]}=={'+','-'}
  for child in node.values():walk(child)
 walk(root)
def upper(poly,cell):
 low,high=g.strong_box(cell);answer=F(0)
 for ex,co in poly.items():
  value=F(1)
  for endpoint,power in zip(high if co>0 else low,ex):value*=endpoint**power
  answer+=co*value
 return answer

def verify(path):
 text=Path(path).read_text();cell=block(text,'n7-l2u-root');assert cell in ROOTS
 boxes={}
 for line in block(text,'n7-l2u-boxes').splitlines():
  ident,body=line.split(' ',1);lo,hi=body.split('|');low=list(map(F,lo.split()));high=list(map(F,hi.split()))
  assert len(low)==len(high)==13 and ident not in boxes
  L,H=g.strong_box(cell);assert all(a<=b<=c<=d for a,b,c,d in zip(low,L,H,high))
  boxes[ident]=(low,high)
 facets={}
 for line in block(text,'n7-l2u-facets').splitlines():
  ident,*extra=line.split();assert ident not in facets;facets[ident]=[] if extra==['none'] else extra
 squares=[];sqnames=set()
 squaretext=block(text,'n7-l2u-squares')
 if squaretext!='none':
  for line in squaretext.splitlines():
   name,den,*coeff=line.split();den=int(den);coeff=list(map(int,coeff));assert den>0 and len(coeff)==14 and name not in sqnames
   sqnames.add(name);squares.append({'name':name,'scale':den,'coefficients':coeff})
 rows=[]
 for line in block(text,'n7-l2u-rows').splitlines():
  ident,kind,box,facet,tokens=line.split();assert kind in ['P','G']
  path=[] if tokens=='none' else tokens.split(',');assert all(len(t)==4 and t[-1] in '+-' and len(set(t[:3]))==3 and set(t[:3])<=set(g.L) for t in path)
  rows.append((ident,kind,box,facet,path))
 assert len({r[0] for r in rows})==len(rows)
 complete([r[4] for r in rows]);counts={'polynomial':0,'geometry':0,'terms':0,'deductions':0}
 maxweight=0;largest=None
 for ident,kind,box,facet,path in rows:
  known=g.starting(ROOTS[cell]+path)
  trace=block(text,'n7-l2u-'+ident+'-trace')
  if trace!='none':
   for line in trace.splitlines():assert g.step(known,decode_step(line));counts['deductions']+=1
  if kind=='G':
   assert box==facet=='none';g.geometric_terminal(known,decode_terminal(block(text,'n7-l2u-'+ident+'-terminal')),cell);counts['geometry']+=1;continue
  assert box in boxes and facet in facets;low,high=boxes[box]
  data={'cell':cell,'low':list(map(str,low)),'high':list(map(str,high)),
    'facet_names':[a+b for a in COORDINATES for b in ['_lo','_hi']]+COMMON+facets[facet],
    'squares':squares,'terms':[]}
  f=g.factors(data,known);W={};used=set();termrows=block(text,'n7-l2u-'+ident+'-sum').splitlines()
  for line in termrows:
   weight,name=line.split();weight=int(weight);assert weight>0;W=q.add(W,q.scale(f(name),weight));used.update(name.split('*'));maxweight=max(maxweight,weight)
  witnesswords={}
  wit=block(text,'n7-l2u-'+ident+'-witnesses')
  if wit!='none':
   for line in wit.splitlines():
    name,pts=line.split();assert name in used and name not in witnesswords;witnesswords[name]=pts
    word,n=name[1:].split('_');n=int(n);assert len(pts)==n and len(set(pts))==n and set(pts)<=set('GOP')
    assert all(g.ins(known,g.wi(word),g.wi(pt)[0]) for pt in pts)
  expected={name for name in used if (name.startswith('C') and re.fullmatch(r'C[A-HOP]{3}_[123]',name)) or re.fullmatch(r'Q[A-HOP]{4}_[123]',name)}
  assert set(witnesswords)==expected
  capnames=set();captext=block(text,'n7-l2u-'+ident+'-caps')
  if captext!='none':
   for line in captext.splitlines():
    atom=caps.verify(line.split(),known,low,high);assert atom in used and atom not in capnames;capnames.add(atom)
  expectedcaps={atom for atom in used if atom.startswith('PB_') or (atom.startswith('F5_') and len(atom.split('_'))==3)}
  assert capnames==expectedcaps
  bound=upper(W,cell);assert bound==F(block(text,'n7-l2u-'+ident+'-bound'))<0,(ident,bound)
  largest=bound if largest is None else max(largest,bound);counts['polynomial']+=1;counts['terms']+=len(termrows)
 expected=dict(zip(['polynomial','geometry','terms','deductions'],map(int,block(text,'n7-l2u-totals').split())))
 assert counts==expected,(counts,expected)
 print(Path(path).name if False else 'N7 '+cell,counts,'max weight',maxweight,'largest bound',largest)
 return counts
if __name__=='__main__':
 targets=[Path(arg) for arg in sys.argv[1:]] or sorted(HERE.glob('N7_ONE_LOWER_*.md'))
 targets=[p for p in targets if p.stem!='N7_ONE_LOWER_SETUP'];assert targets
 for target in targets:verify(target)
