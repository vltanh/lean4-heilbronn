# Seven boundary points: the complete top 3/5 OP-line class

This note excludes the entire single-exterior N7 placement in which
the shorter arc cut off by OP consists of H,G,F. The point G may have
any inward depth below the top square side. No assumption on the sign
of the vertical displacement from O to P is made.

The proof has eleven exhaustive sign rows and 3,183 printed positive
integer terms in fixed cubic sums. Their nonnegative factors, signs,
occupancies, and rational ranges are established below. Exact coefficient
bounds make every sum negative. The optional standard-library checker
`check_n7_three_five_top.py` reconstructs the factors and reads the
printed tables; a search or optimizer is not a premise.

All areas are doubled. Write

    s=93/1000,  Gamma2=4+2sqrt(3),  K=149/20<Gamma2.

## 1. Geometry and forced placement

Use the single-exterior normalization of N7_OP_LINE_CAPS.md:

    A=(0,a), B=(b,0), C=(c,0), D=(1,d),
    E=(1,e), F=(f,1), G=(g,z), H=(0,h),
    O=(x,y), P=(u,v),

where G is above HF and below the top square side. The seven other
contacts are on their indicated square sides and

    0<a<h<1, 0<b<c<1, 0<d<e<1,
    b<=f<=c, d<=h, a<=e, 0<g<f, h<z<1.

The actual octagon A,B,C,D,E,F,G,H is strictly convex. The two points
O,P lie strictly inside the seven-contact heptagon A,B,C,D,E,F,H.
For actual points I,J,K put IJK=det(J-I,K-I). Every actual unsigned
triangle determinant is at least s. Orient OP so that

    FOP,GOP,HOP>0;       AOP,BOP,COP,DOP,EOP<0.       (1)

For a hull vertex I let d_I=IOP. The identity

    HOP-AOP=(u-x)(h-a)>0

gives u>x. As in the convex chord argument of N7_OP_LINE_CAPS.md,
both points lie in the five-vertex cap AEFGH, on the inner side of HF:

    AEO,AEP,FHO,FHP>0.                               (2)

We use the following capacity-one facts independently of (1). Every
four-consecutive-vertex cap of this actual octagon has capacity one,
by the metric and endpoint proofs of N7_OP_LINE_CAPS.md. Each
consecutive ear also has capacity one. In addition, AEF and BEF have
doubled areas below 69/100. Indeed, projecting G to (g,1) preserves
or increases the six boundary ears

    ABC, BCD, CDE, FGH, AGH, HAB.

These are precisely the six inequalities in N8_TRIANGLE_CAPS.md
Sections 1-2. Their proof and its main-diagonal reflection give the
two area estimates; this transfer was spelled out without additional
sign assumptions in N7_PROJECTED_SIGNS.md Section 3. Since
Gamma2*s>69/100, both actual triangles have capacity one.

The diagonal AF splits the five-vertex cap into the quadrilateral
AHGF and the triangle AEF. Neither can contain both points. Thus AF
separates them, and

    AFP-AFO=d_A-d_F<0

fixes their order. Hence AFO>0>AFP. Intersecting with (2) puts O in
AHF and P in AEF.

There is a useful uniform rule for the other four-vertex caps. If
I,J are the endpoints of its cyclic four-vertex chain, the cap lies
on the negative side of IJ. Along OP,

    IJP-IJO=d_I-d_J.                                 (3)

If d_I<0<d_J and IJO were negative, both points would be in that cap.
Thus IJO>0. If d_I>0>d_J, the corresponding conclusion is IJP>0.
Applying this to DEFG,HABC,GHAB,EFGH gives, respectively,

    DGO>0,       CHP<0,       BGP<0,       EHO>0.

In particular O is also in AEH. Two further signs, valid with z<1,
follow from the exact identities

    f*AGP=g*AFP-u*AFG<0,
    z*BHP=h*BGP-v[b(z-h)+hg]<0.                      (4)

Thus AGP,BHP are negative. All quantities whose positivity is used
in (4), including AFG, are positive actual hull quantities.

The complete common placement used below is therefore

    O in AHF and AEH,       P in AEF,
    AFO>0>AFP, DGO>0, CHP<0, AGP<0,
    BGP<0, BHP<0, EHO>0.                             (5)

## 2. The eleven exhaustive rows and their actual signs

All triangles in this section are actual, so none has zero determinant.
The following binary splits are exhaustive: first BHO; on its negative
side DHO; then EHP. Split the EHP-positive child by BGO. On the
EHP-negative child split AGO. If AGO is negative, split BGO; its
negative child is split by CHO and then CFP, and its positive child
is split by CFP and then BFP. This gives precisely:

| Row | Successive sign choices |
|---|---|
| R1 | BHO+ |
| R2 | BHO-, DHO- |
| R3 | BHO-, DHO+, EHP+, BGO+ |
| R4 | BHO-, DHO+, EHP+, BGO- |
| R5 | BHO-, DHO+, EHP-, AGO+ |
| R6 | BHO-, DHO+, EHP-, AGO-, BGO-, CHO+ |
| R7 | BHO-, DHO+, EHP-, AGO-, BGO-, CHO-, CFP+ |
| R8 | BHO-, DHO+, EHP-, AGO-, BGO-, CHO-, CFP- |
| R9 | BHO-, DHO+, EHP-, AGO-, BGO+, CFP- |
| R10 | BHO-, DHO+, EHP-, AGO-, BGO+, CFP+, BFP+ |
| R11 | BHO-, DHO+, EHP-, AGO-, BGO+, CFP+, BFP- |

For clarity, here are the common signs for every hull-pair triangle
with O or P. A question mark means the sign is not yet determined. Every
cyclic-order hull triple has positive sign, and the eight OP signs
are (1).

| Hull pair IJ | IJO | IJP |
|---|---:|---:|
| AB | + | + |
| AC | + | + |
| AD | + | + |
| AE | + | + |
| AF | + | − |
| AG | ? | − |
| AH | − | − |
| BC | + | + |
| BD | + | + |
| BE | + | + |
| BF | + | ? |
| BG | ? | − |
| BH | ? | − |
| CD | + | + |
| CE | + | + |
| CF | + | ? |
| CG | ? | ? |
| CH | ? | − |
| DE | + | + |
| DF | + | ? |
| DG | + | ? |
| DH | ? | ? |
| EF | + | + |
| EG | + | ? |
| EH | + | ? |
| FG | + | + |
| FH | + | + |
| GH | + | + |

The following elementary rules justify this chart and every further
sign used in an individual row.

1. A point lies inside an actual triangle exactly when all three
   cyclic edge tests are positive. If its containing triangle's
   vertices lie on one closed side of a chord, so does the point;
   strictness follows from the actual triangle-area premise.
2. If the endpoints of a chord have opposite OP signs, (3) is strict.
   A positive earlier value forces a positive later value when the
   expression increases; a negative later value forces a negative
   earlier value. Reverse the roles when it decreases.
3. If one point occupies a proved capacity-one polygon, the other
   cannot satisfy all its positive edge tests. When all but one
   edge tests are already positive, the final test is negative.

The capacity-one polygons in rule 3 are exactly the eight consecutive
ears, the eight four-consecutive caps, AEF, and BEF. Applying these
rules to (5) gives the common chart. Applying them also to each row's
listed choices gives these additional signs:

| Row | Additional positive actual triangles | Additional negative actual triangles |
|---|---|---|
| R1 | BGO, BHO, CGO, CHO, DHO | none |
| R2 | none | BHO, CHO, DHO, DHP |
| R3 | BGO, CGO, DHO, EGP, EHP | BHO |
| R4 | DHO, EGP, EHP | AGO, BGO, BHO |
| R5 | AGO, BGO, CGO, DHO | BHO, DHP, EHP |
| R6 | CGO, CHO, DHO | AGO, BGO, BHO, DHP, EHP |
| R7 | CFP, DFP, DHO | AGO, BGO, BHO, CHO, DHP, EHP |
| R8 | DHO | AGO, BFP, BGO, BHO, CFP, CGP, CHO, DHP, EHP |
| R9 | BGO, CGO, DHO | AGO, BFP, BHO, CFP, CGP, DHP, EHP |
| R10 | BFP, BGO, CFP, CGO, DFP, DHO | AGO, BHO, DHP, EHP |
| R11 | BGO, CFP, CGO, DFP, DHO | AGO, BFP, BHO, DHP, EHP |

No additional orientation choices are hidden in this propagation.
It merely records consequences of that row's choices and the three
proved rules. The finite edge witnesses for all occupancy factors
actually used in the sums are printed in Section 5.

## 3. Rational coordinate ranges, including the full AGO-positive row

Use the coordinate order

    (a,b,c,d,e,f,g,h,z,x,y,u,v).

For every row except R5 use the constants and the first nine bounds
from N7_OP_LINE_CAPS.md Section 5:

    eta=93/790,                 ell=7347/69700,
    h0=4s/(1-ell),              h1=1-s,
    f0=4s/(1-eta),              x0=s/(h1-eta),
    g1=1-ell-s/(1-h0).

The full closed box is:

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
| x,u | x0 | 1-ell |
| y,v | eta | 1-s |

The side-pair triangles give x,u>=s/(h-a)>=x0, x,u<=1-ell,
and y,v>=eta. Here the upper ordinate bound uses the fact that O,P
are inside the heptagon; it is not asserted for the exterior point G.
For either point T=(X,Y), the two actual upper edges give FHT,EFT>=s.
Put

    W=EFH=(1-f)(1-h)+f(1-e)>0.

The identity

    (1-e)*FHT+(1-h)*EFT=W(1-Y)

gives W(1-Y)>=s(2-e-h). Since W<=2-e-h, we obtain Y<=1-s.
Finally (1) gives the affine gap

    u-x>=2s/(h-a)>=2x0.                              (6)

### The stronger R5 box

In R5, AGO>0 together with (5) puts O inside AGH, so AGH>=3s.
The actual FGH triangle still has area at least s. For the support
triangle with third vertex (0,z0), z0=(fz-g)/(f-g), the Cauchy
inequality from N7_OP_LINE_CAPS.md gives

    f(z0-a)>=(sqrt(3)+1)^2*s=Gamma2*s>K*s.

Consequently f(1-a)>=K*s. Also

    g(h-a)>=3s,       (f-g)(1-h)>=s.

Using a>=eta and f<=1-ell yields

    q(h):=(1-ell)(h-eta)(1-h)-3s(1-h)-s(h-eta)>=0.

This concave quadratic equals

    q(h)=-(492588700h^2-652994170h+205585707)/550630000.

At the two rational endpoints,

    q(257/500)=-216669513/1376575000000<0,
    q(203/250)=-87402983/344143750000<0.

Its derivative is positive at the first endpoint and negative at the
second. Since the derivative decreases, q is negative outside that
interval. Thus 257/500<h<203/250.

For R5 redefine

    h0=257/500, h1=203/250, f0=K*s/(1-eta),
    x0=s/(h1-eta), g1=1-ell-s/(1-h0),
    e0=eta+s/(1-f0).

The closed box for R5 is:

| Coordinate | lower | upper |
|---|---|---|
| a | eta | 1-K*s |
| b | x0 | 1-ell |
| c | f0 | 1-ell |
| d | eta | h1 |
| e | e0 | 1 |
| f | f0 | 1-ell |
| g | 3x0 | g1 |
| h | h0 | h1 |
| z | h0+s | 1 |
| x,u | x0 | 1-ell |
| y,v | eta | 1-s |

The bounds for a,f,c follow from f(1-a)>=K*s and c>=f.
CDE=(1-c)(e-d)>=s gives e>=e0. The lower bound g>=3x0
uses AGH>=3s. All other bounds follow exactly as in the common
box with the sharpened h0,h1. The AGH fan at O also gives

    (h-a)(g-x)=AGO+GHO>=2s,
    g-x>=2x0.                                       (7)

## 4. Every polynomial factor used in the fixed sums

For coordinate v_i with the applicable row's bounds lo_i,hi_i define

    L_(2i)=v_i-lo_i,       L_(2i+1)=hi_i-v_i,

with i starting at zero. Thus L0,...,L25 are the coordinate-box
factors. The remaining affine factors are:

| Factor | Polynomial |
|---|---|
| L26 | h-a-s |
| L27 | 697/790-h+a |
| L28 | e-d-s |
| L29 | 697/790-e+d |
| L30 | c-b-117/1000 |
| L31 | 79/100-c+b |
| L32 | f-b |
| L33 | c-f |
| L34 | f-g |
| L35 | h-d |
| L36 | e-a |
| L37 | z-h-s |
| L38 | u-x-2x0 |
| L39 | g-x-2x0; used only in R5 |

A factor XYZ+ means XYZ-s; XYZ- means -XYZ-s. Its sign is one
of the actual signs proved in Sections 1-2. The common endpoint
factors EP,EL,ER and the five factors P_AHGFE,P_BCDEF,P_DEFGH,
P_HABCD,P_ABCDE are exactly those defined and proved nonnegative
in N7_OP_LINE_CAPS.md Sections 5-6. Explicitly,

    EP=f(1-a)-4s, EL=hc-4s, ER=e(1-b)-4s,
    P_AHGFE=f(1-e)+(1-f)(1-a-11s),
    P_BCDEF=e(1-f)+(1-e)(1-b-11s),
    P_DEFGH=g(h-d)+z-h-11sg,
    P_HABCD=(h-11s)(1-c)+dc,
    P_ABCDE=(e-11s)b+a(1-b).

The cubic support factors are

    SUP=f^2(z-a)-fg(1-a)-4s(f-g),
    SUPK=f^2(z-a)-fg(1-a)-K*s(f-g).

SUP clears the positive denominator in f(z0-a)>=4s, and SUPK
is used only in R5, where Section 3 proves f(z0-a)>=K*s.

That same note proves the following upper-area factors nonnegative
for every single-exterior N7 octagon, without OP sign assumptions:

    UABCD=8s-area(ABCD),  UCDEF=8s-area(CDEF),
    UEFGH=8s-area(EFGH),  UGHAB=8s-area(GHAB),
    UBR=9s-e(1-b),
    UTR=9s(f-g)-(1-g)[(1-d)(f-g)+(1-z)(1-f)].

The factors UAEF=69/100-AEF and UBEF=69/100-BEF were proved
in Section 1. Only the factors that occur in the printed sums are
needed; listing the common family introduces no new premise.

The occupancy factors have a uniform definition. If an actual
cyclic triangle XYZ contains at least j of O,P, put

    CXYZ_1=XYZ-3s,       CXYZ_2=XYZ-K*s.

These follow from the three-triangle fan or the two-interior-point
triangle bound. If an actual cyclic quadrilateral W contains both
points, put

    QW=area(W)-8s.

The quadrilateral bound is proved in N8_OP_LINE_CAPS.md Section 2.
If both diagonals of this quadrilateral separate O,P, then for either
oriented diagonal IJ put

    RW_IJ=area(W)-(29/5)s-sign(IJO)*(IJO-IJP).        (8)

This is the threshold-free spread inequality of
QUADRILATERAL_SPREAD.md: its coefficient is 3+2sqrt(2)>29/5.
The difference in (8) is positive because IJ separates the points.
This bound has no upper-area hypothesis on W.

## 5. Explicit occupancy and diagonal witnesses

Here are all conditional geometric factors that actually occur in a
printed sum. In the triangle column, a suffix O or P names the
contained point; OP means both. The quadrilateral column names
actual convex quadrilaterals containing both points. In the last
column W/IJ denotes (8); both diagonals of W separate O,P, and IJ
is the particular diagonal used. Each assertion is verified by its
three or four positive edge tests in Section 2's sign charts, with
opposite signs at the diagonal for the last column.

| Row | Triangle factors and occupants | Quadrilateral factors | Spread factors |
|---|---|---|---|
| R1 | CABH_1: O; CAEF_1: P | none | none |
| R2 | CDGH_1: O | QAEFH | none |
| R3 | CAEH_2: OP; CBEH_2: OP; CBGH_1: O | none | none |
| R4 | CAEH_2: OP | QAEGH | none |
| R5 | CAGH_1: O | none | AEFH/AF |
| R6 | CEFH_1: P | none | AEFH/EH |
| R7 | CAFG_1: O; CCDH_1: O; CCFH_2: OP; CEFH_1: P | none | ADFH/DH |
| R8 | CAFH_1: O; CBFG_1: O; CCEH_1: O; CCFH_1: O; CEFH_1: P | none | CEFH/CF |
| R9 | CABG_1: O; CAFG_1: O; CBGH_1: O; CCEF_1: P; CEFH_1: P | none | AEFH/AF, AEFH/EH, BEFH/BF |
| R10 | CBFH_2: OP; CBGH_1: O; CEFH_1: P | none | ABFG/BG, ADFH/DH, AEFH/EH |
| R11 | CABG_1: O; CAFG_1: O; CBGH_1: O | QAEFG | AEFH/EH |

## 6. The exact contradiction in each row

For a row let W be the printed positive integer combination of products
of its nonnegative factors. Then W>=0. Expand it as

    W=sum_alpha c_alpha product_i v_i^alpha_i.

All coordinates are nonnegative and lie in the proved row box. Hence

    W<=B(W):=sum_(c_alpha>0)c_alpha product_i hi_i^alpha_i
              +sum_(c_alpha<0)c_alpha product_i lo_i^alpha_i.

The following exact rational values come from the displayed sums.
Every value is negative, giving a contradiction in every row.

| Row | Terms | Exact B(W) |
|---|---:|---|
| R1 | 232 | -3967610936840450079625361937262853499/418318062001649875774651170934375000 |
| R2 | 259 | -7927021228747569425403821452734090927/2677235596810559204957767493980000000 |
| R3 | 286 | -28928065752099525819950430144961980661/13386177984052796024788837469900000000 |
| R4 | 323 | -124076709247126710265542320087791546376221/211993990694751945254140647524399800000000 |
| R5 | 285 | -26203634056642625933609050422152706622537/2858412540335441155498075610880000000000 |
| R6 | 282 | -5841322968214004155277658838931930014671479/3047413616237059213028271808163247125000000 |
| R7 | 311 | -10809296319193873782800780183548537493356014287/16992378324137842171845643602318265969000000000 |
| R8 | 320 | -124388823131364098922397031941254281983/133861779840527960247888374699000000000 |
| R9 | 294 | -681056857014472628030420791304830253/10121873711949184139726909240000000 |
| R10 | 292 | -163654019354565796047407538808826031866717/2643770151850427214895795400305250000000 |
| R11 | 299 | -61257944582527286044263983922885263583496283/24379308929896473704226174465305977000000000 |

All eleven rows are exhausted by the binary catalogue in Section 2.
Thus no competitive N7 configuration in the entire HGF-positive
3/5 OP-line position exists. Other positions of the shorter 3-vertex
arc, the 4/4 positions, and the all-heptagon-interior N7 placement are
not asserted to be closed by this note.

### Row R1

The exact bound is `-3967610936840450079625361937262853499/418318062001649875774651170934375000`.

