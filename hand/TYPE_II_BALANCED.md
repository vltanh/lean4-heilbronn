# The balanced adjacent-corner case: the left hull must be triangular

## Scope

Use the Type-II normalization of [TYPE_II.md](TYPE_II.md):

\[
D=(0,1),\quad C=(1,1),\quad E=(0,\lambda),\quad B=(b,0),
\qquad 0<b\le\tfrac12,\quad 0<\lambda<1.
\]

Suppose the left, central, and right containers determined by \(DB,BC\)
contain respectively two, two, and two of the six points other than
\(D,C,B\). Write the left pair as \(E,L\), and the right pair as
\(Q,R\). All points are distinct, and positive minimum area excludes
points on the dividing lines. Put \(s=7/64\), and suppose every
doubled triangle area is at least \(s\).

**Theorem.** The four-point set \(D,B,E,L\) has triangular convex
hull \(DBE\). Equivalently, \(L\) lies strictly inside \(DBE\).

This excludes the entire left-quadrilateral branch of the balanced count
\((2,2,2)\). The subsequent proof in
[TYPE_II_COMPLETION.md](TYPE_II_COMPLETION.md), Theorem 11, now closes the
entire triangular-left branch as well. Sections 1--3 of the present note
exclude two quadrilateral side hulls without using the central points;
Section 4 excludes the remaining left-quadrilateral case using those
two points. Sections 5--6 further force exactly one central point on
each side of CE, with L on the D side. These restrictions still leave
the interaction with the two right points unresolved.

## 1. The lower vertex in a four-point endpoint quadrilateral

We first record an affine inequality. Suppose

\[
B_0=(0,0),\quad C_0=(1,1),\quad Q_0=(x,y),\quad R_0=(z,w)
\]

have quadrilateral hull in the cyclic order \(B_0,Q_0,R_0,C_0\),
and \(Q_0,R_0\) lie in the triangle with vertices
\((0,0),(1,0),(1,1)\). Suppose all doubled triangle areas are at least
\(a>0\). The positive doubled areas of \(B_0Q_0R_0\) and
\(C_0Q_0R_0\) are

\[
u=xw-yz\ge a,\qquad
v=xw-yz+z-w-x+y\ge a.                                  \tag{1}
\]

Here \(x>y\ge0\), since the triangle \(B_0C_0Q_0\) has positive
area, and \(x<1\): otherwise the second expression in (1) is
\((1-y)(z-1)\le0\). Thus divisions by \(x\) are legitimate.
The first inequality in (1) gives \(w\ge(a+yz)/x\). The coefficient
of \(w\) in the second expression is \(-(1-x)<0\), so

\[
\begin{aligned}
v&\le \frac{x-y}{x}z-(x-y)-\frac{(1-x)a}{x}\\
 &\le\frac{(1-x)(x-y-a)}x,
\end{aligned}
\]

where the last step uses \(z\le1\) and \(x-y>0\). Combining with
\(v\ge a\) proves

\[
\boxed{(x-y)(1-x)\ge a.}                                \tag{2}
\]

The two nonnegative factors on the left sum to \(1-y\). Hence

\[
\boxed{y\le1-2\sqrt a.}                                \tag{3}
\]

The cyclic labeling selects the vertex adjacent to \(B_0\) on the
non-diagonal hull chain. No additional coordinate-order assumption is
needed in (1)--(3).

## 2. A quadrilateral left hull forces a low point

Write \(L=(p,v)\). Since \(D,E\) are the two left-side contacts
and \(L\) is strictly to the left of \(DB\), the hull of
\(D,B,E,L\) is triangular precisely when \(L\) is inside
\(DBE\). In the quadrilateral case it is below \(EB\), and
the cyclic hull order is \(D,E,L,B\). The two positive areas next
to that lower vertex give

\[
(1-\lambda)p\ge s,
\qquad \lambda(b-p)-bv\ge s.                            \tag{4}
\]

In particular

\[
b\ge\frac{s}{1-\lambda}+\frac{s}{\lambda}
  =\frac{s}{\lambda(1-\lambda)}\ge4s,
\qquad 1-b\le\frac9{16}.                               \tag{5}
\]

Eliminating \(p\) from (4), and using \(b\le1/2\), also gives

\[
\begin{aligned}
v&\le\lambda-\frac{s}{b(1-\lambda)}\\
 &\le 1-(1-\lambda)-\frac{2s}{1-\lambda}
 \le1-2\sqrt{2s}=1-\sqrt{\frac78}<\frac1{15}.            \tag{6}
\end{aligned}
\]

The last comparison is exact: \(7\cdot225-8\cdot196=7>0\)
proves \(\sqrt{7/8}>14/15\). The area constraint in (4) also
gives \(0<p<b\).

## 3. A quadrilateral right hull gives the contradictory triangle

Apply the affine map

\[
(x,y)\longmapsto\left(\frac{x-b}{1-b},y\right)
\]

to the right container. It sends \(B,C\) to \(B_0,C_0\) and
the container to the triangle in Section 1. Label its two other hull
vertices in the cyclic order \(B_0,Q_0,R_0,C_0\). Every doubled
area in this normalization is at least

