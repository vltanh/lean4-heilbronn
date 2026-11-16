# Completion of the one-lower C1 cases with two or three top-cap points

Use the C1 anchors

\[
O=(0,0),\quad C=(c,0),\quad D=(1,d),\quad
F=(f,1),\quad H=(0,h),
\qquad 0<d\le h<1,\quad 0<f\le c<1.
\]

A competitive configuration has minimum ordinary triangle area at least
\(A_0=(9\sqrt{65}-55)/320\). Throughout this note brackets are signed
doubled areas and

\[
s=\frac8{73}<2A_0,\qquad \rho=\frac{49}{60}<(4+2\sqrt3)s.
\]

Exactly one free point, denoted \(L=(\ell_x,\ell_y)\), is in \(OHC\).
The other three are above \(HC\). The top cap is the part of the
virtual triangle \(DF(1,1)\) strictly beyond \(DF\).

**Theorem.** A competitive C1 configuration with exactly one lower point
cannot have two or three free points in the top cap. This closes the
complete parent rows **C1-1-10, C1-1-11, C1-1-12**, including both possible
hulls of two top-cap points and every remaining point placement in those
rows. Square-side contacts are allowed.

The proof combines the already completed triangular and eight-vertex
alternatives with three fixed finite families of rational cubic inequalities.
The new coefficient lists are in
[c1_one_lower_top_multiplicity_certificates.json](c1_one_lower_top_multiplicity_certificates.json);
[check_c1_one_lower_top_multiplicity.py](check_c1_one_lower_top_multiplicity.py)
reconstructs the complete sign covers and verifies every coefficient by
exact fraction arithmetic.

## 1. Three heptagonal hulls are sufficient

Transpose the square if necessary so that \(f\le d\). This preserves
the lower triangle and the top cap. The general cap lemmas in Sections
1--2 of [C1_ZERO_LOWER.md](C1_ZERO_LOWER.md) apply whether or not the lower
triangle is empty. In particular an occupied left cap permits at most one
top-cap point. Thus, with two top-cap points and a side-cap point, the
side point must be in the right cap beyond \(CD\).

If the other upper point is in \(HCDF\), the triangular top-hull
alternative is completely excluded by
[C1_ONE_LOWER_TOP_TRIANGLE.md](C1_ONE_LOWER_TOP_TRIANGLE.md).
The remaining top hull is a convex quadrilateral. If instead the other
upper point is in the right cap, a convex top hull gives an eight-vertex
hull, excluded by
[C1_ONE_LOWER_EIGHT_HULL.md](C1_ONE_LOWER_EIGHT_HULL.md).
Its remaining top hull is triangular. Finally, three top-cap points have
the precise hull and common-triangle containment in Lemma 3 of
`C1_ZERO_LOWER.md`.

These facts leave exactly the following patterns. In all three modes set
\(X=(x_x,x_y)\), \(Y=(y_x,y_y)\), \(P=(p_x,p_y)\).
The cyclic hull order is the displayed list \(V_0,\ldots,V_6\), followed
by the two interior points \(V_7=L,V_8=P\).

| Mode | Cyclic convex hull | Placement of \(P\) | Parent row |
|---|---|---|---|
| `convex_two` | \(O,C,D,X,Y,F,H\) | \(P\in HCDF\); \(X,Y\) in the top cap | C1-1-10 |
| `side_triangle` | \(O,C,X,D,Y,F,H\) | \(P\in DYF\); \(X\) in the right cap, \(Y,P\) in the top cap | C1-1-11 |
| `three_top` | \(O,C,D,X,Y,F,H\) | \(P\in DXF\cap DYF\); \(X,Y,P\) in the top cap | C1-1-12 |

All listed actual containments are strict: equality on an actual edge
would give an actual collinear triple. The five anchor points are extreme
because they lie on the square sides, and the cap-hull reduction supplies
the other two extreme points. Their cyclic order is therefore fixed.
No additional assumption on a free-point line sign is made.

## 2. Common inequalities

Subdivision of \(OHC\) at \(L\), and the anchor areas \(OHF,OCD\),
give

\[
hc\ge3s,\qquad hf,cd\ge s.
\]

Consequently \(h,c\ge3s\), \(d,f\ge s\), and

\[
\ell_x,\ell_y\ge s,\qquad
c-\ell_x,h-\ell_y\ge2s,\qquad
\ell_x+\ell_y\le1-s.                                    \tag{1}
\]

For example \(h(c-\ell_x)=[CHL]+c\ell_y\ge2s\).
The last inequality follows by dividing \([CHL]\ge s\) by \(hc\),
and using \(h,c\le1\).

