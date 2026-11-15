# The complete right-hand pair with seven boundary contacts

Use the seven anchors and projection convention of
[SEVEN_BOUNDARY_CAPS.md](SEVEN_BOUNDARY_CAPS.md):

\[
A=(0,a),\ H=(0,h),\ B=(b,0),\ C=(c,0),\
D=(1,d),\ E=(1,e),\ F=(f,1),
\]
\[
0<a<h<1,\quad0<b<c<1,\quad0<d<e<1,\qquad
b\le f\le c,\quad f\le\tfrac12.
\]

Write \([XYZ]=\det(Y-X,Z-X)\), \(s=7/64\),
\(K=4+2\sqrt3\), and \(\rho=13/16<Ks\).
Assume every actual unsigned doubled triangle area is at least \(s\).

**Theorem.** The two remaining actual points cannot both lie in the
right quadrilateral \(CDEF\).

This excludes this complete continuous placement class at ordinary
threshold \(7/128<A_0\). It does not exclude the mixed left/right
placement or the remaining exterior top caps.

Theorems 8--9 of SEVEN_BOUNDARY_CAPS.md put both points in \(CEF\),
on opposite sides of \(DF\). Name them

\[
P\in CEF\cap DEF,\qquad Q\in CEF\cap CDF.                 \tag{1}
\]

All containments in this note are strict; an edge coincidence would
give an actual zero-area triangle. Put

\[
M=c-b,\quad w=1-c,\quad
\mathcal A=[HCE]=h(1-c)+ce,\quad
\mathcal B=[CEF]=1-c+e(c-f).
\]

The two-interior-point triangle theorem gives
\(\mathcal B\ge Ks>\rho\). The boundary triangles give

\[
h\ge\frac{s}{M}+\frac{s}{b},\qquad
d\ge\frac{s}{M},\qquad
(1-c)(e-d)\ge s,\qquad
(1-f)h+fe\le1-s.                                        \tag{2}
\]

Write \(\mathcal J=[HCEF]\) for the doubled quadrilateral area:
\(\mathcal J=1+(e-h)(c-f)=\mathcal A+[HEF]\).

## 1. Initial bounds and an empty upper ear

Theorem 9 of SEVEN_BOUNDARY_CAPS.md gives
\[
\frac18<b,\qquad c\ge\frac{b^2}{b-s},\qquad b-s-b^2>0.
\]
Also \(\mathcal B\le1-f\), whence
\[
b\le f<\frac3{16},\qquad hc\ge4s,\qquad c\ge4s.          \tag{3}
\]
The middle inequality follows from (2) and
\((b+M)(1/b+1/M)\ge4\).

In fact
\[
e>1-s,\qquad h<1-s,\qquad h>d.                          \tag{4}
\]
If \(e\le1-s\), then
\[
\mathcal B\le1-sc-(1-s)b
\le1-\left(b+\frac{bs^2}{b-s}\right)
\le1-s(1+\sqrt s)^2<\rho.
\]
The penultimate inequality follows by writing \(b=s+t\), \(t>0\),
and applying \(t+s^3/t\ge2s\sqrt s\).
For the last comparison, \(\sqrt s>5/16\) gives
\(s(1+\sqrt s)^2>3087/16384>3/16\).
The upper bound on \(h\) follows from the last inequality in (2).
Finally \(d\le1-s/w\), so
\[
h-d\ge s\left(\frac1b+\frac1M+\frac1w\right)-1
\ge s\left(\frac1b+\frac4{1-b}\right)-1
>\frac{19}{156}>0.                                     \tag{5}
\]
Here \(1/b+4/(1-b)\) decreases for \(b<1/3\), and its value at
\(b=3/16\) is \(400/39\).

We also have \(b>1/7\). Otherwise \(M\le1-s-b\) and (2) give
\[
h\ge\frac{s}{1-s-b}+\frac{s}{b}
\ge\frac{19551}{21440}=1-s+\frac{57}{2680},
\]
contrary to (4); the reciprocal sum decreases for \(0<b\le1/7\).

