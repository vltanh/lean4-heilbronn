# Completion of the upper mixed branch and of the seven-boundary form

Use the seven actual anchors
\[
A=(0,a),\ H=(0,h),\ B=(b,0),\ C=(c,0),\
D=(1,d),\ E=(1,e),\ F=(f,1),
\]
with
\[
0<a<h<1,\quad0<b<c<1,\quad0<d<e\le1,\qquad
b\le f\le c,\quad f\le\tfrac12.
\]
Write \(P=(p_x,p_y)\), \(Q=(q_x,q_y)\), and
\[
s=\frac7{64},\qquad \rho=\frac{13}{16},\qquad
K=4+2\sqrt3,\qquad \rho<Ks.
\]
Assume every actual unsigned doubled triangle area is at least \(s\).

**Theorem 1 (the complete upper mixed branch).** The mixed placement
in which the left point \(P\) is above \(HC\) is impossible,
including every orientation of the joining line \(PQ\).
This assertion allows the endpoint \(e=1\).

The reductions in
[SEVEN_BOUNDARY_MIXED_PAIR.md](SEVEN_BOUNDARY_MIXED_PAIR.md)
and the complete
[upper-triangle exclusion](SEVEN_BOUNDARY_UPPER_TRIANGLE.md)
give precisely
\[
P\in HCF\cap ACF,\qquad Q\in CEF,\qquad
P,Q\text{ below }HE.                                    \tag{1}
\]
In particular both points lie inside \(HCE\).
The coefficient file
[seven_boundary_mixed_above_certificates.json](seven_boundary_mixed_above_certificates.json)
supplies fixed rational cubic inequalities closing all placements in (1).
Sections 1--4 prove their hypotheses, signs, and exhaustive coverage.
Section 5 assembles the full normalized seven-boundary theorem.

## 1. Bounds valid before selecting either point's cell

Put \(L=h-a\), \(M=c-b\), \(R=e-d\), and \(w=1-c\).
The anchor areas give
\[
a,d\ge s/M,\quad bL\ge s,\quad wR\ge s,\qquad
h\ge s/M+s/b,\quad e\ge s/M+s/w.                        \tag{2}
\]
As in the mixed-pair note, these imply
\[
b>1/8,\quad c<57/64,\quad M<49/64,\quad a,d>1/7.          \tag{3}
\]
Here \(c<57/64\) follows from \(wR\ge s\) and \(R<1\).
The latter remains strict when \(e=1\), because \(d>0\).

The left two reciprocal costs give
\[
hc\ge\frac{s c^2}{b(c-b)}\ge4s.
\]
Thus
\[
c\ge7/16,\qquad h>28/57,\qquad R\ge7/36.                 \tag{4}
\]
For the last bound, \(w\le9/16\) and \(wR\ge s\).
Since \(b\le f\le1/2\),
\[
L\ge2s=7/32,\qquad a=h-L\le25/32,\qquad M\ge7/50.        \tag{5}
\]
Finally Cauchy--Schwarz in the two right-hand terms of (2) gives
\[
e\ge\frac{4s}{M+w}=\frac{4s}{1-b}>\frac12.               \tag{6}
\]

### Point-coordinate bounds

The actual bases \(BC\) give
\[
p_y,q_y\ge s/M>1/7.
\]
The side tests below \(HE\), with their actual area costs, give
\[
p_y,q_y\le h(1-x)+ex-s\le1-s=57/64,
\]
where \(x\) is the corresponding first coordinate.
The actual bases \(DE\) give \(p_x,q_x\le57/64\).
The base \(AH\), together with \(a>1/7\), gives
\[
p_x\ge s/L>\frac{s}{1-a}>\frac{49}{384}>\frac18.          \tag{7}
\]
The two opposite \(CF\) side tests in (1) give
\[
\begin{aligned}
q_x&\ge c-(c-f)q_y+s\ge f+s,\\
\frac{6c+f}{7}-p_x-s
&=\{c-p_x-(c-f)p_y-s\}+(c-f)(p_y-1/7)\ge0.
\end{aligned}                                           \tag{8}
\]
All these bounds allow \(e=1\).

### The additional triangle \(ACD\) has capacity one

