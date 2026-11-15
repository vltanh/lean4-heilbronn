"""Exact polynomial model for the one-lower C1 mixed-cap cases."""
from fractions import Fraction as F
from itertools import product, combinations, combinations_with_replacement
import json
from pathlib import Path
from check_c1_zero_lower_certificates import (
    const, add, scale, sub, mul, area, VARS, ZERO, ONE, POINTS, TRIPLES, AREAS,
    W, VARIABLES, WORDS, ALL_WORDS, sign, inside, oriented_sign, cube_upper)

S, RHO = F(8,73), F(49,60)
h,c,d,f = VARS[:4]
XY = list(zip(VARS[4::2],VARS[5::2]))
LOWER = [(1,3,3,2,1),(2,3,2,2,1),(3,3,2,1,1)]
UPPER = [WORDS[i] for i in (1,2,4,5,6,7,9,10)]
CAPWORDS = {'r':(1,0,4,3,2),'t':(2,1,0,4,3),'l':(3,2,1,0,4)}

def words(case):
    kind,li,qi = case
    return [CAPWORDS[kind[0]],CAPWORDS[kind[1]],LOWER[li],UPPER[qi]]

def candidate_cases():
    out=[]
    for kind in ('rt','rl','tl'):
        for li in range(3):
            for qi in range(8):
                ws=words((kind,li,qi))
                if sum(w[0]==1 for w in ws)>2:continue
                if sum(inside(w,(0,3,4)) for w in ws)>1:continue
                out.append((kind,li,qi))
    return out

CASES=candidate_cases()

def base_signs(case):
    ws=words(case)
    out={}
    for t in TRIPLES:
        if t[2]<5:out[t]=1
        elif t[1]<5:
            out[t]=1 if sign(ws[t[2]-5],t[0],t[1]) else -1
    for a,b in combinations(range(4),2):
        for v in range(5):
            if ws[a][v]!=ws[b][v]:
                out[(v,a+5,b+5)]=1 if ws[a][v]<ws[b][v] else -1
    out[(5,6,7)]=1
    return out

def get_signs(case,additional=()):
    out=base_signs(case)
    for t,sg in additional:
        t=tuple(t)
        assert t in AREAS and sg in (-1,1)
        assert t not in out or out[t]==sg
        out[t]=sg
    return out

def cost_specs(case,additional=()):
    signs=get_signs(case,additional)
    out=[]
    for t,sg in signs.items():
        cnt=sum(all(oriented_sign(signs,(t[i],t[(i+1)%3],j))==sg
                    for i in range(3)) for j in range(5,9) if j not in t)
        if cnt>2:return None
        out.append((t,sg,(S,3*S,RHO)[cnt]))
    return out

def factors(case,extra=()):
    kind,li,qi=case
    out=[sub(h,const(3*S)),sub(c,const(3*S)),sub(ONE,h),sub(ONE,c),
         sub(d,const(S)),sub(const(1-S),d),sub(f,const(S)),sub(const(1-S),f),
         sub(h,d),sub(c,f),sub(d,f),sub(d,const(4*S))]
    if 't' in kind:
        out += [sub(const(F(67,100)),f),sub(const(F(57,65)),d)]
    if 'r' in kind:
        out += [sub(c,const(F(1,7))),sub(const(F(6,7)),c)]
    if 'l' in kind:
        out += [sub(f,const(4*S)),sub(h,const(F(1,7))),sub(const(F(6,7)),h)]
    for cat,(x,y) in zip(kind,XY[:2]):
        out += [sub(x,const(S)),sub(y,const(S))]
        if cat=='r':
            gap=F(8,41) if kind=='rl' else F(8,49)
            out += [sub(ONE,x),sub(sub(d,y),const(gap)),
                    sub(sub(x,c),const(F(8,65))),sub(y,const(7*S/6))]
        elif cat=='t':
            gap=F(8,41) if kind=='tl' else F(8,65)
            out += [sub(ONE,x),sub(ONE,y),sub(sub(x,f),const(F(8,41))),
                    sub(sub(y,d),const(gap))]
        else:
            out += [sub(sub(f,x),const(F(8,41))),sub(ONE,y),
                    sub(sub(y,h),const(F(8,65))),sub(x,const(7*S/6))]
    lx,ly=XY[2];qx,qy=XY[3]
    out += [sub(lx,const(S)),sub(ly,const(S)),sub(sub(c,lx),const(2*S)),
            sub(sub(h,ly),const(2*S)),sub(sub(ONE,lx),add(ly,const(S))),
            sub(qx,const(S)),sub(qy,const(S)),sub(const(1-S),qx),sub(const(1-S),qy)]
    # An optional whole-word strengthening is recorded explicitly.
    for item in extra:
        if item=='double_od':
            ws=words(case)
            assert all(inside(w,(0,2,4)) and inside(w,(0,2,3)) for w in ws[2:])
            out += [sub(h,const(RHO)),sub(const(F(803,1920)),f)]
        else:
            # A closed affine interval from an exhaustive binary scalar split.
            vi,num,den,sg=item
            assert vi in range(12) and den>0 and sg in (-1,1)
            out += [scale(sub(VARS[vi],const(F(num,den))),sg)]
    return out

