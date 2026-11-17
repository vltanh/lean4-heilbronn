# Both normalized ITTT single-ear top words are impossible

Use the ten actual points, six-contact order, closed square-side
conventions, and minimum unsigned doubled triangle area
\(s=93/1000\) of [N6_TOP_TRIPLE_SETUP.md](N6_TOP_TRIPLE_SETUP.md).
Assume \(e\le f\), put the actual point \(P\) strictly inside
\(HCEF\), and put \(Q,R,S\) in the top cap, strictly on the
corner side of \(EF\). Label their rays so \(EQR,EQS,ERS>0\).

**Theorem.** Neither top word `-++-` nor `++-+` is possible.

Here the word records the actual signs of \(FQR,FQS,FRS,QRS\).
The complete literal arguments are printed in the two indices
[for `-++-`](N6_BTTT_REMAINING_ITTT_EAR_MPPM_TABLES/INDEX.md)
and [for `++-+`](N6_BTTT_REMAINING_ITTT_EAR_PPMP_TABLES/INDEX.md),
their geometric contexts, and the stage files linked there.
Both direct author checks and exact round trips through these
Markdown tables pass. Independent geometric and exact-arithmetic review
also passes. This theorem
leaves the other ITTT top words to their separate arguments.

Put \(\alpha=1037/10000\), \(K=149/20\), \(J=4427/500\),
and \(G=1457/250\). Every actual triangle with zero, one, two,
or three other actual points inside has area at least
\(s,3s,Ks,Js\), respectively. The distributed-three mesh,
quadrilateral occupancy floors, and endpoint-support results are
those of the setup.

For `-++-` the actual top hull is \(EQSF\), and \(R\) is inside
\(EQS\). For `++-+` the actual top hull is \(EQRF\), and \(S\)
is inside \(FQR\). The opposite actual contact ears have costs at
least \(3s,s\). The published endpoint-support Cauchy bound
therefore gives top-container cost
\((1+\sqrt3)^2s>Ks\). Hence

\[
 (1-e)(1-f)\ge Ks.
\]

The accepted ITTT setup
[N6_ITTT_TOP_TRIANGLE_WORD.md](N6_ITTT_TOP_TRIANGLE_WORD.md)
uses precisely this weaker cost for its coarse boxes; it applies
here as well. The actual lower-contact clearances imply
\(a,b,e,f>\alpha\), and with
\(t=4069/17926\), \(\delta=s/(1-\alpha)\), give

\[
 a,b,e,f\le t,\qquad a,e\le21/125,\qquad hc\ge4s.
\]

The actual triangles \(ABC,ABE,ACE,BCE,ABF,ABH,AFH,BFH\)
are empty, since their respective affine area ceilings
\(a,e,e,e,f,b,f,f\) are at most \(t<3s\). The same coarse-box
formulas give \(c\ge\max(4s,\alpha+s/a_{\max})\),
\(h\ge\max(4s,\alpha+s/b_{\max})\), all free coordinates
at least \(\delta\), and \(p,q\le1-s\). A top point with
\(n=0,1,2\) other top occupants in its actual \(EFT\) triangle
has both coordinates at least
\(\alpha+c_ns/(1-\alpha)\), where \(c_n=1,3,K\).
Such an occupant has both coordinates at most \(1-\delta\).
These are the entire initial-box formulas, intersected in later
stages with completed boxes from the same case or an ancestor.

All geometric rows are actual five-label sign identities, the eight
empty-triangle rules, affinity over a proved containing hull, or
the published distributed mesh. There is no assumed \(HPQ\),
\(CPQ\), or lower-central order for the upper point \(P\).
Every actual sign used is fixed by the ITTT placement, individually
proved in its context, supplied by its case split, or forced by a
previously proved capacity bound. The two indices print all 22
capacity witnesses and immutable upper sources.

The coordinate factors are signed actual triangle areas minus
witnessed occupancy costs, contact-order differences, the strong
top cost, completed earlier bounds on the same actual area, and
the two exact upper-point factors

\[
 N_x(1-p)-s(2-c-f)\ge0,\qquad
 N_y(1-q)-s(2-e-h)\ge0. \tag{1}
\]

Their proof is given in
[N6_BTTT_REMAINING_ITTT_ROUTE.md](N6_BTTT_REMAINING_ITTT_ROUTE.md):

\[
\begin{aligned}
 (1-f)[CEP]+(1-c)[EFP]&=[CEF](1-p),\\
 (1-e)(-[HFP])+(1-h)[EFP]&=[HEF](1-q).
\end{aligned}
\]

The inward ITTT tests give all three positive actual areas on the
left at least \(s\). In every use of (1), \(N_x\) or \(N_y\)
is exactly the smaller of one and the multiaffine maximum of
\([CEF]\) or \([HEF]\) on that stage's already proved initial
box. Its value is printed in the factor premise. These maxima are
fixed before the coordinate refinement, and the reader reconstructs
them from the initial endpoints. No final endpoint justifies its
own source ceiling. There are twenty retained occurrences of the
first factor in (1), and fourteen of the second.

Every coordinate update lists all distinct endpoint lines and uses
the exact multiaffine interval rule, rounded outwards to a multiple
of \(10^{-6}\). Initial scalar bounds are actual occupancy floors,
exact box maxima capped by one, fixed earlier bounds, or affine
maxima of proved containing-anchor caps. Ordinary scalar updates
use actual fan sums, signed four-point identities, unsigned
five-label identities, occupied-quadrilateral floors,
endpoint-support inequalities, and the signed-area barycentric
rule of
[N6_BTTT_REMAINING_TRIANGULAR.md](N6_BTTT_REMAINING_TRIANGULAR.md).
Each exact rational result and its outward rounding is printed.
These arguments use no affine-combination bound certificates.

