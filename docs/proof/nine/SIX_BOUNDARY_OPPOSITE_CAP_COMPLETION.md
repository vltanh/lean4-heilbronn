# Completion when all three N free points lie in the opposite cap

Use the open-side N anchors
\[
A=(0,a),\ H=(0,h),\ B=(b,0),\ C=(c,0),\ D=(1,d),\ F=(f,1),
\]
\[
0<a<h<1,\quad0<b<c<1,\qquad a\le d\le h,\quad b\le f\le c.
\]
Suppose all three further points lie in the closed opposite exterior
cap \(DF(1,1)\). A point on DF gives zero area and can be discarded
from the positive-minimum case. Positions on the other two square
sides are allowed.

**Theorem 1.** Every configuration in this entire occupancy has
minimum ordinary triangle area at most
\[
A_0=\frac{9\sqrt{65}-55}{320}.
\]
Equality is possible only at the known eight-boundary extremizer,
up to square symmetry and relabeling. In particular, a configuration
with exactly six square-boundary points in this occupancy is strictly
below the target.

The proof combines sixteen fixed rational cubic inequalities with the
sharp simultaneous-displacement theorem in
[SHARP_CD_MOVING.md](SHARP_CD_MOVING.md). Fourteen inequalities exclude
complete radial words. Two more exclude the height obstructions in the
sole sharp word. The remaining continuous chamber has the sharp bound
and complete equality analysis.

## 1. The complete hull reduction and common bounds

It suffices to consider minimum ordinary area at least \(A_0\).
Put \(s=7/64<2A_0\). Theorem 4 of
[SIX_BOUNDARY_EXTERIOR.md](SIX_BOUNDARY_EXTERIOR.md) names the three
points \(E=(e_x,e_y),G=(g_x,g_y),O=(o_x,o_y)\) so that
\[
A,B,C,D,E,G,F,H
\]
is their strictly convex octagonal hull, and
\[
O\in DFE\cap DFG.                                      \tag{1}
\]
That theorem excludes every triangular cap hull and every other
support cell. Thus no hull choice is omitted here.

Transpose the square if necessary and relabel the contacts to arrange
\[
f\le d.                                                 \tag{2}
\]
This exchanges \(a,b\), \(h,c\), \(d,f\), and the two cap hull
vertices, preserving (1) after cyclic relabeling.

Write \(L=h-a\), \(M=c-b\). The actual areas ABC and ABH give
\[
aM\ge s,\qquad bL\ge s.
\]
Consequently
\[
a,b\ge s,\quad L,M\ge s,\qquad hc\ge4s,
\quad h,c\ge4s.                                         \tag{3}
\]
For the product bound, \(h\ge s/M+s/b\), so
\(hc\ge sc^2/(bM)\ge4s\), because \(b+M=c\).

Let \(\delta=(1-d)(1-f)\) be the doubled area of the virtual
cap. It contains five actual points, including its vertices D,F.
The endpoint-triangle theorem in Section 1 of
[TYPE_II.md](TYPE_II.md) gives
\[
\delta\ge\frac{s}{3-2\sqrt2}
=\frac7{64}(3+2\sqrt2)>\frac7{11}.                       \tag{4}
\]
The strict rational comparison follows from
\(8>(31/11)^2\). Since \(d\ge a\ge s\) and
\(f\ge b\ge s\), (2)--(4) give
\[
d\le1-\frac{7/11}{1-s}=\frac{179}{627},
\qquad
(1-f)^2\ge\delta>\frac7{11},\qquad f<\frac{13}{64}.     \tag{5}
\]
The last comparison uses \((51/64)^2<7/11\).

For each cap point \(Z=(z_x,z_y)\in\{E,G,O\}\),
\[
-[DFZ]=(1-d)(z_x-f)-(1-f)(1-z_y)
=(1-f)(z_y-d)-(1-d)(1-z_x)\ge s.
\]
Hence
\[
z_x-f\ge s,\qquad z_y-d\ge s.                           \tag{6}
\]
Finally, the support-triangle construction used in the hull reduction
has an apex K inside the virtual cap, E strictly on its leg DK, and
G strictly on its leg FK. Since D has first coordinate one and
F has second coordinate one,
\[
e_x\ge K_x\ge g_x,\qquad e_y\le K_y\le g_y.             \tag{7}
\]
These bounds concern the original configuration; they do not move any
actual point.

## 2. Fifteen necessary words cover the entire common cell

