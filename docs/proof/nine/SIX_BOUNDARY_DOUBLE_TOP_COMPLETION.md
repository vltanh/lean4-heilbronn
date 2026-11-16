# Completion with two opposite-cap points and one anchor-interior point

Use the N anchors

\[
A=(0,a),\quad H=(0,h),\quad B=(b,0),\quad C=(c,0),
\quad D=(1,d),\quad F=(f,1),
\]
\[
0<a<h<1,\qquad 0<b<c<1,\qquad a\le d\le h,\quad b\le f\le c.
                                                               \tag{1}
\]

Suppose two of the three other points lie in the opposite cap
\(DF(1,1)\), beyond the actual segment DF, and the remaining point
lies inside the anchor hexagon \(ABCDFH\). The square corner in the
cap notation is virtual. A point on an actual anchor edge gives a zero
triangle and is irrelevant to a positive minimum. Contacts with the
other square sides are allowed throughout.

**Theorem.** Every configuration in this complete occupancy has minimum
ordinary triangle area at most

\[
A_0=\frac{9\sqrt{65}-55}{320}.
\]

Equality occurs only at the known eight-boundary extremizer, up to square
symmetry and relabeling. In particular, every configuration in this
occupancy with exactly six square-boundary points is strictly below the
target. This closes both **N6-06-L0 and N6-06-L1**.

The proof treats both possible hulls of the four cap points, including
D and F. It uses 329 fixed rational cubic inequalities, followed in the
sole remaining chamber by the sharp theorem in
[SHARP_EF_HIGH.md](SHARP_EF_HIGH.md). The proof data and exact verifier are

- [six_boundary_double_top_certificates.json](six_boundary_double_top_certificates.json);
- [double_top_polynomials.py](double_top_polynomials.py);
- [check_six_boundary_double_top_completion.py](check_six_boundary_double_top_completion.py).

The verifier uses only the Python standard library. Its assertions cover
every finite sign cell and every coordinate split, as well as every
coefficient of the fixed inequalities. Numerical optimization is not a
premise of the proof.

## 1. Two hull alternatives and common bounds

Assume the minimum ordinary area is at least \(A_0\). Brackets denote
signed doubled areas. Put

\[
s=\frac7{64},\qquad \rho=\frac{13}{16},\qquad
\sigma\in\left\{\frac7{64},\frac8{73},\frac{79}{720}\right\}.
                                                               \tag{2}
\]

Every actual unsigned doubled area is at least every value of
\(\sigma\) in (2). Indeed, for each of these positive rational numbers,

\[
(55+160\sigma)^2<81\cdot65,
\]

which is exactly \(\sigma<2A_0\). The common geometric bounds below
always use \(s=7/64\), even when a certificate uses a stronger
\(\sigma\) for its actual-triangle costs. Also
\(\rho<(4+2\sqrt3)s\), since \((24/7)^2<12\).

Transpose the square and relabel the contacts if necessary to arrange
\(f\le d\). This preserves the opposite cap and the anchor hexagon.
D and F are extreme points of the four-point cap hull: their first and
second coordinates, respectively, are maximal. Positive minimum area
excludes three collinear points. There are consequently two alternatives:

| Mode | Cap hull and remaining cap point | Full cyclic hull | Other interior point |
|---|---|---|---|
| `convex` | Convex quadrilateral \(DEGF\) | \(A,B,C,D,E,G,F,H\) | \(O\in ABCDFH\) |
| `triangle` | Triangle \(DXF\), with \(P\in\operatorname{int}(DXF)\) | \(A,B,C,D,X,F,H\) | \(Q\in ABCDFH\) |

These are full hulls. The six side contacts remain extreme; the two cap
edges adjacent to D and F have the anchor hexagon on their inner sides,
and the cap hull supplies any intermediate edge. Joining the cap
hull to the anchor hexagon across DF therefore gives the displayed convex
polygon. Every containment involving an actual edge is strict.

