# N7 central: an occupied HCF gives AEF and BEF capacity one

Use the actual-contact normalization and the two weak central roots
of [N7_ONE_LOWER_SETUP.md](N7_ONE_LOWER_SETUP.md):

    A=(0,a), B=(b,0), C=(c,0), D=(1,d), E=(1,e),
    F=(f,1), H=(0,h), G=(g,z), O=(x,y), P=(u,v).

All ten points lie in the closed unit square. The actual heptagon
ABCDEFH is strictly convex, all distinct-point unsigned doubled
triangle areas are at least s=93/1000, and

    0<a<h<1, 0<b<c<1, 0<d<e<1,
    a<=e<=h, b<=f<=c.

The central setup gives h>=613/1000 and d>=3/25 in both roots.
It also proves e(1-b)>=4s, and the root floors are

| Root | a floor | b floor |
| --- | --- | --- |
| CA: ac>=bh | 139/1000 | 108/1000 |
| CB: ac<=bh | 122/1000 | 123/1000 |

No reflection or relabeling is used.

**Lemma.** If the actual triangle HCF contains O and P, then
f>617/1000. Moreover, the actual triangles AEF and BEF have capacity one
in each central root.

## 1. The top abscissa is greater than 617/1000

Put T=(149/20)s=13857/20000. The actual two-interior-point
triangle theorem gives [HCF]>=T. The literal contact areas are

    [CDE]=(1-c)(e-d)>=s,
    [HCF]=c(1-h)+hf.

Set d0=3/25, h0=613/1000, and q=617/1000. Since e<=h and
d>=d0, we have

    (1-c)(h-d0)>=(1-c)(e-d)>=s,
    c<=1-s/(h-d0).

The denominator is positive: h-d0>=h0-d0=493/1000.
Suppose f<=q. Using 1-h>=0 gives

    [HCF]<=Phi(h):=(1-h)(1-s/(h-d0))+qh.

For every h>=h0, the exact difference identity is

    Phi(h0)-Phi(h)
      =(h-h0)((1-q)-s(1-d0)/((h0-d0)(h-d0))).        (1)

The bracket is at least

    (1-q)-s(1-d0)/(h0-d0)^2
      =11247767/243049000>0.

Thus Phi(h)<=Phi(h0). The exact endpoint comparison is

    T-Phi(h0)=312097/493000000>0.

This contradicts [HCF]>=T and proves f>q. All substitutions used
nonnegative coefficients, and every denominator sign was stated.

## 2. The AEF area is strictly below the capacity-one threshold

Write a0,b0 for the applicable root floors above. From
e(1-b)>=4s and b>=b0,

    e>=e0:=4s/(1-b0).

The two values are e0=93/223 in CA and e0=372/877 in CB.
Both are strictly greater than a0. The literal positive actual area is

    [AEF]=1-a-f(e-a).

First replace a by its lower bound, using 1-f>=0; then replace e
by its lower bound, using f>0. Finally f>q and e0>a0 give

    [AEF]<=1-a0-f(e0-a0)<1-a0-q(e0-a0).

Every resulting rational comparison is

| Root | Strict upper bound for AEF | T minus this bound |
| --- | --- | --- |
| CA | 153747149/223000000 | 758401/223000000 |
| CB | 303248649/438500000 | 141519/109625000 |

Both gaps are positive. Therefore [AEF]<T in each root. Two named
actual interior points would force [AEF]>=T, so AEF has capacity one.

## 3. The BEF area is also below the capacity-one threshold

The corresponding literal positive contact area is

    [BEF]=1-b-e(f-b).

Replace b by b0 using 1-e>=0. Then f>q>b0 permits replacement
of e by e0, and e0>0 permits replacement of f by q. Consequently

    [BEF]<=1-b0-e(f-b0)<=1-b0-e0(f-b0)
         <1-b0-e0(q-b0).

The exact comparisons are

| Root | Strict upper bound for BEF | T minus this bound |
| --- | --- | --- |
| CA | 151579/223000 | 58531/4460000 |
| CB | 585361/877000 | 445369/17540000 |

Both gaps are positive, so BEF has capacity one as well.

The optional dependency-free exact reader is

~~~text
node n10/hand/N7_CENTRAL_COMPLETION_UPPER_FAN_CAP_check.js
~~~

It expands the four contact identities and the denominator-cleared
difference identity (1), and checks every rational endpoint and gap.
Independent mathematical review accepts all denominator signs,
monotone substitutions, and strict comparisons for both actual triangles.
The separate reader [audit_n7_upper_fan_cap.py](audit_n7_upper_fan_cap.py)
expands nine actual-contact and difference identities, including explicit
nonnegative remainder decompositions for the AEF and BEF ceilings, and
checks every rational endpoint and positive gap. The lemma is conditional
on HCF containing O,P; the remaining upper-pair words need their own proofs.
