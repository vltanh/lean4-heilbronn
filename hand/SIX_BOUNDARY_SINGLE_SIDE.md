# N with one exterior side-cap point and two anchor-interior points

Use the N anchors

\[
A=(0,a),\ H=(0,h),\ B=(b,0),\ C=(c,0),\ D=(1,d),\ F=(f,1),
\]
\[
0<a<h<1,\quad0<b<c<1,\qquad a\le d\le h,\quad b\le f\le c.
                                                               \tag{1}
\]

Let \(X=(x,y)\) lie in the lower-right exterior cap
\(CD(1,0)\), and let the two other points
\(P=(p_x,p_y),Q=(q_x,q_y)\) be inside the original anchor hexagon
\(ABCDFH\). The square corner in the cap notation is virtual.
All containments in actual polygons are strict. X may lie on the
right side of the square.

**Theorem 1.** Every configuration in this complete family has
minimum ordinary triangle area strictly less than \(7/128<A_0\).
Transposition gives the same conclusion for a single exterior point
in the upper-left side cap \(FH(0,1)\).

Thus this excludes the entire N class with exactly one exterior
side-cap point and two points inside the anchor hexagon, including
both the mixed lower/upper placement and the two-upper placement.
There is no additional order between f and d. Other placements of
the two free points are separate cases.

The proof uses a complete finite sign cover and 300 fixed rational
cubic inequalities. Their 40,480 positive terms are supplied in
[six_boundary_single_side_certificates.json](six_boundary_single_side_certificates.json),
with exact verifier
[check_six_boundary_single_side.py](check_six_boundary_single_side.py).
The bounds, containments, signs, and coverage underlying the fixed
expressions are proved below.

Assume for a contradiction that every actual unsigned doubled area
is at least

\[
s=\frac7{64},\qquad \rho=\frac{13}{16}<(4+2\sqrt3)s.
\]

The full hull is the strictly convex heptagon

\[
(V_0,\ldots,V_6)=(A,B,C,X,D,F,H),                        \tag{2}
\]

with P and Q its two interior points.

## 1. Common affine bounds

Put \(L=h-a\) and \(M=c-b\). The anchor and cap costs give

\[
aM\ge s,\quad bL\ge s,\quad My\ge s,
\qquad [CXD]=d(x-c)-(1-c)y\ge s.                         \tag{3}
\]

Thus \(a,b,L,M\ge s\). Also

\[
x-c\ge s,\qquad
(1-c)(d-y)\ge s+d(1-x)\ge s,
\qquad c\le1-s.                                       \tag{4}
\]

Since \(b\ge s\), (3)--(4) imply

\[
a\ge\frac{s}{1-2s}=\frac7{50},\qquad
b\ge\frac{s}{1-a}\ge\frac{175}{1376}>\frac18.
\]

Consequently \(M=c-b<49/64\), and (3) gives the convenient
weaker bounds

\[
                         a,y\ge\frac17,\qquad b\ge\frac18.
                                                               \tag{5}
\]

The first two inequalities in (3) also imply

\[
h\ge\frac{s}{M}+\frac{s}{b},\qquad
hc\ge\frac{sc^2}{bM}\ge4s,\qquad c\ge4s.              \tag{6}
\]

Combining the cap inequality with \(My\ge s\),

\[
d\ge\frac{s}{M}+\frac{s}{1-c}
\ge\frac{4s}{1-b}>\frac12,
\qquad h\ge d>\frac12.                                \tag{7}
\]

The Cauchy--Schwarz step uses \(M+1-c=1-b\).
The two upper anchor areas satisfy

\[
[DFH]=1-h+f(h-d)\le1-d,\qquad
[CDF]=1-c+d(c-f)\le1-f.
\]

Hence \(d,f\le1-s\). Finally, (4) and \(c\ge4s\) give

\[
                         d-y\ge\frac{s}{1-c}\ge\frac7{36}.
                                                               \tag{8}
\]

For either interior point \(R=(r_x,r_y)\in\{P,Q\}\), the
actual bases AH and BC give \(r_x,r_y\ge s\). Every point of
the anchor hexagon is on the inner sides of CD, DF, and FH, so the
areas on the left of both identities

