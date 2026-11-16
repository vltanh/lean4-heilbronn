# One lower C1 point and two different exterior caps

This note treats the three rows
\((U,R,T,L_{\rm cap})=(1,1,1,0),(1,1,0,1),(1,0,1,1)\)
in the one-lower occupancy ledger. Theorem 1 below excludes all three
rows by a complete finite cover and fixed rational polynomial
certificates.

Use the actual anchors
\[
O=(0,0),\ C=(c,0),\ D=(1,d),\ F=(f,1),\ H=(0,h),
\qquad 0<d\le h<1,\quad 0<f\le c<1,\quad f\le d.
\]
Assume the minimum actual triangle area is at least
\(A_0=(9\sqrt{65}-55)/320\), and write
\[
s=8/73<2A_0,\qquad \rho=49/60<(4+2\sqrt3)s.
\]
Brackets are signed doubled areas. All free points avoid actual anchor
chords, because otherwise an actual triangle has zero area. Additional
contacts with a side of the square are allowed.

There is one point \(L=(\ell_x,\ell_y)\) in \(OHC\), one point
\(Q=(q_x,q_y)\) in \(HCDF\), and two cap points \(X,Y\).
The three ordered cap classes are \(RT,RL,TL\), with \(X\) in the
first cap and \(Y\) in the second. The cap notation and the general
support lemmas are those of [C1_ZERO_LOWER.md](C1_ZERO_LOWER.md).

## 1. Common parameter and coordinate bounds

The lower triangle contains \(L\), so
\[
hc\ge3s,\quad h,c\ge3s,\qquad
\ell_x,\ell_y\ge s,\quad
c-\ell_x,h-\ell_y\ge2s,\quad
\ell_x+\ell_y\le1-s.                                      \tag{1}
\]
For example the three positive areas of its subdivision are
\(c\ell_y,h\ell_x,[HLC]=hc-h\ell_x-c\ell_y\).
Adding two of them proves each coordinate gap in (1), and dividing
the last area by \(hc\) gives the last assertion.

The actual anchor triangles give
\[
s\le d,f\le1-s.
\]
In each of the three classes at least one side cap is occupied.
The single-cap support bounds give \(d\ge4s\) for a right cap and
\(f\ge4s\) for a left cap. Since \(f\le d\), in all classes
\[
d\ge4s.                                                   \tag{2}
\]
A right cap also gives \(1/7<c<6/7\); a left cap gives
\(1/7<h<6/7\). A top cap gives
\[
f<67/100,\qquad d\le57/65.                                \tag{3}
\]
These are the occupancy-independent bounds proved in
[C1_ZERO_LOWER.md](C1_ZERO_LOWER.md), Sections 1–2.

The upper-point projection identities from the same note imply
\[
s\le q_x,q_y\le1-s.                                      \tag{4}
\]
The upper anchor quadrilateral contains \(Q\), so its doubled area
\[
W=1-(h-d)(c-f)\ge4s.                                     \tag{5}
\]
This is also obtained by summing its four positive fan triangles
with apex \(Q\).

Several useful actual-triangle upper bounds follow immediately:
\[
[DFH]=1-h+f(h-d)\le1-d\le1-4s.                            \tag{6}
\]
If a left cap is present, then
\[
[CDF]=1-c+d(c-f)\le1-f\le1-4s.                            \tag{7}
\]
For \(RT\) and \(TL\), \([OFH]=hf<67/100\) by (3). For \(RL\),
both \(h,c<6/7\) and \(f\le c\), so
\[
[OFH]<36/49.
\]
Both upper bounds are smaller than \(\rho\). Consequently \(OFH\)
has capacity one: it cannot contain two additional actual points.

The single-cap cubic support inequalities, retained without
relaxation, are
\[
dc(1-c)\ge s\quad(R\text{ present}),\qquad
fh(1-h)\ge s\quad(L_{\rm cap}\text{ present}).              \tag{8}
\]

## 2. Cap gaps and top-point cross-ear bounds

Every free coordinate is at least \(s\), using its actual triangles
with \(OC\) and \(OH\). Let a right-cap point have coordinates
\((x,y)\). Its cap area gives
\[
(1-c)(d-y)\ge s,\qquad d(x-c)\ge s,\qquad cy\ge s.
\]
Thus
\[
x\le1,\quad x-c\ge8/65,\quad y\ge7s/6,\quad
d-y\ge
\begin{cases}
8/49,&RT,\\
8/41,&RL.
\end{cases}                                               \tag{9}
\]
Here \(c\ge3s\) always; in \(RL\), \(c\ge f\ge4s\).
The remaining divisions use \(d\le1-s\) and \(c<6/7\).

