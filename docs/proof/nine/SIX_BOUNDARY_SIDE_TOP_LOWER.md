# N with a side-cap point, an opposite-cap point, and a lower point

Use the six open-side N anchors
\[
A=(0,a),\ H=(0,h),\ B=(b,0),\ C=(c,0),\ D=(1,d),\ F=(f,1),
\]
\[
0<a<h<1,\quad0<b<c<1,\qquad a\le d\le h,\quad b\le f\le c.
\tag{1}
\]
The other three points have the placements
\[
X=(x,y)\in CD(1,0),\quad Y=(z,w)\in DF(1,1),
\quad Q=(r,t)\in HABC.
\tag{2}
\]
Here the square corners are virtual containing vertices. The cap points
are strictly beyond their respective actual anchor edges, and Q is below
HC and inside the anchor hexagon. Square-side positions of X or Y are
allowed. Any collinearity with actual endpoints already gives zero area.

**Theorem 1.** Every configuration in (1)--(2) has minimum ordinary
triangle area strictly less than \(7/128<A_0\). Transposition gives
the same conclusion for a left-side-cap point together with an
opposite-cap point and a lower point.

This closes the complete parent case **N6-04-L1**. There is no assumption
on the line signs involving the free points and no additional order
between f and d. The one-upper-interior case N6-04-L0 is a separate
obligation; it is not claimed by this theorem.

The proof gives an exhaustive list of eighteen radial words and one
fixed rational cubic contradiction for each. Their 3,830 positive terms
are printed in
[six_boundary_side_top_lower_certificates.json](six_boundary_side_top_lower_certificates.json).
The coefficient definitions are in
[side_top_polynomials.py](side_top_polynomials.py), and
[check_six_boundary_side_top_lower.py](check_six_boundary_side_top_lower.py)
reconstructs all determinants, containments, and exact expansions.

Assume, for a contradiction, that every actual unsigned doubled area
is at least \(s=7/64\). Write \([UVW]=\det(V-U,W-U)\).

## 1. The hull and common coordinate bounds

The full hull is the strictly convex octagon
\[
(V_0,\ldots,V_7)=(A,B,C,X,D,Y,F,H),\qquad V_8=Q.
\tag{3}
\]
The prescribed contacts remain extreme on their square sides. The cap
inequality \([CXD]>0\) and \(w>d\) imply \([CXY]>0\),
while \([XDY]>0\) follows from \(x,z\le1\), \(y<d<w\).
Thus the two edges through X still support after Y is added. The edges
DY and YF support all points below DF: their supporting rays meet in
the top-right cap, and the side-cap point is below D. These facts also
follow directly from the cap orders \(y<d<w\), \(f<z\),
and \(f\le c<x\). Q is inside the anchor hexagon and hence
inside this octagon. Positive minimum area makes every indicated hull
turn and every required containment strict.

Put \(L=h-a\), \(M=c-b\). The actual anchor and side-cap
costs are
\[
aM\ge s,\quad bL\ge s,\quad My\ge s,
\quad d(x-c)-(1-c)y\ge s.
\tag{4}
\]
Consequently
\[
x-c\ge s,\quad c\le1-s,\quad
(1-c)(d-y)\ge s,\quad a,b,L,M\ge s.
\tag{5}
\]
From \(M\le1-2s\) we get \(a\ge7/50\).
Then \(b\ge s/(1-a)\ge175/1376>1/8\), and
\(M<49/64\) gives \(a,y>1/7\).
Also
\[
h\ge\frac{s}{M}+\frac{s}{b},\qquad
hc\ge\frac{sc^2}{bM}\ge4s,
\tag{6}
\]
because \(b+M=c\). In particular \(c\ge4s\).
The two side-cap costs in (4)--(5) give
\[
d\ge\frac{s}{M}+\frac{s}{1-c}
\ge\frac{4s}{1-b}>\frac12,\qquad h\ge d>\frac12,
\quad d-y\ge\frac{s}{1-4s}=\frac7{36}.
\tag{7}
\]
The middle inequality uses \(M+1-c=1-b\).
The anchor inequality
\([CDF]=1-c+d(c-f)\le1-f\) gives \(f\le1-s\).

For the opposite-cap point Y,
\[
[DYF]=(1-d)(z-f)-(1-f)(1-w)
      =(1-f)(w-d)-(1-d)(1-z)\ge s.
\tag{8}
\]
Since \(d>1/2\) and \(f\ge b>1/8\), this implies
\[
z-f>2s,\quad w-d>\frac18,\quad d\le\frac78.
\tag{9}
\]
For the last bound use \([DYF]\le(1-d)(1-f)\) and
\(1-f<7/8\).

The bases AH and BC give \(r,t\ge s\). Since Q lies inside
the anchor hexagon, its CD, DF, and FH edge areas are positive. The
identities
\[
\begin{aligned}
(1-f)[CDQ]+(1-c)[DFQ]&=[CDF](1-r),\\
(1-d)[FHQ]+(1-h)[DFQ]&=[DFH](1-t)
\end{aligned}
\tag{10}
\]
and \([CDF]\le1-f\), \([DFH]\le1-d\) give
\(r,t\le1-s\). Thus
\[
s\le r,t\le1-s.
\tag{11}
\]

## 2. The lower-point budget and empty ears

Five actual points H,C,A,B,Q lie in the virtual triangle
\((0,0)HC\), including its two actual vertices H,C. The endpoint
triangle theorem in Section 1 of [TYPE_II.md](TYPE_II.md) therefore gives
\[
hc\ge\frac{s}{3-2\sqrt2}
 =\frac7{64}(3+2\sqrt2)>\frac7{11}.
\tag{12}
\]
The rational comparison is equivalent to \(8>(31/11)^2\).

