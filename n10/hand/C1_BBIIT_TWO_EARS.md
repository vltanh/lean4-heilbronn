# A small ear next to the single top point

In the one-corner count \((2,2,0,1,0)\) let \(R=(j,k)\) be the top
point. The convex hull is \(O,C,D,R,F,H\), where
\(O=(0,0),C=(c,0),D=(1,d),F=(f,1),H=(0,h)\),
\(0<d\le h\le1\) and \(0<f\le c\le1\).
Write \(s=93/1000\) for the assumed lower bound on every actual
unsigned doubled triangle area and \(\rho=347/500\). The two lower
points in \(OHC\) give \(hc\ge(4+2\sqrt3)s>\rho\).
In particular \(c,h>\rho\). [Lower-pair and hull geometry](C1_TWO_LOWER_TWO_CENTRAL_GEOMETRY.md)

We prove that at least one of the two ears \(CDR\) and \(RFH\)
has doubled area below \(53/200=.265\). It follows that at least one
of them is empty, as subdivision at a single actual point would give
area at least \(3s=.279\).

Let \(K=(1,1)\) be the virtual top corner. For \(T\) in the closed
triangle \(DFK\), put \(u(T)=[CDT]\), \(v(T)=[TFH]\), with brackets
denoting signed doubled area. These are nonnegative affine functions
of \(T\). At \(K\) their values are \((1-c)(1-d)\) and
\((1-h)(1-f)\). The actual anchor clearances give \(cd,hf\ge s\).
The function \(z\mapsto(1-z)(1-s/z)\) is decreasing for
\(z\ge\rho>\sqrt s\), by its derivative \(-1+s/z^2\). Therefore
\[
 u(K),v(K)\le(1-\rho)(1-s/\rho)
   =91953/347000=53/200-1/173500.
\]

At a base point \(T=(1-t)D+tF\), \(0\le t\le1\), one has
\[
 u(T)=tA,\qquad v(T)=(1-t)B,\qquad A=[CDF],\quad B=[DFH].
\]
Their minimum is at most \(AB/(A+B)\le(A+B)/4\). Direct expansion
in the contact coordinates gives
\[
 A+B=1+(1-h)(1-c)-(h-d)(c-f)-df .
\]
Since \(h+c\ge2\sqrt{hc}\),
\((1-h)(1-c)\le(1-\sqrt{hc})^2<(167/1000)^2\);
the last inequality uses \((833/1000)^2=693889/10^6<\rho\).
Hence \((A+B)/4<(1+(167/1000)^2)/4<53/200\).

Every top point R lies on a segment joining \(K\) to a base point T,
including the case \(R=K\). At this T choose one of \(u,v\) whose
value is below \(53/200\). The same chosen function is below
\(53/200\) at \(K\), and hence at \(R\) by affinity. This proves
the claimed ear bound.

## A central point in \(HCR\)

Each individual ear has doubled area less than \(53/100\). To see this
for \(CDR\), the actual top clearance gives
\[
 (1-d)(j-f)-(1-f)(1-k)\ge s,
 \quad\text{hence}\quad j\ge f+s/(1-d).
\]
Using \(k\le1\) and \(c\ge\rho,\ f\ge s\) gives
\[
 \begin{aligned}
 u(R)&=(1-c)(k-d)+d(1-j)\\
     &\le1-c+d(c-f)-ds/(1-d)\\
     &\le1-\rho+d(\rho-s)-ds/(1-d)\\
     &=1-(\rho-s)(1-d)-s/(1-d)\\
     &\le1-2\sqrt{s(\rho-s)}<53/100 .
 \end{aligned}
\]
The last comparison follows from \(4s(\rho-s)>.47^2\).
Coordinate transposition gives the same ceiling for \(RFH\).
Two occupants would cost \((4+2\sqrt3)s>\rho>.53\).
Thus each ear contains at most one actual point. The previous section
shows that at most one of the two ears contains even one.

