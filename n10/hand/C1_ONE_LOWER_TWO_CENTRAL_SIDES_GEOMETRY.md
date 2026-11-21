# Geometry for one lower point, two central points and both side caps

This is the domain and source lemma for the remaining C1 count
`(k,j,r,t,l)=(1,2,1,0,1)`. It does not exclude that count.
All areas below are doubled, and every actual distinct-point unsigned
triangle has area at least `s=93/1000`.

Use the ten actual points

    O=(0,0), H=(0,h), C=(c,0), D=(1,d), F=(f,1),
    Y=(u,v), Z=(z,w), P=(p,q), Q=(r,t), R=(j,k),

with `d<=h`, `f<=c`, all coordinates in the closed unit square,
Y strictly inside OHC, Z and P strictly inside HCDF, Q in the
right cap CD(1,0), and R in the left cap HF(0,1). The cap points
are strictly on the exterior sides of their actual contact edges.
No top-cap point is assumed.

## 1. Exhaustive labeling and coordinate box

Transposition of the square preserves the count and exchanges the two
side caps. Use it once, if needed, to impose `h>=c`; rename the two cap
points to keep Q on the right. Independently exchange Z,P to impose
`[OZP]>0`. This determinant is nonzero by actual clearance. No order
between Y and either central ray is imposed.

The actual right-cap clearances give

    ct>=s,  d(r-c)-(1-c)t>=s,
    dc(r-c)>=s,  dc(1-c)>=s.                         (1)

Indeed multiply the second inequality by c and use the first;
the terms `cs+(1-c)s` add to s. The last inequality uses r<=1.
Reflection gives the left-cap counterpart

    fh(1-h)>=s.                                    (2)

Since x(1-x)<=1/4, (1) and (2) imply `d,f>=4s`.
The projection orders give `h,c>=4s`. Since d,f<=1, they also imply
`c(1-c),h(1-h)>=s`. The function x(1-x) decreases for x>=1/2, and

    (897/1000)(103/1000)=92391/1000000<s.

Therefore `h,c<897/1000`, and d<=h,f<=c give the same ceilings
for d and f. Put `B=897/1000` and `ell=s/B=31/299`.
For every one of the five free points X, the actual OHX and OCX
clearances imply `x_X,y_X>=ell`.

For Y, the OHC inward test gives

    hu+cv<=hc-s,
    u+v<=u/c+v/h<=1-s/(hc)<=1-s.                    (3)

For either central point X=(x,y), the two exact edge identities are

    (1-f)[CDX]+(1-c)[DFX]=[CDF](1-x),
    (1-d)(-[HFX])+(1-h)[DFX]=[HDF](1-y).

The actual inward areas on the left are at least s; also
`[CDF]<=1-f`, `[HDF]<=1-d`. Since f,d<1, division gives
`x,y<=1-s`. The right-cap point has `r>=c>=4s` and `t<=d<=B`;
the left-cap point has `j<=f<=B` and `k>=h>=4s`.
Consequently the following complete closed box is valid:

| Coordinates | Lower endpoint | Upper endpoint |
| --- | ---: | ---: |
| h,c,d,f | 4s | B |
| u,v,z,w,p,q | ell | 1-s |
| r | 4s | 1 |
| t,j | ell | B |
| k | 4s | 1 |

The lower occupancy gives `hc>=3s`. The two central occupants give

    W=[HCD]+[HDF]=1-(h-d)(c-f)>=8s.                 (4)

## 2. The actual convex exterior polygon

The seven actual hull vertices have positive cyclic order

    O,C,Q,D,F,R,H.

Replace the edges CD and FH of the convex contact pentagon OCDFH by
the outward paths through Q and R. Each path stays in its own square
corner triangle. Those two triangles have disjoint interiors and meet
the original pentagon only along their respective bases, so the new
polygon is simple. The cap turns are positive by the strict outward
tests. At the two new adjacent contact turns,

    [QDF]=(1-r)(1-d)+(d-t)(1-f),
    [DFR]=(1-d)(f-j)+(1-f)(1-k).                    (5)

