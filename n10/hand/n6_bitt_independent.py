"""Independent actual sources for the BITT manuscripts."""
from fractions import Fraction as F
from math import isqrt

from n6_brtt_independent import physical as shared_physical


def seed(put,word='-'):
    for point in 'PQRS':
        for first, second in zip('ABCEFH', 'BCEFHA'):
            put(first+second+point, -1 if first+second=='EF' and point in 'RS' else 1)
        put('HC'+point, -1 if point=='P' else 1)
    for upper in 'QRS':
        put('HP'+upper, 1)
        put('CP'+upper, -1)
    for top in 'RS':
        put('HE'+top, 1)
        put('CF'+top, -1)
        for other in 'PQ':
            put('E'+other+top, -1)
            put('F'+other+top, 1)
    put('ERS', 1)
    put('FRS', 1 if word=='+' else -1)


def coarse(E, kn, version, word):
    assert version==1 and word in ('-','+')
    s, alpha = E.s, E.alpha
    delta = s/(1-alpha)
    upper = 1-(3 if word=='-' else 4)*delta
    a_max = min(upper, F(59,125) if word=='-' else F(391,1000))
    cost = (E.K if min(E.sign(kn,'ACP'),E.sign(kn,'HBP'))<0 else E.G)*s
    p_min = (1+alpha)*delta if E.sign(kn,'ACP')==E.sign(kn,'HBP')==1 else delta
    low = [alpha,alpha,max(cost,alpha+s/a_max),alpha,alpha,max(cost,alpha+s/upper),
           p_min,p_min,delta,delta,alpha+delta,alpha+delta,alpha+delta,alpha+delta]
    high = [a_max,upper,1,a_max,upper,1,1-s-p_min,1-s-p_min,1-s,1-s,1,1,1,1]
    if word=='-':
        assert E.inside(kn,'ERF','S')
        low[10]=low[11]=alpha+3*delta
        high[12]=high[13]=1-delta
    else:
        assert E.convex(kn,'ERSF')
    return list(map(F, low)),list(map(F, high)),cost


def octagon(E,kn,hull):
    assert hull=='ABCERSFH' and E.convex(kn,hull)
    return [hull[i-1]+hull[i]+hull[(i+1)%8] for i in range(8)]


def octagon_cap(E,kn,hull,ear,source):
    ears=octagon(E,kn,hull)
    assert ear in ears
    if source is not None:
        occupied,pt=source
        assert occupied in ears and pt in ('P','Q') and E.inside(kn,occupied,pt)
        if ear!=occupied:
            return (4-F(653,1000)-6*F(453,1000))**3
    return (4-7*F(453,1000))**3


def pentagon_rate(E,kn,witness,areas):
    tag,hull,*data=witness
    assert len(hull)==5 and E.convex(kn,hull)
    a,b,c,d,e=hull
    assert list(areas)==list(map(E.key,[a+b+e,a+d+e,a+b+d]))
    if tag=='pentagon':
        assert not data
        return 11*E.s
    assert tag=='pentagon-ears' and len(data)==2
    lists,printed_rate=data
    assert len(lists)==3
    for ear,points in zip((a+b+c,b+c+d,c+d+e),lists):
        assert len(set(points))==len(points) and all(E.inside(kn,ear,p) for p in points)
    rate=[F(11),F(139,10),F(199,10),F(27)][sum(bool(points) for points in lists)]
    assert rate==F(printed_rate)
    return rate*E.s


def support_rate(E,kn,witness,areas):
    if witness[0] in ('pentagon','pentagon-ears'):
        return pentagon_rate(E,kn,witness,areas)
    tag,hull,points,printed=witness
    assert tag=='quad' and len(hull)==4 and E.convex(kn,hull)
    a,b,c,d=hull
    assert list(areas)==list(map(E.key,[a+b+d,a+b+c,a+c+d]))
    n=len(points)
    assert len(set(points))==n and n in (1,2) and all(E.inside(kn,hull,p) for p in points)
    counts=tuple(sorted(sum(E.inside(kn,t,p) for p in points) for t in (a+c+d,b+c+d)))
    if n==1:
        ceiling={(0,0):E.G,(0,1):E.K,(1,1):F(12)}[counts]
    else:
        ceiling={(0,0):F(1142,125),(0,1):F(1142,125),(0,2):F(139,10),
                 (1,1):F(12),(1,2):F(199,10),(2,2):F(149,5)}[counts]
        if all(E.inside(kn,a+b+c,p) and E.inside(kn,a+b+d,p) for p in points):
            ceiling=max(ceiling,F(299,31))
    assert 0<F(printed)<=ceiling
    return F(printed)*E.s


