"""Second reviewer: fresh Markdown structure scan and targeted rejected mutations.
Usage: python C1_TWO_LOWER_TWO_CENTRAL_NEGATIVE_PROBES.py [BBIIR|BIIRL] [tables]

No discovery files are loaded. Cached mathematical premises come from one full
independent reader run, then exactly one target record is corrupted per probe.
"""
import copy, json, re, sys
from pathlib import Path
from fractions import Fraction as F
from collections import Counter
HAND=Path(__file__).resolve().parent
sys.path.insert(0,str(HAND))
import audit_c1_contact_semantics as semantic
from audit_c1_biirl import BIIRLAudit
from audit_c1_contact_semantics import PartialAudit
from c1_contact_affine_independent import audit_bound, audit as audit_affine_terminal
DOMAIN=sys.argv[1] if len(sys.argv)>1 else 'BBIIR'
assert DOMAIN in ('BIIRL','BBIIR')
ROOT=Path(sys.argv[2]) if len(sys.argv)>2 else HAND/('C1_ONE_LOWER_TWO_CENTRAL_SIDES_TABLES' if DOMAIN=='BIIRL' else 'C1_TWO_LOWER_TWO_CENTRAL_TABLES')

def parse(path):
    text=path.read_text(); blocks={}
    for match in re.finditer(r'^```([^\n]+)\n(.*?)^```[ \t]*$',text,re.M|re.S):
        tag=match.group(1)
        blocks.setdefault(tag,[]).extend(json.loads(row) for row in match.group(2).splitlines() if row.strip())
    return blocks
allb={p.name:parse(p) for p in ROOT.glob('*.md')}
ctx={f:b for f,b in allb.items() if 'c1-node' in b}
assert len(ctx)==(315 if DOMAIN=='BIIRL' else 331)
metas={f:b['c1-node'][0] for f,b in ctx.items()}
records={};current={};counts=Counter();deps={f:set() for f in ctx}
for file,b in ctx.items():
    m=metas[file]
    assert m.get('domain')==('BIIRL' if DOMAIN=='BIIRL' else None) and m['cap']=='right' and m['fan'] in (('OH',) if DOMAIN=='BIIRL' else ('OH','OC'))
    assert m['labels']=='OHCDFYZPQR' and m['outer']==('OCQDFRH' if DOMAIN=='BIIRL' else 'OCRDFH')
    assert m['vars']==['h','c','d','f','u','v','z','w','p','q','r','t','j','k']
    assert not m.get('caseBox')
    rec={};cur={}
    for ref,row in b.get('c1-area-initial',[]):
        assert ref not in rec;rec[ref]=row;cur[row['triangle'],row['side']]=ref
    for row in b.get('c1-area-updates',[]):
        assert row['id'] not in rec and all(s in rec for s in row['sources'])
        rec[row['id']]=row;cur[row['triangle'],row['side']]=row['id']
    for row in b.get('c1-affine-bounds',[]):
        target=(row['triangle'],row['side']);assert row['oldRef']==cur[target]
        assert F(row['old'])==F(rec[row['oldRef']]['value'])
        # Every nested endpoint names an existing earlier immutable record.
        def visit(obj):
            if isinstance(obj,dict):
                if all(k in obj for k in ('ref','triangle','side','value')):
                    r=rec[obj['ref']]
                    assert (r['triangle'],r['side'],F(r['value']))==(obj['triangle'],obj['side'],F(obj['value']))
                    counts['affineEndpointDependencies']+=1
                for v in obj.values():visit(v)
            elif isinstance(obj,list):
                for v in obj:visit(v)
        visit(row)
        assert row['id'] not in rec;rec[row['id']]=row;cur[target]=row['id'];counts['affineOldRefs']+=1
    final={}
    for t,values,refs in b.get('c1-area-final',[]):
        assert t not in final;final[t]=refs
        for side in ('lo','hi'):
            ref=refs[side];assert ref==cur[t,side]
            row=rec[ref];assert (row['triangle'],row['side'],F(row['value']))==(t,side,F(values[side]))
            counts['latestFinalEndpoints']+=1
    records[file]=rec;current[file]=cur
    deps[file].update(m.get('boxSources',[]))
    if m.get('parentBoxRef'):deps[file].add(m['parentBoxRef']['node']+'.md')
    for _,row in b.get('c1-area-initial',[]):
        w=row['witness']
        if w[0]=='earlier_area':deps[file].add(m['areaAncestors'][w[1]])
        elif w[0]=='ancestor_area':deps[file].add(w[1]+'.md')
    counts['contexts']+=1