Write \(L=h-a\), \(M=c-b\), and
\(\delta=(1-d)(1-f)\). The actual anchor triangles give

\[
aM\ge s,\qquad bL\ge s,\qquad
h\ge\frac{s}{M}+\frac{s}{b},\qquad hc\ge4s.             \tag{3}
\]

For the last inequality use \(bM\le c^2/4\). Also \(h<1\)
in (3) implies \(bM/c>s\). Since \(M/c=1-b/c\le1-b\),
we have \(b(1-b)>s=(1/8)(7/8)\), hence \(b>1/8\).
The transposed calculation gives \(a>1/8\). In particular

\[
d,f>\frac18,\quad h,c\ge4s,\quad L,M\ge s.
                                                               \tag{4}
\]

The anchor areas

\[
[DFH]=1-h+f(h-d)\le1-d,\qquad
[CDF]=1-c+d(c-f)\le1-f
\]

also give \(d,f\le1-s\).

For any cap point \(Z=(z_x,z_y)\),

\[
\begin{aligned}
[DZF]&=(1-d)(z_x-f)-(1-f)(1-z_y)\\
     &=(1-f)(z_y-d)-(1-d)(1-z_x)\ge s.                  \tag{5}
\end{aligned}
\]

All subtracted products are nonnegative. As \(d,f>1/8\), this gives

\[
z_x-f,z_y-d>\frac18.                                    \tag{6}
\]

If DZF contains another actual point, its area is at least \(3s\)
and the two differences in (6) exceed \(3/8\).

For the anchor-interior point \(R=(r_x,r_y)\), the actual bases AH
and BC give \(r_x,r_y\ge s\). Its CD, DF, FH edge determinants
are positive. The exact projection identities

\[
\begin{aligned}
(1-f)[CDR]+(1-c)[DFR]&=[CDF](1-r_x),\\
(1-d)[FHR]+(1-h)[DFR]&=[DFH](1-r_y)
\end{aligned}                                             \tag{7}
\]

and \([CDF]\le1-f\), \([DFH]\le1-d\) imply

\[
s\le r_x,r_y\le1-s.                                    \tag{8}
\]

Theorem 1 of [SIX_BOUNDARY_HULL.md](SIX_BOUNDARY_HULL.md) applies
without an exact-anchor-hull assumption and supplies the six bounds

\[
[ABH],[ABC],[BCD],[CDF],[DFH],[AFH]<\rho.                 \tag{9}
\]

If R is below HC, the five actual points \(H,C,A,B,R\) lie in
the virtual triangle \((0,0)HC\), including the two vertices H,C.
The endpoint-triangle theorem in Section 1 of [TYPE_II.md](TYPE_II.md)
therefore gives

\[
hc\ge s(3+2\sqrt2)>\frac7{11}.                          \tag{10}
\]

The strict rational comparison follows from \(8>(31/11)^2\).
If R is above HC, retain the common bound \(hc\ge4s\).

## 2. Additional inequalities in the two modes

### Convex cap hull

The convex-hull alternative of the four-point endpoint-triangle theorem
in [TYPE_II.md](TYPE_II.md) gives \(\delta\ge4s\). Together with
\(f>1/8\), \(f\le d\), and \(\delta\le(1-f)^2\), this implies

\[
d<\frac12,\qquad f<\frac{11}{32}.                      \tag{11}
\]

For the second bound, \((21/32)^2<4s\).
Put \(u=e_x-g_x\), \(v=g_y-e_y\). The positive cyclic cap areas are

\[
\begin{aligned}
[DEG]&=u(e_y-d)-(1-e_x)v,\\
[FEG]&=v(g_x-f)-(1-g_y)u.                               \tag{12}
\end{aligned}
\]

They force u and v to have the same nonzero sign. If both were negative,
their positivity would imply
\((e_y-d)(g_x-f)<(1-e_x)(1-g_y)\). But multiplying the strict
cap tests

\[
(1-f)(e_y-d)>(1-d)(1-e_x),\qquad
(1-d)(g_x-f)>(1-f)(1-g_y)
\]

