# Cancelling contact factors in two-lower-point support

This is a source lemma, with no whole-count claim. Use the actual BBIIT
domain in [the geometry note](C1_TWO_LOWER_TWO_CENTRAL_GEOMETRY.md).
Put \(s=93/1000\). For any actual upper point
\(T=(x,y)\in\{D,F,P,Q,R\}\), set

\[
B=hc,\qquad X=cy,\qquad K=hx,\qquad V=hx+cy-hc.
\]

The positive convex actual quadrilateral \(O,C,T,H\) contains the two
actual lower points \(Y,Z\). Its four actual subtriangle areas are
\(X,B,K,V\), respectively in the order \(OCT,OCH,OTH,CTH\).
Here \(h,c>0\) and \(V>0\). 
Let \(a=(1142/125)s\). The two-occupant quadrilateral support theorem,
applied in the four cyclic orders below, gives

\[
\begin{array}{c|c|c}
\text{order}&\text{support inequality}&\text{after cancellation}\\\hline
OCTH&XB\ge a(B-K)&c^2y\ge a(c-x)\\
HOCT&BK\ge a(K-V)&h^2x\ge a(h-y)\\
THOC&KV\ge a(V-X)&xV\ge a(x-c)\\
CTHO&VX\ge a(X-B)&yV\ge a(y-h).
\end{array}                                                   \tag{1}
\]

The positive factors cancelled from the four rows are \(h,c,h,c\).
For example, \(XB-a(B-K)=h(c^2y-a(c-x))\). Thus (1) retains
the exact actual support products while reducing their coordinate degree
from four to three. No upper cap is substituted before this cancellation.
The support theorem and its actual-point premises are recorded in
[QUADRILATERAL_SUPPORT.md](QUADRILATERAL_SUPPORT.md) and the strengthened
rates in [the geometry note, Section 4](C1_TWO_LOWER_TWO_CENTRAL_GEOMETRY.md).

If the angular positions are known, the rates can be sharpened. Let
\(m\) count the chosen lower points inside \(OHT\). The other
\(2-m\) lower points are inside \(OCT\): the actual line \(OT\)
splits \(OHC\), while both lower points satisfy the other wing-edge
tests. Neither lower point lies in \(HCT\). Use the following rational
rates \(q_i\), replacing \(a\) in row \(i\) by \(q_i s\):

| \(m\) | Row 1 | Row 2 | Row 3 | Row 4 |
| ---: | ---: | ---: | ---: | ---: |
| 0 | \(299/31\) | \(139/10\) | \(149/5\) | \(139/10\) |
| 1 | \(1142/125\) | \(1142/125\) | \(199/10\) | \(199/10\) |
| 2 | \(139/10\) | \(299/31\) | \(139/10\) | \(149/5\) |

To check this table, the two triangle-occupant counts used by the stronger
support rate are \((m,0)\), \((0,2-m)\), \((2-m,2)\), and
\((2,m)\), in the four rows. The existing rate table gives the printed
values, except that in row 1 for \(m=0\) and row 2 for \(m=2\)
both chosen lower points lie in both product triangles; the existing
nested-support rate is \(299/31\). These are statements about the
selected six actual points. Additional actual points in the quadrilateral
do not invalidate them. If the lower ray comparisons are unknown, rows
1 and 2 retain the uniform rate \(1142/125\), and rows 3 and 4 may use
\(139/10\), the minimum of their table entries. A smaller positive
rate stays valid: if the right-hand difference is nonpositive the
inequality is immediate, and otherwise reducing its coefficient weakens
the right side. The weaker uniform rate \(1142/125\) also remains valid
in all four rows.

Each row has a multiaffine upper envelope on a fixed, already proved box.
Write \(c_0\le c\le c_1\), \(h_0\le h\le h_1\),
\(x_0\le x\le x_1\), and \(y_0\le y\le y_1\). For the
appropriate positive \(a_i=q_i s\), define

\[
\begin{aligned}
G_1&=((c_0+c_1)c-c_0c_1)y-a_1(c-x),\\
G_2&=((h_0+h_1)h-h_0h_1)x-a_2(h-y),\\
G_3&=h((x_0+x_1)x-x_0x_1)+cxy-hcx-a_3(x-c),\\
G_4&=hxy+c((y_0+y_1)y-y_0y_1)-hcy-a_4(y-h).
\end{aligned}                                                 \tag{2}
\]

Each \(G_i\) is nonnegative: subtract the corresponding nonnegative
left-minus-right expression of (1). The four differences are exactly

\[
y(c-c_0)(c_1-c),\quad x(h-h_0)(h_1-h),\quad
h(x-x_0)(x_1-x),\quad c(y-y_0)(y_1-y).
\]

