# The eight-boundary-point gate

This note removes the boundary-multiplicity part of the eight-boundary gate
and excludes every configuration whose ninth point is outside the boundary
octagon or in any of the four quadrilaterals adjacent to a square side.
It does **not** yet remove all orientation assumptions of Theorem 1 in
[`HAND_PROOF.md`](HAND_PROOF.md).

## 1. Boundary incidences force the multiplicities

**Lemma 1.** Let nine distinct points lie in the unit square, with no three
collinear. If at least eight of the points lie on its boundary, then exactly
eight do; none occupies a corner; and each open side contains exactly two
points. The ninth point is in the open square.

**Proof.** A side contains at most two of the points, since otherwise three
are collinear. Thus there are at most eight point-side incidences. If there
are \(m\) boundary points and \(k\) occupied corners, the number of incidences
is exactly \(m+k\): a noncorner boundary point belongs to one side, and a
corner point belongs to two. Hence

\[
8\le m\le m+k\le8.
\]

Therefore \(m=8\), \(k=0\), and all four side-incidence capacities are
saturated. This proves every assertion. \(\square\)

The lemma applies whenever the minimum triangle area is positive. Repeated
points or collinear triples already have minimum area zero and satisfy the
desired upper bound.

Consequently, after fixing the counterclockwise labels, every nondegenerate
eight-boundary configuration has exactly the coordinate form

\[
\begin{array}{llll}
A=(0,a),&B=(b,0),&C=(c,0),&D=(1,d),\\
E=(1,e),&F=(f,1),&G=(g,1),&H=(0,h),
\end{array}
\]

with

\[
0<a<h<1,\quad 0<b<c<1,\quad 0<d<e<1,\quad 0<g<f<1,
\]

and \(O=(x,y)\in(0,1)^2\). There is no additional corner or side-multiplicity
case to classify under the eight-boundary hypothesis.

## 2. The ninth point must lie inside the boundary octagon

**Theorem 2.** Suppose the eight boundary points have the form in Lemma 1.
If \(O\) is outside their convex hull, the minimum triangle area is at most

\[
\frac{5-2\sqrt6}{2}<A_0.
\]

The same strict upper bound holds when \(O\) lies on the hull boundary,
because then three points are collinear.

**Proof.** Let \(s>0\) be twice the minimum triangle area and put

\[
L=h-a,\quad B=c-b,\quad R=e-d,\quad T=f-g.
\]

The convex hull of the boundary points is precisely the octagon
\(ABCDEFGH\). Its complement in the square consists of the four corner
triangles. By a square symmetry, assume
\(O\in\triangle((0,0),A,B)\); then

\[
\frac{x}{b}+\frac{y}{a}\le1.
\]

The triangles \(AHO\) and \(BCO\) give \(xL\ge s\), \(yB\ge s\).
Consequently

\[
\frac{s}{bL}+\frac{s}{aB}\le1.                         \tag{1}
\]

Set \(\lambda=s/(aB)\). Equation (1) gives \(0<\lambda<1\) and

\[
aB=\frac{s}{\lambda},\qquad
bL\ge\frac{s}{1-\lambda}.                              \tag{2}
\]

The other six consecutive boundary triangles give

\[
dB\ge s,\quad (1-c)R\ge s,\quad (1-f)R\ge s,
\quad (1-e)T\ge s,\quad (1-h)T\ge s,\quad gL\ge s.
\]

Writing each side as its central gap plus its two corner offsets now gives
the four inequalities

\[
\begin{aligned}
1&\ge L+\frac{s}{\lambda B}+\frac{s}{T},\\
1&\ge B+\frac{s}{(1-\lambda)L}+\frac{s}{R},\\
1&\ge R+\frac{s}{B}+\frac{s}{T},\\
1&\ge T+\frac{s}{R}+\frac{s}{L}.
\end{aligned}                                               \tag{3}
\]

Add (3), group each gap with its reciprocal, and apply
\(z+q/z\ge2\sqrt q\). This yields