Every factor is nonnegative by the cap placements and square bounds.
Actual clearance makes these determinants strictly positive. The other
contact turns are the original positive contact turns or positive
coordinate triangles. Thus the simple polygon is strictly convex.
All its 35 cyclic triples are positive. Y,Z,P are strictly inside it;
therefore every exterior vertex is extreme among all ten actual points.

The complete additional region tests are

| Point | OH | OC | HC | HF | CD | DF |
| --- | --- | --- | --- | --- | --- | --- |
| Y | − | + | − | implied by its lower placement | implied | implied |
| Z,P | − | + | + | − | + | + |

Together with the seven positive inward hull-edge tests at each of
Y,Z,P, the 35 hull triples, and OZP>0, these are the complete initial
signs. Further signs require a displayed actual determinant identity
or an affine containment argument. In particular no OP-line sign or
orientation at Y is silently assumed.

## 3. Valid physical and scalar sources

The universal rules proved in C1_TWO_CENTRAL_THREE_CAPS.md apply to
this actual domain with the preceding changes of placement. The two
cap-support sources are exactly (1) and (2); there is no top-cap source.
The three order sources are h-d,c-f,h-c. The central source is (4).
All actual unsigned triangle bounds, fan sums, signed four- and
six-label identities, actual occupied-quadrilateral area floors,
conditional support bounds, and distributed-mesh inequalities require
their own actual sign and occupant witnesses.

For an actual convex quadrilateral with two named occupants, the
support rate1142/125 and its stronger conditional rates are available.
An actual area-support source uses

    XY>=C0(Y-Z)+M,
    C0=max(quadFloor,lX+lZ,lY+lV),
    M=min(lX*lY,lZ*lV),

with X=ABC,Y=ABD,Z=ACD,V=BCD. This follows from
`XY=(X+Z)(Y-Z)+ZV` when Y-Z>=0 and from XY>=M otherwise.
The anchor caps HCD<=h,HCF<=c,HDF<=1-d,CDF<=1-f have the
nonnegative remainders printed in the cited common source theorem.
Every cyclic pentagon drawn from the seven actual exterior vertices
has support rate11, including cyclic reversals in unsigned areas.
These are actual hull orderings, with no additional square symmetry.

For a separated pair in an actual quadrilateral, spread rate6 is used
only for HCDF, whose area is at most one. Every other hull uses the
threshold-free1457/250 rate. Each diagonal must actually separate the
two named points. SIDE_CAP_BASE_TRIANGLES.md supplies OCQ<=21/50
and OHR<=21/50, with their actual cap premises.

These are necessary geometric and algebraic sources only. A whole-count
contradiction still requires an exhaustive written case argument.

## 4. Stronger affine caps on an earlier proved box

Suppose a previously completed coordinate argument gives
h>=h0, c>=c0, d<=d1 and f<=f1. The actual contact orders give

    [HCD]<=(1-c0)h+c0 d,
    [HCF]<=(1-h0)c+h0 f,
    [HDF]<=1-(1-f1)h-f1 d,
    [CDF]<=1-(1-d1)c-d1 f.                         (6)

The respective differences of right and left sides are exactly

    (c-c0)(h-d), (h-h0)(c-f),
    (f1-f)(h-d), (d1-d)(c-f).

All factors are nonnegative. These caps may replace a positive factor
in the support products of Section 3. The endpoint constants are fixed
before that product is used; a final endpoint cannot justify a source
used to obtain itself.

## 5. Coordinate and geometry stages

Every coordinate stage starts with a box already proved to contain the
actual configuration. Its exact corner extrema give new signed-area
floors and ceilings. Subsequent scalar and physical arguments may use
those bounds. When a completed box is inherited into an actual-sign
child, all assumptions used by that box remain assumptions of the child.
Intersections with other independently proved boxes preserve containment.
The source stages and all their literal endpoint updates must be retained.