The two actual anchor costs in (2) also give
\[
a\le1-s/b,\qquad d\le1-s/w.
\]
Consequently
\[
\begin{aligned}
[ACD]=wa+cd
&\le1-s\left(\frac wb+\frac cw\right)\\
&<1-2s=\frac{25}{32}<\rho<Ks.
\end{aligned}                                           \tag{9}
\]
The strict inequality follows from
\((w/b)(c/w)=c/b>1\) and the two-term arithmetic--geometric
mean inequality. Thus \(ACD\) cannot contain both free points.

Two other anchor-area capacity-one bounds were proved in
Sections 5--6 of SEVEN_BOUNDARY_MIXED_PAIR.md:
\[
[AEF]<1-2s<Ks,\qquad [HDF]<1-2s<Ks.                      \tag{10}
\]
Those estimates precede the specific pair placements in their proofs.
They use only (2), the projection condition, and \(f\le1/2\).
Together (9)--(10) will remove some whole cells.

### The inherited exclusions also apply when e = 1

This endpoint assertion follows from the inequalities in the earlier
proofs, rather than from a limiting argument. First, \(P\) is already
above \(HC\), so its reduction to \(ACF\) uses only the empty overlap
\(AHF\cap HCF\). That overlap proof uses \(bL\ge s\),
\(aM\ge s\), \(c\le1-s\), and \(h\le1\), all valid here.
The empty-\(CDE\) proof giving \(Q\in CEF\) uses \(e\le1\).
The upper-triangle theorem explicitly includes this endpoint.

For the capacity and common-cell tests used below:

- At \(e=1\), \(s\le[HEF]=(1-f)(1-h)\) gives \(h\le1-s\).
  Equation (3) then gives
  \[
  L=h-a<1-s-\frac17=\frac{335}{448}<\rho.
  \]
  Thus both \(AHD\) and \(AHE\), whose doubled areas equal \(L\),
  have capacity one directly.
- The \(ADE\) proof and its \(ACE\cap ADE\) inequality use
  only \(e\le1\). In the \(HDE\) proof, (1) already supplies
  \(P\in ACF,Q\in CEF\), so its preliminary reduction through
  the left- and right-pair theorems is unnecessary.
  Every subsequent step in Sections 6.1--6.5 of the mixed-pair
  note remains valid: its parameter
  \(\epsilon=1-e\) explicitly ranges over an interval including zero,
  and its two final endpoint inequalities are evaluated at zero.
- The \(HBE\cap BEF\) proof uses its \(h\le e\) branch, which
  allows \(e=1\). The three anchor-area bounds (9)--(10) use
  non-strict upper bounds \(h,e\le1\), and the crossed-cell theorem
  explicitly permits both upper heights to equal one.

Hence every inherited exclusion used for (1) has its stated endpoint
justification, without assuming a complete left- or right-pair endpoint
theorem.

## 2. Fourteen and twelve words give a complete finite cover

Label the convex anchor heptagon cyclically by
\[
(V_0,\ldots,V_6)=(A,B,C,D,E,F,H).
\]
For either interior point, let \(r_i\) count the subsequent anchor
rays lying before the ray opposite to \(V_i\). There are no collinear
actual triples. Convexity and interiority therefore imply
\[
1\le r_i\le5,\qquad
j\le r_i\ \Longleftrightarrow\ 7-j>r_{i+j}
\quad(1\le j\le6),\qquad \sum_i r_i=21,                  \tag{11}
\]
with indices modulo seven. For \(i<j\), the sign of the actual
area \([V_iV_jP]\), or of \([V_iV_jQ]\), is positive exactly
when \(j-i\le r_i\).
For \(i<j<k\), a point is inside \(V_iV_jV_k\) exactly when
its signs at \((i,j),(j,k),(i,k)\) are \((+,+,-)\).

For \(P\), the containments in (1) force \(r_2=3\),
\(2\le r_0\le4\), and the positive side test at \((4,6)\).
Substitution in (11) gives four rows when \(r_0=2\):
then \(r_1=1,2,3,4\). When \(r_0=3\), one has
\(r_1=2,3,4\) and \(r_3=2,3\), giving six rows.
When \(r_0=4\), one has \(r_1=3,4\) and \(r_3=2,3\),
giving four rows. The remaining entries are fixed by (11).

