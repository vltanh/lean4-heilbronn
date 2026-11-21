# The normalized BTTT top word ---+ is impossible

Put \(s=93/1000\). Take the six distinct actual contacts

\[
 A=(0,a),\ B=(b,0),\ C=(c,0),\ E=(1,e),\ F=(f,1),\ H=(0,h),
\]

with \(0<a<h\le1\), \(0<b<c\le1\), \(a\le e\le h\),
\(b\le f\le c\), and the residual normalization \(e\le f\).
Let the actual point \(P=(p,q)\) lie strictly inside \(HABC\).
Let the actual points \(Q=(u,v),R=(r,w),S=(j,k)\) lie in the
closed top corner triangle \(EF(1,1)\), strictly on its corner
side of \(EF\). Suppose every unsigned actual doubled triangle
area is at least \(s\). Write \([XYZ]=\det(Y-X,Z-X)\), order
the three top rays so \(EQR,EQS,ERS>0\), and assume

\[
 FQR<0,\qquad FQS<0,\qquad FRS<0,\qquad QRS>0. \tag{1}
\]

**Theorem.** These hypotheses are inconsistent.

The proof is the finite argument below and the literal tables in
[the index](N6_BTTT_REMAINING_TABLES/INDEX.md),
[the geometric contexts](N6_BTTT_REMAINING_TABLES/contexts.md), and
the three stage files linked from the index. Each retained physical
polynomial, endpoint affine line, actual-sign deduction, scalar
identity, bound reference, and contradictory leaf is printed there.
This theorem closes the normalized word (1). The central BTTT word
\(+--+\) remains a separate obligation.

The normalization applies to the union of remaining words by
[N6_TOP_TRIPLE_TRANSPOSE.md](N6_TOP_TRIPLE_TRANSPOSE.md). Its label
map exchanges \(----\) and \(---+\) while also exchanging \(e,f\).
Consequently the previously proved normalized \(----\) theorem
does not itself imply the theorem here.

Use the exact constants

\[
 K=149/20<4+2\sqrt3,\quad J=4427/500<(11+3\sqrt5)/2,
 \quad G=1457/250<3+2\sqrt2,\quad \alpha=1037/10000.
\]

The triangle occupancy costs for zero, one, two, or three actual
interior witnesses are \(s,3s,Ks,Js\). An actual triangle of doubled
area at most one cannot contain four actual points. Three occupants
must have the distributed mesh proved in the existing occupancy
lemmas. These are the rules and constants of
[N6_TOP_TRIPLE_SETUP.md](N6_TOP_TRIPLE_SETUP.md).

The signs (1) put \(R,S\) inside the actual triangle \(EQF\).
Hence \((1-e)(1-f)\ge Ks\). The actual \(ABC,ABH\) clearances
force \(a,b>\alpha\), because

\[
 s-\alpha(1-\alpha)=5369/10^8>0.
\]

Thus \(e,f>\alpha\), and the top cost gives

\[
 a,b,e,f\le t=1-\frac{Ks}{1-\alpha}=\frac{4069}{17926}.
\]

The normalization gives \((1-e)^2\ge Ks\); since

\[
 Ks-(1-21/125)^2=313/500000>0,
\]

we may use the closed ceilings \(a,e\le21/125\).
The actual anchor triangles

\[
 ABC,\ ABE,\ ACE,\ BCE,\ ABF,\ ABH,\ AFH,\ BFH \tag{2}
\]

have affine upper bounds \(a,e,e,e,f,b,f,f\), respectively.
All are at most \(t<3s\), with exact gap
\(3s-t=466177/8963000>0\), so they are empty. In particular
\(ACP>0,HBP>0\).

The initial boxes use the following consequences from the setup.
The lower endpoint triangle gives \(hc\ge Gs\). Put
\(\delta=s/(1-\alpha)\). Every free coordinate is at least
\(\delta\). The central lower-point inequalities give

\[
 h(c-b)p\ge s(c+b),\qquad c(h-a)q\ge s(h+a),
\]

so \(p,q\ge s(1+\alpha)/(1-\alpha)\), whereas the actual
\(HC\) clearance gives \(p+q\le1-s\). The anchor clearances give
\(c\ge\alpha+s/a_{\max}\) and
\(h\ge\alpha+s/b_{\max}\).
For a top point \(U\), if \(n\) other top points are inside
\(EFU\), its two coordinates are at least
\(\alpha+c_ns/(1-\alpha)\), where \(c_0=1,c_1=3,c_2=K\).
Every point inside \(EFU\) has both coordinates at most
\(1-\delta\). These formulas determine every printed initial box;
each stage starts afresh from its own coarse box.

