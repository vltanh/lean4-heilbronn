# The exact six-anchor hull in family N

This note studies the N normalization when its six prescribed boundary
points are exactly the convex-hull vertices. The first theorem in fact
applies throughout N, without this additional hull hypothesis. The note
closes every upper-pair placement and the exact six-anchor hull. N
configurations with additional hull vertices are outside this conclusion.

Write \([XYZ]=\det(Y-X,Z-X)\) for signed doubled area, and put

\[
s=\frac7{64},\qquad K=4+2\sqrt3,\qquad \rho=\frac{13}{16}<Ks.
\]

The last comparison follows from \(\sqrt3>12/7\). Assume that every
unsigned doubled triangle area of the configuration is at least \(s\).
This is a consequence of a minimum ordinary area at least
\(A_0=(9\sqrt{65}-55)/320\), since \(2A_0>s\).

The N anchors are

\[
\begin{array}{lll}
A=(0,a),&H=(0,h),&0<a<h<1,\\
B=(b,0),&C=(c,0),&0<b<c<1,\\
D=(1,d),&F=(f,1),&
a\le d\le h,\quad b\le f\le c.
\end{array}                                                   \tag{1}
\]

All six are actual configuration points. No assumption \(f\le1/2\)
is made.

## 1. Every anchor ear has capacity one

**Theorem 1.** Under (1), each of the six cyclic anchor ears
\(ABH,ABC,BCD,CDF,DFH,FHA\) has doubled area strictly below \(\rho\).
Consequently none of these triangles can contain two further actual
points in a competitive configuration.

The capacity conclusion follows from the two-interior-point triangle
theorem in [CORNER_FAMILIES.md](CORNER_FAMILIES.md): two additional
points in an actual triangle require doubled area at least \(Ks>\rho\).
A further point on an edge gives a zero triangle, so there is no omitted
boundary case.

### The upper ear \(HDF\)

Put \(L=h-a>0\). The actual triangles \(ABC\) and \(ABH\) give

\[
a(c-b)\ge s,\qquad bL\ge s,
\qquad
\frac{s}{a}+\frac{s}{L}\le c\le1.                           \tag{2}
\]

Also

\[
s\le[CDF]=1-c+d(c-f)\le1-f,
\]

because \(0<d\le1\) and \(c-f\ge0\). Hence \(f\le1-s\).
Using \(d\ge a\) and \(h-d\ge0\),

\[
[HDF]=1-h+f(h-d)
\le1-h+(1-s)(h-a)=1-a-sL.                                  \tag{3}
\]

The Cauchy--Schwarz inequality, followed by (2), implies

\[
(a+sL)\left(\frac1a+\frac1L\right)\ge(1+\sqrt s)^2,
\qquad
a+sL\ge s(1+\sqrt s)^2.                                    \tag{4}
\]

The comparison \(\sqrt s>5/16\) follows by squaring, since
\(s-(5/16)^2=3/256>0\). Therefore

\[
a+sL>
s\left(\frac{21}{16}\right)^2
=\frac{3087}{16384}
=\frac3{16}+\frac{15}{16384}.                              \tag{5}
\]

Equations (3)--(5) give \([HDF]<13/16\).

### The left ear \(AHF\)

Suppose for contradiction that \([AFH]=f(h-a)\ge\rho\).
The inequality \(b(h-a)\ge s\), together with \(h-a\le1\), gives
\(b\ge s\). The triangle \(ABC\) then gives

\[
a\ge\frac{s}{c-b}\ge\frac{s}{1-s}=\frac7{57}.               \tag{6}
\]

Also \(f\ge\rho\), because \(h-a\le1\). Put
\(Z=[HCF]=c(1-h)+fh\). Its positive terms satisfy

\[
Z\ge fh=f(h-a)+fa
\ge\rho\left(1+\frac7{57}\right)=\frac{52}{57}.              \tag{7}
\]

On the other hand, \(d\le h\) gives

\[
s\le[CDF]=1-c+d(c-f)
\le1-c+h(c-f)=1-Z,
\qquad Z\le1-s=\frac{57}{64}.                              \tag{8}
\]

The bounds (7)--(8) contradict

\[
\frac{52}{57}-\frac{57}{64}=\frac{79}{3648}>0.
\]

Thus \([AFH]<\rho\).

### Transpose and compare the remaining ears

Transposition \((x,y)\mapsto(y,x)\), followed by the relabeling

\[
(A,H,B,C,D,F)\mapsto(B,C,A,H,F,D),
\]

preserves (1). It exchanges \(AHF\) with \(BCD\), and \(HDF\)
with \(CDF\). Thus these two ears also have doubled area below
\(\rho\). Finally,

\[
[ABH]=b(h-a)\le f(h-a)=[AFH],\qquad
[ABC]=a(c-b)\le d(c-b)=[BCD].
\]

This proves all six assertions. \(\square\)

## 2. Consequence for the complete upper-pair placement

Now impose the exact six-anchor hull hypothesis. By Section 4 of
[QUADRILATERAL_HULL.md](QUADRILATERAL_HULL.md), a competitive
configuration has precisely one free point below \(HC\) and two,
say \(P,R\), in the upper quadrilateral \(HCDF\).
Its doubled area is

\[
W=1-(h-d)(c-f)\le1.
\]

**Theorem 2.** The complete placements \(P,R\in HDF\) and
\(P,R\in CDF\) are impossible.

Indeed each would put two further points in an ear forbidden by
Theorem 1. This argument does not require any restriction on the lower
free point or on the line \(PR\).

The central-pair quadrilateral theorem in
[ONE_CORNER_COMPLETION.md](ONE_CORNER_COMPLETION.md), Theorem 2,
also forbids \(P,R\) from sharing a diagonal sector of \(HCDF\).
Let \(J=HD\cap CF\). The four open sectors are \(HCJ,CDJ,DFJ,FHJ\).
No free point is on either diagonal, because both of its endpoints
are actual points. After Theorem 2, the only possible distinct-sector
assignments, with the names \(P,R\) interchangeable, are