for file,b in ctx.items():
    child=metas[file]
    for src in deps[file]:
        assert src in metas
        parent=metas[src]
        assert all(child.get(k)==parent.get(k) for k in ('domain','cap','fan','labels'))
        assert all(child['assign'].get(k)==v for k,v in parent['assign'].items())
        counts['retainedScopeLinks']+=1
    for _,row in b.get('c1-area-initial',[]):
        w=row['witness']
        if w[0] not in ('earlier_area','ancestor_area'):continue
        src=child['areaAncestors'][w[1]] if w[0]=='earlier_area' else w[1]+'.md';ref=w[2]
        assert current[src][row['triangle'],row['side']]==ref
        r=records[src][ref]
        assert (r['triangle'],r['side'],F(r['value']))==(row['triangle'],row['side'],F(row['value']))
        counts['ancestorFinalRefs']+=1
active=set();done=set()
def dag(f):
    assert f not in active
    if f in done:return
    active.add(f)
    for src in deps[f]:dag(src)
    active.remove(f);done.add(f)
for f in deps:dag(f)
index=allb['INDEX.md'];metadata=index['c1-proof-metadata'][0]
splits={r[0]:r for r in index['c1-tree']};leaves={r[0]:r for r in index['c1-leaves']}
assert len(splits)==(152 if DOMAIN=='BIIRL' else 185) and len(leaves)==(153 if DOMAIN=='BIIRL' else 209) and not index['c1-open-frontier']
seen=set();kindcounts=Counter()
def cover(name,assign):
    assert name not in seen;seen.add(name)
    if name in splits:
        _,node,left,right=splits[name];assert node['assign']==assign and node['id']==name
        word=node['triangle'];assert word not in assign and len(set(word))==3
        assert left==name+'m' and right==name+'p'
        if name+'.md' in metas:assert metas[name+'.md']['assign']==assign
        cover(left,{**assign,word:-1});cover(right,{**assign,word:1})
    else:
        _,kind,file=leaves[name];m=metas[file];assert m['id']==name and m['assign']==assign
        b=ctx[file]
        if kind=='geometry':assert b['c1-geometric-terminal'][0]
        elif kind=='area':assert b['c1-area-end'][0]
        elif kind=='linear':assert b.get('c1-affine-area-certificate')
        else:assert b['c1-refinement-metadata'][0]['contradiction'] or b.get('c1-physical-certificate')
        kindcounts[kind]+=1
if DOMAIN=='BIIRL':cover('root',{})
else:
    for root in index['c1-roots']:cover(root['id'],root['assign'])
assert seen==set(splits)|set(leaves)
assert kindcounts==Counter({'physical':113,'area':26,'geometry':14} if DOMAIN=='BIIRL' else {'physical':102,'area':26,'geometry':36,'linear':45})
print('FRESH MARKDOWN SCAN PASS',dict(counts),'nodes',len(seen),'leaves',dict(kindcounts),flush=True)

# Preserve all baseline contexts, boxes and global packets to localize corruption.
a=(BIIRLAudit if DOMAIN=='BIIRL' else PartialAudit)(ROOT);a.run();baseline_cache=a.cache.copy();baseline_boxes=a.boxes.copy();baseline_packets=copy.deepcopy(a.packets)
print('BASELINE FRESH REPLAY PASS; starting isolated probes',flush=True)
real_read=semantic.read_blocks
rejected=[]
def probe(name,fn):
    a.cache=baseline_cache.copy();a.boxes=baseline_boxes.copy();a.packets=copy.deepcopy(baseline_packets);a.active=set();a.refining=set()
    try:fn()
    except (AssertionError,KeyError,ValueError,IndexError,TypeError):
        rejected.append(name);print('REJECTED',name,flush=True)
    else:raise AssertionError('ACCEPTED CORRUPTION '+name)
    finally:semantic.read_blocks=real_read

def altered_context(file,change):
    b=copy.deepcopy(baseline_cache[file]['blocks']);change(b)
    semantic.read_blocks=lambda p:b if p.name==file else real_read(p)
    del a.cache[file]
    return a.context(file)
def altered_refinement(file,change):
    c=copy.deepcopy(baseline_cache[file]);change(c['blocks']);a.cache[file]=c;a.boxes.pop(file,None)
    return a.refinement(file)

def find(pred):return next((f,c) for f,c in baseline_cache.items() if pred(f,c))
f,c=find(lambda f,c:bool(c['meta'].get('boxSources') or c['meta'].get('parentBoxRef')) and bool(c['meta']['assign']))
p=baseline_cache[(c['meta'].get('boxSources') or [c['meta']['parentBoxRef']['node']+'.md'])[-1]]['meta']
for field,value in [('domain','BBIIR' if DOMAIN=='BIIRL' else 'BIIRL'),('fan','OC' if c['meta']['fan']=='OH' else 'OH'),('labels','OHCDFY ZPQR')]:
    def test(field=field,value=value):
        child=copy.deepcopy(c['meta']);child[field]=value;a.premises(child,p)
    probe('premise_'+field,test)
