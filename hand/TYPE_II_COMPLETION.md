# Two-vertex triangle capacity and swept Type-II restrictions

## Scope

Put

\[
A_0=\frac{9\sqrt{65}-55}{320}.
\]

This note strengthens the global triangle-capacity theorem to containers
whose third vertex need not be a configuration point. It then gives an
exact interval formulation for every Type-II configuration. It does not
claim that the remaining Type-II count classes are closed.

The two inputs are already proved in this directory:

1. In a nine-point configuration in the unit square with minimum triangle
   area at least \(A_0\), an actual triangle contains at most two further
   configuration points: [THREE_INTERIOR_TRIANGLES.md](THREE_INTERIOR_TRIANGLES.md),
   Corollary 5.
2. Six points with nontriangular hull in a triangle of area \(S\),
   including two of its vertices, have minimum triangle area at most
   \(7S/64\): the support-triangle lemma in Section 6 of
   [CORNER_FAMILIES.md](CORNER_FAMILIES.md), rescaled from area \(1/2\).
   That lemma is based on Theorem 1 of
   [OPPOSITE_CORNERS.md](OPPOSITE_CORNERS.md).

No claim below depends on a numerical search or a coordinate subdivision.

## 1. A two-vertex triangle contains at most five configuration points

**Theorem 1.** Let \(\mathcal P\) be nine points in the unit square,
with minimum triangle area at least \(A_0\). Let \(U,V\) be two
distinct members of \(\mathcal P\), and let \(W\) be any point of the
plane. If

\[
\operatorname{area}(UVW)\le\frac12,
\]

then the closed triangle \(UVW\) contains at most three members of
\(\mathcal P\setminus\{U,V\}\). Equivalently, it contains at most
five configuration points in total.

The third vertex may be outside the square; the container is not required
to lie in the square. If \(W\) is itself a configuration point, it
counts as one of the three further members.

**Proof.** Positive minimum area implies that the nine points are distinct
and that no three are collinear. If the container is degenerate, its
supporting line contains at most two configuration points, so the result
is immediate.

Otherwise suppose it contains four distinct further points. Select exactly
these four together with \(U,V\), and denote the resulting six-point set
by \(\mathcal S\). Its minimum triangle area is at least \(A_0\).
The vertices \(U,V\) of the container are extreme points of
\(\operatorname{conv}(\mathcal S)\): a container vertex cannot be a
convex combination of its other points. In particular they are available
as the two prescribed vertices in the support-triangle lemma.

If \(\operatorname{conv}(\mathcal S)\) is a triangle, its three
vertices are actual configuration points. Its other three members are
strictly interior, since an additional point on an edge would be collinear
with its two endpoints. This contradicts the global actual-triangle
capacity theorem. The convex hull lies in the unit square even when the
original container does not, so that theorem applies without any extra
assumption on \(W\).

If the hull is nontriangular, the rescaled support-triangle lemma gives

\[
\min_{X,Y,Z\in\mathcal S}\operatorname{area}(XYZ)
\le\frac7{64}\operatorname{area}(UVW)
\le\frac7{128}<A_0.
\]

The last strict inequality follows from

\[
A_0-\frac7{128}
=\frac{18\sqrt{65}-145}{640}>0,
\qquad 18^2\cdot65-145^2=35>0.
\]

This also contradicts the hypothesis. The hull alternatives are exhaustive,
so no such four further points exist. \(\square\)

**Boundary cases.** The theorem concerns a closed triangle. If an extra
configuration point lies on \(UV\), the positive-minimum hypothesis
already fails. Extra points on \(UW\) or \(VW\) are allowed when
\(W\) is not actual; the support-triangle lemma explicitly includes
leg contacts. The proof therefore does not replace a closed-container
claim by a claim only about its interior.

## 2. Every Type-II configuration gives an interval family of depth at most three

Let

\[
D=(0,1),\quad C=(1,1)
\]

be the two occupied upper corners, and let \(X=(x,y)\) be any of the
other seven configuration points. Such a point has \(y<1\), since
otherwise \(D,C,X\) would be collinear. Define the closed real interval

\[
I_X=\left[\frac{x-y}{1-y},\ \frac{x}{1-y}\right].             \tag{1}
\]

Its endpoints are ordered because \(y\ge0\). For a real number \(z\),
put

\[
T_z=\operatorname{conv}\{D,C,(z,0)\}.
\]

Every \(T_z\), including those with \(z\notin[0,1]\), has area
exactly \(1/2\). At height \(y\), its horizontal section is

\[
z(1-y)\le x\le z(1-y)+y.
\]