\[
\{HCJ,CDJ\},\quad
\{HCJ,FHJ\},\quad
\{HCJ,DFJ\},\quad
\{CDJ,FHJ\}.                                               \tag{9}
\]

The first two are the mixed placements in \(HCD\) and \(HCF\);
the last two are the opposite-sector placements. Section 3 excludes
the third assignment. The lower point may be assumed
to lie in \(AHC\) after the empty-\(ABC\) normalization from
Section 5 of [QUADRILATERAL_HULL.md](QUADRILATERAL_HULL.md).

## 3. The lower and upper opposite sectors cannot both be occupied

**Theorem 3.** Under the exact six-anchor hull hypothesis, the
assignment \(\{HCJ,DFJ\}\) in (9) is impossible.

Put \(z=hc\). The five actual points \(H,C,A,B,Q\), where \(Q\)
is the lower free point, lie in the triangle with vertices
\((0,0),H,C\). Two of its vertices are actual points. The
endpoint-triangle theorem in [TYPE_II.md](TYPE_II.md), Section 1,
therefore gives

\[
z\ge\frac{s}{3-2\sqrt2}>\frac7{11}=:z_0.                   \tag{10}
\]

For the strict rational comparison, \(3-2\sqrt2<11/64\)
follows from \(\sqrt2>181/128\), verified by
\(2\cdot128^2-181^2=7>0\). The upper quadrilateral contains
both upper points, so Theorem 1 of
[QUADRILATERAL_HULL.md](QUADRILATERAL_HULL.md) gives

\[
8s\le W\le1.                                               \tag{11}
\]

In fact (10)--(11), together with the six anchors, forbid any free
point in the sector \(DFJ\). The other upper point is used only in
obtaining (11).

### The determinant inequality in the \(DF\) sector

Set

\[
p=cd,\qquad q=hf,\qquad k=\frac{pq}{z}=df,\qquad
E=[HDF]=1-h+q-k,\qquad G=[CDF]=1-c+p-k.
\]

All of \(E,G\) are positive, and

\[
s\le p,q\le z,\qquad W=1-z+p+q-k.                          \tag{12}
\]

The lower bounds follow from \([BCD]=d(c-b)\ge s\) and
\([AFH]=f(h-a)\ge s\). The upper bounds use \(d\le h\) and
\(f\le c\).

If \(R\) belongs to \(DFJ\), it is inside both \(HDF\) and \(CDF\);
hence \(E,G\ge3s\). The diagonal-sector calculation in
Section 1 of [QUADRILATERAL_HULL.md](QUADRILATERAL_HULL.md)
also gives

\[
\boxed{EG\ge s(W+E+G).}                                   \tag{13}
\]

To make the conversion explicit, normalize the two full diagonals to
have length one, and put \(x=[HCF]/W\), \(y=[HCD]/W\).
The distances from their intersection toward \(D,F\) are \(1-x,1-y\).
The three positive triangles at \(R\), two using a full diagonal and
one using the hull edge \(DF\), give

\[
(1-x)(1-y)\ge\frac{s}{W}(3-x-y).
\]

Since \(G=W(1-x)\) and \(E=W(1-y)\), multiplication by \(W^2\)
is exactly (13).

### Eliminate the two remaining individual heights

Define

\[
U=1-s+q-k,\qquad V=1-s+p-k.
\]

Then \(E-s=U-h>0\), \(G-s=V-c>0\), and (13) says

\[
(U-h)(V-c)\ge s(W+s).
\]

Cauchy--Schwarz gives

\[
(U-h)(V-c)
=UV+z-Uc-Vh
\le(\sqrt{UV}-\sqrt z)^2.
\]

Both factors on the left are positive, so \(U>h\), \(V>c\),
and \(\sqrt{UV}>\sqrt z\). Consequently

\[
\Delta:=UV-z-s(W+s)\ge2\sqrt{zs(W+s)}>0.                   \tag{14}
\]

The identity

\[
UV=(1-s)(W+z-s)-(W-s)k                                   \tag{15}
\]

reduces the other side to two scalar parameters. Indeed,
\((p-s)(q-s)\ge0\) and (12) imply

\[
k(z-s)\ge s(W-1+z-s),\qquad
k\ge s+\frac{s(W-1)}{z-s}.                                \tag{16}
\]

Since \(W-s>0\), inserting (16) into (15) gives

\[
\begin{split}
\Delta\le J(z,W):={}&
W(1-3s)-sz-s+s^2\\
&-\frac{s(W-s)(W-1)}{z-s}.                                \tag{17}
\end{split}
\]

### One scalar rectangle yields an exact contradiction

For \(z\ge z_0=7/11\) and \(8s\le W\le1\),

\[
\frac{\partial J}{\partial z}
=-s+\frac{s(W-s)(W-1)}{(z-s)^2}<0.
\]

Also \(2W-1-s>0\), so

\[
\begin{split}
\frac{\partial J}{\partial W}
&=1-3s-\frac{s(2W-1-s)}{z-s}\\
&\ge1-3s-\frac{s(1-s)}{z_0-s}
=\frac{413}{848}>0.
\end{split}
\]

These are scalar relaxations, not movements of configuration points.
Thus (17) implies

\[
0<\Delta\le J(z_0,1)
=1-4s+s^2-sz_0=\frac{22747}{45056}.                        \tag{18}
\]

But (14) and (11) require
\(\Delta^2\ge4z_0s(9s)=36z_0s^2\), whereas

\[
\left(\frac{22747}{45056}\right)^2-36z_0s^2
=-\frac{38925479}{2030043136}<0.                           \tag{19}
\]

This contradiction proves Theorem 3. \(\square\)

Only the mixed pairs \(\{HCJ,CDJ\}\), \(\{HCJ,FHJ\}\), and the
remaining opposite pair \(\{CDJ,FHJ\}\) survive through Section 3.
The next section excludes the latter.


