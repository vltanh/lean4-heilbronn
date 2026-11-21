# The entire triangular-right child of Type-II (1,3,3)

The Type-II count (1,3,3) is impossible when the five actual points on
its right side have triangular convex hull. This note closes that whole
hull alternative, with no extra line or coordinate assumptions. The
nontriangular right hull is a separate child and is not excluded here.

All areas below are doubled. Put

    s=93/1000, K=933/125<4+2sqrt(3),
    J=4427/500<(11+3sqrt(5))/2.

Assume every actual unsigned triangle area is at least s, and write
`[UVW]=det(V-U,W-U)`. Finite decimals in this note are exact rationals.
The comparisons for K and J use sqrt(3)>433/250 and sqrt(5)>559/250.

The proof has 24 initial ray cases, 28 binary refinements and 52 terminal
leaves. Eight leaves are geometric contradictions; the other 44 have
fixed cubic contradictions totaling 2,194 positive-integer terms. The
complete signs, inference traces, products and exact negative bounds
are printed in [TYPE_II_133_TRIANGULAR_RIGHT_TABLES.md](TYPE_II_133_TRIANGULAR_RIGHT_TABLES.md).
The adjacent [check_type_ii_133_triangular_right.py](check_type_ii_133_triangular_right.py)
reconstructs every factor and checks the printed statements with rational
arithmetic. Neither a numerical optimum nor discovery data is a premise.

## 1. Actual points and the selected right point

Use the normalization of TYPE_II.md:

    D=(0,1), E=(0,lambda), B=(b,0), C=(1,1),
    0<b<=1/2, 0<lambda<1.

There is one point E on the left of DB, three points in DBC, and three
on the right of BC. If the five-point right hull is triangular, its
third vertex H=(h,k) is actual, and its two other points are strictly
inside BHC. Denote these interior points temporarily by R,S. The
actual anchors D,E,B,H,C are a strictly convex pentagon in that order.
The doubled right-hull area is

    Omega=[BHC]=h-b-(1-b)k >= Gamma2*s > K*s,
    Gamma2=4+2sqrt(3).                                  (1)

The two-interior-point theorem is TRIANGLE_OCCUPANCY.md Section 1.
Here H,R,S are actual; no auxiliary support vertex is being used.

Choose R to have the smaller barycentric coordinate m at C among R,S.
Both points lie in the homothetic subtriangle based at C with doubled
area Omega(1-m)^2. Their actual triangle CRS therefore gives

    s <= |[CRS]| <= Omega(1-m)^2,
    m <= 1-sqrt(s/Omega).

Writing R=(r,j), its ordinate is at most k+(1-k)m. Since
Omega<=(1-b)(1-k), it follows that

    j <= 1-(1-k)sqrt(s/Omega)
      <= 1-sqrt(s(1-k)/(1-b))
      <= 1-s*sqrt(K)/(1-b).                             (2)

The last inequality uses (1). This choice of R is the only use of S
beyond (1). All nine points D,E,B,H,C,X,Y,Z,R modeled below are actual.

Three further elementary bounds will be useful. The actual BHR
clearance gives j>=s/(h-b)>=s/(1-b). The actual CBR clearance gives
r>=b+(1-b)j+s>=b+2s. Finally,

    [HCR]=(1-k)(1-r)-(1-h)(1-j)>=s

implies r<=1-s/(1-k)<=1-s.

## 2. The distributed central mesh and its quantitative bounds

Every actual triangle in the unit square has doubled area at most one.
The four-interior-point theorem in TRIANGLE_OCCUPANCY.md excludes four
interior points, since `(J+2)s>1`. CLUSTERED_TRIANGLE.md excludes a
clustered triple at this same threshold. Thus every triple inside an
actual triangle is distributed: at each of its points the other two
lie in different fan triangles.

Choose the central point Y=(u,t) of greatest ordinate. Its fan CDY is
empty. Label the other two X=(x,v), Z=(z,w), with X inside BCY and Z
inside DBY. The distributed-mesh argument in TRIANGLE_OCCUPANCY.md
Section 2 gives the following thirteen positive actual areas:

    DBZ, BCX, CDY, DZY, BXZ, CYX, ZXY,
    DZX, BXY, CYZ, DXY, BYZ, CZX.                       (3)

In particular the seven faces in the first line sum to [DBC]=1.
The same labeling rule, with the corresponding substitution of outer
and interior labels, applies to every distributed triple used later.

