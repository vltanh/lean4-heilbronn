# The triangular two-top-cap placement with one lower C1 point

Use the competitive C1 anchors

\[
O=(0,0),\quad H=(0,h),\quad C=(c,0),\quad
D=(1,d),\quad F=(f,1),
\qquad0<d\le h<1,\quad0<f\le c<1,
\]

and the thresholds

\[
s=\frac8{73}<2A_0,\qquad K=4+2\sqrt3,\qquad
\rho=\frac{49}{60}<Ks.
\]

**Theorem.** There is no competitive configuration with

\[
L=(\ell_x,\ell_y)\in OHC,\qquad Q=(q_x,q_y)\in HCDF,
\]

one exterior top-cap point \(X=(g,k)\) beyond \(DF\), and
a second top-cap point \(P=(p_x,p_y)\) strictly inside the actual
triangle \(DXF\).

Thus the entire triangular upper-hull alternative is excluded when
exactly two free points are in the top cap, one is below \(HC\),
and the remaining one is in \(HCDF\). If the four points
\(D,F,X,P\) have triangular hull, its third vertex can be named
\(X\), since \(D,F\) are actual extreme points. The other
cap point is then precisely the interior point covered here.
The convex upper-hull alternative is a separate case.

The proof is a fixed rational cubic certificate over a complete
finite sign cover. The full coefficient lists are in
[c1_one_lower_top_triangle_certificates.json](c1_one_lower_top_triangle_certificates.json).
The exact verifier is
[check_c1_one_lower_top_triangle.py](check_c1_one_lower_top_triangle.py).

## 1. Bounds forced by the occupied cap triangle

Transpose the square if necessary to arrange \(f\le d\).
This preserves every placement in the theorem. The lower point and
the two anchor costs give

\[
hc\ge3s,\qquad hf,cd\ge s,
\qquad h,c\ge3s,\quad d,f\ge s.                       \tag{1}
\]

Since \(P\) is inside \(DXF\), subdivision into three actual
triangles gives

\[
r_X:=[DXF]=(1-d)g+(1-f)k-1+df\ge3s.                   \tag{2}
\]

The cap identities from Section 1 of
[C1_ONE_LOWER_TOP_CAP.md](C1_ONE_LOWER_TOP_CAP.md) therefore give

\[
g-f\ge3s,\qquad k-d\ge3s,\qquad
(1-d)(1-f)\ge3s.                                      \tag{3}
\]

Using \(f\ge s\), then \(f\le d\), yields

\[
d\le1-\frac{3s}{1-s}=\frac{41}{65},\qquad
(1-f)^2\ge3s>\frac{16}{49},\qquad f<\frac37.           \tag{4}
\]

### The interior cap point stays away from the upper and right sides

Because \(P\) is beyond \(DF\), its actual area
\(r_P=-[DFP]\ge s\) has the two expressions

\[
\begin{aligned}
r_P&=(1-d)(p_x-f)-(1-f)(1-p_y),\\
r_P&=(1-f)(p_y-d)-(1-d)(1-p_x).
\end{aligned}
\]

Thus \(p_x>f\), \(p_y>d\), and, using \(d,f\ge s\),

\[
p_x-f\ge\frac{s}{1-d}\ge\frac8{65},\qquad
p_y-d\ge\frac{s}{1-f}\ge\frac8{65}.                   \tag{5}
\]

The other two subdivision areas are also positive and at least s:

\[
\begin{aligned}
[DXP]&=(k-d)(1-p_x)-(1-g)(p_y-d)\ge s,\\
[XFP]&=(g-f)(1-p_y)-(1-k)(p_x-f)\ge s.
\end{aligned}                                           \tag{6}
\]

All subtracted products in (6) are nonnegative. Since
\(0<k-d\le1\) and \(0<g-f\le1\), this proves

\[
\boxed{p_x,p_y\le1-s.}                                  \tag{7}
\]

These bounds use the actual interiority of the second cap point.

### The other coordinates and four small triangles

The lower-point inequalities and the upper-coordinate projection
identities in Section 2 of the single-top-cap note give

\[
\ell_x,\ell_y\ge s,\quad c-\ell_x\ge2s,\quad
h-\ell_y\ge2s,\quad\ell_x+\ell_y\le1-s,
\qquad s\le q_x,q_y\le1-s.                             \tag{8}
\]

