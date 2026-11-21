# Common geometry for two lower points and at least two top-cap points

All points are in the closed unit square, and every unsigned actual doubled
triangle area is at least \(s=93/1000\). Use the C1 anchors

\[
 O=(0,0),\quad H=(0,h),\quad C=(c,0),\quad D=(1,d),\quad F=(f,1),
 \qquad d\le h,\quad f\le c.
\]

Two points \(Y,Z\) are in the actual triangle \(OHC\). The remaining
three points are either all in the top cap \(DF(1,1)\), or one is in
\(HCDF\) and two are in that top cap. This common note supplies the continuous geometry, every factor, and
every finite inference rule for the separate fixed-table proofs. The
all-top exclusion is assembled in C1_TWO_LOWER_THREE_TOP.md. The
one-central alternative is assembled, with its complete three-root
table, in C1_TWO_LOWER_CENTRAL_TWO_TOP.md.

## 1. The complete initial boxes

Put \(\rho=347/500\). The two-interior-point triangle theorem gives
\(hc>\rho\), hence \(h,c>\rho\). The anchor clearances give
\(d,f\ge s\). Write \(n=3\) or 2 for the number of top points and set

\[
 \lambda_3=(1457/250)s,\qquad \lambda_2=3s.
\]

The top container with actual endpoints \(D,F\) has doubled area
\(\Omega=(1-d)(1-f)\). Its five-point endpoint cost is at least
\((3+2\sqrt2)s>\lambda_3\) when \(n=3\); its four-point endpoint
cost is at least \(3s\) when \(n=2\). Therefore

\[
 d,f\in\left[s,1-\frac{\lambda_n}{1-s}\right].
 \tag{1}
\]

Choose \(Y=(u,v)\) with the smaller \(O\)-barycentric coordinate
among the lower pair, and let \(Z=(z,w)\) be the other. Then \(Z\)
is outside \(HCY\). Transpose the square if necessary so that
\(Z\in OHY\). This uses the symmetry once, and imposes no further
ordering on \(h,c,d,f\) or on the upper points. It gives

\[
\begin{gathered}
 hu\ge3s,\quad h(u-z)\ge2s,\quad h(c-u)\ge2s,\\
 c(h-v)\ge4s,\quad h(c-z)\ge2s,\quad c(h-w)\ge2s,\\
 hu+cv-hz-cw\ge0,\qquad u+v,z+w\le1-s.
\end{gathered}
 \tag{2}
\]

The first two inequalities divide \(OHY\) at \(Z\); the others
follow by adding the actual \(HC,OH,OC\) clearances. The weighted
coordinate order is the choice of \(Y\). For the two sum bounds,
write a lower point as \(\alpha O+\beta H+\gamma C\): then
\(1-x-y\ge hc\alpha=A(HCT)\ge s\).

Consequently the initial lower box is

\[
 u\in[3s,1-2s],\ v\in[s,1-4s],\
 z\in[s,1-4s],\ w\in[s,1-2s].
 \tag{3}
\]

For a top point \(T=(x,y)\),

\[
 -[DFT]=(1-d)(x-f)-(1-f)(1-y)
        =(1-f)(y-d)-(1-d)(1-x)\ge s.
\]

Thus

\[
 x,y\in\left[s+\frac{s}{1-s},1\right].
 \tag{4}
\]

A central point has both coordinates in \([s,1-s]\). The lower
bounds are its actual \(OH,OC\) clearances. The upper bounds follow
from

\[
\begin{aligned}
 (1-f)[CDT]+(1-c)[DFT]&=[CDF](1-x_T),\\
 (1-d)(-[HFT])+(1-h)[DFT]&=[HDF](1-y_T),
\end{aligned}
\]

and \([CDF]\le1-f,[HDF]\le1-d\).
Equations (1), (3), (4), \(h,c\in[\rho,1]\), and the central box
are the complete coarse box; all later boxes are proved refinements.

## 2. Exhaustive upper orders and all initial signs

Label the three upper points \(P,Q,R\) in increasing angular order
at \(O\). Every determinant with \(O\) is nonzero, so this ordering
is strict. In the all-top alternative its region word is TTT. In
the one-central alternative the exhaustive words are UTT,TUT,TTU.
The letter U denotes the central region and T the top cap. The
transposition used for the lower pair does not remove any of these
upper orders.

