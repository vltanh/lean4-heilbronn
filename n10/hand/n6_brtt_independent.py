"""Independent BRTT source semantics for the generic literal Fraction reader.

The supplied arithmetic namespace belongs to audit_n6_bttt_remaining;
neither this module nor that reader imports an author/discovery engine.
"""
from fractions import Fraction as F
from itertools import combinations


def coarse(E,kn,version,word):
    assert version in (1,2) and word in '+-'
    s,alpha=E.s,E.alpha
    tau=(4 if word=='+' else 3)*s
    U=1-tau/(1-alpha);E0=4*s/(1-alpha)
    B1=min(U,1-4*s/U)
    if version==2:B1=min(B1,1-4*s-tau)
    C1=1-s/U;A0=max(alpha,s/(C1-alpha))
    rho=(E.K if E.sign(kn,'ACP')<0 or E.sign(kn,'HBP')<0 else E.G)*s
    C0=max(rho,alpha+s/U);H0=max(rho,E0,alpha+s/B1)
    dx=s/(1-A0);dy=s/(C1-alpha)
    low=[A0,alpha,C0,E0,alpha,H0,dx,dy,C0+s/U,dy,dx,dy,dx,dy]
    high=[U,B1,C1,U,min(U,1-tau/(1-E0)) if version==2 else U,1,C1-s,1-s/C1,1,U-s/(1-C0),1,1,1,1]
    if E.sign(kn,'ACP')==E.sign(kn,'HBP')==1:
        low[6]=max(low[6],s*(C1+alpha)/(C1-alpha))
        low[7]=max(low[7],s*(1+A0)/(C1*(1-A0)))
    high[6]=min(high[6],1-s/C1-low[7]);high[7]=min(high[7],1-s/C1-low[6])
    for point in 'RS':
        occupants=[pt for pt in 'RS' if pt!=point and E.inside(kn,'E'+point+'F',pt)]
        cost=(3 if occupants else 1)*s;i=6+2*'PQRS'.index(point)
        low[i]=max(low[i],alpha+cost/(1-E0));low[i+1]=max(low[i+1],E0+cost/(1-alpha))
        for pt in occupants:
            j=6+2*'PQRS'.index(pt)
            high[j]=min(high[j],1-s/(1-E0));high[j+1]=min(high[j+1],1-s/(1-alpha))
    return list(map(F,low)),list(map(F,high)),rho


