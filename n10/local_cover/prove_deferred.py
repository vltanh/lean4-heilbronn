#!/usr/bin/env python3
"""Generate exact LP covers for a finite, explicit deferred-root inventory."""
import argparse
from concurrent.futures import ProcessPoolExecutor
import hashlib
import json
from pathlib import Path

from lp_cover import prove, replay, require


def sha(path):return hashlib.sha256(Path(path).read_bytes()).hexdigest()


def parse_journal(path):
    out=[]
    for line in Path(path).read_text().splitlines():
        left,right=line.split('|')
        parts=list(map(int,left.split()));free=list(map(int,right.split()))
        require(len(parts)==7 and len(free)==4,'N root journal record')
        out.append({'pattern':parts[0],'anchors':parts[1:],'free':free})
    return out


def task(args):
    root,outdir,max_nodes=args
    name='N_'+str(root['pattern'])+'_'+'_'.join(map(str,root['free']))+'.json'
    path=Path(outdir)/name
    if path.exists():
        data=json.loads(path.read_text())
        require(data['anchors']==root['anchors'] and data['free']==root['free'],'existing root identity')
        replay(data)
    else:
        data=prove(root['anchors'],root['free'],max_nodes=max_nodes,progress=1000)
        path.write_text(json.dumps(data,separators=(',',':'))+'\n')
        require(data['status']=='COMPLETE','root remains unresolved')
        replay(data)
    entry={**root,'certificate':str(path),'sha256':sha(path),'nodes':len(data['nodes']),
           'counts':data['counts'],'status':'COMPLETE'}
    print('ROOT_CERTIFIED',root['pattern'],root['free'],'nodes',len(data['nodes']),flush=True)
    return entry


def main():
    parser=argparse.ArgumentParser()
    parser.add_argument('journals',nargs='+');parser.add_argument('--output-dir',required=True)
    parser.add_argument('--manifest',required=True);parser.add_argument('--workers',type=int,default=2)
    parser.add_argument('--max-nodes',type=int,default=10000)
    args=parser.parse_args();require(1<=args.workers<=2,'at most two workers')
    Path(args.output_dir).mkdir(parents=True,exist_ok=True)
    inventory={}
    for journal in args.journals:
        for root in parse_journal(journal):
            key=tuple(root['anchors']+root['free'])
            if key in inventory:require(inventory[key]==root,'conflicting pattern identity')
            inventory[key]=root
    roots=sorted(inventory.values(),key=lambda x:(x['pattern'],x['free']))
    require(bool(roots),'nonempty root inventory')
    with ProcessPoolExecutor(max_workers=args.workers) as pool:
        entries=list(pool.map(task,[(r,args.output_dir,args.max_nodes) for r in roots]))
    manifest={'schema':'heilbronn-n10-deferred-lp-manifest-v1','status':'ALL_LISTED_ROOTS_CERTIFIED',
              'scope':'Only the exact listed N roots; global enumeration must separately cover every other root.',
              'journals':[{'path':j,'sha256':sha(j),'records':len(parse_journal(j))} for j in args.journals],
              'generator':{'path':'n10/local_cover/lp_cover.py','sha256':sha(Path(__file__).with_name('lp_cover.py'))},
              'count':len(entries),'roots':entries}
    Path(args.manifest).write_text(json.dumps(manifest,indent=2)+'\n')
    print('DEFERRED_INVENTORY_CERTIFIED',len(entries),'nodes',sum(x['nodes'] for x in entries),flush=True)

if __name__=='__main__':main()