gives the opposite inequality. Hence u,v are positive. Equations (12),
with both actual areas at least s, now yield

\[
e_x-g_x\ge\frac{s}{1-d}>\frac18,\qquad
g_y-e_y\ge\frac{s}{1-f}>\frac18.                        \tag{13}
\]

We retain both the weaker cost \(\delta-2s\ge0\) and the stronger
cost \(\delta-4s\ge0\). They occupy different fixed indices; retaining
the earlier weaker cost does not discard (11) or (13).

### Triangular cap hull

Subdivision at P gives \([DXF]\ge3s\), so \(\delta\ge3s\).
The same endpoint and transpose bounds give

\[
d<\frac58,\qquad f<\frac7{16},\qquad
x-f,y-d>\frac38,\qquad p_x-f,p_y-d>\frac18.             \tag{14}
\]

For the f bound use \((9/16)^2<3s\). The two subtriangle costs

\[
\begin{aligned}
[DXP]&=(y-d)(1-p_x)-(1-x)(p_y-d)\ge s,\\
[XFP]&=(x-f)(1-p_y)-(1-y)(p_x-f)\ge s
\end{aligned}                                             \tag{15}
\]

have nonnegative subtracted products and coefficients \(y-d<7/8\),
\(x-f<7/8\). Thus

\[
p_x,p_y<\frac78.                                        \tag{16}
\]

Also \([DXF]\le\delta<49/64\), because \(d,f>1/8\).
Let

\[
W=2\operatorname{area}(HCDF)=1-(h-d)(c-f).
\]

If Q is above HC, joining it to the four vertices gives \(W\ge4s\).
If Q is below HC, the two actual triangles HCD,HDF give \(W\ge2s\).
These budgets and (10) are kept at the fixed threshold s.

## 3. Ordered affine factors

Use coordinate order

\[
\begin{array}{ll}
\texttt{convex}:&(a,h,b,c,d,f,e_x,e_y,g_x,g_y,o_x,o_y),\\
\texttt{triangle}:&(a,h,b,c,d,f,x,y,p_x,p_y,q_x,q_y).
\end{array}                                               \tag{17}
\]

All coordinates belong to \([0,1]\). The first thirteen nonnegative
affine factors, indexed from zero to twelve, are common to both modes:

\[
\begin{gathered}
a-1/8,\ b-1/8,\ h-4s,\ c-4s,\ 1-h,\ 1-c,\ d-a,\ h-d,\\
f-b,\ c-f,\ d-f,\ h-a-s,\ c-b-s.
\end{gathered}                                            \tag{18}
\]

For `convex`, append the following sixteen factors in the printed order:

\[
\begin{gathered}
1-s-d,\ 1-s-f,\\
1-e_x,\ 1-e_y,\ e_x-f-s,\ e_y-d-s,\\
1-g_x,\ 1-g_y,\ g_x-f-s,\ g_y-d-s,\\
e_x-g_x,\ g_y-e_y,\ o_x-s,\ 1-s-o_x,\ o_y-s,\ 1-s-o_y.
\end{gathered}                                            \tag{19}
\]

This is the original 29-factor prefix. Its eight additional factors are

\[
\begin{gathered}
1/2-d,\ 11/32-f,\ e_x-g_x-1/8,\ g_y-e_y-1/8,\\
e_x-f-1/8,\ e_y-d-1/8,\ g_x-f-1/8,\ g_y-d-1/8.
\end{gathered}                                            \tag{20}
\]

For `triangle`, instead append to (18) the following fourteen factors:

\[
\begin{gathered}
5/8-d,\ 7/16-f,\ 1-x,\ 1-y,\ x-f-3s,\ y-d-3s,\\
1-p_x,\ 1-p_y,\ p_x-f-s,\ p_y-d-s,\\
q_x-s,\ 1-s-q_x,\ q_y-s,\ 1-s-q_y.
\end{gathered}                                            \tag{21}
\]

