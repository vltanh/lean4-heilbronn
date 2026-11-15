# Completion of the mixed seven-boundary placement below HC

Use the seven anchors

\[
A=(0,a),\ H=(0,h),\ B=(b,0),\ C=(c,0),\
D=(1,d),\ E=(1,e),\ F=(f,1),
\]

with \(0<a<h<1\), \(0<b<c<1\), \(0<d<e\le1\),
\(b\le f\le c\), and \(f\le1/2\). The two free points
are \(P=(p_x,p_y)\) and \(Q=(q_x,q_y)\). Write
\(s=7/64\), \(\rho=13/16\), and assume every actual
unsigned doubled area is at least s.

**Theorem.** The complete mixed placement in which P is below HC
is impossible. This includes every joining-line orientation of P,Q.

The complete left- and right-pair exclusions and
[SEVEN_BOUNDARY_MIXED_PAIR.md](SEVEN_BOUNDARY_MIXED_PAIR.md) reduce
this branch to

\[
P\in AHC\cap HBC\cap ACF,\qquad Q\in CEF,
\qquad P,Q\text{ below }HE.                            \tag{1}
\]

The empty lower ears give the first two P containments; Theorem 3
of the mixed-pair note gives the third. Its Section 2 already proves
that Q is below HE in this branch. The later complete
[upper-triangle theorem](SEVEN_BOUNDARY_UPPER_TRIANGLE.md) also
implies the same fact.

We close all the placements in (1) with fixed rational cubic
inequalities. The complete integer coefficients are in
[seven_boundary_mixed_lower_certificates.json](seven_boundary_mixed_lower_certificates.json).

## 1. Bounds common to the whole lower branch

Put \(M=c-b\), \(L=h-a\), and \(R=e-d\).
The anchor costs give

\[
a,d\ge s/M,\quad bL\ge s,\quad (1-c)R\ge s,
\quad h\ge s/M+s/b,\quad e\ge s/M+s/(1-c).
\]

As in Section 1 of the mixed-pair note, \(b>1/8\).
Also \(c<1-s=57/64\), so \(M<49/64\), and hence

\[
a,d>1/7.                                               \tag{2}
\]

The five actual points H,C,A,B,P lie in the virtual triangle with
vertices \((0,0),H,C\), two of whose vertices are actual. The
five-point endpoint-triangle theorem gives, exactly as in Section 2
of the mixed-pair note,

\[
hc\ge\frac{s}{3-2\sqrt2}>7/11.
\]

In particular

\[
c>7/11,\qquad h>448/627.                               \tag{3}
\]

Since P is in both AHC and HBC, subdivision into three actual
triangles yields

\[
cL\ge3s,\quad hM\ge3s,
\qquad L>7/19,\quad M>21/64.                           \tag{4}
\]

Cauchy--Schwarz and \(b>1/8\) also give

\[
e\ge4s/(1-b)>1/2.                                     \tag{5}
\]

### Point-coordinate bounds

The BC bases give \(p_y,q_y\ge s/M>1/7\).
Both points are below HE, so \(p_y,q_y\le1-s\).
The DE bases give \(p_x,q_x\le1-s\).
The AH base at P and (2) give

\[
p_x\ge s/L>\frac{s}{1-a}>49/384>1/8.                   \tag{6}
\]

The CEF containment puts Q on the outer side of CF. Its actual
area cost gives

\[
q_x\ge c-(c-f)q_y+s\ge f+s,                            \tag{7}
\]

because \(q_y\le1\) and \(c\ge f\).
The actual HCP cost at P is

\[
h(c-p_x)-cp_y\ge s.
\]

Together with (2)--(3), it implies

\[
c-p_x\ge s+cp_y> s+1/11=141/704>1/5.                  \tag{8}
\]

Finally \(h>7/10\), \(c<9/10\), and (6) show

\[
p_y\le h-\frac h c p_x-\frac s c
<1-\frac7{72}-\frac7{64}
=457/576<4/5.                                         \tag{9}
\]

All these inequalities hold before choosing the remaining radial cells.

## 2. An explicit finite cover by nine and twelve ray words

Label the convex anchor heptagon in cyclic order by

\[
(V_0,\ldots,V_6)=(A,B,C,D,E,F,H).
\]

For either interior point, let r_i count the subsequent anchor rays
before the opposite ray to V_i. Convexity and positive actual areas give

\[
1\le r_i\le5,\qquad
j\le r_i\ \Longleftrightarrow\ 7-j>r_{i+j}
\quad(1\le j\le6),                                    \tag{10}
\]