# Choose a parent with a nonempty retained actual sign.
f,c=find(lambda f,c:any(baseline_cache[s]['meta']['assign'] for s in (c['meta'].get('boxSources') or ([c['meta']['parentBoxRef']['node']+'.md'] if c['meta'].get('parentBoxRef') else []))))
s=next(s for s in (c['meta'].get('boxSources') or [c['meta']['parentBoxRef']['node']+'.md']) if baseline_cache[s]['meta']['assign']);p=baseline_cache[s]['meta'];t=next(iter(p['assign']))
def bad_sign():
    child=copy.deepcopy(c['meta']);child['assign'][t]*=-1;a.premises(child,p)
probe('ancestor_actual_sign_flipped',bad_sign)

f,c=find(lambda f,c:any(row['witness'][0] in ('earlier_area','ancestor_area') for _,row in c['blocks']['c1-area-initial']))
def missing_ancestor(b):
    row=next(row for _,row in b['c1-area-initial'] if row['witness'][0] in ('earlier_area','ancestor_area'));row['witness'][2]='missing_endpoint'
probe('ancestor_reference_missing',lambda:altered_context(f,missing_ancestor))
f,c=find(lambda f,c:any(any(rr['triangle']==t and rr['side']==side and ref!=refs[side] for ref,rr in c['records'].items()) for t,_,refs in c['blocks']['c1-area-final'] for side in ('lo','hi')))
def stale_final(b):
    for t,values,refs in b['c1-area-final']:
        for side in ('lo','hi'):
            old=next((ref for ref,row in c['records'].items() if row['triangle']==t and row['side']==side and ref!=refs[side]),None)
            if old is not None:
                refs[side]=old;values[side]=c['records'][old]['value'];return
    raise RuntimeError('no stale reference')
probe('final_reference_coherently_stale',lambda:altered_context(f,stale_final))

if DOMAIN=='BIIRL':
 f,c=find(lambda f,c:bool(c['blocks']['c1-affine-bounds']))
 row=copy.deepcopy(c['blocks']['c1-affine-bounds'][0]);r={ref:row0 for ref,row0 in c['blocks']['c1-area-initial']}
 for row0 in c['blocks']['c1-area-updates']:r[row0['id']]=row0
 cur={(v['triangle'],v['side']):k for k,v in r.items()}
 audit_bound(row,c['relations'],r,cur)
 probe('affine_old_reference_missing',lambda:audit_bound({**row,'oldRef':'missing_endpoint'},c['relations'],r,cur))
 probe('affine_old_value_changed',lambda:audit_bound({**row,'old':str(F(row['old'])+F(1,10**6))},c['relations'],r,cur))

f,c=find(lambda f,c:bool(c['blocks']['c1-coordinate-updates']))
def line_changed(b):b['c1-coordinate-updates'][0]['lines'][0][1]=str(F(b['c1-coordinate-updates'][0]['lines'][0][1])+F(1,10**6))
probe('coordinate_line_constant_changed',lambda:altered_refinement(f,line_changed))
probe('coordinate_line_omitted',lambda:altered_refinement(f,lambda b:b['c1-coordinate-updates'][0]['lines'].pop()))
def inward(b):b['c1-coordinate-updates'][0]['new'][0]=str(F(b['c1-coordinate-updates'][0]['new'][0])+F(1,10**6))
probe('coordinate_inward_rounding',lambda:altered_refinement(f,inward))

def badfactor(b):b['c1-physical-factors'][0][1][0][1]=str(F(b['c1-physical-factors'][0][1][0][1])+1)
probe('physical_source_coefficient_changed',lambda:altered_context(f,badfactor))

f,c=find(lambda f,c:bool(c['blocks'].get('c1-physical-certificate')))
tag,cert,rows,poly=next(x for x in a.combinations(f) if x[0]=='c1-physical-certificate')
changed=copy.deepcopy(rows);changed[0]['weight']=-changed[0]['weight']
probe('polynomial_negative_weight',lambda:a.combination(f,tag,cert,changed,poly))
changed2=copy.deepcopy(rows);changed2[0]['atoms']=['L28']
probe('polynomial_invalid_endpoint_factor',lambda:a.combination(f,tag,cert,changed2,poly))
probe('polynomial_factor_omitted',lambda:a.combination(f,tag,cert,rows[1:],poly))
changedpoly=poly.copy();changedpoly[()]=changedpoly.get((),F())+1
probe('polynomial_printed_sum_changed',lambda:a.combination(f,tag,cert,rows,changedpoly))
changedcert=copy.deepcopy(cert);changedcert['box'][0][0]=str(F(changedcert['box'][0][0])+F(1,10**6))
probe('polynomial_certificate_box_changed',lambda:a.combination(f,tag,changedcert,rows,poly))

