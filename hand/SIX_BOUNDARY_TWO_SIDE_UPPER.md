# Completion of the two-side-cap N family with an upper point

Use the six boundary anchors of family N:

\[
A=(0,a),\ H=(0,h),\ B=(b,0),\ C=(c,0),\ D=(1,d),\ F=(f,1),
\]
\[
0<a<h<1,\quad0<b<c<1,\qquad a\le d\le h,\quad b\le f\le c.
\]

Suppose the other three actual points are

\[
X=(x,y)\in CD(1,0),\qquad
Y=(z,w)\in FH(0,1),\qquad Q=(r,t)\in HCDF.               \tag{1}
\]

The two square corners in (1) are virtual. The two cap points are
strictly outside the anchor hexagon, while Q is inside its upper
quadrilateral. Positions of X or Y on a square side are allowed.

**Theorem 1.** Throughout the complete occupancy (1), the minimum
ordinary triangle area is at most

\[
A_0=\frac{9\sqrt{65}-55}{320}.
\]

Equality forces \(x=w=1\) and the known sharp eight-boundary
configuration, up to square symmetry and relabeling.

Together with [SIX_BOUNDARY_TWO_SIDE_COMPLETION.md](SIX_BOUNDARY_TWO_SIDE_COMPLETION.md),
this closes **every N configuration with a point in each of the two
side caps and its remaining point inside the anchor hexagon**. The
third point is either below HC or above it; it cannot lie on that
actual line when the minimum area is positive.

**Corollary 2.** The same sharp upper bound and equality classification
hold for every configuration in family N in which both side caps are
occupied, without any hypothesis on the third free point.

To see this, assume the configuration is competitive. The side-cap
capacity theorem in [SIX_BOUNDARY_EXTERIOR.md](SIX_BOUNDARY_EXTERIOR.md)
puts exactly one free point in each occupied side cap. Its lower-left
cap theorem excludes the double-contact corner. If the remaining point
lies in the anchor hexagon, the two just-cited theorems apply. Otherwise
it lies beyond DF in the opposite cap. Each of the three occupied-cap
points is then separated from all other points by its own anchor edge,
so all three are hull vertices; the six prescribed boundary contacts
also remain hull vertices. This gives a convex nonagon, excluded by
Theorem 1 of [GLOBAL_COMPLETION.md](GLOBAL_COMPLETION.md), which gives
minimum area strictly below \(1/19<A_0\). Thus the third point must
be in the anchor hexagon, proving the corollary.

The proof reduces all possible upper-point placements to one sharp
chamber. Eighty fixed rational cubic expressions exclude the other
placements, and the remaining chamber is covered by the simultaneous
B/E theorem in [SHARP_B_E_MOVING.md](SHARP_B_E_MOVING.md).
No small-displacement or further interior-point assumption is imposed.

Assume the configuration is competitive, and put \(s=7/64<2A_0\).
Every unsigned actual doubled area is at least s. Transposition of the
square exchanges the two side caps and preserves the upper occupancy,
so arrange

\[
                              f\le d.                    \tag{2}
\]

The full hull is the strictly convex octagon

\[
(V_0,\ldots,V_7)=(A,B,C,X,D,F,Y,H),                       \tag{3}
\]

with Q as its sole interior point. Indeed the six boundary contacts
remain extreme, and each of X and Y lies strictly beyond its respective
anchor edge. The orders \(f\le c<x\) and \(y<d\le h<w\)
ensure the two added side-cap vertices occur in precisely the positions
shown in (3).

## 1. Common bounds from the two occupied caps

Write \(L=h-a\), \(M=c-b\). The elementary anchor and cap
costs imply

\[
aM\ge s,\quad bL\ge s,\quad My\ge s,\quad Lz\ge s,
                                                               \tag{4}
\]
\[
\begin{aligned}
[CXD]&=d(x-c)-(1-c)y\ge s,\\
[FYH]&=(1-h)(f-z)-f(1-w)\ge s.
\end{aligned}                                             \tag{5}
\]

In particular

\[
x-c\ge s,\quad w-h\ge s,\quad
d-y\ge s,\quad f-z\ge s,\quad y,z\ge s.                \tag{6}
\]

For the first two, use the cap expressions
\(d(x-c)-(1-c)y\) and \(f(w-h)-(1-h)z\), with
\(d,f\le1\). For the next two, (5) gives
\((1-c)(d-y)\ge s\) and \((1-h)(f-z)\ge s\).
The last two follow from (4).
Thus

\[
h,c\le1-s,\qquad a,b\ge s.
\]

Consequently \(L,M\le1-2s\), and (4) strengthens the lower
bounds to

\[
                       a,b\ge\frac{s}{1-2s}=\frac7{50}.
                                                               \tag{7}
\]

Also

