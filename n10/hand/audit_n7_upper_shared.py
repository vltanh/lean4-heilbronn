"""Independent storage, scope, exact source and coverage audit of N7 CE/EF.

Every shared stage is expanded into each complete local ancestry before
the independent actual-point/Fraction reader checks it. No author checker
or discovery module is imported.
"""
from pathlib import Path
import json,re,sys
from n7_upper_shared_independent import audit,check,key,L


def strict_object(pairs):
    result={}
    for name,value in pairs:
        check(name not in result,'duplicate literal dictionary key')
        result[name]=value
    return result


def read(root):
    root=Path(root)
    def blocks(file):
        return [json.loads(text,object_pairs_hook=strict_object)
                for text in re.findall(r'^```json\n(.*?)\n```',file.read_text(),re.M|re.S)]
    index=blocks(root/'INDEX.md');check(len(index)==1);data=index[0]
    check(data['schema']=='n7-central-shared-1')
    check(data['cell'] in ('CA','CB') and data['words']==['CE','EF'])
    check(data['stage_files']==[data['cell']+'_CE_STAGES.md',data['cell']+'_EF_STAGES.md'])
    stages={}
    for name in data['stage_files']:
        for row in blocks(root/name):
            check(set(row)=={'stage_id','record'} and row['stage_id'] not in stages)
            stages[row['stage_id']]=row['record']
    check(len(stages)==data['unique_stage_count'])
    return data,stages


def expand(data,stages):
    leaves={row['id']:row for row in data['leaves']}
    check(len(leaves)==len(data['leaves']))
    splits=data['splits'];check(not set(splits)&set(leaves))
    check(data['roots']==['other_'+data['cell']+'_'+word for word in data['words']])
    seen=set()
    def visit(name,path,word):
        check(name not in seen,'repeated or cyclic branch');seen.add(name)
        if name in splits:
            row=splits[name];triangle=row['triangle'];children=row['children']
            check(len(triangle)==len(set(triangle))==3 and set(triangle)<=set(L) and key(triangle)==triangle)
            check(all(key(token[:3])!=triangle for token in path))
            check(len(children)==2 and all(type(child) is str for child in children) and children[0]!=children[1])
            visit(children[0],path+[triangle+'+'],word)
            visit(children[1],path+[triangle+'-'],word)
        else:
            check(name in leaves,'missing binary child');leaf=leaves[name]
            check((leaf['cell'],leaf['word'],leaf['given'])==(data['cell'],word,path))
    for word,root in zip(data['words'],data['roots']):visit(root,[],word)
    check(seen==set(splits)|set(leaves),'unreachable branch')
    check(len(leaves)==len(splits)+len(data['roots']))
    associations={};used=set();packets=[]
    for leaf in data['leaves']:
        prior=[];records=[]
        for index,reference in enumerate(leaf['stages']):
            check(reference in stages);used.add(reference);stage=stages[reference]
            check(stage['id']==index and stage['assumptions']==leaf['given'][:len(stage['assumptions'])])
            scope=(leaf['cell'],leaf['word'],tuple(stage['assumptions']),tuple(prior))
            check(reference not in associations or associations[reference]==scope,'foreign shared-stage ancestry')
            associations[reference]=scope;records.append(stage);prior.append(reference)
        check(records,'missing full leaf derivation')
        packets.append({**leaf,'stages':records})
    check(used==set(stages),'unused literal source stage')
    return packets


def run(root):
    data,stages=read(root);packets=expand(data,stages)
    stats=audit(packets,complete=False)
    check(stats['leaves']==len(data['leaves']))
    print('Independent shared cover passes:',len(data['splits']),'splits,',len(packets),'leaves,',len(stages),'unique stages.')
    return data,stages,stats


if __name__=='__main__':
    root=Path(sys.argv[1]) if len(sys.argv)>1 else Path(__file__).with_name('N7_CENTRAL_COMPLETION_CB_UPPER_TABLES')
    run(root)
