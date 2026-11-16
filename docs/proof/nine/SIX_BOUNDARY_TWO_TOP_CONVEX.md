# Two opposite-cap vertices and one anchor-interior point in N

Use the six boundary anchors

\[
A=(0,a),\quad H=(0,h),\quad B=(b,0),\quad C=(c,0),
\quad D=(1,d),\quad F=(f,1),
\]
\[
0<a<h<1,\quad0<b<c<1,\qquad a\le d\le h,\quad b\le f\le c.
                                                               \tag{1}
\]

The other three actual points are \(E=(e_x,e_y)\),
\(G=(g_x,g_y)\), and \(O=(x,y)\). Assume E and G lie in
the opposite cap \(DF(1,1)\), strictly beyond DF, and that
\(D,E,G,F\) is their convex hull in that cyclic order.
The remaining point O is strictly inside the original anchor
hexagon \(ABCDFH\). Cap points on a square side are allowed.
The square corner in the cap notation is virtual.

**Theorem.** Every configuration in this complete family has minimum
ordinary triangle area at most

\[
A_0=\frac{9\sqrt{65}-55}{320}.
\]

Equality forces \(e_x=g_y=1\) and the sharp eight-boundary
configuration of [HAND_PROOF.md](HAND_PROOF.md), up to square
symmetry and relabeling. In particular there is no competitive
configuration with either of these two contacts strictly inward.

This proves the convex opposite-cap subcase of N6-06. Its triangular
opposite-cap subcase is a separate hull case.

The proof is an exhaustive finite reduction to the simultaneous E/F
chamber in [SHARP_EF_MOVING.md](SHARP_EF_MOVING.md). All other
placements are excluded by 100 fixed rational cubic expressions.
Their 17,619 positive terms are printed in
[six_boundary_two_top_convex_certificates.json](six_boundary_two_top_convex_certificates.json),
and checked by
[check_six_boundary_two_top_convex.py](check_six_boundary_two_top_convex.py).

Assume the configuration is competitive, so every actual unsigned
doubled area is at least \(2A_0\), and hence at least

\[
\sigma=\frac8{73}<2A_0.
\]

Transposition exchanges the two upper anchors and reverses the cap
chain. Relabeling E and G therefore permits the normalization

\[
                             f\le d.                    \tag{2}
\]

The full hull is the convex octagon

\[
(V_0,\ldots,V_7)=(A,B,C,D,E,G,F,H),                    \tag{3}
\]

with O as its sole interior point. The six side contacts remain
extreme, and the assumed convex cap chain replaces the edge DF.
Its three outer supporting lines have all the other square-side
anchors on their inner sides. Positive minimum area excludes every
collinearity among actual points, so the hull is strictly convex.

## 1. Bounds valid throughout the convex cap case

Write \(L=h-a\), \(M=c-b\), and
\(\delta=(1-d)(1-f)\). The actual anchor costs give

\[
aM\ge\sigma,\qquad bL\ge\sigma,\qquad
h\ge\frac{\sigma}{M}+\frac{\sigma}{b},\qquad hc\ge4\sigma.
                                                               \tag{4}
\]

For the last step, \(bM\le c^2/4\). Since \(M<1-b\)
and \(h<1\), the preceding bound implies
\(b(1-b)>\sigma>7/64\), hence \(b>1/8\).
The transposed argument gives \(a>1/8\). Thus

\[
a,b,d,f>1/8,\qquad h,c\ge4\sigma.                    \tag{5}
\]

The convex four-point endpoint theorem in Section 1 of
[TYPE_II.md](TYPE_II.md), applied to D,F,E,G inside the
virtual triangle \(DF(1,1)\), gives

\[
                             \delta\ge4\sigma.           \tag{6}
\]

Because \(f>1/8\), (6) implies
\(d<1-4\sigma/(7/8)=255/511\). Because \(f\le d\),
it also implies \((1-f)^2\ge4\sigma>(33/50)^2\).
Consequently

\[
d\le\frac{255}{511},\qquad f\le\frac{17}{50},\qquad
L\ge\frac{50\sigma}{17},\qquad M\ge\frac{511\sigma}{255}.
                                                               \tag{7}
\]

