# Excluding the right mixed cell in balanced Type II

This note closes one complete cell of the final balanced Type-II
placement. It uses only the two-interior-point triangle inequality from
Section 7 of [CORNER_FAMILIES.md](CORNER_FAMILIES.md), together with
individual triangle areas. No numerical optimization is an input.

Throughout, write \(\Delta XYZ\) for **signed doubled area** in the
displayed vertex order. The minimum unsigned doubled triangle area is at
least

\[
s=\frac7{64},\qquad K=4+2\sqrt3,
\qquad Ks>\frac{13}{16}.
\]

The last inequality follows from \(\sqrt3>12/7\). The competitive
threshold \(A_0\) is larger than \(7/128\), so a contradiction at
this rational threshold suffices.

## 1. The cell and its two useful containing triangles

Use the notation and the surviving sector assignment of Sections 5--8 of
[TYPE_II_COMPLETION.md](TYPE_II_COMPLETION.md):

\[
\begin{gathered}
D=(0,1),\quad C=(1,1),\quad E=(0,\lambda),\quad
B=(b,0),\quad R=(r,u),\\
0<b\le\frac12,\quad q=1-\lambda,\quad v=1-u,\quad
L=(l,h),\quad S=(x,z),\quad Q=(a,y).
\end{gathered}
\]

All points lie in the unit square. The point \(L\) is inside \(DBE\)
and above \(EC\), \(S\) is inside \(BRC\), and \(Q\) is inside
\(DCB\). If \(O=DR\cap EC\), the four interior points of the
quadrilateral \(D,E,R,C\) occupy its diagonal sectors one each:
\(L\in DEO\), \(P\in DCO\), \(Q\in ERO\), and
\(S\in CRO\).

The **right mixed cell** has \(Q\) below \(ES\) and on the
\(C\)-side of \(LR\). We prove it impossible. Collinearity with an
actual pair is already excluded by the positive minimum area.

First, \(Q\) is inside \(EBS\). It is above \(EB\), because
\(a>b(1-y)\) implies

\[
\Delta EBQ=by+\lambda(a-b)>bqy>0.
\]

It is on the \(E\)-side of \(BS\): the point \(S\) is to the
right of \(BC\), while \(Q\) is to its left, so

\[
\Delta BSQ
=[x-b-(1-b)z]y+z[b+(1-b)y-a]>0.
\]

The remaining side condition is precisely that \(Q\) lies below
\(ES\). Thus, with

\[
A=\Delta EBS=bz+\lambda(x-b),
\]

the three triangles joining \(Q\) to the sides of \(EBS\) give
\(A\ge3s\).

Second, \(CRL\) contains both \(S,Q\). One way to check this
without a picture is to take affine diagonal coordinates

\[
E=(-e,0),\ C=(c,0),\ D=(0,d),\ R=(0,-\rho),\ O=(0,0),
\qquad e,c,d,\rho>0.
\]

Write \(L=(-\ell,k)\), where \(\ell,k>0\). The identity
\(L+(\ell/c)C+(k/\rho)R=0\) puts \(O\) strictly inside
\(CRL\), so \(CRO\subset CRL\) and \(S\in CRL\).
The vertices \(E,R,O\) are all on the \(R\)-side of \(CL\),
and are in the closed half-plane of the hull edge \(CR\) that
contains the quadrilateral.
Consequently a point of \(ERO\) belongs to \(CRL\) exactly when
it is on the \(C\)-side of \(LR\). This proves the assertion for
\(Q\). Also \(DER\) contains \(L,Q\), directly from their
diagonal sectors. The two-interior-point inequality therefore gives

\[
\boxed{qr\ge Ks,\qquad
v(1-l)-(1-r)(1-h)\ge Ks.}                                \tag{1}
\]

The point \(P\) is not otherwise used in this proof.

## 2. Coarse bounds for the anchors

Since \(r\le1\), the first inequality in (1) gives
\(q>13/16\), hence

\[
0<\lambda<\frac3{16}.
\]

Also \(\Delta DEL=ql\ge s\), so \(l\ge s\). The second
inequality in (1) now implies

\[
Ks\le v(1-l)-(1-r)(1-h)\le v(1-s).
\]

But

\[
Ks>\frac{13}{16}>\left(\frac{57}{64}\right)^2=(1-s)^2,
\]

where the second strict gap is \(79/4096\). Hence \(v>1-s\),
or \(u<s\). The actual ear \(EBR\) has doubled area

\[
s\le\Delta EBR=bu+\lambda(r-b)
\le bu+\lambda(1-b).
\]

If \(\lambda\le s\), the right side is strictly below \(s\).
Therefore \(\lambda>s\), and \(q<1-s=57/64\). Substituting
back into (1) and \(ql\ge s\), and using
\(\Delta ECL=h-\lambda-ql\ge s\), gives

\[
\boxed{r>\frac{52}{57},\qquad
l>\frac7{57},\qquad h>3s.}                              \tag{2}
\]

## 3. A uniform height bound for a point in \(EBS\)

The side triangles at \(S\) give

