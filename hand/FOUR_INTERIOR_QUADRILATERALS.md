# Four interior points must alternate around the diagonals

## Scope and result

Write \(A_0=(9\sqrt{65}-55)/320\). An *actual* point is one of the
nine configuration points. This note proves a global placement theorem;
it does not assume a square-boundary normal form.

**Theorem 1.** Suppose nine points in the unit square have minimum
triangle area at least \(A_0\). If a quadrilateral spanned by four actual
points contains four further actual points, then each of the four open
triangles cut out by its diagonals contains exactly one of those points.

In particular, the complete alternative with two points in each of two
opposite diagonal sectors is impossible. A quadrilateral cannot contain
five further actual points at this threshold.

The geometric input is the global actual-triangle capacity theorem in
[THREE_INTERIOR_TRIANGLES.md](THREE_INTERIOR_TRIANGLES.md): no actual
triangle contains three further configuration points. We also use the
two-interior-point triangle bound, with constant

\[
K=4+2\sqrt3,
\]

proved in Section 7 of [CORNER_FAMILIES.md](CORNER_FAMILIES.md).
The weighted inequalities needed here are derived below for **every**
convex quadrilateral. In particular they do not assume the auxiliary
support-triangle condition \(a+b>1\) used in some earlier notes.

## 1. General quadrilateral coordinates

Let \(A,B,C,D\) be cyclic vertices of a convex quadrilateral. Normalize
its doubled area to one, and put

\[
a=2\operatorname{area}(ABD),\qquad
b=2\operatorname{area}(ABC).
\]

Then \(0<a,b<1\), and the complementary triangles have doubled areas
\(1-a\) and \(1-b\). After a further determinant-one change of
coordinates we may write

\[
A=(0,0),\quad B=(1,0),\quad D=(0,a),\quad
C=((1-b)/a,b).                                           \tag{1}
\]

Indeed an affine map can first send \(A,B,D\) to the stated three
points, with determinant one because their doubled area is \(a\).
The areas of \(ABC\) and \(ACD\) then determine both coordinates of
\(C\). This also verifies the doubled quadrilateral area
\(b+(1-b)=1\).

Suppose every actual doubled triangle area is at least \(s>0\), and
\(P=(p,u)\) is inside both \(ABC\) and \(ABD\). The triangles
\(ABP,ACP,BDP\) give

\[
u\ge s,\qquad
\frac{s}{b}+\frac{(1-b)u}{ab}\le p
\le1-\frac{s+u}{a}.                                     \tag{2}
\]

In particular \(u<a\). The inequalities in (2) are valid even when
\(a+b\le1\).

For two points \(P=(p,u),Q=(q,v)\) in that common sector, set

\[
d_X=\det(Q-P,X-P)\quad(X=A,B,C,D).
\]

These are signed doubled areas. Direct expansion gives

\[
\begin{aligned}
d_A&=pv-uq,\
d_B&=d_A+u-v,\
d_D&=d_A+a(q-p),\
u d_D+(a-u)d_B&=[a(1-p)-u](u-v).                         \tag{3}
\end{aligned}
\]

## 2. Two general inequalities for a pair in a common sector

### The line puts the two base endpoints on the same side

Suppose \(d_A,d_B\) have the same sign. Interchange \(P,Q\), if
needed, so that \(u\ge v\). Both coordinates then satisfy (2).

If \(d_A,d_B>0\), their smaller value is \(d_A\). Applying the
upper bound for \(p\) and the lower bound for \(q\) gives

\[
\begin{aligned}
s\le d_A=pv-uq
&\le v(1-s/a)-uv/(ab)-su/b\
&\le v\left(1-\frac{s(a+b)}{ab}\right)-\frac{v^2}{ab}.
\end{aligned}
\]

The last inequality uses \(u\ge v\) and the negative coefficient of
\(u\). If \(d_A,d_B<0\), the smaller unsigned value is \(-d_B\).
Using the other two endpoint bounds gives instead

