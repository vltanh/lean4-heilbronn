# Central N7 with two points in CEF: EFG has capacity one

This note proves a complete actual-triangle cap in both remaining central
N7 roots. Its fixed rational proof is printed in
[N7_CENTRAL_COMPLETION_EFG_CAP_TABLES.md](N7_CENTRAL_COMPLETION_EFG_CAP_TABLES.md).
The cap does not depend on the orientation of the upper pair line.
It does not by itself exclude the entire N7 parent.

All areas are doubled. Use the actual points and hypotheses of
[N7_CENTRAL_COMPLETION.md](N7_CENTRAL_COMPLETION.md), including G in
HABC with ACG,HBG>0, O,P in HCEF, all three free points inside
ABCDEFH, and minimum actual unsigned triangle area s=93/1000.
The two weak contact orders CA: ac>=bh and CB: ac<=bh are exhaustive.

**Theorem.** If CEF contains O,P, then

    [EFG] < T := (149/20)s = 13857/20000.             (1)

Thus EFG contains at most one additional actual point. In particular,
two actual upper points cannot both have EGT<0. Indeed each T=O,P is
in CEF, where the affine FG test is positive at C,E and zero at F:
FGC=CFG>0 and FGE=EFG>0. Hence FGT>0. Together with EFT>0 and
GET=-EGT>0, the contrary signs would put both points inside EFG.

The proof assumes the contrary [EFG]>=T. It uses only the 56 actual
triangles on A,B,C,D,E,F,G,H, the two occupied upper-ear areas, and
previously proved contact bounds. There is no upper-point sign search,
coordinate subdivision, numerical premise, or implicit feasibility
claim in the calculation.

## 1. Previously proved contacts and the two closed boxes

The premise gives CEF>=T. [UPPER_EAR_SEPARATION.md](UPPER_EAR_SEPARATION.md)
makes HEF empty. Since O,P have the positive HC,CE,EF,FH tests,
this also puts both strictly inside HCE, and therefore CEH>=T.
The contact lemmas in [N7_CENTRAL_COMPLETION.md](N7_CENTRAL_COMPLETION.md)
and [UPPER_PAIR_CONTACT_CAPS.md](UPPER_PAIR_CONTACT_CAPS.md) give

    e>57/100, f<279/1000,
    ABE<=167879/245720,
    AEF<203613/250000 in CA,
    AEF<51431/62500 in CB.

[N7_CENTRAL_ACD_CAP.md](N7_CENTRAL_ACD_CAP.md) gives ACD<27/40.
The weak upper bounds suffice in every table below.

The following closed boxes are the proved central boxes of the common
setup, intersected with e>=57/100 and b<=f<=279/1000. They contain every
actual configuration in the theorem. The coordinate order is

    a,b,c,d,e,f,g,h,z.

| Coordinate | CA lower | CB lower | Common upper, except z |
|---|---:|---:|---:|
| a | 139/1000 | 122/1000 | 685/1000 |
| b | 108/1000 | 123/1000 | 279/1000 |
| c | 541/1000 | 541/1000 | 883/1000 |
| d | 120/1000 | 122/1000 | 705/1000 |
| e | 57/100 | 57/100 | 907/1000 |
| f | 108/1000 | 123/1000 | 279/1000 |
| g | 118/1000 | 123/1000 | 685/1000 |
| h | 613/1000 | 613/1000 | 1 |
| z | 139/1000 | 134/1000 | CA:773/1000; CB:775/1000 |

## 2. All common actual signs and the six exhaustive words

Every contact triple in the positive cyclic order ABCDEFH is positive.
The common signs involving G, in alphabetical orientation, are

    +: ABG ACG AGH BCG BGH CDG CEG CFG DEG DFG EFG,
    -: AFG BFG CGH DGH EGH FGH.                     (2)

Here ABG,BCG,CDG,DEG,EFG,FHG,HAG are actual heptagon inward tests;
ACG,HBG are the central premises; and CHG is the HABC inward test.
AFG,BFG<0 were proved in N7_CENTRAL_COMPLETION, Sections 1--3.