\[
4\ge2\sqrt s\left(
\sqrt{1+\frac1\lambda}
+\sqrt{1+\frac1{1-\lambda}}+2\sqrt2\right).              \tag{4}
\]

The first two radicals sum to at least \(2\sqrt3\).
Indeed, with \(q=\lambda(1-\lambda)\le1/4\), their squared sum is

\[
2+\frac1q+2\sqrt{1+\frac2q}\ge12.
\]

Thus (4) gives \(1\ge\sqrt s(\sqrt3+\sqrt2)\), so

\[
s\le\frac1{(\sqrt3+\sqrt2)^2}=5-2\sqrt6.
\]

For an elementary strict comparison with the target, \(\sqrt6>71/29\)
follows from \(5046>5041\). Therefore

\[
\frac{5-2\sqrt6}{2}<\frac3{58}<\frac{17}{320}<A_0,
\]

where the last inequality follows from
\(p_0<7/40\) and \(A_0=(2-9p_0)/8\). \(\square\)

## 3. A five-point inequality inside a quadrilateral

**Lemma 3.** Let \(V_1V_2V_3V_4\) be a convex quadrilateral and let \(O\)
be inside it. Suppose every triangle on these five points has doubled area
at least \(s>0\). Then the doubled area \(Q\) of the quadrilateral satisfies

\[
Q\ge2(1+\sqrt2)s.                                           \tag{5}
\]

**Proof.** Set \(r_i=V_i-O\) in counterclockwise order, and write

\[
a=\det(r_1,r_2),\quad b=\det(r_2,r_3),\quad
c=\det(r_3,r_4),\quad d=\det(r_4,r_1).
\]

All four numbers are at least \(s\), and \(Q=a+b+c+d\).
The determinant identity

\[
ac-bd=\det(r_1,r_3)\det(r_2,r_4)
\]

gives \(|ac-bd|\ge s^2\). Interchange the two products if necessary to
assume \(ac\ge bd+s^2\). Since \(bd\ge s^2\), AM--GM gives

\[
Q\ge2\sqrt{ac}+2\sqrt{bd}
\ge2\sqrt{2s^2}+2\sqrt{s^2}=2(1+\sqrt2)s.
\]

If \(O\) were on an edge of the quadrilateral, a triangle would have area
zero, contrary to the hypothesis. Thus every use of positive fan areas is
legitimate. \(\square\)

## 4. Excluding all four side quadrilaterals

**Theorem 4.** Suppose the eight boundary points have the form in Lemma 1.
If \(O\) belongs to any of

\[
\operatorname{conv}(A,B,C,D),\quad
\operatorname{conv}(C,D,E,F),\quad
\operatorname{conv}(E,F,G,H),\quad
\operatorname{conv}(G,H,A,B),
\]

then the minimum triangle area is strictly less than

\[
\frac7{128}<A_0.
\]

**Proof.** By rotation it suffices to treat \(ABCD\). Let \(s>0\) be
twice the minimum triangle area, and retain the side gaps \(L,B,R,T\)
from Section 2. The doubled area of \(ABCD\) is

\[
Q=a(1-b)+cd.
\]

The boundary triangles give

\[
b,g\ge\frac{s}{L},\qquad c,f\le1-\frac{s}{R},\qquad
h,e\le1-\frac{s}{T}.
\]

Put \(k=1-s/T\). Since \(a=h-L\) and \(d=e-R\),

\[
\begin{aligned}
Q&\le(k-L)(1-s/L)+(k-R)(1-s/R)\\
 &=k(2-sZ)-X+2s,\qquad
 X=L+R,\quad Z=\frac1L+\frac1R.                             \tag{6}
\end{aligned}
\]

Both upper bounds \(k-L\), \(k-R\) are positive, since they bound
the positive numbers \(a,d\); all factors used in (6) therefore have the
correct monotonicity. Moreover

\[
0<T=f-g\le1-sZ,
\]

