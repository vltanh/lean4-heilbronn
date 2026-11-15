"""Exact finite certificate cover for two side caps and one upper point.

Only Fraction arithmetic and finite integer enumeration are used.  The
certificate file supplies fixed positive weights, never a search oracle.
"""
from fractions import Fraction as F
from functools import lru_cache
from itertools import combinations, product
import json
from pathlib import Path

S=F(7,64)
VARIABLES='a h b c d f x y z w r t'.split()

def const(c):return {():F(c)} if c else {}
def add(*polys):
    out={}
    for p in polys:
        for m,c in p.items():out[m]=out.get(m,F(0))+c
    return {m:c for m,c in out.items() if c}
def scale(p,c):return {m:v*c for m,v in p.items() if v*c}
def sub(p,q):return add(p,scale(q,-1))
def mul(p,q):
    out={}
    for m,c in p.items():
        for k,d in q.items():
            key=tuple(sorted(m+k));out[key]=out.get(key,F(0))+c*d
    return {m:c for m,c in out.items() if c}
def area(P,Q,R):
    return sub(mul(sub(Q[0],P[0]),sub(R[1],P[1])),
               mul(sub(Q[1],P[1]),sub(R[0],P[0])))

a,h,b,c,d,f,x,y,z,w,r,t=[{(i,):F(1)}for i in range(12)]
ZERO,ONE=const(0),const(1)
POINTS=[(ZERO,a),(b,ZERO),(c,ZERO),(x,y),(ONE,d),(f,ONE),(z,w),(ZERO,h),(r,t)]
TRIPLES=list(combinations(range(9),3))
AREAS=[area(*(POINTS[i]for i in tr))for tr in TRIPLES]
FACTORS=[
    sub(a,const(F(7,50))),sub(b,const(F(7,50))),
    sub(h,const(F(1,2))),sub(c,const(F(1,2))),
    sub(const(1-S),h),sub(const(1-S),c),sub(d,a),sub(h,d),
    sub(f,b),sub(c,f),sub(d,f),sub(sub(h,a),const(S)),
    sub(sub(c,b),const(S)),sub(ONE,x),sub(ONE,w),
    sub(sub(x,c),const(S)),sub(sub(w,h),const(S)),
    sub(sub(d,y),const(S)),sub(sub(f,z),const(S)),
    sub(y,const(S)),sub(z,const(S)),sub(r,const(S)),sub(t,const(S)),
    sub(const(1-S),r),sub(const(1-S),t),
    sub(d,const(F(1,2))),sub(f,const(F(1,2))),
]

def positive(word,i,j):return (j-i)%8<=word[i]
def inside(word,tr):
    return all(positive(word,tr[i],tr[(i+1)%3])for i in range(3))

@lru_cache(maxsize=1)
def words():
    # HC, CD, FH are the three non-edge tests for the upper quadrilateral.
    ranges=[range(1,7)for _ in range(8)]
    ranges[2]=range(2,7);ranges[5]=range(2,7);ranges[7]=range(3,7)
    return tuple(word for word in product(*ranges)
                 if all((j<=word[i])==(8-j>word[(i+j)%8])
                        for i in range(8)for j in range(1,8)))

SHARP=(4,3,3,2,3,4,5,4)

@lru_cache(maxsize=None)
def cost_specs(word):
    return tuple((1 if tr[2]<8 or positive(word,tr[0],tr[1])else-1,
                  3*S if tr[2]<8 and inside(word,tr)else S)
                 for tr in TRIPLES)

def costs(word):
    return [sub(scale(p,sg),const(bound))
            for p,(sg,bound)in zip(AREAS,cost_specs(word))]

@lru_cache(maxsize=None)
def factor_product(ids):
    p=const(1)
    for i in ids:p=mul(p,FACTORS[i])
    return p

def residual(cert):
    qs=costs(tuple(cert['word']));out={}
    assert cert['scale']==4096
    for term in cert['terms']:
        if term[0]=='f':
            _,ids,weight=term
            assert 1<=len(ids)<=3 and ids==sorted(ids)
            assert all(type(i)is int and 0<=i<27 for i in ids)
            p=factor_product(tuple(ids))
        else:
            assert term[0]=='q'
            _,i,j,weight=term
            assert type(i)is int and 0<=i<84
            assert type(j)is int and -1<=j<27
            p=qs[i] if j==-1 else mul(qs[i],FACTORS[j])
        assert type(weight)is int and weight>0
        out=add(out,scale(p,F(weight,4096)))
    assert all(len(m)<=3 for m in out)
    return out

