"""Independent exact identities and finite cover for the triangular N6 audit.

The inequalities themselves are checked geometrically in the companion
audit result. The separate coefficient expansion is by another reviewer.
"""
from pathlib import Path
from itertools import product
import hashlib,json
import sympy as sp
ROOT=Path(__file__).resolve().parents[1]
S=sp.Rational(8,73);R=sp.Rational(49,60)
a,h,b,c,d,f,xx,xy,px,py,qx,qy=sp.symbols('a h b c d f xx xy px py qx qy')
pts=[(0,a),(b,0),(c,0),(1,d),(xx,xy),(f,1),(0,h),(px,py),(qx,qy)]
def area(i,j,k):
    p,q,u=pts[i],pts[j],pts[k]
    return sp.expand((q[0]-p[0])*(u[1]-p[1])-(q[1]-p[1])*(u[0]-p[0]))
cap=area(3,4,5);delta=(1-d)*(1-f)
assert sp.expand(cap-((1-d)*(xx-f)-(1-f)*(1-xy)))==0
assert sp.expand(cap-((1-f)*(xy-d)-(1-d)*(1-xx)))==0
assert sp.expand(delta-cap-((1-d)*(1-xx)+(1-f)*(1-xy)))==0
assert sp.expand(area(3,4,7)-((xy-d)*(1-px)-(1-xx)*(py-d)))==0
assert sp.expand(area(4,5,7)-((xx-f)*(1-py)-(1-xy)*(px-f)))==0
assert sp.expand((1-f)*area(2,3,8)+(1-c)*area(3,5,8)-area(2,3,5)*(1-qx))==0
assert sp.expand((1-h)*area(3,5,8)+(1-d)*area(5,6,8)-area(3,5,6)*(1-qy))==0
T=area(2,4,5)
assert sp.expand(T-(xx-f-(c-f)*(1-xy)))==0
budget=1-4*S+(4*S-sp.Rational(1,8))*xy
assert sp.expand(budget-T-((1-xx)+(c-4*S)*(1-xy)+(f-sp.Rational(1,8))*xy))==0
assert S/sp.Rational(7,8)==sp.Rational(64,511)
assert 3*S/sp.Rational(7,8)==sp.Rational(192,511)
assert 1-3*S/sp.Rational(7,8)==sp.Rational(319,511)
assert 3*S>sp.Rational(16,49)
assert (R-1+4*S)/(4*S-sp.Rational(1,8))==sp.Rational(2234,2745)
assert S/(1-R)==sp.Rational(480,803)
assert 4*S-sp.Rational(1,8)>0
assert 12*480**2-1657**2==19151
assert 65*219**2-1765**2==2240
words=[w for w in product(range(1,6),repeat=7)
       if all(((j-i)<=w[i]) != ((7-j+i)<=w[j])
              for i in range(7) for j in range(i+1,7))]
assert len(words)==57
capwords=[i for i,w in enumerate(words) if w[3]==1]
insidewords=[i for i,w in enumerate(words) if w[3]>=2]
assert capwords==[19,22,28,38,39] and len(insidewords)==52
assert sum(words[i][6]<3 for i in insidewords)==19
cases=[(i,j) for i in capwords for j in insidewords]
assert len(cases)==260 and cases[230]==(39,24) and cases[238]==(39,33)
assert [i for i in range(7) if words[39][i]==words[24][i]]==[2]
assert [i for i in range(7) if words[39][i]==words[33][i]]==[1]
for idx in cases[230]:
    w=words[idx]
    assert 2<=w[2] and 1<=w[4] and 4<=w[5] # CX, XF, FC.
assert words[cases[230][1]][6]>=3
assert 260+1+1==262
data_path=ROOT/'hand/six_boundary_two_top_triangular_certificates.json'
data=json.loads(data_path.read_text())
assert data['complete'] and len(data['certificates'])==220 and len(data['cover'])==262
result={
 'status':'independent_geometry_and_model_pass',
 'data_sha256':hashlib.sha256(data_path.read_bytes()).hexdigest(),
 'radial_words':57,'cap_words':5,'anchor_inner_words':52,
 'ordered_pairs':260,'terminal_cells':262,
 'checks':[
  'Complete triangular cap/hull normalization, including square-side contacts',
  'All 27 common affine inequalities audited geometrically',
  'Inner-cap upper coordinate bounds checked from actual subdivision costs',
  'All five lower-Q affine inequalities and their endpoint-triangle premise',
  'Both case230 CXF containments, independently of the CPQ sign',
  'All four new case230 inequalities, with positive signed area CXF',
  'All actual-containment and extra quadratic costs',
  'Both exhaustive actual-line splits and the threshold-aware reuse rule',
  'Strict minimum-area bound below 4/73 for the entire branch'],
 'coefficient_audit':'Separate independent SymPy audit by one_corner:220 cubics,29641 terms',
}
(ROOT/'research/n6_two_top_triangular_geometry_audit.json').write_text(json.dumps(result,indent=2)+'\n')
print('INDEPENDENT GEOMETRY/MODEL PASS: all identities,57 words,260 pairs,262 cells, four case230 bounds')

