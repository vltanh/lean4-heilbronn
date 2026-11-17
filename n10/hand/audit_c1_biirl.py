"""Fresh exhaustive signed-cover audit for C1 BIIRL and its transpose.

The actual geometry, immutable scalar endpoints, coordinate ancestry and
terminal polynomials are reconstructed by the independent contact reader.
No discovery implementation or author replay is imported.
"""
from collections import Counter
from pathlib import Path
import sys
from audit_c1_contact_semantics import PartialAudit,one
from c1_contact_geometry_independent import key


class BIIRLAudit(PartialAudit):
    def coverage(self,index,metadata):
        assert metadata['domain']=='BIIRL'
        assert metadata['count']==[1,2,1,0,1] and metadata['threshold']=='93/1000'
        splits={};leaves={};frontier={}
        for name,node,left,right in index['c1-tree']:
            assert name not in splits and node['id']==name and node['kind']=='split'
            splits[name]=(node,left,right)
        for name,kind,file in index['c1-leaves']:
            assert name not in leaves;leaves[name]=(kind,file)
        for node in index['c1-open-frontier']:
            assert node['id'] not in frontier;frontier[node['id']]=node
        assert not(set(splits)&set(leaves) or set(splits)&set(frontier) or set(leaves)&set(frontier))
        seen=set();counts=Counter()
        def visit(name,assign):
            assert name not in seen;seen.add(name)
            if name in splits:
                node,left,right=splits[name];word=node['triangle']
                assert len(set(word))==3 and key(word)==word and word not in assign
                assert left==name+'m' and right==name+'p'
                literal=self.context(name+'.md')['meta']
                assert literal['assign']==assign and literal['kind']=='split'
                counts['split']+=1
            elif name in leaves:
                kind,file=leaves[name];context=self.context(file);node=context['meta'];blocks=context['blocks']
                assert kind in ('geometry','area','physical')
                if kind=='geometry':assert one(blocks,'c1-geometric-terminal') is not None
                elif kind=='area':assert one(blocks,'c1-area-end')
                else:assert one(blocks,'c1-refinement-metadata')['contradiction'] or blocks.get('c1-physical-certificate')
                counts[kind]+=1
            else:
                node=frontier[name];counts['open']+=1
            assert node['id']==name and node['assign']==assign and not node.get('caseBox')
            if name in splits:
                for child,orientation in ((left,-1),(right,1)):
                    visit(child,{**assign,word:orientation})
        visit('root',{})
        assert seen==set(splits)|set(leaves)|set(frontier)
        assert len(leaves)+len(frontier)==len(splits)+1
        assert counts['open']==metadata['openCount']
        assert {k:v for k,v in counts.items() if k!='open'}==metadata['counts']
        assert type(metadata['complete']) is bool and (not metadata['complete'] or not frontier)
        self.stats.update(coveredRoots=1,coveredSplits=len(splits),closedLeaves=len(leaves),openLeaves=len(frontier))


if __name__=='__main__':
    root=sys.argv[1] if len(sys.argv)>1 else Path(__file__).resolve().parent/'C1_ONE_LOWER_TWO_CENTRAL_SIDES_TABLES'
    BIIRLAudit(root).run()
