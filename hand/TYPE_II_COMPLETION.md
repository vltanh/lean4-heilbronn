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
to every remaining balanced configuration. The opposite-sector alternative
is excluded by Theorem 1 of
[FOUR_INTERIOR_QUADRILATERALS.md](FOUR_INTERIOR_QUADRILATERALS.md).
Thus exactly one interior point lies in each diagonal sector. Section 8
below excludes one of the two remaining assignments of \(Q,S\).

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
sector analysis is further reduced in Sections 7--8 below.

## 7. A universal six-point parameter inequality

The following strengthening of Section 6.4 will be useful after changing
the supporting shear. It does not require \(b\le1/2\).

**Lemma 7.** Suppose \(0<b<1\), the points \(L,P\) are in the
positions used in Section 6.3, and every doubled triangle area of
\(D,C,E,B,L,P\) is at least \(s=7/64\). Put
\(q=1-\lambda\), \(z=1-L_y\), and

\[
Z(q)=\frac{q+\sqrt{q^2-8sq+4s^2}}2.
\]

Then

\[
\boxed{q\ge Ks,\qquad
\frac{s(q+1)}{bq}\le z\le Z(q).}                         \tag{24}
\]

**Proof.** The lower bound follows from \(bz\ge s+l\) and
\(ql\ge s\). The two-interior-point bound in \(DCE\) gives
\(q\ge Ks\), so \(Z(q)\) is real.

Use the three exhaustive line signs in (15). If \(d_E,d_C<0\), the
derivation (18)--(19) gives \(z^2-qz+2sq-s^2\le0\), hence
\(z\le Z(q)\). That derivation uses only \(b<1\), which gives
\(z\ge(s+l)/b>s\); its restriction \(q\le7/8\) was needed
only for the later endpoint comparisons.

If \(d_E>0\), the weighted identity in Section 6.3 gives
\(l(P_y-L_y)\ge s\). Since \(P_y\le1-s\), this implies
\(l(z-s)\ge s\), in particular \(z>s\). Also
\(h_L=q-z-ql\ge s\). Consequently

\[
(q-z-s)(z-s)\ge ql(z-s)\ge qs.
\]

Expansion again gives \(z^2-qz+2sq-s^2\le0\).

If \(d_C>0\), Section 6.3 instead gives \(h_L\ge3s\), whence
\(z\le q-4s\). For \(q\le8s\), this is at most
\(q/2\le Z(q)\). For \(q\ge8s\), the quadratic evaluated at
\(q-4s\) is

\[
(q-4s)^2-q(q-4s)+2sq-s^2=s(15s-2q)<0.
\]

Thus \(q-4s\) lies between its two roots and is again below \(Z(q)\).
All line signs are covered. \(\square\)

Three convenient consequences, for the original normalization
\(b\le1/2\), are

\[
\begin{array}{rcl}
b\le2/5&\Longrightarrow&q>89/100,\\
b\le3/7&\Longrightarrow&q\ge7/8,\\
b\le9/20&\Longrightarrow&q>27/32.
\end{array}                                               \tag{25}
\]

The last two follow from the root comparisons (20)--(21), now valid for
all line signs by Lemma 7. For the first, at
\(q_0=89/100,b_0=2/5\), put

\[
z_0=\frac{s(q_0+1)}{b_0q_0}=\frac{6615}{11392}.
\]

Then

\[
z_0-q_0/2=\frac{38639}{284800}>0,
\qquad
z_0^2-q_0z_0+2sq_0-s^2
=\frac{10077669}{3244441600}>0.
\]

Hence \(z_0>Z(q_0)\). If both \(b\le b_0\) and \(q\le q_0\),
the lower bound in (24) would be at least \(z_0\), while its upper
bound would be at most \(Z(q_0)\). This proves the first implication.

## 8. Complete exclusion when the right interior point is below \(DR\)