def cube_upper(p):
    return p.get((),F(0))+sum((coef for m,coef in p.items()if m and coef>0),F(0))

def applies(cert,target):
    source=cost_specs(tuple(cert['word']));other=cost_specs(target)
    used={term[1]for term in cert['terms']if term[0]=='q'}
    return all(source[i][0]==other[i][0]and source[i][1]<=other[i][1]for i in used)

def verify():
    assert S/(1-2*S)==F(7,50)>F(1,8)
    assert 4*S/(1-F(7,50))>F(1,2)
    # Cap endpoints, upper-point projection identities, and the rotation.
    capR=area(POINTS[2],POINTS[3],POINTS[4])
    assert capR==sub(mul(d,sub(x,c)),mul(sub(ONE,c),y))
    capL=area(POINTS[5],POINTS[6],POINTS[7])
    assert capL==sub(mul(sub(ONE,h),sub(f,z)),mul(f,sub(ONE,w)))
    CDQ=area(POINTS[2],POINTS[4],POINTS[8])
    DFQ=area(POINTS[4],POINTS[5],POINTS[8])
    FHQ=area(POINTS[5],POINTS[7],POINTS[8])
    CDF=area(POINTS[2],POINTS[4],POINTS[5])
    DFH=area(POINTS[4],POINTS[5],POINTS[7])
    assert add(mul(sub(ONE,f),CDQ),mul(sub(ONE,c),DFQ))==mul(CDF,sub(ONE,r))
    assert add(mul(sub(ONE,d),FHQ),mul(sub(ONE,h),DFQ))==mul(DFH,sub(ONE,t))
    ww=words();assert len(ww)==82 and ww[48]==SHARP
    assert all(sum(word)==28 for word in ww)
    # Prime A,B,C,D,E,F,G,H,O correspond to these original point indices.
    mapping=[2,3,4,5,6,7,0,1,8]
    prime=[(POINTS[i][1],sub(ONE,POINTS[i][0]))for i in mapping]
    expected=[(ZERO,sub(ONE,c)),(y,sub(ONE,x)),(d,ZERO),
              (ONE,sub(ONE,f)),(w,sub(ONE,z)),(h,ONE),(a,ONE),
              (ZERO,sub(ONE,b)),(t,sub(ONE,r))]
    assert prime==expected
    for i,j,k in combinations(range(9),3):
        assert area(prime[i],prime[j],prime[k])==area(*(POINTS[mapping[v]]for v in (i,j,k)))
    # The five interior signs of the B/E chamber become CFQ, FBQ, XQY, ADQ, DHQ.
    for i,j in ((2,5),(5,1),(0,4),(4,7)):assert positive(SHARP,i,j)
    assert not positive(SHARP,3,6)
    data=json.loads(Path(__file__).with_name('six_boundary_two_side_upper_certificates.json').read_text())
    assert data['version']==1 and data['variables']==VARIABLES
    assert data['vertices']==['A','B','C','X','D','F','Y','H','Q']
    assert tuple(data['sharp_word'])==SHARP
    expected=set(ww)-{SHARP};covered=set();seen=set();total=0;worst=None
    for cert in data['certificates']:
        word=tuple(cert['word']);assert word in expected and word not in seen
        assert type(cert['index'])is int and ww[cert['index']]==word
        seen.add(word)
        bound=cube_upper(residual(cert))
        assert bound==F(cert['upper_bound'])and bound<=-F(3,4)
        cover={target for target in ww if applies(cert,target)}
        assert word in cover and SHARP not in cover
        covered|=cover;total+=len(cert['terms'])
        worst=bound if worst is None else max(worst,bound)
    assert covered==expected
    assert len(seen)==80 and total==14253
    assert worst==-F(661437830559,671088640000)
    print('PASS: complete 82-word upper-point cover and sharp-word rotation')
    print('PASS: all 81 other words excluded by 80 fixed cubic certificates, 14,253 positive terms')
    print('Largest exact cube upper bound:',worst)

if __name__=='__main__':verify()