Two side-cap consequences proved at this exact threshold are
\[
[ABH]<3s,\qquad [BCX]<3s.
\tag{13}
\]
The first is Theorem 5 of
[SIX_BOUNDARY_EXTERIOR.md](SIX_BOUNDARY_EXTERIOR.md); the second
is Lemma 2 of
[SIX_BOUNDARY_TWO_SIDE_PROJECTION.md](SIX_BOUNDARY_TWO_SIDE_PROJECTION.md).
Both proofs assume only the six-anchor normalization and one occupied
side cap, so the present opposite-cap point introduces no extra
hypothesis. Neither actual triangle can contain Q, because its three
subtriangles would each cost at least s.

## 3. The complete eighteen-word cover

For the interior point Q in (3), define
\(q=(q_0,\ldots,q_7)\) by
\[
[V_iV_{i+j}Q]>0\quad\Longleftrightarrow\quad j\le q_i,
\qquad1\le q_i\le6,
\tag{14}
\]
with hull indices reduced modulo eight. Convexity makes the positive
chords consecutive, and reversal of a directed chord requires
\[
(j\le q_i)\quad\Longleftrightarrow\quad
(8-j>q_{i+j})\qquad(1\le j\le7).
\tag{15}
\]
The two anchor-hexagon tests CDQ and DFQ give
\(q_2,q_4\ge2\). The empty triangles in (13) exclude
\(q_1=6\) and \(q_1=1\), respectively. Finally Q is
below HC, so \(q_7<3\). Thus the necessary conditions are
\[
2\le q_1\le5,\quad q_2,q_4\ge2,\quad q_7<3.
\tag{16}
\]
Equations (14)--(16) leave exactly the following eighteen words:

| Index | Word | Index | Word |
|---|---|---|---|
| 1 | (1,2,6,5,5,4,3,2) | 10 | (3,3,5,4,4,4,3,2) |
| 2 | (1,3,6,5,4,4,3,2) | 11 | (3,4,5,4,4,3,3,2) |
| 3 | (1,4,6,5,4,3,3,2) | 12 | (3,5,5,4,4,3,2,2) |
| 4 | (1,5,6,5,4,3,2,2) | 13 | (4,3,5,4,3,4,3,2) |
| 5 | (2,2,5,5,5,4,3,2) | 14 | (4,4,5,4,3,3,3,2) |
| 6 | (2,3,5,5,4,4,3,2) | 15 | (4,5,5,4,3,3,2,2) |
| 7 | (2,4,5,5,4,3,3,2) | 16 | (5,4,5,4,3,2,3,2) |
| 8 | (2,5,5,5,4,3,2,2) | 17 | (5,5,5,4,3,2,2,2) |
| 9 | (3,2,5,4,5,4,3,2) | 18 | (6,5,5,4,3,2,1,2) |

This is an exhaustive necessary cover, not a claim that all eighteen
words are realizable. It fixes all 84 actual triangle signs. For a
hull triangle, Q is inside exactly when its three cyclic edge signs
from (14) are positive. Such a triangle has doubled area at least
\(3s\); the other hull triangles retain the threshold s.

## 4. Fixed rational cubic contradictions

Use coordinate order \((a,h,b,c,d,f,x,y,z,w,r,t)\). The following
27 affine factors, in their fixed index order, are nonnegative by
(1) and (5)--(11):
\[
\begin{gathered}
a-1/7,\ b-1/8,\ h-1/2,\ c-4s,\ 1-h,\ 1-s-c,\\
d-a,\ h-d,\ f-b,\ c-f,\ d-1/2,\ 7/8-d,\ 1-s-f,\\
h-a-s,\ c-b-s,\ x-c-s,\ 1-x,\ y-1/7,\ d-y-7/36,\\
z-f-2s,\ w-d-1/8,\ 1-z,\ 1-w,\ r-s,\ t-s,\ 1-s-r,\ 1-s-t.
\end{gathered}
\tag{17}
\]
Call them \(l_0,\ldots,l_{26}\).

Visit the 84 increasing triples of \(V_0,\ldots,V_8\) in
lexicographic order. From each word-signed positive determinant subtract
s, or \(3s\) for a hull triangle containing Q. Append the three
additional nonnegative quadratic costs
\[
hc-7/11,\qquad3s-[ABH],\qquad3s-[BCX].
\tag{18}
\]
Call the resulting 87 polynomials \(b_0,\ldots,b_{86}\).

For each word the coefficient file gives a positive integer-weighted
sum, with common denominator 4096, of terms
\[
l_i,\quad l_i l_j,\quad l_i l_j l_k,\quad b_j,\quad b_jl_i.
\tag{19}
\]
An `f` record lists sorted factor indices and its weight; a `q` record
lists the cost index, a factor index or -1 for no factor, and its weight.
Every term in (19) is nonnegative under the hypotheses, so each supplied
sum P is nonnegative.

Expand \(P=\sum_\alpha p_\alpha\zeta^\alpha\). All twelve
coordinates lie in \([0,1]\), hence the exact elementary bound is
\[
P\le p_0+\sum_{\alpha\ne0}\max(p_\alpha,0).
\tag{20}
\]
For every supplied expression the right side of (20) is less than
\(-3/4\). The verifier reconstructs the factors and costs from
(14)--(18), expands all 3,830 positive terms with exact rational
arithmetic, and checks this strict bound. It also independently
enumerates (14)--(16) and checks that each word occurs exactly once.
This contradicts \(P\ge0\) in every possible word and proves
Theorem 1.

The certificate consists of the fixed coefficient lists, the exact
polynomials (17)--(18), and the expansion rule (20). Numerical searches
used to discover the weights, sampled configurations, and optimizer
output are not premises of the proof.