\[
a=\frac{s}{1-b}\ge\frac7{36},                            \tag{7}
\]

by (5). Equation (3) therefore gives, for the original point \(Q\),

\[
0\le Q_y\le1-\frac{\sqrt7}{3}<\frac18.                  \tag{8}
\]

Indeed \(\sqrt7>21/8\), because \(7\cdot64-21^2=7>0\).
Both coordinates of the original right point satisfy
\(b\le Q_x\le1\), \(Q_y\ge0\).

The doubled area of \(LBQ\) is thus positive and equals

\[
\begin{aligned}
D(L,B,Q)&=(b-p)Q_y+v(Q_x-b)\\
 &<\frac12\cdot\frac18+\frac1{15}\cdot\frac9{16}
   =\frac1{10}<\frac7{64}=s.                            \tag{9}
\end{aligned}
\]

This contradicts the assumed minimum and excludes the case in which
both side hulls are quadrilateral.

## 4. A triangular right hull also contradicts the left quadrilateral

Continue to suppose that the left hull is quadrilateral. If the right
hull is triangular, relabel its two free points so that \(R=(r,u)\)
is its third hull vertex and \(Q\) is inside \(BCR\). The other
two hull vertices must be \(B,C\): they are extreme vertices of the
right container. Write \(w=1-b\), and let

\[
g=(r-b)-wu
\]

be the positive doubled area of \(BCR\). Its subdivision at \(Q\)
gives \(g\ge3s\). Since \(r\le1\),

\[
u\le1-\frac{3s}{w}.                                      \tag{10}
\]

The two central points and \(Q\) all lie strictly inside the
quadrilateral \(DBRC\), which is the union of \(DBC\) and
\(BCR\). Its other diagonal \(DR\) partitions it into \(DBR\)
and \(DCR\). The doubled area of the first triangle satisfies

\[
\begin{aligned}
2\operatorname{area}(DBR)
 &=r-b+bu\le1-b+bu\\
 &\le1-\frac{3sb}{1-b}
 \le1-\frac{12s^2}{1-4s}
 =\frac{143}{192}<\frac{13}{16},                         \tag{11}
\end{aligned}
\]

where (5) gives \(b\ge4s\). On the other hand, an actual triangle
containing two configuration points has doubled area at least

\[
(4+2\sqrt3)s>\frac{52}{7}s=\frac{13}{16},                \tag{12}
\]

by the two-interior-point theorem and \(\sqrt3>12/7\). Thus
\(DBR\) contains at most one of these three points. No point lies on
\(DR\), since that would create a zero-area triangle. At least two
therefore lie inside \(DCR\). Its doubled area is \(1-u\), so
(12) implies

\[
u<\frac3{16}.                                           \tag{13}
\]

We also sharpen the horizontal bound on the left point. Equations
(4)--(5), together with \(b\le1/2\), give

\[
\lambda(1-\lambda)\ge2s=\frac7{32}.
\]

For \(\lambda\le5/16\) or \(\lambda\ge11/16\), the product
would be at most \(55/256<7/32\). Hence

\[
\frac5{16}<\lambda<\frac{11}{16},\qquad
p\ge\frac{s}{1-\lambda}>\frac7{44},\qquad
b-p<\frac{15}{44}.                                      \tag{14}
\]

Finally \(r\ge b\), because \(R\) is in the right container.
Using (6), (13), (14), and \(r-b\le1-b\le9/16\), the doubled
area of \(LBR\) is positive and satisfies

\[
\begin{aligned}
D(L,B,R)&=(b-p)u+v(r-b)\\
 &<\frac{15}{44}\cdot\frac3{16}
    +\frac1{15}\cdot\frac9{16}
  =\frac{357}{3520}<\frac7{64}=s.                       \tag{15}
\end{aligned}
\]

The last gap is exactly \(7/880\). This is a contradiction.
The right four-point hull is either triangular or quadrilateral, so
Sections 3--4 exhaust the possibilities and prove the theorem.

## 5. A further cut restriction in the triangular-left branch

For completeness, suppose instead that the left hull is triangular, so
\(L\) is inside \(DBE\). Subdivision into its three actual
triangles gives

\[
b(1-\lambda)\ge3s.                                     \tag{16}
\]

The two central points cannot both be in \(EBC\). If they were,
the two-interior-point triangular-hull theorem would imply

\[
\alpha:=1-(1-b)(1-\lambda)\ge(4+2\sqrt3)s.
\]

But (16) would then give

\[
1\ge(1-b)\frac{3s}{b}+(4+2\sqrt3)s
 \ge(7+2\sqrt3)s>1,
\]

where \(b\le1/2\) and \(\sqrt3>3/2\) make the last
expression larger than \(10s=70/64\).

Thus at least one central point is inside \(DCE\). If both are
there, \(L\) must be below \(CE\), because the corner-triangle
theorem in [ONE_CORNER.md](ONE_CORNER.md) forbids three other points
inside \(DCE\). In that event \(L\) is inside \(EBC\).
These cut restrictions do not themselves close the triangular-left
branch.

