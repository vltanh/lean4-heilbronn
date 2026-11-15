# A sharp two-contact projection chamber in family N

Use the six actual boundary anchors

\[
A=(0,a),\ H=(0,h),\ B=(b,0),\ C=(c,0),\ D=(1,d),\ F=(f,1),
\]
\[
0<a<h<1,\quad0<b<c<1,\qquad a\le d\le h,\quad b\le f\le c.
\]

Suppose the three other actual points have the following placements:

\[
X=(x,y)\in\operatorname{conv}\{C,D,(1,0)\},\qquad
Y=(z,w)\in\operatorname{conv}\{F,H,(0,1)\},
\]
\[
Q=(r,t)\in\operatorname{conv}\{(0,0),H,C\}.
                                                               \tag{1}
\]

The two exterior points therefore occupy the lower-right and upper-left
caps, while the remaining point is below \(HC\). Impose the two
height-order conditions

\[
\boxed{(t-a)(y-a)\le0,\qquad(r-b)(z-b)\le0.}              \tag{2}
\]

For example, (2) includes the open chamber \(y<a<t\) and
\(z<b<r\); it also includes the reversed order in either coordinate.
These conditions are part of the theorem's scope.

**Theorem 1.** Throughout the complete family (1)--(2), the minimum
ordinary triangle area is at most

\[
                         A_0=\frac{9\sqrt{65}-55}{320}.
\]

If equality holds, \(x=w=1\), and the configuration is the sharp
eight-boundary construction, up to square symmetry and relabeling.

The proof projects \(X\) horizontally and \(Y\) vertically onto
the boundary. It preserves all actual triangle thresholds, including
every triangle involving two or three of \(Q,X,Y\). Thus it handles
both contacts moving inward simultaneously. It does not classify the
other height-order chambers.

Write \([UVW]=\det(V-U,W-U)\). Set

\[
s=\frac7{64}<2A_0,\qquad K=4+2\sqrt3.
\]

We may assume the original minimum ordinary area is at least \(A_0\);
otherwise the theorem is immediate. Every actual unsigned doubled area
is then at least \(s\), and no actual triple is collinear. The cap
placements give

\[
c<x\le1,\quad0<y<d\le h<w\le1,\qquad0<z<f\le c,
\quad0<r<c,\quad0<t<h.                                  \tag{3}
\]

## 1. A new lower triangle is empty

**Lemma 2.** Whenever \(X\) is in the lower-right exterior cap,
the actual triangle \(BCX\) has doubled area strictly below \(3s\).
It therefore contains no further actual point. The transposed statement
holds for \(AHY\).

**Proof.** Put \(m=c-b\), \(\alpha=1-c\), so
\(m+\alpha=1-b\). If \([BCX]=my\ge3s\), then
\(y\ge3s/m\). The actual \(CDX\) inequality gives

\[
\alpha(d-y)\ge s+d(1-x)\ge s,
\qquad
d\ge\frac{3s}{m}+\frac{s}{\alpha}
\ge\frac{Ks}{1-b}.                                      \tag{4}
\]

The last step is Cauchy--Schwarz. On the other hand,
\(b(h-a)\ge s\) gives \(b\ge s\), while

\[
s\le[HDF]=1-h+f(h-d)\le1-d
\]

gives \(d\le1-s\). But

\[
Ks>\frac{13}{16}>
(1-s)^2=\frac{3249}{4096},
\]

so (4) implies \(d\ge Ks/(1-s)>1-s\), a contradiction.
Thus \([BCX]<3s\). An additional actual point in that triangle
would divide it into three actual triangles of doubled area at least
\(s\), which is impossible. \(\square\)

Since \(Q\) is below \(HC\), it is on the positive sides of
\(BC\) and \(CX\):

\[
[BCQ]=(c-b)t>0,
\qquad [CXQ]=(x-c)t+(c-r)y>0.
\]

Lemma 2 therefore forces the third edge test to fail:

\[
                             [BQX]<0.                   \tag{5}
\]

The same argument after transposition gives the companion sign for
the upper-left projection. This is the only additional sign needed
beyond the placements and (2).

## 2. Projecting X preserves all its anchor and lower-point costs

Let \(\mu\) be the original minimum unsigned doubled area; thus
\(\mu\ge2A_0>s\). Increase \(x\) to one, keeping all other
coordinates fixed.

By Lemma 6 of
[SIX_BOUNDARY_EXTERIOR.md](SIX_BOUNDARY_EXTERIOR.md), every triangle
formed by \(X\) and two of the six anchors remains at least
\(\mu\) in doubled area. That lemma is valid at any positive
threshold and applies here to the original value \(\mu\).

We check the six triangles formed by \(X,Q\) and an anchor.

* For \(B\), (5) says the positive magnitude is \(-[BQX]\),
  whose derivative with respect to \(x\) is \(t>0\).
* For \(C\), the positive magnitude is \([CXQ]\), whose
  derivative is also \(t>0\).
* For \(H\), \([HXQ]<0\). Indeed this affine function of
  \(Q\) is negative at \((0,0)\) and \(C\), and zero at
  \(H\). Its positive opposite has derivative \(h-t>0\).
