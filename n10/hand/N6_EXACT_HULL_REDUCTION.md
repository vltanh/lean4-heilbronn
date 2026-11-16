# Six contacts: the exact-hull 2/2 reduction and rational boxes

This note treats the N6 child in which all four free points are inside
the six-contact boundary hexagon. It proves the complete lower-pair
catalogue and the rational ranges used in a subsequent orientation
proof. It does not by itself exclude this child or the global N6 family.

All areas are doubled. Put

    s=93/1000,       K=149/20<4+2sqrt(3).

Use the actual contacts in counterclockwise order

    A=(0,a), B=(b,0), C=(c,0), E=(1,e), F=(f,1), H=(0,h),
    0<a<h<1, 0<b<c<1, a<=e<=h, b<=f<=c.

Every actual unsigned triangle area is at least s. By
N6_PLACEMENTS.md, the four free points split exactly into P,Q below
HC, inside HABC, and R,S above HC, inside HCEF. Every containment
is strict: an actual dividing chord cannot contain a further point.
The same note and N6_EXTERIOR_CUTS.md supply the exterior-placement
catalogue; those placements are outside the scope of this note.

Write det(X,Y,Z) for det(Y-X,Z-X). The letters R,S in this note are
actual free points, not virtual supporting vertices.

## 1. Exactly two lower support-cell pairs, up to transposition

The six actual points H,C,A,B,P,Q lie in the virtual triangle OHC,
where O=(0,0), with actual endpoints H,C. The contacts on OH,OC are
precisely A,B, because P,Q are inside HABC. Their actual hull is the
quadrilateral HABC, so SIX_POINT_ENDPOINT.md gives

    hc>9s.                                               (1)

Normalize H,C,O to (0,0),(1,1),(0,1), respectively. The lower and
upper support contacts then have coordinates

    (0,1-a/h),       (b/c,1).

The normalized threshold is t=s/(hc)>=s>1/11. The five-cell
calculation in SIX_POINT_ENDPOINT.md and
TYPE_II_R4_NONTRIANGULAR.md Section 1 therefore excludes IV,V,
simultaneous I and III, two points in I, and two in III. The latter
exclusion uses sqrt(U)+sqrt(V)<=1 with U>=Gamma2*t and V>=t,
which gives t<1/12. It does not require any Type-II physical anchor.

The only pairs are I+II, II+II, and II+III. Transposing the physical
square exchanges I and III, A with B, H with C, and E with F. It
preserves all normalized contact inequalities. Hence it suffices to
treat the following two alternatives:

| Name | Lower placement |
|---|---|
| mixed | P in cell I, hence inside HAB and HCA; Q in II, inside HCA and HCB |
| central | P,Q both in II, hence inside both HCA and HCB |

In the central alternative the universal six-point theorem in
TYPE_II_R4_CENTRAL.md gives t<31/299. Consequently

    hc>897/1000                                           (2)

throughout that alternative. The bound uses only the normalized
central support pair, not the physical Type-II D,E points.

## 2. Uniform coordinate and cross-pair signs

The actual anchors satisfy

    a(c-b)>=s,       b(h-a)>=s,
    CEF=1-c+e(c-f)>=s,       EFH=1-h+f(h-e)>=s.

Thus e,f<=1-s. Also a(1-b),b(1-a)>=s. If m=min(a,b), then
m(1-m)>=s. Since (1037/10000)(1-1037/10000)<s and that product
increases on [0,1/2], we obtain

    a,b>1037/10000.                                      (3)

For any free point X=(x,y), the actual AHX and BCX clearances give

    (h-a)x>=s,       (c-b)y>=s.                         (4)

Both x,y are also at most 1-s. Here is a direct proof that does not
assume a second right or top contact. All hexagon edge determinants
at X are positive. The exact identities

    (1-f) det(C,E,X)+(1-c) det(E,F,X)=CEF*(1-x),
    (1-h) det(E,F,X)+(1-e) det(F,H,X)=EFH*(1-y)

