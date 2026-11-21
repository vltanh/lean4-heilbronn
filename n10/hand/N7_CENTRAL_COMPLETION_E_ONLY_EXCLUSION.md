# N7 central: the complete E-only exclusion

The fixed finite argument below excludes the E-only upper-pair word in
both lower-central contact roots CA and CB. Its complete rational tables
are in
[N7_CENTRAL_COMPLETION_E_ONLY_TABLES/INDEX.md](N7_CENTRAL_COMPLETION_E_ONLY_TABLES/INDEX.md).
The author source-complete reader and the separately written independent
Fraction reader pass all twelve leaves. Independent mathematical review
and 22 deliberate-corruption checks also pass. The other upper-pair words and the
two central parent roots remain open.

## 1. Actual-point statement and finite cover

Use the actual contacts and free points

    A=(0,a), B=(b,0), C=(c,0), D=(1,d), E=(1,e),
    F=(f,1), H=(0,h), G=(g,z), O=(x,y), P=(u,v).

All ten points lie in the closed unit square. Their actual heptagon
ABCDEFH is strictly convex, and every actual distinct-point unsigned
doubled triangle area is at least s=93/1000. The contact orders are

    0<a<h<1, 0<b<c<1, 0<d<e<1,
    a<=e<=h, b<=f<=c.

The point G lies strictly inside HABC with ACG,HBG>0. Both O,P lie
strictly inside HCEF. Use the labeling HOP<0. The already proved
[central pair cut](N7_CENTRAL_PAIR_CUT.md) gives DGO<0, and the
[central area-orientation lemma](N7_CENTRAL_AREA_ORIENTATION.md)
excludes AGT>0,DGT>0 for T=O,P.

The two weak root orders are CA: ac>=bh and CB: ac<=bh, with the
corresponding boxes of [N7_ONE_LOWER_SETUP.md](N7_ONE_LOWER_SETUP.md).
They cover equality as well as both strict alternatives.

**Proposition.** No such configuration satisfies

    HOP<0, COP<0, EOP>0, FOP<0.                     (1)

The actual upper-pair chord rule puts O,P inside CEF. The accepted
[central contact consequences](N7_CENTRAL_COMPLETION.md) and
[uniform EFG-cap theorem](N7_CENTRAL_COMPLETION_EFG_CAP.md) therefore
apply. In particular,

    f<279/1000, e>57/100,
    AFT<0, BFT<0 for T=G,O,P,
    G inside ACF and BCF,
    ABE<=167879/245720,
    AEF<=203613/250000 (CA), AEF<=51431/62500 (CB),
    EFG<(149/20)s.

The HEF emptiness here is the actual upper-ear separation theorem of
[UPPER_EAR_SEPARATION.md](UPPER_EAR_SEPARATION.md).
Thus AFH,BFH,ABF,HEF are empty; ABE and EFG have capacity one;
and AEF has capacity two. Emptiness of HEF, with EFP,FHP>0,
forces HEP<0 and hence the initial labeling test EHP>0. The weak bounds f<=279/1000 and e>=57/100
are used in the arithmetic.

[N7_CENTRAL_COMPLETION_E_ONLY.md](N7_CENTRAL_COMPLETION_E_ONLY.md)
proves, throughout (1),

    GOP<0, EGP>0, BEG>0, BDG>0, AEP<0, BEP<0.

It also proves AGO>0 implies AEO>0,EGO<0. The latter puts O in EFG.
The point P is always inside BCE. These are actual signed-area
consequences, independent of the finite arithmetic below.

The same note proves that the complete remaining list of
(AGO,AGP,DGP) is

    ---, --+, +--, +-+, ++-.                        (2)

Only the word +-+ is further split by AEG<0 or AEG>0. AEG cannot
vanish because it is an actual triangle. Hence there are exactly six
leaves in each root. Every other sign used in a leaf is either one of
these stated premises or a printed deduction. No coordinate split is
used.

## 2. The printed objects and their order

Each linked leaf is one literal fenced JSON object. Coordinate indices
are in the fixed order

    a b c d e f g h z x y u v.

Each stage supplies:

* its initial coordinate box;
* its actual signs and the full preceding sign derivation;
* named initial unsigned area bounds, with geometric witnesses;
* the identities and geometric inequalities actually used;
* immutable scalar updates, in order, citing earlier bound versions;
* the physical polynomials used for coordinate deductions or the final
  positive combination;
* when needed, every coordinate update and every distinct endpoint line.

A later stage inherits the entire preceding final box. A final scalar
or polynomial contradiction occurs before any unused coordinate
attempt at that stage. Earlier coordinate stages are retained in full.
Thus no omitted coordinate computation is a premise.

