"""Exploratory LP search; exact data export is a separate step."""
import os
for key in ('OMP_NUM_THREADS','OPENBLAS_NUM_THREADS','MKL_NUM_THREADS'):
    os.environ[key]='1'
import sys,time,json
from pathlib import Path
from itertools import combinations_with_replacement
import numpy as np
from scipy.optimize import linprog
from scipy.sparse import csc_matrix,csr_matrix,hstack,vstack,eye
sys.path.insert(0,str(Path(__file__).resolve().parents[1]/'hand'))
import check_c1_one_lower_mixed_caps as C
ROOT=Path(os.environ.get('C1_MIXED_OUTPUT', '/workspace/scratch/909cfe79d9fd/c1_mixed_caps_rebuilt'))
ROOT.mkdir(exist_ok=True)
MON=[()]+[t for k in (1,2,3) for t in combinations_with_replacement(range(12),k)]
MI={m:i for i,m in enumerate(MON)}
CACHE={}

def entries(poly):
    return [(MI[m],float(v)) for m,v in poly.items()]

def domain(case,extra=()):
    key=(case[0],tuple(map(str,extra)))
    # All basic factors depend only on class, optional double_od has checked case hypotheses.
    fac=C.factors(case,extra)
    if key in CACHE:return CACHE[key]
    ds=[];rows=[];cols=[];vals=[]
    for k in (1,2,3):
        for ids in combinations_with_replacement(range(len(fac)),k):
            p=C.ONE
            for i in ids:p=C.mul(p,fac[i])
            n=len(ds);ds.append(('f',list(ids)))
            for j,v in entries(p):rows.append(n);cols.append(j);vals.append(v)
    a=csr_matrix((vals,(rows,cols)),shape=(len(ds),len(MON)))
    CACHE[key]=(a,ds,fac)
    return CACHE[key]

def matrix(case,additional=(),extra=()):
    a,desc,fac=domain(case,extra)
    rows=[];cols=[];vals=[];ds=[]
    for qi,q in enumerate(C.costs(case,additional)):
        for fi in range(-1,len(fac)):
            p=q if fi<0 else C.mul(q,fac[fi])
            n=len(ds);ds.append(('q',qi,fi))
            for j,v in entries(p):rows.append(n);cols.append(j);vals.append(v)
    for ci,p in enumerate(C.cubic_costs(case)):
        n=len(ds);ds.append(('c',ci))
        for j,v in entries(p):rows.append(n);cols.append(j);vals.append(v)
    b=csr_matrix((vals,(rows,cols)),shape=(len(ds),len(MON)))
    return vstack((a,b),format='csr'),desc+ds

def certify(mat,limit=30):
    # Rounding-safe exact exporter later checks const + sum positive coeffs < -3/4.
    norm=np.maximum(np.asarray(abs(mat).max(axis=1).toarray()).ravel(),1e-9)
    a=mat.multiply((1/norm)[:,None]).tocsr()
    n=a.shape[0];m=a.shape[1]-1
    A=vstack((hstack((a[:,1:].T,-eye(m)),format='csr'),
              hstack((a[:,0].T,csr_matrix(np.ones((1,m)))),format='csr')),format='csr')
    rhs=np.r_[np.zeros(m),-1.]
    obj=np.r_[np.ones(n),np.full(m,10.)]
    res=linprog(obj,A_ub=A,b_ub=rhs,bounds=(0,None),method='highs-ds',
                options={'time_limit':limit,'dual_feasibility_tolerance':1e-8,
                         'primal_feasibility_tolerance':1e-8})
    if res.status==0:
        w=res.x[:n]/norm
        p=np.asarray(mat.T@w).ravel()
        gap=p[0]+np.maximum(p[1:],0).sum()
        if gap<-.9:return w,gap
    return None,res.status

def examine(case,additional=(),extra=(),label='probe'):
    t=time.time();mat,ds=matrix(case,additional,extra)
    print('matrix',label,mat.shape,'seconds',round(time.time()-t,2),flush=True)
    res=linprog(np.zeros(len(MON)),A_ub=-mat,b_ub=np.zeros(mat.shape[0]),
                bounds=[(1,1)]+[(0,1)]*(len(MON)-1),method='highs-ds',
                options={'time_limit':20,'dual_feasibility_tolerance':1e-8,
                         'primal_feasibility_tolerance':1e-8})
    print('primal',label,res.status,'seconds',round(time.time()-t,2),flush=True)
    if res.status in (2,4):
        w,gap=certify(mat)
        if w is not None:
            np.savez(ROOT/(label+'.npz'),weights=w)
            (ROOT/(label+'.json')).write_text(json.dumps({
                'case':case,'additional':additional,'extra':extra,'descriptors':ds}))
            print('CERT',label,gap,'terms',int(np.count_nonzero(w>1e-8)),flush=True)
            return {'certificate':label}
    if res.x is not None:
        np.savez(ROOT/('mom_'+label+'.npz'),moments=res.x)
        signs=C.get_signs(case,additional)
        unknown=[tri for tri in C.TRIPLES if tri not in signs]
        if unknown:
            scores=[(abs(sum(float(v)*res.x[MI[m]] for m,v in C.AREAS[tri].items())),tri)
                    for tri in unknown]
            tri=min(scores)[1]
            return {'split':tri}
        print('FULL SIGN RESIDUAL',label,[(C.VARIABLES[i],float(res.x[MI[(i,)]])) for i in range(12)],flush=True)
    return {'unresolved':True,'status':int(res.status)}

def solve_case(ci):
    case=C.CASES[ci]
    extra=[]
    if all(C.inside(w,(0,2,4)) and C.inside(w,(0,2,3)) for w in C.words(case)[2:]):
        extra=['double_od']
    nodes=[]
    def rec(additional):
        ni=len(nodes);nodes.append({})
        label='case_%s_node_%s'%(ci,ni)
        if not C.cyclic_consistent(case,additional):
            nodes[ni]={'inconsistent':True};return ni
        if C.cost_specs(case,additional) is None:
            nodes[ni]={'capacity':True};return ni
        if len(nodes)>400:raise RuntimeError('too many nodes')
        r=examine(case,additional,extra,label)
        if 'split' in r:
            t=r['split']
            r['children']=[rec(additional+[(t,sg)]) for sg in (-1,1)]
        nodes[ni]=r
        return ni
    rec([])
    out={'case':case,'extra':extra,'nodes':nodes}
    (ROOT/('tree_%d.json'%ci)).write_text(json.dumps(out))
    print('DONE',ci,len(nodes),'leaves',sum('split' not in n for n in nodes),flush=True)
    return out

if __name__=='__main__':
    C.verify_bounds()
    if len(sys.argv)>1 and sys.argv[1]=='last':
        signs=json.loads((ROOT/'last_signs.json').read_text())
        base=C.base_signs(C.CASES[9])
        extra=[(tuple(map(int,k.split(','))),sg) for k,sg in signs if tuple(map(int,k.split(','))) not in base]
        print(examine(C.CASES[9],extra,['double_od'],'last_strengthened'),flush=True)
    else:
        for ci in map(int,sys.argv[1:] or range(62)):solve_case(ci)

