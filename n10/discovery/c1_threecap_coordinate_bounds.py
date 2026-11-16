import importlib.util,json,sys,time
from pathlib import Path
spec=importlib.util.spec_from_file_location('P',Path(__file__).with_name('c1_threecap_physical_search.py'));P=importlib.util.module_from_spec(spec);spec.loader.exec_module(P)
R=P.ROOT
name=sys.argv[1] if len(sys.argv)>1 else 'root'
data=json.loads((R/(name+'.json')).read_text());src,box,ref=P.refine(data,8)
mat,desc,polys=P.columns(src,box)
print('matrix',name,mat.shape,flush=True)
certs=[]
for j in list(map(int,sys.argv[2:])) or range(14):
    for side,sgn in [('lo',-1),('hi',1)]:
        obj=P.np.zeros(len(P.MON));obj[P.MI[(j,)]]=-sgn
        res=P.linprog(obj,A_ub=-mat,b_ub=P.np.zeros(mat.shape[0]),bounds=[(1,1)]+[(0,1)]*(len(P.MON)-1),method='highs',options={'time_limit':20})
        if res.status!=0:
            print(j,side,'status',res.status,flush=True);continue
        ws=-res.ineqlin.marginals
        best=None
        for scale in (1000,10000,100000,1000000):
            selected=[(i,int(round(scale*w))) for i,w in enumerate(ws) if w>0 and round(scale*w)>0]
            pp=P.add(P.sc(P.v(j),sgn*scale),*(P.sc(polys[i],w) for i,w in selected))
            bound=(pp.get((),P.F())+sum(a for m,a in pp.items() if m and a>0))/scale
            ybound=bound if side=='hi' else -bound
            value=box[j][0]+(box[j][1]-box[j][0])*ybound
            gain=(value-box[j][0]) if side=='lo' else (box[j][1]-value)
            if best is None or gain>best['gain']:
                best={'gain':gain,'coordinate':j,'side':side,'value':str(value),'objectiveWeight':scale,'factors':[{'weight':w,'atoms':desc[i]} for i,w in selected],'sum':{','.join(map(str,m)):str(a) for m,a in pp.items()},'upper':str(bound*scale),'box':[[str(a),str(b)] for a,b in box]}
        print(data['vars'][j],side,'numerical',res.x[P.MI[(j,)]],'exact',best['value'],'gain',float(best['gain']),'terms',len(best['factors']),flush=True)
        if best['gain']>P.F(1,10000):
            best['gain']=str(best['gain']);certs.append(best)
    (R/(name+'-coordinate-lp.json')).write_text(json.dumps(certs))
