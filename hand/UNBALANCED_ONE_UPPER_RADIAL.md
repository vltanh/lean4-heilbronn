# Radial restrictions in the final one-upper-point Type-II case

## Scope and result

Use the Type-II anchors

\[
D=(0,1),\quad C=(1,1),\quad E=(0,\lambda),\quad B=(b,0),
\quad 0<b\le\frac12,\quad q=1-\lambda\in(0,1),\quad w=1-b,
\quad s=\frac7{64},\quad K=4+2\sqrt3.
\]

The right hull is the quadrilateral \(B,R,S,C\), with
\(T\in\operatorname{int}(BCR)\cap\operatorname{int}(BCS)\),
so its support cell is II. The central points \(P,Q\) lie inside
\(DBC\), with \(P\) above \(CE\) and \(Q\) below it.
Assume the minimum area of the nine-point configuration is at least
\(A_0=(9\sqrt{65}-55)/320\). Every actual doubled area is therefore
greater than \(s\), and the global actual-triangle capacity theorem
applies. Write \([XYZ]=\det(Y-X,Z-X)\).

**Theorem 1.** The upper central point \(P\) is above \(DR\).
Exactly one of \(Q,T\) is below \(DR\), and the other is above it.
Furthermore \(DRS\) contains at most one further actual point.
Thus at least one of \(P\) and the upper member of \(Q,T\) is
above \(DS\).

This is a complete exclusion of the radial assignment with \(P\)
below \(DR\), and two uniform triangle-capacity bounds. The two
assignments obtained by interchanging \(Q,T\) below \(DR\) remain
separate obligations; this note does not exclude them.

The two-point upper cut is already completely excluded in
[UNBALANCED_UPPER_CELL_II.md](UNBALANCED_UPPER_CELL_II.md).

## 1. Two bounds valid for every nontriangular right hull

Write

\[
R=(r,1-v),\qquad S=(k,1-z),\qquad
b<r<k\le1,\quad0<z<v\le1.
\]

The strict order follows from the positive hull areas, as checked in
[UNBALANCED_CELL_I.md](UNBALANCED_CELL_I.md).

### 1.1. The triangle DBR has capacity one

The positive area \([CRS]=(1-r)z-(1-k)v\ge s\) gives
\((1-r)v>s\), because \(z<v\). Since \([DEB]=bq\ge s\)
and \(q<1\), we also have \(b>s\). Consequently

\[
\boxed{[DBR]=r-bv
<1-\frac{s}{v}-bv
\le1-2\sqrt{bs}<1-2s=\frac{25}{32}<Ks.}                 \tag{1}
\]

The two-interior-point triangle theorem therefore says that \(DBR\)
contains at most one further actual point. This assertion does not
require a particular right support cell or a particular cut by \(CE\).

### 1.2. A stronger universal upper bound for q

The generic right-quadrilateral ear inequality, equation (9) of
[UNBALANCED_RIGHT_HULL.md](UNBALANCED_RIGHT_HULL.md), gives, with
\(c=1-wq\),

\[
4C_*bs-w(C_*-s)^2\le0\qquad(C_*\ge c).                 \tag{2}
\]

It implies

\[
\boxed{q<\frac9{10}.}                                  \tag{3}
\]

Indeed, if \(q\ge9/10\), put \(C_*=1-9w/10\). The left side
of (2), multiplied by \(102400\), is

\[
P_0(b)=82944b^3-44352b^2+6217b-9>0
\qquad(s\le b\le1/2).                                 \tag{4}
\]

To check this strict sign, set \(b=1/4+t\). Then

\[
P_0=82944t^3+17856t^2-407t+\frac{277}{4}.
\]

For \(t\ge0\), discard the nonnegative cubic; the remaining
upward quadratic is positive for every real \(t\), since its
discriminant is

\[
407^2-17856\cdot277=-4780463<0.
\]

For \(t=-u\), \(0\le u\le9/64\), the sum of the cubic and
quadratic is
\(u^2(17856-82944u)\ge6192u^2\), and the other two terms are
positive. This proves (4) and hence (3).

Since \(SC\) is a hull edge, every other actual point
\(Z=(x,1-y)\) has positive area

\[
[SCZ]=z(1-x)-(1-k)y\ge s.
\]