| Index | Weight | Product |
|---:|---:|---|
| 1 | 1838 | L0*L0*L2 |
| 2 | 14 | L0*L0*L31 |
| 3 | 185 | L0*L1*L17 |
| 4 | 3021 | L0*L2*L2 |
| 5 | 239 | L0*L2*L6 |
| 6 | 360 | L0*L2*L12 |
| 7 | 1408 | L0*L2*L15 |
| 8 | 650 | L0*L2*L31 |
| 9 | 362 | L0*L4*L17 |
| 10 | 257 | L0*L5*L6 |
| 11 | 155 | L0*L5*L18 |
| 12 | 551 | L0*L5*L27 |
| 13 | 1589 | L0*L5*L29 |
| 14 | 846 | L0*L5*L33 |
| 15 | 185 | L0*L6*L17 |
| 16 | 163 | L0*L9*L11 |
| 17 | 1093 | L0*L9*L18 |
| 18 | 3848 | L0*L10*L18 |
| 19 | 118 | L0*L12*L12 |
| 20 | 428 | L0*L15*L18 |
| 21 | 195 | L0*L16*L17 |
| 22 | 1178 | L0*L18*L27 |
| 23 | 19 | L0*L18*L28 |
| 24 | 1060 | L0*L18*L34 |
| 25 | 369 | L0*L32*L33 |
| 26 | 428 | L0*L33*L37 |
| 27 | 47 | L1*L5*L12 |
| 28 | 74 | L1*L12*L33 |
| 29 | 78 | L1*L33*L33 |
| 30 | 166 | L2*L2*L6 |
| 31 | 920 | L2*L2*L17 |
| 32 | 1882 | L2*L4*L17 |
| 33 | 1228 | L2*L5*L6 |
| 34 | 553 | L2*L5*L15 |
| 35 | 206 | L2*L5*L29 |
| 36 | 20 | L2*L6*L12 |
| 37 | 10 | L2*L6*L15 |
| 38 | 940 | L2*L9*L18 |
| 39 | 2396 | L2*L12*L15 |
| 40 | 203 | L2*L15*L17 |
| 41 | 1204 | L2*L15*L18 |
| 42 | 203 | L2*L17*L26 |
| 43 | 354 | L2*L17*L28 |
| 44 | 547 | L2*L17*L29 |
| 45 | 507 | L2*L17*L32 |
| 46 | 478 | L2*L18*L37 |
| 47 | 1429 | L2*L33*L37 |
| 48 | 14 | L3*L6*L18 |
| 49 | 117 | L4*L9*L17 |
| 50 | 585 | L4*L10*L17 |
| 51 | 1359 | L4*L12*L17 |
| 52 | 123 | L4*L17*L17 |
| 53 | 1406 | L4*L17*L18 |
| 54 | 364 | L4*L17*L20 |
| 55 | 437 | L5*L5*L37 |
| 56 | 41 | L5*L6*L12 |
| 57 | 172 | L5*L6*L20 |
| 58 | 20 | L5*L6*L34 |
| 59 | 83 | L5*L6*L37 |
| 60 | 66 | L5*L9*L9 |
| 61 | 35 | L5*L9*L12 |
| 62 | 903 | L5*L11*L20 |
| 63 | 364 | L5*L17*L20 |
| 64 | 66 | L5*L27*L37 |
| 65 | 354 | L5*L29*L33 |
| 66 | 123 | L5*L37*L37 |
| 67 | 60 | L6*L8*L33 |
| 68 | 51 | L6*L9*L11 |
| 69 | 161 | L6*L17*L19 |
| 70 | 240 | L6*L18*L18 |
| 71 | 73 | L6*L33*L37 |
| 72 | 193 | L7*L17*L31 |
| 73 | 240 | L7*L18*L18 |
| 74 | 1 | L7*L18*L37 |
| 75 | 73 | L8*L12*L15 |
| 76 | 185 | L8*L17*L17 |
| 77 | 195 | L8*L17*L28 |
| 78 | 117 | L8*L17*L33 |
| 79 | 931 | L8*L18*L33 |
| 80 | 9 | L9*L9*L18 |
| 81 | 9 | L9*L11*L29 |
| 82 | 914 | L9*L15*L18 |
| 83 | 160 | L9*L18*L37 |
| 84 | 154 | L9*L21*L33 |
| 85 | 47 | L10*L17*L18 |
| 86 | 589 | L10*L17*L20 |
| 87 | 240 | L11*L11*L20 |
| 88 | 354 | L11*L12*L17 |
| 89 | 148 | L11*L12*L29 |
| 90 | 428 | L11*L15*L33 |
| 91 | 65 | L11*L20*L37 |
| 92 | 1123 | L12*L12*L15 |
| 93 | 332 | L12*L15*L20 |
| 94 | 189 | L12*L15*L27 |
| 95 | 1188 | L12*L15*L31 |
| 96 | 161 | L12*L20*L37 |
| 97 | 86 | L12*L23*L37 |
| 98 | 27 | L12*L27*L33 |
| 99 | 1359 | L12*L33*L37 |
| 100 | 86 | L12*L37*L38 |
| 101 | 86 | L13*L17*L18 |
| 102 | 10 | L14*L17*L17 |
| 103 | 311 | L15*L16*L33 |
| 104 | 10 | L15*L17*L27 |
| 105 | 466 | L15*L18*L31 |
| 106 | 335 | L15*L18*L33 |
| 107 | 189 | L15*L27*L33 |
| 108 | 207 | L15*L30*L33 |
| 109 | 10 | L17*L17*L28 |
| 110 | 161 | L17*L17*L38 |
| 111 | 160 | L17*L18*L29 |
| 112 | 1406 | L17*L18*L31 |
| 113 | 161 | L17*L25*L34 |
| 114 | 10 | L17*L26*L28 |
| 115 | 185 | L17*L26*L36 |
| 116 | 195 | L17*L29*L36 |
| 117 | 413 | L17*L31*L32 |
| 118 | 428 | L17*L32*L33 |
| 119 | 10 | L17*L35*L37 |
| 120 | 195 | L17*L36*L37 |
| 121 | 2033 | L18*L18*L26 |
| 122 | 1243 | L18*L27*L37 |
| 123 | 207 | L20*L33*L33 |
| 124 | 437 | L31*L33*L37 |
| 125 | 565 | ABC+*L0 |
| 126 | 3163 | ABC+*L2 |
| 127 | 9 | ABC+*L18 |
| 128 | 30 | ABC+*L28 |
| 129 | 949 | ABC+*L31 |
| 130 | 1873 | ABC+*L33 |
| 131 | 118 | AGH+*L12 |
| 132 | 247 | BCD+*L0 |
| 133 | 166 | BCD+*L2 |
| 134 | 6 | BCD+*L8 |
| 135 | 20 | BCD+*L12 |
| 136 | 18 | BCD+*L20 |
| 137 | 14 | BCD+*L23 |
| 138 | 10 | BCD+*L27 |
| 139 | 14 | BCD+*L38 |
| 140 | 1619 | CDE+*L0 |
| 141 | 1268 | CDE+*L2 |
| 142 | 66 | CDE+*L9 |
| 143 | 20 | CDE+*L10 |
| 144 | 14 | CDE+*L18 |
| 145 | 154 | CDE+*L20 |
| 146 | 354 | CDE+*L33 |
| 147 | 148 | DEF+*L12 |
| 148 | 73 | DEF+*L37 |
| 149 | 35 | EFG+*L5 |
| 150 | 123 | EFH+*L17 |
| 151 | 2033 | FGH+*L2 |
| 152 | 951 | FGH+*L4 |
| 153 | 73 | FGH+*L6 |
| 154 | 1005 | FGH+*L12 |
| 155 | 493 | FGH+*L20 |
| 156 | 189 | FGH+*L27 |
| 157 | 73 | FGH+*L28 |
| 158 | 1181 | FGH+*L31 |
| 159 | 428 | FGH+*L33 |
| 160 | 954 | EOP-*L4 |
| 161 | 9 | EOP-*L9 |
| 162 | 1249 | EOP-*L31 |
| 163 | 308 | EOP-*L32 |
| 164 | 646 | FOP+*L4 |
| 165 | 9 | FOP+*L7 |
| 166 | 308 | FOP+*L12 |
| 167 | 161 | FOP+*L16 |
| 168 | 204 | FOP+*L28 |
| 169 | 213 | FOP+*L29 |
| 170 | 940 | FOP+*L31 |
| 171 | 308 | FOP+*L34 |
| 172 | 161 | GOP+*L17 |
| 173 | 656 | ABO+*L5 |
| 174 | 18 | ABO+*L6 |
| 175 | 1688 | ABO+*L18 |
| 176 | 2263 | ABO+*L33 |
| 177 | 3071 | AHO-*L4 |
| 178 | 978 | AHO-*L9 |
| 179 | 254 | AHO-*L12 |
| 180 | 1243 | AHO-*L16 |
| 181 | 345 | AHO-*L19 |
| 182 | 1244 | AHO-*L27 |
| 183 | 1180 | AHO-*L31 |
| 184 | 1267 | AHO-*L34 |
| 185 | 1 | AHO-*L35 |
| 186 | 66 | AHO-*L36 |
| 187 | 646 | EFP+*L2 |
| 188 | 9 | EFP+*L9 |
| 189 | 308 | EFP+*L10 |
| 190 | 1089 | EFP+*L24 |
| 191 | 1089 | EFP+*L25 |
| 192 | 294 | EFP+*L31 |
| 193 | 927 | GHO+*L2 |
| 194 | 47 | GHO+*L12 |
| 195 | 89 | GHO+*L18 |
| 196 | 89 | GHO+*L19 |
| 197 | 47 | GHO+*L34 |
| 198 | 623 | AEO+*L33 |
| 199 | 591 | AFO+*L0 |
| 200 | 2326 | AFO+*L2 |
| 201 | 357 | AFO+*L4 |
| 202 | 755 | AFO+*L11 |
| 203 | 47 | AFO+*L12 |
| 204 | 428 | AFO+*L26 |
| 205 | 551 | AFO+*L31 |
| 206 | 163 | AFO+*L36 |
| 207 | 163 | BHO+*L8 |
| 208 | 2442 | BHO+*L12 |
| 209 | 1688 | BHO+*L18 |
| 210 | 1814 | BHO+*L33 |
| 211 | 3369 | BHO+*L34 |
| 212 | 207 | CHO+*L30 |
| 213 | 237 | ER*L10 |
| 214 | 163 | ER*L21 |
| 215 | 179 | ER*L26 |
| 216 | 442 | ER*L32 |
| 217 | 9 | ER*L34 |
| 218 | 12 | ER*L35 |
| 219 | 127 | P_ABCDE*L1 |
| 220 | 621 | P_ABCDE*L4 |
| 221 | 1619 | P_ABCDE*L10 |
| 222 | 22 | P_ABCDE*L26 |
| 223 | 442 | P_ABCDE*L30 |
| 224 | 9 | P_ABCDE*L34 |
| 225 | 6 | P_ABCDE*L35 |
| 226 | 1436 | CABH_1*L0 |
| 227 | 500 | CABH_1*L5 |
| 228 | 369 | CABH_1*L12 |
| 229 | 308 | CAEF_1*L33 |
| 230 | 203 | UABCD*L17 |
| 231 | 240 | UAEF*L17 |
| 232 | 193 | UBR*L17 |

### Row R2

The exact bound is `-7927021228747569425403821452734090927/2677235596810559204957767493980000000`.

| Index | Weight | Product |
|---:|---:|---|
| 1 | 2214 | L0*L0*L2 |
| 2 | 3444 | L0*L0*L10 |
| 3 | 2666 | L0*L0*L23 |
| 4 | 2851 | L0*L0*L38 |
| 5 | 84 | L0*L2*L5 |
| 6 | 1862 | L0*L2*L6 |
| 7 | 5252 | L0*L2*L8 |
| 8 | 3570 | L0*L2*L15 |
| 9 | 1775 | L0*L2*L23 |
| 10 | 1136 | L0*L2*L34 |
| 11 | 1876 | L0*L2*L38 |
| 12 | 743 | L0*L5*L18 |
| 13 | 932 | L0*L5*L31 |
| 14 | 4999 | L0*L6*L23 |
| 15 | 5628 | L0*L6*L38 |
| 16 | 188 | L0*L8*L10 |
| 17 | 6594 | L0*L8*L38 |
| 18 | 2370 | L0*L9*L33 |
| 19 | 7340 | L0*L10*L15 |
| 20 | 1378 | L0*L10*L17 |
| 21 | 177 | L0*L10*L33 |
| 22 | 6780 | L0*L11*L25 |
| 23 | 1438 | L0*L12*L15 |
| 24 | 44 | L0*L12*L38 |
| 25 | 9 | L0*L14*L33 |
| 26 | 9882 | L0*L15*L23 |
| 27 | 9952 | L0*L15*L38 |
| 28 | 2990 | L0*L17*L19 |
| 29 | 9 | L0*L17*L33 |
| 30 | 2980 | L0*L18*L18 |
| 31 | 1264 | L0*L21*L23 |
| 32 | 3858 | L0*L21*L38 |
| 33 | 2800 | L0*L23*L37 |
| 34 | 6316 | L0*L23*L38 |
| 35 | 670 | L0*L25*L31 |
| 36 | 630 | L0*L29*L33 |
| 37 | 804 | L0*L33*L38 |
| 38 | 2730 | L0*L37*L38 |
| 39 | 6316 | L0*L38*L38 |
| 40 | 1178 | L2*L5*L6 |
| 41 | 633 | L2*L5*L15 |
| 42 | 383 | L2*L5*L37 |
| 43 | 1704 | L2*L6*L10 |
| 44 | 17733 | L2*L6*L18 |
| 45 | 5290 | L2*L6*L21 |
| 46 | 250 | L2*L6*L38 |
| 47 | 695 | L2*L8*L23 |
| 48 | 616 | L2*L8*L38 |
| 49 | 143 | L2*L10*L17 |
| 50 | 374 | L2*L12*L15 |
| 51 | 1175 | L2*L12*L20 |
| 52 | 457 | L2*L15*L18 |
| 53 | 1347 | L2*L15*L37 |
| 54 | 1166 | L2*L17*L18 |
| 55 | 10 | L2*L17*L22 |
| 56 | 192 | L2*L17*L32 |
| 57 | 184 | L2*L17*L35 |
| 58 | 10 | L2*L37*L38 |
| 59 | 184 | L4*L6*L17 |
| 60 | 2842 | L4*L17*L17 |
| 61 | 438 | L5*L5*L14 |
| 62 | 146 | L5*L5*L21 |
| 63 | 728 | L5*L5*L29 |
| 64 | 3620 | L5*L6*L10 |
| 65 | 12634 | L5*L6*L18 |
| 66 | 2778 | L5*L6*L20 |
| 67 | 630 | L5*L6*L25 |
| 68 | 754 | L5*L6*L26 |
| 69 | 5632 | L5*L6*L31 |
| 70 | 298 | L5*L6*L38 |
| 71 | 1474 | L5*L11*L14 |
| 72 | 404 | L5*L11*L25 |
| 73 | 4744 | L5*L14*L29 |
| 74 | 1371 | L5*L17*L17 |
| 75 | 6176 | L5*L18*L20 |
| 76 | 1270 | L5*L18*L29 |
| 77 | 246 | L5*L26*L33 |
| 78 | 3108 | L6*L9*L18 |
| 79 | 464 | L6*L9*L31 |
| 80 | 5372 | L6*L10*L18 |
| 81 | 350 | L6*L12*L15 |
| 82 | 306 | L6*L12*L17 |
| 83 | 336 | L6*L17*L23 |
| 84 | 325 | L6*L17*L32 |
| 85 | 336 | L6*L17*L38 |
| 86 | 2252 | L6*L18*L23 |
| 87 | 4780 | L6*L18*L25 |
| 88 | 4959 | L6*L18*L29 |
| 89 | 8569 | L6*L18*L38 |
| 90 | 82 | L6*L23*L33 |
| 91 | 630 | L6*L25*L33 |
| 92 | 740 | L6*L29*L31 |
| 93 | 1384 | L8*L15*L23 |
| 94 | 6164 | L8*L15*L38 |
| 95 | 325 | L8*L17*L33 |
| 96 | 3876 | L8*L20*L33 |
| 97 | 152 | L8*L23*L33 |
| 98 | 637 | L8*L23*L37 |
| 99 | 637 | L8*L37*L38 |
| 100 | 4045 | L9*L11*L14 |
| 101 | 4744 | L9*L14*L33 |
| 102 | 4190 | L9*L21*L33 |
| 103 | 192 | L10*L11*L17 |
| 104 | 3280 | L10*L15*L17 |
| 105 | 1131 | L10*L17*L17 |
| 106 | 325 | L10*L17*L28 |
| 107 | 368 | L10*L17*L38 |
| 108 | 4412 | L11*L14*L14 |
| 109 | 383 | L11*L17*L33 |
| 110 | 222 | L11*L20*L33 |
| 111 | 5344 | L11*L21*L25 |
| 112 | 1625 | L11*L26*L33 |
| 113 | 7670 | L12*L15*L17 |
| 114 | 4412 | L12*L15*L37 |
| 115 | 412 | L12*L15*L38 |
| 116 | 350 | L12*L21*L37 |
| 117 | 2831 | L14*L14*L23 |
| 118 | 938 | L14*L23*L33 |
| 119 | 6618 | L15*L15*L23 |
| 120 | 9581 | L15*L15*L38 |
| 121 | 1540 | L15*L17*L31 |
| 122 | 1828 | L15*L21*L23 |
| 123 | 3858 | L15*L21*L38 |
| 124 | 132 | L15*L23*L37 |
| 125 | 62 | L16*L17*L38 |
| 126 | 371 | L17*L17*L19 |
| 127 | 6903 | L17*L18*L18 |
| 128 | 259 | L17*L19*L36 |
| 129 | 722 | L17*L23*L37 |
| 130 | 206 | L17*L24*L33 |
| 131 | 276 | L17*L25*L33 |
| 132 | 192 | L17*L31*L31 |
| 133 | 1471 | L17*L33*L37 |
| 134 | 659 | L17*L37*L38 |
| 135 | 6903 | L18*L18*L37 |
| 136 | 6176 | L18*L20*L33 |
| 137 | 146 | L20*L33*L33 |
| 138 | 1178 | L33*L33*L36 |
| 139 | 192 | L33*L33*L37 |
| 140 | 5252 | ABC+*L8 |
| 141 | 802 | ABC+*L10 |
| 142 | 3970 | ABC+*L23 |
| 143 | 670 | ABC+*L25 |
| 144 | 9 | ABC+*L37 |
| 145 | 3983 | ABC+*L38 |
| 146 | 1536 | ABH+*L0 |
| 147 | 1016 | ABH+*L5 |
| 148 | 4828 | ABH+*L6 |
| 149 | 802 | ABH+*L13 |
| 150 | 9 | ABH+*L17 |
| 151 | 2107 | ABH+*L18 |
| 152 | 88 | ABH+*L22 |
| 153 | 1347 | ABH+*L27 |
| 154 | 668 | ABH+*L29 |
| 155 | 334 | ABH+*L34 |
| 156 | 668 | ABH+*L36 |
| 157 | 44 | AGH+*L38 |
| 158 | 5106 | BCD+*L5 |
| 159 | 740 | BCD+*L6 |
| 160 | 1203 | BCD+*L9 |
| 161 | 2372 | BCD+*L14 |
| 162 | 17601 | BCD+*L18 |
| 163 | 5290 | BCD+*L21 |
| 164 | 3636 | BCD+*L26 |
| 165 | 1704 | BCD+*L31 |
| 166 | 1704 | BCD+*L32 |
| 167 | 510 | BCD+*L37 |
| 168 | 250 | BCD+*L38 |
| 169 | 2252 | CDE+*L0 |
| 170 | 2366 | CDE+*L10 |
| 171 | 325 | CDE+*L17 |
| 172 | 8067 | CDE+*L20 |
| 173 | 450 | CDE+*L33 |
| 174 | 48 | CDE+*L38 |
| 175 | 1438 | FGH+*L0 |
| 176 | 334 | FGH+*L2 |
| 177 | 4412 | FGH+*L15 |
| 178 | 2602 | FGH+*L17 |
| 179 | 368 | FGH+*L38 |
| 180 | 186 | AOP-*L0 |
| 181 | 7506 | AOP-*L5 |
| 182 | 70 | AOP-*L17 |
| 183 | 10056 | AOP-*L33 |
| 184 | 886 | EOP-*L1 |
| 185 | 4156 | EOP-*L5 |
| 186 | 9429 | EOP-*L11 |
| 187 | 43750 | EOP-*L18 |
| 188 | 6608 | EOP-*L20 |
| 189 | 2808 | EOP-*L22 |
| 190 | 4008 | EOP-*L26 |
| 191 | 79 | EOP-*L30 |
| 192 | 9467 | EOP-*L38 |
| 193 | 2466 | FOP+*L5 |
| 194 | 2612 | FOP+*L10 |
| 195 | 1488 | FOP+*L14 |
| 196 | 70 | FOP+*L17 |
| 197 | 43112 | FOP+*L18 |
| 198 | 3858 | FOP+*L20 |
| 199 | 7301 | FOP+*L26 |
| 200 | 12275 | FOP+*L38 |
| 201 | 290 | HOP+*L10 |
| 202 | 3446 | HOP+*L18 |
| 203 | 2751 | HOP+*L20 |
| 204 | 79 | HOP+*L30 |
| 205 | 859 | HOP+*L33 |
| 206 | 15366 | FHO+*L18 |
| 207 | 778 | AHO-*L0 |
| 208 | 2230 | AHO-*L6 |
| 209 | 82 | DEP+*L33 |
| 210 | 787 | EFP+*L1 |
| 211 | 3796 | EFP+*L5 |
| 212 | 1912 | EFP+*L9 |
| 213 | 2612 | EFP+*L10 |
| 214 | 12246 | EFP+*L18 |
| 215 | 6608 | EFP+*L20 |
| 216 | 12275 | EFP+*L22 |
| 217 | 8788 | EFP+*L26 |
| 218 | 1912 | EFP+*L36 |
| 219 | 1175 | GHO+*L2 |
| 220 | 3444 | AFO+*L0 |
| 221 | 14676 | AFO+*L8 |
| 222 | 8718 | AFO+*L17 |
| 223 | 3858 | AFO+*L21 |
| 224 | 44 | AFO+*L23 |
| 225 | 2593 | AFO+*L24 |
| 226 | 2980 | AFO+*L33 |
| 227 | 8788 | AFO+*L37 |
| 228 | 9296 | AFO+*L38 |
| 229 | 1733 | AFP-*L5 |
| 230 | 630 | AFP-*L6 |
| 231 | 2936 | AFP-*L18 |
| 232 | 350 | DGO+*L37 |
| 233 | 70 | CHP-*L17 |
| 234 | 3188 | EHO+*L1 |
| 235 | 695 | EHO+*L2 |
| 236 | 2760 | EHO+*L4 |
| 237 | 21675 | EHO+*L10 |
| 238 | 2364 | EHO+*L17 |
| 239 | 6654 | EHO+*L19 |
| 240 | 6608 | EHO+*L21 |
| 241 | 17867 | EHO+*L23 |
| 242 | 2742 | EHO+*L37 |
| 243 | 27629 | EHO+*L38 |
| 244 | 6020 | DHO-*L3 |
| 245 | 9851 | DHO-*L4 |
| 246 | 4959 | DHO-*L6 |
| 247 | 8067 | DHO-*L9 |
| 248 | 5372 | DHO-*L12 |
| 249 | 333 | DHO-*L17 |
| 250 | 2252 | DHO-*L19 |
| 251 | 4780 | DHO-*L25 |
| 252 | 7859 | DHO-*L26 |
| 253 | 6152 | DHO-*L31 |
| 254 | 5372 | DHO-*L34 |
| 255 | 1020 | DHO-*L37 |
| 256 | 6316 | DHO-*L38 |
| 257 | 657 | CDGH_1*L17 |
| 258 | 1912 | QAEFH*L5 |
| 259 | 1434 | QAEFH*L33 |

### Row R3

The exact bound is `-28928065752099525819950430144961980661/13386177984052796024788837469900000000`.

