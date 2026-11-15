# The one-lower C1 hexagon with a single top-cap point

Use the C1 anchors

\[
O=(0,0),\quad H=(0,h),\quad C=(c,0),\quad
D=(1,d),\quad F=(f,1),
\qquad 0<d\le h<1,\quad0<f\le c<1.
\]

The configuration is competitive: its minimum actual triangle area is
at least \(A_0\). Put

\[
s=\frac8{73}<2A_0,\qquad K=4+2\sqrt3,\qquad
\rho=\frac{49}{60}<Ks.
\]

**Theorem.** There is no such configuration whose four other points are

\[
L=(\ell_x,\ell_y)\in OHC,\qquad
P=(p_x,p_y),Q=(q_x,q_y)\in HCDF,
\]

and one point \(X=(g,k)\) in the exterior cap beyond \(DF\),
inside the virtual triangle \(DF(1,1)\). All containments in actual
triangles or quadrilaterals are strict. The point \(X\) may be on a
square side.

Thus this entire one-lower case with exact hexagonal hull
\(O,C,D,X,F,H\) is excluded. Other exterior-cap choices and larger
hulls are separate cases; no complete one-lower C1 theorem is asserted
here.

The proof uses fixed rational cubic inequalities. Their complete
integer coefficients are in
[c1_one_lower_top_cap_certificates.json](c1_one_lower_top_cap_certificates.json),
and [check_c1_one_lower_top_cap.py](check_c1_one_lower_top_cap.py)
expands and checks them using only rational arithmetic. The geometric
inequalities, signs, and finite coverage are justified below.

## 1. Common bounds and four small anchor triangles

Transpose the square if necessary to arrange

\[
f\le d.                                                   \tag{1}
\]

This interchanges \(h,c\), interchanges \(d,f\), preserves the
lower/upper occupancy, and preserves the top cap. Every doubled actual
area is at least \(s\). The elementary three-part subdivision of
\(OHC\) at \(L\), and the two anchor areas \(OHF,OCD\), give

\[
hc\ge3s,\qquad hf\ge s,\qquad cd\ge s.
\]

Consequently

\[
h,c\ge3s,\qquad d,f\ge s.                               \tag{2}
\]

The cap area has the three equivalent expressions

\[
\begin{aligned}
r:=-[DFX]
 &=(1-d)g+(1-f)k-1+df\\
 &=(1-d)(g-f)-(1-f)(1-k)\\
 &=(1-f)(k-d)-(1-d)(1-g).
\end{aligned}                                             \tag{3}
\]

Here \(r\ge s\), so

\[
g-f\ge s,\qquad k-d\ge s,\qquad
(1-d)(1-f)\ge s.                                        \tag{4}
\]

Using \(f\ge s\) in the last inequality gives
\(d\le57/65\). Using \(f\le d\) gives
\((1-f)^2\ge s\), hence

\[
f<\frac{67}{100},\qquad d\le\frac{57}{65}.               \tag{5}
\]

The strict first comparison follows from
\(s>1089/10000=(33/100)^2\).

Every actual triangle in competitive C1 has capacity at most two,
by Section 6 of [ONE_CORNER.md](ONE_CORNER.md). A triangle containing
one further actual point has doubled area at least \(3s\); one
containing two has doubled area at least \(Ks>\rho\), by the
two-interior-point theorem in
[CORNER_FAMILIES.md](CORNER_FAMILIES.md). Four anchor triangles have
the stronger capacity of at most one:

\[
\boxed{CDX,\quad XFH,\quad OFH,\quad DFH.}                \tag{6}
\]

Here is a direct area proof of all four assertions. First
\([OFH]=hf\le f<67/100<\rho\). Put

\[
U=[DFH]=1-h+f(h-d)\le1-d.
\]

If \(U\ge\rho\), then \(f\le d\le1-\rho\), while
\(hf\ge s\) gives

\[
U=1-h(1-f)-df
\le1+s-\frac{s}{f}
\le1+s-\frac{s}{1-\rho}=\frac{411}{803}<\rho,
\]

a contradiction. Thus \(DFH\) also has area below \(\rho\).

For \(XFH\), its positive doubled area is

\[
\alpha=[XFH]=(1-h)g+f(h-k).
\]

