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

## 3. Each exterior cap adjacent to one double-contact side has capacity one

The two exterior caps adjacent to exactly one double-contact side
satisfy the following stronger restriction.

**Theorem 3.** Assume that every unsigned doubled triangle area is at
least \(s=7/64\). Then each of

\[
\operatorname{conv}\{(1,0),C,D\},\qquad
\operatorname{conv}\{(0,1),F,H\}
\]

contains at most one further actual point. This statement holds
throughout family N, with any number of additional hull vertices.

**Proof.** It suffices to treat the first cap: transposition of the square
and the relabeling

\[
(A,H,B,C,D,F)\longmapsto(B,C,A,H,F,D)
\]

preserve all the stated normalization conditions and exchange the two
caps. A degenerate cap contains no further actual point, because its
actual endpoints would give a zero triangle. Thus take \(0<c<1\)
and \(d>0\), and suppose that the first cap contains two actual points
\(P,Q\).

Put

\[
m=c-b,\qquad \alpha=1-c,\qquad
u=\frac{s}{md},\quad v=\frac{s}{bd},\quad
\tau=\frac{s}{\alpha d},\quad p=1-u.
\]

For a cap point \(X=(x,y)\), use coordinates

\[
U=\frac{1-x}{\alpha},\qquad V=\frac yd.
\]

The cap becomes \(U,V\ge0\), \(U+V\le1\), and
\(D\) becomes \((0,1)\). The actual triangles \(BCX\)
and \(CDX\) have unsigned doubled areas \(mdV\) and
\(\alpha d(1-U-V)\). Consequently both \(P,Q\) belong to
the smaller triangle

\[
\mathcal T=
\operatorname{conv}\{(0,u),(1-\tau-u,u),(0,1-\tau)\}.
                                                               \tag{3}
\]

If \(1-\tau-u\le0\), this set is empty or degenerate, which
already contradicts \(|[DPQ]|\ge s\). Otherwise
\(0<u<1\). The maximum of an absolute determinant with two
points in a triangle occurs at two vertices: fix one point, use
convexity in the other, and then repeat. The three vertex-pair values
for doubled areas based at \(D=(0,1)\) are

\[
(1-\tau-u)(1-u),\quad
(1-\tau-u)\tau,\quad 0.
\]

The first is largest because \(1-u>\tau\). Restoring the
area scale \(\alpha d\) therefore gives

\[
s\le |[DPQ]|
\le\alpha d(1-u)(1-u-\tau)
=\alpha d p^2-sp.                                           \tag{4}
\]

Only three anchor areas are needed from this point onward.
The inequalities \([ABC]\ge s\) and \([ABH]\ge s\)
give

\[
h\ge\frac{s}{m}+\frac{s}{b}=d(u+v),\qquad h\ge d.
                                                               \tag{5}
\]

Also

\[
s\le[HDF]=1-h+f(h-d)
\le1-h+c(h-d),
\qquad (1-c)h+cd\le1-s.                                  \tag{6}
\]

In particular \(d\le1-s\). Write

\[
k=\frac{1-s}{s}=\frac{57}{7}.
\]

Since \(c=(s/d)(1/u+1/v)\), the upper bound in (4), divided
by \(s\), equals

\[
\left(\frac d s-\frac1u-\frac1v\right)p^2-p.               \tag{7}
\]

If \(u+v\le1\), then \(v\le p\). Using
\(d/s\le k\), (7) is at most

\[
\left(k-\frac1u-\frac1p\right)p^2-p
=k(1-u)^2+u-\frac1u=:B(u).                                \tag{8}
\]

If \(u+v>1\), substitute (5) into (6) and use
\(cd=s(1/u+1/v)\). This gives

\[
\frac d s\le\frac{k}{u+v}+\frac{u+v-1}{uv},
\]

so (7) is at most

\[
g(v)p^2-p,
\qquad g(v)=\frac{k}{u+v}-\frac1{uv},\qquad v>p.           \tag{9}
\]

If \(ku\le1\), then \(g(v)<0\), already contradicting
(4). Suppose \(ku>1\), and put \(w=\sqrt{ku}>1\).
For every \(v>0\),

\[
\frac{(w-1)^2}{u^2}-g(v)
=\frac{((w-1)v-u)^2}{u^2v(u+v)}\ge0.                       \tag{10}
\]

If \(kup^2\le1\), then \(p(w-1)\le1-p=u\).
Equation (10) makes (9) at most \(1-p<1\), which contradicts
(4). If \(kup^2>1\), then
\(p>u/(w-1)\). The derivative

\[
g'(v)=-\frac{k}{(u+v)^2}+\frac1{uv^2}
\]

is negative for \(v\ge p\), since \((w-1)v>u\).
Thus \(g(v)\le g(p)\), and (9) is again bounded by
\(B(u)\) in (8).

It remains to show \(B(u)<1\) for \(0<u<1\). Equivalently,

\[
7u(B(u)-1)=57u^3-107u^2+50u-7<0.                          \tag{11}
\]

Set \(z=u-3/10\), so \(z\le7/10\). The cubic in (11)
becomes

\[
57z^3-\frac{557}{10}z^2+\frac{119}{100}z-\frac{91}{1000}
\le-\frac{79}{5}z^2+\frac{119}{100}z-\frac{91}{1000}<0.
\]

The first comparison uses \(57z-557/10\le-79/5\).
The last quadratic has negative leading coefficient and discriminant
\(-43351/10000<0\). This contradicts (4) in all cases and
proves the theorem. \(\square\)

Theorem 3 rules out a pair in either side cap, while Theorem 2 makes the
lower-left cap empty. The upper-right cap and interactions between
distinct caps remain to be considered.

## Verification

The optional exact diagnostic
[check_six_boundary_exterior.py](check_six_boundary_exterior.py)
checks the area formulas, the two cap reductions, the rational
simplifications, the one-variable maximization identity, and the strict
polynomial comparisons in Lemma 1 and Theorem 3.
