"""Source-complete Fraction replay of the three printed IRTT radial candidates.

Reads only hand manuscripts and literal tables, never a discovery engine.
This author checker is separate from n6_irtt_core_independent.py.
"""
from collections import Counter
from fractions import Fraction as F
from functools import lru_cache
from itertools import combinations, product
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parent
LABELS = 'ABCEFHQRS'
VARIABLES = 'a b c e f h u v r w j k'.split()
S = F(93, 1000)
ALPHA = F(1037, 10000)
K, J, G = F(149, 20), F(4427, 500), F(1457, 250)
COST = [S, 3*S, K*S, J*S]
OCTAGON = 'ABCQERFH'
EARS = [OCTAGON[(i-1) % 8]+v+OCTAGON[(i+1) % 8] for i,v in enumerate(OCTAGON)]
EAR_CAP = F(248858189, 10**9)
SUM_CAP = F(76277533, 62500000)
SIX_CAPS = dict(ERF=F(8963, 25000), QER=F(295779, 2000000),
                CQE=F(80667, 500000), BCQ=F(8963, 62500))
LAMBDA = F(2325, 8963)


def unique(entries):
    result = dict(entries)
    assert len(result) == len(entries)
    return result


def read_packet(path):
    text = path.read_text()
    assert text.count('```json\n') == 1
    body, closing = text.split('```json\n')[1].split('\n```')
    assert not closing.strip()
    return json.loads(body, object_pairs_hook=unique)


def C(value):
    value = F(value)
    return {(): value} if value else {}


def V(index):
    return {(index,): F(1)}


def add(*polys):
    out = {}
    for poly in polys:
        for monomial, coefficient in poly.items():
            out[monomial] = out.get(monomial, F(0))+coefficient
    return {m:c for m,c in out.items() if c}


def scale(poly, coefficient):
    return {m:c*coefficient for m,c in poly.items() if c*coefficient}


def sub(first, second):
    return add(first, scale(second, -1))


def mul(first, second):
    out = {}
    for m,c in first.items():
        for n,d in second.items():
            monomial = tuple(sorted(m+n))
            out[monomial] = out.get(monomial, F(0))+c*d
    return {m:c for m,c in out.items() if c}


VV = list(map(V, range(12)))
a,b,c,e,f,h,u,v,r,w,j,k = VV
POINTS = dict(A=(C(0),a), B=(b,C(0)), C=(c,C(0)), E=(C(1),e),
              F=(f,C(1)), H=(C(0),h), Q=(u,v), R=(r,w), S=(j,k))


@lru_cache(None)
def det(word):
    assert len(word) == len(set(word)) == 3 and set(word) <= set(LABELS)
    aa,bb,cc = (POINTS[p] for p in word)
    return sub(mul(sub(bb[0],aa[0]),sub(cc[1],aa[1])),
               mul(sub(bb[1],aa[1]),sub(cc[0],aa[0])))


def key(word):
    assert len(word) == len(set(word)) == 3 and set(word) <= set(LABELS)
    return ''.join(sorted(word, key=LABELS.index))


def sign(known, word):
    if len(set(word)) < 3:
        return 0
    inversions = sum(LABELS.index(word[i]) > LABELS.index(word[j])
                     for i in range(3) for j in range(i+1,3))
    return (-1)**inversions*known.get(key(word), 0)


def put(known, word, orientation):
    assert orientation in (-1, 1)
    name = key(word)
    value = orientation*sign({name:1},word)
    assert name not in known or known[name] == value
    known[name] = value


def edges(hull):
    return [v+hull[(i+1) % len(hull)] for i,v in enumerate(hull)]


def inside(known, hull, point):
    orientation = sign(known,hull[:3])
    return point not in hull and orientation and all(sign(known,edge+point) == orientation for edge in edges(hull))


def occ(known, hull):
    return [p for p in LABELS if inside(known,hull,p)]


def convex(known, hull):
    return len(set(hull)) == len(hull) and all(sign(known,''.join(t)) == 1 for t in combinations(hull,3))


