# Completion of the N side-cap plus opposite-cap occupancy

Use the N anchors
\[
A=(0,a),\ H=(0,h),\ B=(b,0),\ C=(c,0),\ D=(1,d),\ F=(f,1),
\]
\[
0<a<h<1,\quad0<b<c<1,\qquad a\le d\le h,\quad b\le f\le c.
\tag{1}
\]
Suppose two of the remaining points occupy different exterior caps:
\[
X=(x,y)\in CD(1,0),\qquad Y=(z,w)\in DF(1,1),
\tag{2}
\]
while the last point \(Q=(r,t)\) is inside the anchor hexagon
\(ABCDFH\). The square corners in (2) are virtual. Actual-edge
collinearities have minimum area zero, and square-side positions of
X or Y are allowed.

**Theorem 1.** Every configuration in (1)--(2) has minimum ordinary
triangle area at most
\[
A_0=\frac{9\sqrt{65}-55}{320}.
\]
Equality forces \(x=w=1\) and the known eight-boundary extremizer,
up to square symmetry and relabeling. Transposition proves the same
statement for one point in the left exterior side cap and one in the
opposite cap.

This closes **both N6-04-L0 and N6-04-L1**, including all line signs
and all coordinate ranges in those parent rows. The lower-point row
has the stronger strict bound in
[SIX_BOUNDARY_SIDE_TOP_LOWER.md](SIX_BOUNDARY_SIDE_TOP_LOWER.md).
It therefore remains to prove the theorem with \(Q\in HCDF\).

The upper-point proof has 79 necessary radial words. Seventy-seven
are excluded by 78 fixed rational cubic inequalities. Nine additional
inequalities establish the hypotheses of complete sharp theorems in
the two remaining words. The 87 upper certificates have 18,308 positive
terms, supplied in
[six_boundary_side_top_upper_certificates.json](six_boundary_side_top_upper_certificates.json).
Their exact verifier is
[check_six_boundary_side_top_completion.py](check_six_boundary_side_top_completion.py).

## 1. Common geometry and the complete upper-word cover

Assume the original minimum area is at least \(A_0\), and set
\(s_-=7/64<2A_0\). Sections 1 and 2 of
[SIX_BOUNDARY_SIDE_TOP_LOWER.md](SIX_BOUNDARY_SIDE_TOP_LOWER.md)
establish all the following facts without using its lower-point
assumption, except for its explicitly separate stronger lower budget:

* The full hull is the strictly convex octagon
  \((A,B,C,X,D,Y,F,H)\), with Q as its sole interior point.
* All 27 affine factors printed in its equation (17) are nonnegative,
  with \(s=s_-\).
* The lower anchor product satisfies \(hc\ge4s_-\).
* The actual triangles ABH and BCX have doubled area below
  \(3s_-\), and hence neither contains Q.

The coordinate bounds for Q use only its position in the anchor
hexagon; they are valid above HC as well as below it. No order
between f and d is imposed.

Write the hull as \((V_0,\ldots,V_7)\) in the order above.
For Q let \(q=(q_0,\ldots,q_7)\) satisfy
\[
[V_iV_{i+j}Q]>0\iff j\le q_i,\qquad1\le q_i\le6,
\tag{3}
\]
with cyclic hull indices. Convexity and chord reversal give
\[
(j\le q_i)\iff(8-j>q_{i+j}),\qquad1\le j\le7.
\tag{4}
\]
The actual CD, DF, and HC side tests, together with the two empty
triangles just proved, require
\[
2\le q_1\le5,\qquad q_2,q_4\ge2,\qquad q_7\ge3.
\tag{5}
\]
There are exactly **79** integer words satisfying (3)--(5). This is
a necessary finite cover; realizability of each individual word is
not assumed. The coefficient file and exact verifier enumerate this
same cover directly from (3)--(5), without using coordinate samples.

