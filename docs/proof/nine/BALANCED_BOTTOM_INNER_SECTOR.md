# The bottom inner sector in the balanced Type-II case

## Statement and exact scope

This note excludes one complete placement in the final balanced Type-II
family of [TYPE_II_COMPLETION.md](TYPE_II_COMPLETION.md), Section 8.
It uses eight of the nine points; the upper central point P is not needed.

Write

\[
D=(0,1),\quad C=(1,1),\quad E=(0,\lambda),\quad B=(b,0),
\quad R=(r,u),
\]

with \(0<b<1\), \(0\le\lambda,u<1\), and \(b<r\le1\).
The other three points, all in the unit square, are

\[
L=(l,h),\qquad S=(z,t),\qquad Q=(x,y).
\]

Use the signed doubled area

\[
[XYZ]=\det(Y-X,Z-X).
\]

Assume the following placements:

1. L is inside DBE and above EC. In particular, \(h>\lambda\).
2. S is inside BRC.
3. Q is in the central triangle DBC, above ER, and below both ES and LR.

All these incidences are strict. More explicitly, the signs needed from
the last condition are

\[
b(1-y)<x<b+(1-b)y,\qquad
[ERQ]>0,\quad[EQS]>0,\quad[LQR]>0.                       \tag{1}
\]

In the remaining balanced configuration, Q is already central and above
ER by the empty-lower-ear lemma. Thus (1) adds precisely the bottom cell
cut out by the two actual lines ES and LR. Equivalently, Q occupies the
diagonal sector adjacent to ER in the inner quadrilateral E,R,S,L.

**Theorem.** Under these hypotheses, some triangle on the eight points
\(D,C,E,B,L,Q,R,S\) has area strictly less than \(7/128\), and hence
strictly less than \(A_0\). No hypothesis about P, no ordering between
\(q=1-\lambda\) and \(v=1-u\), and no assumption \(r=1\) is needed.

## 1. Five positive areas have an exact sum

Suppose for a contradiction that all actual doubled triangle areas are
at least

\[
s=\frac7{64},\qquad q=1-\lambda,\qquad v=1-u,
\qquad w=1-b.
\]

Both \([BQL]\) and \([BSQ]\) are positive. Indeed centrality in
(1) gives

\[
\begin{aligned}
[BQL]&=h(x-b)+(b-l)y
       >y\{b(1-h)-l\}=y[BDL]>0,\\
[BSQ]&=(z-b)y-t(x-b)
       >y\{z-b-wt\}=y[BSC]>0.
\end{aligned}                                             \tag{2}
\]

Here \(h,t,y>0\), and the two bracketed anchor triangles are positive
by the stated placements. The other three areas \([EQS],[LQR],[ERQ]\)
are positive by (1). Each of these five signed areas is therefore at
least s. Direct expansion gives the exact cancellation

\[
\boxed{
\begin{aligned}
5s&\le[BQL]+[BSQ]+[EQS]+[LQR]+[ERQ]\\
  &=(r-b)h+bt-\lambda(r-z)-ul=:T.
\end{aligned}}                                           \tag{3}
\]

The right side contains neither coordinate of Q. The determinant orders
in (3) are intentional: in this cell the positive orders are EQS and LQR.

## 2. Bound the remaining coordinates by endpoint triangles

Four positive anchor areas give

\[
\begin{array}{ll}
[DEL]=ql\ge s,&[BDL]=b(1-h)-l\ge s,\\
[BSC]=z-b-wt\ge s,&
[RCS]=v(1-z)-(1-r)(1-t)\ge s.
\end{array}                                               \tag{4}
\]

Since all points are in the square, \((1-r)(1-t)\ge0\).
Consequently (4) implies

\[
\begin{array}{ll}
l\ge l_0:=s/q,&
h\le h_0:=1-\dfrac{s(q+1)}{bq},\\[3pt]
z\le z_0:=1-s/v,&
t\le t_0:=1-\dfrac{s(v+1)}{wv}.
\end{array}                                               \tag{5}
\]

Every denominator is positive. Moreover \(h_0\ge h>\lambda\).
Because \(r-b,b>0\) and \(\lambda,u\ge0\), substituting (5)
into (3) in the indicated directions gives

\[
\begin{aligned}
T&\le(r-b)h_0+bt_0-\lambda(r-z_0)-ul_0\\
 &=r(h_0-\lambda)-bh_0+bt_0+\lambda z_0-ul_0\\
 &\le wh_0+bt_0-\lambda(1-z_0)-ul_0.
\end{aligned}                                             \tag{6}
\]

The last step uses only \(r\le1\) and \(h_0-\lambda>0\).
Thus no geometric deformation of R is asserted or needed.

Substitution of (5) into the last expression in (6) yields

\[
T\le1-sK,
\qquad
K=\frac wb+\frac bw+\frac1{bq}+\frac1{wv}
                  -\frac vq-\frac qv.                   \tag{7}
\]

## 3. One weighted mean bounds the entire expression

Put

\[
c=wq+bv.
\]

The positive lower ear EBR is an actual triangle. Its area gives

\[
s\le[EBR]=bu+\lambda(r-b)
 \le bu+\lambda w=1-c.
\]

In particular \(0<c\le1-s<1\). The following exact identity now
proves the required bound on K:

\[
\boxed{
K-\frac4c=
\left(\frac1{bw}-4\right)\left(1+\frac1c\right)
+\frac{(q-v)^2(1-c)}{qvc}\ge0.}                           \tag{8}
\]

For a short derivation, use

\[
\frac wq+\frac bv
 =\frac1c+\frac{bw(q-v)^2}{qvc},\qquad
\frac vq+\frac qv=2+\frac{(q-v)^2}{qv},\qquad
\frac wb+\frac bw=\frac1{bw}-2.
\]

The two terms on the right of (8) are nonnegative because
\(bw=b(1-b)\le1/4\) and \(c<1\). Equations (3), (7), and (8)
therefore give

\[
5s\le T\le1-\frac{4s}{c}
 \le1-\frac{4s}{1-s}
 =\frac{29}{57}<\frac{35}{64}=5s.
\]

The exact final gap is

\[
\frac{35}{64}-\frac{29}{57}=\frac{139}{3648}>0.
\]

This contradiction proves the theorem.

The same argument at a variable positive doubled threshold gives the
stronger numerical bound

\[
\min\operatorname{area}(XYZ)
\le\frac12\left(1-\frac2{\sqrt5}\right)<\frac7{128}.
\]

Indeed \(5s\le1-4s/(1-s)\), with \(0<s<1\), implies
\(s\le1-2/\sqrt5\). This bound is not asserted to be sharp.

## Verification and remaining scope

[check_balanced_bottom_inner_sector.py](check_balanced_bottom_inner_sector.py)
checks every signed determinant used above, the five-area identity (3),
the substitutions in (7), the weighted identity (8), and the rational
strict gap. These identities use exact symbolic or rational arithmetic.

This result excludes the complete below-both cell of the balanced Type-II
assignment with Q at ER and S at RC. The cells where Q lies on opposite
sides of ES and LR require their own arguments; this note makes no claim
about those cells or the unrestricted nine-point theorem.
