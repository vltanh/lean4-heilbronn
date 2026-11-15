# One opposite-cap point and two anchor-interior points in N

The proof uses 616 fixed rational cubic expressions with 89,897 positive
terms. Their complete table is
[six_boundary_single_top_certificates.json](six_boundary_single_top_certificates.json);
its exact verifier reconstructs all 893 sign and scalar-range cells.

Use the actual N anchors
\[
A=(0,a),\ H=(0,h),\ B=(b,0),\ C=(c,0),\ D=(1,d),\ F=(f,1),
\]
\[
0<a<h<1,\quad0<b<c<1,\qquad a\le d\le h,\quad b\le f\le c.
                                                               \tag{1}
\]
There is one further point \(X=(x_X,y_X)\) beyond DF in the
opposite cap \(DF(1,1)\), and two points
\(P=(p_x,p_y),Q=(q_x,q_y)\) inside the anchor hexagon ABCDFH.
The corner in the cap notation is virtual. Transposition preserves
this occupancy and (1), so impose \(f\le d\).

**Theorem 1.** Every configuration in this complete family has minimum
ordinary triangle area strictly below \(4/73<A_0\), where
\(A_0=(9\sqrt{65}-55)/320\). This excludes N6-03, including both
lower/upper placements and all pair-line signs.

Suppose for a contradiction that all
actual unsigned doubled areas are at least
\[
s=8/73,\qquad \rho=49/60<(4+2\sqrt3)s.
                                                               \tag{2}
\]
The two strict rational comparisons follow from
\(65\cdot219^2-1765^2=2240>0\) and
\(3\cdot960^2-1657^2=19151>0\), respectively.
All tests on lines through two actual points are strict: a point
on such a line would already give a zero-area triangle.

The full hull is the strictly convex heptagon
\[
(V_0,\ldots,V_6)=(A,B,C,D,X,F,H),                     \tag{3}
\]
with P and Q its two interior points. Square-side contacts of X
are allowed. This note addresses the complete N6-03 occupancy.

## 1. Affine bounds and area costs

Put \(L=h-a\), \(M=c-b\), and
\[
W=[HCDF]=1-(h-d)(c-f),\qquad \delta=(1-d)(1-f).
\]
Brackets denote signed doubled areas, with the polygon bracket W
denoting doubled polygon area. The anchor inequalities give
\[
aM\ge s,\quad bL\ge s,\quad
h\ge s/M+s/b,\quad hc\ge sc^2/(bM)\ge4s.              \tag{4}
\]
Since \(M<1-b\) and \(h<1\), we have
\(b(1-b)>s>7/64\), hence \(b>1/8\). Transposition proves
\(a>1/8\). Since h,c are at most one, (4) gives
\(h,c\ge4s\). Also \(L,M\ge s\).

The two forms of the cap area are
\[
[DXF]=(1-d)(x_X-f)-(1-f)(1-y_X)
     =(1-f)(y_X-d)-(1-d)(1-x_X)\ge s.                 \tag{5}
\]
Thus \(x_X-f,y_X-d\ge s\) and \(\delta\ge s\).
Since \(f\ge b>1/8\),
\(s\le\delta<(7/8)(1-d)\), so \(d<7/8\).
The chosen order \(f\le d\) gives
\(s\le\delta\le(1-f)^2\); therefore \(f<67/100\),
because \((33/100)^2<8/73\).

For either \(R=(r_x,r_y)\in\{P,Q\}\), the bases AH and BC
give \(r_x,r_y\ge s\). The exact projection identities
\[
\begin{aligned}
(1-f)[CDR]+(1-c)[DFR]&=[CDF](1-r_x),\\
(1-h)[DFR]+(1-d)[FHR]&=[DFH](1-r_y)
\end{aligned}                                                   \tag{6}
\]
give \(r_x,r_y\le1-s\): every area on the left is at least s,
and the area factor on the right is at most the sum of the two
nonnegative weights. See also Section 1 of
[SIX_BOUNDARY_SINGLE_SIDE.md](SIX_BOUNDARY_SINGLE_SIDE.md).

Theorem 1 of [SIX_BOUNDARY_HULL.md](SIX_BOUNDARY_HULL.md) applies
throughout the N family at the weaker threshold 7/64. Hence
\[
[ABH],[ABC],[BCD],[CDF],[DFH],[AFH]<13/16.              \tag{7}
\]
None of these six anchor ears contains both P and Q, by the
two-interior-point triangle theorem in
[CORNER_FAMILIES.md](CORNER_FAMILIES.md).