\[
\begin{aligned}
(1-f)[CDR]+(1-c)[DFR]&=[CDF](1-r_x),\\
(1-d)[FHR]+(1-h)[DFR]&=[DFH](1-r_y)
\end{aligned}                                             \tag{9}
\]

are positive and at least s. The sum of the nonnegative coefficients
on each left side is at least the corresponding right-side area
factor, using \([CDF]\le1-f\), \([DFH]\le1-d\).
Thus

\[
                        s\le p_x,p_y,q_x,q_y\le1-s.     \tag{10}
\]

## 2. Empty triangles, capacity bounds, and the two pair classes

Two already proved side-cap consequences apply at exactly this
threshold s:

\[
                              [ABH]<3s,\qquad [BCX]<3s.
                                                               \tag{11}
\]

The first is Theorem 5 of
[SIX_BOUNDARY_EXTERIOR.md](SIX_BOUNDARY_EXTERIOR.md); the second
is Lemma 2 of
[SIX_BOUNDARY_TWO_SIDE_PROJECTION.md](SIX_BOUNDARY_TWO_SIDE_PROJECTION.md),
whose proof only assumes the one occupied cap. Neither triangle can
contain P or Q, since subdivision at an interior actual point would
require doubled area at least \(3s\).

Theorem 1 of [SIX_BOUNDARY_HULL.md](SIX_BOUNDARY_HULL.md) is valid
without an exact-anchor-hull hypothesis. It gives

\[
[ABH],[ABC],[BCD],[CDF],[DFH],[AFH]<\rho.                  \tag{12}
\]

Thus none of those six actual anchor ears contains both P and Q.
The same inequalities will also be retained as nonnegative quadratic
costs, with their displayed area upper bounds.

The virtual lower triangle \((0,0)HC\) contains at most one of
P,Q. Indeed Theorem 4 of
[QUADRILATERAL_HULL.md](QUADRILATERAL_HULL.md) would otherwise give
minimum ordinary area at most \(7hc/128<7/128\), where the strict
comparison follows from \(c\le1-s<1\). The actual segment HC
partitions the anchor hexagon into the lower quadrilateral HABC and
the upper quadrilateral HCDF. No actual point lies on HC. Consequently
there are only two pair classes:

* **Mixed:** name P as the lower point in HABC, and Q as the upper
  point in HCDF.
* **Upper:** both P and Q lie in HCDF; their names may be interchanged.

Write

\[
W=2\operatorname{area}(HCDF)=1-(h-d)(c-f)\le1.
\]

The mixed class has \(W\ge4s\), by the four triangles obtained
by joining Q to the quadrilateral vertices. The upper class has
\(W\ge8s\), by the six-point quadrilateral theorem in
[QUADRILATERAL_HULL.md](QUADRILATERAL_HULL.md).

There is one further strengthened cost in the mixed class. The five
actual points \(H,C,A,B,P\) lie in the virtual triangle
\((0,0)HC\), including the actual vertices H and C. The
endpoint-triangle theorem in Section 1 of
[TYPE_II.md](TYPE_II.md) gives

\[
hc\ge\frac{s}{3-2\sqrt2}
 =\frac7{64}(3+2\sqrt2)>\frac7{11}.                    \tag{13}
\]

The strict comparison is equivalent to \(8>(31/11)^2\).
In the upper class the common bound \(hc\ge4s\) from (6)
will suffice.

## 3. A complete 543-cell cover

### One-point radial words

For each \(R\in\{P,Q\}\), define a word
\(r(R)=(r_0,\ldots,r_6)\) by

\[
[V_iV_{i+j}R]>0\iff j\le r_i,\qquad 1\le r_i\le5,
                                                               \tag{14}
\]

with indices modulo seven. Convexity makes the positive signs
consecutive. Reversing a directed chord gives the necessary relation

\[
(j\le r_i)\iff(7-j>r_{i+j}),
\qquad i=0,\ldots,6,\quad j=1,\ldots,6.                 \tag{15}
\]

There are 57 words satisfying (15). The original anchor-hexagon
placement adds \(r_2\ge2\), since the point is on the inner
side of CD. All other anchor-hexagon edge tests are already hull
edge tests. The two empty triangles in (11) give

\[
                              2\le r_1\le4.             \tag{16}
\]