## 4. The other opposite pair is also impossible

**Theorem 4.** In a configuration with minimum ordinary triangle area
at least \(A_0\), the assignment \(\{CDJ,FHJ\}\) in (9) is impossible.
Consequently only the two mixed upper-pair placements remain.

For this section use the slightly stronger rational threshold

\[
\sigma=\frac8{73}<2A_0.
\]

Indeed \(657\sqrt{65}>5295\), as follows on squaring from
\(657^2\cdot65-5295^2=20160>0\).
Name the upper points \(P\in CDJ\), \(R\in FHJ\), and the lower
point \(Q\). Each of \(CDF,HDF\) contains an upper point, so

\[
E=[HDF]\ge3\sigma,\qquad G=[CDF]\ge3\sigma.                 \tag{20}
\]

The Pattern I calculation in Section 7 of
[ONE_CORNER.md](ONE_CORNER.md) applies to these two opposite sectors.
That calculation uses only \(h,c\le1\), \(d\le h\), \(f\le c\),
and the two diagonal-sector inequalities at threshold \(s=7/64\);
its bound on \(hc\) precedes the C1-specific contradiction. It gives

\[
\boxed{\frac7{11}<z:=hc\le\frac{625}{896}<\rho.}            \tag{21}
\]

The lower bound is (10). We retain the weaker threshold \(s\) only
in this already proved upper estimate; all new estimates in the present
section use \(\sigma\).

By the empty-ear normalization, \(Q\) is inside \(AHC\).
It cannot lie in \(ABH\): cell I of the endpoint-triangle proof in
Section 1 of [TYPE_II.md](TYPE_II.md) would imply
\(hc\ge K\sigma>\rho\), contrary to (21).
Thus

\[
\boxed{Q\in AHC\cap HBC.}                                 \tag{22}
\]

### Four cross-triangles have capacity one

First (20) gives \(d,f\le1-3\sigma\), since \(E\le1-d\)
and \(G\le1-f\). Hence

\[
[ACD]=a+c(d-a)\le d\le1-3\sigma<K\sigma,\qquad
[HBF]=b(1-h)+fh\le f\le1-3\sigma<K\sigma.                  \tag{23}
\]

We next prove the same capacity bound for \(ADF\), and then transpose
to obtain it for \(BDF\). Put

\[
X=[ADF]=1-a-f(d-a),\qquad
\tau=1-X=a+f(d-a),\qquad M=1-df-3\sigma.
\]

The two inequalities (20) imply

\[
h\le\frac{M}{1-f},\qquad c\le\frac{M}{1-d}.                \tag{24}
\]

All denominators are positive. Also

\[
X-3\sigma=M-a(1-f)>0,
\]

because \(X=E+(1-f)(h-a)>E\ge3\sigma\).
The anchor inequalities \(a(c-b)\ge\sigma\) and
\(b(h-a)\ge\sigma\) give

\[
\frac{\sigma}{a}+\frac{\sigma}{h-a}\le c.
\]

Substituting (24), and cancelling the positive \(M\), yields

\[
a(X-3\sigma)\ge\sigma(1-d).                               \tag{25}
\]

For clarity, the substituted left side is
\(\sigma/a+\sigma(1-f)/(X-3\sigma)
=\sigma M/[a(X-3\sigma)]\), and its right side is
\(M/(1-d)\).

Since \(f\ge b\), the inequality \(b(h-a)\ge\sigma\) also gives
\(f(h-a)\ge\sigma\). Combining this with (24) gives

\[
f(X-2\sigma)\ge\sigma.                                    \tag{26}
\]

The following exact identity now eliminates \(a,d,f\):

\[
\begin{split}
\tau(X-2\sigma)-\sigma
={}&a(X-3\sigma)-\sigma(1-d)\\
&+(d-a)\bigl[f(X-2\sigma)-\sigma\bigr]\ge0.
\end{split}                                               \tag{27}
\]

Suppose \(X\ge K\sigma\). Since \(\sqrt3>173/100\),
we have \(K>373/50\), and therefore

\[
0<\tau\le\tau_0:=1-\frac{373}{50}\sigma
=\frac{333}{1825}.
\]

The function \(\tau(1-2\sigma-\tau)\) increases on
\([0,\tau_0]\), because \(1-2\sigma-2\tau_0=759/1825>0\).
But

\[
\tau_0(1-2\sigma-\tau_0)-\sigma
=-\frac{1364}{3330625}<0,
\]

contradicting (27). Thus \(X<K\sigma\). Transposition proves the
same bound for \(BDF\). By the two-interior-point triangle theorem,
each of

\[
\boxed{ACD,\quad HBF,\quad ADF,\quad BDF}
\]

contains at most one further configuration point.

### Both side ears must be occupied

The hexagon is partitioned by \(AF\) and \(BD\) into the two
side ears \(AHF,BCD\) and the middle quadrilateral \(ABDF\).
Theorem 1 gives capacity one for each side ear.

We show that \(AHF\) cannot be empty. The upper point \(R\in FHJ\)
is above \(HD\), hence above \(AD\), and is outside \(BCD\).
If \(AHF\) were empty, \(R\) would therefore be in \(ADF\),
inside the middle quadrilateral.

The lower point \(Q\) is then either in the middle quadrilateral or
in \(BCD\). In the former case the capacity-one bound for \(ADF\)
puts \(Q\) below \(AD\); in the latter case it is already below
\(AD\). Since \(Q\in AHC\), either possibility places it inside
\(ACD\).

The upper point \(P\) lies inside \(HCD\) and is above \(AC\).
If it were below \(AD\), it too would lie in \(ACD\), violating
(23). It is therefore above \(AD\). This places it outside \(BCD\);
it is also outside \(AHF\), since it is on the \(D\)-side of \(CF\).
Thus \(P\) is in \(ADF\), together with \(R\), a contradiction.