Dividing by \(1-y>0\) proves the exact equivalence

\[
\boxed{X\in T_z\quad\Longleftrightarrow\quad z\in I_X.}       \tag{2}
\]

**Corollary 2.** If the minimum triangle area is at least \(A_0\),
then at most three of the seven intervals \(I_X\) contain any given
real number \(z\).

This is precisely Theorem 1 applied to \(D,C,T_z\). In particular,
for every four distinct points \(X_1,X_2,X_3,X_4\) other than \(D,C\),

\[
\boxed{
\max_i\frac{x_i-y_i}{1-y_i}
>
\min_i\frac{x_i}{1-y_i}.
}                                                          \tag{3}
\]

The strict sign matters: equality would give a common endpoint of four
closed intervals and would still violate the capacity theorem. Conversely,
(3) for every four-point subset is exactly the assertion that the interval
family has depth at most three. Thus it has only \(\binom74=35\)
tests; it is not an infinite collection of unperformed tests over \(z\).
These tests are necessary conditions, not a sufficiency claim for the
original triangle-area inequalities.

There is also a useful equivalent expression. Put

\[
a_X=\frac{x}{1-y},\qquad c_X=\frac{1-x}{1-y}.
\]

Then \(I_X=[1-c_X,a_X]\), so (3) is exactly

\[
\boxed{\min_i a_{X_i}+\min_i c_{X_i}<1.}                     \tag{4}
\]

When the sum \(M=\min_i a_{X_i}+\min_i c_{X_i}\) is positive,
the two supporting rays from \(D,C\) meet at

\[
W=\left(\frac{\min_i a_{X_i}}{M},\ 1-\frac1M\right).
\]

Their triangle contains the selected points and has area \(1/(2M)\).
Indeed every selected point satisfies
\(x\ge(\min a)(1-y)\) and
\(1-x\ge(\min c)(1-y)\). Thus (4) says exactly that this
smallest triangle supported from \(D,C\) has area greater than
\(1/2\). This gives a direct geometric interpretation of each of the
35 tests.

## 3. Opposite occupied corners are impossible without extra side contacts

**Corollary 3.** A competitive nine-point configuration cannot contain two
opposite square corners, whether or not any other square side is contacted.

More generally, it cannot be contained in a parallelogram of area at most
one whose two opposite vertices are actual configuration points.

**Proof.** The diagonal through those two vertices partitions the
parallelogram into two closed triangles of equal area at most \(1/2\).
None of the other seven configuration points lies on the diagonal, since
that would give a collinear actual triple. At least four therefore lie in
one of the triangles. Its two diagonal endpoints are actual, contradicting
Theorem 1. \(\square\)

This is a consequence of the present dependency chain, not a replacement
for the earlier Type-III and C2 arguments: those arguments are among the
inputs used upstream to prove global actual-triangle capacity.

## 4. A complete additional cut in the balanced Type-II class

Use the surviving placement established in
[TYPE_II_BALANCED.md](TYPE_II_BALANCED.md):

\[
E=(0,\lambda),\quad B=(b,0),\quad
0<b\le\tfrac12,\quad0<\lambda<1;
\]

the left point \(L\) is inside \(DBE\) and above \(CE\); one
central point \(P\) is above \(CE\), the other central point \(Q\)
is below \(CE\); and the other two points \(R,S\) are in the right
container beyond \(BC\).

The line \(CE\) is

\[
y=\lambda+(1-\lambda)x.
\]

For \(0\le x\le1\), its height is at least \(x\). Since \(L,P\)
are strictly above it, both satisfy \(y>x\). The point \(E\) also
satisfies \(y>x\). Thus the triangle

\[
T_0=\operatorname{conv}\{D,C,(0,0)\}
\]

already contains the five actual points \(D,C,E,L,P\). Theorem 1
therefore forces

\[
\boxed{Q_y<Q_x.}                                          \tag{5}
\]

Equality is excluded as well because \(T_0\) is closed. The right
points already satisfy \(x>b+(1-b)y>y\), and \(B\) has \(0<b\).
Consequently the seven points other than \(D,C\) have exactly the
following distribution relative to the diagonal \(y=x\):

| Strictly above | Strictly below |
|---|---|
| \(E,L,P\) | \(B,Q,R,S\) |

This excludes the entire balanced branch in which the lower central point
lies on or above \(y=x\). The surviving placements still need a coupled
area argument; this note does not assert that (5) closes the balanced row.

## 5. The complete triangular-right branch has an empty lower ear