The bound for L follows from \(bL\ge\sigma\) and
\(b\le f\). The bound for M follows from \(aM\ge\sigma\)
and \(a\le d\).

For either cap point \(Z=(z_x,z_y)\in\{E,G\}\),

\[
\begin{aligned}
[DZF]&=(1-d)(z_x-f)-(1-f)(1-z_y)\\
     &=(1-f)(z_y-d)-(1-d)(1-z_x)\ge\sigma.
\end{aligned}                                             \tag{8}
\]

The subtracted products are nonnegative. Since \(d,f>1/8\),

\[
z_x-f\ge\frac{64}{511},\qquad z_y-d\ge\frac{64}{511}.
                                                               \tag{9}
\]

### The order of the two added vertices

Set \(u=e_x-g_x\), \(v=g_y-e_y\). The two positive
cyclic areas have the exact formulas

\[
\begin{aligned}
[DEG]&=u(e_y-d)-(1-e_x)v,\\
[FEG]&=v(g_x-f)-(1-g_y)u.
\end{aligned}                                             \tag{10}
\]

Their positivity forces u and v to have the same nonzero sign.
If both were negative, multiplying the two resulting inequalities
would give

\[
(e_y-d)(g_x-f)<(1-e_x)(1-g_y).
\]

But the strict cap inequalities (8) give the reverse strict
inequality after multiplication. Therefore \(u,v>0\).
The two areas in (10) are at least \(\sigma\), and their
positive coefficients are at most one, so

\[
e_x-g_x\ge\sigma,\qquad g_y-e_y\ge\sigma.             \tag{11}
\]

### The interior point and the two half-hexagons

The actual bases AH and BC imply \(x,y\ge\sigma\).
Since O is in the anchor hexagon, all the areas on the left in

\[
\begin{aligned}
(1-f)[CDO]+(1-c)[DFO]&=[CDF](1-x),\\
(1-d)[FHO]+(1-h)[DFO]&=[DFH](1-y)
\end{aligned}                                             \tag{12}
\]

are positive and at least \(\sigma\). Normalization gives
\([CDF]\le1-f\) and \([DFH]\le1-d\), so (12) proves

\[
                         \sigma\le x,y\le1-\sigma.      \tag{13}
\]

Theorem 1 of [SIX_BOUNDARY_HULL.md](SIX_BOUNDARY_HULL.md)
does not assume the anchor hexagon is the full hull. It applies here
and gives

\[
[ABH],[ABC],[BCD],[CDF],[DFH],[AFH]<13/16.                \tag{14}
\]

The segment HC divides the anchor hexagon into the lower
quadrilateral HABC and the upper quadrilateral HCDF. Put

\[
W=2\operatorname{area}(HCDF)=1-(h-d)(c-f).
\]

If O is above HC, the four triangles from O to the sides of HCDF
give \(W\ge4\sigma\); the bound \(hc\ge4\sigma\) in
(4) remains available. If O is below HC, two actual triangles
triangulate HCDF, so \(W\ge2\sigma\). In that case the
five actual points H,C,A,B,O lie in the virtual triangle
\((0,0)HC\), with H and C as prescribed vertices. The
five-point endpoint theorem in Section 1 of `TYPE_II.md` gives

\[
hc\ge\frac{\sigma}{3-2\sqrt2}
  >\frac7{64}(3+2\sqrt2)>\frac7{11}.                   \tag{15}
\]

The last comparison is equivalent to \(8>(31/11)^2\).
An actual point cannot be on HC because the minimum area is positive.

## 2. The complete radial-word list

For O inside the convex octagon (3), define
\(w=(w_0,\ldots,w_7)\) by

\[
[V_iV_{i+j}O]>0\quad\Longleftrightarrow\quad j\le w_i,
\qquad 1\le w_i\le6,                                  \tag{16}
\]

with hull indices reduced modulo eight. Convexity makes the positive
signs consecutive, and reversing each directed chord gives

\[
(j\le w_i)\quad\Longleftrightarrow\quad
(8-j>w_{i+j}),\qquad i=0,\ldots,7,\quad j=1,\ldots,7.
                                                               \tag{17}
\]

