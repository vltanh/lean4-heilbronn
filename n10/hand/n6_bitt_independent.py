"""Actual sources for the triangular BITT lower-central reduction."""
from fractions import Fraction as F

from n6_brtt_independent import physical as shared_physical


def seed(put):
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
    put('FRS', -1)


def coarse(E, kn, version, word):
    assert version==1 and word=='-'
    s, alpha = E.s, E.alpha
    delta = s/(1-alpha)
    upper = 1-3*delta
    a_max = min(upper, F(59,125))
    cost = (E.K if min(E.sign(kn,'ACP'),E.sign(kn,'HBP'))<0 else E.G)*s
    p_min = (1+alpha)*delta if E.sign(kn,'ACP')==E.sign(kn,'HBP')==1 else delta
    low = [alpha,alpha,max(cost,alpha+s/a_max),alpha,alpha,max(cost,alpha+s/upper),
           p_min,p_min,delta,delta,alpha+3*delta,alpha+3*delta,alpha+delta,alpha+delta]
    high = [a_max,upper,1,a_max,upper,1,1-s-p_min,1-s-p_min,1-s,1-s,1,1,1-delta,1-delta]
    assert E.inside(kn,'ERF','S')
    return list(map(F, low)),list(map(F, high)),cost


def physical(E, why, kn, low, high, version, word, earlier):
    add,sub,mul,scale,C=E.polyadd,E.sub,E.mul,E.scale,E.const
    a,b,c,e,f,h,p,q,u,v,r,w,j,k=E.vv
    tag=why[0]
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
                   'contact-order','top-hull','lower-sum')
    return shared_physical(E,why,kn,low,high,version,word,earlier)