If \(k\ge h\), then \(\alpha\le1-h\le1-3s<\rho\).
If \(k<h\), (3) gives \((1-f)k\ge s\), hence
\(f\le1-s/k\). Since \(h-k>0\),

\[
\begin{aligned}
\alpha
&\le1-h+(1-s/k)(h-k)\\
&=1+s-k-\frac{hs}{k}
\le1+s-2\sqrt{hs}
\le1+s-2\sqrt3\,s
<1-\frac73s<\rho.
\end{aligned}                                             \tag{7}
\]

The penultimate strict inequality uses \(\sqrt3>5/3\).
The proof of (7) did not use \(f\le d\), so transposition proves
the same strict area bound for \(CDX\). This proves (6).

## 2. Affine bounds for the three interior points

The areas \(OHL,OCL,HCL\) give

\[
\ell_x,\ell_y\ge s,\qquad
c-\ell_x\ge2s,\qquad h-\ell_y\ge2s,\qquad
\ell_x+\ell_y\le1-s.                                   \tag{8}
\]

For example,
\(h(c-\ell_x)=[HCL]+c\ell_y\ge2s\), and the other
coordinate difference is analogous. Dividing the positive area
\([HCL]=hc-h\ell_x-c\ell_y\ge s\) by \(hc\) gives
\(\ell_x/c+\ell_y/h\le1-s/(hc)\le1-s\), proving the
last bound.

For either \(R=(x,y)\in\{P,Q\}\), the areas \(OHR,OCR\)
give \(x,y\ge s\). The opposite coordinate bounds follow from
two positive area identities:

\[
\begin{aligned}
(1-f)[CDR]+(1-c)[DFR]&=[CDF](1-x),\\
(1-d)[FHR]+(1-h)[DFR]&=[DFH](1-y).
\end{aligned}                                             \tag{9}
\]

All four area expressions on the left have the displayed positive
signs, since \(R\) is inside \(HCDF\). Moreover,
\([CDF]\le1-f\) and \([DFH]\le1-d\). The sum of the two
coefficients on each left side is therefore at least the positive
area factor on its right. Substituting each actual area bound \(s\)
into (9) gives

\[
s\le p_x,p_y,q_x,q_y\le1-s.                             \tag{10}
\]

Finally put

\[
W=2\operatorname{area}(HCDF)=1-(h-d)(c-f)\le1.
\]

The six-point quadrilateral theorem in
[QUADRILATERAL_HULL.md](QUADRILATERAL_HULL.md), applied to
\(H,C,D,F,P,Q\), gives

\[
W\ge8s.                                                  \tag{11}
\]

## 3. Finite radial words and the complete upper-pair signs

Number the six hull vertices cyclically as

\[
(V_0,V_1,V_2,V_3,V_4,V_5)=(O,C,D,X,F,H).
\]

For any one of the three interior points \(R\), define its word
\(r=(r_0,\ldots,r_5)\) by

\[
[V_iV_{i+j}R]>0\quad\Longleftrightarrow\quad j\le r_i,
\qquad j=1,\ldots,5,                                    \tag{12}
\]

with indices reduced modulo six. Convexity makes the positive signs
consecutive, and the two neighboring hull-edge tests give
\(1\le r_i\le4\). Reversing a directed diagonal gives the necessary
complement relation

\[
(j\le r_i)\quad\Longleftrightarrow\quad
(6-j>r_{i+j}).                                           \tag{13}
\]

The finite list of all words satisfying (13) has 26 members. It is
enough to cover this list: geometric realizability of every listed
word is not assumed. The three strict edge tests for \(OCH\) leave
the following four lower words, indexed from zero:

| Index | Lower word |
|---|---|
| 0 | \((1,4,4,3,2,1)\) |
| 1 | \((2,4,3,3,2,1)\) |
| 2 | \((3,4,3,2,2,1)\) |
| 3 | \((4,4,3,2,1,1)\) |

The four strict edge tests for \(HCDF\) leave these 18 upper words:

| Index | Upper word | Index | Upper word |
|---|---|---|---|
| 0 | \((1,1,4,4,3,2)\) | 9 | \((3,2,2,1,3,4)\) |
| 1 | \((1,2,4,3,3,2)\) | 10 | \((3,2,2,2,3,3)\) |
| 2 | \((1,3,4,3,2,2)\) | 11 | \((3,2,3,2,3,2)\) |
| 3 | \((2,1,2,4,3,3)\) | 12 | \((3,3,2,1,2,4)\) |
| 4 | \((2,1,3,4,3,2)\) | 13 | \((3,3,2,2,2,3)\) |
| 5 | \((2,2,2,3,3,3)\) | 14 | \((3,3,3,2,2,2)\) |
| 6 | \((2,2,3,3,3,2)\) | 15 | \((4,3,2,1,1,4)\) |
| 7 | \((2,3,2,3,2,3)\) | 16 | \((4,3,2,2,1,3)\) |
| 8 | \((2,3,3,3,2,2)\) | 17 | \((4,3,3,2,1,2)\) |

Relabel \(P,Q\) so their word indices satisfy \(j\le\ell\).
For a triple of word indices \((i,j,\ell)\), the following tests
already exclude complete placements:

1. Both upper words give the same signs at both diagonals \(HD,CF\).
   This is impossible by Theorem 2 of
   [ONE_CORNER_COMPLETION.md](ONE_CORNER_COMPLETION.md), because
   \(W\le1\) and \(s>7/64\).
2. Any triangle of three hull vertices contains all three of
   \(L,P,Q\). This violates global C1 triangle capacity two.
3. Any triangle in (6) contains two of \(L,P,Q\).

Containment in each triangle is determined by its three edge signs
in (12). Exactly 228 triples remain after these tests.

### Two independent ways to determine a two-interior-point area

At a hull vertex \(V_i\), all rays towards the other hull vertices
and towards the interior points lie in its convex interior angle,
whose size is less than \(\pi\). The integer \(r_i(R)\) locates
the ray \(V_iR\) between the rays to \(V_{i+r_i}\) and
\(V_{i+r_i+1}\). Consequently, whenever two words differ at \(i\),

\[
\operatorname{sgn}[V_iRS]
=\operatorname{sgn}\bigl(r_i(S)-r_i(R)\bigr).             \tag{14}
\]

For the upper pair \(P,Q\), all four signs at \(H,C,D,F\)
are fixed even when (14) is inconclusive. If both diagonals separate
the pair, their segment meets the relative interior of both diagonals.
For any oriented diagonal \(A\to B\) separating the pair,

\[
\operatorname{sgn}[PQA]=-\operatorname{sgn}[ABP],\qquad
\operatorname{sgn}[PQB]=\operatorname{sgn}[ABP].           \tag{15}
\]

Thus (15) determines all four signs in that case. If just one diagonal
separates the pair, Theorem 3 of
[ONE_CORNER_COMPLETION.md](ONE_CORNER_COMPLETION.md) applies with
the same bound \(W\le1\). It isolates the middle cyclic vertex
of the hull triangle containing both points:

| Common triangle | Isolated vertex under the line \(PQ\) |
|---|---|
| \(HCD\) | \(C\) |
| \(HDF\) | \(F\) |
| \(HCF\) | \(H\) |
| \(CDF\) | \(D\) |

Equation (15), applied to the diagonal which does separate the pair,
then determines the orientation of this isolated sign. The other three
signs are its negatives. Exactly 26 of the 228 triples make this rule
conflict with (14), and are therefore impossible.

### One final, exhaustive two-sign split

There remain 202 word triples. Keep 201 without any further split.
For the triple \((i,j,\ell)=(0,8,10)\), split by the two actual
signs

\[
\operatorname{sgn}[XLP],\qquad \operatorname{sgn}[FLP].   \tag{16}
\]

Both are nonzero, so their four possible sign pairs exhaust this
triple. Label them by \(b=\epsilon_X+2\epsilon_F\), where
\(\epsilon=1\) denotes a positive sign and \(\epsilon=0\)
denotes a negative sign. This gives exactly 205 cells. It is harmless
to include a sign pair that may itself be geometrically unrealizable.

## 4. The explicit nonnegative factors and costs

Use the coordinate order

\[
z=(h,c,d,f,g,k,\ell_x,\ell_y,p_x,p_y,q_x,q_y)\in[0,1]^{12}.
\]

The following 28 affine factors are nonnegative by (1)--(5),
(8), and (10). Their order is the order used in the coefficient file.

