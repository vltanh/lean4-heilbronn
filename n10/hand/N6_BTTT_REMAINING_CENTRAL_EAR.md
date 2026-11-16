# The lower-ear part of the normalized central BTTT top word is impossible

Use the ten actual points, contact order, square-side conventions,
minimum unsigned doubled area \(s=93/1000\), and residual normalization
\(e\le f\) stated in
[N6_BTTT_REMAINING_TRIANGULAR.md](N6_BTTT_REMAINING_TRIANGULAR.md).
Here the top word is central:

\[
 EQR,EQS,ERS>0,\qquad FQR>0,\quad FQS<0,\quad FRS<0,
 \quad QRS>0. \tag{1}
\]

Assume in addition that \(HBP<0\), equivalently \(BHP>0\).
The actual lower point \(P\) then lies inside \(ABH\).

**Theorem.** These hypotheses are inconsistent.

This closes the entire stated lower-ear alternative, without a
further actual-sign assumption or coordinate cut. It does not close
the lower-central alternative \(HBP>0\) of the central top word.

The complete fixed argument is printed in
[the index](N6_BTTT_REMAINING_CENTRAL_EAR_TABLES/INDEX.md),
[the geometric context](N6_BTTT_REMAINING_CENTRAL_EAR_TABLES/contexts.md),
and [the stage table](N6_BTTT_REMAINING_CENTRAL_EAR_TABLES/stages_00.md).
These tables supply every literal polynomial, coordinate endpoint,
affine substitution line, geometric deduction, and terminal comparison.

Put

\[
 \alpha=1037/10000,\qquad K=149/20,\qquad G=1457/250,
 \qquad \delta=\frac{s}{1-\alpha}.
\]

The central word (1) has the positive convex top hull \(EQRF\)
with \(S\) inside it. The five-point endpoint theorem, as used in
[N6_TOP_TRIPLE_SETUP.md](N6_TOP_TRIPLE_SETUP.md), gives

\[
 (1-e)(1-f)\ge Gs. \tag{2}
\]

The actual anchor clearances force \(a,b>\alpha\), and hence
\(e,f>\alpha\). Consequently

\[
 a,b,e,f\le t=1-\frac{Gs}{1-\alpha}
                  =\frac{88574}{224075}.
\]

Since \(e\le f\), inequality (2) and

\[
 Gs-(1-33/125)^2=77/250000>0
\]

give the closed ceilings \(a,e\le33/125\).
The four actual anchor triangles \(ABC,ABE,ACE,BCE\) have areas
at most \(a,e,e,e\), respectively, and
\(33/125<3s\). All four are empty. In particular \(ACP>0\).
The extra assumption \(HBP<0\) puts \(P\) in the other lower ear.
The local ear bound of
[ONE_LOWER_POINT.md](ONE_LOWER_POINT.md) gives

\[
 hc\ge Ks. \tag{3}
\]

The static geometric context uses (1), the actual anchor and region
edge signs, the fixed top-cross identities from the setup, the
five-label determinant identity, and emptiness of the four triangles
just listed. All 39 deductions and all final actual signs are printed.
In particular \(S\) lies inside each of \(EFQ,EFR\). Thus those
two actual triangles each have doubled area at least \(3s\).
The other top point \(S\) has the ordinary \(s\) clearance.

For the initial box, \(c,h\ge Ks\), all free coordinates are at
least \(\delta\), and the lower clearance gives
\(p+q\le1-s\). This gives each of \(p,q\) the upper bound
\(1-s-\delta=7199441/8963000\).
Both coordinates of \(Q,R\) are at least
\(\alpha+3s/(1-\alpha)\), and those of \(S\) are at least
\(\alpha+s/(1-\alpha)\).
Since \(S\) is inside an actual top triangle, both its coordinates
are at most \(1-\delta=8033/8963\).
These formulas and the contact ceilings above give exactly the
printed initial box.

The 28 retained nonnegative physical factors are signed actual
triangle areas minus their witnessed occupancy costs, contact orders,
the top-container factor (2), and the weighted top-fan inequalities
(4) of the triangular-word note. Each actual occupancy has all three
strict inward edge tests in the printed context. The factor from
(2) is justified by the actual central top hull and its occupant;
it uses no candidate-configuration hypothesis.

Starting from that box, the table applies 152 exact multiaffine
coordinate updates. Every update lists every distinct affine line
obtained by fixing the other coordinates at their current endpoints.
The possible target values are contained in the hull of those lines'
nonnegative subintervals. The displayed next interval rounds that
hull outwards to a multiple of \(10^{-6}\). This is
[MULTIAFFINE_BOX_BOUNDS.md](MULTIAFFINE_BOX_BOUNDS.md).

At the terminal, the actual factor

\[
 [CEQ]-s=v-cv-eu+ce-93/1000
\]

must be nonnegative. Its target \(c\) has the proved interval

\[
 168501/200000\le c\le53737/62500.
\]

Every terminal endpoint line is strictly negative on that interval.
The largest endpoint value of all those lines is exactly

\[
 -\frac{18462201153}{10^{12}}<0.
\]

Thus the factor itself is negative, a contradiction. Its gap is at
least \(9231/500000>0\). This proves the theorem.

The argument has one geometric context, one coordinate stage,
152 coordinate updates, 28 physical factors, and one contradictory
leaf. It uses no scalar-area update or case subdivision.
[N6_BTTT_REMAINING_CENTRAL_EAR_REPLAY.js](N6_BTTT_REMAINING_CENTRAL_EAR_REPLAY.js)
parses the literal Markdown, reconstructs the physical factors and
all endpoint substitutions with exact rational arithmetic, and checks
this fixed argument. It imports no discovery engine. The optional
replay is

~~~text
node n10/hand/N6_BTTT_REMAINING_CENTRAL_EAR_REPLAY.js
~~~

The reader passes. The separate standard-library Fraction audit
[audit_n6_bttt_remaining.py](audit_n6_bttt_remaining.py) independently
reconstructs the central top hull and cost, normalized initial box,
all 39 geometric deductions, 28 physical factors, 152 coordinate
updates, and the single-leaf coverage. It obtains exactly the same
terminal maximum \(-18462201153/10^{12}\). The optional independent
command is

~~~text
python3 n10/hand/audit_n6_bttt_remaining.py --central-ear
~~~

Independent geometric and exact-arithmetic acceptance closes this
ear alternative. Combining it with emptiness of \(ABC\), any remaining
normalized central BTTT case must have \(ACP>0,HBP>0\), so its lower
point is central.
