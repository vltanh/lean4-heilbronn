"""Print every retained C1 proof object as literal mathematical tables."""
import json,importlib.util,re
from pathlib import Path
spec=importlib.util.spec_from_file_location('P',Path(__file__).with_name('c1_threecap_physical_search.py'));P=importlib.util.module_from_spec(spec);spec.loader.exec_module(P)
R=P.ROOT
OUT=Path.cwd()/'n10/hand/C1_TWO_CENTRAL_THREE_CAPS_TABLES';OUT.mkdir(exist_ok=True)
read=lambda name:json.loads((R/name).read_text())
def js(x):return json.dumps(x,separators=(',',':'),default=str)
def block(tag,rows):return '```'+tag+'\n'+'\n'.join(js(row) for row in rows)+'\n```\n\n'
def terms(p):return [[list(m),str(a)] for m,a in sorted(p.items())]
def stage(data,required_sources=()):
    ar=data['area'];kn=data['signs'];records={**ar['initial']}
    current={(row['triangle'],row['side']):ref for ref,row in ar['initial'].items()}
    for row in ar['updates']:
        assert row['id'] not in records
        records[row['id']]=row;current[row['triangle'],row['side']]=row['id']
    final=ar.get('final')
    needed=set();todo=list(current.values()) if final else [ar['end']['lower'],ar['end']['upper']]
    byid={row['id']:row for row in ar['updates']}
    while todo:
        ref=todo.pop()
        if ref in needed:continue
        needed.add(ref)
        if ref in byid:todo.extend(byid[ref]['sources'])
        else:assert ref in ar['initial'],ref
    rows=[row for row in ar['updates'] if row['id'] in needed]
    rels={row['relation'] for row in rows}
    for name in required_sources:
        m=re.match(r'^(?:quad|linear|support|area_support|spread)_(\d+)(?:_|$)',name)
        if m:rels.add(int(m[1]))
    # Source names may include area_support_i, while support_i is already covered.
    initial={ref:row for ref,row in ar['initial'].items() if ref in needed}
    text=block('c1-area-initial',[[ref,row] for ref,row in initial.items()])
    text+=block('c1-area-relations',[[i,ar['relations'][i]['rel'],ar['relations'][i]['witness']] for i in sorted(rels)])
    text+=block('c1-area-updates',rows)
    if final:
        for t,b in final.items():
            for side in ('lo','hi'):assert P.F(b[side])==P.F(records[current[t,side]]['value']),(t,side)
        text+=block('c1-area-final',[[t,b,{side:current[t,side] for side in ('lo','hi')}] for t,b in final.items()])
    text+=block('c1-area-end',[ar.get('end')])
    return text
def sources_used(ref,certificates):
    used={r['factor'] for r in ref['trace']}
    if ref['contradiction']:used.add(ref['contradiction']['factor'])
    for cert in certificates:
        used.update(atom for row in cert['factors'] for atom in row['atoms'] if not re.fullmatch(r'L\d+',atom))
    return used
def physical_prefix(data,ref,certificates):
    used=sources_used(ref,certificates);src=P.sources(data,dedup=False)
    assert used<=src.keys(),used-src.keys()
    text=stage(data,used)
    text+=block('c1-physical-factors',[[name,terms(src[name])] for name in sorted(used)])
    text+=block('c1-refinement-metadata',[{k:v for k,v in ref.items() if k!='trace'}])
    text+=block('c1-coordinate-updates',ref['trace'])
    return text
def combination(cert,tag='c1-physical-certificate'):
    text=block(tag,[{k:v for k,v in cert.items() if k not in ('factors','sum','refinement')}])
    text+=block('c1-combination',cert['factors'])
    text+=block('c1-shifted-polynomial',[[list(map(int,m.split(','))) if m else [],a] for m,a in sorted(cert['sum'].items())])
    return text
state=read('state.json');ext=read('physical-tree.json');assert not ext['queue']
nodes={**state['nodes']}
for name,node in ext['nodes'].items():
    assert name not in nodes
    nodes[name]=node
