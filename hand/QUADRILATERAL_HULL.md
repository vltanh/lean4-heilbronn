# Quadrilateral hulls and restrictions on the low-contact families

## Scope

This note proves two affine-invariant bounds for small point sets with a
quadrilateral convex hull. They give further continuous exclusions in the
normalized families N and C1 of [GLOBAL_STRUCTURE.md](GLOBAL_STRUCTURE.md).
They do not close either complete family or prove that a global maximizer
has eight boundary points.

Write

\[
A_0=\frac{9\sqrt{65}-55}{320},\qquad
K=4+2\sqrt3,\qquad \Gamma=\frac{11+3\sqrt5}{2}.
\]

We use the two self-contained triangular-hull results in
[CORNER_FAMILIES.md](CORNER_FAMILIES.md): a triangle containing two further
configuration points has area at least \(Kt\), and a triangle containing
three further configuration points has area at least \(\Gamma t\), if
every triangle of the selected set has area at least \(t>0\).

## 1. Six points with a quadrilateral hull

**Theorem 1.** Suppose six points have a quadrilateral convex hull of area
\(S\). Their minimum triangle area \(t\) satisfies

\[
\boxed{t\le \frac S8.}                                      \tag{1}
\]

Equality is possible only when the hull is a parallelogram. Up to an
affine map and relabeling, the equality configuration consists of the
four square corners and the two points \((1/4,1/2),(3/4,1/2)\).

**Proof.** The assertion is immediate if \(t=0\). Otherwise the points
are distinct, no three are collinear, and the two nonvertices \(P,Q\)
lie strictly inside the hull. Let its vertices be \(A,B,C,D\) in cyclic
order.

If either hull diagonal places \(P,Q\) on the same side, the triangle
on that side contains both points and has area at least \(Kt\). The
other hull triangle has area at least \(t\). Consequently

\[
S\ge(K+1)t=(5+2\sqrt3)t>8t.                                \tag{2}
\]

It remains to consider the case in which both diagonals separate the two
interior points. Their intersection is strictly inside the hull. Apply
an invertible affine map taking that intersection to the origin and the
two full diagonals to coordinate segments of length one. Choose signs
and cyclic labels so that

\[
\begin{aligned}
A&=(a,0),& B&=(0,b),& C&=(-c,0),& D&=(0,-d),\\
a+c&=1,& b+d&=1,& a,b,c,d&>0,\\
P&=(p,-q),& Q&=(-r,w),& p,q,r,w&>0.
\end{aligned}                                               \tag{3}
\]

The transformed hull has area \(1/2\). Ratios of triangle areas to hull
area are unchanged by this normalization. Denote the transformed
minimum area again by \(t\), and put \(k=2t\).

The four triangles formed with one interior point and a full diagonal
give

\[
p,q,r,w\ge k.                                               \tag{4}
\]

The point \(P\), being in the fourth coordinate quadrant and inside
the hull, is inside \(\triangle OAD\), where \(O=(0,0)\).
In particular the doubled area of \(ADP\) is positive and equals
\(ad-dp-aq\). Similarly the doubled area of \(BCQ\) is
\(bc-br-cw\). Hence (4) yields

\[
ad\ge k+dp+aq\ge k(1+a+d),\qquad
bc\ge k+br+cw\ge k(1+b+c).                                 \tag{5}
\]

The two positive numbers \(a+d\) and \(b+c\) sum to two, so at least
one is at most one. If \(a+d=u\le1\), the first inequality in (5)
and the arithmetic-geometric mean inequality imply

\[
k\le\frac{ad}{1+a+d}
\le\frac{u^2}{4(1+u)}\le\frac18.                            \tag{6}
\]

The last comparison is equivalent to
\((1-u)(2u+1)\ge0\). If instead \(b+c\le1\), use the second
inequality in exactly the same way. Thus \(t=k/2\le1/16\)
when \(S=1/2\), proving (1) after undoing the affine map.

For equality, all comparisons in (6) must be equalities. They force
\(a=d=1/2\), and then \(b=c=1/2\); the alternative case has the
same conclusion. Equality in (5), together with (4), forces
\(p=q=r=w=k=1/8\). The hull is therefore a parallelogram, and
the stated square configuration is its affine image. Its triangle
areas can be checked directly: every doubled area is at least \(1/4\)
in the unit-square version. This also verifies attainment. \(\square\)

## 2. Seven points with a quadrilateral hull

