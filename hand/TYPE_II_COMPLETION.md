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

## 3. A complete additional cut in the balanced Type-II class

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
\boxed{Q_y<Q_x.}                                          \tag{4}
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
area argument; this note does not assert that (4) closes the balanced row.

## Verification

[check_type_ii_completion.py](check_type_ii_completion.py) verifies the
algebraic interval formulas, determinant normalizations, the exact gap
\(7/128<A_0\), and the reduction of interval depth to the 35 four-subset
tests. The global geometric dependencies and hull alternatives are proved
above; they are not conclusions of that diagnostic script.
