# The two remaining normalized triangular ITTT words are impossible

Use the ten actual points, six-contact order, square-side conventions,
and minimum unsigned doubled triangle area \(s=93/1000\) of
[N6_TOP_TRIPLE_SETUP.md](N6_TOP_TRIPLE_SETUP.md). Assume \(e\le f\).
The actual point \(P\) is strictly inside \(HCEF\); the three actual
points \(Q,R,S\) are in the closed top cap and strictly on the
corner side of \(EF\), with \(EQR,EQS,ERS>0\).

**Theorem.** Neither top word `----` nor `---+` is possible.

The word records the actual signs of \(FQR,FQS,FRS,QRS\).
Both words have actual top hull \(EQF\), with \(R,S\) inside.
The literal arguments are printed in the indices
[for `----`](N6_BTTT_REMAINING_ITTT_TRI_MMMM_TABLES/INDEX.md)
and [for `---+`](N6_BTTT_REMAINING_ITTT_TRI_MMMP_TABLES/INDEX.md),
their geometric contexts, and the stage files linked there.
The author direct checks and exact Markdown round trips pass;
independent geometric and exact-arithmetic review also passes.

Put \(\alpha=1037/10000\), \(K=149/20\), \(J=4427/500\),
\(G=1457/250\), and \(\delta=s/(1-\alpha)\). The actual
occupancy of \(EQF\) gives its area at least \(Ks\), so the top
container satisfies \((1-e)(1-f)\ge Ks\). This is the same cost
as in the independently accepted normalized ITTT word `--+-`,
[N6_ITTT_TOP_TRIANGLE_WORD.md](N6_ITTT_TOP_TRIANGLE_WORD.md).
Its full ITTT coarse-box argument therefore applies to both present
words. In particular, with \(t=4069/17926\),

\[
 a,b,e,f\le t,\quad a,e\le21/125,\quad hc\ge4s,
\]

and \(ABC,ABE,ACE,BCE,ABF,ABH,AFH,BFH\) are empty actual
triangles. The anchor clearances give
\(c\ge\max(4s,\alpha+s/a_{\max})\),
\(h\ge\max(4s,\alpha+s/b_{\max})\). All free coordinates
are at least \(\delta\), and \(p,q\le1-s\).
The displayed occupancy-dependent top-coordinate bounds and the
bounds \(1-\delta\) for actual top occupants are exactly those
of the accepted ITTT setup. Each later coordinate box intersects
its own coarse box with its named completed parent box.

Every geometric context prints the actual initial and branch signs,
all five-label sign deductions, empty-triangle deductions, convex-hull
affinity deductions, and distributed-three mesh deductions. The
ITTT placement gives \(HCP>0\), the inward tests of \(HCEF\),
and the fixed top-cross signs \(EPT<0,FPT>0\) for every top point
\(T\). No lower-point \(HP\) or \(CP\) order is assumed.
All 31 capacity signs are available only after their own printed
upper-area sources and two inward tests have been proved.

Every retained physical factor is a signed actual triangle area
minus its witnessed occupancy cost, a contact-order difference,
a completed earlier actual-area bound, a weighted top-fan factor,
or one of

\[
 N_x(1-p)-s(2-c-f)\ge0,\qquad
 N_y(1-q)-s(2-e-h)\ge0. \tag{1}
\]

The two weighted top-fan occurrences are the explicit nonnegative
factors of
[N6_TOP_WEIGHTED_BARYCENTRICS.md](N6_TOP_WEIGHTED_BARYCENTRICS.md):
actual fan lower costs divided by the independently proved common
top-area ceiling give positive barycentric lower weights. Every
printed witness names the outer and inner top points, its three
actual fan costs, the common ceiling parameter, and the selected
coordinate axis.

For (1), use the exact actual identities

\[
\begin{aligned}
 (1-f)[CEP]+(1-c)[EFP]&=[CEF](1-p),\\
 (1-e)(-[HFP])+(1-h)[EFP]&=[HEF](1-q).
\end{aligned}
\]

The three positive actual areas on the left are at least \(s\).
The proof and fixed-source discipline are in
[N6_BTTT_REMAINING_ITTT_ROUTE.md](N6_BTTT_REMAINING_ITTT_ROUTE.md).
In each occurrence, the printed \(N_x\) or \(N_y\) is precisely
the smaller of one and the exact multiaffine maximum of \([CEF]\)
or \([HEF]\) over the stage's proved initial box. These source
ceilings are fixed before any coordinate update. There are three
retained occurrences of the first factor and five of the second.
Every coordinate update lists all distinct endpoint lines and
applies the multiaffine interval rule with outward rounding to
multiples of \(10^{-6}\).

The initial scalar bounds are actual occupancy floors, exact box
maxima capped by one, fixed earlier bounds, or affine maxima for a
proved containing-anchor cap. The ordinary scalar updates use actual
fan sums, signed four-point identities, unsigned five-label
identities, occupied-quadrilateral floors, endpoint-support
inequalities, and signed-area barycentric intervals. Every actual
witness, ordered fan, sign, immutable source row, exact substitution,
and outward rounding is explicit in its table. The one-occupant
ordinary support rate may be \(G<3+2\sqrt2\). All these rules
are proved in the accepted setup and
[N6_BTTT_REMAINING_TRIANGULAR.md](N6_BTTT_REMAINING_TRIANGULAR.md).
There are no affine-combination bound certificates in these two
arguments.

