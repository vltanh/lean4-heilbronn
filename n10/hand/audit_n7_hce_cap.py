"""Independent actual-coordinate and Fraction audit of the small HCE table."""
from fractions import Fraction as Q
from pathlib import Path
import re
import sympy as sp

S=Q(93,1000); T=Q(13857,20000); LIMIT=Q(411711,500000)


def identities():
    a,b,c,d,e,f,h,r,t,l,H,A,B,E,s=sp.symbols('a b c d e f h r t l H A B E s')
    points={'A':(0,a),'B':(b,0),'C':(c,0),'D':(1,d),
            'E':(1,e),'F':(f,1),'H':(0,h)}
    def area(word):
        p,q,z=[points[i] for i in word]
        return (q[0]-p[0])*(z[1]-p[1])-(q[1]-p[1])*(z[0]-p[0])
    tests=[area('HCE')-(h-c*(h-e)),
           area('CDE')-(1-c)*(e-d),
           area('AEF')-(1-a-f*(e-a)),
           (c*a*(h-a)-s*(h+a)).subs(a,h*r)-h*(h*c*r*(1-r)-s*(1+r)),
           (h*b*(c-b)-s*(c+b)).subs(b,c*r)-c*(h*c*r*(1-r)-s*(1+r)),
           h-(h-t)/c-H+(H-t)/l-(h-t)*(c-l)/(c*l)-(H-h)*(1-l)/l,
           1-A-B*(E-A)-area('AEF')-(a-A)*(1-f)-f*(e-E)-(f-B)*(E-A)]
    assert all(sp.cancel(test)==0 for test in tests)
    return len(tests)


def audit(text, verbose=True):
    def number(value):return T if value=='T' else Q(value)
    def interval(value):
        assert value[0]=='[' and value[-1]==']'
        endpoints=tuple(number(q.strip()) for q in value[1:-1].split(','))
        assert len(endpoints)==2 and endpoints[0]<endpoints[1]
        return endpoints
    groups={'CA':[],'CB':[]};ids=set()
    for line in text.splitlines():
        if not re.match(r'\| C[AB][0-9]+ \|',line):continue
        cells=[q.strip() for q in line.split('|')[1:-1]]
        assert len(cells)==8 and cells[0] not in ids
        ids.add(cells[0]);cell=cells[0][:2]
        left,right=interval(cells[1]);bottom,top=interval(cells[2])
        r,A,B,E,U=map(number,cells[3:]);M=right*top
        assert Q(541,1000)<=left<right<=Q(883,1000) and T<=bottom<top<=1
        assert 0<r<Q(1,2) and M*(1-2*r)-S>=0 and M*r*(1-r)-S*(1+r)<0
        if cell=='CA':
            assert Q(139,1000)<=A<=max(Q(139,1000),bottom*r) and B==Q(108,1000)
        else:
            assert A==Q(122,1000) and Q(123,1000)<=B<=max(Q(123,1000),left*r)
        assert 0<B<1 and A<=E
        assert E<=max(4*S/(1-B),Q(3,25)+S/(1-left),top-(top-T)/left,A)
        assert 1-A-B*(E-A)<=U<LIMIT
        groups[cell].append((left,right,bottom,top,U))
    strips=0
    for cell,rows in groups.items():
        # At each c strip, the union of the closed h intervals must
        # cover [T,1]. This checks the whole rectangle, including edges.
        cuts=sorted({Q(541,1000),Q(883,1000)} | {x for row in rows for x in row[:2]})
        for left,right in zip(cuts,cuts[1:]):
            spans=sorted((lo,hi) for cl,cu,lo,hi,_ in rows if cl<=left and right<=cu)
            frontier=T
            for lo,hi in spans:
                assert lo<=frontier,'uncovered HCE rectangle'
                frontier=max(frontier,hi)
            assert frontier==1,'uncovered HCE height'
            strips+=1
        assert len(rows)==(3 if cell=='CA' else 11)
        ceiling=max(row[-1] for row in rows)
        assert ceiling==(Q(814603,1000000) if cell=='CA' else Q(164637,200000))
        if verbose:print(cell,'independent ceiling',ceiling,'gap',LIMIT-ceiling)
    assert len(ids)==14
    return len(ids),strips


if __name__=='__main__':
    text=Path(__file__).with_name('N7_CENTRAL_COMPLETION_HCE_CAP.md').read_text()
    rows,strips=audit(text)
    assert identities()==7
    changes=[('missing rectangle',re.sub(r'^\| CB6 \|.*\n','',text,flags=re.M)),
             ('wrong ratio',text.replace('0.24455','0.49')),
             ('wrong e floor',text.replace('0.492418','0.9')),
             ('non-strict capacity',text.replace('0.823185','0.823422'))]
    for name,changed in changes:
        assert changed!=text
        try:audit(changed,verbose=False)
        except AssertionError:print('Rejected:',name)
        else:raise AssertionError('Accepted corruption '+name)
    print('PASS: seven independent identities,',rows,'rows,',strips,'covered c strips; four corruptions rejected.')
