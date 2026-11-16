"""Discovery only: generate exact candidate cubics for the open N6-03 row.

Each exported polynomial is expanded exactly before saving. The independent
cover checker and the geometric manuscript determine the final proof scope.
"""
from pathlib import Path
import sys,json,itertools
sys.path.insert(0,str(Path(__file__).resolve().parents[3]/'proof'/'nine'))
import check_six_boundary_single_top as m
from fractions import Fraction as F
import numpy as np
import scipy.sparse as sp
from scipy.optimize import linprog

DEST=Path(__file__).resolve().parents[3]/'proof/nine/six_boundary_single_top_certificates.json'
MON=[()]+[(i,) for i in range(12)]+list(itertools.combinations_with_replacement(range(12),2))+list(itertools.combinations_with_replacement(range(12),3))
MI={a:i for i,a in enumerate(MON)}
def floating(p):return {a:float(x) for a,x in p.items()}
def multiply(p,q):
    out={}
    for a,x in p.items():
        for b,y in q.items():
            k=tuple(sorted(a+b));out[k]=out.get(k,0)+x*y
    return {a:x for a,x in out.items() if x}

DOM_CACHE={}
def solve(cell):
    fac=[floating(p) for p in m.factors(cell)]
    qs=[floating(p) for p in m.costs(cell)]
    allowed=list(range(27))
    if cell[0] in {196,213,258,260,262,271,274}:
        allowed[2:4]=[27,28]
        allowed+=list(range(29,len(fac)))
    key=tuple((i,tuple(sorted(fac[i].items()))) for i in allowed)
    if key not in DOM_CACHE:
        rows=[];tags=[]
        for degree in (1,2,3):
            for ids in itertools.combinations_with_replacement(allowed,degree):
                p={():1.}
                for i in ids:p=multiply(p,fac[i])
                rows.append(p);tags.append(['f',sorted(ids)])
        DOM_CACHE[key]=(rows,tags)
    base,btags=DOM_CACHE[key]
    rows=list(base);tags=list(btags)
    for qi,q in enumerate(qs):
        rows.append(q);tags.append(['q',qi,-1])
        for fi in allowed:
            rows.append(multiply(q,fac[fi]));tags.append(['q',qi,fi])
    I=[];J=[];V=[]
    for i,p in enumerate(rows):
        for a,x in p.items():I.append(i);J.append(MI[a]);V.append(x)
    A=sp.csr_matrix((V,(I,J)),shape=(len(rows),len(MON)))
    target=np.zeros(len(MON));target[0]=-1
    for method in ('highs','highs-ipm'):
        result=linprog(np.ones(len(rows)),A_eq=A.T,b_eq=target,bounds=(0,None),method=method,options={'time_limit':45})
        if result.success:break
    if not result.success:
        return None,{'status':int(result.status),'message':result.message}
    selected=[(tag,float(value)) for tag,value in zip(tags,result.x) if value>1e-7]
    for scale in (4096,65536,1048576):
        cert={'cell':list(cell),'scale':scale,'terms':[tag+[int(round(value*scale))] for tag,value in selected if round(value*scale)>0]}
        bound=m.cube_upper(m.residual(cert))
        if bound<-F(3,4):
            cert['upper_bound']=str(bound)
            return cert,None
    return None,{'status':'rounding','bound':str(bound)}

DOMAINS=[m.domain(cell) for cell in m.CELLS]
FMASK={};QMASK={}
for i,(fs,qs) in enumerate(DOMAINS):
    for sig in fs:FMASK[sig]=FMASK.get(sig,0)|(1<<i)

def coverage(cert):
    fs,qs=m.requirements(cert);mask=(1<<len(m.CELLS))-1
    for sig in fs:mask &= FMASK.get(sig,0)
    for key,bound in qs.items():
        cache=(key,bound)
        if cache not in QMASK:
            QMASK[cache]=sum(1<<i for i,(_,dom) in enumerate(DOMAINS) if key in dom and dom[key]>=bound)
        mask &= QMASK[cache]
    return mask

def save(data):
    temp=DEST.with_suffix('.tmp')
    temp.write_text(json.dumps(data,separators=(',',':'))+'\n')
    temp.replace(DEST)

def main():
    if DEST.exists():
        data=json.loads(DEST.read_text());certs=data['certificates']
    else:
        certs=[]
    covered=0;cover=[-1]*len(m.CELLS)
    for i,cert in enumerate(certs):
        mask=coverage(cert);covered|=mask
        for j in range(len(m.CELLS)):
            if mask>>j&1 and cover[j]<0:cover[j]=i
    failures=[]
    data={'version':1,'complete':False,'variables':m.VARIABLES,'certificates':certs,'cover':cover,'unresolved':failures}
    for i,cell in enumerate(m.CELLS):
        if covered>>i&1:continue
        cert,error=solve(cell)
        if cert is None:
            failures.append({'cell':list(cell),'error':error});save(data)
            print('OPEN',i,cell,error,flush=True);continue
        ci=len(certs);certs.append(cert)
        mask=coverage(cert);assert mask>>i&1
        covered|=mask
        for j in range(len(m.CELLS)):
            if mask>>j&1 and cover[j]<0:cover[j]=ci
        save(data)
        print('EXACT',ci,cell,len(cert['terms']),'terms;',covered.bit_count(),'of',len(m.CELLS),'covered',flush=True)
    failures=[x for x in failures if cover[m.CELLS.index(tuple(x['cell']))]<0]
    data['unresolved']=failures;data['complete']=all(x>=0 for x in cover);save(data)
    print('COMPLETE',data['complete'],'certificates',len(certs),'unresolved',failures,flush=True)

if __name__=='__main__':main()