The contexts start with the strictly convex contact order
\(ABCEFH\), the indicated region-edge signs, and the three ray
signs. For every top point \(T\), separation from \(P\) gives
\(HPT>0,CPT<0\). The fixed cross signs \(EPT<0,FPT>0\) follow from

\[
\begin{aligned}
 (1-f)[EPT]&=(1-p)[EFT]-(1-x_T)[EFP],\\
 (1-e)[FPT]&=(1-y_T)[EFP]-(1-q)[EFT].
\end{aligned}
\]

Every subsequent sign deduction is a printed actual-sign assumption,
a five-label identity

\[
 [abc][ade]-[abd][ace]+[abe][acd]=0,
\]

exclusion from an empty triangle (2), affinity over a proved
containing triangle or anchor hull, or the distributed mesh rule.
For a positive outer triangle \(ABC\), that mesh has, after one
of the six assignments of its actual occupants \(X,Y,Z\), the
thirteen positive tests

\[
 ABZ,BCX,CAY,AZY,BXZ,CYX,ZXY,AZX,BXY,CYZ,AXY,BYZ,CZX. \tag{3}
\]

An inferred test occurs only when every remaining assignment agrees.
The index also prints six capacity deductions. Each uses an earlier
proved upper area bound below the cost of adding its named point.
Two inward edge tests are known; the third must be outward. Such a
deduction becomes available only after its printed source stage.

The physical factors used in the coordinate tables are signed actual
areas minus their witnessed occupancy costs, contact orders, the
lower endpoint floor \(hc-Gs\), and the weighted top-fan factors of
[N6_TOP_WEIGHTED_BARYCENTRICS.md](N6_TOP_WEIGHTED_BARYCENTRICS.md).
For a top point \(V\) inside \(EFU\), let its opposite fan costs
be \(c_Es,c_Fs,c_Us\) and put
\(M=(1-\alpha)^2/s\). Its barycentric weights are at least
\(c_i/M\). Subtracting these weights and bounding each remaining
coordinate between its minimum and maximum at \(E,F,U\) gives

\[
\begin{aligned}
 Mx_V&\ge c_E+(M-c_E-c_U)f+c_Ux_U,\\
 Mx_V&\le M-c_F-c_U+c_Ff+c_Ux_U,\\
 My_V&\ge c_F+(M-c_F-c_U)e+c_Uy_U,\\
 My_V&\le M-c_E-c_U+c_Ee+c_Uy_U.
\end{aligned} \tag{4}
\]

For each multiaffine nonnegative factor and target coordinate, the
tables print every distinct endpoint affine line in that coordinate.
Its value is a convex combination of those lines, so some line is
nonnegative. The next interval contains exactly the hull of the
lines' feasible subintervals, rounded outwards to \(10^{-6}\).
An empty hull is a contradiction. This is the exact rule of
[MULTIAFFINE_BOX_BOUNDS.md](MULTIAFFINE_BOX_BOUNDS.md).

For scalar bounds put \(A_{XYZ}=|[XYZ]|\). Initial lower bounds
are occupancy costs; initial upper bounds are exact multiaffine
box-vertex maxima, capped by one. The tables retain actual fan
identities, unsigned five-label identities \(XY=UV+WZ\), occupied
convex-quadrilateral sums, and endpoint-support inequalities
\(XY\ge\kappa(X-Z)\). The geometric witnesses and rates are
printed. Every scalar row substitutes earlier bounds in a valid
direction, prints the exact quotient or sum, and rounds outwards to
\(10^{-6}\). The rules are those of
[SCALAR_AREA_INTERVALS.md](SCALAR_AREA_INTERVALS.md).
Identifiers \(\text{stage}:\text{row}\) refer to immutable bound
versions. A row uses only preceding bounds in the same stage.

There is also a general signed-area barycentric rule. Suppose the
actual point \(V\) is inside an actual triangle with vertices
\(T_0,T_1,T_2\), its outer unsigned area is at most \(N>0\),
and its three opposite actual fan areas are at least \(b_i>0\).
Its barycentric weights satisfy \(\lambda_i\ge b_i/N\). Therefore
\(N-\sum_i b_i\ge0\), and for any fixed oriented actual line
\(IJ\), if

\[
 \ell_i\le[IJT_i]\le u_i,
\]

affinity and the nonnegative residual weights give

\[
 \frac{\sum_i b_i\ell_i+(N-\sum_i b_i)\min_i\ell_i}{N}
 \ \le [IJV]\ \le
 \frac{\sum_i b_i u_i+(N-\sum_i b_i)\max_i u_i}{N}. \tag{5}
\]

Every use prints the outer triangle, actual interior point, oriented
line, vertex signs, opposite fan ordering, and all bound references.
For a negative vertex determinant its lower endpoint is minus its
unsigned upper endpoint, and conversely. A repeated line vertex has
determinant exactly zero. If \(V\) itself lies on \(IJ\), (5)
is an interval for the known zero determinant; no minimum-area
hypothesis is applied to a repeated-label triple.