and CEF<=1-f, EFH<=1-e imply 1-x>=s and 1-y>=s.
Every coefficient and divisor in these comparisons is positive.

For any lower point L in HABC and upper point U in HCEF, convexity
and the two HC sides imply

    det(H,L,U)>0,       det(C,L,U)<0.                  (5)

For example, the triangle HCU contains the upper point and is on
the upper side of HC. The rays HL through the lower triangle OHC
occur strictly before HU in counterclockwise order; equivalently
det(H,L,U) is a positive barycentric combination of the corresponding
determinants at O,C. Both are positive: U is above HC and lies in
the square. The argument at C is the reflected one. Thus every
determinant in (5) has absolute value at least s.

Let the floor be rho=9s in the mixed case and rho=897/1000 in the
central case. Equations (1)–(2) give h,c>=rho. The HC clearances
then imply

    x_R+y_R, x_S+y_S >=rho+s,
    x_P+y_P, x_Q+y_Q <=(1-s)/rho.                     (6)

For the first line use h*x+c*y>=hc+s and h,c<=1. For the second,
use h*x+c*y<=hc-s<=1-s and h,c>=rho.

## 3. The central rational box

Put

    alpha=1037/10000,      Amax=1-K*s,
    L=s/(1-alpha),         M=s*(1+alpha)/(1-alpha).

The triangles HCA,HCB each contain P,Q, so

    c(h-a)>=K*s,       h(c-b)>=K*s.

In particular a,b<=Amax. For either central point X=(x,y), the
actual ACX, HBX, and HCX inequalities give

    a*x+c*y-a*c>=s,
    h*x+b*y-b*h>=s,
    hc-h*x-c*y>=s.

Adding the first and third, and the second and third, gives
x<=1-2s and y<=1-2s. Eliminating y between the second and third
gives

    h(c-b)x>=s(c+b).

Similarly c(h-a)y>=s(h+a). Since c,h<=1 and a,b>=alpha,
the two lower bounds are x,y>=M. Equation (4) bounds the coordinates
of R,S below by L. Thus in the variable order

    (a,b,c,e,f,h,p,q,u,v,r,w,j,k),
    P=(p,q), Q=(u,v), R=(r,w), S=(j,k),

the central box is

| Coordinates | Lower bound | Upper bound |
|---|---|---|
| a,b | alpha | Amax |
| c,h | 897/1000 | 1 |
| e,f | alpha | 1-s |
| p,q,u,v | M | 1-2s |
| r,w,j,k | L | 1-s |

One additional quadratic consequence of the central support argument is

    (h-a)(c-b) >= (39/50)^2 hc.                        (7)

To check it, put U=(1-a/h)(1-b/c) and r0=sqrt(U). The central
pair argument in TYPE_II_R4_NONTRIANGULAR.md Section 3 is valid for
every t>1/11 and gives

    r0>2t,       Q_t(r0)=(1+4t)r0^2-12t*r0+4t^2>=0.

At t=s, Q_s(39/50)=-1449/1250000<0. Its derivative with respect
to t at 39/50 is negative throughout s<=t<1/9. Also
Q_t(2t)=16t^2(t-1)<0. Convexity of Q_t therefore makes it negative
on the interval [2t,39/50], whenever that interval is nonempty.
It follows that r0>39/50, which proves (7).

## 4. The mixed rational box

Here HCA contains both P,Q, while HAB contains P. Consequently

    c(h-a)>=K*s,       b(h-a)>=3s.

Define

    alpha=s/(1-3s),       Amax=1-K*s,
    Bmax=1-s/Amax,        L=s/(1-alpha).

The displayed area bounds give a<=Amax and b>=3s. The actual
ABC clearance a(c-b)>=s then gives a>=alpha and b<=Bmax.
The contact overlap gives e>=alpha and f>=3s.

For P, add its positive ABP and negative HBP clearances to obtain

    (h-a)(b-p)>=2s,
    p<=b-2s<=Bmax-2s.                                 (8)

Since p<=b, the AC P and ABC clearances imply c*q>=2s, hence q>=2s.
The negative HBP and positive HAP clearances also give

    b(h-q)>=2s,       q<=1-2s/Bmax.                   (9)

