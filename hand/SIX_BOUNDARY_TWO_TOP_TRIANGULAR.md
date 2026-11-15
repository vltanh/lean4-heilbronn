# Two opposite-cap points with triangular hull in N

Use the N anchors
\[
A=(0,a),\quad H=(0,h),\quad B=(b,0),\quad C=(c,0),
\quad D=(1,d),\quad F=(f,1),
\]
\[
0<a<h<1,\quad0<b<c<1,\qquad a\le d\le h,\quad b\le f\le c.
                                                               \tag{1}
\]
Two other actual points lie beyond DF in the opposite cap
\(DF(1,1)\), and the ninth point Q is inside the anchor hexagon.
Suppose the hull of D,F and the two cap points is a triangle.
Name the outer point \(X=(x_x,x_y)\) and the inner point
\(P=(p_x,p_y)\), so \(P\in\operatorname{int}(DXF)\).
Write \(Q=(q_x,q_y)\). Cap notation uses \((1,1)\) only as a
virtual containing vertex. Square-side positions of X are allowed.

**Theorem 1.** Every configuration in this entire triangular-hull
branch has minimum ordinary triangle area strictly below
\(4/73<A_0\). No additional line-sign assumptions are imposed.

The complementary convex top hull is treated in
[SIX_BOUNDARY_TWO_TOP_CONVEX.md](SIX_BOUNDARY_TWO_TOP_CONVEX.md).
Together these two theorems cover the complete N6-06 occupancy.
The present proof has 260 ordered radial pairs and two exhaustive
actual-line splits, giving 262 terminal cells. Its 220 fixed cubics
and 29,641 positive terms are recorded in
[six_boundary_two_top_triangular_certificates.json](six_boundary_two_top_triangular_certificates.json).
The exact verifier is
[check_six_boundary_two_top_triangular.py](check_six_boundary_two_top_triangular.py).

Assume for a contradiction that every actual unsigned doubled area
is at least
\[
\sigma=\frac8{73},\qquad\rho=\frac{49}{60}
 <(4+2\sqrt3)\sigma.                                  \tag{2}
\]
All actual-line tests are strict, since collinearity gives zero area.
After transposing the square and relabeling the anchors if necessary,
we may assume \(f\le d\). Transposition preserves this occupancy
and the triangular top hull. Brackets denote signed doubled areas.

## 1. The hull and common coordinate bounds

The full cyclic hull is
\[
(V_0,\ldots,V_6)=(A,B,C,D,X,F,H),                      \tag{3}
\]
with the two interior points \(V_7=P,V_8=Q\).
The boundary contacts D,F cannot be interior vertices of the
four-point cap hull, so its triangular alternative has exactly the
form DXF. The original anchor contacts stay extreme, and Q remains
inside their hexagon. Positive minimum area makes (3) strictly convex.

Put \(L=h-a\), \(M=c-b\). The actual anchor costs give
\[
aM\ge\sigma,\qquad bL\ge\sigma,\qquad
h\ge\frac{\sigma}{M}+\frac{\sigma}{b},\qquad
c\ge\frac{\sigma}{L}+\frac{\sigma}{a}.                \tag{4}
\]
Since \(M<1-b,L<1-a\) and \(h,c<1\), these imply
\(b(1-b)>\sigma>7/64\) and \(a(1-a)>\sigma>7/64\).
Consequently
\[
a,b>1/8,\qquad d,f>1/8,
\qquad hc\ge\frac{\sigma c^2}{bM}\ge4\sigma,
\qquad h,c\ge4\sigma.                                \tag{5}
\]
For the product bound use \(b+M=c\), hence \(bM\le c^2/4\).
Also \(L,M\ge\sigma\).

