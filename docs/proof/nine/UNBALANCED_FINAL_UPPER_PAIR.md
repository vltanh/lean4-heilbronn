# The final Type-II pair cannot both lie above ES

## Scope and result

Use the final unbalanced placement and notation in
[UNBALANCED_FINAL_NEGATIVE_LINE.md](UNBALANCED_FINAL_NEGATIVE_LINE.md):

\[
D=(0,1),\quad C=(1,1),\quad E=(0,1-q),\quad B=(b,0),
\]
\[
R=(r,u),\quad S=(k,t),\quad b<r<k\le1,\quad0\le u<t<1,
\qquad s=\frac8{73},\quad K=4+2\sqrt3.
\]

The point \(Q\) is above \(ER\), below \(DR,CE\), and
inside \(DBC\). The point \(T\) is above \(DR\), below
\(CE\), and inside both \(BCR,BCS\). All unsigned actual
doubled triangle areas are at least \(s\). The preceding note
excludes \([QTE]<0\), so assume \([QTE]>0\).

**Theorem 1.** The point \(Q\) cannot be above \(ES\).
Thus every remaining configuration has \(Q\in ERS\), below
\(ES\) and above \(ER\).

This proves a complete continuous cell exclusion. The final lower
placement is not excluded here.

## 1. The relevant pair-line signs

We first justify a uniform small-container fact. The five right points
are inside the endpoint triangle on the right of \(BC\), whose
doubled area is \(1-b\). The five-point endpoint bound used in
Section 11 of [TYPE_II.md](TYPE_II.md) gives

\[
s\le(3-2\sqrt2)(1-b),\qquad
3-2\sqrt2<\frac{11}{64}.
\]

Since \(s>7/64\), it follows that \(b<4/11\). The actual
triangle \(DEB\) gives \(bq\ge s>7/64\). Consequently

\[
[EBC]=1-(1-b)q
<1-\frac7{64}\frac{1-b}{b}
<1-\frac{49}{256}=\frac{207}{256}
<\frac{13}{16}<Ks.                                    \tag{1}
\]

The affine expression \([EBX]=bX_y+(1-q)(X_x-b)\)
increases with both coordinates. Thus \([EBS]\le[EBC]<Ks\).
The triangle \(EBS\) has capacity one: it cannot contain both
\(Q,T\).

Orient the pair line by \(L(X)=[QTX]\). We have
\(L(E),L(C)>0\) and \(L(B)<0\). The latter two signs follow
from the opposite sides of \(BC\) containing \(Q,T\).
If \(L(S)>0\), the line cuts the convex quadrilateral
\(E,B,S,C\) only across \(EB,BS\), so its intersection segment
lies in \(EBS\). Both \(Q,T\) are inside that quadrilateral,
and would therefore be inside \(EBS\), contrary to (1).
Hence \(L(S)<0\).

The three side tests now put \(T\) inside \(CQS\):

\[
[CQT]>0,\quad [QST]=-L(S)>0,\quad [SCT]>0.
\]

If \(Q\) is above \(ES\), the whole triangle \(CQS\)
is on the upper side of \(ES\), so \(T\) is above it as well.
We now assume this upper placement for a contradiction. Both points
are inside both \(ECR\) and \(ECS\), the common sector at
\(EC\) of the convex quadrilateral \(E,R,S,C\).

## 2. A quadratic necessary condition for the common sector

Put

\[
A=[ERC],\qquad B_1=[ESC],\qquad
J=2\operatorname{area}(ERSC),\qquad \rho=\frac{13}{16}.
\]

Both containing triangles have two actual interior points. Therefore

\[
A,B_1\ge Ks>\rho,
\qquad J=A+[RSC]\ge A+s.                              \tag{2}
\]

The two base endpoints \(E,C\) are on the same side of \(QT\).
The general quadrilateral inequality (4) of
[FOUR_INTERIOR_QUADRILATERALS.md](FOUR_INTERIOR_QUADRILATERALS.md),
rescaled from doubled quadrilateral area one to \(J\), gives