For the remaining common chord signs, the tests CF and CE are positive
at H,A,B and zero at C, so CFG,CEG>0 for G in HABC. Their explicit
vertex values are printed in that note. The test DF is positive at
all four vertices H,A,B,C, by the positive cyclic contact triples,
and hence DFG>0. G lies in BCH, since BCG,CHG,HBG>0. The DH test
is zero at H and has positive values h(1-b)+bd and h(1-c)+cd at
B,C; hence DHG>0. Finally EH is zero at H and positive at A,B,C,
with respective values h-a, h(1-b)+be, h(1-c)+ce, so EHG>0.
These prove every sign in (2), with zero excluded by actual clearance.

Only ADG,AEG,BDG,BEG remain. The following four Pluecker identities
exclude the indicated combinations. In each excluded combination,
all three displayed summands have the same strict sign, using (2)
and the cyclic contact signs.

| Pivot; four other labels | Identity | Excluded signs |
|---|---|---|
| A; B,D,E,G | ABD*AEG-ABE*ADG+ABG*ADE=0 | ADG<0, AEG>0 |
| D; A,B,C,G | DAB*DCG-DAC*DBG+DAG*DBC=0 | ADG>0, BDG<0 |
| B; A,D,E,G | BAD*BEG-BAE*BDG+BAG*BDE=0 | BDG<0, BEG>0 |
| E; A,B,C,G | EAB*ECG-EAC*EBG+EAG*EBC=0 | AEG>0, BEG<0 |

Thus the complete nonzero four-sign words are precisely the following
six. Their numeric identifiers only name the literal packets.

| Packet suffix | ADG | AEG | BDG | BEG | CA proof | CB proof |
|---|---:|---:|---:|---:|---|---|
| 00 | - | - | - | - | Cubic | Cubic |
| 04 | - | - | + | - | Cubic | Cubic |
| 05 | + | - | + | - | Cubic | Cubic |
| 12 | - | - | + | + | Scalar | Scalar |
| 13 | + | - | + | + | Scalar | Scalar |
| 15 | + | + | + | + | Scalar | Scalar |

Equivalently, enumerate all sixteen binary words in the four signs:
exactly these six avoid the four excluded combinations. The rational
orders ac>=bh and ac<=bh cover their equality face in both root boxes.
No new physical symmetry is used.

## 3. Literal area bounds and identities

An area variable without brackets is the positive unsigned actual
area. Its sign is fixed by Section 2 and the selected word. Every
initial record in the tables has one of the following sources:

* An actual clearance s, or 3s when the three strict inward tests put
  G in the printed actual triangle. The occupant list is literal.
* CEF,CEH>=T from Section 1, or the contrary EFG>=T.
* An actual triangle inside the unit square has area at most one.
* A fixed containing cap BCE or DEF, proved below T in the common
  setup, or a printed actual containing triangle with one of its
  stated fixed caps. All three vertices have the containment tests.
* One of the fixed bounds on ACD,ABE,AEF in Section 1.
* A multiaffine box maximum: the signed determinant is affine in each
  of its used coordinates. After substituting each coordinate as a
  convex combination of its two endpoints, it is a convex combination
  of all its endpoint values. The initial record prints the complete
  sorted distinct endpoint-value list and its maximum. The values may
  be negative at box corners that do not satisfy the contact orders;
  their maximum still bounds the actual signed area.

The relations have these exact meanings. A `fan` is the actual
three-piece area identity for its printed interior point G. A `plu`
row is a fully signed five-label Pluecker identity, written

    XY=UV+WZ.

A `balance` row is the fully signed six-label identity

    [ABC][IJW]-[WBC][IJA]-[AWC][IJB]-[ABW][IJC]=0.    (3)

Its four unsigned product terms retain their literal signs. Each
five- or six-label identity can also be checked by expanding the actual
determinant polynomials from Section 1.

A `quad` row says that a printed positive convex actual quadrilateral
containing G has area at least449/1000, by AREA_RELATIONS.md. Its
four positive edge tests, six positive cyclic triple tests, and actual
occupant are supplied by the sign word.