\[
\begin{aligned}
d&\ge\frac{s}{M}+\frac{s}{1-c}
   \ge\frac{4s}{1-b}>\frac12,\\
f&\ge\frac{s}{L}+\frac{s}{1-h}
   \ge\frac{4s}{1-a}>\frac12.
\end{aligned}                                             \tag{8}
\]

The middle inequalities are Cauchy--Schwarz. The strict comparisons
use \(a,b\ge7/50>1/8\) and \(4s=7/16\).
In particular \(h,c>1/2\). We also retain \(L,M\ge s\)
from the first two inequalities in (4).

For Q, the vertical base AH and horizontal base BC give
\(r,t\ge s\). Its upper-quadrilateral placement gives all the
positive areas in

\[
\begin{aligned}
(1-f)[CDQ]+(1-c)[DFQ]&=[CDF](1-r),\\
(1-d)[FHQ]+(1-h)[DFQ]&=[DFH](1-t).
\end{aligned}                                             \tag{9}
\]

The anchor areas satisfy \([CDF]\le1-f\) and
\([DFH]\le1-d\). Thus the sum of the two nonnegative
coefficients on each left side is at least its right-side area factor.
Substituting the actual threshold s in (9) proves

\[
                         s\le r,t\le1-s.                \tag{10}
\]

## 2. The complete finite radial-word cover

For Q inside the octagon (3), define its word
\(q=(q_0,\ldots,q_7)\) by

\[
[V_iV_{i+j}Q]>0\quad\Longleftrightarrow\quad j\le q_i,
\qquad 1\le q_i\le6,
                                                               \tag{11}
\]

with hull indices reduced modulo eight. Positivity is consecutive
because all rays from a hull vertex to the other vertices and Q lie
inside its convex interior angle. Reversing a directed chord gives

\[
(j\le q_i)\quad\Longleftrightarrow\quad
(8-j>q_{i+j}),\qquad i=0,\ldots,7,\quad j=1,\ldots,7.
                                                               \tag{12}
\]

The three non-edge tests for \(Q\in HCDF\) are

\[
                         q_7\ge3,\quad q_2\ge2,\quad q_5\ge2.
                                                               \tag{13}
\]

The remaining edge DF is already a hull edge. The finite list of
all words satisfying (11)--(13), in lexicographic order, has exactly
**82 members**. This is an exhaustive necessary list; no claim of
realizability for every listed word is needed.

For each increasing hull triple \((i,j,k)\), Q lies inside its
triangle exactly when the three cyclic signs in (11) are positive.
That hull triangle then has doubled area at least \(3s\), because
Q divides it into three actual triangles of doubled area at least s.
Otherwise the threshold s still holds. Every triangle with Q and two
hull vertices has its sign fixed directly by (11).

The fixed rational certificates in Section 4 exclude every word except

\[
                         q_*=(4,3,3,2,3,4,5,4).          \tag{14}
\]

The word (14) is member 48 when the list is indexed from zero. Its
complete treatment is given in Section 5.

## 3. Nonnegative factors and all actual triangle costs

Use the coordinate order

\[
\zeta=(a,h,b,c,d,f,x,y,z,w,r,t)\in[0,1]^{12}.
\]

The following 27 affine factors are nonnegative by the normalization,
(2), and (6)--(10). Their displayed order fixes the coefficient-file
indices.

| Index | Factor | Index | Factor |
|---|---|---|---|
| 0 | \(a-7/50\) | 14 | \(1-w\) |
| 1 | \(b-7/50\) | 15 | \(x-c-s\) |
| 2 | \(h-1/2\) | 16 | \(w-h-s\) |
| 3 | \(c-1/2\) | 17 | \(d-y-s\) |
| 4 | \(1-s-h\) | 18 | \(f-z-s\) |
| 5 | \(1-s-c\) | 19 | \(y-s\) |
| 6 | \(d-a\) | 20 | \(z-s\) |
| 7 | \(h-d\) | 21 | \(r-s\) |
| 8 | \(f-b\) | 22 | \(t-s\) |
| 9 | \(c-f\) | 23 | \(1-s-r\) |
| 10 | \(d-f\) | 24 | \(1-s-t\) |
| 11 | \(h-a-s\) | 25 | \(d-1/2\) |
| 12 | \(c-b-s\) | 26 | \(f-1/2\) |
| 13 | \(1-x\) | | |

Call these factors \(a_0,\ldots,a_{26}\).
Number the nine points as \((A,B,C,X,D,F,Y,H,Q)\).
For each radial word, visit all 84 increasing index triples in
lexicographic order. For a triple of hull vertices, take its positive
oriented determinant minus \(3s\) if Q is inside it, and minus s
otherwise. For a triple with Q, take its word-determined positive
unsigned area minus s. Call this ordered list of nonnegative quadratic
costs \(b_0,\ldots,b_{83}\).

