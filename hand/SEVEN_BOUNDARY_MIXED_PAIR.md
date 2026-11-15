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
This note excludes two complete pair cells, with no assumptions on the
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
last \(BE,BF\) side conditions fail, are not excluded by this
application of Theorem 1.

## 3. The common cell of ACE and ADE is empty of pairs

**Theorem 2.** The two free points cannot both belong to
\[
                         ACE\cap ADE.
\]

Put
\[
R=e-d,\quad
\mathcal A=[ACE]=ce+(1-c)a,\quad
\mathcal J=[ACDE]=[ACD]+R.
\]
The pair-containing triangles give
\[
\mathcal A,R\ge Ks>\rho,\qquad
\mathcal J\ge\mathcal A+s,                              \tag{14}
\]
where the last inequality is the actual triangle \(CDE\).

### Coarse anchor bounds and both containment signs

Since \(R>\rho\), one has \(d<3/16\), and \(dM\ge s\) gives
\(M>7/12\). Thus
\[
b<c-\frac7{12}<1-s-\frac7{12}
=\frac{59}{192}<\frac13.                                \tag{15}
\]

Also \(b>1/8\), so \(M<1-s-b<49/64\). Therefore
\[
e=d+R>\frac{s}{M}+\rho>\frac17+\frac{13}{16}
=\frac{107}{112}>1-s.
\]
The top budget in (1) forces \(h<1-s\).

In fact \(b>1/7\). If \(b\le1/7\), then
\[
h\ge\frac{s}{1-s-b}+\frac{s}{b}
\ge\frac{19551}{21440}
=(1-s)+\frac{57}{2680},
\]
a contradiction. The reciprocal expression decreases on
\(0<b\le1/7\), which justifies the endpoint replacement.
Consequently
\[
\boxed{
\frac17<b<\frac13,\quad a<h-\frac{s}{b}<\frac9{16},
\quad d<\frac3{16},\quad
w=1-c<1-\frac17-\frac7{12}=\frac{23}{84}.}               \tag{16}
\]

These bounds give
\[
[ACD]=(1-c)a+cd
<\frac3{16}+\frac38\frac{23}{84}
=\frac{65}{224}<3s.
\]
Also \([CDE]=wR<w<23/84<3s\), directly from (16) and \(R<1\).
For every \(X\in ADE\), the affine function \(X\mapsto[CDX]\)
has values \([ACD],0,[CDE]\) at \(A,D,E\). Hence
\[
                         [CDX]<3s.                     \tag{17}
\]
Neither free point can lie in the triangle formed by \(C,D\) and
the other free point.

The overlap parameter is
\[
\mathcal A+R-\mathcal J=cR>0.
\]
The exhaustive central-cell line argument used in Theorem 1 therefore
applies with common edge \(AE\) and the other two vertices \(C,D\).
After (17) removes the containment signs, every other sign requires
\[
[\mathcal A R-s(\mathcal A+R)]^2
\ge4s\mathcal J\mathcal A R,\qquad
\mathcal A R-s(\mathcal A+R)>0.
\]
Using (14), it follows that
\[
F(\mathcal A,R):=
[\mathcal A R-s(\mathcal A+R)]^2
-4s(\mathcal A+s)\mathcal A R\ge0.                       \tag{18}
\]

### The two containing areas have a one-variable upper bound

The bound \(h<e\), together with \(f\ge b\), gives
\[
(1-b)h+be\le1-s.
\]
Since \(h-a\ge s/b\),
\[
a\le\frac{1-s-be}{1-b}-\frac{s}{b}.
\]
Also \(a<e\), and \(c\le1-s/R\) by the triangle \(CDE\).
These inequalities imply
\[
\begin{aligned}
\mathcal A
&=e-(1-c)(e-a)\\
&\le e-\frac{s}{R}
 \left\{\frac{e-1+s}{1-b}+\frac{s}{b}\right\}\\
&\le1-\frac{s^2}{Rb(1-b)}.                              \tag{19}
\end{aligned}
\]
For the last replacement, the preceding expression increases with
\(e\): its derivative is \(1-s/[R(1-b)]>0\), because
\(R(1-b)>R(1-c)\ge s\).