with subscripts modulo seven. In particular \(\sum_i r_i=21\).
For \(i<j\), the sign of \([V_iV_jP]\), or of
\([V_iV_jQ]\), is positive exactly when \(j-i\le r_i\).
An interior point is in the actual triangle \(V_iV_jV_k\),
\(i<j<k\), exactly when its signs at \((i,j),(j,k),(i,k)\)
are \((+,+,-)\).

The containments in (1) and (10) give the following complete lists.
For P, the forced entries are \(r_2=4,r_6=2\), with
\(2\le r_0\le4\) and \(r_0-1\le r_1\le4\).
The complement relations determine the other entries, giving
\(4+3+2=9\) rows. The monotonic relation
\(r_{i+1}\ge r_i-1\) follows by rotating the initial ray forward.

For Q the side tests give \(r_2=2\), \(2\le r_0\le4\),
\(1\le r_1\le3\), \(2\le r_4\le4\),
\(4\le r_5\le5\), and \(3\le r_6\le4\).
If \(r_0=2\), (10) leaves the first three Q rows below.
If \(r_0=3\), it leaves \(r_1=2,3\) and \(r_3=1,2,3\),
giving six rows. If \(r_0=4\), it leaves \(r_1=3\) and
\(r_3=1,2,3\), giving three rows. All remaining entries are
then fixed by (10). Thus these twelve rows exhaust the Q alternatives.

| Index | P word | Q word |
|---|---|---|
| 1 | (2,1,4,5,4,3,2) | (2,1,2,5,4,4,3) |
| 2 | (2,2,4,4,4,3,2) | (2,2,2,4,4,4,3) |
| 3 | (2,3,4,4,3,3,2) | (2,3,2,4,3,4,3) |
| 4 | (2,4,4,4,3,2,2) | (3,2,2,1,4,5,4) |
| 5 | (3,2,4,3,4,3,2) | (3,2,2,2,4,4,4) |
| 6 | (3,3,4,3,3,3,2) | (3,2,2,3,4,4,3) |
| 7 | (3,4,4,3,3,2,2) | (3,3,2,1,3,5,4) |
| 8 | (4,3,4,3,2,3,2) | (3,3,2,2,3,4,4) |
| 9 | (4,4,4,3,2,2,2) | (3,3,2,3,3,4,3) |
| 10 | | (4,3,2,1,2,5,4) |
| 11 | | (4,3,2,2,2,4,4) |
| 12 | | (4,3,2,3,2,4,3) |

Some of the 108 pairs are excluded by the earlier complete theorems:
if both points lie in any of ADE,AHD,AHE,HDE, use its capacity-one
result in Sections 5--6 of the mixed-pair note. If both lie in
\(HBE\cap BEF\), use Theorem 1 of that note. The three-sign
containment test just given identifies these entries exactly. There
are 44 such pairs and 64 remaining pairs.

## 3. All necessary polynomials have a fixed exact definition

Use variable order

\[
z=(a,h,b,c,d,e,f,p_x,p_y,q_x,q_y)\in[0,1]^{11}.
\]

The following 24 affine factors \(l_i\), with zero-based indices,
are nonnegative by Section 1 and the normalization:

| Index | Factor | Index | Factor |
|---|---|---|---|
| 0 | \(a-1/7\) | 12 | \(e-1/2\) |
| 1 | \(h-a-7/19\) | 13 | \(h-448/627\) |
| 2 | \(1-h\) | 14 | \(p_x-1/8\) |
| 3 | \(b-1/8\) | 15 | \(57/64-p_x\) |
| 4 | \(f-b\) | 16 | \(p_y-1/7\) |
| 5 | \(c-f\) | 17 | \(4/5-p_y\) |
| 6 | \(1/2-f\) | 18 | \(q_x-f-7/64\) |
| 7 | \(57/64-c\) | 19 | \(57/64-q_x\) |
| 8 | \(c-7/11\) | 20 | \(q_y-1/7\) |
| 9 | \(d-1/7\) | 21 | \(57/64-q_y\) |
| 10 | \(e-d\) | 22 | \(c-b-21/64\) |
| 11 | \(1-e\) | 23 | \(c-p_x-1/5\) |

Extend the actual vertex list by \(V_7=P,V_8=Q\).
List in lexicographic order the triples \(i<j<k\le8\) that do
not contain both 7 and 8. There are 77, indexed from zero. For each
triple define

\[
q_{ijk}=\epsilon_{ijk}[V_iV_jV_k]-t_{ijk}.              \tag{11}
\]