Every factor is nonnegative. The constants in (2) are fixed before the
source is used. The \(G_i\) are multiaffine in the fourteen physical
coordinates, so the existing complete-endpoint-line rule may use them.
The original cubic expressions in (1), which may repeat a coordinate,
are used only in polynomial comparisons. Both forms retain their explicit
actual upper point and the two lower-ray signs when the sharper table
is used.

## Actual-contact specializations

For \(T=D=(1,d)\), the same actual quadrilateral is \(OCDH\),
which contains both chosen lower points. Its \(V\) equals \([HCD]\).
Rows 2 and 3 of (1) become

\[
h^2\ge q_2s(h-d),\qquad [HCD]\ge q_3s(1-c).       \tag{3}
\]

For \(T=F=(f,1)\), use the actual quadrilateral \(OCFH\).
Its \(V\) equals \([HCF]\), and rows 1 and 4 give

\[
c^2\ge q_1s(c-f),\qquad [HCF]\ge q_4s(1-h).       \tag{4}
\]

In particular \(q_3,q_4\ge139/10\) without any additional ray
assumption. The exact \(m\)-dependent rates in the preceding table
may be used when the corresponding \(OD\) or \(OF\) lower-ray tests
are known. The first inequalities of (3) and (4) have the affine
upper envelopes

\[
 (h_0+h_1)h-h_0h_1-q_2s(h-d)\ge0,\qquad
 (c_0+c_1)c-c_0c_1-q_1s(c-f)\ge0.
\]

Their gaps over the original left-minus-right expressions are
\((h-h_0)(h_1-h)\) and \((c-c_0)(c_1-c)\).
The other two inequalities in (3) and (4) are already multiaffine
quadratic expressions in the actual contact coordinates. Constant
coordinates cause no difficulty in (2): take \(x_0=x_1=1\) for D
and \(y_0=y_1=1\) for F.

## A single selected lower point

The same cancellation works if only one actual point Y is selected
strictly inside \(OHC\). This is a separate version for one-lower
C1 domains, using their own actual upper points and proved coordinate
boxes. The quadrilateral \(OCTH\) contains Y. Let
\(m\in\{0,1\}\) record whether Y lies in \(OHT\). Replace the
rates above by the one-occupant support rates

| \(m\) | Row 1 | Row 2 | Row 3 | Row 4 |
| ---: | ---: | ---: | ---: | ---: |
| 0 | \(29/5\) | \(149/20\) | \(12\) | \(149/20\) |
| 1 | \(149/20\) | \(29/5\) | \(149/20\) | \(12\) |

The four count pairs are \((m,0),(0,1-m),(1-m,1),(1,m)\).
Thus rows 1 and 2 have unconditional rate \(29/5\), and rows 3
and 4 have unconditional rate \(149/20\). Equations (1)–(4) and
all four secant-gap proofs remain unchanged with these rates. Additional
actual points are ignored by this selected-point argument; they are
neither assumed absent nor assigned new positions.

## Scalar envelopes for the actual-corner normalization

In the one-corner coordinate model O is actual, D has abscissa one and
F has ordinate one. The three actual unsigned areas

\[
\mathcal H=A_{OHD}=h,\qquad\mathcal C=A_{OCF}=c,
\qquad\mathcal B=A_{OHC}=hc
\]

therefore satisfy \(\mathcal B=\mathcal H\mathcal C\).
Let \([h_0,h_1]\) and \([c_0,c_1]\) be their already proved input
coordinate intervals. The four linear inequalities in these actual
area variables are

| Side and choice | Linear inequality | Left minus right |
| --- | --- | --- |
| upper, 0 | \(h_1\mathcal C+c_0\mathcal H-\mathcal B\ge h_1c_0\) | \((h_1-h)(c-c_0)\) |
| upper, 1 | \(h_0\mathcal C+c_1\mathcal H-\mathcal B\ge h_0c_1\) | \((h-h_0)(c_1-c)\) |
| lower, 0 | \(\mathcal B-h_0\mathcal C-c_0\mathcal H\ge-h_0c_0\) | \((h-h_0)(c-c_0)\) |
| lower, 1 | \(\mathcal B-h_1\mathcal C-c_1\mathcal H\ge-h_1c_1\) | \((h_1-h)(c_1-c)\) |

Every remainder is nonnegative, including at shared endpoints. These
relations retain the normalization correlation when scalar areas are
temporarily treated as separate variables. Their constants come from
the input box, before the scalar derivation. They introduce no virtual
triangle or clearance. This version requires the actual corner O;
it is not asserted for a corner-free six-contact normalization.

