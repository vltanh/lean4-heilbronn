# Exterior restrictions for larger hulls in family N

## Scope

Use the six prescribed boundary contacts

\[
A=(0,a),\quad H=(0,h),\quad B=(b,0),\quad C=(c,0),
\quad D=(1,d),\quad F=(f,1),
\]
\[
0<a<h\le1,\quad0<b<c\le1,\qquad a\le d\le h,
\quad b\le f\le c.
\]

The three other actual configuration points may be anywhere in the
square. In particular, this note makes no exact-anchor-hull hypothesis.
The full exact-six-anchor hull was excluded in
[SIX_BOUNDARY_HULL.md](SIX_BOUNDARY_HULL.md).

## 1. The exterior cap at the double-contact corner is empty

The following elementary five-point lemma does not use \(D,F\),
the projection-overlap conditions, or the other free points.

**Lemma 1.** Let \(X\) belong to the closed triangle with vertices
\((0,0),A,B\). Then one of the three actual triangles
\(AHX,BCX,ABX\) has ordinary area strictly less than

\[
\frac{hc}{20}\le\frac1{20}.
\]

**Proof.** Apply the affine map \((x,y)\mapsto(x/c,y/h)\),
which divides doubled areas by \(hc\). It suffices to prove the
assertion when \(h=c=1\). Continue to write \(a,b,x,y\) for
the normalized coordinates, so \(0<a,b<1\).

If any of the three indicated triangles is degenerate, the conclusion
is immediate. Otherwise let \(s>0\) be the minimum of their three
doubled areas. Since \(X=(x,y)\) is below \(AB\),

\[
x(1-a)\ge s,\qquad y(1-b)\ge s,
\qquad ab-ax-by\ge s.
\]

Substitute the first two lower bounds in the third. They give

\[
ab\ge s\left(1+\frac{a}{1-a}+\frac{b}{1-b}\right),
\qquad
s\le\frac{ab(1-a)(1-b)}{1-ab}.                         \tag{1}
\]

Put \(t=\sqrt{ab}\in(0,1)\). The inequality
\(a+b\ge2\sqrt{ab}\) implies
\((1-a)(1-b)\le(1-t)^2\), hence

\[
s\le\frac{t^2(1-t)}{1+t}<\frac1{10}.                  \tag{2}
\]

For a direct exact check of the strict comparison, it is equivalent to

\[
10t^3-10t^2+t+1>0.
\]

Set \(z=t-3/5\ge-3/5\). The left side is

\[
10z^3+8z^2-\frac z5+\frac4{25}
\ge2z^2-\frac z5+\frac4{25}>0.
\]

The first inequality uses \(8+10z\ge2\); the last quadratic
has positive leading coefficient and discriminant \(-31/25<0\).
Thus one of the normalized doubled areas is below \(1/10\).
Undoing the affine normalization proves the lemma. \(\square\)

**Theorem 2.** In a competitive configuration in the entire family N,
the closed exterior cap \(\operatorname{conv}\{(0,0),A,B\}\)
contains no further actual point.

Indeed \(A_0>7/128>1/20\), so Lemma 1 contradicts a minimum
ordinary triangle area at least \(A_0\). The statement remains valid
if some of the other points are additional boundary contacts or hull
vertices.

This same lemma also gives a shorter independent exclusion of each lower
exterior cap in the seven-boundary configuration: at either such corner
there are two actual contacts on each of its two incident sides. Reflect
and apply Lemma 1 to those four contacts and the alleged cap point.
The result requires no condition on the two unused sides.

## 2. Consequences for the remaining larger-hull problem

The virtual lower triangle
\(T_0=\operatorname{conv}\{(0,0),H,C\}\) contains at most one
free point, by Theorem 4 of
[QUADRILATERAL_HULL.md](QUADRILATERAL_HULL.md).
If such a point exists, Theorem 2 puts it inside the lower anchor
quadrilateral \(HABC\). After the permitted transpose that makes
\(ABC\) empty in Lemma 5 of that note, it lies in \(AHC\).
These statements are valid without an exact-hull hypothesis.

The square outside the anchor hexagon is the union of its four exterior
corner triangles. Theorem 2 removes the double-contact corner, leaving
only

\[
\operatorname{conv}\{(1,0),C,D\},\qquad
\operatorname{conv}\{(1,1),D,F\},\qquad
\operatorname{conv}\{(0,1),F,H\}.
\]

The exact-six-anchor hull exclusion ensures that at least one free point
lies in these three caps. This is a restriction on the remaining
larger-hull cases, not an exclusion of those three caps.

## Verification

The optional exact diagnostic
[check_six_boundary_exterior.py](check_six_boundary_exterior.py)
checks the three area formulas, the rational simplification, and the
strict polynomial comparison in Lemma 1.
