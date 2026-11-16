# The positive AFP half of the normalized central BTTT top word is impossible

Use the ten actual points, contact order, square-side conventions,
and minimum unsigned doubled area \(s=93/1000\) of
[N6_TOP_TRIPLE_SETUP.md](N6_TOP_TRIPLE_SETUP.md), with the residual
normalization \(e\le f\). The actual point \(P\) is inside
\(HABC\), and \(Q,R,S\) are in the closed top cap, strictly on
its corner side of \(EF\). Assume the central top word

\[
 EQR,EQS,ERS>0,\quad FQR>0,\quad FQS<0,\quad FRS<0,
 \quad QRS>0, \tag{1}
\]

and the lower-central sign \(HBP>0\), equivalently \(BHP<0\).

**Theorem.** The additional actual-sign alternative \(AFP>0\)
is impossible.

The proof is the fixed argument below and the literal tables in
[the index](N6_BTTT_REMAINING_CENTRAL_POSITIVE_TABLES/INDEX.md),
[the geometric contexts](N6_BTTT_REMAINING_CENTRAL_POSITIVE_TABLES/contexts.md),
and the three stage files linked there. Each retained physical
polynomial, endpoint line, geometric deduction, scalar identity,
immutable source reference, and contradictory leaf is printed.
This theorem leaves the alternative \(AFP<0\) open.

Put \(\alpha=1037/10000\), \(K=149/20\), \(J=4427/500\),
\(G=1457/250\), and \(\delta=s/(1-\alpha)\). The occupancy
costs and exact geometric rules are those of the setup and
[N6_BTTT_REMAINING_TRIANGULAR.md](N6_BTTT_REMAINING_TRIANGULAR.md).
The central top hull \(EQRF\), with \(S\) inside, gives
\((1-e)(1-f)\ge Gs\). The actual \(ABC,ABH\) clearances give
\(a,b>\alpha\), hence \(e,f>\alpha\). Therefore

\[
 a,b,e,f\le\frac{88574}{224075},\qquad a,e\le33/125.
\]

The latter ceilings use \(e\le f\) and the exact comparison
\(Gs-(1-33/125)^2=77/250000>0\).
The four actual triangles \(ABC,ABE,ACE,BCE\) are empty because
their areas are at most \(a,e,e,e\), respectively, and
\(33/125<3s\). In particular \(ACP>0\), so both lower-central
signs hold. The lower endpoint cost is \(hc\ge Gs\).

Every free coordinate is at least \(\delta\), and the lower point
has \(p+q\le1-s\). The lower-central bounds improve its coordinate
floors to \(p,q\ge s(1+\alpha)/(1-\alpha)\).
If a top point \(U\) has \(n\) of the other top points inside
\(EFU\), its coordinates are at least
\(\alpha+c_ns/(1-\alpha)\), with \(c_0=1,c_1=3,c_2=K\).
Every occupant of such an actual top triangle has both coordinates
at most \(1-\delta\). The anchor clearances also give
\(c\ge\alpha+s/a_{\max}\) and
\(h\ge\alpha+s/b_{\max}\). These are the coarse-box formulas
in the printed stages.

The contexts use only the fixed actual signs, the displayed branch
signs, the five-label determinant identity, the four empty triangles,
affinity over proved containing hulls, and the distributed-three
mesh. Every context lists its complete deduction trace and final
actual-sign table. The three additional capacity deductions are
printed in the index. At stage 0, upper bounds below \(3s\) for
\(FHR,FPR\), together with their two known inward tests at \(S\),
force \(HRS<0,PRS<0\). At stage 11, the same argument with
\(FHQ\) and \(S\) forces \(HQS<0\). Each sign is available only
after its own immutable upper-bound source.

Coordinate refinement uses signed actual triangle areas minus their
witnessed occupancy costs, contact orders, the central top-container
cost, earlier proved bounds for the same absolute actual triangle
area, and the lower-central factor

\[
 h(c-b)p-s(c+b)\ge0. \tag{2}
\]

For completeness, the exact identity

\[
 c[HBP]+b[CHP]=h(c-b)p
\]

proves (2), because both actual determinants on the left are at
least \(s\), with \(b,c>0\). This is the first shared central
inequality of [ONE_LOWER_POINT.md](ONE_LOWER_POINT.md).
Every coordinate step applies the exact multiaffine endpoint-line
rule and rounds outwards to a multiple of \(10^{-6}\).

