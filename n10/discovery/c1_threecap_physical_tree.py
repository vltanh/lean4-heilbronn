import importlib.util,sys,json,subprocess,time
from pathlib import Path
spec=importlib.util.spec_from_file_location('P',Path(__file__).with_name('c1_threecap_physical_search.py'));P=importlib.util.module_from_spec(spec);spec.loader.exec_module(P)
R=P.ROOT
state=json.loads((R/'state.json').read_text())
save=R/'physical-tree.json'
tree=json.loads(save.read_text()) if save.exists() else {'nodes':{},'queue':state['queue']}
processed=0;start=time.time()
while tree['queue'] and processed<int(sys.argv[1] if len(sys.argv)>1 else 100):
    node=tree['queue'].pop(0);name=node['id']
    dest=R/(name+'.json')
    if not dest.exists():
        dest.write_text(json.dumps(node));subprocess.run(['node',str(Path(__file__).with_name('c1_threecap_physical_node.js')),str(dest)],check=True)
    data=json.loads(dest.read_text())
    if data['terminal']:
        tree['nodes'][name]={'kind':'geometry',**node};print(name,'GEOMETRY',data['terminal'],flush=True)
    elif data['area']['end']:
        tree['nodes'][name]={'kind':'area',**node};print(name,'AREA',len(data['area']['updates']),flush=True)
    else:
        P.run(name)
        proof=R/(name+'-physical-cert.json');ref=json.loads((R/(name+'-physical-refine.json')).read_text())
        if ref['contradiction'] or proof.exists():
            tree['nodes'][name]={'kind':'physical',**node};print(name,'CLOSED',flush=True)
        else:
            mom=R/(name+'-physical-moments.json')
            if mom.exists():
                cuts=json.loads(mom.read_text())['cuts'];cut=cuts[0][1] if cuts else None
            else:cut=next((t for t in data['polynomials'] if t not in data['signs']),None)
            if cut is None:
                tree['nodes'][name]={'kind':'open',**node};print(name,'OPEN FULL SIGN',flush=True)
            else:
                tree['nodes'][name]={'kind':'split','triangle':cut,**node}
                tree['queue'] += [{'id':name+suf,'assign':{**node['assign'],cut:sg}} for suf,sg in [('m',-1),('p',1)]]
                print(name,'SPLIT',cut,flush=True)
    processed+=1;save.write_text(json.dumps(tree))
    print('PROGRESS',processed,'nodes',len(tree['nodes']),'queued',len(tree['queue']),'seconds',round(time.time()-start,1),flush=True)