Thus all expressions

\[
a_{i_1}\cdots a_{i_m}\quad(1\le m\le3),\qquad
b_j,\qquad b_ja_i                                      \tag{15}
\]

are nonnegative. Their total degree is at most three.

## 4. Eighty fixed rational contradictions exclude the other 81 words

The complete integer weights are in
[six_boundary_two_side_upper_certificates.json](six_boundary_two_side_upper_certificates.json).
Each record specifies its reference word and a positive linear
combination of (15), with all weights divided by 4096. A record `f`
gives a sorted list of factor indices and its positive integer weight.
A record `q` gives a quadratic-cost index, an affine-factor index
(or \(-1\) for no affine factor), and its positive integer weight.
There are **80 certificates and 14,253 positive terms in total**.

Expanding one fixed expression gives

\[
R(\zeta)=\sum_{|\nu|\le3}r_\nu\zeta^\nu.
\]

Its definition implies \(R(\zeta)\ge0\) on its reference cell.
On the unit cube, however,

\[
R(\zeta)\le r_0+\sum_{\nu\ne0}\max(r_\nu,0).
                                                               \tag{16}
\]

For every supplied certificate this exact rational upper bound is
below \(-3/4\). The largest is

\[
                    -\frac{661437830559}{671088640000}.
                                                               \tag{17}
\]

A certificate is also valid on another word if each quadratic cost
it actually uses has the same determinant sign and at least the
reference threshold there. Its reference costs then remain
nonnegative, and all affine factors are common. This reuse rule is
checked for every used cost. The 80 certificates cover all 81 words
other than (14); none is applied to (14).

The exact verifier
[check_six_boundary_two_side_upper.py](check_six_boundary_two_side_upper.py)
reconstructs the 82 words directly from the finite complement relation,
all their signs and actual-triangle containment thresholds, and every
reuse comparison. It expands all 14,253 weighted terms with rational
arithmetic and verifies (16)--(17). No continuous optimization or
numerical infeasibility claim is a premise of this proof. The finite
identities are the supplied fixed positive combinations themselves.

A configuration in any of those 81 words would therefore satisfy
both \(R\ge0\) and \(R<-3/4\). Only (14) remains.

## 5. The sole surviving word is the simultaneous B/E sharp chamber

Apply the square rotation

\[
                              R(u,v)=(v,1-u)
\]

and relabel its images by

\[
(A',B',C',D',E',F',G',H',O')
=(R(C),R(X),R(D),R(F),R(Y),R(H),R(A),R(B),R(Q)).
                                                               \tag{18}
\]

Their coordinates are

\[
\begin{array}{llll}
A'=(0,1-c),&B'=(y,1-x),&C'=(d,0),&D'=(1,1-f),\\
E'=(w,1-z),&F'=(h,1),&G'=(a,1),&H'=(0,1-b),
\end{array}
\qquad O'=(t,1-r).
\]

In the notation of [SHARP_B_E_MOVING.md](SHARP_B_E_MOVING.md),
this means

\[
\begin{gathered}
a'=1-c,\quad b'=y,\quad c'=d,\quad d'=1-f,\quad
 e'=1-z,\quad f'=h,\quad g'=a,\quad h'=1-b,\\
\varepsilon'=1-x,\qquad \eta'=1-w.
\end{gathered}                                             \tag{19}
\]

All order and displacement hypotheses of that theorem hold:

\[
a'\le d'\quad(f\le c),\qquad
c'\le f'\quad(d\le h),\qquad
0\le\varepsilon'\le a'\quad(x>c),\qquad
0\le\eta'\le1-f'\quad(w>h).
\]

The strict side orders follow from
\(0<a<h\), \(0<b<c\), \(0<y<d\), and \(0<z<f\).
The first six oriented areas of the B/E theorem become respectively

\[
[CXB],\quad[CXD],\quad[CAB],\quad[FYH],\quad[ABH],\quad[AYH].
\]

They are all positive by the convex cyclic order (3).
Its five oriented areas involving the interior point become

\[
[CFQ],\qquad[FBQ],\qquad[XQY],\qquad[ADQ],\qquad[DHQ].
                                                               \tag{20}
\]

All are positive in the word (14). Explicitly,
\(q_2=3\), \(q_5=4\), \(q_0=4\), and \(q_4=3\)
give the first, second, fourth, and fifth signs by (11).
For the third, \(q_3=2<3\) makes \([XYQ]<0\), so
\([XQY]>0\).

Rotation preserves all doubled areas. The simultaneous B/E theorem
therefore applies to the actual configuration and gives its sharp
upper bound \(A_0\). If equality holds, that theorem forces
\(\varepsilon'=\eta'=0\), hence \(x=w=1\), and its
boundary equality configuration. Undoing the rotation proves the
stated equality classification. This completes Theorem 1. \(\square\)