The scalar rules are the actual fan identity, unsigned five-label
identity, occupied-quadrilateral sums, endpoint-support bounds, and
the signed-area barycentric interval formula (5) of the triangular
note. Initial bounds use witnessed occupancy costs or exact
multiaffine coordinate-box maxima, capped by one. Every scalar
update prints its exact result and outward rounding.

The present proof also uses already proved bounds in descendant
stages. The first stage starts from its coarse box. Every later
coordinate box is the intersection of its own proved coarse box
with a completed preceding box, named in its `Parent box` entry.
The first stage of a child case uses the last completed box of its
parent case; subsequent stages use the preceding stage in that
same case. A physical factor or initial scalar bound using an
earlier area source prints that source's absolute triangle,
direction, rational value, and immutable \(\text{stage}:\text{row}\)
identifier. The source stage strictly precedes the target, and the
target inherits all its actual-sign assumptions. A sibling case is
never a source. Thus no final coordinate endpoint or scalar bound
justifies its own derivation.

There are five binary actual-sign splits and six contradictory
leaves. Each determinant is nonzero, so both alternatives at every
split are exhaustive. There are no coordinate cuts. Capacity-forced
signs add no cases.

| Split-sign assumptions beyond the theorem | Terminal stage |
| --- | --- |
| ARS+ | 4 |
| ARS- BRS+ | 7 |
| ARS- BRS- CRS+ AQS+ PQS+ | 19 |
| ARS- BRS- CRS+ AQS+ PQS- | 21 |
| ARS- BRS- CRS+ AQS- | 22 |
| ARS- BRS- CRS- | 23 |

The terminal gaps below are exact positive rational weakenings.
At an interval terminal the gap is minus the largest endpoint value
of all the printed terminal affine lines; at a scalar terminal it
is the lower bound minus the upper bound for the same actual area.

| Stage | Contradiction | Positive gap at least |
| --- | --- | --- |
| 4 | Factor A_ARS is negative throughout its target interval | 13697/500000 |
| 7 | Lower area bound exceeds upper bound for ABS | 24143/1000000 |
| 19 | Factor A_FHR is negative throughout its target interval | 14699/1000000 |
| 21 | Factor A_QRS is negative throughout its target interval | 397/40000 |
| 22 | Factor A_FQR is negative throughout its target interval | 3213/1000000 |
| 23 | Factor A_QRS is negative throughout its target interval | 10031/1000000 |

All six leaves are impossible, proving the theorem.

The fixed argument contains 24 geometric contexts with 1,178
deductions, 24 stages, 1,262 coordinate updates, 275 physical-factor
occurrences, 893 initial scalar versions, 3,154 scalar updates,
480 scalar relations, and three capacity signs. The retained
relations comprise 132 fans, 130 five-label identities, two
quadrilateral sums, 50 support inequalities, and 166 signed-area
barycentric relations.
[N6_BTTT_REMAINING_CENTRAL_POSITIVE_REPLAY.js](N6_BTTT_REMAINING_CENTRAL_POSITIVE_REPLAY.js)
reads the literal Markdown and reconstructs every retained geometry,
polynomial, endpoint substitution, scalar update, source scope,
binary branch, and terminal with exact rational arithmetic. It
imports no discovery engine. Its optional command is

~~~text
node n10/hand/N6_BTTT_REMAINING_CENTRAL_POSITIVE_REPLAY.js
~~~

The first reader passes both the direct fixed argument and the
round trip through the printed tables. The separate standard-library
Fraction audit [audit_n6_bttt_remaining.py](audit_n6_bttt_remaining.py)
independently reconstructs all 24 contexts and 1,178 deductions,
275 physical factors, 1,262 coordinate updates, 3,154 scalar updates,
480 relations, 4,047 immutable bound versions, all inherited source
scopes, and the five-split/six-leaf binary coverage. It independently
expands the identity proving (2), and reproduces every terminal
maximum and the exact stage-7 scalar gap. The optional command is

~~~text
python3 n10/hand/audit_n6_bttt_remaining.py --central-positive
~~~

Twelve parsed-argument mutations and eight direct-Markdown corruptions
were each rejected, including sibling scalar and physical sources,
a changed parent box, a future premise, a missing leaf or endpoint
line, a missing source, and a changed central coefficient. The earlier
triangular-word and lower-ear audit modes also pass.

Independent geometric and exact-arithmetic acceptance therefore closes
the stated positive-\(AFP\) alternative. Combining this theorem with
the independently accepted lower-ear exclusion, the exact remaining
normalized BTTT frontier is the central top word \(+--+\) with
\(ACP>0,HBP>0,AFP<0\).
