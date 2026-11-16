"""Discovery: physical-coordinate nonnegative cubic combinations.

All source triangle intervals come from the replayed C1 actual-area model.
Floating LP weights are accepted only after exact integer reconstruction.
"""
import os
for key in ('OMP_NUM_THREADS','OPENBLAS_NUM_THREADS','MKL_NUM_THREADS'):
    os.environ[key]='1'
import json, sys, time
from pathlib import Path
from collections import defaultdict
from fractions import Fraction as F
from itertools import combinations, combinations_with_replacement, product
import numpy as np
from scipy.optimize import linprog
from scipy.sparse import csr_matrix, hstack, vstack, eye
sys.path.insert(0,str(Path.cwd()/'n10/hand'))
import multiaffine_box as MB
N=14
MON=[()]+[t for k in (1,2,3) for t in combinations_with_replacement(range(N),k)]
MI={m:i for i,m in enumerate(MON)}
ROOT=Path(os.environ.get('C1_PHYSICAL_WORKSPACE','n10/discovery/c1_physical_work'))
def c(x): return {():F(x)} if x else {}
def v(i): return {(i,):F(1)}
def add(*ps):
    out=defaultdict(F)
    for p in ps:
        for m,a in p.items(): out[m]+=a
    return {m:a for m,a in out.items() if a}
def sc(p,a): return {m:a*b for m,b in p.items() if a*b}
def mul(p,q):
    out=defaultdict(F)
    for m,a in p.items():
        for n,b in q.items():out[tuple(sorted(m+n))]+=a*b
    return {m:a for m,a in out.items() if a}
def translate(p,box):
    out={}
    for m,a in p.items():
        term=c(a)
        for i in m:term=mul(term,add(c(box[i][0]),sc(v(i),box[i][1]-box[i][0])))
        out=add(out,term)
    return out