We record three uniform quantitative mesh bounds. Let W<=1 be the
outer doubled area, let a,b0,c be its three connector areas, and let
q0 be its central face. Set T=(a+b0+c)/s-3 and Q=q0/s-1. The exact
calculation in TRIANGLE_OCCUPANCY.md, before discarding Q, gives

    T^2/3+T >= 3+6Q,       T,Q>=0.                      (4)

Consequently the connector sum is at least
`3(1+sqrt(5))s/2>(2427/500)s`. The seven-face sum then bounds each
individual ear by W-(3927/500)s: retain the other two ears and the
central face, each of area at least s.

Also q0<8s/5. Indeed put kappa=q0/s. The other six face areas give
`0<=T<=442/93-kappa`. If kappa>=8/5, (4) would imply

    (442/93-kappa)^2/3+(442/93-kappa)-6kappa+3 >= 0.

The left side decreases on `[8/5,442/93]`, and its value at 8/5 is
`-87029/648675<0`. This proves all three uniform mesh bounds.

For the mesh (3), signed-area addition also gives

    t-v=[CYX]+[DXY]>=2s,
    t-w=[DZY]+[CYZ]>=2s.                               (5)

The six barycentric areas CDX,CDZ,DBX,BCZ,DBY,BCY are at least 3s;
BCX,DBZ,CDY are at least s. In particular

    4s<=v,w<=1-3s,   (3927/500)s<t<=1-s,
    3s+3bs<=x<=1-4s+3bs,
    3s+bs<=u<=1-4s+bs,
    s+3bs<=z<=1-6s+3bs.                                (6)

For example, `[DBX]=x-b(1-v)>=3s` and `1-v>=3s` give the lower
bound for x; `[BCX]=b+(1-b)v-x>=s` and v<=1-3s give its upper
bound. The other four coordinate bounds follow in the same way from
the displayed barycentric clearances.

## 3. A global rational box and three CE cases

Put a=Ks=86769/125000. Equation (1) implies

    b<1-a, h>b+a, k<1-a/(1-b).

Moreover

    bk <= (1-sqrt(a))^2 < (167/1000)^2=27889/1000000,    (7)

where the first maximum follows by AM--GM on
`b-ab/(1-b)` and the second uses (.833)^2<a.
The actual EBH clearance is

    [EBH]=bk+lambda(h-b)>=s.

Initially `[DEB]=b(1-lambda)>=s` implies b>=s. Thus h-b<=.907,
and (7) gives

    lambda>65111/907000>.071,
    b>=s/(1-lambda)>.1.

Repeat with h-b<.9 to obtain lambda>65111/900000>.072. On the other
hand b<1-a and b(1-lambda)>=s give lambda<.696, since
`.304(1-a)<s`. We also have h>.794 and k<.229.

Since (2.73)^2<K, (2) now gives j<.718. The other bounds of Section 1
give j>.103, r>.286 and r<=.907. With (6), we obtain the closed global
box G in the table below. Enlarging strict intervals to closed ones is
harmless.

The actual EBC triangle has doubled area

    b+lambda(1-b)<.306+.694*.696=.789024<Js.

It therefore holds at most two central points. At least one central
point lies above EC. The C-rays occur in the order CY,CZ,CX by (3),
so the complete possibilities are

| Case | ECY | ECZ | ECX |
|---|---:|---:|---:|
| E1 | + | - | - |
| E2 | + | + | - |
| E3 | + | + | + |

A plus or minus always denotes a strictly positive or negative actual
determinant; equality is impossible.

In E1, X,Z lie in EBC, giving

    lambda >= (a-b)/(1-b) >= (2a-1)/a > .559.           (8)

The replacement b<=1-a is valid because `(a-b)/(1-b)` decreases in b.
For the last comparison `(2-.559)a-1=34129/125000000>0`.
Then b>s/.441>.21, h>.904 and k<.122. Applying (2) with 1-b<.79
gives j<.679, while j>s/.79>.117 and r>.396. Formula (6) supplies
the stronger x,u,z lower bounds in box E1.

In E2, DEC contains Y,Z, so lambda<=1-a. In E3, it contains X,Y,Z,
so lambda<=1-Js. These are the only changes from G in E2,E3.

The variable order used by every polynomial is

    (b,lambda,h,k,x,v,u,t,z,w,r,j).                      (9)

