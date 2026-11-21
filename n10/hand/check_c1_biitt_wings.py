"""Recompute the 23 printed contact rows of the opposite-wing exclusion."""
from fractions import Fraction as F
from itertools import product
from pathlib import Path
import re


def check_floor(interval, H, D, receipt):
    lo, hi = interval
    s = F(93,1000)
    if receipt == 'a':
        assert D*hi < 3*s
        return
    if receipt == '*':
        assert D == F(454,1000)
        assert (D+D*D+s)**2-4*D*s*(3*D+2) == -F(38609159,62500000000)
        return
    a = D*D/H-D
    b = D+s-3*s*D/H
    xs = [lo,hi]
    if a < 0:
        xs.append(min(hi,max(lo,-b/(2*a))))
    def G(x):
        return x*D*(1-x)+(x*D/H)*(x*D-3*s)+s*x-2*s
    assert 10**6*max(map(G,xs)) <= int(receipt) < 0


def main():
    manuscript = Path(__file__).with_name('C1_BIITT_OPPOSITE_WINGS.md').read_text()
    rows = [[t.strip() for t in line.strip('|').split('|')]
            for line in manuscript.splitlines() if re.match(r'^\| \d',line)]
    assert len(rows)==23
    rectangles = []
    s = F(93,1000)
    for c,C,h,H,d,cd,f,cf,B in rows:
        c,C,h,H = (F(int(i),160) for i in (c,C,h,H))
        assert F(2,5)<=c<C<=1 and F(2,5)<=h<H<=1
        rectangles.append((c,C,h,H))
        d,f=F(int(d),1000),F(int(f),1000)
        ci=(c,min(C,H))
        hi=(max(c,h),H)
        assert ci[0]<=ci[1] and hi[0]<=hi[1]
        check_floor(ci,hi[0],d,cd)
        check_floor(hi,ci[0],f,cf)
        T=(1-d)*(1-f)
        if B=='—':
            assert T < 3*s
            continue
        assert T>=3*s
        dhi=min(hi[1],1-3*s/(1-f))
        fhi=min(ci[1],1-3*s/(1-d))
        assert d<=dhi<1 and f<=fhi<1
        def one_side(d0,D,f0,Fmax):
            dp=(T-3*s)/(1-Fmax)
            return (max(0,D-f0+(1+Fmax)*dp)/3
                    +(1-3*s/T)*(1-f0+Fmax*dp))
        assert 10000*max(one_side(d,dhi,f,fhi),one_side(f,fhi,d,dhi))<=int(B)<=920
    # A rectangle product with closed ends covers all cut points as well.
    xs=sorted({v for c,C,h,H in rectangles for v in (c,C)})
    ys=sorted({v for c,C,h,H in rectangles for v in (h,H)})
    assert xs[0]==ys[0]==F(2,5) and xs[-1]==ys[-1]==1
    for (a,b),(r,t) in product(zip(xs,xs[1:]),zip(ys,ys[1:])):
        assert any(c<=a<=b<=C and h<=r<=t<=H for c,C,h,H in rectangles)
    heights = re.findall(r'^\| ([.0-9]+) \| ([.0-9]+) \| ([.0-9]+) \| −([0-9]+) \|',manuscript,re.M)
    assert len(heights)==4
    previous=F(2,5)
    for a,b,d,check in heights:
        l,r,D=map(F,(a,b,d))
        assert l==previous;previous=r
        check_floor((0,1),l,D,'-'+check)
        E=(1-D)*(1-3*s/r)
        if r<1:
            assert E<4*s
        else:
            assert E<F(9,2)*s
            bound=(1-D-4*s)*F(3,5)*(1-4*s/E)+(1-l)*(1-3*s/r)*F(2,3)
            assert bound==F(5276466457,59590650000)<s
    assert previous==1
    print('23 contact rectangles and four height intervals cover their domains and pass all bounds.')


if __name__=='__main__':
    main()
