# The six-contact count BIRL

In a corner-free normalized six-contact configuration, suppose
one further point lies in the lower quadrilateral \(HABC\), one
in the upper quadrilateral \(HCEF\), and one in each of the two
side caps \(CE(1,0)\) and \(FH(0,1)\). Then the least ordinary
triangle area is strictly less than \(A_*\). This is the six-contact
count \((k,j,r,t,l)=(1,1,1,0,1)\).

Assume that the least ordinary area \(m\) is at least \(A_*\).
All actual doubled triangle areas are at least \(s=93/1000\), so
no three points are collinear. Use the point labels and contact
conditions of the [BIRL setup](N6_BIRL_SETUP.md). Transposition
allows \(e\le f\) and covers the equality case \(e=f\).

The contacts and cap points form the strict octagon \(ABCREFSH\).
The line through the lower point \(P\) and upper point \(Q\) crosses
one lower edge and one upper edge. The four-vertex cap bounds place
at least three vertices on both sides of this line. Exactly nine
crossing pairs remain in the [two-side-cap catalogue](N6_BOTH_SIDE_CAPS.md).
In the \(AB,EF\) pair use the three closed coordinate regions
\[
 \{p\ge b,q\ge a\},\qquad
 \{p\le b\},\qquad
 \{p\ge b,q\le a\}.
\]
They cover the entire pair and include the faces \(p=b\) and \(q=a\).

The [printed tables](N6_BIRL_TABLES/INDEX.md) cover the resulting
eleven initial domains. They give 512 determinant splits and fifteen
coordinate cuts, with both children at every split. The 538 leaves
consist of 34 geometric terminals, 305 scalar contradictions, 168
coordinate contradictions and 31 weighted sums with strictly negative
exact upper bounds. The geometric terminals include exactly one
application of the sharp projection inequality. It occurs in the
\(AB,EF\) region \(p\ge b,q\ge a\). The relevant eight signs and
both weak coordinate inequalities are supplied at that leaf.
The outward projections strictly increase both cap areas used in
the sharp theorem. Thus the leaf gives \(m<A_*\) directly.
[Sharp terminal](N6_PROJECTED_COUNT_TERMINALS.md)

All other terminals contradict the weaker threshold \(s\), using
their printed geometry, area chains or rational inequalities.
All coordinate cuts retain the shared endpoints. For the optional
exact arithmetic replay of the displayed proof, use

    python n10/hand/audit_n6_birl.py

Every allowed chord and coordinate region leads to a contradiction
to \(m\ge A_*\), proving the claim.
