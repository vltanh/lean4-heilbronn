# A complete exclusion for two points in the central part of a quadrilateral

## Scope

This note closes the entire six-point quadrilateral class in which
both interior points lie on the same side of each hull diagonal. It applies to the remaining C1 pentagonal branch, but it
**does not complete C1** or the unrestricted nine-point theorem.

Write

\[
K=4+2\sqrt3,\qquad s=\frac7{64}.
\]

The only earlier ingredients are the two-interior-point triangle bound
in Section 7 of [CORNER_FAMILIES.md](CORNER_FAMILIES.md), and the general
weighted determinant identities proved in Sections 4 and 7 of
[OPPOSITE_CORNERS.md](OPPOSITE_CORNERS.md). Those identities are algebraic
and will be used before their numerical specialization.

## 1. A quadrilateral theorem

**Theorem 1.** Let \(A,B,C,D\) be the cyclic vertices of a convex
quadrilateral of area \(S>0\). Let \(P,Q\) lie strictly inside both
\(ABC\) and \(ABD\). If the line \(PQ\) separates \(A\) and \(B\),
then the six points have minimum triangle area strictly less than

\[
\boxed{\frac7{64}S.}                                      \tag{1}
\]

In particular, when \(S\le1/2\), their minimum area is below
\(7/128<A_0\).

### Normalize the quadrilateral area

Suppose the conclusion fails. Make an affine change of coordinates that
makes the doubled quadrilateral area equal to one. All doubled triangle
areas are then at least \(s=7/64\). Put

\[
a=2\operatorname{area}(ABD),\qquad
b=2\operatorname{area}(ABC).
\]

The two containing triangles each contain both \(P,Q\), so

\[
a,b\ge Ks,\qquad a,b\le1-s.                              \tag{2}
\]

The upper bounds follow because the complementary triangles have doubled
areas \(1-a\) and \(1-b\), respectively, and are actual triangles.
In particular

\[
1-a,1-b<3s,\qquad J:=a+b-1>0.                            \tag{3}
\]

For the first assertion, \((K+3)s>10s>1\); for the second,
\(2Ks>14s>1\).

### Canonical coordinates and the complete line-sign list

The inequalities \(J>0\), \(J<a\), and \(J<b\) allow a further affine
normalization to the half-square coordinates

\[
 A=(0,0),\quad B=(1,1),\quad D=(0,h),\quad C=(f,1),
 \qquad h=\frac{a}{T},\quad \beta:=1-f=\frac{b}{T},
 \quad T=\frac{ab}{J}.                                    \tag{4}
\]

Here \(0<h,\beta<1\). The change multiplies doubled areas by \(1/T\),
so its threshold is \(\sigma=s/T\). To verify existence without an
assumption about parallel sides, the displayed canonical quadrilateral
has doubled areas

\[
h=\frac aT,\quad\beta=\frac bT,\quad
h(1-\beta)=\frac{1-b}{T},\quad
(1-h)\beta=\frac{1-a}{T}.
\]

Its three independent affine area ratios therefore agree with those
of \(A,B,C,D\). An affine map matching \(A,B,D\) matches \(C\) as
well, by barycentric coordinates. Notice that \(T\) need not be at most
one; no area bound for this auxiliary triangle is used.

Orient \(PQ\) so that

\[
d_A:=\det(Q-P,A-P)<0<d_B.
\]

Since both points are in \(ABC\cap ABD\), they are in cell II of
Section 2 of `OPPOSITE_CORNERS.md`, with that note's labels
\((A,E,H,F)=(A,B,D,C)\). The algebraic sign implication in its
identity (23) states that \(d_D>0\) implies \(d_C>0\). Thus the only
possibilities for \((d_D,d_C)\) are

\[
(+,+),\qquad(-,+),\qquad(-,-).                            \tag{5}
\]

For clarity, writing \(P=(p,p+w)\),

\[
u=-d_A,\quad e=d_B,\quad k=h(1-p)-w,\quad
l=\beta p-(1-\beta)w,\quad
v=\beta(1-p-w),
\]

all of \(u,e,k,l,v,w\) are positive, and

\[
d_D=\frac{ku-hpe}{w},\quad
 d_C=\frac{vu-le}{w},\quad hpv-kl=-wN(P)>0.
\]

These formulas prove the sign implication: if \(d_D>0\), then
\(u/e>hp/k>l/v\), hence \(d_C>0\). Positive minimum area excludes
all zero signs.

### The middle case is impossible by area addition

