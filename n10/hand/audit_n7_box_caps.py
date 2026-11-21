"""Independent actual determinants and rational caps for ABF and AFH."""
from pathlib import Path
from fractions import Fraction as Q
import re
import sympy as sp

a,b,e,f,h,A,B,F,z=sp.symbols('a b e f h A B F z')
points={'A':(0,a),'B':(b,0),'E':(1,e),'F':(f,1),'H':(0,h)}
def det(word):
    p,q,r=[points[i] for i in word]
    return (q[0]-p[0])*(r[1]-p[1])-(q[1]-p[1])*(r[0]-p[0])
tests=[det('ABF')-b*(1-a)-a*f,
       det('AFH')-f*(h-a),
       B*(1-A)+A*F-det('ABF')-(A-a)*(f-b)-A*(F-f)-(1-A)*(B-b),
       F*(1-z)-det('AFH')-(F-f)*(1-z)-f*(1-h)-f*(a-z),
       det('ABE')+det('AEF')-1+(e-a)*(f-b)]
assert all(sp.expand(test)==0 for test in tests)
limit=Q(4427,500)*Q(93,1000)
upper=Q(535,907)*(1-Q(137,200))+Q(137,200)*Q(883,1000)
assert upper==Q(143425697,181400000)<limit
assert Q(93,91)-1==Q(2,91)>0
assert limit-upper==Q(29715269,907000000)>0
text=Path(__file__).with_name('N7_CENTRAL_COMPLETION_BOX_CAPS.md').read_text()
rows=[tuple(part.strip() for part in line.split('|')[1:-1])
      for line in text.splitlines() if re.match(r'^\| C[AB] \|',line)]
assert len(rows)==2 and {row[0] for row in rows}=={'CA','CB'}
for cell,floor,cap,gap in rows:
    floor,cap,gap=map(Q,(floor,cap,gap))
    assert floor==(Q(139,1000) if cell=='CA' else Q(122,1000))
    assert cap==Q(883,1000)*(1-floor)<limit and gap==limit-cap>0
print('PASS: five fresh actual-coordinate identities, ABF/AFH caps and gaps, and actual ABEF capacity gap.')