The preceding results reduce the balanced case to a quadrilateral
\(D,E,R,C\) with one point in each diagonal sector. The points \(L,P\)
occupy the sectors adjacent to \(DE,DC\), respectively. There are two
possible assignments of \(Q,S\) to the sectors adjacent to \(ER,RC\).

**Theorem 8.** The assignment with \(S\) in the sector adjacent to
\(ER\), and \(Q\) in the sector adjacent to \(RC\), is impossible.

This leaves the single balanced assignment with \(Q\) in the sector
at \(ER\) and \(S\) in the sector at \(RC\).

### 8.1. The second supporting shear

Write \(R=(r,u)\), and put \(v=1-u\). Section 5 gives

\[
q,v\ge Ks>13/16,
\quad bq\ge3s,
\quad g=r-b-(1-b)u\ge3s.
\]

If \(u=0\), the shear below gives three occupied corners, already
excluded by `CORNER_FAMILIES.md`. Thus assume \(u>0\).
Set

\[
\tau=\frac{1-r}{v}\ge0,
\qquad b'=1-b-\tau=\frac gv>0.
\]

The determinant-one shear followed by a vertical reflection is

\[
(x,y)\longmapsto(1-x-\tau(1-y),y).                       \tag{26}
\]

It preserves unsigned triangle areas. It sends the old \(C,D,R,B\)
to the new Type-II anchors

