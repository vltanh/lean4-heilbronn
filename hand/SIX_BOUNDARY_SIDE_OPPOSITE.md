# A side-cap point, an opposite-cap point, and one interior point in N

Use the N anchors
\[
A=(0,a),\quad H=(0,h),\quad B=(b,0),\quad C=(c,0),
\quad D=(1,d),\quad F=(f,1),
\]
\[
0<a<h<1,\quad0<b<c<1,\qquad a\le d\le h,\quad b\le f\le c.
                                                               \tag{1}
\]
Suppose an actual point \(X=(x,y)\) is in the exterior cap
\(CD(1,0)\), another actual point \(Y=(z,w)\) is in the
opposite cap \(DF(1,1)\), and the remaining actual point
\(Q=(r,t)\) is inside the anchor hexagon. Transposition covers
the corresponding placement with a point in the left side cap.
Square-side contacts are allowed; the square corners in the cap
notation are virtual containing vertices.

**Theorem 1.** Throughout this complete occupancy, the minimum ordinary
triangle area is at most
\[
A_0=\frac{9\sqrt{65}-55}{320}.
\]
If all actual triangle areas are at least \(A_0\), the configuration
is an isometric copy of the equality configuration in
[HAND_PROOF.md](HAND_PROOF.md). In particular both cap points lie
on the square boundary at equality.

This closes N6-04. The proof uses 107 fixed cubic expressions, one
fixed quartic expression, and the two continuous sharp-chamber theorems
[SHARP_BD_MOVING.md](SHARP_BD_MOVING.md) and
[SHARP_DF_MOVING.md](SHARP_DF_MOVING.md). All 22,019 positive terms are
in [six_boundary_side_opposite_certificates.json](six_boundary_side_opposite_certificates.json).
The exact verifier is
[check_six_boundary_side_opposite.py](check_six_boundary_side_opposite.py).

Assume all actual ordinary triangle areas are at least \(A_0\),
and use the weaker doubled threshold
\[
\sigma=\frac8{73}<2A_0,\qquad\rho=\frac{13}{16}.
                                                               \tag{2}
\]
Thus every actual unsigned doubled area is at least \(\sigma\).
All relevant actual-line tests are strict, since a collinearity would
give a zero-area triangle. We use brackets for signed doubled areas.

## 1. The complete hull and two empty ears

The full convex hull is
\[
(V_0,\ldots,V_7)=(A,B,C,X,D,Y,F,H),                    \tag{3}
\]
and Q is its sole interior point. The original side contacts remain
extreme. For CX and XD the opposite-cap point is above D; for DY and
YF the side-cap point is below D. Hence neither cap hides a vertex
of the other cap, and the positive minimum makes the hull strictly
convex.

Theorem 5 of [SIX_BOUNDARY_EXTERIOR.md](SIX_BOUNDARY_EXTERIOR.md)
gives \([ABH]<3(7/64)<3\sigma\) when the right cap is occupied.
Lemma 2 of [SIX_BOUNDARY_TWO_SIDE_PROJECTION.md](SIX_BOUNDARY_TWO_SIDE_PROJECTION.md)
gives \([BCX]<3(7/64)<3\sigma\), using only this one cap point.
Consequently Q is inside neither of those actual triangles.

The anchor-ear theorem, Theorem 1 of
[SIX_BOUNDARY_HULL.md](SIX_BOUNDARY_HULL.md), applies to the entire
N family, independently of its other points. It gives
\[
[ABH],[ABC],[BCD],[CDF],[DFH],[AFH]<\rho.               \tag{4}
\]
These six upper bounds will also be retained as nonnegative costs.

## 2. All affine bounds used below

Put \(L=h-a\), \(M=c-b\). The actual anchor costs imply
\[
aM\ge\sigma,\qquad bL\ge\sigma,\qquad
h\ge\frac{\sigma}{M}+\frac{\sigma}{b},\qquad hc\ge4\sigma.
                                                               \tag{5}
\]
Since \(M<1-b\) and \(h<1\), (5) gives
\(b(1-b)>\sigma>7/64\), hence \(b>1/8\).

The side point supplies
\[
[BCX]=My\ge\sigma,\qquad
[CXD]=d(x-c)-(1-c)y\ge\sigma.
\]
Thus
\[
x-c\ge\sigma,\quad c\le1-\sigma,\quad
d-y\ge\frac{\sigma}{1-c},
\quad d\ge\frac{\sigma}{M}+\frac{\sigma}{1-c}
\ge\frac{4\sigma}{1-b}>\frac12.                      \tag{6}
\]
In particular \(h\ge d>1/2\), \(c\ge4\sigma\), and
\[
M<1-\sigma-1/8<49/64,\quad a,y>1/7,
\quad d-y>7/36.                                      \tag{7}
\]
The last inequality uses \(c\ge4\sigma>7/16\) in (6).