Also \(h>s+16s/3=133/192>1-3s\), while \(e>1-s>1-3s\).
Consequently
\[
[HEF]=(1-f)(1-h)+f(1-e)<3s.                             \tag{6}
\]
There is no further actual point in \(HEF\). Every point of \(CEF\)
above \(HE\) is in \(HEF\); hence
\[
P,Q\in HCE\cap CEF.                                     \tag{7}
\]
In particular \(\rho<\mathcal A\le1\),
\(\rho<\mathcal B<6/7\), and \(\mathcal J\ge\mathcal A+s\).

## 2. A small triangle at the upper point

We next prove
\[
[HFP]_{\rm abs}<3s.                                    \tag{8}
\]
Put \(U=[HDF]=1-h+f(h-d)>0\). From (2),
\[
U\le1-\frac{s}{M}-\frac{s(1-f)}b
\le1-\frac{s}{1-s-b}-\frac{s(1-f)}b
\le E(f):=1+s-\frac{s}{f}-\frac{s}{1-s-f}.               \tag{9}
\]
The last expression before the replacement increases with \(b\le f<3/16\):
its derivative is \(s(1-f)/b^2-s/(1-s-b)^2>0\).

Let \(I=CE\cap DF\) and \(r=[CDE]\ge s\).
The sector containing \(P\) is the triangle \(EFI\). By affinity,
\[
[HFP]_{\rm abs}\le\max\{[HFE]_{\rm abs},[HFI]_{\rm abs},0\},
\qquad [HFI]_{\rm abs}=\frac{\mathcal B}{\mathcal B+r}U.
\]
The signs are constant because this sector is on one side of \(HF\).
Using \(\mathcal B\le1-f\) and (9), with \(E(f)\ge U>0\),
\[
[HFI]_{\rm abs}
\le\frac{1-f}{1-f+s}E(f)
\le\frac{52}{59}\frac{1067}{2880}
=3s-\frac{271}{169920}<3s.                              \tag{10}
\]
The middle product increases for \(0<f\le3/16\):
\(E(f)\le1\), \(E'(f)>2\),
\((1-f)/(1-f+s)\ge52/59>7/8\), and
\(s/(1-f+s)^2\le448/3481<1/7\).
Its derivative is therefore greater than \(7/4-1/7>0\).
Equations (6) and (10) prove (8).

## 3. The pair line must put C and E on the same side

Apply the general central-cell line identities from Section 1 of
[ONE_CORNER_COMPLETION.md](ONE_CORNER_COMPLETION.md) to the
quadrilateral \(C,E,F,H\). Its containing triangle areas are
\(\mathcal A,\mathcal B\), and its total doubled area is \(\mathcal J\).
The canonical normalization exists because
\(\mathcal A+\mathcal B-\mathcal J=\mathcal B-[HEF]>0\).

Suppose \(PQ\) separates \(C,E\). The middle sign alternative puts one
point inside the triangle formed by \(H,F\) and the other point.
Since \(H,Q\) are on the \(CDF\) side of \(DF\), whereas \(P\) is on
the other side, this cannot be \(P\in HFQ\). The alternative
\(Q\in HFP\) contradicts (8).

Each other alternative gives a positive bracket and
\[
[\mathcal A\mathcal B-s(\mathcal J+\mathcal A)]^2
\ge4s\mathcal A\mathcal B\mathcal J,                     \tag{11}
\]
or the same inequality with \(\mathcal A\) replaced by \(\mathcal B\)
inside the bracket. Decrease \(\mathcal J\) to \(\mathcal A+s\).
For each resulting polynomial, increasing \(\mathcal B\) to \(6/7\)
preserves the nonnegative value and positive bracket: it is an upward
quadratic, negative at the positive zero of its bracket, so the
admissible value lies beyond its larger root.
The same argument increases \(\mathcal A\) to one.
The leading coefficients in this second step are respectively
\(1633/50176\) and \(36961/200704\), both positive.
The resulting values of left minus right, however, are
\[
-\frac{19402095}{822083584},\qquad
-\frac{3108335}{822083584}.
\]
This contradiction proves that \(C,E\) are on the same side of \(PQ\);
(7) then puts \(H,F\) on its other side.

## 4. The same-side inequality and a narrower bottom interval

Put \(v=\min\{[CEP],[CEQ]\}>0\).
The general same-side weighted determinant inequality in Section 2 of
ONE_CORNER_COMPLETION.md, before normalizing the quadrilateral area, is
\[
\boxed{\mathscr F:=
\mathcal A\mathcal B(v-s)-sv(\mathcal A+\mathcal B)
-\mathcal Jv^2\ge0.}                                    \tag{12}
\]
In particular \(v>s\). Since \(\mathcal J\ge\mathcal A+s\), a weaker
necessary expression is
\[
F(\mathcal A,\mathcal B,v)=
\mathcal A\mathcal B(v-s)-sv(\mathcal A+\mathcal B)
-(\mathcal A+s)v^2\ge0.                                 \tag{13}
\]
Whenever (13) holds, its derivatives in \(\mathcal A,\mathcal B\)
are positive: it equals
\(\mathcal A F_{\mathcal A}-s\mathcal Bv-sv^2\), and also
\(\mathcal B F_{\mathcal B}-s\mathcal Av-(\mathcal A+s)v^2\).
Increasing either parameter preserves this property.

If \(b\ge1/6\), increase \(\mathcal A\) to one and
\(\mathcal B\le1-b\) to \(5/6\).
The resulting quadratic in \(v\) has negative leading coefficient
and discriminant \(-197/49152<0\). Thus
\[
b<1/6.                                                 \tag{14}
\]

We also need
\[
\boxed{b>3/20.}                                         \tag{15}
\]
Here is a rational proof using only the anchors and \(\mathcal B>\rho\).
Write \(q=3/16\). The latter bound gives \(e>(c-q)/(c-f)\).
For fixed \(h,c\), the function
\((1-f)h+f(c-q)/(c-f)\) increases with \(f\ge b>1/8\):
its derivative exceeds
\[
-1+\frac{c(c-q)}{(c-f)^2}>0.
\]
Indeed \(c(2f-q)-f^2\) increases with \(f<c\), and at \(f=1/8\)
it is \(c/16-1/64\ge3/256>0\).
Replace \(f\) by \(b\) and use (2). With
\[
D_0=b-b^2-s>0,\quad C_0=b^2-b(s+q)+s,\quad
g(b)=\frac{bC_0}{D_0},
\]
the top budget becomes \(M>g(b)\).
The right budget, using \(e\le1\), gives
\[
M^2-(1-b)M+s(1-b)\le0.                                 \tag{16}
\]
Suppose \(1/7<b\le3/20\). Then
\[
g(b)-\frac{1-b}{2}
=-\frac{64b^3+90b^2-57b+7}{2(8b-7)(8b-1)}>0.
\]
The numerator decreases on this interval and is at least \(691/1000\).
The left side of (16) therefore increases for \(M\ge g(b)\).
Its value at \(g(b)\) has positive denominator
\(64(8b-7)^2(8b-1)^2\) and numerator
\[
R(b)=417792b^5-308672b^4+63040b^3+4032b^2-3479b+343.
\]
Put \(z=3/20-b\in[0,1/140)\). Expansion and \(z^5\le z^4/140\) give
\[
\begin{aligned}
R(b)
&=-417792z^5+4672z^4+28160z^3
+\frac{120744}{25}z^2+\frac{140467}{125}z+\frac{284}{3125}\\
&\ge\frac{59072}{35}z^4+28160z^3
+\frac{120744}{25}z^2+\frac{140467}{125}z+\frac{284}{3125}>0.
\end{aligned}
\]
This contradicts (16), proving (15).

Increase \(\mathcal A,\mathcal B\) in (13) to \(1,17/20\).
The resulting concave quadratic has values \(-1/2560,-1/2880\)
at \(v=1/4,1/3\), and derivatives \(119/1280>0,-353/3840<0\)
there. Consequently
\[
\boxed{1/4<v<1/3.}                                      \tag{17}
\]

## 5. A second continuous inequality from the lower right point

Using \(b<1/6,\ f<3/16\) in (9) gives
\[
[HDF]
<1-\frac{s}{1-s-1/6}-\frac{s(1-3/16)}{1/6}
=\frac{22469}{71168}=3s-\frac{883}{71168}<3s.             \tag{18}
\]
Thus \(HDF\) is empty. The point \(Q\in CDF\) must be below \(HD\),
and hence \(Q\in HCD\). Define
\[
Z=[HCF],\quad U=[HDF],\quad T=[HCD],\quad
W=[HCDF]=T+U,\quad r=[CDE].
\]
The positive weighted determinant identity
\[
W[CEX]+\mathcal B[HDX]_{\rm below}+(\mathcal A+r)[CFX]_{\rm right}
=\mathcal BT                                             \tag{19}
\]
holds for every point \(X\), where \([HDX]_{\rm below}=-[HDX]\)
is positive below \(HD\), and \([CFX]_{\rm right}=-[CFX]\)
is positive on the \(E,D\) side of \(CF\).
It can be checked at the three noncollinear points \(H,C,D\), using
\(\mathcal A[CDF]-rZ=\mathcal BT\).
At \(Q\), both additional signed areas are at least \(s\).
Since \([CEQ]\ge v\),
\[
\boxed{\mathscr G:=
\mathcal B(T-s)-s(\mathcal A+r)-Wv\ge0.}                 \tag{20}
\]
We also retain
\[
L=h-\frac{s}{c-b}-\frac{s}{b}\ge0.                       \tag{21}
\]

## 6. Monotone scalar replacements

These replacements relax (12), (20), and (21); they do not assert
motions preserving all 84 triangles of the original configuration.

First increase \(h\) to \(h_*=(1-s-fe)/(1-f)\).
This endpoint is below one and at least the original \(h\).
It increases \(\mathscr F\): \(\mathcal A\) increases,
\(\mathcal J\) decreases, and
\(\mathcal B(v-s)-sv>0\) follows from (12).
It increases \(\mathscr G\), whose derivative in \(h\) is
\((1-c)(\mathcal B-s)+v(c-f)>0\), and increases \(L\).
Now \([HEF]=s\), so \(\mathcal J=\mathcal A+s\) and \(\mathscr F=F\).

Next decrease \(f\) to \(b\), keeping \([HEF]=s\).
Since \(e>1-s\), the corresponding \(h_*\) increases.
Thus \(\mathcal A,\mathcal B\) increase, preserving (13).
At fixed \(h,d,e\),
\[
\frac{\partial\mathscr G}{\partial f}=-e(T-s)-v(h-d)<0.
\]
Here \(T\ge3s\) because \(Q\in HCD\), and \(h>d\) by (5).
The accompanying increase in \(h\) also increases \(\mathscr G\);
(20)--(21) remain true.

Finally increase \(d\) to \(e-s/w\).
This preserves \(F,L\) and increases \(\mathscr G\), since
\[
\frac{\partial\mathscr G}{\partial d}
=\mathcal Bc+sw-v(c-b)>0,
\]
using \(v<\mathcal B\). The bound (5) continues to give \(d<h\).
After these replacements,
\[
\begin{gathered}
f=b,\quad h=\frac{1-s-be}{1-b},\quad d=e-\frac{s}{w},\\
\mathcal A=hw+ce,\quad \mathcal B=w+e(c-b),\quad
\mathcal J=\mathcal A+s,\\
T=\mathcal A-\frac{cs}{w},\quad
W=\mathcal J-\frac{s(c-b)}{w},\quad r=s.
\end{gathered}                                          \tag{22}
\]
We have \(F\ge0,\ G:=\mathscr G\ge0,\ L\ge0\), and \(T\ge3s\).
Also \(c>19/30\): from \(h<1-s\) and (21),
\[
c>b+\frac{sb}{(1-s)b-s}\ge19/30.
\]
This rational function decreases for \(b\le1/6\) wherever its
denominator is positive, and has value \(19/30\) at \(1/6\).
Finally \(c<1-s\), since \(w(e-d)\ge s\) and \(e-d<1\).

## 7. A rational combination removes the last height

Set
\[
\lambda=\frac7{1024},\quad \mu=\frac9{256},\quad
\mathscr H=F+\lambda G+\mu L\ge0.                        \tag{23}
\]
Keep \(b,c,v\) fixed and increase \(e\) to one in (22)--(23).
The combination strictly increases throughout this interval.
Put \(x=1-b\). Then
\[
\mathcal A_e=(c-b)/x>0,\quad
\mathcal B_e=c-b>0,\quad T_e=\mathcal A_e.
\]
Throughout the interval \(\mathcal A\ge139/160\),
\(\mathcal B>\rho\), and \(T\ge3s\).
The first follows from \(h\ge1-s/(1-b)\ge139/160\).
For \(1/4\le v\le1/3\), endpoint bounds give
\[
F_{\mathcal A}\ge25/1024,\qquad F_{\mathcal B}\ge971/10240.
\]
The first is a concave quadratic in \(v\); its other endpoint value
with \(\mathcal B=\rho\) is \(317/9216>25/1024\).
Moreover
\[
G_e=(c-b)(T-s)+\mathcal A_e(\mathcal B-s-v)>0,\qquad
L_e=-b/(1-b).
\]
As \(c-b>7/15\) and \(b/(1-b)<1/5\),
\[
\mathscr H_e>\frac7{15}\frac{971}{10240}-\frac{\mu}{5}>0. \tag{24}
\]
Thus a hypothetical configuration requires \(\mathscr H(b,c,v,1)\ge0\),
even though the relaxed \(L\) need not remain nonnegative at that endpoint.

## 8. An explicit concavity certificate

Put \(x=1-b,\ w=1-c\), and let
\[
\mathcal R=[5/6,17/20]\times[7/64,11/30]\times[1/4,1/3]
\]
be the rectangle in coordinates \((x,w,v)\).
At \(e=1\), the expression in (23) is
\[
\begin{aligned}
H(x,w,v)={}&x((1-s)v-s+\lambda)
-(1+s)v^2-[s+\lambda(1+2s)]v-\lambda s(1+s)+\mu\\
&+sw\left(s-v-\lambda+\frac{(v+s)(v+\lambda)}x\right)
-\frac{\lambda s x(1-v)}w\\
&-\mu s\left(\frac1x+\frac1{x-w}+\frac1{1-x}\right).
\end{aligned}                                          \tag{25}
\]
All denominators are positive on \(\mathcal R\).
We prove \(H<0\) there by rational bounds.

### Uniform curvature

Write \(T_v=(v+s)(v+\lambda)\). The second derivatives are
\[
\begin{aligned}
H_{xx}&=\frac{2s(wT_v-\mu)}{x^3}
-\frac{2\mu s}{(x-w)^3}-\frac{2\mu s}{(1-x)^3},\\
H_{ww}&=-\frac{2\lambda s x(1-v)}{w^3}
-\frac{2\mu s}{(x-w)^3},\\
H_{vv}&=-2(1+s)+2sw/x,\\
H_{xw}&=-sT_v/x^2+\lambda s(1-v)/w^2+2\mu s/(x-w)^3,\\
H_{xv}&=1-s-sw(2v+s+\lambda)/x^2+\lambda s/w,\\
H_{wv}&=s(-1+(2v+s+\lambda)/x)-\lambda s x/w^2.
\end{aligned}                                          \tag{26}
\]
The rectangle endpoints give
\[
\begin{array}{lll}
H_{xx}<-8/5,&H_{ww}<-7/100,&H_{vv}<-21/10,\\
|H_{xw}|<1/8,&|H_{xv}|<9/10,&|H_{wv}|<17/200.
\end{array}                                             \tag{27}
\]
Here are explicit certificates. For \(H_{xx}\), discard the negative
terms with denominators \(x^3,(x-w)^3\); the resulting upper bound is
\(-21499219/13107200<-8/5\).
The \(H_{vv}\) upper bound is \(-849/400<-21/10\).
The positive part of \(H_{xw}\) is at most \(49191/401408<1/8\);
the magnitude of its negative part is also below \(1/8\).
The expression \(H_{xv}\) has a positive lower endpoint bound and
upper bound \(1-s+\lambda=919/1024<9/10\).
Both terms of \(H_{wv}\) are negative; their total magnitude is at most
\(115879/1392640<17/200\).

For \(H_{ww}\), put \(m=x-w\). The weighted reciprocal-power inequality
(Hölder's inequality) gives
\[
\frac{\lambda x(1-v)}{w^3}+\frac{\mu}{m^3}
\ge\frac{((\lambda x(1-v))^{1/4}+\mu^{1/4})^4}{(w+m)^3}.
\]
Since
\(\lambda x(1-v)\ge5\lambda/9>(6/25)^4\) and
\(\mu>(3/7)^4\), we get
\[
-H_{ww}>2s\frac{(6/25+3/7)^4}{(17/20)^3}
=\frac{374777442}{5266121875}>\frac7{100}.
\]
This proves (27).

For any real \(X,W,V\), use
\[
\begin{aligned}
2(9/10)|XV|&\le(9/10)(X^2+V^2),\\
2(1/8)|XW|&\le(13/20)X^2+(5/208)W^2,\\
2(17/200)|WV|&\le(23/20)V^2+(289/46000)W^2.
\end{aligned}
\]
The remaining coefficients of \(X^2,V^2\) are \(1/20>1/32\);
that of \(W^2\) exceeds \(1/32\) by
\[
\frac7{100}-\frac5{208}-\frac{289}{46000}-\frac1{32}
=\frac{10081}{1196000}>0.
\]
Thus
\[
\boxed{\nabla^2H\le-\frac1{32}I.}                        \tag{28}
\]

### One rational evaluation

At \(z_0=(169/200,29/160,143/500)\in\mathcal R\),
\[
\begin{aligned}
H(z_0)&=-\frac{114868742378149}{2349840203776000000}
<-\frac1{22000},\\
H_x(z_0)&=\frac{107804812138059733}{1307408322289257676800},\\
H_w(z_0)&=-\frac{111256498368113}{1459080213626880000},\\
H_v(z_0)&=\frac{18741121}{160595968000}.
\end{aligned}
\]
Each gradient entry has absolute value below \(1/3000\).
Integrating (28) along the segment from \(z_0\) to \(z\in\mathcal R\),
and completing the square, gives
\[
\begin{aligned}
H(z)&\le H(z_0)+\nabla H(z_0)\cdot(z-z_0)
-\frac1{64}\|z-z_0\|^2\\
&\le H(z_0)+16\|\nabla H(z_0)\|^2\\
&<-\frac1{22000}+\frac{48}{3000^2}
=-\frac{331}{8250000}<0.
\end{aligned}
\]
This contradicts (23)--(24) and excludes the final same-side orientation.
All pair-line orientations are impossible, proving the theorem. \(\square\)

## Verification

The optional [check_seven_boundary_right_pair.py](check_seven_boundary_right_pair.py)
checks determinant identities, polynomial substitutions, endpoint constants,
the rational combination, all six Hessian formulas, and every rational
bound in the concavity certificate.
The continuous proof above uses no optimizer or parameter search as a premise.