If \(d_D<0<d_C\), the three oriented edge tests put \(P\) strictly
inside \(DCQ\), as in Section 7.1 of `OPPOSITE_CORNERS.md`.
Consequently its doubled area is at least \(3s\) in the first
normalization, by subdivision at \(P\).

However, for every \(Q\) in the quadrilateral, affinity of the determinant
in \(Q\) gives

\[
2\operatorname{area}(DCQ)
\le\max\{2\operatorname{area}(DCA),
         2\operatorname{area}(DCB)\}
=\max(1-b,1-a)<3s.
\]

This is a contradiction. The whole quadrilateral lies on the same side
of its hull edge \(DC\), so no absolute-value sign issue occurs here.

### Each of the other two cases gives an impossible quadratic

If \(d_D,d_C>0\), the weighted identity and quadratic maximization in
(24)--(25) of `OPPOSITE_CORNERS.md`, at the general threshold \(\sigma\),
give

\[
[h\beta-\sigma(\beta+2h-h\beta)]^2
\ge4\sigma(h+\beta-h\beta)h\beta,
\quad h\beta-\sigma(\beta+2h-h\beta)>0.
\]

Substitute (4), use \(ab/T=J=a+b-1\), and multiply by \(T^4>0\):

\[
[ab-s(1+a)]^2\ge4sab,
\qquad ab-s(1+a)>0.                                      \tag{6}
\]

The positive-bracket condition is part of the quadratic maximization;
it is not inferred by taking a square root. If \(d_D,d_C<0\), the
reflection exchanging \(A,B\) and \(D,C\), followed by reorienting
\(PQ\), gives precisely (6) with \(a,b\) interchanged. It therefore
suffices to rule out (6).

Here is a root argument justifying both endpoint replacements. For fixed
\(a\), put \(x=ab\). The polynomial

\[
F(x)=[x-s(1+a)]^2-4sx
\]

is an upward quadratic and is negative at \(x=s(1+a)\). Thus a point
with \(x>s(1+a)\) and \(F(x)\ge0\) lies at or above its larger root.
Increasing \(x\) preserves both conditions. Since \(b\le1-s\), (6)
would therefore remain true after replacing \(b\) by \(1-s\).

After that replacement its bracket is \(a(1-2s)-s>0\). The resulting
polynomial

\[
[a(1-2s)-s]^2-4sa(1-s)
\]

is again an upward quadratic in \(a\), negative at the positive zero
\(a=s/(1-2s)\) of its bracket. The same argument permits increasing
\(a\) to its upper bound \(1-s\). It follows that

\[
(1-4s+2s^2)^2-4s(1-s)^2\ge0.                             \tag{7}
\]

But at \(s=7/64\) the expression in (7) equals

\[
1-12s+28s^2-20s^3+4s^4
=-\frac{13151}{4194304}<0.
\]

This contradiction excludes the two remaining cases of (5) and proves
Theorem 1.

## 2. The other line orientation is also impossible

**Theorem 2 (central-pair quadrilateral bound).** Let \(A,B,C,D\) be the
cyclic vertices of a convex quadrilateral of area \(S\), and let \(P,Q\)
lie strictly inside both \(ABC\) and \(ABD\). Then their minimum
triangle area is strictly less than

\[
\boxed{\frac7{64}S.}                                      \tag{8}
\]

Thus the line-separation hypothesis of Theorem 1 can be removed.
Equivalently, for six points whose minimum triangle area is at least
\(7/64\) times their quadrilateral hull area, **at least one hull diagonal
must separate the two interior points**.

Suppose again that the conclusion fails, and use the first normalization,
\(s,a,b,J,T,h,\beta,\sigma\), from the preceding proof. Theorem 1 handles
the case in which \(PQ\) separates \(A,B\). Otherwise orient the line so
that \(d_A,d_B<0\). Each containing triangle \(ABC,ABD\) contains
\(P,Q\), so its third vertex must be on the other side of the line;
thus \(d_C,d_D>0\).

Interchange \(A,B\) and \(C,D\), if needed, to arrange \(a\ge b\).
This preserves all the present containment and line-sign hypotheses.
In the canonical coordinates (4), write the two points as
\((p,p+w)\), \((q,q+z)\), and put

\[
v=T\min(w,z).
\]

Thus \(v\) is the smaller doubled area of \(ABP,ABQ\) in the first
normalization. The general same-side calculation (21)--(22) in
`OPPOSITE_CORNERS.md`, before maximizing over the point height, says

\[
s\le v\left(1-\frac{s(a+b)}{ab}\right)-\frac{v^2}{ab}.
\]

Equivalently,

\[
F(a,b,v):=ab(v-s)-sv(a+b)-v^2\ge0.                        \tag{9}
\]

