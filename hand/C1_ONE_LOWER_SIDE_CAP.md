# The one-lower C1 hexagon with a single side-cap point

Use the competitive C1 anchors

\[
O=(0,0),\quad H=(0,h),\quad C=(c,0),\quad
D=(1,d),\quad F=(f,1),
\qquad 0<d\le h<1,\quad0<f\le c<1,
\]

and put

\[
s=\frac8{73}<2A_0,\qquad K=4+2\sqrt3,\qquad
\rho=\frac{49}{60}<Ks.
\]

**Theorem 1.** There is no such configuration whose four other points
are one lower point \(L=(\ell_x,\ell_y)\in OHC\), two points
\(P=(p_x,p_y),Q=(q_x,q_y)\in HCDF\), and a point
\(X=(g,k)\) beyond \(HF\) in the left exterior cap
\(HF(0,1)\). Reflection gives the same exclusion for a single
point in the right exterior cap \(CD(1,0)\).

**Corollary 2.** In every remaining competitive one-lower C1
configuration, at least two of the four free points lie outside the
original five-anchor pentagon.

Indeed, its upper quadrilateral \(HCDF\) has doubled area
\(W\le1\), and cannot contain three free points by the
seven-point quadrilateral theorem: that would give \(W\ge10s>1\).
Thus some free point is outside the anchor pentagon. If exactly one
is outside, the other two upper points are in \(HCDF\); Theorem 1
and [C1_ONE_LOWER_TOP_CAP.md](C1_ONE_LOWER_TOP_CAP.md) exclude all
three possible exterior caps.

All containments in actual triangles and quadrilaterals are strict.
Square-side positions of \(X\) are allowed. No relation between
\(f\) and \(d\) is imposed after choosing the left cap.

The fixed rational coefficients for Theorem 1 are supplied in
[c1_one_lower_side_cap_certificates.json](c1_one_lower_side_cap_certificates.json).
The exact verifier is
[check_c1_one_lower_side_cap.py](check_c1_one_lower_side_cap.py).

## 1. An occupancy-independent support inequality

The positive actual cap and vertical-base areas are

\[
r=[HFX]=f(k-h)-(1-h)g\ge s,\qquad
[OXH]=hg\ge s.
\]

Multiplying the first by \(h\), the second by \(1-h\),
and adding gives

\[
hf(k-h)\ge s,
\qquad \boxed{fh(1-h)\ge s}.                             \tag{1}
\]

The second inequality uses only \(k\le1\). Thus (1) holds
without any lower-point occupancy hypothesis. The actual anchor
triangle \(CDF\) gives

\[
s\le[CDF]=1-c+d(c-f)\le1-f,
\qquad f\le1-s.
\]

Consequently

\[
f\ge4s,\qquad
h(1-h)\ge\frac{s}{1-s}=\frac8{65}>\frac6{49},
\qquad \frac17<h<\frac67.                              \tag{2}
\]

The first bound uses \(h(1-h)\le1/4\). The two roots of
\(z(1-z)=6/49\) are \(1/7,6/7\), proving the last pair.

Since \(L\in OHC\), elementary area subdivision gives
\(hc\ge3s\). The anchor costs \(hf,cd\ge s\) and (2)
therefore imply

\[
h\ge3s,\quad c\ge f\ge4s,\quad d\ge s,\quad d\le h,
\quad g\ge\frac{s}{h}>\frac76s.                        \tag{3}
\]

The cap area can also be written

\[
r=(1-h)(f-g)-f(1-k)\ge s.
\]

Together with its first expression, this yields

\[
f-g\ge\frac{s}{1-h}\ge\frac{s}{1-3s}=\frac8{49},
\qquad k-h\ge\frac{s}{f}\ge\frac8{65}.                 \tag{4}
\]

In particular \(g\le1-2s\), using \(f\le1-s\) and
\(f-g\ge s\); also \(k\ge4s\), using \(h\ge3s\)
and \(8/65>s\).

## 2. Interior-point bounds and small anchor triangles

The coordinate arguments in Section 2 of the top-cap note do not
depend on the location of the exterior point. With the improved
bound \(h<6/7\), they give

\[
\begin{gathered}
\ell_x\ge\frac76s,\quad \ell_y\ge s,\quad
c-\ell_x\ge\frac73s,\quad h-\ell_y\ge2s,\quad
\ell_x+\ell_y\le1-s,\\
\frac76s\le p_x,q_x\le1-s,\qquad
s\le p_y,q_y\le1-s.                                   \tag{5}
\end{gathered}
\]

