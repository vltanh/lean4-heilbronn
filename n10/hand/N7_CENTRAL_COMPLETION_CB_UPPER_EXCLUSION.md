# N7 central CB: the CE and EF upper-pair words are impossible

Use the actual ten points

    A=(0,a), B=(b,0), C=(c,0), D=(1,d), E=(1,e),
    F=(f,1), H=(0,h), G=(g,z), O=(x,y), P=(u,v)

of [N7_ONE_LOWER_SETUP.md](N7_ONE_LOWER_SETUP.md). All lie in the
closed unit square. ABCDEFH is the actual strictly convex heptagon,
all distinct actual triangles have unsigned doubled area at least
s=93/1000, and the actual contact orders are

    0<a<h<1, 0<b<c<1, 0<d<e<1,
    a<=e<=h, b<=f<=c.

The lower point G is strictly inside HABC with ACG,HBG>0;
O,P are strictly inside HCEF. Assume the weak central root
CB: bh>=ac and its proved setup box. Normalize HOP<0. The common
setup's actual HEF-capacity-one ray argument gives EHP>0. The
[central pair cut](N7_CENTRAL_PAIR_CUT.md) gives DGO<0, and the
[central area-orientation lemma](N7_CENTRAL_AREA_ORIENTATION.md)
excludes AGT>0,DGT>0 for either T=O or T=P.

**Theorem.** Neither of the following two actual upper-pair words
is possible in CB:

| Word | COP | EOP | FOP |
| --- | --- | --- | --- |
| CE | + | + | - |
| EF | - | + | + |

The proof is the complete finite rational argument printed in
[N7_CENTRAL_COMPLETION_CB_UPPER_TABLES/INDEX.md](N7_CENTRAL_COMPLETION_CB_UPPER_TABLES/INDEX.md).
It has 82 actual sign splits and 84 terminal leaves, covering both
words. The terminal kinds are 52 positive-polynomial contradictions,
24 scalar contradictions, seven coordinate-box contradictions and
one fixed BCE-capacity contradiction. This theorem leaves the C
word and the CA central root to their separate arguments.

## 1. Actual premises and local source lemmas

The initial CB box, actual determinant formulas, contact orders,
endpoint-five bound, ordered endpoint inequality, scalar area costs
and finite geometric rules are those of N7_ONE_LOWER_SETUP.md.
In particular

    hc>=(2911/500)s,
    hb(c-b)>=s(c+b),
    e(1-b)>=4s,
    ACD<=27/40.

The tables retain the exact scalar source and every coordinate-box
ancestry required by each later row. No feasible relaxed point is
used as an actual configuration.

The following additional sources have their own actual-point proofs:

* [N7_CENTRAL_COMPLETION.md](N7_CENTRAL_COMPLETION.md) gives the
  empty AFH,BFH,ABF tests and contact consequences when CEF contains
  O and P. Its stronger AEF ceiling and e>57/100 are used only with
  that same explicit CEF occupancy.
* [N7_CENTRAL_COMPLETION_EFG_CAP.md](N7_CENTRAL_COMPLETION_EFG_CAP.md)
  supplies the occupied-CEF EFG capacity and its actual supporting
  contact comparisons.
* [N7_CENTRAL_COMPLETION_CEF2_TRANSFER.md](N7_CENTRAL_COMPLETION_CEF2_TRANSFER.md)
  supplies the AE transfer under CEF2,AEG<0,COP<0,EOP>0, with no
  FOP premise. This broader implication is checked with those
  actual signs whenever retained.
* [N7_CENTRAL_COMPLETION_UPPER_FAN_CAP.md](N7_CENTRAL_COMPLETION_UPPER_FAN_CAP.md)
  supplies f>617/1000 and AEF,BEF capacity one when actual HCF
  contains both O and P.
* [N7_CENTRAL_COMPLETION_HCE_CAP.md](N7_CENTRAL_COMPLETION_HCE_CAP.md)
  supplies h>=13857/20000 and AEF capacity two when actual HCE
  contains both O and P.
* [N7_CENTRAL_COMPLETION_GLOBAL_AEF_CAP.md](N7_CENTRAL_COMPLETION_GLOBAL_AEF_CAP.md)
  gives the unconditional CB ceiling AEF<=164637/200000.
* [N7_CENTRAL_COMPLETION_BOX_CAPS.md](N7_CENTRAL_COMPLETION_BOX_CAPS.md)
  gives the unconditional ABF ceiling 143425697/181400000 and
  AFH ceiling 387637/500000, both below the three-occupant cost.
* [N7_CENTRAL_COMPLETION_QUAD_CAP.md](N7_CENTRAL_COMPLETION_QUAD_CAP.md)
  proves actual ABEF has capacity two and gives its four-edge
  sign implication. Every retained use must list both occupants
  and the three positive tests at the third point.

HEF has capacity one in the common setup. Its emptiness requires
both actual O,P in CEF and is never inferred merely from the
upper-pair orientation. The fixed BCE and DEF capacities are also
those of the common setup.

## 2. What every printed stage proves

A stage records its actual sign assumptions, all geometric
consequences used, an initial box, immutable scalar bounds,
relations, their updates, retained physical factors, and any
coordinate updates. Its assumption list is a prefix of the
actual splits on every leaf that uses it. The common setup signs
and the stated word are supplied separately and explicitly.