For an all-anchor triple, \(\epsilon=1\). Count how many of P,Q
lie inside that triangle, using their ray words and the three-sign
test. If that count is zero, one or two, respectively, set

\[
t_{ijk}=s,\quad3s,\quad\rho=13/16.                    \tag{12}
\]

These are necessary lower bounds: the middle one follows by area
addition, and the last follows from the two-interior-point triangle
bound \((4+2\sqrt3)s>13/16\). If the triple contains one of P,Q,
use \(t=s\), with its sign determined by that point's ray word.
Every polynomial in (11) is therefore nonnegative. Finally append

\[
q_{77}=hc-7/11\ge0.                                   \tag{13}
\]

All 78 polynomials have degree at most two. Triangles involving both
P and Q are not needed in these certificates; their joining line is
unrestricted.

## 4. Forty positive cubic identities cover the 64 pairs

Every supplied certificate is a positive integer-weighted sum,
with common denominator 4096, of terms

\[
l_i,\quad l_i l_j,\quad l_i l_j l_k,\quad q_t,\quad q_t l_i.
                                                               \tag{14}
\]

The coefficient file uses exactly the format of the
[exterior certificates](SEVEN_BOUNDARY_EXTERIOR_COMPLETION.md):
`["f",[i,j,...],w]` denotes \((w/4096)l_i l_j\cdots\), and
`["q",t,m,w]` denotes \((w/4096)q_tl_m\), with \(m=-1\)
meaning no affine factor. Each record specifies its reference P,Q
words, hence all the signs and thresholds in (11)--(12).
All weights w are strictly positive integers.

Let \(C(z)=\sum_\alpha c_\alpha z^\alpha\) be its exact
expansion. As before, on the unit cube,

\[
C(z)\le c_0+\sum_{\alpha\ne0}\max(c_\alpha,0).
\]

For every one of the forty expressions, exact rational expansion gives

\[
\boxed{c_0+\sum_{\alpha\ne0}\max(c_\alpha,0)\le-3/4.} \tag{15}
\]

The largest bound is precisely

\[
-\frac{102164295540971}{103089281433600}<-3/4.
\]

There are **4,981 positive terms** in the complete coefficient file.
Thus (14) would give \(C\ge0\), contradicting (15).

A certificate also applies to another pair of ray words whenever each
cost it uses has the same sign and at least its reference threshold.
In that case each reference \(q_t\) remains nonnegative; the exact
polynomial identity is unchanged. This explains why forty certificates
suffice for 64 pairs. No new inequality is inferred by changing signs
or lowering a required threshold.

Here is the exhaustive coverage table, with P words indexing rows and
Q words indexing columns. A number denotes the corresponding record in
the coefficient file. V denotes the earlier vertical-triangle
capacity theorem, and M the earlier \(HBE\cap BEF\) theorem.

| P / Q | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 1 | 1 | 1 | 13 | 1 | 1 | 1 | 2 | 3 | 3 | 4 | 5 | 6 |
| 2 | 1 | 7 | 13 | 7 | 7 | 7 | 8 | 9 | 10 | 11 | 11 | 12 |
| 3 | 13 | 13 | M | 14 | 15 | 16 | M | M | M | M | M | M |
| 4 | 13 | 13 | 13 | 17 | 18 | 19 | 20 | 20 | 20 | 21 | 22 | 23 |
| 5 | 1 | 7 | 24 | V | V | V | V | V | V | 24 | 24 | V |
| 6 | 25 | 26 | M | V | V | V | V | V | V | M | M | V |
| 7 | 25 | 27 | 20 | V | V | V | V | V | V | 28 | 29 | V |
| 8 | 30 | 31 | M | 32 | 33 | V | M | M | V | V | V | V |
| 9 | 34 | 35 | 36 | 37 | 38 | V | 39 | 40 | V | V | V | V |

Every entry is excluded by a stated complete theorem or by (14)--(15).
The finite lists in Section 2 cover all placements in (1), including
all configurations of the joining line PQ. This proves the theorem.
\(\square\)

## Verification

Run

```sh
python hand/check_seven_boundary_mixed_lower.py
```

The verifier uses exact fractions and the already independently checked
polynomial operations from the exterior verifier. It reconstructs the
nine and twelve word lists from all seven-ray complement relations,
checks the earlier capacity exclusions, expands all forty fixed cubic
expressions, and verifies every remaining cell against the precise
sign/threshold conditions for reuse. It prints the coverage table above.
No optimizer or numerical search is run by this verification.