def costs(case,additional=()):
    kind,_,_=case
    out=[sub(mul(h,c),const(3*S)),sub(W,const(4*S)),
         sub(const(1-4*S),AREAS[(2,3,4)]),
         sub(const(F(36,49) if kind=='rl' else F(67,100)),AREAS[(0,3,4)])]
    if 'l' in kind:
        out += [sub(const(1-4*S),AREAS[(1,2,3)])]
    if 't' in kind:
        z=5+kind.index('t')
        out += [sub(const(1-F(7,3)*S),AREAS[(1,2,z)]),
                sub(const(1-F(7,3)*S),AREAS[(3,4,z)])]
    specs=cost_specs(case,additional)
    assert specs is not None
    out += [sub(scale(AREAS[t],sg),const(bound)) for t,sg,bound in specs]
    return out

def cubic_costs(case):
    kind,_,_=case
    out=[]
    if 'r' in kind:out.append(sub(mul(mul(d,c),sub(ONE,c)),const(S)))
    if 'l' in kind:out.append(sub(mul(mul(f,h),sub(ONE,h)),const(S)))
    return out

def cyclic_consistent(case,additional):
    sg=get_signs(case,additional)
    hull={'rt':[0,1,5,2,6,3,4],
          'rl':[0,1,5,2,3,6,4],
          'tl':[0,1,2,5,3,6,4]}[case[0]]
    for a,b in combinations(range(9),2):
        seq=[oriented_sign(sg,(a,b,v)) for v in hull if v not in (a,b)]
        seq=[s for s in seq if s is not None]
        if seq and sum(seq[i]!=seq[(i+1)%len(seq)] for i in range(len(seq)))>2:
            return False
    return True

def verify_bounds():
    assert len(ALL_WORDS)==16 and len(WORDS)==11
    assert len(CASES)==62
    assert [sum(ca[0]==kind for ca in CASES) for kind in ('rt','rl','tl')]==[20,20,22]
    assert CASES[9]==('rt',1,3)
    assert [len(factors(next(ca for ca in CASES if ca[0]==k))) for k in ('rt','rl','tl')]==[37,38,38]
    assert F(36,49)<RHO and F(67,100)<RHO and 1-F(7,3)*S<RHO
    assert S/(1-S)==F(8,65) and S/(1-3*S)==F(8,49) and S/(1-4*S)==F(8,41)
    assert (1-RHO)/(4*S)==F(803,1920)
    assert 3>F(25,9) # sqrt(3)>5/3.
    for ca in CASES:
        assert cost_specs(ca) is not None and cyclic_consistent(ca,())
        ws=words(ca)
        # X,Y and each OHC vertex have the same positive orientation.
        sg=base_signs(ca)
        assert all(sg[(v,5,6)]==1 for v in (0,1,4))
    return True

if __name__=='__main__':
    verify_bounds()
    print('mixed-cap exact common bounds and 62-case cover pass')