The triangles \(CDR,HCR,RFH\) triangulate the convex upper pentagon
\(H,C,D,R,F\). Both central points lie in that pentagon, and neither
lies on an actual diagonal. Consequently **at least one central point
lies strictly in \(HCR\)**. The other is in \(HCR\), in \(CDR\), or
in \(RFH\). If both are in \(HCR\), its doubled area satisfies
\([HCR]=hj+ck-hc\ge(4+2\sqrt3)s\). If exactly one is in \(HCR\),
the occupied outer ear specifies which of the two contacts can be
deleted in the next paragraph.

## Consequence for the bounding rectangle

Let \(\kappa=160s/(9\sqrt{65}-55)\).
An empty \(CDR\) allows deletion of D. The remaining nine actual
points lie in the convex pentagon \(O,C,R,F,H\), since the diagonal
\(CR\) cuts exactly the ear \(CDR\) off the hexagon. They consequently
lie in a rectangle of height one and width \(\max(c,j)\), using
\(f\le c\). Scaling its width to one gives nine points with doubled
clearance at least \(s/\max(c,j)\). The sharp doubled optimum
for nine points in a unit square is \((9\sqrt{65}-55)/160\), and
every attaining configuration is corner-free. The scaled set contains
the corner O, so \(\max(c,j)>\kappa\).
[Nine-point theorem and equality case](../../hand/UNRESTRICTED.md)

If \(RFH\) is empty, delete F. The remaining pentagon \(O,C,D,R,H\)
has height \(\max(h,k)\) and width one. The same theorem gives
\(\max(h,k)>\kappa\). Thus every surviving configuration satisfies
at least one of
\[
 CDR\ \text{empty and }\max(c,j)>\kappa,\qquad
 RFH\ \text{empty and }\max(h,k)>\kappa .
\]
In particular \(\max(c,h,j,k)>\kappa>847/1000\). The last
comparison reduces to \(\sqrt{65}<61465/7623\), whose squared gap
is \(787840/58110129\). Each alternative includes the possibility
that both ears are empty.

## The contact height when \(RFH\) is occupied

An occupied \(RFH\) forces \(h>.721\) and \(k<.721\). For suppose
\(h\le .721\). Then \(c>\rho/.721>.962\), so \(1-c<z=.038\).
From the actual clearance at \(CDR\),
\[
 s\le(1-c)(k-d)+d(1-j)\le z(1-d)+d(1-j).
\]
Thus \(1-j\ge L=z+(s-z)/d\). The top area test gives
\((1-f)(1-k)\le(1-d)(j-f)-s\). Putting
\(B=1-h+f(h-d)\) and \(B_0=1-\rho+f(\rho-d)\ge B>0\), we get
\[
 [RFH]\le \frac{B(j-f)-fs}{1-f}
         \le \frac{B_0(1-f-L)-fs}{1-f}.
\]
Here \(j-f>0\) by the top-cap placement. The last bound is strictly
less than \(3s\) exactly when
\[
 P(d,f)=d(1-f)(3s-B_0)+B_0(zd+s-z)+fds>0 .
\]
The contacts give \(s\le d\le h\le.721\) and \(s\le f<.897\).
The latter upper bound uses only the occupied top cap and the actual
anchor clearances. [Contact calculation](C1_SIDE_PAIR_TOP_BOUNDS.md)

This polynomial is quadratic separately in \(d,f\). On \([a,b]\),
the three quadratic Bernstein coefficients of a polynomial \(p\)
are \(p(a), 2p((a+b)/2)-(p(a)+p(b))/2, p(b)\). Apply the rule in
each variable. Each entry in the last column is the minimum of
the nine resulting coefficients, multiplied by \(10^{12}\).
The Bernstein basis is nonnegative throughout each closed interval
and its entries sum to one.

| \(d\) interval | \(f\) interval | Scaled minimum |
|---|---|---:|
| \([.093,.450]\) | \([.093,.300]\) | 7215807 |
| \([.093,.450]\) | \([.300,.897]\) | 292751400 |
| \([.450,.721]\) | \([.093,.897]\) | 159463800 |