For clarity, \(c-\ell_x\ge2s/h>7s/3\) follows by
adding the positive \(HCL\) and \(OCL\) costs. The lower
first-coordinate bounds follow from the vertical base \(OH\).
The upper coordinate bounds for \(P,Q\) follow from the two
positive projection identities (9) in the top-cap note.

The six points \(H,C,D,F,P,Q\) also give

\[
8s\le W:=2\operatorname{area}(HCDF)
=1-(h-d)(c-f)\le1.                                    \tag{6}
\]

Every actual C1 triangle has capacity at most two, by Section 6 of
[ONE_CORNER.md](ONE_CORNER.md). The following four have capacity
at most one:

| Triangle | Doubled-area bound |
|---|---|
| \(OFH\) | \(hf\le(6/7)(1-s)=390/511<\rho\) |
| \(CDF\) | \([CDF]\le1-f\le1-4s<\rho\) |
| \(FXH\) | \([FXH]\le f(1-h)\le1-h\le1-3s<\rho\) |
| \(OXH\) | \(hg<hf\le390/511<\rho\) |

Each capacity assertion follows from the two-interior-point triangle
bound \(Ks>\rho\).

## 3. The 153 remaining radial cells

Number the convex hexagon cyclically as

\[
(V_0,\ldots,V_5)=(O,C,D,F,X,H).
\]

Use the radial-word definition and complement relation from
Section 3 of the top-cap note:

\[
[V_iV_{i+j}R]>0\iff j\le r_i,\qquad
1\le r_i\le4,\qquad
(j\le r_i)\iff(6-j>r_{i+j}).                            \tag{7}
\]

There are 26 words satisfying this necessary relation. The four
lower words, indexed from zero, are again

\[
(1,4,4,3,2,1),\ (2,4,3,3,2,1),\
(3,4,3,2,2,1),\ (4,4,3,2,1,1).
\]

The edge tests for \(HCDF\), now with \(F=V_3\), give the
following 18 upper words:

| Index | Upper word | Index | Upper word |
|---|---|---|---|
| 0 | \((1,1,4,4,3,2)\) | 9 | \((2,3,2,3,2,3)\) |
| 1 | \((1,2,4,3,3,2)\) | 10 | \((2,3,3,3,2,2)\) |
| 2 | \((1,3,4,3,2,2)\) | 11 | \((3,2,1,2,4,3)\) |
| 3 | \((2,1,1,4,4,3)\) | 12 | \((3,2,2,2,3,3)\) |
| 4 | \((2,1,2,4,3,3)\) | 13 | \((3,2,3,2,3,2)\) |
| 5 | \((2,1,3,4,3,2)\) | 14 | \((3,3,2,2,2,3)\) |
| 6 | \((2,2,1,3,4,3)\) | 15 | \((3,3,3,2,2,2)\) |
| 7 | \((2,2,2,3,3,3)\) | 16 | \((4,3,2,2,1,3)\) |
| 8 | \((2,2,3,3,3,2)\) | 17 | \((4,3,3,2,1,2)\) |

Let \((i,j,\ell)\) denote the lower word and the two upper
words, relabeling \(P,Q\) so that \(j\le\ell\). As in the
top-cap proof, discard any triple for which a hull triangle contains
all three interior points, one of the four small triangles from
Section 2 contains two of them, or both upper points are on the same
side of both \(HD\) and \(CF\). The last exclusion is Theorem 2
of [ONE_CORNER_COMPLETION.md](ONE_CORNER_COMPLETION.md), using (6).
Exactly 189 triples survive these tests.

For every pair \(R,S\) of interior points, unequal entries at a
hull vertex give the actual sign

\[
\operatorname{sgn}[V_iRS]
=\operatorname{sgn}(r_i(S)-r_i(R)).                     \tag{8}
\]

The proof is the ordering of their two rays inside the convex
interior angle at \(V_i\). For \(P,Q\), the signs at all four
vertices \(H,C,D,F\) are also fixed by crossing both diagonals,
or by the mixed-pair line theorem when only one diagonal separates
the pair. These are exactly the rules (15) and the isolated-vertex
table in the top-cap note, with \(F\) now numbered 3. Precisely
36 of the 189 triples make those signs conflict with (8).

The remaining **153 triples** are the complete certificate cover.
No further pair-line sign split is needed. As before, it is sufficient
to cover all words satisfying the necessary rules; geometric
realizability of every listed cell is not assumed.

## 4. Stronger costs from actual triangles with an interior vertex

The variables are ordered as

