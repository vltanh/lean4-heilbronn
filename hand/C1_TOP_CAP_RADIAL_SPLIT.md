# A top-cap point separates the two lower C1 rays

Use the C1 anchors

\[
O=(0,0),\ H=(0,h),\ C=(c,0),\ D=(1,d),\ F=(f,1),
\qquad 0<d\le h\le1,\quad0<f\le c\le1.
\]

Suppose two further actual points are strictly inside \(OHC\), and
an actual point \(X=(x,Y)\) lies beyond \(DF\), in
\(\operatorname{conv}\{D,F,(1,1)\}\). Assume the configuration is
competitive, so every unsigned doubled actual triangle area is at least

\[
\sigma=\frac8{73}<2A_0.
\]

Write \([ABC]=\det(B-A,C-A)\), and put

\[
K=4+2\sqrt3,\qquad k=K\sigma,\qquad
\rho=\frac{49}{60}<k.
\]

The two rational comparisons are recorded in
[C1_TWO_LOWER_SIDE_CAP.md](C1_TWO_LOWER_SIDE_CAP.md).

**Theorem.** The two lower points lie on opposite sides of \(OX\).
Equivalently, the complete placement in which a top-cap point leaves
both lower points on the same side of its ray from \(O\) is impossible.
The proof uses only these eight actual points; no condition on the ninth
point is needed.

Reflection in the square diagonal exchanges the two possible same-side
placements. It therefore suffices to suppose that both lower points are
on the \(C\)-side of \(OX\).

## 1. The three common containing triangles

The top-cap placement gives

\[
x>f,\qquad Y>d,\qquad
[HFX]<0,\quad [CFX]<0,\quad [CDX]>0.                    \tag{1}
\]

For the first signed inequality, use
\([HFX]=f(Y-h)-(1-h)x\le(1-h)(f-x)\le0\), with
strictness supplied by positive minimum area. For the other two, the
vertices \(D,F,(1,1)\) are on the appropriate closed sides of
\(CF\) and \(CD\); again no actual zero-area equality is possible.
All three vertices are strictly above \(HC\), so \(X\) is above
that line as well.

Every lower point \(R=(r,z)\) is inside \(OCX\). Its side of
\(OX\) is the assumed one, and the line \(CX\) lies above the
lower triangle: the affine determinant \([CXR]\) is positive at
\(O,H\) and zero at \(C\). Also
\(x/Y>f\), so the same point is on the \(C\)-side of \(OF\).
It is below \(CF\), because the lower triangle \(OHC\) is below
that line. Consequently both lower points belong to

\[
\boxed{OHC\cap OCX\cap OCF.}                          \tag{2}
\]

In particular the two-interior-point triangle theorem gives

\[
hc\ge k,\qquad cY\ge k,\qquad h,Y\ge k>\rho.          \tag{3}
\]

We first show

\[
\boxed{x<c.}                                          \tag{4}
\]

If \(x\ge c\), the actual right-side triangle gives

\[
\sigma\le[CDX]=(1-c)Y+d(c-x)\le1-c,
\]

so \(c\le1-\sigma\). Equation (3) would then give
\(h,Y\ge k/(1-\sigma)>1-\sigma\). The last strict comparison
follows already from
\(\rho-(1-\sigma)^2=7621/319740>0\).
On the other hand,

\[
|[HFX]|=(1-h)x-f(Y-h)\le1-\min(h,Y).                  \tag{5}
\]

When \(Y\ge h\), discard the nonpositive second term; when
\(Y<h\), use \(f<x\le1\) to bound the expression by
\(x(1-Y)\). Equation (5) is less than \(\sigma\), a contradiction.
This proves (4).

## 2. The noncontainment line cases are impossible

The four vertices \(O,C,X,H\) form a convex quadrilateral. Put

\[
a=hc,\qquad b=cY,\qquad W=cY+hx,\qquad
m=\min(a,b),\quad M=\max(a,b).
\]

Here \(a,b\) are its two common-base triangle areas and \(W\) is
its doubled total area. They satisfy
\(k\le m\le M\le1\), and
\(a+b-W=h(c-x)>0\) by (4).

The exterior actual point \(F\) forces

\[
\boxed{W\ge M\left(1+\frac\sigma{1-m}\right).}         \tag{6}
\]

If \(h\le Y\), combine
\((1-h)x-f(Y-h)\ge\sigma\) with \(hf\ge\sigma\):

\[
hx\ge\frac{\sigma Y}{1-h},\qquad
W\ge b\left(1+\frac\sigma{c-a}\right)
\ge b\left(1+\frac\sigma{1-a}\right).
\]

If \(Y<h\), combine the two actual inequalities

\[
(1-h)x-f(Y-h)\ge\sigma,\qquad
x-fY-c(1-Y)\ge\sigma.
\]

Eliminating \(f\) gives
\(hx\ge c(h-Y)+h\sigma/(1-Y)\). Hence

\[
W\ge a\left(1+\frac\sigma{c-b}\right)
\ge a\left(1+\frac\sigma{1-b}\right).
\]