Scalar relations use the actual fan identities, signed Pluecker
and six-label identities, actual quadrilateral occupancy and
support costs, chord spread bounds, and normalized barycentric
relations of the setup and the accepted CEF tables. The exact
reader expands each required polynomial identity and independently
checks its stated occupancy, orientation or box premise.

For a barycentric relation, let S0 be the positive actual outer
triangle area, let a_i be its three fan areas at its actual
interior point, and let lambda_i=a_i/S0. An outer bound S0<=N
and fan floors a_i>=l_i imply

    N lambda_i>=a_i>=l_i,   sum_i N lambda_i=N.

Thus the residual budget is N-sum_i l_i>=0. Applying the printed
line test at the three outer vertices gives precisely the stated
upper or lower barycentric relation. A printed `source_value`
keeps equality to the immutable referenced outer bound, followed
by the explicit rational weakening source_value<=N. The identity
then uses the displayed N. No reference is silently assigned a
second value.

The natural contact upper bounds and their nonnegative remainders
are the complete 27-contact catalogue of
[N7_CENTRAL_COMPLETION_CEF_EXCLUSION.md](N7_CENTRAL_COMPLETION_CEF_EXCLUSION.md),
Section 4. A natural support factor records its scalar support
relation, paired contact bound and, for a quadratic-area envelope,
all four immutable area-floor references. The reader reconstructs
each factor and its exact secant or tangent relaxation from those
sources and the current box.

The unrelaxed ordered CB factor

    hb(c-b)-s(c+b)>=0

may occur directly in a polynomial terminal. Its literal cubic
is the accepted actual endpoint inequality, without a sign
assumption on an unproved expression.

Each coordinate update is verified by all printed endpoints of
the multiaffine remainder at that stage's box. Every inherited
box is checked in order; no endpoint update can use a later
bound or a future actual sign.

## 3. Shared stages and the complete split cover

The literal table index contains two roots, the 82 internal split
rows and the 84 terminal rows. Each split lists one actual
triangle and its positive and negative children. Its doubled
area cannot vanish because it is a triangle of three distinct
actual points. These two children therefore cover every actual
configuration at that node.

The shared stage files print each distinct stage once. A terminal
lists its full ordered stage-ID sequence. Shared copies retain
the union of all scalar and physical premises used by their
leaves; all coordinate updates within each retained box remain
printed. Sharing changes storage only. The reader verifies each
stage with the same preceding stage IDs on every occurrence,
checks that its assumptions belong to each leaf, and permits a
numeric geometric capacity only from a strictly earlier stage.
All stage records must occur on at least one displayed leaf.

The exact reader traverses both roots, requires two children for
every internal node, reconstructs the complete signed path to
each leaf, and requires that path to equal the leaf's assumptions.
It rejects unused, repeated or missing split and leaf rows. Hence
no residual sign pattern is omitted.

## 4. Terminal contradictions

A scalar terminal prints immutable lower and upper bounds for
the same actual unsigned triangle area, with lower>upper. A box
terminal prints a verified physical factor whose resulting
coordinate interval is empty. The fixed BCE terminal lists two
actual interior occupants of the accepted capacity-one BCE.

At a polynomial terminal, every physical factor and every
unnormalized endpoint atom q_i-L_i or U_i-q_i is nonnegative.
The terminal prints positive integer weights and products of
these factors. It also prints their complete polynomial sum.
After substituting q_i=L_i+(U_i-L_i)t_i, with 0<=t_i<=1, its
upper bound is

    constant coefficient + sum of positive nonconstant coefficients.

Every monomial in the normalized t_i lies in [0,1]. The reader
reconstructs the polynomial sum, checks its complete coefficient
table, and verifies that the displayed rational upper bound is
strictly negative. This contradicts the nonnegative sum of the
positive-weight products. Optimizer output is not a premise of
any printed terminal.

All 84 leaves end in one of these contradictions. Complete finite
split coverage proves the theorem.

## 5. Verification status

The source-complete exact reader
[N7_CENTRAL_COMPLETION_CB_UPPER_check.py](N7_CENTRAL_COMPLETION_CB_UPPER_check.py)
reads only the printed Markdown tables and established hand
arithmetic modules. It imports no discovery engine, solver or
saved discovery packet. The author replay passes all 84 leaves,
82 splits and 484 distinct shared stages. The complete leaf lists
contain 1672 stage occurrences before sharing. The checked unique
stage calculations comprise 16263 sign deductions, 11718 initial
bounds, 27450 initial endpoint values, 7438 scalar relations,
42010 immutable scalar updates, 6408 physical factors, and
6343 coordinate updates with 60136 endpoint lines. The terminal
sums contain 12099 positive-weight products. The one explicit
barycentric weakening and the one fixed BCE-capacity terminal
both pass. Every literal source stage is read from the displayed Markdown files.

Independent actual-point/Fraction replay, source, storage and complete
coverage review passes all 84 leaves and 484 unique stages. The independent
reader expands every one of the 1672 ancestor occurrences, checking each
complete ordered source chain. Twenty-four deliberately corrupted source,
weakening, coordinate, polynomial and coverage records are rejected.
See [audit_n7_upper_shared.py](audit_n7_upper_shared.py) and
[the mutation suite](audit_n7_upper_shared_mutations.py).