The point Q is central. The same elimination as in Section 3, now
using b>=3s and a>=alpha, gives

    u>=s*(1+3s)/(1-3s),       v>=s*(1+alpha)/(1-alpha),
    u,v<=1-2s.

Equation (4) gives x>=L for every free point and y>=alpha for R,S.
Together with (1), (6), and the earlier upper bounds, this proves
the entire mixed box:

| Coordinate | Lower bound | Upper bound |
|---|---|---|
| a | alpha | Amax |
| b | 3s | Bmax |
| c,h | 9s | 1 |
| e | alpha | 1-s |
| f | 3s | 1-s |
| p | L | Bmax-2s |
| q | 2s | 1-2s/Bmax |
| u | s*(1+3s)/(1-3s) | 1-2s |
| v | s*(1+alpha)/(1-alpha) | 1-2s |
| r,j | L | 1-s |
| w,k | alpha | 1-s |

Equations (8)–(9) also supply the separate affine and quadratic
factors b-p-2s>=0 and b(h-q)-2s>=0.

## 5. The exhaustive eleven lower-pair line patterns

For a hull vertex V, let its sign mean the sign of det(V,P,Q).
The line PQ cuts the lower quadrilateral HABC in a segment containing
P,Q, so its positive and negative hull vertices are consecutive arcs.

In the mixed case P is in HAB and Q is central. The segment crosses
HB, and the endpoint-cell signs give H positive and B negative.
The three mixed pair-line cases of TYPE_II_R4_MIXED_I.md Section 1,
whose initial proof is independent of the physical Type-II square,
leave exactly (A,C)=(-,-),(+,-),(-,+).

In the central case orient P,Q so that H is negative. If C is also
negative, the other positive arc cannot consist of A alone or B alone:
the chord-containment lemma would put P,Q in HAB or ABC, respectively,
contrary to their central cells. Thus A,B are both positive. If C is
positive, A positive and B negative would alternate around HABC and
is impossible. The alternative A negative, B positive is the excluded
central nested-fan orientation in SIX_POINT_ENDPOINT.md Section 3:
it forces t<=1/12, while here t>=s>1/11. The two remaining alternatives
have A,B of the same sign. Transposition of the square exchanges
those two alternatives and already preserves the negative H sign
because C was positive and transposition reverses orientations.
We may retain the one with A,B positive.

Finally, the full hexagon has cyclic order H,A,B,C,E,F. The positive
and negative vertices along this cycle must each be consecutive.
This gives exactly the following eleven patterns:

| Row | Case | A | B | C | H | Allowed pair (E,F) |
|---|---|---:|---:|---:|---:|---|
| CS | central | + | + | - | - | -- |
| CO | central | + | + | + | - | --, +-, ++ |
| MH | mixed | - | - | - | + | --, -+, ++ |
| MHA | mixed | + | - | - | + | --, -+, ++ |
| MHC | mixed | - | - | + | + | ++ |

The row counts are 1+3+3+3+1=11. All dividing signs are actual,
nonzero triangles. No ordering of the two upper free points has
been imposed in this reduction.

For a subsequent upper-pair split one may independently exchange R,S
to make det(H,R,S)<0. Within the convex quadrilateral HCEF, its
positive-vertex set is then exactly one of

    {C}, {E}, {F}, {C,E}, {E,F}, {C,E,F}.

These six alternatives are just the nonempty consecutive subarcs of
C,E,F. This is a geometric finite catalogue, not a coordinate grid.
The next section removes the three MHA extensions and strengthens
the boxes in the other mixed rows. Excluding every remaining necessary
orientation row still requires the separate inequality proof; this
note does not mark that task complete.

## 6. A complete mixed-row exclusion and stronger remaining boxes

Write the normalized support parameters as

    Hbar=1-a/h,       Fbar=b/c,       beta=1-Fbar,
    t=s/(hc)>=s.