def sources(data,dedup=True):
    s=F(93,1000);polys={t:{tuple(map(int,m.split(','))) if m else ():F(a) for m,a in p.items()} for t,p in data['polynomials'].items()}
    out={}
    for t,sg in data['signs'].items():
        ar=sc(polys[t],sg)
        for side in ('lo','hi'):
            bound=F(data['area']['final'][t][side])
            out[side+'_'+t]=add(ar,c(-bound)) if side=='lo' else add(c(bound),sc(ar,-1))
    h,cc,d,f=map(v,range(4));one=c(1)
    out['order_hd']=add(h,sc(d,-1));out['order_cf']=add(cc,sc(f,-1));out['order_hc']=add(h,sc(cc,-1))
    out['right_support']=add(mul(mul(d,cc),add(one,sc(cc,-1))),c(-s))
    out['left_support']=add(mul(mul(f,h),add(one,sc(h,-1))),c(-s))
    out['top_support']=add(mul(add(one,sc(d,-1)),add(one,sc(f,-1))),c(-s))
    out['central_two']=add(c(1-8*s),sc(mul(add(h,sc(d,-1)),add(cc,sc(f,-1))),-1))
    # Retain actual occupied-quadrilateral lower area bounds, not only their scalar projections.
    labels=data['labels']
    def key(word):return ''.join(sorted(word,key=labels.index))
    def signed(word):
        ids=[labels.index(t) for t in word]
        return data['signs'].get(key(word),0)*(-1)**sum(a>b for i,a in enumerate(ids) for b in ids[i+1:])
    def occupants(word):
        sg=signed(word[:3])
        return [p for p in labels if p not in word and all(signed(word[i]+word[(i+1)%len(word)]+p)==sg for i in range(len(word)))]
    caps={key('HCD'):h,key('HCF'):cc,key('HDF'):add(one,sc(d,-1)),key('CDF'):add(one,sc(f,-1))}
    strong={(0,0):F(9),(0,1):F(9),(0,2):F(139,10),(1,1):F(12),(1,2):F(199,10),(2,2):F(149,5)}
    for i,r in enumerate(data['area']['relations']):
        rr=r['rel']
        if rr[0]=='quad':
            _,a,b,cost=rr
            out['quad_'+str(i)]=add(sc(polys[a],data['signs'][a]),sc(polys[b],data['signs'][b]),c(-F(cost)))
            hull=r['witness'][1];pts=r['witness'][2]
            # Each cap witness yields polynomial consequences of the actual
            # support-triangle theorem and the diagonal area-support identity.
            for rot in range(4):
                A,B,C,D=(hull+hull)[rot:rot+4]
                words=[A+B+C,A+B+D,A+C+D,B+C+D]
                keys=list(map(key,words));X,Y,Z,VV=[sc(polys[t],data['signs'][t]) for t in keys]
                delta=add(Y,sc(Z,-1));los=[F(data['area']['final'][t]['lo']) for t in keys]
                q=F(1142,125) if len(pts)>=2 else F(29,5)
                nz,nv=(sum(p in occupants(word) for p in pts) for word in words[2:])
                if len(pts)==2:q=max(q,strong[tuple(sorted((nz,nv)))])
                elif len(pts)==1:q={(0,0):F(29,5),(0,1):F(149,20),(1,1):F(12)}[tuple(sorted((nz,nv)))]
                floor=max(F(cost),los[0]+los[2],los[1]+los[3])
                minimum=min(los[0]*los[1],los[2]*los[3])
                for axis,idx,other in [('x',0,Y),('y',1,X)]:
                    choices={'scalar':c(F(data['area']['final'][keys[idx]]['hi']))}
                    if keys[idx] in caps:choices['anchor']=caps[keys[idx]]
                    for tag,cap in choices.items():
                        product0=mul(cap,other)
                        name=f'support_{i}_{rot}_{axis}_{tag}'
                        out[name]=add(product0,sc(delta,-q*s))
                        out['area_'+name]=add(product0,sc(delta,-floor),c(-minimum))
            if len(pts)==2 and all(signed(edge+pts[0])*signed(edge+pts[1])==-1 for edge in (hull[0]+hull[2],hull[1]+hull[3])):
                for edge in (hull[0]+hull[2],hull[1]+hull[3]):
                    k0,k1=key(edge[0]+pts),key(edge[1]+pts)
                    # Use signed D(edge endpoint, pair), rather than unsigned areas.
                    def determinant(word):
                        ids=[labels.index(t) for t in word]
                        parity=(-1)**sum(a>b for j,a in enumerate(ids) for b in ids[j+1:])
                        return sc(polys[key(word)],parity)
                    dif=add(determinant(edge[1]+pts),sc(determinant(edge[0]+pts),-1))
                    W=add(sc(polys[a],data['signs'][a]),sc(polys[b],data['signs'][b]))
                    rate=F(6) if set(hull)==set('HCDF') else F(1457,250)
                    for ss in (-1,1):out[f'spread_{i}_{edge}_{ss}']=add(W,c(-rate*s),sc(dif,ss))
        elif rr[0]=='linear':
            _,co,rhs=rr
            out['linear_'+str(i)]=add(c(-F(rhs)),*(sc(polys[t],F(a)*data['signs'][t]) for t,a in co.items()))
    for pent in combinations('OCPDQFRH',5):
        for rev in (False,True):
            seq=''.join(pent)[::(-1 if rev else 1)]
            for rot in range(5):
                A,B,C,D,E=(seq+seq)[rot:rot+5]
                keys=list(map(key,(A+B+E,A+D+E,A+B+D)))
                X,Y,Z=[sc(polys[t],data['signs'][t]) for t in keys]
                delta=add(X,sc(Z,-1))
                for axis,idx,other in [('x',0,Y),('y',1,X)]:
                    choices={'scalar':c(F(data['area']['final'][keys[idx]]['hi']))}
                    if keys[idx] in caps:choices['anchor']=caps[keys[idx]]
                    for tag,cap in choices.items():
                        out[f'pent_{seq}_{rot}_{axis}_{tag}']=add(mul(cap,other),sc(delta,-11*s))
    if not dedup:return {k:p for k,p in out.items() if p}
    unique={};seen=set()
    for k,p in out.items():
        if not p:continue
        signature=tuple(sorted(p.items()))
        if signature not in seen:unique[k]=p;seen.add(signature)
    return unique