\[
D'=(0,1),\quad C'=(1,1),\quad E'=(0,u),\quad B'=(b',0).
\]

It keeps the whole configuration in the square. Indeed the original
full hull is \(D,C,R,B,E\). Its vertices \(D,C\) remain the upper
corners, \(R\) becomes a side contact, \(B\) remains on the bottom
with \(0<b'<1\), and the shear before reflection sends
\(E\) to \((\tau q,\lambda)\), still in the square because
\(0\le\tau<1-b<1\). Convexity then handles all other points.

The left/right container counts are exchanged by (26), while the two
central points remain central. Under the present assignment, both
\(P,Q\) lie in \(DCR\), so both transformed central points lie
above the new line \(C'E'\). The transformed left interior point
\(S\) lies below that line and inside \(D'B'E'\).

If \(b'\le1/2\), this is precisely the balanced two-central-point
cut excluded by Section 6 of `TYPE_II_BALANCED.md`. Therefore

\[
\boxed{\tfrac12<b'\le1-b.}                               \tag{27}
\]

### 8.2. If the central-pair line keeps \(B',E'\) together, a quadratic excludes it

Suppose the transformed line \(PQ\) puts \(B',E'\) on the same
side. The three line-sign alternatives and general-threshold calculations
in Section 12 of `TYPE_II.md` apply before that section specializes its
parameter bounds. They require only \(0<b'<1\), \(0<v\le1\),
and that both points lie in \(D'C'B'\cap D'C'E'\).

In all three alternatives, their positive bracket is at most
\(v-s(v+1)\). Indeed the other two brackets subtract, respectively,
an additional \(sb'v\) and \(s[1-(1-b')v]\), both positive.
Their necessary quadratic therefore implies

\[
[v-s(v+1)]^2\ge4sv(1+b'v).
\]

Consequently

\[
b'\le B(v):=\frac{[v-s(v+1)]^2}{4sv^2}-\frac1v.
\]

On \(13/16\le v\le1\),

\[
B'(v)=\frac{(3-s)v-s}{2v^3}>0.
\]

Thus \(b'\le B(1)=177/448<1/2\), contrary to (27).

### 8.3. Four exact parameter rectangles for the opposite-side alternative

It remains to suppose \(B',E'\) are on opposite sides of \(PQ\).
The general proof of the two-point chamber lemma in Section 6 of
`TYPE_II.md` excludes this as soon as its polynomial

\[
\begin{aligned}
G(\beta,z)={}&448\beta^3z^3+\beta^2z^2(1890-3648z)\\
 &+\beta z(3648z^2-5293z+2135)+399z^2-847z+644
\end{aligned}                                             \tag{28}
\]

is positive at \((\beta,z)=(b',v)\). In fact its derivative estimate
(18)--(19) holds for every \(\beta\ge0\), by completion of the
square; the former upper bound on \(\beta\) was used only to show
\(G>0\). We now supply that sign on the entire parameter range arising
here.

First \(b>1/3\). Otherwise \(bq\ge3s\) would give
\(q\ge63/64\), hence \(\lambda\le1/64\). Also
\(u=1-v<3/16\). The positive doubled area of \(EBR\) would satisfy

\[
s\le bu+\lambda(r-b)
\le\frac13\frac3{16}+\frac1{64}
=\frac5{64}<s,
\]

a contradiction. More generally the same actual triangle gives

\[
s\le b(1-v)+(1-q)(r-b)
\le b(1-v)+(1-q)(1-b),
\]

and hence

\[
v\le q+\frac{1-s-q}{b}.                                \tag{29}
\]

Use (25), (27), and (29). They place \((b',v)\) in one of the
following four rectangles, always with \(v>13/16\):

| Original \(b\) range | Lower bound for \(q\) | Upper bound \(B\) for \(b'\) | Upper bound \(Z\) for \(v\) |
|---|---:|---:|---:|
| \(1/3<b\le2/5\) | \(89/100\) | \(2/3\) | \(25/28\) |
| \(2/5\le b\le3/7\) | \(7/8\) | \(3/5\) | \(15/16\) |
| \(3/7\le b\le9/20\) | \(27/32\) | \(4/7\) | \(31/32\) |
| \(9/20\le b\le1/2\) | not needed | \(11/20\) | \(1\) |

To check the bounds on \(v\), the right side of (29) decreases in
\(q\). At each of the first three lower bounds \(q_0\), the
number \(1-s-q_0\) is positive, so the expression decreases in
\(b\). At the three lower \(b\) endpoints, its values are,
respectively,

\[
\frac{1427}{1600}<\frac{25}{28},\qquad
\frac{117}{128}<\frac{15}{16},\qquad
\frac{61}{64}<\frac{31}{32}.
\]

Thus every entry follows by a monotone endpoint replacement, without
omitting any intermediate \(b\) or \(q\).

### 8.4. The polynomial is positive throughout all four rectangles

For \(0\le\beta\le2/3\), \(13/16\le z\le1\),

\[
G_{\beta\beta}
=z^2[2688\beta z+3780-7296z]
\le z^2(3780-5504z)<0.
\]

Therefore, for each fixed \(z\), it suffices to check \(\beta=0\)
and the upper endpoint \(\beta=B\) of the appropriate rectangle.
At zero,

\[
G(0,z)=399z^2-847z+644\ge196>0,
\]

because that quadratic decreases on \([13/16,1]\).

For the other endpoint write \(w=Z-z\). Since
\(13/16\le z\le Z\le1\), one has \(0\le w<1/5\).
The exact expansions have the form

\[
G(B,Z-w)=g_0+g_1w+g_2w^2-g_3w^3,
\]

with the following coefficients; \(g_3\) is positive in every row.

| \((B,Z)\) | \(g_0\) | \(g_1\) | \(g_2-g_3/5\) |
|---|---:|---:|---:|
| \((2/3,25/28)\) | \(707369/148176\) | \(1107899/882\) | \(45961/945\) |
| \((3/5,15/16)\) | \(1213/128\) | \(9331/10\) | \(277314/625\) |
| \((4/7,31/32)\) | \(436571/50176\) | \(601887/784\) | \(155703/245\) |
| \((11/20,1)\) | \(8241/1000\) | \(77669/125\) | \(3981699/5000\) |

All displayed entries are strictly positive. Since \(w<1/5\),

\[
G(B,Z-w)\ge g_0+g_1w+(g_2-g_3/5)w^2>0.
\]

This proves \(G(b',v)>0\) on all four rectangles. The chamber lemma
therefore excludes the opposite-side alternative as well.

The same-side and opposite-side alternatives exhaust the line \(PQ\)
relative to \(B',E'\). Both contradict the minimum-area hypothesis,
proving Theorem 8. The only remaining balanced placement has \(Q\) in
the sector at \(ER\) and \(S\) in the sector at \(RC\); its coupled
inequality is still needed for a complete balanced-row exclusion.

## 9. The upper inner-diagonal cell is impossible

Continue with the sole alternating placement left by Theorem 8. Thus
\(L,P,Q,S\) occupy, respectively, the sectors at the edges
\(DE,DC,ER,RC\) of the quadrilateral \(D,E,R,C\). In particular,
\(L,P\) are above \(EC\), \(Q,S\) are below \(EC\),
\(P,S\) are above \(DR\), and \(L,Q\) are below \(DR\).
Keep \(q=1-\lambda\), \(v=1-u\), and \(s=7/64\).

The two actual lines \(ES\) and \(LR\) divide this placement into
four sign alternatives. Here “above \(ES\)” means the side containing
\(D\), and “above \(LR\)” means the side containing \(C\).
All the relevant determinants are nonzero under the positive-minimum-area
hypothesis.

**Theorem 9.** The point \(Q\) cannot be above both \(ES\) and
\(LR\).

### 9.1. Two containing triangles

First, \(L\) lies in the actual triangle \(DES\). Indeed \(S\)
is below \(EC\), so the line \(ES\) has slope less than that of
\(EC\). Since \(L\) is above \(EC\), it is above \(ES\).
Also \(S\) is to the right of \(BC\), hence

\[
S_x>b+(1-b)S_y>b(1-S_y).
\]

The slope of \(DS\) is consequently greater than the slope of
\(DB\). Since \(L\) is below \(DB\) and to the right of
\(DE\), it is below \(DS\). These are exactly the three strict
half-plane inequalities for \(L\in\operatorname{int}(DES)\).

Similarly \(Q\) is below \(DS\): it is below \(DR\), whereas
\(S\) is above \(DR\), so \(DS\) lies above \(DR\) at every
positive horizontal coordinate. It follows that

\[
Q\text{ above }ES\quad\Longrightarrow\quad
L,Q\in\operatorname{int}(DES).                          \tag{30}
\]

The reflected statement is

\[
Q\text{ above }LR\quad\Longrightarrow\quad
S,Q\in\operatorname{int}(CRL).                          \tag{31}
\]

For completeness, the shear and reflection (26) exchanges the roles
\(D\leftrightarrow C\), \(E\leftrightarrow R\), and
\(L\leftrightarrow S\), while preserving the left, central, and
right triangle containments used in (30). Its bottom parameter is
\(b'=g/v\in(0,1)\). The preceding slope argument requires only
\(0<b'<1\), so it proves (31) as well. Equivalently, each containment
can be read directly in the four diagonal sectors of \(D,E,R,C\).

### 9.2. The two-interior cost contradicts the bottom ear

Suppose \(Q\) is above both lines. By (30)--(31), the two-interior
triangle theorem applies to both \(DES\) and \(CRL\). With
\(K=4+2\sqrt3\), it gives

\[
qS_x\ge Ks,\qquad
v(1-L_x)-(1-r)(1-L_y)\ge Ks.                           \tag{32}
\]

On the other hand, the actual triangles \(CRS\) and \(DEL\)
have doubled areas at least \(s\). Therefore

\[
v(1-S_x)-(1-r)(1-S_y)\ge s,
\qquad qL_x\ge s.
\]

Since \(0<q,v\le1\), \(r\le1\), and \(L_y,S_y\le1\),
these imply

\[
S_x\le1-\frac{s}{v}\le1-s,
\qquad L_x\ge\frac{s}{q}\ge s.
\]

Substituting these bounds in (32) yields

\[
q(1-s)\ge Ks,\qquad v(1-s)\ge Ks.
\]

The required strict numerical comparison is particularly small:

\[
Ks>\frac{13}{16}>(1-s)^2,
\qquad
\frac{13}{16}-\left(\frac{57}{64}\right)^2
=\frac{79}{4096}>0.
\]

Consequently \(q,v>1-s\), or equivalently
\(\lambda,u<s\). But the actual bottom-ear triangle \(EBR\)
then satisfies

\[
s\le\Delta EBR=bu+\lambda(r-b)
\le bu+\lambda(1-b)<bs+s(1-b)=s,
\]

a contradiction. This proves Theorem 9. \(\square\)

### 9.3. Exact scope of the remaining alternatives

The proof also gives a useful asymmetric consequence without assuming
both signs. If \(Q\) is above \(ES\), (30) alone forces
\(q>1-s\), hence \(\lambda<s\). The bottom-ear inequality then
forces \(u>s\), or \(v<1-s\). The reflected statement holds if
\(Q\) is above \(LR\).

Thus the remaining balanced problem has precisely the following
inner-line sign alternatives. The later results listed in the final
column record their current status. “Open” denotes a necessary case still
to exclude, not an assertion that a competitive configuration exists.

| Side of \(ES\) | Side of \(LR\) | Consequence | Status |
|---|---|---|---|
| Above | Above | \(q,v>1-s\), contradicting \(\Delta EBR\ge s\) | Excluded |
| Above | Below | \(q>1-s\), \(v<1-s\) | Excluded by Section 10 below |
| Below | Above | \(v>1-s\), \(q<1-s\) | Open |
| Below | Below | Neither of the preceding one-sided conclusions is forced | Excluded by [BALANCED_BOTTOM_INNER_SECTOR.md](BALANCED_BOTTOM_INNER_SECTOR.md) |

This exhausts all possibilities because neither line can contain \(Q\).
The unbalanced Type-II row \((1,2,3)\) is not addressed by Theorem 9.

## 10. The left mixed inner-diagonal cell is impossible

**Theorem 10.** In the remaining balanced placement, \(Q\) cannot be
above \(ES\) and below \(LR\).

Write \(L=(l,a)\) and \(S=(k,c)\). The one-sided consequence of
Section 9 gives

\[
q>1-s,\qquad v<1-s,\qquad u>s.
\]

Also \(v\ge Ks>13/16\), so \(u<3/16\). All the estimates
below retain the original normalization \(0<b\le1/2\).

### 10.1. A barycentric inequality from the triangle \(BRL\)

The point \(Q\) lies inside \(BRL\). To see this, write
\(Q=(x,y)\). Its centrality gives
\(b(1-y)<x<b+(1-b)y\), and hence

\[
\begin{aligned}
[LBQ]&=a(x-b)+(b-l)y
 >y\{b(1-a)-l\}>0,\\
[BRQ]&=(r-b)y-u(x-b)
 >y\{r-b-(1-b)u\}>0.
\end{aligned}
\]

The positive braces are the anchor areas \([BDL]\) and \([BRC]\).
The assumed sign relative to \(LR\) supplies the third edge
inequality. Thus the three positive determinants are

\[
[BRQ]>0,\qquad[RLQ]>0,\qquad[LBQ]>0,
\]

where \([XYZ]=\det(Y-X,Z-X)\). Therefore, with

\[
H=[BRL],\qquad h=[ESL],\qquad
T=[EBS]+[ERS],
\]

one has \(H\ge3s\), \(h\ge s\), and \(T\ge2s\).
Here \(L\) is above \(ES\) by Section 9.1, while \(B,R\)
are below \(ES\). The latter follows for \(B\) from
\(k>b\), \(c>0\), and \(\lambda>0\), and for \(R\)
from \(S\in\operatorname{int}(ECR)\).

Consider the affine function

\[
\eta(X)=\det(S-E,X-E).
\]

Its values at \(L,B,R\) are \(h,-[EBS],-[ERS]\), respectively.
In the barycentric expression for \(Q\) in \(BRL\), the weights
of \(B\) and \(R\) are both at least \(s/H\), because their
opposite subtriangles are actual triangles. Since both corresponding
values of \(\eta\) are negative, it follows that

\[
s\le\eta(Q)\le h-\frac{s}{H}(2h+T).
\]

Consequently a necessary inequality is

\[
0\le Hh-s(H+2h+T)
\le Hh-s(H+2h+2s).                                    \tag{33}
\]

### 10.2. Uniform rational bounds on the two outer areas

The endpoint triangles \(DEL\) and \(BDL\) give

\[
l\ge\frac{s}{q}\ge s,\qquad
a\le1-\frac{s+l}{b}\le1-\frac{2s}{b}\le\frac9{16}.
                                                               \tag{34}
\]

The area of \(RCS\), together with \(v<1-s\), gives

\[
k\le1-\frac{s}{v}\le1-\frac{s}{1-s}=\frac{50}{57}.
                                                               \tag{35}
\]

Furthermore the two positive areas \([DRS]\) and \([RCS]\)
sum exactly to \(c-u\). Hence

\[
c\ge u+2s>3s.                                         \tag{36}
\]

Since \(k>b>l\), the positive area \(h\) satisfies

\[
\begin{aligned}
h&=k(a-\lambda)-l(c-\lambda)\\
 &=ka-lc-\lambda(k-l)\\
 &\le\frac{50}{57}\frac9{16}-3s^2
 =\frac{35607}{77824}=:h_0.
\end{aligned}                                             \tag{37}
\]

For \(H\), use \(r\le1\), \(u<3/16\), \(l\ge s\),
and (34):

\[
\begin{aligned}
H&=(r-b)a+u(b-l)\\
 &\le(1-b)\left(1-\frac{2s}{b}\right)
       +\frac3{16}(b-s)=:f(b).
\end{aligned}
\]

The last replacement uses \(b-l>0\), which follows from
\(L\in DBE\). The following factorization proves the required
endpoint bound without any subdivision of the parameter interval:

\[
f(1/2)-f(b)
=\left(\frac12-b\right)
 \left(\frac{4s}{b}-\frac{13}{16}\right)\ge0.
\]

Indeed \(b\le1/2\), and \(4s/b\ge8s=7/8>13/16\). Thus

\[
H\le f(1/2)=\frac{363}{1024}=:H_0.                    \tag{38}
\]

### 10.3. The necessary inequality has a negative rational upper bound

Put \(\Phi(H,h)=Hh-s(H+2h+2s)\). Because \(h\ge s\)
and \(H_0>2s\), the replacements (37)--(38) increase this expression:

\[
\Phi(H_0,h_0)-\Phi(H,h)
=(H_0-H)(h-s)+(h_0-h)(H_0-2s)\ge0.
\]

But exact rational arithmetic gives

\[
\Phi\left(\frac{363}{1024},\frac{35607}{77824}\right)
=-\frac{47171}{79691776}<0,
\]

contradicting (33). This proves Theorem 10. \(\square\)

The proof uses no assumption about the coordinates of \(P\), beyond
the already established global reduction and the lower bound on \(v\).
It excludes the whole left mixed cell, including every placement of the
line through \(L,P\) relative to the anchors.

## Verification

[check_type_ii_completion.py](check_type_ii_completion.py) verifies the
algebraic interval formulas, determinant normalizations, the exact gap
\(7/128<A_0\), and the reduction of interval depth to the 35 four-subset
tests, the empty-ear bound (7), and all identities and rational signs in
the complete quadrilateral-right exclusion. It also checks the universal
six-point root identities in Section 7, the second-shear identities and
four-rectangle coefficient table in Section 8, and the area identities
and exact rational gap used in Section 9. It also verifies the
barycentric affine identity, endpoint factorization, and negative
rational upper bound in Section 10. The global geometric
dependencies, containments, and hull alternatives are proved above; they
are not conclusions of that diagnostic script.