For a top-cap point \((x,y)\), its area beyond \(DF\) gives
\[
(1-d)(x-f)\ge s,\qquad(1-f)(y-d)\ge s.
\]
Therefore
\[
x,y\le1,\quad x-f\ge8/41,\quad
y-d\ge
\begin{cases}
8/65,&RT,\\
8/41,&TL.
\end{cases}                                               \tag{10}
\]
For a left-cap point the transposed cap calculation gives
\[
f-x\ge8/41,\quad y\le1,\quad
y-h\ge8/65,\quad x\ge7s/6.                                \tag{11}
\]
Indeed \(h\ge d\ge4s\), \(f\le1-s\), and \(h<6/7\).
The three rational gaps used here are exactly
\(s/(1-s)=8/65,\ s/(1-3s)=8/49,\ s/(1-4s)=8/41\).

There is a further bound for any top-cap point \(Z=(g,k)\):
\[
0<[FHZ],[CDZ]<\gamma,\qquad
\gamma=1-\frac73s<\rho.                                 \tag{12}
\]
For the first area write
\[
[FHZ]=(1-h)g+f(h-k).
\]
If \(k\ge h\), this is at most \(1-h\le1-3s<\gamma\).
If \(k<h\), the positive cap area implies
\((1-f)k\ge s\), hence \(f\le1-s/k\). Since \(g\le1\),
\[
[FHZ]\le1+s-k-hs/k
       \le1+s-2\sqrt{hs}
       \le1+s-2\sqrt3\,s<1-\frac73s.
\]
The final strict inequality uses \(\sqrt3>5/3\).
Transposing the square proves the second bound with \(c\ge3s\);
this argument does not need the additional order \(f\le d\).
Positivity follows from the respective cap's position beyond \(DF\).

## 3. A finite cover by anchor-ray words

Number the anchors \(O,C,D,F,H\) by \(0,\ldots,4\).
For a free point, its word \(w\) has the property
\[
[V_iV_{i+j}Z]>0\quad\Longleftrightarrow\quad j\le w_i,
\qquad j=1,\ldots,4,
\]
with cyclic indices. The five anchors remain vertices of the full
convex hull. The directions from each such vertex to the other four
anchors occupy less than a half-turn; therefore every sign list has
this prefix form. Antisymmetry leaves exactly sixteen words.

The right, top, and left cap words, respectively, are
\[
(1,0,4,3,2),\qquad(2,1,0,4,3),\qquad(3,2,1,0,4).
\]
The lower words are
\[
(1,3,3,2,1),\ (2,3,2,2,1),\ (3,3,2,1,1).
\]
The eight upper words are
\[
\begin{gathered}
(1,1,3,3,2),\ (1,2,3,2,2),\
(2,1,1,3,3),\ (2,1,2,3,2),\\
(2,2,1,2,3),\ (2,2,2,2,2),\
(3,2,1,1,3),\ (3,2,2,1,2).
\end{gathered}
\]
Each class initially has \(3\cdot8=24\) word pairs.

Three free points below \(OD\) are forbidden by the two-actual-vertex
triangle capacity applied to \(O,D,(1,0)\), which also contains \(C\).
This removes two pairs in each class with a right cap.
The capacity-one bound for \(OFH\) removes two pairs in each class.
Thus the complete cover consists of
\[
20\ RT,\qquad20\ RL,\qquad22\ TL,                         \tag{13}
\]
or sixty-two pairs altogether.

A pair of distinct words fixes an actual triangle sign at any anchor
where its entries differ: the point with smaller entry precedes the
other in angular order. In addition,
\[
[XYL]>0.                                                 \tag{14}
\]
The three actual areas \([OXY],[CXY],[HXY]\) are positive from the
cap words. The function \(Z\mapsto[XYZ]\) is affine, and \(L\in OHC\);
this proves (14).

The full hull orders are \(O,C,X,D,Y,F,H\) for \(RT\),
\(O,C,X,D,F,Y,H\) for \(RL\), and \(O,C,D,X,F,Y,H\) for \(TL\).
Any partially assigned line signs with more than two cyclic sign
changes around this hull are impossible. Any actual triangle
containing three other actual points is also impossible by the
triangle-capacity theorem. These are exact geometric pruning rules,
not numerical feasibility tests.