def initial_upper(E, kn, tr, source, v, box, word):
    if source.startswith('octagon '):
        import json
        tag,hull,ear,occupant,upper=json.loads(source[8:])
        assert tag=='octagon-ear-cap' and word=='+' and E.key(ear)==tr
        assert v==F(upper)==octagon_cap(E,kn,hull,ear,occupant)
        return
    lo,hi=box
    if source.startswith('top container ceiling '):
        assert set(tr)<=set('EFRS')
        assert v==F(source[22:])==(1-lo[3])*(1-lo[4])
    elif source.startswith('top affine '):
        base,left,right=source[11:]
        assert base in 'EF' and {left,right}=={'R','S'}
        assert E.key(base+left+right)==tr and E.sign(kn,base+left+right)==1
        xi,yi=[6+2*'PQRS'.index(t) for t in (left,right)]
        assert v==(min(hi[xi+1]-lo[3],1-lo[yi]) if base=='E' else min(1-lo[xi+1],hi[yi]-lo[4]))
    elif source.startswith('top apex '):
        point=source[9:]
        assert point in ('R','S') and E.key('EF'+point)==tr
        i=6+2*'PQRS'.index(point)
        assert v==min(hi[i]-lo[4],hi[i+1]-lo[3])
    else:
        import json
        assert source.startswith('anchor cap ')
        hull,printed=source[11:].split('; expression ')
        exprs={'ABC':[{'a':1},{'c':1,'b':-1}], 'ABE':[{'e':1}],
               'ABF':[{'f':1}], 'ABH':[{'b':1},{'h':1,'a':-1}],
               'ACE':[{'e':1}], 'ACF':[{'c':1}], 'ACH':[{'h':1,'a':-1},{'c':1}],
               'AEF':[{'':1,'a':-1}], 'AEH':[{'h':1,'a':-1}],
               'AFH':[{'f':1},{'h':1,'a':-1}], 'BCE':[{'e':1},{'c':1,'b':-1}],
               'BCF':[{'c':1,'b':-1}], 'BCH':[{'h':1},{'c':1,'b':-1}],
               'BEF':[{'':1,'b':-1}], 'BEH':[{'h':1}], 'BFH':[{'f':1}],
               'CEF':[{'':1,'f':-1}], 'CEH':[{'h':1}], 'CFH':[{'c':1}],
               'EFH':[{'':1,'e':-1}]}
        coeff=json.loads(printed)
        assert coeff in exprs[hull]
        assert all(point in hull or E.inside(kn,hull,point) for point in tr)
        assert v==sum(c if not var else c*(hi if c>0 else lo)[E.V.index(var)] for var,c in coeff.items())