\[
\begin{aligned}
s&\le\Delta RCS=v(1-x)-(1-r)(1-z),\\
s&\le\Delta CBS=x-b-(1-b)z.
\end{aligned}
\]

Consequently

\[
x\le1-s,\qquad z\le1-\frac{2s}{1-b}.                    \tag{3}
\]

Furthermore, \(S\in BRC\) gives \(r>b\) and \(x>b\). Its
diagonal-sector placement \(S\in CRO\) makes both
\(\Delta DRS\) and \(\Delta RCS\) positive. Their exact sum is

\[
z-u=\Delta DRS+\Delta RCS\ge2s.
\]

Since \(u\ge0\), this gives \(z\ge2s>3/16>\lambda\).

The barycentric coefficients of \(Q\) at \(E,B\) in \(EBS\)
are at least \(s/A\). Since \(z>\lambda\), this implies

\[
y\le Y(b,\lambda,x,z)
:=z-\frac{s(2z-\lambda)}{bz+\lambda(x-b)}.                \tag{4}
\]

We may increase \(\lambda,x,z\) to their upper bounds
\(3/16,1-s,1-2s/(1-b)\). Here is a check of every monotonicity
used in this replacement. Throughout these increases, \(A\ge3s\),
\(x>b\), \(z\ge2s>\lambda\), and

\[
Y_x=\frac{s\lambda(2z-\lambda)}{A^2}\ge0,
\qquad
Y_\lambda=\frac{s}{A}
+\frac{s(2z-\lambda)(x-b)}{A^2}>0.
\]

Also

\[
Y_z=1-\frac{s\lambda(2x-b)}{A^2}
\ge1-\frac{s(3/16)2}{9s^2}
=\frac{13}{21}>0.                                      \tag{5}
\]

Put \(w=1-b\ge1/2\). At the upper endpoints, write

\[
z_*=1-\frac{2s}{w},\qquad
A_*=\frac{1227}{1024}-\frac{13w}{16}-\frac7{32w}.
\]

The replacements preserve \(A_*\ge3s>0\). Direct expansion gives

\[
\begin{aligned}
N(w)
&:=w^2\left[A_*\left(z_*-\frac{47}{160}\right)
-s\left(2z_*-\frac3{16}\right)\right]\\
&=-\frac{94016w^3-135291w^2+60417w-7840}{163840}.          \tag{6}
\end{aligned}
\]

This polynomial is strictly negative on the whole required interval.
Indeed put \(t=w-3/5\ge-1/10\). Then

\[
N(w)=-\frac{1469}{2560}t^3
-\frac{169689}{819200}t^2
+\frac{9873}{4096000}t
-\frac{403}{5120000}.
\]

Since \(-t^3\le t^2/10\), it is at most the quadratic

\[
-\frac{122681}{819200}t^2
+\frac{9873}{4096000}t
-\frac{403}{5120000},
\]

whose leading coefficient is negative and whose discriminant is

\[
-\frac{693570959}{16777216000000}<0.
\]

Thus (6) is negative. Dividing by \(w^2A_*>0\) in (4) proves
the uniform bound

\[
\boxed{y<\frac{47}{160}.}                               \tag{7}
\]

## 4. The triangle \(LRQ\) is too small

The central placement of \(Q\) and the triangle \(BCQ\) give

\[
a\le b+(1-b)y-s
\le\frac12+\frac y2-s.                                 \tag{8}
\]

The last expression is less than \(52/57\) by (7). Also (2) and
(7) imply \(h>y\). The two triangles at \(DB\) give

\[
l\le b(1-h)-s,
\qquad a\ge b(1-y)+s,
\]

so \(a-l\ge b(h-y)+2s>0\).

In the present cell the signed area \(\Delta LRQ\) is positive.
Expanding it, using \(u\ge0\) and \(l<a\), gives

\[
\begin{aligned}
s\le\Delta LRQ
&=(r-l)y+h(a-r)+u(l-a)\\
&\le(r-l)y+h(a-r).
\end{aligned}
\]

The expression decreases in \(r\), because \(y-h<0\),
and decreases in \(l\), because \(y>0\). After substituting
their lower bounds in (2), it decreases in \(h\), because
\(a<52/57\). Therefore (2) and (8) imply

\[
\begin{aligned}
\Delta LRQ
&<\left(\frac{52}{57}-\frac7{57}\right)y
+3s\left(\frac12+\frac y2-s-\frac{52}{57}\right)\\
&<\left(\frac{45}{57}+\frac{3s}{2}\right)\frac{47}{160}
+3s\left(\frac12-s-\frac{52}{57}\right)\\
&=\frac{10597}{97280}
=s-\frac{43}{97280}<s.
\end{aligned}
\]

This contradicts the minimum-area hypothesis. The entire right mixed
cell is excluded. \(\square\)

## Verification

[check_balanced_right_mixed.py](check_balanced_right_mixed.py) verifies
the determinant identities, derivatives, polynomial expansions,
discriminant, and final exact rational gap. The geometric containments
and every inequality direction are proved above; they do not rely on a
sampled coordinate search.