Transposition exchanges \(AHF\) with \(BCD\), \(P\) with \(R\),
and \(AHC\) with \(HBC\). The second containment in (22) supplies
the identical argument for \(BCD\). Consequently both side ears are
occupied, so their positive doubled areas satisfy

\[
\boxed{f(h-a)\ge3\sigma,\qquad d(c-b)\ge3\sigma.}           \tag{28}
\]

Every line used here joins two actual points, so a free point on one
of the dividing lines would already give zero minimum area.

### An upper-pair scalar lemma

We record a bound using only the opposite upper-sector inequalities.
Put

\[
u=\frac{h-d}{h},\qquad v=\frac{c-f}{c},\qquad
Y=[HCD]=h-zu,\qquad Z=[HCF]=c-zv.
\]

Thus \(u,v\ge0\), \(W=1-zuv\), and
\(h=Y+zu,\ c=Z+zv\).
Suppose \(u,v\le\eta<1\), where \(\eta>0\).
The sector inequalities at \(P,R\) are

\[
Z(W-Y)\ge\sigma(2W+Z-Y),\qquad
Y(W-Z)\ge\sigma(2W+Y-Z).                                  \tag{29}
\]

We claim that

\[
Y,Z\le T:=\frac{W+\sqrt{W^2-8\sigma W}}2.                  \tag{30}
\]

To prove this, write \(m=\min(Y,Z)\), \(n=\max(Y,Z)\).
Both are at least \(3\sigma\). The smaller left-minus-right
expression in (29) gives

\[
n\le g(m):=\frac{m(W-\sigma)-2\sigma W}{m-\sigma}.
\]

