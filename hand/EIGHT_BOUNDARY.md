# The eight-boundary-point gate

This note removes the boundary-multiplicity part of the eight-boundary gate
and excludes every configuration whose ninth point is outside the boundary
octagon. It does **not** yet remove the orientation assumptions of Theorem 1 in
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

## 3. The exact remaining obligation

The sharp inequality already proved in `HAND_PROOF.md` applies if, after
one of the eight square symmetries and the induced relabeling,

\[
O\in\triangle ADH\cap\triangle CGF
\]

and \(O\) is on the side of \(BE\) containing \((1,0)\).
Neither Lemma 1 nor Theorem 2 implies these orientation conditions. The outstanding
eight-boundary task is to bound every configuration with \(O\) inside the octagon
but outside the union of
these symmetry images, or prove that a configuration at the target threshold
must belong to that union. No such implication is claimed in this note.
