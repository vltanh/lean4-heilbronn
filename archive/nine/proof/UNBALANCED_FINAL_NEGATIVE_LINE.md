# A complete line-sign exclusion in the final unbalanced Type-II case

## Scope and result

Use the remaining placement from
[UNBALANCED_ONE_UPPER_RADIAL.md](UNBALANCED_ONE_UPPER_RADIAL.md) and
[UNBALANCED_OCCUPIED_LOWER_EAR.md](UNBALANCED_OCCUPIED_LOWER_EAR.md):

\[
D=(0,1),\quad C=(1,1),\quad E=(0,1-q),\quad B=(b,0),
\]
\[
R=(r,u),\quad S=(k,t),\quad b<r<k\le1,\quad0\le u<t<1.
\]

The right hull is \(B,R,S,C\), and
\(T\in\operatorname{int}(BCR)\cap\operatorname{int}(BCS)\).
The point \(Q\) is in the central triangle \(DBC\), below
\(CE,DR\), and above \(ER\). The point \(T\) is above \(DR\)
and below \(CE\). The other central point \(P\) is above both
\(CE\) and \(DR\).

Write \([XYZ]=\det(Y-X,Z-X)\), and assume the minimum area is
at least \(A_0\). We use the rational doubled threshold

\[
s=\frac8{73}<2A_0,\qquad K=4+2\sqrt3,
\]

whose exact comparison is recorded in
[UNBALANCED_UPPER_CELL_II.md](UNBALANCED_UPPER_CELL_II.md).

**Theorem 1.** In this placement, \([QTE]<0\) is impossible.
Thus every surviving configuration must satisfy \([QTE]>0\).

The proof excludes this entire line-sign cell. It does not exclude the
opposite sign. It uses only the eight points other than \(P\), once
their stated positions have been established.

## 1. An actual cross-area gives a necessary affine inequality

The opposite positions of \(Q,T\) relative to \(BC\), both on
the inward rays from \(C\), give \([CQT]>0\). Suppose
\([QTE]<0\). The three side tests for \(Q\) in \(ECT\) are

\[
[ECQ]<0,\qquad [CTQ]=-[CQT]<0,\qquad [TEQ]=[QTE]<0.
\]

Since \([ECT]<0\), they put \(Q\) strictly inside \(ECT\).
Set

\[
L=1-r,\quad v=1-u,\quad
\alpha=[ERC]=v-qL,\quad T=(x,y),
\]
\[
H=[CET]=1-y-q(1-x),\qquad
d=[DRT]=vx-r(1-y).
\]

All of \(H,d\) are positive. The affine function
\(X\mapsto[RDX]\) has values

\[
[RDE]=qr,\qquad [RDC]=-v,\qquad [RDT]=-d
\]

at the vertices \(E,C,T\). Every barycentric weight of \(Q\)
in that actual triangle is at least \(s/H\). Also
\([RDQ]\ge s\), since \(Q\) is below \(DR\). Consequently

\[
s\le[RDQ]\le qr-\frac{s}{H}(2qr+v+d).
\]

Equivalently, the following affine expression in \(x,y\) must be
nonnegative:

\[
\boxed{F=(qr-s)H-s(2qr+v+d)\ge0.}                    \tag{1}
\]

Two containing triangles give useful parameter bounds. Both \(Q,T\)
are in \(ECR\), so \(\alpha\ge Ks>13/16\). Also
\(Q\in DER\), so \(qr\ge3s\). Therefore

\[
qL<\frac3{16},\qquad
r>\frac{3s}{3s+3/16}=\frac{128}{201}>\frac12.            \tag{2}
\]

The hull triangle \(CRS\) gives

\[
L(1-t)-(1-k)v\ge s.
\]

Since \(1-t<v\le1\), this implies

\[
\boxed{\frac12<r<1-s=\frac{65}{73},\qquad vL>s.}        \tag{3}
\]

## 2. Two supporting lines eliminate the point T

The coefficient of \(y\) in \(F\) is
\(-[qr-s+sr]<0\), because \(qr\ge3s\). Thus a lower
bound on \(y\) gives an upper bound on \(F\).

First consider \(x\ge r\). The actual area \([RCT]\ge s\)
gives

\[
y\ge u+\frac{s+v(x-r)}{L}.                            \tag{4}
\]

Along this lower line, the derivative of \(F\) with respect to
\(x\) is

\[
-q\left(\frac{r\alpha}{L}+s\right)<0.
\]

Consequently all points with \(x\ge r\) satisfy
\(F\le F_1\), where \(F_1\) is its value at the auxiliary
point

\[
T_1=(r,u+s/L).
\]

Now suppose \(x\le r\). The area \([CRS]\ge s\) bounds

\[
t\le1-\frac{s}{L}-\frac{(1-k)v}{L}.
\]

In
\([RST]=(k-r)(y-u)-(t-u)(x-r)\), the coefficient of \(t\)
is nonnegative. Substitute the displayed upper bound. The resulting
expression increases with \(k\), since its derivative is
\([RCT]/L>0\). Increasing \(k\) to one therefore proves

\[
s\le[RST]
\le L(y-u)-\left(v-\frac{s}{L}\right)(x-r).
\]

Hence

\[
y\ge u+\frac{s}{L}
       +\left(\frac vL-\frac{s}{L^2}\right)(x-r).       \tag{5}
\]

This line has positive slope by (3). Independently, \(d\ge s\)
gives the decreasing line

\[
y\ge1+\frac{s-vx}{r}.                                \tag{6}
\]