An initial coordinate box is the applicable proved root box, intersected
with e>=57/100 and b,f<=279/1000. Every later initial box is exactly
its predecessor's final box. The weaker b bound follows from b<=f.
All thirteen coordinate bounds are printed at every stage.

Every bound version has a distinct name within its stage. An update
never overwrites an earlier version. A numeric capacity deduction in a
sign trace names both its earlier stage and the exact bound version
there. All other sign rules use only earlier signs and the accepted
geometric lemmas stated above.

## 3. Sign and scalar premises

Write D(XYZ) for the signed actual doubled determinant, and A(XYZ)
for its positive unsigned area. All determinants in the tables are
expanded from the actual coordinates in Section 1.

A Pluecker sign deduction uses the literal identity

    D(IBC)D(IDE)-D(IBD)D(ICE)+D(IBE)D(ICD)=0.

If two summands have the same strict sign and the third contains just
one unknown actual sign, that unknown is forced to have the opposite
product sign. The reader also expands the polynomial identity.

The capacity rules use positive inward edge tests of the displayed
actual triangle. A triangle with n named interior points has lower
area cost

| n | 0 | 1 | 2 | 3 |
| --- | --- | --- | --- | --- |
| Cost | s | 3s | (149/20)s | (4427/500)s |

These are the already proved costs of the common setup; the exact
two- and three-interior thresholds are strictly larger than the
displayed rational costs. Consequently an upper bound at most
(149/20)s gives capacity one, and at most (4427/500)s gives
capacity two. Capacity zero is used only with an upper bound strictly
below 3s or with one of the proved empty triangles.

The capacity-one ray rule is the exact identity, for positive IJK,

    v_U u_V-v_V u_U=D(IJK)D(IUV),
    u_T=D(IJT), v_T=-D(IKT)>0.

The tables first check the two common inward tests. The sign of IUV
selects which remaining inward test must be negative, since otherwise
both points lie in IJK.

The fixed capacity-one sources BCE and DEF, the central ACD source,
the actual ADG,BDG,CDG bounds, and the conditional CEF consequences
are the named lemmas of the common setup and the central notes.
Every numeric capacity source is separately replayed from an earlier
literal upper bound. The only additional implication records are
the accepted AEF capacity-two consequence AEG<0 when AGO,AGP>0,
the accepted AE transfer AEG<0 implies AEO>0 on (1), and the
uniform AEP<0,BEP<0 consequences of the structural note.

An initial area lower bound names actual interior points and checks
all their inward edge tests. A scalar upper bound comes from a
named proved cap, an actual containing triangle, the unit-square
bound A<=1, or a complete endpoint evaluation on the current
coordinate box. The latter is valid because actual determinant
polynomials are affine in each separate coordinate. Every distinct
rational endpoint value and its maximum are printed.

The scalar relation types are:

* Fan identities S=A+B+C at a named actual interior point.
* Signed Pluecker identities, rewritten as XY=UV+WZ with all six
  variables positive.
* The six-label affine determinant identity
  D(ABC)D(IJW)=D(WBC)D(IJA)+D(AWC)D(IJB)+D(ABW)D(IJC),
  with its actual signs retained as a four-product balance.
* Actual occupied-quadrilateral lower costs. For respectively one,
  two, or three named interior points these are 449/1000, 8s,
  and 93/91.
* The actual quadrilateral and pentagon support inequalities of the
  common setup.
* The actual containing-quadrilateral, straddling-pair, and normalized
  barycentric consequences described below.

For a positive convex actual quadrilateral ABCD, the support row is

    XY>=q s(X-Z),  X=ABD, Y=ABC, Z=ACD.

For one named interior point, the counts in ACD,BCD give

| Counts | (0,0) | (0,1) | (1,1) |
| --- | --- | --- | --- |
| q | 29/5 | 149/20 | 12 |

For two named interior points, the corresponding table is

| Counts | (0,0) | (0,1) | (0,2) | (1,1) | (1,2) | (2,2) |
| --- | --- | --- | --- | --- | --- | --- |
| q | 1142/125 | 1142/125 | 139/10 | 12 | 199/10 | 149/5 |

When both chosen points lie in ABC and ABD, q may additionally be
raised to 299/31, as proved in the common central setup. All counts
are checked actual containments. If X-Z<=0, the support inequality
is automatic. For a positive convex actual pentagon ABCDE, the
corresponding support row is

    ABE*ADE>=11s(ABE-ABD).

These are precisely the established support rules of
N7_ONE_LOWER_SETUP.md, with their complete witnesses printed.

