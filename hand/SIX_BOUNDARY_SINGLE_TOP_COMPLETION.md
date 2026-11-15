# Completion of the N single opposite-cap occupancy

Write \([UVW]=\det(V-U,W-U)\) for signed doubled area. Use the N
anchors
\[
A=(0,a),\quad H=(0,h),\quad B=(b,0),\quad C=(c,0),
\quad D=(1,d),\quad F=(f,1),
\tag{1}
\]
\[
0<a<h<1,\qquad0<b<c<1,\qquad a\le d\le h,
\qquad b\le f\le c.
\tag{2}
\]
Suppose the three remaining actual points are
\[
X=(x,y)\in\operatorname{conv}\{D,F,(1,1)\},\qquad
P=(p_x,p_y),\ Q=(q_x,q_y)\in\operatorname{int}(ABCDFH).
\tag{3}
\]
The corner \((1,1)\) in (3) is virtual. Square-side positions of X
are allowed. If an actual triple is collinear, its zero area already
proves the bound below.

**Theorem 1.** Every configuration in (1)--(3) has minimum ordinary
triangle area strictly below
\[
\boxed{\frac{79}{1440}<A_0=\frac{9\sqrt{65}-55}{320}.}
\tag{4}
\]
This closes **both N6-03-L0 and N6-03-L1**, throughout their continuous
coordinate ranges and for every line-sign choice. In particular this
occupancy has no equality case for the unrestricted sharp bound.

The proof uses 542 fixed rational cubic certificates with 86,610 positive
terms. Their exact checker is
[check_six_boundary_single_top_completion.py](check_six_boundary_single_top_completion.py),
their polynomial definitions are in
[single_top_polynomials.py](single_top_polynomials.py), and their coefficients
are in
[six_boundary_single_top_completion_certificates.json](six_boundary_single_top_completion_certificates.json).
These three files form the complete certificate package for this note;
the earlier single-top checkpoint is not a premise.

## 1. Geometry and rational bounds

Suppose, for a contradiction, that every unsigned doubled actual triangle
area is at least
\[
T=\frac{79}{720},\qquad s=\frac7{64}<T,
\qquad \rho=\frac{13}{16}.
\tag{5}
\]
The final comparison in (4) is exact: \(55+160T=653/9>0\), and
\(81\cdot65-(653/9)^2=56/81>0\).

Transposition of the square and the relabeling
\((A,H,B,C,D,F)\mapsto(B,C,A,H,F,D)\) preserve (1)--(3).
They exchange d and f, so assume
\[
f\le d.
\tag{6}
\]
This normalization makes no additional choice concerning the locations
of P and Q; the lower-word cover below includes every placement in HABC
for this choice of (6). Because X lies strictly beyond the actual segment DF, the
full hull is the strictly convex heptagon
\[
(V_0,\ldots,V_6)=(A,B,C,D,X,F,H).
\tag{7}
\]
Its two nonvertices are P and Q.

### Bounds valid in both rows

Set \(L=h-a\) and \(M=c-b\). The actual triangles ABC and ABH give
\[
aM\ge s,\qquad bL\ge s.
\tag{8}
\]
Consequently
\[
h\ge\frac{s}{M}+\frac{s}{b}
       =\frac{sc}{b(c-b)},\qquad
hc\ge\frac{sc^2}{b(c-b)}\ge4s.
\tag{9}
\]
As h and c are at most one, the first inequality implies
\((b-s)c\ge b^2\), whence \(b(1-b)\ge s\).
The roots of \(z(1-z)=7/64\) are \(1/8,7/8\); thus
\(b\ge1/8\). Transposing the argument gives \(a\ge1/8\).
It follows that
\[
h,c\ge4s,\quad L,M\ge s,\quad L,M\le7/8.
\tag{10}
\]
The ear determinants satisfy
\[
[CDF]=1-c+d(c-f)\le1-f,\qquad
[DFH]=1-h+f(h-d)\le1-d,
\tag{11}
\]
so \(d,f\le1-s\).

