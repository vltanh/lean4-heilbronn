# Mixed-pair cells with seven boundary contacts

## Scope and notation

Use the seven-boundary normalization of
[SEVEN_BOUNDARY_CAPS.md](SEVEN_BOUNDARY_CAPS.md):

\[
A=(0,a),\ H=(0,h),\ B=(b,0),\ C=(c,0),\
D=(1,d),\ E=(1,e),\ F=(f,1),
\]
\[
0<a<h<1,\quad0<b<c<1,\quad0<d<e<1,\qquad
b\le f\le c,\quad f\le\tfrac12.
\]

The two other actual points are \(P,Q\). Write
\([XYZ]=\det(Y-X,Z-X)\), and fix

\[
s=\frac7{64},\qquad K=4+2\sqrt3,\qquad \rho=\frac{13}{16}<Ks.
\]

Assume every unsigned actual doubled triangle area is at least \(s\).
This note excludes one complete pair cell, with no assumptions on the
sign of the line through the two points. It also records its application
to the mixed left/right placement. It does not yet exclude every mixed
placement.

The anchor inequalities used below are

\[
M=c-b,\quad w=1-c,\qquad
h\ge\frac{s}{M}+\frac{s}{b},\quad
e\ge\frac{s}{M}+\frac{s}{w},\quad
(1-f)h+fe\le1-s.                                        \tag{1}
\]

These follow from \(ABC,ABH,BCD,CDE,HEF\).
In particular \(b>1/8\): the first inequality and \(h<1\) give
\(bM>s(b+M)=sc\), and \(c<1\) then gives \(b(1-b)>s\).
The smaller root of \(b(1-b)=7/64\) is \(1/8\).

## 1. The common cell of HBE and BEF is empty of pairs

**Theorem 1.** The two free points cannot both belong to
\[
                         HBE\cap BEF.
\]

All containments may be taken strict, since an actual dividing edge
otherwise gives a zero triangle. Set

\[
\mathcal A=[HBE]=(1-b)h+be,\qquad
\mathcal B=[BEF]=1-b-e(f-b),
\]
\[
\mathcal J=[HBEF]=1+(h-e)(f-b),\qquad
U=[HEF]=\mathcal J-\mathcal A.
\]

The two-interior-point triangle theorem implies

\[
\mathcal A,\mathcal B\ge Ks>\rho,\qquad U\ge s.            \tag{2}
\]

### The bottom contact must satisfy b > 2/15

Suppose \(b\le2/15\). Since \(\mathcal B>\rho\),

\[
b+e(f-b)<\frac3{16}.
\]

Cauchy--Schwarz in (1), using \(M+w=1-b\), gives
\(e\ge4s/(1-b)\). Hence

\[
f<
b+\frac{(3/16-b)(1-b)}{4s}
\le\frac14.                                             \tag{3}
\]

For the last inequality, the displayed rational expression decreases
on \(1/8\le b\le2/15\), and its value at \(1/8\) is \(1/4\).

Another use of Cauchy--Schwarz in (1) yields

\[
1-s\ge
s\left\{\frac{1-f}{b}
+\frac{(1+\sqrt f)^2}{1-b}\right\}.                       \tag{4}
\]

For fixed \(b\le2/15\), the expression in braces decreases for
\(b\le f\le1/4\). Indeed its derivative in \(f\) is

\[
-\frac1b+\frac{1+1/\sqrt f}{1-b}
<-\frac{15}{2}+\frac{60}{13}<0,
\]

because \(f\ge b>1/8>1/9\). Substituting \(f=1/4\) leaves

\[
\frac3{4b}+\frac9{4(1-b)}.
\]

This also decreases on \(b\le2/15\); its derivative is negative
because \(3b^2<(1-b)^2\) there. Thus (4) would imply

\[
1-s\ge
s\left(\frac{45}{8}+\frac{135}{52}\right)
=\frac{5985}{6656}
=(1-s)+\frac{57}{6656},
\]

a contradiction. Therefore