For an actual quadrilateral contained in HABC, its area is at most
hc-ab, hence at most h_+c_+-a_-b_- on the stated box. For HCEF
and ABEF the upper bound is one, using the literal identities

    1-[HCEF]=(h-e)(c-f)>=0,
    1-[ABEF]=(f-b)(e-a)>=0.

A printed straddling-pair source first checks opposite strict signs
at both diagonals. It uses exactly the setup's inequality

    [ABCD]-|D(edge,U)|-|D(edge,V)| >= (29/5)s

for the displayed diagonal edge and two actual interior points.
All five retained spread records use this generic rate.

For a normalized barycentric row, let a_i be the three positive fan
areas at an actual interior point W, S their outer area, and
a_i>=l_i, S<=N. Set beta_i=N a_i/S. Then beta_i>=l_i and
sum beta_i=N. For every affine signed line test L,

    N L(W)=sum beta_i L(V_i).

Writing beta_i=l_i+r_i gives r_i>=0 and sum r_i=N-sum l_i.
The printed upper or lower row bounds each vertex contribution using
its known actual sign. This uses normalized beta_i, not the raw
fan areas a_i. Every N and l_i is an earlier immutable bound version.

Scalar updates use the exact isolation rules of
[SCALAR_AREA_INTERVALS.md](SCALAR_AREA_INTERVALS.md).
The extra four-product balance rule isolates its target product,
uses the earlier bounds on the other three products, and divides by
the positive bound on its partner. Every role, direction, and
denominator is checked. Lower bounds are rounded down and upper
bounds up to multiples of 1/10^6.

## 4. Physical factors and complete coordinate deductions

Every retained physical factor is one of the following:

* A-lo or hi-A from a named, already replayed area bound.
* A validated nonnegative linear or quadrilateral relation, with its
  unsigned areas replaced by their actual signed polynomials.
* uY-q s(X-Z) from a support row XY>=q s(X-Z) and an earlier
  actual upper bound X<=u; the symmetric capped product is allowed.
* One of the setup factors displayed below.
* A raw natural support cap using ABC<=a, ACH<=h-a, or ACE<=e.

The natural caps have the literal nonnegative complements

    a-[ABC]=a(1-c+b),
    (h-a)-[ACH]=(h-a)(1-c),
    e-[ACE]=(e-a)(1-c).

The target area multiplying a natural cap is positive. Thus replacing
one support-product factor by its larger natural cap preserves the
nonnegative inequality. These are the only three retained natural
source types. There is no QAREA or relaxed natural source in the
literal proof.

The retained common setup factors are the appropriate entries of

    h-a-s, e-d-s, c-b-117/1000,
    79/100-(c-b),
    697/790-(h-a), 697/790-(e-d),
    f-b, c-f, h-e, e-a,
    hc-(2911/500)s,
    790/883-g-z,
    c(h-a)z-s(h+a).

Each was proved in the common N7 setup. Central_order is ac-bh
in CA and bh-ac in CB. The endpoint tangent at a printed tenth t is

    cah-2tca+t^2 c-s(h+a)             in CA,
    hbc-2thb+t^2 h-s(c+b)             in CB.

Its difference from the proved ordered endpoint inequality is
respectively c(a-t)^2 or h(b-t)^2. The actual coordinates make these
differences nonnegative.

All factors used for coordinate deductions are multiaffine.
For one target coordinate w, fixing all other factor coordinates at
box endpoints gives the complete displayed list of lines

    A_epsilon w+B_epsilon.

At any fixed w, multiaffine interpolation expresses the actual
factor as a convex combination of these endpoint values.
If the actual factor is nonnegative, at least one endpoint line
must be nonnegative. For each line, intersect its elementary affine
feasible interval with the old coordinate interval. The actual
coordinate lies in the union of these intervals, hence in their
interval hull. This is exactly the printed raw update. Rounding
outwards preserves validity. If all intervals are empty, the
displayed endpoint table is a contradiction.

The table contains every distinct endpoint line, not a selected
sample. The reader reconstructs the full set from the physical
polynomial and the current immutable box, checks the old interval,
computes the exact hull, and checks the outward rounding.

## 5. Three literal terminal forms

A scalar terminal has a proved lower bound strictly above a proved
upper bound for the same actual unsigned area. A coordinate terminal
has the empty interval described in Section 4.

A polynomial terminal prints a positive integer weighted sum of
products of proved nonnegative physical factors and box factors
w-l_w or u_w-w. The complete polynomial is substituted by

    w=l_w+(u_w-l_w)t_w,  0<=t_w<=1.

Every coefficient is printed. Its value is at most its constant
coefficient plus the sum of its positive nonconstant coefficients,
because every monomial lies in [0,1]. Each displayed upper sum is
strictly negative, contradicting nonnegativity. True cubic products,
including repeated coordinate powers, are expanded exactly.

