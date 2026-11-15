# One right-cap point and a triangular two-top hull in C1

Use competitive C1 anchors
\[
O=(0,0),\ C=(c,0),\ D=(1,d),\ F=(f,1),\ H=(0,h),
\quad0<d\le h<1,\quad0<f\le c<1,
\]
with \(f\le d\) after transposition. The minimum actual triangle
area is at least \(A_0=(9\sqrt{65}-55)/320\). Brackets denote
signed doubled areas, and \(s=8/73<2A_0\), \(\rho=49/60<(4+2\sqrt3)s\).

**Theorem.** There is no competitive configuration with one lower point
\(L\in OHC\), one right-cap point \(R\in CD(1,0)\setminus CD\),
and two top-cap points whose hull with \(D,F\) is triangular.

Name the outer top point \(X\) and the interior one \(P\), so
\(P\in DXF\). The full cyclic hull is
\[
O,C,R,D,X,F,H,                                          \tag{1}
\]
with interior points \(L,P\). Square-side contacts are allowed;
actual orientations remain strict. The alternative convex top hull
has eight vertices and is excluded by
[C1_ONE_LOWER_EIGHT_HULL.md](C1_ONE_LOWER_EIGHT_HULL.md). Thus the
present theorem completes this entire cap occupancy.

The fixed coefficient data and exact verifier are
[c1_one_lower_right_top_triangle_certificates.json](c1_one_lower_right_top_triangle_certificates.json)
and [check_c1_one_lower_right_top_triangle.py](check_c1_one_lower_right_top_triangle.py).

## 1. Bounds from the occupied regions

Write \(R=(r_x,r_y),X=(x_x,x_y),L=(\ell_x,\ell_y),P=(p_x,p_y)\).
The lower point and anchor costs give
\[
hc\ge3s,\quad hf,cd\ge s,\quad h,c\ge3s,\quad d,f\ge s. \tag{2}
\]
The single right-cap identity of Section 1 of
[C1_ZERO_LOWER.md](C1_ZERO_LOWER.md) gives
\[
dc(1-c)\ge s,\qquad d\ge4s.                            \tag{3}
\]
Subdivision at \(P\in DXF\) gives \([DXF]\ge3s\), hence
\((1-d)(1-f)\ge3s\) and \(d\le41/65\). Consequently
\[
c(1-c)\ge65s/41>14/81=(7/9)(1-7/9),
\]
so
\[
3s\le c<7/9,\quad h\ge27s/7,\quad4s\le d\le41/65.      \tag{4}
\]
The two cap-area expressions
\[
[DXF]=(1-d)(x_x-f)-(1-f)(1-x_y)
     =(1-f)(x_y-d)-(1-d)(1-x_x)\ge3s
\]
imply
\[
x_x-f\ge24/41,\quad x_y-d\ge24/65,\quad f\le17/41.      \tag{5}
\]
Here \(d\ge4s\), \(f\ge s\), and \(x_x\le1\) were used.

For the right-cap point,
\[
-[CDR]=d(r_x-c)-(1-c)r_y=(1-c)(d-r_y)-d(1-r_x)\ge s.
\]
Together with \(cr_y\ge s\), (4) yields
\[
r_x-c\ge65s/41,\quad r_y\ge9s/7,\quad d-r_y\ge8/49.    \tag{6}
\]
For the last bound use \(c\ge3s\) and \(s/(1-3s)=8/49\).
Lower-triangle subdivision gives
\[
\ell_x\ge s,\quad\ell_y\ge9s/7,\quad c-\ell_x\ge2s,
\quad h-\ell_y\ge18s/7,\quad\ell_x+\ell_y\le1-s.        \tag{7}
\]
Indeed \([CHL]=hc-h\ell_x-c\ell_y\ge s\), while
\(h\ell_x,c\ell_y\ge s\); use \(c<7/9\) and \(h\le1\).

For \(P\), the top-cap identities at level \(s\) give
\(p_x-f\ge8/41\) and \(p_y-d\ge8/65\). Its other subdivision
areas are
\[
\begin{aligned}
[DXP]&=(x_y-d)(1-p_x)-(1-x_x)(p_y-d)\ge s,\\
[XFP]&=(x_x-f)(1-p_y)-(1-x_y)(p_x-f)\ge s.
\end{aligned}
\]
The subtracted products are nonnegative and the leading coefficients
are at most one. Therefore
\[
p_x-f\ge8/41,\quad p_y-d\ge8/65,\quad p_x,p_y\le1-s.    \tag{8}
\]