For the opposite-cap point, the two identities
\[
\begin{aligned}
[DXF]&=(1-d)(x-f)-(1-f)(1-y),\\
     &=(1-f)(y-d)-(1-d)(1-x)
\end{aligned}
\tag{12}
\]
give \(x-f,y-d\ge s\). Since \(d,f\ge1/8\), they in fact give
\[
x-f\ge1/8,\qquad y-d\ge1/8.
\tag{13}
\]

Let \(R=(r_x,r_y)\) be either P or Q. The actual bases AH and BC give
\(Lr_x,Mr_y\ge s\), hence
\[
r_x,r_y\ge s,\qquad r_x,r_y\ge1/8.
\tag{14}
\]
For their upper bounds use the exact identities
\[
\begin{aligned}
(1-f)[CDR]+(1-c)[DFR]&=[CDF](1-r_x),\\
(1-d)[FHR]+(1-h)[DFR]&=[DFH](1-r_y).
\end{aligned}
\tag{15}
\]
All three determinants on the left are positive and at least s, because
R is inside the anchor hexagon. In the first identity,
\((1-f)+(1-c)\ge[CDF]>0\), by (11); the second uses
\((1-d)+(1-h)\ge[DFH]>0\). Thus
\[
r_x,r_y\le1-s.
\tag{16}
\]

The six anchor ears
\[
ABH,\quad ABC,\quad BCD,\quad CDF,\quad DFH,\quad AFH
\tag{17}
\]
all have doubled area strictly below \(\rho\), by
[SIX_BOUNDARY_HULL.md](SIX_BOUNDARY_HULL.md), Theorem 1, which explicitly
does not require an exact six-anchor hull. No ear can contain both P and
Q: the two-interior-point triangle theorem in
[CORNER_FAMILIES.md](CORNER_FAMILIES.md), Section 7, would give doubled
area at least \((4+2\sqrt3)s>\rho\). The rational comparison is
\((12/7)^2<3\).

### The two possible lower-versus-upper rows

The segment HC divides the anchor hexagon into HABC and HCDF.
At most one of P,Q is below HC. Indeed, Theorem 4 of
[QUADRILATERAL_HULL.md](QUADRILATERAL_HULL.md) would otherwise give
minimum ordinary area at most \(7hc/128<7/128<T/2\).
No actual point lies on HC under (5). There are therefore just two rows:

* **Mixed row:** P is below HC and Q is above HC, after interchanging
  their names if necessary. This is N6-03-L1.
* **Upper row:** both P and Q are above HC. This is N6-03-L0.

Write
\[
W=[HCDF]=1-(h-d)(c-f)\le1.
\tag{18}
\]
For any doubled-area threshold \(\sigma\le T\), subdivision at Q
gives \(W\ge4\sigma\) in the mixed row. In the upper row, Theorem 1
of [QUADRILATERAL_HULL.md](QUADRILATERAL_HULL.md) gives
\(W\ge8\sigma\). The proof of (9), with s replaced by \(\sigma\),
also gives \(hc\ge4\sigma\) in both rows.

In the mixed row the five actual points H,C,A,B,P lie in the virtual
triangle \((0,0)HC\), and H,C are two of its vertices. The
endpoint-triangle theorem in [TYPE_II.md](TYPE_II.md), Section 1, gives
\[
hc\ge(3+2\sqrt2)s>\frac7{11},\qquad h,c\ge\frac7{11}.
\tag{19}
\]
The strict comparison follows from \(8>(31/11)^2\).
Also
\[
[CHP]=hc-hp_x-cp_y\ge s,\qquad hp_x,cp_y\ge s.
\tag{20}
\]
Combining these inequalities and using \(h,c\le1\) yields
\[
c-p_x\ge2s,\qquad h-p_y\ge2s,
\qquad p_x+p_y\le1-s.
\tag{21}
\]
For the last inequality divide the first expression in (20) by hc:
\(p_x/c+p_y/h\le1-s/(hc)\le1-s\).

## 2. Complete radial words and upper-pair signs