This is the original 27-factor prefix. Its six additional factors are

\[
x-f-3/8,\ y-d-3/8,\ p_x-f-1/8,\ p_y-d-1/8,
\quad 7/8-p_x,\ 7/8-p_y.                                \tag{22}
\]

Every factor is nonnegative by Sections 1--2. Each coefficient record
specifies its original prefix length: 29 or 37 in the convex mode, 27
or 33 in the triangular mode. Factors are always appended, never
inserted. Any factors for a coordinate split or sharp obstruction are
appended after the full common list, in the order specified below.

## 4. Exhaustive radial covers

For an interior point R of a convex n-gon \(V_0,\ldots,V_{n-1}\),
let \(r_i\) be the largest cyclic step for which
\([V_iV_{i+r_i}R]>0\). Convexity and positive minimum area imply

\[
1\le r_i\le n-2,\qquad
[V_iV_{i+j}R]>0\iff j\le r_i,\qquad
(j\le r_i)\iff(n-j>r_{i+j}).                            \tag{23}
\]

All subscripts in (23) are cyclic. The final equivalence reverses a
directed chord. We enumerate all integer words satisfying these necessary
relations. It is unnecessary to assert that every retained word is
geometrically realizable.

### Convex mode: 94 words

Number the hull \((V_0,\ldots,V_7)=(A,B,C,D,E,G,F,H)\), with
\(V_8=O\). Because O is in the anchor hexagon, \([DFO]>0\),
which adds exactly the necessary test \(r_3\ge3\) to (23).
All its other anchor-edge tests are hull-edge tests. Exactly **94**
words remain. Order them lexicographically, starting with index zero.
O is below HC exactly when \(r_7<3\).

Ninety-two words are excluded by whole-word inequalities. Index 66,

\[
(4,4,4,4,3,3,3,3),
\]

has the following exhaustive closed split:

\[
c\le\tfrac12;\qquad
c\ge\tfrac12,\ o_y\le\tfrac12;\qquad
c\ge\tfrac12,\ o_y\ge\tfrac12.                          \tag{24}
\]

There is a certificate for every one of these three cells. The sole
remaining word, at index 31, is

\[
r_*=(3,2,3,4,5,4,4,3).                                  \tag{25}
\]

Section 6 gives seven obstruction inequalities for this word and applies
the sharp theorem to the remainder.

### Triangular mode: 260 pairs and 271 final cells

Number the hull \((V_0,\ldots,V_6)=(A,B,C,D,X,F,H)\), followed
by \(V_7=P,V_8=Q\). There are exactly 57 seven-vertex words satisfying
(23). P is inside DXF, so its word has \(r_3=1\); there are five
such words. Q is in the anchor hexagon, so its word has \(r_3\ge2\);
there are 52 such words. Their ordered Cartesian product gives all
**260** radial pairs. Q is below HC precisely when its entry \(r_6<3\).

Order both word lists lexicographically, then their Cartesian product,
starting at index zero. Write a pair as \((r^P,r^Q)\). In addition to
all hull and hull-chord signs, whenever \(r^P_i\ne r^Q_i\), convexity
orders the two interior rays from \(V_i\) and gives

\[
\operatorname{sgn}[V_iPQ]=
\begin{cases}1&r^P_i<r^Q_i,\\-1&r^P_i>r^Q_i.\end{cases} \tag{26}
\]

Only the following initially unknown actual signs are split:

| Pair index | Areas whose signs are independently split | Number of children |
|---|---|---:|
| 230 | \([CPQ]\) | 2 |
| 235 | \([BPQ],[CPQ]\) | 4 |
| 238 | \([BPQ]\) | 2 |

Their zero signs are impossible under the positive area assumption.
These exhaustive splits produce **265** sign cells. Four cells use the
following fixed coordinate trees; all cuts are at \(1/2\):

