# The C1 configuration with no point in the lower anchor triangle

Use the C1 anchors

\[
O=(0,0),\quad C=(c,0),\quad D=(1,d),\quad
F=(f,1),\quad H=(0,h),
\qquad 0<d\le h<1,\quad0<f\le c<1.
\]

The minimum actual triangle area is at least
\(A_0=(9\sqrt{65}-55)/320\). All areas in brackets below are
**signed doubled areas**. Put

\[
s=\frac8{73}<2A_0,\qquad K=4+2\sqrt3,\qquad
\rho=\frac{49}{60}<Ks.
\]

Transposing the square if necessary, arrange

\[
f\le d.                                                   \tag{1}
\]

This preserves the C1 conditions and the number of points in \(OHC\).
The preliminary cap results below apply whether or not that triangle
is empty. The zero-lower hypothesis is imposed in Section 3.

## 1. General cap and fan bounds

Write

\[
\begin{aligned}
\mathcal R&=\operatorname{conv}\{C,D,(1,0)\}\setminus CD,\\
\mathcal T&=\operatorname{conv}\{D,F,(1,1)\}\setminus DF,\\
\mathcal L&=\operatorname{conv}\{F,H,(0,1)\}\setminus FH.
\end{aligned}
\]

These are the three exterior caps of the prescribed pentagon
\(OCDFH\). A free point on an actual anchor chord gives zero area,
so every relevant containment across such a chord is strict. Contacts
on the square boundary are allowed throughout.

The actual anchor areas give

\[
hf,cd\ge s,\qquad
d,f\le1-s.                                                \tag{2}
\]

Indeed \([HDF]=1-h+f(h-d)\le1-d\), while
\([CDF]=1-c+d(c-f)\le1-f\). Thus every anchor parameter is
at least \(s\), and every coordinate of every free point is at
least \(s\), by the areas with \(OH\) and \(OC\).

### A side cap with two points has a triangular outer hull

**Lemma 1.** If \(\mathcal R\) contains two free points, one,
say \(Y\), lies strictly in \(CDX\cap ODX\), where \(X\) is the other.
Moreover,

\[
d\ge Ks>\rho,\qquad d(1-c)\ge3s,\qquad c\le1-3s.       \tag{3}
\]

The transposed assertion holds for \(\mathcal L\): one point
lies in the triangle formed by \(H,F\) and the other, and
\(f\ge Ks\), \(f(1-h)\ge3s\).

**Proof.** Give the right cap argument; transposition gives the other.
For each of its two points, extend the line joining it to \(D\)
to the bottom side. The more distant intercept from \(O\) determines
a triangle with base endpoints \(O,D\), containing \(C,X,Y\),
and having one of \(X,Y\), say \(X\), as a contact on its
nonhorizontal leg. Its other leg contains \(C\). Both contacts
are in the relative interiors of the legs. Equal intercepts would
make \(D,X,Y\) collinear.

The doubled support area \(\Omega\) is at most \(d\). In the
half-square normalization of Section 1 of
[TYPE_II.md](TYPE_II.md), the remaining point \(Y\) is outside
the triangle formed by the base endpoints and the first leg contact,
because it is beyond \(CD\). Only cells III, IV, V in that note
are possible. Their normalized doubled minimum bounds are

\[
\frac1K,\qquad\frac1{12},\qquad
\frac{5\sqrt5-11}{2}<\frac1{10},
\]

respectively. Since the normalized minimum is at least
\(s/\Omega\ge s>1/10\), cells IV and V are impossible.
Cell III puts \(Y\) in \(CDX\cap ODX\), and gives
\(\Omega\ge Ks\). Subdivision of \(CDX\) at \(Y\)
then gives \([CXD]\ge3s\). The doubled cap area is
\(d(1-c)\), so all assertions in (3) follow. \(\square\)

Each side cap has at most two free points. For example,
\(\operatorname{conv}\{O,D,(1,0)\}\), of doubled area
\(d\le1\), contains \(O,D,C\) and the right cap. Three
free points there would contradict the closed two-actual-vertex
capacity theorem, Theorem 1 of
[TYPE_II_COMPLETION.md](TYPE_II_COMPLETION.md).

