# The eight-boundary-point gate

This note removes the boundary-multiplicity part of the eight-boundary gate.
It does **not** yet remove the orientation assumptions of Theorem 1 in
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

## 2. The exact remaining obligation

The sharp inequality already proved in `HAND_PROOF.md` applies if, after
one of the eight square symmetries and the induced relabeling,

\[
O\in\triangle ADH\cap\triangle CGF
\]

and \(O\) is on the side of \(BE\) containing \((1,0)\).
Lemma 1 does not imply these orientation conditions. The outstanding
eight-boundary task is to bound every configuration outside the union of
these symmetry images, or prove that a configuration at the target threshold
must belong to that union. No such implication is claimed in this note.