| Index | Weight | Product |
|---:|---:|---|
| 1 | 40 | L0*L2*L2 |
| 2 | 56 | L0*L2*L13 |
| 3 | 148 | L0*L2*L19 |
| 4 | 407 | L0*L2*L20 |
| 5 | 10 | L0*L2*L23 |
| 6 | 31 | L0*L2*L25 |
| 7 | 1003 | L0*L2*L31 |
| 8 | 1642 | L0*L2*L34 |
| 9 | 219 | L0*L2*L37 |
| 10 | 107 | L0*L3*L6 |
| 11 | 404 | L0*L5*L10 |
| 12 | 190 | L0*L5*L31 |
| 13 | 1137 | L0*L5*L34 |
| 14 | 48 | L0*L6*L12 |
| 15 | 16 | L0*L6*L33 |
| 16 | 11 | L0*L7*L31 |
| 17 | 32 | L0*L8*L18 |
| 18 | 219 | L0*L10*L33 |
| 19 | 101 | L0*L11*L23 |
| 20 | 356 | L0*L11*L38 |
| 21 | 562 | L0*L12*L18 |
| 22 | 365 | L0*L12*L33 |
| 23 | 60 | L0*L13*L20 |
| 24 | 330 | L0*L13*L38 |
| 25 | 177 | L0*L17*L33 |
| 26 | 101 | L0*L19*L37 |
| 27 | 31 | L0*L21*L23 |
| 28 | 13 | L0*L22*L22 |
| 29 | 120 | L0*L23*L23 |
| 30 | 132 | L0*L23*L38 |
| 31 | 23 | L0*L27*L31 |
| 32 | 66 | L0*L30*L33 |
| 33 | 1002 | L0*L31*L34 |
| 34 | 23 | L0*L31*L36 |
| 35 | 602 | L1*L10*L17 |
| 36 | 242 | L1*L17*L20 |
| 37 | 119 | L2*L2*L21 |
| 38 | 120 | L2*L2*L37 |
| 39 | 525 | L2*L4*L17 |
| 40 | 272 | L2*L5*L6 |
| 41 | 726 | L2*L5*L17 |
| 42 | 55 | L2*L6*L37 |
| 43 | 615 | L2*L9*L18 |
| 44 | 53 | L2*L9*L23 |
| 45 | 337 | L2*L11*L37 |
| 46 | 225 | L2*L12*L17 |
| 47 | 92 | L2*L15*L23 |
| 48 | 31 | L2*L15*L25 |
| 49 | 547 | L2*L17*L19 |
| 50 | 76 | L2*L17*L34 |
| 51 | 116 | L2*L23*L25 |
| 52 | 5 | L2*L24*L33 |
| 53 | 116 | L2*L25*L38 |
| 54 | 45 | L3*L10*L17 |
| 55 | 135 | L3*L17*L18 |
| 56 | 281 | L4*L14*L17 |
| 57 | 260 | L4*L17*L18 |
| 58 | 690 | L4*L17*L20 |
| 59 | 228 | L4*L17*L31 |
| 60 | 47 | L4*L21*L33 |
| 61 | 47 | L5*L5*L20 |
| 62 | 146 | L5*L5*L24 |
| 63 | 41 | L5*L5*L29 |
| 64 | 114 | L5*L6*L15 |
| 65 | 269 | L5*L6*L23 |
| 66 | 107 | L5*L6*L26 |
| 67 | 326 | L5*L6*L34 |
| 68 | 102 | L5*L9*L29 |
| 69 | 205 | L5*L12*L17 |
| 70 | 164 | L5*L12*L25 |
| 71 | 205 | L5*L12*L37 |
| 72 | 136 | L5*L15*L29 |
| 73 | 200 | L5*L15*L31 |
| 74 | 86 | L5*L17*L17 |
| 75 | 102 | L5*L17*L36 |
| 76 | 187 | L5*L18*L37 |
| 77 | 228 | L5*L33*L37 |
| 78 | 299 | L5*L37*L38 |
| 79 | 124 | L6*L9*L18 |
| 80 | 282 | L6*L9*L38 |
| 81 | 48 | L6*L13*L27 |
| 82 | 160 | L6*L17*L21 |
| 83 | 27 | L6*L26*L31 |
| 84 | 32 | L7*L17*L19 |
| 85 | 160 | L7*L17*L21 |
| 86 | 282 | L8*L8*L38 |
| 87 | 179 | L8*L12*L38 |
| 88 | 16 | L8*L25*L33 |
| 89 | 162 | L8*L30*L33 |
| 90 | 124 | L9*L9*L18 |
| 91 | 23 | L9*L11*L18 |
| 92 | 305 | L9*L11*L29 |
| 93 | 325 | L9*L18*L18 |
| 94 | 155 | L9*L18*L31 |
| 95 | 80 | L9*L21*L33 |
| 96 | 1458 | L10*L12*L17 |
| 97 | 166 | L10*L17*L20 |
| 98 | 352 | L10*L17*L22 |
| 99 | 191 | L10*L17*L24 |
| 100 | 845 | L10*L17*L27 |
| 101 | 287 | L10*L17*L31 |
| 102 | 214 | L11*L11*L20 |
| 103 | 1427 | L11*L12*L15 |
| 104 | 170 | L11*L15*L18 |
| 105 | 179 | L11*L17*L18 |
| 106 | 362 | L11*L18*L20 |
| 107 | 12 | L11*L20*L23 |
| 108 | 86 | L11*L27*L37 |
| 109 | 54 | L11*L32*L37 |
| 110 | 160 | L11*L37*L37 |
| 111 | 1607 | L12*L12*L15 |
| 112 | 31 | L12*L15*L25 |
| 113 | 337 | L12*L17*L23 |
| 114 | 4 | L12*L21*L33 |
| 115 | 164 | L12*L25*L33 |
| 116 | 192 | L14*L17*L22 |
| 117 | 182 | L14*L23*L33 |
| 118 | 124 | L15*L16*L33 |
| 119 | 202 | L15*L17*L19 |
| 120 | 246 | L15*L17*L30 |
| 121 | 41 | L15*L18*L18 |
| 122 | 118 | L15*L26*L33 |
| 123 | 28 | L15*L31*L31 |
| 124 | 246 | L15*L32*L37 |
| 125 | 242 | L16*L17*L20 |
| 126 | 21 | L16*L18*L33 |
| 127 | 530 | L16*L33*L37 |
| 128 | 161 | L17*L19*L27 |
| 129 | 242 | L17*L20*L27 |
| 130 | 31 | L17*L21*L23 |
| 131 | 246 | L17*L21*L34 |
| 132 | 242 | L17*L21*L37 |
| 133 | 340 | L17*L22*L31 |
| 134 | 154 | L17*L22*L32 |
| 135 | 337 | L17*L23*L34 |
| 136 | 77 | L17*L23*L35 |
| 137 | 4 | L17*L24*L28 |
| 138 | 4 | L17*L25*L28 |
| 139 | 32 | L17*L29*L38 |
| 140 | 131 | L17*L33*L38 |
| 141 | 4 | L18*L18*L21 |
| 142 | 4 | L18*L18*L24 |
| 143 | 4 | L18*L21*L38 |
| 144 | 31 | L18*L24*L37 |
| 145 | 246 | L18*L37*L37 |
| 146 | 80 | L20*L33*L35 |
| 147 | 80 | L20*L33*L37 |
| 148 | 78 | L21*L29*L33 |
| 149 | 90 | L22*L33*L37 |
| 150 | 266 | L25*L28*L33 |
| 151 | 46 | L25*L30*L33 |
| 152 | 102 | L29*L33*L37 |
| 153 | 48 | L33*L35*L37 |
| 154 | 166 | L33*L37*L37 |
| 155 | 639 | ABC+*L2 |
| 156 | 23 | ABC+*L28 |
| 157 | 256 | ABC+*L31 |
| 158 | 2504 | ABC+*L34 |
| 159 | 138 | ABC+*L35 |
| 160 | 279 | ABC+*L37 |
| 161 | 262 | BCD+*L5 |
| 162 | 39 | BCD+*L13 |
| 163 | 27 | BCD+*L16 |
| 164 | 51 | BCD+*L23 |
| 165 | 16 | BCD+*L24 |
| 166 | 29 | BCD+*L37 |
| 167 | 34 | CDE+*L1 |
| 168 | 41 | CDE+*L3 |
| 169 | 221 | CDE+*L4 |
| 170 | 102 | CDE+*L9 |
| 171 | 39 | CDE+*L12 |
| 172 | 158 | CDE+*L20 |
| 173 | 218 | CDE+*L23 |
| 174 | 282 | CDE+*L25 |
| 175 | 34 | CDE+*L27 |
| 176 | 326 | CDE+*L34 |
| 177 | 864 | CFH+*L17 |
| 178 | 181 | DEF+*L9 |
| 179 | 102 | DEF+*L37 |
| 180 | 287 | EFG+*L5 |
| 181 | 856 | FGH+*L0 |
| 182 | 253 | FGH+*L4 |
| 183 | 48 | FGH+*L7 |
| 184 | 1458 | FGH+*L12 |
| 185 | 170 | FGH+*L18 |
| 186 | 128 | FGH+*L22 |
| 187 | 31 | FGH+*L25 |
| 188 | 856 | FGH+*L26 |
| 189 | 1789 | FGH+*L28 |
| 190 | 1789 | FGH+*L29 |
| 191 | 482 | FGH+*L31 |
| 192 | 54 | FGH+*L32 |
| 193 | 856 | FGH+*L37 |
| 194 | 494 | AOP-*L13 |
| 195 | 1052 | EOP-*L0 |
| 196 | 1084 | EOP-*L1 |
| 197 | 770 | EOP-*L2 |
| 198 | 155 | EOP-*L5 |
| 199 | 523 | EOP-*L10 |
| 200 | 795 | EOP-*L12 |
| 201 | 32 | EOP-*L16 |
| 202 | 325 | EOP-*L18 |
| 203 | 731 | EOP-*L22 |
| 204 | 158 | EOP-*L28 |
| 205 | 155 | FOP+*L5 |
| 206 | 362 | FOP+*L18 |
| 207 | 63 | FOP+*L23 |
| 208 | 158 | FOP+*L28 |
| 209 | 314 | GOP+*L18 |
| 210 | 653 | HOP+*L2 |
| 211 | 439 | HOP+*L18 |
| 212 | 794 | HOP+*L38 |
| 213 | 148 | ABO+*L2 |
| 214 | 108 | ABO+*L5 |
| 215 | 246 | ABO+*L6 |
| 216 | 31 | ABO+*L25 |
| 217 | 197 | ABO+*L34 |
| 218 | 246 | ABO+*L35 |
| 219 | 16 | ABP+*L6 |
| 220 | 51 | CDP+*L2 |
| 221 | 109 | CDP+*L17 |
| 222 | 41 | EFP+*L2 |
| 223 | 301 | EFP+*L5 |
| 224 | 546 | EFP+*L18 |
| 225 | 63 | EFP+*L23 |
| 226 | 124 | EFP+*L29 |
| 227 | 223 | FHP+*L17 |
| 228 | 149 | GHO+*L12 |
| 229 | 856 | GHO+*L17 |
| 230 | 217 | AEP+*L11 |
| 231 | 32 | AFP-*L0 |
| 232 | 10 | AFP-*L3 |
| 233 | 16 | AFP-*L6 |
| 234 | 164 | AFP-*L12 |
| 235 | 339 | AFP-*L23 |
| 236 | 32 | AFP-*L26 |
| 237 | 339 | AFP-*L38 |
| 238 | 109 | CHP-*L17 |
| 239 | 106 | AFO+*L11 |
| 240 | 201 | AFO+*L13 |
| 241 | 471 | AFO+*L23 |
| 242 | 108 | AFO+*L33 |
| 243 | 37 | BHO-*L1 |
| 244 | 148 | BHO-*L3 |
| 245 | 112 | BHO-*L4 |
| 246 | 310 | BHO-*L7 |
| 247 | 467 | BHO-*L12 |
| 248 | 246 | BHO-*L15 |
| 249 | 314 | BHO-*L19 |
| 250 | 418 | BHO-*L23 |
| 251 | 31 | BHO-*L24 |
| 252 | 310 | BHO-*L29 |
| 253 | 310 | BHO-*L36 |
| 254 | 32 | EHP+*L1 |
| 255 | 676 | EHP+*L2 |
| 256 | 171 | EHP+*L10 |
| 257 | 616 | EHP+*L12 |
| 258 | 483 | EHP+*L19 |
| 259 | 290 | EHP+*L23 |
| 260 | 27 | EHP+*L33 |
| 261 | 1084 | EHP+*L38 |
| 262 | 60 | BGO+*L0 |
| 263 | 254 | BGO+*L2 |
| 264 | 374 | BGO+*L3 |
| 265 | 4 | BGO+*L4 |
| 266 | 346 | BGO+*L12 |
| 267 | 314 | BGO+*L19 |
| 268 | 301 | BGO+*L23 |
| 269 | 197 | BGO+*L34 |
| 270 | 609 | CGO+*L17 |
| 271 | 100 | CEP+*L33 |
| 272 | 616 | EGP+*L18 |
| 273 | 153 | EP*L17 |
| 274 | 6 | EP*L33 |
| 275 | 39 | P_DEFGH*L2 |
| 276 | 848 | CAEH_2*L2 |
| 277 | 48 | CAEH_2*L4 |
| 278 | 14 | CAEH_2*L8 |
| 279 | 311 | CAEH_2*L10 |
| 280 | 213 | CAEH_2*L18 |
| 281 | 4 | CAEH_2*L24 |
| 282 | 1590 | CAEH_2*L34 |
| 283 | 191 | CAEH_2*L37 |
| 284 | 121 | CBEH_2*L33 |
| 285 | 23 | CBGH_1*L33 |
| 286 | 488 | CBGH_1*L38 |

### Row R4

The exact bound is `-124076709247126710265542320087791546376221/211993990694751945254140647524399800000000`.

| Index | Weight | Product |
|---:|---:|---|
| 1 | 722 | L0*L0*L32 |
| 2 | 659 | L0*L2*L15 |
| 3 | 365 | L0*L2*L17 |
| 4 | 330 | L0*L2*L18 |
| 5 | 2407 | L0*L2*L20 |
| 6 | 213 | L0*L2*L25 |
| 7 | 128 | L0*L2*L28 |
| 8 | 442 | L0*L2*L32 |
| 9 | 112 | L0*L4*L33 |
| 10 | 276 | L0*L5*L8 |
| 11 | 574 | L0*L5*L10 |
| 12 | 522 | L0*L5*L19 |
| 13 | 47 | L0*L5*L36 |
| 14 | 38 | L0*L6*L10 |
| 15 | 123 | L0*L6*L13 |
| 16 | 107 | L0*L9*L23 |
| 17 | 20 | L0*L9*L38 |
| 18 | 278 | L0*L11*L20 |
| 19 | 109 | L0*L11*L23 |
| 20 | 47 | L0*L11*L24 |
| 21 | 60 | L0*L11*L37 |
| 22 | 826 | L0*L11*L38 |
| 23 | 907 | L0*L12*L12 |
| 24 | 774 | L0*L12*L19 |
| 25 | 1401 | L0*L12*L21 |
| 26 | 419 | L0*L12*L30 |
| 27 | 30 | L0*L12*L32 |
| 28 | 907 | L0*L12*L34 |
| 29 | 1758 | L0*L12*L37 |
| 30 | 482 | L0*L12*L38 |
| 31 | 182 | L0*L13*L20 |
| 32 | 826 | L0*L15*L23 |
| 33 | 1020 | L0*L15*L38 |
| 34 | 500 | L0*L17*L26 |
| 35 | 500 | L0*L17*L27 |
| 36 | 1208 | L0*L18*L18 |
| 37 | 188 | L0*L21*L23 |
| 38 | 103 | L0*L21*L31 |
| 39 | 47 | L0*L23*L27 |
| 40 | 875 | L0*L23*L38 |
| 41 | 213 | L0*L25*L38 |
| 42 | 290 | L0*L31*L35 |
| 43 | 959 | L0*L31*L38 |
| 44 | 743 | L0*L38*L38 |
| 45 | 28 | L1*L2*L33 |
| 46 | 1792 | L1*L12*L15 |
| 47 | 644 | L1*L17*L30 |
| 48 | 442 | L2*L2*L20 |
| 49 | 16 | L2*L5*L24 |
| 50 | 232 | L2*L6*L23 |
| 51 | 232 | L2*L6*L38 |
| 52 | 40 | L2*L7*L37 |
| 53 | 834 | L2*L8*L38 |
| 54 | 1600 | L2*L9*L18 |
| 55 | 294 | L2*L9*L21 |
| 56 | 91 | L2*L11*L37 |
| 57 | 186 | L2*L12*L13 |
| 58 | 723 | L2*L15*L20 |
| 59 | 208 | L2*L15*L38 |
| 60 | 163 | L2*L17*L33 |
| 61 | 826 | L2*L18*L35 |
| 62 | 213 | L2*L21*L25 |
| 63 | 361 | L2*L21*L35 |
| 64 | 1462 | L2*L21*L38 |
| 65 | 1032 | L2*L23*L25 |
| 66 | 1102 | L2*L23*L27 |
| 67 | 1032 | L2*L25*L38 |
| 68 | 712 | L2*L37*L38 |
| 69 | 226 | L3*L17*L36 |
| 70 | 91 | L3*L27*L33 |
| 71 | 78 | L4*L5*L15 |
| 72 | 3 | L4*L6*L9 |
| 73 | 156 | L4*L17*L21 |
| 74 | 855 | L4*L17*L27 |
| 75 | 16 | L4*L25*L33 |
| 76 | 16 | L5*L5*L24 |
| 77 | 170 | L5*L5*L37 |
| 78 | 285 | L5*L6*L20 |
| 79 | 224 | L5*L6*L25 |
| 80 | 192 | L5*L6*L29 |
| 81 | 250 | L5*L9*L15 |
| 82 | 20 | L5*L9*L23 |
| 83 | 385 | L5*L9*L29 |
| 84 | 186 | L5*L11*L12 |
| 85 | 132 | L5*L11*L27 |
| 86 | 2074 | L5*L12*L26 |
| 87 | 356 | L5*L12*L29 |
| 88 | 186 | L5*L12*L34 |
| 89 | 368 | L5*L12*L37 |
| 90 | 802 | L5*L15*L22 |
| 91 | 91 | L5*L15*L30 |
| 92 | 170 | L5*L17*L31 |
| 93 | 575 | L5*L18*L20 |
| 94 | 40 | L5*L23*L24 |
| 95 | 676 | L5*L23*L29 |
| 96 | 210 | L5*L36*L37 |
| 97 | 106 | L6*L8*L23 |
| 98 | 123 | L6*L12*L27 |
| 99 | 42 | L6*L13*L25 |
| 100 | 40 | L6*L14*L32 |
| 101 | 110 | L6*L15*L23 |
| 102 | 42 | L6*L15*L38 |
| 103 | 16 | L6*L18*L24 |
| 104 | 12 | L6*L18*L28 |
| 105 | 16 | L6*L20*L23 |
| 106 | 285 | L6*L20*L33 |
| 107 | 9 | L7*L17*L23 |
| 108 | 339 | L8*L8*L38 |
| 109 | 1045 | L8*L10*L38 |
| 110 | 279 | L8*L12*L17 |
| 111 | 172 | L8*L15*L38 |
| 112 | 34 | L8*L17*L38 |
| 113 | 532 | L8*L18*L38 |
| 114 | 25 | L8*L20*L38 |
| 115 | 224 | L8*L25*L33 |
| 116 | 16 | L8*L33*L35 |
| 117 | 204 | L8*L38*L38 |
| 118 | 126 | L9*L9*L18 |
| 119 | 315 | L9*L11*L23 |
| 120 | 54 | L9*L11*L33 |
| 121 | 226 | L9*L12*L20 |
| 122 | 458 | L9*L17*L33 |
| 123 | 258 | L9*L18*L31 |
| 124 | 75 | L9*L18*L37 |
| 125 | 24 | L9*L27*L33 |
| 126 | 136 | L9*L29*L33 |
| 127 | 54 | L10*L11*L17 |
| 128 | 672 | L10*L17*L20 |
| 129 | 440 | L10*L17*L26 |
| 130 | 78 | L10*L17*L31 |
| 131 | 774 | L11*L12*L20 |
| 132 | 109 | L11*L15*L17 |
| 133 | 210 | L11*L15*L29 |
| 134 | 54 | L11*L15*L33 |
| 135 | 346 | L11*L18*L25 |
| 136 | 28 | L11*L20*L20 |
| 137 | 426 | L11*L20*L31 |
| 138 | 60 | L11*L21*L37 |
| 139 | 230 | L11*L37*L38 |
| 140 | 368 | L12*L12*L17 |
| 141 | 186 | L12*L12*L31 |
| 142 | 368 | L12*L12*L37 |
| 143 | 445 | L12*L14*L15 |
| 144 | 480 | L12*L14*L31 |
| 145 | 678 | L12*L15*L20 |
| 146 | 2068 | L12*L15*L21 |
| 147 | 265 | L12*L15*L33 |
| 148 | 336 | L12*L16*L33 |
| 149 | 1758 | L12*L17*L27 |
| 150 | 32 | L12*L17*L31 |
| 151 | 807 | L12*L18*L36 |
| 152 | 4 | L12*L20*L20 |
| 153 | 6 | L12*L20*L33 |
| 154 | 155 | L12*L21*L27 |
| 155 | 325 | L12*L27*L38 |
| 156 | 34 | L12*L28*L37 |
| 157 | 452 | L12*L37*L37 |
| 158 | 452 | L13*L17*L17 |
| 159 | 889 | L14*L17*L30 |
| 160 | 7 | L15*L15*L19 |
| 161 | 576 | L15*L17*L34 |
| 162 | 193 | L15*L18*L18 |
| 163 | 6 | L15*L18*L33 |
| 164 | 683 | L15*L19*L31 |
| 165 | 50 | L15*L23*L27 |
| 166 | 340 | L15*L23*L38 |
| 167 | 213 | L15*L25*L38 |
| 168 | 372 | L15*L38*L38 |
| 169 | 4 | L17*L18*L20 |
| 170 | 172 | L17*L18*L22 |
| 171 | 206 | L17*L18*L27 |
| 172 | 683 | L17*L19*L30 |
| 173 | 54 | L17*L19*L36 |
| 174 | 52 | L17*L22*L29 |
| 175 | 172 | L17*L23*L38 |
| 176 | 34 | L17*L28*L30 |
| 177 | 321 | L17*L29*L32 |
| 178 | 172 | L17*L38*L38 |
| 179 | 172 | L18*L18*L37 |
| 180 | 575 | L18*L20*L33 |
| 181 | 2228 | L18*L33*L37 |
| 182 | 368 | L20*L27*L33 |
| 183 | 368 | L21*L33*L37 |
| 184 | 40 | L22*L25*L33 |
| 185 | 2955 | L23*L33*L37 |
| 186 | 115 | L25*L28*L33 |
| 187 | 16 | L25*L32*L33 |
| 188 | 38 | L25*L33*L34 |
| 189 | 2918 | L33*L37*L38 |
| 190 | 510 | ABC+*L6 |
| 191 | 472 | ABC+*L21 |
| 192 | 1313 | ABC+*L23 |
| 193 | 116 | ABC+*L27 |
| 194 | 112 | ABC+*L31 |
| 195 | 112 | ABC+*L32 |
| 196 | 617 | ABC+*L35 |
| 197 | 164 | ABC+*L36 |
| 198 | 1452 | ABC+*L38 |
| 199 | 19 | ABD+*L6 |
| 200 | 257 | AGH+*L11 |
| 201 | 1657 | AGH+*L18 |
| 202 | 402 | AGH+*L20 |
| 203 | 2494 | AGH+*L33 |
| 204 | 19 | BCD+*L6 |
| 205 | 145 | BCD+*L18 |
| 206 | 278 | BDF+*L17 |
| 207 | 198 | BEH+*L17 |
| 208 | 32 | BGH+*L12 |
| 209 | 184 | CDE+*L1 |
| 210 | 77 | CDE+*L9 |
| 211 | 356 | CDE+*L12 |
| 212 | 822 | CDE+*L23 |
| 213 | 339 | CDE+*L25 |
| 214 | 172 | CDE+*L29 |
| 215 | 145 | CDE+*L38 |
| 216 | 34 | CDG+*L17 |
| 217 | 34 | CGH+*L17 |
| 218 | 250 | DEF+*L15 |
| 219 | 227 | DEF+*L20 |
| 220 | 27 | DFH+*L17 |
| 221 | 16 | EFG+*L6 |
| 222 | 78 | FGH+*L5 |
| 223 | 54 | FGH+*L11 |
| 224 | 336 | FGH+*L12 |
| 225 | 3596 | FGH+*L23 |
| 226 | 3826 | FGH+*L38 |
| 227 | 1446 | AOP-*L5 |
| 228 | 25 | AOP-*L21 |
| 229 | 1874 | AOP-*L23 |
| 230 | 213 | AOP-*L25 |
| 231 | 1026 | AOP-*L38 |
| 232 | 213 | COP-*L17 |
| 233 | 1350 | EOP-*L2 |
| 234 | 2803 | EOP-*L4 |
| 235 | 36 | EOP-*L6 |
| 236 | 328 | EOP-*L18 |
| 237 | 25 | EOP-*L20 |
| 238 | 3404 | EOP-*L22 |
| 239 | 213 | EOP-*L24 |
| 240 | 1340 | EOP-*L31 |
| 241 | 807 | EOP-*L34 |
| 242 | 213 | EOP-*L36 |
| 243 | 213 | EOP-*L37 |
| 244 | 20 | FOP+*L6 |
| 245 | 807 | FOP+*L13 |
| 246 | 1883 | FOP+*L18 |
| 247 | 807 | FOP+*L23 |
| 248 | 16 | FOP+*L30 |
| 249 | 1674 | HOP+*L2 |
| 250 | 782 | HOP+*L18 |
| 251 | 3362 | HOP+*L38 |
| 252 | 674 | ABO+*L1 |
| 253 | 448 | ABO+*L5 |
| 254 | 366 | ABO+*L9 |
| 255 | 382 | ABO+*L18 |
| 256 | 4 | ABO+*L21 |
| 257 | 282 | ABO+*L23 |
| 258 | 213 | ABO+*L25 |
| 259 | 330 | ABO+*L28 |
| 260 | 442 | ABO+*L30 |
| 261 | 448 | ABO+*L34 |
| 262 | 870 | ABO+*L37 |
| 263 | 1288 | AHO-*L17 |
| 264 | 19 | DEP+*L37 |
| 265 | 1628 | EFP+*L18 |
| 266 | 130 | EFP+*L23 |
| 267 | 136 | EFP+*L29 |
| 268 | 54 | EFP+*L33 |
| 269 | 170 | GHO+*L2 |
| 270 | 30 | GHO+*L6 |
| 271 | 2294 | GHO+*L10 |
| 272 | 7 | GHO+*L15 |
| 273 | 1844 | GHO+*L18 |
| 274 | 712 | GHO+*L23 |
| 275 | 618 | GHO+*L32 |
| 276 | 34 | GHO+*L36 |
| 277 | 48 | AEO+*L6 |
| 278 | 1866 | AEO+*L33 |
| 279 | 58 | GHP+*L6 |
| 280 | 38 | GHP+*L33 |
| 281 | 626 | AEP+*L5 |
| 282 | 156 | AFP-*L8 |
| 283 | 807 | AFP-*L12 |
| 284 | 47 | AFP-*L36 |
| 285 | 716 | AFP-*L38 |
| 286 | 962 | AFO+*L0 |
| 287 | 442 | AFO+*L5 |
| 288 | 38 | AFO+*L6 |
| 289 | 4494 | AFO+*L12 |
| 290 | 242 | AFO+*L16 |
| 291 | 1308 | AFO+*L19 |
| 292 | 28 | AFO+*L20 |
| 293 | 814 | AFO+*L26 |
| 294 | 753 | AFO+*L27 |
| 295 | 227 | AFO+*L36 |
| 296 | 866 | BHO-*L17 |
| 297 | 245 | DHO+*L0 |
| 298 | 1202 | DHO+*L2 |
| 299 | 12 | DHO+*L6 |
| 300 | 96 | EHP+*L1 |
| 301 | 1856 | EHP+*L2 |
| 302 | 802 | EHP+*L4 |
| 303 | 807 | EHP+*L13 |
| 304 | 50 | EHP+*L15 |
| 305 | 1497 | EHP+*L19 |
| 306 | 213 | EHP+*L21 |
| 307 | 213 | EHP+*L24 |
| 308 | 10 | EHP+*L28 |
| 309 | 3330 | EHP+*L38 |
| 310 | 6 | BGO-*L4 |
| 311 | 30 | BGO-*L7 |
| 312 | 260 | BGO-*L9 |
| 313 | 6 | BGO-*L11 |
| 314 | 150 | BGO-*L15 |
| 315 | 1132 | BGO-*L19 |
| 316 | 4 | BGO-*L20 |
| 317 | 2104 | BGO-*L26 |
| 318 | 712 | BGO-*L38 |
| 319 | 213 | CEP+*L17 |
| 320 | 16 | EGP+*L6 |
| 321 | 136 | P_AHGFE*L17 |
| 322 | 472 | CAEH_2*L18 |
| 323 | 245 | QAEGH*L17 |