This in particular forces \(v>s\).

### The previously unused opposite-edge constraint bounds the height

For either point \(X=(x,x+w)\) in the canonical coordinates, its
central-cell inequality and its area with the hull edge \(DC\) are

\[
x\ge\frac{\sigma+(1-\beta)w}{\beta},\qquad
N(X)=(1-\beta)w+(h-\beta)x-(1-\beta)h\le-\sigma.
\]

Since \(h\ge\beta\), substituting the lower bound for \(x\) gives

\[
\frac{(1-\beta)h}{\beta}w
 +\frac{(h-\beta)\sigma}{\beta}-(1-\beta)h\le-\sigma,
\]

and hence

\[
w\le\beta-\frac{\sigma}{1-\beta}.
\]

Multiplying by \(T\), and using \(1-\beta=(1-b)/a\), proves

\[
\boxed{v\le b-\frac{sa}{1-b}
            \le V(b):=b-\frac{sb}{1-b}.}                  \tag{10}
\]

All denominators are positive by (2). This inequality uses an actual
hull-edge triangle for each point; it is stronger than the earlier
height bound obtained from the two diagonal constraints alone.

### Two rational intervals exhaust the parameter range

Under (9), both partial derivatives of \(F\) with respect to \(a,b\)
are positive. For example, if
\(b(v-s)-sv\le0\), then

\[
F=a[b(v-s)-sv]-sbv-v^2<0,
\]

contrary to (9); the other derivative is handled identically. Increasing
\(a\) or \(b\) while keeping \(v\) fixed therefore preserves \(F\ge0\):
its derivative in the parameter being increased is constant, and the
other derivative increases since \(v>s\). This justifies each relaxation
below without assuming coordinate motions of the original points.

**First interval: \(b\le17/20\).** Increase \(a\) to \(57/64=1-s\)
and \(b\) to \(17/20\). For these values \(F\) is a concave quadratic
in \(v\), whose maximum is

\[
\frac{[ab-s(a+b)]^2-4sab}{4}
=-\frac{847963}{335544320}<0.                              \tag{11}
\]

This contradicts (9), for every real \(v\).

**Second interval: \(b\ge17/20\).** The function \(V\) in (10)
decreases on this interval, because

\[
V'(b)=1-\frac{s}{(1-b)^2}<0.
\]

Consequently

\[
v\le V(17/20)=\frac{221}{960}.                            \tag{12}
\]

Increase both \(a,b\) to \(57/64\). The resulting quadratic

\[
F(57/64,57/64,v)
\]

increases for \(v\le221/960\): at the upper endpoint its derivative is
\(8477/61440>0\), and its derivative decreases as \(v\) increases.
It follows that

\[
F(a,b,v)\le F(57/64,57/64,221/960)
=-\frac{58967}{29491200}<0,                               \tag{13}
\]

again contradicting (9). The two intervals are exhaustive, so the
same-side case is impossible. Combined with Theorem 1, this proves
Theorem 2.

## 3. The mixed pair has a forced isolated hull vertex

**Theorem 3 (mixed-pair line).** Use the same cyclic quadrilateral
\(A,B,C,D\), and suppose its six-point minimum triangle area is at least
\(7S/64\). Suppose both \(P,Q\) are inside \(ABC\), with \(P\) inside
\(BCD\) and \(Q\) inside \(ABD\). Then the line \(PQ\) puts \(B\)
on one side and all three of \(A,C,D\) on the other.

Normalize the doubled quadrilateral area to one as before, put
\(a=2\operatorname{area}(ABD)\), \(b=2\operatorname{area}(ABC)\), and
use \(s=7/64\). This time

\[
b\ge Ks,\qquad a\ge3s,\qquad 1-a\ge3s,\qquad1-b\ge s.
\]

The first inequality uses the two points in \(ABC\); the next two use
\(Q\) in \(ABD\) and \(P\) in \(BCD\). In particular
\(a+b>(K+3)s>1\), so the canonical normalization (4) again exists.

Since \(P,Q\) lie on opposite sides of the diagonal \(BD\), their
segment crosses its relative interior. Orient \(PQ\) so that
\(d_B<0<d_D\). The remaining signs \((d_C,d_A)\) are exactly

\[
(+,-),\qquad(-,+),\qquad(+,+).
\]

The absent fourth possibility would put all three vertices of the
containing triangle \(ABC\) on the same strict side of \(PQ\).

Use the canonical labeling
\((A',E',H',F')=(B,A,C,D)\) in Section 5 of
`OPPOSITE_CORNERS.md`. Its parameters are \(h=b/T\), \(\beta=a/T\),
and \(\sigma=s/T\), where \(T=ab/(a+b-1)\).
The point \(P\) is in its cell I and \(Q\) in cell II.