packet,file,_=metadata['commonBounds'][0]
gtag,gcert,grows,gpoly=next(a.combinations(file))
probe('global_objective_zero_weight',lambda:a.combination(file,gtag,{**gcert,'objectiveWeight':0},grows,gpoly))
probe('global_endpoint_value_changed',lambda:a.combination(file,gtag,{**gcert,'value':str(F(gcert['value'])+F(1,10**6))},grows,gpoly))

if DOMAIN=='BIIRL':
 f,c=find(lambda f,c:bool(c['meta'].get('inputCertificates')))
 def missing_global(b):b['c1-node'][0]['inputCertificates'][0][1]=100000
 probe('global_endpoint_unavailable_index',lambda:altered_context(f,missing_global))

f,c=find(lambda f,c:bool(c['meta'].get('boxSources') or c['meta'].get('parentBoxRef')))
def cyclic(b):
 m=b['c1-node'][0];m['boxSources']=[f];m.pop('parentBoxRef',None);m.pop('areaBox',None)
probe('conditional_box_dependency_cycle',lambda:altered_context(f,cyclic))

# Packet scope is checked again during coordinate inheritance, independently
# of the general premise check above.
f,c=find(lambda f,c:bool(c['blocks'].get('c1-refinement-metadata')) and bool(c['blocks']['c1-refinement-metadata'][0].get('globalBounds')))
globalrow=c['blocks']['c1-refinement-metadata'][0]['globalBounds'][0]
globalpacket=globalrow.get('packet',c['meta']['cap']+'-'+c['meta']['fan']+'-coordinate-lp.json')
def wrong_packet_domain():
    a.packets[globalpacket][globalrow['certificate']][1]['domain']='wrong-domain'
    a.boxes.pop(f,None);a.refinement(f)
probe('global_packet_wrong_domain',wrong_packet_domain)
def missing_packet_index(b):b['c1-refinement-metadata'][0]['globalBounds'][0]['certificate']=100000
probe('refinement_global_certificate_missing',lambda:altered_refinement(f,missing_packet_index))
def wrong_global_endpoint(b):
    row=b['c1-refinement-metadata'][0]['globalBounds'][0];row['endpoint']=str(F(row['endpoint'])+F(1,10**6))
probe('refinement_global_endpoint_changed',lambda:altered_refinement(f,wrong_global_endpoint))

if DOMAIN=='BBIIR':
    f,c=find(lambda f,c:bool(c['blocks'].get('c1-affine-area-certificate')))
    affine=copy.deepcopy(c['blocks']['c1-affine-area-certificate'][0])
    audit_affine_terminal(affine,c['relations'],c['records'])
    changed_affine=copy.deepcopy(affine);changed_affine['factors'][0]['constant']=str(F(changed_affine['factors'][0]['constant'])+1)
    probe('affine_terminal_source_coefficient_changed',lambda:audit_affine_terminal(changed_affine,c['relations'],c['records']))
    negative_affine=copy.deepcopy(affine);negative_affine['weights'][0][1]='-1'
    probe('affine_terminal_negative_weight',lambda:audit_affine_terminal(negative_affine,c['relations'],c['records']))
    probe('affine_terminal_ceiling_changed',lambda:audit_affine_terminal({**affine,'upper':str(F(affine['upper'])-1)},c['relations'],c['records']))

# Cover corruptions reuse already proved contexts; no new arithmetic passes.
for name,change in [
 ('coverage_missing_negative_child',lambda b:b['c1-tree'][0].__setitem__(2,b['c1-tree'][0][3])),
 ('coverage_missing_terminal_leaf',lambda b:b['c1-leaves'].pop()),
 ('coverage_duplicate_terminal_leaf',lambda b:b['c1-leaves'].append(copy.deepcopy(b['c1-leaves'][0]))),
 ('coverage_repeated_split_triangle',lambda b:b['c1-tree'][1][1].__setitem__('triangle',b['c1-tree'][0][1]['triangle']))]:
    def test(change=change):
        b=copy.deepcopy(index);change(b);a.coverage(b,metadata)
    probe(name,test)
f=next(f for _,kind,f in index['c1-leaves'] if kind=='geometry')
def missing_terminal():
    changed=copy.deepcopy(baseline_cache[f]);changed['blocks']['c1-geometric-terminal']=[None];a.cache[f]=changed;a.coverage(index,metadata)
probe('coverage_geometry_terminal_null',missing_terminal)
print('ALL NEGATIVE PROBES REJECTED',len(rejected),json.dumps(rejected),flush=True)