A `support` row has form XY>=k(X-Z). For a convex actual quadrilateral
with printed cyclic order ABCD, the variables are X=[ABD],Y=[ABC],
Z=[ACD]. Its actual occupant is G. QUADRILATERAL_SUPPORT.md permits
k=(29/5)s,(149/20)s,12s when the sorted counts of G in ACD,BCD are
respectively(0,0),(0,1),(1,1). Each count is determined by three actual
inward tests. For a positive convex actual pentagon ABCDE, the
support-ray proof in N7_THREE_FIVE_UPPER_HEIGHT.md gives
[ABE][ADE]>=11s([ABE]-[ABD]). This is the other printed support
witness. Both inequalities include the automatic nonpositive-difference
case, so no denominator sign is assumed.

A `linear` row has one of two sources. A `quad_container` records the
actual quadrilateral area ceiling of its printed container. HABC has
area hc-ab, bounded by h_hi*c_hi-a_lo*b_lo. HCEF and ABEF have
respective areas1-(h-e)(c-f) and1-(e-a)(f-b), both at most one.
Every vertex is in the actual container, with its actual edge tests.

A `bary_sign` row is the following elementary fan consequence. Let G
lie in actual ABC; let a_i be the three positive opposite fan areas,
a_i>=l_i, S=[ABC]<=N, and R=N-sum(l_i)>=0. For any actual line IJ,
the barycentric identity is

    S*[IJG]=sum_i a_i*[IJV_i].                       (4)

All signed tests in (4) are known. Since N>=S>0, normalize the fan
weights by beta_i=N*a_i/S. Then beta_i>=a_i>=l_i, sum beta_i=N,
and the exact identity is N*[IJG]=sum_i beta_i*[IJV_i]. Write
beta_i=l_i+r_i, where r_i>=0 and sum r_i=R. In particular each
r_i<=R. The upper signed contribution replaces r_i by R on each
positive test and by zero on each negative test. The lower contribution
does the reverse. The two literal coefficient schemes in the tables
are exactly these upper and lower inequalities. No sign-dependent
replacement of S by N is required. Each record prints N, its immutable
initial bound, all three l_i and their immutable initial bounds,
the signed line tests, and the residual R. No subsequently optimized
coefficient is used.

## 4. Immutable rational scalar calculations

Each update names its earlier bound sources, its relation, target area,
side, and new rational value. Fan updates use sums or subtraction;
product updates use interval arithmetic in the displayed product
identity, dividing only by a positive area bound. A balanced update
isolates one product in (3), bounds each other product in the appropriate
direction, and divides by its positive partner. For a lower quotient,
use an upper denominator when the numerator is nonnegative and a lower
denominator when it is negative; the upper quotient uses the reverse
choices. The packet's positive-source rule retains only positive lower
bounds, so the literal balanced updates use the positive-numerator
case. All source roles are printed in the update.

Support and linear updates are exactly the elementary rules of
SCALAR_AREA_INTERVALS.md. Every lower update is rounded down and every
upper update up. All printed derived bounds are multiples of1/1000000.
Each retained record is an immutable fact; a later record never changes
the meaning of an earlier reference. Initial cap and fan bounds used
in a relation's geometric witness are also retained in the packet.

For each scalar leaf, the named final lower and upper bounds on the
same area cross strictly. This completes packet suffixes12,13,15
without a polynomial sum.

## 5. The six finite nonnegative cubic sums

Each polynomial leaf uses only the following primitive factors, their
printed positive products, and coordinate-box facets. The factor's
literal polynomial is printed beside its source witness.

An `AREA_LO` or `AREA_HI` is its signed actual determinant minus a proved
lower bound, or a proved upper bound minus the signed determinant.
The exact scalar reference and value are printed. A `QUAD` or `LINEAR`
factor is precisely its retained relation from Section 3. A fixed-cap
support factor is

    M*Y-k(X-Z)>=0,

where XY>=k(X-Z) and X<=M; the positive Y justifies the replacement.
The corresponding factor with Y capped is used in the other direction.
The two `NATURAL_SUPPORT` factors in the tables use ACE<=e instead of
a constant M. This cap is the exact identity

    e-[ACE]=(e-a)(1-c)>=0.

All coordinates and both factors on the right are nonnegative.
Thus the resulting cubic has the same proof as the constant-cap factor.

The remaining actually used setup factors, with s=93/1000, are