Each ordinary scalar reference names an earlier immutable row of
the same stage. A later initial bound or physical factor may inherit
a completed preceding stage only from its own actual-sign case or
an ancestor. The parent coordinate box obeys the same restriction.
A sibling branch never supplies an area or coordinate source, and
all source sign assumptions persist into every descendant use.

The `----` tree has five binary actual-sign splits and six leaves;
the `---+` tree has seven splits and eight leaves. Every split
uses an actual nonzero determinant, so its two signs exhaust the
case. Capacity signs introduce no cases. There are no coordinate
cuts. All leaves appear in the following table; interval and area
gaps have the meanings used in the accepted single-ear proof
[N6_BTTT_REMAINING_ITTT_EARS.md](N6_BTTT_REMAINING_ITTT_EARS.md).
Stage numbers belong to the index for their own word.

| Top word | Additional split-sign assumptions | Terminal stage | Contradiction | Exact positive gap or geometric exclusion |
| --- | --- | --- | --- | --- |
| `----` | EHP+ | 6 | area | 36051/1000000 |
| `----` | EHP- APQ+ AQR+ | 25 | interval | 71250292239/1000000000000 |
| `----` | EHP- APQ+ AQR- AQS+ | 39 | interval | 1237914493/100000000000 |
| `----` | EHP- APQ+ AQR- AQS- | 40 | interval | 62213121383/500000000000 |
| `----` | EHP- APQ- AQR+ | 43 | geometry | No surviving mesh labeling |
| `----` | EHP- APQ- AQR- | 47 | interval | 226159503/50000000000 |
| `---+` | CFP+ EHP+ | 10 | area | 36051/1000000 |
| `---+` | CFP+ EHP- APQ+ | 20 | interval | 10911050457/200000000000 |
| `---+` | CFP+ EHP- APQ- AQR+ | 25 | interval | 7348194337/25000000000 |
| `---+` | CFP+ EHP- APQ- AQR- | 26 | interval | 191829539/31250000000 |
| `---+` | CFP- EHP+ APS+ | 51 | area | 201/200000 |
| `---+` | CFP- EHP+ APS- | 52 | interval | 28429924379/500000000000 |
| `---+` | CFP- EHP- APS+ | 65 | interval | 27435440949/500000000000 |
| `---+` | CFP- EHP- APS- | 68 | interval | 96455025711/1000000000000 |

The sole geometric terminal is stage 43 of `----`. Its actual
triangle \(FAQ\) contains the three actual points \(P,R,S\),
but every one of the six published distributed-mesh labelings
conflicts with a printed actual sign. The index lists the complete
context and the outer triangle and occupants. Thus no allowable
three-interior-point mesh remains. Each other leaf has the printed
strict positive arithmetic gap. All fourteen leaves are impossible,
proving the theorem.

The combined literal argument has 117 contexts with 4,459 geometric
deductions, 117 stages, 8,656 coordinate updates, 1,544 physical
factor occurrences, 3,130 initial scalar versions, 9,155 scalar
updates, 1,770 scalar relations, and 12,285 immutable bound versions.
The relations comprise 35 fans, 513 signed four-point identities,
688 five-label identities, 92 quadrilateral floors, 28 support
inequalities, and 414 signed-area barycentric relations.
There are ten interval contradictions, three incompatible area-bound
pairs, and one geometric mesh contradiction.

The standard-library reader
[N6_BTTT_REMAINING_ITTT_TRIANGULAR_REPLAY.js](N6_BTTT_REMAINING_ITTT_TRIANGULAR_REPLAY.js)
imports no discovery implementation. It reconstructs all literal
actual geometry, source ceilings, physical polynomials, coordinate
endpoint lines, exact scalar updates, inherited bounds, capacity
signs, binary coverage, and terminal comparisons. Its optional
command is

~~~text
node n10/hand/N6_BTTT_REMAINING_ITTT_TRIANGULAR_REPLAY.js
~~~

Both author direct and printed-table checks pass. The independently
written Fraction reader
[audit_n6_bttt_remaining.py](audit_n6_bttt_remaining.py), with
`--ittt-tri-mmmm` and `--ittt-tri-mmmp`, reconstructs all actual
geometry, exact coordinate and scalar arithmetic, immutable source scopes,
capacity signs, terminals and complete binary coverage. The independent
[audit_n6_ittt_words_mutations.py](audit_n6_ittt_words_mutations.py)
rejects nine corruptions for each word. Separate mathematical review accepts
the actual top hull, coarse boxes, weighted and upper-point factors, and
the actual FAQ mesh exclusion. Together with the already accepted normalized
`--+-` theorem, the present children exclude the whole normalized triangular
ITTT group.
