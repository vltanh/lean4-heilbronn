# One lower C1 point excludes a pair in the right cap

Use the C1 anchors

\[
O=(0,0),\quad C=(c,0),\quad D=(1,d),\quad
F=(f,1),\quad H=(0,h),
\]
\[
0<d\le h<1,\qquad0<f\le c<1,\qquad f\le d.
                                                               \tag{1}
\]

The last order can always be arranged by transposing the square.
Suppose the minimum actual triangle area is at least
\(A_0=(9\sqrt{65}-55)/320\). Write brackets for signed
doubled areas, and put

\[
s=\frac8{73}<2A_0,\qquad
K=4+2\sqrt3,\qquad\rho=\frac{49}{60}<Ks.
\]

**Theorem 1.** If exactly one of the four free points lies in
\(OHC\), the right exterior cap \(CD(1,0)\) contains at
most one free point.

This excludes both complete right-pair rows of the one-lower C1
class. The argument allows every full hull and additional square-side
contacts. It does not by itself exclude the other one-lower rows.

The proof uses fifteen fixed rational cubic inequalities, with all
1,525 positive terms supplied in
[c1_one_lower_right_pair_certificates.json](c1_one_lower_right_pair_certificates.json).
The exact verifier is
[check_c1_one_lower_right_pair.py](check_c1_one_lower_right_pair.py).

## 1. Only two geometric rows remain

Suppose the right cap contains two free points. Lemma 1 of
[C1_ZERO_LOWER.md](C1_ZERO_LOWER.md), which does not require the
zero-lower hypothesis, labels them as an outer point \(X\) and
an inner point \(Y\), with

\[
Y\in CDX\cap ODX,
\qquad d,h\ge\rho,\qquad c,f\le1-3s,
\qquad d(1-c)\ge3s.                                    \tag{2}
\]

Let \(L\) be the one point in \(OHC\), and let \(Q\)
be the remaining free point. The general cap restrictions in Theorem 2
of that note show that the left cap is empty and that the right cap
cannot contain a third point. The hypothesis already specifies the
unique lower point. Consequently either

\[
\begin{array}{ll}
\text{upper row:}&Q\in HCDF,\\
\text{top row:}&Q\in DF(1,1)\setminus DF.
\end{array}                                               \tag{3}
\]

The two right-cap points fill the below-\(OD\) fan capacity in
equation (4) of `C1_ZERO_LOWER.md`. Hence both \(L,Q\) lie
strictly above \(OD\).

Two anchor triangles now have particularly small areas:

\[
[HDF]\le1-d\le1-\rho<3s,
\qquad [OFH]=hf\le f\le1-3s<\rho<Ks.                  \tag{4}
\]

Thus \(HDF\) is empty of all further points, and \(OFH\)
has capacity at most one. In the upper row, the first conclusion
places \(Q\) in \(HCD\).

The lower point gives \(hc\ge3s\), and therefore

\[
c\ge3s,
\qquad
L=(\ell_x,\ell_y):\quad
\ell_x,\ell_y\ge s,\quad c-\ell_x,h-\ell_y\ge2s,
\quad\ell_x+\ell_y\le1-s.                              \tag{5}
\]

For example,
\(h(c-\ell_x)=[HCL]+c\ell_y\ge2s\). Also division of
\([HCL]=hc-h\ell_x-c\ell_y\ge s\) by \(hc\) gives
\(\ell_x/c+\ell_y/h\le1-s/(hc)\le1-s\), which implies
the final bound in (5).

In the top row, the cap area inequality gives the additional bounds

\[
(1-d)(1-f)\ge s,
\qquad
f\le1-\frac{s}{1-\rho}=\frac{323}{803},
\qquad d\le\frac{57}{65}.                              \tag{6}
\]

All other coordinate bounds used below are precisely the general
right-cap, upper-point, and top-cap bounds in Sections 1 and 4 of
`C1_ZERO_LOWER.md`.

## 2. Seven exhaustive five-anchor word cases

Use the five-anchor words of (11)--(12) in `C1_ZERO_LOWER.md`,
in anchor order \((O,C,D,F,H)\). The support-line argument there
applies to the lower point as well. Both right-cap points have word

\[
r(X)=r(Y)=(1,0,4,3,2).
\]

There are exactly two possible words for \(L\in OHC\) above
\(OD\), and three for \(Q\in HCD\) above \(OD\):

| Name | Word |
|---|---|
| \(L_0\) | \((2,3,2,2,1)\) |
| \(L_1\) | \((3,3,2,1,1)\) |
| \(U_0\) | \((2,1,2,3,2)\) |
| \(U_1\) | \((2,2,2,2,2)\) |
| \(U_2\) | \((3,2,2,1,2)\) |

In the top row, \(Q\) has the single cap word
\(T=(2,1,0,4,3)\). The upper pair \((L_1,U_2)\) puts
both points in \(OFH\), contradicting its capacity one in (4).
The complete remaining cases are therefore

