# Seven boundary points: all small OP-line arcs are excluded

This note closes every 1/7 and 2/6 boundary-vertex split made by the line
through the two remaining interior points, in the N7 placement with exactly
one point outside the seven-contact heptagon. The proof covers every
position of the short arc, without identifying arcs by square symmetries
that would move the missing top contact to another slot.

Five fixed polynomial sums, with 2,254 printed positive integer terms, supplement the geometric arguments. Their
positive integer terms are printed below; their factors are proved
nonnegative before the tables. The optional standard-library checker
`check_n7_op_line_caps.py` reads the manuscript and reconstructs every
factor. No search, optimizer, or external data file is a premise.

All areas in this note are doubled. Put

    s=93/1000,  Gamma2=4+2sqrt(3),  Gamma3=(11+3sqrt(5))/2.

## 1. The actual octagon and the exhaustive short-arc catalogue

By N7_PLACEMENTS.md, N7_UPPER_OCCUPANCY.md,
N7_OPPOSITE_UPPER_CAPS.md, and N7_SAME_UPPER_CAP.md, the only N7
placements still requiring treatment have either all three free points
inside the contact heptagon, or exactly one point in one upper exterior
cap and two inside the heptagon. This note treats the second placement.
Reflect horizontally if necessary to put its exterior point on the left.
Write

    A=(0,a), B=(b,0), C=(c,0), D=(1,d),
    E=(1,e), F=(f,1), G=(g,z), H=(0,h),

with

    0<a<h<1, 0<b<c<1, 0<d<e<1,
    b<=f<=c, d<=h, a<=e, 0<g<f, h<z<1.

Here G lies strictly above HF. Inserting it in the upper hull chain gives
the strictly convex actual octagon A,B,C,D,E,F,G,H. Every determinant
of three of these vertices in cyclic order is positive and at least s.
The two other points O,P lie strictly inside the contact heptagon and
therefore strictly inside the octagon. All actual triangle areas,
including those involving O,P, are at least s.

The line OP cannot pass through a hull vertex, because that would make
three actual points collinear. Its positive and negative boundary vertices
form two nonempty consecutive arcs. If the shorter arc consists of a
single vertex, the line segment inside the octagon, hence both O,P, lies
inside the triangle made by that vertex and its two neighbours. If the
shorter arc consists of two vertices, both O,P lie in the quadrilateral
made by those two vertices and their two exterior neighbours. This is
the elementary chord containment in a convex polygon; all containments
are strict because no three actual points are collinear.

Thus every 2/6 case is one of the following eight actual quadrilaterals.

| Short arc | Containing quadrilateral | Exclusion below |
|---|---|---|
| A,B | HABC | lower-left endpoint container, Section 3 |
| B,C | ABCD | side-cap metric, Sections 4 and 7 |
| C,D | BCDE | lower-right endpoint container, Sections 4 and 7 |
| D,E | CDEF | side-cap metric, Sections 4 and 7 |
| E,F | DEFG | upper-right endpoint container, Sections 4 and 7 |
| F,G | EFGH | moving-vertex cap, Section 3 |
| G,H | FGHA | upper-left endpoint container, Section 3 |
| H,A | GHAB | side-cap metric, Sections 4 and 7 |

## 2. Every one-vertex arc is impossible

The two opposite corner triangles in the lower-left endpoint container
conv{H,(0,0),C} satisfy

    sqrt(ABC)+sqrt(ABH)<=sqrt(hc)<=1.

For example, set u=a/h and v=b/c; the two squared quantities, divided
by hc, are u(1-v) and v(1-u), so the inequality is Cauchy--Schwarz.
Similarly,

    sqrt(BCD)+sqrt(CDE)<=sqrt(e(1-b))<=1.

The line FG meets x=0 at

    z0=(fz-g)/(f-g),              h<z0<1.

