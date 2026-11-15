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
the last two are the opposite-sector placements. These assignments
are not excluded by the present note. The lower point may be assumed
to lie in \(AHC\) after the empty-\(ABC\) normalization from
Section 5 of [QUADRILATERAL_HULL.md](QUADRILATERAL_HULL.md).

## Verification

The optional script [check_six_boundary_hull.py](check_six_boundary_hull.py)
checks the determinant formulas, the Cauchy difference, the two exact
rational gaps, and the transposition. The continuous inequalities and
the complete placement exclusions are proved above; no search or
parameter sampling is used as a premise.