For an unresolved actual triangle, if a complete box maximum of its
positive determinant is below s, that determinant must be negative,
because its actual absolute value is at least s. The same rule applied
to its negative forces the positive sign. If both maxima are below s,
the box contains no admissible actual configuration. These conclusions
use exact corner extrema, with every corner value witnessed.

For a proved positive convex actual quadrilateral ABCD, its joint area
polynomial [ABC]+[ACD] is multiaffine. A complete corner maximum on an
earlier proved box is therefore an upper bound on its area. If all four
vertices lie in the proved convex region HCDF, area monotonicity and
(4) also give the upper bound one. In the present domain this applies
when each vertex is one of H,C,D,F,Z,P.

An actual quadrilateral with one, two or three named interior points
has doubled area at least 449/1000, 8s or 93/91, respectively, by the
accepted occupancy bounds. A joint area ceiling below the corresponding
cost excludes that placement. If k existing occupants already exhaust
a proved capacity, any further actual point with three strictly inward
edge tests must have its fourth test strictly outward. Otherwise it
would supply an additional interior point and contradict the area bound.
The positive convex order, occupants, source box, complete corner extrema,
and three existing inward tests must all be stated before this inference.

These are auxiliary implications. Neither a coordinate stage nor a forced
sign closes the count without an exhaustive contradictory case cover.

## 6. Retaining scalar relations as physical factors

The endpoint-five support theorem applies to every proved convex actual
pentagon, including pentagons with vertices among Y,Z,P. Its ten cyclic
triple signs certify the required convex order. For cyclic ABCDE, put
X=A(ABE), Y=A(ADE), Z=A(ABD). The theorem gives

    XY >= 11s (X-Z).

The vertices need not be extreme among all ten points. The same witnessed
one- and two-occupant quadrilateral support inequalities may be used with
their stronger published rates and their explicit occupant tests.

More generally, suppose a proved actual-area relation is
XY>=k(X-Z), and a completed scalar stage supplies lX<=X<=uX and
lY<=Y<=uY. Either choice (a,b)=(uX,lY) or (lX,uY) gives the
nonnegative physical polynomial

    a Y + (b-k) X + k Z - a b.

Indeed aY+bX-ab is an upper product envelope: its difference from XY
is (uX-X)(Y-lY) in the first case and (X-lX)(uY-Y) in the second.
Substitution of actual signed determinant expansions therefore gives a
proved coordinate polynomial, of degree at most two.

For a witnessed strict containment V in actual triangle T0T1T2,
let S be the outer unsigned area and let S_i be the opposite fan areas.
Let L(X)=[IJX] be an actual signed line value, with zero used when a
label repeats. The exact barycentric identity is

    S L(V) = sum_i S_i L(T_i),  sum_i S_i = S.

Suppose completed scalar bounds give S<=N, S_i>=b_i>=0 and N>0.
Put R=N-sum_i b_i. If R<0, the fan identity itself is contradictory.
Otherwise write lambda_i=S_i/S, mu_i=N lambda_i-b_i>=0, so
sum_i mu_i=R. For proved signed vertex endpoints l_i<=L(T_i)<=u_i,
the following physical polynomials are nonnegative:

    N L(V)-sum_i b_i L(T_i)-R min_i l_i,
    sum_i b_i L(T_i)+R max_i u_i-N L(V).

All constants come from the completed scalar stage, with immutable
references, before the coordinate stage that uses these polynomials.
The actual fan/line witnesses fix every sign and zero convention. These
are the accepted affine barycentric inequalities after substitution of
actual determinant polynomials. A retained product with proved nonnegative
coordinate factors remains nonnegative; its literal terminal expansion
must still have an exact negative ceiling to yield a contradiction.
