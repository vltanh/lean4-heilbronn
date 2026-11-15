# The mixed upper pair in the C1 pentagon

This note continues the exact-pentagon branch of
[ONE_CORNER_COMPLETION.md](ONE_CORNER_COMPLETION.md). It excludes the
complete placement in which the lower left-sector point is inside
\(OHF\). The other placement is stated explicitly at the end.

Write \([XYZ]=\det(Y-X,Z-X)\) for signed doubled area, and put

\[
s=\frac7{64},\qquad K=4+2\sqrt3,\qquad \rho=\frac{13}{16}<Ks.
\]

The actual points are

\[
O=(0,0),\ H=(0,h),\ C=(c,0),\ D=(1,d),\ F=(f,1),
\qquad 0<d\le h\le1,\quad0<f\le c\le1,
\]

and four free points. Assume this is a competitive nine-point configuration,
with minimum unsigned triangle area at least \(A_0\). In particular,
every unsigned doubled triangle area is at least \(s\).
Two free points are inside \(OHC\); the upper points are
\(P\in HCD\cap HCF\) and \(Q\in CDF\cap HCD\). Every unsigned
doubled area estimate below uses the rational threshold \(s\).
The preceding mixed-pair theorem puts \(C\) on one side of \(PQ\), and \(H,D,F\) on the
other. The reflected upper-ear placement is equivalent.

We use the global actual-triangle capacity theorem and the alternating
sector theorem from [FOUR_INTERIOR_QUADRILATERALS.md](FOUR_INTERIOR_QUADRILATERALS.md).
Both are already proved for a competitive nine-point configuration.

## 1. Only one upper diagonal-sector assignment is possible

Let \(J=OD\cap HC\). The eight points other than \(F\) have
quadrilateral hull \(O,H,D,C\), so exactly one free point occupies each
open diagonal sector. Name the lower points \(L,M\) so that \(L\)
is above \(OD\), and \(M\) below it.

The directed line from \(P\) to \(Q\) puts \(C\) on its negative
side and \(F\) on its positive side: their segment crosses the relative
interior of \(CF\) from its \(H\)-side to its \(D\)-side. Thus
\([PQH],[PQD],[PQF]>0>[PQC]\).

Suppose \(P\) were below \(OD\) and \(Q\) above it. Since both
have positive first coordinate,

\[
[PQO]=P_xQ_y-P_yQ_x>0.
\]

Their segment crosses the relative interior of \(OD\). The affine
signed distance from \(PQ\) therefore has opposite signs at \(O,D\),
forcing \([PQD]<0\), a contradiction. Consequently

\[
\boxed{L,P\text{ are above }OD;\qquad M,Q\text{ are below }OD.} \tag{1}
\]

Both \(L,P\) are inside \(OHQ\). They are above \(OQ\), because
that ray is strictly below \(OD\). The point \(P\) is below \(HQ\)
by the forced sign \([PQH]>0\). The point \(L\) is below \(HC\),
while \(Q\) is above it, so \(L\) is also below \(HQ\). Thus the
two-interior-point bound gives

\[
\boxed{hQ_x\ge Ks>\rho.}                               \tag{2}
\]

The original two containing triangles also give

\[
hc\ge Ks>\rho,\qquad h(1-c)+cd\ge Ks>\rho.              \tag{3}
\]

## 2. The opposite triangle at the lower left point has capacity one

Write \(L=(l,y)\). The empty anchor triangle \(HDF\) gives

\[
s\le[HDF]=1-h+f(h-d)\le1-d,
\qquad d\le1-s.                                        \tag{4}
\]

The point \(Q\) is inside \(CDL\). Indeed it is on the interior
side of \(CD\), above \(CL\) because it is above \(HC\), and
below \(DL\) because it is below \(OD\), whereas \(L\) is above
\(OD\).

Nevertheless \(CDL\) cannot contain two further actual points. To
prove this, the actual triangles at \(L\) give

\[
hl\ge s,\qquad h(c-l)-cy\ge s.
\]

Using these inequalities in its positive doubled area yields

\[
\begin{aligned}
[CDL]
&=d(c-l)+(1-c)y\\
&\le dc+(1-c)h-\frac{sd}{h}-\frac{2s(1-c)}c\\
&\le d(c-s)+(1-c)-\frac{2s(1-c)}c\\
&\le1+s+s^2-sc-\frac{2s}{c}
\le(1-s)^2<\rho<Ks.                                   \tag{5}
\end{aligned}
\]