These are precisely the two orders in (6). The denominators are positive;
in the first order \(h<1\) follows from the first actual inequality,
and in the second \(Y<h\le1\).

Apply the general central-cell line identities in Sections 1--2 of
[ONE_CORNER_COMPLETION.md](ONE_CORNER_COMPLETION.md), with every area
normalized by \(W\). If the pair line keeps \(O,C\) on the same
side, the same-side quadratic, maximized in its height variable, gives

\[
[ab-\sigma(a+b)]^2\ge4\sigma Wab,
\qquad ab-\sigma(a+b)>0.                               \tag{7}
\]

If the pair line separates \(O,C\), each of its two endpoint sign
cases also implies (7). Its original positive bracket is
\(ab-\sigma(W+a)\), or \(ab-\sigma(W+b)\); increasing this
bracket to the one in (7) is valid because \(W\ge a,b\).

But (6)--(7), after division by \(mM^2>0\), imply

\[
\frac{[m(1-\sigma)-\sigma]^2}{m}
\ge4\sigma\left(1+\frac\sigma{1-m}\right).
\]

For the left side, we first increased \(M\) to one in the positive
bracket \(m-\sigma-\sigma m/M\). The resulting expression increases
with \(m\ge\rho\), since its derivative is
\((1-\sigma)^2-\sigma^2/m^2>0\). Increasing \(m\) there to one,
and decreasing \(m\) on the right to \(\rho\), would force

\[
(1-2\sigma)^2
\ge4\sigma\left(1+\frac\sigma{1-\rho}\right).
\]

The difference of left and right is exactly
\(-5317/58619<0\). Thus only the middle line case could remain.
It separates \(O,C\) and puts \(H,X\) on opposite sides.

## 3. A scalar exclusion when \(O,F\) are on the same side

We prove a slightly more general statement needed for both orientations
of the middle case. Suppose the lower points are named
\(P=(p,y)\), \(Q=(q,t)\), so that the directed line \(PQ\)
puts \(O,F\) on its negative side and \(C\) on its positive side.
Then \(y>t\), because

\[
[CPQ]-[OPQ]=c(y-t)>0.
\]

Let \(\delta=y-t>0\). A weighted determinant identity is

\[
(1-y)(-[OPQ])+y(-[FPQ])
=\delta(p-fy)\ge\sigma.                               \tag{8}
\]

Both weights are positive and sum to one. Also
\(t\ge\sigma/c\ge\sigma\), and the lower edge triangle gives

\[
p\le c-\frac{cy+\sigma}{h}
\le1-\frac{y+\sigma}{h}.
\]

Consequently

\[
\boxed{D(h,f,y):=
\left[1-\frac\sigma h-\left(\frac1h+f\right)y\right]
(y-\sigma)\ge\sigma.}                                 \tag{9}
\]

The two factors used to replace those in (8) are positive; (8) gives
\(p-fy>0\), and \(\delta\le y-\sigma\).

### 3.1. Coarse bounds for \(h,f\)

The discriminant of the quadratic \(D(h,f,y)-\sigma\), multiplied
by \(h^2\), is

\[
\Delta(h,f)=[h-\sigma(2+hf)]^2-4\sigma h(1+hf).         \tag{10}
\]

We obtain, successively,

\[
\boxed{h>\frac{71}{80},\quad f<\frac27,
\quad h<\frac{23}{25},\quad f<\frac15.}                \tag{11}
\]

Here are all endpoint comparisons. Since \(hf\ge\sigma\), (9)
is at most
\([1-\sigma/h-(1+\sigma)y/h](y-\sigma)\), which increases
with \(h\). If \(h\le71/80\), its quadratic at that endpoint
has negative discriminant numerator

\[
\Delta(71/80,\sigma/(71/80))
=-\frac{169041839}{181748742400}<0.
\]

Next \(D\) increases with \(h\) and decreases with \(f\), for
\(y>\sigma\). If \(f\ge2/7\), replace \(h\) by one and
\(f\) by \(2/7\); the discriminant is

\[
\Delta(1,2/7)=-\frac{479}{261121}<0.
\]

Using \(x\le1\), \(Y\ge\rho\) in the actual \(HFX\) bound
now gives

\[
h\le\frac{1-\sigma-f\rho}{1-f}
<\frac{10073}{10950}
=\frac{23}{25}-\frac1{10950}.
\]

The fractional expression increases with \(f<2/7\), since
\(1-\sigma-\rho>0\). Finally, if \(f\ge1/5\), replacing
\(h,f\) in (9) by \(23/25,1/5\) gives

\[
\Delta(23/25,1/5)=-\frac{1182199}{83265625}<0.
\]

Each negative discriminant belongs to a quadratic with negative leading
coefficient, and therefore contradicts (9). This proves (11).

### 3.2. The upper point has height less than \(11/32\)

Put \(v_0=11/32\). The actual inequalities \([OPX]\ge\sigma\)
and \(|[HCP]|\ge\sigma\) imply

