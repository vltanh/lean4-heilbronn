"""Exact fixed-certificate check for the entire above-HC mixed branch."""
from fractions import Fraction as F
from itertools import combinations, combinations_with_replacement, product as cartesian
from pathlib import Path
import json
from check_seven_boundary_exterior_certificates import const, add, sub, scale, mul, product, area, cube_upper

S, RHO = F(7,64), F(13,16)
VARIABLES = 'a h b c d e f p_x p_y q_x q_y'.split()
a,h,b,c,d,e,f,px,py,qx,qy = [{(i,):F(1)} for i in range(11)]
FACTORS = [
    sub(a,const(F(1,7))),sub(sub(h,a),const(F(7,32))),sub(const(1),h),
    sub(b,const(F(1,8))),sub(f,b),sub(c,f),sub(const(F(1,2)),f),
    sub(const(F(57,64)),c),sub(c,const(F(7,16))),sub(d,const(F(1,7))),
    sub(sub(e,d),const(F(7,36))),sub(const(1),e),sub(e,const(F(1,2))),sub(h,const(F(28,57))),
    sub(px,const(F(1,8))),sub(const(F(57,64)),px),sub(py,const(F(1,7))),
    sub(const(F(57,64)),py),sub(sub(qx,f),const(S)),sub(const(F(57,64)),qx),
    sub(qy,const(F(1,7))),sub(const(F(57,64)),qy),
    sub(sub(c,b),const(F(7,50))),sub(sub(add(scale(c,F(6,7)),scale(f,F(1,7))),px),const(S)),
]
Z,O=const(0),const(1)
VERTICES=[(Z,a),(b,Z),(c,Z),(O,d),(O,e),(f,O),(Z,h),(px,py),(qx,qy)]
TRIPLES=[tr for tr in combinations(range(9),3) if tr[1]<7]
assert len(TRIPLES)==77
AREAS=[area(*(VERTICES[i] for i in tr)) for tr in TRIPLES]
CAPACITY_ONE=[(0,3,4),(0,3,6),(0,4,6),(3,4,6),(0,4,5),(3,5,6),(0,2,3)]
P_WORDS=[(2, 1, 3, 5, 4, 3, 3), (2, 2, 3, 4, 4, 3, 3), (2, 3, 3, 4, 3, 3, 3), (2, 4, 3, 4, 3, 2, 3), (3, 2, 3, 2, 4, 3, 4), (3, 2, 3, 3, 4, 3, 3), (3, 3, 3, 2, 3, 3, 4), (3, 3, 3, 3, 3, 3, 3), (3, 4, 3, 2, 3, 2, 4), (3, 4, 3, 3, 3, 2, 3), (4, 3, 3, 2, 2, 3, 4), (4, 3, 3, 3, 2, 3, 3), (4, 4, 3, 2, 2, 2, 4), (4, 4, 3, 3, 2, 2, 3)]
Q_WORDS=[
 (2,1,2,5,4,4,3),(2,2,2,4,4,4,3),(2,3,2,4,3,4,3),
 (3,2,2,1,4,5,4),(3,2,2,2,4,4,4),(3,2,2,3,4,4,3),
 (3,3,2,1,3,5,4),(3,3,2,2,3,4,4),(3,3,2,3,3,4,3),
 (4,3,2,1,2,5,4),(4,3,2,2,2,4,4),(4,3,2,3,2,4,3),
]


def sign(word,i,j):
    if i>j:return -sign(word,j,i)
    return 1 if j-i<=word[i] else -1


def inside(word,tr):
    i,j,k=sorted(tr)
    return sign(word,i,j)>0 and sign(word,j,k)>0 and sign(word,i,k)<0


def excluded_by_previous(p,q):
    for tr in CAPACITY_ONE:
        if inside(p,tr) and inside(q,tr):return 'V' if tr in CAPACITY_ONE[:4] else 'A'
    if all(inside(w,tr) for w in (p,q) for tr in [(1,4,6),(1,4,5)]):return 'M'
    if sign(p,1,4)<0 and inside(q,(0,4,6)) and inside(q,(3,4,5)):return 'C'
    return None


