# Geometry for two lower points, two central points, and one cap point

This note records necessary conditions for the C1 counts
\((k,j,r,t,l)=(2,2,1,0,0)\) and \((2,2,0,1,0)\).
It does not yet exclude either count. No numerical feasibility result
or unprinted orientation is a premise.

Use actual anchors

\[
 O=(0,0),\ H=(0,h),\ C=(c,0),\ D=(1,d),\ F=(f,1),
 \qquad d\le h,\ f\le c,
\]

with two actual points \(Y=(u,v),Z=(z,w)\) inside \(OHC\),
two actual points \(P=(p,q),Q=(r,t)\) inside \(HCDF\), and
one actual point \(R=(j,k)\) either in the right cap
\(CD(1,0)\) or the top cap \(DF(1,1)\), on the exterior
side of its actual contact edge. All ten points lie in the closed
unit square, are distinct, and every actual unsigned doubled
triangle area is at least \(s=93/1000\).

Put \(\rho=347/500\). The established two-interior-point
triangle cost and two-interior-point quadrilateral cost give

\[
 hc>\rho,\qquad W=1-(h-d)(c-f)\ge8s.                 \tag{1}
\]

## 1. Exhaustive label choices

Choose \(Y\) with the smaller barycentric coordinate at \(O\)
in the lower triangle. Ties may be resolved arbitrarily. Thus

\[
 hu+cv-hz-cw\ge0.                                  \tag{2}
\]

The point \(Z\) is outside \(HCY\): a point inside that fan
has strictly smaller \(O\)-barycentric coordinate than \(Y\).
The two exhaustive possibilities are therefore

\[
 Z\in OHY\quad\text{or}\quad Z\in OCY.              \tag{3}
\]

No point lies on a fan edge, because that would be a collinear
actual triple. Independently exchange \(P,Q\) to arrange
\([OPQ]>0\).

For the right-cap count retain both alternatives in (3).
For the top-cap count transpose the square once, if necessary,
to arrange \(Z\in OHY\). This exchanges \(H,C\) and \(D,F\),
preserves the top cap, and preserves the choice of \(Y\).
The central pair may be relabeled again after this transposition.
No ordering of \(h,c\) is imposed.

All five free points have positive coordinates. Their rays at
\(O\) have distinct slopes by actual clearance. Consequently
the thirty permutations of \(Y,Z,P,Q,R\) respecting the chosen
lower order and \(P<Q\) are exhaustive strict angular orders.
Each such order states the ten corresponding signs \([OUV]>0\).

## 2. The actual exterior polygon and fixed signs

The right-cap exterior polygon has strict convex cyclic order
\(O,C,R,D,F,H\); the top-cap polygon has order \(O,C,D,R,F,H\).
Replacing the relevant contact edge by the two edges through its
cap point gives a simple polygon. All turns are positive. The only
new nontrivial turns can be written, respectively, as

\[
\begin{aligned}
 [RDF]&=(1-j)(1-d)+(d-k)(1-f),\\
 [CDR]&=(1-c)(k-d)+d(1-j),\\
 [RFH]&=(j-f)(1-h)+f(1-k).
\end{aligned}                                      \tag{4}
\]

The first line is used for the right cap, where \(k\le d\).
The last two are used for the top cap, where \(j\ge f,k\ge d\).
All products are nonnegative and actual clearance excludes zero.
The cap turn itself is the negative of its strict outward edge test.
Thus the displayed simple polygons are strictly convex. Their six
vertices are extreme among all ten actual points. The other four
points lie inside them.

For either lower point \(V\), the signs on the anchor edges
\(OH,OC,HC,HD,HF,CD,CF,DF\) are
\(-,+,-,-,-,+,+,+\). For either central point they are
\(OH<0,OC>0,HC>0,HF<0,CD>0,DF>0\).
The cap point has the following signs:

| Cap | OH | OC | HC | HF | CD | DF | OD | OF | HD | CF |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Right | − | + | + | − | − | + | − | − | − | − |
| Top | − | + | + | − | + | − | + | − | + | − |

