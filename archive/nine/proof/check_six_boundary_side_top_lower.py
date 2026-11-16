"""Complete exact exclusion of N6-04-L1, with a lower anchor-interior point."""
from fractions import Fraction as F
import json
from pathlib import Path
import side_top_polynomials as p


def verify():
    data=json.loads(Path(__file__).with_name('six_boundary_side_top_lower_certificates.json').read_text())
    assert data['version']==1 and data['variables']==p.VARIABLES
    assert data['vertices']==['A','B','C','X','D','Y','F','H','Q']
    expected={q for q in p.WORDS if q[7]<3}
    assert len(expected)==18 and len(p.FACTORS)==27
    seen=set();terms=0;worst=None
    for cert in data['certificates']:
        q=tuple(cert['word'])
        assert q in expected and q not in seen and cert['branch']=='whole'
        assert cert['scale']==4096
        assert F(cert.get('threshold',str(p.S)))==p.S
        seen.add(q)
        bound=p.cube_upper(p.residual(cert))
        assert bound==F(cert['upper_bound']) and bound<=-F(3,4)
        terms+=len(cert['terms'])
        worst=bound if worst is None else max(worst,bound)
        print('PASS:',q,len(cert['terms']),'positive terms, exact upper bound <= -3/4')
    assert seen==expected
    assert F(7,64)/(1-2*F(7,64))==F(7,50)
    assert F(7,64)/(1-4*F(7,64))==F(7,36)
    assert 8>F(31,11)**2
    print('PASS: N6-04-L1; all 18 lower-point radial words; positive terms:',terms)
    print('Largest exact cube upper bound:',worst)


if __name__=='__main__':
    verify()
