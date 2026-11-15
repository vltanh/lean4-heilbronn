# A complete line-orientation exclusion for two interior points

## Scope

This note closes a whole affine orientation class of six-point
quadrilaterals. It applies to the remaining C1 pentagonal branch, but it
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

## 2. Application to the remaining pentagonal C1 branch

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

If both upper points belong to both \(HCD\) and \(HCF\), Theorem 1
applies with \((A,B,C,D)=(H,C,D,F)\). Hence their joining line must put
\(H,C\) on the **same** side. The entire opposite-side branch is now
excluded, including all three possible signs of the other two anchors.

The same theorem applies to a pair in \(HCD\cap HCF\) in family N;
no lower-point or maximizing hypothesis is required for the theorem.

This result leaves the same-side branch and the mixed upper placements,
as well as C1 hulls larger than the five-anchor pentagon. In particular,
no boundary-saturation theorem or complete C1 exclusion is claimed.

## Verification

The exact diagnostic `check_one_corner_completion.py` checks the affine
area conversion, the general determinant identity used to obtain (6),
and the final rational sign. The sign classification, containments, and
endpoint replacements are proved above; the script does not establish
those geometric statements by enumeration.