These follow by affinity on the indicated corner triangle. For
\(V=Y,Z\) and \(T=P,Q,R\), affinity on \(OHC\) also gives
\([HVT]>0,[CVT]<0\). The additional cap cross signs are
\([DVR],[FVR]>0\) for the right cap, and
\([DVR]<0,[FVR]>0\) for the top cap.

## 3. Complete rational boxes

The actual anchor triangles give
\(s\le d,f\le1-s\). For example
\([HDF]=1-h+f(h-d)\le1-d\), and
\([CDF]=1-c+d(c-f)\le1-f\).

In the right-cap case actual clearances give

\[
 d(j-c)-(1-c)k\ge s,\quad ck\ge s,\quad
 dc(j-c)\ge s,\quad dc(1-c)\ge s.                  \tag{5}
\]

Put

\[
 b=8841/10000,\quad h_0=\rho/b,\quad
 d_0=\frac{s}{\rho(1-\rho)},\quad
 j_0=\rho+\frac{s}{(1-s)\rho},\quad
 k_0=s/b,\quad k_1=1-s-\frac{s}{1-\rho}.
\]

Then a complete weakened contact/cap box is

\[
 h\in[h_0,1],\quad c\in[\rho,b],\quad
 d\in[d_0,1-s],\quad f\in[s,b],\quad
 j\in[j_0,1],\quad k\in[k_0,k_1].                 \tag{6}
\]

Indeed \(c(1-c)\) decreases for \(c\ge\rho>1/2\), and

\[
 (1-s)b(1-b)-s=-6225867/10^{11}<0,
\]

so (5) gives \(c<b\) and hence \(h>h_0\).
The same monotonicity gives \(d\ge d_0\).
The function \(x+s/((1-s)x)\) increases for \(x\ge\rho\),
because \((1-s)\rho^2>s\), giving \(j\ge j_0\).
The remaining bounds follow directly from (5).
The same clearances give useful coupled affine bounds

\[
 j-c\ge\frac{s}{b(1-s)},\qquad d-k\ge\frac{s}{1-\rho}.
\]

For the first, divide \(dc(j-c)\ge s\) by
\(dc\le b(1-s)\). For the second use
\((1-c)(d-k)\ge s\), obtained from the cap clearance and
\(j\le1\), and then \(1-c\le1-\rho\).

For the top-cap case use

\[
 h,c\in[\rho,1],\quad d,f\in[s,1-s],\quad
 j,k\in[s+s/(1-s),1].                              \tag{7}
\]

Here the actual cap clearance yields
\((1-d)(j-f)\ge s\) and \((1-f)(k-d)\ge s\), which
also imply \((1-d)(1-f)\ge s\).
They further give the coupled affine bounds
\(j-f\ge s/(1-s)\) and \(k-d\ge s/(1-s)\).

For the lower fan \(Z\in OHY\), all the following are valid:

\[
\begin{gathered}
 hu\ge3s,\ h(u-z)\ge2s,\ h(c-u)\ge2s,\
 c(h-v)\ge4s,\ h(c-z)\ge2s,\ c(h-w)\ge2s,\\
 u+v,z+w\le1-s.
\end{gathered}                                     \tag{8}
\]

The first two divide \(OHY\) at \(Z\). The third adds the
actual \(HCY,OCY\) clearances. The fourth adds \(HCY\) and
\(OHY\). The last two product bounds add the analogous
clearances for \(Z\). The coordinate sums follow by writing
each point in barycentric coordinates in \(OHC\): its
\(HC\) clearance is no greater than \(1-x-y\).
Thus use

\[
 (u,v,z,w)\in[3s,1-2s]\times[s,1-4s]
              \times[s,1-4s]\times[s,1-2s].        \tag{9}
\]