For an interior point R define its radial word
\(w=(w_0,\ldots,w_6)\) by
\[
[V_iV_{i+j}R]>0\quad\Longleftrightarrow\quad j\le w_i,
\qquad1\le j\le6,\quad1\le w_i\le5,
\tag{22}
\]
where hull indices are cyclic modulo seven. Convexity makes the positive
chords consecutive. Reversing a chord gives the necessary consistency
conditions
\[
(j\le w_i)\quad\Longleftrightarrow\quad(7-j>w_{i+j}).
\tag{23}
\]
There are 57 integer words satisfying (22)--(23). The actual edge DF of
the anchor hexagon has the two-step index pair (3,5), so an anchor-interior
point also requires \(w_3\ge2\). This leaves 52 words.
Among them 19 have \(w_6<3\), putting R below HC, and 33 have
\(w_6\ge3\), putting R above HC. These lists are necessary covers;
individual realizability is not assumed.

Let u and v be the words of P and Q. When \(u_i\ne v_i\), their
rays from \(V_i\) occupy different chord sectors, hence
\[
\operatorname{sgn}[V_iPQ]=\operatorname{sgn}(v_i-u_i).
\tag{24}
\]
All rays into a convex polygon from one of its vertices lie in an angle
strictly below \(\pi\), which fixes the orientation in (24).

In the upper row, use the two actual diagonals HD and CF of HCDF and put
\[
\alpha_R=\operatorname{sgn}[HDR],\qquad
\beta_R=\operatorname{sgn}[CFR].
\tag{25}
\]
The two pairs \((\alpha_P,\beta_P)\) and
\((\alpha_Q,\beta_Q)\) must differ. Otherwise both interior points
occupy one diagonal sector, excluded by Theorem 2 of
[ONE_CORNER_COMPLETION.md](ONE_CORNER_COMPLETION.md). That theorem's
threshold is satisfied because the ordinary area of HCDF is at most
one half and the six selected points have minimum area at least T/2.

If both signs in (25) differ between P and Q, their segment crosses both
diagonals. Orientations at the four endpoints are therefore
\[
([HPQ],[CPQ],[DPQ],[FPQ])\text{ have signs }
(-\alpha_P,-\beta_P,\alpha_P,\beta_P).
\tag{26}
\]
If just one sign differs, the two points share one of the four diagonal
triangles. Theorem 3 of the same note forces its vertex opposite the
common diagonal to be isolated by the line PQ. Explicitly:

| Common diagonal triangle | Isolated vertex | Sign at that vertex |
|---|---|---|
| HDF, when \(\alpha_P=\alpha_Q=+1\) | F | \(\beta_P\) |
| HCD, when \(\alpha_P=\alpha_Q=-1\) | C | \(-\beta_P\) |
| HCF, when \(\beta_P=\beta_Q=+1\) | H | \(-\alpha_P\) |
| CDF, when \(\beta_P=\beta_Q=-1\) | D | \(\alpha_P\) |

The other three signs are opposite to the isolated sign. Its orientation
follows from the endpoint test on the diagonal that separates P,Q.
The hypotheses of the cited mixed-pair theorem hold because the points
lie on opposite sides of the other diagonal, as well as in the listed
common triangle.

Generate all ordered lower/upper word pairs for the mixed row. For the
upper row generate all unordered pairs of upper words, with repetitions,
using the interchangeable names P,Q to take \(u\le v\) lexicographically.
Discard a pair only when both points occupy the same ear in (17), when
an upper pair shares a diagonal sector, or when its forced signs
(26) or the table conflict with (24). This gives the following complete
enumeration.

| Row | Initial pairs | After ear test | After sector test | After sign test |
|---|---:|---:|---:|---:|
| Mixed | \(19\cdot33=627\) | 615 | 615 | 615 |
| Upper | \(33\cdot34/2=561\) | 360 | 307 | 269 |
| Total | 1,188 | 975 | 922 | **884** |