Every actual triangle has capacity at most two, by Section 6 of
[ONE_CORNER.md](ONE_CORNER.md). The four actual triangles

\[
CDX,\quad XFH,\quad OFH,\quad DFH                       \tag{9}
\]

have capacity at most one. The area proof in Section 1 of the
single-top-cap note applies directly: it uses \(hc\ge3s\),
the cap placement of \(X\), the anchor areas \(hf,cd\ge s\),
and \(f\le d\), with no assumption on the other points.
Here \([OFH]=hf<3/7<\rho\) is even stronger than the earlier
bound. For \(DFH\), an area at least \(\rho\) would give
\(f\le d\le1-\rho\), and hence
\([DFH]\le1+s-s/(1-\rho)=411/803<\rho\).
For \(XFH,CDX\), the two height orders in that note give area
at most \(1-3s\), or strictly below \(1-7s/3\), respectively.
Both bounds are below \(\rho\). The two-interior-point triangle
theorem now proves (9).

## 2. A complete radial cover and eight finite sign splits

The full hull is the convex hexagon

\[
(V_0,\ldots,V_5)=(O,C,D,X,F,H).
\]

Use the 26 radial words defined by

\[
[V_iV_{i+j}R]>0\iff j\le r_i,
\qquad1\le r_i\le4,
\qquad(j\le r_i)\iff(6-j>r_{i+j}).                      \tag{10}
\]

Their completeness and the oriented-area interpretation are proved
in Section 3 of the single-top-cap note. The lower point \(L\)
has one of its four lower words. The point \(Q\) has one of its
18 upper words. Use exactly the zero-based indices in that note's
tables for these two lists.

The three strict edge tests for \(P\in DXF\) leave the following
four cap words, also indexed from zero:

| Index | Cap word for \(P\) |
|---|---|
| 0 | \((2,1,1,4,4,3)\) |
| 1 | \((2,2,1,3,4,3)\) |
| 2 | \((3,2,1,1,4,4)\) |
| 3 | \((3,2,1,2,4,3)\) |

Write \((i,j,\ell)\) for the word indices of \((L,P,Q)\).
Discard any of the \(4\cdot4\cdot18\) triples for which a hull
triangle contains all three interior points, or one of the four
triangles (9) contains two of them. Each containment is determined
by its three signs in (10). Exactly **219** triples survive.

For every pair \(R,S\) of interior points, differing word entries
at a hull vertex give the actual sign

\[
\operatorname{sgn}[V_vRS]
=\operatorname{sgn}\bigl(r_v(S)-r_v(R)\bigr).             \tag{11}
\]

This is again the order of the two rays inside the convex angle at
\(V_v\). Call the hull signs, the one-interior-point signs from
(10), and the signs from (11) the initially known signs.

Keep 211 triples with just these signs. For the eight triples in the
next table, split by all sign choices of the listed actual areas:

| Word triple \((i,j,\ell)\) | Additional areas, in bit order | Number of choices |
|---|---|---|
| \((0,1,14)\) | \(XLP,FLQ\) | 4 |
| \((0,3,6)\) | \(CPQ,XLQ\) | 4 |
| \((1,1,13)\) | \(OLP,XLP,FLQ,HPQ\) | 16 |
| \((1,2,13)\) | \(OPQ,FLQ\) | 4 |
| \((2,0,6)\) | \(OPQ,DLQ\) | 4 |
| \((2,3,1)\) | \(OLP,CPQ,XLP\) | 8 |
| \((2,3,4)\) | \(OLP,DLQ,XLP\) | 8 |
| \((2,3,6)\) | \(OLP,CPQ,DLQ,XLP\) | 16 |

These are exactly the initially unknown triples with one hull
vertex and two interior vertices in those eight cells, listed in
lexicographic index order under \((O,C,D,X,F,H,L,P,Q)\).
Encode a positive sign as bit 1 and a negative sign as bit 0.
All actual areas are nonzero, so every sign choice covers a complete
alternative without any missing incidence case.

Finally, for \((2,3,6)\) with the four-sign pattern
\((-,+,-,-)\), split once more by the sign of \([LPQ]\).
The data label these two alternatives by 2 and 18: their four lower
bits are the same, while the added bit records the sign of \([LPQ]\).
The other 15 four-sign patterns retain their labels 0--15.