More sharply, write \(H_{\max},C_{\max}\) for the contact upper
endpoints in (6) or (7), and put \(a=s/H_{\max},b'=s/C_{\max}\).
The same inequalities give the box actually used in new stages:

\[
 (u,v,z,w)\in[3a,C_{\max}-2a]\times[b',H_{\max}-4b']
       \times[a,C_{\max}-4a]\times[b',H_{\max}-2b'].
\]

For the other lower fan, exchange the two coordinate roles in
(8): \(cv\ge3s,c(v-w)\ge2s,h(c-u)\ge4s\), with the
other bounds unchanged in their reflected form. Its box is
\([s,1-4s]\times[3s,1-2s]\times[s,1-2s]\times[s,1-4s]\).
Its sharper version is
\([a,C_{\max}-4a]\times[3b',H_{\max}-2b']
\times[a,C_{\max}-2a]\times[b',H_{\max}-4b']\).

Each central coordinate lies in \([s,1-s]\), by the actual
\(OH,OC\) clearances and the two identities in Section 1 of
[C1_TWO_LOWER_TOP_GEOMETRY.md](C1_TWO_LOWER_TOP_GEOMETRY.md).
Equations (6) or (7), the appropriate lower box, and these four
central intervals cover the full continuous domain.
The central coordinate lower endpoints can similarly be sharpened
to \(a,b'\), respectively.

There is a shorter right-cap angular catalogue. The actual triangle
\(OCR\) has upper bound

\[
 [OCR]=ck\le b k_1=90640879/170000000<\rho.           \tag{10}
\]

For each \(V=Y,Z,P,Q\), the fixed exterior edge tests give
\([OCV],[CRV]>0\). Thus \(V\) lies inside \(OCR\) exactly
when its ray precedes the ray of \(R\). Two such points would
contradict (10) and the two-interior-point triangle cost. Hence
\(R\) is first or second in the angular order. For either fixed
lower fan there are exactly twelve orders respecting this rule
and the two pair orders. These twelve orders form an exhaustive
catalogue for that fan; the other eighteen of the original thirty
are uniformly excluded by (10).
The stronger actual bound \([OCR]<21/50\) from
[SIDE_CAP_BASE_TRIANGLES.md](SIDE_CAP_BASE_TRIANGLES.md) is also
available in scalar and physical factors. That lemma requires only
the right-cap and actual-anchor hypotheses present here.

## 4. Reusable actual-area factors

All triangle and quadrilateral occupancy costs, distributed-mesh
rules, signed identities, and endpoint-support rules retain the
actual-point premises in their cited notes. In particular, for
each \(T=P,Q,R\), the actual convex quadrilateral \(OCTH\)
contains \(Y,Z\), so

\[
 hx_T+cy_T\ge8s.                                  \tag{11}
\]

This quadrilateral's doubled area can exceed one; three occupants
would imply its larger lower cost, not an automatic contradiction.
There is no unproved sign assigned to \(HPQ\) or \(CPQ\).

For a witnessed positive convex quadrilateral \(ABCD\), write
\(X=[ABC],Y=[ABD],Z=[ACD],V=[BCD]\), with lower bounds
\(l_X,l_Y,l_Z,l_V>0\). Put
\(C_0=\max(q,l_X+l_Z,l_Y+l_V)\), where \(q\) is a proved
quadrilateral area floor, and
\(M=\min(l_Xl_Y,l_Zl_V)\). Then

\[
 XY\ge C_0(Y-Z)+M.                                \tag{12}
\]

For \(Y-Z\ge0\), use
\(XY=(X+Z)(Y-Z)+ZV\). For \(Y-Z\le0\), use
\(XY\ge l_Xl_Y\ge M\). Thus (12) requires no sign
assumption on that difference. A valid upper cap for either
positive factor may replace it on the left. For the anchor
triangles these include \([HCD]\le h,[HCF]\le c,
[HDF]\le1-d,[CDF]\le1-f\).

For the right cap there are further affine caps on every exterior
actual triangle. The complete coordinate orders are

\[
 x_O=x_H\le x_F\le x_C\le x_R\le x_D,\qquad
 y_O=y_C\le y_R\le y_D\le y_H\le y_F.
\]

For any three exterior labels, their actual doubled triangle area
is at most the difference of their largest and smallest x-coordinates,
and also at most the analogous y-difference. To prove this, enclose
them in the rectangle having those coordinate ranges. Affinity in
each vertex coordinate shows that the largest unsigned doubled area
of a triangle in that rectangle is its width times its height.
Each range is at most one. These upper caps assert no area floor
for a virtual rectangle. For example \(A(HDR)\le h-k\),
\(A(CDR)\le1-c\), \(A(CFR)\le j-f\), and
\(A(RDF)\le1-k\). They may replace a positive factor on the
left of (12) or of a witnessed support inequality.

The ordinary support factors use the same cap replacement and the
proved one- or two-occupant support rates, including the uniform
two-occupant rate \(1142/125\). Only an actually witnessed convex
pentagon supplies its rate \(11\). This applies to any five actual
labels whose ten triple signs prove a strict positive cyclic order,
including pentagons with vertices among \(Y,Z,P,Q\); those vertices
need not be extreme in the entire configuration. For cyclic
\(ABCDE\), the precise relation is
\(A(ABE)A(ADE)\ge11s(A(ABE)-A(ABD))\), as proved in
[N7_THREE_FIVE_UPPER_HEIGHT.md](N7_THREE_FIVE_UPPER_HEIGHT.md).
The spread rate \(6\) is
used only for \(HCDF\), whose area is at most one; other hulls
use \(1457/250\). Neither an empty opposite cap nor a missing
transposition supplies a physical factor.

The signed barycentric rule also supplies physical factors before
projecting to a scalar endpoint. If an actual \(V\) is inside
\(T_0T_1T_2\), fix completed scalar bounds \(N\ge A(T_0T_1T_2)>0\),
\(b_i\le A(T_jT_kV)\), and signed vertex bounds
\(l_i\le D_i=[IJT_i]\le u_i\). Put \(R=N-\sum b_i\ge0\).
Then the two factors
\[
 N[IJV]-\sum b_iD_i-R\min l_i,\qquad
 -N[IJV]+\sum b_iD_i+R\max u_i
\]
are nonnegative by
[N6_BTTT_REMAINING_AFFINE_BOUNDS.md](N6_BTTT_REMAINING_AFFINE_BOUNDS.md),
rule (6). Each is quadratic in the physical coordinates. A repeated
label makes the corresponding determinant exactly zero. Every source
names the barycentric relation and its immutable final scalar endpoints.
If \(\sum b_i>N\), the fan identity already contradicts those bounds.

A witnessed support relation \(XY\ge\kappa(X-Z)\) also gives
two quadratic physical factors. For the completed area endpoints,
the upper product envelopes are
\(U_0=u_XY+l_YX-u_Xl_Y\) and
\(U_1=l_XY+u_YX-l_Xu_Y\). Thus
\(U_i-\kappa X+\kappa Z\ge0\). Their nonnegativity follows
from \((u_X-X)(Y-l_Y)\ge0\) and
\((X-l_X)(u_Y-Y)\ge0\), respectively.
The named support relation and the two final endpoint references
are fixed before each physical factor is formed.

## 5. Affine caps and acyclic coordinate-to-area stages

Suppose a proved box gives \(h\ge h_0,c\ge c_0,d\le d_1,f\le f_1\).
The following stronger affine caps are available:

\[
\begin{aligned}
 A(HCD)&\le(1-c_0)h+c_0d,\\
 A(HCF)&\le(1-h_0)c+h_0f,\\
 A(HDF)&\le1-(1-f_1)h-f_1d,\\
 A(CDF)&\le1-(1-d_1)c-d_1f.
\end{aligned}                                                    \tag{13}
\]

The four cap remainders are, in the same order,
\((c-c_0)(h-d),(h-h_0)(c-f),(f_1-f)(h-d),(d_1-d)(c-f)\).
Every factor is nonnegative by the box or the contact orders.
Thus these affine caps may replace the corresponding positive
actual area in the support inequalities or in (12).
For a right-cap box with \(c\le c_1\), there are also

\[
 A(OCR)\le c_1k,\qquad
 A(CDR)\le d_1(j-c)-(1-c_1)k.                     \tag{14}
\]

Their remainders are \((c_1-c)k\) and
\((d_1-d)(j-c)+(c_1-c)k\), respectively.

Every signed determinant polynomial is affine in each individual
coordinate. Its exact minimum and maximum on a coordinate box
therefore occur among that polynomial's box vertices. A known signed
actual area has the larger of its occupancy cost and this minimum
as a lower bound, and the smaller of its established cap and this
maximum as an upper bound. Literal vertex residuals can check both
claims using rational arithmetic.

If physical inequalities first prove a smaller coordinate box,
the same vertex calculation may initialize a new scalar area stage.
That stage must retain the complete earlier scalar input and physical
refinement proving its coordinate box. Subsequent area bounds may
only use this stage or earlier stages. This order prevents a new
area bound from being used to prove its own input coordinate endpoint.
No iteration or numerical feasibility status alone proves a terminal.
An actual-sign child may retain its parent's final proved coordinate
box, since all parent sign assumptions remain in force. The literal
`parentBoxRef` identifies that earlier complete refinement stage;
the child starts from its intersection with the coarse-domain box
and any explicit coordinate-case box. Each such parent stage is
included among the hand tables, even when the parent itself splits.

The same child may retain the parent's final scalar area endpoints.
An `ancestor_area` initial witness names the parent context and its
immutable final endpoint version; `parentAreaRef` identifies the source
stage. The actual triangle's orientation must agree in both contexts,
and every parent branch assumption must remain in force. The child
intersects this earlier interval with its freshly proved occupancy and
box interval. The parent scalar derivation is retained in full up to
the referenced endpoint, so no child endpoint is used to prove itself.

A coordinate split at a rational value retains both closed cases
\(x_i\le a\) and \(x_i\ge a\), with the inherited case box recorded
explicitly. These cases cover equality. Within a case box, if the
box upper cap for \(+[ABC]\) is strictly below \(s\), actual clearance
forces \([ABC]<0\); the analogous negative cap forces positive sign.
If both signed caps are below \(s\), that case is impossible. This
rule applies only to a triple of actual configuration points.

## 6. Quadrilateral capacity propagation

Suppose all four triple tests prove a strict positive convex actual
quadrilateral \(ABCD\). Its doubled area polynomial is
\([ABC]+[ACD]\). A joint box-vertex maximum for this polynomial
is an upper cap; each residual is that maximum minus the vertex value.
If all four vertices belong to \(\{H,C,D,F,P,Q\}\), containment
in the actual quadrilateral \(HCDF\) also gives the cap one.
If they belong to \(\{O,H,C,Y,Z\}\), containment in the actual
triangle \(OHC\) gives the same cap. These containments assert
the entire actual hull's area cap, without treating a container
vertex not in the configuration as actual.

The established actual quadrilateral floors for one, two, or three
named strict occupants are \(449/1000,8s,93/91\), respectively;
see [QUADRILATERAL_AREA_SUPPORT.md](QUADRILATERAL_AREA_SUPPORT.md).
For more than three occupants the third floor still applies by
selecting three. A cap smaller than the applicable floor is a
contradiction. If the cap already forbids one more occupant, then
three known inward edge tests for another actual point force its
fourth test outward. Equality on that edge is excluded by actual
triangle clearance. Every use retains the positive convex order,
the known occupants, all three inward tests, and the current box
with its earlier proof or explicit case assumptions.

Optional degree-four positive combinations may also use
\(\mathord{[ABC]}^2-s^2\ge0\) for any three distinct actual points.
This follows directly from \(|\mathord{[ABC]}|\ge s\), independently
of whether that triple's orientation has been determined. The literal
primitive `unsigned_ABC` is the square of the actual signed determinant
polynomial minus \(s^2\). Products of these primitives, proved endpoint
gaps, and the earlier nonnegative physical factors are valid whenever
their complete polynomial expansion is retained; the degree alone
does not change the positive-combination argument.

On a proved box write \(x_i=a_i+(b_i-a_i)y_i\), where
\(0\le y_i\le1\). A literal rational polynomial \(q(y)\) also gives
the nonnegative factor \(q(y)^2\), multiplied if desired by named
nonnegative physical factors or endpoint gaps. A combination row with
`square` prints every coefficient of \(q\); `multiplier` names those
additional factors, or is null. No spectral or numerical positivity
test is needed for such a row: its sign follows from the square and
the separately proved multipliers.

After every factor is expanded in these normalized variables, an
integer-weighted sum \(S(y)=\sum_m a_my^m\) has upper bound
\(a_{\varnothing}+\sum_{m\ne\varnothing,\ a_m>0}a_m\).
Indeed each nonconstant monomial lies in \([0,1]\). A strictly negative
printed bound contradicts the nonnegativity of every summand. All
weights, square roots, multipliers, coefficients, and box endpoints
must be retained literally for this conclusion.

## 7. Seven-point endpoint constraints

The triangles
\(G_H=\operatorname{conv}\{O,H,(1/h,0)\}\) and
\(G_C=\operatorname{conv}\{O,C,(0,1/c)\}\) each have doubled area one.
They contain the five distinct actual points \(O,H,C,Y,Z\), since
\(hc\le1\) and \(Y,Z\in OHC\). Their third vertices need not be actual
or belong to the original square. An affine map of determinant of
absolute value one sends either ghost triangle to the reference
triangle of [THREE_CORNERS.md, Sections 5–9](THREE_CORNERS.md).
The two indicated endpoints are actual. Thus the seven-point endpoint
theorem excludes two additional actual points in either closed ghost
triangle, at the same clearance \(s=93/1000\).

For an additional point \(V=(x_V,y_V)\), put
\[
 E_H(V)=y_V+h^2x_V-h,\qquad E_C(V)=x_V+c^2y_V-c.
\]
At most one member of \(\{D,F,P,Q,R\}\) has \(E_H(V)\le0\), and
the same assertion holds separately for \(E_C\). These are assertions
about closed ghost triangles; equality does not require a new actual
orientation assumption.

Fix an earlier proved coordinate box. If \(x_V\ge a>0\),
\(y_V\ge b\), and \(h\in[h_0,h_1]\), the exact box minimum is
\[
 \ell_H(V)=b+a\tau^2-\tau,\qquad
 \tau=\max(h_0,\min(h_1,1/(2a))).
\]
Indeed the expression increases with \(x_V,y_V\), and the remaining
quadratic is convex with its minimum at the displayed clamped value.
For \(\ell_C\), interchange \(x,y\) and replace \(h\) by \(c\).
All these constants are rational and fixed before the physical stage.

For either side and any named subset \(I\) whose minima satisfy
\(\ell(V)<0\), one obtains the nonnegative cubic primitive
\[
             1+\sum_{V\in I}\frac{E(V)}{-\ell(V)}\ge0.
\]
At most one summand can be negative, and that summand is at least
\(-1\). The literal `endpoint7_H_WORD` or `endpoint7_C_WORD` names
the side and subset. Its `c1-endpoint7-witnesses` row records every
fixed negative minimum and the contact interval in the already proved
context box. All subsets
of size at least two may be used. These repeated-coordinate cubics
are terminal factors only; they are excluded from the multilinear
coordinate contractor. The ghost doubled area remains exactly one.

A multiaffine quadratic upper envelope is also available. If the
contact \(t\) ranges over \([a,b]\), use
\(t^2\le(a+b)t-ab\). For the H side put
\[
 U_H(V)=y_V+(a+b)hx_V-abx_V-h.
\]
Its remainder is
\(U_H(V)-E_H(V)=x_V(h-a)(b-h)\ge0\).
The C-side formula interchanges the coordinates. Replacing every
\(E(V)\) in the preceding primitive by \(U(V)\) therefore gives
another nonnegative factor. The name `endpoint7q_SIDE_WORD` and the
same fixed-minimum witness record this envelope. These factors have
full quadratic expansions and immutable earlier box endpoints.
When the literal expansion has no repeated coordinate, the complete
multiaffine endpoint-line rule may also use it for coordinate refinement;
the original repeated-coordinate cubic remains excluded.
