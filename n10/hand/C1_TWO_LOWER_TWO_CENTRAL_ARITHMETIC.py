"""Author's exact arithmetic replay of literal C1 two-lower/two-central Markdown.

Reads only the hand tables and imports no discovery code.  This checks
immutable endpoint references, polynomial expansions, every coordinate
endpoint line, and every integer polynomial combination.  Geometry,
scalar-inference semantics, source nonnegativity, and exhaustive case
coverage require separate review; this script is not that review.
"""
import json,re,sys
from pathlib import Path
from fractions import Fraction as F
from itertools import product
from collections import defaultdict,Counter

ROOT=Path(__file__).resolve().parent/'C1_TWO_LOWER_TWO_CENTRAL_TABLES'
if sys.argv[1:]:ROOT=Path(sys.argv[1])
def check(ok,message):
 if not ok:raise AssertionError(message)
def add(*polys):
 out=defaultdict(F)
 for p in polys:
  for m,a in p.items():out[m]+=a
 return {m:a for m,a in out.items() if a}
def scale(p,a):return {m:a*b for m,b in p.items() if a*b}
def const(a):return {():F(a)} if a else {}
def var(i):return {(i,):F(1)}
def mul(p,q):
 out=defaultdict(F)
 for m,a in p.items():
  for n,b in q.items():out[tuple(sorted(m+n))]+=a*b
 return {m:a for m,a in out.items() if a}
def parse(rows):
 out={}
 for mon,a in rows:
  m=tuple(mon);check(m==tuple(sorted(m)) and all(isinstance(i,int) and 0<=i<14 for i in m),'monomial')
  check(m not in out and F(a)!=0,'duplicate/zero polynomial coefficient');out[m]=F(a)
 return out