In particular \(x\le1-s/z\le1-s\). Combining this with (3),
for \(Z=Q\) or \(T\) we obtain

\[
\boxed{[DEZ]=qx<\frac9{10}(1-s)=\frac{513}{640}
<\frac{13}{16}<Ks.}                                    \tag{5}
\]

Thus neither \(DEQ\) nor \(DET\) can contain two further actual
points.

## 2. Cell II gives a capacity-one bound for DRS

Put

\[
a=[BRC]=r-1+wv,\quad a'=[BSC]=k-1+wz,\quad
H=2\operatorname{area}(BRSC).
\]

Because \(T\) is inside both containing triangles,
\(a,a'\ge3s\). The standard common-sector coordinate inequalities
also give the stronger relation

\[
\boxed{aa'\ge s(a+a'+H).}                              \tag{6}
\]

Here is a direct derivation of this one-point version. Normalize the
doubled quadrilateral area to one, put
\(\bar a=a/H\), \(\bar a'=a'/H\), \(\sigma=s/H\),
and use the general coordinates and inequalities (1)--(2) of
[FOUR_INTERIOR_QUADRILATERALS.md](FOUR_INTERIOR_QUADRILATERALS.md).
For the common-sector point with coordinates \((p,u)\), those
inequalities imply

\[
\bar a\bar a'-\sigma(\bar a+\bar a')\ge u\ge\sigma.
\]

Multiplication by \(H^2\) gives (6). No auxiliary support triangle
area is assumed here.

Expansion of the actual hull areas gives

