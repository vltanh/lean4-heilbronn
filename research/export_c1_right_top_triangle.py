"""Research-only exact export and cover reduction for the 25 C1 cells."""
from pathlib import Path
import sys,itertools as it,numpy as np,json
from scipy.optimize import milp,Bounds,LinearConstraint
import scipy.sparse as sp
ROOT=Path(__file__).resolve().parents[1]
WORK=Path(sys.argv[1]).resolve() if len(sys.argv)>1 else ROOT.parent
sys.path.insert(0,str(ROOT/'hand'))
import check_c1_one_lower_right_top_triangle as ck
domain=[ids for deg in (1,2,3)for ids in it.combinations_with_replacement(range(28),deg)]
allcert=[]
for ci,case in enumerate(ck.CASES):
    lam=np.load(WORK/'c1_right_top_triangle'/f'cert_{ci:03}.npz')['lam']
    assert len(lam)==len(domain)+len(ck.costs(case))*29+1
    for denominator in (4096,16384,65536,262144):
        cert={'case':list(case),'scale':denominator,'terms':[]}
        weights=np.rint(denominator*lam).astype(np.int64);assert min(weights)>=0
        for i,weight in enumerate(weights):
            if not weight:continue
            if i<len(domain):term=['f',list(domain[i]),int(weight)]
            elif i<len(lam)-1:
                qi,fi=divmod(i-len(domain),29);term=['q',qi,fi-1,int(weight)]
            else:term=['c',int(weight)]
            cert['terms'].append(term)
        upper=ck.cube_upper(ck.residual(cert))
        if upper<=-ck.F(3,4):break
    else:raise AssertionError((case,upper))
    cert['upper_bound']=str(upper);allcert.append(cert)
    print('EXACT',case,len(cert['terms']),upper,flush=True)
(WORK/'c1_right_top_triangle_all_exact.json').write_text(json.dumps(allcert))
index={case:i for i,case in enumerate(ck.CASES)};I=[];J=[]
for j,cert in enumerate(allcert):
    for case in ck.applicability(cert):I.append(index[case]);J.append(j)
mat=sp.csc_matrix((np.ones(len(I)),(I,J)),shape=(25,len(allcert)))
result=milp(np.array([len(cert['terms'])for cert in allcert],float),integrality=np.ones(len(allcert)),bounds=Bounds(0,1),constraints=LinearConstraint(mat,1,np.inf),options={'time_limit':30})
assert result.x is not None
chosen=[i for i,value in enumerate(result.x)if value>.5]
assert np.all(mat[:,chosen].sum(axis=1)>=1)
selected=[allcert[i]for i in chosen]
out=ROOT/'hand/c1_one_lower_right_top_triangle_certificates.json'
with out.open('w')as f:
    f.write('{\n  "version": 1,\n  "variables": '+json.dumps(ck.VARIABLES)+',\n  "vertices": '+json.dumps(ck.VERTICES)+',\n  "certificates": [\n')
    for ci,cert in enumerate(selected):
        f.write('    {\n')
        for key in ('case','scale','upper_bound'):f.write('      '+json.dumps(key)+': '+json.dumps(cert[key])+',\n')
        f.write('      "terms": [\n')
        for ti,term in enumerate(cert['terms']):f.write('        '+json.dumps(term,separators=(',',':'))+(','if ti+1<len(cert['terms'])else'')+'\n')
        f.write('      ]\n    }'+(','if ci+1<len(selected)else'')+'\n')
    f.write('  ]\n}\n')
print('EXPORTED',len(selected),sum(len(cert['terms'])for cert in selected),'worst',max(ck.F(cert['upper_bound'])for cert in selected),flush=True)