## 2. The complete 25-case cover

Number (1) as \(V_0,\ldots,V_6\), and append \(V_7=L,V_8=P\).
For an interior point \(Z\), define
\[
[V_iV_{i+j}Z]>0\iff j\le r_i(Z),\qquad1\le r_i\le5.
\]
Convexity gives this cyclic ray order, and antisymmetry requires
\[
(j\le r_i)\iff(7-j>r_{i+j}),\qquad1\le j\le6.            \tag{9}
\]
There are exactly 57 solutions among the \(5^7\) integer tuples.
Filtering by \(L\in OCH\), index triple \((0,1,6)\), gives the
five lower words (9) of
[C1_ONE_LOWER_CONVEX_TOP.md](C1_ONE_LOWER_CONVEX_TOP.md).
Filtering by \(P\in DXF\), triple \((3,4,5)\), gives
\[
\begin{gathered}
(3,2,1,1,5,5,4),\quad(3,2,2,1,4,5,4),\\
(3,3,2,1,3,5,4),\quad(4,3,2,1,1,5,5),\quad(4,3,2,1,2,5,4).
\end{gathered}                                          \tag{10}
\]
Index both lists lexicographically from zero. Retain all 25 pairs;
no further sign split is needed. Every triangle with at most one
interior point has its sign specified. At a vertex where the entries
differ, ray order also gives
\[
\operatorname{sgn}[V_iLP]=\operatorname{sgn}(r_i(P)-r_i(L)).\tag{11}
\]
These necessary sign data cover every geometric configuration.

## 3. Nonnegative expressions and exact contradiction

Use coordinate order
\((h,c,d,f,r_x,r_y,x_x,x_y,\ell_x,\ell_y,p_x,p_y)\in[0,1]^{12}\).
The 28 affine factors in data order are
\[
\begin{gathered}
h-27s/7,1-h,c-3s,7/9-c,d-4s,41/65-d,\\
f-s,17/41-f,h-d,c-f,d-f,\\
r_x-c-65s/41,1-r_x,r_y-9s/7,d-r_y-8/49,\\
x_x-f-24/41,x_y-d-24/65,1-x_x,1-x_y,\\
\ell_x-s,\ell_y-9s/7,c-\ell_x-2s,h-\ell_y-18s/7,
1-s-\ell_x-\ell_y,\\
p_x-f-8/41,p_y-d-8/65,1-s-p_x,1-s-p_y.
\end{gathered}                                          \tag{12}
\]
All are nonnegative by Section 1. Start the quadratic costs with
\(q_0=(1-d)(1-f)-3s\). Append increasing index triples in
lexicographic order when they contain at most one interior point,
then append \((v,7,8)\) for \(v=0,\ldots,6\) when (11)
specifies the sign. Multiply each area by that sign and subtract
\(s,3s,\rho\), according as zero, one, or two other interior
points are certified inside by all three edge tests. These costs
are nonnegative by the minimum, subdivision, and the two-interior
triangle theorem. An unspecified edge certifies no containment.
Also use the cubic \(B=dc(1-c)-s\ge0\), from (3).

Every fixed certificate is a positive rational sum of products of
one to three affine factors, quadratic costs, quadratic costs times
one factor, and \(B\). The data records these as `f`, `q`, and `c`
terms with positive integer weights and a common positive denominator.
For the exact cubic expansion,
\[
P(z)=p_0+\sum_{\alpha\ne0}p_\alpha z^\alpha
\le p_0+\sum_{\alpha\ne0}\max(p_\alpha,0).               \tag{13}
\]
The **15 certificates contain 1,211 positive terms**. Every exact
upper bound in (13) is at most \(-3/4\); the largest is
\[
-\frac{707476541255103311}{712957274349465600}.
\]
Thus each polynomial is both nonnegative and negative in its reference
case. It also applies to another case whenever every used triangle
cost has the same sign and at least its reference lower bound; the
other factors, \(q_0\), and \(B\) are common to every case. The
checker validates each implication and proves coverage of all 25 pairs.
This excludes the triangular alternative, and the eight-hull theorem
excludes the convex alternative. \(\square\)

## Verification and reproducibility

The standard-library checker reconstructs the radial cover, factors,
determinants, containment costs, and fifteen exact sums. It validates
the rational bounds, every index and positive weight, degree at most
three, exact negative bounds, reuse implications, and full coverage.
The optional research generators reproduce discovery and export;
no optimizer is a premise of the verification.