\[
\begin{aligned}
s\le-d_B=u(q-1)+v(1-p)
&\le v(1-s/b)-uv/(ab)-su/a\
&\le v\left(1-\frac{s(a+b)}{ab}\right)-\frac{v^2}{ab}.
\end{aligned}
\]

Thus both sign choices imply the same quadratic inequality. Its right
side must be positive, which proves \(ab-s(a+b)>0\); maximizing over
\(v\) now proves

\[
\boxed{ab-s(a+b)\ge2\sqrt{sab}.}                         \tag{4}
\]

### The line isolates one base endpoint

Orient \(PQ\) so that \(d_A<0<d_B\). Suppose also
\(d_C,d_D>0\), so \(A\) is the only negative hull vertex.
Equation (3) gives \(u>v\ge s\). Because \(u,a-u>0\), its left
side is at least \(as\). Apply the lower bound for \(p\) in (2)
and then \(u-v\le u-s\):

\[
\begin{aligned}
as
&\le[a(1-p)-u](u-v)\
&\le\left(a-\frac{as}{b}-\frac{u}{b}\right)(u-s).
\end{aligned}
\]

The first bracket is a positive actual triangle area; its displayed
upper bound is therefore positive as well. Put \(z=u-s>0\) and
divide by \(a>0\). The result is

\[
sab\le z[ab-s(1+a)-z].
\]

The right side is positive, so its linear coefficient is positive.
Maximizing this quadratic proves

\[
\boxed{[ab-s(1+a)]^2\ge4sab,
\qquad ab-s(1+a)>0.}                                    \tag{5}
\]

If instead \(d_C,d_D<0\), interchange \(A,B\), interchange
\(C,D\), and reverse the line orientation. This is (5) with
\(a,b\) interchanged. These facts require no sign assumption on
\(a+b-1\).

## 3. Reduce four interior points to two possible sector patterns

Return to the nine-point configuration and let \(O=AC\cap BD\).
Every actual diagonal contains no further point, by positive minimum
area. The global triangle-capacity theorem forces each diagonal to split
the four interior points two and two.

If the four sector counts, in cyclic order, are \(n_1,n_2,n_3,n_4\),
these two splits give

\[
(n_1,n_2,n_3,n_4)=(k,2-k,k,2-k),\qquad k=0,1,2.
\]

The middle choice is the conclusion. In either other choice relabel the
quadrilateral so that \(P,Q\) are in \(ABO\), and \(R,T\) are in
\(CDO\). We will exclude this entire alternative.

The original quadrilateral has area \(S\le1\). On normalizing its
doubled area to one, the new doubled minimum area is at least
\(A_0/S\ge A_0>7/128\). For the rest of the proof use the fixed
smaller threshold

\[
s=\frac7{128}.                                          \tag{6}
\]

Both \(ABC,ABD\) contain \(P,Q\); both complementary triangles
contain \(R,T\). The two-interior-point bound therefore gives

\[
a,b,1-a,1-b\ge Ks.
\]

Since \(\sqrt3>5/3\), one has \(K>22/3\). Consequently

\[
0<a,b<1-\frac{22}{3}s=\frac{115}{192}<B:=\frac35.                 \tag{7}
\]

## 4. Neither joining line can separate its two nearby hull vertices

Suppose \(PQ\) separates \(A,B\), and orient it so that
\(d_A<0<d_B\). For a line crossing a convex quadrilateral, the
possible signs of \((d_D,d_C)\) are exactly

\[
(+,+),\quad(-,+),\quad(-,-).                             \tag{8}
\]

The omitted alternating signs would require a line to cross all four
hull edges. No zero sign is possible because it would be a collinear
actual triple.

In the middle case the line crosses the relative interiors of both
\(AB\) and \(CD\). Along its intersection segment with the
quadrilateral, \(P,Q\) both lie in the sector \(ABO\). The one
farther from the intersection with \(AB\) is strictly inside the
triangle formed by \(C,D\) and the nearer one. Moreover \(O\) is
inside that latter triangle: in diagonal coordinates, a point in
\(ABO\) is in the positive cone spanned by \(OA,OB\), whereas
\(OC,OD\) are in the opposite directions. A positive affine
combination of that point with \(C,D\) is \(O\).