counts={};leaves=[];tree=[]
for name,node in sorted(nodes.items()):
    kind=node['kind'];counts[kind]=counts.get(kind,0)+1
    if kind=='split':tree.append([name,node['triangle'],node['assign'],name+'m',name+'p']);continue
    leaves.append([name,kind,name+'.md'])
    text='# C1 count (0,2,1,1,1): leaf '+name+'\n\n'
    if kind=='physical':
        data=read(name+'.json');ref=read(name+'-physical-refine.json');cert_path=R/(name+'-physical-cert.json')
        cert=json.loads(cert_path.read_text()) if cert_path.exists() else None
        if cert and 'refinement' in cert:ref=cert['refinement']
        meta={'id':name,'kind':kind,'assign':node['assign'],'meshes':data['meshes']}
        text+=block('c1-node',[meta]);text+=block('c1-geometry',data['steps'])
        text+=physical_prefix(data,ref,[] if cert is None else [cert])
        if cert:
            assert not ref['contradiction']
            box=[[str(a),str(b)] for a,b in zip(ref['low'],ref['high'])]
            assert all(P.F(a)<=P.F(c)<=P.F(d)<=P.F(b) for (a,b),(c,d) in zip(cert['box'],box)),name
            text+=combination(cert)
        else:assert ref['contradiction'],name
    else:
        text+=block('c1-node',[{'id':name,**{k:v for k,v in node.items() if k not in ('steps','proof','packet')}}])
        text+=block('c1-geometry',node.get('steps',[]))
        if kind=='geometry':text+=block('c1-geometric-terminal',[node['terminal']])
        elif kind=='area':
            text+=stage({'area':node['proof'],'signs':{}})
        elif kind=='linear':
            packet=node['packet'];st={**packet['stage'],'end':None}
            # This partial scalar stage is already ancestry-pruned for its exact factors.
            text+=block('c1-area-initial',list(st['initial'].items()))
            text+=block('c1-area-relations',[[i,r['rel'],r['witness']] for i,r in enumerate(st['relations'])])
            text+=block('c1-area-updates',st['updates']);text+=block('c1-area-end',[None])
            text+=block('c1-linear-relations',list(packet['relations'].items()))
            text+=block('c1-linear-certificate',[packet['certificate']])
        else:raise ValueError(kind)
    (OUT/(name+'.md')).write_text(text.rstrip()+"\n")
# The universal coordinate bounds have no branch assumptions and precede all leaves.
data=read('root.json');src,box,ref=P.refine(data,8);certs=read('root-coordinate-lp.json')
assert all(all(P.F(x)==y for x,y in zip(b,p)) for b,p in zip(certs[0]['box'],box))
text='# Common C1 physical coordinate bounds\n\n'
text+=block('c1-node',[{'id':'root','kind':'coordinate-bounds','assign':{},'meshes':data['meshes']}])
text+=block('c1-geometry',data['steps']);text+=physical_prefix(data,ref,certs)
for i,cert in enumerate(certs):
    text+='## Bound '+str(i)+'\n\n'+combination(cert,'c1-coordinate-certificate')
(OUT/'common-bounds.md').write_text(text.rstrip()+"\n")
index='# C1 two-central / three-cap fixed proof index\n\n'
index+='The main theorem note and these literal tables together form the argument. All fractions, polynomial factors, endpoints and case children are explicit. A JSON row is tuple notation with named fields; no encoded data, solver result or external certificate is a premise.\n\n'
index+=block('c1-proof-metadata',[{'format':'c1-two-central-three-caps-v1','threshold':'93/1000','labels':data['labels'],'variables':data['vars'],'initialBox':data['box'],'counts':counts,'commonBounds':'common-bounds.md','status':'independent manuscript replay pending'}])
index+='## Nonzero actual-determinant splits\n\n'+block('c1-tree',tree)
index+='## Terminal arguments\n\n'+block('c1-leaves',leaves)
index+='## Table files\n\n[Common coordinate bounds](common-bounds.md).\n\n'
for name,kind,file in leaves:index+=f'- [{name}]({file}): {kind}.\n'
(OUT/'INDEX.md').write_text(index.rstrip()+"\n")
print('EXPORTED',counts,len(leaves),'leaves',len(tree),'splits',sum(p.stat().st_size for p in OUT.glob('*.md')),'bytes')