Since \(n\ge m\), this implies \(m^2-Wm+2\sigma W\le0\),
and hence \(m\le T\). Also
\(g'(m)=\sigma(W+\sigma)/(m-\sigma)^2>0\), and \(g(T)=T\).
Thus \(n\le T\), proving (30). The square root is real because
the upper-pair quadrilateral theorem gives \(W\ge8\sigma\).

The elementary inequality \((\eta-u)(\eta-v)\ge0\) gives

\[
u+v\le\eta+\frac{uv}{\eta}.
\]

Using this, (30), and \(zuv=1-W\), we obtain

\[
\begin{split}
z=hc
&=(Y+zu)(Z+zv)\\
&\le T^2+zT(u+v)+z^2uv\\
&\le T^2+z\eta T+\frac{T(1-W)}{\eta}+z(1-W).
\end{split}
\]

Here \(W-\eta T>0\), since \(T<W\) and \(\eta<1\).
Therefore

\[
z\le
\frac{T[T+(1-W)/\eta]}{W-\eta T}
=\Phi_\eta(T)
:=\frac{-(1-\eta)T^2+(1-2\eta\sigma)T-2\sigma}
        {\eta[(1-\eta)T+2\eta\sigma]}.                    \tag{31}
\]

For the identity, use \(W=T^2/(T-2\sigma)\), which follows
from (30); its denominator is positive because \(T\ge4\sigma\).
All denominators in (31) are positive.

For a proposed upper bound \(B\), the inequality
\(\Phi_\eta(T)<B\) for every real \(T\) with positive denominator
follows whenever the following upward quadratic has negative
discriminant:

\[
(1-\eta)T^2
-\bigl[1-2\eta\sigma-B\eta(1-\eta)\bigr]T
+2\sigma(1+B\eta^2).                                     \tag{32}
\]

### Two rational substitutions finish the branch

Write \(\alpha=a/h\), \(\beta=b/c\), and \(t=\sigma/z\).
The two lower anchor triangles give

\[
\alpha(1-\beta)\ge t,\qquad \beta(1-\alpha)\ge t.
\]

Eliminating the other variable shows

\[
\alpha(1-\alpha)\ge t,\qquad\beta(1-\beta)\ge t.             \tag{33}
\]

For example, substitute \(\beta\ge t/(1-\alpha)\) in the first
inequality and multiply by \(1-\alpha>0\).

If \(t>r(1-r)\) for some \(0<r\le1/2\), (33) forces
\(\alpha,\beta>r\). Equation (28) then gives

\[
\frac{f}{c}\ge\frac{3t}{1-\alpha}>3r,\qquad
\frac{d}{h}\ge\frac{3t}{1-\beta}>3r,
\quad\text{so}\quad u,v<1-3r.                            \tag{34}
\]

First, the upper bound in (21) yields

\[
t\ge\frac{8}{73}\frac{896}{625}
>\frac7{36}\left(1-\frac7{36}\right),
\]

with exact excess \(27853/59130000>0\).
Take \(r=7/36\) in (34), so that \(u,v<\eta=5/12\).
For \(\eta=5/12\), \(B=2/3\), the discriminant of (32) is

\[
-\frac{3266423}{248629824}<0.
\]

Equations (31)--(32) therefore imply \(z<2/3\).

Now \(t=\sigma/z>12/73>4/25\), with exact gap \(8/1825\).
Use \(r=1/5\) in (34), obtaining \(u,v<\eta=2/5\).
For \(\eta=2/5\), \(B=7/11\), the same discriminant is

\[
-\frac{1044639}{403005625}<0.
\]

The second application of (31)--(32) gives \(z<7/11\), contradicting
(21). This closes the complete opposite pair and proves Theorem 4.
\(\square\)

The only remaining upper-pair assignments for an exact six-anchor N hull
are \(\{HCJ,CDJ\}\) and \(\{HCJ,FHJ\}\), the mixed pairs in
\(HCD\) and \(HCF\). They are exchanged by transposition. The lower
point still lies in \(HABC\); its position must be treated together
with that mixed pair in any continuation.


## 5. The mixed pair with the lower point on the \(C\)-side of \(HB\)

**Theorem 5.** Suppose the upper pair is
\(P\in HCJ,\ R\in CDJ\), so both points are inside \(HCD\),
and suppose the lower point \(Q\) is inside \(HBC\).
This entire placement is impossible at minimum area at least \(A_0\).

Continue with \(\sigma=8/73\). This theorem does not require
\(Q\in AHC\), so it also covers the lower point in the ear \(ABC\).
The mixed-pair line theorem, Theorem 3 of
[ONE_CORNER_COMPLETION.md](ONE_CORNER_COMPLETION.md), gives

\[
[PRH],[PRD],[PRF]>0>[PRC].                                 \tag{35}
\]

The orientation is fixed by the segment from \(P\) to \(R\), which
crosses \(CF\) from its \(H\)-side to its \(D\)-side.

### The central upper point is above \(BD\)

If both \(P,R\) were below \(BD\), they would both be inside
\(BCD\), contrary to Theorem 1. If \(P\) were below \(BD\)
and \(R\) above it, both first coordinates would exceed \(b\), and

\[
\frac{P_y}{P_x-b}<\frac{d}{1-b}
<\frac{R_y}{R_x-b}
\quad\Longrightarrow\quad [PRB]>0.
\]

Their segment would cross the relative interior of \(BD\), so
\(B,D\) would have opposite signs with respect to \(PR\).
This contradicts \([PRB],[PRD]>0\). Thus \(P\) is above \(BD\).
There are exactly two possibilities for \(R\).

### Both upper points are above \(BD\)

In this case \(P,R\in HBD\cap HCD\). If \(Q\) were also
above \(BD\), all three would belong to \(HBD\), contrary to
triangle capacity two in [THREE_INTERIOR_TRIANGLES.md](THREE_INTERIOR_TRIANGLES.md),
Corollary 2. Hence \(Q\) is below \(BD\), so

\[
Q\in BCD\cap HBC.
\]

Let

\[
a_1=[HBD],\qquad a_2=[HCD],\qquad
V=\text{doubled area of }HBCD.
\]

Both containing triangles of \(P,R\) have doubled area at least
\(K\sigma\). Both complementary triangles \(BCD,HBC\) contain
\(Q\), and therefore have doubled area at least \(3\sigma\). Thus,
with \(A=\max(a_1,a_2)\), \(B=\min(a_1,a_2)\),

\[
V\ge A+3\sigma,\qquad A\le1,\qquad B\le1-\sigma.           \tag{36}
\]

Here \(a_1=h-b(h-d)\le h\le1\);
also \(a_2\le1-\sigma\), since
\(a_2+[HDF]=W\le1\).

The line \(PR\) puts \(H,D\) on its positive side.
Since both \(P,R\) are inside \(HBD\), it puts \(B\)
on the negative side; (35) gives the same sign for \(C\).
The general same-side weighted inequality in
[ONE_CORNER_COMPLETION.md](ONE_CORNER_COMPLETION.md), equation (9),
applied before its unit-area specialization, gives a positive \(v\)
such that

\[
a_1a_2(v-\sigma)-\sigma v(a_1+a_2)-Vv^2\ge0.
\]

For applicability of its canonical affine coordinates, the relevant
overlap parameter is

\[
a_1+a_2-V=h(1-c)+bd>0.
\]

Maximizing the displayed concave quadratic in \(v\) therefore requires

\[
[AB-\sigma(A+B)]^2\ge4\sigma(A+3\sigma)AB,\qquad
AB-\sigma(A+B)>0.                                        \tag{37}
\]

We now exclude (37) by two root comparisons. For fixed \(A\),
its left side minus right side is an upward quadratic in \(B\),
negative at the positive zero of its bracket. Hence increasing
\(B\) to \(1-\sigma\) preserves both necessary conditions.
After that replacement, the leading coefficient of the quadratic
in \(A\) is

\[
(1-2\sigma)^2-4\sigma(1-\sigma)
=\frac{1169}{5329}>0.
\]

It too is negative at the positive zero of its bracket, so \(A\)
may be increased to one. But the resulting value is

\[
[1-\sigma-\sigma(2-\sigma)]^2
-4\sigma(1+3\sigma)(1-\sigma)
=-\frac{1471599}{28398241}<0.
\]

Thus the whole case with both upper points above \(BD\) is excluded.

### The right upper point is below \(BD\)

Now \(R\in BCD\). Its ear has capacity one, so \(Q\) must be
above \(BD\); we already know that \(P\) is above it. Both
\(P,Q\) lie inside \(HBR\).

Here are all three side tests for that containment. They are above
\(HB\), since \(Q\in HBC\) and \(P\) is above \(HC\).
They are above \(BR\), because the ray \(BR\) is strictly below
\(BD\). The point \(P\) is below \(HR\) by (35); the point \(Q\)
is below \(HC\), while \(R\) is above it, so \(Q\) is also below
\(HR\). Consequently

\[
[HBR]\ge K\sigma.                                        \tag{38}
\]

We give a quantitative upper bound that contradicts this.

Write \(R=(x,y)\), \(m=c-b\), and

\[
T=[HBD]=h(1-b)+bd,\qquad A=[BCD]=dm\ge3\sigma.
\]

The affine function \([HBX]\) has values \(0,hm,T\) at
\(B,C,D\), respectively, with \(T>hm>0\).
The barycentric weights of \(R\) at both \(B,C\) are at least
\(\sigma/A\). Therefore

\[
[HBR]\le
T-\frac{\sigma}{dm}(2T-hm)
=T\left(1-\frac{2\sigma}{d(c-b)}\right)+\frac{\sigma h}{d}.
                                                               \tag{39}
\]

The anchor inequalities imply \(b(1-b)\ge\sigma>7/64\),
so \(b>1/8\). To see the first assertion, combine
\(a\ge\sigma/(1-b)\) with
\(a\le1-\sigma/b\).
The right side of (39) strictly decreases with \(b\) and increases
with \(c\) on \(d(c-b)\ge3\sigma\): its derivatives are

\[
(d-h)\left(1-\frac{2\sigma}{d(c-b)}\right)
-\frac{2\sigma T}{d(c-b)^2}<0,\qquad
\frac{2\sigma T}{d(c-b)^2}>0.
\]

Decrease \(b\) to \(1/8\) and increase \(c\) to one.
Both changes increase \(d(c-b)\), so they preserve the range in
which those signs were proved. This yields

\[
[HBR]\le
F(h,d):=\frac{7h}{8}+\frac d8-\frac{\sigma h}{d}
-\frac{2\sigma}{7}.                                      \tag{40}
\]

Because \(R\in CDF\), \(f\le1-3\sigma\). The actual triangle
\(HDF\) then gives the linear budget

\[
3\sigma h+(1-3\sigma)d\le1-\sigma.                        \tag{41}
\]

The function \(F\) increases with \(d>0\).
For \(h\le1-\sigma\), replacing \(d\le h\) by \(h\) gives

\[
F(h,d)\le h-\frac{9\sigma}{7}
\le1-\frac{16\sigma}{7}
<\frac{373}{50}\sigma<K\sigma.                            \tag{42}
\]

For \(h\ge1-\sigma\), (41) allows the larger value

\[
d=D(h):=\frac{1-\sigma-3\sigma h}{1-3\sigma},
\qquad D(h)\ge D(1)=\frac{41}{49}=:d_0.
\]

The derivative of \(F(h,D(h))\) is positive throughout this interval.
Indeed \(h\le1\), \(D(h)\ge d_0\), and

\[
\begin{split}
\frac{d}{dh}F(h,D(h))
&=\frac78-\frac{\sigma}{D(h)}
-\frac{3\sigma}{1-3\sigma}
 \left(\frac18+\frac{\sigma h}{D(h)^2}\right)\\
&\ge
\frac78-\frac{\sigma}{d_0}
-\frac{3\sigma}{1-3\sigma}
 \left(\frac18+\frac{\sigma}{d_0^2}\right)
=\frac{29157287}{48103496}>0.
\end{split}
\]

It follows that

\[
F(h,d)\le F(1,d_0)=\frac{119864}{146657}
<\frac{373}{50}\sigma<K\sigma,                            \tag{43}
\]

where the first strict gap is exactly \(828/3666425>0\).
Equations (40), (42)--(43) contradict (38), excluding the second case.
This proves Theorem 5. \(\square\)

After transposition, the corresponding mixed \(HCF\) pair is excluded
whenever the lower point lies in \(AHC\).
Thus, after choosing the empty-\(ABC\) normalization, the only
placement still unresolved is

\[
\boxed{P\in HCJ,\quad R\in CDJ,\quad Q\in ABH.}             \tag{44}
\]

Its transpose is the same remaining geometric class. Section 6 closes it.


## 6. The last lower-ear placement is impossible

**Theorem 6.** The placement (44) is impossible at minimum ordinary
triangle area at least \(A_0\).

Continue with \(\sigma=8/73\), and write \(L=h-a\).
The lower point \(Q\in ABH\) and the anchor triangle \(ABC\) give

\[
bL\ge3\sigma,\qquad a(c-b)\ge\sigma.
\]

Since \(L\le1-a\), \(c\le1\), these imply

\[
1\ge\frac{3\sigma}{1-a}+\frac{\sigma}{a},
\qquad a(1-a-2\sigma)\ge\sigma.                            \tag{45}
\]

In particular

\[
\boxed{L<K\sigma.}                                        \tag{46}
\]

Indeed, if \(L\ge K\sigma\), then
\(a\le1-K\sigma<333/1825\). The increasing quadratic
\(a(1-2\sigma-a)\) would then be at most its value at \(333/1825\);
as checked in Section 4, that value minus \(\sigma\) is
\(-1364/3330625<0\), contradicting (45).

Consequently \(AHD\), whose doubled area is \(L\), has capacity one.
So does \(AHR\), whose doubled area is \(LR_x\le L\).
The lower point lies in \(AHC\): the ear \(ABC\) is empty, and a
point in both \(ABC,ABH\) is also excluded by the empty-ear lemma.

### The right upper point is below \(AD\)

The signs (35) remain valid. Both upper points cannot be above
\(AD\), because they would both belong to \(AHD\).
If \(P\) were below \(AD\) and \(R\) above it, their positive
first coordinates would give

\[
\frac{P_y-a}{P_x}<d-a<
\frac{R_y-a}{R_x},
\qquad [PRA]>0.
\]

Their segment would cross the relative interior of \(AD\),
forcing opposite signs at \(A,D\), contrary to (35).
Thus \(R\) is below \(AD\).

### The central upper point cannot also be below \(AD\)

Suppose first that \(P\) is below \(AD\). Then \(P,R\in ACD\).
Triangle capacity two forces \(Q\) above \(AD\).

If \([PRA]<0\), the three side tests put \(P\) inside \(AHR\):
it is right of \(AH\), above \(AR\), and below \(HR\).
The point \(Q\) is also inside \(AHR\). It is above \(AR\),
because it is above \(AD\) while \(R\) is below \(AD\);
it is below \(HR\), because \(Q\) is below \(HC\) while
\(R\) is above \(HC\). This contradicts (46).
Therefore \([PRA]>0\).

Apply the general opposite-endpoint weighted inequality from
[ONE_CORNER_COMPLETION.md](ONE_CORNER_COMPLETION.md), Theorem 1,
to the quadrilateral with cyclic order \(A,C,D,H\).
Its common base is \(CD\): the line \(PR\) puts \(C\) on its
negative side and \(D,A,H\) on its positive side. Let

\[
a_1=[ACD],\quad a_2=[HCD],\quad
V=\text{doubled area of }ACDH.
\]

Both containing triangles hold \(P,R\). Their complementary
triangles \(AHD,AHC\) each contain \(Q\). Hence

\[
a_1,a_2\le1-\sigma,\qquad
V\ge\max(a_1,a_2)+3\sigma.                                \tag{47}
\]

For the first bound, \(a_1\le d\le1-\sigma\);
also \(a_2+[HDF]=W\le1\).
The canonical overlap parameter is positive:
\(a_1+a_2-V=a_2-L>0\), by \(a_2\ge K\sigma>L\).

The weighted inequality, in the original area scale, therefore gives,
after possibly interchanging \(a_1,a_2\),

\[
[a_1a_2-\sigma(V+a_1)]^2\ge4\sigma Va_1a_2,\qquad
a_1a_2-\sigma(V+a_1)>0.                                  \tag{48}
\]

Decreasing \(V\) to \(a_1+3\sigma\) preserves these necessary
conditions. For fixed \(a_1\), the resulting polynomial is an upward
quadratic in \(a_2\), negative at the positive zero of its bracket.
Thus increase \(a_2\) to \(1-\sigma\).
The resulting quadratic in \(a_1\) has positive leading coefficient

\[
(1-3\sigma)^2-4\sigma(1-\sigma)=\frac{321}{5329}>0.
\]

The same root argument increases \(a_1\) to \(1-\sigma\).
The final required value is, however,

\[
(1-4\sigma)^2-4\sigma(1+2\sigma)(1-\sigma)^2
=-\frac{3074751}{28398241}<0.
\]

This excludes the whole case with \(P\) below \(AD\).

### The remaining right point strengthens the lower-point inequality

We are left with \(P\) above \(AD\), and \(Q,R\) below it.
The point \(P\) lies inside \(AHR\): it is above \(AR\),
below \(HR\) by (35), and right of \(AH\).
By (46), \(Q\) is outside that triangle. It is below \(HR\)
and right of \(AH\), so it must be below \(AR\).
Together with \(Q\in AHC\), this puts \(Q\) inside \(ACR\).

Write \(Q=(x,y)\), \(R=(u,v)\), and define the positive doubled
areas

\[
n=-[ADQ]=a+(d-a)x-y,\qquad
z_R=-[ADR]=a+(d-a)u-v.
\]

The actual triangle \(AQR\), with its now proved positive sign,
gives the exact identity and inequality

\[
\sigma\le[AQR]=un-xz_R.
\]

Since \(u\le1\), \(n>0\), and \(z_R\ge\sigma\), it follows that

\[
\boxed{n\ge\sigma(1+x),\qquad
y\le a+(d-a-\sigma)x-\sigma.}                             \tag{49}
\]

This is the additional constraint that uses the actual right point;
a containing-triangle area cost alone would not give (49).

Put \(T=[ABD]=a+b(d-a)\). The actual area \([ABQ]\ge\sigma\)
and (49) imply

\[
x(T-b\sigma)\ge\sigma(1+b).
\]

In particular \(T-b\sigma>0\). Adding the positive areas
\([ABQ]\) and \([BHQ]\) gives \(L(b-x)\ge2\sigma\), so

\[
\boxed{(T-b\sigma)(bL-2\sigma)\ge\sigma L(1+b).}           \tag{50}
\]

We now exclude (50) using only scalar anchor inequalities.

### Two anchor budgets remove \(a,h,d\)

Set

\[
k=1-3\sigma=\frac{49}{73},\qquad
r=\frac{\sigma(2-3\sigma)}{k}=\frac{976}{3577}.
\]

Since \(R\in CDF\), its area is at least \(3\sigma\).
The identities for \(CDF,HDF\), together with \(f\ge b\), give

\[
\begin{gathered}
3\sigma\le b,\qquad b<k,\qquad
a(1-b)\ge\sigma,\qquad a\le1-L,\\
a(k-b)\ge\sigma(1-d),\qquad
3\sigma h+kd\le1-\sigma.                                 \tag{51}
\end{gathered}
\]

Here \(bL\ge3\sigma\) and \(L\le1\) give the first bound.
For \(b<k\), observe
\([CDF]=1-f-(1-d)(c-f)<1-b\), using \(c>b\), \(f\ge b\),
and \(d<1\).
For the penultimate inequality, use
\(c\ge b+\sigma/a\) in
\(c(1-d)+df\le k\).
For the last, use \(f\le k\) in \([HDF]\ge\sigma\).

Define

\[
\widehat T=1-br-(1-b)L.
\]

The exact identity

\[
k\bigl[\widehat T-(T-b\sigma)\bigr]
=(k-b)(1-h)+b(1-\sigma-3\sigma h-kd)\ge0
\]

and \(bL-2\sigma>0\) turn (50) into

\[
\boxed{
\mathcal F(L,b):=
[1-br-(1-b)L](bL-2\sigma)-\sigma L(1+b)\ge0.}              \tag{52}
\]

This is a concave quadratic in \(L\).

Its discriminant is

\[
\frac{N(b)}{12794929},\qquad
N(b)=952576b^4-7747488b^3+19277825b^2-9335088b+153664.
\]

On \(3\sigma\le b\le7/12\),

\[
N''(b)\ge11439442>0.
\]

Both endpoint discriminant values are negative:

\[
\frac{N(3\sigma)}{12794929}
=-\frac{31121393185280}{363353477319889},\qquad
\frac{N(7/12)}{12794929}
=-\frac{86111}{6906384}.
\]

Convexity puts every intermediate value below the larger endpoint.
Thus (52) forces

\[
\boxed{\frac7{12}<b<k.}                                  \tag{53}
\]

The remaining two budgets in (51) have the useful positive combination

\[
\begin{split}
&a\bigl[k(k-b)-3\sigma^2\bigr]-\sigma^2(3L-2)\\
&\quad=
k\bigl[a(k-b)-\sigma(1-d)\bigr]
+\sigma\bigl[1-\sigma-3\sigma h-kd\bigr]\ge0.              \tag{54}
\end{split}
\]

### Three explicit upper bounds on \(L\)

Set

\[
b_0=\frac{k^2-\sigma}{k-\sigma}=\frac{1817}{2993},\qquad
b_1=k-\frac{3\sigma^2}{k}=\frac{2209}{3577}.
\]

These numbers satisfy \(7/12<b_0<b_1<k\).
Equations (51), (54) imply the following bounds:

\[
\begin{array}{c|c}
\text{interval for }b& L\le \ell_i(b)\\ \hline
(7/12,b_0]&
\ell_0=1-\dfrac{\sigma}{1-b}\\[5pt]
[b_0,b_1]&
\ell_1=1-\dfrac{\sigma^2}{k(k-b)}\\[5pt]
[b_1,k)&
\ell_2=\dfrac23+
 \dfrac{k(k-b)-3\sigma^2}{3\sigma(1-b)} .
\end{array}                                               \tag{55}
\]

The first is \(a\ge\sigma/(1-b)\), \(a\le1-L\).
For the second, \(k(k-b)-3\sigma^2\ge0\), so substitute
\(a\le1-L\) in (54).
For the third that coefficient is nonpositive, so instead substitute
\(a\ge\sigma/(1-b)\). Each displayed upper bound is at most
\(\ell_0\) on its stated interval; the crossover in this comparison
is exactly \(b_0\). If any bound is nonpositive, it already contradicts
\(L>0\).

On the relevant range \(0<L\le\ell_0\), \(\mathcal F\) increases
with \(L\). Indeed,

\[
\begin{split}
\frac{\partial\mathcal F}{\partial L}
&\ge b^2(2-r)-b(1+\sigma)+\sigma=:g(b),\\
g(7/12)&=\frac{263}{5256}>0,\qquad
g'(b)\ge g'(7/12)=\frac{1388}{1533}>0.
\end{split}
\]

We may therefore insert the three upper bounds (55) into (52).

### Exact polynomial signs on the three intervals

Direct expansion gives

\[
\begin{array}{c|c|c}
i&\mathcal F(\ell_i,b)&N_i(b)\\ \hline
0&\dfrac{N_0(b)}{261121(b-1)}
&189873b^3-210681b^2+6728b+31752\\[3pt]
1&\dfrac{N_1(b)}{12794929(73b-49)^2}
&49579827633b^4-82791226762b^3+
36472147945b^2+2968460920b-3456383560\\[3pt]
2&\dfrac{N_2(b)}{150405696(b-1)}
&992089345b^3-1208815226b^2+
366886585b+1194816 .
\end{array}                                               \tag{56}
\]

Each value in the middle column is strictly negative.

For \(N_0\), on \(7/12\le b\le61/100<5/8\),

\[
N_0'(b)\le
569619(5/8)^2-421362(7/12)+6728
=-\frac{1059781}{64}<0.
\]

Since \(b_0<61/100\),

\[
N_0(b)\ge N_0(61/100)=\frac{559243313}{1000000}>0.
\]

Its denominator in (56) is negative.

For \(N_1\), put \(t=b-3/5\). Throughout its interval,
\(0<t<1/50\). Its exact expansion is

\[
\begin{split}
N_1={}&49579827633t^4+\frac{181001797786}{5}t^3
-\frac{136490813483}{25}t^2\\
&+\frac{19685578244}{125}t-\frac{1683166972}{625}.
\end{split}
\]

Use \(t^3\le t^2/50\), \(t^4\le t^2/2500\).
The resulting coefficient of \(t^2\) is
\(-11789483542807/2500<-4000\cdot10^6\);
the linear coefficient is below \(160\cdot10^6\),
and the constant is below \(-2\cdot10^6\). Hence

\[
N_1<10^6(-4000t^2+160t-2)<0.
\]

The last quadratic has negative leading coefficient and discriminant
\(160^2-4\cdot4000\cdot2=-6400<0\).
The denominator in (56) is positive.

Finally, for \(N_2\) put \(t=b-3/5>0\). Its expansion is

\[
N_2=992089345t^3+576945595t^2
-\frac{61175968}{5}t+\frac{11114604}{25}.
\]

Dropping the positive cubic and weakening the other three coefficients
gives

\[
N_2>10^6(500t^2-13t+2/5)>0.
\]

This quadratic has positive leading coefficient and discriminant
\(13^2-4\cdot500\cdot(2/5)=-631<0\).
Its denominator in (56) is negative.

Thus all three intervals contradict (52). This closes the final sign
with \(P\) above \(AD\), and proves Theorem 6. \(\square\)

## 7. Complete exact-six-hull conclusion

**Theorem 7.** A competitive configuration in family N cannot have
exactly its six prescribed anchors as its complete convex hull.

The exact-hull hypothesis gives one lower point and two upper points
by [QUADRILATERAL_HULL.md](QUADRILATERAL_HULL.md), Section 4.
The upper pair cannot share a diagonal sector, by the central-pair
quadrilateral theorem. Theorem 2 excludes both outer adjacent-sector
pairs; Theorems 3--4 exclude both opposite-sector pairs.
Only the two mixed assignments remain.

Choose the empty-\(ABC\) normalization, so the lower point belongs
to \(AHC\). Theorem 5 and its transpose exclude the mixed \(HCF\)
assignment completely, and exclude the mixed \(HCD\) assignment when
the lower point lies in \(HBC\). Its only other position is \(ABH\),
which Theorem 6 excludes. These cases exhaust the exact six-anchor
hexagon, proving the theorem. \(\square\)

This conclusion has the explicit **exact convex-hull** hypothesis.
Configurations in N whose three arbitrary points add further hull
vertices are not excluded by Theorem 7. The anchor-ear theorem in
Section 1 has the broader, already stated scope.


## Verification

The optional script [check_six_boundary_hull.py](check_six_boundary_hull.py)
checks the determinant formulas, the Cauchy differences, exact rational
gaps, transposition, and all scalar identities in Sections 3--6. The continuous inequalities and
the complete placement exclusions are proved above; no search or
parameter sampling is used as a premise.