Thus \(P>0\), contradicting the cost \(3s\) of an occupied
\(RFH\). Hence \(h>.721\). Finally
\[
 3s\le [RFH]=(j-f)(1-h)+f(1-k).
\]
If \(k\ge.721\) the right side is strictly below \(j(1-.721)\le3s\)
because \(j>f\). This proves the second bound.

Consequently the one-occupied-ear placement may be transposed to
put the occupant in \(RFH\), with \(h>.721,\ k<.721\),
the other central point in \(HCR\), and \(\max(c,j)>\kappa\).
The other placement has both central points in \(HCR\).

## The remaining geometric alternatives

Put \(w=847/1000<\kappa\). The following closed restrictions, in
addition to the preceding two placements, cover all configurations.
The first three rows use \(h\ge c\), by transposition. The last
two rows use the already chosen orientation with \(RFH\) occupied.

| Both central points in \(HCR\)? | Additional restrictions |
| --- | --- |
| yes | \(w\le c\le h\) |
| yes | \(c\le w\le h,\ j\ge w\) |
| yes | \(c\le h\le w,\ j,k\ge w\) |
| no | \(c\ge w,\ h\ge.721,\ k\le.721\) |
| no | \(c\le w,\ j\ge w,\ h\ge.721,\ k\le.721\) |

For both central points in \(HCR\), both ears are empty and both
rectangle bounds apply. In the fourth and fifth rows \(CDR\)
is empty, giving \(\max(c,j)>\kappa\), and the occupied-ear
calculation applies to \(h,k\). This proves the cover, including
overlapping endpoints.

## Both central points in \(HCR\) with both contacts at most .847

In the two-central-point placement, transpose to \(h\ge c\), and
suppose \(h\le w=847/1000\). The lower triangle gives
\(h\ge\sqrt{\rho}>833/1000\) and \(c>\rho/w\).
Both ears \(CDR,RFH\) are empty, so both rectangle consequences above
apply. Since \(h,c\le w<\kappa\), they give \(j,k>w\).
For each \(T=(x,y)\) in the upper set \(D,F,P,Q,R\) the area
tests on \(OH,OC\) give \(x,y\ge s\). For \(P,Q\) the tests inside
\(HCDF\) give \(x,y\le1-s\). Either lower point has \(x,y\ge s\)
and \(x,y\le1-2s\) by its three fan areas in \(OHC\).
Each normalized top contact satisfies \(s\le d,f<897/1000\).
For the upper bound, the single top point gives
\((1-d)(1-f)\ge s\). If \(d\ge d_1=.897\), then \(f\le10/103\).
The two actual clearances \(hf,[HDF]\ge s\) give
\[
 f([HDF]-s)+(1-f)(hf-s)=f-df^2-s\ge0 .
\]
Yet \(x-d_1 x^2\) is increasing on \([0,10/103]\), and its
right endpoint is \(s-46337/10609000<s\). Transposition
gives the bound for \(f\).

Label the two points in \(OHC\) by \(Y,Z\), with \([OYZ]>0\),
and the two points in \(HCR\) by \(P,Q\), with \([OPQ]>0\).
These two label choices are independent. The hull is \(O,C,D,R,F,H\).
All four interior points satisfy the inward tests for the hull,
for their respective containing triangles and, at \(P,Q\), inside
\(HCDF\). They are inward of \(CR,RH\) because the ears are empty.
At each lower point \(X\) the two lines \(HT,CT\) for
\(T=P,Q,R\) enclose \(OHC\) on the \(O\) side, since each
\(T\) is strictly above \(HC\) and has positive coordinates.
The resulting tests are \([HXT]>0,[CXT]<0\).
The corresponding contact diagonals give \([HDX],[HFX]<0\)
and \([CDX],[CFX],[DFX]>0\), using the side containing \(O\).
The hull tests give \([DXR]<0,[FXR]>0\).
These are precisely the signs in the initial table. All its boxes
are closed relaxations of the established intervals.
[Initial box, signs and determinants](C1_BBIIT_EAR_TABLES/both-low/domain.md)