The opposite-cap cost has the two exact forms
\[
[DYF]=(1-d)(z-f)-(1-f)(1-w)
     =(1-f)(w-d)-(1-d)(1-z)\ge\sigma.
\]
It follows that
\[
d,f\le1-\sigma,\qquad z-f\ge\sigma,\quad w-d\ge\sigma,
\quad z-f>2\sigma,\quad w-d>1/8.                       \tag{8}
\]
For the last two bounds use \(d>1/2\) and \(f\ge b>1/8\).
Also \([DYF]\le(1-d)(1-f)\le(1-d)(1-b)\). Combining
this with the lower bound for d in (6) gives
\[
1\ge\frac{5\sigma}{1-b},\qquad
b\le1-5\sigma<29/64.                                 \tag{9}
\]

For Q, the two actual bases AH and BC give \(Lr,Mt\ge\sigma\).
Thus \(r,t\ge\sigma\), and (7) strengthens them to
\[
r>1/8,\qquad t>1/7.                                  \tag{10}
\]
For r, use \(L\le1-a<6/7\), so
\(r>7\sigma/6>49/384>1/8\).

The positive anchor-edge costs CDQ, DFQ, FHQ give the remaining
coordinate bounds \(r,t\le1-\sigma\). Explicitly,
\[
\begin{aligned}
(1-f)[CDQ]+(1-c)[DFQ]
 &=\{d(1-f)+(1-d)(1-c)\}(1-r),\\
(1-h)[DFQ]+(1-d)[FHQ]
 &=\{(1-h)(1-f)+(1-d)f\}(1-t).
\end{aligned}                                         \tag{11}
\]
In each line the coefficient in braces is at most the sum of the
two positive weights. The two costs being at least \(\sigma\)
therefore prove the bounds.

In coordinate order \((a,h,b,c,d,f,x,y,z,w,r,t)\), the complete
ordered list of 32 nonnegative affine factors is
\[
\begin{gathered}
a-1/7,\ b-1/8,\ h-1/2,\ c-4\sigma,\ d-1/2,\ 1-h,\\
1-\sigma-c,\ 1-\sigma-d,\ 1-\sigma-f,\ d-a,\ h-d,\ f-b,\ c-f,\\
h-a-\sigma,\ c-b-\sigma,\ 1-x,\ x-c-\sigma,\ y-1/7,\ d-y-7/36,\\
1-z,\ 1-w,\ z-f-\sigma,\ w-d-\sigma,\ r-\sigma,\ 1-\sigma-r,\\
t-\sigma,\ 1-\sigma-t,\ r-1/8,\ t-1/7,\ z-f-2\sigma,\ w-d-1/8,\ 29/64-b.
\end{gathered}                                         \tag{12}
\]
All were proved above or follow directly from (1) and the square.

## 3. Ninety-seven exhaustive radial words

For Q relative to (3), define
\[
[V_iV_{i+j}Q]>0\quad\Longleftrightarrow\quad j\le r_i,
\qquad1\le r_i\le6.                                  \tag{13}
\]
Indices are cyclic modulo eight. Convexity puts the positive chords
in an initial interval at every hull vertex. Reversing the chord gives
\[
(j\le r_i)\quad\Longleftrightarrow\quad(8-j>r_{i+j}).   \tag{14}
\]

The two original-hexagon edge tests CDQ and DFQ give
\(r_2\ge2,r_4\ge2\). The empty ABH and BCX triangles in
Section 1 give \(2\le r_1\le5\). Enumerating the six-valued
tuples satisfying precisely these conditions and (14) gives 97
words. Order them lexicographically and number them from zero.
There are 18 with \(r_7<3\), which put Q below HC, and 79
with \(r_7\ge3\), which put Q above HC.

Every actual triple now has a known sign. Increasing hull triples
are positive; the signs of triples containing Q follow from (13).
A hull triangle contains Q exactly when all three of its cyclic
edge tests are positive. Subdivision then strengthens its doubled
area cost from \(\sigma\) to \(3\sigma\).

Put
\[
W=[HCDF]=1-(h-d)(c-f).
\]
If Q is above HC, it is in HCDF and the four triangles around it
give \(W\ge4\sigma\); otherwise retain \(W\ge2\sigma\).
For \(hc\), always retain (5). If Q is below HC, the five actual
points H,C,A,B,Q are in the virtual triangle \((0,0)HC\), with
the two endpoints H,C prescribed. The five-point endpoint theorem
in Section 1 of [TYPE_II.md](TYPE_II.md) gives
\[
hc\ge\frac{\sigma}{3-2\sqrt2}>\frac7{11}.             \tag{15}
\]

The ordered list of 94 nonnegative quadratic costs is as follows.
First visit all 84 increasing actual triples lexicographically,
multiply their determinant by its known sign, and subtract
\(3\sigma\) for a hull triangle containing Q, otherwise
\(\sigma\). Append, in order,
\[
W-\begin{cases}4\sigma&r_7\ge3,\\2\sigma&r_7<3,\end{cases}
\quad
hc-\begin{cases}4\sigma&r_7\ge3,\\7/11&r_7<3,\end{cases}
\quad3\sigma-[ABH],\quad3\sigma-[BCX],                 \tag{16}
\]
and finally the six costs \(\rho-[T]\) in the order
\(T=ABH,ABC,BCD,CDF,DFH,AFH\).