\[
Y(h-y-\sigma)-hxy-h\sigma\ge0.                         \tag{12}
\]

The left side decreases with \(y\). We show it is negative already
at \(y=v_0\), splitting only according to the order of \(h,Y\).

If \(Y\ge h\), the bound \(hf\ge\sigma\) and the actual
\(HFX\) inequality give

\[
x\ge\frac{\sigma Y}{h(1-h)},\qquad
Y\le\frac{h(1-h)}\sigma.
\]

After the first replacement in (12), its left side at \(v_0\) is
at most

\[
Y\left(h-v_0-\sigma-\frac{v_0\sigma}{1-h}\right)-h\sigma.
\]

If the coefficient of \(Y\) is negative, this is negative. Otherwise
increase \(Y\) to its displayed upper bound. The result is

\[
\frac h\sigma
\left[(1-h)(h-v_0-\sigma)-v_0\sigma-\sigma^2\right]<0.
\]

The bracket decreases for \(h\ge71/80\), and its value at \(71/80\)
is \(-57153/68211200<0\).

If \(Y<h\), use \(f<1/5\) in the actual cap inequality to get

\[
x\ge\frac{\sigma+(Y-h)/5}{1-h}.
\]

After this replacement the expression in (12), at \(v_0\), is
linear in \(Y\), with coefficient

\[
C(h)=h-v_0-\sigma-\frac{hv_0}{5(1-h)}<0.
\]

Indeed \(C\) decreases for \(h\ge71/80\), and
\(C(71/80)=-5687/52560<0\). Replacing \(Y\) by \(\rho\)
therefore gives the upper bound

\[
-\frac{N(h)}{700800(1-h)},\qquad
N(h)=447340h^2-689228h+259455.
\]

This is negative: \(N(71/80)=7379/64>0\), its derivative there
is \(209601/2>0\), and its second derivative is positive.
Both orders contradict (12) at \(y\ge v_0\). Hence

\[
y<\frac{11}{32}.                                      \tag{13}
\]

### 3.3. The height cap contradicts the pair inequality

Use \(hf\ge\sigma\), increase \(h\) to \(23/25\), and then
increase \(y\) to \(11/32\) in the upper bound for (9). The last
replacement is valid because the resulting concave quadratic has
positive derivative \(360597/1961072\) at \(11/32\), and is
therefore increasing throughout the smaller-height interval. Exact
evaluation gives

\[
D(h,f,y)-\sigma
\le-\frac{50377}{125508608}<0,
\]

contradicting (9). This excludes the whole middle-case alternative in
which \(O,F\) are on the same side of the pair line.

## 4. The other sign of \(F\) reduces to the same scalar proof

In the middle case \(O,C\) are on opposite sides. If \(F\) is
on the \(C\)-side, apply the affine reflection and shear

\[
\Psi(u,v)=\left(c-u-\frac{c-x}{Y}v,\ v\right).          \tag{14}
\]

It has determinant \(-1\), so preserves all unsigned doubled areas.
The old \(C,O,X,F,H\) become respectively the new
\(O',C',H',F',X'\), with

\[
\begin{aligned}
O'&=(0,0),& C'&=(c,0),&H'&=(0,Y),\\
F'&=(f',1),& f'&=c-f-\frac{c-x}{Y},\\
X'&=(x',h),& x'&=c-\frac{(c-x)h}{Y}.
\end{aligned}
\]

All points needed in Section 3 remain in the unit square. In detail,

\[
Yf'=|[CFX]|\ge\sigma,\qquad 0<f'<c,
\qquad 0<x'<c\le1,
\]

where \(x'>0\) is equivalent to \([H,C,X]>0\). The upper
bounds use (4). For any lower point \(R=(r,z)\), its new first
coordinate is \([CXR]/Y>0\), and is less than \(c\), since
\(r,z,c-x>0\). Heights are unchanged.

The two transformed lower points lie inside both \(O'H'C'\)
and \(O'C'X'\) by (2). Their two containing areas give
\(H'_y,X'_y\ge k>\rho\). The new anchor conditions are

\[
|[O'H'F']|=|[CFX]|\ge\sigma,
\qquad [H'F'X']=[HFX]\le-\sigma.
\]

These, the unit-square coordinate bounds, and the two containments are
exactly the hypotheses used in Section 3. The new pair line keeps
\(O',F'\) on the same side, because those are the images of the old
\(C,F\), and puts \(C'\) on the other. Reorienting and naming
the higher point \(P'\) gives the signs used in (8). Thus Section 3
also excludes this final alternative.

All central-cell line cases have now been excluded. Both lower points
cannot lie on the \(C\)-side of \(OX\); reflection excludes their
being on its other side. This proves the theorem. The complementary
case with one lower point on each side of \(OX\) is coupled to the
ninth point and fully excluded in
[C1_TWO_LOWER_COMPLETION.md](C1_TWO_LOWER_COMPLETION.md), using
the side-ear and pair-line companion results cited there.