The lines (5)--(6) meet at an auxiliary point \(T_0\), whose
abscissa is less than \(r\): at \(x=r\), their respective
heights are \(u+s/L>u+s/r\), by \(r>1/2\).
Along line (6), the derivative of \(F\) is

\[
\frac{qr(qr+v-s)-sv}{r}>0,
\]

because its numerator is at least
\(3s(2s+v)-sv=6s^2+2sv>0\). Thus, to the left of \(T_0\),
\(F\) is bounded above by its value \(F_0\) at \(T_0\).
Between \(T_0\) and \(T_1\), its value on line (5) is affine
and is bounded above by the larger endpoint value. We have proved

\[
\boxed{F\le\max(F_0,F_1).}                            \tag{7}
\]

These are relaxations by affine inequalities; neither auxiliary point
is asserted to be an actual configuration point.

## 3. Raise v to one in both endpoint expressions

Put

\[
J=v-\frac{rs}{L}>s>0.
\]

Direct intersection of the two lines, or barycentric coordinates in
the auxiliary triangle with vertices
\(D,R,(1,1-s/L)\), gives

\[
\begin{aligned}
H_0&=\alpha-
\frac{s(2\alpha+q-s/L)}{J},&d_0&=s,\\
H_1&=\alpha-\frac{s}{L},&d_1&=\frac{rs}{L},\\
F_i&=(qr-s)H_i-s(2qr+v+d_i).&&
\end{aligned}                                         \tag{8}
\]

Both expressions strictly increase with \(v\). Indeed,

\[
\frac{\partial H_0}{\partial v}
=1+\frac{s(2r-1)(q+s/L)}{J^2}>1,
\]

so \(\partial F_0/\partial v>qr-2s>0\). Similarly,
\(\partial F_1/\partial v=qr-2s>0\).
The positivity of all denominators persists as \(v\) increases
to one. It therefore suffices to prove

\[
F_0(q,r,1)<0,\qquad F_1(q,r,1)<0
\quad\left(\frac12\le r\le\frac{65}{73}\right).          \tag{9}
\]

In fact the next calculation proves (9) for every real \(q\), so no
further bound on \(q\) is needed.

## 4. Two quadratic discriminants are strictly negative

At \(v=1\), multiply \(F_0\) by \(LJ=L-rs>0\), and
\(F_1\) by \(L>0\). The resulting polynomials in \(q\) are

\[
\begin{aligned}
N_0={}&(L-rs)\{(qr-s)(1-qL)-s(2qr+1+s)\}\\
     &-s(qr-s)\{2(1-qL)L+qL-s\},\\
N_1={}&L\{(qr-s)(1-qL)-s(2qr+1)\}
             -sqr+s^2L.
\end{aligned}                                         \tag{10}
\]

Their quadratic coefficients are respectively
\(-rL^2(1-s)<0\) and \(-rL^2<0\).
At \(s=8/73\), their discriminants are

\[
\operatorname{disc}_q N_0=\frac{P_0(r)}{28398241},\qquad
\operatorname{disc}_q N_1=\frac{P_1(r)}{5329},            \tag{11}
\]

where

\[
\begin{aligned}
P_0(r)={}&32095521r^4-79935586r^3+66712689r^2
                      -18989360r+270400,\\
P_1(r)={}&6817r^4-16482r^3+13553r^2-3888r+64.
\end{aligned}                                         \tag{12}
\]

Here are direct rational sign checks on the entire interval in (9).
Put \(z=r-4/5\). Then

\[
P_0=32095521z^4+\frac{113850406}{5}z^3
-\frac{47147919}{25}z^2+\frac{780536}{125}z
-\frac{3538544}{625}.                                 \tag{13}
\]

If \(z=-a\), \(0\le a\le3/10\), its fourth and third
powers have sum

\[
a^3\left(32095521a-\frac{113850406}{5}\right)
\le-\frac{131414249}{10}a^3\le0,
\]

and all remaining terms in (13) are negative or nonpositive.
If \(0\le z\le z_*=33/365\), the coefficient in

\[
z^2\left(32095521z^2+
\frac{113850406}{5}z-\frac{47147919}{25}\right)
\]

is at most
\(A_*=57966390072/133225>0\). Thus

\[
P_0\le A_*z^2+\frac{780536}{125}z-\frac{3538544}{625}
\le P_0(65/73)
=-\frac{43748556800}{28398241}<0.                       \tag{14}
\]

For the second quartic,

\[
P_1=6817z^4+\frac{26662}{5}z^3
 +\frac{4337}{25}z^2+\frac{14072}{125}z
 -\frac{11888}{625}.
\]

Its derivative is positive for \(z\ge0\). For \(z=-a\),
\(0\le a\le3/10\), the derivative is bounded below by

\[
\frac{39084}{5}a^2-\frac{8674}{25}a+\frac{14072}{125}>0.
\]

The leading coefficient is positive and the discriminant is
\(-2124721916/625<0\). Therefore \(P_1\) increases throughout
\([1/2,65/73]\), and

\[
P_1(r)\le P_1(65/73)
=-\frac{85999616}{28398241}<0.                          \tag{15}
\]

Both polynomials in \(q\) in (10) have negative leading
coefficient and negative discriminant. They are therefore strictly
negative for every real \(q\). This proves (9), which contradicts
(1) by (7). The complete sign \([QTE]<0\) is excluded. \(\square\)

## Verification

The optional exact diagnostic
[check_unbalanced_final_negative_line.py](check_unbalanced_final_negative_line.py)
checks the determinant identities, endpoint reductions, derivatives,
quadratic coefficients, discriminants, and rational sign bounds.
The continuous argument and both geometric ranges of \(T_x\) are
proved above.