## 4. Exact polynomial model and a strengthened whole word

The companion
[check_c1_one_lower_mixed_caps.py](check_c1_one_lower_mixed_caps.py)
reconstructs (1)–(14), the sixty-two words, every signed doubled
determinant, and the containment costs. A known triangle sign has
cost \(s,3s,\rho\) if respectively zero, one, or two additional
actual points are certified to lie inside it. Containment is checked
by the three oriented edge signs. Every coordinate is in \([0,1]\).

For any of the three cap classes, consider the lower word and either
of the following upper words:
\[
L:(2,3,2,2,1),\qquad
Q:(2,1,2,3,2)\ \text{or}\ (2,2,2,2,2).
\]
Both points belong to both \(ODH\) and \(ODF\). Therefore
\[
h\ge\rho,\qquad1-df\ge\rho,\qquad
f\le\frac{1-\rho}{4s}=\frac{803}{1920}.                   \tag{15}
\]
The last step uses (2). The two affine factors in (15) can be
included directly in every cubic product for these six whole words;
no assumption on the line \(LQ\) is needed.

The discovery script in
[../research/c1_mixed_caps_search.py](../../research/nine/research/c1_mixed_caps_search.py)
uses floating linear programs to seek certificates. Such programs
and their status codes are not proofs. Section 5 supplies the fixed
positive rational combinations and their exact verification over
the complete finite cover.

## 5. Complete exclusion of the three mixed-cap rows

**Theorem 1.** None of the three configurations \(RT,RL,TL\)
described above has minimum actual triangle area at least \(A_0\).
The result allows additional contacts on the sides of the square.

The full fixed rational table is
[c1_one_lower_mixed_caps_certificates.json](c1_one_lower_mixed_caps_certificates.json).
Its variables, in order, are
\[
h,c,d,f,\ x_X,y_X,\ x_Y,y_Y,\ \ell_x,\ell_y,\ q_x,q_y.
\]
Every variable lies in \([0,1]\). For each of the sixty-two
word pairs, the table supplies a finite binary tree. A sign branch
splits an actual nonzero determinant into its positive and negative
possibilities. There is exactly one additional scalar branch,
\[
q_x\le5/8\qquad\hbox{or}\qquad q_x\ge5/8.                  \tag{16}
\]
These are closed half-spaces and cover their common boundary.
The branch occurs in the \(RT\) word
\(L=(2,3,2,2,1),Q=(2,1,2,3,2)\). The inequalities (15)
apply throughout that word.

At every certificate leaf the table gives a polynomial
\[
\mathcal P
 =\sum_\alpha a_\alpha\prod_{i\in I_\alpha}L_i
  +\sum_\beta b_\beta B_\beta M_\beta
  +\sum_\gamma c_\gamma C_\gamma,                         \tag{17}
\]
with all coefficients positive rational numbers. Here:

- The \(L_i\) are the proved affine factors from Sections 1–4,
  together with the appropriate factor from (16) when applicable;
  each product has between one and three factors.
- Each \(B_\beta\) is a proved quadratic cost: a signed actual
  area minus its occupancy cost, one of the upper bounds (6),
  (7), (12), or the area bounds (1), (5).
  The multiplier \(M_\beta\) is \(1\) or one affine factor.
- The \(C_\gamma\) are the applicable cubic support costs (8).

Thus every summand in (17) is nonnegative in its cell. The
dictionary format records a positive integer numerator for each
coefficient and one positive integer denominator per certificate.

Expand (17) as \(\sum_m p_m z^m\), where the total degree is at
most three. Since all variables belong to \([0,1]\),
\[
0\le\mathcal P
 \le p_0+\sum_{m\ne0}\max(p_m,0).                         \tag{18}
\]
The exact value of the right-hand side is stored for each
certificate and independently recomputed by the companion checker.
Every value is smaller than \(-3/4\), a contradiction.

The complete verification has the following exact totals:

| Item | Count |
|---|---:|
| Geometric word pairs | 62 |
| Fixed rational certificates | 134 |
| Positive rational terms | 20,543 |
| Terminal branches | 136 |
| Scalar branch locations | 1 |

Two terminal branches are excluded directly by the geometric
pruning rules in Section 3; every other terminal branch has a
certificate. The largest right-hand side of (18) is
\[
-\frac{14173057434018160863047671}
       {14173058272635861860352000}<-\frac34.              \tag{19}
\]

