"""Round discovered weights and verify every resulting polynomial exactly.

This script is a discovery/export helper, not a replacement for the fixed
standard-library checker. By default it writes only fully closed cases to
a clearly labelled partial checkpoint.
"""
import os,sys,json,copy
from pathlib import Path
import numpy as np
sys.path.insert(0,str(Path(__file__).resolve().parents[3]/'proof'/'nine'))
import check_c1_one_lower_mixed_caps as C
ROOT=Path(os.environ.get('C1_MIXED_OUTPUT','/workspace/scratch/909cfe79d9fd/c1_mixed_caps_rebuilt'))
CACHE=ROOT/'exact'
CACHE.mkdir(exist_ok=True)
def export(label):
    cp=CACHE/(label+'.json')
    if cp.exists():
        out=json.loads(cp.read_text())
        assert C.cube_upper(C.residual(out))==C.F(out['upper_bound'])
        return out
    raw=json.loads((ROOT/(label+'.json')).read_text())
    ws=np.load(ROOT/(label+'.npz'))['weights']
    assert len(ws)==len(raw['descriptors'])
    for bits in (30,36,42,48):
        scale=2**bits
        terms=[]
        for d,w in zip(raw['descriptors'],ws):
            n=round(float(w)*scale)
            if n>0:terms.append(list(d)+[n])
        cert={k:raw[k] for k in ('case','additional','extra')}
        cert.update(scale=scale,terms=terms)
        upper=C.cube_upper(C.residual(cert))
        if upper<-C.F(3,4):
            cert['upper_bound']=str(upper)
            cp.write_text(json.dumps(cert,separators=(',',':')))
            print('EXACT',label,len(terms),upper,flush=True)
            return cert
    raise ValueError('exact rounding failed: '+label)
def build(require_complete=False):
    certs=[];covers=[];labels={}
    for ci,case in enumerate(C.CASES):
        path=ROOT/('tree_%d.json'%ci)
        if not path.exists():continue
        entry=json.loads(path.read_text())
        if any(n.get('unresolved') for n in entry['nodes']):continue
        for n in entry['nodes']:
            if 'certificate' in n:
                label=n['certificate']
                if label not in labels:
                    labels[label]=len(certs);certs.append(export(label))
                n['certificate']=labels[label]
        covers.append(entry)
    out={'version':1,'status':'complete' if require_complete else 'partial_verified_checkpoint',
         'variables':C.VARIABLES,'vertices':['O','C','D','F','H','X','Y','L','Q'],
         'certificates':certs,'cover':covers}
    summary=C.verify_data(out,require_complete)
    print('VERIFIED',summary,flush=True)
    out['summary']=summary
    return out
if __name__=='__main__':
    complete='--complete' in sys.argv
    data=build(complete)
    path=Path(__file__).resolve().parents[3]/('proof/nine/c1_one_lower_mixed_caps_certificates.json' if complete
                                            else 'research/c1_mixed_caps_partial_certificates.json')
    path.write_text(json.dumps(data,separators=(',',':')))
    print('WROTE',path,flush=True)

