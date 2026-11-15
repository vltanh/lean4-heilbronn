# The last unbalanced cell and completion of Type II

## Scope and result

Use the final placement from
[UNBALANCED_FINAL_UPPER_PAIR.md](UNBALANCED_FINAL_UPPER_PAIR.md), with

\[
D=(0,1),\ C=(1,1),\ E=(0,1-q),\ B=(b,0),
\quad R=(r,u),\ S=(k,t),
\]
\[
0<b<r<k\le1,\quad0\le u<t<1,\quad0<q<1,
\qquad s=\frac8{73}<2A_0,\quad K=4+2\sqrt3.
\]

The two central points are \(P,Q\). The right hull is \(BRSC\),
with \(T\in BCR\cap BCS\). Previous complete exclusions leave
only the following strict placement:

\[
P\text{ above }CE,DR;\qquad
Q\in ERS\cap EBS\text{ below }CE,DR;\qquad
T\in ECR\cap DCR\cap CQS.
\]

The pair line has \([QTE],[QTC]>0\) and \([QTS]<0\).
All containments refer to interiors. Write
\([XYZ]=\det(Y-X,Z-X)\), and assume every unsigned actual doubled
triangle area is at least \(s\).

**Theorem 1.** This final placement is impossible.

Section 6 assembles this result with the preceding continuous case
exclusions to complete the entire Type-II family. No numerical
optimization, sampled sign calculation, or box search is a premise of
the final argument.

## 1. Two actual-point inequalities

Put

\[
A=[ERC],\quad B_1=[ESC],\quad
\delta=[ERS],\quad \eta=[RSC],\quad J=[DRS].
\]

The coordinate and quadrilateral identities are

\[
\boxed{\delta=kA-rB_1,\qquad
\eta=B_1+\delta-A,\qquad
J=\delta+q(k-r).}                                     \tag{1}
\]

In particular \(0<\delta<A\), since \(k\le1\), \(r>0\),
and \(B_1>0\). Thus \(B_1>\eta\).

### The lower point Q must remain below DR

The affine function \(X\mapsto[RDX]\) has values
\(qr,0,-J\) at \(E,R,S\). The three barycentric weights of
\(Q\in ERS\) are each at least \(s/\delta\). Since
\([RDQ]\ge s\),

\[
s\le[RDQ]\le qr-\frac{s}{\delta}(2qr+J).
\]

Using (1), this gives

\[
\boxed{F:=(qr-2s)\delta-sq(k+r)\ge0.}                 \tag{2}
\]

### The triangle CQS must contain the actual point T

The triangle \(CQS\) contains \(T\), so \([CQS]\ge3s\).
The affine function \(X\mapsto[CXS]\) has values
\(B_1,\eta,0\) at \(E,R,S\). Since \(B_1>\eta\), the
same barycentric bounds at \(Q\) give

\[
3s\le[CQS]\le B_1-\frac{s}{\delta}(2B_1-\eta).
\]

After substitution from (1), this becomes

\[
\boxed{G:=(B_1-2s)\delta-s(A+B_1)\ge0.}               \tag{3}
\]

This inequality implies \(B_1>3s\). First it implies
\(B_1-2s>0\). Then \(\delta<A\) gives

\[
s(A+B_1)\le(B_1-2s)\delta<(B_1-2s)A,
\]

which is stronger than \(B_1>3s\).

## 2. Two monotone scalar replacements

All replacements in this section preserve necessary scalar
inequalities; they do not assert a deformation of the actual points.
The point \(Q\) is inside \(DER\), so

\[
qr\ge3s.                                               \tag{4}
\]

Keep \(q,r,A,B_1\) fixed and increase \(k\) to one in
\(\delta=kA-rB_1\). The coefficient of \(k\) in \(G\)
is \((B_1-2s)A>0\). Its coefficient in \(F\) is also positive:
equation (2) rewrites as

\[
k\{(qr-2s)A-sq\}
\ge r\{(qr-2s)B_1+sq\}>0.
\]

Thus (2)--(3) still hold at \(k=1\).

