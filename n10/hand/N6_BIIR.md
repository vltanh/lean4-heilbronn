# The six-contact count BIIR

In a corner-free normalized six-contact configuration, suppose
one further point lies in the lower quadrilateral \(HABC\), two lie
in the upper quadrilateral \(HCEF\), and one lies in the right cap
\(CE(1,0)\). Then the least ordinary triangle area is less than
\(93/2000<A^*\). This is the count \((k,j,r,t,l)=(1,2,1,0,0)\).
Transposition exchanges the right and left caps and proves the same
bound for \((1,2,0,0,1)\).
[Exact threshold comparison](N6_BIRT.md)

Suppose every actual unsigned doubled triangle area is at least
\(s=93/1000\). Denote the lower point by \(P\), the upper pair by
\(Q,R\), and the right-cap point by \(S\). Interchange \(Q,R\) if
necessary to make \([AQR]>0\). The line \(QR\) crosses two open
edges of the strict heptagon \(ABCSEFH\). The singleton and short-arc
bounds leave eleven possible crossing pairs.
[Crossing analysis](N6_BIIR_ARCS.md)

Each pair starts with the actual signs and the rational coordinate
box proved in the setup. The \(BC,EF\), \(BC,FH\), \(CS,FH\) and \(SE,HA\)
proofs use the presence of \(P\) in some descendant stages. These
stages inherit the same boxes and sign decisions. The other seven
pairs use only the six contacts, \(Q,R\), and \(S\).
[Setup and lower-point inequalities](N6_BIIR_CORE_SETUP.md)

The literal tables give 696 determinant splits and 55
closed coordinate cuts. The 762 leaves consist of
30 geometric contradictions, 503 scalar contradictions,
64 coordinate contradictions, and 165 positive
sums with strictly negative upper bounds. A determinant split covers
both strict signs. Each coordinate cut retains its shared face
in both children. The tables include the determinant expansions,
all source inequalities, and the rational arithmetic at every leaf.
[Proof tables](N6_BIIR_CORE_TABLES/INDEX.md)

The optional exact arithmetic replay is

    python n10/hand/audit_n6_biir_core.py

All eleven crossing pairs contradict the clearance \(s\), so the least
ordinary triangle area is less than \(93/2000\).
