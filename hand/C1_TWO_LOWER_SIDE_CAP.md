# Two lower C1 points exclude both side caps

This note excludes a complete larger-hull branch of C1. Suppose the
actual configuration contains

\[
O=(0,0),\quad H=(0,h),\quad C=(c,0),\quad
D=(1,d),\quad F=(f,1),
\]

where \(0<d\le h\le1\) and \(0<f\le c\le1\), together with
two points strictly inside \(OHC\). Then no other actual point can lie
in the exterior cap \(\operatorname{conv}\{H,F,(0,1)\}\).
Reflection in the square diagonal also excludes
\(\operatorname{conv}\{C,D,(1,0)\}\).

The configuration is assumed competitive: its minimum unsigned triangle
area is at least \(A_0\). We use the rational doubled-area threshold

\[
\sigma=\frac8{73}<2A_0,\qquad K=4+2\sqrt3,\qquad
k=K\sigma,\qquad \rho=\frac{49}{60}<k.
\]

The comparison \(8/73<2A_0\) is the one used in Section 12 of
[TYPE_II_COMPLETION.md](TYPE_II_COMPLETION.md). The comparison
\(\rho<k\) follows from \(3\cdot960^2-1657^2=19151>0\).
Every unsigned doubled area of an actual triangle is at least
\(\sigma\). We write \([ABC]=\det(B-A,C-A)\).

Assume, for contradiction, that an actual point \(X=(x,Y)\) lies
in the left exterior cap. Positive minimum area excludes its edge
\(HF\), and therefore

\[
Y>h,\qquad x>0,\qquad
[HFX]=f(Y-h)-(1-h)x\ge\sigma.
\]

The two-interior-point triangle bound gives

\[
hc\ge k,\qquad h,c\ge k>\rho.                         \tag{1}
\]

## 1. The cap bounds the height and its own width

The actual triangle \(OHX\) gives \(hx\ge\sigma\).
Using \(Y\le1\) in the cap inequality gives

\[
f\ge x+\frac{\sigma}{1-h}
\ge\frac{\sigma}{h(1-h)}.                              \tag{2}
\]

In particular \(h<1\). Since \(f\le1\), (2) implies
\(h(1-h)\ge\sigma>7/64\). Together with \(h>\rho>1/2\),
this yields \(h<7/8\).

The other actual anchor triangle satisfies

\[
\sigma\le[CDF]=1-c+d(c-f)\le1-c+h(c-f).
\]

Consequently

\[
hf\le1-\sigma-c(1-h),\qquad
hx\le1-c(1-h)-\frac{\sigma}{1-h}.                      \tag{3}
\]

Combining (2) with the first inequality in (3), we obtain

\[
G(h,c):=(1-\sigma)(1-h)-c(1-h)^2-\sigma\ge0.            \tag{4}
\]

Two height bounds will be used below:

\[
\boxed{h<\frac{43}{50},\qquad
h< H_0+\frac{1-c}{25},\quad H_0=\frac{341}{400}.}        \tag{5}
\]

For the first, replace \(c\) by its lower bound \(\rho\) in
\(G\). The resulting expression decreases with \(h\ge43/50\),
and at that endpoint it equals

\[
G(43/50,\rho)=-\frac{10273}{10950000}<0.
\]

For the second, put \(u=1-c\), so \(0\le u<1\). Exact expansion
gives

\[
G(H_0+u/25,1-u)
=\frac{u^3}{625}-\frac{67u^2}{5000}
-\frac{24063u}{11680000}-\frac{113}{11680000}<0.         \tag{6}
\]

The sign follows from \(u^3\le u^2\). Also \(G(h,c)\) decreases
with \(h\ge H_0\). Thus (4) proves both inequalities in (5).

## 2. Both lower points belong to the same central quadrilateral cell

Let \(R=(r,z)\) be either lower point. We first prove

\[
[ORX]=rY-zx>0.                                        \tag{7}
\]

If the sign were negative, its absolute area would give
\(zx-rY\ge\sigma\). Since \(z<h\), \(hr\ge\sigma\),
and \(Y>h\), this would imply \(hx\ge2\sigma\).
Equations (2)--(3), with this stronger lower bound on \(x\), would
then imply