Next \(A=1-u-q(1-r)\le1-q(1-r)\). At \(k=1\), the
coefficients of \(A\) in \(F,G\) are, respectively,
\(qr-2s>0\) and \(B_1-3s>0\). Increase \(A\) to its upper
bound. Renaming \(B_1\) as \(B_*\) for the scalar calculation,
we are left with the two necessary inequalities

\[
\begin{aligned}
A_*&=1-q(1-r),\qquad \delta_*=A_*-rB_*,\\
F_*&=(qr-2s)\delta_*-sq(1+r)\ge0,\\
G_*&=(B_*-2s)\delta_*-s(A_*+B_*)\ge0.
\end{aligned}                                         \tag{5}
\]

The whole final cell will be excluded by (5), using only three coarse
parameter bounds. The universal estimate in Section 1.2 of
[UNBALANCED_ONE_UPPER_RADIAL.md](UNBALANCED_ONE_UPPER_RADIAL.md)
gives \(q<9/10\). Since both \(Q,T\) are in \(ECR\),
\(A\ge Ks>13/16\). Combining this with (4) gives
\(r>128/201>3/5\), exactly as in (2) of
UNBALANCED_FINAL_NEGATIVE_LINE.md. Finally \([CRS]\ge s\)
and \(t>0\) imply \(1-r>s\). Hence

\[
\boxed{\frac35<r<\frac{65}{73},\qquad
\frac{3s}{r}\le q<\frac9{10}.}                        \tag{6}
\]

## 3. Eliminate B by one positive weighted quadratic

Add the two nonnegative expressions in (5) with fixed positive weight
\(7/2\):

\[
W=F_*+\frac72G_*\ge0.
\]

As a polynomial in \(B_*\), it is the concave quadratic

\[
W=-\frac{7r}{2}B_*^2+\beta(q,r)B_*+\gamma(q,r),          \tag{7}
\]

where

\[
\begin{aligned}
\beta={}&-\frac12\{2qr^2-7qr+7q-18rs+7s-7\},\\
\gamma={}&\frac12\{2q^2r^2-2q^2r-27qrs+2qr
                                  +23qs-25s\}.
\end{aligned}
\]

Its maximum over every real \(B_*\) is

\[
\frac{\Delta(q,r)}{14r},\qquad
\Delta(q,r)=\beta(q,r)^2+14r\gamma(q,r).
\]

Thus (5) requires \(\Delta(q,r)\ge0\).
For each fixed \(r\), this discriminant is a convex quadratic in
\(q\): its \(q^2\) coefficient is the nonnegative square

\[
\frac{(2r^2+7r-7)^2}{4}.
\]

By (6), its value is at most the larger of its endpoint values at
\(q=3s/r\) and \(q=9/10\). At \(s=8/73\), these are

\[
\Delta(3s/r,r)=\frac{P_0(r)}{21316r^2},\qquad
\Delta(9/10,r)=\frac{P_1(r)}{2131600},                  \tag{8}
\]

where

\[
\begin{aligned}
P_0(r)={}&9216r^4-303968r^3+447265r^2-209328r+28224,\\
P_1(r)={}&1726596r^4+8301852r^3-451251r^2
                               -7623182r+2401.
\end{aligned}                                         \tag{9}
\]

## 4. Both quartics are negative throughout the required interval

First set \(z=r-2/3\). The lower-endpoint polynomial expands as

\[
P_0=9216z^4-279392z^3-136095z^2
                         -\frac{22028}{3}z-\frac{21268}{27}.
                                                               \tag{10}
\]

If \(z\ge0\), then \(z<1\); the first two terms have sum
\(z^3(9216z-279392)\le0\), and the other terms are negative
or nonpositive.
If \(z=-a\), then \(0\le a\le1/15\), by \(r\ge3/5\).
Bounding the positive cubic and quartic by multiples of \(a^2\)
gives

\[
P_0\le-117000a^2+\frac{22028}{3}a-\frac{21268}{27}<0.
                                                               \tag{11}
\]

Indeed

\[
136095-\frac{279392}{15}-\frac{9216}{225}-117000
=\frac{32093}{75}>0,
\]

and the last concave quadratic has discriminant