All steps are enumerated directly by the exact kernel. Every increasing
hull triple is positive. A triangle with two hull vertices and P or Q
has the sign in its word. A triangle \(V_iPQ\) has a known sign only
when (24), (26), the table, or an explicit split supplies it. An unknown
sign supplies no constraint or containment claim.

## 3. The finitely specified sign and coordinate subdivisions

Four of the 615 mixed word pairs require extra actual-line signs. In
the following table, each listed determinant is split into both strict
signs independently. A zero sign is excluded by (5).

| Base case index | Word of P | Word of Q | Additional signs |
|---:|---|---|---|
| 171 | (2,1,4,5,4,3,2) | (3,2,2,3,4,4,3) | XPQ |
| 173 | (2,1,4,5,4,3,2) | (3,2,3,3,4,3,3) | XPQ and FPQ |
| 185 | (2,1,4,5,4,3,2) | (4,3,3,3,2,3,3) | FPQ |
| 226 | (2,3,4,4,3,3,2) | (2,1,2,5,4,4,3) | APQ |

The indices start at zero in the exact enumeration. These subdivisions
replace four base cases by ten, yielding **890 signed cells**: 621 mixed
and 269 upper.

Two signed cells use the following fixed rational coordinate divisions.
Every comparison is closed on both sides, so equality lies in both
children and cannot be omitted.

* Case 182, whose words are
  \((2,1,4,5,4,3,2)\) and \((4,3,2,3,2,4,3)\), divides at
  \(q_x=1/2\). Both children have certificates.
* Case 185 with \([FPQ]<0\) first divides at \(q_x=13/32\).
  On the \(q_x\ge13/32\) side, divide at \(x=1/2\); both
  children close. On the \(q_x\le13/32\) side, divide at \(x=1/2\).
  The \(x\le1/2\) child closes. The other child divides at \(y=1/2\),
  its upper child at \(d=57/128\), and that upper child at
  \(f=57/128\). Each lower child and both final children close.
  This is seven leaves in total.

The remaining signed cells need no coordinate subdivisions. Thus the
complete cover has **897 final cells**: 628 mixed and 269 upper.
For data organization, the coefficient file stores case 457 as a third
tree record with a single leaf and no division; this does not add a
geometric split. Its words are \((4,3,4,3,2,3,2)\) and
\((2,1,2,5,4,4,3)\).

## 4. Nonnegative factors and quadratic costs

Use the twelve coordinates in the fixed order
\[
\zeta=(a,h,b,c,d,f,x,y,p_x,p_y,q_x,q_y)\in[0,1]^{12}.
\tag{27}
\]
All certificates use the following 27 affine factors, in this order,
with indices starting at zero:
\[
\begin{aligned}
(&a-1/8,\ b-1/8,\ h-4s,\ c-4s,\ 1-h,\ 1-c,\\
 &d-a,\ h-d,\ f-b,\ c-f,\ d-f,\\
 &h-a-s,\ c-b-s,\ 1-s-d,\ 1-s-f,\ 1-x,\ 1-y,\\
 &x-f-s,\ y-d-s,\\
 &p_x-s,\ 1-s-p_x,\ p_y-s,\ 1-s-p_y,\\
 &q_x-s,\ 1-s-q_x,\ q_y-s,\ 1-s-q_y).
\end{aligned}
\tag{28}
\]
Their nonnegativity was proved in Section 1. The `lower` layout, used
only in the mixed row, appends
\[
(c-p_x-2s,\ h-p_y-2s,\ 1-p_x-p_y-s).
\tag{29}
\]
The `strong` layout appends (29), followed by
\[
(p_x-1/8,\ p_y-1/8,\ q_x-1/8,\ q_y-1/8,\
 x-f-1/8,\ y-d-1/8,\ h-7/11,\ c-7/11).
\tag{30}
\]
It too is used only in the mixed row. These layouts have 27, 30, and 38
factors respectively. At a coordinate-tree leaf append each inequality
on the path: a lower child contributes \(r-\zeta_i\), and an upper
child contributes \(\zeta_i-r\), for its fixed rational cut r.