The endpoint support triangle conv{A,(0,z0),F} contains A,H,G,F
and has doubled area S'=f(z0-a)<=1. Its two opposite corner triangles
give, by the same Cauchy--Schwarz calculation,

    sqrt(AGH)+sqrt(FGH)<=sqrt(S')<=1.                 (1)

Since each triangle in these three pairs is at least s, each is at most
(1-sqrt(s))^2. Also each containing area is at least 4s. In particular,

    hc>=4s,  e(1-b)>=4s,  S'>=4s,  f(1-a)>=4s.      (2)

It follows that h,e,f>=4s. The remaining two consecutive ears satisfy

    DEF=(1-f)(e-d)<=1-f<=1-4s,
    EFG<EFH=(1-f)(1-h)+f(1-e)<=1-4s.                 (3)

The strict comparison in (3) is the exact identity

    EFH-EFG=g(1-e)+(1-f)(z-h)>0.

Because s<4/25, (1-sqrt(s))^2<1-4s. Thus all eight consecutive
ears have doubled area at most 1-4s. If O,P lie inside any one of
them, the two-interior-point triangle bound gives its area at least
Gamma2*s>7s. But 1-4s<7s, since 11s>1. Every 1/7 split is excluded.

## 3. Three of the eight two-vertex arcs have direct exclusions

### The lower-left and upper-left endpoint containers

For HABC use the endpoint triangle conv{H,(0,0),C}, with actual
vertices H,C. We have c<=1-s from CDE>=s and h<=1-s from
FGH<=f(1-h). Its doubled area is therefore

    hc<=(1-s)^2.

For FGHA use conv{A,(0,1),F}, with actual vertices A,F. Here
a>=s and f<=c<=1-s, so its doubled area is also at most (1-s)^2.
If either quadrilateral contained both O,P, its four actual hull
vertices and O,P would give six actual points in the corresponding
endpoint triangle. SIX_POINT_ENDPOINT.md requires doubled area at
least Gamma3*s. This is larger, since Gamma3>177/20 and

    (177/20)s-(1-s)^2=401/1000000>0.                 (4)

### The top-side cap EFGH

Move G vertically upward, holding g and all other coordinates fixed,
until either it reaches z=1 or EFG decreases to s. During this motion
FGH increases, AGH is unchanged, and all other consecutive ears are
unchanged. The cap area EFGH increases with z, with derivative f>0.

If G reaches z=1 first, all eight boundary-ear inequalities of the
projected boundary octagon hold. The same-side quadrilateral theorem
of N8_OP_LINE_CAPS.md Section 2 uses only these eight inequalities,
and bounds the projected EFGH area strictly below 8s. It bounds the
original area as well.

Otherwise stop at G* with EFG*=s. At that point

    area(EFG*H)=s+EG*H,
    EG*H=z*-(1-g)h-ge<=1-min(h,e)<=1-4s.

Consequently the original EFGH area is at most 1-3s<8s. An actual
quadrilateral containing O,P has doubled area at least 8s, by the
two-interior-point quadrilateral bound proved in N8_OP_LINE_CAPS.md
Section 2. This excludes the top-side cap in both alternatives.

## 4. The remaining five metric targets

It remains to exclude O,P in ABCD, CDEF, GHAB, BCDE, or DEFG.

For the three same-side quadrilaterals ABCD,CDEF,GHAB, the entire
height alternative h>=e is already covered by the boundary-ear
theorem. Indeed, project G to G'=(g,1). The two projected top ears
satisfy

    FG'H=(f-g)(1-h)>=FGH>=s,
    EFG'=(f-g)(1-e)>=(f-g)(1-h)>=s.

All six other projected ears are unchanged. ABCD,CDEF are unchanged
by projection, while

    area(GHAB)=gh+b(z-a)

increases with z. Each original side cap therefore has area strictly
below 8s. The fixed sums for these three caps need only treat h<=e.

For BCDE, use the triangle conv{B,(1,0),E}. Its doubled area is
e(1-b), and two vertices B,E are actual. If O,P lie in BCDE, the
actual six-point hull is the quadrilateral BCDE. The stronger
nontriangular clause of SIX_POINT_ENDPOINT.md requires

    e(1-b)>9s.                                       (5)

For DEFG use an actual endpoint triangle with vertices D,G and
third vertex

    R=(1,1+(1-z)(1-f)/(f-g)).

The line GR is the supporting line GF; the vertical side DR contains
E, and the chord DG is its base. Convexity therefore puts D,E,F,G,
and any points of DEFG, inside this triangle. Its doubled area is

    S_TR=(1-g)[1-d+(1-z)(1-f)/(f-g)].

Again the actual six-point hull would be a quadrilateral, so S_TR>9s.
The five fixed sums exclude precisely the following weak consequences
of these necessary inequalities:

| Row | Additional height premise | Nonnegative contradiction factor BAD |
|---|---|---|
| BR | none | e(1-b)-9s |
| TR | none | (1-g)[(1-d)(f-g)+(1-z)(1-f)]-9s(f-g) |
| ABCD | h<=e | area(ABCD)-8s |
| CDEF | h<=e | area(CDEF)-8s |
| GHAB | h<=e | area(GHAB)-8s |

The area of any listed quadrilateral is the sum of its two consecutive
oriented fan triangles. Thus every BAD is an explicit polynomial of
degree at most three. No projection of an actual endpoint is used in
the TR six-point argument.

## 5. Proved rational ranges and support factors

Use the coordinates in the order (a,b,c,d,e,f,g,h,z), and define

    eta=93/790,                  ell=7347/69700,
    h0=4s/(1-ell),               h1=1-s,
    f0=4s/(1-eta),               x0=s/(h1-eta),
    g1=1-ell-s/(1-h0).

All denominators are positive. The closed rational box is:

| Coordinate | lower | upper |
|---|---|---|
| a | eta | 1-4s |
| b | x0 | 1-ell |
| c | ell | 1-ell |
| d | eta | h1 |
| e | h0 | 1 |
| f | f0 | 1-ell |
| g | x0 | g1 |
| h | h0 | h1 |
| z | h0+s | 1 |

N7_PLACEMENTS.md supplies eta<=a,d, ell<=b,g, c,f<=1-ell,
the side-span upper bound 697/790, and 117/1000<=c-b<=79/100.
Equation (2) gives f>=f0 and a<=1-4s. The same equation with
c,1-b<=1-ell gives h,e>=h0. Since FGH<=f(1-h), h<=h1;
the overlap d<=h gives d<=h1. The actual ABH,AGH clearances
b(h-a),g(h-a)>=s and h-a<=h1-eta give b,g>=x0. Finally,

    FGH<=(f-g)(1-h),    FGH=f(z-h)-g(1-h)

give g<=g1 and z-h>=s. These prove every listed refinement.

For coordinate v_i with bounds lo_i,hi_i, set

    L_(2i)=v_i-lo_i,       L_(2i+1)=hi_i-v_i,

where i starts at zero. The remaining affine factors are:

| Factor | Polynomial |
|---|---|
| L18 | h-a-s |
| L19 | 697/790-h+a |
| L20 | e-d-s |
| L21 | 697/790-e+d |
| L22 | c-b-117/1000 |
| L23 | 79/100-c+b |
| L24 | f-b |
| L25 | c-f |
| L26 | f-g |
| L27 | h-d |
| L28 | e-a |
| L29 | z-h-s |
| L30 | e-h; used only in rows ABCD,CDEF,GHAB |

For three letters in the displayed cyclic alphabet, the factor XYZ+
means det(Y-X,Z-X)-s. Every such factor is nonnegative by the
strict convexity of the actual octagon and the triangle-area premise.
The remaining common factors are

    EP=f(1-a)-4s,
    EL=hc-4s,
    ER=e(1-b)-4s,
    SUP=f^2(z-a)-fg(1-a)-4s(f-g).

EP,EL,ER follow from (2). The last factor clears the positive
denominator f-g in S'=f(z0-a)>=4s, so it is also nonnegative.

## 6. Five convex-chain endpoint factors

The convex-five endpoint proof in N7_SAME_UPPER_CAP.md Section 1
gives the scale-free normalized bound

    minimum / container area <=(5sqrt(5)-11)/2<1/11.

The ratio is unchanged when both areas are doubled. Its proof applies
to a container of any area: the normalization is affine and does not
use an upper bound on the original area. Consequently a triangle with
two actual vertices containing five convex actual points must have
doubled area strictly greater than 11s.

Each of the following five chains consists of consecutive vertices of
the strictly convex octagon. Its two listed endpoints and the
intersection of the two displayed supporting lines form a containing
triangle. The other three vertices lie between the endpoint chord and
those supporting lines by convexity. The third vertex may be outside
the square, which does not affect the endpoint theorem.

| Chain | Actual endpoints | Supporting lines at the ends | Third vertex | Doubled area S |
|---|---|---|---|---|
| AHGFE | A,E | x=0 and EF | (0,1+f(1-e)/(1-f)) | 1-a+f(1-e)/(1-f) |
| BCDEF | B,F | y=0 and EF | (1+e(1-f)/(1-e),0) | 1-b+e(1-f)/(1-e) |
| DEFGH | D,H | x=1 and HG | (1,h+(z-h)/g) | h-d+(z-h)/g |
| HABCD | H,D | x=0 and CD | (0,-dc/(1-c)) | h+dc/(1-c) |
| ABCDE | A,E | AB and x=1 | (1,-a(1-b)/b) | e+a(1-b)/b |

All denominators are positive. Multiplying S-11s>0 by those
denominators gives the following nonnegative factors:

    P_AHGFE=f(1-e)+(1-f)(1-a-11s),
    P_BCDEF=e(1-f)+(1-e)(1-b-11s),
    P_DEFGH=g(h-d)+z-h-11sg,
    P_HABCD=(h-11s)(1-c)+dc,
    P_ABCDE=(e-11s)b+a(1-b).

Only the explicit factors above occur in the tables. In particular,
no unproved occupancy property of a pentagon is being assumed.

## 7. Exact fixed sums and the conclusion

Each row below specifies W as a sum of its printed positive integer
weight times the indicated product of nonnegative factors. Hence W>=0
under that row's geometric premises. Expand

    W=sum_alpha c_alpha v_0^alpha_0 ... v_8^alpha_8.

Every coordinate is nonnegative. On the proved rational box, therefore,

    W <= B(W)
      := sum_(c_alpha>0) c_alpha product_i hi_i^alpha_i
         +sum_(c_alpha<0) c_alpha product_i lo_i^alpha_i.   (6)

The following table gives the exact rational value B(W), computed by
expanding the printed sum, not by optimizing it. Every value is negative.
The standalone checker rebuilds each determinant, affine factor, and
support factor and verifies (6) with rational arithmetic.

| Row | Terms | Maximum degree | Exact B(W) |
|---|---:|---:|---|
| BR | 53 | 3 | -37950911685466190042500934416631506142591/11662707568605998536597274645650375000000 |
| TR | 523 | 4 | -5297248299315160331567336437204221151453181687842205946012551663/312505215841316169766153309635966642723258968099814500000000000 |
| ABCD | 523 | 4 | -1123334796076590686697578334380818560547908311993274500467/83702535485952382962346221827292716199239503000000000000 |
| CDEF | 601 | 4 | -5140299272970629142326693011492468017802887709209001756718109571/10625177338604749772049212527622865852590804915393693000000000000 |
| GHAB | 554 | 4 | -379922210919972297313692830555571639417538446900602326631639/185904352076928120027455865339658918931147512254500000000000 |

The BR and TR contradictions exclude the two endpoint alternatives
(5) and S_TR>9s. The other three contradictions, together with their
h>=e projection argument, prove all three remaining side caps have
area below 8s. Sections 2 and 3 handle every other short arc. The
eight-row catalogue in Section 1 is exhaustive, so in this entire N7
single-exterior placement the line OP must split the actual hull
vertices 3/5 or 4/4. These larger splits, and the placement with all
three free points in the contact heptagon, remain separate obligations.

### Row BR

The exact bound is `-37950911685466190042500934416631506142591/11662707568605998536597274645650375000000`.

| Index | Weight | Product |
|---:|---:|---|
| 1 | 92 | L0*L2 |
| 2 | 35 | L0*L10 |
| 3 | 33 | L0*L19 |
| 4 | 47 | L0*L23 |
| 5 | 265 | L2*L17 |
| 6 | 11 | L5*L21 |
| 7 | 1 | L6*L23 |
| 8 | 10 | L9*L9 |
| 9 | 134 | L9*L11 |
| 10 | 34 | L9*L14 |
| 11 | 4 | L9*L25 |
| 12 | 265 | L0*L2*L26 |
| 13 | 30 | L0*L23*L28 |
| 14 | 69 | L2*L19*L19 |
| 15 | 35 | L2*L19*L26 |
| 16 | 92 | L3*L9*L9 |
| 17 | 92 | L3*L9*L14 |
| 18 | 180 | L3*L9*L18 |
| 19 | 2 | L8*L10*L10 |
| 20 | 113 | L9*L10*L11 |
| 21 | 226 | L9*L11*L26 |
| 22 | 7 | L10*L10*L10 |
| 23 | 342 | L10*L10*L17 |
| 24 | 7 | L11*L11*L11 |
| 25 | 116 | L11*L11*L29 |
| 26 | 128 | L12*L15*L19 |
| 27 | 7 | L12*L19*L19 |
| 28 | 16 | L14*L14*L14 |
| 29 | 16 | L15*L15*L15 |
| 30 | 51 | ABC+ |
| 31 | 30 | ABC+*L28 |
| 32 | 334 | ABH+ |
| 33 | 5 | ABH+*L8 |
| 34 | 69 | ABH+*L19 |
| 35 | 301 | ABH+*L26 |
| 36 | 41 | AGH+ |
| 37 | 128 | AGH+*L15 |
| 38 | 7 | AGH+*L19 |
| 39 | 1 | BCD+ |
| 40 | 11 | CDE+ |
| 41 | 95 | EFG+ |
| 42 | 76 | EFG+*L10 |
| 43 | 265 | EFG+*L24 |
| 44 | 116 | EFH+*L12 |
| 45 | 124 | FGH+ |
| 46 | 150 | FGH+*L2 |
| 47 | 116 | FGH+*L23 |
| 48 | 116 | FGH+*L25 |
| 49 | 61 | BAD |
| 50 | 185 | BAD*L18 |
| 51 | 92 | BAD*L21 |
| 52 | 265 | BAD*L26 |
| 53 | 92 | BAD*L27 |

### Row TR

The exact bound is `-5297248299315160331567336437204221151453181687842205946012551663/312505215841316169766153309635966642723258968099814500000000000`.

| Index | Weight | Product |
|---:|---:|---|
| 1 | 3441 | L5*L6*L21 |
| 2 | 2339 | L0*L0*L0*L25 |
| 3 | 2379 | L0*L0*L1*L11 |
| 4 | 159 | L0*L0*L2*L9 |
| 5 | 2055 | L0*L0*L2*L15 |
| 6 | 11510 | L0*L0*L5*L11 |
| 7 | 1231 | L0*L0*L7*L25 |
| 8 | 40 | L0*L0*L9*L10 |
| 9 | 549 | L0*L0*L10*L25 |
| 10 | 1073 | L0*L0*L11*L12 |
| 11 | 3241 | L0*L0*L12*L15 |
| 12 | 2555 | L0*L0*L13*L14 |
| 13 | 5650 | L0*L0*L17*L23 |
| 14 | 2218 | L0*L0*L23*L25 |
| 15 | 6061 | L0*L0*L23*L26 |
| 16 | 40 | L0*L0*L24*L28 |
| 17 | 7951 | L0*L1*L5*L5 |
| 18 | 4940 | L0*L2*L2*L23 |
| 19 | 13763 | L0*L2*L2*L26 |
| 20 | 17273 | L0*L2*L5*L10 |
| 21 | 35547 | L0*L2*L5*L17 |
| 22 | 624 | L0*L2*L5*L21 |
| 23 | 2876 | L0*L2*L5*L28 |
| 24 | 6 | L0*L2*L6*L27 |
| 25 | 885 | L0*L2*L8*L25 |
| 26 | 49019 | L0*L2*L10*L10 |
| 27 | 16166 | L0*L2*L10*L15 |
| 28 | 104674 | L0*L2*L10*L17 |
| 29 | 4077 | L0*L2*L10*L23 |
| 30 | 38111 | L0*L2*L12*L13 |
| 31 | 1676 | L0*L2*L12*L20 |
| 32 | 1006 | L0*L2*L14*L17 |
| 33 | 13475 | L0*L2*L17*L17 |
| 34 | 81176 | L0*L2*L17*L23 |
| 35 | 173 | L0*L2*L21*L29 |
| 36 | 16853 | L0*L2*L23*L29 |
| 37 | 1026 | L0*L4*L6*L6 |
| 38 | 64 | L0*L4*L6*L19 |
| 39 | 5482 | L0*L5*L5*L19 |
| 40 | 15558 | L0*L5*L6*L12 |
| 41 | 1262 | L0*L5*L6*L23 |
| 42 | 40 | L0*L5*L8*L18 |
| 43 | 5658 | L0*L5*L9*L10 |
| 44 | 28779 | L0*L5*L10*L15 |
| 45 | 36056 | L0*L5*L12*L12 |
| 46 | 43965 | L0*L5*L12*L17 |
| 47 | 4721 | L0*L5*L12*L21 |
| 48 | 25105 | L0*L5*L12*L24 |
| 49 | 4588 | L0*L5*L12*L25 |
| 50 | 32591 | L0*L5*L13*L17 |
| 51 | 151 | L0*L5*L14*L25 |
| 52 | 159 | L0*L5*L15*L17 |
| 53 | 16162 | L0*L5*L15*L26 |
| 54 | 5691 | L0*L5*L16*L25 |
| 55 | 5650 | L0*L5*L17*L18 |
| 56 | 27429 | L0*L5*L17*L24 |
| 57 | 2379 | L0*L5*L19*L19 |
| 58 | 2120 | L0*L6*L8*L25 |
| 59 | 2110 | L0*L6*L9*L11 |
| 60 | 2462 | L0*L6*L10*L26 |
| 61 | 5237 | L0*L6*L12*L13 |
| 62 | 134 | L0*L6*L12*L17 |
| 63 | 71 | L0*L6*L16*L26 |
| 64 | 796 | L0*L6*L18*L23 |
| 65 | 6516 | L0*L6*L23*L26 |
| 66 | 8650 | L0*L9*L10*L12 |
| 67 | 549 | L0*L9*L10*L25 |
| 68 | 118 | L0*L9*L11*L17 |
| 69 | 741 | L0*L9*L12*L14 |
| 70 | 3022 | L0*L10*L10*L10 |
| 71 | 59738 | L0*L10*L10*L12 |
| 72 | 72297 | L0*L10*L10*L17 |
| 73 | 161397 | L0*L10*L12*L17 |
| 74 | 6729 | L0*L10*L12*L23 |
| 75 | 59283 | L0*L10*L12*L26 |
| 76 | 12675 | L0*L12*L12*L13 |
| 77 | 56865 | L0*L12*L12*L17 |
| 78 | 4562 | L0*L12*L12*L20 |
| 79 | 60925 | L0*L12*L12*L25 |
| 80 | 3907 | L0*L12*L15*L23 |
| 81 | 77893 | L0*L12*L17*L17 |
| 82 | 1060 | L0*L12*L21*L26 |
| 83 | 38347 | L0*L12*L23*L26 |
| 84 | 22712 | L0*L12*L25*L29 |
| 85 | 35373 | L0*L12*L29*L29 |
| 86 | 16986 | L0*L17*L17*L23 |
| 87 | 118 | L0*L17*L21*L26 |
| 88 | 97 | L0*L20*L23*L29 |
| 89 | 85 | L1*L2*L2*L21 |
| 90 | 534 | L1*L5*L5*L16 |
| 91 | 3448 | L1*L5*L6*L9 |
| 92 | 65 | L2*L2*L2*L8 |
| 93 | 50 | L2*L2*L2*L11 |
| 94 | 119 | L2*L2*L2*L15 |
| 95 | 511 | L2*L2*L2*L20 |
| 96 | 50 | L2*L2*L2*L24 |
| 97 | 50 | L2*L2*L3*L5 |
| 98 | 50 | L2*L2*L5*L22 |
| 99 | 4077 | L2*L2*L6*L11 |
| 100 | 1620 | L2*L2*L10*L17 |
| 101 | 8341 | L2*L2*L15*L17 |
| 102 | 10234 | L2*L2*L17*L29 |
| 103 | 576 | L2*L2*L21*L23 |
| 104 | 50 | L2*L2*L23*L23 |
| 105 | 4736 | L2*L2*L29*L29 |
| 106 | 1240 | L2*L5*L9*L11 |
| 107 | 3427 | L2*L5*L10*L17 |
| 108 | 54 | L2*L6*L6*L9 |
| 109 | 55656 | L2*L6*L10*L26 |
| 110 | 4002 | L2*L6*L12*L25 |
| 111 | 12055 | L2*L6*L17*L26 |
| 112 | 90150 | L2*L6*L26*L26 |
| 113 | 7 | L2*L9*L9*L12 |
| 114 | 290 | L2*L9*L11*L25 |
| 115 | 46 | L2*L9*L11*L29 |
| 116 | 187 | L2*L9*L12*L12 |
| 117 | 255 | L2*L9*L17*L19 |
| 118 | 14473 | L2*L10*L10*L17 |
| 119 | 30346 | L2*L10*L17*L17 |
| 120 | 1777 | L2*L12*L12*L20 |
| 121 | 47357 | L2*L12*L17*L19 |
| 122 | 1692 | L2*L12*L17*L21 |
| 123 | 5498 | L2*L17*L17*L23 |
| 124 | 13475 | L2*L17*L17*L29 |
| 125 | 5498 | L2*L25*L29*L29 |
| 126 | 106 | L4*L6*L6*L21 |
| 127 | 8469 | L4*L10*L10*L17 |
| 128 | 14722 | L4*L17*L17*L17 |
| 129 | 201 | L5*L5*L5*L21 |
| 130 | 2115 | L5*L5*L6*L6 |
| 131 | 202 | L5*L5*L6*L12 |
| 132 | 15548 | L5*L5*L6*L18 |
| 133 | 6838 | L5*L5*L6*L26 |
| 134 | 1151 | L5*L5*L8*L12 |
| 135 | 3364 | L5*L5*L12*L15 |
| 136 | 119 | L5*L5*L24*L28 |
| 137 | 61 | L5*L6*L6*L9 |
| 138 | 786 | L5*L6*L9*L26 |
| 139 | 23070 | L5*L6*L10*L10 |
| 140 | 38233 | L5*L6*L10*L18 |
| 141 | 157511 | L5*L6*L10*L26 |
| 142 | 124 | L5*L6*L11*L27 |
| 143 | 1781 | L5*L6*L12*L17 |
| 144 | 539 | L5*L6*L14*L21 |
| 145 | 552 | L5*L6*L16*L29 |
| 146 | 199 | L5*L6*L18*L29 |
| 147 | 586 | L5*L6*L19*L19 |
| 148 | 899 | L5*L6*L21*L21 |
| 149 | 35600 | L5*L6*L21*L26 |
| 150 | 6 | L5*L8*L12*L20 |
| 151 | 9465 | L5*L9*L11*L11 |
| 152 | 5388 | L5*L9*L12*L25 |
| 153 | 142 | L5*L9*L14*L15 |
| 154 | 1 | L5*L9*L15*L28 |
| 155 | 54 | L5*L9*L25*L25 |
| 156 | 10155 | L5*L11*L12*L21 |
| 157 | 14036 | L5*L11*L25*L29 |
| 158 | 4619 | L5*L12*L17*L17 |
| 159 | 3199 | L5*L12*L29*L29 |
| 160 | 1046 | L5*L14*L14*L16 |
| 161 | 3984 | L5*L14*L14*L26 |
| 162 | 574 | L5*L15*L19*L29 |
| 163 | 3295 | L5*L17*L17*L21 |
| 164 | 1 | L5*L19*L21*L21 |
| 165 | 27 | L6*L6*L8*L23 |
| 166 | 474 | L6*L6*L10*L13 |
| 167 | 86 | L6*L6*L11*L15 |
| 168 | 832 | L6*L6*L12*L18 |
| 169 | 1605 | L6*L6*L13*L18 |
| 170 | 1239 | L6*L6*L15*L23 |
| 171 | 93 | L6*L6*L22*L24 |
| 172 | 4494 | L6*L6*L23*L26 |
| 173 | 1988 | L6*L9*L12*L12 |
| 174 | 887 | L6*L9*L13*L23 |
| 175 | 102 | L6*L9*L21*L25 |
| 176 | 35 | L6*L9*L23*L27 |
| 177 | 6722 | L6*L10*L10*L13 |
| 178 | 27847 | L6*L10*L10*L17 |
| 179 | 552 | L6*L10*L17*L17 |
| 180 | 14890 | L6*L10*L17*L23 |
| 181 | 86 | L6*L10*L18*L20 |
| 182 | 6723 | L6*L10*L26*L26 |
| 183 | 36764 | L6*L11*L12*L26 |
| 184 | 3381 | L6*L11*L12*L29 |
| 185 | 26 | L6*L11*L21*L23 |
| 186 | 13445 | L6*L12*L12*L12 |
| 187 | 4155 | L6*L12*L12*L14 |
| 188 | 9000 | L6*L12*L13*L17 |
| 189 | 13836 | L6*L12*L17*L25 |
| 190 | 474 | L6*L12*L20*L25 |
| 191 | 76721 | L6*L12*L25*L26 |
| 192 | 728 | L6*L14*L23*L29 |
| 193 | 638 | L6*L17*L17*L25 |
| 194 | 14092 | L8*L10*L10*L10 |
| 195 | 859 | L8*L10*L17*L17 |
| 196 | 532 | L9*L11*L11*L25 |
| 197 | 11749 | L9*L11*L12*L25 |
| 198 | 1590 | L9*L12*L12*L23 |
| 199 | 859 | L9*L12*L29*L29 |
| 200 | 86 | L9*L25*L29*L29 |
| 201 | 6461 | L10*L10*L10*L20 |
| 202 | 9656 | L10*L10*L10*L25 |
| 203 | 30903 | L10*L10*L12*L17 |
| 204 | 81210 | L10*L10*L17*L17 |
| 205 | 10025 | L10*L10*L17*L19 |
| 206 | 25386 | L10*L10*L17*L20 |
| 207 | 8469 | L10*L10*L17*L23 |
| 208 | 24368 | L10*L10*L17*L26 |
| 209 | 6535 | L10*L12*L12*L17 |
| 210 | 243977 | L10*L12*L17*L17 |
| 211 | 24084 | L10*L17*L17*L17 |
| 212 | 5986 | L10*L17*L17*L23 |
| 213 | 9656 | L11*L11*L11*L25 |
| 214 | 327 | L11*L11*L21*L29 |
| 215 | 43517 | L11*L14*L14*L29 |
| 216 | 8547 | L11*L25*L25*L29 |
| 217 | 2651 | L11*L29*L29*L29 |
| 218 | 7305 | L12*L12*L12*L15 |
| 219 | 284025 | L12*L12*L15*L17 |
| 220 | 4124 | L12*L12*L20*L29 |
| 221 | 36000 | L12*L15*L15*L17 |
| 222 | 97359 | L12*L15*L17*L17 |
| 223 | 43030 | L12*L17*L29*L29 |
| 224 | 927 | L12*L21*L25*L29 |
| 225 | 7818 | L12*L25*L29*L29 |
| 226 | 43030 | L12*L29*L29*L29 |
| 227 | 32821 | L13*L14*L14*L14 |
| 228 | 7476 | L14*L14*L14*L14 |
| 229 | 35704 | L14*L14*L14*L17 |
| 230 | 2015 | L14*L14*L14*L23 |
| 231 | 24472 | L14*L14*L14*L26 |
| 232 | 5009 | L14*L14*L24*L25 |
| 233 | 1111 | L14*L14*L25*L26 |
| 234 | 1620 | L14*L14*L25*L29 |
| 235 | 7476 | L14*L17*L17*L17 |
| 236 | 7476 | L14*L29*L29*L29 |
| 237 | 13276 | L15*L15*L15*L17 |
| 238 | 22429 | L15*L15*L17*L17 |
| 239 | 14722 | L17*L17*L17*L23 |
| 240 | 1247 | L17*L17*L17*L24 |
| 241 | 262 | L21*L25*L25*L25 |
| 242 | 796 | ABC+*L0*L7 |
| 243 | 12117 | ABC+*L1*L23 |
| 244 | 16695 | ABC+*L2*L2 |
| 245 | 89240 | ABC+*L2*L17 |
| 246 | 185 | ABC+*L2*L21 |
| 247 | 11873 | ABC+*L2*L24 |
| 248 | 34020 | ABC+*L3*L17 |
| 249 | 119 | ABC+*L4*L5 |
| 250 | 997 | ABC+*L4*L21 |
| 251 | 2607 | ABC+*L4*L26 |
| 252 | 1771 | ABC+*L4*L28 |
| 253 | 774 | ABC+*L5*L8 |
| 254 | 119 | ABC+*L5*L23 |
| 255 | 199 | ABC+*L8*L17 |
| 256 | 16220 | ABC+*L10*L10 |
| 257 | 16055 | ABC+*L10*L15 |
| 258 | 4347 | ABC+*L10*L23 |
| 259 | 8440 | ABC+*L10*L26 |
| 260 | 1128 | ABC+*L11*L11 |
| 261 | 604 | ABC+*L12*L15 |
| 262 | 54674 | ABC+*L12*L17 |
| 263 | 4190 | ABC+*L12*L20 |
| 264 | 12143 | ABC+*L12*L22 |
| 265 | 62600 | ABC+*L12*L26 |
| 266 | 1890 | ABC+*L12*L27 |
| 267 | 6065 | ABC+*L14*L17 |
| 268 | 6198 | ABC+*L14*L25 |
| 269 | 2965 | ABC+*L15*L19 |
| 270 | 17280 | ABC+*L15*L26 |
| 271 | 16986 | ABC+*L17*L17 |
| 272 | 25531 | ABC+*L17*L26 |
| 273 | 40 | ABC+*L18*L28 |
| 274 | 5659 | ABC+*L19*L23 |
| 275 | 11072 | ABC+*L19*L26 |
| 276 | 123 | ABC+*L20*L29 |
| 277 | 6225 | ABC+*L25*L29 |
| 278 | 591 | ABD+*L0*L17 |
| 279 | 3699 | ABH+*L0*L5 |
| 280 | 7441 | ABH+*L0*L13 |
| 281 | 950 | ABH+*L0*L14 |
| 282 | 9401 | ABH+*L2*L12 |
| 283 | 9102 | ABH+*L2*L17 |
| 284 | 6458 | ABH+*L2*L19 |
| 285 | 1569 | ABH+*L2*L24 |
| 286 | 108 | ABH+*L4*L7 |
| 287 | 47371 | ABH+*L5*L12 |
| 288 | 9876 | ABH+*L5*L17 |
| 289 | 2352 | ABH+*L5*L19 |
| 290 | 174 | ABH+*L6*L8 |
| 291 | 17162 | ABH+*L6*L23 |
| 292 | 17431 | ABH+*L6*L24 |
| 293 | 24581 | ABH+*L6*L26 |
| 294 | 6 | ABH+*L7*L21 |
| 295 | 159 | ABH+*L8*L18 |
| 296 | 173 | ABH+*L8*L27 |
| 297 | 272 | ABH+*L9*L29 |
| 298 | 12646 | ABH+*L10*L10 |
| 299 | 45535 | ABH+*L10*L12 |
| 300 | 17823 | ABH+*L10*L17 |
| 301 | 13262 | ABH+*L10*L19 |
| 302 | 8608 | ABH+*L10*L26 |
| 303 | 3004 | ABH+*L10*L27 |
| 304 | 27208 | ABH+*L12*L17 |
| 305 | 21007 | ABH+*L12*L24 |
| 306 | 604 | ABH+*L14*L21 |
| 307 | 1721 | ABH+*L14*L23 |
| 308 | 2015 | ABH+*L14*L29 |
| 309 | 4933 | ABH+*L15*L26 |
| 310 | 7074 | ABH+*L16*L29 |
| 311 | 6401 | ABH+*L17*L17 |
| 312 | 5059 | ABH+*L17*L19 |
| 313 | 526 | ABH+*L17*L21 |
| 314 | 6553 | ABH+*L17*L26 |
| 315 | 14220 | ABH+*L21*L26 |
| 316 | 3427 | ABH+*L23*L26 |
| 317 | 1688 | ABH+*L24*L24 |
| 318 | 1119 | ABH+*L25*L29 |
| 319 | 12452 | ABH+*L26*L28 |
| 320 | 12 | ACD+*L14*L14 |
| 321 | 12058 | AGH+*L0*L10 |
| 322 | 5796 | AGH+*L0*L15 |
| 323 | 13242 | AGH+*L2*L13 |
| 324 | 19468 | AGH+*L2*L22 |
| 325 | 37972 | AGH+*L2*L25 |
| 326 | 27846 | AGH+*L3*L24 |
| 327 | 87 | AGH+*L4*L5 |
| 328 | 1824 | AGH+*L4*L20 |
| 329 | 7431 | AGH+*L5*L17 |
| 330 | 946 | AGH+*L6*L17 |
| 331 | 10023 | AGH+*L6*L22 |
| 332 | 18671 | AGH+*L6*L25 |
| 333 | 687 | AGH+*L7*L9 |
| 334 | 773 | AGH+*L7*L29 |
| 335 | 5667 | AGH+*L9*L26 |
| 336 | 66717 | AGH+*L10*L17 |
| 337 | 132883 | AGH+*L10*L26 |
| 338 | 968 | AGH+*L11*L21 |
| 339 | 1243 | AGH+*L11*L24 |
| 340 | 27585 | AGH+*L11*L29 |
| 341 | 7380 | AGH+*L12*L15 |
| 342 | 211737 | AGH+*L12*L17 |
| 343 | 3059 | AGH+*L12*L22 |
| 344 | 12675 | AGH+*L12*L26 |
| 345 | 27419 | AGH+*L13*L27 |
| 346 | 69231 | AGH+*L14*L17 |
| 347 | 28063 | AGH+*L15*L15 |
| 348 | 9627 | AGH+*L15*L22 |
| 349 | 2487 | AGH+*L16*L23 |
| 350 | 113266 | AGH+*L17*L17 |
| 351 | 1633 | AGH+*L17*L20 |
| 352 | 154872 | AGH+*L17*L26 |
| 353 | 773 | AGH+*L20*L27 |
| 354 | 5034 | AGH+*L22*L22 |
| 355 | 2442 | AGH+*L22*L26 |
| 356 | 5011 | AGH+*L25*L28 |
| 357 | 3731 | BCD+*L1*L26 |
| 358 | 4077 | BCD+*L2*L11 |
| 359 | 65 | BCD+*L2*L23 |
| 360 | 130 | BCD+*L3*L5 |
| 361 | 269 | BCD+*L3*L14 |
| 362 | 5045 | BCD+*L5*L10 |
| 363 | 4251 | BCD+*L5*L14 |
| 364 | 13288 | BCD+*L5*L18 |
| 365 | 54 | BCD+*L5*L25 |
| 366 | 1272 | BCD+*L6*L15 |
| 367 | 28 | BCD+*L6*L21 |
| 368 | 93 | BCD+*L7*L24 |
| 369 | 4248 | BCD+*L8*L13 |
| 370 | 7 | BCD+*L8*L21 |
| 371 | 5135 | BCD+*L9*L13 |
| 372 | 1841 | BCD+*L9*L26 |
| 373 | 71292 | BCD+*L10*L26 |
| 374 | 1777 | BCD+*L11*L12 |
| 375 | 4404 | BCD+*L12*L14 |
| 376 | 4002 | BCD+*L12*L25 |
| 377 | 26 | BCD+*L13*L21 |
| 378 | 78 | BCD+*L14*L16 |
| 379 | 124 | BCD+*L14*L29 |
| 380 | 10362 | BCD+*L17*L26 |
| 381 | 42981 | BCD+*L18*L26 |
| 382 | 4468 | BCD+*L21*L26 |
| 383 | 28 | BCD+*L21*L27 |
| 384 | 74514 | BCD+*L26*L26 |
| 385 | 134 | BFG+*L0*L6 |
| 386 | 6201 | CDE+*L0*L9 |
| 387 | 14479 | CDE+*L0*L10 |
| 388 | 284 | CDE+*L2*L22 |
| 389 | 403 | CDE+*L3*L22 |
| 390 | 3279 | CDE+*L4*L5 |
| 391 | 124 | CDE+*L4*L9 |
| 392 | 12020 | CDE+*L4*L10 |
| 393 | 31062 | CDE+*L6*L10 |
| 394 | 33203 | CDE+*L6*L13 |
| 395 | 545 | CDE+*L7*L19 |
| 396 | 5407 | CDE+*L9*L9 |
| 397 | 5418 | CDE+*L9*L28 |
| 398 | 14181 | CDE+*L10*L10 |
| 399 | 3890 | CDE+*L10*L19 |
| 400 | 7952 | CDE+*L10*L26 |
| 401 | 46 | CDE+*L11*L17 |
| 402 | 4537 | CDE+*L11*L20 |
| 403 | 9729 | CDE+*L12*L14 |
| 404 | 1923 | CDE+*L12*L27 |
| 405 | 765 | CDE+*L13*L17 |
| 406 | 254 | CDE+*L14*L15 |
| 407 | 567 | CDE+*L16*L16 |
| 408 | 198 | CDE+*L16*L18 |
| 409 | 2642 | CDE+*L17*L17 |
| 410 | 782 | CDE+*L19*L20 |
| 411 | 25 | CDE+*L19*L29 |
| 412 | 11 | CDE+*L20*L20 |
| 413 | 124 | CDE+*L20*L25 |
| 414 | 782 | CDE+*L20*L27 |
| 415 | 1 | CDE+*L21*L26 |
| 416 | 6539 | CDE+*L23*L26 |
| 417 | 457 | CDE+*L24*L24 |
| 418 | 6539 | CDE+*L24*L26 |
| 419 | 3272 | CDE+*L25*L25 |
| 420 | 1590 | CDE+*L26*L26 |
| 421 | 188 | CDF+*L0*L6 |
| 422 | 114 | CDH+*L0*L6 |
| 423 | 124 | CEF+*L5*L6 |
| 424 | 4328 | EFG+*L0*L2 |
| 425 | 8447 | EFG+*L2*L6 |
| 426 | 7667 | EFG+*L5*L6 |
| 427 | 2076 | EFG+*L5*L19 |
| 428 | 86 | EFG+*L6*L18 |
| 429 | 2462 | EFG+*L6*L26 |
| 430 | 24368 | EFG+*L10*L10 |
| 431 | 16572 | EFG+*L10*L17 |
| 432 | 8569 | EFG+*L12*L15 |
| 433 | 4124 | EFG+*L12*L17 |
| 434 | 83 | EFG+*L15*L23 |
| 435 | 859 | EFG+*L17*L17 |
| 436 | 1692 | EFG+*L17*L23 |
| 437 | 7 | EFG+*L21*L23 |
| 438 | 1515 | EGH+*L0*L29 |
| 439 | 43095 | FGH+*L0*L2 |
| 440 | 21835 | FGH+*L0*L14 |
| 441 | 45137 | FGH+*L0*L18 |
| 442 | 711 | FGH+*L1*L5 |
| 443 | 26113 | FGH+*L1*L12 |
| 444 | 23302 | FGH+*L1*L15 |
| 445 | 1620 | FGH+*L2*L2 |
| 446 | 20368 | FGH+*L2*L17 |
| 447 | 19128 | FGH+*L2*L26 |
| 448 | 8915 | FGH+*L4*L5 |
| 449 | 1196 | FGH+*L4*L7 |
| 450 | 9303 | FGH+*L4*L10 |
| 451 | 51125 | FGH+*L4*L12 |
| 452 | 388 | FGH+*L4*L23 |
| 453 | 4480 | FGH+*L5*L16 |
| 454 | 13999 | FGH+*L6*L13 |
| 455 | 6435 | FGH+*L8*L12 |
| 456 | 2214 | FGH+*L9*L10 |
| 457 | 14048 | FGH+*L9*L13 |
| 458 | 86 | FGH+*L9*L15 |
| 459 | 1731 | FGH+*L9*L23 |
| 460 | 121432 | FGH+*L10*L12 |
| 461 | 2541 | FGH+*L10*L19 |
| 462 | 8547 | FGH+*L11*L25 |
| 463 | 19979 | FGH+*L12*L12 |
| 464 | 7523 | FGH+*L12*L14 |
| 465 | 219924 | FGH+*L12*L17 |
| 466 | 2058 | FGH+*L12*L21 |
| 467 | 32986 | FGH+*L12*L23 |
| 468 | 18755 | FGH+*L13*L25 |
| 469 | 3330 | FGH+*L13*L29 |
| 470 | 73416 | FGH+*L14*L16 |
| 471 | 4313 | FGH+*L15*L23 |
| 472 | 86 | FGH+*L16*L21 |
| 473 | 8775 | FGH+*L17*L23 |
| 474 | 45137 | FGH+*L18*L18 |
| 475 | 3814 | FGH+*L22*L25 |
| 476 | 10247 | FGH+*L22*L27 |
| 477 | 11354 | FGH+*L26*L28 |
| 478 | 3906 | FGH+*L26*L29 |
| 479 | 27123 | FGH+*L29*L29 |
| 480 | 1120 | EP*L0*L6 |
| 481 | 22592 | EP*L10*L17 |
| 482 | 3061 | EL*L14*L14 |
| 483 | 11249 | P_AHGFE*L0*L5 |
| 484 | 111 | P_AHGFE*L0*L7 |
| 485 | 326 | P_AHGFE*L2*L5 |
| 486 | 7 | P_AHGFE*L2*L8 |
| 487 | 290 | P_AHGFE*L2*L25 |
| 488 | 1858 | P_AHGFE*L5*L5 |
| 489 | 11912 | P_AHGFE*L5*L10 |
| 490 | 5205 | P_AHGFE*L5*L21 |
| 491 | 13876 | P_AHGFE*L5*L26 |
| 492 | 1913 | P_AHGFE*L6*L11 |
| 493 | 102 | P_AHGFE*L6*L21 |
| 494 | 3022 | P_AHGFE*L10*L11 |
| 495 | 12619 | P_AHGFE*L10*L12 |
| 496 | 8813 | P_AHGFE*L11*L14 |
| 497 | 549 | P_AHGFE*L21*L25 |
| 498 | 3905 | P_DEFGH*L5*L5 |
| 499 | 1753 | P_HABCD*L0*L0 |
| 500 | 1991 | P_HABCD*L5*L6 |
| 501 | 7 | P_ABCDE*L6*L9 |
| 502 | 68543 | SUP*L17 |
| 503 | 13242 | BAD*L2 |
| 504 | 18970 | BAD*L9 |
| 505 | 89891 | BAD*L10 |
| 506 | 57207 | BAD*L12 |
| 507 | 4876 | BAD*L16 |
| 508 | 26707 | BAD*L18 |
| 509 | 617 | BAD*L23 |
| 510 | 43762 | BAD*L26 |
| 511 | 14520 | BAD*L28 |
| 512 | 11208 | ABC+*EP |
| 513 | 3169 | ABC+*P_AHGFE |
| 514 | 269 | ABC+*P_BCDEF |
| 515 | 1282 | ABF+*CDE+ |
| 516 | 46 | AGH+*BEG+ |
| 517 | 22991 | AGH+*DFG+ |
| 518 | 18141 | AGH+*EP |
| 519 | 20041 | AGH+*P_DEFGH |
| 520 | 2119 | BCD+*EFG+ |
| 521 | 12425 | CDH+*FGH+ |
| 522 | 327 | DFH+*FGH+ |
| 523 | 549 | P_AHGFE*P_AHGFE |

### Row ABCD

The exact bound is `-1123334796076590686697578334380818560547908311993274500467/83702535485952382962346221827292716199239503000000000000`.

| Index | Weight | Product |
|---:|---:|---|
| 1 | 3493 | L25*L25 |
| 2 | 2705 | L2*L17*L23 |
| 3 | 4636 | L2*L25*L27 |
| 4 | 377 | L3*L25*L25 |
| 5 | 793 | L4*L17*L17 |
| 6 | 33 | L9*L17*L17 |
| 7 | 4 | L15*L17*L17 |
| 8 | 542 | L18*L18*L25 |
| 9 | 553 | L22*L22*L25 |
| 10 | 150 | L22*L25*L26 |
| 11 | 278 | L25*L26*L27 |
| 12 | 4088 | L25*L27*L28 |
| 13 | 4425 | L25*L27*L30 |
| 14 | 9661 | L0*L0*L2*L2 |
| 15 | 1667 | L0*L0*L2*L30 |
| 16 | 5385 | L0*L2*L2*L20 |
| 17 | 15367 | L0*L2*L5*L15 |
| 18 | 3308 | L0*L2*L5*L30 |
| 19 | 20940 | L0*L2*L11*L30 |
| 20 | 1265 | L0*L2*L12*L20 |
| 21 | 35 | L0*L2*L15*L17 |
| 22 | 24662 | L0*L2*L15*L23 |
| 23 | 203 | L0*L2*L17*L30 |
| 24 | 6826 | L0*L2*L19*L30 |
| 25 | 16968 | L0*L2*L20*L20 |
| 26 | 8341 | L0*L2*L20*L30 |
| 27 | 7205 | L0*L2*L23*L29 |
| 28 | 7555 | L0*L2*L30*L30 |
| 29 | 56 | L0*L5*L12*L12 |
| 30 | 134 | L0*L5*L17*L18 |
| 31 | 7524 | L0*L5*L17*L23 |
| 32 | 4342 | L0*L5*L23*L30 |
| 33 | 1169 | L0*L11*L23*L30 |
| 34 | 1175 | L0*L12*L12*L23 |
| 35 | 417 | L0*L12*L15*L23 |
| 36 | 1320 | L0*L23*L23*L30 |
| 37 | 973 | L0*L23*L30*L30 |
| 38 | 824 | L0*L25*L26*L27 |
| 39 | 2653 | L1*L1*L1*L11 |
| 40 | 2223 | L1*L1*L5*L6 |
| 41 | 52431 | L1*L1*L5*L21 |
| 42 | 1999 | L1*L1*L6*L11 |
| 43 | 11506 | L1*L1*L11*L21 |
| 44 | 2186 | L1*L1*L24*L25 |
| 45 | 465 | L1*L2*L2*L25 |
| 46 | 27044 | L1*L5*L5*L6 |
| 47 | 6003 | L1*L5*L5*L21 |
| 48 | 12 | L1*L5*L9*L15 |
| 49 | 738 | L1*L5*L15*L15 |
| 50 | 234 | L1*L5*L15*L29 |
| 51 | 90 | L1*L7*L25*L27 |
| 52 | 249 | L1*L9*L11*L15 |
| 53 | 130 | L1*L9*L23*L25 |
| 54 | 58 | L1*L17*L20*L24 |
| 55 | 240 | L1*L17*L22*L27 |
| 56 | 116 | L1*L17*L25*L25 |
| 57 | 155 | L2*L2*L7*L30 |
| 58 | 57 | L2*L2*L10*L17 |
| 59 | 699 | L2*L2*L15*L20 |
| 60 | 641 | L2*L2*L17*L26 |
| 61 | 2289 | L2*L4*L20*L25 |
| 62 | 2785 | L2*L4*L20*L30 |
| 63 | 1410 | L2*L5*L5*L6 |
| 64 | 41 | L2*L5*L5*L15 |
| 65 | 1385 | L2*L5*L5*L21 |
| 66 | 46 | L2*L5*L11*L15 |
| 67 | 2417 | L2*L5*L12*L15 |
| 68 | 830 | L2*L5*L15*L23 |
| 69 | 1456 | L2*L5*L19*L30 |
| 70 | 592 | L2*L5*L26*L30 |
| 71 | 2231 | L2*L6*L15*L15 |
| 72 | 14294 | L2*L10*L12*L30 |
| 73 | 2688 | L2*L10*L15*L17 |
| 74 | 37216 | L2*L10*L20*L30 |
| 75 | 253 | L2*L10*L27*L30 |
| 76 | 106 | L2*L11*L11*L15 |
| 77 | 293 | L2*L12*L17*L28 |
| 78 | 1203 | L2*L12*L26*L30 |
| 79 | 333 | L2*L15*L17*L19 |
| 80 | 655 | L2*L15*L17*L21 |
| 81 | 2722 | L2*L15*L17*L26 |
| 82 | 7369 | L2*L15*L20*L20 |
| 83 | 431 | L2*L17*L19*L23 |
| 84 | 538 | L2*L17*L19*L30 |
| 85 | 9909 | L2*L19*L20*L25 |
| 86 | 7093 | L2*L19*L20*L30 |
| 87 | 3679 | L2*L19*L25*L27 |
| 88 | 155 | L2*L20*L22*L30 |
| 89 | 230 | L2*L21*L25*L27 |
| 90 | 128 | L2*L23*L26*L30 |
| 91 | 2471 | L3*L7*L17*L25 |
| 92 | 71 | L3*L17*L18*L27 |
| 93 | 1978 | L3*L18*L18*L25 |
| 94 | 41 | L3*L19*L25*L25 |
| 95 | 6838 | L4*L4*L20*L25 |
| 96 | 4757 | L4*L10*L20*L25 |
| 97 | 6 | L4*L17*L30*L30 |
| 98 | 7388 | L4*L19*L20*L25 |
| 99 | 5457 | L4*L20*L30*L30 |
| 100 | 862 | L4*L21*L25*L27 |
| 101 | 44 | L4*L27*L30*L30 |
| 102 | 7665 | L5*L5*L6*L6 |
| 103 | 8984 | L5*L5*L6*L21 |
| 104 | 607 | L5*L5*L6*L23 |
| 105 | 2475 | L5*L5*L9*L12 |
| 106 | 1457 | L5*L5*L11*L21 |
| 107 | 6297 | L5*L6*L11*L29 |
| 108 | 124 | L5*L9*L9*L30 |
| 109 | 20362 | L5*L9*L11*L12 |
| 110 | 1339 | L5*L9*L12*L12 |
| 111 | 6688 | L5*L9*L12*L30 |
| 112 | 3211 | L5*L11*L11*L21 |
| 113 | 15484 | L5*L11*L11*L29 |
| 114 | 8721 | L5*L11*L23*L29 |
| 115 | 973 | L5*L11*L29*L29 |
| 116 | 7237 | L5*L12*L15*L23 |
| 117 | 3695 | L5*L12*L15*L29 |
| 118 | 405 | L5*L15*L23*L23 |
| 119 | 2706 | L5*L18*L18*L25 |
| 120 | 1162 | L5*L25*L27*L28 |
| 121 | 754 | L6*L6*L25*L27 |
| 122 | 1666 | L6*L11*L11*L29 |
| 123 | 638 | L6*L12*L12*L17 |
| 124 | 98 | L6*L17*L17*L25 |
| 125 | 1769 | L6*L19*L25*L27 |
| 126 | 230 | L7*L7*L23*L25 |
| 127 | 3 | L7*L8*L17*L25 |
| 128 | 912 | L7*L17*L20*L25 |
| 129 | 9842 | L7*L20*L20*L25 |
| 130 | 1043 | L7*L20*L25*L28 |
| 131 | 8284 | L7*L20*L25*L30 |
| 132 | 4734 | L7*L23*L25*L29 |
| 133 | 98 | L7*L25*L29*L29 |
| 134 | 170 | L8*L9*L25*L30 |
| 135 | 3470 | L8*L12*L17*L23 |
| 136 | 2048 | L8*L13*L25*L27 |
| 137 | 6435 | L8*L25*L27*L30 |
| 138 | 894 | L9*L9*L9*L25 |
| 139 | 35 | L9*L9*L17*L23 |
| 140 | 1281 | L9*L11*L11*L12 |
| 141 | 1773 | L9*L11*L11*L17 |
| 142 | 751 | L9*L11*L11*L23 |
| 143 | 1351 | L9*L11*L12*L12 |
| 144 | 15575 | L9*L11*L12*L23 |
| 145 | 28527 | L9*L11*L12*L29 |
| 146 | 382 | L9*L11*L15*L15 |
| 147 | 10933 | L9*L11*L25*L30 |
| 148 | 46688 | L9*L12*L12*L15 |
| 149 | 30429 | L9*L12*L12*L23 |
| 150 | 16588 | L9*L12*L12*L29 |
| 151 | 193 | L9*L12*L15*L15 |
| 152 | 283 | L9*L12*L29*L29 |
| 153 | 5705 | L9*L23*L25*L29 |
| 154 | 151 | L9*L25*L28*L28 |
| 155 | 145 | L10*L10*L20*L25 |
| 156 | 27366 | L10*L10*L20*L30 |
| 157 | 518 | L10*L11*L11*L17 |
| 158 | 3892 | L10*L11*L17*L30 |
| 159 | 427 | L10*L12*L17*L17 |
| 160 | 15664 | L10*L12*L30*L30 |
| 161 | 1133 | L10*L17*L18*L18 |
| 162 | 195 | L10*L17*L23*L30 |
| 163 | 64 | L10*L17*L30*L30 |
| 164 | 14106 | L10*L19*L20*L25 |
| 165 | 2219 | L10*L19*L25*L27 |
| 166 | 16791 | L10*L20*L20*L20 |
| 167 | 11517 | L10*L20*L20*L30 |
| 168 | 6570 | L10*L20*L30*L30 |
| 169 | 275 | L10*L30*L30*L30 |
| 170 | 198 | L11*L11*L11*L21 |
| 171 | 4358 | L11*L11*L11*L29 |
| 172 | 2417 | L11*L11*L12*L29 |
| 173 | 18749 | L11*L11*L23*L29 |
| 174 | 25296 | L11*L11*L29*L29 |
| 175 | 425 | L11*L12*L12*L15 |
| 176 | 107 | L11*L12*L12*L29 |
| 177 | 4780 | L11*L12*L15*L23 |
| 178 | 40780 | L11*L12*L15*L29 |
| 179 | 41681 | L11*L12*L23*L29 |
| 180 | 20911 | L11*L12*L29*L29 |
| 181 | 3076 | L11*L15*L15*L25 |
| 182 | 2114 | L11*L17*L17*L26 |
| 183 | 7860 | L11*L17*L23*L27 |
| 184 | 4382 | L11*L23*L23*L29 |
| 185 | 7318 | L11*L23*L29*L29 |
| 186 | 1577 | L11*L25*L27*L28 |
| 187 | 317 | L11*L29*L29*L29 |
| 188 | 107 | L12*L12*L12*L15 |
| 189 | 11 | L12*L12*L12*L19 |
| 190 | 6300 | L12*L12*L15*L15 |
| 191 | 11144 | L12*L12*L15*L23 |
| 192 | 610 | L12*L12*L19*L29 |
| 193 | 706 | L12*L12*L22*L30 |
| 194 | 381 | L12*L12*L29*L29 |
| 195 | 3216 | L12*L14*L25*L30 |
| 196 | 2084 | L12*L15*L15*L15 |
| 197 | 9556 | L12*L15*L15*L19 |
| 198 | 1985 | L12*L15*L15*L21 |
| 199 | 5617 | L12*L15*L23*L23 |
| 200 | 33 | L12*L15*L29*L29 |
| 201 | 381 | L12*L17*L17*L26 |
| 202 | 407 | L12*L17*L19*L23 |
| 203 | 656 | L12*L17*L23*L23 |
| 204 | 1073 | L12*L19*L27*L30 |
| 205 | 953 | L12*L20*L20*L20 |
| 206 | 2132 | L12*L22*L30*L30 |
| 207 | 5265 | L12*L23*L27*L30 |
| 208 | 2784 | L12*L24*L29*L30 |
| 209 | 431 | L15*L17*L22*L25 |
| 210 | 1408 | L15*L19*L25*L25 |
| 211 | 304 | L15*L22*L22*L25 |
| 212 | 52 | L15*L22*L30*L30 |
| 213 | 134 | L16*L18*L18*L25 |
| 214 | 431 | L17*L18*L22*L22 |
| 215 | 128 | L17*L18*L22*L27 |
| 216 | 269 | L17*L18*L24*L27 |
| 217 | 12 | L17*L20*L25*L27 |
| 218 | 14 | L17*L22*L22*L26 |
| 219 | 641 | L17*L22*L25*L26 |
| 220 | 5705 | L17*L22*L25*L28 |
| 221 | 641 | L17*L24*L25*L26 |
| 222 | 35 | L17*L24*L30*L30 |
| 223 | 1951 | L17*L25*L26*L30 |
| 224 | 638 | L17*L26*L26*L27 |
| 225 | 978 | L19*L19*L20*L25 |
| 226 | 3785 | L19*L20*L25*L26 |
| 227 | 921 | L20*L20*L26*L30 |
| 228 | 53 | L20*L25*L26*L26 |
| 229 | 155 | L22*L22*L30*L30 |
| 230 | 874 | L22*L24*L25*L30 |
| 231 | 113 | L22*L25*L28*L30 |
| 232 | 2128 | L23*L25*L27*L28 |
| 233 | 1142 | L23*L25*L27*L30 |
| 234 | 8 | L25*L27*L30*L30 |
| 235 | 962 | ABC+*L0*L25 |
| 236 | 604 | ABC+*L2*L25 |
| 237 | 1743 | ABC+*L19*L25 |
| 238 | 304 | ABF+*L25*L27 |
| 239 | 2500 | ABH+*L0 |
| 240 | 4077 | ABH+*L5 |
| 241 | 5661 | ABH+*L12 |
| 242 | 6700 | ABH+*L17 |
| 243 | 2824 | ABH+*L19 |
| 244 | 1352 | ABH+*L23 |
| 245 | 16871 | ABH+*L0*L5 |
| 246 | 5693 | ABH+*L0*L15 |
| 247 | 13284 | ABH+*L0*L23 |
| 248 | 2374 | ABH+*L0*L28 |
| 249 | 1359 | ABH+*L0*L30 |
| 250 | 171 | ABH+*L2*L11 |
| 251 | 699 | ABH+*L3*L6 |
| 252 | 294 | ABH+*L3*L10 |
| 253 | 1791 | ABH+*L3*L12 |
| 254 | 1282 | ABH+*L5*L6 |
| 255 | 254 | ABH+*L5*L12 |
| 256 | 8411 | ABH+*L5*L19 |
| 257 | 906 | ABH+*L5*L21 |
| 258 | 57 | ABH+*L5*L23 |
| 259 | 2056 | ABH+*L6*L11 |
| 260 | 2231 | ABH+*L8*L19 |
| 261 | 7041 | ABH+*L8*L20 |
| 262 | 41 | ABH+*L10*L11 |
| 263 | 820 | ABH+*L11*L12 |
| 264 | 8218 | ABH+*L11*L21 |
| 265 | 35 | ABH+*L12*L13 |
| 266 | 13089 | ABH+*L12*L19 |
| 267 | 8547 | ABH+*L12*L20 |
| 268 | 2616 | ABH+*L12*L30 |
| 269 | 368 | ABH+*L17*L19 |
| 270 | 187 | ABH+*L17*L21 |
| 271 | 4811 | ABH+*L19*L20 |
| 272 | 155 | ABH+*L19*L23 |
| 273 | 7369 | ABH+*L20*L20 |
| 274 | 52 | ABH+*L27*L30 |
| 275 | 1272 | ACF+*L17*L25 |
| 276 | 9014 | AGH+*L1 |
| 277 | 966 | AGH+*L1*L9 |
| 278 | 5206 | AGH+*L1*L11 |
| 279 | 2492 | AGH+*L1*L15 |
| 280 | 2492 | AGH+*L1*L21 |
| 281 | 41 | AGH+*L2*L11 |
| 282 | 6796 | AGH+*L3*L9 |
| 283 | 25417 | AGH+*L3*L15 |
| 284 | 833 | AGH+*L3*L29 |
| 285 | 21 | AGH+*L5*L12 |
| 286 | 11136 | AGH+*L5*L21 |
| 287 | 532 | AGH+*L7*L30 |
| 288 | 419 | AGH+*L9*L11 |
| 289 | 824 | AGH+*L9*L15 |
| 290 | 283 | AGH+*L9*L17 |
| 291 | 506 | AGH+*L9*L30 |
| 292 | 2313 | AGH+*L10*L11 |
| 293 | 13120 | AGH+*L11*L21 |
| 294 | 11 | AGH+*L12*L12 |
| 295 | 3 | AGH+*L12*L19 |
| 296 | 1210 | AGH+*L12*L23 |
| 297 | 610 | AGH+*L12*L29 |
| 298 | 9484 | AGH+*L15*L15 |
| 299 | 460 | AGH+*L15*L21 |
| 300 | 2313 | AGH+*L22*L24 |
| 301 | 407 | AGH+*L22*L29 |
| 302 | 997 | BCH+*L25*L26 |
| 303 | 123 | BEF+*L25*L25 |
| 304 | 12356 | CDE+ |
| 305 | 3887 | CDE+*L2 |
| 306 | 11415 | CDE+*L28 |
| 307 | 8146 | CDE+*L30 |
| 308 | 51135 | CDE+*L1*L1 |
| 309 | 390 | CDE+*L1*L21 |
| 310 | 1020 | CDE+*L2*L6 |
| 311 | 3879 | CDE+*L2*L8 |
| 312 | 3924 | CDE+*L3*L10 |
| 313 | 6838 | CDE+*L4*L4 |
| 314 | 18811 | CDE+*L4*L19 |
| 315 | 1825 | CDE+*L5*L12 |
| 316 | 11608 | CDE+*L6*L10 |
| 317 | 1638 | CDE+*L6*L12 |
| 318 | 3666 | CDE+*L6*L23 |
| 319 | 1668 | CDE+*L8*L19 |
| 320 | 2907 | CDE+*L8*L23 |
| 321 | 2516 | CDE+*L8*L30 |
| 322 | 1348 | CDE+*L10*L11 |
| 323 | 3394 | CDE+*L10*L13 |
| 324 | 522 | CDE+*L12*L23 |
| 325 | 1010 | CDE+*L12*L28 |
| 326 | 1126 | CDE+*L13*L29 |
| 327 | 12787 | CDE+*L15*L26 |
| 328 | 29 | CDE+*L17*L21 |
| 329 | 1646 | CDE+*L19*L26 |
| 330 | 997 | CDE+*L21*L21 |
| 331 | 1519 | CDE+*L21*L28 |
| 332 | 2124 | CDE+*L28*L28 |
| 333 | 3176 | CEF+*L9*L25 |
| 334 | 1083 | CEF+*L25*L29 |
| 335 | 4264 | DEF+*L17 |
| 336 | 194 | DEF+*L0*L2 |
| 337 | 12 | DEF+*L0*L17 |
| 338 | 12527 | DEF+*L1*L1 |
| 339 | 4219 | DEF+*L2*L19 |
| 340 | 19075 | DEF+*L4*L30 |
| 341 | 1290 | DEF+*L7*L30 |
| 342 | 539 | DEF+*L8*L10 |
| 343 | 5590 | DEF+*L10*L30 |
| 344 | 4311 | DEF+*L12*L28 |
| 345 | 18 | DEF+*L15*L20 |
| 346 | 1028 | DEF+*L17*L24 |
| 347 | 1276 | DEF+*L17*L26 |
| 348 | 29 | DEF+*L17*L27 |
| 349 | 284 | DEF+*L19*L20 |
| 350 | 3848 | DEF+*L19*L30 |
| 351 | 6195 | DEF+*L20*L20 |
| 352 | 5085 | DEF+*L20*L30 |
| 353 | 131 | DFG+*L30*L30 |
| 354 | 19830 | EFG+*L5 |
| 355 | 10080 | EFG+*L15 |
| 356 | 5693 | EFG+*L29 |
| 357 | 1361 | EFG+*L1*L1 |
| 358 | 8336 | EFG+*L1*L3 |
| 359 | 945 | EFG+*L1*L7 |
| 360 | 15514 | EFG+*L1*L11 |
| 361 | 1075 | EFG+*L1*L18 |
| 362 | 1023 | EFG+*L1*L28 |
| 363 | 20170 | EFG+*L2*L19 |
| 364 | 57 | EFG+*L3*L5 |
| 365 | 1266 | EFG+*L3*L11 |
| 366 | 5614 | EFG+*L5*L6 |
| 367 | 189 | EFG+*L5*L12 |
| 368 | 6587 | EFG+*L5*L21 |
| 369 | 12265 | EFG+*L5*L28 |
| 370 | 29 | EFG+*L6*L7 |
| 371 | 924 | EFG+*L6*L20 |
| 372 | 5265 | EFG+*L6*L23 |
| 373 | 1298 | EFG+*L11*L12 |
| 374 | 15120 | EFG+*L11*L16 |
| 375 | 1655 | EFG+*L11*L29 |
| 376 | 51968 | EFG+*L12*L15 |
| 377 | 32338 | EFG+*L12*L23 |
| 378 | 16588 | EFG+*L12*L29 |
| 379 | 1270 | EFG+*L15*L19 |
| 380 | 10951 | EFG+*L15*L23 |
| 381 | 283 | EFG+*L19*L29 |
| 382 | 517 | EFG+*L19*L30 |
| 383 | 32 | EFG+*L21*L30 |
| 384 | 128 | EFG+*L23*L23 |
| 385 | 6547 | EFG+*L23*L29 |
| 386 | 2132 | EFG+*L23*L30 |
| 387 | 283 | EFG+*L29*L29 |
| 388 | 3434 | EFH+*L9*L25 |
| 389 | 5639 | FGH+*L2*L20 |
| 390 | 15378 | FGH+*L5*L11 |
| 391 | 1094 | FGH+*L5*L12 |
| 392 | 8664 | FGH+*L5*L23 |
| 393 | 973 | FGH+*L5*L29 |
| 394 | 4358 | FGH+*L11*L11 |
| 395 | 478 | FGH+*L11*L12 |
| 396 | 11779 | FGH+*L11*L15 |
| 397 | 18732 | FGH+*L11*L23 |
| 398 | 6407 | FGH+*L11*L29 |
| 399 | 13812 | FGH+*L11*L30 |
| 400 | 107 | FGH+*L12*L12 |
| 401 | 8061 | FGH+*L12*L23 |
| 402 | 1401 | FGH+*L12*L29 |
| 403 | 5280 | FGH+*L12*L30 |
| 404 | 4967 | FGH+*L23*L23 |
| 405 | 771 | FGH+*L23*L29 |
| 406 | 33 | FGH+*L29*L29 |
| 407 | 1210 | EP*L17 |
| 408 | 17400 | EP*L1*L11 |
| 409 | 1472 | EP*L1*L17 |
| 410 | 10718 | EP*L3*L17 |
| 411 | 606 | EP*L7*L17 |
| 412 | 2313 | EP*L13*L25 |
| 413 | 1400 | EP*L17*L22 |
| 414 | 1239 | EP*L17*L24 |
| 415 | 719 | EP*L17*L28 |
| 416 | 2653 | EP*L18*L18 |
| 417 | 210 | EP*L18*L25 |
| 418 | 12411 | EP*L20*L20 |
| 419 | 9740 | EP*L20*L22 |
| 420 | 5885 | EP*L25*L28 |
| 421 | 4396 | EP*L30*L30 |
| 422 | 1505 | ER*L0*L25 |
| 423 | 874 | ER*L2*L25 |
| 424 | 153 | ER*L4*L25 |
| 425 | 2300 | ER*L9*L25 |
| 426 | 1020 | ER*L10*L25 |
| 427 | 1970 | ER*L21*L25 |
| 428 | 5307 | P_AHGFE*L0*L30 |
| 429 | 37723 | P_AHGFE*L2*L20 |
| 430 | 6795 | P_AHGFE*L3*L30 |
| 431 | 5184 | P_AHGFE*L4*L17 |
| 432 | 12294 | P_AHGFE*L7*L25 |
| 433 | 1535 | P_AHGFE*L8*L30 |
| 434 | 3046 | P_AHGFE*L10*L17 |
| 435 | 47977 | P_AHGFE*L10*L20 |
| 436 | 6831 | P_AHGFE*L11*L30 |
| 437 | 58 | P_AHGFE*L15*L17 |
| 438 | 283 | P_AHGFE*L17*L29 |
| 439 | 9793 | P_AHGFE*L20*L20 |
| 440 | 1060 | P_AHGFE*L20*L25 |
| 441 | 5658 | P_AHGFE*L20*L26 |
| 442 | 7663 | P_AHGFE*L20*L30 |
| 443 | 123 | P_AHGFE*L25*L26 |
| 444 | 710 | P_AHGFE*L25*L27 |
| 445 | 8281 | P_AHGFE*L25*L28 |
| 446 | 7049 | P_AHGFE*L30*L30 |
| 447 | 2793 | P_DEFGH*L25 |
| 448 | 1949 | P_DEFGH*L1*L1 |
| 449 | 7464 | P_DEFGH*L1*L11 |
| 450 | 220 | P_DEFGH*L4*L25 |
| 451 | 953 | P_DEFGH*L6*L20 |
| 452 | 32 | P_DEFGH*L6*L30 |
| 453 | 2859 | P_DEFGH*L9*L25 |
| 454 | 53 | P_DEFGH*L10*L25 |
| 455 | 15452 | P_DEFGH*L11*L18 |
| 456 | 4294 | P_DEFGH*L11*L30 |
| 457 | 1823 | P_DEFGH*L15*L25 |
| 458 | 66 | P_DEFGH*L15*L30 |
| 459 | 543 | P_DEFGH*L18*L18 |
| 460 | 404 | P_DEFGH*L19*L30 |
| 461 | 53 | P_DEFGH*L25*L26 |
| 462 | 70 | P_DEFGH*L30*L30 |
| 463 | 101 | P_HABCD*L22*L25 |
| 464 | 7945 | P_ABCDE*L0*L25 |
| 465 | 2106 | BAD*L23 |
| 466 | 8251 | BAD*L28 |
| 467 | 8664 | BAD*L30 |
| 468 | 15954 | BAD*L1*L5 |
| 469 | 2231 | BAD*L1*L7 |
| 470 | 13089 | BAD*L1*L12 |
| 471 | 4686 | BAD*L2*L7 |
| 472 | 506 | BAD*L2*L10 |
| 473 | 216 | BAD*L2*L16 |
| 474 | 2927 | BAD*L2*L19 |
| 475 | 506 | BAD*L2*L24 |
| 476 | 1172 | BAD*L3*L17 |
| 477 | 2045 | BAD*L5*L13 |
| 478 | 11893 | BAD*L5*L21 |
| 479 | 3109 | BAD*L5*L28 |
| 480 | 1465 | BAD*L6*L11 |
| 481 | 39 | BAD*L7*L12 |
| 482 | 1232 | BAD*L7*L28 |
| 483 | 2899 | BAD*L8*L30 |
| 484 | 3174 | BAD*L10*L12 |
| 485 | 10835 | BAD*L11*L30 |
| 486 | 1126 | BAD*L13*L17 |
| 487 | 121 | BAD*L13*L30 |
| 488 | 11703 | BAD*L15*L23 |
| 489 | 617 | BAD*L17*L20 |
| 490 | 336 | BAD*L17*L27 |
| 491 | 368 | BAD*L17*L28 |
| 492 | 3815 | BAD*L19*L30 |
| 493 | 4865 | BAD*L20*L20 |
| 494 | 1349 | BAD*L20*L28 |
| 495 | 5760 | BAD*L20*L30 |
| 496 | 4734 | BAD*L21*L21 |
| 497 | 506 | BAD*L23*L23 |
| 498 | 522 | BAD*L23*L26 |
| 499 | 5851 | BAD*L23*L28 |
| 500 | 5817 | BAD*L23*L29 |
| 501 | 2374 | BAD*L28*L28 |
| 502 | 4539 | BAD*L30*L30 |
| 503 | 123 | SUP*L25 |
| 504 | 854 | ABE+*ABH+ |
| 505 | 1008 | ABH+*ACE+ |
| 506 | 8920 | ABH+*DFG+ |
| 507 | 3890 | ABH+*EFG+ |
| 508 | 3 | AGH+*AGH+ |
| 509 | 10683 | AGH+*EFH+ |
| 510 | 5206 | AGH+*EP |
| 511 | 1083 | CDE+*CGH+ |
| 512 | 16757 | DEF+*P_AHGFE |
| 513 | 11235 | DFH+*BAD |
| 514 | 559 | DGH+*BAD |
| 515 | 17012 | EFG+*EFH+ |
| 516 | 15095 | EFG+*EP |
| 517 | 8044 | EFG+*BAD |
| 518 | 17400 | EP*EP |
| 519 | 15019 | EP*P_DEFGH |
| 520 | 1587 | EP*BAD |
| 521 | 1961 | P_AHGFE*P_DEFGH |
| 522 | 16401 | P_AHGFE*BAD |
| 523 | 1040 | P_DEFGH*BAD |

### Row CDEF

The exact bound is `-5140299272970629142326693011492468017802887709209001756718109571/10625177338604749772049212527622865852590804915393693000000000000`.

| Index | Weight | Product |
|---:|---:|---|
| 1 | 2410 | L0*L2*L5 |
| 2 | 3537 | L0*L9*L12 |
| 3 | 215 | L2*L2*L12 |
| 4 | 525 | L2*L2*L21 |
| 5 | 3370 | L4*L10*L17 |
| 6 | 694 | L6*L17*L30 |
| 7 | 47 | L6*L20*L27 |
| 8 | 150 | L17*L17*L25 |
| 9 | 1024 | L22*L25*L29 |
| 10 | 3219 | L0*L0*L0*L2 |
| 11 | 7578 | L0*L0*L2*L15 |
| 12 | 1371 | L0*L0*L6*L10 |
| 13 | 65 | L0*L0*L9*L27 |
| 14 | 1581 | L0*L0*L19*L23 |
| 15 | 392 | L0*L1*L1*L25 |
| 16 | 2603 | L0*L1*L2*L29 |
| 17 | 584 | L0*L1*L9*L12 |
| 18 | 1017 | L0*L1*L12*L17 |
| 19 | 167 | L0*L2*L2*L16 |
| 20 | 6691 | L0*L2*L2*L18 |
| 21 | 2492 | L0*L2*L2*L29 |
| 22 | 2426 | L0*L2*L4*L19 |
| 23 | 1022 | L0*L2*L5*L8 |
| 24 | 1820 | L0*L2*L7*L29 |
| 25 | 859 | L0*L2*L8*L12 |
| 26 | 4284 | L0*L2*L8*L29 |
| 27 | 811 | L0*L2*L10*L15 |
| 28 | 4851 | L0*L2*L10*L21 |
| 29 | 4459 | L0*L2*L12*L21 |
| 30 | 2448 | L0*L2*L13*L29 |
| 31 | 5316 | L0*L2*L15*L21 |
| 32 | 2778 | L0*L2*L17*L20 |
| 33 | 3504 | L0*L2*L23*L24 |
| 34 | 3099 | L0*L3*L10*L30 |
| 35 | 365 | L0*L4*L9*L21 |
| 36 | 74 | L0*L4*L11*L29 |
| 37 | 4329 | L0*L4*L12*L29 |
| 38 | 1329 | L0*L4*L30*L30 |
| 39 | 1083 | L0*L5*L6*L9 |
| 40 | 5430 | L0*L5*L6*L12 |
| 41 | 1465 | L0*L5*L6*L16 |
| 42 | 773 | L0*L5*L9*L19 |
| 43 | 1206 | L0*L5*L12*L23 |
| 44 | 1136 | L0*L5*L15*L21 |
| 45 | 65 | L0*L6*L8*L21 |
| 46 | 2632 | L0*L6*L11*L25 |
| 47 | 5162 | L0*L6*L13*L23 |
| 48 | 197 | L0*L6*L14*L30 |
| 49 | 286 | L0*L6*L26*L29 |
| 50 | 65 | L0*L6*L27*L30 |
| 51 | 189 | L0*L7*L9*L17 |
| 52 | 1601 | L0*L7*L25*L25 |
| 53 | 286 | L0*L8*L12*L29 |
| 54 | 88 | L0*L8*L17*L27 |
| 55 | 273 | L0*L8*L20*L30 |
| 56 | 65 | L0*L8*L28*L30 |
| 57 | 732 | L0*L9*L9*L11 |
| 58 | 102 | L0*L9*L9*L29 |
| 59 | 4350 | L0*L9*L12*L22 |
| 60 | 99 | L0*L9*L15*L16 |
| 61 | 599 | L0*L10*L23*L30 |
| 62 | 184 | L0*L11*L12*L25 |
| 63 | 307 | L0*L11*L12*L29 |
| 64 | 4 | L0*L12*L12*L24 |
| 65 | 4862 | L0*L12*L15*L16 |
| 66 | 1610 | L0*L12*L15*L27 |
| 67 | 3987 | L0*L12*L17*L22 |
| 68 | 166 | L0*L15*L16*L21 |
| 69 | 220 | L0*L17*L19*L29 |
| 70 | 2470 | L0*L17*L23*L30 |
| 71 | 2029 | L0*L17*L25*L30 |
| 72 | 210 | L0*L19*L19*L25 |
| 73 | 696 | L0*L21*L22*L29 |
| 74 | 53 | L0*L21*L27*L29 |
| 75 | 2485 | L0*L23*L23*L30 |
| 76 | 245 | L0*L23*L29*L29 |
| 77 | 1391 | L1*L2*L6*L17 |
| 78 | 1432 | L1*L2*L14*L17 |
| 79 | 214 | L1*L4*L17*L30 |
| 80 | 118 | L1*L6*L6*L14 |
| 81 | 588 | L1*L8*L12*L25 |
| 82 | 4623 | L1*L8*L25*L25 |
| 83 | 381 | L1*L9*L17*L24 |
| 84 | 357 | L1*L10*L17*L18 |
| 85 | 273 | L1*L20*L30*L30 |
| 86 | 3 | L2*L2*L3*L7 |
| 87 | 64 | L2*L2*L4*L11 |
| 88 | 64 | L2*L2*L4*L26 |
| 89 | 46 | L2*L2*L5*L16 |
| 90 | 656 | L2*L2*L9*L27 |
| 91 | 16 | L2*L2*L13*L22 |
| 92 | 473 | L2*L2*L22*L29 |
| 93 | 1141 | L2*L2*L23*L27 |
| 94 | 620 | L2*L2*L25*L27 |
| 95 | 280 | L2*L3*L6*L11 |
| 96 | 64 | L2*L4*L4*L12 |
| 97 | 73 | L2*L4*L17*L26 |
| 98 | 1 | L2*L4*L29*L30 |
| 99 | 2076 | L2*L6*L9*L15 |
| 100 | 1061 | L2*L6*L9*L30 |
| 101 | 553 | L2*L6*L11*L21 |
| 102 | 1222 | L2*L6*L11*L27 |
| 103 | 366 | L2*L6*L13*L14 |
| 104 | 2899 | L2*L6*L14*L24 |
| 105 | 7302 | L2*L6*L15*L18 |
| 106 | 1594 | L2*L6*L15*L29 |
| 107 | 222 | L2*L6*L19*L20 |
| 108 | 384 | L2*L6*L20*L21 |
| 109 | 901 | L2*L6*L23*L25 |
| 110 | 1467 | L2*L6*L23*L27 |
| 111 | 656 | L2*L6*L24*L28 |
| 112 | 25 | L2*L6*L26*L26 |
| 113 | 17 | L2*L8*L9*L29 |
| 114 | 398 | L2*L8*L12*L24 |
| 115 | 2143 | L2*L8*L17*L23 |
| 116 | 384 | L2*L9*L9*L21 |
| 117 | 32 | L2*L10*L13*L24 |
| 118 | 728 | L2*L10*L15*L27 |
| 119 | 409 | L2*L10*L16*L23 |
| 120 | 479 | L2*L10*L17*L27 |
| 121 | 345 | L2*L11*L21*L21 |
| 122 | 1027 | L2*L12*L14*L21 |
| 123 | 344 | L2*L12*L15*L22 |
| 124 | 69 | L2*L12*L17*L22 |
| 125 | 306 | L2*L12*L19*L20 |
| 126 | 814 | L2*L12*L19*L21 |
| 127 | 212 | L2*L12*L20*L23 |
| 128 | 208 | L2*L12*L21*L30 |
| 129 | 139 | L2*L12*L22*L27 |
| 130 | 24 | L2*L12*L26*L29 |
| 131 | 46 | L2*L13*L22*L30 |
| 132 | 1483 | L2*L14*L15*L29 |
| 133 | 425 | L2*L15*L22*L25 |
| 134 | 156 | L2*L15*L24*L26 |
| 135 | 1926 | L2*L15*L25*L25 |
| 136 | 107 | L2*L15*L25*L29 |
| 137 | 1072 | L2*L17*L18*L22 |
| 138 | 473 | L2*L17*L19*L25 |
| 139 | 672 | L2*L17*L23*L27 |
| 140 | 64 | L2*L18*L26*L26 |
| 141 | 2273 | L2*L19*L19*L19 |
| 142 | 1881 | L2*L19*L26*L29 |
| 143 | 377 | L2*L21*L24*L29 |
| 144 | 204 | L2*L22*L25*L29 |
| 145 | 400 | L2*L23*L29*L30 |
| 146 | 2130 | L2*L25*L25*L27 |
| 147 | 17 | L2*L26*L26*L29 |
| 148 | 233 | L2*L27*L28*L29 |
| 149 | 19 | L3*L6*L6*L9 |
| 150 | 255 | L3*L6*L9*L29 |
| 151 | 1690 | L3*L7*L25*L25 |
| 152 | 317 | L3*L8*L14*L17 |
| 153 | 32 | L3*L12*L24*L25 |
| 154 | 1516 | L3*L14*L25*L25 |
| 155 | 248 | L3*L15*L17*L17 |
| 156 | 18 | L3*L16*L17*L30 |
| 157 | 444 | L3*L17*L22*L24 |
| 158 | 2387 | L3*L19*L25*L25 |
| 159 | 92 | L4*L4*L9*L12 |
| 160 | 32 | L4*L4*L13*L25 |
| 161 | 115 | L4*L4*L17*L18 |
| 162 | 14 | L4*L4*L17*L29 |
| 163 | 142 | L4*L5*L17*L30 |
| 164 | 193 | L4*L6*L12*L25 |
| 165 | 568 | L4*L6*L17*L18 |
| 166 | 15 | L4*L7*L30*L30 |
| 167 | 882 | L4*L9*L9*L25 |
| 168 | 2319 | L4*L10*L14*L17 |
| 169 | 247 | L4*L10*L17*L22 |
| 170 | 7779 | L4*L10*L20*L30 |
| 171 | 39 | L4*L11*L12*L29 |
| 172 | 103 | L4*L12*L12*L20 |
| 173 | 6802 | L4*L12*L15*L15 |
| 174 | 56 | L4*L12*L20*L25 |
| 175 | 1795 | L4*L14*L25*L25 |
| 176 | 1247 | L4*L19*L25*L25 |
| 177 | 134 | L5*L5*L6*L6 |
| 178 | 403 | L5*L5*L8*L17 |
| 179 | 504 | L5*L5*L21*L30 |
| 180 | 14 | L5*L5*L29*L29 |
| 181 | 238 | L5*L6*L6*L11 |
| 182 | 1504 | L5*L6*L6*L29 |
| 183 | 218 | L5*L6*L10*L26 |
| 184 | 253 | L5*L6*L17*L24 |
| 185 | 378 | L5*L8*L25*L30 |
| 186 | 77 | L5*L10*L17*L24 |
| 187 | 112 | L5*L12*L12*L18 |
| 188 | 69 | L5*L12*L17*L20 |
| 189 | 136 | L5*L12*L17*L29 |
| 190 | 11 | L5*L12*L18*L22 |
| 191 | 230 | L5*L14*L17*L17 |
| 192 | 1577 | L5*L14*L17*L24 |
| 193 | 136 | L5*L16*L17*L26 |
| 194 | 13 | L5*L17*L22*L26 |
| 195 | 768 | L5*L18*L25*L25 |
| 196 | 210 | L5*L21*L21*L21 |
| 197 | 42 | L6*L6*L6*L20 |
| 198 | 37 | L6*L6*L6*L24 |
| 199 | 447 | L6*L6*L10*L27 |
| 200 | 208 | L6*L6*L14*L16 |
| 201 | 11 | L6*L6*L16*L22 |
| 202 | 118 | L6*L6*L16*L25 |
| 203 | 47 | L6*L6*L20*L26 |
| 204 | 2853 | L6*L6*L23*L23 |
| 205 | 304 | L6*L7*L10*L12 |
| 206 | 47 | L6*L7*L12*L21 |
| 207 | 3867 | L6*L8*L10*L30 |
| 208 | 2509 | L6*L8*L12*L15 |
| 209 | 1729 | L6*L9*L9*L11 |
| 210 | 1193 | L6*L9*L25*L25 |
| 211 | 304 | L6*L10*L12*L21 |
| 212 | 1901 | L6*L10*L18*L30 |
| 213 | 699 | L6*L12*L13*L30 |
| 214 | 126 | L6*L14*L21*L21 |
| 215 | 42 | L6*L14*L28*L29 |
| 216 | 53 | L6*L17*L19*L20 |
| 217 | 126 | L6*L20*L20*L30 |
| 218 | 1132 | L7*L7*L25*L25 |
| 219 | 366 | L7*L9*L15*L25 |
| 220 | 623 | L7*L10*L12*L30 |
| 221 | 2556 | L7*L10*L17*L18 |
| 222 | 56 | L7*L12*L12*L22 |
| 223 | 141 | L7*L12*L15*L25 |
| 224 | 458 | L7*L21*L21*L25 |
| 225 | 2 | L7*L21*L23*L29 |
| 226 | 1132 | L7*L21*L25*L25 |
| 227 | 983 | L7*L24*L30*L30 |
| 228 | 391 | L8*L8*L17*L24 |
| 229 | 1582 | L8*L8*L17*L25 |
| 230 | 28 | L8*L10*L10*L26 |
| 231 | 454 | L8*L10*L16*L17 |
| 232 | 1682 | L8*L10*L22*L25 |
| 233 | 49 | L8*L12*L17*L20 |
| 234 | 9 | L8*L12*L26*L28 |
| 235 | 250 | L8*L14*L17*L28 |
| 236 | 149 | L8*L17*L20*L30 |
| 237 | 65 | L8*L18*L20*L28 |
| 238 | 42 | L8*L21*L30*L30 |
| 239 | 677 | L9*L9*L13*L21 |
| 240 | 42 | L9*L9*L15*L19 |
| 241 | 1595 | L9*L9*L16*L25 |
| 242 | 149 | L9*L9*L20*L29 |
| 243 | 1033 | L9*L10*L14*L17 |
| 244 | 868 | L9*L11*L21*L21 |
| 245 | 1195 | L9*L12*L12*L27 |
| 246 | 673 | L9*L12*L28*L29 |
| 247 | 220 | L9*L15*L15*L29 |
| 248 | 18 | L9*L16*L25*L29 |
| 249 | 42 | L9*L17*L19*L22 |
| 250 | 6060 | L9*L18*L25*L25 |
| 251 | 220 | L9*L18*L29*L29 |
| 252 | 1508 | L9*L25*L30*L30 |
| 253 | 223 | L10*L10*L10*L29 |
| 254 | 352 | L10*L10*L11*L30 |
| 255 | 723 | L10*L10*L17*L18 |
| 256 | 424 | L10*L10*L24*L27 |
| 257 | 986 | L10*L12*L14*L17 |
| 258 | 1264 | L10*L12*L17*L27 |
| 259 | 316 | L10*L13*L15*L17 |
| 260 | 432 | L10*L15*L23*L30 |
| 261 | 205 | L10*L22*L22*L30 |
| 262 | 68 | L10*L22*L29*L29 |
| 263 | 1067 | L10*L24*L29*L30 |
| 264 | 16 | L11*L11*L12*L23 |
| 265 | 338 | L11*L11*L17*L30 |
| 266 | 95 | L11*L12*L12*L20 |
| 267 | 6 | L11*L13*L17*L24 |
| 268 | 13 | L11*L15*L19*L30 |
| 269 | 111 | L11*L17*L24*L25 |
| 270 | 665 | L11*L25*L25*L27 |
| 271 | 7 | L12*L12*L14*L26 |
| 272 | 8 | L12*L12*L17*L18 |
| 273 | 524 | L12*L12*L17*L19 |
| 274 | 48 | L12*L12*L18*L26 |
| 275 | 68 | L12*L12*L19*L23 |
| 276 | 7 | L12*L12*L23*L29 |
| 277 | 44 | L12*L12*L25*L28 |
| 278 | 296 | L12*L12*L27*L30 |
| 279 | 237 | L12*L14*L17*L27 |
| 280 | 3409 | L12*L15*L15*L16 |
| 281 | 2155 | L12*L15*L17*L19 |
| 282 | 270 | L12*L15*L19*L26 |
| 283 | 130 | L12*L15*L21*L21 |
| 284 | 280 | L12*L15*L21*L25 |
| 285 | 1017 | L12*L17*L19*L19 |
| 286 | 494 | L12*L17*L19*L20 |
| 287 | 516 | L12*L17*L19*L26 |
| 288 | 122 | L12*L19*L21*L25 |
| 289 | 341 | L12*L19*L23*L29 |
| 290 | 102 | L12*L20*L25*L26 |
| 291 | 32 | L12*L22*L22*L25 |
| 292 | 16 | L12*L22*L24*L24 |
| 293 | 30 | L12*L22*L24*L28 |
| 294 | 50 | L12*L22*L25*L29 |
| 295 | 34 | L12*L23*L25*L27 |
| 296 | 95 | L12*L25*L25*L27 |
| 297 | 722 | L13*L17*L28*L30 |
| 298 | 257 | L14*L17*L19*L20 |
| 299 | 155 | L14*L17*L20*L27 |
| 300 | 272 | L14*L17*L23*L25 |
| 301 | 33 | L14*L20*L25*L29 |
| 302 | 248 | L15*L17*L17*L23 |
| 303 | 329 | L15*L21*L21*L24 |
| 304 | 423 | L15*L21*L25*L25 |
| 305 | 256 | L17*L18*L21*L26 |
| 306 | 102 | L17*L19*L20*L30 |
| 307 | 220 | L17*L19*L28*L29 |
| 308 | 69 | L17*L20*L23*L26 |
| 309 | 1099 | L17*L20*L25*L25 |
| 310 | 1744 | L17*L23*L24*L28 |
| 311 | 12 | L17*L25*L30*L30 |
| 312 | 49 | L17*L26*L27*L28 |
| 313 | 25 | L18*L18*L24*L30 |
| 314 | 130 | L18*L21*L25*L25 |
| 315 | 888 | L18*L22*L22*L30 |
| 316 | 304 | L19*L25*L25*L27 |
| 317 | 107 | L20*L20*L23*L30 |
| 318 | 8 | L20*L23*L26*L26 |
| 319 | 480 | L20*L25*L26*L30 |
| 320 | 42 | L21*L21*L21*L21 |
| 321 | 2 | L21*L25*L29*L30 |
| 322 | 233 | L22*L24*L25*L29 |
| 323 | 18 | L22*L29*L29*L30 |
| 324 | 314 | L23*L27*L30*L30 |
| 325 | 46 | L24*L24*L25*L29 |
| 326 | 324 | L24*L25*L25*L28 |
| 327 | 1359 | L25*L25*L28*L29 |
| 328 | 1405 | L25*L28*L30*L30 |
| 329 | 646 | ABC+*L0*L0 |
| 330 | 9435 | ABC+*L0*L4 |
| 331 | 333 | ABC+*L0*L19 |
| 332 | 386 | ABC+*L0*L29 |
| 333 | 6091 | ABC+*L1*L2 |
| 334 | 3665 | ABC+*L1*L3 |
| 335 | 208 | ABC+*L1*L7 |
| 336 | 2911 | ABC+*L2*L7 |
| 337 | 95 | ABC+*L4*L5 |
| 338 | 3473 | ABC+*L4*L24 |
| 339 | 1247 | ABC+*L4*L26 |
| 340 | 9435 | ABC+*L4*L28 |
| 341 | 11008 | ABC+*L5*L20 |
| 342 | 397 | ABC+*L7*L27 |
| 343 | 1827 | ABC+*L7*L29 |
| 344 | 1062 | ABC+*L9*L19 |
| 345 | 2391 | ABC+*L10*L30 |
| 346 | 3265 | ABC+*L11*L19 |
| 347 | 2359 | ABC+*L11*L22 |
| 348 | 2151 | ABC+*L15*L23 |
| 349 | 974 | ABC+*L16*L23 |
| 350 | 245 | ABC+*L16*L29 |
| 351 | 829 | ABC+*L18*L27 |
| 352 | 386 | ABC+*L18*L29 |
| 353 | 1052 | ABC+*L21*L24 |
| 354 | 1590 | ABC+*L21*L25 |
| 355 | 289 | ABC+*L21*L28 |
| 356 | 1920 | ABC+*L22*L23 |
| 357 | 1131 | ABD+*L2*L17 |
| 358 | 621 | ABD+*L17*L25 |
| 359 | 1084 | ABE+*L0*L17 |
| 360 | 277 | ABE+*L30*L30 |
| 361 | 12 | ABG+*L21*L21 |
| 362 | 30 | ABG+*L22*L22 |
| 363 | 4264 | ABH+*L0*L3 |
| 364 | 2176 | ABH+*L0*L11 |
| 365 | 6094 | ABH+*L0*L19 |
| 366 | 6114 | ABH+*L0*L20 |
| 367 | 5366 | ABH+*L0*L21 |
| 368 | 2621 | ABH+*L2*L10 |
| 369 | 1558 | ABH+*L3*L4 |
| 370 | 2991 | ABH+*L3*L5 |
| 371 | 545 | ABH+*L3*L9 |
| 372 | 5203 | ABH+*L3*L10 |
| 373 | 906 | ABH+*L4*L4 |
| 374 | 2694 | ABH+*L4*L29 |
| 375 | 2711 | ABH+*L5*L25 |
| 376 | 4724 | ABH+*L6*L14 |
| 377 | 3086 | ABH+*L6*L29 |
| 378 | 1668 | ABH+*L7*L15 |
| 379 | 1107 | ABH+*L7*L30 |
| 380 | 654 | ABH+*L10*L27 |
| 381 | 218 | ABH+*L11*L24 |
| 382 | 488 | ABH+*L15*L24 |
| 383 | 1519 | ABH+*L17*L19 |
| 384 | 627 | ABH+*L21*L29 |
| 385 | 1768 | ABH+*L23*L23 |
| 386 | 3383 | ABH+*L23*L24 |
| 387 | 433 | ABH+*L27*L27 |
| 388 | 1849 | ACE+*L10*L17 |
| 389 | 241 | ADF+*L25*L25 |
| 390 | 1642 | AFG+*L0*L30 |
| 391 | 30 | AFH+*L11*L12 |
| 392 | 2213 | AGH+*L1*L9 |
| 393 | 312 | AGH+*L1*L13 |
| 394 | 1732 | AGH+*L1*L21 |
| 395 | 882 | AGH+*L4*L7 |
| 396 | 7396 | AGH+*L4*L9 |
| 397 | 3330 | AGH+*L4*L30 |
| 398 | 1104 | AGH+*L5*L15 |
| 399 | 1279 | AGH+*L5*L27 |
| 400 | 5715 | AGH+*L7*L15 |
| 401 | 789 | AGH+*L9*L13 |
| 402 | 24 | AGH+*L9*L21 |
| 403 | 48 | AGH+*L12*L12 |
| 404 | 312 | AGH+*L12*L28 |
| 405 | 2076 | AGH+*L15*L28 |
| 406 | 1732 | AGH+*L19*L21 |
| 407 | 195 | AGH+*L21*L22 |
| 408 | 122 | AGH+*L26*L27 |
| 409 | 1126 | AGH+*L26*L30 |
| 410 | 12 | AGH+*L27*L27 |
| 411 | 10562 | BCD+*L0*L5 |
| 412 | 4619 | BCD+*L0*L23 |
| 413 | 330 | BCD+*L2*L6 |
| 414 | 1138 | BCD+*L3*L23 |
| 415 | 85 | BCD+*L5*L7 |
| 416 | 1559 | BCD+*L5*L16 |
| 417 | 6611 | BCD+*L5*L18 |
| 418 | 4290 | BCD+*L5*L19 |
| 419 | 1773 | BCD+*L5*L28 |
| 420 | 880 | BCD+*L6*L27 |
| 421 | 746 | BCD+*L7*L9 |
| 422 | 1379 | BCD+*L10*L21 |
| 423 | 2118 | BCD+*L14*L29 |
| 424 | 822 | BCD+*L16*L23 |
| 425 | 1657 | BCD+*L16*L24 |
| 426 | 458 | BCD+*L21*L21 |
| 427 | 1065 | BCD+*L21*L28 |
| 428 | 1056 | BCD+*L24*L27 |
| 429 | 73 | BDG+*L2*L12 |
| 430 | 763 | BFH+*L10*L30 |
| 431 | 4 | BGH+*L2*L12 |
| 432 | 32 | BGH+*L4*L12 |
| 433 | 47 | BGH+*L11*L12 |
| 434 | 1608 | BGH+*L12*L15 |
| 435 | 69 | BGH+*L12*L21 |
| 436 | 1210 | BGH+*L15*L25 |
| 437 | 581 | CDE+*L6*L6 |
| 438 | 7 | CDG+*L12*L26 |
| 439 | 23 | CDH+*L16*L18 |
| 440 | 36 | CEG+*L12*L25 |
| 441 | 1743 | DEF+*L0*L30 |
| 442 | 3022 | DEG+*L10*L30 |
| 443 | 1157 | EFG+*L14 |
| 444 | 6184 | EFG+*L0*L4 |
| 445 | 397 | EFG+*L1*L5 |
| 446 | 398 | EFG+*L2*L2 |
| 447 | 453 | EFG+*L2*L11 |
| 448 | 617 | EFG+*L2*L30 |
| 449 | 449 | EFG+*L3*L19 |
| 450 | 287 | EFG+*L3*L23 |
| 451 | 402 | EFG+*L3*L28 |
| 452 | 5308 | EFG+*L4*L18 |
| 453 | 473 | EFG+*L4*L28 |
| 454 | 677 | EFG+*L9*L20 |
| 455 | 631 | EFG+*L11*L21 |
| 456 | 2118 | EFG+*L12*L14 |
| 457 | 2301 | EFG+*L12*L15 |
| 458 | 476 | EFG+*L13*L19 |
| 459 | 673 | EFG+*L14*L21 |
| 460 | 12 | EFG+*L19*L28 |
| 461 | 6 | EFG+*L21*L23 |
| 462 | 214 | EFG+*L23*L27 |
| 463 | 951 | EFG+*L26*L30 |
| 464 | 240 | EFH+*L4*L25 |
| 465 | 1184 | EFH+*L6*L12 |
| 466 | 90 | EFH+*L6*L30 |
| 467 | 1243 | EFH+*L9*L25 |
| 468 | 951 | EFH+*L21*L29 |
| 469 | 960 | EGH+*L9*L12 |
| 470 | 1932 | FGH+*L4 |
| 471 | 457 | FGH+*L13 |
| 472 | 3717 | FGH+*L0*L0 |
| 473 | 1935 | FGH+*L0*L25 |
| 474 | 1295 | FGH+*L1*L16 |
| 475 | 1900 | FGH+*L1*L23 |
| 476 | 449 | FGH+*L3*L17 |
| 477 | 2490 | FGH+*L4*L17 |
| 478 | 4662 | FGH+*L5*L14 |
| 479 | 1896 | FGH+*L6*L30 |
| 480 | 60 | FGH+*L7*L8 |
| 481 | 1064 | FGH+*L7*L12 |
| 482 | 1731 | FGH+*L8*L29 |
| 483 | 951 | FGH+*L9*L13 |
| 484 | 66 | FGH+*L11*L26 |
| 485 | 2324 | FGH+*L11*L28 |
| 486 | 60 | FGH+*L12*L25 |
| 487 | 606 | FGH+*L13*L19 |
| 488 | 466 | FGH+*L14*L30 |
| 489 | 1295 | FGH+*L17*L28 |
| 490 | 2063 | FGH+*L18*L27 |
| 491 | 1609 | FGH+*L18*L30 |
| 492 | 4 | FGH+*L20*L20 |
| 493 | 114 | FGH+*L21*L21 |
| 494 | 319 | FGH+*L22*L27 |
| 495 | 381 | FGH+*L22*L29 |
| 496 | 543 | EP*L30 |
| 497 | 2344 | EP*L5*L30 |
| 498 | 2972 | EP*L8*L28 |
| 499 | 2733 | EP*L17*L18 |
| 500 | 1141 | EP*L17*L23 |
| 501 | 1509 | EP*L18*L22 |
| 502 | 2202 | EP*L18*L25 |
| 503 | 1503 | EP*L18*L27 |
| 504 | 5936 | EP*L20*L22 |
| 505 | 1914 | EP*L20*L25 |
| 506 | 83 | EP*L25*L26 |
| 507 | 15422 | EL*L10*L20 |
| 508 | 2655 | EL*L20*L25 |
| 509 | 2702 | EL*L25*L30 |
| 510 | 8 | ER*L12*L12 |
| 511 | 407 | P_AHGFE*L6 |
| 512 | 198 | P_AHGFE*L0*L27 |
| 513 | 179 | P_AHGFE*L2*L11 |
| 514 | 158 | P_AHGFE*L2*L13 |
| 515 | 125 | P_AHGFE*L2*L22 |
| 516 | 2065 | P_AHGFE*L3*L25 |
| 517 | 3783 | P_AHGFE*L4*L17 |
| 518 | 3312 | P_AHGFE*L4*L19 |
| 519 | 1751 | P_AHGFE*L4*L25 |
| 520 | 6522 | P_AHGFE*L4*L28 |
| 521 | 1168 | P_AHGFE*L5*L19 |
| 522 | 1868 | P_AHGFE*L7*L25 |
| 523 | 290 | P_AHGFE*L8*L21 |
| 524 | 508 | P_AHGFE*L8*L25 |
| 525 | 750 | P_AHGFE*L9*L22 |
| 526 | 346 | P_AHGFE*L11*L22 |
| 527 | 2202 | P_AHGFE*L11*L28 |
| 528 | 130 | P_AHGFE*L12*L25 |
| 529 | 1019 | P_AHGFE*L14*L21 |
| 530 | 3477 | P_AHGFE*L14*L25 |
| 531 | 358 | P_AHGFE*L14*L29 |
| 532 | 248 | P_AHGFE*L16*L24 |
| 533 | 615 | P_AHGFE*L17*L19 |
| 534 | 156 | P_AHGFE*L18*L19 |
| 535 | 330 | P_AHGFE*L18*L27 |
| 536 | 757 | P_AHGFE*L28*L28 |
| 537 | 378 | P_BCDEF*L2*L17 |
| 538 | 7 | P_DEFGH*L26*L26 |
| 539 | 220 | P_HABCD*L4*L23 |
| 540 | 1129 | P_HABCD*L5*L6 |
| 541 | 5454 | P_HABCD*L6*L10 |
| 542 | 63 | P_HABCD*L7*L8 |
| 543 | 668 | P_HABCD*L7*L18 |
| 544 | 168 | P_HABCD*L10*L13 |
| 545 | 5747 | P_HABCD*L10*L20 |
| 546 | 1304 | P_HABCD*L11*L30 |
| 547 | 97 | P_HABCD*L12*L24 |
| 548 | 56 | P_HABCD*L13*L26 |
| 549 | 332 | P_HABCD*L15*L18 |
| 550 | 508 | P_HABCD*L20*L27 |
| 551 | 424 | P_HABCD*L23*L24 |
| 552 | 1058 | P_HABCD*L24*L24 |
| 553 | 1377 | P_HABCD*L24*L28 |
| 554 | 688 | P_HABCD*L26*L28 |
| 555 | 386 | P_ABCDE*L8*L17 |
| 556 | 324 | P_ABCDE*L25*L25 |
| 557 | 2490 | BAD*L0*L9 |
| 558 | 1232 | BAD*L0*L13 |
| 559 | 513 | BAD*L0*L29 |
| 560 | 1432 | BAD*L1*L10 |
| 561 | 1271 | BAD*L1*L19 |
| 562 | 33 | BAD*L3*L12 |
| 563 | 90 | BAD*L3*L26 |
| 564 | 76 | BAD*L4*L13 |
| 565 | 5533 | BAD*L4*L14 |
| 566 | 9355 | BAD*L4*L20 |
| 567 | 9015 | BAD*L4*L21 |
| 568 | 1285 | BAD*L5*L18 |
| 569 | 2456 | BAD*L6*L12 |
| 570 | 2456 | BAD*L6*L13 |
| 571 | 806 | BAD*L6*L15 |
| 572 | 1375 | BAD*L6*L16 |
| 573 | 360 | BAD*L7*L24 |
| 574 | 517 | BAD*L8*L14 |
| 575 | 1180 | BAD*L9*L21 |
| 576 | 594 | BAD*L9*L24 |
| 577 | 1268 | BAD*L15*L24 |
| 578 | 1538 | BAD*L16*L19 |
| 579 | 940 | BAD*L19*L19 |
| 580 | 417 | BAD*L19*L28 |
| 581 | 1512 | BAD*L20*L22 |
| 582 | 220 | BAD*L23*L23 |
| 583 | 522 | BAD*L23*L28 |
| 584 | 91 | BAD*L25*L27 |
| 585 | 3932 | ABC+*AEF+ |
| 586 | 2218 | ABC+*CGH+ |
| 587 | 1905 | ACG+*FGH+ |
| 588 | 1282 | ACG+*BAD |
| 589 | 2979 | ACH+*FGH+ |
| 590 | 3388 | AFH+*P_HABCD |
| 591 | 130 | AGH+*BFH+ |
| 592 | 443 | AGH+*EGH+ |
| 593 | 122 | AGH+*P_DEFGH |
| 594 | 908 | BCE+*P_AHGFE |
| 595 | 2423 | BCG+*P_AHGFE |
| 596 | 549 | BDF+*P_AHGFE |
| 597 | 1067 | BDH+*BAD |
| 598 | 468 | CDF+*FGH+ |
| 599 | 2403 | CFH+*EFG+ |
| 600 | 199 | DGH+*EFG+ |
| 601 | 3880 | EL*EL |

### Row GHAB

The exact bound is `-379922210919972297313692830555571639417538446900602326631639/185904352076928120027455865339658918931147512254500000000000`.

| Index | Weight | Product |
|---:|---:|---|
| 1 | 35869 | L2*L17*L30 |
| 2 | 624 | L3*L17*L18 |
| 3 | 4177 | L6*L17*L25 |
| 4 | 917 | L13*L25*L25 |
| 5 | 791 | L17*L17*L30 |
| 6 | 1643 | L17*L19*L28 |
| 7 | 3215 | L17*L26*L30 |
| 8 | 4921 | L25*L25*L29 |
| 9 | 11878 | L0*L0*L2*L2 |
| 10 | 52522 | L0*L0*L2*L5 |
| 11 | 2184 | L0*L0*L2*L9 |
| 12 | 2240 | L0*L0*L2*L11 |
| 13 | 15259 | L0*L0*L2*L13 |
| 14 | 3953 | L0*L0*L2*L29 |
| 15 | 2740 | L0*L0*L5*L23 |
| 16 | 157 | L0*L0*L5*L29 |
| 17 | 593 | L0*L0*L6*L25 |
| 18 | 774 | L0*L0*L9*L11 |
| 19 | 1267 | L0*L0*L10*L30 |
| 20 | 1913 | L0*L0*L11*L13 |
| 21 | 931 | L0*L0*L12*L29 |
| 22 | 1267 | L0*L0*L15*L25 |
| 23 | 593 | L0*L0*L20*L25 |
| 24 | 775 | L0*L0*L22*L30 |
| 25 | 1031 | L0*L1*L12*L17 |
| 26 | 1913 | L0*L1*L13*L25 |
| 27 | 32554 | L0*L2*L2*L25 |
| 28 | 13094 | L0*L2*L5*L6 |
| 29 | 31015 | L0*L2*L5*L17 |
| 30 | 10286 | L0*L2*L5*L29 |
| 31 | 1573 | L0*L2*L5*L30 |
| 32 | 1329 | L0*L2*L9*L30 |
| 33 | 2765 | L0*L2*L11*L11 |
| 34 | 22131 | L0*L2*L13*L13 |
| 35 | 39207 | L0*L2*L13*L30 |
| 36 | 11854 | L0*L2*L17*L19 |
| 37 | 5558 | L0*L2*L17*L23 |
| 38 | 2658 | L0*L2*L21*L30 |
| 39 | 44180 | L0*L2*L23*L30 |
| 40 | 6935 | L0*L2*L29*L30 |
| 41 | 1733 | L0*L4*L17*L17 |
| 42 | 16341 | L0*L5*L5*L5 |
| 43 | 3831 | L0*L5*L5*L13 |
| 44 | 2993 | L0*L5*L6*L11 |
| 45 | 11024 | L0*L5*L6*L15 |
| 46 | 24565 | L0*L5*L11*L21 |
| 47 | 23775 | L0*L5*L12*L15 |
| 48 | 54084 | L0*L5*L14*L25 |
| 49 | 2816 | L0*L5*L19*L30 |
| 50 | 16287 | L0*L5*L21*L21 |
| 51 | 31527 | L0*L5*L23*L25 |
| 52 | 15185 | L0*L5*L25*L25 |
| 53 | 13399 | L0*L5*L25*L26 |
| 54 | 881 | L0*L6*L6*L26 |
| 55 | 7181 | L0*L6*L13*L13 |
| 56 | 796 | L0*L6*L26*L30 |
| 57 | 2936 | L0*L8*L9*L25 |
| 58 | 4868 | L0*L9*L18*L25 |
| 59 | 7771 | L0*L11*L16*L25 |
| 60 | 1247 | L0*L11*L21*L21 |
| 61 | 6214 | L0*L11*L21*L29 |
| 62 | 10496 | L0*L12*L15*L25 |
| 63 | 6288 | L0*L12*L17*L17 |
| 64 | 851 | L0*L13*L14*L30 |
| 65 | 1962 | L0*L13*L17*L28 |
| 66 | 8424 | L0*L15*L17*L25 |
| 67 | 12491 | L0*L17*L22*L25 |
| 68 | 6221 | L0*L21*L25*L25 |
| 69 | 687 | L0*L21*L25*L26 |
| 70 | 5939 | L1*L1*L17*L22 |
| 71 | 10922 | L1*L3*L5*L17 |
| 72 | 13335 | L1*L4*L17*L25 |
| 73 | 1343 | L1*L5*L5*L11 |
| 74 | 2308 | L1*L5*L12*L17 |
| 75 | 6962 | L1*L5*L17*L27 |
| 76 | 18444 | L1*L5*L25*L29 |
| 77 | 5533 | L1*L6*L11*L11 |
| 78 | 70 | L1*L6*L25*L30 |
| 79 | 18359 | L1*L9*L11*L25 |
| 80 | 630 | L1*L9*L17*L22 |
| 81 | 10194 | L1*L11*L17*L22 |
| 82 | 6288 | L1*L12*L17*L17 |
| 83 | 3514 | L1*L17*L17*L22 |
| 84 | 17138 | L1*L17*L22*L22 |
| 85 | 7927 | L1*L17*L24*L29 |
| 86 | 7501 | L1*L17*L25*L29 |
| 87 | 931 | L1*L25*L28*L29 |
| 88 | 1591 | L2*L2*L4*L17 |
| 89 | 5450 | L2*L2*L17*L17 |
| 90 | 3564 | L2*L3*L30*L30 |
| 91 | 38573 | L2*L5*L6*L15 |
| 92 | 7448 | L2*L6*L9*L25 |
| 93 | 10173 | L2*L6*L15*L25 |
| 94 | 2490 | L2*L6*L15*L30 |
| 95 | 13055 | L2*L6*L17*L26 |
| 96 | 3699 | L2*L6*L19*L30 |
| 97 | 77 | L2*L6*L20*L25 |
| 98 | 31086 | L2*L11*L12*L17 |
| 99 | 3857 | L2*L11*L21*L25 |
| 100 | 9226 | L2*L12*L21*L25 |
| 101 | 3831 | L2*L13*L13*L30 |
| 102 | 10153 | L2*L14*L17*L26 |
| 103 | 12605 | L2*L15*L17*L20 |
| 104 | 17633 | L2*L15*L17*L22 |
| 105 | 229 | L2*L17*L17*L19 |
| 106 | 120 | L2*L17*L17*L20 |
| 107 | 1747 | L2*L17*L20*L21 |
| 108 | 14274 | L2*L17*L20*L26 |
| 109 | 29374 | L2*L26*L30*L30 |
| 110 | 1460 | L2*L29*L30*L30 |
| 111 | 4347 | L3*L3*L12*L17 |
| 112 | 3711 | L3*L5*L10*L17 |
| 113 | 1796 | L3*L5*L17*L22 |
| 114 | 271 | L3*L9*L23*L25 |
| 115 | 14869 | L3*L13*L17*L18 |
| 116 | 67 | L3*L17*L22*L23 |
| 117 | 3539 | L4*L5*L17*L24 |
| 118 | 135 | L4*L15*L30*L30 |
| 119 | 4341 | L4*L17*L22*L29 |
| 120 | 118 | L4*L17*L27*L29 |
| 121 | 1569 | L5*L5*L5*L7 |
| 122 | 4035 | L5*L5*L5*L15 |
| 123 | 29758 | L5*L5*L6*L9 |
| 124 | 36730 | L5*L5*L6*L21 |
| 125 | 13986 | L5*L5*L6*L26 |
| 126 | 12544 | L5*L5*L9*L15 |
| 127 | 1898 | L5*L5*L11*L20 |
| 128 | 516 | L5*L5*L12*L29 |
| 129 | 1502 | L5*L5*L21*L24 |
| 130 | 13734 | L5*L5*L21*L29 |
| 131 | 4822 | L5*L6*L6*L6 |
| 132 | 1251 | L5*L6*L6*L9 |
| 133 | 3053 | L5*L6*L6*L12 |
| 134 | 3335 | L5*L6*L11*L21 |
| 135 | 9985 | L5*L6*L12*L25 |
| 136 | 14963 | L5*L6*L14*L17 |
| 137 | 84149 | L5*L6*L21*L29 |
| 138 | 1282 | L5*L8*L17*L21 |
| 139 | 7084 | L5*L9*L17*L24 |
| 140 | 61271 | L5*L9*L21*L29 |
| 141 | 21437 | L5*L9*L25*L28 |
| 142 | 9390 | L5*L9*L25*L30 |
| 143 | 2067 | L5*L9*L26*L30 |
| 144 | 3393 | L5*L10*L16*L25 |
| 145 | 11618 | L5*L11*L14*L17 |
| 146 | 1081 | L5*L11*L19*L29 |
| 147 | 682 | L5*L11*L29*L30 |
| 148 | 1032 | L5*L13*L17*L22 |
| 149 | 18003 | L5*L15*L24*L29 |
| 150 | 120 | L5*L16*L17*L17 |
| 151 | 5165 | L5*L17*L18*L18 |
| 152 | 426 | L5*L17*L19*L29 |
| 153 | 14991 | L5*L17*L24*L30 |
| 154 | 40543 | L5*L19*L25*L29 |
| 155 | 13069 | L5*L21*L23*L25 |
| 156 | 8727 | L5*L23*L30*L30 |
| 157 | 1675 | L5*L25*L25*L29 |
| 158 | 27682 | L5*L25*L27*L29 |
| 159 | 576 | L6*L6*L6*L26 |
| 160 | 3766 | L6*L6*L11*L23 |
| 161 | 144 | L6*L6*L11*L29 |
| 162 | 881 | L6*L6*L12*L19 |
| 163 | 576 | L6*L6*L12*L21 |
| 164 | 990 | L6*L6*L12*L30 |
| 165 | 8629 | L6*L6*L17*L23 |
| 166 | 87 | L6*L6*L23*L23 |
| 167 | 7952 | L6*L6*L23*L29 |
| 168 | 576 | L6*L7*L7*L25 |
| 169 | 1487 | L6*L8*L25*L29 |
| 170 | 5638 | L6*L9*L25*L27 |
| 171 | 5490 | L6*L11*L11*L21 |
| 172 | 1848 | L6*L11*L19*L29 |
| 173 | 1276 | L6*L11*L25*L26 |
| 174 | 11836 | L6*L12*L17*L24 |
| 175 | 15253 | L6*L12*L25*L30 |
| 176 | 1948 | L6*L13*L13*L13 |
| 177 | 42 | L6*L13*L13*L14 |
| 178 | 9813 | L6*L16*L25*L29 |
| 179 | 5299 | L6*L17*L23*L24 |
| 180 | 985 | L6*L17*L26*L29 |
| 181 | 3376 | L6*L19*L25*L29 |
| 182 | 5490 | L6*L21*L24*L25 |
| 183 | 366 | L6*L21*L25*L28 |
| 184 | 366 | L6*L25*L30*L30 |
| 185 | 9190 | L7*L9*L17*L22 |
| 186 | 756 | L7*L12*L14*L17 |
| 187 | 985 | L7*L16*L17*L26 |
| 188 | 7793 | L7*L17*L22*L28 |
| 189 | 9751 | L8*L10*L12*L17 |
| 190 | 3665 | L8*L17*L24*L28 |
| 191 | 7063 | L8*L26*L26*L26 |
| 192 | 3098 | L9*L11*L11*L12 |
| 193 | 16923 | L9*L11*L19*L25 |
| 194 | 64 | L9*L12*L24*L25 |
| 195 | 4007 | L9*L15*L17*L22 |
| 196 | 2174 | L9*L17*L17*L25 |
| 197 | 10294 | L9*L17*L22*L23 |
| 198 | 6256 | L9*L17*L22*L24 |
| 199 | 3421 | L9*L19*L19*L25 |
| 200 | 136 | L9*L22*L22*L22 |
| 201 | 11057 | L9*L23*L25*L25 |
| 202 | 814 | L9*L25*L25*L25 |
| 203 | 3878 | L9*L25*L25*L27 |
| 204 | 1974 | L10*L10*L30*L30 |
| 205 | 2725 | L10*L11*L17*L17 |
| 206 | 426 | L10*L17*L17*L28 |
| 207 | 1415 | L10*L17*L17*L30 |
| 208 | 15426 | L10*L17*L19*L30 |
| 209 | 11352 | L10*L17*L26*L26 |
| 210 | 2481 | L10*L22*L25*L30 |
| 211 | 14722 | L10*L22*L30*L30 |
| 212 | 10056 | L10*L25*L29*L29 |
| 213 | 3167 | L10*L25*L30*L30 |
| 214 | 692 | L11*L11*L11*L20 |
| 215 | 17290 | L11*L11*L12*L17 |
| 216 | 5708 | L11*L11*L17*L27 |
| 217 | 13014 | L11*L11*L29*L30 |
| 218 | 45777 | L11*L12*L15*L29 |
| 219 | 5239 | L11*L12*L17*L19 |
| 220 | 12245 | L11*L12*L17*L20 |
| 221 | 4326 | L11*L13*L25*L27 |
| 222 | 10513 | L11*L14*L22*L30 |
| 223 | 14969 | L11*L14*L25*L26 |
| 224 | 34803 | L11*L14*L25*L29 |
| 225 | 2995 | L11*L15*L21*L21 |
| 226 | 17706 | L11*L15*L21*L29 |
| 227 | 5226 | L11*L15*L22*L29 |
| 228 | 120 | L11*L17*L17*L17 |
| 229 | 2 | L11*L17*L17*L27 |
| 230 | 6313 | L11*L17*L18*L24 |
| 231 | 1700 | L11*L18*L22*L25 |
| 232 | 2007 | L11*L18*L25*L29 |
| 233 | 107 | L12*L12*L12*L29 |
| 234 | 46979 | L12*L12*L15*L15 |
| 235 | 5167 | L12*L12*L17*L25 |
| 236 | 4107 | L12*L12*L17*L30 |
| 237 | 107 | L12*L13*L13*L17 |
| 238 | 878 | L12*L13*L13*L30 |
| 239 | 5167 | L12*L13*L17*L22 |
| 240 | 14627 | L12*L15*L15*L22 |
| 241 | 4107 | L12*L17*L20*L26 |
| 242 | 2680 | L12*L17*L21*L22 |
| 243 | 34860 | L12*L17*L22*L24 |
| 244 | 34860 | L12*L17*L22*L25 |
| 245 | 6190 | L12*L17*L22*L30 |
| 246 | 35376 | L12*L22*L22*L29 |
| 247 | 1676 | L12*L22*L25*L28 |
| 248 | 33285 | L13*L13*L14*L30 |
| 249 | 1962 | L13*L17*L18*L30 |
| 250 | 521 | L13*L19*L30*L30 |
| 251 | 3341 | L14*L17*L24*L28 |
| 252 | 6403 | L14*L17*L25*L30 |
| 253 | 10593 | L14*L25*L30*L30 |
| 254 | 2234 | L14*L26*L26*L26 |
| 255 | 3564 | L15*L15*L22*L22 |
| 256 | 1460 | L15*L15*L24*L29 |
| 257 | 6792 | L15*L22*L25*L30 |
| 258 | 7092 | L15*L25*L29*L29 |
| 259 | 8997 | L17*L18*L20*L24 |
| 260 | 9066 | L17*L18*L20*L25 |
| 261 | 30249 | L17*L18*L22*L25 |
| 262 | 10100 | L17*L18*L23*L30 |
| 263 | 11370 | L17*L18*L24*L30 |
| 264 | 9206 | L17*L21*L24*L26 |
| 265 | 2630 | L17*L21*L25*L30 |
| 266 | 4035 | L17*L22*L22*L25 |
| 267 | 7480 | L17*L22*L24*L27 |
| 268 | 13047 | L17*L23*L25*L27 |
| 269 | 17546 | L17*L24*L25*L28 |
| 270 | 10319 | L18*L22*L25*L30 |
| 271 | 4097 | L19*L25*L25*L30 |
| 272 | 3366 | L19*L25*L30*L30 |
| 273 | 380 | L20*L25*L25*L30 |
| 274 | 9931 | L20*L25*L29*L29 |
| 275 | 3150 | L21*L21*L23*L25 |
| 276 | 5710 | L22*L25*L25*L29 |
| 277 | 11513 | L22*L26*L30*L30 |
| 278 | 3889 | L24*L25*L25*L29 |
| 279 | 5418 | L24*L25*L26*L30 |
| 280 | 5674 | L24*L25*L29*L29 |
| 281 | 7674 | L25*L28*L29*L30 |
| 282 | 38041 | ABC+*L0*L2 |
| 283 | 1913 | ABC+*L0*L26 |
| 284 | 33898 | ABC+*L2*L17 |
| 285 | 28858 | ABC+*L2*L25 |
| 286 | 33718 | ABC+*L2*L30 |
| 287 | 2796 | ABC+*L3*L11 |
| 288 | 12270 | ABC+*L5*L11 |
| 289 | 368 | ABC+*L5*L18 |
| 290 | 48214 | ABC+*L5*L29 |
| 291 | 9046 | ABC+*L6*L9 |
| 292 | 1062 | ABC+*L6*L19 |
| 293 | 9844 | ABC+*L6*L23 |
| 294 | 16789 | ABC+*L6*L29 |
| 295 | 15397 | ABC+*L7*L25 |
| 296 | 47242 | ABC+*L8*L25 |
| 297 | 1516 | ABC+*L9*L9 |
| 298 | 10176 | ABC+*L9*L12 |
| 299 | 5021 | ABC+*L11*L19 |
| 300 | 32812 | ABC+*L11*L21 |
| 301 | 2729 | ABC+*L11*L23 |
| 302 | 41096 | ABC+*L12*L15 |
| 303 | 3831 | ABC+*L12*L22 |
| 304 | 2308 | ABC+*L12*L29 |
| 305 | 11723 | ABC+*L13*L25 |
| 306 | 1588 | ABC+*L13*L30 |
| 307 | 13270 | ABC+*L17*L29 |
| 308 | 28447 | ABC+*L23*L29 |
| 309 | 3108 | ABC+*L25*L28 |
| 310 | 50529 | ABC+*L25*L29 |
| 311 | 49423 | ABC+*L26*L30 |
| 312 | 7124 | ABC+*L29*L29 |
| 313 | 7117 | ABD+*L17*L30 |
| 314 | 9599 | ABH+*L5*L25 |
| 315 | 785 | AFG+*L17*L24 |
| 316 | 10619 | AGH+*L11*L17 |
| 317 | 2034 | AGH+*L24*L25 |
| 318 | 5484 | BCD+*L1*L3 |
| 319 | 783 | BCD+*L1*L6 |
| 320 | 21472 | BCD+*L1*L12 |
| 321 | 1272 | BCD+*L1*L14 |
| 322 | 6099 | BCD+*L1*L21 |
| 323 | 67 | BCD+*L2*L5 |
| 324 | 14727 | BCD+*L3*L9 |
| 325 | 6602 | BCD+*L3*L18 |
| 326 | 6602 | BCD+*L3*L29 |
| 327 | 17699 | BCD+*L4*L5 |
| 328 | 14927 | BCD+*L4*L30 |
| 329 | 26185 | BCD+*L5*L8 |
| 330 | 11763 | BCD+*L5*L11 |
| 331 | 58940 | BCD+*L5*L15 |
| 332 | 7952 | BCD+*L6*L19 |
| 333 | 87 | BCD+*L6*L23 |
| 334 | 3009 | BCD+*L7*L8 |
| 335 | 6722 | BCD+*L11*L13 |
| 336 | 35309 | BCD+*L12*L22 |
| 337 | 15948 | BCD+*L12*L25 |
| 338 | 5715 | BCD+*L12*L29 |
| 339 | 6891 | BCD+*L12*L30 |
| 340 | 1562 | BCD+*L13*L14 |
| 341 | 11058 | BCD+*L14*L30 |
| 342 | 2620 | BCD+*L15*L28 |
| 343 | 18310 | BCD+*L15*L29 |
| 344 | 1062 | BCD+*L18*L19 |
| 345 | 1276 | BCD+*L25*L25 |
| 346 | 2417 | BCD+*L25*L27 |
| 347 | 2881 | BCD+*L26*L30 |
| 348 | 4747 | BCE+*L25*L25 |
| 349 | 120 | BDF+*L17*L17 |
| 350 | 229 | BDG+*L14*L17 |
| 351 | 17872 | BEF+*L9*L25 |
| 352 | 630 | BGH+*L9*L17 |
| 353 | 14341 | CDE+*L0*L9 |
| 354 | 10269 | CDE+*L0*L17 |
| 355 | 17146 | CDE+*L0*L26 |
| 356 | 6662 | CDE+*L1*L15 |
| 357 | 67 | CDE+*L2*L3 |
| 358 | 1511 | CDE+*L3*L12 |
| 359 | 1785 | CDE+*L4*L22 |
| 360 | 34500 | CDE+*L5*L9 |
| 361 | 24028 | CDE+*L5*L16 |
| 362 | 13530 | CDE+*L5*L26 |
| 363 | 4246 | CDE+*L6*L6 |
| 364 | 45555 | CDE+*L6*L11 |
| 365 | 15582 | CDE+*L6*L19 |
| 366 | 7878 | CDE+*L6*L29 |
| 367 | 20085 | CDE+*L7*L25 |
| 368 | 52284 | CDE+*L9*L12 |
| 369 | 43207 | CDE+*L10*L30 |
| 370 | 97366 | CDE+*L11*L29 |
| 371 | 42924 | CDE+*L12*L15 |
| 372 | 8233 | CDE+*L12*L23 |
| 373 | 3053 | CDE+*L13*L27 |
| 374 | 1558 | CDE+*L15*L24 |
| 375 | 9096 | CDE+*L17*L27 |
| 376 | 16471 | CDE+*L19*L22 |
| 377 | 60689 | CDE+*L21*L29 |
| 378 | 11078 | CDE+*L25*L27 |
| 379 | 4341 | CDG+*L17*L22 |
| 380 | 5810 | CDH+*L17*L20 |
| 381 | 8440 | CEH+*L17*L30 |
| 382 | 120 | CGH+*L17*L17 |
| 383 | 7757 | CGH+*L17*L30 |
| 384 | 32164 | DEF+*L0*L5 |
| 385 | 687 | DEF+*L0*L13 |
| 386 | 2582 | DEF+*L2*L11 |
| 387 | 2198 | DEF+*L9*L19 |
| 388 | 380 | DEF+*L11*L14 |
| 389 | 1967 | DEF+*L11*L26 |
| 390 | 10769 | DEF+*L12*L29 |
| 391 | 11368 | DEF+*L19*L29 |
| 392 | 5198 | DEF+*L29*L30 |
| 393 | 6484 | EFG+*L0*L2 |
| 394 | 43353 | EFG+*L0*L4 |
| 395 | 11598 | EFG+*L0*L14 |
| 396 | 19261 | EFG+*L2*L2 |
| 397 | 14772 | EFG+*L2*L11 |
| 398 | 29796 | EFG+*L2*L13 |
| 399 | 34124 | EFG+*L2*L18 |
| 400 | 16180 | EFG+*L2*L20 |
| 401 | 14519 | EFG+*L2*L28 |
| 402 | 11184 | EFG+*L2*L29 |
| 403 | 4489 | EFG+*L3*L6 |
| 404 | 8814 | EFG+*L3*L11 |
| 405 | 13622 | EFG+*L3*L19 |
| 406 | 19466 | EFG+*L3*L23 |
| 407 | 1544 | EFG+*L4*L10 |
| 408 | 4430 | EFG+*L4*L17 |
| 409 | 30745 | EFG+*L4*L30 |
| 410 | 10541 | EFG+*L5*L8 |
| 411 | 23407 | EFG+*L5*L20 |
| 412 | 764 | EFG+*L6*L13 |
| 413 | 796 | EFG+*L6*L19 |
| 414 | 12666 | EFG+*L6*L25 |
| 415 | 2995 | EFG+*L6*L27 |
| 416 | 2520 | EFG+*L9*L26 |
| 417 | 26394 | EFG+*L12*L15 |
| 418 | 6185 | EFG+*L13*L13 |
| 419 | 18461 | EFG+*L15*L19 |
| 420 | 12205 | EFG+*L15*L28 |
| 421 | 521 | EFG+*L19*L30 |
| 422 | 7940 | EFG+*L22*L29 |
| 423 | 16815 | EFG+*L23*L30 |
| 424 | 11270 | EFG+*L24*L25 |
| 425 | 9925 | EFH+*L25*L29 |
| 426 | 3621 | EGH+*L23*L25 |
| 427 | 18685 | EGH+*L25*L30 |
| 428 | 931 | FGH+*L0*L0 |
| 429 | 6165 | FGH+*L0*L12 |
| 430 | 796 | FGH+*L0*L20 |
| 431 | 13696 | FGH+*L0*L25 |
| 432 | 15470 | FGH+*L2*L6 |
| 433 | 17959 | FGH+*L5*L15 |
| 434 | 24601 | FGH+*L5*L30 |
| 435 | 3139 | FGH+*L6*L21 |
| 436 | 14470 | FGH+*L8*L13 |
| 437 | 19168 | FGH+*L8*L30 |
| 438 | 6269 | FGH+*L11*L11 |
| 439 | 5413 | FGH+*L11*L12 |
| 440 | 12463 | FGH+*L11*L25 |
| 441 | 36057 | FGH+*L12*L30 |
| 442 | 26696 | FGH+*L14*L25 |
| 443 | 19240 | FGH+*L17*L25 |
| 444 | 120 | FGH+*L17*L29 |
| 445 | 4308 | FGH+*L18*L30 |
| 446 | 11606 | FGH+*L25*L28 |
| 447 | 3202 | FGH+*L27*L30 |
| 448 | 5916 | FGH+*L29*L30 |
| 449 | 16202 | ER*L1*L25 |
| 450 | 14419 | ER*L3*L17 |
| 451 | 69 | ER*L3*L22 |
| 452 | 30670 | ER*L4*L17 |
| 453 | 6156 | ER*L7*L25 |
| 454 | 18320 | ER*L9*L22 |
| 455 | 204 | ER*L12*L22 |
| 456 | 6002 | ER*L13*L13 |
| 457 | 3659 | ER*L13*L18 |
| 458 | 25181 | ER*L15*L17 |
| 459 | 1460 | ER*L15*L29 |
| 460 | 91 | ER*L17*L20 |
| 461 | 16836 | ER*L17*L23 |
| 462 | 689 | ER*L25*L25 |
| 463 | 3309 | P_AHGFE*L3*L25 |
| 464 | 2034 | P_AHGFE*L12*L25 |
| 465 | 19400 | P_AHGFE*L17*L25 |
| 466 | 3487 | P_AHGFE*L23*L25 |
| 467 | 4469 | P_BCDEF*L5*L17 |
| 468 | 3009 | P_BCDEF*L6*L27 |
| 469 | 43898 | P_BCDEF*L13*L14 |
| 470 | 15003 | P_BCDEF*L26*L26 |
| 471 | 39306 | P_DEFGH*L1*L22 |
| 472 | 8469 | P_DEFGH*L2*L17 |
| 473 | 2726 | P_DEFGH*L5*L25 |
| 474 | 2384 | P_DEFGH*L8*L27 |
| 475 | 5017 | P_DEFGH*L11*L25 |
| 476 | 1948 | P_DEFGH*L12*L13 |
| 477 | 4107 | P_DEFGH*L12*L17 |
| 478 | 7181 | P_DEFGH*L13*L18 |
| 479 | 2657 | P_DEFGH*L14*L26 |
| 480 | 35309 | P_DEFGH*L22*L22 |
| 481 | 7375 | P_DEFGH*L22*L29 |
| 482 | 197 | P_DEFGH*L27*L30 |
| 483 | 67 | P_ABCDE*L2*L24 |
| 484 | 3026 | P_ABCDE*L2*L30 |
| 485 | 31847 | P_ABCDE*L4*L17 |
| 486 | 7771 | P_ABCDE*L5*L26 |
| 487 | 11619 | P_ABCDE*L6*L14 |
| 488 | 2613 | P_ABCDE*L6*L26 |
| 489 | 2822 | P_ABCDE*L13*L13 |
| 490 | 14142 | P_ABCDE*L13*L26 |
| 491 | 49579 | P_ABCDE*L14*L26 |
| 492 | 1460 | P_ABCDE*L18*L30 |
| 493 | 4103 | P_ABCDE*L23*L30 |
| 494 | 29653 | P_ABCDE*L26*L30 |
| 495 | 7480 | BAD*L0*L3 |
| 496 | 10140 | BAD*L0*L9 |
| 497 | 2713 | BAD*L0*L17 |
| 498 | 10238 | BAD*L0*L22 |
| 499 | 25111 | BAD*L0*L23 |
| 500 | 7284 | BAD*L1*L12 |
| 501 | 4637 | BAD*L1*L27 |
| 502 | 7687 | BAD*L3*L19 |
| 503 | 17760 | BAD*L3*L30 |
| 504 | 4920 | BAD*L4*L11 |
| 505 | 10694 | BAD*L4*L25 |
| 506 | 39347 | BAD*L4*L30 |
| 507 | 43639 | BAD*L5*L8 |
| 508 | 9478 | BAD*L5*L16 |
| 509 | 8549 | BAD*L5*L19 |
| 510 | 3831 | BAD*L5*L22 |
| 511 | 19215 | BAD*L6*L11 |
| 512 | 3596 | BAD*L6*L19 |
| 513 | 1071 | BAD*L6*L20 |
| 514 | 13975 | BAD*L8*L13 |
| 515 | 407 | BAD*L8*L19 |
| 516 | 456 | BAD*L11*L11 |
| 517 | 7708 | BAD*L11*L13 |
| 518 | 15486 | BAD*L11*L19 |
| 519 | 6062 | BAD*L13*L19 |
| 520 | 5167 | BAD*L13*L26 |
| 521 | 22522 | BAD*L14*L24 |
| 522 | 5450 | BAD*L17*L23 |
| 523 | 751 | BAD*L17*L28 |
| 524 | 22187 | BAD*L19*L22 |
| 525 | 19382 | BAD*L21*L22 |
| 526 | 8234 | BAD*L21*L28 |
| 527 | 67 | BAD*L22*L22 |
| 528 | 3831 | BAD*L24*L26 |
| 529 | 17388 | BAD*L25*L27 |
| 530 | 13246 | BAD*L25*L28 |
| 531 | 10713 | BAD*L25*L29 |
| 532 | 16259 | BAD*L26*L30 |
| 533 | 1270 | BAD*L30*L30 |
| 534 | 2549 | ABC+*BCD+ |
| 535 | 12863 | ABC+*DEF+ |
| 536 | 30810 | ABC+*FGH+ |
| 537 | 5652 | ABC+*ER |
| 538 | 22428 | ABD+*EFG+ |
| 539 | 3766 | ADF+*BCD+ |
| 540 | 14727 | BCD+*ER |
| 541 | 2284 | CDE+*CEF+ |
| 542 | 63148 | CDE+*FGH+ |
| 543 | 19746 | CDE+*ER |
| 544 | 10514 | CDE+*P_ABCDE |
| 545 | 1010 | CFG+*BAD |
| 546 | 16165 | DEF+*EFG+ |
| 547 | 764 | DEG+*EFG+ |
| 548 | 1756 | EFG+*EGH+ |
| 549 | 11073 | ER*ER |
| 550 | 21961 | ER*P_DEFGH |
| 551 | 11755 | P_BCDEF*P_DEFGH |
| 552 | 5341 | P_DEFGH*P_ABCDE |
| 553 | 9880 | P_DEFGH*BAD |
| 554 | 3682 | P_ABCDE*P_ABCDE |