so \(sZ<1\) and \(k\le1-s/(1-sZ)\). Substitution in (6) gives

\[
Q\le2-sZ-\frac{s(2-sZ)}{1-sZ}-X+2s.                        \tag{7}
\]

For fixed \(s,X\), the right side is strictly decreasing as a function
of \(z=sZ\in(0,1)\): its derivative with respect to \(z\) is
\(-1-s/(1-z)^2<0\). The elementary inequality \(XZ\ge4\) now permits
the substitution \(Z=4/X\) in this upper bound.
Set \(u=2s/X\). Then \(0<2u\le sZ<1\), and (7) becomes

\[
Q\le2(1-u)\left(1-\frac{s(1-u)}{u(1-2u)}\right),
\qquad 0<u<\frac12.                                       \tag{8}
\]

Lemma 3 and (8) imply

\[
s\le
\frac{1-u}{1+\sqrt2+(1-u)^2/[u(1-2u)]}.                     \tag{9}
\]

Here is a short exact scalar bound for (9). Since \(\sqrt2>7/5\),
it is enough to prove

\[
\frac{1-u}{12/5+(1-u)^2/[u(1-2u)]}<\frac7{64}
\quad(0<u<1/2).
\]

After multiplication by the positive denominators, this is precisely

\[
P(u):=35-306u+827u^2-640u^3>0.                              \tag{10}
\]

For \(0<u\le3/10\), the exact identity

\[
P(u)=315\left(u-\frac{17}{63}\right)^2+\frac4{63}
 +640\left(\frac3{10}-u\right)\left(u-\frac14\right)^2
\]

proves (10). For \(3/10\le u<1/2\), the equally elementary identity

\[
\begin{aligned}
P(u)={}&\frac7{20}+\frac{87}{5}\left(u-\frac3{10}\right)
+123\left(u-\frac3{10}\right)^2\\
&+640\left(\frac12-u\right)\left(u-\frac3{10}\right)^2
\end{aligned}
\]

does the same. Thus \(s<7/64\), proving the area bound.
Finally \((145/18)^2<65\) implies

\[
A_0=\frac{9\sqrt{65}-55}{320}>\frac7{128}.
\]

The proof covers closed quadrilaterals: if \(O\) is on a diagonal or edge,
some triangle is degenerate and the bound is immediate. \(\square\)

**Corollary 5.** Any eight-boundary configuration with minimum triangle
area at least \(A_0\) has

\[
O\in\operatorname{int}\operatorname{conv}(A,D,E,H)
\;\cap\;
\operatorname{int}\operatorname{conv}(B,C,F,G).              \tag{11}
\]

Indeed, Theorem 2 puts \(O\) in the boundary octagon, and Theorem 4
excludes the caps cut off by \(AD,CF,EH,GB\). Within the octagon, the four
remaining open half-planes are exactly the intersection in (11).
In particular, the first and fifth orientation expressions in Theorem 1 of
`HAND_PROOF.md` are automatically positive at the target threshold:

\[
y-a-(d-a)x>0,\qquad c-x+(f-c)y>0.
\]

The analogous two expressions obtained by each square rotation are positive
as well. The exclusions also contain all eight ear triangles, so no separate
ear case remains.

## 5. Excluding two adjacent double-wedge conditions

The following theorem covers a full orientation family, without a corner-cap
assumption. In particular it simultaneously excludes the two radial classes
whose opposite-side quadrilaterals both place \(O\) in an end triangle.

**Theorem 6.** Suppose the eight boundary points have the form in Lemma 1.
If

\[
O\in\triangle ADE\cap\triangle HDE
\quad\hbox{and}\quad
O\in\triangle BCF\cap\triangle BCG,
\]

then the minimum triangle area is at most

\[
\frac{5-2\sqrt6}{2}<A_0.
\]

The conclusion also holds for every square-symmetry image of these
conditions.