The three subtriangles around P give \([DXF]\ge3\sigma\).
With \(\delta=(1-d)(1-f)\), the cap identities are
\[
\begin{aligned}
[DXF]&=(1-d)(x_x-f)-(1-f)(1-x_y)\\
     &=(1-f)(x_y-d)-(1-d)(1-x_x),\\
\delta-[DXF]&=(1-d)(1-x_x)+(1-f)(1-x_y)\ge0.
\end{aligned}                                         \tag{6}
\]
Thus \(\delta\ge3\sigma\). Since \(f>1/8\),
\[
d<1-\frac{24\sigma}{7}=\frac{319}{511}.
\]
Since \(f\le d\), also \(\delta\le(1-f)^2\), whence
\(f<3/7\); the required exact comparison is
\(3\sigma>16/49\). Each identity in (6), with the subtracted
product nonnegative and \(d,f>1/8\), gives
\[
x_x-f>\frac{192}{511},\qquad
x_y-d>\frac{192}{511}.                                \tag{7}
\]

The same cap identities for P, now at threshold \(\sigma\), give
\[
p_x-f>\frac{64}{511},\qquad
p_y-d>\frac{64}{511}.                                 \tag{8}
\]
The other two subdivision costs are
\[
\begin{aligned}
[DXP]&=(x_y-d)(1-p_x)-(1-x_x)(p_y-d)\ge\sigma,\\
[XFP]&=(x_x-f)(1-p_y)-(1-x_y)(p_x-f)\ge\sigma.
\end{aligned}
\]
Their subtracted products are nonnegative and their remaining
coefficients are at most one. Therefore \(p_x,p_y\le1-\sigma\).

For Q, the actual bases AH and BC give \(Lq_x,Mq_y\ge\sigma\),
so \(q_x,q_y\ge\sigma\). Its positive CDQ, DFQ and FHQ
edge tests give the remaining bounds through
\[
\begin{aligned}
(1-f)[CDQ]+(1-c)[DFQ]
 &=\{d(1-f)+(1-d)(1-c)\}(1-q_x),\\
(1-h)[DFQ]+(1-d)[FHQ]
 &=\{(1-h)(1-f)+(1-d)f\}(1-q_y).
\end{aligned}                                         \tag{9}
\]
Each coefficient in braces is at most the sum of its two positive
weights. Thus \(q_x,q_y\le1-\sigma\).

The 27 common nonnegative affine factors, in data order, are
\[
\begin{gathered}
a-1/8,\ b-1/8,\ h-4\sigma,\ c-4\sigma,\ 1-h,\ 1-c,\\
d-a,\ h-d,\ f-b,\ c-f,\ d-f,\ h-a-\sigma,\ c-b-\sigma,\\
319/511-d,\ 3/7-f,\ x_x-f-192/511,\ x_y-d-192/511,\ 1-x_x,\ 1-x_y,\\
p_x-f-64/511,\ p_y-d-64/511,\ 1-\sigma-p_x,\ 1-\sigma-p_y,\\
q_x-\sigma,\ q_y-\sigma,\ 1-\sigma-q_x,\ 1-\sigma-q_y.
\end{gathered}                                         \tag{10}
\]
All follow from (1) and (4)--(9).

## 2. The radial cover and its only two sign splits

For an interior point Z define its radial word by
\[
[V_iV_{i+j}Z]>0\quad\Longleftrightarrow\quad j\le r_i(Z),
\qquad1\le r_i(Z)\le5,\quad1\le j\le6.                \tag{11}
\]
Indices are cyclic modulo seven. Convexity places the positive chords
in an initial interval, and reversal requires
\[
(j\le r_i)\quad\Longleftrightarrow\quad(7-j>r_{i+j}).   \tag{12}
\]
There are 57 solutions among the \(5^7\) integer words. Order
them lexicographically and number them from zero.

The condition \(P\in DXF\) is exactly \(r_3(P)=1\):
its DX and XF tests are hull-edge tests, and its DF test is negative.
This leaves the five words, at full-list indices 19,22,28,38,39,
\[
\begin{gathered}
(3,2,1,1,5,5,4),\quad(3,2,2,1,4,5,4),\\
(3,3,2,1,3,5,4),\quad(4,3,2,1,1,5,5),\quad
(4,3,2,1,2,5,4).
\end{gathered}                                         \tag{13}
\]
The condition that Q is inside the original anchor hexagon is
\(r_3(Q)\ge2\), leaving the other 52 words. Among these,
19 have \(r_6(Q)<3\), putting Q below HC, and 33 have
\(r_6(Q)\ge3\), putting it above HC.