The [tree](C1_BBIIT_EAR_TABLES/both-low/tree.md) splits 28 times
by the two signs of an actual determinant. Each branch includes all
its previous signs. At a refined step the coordinate box is the
output of its named predecessor or of the second
[global stage](C1_BBIIT_EAR_TABLES/both-low/global.md). The scalar
relations and coordinate contractions use the same rules as in the
[top-word table guide](C1_TOP_TRIPLE_CORE_TABLES/INDEX.md), with
`top_cost` equal to \((1-d)(1-f)-s\). An initial `bbiit_ear`
bound uses the already proved ceiling .53 for either top ear.
The 29 leaves have eleven geometric contradictions, sixteen
incompatible area intervals and two empty coordinate intervals.
Thus the entire placement with both \(P,Q\) in \(HCR\) and
\(\max(h,c)\le.847\) is excluded. The placements with a larger
contact or an occupied ear still require separate arguments.

## The occupied \(RFH\) placement with \(c\le.847\)

This is the fifth row of the cover. Label \(P\) in \(HCR\), \(Q\) in
\(RFH\), and order the two lower points so that \([OYZ]>0\).
Both \(P,Q\) belong to \(HCDF\). The hull and the lower-point
and contact tests are as in the preceding case. All four points
satisfy the inward \(CR\) test because \(CDR\) is empty.
The initial signs for \(P\) use \(HCR\), and the initial signs
for \(Q\) use \(RFH\). This row allows both contact orders and
both orders of \(P,Q\) as seen from \(O\).

Use the contact interval \(s\le d,f\le.897\) and the lower and
central point intervals of the preceding case. The occupied-ear
and rectangle arguments give
\[
 .721\le h\le1,\qquad \rho\le c\le w,\qquad
 w\le j\le1,\qquad s+s/(1-s)\le k\le.721 .
\]
The lower bound on \(k\) uses the cap test
\((1-f)(k-d)\ge s\) and \(d,f\ge s\).
The complete [initial table](C1_BBIIT_EAR_TABLES/left-r/domain.md)
gives these closed intervals and all signed determinants.

The upper bounds on \(CDR,RFH\) are .265 and .53, respectively,
because the first ear is the empty one when the second contains an
occupant. The factor `top_actual` is \((j-f)(k-d)-s\). It is
nonnegative by the actual cap identity
\((j-f)(k-d)=[DRF]+(1-j)(1-k)\).
The two additional factors `lower_secant_P_0`,
`lower_secant_P_1` are rows one and two of the cancelled support
inequalities, with the displayed secants on the input box.
The angular rates in that lemma use only the two lower points and
the selected actual upper point \(P\).
[Support factors and rates](C1_TWO_LOWER_TWO_CENTRAL_TOP_SUPPORT.md)

The [tree](C1_BBIIT_EAR_TABLES/left-r/tree.md) has 62
determinant-sign splits, and both children of every split are included.
Its 63 leaves have 12 geometric, 42 area-interval, seven coordinate
and two weighted contradictions. The [global stages](C1_BBIIT_EAR_TABLES/left-r/global.md)
and all branch tables use the [exact table rules](C1_TOP_TRIPLE_CORE_TABLES/INDEX.md),
with the source values just specified. This excludes the entire
fifth row.

## The occupied \(RFH\) placement with \(c\ge.847\)

The fourth row uses the same labeled point placements and initial
signs. Replace \(c\)'s interval by \([w,1]\) and \(j\)'s by
\([s+s/(1-s),1]\), using the actual top clearance
\((1-d)(j-f)\ge s\). No other initial interval changes.
The contact and ear caps, the actual top factor and the two
cancelled support factors at \(P\) apply as before.