def value(poly, at):
    total = F(0)
    for monomial,coefficient in poly.items():
        for i in monomial:
            coefficient *= at[i]
        total += coefficient
    return total


def vertex_values(poly, low, high):
    assert all(len(m) == len(set(m)) for m in poly)
    ids = sorted({i for m in poly for i in m})
    out = []
    for mask in range(2**len(ids)):
        at = low[:]
        for n,i in enumerate(ids):
            at[i] = high[i] if mask & (1 << n) else low[i]
        out.append(value(poly,at))
    return ids,out


def ceiling(poly, low, high):
    return max(vertex_values(poly,low,high)[1])


def down(number):
    return F(number.numerator*10**6//number.denominator,10**6)


def up(number):
    return -down(-number)


def as_box(obj):
    lo,hi = (list(map(F,obj[side])) for side in ('low','high'))
    assert len(lo) == len(hi) == 12 and all(0 <= x <= y <= 1 for x,y in zip(lo,hi))
    return lo,hi


def initial_box():
    upper = 1-3*S/(1-ALPHA)
    efloor = 4*S/(1-ALPHA)
    cmax = 1-S/upper
    fmax = 1-3*S/(1-efloor)
    amin = S/(cmax-ALPHA)
    rmin = ALPHA+3*S/(1-efloor)
    wmin = efloor+3*S/(1-ALPHA)
    return ([amin,ALPHA,4*S,efloor,ALPHA,amin+F(93,190),
             4*S+S/upper,amin,rmin,wmin,
             (11*ALPHA+3+3*rmin)/17,(11*efloor+3+3*wmin)/17],
            [F(97,190),F(19,100),cmax,upper,fmax,F(1),
             F(1),upper-S/(1-4*S),F(1),F(1),
             1-S/(1-efloor),1-S/(1-ALPHA)])


def geometry(packet, result):
    known = {}
    for triple in combinations(OCTAGON,3):
        put(known,''.join(triple),1)
    for edge in edges(OCTAGON):
        put(known,edge+'S',1)
    for edge in ['ER','RF','FE']:
        put(known,edge+'S',1)
    # The occupied R ear and all seven empty ears give the neighbor chords.
    for i in range(8):
        chord=OCTAGON[(i-1) % 8]+OCTAGON[(i+1) % 8]
        put(known,chord+'S',-1 if OCTAGON[i] == 'R' else 1)
    # Affinity of every line test on the actual ERF container.
    for pair in combinations(OCTAGON,2):
        line=''.join(pair)
        tests=[sign(known,line+p) for p in 'ERF' if p not in line]
        if tests and 0 not in tests and len(set(tests)) == 1:
            put(known,line+'S',tests[0])
    given = set(packet['extra'])
    for row in result['trace']:
        word,orientation,why = row['word'],row['sign'],row['why']
        if why[0] == 'branch':
            assert why == ['branch'] and word+('+' if orientation == 1 else '-') in given
        else:
            assert why[0] == 'plu' and len(why) == 2
            aa,bb,cc,dd,ee = why[1]
            terms=[(aa+bb+cc,aa+dd+ee,1),(aa+bb+dd,aa+cc+ee,-1),(aa+bb+ee,aa+cc+dd,1)]
            ss=[co*sign(known,x)*sign(known,y) for x,y,co in terms]
            # A supplied actual sign may have followed already by affinity.
            if sign(known,word):
                assert sign(known,word) == orientation
                continue
            nonzero=[x for x in ss if x]
            assert len(nonzero) == 2 and len(set(nonzero)) == 1
            x,y,co = terms[ss.index(0)]
            target = y if sign(known,x) else x
            assert key(target) == key(word)
            target_sign = -nonzero[0]*co*(sign(known,x) or sign(known,y))
            assert orientation*sign({key(word):1},word) == target_sign*sign({key(target):1},target)
        put(known,word,orientation)
    assert known == result['known']
    assert all(sign(known,t[:3]) == (1 if t[3] == '+' else -1) for t in given)
    return known


def quad_cost(n):
    assert 1 <= n <= 6
    return [None,F(24,5)*S,8*S,F(93,91),(J+3)*S,(J+K)*S,2*J*S][n]


def support(known, source, low=None, high=None):
    tag,hull,*data = source
    assert convex(known,hull)
    if tag in ('pentagon','pentagon-ear-box'):
        if tag == 'pentagon-ear-box':
            assert low is not None and high is not None and len(data) == 2
            rows,advertised=data
            assert len(rows) == 3
            roots=[]
            for ii,row in enumerate(rows):
                ear=hull[ii:ii+3]
                assert row['ear'] == ear and row['occupants'] == occ(known,ear)
                floor=COST[len(row['occupants'])];side=None
                if 'A' in ear and 'H' in ear:
                    point=next(p for p in ear if p not in 'AH')
                    index=dict(B=1,C=2,E=None,F=4,Q=6,R=8,S=10)[point]
                    xx=F(1) if index is None else low[index]
                    candidate=S*xx/high[1]
                    if candidate > floor:
                        floor=candidate;side=['AH-clearance',point,str(xx),str(high[1])]
                if 'B' in ear and 'C' in ear:
                    point=next(p for p in ear if p not in 'BC')
                    index=dict(H=5,A=0,E=3,F=None,Q=7,R=9,S=11)[point]
                    yy=F(1) if index is None else low[index]
                    candidate=S*yy/high[0]
                    if candidate > floor:
                        floor=candidate;side=['BC-clearance',point,str(yy),str(high[0])]
                assert F(row['lower']) == floor
                if side is None:
                    assert row['side'] is None
                else:
                    assert row['side'][:2] == side[:2] and list(map(F,row['side'][2:])) == list(map(F,side[2:]))
                root=F(row['root'])
                assert root >= 0 and root*10**6 == int(root*10**6)
                assert root*root <= floor < (root+F(1,10**6))**2
                roots.append(root)
            rate=max(11*S,sum(roots)**2)
            assert F(advertised) == rate
        else:
            assert not data
            rate=11*S
        assert len(hull) == 5
        aa,bb,cc,dd,ee = hull
        return [key(aa+bb+ee),key(aa+dd+ee),key(aa+bb+dd)],rate
    assert tag == 'quad' and len(hull) == 4
    pts,advertised = data
    assert 1 <= len(pts) <= 2 and len(pts) == len(set(pts))
    assert all(inside(known,hull,p) for p in pts)
    aa,bb,cc,dd = hull
    counts=tuple(sorted(sum(inside(known,t,p) for p in pts) for t in [aa+cc+dd,bb+cc+dd]))
    table=({(0,0):G,(0,1):K,(1,1):F(12)} if len(pts) == 1 else
           {(0,0):F(1142,125),(0,1):F(1142,125),(0,2):F(139,10),
            (1,1):F(12),(1,2):F(199,10),(2,2):F(149,5)})
    maximum=table[counts]
    if len(pts) == 2 and all(inside(known,aa+bb+cc,p) and inside(known,aa+bb+dd,p) for p in pts):
        maximum=max(maximum,F(299,31))
    assert 0 < F(advertised) <= maximum
    return [key(aa+bb+dd),key(aa+bb+cc),key(aa+cc+dd)],F(advertised)*S


def physical(known, why, low, high, earlier):
    def area(t):
        assert sign(known,t)
        return scale(det(t),sign(known,t))
    tag,*args=why
    if tag == 'actual-area':
        triangle,pts=args
        assert pts == occ(known,triangle)
        return sub(area(triangle),C(COST[len(pts)]))
    if tag == 'anchor-cap':
        triangle,hull,index,pts=args
        assert pts == occ(known,triangle)
        assert all(p in hull or inside(known,hull,p) for p in triangle)
        caps=dict(ABC=[a,sub(c,b)],ABE=[e],ABF=[f],ABH=[b,sub(h,a)],
                  ACE=[e],ACF=[c],ACH=[sub(h,a),c],AEF=[sub(C(1),a)],
                  AEH=[sub(h,a)],AFH=[f,sub(h,a)],BCE=[e,sub(c,b)],
                  BCF=[sub(c,b)],BCH=[h,sub(c,b)],BEF=[sub(C(1),b)],
                  BEH=[h],BFH=[f],CEF=[sub(C(1),f)],CEH=[h],
                  CFH=[c],EFH=[sub(C(1),e)])
        assert type(index) is int and 0 <= index < len(caps[hull])
        return sub(caps[hull][index],C(COST[len(pts)]))
    if tag == 'octagon-ear-cap':
        hull,ear,occupied=args
        assert hull == OCTAGON and ear in EARS and ear != 'ERF'
        assert occupied == ['ERF','S'] and inside(known,'ERF','S')
        return sub(C(EAR_CAP),det(ear))
    if tag == 'octagon-ear-root-budget':
        hull,rows,occupied=args
        assert hull == OCTAGON and occupied == ['ERF','S'] and inside(known,'ERF','S')
        assert len(rows) == 8
        result=C(4)
        for ear,row in zip(EARS,rows):
            assert row['ear'] == ear and row['occupants'] == occ(known,ear)
            lower=COST[len(row['occupants'])]
            upper=min(SIX_CAPS['ERF'] if ear == 'ERF' else min(EAR_CAP,SIX_CAPS.get(ear,F(1))),ceiling(det(ear),low,high))
            assert F(row['floor']) == lower < upper == F(row['ceiling'])
            assert row['sixChain'] == ('BCQERF' if ear in SIX_CAPS else None)
            assert (None if row['sixCap'] is None else F(row['sixCap'])) == SIX_CAPS.get(ear)
            beta,gamma=F(row['beta']),F(row['gamma'])
            assert beta >= 0 and gamma >= 0
            for root,number in [(beta,lower),(gamma,upper)]:
                assert root*10**6 == int(root*10**6)
                assert root**3 <= number < (root+F(1,10**6))**3
            rate=(gamma-beta)/(upper-lower)
            result=add(result,C(rate*lower-beta),scale(det(ear),-rate))
        return result
    if tag == 'contact-order':
        first,second={'ha':(h,a),'ea':(e,a),'he':(h,e),'fb':(f,b),'cf':(c,f)}[args[0]]
        return sub(first,second)
    if tag == 'endpoint-lower':
        assert args == ['93/250']
        return sub(mul(h,c),C(4*S))
    if tag == 'right-support':
        assert args == ['BCQE'] and convex(known,'BCQE')
        return sub(mul(e,sub(C(1),b)),C(4*S))
    if tag == 'top-hull':
        assert args == ['-'] and inside(known,'ERF','S')
        return sub(mul(sub(C(1),e),sub(C(1),f)),C(3*S))
    if tag == 'core-width-six-chain-cap':
        chain,ear,occupied,point=args
        assert chain == 'BCQERF' and (occupied,point) == ('ERF','S')
        assert inside(known,'ERF','S')
        return sub(C(SIX_CAPS[ear]),det(ear))
    if tag == 'right-clearance':
        point,axis=args
        assert point == 'Q' and sign(known,'CEQ') == -1
        expressions=dict(x=sub(u,c),y=sub(e,v),px=mul(e,sub(u,c)),py=mul(sub(C(1),c),sub(e,v)))
        return sub(expressions[axis],C(S))
    if tag in ('core-rs-cut-gap','core-rs-bary-gap'):
        cut=args[0]
        pairs=dict(HA=('HRS','ARS'),AB=('ARS','BRS'),BC=('BRS','CRS'),CQ=('CRS','QRS'))
        negative,positive=pairs[cut]
        assert sign(known,negative) == -1 and sign(known,positive) == 1
        dx,dy=sub(r,j),sub(w,k)
        ux=add(scale(sub(r,f),1-2*LAMBDA),scale(sub(C(1),r),-LAMBDA))
        uy=add(scale(sub(w,e),1-2*LAMBDA),scale(sub(C(1),w),-LAMBDA))
        expr=dict(HA=mul(sub(h,a),dx),AB=add(mul(a,dx),mul(b,dy)),
                  BC=mul(sub(c,b),dy),CQ=sub(mul(sub(u,c),dy),mul(v,dx)))[cut]
        assert expr == sub(det(positive),det(negative))
        if tag == 'core-rs-bary-gap':
            assert args[1:] == ['2325/8963','ERF','S','8963/25000'] and cut != 'CQ'
            assert inside(known,'ERF','S')
            expr=dict(HA=mul(sub(h,a),ux),AB=add(mul(a,ux),mul(b,uy)),BC=mul(sub(c,b),uy))[cut]
        return sub(expr,C(2*S))
    if tag == 'weighted-barycentric-core-width':
        outer,inner,weights,maximum,axis,source=args
        assert (outer,inner) == ('R','S') and inside(known,'ERF','S')
        expected=[COST[len(occ(known,t))]/S for t in ['FRS','ERS','EFS']]
        assert list(map(F,weights)) == expected
        assert source == ['BCQERF','ERF','S','8963/25000']
        mm=min(SIX_CAPS['ERF'],(1-low[3])*(1-low[4]))/S
        assert F(maximum) == mm and sum(expected) <= mm
        ce,cf,cu=expected
        return [add(scale(j,mm),C(-ce),scale(f,-(mm-ce-cu)),scale(r,-cu)),
                add(C(mm-cf-cu),scale(f,cf),scale(r,cu),scale(j,-mm)),
                add(scale(k,mm),C(-cf),scale(e,-(mm-cf-cu)),scale(w,-cu)),
                add(C(mm-ce-cu),scale(e,ce),scale(w,cu),scale(k,-mm))][axis]
    if tag == 'support-envelope':
        source,x,y,z,cap=args
        expected,rate=support(known,source,low,high)
        assert [x,y,z] == expected
        cap=F(cap)
        assert cap == min(F(1),ceiling(area(x),low,high)) and cap > 0
        return add(scale(area(y),cap),scale(area(x),-rate),scale(area(z),rate))
    if tag == 'earlier-area':
        bound=args[0]
        value_=earlier(bound)
        return sub(area(bound['triangle']),C(value_)) if bound['direction'] == 'lo' else sub(C(value_),area(bound['triangle']))
    raise AssertionError('Unsupported physical source '+tag)


def endpoint_lines(poly, target, low, high):
    assert all(len(m) == len(set(m)) for m in poly)
    used=sorted({i for m in poly for i in m}-{target})
    out=set()
    for bits in product((0,1),repeat=len(used)):
        at=low[:]
        for i,bit in zip(used,bits):
            at[i]=high[i] if bit else low[i]
        aa=bb=F(0)
        for monomial,coefficient in poly.items():
            for i in monomial:
                if i != target:
                    coefficient *= at[i]
            if target in monomial:
                aa += coefficient
            else:
                bb += coefficient
        out.add((aa,bb))
    return out


def coordinate(row, polys, low, high, terminal=False):
    target=VARIABLES.index(row['target'])
    assert list(map(F,row['old'])) == [low[target],high[target]]
    printed=list(map(lambda p:tuple(map(F,p)),row['lines']))
    actual=endpoint_lines(polys[str(row['factor'])],target,low,high)
    assert len(printed) == len(set(printed)) and set(printed) == actual
    feasible=[]
    for aa,bb in actual:
        lo,hi=low[target],high[target]
        if aa > 0:
            lo=max(lo,-bb/aa)
        elif aa < 0:
            hi=min(hi,-bb/aa)
        elif bb < 0:
            continue
        if lo <= hi:
            feasible.append((lo,hi))
    if terminal:
        assert not feasible
        return
    assert feasible
    raw=(min(x for x,y in feasible),max(y for x,y in feasible))
    assert tuple(map(F,row['raw'])) == raw
    new=max(low[target],down(raw[0])),min(high[target],up(raw[1]))
    assert tuple(map(F,row['new'])) == new and new != (low[target],high[target])
    low[target],high[target]=new


def relation(known, row, low=None, high=None):
    kind=row['kind']
    if kind == 'fan':
        outer,point=row['outer'],row['point']
        assert inside(known,outer,point)
        assert row['parts'] == [key(edge+point) for edge in edges(outer)]
    elif kind == 'plu':
        aa,bb,cc,dd,ee=row['witness']
        terms=[(aa+bb+cc,aa+dd+ee,1),(aa+bb+dd,aa+cc+ee,-1),(aa+bb+ee,aa+cc+dd,1)]
        ss=[co*sign(known,x)*sign(known,y) for x,y,co in terms]
        assert all(ss) and len(set(ss)) == 2
        odd=next(i for i,vv in enumerate(ss) if ss.count(vv) == 1)
        assert sorted(row['iso']) == sorted(map(key,terms[odd][:2]))
        assert sorted(sorted(p) for p in row['rhs']) == sorted(sorted(map(key,t[:2])) for i,t in enumerate(terms) if i != odd)
    elif kind == 'quad':
        hull,pts=row['hull'],row['occupants']
        assert convex(known,hull) and pts == occ(known,hull)
        assert row['parts'] == [key(hull[:3]),key(hull[0]+hull[2:])]
        assert F(*map(int,row['floor'])) == quad_cost(len(pts))
    elif kind == 'support':
        expected,rate=support(known,row['source'],low,high)
        assert [row['X'],row['Y'],row['Z']] == expected
        assert F(*map(int,row['constant'])) == rate
    elif kind == 'bary':
        witness=row['witness'];hull,inner,line=(witness[k] for k in ['container','inner','line'])
        assert inside(known,hull,inner) and len(line) == len(set(line)) == 2
        assert row['outer'] == key(hull)
        assert row['fans'] == [key(hull[1]+hull[2]+inner),key(hull[0]+hull[2]+inner),key(hull[0]+hull[1]+inner)]
        assert row['target'] == (None if inner in line else key(line+inner))
        assert row['targetSign'] == (0 if inner in line else sign(known,line+inner))
        assert row['vertices'] == [dict(name=None,sign=0) if vv in line else dict(name=key(line+vv),sign=sign(known,line+vv)) for vv in hull]
        assert all(t['sign'] for t in row['vertices'] if t['name'])
    elif kind == 'four':
        aa,bb,cc,dd=row['vertices']
        expected=[dict(triangle=key(t),co=co*sign(known,t)) for t,co in [(aa+bb+cc,1),(aa+cc+dd,1),(aa+bb+dd,-1),(bb+cc+dd,-1)]]
        assert all(t['co'] for t in expected) and row['terms'] == expected
        assert not add(det(aa+bb+cc),det(aa+cc+dd),scale(det(aa+bb+dd),-1),scale(det(bb+cc+dd),-1))
    else:
        assert kind == 'octagon-sum' and row['hull'] == OCTAGON
        assert row['parts'] == list(map(key,EARS)) and F(*map(int,row['ceiling'])) == SUM_CAP


def scalar_initial(known, row, low, high, differences, earlier=None):
    tr,direction,source=row['triangle'],row['direction'],row['source']
    tag,*args=source
    if tag == 'earlier-area':
        assert earlier is not None and len(args) == 1
        bound=args[0]
        assert bound['triangle'] == tr and bound['direction'] == direction
        expected=earlier(bound)
    elif tag == 'occupants':
        assert direction == 'lo' and args[0] == occ(known,tr)
        expected=COST[len(args[0])]
    elif tag == 'vertices':
        assert direction == 'hi'
        ids,vals=vertex_values(scale(det(tr),sign(known,tr)),low,high)
        expected=min(F(1),max(vals))
        assert F(args[0]) == expected
        witness=differences[str(row['id'])]
        assert witness['indices'] == ids and list(map(F,witness['differences'])) == [expected-vv for vv in vals]
    elif tag == 'core-width-six-chain-cap':
        assert direction == 'hi'
        chain,ear,occupied,point=args
        assert chain == 'BCQERF' and (occupied,point) == ('ERF','S')
        assert key(ear) == tr and inside(known,'ERF','S')
        expected=SIX_CAPS[ear]
    else:
        assert tag == 'octagon-ear-cap' and direction == 'hi'
        hull,ear,occupied=args
        assert hull == OCTAGON and occupied == ['ERF','S'] and ear in EARS and ear != 'ERF'
        assert key(ear) == tr and inside(known,'ERF','S')
        expected=EAR_CAP
    assert F(row['value']) == expected


def scalar_update(row, records, rel):
    tr,direction=row['triangle'],row['direction']
    refs=[records[i] for i in row['refs']]
    vals=[F(ref['value']) for ref in refs]
    assert all(vv >= (S if ref['direction'] == 'lo' else 0) for ref,vv in zip(refs,vals))
    def expect(pairs):
        assert [(r['triangle'],r['direction']) for r in refs] == pairs
    opposite='hi' if direction == 'lo' else 'lo'
    kind=rel['kind']
    assert row['why'][0] == kind
    if kind == 'fan':
        outer,parts=rel['outer'],rel['parts']
        if tr == outer:
            expect([(p,direction) for p in parts]);raw=sum(vals)
        else:
            assert tr in parts
            expect([(outer,direction)]+[(p,opposite) for p in parts if p != tr]);raw=vals[0]-sum(vals[1:])
    elif kind == 'quad':
        assert direction == 'lo' and tr in rel['parts']
        expect([(p,'hi') for p in rel['parts'] if p != tr]);raw=F(*map(int,rel['floor']))-vals[0]
    elif kind == 'support':
        x,y,z=rel['X'],rel['Y'],rel['Z'];rate=F(*map(int,rel['constant']))
        if tr == y:
            assert direction == 'lo';expect([(z,'hi'),(x,'lo')]);assert vals[1] > 0;raw=rate*(1-vals[0]/vals[1])
        elif tr == z:
            assert direction == 'lo';expect([(x,'lo'),(y,'hi')]);assert vals[0] > 0;raw=vals[0]*(1-vals[1]/rate)
        else:
            assert tr == x and direction == 'hi';expect([(z,'hi'),(y,'hi')]);assert vals[1] < rate;raw=rate*vals[0]/(rate-vals[1])
    elif kind == 'plu':
        iso,rhs=rel['iso'],rel['rhs']
        if tr in iso:
            other=next(p for p in iso if p != tr)
            expect([(p,direction) for p in sum(rhs,[])]+[(other,opposite)])
            assert vals[4] > 0;raw=(vals[0]*vals[1]+vals[2]*vals[3])/vals[4]
        else:
            pi=next(i for i,pair in enumerate(rhs) if tr in pair)
            other=next(p for p in rhs[pi] if p != tr)
            expect([(p,direction) for p in iso]+[(p,opposite) for p in rhs[1-pi]]+[(other,opposite)])
            assert vals[4] > 0;raw=(vals[0]*vals[1]-vals[2]*vals[3])/vals[4]
            if direction == 'hi':raw=max(F(0),raw)
    elif kind == 'four':
        co={p['triangle']:p['co'] for p in rel['terms']};assert tr in co
        others=[p for p in co if p != tr]
        expect([(p,direction if -co[p]*co[tr] > 0 else opposite) for p in others])
        raw=-sum(co[p]*vv for p,vv in zip(others,vals))/co[tr]
    elif kind == 'bary':
        assert rel['target'] == tr
        signed=direction if rel['targetSign'] > 0 else opposite
        expect([(rel['outer'],'hi')]+[(p,'lo') for p in rel['fans']]+[(p['name'],signed if p['sign'] > 0 else ('hi' if signed == 'lo' else 'lo')) for p in rel['vertices'] if p['name']])
        nn=vals[0];weights=vals[1:4]
        assert nn > 0 and all(x >= 0 for x in weights) and sum(weights) <= nn
        data=iter(vals[4:]);vv=[p['sign']*next(data) if p['name'] else F(0) for p in rel['vertices']]
        raw=(sum(x*y for x,y in zip(weights,vv))+(nn-sum(weights))*(min(vv) if signed == 'lo' else max(vv)))/nn*rel['targetSign']
        assert row['why'][2] == (signed if rel['targetSign'] > 0 else 'neg-'+signed)
    else:
        assert kind == 'octagon-sum' and direction == 'hi' and tr in rel['parts']
        expect([(p,'lo') for p in rel['parts'] if p != tr]);raw=SUM_CAP-sum(vals)
    assert F(row['raw']) == raw
    assert F(row['value']) == (down(raw) if direction == 'lo' else up(raw))
    assert F(row['value']) >= (S if direction == 'lo' else 0)


def audit_packet(packet):
    assert packet['labels'] == LABELS and packet['variables'] == VARIABLES
    assert packet['extra'] == {'AB':['ARS-','BRS+'],'BC':['ARS-','BRS-','CRS+'],'CQ':['ARS-','BRS-','CRS-']}[packet['id']]
    low,high=initial_box();prior={};stats=Counter();closed=False
    for stage,wrapped in enumerate(packet['stages']):
        assert not closed and wrapped['forced'] == []
        result=wrapped['result'];known=geometry(packet,result)
        assert result['extra'] == packet['extra'] and result['loc'] == 'IRTT' and result['word'] == '-'
        assert as_box(result['initialBox']) == (low,high)
        fixed_low,fixed_high=low[:],high[:]
        def earlier(bound):
            origin=bound['origin']
            assert origin['packet'] == packet['id'] and origin['stage'] < stage
            rr=prior[origin['stage'],origin['id']]
            assert (rr['triangle'],rr['direction'],F(rr['value'])) == (bound['triangle'],bound['direction'],F(bound['value']))
            return F(rr['value'])
        polys={}
        refinement=result['refinement']
        for number,fac in refinement['factors'].items():
            poly=physical(known,fac['why'],fixed_low,fixed_high,earlier)
            printed=unique([(tuple(m),F(cc)) for m,cc in fac['terms']])
            assert poly == printed and all(0 <= i < 12 for m in poly for i in m)
            polys[number]=poly;stats['physical factors'] += 1
        for row in refinement['steps']:
            coordinate(row,polys,low,high);stats['coordinate updates'] += 1
        assert as_box(result['box']) == (low,high)
        if result.get('reason',{}).get('interval'):
            assert result['closed']
            coordinate(result['reason']['interval'],polys,low,high,terminal=True)
            assert result['reason']['interval'] == refinement['contradiction']
            closed=True
        else:
            assert not result['closed']
            records={}
            for row in result['initial']:
                assert row['id'] == len(records)
                scalar_initial(known,row,low,high,result['areaVertexDifferences'])
                records[row['id']]=row;stats['initial bounds'] += 1
            for rel in result['relations']:
                relation(known,rel,low,high);stats['scalar relations'] += 1
            for row in result['updates']:
                assert row['id'] == len(records) and all(i in records for i in row['refs'])
                scalar_update(row,records,result['relations'][row['why'][1]])
                records[row['id']]=row;stats['scalar updates'] += 1
            for index,row in records.items():
                prior[stage,index]=row
        stats['stages'] += 1
        stats['geometric deductions'] += len(result['trace'])
    assert closed and packet['closed']
    return dict(stats)


if __name__ == '__main__':
    total=Counter()
    for cut in ['AB','BC','CQ']:
        packet=read_packet(ROOT/'N6_IRTT_CORE_RADIAL_TABLES'/(cut+'.md'))
        counts=audit_packet(packet);total.update(counts)
        print(cut,counts,flush=True)
    print('IRTT three radial cases: complete author source replay passes',dict(total))
