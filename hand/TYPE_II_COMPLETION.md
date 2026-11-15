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

The proof covers the full triangular-right hull alternative. Section 6
excludes the quadrilateral-right alternative, so this reduction applies
to every remaining balanced configuration. Neither final sector pattern
is excluded by the present note.

## 6. Complete exclusion of a quadrilateral right hull in the balanced row

**Theorem 6.** In the balanced Type-II class, the four-point right set
\(B,C,R,S\) cannot have a quadrilateral convex hull at minimum triangle
area at least \(A_0\). Consequently the triangular-right reduction in
Section 5 covers the entire surviving balanced row.

Continue to put \(s=7/64\), \(q=1-\lambda\), \(w=1-b\), and
\(K=4+2\sqrt3\). The forced placements from `TYPE_II_BALANCED.md`
give

\[
0<b\le\tfrac12,\qquad 0<q<1,\qquad
bq\ge3s,\qquad q\ge Ks>\frac{13}{16}.                    \tag{9}
\]

Here \(L\) is inside \(DBE\), while \(P\) is in the central
triangle \(DCB\), and both lie above \(CE\). The last strict
comparison follows from \(\sqrt3>12/7\).

### 6.1. A sharper right-quadrilateral lower-vertex inequality

Suppose the right hull is quadrilateral and label it in cyclic order
\(B,R,S,C\). Apply the affine map

\[
(X,Y)\longmapsto\left(\frac{X-b}{w},Y\right).
\]

Write the image of \(R\) as \((x,y)\). The lower-vertex inequality
in Section 1 of `TYPE_II_BALANCED.md` gives

\[
(x-y)(1-x)\ge a,\qquad a=\frac{s}{w},\qquad x<1.
\]

Thus \(y\le x-a/(1-x)\). Put

\[
c=b+\lambda w=1-wq>0.
\]

The doubled area of the actual triangle \(EBR\) is positive and is
\(by+\lambda wx\). Hence

\[
\begin{aligned}
s&\le by+\lambda wx\\
 &\le cx-\frac{ba}{1-x}\\
 &=c-\left(c(1-x)+\frac{ba}{1-x}\right)\\
 &\le c-2\sqrt{cba}.
\end{aligned}
\]

In particular,

\[
\boxed{c-s>0,\qquad (c-s)^2\ge\frac{4cbs}{w}.}            \tag{10}
\]

For a fixed \(b\), these two conditions remain true if \(c\) is
increased. Indeed, the upward quadratic
\((c-s)^2-4cbs/w\) is negative at \(c=s\); a point on its
nonnegative set with \(c>s\) lies beyond its larger root. This
justifies every upper replacement for \(c\) below.

Define

\[
N_b(C)=4Cbs-(1-b)(C-s)^2.                                 \tag{11}
\]

If \(C\ge c\), (10) would imply \(N_b(C)\le0\). Each of the
remaining cases supplies an explicit upper bound \(C\) with
\(N_b(C)>0\), giving a contradiction.

### 6.2. All parameters with \(q\ge7/8\) are excluded

First suppose \(b\ge3/8\). Since \(q\ge7/8\),

\[
c\le C_1=\frac{1+7b}{8}.
\]

Direct expansion gives

\[
4096N_b(C_1)=3136b^3-1456b^2+113b-1.
\]

On writing \(v=b-3/8\ge0\), the right side becomes

\[
3136v^3+2072v^2+344v+2>0.                                \tag{12}
\]

Now suppose \(b\le3/8\). The inequality \(bq\ge3s\) gives

\[
c\le C_2=1-\frac{3s(1-b)}b.
\]

Also \(b\ge3s=21/64\). The exact expansion is

\[
4096b^2N_b(C_2)
=8464b^3-9948b^2+3717b-441.
\]

Put \(v=3/8-b\), so \(0\le v\le3/64<1/16\). This numerator is

\[
\frac9{32}+\frac{693}{4}v-426v^2-8464v^3
\ge\frac9{32}+\frac{1817}{16}v>0,                        \tag{13}
\]

where the lower bound follows by replacing \(v\) by \(1/16\)
in \(426v+8464v^2\). Equations (12)--(13) contradict (10),
and exhaust \(q\ge7/8\).

### 6.3. At \(q\le7/8\), the line \(LP\) must isolate \(D\)

Write

\[
L=(l,v),\qquad P=(p,t),\qquad
z=1-v,\quad h_L=v-\lambda-ql,\quad h_P=t-\lambda-qp.
\]

The anchor-pair area inequalities and the forced locations imply

\[
\begin{gathered}
ql\ge s,\qquad bz-l\ge s,\qquad
h_L,h_P\ge s,\qquad t\le1-s,\\
0<\lambda<v<1.
\end{gathered}                                           \tag{14}
\]

Orient the line from \(L\) to \(P\), and let
\(d_X=\det(L-X,P-X)\). The left and central sides of \(DB\)
give

\[
\frac{l}{1-v}<b<\frac{p}{1-t},
\]

so \(d_D=p(1-v)-l(1-t)>0\), and hence \(d_D\ge s\).
Because \(L\) is strictly inside \(DCE\), the three vertices cannot
all be on the same side of \(LP\). Positive minimum area excludes zero
signs. There are therefore exactly three possible sign pairs for
\((d_E,d_C)\):

\[
(+,-),\qquad(-,+),\qquad(-,-).                            \tag{15}
\]

**The first pair is impossible at \(q\le7/8\).** In this pair,
\(d_D,d_E\ge s\). The weighted identity

\[
(1-v)d_E+(v-\lambda)d_D=ql(t-v)
\]

and the positivity of its two weights imply \(l(t-v)\ge s\).
By (14),