def specifications(p,q):
    specs=[]
    for tr in TRIPLES:
        i,j,k=tr
        if k<7:
            count=int(inside(p,tr))+int(inside(q,tr))
            specs.append((1,(S,3*S,RHO)[count]))
        else:
            specs.append((sign(p if k==7 else q,i,j),S))
    return specs


def costs(p,q):
    specs=specifications(p,q)
    return [sub(scale(a,sg),const(t)) for a,(sg,t) in zip(AREAS,specs)]


def residual(cert):
    qs=costs(tuple(cert['P']),tuple(cert['Q']))
    out={};used=set()
    for term in cert['terms']:
        if term[0]=='f':
            _,ids,w=term
            assert 1<=len(ids)<=3 and ids==sorted(ids)
            assert all(type(i) is int and 0<=i<24 for i in ids)
            poly=product(FACTORS[i] for i in ids)
        else:
            assert term[0]=='q'
            _,j,m,w=term
            assert type(j) is int and 0<=j<77
            assert type(m) is int and -1<=m<24
            used.add(j);poly=qs[j]
            if m!=-1:poly=mul(poly,FACTORS[m])
        assert type(w) is int and w>0
        out=add(out,scale(poly,F(w,cert['scale'])))
    assert all(len(m)<=3 for m in out)
    return out,used


def applicable(cert,used,p,q):
    ref=specifications(tuple(cert['P']),tuple(cert['Q']))
    other=specifications(p,q)
    return all(other[j][0]==ref[j][0] and other[j][1]>=ref[j][1] for j in used)


def verify():
    # The complement relation is a necessary condition for every interior ray word.
    words=[]
    for w in cartesian(range(1,6),repeat=7):
        if sum(w)!=21:continue
        if all((j<=w[i])==(7-j>w[(i+j)%7]) for i in range(7) for j in range(1,7)):
            words.append(w)
    ps={w for w in words if inside(w,(2,5,6)) and inside(w,(0,2,5)) and sign(w,4,6)>0}
    qs={w for w in words if inside(w,(2,4,5)) and sign(w,4,6)>0}
    assert len(words)==57 and ps==set(P_WORDS) and qs==set(Q_WORDS)
    remaining={(p,q) for p in P_WORDS for q in Q_WORDS if not excluded_by_previous(p,q)}
    assert len(remaining)==68
    data=json.loads(Path(__file__).with_name('seven_boundary_mixed_above_certificates.json').read_text())
    assert data['version']==1 and data['variables']==VARIABLES
    assert data['vertices']==['A','B','C','D','E','F','H','P','Q']
    seen=set();covered=set();total=0;worst=None
    certificates=[]
    for number,cert in enumerate(data['certificates'],1):
        p,q=tuple(cert['P']),tuple(cert['Q'])
        assert (p,q) in remaining and (p,q) not in seen
        seen.add((p,q));assert cert['scale']==4096
        poly,used=residual(cert);upper=cube_upper(poly)
        assert upper==F(cert['upper_bound']) and upper<=-F(3,4)
        applies={(pp,qq) for pp,qq in remaining if applicable(cert,used,pp,qq)}
        assert applies
        covered|=applies;total+=len(cert['terms'])
        worst=upper if worst is None else max(worst,upper)
        certificates.append((cert,used))
        print(f'PASS: certificate {number}, {len(cert["terms"])} positive terms, {len(applies)} covered word pairs')
    assert covered==remaining and len(certificates)==55
    print(f'PASS: all 68 remaining pairs covered by {len(certificates)} certificates and {total} positive terms')
    print(f'Largest exact residual bound: {worst}')
    print('Coverage table: V = vertical-triangle capacity; A = anchor area cap; M = common-cell theorem; C = crossed-cell theorem')
    for p in P_WORDS:
        row=[]
        for q in Q_WORDS:
            prior=excluded_by_previous(p,q)
            row.append(prior if prior else str(next(i for i,(cc,used) in enumerate(certificates,1) if applicable(cc,used,p,q))))
        print(' | '.join(row))


if __name__=='__main__':verify()
