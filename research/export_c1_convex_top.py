"""Recover fixed rational C1 top-hull certificates from generated LP arrays.

Research only: SciPy discovers/selects the sums. The hand/ verifier is exact.
Run after generate_c1_convex_top.py upper and ... cap.
"""
from pathlib import Path
import sys,itertools as it,numpy as np,json
from scipy.optimize import milp,Bounds,LinearConstraint
import scipy.sparse as sp
ROOT=Path(__file__).resolve().parents[1]
WORK=Path(sys.argv[1]).resolve() if len(sys.argv)>1 else ROOT.parent
sys.path.insert(0,str(ROOT/'hand'))
import check_c1_one_lower_convex_top as ck
domain=[ids for deg in (1,2,3)for ids in it.combinations_with_replacement(range(30),deg)]
allcert=[]
for mode in ('upper','cap'):
    for case,branch in ck.cells(mode):
        ci=ck.cases(mode).index(case)
        suffix=f'_{branch}'if(mode,case)in ck.SPLITS else''
        lam=np.load(WORK/('c1_convex_top_'+mode)/f'cert_{ci:03}{suffix}.npz')['lam']
        assert len(lam)==len(domain)+len(ck.costs(mode,case,branch))*31
        for denominator in (4096,16384,65536,262144,1048576):
            cert={'mode':mode,'case':list(case),'branch':branch,'scale':denominator,'terms':[]}
            weights=np.rint(denominator*lam).astype(np.int64)
            assert min(weights)>=0
            for i,weight in enumerate(weights):
                if not weight:continue
                if i<len(domain):term=['f',list(domain[i]),int(weight)]
                else:
                    qi,fi=divmod(i-len(domain),31);term=['q',qi,fi-1,int(weight)]
                cert['terms'].append(term)
            upper=ck.cube_upper(ck.residual(cert))
            if upper<=-ck.F(3,4):break
        else:raise AssertionError((mode,case,branch,upper))
        cert['upper_bound']=str(upper);allcert.append(cert)
        print('EXACT',mode,case,branch,len(cert['terms']),upper,flush=True)
(WORK/'c1_convex_top_all_exact.json').write_text(json.dumps(allcert))
selected=[]
for mode in ('upper','cap'):
    candidates=[cert for cert in allcert if cert['mode']==mode]
    cells=ck.cells(mode);index={cell:i for i,cell in enumerate(cells)};I=[];J=[]
    for j,cert in enumerate(candidates):
        for cell in ck.applicability(cert):I.append(index[cell]);J.append(j)
    mat=sp.csc_matrix((np.ones(len(I)),(I,J)),shape=(len(cells),len(candidates)))
    result=milp(np.array([len(cert['terms'])for cert in candidates],float),integrality=np.ones(len(candidates)),bounds=Bounds(0,1),constraints=LinearConstraint(mat,1,np.inf),options={'time_limit':30})
    assert result.x is not None
    chosen=[i for i,value in enumerate(result.x)if value>.5]
    assert np.all(mat[:,chosen].sum(axis=1)>=1)
    selected += [candidates[i]for i in chosen]
    print('COVER',mode,len(chosen),sum(len(candidates[i]['terms'])for i in chosen),flush=True)
data={'version':1,'variables':ck.VARIABLES,'vertices':ck.VERTICES,'certificates':selected}
out=ROOT/'hand/c1_one_lower_convex_top_certificates.json'
with out.open('w')as f:
    f.write('{\n  "version": 1,\n  "variables": '+json.dumps(data['variables'])+',\n  "vertices": '+json.dumps(data['vertices'])+',\n  "certificates": [\n')
    for ci,cert in enumerate(selected):
        f.write('    {\n')
        for key in ('mode','case','branch','scale','upper_bound'):f.write('      '+json.dumps(key)+': '+json.dumps(cert[key])+',\n')
        f.write('      "terms": [\n')
        for ti,term in enumerate(cert['terms']):f.write('        '+json.dumps(term,separators=(',',':'))+(','if ti+1<len(cert['terms'])else'')+'\n')
        f.write('      ]\n    }'+(','if ci+1<len(selected)else'')+'\n')
    f.write('  ]\n}\n')
print('EXPORTED',len(selected),sum(len(cert['terms'])for cert in selected),'worst',max(ck.F(cert['upper_bound'])for cert in selected),flush=True)