### Row R5

The exact bound is `-26203634056642625933609050422152706622537/2858412540335441155498075610880000000000`.

| Index | Weight | Product |
|---:|---:|---|
| 1 | 468 | L5*L6 |
| 2 | 456 | L6*L11 |
| 3 | 967 | L0*L0*L34 |
| 4 | 1153 | L0*L0*L39 |
| 5 | 1386 | L0*L1*L18 |
| 6 | 602 | L0*L2*L27 |
| 7 | 206 | L0*L2*L28 |
| 8 | 758 | L0*L2*L37 |
| 9 | 56 | L0*L3*L11 |
| 10 | 9 | L0*L4*L4 |
| 11 | 108 | L0*L4*L25 |
| 12 | 56 | L0*L5*L39 |
| 13 | 228 | L0*L8*L33 |
| 14 | 238 | L0*L9*L39 |
| 15 | 177 | L0*L10*L18 |
| 16 | 393 | L0*L10*L37 |
| 17 | 204 | L0*L11*L24 |
| 18 | 228 | L0*L11*L27 |
| 19 | 216 | L0*L11*L39 |
| 20 | 551 | L0*L12*L24 |
| 21 | 238 | L0*L12*L28 |
| 22 | 81 | L0*L13*L25 |
| 23 | 71 | L0*L17*L30 |
| 24 | 658 | L0*L18*L37 |
| 25 | 218 | L0*L19*L31 |
| 26 | 187 | L0*L20*L33 |
| 27 | 187 | L0*L20*L38 |
| 28 | 187 | L0*L21*L39 |
| 29 | 108 | L0*L25*L31 |
| 30 | 361 | L0*L25*L34 |
| 31 | 46 | L0*L33*L33 |
| 32 | 923 | L0*L37*L38 |
| 33 | 216 | L0*L38*L39 |
| 34 | 1009 | L1*L2*L18 |
| 35 | 652 | L1*L6*L13 |
| 36 | 1557 | L1*L12*L15 |
| 37 | 1640 | L1*L15*L18 |
| 38 | 284 | L1*L17*L18 |
| 39 | 583 | L1*L17*L32 |
| 40 | 141 | L1*L18*L39 |
| 41 | 739 | L1*L26*L33 |
| 42 | 111 | L1*L30*L33 |
| 43 | 985 | L1*L33*L37 |
| 44 | 56 | L2*L4*L17 |
| 45 | 56 | L2*L5*L27 |
| 46 | 41 | L2*L11*L39 |
| 47 | 515 | L2*L15*L19 |
| 48 | 277 | L2*L17*L20 |
| 49 | 105 | L2*L17*L22 |
| 50 | 413 | L2*L18*L20 |
| 51 | 500 | L2*L18*L25 |
| 52 | 41 | L2*L18*L33 |
| 53 | 2799 | L2*L18*L35 |
| 54 | 27 | L2*L21*L28 |
| 55 | 413 | L2*L21*L35 |
| 56 | 108 | L2*L25*L37 |
| 57 | 99 | L2*L30*L39 |
| 58 | 99 | L2*L31*L39 |
| 59 | 9 | L3*L8*L10 |
| 60 | 309 | L3*L15*L18 |
| 61 | 59 | L3*L33*L37 |
| 62 | 56 | L4*L5*L26 |
| 63 | 255 | L4*L8*L19 |
| 64 | 5 | L4*L8*L20 |
| 65 | 1597 | L4*L8*L26 |
| 66 | 332 | L4*L8*L35 |
| 67 | 41 | L4*L10*L39 |
| 68 | 47 | L4*L14*L24 |
| 69 | 273 | L4*L17*L29 |
| 70 | 41 | L4*L18*L32 |
| 71 | 247 | L4*L28*L28 |
| 72 | 332 | L5*L6*L7 |
| 73 | 956 | L5*L6*L26 |
| 74 | 529 | L5*L15*L29 |
| 75 | 31 | L5*L17*L26 |
| 76 | 1104 | L6*L6*L11 |
| 77 | 220 | L6*L6*L16 |
| 78 | 217 | L6*L6*L39 |
| 79 | 1948 | L6*L8*L10 |
| 80 | 1167 | L6*L11*L16 |
| 81 | 166 | L6*L11*L19 |
| 82 | 648 | L6*L12*L15 |
| 83 | 413 | L6*L13*L20 |
| 84 | 55 | L6*L13*L38 |
| 85 | 286 | L6*L17*L22 |
| 86 | 254 | L6*L18*L23 |
| 87 | 356 | L6*L18*L33 |
| 88 | 135 | L6*L20*L23 |
| 89 | 27 | L6*L24*L39 |
| 90 | 158 | L6*L25*L31 |
| 91 | 90 | L6*L37*L37 |
| 92 | 55 | L6*L38*L39 |
| 93 | 490 | L7*L14*L33 |
| 94 | 90 | L7*L15*L15 |
| 95 | 41 | L7*L15*L17 |
| 96 | 227 | L7*L17*L19 |
| 97 | 757 | L8*L8*L13 |
| 98 | 390 | L8*L10*L15 |
| 99 | 206 | L8*L10*L25 |
| 100 | 2309 | L8*L10*L28 |
| 101 | 1731 | L8*L10*L29 |
| 102 | 731 | L8*L13*L38 |
| 103 | 147 | L8*L14*L23 |
| 104 | 220 | L8*L17*L27 |
| 105 | 441 | L8*L17*L29 |
| 106 | 220 | L8*L17*L36 |
| 107 | 135 | L8*L18*L35 |
| 108 | 70 | L8*L37*L38 |
| 109 | 479 | L9*L12*L18 |
| 110 | 483 | L9*L14*L33 |
| 111 | 5 | L9*L20*L33 |
| 112 | 41 | L10*L13*L30 |
| 113 | 669 | L10*L14*L14 |
| 114 | 539 | L10*L14*L24 |
| 115 | 228 | L10*L15*L25 |
| 116 | 515 | L10*L17*L20 |
| 117 | 105 | L10*L18*L25 |
| 118 | 79 | L10*L21*L25 |
| 119 | 216 | L10*L24*L39 |
| 120 | 234 | L11*L15*L18 |
| 121 | 37 | L11*L15*L33 |
| 122 | 392 | L11*L15*L37 |
| 123 | 152 | L11*L26*L33 |
| 124 | 177 | L11*L31*L37 |
| 125 | 1569 | L12*L15*L23 |
| 126 | 620 | L12*L15*L28 |
| 127 | 199 | L12*L15*L31 |
| 128 | 481 | L12*L17*L24 |
| 129 | 1435 | L12*L18*L27 |
| 130 | 253 | L12*L18*L29 |
| 131 | 140 | L13*L17*L27 |
| 132 | 86 | L14*L17*L38 |
| 133 | 90 | L15*L17*L17 |
| 134 | 220 | L15*L17*L29 |
| 135 | 1028 | L15*L18*L22 |
| 136 | 2341 | L15*L18*L24 |
| 137 | 837 | L15*L22*L39 |
| 138 | 165 | L15*L23*L37 |
| 139 | 2394 | L15*L24*L39 |
| 140 | 466 | L15*L29*L39 |
| 141 | 42 | L15*L31*L33 |
| 142 | 115 | L15*L33*L39 |
| 143 | 277 | L15*L35*L39 |
| 144 | 93 | L16*L17*L31 |
| 145 | 124 | L16*L33*L37 |
| 146 | 90 | L17*L17*L35 |
| 147 | 268 | L17*L19*L36 |
| 148 | 128 | L17*L23*L24 |
| 149 | 128 | L17*L23*L25 |
| 150 | 105 | L17*L23*L31 |
| 151 | 105 | L17*L23*L33 |
| 152 | 105 | L17*L23*L34 |
| 153 | 189 | L17*L23*L36 |
| 154 | 105 | L17*L23*L39 |
| 155 | 263 | L17*L24*L31 |
| 156 | 371 | L17*L24*L32 |
| 157 | 481 | L17*L24*L34 |
| 158 | 259 | L17*L28*L38 |
| 159 | 220 | L17*L29*L29 |
| 160 | 93 | L17*L30*L37 |
| 161 | 105 | L18*L18*L24 |
| 162 | 24 | L18*L18*L27 |
| 163 | 105 | L18*L24*L39 |
| 164 | 224 | L18*L25*L35 |
| 165 | 585 | L18*L26*L39 |
| 166 | 92 | L21*L29*L33 |
| 167 | 47 | L24*L33*L37 |
| 168 | 569 | L30*L33*L37 |
| 169 | 698 | L31*L33*L37 |
| 170 | 115 | L33*L33*L37 |
| 171 | 559 | ABC+*L1 |
| 172 | 234 | ABC+*L6 |
| 173 | 457 | ABC+*L19 |
| 174 | 187 | ABC+*L21 |
| 175 | 179 | ABC+*L36 |
| 176 | 246 | ABC+*L37 |
| 177 | 34 | ABC+*L39 |
| 178 | 34 | ABH+*L13 |
| 179 | 27 | ABH+*L28 |
| 180 | 56 | ABH+*L33 |
| 181 | 407 | ACF+*L17 |
| 182 | 124 | ACG+*L17 |
| 183 | 17 | AFG+*L17 |
| 184 | 171 | AFG+*L33 |
| 185 | 158 | BCD+*L25 |
| 186 | 14 | BCG+*L33 |
| 187 | 370 | BFH+*L17 |
| 188 | 332 | CDE+*L7 |
| 189 | 255 | CDE+*L19 |
| 190 | 92 | CDE+*L20 |
| 191 | 1190 | CDE+*L26 |
| 192 | 247 | CDE+*L28 |
| 193 | 273 | CDE+*L37 |
| 194 | 1540 | DEF+*L6 |
| 195 | 92 | DEF+*L21 |
| 196 | 26 | DEF+*L25 |
| 197 | 795 | DEF+*L26 |
| 198 | 795 | DEF+*L27 |
| 199 | 268 | DEF+*L29 |
| 200 | 704 | DEF+*L35 |
| 201 | 1194 | DEF+*L37 |
| 202 | 757 | EFG+*L8 |
| 203 | 154 | EFG+*L14 |
| 204 | 1140 | FGH+*L1 |
| 205 | 597 | FGH+*L18 |
| 206 | 2394 | FGH+*L24 |
| 207 | 417 | FGH+*L26 |
| 208 | 233 | FGH+*L31 |
| 209 | 140 | FGH+*L37 |
| 210 | 344 | AOP-*L13 |
| 211 | 135 | EOP-*L6 |
| 212 | 187 | FOP+*L0 |
| 213 | 500 | HOP+*L2 |
| 214 | 79 | HOP+*L17 |
| 215 | 1341 | ABO+*L0 |
| 216 | 737 | ABO+*L19 |
| 217 | 108 | ABO+*L25 |
| 218 | 413 | ABO+*L35 |
| 219 | 1012 | AHO-*L1 |
| 220 | 234 | AHO-*L8 |
| 221 | 453 | AHO-*L10 |
| 222 | 221 | AHO-*L15 |
| 223 | 229 | AHO-*L18 |
| 224 | 34 | AHO-*L33 |
| 225 | 136 | DEP+*L8 |
| 226 | 198 | EFP+*L0 |
| 227 | 855 | EFP+*L6 |
| 228 | 856 | EFP+*L7 |
| 229 | 434 | EFP+*L26 |
| 230 | 84 | EFP+*L36 |
| 231 | 148 | GHO+*L33 |
| 232 | 27 | FGP+*L7 |
| 233 | 1071 | FGP+*L9 |
| 234 | 449 | FGP+*L19 |
| 235 | 79 | FGP+*L20 |
| 236 | 1071 | FGP+*L36 |
| 237 | 457 | EHO+*L17 |
| 238 | 92 | AFP-*L9 |
| 239 | 88 | AFP-*L15 |
| 240 | 344 | AFP-*L18 |
| 241 | 1058 | AFP-*L37 |
| 242 | 216 | AFP-*L39 |
| 243 | 148 | AFO+*L13 |
| 244 | 1527 | BHO-*L1 |
| 245 | 277 | BHO-*L16 |
| 246 | 324 | BHO-*L18 |
| 247 | 2865 | BHO-*L22 |
| 248 | 2366 | BHO-*L23 |
| 249 | 108 | BHO-*L24 |
| 250 | 27 | BHO-*L28 |
| 251 | 2799 | DHO+*L2 |
| 252 | 1172 | DHO+*L6 |
| 253 | 1369 | DHO+*L12 |
| 254 | 55 | DHO+*L19 |
| 255 | 286 | DHO+*L20 |
| 256 | 286 | DHO+*L21 |
| 257 | 309 | DHO+*L22 |
| 258 | 62 | DHO+*L25 |
| 259 | 89 | DHO+*L34 |
| 260 | 955 | DHO+*L35 |
| 261 | 899 | DHO+*L37 |
| 262 | 111 | EHP-*L9 |
| 263 | 731 | EHP-*L13 |
| 264 | 638 | EHP-*L22 |
| 265 | 638 | EHP-*L23 |
| 266 | 165 | EHP-*L26 |
| 267 | 58 | EHP-*L36 |
| 268 | 1830 | AGO+*L2 |
| 269 | 1681 | AGO+*L3 |
| 270 | 413 | AGO+*L6 |
| 271 | 187 | AGO+*L14 |
| 272 | 344 | AGO+*L22 |
| 273 | 79 | AGO+*L25 |
| 274 | 187 | AGO+*L27 |
| 275 | 148 | AGO+*L30 |
| 276 | 101 | ADO+*L33 |
| 277 | 310 | ACP+*L17 |
| 278 | 9 | P_BCDEF*L10 |
| 279 | 217 | P_DEFGH*L6 |
| 280 | 1532 | P_DEFGH*L18 |
| 281 | 43 | CAGH_1*L10 |
| 282 | 5 | RAEFH_AF*L8 |
| 283 | 437 | RAEFH_AF*L17 |
| 284 | 9 | UEFGH*L10 |
| 285 | 65 | SUPK |

### Row R6

The exact bound is `-5841322968214004155277658838931930014671479/3047413616237059213028271808163247125000000`.