\[
AB_1-s(A+B_1)>0,
\qquad [AB_1-s(A+B_1)]^2\ge4sJAB_1.
\]

Using (2), the following is necessary:

\[
\boxed{F(A,B_1):=[AB_1-s(A+B_1)]^2
                 -4s(A+s)AB_1\ge0.}                  \tag{3}
\]

## 3. Three actual anchor costs bound both containing areas

Write \(L=1-r\) and \(z=1-t\). The triangles
\(DEB,CRS,BRS\) give

\[
bq\ge s,\qquad Lz\ge s,\qquad
(r-b)t-u(k-b)\ge s.
\]

All terms discarded in the last inequality are nonnegative. Since
\(r-b=1-L-b\), these imply

\[
\left(1-\frac{s}{z}-\frac{s}{q}\right)(1-z)\ge s.
\]

After multiplication by \(qz>0\), this becomes

\[
q\{z(1-z)-s\}\ge sz(1-z).                            \tag{4}
\]

In particular \(D(z):=z(1-z)-s>0\), and
\(q\ge sz(1-z)/D(z)\). Also \(q<1\), so

\[
z(1-z)>\frac{s}{1-s}=\frac8{65}.
\]

We have \(B_1=1-t-q(1-k)\le z\), hence \(z>\rho\).
Since \(z(1-z)\) decreases above \(1/2\), and
\(8/65-6/49=2/3185>0\), the last inequality implies

\[
\boxed{\rho<z<\frac67.}                               \tag{5}
\]

Finally

\[
A=1-u-qL\le1-\frac{qs}{z}
\le 1-\frac{s^2(1-z)}{z(1-z)-s}=: \overline A(z).
                                                               \tag{6}
\]

This upper bound decreases throughout (5):

\[
\overline A'(z)
=-\frac{s^2\{s-(1-z)^2\}}{[z(1-z)-s]^2}<0,
\]

because \((1-z)^2<(3/16)^2<s\). Exact endpoint values give

\[
\overline A(\rho)=\frac{55255}{58327}
=\frac{19}{20}-\frac{3113}{1166540}<\frac{19}{20},
\]
\[
\overline A(5/6)=\frac{5237}{5621}
=\frac{15}{16}-\frac{523}{89936}<\frac{15}{16}.
\]

Therefore all possibilities lie in one of two rectangles:

| Range of \(z\) | Upper bound on \(A\) | Upper bound on \(B_1\) |
|---|---:|---:|
| \(\rho<z\le5/6\) | \(19/20\) | \(5/6\) |
| \(5/6\le z<6/7\) | \(15/16\) | \(6/7\) |

## 4. Both endpoint rectangles contradict the quadratic

For fixed \(A>s\), the expression in (3) is an upward quadratic
in \(B_1\), negative at the positive zero of its bracket.
Thus nonnegativity together with the positive bracket is preserved by
increasing \(B_1\) to its listed upper endpoint.

For either endpoint \(B_*\ge\rho\), the coefficient of \(A^2\)
is positive:

\[
(B_*-s)^2-4sB_*
\ge(\rho-s)^2-4s\rho
=\frac{188153}{1364224}>0.
\]

The inequality uses the fact that the left expression increases for
\(B_*\ge\rho>3s\). The same larger-root argument therefore
allows increasing \(A\) to its listed endpoint. However,

\[
F(19/20,5/6)=-\frac{312517}{25579200}<0,
\]
\[
F(15/16,6/7)=-\frac{8559}{16711744}<0.                  \tag{7}
\]

Both rectangles contradict (3). This excludes the entire upper
placement \(Q\) above \(ES\). Incidence with \(ES\) would
give a zero actual triangle. The remaining point \(Q\) is therefore
below \(ES\), above \(ER\), and on the inward side of the hull
edge \(RS\), precisely the three side tests for \(Q\in ERS\).
\(\square\)

## Verification

The optional exact diagnostic
[check_unbalanced_final_upper_pair.py](check_unbalanced_final_upper_pair.py)
checks the determinants, area scaling, parameter elimination,
monotonicity, and both rational endpoint gaps. No numerical optimization
or sampling is an input to this proof.
