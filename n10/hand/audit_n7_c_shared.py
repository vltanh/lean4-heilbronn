"""Independent complete actual-sign cover of central N7 word C in CA/CB."""
from pathlib import Path
from itertools import product
import json,re,sys
from audit_n7_upper_shared import strict_object
from n7_upper_shared_independent import audit,check,key,L


def read(root):
    root=Path(root)
    def blocks(file):
        return [json.loads(text,object_pairs_hook=strict_object)
                for text in re.findall(r'^```json\n(.*?)\n```',file.read_text(),re.M|re.S)]
    index=blocks(root/'INDEX.md');check(len(index)==1);data=index[0]
    check(data['schema']=='n7-central-C-shared-1' and data['cells']==['CA','CB'] and data['word']=='C')
    stages={};files=data['stage_files'];check(len(files)==len(set(files)))
    for name in files:
        check(Path(name).name==name and name.endswith('.md'))
        for row in blocks(root/name):
            check(set(row)=={'stage_id','record'} and row['stage_id'] not in stages)
            stages[row['stage_id']]=row['record']
    check(len(stages)==data['unique_stage_count'])
    return data,stages


def expand(data,stages):
    leaves={row['id']:row for row in data['leaves']}
    check(len(leaves)==len(data['leaves'])==51)
    splits=data['splits'];check(len(splits)==39 and not set(splits)&set(leaves))
    # The central area-orientation theorem excludes AGP+,DGP+
    # for either AGO sign. All six other sign triples remain.
    words={tuple(signs) for signs in product('+-',repeat=3) if signs[1:]!=('+','+')}
    expected={(cell,tuple(triangle+sign for triangle,sign in zip(('AGO','AGP','DGP'),signs)))
              for cell in ('CA','CB') for signs in words}
    roots=data['roots'];check(len(roots)==12)
    check({(row['cell'],tuple(row['given'])) for row in roots}==expected)
    check(len({row['node'] for row in roots})==12)
    seen=set()
    def visit(name,path,cell):
        check(name not in seen,'repeated or cyclic branch');seen.add(name)
        if name in splits:
            row=splits[name];triangle=row['triangle'];children=row['children']
            check(len(triangle)==len(set(triangle))==3 and set(triangle)<=set(L) and key(triangle)==triangle)
            check(all(key(token[:3])!=triangle for token in path))
            check(len(children)==2 and all(type(child) is str for child in children) and children[0]!=children[1])
            visit(children[0],path+[triangle+'+'],cell)
            visit(children[1],path+[triangle+'-'],cell)
        else:
            check(name in leaves,'missing binary child');leaf=leaves[name]
            check((leaf['cell'],leaf['word'],leaf['given'])==(cell,'C',path))
    for root in roots:visit(root['node'],root['given'],root['cell'])
    check(seen==set(splits)|set(leaves),'unreachable branch')
    check(len(leaves)==len(splits)+len(roots))
    associations={};used=set();packets=[]
    for leaf in data['leaves']:
        prior=[];records=[]
        for index,reference in enumerate(leaf['stages']):
            check(reference in stages);used.add(reference);stage=stages[reference]
            check(stage['id']==index and stage['assumptions']==leaf['given'][:len(stage['assumptions'])])
            scope=(leaf['cell'],leaf['word'],tuple(stage['assumptions']),tuple(prior))
            check(reference not in associations or associations[reference]==scope,'foreign shared-stage ancestry')
            associations[reference]=scope;records.append(stage);prior.append(reference)
        check(records or leaf['terminal']['kind']=='geometry','missing full leaf derivation')
        packets.append({**leaf,'stages':records})
    check(used==set(stages),'unused literal source stage')
    return packets


def run(root):
    data,stages=read(root);packets=expand(data,stages)
    stats=audit(packets,complete=False)
    check(stats['leaves']==51)
    print('Independent complete C cover passes: 12 roots, 39 splits, 51 leaves,',len(stages),'unique stages.')
    return data,stages,stats


if __name__=='__main__':
    root=Path(sys.argv[1]) if len(sys.argv)>1 else Path(__file__).with_name('N7_CENTRAL_COMPLETION_C_TABLES')
    run(root)