## Occupied-ear support with immutable input bounds

For any actual convex pentagon \(ABCDE\), use the notation
\(X=A_{ABE},Y=A_{ADE},Z=A_{ABD}\) and
\(\Delta=X-Z=Y-A_{BDE}\). The
[pentagon ear-support lemma](PENTAGON_EAR_SUPPORT.md) gives
\(\Omega-\Delta\ge(\sqrt{A_{ABC}}+\sqrt{A_{BCD}}+
\sqrt{A_{CDE}})^2\) when \(\Delta>0\), where
\(\Omega=XY/\Delta\).

Take only immutable initial bounds in this paragraph. For each of the
three ears choose a nonnegative rational \(r_i\) with
\(s r_i^2\le L_i\), where \(L_i\) is its established area floor.
Then \(K_0=s(r_1+r_2+r_3)^2\) is a lower bound on the square-root
sum. In the literal implementation the choice is the largest multiple
of \(1/100\) satisfying the displayed square comparison; no floating
square root is a premise. If \(n\) of these three ears are known
occupied, the additional valid lower bounds on that sum are
\(s(9,139/10,199/10,27)_n\). Set \(K\) to the larger of this
quantity and \(K_0\), and put
\[
 g=\max(0,L_X-H_Z,L_Y-H_{BDE}),\qquad
 C=\max(11s,K+g).
\]
The scalar support relation is
\[
 XY\ge C(X-Z).
\]
For \(\Delta>0\), the ear lemma gives \(\Omega\ge K+\Delta
\ge K+g\), and the ordinary five-point support theorem gives
\(\Omega\ge11s\). For \(\Delta\le0\), its right side is
nonpositive. All endpoint references defining \(K,g\) precede this
relation. When no ear is occupied, the expression is
\(\max(11s,9s+g)\) if only the basic floors are used.

## Affine line tests in derived triangles

If three inward tests have already proved that an actual point \(T\)
is strictly inside an actual triangle \(ABC\), every signed line test
at \(T\) is a positive barycentric average of its tests at \(A,B,C\).
Thus tests of one strict sign at all three vertices force that sign
at \(T\). If exactly one vertex test is unknown, the point test has
the opposite sign (or is zero because \(T\) lies on the test line),
and at least one other vertex test has the known strict sign, the
unknown vertex test must have the opposite sign. Vertices on the
test line contribute zero. Every such inference retains the three
earlier inward tests establishing containment; a derived triangle
does not create a new placement assumption.

## A cut when both lower points are on one side of an upper ray

Let \(T=(x,y)\in\{D,F,P,Q,R\}\). Its ray from \(O\) crosses
\(HC\) at \(J=hc\,T/(hx+cy)\). Suppose \([OTY],[OTZ]>0\), so
both lower points are in \(OHJ\) and their signed distances from
the ray, measured by this determinant, are at least \(s\).
The determinant is \(hx\) at \(H\) and zero at \(O,J\). Thus
\(hx>s\), since neither occupant equals \(H\).
Let \(J'\) be the point of \(HJ\) where its value is \(s\).
The part of \(OHJ\) where the value is at least \(s\) is the
triangle bounded by \(HJ'\), \(HO\), and the line through \(J'\)
parallel to \(OJ\). It lies in \(OHJ'\). The latter contains
the two prescribed actual vertices \(O,H\) and the two occupants
\(Y,Z\). Its doubled area is \(hc(hx-s)/(hx+cy)\).

The four-point endpoint theorem gives
\[
 hc(hx-s)\ge ms(hx+cy),\qquad
 m=\begin{cases}4,&O,H,Y,Z\text{ have a quadrilateral hull},\\
 3,&\text{otherwise}.\end{cases}
\]
For the positive-side choice, check the four cyclic triple signs
of \(H,O,Y,Z\) or \(H,O,Z,Y\) before using \(m=4\). For two negative
tests, transpose the construction and use \(C\) in place of \(H\);
the floor becomes \(hc(cy-s)\ge ms(hx+cy)\). Here the two positive
cyclic orders for the four-point hull test are \(O,C,Y,Z\)
and \(O,C,Z,Y\). If neither set of four signs is established, the
three-area bound remains available. [Four-point endpoint theorem, §1](TYPE_II.md)

In the factor `lower_ray_T` move the right side to the left.
Replace \(h^2\) or \(c^2\) in the first term by its secant
on the input box. The replacement increases the left side by
\(cx(h-h_0)(h_1-h)\) or \(hy(c-c_0)(c_1-c)\), respectively.
The resulting polynomial is multiaffine and nonnegative. All
labels apart from the auxiliary endpoints \(J,J'\) are actual.
