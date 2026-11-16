# Complete exclusion of unbalanced right support cell I

## Scope and result

Use the Type-II anchors and threshold

\[
D=(0,1),\quad C=(1,1),\quad E=(0,\lambda),\quad B=(b,0),
\quad0<b\le\tfrac12,\quad0<\lambda<1,\quad q=1-\lambda,\quad w=1-b,
\quad s=\tfrac7{64},\quad K=4+2\sqrt3.
\]

Suppose every actual doubled triangle area is at least \(s\).
The right hull is the quadrilateral \(B,R,S,C\), in cyclic order,
with its fifth point in support cell I:

\[
T\in\operatorname{int}(BRS)\cap\operatorname{int}(BCR).
\]

The support-cell correspondence is proved in
[UNBALANCED_RIGHT_HULL.md](UNBALANCED_RIGHT_HULL.md).

**Theorem 1.** No further actual point \(Q\) can lie in the central
triangle \(DBC\) below \(CE\).

This closes the complete one-point upper cut in cell I. The two-point
upper cut there was already excluded by Theorem 2 of the preceding note.
Thus **cell I is excluded from the entire remaining unbalanced Type-II
row**. Cells II and III are not claimed closed here.

Write \(R=(r,u)\), \(S=(k,t)\), and let
\([XYZ]=\det(Y-X,Z-X)\). The following are positive doubled areas:

\[
U=[BRS],\quad V=[CRS],\quad g=[BRC],\quad
\delta=[EBR],\quad J=[ERS],\quad\alpha=[ERC].              \tag{1}
\]

The container and convex order imply \(r>u\), \(b<r<k\le1\),
and \(0\le u<t<1\). To check \(k>r\), put
\(x=(r-b)/w\), \(y=u\), \(z=(k-b)/w\). The exact identity

\[
\frac Vw=\frac{(x-y)(z-x)-(1-x)U/w}{x}
\]

and \(U,V>0\), \(x>y\), force \(z>x\). Then \(U>0\)
gives \(t>u\).

## 1. Parameter bounds and an empty lower ear

The endpoint-triangle estimate for cell I gives

\[
w\ge Ks>\frac{13}{16},\qquad b<\frac3{16}.               \tag{2}
\]

We also have

\[
b>\frac{13}{100}>\frac18.                                \tag{3}
\]

Indeed Section 4.2 of UNBALANCED_RIGHT_HULL.md uses only the cell-I
ear inequality, \(bq\ge s\), and \(s\le b\le13/100\).
Its positive polynomial contradicts that ear inequality throughout this
interval. That subsection does not use the two-point upper cut, so its
argument proves (3) here as well.

Put \(c=1-wq\), \(d=bs/w\). The ear inequality is

\[
s\le\delta\le c-2d-2\sqrt{cd}.                          \tag{4}
\]

Now \(bq\ge s\) implies
\(c\le1+s-s/b<101/192=:C_0\), while (3) implies
\(d>1/64=:d_0\). The right side of (4) increases with \(c\)
for \(c>d\), and decreases with \(d\). Here
\(c/d\ge w/s>1\), so both replacements are valid. Consequently

\[
\delta<C_0-2d_0-2\sqrt{C_0d_0}<3s.                      \tag{5}
\]

For the last comparison, \(C_0-2d_0-3s=1/6\), whereas
\(4C_0d_0=101/3072>1/36\). Therefore \(EBR\) contains no
further actual point: one such point would subdivide it into three
actual triangles of doubled area at least \(s\).

## 2. A universal bound for ERS

This section applies to every right quadrilateral with \(b\le1/2\).
The actual triangle \(RCS\) gives

\[
(1-r)(1-t)-(1-u)(1-k)\ge s.
\]

Substitute the resulting upper bound for \(t\) in
\(J=r(t-\lambda)-(u-\lambda)k\). Its coefficient of \(k\)
becomes \((r-u)/(1-r)+\lambda>0\); increasing \(k\) to one gives
\(J\le r-rs/(1-r)-u+\lambda(1-r)\).
Use \(u\ge0\), \(\lambda\le1-s/b\), and put \(z=1-r\).
Arithmetic-geometric mean gives

\[
\boxed{J\le1+s-s\left(\frac1z+\frac zb\right)
\le1+s-\frac{2s}{\sqrt b}.}                              \tag{6}
\]

