# The exact six-anchor hull in family N

This note studies the N normalization when its six prescribed boundary
points are exactly the convex-hull vertices. The first theorem in fact
applies throughout N, without this additional hull hypothesis. It closes
both upper-pair placements in the two outer upper triangles; the remaining
placements are stated precisely below.

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
remaining opposite pair \(\{CDJ,FHJ\}\) survive the present note.


## Verification

The optional script [check_six_boundary_hull.py](check_six_boundary_hull.py)
checks the determinant formulas, the Cauchy differences, exact rational
gaps, transposition, and all scalar identities in Section 3. The continuous inequalities and
the complete placement exclusions are proved above; no search or
parameter sampling is used as a premise.

