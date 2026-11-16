# The two remaining convex top hulls with one lower C1 point

Use the competitive C1 anchors
\[
O=(0,0),\ C=(c,0),\ D=(1,d),\ F=(f,1),\ H=(0,h),
\qquad0<d\le h<1,\quad0<f\le c<1.
\]
The minimum actual triangle area is at least
\(A_0=(9\sqrt{65}-55)/320\). Brackets denote signed doubled
areas. Put \(s=8/73<2A_0\), \(K=4+2\sqrt3\), and
\(\rho=49/60<Ks\).

**Theorem.** Neither of these complete placements is competitive:

1. \(L\in OHC\), \(Q\in HCDF\), and two top-cap points
   \(X,Y\) have convex hull \(D,X,Y,F\) in that cyclic order.
2. \(L\in OHC\), and the other three free points are in the top cap.

Together with [C1_ONE_LOWER_TOP_TRIANGLE.md](C1_ONE_LOWER_TOP_TRIANGLE.md),
the first conclusion excludes the entire two-top, one-upper, one-lower
occupancy. The second conclusion includes every three-top-cap hull.
The full fixed inequalities are in
[c1_one_lower_convex_top_certificates.json](c1_one_lower_convex_top_certificates.json),
with exact verifier
[check_c1_one_lower_convex_top.py](check_c1_one_lower_convex_top.py).

## 1. One hull describes both placements

Transpose to arrange \(f\le d\). In the first placement the full hull is
\[
O,C,D,X,Y,F,H,                                           \tag{1}
\]
with interior points \(L,Q\); call this mode `upper`.
For the second placement, Lemma 3 of
[C1_ZERO_LOWER.md](C1_ZERO_LOWER.md) applies without any zero-lower
hypothesis. Exactly two top points are hull vertices. Name these
\(X,Y\) in order \(D,X,Y,F\), and name the third \(Q\). Then
the full hull is again (1), and
\[
Q\in DFX\cap DFY.                                      \tag{2}
\]
Call this mode `cap`. Thus the naming includes every possible choice of
the interior cap point. All actual-line containments are strict, since
zero actual area contradicts competitiveness. Square-side contacts are
allowed.

Write \(X=(x_x,x_y),Y=(y_x,y_y),L=(\ell_x,\ell_y),Q=(q_x,q_y)\).

## 2. Bounds from the occupied top hull

The lower point and the anchor costs give
\[
hc\ge3s,\quad hf,cd\ge s,\quad h,c\ge3s,\quad d,f\ge s. \tag{3}
\]
Let \(\Omega=(1-d)(1-f)\). The four-point convex endpoint lemma
in Section 1 of [TYPE_II.md](TYPE_II.md) gives \(\Omega\ge4s\)
in mode `upper`. Its five-point theorem gives
\(\Omega\ge s/(3-2\sqrt2)>7/11\) in mode `cap`. Therefore:

| Mode | Lower bound \(\omega\) on \(\Omega\) | Upper bound \(a\) on \(d\) | Upper bound \(b\) on \(f\) |
|---|---|---|---|
| `upper` | \(4s\) | \(33/65\) | \(17/50\) |
| `cap` | \(7/11\) | \(204/715\) | \(13/64\) |

Indeed \(\Omega\le(1-s)(1-d)\), and \(f\le d\) implies
\(\Omega\le(1-f)^2\). The exact comparisons are
\(4s>(33/50)^2\) and \(7/11>(51/64)^2\).