def refine(data,rounds=5):
    src=sources(data)
    polys={name:{tuple(m.count(i) for i in range(N)):a for m,a in p.items()} for name,p in src.items()}
    box=[tuple(map(F,b)) for b in data['box']]
    global_bounds=[]
    global_file=ROOT/'root-coordinate-lp.json'
    if data['id']!='root' and global_file.exists():
        for idx,row in enumerate(json.loads(global_file.read_text())):
            j=row['coordinate'];val=F(row['value']);lo,hi=box[j]
            if row['side']=='lo':
                endpoint=F(val.numerator*10**6//val.denominator,10**6)
                box[j]=(max(lo,endpoint),hi)
            else:
                endpoint=-F((-val.numerator)*10**6//val.denominator,10**6)
                box[j]=(lo,min(hi,endpoint))
            global_bounds.append({'certificate':idx,'coordinate':j,'side':row['side'],'endpoint':str(endpoint)})
    result=MB.refine_box(polys,[a for a,b in box],[b for a,b in box],rounds=rounds,max_steps=3000,max_vertices=128,scale=10**6,min_gain=F(1,100000))
    result['globalBounds']=global_bounds
    return src,list(zip(result['low'],result['high'])),result
def columns(src,box):
    aff={f'L{2*i}':add(v(i),c(-a)) for i,(a,b) in enumerate(box)}
    aff.update({f'L{2*i+1}':add(c(b),sc(v(i),-1)) for i,(a,b) in enumerate(box)})
    aff.update({k:p for k,p in src.items() if max(map(len,p),default=0)<=1})
    # Build in normalized variables, so high-degree monomial upper bounds are one.
    af=[(k,translate(p,box)) for k,p in aff.items()]
    desc=[];polys=[];seen=set()
    def include(atoms,pp):
        if not pp or all(a>=0 for a in pp.values()):return
        signature=tuple(sorted(pp.items()))
        if signature in seen:return
        seen.add(signature);desc.append(atoms);polys.append(pp)
    for k in (1,2,3):
        for ids in combinations_with_replacement(range(len(af)),k):
            pp=c(1)
            for i in ids:pp=mul(pp,af[i][1])
            include([af[i][0] for i in ids],pp)
    for name,p in src.items():
        degree=max(map(len,p),default=0)
        if degree<=1:continue
        pp=translate(p,box);include([name],pp)
        if degree==2:
            for fn,q in af:include([name,fn],mul(pp,q))
    rows=[];cols=[];vals=[]
    for j,p in enumerate(polys):
        for m,a in p.items():rows.append(j);cols.append(MI[m]);vals.append(float(a))
    mat=csr_matrix((vals,(rows,cols)),shape=(len(polys),len(MON)))
    return mat,desc,polys
def certify(mat,polys,limit=25):
    norm=np.maximum(np.asarray(abs(mat).max(axis=1).toarray()).ravel(),1e-12)
    a=mat.multiply((1/norm)[:,None]).tocsr();n=a.shape[0];m=a.shape[1]-1
    A=vstack((hstack((a[:,1:].T,-eye(m)),format='csr'),hstack((a[:,0].T,csr_matrix(np.ones((1,m)))),format='csr')),format='csr')
    res=linprog(np.r_[np.ones(n),np.full(m,10.)],A_ub=A,b_ub=np.r_[np.zeros(m),-1.],bounds=(0,None),method='highs-ds',options={'time_limit':limit,'dual_feasibility_tolerance':1e-8,'primal_feasibility_tolerance':1e-8})
    if res.x is None:return None, res
    weights=res.x[:n]/norm;largest=weights.max()
    for scale in (100,1000,10000,100000,1000000,10000000):
        selected=[(i,int(round(scale*w/largest))) for i,w in enumerate(weights) if w>1e-9*largest and round(scale*w/largest)>0]
        total=add(*(sc(polys[i],k) for i,k in selected))
        upper=total.get((),F())+sum(a for m,a in total.items() if m and a>0)
        if upper<0:return {'weights':selected,'upper':str(upper),'sum':{','.join(map(str,m)):str(a) for m,a in total.items()}},res
    return None,res
def run(name):
    data=json.loads((ROOT/(name+'.json')).read_text());start=time.time()
    certificate_path=ROOT/(name+'-physical-cert.json')
    if certificate_path.exists():certificate_path.unlink()
    src,box,ref=refine(data,8)
    print(name,'refine',len(ref['trace']),ref['contradiction'],'s',round(time.time()-start,2),flush=True)
    (ROOT/(name+'-physical-refine.json')).write_text(json.dumps(ref,default=str))
    if ref['contradiction']:return
    mat,desc,polys=columns(src,box)
    print(name,'matrix',mat.shape,'s',round(time.time()-start,2),flush=True)
    cert,res=certify(mat,polys)
    print(name,'LP',res.status,res.message,'certificate',None if cert is None else (len(cert['weights']),cert['upper']),'s',round(time.time()-start,2),flush=True)
    if cert:
        cert['factors']=[{'weight':w,'atoms':desc[i]} for i,w in cert.pop('weights')]
        cert['box']=[[str(a),str(b)] for a,b in box]
        cert['refinement']=ref
        certificate_path.write_text(json.dumps(cert,default=str))
    else:
        pres=linprog(np.zeros(len(MON)),A_ub=-mat,b_ub=np.zeros(mat.shape[0]),bounds=[(1,1)]+[(0,1)]*(len(MON)-1),method='highs',options={'time_limit':20})
        if pres.x is not None:
            scores=[]
            for t,p in data['polynomials'].items():
                if t in data['signs']:continue
                pp={tuple(map(int,m.split(','))) if m else ():F(a) for m,a in p.items()}
                scores.append((abs(sum(float(a)*pres.x[MI[m]] for m,a in translate(pp,box).items())),t))
            print(name,'best sign cuts',sorted(scores)[:10],flush=True)
            (ROOT/(name+'-physical-moments.json')).write_text(json.dumps({'moments':pres.x.tolist(),'cuts':sorted(scores),'box':[[str(a),str(b)] for a,b in box]}))
if __name__=='__main__':
    for name in sys.argv[1:] or ['root']:run(name)
