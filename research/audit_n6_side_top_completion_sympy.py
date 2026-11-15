"""Independent reconstruction of the contributed 87-cubic upper N6 cover.

No polynomial arithmetic or sign data are imported from the supplied verifier.
"""
from functools import lru_cache
from itertools import combinations, product
from pathlib import Path
import json
import sympy as sp

ROOT = Path(__file__).resolve().parents[1]
a,h,b,c,d,f,x,y,z,w,r,t = V = sp.symbols('a h b c d f x y z w r t')
S = sp.Rational(7,64)
def poly(p):
    return sp.Poly(p, *V, domain=sp.QQ)

FACTORS = [a-sp.Rational(1,7), b-sp.Rational(1,8), h-sp.Rational(1,2),
 c-4*S, 1-h, 1-S-c, d-a, h-d, f-b, c-f, d-sp.Rational(1,2),
 sp.Rational(7,8)-d, 1-S-f, h-a-S, c-b-S, x-c-S, 1-x,
 y-sp.Rational(1,7), d-y-sp.Rational(7,36), z-f-2*S,
 w-d-sp.Rational(1,8), 1-z, 1-w, r-S, t-S, 1-S-r, 1-S-t]
FACTORS = list(map(poly, FACTORS))
EXTRA = {
 'left':z-x, 'low':h-w, 'df_Llo':sp.Rational(11,20)-h+a,
 'df_Lhi':h-a-sp.Rational(2,3), 'df_Mlo':sp.Rational(11,20)-z+f,
 'df_g':f-sp.Rational(1,4), 'df_c':sp.Rational(2,3)-c,
 'side_above':y-a, 'side_below':a-y,
}
EXTRA = {k:poly(v) for k,v in EXTRA.items()}
POINTS = [(0,a),(b,0),(c,0),(x,y),(1,d),(z,w),(f,1),(0,h),(r,t)]
TRIPLES = list(combinations(range(9),3))
AREAS = {}
for tr in TRIPLES:
    p,q,u = [POINTS[i] for i in tr]
    AREAS[tr] = poly((q[0]-p[0])*(u[1]-p[1])-(q[1]-p[1])*(u[0]-p[0]))

def edge(word,i,j):
    return (j-i)%8 <= word[i]
def inside(word,tr):
    return all(edge(word,tr[i],tr[(i+1)%3]) for i in range(3))
WORDS = {v for v in product(range(1,7), repeat=8)
         if 2<=v[1]<=5 and v[2]>=2 and v[4]>=2 and v[7]>=3
         and all(edge(v,i,j) != edge(v,j,i) for i,j in combinations(range(8),2))}
BD = (4,3,3,2,3,4,5,4)
DF = (3,2,3,4,5,4,4,3)
SPLIT = (4,4,4,4,3,3,3,3)
EXPECTED = {(q,'whole') for q in WORDS-{BD,DF,SPLIT}}
EXPECTED |= {(BD,b) for b in ('left','low')}
EXPECTED |= {(DF,b) for b in ('left','low','df_Llo','df_Lhi','df_Mlo','df_g','df_c')}
EXPECTED |= {(SPLIT,b) for b in ('side_above','side_below')}
assert len(WORDS)==79 and len(EXPECTED)==87

@lru_cache(None)
def factors(branch):
    return FACTORS + ([] if branch=='whole' else [EXTRA[branch]])
@lru_cache(None)
def factor_product(branch, ids):
    p=poly(1)
    for i in ids:
        p *= factors(branch)[i]
    return p

data=json.loads((ROOT/'hand/six_boundary_side_top_upper_certificates.json').read_text())
seen=set(); bounds=[]; term_count=0
for cert in data['certificates']:
    word=tuple(cert['word']); branch=cert['branch']; key=(word,branch)
    assert key in EXPECTED and key not in seen
    seen.add(key)
    threshold=sp.Rational(cert.get('threshold','7/64'))
    assert threshold in (S,sp.Rational(8,73),sp.Rational(79,720))
    assert (55+160*threshold)**2 < 81*65 and cert['scale']==4096
    qs=[]
    for tr in TRIPLES:
        i,j,k=tr
        sign=1 if k<8 or edge(word,i,j) else -1
        required=3*threshold if k<8 and inside(word,tr) else threshold
        qs.append(sign*AREAS[tr]-required)
    qs += [poly(h*c-4*S), 3*S-AREAS[0,1,7], 3*S-AREAS[1,2,3]]
    fs=factors(branch); total=poly(0)
    for term in cert['terms']:
        if term[0]=='f':
            _,ids,weight=term
            assert ids==sorted(ids) and 1<=len(ids)<=3
            assert all(type(i) is int and 0<=i<len(fs) for i in ids)
            summand=factor_product(branch,tuple(ids))
        else:
            assert term[0]=='q'
            _,qi,fi,weight=term
            assert type(qi) is int and 0<=qi<87
            assert type(fi) is int and -1<=fi<len(fs)
            summand=qs[qi] if fi==-1 else qs[qi]*fs[fi]
        assert type(weight) is int and weight>0
        total += sp.Rational(weight,4096)*summand
    assert total.total_degree()<=3
    upper=total.coeff_monomial(1)+sum(co for mon,co in total.terms() if any(mon) and co>0)
    assert upper==sp.Rational(cert['upper_bound']) and upper < -sp.Rational(3,4)
    bounds.append(upper); term_count+=len(cert['terms'])
assert seen==EXPECTED and term_count==18308

def orientation(word, triple):
    i,j,k=sorted(triple)
    sign=1 if k<8 or edge(word,i,j) else -1
    return sign*(-1)**sum(triple[i]>triple[j] for i in range(3) for j in range(i+1,3))
CRITICAL=('ABH','ABC','AGH','DEF','GHF','GEF','ADO','DHO','BOE','GCO','OCF')
for word, order in ((BD,(2,3,4,5,6,7,0,1,8)), (DF,tuple(range(9)))):
    mapping=dict(zip('ABCDEFGHO',order))
    assert all(orientation(word,tuple(mapping[v] for v in tr))==1 for tr in CRITICAL)
assert EXTRA['side_above']+EXTRA['side_below']==poly(0)
print('INDEPENDENT PASS: 79 upper words, 87 cubics, 18308 positive terms, all branches and sharp signs')
print('Greatest exact upper bound:',max(bounds))