| Index | Weight | Product |
|---:|---:|---|
| 1 | 780 | L0*L0*L10 |
| 2 | 780 | L0*L0*L23 |
| 3 | 1832 | L0*L0*L32 |
| 4 | 1566 | L0*L0*L38 |
| 5 | 894 | L0*L2*L8 |
| 6 | 172 | L0*L2*L13 |
| 7 | 9018 | L0*L2*L18 |
| 8 | 3366 | L0*L2*L20 |
| 9 | 2111 | L0*L2*L32 |
| 10 | 3475 | L0*L2*L37 |
| 11 | 2385 | L0*L4*L17 |
| 12 | 1924 | L0*L5*L13 |
| 13 | 6382 | L0*L5*L18 |
| 14 | 274 | L0*L5*L21 |
| 15 | 634 | L0*L5*L23 |
| 16 | 231 | L0*L6*L19 |
| 17 | 194 | L0*L6*L23 |
| 18 | 26 | L0*L6*L31 |
| 19 | 106 | L0*L8*L12 |
| 20 | 85 | L0*L9*L11 |
| 21 | 652 | L0*L9*L33 |
| 22 | 5706 | L0*L10*L12 |
| 23 | 143 | L0*L10*L23 |
| 24 | 310 | L0*L11*L11 |
| 25 | 2307 | L0*L11*L18 |
| 26 | 1422 | L0*L11*L31 |
| 27 | 5443 | L0*L12*L21 |
| 28 | 6016 | L0*L12*L23 |
| 29 | 3372 | L0*L12*L33 |
| 30 | 6016 | L0*L12*L38 |
| 31 | 1538 | L0*L15*L38 |
| 32 | 136 | L0*L17*L31 |
| 33 | 1190 | L0*L17*L32 |
| 34 | 3398 | L0*L20*L33 |
| 35 | 83 | L0*L23*L37 |
| 36 | 516 | L0*L31*L31 |
| 37 | 83 | L0*L37*L38 |
| 38 | 489 | L1*L12*L12 |
| 39 | 3752 | L1*L12*L17 |
| 40 | 184 | L1*L33*L38 |
| 41 | 2110 | L2*L2*L20 |
| 42 | 1028 | L2*L2*L27 |
| 43 | 438 | L2*L3*L6 |
| 44 | 3447 | L2*L4*L37 |
| 45 | 335 | L2*L5*L6 |
| 46 | 66 | L2*L6*L15 |
| 47 | 8 | L2*L6*L23 |
| 48 | 156 | L2*L8*L10 |
| 49 | 18 | L2*L8*L23 |
| 50 | 348 | L2*L8*L33 |
| 51 | 512 | L2*L10*L37 |
| 52 | 252 | L2*L12*L15 |
| 53 | 1405 | L2*L15*L20 |
| 54 | 1028 | L2*L15*L30 |
| 55 | 17 | L2*L16*L38 |
| 56 | 10 | L2*L17*L28 |
| 57 | 514 | L2*L17*L30 |
| 58 | 662 | L2*L21*L31 |
| 59 | 4320 | L2*L23*L37 |
| 60 | 4303 | L2*L37*L38 |
| 61 | 399 | L3*L6*L6 |
| 62 | 1 | L3*L17*L33 |
| 63 | 328 | L4*L5*L6 |
| 64 | 2168 | L4*L17*L18 |
| 65 | 3362 | L4*L17*L27 |
| 66 | 596 | L4*L17*L30 |
| 67 | 636 | L4*L17*L38 |
| 68 | 110 | L5*L5*L6 |
| 69 | 332 | L5*L5*L20 |
| 70 | 962 | L5*L6*L9 |
| 71 | 234 | L5*L6*L18 |
| 72 | 481 | L5*L6*L22 |
| 73 | 570 | L5*L6*L24 |
| 74 | 231 | L5*L6*L26 |
| 75 | 2610 | L5*L6*L34 |
| 76 | 112 | L5*L8*L15 |
| 77 | 1233 | L5*L9*L29 |
| 78 | 836 | L5*L9*L33 |
| 79 | 204 | L5*L11*L14 |
| 80 | 2270 | L5*L12*L20 |
| 81 | 988 | L5*L18*L27 |
| 82 | 1658 | L5*L18*L37 |
| 83 | 147 | L5*L21*L37 |
| 84 | 1470 | L5*L26*L33 |
| 85 | 53 | L6*L6*L31 |
| 86 | 150 | L6*L6*L32 |
| 87 | 926 | L6*L10*L17 |
| 88 | 97 | L6*L10*L25 |
| 89 | 2610 | L6*L11*L12 |
| 90 | 2586 | L6*L12*L17 |
| 91 | 104 | L6*L13*L15 |
| 92 | 698 | L6*L15*L17 |
| 93 | 216 | L6*L16*L17 |
| 94 | 146 | L6*L25*L31 |
| 95 | 438 | L6*L31*L31 |
| 96 | 232 | L6*L37*L38 |
| 97 | 97 | L7*L8*L33 |
| 98 | 307 | L7*L17*L18 |
| 99 | 216 | L7*L17*L37 |
| 100 | 194 | L7*L33*L33 |
| 101 | 516 | L8*L8*L23 |
| 102 | 466 | L8*L9*L33 |
| 103 | 1044 | L8*L10*L33 |
| 104 | 627 | L8*L12*L17 |
| 105 | 482 | L8*L14*L17 |
| 106 | 184 | L8*L15*L23 |
| 107 | 287 | L8*L17*L22 |
| 108 | 724 | L8*L18*L33 |
| 109 | 570 | L8*L24*L33 |
| 110 | 90 | L9*L11*L25 |
| 111 | 2610 | L9*L12*L33 |
| 112 | 675 | L9*L23*L33 |
| 113 | 244 | L9*L27*L33 |
| 114 | 176 | L10*L15*L15 |
| 115 | 435 | L10*L15*L37 |
| 116 | 132 | L10*L17*L24 |
| 117 | 3894 | L11*L15*L18 |
| 118 | 489 | L11*L17*L34 |
| 119 | 771 | L11*L20*L33 |
| 120 | 489 | L12*L12*L27 |
| 121 | 1876 | L12*L15*L15 |
| 122 | 3762 | L12*L15*L18 |
| 123 | 1405 | L12*L15*L21 |
| 124 | 634 | L12*L15*L23 |
| 125 | 1590 | L12*L15*L27 |
| 126 | 1010 | L12*L15*L36 |
| 127 | 250 | L12*L17*L32 |
| 128 | 3214 | L12*L17*L35 |
| 129 | 1116 | L12*L21*L37 |
| 130 | 636 | L12*L22*L37 |
| 131 | 2610 | L12*L28*L33 |
| 132 | 1608 | L15*L17*L18 |
| 133 | 482 | L15*L17*L28 |
| 134 | 3362 | L15*L33*L37 |
| 135 | 890 | L15*L37*L38 |
| 136 | 26 | L16*L17*L32 |
| 137 | 676 | L17*L17*L22 |
| 138 | 3255 | L17*L18*L26 |
| 139 | 1324 | L17*L18*L30 |
| 140 | 2229 | L17*L18*L32 |
| 141 | 76 | L17*L18*L36 |
| 142 | 76 | L17*L19*L28 |
| 143 | 3512 | L17*L20*L33 |
| 144 | 578 | L17*L20*L34 |
| 145 | 232 | L17*L23*L28 |
| 146 | 636 | L17*L23*L34 |
| 147 | 627 | L17*L28*L34 |
| 148 | 538 | L17*L37*L38 |
| 149 | 2528 | L18*L33*L37 |
| 150 | 3364 | L20*L33*L37 |
| 151 | 332 | L21*L33*L33 |
| 152 | 138 | L23*L37*L37 |
| 153 | 2066 | L26*L33*L33 |
| 154 | 512 | L31*L33*L37 |
| 155 | 1108 | L33*L33*L37 |
| 156 | 150 | L33*L35*L35 |
| 157 | 636 | L33*L37*L38 |
| 158 | 1394 | ABC+*L2 |
| 159 | 80 | ABC+*L4 |
| 160 | 1210 | ABC+*L20 |
| 161 | 894 | ABC+*L28 |
| 162 | 688 | ABC+*L34 |
| 163 | 4880 | ABC+*L37 |
| 164 | 26 | ABG+*L17 |
| 165 | 1679 | ABH+*L5 |
| 166 | 2850 | ABH+*L18 |
| 167 | 731 | ACF+*L17 |
| 168 | 106 | AGH+*L8 |
| 169 | 1443 | AGH+*L18 |
| 170 | 100 | AGH+*L20 |
| 171 | 4608 | AGH+*L33 |
| 172 | 3187 | AGH+*L37 |
| 173 | 1056 | BCD+*L5 |
| 174 | 128 | BCD+*L14 |
| 175 | 235 | BCD+*L18 |
| 176 | 241 | BCD+*L20 |
| 177 | 8 | BCD+*L23 |
| 178 | 146 | BCD+*L25 |
| 179 | 689 | BCD+*L27 |
| 180 | 194 | BCD+*L33 |
| 181 | 496 | BCD+*L35 |
| 182 | 348 | CDE+*L2 |
| 183 | 836 | CDE+*L4 |
| 184 | 946 | CDE+*L9 |
| 185 | 2416 | CDE+*L12 |
| 186 | 636 | CDE+*L18 |
| 187 | 636 | CDE+*L19 |
| 188 | 488 | CDE+*L22 |
| 189 | 570 | CDE+*L24 |
| 190 | 754 | CDE+*L29 |
| 191 | 2416 | CDE+*L34 |
| 192 | 355 | CDE+*L35 |
| 193 | 194 | DEF+*L32 |
| 194 | 394 | DEF+*L37 |
| 195 | 2612 | FGH+*L0 |
| 196 | 809 | FGH+*L8 |
| 197 | 107 | FGH+*L10 |
| 198 | 738 | FGH+*L12 |
| 199 | 2874 | FGH+*L15 |
| 200 | 2820 | FGH+*L23 |
| 201 | 94 | FGH+*L28 |
| 202 | 150 | FGH+*L33 |
| 203 | 26 | FGH+*L37 |
| 204 | 2820 | FGH+*L38 |
| 205 | 786 | AOP-*L0 |
| 206 | 752 | AOP-*L15 |
| 207 | 491 | AOP-*L18 |
| 208 | 450 | AOP-*L33 |
| 209 | 2 | BOP-*L11 |
| 210 | 1344 | EOP-*L5 |
| 211 | 277 | EOP-*L11 |
| 212 | 894 | FOP+*L5 |
| 213 | 464 | FOP+*L6 |
| 214 | 238 | FOP+*L11 |
| 215 | 491 | FOP+*L18 |
| 216 | 786 | FOP+*L27 |
| 217 | 464 | FOP+*L35 |
| 218 | 431 | FOP+*L37 |
| 219 | 431 | HOP+*L17 |
| 220 | 196 | ABO+*L1 |
| 221 | 1024 | ABO+*L10 |
| 222 | 3700 | ABO+*L12 |
| 223 | 1405 | ABO+*L26 |
| 224 | 231 | ABO+*L29 |
| 225 | 1962 | ABO+*L30 |
| 226 | 3182 | ABO+*L34 |
| 227 | 231 | ABO+*L36 |
| 228 | 1756 | AHO-*L17 |
| 229 | 194 | DEP+*L0 |
| 230 | 134 | DEP+*L8 |
| 231 | 1348 | EFP+*L0 |
| 232 | 1130 | EFP+*L3 |
| 233 | 190 | EFP+*L17 |
| 234 | 97 | EFP+*L29 |
| 235 | 1132 | EFP+*L31 |
| 236 | 238 | EFP+*L33 |
| 237 | 563 | EFP+*L36 |
| 238 | 752 | EFP+*L37 |
| 239 | 1554 | FGO+*L33 |
| 240 | 2606 | GHO+*L1 |
| 241 | 252 | GHO+*L2 |
| 242 | 134 | GHO+*L4 |
| 243 | 5139 | GHO+*L10 |
| 244 | 2612 | GHO+*L26 |
| 245 | 250 | GHO+*L34 |
| 246 | 10 | GHO+*L35 |
| 247 | 1188 | AFO+*L3 |
| 248 | 6942 | AFO+*L12 |
| 249 | 2612 | AFO+*L27 |
| 250 | 3018 | AFO+*L30 |
| 251 | 1756 | AFO+*L33 |
| 252 | 491 | AFO+*L38 |
| 253 | 194 | AFP-*L9 |
| 254 | 235 | DHO+*L2 |
| 255 | 1470 | EHP-*L0 |
| 256 | 47 | EHP-*L6 |
| 257 | 1636 | EHP-*L11 |
| 258 | 929 | EHP-*L17 |
| 259 | 684 | EHP-*L26 |
| 260 | 184 | EHP-*L29 |
| 261 | 17 | EHP-*L30 |
| 262 | 1436 | EHP-*L37 |
| 263 | 538 | AGO-*L17 |
| 264 | 2308 | BGO-*L2 |
| 265 | 1794 | BGO-*L3 |
| 266 | 4040 | BGO-*L4 |
| 267 | 10 | BGO-*L6 |
| 268 | 324 | BGO-*L9 |
| 269 | 250 | BGO-*L12 |
| 270 | 1 | BGO-*L33 |
| 271 | 324 | BGO-*L36 |
| 272 | 4880 | CHO+*L0 |
| 273 | 6666 | CHO+*L2 |
| 274 | 241 | CHO+*L6 |
| 275 | 2674 | CHO+*L13 |
| 276 | 3512 | CHO+*L15 |
| 277 | 2218 | CHO+*L34 |
| 278 | 690 | P_AHGFE*L17 |
| 279 | 694 | CEFH_1*L5 |
| 280 | 620 | RAEFH_EH*L5 |
| 281 | 1001 | RAEFH_EH*L11 |
| 282 | 10 | UBEF*L17 |

### Row R7

The exact bound is `-10809296319193873782800780183548537493356014287/16992378324137842171845643602318265969000000000`.

| Index | Weight | Product |
|---:|---:|---|
| 1 | 91 | L0*L0*L10 |
| 2 | 134 | L0*L0*L23 |
| 3 | 20 | L0*L0*L31 |
| 4 | 186 | L0*L0*L38 |
| 5 | 70 | L0*L1*L33 |
| 6 | 158 | L0*L2*L8 |
| 7 | 29 | L0*L2*L28 |
| 8 | 26 | L0*L2*L36 |
| 9 | 98 | L0*L4*L17 |
| 10 | 514 | L0*L5*L10 |
| 11 | 388 | L0*L5*L23 |
| 12 | 63 | L0*L5*L26 |
| 13 | 510 | L0*L5*L38 |
| 14 | 540 | L0*L6*L10 |
| 15 | 499 | L0*L6*L23 |
| 16 | 499 | L0*L6*L38 |
| 17 | 92 | L0*L7*L33 |
| 18 | 354 | L0*L8*L38 |
| 19 | 50 | L0*L10*L12 |
| 20 | 66 | L0*L10*L17 |
| 21 | 148 | L0*L10*L33 |
| 22 | 54 | L0*L11*L23 |
| 23 | 86 | L0*L11*L25 |
| 24 | 90 | L0*L12*L15 |
| 25 | 40 | L0*L12*L21 |
| 26 | 50 | L0*L12*L23 |
| 27 | 1 | L0*L12*L29 |
| 28 | 1 | L0*L12*L37 |
| 29 | 54 | L0*L12*L38 |
| 30 | 260 | L0*L15*L38 |
| 31 | 1 | L0*L17*L17 |
| 32 | 208 | L0*L18*L25 |
| 33 | 123 | L0*L18*L28 |
| 34 | 36 | L0*L18*L35 |
| 35 | 13 | L0*L19*L38 |
| 36 | 186 | L0*L20*L33 |
| 37 | 112 | L0*L23*L38 |
| 38 | 102 | L0*L25*L33 |
| 39 | 1 | L0*L32*L38 |
| 40 | 242 | L0*L33*L34 |
| 41 | 106 | L0*L33*L35 |
| 42 | 3 | L0*L37*L38 |
| 43 | 73 | L1*L5*L37 |
| 44 | 110 | L1*L12*L33 |
| 45 | 26 | L1*L16*L33 |
| 46 | 90 | L2*L6*L17 |
| 47 | 20 | L2*L6*L28 |
| 48 | 20 | L2*L8*L29 |
| 49 | 1 | L2*L15*L26 |
| 50 | 48 | L2*L16*L33 |
| 51 | 1 | L2*L17*L20 |
| 52 | 46 | L2*L21*L35 |
| 53 | 20 | L2*L28*L28 |
| 54 | 5 | L2*L36*L37 |
| 55 | 1 | L2*L37*L37 |
| 56 | 48 | L3*L20*L33 |
| 57 | 2 | L4*L12*L12 |
| 58 | 29 | L5*L5*L20 |
| 59 | 76 | L5*L5*L35 |
| 60 | 114 | L5*L6*L6 |
| 61 | 740 | L5*L6*L18 |
| 62 | 483 | L5*L6*L25 |
| 63 | 10 | L5*L9*L11 |
| 64 | 2 | L5*L11*L13 |
| 65 | 60 | L5*L11*L17 |
| 66 | 49 | L5*L12*L20 |
| 67 | 316 | L5*L15*L18 |
| 68 | 204 | L5*L15*L25 |
| 69 | 58 | L5*L17*L21 |
| 70 | 490 | L5*L17*L28 |
| 71 | 21 | L5*L17*L37 |
| 72 | 356 | L5*L18*L37 |
| 73 | 174 | L5*L25*L27 |
| 74 | 82 | L5*L33*L35 |
| 75 | 21 | L5*L37*L37 |
| 76 | 16 | L5*L37*L38 |
| 77 | 83 | L6*L6*L38 |
| 78 | 476 | L6*L11*L20 |
| 79 | 286 | L6*L12*L15 |
| 80 | 292 | L6*L12*L17 |
| 81 | 54 | L6*L12*L18 |
| 82 | 102 | L6*L12*L21 |
| 83 | 2 | L6*L13*L31 |
| 84 | 370 | L6*L15*L23 |
| 85 | 1 | L6*L16*L17 |
| 86 | 292 | L6*L17*L34 |
| 87 | 388 | L6*L17*L38 |
| 88 | 238 | L6*L20*L33 |
| 89 | 68 | L6*L22*L33 |
| 90 | 6 | L6*L32*L33 |
| 91 | 388 | L6*L37*L38 |
| 92 | 2 | L7*L12*L23 |
| 93 | 5 | L7*L14*L33 |
| 94 | 42 | L7*L17*L18 |
| 95 | 6 | L7*L30*L33 |
| 96 | 349 | L8*L8*L38 |
| 97 | 48 | L8*L10*L38 |
| 98 | 388 | L8*L15*L38 |
| 99 | 89 | L8*L28*L38 |
| 100 | 124 | L8*L33*L38 |
| 101 | 1 | L8*L37*L38 |
| 102 | 72 | L8*L38*L38 |
| 103 | 2 | L9*L10*L12 |
| 104 | 86 | L9*L11*L33 |
| 105 | 23 | L10*L10*L17 |
| 106 | 82 | L10*L12*L15 |
| 107 | 2 | L10*L12*L25 |
| 108 | 2 | L10*L12*L34 |
| 109 | 90 | L10*L17*L27 |
| 110 | 572 | L10*L18*L28 |
| 111 | 90 | L10*L27*L33 |
| 112 | 578 | L11*L11*L20 |
| 113 | 178 | L11*L15*L18 |
| 114 | 392 | L11*L17*L18 |
| 115 | 19 | L11*L17*L22 |
| 116 | 56 | L12*L15*L15 |
| 117 | 10 | L12*L15*L20 |
| 118 | 1 | L12*L20*L28 |
| 119 | 388 | L12*L20*L33 |
| 120 | 4 | L12*L21*L38 |
| 121 | 29 | L12*L25*L33 |
| 122 | 1 | L12*L26*L37 |
| 123 | 1 | L12*L27*L28 |
| 124 | 2 | L12*L33*L34 |
| 125 | 2 | L12*L33*L35 |
| 126 | 2 | L12*L35*L38 |
| 127 | 140 | L14*L18*L33 |
| 128 | 22 | L14*L20*L33 |
| 129 | 36 | L14*L23*L33 |
| 130 | 2227 | L14*L28*L33 |
| 131 | 142 | L14*L33*L37 |
| 132 | 199 | L15*L15*L38 |
| 133 | 46 | L15*L17*L18 |
| 134 | 6 | L15*L17*L22 |
| 135 | 1 | L15*L17*L29 |
| 136 | 53 | L15*L17*L31 |
| 137 | 208 | L15*L18*L25 |
| 138 | 330 | L15*L18*L28 |
| 139 | 39 | L15*L23*L38 |
| 140 | 1 | L17*L17*L36 |
| 141 | 2 | L17*L18*L18 |
| 142 | 10 | L17*L18*L25 |
| 143 | 91 | L17*L18*L26 |
| 144 | 10 | L17*L21*L23 |
| 145 | 2 | L17*L22*L23 |
| 146 | 16 | L17*L23*L33 |
| 147 | 1 | L17*L28*L37 |
| 148 | 44 | L17*L29*L30 |
| 149 | 51 | L17*L33*L35 |
| 150 | 51 | L17*L33*L36 |
| 151 | 2 | L17*L38*L38 |
| 152 | 80 | L18*L18*L25 |
| 153 | 72 | L18*L18*L27 |
| 154 | 116 | L18*L20*L33 |
| 155 | 80 | L18*L21*L23 |
| 156 | 224 | L18*L25*L28 |
| 157 | 438 | L18*L28*L28 |
| 158 | 124 | L18*L28*L33 |
| 159 | 72 | L18*L28*L38 |
| 160 | 389 | L18*L33*L35 |
| 161 | 278 | L20*L25*L33 |
| 162 | 23 | L21*L33*L33 |
| 163 | 52 | L22*L25*L33 |
| 164 | 72 | L24*L24*L33 |
| 165 | 72 | L24*L26*L33 |
| 166 | 184 | L24*L33*L35 |
| 167 | 32 | L25*L33*L34 |
| 168 | 27 | L26*L26*L33 |
| 169 | 28 | L26*L29*L33 |
| 170 | 247 | L28*L30*L33 |
| 171 | 114 | L33*L35*L35 |
| 172 | 184 | ABC+*L8 |
| 173 | 24 | ABC+*L28 |
| 174 | 6 | ABH+*L1 |
| 175 | 5 | ABH+*L17 |
| 176 | 5 | ABH+*L28 |
| 177 | 5 | BCD+*L15 |
| 178 | 236 | CDE+*L8 |
| 179 | 280 | CDE+*L12 |
| 180 | 193 | CDE+*L15 |
| 181 | 787 | CDE+*L20 |
| 182 | 74 | CDE+*L23 |
| 183 | 245 | CDE+*L25 |
| 184 | 237 | CDE+*L27 |
| 185 | 236 | CDE+*L29 |
| 186 | 246 | CDE+*L30 |
| 187 | 280 | CDE+*L34 |
| 188 | 236 | CDE+*L35 |
| 189 | 483 | CDE+*L37 |
| 190 | 362 | DEF+*L4 |
| 191 | 566 | DEF+*L5 |
| 192 | 114 | DEF+*L6 |
| 193 | 2 | DEF+*L13 |
| 194 | 74 | DEF+*L22 |
| 195 | 178 | DEF+*L25 |
| 196 | 246 | DEF+*L31 |
| 197 | 114 | DEF+*L36 |
| 198 | 131 | FGH+*L0 |
| 199 | 342 | FGH+*L6 |
| 200 | 84 | FGH+*L10 |
| 201 | 60 | FGH+*L23 |
| 202 | 2 | FGH+*L31 |
| 203 | 58 | FGH+*L38 |
| 204 | 122 | AOP-*L5 |
| 205 | 145 | AOP-*L8 |
| 206 | 32 | FOP+*L1 |
| 207 | 50 | FOP+*L4 |
| 208 | 1632 | FOP+*L6 |
| 209 | 1092 | FOP+*L7 |
| 210 | 48 | FOP+*L16 |
| 211 | 202 | FOP+*L18 |
| 212 | 122 | FOP+*L23 |
| 213 | 310 | FOP+*L28 |
| 214 | 5 | FOP+*L34 |
| 215 | 171 | FOP+*L35 |
| 216 | 57 | HOP+*L17 |
| 217 | 60 | HOP+*L28 |
| 218 | 42 | HOP+*L33 |
| 219 | 122 | HOP+*L38 |
| 220 | 160 | DEP+*L18 |
| 221 | 41 | DEP+*L28 |
| 222 | 42 | DEP+*L35 |
| 223 | 114 | EFP+*L9 |
| 224 | 86 | EFP+*L11 |
| 225 | 59 | EFP+*L17 |
| 226 | 395 | EFP+*L20 |
| 227 | 233 | EFP+*L23 |
| 228 | 112 | EFP+*L24 |
| 229 | 112 | EFP+*L25 |
| 230 | 110 | EFP+*L37 |
| 231 | 40 | GHO+*L1 |
| 232 | 56 | GHO+*L7 |
| 233 | 57 | GHO+*L17 |
| 234 | 4 | GHO+*L18 |
| 235 | 1 | GHO+*L28 |
| 236 | 56 | GHO+*L37 |
| 237 | 5 | FGP+*L18 |
| 238 | 186 | AFO+*L0 |
| 239 | 656 | AFO+*L5 |
| 240 | 654 | AFO+*L6 |
| 241 | 85 | AFO+*L8 |
| 242 | 54 | AFO+*L12 |
| 243 | 150 | AFO+*L15 |
| 244 | 48 | AFO+*L17 |
| 245 | 240 | AFO+*L24 |
| 246 | 560 | AFO+*L33 |
| 247 | 85 | AFO+*L38 |
| 248 | 141 | AFP-*L11 |
| 249 | 4 | AFP-*L12 |
| 250 | 184 | AFP-*L18 |
| 251 | 32 | AFP-*L20 |
| 252 | 112 | AFP-*L23 |
| 253 | 52 | AFP-*L27 |
| 254 | 3 | AFP-*L37 |
| 255 | 1260 | DHO+*L4 |
| 256 | 266 | DHO+*L10 |
| 257 | 56 | DHO+*L13 |
| 258 | 272 | DHO+*L14 |
| 259 | 61 | DHO+*L16 |
| 260 | 256 | DHO+*L22 |
| 261 | 628 | DHO+*L23 |
| 262 | 224 | DHO+*L25 |
| 263 | 437 | DHO+*L27 |
| 264 | 355 | DHO+*L28 |
| 265 | 432 | DHO+*L36 |
| 266 | 72 | DHO+*L38 |
| 267 | 198 | EHP-*L4 |
| 268 | 96 | EHP-*L6 |
| 269 | 283 | EHP-*L8 |
| 270 | 3 | EHP-*L11 |
| 271 | 232 | EHP-*L19 |
| 272 | 476 | EHP-*L20 |
| 273 | 305 | EHP-*L21 |
| 274 | 161 | EHP-*L23 |
| 275 | 208 | EHP-*L27 |
| 276 | 61 | EHP-*L35 |
| 277 | 52 | EHP-*L37 |
| 278 | 292 | AGO-*L33 |
| 279 | 1 | BGO-*L16 |
| 280 | 48 | BGO-*L33 |
| 281 | 46 | BGO-*L35 |
| 282 | 638 | CHO-*L0 |
| 283 | 375 | CHO-*L3 |
| 284 | 368 | CHO-*L4 |
| 285 | 1025 | CHO-*L7 |
| 286 | 98 | CHO-*L22 |
| 287 | 602 | CHO-*L25 |
| 288 | 37 | CHO-*L26 |
| 289 | 374 | CHO-*L31 |
| 290 | 787 | CHO-*L36 |
| 291 | 58 | CHO-*L37 |
| 292 | 116 | CHO-*L38 |
| 293 | 82 | CFP+*L5 |
| 294 | 54 | CFP+*L6 |
| 295 | 245 | CFP+*L8 |
| 296 | 2 | CFP+*L12 |
| 297 | 482 | CFP+*L14 |
| 298 | 214 | CFP+*L18 |
| 299 | 880 | CFP+*L21 |
| 300 | 52 | CFP+*L23 |
| 301 | 72 | CFP+*L24 |
| 302 | 82 | CFP+*L33 |
| 303 | 213 | DFP+*L18 |
| 304 | 38 | ER*L17 |
| 305 | 2 | P_DEFGH*L3 |
| 306 | 61 | CAFG_1*L33 |
| 307 | 14 | CCDH_1*L0 |
| 308 | 88 | CCFH_2*L0 |
| 309 | 2088 | CCFH_2*L28 |
| 310 | 524 | CEFH_1*L18 |
| 311 | 6 | RADFH_DH*L33 |