The positive constant in an ordinary one-occupant endpoint-support
row may use \(G\), since \(G<3+2\sqrt2\). Every support row
prints the actual convex hull, occupants, allocation, and rate.
Every barycentric row prints its actual containing triangle,
inner point, ordered opposite fans, oriented line, and signed
vertex values, including repeated-label zeros where applicable.
The four-point rows are the actual signed determinant identity
\([ABC]+[ACD]-[ABD]-[BCD]=0\), converted to unsigned areas
using their proved signs.

Every bound has an immutable `stage:row` identifier. Ordinary updates
cite earlier rows of their own stage. Inherited scalar and physical
sources name a completed preceding stage of the same actual-sign
case or an ancestor; sibling branches never supply a source.
The named parent box has the same source discipline. Each branch
retains every inherited sign and capacity premise required by its
sources.

For `-++-` the literal tree has ten binary actual-sign splits and
eleven leaves. For `++-+` it has nine such splits and ten leaves.
Each split determinant is nonzero because it is an actual triple
with area at least \(s\). Its two signs therefore exhaust the case.
There are no coordinate cuts. The following table lists every leaf
and its exact positive gap. An interval gap is minus the largest
endpoint value of the printed terminal lines; an area gap is the
proved lower bound minus the proved upper bound of the same actual
unsigned area. Stage numbers belong to their own word's index.

| Top word | Additional split-sign assumptions | Terminal stage | Contradiction | Exact positive gap |
| --- | --- | --- | --- | --- |
| `-++-` | CFP+ EHP+ HQR+ | 18 | interval | 20703999/5000000000 |
| `-++-` | CFP+ EHP+ HQR- | 21 | area | 14021/250000 |
| `-++-` | CFP+ EHP- APS+ BPS+ APQ+ | 37 | interval | 350826837/31250000000 |
| `-++-` | CFP+ EHP- APS+ BPS+ APQ- AQR+ | 40 | interval | 4772601039/500000000000 |
| `-++-` | CFP+ EHP- APS+ BPS+ APQ- AQR- | 42 | interval | 17427719237/500000000000 |
| `-++-` | CFP+ EHP- APS+ BPS- | 43 | interval | 160766097/40000000000 |
| `-++-` | CFP+ EHP- APS- | 47 | interval | 3264433909/250000000000 |
| `-++-` | CFP- EHP+ | 57 | interval | 13002368729/500000000000 |
| `-++-` | CFP- EHP- APS+ APQ+ | 65 | interval | 18960820719/500000000000 |
| `-++-` | CFP- EHP- APS+ APQ- | 67 | interval | 11927740011/1000000000000 |
| `-++-` | CFP- EHP- APS- | 68 | interval | 19256866577/100000000000 |
| `++-+` | CFP+ EHP+ APQ+ | 33 | area | 7021/250000 |
| `++-+` | CFP+ EHP+ APQ- | 36 | area | 10293/1000000 |
| `++-+` | CFP+ EHP- APQ+ | 44 | interval | 11199869263/62500000000 |
| `++-+` | CFP+ EHP- APQ- HPQ+ | 48 | area | 2009/1000000 |
| `++-+` | CFP+ EHP- APQ- HPQ- | 50 | interval | 9749190159/500000000000 |
| `++-+` | CFP- EHP+ APQ+ | 63 | interval | 1345732809/1000000000000 |
| `++-+` | CFP- EHP+ APQ- | 64 | interval | 184409769/15625000000 |
| `++-+` | CFP- EHP- APQ+ | 76 | interval | 2876574551/200000000000 |
| `++-+` | CFP- EHP- APQ- APR+ | 87 | interval | 19544333/31250000000 |
| `++-+` | CFP- EHP- APQ- APR- | 88 | interval | 66791383509/1000000000000 |

All 21 leaves are impossible, proving both normalized words.
The combined literal argument has 158 contexts with 7,433 geometric
deductions, 158 stages, 12,127 coordinate updates, 2,039 physical
factor occurrences, 2,914 initial scalar versions, 7,021 scalar
updates, 1,372 scalar relations, and 9,935 immutable bound versions.
The relations comprise 32 fans, 335 signed four-point identities,
576 five-label identities, 40 quadrilateral floors, 55 support
inequalities, and 334 signed-area barycentric relations.
There are seventeen interval contradictions and four incompatible
area-bound pairs.

The standard-library reader
[N6_BTTT_REMAINING_ITTT_EARS_REPLAY.js](N6_BTTT_REMAINING_ITTT_EARS_REPLAY.js)
imports no discovery engine. It reconstructs all literal actual
geometry, initial boxes, factor polynomials, fixed source ceilings,
endpoint lines, exact scalar substitutions, source scopes, binary
coverage, and terminal comparisons for both words. Its optional
command is

~~~text
node n10/hand/N6_BTTT_REMAINING_ITTT_EARS_REPLAY.js
~~~

The author direct and printed-table checks pass. The separately written
Fraction reader [audit_n6_bttt_remaining.py](audit_n6_bttt_remaining.py),
with `--ittt-ear-mppm` and `--ittt-ear-ppmp`, reconstructs the actual
geometry, all fixed-source ceilings, exact coordinate and scalar arithmetic,
immutable ancestry, and both complete case trees. The independent
[audit_n6_ittt_words_mutations.py](audit_n6_ittt_words_mutations.py)
rejects nine corruptions per word: changed ceilings, illegal lower-central
premises, changed actual floors and initial endpoints, future scalar and
parent-box sources, reversed barycentric signs, omitted leaves and altered
given signs. Separate mathematical review accepts the actual hulls,
empty anchors, upper-point placement and each new factor. The normalized
ITTT word `--+-` has already received independent acceptance;
this new theorem concerns precisely its two single-ear siblings.
