"""Exact actual-coordinate checks for the two common-box capacities."""
from fractions import Fraction as Q
from pathlib import Path
import re
import sympy as sp


def main():
    a,b,f,h,A0,B0,F0,a0=sp.symbols('a b f h A0 B0 F0 a0')
    points={'A':(0,a),'B':(b,0),'F':(f,1),'H':(0,h)}
    def det(t):
        p,q,r=(points[k] for k in t)
        return (q[0]-p[0])*(r[1]-p[1])-(q[1]-p[1])*(r[0]-p[0])
    tests=[det('ABF')-(b*(1-a)+a*f),det('AFH')-f*(h-a),
        B0*(1-A0)+A0*F0-det('ABF')-(A0-a)*(f-b)-A0*(F0-f)-(1-A0)*(B0-b),
        F0*(1-a0)-det('AFH')-(F0-f)*(1-a0)-f*(1-h)-f*(a-a0)]
    assert all(sp.expand(t)==0 for t in tests)
    A,B,F=Q(137,200),Q(535,907),Q(883,1000)
    S=Q(93,1000);JS=Q(4427,500)*S
    assert 0<A<1 and 0<B<F<1
    upper=B*(1-A)+A*F
    assert upper==Q(143425697,181400000)
    assert JS-upper==Q(29715269,907000000)>0
    text=Path(__file__).with_name('N7_CENTRAL_COMPLETION_BOX_CAPS.md').read_text()
    rows=[]
    for line in text.splitlines():
        if re.match(r'^\| C[AB] \|',line):
            fields=[t.strip() for t in line.split('|')[1:-1]]
            assert len(fields)==4
            rows.append((fields[0],*(Q(q) for q in fields[1:])))
    assert len(rows)==2 and {r[0] for r in rows}=={'CA','CB'}
    for cell,low,cap,gap in rows:
        assert low==(Q(139,1000) if cell=='CA' else Q(122,1000))
        assert cap==F*(1-low) and gap==JS-cap>0
    print('PASS:',len(tests),'actual determinant/remainder identities; ABF ceiling and gap; 2 AFH rows')


if __name__=='__main__':main()