At stage 25, \(P\) is inside \(AHR\) and the line is \(BP\).
In vertex order \(A,H,R\), the printed sources give

\[
\begin{aligned}
 N&=482937/10^6,\\
 (b_A,b_H,b_R)&=(218043/10^6,93/1000,159793/10^6),\\
 (\ell_A,\ell_H,\ell_R)&=(93/1000,29279/200000,-98437/500000).
\end{aligned}
\]

Here \(N-\sum b_i=12101/10^6>0\).
The lower expression in (5) is exactly

\[
 [BPP]\ge\frac{4272887}{40244750000}>0,
\]

contradicting \([BPP]=0\).

The complete binary case tree in the index has 13 actual-sign splits
and 14 leaves. Every split has both nonzero sign alternatives;
there are no coordinate cuts. Capacity-forced signs add no cases.
The terminal stages and positive rational lower bounds for their
gaps are:

| Stage | Contradiction | Positive gap at least |
| --- | --- | --- |
| 3 | Factor A_ABP is negative on every endpoint line | 5433/500000 |
| 6 | No distributed mesh in AEQ for P,R,S | geometric |
| 9 | Lower area bound exceeds upper bound for ABQ | 13743/200000 |
| 11 | Factor A_CEP is negative on every endpoint line | 6437/1000000 |
| 13 | Factor A_HQR is negative on every endpoint line | 2339/125000 |
| 14 | Factor A_EFQ is negative on every endpoint line | 18291/1000000 |
| 16 | Factor A_EFQ is negative on every endpoint line | 18291/1000000 |
| 19 | Factor A_HQR is negative on every endpoint line | 143/1000000 |
| 20 | Factor A_BFP is negative on every endpoint line | 3393/500000 |
| 23 | Factor A_BER is negative on every endpoint line | 1977/125000 |
| 25 | The zero determinant BPP has a positive lower bound | 53/500000 |
| 26 | Factor A_AQR is negative on every endpoint line | 2339/500000 |
| 28 | Factor A_CEQ is negative on every endpoint line | 663/125000 |
| 29 | Factor A_BCE is negative on every endpoint line | 1763/1000000 |

At stage 6, the three points \(P,R,S\) are inside \(AEQ\).
For each assignment in (3), this table names a required positive
actual determinant whose proved sign is negative:

| Assignment (X,Y,Z) | Conflicting determinant |
| --- | --- |
| P,R,S | EPS |
| P,S,R | EPR |
| R,P,S | EPS |
| R,S,P | QSR |
| S,P,R | ESR |
| S,R,P | ESR |

Thus every mesh assignment fails. Every other leaf has the displayed
strict rational contradiction, proving the theorem.

The fixed proof contains 30 contexts with 1,356 deductions, 30 stages,
1,493 coordinate updates, 525 physical-factor occurrences, 166
initial scalar bounds, 664 scalar updates, 277 scalar relations,
and six capacity-forced signs. The relations comprise 44 fans,
109 five-label identities, nine quadrilateral sums, three support
inequalities, and 112 signed-area barycentric relations.
[N6_BTTT_REMAINING_REPLAY.js](N6_BTTT_REMAINING_REPLAY.js) parses
only the literal Markdown tables and reconstructs the geometric
witnesses, rational polynomials, endpoint lines, scalar updates,
source order, binary coverage, and all fourteen contradictions.
It imports no discovery engine. The optional replay is

~~~text
node n10/hand/N6_BTTT_REMAINING_REPLAY.js
~~~

The first reader passes both direct fixed-argument replay and the
round trip through the printed Markdown. A separate standard-library
Python audit, [audit_n6_bttt_remaining.py](audit_n6_bttt_remaining.py),
independently reconstructs every geometric deduction, physical factor,
endpoint line, scalar relation, source reference, capacity sign, and
all 27 nodes of the 14-leaf binary tree from the literal Markdown.
It passes all 30 contexts, 525 physical factors, 1,493 coordinate
updates, 664 scalar updates, 830 immutable scalar-bound versions,
and 277 relations. Its independent stage-25 interval is exactly
\([4272887/40244750000,3151841341/96587400000]\), excluding zero.
The optional independent command is

~~~text
python3 n10/hand/audit_n6_bttt_remaining.py
~~~

The reviewer also checked that deleting a binary child, replacing
an earlier-bound reference by a nonexistent reference, swapping the
ordered barycentric fans, reversing a barycentric vertex sign,
changing a scalar endpoint, changing a zero-terminal endpoint, and
changing the repeated-label target are each rejected. Independent
geometric and exact-arithmetic acceptance therefore closes the
stated normalized word.