If \(d_C>0>d_A\), the oriented edge tests put \(Q\) inside \(ADP\).
The three elementary area bounds used in Section 5.1 of that note, before
replacing any parameter by one, give

\[
h\beta(1-\beta)\ge\sigma(3h+\beta-2h\beta).
\]

Indeed the three bounds are
\(\beta(1-y_P)\ge3\sigma\), \(h x_P\ge\sigma\), and
\((1-\beta)y_P-x_P\ge\sigma\). Substitute the last two into the first
and multiply by \(h\beta>0\). Converting back to the first normalization
gives

\[
a(1-a)\ge s(2+b-a).
\]

Its quadratic in \(a\) would have to have nonnegative discriminant.
But that discriminant is at most

\[
(1+s)^2-4s(2+Ks)=1-6s+(1-4K)s^2< -\frac1{1280}<0.          \tag{14}
\]

For the exact comparison, \(K>149/20\), because
\(\sqrt3>69/40\), as verified by \(4800>4761\); substituting
\(K=149/20\) in (14) gives exactly \(-1/1280\).

If \(d_C<0<d_A\), the oriented edge tests instead put \(P\) inside
\(CDQ\). Necessarily \(b>a\): otherwise \(1-b\ge1-a\ge3s\),
contrary to \(b\ge Ks\) and \((K+3)s>1\). Thus \(h>\beta\).
The general calculation (15)--(16) of the same note, stopping before its
replacement \(h\le1\), gives

\[
h\beta(1-\beta)\ge\sigma(2h+2\beta-h\beta).
\]

Converting back gives

\[
a(1-a)\ge s(1+a+b).
\]

Its discriminant is bounded above by
\((1-s)^2-4s(1+Ks)=1-6s+(1-4K)s^2\), the same strictly negative number
as in (14). This case is also impossible.

Only \(d_C,d_A>0\) remains. Together with \(d_D>0>d_B\), this is
exactly the asserted isolated-vertex conclusion.

## 4. Application to the remaining pentagonal C1 branch

Use the C1 anchors

\[
O=(0,0),\ H=(0,h),\ C=(c,0),\ D=(1,d),\ F=(f,1),
\qquad d\le h,\ f\le c.
\]

Suppose the hull is this pentagon and the minimum area is at least
\(A_0\). The completed arguments in `ONE_CORNER.md` put two free
points in \(OHC\), and two in the upper quadrilateral
\(Q_0=HCDF\). Its doubled area is

\[
W=1-(h-d)(c-f)\le1.
\]

If both upper points belong to both \(HCD\) and \(HCF\), Theorem 2
applies with \((A,B,C,D)=(H,C,D,F)\). Its bound contradicts the assumed
minimum area. Thus this **entire central upper-pair branch is excluded**,
regardless of the line through the two points.

The same theorem applies to a pair in \(HCD\cap HCF\) in family N;
no lower-point or maximizing hypothesis is required for the theorem.

This leaves only the mixed upper placements within the pentagonal branch:
one upper point is in \(HCD\cap HCF\), and the other in \(CDF\), or the
reflected placement with the other point in \(HDF\). C1 hulls larger than
the five-anchor pentagon also remain open. In the first mixed placement,
Theorem 3 additionally forces the line through the upper pair to isolate
\(C\) from \(H,D,F\). The reflected placement isolates \(H\).
These are proved sign restrictions, not exclusions of the mixed classes.

The companion [C1_MIXED_PENTAGON.md](C1_MIXED_PENTAGON.md) now excludes
both complete alternatives within the first mixed placement. With the
central upper point named \(P\), the ear point \(Q\), and the lower
point above \(OD\) named \(L\), exactly one of \(L,P\) is inside
\(OHF\). The companion excludes the entire alternative \(L\in OHF\),
\(P\in OCF\), including both polynomial parameter intervals, and
then excludes the reverse alternative \(P\in OHF\), \(L\in OCF\)
by two overlapping triangle bounds. Reflection covers the other upper
ear. Thus the entire C1 case with exact five-anchor pentagonal hull is
excluded. Larger C1 hulls remain open; no boundary-saturation theorem or
complete C1 exclusion is claimed.

## Verification

The exact diagnostic `check_one_corner_completion.py` checks the affine
area conversion, the general determinant identity used to obtain (6),
the opposite-edge height bound, and the final rational signs. The sign classification, containments, and
endpoint replacements are proved above; the script does not establish
those geometric statements by enumeration.