| Pair and additional sign | Complete recursive split | Leaves |
|---|---|---:|
| 92 | No coordinate split | 1 |
| 93 | Split \(q_x\). On its lower branch split \(p_y\), then on that upper branch split \(q_y\). | 4 |
| 230, \([CPQ]>0\) | Split \(q_x\). On its upper branch split \(p_y\), then on that upper branch split \(q_y\). | 4 |
| 233 | No coordinate split | 1 |

Each split includes both \(z\le1/2\) and \(z\ge1/2\), so equality
is covered. The path contributes its nonnegative affine factors
\(1/2-z\) or \(z-1/2\), appended in path order after (22).
There are **271 final cells**. The verifier reconstructs the trees
independently of the coefficient file and matches every leaf to exactly
its prescribed conditions.

## 5. Nonnegative costs and fixed cubic contradictions

For every actual triangle whose sign is fixed, use the cost

\[
q_T=\epsilon_T[T]-t_T.                                  \tag{27}
\]

The threshold is \(\sigma\) unless the known cyclic edge signs force
another interior point inside the triangle, in which case it is
\(3\sigma\). In the triangular mode, if both P and Q are forced
inside, use \(\rho\). This last cost is valid by the two-interior-point
triangle theorem in [CORNER_FAMILIES.md](CORNER_FAMILIES.md), because
\(\rho<(4+2\sqrt3)s\). Unknown signs imply no containment; no cost
uses a merely conjectured triangle sign.

In the convex mode all 84 actual signs are fixed. List their costs in
lexicographic triple order, then append in this exact order:

\[
hc-\begin{cases}7/11&O\text{ below HC},\\4s&O\text{ above HC},\end{cases}
\quad \delta-2s,
\]
\[
\rho-[ABH],\ \rho-[ABC],\ \rho-[BCD],\ \rho-[CDF],
\ \rho-[DFH],\ \rho-[AFH],\quad \delta-4s.                \tag{28}
\]

There are 93 costs. In particular the old cap cost remains at index 85,
and the stronger cap cost is appended at index 92.

In the triangular mode, list the costs of all known-sign actual triples
in lexicographic order, then append

\[
\begin{array}{c|cc}
&Q\text{ below HC}&Q\text{ above HC}\\ \hline
\text{first extra cost}&W-2s&W-4s\\
\text{second extra cost}&hc-7/11&hc-4s
\end{array}
\]
\[
\delta-3s,\quad
\rho-[ABH],\ \rho-[ABC],\ \rho-[BCD],\ \rho-[CDF],
\ \rho-[DFH],\ \rho-[AFH],\quad 49/64-[DXF].             \tag{29}
\]

The geometric budgets in (28)--(29), all six ear bounds, and all
two-interior-point costs remain based on the fixed numbers s and
\(\rho\). Changing \(\sigma\) strengthens only actual-triangle
costs with thresholds \(\sigma\) or \(3\sigma\).

Every certificate is a positive integer-weighted sum, divided by 4096,
of terms

\[
l_i,\qquad l_i l_j,\qquad l_i l_j l_k,\qquad q_T,
\qquad q_Tl_i.                                          \tag{30}
\]

Here \(l_i\) is a nonnegative affine factor from the specified prefix
and any stated branch conditions. Thus its cubic polynomial \(C\)
is nonnegative on its entire stated cell. Expanding exactly in the twelve
coordinates, \(C(z)=c_0+\sum_{\alpha\ne0}c_\alpha z^\alpha\),
and using \(0\le z^\alpha\le1\), gives

\[
C(z)\le c_0+\sum_{\alpha\ne0}\max(c_\alpha,0).           \tag{31}
\]

The right side of (31) is at most \(-3/4\) for all **329** certificates,
which contain **56,558 positive terms**. The largest exact upper bound is

\[
-\frac{1055113337}{1073741824}<-\frac34.                  \tag{32}
\]

There are 102 convex certificates with 24,786 terms, and 227 triangular
certificates with 31,772 terms. The largest upper bound in the latter
family is \(-264270775/268435456\). In a record, `f` supplies sorted
factor indices and a positive weight; `q` supplies the cost index, a
factor index (\(-1\) means no multiplier), and a positive weight.