The occupied triangles and the empty opposite anchor give

    Hbar>=Gamma2*t>K*t,       Hbar*Fbar>=3t,
    (1-Hbar)*beta>=t.                                  (10)

### The three MHA extensions are impossible

The MHA signs are exactly case 2 of the normalized mixed-pair
catalogue: the noncentral point is inside the triangle formed by
the two support contacts and the central point. Use the smaller
fixed threshold s in all normalized area inequalities. Equation (10)
gives Hbar>69/100. Also Hbar>beta, since otherwise
Hbar*Fbar<=Hbar(1-Hbar)<=1/4<3s. Finally

    beta>=s/(1-Hbar)>3/10.

The central strip and the three fan clearances therefore give

    s<=Hbar*beta*(1-beta)/(2Hbar+2beta-Hbar*beta).

This expression increases with Hbar. Substituting the anchor bound
Hbar<=1-s/beta and clearing positive denominators would require

    F(beta)=beta^3-beta^2+(3s+s^2)*beta-2s^2<=0.

But for z=beta-9/20>=-3/20 the exact expansion is

    F(beta)=z^3+(7/20)z^2-(4851/1000000)z+15381/20000000
           >=(1/5)z^2-(4851/1000000)z+15381/20000000>0.

The last quadratic has positive leading coefficient and discriminant
-591707799/10^12<0. This contradiction excludes MHA independently
of either upper free point and independently of the E,F line signs.
The complete lower catalogue thus has eight surviving rows, with
three central CO, one central CS, three mixed MH, and one mixed MHC.

### Every mixed row has a stronger area floor

Adding the two reciprocal bounds in (10) gives

    t<=Hbar(1-Hbar)/(3-2Hbar).

The right side decreases on Hbar>=69/100: its derivative numerator
is 3-6Hbar+2Hbar^2, whose value at 69/100 is -939/5000 and which
decreases throughout this interval up to one. Since Hbar>=K*t>69/100,
substitution and cancellation of t>0 give

    t<=(K-3)/(K^2-2K)=1780/16241,
    hc>=1510413/1780000>9s.                             (11)

This value replaces the mixed floor rho in (6) and the lower bounds
on c,h in the mixed box. It applies in both surviving mixed types.

### The whole MHC row has a still narrower box

In MHC, the normalized central point lies inside the triangle made
by the second base endpoint, the upper support contact, and P. In
the physical square this is exactly Q inside BCP, so

    (c-b)q>=3s.                                        (12)

In normalized coordinates the two relevant bounds on P's ordinate Y
are Y>2t/Fbar and beta*(1-Y)>=3t. Hence

    1>t*(2/Fbar+3/(1-Fbar)).                           (13)

Cauchy--Schwarz gives the lower bound 5+2sqrt(6)>989/100 for the
parenthesis; the strict rational comparison follows by squaring
489/200<sqrt(6). Thus

    hc>91977/100000.                                   (14)

Equation (13) with t>=s also gives

    Fbar^2-(1-s)Fbar+2s<0.

This quadratic has value 39/500000>0 at both 313/1000 and
594/1000. Its vertex is their midpoint, 907/2000, so it is
nonnegative outside the open interval between these two rational
points. Consequently

    (313/1000)c<b<(594/1000)c,
    b>287/1000,       b<594/1000.                      (15)

The lower b bound follows from (14), since
(313/1000)(91977/100000)=28788801/10^8>287/1000.

For the MHC box only, put

    bmin=287/1000,       Bmax=594/1000,
    alpha=s/(1-bmin),    L=s/(1-alpha),
    rho=91977/100000.

In Section 4's mixed box replace the lower bounds 3s for b,f by
bmin, replace alpha,L,Bmax,rho by these displayed values, replace
q's lower bound by 3s/(1-bmin), and replace u's lower bound by
s*(1+bmin)/(1-bmin). All other formulas remain unchanged.
The improved q bound is (12) with c-b<=1-bmin; every other
replacement repeats the already proved inequalities of Section 4.
The two affine factors b-(313/1000)c and (594/1000)c-b are also
strictly positive by (15).
