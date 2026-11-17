"""Independent geometry, source, scalar, box and cover review of C1 tables.

This establishes source, box and terminal arithmetic semantics.
The count-specific coverage pass checks every branch and terminal.
"""
from pathlib import Path
from fractions import Fraction as F
from collections import Counter, defaultdict
import json
import re
import sys
from itertools import permutations,combinations
from c1_contact_geometry_independent import Geometry, audit_scalar_updates, bary_value
from c1_contact_factors_independent import Sources
from audit_c1_two_central_three_caps import (
    Audit, add, multiply, scale, constant, variable, parse_poly, term_rows, down, up,
    canonical, key,
)


def sequence(file):
    return [(tag,[json.loads(line) for line in text.splitlines() if line.strip()])
            for tag,text in re.findall(r'^```([^\n]+)\n(.*?)^```\s*$',file.read_text(),re.M|re.S)]


def read_blocks(file):
    result = defaultdict(list)
    for tag, text in re.findall(r'^```([^\n]+)\n(.*?)^```\s*$', file.read_text(), re.M | re.S):
        result[tag] += [json.loads(line) for line in text.splitlines() if line.strip()]
    return result


def one(blocks, tag):
    assert len(blocks[tag]) == 1
    return blocks[tag][0]


class PartialAudit:
    def __init__(self, root):
        self.root = Path(root)
        self.cache = {}
        self.active = set()
        self.stats = Counter()
        self.boxes = {}
        self.refining = set()
        self.packets = {}

    def premises(self, child, parent):
        assert all(child[k]==parent[k] for k in ('cap','fan','labels'))
        assert child.get('domain')==parent.get('domain')
        assert all(child['assign'].get(t)==sg for t,sg in parent['assign'].items())
        if parent.get('caseBox'):
            assert child.get('caseBox')
            assert all(F(a)<=F(c)<=F(d)<=F(b) for (a,b),(c,d) in zip(parent['caseBox'],child['caseBox']))

    def input_box(self, file, meta, geo):
        proved=geo.coarse_box()
        if meta.get('caseBox'):
            assert len(meta['caseBox'])==14
            proved=[(max(a,F(c)),min(b,F(d))) for (a,b),(c,d) in zip(proved,meta['caseBox'])]
        if meta.get('boxSources'):
            for source in meta['boxSources']:
                parent=self.context(source);self.premises(meta,parent['meta'])
                bounds=self.refinement(source)
                proved=[(max(a,c),min(b,d)) for (a,b),(c,d) in zip(proved,bounds)]
            assert not meta.get('parentBoxRef') and not meta.get('areaBox')
        elif meta.get('parentBoxRef'):
            source=meta['parentBoxRef']['node']+'.md'
            parent=self.context(source);self.premises(meta,parent['meta'])
            assert parent['meta']['id']==meta['parentBoxRef']['node']
            assert meta['parentBoxRef']['refinement']==meta['parentBoxRef']['node']+'-physical-refine.json'
            bounds=self.refinement(source)
            assert meta['areaBox']==[[str(a),str(b)] for a,b in bounds]
            proved=[(max(a,c),min(b,d)) for (a,b),(c,d) in zip(proved,bounds)]
        else:assert not meta.get('areaBox'),'unnamed conditional input box'
        for packet,index in meta.get('inputCertificates',[]):
            assert type(index) is int and 0<=index<len(self.packets[packet])
            cert,source=self.packets[packet][index]
            self.premises(meta,source)
            j,side=cert['coordinate'],cert['side']
            value=down(F(cert['value'])) if side=='lo' else up(F(cert['value']))
            lo,hi=proved[j]
            proved[j]=(max(lo,value),hi) if side=='lo' else (lo,min(hi,value))
        # A historically weaker printed box remains a valid enclosure.
        assert all(a<=c<=d<=b for (a,b),(c,d) in zip(geo.box,proved)),('unproved input box',file)
        self.stats['provedInputBoxes']+=1

    def context(self, file):
        if file in self.cache:
            return self.cache[file]
        assert file not in self.active
        self.active.add(file)
        b = read_blocks(self.root / file)
        meta = one(b, 'c1-node')
        geo = Geometry(meta)
        self.input_box(file,meta,geo)
        known = geo.geometry(b['c1-geometry'], b['c1-final-signs'])
        self.stats['contexts'] += 1
        self.stats['signDeductions'] += len(b['c1-geometry'])
        if b.get('c1-geometric-terminal', [None])[0] is not None:
            geo.terminal(known, one(b, 'c1-geometric-terminal'))
            self.stats['geometricTerminals'] += 1
        initial = {}
        def ancestor(triangle, side, witness):
            if witness[0]=='earlier_area':
                assert len(witness)==6
                _,node,reference,t,d,value=witness
                assert (t,d)==(triangle,side)
                parent=self.context(meta['areaAncestors'][node])
            else:
                assert witness[0] == 'ancestor_area' and len(witness) == 3
                _, node, reference = witness
                assert meta['parentAreaRef'] == {'node': node}
                parent = self.context(node + '.md')
            pmeta = parent['meta']
            self.premises(meta,pmeta)
            assert known[triangle] == parent['known'][triangle]
            row = parent['records'][reference]
            assert (row['triangle'], row['side']) == (triangle, side)
            assert parent['finalRefs'][triangle][side] == reference
            if witness[0]=='earlier_area':assert F(value)==F(row['value'])
            self.stats['ancestorEndpoints'] += 1
            return F(row['value'])
        for reference, row in b['c1-area-initial']:
            assert reference not in initial
            assert geo.initial_value(known, row['triangle'], row['side'], row['witness'], ancestor) == F(row['value']), (file, reference)
            initial[reference] = row
            self.stats['initialBounds'] += 1
        relations = {}; relation_witnesses = {}
        for index, relation, witness in b['c1-area-relations']:
            assert index not in relations
            geo.relation(known, relation, witness)
            relations[index] = relation
            relation_witnesses[index] = (relation, witness)
            self.stats['scalarRelations'] += 1
        records = audit_scalar_updates(initial, b['c1-area-updates'], relations)
        self.stats['scalarUpdates'] += len(b['c1-area-updates'])
        current={(row['triangle'],row['side']):reference for reference,row in records.items()}
        for row in b['c1-affine-bounds']:
            from c1_contact_affine_independent import audit_bound
            assert row['id'] not in records
            self.stats['affineBoundFactors']+=audit_bound(row,relations,records,current)
            records[row['id']]=row
            current[row['triangle'],row['side']]=row['id']
            self.stats['affineBounds']+=1
        final_refs = {}; final_bounds = {}
        for triangle, values, refs in b['c1-area-final']:
            assert triangle not in final_refs
            final_refs[triangle] = refs
            final_bounds[triangle] = values
            for side in ('lo', 'hi'):
                row = records[refs[side]]
                assert (row['triangle'], row['side'], F(row['value'])) == (triangle, side, F(values[side]))
                assert refs[side]==current[triangle,side],'nonfinal immutable endpoint'
        if b['c1-area-end']:
            end = one(b, 'c1-area-end')
            if end:
                if end.get('kind') == 'bary_budget':
                    relation = relations[end['relation']]
                    assert relation[0] == 'bary'
                    outer, fans = relation[3:]
                    refs = [records[s] for s in end['sources']]
                    assert [(r['triangle'], r['side']) for r in refs] == [(outer, 'hi')]+[(t, 'lo') for t in fans]
                    assert F(end['value']) == F(refs[0]['value'])-sum(F(r['value']) for r in refs[1:]) < 0
                elif end.get('kind') == 'bary_zero':
                    relation = relations[end['relation']]
                    assert relation[0] == 'bary' and relation[1] is None
                    value = bary_value(relation, records, end['sources'], end['side'])
                    assert value == F(end['value']) and (value > 0 if end['side'] == 'lo' else value < 0)
                else:
                    lower, upper = records[end['lower']], records[end['upper']]
                    assert (lower['triangle'], lower['side']) == (end['triangle'], 'lo')
                    assert (upper['triangle'], upper['side']) == (end['triangle'], 'hi')
                    assert F(lower['value']) > F(upper['value'])
                self.stats['scalarTerminals'] += 1
        sources = Sources(geo, known, final_bounds, relation_witnesses)
        seen_factors = set();physical={}
        for name, terms in b['c1-physical-factors']:
            assert name not in seen_factors
            seen_factors.add(name)
            printed = {}
            for monomial, coefficient in terms:
                monomial = tuple(monomial)
                assert monomial == tuple(sorted(monomial)) and all(isinstance(i, int) and 0 <= i < 14 for i in monomial)
                assert monomial not in printed and F(coefficient)
                printed[monomial] = F(coefficient)
            assert sources.source(name) == printed, (file, name)
            physical[name]=printed
            self.stats['physicalSources'] += 1
        result = {'meta': meta, 'known': known, 'records': records, 'finalRefs': final_refs,
                  'geo':geo,'blocks':b,'physical':physical,'relations':relations}
        self.cache[file] = result
        self.active.remove(file)
        return result

    def refinement(self,file):
        if file in self.boxes:return self.boxes[file]
        assert file not in self.refining,'cyclic coordinate ancestry'
        self.refining.add(file);ctx=self.context(file);meta=ctx['meta'];b=ctx['blocks']
        ref=one(b,'c1-refinement-metadata');box=ctx['geo'].box.copy();seen=set()
        for row in ref.get('globalBounds',[]):
            packet=row.get('packet',meta['cap']+'-'+meta['fan']+'-coordinate-lp.json');i=row['certificate']
            assert (packet,i) not in seen;seen.add((packet,i))
            assert type(i) is int and 0<=i<len(self.packets[packet])
            cert,source=self.packets[packet][i];assert source['assign']=={} and not source.get('caseBox')
            assert all(source[k]==meta[k] for k in ('cap','fan','labels'))
            assert source.get('domain')==meta.get('domain')
            j=cert['coordinate'];side=cert['side'];value=down(F(cert['value'])) if side=='lo' else up(F(cert['value']))
            assert (row['coordinate'],row['side'],F(row['endpoint']))==(j,side,value)
            lo,hi=box[j];box[j]=(max(lo,value),hi) if side=='lo' else (lo,min(hi,value));assert box[j][0]<=box[j][1]
        for row in b['c1-coordinate-updates']:
            j=row['target'];assert type(j) is int and 0<=j<14
            assert tuple(map(F,row['old']))==box[j]
            lines=Audit.endpoint_lines(self,ctx['physical'][row['factor']],j,box)
            printed=[tuple(map(F,line)) for line in row['lines']]
            assert set(printed)==lines and len(printed)==len(lines)
            raw=Audit.hull(self,lines,box[j]);assert raw is not None and tuple(map(F,row['raw']))==raw
            rounded=max(box[j][0],down(raw[0])),min(box[j][1],up(raw[1]))
            assert tuple(map(F,row['new']))==rounded
            box[j]=rounded;self.stats['coordinateUpdates']+=1
        assert box==list(zip(map(F,ref['low']),map(F,ref['high'])))
        terminal=ref['contradiction']
        if terminal:
            poly=ctx['physical'][terminal['factor']]
            if terminal['kind']=='negative-constant':assert set(poly)<=set([()]) and poly.get((),F())==F(terminal['value'])<0
            else:
                assert terminal['kind']=='empty-endpoint-union';j=terminal['target'];assert tuple(map(F,terminal['old']))==box[j]
                lines=Audit.endpoint_lines(self,poly,j,box);printed=[tuple(map(F,row)) for row in terminal['lines']]
                assert set(printed)==lines and len(printed)==len(lines) and Audit.hull(self,lines,box[j]) is None
            self.stats['intervalTerminals']+=1
        self.boxes[file]=box;self.refining.remove(file);return box

    def combinations(self,file):
        rows=sequence(self.root/file)
        for i,(tag,data) in enumerate(rows):
            if tag not in ('c1-coordinate-certificate','c1-physical-certificate'):continue
            assert len(data)==1 and rows[i+1][0]=='c1-combination' and rows[i+2][0]=='c1-shifted-polynomial'
            yield tag,data[0],rows[i+1][1],parse_poly(term_rows(rows[i+2][1]))

    def combination(self,file,tag,cert,rows,printed):
        ctx=self.context(file);box=self.refinement(file)
        assert [tuple(map(F,pair)) for pair in cert['box']]==box and all(lo<hi for lo,hi in box)
        total={};atoms={}
        for row in rows:
            weight=row['weight'];assert type(weight) is int and weight>0
            if 'square' in row:
                assert 'atoms' not in row;root=parse_poly(term_rows(row['square']));assert root
                term=multiply(root,root);mult=row['multiplier'];names=[] if mult is None else mult if isinstance(mult,list) else [mult]
            else:term=constant(1);names=row['atoms'];assert names
            for name in names:
                if name not in atoms:
                    if re.fullmatch(r'L[0-9]+',name):
                        index=int(name[1:]);assert 0<=index<28;j=index//2
                        atom=add(variable(j),constant(-box[j][0])) if index%2==0 else add(constant(box[j][1]),scale(variable(j),-1))
                    else:atom=ctx['physical'][name]
                    atoms[name]=Audit.translate(self,atom,box)
                term=multiply(term,atoms[name])
            total=add(total,scale(term,weight));self.stats['positiveProducts']+=1
        if tag=='c1-coordinate-certificate':
            j=cert['coordinate'];side=cert['side'];weight=cert['objectiveWeight']
            assert type(j) is int and 0<=j<14 and side in ('lo','hi') and type(weight) is int and weight>0
            total=add(total,scale(variable(j),weight if side=='hi' else -weight))
        assert total==printed,'changed exact polynomial sum'
        ceiling=total.get((),F())+sum(a for m,a in total.items() if m and a>0)
        assert ceiling==F(cert['upper'])
        if tag=='c1-physical-certificate':assert ceiling<0;self.stats['polynomialTerminals']+=1
        else:
            value=box[j][0]+(box[j][1]-box[j][0])*ceiling/weight*(1 if side=='hi' else -1)
            assert value==F(cert['value']);self.stats['globalCertificates']+=1

    def coverage(self,index,metadata):
        assert metadata['count']==[2,2,1,0,0] and metadata['threshold']=='93/1000'
        # Actual OCR has capacity one, so at most one of Y,Z,P,Q
        # precedes R angularly. Their other inward OCR tests follow
        # from the actual convex outer hull. Both independent pair
        # orders leave twelve angular words in each lower fan.
        rho=F(347,500);ceiling=F(8841,10000)*(1-F(93,1000)-F(93,1000)/(1-rho))
        assert ceiling==F(90640879,170000000)<rho
        expected={(fan,''.join(order)) for fan in ('OH','OC') for order in permutations('YZPQR')
                  if order.index('R')<2 and order.index('P')<order.index('Q')
                  and (order.index('Y')<order.index('Z'))==(fan=='OH')}
        assert len(expected)==24
        roots=index['c1-roots'];assert len(roots)==24 and {(r['fan'],r['order']) for r in roots}==expected
        splits={};leaves={};frontier={}
        for name,node,left,right in index['c1-tree']:
            assert name not in splits and node['id']==name and node['kind']=='split'
            splits[name]=(node,left,right)
        for name,kind,file in index['c1-leaves']:
            assert name not in leaves;leaves[name]=(kind,file)
        for node in index['c1-open-frontier']:
            assert node['id'] not in frontier;frontier[node['id']]=node
        assert not(set(splits)&set(leaves) or set(splits)&set(frontier) or set(leaves)&set(frontier))
        visited=set();counts=Counter()
        def visit(name,assign,fan):
            assert name not in visited;visited.add(name)
            if name in splits:
                node,left,right=splits[name];word=node['triangle'];assert len(set(word))==3 and key(word)==word
                assert left==name+'m' and right==name+'p'
                counts['split']+=1
            elif name in leaves:
                kind,file=leaves[name];ctx=self.context(file);node=ctx['meta'];b=ctx['blocks'];assert kind in ('geometry','area','physical','linear')
                if kind=='geometry':assert one(b,'c1-geometric-terminal') is not None,'missing actual geometric terminal '+name
                elif kind=='area':assert one(b,'c1-area-end')
                elif kind=='physical':assert one(b,'c1-refinement-metadata')['contradiction'] or b.get('c1-physical-certificate')
                else:assert b.get('c1-affine-area-certificate')
                counts[kind]+=1
            else:
                node=frontier[name];counts['open']+=1
            assert node['id']==name and node['cap']=='right' and node['fan']==fan and node['assign']==assign and not node.get('caseBox')
            if name in splits:
                assert word not in assign
                for child,sign in ((left,-1),(right,1)):visit(child,{**assign,word:sign},fan)
        for root in roots:
            fan,order=root['fan'],root['order'];assert root['cap']=='right' and root['id']=='right-'+fan+'-'+order
            assign={}
            for a,b in combinations(order,2):
                triangle,orientation=canonical('O'+a+b)
                if triangle not in (key('OYZ'),key('OPQ')):assign[triangle]=orientation
            assert root['assign']==assign
            visit(root['id'],assign,fan)
        assert visited==set(splits)|set(leaves)|set(frontier)
        assert counts['open']==metadata['openCount'] and {k:v for k,v in counts.items() if k!='open'}==metadata['counts']
        assert len(leaves)+len(frontier)==len(splits)+24
        assert type(metadata['complete']) is bool and (not metadata['complete'] or not frontier)
        self.stats['coveredRoots']=24;self.stats['coveredSplits']=len(splits)
        self.stats['closedLeaves']=len(leaves);self.stats['openLeaves']=len(frontier)

    def run(self):
        index=read_blocks(self.root/'INDEX.md');metadata=one(index,'c1-proof-metadata')
        for packet,file,count in metadata['commonBounds']:
            assert packet not in self.packets
            self.packets[packet]=[];items=list(self.combinations(file));assert len(items)==count
            for tag,cert,rows,printed in items:
                assert tag=='c1-coordinate-certificate'
                self.combination(file,tag,cert,rows,printed)
                self.packets[packet].append((cert,self.context(file)['meta']))
        for file in sorted(self.root.glob('*.md')):
            if 'c1-node' not in read_blocks(file):
                continue
            try:
                self.context(file.name)
                blocks=self.cache[file.name]['blocks']
                if 'c1-refinement-metadata' in blocks:self.refinement(file.name)
                if not file.name in {entry[1] for entry in metadata['commonBounds']}:
                    for tag,cert,rows,printed in self.combinations(file.name):self.combination(file.name,tag,cert,rows,printed)
                if blocks.get('c1-affine-area-certificate'):
                    from c1_contact_affine_independent import audit
                    assert len(blocks['c1-affine-area-certificate'])==1
                    ctx=self.cache[file.name]
                    self.stats['affineFactors']+=audit(one(blocks,'c1-affine-area-certificate'),ctx['relations'],ctx['records'])
                    self.stats['affineTerminals']+=1
            except Exception:
                print('FAILED context', file.name, flush=True)
                raise
        self.coverage(index,metadata)
        print('Independent geometry, source, box, arithmetic and coverage review:', dict(self.stats))
        print('Open branches remain; NO CASE EXCLUSION.' if self.stats['openLeaves'] else 'The complete literal case cover passes independent review.')


if __name__ == '__main__':
    root = sys.argv[1] if len(sys.argv) > 1 else Path(__file__).resolve().parent/'C1_TWO_LOWER_TWO_CENTRAL_TABLES'
    PartialAudit(root).run()