Keep all \(5\times52=260\) ordered word pairs, ordered first
by P's full-list index and then by Q's. This is a necessary complete
cover; realizability of every pair is not asserted.
The word fixes all actual triangle signs involving at most one
interior point. At any vertex whose two entries differ, it also gives
\[
\operatorname{sgn}[V_iPQ]
=\operatorname{sgn}(r_i(Q)-r_i(P)).                    \tag{14}
\]
No quadrilateral-pair forcing is used: P is outside the old anchor
quadrilateral.

Only two ordered pairs require an additional actual-line split:

| Case index | Full-list word indices (P,Q) | Additional sign |
|---|---|---|
| 230 | (39,24) | \([CPQ]\) |
| 238 | (39,33) | \([BPQ]\) |

For each, retain both negative and positive signs, encoded by bit
0 and bit 1. In each of these pairs the displayed sign is its only
undetermined hull-vertex/P/Q sign. All other pairs are unsplit, with
bit 0. This gives exactly 262 terminal cells. Every actual configuration
belongs to one of them, since no actual triple is collinear.

## 3. The additional bounds for lower Q and for case230

If Q is below HC, the five actual points H,C,A,B,Q lie in the
virtual triangle \((0,0)HC\), including its two endpoints H,C.
The five-point endpoint theorem in Section 1 of
[TYPE_II.md](TYPE_II.md) gives
\[
hc\ge\frac{\sigma}{3-2\sqrt2}>\frac7{11}.
\]
Thus \(h,c\ge7/11\). Also \([CHQ]\ge\sigma\),
\(hq_x\ge Lq_x\ge\sigma\), and \(cq_y\ge Mq_y\ge\sigma\)
give
\[
c-q_x\ge2\sigma,\quad h-q_y\ge2\sigma,
\quad q_x+q_y\le1-\sigma.                              \tag{15}
\]
For the last inequality divide
\(hq_x+cq_y\le hc-\sigma\) by hc, using \(h,c\le1\).
Append these five affine factors to (10), in order:
\[
h-7/11,\quad c-7/11,\quad c-q_x-2\sigma,
\quad h-q_y-2\sigma,\quad1-\sigma-q_x-q_y.              \tag{16}
\]

Case230 has a separate useful geometric consequence. Its two words are
\[
r(P)=(4,3,2,1,2,5,4),\qquad
r(Q)=(3,2,2,3,4,4,3).
\]
Both give positive tests at the three directed edges CX, XF and FC.
Therefore both P and Q are inside the actual triangle CXF,
independently of the CPQ split. The two-interior-point triangle theorem
in [CORNER_FAMILIES.md](CORNER_FAMILIES.md) gives
\[
T:=[CXF]\ge(4+2\sqrt3)\sigma>\rho.                    \tag{17}
\]
Its exact expression is
\[
T=x_x-c+(c-f)x_y=x_x-f-(c-f)(1-x_y).
\]
Since \(c\ge f\) and \(x_x,x_y\le1\),
\[
x_x-f\ge\rho,\qquad f\le1-\rho=11/60.
\]
Using \(c\ge4\sigma,f\ge1/8\) in the first expression for T,
\[
\rho\le T\le1-4\sigma+(4\sigma-1/8)x_y.
\]
The coefficient \(4\sigma-1/8\) is positive, so
\[
x_y\ge\frac{\rho-1+4\sigma}{4\sigma-1/8}
=\frac{2234}{2745}.
\]
Finally \([AFH]=f(h-a)\ge\sigma\) and \(f\le11/60\) give
\(h-a\ge480/803\). For both signs in case230, append to
(10), in order, the four nonnegative factors
\[
11/60-f,\quad x_x-f-\rho,\quad x_y-2234/2745,
\quad h-a-480/803.                                    \tag{18}
\]
This case has Q above HC, so (16) and (18) never apply together.
No other terminal cell uses the four factors (18).