def physical(E,why,kn,low,high,version,word,earlier):
    add,sub,mul,scale,C=E.polyadd,E.sub,E.mul,E.scale,E.const
    a,b,c,e,f,h,p,q,u,v,r,w,j,k=E.vv;one=E.one;s=E.s
    def area(triangle):
        sign=E.sign(kn,triangle);assert sign
        return scale(E.det(triangle),sign)
    def occupants(triangle,pts):
        assert len(set(pts))==len(pts) and set(pts)==set(E.occ(kn,triangle))
        return E.COST[len(pts)]
    def central():assert E.sign(kn,'ACP')==E.sign(kn,'HBP')==1
    tag=why[0]
    if tag=='actual-area':
        _,triangle,pts=why
        return add(area(triangle),C(-occupants(triangle,pts)))
    if tag=='anchor-cap':
        _,triangle,hull,index,pts=why
        assert all(pt in hull or E.inside(kn,hull,pt) for pt in triangle)
        caps={'ABC':[a,sub(c,b)],'ABE':[e],'ABF':[f],'ABH':[b,sub(h,a)],
              'ACE':[e],'ACF':[c],'ACH':[sub(h,a),c],'AEF':[sub(one,a)],
              'AEH':[sub(h,a)],'AFH':[f,sub(h,a)],'BCE':[e,sub(c,b)],
              'BCF':[sub(c,b)],'BCH':[h,sub(c,b)],'BEF':[sub(one,b)],
              'BEH':[h],'BFH':[f],'CEF':[sub(one,f)],'CEH':[h],
              'CFH':[c],'EFH':[sub(one,e)]}
        assert type(index) is int and 0<=index<len(caps[hull])
        return add(caps[hull][index],C(-occupants(triangle,pts)))
    if tag=='contact-order':
        _,name=why;x,y={'ha':(h,a),'ea':(e,a),'he':(h,e),'fb':(f,b),'cf':(c,f)}[name]
        return sub(x,y)
    if tag=='endpoint-lower':
        assert len(why)==2 and F(why[1])==coarse(E,kn,version,word)[2]
        return add(mul(h,c),C(-F(why[1])))
    if tag=='top-hull':
        assert why==[tag,word] and (E.convex(kn,'ERSF') if word=='+' else E.inside(kn,'ERF','S'))
        return add(mul(sub(one,e),sub(one,f)),C(-(4 if word=='+' else 3)*s))
    if tag in ('lower-quad','upper-quad'):
        assert why==[tag,'BRTT']
        if tag=='lower-quad':
            assert E.convex(kn,'HABC') and E.inside(kn,'HABC','P')
            return add(mul(h,c),scale(mul(a,b),-1),C(-F(24,5)*s))
        assert E.convex(kn,'HCEF')
        return sub(C(1-2*s),mul(sub(h,e),sub(c,f)))
    if tag=='lower-sum':
        assert why==[tag] and E.sign(kn,'HCP')==-1
        return sub(C(1-s),add(p,q))
    if tag in ('central-lower-x','central-lower-y'):
        central();assert why==[tag]
        return sub(mul(mul(h,sub(c,b)),p),scale(add(c,b),s)) if tag.endswith('x') else sub(mul(mul(c,sub(h,a)),q),scale(add(h,a),s))
    if tag in ('central-budget','central-sum','central-floor'):
        central();M=high[2]*high[5]
        if tag=='central-floor':
            _,axis,printed=why;assert axis in (0,1)
            value=s*(high[2]+low[1])/(high[5]*(high[2]-low[1])) if axis==0 else s*(high[5]+low[0])/(high[2]*(high[5]-low[0]))
            assert F(printed)==value
            return sub(E.vv[6+axis],C(value))
        assert len(why)==2 and F(why[1])==M
        if tag=='central-sum':return sub(C(1-s/M),add(p,q))
        R0=add(scale(mul(h,c),3),scale(mul(a,c),-1),scale(mul(b,h),-1),scale(mul(a,b),-1))
        return sub(scale(mul(sub(h,a),sub(c,b)),M),scale(R0,s))
    if tag in ('right-support','top-right-budget'):
        assert E.sign(kn,'CEQ')==-1 and E.convex(kn,'BCQE')
        extra=version==2 and E.sign(kn,'BEP')<0;cost=(E.G if extra else 4)*s
        if tag=='right-support':
            assert why[1]=='BCQE'
            assert (len(why)==2 if version==1 else len(why)==4 and why[2]==('P' if extra else None) and F(why[3])==cost)
            return sub(mul(e,sub(one,b)),C(cost))
        assert len(why)==2 and F(why[1])==cost
        return sub(sub(sub(one,b),mul(sub(one,e),sub(one,f))),C(cost))
    if tag=='right-clearance':
        _,point,axis=why;assert point=='Q' and E.sign(kn,'CEQ')==-1
        return sub({'x':sub(u,c),'y':sub(e,v),'px':mul(e,sub(u,c)),'py':mul(sub(one,c),sub(e,v))}[axis],C(s))
    if tag=='weighted-barycentric':
        _,outer,inner,costs,printedM,axis=why
        assert outer in 'RS' and inner in 'RS' and outer!=inner and E.inside(kn,'EF'+outer,inner)
        expected=[E.COST[len(E.occ(kn,t))]/s for t in ('F'+outer+inner,'E'+outer+inner,'EF'+inner)]
        assert list(map(F,costs))==expected
        ceiling=F(44287,125000) if version==2 and E.sign(kn,'BEP')<0 else F(5243,10000)
        M=min(ceiling,(1-low[3])*(1-low[4]))/s;assert M==F(printedM) and sum(expected)<=M
        ce,cf,cu=expected;oi=6+2*'PQRS'.index(outer);ii=6+2*'PQRS'.index(inner);V=E.vv
        result=[add(scale(V[ii],M),C(-ce),scale(f,-(M-ce-cu)),scale(V[oi],-cu)),
                add(C(M-cf-cu),scale(f,cf),scale(V[oi],cu),scale(V[ii],-M)),
                add(scale(V[ii+1],M),C(-cf),scale(e,-(M-cf-cu)),scale(V[oi+1],-cu)),
                add(C(M-ce-cu),scale(e,ce),scale(V[oi+1],cu),scale(V[ii+1],-M))]
        assert type(axis) is int and 0<=axis<4
        return result[axis]
    if tag=='support-envelope':
        _,witness,X,Y,Z,printed=why;hull=witness[1]
        assert E.convex(kn,hull)
        if witness[0]=='pentagon':
            assert len(witness)==2 and len(hull)==5
            aa,bb,cc,dd,ee=hull;rate=F(11);expected=[aa+bb+ee,aa+dd+ee,aa+bb+dd]
        else:
            assert witness[0]=='quad' and len(hull)==4
            _,_,pts,printed_rate=witness;aa,bb,cc,dd=hull
            assert len(pts) in (1,2) and len(set(pts))==len(pts) and all(E.inside(kn,hull,pt) for pt in pts)
            counts=tuple(sorted(sum(E.inside(kn,t,pt) for pt in pts) for t in (aa+cc+dd,bb+cc+dd)))
            rates={(0,0):F(29,5),(0,1):F(149,20),(1,1):F(12)} if len(pts)==1 else {(0,0):F(1142,125),(0,1):F(1142,125),(0,2):F(139,10),(1,1):F(12),(1,2):F(199,10),(2,2):F(149,5)}
            rate=rates[counts]
            if len(pts)==2 and all(E.inside(kn,aa+bb+cc,pt) and E.inside(kn,aa+bb+dd,pt) for pt in pts):rate=max(rate,F(299,31))
            assert 0<F(printed_rate)<=max(rate,E.G if len(pts)==1 else rate);rate=F(printed_rate)
            expected=[aa+bb+dd,aa+bb+cc,aa+cc+dd]
        assert [X,Y,Z]==list(map(E.key,expected))
        cap=min(F(1),E.maxpoly(area(X),low,high));assert cap==F(printed)>0
        return add(scale(area(Y),cap),scale(area(X),-rate*s),scale(area(Z),rate*s))
    if tag=='earlier-area':
        _,bound=why;value=earlier(bound)
        return sub(area(bound['triangle']),C(value)) if bound['direction']=='lo' else sub(C(value),area(bound['triangle']))
    raise AssertionError('Unsupported BRTT physical source '+tag)