## 6. The two central points must lie on opposite sides of CE

The last remaining two-point CE cut can also be excluded at the target
threshold. For this section use the stronger rational doubled threshold

\[
s=\frac{79}{720}<s_0=2A_0.
\]

The comparison is equivalent to \(\sqrt{65}>653/81\), already
verified by \(65\cdot81^2-653^2=56>0\). Suppose the two central
points \(P,Q\) both lie in \(DCE\). By the theorem above,
\(L\) is inside \(DBE\), so, with \(q=1-\lambda\),

\[
bq\ge3s.                                                \tag{17}
\]

The corner-triangle theorem in [ONE_CORNER.md](ONE_CORNER.md) forbids
three points inside \(DCE\). Therefore \(L\) is below CE. Let
\(T=DB\cap CE\). The left point is strictly inside the triangle
\(EBT\), and direct solution of the two line equations gives

\[
T=\left(\frac{bq}{1+bq},\frac{1-q+bq}{1+bq}\right),
\qquad
2\operatorname{area}(EBT)
=\frac{bq[1-(1-b)q]}{1+bq}.                              \tag{18}
\]

In particular the actual doubled area of \(EBL\) is no greater than
the expression in (18).

Section 12 of [TYPE_II.md](TYPE_II.md) classifies the line \(PQ\).
The anchors B,E must be on the same side. If D,C were on opposite
sides, that section's fixed-threshold bound would give \(b\le2/7\).
This is incompatible with (17), since \(b\ge3s>2/7\). Thus D,C
are on the same side of PQ. The same-side calculation in that section
is valid at a general positive doubled threshold, before its numerical
specialization. At the present s it gives

\[
[q-s(q+1)]^2\ge4sq(1+bq),
\qquad q-s(q+1)>0.
\]

Equivalently

\[
b\le B(q):=\frac{[q-s(q+1)]^2}{4sq^2}-\frac1q.           \tag{19}
\]

Here is an exact one-variable bound for (18). Write

\[
v(q)=qB(q)=\frac{(1-s)^2}{4s}q-\frac{3-s}{2}+\frac{s}{4q},
\qquad
F(q)=v(q)-\frac{qv(q)}{1+v(q)}.
\]

For fixed \(0<q\le1\), the expression in (18) increases with b:
on putting \(z=bq>0\), its derivative with respect to z is
\(1-q/(1+z)^2>0\). Thus (19) bounds it above by \(F(q)\).

By (17), \(q\ge6s>1/2\) and \(v(q)\ge bq\ge3s>3/10\).
On the full interval from this feasible q to 1,

\[
v'(q)=\frac{(1-s)^2}{4s}-\frac{s}{4q^2}
>\frac{(1-s)^2}{4s}-s>\frac53,                           \tag{20}
\]

where the last inequality follows from \(s<1/9\): the expression
is \(1/(4s)-1/2-3s/4\), decreasing in s, and equals \(5/3\)
at \(s=1/9\). Consequently v increases on this interval. Its upper
endpoint is

\[
v(1)=B(1)=\frac{22081}{56880}
             =\frac7{18}-\frac{13}{18960}<1.
\]

The same interval therefore has \(3/10<v(q)<1\). Differentiating
F, and using \(q\le1\), yields

\[
F'(q)=v'(q)\left[1-\frac{q}{(1+v(q))^2}\right]
              -\frac{v(q)}{1+v(q)}
>\frac53\cdot\frac{69}{169}-\frac12
=\frac{61}{338}>0.                                      \tag{21}
\]

Thus

\[
2\operatorname{area}(EBL)
\le F(q)\le F(1)
=\frac{B(1)^2}{1+B(1)}
<\frac{(7/18)^2}{1+7/18}
=\frac{49}{450}<s.                                      \tag{22}
\]

The last gap is exactly \(1/1200\). This contradicts the minimum
area and excludes the entire two-central-point cut above CE.
Together with Section 5, exactly one central point lies on each side
of CE.

There is one further forced placement. Let P be the central point
above CE and Q the one below it. The left point L must be above CE.
Otherwise both L and Q would lie inside EBC. At the earlier threshold
\(\sigma=7/64\), subdivision of DBE gives \(bq\ge3\sigma\),
so

\[
2\operatorname{area}(EBC)=1-(1-b)q
\le1-3\sigma\frac{1-b}{b}\le1-3\sigma.
\]

Containing L,Q would require this area to be at least
\((4+2\sqrt3)\sigma>1-3\sigma\), a contradiction.
Thus \(DCE\) contains L and P, and its area gives

\[
q>(52/7)\sigma=13/16,\qquad\lambda<3/16.                 \tag{23}
\]

The remaining balanced configurations therefore have L strictly
inside DBE and above CE, one central point P above CE, one central
point Q below CE, and two points in the right container. No claim of
an exclusion of these surviving placements is made here.

## Verification

The optional [check_type_ii_balanced.py](check_type_ii_balanced.py)
checks the determinant eliminations and rational comparisons. The hull
labeling and containments are justified in the text above.
