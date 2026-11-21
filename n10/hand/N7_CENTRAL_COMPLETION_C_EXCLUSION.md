# N7 central: complete C upper-pair-word exclusion

Use the actual normalization of
[N7_ONE_LOWER_SETUP.md](N7_ONE_LOWER_SETUP.md):

    A=(0,a), B=(b,0), C=(c,0), D=(1,d), E=(1,e),
    F=(f,1), H=(0,h), G=(g,z), O=(x,y), P=(u,v).

All ten actual points lie in the closed unit square. ABCDEFH is the
actual strictly convex heptagon; every distinct actual triangle has
unsigned doubled area at least s=93/1000. The contact orders are

    0<a<h<1, 0<b<c<1, 0<d<e<1,
    a<=e<=h, b<=f<=c.

The point G is strictly inside HABC with ACG,HBG>0, and O,P are
strictly inside HCEF. Use the proved setup boxes in the weak roots
CA: ac>=bh and CB: ac<=bh. Their equality face is covered by both.
Normalize HOP<0. The common HEF-capacity-one ray gives EHP>0;
[N7_CENTRAL_PAIR_CUT.md](N7_CENTRAL_PAIR_CUT.md) gives DGO<0.
The actual central area-orientation theorem excludes AGT>0,DGT>0
for either T=O or T=P.

**Theorem.** The C word

    COP>0, EOP<0, FOP<0

is impossible in both central roots. The complete finite argument is
printed in
[N7_CENTRAL_COMPLETION_C_TABLES/INDEX.md](N7_CENTRAL_COMPLETION_C_TABLES/INDEX.md).
It contains twelve coarse roots, thirty-nine further actual sign
splits and fifty-one terminal leaves: twenty-seven polynomial,
twelve scalar, three coordinate-box, eight distributed-order and
one fixed BCE-capacity contradiction.

The actual line OP crosses HC and CE of the convex actual HCEF.
Its entire segment in HCEF lies inside actual HCE. Thus O,P are
strictly inside HCE, with HCE>=T=13857/20000 and hence h>=T.
The finite proof also records the precise three inward tests before
using any conditional HCE source.

## 1. Complete coarse and subsequent sign cover

The central area-orientation theorem
[N7_CENTRAL_AREA_ORIENTATION.md](N7_CENTRAL_AREA_ORIENTATION.md)
excludes the two sign words AGP>0,DGP>0, independently of AGO.
The other six words in (AGO,AGP,DGP) are

    ---, --+, -+-, +--, +-+, ++-.

All signs are strict because every tested triangle consists of three
distinct actual points. These six words therefore cover every actual
configuration left by the accepted orientation theorem. The table
index lists one root for each word in each cell CA,CB.

Every later split lists one canonical actual triangle and exactly two
children, positive first and negative second. Its actual determinant
cannot vanish. The reader traverses all twelve roots, appends the
corresponding signed triangle at each split, and requires each
terminal's assumptions to equal the resulting complete path. It
rejects omitted, repeated or unused roots, splits and leaves. The
thirty-nine internal rows and fifty-one terminal rows are therefore
an exhaustive finite cover, rather than a sample of sign patterns.

## 2. Actual scalar and physical sources

The initial boxes, clearances, actual fan and Pluecker identities,
quadrilateral occupancy and support bounds, chord-spread inequalities,
normalized barycentric relations and finite geometry rules are the
ones explicitly proved in N7_ONE_LOWER_SETUP.md and the accepted
[N7_CENTRAL_COMPLETION_CEF_EXCLUSION.md](N7_CENTRAL_COMPLETION_CEF_EXCLUSION.md).
The triangle costs are s,3s,T,(4427/500)s; the quadrilateral costs
are 449/1000,8s,93/91. Every named occupant is tested against the
actual inward edges before its cost is used.

The central endpoint sources retained without relaxation are

    CA: ca(h-a)-s(h+a)>=0,
    CB: hb(c-b)-s(c+b)>=0.

They are the proved actual ordered endpoint inequalities of
[ONE_LOWER_POINT.md](ONE_LOWER_POINT.md), Section 2. Both are
literal cubic physical factors, when a terminal needs them.
The fixed ACD ceiling 27/40 comes from
[N7_CENTRAL_ACD_CAP.md](N7_CENTRAL_ACD_CAP.md). The actual ADG,BDG,CDG
capacity-one bounds come from N7_CENTRAL_PAIR_CUT.md.

The additional conditional and uniform contact sources are the
accepted theorems of
[N7_CENTRAL_COMPLETION.md](N7_CENTRAL_COMPLETION.md),
[N7_CENTRAL_COMPLETION_EFG_CAP.md](N7_CENTRAL_COMPLETION_EFG_CAP.md),
[N7_CENTRAL_COMPLETION_CEF2_TRANSFER.md](N7_CENTRAL_COMPLETION_CEF2_TRANSFER.md),
[N7_CENTRAL_COMPLETION_UPPER_FAN_CAP.md](N7_CENTRAL_COMPLETION_UPPER_FAN_CAP.md),
[N7_CENTRAL_COMPLETION_HCE_CAP.md](N7_CENTRAL_COMPLETION_HCE_CAP.md),
[N7_CENTRAL_COMPLETION_GLOBAL_AEF_CAP.md](N7_CENTRAL_COMPLETION_GLOBAL_AEF_CAP.md),
and [N7_CENTRAL_COMPLETION_BOX_CAPS.md](N7_CENTRAL_COMPLETION_BOX_CAPS.md).
The literal reader checks each occupancy and sign premise before
using its corresponding source. In particular CEF2 emptiness and
stronger contact bounds require both actual O,P in CEF; HCF2 bounds
require both in HCF. HEF otherwise has only its common capacity one.
The broader AE transfer uses exactly CEF2,AEG<0,COP<0,EOP>0 and
has no additional FOP premise.

