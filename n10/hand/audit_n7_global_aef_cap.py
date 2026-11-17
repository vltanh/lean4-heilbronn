"""Fresh Fraction/coordinate review of the uniform central AEF cap."""
from fractions import Fraction as Q
from pathlib import Path
import re
import sympy as sp
from audit_n7_hce_cap import identities as hce_identities, audit as hce_audit

S=Q(93,1000); B0=Q(2911,500)*S; LIMIT=Q(4427,500)*S


def audit(text, verbose=True):
    groups={'CA':[],'CB':[]};seen=set();empty=0
    for line in text.splitlines():
        if not re.match(r'\| C[AB][0-9]+ \|',line):continue
        row=[p.strip() for p in line.split('|')[1:-1]];assert len(row)==9
        name=row[0];assert name not in seen;seen.add(name);cell=name[:2]
        def interval(q):
            assert q[0]=='[' and q[-1]==']'
            values=list(map(Q,q[1:-1].split(',')));assert len(values)==2 and values[0]<values[1]
            return values
        cl,cu=interval(row[1]);hl,hu=interval(row[2]);M=cu*hu
        assert Q(541,1000)<=cl<cu<=Q(883,1000) and Q(613,1000)<=hl<hu<=1
        if row[3]=='--':
            assert row[3:8]==['--']*5 and row[8].startswith('M=') and row[8].endswith('<B0')
            assert Q(row[8][2:-3])==M<B0
            empty+=1;ceiling=None
        else:
            ratio,A,B,E,F,U=map(Q,row[3:])
            assert 0<ratio<Q(1,2) and M*(1-2*ratio)>=S and M*ratio*(1-ratio)<S*(1+ratio)
            if cell=='CA':assert Q(139,1000)<=A<=max(Q(139,1000),hl*ratio) and B==Q(108,1000)
            else:assert A==Q(122,1000) and Q(123,1000)<=B<=max(Q(123,1000),cl*ratio)
            assert 0<B<1 and A<=E<=max(4*S/(1-B),Q(3,25)+S/(1-cl),A)
            lower=B
            if hl+3*S-1>0:
                assert hu>E
                lower=max(lower,(hl+3*S-1)/(hu-E))
            assert B<=F<=lower
            assert 1-A-F*(E-A)<=U<LIMIT
            ceiling=U
        groups[cell].append((cl,cu,hl,hu,ceiling))
    strips=0
    for cell,rows in groups.items():
        assert len(rows)==(6 if cell=='CA' else 10)
        cuts=sorted({Q(541,1000),Q(883,1000)} | {x for r in rows for x in r[:2]})
        for left,right in zip(cuts,cuts[1:]):
            intervals=sorted((lo,hi) for cl,cu,lo,hi,_ in rows if cl<=left and right<=cu)
            end=Q(613,1000)
            for low,high in intervals:
                assert low<=end,'uncovered global AEF rectangle'
                end=max(end,high)
            assert end==1;strips+=1
        largest=max(r[-1] for r in rows if r[-1] is not None)
        assert largest==(Q(203589,250000) if cell=='CA' else Q(163679,200000))
        uniform=Q(814603,1000000) if cell=='CA' else Q(164637,200000)
        assert largest<uniform<LIMIT
        if verbose:print(cell,'independent HEF-occupied ceiling',largest,'uniform ceiling',uniform)
    assert len(seen)==16 and empty==1
    return strips


if __name__=='__main__':
    root=Path(__file__).resolve().parent
    text=(root/'N7_CENTRAL_COMPLETION_GLOBAL_AEF_CAP.md').read_text()
    hce_audit((root/'N7_CENTRAL_COMPLETION_HCE_CAP.md').read_text(),verbose=False)
    assert hce_identities()==7
    e,f,h,A,E,F=sp.symbols('e f h A E F')
    actual_hef=(1-0)*(1-h)-(e-h)*(f-0)
    assert sp.expand(actual_hef-(1-h+f*(h-e)))==0
    a=sp.symbols('a');area=1-a-f*(e-a)
    assert sp.expand(1-A-F*(E-A)-area-(a-A)*(1-f)-f*(e-E)-(f-F)*(E-A))==0
    strips=audit(text)
    for name,changed in [('missing rectangle',re.sub(r'^\| CA5 \|.*\n','',text,flags=re.M)),
                         ('wrong f floor',text.replace('0.153477','0.9')),
                         ('wrong empty-cell maximum',text.replace('M=0.50527225','M=0.6')),
                         ('non-strict ceiling',text.replace('0.818395','0.823422'))]:
        assert changed!=text
        try:audit(changed,verbose=False)
        except AssertionError:print('Rejected:',name)
        else:raise AssertionError('Accepted corruption '+name)
    print('PASS: nine independent identities, sixteen rows,',strips,'covered c strips; four corruptions rejected.')