\[
\boxed{\frac2{15}<b<\frac3{16},\qquad
e\ge\frac{4s}{1-b}>\frac{105}{208}>\frac12.}               \tag{5}
\]

The upper bound on \(b\) follows from \(\mathcal B\le1-b\)
and (2).

### Two small triangles eliminate the containment alternatives

Put \(\delta=f-b\ge0\). By (2) and (5),

\[
e\delta<\frac3{16}-b,\qquad
f=b+\delta<\frac38-b<\frac{29}{120}.                     \tag{6}
\]

Also \(h-e\le1-e<e\), so

\[
\mathcal J\le1+e\delta<\frac{19}{16}-b,
\qquad
U=\mathcal J-\mathcal A<\frac38-b<\frac{29}{120}.          \tag{7}
\]

Both endpoint values

\[
[HBF]=b(1-h)+fh\le f,\qquad [HEF]=U
\]

are therefore below \(29/120<3s\). The signed affine function
\(X\mapsto[HFX]\) has one constant sign on the triangle \(BEF\),
and vanishes at \(F\). Consequently every \(X\in BEF\) satisfies

\[
\boxed{|[HFX]|<\frac{29}{120}<3s.}                        \tag{8}
\]

Thus neither free point can lie in the triangle formed by \(H,F\)
and the other free point: such a triangle would be subdivided into
three actual triangles, requiring doubled area at least \(3s\).

The canonical overlap parameter is positive, as required by the
central-cell line identities:

\[
\mathcal A+\mathcal B-\mathcal J
=\mathcal B-U>\frac{13}{16}-\frac{29}{120}
=\frac{137}{240}>0.                                    \tag{9}
\]

### Every remaining line sign has one common necessary inequality

Apply the central-cell identities in Section 1 of
[ONE_CORNER_COMPLETION.md](ONE_CORNER_COMPLETION.md) to the cyclic
quadrilateral \(B,E,F,H\), with common edge \(BE\).
If \(B,E\) are on the same side of \(PQ\), those identities give

\[
[\mathcal A\mathcal B-s(\mathcal A+\mathcal B)]^2
\ge4s\mathcal J\mathcal A\mathcal B,
\qquad
\mathcal A\mathcal B-s(\mathcal A+\mathcal B)>0.            \tag{10}
\]

If \(B,E\) are on opposite sides, their three possible remaining
line-sign patterns consist of the containment alternative excluded by
(8), or one of the two inequalities with positive bracket

\[
[\mathcal A\mathcal B-s(\mathcal J+\mathcal A)]^2
\ge4s\mathcal J\mathcal A\mathcal B
\]

and its version with \(\mathcal A,\mathcal B\) interchanged.
Because \(\mathcal J>\mathcal A,\mathcal B\), either implies (10).
Thus (10) is necessary in every remaining sign pattern.

We exclude it for both orders of \(h,e\).

### If h <= e

Here \(\mathcal J\le1\), so
\(\mathcal A\le\mathcal J-s\le1-s\). Also
\(\mathcal B<1-b<13/15\). Decrease
\(\mathcal J\ge\mathcal A+s\) to \(\mathcal A+s\) in (10).

For fixed \(\mathcal A\), the resulting polynomial in \(\mathcal B\)
is an upward quadratic, negative at the positive zero of its bracket.
Thus its nonnegative value and positive bracket are preserved by
increasing \(\mathcal B\) to \(13/15\).
The resulting polynomial in \(\mathcal A\) is also upward, since its
leading coefficient is

\[
(13/15-s)^2-4s(13/15)=\frac{179089}{921600}>0.
\]

The same root comparison increases \(\mathcal A\) to \(1-s\).
The final required polynomial value is, however,

\[
\left[(1-s)\frac{13}{15}
-s\left(1-s+\frac{13}{15}\right)\right]^2
-4s(1-s)\frac{13}{15}
=-\frac{1265779}{754974720}<0.                            \tag{11}
\]

This excludes this order.

### If h >= e

Put
\[
t=(h-e)\delta\ge0,\qquad A_0=1-s,\quad B_0=1-b.
\]