For the second line, substitute the upper bound on \(y\), then
\(l\ge s/h\). Increasing \(h\) to one increases that expression,
since its derivative is \(1-c+sd/h^2>0\). Increasing \(d\) to
\(1-s\) is valid because \(c-s>0\). The last inequality uses
\(c+2/c\ge3\) for \(0<c\le1\). Finally
\(\rho-(1-s)^2=79/4096>0\).

Since \(Q\) is already inside \(CDL\), the two-interior-point bound
excludes any second point there. The upper point \(P\) is above
\(CL\), so it must be above \(DL\). Similarly \(M\) is below
\(DL\), so it must be below \(CL\). We have proved

\[
\boxed{P\text{ is above }DL;\qquad M\text{ is below }CL.} \tag{6}
\]

## 3. The line \(OF\) leaves exactly two alternatives

The point \(Q\) is interior to \(CDF\), so subdivision gives

\[
3s\le[ CDF ]=1-c+d(c-f)\le1-f,
\qquad f\le1-3s.                                      \tag{7}
\]

The ray \(OF\) is strictly above \(OD\), so \(M\) lies on its
\(C\)-side. The points \(L,M\) are below \(CF\), as is \(P\)
by its central upper placement. Hence any of these three points on the
\(C\)-side of \(OF\) belongs to \(OCF\). The actual-triangle
capacity theorem, with \(M\) already there, forces at least one of
\(L,P\) to the \(H\)-side of \(OF\).

A point among \(L,P\) on that side lies inside \(OHF\): both
are below \(HF\). They cannot both lie there, because its doubled area
is at most \(hf\le f\le1-3s<Ks\). Thus exactly one belongs to
\(OHF\), and the other to \(OCF\).

The remainder of this note proves the following complete exclusion.

**Theorem.** The alternative \(L\in OHF\), \(P\in OCF\) is
impossible at the competitive threshold.

## 4. A barycentric inequality eliminates \(P\)

In this alternative, \(P\) is inside \(FDL\). It is above \(DL\)
by (6), and below \(DF\), since it is below \(HD\). Also \(L\)
is on the \(H\)-side of \(OF\), while \(P\) is on the
\(C\)-side. At every height below one, the line \(FL\) lies strictly
on the \(H\)-side of \(OF\); thus \(P\) is on the \(D\)-side
of \(FL\). These are exactly the three side tests for \(FDL\).

Write \(Q=(x,t)\), and define positive doubled areas

\[
\begin{aligned}
A&=[FLD]=1-df-(1-f)y-(1-d)l,\\
B&=[HLQ]=x(h-y)-l(h-t),\\
T&=[HQF]+[HQD].
\end{aligned}
\]

In particular \(A\ge3s\), \(B\ge s\), and \(T\ge2s\).
The affine function \(\eta(X)=-[HQX]\) takes the value \(B\)
at \(L\), and negative values at \(F,D\) whose absolute sum is
\(T\). Its value at \(P\) is at least \(s\). In the barycentric
expression for \(P\) in \(FDL\), the coefficients at \(F,D\)
are each at least \(s/A\). Consequently

\[
s\le\eta(P)\le B-\frac{s}{A}(2B+T),
\qquad
\boxed{\Phi:=AB-s(A+2B+T)\ge0.}                         \tag{8}
\]

## 5. Bounds depending only on \(f\)

First (3) gives a useful lower bound for \(d\). Since
\(h\ge\rho\), \(c\ge\rho/h\), and
\(d>h+(\rho-h)/c\),

\[
d\ge2h-\frac{h^2}{\rho}\ge2-\frac1\rho=\frac{10}{13}.
                                                               \tag{9}
\]

The second inequality holds because the displayed quadratic decreases
for \(\rho\le h\le1\). As \(L\in OHF\), subdivision gives
\(hf\ge3s\). Equations (4), (7), and (9) therefore imply

\[
3s\le f\le1-3s,\qquad
\frac{10}{13}\le d\le1-s.                              \tag{10}
\]

The two positive areas \([OFL]\) and \(-[OHL]\) give

\[
l\ge\frac{s}{h},\qquad
y\ge\frac{s+l}{f}\ge\frac{s(1+1/h)}{f}.
\]

Substitute these into \(A\). Increasing \(h\) to one is valid
because the resulting expression has derivative
\(s(1/f-d)/h^2>0\). Decreasing \(d\) to \(10/13\) is valid
because \(f>s\). This gives

\[
\boxed{
A\le a(f):=1+s+\frac{10s}{13}-\frac{10f}{13}-\frac{2s}{f}.}
                                                               \tag{11}
\]

For \(B\), the same two lower bounds give