\[
z=(h,c,d,f,g,k,\ell_x,\ell_y,p_x,p_y,q_x,q_y)\in[0,1]^{12}.
\]

The certificate file uses these 28 nonnegative affine factors in
the displayed order:

| Index | Factor | Index | Factor |
|---|---|---|---|
| 0 | \(h-3s\) | 14 | \(k-4s\) |
| 1 | \(c-4s\) | 15 | \(\ell_x-7s/6\) |
| 2 | \(6/7-h\) | 16 | \(\ell_y-s\) |
| 3 | \(1-c\) | 17 | \(c-\ell_x-7s/3\) |
| 4 | \(d-s\) | 18 | \(h-\ell_y-2s\) |
| 5 | \(h-d\) | 19 | \(1-s-\ell_x-\ell_y\) |
| 6 | \(f-4s\) | 20 | \(p_x-7s/6\) |
| 7 | \(1-s-f\) | 21 | \(1-s-p_x\) |
| 8 | \(c-f\) | 22 | \(p_y-s\) |
| 9 | \(g-7s/6\) | 23 | \(1-s-p_y\) |
| 10 | \(f-g-8/49\) | 24 | \(q_x-7s/6\) |
| 11 | \(k-h-8/65\) | 25 | \(1-s-q_x\) |
| 12 | \(1-k\) | 26 | \(q_y-s\) |
| 13 | \(1-2s-g\) | 27 | \(1-s-q_y\) |

Number the actual points as \((O,C,D,F,X,H,L,P,Q)\). The
known signs are those of all hull triangles, every triangle with
two hull vertices and one interior point, and every triangle
\(V_iRS\) fixed by (8) or the upper-pair theorem.

These signs sometimes show that an actual triangle with an interior
vertex contains one or both of the other interior points. Whenever
the three required edge signs are all known and agree with the
orientation of the containing triangle, count that point as strictly
inside. This is the usual three-edge characterization of triangle
interiority; it applies equally to positive and negative orientations.
If an edge sign is not known, do not count the point. Thus every
count is a proved lower bound on occupancy, not an assumption about
an unknown sign.

For each increasing index triple whose sign \(\epsilon\) is
known, set

\[
q=\epsilon[V_iV_jV_k]-t,\qquad
t=\begin{cases}
s,&\text{zero counted interior points},\\
3s,&\text{one counted interior point},\\
\rho,&\text{two counted interior points}.
\end{cases}                                             \tag{9}
\]

All these quadratic costs are nonnegative, by the actual-area
threshold, elementary subdivision, or the two-interior-point
triangle theorem. The zero/one/two counts concern the three points
\(L,P,Q\), omitting any vertex of the triangle itself. The earlier
global capacity test ensures that no hull triangle counts three.

Start the cost list with \(q_0=W-8s\), then append the known
triples in lexicographic order with their thresholds from (9).
This fixes every sign and threshold used by a certificate solely
from its reference radial cell.

## 5. Fixed cubic contradiction

Exactly as in Section 5 of the top-cap proof, use products of one,
two, or three of the affine factors, together with each quadratic
cost and its product with one affine factor. Every such expression
is nonnegative. A record `f` gives the factor indices and a
positive integer weight; a record `q` gives the cost index, a
factor index (or \(-1\) for no factor), and a positive integer
weight. Every weight is divided by 4096.

The supplied file contains **70 fixed cubic expressions with
4,016 positive terms in total**. For each exact expansion
\(R(z)=\sum r_\nu z^\nu\), rational arithmetic gives

\[
R(z)\le r_0+\sum_{\nu\ne0}\max(r_\nu,0)\le-\frac34
\qquad(z\in[0,1]^{12}).                                \tag{10}
\]

The largest of the 70 exact upper bounds in (10) is

\[
-\frac{170969015277097}{172160375869440}<-\frac34.
\]

The reuse rule is unchanged: a certificate applies to another
cell if every actual cost it uses has the same sign and at least
its reference threshold there. All affine factors are common.
The verifier checks this rule on the exact known-sign and occupancy
lists, and verifies that the 70 expressions cover all 153 cells.

The verifier independently reconstructs the 26 radial words, the
lower/upper sublists, the 189 preliminary triples, the 36 sign
conflicts, and the strengthened costs (9). It checks all indices
and positive integer weights, expands the 70 expressions, and
computes (10) using rational arithmetic. It runs no optimizer or
continuous-domain subdivision.

Every possible placement would therefore satisfy both \(R(z)\ge0\)
and \(R(z)\le-3/4\) for one of the listed expressions.
This proves Theorem 1 and hence Corollary 2. \(\square\)
