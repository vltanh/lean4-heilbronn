# A uniform exclusion of clustered triples inside a triangle

## Theorem and scope

Let an actual triangle of area S contain three further actual points
P,Q,R strictly inside it. Call this triple **clustered** if, for some one
of P,Q,R, the other two lie in the same triangle of its fan to the outer
vertices. If m is the least ordinary area of the twenty triangles spanned
by these six points, then

    m < (93/1000) S.                                     (1)

Consequently, if the outer triangle is contained in the unit square,

    m < 93/2000 < A*.                                   (2)

The strict comparison with A* is proved exactly in FOUR_CORNERS.md,
Section 5: 2A*>93073/1000000>93/1000.

This is a universal six-point lemma. In particular, it excludes every
III-3C-U3 configuration whose three upper points are clustered, regardless
of the four lower points. It leaves the distributed upper-triple
alternative open and does not close the whole U3 entry.

The only prior quantitative ingredient is the self-contained
two-interior-point triangle theorem in TRIANGLE_OCCUPANCY.md, Section 1.
The remaining calculations and finite alternatives are printed below;
no numerical search or certificate is a premise.

## 1. Normalize the outer triangle and the occupied fan

If m=0, (1) is immediate. Otherwise all six points are distinct and no
three are collinear. Suppose, for a contradiction, that

    m >= sigma S,       sigma=93/1000.

Choose the clustered point P and rename the outer vertices so that Q,R
are strictly inside the fan triangle ACP, with B the remaining outer
vertex. An affine map takes the outer triangle to

    B=(0,0), A=(0,1), C=(1,0),

of area 1/2. Every ordinary area is multiplied by 1/(2S), so every
unsigned doubled area after this map is at least sigma.

Write

    P=(u,h),       q=u+h,       w=1-u-h.

The three fan areas and the two-interior-point theorem on ACP give

    u>=sigma,  h>=sigma,  w>=Gamma2 sigma,
    Gamma2=4+2 sqrt(3).                                  (3)

All of u,h,q,w are positive and q+w=1. We will use the rational lower
bound

    Gamma2>G=149/20,

which follows from sqrt(3)>69/40, since 3*40^2=4800>4761=69^2.
In particular

    q < q0=1-G sigma=6143/20000,
    sigma<=u,h<4283/20000<1/4.                           (4)

The strict upper bounds on u,h use the other coordinate's lower bound
sigma in (3).

For a point X=(x,z) equal to Q or R, put

    D(X)=u z-h x.

This is the signed doubled area of BPX, so |D(X)|>=sigma. The two
possibilities for D(Q),D(R), namely opposite signs or equal signs, are
exhaustive; zero is impossible.

## 2. The cost of either sign for one point

Suppose first that D(X)>=sigma. Because X is inside ACP, the doubled
areas of ACX and APX, with their known positive signs, give

    x+z<=1-sigma,
    (1-h)x+u z>=u+sigma,
    -h x+u z>=sigma.                                    (5)

Define

    b=(1-h)x+u z,       c=-h x+u z=D(X).

Direct expansion gives the positive-coefficient identity

    u(x+z)=q b+w c.                                     (6)

Equations (5)-(6) imply

    u(1-sigma)>=q(u+sigma)+w sigma=q u+sigma,
    u(w-sigma)>=sigma.                                  (7)

If D(X)<=-sigma, interchange A and C, swapping u with h and x with z.
This reverses D and preserves every unsigned area and containment. Thus
the corresponding necessary condition is

    h(w-sigma)>=sigma.                                  (8)

## 3. Opposite signs are impossible

If Q and R have opposite signs, (7)-(8) give

    q(w-sigma)=q(1-q-sigma)>=2sigma.                     (9)

But the function q(1-q-sigma) increases on [0,q0]. Indeed its derivative
is at least

    1-sigma-2q0=2927/10000>0.

Using (4), its largest allowed value is bounded by

    q0(1-q0-sigma)
      = sigma q0(G-1)
      = sigma(2-7553/400000)
      < 2sigma.

This contradicts (9), and completes the opposite-sign case.