| Variable | G lower | G upper | E1 lower | E1 upper |
|---|---:|---:|---:|---:|
| b | .1 | 1-Ks | .21 | 1-Ks |
| lambda | .072 | .696 | .559 | .696 |
| h | .794 | 1 | .904 | 1 |
| k | 0 | .229 | 0 | .122 |
| x | .306 | .714 | .337 | .714 |
| v | .372 | .721 | .372 | .721 |
| u | .288 | .657 | .298 | .657 |
| t | .730 | .907 | .730 | .907 |
| z | .120 | .528 | .151 | .528 |
| w | .372 | .721 | .372 | .721 |
| r | .286 | .907 | .396 | .907 |
| j | .103 | .718 | .117 | .679 |

Box E2 is G with lambda<=1-Ks=38231/125000.
Box E3 is G with lambda<=1-Js=88289/500000.
Every finite rounding in this table is outward; for example the global
upper bounds follow by substituting b<=1-Ks in (6).

There is one additional conditional area cap:

    [EBH] < c_i,  c_1=.578, c_2=.304, c_3=.187.         (10)

Indeed (7) and h-b<=1-b give, respectively,

    .027889+.696*.79=.577729<.578,
    .027889+(1-Ks)*.9=.3031522<.304,
    .027889+(1-Js)*.9=.1868092<.187.

In E3, the last cap is below 3s, so EBH contains no actual point. Since
R lies in BHC, a negative EHR would put R in EBH: EBR and BHR are
positive, and [HER]=-[EHR]. Consequently

    EHR>0 in E3.                                       (11)

The E3 refined rows use this consequence as an initial premise. The
unrefined G rows do not need it.

## 4. Exhaustive geometric branching and explicit inference rules

The D-rays occur in the order DY,DX,DZ when tested against DH: the
positive DH signs are an initial segment of this list. Thus there are
four possibilities H0,H1,H2,H3, according to the length 0,1,2,3 of
that segment. The actual DHR has either sign. A root name

    E{i}H{j}m or E{i}H{j}p

means CE case i, DH case j, and negative or positive DHR. These are
exactly 3*4*2=24 exhaustive roots.

The appendix gives a binary refinement table. At every listed node,
split on the sign of its displayed actual triangle, appending m or p
to the node name. Each actual triangle has nonzero area, so both signs
together cover the parent with no omitted boundary case. There are
28 such nodes, hence 24+28=52 terminal leaves. All assumptions of each
leaf are printed explicitly and checked against its unique path.

Here are the common initial geometric signs used in every leaf:

* All ten triples in the cyclic order D,E,B,H,C are positive.
* X,Y,Z are inside DBC and the anchor pentagon; R is inside BHC and
  that pentagon. All corresponding oriented edge tests are positive.
* The thirteen mesh signs (3) hold.
* For T=X,Y,Z, BTR<0 and CTR>0. These are the ray separations of the
  central and right sides of BC.
* ECY>0, as proved in Section 3.

Starting with these signs and the printed leaf assumptions, each sign
trace uses just two explicit rules.

**P rule.** For five distinct actual labels a,b,c,d,e,

    [abc][ade]-[abd][ace]+[abe][acd]=0.                 (12)

If two nonzero summands have the same sign, the remaining summand has
the opposite sign. When that summand has just one undetermined
triangle sign, this determines it. A line `P abcde +UVW` or
`P abcde -UVW` is precisely this deduction. Its coefficient and
permutation signs are included when applying (12).

**M rule.** Suppose the three distinct indicated points lie inside the
positive actual triangle ABC. By the clustered-triple exclusion they
admit one of the six permutations as X,Y,Z in the distributed mesh
(3), with D,B,C replaced by A,B,C. Retain the permutations compatible
with already known signs. If every retained permutation assigns the
same sign to a displayed determinant, that sign follows. A line
`M ABC XYZ +UVW` or `M ABC XYZ -UVW` records this deduction; the order
XYZ on this line names the three points to permute. There is no
coordinate search in this six-element check.

The same finite check gives a contradiction if no permutation remains;
this is the appendix's `nomesh ABC XYZ` exclusion. The other geometric
exclusion, `four ABC WXYZ`, states that the four indicated points are
strictly inside the actual triangle ABC, contradicting Section 2.

The six roots E1H0m,E2H0m,E3H0m,E1H3p,E2H3p,E3H3p end with four
points in DBH or DHC. The two further geometric leaves E1H2pp and
E1H2mpp have no compatible distributed mesh for X,Z,R in EHC.
All other leaves receive the fixed polynomial contradictions below.

## 5. Nonnegative factors and their geometric eligibility

For a row with box endpoints lo_i,hi_i in the variable order (9), put

    L_(2i)=a_i-lo_i, L_(2i+1)=hi_i-a_i,  0<=i<12,
    L24=t-v-2s, L25=t-w-2s.                            (13)