\[
l[q(1-l)-2s]\ge s.                                      \tag{16}
\]

On the other hand, \(v\ge\lambda+ql+s\), and
\(bz-l\ge s\) with \(b\le1/2\), imply

\[
(2+q)l\le q-3s,
\qquad l\le\frac{q-3s}{2+q}
\le\frac{35}{184}<\frac15.                              \tag{17}
\]

The scalar function \(l[(7/8)(1-l)-2s]\) increases on
\([0,1/5]\), since its derivative there is at least \(49/160>0\).
Consequently the left side of (16) is at most

\[
\frac15\left(\frac78\frac45-2s\right)
=\frac{77}{800}<\frac7{64}=s,
\]

a contradiction.

**The second pair is also impossible at \(q\le7/8\).** Now
\(d_C\ge s\) and \(-d_E\ge s\). The identity

\[
d_C-d_E=h_L-h_P
\]

implies \(h_L\ge h_P+2s\ge3s\). Using \(ql\ge s\),
we obtain \(v\ge\lambda+4s\), and therefore

\[
z\le q-4s\le\frac7{16}.
\]

But \(bz\ge s+l\), \(l\ge s/q\), and \(b\le1/2\) give

\[
z\ge2s\left(1+\frac1q\right)
\ge2s\left(1+\frac87\right)=\frac{15}{32}>\frac7{16},
\]

again a contradiction. Thus only \(d_E,d_C<0\) remains: the line
\(LP\) puts \(D\) on one side and \(E,C\) on the other.

### 6.4. The remaining line sign gives two coarse parameter bounds

In the remaining case, the inequalities \(-d_E,-d_C\ge s\) give

\[
\frac{s+l(t-\lambda)}{v-\lambda}
\le p\le
1-\frac{s+(1-l)(1-t)}{1-v}.                              \tag{18}
\]

Both denominators are positive. After multiplying them out, the difference
between the right and left sides' numerators is affine in \(t\), with
positive coefficient \(h_L\). Thus replacing \(t\) by its upper
bound \(1-s\) preserves the necessary nonnegativity. It yields

\[
J(l,z):=z^2-[q(1-l)+s]z+sq(2-l)\le0.
\]

Here \(z\ge(s+l)/b> s\), so
\(\partial J/\partial l=q(z-s)>0\). Substituting \(l\ge s/q\)
therefore gives

\[
\boxed{z^2-qz+2sq-s^2\le0,
\qquad z\ge\frac{s(q+1)}{bq}.}                          \tag{19}
\]

Let

\[
Z(q)=\frac{q+\sqrt{q^2-8sq+4s^2}}2.
\]

The radicand is nonnegative on the feasible range \(q\ge Ks\);
its larger zero is \(Ks\). The function \(Z\) increases there:
\(q\) increases, and the radicand increases because \(q>4s\).
Thus (19) implies

\[
\frac{s(q+1)}{bq}\le z\le Z(q).
\]

For \(q\le7/8\), comparison with the upper endpoint gives

\[
\frac{s(q+1)}{bq}\ge\frac{15s}{7b},\qquad
Z(q)\le Z(7/8)=5s,
\qquad\boxed{b\ge\frac37.}                              \tag{20}
\]

There is one further convenient bound:

\[
\boxed{q\le\frac{27}{32}\quad\Longrightarrow\quad
b>\frac9{20}.}                                         \tag{21}
\]

Indeed, if both \(q\le27/32\) and \(b\le9/20\), the lower bound
in (19) would be at least \(z_1=2065/3888\). But

\[
z_1-\frac12\frac{27}{32}=\frac{1699}{15552}>0,
\]

and, at \(q_1=27/32\),

\[
z_1^2-q_1z_1+2sq_1-s^2
=\frac{1587523}{241864704}>0.
\]

The upward quadratic is positive there and \(z_1\) is to the right of
its vertex, so \(z_1>Z(q_1)\ge Z(q)\), contradicting (19).

### 6.5. Both remaining parameter ranges contradict the right ear

If \(27/32\le q\le7/8\), equations (20) and (9) give

\[
b\ge\frac37,\qquad c\le C_3=1-\frac{27}{32}(1-b).
\]

The numerator of (11) is

\[
4096N_b(C_3)=2916b^3-1080b^2-35b-9.
\]

Writing \(u=7b-3\ge0\), this equals

\[
\frac{2916u^3+18684u^2+31657u+2460}{343}>0.               \tag{22}
\]

If instead \(q\le27/32\), equations (21) and (9) give

\[
b>\frac9{20},\qquad c\le C_4=1-\frac{13}{16}(1-b).
\]

Now

\[
4096N_b(C_4)=2704b^3-728b^2-159b-25.
\]

With \(u=20b-9>0\), this equals

\[
\frac{169u^3+3653u^2+20712u+1216}{500}>0.                 \tag{23}
\]

Both (22) and (23) contradict (10). Together with Section 6.2 they exhaust
all \(q\), and Section 6.3 exhausted all line orientations. This proves
Theorem 6. In particular, **both side four-point hulls in the balanced
row are now triangular**, and the eight-point quadrilateral reduction of
Section 5 is unconditional for that row. The final four-interior-point
sector analysis remains open here.

## Verification

[check_type_ii_completion.py](check_type_ii_completion.py) verifies the
algebraic interval formulas, determinant normalizations, the exact gap
\(7/128<A_0\), and the reduction of interval depth to the 35 four-subset
tests, the empty-ear bound (7), and all identities and rational signs in
the complete quadrilateral-right exclusion. The global geometric dependencies and hull alternatives are proved
above; they are not conclusions of that diagnostic script.