## 4. Signed area costs and all other quadratic premises

For each terminal cell, visit all known actual triangle signs in
lexicographic order of their increasing vertex triples. Multiply the
determinant by its known sign. For each other interior point, test
whether all three oriented edges place it inside that triangle.
Subtract \(\sigma,3\sigma,\rho\), according as zero, one or
two interior points are certified inside. The resulting cost is
nonnegative by the minimum, subdivision, and the two-interior-point
triangle theorem. An unspecified edge certifies no containment.
This rule also applies to triangles having an interior point as a
vertex.

Append three further costs, in this order:
\[
hc-\begin{cases}4\sigma&Q\text{ above HC},\\7/11&Q\text{ below HC},\end{cases}
\quad
W-\begin{cases}4\sigma&Q\text{ above HC},\\2\sigma&Q\text{ below HC},\end{cases}
\quad \delta-3\sigma,                                 \tag{19}
\]
where
\(W=[HCDF]=1-(h-d)(c-f)\).
If Q is above HC, it lies in HCDF, and the four actual triangles
around Q give \(W\ge4\sigma\). Otherwise either diagonal of
that actual quadrilateral gives \(W\ge2\sigma\).
The hc and delta bounds were proved in Sections 1 and 3.

Finally append
\[
13/16-[ABH],\ 13/16-[ABC],\ 13/16-[BCD],\
13/16-[CDF],\ 13/16-[DFH],\ 13/16-[AFH].                \tag{20}
\]
Their nonnegativity is the anchor-ear bound in Theorem 1 of
[SIX_BOUNDARY_HULL.md](SIX_BOUNDARY_HULL.md). Its proof uses only
the N normalization and actual anchor costs at doubled threshold
7/64, so it applies under our stronger threshold \(\sigma\),
independently of the positions of P and Q.

## 5. Fixed cubic contradictions and verified reuse

Every expression is a positive rational sum of products of one to
three affine factors, quadratic costs, and quadratic costs times
one affine factor. The data give each term's positive integer weight
and its expression's common positive denominator. Thus the expression
is nonnegative in its reference cell.

All twelve coordinates are in \([0,1]\). For the exact expansion
\(P(z)=p_0+\sum_{\alpha\ne0}p_\alpha z^\alpha\),
\[
P(z)\le p_0+\sum_{\alpha\ne0}\max(p_\alpha,0).          \tag{21}
\]
All 220 supplied cubics have the right side strictly below \(-3/4\).
There are 29,641 positive terms in total, and the greatest exact
upper bound is
\[
-\frac{4128115667948309}{4197433925959680}.
\]
For the positive-CPQ branch of case230, the four additional geometric
bounds (18) give a 267-term cubic with exact upper bound
\[
-\frac{38290716504288171857}{38798423692148736000}.
\]

A reference expression can also cover another terminal cell when
every affine factor it uses is available there, and every used signed
area cost has the same sign and at least its reference lower bound.
The extra costs (19)--(20) are compared in the same way. This is an
exact implication of nonnegative premises. The verifier reconstructs
every such comparison for the 262-entry coverage table; no numerical
similarity or sampled coordinate test is used.

The verifier also checks all term indices and positive weights,
degree at most three, exact expansions and negative bounds, the full
57-word enumeration, the 5-by-52 pair cover and both complete sign
splits, the four special bounds (18), and the coordinate identities.
Consequently every actual configuration under the assumed minimum
belongs to a cell where a fixed polynomial is both nonnegative and
negative. This contradiction proves Theorem 1. \(\square\)

## Verification and reproducibility

The linked exact verifier uses standard-library rational arithmetic
and the fixed coefficient file; it imports no optimizer. The optional
research model, discovery script and raw cache are preserved separately
in `research/` to make the coefficient discovery recoverable.
Only the geometric bounds, complete sign cover, fixed weights and
exact expansion rule above are proof premises.
