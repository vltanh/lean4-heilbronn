# The exact six-anchor hull in family N

This note studies the N normalization when its six prescribed boundary
points are exactly the convex-hull vertices. The first theorem in fact
applies throughout N, without this additional hull hypothesis. The note
closes both upper-pair placements in the outer upper triangles and both
opposite-sector assignments. Only the mixed upper pairs remain.

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


## Verification

The optional script [check_six_boundary_hull.py](check_six_boundary_hull.py)
checks the determinant formulas, the Cauchy differences, exact rational
gaps, transposition, and all scalar identities in Sections 3--4. The continuous inequalities and
the complete placement exclusions are proved above; no search or
parameter sampling is used as a premise.