Then \(\mathcal J=1+t\). By (2),

\[
\mathcal A\le A_0+t.
\]

Also \(h-e\le1-e\le e\), so

\[
\mathcal B=B_0-e\delta\le B_0-t.                         \tag{12}
\]

In particular \(B_0-t\ge\mathcal B>s\).
Define
\[
\mathcal L(X,Y)=\frac{XY-s(X+Y)}{\sqrt{XY}}.
\]

For \(X,Y>s\), this function increases with each variable; for example

\[
\frac{\partial\mathcal L}{\partial X}
=\frac{X(Y-s)+sY}{2X\sqrt{XY}}>0.
\]

Equation (12) therefore gives

\[
\mathcal L(\mathcal A,\mathcal B)
\le\mathcal L(A_0+t,B_0-t)
\le\mathcal L(A_0,B_0)
<\mathcal L(A_0,13/15).                                 \tag{13}
\]

For the middle inequality, the two arguments have constant sum
\(A_0+B_0\). Their product
\((A_0+t)(B_0-t)\) decreases for \(t\ge0\), since \(A_0>B_0\).
For fixed positive sum \(S\), the function
\((p-sS)/\sqrt p\) increases with \(p>0\).
The last inequality uses \(b>2/15\).

The endpoint gap (11) shows
\(\mathcal L(A_0,13/15)<2\sqrt s\).
But (10) requires
\[
\mathcal L(\mathcal A,\mathcal B)
\ge2\sqrt{s\mathcal J}\ge2\sqrt s,
\]
contradicting (13).

Both height orders and every line sign have been excluded. This proves
Theorem 1. \(\square\)

## 2. Application when the mixed left point is below HC

In the mixed placement, let \(P\) belong to the left pentagon
\(ABCFH\), and \(Q\) belong to \(CEF\).
The empty ears \(ABC,ABH\), proved in SEVEN_BOUNDARY_CAPS.md, put a
point \(P\) below \(HC\) inside \(AHC\cap HBC\).

In this case \(Q\) must be below \(HE\).
Indeed the five actual points \(H,C,A,B,P\) lie in the triangle
with vertices \((0,0),H,C\). The endpoint-triangle theorem in
[TYPE_II.md](TYPE_II.md), Section 1, gives

\[
hc\ge\frac{s}{3-2\sqrt2}>\frac7{11}.
\]

As \(c<1-s\), this implies
\(h>448/627>1-3s\).
If \(Q\) were above \(HE\), it would belong to \(HEF\), whence
\(U\ge3s\). The top budget
\((1-f)h+fe\le1-3s\) would force \(e<h\), and then, since
\(f\le1/2\), would imply
\(h+e\le2-6s\).

On the other hand, \(e\ge s/M+s/(1-c)>s/c+s/(1-c)\), so

\[
h+e>
\frac{7/11+s}{c}+\frac{s}{1-c}
\ge\left(\sqrt{7/11+s}+\sqrt s\right)^2
>\left(\frac67+\frac{21}{64}\right)^2
>2-6s.
\]

The two radical comparisons follow by squaring; the final gap is
\(12265/200704>0\). This is a contradiction.

Consequently \(P,Q\) are both below \(HE\). If they were also both
above \(BE\), and \(P\) were on the \(C\)-side of \(BF\), they
would both belong to \(HBE\cap BEF\): \(Q\in CEF\) is already on
the \(C\)-side of \(BF\), and the two upper boundary edges are
\(HE,EF\). Theorem 1 excludes this entire mixed subplacement.

The alternatives in which \(P\) is above \(HC\), or in which the
last \(BE,BF\) side conditions fail, are not claimed to be excluded
by this note.

## Verification

The optional exact diagnostic
[check_seven_boundary_mixed_pair.py](check_seven_boundary_mixed_pair.py)
checks the area formulas, derivatives, endpoint gaps, and the radical
comparisons. The continuous bounds, geometric containments, and
exhaustive line-sign argument are proved above.