For \(b\le1/2\), this is less than \(Ks\): the elementary
bounds \(\sqrt2>7/5\), \(\sqrt3>12/7\) imply
\((K+2\sqrt2-1)s>323/320>1\).
Thus \(ERS\) contains at most one further actual point.
In cell I, \(b<3/16<(7/16)^2\), so (6) also gives

\[
\boxed{J<\frac12+s=\frac{39}{64}.}                       \tag{7}
\]

## 3. Q and T lie in ECR, and Q lies in ECS

Every right point is below \(CE\): its container is below \(BC\),
and for \(x<1\) the line \(CE\) lies above \(BC\), since
their slopes are \(q<1<1/w\) and both pass through \(C\).

Suppose \(Q\) exists as in Theorem 1. Then \(Q\in EBC\),
\(T\in BCR\), and both triangles are in the convex quadrilateral
\(E,B,R,C\). Its diagonal \(ER\) partitions it into \(EBR\)
and \(ECR\). The former is empty by (5), hence
\(Q,T\in\operatorname{int}(ECR)\).

Similarly \(T\in BRS\subset EBRS\); the diagonal \(ER\)
and the empty ear put it in \(ERS\). The quadrilateral \(E,R,S,C\)
is partitioned by \(ES\) into \(ERS\) and \(ECS\).
The capacity-one bound (6) now forces

\[
\boxed{Q\in\operatorname{int}(ECS),\qquad
T\in\operatorname{int}(BRS)\cap\operatorname{int}(ERS).}  \tag{8}
\]

## 4. The containing triangle has doubled area below 8s

The occupied lower-ear inequality is
\((r-b-wu)(1-r)\ge s(3-b-2r)\). Since \(u\ge0\),

\[
F(r):=(r-b)(1-r)-s(3-b-2r)\ge0.
\]