Every L factor is nonnegative by Sections 2–3. Its endpoints are those
of the box printed for that row, even if a smaller conditional box is
also available.

A factor `+UVW` means `[UVW]-s`; `-UVW` means `-[UVW]-s`. The sign
must be among the initial, assumed or deduced signs of the leaf. All
points in such a factor are actual. A suffix `o3`, `o933/125` or
`o4427/500` replaces s by 3s,Ks or Js. The appendix lists one,two or
three actual interior witnesses, respectively. Their strict membership
is checked by all three oriented edge signs. The one special factor
`+BHCo933/125` uses both original right interior points R,S from (1),
although S is not otherwise included in the finite model.

For a cyclic actual convex quadrilateral ABCD, with the indicated
interior points I, define

    quad_ABCD_I=[ABC]+[ACD]-c,
    c=.449 if |I|=1, c=8s if |I|=2, c=93/91 if |I|>=3. (14)

The four triple orientations and all interior edge signs are checked.
For one interior point the four fan areas a,b0,c0,d0 satisfy
`|a c0-b0 d0|>=s^2`, by the two actual diagonal triangles. Taking the
larger product first gives `a c0>=2s^2`, `b0 d0>=s^2`; AM--GM yields
quadrilateral area at least `2(1+sqrt(2))s>.449`.
For two interior points the universal bound is 8s. To recall its short
proof, if a diagonal puts both on one side, the area is at least
(Gamma2+1)s>8s. Otherwise normalize the two diagonals with positive
lengths a+c=b0+d0=1. The interior coordinate magnitudes are at least
the normalized minimum tau. The two occupied opposite sectors give
`a d0>=tau(1+a+d0)` and `b0 c>=tau(1+b0+c)`. One of a+d0,b0+c is
at most one; AM--GM then gives tau<=1/8. Scaling back proves 8s.
For three interior points, SQUARE_QUADRILATERAL_THREE.md gives the
stronger strict bound 93/91. Any three of a larger indicated set
suffice. These bounds are therefore nonnegative factors in every use
of (14).

There are three types of mesh factors, with their outer and interior
labels encoded as follows:

    ear_ABC_ABZ=[ABC]-[ABZ]-(3927/500)s,
    connect_ABC_XYZ=[AZY]+[BXZ]+[CYX]-(2427/500)s,
    center_ZXY=8s/5-[ZXY].                              (15)

An ear may be any of ABZ,BCX,CAY. The four mesh types appearing in the
products are exactly

| Outer order | Interior mesh order X,Y,Z |
|---|---|
| D,B,C | X,Y,Z |
| D,H,C | R,Y,X |
| D,R,C | X,Y,Z |
| D,E,C | X,Y,Z |

For each use, all thirteen mesh signs and all interior edge signs are
available in that leaf. Thus (15) follows from Section 2. The names
`center_ZXY` and `center_XRY` refer to the first and second mesh types,
respectively. Finally `EBHcap` means `c_i-[EBH]` from (10), and is
used only with its corresponding conditional box E1,E2,E3.

Every product in the appendix is a product of these nonnegative
factors, and every printed weight is a positive integer.

## 6. The exact polynomial contradiction in every remaining leaf

For each polynomial leaf the appendix prints the complete finite sum

    P(a)=sum weight * product.                          (16)

It has total degree at most three and is nonnegative under that leaf's
hypotheses. Translate each coordinate by its printed box lower bound:
`a_i=lo_i+z_i`, where `0<=z_i<=d_i=hi_i-lo_i`, and expand

    P(lo+z)=sum_alpha c_alpha z^alpha.

A direct upper bound throughout that box is

    U(P)=c_0+sum_{alpha nonzero, c_alpha>0}
                    c_alpha * product_i d_i^alpha_i.   (17)

Indeed the monomials are nonnegative: negative nonconstant terms can
be discarded in an upper bound, and every positive term is at most its
coefficient times the indicated product of widths. The exact rational
value of (17) is printed with every table and is strictly negative.
Consequently `0<=P<=U(P)<0` in every polynomial leaf.

The checker reads only the printed appendix, reconstructs all coordinate
and determinant polynomials from this note, and performs (17) with
Fractions. It also verifies every inference, every factor's signed-area,
convexity, interior and mesh premises, the complete branching, and all
52 terminal conclusions. Its complete result is

    24 roots, 28 binary refinements, 52 closed leaves;
    44 exact cubics, 2194 positive-integer terms;
    8 geometric exclusions, 933 checked sign deductions.

All roots are therefore impossible. This proves the complete
triangular-right hull exclusion for the Type-II count (1,3,3).