The five other sides of the anchor hexagon are edges of (3).
The condition that O be on the inner side of its remaining side DF
is exactly

\[
                              w_3\ge3.                 \tag{18}
\]

There are exactly **94 words** satisfying (16)--(18), in
lexicographic order. This is an exhaustive necessary list; the proof
does not require each listed word to be realizable. The sign of HC
is positive precisely when \(w_7\ge3\), identifying the
upper and lower choices in (15).

An increasing hull triple has positive orientation. It contains O
exactly when its three cyclic edge signs in (16) are positive.
In that event its doubled area is at least \(3\sigma\), by
subdivision at O. Every other hull triangle still has doubled area
at least \(\sigma\). For every triangle formed by O and two
hull vertices, (16) fixes the sign of its actual area.

## 3. The fixed cubic inequalities

Use the coordinate order

\[
\zeta=(a,h,b,c,d,f,e_x,e_y,g_x,g_y,x,y)\in[0,1]^{12}.
\]

The following 31 affine factors are nonnegative by (1)--(13).
Their order fixes the indices in the coefficient file.

| Index | Factor | Index | Factor |
|---|---|---|---|
| 0 | \(a-1/8\) | 16 | \(c-b-511\sigma/255\) |
| 1 | \(b-1/8\) | 17 | \(e_x-f-64/511\) |
| 2 | \(h-4\sigma\) | 18 | \(e_y-d-64/511\) |
| 3 | \(c-4\sigma\) | 19 | \(1-e_x\) |
| 4 | \(1-h\) | 20 | \(1-e_y\) |
| 5 | \(1-c\) | 21 | \(g_x-f-64/511\) |
| 6 | \(d-a\) | 22 | \(g_y-d-64/511\) |
| 7 | \(h-d\) | 23 | \(1-g_x\) |
| 8 | \(f-b\) | 24 | \(1-g_y\) |
| 9 | \(c-f\) | 25 | \(e_x-g_x-\sigma\) |
| 10 | \(d-f\) | 26 | \(g_y-e_y-\sigma\) |
| 11 | \(d-1/8\) | 27 | \(x-\sigma\) |
| 12 | \(f-1/8\) | 28 | \(1-\sigma-x\) |
| 13 | \(255/511-d\) | 29 | \(y-\sigma\) |
| 14 | \(17/50-f\) | 30 | \(1-\sigma-y\) |
| 15 | \(h-a-50\sigma/17\) | | |

Call these factors \(a_0,\ldots,a_{30}\). For each word,
the nonnegative quadratic costs \(q_0,\ldots,q_{92}\) are
ordered as follows.

1. \(q_0=\delta-4\sigma\).
2. \(q_1=hc-4\sigma\) for an upper O, or \(hc-7/11\)
   for a lower O.
3. \(q_2=W-4\sigma\) for an upper O, or \(W-2\sigma\)
   for a lower O.
4. Costs \(q_3,\ldots,q_8\) are \(13/16-[T]\), with
   \(T=ABH,ABC,BCD,CDF,DFH,AFH\), in that order.
5. The remaining 84 costs are indexed by all increasing triples of
   the nine indices \(0,\ldots,8\), in lexicographic order,
   with O assigned index 8. Subtract \(3\sigma\) from a
   positive hull area containing O and \(\sigma\) from every
   other positive hull area. For a triple with O, multiply its
   determinant by the word's sign and subtract \(\sigma\).

All containments and thresholds in this list were proved above.

### The branches

All words except members 31 and 66, indexed from zero, have one
certificate for the whole word. Word 66 is

\[
(4,4,4,4,3,3,3,3).
\]

Its two certificates append respectively \(1/2-x\) and
\(x-1/2\) as factor \(a_{31}\). These closed half-spaces
cover that entire word.

Word 31 is

\[
w_*=(3,2,3,4,5,4,4,3).                                \tag{19}
\]

Its six certificates append one of the following factors as
\(a_{31}\):