**Proof.** Let \(s>0\) be twice the minimum triangle area, and put
\(X=1-x\), \(Y=y\). Retain the four side gaps \(L,B,R,T\) from Section 2.
The eight consecutive boundary triangles imply

\[
a,d\ge s/B,\quad b,g\ge s/L,\quad
c,f\le1-s/R,\quad e,h\le1-s/T.                             \tag{12}
\]

The four diagonal triangle inequalities furnished by the stated
containments are

\[
\begin{aligned}
y&\ge h(1-x)+dx+s, &
y&\le a(1-x)+ex-s,\\
x&\ge b(1-y)+fy+s, &
x&\le c(1-y)+gy-s.
\end{aligned}
\]

Using \(h=a+L\), \(f=g+T\), and (12), they give

\[
\begin{aligned}
Y&\ge LX+s(1+1/B),\\
1-Y&\ge LX+s(1+1/T),\\
1-X&\ge TY+s(1+1/L),\\
X&\ge TY+s(1+1/R).                                        \tag{13}
\end{aligned}
\]

Set \(A=s(1+1/R)\), \(C=s(1+1/B)\). Since \(LT<1\), the first and last
inequalities in (13) imply

\[
X\ge\frac{A+TC}{1-LT},\qquad
Y\ge\frac{C+LA}{1-LT}.
\]

Add the other two inequalities in (13) and substitute these lower bounds.
After collecting terms, this gives

\[
\begin{aligned}
2\ge s\Bigg[2+\frac1L+\frac1T
 +\frac{(1+LT)(2+1/B+1/R)
       +2(L+T+L/R+T/B)}{1-LT}\Bigg].                       \tag{14}
\end{aligned}
\]

Let \(\ell=\sqrt{LT}\) and \(r=\sqrt{BR}\). The four AM--GM bounds

\[
\frac1L+\frac1T\ge\frac2\ell,\qquad
\frac1B+\frac1R\ge\frac2r,\qquad
L+T\ge2\ell,\qquad
\frac LR+\frac TB\ge\frac{2\ell}{r}
\]

turn (14) into

\[
1\ge s\left[1+\frac1\ell
 +\frac{(1+1/r)(1+\ell)}{1-\ell}\right]
 =s\frac{(1+\ell)(r+\ell)}{\ell r(1-\ell)}.               \tag{15}
\]

Independently, the bottom and right side budgets and (12) give

\[
1\ge B+\frac{s}{L}+\frac{s}{R},\qquad
1\ge R+\frac{s}{B}+\frac{s}{T}.
\]

Adding and applying AM--GM again yields

\[
1\ge r+s\left(\frac1\ell+\frac1r\right).                 \tag{16}
\]

Define \(t=s(1/\ell+1/r)>0\). Equations (15)--(16) imply

\[
\ell\le\frac{1-t}{1+t},\qquad r\le1-t,\qquad0<t<1.
\]

Since \(\ell r/(\ell+r)\) increases in each positive argument,

\[
s=\frac{t\ell r}{\ell+r}
\le\frac{t(1-t)}{2+t}\le5-2\sqrt6.
\]

The last inequality is exactly the nonnegative-square identity

\[
(5-2\sqrt6)(2+t)-t(1-t)
=\bigl(t-(\sqrt6-2)\bigr)^2\ge0.
\]

The comparison with \(A_0\) was proved in Section 2. Degenerate boundary
cases have area zero, so the closed triangle containments cause no exception.
\(\square\)

## 6. The exact remaining obligation

The sharp inequality already proved in `HAND_PROOF.md` applies if, after
one of the eight square symmetries and the induced relabeling,

\[
O\in\triangle ADH\cap\triangle CGF
\]

and \(O\) is on the side of \(BE\) containing \((1,0)\).
Corollary 5 proves two of the five orientation conditions. It does not yet
prove the other three, even after a choice of square symmetry. The outstanding
eight-boundary task is to bound every configuration with \(O\) in (11)
but outside the union of
these symmetry images, or prove that a configuration at the target threshold
must belong to that union. No such implication is claimed in this note.