\[
\left(\frac{22028}{3}\right)^2
-4\cdot117000\cdot\frac{21268}{27}
=-\frac{2832575216}{9}<0.
\]

For the upper-endpoint polynomial put \(z=r-3/5\ge0\). Then

\[
\begin{split}
P_1={}&1726596z^4+\frac{62228412}{5}z^3
 +\frac{455538249}{25}z^2\\
 &+\frac{286636988}{125}z-\frac{1698119804}{625}.
\end{split}                                           \tag{12}
\]

Every nonconstant coefficient is positive, so it increases with \(r\)
on the required interval. Its upper endpoint is still negative:

\[
P_1(r)\le P_1(65/73)
=-\frac{1050683136}{5329}<0.                            \tag{13}
\]

Equations (8)--(13) prove \(\Delta(q,r)<0\), contrary to
the nonnegativity required by (7). This proves Theorem 1.
\(\square\)

## 5. The final one-upper cut is now completely excluded

For clarity, no sign or placement alternative is left implicit in the
last step. The preceding proved reductions form this exhaustive chain:

1. [UNBALANCED_ONE_UPPER_RADIAL.md](UNBALANCED_ONE_UPPER_RADIAL.md)
   forces \(Q\) below \(DR\) and \(P,T\) above it.
2. [UNBALANCED_OCCUPIED_LOWER_EAR.md](UNBALANCED_OCCUPIED_LOWER_EAR.md)
   excludes \(Q\in EBR\), so \(Q\) is above \(ER\).
3. [UNBALANCED_FINAL_NEGATIVE_LINE.md](UNBALANCED_FINAL_NEGATIVE_LINE.md)
   excludes \([QTE]<0\).
4. [UNBALANCED_FINAL_UPPER_PAIR.md](UNBALANCED_FINAL_UPPER_PAIR.md)
   proves \(T\in CQS\) in the other sign and excludes \(Q\)
   above \(ES\).
5. Theorem 1 excludes the remaining \(Q\in ERS\) placement.

Any point on an actual dividing line would give a zero triangle, so
these strict alternatives also exhaust all competitive configurations.

## 6. Assembly of the complete Type-II theorem

**Theorem 2.** Every nine-point configuration in the Type-II
normalization has a triangle of area strictly less than
\(A_0=(9\sqrt{65}-55)/320\).

**Proof.** The count reduction in Section 8 of
[TYPE_II.md](TYPE_II.md) leaves only the rows \((2,2,2)\) and
\((1,2,3)\), after the permitted reflection. Theorem 11 of
[TYPE_II_COMPLETION.md](TYPE_II_COMPLETION.md) excludes the entire
balanced row \((2,2,2)\).

For the unbalanced row, Section 11 of TYPE_II.md excludes the cut with
neither central point above \(CE\). Sections 12--14 of
TYPE_II_COMPLETION.md exclude the entire triangular-right-hull branch,
for both remaining cuts.

For a nontriangular right hull, Theorem 1 of
[UNBALANCED_RIGHT_HULL.md](UNBALANCED_RIGHT_HULL.md) leaves exactly
the quadrilateral support cells I, II, and III. Theorem 2 of that note
excludes I and III when both central points are above \(CE\).
[UNBALANCED_UPPER_CELL_II.md](UNBALANCED_UPPER_CELL_II.md)
excludes the remaining two-above cut in cell II.

For the one-above cut,
[UNBALANCED_CELL_I.md](UNBALANCED_CELL_I.md) excludes the whole of
cell I, and [UNBALANCED_CELL_III.md](UNBALANCED_CELL_III.md) excludes
the whole of cell III. Section 5 above exhausts and excludes cell II.
Every count, right-hull type, support cell, and central cut has now
been excluded. This proves Theorem 2. \(\square\)

This theorem closes Type II. It does not claim that the other boundary
normal forms of the unrestricted nine-point problem are complete.

## Verification

The optional exact diagnostic
[check_unbalanced_final_lower_wedge.py](check_unbalanced_final_lower_wedge.py)
checks the area identities, monotone coefficients, quadratic elimination,
convexity, both endpoint polynomials, and all rational signs in the
proof. The case assembly cites the preceding proved exclusions.
