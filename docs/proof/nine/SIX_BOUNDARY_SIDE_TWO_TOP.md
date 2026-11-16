# One side-cap point and two opposite-cap points in N

Use the six N anchors

\[
A=(0,a),\quad H=(0,h),\quad B=(b,0),\quad C=(c,0),
\quad D=(1,d),\quad F=(f,1),
\]
\[
0<a<h<1,\quad0<b<c<1,\qquad a\le d\le h,\quad b\le f\le c.
                                                               \tag{1}
\]

Suppose one of the three other points is in a side cap adjacent to
a double-contact side, and the other two are in the opposite cap
\(DF(1,1)\). Transposing the square if necessary, name the side
point \(X=(x,y)\in CD(1,0)\). Cap notation includes its square
corner only as a virtual containing vertex. Collinearity with actual
endpoints is impossible under any positive minimum-area hypothesis.

**Theorem 1.** Every configuration in this entire occupancy has
minimum ordinary triangle area strictly less than \(4/73<A_0\).
The conclusion includes square-side contacts and both possible hulls
of the four points in the opposite cap.

This closes N6-07 in the finite case ledger. The proof reduces the
occupancy to six radial words, then gives a fixed rational cubic
contradiction in each. All 515 positive terms are printed in
[six_boundary_side_two_top_certificates.json](six_boundary_side_two_top_certificates.json).
The exact verifier is
[check_six_boundary_side_two_top.py](check_six_boundary_side_two_top.py).

Assume for a contradiction that every actual unsigned doubled area
is at least

\[
                              s=\frac8{73}.
\]

## 1. The side point forces a triangular opposite-cap hull

Put \(L=h-a\), \(M=c-b\), and
\(\delta=(1-d)(1-f)\). The actual anchor areas give

\[
aM\ge s,\qquad bL\ge s,\qquad
h\ge\frac{s}{M}+\frac{s}{b},\qquad hc\ge4s.          \tag{2}
\]

The last step is \(bM\le c^2/4\). Since \(M<1-b\),
the bound on h gives \(b(1-b)>s>7/64\), hence \(b>1/8\).
The transposed calculation gives \(a>1/8\).

The two side-point areas are

\[
[BCX]=My\ge s,\qquad
[CXD]=d(x-c)-(1-c)y\ge s.                             \tag{3}
\]

In particular

\[
x-c\ge s,\qquad c\le1-s,\qquad
d-y\ge\frac{s}{1-c}.
\]

Consequently \(M<1-s-1/8=447/584\), and

\[
a,y>\frac{64}{447}>\frac17.
\]

Adding the lower bounds for y and d-y in (3), and using
\(M+(1-c)=1-b\), gives

\[
d\ge\frac{s}{M}+\frac{s}{1-c}
\ge\frac{4s}{1-b}>\frac{256}{511}>\frac12,
\qquad h\ge d>\frac12.                               \tag{4}
\]

Since \(f\ge b>1/8\),

\[
                    \delta<\frac7{16}<4s.             \tag{5}
\]

Apply the four-point endpoint lemma in Section 1 of
[TYPE_II.md](TYPE_II.md) to D,F and the two opposite-cap points.
If their hull were a quadrilateral, that lemma would require
\(\delta\ge4s\), contrary to (5). Thus the hull is a triangle
\(DEF\): name its outer point \(E=(e_x,e_y)\) and its inner
point \(O=(o_x,o_y)\). Then

\[
O\in\operatorname{int}(DEF),\qquad
[DEF]\ge3s,\qquad\delta\ge3s.                       \tag{6}
\]

The full hull is therefore

\[
             (V_0,\ldots,V_7)=(A,B,C,X,D,E,F,H),       \tag{7}
\]

and O is its sole interior point. Each original side contact remains
an extreme point. The edges through X and E support their respective
corner caps and have every other anchor on the inner side; for DE
and EF the other cap is below D, and for CX and XD the opposite cap
is above D. Thus none of the displayed cap vertices is hidden by the
other cap. Positive minimum area makes the hull strictly convex.

## 2. All coordinate bounds used by the certificates

Equations (4) and (6) strengthen the upper-side parameters:

\[
d<1-\frac{24s}{7}=\frac{319}{511}<\frac58,
\qquad f<1-6s.                                        \tag{8}
\]

The first uses \(1-f<7/8\), and the second uses \(1-d<1/2\).
There is no extra assumed order between f and d.
From (2), \(c\ge4s\). Hence the side-point bound gives

\[
                  d-y\ge\frac{s}{1-c}
                  \ge\frac8{41}>\frac7{36}.           \tag{9}
\]

For any point Z in the opposite cap, with coordinates \((z_x,z_y)\),
its positive cap determinant has the two forms

\[
[DZF]=(1-d)(z_x-f)-(1-f)(1-z_y)
     =(1-f)(z_y-d)-(1-d)(1-z_x).                        \tag{10}
\]