\[
B\le x\left[h-\frac{s(1+1/h)}f\right]-s+\frac{st}{h}
\le x\left(1-\frac{2s}{f}\right)-s+st.
\]

The last expression increases with \(h\) before that replacement:
its derivative is \(x+(s/h^2)(x/f-t)>0\). Here \(x>ft\)
because \(Q\in CDF\).

Since \(Q\) is below \(OD\), its two actual triangles with
\(OD\) and \(CD\) imply

\[
t\le dx-s,\qquad
s\le d(c-x)+(1-c)t\le dc(1-x),
\qquad x\le1-\frac{s}{d}.
\]

The coefficient \(1+sd-2s/f\) is positive because \(f\ge3s\).
Both factors \(1-s/d\) and \(1+sd-2s/f\) increase with \(d\).
Thus

\[
\boxed{
B\le b(f):=
\left(1-\frac{s}{1-s}\right)
\left[1+s(1-s)-\frac{2s}{f}\right]-s-s^2.}               \tag{12}
\]

Finally put \(e=[HDF]=1-h+f(h-d)\). Equations (4) and (9) give
\(s\le e\le3/13\), and (2) gives \(x\ge\rho\).
The actual area \([DFQ]\ge s\) bounds the height of \(Q\):

\[
t\le d+\frac{(1-d)(1-x)-s}{1-f}.
\]

Substitute this into
\(T=h(1+f)+(d+1-2h)x-(1+f)t\). Direct simplification yields

\[
T\ge\frac{s(1+f)+e(2x-1-f)}{1-f}.
\]

If \(f\le5/8=2\rho-1\), use \(e\ge s\); otherwise first
replace \(x\) by \(\rho\), then use \(e\le3/13\) with the
nonpositive coefficient \(5/8-f\). We obtain

\[
\boxed{
T\ge\tau(f):=
\begin{cases}
\dfrac{2\rho s}{1-f},&f\le5/8,\\[5pt]
\dfrac{s(1+f)+(3/13)(5/8-f)}{1-f},&f\ge5/8.
\end{cases}}                                             \tag{13}
\]

## 6. Both intervals give a strict rational contradiction

Increasing \(A,B\) to their upper bounds increases \(\Phi\),
because \(B\ge s\) and \(A\ge3s>2s\). Decreasing \(T\)
also increases it. Thus (8) requires

\[
0\le\Phi\le a(f)b(f)-s[a(f)+2b(f)+\tau(f)].              \tag{14}
\]

At \(s=7/64\), the last expression is

\[
-\frac{N_i(f)}{194248704 f^2(1-f)},
\]

where \(i=1\) for \(f\le5/8\), \(i=2\) otherwise, and

\[
\begin{aligned}
N_1(f)={}&-109366400f^4+271978583f^3-226269917f^2
             +75587470f-8153600,\\
N_2(f)={}&-109366400f^4+269399447f^3-224657957f^2
             +75587470f-8153600.
\end{aligned}
\]

Both polynomials are strictly positive throughout the larger common
interval \([3s,1-3s]\). Here is one elementary certificate covering
the whole interval without subdivision. Put \(z=f-1/2\), so
\(|z|\le11/64\). In either expansion the cubic coefficient is
positive and the quartic coefficient is \(-109366400\). Using
\(z^3\ge-(11/64)z^2\) and
\(z^4\le(11/64)^2z^2\), the resulting quadratic lower bounds
have the following coefficients.

| Polynomial | Coefficient of \(z^2\) | Coefficient of \(z\) | Constant | Discriminant |
|---|---:|---:|---:|---:|
| \(N_1\) | \(337020417/64\) | \(-5526839/4\) | \(1876629/8\) | \(-388094693478925/128\) |
| \(N_2\) | \(220959297/64\) | \(-6816407/4\) | \(2521413/8\) | \(-185422408809469/128\) |

Each leading coefficient is positive and each discriminant negative, so
each quadratic, and therefore each \(N_i\), is strictly positive.
The denominator in (14) is positive. Its right side is consequently
negative, contradicting (8). This proves the theorem. \(\square\)

## Remaining scope and verification

The sole remaining exact-pentagon alternative in this note is
\(P\in OHF\), \(L\in OCF\), with all the sector and line
placements in (1), (6). It requires a separate argument. C1 hulls larger
than the five-anchor pentagon are also not excluded here.

[check_c1_mixed_pentagon.py](check_c1_mixed_pentagon.py) checks the
determinant identities, monotone expressions, rational bounds, quartic
identities, and quadratic certificates. The containments and exhaustive
geometric alternatives are proved above, not inferred from numerical
samples.