\[
H=a(1-z)+a'v,\qquad
J:=[DRS]=v(1+a')-z(1+a).                               \tag{7}
\]

Equation (6) says

\[
a\{a'-s(2-z)\}\ge sa'(1+v).
\]

Its bracket is positive. Substitute the resulting lower bound for
\(a\) in (7):

\[
J\le v(1+a')-z-
\frac{zsa'(1+v)}{a'-s(2-z)}.                           \tag{8}
\]

The right side strictly increases with \(a'\): the derivative is
\(v+zs^2(1+v)(2-z)/\{a'-s(2-z)\}^2>0\).
Since \(a'\le wz\), increase \(a'\) to \(wz\).
The resulting coefficient of \(v\) is

\[
1+wz\frac{wz-2s}{(w+s)z-2s}>0,
\]

because \(wz\ge a'\ge3s\). Increase \(v\) to one to obtain

\[
J\le1-bz-\frac{2swz^2}{(w+s)z-2s}.                    \tag{9}
\]

The denominator is positive. The square
\(\{(w+s)z-4s\}^2\ge0\) gives

\[
\frac{z^2}{(w+s)z-2s}\ge\frac{8s}{(w+s)^2}.
\]

Also \(z\ge3s/w\), \(b\ge s\), and
\(1/2\le w\le1-s\). The function \(w/(w+s)^2\) decreases
for \(w>s\). Therefore (9) yields

\[
\begin{aligned}
J&\le1-\frac{3s^2}{1-s}-16s^2(1-s)\\
 &=1-\frac{49}{1216}-\frac{2793}{16384}
 <1-\frac1{30}-\frac16=\frac45<Ks.                     \tag{10}
\end{aligned}
\]

Thus \(DRS\) contains at most one further actual point. The proof
of (10) uses only the right cell-II placement and the four anchor
points, so it applies to both central-point cuts.

## 3. Exactly one point is below DR

The three points \(P,Q,T\) are inside the quadrilateral \(DBRC\),
which is partitioned by \(DR\) into \(DBR\) and \(DCR\).
By (1), at most one is in the former triangle. By the global
actual-triangle capacity theorem, at most two are in the latter.
None lies on \(DR\). Consequently exactly one is below \(DR\),
and exactly two are above it.

It remains to exclude the possibility that the lower point is \(P\).
Suppose so. Then \(Q,T\) are both above \(DR\), and both are
below \(CE\). In the convex quadrilateral \(D,E,R,C\), they lie
in the common sector at \(RC\), while \(P\) lies in the opposite
sector at \(DE\).

Write

\[
\alpha=[ERC]=v-q(1-r),\qquad
H_*=2\operatorname{area}(DERC)=v+qr=\alpha+q.
\]

Both \(DCR\) and \(ECR\) contain \(Q,T\), so
\(v,\alpha\ge Ks>13/16\).

## 4. Every noncontainment line sign gives q below 2/5

The general common-sector pair inequalities are equations (4)--(5) of
FOUR_INTERIOR_QUADRILATERALS.md, before their later specialization.
If the line \(QT\) puts \(R,C\) on the same side, they give

\[
\alpha v-s(\alpha+v)\ge2\sqrt{sH_*\alpha v}.             \tag{11}
\]

If it separates \(R,C\) and puts \(D,E\) on the same side, the
positive bracket is instead either
\(\alpha v-s(H_*+\alpha)\) or
\(\alpha v-s(H_*+v)\). The same lower bound holds for that
bracket. Since \(H_*>\alpha,v\), either assertion is stronger
than (11). Thus (11) holds for all these line signs.

Divide (11) by \(\alpha v>0\), and use \(H_*=\alpha+q\):

\[
1-\frac{s}{\alpha}-\frac{s}{v}
\ge2\sqrt{\frac{s}{v}\left(1+\frac q\alpha\right)}.
\]

Increase \(\alpha\le v\) to \(v\). This increases the left
side and decreases the right side. We obtain
\(v-2s\ge2\sqrt{s(v+q)}\), with positive left side, and hence

\[
q\le\frac{v^2}{4s}-2v+s
\le\frac1{4s}-2+s=\frac{177}{448}<\frac25.              \tag{12}
\]

The second replacement is valid because the quadratic increases for
\(v>4s\), and \(v\ge Ks>4s\).

Write \(P=(x,1-y)\). Its three positive ordered areas give

\[
[DBP]=x-by\ge s,\qquad
[RDP]=ry-vx\ge s,\qquad
[ECP]=q(1-x)-y\ge s.                                  \tag{13}
\]

By \(bq\ge s\) and (12), \(b>5s/2\). Using also \(r\le1\)
and \(v>13/16\), the first two inequalities in (13) imply

\[
y\ge s+vx>s+\frac{13}{16}\left(s+\frac{5s}{2}y\right),
\qquad
y>\frac{406}{1593}>\frac14.                            \tag{14}
\]

The first and third inequalities instead imply

\[
y\le\frac25\left(1-s-\frac{5s}{2}y\right)-s,
\qquad
y\le\frac{79}{355}<\frac14.                            \tag{15}
\]

This is a contradiction. It excludes every noncontainment line sign.

## 5. The remaining line sign contradicts the DEQ/DET cap

The only remaining possibility is that \(QT\) separates both
\(R,C\) and \(D,E\). The line then meets the relative interior
of the hull edge \(DE\). Along the ray from that intersection into
the quadrilateral, one of \(Q,T\) is closer than the other.
The closer point lies strictly inside the triangle formed by \(D,E\)
and the farther point.

The point \(P\) lies inside that triangle as well. To see this,
let \(J=DR\cap EC\). The common sector containing \(Q,T\) is
\(RCJ\), and the opposite sector containing \(P\) is \(DEJ\).
For every point \(Z\) strictly inside \(RCJ\), the triangle
\(DEZ\) contains \(DEJ\): the rays \(JR,JC\) continue the
opposite rays \(JD,JE\), respectively. Hence both \(DEQ\) and
\(DET\) contain \(P\).

The farther point therefore gives an actual triangle \(DEQ\) or
\(DET\) containing two further actual points. This contradicts (5).
All line signs have been exhausted, so \(P\) cannot be below \(DR\).

Section 3 now says that \(Q,T\) lie on opposite sides of \(DR\),
and \(P\) is on its upper side. The two points above \(DR\) lie
in \(DCR\subset D R S C\). If both were below \(DS\), they
would both be in \(DRS\), contrary to (10). This proves every
assertion of Theorem 1. \(\square\)

## Verification

[check_unbalanced_one_upper_radial.py](check_unbalanced_one_upper_radial.py)
checks the signed area formulas, the generic-ear polynomial, the
common-sector elimination and monotonicity identities, and all rational
comparisons. Its inputs are exactly the displayed algebra. No numerical
optimization is a premise.
