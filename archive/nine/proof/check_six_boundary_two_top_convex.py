"""Exact fixed cubic expressions for the convex N6 opposite-cap pair.

This verifier enumerates the radial words and checks rational identities.
It does not run an optimizer or import numerical search output.
"""
from fractions import Fraction as F
from functools import lru_cache
from itertools import combinations, product as tuples
from pathlib import Path
import json
from check_seven_boundary_exterior_certificates import (
    const, add, sub, mul, scale, product, area, cube_upper,
)

S = F(8, 73)
VARIABLES = 'a h b c d f ex ey gx gy x y'.split()
VERTEX_NAMES = 'A B C D E G F H O'.split()
a,h,b,c,d,f,ex,ey,gx,gy,x,y = [{(i,):F(1)} for i in range(12)]
Z,U = const(0),const(1)
VERTICES = [(Z,a),(b,Z),(c,Z),(U,d),(ex,ey),(gx,gy),(f,U),(Z,h),(x,y)]
TRIPLES = list(combinations(range(9),3))
AREAS = {tr:area(*(VERTICES[i] for i in tr)) for tr in TRIPLES}
FACTORS = [
    sub(a,const(F(1,8))), sub(b,const(F(1,8))),
    sub(h,const(4*S)), sub(c,const(4*S)), sub(U,h), sub(U,c),
    sub(d,a), sub(h,d), sub(f,b), sub(c,f), sub(d,f),
    sub(d,const(F(1,8))), sub(f,const(F(1,8))),
    sub(const(F(255,511)),d), sub(const(F(17,50)),f),
    sub(sub(h,a),const(50*S/17)), sub(sub(c,b),const(511*S/255)),
    sub(sub(ex,f),const(F(64,511))), sub(sub(ey,d),const(F(64,511))),
    sub(U,ex), sub(U,ey),
    sub(sub(gx,f),const(F(64,511))), sub(sub(gy,d),const(F(64,511))),
    sub(U,gx), sub(U,gy), sub(sub(ex,gx),const(S)), sub(sub(gy,ey),const(S)),
    sub(x,const(S)), sub(const(1-S),x), sub(y,const(S)), sub(const(1-S),y),
]
BRANCHES = {
    'l_low':sub(const(F(11,20)),sub(h,a)),
    'l_high':sub(sub(h,a),const(F(2,3))),
    'm_low':sub(const(F(11,20)),sub(gx,f)),
    'g_high':sub(f,const(F(1,4))),
    'c_low':sub(const(F(2,3)),c),
    'k_low':sub(h,gy),
    'x_low':sub(const(F(1,2)),x),
    'x_high':sub(x,const(F(1,2))),
}
SHARP_BRANCHES = ('l_low','l_high','m_low','g_high','c_low','k_low')
EARS = ((0,1,7),(0,1,2),(1,2,3),(2,3,6),(3,6,7),(0,6,7))
W = sub(U,mul(sub(h,d),sub(c,f)))


@lru_cache(maxsize=1)
def words():
    return tuple(w for w in tuples(range(1,7),repeat=8)
                 if w[3]>=3 and all((j<=w[i])==(8-j>w[(i+j)%8])
                                   for i in range(8) for j in range(1,8)))


def positive(word,i,j):
    return (j-i)%8<=word[i]


def inside(word,tr):
    return all(positive(word,tr[k],tr[(k+1)%3]) for k in range(3))


@lru_cache(maxsize=None)
def costs(word):
    upper = positive(word,7,2)
    out = [sub(mul(sub(U,d),sub(U,f)),const(4*S)),
           sub(mul(h,c),const(4*S if upper else F(7,11))),
           sub(W,const(4*S if upper else 2*S))]
    out += [sub(const(F(13,16)),AREAS[tr]) for tr in EARS]
    for tr in TRIPLES:
        i,j,k = tr
        sg = 1 if k<8 or positive(word,i,j) else -1
        threshold = 3*S if k<8 and inside(word,tr) else S
        out.append(sub(scale(AREAS[tr],sg),const(threshold)))
    assert len(out)==93
    return out


def required_branches():
    return ({(i,'whole') for i in range(94) if i not in (31,66)}
            | {(31,b) for b in SHARP_BRANCHES}
            | {(66,b) for b in ('x_low','x_high')})