Continue with the balanced placements of Section 4. Suppose the four-point
right set \(B,C,R,S\) has a triangular hull. Relabel its two free points
so that \(R=(r,u)\) is the third hull vertex and \(S\) is strictly
inside \(BCR\). The vertices \(B,C\) must be hull vertices because
they are extreme vertices of the right container.

Put

\[
q=1-\lambda,\qquad w=1-b,\qquad K=4+2\sqrt3,
\qquad s=\frac7{64}.
\]

Every doubled actual triangle area exceeds \(s\), and weak inequalities
at \(s\) suffice below. The two points \(L,P\) in \(DCE\) give
\(q\ge Ks\). The positive doubled area of \(BCR\) is

\[
g=(r-b)-wu\ge3s,
\]

because it contains \(S\). Since \(r\le1\), this implies

\[
u\le1-\frac{3s}{w}.                                      \tag{6}
\]

**Lemma 4 (the lower ear is empty).** Neither \(Q\) nor \(S\)
lies in the triangle \(EBR\). Both are strictly inside \(ECR\).

**Proof.** The doubled area of \(EBR\) is positive and equals

\[
\delta=bu+\lambda(r-b).
\]

Here \(r\ge b\) because \(R\) lies in the right container. Using
(6), \(r-b\le w\), and \(q\ge Ks\), we obtain

\[
\begin{aligned}
\delta
&\le b\left(1-\frac{3s}{w}\right)+w(1-q)\\
&=1-wq-\frac{3sb}{w}\\
&\le1+3s-s\left(Kw+\frac3w\right)\\
&\le1-(K-1)s<3s.                                        \tag{7}
\end{aligned}
\]

The penultimate inequality follows from the exact square identity

\[
Kw+\frac3w-(K+2)
=\frac{[(1+\sqrt3)w-\sqrt3]^2}{w}\ge0.
\]

For the last strict comparison,
\((K+2)s=(6+2\sqrt3)(7/64)>66/64>1\), using
\(\sqrt3>12/7\), whose square comparison is \(147>144\).

The four points \(E,B,R,C\) form a convex quadrilateral in that cyclic
order. Its diagonal \(BC\) separates \(E\) from \(R\), and
\(Q\) lies strictly inside \(EBC\), while \(S\) lies strictly
inside \(BCR\). Thus both are inside the quadrilateral. Its other
diagonal \(ER\) partitions it into \(EBR\) and \(ECR\).
If either point lay in \(EBR\), subdivision into three actual triangles
would give \(\delta\ge3s\), contradicting (7). No point lies on
\(ER\), since all actual triples are noncollinear. Both therefore lie
strictly inside \(ECR\). \(\square\)

**Corollary 5 (a four-interior-point quadrilateral).** In this entire
triangular-right branch, the eight points other than \(B\) have exact
convex hull \(D,E,R,C\). Its four interior points are \(L,P,Q,S\).
The diagonal \(EC\) puts \(L,P\) on one side and \(Q,S\) on the
other. Each side of the other diagonal \(DR\) contains exactly two of
these four points. In particular,

\[
\boxed{qr\ge Ks,\qquad 1-u\ge Ks.}                        \tag{8}
\]

Indeed \(L,P\) are inside \(DCE\), while Lemma 4 puts \(Q,S\)
inside \(ECR\). This proves the hull and the first diagonal split.
The actual-triangle capacity theorem permits at most two interior points
in each of \(DER,DCR\), so the second split is exactly two and two.
Applying the two-interior-point theorem to those two triangles gives (8).

The left point \(L\) is on the \(E\) side of \(DR\). One direct
check is that both \(B,E\) are on that side, and \(L\) lies inside
\(DBE\):

\[
\det(R-D,B-D)=-(r-b+bu)<0,
\qquad \det(R-D,E-D)=-qr<0.
\]

It follows that the four intersections of the two diagonal half-planes
have precisely one of the following two patterns:

| Position of \(P\) relative to \(DR\) | Diagonal-sector counts |
|---|---|
| On the \(E\) side | \(L,P\) occupy the sector at edge \(DE\), and \(Q,S\) occupy the opposite sector at edge \(RC\) |
| On the \(C\) side | Exactly one point in each of the four sectors |

The proof covers the full triangular-right hull alternative. It does not
yet exclude either final sector pattern or the quadrilateral-right hull
alternative.

## Verification

[check_type_ii_completion.py](check_type_ii_completion.py) verifies the
algebraic interval formulas, determinant normalizations, the exact gap
\(7/128<A_0\), and the reduction of interval depth to the 35 four-subset
tests, and the empty-ear bound (7). The global geometric dependencies and hull alternatives are proved
above; they are not conclusions of that diagnostic script.
