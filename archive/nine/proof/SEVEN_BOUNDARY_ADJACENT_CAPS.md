# Two complete adjacent-cap orientations with seven boundary contacts

Use the sharp octagon labels \(A,B,C,D,E,F,G,H\), with
\(A=(0,a),H=(0,h),B=(b,0),C=(c,0),D=(1,d),E=(1,e)\).
All usual side orders are strict. The point O is inside the octagon,
outside its four side quadrilaterals, and belongs to both actual
triangles \(BDE\) and \(DEG\). In particular \(d<y<e\).
Assume all unsigned actual doubled areas are at least \(s=7/64\).

**Theorem 1.** These hypotheses are impossible in either of the
following complete coordinate families:

1. \(F=(f,k)\), \(G=(g,1)\), with \(g<f\) and \(0<k\le1\).
2. \(F=(f,1)\), \(G=(g,k)\), with \(g<f\) and \(e\le k\le1\).

The cyclic hull and stated containments fix all area signs used below.
There is no assumption that the displacement is small.

Put

\[
L=h-a,\quad B_0=c-b,\quad R=e-d,\quad T=f-g,
\quad\delta=1-k,\quad u=s/L.
\]

The six unchanged anchor costs give

\[
b,g\ge s/L,\quad a,d\ge s/B_0,\quad
c,f\le1-s/R,
\quad B_0,T\le1-s/L-s/R.                              \tag{1}
\]

## 1. An elementary bound for a strongly constrained side gap

We use the following scalar observation twice. If \(0<Z<1\),
\(Z+s/B_0+s/T\le1\), and
\(B_0,T\le1-s/Z-s\), then

\[
                         Z<5/7.                       \tag{2}
\]

All upper denominators are positive. Otherwise the two positive gaps
could not satisfy their bounds. The hypotheses imply

\[
(1-Z)(1-s-s/Z)\ge2s.
\]

For \(Z\ge5/7\), the left side decreases: its derivative is
\(-(1-s)+s/Z^2<0\). But its value at \(5/7\), minus \(2s\),
is \(-9/1120<0\). This proves (2).

## 2. F moves inward

The oriented area GEF is

\[
T(1-e)-(1-g)\delta\ge s.
\]

It implies both \(e<k\) and \(1-e\ge s/T\). Together with
\(d\ge s/B_0\), this gives \(R+s/B_0+s/T\le1\).
Equation (1), with \(L<1\), now gives (2) for \(Z=R\):
\(R<5/7\).

The two positive internal areas satisfy

\[
\begin{aligned}
[BOE]&=e(x-b)-(1-b)y\ge s,\\
[DOG]&=(1-g)(y-d)-(1-d)(1-x)\ge s.
\end{aligned}
\]

Adding, then using \(b,g\ge u\) and \(d<y<e\), gives

\[
(1+R)x\ge1+b(e-y)+g(y-d)+2s
          \ge1+uR+2s.                                \tag{3}
\]

The inner side test for CF is
\(k(c-x)+(f-c)y\ge s\). Since \(0<y<e<k\), the
two coefficients \(1-y/k,y/k\) are positive. By (1),

\[
x\le c(1-y/k)+f(y/k)-s/k
   \le1-s/R-s.                                       \tag{4}
\]

Combine (3)--(4) and divide by \(R>0\):

\[
1\ge s\left(1+\frac4R+\frac1{R^2}+\frac1L\right)
>s\frac{239}{25}>1.
\]

The first strict comparison uses \(L<1,R<5/7\); the last is
\(7\cdot239>64\cdot25\). This is a contradiction.

## 3. G moves inward

Now the upper anchor areas are

\[
GHF=T(1-h)-f\delta\ge s,\qquad
GEF=T(1-e)+(1-f)\delta\ge s.
\]

The first gives \(L+s/B_0+s/T\le1\), so (1)--(2) give

\[
                         L<5/7.                       \tag{5}
\]

The hypothesis \(k\ge e\) gives \(\delta\le1-e\).
Therefore

\[
s\le GEF\le(1-g)(1-e),\qquad
R\le1-\frac{s}{B_0}-\frac{s}{1-g}.
\]

Use \(B_0\le1-u-s/R\), \(1-g\le1-u\), and \(u>s\)
to obtain

\[
R\le1-\frac{s}{1-s-s/R}-\frac{s}{1-s}.                 \tag{6}
\]

This forces \(R<3/4\). Indeed the right side of (6) minus R
has derivative

\[
-1+\frac{s^2}{[(1-s)R-s]^2}<0\qquad(R\ge3/4),
\]

and its value at \(3/4\) is \(-641/32604<0\).
Together with (1) and (5), this implies

\[
B_0<1-\frac{49}{320}-\frac7{48}=\frac{673}{960},
\qquad d\ge\frac{s}{B_0}>D_0:=\frac{105}{673}.
\]

In particular

\[
                         \delta<1-R-D_0.              \tag{7}
\]

The area BOE is unchanged; the other positive internal area is now

\[
[DOG]=(1-g)(y-d)-(1-d-\delta)(1-x)\ge s.
\]

Adding the two costs gives

\[
(1+R-\delta)x\ge1-\delta+uR+2s.                       \tag{8}
\]

CF has both endpoints on their usual sides, so its inner side test
and (1) give \(x\le1-s/R-s\), as in (4). The coefficient of
x in (8) is positive. Substitution and then (7) yield

\[
\begin{aligned}
R&\ge sR/L+2s+s(1+R-\delta)(1+1/R)\\
 &\ge sR/L+4s+2sR+sD_0+sD_0/R.
\end{aligned}
\]

Consequently

\[
1\ge s\left(\frac1L+2+\frac{4+D_0}{R}
                         +\frac{D_0}{R^2}\right)
>s\frac{31021}{3365}
=1+\frac{1787}{215360}>1.
\]

Here the strict bound uses \(L<5/7\) and \(R<3/4\).
This contradiction completes Theorem 1. \(\square\)

## 4. Application to the normalized exterior case

In the notation of
[SEVEN_BOUNDARY_TOP_CAP_RADIAL.md](SEVEN_BOUNDARY_TOP_CAP_RADIAL.md),
the octagon is \(A,B,C,D,E,X,F,H\), with X in the far upper
cap and \(X_y=k>h\). The R1 word

\[
                         (3,2,3,2,5,4,5,4)
\]

is precisely the adjacent-cap placement in Theorem 1 with the outer
point X playing the sharp label F. Thus Section 2 excludes this word.

For the R1 word

\[
                         (5,4,5,4,3,2,3,2),
\]

apply the vertical reflection \((x,y)\mapsto(1-x,y)\).
The reflected word is the preceding representative. The outer point
now plays G, and its height k is greater than the reflected E height h.
Section 3 therefore excludes this entire word as well.

The other two R1 words, centered on the bottom and top paired positions,
are closed in
[SEVEN_BOUNDARY_ADJACENT_CAPS_COMPLETION.md](SEVEN_BOUNDARY_ADJACENT_CAPS_COMPLETION.md),
which assembles all four R1 words. The exact diagnostic
[check_seven_boundary_adjacent_caps.py](check_seven_boundary_adjacent_caps.py)
checks both displacement signs, all monotone scalar calculations, and
the two word identifications.
