"""Research-only export of the convex N6 opposite-cap certificates."""
from pathlib import Path
import sys,itertools as it,numpy as np,json
ROOT=Path(__file__).resolve().parents[1]
WORK=Path(sys.argv[1]).resolve() if len(sys.argv)>1 else ROOT.parent
sys.path.insert(0,str(ROOT/'hand'))
import check_six_boundary_two_top_convex as ck
out=[]
for ci,branch in sorted(ck.required_branches()):
    if branch=='whole': filename=f'cert_{ci:03}.npz'
    elif ci==31: filename=f'cut_{ck.SHARP_BRANCHES.index(branch)}.npz'
    else: filename=f'split66_10_1_2_{-1 if branch=="x_low" else 1}.npz'
    lam=np.load(WORK/'n6_two_top_convex'/filename)['lam']
    nf=31 if branch=='whole' else 32
    domain=[ids for degree in (1,2,3) for ids in it.combinations_with_replacement(range(nf),degree)]
    assert len(lam)==len(domain)+93*(nf+1)
    for scale in (4096,16384,65536,262144):
        cert={'index':ci,'word':list(ck.words()[ci]),'branch':branch,
              'threshold':str(ck.S),'scale':scale,'terms':[]}
        weights=np.rint(scale*lam).astype(np.int64)
        assert min(weights)>=0
        for i,weight in enumerate(weights):
            if not weight: continue
            if i<len(domain): term=['f',list(domain[i]),int(weight)]
            else:
                qi,fi=divmod(i-len(domain),nf+1)
                term=['q',qi,fi-1,int(weight)]
            cert['terms'].append(term)
        upper=ck.cube_upper(ck.residual(cert))
        if upper<=-ck.F(3,4): break
    else: raise AssertionError((ci,branch,upper))
    cert['upper_bound']=str(upper);out.append(cert)
    print('EXACT',ci,branch,len(cert['terms']),upper,flush=True)
data={'version':1,'variables':ck.VARIABLES,'vertices':ck.VERTEX_NAMES,
      'threshold':str(ck.S),'positive_terms':sum(len(q['terms']) for q in out),
      'greatest_upper_bound':str(max(ck.F(q['upper_bound']) for q in out)),
      'certificates':out}
path=ROOT/'hand/six_boundary_two_top_convex_certificates.json'
with path.open('w') as f:
    f.write('{\n')
    for key in ('version','variables','vertices','threshold','positive_terms','greatest_upper_bound'):
        f.write('  '+json.dumps(key)+': '+json.dumps(data[key])+',\n')
    f.write('  "certificates": [\n')
    for ci,cert in enumerate(out):
        f.write('    {\n')
        for key in ('index','word','branch','threshold','scale','upper_bound'):
            f.write('      '+json.dumps(key)+': '+json.dumps(cert[key])+',\n')
        f.write('      "terms": [\n')
        for ti,term in enumerate(cert['terms']):
            f.write('        '+json.dumps(term,separators=(',',':'))+(',' if ti+1<len(cert['terms']) else '')+'\n')
        f.write('      ]\n    }'+(',' if ci+1<len(out) else '')+'\n')
    f.write('  ]\n}\n')
print('EXPORTED',len(out),data['positive_terms'],data['greatest_upper_bound'],flush=True)