There is at most one point below HC. Otherwise the six actual
points H,C,A,B,P,Q in the virtual triangle \((0,0)HC\) would,
by Theorem 4 of [QUADRILATERAL_HULL.md](QUADRILATERAL_HULL.md),
give minimum ordinary area at most \(7hc/128<7/128<4/73\).
Thus P,Q are either one below HC and one in HCDF, or both in HCDF.
Call these the mixed and upper classes. Fan subdivision in the mixed
class, and the six-point quadrilateral theorem in the upper class, give
\[
W\ge4s\quad\hbox{(mixed)},\qquad W\ge8s\quad\hbox{(upper)}.
                                                               \tag{8}
\]

In the mixed class let \(Z=(\ell_x,\ell_y)\) be the lower point.
The five actual points H,C,A,B,Z lie in \((0,0)HC\), with H,C
actual endpoints. The endpoint theorem in Section 1 of
[TYPE_II.md](TYPE_II.md) gives
\[
hc\ge s/(3-2\sqrt2)>7/11,\qquad h,c\ge7/11.           \tag{9}
\]
The strict comparison already holds at \(s=7/64\), since
\(2\cdot128^2-181^2=7>0\).
Moreover \([CHZ]=hc-h\ell_x-c\ell_y\ge s\), while the
AH and BC bases give \(h\ell_x,c\ell_y\ge s\).
Consequently
\[
c-\ell_x\ge2s,\quad h-\ell_y\ge2s,\quad
\ell_x+\ell_y\le1-s.                                  \tag{10}
\]
For the last inequality divide CHZ by hc and use h,c at most one.

## 2. The complete radial-word and pair cover

For an interior point R of (3), define its word
\(r(R)=(r_0,\ldots,r_6)\) by
\[
[V_iV_{i+j}R]>0\iff j\le r_i,\qquad1\le r_i\le5.
                                                               \tag{11}
\]
Indices are cyclic modulo seven. Convexity makes the positive chord
signs consecutive. Reversing a chord gives the necessary relations
\[
(j\le r_i)\iff(7-j>r_{i+j})\quad(1\le j\le6).         \tag{12}
\]
There are 57 tuples satisfying (12). Being inside the original
hexagon adds exactly the missing edge test DF, namely \(r_3\ge2\).
This leaves 52 words, of which 19 are below HC and 33 above HC.
Order these 52 words lexicographically, starting at index zero.
The upper test is \([HCR]>0\), equivalently \(r_6\ge3\).

Interchange P,Q so that their word indices i,j satisfy \(i\le j\).
Discard two lower words and the pairs placing both points in any
ear (7). For two upper words, also discard a shared diagonal sector
of HCDF, by Theorem 2 of
[ONE_CORNER_COMPLETION.md](ONE_CORNER_COMPLETION.md).

Whenever the entries at a hull vertex differ, their ray order gives
\[
\operatorname{sgn}[V_iPQ]=\operatorname{sgn}(r_i(Q)-r_i(P)).
                                                               \tag{13}
\]
For two upper points, all four pair-line signs at H,C,D,F are fixed
as well. If both diagonals separate P,Q, a separating oriented
diagonal U-to-V gives
\[
\operatorname{sgn}[UPQ]=-\operatorname{sgn}[UVP],\qquad
\operatorname{sgn}[VPQ]=\operatorname{sgn}[UVP].         \tag{14}
\]
If only one diagonal separates them, Theorem 3 of
ONE_CORNER_COMPLETION fixes the isolated vertex of their common
containing triangle: C for HCD, F for HDF, H for HCF, and D for CDF.
Rule (14) fixes the isolated sign, and the other three signs are
its negatives. Discard any conflict with (13).

The resulting lexicographic list consists of **884 base pairs**:
615 mixed and 269 upper. It is an exhaustive cover by necessary
conditions; no realizability assertion about an individual pair
is needed. Number the base pairs from zero in this order.

The following finite refinements cover all still-unknown signs
needed by the fixed expressions. A positive actual sign is encoded
by bit 1, and a negative sign by bit 0, in the displayed order.

| Base index | Word-index pair | Actual-area sign split |
|---|---|---|
| 196 | (6,15) | APQ |
| 260 | (8,22) | XPQ |
| 262 | (8,24) | XPQ, FPQ |
| 274 | (8,40) | FPQ |

There are also three scalar cuts, always including both closed halves:

| Base index and branch | Scalar cut |
|---|---|
| 213, pair (6,41) | \(d\le1/2\) or \(d\ge1/2\) |
| 271, pair (8,37) | \(c\le7/8\) or \(c\ge7/8\) |
| 274 with \([FPQ]<0\) | \(q_x\le1/2\) or \(q_x\ge1/2\) |

The four actual-area splits replace four pairs by ten cells; the
three scalar cuts each add one. The complete number is therefore
\[
884+6+3=893.                                            \tag{15}
\]
No actual zero sign is omitted, since (2) forbids it. The closed
scalar halves explicitly include their boundaries.

