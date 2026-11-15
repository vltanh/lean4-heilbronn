# Every eight-vertex C1 hull with one lower point is impossible

Use the competitive C1 anchors

\[
O=(0,0),\quad C=(c,0),\quad D=(1,d),\quad
F=(f,1),\quad H=(0,h),
\qquad 0<d\le h<1,\quad0<f\le c<1.
\]

The minimum actual triangle area is at least
\(A_0=(9\sqrt{65}-55)/320\). Brackets denote signed doubled
areas, and

\[
s=\frac8{73}<2A_0.
\]

Suppose exactly one of the four free points, denoted
\(L=(\ell_x,\ell_y)\), is in the lower triangle \(OHC\).
Transpose the square if necessary so that \(f\le d\).

**Theorem.** The full hull of a competitive configuration with
exactly one lower point cannot have eight vertices.

The proof uses twelve fixed rational cubic inequalities, one for each
of six radial orders in two possible hull patterns. Their complete
coefficient lists are in
[c1_one_lower_eight_hull_certificates.json](c1_one_lower_eight_hull_certificates.json),
and their exact verifier is
[check_c1_one_lower_eight_hull.py](check_c1_one_lower_eight_hull.py).

## 1. The two possible hull patterns

Write \(\mathcal R,\mathcal T,\mathcal L\) for the exterior
caps beyond \(CD,DF,FH\), respectively. The general cap results
in Sections 1--2 of [C1_ZERO_LOWER.md](C1_ZERO_LOWER.md) do not
assume the lower triangle is empty, so they apply here.

The point \(L\) is strictly interior to the actual triangle
\(OHC\). Thus an eight-vertex hull requires every other free
point to be a hull vertex, outside the anchor pentagon. The cap
occupancy restrictions leave only the patterns

\[
(n_R,n_T,n_L)=(1,1,1),\quad(1,2,0),\quad(2,1,0),\quad(0,3,0).
\]

Two right-cap points have triangular hull with \(C,D\): one lies
inside the triangle formed by the other and \(C,D\). Three top-cap
points likewise include one interior point, by Lemma 3 of the cited
note. The last two patterns therefore cannot have eight hull vertices.
The remaining possibilities are:

| Mode | Free cap points | Cyclic hull order |
|---|---|---|
| `one_each` | \(R\in\mathcal R,\ X\in\mathcal T,\ Y\in\mathcal L\) | \(O,C,R,D,X,F,Y,H\) |
| `two_top` | \(R\in\mathcal R,\ X,Y\in\mathcal T\) | \(O,C,R,D,X,Y,F,H\) |

In the second mode, \(D,X,Y,F\) is a convex quadrilateral.
All cyclic hull triples have positive area. Nondegeneracy follows
from the positive minimum area, including when a free point is on a
side of the square.

In both modes set

\[
R=(r_x,r_y),\qquad X=(x_x,x_y),\qquad Y=(y_x,y_y).
\]

The lower triangle and the anchor areas give

\[
hc\ge3s,\qquad hf,cd\ge s,\qquad d,f\le1-s.             \tag{1}
\]

For future use, subdivision of \(OHC\) gives

\[
\begin{gathered}
\ell_x\ge s/h,\qquad \ell_y\ge s/c,\\
c-\ell_x\ge2s/h,\qquad h-\ell_y\ge2s/c,\qquad
\ell_x+\ell_y\le1-s.                                    \tag{2}
\end{gathered}
\]

Indeed \([CHL]=hc-h\ell_x-c\ell_y\ge s\), while
\(h\ell_x,c\ell_y\ge s\). Dividing the first inequality
by \(hc\) and using \(h,c\le1\) proves the last bound.

## 2. Bounds for one point in each cap

A right-cap point gives \(dc(1-c)\ge s\), and a left-cap
point gives \(fh(1-h)\ge s\). These are the single-cap
inequalities in Section 1 of `C1_ZERO_LOWER.md`. Consequently

\[
d,f\ge4s,\qquad \frac17<c,h<\frac67,
\qquad h,c\ge4s.                                      \tag{3}
\]

For the middle bounds, use \(d,f\le1-s\) and
\(s/(1-s)=8/65>6/49\).

The right-cap area can be written

\[
-[CDR]=d(r_x-c)-(1-c)r_y
       =(1-c)(d-r_y)-d(1-r_x)\ge s.
\]

Along with \(cr_y\ge s\), (3) proves

\[
r_x-c\ge\frac{7s}{6},\qquad r_y\ge\frac{7s}{6},\qquad
d-r_y\ge\frac{s}{1-4s}=\frac8{41}.                    \tag{4}
\]

For the top-cap point,