The two remaining terminals are positive scalar-area combinations.
They use zero fan or four-point identities, validated nonnegative
linear relations, and the following exact product envelopes for
l_X<=X<=u_X and l_Y<=Y<=u_Y:

    l_X Y+l_Y X-l_X l_Y <= XY,
    u_X Y+u_Y X-u_X u_Y <= XY,
    XY <= u_X Y+l_Y X-u_X l_Y,
    XY <= l_X Y+u_Y X-l_X u_Y.

Each is the expansion of a product of two nonnegative interval
differences. In an exact signed product identity, use an upper
envelope on positive products and a lower envelope on negative
products. Their affine sum is nonnegative. All chosen source
versions and all affine coefficients are printed.

A retained nested-fan factor has actual outer ABC, first interior
point X, and Y inside ABX. Its tables select positive unsigned areas
S=ABC, T=ABX, and F,beta,gamma,d according to the strict sign of
CXY. The literal actual determinant identity is

    TF=dT+beta(S-T)+gamma F.

The reader reconstructs those six actual triangles and expands this
identity. Here S-T>0. With earlier lower bounds d_0,beta_0,gamma_0,

    TF >= (d_0-beta_0)T+beta_0 S+gamma_0 F.

An upper product envelope for TF therefore yields the printed
nonnegative affine factor. This is the only extra scalar-area
source type.

Finally, the positive integer weighted affine sum is bounded above
by using a named earlier upper bound for each positive coefficient
and a named earlier lower bound for each negative coefficient.
The resulting complete rational upper sums are negative.

## 6. Complete terminal catalogue and verification

The twelve leaves are as follows. The AEG column is an additional
actual-sign split only in the +-+ word.

| Root | (AGO,AGP,DGP) | AEG | Stages | Literal terminal |
| --- | --- | --- | --- | --- |
| CA | --- | either | 4 | contradictory scalar bounds |
| CA | --+ | either | 3 | 211 positive cubic products |
| CA | +-- | either | 1 | empty coordinate interval |
| CA | +-+ | negative | 17 | 201 positive cubic products |
| CA | +-+ | positive | 1 | 14 positive scalar-area terms |
| CA | ++- | either | 8 | 277 positive cubic products |
| CB | --- | either | 3 | contradictory scalar bounds |
| CB | --+ | either | 8 | 201 positive cubic products |
| CB | +-- | either | 1 | empty coordinate interval |
| CB | +-+ | negative | 17 | 232 positive cubic products |
| CB | +-+ | positive | 1 | 21 positive scalar-area terms |
| CB | ++- | either | 8 | 222 positive cubic products |

Their exact negative coefficient sums and contradictory area versions
are part of the linked literal packets. The cover in Section 1 is
exhaustive, and every leaf is contradictory. This proves the stated
E-only exclusion.

The author source-complete command is

~~~text
python3 n10/hand/N7_CENTRAL_COMPLETION_E_ONLY_check.py
~~~

It reads only the literal Markdown and the existing hand arithmetic
readers. It imports no discovery module or optimizer. Its complete
replay checks twelve leaves and 72 stages, with 3,040 sign deductions,
3,080 initial area bounds, 6,958 initial endpoint values, 12,598
immutable scalar updates, 2,373 geometrically validated relations,
1,429 reconstructed physical factors, 2,394 coordinate updates,
23,233 complete coordinate endpoint lines, 1,344 positive cubic
products, and 35 positive scalar-area terms.

The independent reader
[audit_n7_e_only_completion.py](audit_n7_e_only_completion.py) uses its
own actual ten-point polynomial arithmetic, geometry reconstruction,
scalar isolation and endpoint interpolation. It agrees exactly on every
count above, validates each capacity ray with its actual determinant
identity and inward tests, and checks each numeric source against a
completed earlier stage. Separate mathematical review accepts the fixed
contact caps, normalized barycentric rules, natural support caps, nested-fan
identity and complete five-word-plus-AEG cover.

The independent negative probes are in
[audit_n7_e_only_completion_mutations.py](audit_n7_e_only_completion_mutations.py).
All 22 corruptions are rejected, including unproved coordinate endpoints,
changed actual signs and physical coefficients, missing or future scalar
and capacity premises, altered ray witnesses, omitted or duplicate endpoint
lines, zero positive multipliers, wrong product envelopes and nested
triangles, incomplete affine ceilings, changed weighted sums, and missing
or duplicate sign leaves.

~~~text
python3 n10/hand/audit_n7_e_only_completion.py
python3 n10/hand/audit_n7_e_only_completion_mutations.py
~~~

This excludes the entire E-only word in both roots. The C, CE, EF and CEF
upper-pair words and both central parent roots remain open.