### Row R8

The exact bound is `-124388823131364098922397031941254281983/133861779840527960247888374699000000000`.

| Index | Weight | Product |
|---:|---:|---|
| 1 | 88 | L0*L0*L10 |
| 2 | 126 | L0*L0*L23 |
| 3 | 140 | L0*L0*L32 |
| 4 | 6 | L0*L2*L4 |
| 5 | 226 | L0*L2*L9 |
| 6 | 43 | L0*L2*L18 |
| 7 | 253 | L0*L2*L20 |
| 8 | 15 | L0*L2*L22 |
| 9 | 57 | L0*L2*L24 |
| 10 | 179 | L0*L2*L28 |
| 11 | 20 | L0*L2*L32 |
| 12 | 94 | L0*L5*L6 |
| 13 | 140 | L0*L5*L14 |
| 14 | 158 | L0*L5*L25 |
| 15 | 129 | L0*L6*L10 |
| 16 | 36 | L0*L6*L23 |
| 17 | 161 | L0*L6*L38 |
| 18 | 218 | L0*L8*L10 |
| 19 | 14 | L0*L8*L38 |
| 20 | 24 | L0*L11*L17 |
| 21 | 198 | L0*L12*L38 |
| 22 | 113 | L0*L15*L30 |
| 23 | 104 | L0*L15*L32 |
| 24 | 93 | L0*L15*L34 |
| 25 | 153 | L0*L15*L38 |
| 26 | 91 | L0*L17*L33 |
| 27 | 75 | L0*L18*L21 |
| 28 | 24 | L0*L18*L23 |
| 29 | 76 | L0*L18*L25 |
| 30 | 27 | L0*L18*L34 |
| 31 | 100 | L0*L20*L33 |
| 32 | 63 | L0*L23*L29 |
| 33 | 35 | L0*L23*L33 |
| 34 | 279 | L0*L23*L37 |
| 35 | 4 | L0*L23*L38 |
| 36 | 126 | L0*L27*L38 |
| 37 | 17 | L0*L31*L34 |
| 38 | 58 | L0*L31*L36 |
| 39 | 199 | L0*L31*L38 |
| 40 | 15 | L0*L33*L33 |
| 41 | 4 | L0*L38*L38 |
| 42 | 12 | L1*L2*L35 |
| 43 | 48 | L1*L17*L22 |
| 44 | 111 | L1*L17*L38 |
| 45 | 14 | L1*L25*L33 |
| 46 | 3 | L2*L2*L7 |
| 47 | 1 | L2*L2*L36 |
| 48 | 92 | L2*L2*L37 |
| 49 | 38 | L2*L6*L31 |
| 50 | 23 | L2*L8*L18 |
| 51 | 5 | L2*L9*L22 |
| 52 | 15 | L2*L10*L24 |
| 53 | 4 | L2*L10*L27 |
| 54 | 70 | L2*L14*L21 |
| 55 | 18 | L2*L15*L23 |
| 56 | 3 | L2*L15*L30 |
| 57 | 21 | L2*L17*L25 |
| 58 | 41 | L2*L17*L36 |
| 59 | 4 | L2*L19*L25 |
| 60 | 23 | L2*L19*L28 |
| 61 | 28 | L2*L21*L25 |
| 62 | 59 | L2*L21*L35 |
| 63 | 47 | L2*L27*L38 |
| 64 | 2 | L2*L29*L33 |
| 65 | 90 | L2*L30*L37 |
| 66 | 36 | L2*L31*L35 |
| 67 | 22 | L3*L5*L17 |
| 68 | 20 | L3*L25*L33 |
| 69 | 59 | L4*L6*L17 |
| 70 | 290 | L4*L9*L17 |
| 71 | 4 | L5*L5*L8 |
| 72 | 25 | L5*L6*L6 |
| 73 | 3 | L5*L6*L25 |
| 74 | 14 | L5*L8*L17 |
| 75 | 70 | L5*L12*L15 |
| 76 | 60 | L5*L15*L15 |
| 77 | 4 | L5*L17*L21 |
| 78 | 35 | L5*L17*L31 |
| 79 | 26 | L6*L10*L17 |
| 80 | 101 | L6*L12*L18 |
| 81 | 208 | L6*L12*L21 |
| 82 | 21 | L6*L14*L23 |
| 83 | 5 | L6*L23*L29 |
| 84 | 51 | L6*L33*L35 |
| 85 | 11 | L7*L15*L33 |
| 86 | 86 | L7*L17*L18 |
| 87 | 59 | L7*L17*L30 |
| 88 | 27 | L7*L21*L33 |
| 89 | 57 | L8*L8*L10 |
| 90 | 43 | L8*L12*L15 |
| 91 | 25 | L8*L12*L25 |
| 92 | 49 | L8*L17*L22 |
| 93 | 41 | L8*L17*L32 |
| 94 | 15 | L8*L18*L35 |
| 95 | 3 | L8*L21*L23 |
| 96 | 41 | L8*L23*L38 |
| 97 | 7 | L9*L23*L33 |
| 98 | 200 | L9*L24*L33 |
| 99 | 419 | L9*L26*L33 |
| 100 | 99 | L9*L33*L35 |
| 101 | 22 | L9*L33*L36 |
| 102 | 139 | L9*L33*L37 |
| 103 | 21 | L10*L15*L23 |
| 104 | 110 | L10*L17*L18 |
| 105 | 273 | L10*L17*L20 |
| 106 | 20 | L10*L17*L22 |
| 107 | 271 | L10*L17*L24 |
| 108 | 34 | L10*L17*L27 |
| 109 | 151 | L10*L17*L36 |
| 110 | 677 | L10*L18*L28 |
| 111 | 821 | L10*L18*L35 |
| 112 | 18 | L10*L24*L28 |
| 113 | 13 | L10*L25*L38 |
| 114 | 2 | L10*L28*L32 |
| 115 | 24 | L10*L28*L33 |
| 116 | 382 | L10*L28*L38 |
| 117 | 14 | L12*L15*L19 |
| 118 | 191 | L12*L15*L22 |
| 119 | 100 | L12*L15*L24 |
| 120 | 407 | L12*L15*L27 |
| 121 | 124 | L12*L15*L28 |
| 122 | 147 | L12*L21*L27 |
| 123 | 37 | L12*L21*L33 |
| 124 | 28 | L12*L23*L24 |
| 125 | 60 | L12*L23*L29 |
| 126 | 24 | L12*L23*L35 |
| 127 | 72 | L12*L24*L33 |
| 128 | 24 | L12*L27*L38 |
| 129 | 28 | L13*L25*L33 |
| 130 | 4 | L14*L18*L38 |
| 131 | 72 | L15*L17*L38 |
| 132 | 75 | L15*L18*L21 |
| 133 | 44 | L15*L18*L35 |
| 134 | 50 | L17*L18*L27 |
| 135 | 56 | L17*L18*L30 |
| 136 | 52 | L17*L19*L32 |
| 137 | 55 | L17*L20*L22 |
| 138 | 27 | L17*L21*L22 |
| 139 | 28 | L17*L22*L23 |
| 140 | 72 | L17*L22*L26 |
| 141 | 128 | L17*L23*L24 |
| 142 | 40 | L17*L23*L33 |
| 143 | 35 | L17*L23*L36 |
| 144 | 128 | L17*L24*L38 |
| 145 | 49 | L17*L25*L32 |
| 146 | 91 | L17*L27*L31 |
| 147 | 11 | L17*L31*L33 |
| 148 | 20 | L18*L18*L35 |
| 149 | 100 | L18*L25*L37 |
| 150 | 5 | L18*L28*L28 |
| 151 | 193 | L18*L28*L33 |
| 152 | 300 | L18*L28*L34 |
| 153 | 675 | L18*L33*L35 |
| 154 | 80 | L20*L21*L33 |
| 155 | 48 | L20*L25*L33 |
| 156 | 2 | L20*L33*L33 |
| 157 | 198 | L21*L26*L33 |
| 158 | 136 | L21*L33*L37 |
| 159 | 25 | L22*L25*L33 |
| 160 | 52 | L23*L33*L37 |
| 161 | 32 | L24*L25*L33 |
| 162 | 215 | L25*L33*L37 |
| 163 | 102 | L26*L26*L33 |
| 164 | 99 | L26*L33*L35 |
| 165 | 51 | L28*L28*L33 |
| 166 | 5 | L28*L28*L38 |
| 167 | 66 | L28*L33*L38 |
| 168 | 12 | L28*L38*L38 |
| 169 | 24 | L30*L33*L37 |
| 170 | 22 | L33*L33*L35 |
| 171 | 12 | L33*L37*L38 |
| 172 | 149 | ABC+*L9 |
| 173 | 47 | ABC+*L12 |
| 174 | 92 | ABC+*L20 |
| 175 | 57 | ABC+*L24 |
| 176 | 15 | ABC+*L31 |
| 177 | 64 | ABC+*L34 |
| 178 | 167 | ABC+*L35 |
| 179 | 160 | ABC+*L36 |
| 180 | 230 | ABC+*L38 |
| 181 | 34 | ABH+*L22 |
| 182 | 38 | ABH+*L26 |
| 183 | 37 | ABH+*L30 |
| 184 | 38 | ABH+*L37 |
| 185 | 314 | AGH+*L15 |
| 186 | 19 | BCD+*L23 |
| 187 | 1 | BDE+*L2 |
| 188 | 162 | CDE+*L0 |
| 189 | 2 | CDE+*L4 |
| 190 | 51 | CDE+*L6 |
| 191 | 8 | CDE+*L15 |
| 192 | 116 | CDE+*L18 |
| 193 | 18 | CDE+*L20 |
| 194 | 105 | CDE+*L22 |
| 195 | 26 | CDE+*L28 |
| 196 | 35 | FGH+*L4 |
| 197 | 192 | FGH+*L6 |
| 198 | 32 | FGH+*L14 |
| 199 | 423 | FGH+*L19 |
| 200 | 143 | FGH+*L21 |
| 201 | 156 | FGH+*L23 |
| 202 | 100 | FGH+*L24 |
| 203 | 167 | FGH+*L28 |
| 204 | 222 | AOP-*L12 |
| 205 | 300 | EOP-*L12 |
| 206 | 12 | EOP-*L38 |
| 207 | 4 | FOP+*L30 |
| 208 | 12 | FOP+*L38 |
| 209 | 31 | HOP+*L34 |
| 210 | 8 | ABO+*L23 |
| 211 | 4 | ABO+*L38 |
| 212 | 134 | AHO-*L28 |
| 213 | 20 | CDP+*L33 |
| 214 | 50 | DEP+*L1 |
| 215 | 313 | DEP+*L12 |
| 216 | 228 | DEP+*L18 |
| 217 | 12 | DEP+*L22 |
| 218 | 11 | DEP+*L26 |
| 219 | 19 | DEP+*L32 |
| 220 | 277 | DEP+*L34 |
| 221 | 186 | EFP+*L3 |
| 222 | 212 | EFP+*L4 |
| 223 | 78 | EFP+*L9 |
| 224 | 24 | EFP+*L11 |
| 225 | 345 | EFP+*L18 |
| 226 | 3 | EFP+*L21 |
| 227 | 201 | EFP+*L22 |
| 228 | 54 | EFP+*L29 |
| 229 | 184 | EFP+*L31 |
| 230 | 39 | EFP+*L35 |
| 231 | 139 | EFP+*L36 |
| 232 | 39 | EFP+*L37 |
| 233 | 17 | FHP+*L2 |
| 234 | 24 | FHP+*L33 |
| 235 | 59 | FGO+*L0 |
| 236 | 149 | GHO+*L7 |
| 237 | 124 | GHO+*L15 |
| 238 | 550 | GHO+*L22 |
| 239 | 4 | GHO+*L38 |
| 240 | 25 | FGP+*L8 |
| 241 | 538 | FGP+*L18 |
| 242 | 28 | FGP+*L21 |
| 243 | 43 | FGP+*L22 |
| 244 | 133 | FGP+*L38 |
| 245 | 149 | GHP+*L38 |
| 246 | 19 | AEP+*L33 |
| 247 | 179 | AFO+*L6 |
| 248 | 27 | AFO+*L12 |
| 249 | 308 | AFO+*L16 |
| 250 | 710 | AFO+*L20 |
| 251 | 635 | AFO+*L21 |
| 252 | 31 | AFO+*L22 |
| 253 | 76 | AFO+*L24 |
| 254 | 126 | AFO+*L27 |
| 255 | 148 | AFO+*L28 |
| 256 | 31 | AFO+*L30 |
| 257 | 82 | AFP-*L17 |
| 258 | 15 | AFP-*L33 |
| 259 | 687 | DHO+*L4 |
| 260 | 189 | DHO+*L10 |
| 261 | 122 | DHO+*L16 |
| 262 | 32 | DHO+*L18 |
| 263 | 251 | DHO+*L23 |
| 264 | 11 | DHO+*L27 |
| 265 | 23 | DHO+*L32 |
| 266 | 401 | DHO+*L34 |
| 267 | 15 | DHO+*L36 |
| 268 | 21 | EHP-*L8 |
| 269 | 204 | EHP-*L11 |
| 270 | 276 | EHP-*L13 |
| 271 | 307 | EHP-*L18 |
| 272 | 10 | EHP-*L29 |
| 273 | 12 | EHP-*L31 |
| 274 | 149 | EHP-*L38 |
| 275 | 27 | AGO-*L10 |
| 276 | 18 | BGO-*L7 |
| 277 | 105 | BGO-*L10 |
| 278 | 4 | BGO-*L18 |
| 279 | 28 | BGO-*L25 |
| 280 | 88 | BGO-*L26 |
| 281 | 68 | BGO-*L33 |
| 282 | 41 | BGO-*L35 |
| 283 | 157 | CHO-*L1 |
| 284 | 70 | CHO-*L3 |
| 285 | 134 | CHO-*L9 |
| 286 | 35 | CHO-*L11 |
| 287 | 340 | CHO-*L12 |
| 288 | 235 | CHO-*L13 |
| 289 | 12 | CHO-*L18 |
| 290 | 75 | CHO-*L21 |
| 291 | 8 | CHO-*L23 |
| 292 | 100 | CHO-*L25 |
| 293 | 48 | CHO-*L35 |
| 294 | 140 | CHO-*L37 |
| 295 | 132 | CFP-*L9 |
| 296 | 83 | CFP-*L13 |
| 297 | 21 | CFP-*L18 |
| 298 | 25 | CFP-*L21 |
| 299 | 361 | CFP-*L24 |
| 300 | 462 | CFP-*L26 |
| 301 | 18 | CFP-*L30 |
| 302 | 17 | CFP-*L34 |
| 303 | 215 | CFP-*L37 |
| 304 | 37 | CFP-*L38 |
| 305 | 73 | BFO+*L0 |
| 306 | 8 | CAFH_1*L2 |
| 307 | 2 | CBFG_1*L2 |
| 308 | 165 | CCEH_1*L17 |
| 309 | 66 | CCFH_1*L17 |
| 310 | 11 | CEFH_1*L8 |
| 311 | 135 | CEFH_1*L18 |
| 312 | 14 | CEFH_1*L28 |
| 313 | 2 | RCEFH_CF*L10 |
| 314 | 155 | RCEFH_CF*L20 |
| 315 | 329 | RCEFH_CF*L24 |
| 316 | 233 | RCEFH_CF*L26 |
| 317 | 3 | RCEFH_CF*L29 |
| 318 | 2 | RCEFH_CF*L31 |
| 319 | 12 | RCEFH_CF*L38 |
| 320 | 99 | UAEF*L17 |