\[
\begin{aligned}
-[DFX]&=(1-d)(x_x-f)-(1-f)(1-x_y),\\
-[DFX]&=(1-f)(x_y-d)-(1-d)(1-x_x),
\end{aligned}
\]

and both expressions are at least \(s\). Thus

\[
x_x-f\ge\frac8{41},\qquad x_y-d\ge\frac8{41}.          \tag{5}
\]

Finally, \([HFY]=f(y_y-h)-(1-h)y_x\ge s\) gives

\[
y_x\ge\frac{7s}{6},\qquad
f-y_x\ge\frac8{41},\qquad y_y-h\ge\frac{7s}{6}.         \tag{6}
\]

The first bound uses \(hy_x\ge s\); the second uses
\(y_y\le1\) and \(h\ge4s\); the third uses \(f<6/7\).
Equations (2)--(3) also give

\[
\ell_x,\ell_y\ge\frac{7s}{6},\qquad
c-\ell_x,h-\ell_y\ge\frac{7s}{3}.                     \tag{7}
\]

Here is the complete ordered list of nonnegative affine factors for
`one_each`; this order is the order used by the coefficient file:

\[
\begin{gathered}
h-4s,\ 6/7-h,\ c-4s,\ 6/7-c,\ d-4s,\ h-d,\ f-4s,\ c-f,\ d-f,\\
r_x-c-7s/6,\ 1-r_x,\ r_y-7s/6,\ d-r_y-8/41,\\
x_x-f-8/41,\ x_y-d-8/41,\ 1-x_x,\ 1-x_y,\\
y_x-7s/6,\ f-y_x-8/41,\ y_y-h-7s/6,\ 1-y_y,\\
\ell_x-7s/6,\ \ell_y-7s/6,\ c-\ell_x-7s/3,\ h-\ell_y-7s/3,\
1-s-\ell_x-\ell_y.
\end{gathered}                                            \tag{8}
\]

## 3. Bounds for the convex two-top pattern

The four points \(D,X,Y,F\) lie in the virtual triangle
\(DF(1,1)\) and have convex hull. The convex case of the
four-point, two-prescribed-vertex triangle theorem in Section 1 of
[TYPE_II.md](TYPE_II.md) gives

\[
(1-d)(1-f)\ge4s.                                        \tag{9}
\]

Because \(f\le d\) and \(f\ge s\),

\[
f<\frac{17}{50},\qquad d\le\frac{33}{65}.               \tag{10}
\]

For the first bound, \((1-f)^2\ge4s>(33/50)^2\). For
the second, \(1-d\ge4s/(1-s)\).
The occupied right cap gives \(d\ge4s\) and

\[
c(1-c)\ge\frac{65s}{33}>\frac{55}{256}.
\]

Since \((11/16)(5/16)=55/256\), this implies \(c<11/16\).
Using (1) gives the convenient combined bounds

\[
3s\le c<\frac{11}{16},\qquad
h\ge\frac{48s}{11}.                                    \tag{11}
\]

The same cap identities as before now imply

\[
\begin{gathered}
r_x-c\ge\frac{65s}{33},\qquad
r_y\ge\frac{16s}{11},\qquad d-r_y\ge\frac8{49},\\
x_x-f,\ y_x-f\ge\frac8{41},\qquad
x_y-d,\ y_y-d\ge\frac8{65}.                             \tag{12}
\end{gathered}
\]

Here the right-hand bounds use \(c\ge3s\), \(d\ge4s\),
and \(f\ge s\), respectively.

### The order of the two cap vertices

Put \(u=x_x-y_x\) and \(v=y_y-x_y\). The positive
cyclic areas have the exact formulas

\[
\begin{aligned}
[DXY]&=u(x_y-d)-(1-x_x)v,\\
[FXY]&=v(y_x-f)-(1-y_y)u.
\end{aligned}                                            \tag{13}
\]

These show that \(u,v\) must either both be positive or both
be negative; zero or opposite signs make one displayed area
nonpositive. The latter alternative is impossible. In fact, if
both are negative, (13) would imply

\[
(x_y-d)(y_x-f)<(1-x_x)(1-y_y).
\]

But the strict top-cap inequalities for \(X,Y\) give

\[
(1-f)(x_y-d)>(1-d)(1-x_x),\qquad
(1-d)(y_x-f)>(1-f)(1-y_y),
\]

whose product is the opposite strict inequality. Thus \(u,v>0\).
Since both areas in (13) are at least \(s\), and all the
subtracted terms are nonnegative, it follows that

\[
x_x-y_x\ge s,\qquad y_y-x_y\ge s.                     \tag{14}
\]

Lastly, (2) and (11) give