Write \(\delta=(1-d)(1-f)\) for the doubled virtual top-cap area.
Every top-cap point \(Z=(z_x,z_y)\) has the positive cost

\[
\begin{aligned}
r_Z=[DZF]
&=(1-d)(z_x-f)-(1-f)(1-z_y)\\
&=(1-f)(z_y-d)-(1-d)(1-z_x)\ge s.                       \tag{2}
\end{aligned}
\]

If the actual triangle \(DZF\) contains another point, subdivision
strengthens its right side to \(3s\). All products subtracted in
(2) are nonnegative. Since \(d,f\ge s\), a cost of \(s\) implies

\[
z_x-f,z_y-d\ge\frac{s}{1-s}=\frac8{65};               \tag{3}
\]

a cost of \(3s\) gives the corresponding differences at least
\(24/65\).

A triangle containing both interior points has doubled area at least
\((4+2\sqrt3)s>\rho\), by the two-interior-point triangle theorem in
[CORNER_FAMILIES.md](CORNER_FAMILIES.md). This will be used only for
containments determined by the finite signs below.

## 3. Mode-specific inequalities

### Convex top hull

For `convex_two`, the four-point endpoint-triangle theorem in Section 1
of [TYPE_II.md](TYPE_II.md), in its convex-hull alternative, gives
\(\delta\ge4s\). Hence

\[
d\le1-\frac{4s}{1-s}=\frac{33}{65},\qquad
f<\frac{17}{50}.                                        \tag{4}
\]

The second inequality uses \(f\le d\), so
\((1-f)^2\ge4s>(33/50)^2\).

For both convex top-hull modes, put \(u=x_x-y_x\),
\(v=y_y-x_y\). Their positive cyclic areas satisfy

\[
\begin{aligned}
[DXY]&=u(x_y-d)-(1-x_x)v,\\
[FXY]&=v(y_x-f)-(1-y_y)u.                                \tag{5}
\end{aligned}
\]

They force \(u,v\) to have the same nonzero sign. If both were
negative, their positivity would give
\((x_y-d)(y_x-f)<(1-x_x)(1-y_y)\), contrary to the product of the
two strict cap tests for \(X,Y\). Thus \(u,v>0\). Equations (5),
with both actual areas at least \(s\), then give

\[
u\ge\frac{s}{1-d}\ge\frac8{65},\qquad
v\ge\frac{s}{1-f}\ge\frac8{65}.                         \tag{6}
\]

For \(P\in HCDF\), the exact projection identities

\[
\begin{aligned}
(1-f)[CDP]+(1-c)[DFP]&=[CDF](1-p_x),\\
(1-d)[FHP]+(1-h)[DFP]&=[DFH](1-p_y)
\end{aligned}
\]

and \([CDF]\le1-f\), \([DFH]\le1-d\) give
\(s\le p_x,p_y\le1-s\), as in Section 2 of
[C1_ONE_LOWER_TOP_CAP.md](C1_ONE_LOWER_TOP_CAP.md).

### Right-side point and triangular top hull

For `side_triangle`, the occupied right cap gives

\[
dc(1-c)\ge s,\qquad d\ge4s,\qquad c<\frac67.           \tag{7}
\]

For the last inequality use the anchor bound \(d\le1-s\), giving
\(c(1-c)\ge s/(1-s)=8/65>6/49\).
The interior top point \(P\) gives \([DYF]\ge3s\), so
\(\delta\ge3s\),

\[
d\le\frac{41}{65},\qquad f<\frac37.                   \tag{8}
\]

The side point \(X\) satisfies

\[
\begin{aligned}
-[CDX]&=d(x_x-c)-(1-c)x_y\\
      &=(1-c)(d-x_y)-d(1-x_x)\ge s,\qquad cx_y\ge s.
\end{aligned}
\]

Equations (7)--(8) and \(c\ge3s\) therefore imply

\[
x_x-c\ge\frac{65s}{41},\qquad
x_y\ge\frac{7s}{6},\qquad d-x_y\ge\frac8{49}.          \tag{9}
\]

Using \(d\ge4s\) in (2) strengthens the top differences to

\[
y_x-f\ge\frac{24}{41},\quad y_y-d\ge\frac{24}{65},
\qquad p_x-f\ge\frac8{41},\quad p_y-d\ge\frac8{65}.     \tag{10}
\]

Finally \([DYP],[YFP]\ge s\) have the forms

\[
\begin{aligned}
[DYP]&=(y_y-d)(1-p_x)-(1-y_x)(p_y-d),\\
[YFP]&=(y_x-f)(1-p_y)-(1-y_y)(p_x-f).
\end{aligned}
\]

The subtracted products are nonnegative and the other coefficients are
at most one. Thus \(p_x,p_y\le1-s\).

### Three top-cap points