Number the hull vertices by
\[
(V_0,\ldots,V_7)=(A,B,C,D,E,G,F,H),\qquad V_8=O.
\]
For the interior point O, let \(r_i\) count subsequent vertex rays
before the ray opposite to \(V_i\). Convexity and noncollinearity give
\[
1\le r_i\le6,\qquad
j\le r_i\ \Longleftrightarrow\ 8-j>r_{i+j}
\quad(1\le j\le7).                                    \tag{8}
\]
Indices are modulo eight. For \(i<j\),
\([V_iV_jO]>0\) exactly when \(j-i\le r_i\).
A triangle of three hull vertices contains O precisely when its
three cyclic edge signs are all positive.

The two containments (1) force exactly the additional necessary tests
\[
r_3=2,\qquad r_4\ge2.                                  \tag{9}
\]
Indeed DGO and EFO are positive, whereas DFO is negative; the
remaining neighboring edge tests hold for every interior point.
Substitution of (9) into the finite relations (8) leaves the following
fifteen words. This is a necessary cover; it does not assume geometric
realizability of every word.

| Index | Word | Closure |
|---|---|---|
| 1 | (3,2,1,2,6,5,5,4) | Fixed cubic |
| 2 | (3,2,2,2,5,5,5,4) | Fixed cubic |
| 3 | (3,2,3,2,5,4,5,4) | Fixed cubic |
| 4 | (3,3,2,2,4,5,5,4) | Fixed cubic |
| 5 | (3,3,3,2,4,4,5,4) | Fixed cubic |
| 6 | (3,4,3,2,4,3,5,4) | Fixed cubic |
| 7 | (4,3,2,2,2,5,5,5) | Fixed cubic |
| 8 | (4,3,2,2,3,5,5,4) | Fixed cubic |
| 9 | (4,3,3,2,2,4,5,5) | Fixed cubic |
| 10 | (4,3,3,2,3,4,5,4) | Two height exclusions, then sharp theorem |
| 11 | (4,4,3,2,2,3,5,5) | Fixed cubic |
| 12 | (4,4,3,2,3,3,5,4) | Fixed cubic |
| 13 | (5,4,3,2,2,1,5,6) | Fixed cubic |
| 14 | (5,4,3,2,2,2,5,5) | Fixed cubic |
| 15 | (5,4,3,2,3,2,5,4) | Fixed cubic |

The exact finite-word check enumerates all entries in \(\{1,\ldots,6\}^8\)
and retains precisely (8)--(9); no numerical coordinates enter it.

## 3. Nonnegative factors and signed quadratic costs

Use coordinate order
\[
z=(a,h,b,c,d,f,e_x,e_y,g_x,g_y,o_x,o_y)\in[0,1]^{12}.
\]
The following 29 common affine factors are nonnegative by the original
orders and (2)--(7). Indices start at zero.

| Index | Factor | Index | Factor |
|---|---|---|---|
| 0 | \(a-s\) | 15 | \(1-g_x\) |
| 1 | \(b-s\) | 16 | \(1-g_y\) |
| 2 | \(h-4s\) | 17 | \(1-o_x\) |
| 3 | \(c-4s\) | 18 | \(1-o_y\) |
| 4 | \(1-h\) | 19 | \(e_x-f-s\) |
| 5 | \(1-c\) | 20 | \(e_y-d-s\) |
| 6 | \(d-a\) | 21 | \(g_x-f-s\) |
| 7 | \(h-d\) | 22 | \(g_y-d-s\) |
| 8 | \(f-b\) | 23 | \(o_x-f-s\) |
| 9 | \(c-f\) | 24 | \(o_y-d-s\) |
| 10 | \(d-f\) | 25 | \(e_x-g_x\) |
| 11 | \(h-a-s\) | 26 | \(g_y-e_y\) |
| 12 | \(c-b-s\) | 27 | \(179/627-d\) |
| 13 | \(1-e_x\) | 28 | \(13/64-f\) |
| 14 | \(1-e_y\) | | |

Call them \(l_i\). For the sharp word 10, two certificates have an
additional factor \(l_{29}\): it is \(c-e_x\) in branch `left`,
and \(h-g_y\) in branch `low`. These factors are used only under
those respective height hypotheses. All other records have branch
`whole` and use only the 29 common factors.