## 4. Fixed exclusions and the complete branch cover

Ninety-three words have a single cubic contradiction using only
(12) and (16). The four other words are
\[
\begin{array}{c|c}
23&(3,2,3,4,5,4,4,3)\\
54&(4,3,3,2,3,4,5,4)\\
69&(4,4,4,4,3,3,3,3)\\
84&(5,4,4,3,3,2,3,4).
\end{array}                                           \tag{17}
\]
For the additional branches, append the indicated nonnegative affine
factor to (12), in the displayed order if there are two.

| Branch name | Factor | Region excluded |
|---|---|---|
| x_low | \(z-x\) | \(x\le z\) |
| x_high | \(x-z\) | \(x\ge z\) |
| y_low | \(h-w\) | \(w\le h\) |
| y_high | \(w-h\) | \(w\ge h\) |
| l_low | \(11/20-h+a\) | \(h-a\le11/20\) |
| l_high | \(h-a-2/3\) | \(h-a\ge2/3\) |
| m_low | \(11/20-z+f\) | \(z-f\le11/20\) |
| g_high | \(f-1/4\) | \(f\ge1/4\) |
| c_low | \(2/3-c\) | \(c\le2/3\) |

The exact data supply the following additional exclusions.

| Word | Excluded branches | Remaining region |
|---|---|---|
| 23 | x_low, y_low, l_low, l_high, m_low, g_high, c_low, each separately | \(x>z,w>h,11/20<h-a<2/3,z-f>11/20,f<1/4,c>2/3\) |
| 54 | x_low and y_low, separately | \(x>z,w>h\) |
| 69 | x_low, y_low, and the joint branch x_high,y_high | Empty |
| 84 | x_low, y_low, and the joint branch x_high,y_high | Empty |

This is a complete cover, including the cut boundaries. Overlap
between excluded regions causes no problem. The only quartic is
the joint branch for word84; every other expression is cubic.

## 5. Exact negative upper bounds

Each fixed expression is a positive integer-weighted sum, divided
by 4096, of products of one to three affine factors, quadratic costs,
and quadratic costs times one affine factor. The one quartic also
allows products of two quadratic costs. All its summands are thus
nonnegative in its stated branch.

For its monomial expansion \(P(z)=p_0+\sum_{\alpha\ne0}p_\alpha z^\alpha\),
all twelve coordinates belong to \([0,1]\), so
\[
P(z)\le p_0+\sum_{\alpha\ne0}\max(p_\alpha,0).          \tag{18}
\]
The 108 exact expressions all have the right side strictly below
\(-3/4\), as recorded by their rational upper bounds in the data.
The greatest of those bounds is
\(-77110359731/78230061056\).
For the quartic it is explicitly
\[
-\frac{1624496882639}{1642831282176}<-\frac34.
\]
The verifier rebuilds every premise, all 22,019 terms, their exact
expansions, the 97-word list, and the complete branch table. Thus each
excluded branch would have a polynomial both nonnegative and negative.
Only the two residual regions in Section 4 remain.

## 6. The two sharp residual chambers

### Word23: the D/F theorem

In the sharp notation, label the hull and interior point as
\[
(A',B',C',D',E',F',G',H',O')=(A,B,C,X,D,Y,F,H,Q).
\]
The eleven determinant orientations in SHARP_DF_MOVING.md are exactly
positive in word23. Its D displacement is \(1-x\), its moving
F is \((z,w)\), and its side parameters satisfy
\[
1-x<1-z,\quad w>h,\quad
11/20<h-a<2/3,\quad z-f>11/20,\quad f<1/4,\quad c>2/3.
\]
These are all hypotheses (1)--(2) of that theorem, with its notation
\(f'=z,g'=f,k'=w\). The strict coordinate orders follow from
(1), (6), and (8). The theorem therefore proves the sharp bound,
and under our competitive assumption forces \(x=w=1\) and its
exact equality configuration.

### Word54: the B/D theorem

Rotate the square by \(R(u,v)=(v,1-u)\), and use labels
\[
(A',B',C',D',E',F',G',H',O')
=(R(C),R(X),R(D),R(Y),R(F),R(H),R(A),R(B),R(Q)).
\]
Explicitly these coordinates are
\[
\begin{array}{lll}
A'=(0,1-c),&B'=(y,1-x),&C'=(d,0),\\
D'=(w,1-z),&E'=(1,1-f),&F'=(h,1),\\
G'=(a,1),&H'=(0,1-b),&O'=(t,1-r).
\end{array}                                           \tag{19}
\]
The eleven positive determinant tests are those of SHARP_BD_MOVING.md.
Its B displacement satisfies \(1-x<1-z=d'\), and its D
displacement satisfies \(1-w<1-h=1-f'\), by the residual
conditions \(x>z,w>h\). Again every strict coordinate order follows
from (1), (6), and (8). That theorem applies and forces both
displacements to vanish and the exact sharp equality configuration.

Every initial configuration is now excluded by a fixed inequality or
belongs to one of these two sharp chambers. This proves Theorem 1,
including its equality statement. \(\square\)