def down(x):return F(x.numerator*10**6//x.denominator,10**6)
def up(x):return -down(-x)
def translate(p,box):
 out={}
 for m,a in p.items():
  term=const(a)
  for i in m:term=mul(term,add(const(box[i][0]),scale(var(i),box[i][1]-box[i][0])))
  out=add(out,term)
 return out
def blocks(path):
 return [(tag,[json.loads(line) for line in text.splitlines() if line.strip()]) for tag,text in re.findall(r'^```([^\n]+)\n(.*?)^```\s*$',path.read_text(),re.M|re.S)]
def one(bb,tag):
 out=[rows for kind,rows in bb if kind==tag];check(len(out)==1,'block count '+tag);return out[0]
def retained_premises(child,parent):
 check(all(child[k]==parent[k] for k in ('cap','fan','labels')),'changed ancestor domain')
 check(all(child['assign'].get(t)==sg for t,sg in parent['assign'].items()),'lost ancestor sign premise')
 if parent.get('caseBox'):
  check(child.get('caseBox') is not None,'lost ancestor coordinate-case premise')
  check(all(F(a)<=F(c)<=F(d)<=F(b) for (a,b),(c,d) in zip(parent['caseBox'],child['caseBox'])),'weakened ancestor coordinate-case premise')
def combinations(bb):
 out=[]
 for i,(tag,rows) in enumerate(bb):
  if tag not in ('c1-coordinate-certificate','c1-physical-certificate'):continue
  check(len(rows)==1 and bb[i+1][0]=='c1-combination' and bb[i+2][0]=='c1-shifted-polynomial','combination block sequence')
  out.append((tag,rows[0],bb[i+1][1],parse(bb[i+2][1])))
 return out

stats=Counter();contexts={};contextActive=set();packets={};index=blocks(ROOT/'INDEX.md');metadata=one(index,'c1-proof-metadata')[0]
def context(file):
 if file in contexts:return contexts[file]
 check(file not in contextActive,'circular inherited scalar stage');contextActive.add(file)
 bb=blocks(ROOT/file);meta=one(bb,'c1-node')[0]
 records={};currentRefs={}
 initial=[x for tag,rows in bb if tag=='c1-area-initial' for x in rows]
 updates=[x for tag,rows in bb if tag=='c1-area-updates' for x in rows]
 for rid,row in initial:
  check(rid not in records,'reused initial version');records[rid]=row;currentRefs[row['triangle'],row['side']]=rid
 for row in updates:
  check(row['id'] not in records and all(s in records for s in row['sources']),'future/reused scalar version')
  records[row['id']]=row;currentRefs[row['triangle'],row['side']]=row['id']
 for row in [x for tag,rows in bb if tag=='c1-affine-bounds' for x in rows]:
  target,side=row['triangle'],row['side'];check(side in ('lo','hi'),'affine bound side')
  check(row['oldRef']==currentRefs[target,side],'stale affine old reference')
  check(F(row['old'])==F(records[row['oldRef']]['value']),'changed affine old value')
  factors={factor['index']:factor for factor in row['factors']}
  check(len(factors)==len(row['factors']),'duplicate affine source index')
  constant=F();coefficients={};seen=set()
  for i,weight in row['weights']:
   w=int(weight);check(str(w)==weight and w>0 and i not in seen,'invalid affine positive weight');seen.add(i)
   factor=factors[i];constant+=w*F(factor['constant'])
   for t,a in factor['coefficients'].items():coefficients[t]=coefficients.get(t,F())+w*F(a)
  coefficients={t:a for t,a in coefficients.items() if a}
  check(seen==set(factors),'unused affine source')
  check(constant==F(row['sum']['constant']) and coefficients=={t:F(a) for t,a in row['sum']['coefficients'].items()},'changed affine sum')
  coefficient=coefficients[target];check((coefficient>0) if side=='lo' else (coefficient<0),'affine isolated coefficient')
  check(set(row['box'])==set(coefficients)-{target},'incomplete affine bound box')
  ceiling=constant
  for t,a in coefficients.items():
   if t==target:continue
   bounds=row['box'][t]
   for ss in ('lo','hi'):
    endpoint=bounds[ss];source=records[endpoint['ref']]
    check((source['triangle'],source['side'],F(source['value']))==(t,ss,F(endpoint['value'])),'unproved affine bound endpoint')
   check(F(bounds['lo']['value'])<=F(bounds['hi']['value']),'reversed affine bound box')
   ceiling+=a*F(bounds['hi' if a>0 else 'lo']['value'])
  check(ceiling==F(row['otherCeiling']),'wrong affine other ceiling')
  raw=-ceiling/coefficient;value=down(raw) if side=='lo' else up(raw)
  gain=value-F(row['old']) if side=='lo' else F(row['old'])-value
  check(raw==F(row['raw']) and value==F(row['value']) and gain==F(row['gain'])>0,'wrong affine outward endpoint')
  check(row['id'] not in records,'reused affine endpoint')
  records[row['id']]=row;currentRefs[target,side]=row['id'];stats['affineBounds']+=1
 finalRefs={};signs=dict(one(bb,'c1-final-signs'))
 for t,b,refs in [x for tag,rows in bb if tag=='c1-area-final' for x in rows]:
  finalRefs[t]=refs
  for side in ('lo','hi'):
   check(refs[side]==currentRefs[t,side],'stale final endpoint version')
   row=records[refs[side]];check((row['triangle'],row['side'],F(row['value']))==(t,side,F(b[side])),'unproved/stale final endpoint');stats['finalEndpoints']+=1
 factors={name:parse(pp) for name,pp in [x for tag,rows in bb if tag=='c1-physical-factors' for x in rows]}
 check(len(factors)==len([x for tag,rows in bb if tag=='c1-physical-factors' for x in rows]),'duplicate primitive factor')
 ref=one(bb,'c1-refinement-metadata')[0] if any(tag=='c1-refinement-metadata' for tag,_ in bb) else None
 for rid,row in initial:
  witness=row['witness']
  if witness[0] not in ('ancestor_area','earlier_area'):continue
  if witness[0]=='ancestor_area':
   _,node,source=witness;check(meta.get('parentAreaRef')=={'node':node},'unstated scalar ancestor');ancestorFile=node+'.md'
  else:
   _,node,source,t,side,value=witness;check((t,side,F(value))==(row['triangle'],row['side'],F(row['value'])),'changed earlier scalar endpoint');ancestorFile=meta['areaAncestors'][node]
  parent=context(ancestorFile);t=row['triangle'];side=row['side'];ancestor=parent['records'][source]
  check(parent['meta']['id']==node and all(meta[k]==parent['meta'][k] for k in ('cap','fan','labels')),'incompatible scalar ancestor')
  retained_premises(meta,parent['meta'])
  check(signs[t]==parent['signs'][t],'changed inherited area orientation')
  check(parent['finalRefs'][t][side]==source,'scalar ancestor reference is not its final endpoint')
  check((ancestor['triangle'],ancestor['side'],F(ancestor['value']))==(t,side,F(row['value'])),'incorrect inherited scalar endpoint');stats['ancestorEndpoints']+=1
 result={'blocks':bb,'meta':meta,'factors':factors,'ref':ref,'finalBox':None,'records':records,'finalRefs':finalRefs,'signs':signs}
 contexts[file]=result
 contextActive.remove(file)
 return result

def endpoint_lines(p,target,box):
 check(all(len(m)==len(set(m)) for m in p),'refinement factor must be multiaffine')
 support=sorted({i for m in p for i in m});check(target in support,'absent refinement coordinate')
 others=[i for i in support if i!=target];out=set()
 for bs in product((0,1),repeat=len(others)):
  at={i:box[i][b] for i,b in zip(others,bs)};aa=bb=F()
  for m,a in p.items():
   for i in m:
    if i!=target:a*=at[i]
   if target in m:aa+=a
   else:bb+=a
  out.add((aa,bb))
 return out
def hull(lines,old):
 possible=[]
 for a,b in lines:
  lo,hi=old
  if a>0:lo=max(lo,-b/a)
  elif a<0:hi=min(hi,-b/a)
  elif b<0:continue
  if lo<=hi:possible.append((lo,hi))
 return (min(a for a,b in possible),max(b for a,b in possible)) if possible else None
def refinement(file,active=None):
 ctx=context(file)
 if ctx['finalBox'] is not None:return ctx['finalBox']
 active=set() if active is None else set(active);check(file not in active,'circular coordinate stage');active.add(file)
 meta=ctx['meta'];ref=ctx['ref'];check(ref is not None,'missing referenced refinement')
 box=[tuple(map(F,b)) for b in meta['box']]
 if meta.get('parentBoxRef'):
  parentfile=meta['parentBoxRef']['node']+'.md';parent=context(parentfile);pb=refinement(parentfile,active)
  check(meta['areaBox']==[[str(a),str(b)] for a,b in pb],'incorrect inherited parent box')
  retained_premises(meta,parent['meta'])
  check(all(a<=c<=d<=b for (a,b),(c,d) in zip(pb,box)),'child box outside inherited parent box')
 seen=set()
 for row in ref.get('globalBounds',[]):
  packet=row.get('packet',meta['cap']+'-'+meta['fan']+'-coordinate-lp.json');index=row['certificate'];check((packet,index) not in seen,'reused global endpoint');seen.add((packet,index))
  cert=packets[packet][index];j=cert['coordinate'];side=cert['side'];value=down(F(cert['value'])) if side=='lo' else up(F(cert['value']))
  check((row['coordinate'],row['side'],F(row['endpoint']))==(j,side,value),'global endpoint transcription')
  a,b=box[j];box[j]=(max(a,value),b) if side=='lo' else (a,min(b,value));check(box[j][0]<=box[j][1],'empty global intersection')
 for row in one(ctx['blocks'],'c1-coordinate-updates'):
  p=ctx['factors'][row['factor']];j=row['target'];check(tuple(map(F,row['old']))==box[j],'stale physical endpoint')
  lines=endpoint_lines(p,j,box);printed=list(map(lambda z:tuple(map(F,z)),row['lines']));check(len(set(printed))==len(printed) and set(printed)==lines,'incomplete endpoint lines')
  raw=hull(lines,box[j]);check(raw is not None and tuple(map(F,row['raw']))==raw,'wrong endpoint hull')
  new=tuple(map(F,row['new']));check(new==(max(box[j][0],down(raw[0])),min(box[j][1],up(raw[1]))),'wrong outward refinement');box[j]=new;stats['coordinateUpdates']+=1
 check(box==list(zip(map(F,ref['low']),map(F,ref['high']))),'wrong final coordinate box')
 term=ref['contradiction']
 if term:
  p=ctx['factors'][term['factor']]
  if term['kind']=='negative-constant':check(set(p)<=set([()]) and p.get((),F())==F(term['value'])<0,'wrong constant contradiction')
  else:
   check(term['kind']=='empty-endpoint-union','unknown interval terminal');j=term['target'];check(tuple(map(F,term['old']))==box[j],'stale interval terminal')
   lines=endpoint_lines(p,j,box);check(set(map(lambda z:tuple(map(F,z)),term['lines']))==lines and hull(lines,box[j]) is None,'nonempty terminal interval')
  stats['intervalTerminals']+=1
 ctx['finalBox']=box;return box

def combination(file,kind,cert,rows,printed):
 ctx=context(file);box=refinement(file);check([tuple(map(F,b)) for b in cert['box']]==box,'combination box is unproved')
 total={};cache={}
 for row in rows:
  weight=row['weight'];check(isinstance(weight,int) and weight>0,'nonpositive/noninteger combination weight');factor=const(1)
  if 'square' in row:
   check('atoms' not in row,'ambiguous square factor');root=parse(row['square']);check(bool(root),'empty square root')
   factor=mul(root,root);multiplier=row['multiplier'];atoms=[] if multiplier is None else multiplier if isinstance(multiplier,list) else [multiplier]
   stats['squaredFactors']+=1
  else:atoms=row['atoms']
  for atom in atoms:
   if atom not in cache:
    if re.fullmatch(r'L\d+',atom):
     index=int(atom[1:]);check(index<28,'invalid endpoint factor');j=index//2;cache[atom]=scale(var(j),box[j][1]-box[j][0]) if index%2==0 else add(const(box[j][1]-box[j][0]),scale(var(j),-(box[j][1]-box[j][0])))
    else:cache[atom]=translate(ctx['factors'][atom],box)
   factor=mul(factor,cache[atom])
  total=add(total,scale(factor,weight));stats['positiveFactors']+=1
 if kind=='c1-coordinate-certificate':
  j=cert['coordinate'];sg=1 if cert['side']=='hi' else -1;total=add(total,scale(var(j),sg*cert['objectiveWeight']))
 check(total==printed,'incorrect expanded integer polynomial sum')
 upper=total.get((),F())+sum(a for m,a in total.items() if m and a>0)
 check(upper==F(cert['upper']),'incorrect positive-power ceiling')
 if kind=='c1-physical-certificate':check(upper<0,'nonnegative polynomial terminal');stats['polynomialTerminals']+=1
 else:
  bound=upper/cert['objectiveWeight'];yb=bound if cert['side']=='hi' else -bound;j=cert['coordinate'];value=box[j][0]+(box[j][1]-box[j][0])*yb
  check(value==F(cert['value']),'wrong global coordinate endpoint');stats['globalEndpoints']+=1

for packet,file,count in metadata['commonBounds']:
 ctx=context(file);cc=combinations(ctx['blocks']);check(len(cc)==count,'global certificate count');packets[packet]=[]
 for kind,cert,rows,printed in cc:
  check(kind=='c1-coordinate-certificate','global certificate kind');combination(file,kind,cert,rows,printed);packets[packet].append(cert)
for node,file in metadata.get('parentStages',[]):refinement(file)
for name,kind,file in one(index,'c1-leaves'):
 ctx=context(file)
 if ctx['ref'] is not None:refinement(file)
 for tag,cert,rows,printed in combinations(ctx['blocks']):combination(file,tag,cert,rows,printed)
stats['contexts']=len(contexts)
print(json.dumps({'scope':'literal arithmetic only; geometry, source validity and case coverage require separate review','counts':dict(stats)},sort_keys=True))