The complete cover therefore has

\[
211+(4+4+16+4+4+8+8+16)+1=276                          \tag{12}
\]

cells. A word or sign choice need not be geometrically realizable;
covering this finite necessary list suffices.

## 3. The common factors and actual-triangle costs

Use the coordinate order

\[
z=(h,c,d,f,g,k,\ell_x,\ell_y,p_x,p_y,q_x,q_y)\in[0,1]^{12}.
\]

The following 28 affine factors are nonnegative by (1)--(8), and
are used in this exact order:

| Index | Factor | Index | Factor |
|---|---|---|---|
| 0 | \(h-3s\) | 14 | \(1-k\) |
| 1 | \(c-3s\) | 15 | \(\ell_x-s\) |
| 2 | \(1-h\) | 16 | \(\ell_y-s\) |
| 3 | \(1-c\) | 17 | \(c-\ell_x-2s\) |
| 4 | \(d-s\) | 18 | \(h-\ell_y-2s\) |
| 5 | \(41/65-d\) | 19 | \(1-s-\ell_x-\ell_y\) |
| 6 | \(f-s\) | 20 | \(p_x-f-8/65\) |
| 7 | \(3/7-f\) | 21 | \(1-s-p_x\) |
| 8 | \(h-d\) | 22 | \(p_y-d-8/65\) |
| 9 | \(c-f\) | 23 | \(1-s-p_y\) |
| 10 | \(d-f\) | 24 | \(q_x-s\) |
| 11 | \(g-f-3s\) | 25 | \(1-s-q_x\) |
| 12 | \(k-d-3s\) | 26 | \(q_y-s\) |
| 13 | \(1-g\) | 27 | \(1-s-q_y\) |

Number all nine actual points as \((O,C,D,X,F,H,L,P,Q)\).
For each cell, visit its known-sign triples in lexicographic order.
The sign list consists of the initially known signs and that cell's
additional signs from Section 2. Use the strengthened occupancy rule
of Section 4 in [C1_ONE_LOWER_SIDE_CAP.md](C1_ONE_LOWER_SIDE_CAP.md):
count an interior point only when all three strict edge signs are
known and agree with the containing triangle's orientation.

For a known sign \(\epsilon\), use the quadratic cost

\[
q=\epsilon[V_iV_jV_k]-t,
\qquad t=s,\ 3s,\ \rho
\]

for zero, one, or two counted interior points, respectively.
Every such cost is nonnegative by the actual-area threshold,
elementary subdivision, or the two-interior-point theorem.
This rule also applies to the two final cells with a known
\([LPQ]\) sign. Triangles whose sign is not fixed are omitted.

## 4. The exact fixed inequalities

Use the nonnegative products

\[
a_i,\quad a_i a_j,\quad a_i a_j a_k,\quad q_t,\quad q_ta_i,
\]

where the \(a_i\) are the 28 affine factors above and the \(q_t\)
are the ordered actual-triangle costs. The coefficient file uses
the same `f` and `q` record format as the preceding two C1 notes,
with positive integer weights divided by 4096.

There are **168 fixed cubic expressions, containing 18,124 positive
terms in total**. If \(R(z)=\sum_\nu r_\nu z^\nu\) is any
of their exact expansions, the unit-cube bound is

\[
R(z)\le r_0+\sum_{\nu\ne0}\max(r_\nu,0)\le-\frac34.
                                                               \tag{13}
\]

The largest of these exact rational upper bounds is

\[
-\frac{3295947656639}{3346168627200}<-\frac34.
\]

As in the preceding notes, a certificate applies to every other
cell that preserves the signs of its used costs and has at least
their reference lower bounds. The common affine factors are
unchanged. The exact verifier checks this applicability directly,
and verifies that the 168 expressions cover all 276 cells.

It also reconstructs the entire 26-word list, all three placement
sublists, the 219 capacity-admissible triples, every additional sign
choice, and the strengthened occupancy costs. It validates all
term indices and positive integer weights, expands each fixed
cubic, and evaluates (13) using rational arithmetic. No optimizer
or continuous parameter subdivision is used in verification.

Every competitive configuration in the theorem would make all
terms of an applicable expression nonnegative, hence \(R(z)\ge0\),
contrary to (13). This proves the theorem. \(\square\)