The uniform AEF ceilings are .814603 in CA and .823185 in CB.
The common ABF ceiling is 143425697/181400000. The AFH ceilings
are .760263 in CA and .775274 in CB. All these bounds have their
explicit actual-contact proofs and strict gaps below the
three-occupant cost in the cited notes. The actual ABEF
four-edge capacity rule has its explicit source in
[N7_CENTRAL_COMPLETION_QUAD_CAP.md](N7_CENTRAL_COMPLETION_QUAD_CAP.md).

Natural contact support factors use the complete twenty-seven-contact
upper-bound and nonnegative-remainder catalogue of the accepted
CEF exclusion, Section 4. Each retained factor prints its scalar
support source, paired actual contact cap and, when required, all
four immutable area-floor references. The reader expands the
actual determinant identity and the precise secant or tangent
relaxation used on the displayed box.

For every barycentric row, the positive outer area S0, fan areas
a_i, their lower bounds l_i and an outer upper bound N satisfy

    lambda_i=a_i/S0, sum_i lambda_i=1,
    N lambda_i>=a_i>=l_i, sum_i N lambda_i=N.

The residual N-sum_i l_i is nonnegative. The printed upper or
lower line relation follows by allocating this residual among
the three outer vertices with the appropriate test signs.
When `source_value` is present, the reader first checks equality
to the immutable referenced bound and the explicit weakening
source_value<=N. The displayed relation then uses this N; no
reference is silently reused for a different value.

## 3. Shared literal stages and immutable ancestry

Each distinct stage is printed once. Every terminal gives its full
ordered list of stage IDs. A shared stage retains the union of all
scalar bounds, relations and physical factors needed by its leaves;
every coordinate update in its retained box remains printed.
Its actual sign assumptions must be a prefix of each leaf path.
The reader verifies that a repeated stage has the same cell, word,
assumption prefix and complete preceding stage-ID sequence.
Every printed stage must occur on a leaf.

A scalar update has a new immutable identifier and may use only
bounds already proved at its own stage. A numerical geometric
capacity must name a strictly earlier stage. Every coordinate
refinement prints its physical factor, endpoints and updated
interval; the reader reconstructs all endpoint values and the
box ancestry in order. No future sign, bound or box is used.

A scalar terminal has lower>upper for the same actual unsigned
triangle. A coordinate terminal has a verified empty coordinate
interval. The one fixed BCE terminal prints two strict actual
occupants despite BCE capacity one.

At a polynomial terminal all endpoint atoms q_i-L_i,U_i-q_i and
all printed physical factors are nonnegative. The terminal gives
positive integer weights and their products, together with the
complete sum. After q_i=L_i+(U_i-L_i)t_i with 0<=t_i<=1, the
reader checks the exact coefficient table and the rational ceiling

    constant coefficient + sum of positive nonconstant coefficients.

This ceiling is strictly negative, contradicting nonnegativity of
the weighted products. Every polynomial terminal here has degree at most three.

## 4. Eight complete distributed-order contradictions

For three distinct actual points X,Y,Z strictly inside a positive
actual triangle ABC, the clustered-triple exclusion
[CLUSTERED_TRIANGLE.md](CLUSTERED_TRIANGLE.md) applies: every actual
triangle in the unit square has doubled area at most one, and the
present clearance threshold excludes a clustered triple. The
accepted distributed classification therefore permits one of the
six orders of X,Y,Z with all thirteen tests positive:

    ABZ, BCX, CAY, AZY, BXZ, CYX, ZXY,
    AZX, BXY, CYZ, AXY, BYZ, CZX.

Each geometry terminal prints the positive outer triangle, its three
actual occupants with all nine inward tests, and a literal six-row
table. Each row gives an order and one strictly negative required
test from this list. The reader checks all six orders and their
negative tests. The eight terminals thereby give forty-eight
explicit order obstructions, with no omitted permutation.

All fifty-one leaves now contradict actual placement, clearance or
a proved scalar bound. The complete coarse and binary coverage
proves the C-word theorem in both weak central roots.

## 5. Verification status

The source-complete exact reader
[N7_CENTRAL_COMPLETION_C_check.py](N7_CENTRAL_COMPLETION_C_check.py)
reads only the printed Markdown tables and established hand
arithmetic modules. It imports no discovery engine, optimizer
or saved discovery packet. The complete author replay passes all
51 leaves, 39 binary splits, 12 coarse G-word roots and 300 distinct
shared stages. The leaf sequences contain 990 stage occurrences
before sharing. The unique-stage checks comprise 10016 sign
deductions, 11143 initial bounds, 32620 initial endpoint values,
8145 scalar relations, 59491 immutable scalar updates, 4657
physical factors, and 5937 coordinate updates with 54304 endpoint
lines. The terminal sums contain 5751 positive-weight products.
All forty-eight literal distributed-order obstructions and the
one fixed BCE-capacity terminal pass. Every literal source stage is read
from the displayed Markdown files.

Independent actual-point/Fraction replay, source, storage and complete
coverage review passes all twelve roots, 39 splits, 51 leaves and 300
unique stages, expanding all 990 ancestor occurrences. All 48 distributed
order obstructions and all four pure geometric leaves pass. Twenty-eight
corruptions are rejected, including missing mesh orders or occupants,
future capacity sources and missing coarse roots.
See [audit_n7_c_shared.py](audit_n7_c_shared.py) and
[the mutation suite](audit_n7_upper_shared_mutations.py).