\[
\begin{gathered}
(L_0,U_0),\ (L_0,U_1),\ (L_0,U_2),\
(L_1,U_0),\ (L_1,U_1),\\
(L_0,T),\ (L_1,T).                                      \tag{7}
\end{gathered}
\]

An actual pair triangle at an anchor has its sign determined whenever
the two word entries differ: the sign of \([V_iRS]\) is the
sign of \(r_i(S)-r_i(R)\). For the equal-word pair \(X,Y\),
the containments in (2) give

\[
[OXY]>0,\qquad[CXY]>0,\qquad[DXY]<0.                    \tag{8}
\]

These rules fix the initial signs of every triangle used by a
certificate. The finite further splits are:

* In \((L_0,U_0)\), first split by \([XYQ]\). On its
  negative side split by \([FYQ]\). If that sign is positive,
  split by \([OLQ]\), and on its negative side split by
  \([HXY]\). On the positive side of the initial \([XYQ]\)
  split, split by \([OLQ]\). This gives six terminal cells.
* In \((L_1,U_0)\), split by \([XYQ]\).
* In \((L_1,U_1)\) and \((L_0,T)\), split by \([HXY]\).
* Keep the other three cases without a further split.

Each stated split includes both signs. Zero signs are impossible
under the positive minimum-area hypothesis. Thus (7) is covered
by exactly

\[
6+1+1+2+2+2+1=15
\]

terminal cells. The coefficient file records the same finite trees.

## 3. The explicit nonnegative quantities

Index the full configuration as

\[
(O,C,D,F,H,X,Y,L,Q),
\]

and use the coordinate order
\((h,c,d,f,x_X,y_X,x_Y,y_Y,\ell_x,\ell_y,q_x,q_y)\).
All twelve coordinates belong to \([0,1]\).

Start the ordered affine-factor list with

\[
\begin{gathered}
h-\rho,\ c-3s,\ 1-h,\ 1-3s-c,\ d-\rho,\ 1-s-d,\\
f-s,\ 1-3s-f,\ h-d,\ c-f,\ d-f.
\end{gathered}
\]

In the top row append \(323/803-f,57/65-d\). For each of
\(X,Y\), in that order, append

\[
x-s,\ y-s,\ 1-x,\ d-y-s,\ x-c-s.
\]

Next append the five expressions in (5), in their displayed order.
Finally append \(q_x-s,q_y-s\), followed in the upper row by
\(1-s-q_x,1-s-q_y\), and in the top row by
\(1-q_x,1-q_y,q_x-f-s,q_y-d-s\).
These are all nonnegative by (2), (5), (6), and the previously proved
regional coordinate bounds. There are 30 factors in the upper row
and 34 in the top row.

The quadratic-cost list begins with

\[
hc-3s,\qquad d(1-c)-3s,\qquad 3s-[DFH],\qquad
\rho-[OFH].                                              \tag{9}
\]

In the upper row append
\(W-4s\), where \(W=1-(h-d)(c-f)\): joining \(Q\)
to the four vertices of \(HCDF\) gives four positive actual
triangles, each of doubled area at least \(s\).

Now append every signed actual-triangle cost supplied by the cell.
The order is the same as in Section 6 of `C1_ZERO_LOWER.md`:
lexicographic triples with at least two anchors, then lexicographic
free pairs and anchors, then the additional signs in path order.
Use a lower bound of \(s,3s,\rho\), according as zero, one,
or two further points are certified inside by all three edge signs.
These bounds follow from the actual-area threshold, subdivision,
and the two-interior triangle theorem. Global C1 triangle capacity
two excludes a cell certifying three further interior points.

The one additional cubic cost is

\[
dc(1-c)-s\ge0,                                           \tag{10}
\]

which is the side-cap identity (5) in `C1_ZERO_LOWER.md`.

## 4. Exact contradiction in every cell

Each supplied certificate is a positive rational linear combination
of products of at most three affine factors, quadratic costs,
quadratic costs times one affine factor, and (10). The integer weights
are divided by 4096. Every summand is nonnegative in its cell.

Expand a resulting cubic as
\(P(z)=p_0+\sum_{\alpha\ne0}p_\alpha z^\alpha\). On
\([0,1]^{12}\),

\[
P(z)\le p_0+\sum_{\alpha\ne0}\max(p_\alpha,0).
\]

For all fifteen certificates this exact rational upper bound is
negative. The largest is

\[
-\frac{77021124287}{77678914560}<-\frac34.
\]

Thus each sum is at once nonnegative and negative. All fifteen
terminal cells are impossible, proving both rows (3) and Theorem 1.
\(\square\)

## Verification

[check_c1_one_lower_right_pair.py](check_c1_one_lower_right_pair.py)
independently enumerates the two lower and three upper words,
reconstructs all seven cases, and checks every edge of the fifteen-cell
sign cover. It uses the shared exact polynomial arithmetic and
five-anchor word definitions from
[check_c1_zero_lower_certificates.py](check_c1_zero_lower_certificates.py).
It reconstructs every cost and expands all fifteen fixed cubic sums
using only rational arithmetic. The complete table contains 1,525
positive terms. No optimizer or coordinate subdivision is used in
verification.