| Name | Nonnegative polynomial |
|---|---|
| overlap_bf | f-b |
| overlap_fc | c-f |
| overlap_eh | h-e |
| overlap_ae | e-a |
| span_BC | c-b-117/1000 |
| span_BC_hi | 79/100-c+b |
| span_AH_hi | 697/790-h+a |
| span_DE_hi | 697/790-e+d |
| Gsum | 790/883-g-z |
| PAIR_BL | hc-[ABC]-[ABH]-2s |
| Central_z | c(h-a)z-s(h+a) |

Their stated sources are the side-span, overlap, opposite-ear Cauchy,
and central-strip inequalities of N7_ONE_LOWER_SETUP.md and
ONE_LOWER_POINT.md. Their exact forms and bounds are already proved
there. The root's `Central_order` is ac-bh in CA and bh-ac in CB.
For t=1/10 or2/10 as printed, a `Central_endpoint_tangent` is

    cah-2tca+t^2c-s(h+a) in CA,
    hbc-2thb+t^2h-s(c+b) in CB.

Its difference from the root's proved endpoint inequality is respectively
c(a-t)^2 or h(b-t)^2, which is nonnegative. These are the only extra
setup factors actually used in the twelve tables.

For the root's printed box l_i<=x_i<=u_i, facet L_(2i) means x_i-l_i,
and L_(2i+1) means u_i-x_i, in the nine-coordinate order of Section1.
Every monomial term in the final sum is a printed positive integer
weight times a product of these nonnegative factors. Its total degree
is at most three. Therefore the sum is nonnegative on every actual
configuration in that leaf.

The complete upper calculation is also printed. Substitute

    x_i=l_i+(u_i-l_i)t_i,       0<=t_i<=1.

The tables list every nonzero coefficient in the resulting polynomial
S(t)=sum_alpha c_alpha*t^alpha, including its constant coefficient.
Since every nonconstant t^alpha lies in[0,1],

    S(t)<=c_empty+sum_(alpha nonempty,c_alpha>0)c_alpha.

The literal rational value on the right is printed and is strictly
negative in each of the six polynomial leaves. This contradicts the
sum's nonnegativity. The coefficient list, positive integer weights,
and source factor polynomials form a complete finite arithmetic
identity; no optimizer or floating-point value is needed to check it.

The six sign words in Section2 and the two weak root orders cover all
actual configurations in the theorem. Every word has one scalar or
polynomial contradiction in each root. This proves(1), and the actual
two-interior-point triangle cost(4+2sqrt(3))s>T proves capacity one.

## 6. Verification status

The source-complete exact reader
[N7_CENTRAL_COMPLETION_EFG_CAP_check.py](N7_CENTRAL_COMPLETION_EFG_CAP_check.py)
passes all twelve literal packets:701 immutable scalar updates and615
positive polynomial terms. It checks the sixteen-word coverage, every
retained area premise and signed identity, all convexity and containment
witnesses, all endpoint values, every source-bound dependency, and all
six complete translated coefficient sums. It imports no discovery
module or solver.

The separate Fraction reader
[audit_n7_central_efg_cap.py](audit_n7_central_efg_cap.py) independently
reconstructs every actual sign from the eight-point domain and the selected
word. It verifies all 250 retained relations, 701 scalar updates, 229
physical source factors, 615 positive products, 910 endpoint values and
1,022 immutable bounds. Its fresh polynomial implementation reproduces all
six exact negative upper bounds. It imports neither the author reader nor
any discovery module. Twelve deliberate corruptions are rejected, including
missing or duplicated case coverage, a changed box or endpoint list, a
future scalar source, an altered barycentric premise and a changed final
polynomial. Optional regression commands are

~~~text
python3 n10/hand/N7_CENTRAL_COMPLETION_EFG_CAP_check.py
python3 n10/hand/audit_n7_central_efg_cap.py --mutations
~~~

Independent geometric review also checks the actual convexity and fan
containments, the two exhaustive weak contact orders, all initial box and
fixed cap sources, the normalized barycentric weights, and every remaining
setup and support factor. The stated uniform EFG cap is accepted as a
complete local theorem in both roots. The E-only word, both central parents
and N7 still require their remaining contradictions.