### Row R9

The exact bound is `-681056857014472628030420791304830253/10121873711949184139726909240000000`.

| Index | Weight | Product |
|---:|---:|---|
| 1 | 619 | L0*L0*L33 |
| 2 | 1090 | L0*L0*L34 |
| 3 | 1644 | L0*L2*L2 |
| 4 | 2077 | L0*L2*L5 |
| 5 | 893 | L0*L2*L15 |
| 6 | 505 | L0*L2*L18 |
| 7 | 1293 | L0*L2*L34 |
| 8 | 731 | L0*L4*L17 |
| 9 | 168 | L0*L5*L14 |
| 10 | 169 | L0*L6*L12 |
| 11 | 6 | L0*L6*L23 |
| 12 | 4 | L0*L8*L10 |
| 13 | 5 | L0*L9*L17 |
| 14 | 47 | L0*L10*L31 |
| 15 | 744 | L0*L11*L23 |
| 16 | 453 | L0*L12*L23 |
| 17 | 208 | L0*L14*L18 |
| 18 | 1007 | L0*L17*L18 |
| 19 | 599 | L0*L17*L32 |
| 20 | 39 | L0*L18*L22 |
| 21 | 2189 | L0*L18*L34 |
| 22 | 230 | L0*L18*L35 |
| 23 | 6 | L0*L28*L33 |
| 24 | 343 | L0*L32*L33 |
| 25 | 775 | L1*L12*L17 |
| 26 | 114 | L1*L25*L33 |
| 27 | 235 | L1*L30*L37 |
| 28 | 53 | L2*L2*L25 |
| 29 | 502 | L2*L3*L17 |
| 30 | 991 | L2*L6*L23 |
| 31 | 315 | L2*L8*L12 |
| 32 | 115 | L2*L10*L25 |
| 33 | 58 | L2*L12*L25 |
| 34 | 963 | L2*L17*L18 |
| 35 | 416 | L2*L17*L34 |
| 36 | 170 | L2*L18*L35 |
| 37 | 45 | L3*L15*L17 |
| 38 | 420 | L4*L9*L17 |
| 39 | 1514 | L4*L10*L17 |
| 40 | 172 | L4*L12*L17 |
| 41 | 1117 | L4*L17*L18 |
| 42 | 623 | L4*L17*L31 |
| 43 | 881 | L4*L17*L33 |
| 44 | 215 | L4*L25*L33 |
| 45 | 226 | L5*L5*L8 |
| 46 | 937 | L5*L6*L11 |
| 47 | 578 | L5*L6*L18 |
| 48 | 11 | L5*L8*L38 |
| 49 | 1162 | L5*L14*L23 |
| 50 | 60 | L5*L15*L30 |
| 51 | 40 | L5*L17*L32 |
| 52 | 435 | L5*L26*L33 |
| 53 | 5 | L6*L6*L17 |
| 54 | 7 | L6*L6*L23 |
| 55 | 28 | L6*L6*L38 |
| 56 | 118 | L6*L9*L33 |
| 57 | 550 | L6*L10*L23 |
| 58 | 1056 | L6*L12*L18 |
| 59 | 235 | L6*L12*L21 |
| 60 | 23 | L6*L14*L18 |
| 61 | 10 | L6*L14*L29 |
| 62 | 6 | L6*L14*L33 |
| 63 | 44 | L6*L15*L23 |
| 64 | 84 | L6*L17*L32 |
| 65 | 20 | L6*L22*L35 |
| 66 | 89 | L6*L23*L29 |
| 67 | 304 | L7*L10*L17 |
| 68 | 66 | L7*L12*L17 |
| 69 | 101 | L7*L17*L22 |
| 70 | 234 | L7*L17*L23 |
| 71 | 1469 | L8*L10*L23 |
| 72 | 297 | L8*L12*L18 |
| 73 | 282 | L8*L17*L33 |
| 74 | 105 | L9*L12*L30 |
| 75 | 5 | L9*L17*L36 |
| 76 | 1198 | L9*L25*L33 |
| 77 | 10 | L9*L28*L37 |
| 78 | 392 | L10*L12*L15 |
| 79 | 217 | L10*L17*L18 |
| 80 | 823 | L10*L17*L20 |
| 81 | 766 | L10*L18*L28 |
| 82 | 535 | L10*L23*L37 |
| 83 | 938 | L11*L14*L23 |
| 84 | 220 | L11*L17*L28 |
| 85 | 39 | L11*L20*L23 |
| 86 | 276 | L11*L30*L37 |
| 87 | 424 | L11*L32*L37 |
| 88 | 226 | L11*L33*L35 |
| 89 | 244 | L12*L12*L17 |
| 90 | 624 | L12*L15*L15 |
| 91 | 1460 | L12*L15*L18 |
| 92 | 496 | L12*L15*L25 |
| 93 | 262 | L12*L15*L30 |
| 94 | 280 | L12*L15*L32 |
| 95 | 140 | L12*L17*L23 |
| 96 | 172 | L12*L17*L31 |
| 97 | 244 | L12*L17*L34 |
| 98 | 467 | L12*L25*L30 |
| 99 | 342 | L12*L25*L33 |
| 100 | 66 | L12*L28*L37 |
| 101 | 244 | L12*L32*L37 |
| 102 | 56 | L15*L17*L22 |
| 103 | 841 | L15*L17*L34 |
| 104 | 177 | L15*L21*L32 |
| 105 | 10 | L15*L28*L28 |
| 106 | 6 | L15*L30*L36 |
| 107 | 535 | L15*L32*L33 |
| 108 | 438 | L15*L37*L38 |
| 109 | 5 | L16*L28*L28 |
| 110 | 88 | L17*L18*L21 |
| 111 | 708 | L17*L18*L27 |
| 112 | 747 | L17*L18*L35 |
| 113 | 911 | L17*L18*L36 |
| 114 | 88 | L17*L19*L21 |
| 115 | 19 | L17*L19*L25 |
| 116 | 19 | L17*L20*L23 |
| 117 | 317 | L17*L22*L29 |
| 118 | 409 | L17*L22*L31 |
| 119 | 122 | L17*L23*L27 |
| 120 | 140 | L17*L23*L34 |
| 121 | 27 | L17*L23*L36 |
| 122 | 114 | L17*L25*L31 |
| 123 | 775 | L17*L26*L34 |
| 124 | 83 | L17*L26*L37 |
| 125 | 83 | L17*L27*L37 |
| 126 | 250 | L17*L28*L38 |
| 127 | 84 | L17*L30*L35 |
| 128 | 96 | L17*L33*L33 |
| 129 | 369 | L18*L18*L28 |
| 130 | 170 | L18*L28*L30 |
| 131 | 523 | L18*L28*L37 |
| 132 | 369 | L18*L28*L38 |
| 133 | 1117 | L18*L33*L37 |
| 134 | 79 | L18*L34*L35 |
| 135 | 69 | L20*L23*L26 |
| 136 | 28 | L20*L25*L33 |
| 137 | 80 | L20*L33*L33 |
| 138 | 80 | L21*L30*L30 |
| 139 | 350 | L21*L30*L32 |
| 140 | 72 | L21*L32*L32 |
| 141 | 398 | L25*L30*L33 |
| 142 | 104 | L25*L33*L33 |
| 143 | 187 | L25*L33*L37 |
| 144 | 435 | L26*L33*L33 |
| 145 | 226 | L29*L33*L33 |
| 146 | 354 | L30*L30*L37 |
| 147 | 494 | L32*L36*L37 |
| 148 | 1863 | ABC+*L2 |
| 149 | 273 | ABC+*L6 |
| 150 | 568 | ABC+*L11 |
| 151 | 526 | ABC+*L13 |
| 152 | 1133 | ABC+*L18 |
| 153 | 619 | ABC+*L26 |
| 154 | 745 | ABC+*L34 |
| 155 | 273 | ABC+*L35 |
| 156 | 966 | ABC+*L37 |
| 157 | 22 | ABE+*L17 |
| 158 | 448 | AGH+*L15 |
| 159 | 991 | BCD+*L23 |
| 160 | 643 | CDE+*L11 |
| 161 | 48 | CDE+*L18 |
| 162 | 327 | CDE+*L22 |
| 163 | 6 | CDE+*L27 |
| 164 | 66 | EFG+*L17 |
| 165 | 105 | EFG+*L33 |
| 166 | 671 | FGH+*L0 |
| 167 | 496 | FGH+*L25 |
| 168 | 162 | FGH+*L30 |
| 169 | 166 | FGH+*L32 |
| 170 | 855 | FGH+*L38 |
| 171 | 254 | AOP-*L15 |
| 172 | 189 | AOP-*L17 |
| 173 | 69 | HOP+*L0 |
| 174 | 138 | BCO+*L17 |
| 175 | 636 | AHO-*L2 |
| 176 | 254 | AHO-*L25 |
| 177 | 323 | AHO-*L28 |
| 178 | 448 | AHO-*L33 |
| 179 | 114 | ABP+*L17 |
| 180 | 68 | CDP+*L33 |
| 181 | 1015 | DEP+*L4 |
| 182 | 283 | DEP+*L5 |
| 183 | 231 | DEP+*L6 |
| 184 | 482 | DEP+*L10 |
| 185 | 453 | DEP+*L18 |
| 186 | 142 | DEP+*L35 |
| 187 | 201 | DEP+*L37 |
| 188 | 1695 | EFP+*L4 |
| 189 | 1140 | EFP+*L5 |
| 190 | 825 | EFP+*L9 |
| 191 | 545 | EFP+*L16 |
| 192 | 323 | EFP+*L20 |
| 193 | 503 | EFP+*L27 |
| 194 | 648 | EFP+*L31 |
| 195 | 478 | EFP+*L32 |
| 196 | 855 | EFP+*L34 |
| 197 | 6 | EFP+*L35 |
| 198 | 825 | EFP+*L36 |
| 199 | 66 | FHP+*L17 |
| 200 | 57 | GHO+*L5 |
| 201 | 204 | GHO+*L15 |
| 202 | 156 | GHO+*L30 |
| 203 | 66 | GHO+*L35 |
| 204 | 170 | FGP+*L0 |
| 205 | 460 | FGP+*L10 |
| 206 | 170 | FGP+*L21 |
| 207 | 409 | FGP+*L30 |
| 208 | 996 | AFO+*L4 |
| 209 | 152 | AFO+*L6 |
| 210 | 2642 | AFO+*L12 |
| 211 | 993 | AFO+*L16 |
| 212 | 39 | AFO+*L23 |
| 213 | 1095 | AFO+*L24 |
| 214 | 1587 | AFO+*L25 |
| 215 | 323 | AFO+*L27 |
| 216 | 866 | AFO+*L31 |
| 217 | 778 | AFO+*L33 |
| 218 | 146 | AFO+*L35 |
| 219 | 323 | AFO+*L36 |
| 220 | 200 | BHO-*L6 |
| 221 | 188 | BHO-*L11 |
| 222 | 161 | BHO-*L15 |
| 223 | 200 | BHO-*L26 |
| 224 | 200 | BHO-*L28 |
| 225 | 784 | BHO-*L33 |
| 226 | 262 | DHO+*L1 |
| 227 | 28 | DHO+*L6 |
| 228 | 410 | DHO+*L10 |
| 229 | 84 | DHO+*L23 |
| 230 | 700 | DHO+*L33 |
| 231 | 1135 | DHO+*L34 |
| 232 | 261 | DHO+*L37 |
| 233 | 323 | EHP-*L1 |
| 234 | 1780 | EHP-*L5 |
| 235 | 6 | EHP-*L7 |
| 236 | 559 | EHP-*L13 |
| 237 | 84 | EHP-*L19 |
| 238 | 323 | EHP-*L20 |
| 239 | 1302 | EHP-*L33 |
| 240 | 438 | EHP-*L37 |
| 241 | 3836 | AGO-*L4 |
| 242 | 169 | AGO-*L7 |
| 243 | 170 | AGO-*L25 |
| 244 | 2244 | AGO-*L31 |
| 245 | 2642 | AGO-*L32 |
| 246 | 555 | BGO+*L3 |
| 247 | 1692 | BGO+*L4 |
| 248 | 453 | BGO+*L12 |
| 249 | 453 | BGO+*L34 |
| 250 | 784 | CFP-*L4 |
| 251 | 1198 | CFP-*L7 |
| 252 | 400 | CFP-*L12 |
| 253 | 28 | CFP-*L20 |
| 254 | 114 | CFP-*L26 |
| 255 | 1198 | CFP-*L29 |
| 256 | 301 | CFP-*L37 |
| 257 | 138 | CEO+*L17 |
| 258 | 2 | ER*L9 |
| 259 | 427 | ER*L10 |
| 260 | 163 | ER*L30 |
| 261 | 110 | ER*L32 |
| 262 | 170 | ER*L38 |
| 263 | 2 | P_BCDEF*L26 |
| 264 | 294 | P_HABCD*L5 |
| 265 | 84 | P_HABCD*L17 |
| 266 | 235 | P_ABCDE*L5 |
| 267 | 2 | P_ABCDE*L9 |
| 268 | 237 | P_ABCDE*L15 |
| 269 | 200 | P_ABCDE*L21 |
| 270 | 220 | P_ABCDE*L32 |
| 271 | 420 | P_ABCDE*L34 |
| 272 | 619 | CABG_1*L0 |
| 273 | 321 | CABG_1*L5 |
| 274 | 471 | CAFG_1*L0 |
| 275 | 987 | CBGH_1*L1 |
| 276 | 300 | CBGH_1*L3 |
| 277 | 66 | CBGH_1*L9 |
| 278 | 39 | CBGH_1*L15 |
| 279 | 963 | CBGH_1*L18 |
| 280 | 138 | CBGH_1*L21 |
| 281 | 132 | CBGH_1*L36 |
| 282 | 118 | CCEF_1*L6 |
| 283 | 551 | CCEF_1*L18 |
| 284 | 899 | CEFH_1*L18 |
| 285 | 6 | RAEFH_AF*L6 |
| 286 | 783 | RAEFH_AF*L11 |
| 287 | 453 | RAEFH_AF*L12 |
| 288 | 297 | RAEFH_EH*L12 |
| 289 | 684 | RAEFH_EH*L33 |
| 290 | 358 | RBEFH_BF*L10 |
| 291 | 53 | RBEFH_BF*L30 |
| 292 | 345 | RBEFH_BF*L33 |
| 293 | 66 | UEFGH*L17 |
| 294 | 451 | UBEF*L17 |

### Row R10

The exact bound is `-163654019354565796047407538808826031866717/2643770151850427214895795400305250000000`.