The triangular family contains 210 unsplit certificates, seven additional
sign-cell certificates, and ten coordinate-tree certificates. A fixed
certificate may cover more than one radial pair. Such reuse is accepted
only when every cost actually occurring in it has the same actual
determinant and sign in the target cell and an equal or stronger proved
threshold there. The common affine factors are valid in every pair.
This is a direct implication between nonnegative polynomial lists, with
all comparisons made exactly by the verifier.

Thus every triangular cell and every nonsharp convex word are impossible.
Indeed the triangular case already has ordinary minimum area strictly
below \(79/1440<A_0\), since its entire proof only requires actual
doubled areas at least \(79/720\).

## 6. The sole sharp convex word is the E/F high chamber

For the word (25), the seven additional certificates append at index 37
the respective affine factor in the following table:

| Branch | Additional factor | Excluded obstruction |
|---|---|---|
| `Llow` | \(11/20-(h-a)\) | \(h-a\le11/20\) |
| `Lhigh` | \((h-a)-2/3\) | \(h-a\ge2/3\) |
| `Mlow` | \(11/20-(g_x-f)\) | \(g_x-f\le11/20\) |
| `glarge` | \(f-1/4\) | \(f\ge1/4\) |
| `blarge` | \(b-1/4\) | \(b\ge1/4\) |
| `csmall` | \(2/3-c\) | \(c\le2/3\) |
| `klow` | \(6/7-g_y\) | \(g_y\le6/7\) |

They use \(\sigma=s\), the 37 common factors, and the costs (28).
Their negative exact bounds therefore force every remaining competitive
placement to satisfy

\[
\frac{11}{20}<h-a<\frac23,\qquad
g_x-f>\frac{11}{20},\qquad
f,b<\frac14,\qquad c>\frac23,\qquad g_y>\frac67.          \tag{33}
\]

Use the sharp labels without changing coordinates:

\[
(A',B',C',D',E',F',G',H',O')=(A,B,C,D,E,G,F,H,O).
                                                               \tag{34}
\]

The two displaced points are

\[
E'=(1-r',e'),\qquad F'=(f',k'),\qquad
r'=1-e_x,\ e'=e_y,\ f'=g_x,\ k'=g_y,
\]

while \(G'=(g',1)=(f,1)\). All contact orders in
[SHARP_EF_HIGH.md](SHARP_EF_HIGH.md) hold: \(d<e_y\) and
\(f<g_x\) follow from (6), while (13) gives \(e_y<g_y\le1\)
and \(g_x<e_x\le1\). In particular its parameters e',f' are
strictly between zero and one. Moreover

\[
0\le r'=1-e_x\le1-g_x=1-f',\qquad
\frac67<k'\le1,                                       \tag{35}
\]

and (33) gives exactly its required bounds on
\(L'=h-a\), \(M'=f'-g'=g_x-f\), b, g', and c.
No comparison between b and g', or between h and k', is needed.

The eleven required positive doubled areas of that theorem become,
in order, the following original triples:

\[
ABH,\ ABC,\ AFH,\ DEG,\ FHG,\ FEG,
\ ADO,\ DHO,\ BOE,\ FCO,\ OCG.                          \tag{36}
\]

Their signs follow from the convex hull and the exact radial word (25);
the verifier checks all eleven. Every one is an actual triangle, so its
unsigned doubled area is at least \(2A_0\). The sharp E/F high theorem
now gives the desired bound and its equality classification. Equality
requires

\[
r'=0,\qquad k'=1,
\quad\text{that is}\quad e_x=g_y=1,                     \tag{37}
\]

and the other coordinates are the standard extremizer, up to the
allowed symmetry and labels. Thus equality introduces the two additional
square-boundary contacts and cannot occur with exactly six. Both lower
and upper placements of the anchor-interior point have been covered,
which proves the theorem. \(\square\)