The five-point endpoint-triangle theorem gives

\[
\delta\ge\frac{s}{3-2\sqrt2}>\frac7{11}.
\]

Together with \(f\le d\) and \(f\ge s\), this gives

\[
d\le\frac{204}{715},\qquad f<\frac{13}{64}.             \tag{11}
\]

Both \(DXF\) and \(DYF\) contain \(P\), so both their
areas are at least \(3s\). Equations (2)--(3) give

\[
x_x-f,x_y-d,y_x-f,y_y-d\ge\frac{24}{65},
\qquad p_x-f,p_y-d\ge\frac8{65}.                        \tag{12}
\]

Equation (6) still holds. Interiority of \(P\) in \(DXF\)
gives \(p_x,p_y\le1-s\) by the same two subtriangle identities
as above, with \(X\) in place of \(Y\).

## 4. Ordered factors and finite sign covers

Use coordinate order

\[
z=(h,c,d,f,x_x,x_y,y_x,y_y,\ell_x,\ell_y,p_x,p_y)
\in[0,1]^{12}.
\]

The first fourteen nonnegative affine factors, in this exact order,
are common to all modes:

\[
\begin{gathered}
h-3s,\ c-3s,\ 1-h,\ 1-c,\ d-s,\ f-s,\ h-d,\ c-f,\ d-f,\\
\ell_x-s,\ \ell_y-s,\ c-\ell_x-2s,\ h-\ell_y-2s,
\ 1-s-\ell_x-\ell_y.
\end{gathered}                                            \tag{13}
\]

Append the sixteen factors in the appropriate row, in the printed order.
The resulting lists are indexed from zero to 29.

| Mode | Additional factors, in order |
|---|---|
| `convex_two` | \(33/65-d,\ 17/50-f,\ x_x-f-8/65,\ x_y-d-8/65,\ 1-x_x,\ 1-x_y,\ y_x-f-8/65,\ y_y-d-8/65,\ 1-y_x,\ 1-y_y,\ x_x-y_x-8/65,\ y_y-x_y-8/65,\ p_x-s,\ p_y-s,\ 1-s-p_x,\ 1-s-p_y\) |
| `side_triangle` | \(d-4s,\ 41/65-d,\ 3/7-f,\ 6/7-c,\ x_x-c-65s/41,\ x_y-7s/6,\ d-x_y-8/49,\ 1-x_x,\ y_x-f-24/41,\ y_y-d-24/65,\ 1-y_x,\ 1-y_y,\ p_x-f-8/41,\ p_y-d-8/65,\ 1-s-p_x,\ 1-s-p_y\) |
| `three_top` | \(204/715-d,\ 13/64-f,\ x_x-f-24/65,\ x_y-d-24/65,\ 1-x_x,\ 1-x_y,\ y_x-f-24/65,\ y_y-d-24/65,\ 1-y_x,\ 1-y_y,\ x_x-y_x-8/65,\ y_y-x_y-8/65,\ p_x-f-8/65,\ p_y-d-8/65,\ 1-s-p_x,\ 1-s-p_y\) |

For either interior point \(R\), define the radial word
\(r=(r_0,\ldots,r_6)\) by

\[
[V_iV_{i+j}R]>0\iff j\le r_i,\quad
1\le r_i\le5,\quad
(j\le r_i)\iff(7-j>r_{i+j}),                            \tag{14}
\]

with cyclic indices. Convexity makes the positive chord signs an initial
interval; reversing the chord gives the last relation. Exactly 57 integer
words satisfy (14). These necessary words suffice for coverage regardless
of whether every word is geometrically realizable.

Let \(\mathcal L\) be the words whose three edge signs place \(L\)
in \(OCH\). Let \(\mathcal P_m\) be the words whose edge signs
place \(P\) in the triangle, common triangles, or quadrilateral specified
for mode \(m\) in Section 1. Order each list lexicographically.
Their sizes are

| Mode | Lower words | Other interior words | Initial pairs |
|---|---:|---:|---:|
| `convex_two` | 5 | 33 | 165 |
| `side_triangle` | 5 | 5 | 25 |
| `three_top` | 5 | 10 | 50 |

If both interior points lie in \(OFH\), its area would be at least
\(\rho\). But \([OFH]=hf\le f<3/7<\rho\) in all three
modes. Remove those pairs. Exactly four are removed, all in
`convex_two`; hence **161, 25, and 50** pairs remain, respectively.

Every increasing hull triple has positive sign. For a triple containing
one interior point its sign is given by (14). For a triple
\((V_i,L,P)\), differing radial entries determine its sign:

\[
\operatorname{sgn}[V_iLP]
=\operatorname{sgn}(r_i(P)-r_i(L)).                     \tag{15}
\]