The lower triangle \(BCD\) and \(e\le1\) give
\[
s\le dM
\le(1-R)\left(1-b-\frac{s}{R}\right).
\]
After multiplication by \(R>0\), this simplifies to
\[
R(1-R)(1-b)\ge s.
\]
Thus
\[
b\le u(R):=1-\frac{s}{R(1-R)}.
\]
This upper bound is positive and satisfies
\[
u(R)\le1-\frac{s}{\rho(1-\rho)}
=\frac{11}{39}<\frac12,
\]
since \(R\ge\rho>1/2\). Hence \(b(1-b)\le u(R)(1-u(R))\).
Equation (19) now gives
\[
\boxed{
\mathcal A\le\overline A(R)
:=1-\frac{s(1-R)}{u(R)}
=1-\frac{sR(1-R)^2}{R(1-R)-s}.}                         \tag{20}
\]

We also have a short fixed interval for \(R\). From \(b>1/7\),
\[
M<1-s-\frac17=\frac{335}{448},\quad
d>\frac{49}{335},\quad
R<\frac{286}{335}<\frac67.
\]
Therefore
\[
                         \frac{13}{16}<R<\frac67.       \tag{21}
\]

### A single polynomial sign closes the cell

For fixed \(R\) in (21), \(F(\mathcal A,R)\) is an upward quadratic
in \(\mathcal A\). Indeed its leading coefficient is
\[
(R-s)^2-4sR
\ge(\rho-s)^2-4s\rho=\frac{569}{4096}>0.
\]
At the positive zero of its bracket it is negative.
Thus the positive bracket and nonnegative value in (18) would be
preserved by increasing \(\mathcal A\) to \(\overline A(R)\).

Direct substitution gives
\[
F(\overline A(R),R)
=\frac{N(R)}{4096(8R-7)^2(8R-1)^2},
\]
where
\[
\begin{split}
N(R)={}&200704R^8+2334080R^7+2783201R^6-22065668R^5\\
&+28243972R^4-13878718R^3+2580732R^2-175616R+2401.
\end{split}                                             \tag{22}
\]

Its denominator is positive on (21), and its numerator is negative
throughout that interval. Here is an elementary coefficient certificate.
Put \(x=6/7-R\), so \(0<x<5/112<1/20\). The exact expansion is
\[
\begin{split}
N={}&-\frac{80639}{2401}-\frac{6306568}{2401}x
-\frac{283838904}{2401}x^2-\frac{1780921934}{343}x^3\\
&+\frac{1145488408}{49}x^4-\frac{247361416}{7}x^5
+20916449x^6-3710336x^7+200704x^8.
\end{split}
\]
Discard the negative cubic, fifth, and seventh powers. Bound the
three positive higher even powers by \(x^2/20^2\),
\(x^2/20^4\), and \(x^2/20^6\), respectively.
The resulting coefficient of \(x^2\) is
\[
-\frac{283838904}{2401}
+\frac{1145488408}{49\cdot400}
+\frac{20916449}{160000}
+\frac{200704}{64000000}
=-\frac{572810756110631}{9604000000}<0.
\]
The constant and linear terms are negative as well, so \(N(R)<0\).

This contradicts (18) after the allowed replacement (20).
All line signs have been excluded, proving Theorem 2. \(\square\)


## 4. The mixed left point cannot be above AF

**Theorem 3.** In the mixed left/right placement, the left point \(P\)
belongs to \(ACF\).

Here \(P\) is in the left pentagon \(ABCFH\), and the right point
\(Q\) is in \(CEF\). The latter placement follows from the empty
triangle \(CDE\).

First suppose that \(P\) is below \(HC\) and above \(AF\).
The empty ear \(ABH\) puts \(P\) inside \(HBC\), and the left-pentagon
hypothesis puts it inside \(AHF\). The four-point inequalities and
their rational consequences in Sections 1--2 of
[SEVEN_BOUNDARY_LEFT_PAIR.md](SEVEN_BOUNDARY_LEFT_PAIR.md) therefore
apply to this point. Those sections use only this one point and the
seven anchors; they do not use the location of the second free point.
Their bounds include

\[
f>\frac{97}{200},\quad c>\frac45,\quad
\frac{33}{200}<d<\frac{391}{1600},\quad
e<\frac{633}{800}.                                     \tag{23}
\]

They make both triangles in the right quadrilateral too small to
contain \(Q\). For \(CDF\), the expression \(1-c+d(c-f)\)
decreases with \(c,f\) and increases with \(d\) on the relevant range.
Thus

\[
[CDF]<
1-\frac45+\frac{391}{1600}
 \left(\frac45-\frac{97}{200}\right)
=\frac{88633}{320000}<3s.
\]

For the other triangle,

\[
[DEF]=(1-f)(e-d)
<\frac{103}{200}
 \left(\frac{633}{800}-\frac{33}{200}\right)
=\frac{51603}{160000}<3s.                               \tag{24}
\]