def physical(E, why, kn, low, high, version, word, earlier):
    add,sub,mul,scale,C=E.polyadd,E.sub,E.mul,E.scale,E.const
    a,b,c,e,f,h,p,q,u,v,r,w,j,k=E.vv
    tag=why[0]
    if tag=='octagon-ear-cap':
        assert word=='+'
        return sub(C(octagon_cap(E,kn,*why[1:])),E.det(why[2]))
    if tag=='octagon-ear-sum':
        assert word=='+'
        ceiling=(4-7*F(453,1000))**3+7*F(453,1000)**3
        return sub(C(ceiling),add(*(E.det(t) for t in octagon(E,kn,why[1]))))
    if tag=='octagon-ear-ratio':
        assert word=='+'
        _,hull,ear,pt=why
        smaller,larger,small,large={'BCE':('ABC','BCE',a,e),'FHA':('HAB','FHA',b,f)}[ear]
        cap=octagon_cap(E,kn,hull,smaller,[ear,pt])
        assert mul(small,E.det(larger))==mul(large,E.det(smaller))
        return sub(scale(large,cap),scale(small,3*E.s))
    if tag=='support-envelope' and why[1][0] in ('pentagon','pentagon-ears'):
        _,witness,X,Y,Z,printed=why
        coeff=pentagon_rate(E,kn,witness,(X,Y,Z))
        signed=lambda t:scale(E.det(t),E.sign(kn,t))
        cap=min(F(1),E.maxpoly(signed(X),low,high))
        assert cap==F(printed)>0
        return add(scale(signed(Y),cap),scale(signed(X),-coeff),scale(signed(Z),coeff))
    if tag=='support-prior':
        _,relation,rows,printed,axis=why
        assert relation['kind']=='support' and axis in (0,1)
        X,Y,Z=(relation[name] for name in ('X','Y','Z'))
        source=relation['source']
        coeff=support_rate(E,kn,source,(X,Y,Z))
        assert coeff==F(relation['constant'])
        pairs=[(X,'hi'),(Y,'hi')]
        if len(rows)==9:
            assert source[0] in ('pentagon','pentagon-ears')
            aa,bb,cc,dd,ee=source[1]
            pairs.extend((E.key(t),'lo') for t in (aa+bb+cc,bb+cc+dd,cc+dd+ee))
            pairs.extend([(X,'lo'),(Z,'hi'),(Y,'lo'),(E.key(bb+dd+ee),'hi')])
        else:
            assert len(rows)==2
        assert [(r['triangle'],r['direction']) for r in rows]==pairs
        vals=[earlier(r) for r in rows]
        if len(vals)==9:
            roots=sum(F(isqrt(x.numerator*10**8//x.denominator),10000) for x in vals[2:5])
            stronger=roots**2+max(0,vals[5]-vals[6],vals[7]-vals[8])
            assert stronger>coeff
            coeff=stronger
        assert coeff==F(printed) and min(vals[:2])>0
        xx,yy,zz=[scale(E.det(t),E.sign(kn,t)) for t in (X,Y,Z)]
        return add(scale(yy,vals[0]),scale(xx,-coeff),scale(zz,coeff)) if axis==0 else add(scale(xx,vals[1]-coeff),scale(zz,coeff))
    if tag=='quad-area':
        _,relation=why
        h,points=relation['hull'],relation['occupants']
        assert relation['kind']=='quad' and E.convex(kn,h)
        assert len(set(points))==len(points)>0 and all(E.inside(kn,h,p) for p in points)
        a0,b0,c0,d0=h
        ts=[a0+b0+c0,a0+c0+d0]
        assert relation['parts']==list(map(E.key,ts))
        floor=[None,F(24,5)*E.s,8*E.s,F(93,91),(E.J+3)*E.s,(E.J+E.K)*E.s,2*E.J*E.s][len(points)]
        printed=relation['floor']
        assert floor==(F(*map(int,printed)) if isinstance(printed,list) else F(printed))
        return add(*(E.det(t) for t in ts),C(-floor))
    if tag=='contact-order' and why[1]=='sym':
        return sub(f,e)
    if tag=='endpoint-lower':
        assert len(why)==2 and F(why[1])==coarse(E,kn,version,word)[2]
        return sub(mul(h,c),C(F(why[1])))
    if tag in ('lower-quad','upper-quad'):
        assert why==[tag,'BITT']
        if tag=='lower-quad':
            assert E.convex(kn,'HABC') and E.inside(kn,'HABC','P')
            return add(mul(h,c),scale(mul(a,b),-1),C(-F(24,5)*E.s))
        assert E.convex(kn,'HCEF') and E.inside(kn,'HCEF','Q')
        return sub(C(1-F(24,5)*E.s),mul(sub(h,e),sub(c,f)))
    if tag in ('upper-point-x','upper-point-y'):
        assert len(why)==3 and why[2]=='Q' and E.inside(kn,'HCEF','Q')
        which = tag.endswith('x')
        outer = 'CEF' if which else 'HEF'
        cap = min(1,E.maxpoly(E.det(outer),low,high))
        assert cap==F(why[1]) and cap>0
        return sub(scale(sub(E.one,u if which else v),cap),
                   scale(sub(C(2),add(c,f) if which else add(e,h)), E.s))
    if tag=='weighted-barycentric':
        outer,inner,costs,maximum,axis=why[1:]
        assert (outer,inner)==('R','S') and E.inside(kn,'ERF','S')
        weights=[E.COST[len(E.occ(kn,t))]/E.s for t in ('FRS','ERS','EFS')]
        assert weights==list(map(F,costs))
        M=(1-low[3])*(1-low[4])/E.s
        assert M==F(maximum) and sum(weights)<=M
        ce,cf,cu=weights
        assert type(axis) is int and 0<=axis<4
        return [add(scale(j,M),C(-ce),scale(f,-(M-ce-cu)),scale(r,-cu)),
                add(C(M-cf-cu),scale(f,cf),scale(r,cu),scale(j,-M)),
                add(scale(k,M),C(-cf),scale(e,-(M-cf-cu)),scale(w,-cu)),
                add(C(M-ce-cu),scale(e,ce),scale(w,cu),scale(k,-M))][axis]
    assert tag in ('actual-area','earlier-area','support-envelope','anchor-cap',
                   'contact-order','top-hull','lower-sum','central-budget',
                   'central-sum','central-floor','central-lower-x','central-lower-y')
    return shared_physical(E,why,kn,low,high,version,word,earlier)