\[
R_0(h):=h(1-h)-\sigma h(3-2h)-k(1-h)^2\ge0.            \tag{8}
\]

Here we used \(hc\ge k\) after multiplying by \(h(1-h)>0\).
However, \(R_0\) is strictly concave, and

\[
R_0'(k)=\frac{1017-1536\sqrt3}{5329}<0,
\qquad
R_0(k)=\frac{-3072+1664\sqrt3}{389017}<0.
\]

Thus \(R_0(h)<0\) for every \(h\ge k\), contradicting (8).
This proves (7), and hence \([ORX]\ge\sigma\).

Every lower point is also below \(CX\): the affine determinant
\([CXR]\) is positive at both \(O,H\), and zero at \(C\).
Together with (7) and \(z>0\), this proves

\[
\boxed{R\in OHC\cap OCX.}                             \tag{9}
\]

There is a useful additional consequence. The positive actual area

\[
[HRX]=r(Y-h)+(h-z)x
\]

is at least \(\sigma\). If \(x\ge r\), then
\([ORX]\le r(1-z)\); if \(x\le r\), then
\([HRX]\le r(1-z)\). Therefore each lower point satisfies

\[
\boxed{r(1-z)\ge\sigma.}                              \tag{10}
\]

## 3. No triangle between \(HX\) and a lower point contains another point

More precisely, every lower actual point \(R\) satisfies

\[
\boxed{[HRX]<3\sigma.}                                \tag{11}
\]

The three actual edge triangles in \(OHC\) imply

\[
z\ge\frac\sigma c,\qquad
r\le c-\frac{cz+\sigma}{h}\le c-\frac{2\sigma}{h}.
\]

Using these bounds, \(Y\le1\), and (3), gives

\[
\begin{aligned}
[HRX]
&\le(1-h)\left(c-\frac{2\sigma}{h}\right)
  +x\left(h-\frac\sigma c\right)\\
&\le\left(1-\frac\sigma{1-h}\right)
       \left(1-\frac\sigma{hc}\right)
       -\frac{\sigma(1-h)}h\\
&\le E(h):=1+\sigma-
       \frac{\sigma(2-h-\sigma)}{h(1-h)}.
\end{aligned}                                                        \tag{12}
\]

The coefficient \(h-\sigma/c\) is positive by (1). Also (3), with
\(hx>0\), shows that \(1-\sigma/(1-h)>0\), so increasing \(c\)
to one in the last line is valid.

The derivative of \(E\) has the sign of
\(73h^2-276h+138\). For \(\rho\le h\le1\), this is at most
\(138-203h\le138-203\rho<0\). Hence

\[
E(h)\le E(\rho)
=3\sigma-\frac{14661}{2872331}<3\sigma,
\]

proving (11). In particular, no such triangle can contain another
actual point strictly inside it.

## 4. A line through the two lower points cannot separate \(O,C\)

The four vertices \(O,C,X,H\) form a convex quadrilateral, and by
(9) both lower points are inside both triangles on its edge \(OC\).
Write

\[
a=hc,\qquad b=cY,\qquad T=cY+hx.
\]

These are respectively the doubled areas of \(OCH\), \(OCX\),
and the whole quadrilateral. They satisfy

\[
k\le a\le b\le1,\qquad a<43/50,\qquad T\ge b+\sigma.
                                                               \tag{13}
\]

Also \(a+b-T=h(c-x)>0\), because the cap gives \(x<f\le c\).
Thus the canonical central-cell normalization used below exists.

Suppose the line through the two lower points separates \(O,C\).
The general weighted determinant identities and complete sign list in
Section 1 of [ONE_CORNER_COMPLETION.md](ONE_CORNER_COMPLETION.md)
apply after division of every area by \(T\). Their middle sign case
puts one lower point strictly inside a triangle formed by \(H,X\)
and the other lower point. This contradicts (11).

Each of the two remaining sign cases gives, with a positive bracket,

\[
[ab-\sigma(T+a)]^2\ge4\sigma Tab,                      \tag{14}
\]

or the version with \(a,b\) interchanged inside the bracket. Since
\(a\le b\), that latter inequality also implies (14) with a positive
bracket. Decreasing \(T\) to \(b+\sigma\) preserves (14). Thus