For ABH, its two neighboring hull-edge tests are positive, so its
interiority is exactly the remaining sign B-to-H, namely \(r_1=5\).
For BCX, the analogous third edge test is the negative of B-to-X;
interiority is exactly \(r_1=1\). This proves (16).

Exactly 43 words satisfy these additional conditions. Of them, 12
are below HC, with \(r_6<3\), and 31 are above HC, with
\(r_6\ge3\). Cover all lower/upper pairs in the mixed class,
and all lexicographically ordered pairs of upper words in the upper
class. As throughout these finite covers, it is sufficient to cover
all words satisfying the necessary relations; realizability of each
listed word is not assumed.

### Initial pair exclusions and signs

Discard any pair for which one of the six anchor ears in (12)
contains both interior points. This containment is decided by its
three cyclic edge signs from (14).
For two upper points, also discard the same-diagonal-sector case
in HCDF: both HD signs and both CF signs agree. Theorem 2 of
[ONE_CORNER_COMPLETION.md](ONE_CORNER_COMPLETION.md) excludes this
case, since \(W\le1\).

At any hull vertex \(V_i\), if the two word entries differ then

\[
\operatorname{sgn}[V_iPQ]
=\operatorname{sgn}(r_i(Q)-r_i(P)).                     \tag{17}
\]

This is the order of the two rays inside the convex interior angle
at that vertex. For two upper points, all four pair-line signs at
H,C,D,F are also determined. If both diagonals separate the pair,
then for each separating oriented diagonal U-to-V,

\[
\operatorname{sgn}[UPQ]= -\operatorname{sgn}[UVP],
\qquad
\operatorname{sgn}[VPQ]= \operatorname{sgn}[UVP].         \tag{18}
\]

If only one diagonal separates the pair, Theorem 3 of
ONE_CORNER_COMPLETION.md fixes the isolated vertex of their common
containing triangle:

| Common triangle | Isolated vertex under PQ |
|---|---|
| HCD | C |
| HDF | F |
| HCF | H |
| CDF | D |

The separating-diagonal rule (18) fixes the orientation of that
isolated sign; the other three are its negatives. Discard a word
pair if this rule conflicts with (17).

Starting with \(12\cdot31=372\) mixed pairs and
\(31\cdot32/2=496\) ordered upper pairs, the ear tests discard
150 pairs in total, the common-sector test discards a further 111,
and the conflicting-sign test discards a further 71. Thus exactly
**536 base cases** remain: 348 mixed and 188 upper.

### Five exhaustive actual-area sign splits

Retain 531 of these cases without any further split. In the following
five mixed cases, split by all signs of the indicated actual areas.
The displayed vertex order is the bit order, with positive sign encoded
by 1 and negative sign by 0.

| P word | Q word | Additional signs | Number of choices |
|---|---|---|---|
| (3,3,4,3,3,3,2) | (4,3,2,1,2,5,4) | BPQ | 2 |
| (3,4,4,3,3,2,2) | (5,4,3,2,2,1,4) | BPQ | 2 |
| (5,4,4,3,2,1,2) | (3,2,3,3,4,3,3) | XPQ | 2 |
| (5,4,4,3,2,1,2) | (4,3,3,2,2,3,4) | DPQ | 2 |
| (5,4,4,3,2,1,2) | (4,3,3,3,2,3,3) | XPQ, DPQ | 4 |

In each of these five cases these are precisely the pair-line signs
not already fixed by (17). Every actual triangle has nonzero area,
so the splits cover all alternatives. They replace five base cases
by twelve cells, giving the complete count

\[
                              531+12=543.                \tag{19}
\]

## 4. The nonnegative factors and quadratic costs

Use the coordinate order

\[
\zeta=(a,h,b,c,d,f,x,y,p_x,p_y,q_x,q_y)\in[0,1]^{12}.
\]

The 27 common nonnegative affine factors, in coefficient-file order,
are:

| Index | Factor | Index | Factor |
|---|---|---|---|
| 0 | \(a-1/7\) | 14 | \(c-b-s\) |
| 1 | \(b-1/8\) | 15 | \(1-x\) |
| 2 | \(h-1/2\) | 16 | \(x-c-s\) |
| 3 | \(c-4s\) | 17 | \(y-1/7\) |
| 4 | \(d-1/2\) | 18 | \(d-y-7/36\) |
| 5 | \(1-h\) | 19 | \(p_x-s\) |
| 6 | \(1-s-c\) | 20 | \(1-s-p_x\) |
| 7 | \(1-s-d\) | 21 | \(p_y-s\) |
| 8 | \(1-s-f\) | 22 | \(1-s-p_y\) |
| 9 | \(d-a\) | 23 | \(q_x-s\) |
| 10 | \(h-d\) | 24 | \(1-s-q_x\) |
| 11 | \(f-b\) | 25 | \(q_y-s\) |
| 12 | \(c-f\) | 26 | \(1-s-q_y\) |
| 13 | \(h-a-s\) | | |

Call them \(l_i\). Number the actual points as
\((A,B,C,X,D,F,H,P,Q)\). For each cell, its known signs consist
of every hull triangle, every triangle with two hull vertices and
one interior point, and the signs fixed by (17)--(18) or the final
split table.

These signs can certify actual containments even in a triangle with
an interior vertex. Count an interior point only if all three edge
signs are known and equal to the orientation of the containing
triangle. Omit any vertex of that triangle from the count. This
three-edge test is valid for either orientation, and an unknown sign
never contributes a claimed containment.

For each increasing triple with known sign \(\epsilon\), use

\[
q=\epsilon[V_iV_jV_k]-T,
\qquad T=s,\ 3s,\ \rho
\]

according as zero, one, or two of P,Q are certified inside.
Every such quadratic cost is nonnegative by the actual-area threshold,
elementary triangle subdivision, or the two-interior-point theorem.
Visit these known triples in lexicographic order to form the start
of the cost list. Then append, in this exact order,

\[
\begin{array}{c|cc}
&\text{mixed class}&\text{upper class}\\\hline
\text{first extra cost}&W-4s&W-8s\\
\text{second extra cost}&hc-7/11&hc-4s,
\end{array}
\]

followed by

\[
3s-[ABH],\quad3s-[BCX],
\]

and the six costs \(\rho-[T]\) for

\[
T=ABH,\ ABC,\ BCD,\ CDF,\ DFH,\ AFH
\]

in that order. All extra costs were justified in Sections 1--2.
The repeated ABH upper bounds are harmless; both are valid, and
the smaller upper bound can support reuse of the weaker one.

## 5. Fixed rational contradiction on every cell

The allowed nonnegative expressions are

\[
l_i,\quad l_i l_j,\quad l_i l_j l_k,\quad q_t,\quad q_tl_i.
                                                               \tag{20}
\]

All have degree at most three. Each supplied certificate is a positive
integer-weighted sum of (20), divided by 4096. A record `f` gives
the sorted factor indices and a positive weight. A record `q` gives
the quadratic-cost index, its affine-factor index (or \(-1\) for
no factor), and a positive weight. The reference words, pair class,
and branch fix its cost list entirely by the preceding rules.

For every one of the 300 expressions, write its exact expansion as
\(R(\zeta)=\sum r_\nu\zeta^\nu\). All monomials on the
unit cube lie between zero and one, so

\[
R(\zeta)\le r_0+\sum_{\nu\ne0}\max(r_\nu,0)\le-\frac34.
                                                               \tag{21}
\]

The largest of these exact rational upper bounds is

\[
                     -\frac{81664995001}{82678120448}.
                                                               \tag{22}
\]

There are 40,480 positive terms in total. No numerical tolerance or
optimization result is used in (21)--(22).

A certificate also applies in another cell when every used quadratic
cost has the same area expression and sign and at least the reference
threshold there. This includes the two area costs W and hc and the
upper-bound costs. When a cell offers two bounds on the same signed
area, use the stronger threshold for this comparison. Every reference
cost then remains nonnegative in the target cell, while the affine
factors are common.

The exact verifier reconstructs the complete radial-word lists and
both pair classes, all initial exclusions, the five sign splits,
and the 543 cells. It computes every known sign and certified actual
containment, forms the cost lists, expands every fixed expression,
and checks all positive weights and indices. Its used-cost reuse
check verifies that the 300 expressions cover all 543 cells.
It performs no coordinate-domain subdivision or optimization.

Any configuration satisfying the assumed doubled threshold s would
therefore belong to a covered cell and give \(R\ge0\), since all
its weighted summands are nonnegative. Equation (21) gives the opposite
strict inequality. This contradiction proves Theorem 1. \(\square\)
