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
This note excludes two complete pair cells and all four vertical-triangle
pair classes, with no assumptions on the sign of the line through the
two points. Its reductions are completed in
[SEVEN_BOUNDARY_MIXED_LOWER.md](SEVEN_BOUNDARY_MIXED_LOWER.md) and
[SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md](SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md),
which exclude every mixed placement. The latter note also assembles the
complete open-side seven-boundary theorem.

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


## 6. The remaining vertical triangle HDE also has capacity one

**Theorem 5.** Under the full seven-boundary normalization, \(HDE\)
cannot contain both free points.

Together with Theorem 4, this gives capacity one for all four triangles
cut out by the diagonals of the vertical quadrilateral \(ADEH\).
Consequently, if both free points are in that quadrilateral, both of its
diagonals separate them.

Suppose both points belong to \(HDE\). The complete left-pair and
right-pair exclusions leave the mixed placement. Theorem 3 therefore
puts \(P\in ACF\), while \(Q\in CEF\). Continue to write \(R=e-d\).
The two-interior-point cost gives \(R\ge Ks>\rho\).

### 6.1. The point sectors and the pair-line inequality

First, the triangle \(HDF\) has capacity one. Indeed

\[
[HDF]=1-(1-f)h-fd
\le1-s\left\{\frac1{c-b}+\frac{1-f}{b}\right\}
<1-2s<Ks.                                               \tag{26}
\]

For the strict comparison, Cauchy--Schwarz bounds the braces below by
\((1+\sqrt{1-f})^2/c>2\), since \(f\le1/2\) and \(c<1\).
The triangle \(ACF\) lies below \(DF\), so \(P\) is below \(DF\).
Its assumed \(HDE\) containment then puts it in \(HDF\).
Thus \(Q\) must be above \(DF\), by (26).
Also \(P\) is above \(HD\), and hence above \(HC\); together with
\(P\in ACF\), this gives

\[
P\in HCF\cap HDF,\qquad Q\in CEF\cap DEF.                 \tag{27}
\]

Use the area parameters

\[
\begin{aligned}
\mathcal A&=[HCE]=(1-c)h+ce,&
\mathcal J&=[HCDE]=\mathcal A+(1-c)R,\\
Z&=[HCF]=c(1-h)+fh,&
\tau&=[HEF]=1-(1-f)h-fe,\\
W&=[HCDF]=1-(h-d)(c-f).
\end{aligned}
\]

The estimates (15)--(16), which use only \(R>\rho\) and the anchor
budgets, apply unchanged. In particular

\[
\frac17<b<\frac13,\quad
\frac{49}{335}<d<\frac3{16},\quad
R<\frac{286}{335}<\frac67,\quad
e>1-s>h>d.                                              \tag{28}
\]

For \(h>d\), it also suffices to note
\(h>s/b+s/(c-b)>4s>3/16>d\).
Both free points are in \(HCE\cap HDE\), because the part of \(HDE\)
on the \(D\)-side of \(CE\) is in the empty triangle \(CDE\).
The overlap parameter is
\(\mathcal A+R-\mathcal J=cR>0\).

The line \(PQ\) cannot separate \(H,E\). In the middle sign
alternative of the central-cell identities, one point would lie in
the triangle formed by \(C,D\) and the other point. But \(CDQ\)
is on the right of \(CF\), whereas \(P\) is on its left; and
\(CDP\) is below \(DF\), whereas \(Q\) is above it. Both
containment alternatives are therefore impossible.
The other separating signs give the two positive-bracket
inequalities treated in Section 3 of
[SEVEN_BOUNDARY_RIGHT_PAIR.md](SEVEN_BOUNDARY_RIGHT_PAIR.md).
Here the same bounds
\(\mathcal A\le1,\ R<6/7,\ \mathcal J\ge\mathcal A+s\)
give the same two strictly negative endpoint values.

Thus \(H,E\) are on the same side of \(PQ\). Put
\[
v=\min\{- [HEP],- [HEQ]\}>0.
\]
The unnormalized same-side identity gives

\[
\boxed{\mathscr F=
\mathcal A R(v-s)-sv(\mathcal A+R)-\mathcal Jv^2\ge0.}    \tag{29}
\]

There is a second necessary inequality, from the one point \(P\).
For every point \(Y\), the exact affine identity is

\[
W(-[HEY])+(\mathcal A+\tau)[HDY]+R[CFY]=RZ.
\]