| Branch label | Appended factor |
|---|---|
| `l_low` | \(11/20-(h-a)\) |
| `l_high` | \(h-a-2/3\) |
| `m_low` | \(11/20-(g_x-f)\) |
| `g_high` | \(f-1/4\) |
| `c_low` | \(2/3-c\) |
| `k_low` | \(h-g_y\) |

Thus every point of this word outside the closed neighborhood

\[
\frac{11}{20}\le h-a\le\frac23,\qquad
g_x-f\ge\frac{11}{20},\qquad f\le\frac14,
\qquad c\ge\frac23,\qquad g_y\ge h                    \tag{20}
\]

is covered by a cubic certificate. Some boundary points of (20)
are covered as well. The entire neighborhood is handled in Section 4.

### The exact contradiction in each certified branch

Each certificate is a sum of terms of the forms

\[
\frac{n}{N}\prod_{i\in I}a_i,
\qquad \frac{n}{N}q_j,
\qquad \frac{n}{N}q_j a_i,                            \tag{21}
\]

where \(n,N\) are positive integers, and the first product has
between one and three factors, with repetition permitted. Every
term is nonnegative under its branch assumptions. The index ranges,
positive integer weights, word, branch, and denominator are all
explicit in the supplied coefficient file.

For a polynomial \(P(\zeta)=\sum_\alpha c_\alpha
\zeta^\alpha\), define its elementary cube bound by

\[
U(P)=c_0+\sum_{\alpha\ne0}\max(c_\alpha,0).
                                                               \tag{22}
\]

Every nonconstant monomial lies in \([0,1]\) on the unit cube,
so \(P\le U(P)\). Exact expansion of the 100 fixed sums
in (21) gives

\[
U(P)\le
-\frac{11315534897214263309}{11507808525803520000}
<-\frac34<0.                                          \tag{23}
\]

This contradicts their termwise nonnegativity. The verifier
reconstructs all 94 words, checks all 100 required branches, expands
all 17,619 positive terms using exact rational arithmetic, and
checks (23). It also checks the geometric determinant identities
(8), (10), and (12), the sharp orientation map below, and the
rational comparisons used in (7), (9), and (15). No optimizer or
subdivision search is part of verification.

## 4. The remaining word is the sharp E/F chamber

In the remaining neighborhood (20), assign the canonical labels of
`SHARP_EF_MOVING.md` by

\[
(A',B',C',D',E',F',G',H',O')
       =(A,B,C,D,E,G,F,H,O).                            \tag{24}
\]

Thus its canonical moving E has displacement
\(r=1-e_x\), its moving F has horizontal coordinate
\(f'=g_x\) and height \(k=g_y\), and its fixed top
anchor has coordinate \(g'=f\).

All geometric hypotheses of the E/F theorem hold. In detail,
(9)--(11) give

\[
0<d<e_y<g_y\le1,\qquad 0<f<g_x<e_x\le1.
\]

In particular \(e_y<1\), \(g_x<1\), and
\(0\le r\le1-g_x\). The original normalization gives
\(b\le f=g'\), and (20) gives \(h\le k\).
Its other rational hypotheses are exactly (20), with
\(L=h-a\), \(M=g_x-f\), \(g'=f\).

Finally, all eleven canonical oriented doubled areas

\[
A'B'H',\ A'B'C',\ A'G'H',\ D'E'F',\ G'H'F',\ G'E'F',
\ A'D'O',\ D'H'O',\ B'O'E',\ G'C'O',\ O'C'F'
\]

are positive. The first six are cyclic hull triangles. The remaining
five signs are respectively

\[
[ADO]>0,\quad[DHO]>0,\quad[BOE]>0,
\quad[FCO]>0,\quad[OCG]>0,                             \tag{25}
\]

which follow directly from (19). The checker verifies the complete
map (24)--(25). All these are actual triangles, so their doubled
areas are at least \(2A_0\), not merely \(\sigma\).

The simultaneous E/F theorem now gives \(r=0,k=1\), and then
the unique sharp configuration of `HAND_PROOF.md`. Hence
\(e_x=g_y=1\), proving the stated upper bound and equality
classification for the entire convex cap family. \(\square\)