For \(X=(x,y)=Y,Z\), the three lower fan tests also give
\(x/c+y/h\le1-s/(hc)\le1-s\). Thus \(1-s-x-y\ge0\),
which is the factor `lower_sum_X`. The additional conditional
factor `lower_ray_F` uses the two lower points on the same side
of \(OF\). The exact truncation by clearance and its secant are
proved in the [upper-ray cut](C1_TWO_LOWER_TWO_CENTRAL_TOP_SUPPORT.md#a-cut-when-both-lower-points-are-on-one-side-of-an-upper-ray).

The [domain](C1_BBIIT_EAR_TABLES/left-c/domain.md) and
[two global stages](C1_BBIIT_EAR_TABLES/left-c/global.md)
start the [tree](C1_BBIIT_EAR_TABLES/left-c/tree.md). Its 63
determinant-sign splits give 64 terminal contradictions.
There are 12 geometric, 28 area-interval, 21 coordinate and three
weighted contradictions. The latter have 348 multipliers and
strictly negative upper bounds. This excludes the fourth row,
including \(c=w\).

Together with the fifth row this excludes every placement with
one central point in an outer ear. The remaining BBIIT placements
have both central points in \(HCR\), with at least one contact
height above .847.

## Larger contacts when both central points lie in \(HCR\)

The first two rows use the initial signs of the low-contact
two-central-point case. In particular take \(h\ge c\), \([OYZ]>0\)
and \([OPQ]>0\). The intervals for \(d,f\) and the lower and central points apply
in both rows. Retain the
lower bounds \(h,c>\rho\) from \(hc>\rho\).

For the remaining top-coordinate bounds, the area of \(HCR\) is
\(hj+ck-hc>\rho\). Using \(j,k,h,c\le1\),
\[
 hj+ck-hc\le1-h(1-j),\qquad
 hj+ck-hc\le1-c(1-k).
\]
Thus \(j\ge1-(1-\rho)/h_0\), \(k\ge1-(1-\rho)/c_0\)
for the respective lower endpoints \(h_0,c_0\) of the contact box.
Use these together with the actual top coordinate floor \(s+s/(1-s)\).
In the first row, both lower endpoints are \(w\). In the second
row, use \(h_0=w,c_0=\rho\). Its additional bound \(j\ge w\)
follows from the empty-\(CDR\) rectangle argument. Both rows
use the closed hull and contact upper intervals printed in their
domain tables, and the upper bound .53 on each ear.

The named support factors for a fixed actual upper point use the
[two-lower-point support inequalities](C1_TWO_LOWER_TWO_CENTRAL_TOP_SUPPORT.md).
A `lower_secant_T_i` factor uses the affine secant of the indicated
squared coordinate in row \(i+1\), and a `lower_exact_T_i` factor
retains that square. A `lower_ray_T` factor uses the truncated
one-wing triangle from the same note. The top point gives
`top_actual` as before, and the actual convex pentagon \(C,D,R,F,H\)
gives `top_pentagon`.
[Occupied-top pentagon bound, equation (6)](C1_TWO_LOWER_TWO_CENTRAL_TOP_CAPS.md)

For the second row the [domain](C1_BBIIT_EAR_TABLES/both-h/domain.md)
and [two global stages](C1_BBIIT_EAR_TABLES/both-h/global.md)
start the [tree](C1_BBIIT_EAR_TABLES/both-h/tree.md), which
has 141 actual determinant splits. The 142 leaves comprise 48
geometric, 70 area-interval, 16 coordinate-interval and eight
weighted contradictions. Both signs occur at each split, and the
terminal bounds in the table give strict contradictions. This
excludes \(c\le w\le h\) with both central points in \(HCR\).

## The first row and the complete exclusion

For \(w\le c\le h\), the [domain](C1_BBIIT_EAR_TABLES/both-c/domain.md)
and [two global stages](C1_BBIIT_EAR_TABLES/both-c/global.md)
start the [tree](C1_BBIIT_EAR_TABLES/both-c/tree.md).
Its 215 determinant splits give 216 terminal contradictions:
68 geometric, 76 area-interval, 40 coordinate-interval and 32
weighted. The weighted leaves have 4,425 multipliers.
For example, the [14-term leaf](C1_BBIIT_EAR_TABLES/both-c/rmmmpppmmpp.md)
has upper bound \(-21436918315237/196625000000000\).
Both strict signs occur at every split and each contradiction
covers the inherited box. This excludes the first row.

All five closed roots have 509 determinant splits and 514
contradictions. Thus the count \((2,2,0,1,0)\) is excluded
at \(s=93/1000<2A^*\).
[Complete table index](C1_BBIIT_EAR_TABLES/INDEX.md)