At \(P\), all three displayed signed areas are positive by (27),
and the last two are at least \(s\). Hence

\[
\boxed{\mathscr G=
R(Z-s)-s(\mathcal A+\tau)-Wv\ge0.}                      \tag{30}
\]

### 6.2. Coarse bounds before changing parameters

Replacing \(\mathcal J\ge\mathcal A+s\) in (29) gives the weaker
necessary inequality
\[
F(\mathcal A,R,v)=
\mathcal A R(v-s)-sv(\mathcal A+R)-(\mathcal A+s)v^2\ge0.
\]
Whenever it holds, its derivatives in \(\mathcal A,R\) are positive:
subtracting the corresponding variable times its derivative leaves,
respectively, \(-sRv-sv^2\) and \(-s\mathcal Av-(\mathcal A+s)v^2\).
Increasing either variable therefore preserves the inequality.

The endpoint quadratics give

\[
\boxed{\frac56<R<\frac67,\qquad
\frac6{25}<v<\frac7{20},\qquad
\mathcal A>1-s.}                                       \tag{31}
\]

For \(R\le5/6\), increasing to \((\mathcal A,R)=(1,5/6)\)
gives a concave quadratic with discriminant \(-197/49152\).
For the bounds on \(v\), the quadratic \(F(1,6/7,v)\) has values
\(-3/4375,-19/25600\) at \(6/25,7/20\), and derivatives
\(1361/11200,-549/4480\) there.
Finally \(F(1-s,6/7,v)\) has discriminant
\(-5373423/822083584\), proving the last assertion by the same
endpoint replacements.
Equations (28) and (31) also give
\[
0\le\epsilon:=1-e<
1-\frac56-\frac{49}{335}=\frac{41}{2010}<\frac1{40}.      \tag{32}
\]

### 6.3. Three monotone replacements

The following changes relax only the displayed inequalities; they do
not assert motions preserving all triangles of the configuration.

First decrease \(d\) to \(s/(c-b)\), keeping the other parameters
fixed. The expression \(\mathscr F\) is affine in \(R=e-d\),
with positive derivative whenever \(\mathscr F\ge0\).
Moreover
\[
\frac{\partial\mathscr G}{\partial d}
=-(Z-s)-(c-f)v<0.
\]
Thus (29)--(30) remain true. The anchor bounds used in (28)--(32)
remain valid as well.

Next increase \(c\) to \(1-s/R\), keeping \(d,e,h,f\) fixed and
setting \(b=c-s/d\), so \(c-b=s/d\) stays fixed. The budget
\(h\ge d+s/b\) is preserved, because \(b\) increases.
We may discard the condition \(b\le f\) after this step.
The derivatives of the two necessary expressions are positive:

\[
\begin{aligned}
\frac{\partial\mathscr F}{\partial c}
&=(e-h)\{R(v-s)-sv\}+(h-d)v^2>0,\\
\frac{\partial\mathscr G}{\partial c}
&=(R-s)(1-h)+s(1-e)+(h-d)v>0.
\end{aligned}
\]

For the first sign, (29) implies
\(D:=R(v-s)-sv-v^2>0\).
Now \(\mathcal J=\mathcal A+s\), so \(\mathscr F=F\).

Finally increase \(f\) until \(\tau=s\), that is, set
\[
f=\frac{1-s-h}{e-h}.
\]
This endpoint is at least the previous \(f\).
It is strictly below \(c\), since \(\mathcal A>1-s\).
The expression \(F\) is independent of \(f\), while
\[
\frac{\partial\mathscr G}{\partial f}
=h(R-v-s)+se+dv>0
\]
by (31). Both necessary inequalities are again preserved.

After these replacements, put \(r=R\), \(t=1-h\). The remaining
parameters satisfy
\[
\begin{gathered}
c=1-s/r,\quad e=1-\epsilon,\quad d=1-\epsilon-r,\quad
f=\frac{t-s}{t-\epsilon},\\
b=1-s/r-s/d>0,\qquad
\frac56<r<\frac67,\quad
\frac6{25}<v<\frac7{20},\quad
0\le\epsilon<\frac1{40},\quad t>s.
\end{gathered}                                          \tag{33}
\]

### 6.4. Two upper endpoints for \(t\)