The common initial determinant signs are

```text
-OHC -OHD -OHF +OCD +OCF +ODF +HCD +HCF +HDF +CDF
+OYZ -HYZ +OPQ +OPR +OQR +ODZ -OFY
```

For a lower point the signs of the listed edges are:

| Edge | OH | OC | HC | HD | HF | CD | CF | DF |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| Y or Z | − | + | − | − | − | + | + | + |

For each upper point, \(OH<0,OC>0,HC>0,HF<0,CD>0\).
A central point has \(DF>0\). A top point has
\(DF<0,OD>0,OF<0,HD>0,CF<0\). These are the ordinary
oriented edge tests for the pentagon and its top cap.
For a lower point \(V\) and any upper point \(T\),
\([HVT]>0,[CVT]<0\); for a top point also
\([DVT]<0,[FVT]>0\). To check the cross signs, evaluate the
relevant affine determinant at \(O,H,C\) and use the stated
upper-region edge signs.

The signs \(ODZ>0,OFY<0\) in the common list deserve explanation.
Equation (1) gives
\(d,f\le1-3s/(1-s)=628/907<\rho\). Thus the actual triangles
\(OCD,OHF\) each contain at most one further point. If \(ODZ<0\),
the order \(OYZ>0\) would put both lower points inside \(OCD\).
If \(OFY>0\), both would instead be inside \(OHF\). These are the
two contradictions establishing the signs.

## 3. Exact finite geometric rules

A split is always into the two signs of a displayed actual determinant.
There are no zero-sign or boundary alternatives, since an actual
collinear triple is already excluded by the positive threshold.
A printed trace uses only the following rules.

* `P abcde token` applies
  \([abc][ade]-[abd][ace]+[abe][acd]=0\). Two summands have the
  same known sign and the third has exactly one unknown determinant;
  its sign is therefore forced to be the printed token.
* `M ABCYZX e` uses three actual interior points of \(ABC\), with
  \(Z\in ABY\) and \(X\in ACY\), and
  \(e=-\operatorname{sign}[ABC]\). Clustering is excluded by
  CLUSTERED_TRIANGLE.md. The distributed mesh therefore has the
  complete twenty signs obtained from the template below by
  substituting \(O,H,C,Y,Z,X\mapsto A,B,C,Y,Z,X\) and multiplying
  every sign by \(e\).
* `V T ABC IJ e` uses a known strict containment \(T\in ABC\).
  Every vertex is on the displayed weak side \(e\) of the actual
  line \(IJ\), and at least one is strictly on that side. Positive
  barycentric weights put \(T\) strictly on the same side.
* `C ABC I T token b` uses the already known interior points \(I\)
  and the stated area upper bound \(b\). This gives capacity
  \(|I|\), by the costs below (or universal capacity three).
  Two inward edge tests for \(T\) are known, so the third must be
  the displayed outward sign.

The clockwise mesh template is

```text
-OHC -OHY -OHZ -OHX +OCY +OCZ +OCX +OYZ -OYX -OZX
-HCY -HCZ -HCX -HYZ -HYX +HZX +CYZ +CYX +CZX +YZX
```

The actual triangle costs used throughout are

\[
 t_0=s,\quad t_1=3s,\quad t_2=\rho,\quad t_3=.823.
 \tag{5}
\]

The rounded constants are below
\((4+2\sqrt3)s\) and \((11+3\sqrt5)s/2\), respectively.
A triangle cannot contain four actual points.

Every static triangle upper bound has a short explicit monotonicity
certificate in the table headed `c1top-upper`. Its entries give the
region word, actual triangle, orientation, exact upper bound and a
sequence of coordinate endpoints. A token `h+` replaces \(h\) by
its coarse-box upper endpoint, and `h-` by its lower endpoint.
At each replacement the remaining affine partial derivative has the
corresponding nonnegative or nonpositive sign throughout its box.
This is checked by substituting the appropriate endpoints in its
linear terms. After the final replacement, the determinant equals
the displayed rational bound. Thus the area bounds are explicit
finite monotonicity calculations, with no optimization premise.

The geometric terminals are `cluster ABC Y ABY ZX` (three interior
points with two in one fan), `area_cap ABC I b t` (actual contained
points require cost \(t>b\)), `four ABC I`, an inconsistent
five-point identity, a contradictory mesh sign, or an interval
contradiction described next. All containments are proved by every
oriented edge test.