For \(Q\), (1) gives \(r_2=2\), \(2\le r_0\le4\),
\(1\le r_1\le3\), \(2\le r_4\le4\),
\(4\le r_5\le5\), and \(3\le r_6\le4\).
If \(r_0=2\), (11) leaves three rows.
If \(r_0=3\), it leaves \(r_1=2,3\) and
\(r_3=1,2,3\), giving six rows.
If \(r_0=4\), it leaves \(r_1=3\) and \(r_3=1,2,3\),
giving three rows. These are the same twelve \(Q\) words as in
the lower mixed branch.

| Index | \(P\) word | \(Q\) word |
|---|---|---|
| 1 | (2,1,3,5,4,3,3) | (2,1,2,5,4,4,3) |
| 2 | (2,2,3,4,4,3,3) | (2,2,2,4,4,4,3) |
| 3 | (2,3,3,4,3,3,3) | (2,3,2,4,3,4,3) |
| 4 | (2,4,3,4,3,2,3) | (3,2,2,1,4,5,4) |
| 5 | (3,2,3,2,4,3,4) | (3,2,2,2,4,4,4) |
| 6 | (3,2,3,3,4,3,3) | (3,2,2,3,4,4,3) |
| 7 | (3,3,3,2,3,3,4) | (3,3,2,1,3,5,4) |
| 8 | (3,3,3,3,3,3,3) | (3,3,2,2,3,4,4) |
| 9 | (3,4,3,2,3,2,4) | (3,3,2,3,3,4,3) |
| 10 | (3,4,3,3,3,2,3) | (4,3,2,1,2,5,4) |
| 11 | (4,3,3,2,2,3,4) | (4,3,2,2,2,4,4) |
| 12 | (4,3,3,3,2,3,3) | (4,3,2,3,2,4,3) |
| 13 | (4,4,3,2,2,2,4) | |
| 14 | (4,4,3,3,2,2,3) | |

The list is a cover: no assertion that every word pair is realizable
is needed. Some of the \(14\cdot12=168\) pairs are already excluded.
Apply the following tests in the stated order:

1. If both points belong to any of \(ADE,AHD,AHE,HDE\), use
   the corresponding complete capacity-one theorem from Sections 5--6
   of the mixed-pair note. This removes 69 pairs.
2. If both belong to any of \(AEF,HDF,ACD\), use (9)--(10).
   This removes 12 further pairs.
3. If both belong to \(HBE\cap BEF\), use Theorem 1 of the
   mixed-pair note. This removes 16 further pairs.
4. If \([BEP]<0\) and \(Q\in AHE\cap DEF\), use the complete
   crossed-cell theorem in
   [SEVEN_BOUNDARY_MIXED_ABOVE.md](SEVEN_BOUNDARY_MIXED_ABOVE.md).
   This removes three further pairs.

Every test uses only signs determined by (11).
There are exactly \(168-69-12-16-3=68\) pairs left.

## 3. The exact nonnegative polynomials

Use variable order
\[
z=(a,h,b,c,d,e,f,p_x,p_y,q_x,q_y)\in[0,1]^{11}.
\]
The following 24 affine factors \(l_i\), indexed from zero,
are nonnegative by Section 1:

| Index | Factor | Index | Factor |
|---|---|---|---|
| 0 | \(a-1/7\) | 12 | \(e-1/2\) |
| 1 | \(h-a-7/32\) | 13 | \(h-28/57\) |
| 2 | \(1-h\) | 14 | \(p_x-1/8\) |
| 3 | \(b-1/8\) | 15 | \(57/64-p_x\) |
| 4 | \(f-b\) | 16 | \(p_y-1/7\) |
| 5 | \(c-f\) | 17 | \(57/64-p_y\) |
| 6 | \(1/2-f\) | 18 | \(q_x-f-7/64\) |
| 7 | \(57/64-c\) | 19 | \(57/64-q_x\) |
| 8 | \(c-7/16\) | 20 | \(q_y-1/7\) |
| 9 | \(d-1/7\) | 21 | \(57/64-q_y\) |
| 10 | \(e-d-7/36\) | 22 | \(c-b-7/50\) |
| 11 | \(1-e\) | 23 | \((6c+f)/7-p_x-7/64\) |