## 4. Equal signs place both points in one explicit triangle

It remains that Q,R have equal signs. Interchange A,C if necessary so
that both signs are positive. Each point then satisfies (5).

The three inequalities (5) enclose a triangle. This is an exact
statement about their entire intersection, not a drawing-based inference:
the invertible linear map (x,z)->(b,c) has determinant u>0, and maps the
intersection to

    b>=u+sigma,       c>=sigma,
    q b+w c<=u(1-sigma),

where q,w>0. Its slack at the intersection of the two lower boundaries is

    T=u(w-sigma)-sigma >=0.                             (10)

Nonnegativity follows either from (7) or from existence of Q. If T=0,
the intersection is a single point, so it cannot contain the distinct
Q,R. We may therefore assume T>0.

In the original (x,z) coordinates, the three vertices are

    V1=(x1,1-sigma-x1),   x1=sigma(1+u)/w,
    V2=(x2,1-sigma-x2),   x2=[u(1-sigma)-sigma]/q,
    V3=(u,h+sigma/u).                                    (11)

They are respectively the intersections of the first and second
boundaries in (5), of the first and third, and of the last two.
For example

    u-x1=T/w,       x2-u=T/q,

so their order and their nondegeneracy are explicit. No square bounds on
these auxiliary vertices are required: we deliberately enlarged the
actual admissible set to the triangle (11).

Consider the actual triangle AQR. Its unsigned doubled area is convex
separately in Q and R, so its maximum when both belong to the triangle
(11) occurs at a pair of vertices. Coincident vertices give zero. Direct
two-by-two determinant expansion gives the other three values:

| Pair | Absolute doubled area with A=(0,1) |
|---|---|
| V1,V2 | sigma T/(q w) |
| V1,V3 | sigma T/(u w) |
| V2,V3 | (u-sigma)T/(u q) |

All denominators are positive. Also (10) and w-sigma<1 imply u>sigma,
so the signs used in the last row are justified. Since T<uw and q>=u,
the first two entries are strictly smaller than sigma.

## 5. The last vertex pair has area below sigma

Write the last entry as

    E=(u-sigma)[u(1-q-sigma)-sigma]/(u q).

For fixed u this decreases as q increases. To check the derivative sign,
rewrite it as

    E=(u-sigma)/u * ([u(1-sigma)-sigma]/q-u).

The square-bracket numerator is positive because it equals T+u q.
Since h>=sigma, one has q=u+h>=u+sigma. Hence

    E <= (u-sigma)[u(1-u-2sigma)-sigma]/[u(u+sigma)].       (12)

The right side is strictly less than sigma precisely when

    N(u)=-u^3+(1-2sigma)u^2+(sigma^2-2sigma)u+sigma^2 < 0.

Equation (4) puts u in [sigma,1/4]. On this interval N is convex:

    N''(u)=2(1-2sigma-3u)>=16/125>0.

Its endpoint values are negative by exact rational arithmetic:

    N(sigma)=-2sigma^3<0,
    N(1/4)=-351/800000<0.

A convex function lies below the chord joining its endpoint values, so
N(u)<0 throughout this interval. Equation (12) therefore gives E<sigma.

All three vertex-pair bounds are strictly below sigma. Consequently the
actual triangle AQR has doubled area below sigma, contradicting the
assumed lower bound. This completes the equal-sign case.

## 6. Rescaling and the remaining U3 obligation

Both sign alternatives have been excluded. Thus no clustered six-point
triangle configuration can have minimum area at least sigma times its
outer triangle's area. This proves (1), and an outer triangle inside the
unit square has area at most 1/2, giving (2).

For III-3C-U3, the three upper points are strictly inside the actual
triangle of the three occupied corners. If their pattern is clustered,
(2) excludes the full configuration with all four lower points
unrestricted. Otherwise they are distributed: at every upper point, the
other two lie in different members of its three-triangle fan. No fan-edge
case is omitted because it would make an actual triangle collinear.

The distributed alternative is the remaining U3 proof obligation. This
note does not assert its exclusion or completion of HP11-III.