Thus the triangle also contains the entire sector \(CDO\), and hence
\(R,T\). It contains three further actual points, contradicting
global triangle capacity. This excludes the middle case of (8).

For either other case, (5), possibly with \(a,b\) interchanged, applies.
We check that it is impossible throughout (7). For fixed \(a\), write
\(x=ab\). The upward quadratic

\[
[x-s(1+a)]^2-4sx
\]

is negative at the positive zero of its bracket. With positive bracket,
nonnegativity therefore places \(x\) at or beyond its larger root.
Increasing \(b\) to \(B\) preserves the two asserted inequalities.
After that replacement they become

\[
[a(B-s)-s]^2-4saB\ge0,\qquad a(B-s)-s>0.
\]

The same upward-quadratic argument allows increasing \(a\) to \(B\),
because \(B>s\). But at the two rational endpoints,

\[
[B^2-s(1+B)]^2-4sB^2
=-\frac{719}{160000}<0.                          \tag{9}
\]

This contradiction excludes the other two cases as well. Thus \(PQ\)
puts \(A,B\) on the same side. The identical argument after exchanging
the two occupied sectors shows that \(RT\) puts \(C,D\) on the
same side.

## 5. The two same-side inequalities contradict one another

Apply (4) first to \(P,Q\), and then to \(R,T\) in the opposite
sector. For the latter, the two containing triangle areas are
\(1-a,1-b\), in an immaterial order. Dividing the first inequality
by \(\sqrt{ab}>0\), and using \(a+b\ge2\sqrt{ab}\), gives

\[
\sqrt{ab}\ge2\sqrt{s}+2s.
\]

The other sector gives the same lower bound for
\(\sqrt{(1-a)(1-b)}\). Cauchy--Schwarz gives the contrary upper bound

\[
\begin{aligned}
1
&\ge\sqrt{ab}+\sqrt{(1-a)(1-b)}\\
&\ge4\sqrt{s}+4s>1.
\end{aligned}                                            \tag{10}
\]

For the last strict comparison at \(s=7/128\),
\(\sqrt{s}>7/32\), since \(7/128=56/1024>49/1024\).
Thus \(4\sqrt{s}+4s>7/8+7/32=35/32>1\).

This proves the opposite-sector exclusion and hence Theorem 1. Finally,
five interior points would put at least three on one side of either
actual diagonal; the corresponding actual triangle would violate the
same capacity theorem. This proves the last assertion too.

## 6. Consequences for the remaining hand-proof families

Together with the convex-position exclusion in
[GLOBAL_COMPLETION.md](GLOBAL_COMPLETION.md), this also bounds the
number of hull vertices of every competitive configuration:

\[
\boxed{5\le\#\operatorname{vert}(\operatorname{conv}\mathcal P)\le8.}
\]

A triangular hull would contain six further actual points, contradicting
triangle capacity two. A quadrilateral hull would contain five, contrary
to Theorem 1. Positive minimum area rules out additional points on hull
edges, and the cited convex-position theorem excludes nine hull vertices.
These are hull counts; the vertices need not lie on the square boundary.

In the balanced Type-II case with a triangular right hull, Section 5 of
[TYPE_II_COMPLETION.md](TYPE_II_COMPLETION.md) proves that the eight
points other than the bottom point have hull \(D,E,R,C\), with four
interior points. Its previously listed opposite-sector alternative is
now closed: exactly one point lies in each sector of its diagonals.

The theorem also applies to a C1 pentagonal configuration whenever one
upper triangle contains both upper free points. The corresponding four
hull vertices enclose four free points. Its two-diagonal placement must
likewise alternate. These consequences still leave cross-triangle
inequalities involving the ninth point; the unrestricted proof is not
claimed complete.

## Verification

[check_four_interior_quadrilaterals.py](check_four_interior_quadrilaterals.py)
checks the general area coordinates, identity (3), both same-side
expansions, the quadratic transformation in (5), and the negative rational
value (9). The line-order and containment arguments are supplied in the
proof, not inferred from numerical examples.