Each certificate specifies a doubled-area threshold
\[
\sigma\in\left\{\frac7{64},\frac8{73},\frac{79}{720}\right\},
\qquad s\le\sigma\le T.
\tag{31}
\]
Generate its quadratic costs as follows. Enumerate the actual vertex
indices in the order
\((A,B,C,D,X,F,H,P,Q)\), and list all increasing triples
lexicographically. For every triple with a known sign \(\epsilon\),
include
\[
\epsilon[UVW]-b.
\tag{32}
\]
Here \(b=\sigma\) normally; use \(b=3\sigma\) if one additional
actual point is proved to be inside the triangle by all three known
oriented edge tests, and \(b=\rho\) if both are proved inside.
The subdivision argument and the two-interior-point triangle theorem
justify these strengthened bounds. Unknown edge signs never establish
containment.

Append, in order,
\[
\begin{cases}
W-4\sigma,\quad hc-7/11,&\text{mixed row},\\
W-8\sigma,\quad hc-4\sigma,&\text{upper row},
\end{cases}
\tag{33}
\]
then the six costs \(\rho-[UVW]\) for the ears in the order (17).
Every cost is nonnegative throughout its cell by Section 1.

## 5. Exact algebraic contradiction and full coverage

Let \(l_i\) denote a record's affine factors and \(q_j\) its costs.
Each stored term is one of
\[
\frac n{4096}l_i,\quad
\frac n{4096}l_i l_j,\quad
\frac n{4096}l_i l_j l_k,\quad
\frac n{4096}q_j,\quad
\frac n{4096}q_j l_i,
\qquad n\in\mathbb Z_{>0}.
\tag{34}
\]
Thus its sum \(R(\zeta)\) is nonnegative at every point of the record's
cell. In the data, `['f', indices, n]` means a product of one to three
listed affine factors, and `['q', j, i, n]` means a quadratic cost times
factor i, with i equal to -1 for the cost alone. Each full polynomial
has degree at most three.

Expand it exactly as \(R=\sum_\alpha r_\alpha\zeta^\alpha\).
On the unit cube the elementary upper bound is
\[
R(\zeta)\le r_0+
\sum_{\alpha\ne0}\max(r_\alpha,0).
\tag{35}
\]
The exact checker reconstructs every polynomial with Python's rational
`Fraction` arithmetic and verifies that the bound in (35) equals the
stored rational value and is at most \(-3/4\). This contradicts its
nonnegativity. The largest of the 542 bounds is
\[
-\frac{53009858789}{53888417792}<-\frac34.
\tag{36}
\]
There are 519 `base`, ten `lower`, and thirteen `strong` records.
Of them, 529 use threshold \(7/64\), three use \(8/73\), and the
ten coordinate-tree leaves, including the unsplit case-457 leaf,
use \(79/720\). All coefficients are fixed positive integers divided
by 4096; there is no rounded inequality in the verification.

One certificate may exclude more than one signed cell. The exact reuse
rule compares only the costs actually used in its sum. Each used cost
must have the same determinant and sign in the target cell, with the
target lower bound at threshold T at least as strong as the source
lower bound. Its affine layout must also be valid in the target row.
Consequently every source factor and cost remains nonnegative in the
target cell. No unrecorded sign is inferred in this comparison.

The file's `cover` list assigns certificates to 887 signed cells by this
rule. Its three tree records cover the remaining three signed cells
with respectively two, seven, and one leaves. The verifier checks every
assignment, every leaf's full path of rational inequalities, that each
tree contains both closed children, and that the union is exactly the
890-cell enumeration from Sections 2--3. It also checks that every
certificate is used. This proves all 897 final cells impossible.

To reproduce the exact calculation from the repository root, run
```sh
python hand/check_six_boundary_single_top_completion.py
```
It imports no numerical optimization library. Optimization was used
only to discover the fixed coefficients; the proof is the necessary
geometric cover, nonnegative expressions (34), and rational upper bounds
(35). All actual-line equalities were excluded by positive triangle
area, and every coordinate-cut equality is covered by both adjacent
branches. The contradiction to (5) proves Theorem 1. \(\square\)