Extend the vertex list by \(V_7=P,V_8=Q\).
List lexicographically the triples \(i<j<k\le8\) that do not
contain both 7 and 8. There are 77, indexed from zero.
For each triple define
\[
q_{ijk}=\epsilon_{ijk}[V_iV_jV_k]-t_{ijk}.                \tag{12}
\]
For an all-anchor triple, \(\epsilon=1\). Use (11) to count
how many of \(P,Q\) belong to its triangle. For counts zero,
one, and two, set, respectively,
\[
t_{ijk}=s,\qquad 3s,\qquad \rho.                         \tag{13}
\]
The middle bound follows by area addition; the last follows from
the two-interior-point triangle bound \(Ks>\rho\).
For a triple with one free point, take \(t=s\), and take its
sign from that point's word.
Thus all 77 polynomials in (12) are nonnegative.

In particular both points in (1) are inside \(HCE\), so its cost
in every certificate has threshold \(\rho\). No virtual-triangle
estimate or extra non-actual area is used in this branch.
The seven triangles involving both \(P,Q\) are not needed.

## 4. Fifty-five fixed cubic inequalities close the cover

Each record of the supplied coefficient file defines a sum \(C(z)\)
of terms of the forms
\[
l_i,\quad l_i l_j,\quad l_i l_j l_k,\quad q_t,\quad q_t l_i,
                                                               \tag{14}
\]
with strictly positive integer weights divided by 4096.
Its two reference words fix every sign and threshold in (12)--(13).
The exact term format is

- \(\texttt{["f",[i,j,\ldots],w]}\), for
  \((w/4096)l_i l_j\cdots\), with one, two, or three factors;
- \(\texttt{["q",t,m,w]}\), for \((w/4096)q_tl_m\), with
  \(m=-1\) meaning that there is no affine multiplier.

All factors and costs are nonnegative, so \(C(z)\ge0\).
Expand it exactly as \(C(z)=\sum_\alpha c_\alpha z^\alpha\).
Every nonconstant monomial is in \([0,1]\) on the unit cube.
Consequently
\[
C(z)\le c_0+\sum_{\alpha\ne0}\max(c_\alpha,0).             \tag{15}
\]
For all 55 supplied expressions, exact rational expansion gives
\[
\boxed{c_0+\sum_{\alpha\ne0}\max(c_\alpha,0)\le-3/4.}      \tag{16}
\]
The largest value is exactly
\[
-\frac{3500665656574811}{3542522580172800}<-\frac34.
\]
There are **6,125 positive terms** in the complete coefficient
file. Its complete integer lists, together with (12)--(15), specify
fixed algebraic inequalities on the entire continuous parameter family.
No numerical search or domain subdivision is part of their verification.

A reference certificate also applies to another word pair whenever
each cost it uses has the same sign and a threshold at least as large
as the reference threshold. Its reference costs then remain
nonnegative, and the polynomial identity is unchanged.
This precise reuse rule lets 55 expressions cover all 68 pairs.

Here is the exhaustive coverage table. Rows and columns refer to the
word lists in Section 2. Numbers are one-based certificate record
indices. The letters have the following meanings:
\(V\) is a vertical-triangle capacity theorem;
\(A\) is one of (9)--(10);
\(M\) is the common-cell theorem;
\(C\) is the crossed-cell theorem.

| \(P/Q\) | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 1 | A | A | A | 1 | 1 | 1 | 3 | 4 | 5 | C | 6 | 7 |
| 2 | A | A | A | 8 | 8 | 2 | 9 | 10 | 11 | C | 12 | 13 |
| 3 | A | A | A | 14 | 15 | 16 | M | M | M | M | M | M |
| 4 | A | A | A | 14 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24 |
| 5 | 28 | 8 | 25 | V | V | V | V | V | V | V | V | 26 |
| 6 | 2 | 2 | 11 | V | V | V | V | V | V | C | 27 | V |
| 7 | 28 | 29 | M | V | V | V | V | V | V | V | V | M |
| 8 | 30 | 30 | M | V | V | V | V | V | V | M | M | V |
| 9 | 31 | 31 | 32 | V | V | V | V | V | V | V | V | 33 |
| 10 | 34 | 34 | 34 | V | V | V | V | V | V | 35 | 36 | V |
| 11 | 37 | 38 | M | V | V | 39 | V | V | M | V | V | V |
| 12 | 40 | 41 | M | 42 | 43 | V | M | M | V | V | V | V |
| 13 | 44 | 45 | 46 | V | V | 47 | V | V | 48 | V | V | V |
| 14 | 49 | 50 | 51 | 52 | 53 | V | 54 | 55 | V | V | V | V |