* For \(F\), \([FXQ]<0\). At the three vertices
  \((0,0),H,C\) of the containing lower triangle its values are
  respectively
  \[
  fy-x,\qquad f(y-h)-(1-h)x,\qquad c-x+(f-c)y,
  \]
  all negative by (3). Its positive opposite has derivative
  \(1-t>0\).
* For \(D\), \([DXQ]<0\). Its values at those three vertices
  are
  \[
  y-dx,\qquad y-d-(h-d)(1-x),\qquad [CDX],
  \]
  all negative. For the first, use
  \(dx-y=c(d-y)-[CDX]>0\). At the projection endpoint,
  \[
  -[DX'Q]=(1-r)(d-y)
  \ge(1-c)(d-y)\ge\mu,
  \qquad X'=(1,y).                                      \tag{6}
  \]
  The original \(CDX\) cost gives the last inequality. The
  positive magnitude is affine in \(x\); both endpoints are at
  least \(\mu\), so the entire segment is as well.
* For \(A\),
  \[
  [AQX]=r(y-a)-x(t-a).
  \]
  The first condition in (2) makes its two terms have the same weak
  sign. If \(y\ge a\ge t\), this area is positive and
  nondecreasing in \(x\); if \(y\le a\le t\), it is negative
  and nonincreasing. Its absolute value is therefore nondecreasing
  in both allowed orders. A zero value would contradict the original
  positive minimum area.

Thus all six costs remain at least \(\mu\).

Transposition of the square, with relabeling
\((A,H,B,C,D,F,X,Y,Q)\mapsto(B,C,A,H,F,D,Y,X,Q)\),
gives the same conclusion for the projection
\(Y=(z,w)\mapsto Y'=(z,1)\). Its only height-order hypothesis
is the second condition in (2). Triangles with both \(X\) and
\(Y\) are checked next, so this transposed use needs no assumption
about the other cap point.

## 3. All triangles using both cap points remain above the threshold

Project first \(x\) to one and then \(w\) to one. For each of
the anchors \(A,H,B,C\), the area \([VXY]\) is positive,
and both coordinate changes are nondecreasing. For example,

\[
[AXY]=(x-z)(w-a)+z(w-y)>0,
\]
\[
[BXY]=(x-b)(w-y)+y(x-z)>0.
\]

Replace \(a\) by \(h\), or \(b\) by \(c\), for the other
two positive formulas. Their derivatives are positive by (3).

For \(D\), the positive magnitude is

\[
-[DXY]=(1-x)(w-d)+(d-y)(1-z).
\]

Its minimum during the first projection is its value at \(x=1\),
and the second projection then leaves it constant. That endpoint obeys

\[
(d-y)(1-z)\ge(d-y)(1-c)\ge\mu,                          \tag{7}
\]

because \(z<f\le c\) and the original \(CDX\) cost applies.

For \(F\), the positive magnitude is

\[
-[FXY]=(x-f)(1-w)+(1-y)(f-z).
\]

The first projection increases it; the second decreases it to
\((1-y)(f-z)\). The original upper-left cap cost is

\[
[HFY]=(1-h)(f-z)-f(1-w)\ge\mu.
\]

Since \(y<h\), the endpoint therefore satisfies

\[
(1-y)(f-z)\ge(1-h)(f-z)\ge\mu.                          \tag{8}
\]

Finally, \([QXY]>0\). It is affine in \(Q\), and its values
at \((0,0),H,C\) are all positive by the formulas just used.
Its two derivatives along the projections are

\[
\frac{\partial[QXY]}{\partial x}=w-t>0,
\qquad
\frac{\partial[QXY]}{\partial w}=x-r>0.
\]

This last actual triangle also remains at least \(\mu\).

## 4. Apply the complete eight-boundary theorem

Triangles using neither cap point are unchanged. Sections 2--3 cover
every other actual triple, so the complete two-segment projection path
stays in the square and has minimum doubled area at least \(\mu\).
At its endpoint there are two points on each open side and the interior
point \(Q\). The complete eight-boundary theorem in
[EIGHT_BOUNDARY.md](EIGHT_BOUNDARY.md), Theorem 13, gives
\(\mu/2\le A_0\). This proves the claimed sharp upper bound.

If equality holds, that theorem identifies the endpoint as a square
symmetry of the sharp construction. Part II of
[HAND_PROOF.md](HAND_PROOF.md) proves its unrestricted strict local
optimality: all sufficiently close distinct configurations have a
smaller minimum triangle area. If either projection were nonconstant,
the last nonconstant segment of the path just constructed would give
distinct configurations arbitrarily close to this endpoint with minimum
area at least \(A_0\), contradicting strict local optimality. Thus
both projections were constant, \(x=w=1\), and the equality
classification follows. \(\square\)

## Verification

The optional diagnostic
[check_six_boundary_two_side_projection.py](check_six_boundary_two_side_projection.py)
checks the empty-triangle comparison, all signed lower-point formulas
and derivatives, and every cap-pair endpoint identity. The signs,
containments, complete triple coverage, and reduction to the existing
sharp theorem are proved above.