Keep \(D=r(v-s)-sv-v^2>0\). The inequality \(F\ge0\) is exactly
\[
t\le T_F(r,v,\epsilon):=
\frac{r-srv(r+v)/D-(r-s)\epsilon}{s}.                    \tag{34}
\]
The remaining lower-height anchor budget gives a second bound:
\[
t\le T_A(r,\epsilon):=
r+\epsilon-\frac{s}{\,1-s/r-s/(1-\epsilon-r)\,}.         \tag{35}
\]

For fixed \(r,\epsilon\), \(\mathscr G\), after the substitutions
in (33), increases with \(t\) on all the intervals used below.
Indeed its derivative in \(h\) at fixed \(f\) is
\[
-(c-f)(r-v-s)<0,
\]
and increasing \(t\) also increases
\(f=(t-s)/(t-\epsilon)\), because \(\epsilon<s\).
The other required derivative in \(f\) was positive above.

For endpoint (34), this monotonicity is valid all the way to \(T_F\).
At that endpoint
\[
\mathcal A=\frac{sv(r+v)}D>1-s,
\]
by the last quadratic comparison in (31). Hence \(f<c\), and
\(h>d\), throughout the replacement.
The exact derivative after this endpoint replacement is
\[
\frac{\partial}{\partial\epsilon}\mathscr G(T_F,\epsilon)
=\frac{sv\,X(r,v)Y(r,v)}
       {\{D(1-\epsilon)-sv(r+v)\}^2}<0,                 \tag{36}
\]
where
\[
\begin{aligned}
X&=v^2+(2s-r)v+2rs,\\
Y&=-v^2+\{r(1-2s)-s(1-s)\}v-rs(1-s).
\end{aligned}
\]
The discriminants in \(v\) are negative throughout
\(5/6\le r\le6/7\). They are convex quadratics in \(r\);
their endpoint values are, respectively,
\[
\begin{array}{c|cc}
&r=5/6&r=6/7\\ \hline
X&-3239/9216&-17183/50176\\
Y&-2748311/150994944&-5373423/822083584 .
\end{array}
\]
Thus \(X>0>Y\), proving (36). We have obtained
\[
\mathscr G\le\mathscr G(T_F(r,v,0),0)=:G_F(r,v).         \tag{37}
\]

For endpoint (35), first note that \(T_A(r,\epsilon)\le T_A(r,0)\).
To see this, use \(e=1-\epsilon\), \(d=e-r\),
\(b=1-s/r-s/d\), and \(h_A=d+s/b\). Then
\[
\frac{dh_A}{de}=1-\frac{s^2}{d^2b^2}<-2,
\]
because \(d<1/6\) and \(b<17/80<1/3\).
Here the bound on \(b\) follows from
\[
b\le1-\frac{s}{r(1-r)}
<1-\frac{s}{(5/6)(1/6)}=\frac{17}{80}.
\]
As \(e\) increases, \(h_A\) decreases and \(T_A=1-h_A\) increases.
Also
\[
T_A(r,0)=
\frac{r(64r^2-71r+14)}{(8r-7)(8r-1)}
\]
decreases with \(r\) on this interval. For example its derivative,
written as \(1+s^2(1/r^2-1/(1-r)^2)/b^2\), is below
\(-8707/3200\) using the same bounds.
Since
\[
T_A(17/20,0)=187/2320<s,
\]
the necessary condition \(s<t\le T_A\) proves \(r<17/20\).

We use endpoint (35) only for
\[
r\ge r_0:=8453/10000.
\]
On this range \(T_A(r,0)<9/50\), since
\[
\frac9{50}-T_A(r_0,0)=\frac{5717317}{1746360000}>0.
\]
Thus the entire replacement \(t\mapsto T_A\) has \(h>d\),
\(f<c\), and \(f<1/2\). For the last two assertions,
\[
\mathcal A\ge1-\frac1{40}-\frac{6s}{5}\frac9{50}>1-s,
\qquad
t+\epsilon<\frac9{50}+\frac1{40}<2s.
\]