| Index | Weight | Product |
|---:|---:|---|
| 1 | 696 | L0*L33 |
| 2 | 110 | L0*L0*L13 |
| 3 | 122 | L0*L0*L18 |
| 4 | 75 | L0*L1*L2 |
| 5 | 1208 | L0*L2*L2 |
| 6 | 1012 | L0*L2*L11 |
| 7 | 111 | L0*L5*L9 |
| 8 | 256 | L0*L5*L11 |
| 9 | 1063 | L0*L5*L29 |
| 10 | 96 | L0*L6*L12 |
| 11 | 208 | L0*L6*L19 |
| 12 | 111 | L0*L7*L33 |
| 13 | 375 | L0*L11*L11 |
| 14 | 492 | L0*L11*L14 |
| 15 | 421 | L0*L11*L25 |
| 16 | 33 | L0*L12*L15 |
| 17 | 127 | L0*L13*L18 |
| 18 | 194 | L0*L13*L33 |
| 19 | 383 | L0*L17*L18 |
| 20 | 3 | L0*L18*L27 |
| 21 | 86 | L0*L18*L31 |
| 22 | 181 | L0*L22*L33 |
| 23 | 380 | L0*L25*L33 |
| 24 | 647 | L0*L31*L38 |
| 25 | 146 | L0*L37*L38 |
| 26 | 51 | L1*L15*L32 |
| 27 | 301 | L2*L4*L17 |
| 28 | 431 | L2*L5*L6 |
| 29 | 289 | L2*L9*L17 |
| 30 | 209 | L2*L14*L33 |
| 31 | 46 | L2*L17*L18 |
| 32 | 908 | L2*L17*L26 |
| 33 | 368 | L2*L17*L38 |
| 34 | 810 | L2*L18*L28 |
| 35 | 220 | L3*L5*L25 |
| 36 | 107 | L3*L10*L17 |
| 37 | 330 | L3*L17*L24 |
| 38 | 74 | L3*L20*L33 |
| 39 | 147 | L4*L17*L18 |
| 40 | 35 | L4*L17*L25 |
| 41 | 16 | L4*L17*L30 |
| 42 | 406 | L5*L5*L8 |
| 43 | 26 | L5*L5*L25 |
| 44 | 115 | L5*L6*L20 |
| 45 | 97 | L5*L6*L29 |
| 46 | 244 | L5*L6*L33 |
| 47 | 4 | L5*L6*L35 |
| 48 | 71 | L5*L8*L17 |
| 49 | 391 | L5*L11*L20 |
| 50 | 107 | L5*L12*L20 |
| 51 | 40 | L5*L12*L24 |
| 52 | 97 | L5*L17*L19 |
| 53 | 39 | L5*L17*L26 |
| 54 | 102 | L5*L25*L29 |
| 55 | 3 | L6*L6*L6 |
| 56 | 8 | L6*L9*L29 |
| 57 | 453 | L6*L11*L23 |
| 58 | 440 | L6*L12*L18 |
| 59 | 96 | L6*L12*L21 |
| 60 | 59 | L6*L18*L35 |
| 61 | 60 | L6*L20*L33 |
| 62 | 4 | L6*L23*L35 |
| 63 | 4 | L6*L33*L35 |
| 64 | 146 | L7*L33*L33 |
| 65 | 3 | L8*L8*L9 |
| 66 | 165 | L8*L8*L18 |
| 67 | 221 | L8*L8*L38 |
| 68 | 246 | L8*L10*L38 |
| 69 | 153 | L8*L15*L18 |
| 70 | 56 | L8*L20*L33 |
| 71 | 217 | L8*L37*L38 |
| 72 | 421 | L9*L11*L25 |
| 73 | 217 | L9*L17*L18 |
| 74 | 380 | L9*L25*L33 |
| 75 | 321 | L10*L12*L37 |
| 76 | 4 | L10*L15*L28 |
| 77 | 63 | L10*L17*L20 |
| 78 | 176 | L10*L17*L24 |
| 79 | 578 | L10*L17*L38 |
| 80 | 248 | L10*L18*L28 |
| 81 | 298 | L10*L33*L35 |
| 82 | 457 | L11*L11*L14 |
| 83 | 375 | L11*L11*L26 |
| 84 | 69 | L11*L12*L25 |
| 85 | 72 | L11*L14*L14 |
| 86 | 153 | L11*L14*L33 |
| 87 | 52 | L11*L17*L18 |
| 88 | 527 | L12*L12*L17 |
| 89 | 93 | L12*L15*L15 |
| 90 | 29 | L12*L15*L25 |
| 91 | 916 | L12*L15*L38 |
| 92 | 629 | L12*L17*L18 |
| 93 | 144 | L12*L17*L24 |
| 94 | 144 | L12*L17*L25 |
| 95 | 56 | L12*L17*L28 |
| 96 | 733 | L12*L17*L34 |
| 97 | 205 | L12*L18*L36 |
| 98 | 629 | L12*L18*L37 |
| 99 | 109 | L12*L21*L37 |
| 100 | 178 | L13*L17*L31 |
| 101 | 414 | L14*L28*L33 |
| 102 | 568 | L15*L15*L32 |
| 103 | 217 | L15*L17*L22 |
| 104 | 76 | L15*L17*L23 |
| 105 | 230 | L15*L17*L32 |
| 106 | 9 | L15*L18*L28 |
| 107 | 414 | L15*L28*L30 |
| 108 | 188 | L15*L32*L36 |
| 109 | 172 | L16*L17*L38 |
| 110 | 209 | L16*L23*L33 |
| 111 | 396 | L17*L18*L26 |
| 112 | 57 | L17*L18*L35 |
| 113 | 109 | L17*L20*L34 |
| 114 | 139 | L17*L22*L36 |
| 115 | 32 | L17*L23*L28 |
| 116 | 403 | L17*L23*L30 |
| 117 | 139 | L17*L23*L36 |
| 118 | 67 | L17*L24*L30 |
| 119 | 105 | L17*L26*L32 |
| 120 | 79 | L17*L27*L32 |
| 121 | 178 | L17*L30*L34 |
| 122 | 206 | L17*L34*L34 |
| 123 | 205 | L18*L28*L34 |
| 124 | 56 | L18*L28*L36 |
| 125 | 351 | L18*L33*L37 |
| 126 | 364 | L20*L31*L33 |
| 127 | 181 | L20*L33*L33 |
| 128 | 532 | L23*L32*L37 |
| 129 | 125 | L24*L28*L33 |
| 130 | 125 | L25*L28*L30 |
| 131 | 88 | L25*L30*L32 |
| 132 | 380 | L25*L30*L36 |
| 133 | 26 | L25*L31*L33 |
| 134 | 31 | L25*L32*L32 |
| 135 | 345 | L25*L32*L36 |
| 136 | 3 | L28*L28*L28 |
| 137 | 4 | L28*L28*L33 |
| 138 | 131 | L28*L33*L33 |
| 139 | 56 | L28*L33*L36 |
| 140 | 403 | L29*L33*L38 |
| 141 | 16 | L30*L33*L37 |
| 142 | 225 | L32*L33*L35 |
| 143 | 172 | L37*L37*L38 |
| 144 | 16 | AGH+*L0 |
| 145 | 34 | AGH+*L15 |
| 146 | 67 | AGH+*L18 |
| 147 | 39 | BCH+*L17 |
| 148 | 1272 | CDE+*L0 |
| 149 | 153 | CDE+*L2 |
| 150 | 590 | CDE+*L4 |
| 151 | 71 | CDE+*L16 |
| 152 | 839 | CDE+*L18 |
| 153 | 56 | CDE+*L20 |
| 154 | 453 | CDE+*L23 |
| 155 | 102 | CDE+*L25 |
| 156 | 93 | CDE+*L29 |
| 157 | 52 | CDE+*L31 |
| 158 | 153 | CDE+*L36 |
| 159 | 60 | DEF+*L9 |
| 160 | 297 | DEF+*L11 |
| 161 | 225 | DEF+*L31 |
| 162 | 56 | DEG+*L17 |
| 163 | 145 | EFH+*L17 |
| 164 | 1106 | FGH+*L38 |
| 165 | 56 | AOP-*L0 |
| 166 | 620 | AOP-*L5 |
| 167 | 429 | AOP-*L12 |
| 168 | 181 | AOP-*L33 |
| 169 | 146 | AOP-*L37 |
| 170 | 4 | DOP-*L6 |
| 171 | 790 | FOP+*L5 |
| 172 | 4 | FOP+*L8 |
| 173 | 429 | FOP+*L12 |
| 174 | 702 | FOP+*L15 |
| 175 | 114 | FOP+*L16 |
| 176 | 760 | FOP+*L26 |
| 177 | 4 | FOP+*L29 |
| 178 | 170 | FOP+*L30 |
| 179 | 181 | FOP+*L33 |
| 180 | 32 | FOP+*L37 |
| 181 | 172 | HOP+*L15 |
| 182 | 183 | BCO+*L33 |
| 183 | 39 | CDO+*L17 |
| 184 | 165 | AHO-*L3 |
| 185 | 429 | AHO-*L18 |
| 186 | 259 | AHO-*L23 |
| 187 | 351 | AHO-*L33 |
| 188 | 32 | CDP+*L17 |
| 189 | 1468 | DEP+*L18 |
| 190 | 4 | EFP+*L6 |
| 191 | 150 | EFP+*L11 |
| 192 | 368 | EFP+*L26 |
| 193 | 371 | EFP+*L37 |
| 194 | 478 | FHP+*L17 |
| 195 | 1008 | GHO+*L1 |
| 196 | 429 | GHO+*L18 |
| 197 | 190 | GHO+*L23 |
| 198 | 321 | GHO+*L32 |
| 199 | 56 | AFO+*L6 |
| 200 | 399 | AFO+*L12 |
| 201 | 815 | AFO+*L24 |
| 202 | 229 | AFO+*L30 |
| 203 | 56 | AFO+*L36 |
| 204 | 26 | AFO+*L37 |
| 205 | 56 | AFP-*L1 |
| 206 | 1242 | AFP-*L3 |
| 207 | 1237 | AFP-*L4 |
| 208 | 368 | AFP-*L9 |
| 209 | 170 | AFP-*L19 |
| 210 | 815 | AFP-*L20 |
| 211 | 1263 | AFP-*L31 |
| 212 | 882 | BHO-*L1 |
| 213 | 321 | BHO-*L13 |
| 214 | 13 | BHO-*L15 |
| 215 | 69 | BHO-*L22 |
| 216 | 13 | DHO+*L1 |
| 217 | 141 | DHO+*L2 |
| 218 | 284 | DHO+*L4 |
| 219 | 111 | DHO+*L8 |
| 220 | 645 | DHO+*L13 |
| 221 | 1468 | DHO+*L23 |
| 222 | 13 | DHO+*L27 |
| 223 | 55 | DHO+*L29 |
| 224 | 670 | DHO+*L31 |
| 225 | 1617 | EHP-*L4 |
| 226 | 225 | EHP-*L6 |
| 227 | 177 | EHP-*L10 |
| 228 | 620 | EHP-*L16 |
| 229 | 1468 | EHP-*L23 |
| 230 | 221 | EHP-*L28 |
| 231 | 2002 | EHP-*L31 |
| 232 | 125 | AGO-*L0 |
| 233 | 96 | AGO-*L35 |
| 234 | 429 | AGO-*L38 |
| 235 | 189 | BGO+*L2 |
| 236 | 189 | BGO+*L3 |
| 237 | 239 | BGO+*L22 |
| 238 | 882 | BGO+*L26 |
| 239 | 301 | BGO+*L33 |
| 240 | 153 | CFP+*L12 |
| 241 | 477 | BFP+*L1 |
| 242 | 470 | BFP+*L3 |
| 243 | 125 | BFP+*L7 |
| 244 | 527 | BFP+*L17 |
| 245 | 170 | BFP+*L19 |
| 246 | 682 | BFP+*L26 |
| 247 | 653 | BFP+*L27 |
| 248 | 352 | BFP+*L31 |
| 249 | 272 | BFP+*L36 |
| 250 | 39 | ACO+*L17 |
| 251 | 75 | ER*L1 |
| 252 | 1006 | ER*L10 |
| 253 | 190 | ER*L15 |
| 254 | 69 | ER*L18 |
| 255 | 181 | ER*L32 |
| 256 | 75 | ER*L36 |
| 257 | 289 | ER*L37 |
| 258 | 512 | P_BCDEF*L14 |
| 259 | 1261 | P_BCDEF*L22 |
| 260 | 632 | P_BCDEF*L25 |
| 261 | 399 | P_BCDEF*L30 |
| 262 | 990 | P_BCDEF*L32 |
| 263 | 116 | P_BCDEF*L38 |
| 264 | 16 | P_HABCD*L5 |
| 265 | 512 | P_ABCDE*L2 |
| 266 | 465 | P_ABCDE*L11 |
| 267 | 479 | P_ABCDE*L15 |
| 268 | 54 | P_ABCDE*L24 |
| 269 | 696 | P_ABCDE*L31 |
| 270 | 502 | P_ABCDE*L33 |
| 271 | 75 | P_ABCDE*L36 |
| 272 | 625 | P_ABCDE*L38 |
| 273 | 226 | CBFH_2*L0 |
| 274 | 701 | CBFH_2*L8 |
| 275 | 496 | CBFH_2*L15 |
| 276 | 250 | CBFH_2*L17 |
| 277 | 748 | CBFH_2*L22 |
| 278 | 414 | CBFH_2*L28 |
| 279 | 654 | CBFH_2*L38 |
| 280 | 59 | CBGH_1*L15 |
| 281 | 925 | CBGH_1*L25 |
| 282 | 226 | CEFH_1*L17 |
| 283 | 332 | CEFH_1*L18 |
| 284 | 785 | RABFG_BG*L4 |
| 285 | 386 | RABFG_BG*L5 |
| 286 | 895 | RABFG_BG*L14 |
| 287 | 206 | RABFG_BG*L31 |
| 288 | 206 | RABFG_BG*L32 |
| 289 | 51 | RADFH_DH*L33 |
| 290 | 436 | RAEFH_EH*L5 |
| 291 | 412 | RAEFH_EH*L11 |
| 292 | 1468 | RAEFH_EH*L23 |

### Row R11

The exact bound is `-61257944582527286044263983922885263583496283/24379308929896473704226174465305977000000000`.

| Index | Weight | Product |
|---:|---:|---|
| 1 | 116 | L0*L0*L13 |
| 2 | 40 | L0*L0*L18 |
| 3 | 682 | L0*L0*L34 |
| 4 | 1954 | L0*L2*L2 |
| 5 | 266 | L0*L2*L6 |
| 6 | 1438 | L0*L2*L13 |
| 7 | 568 | L0*L2*L37 |
| 8 | 483 | L0*L5*L5 |
| 9 | 238 | L0*L5*L6 |
| 10 | 1664 | L0*L5*L29 |
| 11 | 104 | L0*L5*L37 |
| 12 | 32 | L0*L6*L34 |
| 13 | 201 | L0*L9*L11 |
| 14 | 1937 | L0*L10*L18 |
| 15 | 104 | L0*L11*L14 |
| 16 | 638 | L0*L12*L17 |
| 17 | 785 | L0*L12*L33 |
| 18 | 80 | L0*L13*L13 |
| 19 | 106 | L0*L14*L23 |
| 20 | 156 | L0*L17*L25 |
| 21 | 782 | L0*L17*L34 |
| 22 | 36 | L0*L18*L29 |
| 23 | 796 | L0*L18*L31 |
| 24 | 107 | L0*L18*L34 |
| 25 | 84 | L0*L21*L31 |
| 26 | 84 | L0*L21*L33 |
| 27 | 604 | L0*L25*L33 |
| 28 | 174 | L0*L33*L38 |
| 29 | 115 | L0*L34*L34 |
| 30 | 86 | L1*L12*L15 |
| 31 | 327 | L2*L2*L14 |
| 32 | 327 | L2*L2*L17 |
| 33 | 802 | L2*L2*L25 |
| 34 | 152 | L2*L4*L17 |
| 35 | 1136 | L2*L5*L6 |
| 36 | 4 | L2*L6*L24 |
| 37 | 524 | L2*L9*L18 |
| 38 | 748 | L2*L12*L17 |
| 39 | 672 | L2*L14*L17 |
| 40 | 157 | L2*L15*L23 |
| 41 | 628 | L2*L17*L18 |
| 42 | 516 | L2*L17*L21 |
| 43 | 597 | L2*L17*L23 |
| 44 | 210 | L2*L17*L25 |
| 45 | 672 | L2*L17*L27 |
| 46 | 918 | L2*L17*L34 |
| 47 | 213 | L2*L17*L36 |
| 48 | 285 | L4*L17*L17 |
| 49 | 2864 | L4*L17*L18 |
| 50 | 148 | L4*L17*L20 |
| 51 | 290 | L4*L17*L38 |
| 52 | 644 | L5*L5*L9 |
| 53 | 153 | L5*L5*L14 |
| 54 | 98 | L5*L5*L21 |
| 55 | 9 | L5*L5*L25 |
| 56 | 6 | L5*L6*L9 |
| 57 | 102 | L5*L6*L13 |
| 58 | 104 | L5*L6*L14 |
| 59 | 1696 | L5*L6*L18 |
| 60 | 32 | L5*L6*L20 |
| 61 | 828 | L5*L6*L23 |
| 62 | 683 | L5*L6*L29 |
| 63 | 15 | L5*L6*L37 |
| 64 | 200 | L5*L8*L17 |
| 65 | 458 | L5*L9*L33 |
| 66 | 691 | L5*L11*L14 |
| 67 | 396 | L5*L14*L31 |
| 68 | 1622 | L5*L15*L18 |
| 69 | 110 | L5*L24*L33 |
| 70 | 1815 | L5*L25*L31 |
| 71 | 208 | L5*L29*L29 |
| 72 | 550 | L5*L33*L35 |
| 73 | 30 | L6*L6*L19 |
| 74 | 96 | L6*L6*L30 |
| 75 | 2 | L6*L10*L23 |
| 76 | 10 | L6*L10*L25 |
| 77 | 834 | L6*L11*L18 |
| 78 | 2 | L6*L11*L26 |
| 79 | 192 | L6*L12*L18 |
| 80 | 12 | L6*L12*L21 |
| 81 | 52 | L6*L14*L18 |
| 82 | 32 | L6*L20*L33 |
| 83 | 26 | L6*L24*L33 |
| 84 | 96 | L6*L29*L31 |
| 85 | 200 | L6*L31*L31 |
| 86 | 2 | L7*L17*L23 |
| 87 | 46 | L8*L12*L18 |
| 88 | 46 | L8*L12*L38 |
| 89 | 6 | L8*L14*L23 |
| 90 | 96 | L8*L17*L33 |
| 91 | 241 | L8*L17*L38 |
| 92 | 1316 | L8*L18*L30 |
| 93 | 102 | L9*L12*L33 |
| 94 | 317 | L9*L33*L33 |
| 95 | 97 | L10*L17*L31 |
| 96 | 260 | L10*L17*L38 |
| 97 | 642 | L11*L11*L14 |
| 98 | 310 | L11*L17*L25 |
| 99 | 375 | L11*L20*L33 |
| 100 | 26 | L12*L12*L15 |
| 101 | 2246 | L12*L15*L18 |
| 102 | 381 | L12*L15*L37 |
| 103 | 522 | L12*L17*L21 |
| 104 | 312 | L12*L17*L27 |
| 105 | 391 | L12*L18*L37 |
| 106 | 20 | L12*L25*L33 |
| 107 | 136 | L12*L36*L37 |
| 108 | 143 | L14*L17*L23 |
| 109 | 624 | L14*L24*L33 |
| 110 | 104 | L14*L33*L36 |
| 111 | 106 | L15*L15*L38 |
| 112 | 156 | L15*L17*L25 |
| 113 | 77 | L15*L17*L29 |
| 114 | 138 | L16*L17*L19 |
| 115 | 77 | L16*L17*L29 |
| 116 | 136 | L16*L17*L33 |
| 117 | 416 | L17*L18*L20 |
| 118 | 416 | L17*L18*L21 |
| 119 | 98 | L17*L18*L36 |
| 120 | 660 | L17*L18*L37 |
| 121 | 391 | L17*L19*L34 |
| 122 | 24 | L17*L19*L35 |
| 123 | 260 | L17*L22*L33 |
| 124 | 64 | L17*L23*L36 |
| 125 | 156 | L17*L24*L27 |
| 126 | 368 | L17*L24*L31 |
| 127 | 294 | L17*L25*L31 |
| 128 | 77 | L17*L28*L37 |
| 129 | 4 | L18*L28*L28 |
| 130 | 642 | L18*L28*L33 |
| 131 | 3032 | L18*L33*L37 |
| 132 | 98 | L20*L33*L33 |
| 133 | 21 | L25*L33*L33 |
| 134 | 204 | L25*L33*L37 |
| 135 | 4 | L28*L28*L38 |
| 136 | 458 | L30*L37*L38 |
| 137 | 587 | L33*L33*L36 |
| 138 | 1072 | ABC+*L2 |
| 139 | 500 | ABC+*L5 |
| 140 | 932 | ABC+*L13 |
| 141 | 1862 | ABC+*L18 |
| 142 | 604 | ABC+*L33 |
| 143 | 27 | ABD+*L17 |
| 144 | 104 | ACE+*L17 |
| 145 | 312 | AGH+*L15 |
| 146 | 238 | BCD+*L0 |
| 147 | 50 | BCD+*L3 |
| 148 | 587 | BCD+*L5 |
| 149 | 106 | BCD+*L9 |
| 150 | 131 | BCD+*L19 |
| 151 | 249 | BCD+*L31 |
| 152 | 14 | BCD+*L37 |
| 153 | 1664 | CDE+*L0 |
| 154 | 1136 | CDE+*L4 |
| 155 | 783 | CDE+*L6 |
| 156 | 102 | CDE+*L13 |
| 157 | 3198 | CDE+*L18 |
| 158 | 826 | CDE+*L23 |
| 159 | 208 | CDE+*L29 |
| 160 | 1050 | CDE+*L31 |
| 161 | 552 | CDE+*L32 |
| 162 | 104 | CDE+*L35 |
| 163 | 23 | DEF+*L9 |
| 164 | 136 | EFG+*L17 |
| 165 | 36 | AOP-*L15 |
| 166 | 174 | AOP-*L33 |
| 167 | 143 | EOP-*L17 |
| 168 | 143 | HOP+*L17 |
| 169 | 174 | HOP+*L33 |
| 170 | 752 | ABO+*L20 |
| 171 | 546 | ABO+*L25 |
| 172 | 548 | ABO+*L33 |
| 173 | 5 | AHO-*L0 |
| 174 | 340 | AHO-*L5 |
| 175 | 14 | AHO-*L8 |
| 176 | 2469 | AHO-*L12 |
| 177 | 722 | AHO-*L17 |
| 178 | 70 | AHO-*L24 |
| 179 | 2372 | AHO-*L33 |
| 180 | 4 | CDP+*L6 |
| 181 | 2 | CDP+*L33 |
| 182 | 450 | DEP+*L18 |
| 183 | 609 | EFP+*L2 |
| 184 | 10 | EFP+*L6 |
| 185 | 202 | EFP+*L12 |
| 186 | 36 | EFP+*L20 |
| 187 | 70 | EFP+*L27 |
| 188 | 542 | EFP+*L31 |
| 189 | 110 | EFP+*L34 |
| 190 | 34 | EFP+*L37 |
| 191 | 14 | FGO+*L8 |
| 192 | 468 | GHO+*L1 |
| 193 | 26 | GHO+*L12 |
| 194 | 70 | GHO+*L37 |
| 195 | 1098 | FGP+*L0 |
| 196 | 92 | FGP+*L5 |
| 197 | 1563 | AFO+*L2 |
| 198 | 98 | AFO+*L4 |
| 199 | 2381 | AFO+*L12 |
| 200 | 483 | AFO+*L25 |
| 201 | 1492 | AFO+*L28 |
| 202 | 1525 | AFO+*L29 |
| 203 | 472 | AFO+*L33 |
| 204 | 84 | AFO+*L36 |
| 205 | 1162 | AFP-*L17 |
| 206 | 432 | BHO-*L1 |
| 207 | 70 | BHO-*L5 |
| 208 | 106 | BHO-*L25 |
| 209 | 14 | BHO-*L29 |
| 210 | 327 | BHO-*L31 |
| 211 | 247 | DHO+*L0 |
| 212 | 862 | DHO+*L5 |
| 213 | 30 | DHO+*L6 |
| 214 | 313 | DHO+*L9 |
| 215 | 450 | DHO+*L23 |
| 216 | 131 | DHO+*L30 |
| 217 | 192 | DHO+*L34 |
| 218 | 313 | DHO+*L36 |
| 219 | 36 | DHO+*L37 |
| 220 | 834 | EHP-*L0 |
| 221 | 1711 | EHP-*L5 |
| 222 | 864 | EHP-*L9 |
| 223 | 468 | EHP-*L11 |
| 224 | 139 | EHP-*L12 |
| 225 | 450 | EHP-*L19 |
| 226 | 36 | EHP-*L20 |
| 227 | 106 | EHP-*L27 |
| 228 | 2 | EHP-*L29 |
| 229 | 754 | EHP-*L30 |
| 230 | 871 | EHP-*L36 |
| 231 | 1594 | AGO-*L0 |
| 232 | 496 | AGO-*L2 |
| 233 | 2156 | AGO-*L6 |
| 234 | 2152 | AGO-*L9 |
| 235 | 3547 | AGO-*L10 |
| 236 | 195 | AGO-*L13 |
| 237 | 752 | AGO-*L20 |
| 238 | 1098 | AGO-*L25 |
| 239 | 1642 | AGO-*L26 |
| 240 | 2152 | AGO-*L28 |
| 241 | 152 | AGO-*L33 |
| 242 | 1572 | AGO-*L37 |
| 243 | 1060 | BGO+*L4 |
| 244 | 264 | BGO+*L10 |
| 245 | 752 | BGO+*L20 |
| 246 | 1098 | BGO+*L25 |
| 247 | 1268 | BGO+*L26 |
| 248 | 14 | BGO+*L29 |
| 249 | 908 | BGO+*L31 |
| 250 | 581 | BGO+*L32 |
| 251 | 170 | BGO+*L34 |
| 252 | 1268 | BGO+*L37 |
| 253 | 247 | CFP+*L0 |
| 254 | 2410 | CFP+*L3 |
| 255 | 96 | CFP+*L5 |
| 256 | 130 | CFP+*L17 |
| 257 | 828 | CFP+*L26 |
| 258 | 22 | CFP+*L29 |
| 259 | 1860 | CFP+*L31 |
| 260 | 432 | CFP+*L32 |
| 261 | 112 | CFP+*L34 |
| 262 | 22 | CFP+*L36 |
| 263 | 546 | BFP-*L1 |
| 264 | 1224 | BFP-*L3 |
| 265 | 770 | BFP-*L5 |
| 266 | 632 | BFP-*L10 |
| 267 | 106 | BFP-*L15 |
| 268 | 963 | BFP-*L16 |
| 269 | 446 | BFP-*L21 |
| 270 | 4 | BFP-*L28 |
| 271 | 2026 | BFP-*L31 |
| 272 | 148 | CGO+*L17 |
| 273 | 2 | DFP+*L37 |
| 274 | 280 | ER*L10 |
| 275 | 23 | ER*L28 |
| 276 | 157 | ER*L30 |
| 277 | 122 | ER*L37 |
| 278 | 1840 | ER*L38 |
| 279 | 10 | P_BCDEF*L7 |
| 280 | 10 | P_BCDEF*L12 |
| 281 | 65 | P_BCDEF*L23 |
| 282 | 4 | P_BCDEF*L25 |
| 283 | 23 | P_BCDEF*L28 |
| 284 | 236 | P_BCDEF*L30 |
| 285 | 802 | P_BCDEF*L32 |
| 286 | 882 | P_ABCDE*L2 |
| 287 | 420 | P_ABCDE*L33 |
| 288 | 10 | P_ABCDE*L34 |
| 289 | 27 | CABG_1*L6 |
| 290 | 1268 | CABG_1*L17 |
| 291 | 766 | CAFG_1*L0 |
| 292 | 2 | CAFG_1*L6 |
| 293 | 139 | CBGH_1*L23 |
| 294 | 136 | CBGH_1*L36 |
| 295 | 80 | QAEFG*L0 |
| 296 | 4 | QAEFG*L5 |
| 297 | 1240 | RAEFH_EH*L5 |
| 298 | 642 | RAEFH_EH*L11 |
| 299 | 213 | UBEF*L17 |