At \(r_0=1-2s\), however, \(F(r_0)=s(w-8s)<0\), by (3).
For \(r\ge r_0\), (2) gives
\(F'(r)=1+b-2r+2s<-5/32<0\). Thus \(r<1-2s\).
Also \(q\ge s/b>7/12\), so

\[
\boxed{\alpha=1-u-q(1-r)
<1-\frac7{12}\,2s=\frac{335}{384}<8s.}                    \tag{9}
\]

## 5. A rigidity consequence for two interior points

**Lemma 2.** Suppose the actual triangle \(VAB\) contains two actual
points \(X,Y\), every doubled triangle on these five points is at
least \(s>0\), and its doubled area \(H\) is less than \(8s\).
If \(XY\) isolates \(V\) from \(A,B\), then both opposite
areas \([ABX]_{\rm abs},[ABY]_{\rm abs}\) are greater than \(2s\).

**Proof.** Put \(a=[VXY]_{\rm abs}\),
\(c=[AXY]_{\rm abs}\), \(d=[BXY]_{\rm abs}\).
The line-coordinate proof of the two-interior-point lemma gives

\[
H\ge\frac{(a+c)(a+d)}a
 +s\left(\frac{a+c}{a}+\frac{a+d}{a}\right)
\ge a+4s+\frac{3s^2}{a}.                                \tag{10}
\]

Here is a direct derivation. Make a determinant-one affine change taking
\(X,Y\) to \((0,0),(1,0)\), and let the line meet \(VA,VB\) at \(U,W\), in the order
\(U,X,Y,W\). The signed heights of \(V,A,B\) are \(a,-c,-d\).
Set \(l=(a+c)/a\), \(m=(a+d)/a\).
The actual areas \(VAX,VBY\) imply
\(UX\ge s/(la)\), \(YW\ge s/(ma)\).
Thus \(UW\ge1+s/(la)+s/(ma)\); multiplying by \(lm a\)
gives the first inequality in (10). The second uses \(c,d\ge s\).

If \(a\ge3s\), the final expression is at least \(8s\), since
its difference from \(8s\) is \((a-s)(a-3s)/a\).
Hence \(a<3s\). At either interior point the barycentric weight
\(\theta\) of \(V\) satisfies
\(a\theta\ge s(1-\theta)\), by the affine signed-height identity.
Its opposite subtriangle consequently has doubled area at least

\[
H\theta\ge\frac{Hs}{a+s}
\ge s+\frac{3s^2}{a}>2s.
\]

This proves the lemma. \(\square\)

## 6. Two opposite-area caps at T

### 6.1. The area CRT is below 2s

Use the right support normalization of TYPE_II.md, Section 1, sending
\(B,C,R,S\) respectively to
\(A=(0,0),Z=(1,1),H=(0,h),F=(f,1)\), with \(0<h,f<1\).
Its area scale is \(\Omega\le w<7/8\), so each normalized
doubled area exceeds \(1/8\). Use the weaker fixed threshold
\(a=1/8\). The image \(X\) of \(T\) is in \(AHF\cap AZH\).

Put \(U_*=hf\), \(V_*=(1-h)(1-f)\). Then \(U_*\ge3a\),
\(V_*\ge a\). Each barycentric weight of \(X\) in \(AHF\)
is at least \(a/U_*\). The affine functional \([ZHX]\) has
values \(h,0,-V_*\) at \(A,H,F\). Therefore

\[
[ZHX]\le h-\frac{a(2h+V_*)}{hf}.                        \tag{11}
\]

The right side equals \(h+a(1-h)/h-a(1+h)/(hf)\), and increases
with \(f\). Replace \(f\le1-a/(1-h)\).
The two bounds on \(U_*,V_*\) also give
\((h-1/2)(h-3/4)\le0\), so \(1/2\le h\le3/4\).
After the replacement, the numerator of the bound in (11) minus
\(2a=1/4\), over the positive denominator \(h(1-h-a)\), is

\[
P(h)=(h-2a)h(1-h-a)-a(2h+a)(1-h).
\]

At \(a=1/8\), the exact certificate is

\[
64P(h)=-24(h-3/4)^2-64(h-5/8)^2(h-1/2)<0.               \tag{12}
\]

Both terms are nonpositive on the stated interval and cannot vanish
together. Scaling \([ZHX]<1/4\) back gives

\[
\boxed{[RCT]<\Omega/4\le w/4<2s.}                       \tag{13}
\]

### 6.2. The area ERT is below 2s

The support normalization gives
\(\sqrt U+\sqrt V\le\sqrt\Omega\le\sqrt w\).
Since \(V\ge s\), \(w<7/8<(15/16)^2\), and
\(s>(21/64)^2\),

\[
\sqrt U<15/16-21/64=39/64,\qquad
U<U_0:=1521/4096.                                       \tag{14}
\]

Each barycentric weight of \(T\) in \(BRS\) is at least \(s/U\).
The affine function \([ERX]\) has values \(-\delta,0,J\) at
\(B,R,S\). Hence
\([ERT]\le J-s(2J+\delta)/U\).
Replace \(\delta\ge s\), \(J<J_0:=39/64\), and \(U<U_0\).
These replacements increase the expression: its coefficient of \(J\)
is \(1-2s/U>0\), since \(U\ge3s\), and after replacing
\(\delta\) by \(s\) it increases with \(U\). Thus

\[
\boxed{[ERT]<J_0-\frac{s(2J_0+s)}{U_0}
=\frac{21239}{97344}=2s-\frac{55}{97344}<2s.}              \tag{15}
\]

## 7. All three pair-line orientations are impossible

The line \(QT\) passes through two interior points of \(ECR\),
so it isolates exactly one of \(E,C,R\). If it isolates \(E\),
Lemma 2 and (9) require \([RCT]>2s\), contradicting (13).
If it isolates \(C\), they require \([ERT]>2s\), contradicting
(15).

If it isolates \(R\), orient its signed affine height with
\(E,C\) positive and \(R\) negative. The segment joining
\(Q\in EBC\) and \(T\in BCR\) crosses the relative interior
of the diagonal \(BC\) of the convex quadrilateral \(EBRC\).
Thus \(B,C\) have opposite signed heights, and \(B\) is negative.
Since \(T\in BRS\), while \(B,R\) are negative, \(S\) must
be positive. Since \(Q\in ECS\), while \(E,C\) are positive,
\(S\) must be negative. This contradiction excludes the last
alternative and proves Theorem 1. \(\square\)

## Verification

[check_unbalanced_cell_i.py](check_unbalanced_cell_i.py) verifies the
signed area identities, all substitutions, the rigidity identity,
the negative-square certificate (12), and the rational caps exactly.
No numerical optimization is a premise.