For a hull triangle Q lies inside precisely when all three cyclic
edge signs from (3) are positive. Its doubled area is then at least
three times the actual doubled-area threshold. Every increasing hull
triple is positively oriented; the other 28 triangle signs are
determined by (3). Thus each word fixes all 84 required signs and
all strengthened containment costs.

## 2. Exact certificate definitions and coverage

Use the same 27 affine factors \(l_i\) as equation (17) of the
lower-point note, always with \(s_-=7/64\). All certificates use
one of the following actual doubled-area thresholds:
\[
s_- =\frac7{64},\qquad s_1=\frac8{73},\qquad
s_2=\frac{79}{720}.
\tag{6}
\]
Every one is strictly below \(2A_0\). An exact rational check is
\((55+160s_i)^2<81\cdot65\); both sides before squaring are
positive.

For the threshold \(\sigma\) specified by a record, list the 84
increasing actual triples lexicographically. Subtract \(\sigma\)
from each word-signed positive determinant, or \(3\sigma\)
when the hull triangle contains Q. Append the three costs
\[
hc-4s_-,\qquad3s_--[ABH],\qquad3s_--[BCX].
\tag{7}
\]
These 87 quadratic costs are nonnegative in every upper cell.
In particular the empty-ear upper bounds in (7) retain their original
threshold \(s_-\), even when \(\sigma>s_-\).

Each record is a positive integer-weighted sum, divided by 4096, of
one, two, or three affine factors, one quadratic cost, or a quadratic
cost times one affine factor. Its exact polynomial P is nonnegative.
The elementary cube bound
\[
P=\sum_\alpha p_\alpha\zeta^\alpha
\quad\Longrightarrow\quad
P\le p_0+\sum_{\alpha\ne0}\max(p_\alpha,0)
\tag{8}
\]
applies because all twelve coordinates
\(\zeta=(a,h,b,c,d,f,x,y,z,w,r,t)\) lie in \([0,1]\).
For every record this exact bound is at most \(-3/4\).
The greatest is
\[
-\frac{353712019499}{360072609792}<-\frac34.
\tag{9}
\]

Only the following words need more than a single whole-word record:

| Word | Complete treatment |
|---|---|
| \(q_B=(4,3,3,2,3,4,5,4)\) | Two height obstructions, then the B/D moving theorem |
| \(q_D=(3,2,3,4,5,4,4,3)\) | Seven coordinate obstructions, then the D/F moving theorem |
| \(q_R=(4,4,4,4,3,3,3,3)\) | Two exhaustive branches, \(y\ge a\) and \(y\le a\) |

The other 76 words each have one whole-word contradiction. Of those,
73 use \(s_-\), the words
\((3,4,4,4,4,3,3,3)\) and \((4,4,3,3,3,3,4,4)\)
use \(s_1\), and \((5,4,4,3,3,2,3,4)\) uses \(s_2\).

For \(q_R\), append \(y-a\) in branch `side_above` and
\(a-y\) in branch `side_below`. Both records use \(s_1\).
Every real pair a,y belongs to at least one of these two closed
branches, including equality. Therefore the entire word is excluded.
The sharp-word factors and coordinate maps are given next.

## 3. The B/D word

For \(q_B\), append \(z-x\) in branch `left` and
\(h-w\) in branch `low`. The two records, at threshold \(s_-\),
exclude these nonnegative-factor regions. Every surviving competitive
configuration in this word therefore satisfies
\[
x>z,\qquad w>h.
\tag{10}
\]