For E the left side is at least \(3s\); for O it is at least s.
Using \(1-d<1/2\) and \(1-f<7/8\), (10) gives

\[
e_x-f>6s,\qquad e_y-d\ge3s,\qquad
o_x-f>2s,\qquad o_y-d>\frac{8s}{7}>\frac18.           \tag{11}
\]

The last two subtriangle costs in (6) also give

\[
\begin{aligned}
[DEO]&=(e_y-d)(1-o_x)-(1-e_x)(o_y-d)\ge s,\\
[EFO]&=(e_x-f)(1-o_y)-(1-e_y)(o_x-f)\ge s.
\end{aligned}
\]

All products being subtracted are nonnegative, and the remaining
coefficients are at most one. Therefore

\[
                              o_x,o_y\le1-s.            \tag{12}
\]

In the variable order \((a,h,b,c,d,f,x,y,e_x,e_y,o_x,o_y)\),
the ordered list of 27 nonnegative affine factors is

\[
\begin{gathered}
a-1/7,\ b-1/8,\ h-1/2,\ c-4s,\ 1-h,\ 1-s-c,\\
d-a,\ h-d,\ f-b,\ c-f,\ d-1/2,\ 5/8-d,\\
h-a-s,\ c-b-s,\ x-c-s,\ 1-x,\ y-1/7,\ d-y-7/36,\\
1-6s-f,\ e_x-f-6s,\ e_y-d-3s,\ 1-e_x,\ 1-e_y,\\
o_x-f-2s,\ o_y-d-1/8,\ 1-s-o_x,\ 1-s-o_y.
\end{gathered}                                         \tag{13}
\]

Every bound in (13) was proved above, follows from normalization,
or is a square-coordinate bound. The two gap bounds follow from
\(aM,bL\ge s\) and \(a,b\le1\).

## 3. Six exhaustive radial words

For the interior point O and the convex hull (7), define
\(r=(r_0,\ldots,r_7)\) by

\[
[V_iV_{i+j}O]>0\quad\Longleftrightarrow\quad j\le r_i,
\qquad 1\le r_i\le6,                                 \tag{14}
\]

with cyclic indices. Convexity puts the positive chords in an initial
interval at each vertex. Reversal of a directed chord requires

\[
(j\le r_i)\quad\Longleftrightarrow\quad(8-j>r_{i+j}). \tag{15}
\]

Because O is inside DEF, its remaining edge test \([DFO]<0\)
is exactly \(r_4=1\). The other two tests are hull-edge tests.
Equations (14)--(15) and \(r_4=1\) have exactly these six solutions:

\[
\begin{gathered}
(4,3,2,1,1,6,6,5),\qquad(4,3,2,2,1,5,6,5),\\
(4,3,3,2,1,4,6,5),\qquad(4,4,3,2,1,3,6,5),\\
(5,4,3,2,1,1,6,6),\qquad(5,4,3,2,1,2,6,5).
\end{gathered}                                         \tag{16}
\]

These necessary words constitute a complete cover; no assertion of
realizability of each word is needed. All 84 actual triangle signs
are fixed by a word: every increasing hull triple is positive, and
the remaining triangles are governed by (14).

For an increasing hull triple \((i,j,k)\), O is inside precisely
when all three cyclic edge signs from (14) are positive. Its area
then is at least \(3s\); otherwise retain the threshold s.
Every triangle involving O also has unsigned doubled area at least s.
In lexicographic order of the 84 triples, subtract these thresholds
from the signed positive area expressions. Append the additional
cost \(\delta-3s\), giving 85 nonnegative quadratic costs.

## 4. Exact contradiction

For each word in (16), the coefficient file supplies a positive
integer-weighted sum, divided by 4096, of products of one, two, or
three factors from (13), quadratic costs, and quadratic costs times
one affine factor. Thus its cubic polynomial \(P\) is nonnegative
throughout the stated cell.

Write its exact monomial expansion as
\(P(z)=p_0+\sum_{\alpha\ne0}p_\alpha z^\alpha\).
All twelve coordinates belong to \([0,1]\), so

\[
P(z)\le p_0+\sum_{\alpha\ne0}\max(p_\alpha,0).
\]

For all six supplied expressions, this exact rational upper bound
is negative. The greatest is

\[
                       -\frac{11150846883847}{11243126587392}
                       <-\frac34.
\]

The verifier reconstructs the complete six-word cover, all 84
determinants and containment thresholds, and all 515 weighted terms.
It checks the expansions and upper bounds with rational arithmetic.
No optimizer or coordinate subdivision is a proof premise.

Every configuration under the assumed threshold belongs to one of
these cells, in which its polynomial would be both nonnegative and
negative. This contradiction proves Theorem 1. \(\square\)
