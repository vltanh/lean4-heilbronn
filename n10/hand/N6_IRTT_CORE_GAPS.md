# Four radial cuts of the nine-point IRTT core

Use the nine actual points, cap locations and doubled clearance
s=93/1000 of [the width argument](N6_IRTT_CORE_CAPS.md). The six
contacts remain vertices of their hull because they are endpoints
or sole points on supporting sides of the square. Q is the only
point beyond CE. The EF test takes its strict minimum at R,
since S lies inside ERF with positive barycentric weights.
Thus Q and R are exposed, while S is interior. The hull is the
strict octagon ABCQERFH. Indeed, Q is beyond CE and inside all
other contact-hexagon edge half-planes, so it is inserted between
C and E. At both new edges CQ and QE, R is inward. Indeed
[CQR]=[CQE]+(u-c)(w-e)+v(1-r)>0. For QE use the positive
turn [QER] in the width argument. Relative to the other contact
edges R is outside only EF, so it is inserted between E and F.

The [occupied-ear theorem](NINE_CONVEX_POINTS.md) puts S outside
the other seven octagon ears. In particular it is on the inward
side of RH when the ear RFH is cut off, and of QR when the ear
QER is cut off. Thus HRS<0 and QRS>0. The line through
R and S enters the interior of the strict convex octagon at R.
It meets its boundary once more, in an open edge. No third actual
point lies on that line. Around the boundary path F,H,A,B,C,Q,E
there is therefore exactly one change from the negative side to
the positive side. The fixed H and Q tests restrict that crossing
to exactly these four possibilities:

| Cut edge | ARS | BRS | CRS |
| --- | --- | --- | --- |
| HA | + | + | + |
| AB | - | + | + |
| BC | - | - | + |
| CQ | - | - | - |

## Exact differences of the two opposite tests

Put dx=r-j and dy=w-k, using R=(r,w), S=(j,k). Direct determinant
expansion gives

    ARS-HRS=(h-a)dx,
    BRS-ARS=a dx+b dy,
    CRS-BRS=(c-b)dy,
    QRS-CRS=(u-c)dy-v dx.

In its corresponding cut, each left side is a positive actual
area minus a negative actual area. It is consequently at least
2s. Subtracting 2s from the right side gives a nonnegative
physical factor, with the two actual sign witnesses stated.

## Eliminating the inner coordinates by normalized weights

Set lambda=2325/8963, the proved lower bound on every normalized
S weight in ERF. The coordinate orders f<r<=1 and e<w<=1 give

    j>=lambda+(1-2lambda)f+lambda r,
    k>=lambda+(1-2lambda)e+lambda w.

For example, subtract lambda from each of the three barycentric
weights. Their remaining nonnegative sum is 1-3lambda; its
minimum x-coordinate is f and minimum y-coordinate is e.
Thus, with

    Ux=(1-2lambda)(r-f)-lambda(1-r),
    Uy=(1-2lambda)(w-e)-lambda(1-w),

we have dx<=Ux and dy<=Uy. The following three stronger necessary
factors follow, because their multiplying contact coefficients
are nonnegative:

| Cut | Nonnegative factor |
| --- | --- |
| HA | (h-a)Ux-2s |
| AB | a Ux+b Uy-2s |
| BC | (c-b)Uy-2s |

For the CQ cut the coefficient of dx is negative, so an upper
bound on dx would give a lower bound on that term.

## Location of the tenth point

The tenth point P in IRTT lies inside the contact quadrilateral
HCEF. In fact it lies in the triangle HCE. To prove this, observe
that the actual triangle HER contains S. Its ER and RH tests are
positive by the choice of the top labels and the empty RFH ear.
The HE test is positive at S by affinity from E,R,F, since HER
and HEF are positive cyclic octagon triples and S has positive
weights at R and F inside ERF.

The occupied right cap gives e(1-b)>=4s, hence e>=4s.
[Right-cap endpoint bound](N6_TOP_PAIR_BARYCENTRIC_BOUNDS.md)
Since h>=e and r,w<=1,

    [HER]=w-h+r(h-e)<=1-e<=1-4s=.628<7s.

Two interior points would force its doubled area to be at least
(4+2√3)s>7s. Thus HER already has its only possible occupant.
[Two-point triangle bound](TRIANGLE_OCCUPANCY.md)

P is strictly inward of the hull edge ER and also of RH because
the RFH ear is empty. Therefore [HEP]>0 would put P strictly
inside HER together with S. Clearance excludes [HEP]=0. Hence
[HEP]<0, placing P on the C side of the diagonal HE of HCEF.
This proves the claim.