The checker reconstructs all sixty-two initial words, all actual
determinants and occupancy costs, every branch, and every rational
polynomial. It verifies that every listed node is reached exactly
once and that every initial word is covered. The fixed verification
uses only integer and rational arithmetic from the Python standard
library; it invokes no optimizer.

For each possible placement, the finite cover therefore ends at a
proved impossibility or the contradiction (18)–(19). This proves
the theorem.

### Verification

Run

\[
\texttt{python docs/proof/nine/check\_c1\_one\_lower\_mixed\_caps.py}.
\]

The discovery and export scripts under \(\texttt{research/}\)
are retained to document how the fixed table was found. The proof
consists of the geometric inequalities and exhaustive cover above,
together with the explicit rational identities in the fixed table.

## 6. Complete one-lower C1 assembly

**Theorem 2.** A competitive C1 configuration cannot have exactly
one of its four free points in \(OHC\).

Transpose first if necessary to arrange \(f\le d\). This preserves
the C1 hypotheses and lower occupancy. If none of the other three
points is exterior to \(OCDFH\), then all three lie in \(HCDF\).
The seven-point quadrilateral bound would give \(W\ge10s>1\),
contrary to \(W\le1\). If exactly one is exterior, the complete
single-top and single-side exclusions apply:
[C1_ONE_LOWER_TOP_CAP.md](C1_ONE_LOWER_TOP_CAP.md) and
[C1_ONE_LOWER_SIDE_CAP.md](C1_ONE_LOWER_SIDE_CAP.md).

It remains to have at least two exterior points. Write
\((U,R,T,L_{\rm cap})\) for the occupancies of the three nonlower
points. The occupancy-independent cap lemmas from
[C1_ZERO_LOWER.md](C1_ZERO_LOWER.md) give
\(R\le2,\ L_{\rm cap}\le1,\ T\le3\). Two right-cap points forbid
a left-cap point and allow at most one top-cap point. A left-cap
point allows at most one top-cap point, and any right-cap point
allows at most two top-cap points. Together with
\[
U+R+T+L_{\rm cap}=3,\qquad U\le1,
\]
these leave exactly the following nine rows.

| Occupancy \((U,R,T,L_{\rm cap})\) | Complete exclusion |
|---|---|
| \((1,2,0,0)\) | [C1_ONE_LOWER_RIGHT_PAIR.md](C1_ONE_LOWER_RIGHT_PAIR.md) |
| \((0,2,1,0)\) | [C1_ONE_LOWER_RIGHT_PAIR.md](C1_ONE_LOWER_RIGHT_PAIR.md) |
| \((1,1,1,0)\) | Theorem 1 above |
| \((1,1,0,1)\) | Theorem 1 above |
| \((1,0,1,1)\) | Theorem 1 above |
| \((1,0,2,0)\) | [C1_ONE_LOWER_TOP_TRIANGLE.md](C1_ONE_LOWER_TOP_TRIANGLE.md) for a triangular top hull; [C1_ONE_LOWER_CONVEX_TOP.md](C1_ONE_LOWER_CONVEX_TOP.md) for a quadrilateral top hull |
| \((0,1,2,0)\) | [C1_ONE_LOWER_RIGHT_TOP_TRIANGLE.md](C1_ONE_LOWER_RIGHT_TOP_TRIANGLE.md) for a triangular top hull; [C1_ONE_LOWER_EIGHT_HULL.md](C1_ONE_LOWER_EIGHT_HULL.md) for a quadrilateral top hull |
| \((0,1,1,1)\) | [C1_ONE_LOWER_EIGHT_HULL.md](C1_ONE_LOWER_EIGHT_HULL.md) |
| \((0,0,3,0)\) | [C1_ONE_LOWER_CONVEX_TOP.md](C1_ONE_LOWER_CONVEX_TOP.md) |

For two top-cap points, “top hull” means the convex hull of those
points together with \(D,F\). Both anchors are hull vertices, so
the triangular and quadrilateral alternatives are exhaustive.
With one point in each cap, the five anchors and three cap points
are all hull vertices, giving the eight-vertex case in the table.
The three-top theorem includes every possible top hull.

Each listed row is therefore excluded in its entirety. The
companion checker also verifies this nine-row enumeration directly
from the stated integer occupancy restrictions. This proves
Theorem 2.