| Index | Factor | Index | Factor |
|---|---|---|---|
| 0 | \(h-3s\) | 14 | \(1-k\) |
| 1 | \(c-3s\) | 15 | \(\ell_x-s\) |
| 2 | \(1-h\) | 16 | \(\ell_y-s\) |
| 3 | \(1-c\) | 17 | \(c-\ell_x-2s\) |
| 4 | \(d-s\) | 18 | \(h-\ell_y-2s\) |
| 5 | \(57/65-d\) | 19 | \(1-s-\ell_x-\ell_y\) |
| 6 | \(f-s\) | 20 | \(p_x-s\) |
| 7 | \(67/100-f\) | 21 | \(1-s-p_x\) |
| 8 | \(h-d\) | 22 | \(p_y-s\) |
| 9 | \(c-f\) | 23 | \(1-s-p_y\) |
| 10 | \(d-f\) | 24 | \(q_x-s\) |
| 11 | \(g-f-s\) | 25 | \(1-s-q_x\) |
| 12 | \(k-d-s\) | 26 | \(q_y-s\) |
| 13 | \(1-g\) | 27 | \(1-s-q_y\) |

Call these factors \(a_0,\ldots,a_{27}\). For each cell, form
an ordered list of quadratic costs \(q_t\) as follows.

First put \(q_0=W-8s\). Number all nine actual points as
\((O,C,D,X,F,H,L,P,Q)\). Visit their increasing index triples in
lexicographic order and retain those with at most one of \(L,P,Q\).
For a hull triangle, use its positive determinant minus \(s,3s\),
or \(\rho\), according as it contains zero, one, or two of the
three interior points. For a triangle with two hull vertices and
one interior point, use its word-determined positive unsigned area
minus \(s\).

Next visit the pairs \((L,P),(L,Q),(P,Q)\), in that order, and
the hull indices \(v=0,\ldots,5\). Whenever (14) fixes the sign,
append that unsigned area minus \(s\). For \((P,Q)\), also
append any of its four signs fixed by (15) and the mixed-pair theorem.
If both rules fix a sign, append the cost only once; conflicts were
already excluded. Finally append the two costs from (16) in the
four specially split cells. Every cost in this list is nonnegative.

The allowed nonnegative products are

\[
a_{i_1}\cdots a_{i_m}\quad(1\le m\le3),\qquad
q_t,\qquad q_ta_i.                                      \tag{17}
\]

All have total degree at most three. The coefficient file supplies
98 positive integer-weighted combinations of (17), each divided by
4096. A record `f` specifies the sorted factor indices of a product;
a record `q` specifies the cost index and either a factor index or
\(-1\) for no factor. The reference cell in each certificate fixes
its quadratic-cost list completely by the rules above.

## 5. Exact contradiction and coverage

Expand one of the fixed combinations into

\[
R(z)=\sum_{|\nu|\le3}r_\nu z^\nu.
\]

Since every product in (17) is nonnegative and every listed weight
is positive, any configuration in that reference cell would satisfy
\(R(z)\ge0\). On the unit cube, however,

\[
R(z)\le r_0+\sum_{\nu\ne0}\max(r_\nu,0).                \tag{18}
\]

For each of the 98 supplied combinations the exact rational quantity
on the right of (18) is at most \(-3/4\). The largest is

\[
-\frac{6141896482601}{6214313164800}<-\frac34.            \tag{19}
\]

The certificate collection contains 9,677 positive terms in total.
No tolerance or floating-point conclusion enters (18)--(19).

A certificate also applies to another cell if every quadratic cost
actually used by that certificate has the same area sign and at
least its reference lower bound in the other cell. Indeed its
reference cost remains nonnegative there, and the affine factors
are common to all cells. The exact verifier tests this condition
for every used cost, independently of any claimed coverage labels
in the coefficient file. The 98 certificates cover all 205 cells
from Section 3.

For completeness, the verifier reconstructs the 26 words directly
from (13), extracts the four lower and 18 upper words by their edge
tests, checks all three preliminary exclusions, checks all 26 sign
conflicts, and constructs the exhaustive four-way split (16).
It then expands every listed polynomial and evaluates the rational
upper bound (18). These are finite rational identities and finite
integer comparisons; the verifier performs no optimization or
parameter-domain subdivision.

Every remaining placement would therefore have both \(R(z)\ge0\)
and \(R(z)\le-3/4\) for one of the fixed combinations.
This contradiction proves the theorem. \(\square\)
