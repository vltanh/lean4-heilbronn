"""Complete exact cover for N6-04-L0, the side-plus-top upper occupancy."""
from fractions import Fraction as F
import json
from pathlib import Path
import side_top_polynomials as p

R1=(4,4,4,4,3,3,3,3)
DF_BRANCHES={'left','low','df_Llo','df_Lhi','df_Mlo','df_g','df_c'}


def signed(word,tr):
    inversion=sum(tr[i]>tr[j] for i in range(3) for j in range(i+1,3))
    i,j,k=sorted(tr)
    return (-1)**inversion*(1 if k<8 or j-i<=word[i] else -1)


def verify():
    data=json.loads(Path(__file__).with_name('six_boundary_side_top_upper_certificates.json').read_text())
    assert data['version']==1 and data['variables']==p.VARIABLES
    assert data['vertices']==['A','B','C','X','D','Y','F','H','Q']
    upper={q for q in p.WORDS if q[7]>=3}
    assert len(upper)==79 and {p.SHARP,p.PROJECT,R1}<=upper
    expected={(q,'whole') for q in upper-{p.SHARP,p.PROJECT,R1}}
    expected|={(R1,b) for b in ['side_above','side_below']}
    expected|={(p.SHARP,b) for b in ['left','low']}
    expected|={(p.PROJECT,b) for b in DF_BRANCHES}
    assert len(expected)==87
    thresholds={F(7,64),F(8,73),F(79,720)}
    for s in thresholds:
        assert (55+160*s)**2<81*65
    seen=set();terms=0;worst=None
    for cert in data['certificates']:
        key=(tuple(cert['word']),cert['branch'])
        assert key in expected and key not in seen
        assert cert['scale']==4096
        assert F(cert.get('threshold',str(p.S))) in thresholds
        seen.add(key)
        bound=p.cube_upper(p.residual(cert))
        assert bound==F(cert['upper_bound']) and bound<=-F(3,4)
        terms+=len(cert['terms']);worst=bound if worst is None else max(worst,bound)
        print('PASS:',key,len(cert['terms']),'positive terms, exact upper bound <= -3/4')
    assert seen==expected
    bd=[(2,3,1),(2,3,4),(2,0,1),(5,6,7),(0,1,7),(0,6,7),
        (2,5,8),(5,1,8),(3,8,6),(0,4,8),(8,4,7)]
    df=[(0,1,7),(0,1,2),(0,6,7),(3,4,5),(6,7,5),(6,4,5),
        (0,3,8),(3,7,8),(1,8,4),(6,2,8),(8,2,5)]
    assert all(signed(p.SHARP,tr)==1 for tr in bd)
    assert all(signed(p.PROJECT,tr)==1 for tr in df)
    assert p.add(p.factors('side_above')[-1],p.factors('side_below')[-1])=={}
    assert terms==18308
    print('PASS: all 79 upper words, both split branches and all nine sharp obstructions')
    print('PASS: all eleven signs in each of the B/D and D/F sharp coordinate maps')
    print('Positive terms:',terms,'; largest exact cube upper bound:',worst)


if __name__=='__main__':
    verify()