def residual(cert):
    word = tuple(cert['word'])
    branch = cert['branch']
    ff = FACTORS + ([] if branch=='whole' else [BRANCHES[branch]])
    qq = costs(word)
    out = {}
    assert type(cert['scale']) is int and cert['scale']>0
    for term in cert['terms']:
        if term[0]=='f':
            _,ids,weight = term
            assert ids==sorted(ids) and 1<=len(ids)<=3
            assert all(type(i) is int and 0<=i<len(ff) for i in ids)
            p = product(ff[i] for i in ids)
        else:
            assert term[0]=='q'
            _,qi,fi,weight = term
            assert type(qi) is int and 0<=qi<93
            assert type(fi) is int and -1<=fi<len(ff)
            p = qq[qi] if fi==-1 else mul(qq[qi],ff[fi])
        assert type(weight) is int and weight>0
        out = add(out,scale(p,F(weight,cert['scale'])))
    assert all(len(mon)<=3 for mon in out)
    return out


def orientation(word,tr):
    i,j,k = sorted(tr)
    sg = 1 if k<8 or positive(word,i,j) else -1
    inversions = sum(tr[i]>tr[j] for i in range(3) for j in range(i+1,3))
    return sg if inversions%2==0 else -sg


def verify_geometry_identities():
    CD,DF,FH = AREAS[2,3,8],AREAS[3,6,8],AREAS[6,7,8]
    assert add(mul(sub(U,f),CD),mul(sub(U,c),DF)) == mul(AREAS[2,3,6],sub(U,x))
    assert add(mul(sub(U,d),FH),mul(sub(U,h),DF)) == mul(AREAS[3,6,7],sub(U,y))
    du,dv = sub(ex,gx),sub(gy,ey)
    assert AREAS[3,4,5] == sub(mul(du,sub(ey,d)),mul(sub(U,ex),dv))
    assert AREAS[4,5,6] == sub(mul(dv,sub(gx,f)),mul(sub(U,gy),du))
    for zx,zy in ((ex,ey),(gx,gy)):
        cap = area(VERTICES[3],(zx,zy),VERTICES[6])
        assert cap == sub(mul(sub(U,d),sub(zx,f)),mul(sub(U,f),sub(U,zy)))
        assert cap == sub(mul(sub(U,f),sub(zy,d)),mul(sub(U,d),sub(U,zx)))


def verify_sharp_map():
    sharp = [i for i,w in enumerate(words())
             if positive(w,0,3) and positive(w,3,7)
             and not positive(w,1,4) and not positive(w,2,6) and positive(w,2,5)]
    assert sharp==[31]
    lookup = dict(zip('ABCDEFGHO',range(9)))
    for name in ('ABH','ABC','AGH','DEF','GHF','GEF','ADO','DHO','BOE','GCO','OCF'):
        assert orientation(words()[31],tuple(lookup[t] for t in name))==1
    assert [VERTICES[lookup[t]] for t in 'ABCDEFGHO'] == [
        (Z,a),(b,Z),(c,Z),(U,d),(ex,ey),(gx,gy),(f,U),(Z,h),(x,y)]


def verify():
    assert len(words())==94 and len(FACTORS)==31 and len(required_branches())==100
    assert words()[31]==(3,2,3,4,5,4,4,3)
    assert words()[66]==(4,4,4,4,3,3,3,3)
    verify_geometry_identities()
    verify_sharp_map()
    assert 65*219**2-1765**2==2240  # S < 2A0.
    assert 4*S>F(33,50)**2 and 1-4*S/F(7,8)==F(255,511)
    assert S/F(7,8)==F(64,511) and 8>F(31,11)**2
    data = json.loads(Path(__file__).with_name('six_boundary_two_top_convex_certificates.json').read_text())
    assert data['version']==1 and data['variables']==VARIABLES and data['vertices']==VERTEX_NAMES
    assert data['threshold']==str(S)
    seen,total,worst = set(),0,None
    for cert in data['certificates']:
        index,branch = cert['index'],cert['branch']
        assert type(index) is int and (index,branch) in required_branches()
        assert (index,branch) not in seen
        seen.add((index,branch))
        assert tuple(cert['word'])==words()[index] and cert['threshold']==str(S)
        assert cert['scale'] in (4096,16384,65536,262144)
        bound = cube_upper(residual(cert))
        assert bound==F(cert['upper_bound']) and bound<=-F(3,4)
        total += len(cert['terms'])
        worst = bound if worst is None else max(worst,bound)
        print('PASS:',index,branch,len(cert['terms']),'positive terms; exact upper',bound)
    assert seen==required_branches() and len(seen)==100
    assert total==data['positive_terms']==17619
    assert worst==F(data['greatest_upper_bound'])==F(-11315534897214263309,11507808525803520000)
    print('PASS: all94 radial words; 100 fixed cubics and the sharp E/F chamber')
    print('PASS: sharp-chamber map, cap identities, projection identities, and rational comparisons')
    print('Positive terms:',total,'; greatest exact cube upper bound:',worst)


if __name__=='__main__':
    verify()