The same argument proves the stronger fan restrictions

\[
\boxed{\#\{\text{free points below }OD\}\le2,
\qquad
\#\{\text{free points above }OF\}\le2.}                 \tag{4}
\]

The two containers contain all square points in the indicated fans;
their additional anchor contacts are \(C\) and \(H\), respectively.

### A side cap with one point

For \(X=(x,y)\in\mathcal R\), multiply
\(-[CDX]\ge s\) by \(c\), and \([OCX]\ge s\) by
\(1-c\). Their sum is

\[
cd(x-c)\ge s,
\qquad\text{hence}\qquad dc(1-c)\ge s.                 \tag{5}
\]

Transposition gives, for \(X\in\mathcal L\),

\[
fh(1-h)\ge s.                                            \tag{6}
\]

Consequently a right-cap point forces
\(d\ge4s\) and \(1/7<c<6/7\); a left-cap point forces
\(f\ge4s\) and \(1/7<h<6/7\). For the strict coordinate
intervals use (2) and
\(s/(1-s)=8/65>6/49\).

### Top-cap counts

Let

\[
\Omega_0=(1-d)(1-f)
\]

be the doubled area of \(\mathcal T\). If it contains one,
two, or three free points, respectively, then

\[
\Omega_0\ge s,\qquad
\Omega_0\ge3s,\qquad
\Omega_0\ge\frac{s}{3-2\sqrt2}>\frac7{11}.              \tag{7}
\]

The two- and three-point assertions are the four- and five-point
endpoint-triangle theorems in Section 1 of `TYPE_II.md`, applied
with prescribed vertices \(D,F\). Four free points are impossible
by the two-actual-vertex capacity theorem.

Under (1), (7) gives the convenient rational bounds

| Number in \(\mathcal T\) | Bound on \(f\) | Bound on \(d\) |
|---|---|---|
| at least one | \(f<67/100\) | \(d\le57/65\) |
| at least two | \(f<3/7\) | \(d\le41/65\) |
| three | \(f<13/64\) | \(d\le204/715\) |

For the first column use \(f\le d\), hence
\(\Omega_0\le(1-f)^2\). For the second use
\(f\ge s\), hence \(\Omega_0\le(1-s)(1-d)\).
All endpoint comparisons in the table are rational after squaring.

## 2. Complete exclusions for several multiple-cap occupancies

**Theorem 2.** Under (1), the following hold for every competitive C1
configuration:

1. The left cap contains at most one free point.
2. If the right cap contains two, the left cap is empty and the top
   cap contains at most one.
3. If the left cap is occupied, the top cap contains at most one.
4. If the right cap is occupied, the top cap contains at most two.

**Proof.** Two left-cap points would give
\(f\ge\rho\) and \(f(1-h)\ge3s\) by Lemma 1. But
\(f\le d\le h\) and \(f\le1\) give

\[
\rho\le f\le h\le1-3s<\rho,
\]

a contradiction.

For two right-cap points, (3) gives \(d,h\ge\rho\) and
\(c,f\le1-3s\). A left-cap point would also give (6), whereas

\[
fh(1-h)\le(1-3s)\rho(1-\rho)
=s-\frac{2389}{262800}<s.
\]

Here \(h(1-h)\) decreases for \(h\ge\rho>1/2\).
Two top-cap points would give \(\Omega_0\ge3s\), but
\(\Omega_0\le1-d\le1-\rho<3s\).

If the left cap is occupied, (6) gives \(f\ge4s\). As
\(d\ge f\),

\[
\Omega_0\le(1-4s)^2=3s-\frac{71}{5329}<3s,
\]

excluding two top-cap points. Finally a right-cap point gives
\(d\ge4s\), so \(\Omega_0\le1-4s<7/11\), excluding
three top-cap points by (7). \(\square\)

**Lemma 3 (the complete three-top-cap hull).** If the top cap contains
three free points, exactly two, say \(R,S\), are vertices of their
joint hull with \(D,F\). Its cyclic order is \(D,R,S,F\),
and the third point \(T\) satisfies

\[
T\in DFR\cap DFS.                                        \tag{8}
\]

**Proof.** By (2),
\(\Omega_0\le(1-s)^2<\rho<Ks\). A triangular hull for
the five points \(D,F,R,S,T\) has two interior points and is
impossible by the two-interior triangle theorem. In their support
normalization, cells I and III of `TYPE_II.md` likewise require
\(\Omega_0\ge Ks\). Cells IV and V require a normalized
doubled minimum at most \(1/12\) or below \(1/10\), which
is impossible since \(s/\Omega_0\ge s>1/10\). The only
remaining cell is II. Its stated containments are exactly (8),
with the two leg contacts as \(R,S\). \(\square\)

## 3. The complete zero-lower occupancy list

Now suppose none of the four free points is in \(OHC\). Each
lies either in the upper quadrilateral \(HCDF\) or in one of
the three exterior caps. The doubled quadrilateral area is

\[
W=1-(h-d)(c-f)\le1.
\]

It contains at most two free points: three would give
\(W\ge10s>1\), by the seven-point quadrilateral theorem in
[QUADRILATERAL_HULL.md](QUADRILATERAL_HULL.md).

Let \((n_U,n_R,n_T,n_L)\) denote the four occupancies in
\(HCDF,\mathcal R,\mathcal T,\mathcal L\). They sum to four.
The preceding results leave exactly these nine possibilities:

\[
\begin{gathered}
(2,2,0,0),\ (2,1,1,0),\ (2,1,0,1),\ (2,0,2,0),\ (2,0,1,1),\\
(1,2,1,0),\ (1,1,2,0),\ (1,1,1,1),\ (1,0,3,0).
\end{gathered}                                             \tag{9}
\]

In particular, at least one free point is in the upper quadrilateral,
and at least two are outside the prescribed pentagon. This is an
occupancy reduction; by itself it does not exclude all nine rows.

## 4. The remaining affine bounds

The following additional facts will be used to exclude every row of (9).
First, the actual triangle \(HDF\) has capacity at most one. If
\(U=[HDF]\ge\rho\), then \(U\le1-d\) gives
\(f\le d\le1-\rho\), while \(hf\ge s\) gives

\[
U=1-h(1-f)-df
\le1+s-\frac{s}{f}
\le1+s-\frac{s}{1-\rho}
=\frac{411}{803}<\rho.
\]

This contradiction proves \(U<\rho<Ks\), so the two-interior
triangle theorem gives the claimed capacity.

Every free point \(X=(x,y)\) satisfies \(x,y\ge s\).
Its remaining bounds depend only on its region:

| Region of \(X\) | Further nonnegative expressions |
|---|---|
| \(HCDF\) | \(1-s-x,\ 1-s-y\) |
| \(\mathcal R\) | \(1-x,\ d-y-s,\ x-c-s\) |
| \(\mathcal T\) | \(1-x,\ 1-y,\ x-f-s,\ y-d-s\) |
| \(\mathcal L\) | \(f-x-8/41,\ 1-y,\ y-h-8/65,\ x-7s/6\) |

For an upper point use the two exact identities

\[
\begin{aligned}
(1-f)[CDX]+(1-c)[DFX]&=[CDF](1-x),\\
(1-d)[FHX]+(1-h)[DFX]&=[DFH](1-y).
\end{aligned}                                             \tag{10}
\]

All areas on the left are positive. Since
\([CDF]\le1-f\) and \([DFH]\le1-d\), substituting the
bound \(s\) into each left side proves \(x,y\le1-s\).

For a right-cap point, \(-[CDX]\ge s\) gives
\(x-c\ge s\). It also lies below \(OD\), so
\(-[ODX]=dx-y\ge s\) gives \(d-y\ge s\).
For a top-cap point, write

\[
\begin{aligned}
-[DFX]
&=(1-d)(x-f)-(1-f)(1-y)\\
&=(1-f)(y-d)-(1-d)(1-x).
\end{aligned}
\]

Each expression is at least \(s\), proving the two coordinate
differences in its row.

For a left-cap point, (6) gives \(f\ge4s\), hence
\(h\ge d\ge f\ge4s\). From
\([HFX]=f(y-h)-(1-h)x\ge s\) and \(y\le1\),

\[
f-x\ge\frac{s}{1-h}\ge\frac{s}{1-4s}=\frac8{41}.
\]

The same area gives \(y-h\ge s/f\ge s/(1-s)=8/65\).
Finally \([OHX]\) in absolute value is \(hx\ge s\),
and \(h<6/7\), proving \(x>7s/6\).

## 5. A finite cover by the five anchor rays

Number the anchors cyclically as

\[
(V_0,V_1,V_2,V_3,V_4)=(O,C,D,F,H).
\]

Every anchor is on a supporting line of the square. Thus all rays
from it towards the other anchors and the free points lie in a
closed angle of size at most \(\pi\), and their anchor order is
the cyclic order just displayed. For every free point \(X\), define
its integer word \(r(X)=(r_0,\ldots,r_4)\) by

\[
[V_iV_{i+j}X]>0\quad\Longleftrightarrow\quad j\le r_i,
\qquad j=1,2,3,4.                                       \tag{11}
\]

Unlike a word for a point known to be inside the anchor pentagon,
the entries here may be zero or four. All actual signs are strict.
Antisymmetry gives the necessary finite conditions

\[
r_i\in\{0,1,2,3,4\},\qquad
(j\le r_i)\quad\Longleftrightarrow\quad
(5-j>r_{i+j}),                                           \tag{12}
\]

with indices reduced modulo five. The 3,125 possible integer tuples
have exactly 16 solutions of (12). No assertion that every solution
is geometrically realizable is needed.

Since \(OHC\) is empty, every free point has \([HCX]>0\).
Within the square it is either in \(HCDF\), with all pentagon
edge signs positive, or in exactly one of the three caps, with just
that edge sign negative. These tests leave the following eleven
words, numbered in lexicographic order:

| Index | Word | Region |
|---:|---|---|
| 0 | \((1,0,4,3,2)\) | \(\mathcal R\) |
| 1 | \((1,1,3,3,2)\) | \(HCDF\) |
| 2 | \((1,2,3,2,2)\) | \(HCDF\) |
| 3 | \((2,1,0,4,3)\) | \(\mathcal T\) |
| 4 | \((2,1,1,3,3)\) | \(HCDF\) |
| 5 | \((2,1,2,3,2)\) | \(HCDF\) |
| 6 | \((2,2,1,2,3)\) | \(HCDF\) |
| 7 | \((2,2,2,2,2)\) | \(HCDF\) |
| 8 | \((3,2,1,0,4)\) | \(\mathcal L\) |
| 9 | \((3,2,1,1,3)\) | \(HCDF\) |
| 10 | \((3,2,2,1,2)\) | \(HCDF\) |

Label the four free points \(X_0,X_1,X_2,X_3\) so their word
indices are nondecreasing. If two have the same word, order them by
increasing angle from \(O\). This gives \([OX_iX_j]>0\)
when \(i<j\) and their words agree. A collinear tie is impossible.

Retain only word multisets satisfying (9), the global C1 actual-triangle
capacity two from Section 6 of [ONE_CORNER.md](ONE_CORNER.md), and
the capacity one of \(HDF\) just proved. For
an anchor triangle, containment is determined by its three edge signs
in (11).

If two points are in \(HCDF\), they cannot occupy the same sector
of its diagonals \(HD,CF\): Theorem 2 of
[ONE_CORNER_COMPLETION.md](ONE_CORNER_COMPLETION.md) excludes that
entire six-point class, since \(W\le1\) and \(s>7/64\).
Their four pair-line signs at \(H,C,D,F\) are also determined.
If both diagonals separate them, their segment crosses both diagonals.
For an oriented diagonal \(A\to B\) separating \(P,Q\),

\[
\operatorname{sgn}[PQA]=-\operatorname{sgn}[ABP],\qquad
\operatorname{sgn}[PQB]=\operatorname{sgn}[ABP].           \tag{13}
\]

If only one diagonal separates them, Theorem 3 of
`ONE_CORNER_COMPLETION.md` says that their line isolates the middle
cyclic vertex of the triangle containing both: respectively
\(C,F,H,D\) for common triangles \(HCD,HDF,HCF,CDF\).
Equation (13) fixes which sign is the isolated sign.

Independently, whenever two free points have different word entries
at an anchor, their ray order gives

\[
\operatorname{sgn}[V_iX_aX_b]
=\operatorname{sgn}\bigl(r_i(X_b)-r_i(X_a)\bigr).        \tag{14}
\]

Discard a multiset if these two sign rules conflict. Exactly 127
multisets survive the stated tests. The two fans in (4) are exactly
the words with first entry one and three. Fifteen of the 127
multisets place three points in one such fan, leaving **112**.

For a right-cap pair, the order convention and Lemma 1 make the
first point the outer one. Besides \([OX_iX_j]>0\), its
containments give

\[
[CX_iX_j]>0,\qquad [DX_iX_j]<0.                         \tag{15}
\]

Equations (11), (13)--(15), and the positive orientations of all
anchor triples are the initial actual-triangle signs for each cell.

### The three-top-cap choices

For four of the retained multisets, with word indices

\[
(3,3,3,4),\ (3,3,3,5),\ (3,3,3,6),\ (3,3,3,7),         \tag{16}
\]

first apply Lemma 3. There are exactly three choices for the inner
cap point \(T\). Order the other two, \(R,S\), by their
angles from \(O\), so their outer hull is \(D,R,S,F\).
The containments (8) give

\[
[DRT],[DST]>0,\qquad [FRT],[FST]<0.                     \tag{17}
\]

All five anchors, \(T\), and the upper-quadrilateral point are
on the positive side of \(R\to S\). To see this without any
assumption about the free point's word, the outer edge \(RS\)
separates \(D,F\) from the upper-right corner. Its supporting
line crosses the two virtual legs \(D(1,1)\) and \(F(1,1)\).
The small part it cuts off is contained in the original top cap.
The prescribed pentagon, and hence its upper quadrilateral, is on
the other side. The sign is positive since \([ORS]>0\).
These are precisely the initial signs used for each of the three
choices in (16).

Other remaining actual-triangle signs are divided into their two
possibilities, positive and negative. The fixed finite sign trees in
the coefficient file specify every such split. No branch with zero
area is needed. Each split is exhaustive and introduces no coordinate
interval or numerical assumption.

## 6. Fixed rational cubic inequalities

Use the twelve coordinates, in this order,

\[
z=(h,c,d,f,x_0,y_0,x_1,y_1,x_2,y_2,x_3,y_3)\in[0,1]^{12}.
\]

For a cell, form the following ordered list of nonnegative affine
factors. Start with

\[
\begin{gathered}
h-s,\ c-s,\ 1-h,\ 1-c,\ d-s,\ 1-s-d,\ f-s,\ 1-s-f,\\
h-d,\ c-f,\ d-f.
\end{gathered}
\]

Append the two top-cap parameter bounds from Section 1 for each
applicable row of its table, in order from one point to three points.
If the right cap is occupied, append
\(d-4s,c-1/7,6/7-c\); if it contains two, also append
\(d-\rho,1-3s-c\). If the left cap is occupied, append
\(f-4s,h-1/7,6/7-h\). Finally, for \(X_0,\ldots,X_3\)
in order, append \(x_i-s,y_i-s\), followed by its region's row
of the table in Section 4. Denote this list by \(a_0,a_1,\ldots\).

Every signed actual triangle whose orientation is specified in the
cell gives a quadratic cost. Its lower bound is

\[
b_T=\begin{cases}
s,&\text{no further point is forced inside},\\
3s,&\text{one further point is forced inside},\\
\rho,&\text{two further points are forced inside}.
\end{cases}                                              \tag{18}
\]

Here containment means that all three oriented edge tests have the
triangle's orientation. If three points are forced inside, the cell
is already impossible by global C1 triangle capacity. The last bound
in (18) follows from the two-interior triangle theorem and
\(\rho<Ks\).

For reproducibility, index the full configuration as
\((O,C,D,F,H,X_0,X_1,X_2,X_3)\). First visit its increasing
index triples in lexicographic order and keep those with at least
two anchors. Then visit the free pairs \(a<b\) in lexicographic
order, and anchors \(V_0,\ldots,V_4\) in order, appending every
pair triangle with a known initial sign. Finally append the additional
signed triangles in their path order in the fixed tree, omitting any
already listed. Assign the bound (18) after all signs at the cell are
specified. This is the ordering of actual-triangle costs in the table.

The remaining quadratic costs, placed before the actual triangles,
are

\[
\begin{array}{ll}
W-8s,&n_U=2,\\
d(1-c)-3s,&n_R=2,\\
(1-d)(1-f)-3s,&n_T=2,\\
(1-d)(1-f)-7/11,&n_T=3.
\end{array}                                              \tag{19}
\]

The first is the six-point quadrilateral theorem in
`QUADRILATERAL_HULL.md`; the others are (3) and (7).
Denote the resulting quadratic costs by \(q_0,q_1,\ldots\).
Also use the cubic costs

\[
dc(1-c)-s\quad(n_R>0),\qquad
fh(1-h)-s\quad(n_L>0),                                   \tag{20}
\]

in that order when present. They are (5)--(6).

Each fixed certificate is a positive rational linear combination
of expressions from the following list:

\[
a_{i_1}\cdots a_{i_j}\ (1\le j\le3),\qquad
q_i,\quad q_i a_j,\qquad\text{the applicable costs in (20)}.
                                                               \tag{21}
\]

All expressions in (21) are nonnegative for a configuration in that
cell. The coefficient file
[c1_zero_lower_certificates.json](c1_zero_lower_certificates.json)
records positive integer weights and a common positive integer
denominator for each sum. The representations `f`, `q`, `c` mean,
respectively, a product of listed affine factors, a listed quadratic
cost optionally multiplied by one factor, and a listed cubic cost.

After expanding a sum as

\[
P(z)=p_0+\sum_{\alpha\ne0}p_\alpha z^\alpha,
\qquad |\alpha|\le3,
\]

its exact upper bound on the unit cube is

\[
P(z)\le p_0+\sum_{\alpha\ne0}\max(p_\alpha,0).
                                                               \tag{22}
\]

The table has **264 certificates with 33,604 positive terms**.
The largest exact upper bound in (22) is

\[
-\frac{71426698043}{72500320256}<-\frac34.
\]

Thus every sum is simultaneously nonnegative by
(21) and negative by (22), a contradiction.

The fixed trees cover every one of the 112 retained multisets. Each
binary node includes both signs of its selected actual triangle;
the four multisets in (16) include all three choices of the inner
cap point. There are exactly 264 terminal cells, each excluded by its
displayed exact certificate. Consequently every occupancy row in (9)
is impossible.

**Theorem 4 (complete zero-lower exclusion).** No competitive C1
configuration has its lower anchor triangle \(OHC\) empty. The
conclusion holds for every position of the four free points in the
closed unit square, including every possible full convex hull and
additional square-side contacts. \(\square\)

## Verification

[check_c1_zero_lower.py](check_c1_zero_lower.py) checks the rational
comparisons and the complete occupancy list.
The support-cell geometry uses the existing endpoint-triangle proofs
quoted explicitly above.

[check_c1_zero_lower_certificates.py](check_c1_zero_lower_certificates.py)
uses only standard-library rational arithmetic. It independently
enumerates (12), applies the stated word and capacity filters, rebuilds
every determinant and lower bound, verifies the exact identities (5),
(6), (10), and expands the complete fixed certificate table. It also
checks every sign-tree edge, all three choices in (16), and complete
coverage of the 112 multisets. It performs no optimization or search
over coordinates.