The diagonal \(DF\) partitions \(CDEF\) into these two triangles.
An actual point in either would give three actual triangles and
require its doubled area to be at least \(3s\). This contradicts
\(Q\in CEF\subset CDEF\). Hence \(P\) cannot be below \(HC\) and
above \(AF\).

If \(P\) is above both \(HC\) and \(AF\), it belongs to the upper
left overlap \(HCF\cap AHF\), which is empty by Theorem 7 of
SEVEN_BOUNDARY_CAPS.md. Incidence with either actual line gives a zero
triangle. Therefore \(P\) is below \(AF\) in every surviving mixed
placement.

Finally, the empty ear \(ABC\) puts \(P\) above \(AC\), and its
mixed-placement definition puts it on the left-pentagon side of \(CF\).
Together with the \(AF\) side just proved, these are precisely the
three side tests for \(P\in ACF\). \(\square\)


## 5. Three complete vertical-triangle pair classes

**Theorem 4.** Neither \(ADE\) nor \(AHD\) can contain both free
points. These two assertions need only the projection condition
\(b\le f\le c\); they do not need \(f\le1/2\).
Under the full normalization \(f\le1/2\), the triangle \(AHE\)
also cannot contain both free points.

For the first assertion, suppose both free points are in \(ADE\).
Its doubled area \(R\) is at least \(Ks>\rho\). Every estimate in
(15)--(16) follows from this fact and the anchor inequalities, without
using either free point's \(CE\) side. In particular

\[
[CDE]=wR<w<\frac{23}{84}<3s.
\]

No free point can therefore belong to \(CDE\).
The portion of \(ADE\) on the \(D\)-side of \(CE\) is contained in
\(CDE\): the crossing of \(AD,CE\) lies on the segment \(CE\), and
the portion in question is the triangle with vertices \(D,E\) and
that crossing. Thus both free points must lie in
\(ACE\cap ADE\), contrary to Theorem 2.

This proof and the proof of Theorem 2 use \(b\le f\), \(c<1-s\),
and \(0<f<1\), but no upper bound \(f\le1/2\).
In particular, the lower bound \(b>1/8\) comes from \(b(1-b)>s\),
and the later upper bound \(b<1/3\) comes from \(R>\rho\);
neither is taken from \(f\le1/2\).
Horizontal reflection preserves the projection condition and changes
\(ADE\) into \(AHD\), proving the second assertion.

For the last assertion we first record an anchor-only comparison:

\[
\boxed{[AEF]<1-2s<Ks.}                                  \tag{25}
\]

Indeed, with \(M=c-b\), \(w=1-c\), the lower bounds for \(a,e\) give

\[
[AEF]=1-(1-f)a-fe
\le1-s\left(\frac1M+\frac{f}{w}\right)
\le1-s\left(\frac1M+\frac{b}{w}\right).
\]

Since \(M+w=1-b\), Cauchy--Schwarz implies

\[
\frac1M+\frac bw
\ge\frac{(1+\sqrt b)^2}{1-b}
=\frac{1+\sqrt b}{1-\sqrt b}>2.
\]

Here \(b>1/8>1/9\), so \(\sqrt b>1/3\).
Also \(1-2s=25/32<13/16<Ks\), proving (25).

Now suppose both free points belong to \(AHE\).
They are both inside the boundary heptagon.
The complete left-pair and right-pair theorems in
[SEVEN_BOUNDARY_LEFT_PAIR.md](SEVEN_BOUNDARY_LEFT_PAIR.md) and
[SEVEN_BOUNDARY_RIGHT_PAIR.md](SEVEN_BOUNDARY_RIGHT_PAIR.md)
leave only the mixed placement.
Name its points as above. Theorem 3 puts \(P\) in \(ACF\), while
\(Q\) is in \(CEF\). Both are above \(AE\), by the assumed
\(AHE\) containment.

The part of \(ACF\) above \(AE\), and the part of \(CEF\) above
\(AE\), are both inside \(AEF\). This follows by cutting the two
triangles at the crossing of \(AE,CF\).
Thus both free points are inside \(AEF\), contradicting (25) and
the two-interior-point triangle theorem. This proves the final
assertion. \(\square\)


## Verification

The optional exact diagnostic
[check_seven_boundary_mixed_pair.py](check_seven_boundary_mixed_pair.py)
checks the area formulas, derivatives, endpoint gaps, and the radical
comparisons. The continuous bounds, geometric containments, and
exhaustive line-sign argument are proved above.