A terminal `convex5top ABCDE` displays a cyclic convex order of
the five actual points \(D,F,P,Q,R\) in the top container. Apply
the endpoint support normalization of THREE_CORNERS.md, Section 1.
Its doubled area \(\Omega'\) is no greater than the original
\(\Omega\le1\), and the normalized threshold is at least
\(s/\Omega'\ge s>1/11\). Four actual contacts are the base
endpoints and one contact on each other side. Since all five actual
points are extreme, the remaining point is outside the contact
quadrilateral, namely in cell V of that note's complete table.
Its Section 2 excludes cell V above \(1/11\). This is the
contradiction recorded by this terminal.

## 4. All conditional box refinements

The coordinate order is

```text
h c d f u v z w p q l m r t
```

with \(P=(p,q),Q=(l,m),R=(r,t)\). Each line in a leaf's
`c1top-bounds` table gives a rule, witness, zero-based coordinate
index, direction, and exact new endpoint. Apply the lines in order
to the coarse box of Section 1. A hyphen denotes an empty occupant
list.

* `T OHV I i lower b` uses the indicated interior points of \(OHV\)
  and (5). Since its area is \(hx_V\), dividing its cost by the
  current upper bound for one positive coordinate bounds the other
  below. For `OCV`, use \(cy_V\). If the other coordinate equals
  one, the cost itself is the lower bound.
* `S V I i upper b` uses the actual triangle \(DFV\), where V is a
  top point and I is its indicated interior set. If its cost is
  \(t\), then \((1-d)(1-f)\ge t\). Divide by the current upper
  bound for \(1-f\) or \(1-d\) to obtain the printed upper bound
  for \(d\) or \(f\).
* `X V I i lower b` and `Y V I i lower b` use
  \(x_V\ge f+t/(1-d)\) and \(y_V\ge d+t/(1-f)\), respectively,
  with the current lower bounds for \(d,f\).
* `O dh` or `O fc` propagates \(d\le h\) or \(f\le c\).
* `F` propagates exactly (2): the four lower bounds are
  \(3s/h_{\max},s/c_{\max},s/h_{\max},s/c_{\max}\);
  the four upper bounds are
  \(c_{\max}-2s/h_{\max},h_{\max}-4s/c_{\max},
    u_{\max}-2s/h_{\max},h_{\max}-2s/c_{\max}\).

Every denominator is positive before it is used. A terminal `box`
means that these justified inequalities give a lower endpoint larger
than the upper endpoint for some coordinate. Otherwise the leaf's
printed box is an outward rational rounding of the resulting box.

An optional `H` line records the stronger top-triple support cost.
If the five actual top-side points have triangular hull \(DFV\)
with the other two inside it, then \(\Omega\ge\rho\).
If their hull is the actual quadrilateral \(DABF\), with the fifth
point in either contact ear \(DAB\) or \(FAB\), the same bound
follows from the endpoint support normalization and
\((\sqrt{3s}+\sqrt s)^2=(4+2\sqrt3)s>\rho\).
If both ears contain it, the support cost is at least \(12s>1\),
which is impossible. The support triangle lies in the original top
container. The witness in the line lists the actual hull, occupant
and ear; all those signs must already be known. The resulting
\(d,f\) divisions are exactly the rule `S` with this stronger cost.

## 5. All nonnegative factors in the fixed sums

For a leaf's printed box, use
\(L_{2i}=a_i-\ell_i,L_{2i+1}=u_i-a_i\), for \(0\le i<14\).
The additional factors \(L_{28},\ldots,L_{36}\), in order, are

\[
 h-d,\ c-f,\ u-z-2s,\ c-u-2s,\ h-v-4s,\
 c-z-2s,\ h-w-2s,\ 1-s-u-v,\ 1-s-z-w.
 \tag{6}
\]

Their signs follow from (2) and \(h,c\le1\). The common named
factors are:

| Name | Definition |
|---|---|
| `KLOW` | \(hc-\rho\) |
| `FAN` | \(hu-3s\) |
| `CENT` | \(hu+cv-hz-cw\) |
| `TOPCOUNT` | \((1-d)(1-f)-\lambda_n\) |
| `QCENT` | \(1-(h-d)(c-f)-.449\), when the central point is present |
| `QUADV` | \(hx_V+cy_V-8s\), for \(V=P,Q,R\) |

The central factor is the one-interior quadrilateral bound for
\(HCDF\). The last row uses the actual convex quadrilateral
\(OHVC\), which contains both lower points.

A token `+ABC` or `-ABC` means the indicated signed actual determinant
minus \(s\). Its sign must already be known. The following factors
include the actual interior witnesses in their names:

| Name | Definition |
|---|---|
| `C_ABC_I` | \(A(ABC)-t_{|I|}\) |
| `Q_ABCD_I` | \([ABC]+[ACD]-q_{|I|}\), for a positive convex actual quadrilateral |
| `DROP_OHV_I` | \(x_V-t_{|I|}\), with the listed points inside \(OHV\) |
| `DROP_OCV_I` | \(y_V-t_{|I|}\), with the listed points inside \(OCV\) |

The dropped-coordinate inequalities use \(h,c\le1\). Every interior
witness is checked by all edge signs. The quadrilateral costs are

\[
 q_1=.449,\quad q_2=8s,\quad q_3=93/91,\quad
 q_4=1.102,\quad q_5=1.517,\quad q_6=1.646.
 \tag{7}
\]

The first three are the established one-, two-, and three-interior
bounds, including SQUARE_QUADRILATERAL_THREE.md. For four or more,
an actual diagonal partitions the points into triangles of capacity
three; the possible counts give, respectively, the lower costs
\(t_1+t_3, t_2+t_3,2t_3\) displayed in (7).

For a top point V and an indicated interior set I of the actual
triangle \(DFV\), put \(t=t_{|I|}\). The four factors
`TX_V_I`, `TY_V_I`, `TPX_V_I`, `TPY_V_I` are

\[
 x_V-f-t,\quad y_V-d-t,\quad
 (1-d)(x_V-f)-t,\quad (1-f)(y_V-d)-t.
 \tag{8}
\]

They follow by dropping the nonnegative terms from the two signed
area expressions before (4), and then using \(1-d,1-f\le1\).
The optional factor `TOP3_witness` is \(\Omega\) minus the
stronger cost proved by its hull witness in Section 4.

For `SP_ABCD_UV_IJe`, both actual diagonals of the positive convex
quadrilateral separate the two indicated interior points, \(IJ\)
is one diagonal, and \(e=\pm1\). Its polynomial is

\[
 A(ABCD)-rs+e([JUV]-[IUV]),
 \tag{9}
\]

where \(r=1457/250<3+2\sqrt2\) by the universal theorem in
QUADRILATERAL_SPREAD.md. If the hull is \(HCDF\), use \(r=6\):
its area is at most one, so that theorem's stronger threshold
hypothesis is satisfied.

Finally `M_ABCYZX_e_j` uses the fully proved distributed mesh.
Set \(A_0=-e[ABC]\) and
\(E_0=-e[ABZ],E_1=e[ACX],E_2=-e[BCY]\). For
\(j=0,1,2,3,4\), the factor is, respectively,

\[
\begin{gathered}
 A_0-E_0-(3927/500)s,\quad A_0-E_1-(3927/500)s,\quad
 A_0-E_2-(3927/500)s,\\
 \tfrac85s-e[YZX],\qquad
 -e[BYZ]-e[AZX]+e[CYX]-(2427/500)s.
\end{gathered}
 \tag{10}
\]

These are the orientation-adjusted ear, center and connector bounds
in C1_PENTAGON_GEOMETRY.md, Sections 1--2. Every outer triangle is
an actual triangle in the original unit square, so the bounds apply
to every repeated mesh used here.

## 6. Meaning of a printed exact sum

A leaf's positive integer combination \(W\) of products of the
nonnegative factors satisfies \(W\ge0\). Its degree is at most
three. Substitute \(a_i=\ell_i+z_i\), where
\(0\le z_i\le u_i-\ell_i=d_i\). If the expansion is
\(W=\sum c_\alpha z^\alpha\), then

\[
 W\le c_0+\sum_{\alpha\ne0,\ c_\alpha>0}
       c_\alpha\prod_i d_i^{\alpha_i}.
 \tag{11}
\]

Each leaf prints this exact rational upper bound. It is negative,
contradicting \(W\ge0\). The companion checker reconstructs each
factor and expands every displayed sum with rational arithmetic;
the proof does not depend on discovery software or a floating-point
feasibility result.