\[
F(a,b):=[(a-\sigma)b-\sigma(a+\sigma)]^2
        -4\sigma ab(b+\sigma)\ge0,                    \tag{15}
\]

again with a positive bracket.

For fixed \(a\), this is an upward quadratic in \(b\): its leading
coefficient is \(a^2-6\sigma a+\sigma^2>0\), because
\(a\ge k>6\sigma\). At the positive zero of its bracket, the
quadratic is negative. Hence a value satisfying (15) and the positive
bracket lies at or above its larger root. Increasing \(b\) to one
therefore preserves both conditions. The same argument, now applied to
the upward quadratic \(F(a,1)\) in \(a\), allows increasing \(a\)
to \(43/50\). But exact evaluation gives

\[
F(43/50,1)=-\frac{9555119}{2839824100}<0.
\]

This contradiction excludes every separating line orientation.

## 5. The nonseparating orientation gives an impossible width

Name the lower points \(P=(p,y)\), \(Q=(q,t)\), with \(y\ge t\).
Their signed areas at the base vertices are

\[
D_O=pt-yq,\qquad D_C=D_O+c(y-t).
\]

They now have the same sign. Define the coordinate bounds

\[
L(v)=\frac\sigma{1-v},\qquad
U(v)=c-\frac{cv+\sigma}{h}.
\]

Equation (10) and the actual edge triangle \(HCR\) give
\(L(y)\le p\le U(y)\) and \(L(t)\le q\le U(t)\).

If \(D_O\ge\sigma\), then

\[
\sigma\le U(y)t-yL(t)\le t[U(t)-L(t)].
\]

The second expression decreases with \(y\), so replacing \(y\)
by \(t\) proves the last inequality. If \(D_C\le-\sigma\), then

\[
\sigma\le y[U(t)-c]+t[c-L(y)]\le y[U(y)-L(y)].
\]

Here the expression after the first inequality increases with \(t\):
its coefficient is \(U(y)+\sigma/h-L(y)>0\).
Thus one of the two actual heights, denoted \(v\), satisfies

\[
W(h,c,v):=v\left[c-\frac{cv+\sigma}{h}
                   -\frac\sigma{1-v}\right]-\sigma\ge0.       \tag{16}
\]

Also the three edge triangles at that point give

\[
0<v\le h-\frac{2\sigma}{c}
<\frac78-2\sigma<\frac23.                              \tag{17}
\]

For fixed \(c,v\), \(W\) increases with \(h\). Use (5) to
replace \(h\) by \(H_0+(1-c)/25\). Along that line, the derivative
with respect to \(c\) is

\[
\frac{v}{h^2}
\left[h(h-v)-\frac{cv+\sigma}{25}\right]>0.             \tag{18}
\]

Indeed \(h\ge H_0>4/5\), \(v<2/3\), \(c\le1\), and
\(\sigma<1/8\) bound the bracket below by

\[
\frac45\left(\frac45-\frac23\right)
-\frac{2/3+1/8}{25}=\frac3{40}>0.
\]

Increasing \(c\) to one therefore gives

\[
W(h,c,v)\le W(H_0,1,v).
\]

But the latter is strictly negative for every height in (17).
To see this using rational arithmetic, multiply it by
\(H_0(1-v)>0\), and put \(z=v-9/32\). The resulting cubic is

\[
N(z)=z^3-\frac{52511}{58400}z^2
          -\frac{321}{1868800}z-\frac{6017}{59801600}.
\]

Since \(z<37/96\), we have \(z^3\le(37/96)z^2\), and hence

\[
N(z)\le-\frac{11251}{21900}z^2
          -\frac{321}{1868800}z-\frac{6017}{59801600}<0.
\]

The last quadratic has negative leading coefficient and discriminant

\[
-\frac{2166003421}{10477240320000}<0.
\]

This contradicts (16), and completes the exclusion of the left cap.
Reflection interchanges \((h,c,d,f)\) with \((c,h,f,d)\), preserving
all hypotheses and exchanging the two side caps, so the right cap is
excluded as well. The top cap beyond \(DF\) is not covered by this
theorem.