This is the order of the two rays in the convex interior angle at \(V_i\).
Unknown signs are omitted unless explicitly split in the finite table
below. All actual triangle signs are nonzero; both branches of every
specified split are included.

The following is the entire additional-sign table; pair indices are
zero-based in the lexicographic word lists. In bit order, a negative sign
is encoded by 0 and a positive sign by 1. Unlisted word pairs use branch
\(-1\), with no additional sign assumption.

| Mode | Word pair | Additional actual areas, in bit order | Branches |
|---|---|---|---:|
| `convex_two` | \((0,20)\) | \([YLP],[FLP]\) | 4 |
| `convex_two` | \((1,19)\) | \([YLP],[FLP]\) | 4 |
| `convex_two` | \((1,27)\) | \([FLP]\) | 2 |
| `convex_two` | \((3,9)\) | \([DLP]\) | 2 |
| `convex_two` | \((3,17)\) | \([DLP],[XLP]\) | 4 |
| `three_top` | \((1,6)\) | \([YLP]\) | 2 |
| `three_top` | \((3,6)\) | \([XLP]\) | 2 |

Every listed area is initially unknown in that cell, and these are all
its initially unknown actual triangles. The final complete cover has
**172, 25, and 52 cells**, respectively, or **249 cells in total**.

## 5. Exact positive sums give strict contradictions

For each cell, list its known increasing actual triples in lexicographic
order. If its sign is \(\epsilon\) and the known signs place exactly
\(n\in\{0,1,2\}\) other interior points inside, assign the nonnegative
quadratic cost

\[
q=\epsilon[V_iV_jV_k]-b_n,
\qquad (b_0,b_1,b_2)=(s,3s,\rho).                       \tag{16}
\]

Containment means that all three consistently oriented edge signs agree
with \(\epsilon\); it is used only when all three signs are known.
Every determined containment is an actual geometric containment. No hull
vertex can be inside such a triangle because it is extreme in the full
configuration. Append one additional cost:

\[
\delta-4s\quad(\texttt{convex_two}),\qquad
\delta-3s\quad(\texttt{side_triangle}),\qquad
\delta-7/11\quad(\texttt{three_top}).                    \tag{17}
\]

Writing \(a_i\) for the thirty factors in Section 4, each fixed
certificate is a positive integer-weighted sum, with its recorded common
denominator, of

\[
a_{i_1}\cdots a_{i_k}\ (1\le k\le3),\qquad q_j,\qquad q_ja_i.
                                                               \tag{18}
\]

A term labelled `f` records its sorted factor indices and positive integer
weight. A term labelled `q` records its cost index, multiplier factor index
(or \(-1\) for no multiplier), and positive integer weight. The mode,
word pair and split branch fix the meaning of every index. Every summand
in (18) is nonnegative throughout the selected cell.

Expand the sum as \(C(z)=c_0+\sum_{\alpha\ne0}c_\alpha z^\alpha\).
Every nonconstant monomial is in \([0,1]\), so the elementary exact bound is

\[
C(z)\le c_0+\sum_{\alpha\ne0}\max(c_\alpha,0).          \tag{19}
\]

The fixed certificate counts are:

| Mode | Cells covered | Certificates | Positive terms |
|---|---:|---:|---:|
| `convex_two` | 172 | 148 | 22,096 |
| `side_triangle` | 25 | 21 | 1,412 |
| `three_top` | 52 | 32 | 4,379 |

There are **201 certificates and 27,887 positive terms**.
Every exact upper bound in (19) is at most \(-3/4\). The largest is

\[
-\frac{862811889733003}{875182437376000}<0.
\]


A certificate may also cover another cell of the same mode: every cost
actually used must have the same sign and an equal or stronger threshold
there. The factor lists and extra cost (17) are common to the mode. The
verifier checks this condition term by term and reconstructs the entire
finite cover independently of the certificate selection.

Thus the sums are nonnegative by (18) and strictly negative by (19).
All three heptagon patterns are excluded. Combining Section 1's already
closed alternatives gives the entire three parent-row exclusions. \(\square\)

## Verification and dependencies

The verifier reconstructs all 57 radial words and all three placement
filters, proves the rational comparisons and determinant identities above,
checks every sign branch, factor index, cost index, integer weight and exact
residual bound, and checks coverage of every surviving cell. Verification
uses only the standard library and exact rational arithmetic; numerical
optimization is not a premise of the proof. The numerical discovery script
is retained separately under `work/c1_top_multiplicity/`.

The logical inputs are the endpoint-triangle and two-interior-point triangle
bounds, the already proved C1 cap-hull lemmas, and the complete triangular
and eight-vertex exclusions cited in Section 1. None depends on this note.