For either outer cap point \(Z=(z,w)\),
\[
-[DFZ]=(1-d)(z-f)-(1-f)(1-w)
       =(1-f)(w-d)-(1-d)(1-z)\ge s.
\]
Consequently
\[
z-f\ge8/65,\qquad w-d\ge8/65.                         \tag{4}
\]
The convex-chain argument in Section 3 of
[C1_ONE_LOWER_EIGHT_HULL.md](C1_ONE_LOWER_EIGHT_HULL.md) applies to
\(D,X,Y,F\) in both modes. Its positive areas
\[
\begin{aligned}
[DXY]&=(x_x-y_x)(x_y-d)-(1-x_x)(y_y-x_y),\\
[FXY]&=(y_y-x_y)(y_x-f)-(1-y_y)(x_x-y_x)
\end{aligned}
\]
first force \(x_x>y_x,y_y>x_y\), and then give
\[
x_x-y_x\ge s,\qquad y_y-x_y\ge s.                     \tag{5}
\]
The lower subdivision gives
\[
\ell_x,\ell_y\ge s,\quad c-\ell_x,h-\ell_y\ge2s,
\quad\ell_x+\ell_y\le1-s.                             \tag{6}
\]
In mode `upper`, the projection identities of Section 4 of
`C1_ZERO_LOWER.md` give \(s\le q_x,q_y\le1-s\).
In mode `cap`, (4) also applies to \(Q\), and (2) gives
\[
\begin{aligned}
[DXQ]&=(x_y-d)(1-q_x)-(1-x_x)(q_y-d)\ge s,\\
[XFQ]&=(x_x-f)(1-q_y)-(1-x_y)(q_x-f)\ge s.
\end{aligned}
\]
The subtracted products are nonnegative and the leading coefficients
are at most one, proving
\[
q_x-f,q_y-d\ge8/65,\qquad q_x,q_y\le1-s.               \tag{7}
\]

Finally, \([OCD]=cd\le d<\rho\) and \([OFH]=fh\le f<\rho\),
since both parameter bounds above are below \(\rho\). Both triangles
have capacity one by the two-interior triangle theorem. The triangle
\(HDF\) has capacity one by Section 4 of `C1_ZERO_LOWER.md`, whose
proof uses only the anchor order \(f\le d\) and competitive areas.

## 3. The complete radial and pair-line cover

Number (1) as \(V_0,\ldots,V_6\), and append \(V_7=L,V_8=Q\).
For an interior point \(Z\), its word is defined by
\[
[V_iV_{i+j}Z]>0\iff j\le r_i(Z),\qquad j=1,\ldots,6.
\]
Convexity puts all rays at a hull vertex in an angle smaller than
\(\pi\), in cyclic order. Thus \(1\le r_i\le5\), and antisymmetry gives
\[
(j\le r_i)\iff(7-j>r_{i+j}),                            \tag{8}
\]
with indices modulo seven. The \(5^7\) integer tuples have exactly
57 solutions. Realizability of every solution is not needed.

Filtering by \(L\in OCH\) gives, in lexicographic order,
\[
\begin{gathered}
(1,5,5,4,3,2,1),\quad(2,5,4,4,3,2,1),\\
(3,5,4,3,3,2,1),\quad(4,5,4,3,2,2,1),\quad(5,5,4,3,2,1,1).
\end{gathered}                                          \tag{9}
\]
For \(Q\), use these exact filters on the same 57 words:

| Mode | Required edge tests | Count |
|---|---|---:|
| `upper` | positive \((6,1),(1,2),(2,5),(5,6)\) | 33 |
| `cap` | positive edges of \((2,3,5)\) and \((2,4,5)\), and negative \((2,5)\) | 10 |

These are precisely the two geometric containments. Order both lists
lexicographically from zero. A pair \((i,j)\) denotes lower word
\(i\) and the mode's \(Q\)-word \(j\). Discard pairs placing both
points inside any of the capacity-one triangles
\((0,5,6),(0,1,2),(2,5,6)\). This leaves 157 `upper` pairs and
50 `cap` pairs.

Every triangle with at most one interior point has its sign fixed.
If the two words differ at a vertex, ray order also fixes
\[
\operatorname{sgn}[V_iLQ]=\operatorname{sgn}(r_i(Q)-r_i(L)).\tag{10}
\]
Split only the following pairs by all combinations of the listed
remaining actual-triangle signs:

| Mode | Pair | Additional signs |
|---|---|---|
| `upper` | \((0,20)\) | \([YLQ],[FLQ]\) |
| `upper` | \((1,19)\) | \([YLQ],[FLQ]\) |
| `upper` | \((1,27)\) | \([FLQ]\) |
| `upper` | \((3,9)\) | \([DLQ]\) |
| `upper` | \((3,17)\) | \([DLQ],[XLQ]\) |
| `cap` | \((1,6)\) | \([YLQ]\) |
| `cap` | \((3,6)\) | \([XLQ]\) |

This gives exactly 168 and 52 terminal cells. The branch number is
binary, first displayed sign as lowest bit, zero for negative and one
for positive. Every actual sign is strict, so this cover is exhaustive.

## 4. Nonnegative factors and costs

Use coordinate order
\(z=(h,c,d,f,x_x,x_y,y_x,y_y,\ell_x,\ell_y,q_x,q_y)\in[0,1]^{12}\).
For the selected bounds \(a,b\) in Section 2, the first 26 affine
factors in data order are
\[
\begin{gathered}
h-3s,c-3s,1-h,1-c,d-s,a-d,f-s,b-f,h-d,c-f,d-f,\\
x_x-f-8/65,x_y-d-8/65,1-x_x,1-x_y,\\
y_x-f-8/65,y_y-d-8/65,1-y_x,1-y_y,\\
x_x-y_x-s,y_y-x_y-s,\ell_x-s,\ell_y-s,\\
c-\ell_x-2s,h-\ell_y-2s,1-s-\ell_x-\ell_y.
\end{gathered}                                          \tag{11}
\]
Append \(q_x-s,q_y-s,1-s-q_x,1-s-q_y\) in mode `upper`, or
\(q_x-f-8/65,q_y-d-8/65,1-s-q_x,1-s-q_y\) in mode `cap`.
All 30 factors are nonnegative by Section 2.

The first quadratic cost is \(q_0=(1-d)(1-f)-\omega\).
Then visit increasing index triples lexicographically and append all
triples with at most one interior point. Next append \((v,7,8)\)
for \(v=0,\ldots,6\) whenever (10) fixes the sign. Finally append
the additional signs in the table's order.

Multiply each determinant by its specified sign and subtract
\(s,3s,\rho\), according as zero, one, or two other interior
points are certified inside by all three oriented edge tests.
These costs are nonnegative by the actual minimum, subdivision, and
the two-interior triangle theorem. An unspecified sign certifies no
containment.

## 5. Exact inequalities and complete coverage

Every supplied certificate is a positive rational sum of products of
one to three affine factors, quadratic costs, and quadratic costs times
one affine factor. The `f` and `q` records give their factor/cost indices,
positive integer weights, and common positive denominator.
For its exact cubic expansion,
\[
P(z)=p_0+\sum_{\alpha\ne0}p_\alpha z^\alpha
\le p_0+\sum_{\alpha\ne0}\max(p_\alpha,0)
\qquad(z\in[0,1]^{12}).                                \tag{12}
\]
There are **155 certificates with 25,184 positive terms**. Every exact
upper bound in (12) is at most \(-3/4\); the largest is
\[
-\frac{3448691771523}{3500729749504}.
\]
Thus each sum is both nonnegative and negative in its reference cell.
A certificate also applies to another cell of the same mode whenever
every used actual-triangle cost is available with the same sign and at
least its reference lower bound. The factors and \(q_0\) are common
to the mode, so this implication preserves nonnegativity of every
summand. The verifier explicitly checks each use. The 127 retained
`upper` certificates cover all 168 cells; the 28 `cap` certificates
cover all 52 cells. This proves both conclusions. \(\square\)

## Verification and reproducibility

The standard-library checker rebuilds all 57 words, the region filters,
207 base pairs, 220 terminal cells, determinants, cost containments,
and all fixed rational sums. It checks every degree, index, positive
weight, exact cube bound, reuse implication, and complete coverage.
No numerical optimizer is used in verification. The optional research
generators in `research/` reproduce discovery and exact export; they
are not premises of the proof.