**Theorem 2.** Suppose seven points have a quadrilateral convex hull of
area \(S\). Their minimum triangle area \(t\) satisfies

\[
\boxed{S\ge(\Gamma+1)t.}                                   \tag{7}
\]

**Proof.** Again assume \(t>0\). Choose either hull diagonal. None of
the three interior points is on it. If all three are on the same side,
the corresponding triangle has area at least \(\Gamma t\), and the
other triangle has area at least \(t\). Otherwise the split is two on
one side and one on the other. The first triangle has area at least
\(Kt\). Joining the lone point to the three vertices of the second
triangle partitions that triangle into three triangles of area at least
\(t\), so its area is at least \(3t\). Thus in this case

\[
S\ge(K+3)t=(7+2\sqrt3)t>(\Gamma+1)t.                        \tag{8}
\]

For the last comparison, \(\sqrt3>5/3\) and \(\sqrt5<9/4\)
give \(1+4\sqrt3>23/3>27/4>3\sqrt5\).
Both possible diagonal counts prove (7). \(\square\)

**Corollary 3 (small-quadrilateral occupancy).** In any configuration
whose minimum triangle area is at least \(A_0\), a quadrilateral
spanned by four actual configuration points and having area at most
\(1/2\) contains at most two further configuration points.

Indeed, three such points together with the four vertices would give
seven points with precisely that quadrilateral hull. Theorem 2 would imply

\[
t\le\frac1{2(\Gamma+1)}
=\frac1{13+3\sqrt5}<\frac1{19}<A_0.                         \tag{9}
\]

Here \(\sqrt5>2\), and \(A_0>17/320>1/19\) follows from
\(\sqrt{65}>8\). A further point on a hull edge or diagonal would
already create a zero-area triangle, so this argument does not omit a
competitive boundary case.

## 3. A complete exclusion of the lower-left cap in family N

Use the normalization

\[
\begin{gathered}
A=(0,a),\quad H=(0,h),\quad B=(b,0),\quad C=(c,0),\\
D=(1,d),\quad F=(f,1),\\
0<a<h<1,\quad0<b<c<1,\quad a\le d\le h,\quad b\le f\le c,
\end{gathered}                                              \tag{10}
\]

with three other points anywhere in the square. Put \(Z=(0,0)\) and

\[
T_0=\operatorname{conv}\{Z,H,C\}
=\{(x,y):x,y\ge0,\ hx+cy\le hc\}.                        \tag{11}
\]

**Theorem 4 (N cap exclusion).** If two of the three other points lie
in \(T_0\), then the full nine-point configuration has minimum area at
most

\[
\boxed{\frac{7hc}{128}\le\frac7{128}<A_0.}                 \tag{12}
\]

**Proof.** Choose two such points \(P,Q\). The six actual points
\(H,C,A,B,P,Q\) are in \(T_0\). They include both endpoints of its
base \(HC\), and \(A,B\) lie on its two open legs \(ZH,ZC\),
respectively. An affine bijection from \(T_0\) to either half of the
unit square multiplies every triangle area by \(1/(hc)\). The six
images are therefore exactly the family in Theorem 1 of
[OPPOSITE_CORNERS.md](OPPOSITE_CORNERS.md), up to an affine labeling
and a reflection. That theorem gives transformed minimum area at most
\(7/128\), hence original minimum area at most \(7hc/128\).
Finally
\(A_0-7/128=(18\sqrt{65}-145)/640>0\), because
\(18^2\cdot65-145^2=35>0\). \(\square\)

Thus a competitive member of the entire family N has at most one of its
three other points in this cap, regardless of whether the other points
are hull vertices or additional square-boundary contacts.

## 4. Consequences when the prescribed anchors are the full hull

The following assertions make an additional, explicit hull hypothesis.
They do not apply automatically to all of N or C1.

For either normal form define the upper quadrilateral

\[
Q_0=\operatorname{conv}\{H,C,D,F\}.
\]

The vertices occur in that cyclic order. Its area is

\[
\operatorname{area}(Q_0)
=\frac{1+cd-df+fh-hc}{2}
=\frac{1-(h-d)(c-f)}2\le\frac12.                            \tag{13}
\]

### N with exactly the six prescribed hull vertices

Suppose the convex hull is the hexagon \(ABCD FH\), with cyclic
order \(A,B,C,D,F,H\). All three other points are then strictly
inside this hexagon. The segment \(HC\) partitions it into the
lower quadrilateral \(HABC\), contained in \(T_0\), and \(Q_0\).