Rotate coordinates by \((u,v)\mapsto(v,1-u)\), and assign the
sharp-chamber labels
\[
(A',B',C',D',E',F',G',H',O')=(C,X,D,Y,F,H,A,B,Q).
\tag{11}
\]
The transformed coordinates are
\[
\begin{array}{lll}
A'=(0,1-c),&B'=(y,1-x),&C'=(d,0),\\
D'=(w,1-z),&E'=(1,1-f),&F'=(h,1),\\
G'=(a,1),&H'=(0,1-b),&O'=(t,1-r).
\end{array}
\tag{12}
\]
They have all strict side orders required by
[SHARP_BD_MOVING.md](SHARP_BD_MOVING.md). In particular
\(0<y<d<1\), \(0<1-z<1-f<1\), and \(0<a<h<1\).
The strict inequality \(z<1\) follows from \(z<x\le1\).
The inward displacements satisfy
\[
t'=1-x<1-z=d',\qquad r'=1-w<1-h=1-f'.
\tag{13}
\]
These are precisely that theorem's two displacement hypotheses.

In order, its eleven positive oriented area expressions correspond to
the following original triples:
\[
CXB,\ CXD,\ CAB,\ YFH,\ ABH,\ AFH,
\ CYQ,\ YBQ,\ XQF,\ ADQ,\ QDH.
\tag{14}
\]
All signs in (14) follow from \(q_B\) and the positive hull
orientation. The rotation preserves doubled areas. The B/D theorem
therefore gives the sharp bound and forces both displacements to
vanish at equality, so \(x=w=1\), with its stated extremizer.

## 4. The D/F word

For \(q_D\), the following seven obstruction factors are appended
one at a time as factor 27. Each is used only on its indicated
nonnegative region:

| Branch | Additional factor | Threshold |
|---|---|---|
| `left` | \(z-x\) | \(s_1\) |
| `low` | \(h-w\) | \(s_-\) |
| `df_Llo` | \(11/20-(h-a)\) | \(s_1\) |
| `df_Lhi` | \((h-a)-2/3\) | \(s_1\) |
| `df_Mlo` | \(11/20-(z-f)\) | \(s_1\) |
| `df_g` | \(f-1/4\) | \(s_1\) |
| `df_c` | \(2/3-c\) | \(s_1\) |

Their contradictions give the stronger strict inequalities
\[
x>z,\quad w>h,\quad
\frac{11}{20}<h-a<\frac23,\quad
z-f>\frac{11}{20},\quad f<\frac14,\quad c>\frac23.
\tag{15}
\]

No coordinate transformation is needed for this word. Use the labels
\[
(A',B',C',D',E',F',G',H',O')=(A,B,C,X,D,Y,F,H,Q).
\tag{16}
\]
Then the moving contacts are
\(D'=(x,y)=(1-\rho,y)\), with \(\rho=1-x\), and
\(F'=(z,w)\). The hypotheses of
[SHARP_DF_MOVING.md](SHARP_DF_MOVING.md) are exactly (15):
\(\rho<1-z\), \(w>h\), the bounds on the left gap
\(h-a\) and top gap \(z-f\), \(g'=f<1/4\), and
\(c'=c>2/3\). Its strict contact orders follow from (1)--(2)
and \(z<x\le1\).

Its eleven positive oriented area expressions correspond, in order, to
\[
ABH,\ ABC,\ AFH,\ XDY,\ FHY,\ FDY,
\ AXQ,\ XHQ,\ BQD,\ FCQ,\ QCY.
\tag{17}
\]
Their signs follow directly from \(q_D\). Thus the complete D/F
theorem applies. It gives the sharp bound and forces \(\rho=0\),
\(w=1\), and the known extremizer at equality.

## 5. Assembly and verification

The 79 upper words are exhausted by the 76 whole-word exclusions,
the two exhaustive branches for \(q_R\), and the two sharp
theorems just applied. The 18 lower words are independently excluded
by [SIX_BOUNDARY_SIDE_TOP_LOWER.md](SIX_BOUNDARY_SIDE_TOP_LOWER.md).
No actual point can lie on HC under a positive minimum-area hypothesis.
These two placements therefore exhaust every anchor-interior Q in
(1)--(2), proving Theorem 1 and its equality classification.

The exact verifier checks the complete 79-word list, all 87 records,
every allowed rational threshold, every positive term and its cube
upper bound, both exhaustive signs for \(q_R\), and all eleven
oriented signs in each sharp coordinate map. The two moving-contact
theorems supply their own algebraic identities and sign proofs.
No optimizer output or finite sample is a premise of this assembly.