\[
\ell_x\ge s,\quad \ell_y\ge\frac{16s}{11},\quad
c-\ell_x\ge2s,\quad h-\ell_y\ge\frac{32s}{11}.         \tag{15}
\]

The complete ordered affine-factor list for `two_top` is

\[
\begin{gathered}
h-48s/11,\ 1-h,\ c-3s,\ 11/16-c,\ d-4s,\ 33/65-d,\\
f-s,\ 17/50-f,\ h-d,\ c-f,\\
r_x-c-65s/33,\ 1-r_x,\ r_y-16s/11,\ d-r_y-8/49,\\
x_x-f-8/41,\ 1-x_x,\ x_y-d-8/65,\ 1-x_y,\\
y_x-f-8/41,\ 1-y_x,\ y_y-d-8/65,\ 1-y_y,\\
x_x-y_x-s,\ y_y-x_y-s,\ \ell_x-s,\ \ell_y-16s/11,\\
c-\ell_x-2s,\ h-\ell_y-32s/11,\ 1-s-\ell_x-\ell_y.
\end{gathered}                                            \tag{16}
\]

## 4. Six radial orders cover each hull

Number the eight hull vertices in the order in Section 1 as
\(V_0,\ldots,V_7\), and append \(V_8=L\).
For each hull vertex define the radial word by

\[
[V_iV_{i+j}L]>0\quad\Longleftrightarrow\quad j\le r_i,
\qquad 1\le j\le7.
\]

Since \(L\) is strictly inside the hull, \(1\le r_i\le6\).
Opposite orientations give the necessary conditions

\[
(j\le r_i)\quad\Longleftrightarrow\quad
(8-j>r_{i+j}),                                          \tag{17}
\]

with indices modulo eight. The lower containment gives \(r_1=6\):
at \(C=V_1\), the ray to \(L\) lies between the rays to
\(H=V_7\) and \(O=V_0\). Exhausting the \(6^7\)
remaining tuples in (17) leaves exactly

\[
\begin{array}{c}
(1,6,6,5,4,3,2,1),\qquad(2,6,5,5,4,3,2,1),\\
(3,6,5,4,4,3,2,1),\qquad(4,6,5,4,3,3,2,1),\\
(5,6,5,4,3,2,2,1),\qquad(6,6,5,4,3,2,1,1).
\end{array}                                             \tag{18}
\]

It is enough that every geometric configuration satisfies one of
these words; no realizability assertion for the tuples is needed.

List all 84 increasing triples from \(V_0,\ldots,V_8\) in
lexicographic order. A triple of hull vertices has positive area.
Its lower bound is \(3s\) if the three word edge tests place
\(L\) inside, and \(s\) otherwise. For a triple
\((i,j,8)\), its sign is positive exactly when
\((j-i)\bmod8\le r_i\), and its unsigned lower bound is
\(s\). Subtract these bounds from the signed areas to obtain
the 84 nonnegative quadratic costs \(q_0,\ldots,q_{83}\).

## 5. The twelve exact contradictions

For either mode let \(a_i\) be its ordered affine factors from
(8) or (16). Every certificate is a positive rational combination
of terms

\[
a_{i_1}\cdots a_{i_k}\quad(1\le k\le3),\qquad
q_i,\qquad q_i a_j.                                    \tag{19}
\]

All are nonnegative for the selected configuration. The coefficient
file records positive integer numerators with denominator 4096.
Its `f` terms are factor products and its `q` terms are costs,
optionally multiplied by one factor. Every factor index and cost
index is checked against the lists above.

Expand each sum as a cubic in the twelve coordinates

\[
z=(h,c,d,f,r_x,r_y,x_x,x_y,y_x,y_y,\ell_x,\ell_y)\in[0,1]^{12}.
\]

For \(P(z)=p_0+\sum_{\alpha\ne0}p_\alpha z^\alpha\),
the elementary cube bound is

\[
P(z)\le p_0+\sum_{\alpha\ne0}\max(p_\alpha,0).          \tag{20}
\]

The twelve fixed certificates contain **1,488 positive terms**.
All exact upper bounds in (20) are at most \(-3/4\); the largest is

\[
-\frac{24902965599574904570203}{25151865159450302873600}.
\]

Thus each sum is nonnegative by (19) and strictly negative by (20).
The six words cover each of the two hull patterns, completing the
eight-vertex exclusion. \(\square\)

## Verification

The standard-library checker reconstructs all factors, determinants,
and triangle-subdivision costs; proves the rational comparisons used
above; checks both identities in (13); enumerates (17); and expands
all twelve positive weighted sums using exact fractions. It checks
their degree, integer weights, every term index, the stated exact
upper bounds, and complete coverage. There is no optimizer or
floating-point calculation in the verification.