Increasing \(e\) to one at this endpoint also increases \(\mathscr G\).
Indeed \(dh_A/de<-2\), and
\[
\frac{df}{de}
=\frac{-(1-f)(dh_A/de)-f}{e-h_A}>0.
\]
At fixed \(r,c,h,f\) its other \(e\)-derivative is
\(- (c-f)(s+v)\). The combined \(h,e\) contribution is therefore
greater than
\[
(c-f)\{2r-3v-3s\}>
(c-f)\frac{277}{960}>0.
\]
The \(f\)-contribution is positive too. Consequently, for \(r\ge r_0\),
\[
\mathscr G\le\mathscr G(T_A(r,0),0)=:G_A(r,v).            \tag{38}
\]
At fixed \(t\), the expression \(\mathscr G\) decreases with \(v\).
Since \(T_A\) is independent of \(v\), \(G_A(r,v)\) also decreases
with \(v\), with derivative \(-W<0\) on the admissible range.

### 6.5. Seven fixed rational coefficient checks

Here are explicit polynomial certificates for (37)--(38). Put
\[
\begin{aligned}
N_F(r,v)=7\{&
116736r^3v^2-14336r^3v-364544r^2v^3-3136r^2v^2\\
&+4704r^2v-343r^2+378880rv^4+68544rv^3\\
&-3136rv^2-686rv-131072v^5-57344v^4-7840v^3-343v^2\},\\
N_A(r,v)={}&14942208r^5-16777216r^4v-34988032r^4\\
&+35389440r^3v+28574848r^3-24095296r^2v\\
&-9643039r^2+5661824rv+1309917r-379456v-61054.
\end{aligned}
\]
Direct substitution gives
\[
G_F=
\frac{N_F}
 {2048(57rv-7r-71v^2-7v)(64rv-7r-64v^2-7v)},            \tag{39}
\]
\[
G_A=
\frac{N_A}
 {4096(8r-7)(8r-1)(64r^2-71r+14)}.                      \tag{40}
\]

The denominator in (39) is positive wherever it is used:
its second nonconstant factor is \(64D>0\), and its first
is positive because \(T_F(r,v,0)>s\).
The denominator in (40) is positive on
\([r_0,17/20]\): its first and third nonconstant factors are
negative, and its second is positive.

The following seven fixed coefficient checks are all strictly negative.
For a rectangle, make its affine change to \([0,1]^2\), write
the resulting polynomial as \(\sum p_{ij}x^iy^j\), and use tensor
Bernstein coefficients
\[
B_{kl}=\sum_{i\le k,\ j\le l}
p_{ij}\frac{\binom{k}{i}}{\binom{m}{i}}
       \frac{\binom{l}{j}}{\binom{n}{j}},
\]
where \((m,n)\) is the displayed degree. The one-variable version
uses just the first binomial ratio. All these coefficients are below
\(-1\), an exact rational comparison.

| Polynomial | \(r\) interval | \(v\) interval or value | Degree | All coefficients |
|---|---|---|---|---|
| \(N_F\) | \([5/6,r_0]\) | \([6/25,11/40]\) | \((3,5)\) | \(<-1\) |
| \(N_F\) | \([5/6,r_0]\) | \([11/40,23/80]\) | \((3,5)\) | \(<-1\) |
| \(N_F\) | \([5/6,r_0]\) | \([23/80,3/10]\) | \((3,5)\) | \(<-1\) |
| \(N_F\) | \([5/6,r_0]\) | \([3/10,7/20]\) | \((3,5)\) | \(<-1\) |
| \(N_F\) | \([r_0,423/500]\) | \([6/25,11/40]\) | \((3,5)\) | \(<-1\) |
| \(N_A\) | \([r_0,423/500]\) | \(11/40\) | \(5\) | \(<-1\) |
| \(N_A\) | \([423/500,17/20]\) | \(6/25\) | \(5\) | \(<-1\) |

Bernstein basis functions are nonnegative and sum to one, so the table
proves negativity on every stated interval, without a sampled premise.
If \(r\le r_0\), one of the first four rows and (37) give
\(\mathscr G<0\). If \(r_0\le r\le423/500\), use the fifth row
when \(v\le11/40\); otherwise use the sixth row, (38), and the
decrease of \(G_A\) with \(v\). For \(r\ge423/500\), the last row
applies because \(v>6/25\).
These cases exhaust (31)--(33). Every case contradicts (30).
This proves Theorem 5. \(\square\)


## Verification

The optional exact diagnostic
[check_seven_boundary_mixed_pair.py](check_seven_boundary_mixed_pair.py)
checks the area formulas, derivatives, endpoint gaps, radical
comparisons, the two endpoint eliminations in Section 6, and all seven
fixed rational coefficient certificates. The continuous bounds,
geometric containments, and exhaustive line-sign arguments are proved
above.