At minimum area at least \(A_0\), Theorem 4 places at most one free
point on the lower side of \(HC\), while Corollary 3 and (13) place
at most two on the upper side. No free point can lie on \(HC\).
Consequently the only possible distribution is

\[
\boxed{\text{one point in }HABC,
       \quad\text{two points in }Q_0.}                     \tag{14}
\]

The upper quadrilateral and its two interior points have quadrilateral
convex hull, so Theorem 1 further gives

\[
1-(h-d)(c-f)\ge16A_0.                                     \tag{15}
\]

These are restrictions, not an exclusion of the distribution (14).

### C1 with exactly the five prescribed hull vertices

Now let \(A=(0,0)\), with \(H,C,D,F\) as in (10), and suppose the
convex hull is exactly the pentagon \(A,C,D,F,H\). The segment \(HC\)
partitions it into the actual triangle \(AHC\) and \(Q_0\).
All four other points are strictly inside this pentagon.

At minimum area at least \(A_0\), the global triangular occupancy
bound in [CORNER_FAMILIES.md](CORNER_FAMILIES.md) allows at most three
free points in \(AHC\). Corollary 3 allows at most two in \(Q_0\).
Thus the only possible lower/upper distributions are

\[
\boxed{(2,2)\quad\text{or}\quad(3,1).}                    \tag{16}
\]

For \((2,2)\), the triangular-hull two-interior-point bound and
Theorem 1 give

\[
hc\ge2K A_0,\qquad 1-(h-d)(c-f)\ge16A_0.                 \tag{17}
\]

For \((3,1)\), the six-point triangular-hull theorem gives

\[
hc\ge2\Gamma A_0=(11+3\sqrt5)A_0.                         \tag{18}
\]

In particular, both \(h\) and \(c\) are at least the right side of
(18), since each is at most one. The later corner-triangle theorem in
[ONE_CORNER.md](ONE_CORNER.md) excludes the entire \((3,1)\) branch,
including configurations with additional hull vertices. Sections 7--8
of that note further reduce the exact-pentagon \((2,2)\) branch to
the cases where both upper points lie in HCD or both lie in HCF.
Those two cases remain open. Configurations with additional hull
vertices are not covered by the conditional pentagon classification.

## 5. One of the two lower N ears is always empty

**Lemma 5.** In the complete family N, suppose every triangle has
area at least \(t\), and put \(s=2t>1/12\). The two actual
triangles \(ABH\) and \(ABC\) cannot both contain further
configuration points. After interchanging the coordinate axes and
relabeling the anchors if necessary, one may therefore assume that
\(ABC\) contains no other configuration point.

**Proof.** If both triangles contain a further point, subdividing each
into three actual triangles gives

\[
b(h-a)\ge3s,\qquad a(c-b)\ge3s.
\]

The contained points need not be distinct for this argument. Since
\(h,c\le1\), the Cauchy--Schwarz inequality gives

\[
\begin{aligned}
2\sqrt{3s}
&\le\sqrt{b(h-a)}+\sqrt{a(c-b)}\\
&\le\sqrt{b(1-a)}+\sqrt{a(1-b)}\\
&\le\sqrt{b+(1-b)}\,\sqrt{(1-a)+a}=1.
\end{aligned}
\]

This implies \(s\le1/12\), a contradiction. A further point on
an edge would already give zero minimum area. Transposition
\((x,y)\mapsto(y,x)\), followed by the relabeling
\((A,H,B,C,D,F)\mapsto(B,C,A,H,F,D)\), exchanges the two
ears and preserves all inequalities defining N. This proves the
normalization assertion. \(\square\)

This lemma requires no assumption that the six anchors are the full
convex hull, and hence applies throughout the competitive family N.
If one additionally assumes that they are the full hull, then the
emptiness of \(ABC\) puts all three remaining points in the
pentagon \(A,C,D,F,H\): that pentagon and the ear \(ABC\)
partition the anchor hexagon. Without that additional hull hypothesis,
points in exterior square-corner caps need not belong to the pentagon.

## Verification

The optional script [check_quadrilateral_hulls.py](check_quadrilateral_hulls.py)
checks the determinant formulas, the affine equality example, and the
area factorizations used above. It is an identity diagnostic; the
geometric dichotomies and hull hypotheses are proved in the text.