List the 84 increasing triples of \(V_0,\ldots,V_8\) lexicographically.
For each define a quadratic cost
\[
q_{ijk}=\epsilon_{ijk}[V_iV_jV_k]-t_{ijk}.                \tag{10}
\]
For hull triples, \(\epsilon=1\), and the threshold is \(3s\)
if O is inside their triangle, and s otherwise. For a triple containing
O, its sign is determined by (8) and its threshold is s.
These costs are nonnegative by elementary area subdivision and the
actual triangle threshold. Append the 85th cost, indexed 84,
\[
q_{84}=(1-d)(1-f)-7/11\ge0,                              \tag{11}
\]
which follows from the proved virtual-cap bound (4).

## 4. Sixteen fixed cubic inequalities

The coefficient file
[six_boundary_opposite_cap_certificates.json](six_boundary_opposite_cap_certificates.json)
contains one expression for each of the fourteen nonsharp words, and
the two height-branch expressions for word 10. Each is a positive
integer-weighted sum, with common denominator 4096, of terms
\[
l_i,\quad l_i l_j,\quad l_i l_j l_k,\quad q_t,\quad q_tl_i.
                                                               \tag{12}
\]
A record `f` specifies the sorted factor indices and the positive
integer weight. A record `q` specifies the cost index, its factor
index (or \(-1\) for no multiplier), and the positive weight.
The reference word and branch fix all factors and costs in (12).

There are **3,133 positive terms** in total. Every expression C is
nonnegative under its stated geometric hypotheses. On the other hand,
expand it exactly as \(C(z)=\sum c_\nu z^\nu\). Every nonconstant
monomial lies between zero and one, so
\[
C(z)\le c_0+\sum_{\nu\ne0}\max(c_\nu,0)\le-3/4.         \tag{13}
\]
The last inequality holds for all sixteen fixed expressions; the
largest exact upper bound is
\[
-\frac{662811495605}{673236123648}<-\frac34.
\]
Thus every nonsharp word is impossible at threshold s. In the sharp
word, the `left` and `low` certificates exclude respectively
\(e_x\le c\) and \(g_y\le h\). A remaining competitive placement
therefore has
\[
e_x>c,\qquad g_y>h.                                    \tag{14}
\]
The coefficient lists and the rational expansion rule in (13) are
fixed algebraic inequalities on the entire parameter families.
No optimizer, sampled test, or exhaustive coordinate-box subdivision
is a premise of their verification.

## 5. The sole remaining chamber is the simultaneous C/D theorem

Rotate coordinates by \((x,y)\mapsto(y,1-x)\), and use primed
sharp-chamber labels as follows:
\[
\begin{array}{lll}
A'=(0,1-c),&B'=(d,0),&C'=(e_y,1-e_x),\\
D'=(g_y,1-g_x),&E'=(1,1-f),&F'=(h,1),\\
G'=(a,1),&H'=(0,1-b),&O'=(o_y,1-o_x).
\end{array}                                             \tag{15}
\]
Equivalently, the label correspondence is
\[
(A',B',C',D',E',F',G',H')=(C,D,E,G,F,H,A,B).
\]
All strict contact orders in SHARP_CD_MOVING.md hold. In particular
\(d<e_y<1\) and \(f<g_x<1\): the first inequalities follow
from (6), while an equality \(e_y=1\) or \(g_x=1\), together
with (7), would make E,G,F or D,E,G collinear.
The two inward displacements are
\[
t'=1-e_x<1-c=a',\qquad r'=1-g_y<1-h=1-f',               \tag{16}
\]
by (14).

For completeness, the eleven required positive areas in that sharp
theorem correspond, in order, to the following original triples:
\[
CDB,\ CDE,\ CAB,\ GFH,\ ABH,\ AFH,\
CGO,\ GBO,\ DOF,\ AEO,\ OEH.                            \tag{17}
\]
The first six are positive hull triangles. The last five have exactly
the displayed signs by word 10 and (8). Thus they are actual doubled
areas at least \(2A_0\) in the competitive case.

Theorem 1 of SHARP_CD_MOVING.md applies to (15)--(17). It forces
\(t'=r'=0\), hence \(e_x=g_y=1\), and identifies the entire
configuration as the sharp extremizer. This proves both the upper
bound and the equality statement of Theorem 1. \(\square\)

## Verification

Run

    python docs/proof/nine/check_six_boundary_opposite_cap.py

The exact verifier reconstructs the fifteen-word cover, all 29 common
factors, all 85 quadratic costs, and each branch's additional factor.
It checks every positive integer weight and index, expands all sixteen
cubic expressions with exact fractions, and verifies every bound in
(13). It also checks all eleven signs in (17). The geometric support
and containment arguments, and the sharp equality analysis, are supplied
in the manuscript and its cited theorems.