## 3. Ordered nonnegative factors and quadratic costs

Use coordinate order
\[
(a,h,b,c,d,f,x_X,y_X,p_x,p_y,q_x,q_y)\in[0,1]^{12}.
\]
The 27 common affine factors, in table order, are
\[
\begin{gathered}
a-1/8,\ b-1/8,\ h-4s,\ c-4s,\ 1-h,\ 1-c,\\
d-a,\ h-d,\ f-b,\ c-f,\ d-f,\ h-a-s,\ c-b-s,\\
7/8-d,\ 67/100-f,\ x_X-f-s,\ y_X-d-s,\ 1-x_X,\ 1-y_X,\\
p_x-s,\ 1-s-p_x,\ p_y-s,\ 1-s-p_y,\\
q_x-s,\ 1-s-q_x,\ q_y-s,\ 1-s-q_y.
\end{gathered}                                                   \tag{16}
\]
For every mixed cell append the five factors
\[
h-7/11,\ c-7/11,\ c-\ell_x-2s,\ h-\ell_y-2s,
\ 1-s-\ell_x-\ell_y.                                   \tag{17}
\]
Finally append the relevant scalar-cut factor, if present. Sections
1–2 prove all factors nonnegative on their stated cells.

Number the actual points by \((A,B,C,D,X,F,H,P,Q)\).
All hull triples have positive sign; two-hull/one-interior triples
are determined by (11). The remaining known signs come from
(13)–(14) and the displayed actual-area splits.

For each increasing triple with known sign \(\epsilon\), count
the other points among P,Q whose three oriented edge signs are
all known and equal to \(\epsilon\). Omit vertices of the triple
itself. This is a valid actual-containment test for either orientation;
an unknown sign never contributes a containment. The cost is
\[
q=\epsilon[V_iV_jV_k]-T,\qquad
T=s,\ 3s,\ \rho
\]
according as the count is zero, one, or two. Nonnegativity follows
from (2), triangle subdivision, or the two-interior-point theorem.

Visit known triples lexicographically, then append
\[
hc-\begin{cases}7/11&\text{mixed},\\4s&\text{upper},\end{cases}
\quad
W-\begin{cases}4s&\text{mixed},\\8s&\text{upper},\end{cases}
\quad\delta-s,                                        \tag{18}
\]
and finally the six upper-ear costs \(13/16-[T]\), ordered
as \(T=ABH,ABC,BCD,CDF,DFH,AFH\). This defines the complete
quadratic list without any numerical premise.

## 4. Fixed rational contradiction and certificate reuse

Each table record specifies a reference cell and a positive rational
sum of
\[
l_i,\quad l_i l_j,\quad l_i l_j l_k,\quad q_t,\quad q_tl_i.
                                                               \tag{19}
\]
The factor and cost lists are exactly (16)–(18), with the applicable
conditional and cut factors. Each coefficient is a positive integer
divided by the record's positive integer scale. Thus the sum is
nonnegative throughout its reference cell.

If its exact expansion is \(R(z)=\sum_m r_mz^m\), every monomial
on the unit cube is between zero and one. Consequently
\[
R(z)\le r_0+\sum_{m\ne0}\max(r_m,0).                  \tag{20}
\]
For all 616 records the exact right side is below \(-3/4\),
with greatest value
\[
-\frac{5526045633638821}{5608815984640000}<-\frac34.     \tag{21}
\]
All scales are 4096, and the records contain 89,897 positive terms.
The verifier recomputes each stored bound with exact rational arithmetic.

A record can be reused on another cell only if all its used affine
factors occur there and all its used signed-area costs have at least
their reference threshold there. For duplicated bounds on a signed
area, take the stronger threshold. These tests imply that the same
fixed polynomial is nonnegative on the target cell, so (20) gives
the same contradiction. The coefficient file records a certificate
index for each of the 893 cells.

The exact verifier
[check_six_boundary_single_top.py](check_six_boundary_single_top.py)
rebuilds all words, pairs, actual signs, containments, factors,
quadratic costs, and the complete refinement (15). It re-expands
every fixed expression and checks every use on another cell.
It requires a complete table and accepts no unresolved cell.
The discovery program in `research/` uses floating linear programs
only to find candidates; every saved candidate is rounded to rational
coefficients and expanded exactly before it enters the table.

The complete table passes this verifier: every possible configuration
in the stated family belongs to a cell where the same polynomial is
both nonnegative and strictly negative. This contradiction proves
Theorem 1. \(\square\)

Run `python hand/check_six_boundary_single_top.py` from the repository
root to reproduce the complete exact check.