Every entry is excluded by a previously proved complete theorem or by
the contradiction \(0\le C(z)\le-3/4\).
The word lists exhaust (1), with no restriction on \(PQ\).
This proves Theorem 1. \(\square\)

## 5. The entire normalized seven-boundary form is complete

**Theorem 2 (seven-boundary form).** Suppose the seven prescribed
anchors have the open-side orders
\[
0<a<h<1,\quad0<b<c<1,\quad0<d<e<1,\qquad
b\le f\le c,\quad f\le1/2.
\]
The other two points may be anywhere in the unit square.
Their nine-point minimum ordinary triangle area is at most
\[
A_0=\frac{9\sqrt{65}-55}{320}.
\]
If equality holds, the configuration is the known eight-boundary
extremizer, up to square symmetry and relabeling.
In particular, a configuration with exactly seven square-boundary
points cannot attain equality.

For the proof, first suppose both free points are inside the anchor
heptagon. The actual diagonal \(CF\) divides it into the left
pentagon \(ABCFH\) and the right quadrilateral \(CDEF\).
A point on that diagonal gives a zero triangle.

- If both points are on the left, the reductions in
  [SEVEN_BOUNDARY_CAPS.md](SEVEN_BOUNDARY_CAPS.md) and the complete
  [left-pair theorem](SEVEN_BOUNDARY_LEFT_PAIR.md) give a triangle
  of ordinary area strictly below \(7/128\).
- If both are on the right, the complete
  [right-pair theorem](SEVEN_BOUNDARY_RIGHT_PAIR.md), with the
  \(CDE\)-ear and diagonal reductions in the caps note, gives the
  same strict bound.
- In the mixed case, the mixed-pair note puts \(P\in ACF\) and
  \(Q\in CEF\), and the upper-triangle theorem puts both below \(HE\).
  If \(P\) is below \(HC\), the complete
  [lower mixed theorem](SEVEN_BOUNDARY_MIXED_LOWER.md) applies.
  If it is above \(HC\), Theorem 1 applies. An incidence on \(HC\)
  gives a zero triangle. Thus the mixed case also has minimum
  ordinary area strictly below \(7/128\).

These alternatives exhaust every interior pair, and
\[
\frac7{128}<A_0.
\]
For the strict comparison, \(18\sqrt{65}>145\) follows from
\(324\cdot65-145^2=35>0\).

It remains to allow free points outside the anchor heptagon.
The lower exterior-cap exclusions and Theorems 10--11 of the caps
note leave exactly one free point in the far upper cap beyond \(EF\);
the other is inside the original heptagon. The
[complete exterior theorem](SEVEN_BOUNDARY_EXTERIOR_COMPLETION.md)
then gives the sharp bound \(A_0\).
Its equality classification leaves only the radial class \(R3\),
forces the cap point to height one, and gives the known
eight-boundary extremizer.
No other exterior class can attain equality. This proves Theorem 2.
\(\square\)

### Endpoint scope

Theorem 1, the lower mixed theorem, and the upper-triangle theorem
explicitly allow \(e=1\). Hence the complete mixed-pair exclusion
continues to hold at that corner endpoint, with the same
strict bound below \(7/128\).
Theorem 2 is stated for the normalized open-side form; the endpoint
extension just stated is used only for its proved mixed-pair scope.

## Verification

Run the exact diagnostic:

    python docs/proof/nine/check_seven_boundary_mixed_above_certificates.py

The verifier uses exact fractions and the polynomial operations from
the independently checked exterior verifier. It reconstructs the
fourteen and twelve word lists from the seven-ray complement relations,
checks the 100 prior exclusions, expands every fixed cubic expression,
and verifies all 68 remaining pairs against the exact sign and threshold
conditions for reuse. It prints the coverage table above.
The separate
[crossed-cell diagnostic](check_seven_boundary_mixed_above.py)
checks the elementary theorem used for the three \(C\) entries.
No optimizer or numerical search is run by either verification.
