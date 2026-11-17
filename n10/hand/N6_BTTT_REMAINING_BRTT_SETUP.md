# Actual-area setup for the BRTT six-contact count

This note establishes hypotheses and usable inequalities for the
remaining BRTT count. The complete exclusion using these hypotheses
is assembled in [N6_BTTT_REMAINING_BRTT.md](N6_BTTT_REMAINING_BRTT.md).
Use the normalized six actual contacts and closed square-side
conventions of [N6_PLACEMENTS.md](N6_PLACEMENTS.md), and put
\(s=93/1000\). All actual unsigned doubled triangle areas are
at least \(s\). Put \(\alpha=1037/10000\), \(K=149/20\),
and \(G=1457/250\). The other actual points are

\[
 P=(p,q)\in\operatorname{int}HABC,\qquad
 Q=(u,v)\in CE(1,0),\qquad
 R=(r,w),S=(j,k)\in EF(1,1).
\]

Cap membership is on the strict exterior side of the actual chord;
the outer square faces are included. No order between \(e,f\)
is assumed. Transposition exchanges the occupied right cap with
the left cap, so it does not justify such an order in this count.

## Exhaustive first alternatives

Order the two top points so \(ERS>0\). Their rays from \(E\)
are distinct because \(s>0\). The two signs of \(FRS\) are
exhaustive:

| Actual sign | Actual top hull | Top-container lower bound |
| --- | --- | --- |
| \(FRS<0\) | \(ERF\), with \(S\) strictly inside | \((1-e)(1-f)\ge3s\) |
| \(FRS>0\) | the convex quadrilateral \(ERSF\) | \((1-e)(1-f)\ge4s\) |

These are the complete edge tests and endpoint-support alternatives
of [N6_CORNER_CONTAINERS.md](N6_CORNER_CONTAINERS.md), Section 4.
The right-cap point supplies the convex actual quadrilateral
\(BCQE\) in the virtual endpoint triangle \(B,E,(1,0)\).
Its nontriangular endpoint bound gives

\[
 e(1-b)\ge4s. \tag{1}
\]

If \(BEP<0\), the square bounds put \(P\) inside the same
closed endpoint container \(B,E,(1,0)\): its sloping-side test is
\((1-b)q<e(p-b)\). That container then contains the five actual
points \(B,C,E,Q,P\), including its two actual endpoints. The
five-point endpoint bound strengthens (1) to \(e(1-b)\ge Gs\).
In particular, \(BEP<0\) is impossible in the convex top-pair
row: its lower bound for \(e\) exceeds that row's upper bound by

\[
 \frac{Gs}{1-\alpha}
 -\left(1-\frac{4s}{1-\alpha}\right)
 =\frac{4426}{224075}>0.
\tag{1a}
\]

For the lower point, the two actual ears and the central alternative
of [ONE_LOWER_POINT.md](ONE_LOWER_POINT.md) remain exhaustive.
Both ear signs cannot be negative. If either \(ACP<0\) or
\(HBP<0\), then \(hc\ge Ks\), where \(K=149/20\).
In every case \(hc\ge Gs\), where \(G=1457/250\).
When \(ACP,HBP>0\), the central-coordinate inequalities and
the two weak contact-order alternatives of that note apply without
reflecting this asymmetric count.

## Contact and coordinate consequences

Put \(\alpha=1037/10000\). The actual \(ABC,ABH\)
clearances give \(a,b>\alpha\), hence \(e,f>\alpha\).
If \(\tau\) is \(3s\) or \(4s\) from the row above, set

\[
 U=1-\frac{\tau}{1-\alpha},\quad
 E_0=\frac{4s}{1-\alpha},\quad
 B_1=\min\left(U,1-\frac{4s}{U},1-4s-\tau\right),\quad
 C_1=1-\frac{s}{U}.
\]

The top-container bound, (1), and the actual cap clearance
\(-[CEQ]\ge s\) imply

\[
 a,e,f\le U,\qquad b\le B_1,\qquad
 e,h\ge E_0,\qquad c\le C_1.
\tag{2}
\]

The last bound follows from \(e(1-c)\ge s\), while
\(e\le U\). The sharper third bound for \(b\) follows from
the exact top/right container budget

\[
 (1-e)(1-f)+e(1-b)
 =1-b-(f-b)(1-e)\le1-b.
\tag{2a}
\]

Thus \(b\le349/1000\) in the triangular row, and
\(b\le32/125\) in the convex row. The top cost and
\(e\ge E_0\) additionally give
\(f\le1-\tau/(1-E_0)\). The anchor areas also give

\[
 a\ge\frac{s}{C_1-\alpha},\quad
 c\ge\max\left(\rho,\alpha+\frac{s}{U}\right),\quad
 h\ge\max\left(\rho,E_0,\alpha+\frac{s}{B_1}\right),
\tag{3}
\]

where \(\rho=Gs\), improved to \(Ks\) in a proved ear.
All denominators are strictly positive for each displayed row.
Every free point obeys \((h-a)x\ge s\) and
\((c-b)y\ge s\), giving the corresponding rational coordinate
floors from (2)--(3). The lower clearance gives

\[
 p+q\le1-\frac{s}{hc}\le1-\frac{s}{C_1},\qquad
 p\le C_1-s,\qquad q\le1-\frac{s}{C_1}.
\tag{4}
\]

For the sum, subtract \(hc-hp-cq\ge s\) from
\(hc(1-p-q)\): the difference is
\(h(1-c)p+c(1-h)q\ge0\). The individual bounds follow from
\(hp+cq\le hc-s\). Positive lower bounds for the other
coordinate may strengthen the sum bound in a fixed initial box.

The right clearance has the exact form

\[
 -[CEQ]=e(u-c)-(1-c)v\ge s.
\]

It therefore proves all four nonnegative physical factors

\[
 u-c-s,\quad e-v-s,\quad e(u-c)-s,\quad
 (1-c)(e-v)-s. \tag{5}
\]

For \(T=R,S\), its actual \(EFT\) occupancy cost \(t\)
similarly proves \((1-e)(x_T-f)\ge t\) and
\((1-f)(y_T-e)\ge t\). In the triangular row the outer
point \(R\) uses \(t=3s\), and the inner point \(S\)
uses \(t=s\).

## Stronger triangular weights from the occupied right cap

Using \(f\ge b\) in (1) gives the exact common ceiling

\[
 \Omega=(1-e)(1-f)
 \le(1-e)(1-b)\le1-b-4s
 <1-\alpha-4s=\frac{5243}{10000}<\frac{17}{3}s.
\tag{6}
\]

Thus, when \(S\) is inside \(ERF\), each of its three
actual fan weights is greater than \(3/17\). The four affine
bounds in
[N6_TOP_PAIR_BARYCENTRIC_BOUNDS.md](N6_TOP_PAIR_BARYCENTRIC_BOUNDS.md)
apply. More generally, every witnessed fan lower cost may be divided
by the common ceiling \(5243/10000\), or by a smaller proved
fixed-box maximum of \(\Omega\). Such a ceiling must be fixed
before any coordinate refinement that uses the resulting weighted
factor. Each fan has its own actual occupancy witness.

If \(BEP<0\), the stronger right endpoint cost \(Gs\)
gives instead
\(\Omega\le1-\alpha-Gs=44287/125000\). An explicitly
weakened ceiling \(5243/10000\) remains valid in that case.

## Two explicit coarse-box versions

The tables record a `Coarse version` in every numeric stage.
Version 2 uses \(B_1\) above and
\(f_{\max}=\min(U,1-\tau/(1-E_0))\). Version 1 uses
the weaker choices

\[
 B_1=\min(U,1-4s/U),\qquad f_{\max}=U.
\]

Both versions use the remaining formulas below. They differ only
in these proved choices; neither imposes an extra hypothesis.
Set

\[
\begin{aligned}
 A_0&=\max(\alpha,s/(C_1-\alpha)),\\
 C_0&=\max(\rho,\alpha+s/U),\\
 H_0&=\max(\rho,E_0,\alpha+s/B_1),\\
 D_x&=s/(1-A_0),\qquad D_y=s/(C_1-\alpha),\qquad
 V=1-s/C_1.
\end{aligned}
\]

Start with \(P_x=D_x,P_y=D_y\). If the two central signs
\(ACP,HBP>0\) have been proved, replace them by

\[
 P_x=\max\left(D_x,\frac{s(C_1+\alpha)}{C_1-\alpha}\right),
 \qquad
 P_y=\max\left(D_y,\frac{s(1+A_0)}{C_1(1-A_0)}\right).
\]

These are precisely the monotone central-coordinate floors of
[ONE_LOWER_POINT.md](ONE_LOWER_POINT.md), Section 4, with
\(h\le1,c\le C_1,a\ge A_0,b\ge\alpha\).
The complete coarse intervals are

| Coordinate | Lower endpoint | Upper endpoint |
| --- | --- | --- |
| \(a\) | \(A_0\) | \(U\) |
| \(b\) | \(\alpha\) | \(B_1\) |
| \(c\) | \(C_0\) | \(C_1\) |
| \(e\) | \(E_0\) | \(U\) |
| \(f\) | \(\alpha\) | \(f_{\max}\) |
| \(h\) | \(H_0\) | \(1\) |
| \(p\) | \(P_x\) | \(\min(C_1-s,V-P_y)\) |
| \(q\) | \(P_y\) | \(\min(V,V-P_x)\) |
| \(u\) | \(C_0+s/U\) | \(1\) |
| \(v\) | \(D_y\) | \(U-s/(1-C_0)\) |

For each top point \(T=R,S\), put \(t=3s\) when the
other top point is known inside \(EFT\), and \(t=s\)
otherwise. Its lower coordinate endpoints are

\[
 \max(D_x,\alpha+t/(1-E_0)),\qquad
 \max(D_y,E_0+t/(1-\alpha)).
\]

Its upper endpoints begin at one. If it is known inside the other
actual top triangle, replace them by
\(1-s/(1-E_0)\) and \(1-s/(1-\alpha)\), respectively.
The barycentric weight at \(F\) proves the first bound, and
the weight at \(E\) proves the second, as in
[N6_TOP_TRIPLE_SETUP.md](N6_TOP_TRIPLE_SETUP.md), equation (8).

Every later initial box is exactly its version's coarse box
intersected with the named completed parent box, coordinate by
coordinate. There are no coordinate cuts. The physical factors
use only this established initial box when a fixed endpoint ceiling
is required. Scalar vertex and containing-cap maxima instead use
the stage's completed box. This order prevents a final endpoint
from justifying its own refinement.

## Fixed-box support envelopes

The actual convex quadrilateral and pentagon endpoint-support rows
of the existing proof rules have the form
\(XY\ge c(X-Z)\), where \(X,Y,Z\) are unsigned areas of
specified actual triangles and \(c>0\) is the proved support
cost. If the proved initial box supplies \(X\le N_X\), then

\[
 N_XY-c(X-Z)
 =(N_X-X)Y+\bigl(XY-c(X-Z)\bigr)\ge0.
\tag{7}
\]

Here \(Y\ge s>0\), and \(N_X\) may be the smaller of one
and the exact multiaffine maximum of the oriented actual area
\(X\) on that initial box. The ceiling is fixed before using
(7) for coordinate refinement. Its polynomial is a linear
combination of actual doubled areas, hence multiaffine. Every use
requires the actual convex hull, occupant allocation, support rate,
and fixed ceiling to be printed. This does not assert any new
convexity or occupant placement. The case \(N_X=1\), with
the actual pentagon \(PCQEH\), is already used in
[N6_ONE_LOWER_SIDE_PAIR_TOP.md](N6_ONE_LOWER_SIDE_PAIR_TOP.md).

The initial actual signs are the six inward anchor-edge tests at
each point, except \(CEQ,EFR,EFS<0\), together with
\(HCP<0\), \(HCQ,HCR,HCS>0\), \(HEQ<0\),
\(HER,HES>0\), \(CFQ,CFR,CFS<0\),
\(HPQ,HPR,HPS>0\), \(CPQ,CPR,CPS<0\),
\(EQR,EQS<0\), \(EPR,EPS<0\), \(FPR,FPS>0\),
\(ERS>0\), and the selected sign of \(FRS\). The cross signs
at \(E,F\) follow from the fixed top-cross identities of
[N6_BTTT_REMAINING_ITTT_ROUTE.md](N6_BTTT_REMAINING_ITTT_ROUTE.md):
the lower point is also inside the anchor hexagon, so \(EFP>0\)
and \(p,q<1\). The other cross signs are the opposite-side \(HC\)
ray tests and the corner-cap identities of
[N6_CORNER_CONTAINERS.md](N6_CORNER_CONTAINERS.md), Section 5.
Every further sign requires a displayed inference or a binary split.

## Literal physical witnesses

The `Nonnegativity premise` cell is `brtt` followed by an explicit
JSON array. Its first entry is the tag in the table below; subsequent
entries are the named witnesses. The separate polynomial cell prints
the complete polynomial, and must equal the expression justified by
those witnesses. Every witness must follow from the preceding
geometric and bound premises.

Write \(A_T\) for the unsigned area of the actual triple \(T\),
\(t_n=s,3s,Ks,Js\) for \(n=0,1,2,3\), and
\(R_0=3hc-ac-bh-ab\).

| Tag | Following entries and justified polynomial |
| --- | --- |
| `actual-area` | Actual triple and all its proved occupants: \(A_T-t_n\). |
| `anchor-cap` | Actual triple, containing anchor triangle, zero-based cap index, occupants: the selected affine cap minus \(t_n\). The cap order is the displayed order in N6_TOP_TRIPLE_SETUP.md. |
| `contact-order` | One of `ha,ea,he,fb,cf`: respectively \(h-a,e-a,h-e,f-b,c-f\). |
| `endpoint-lower` | Proved floor \(\rho\): \(hc-\rho\). |
| `lower-quad` | `BRTT`: \(hc-ab-(24/5)s\), since \(P\) is inside \(HABC\). |
| `upper-quad` | `BRTT`: \(1-(h-e)(c-f)-2s\), the sum of two actual triangle floors. |
| `top-hull` | The sign of \(FRS\): \(\Omega-\tau\). |
| `right-support` | Actual hull `BCQE`; in version 2 also the additional occupant `P` or `null`, and the cost \(r_c\): \(e(1-b)-r_c\). Version 1 uses \(r_c=4s\); version 2 uses \(r_c=Gs\) exactly when \(BEP<0\), otherwise \(4s\). |
| `top-right-budget` | The same proved right cost \(r_c\): \(1-b-r_c-\Omega\), by (2a). |
| `right-clearance` | `Q` and one of `x,y,px,py`: the four expressions in (5), in that order. |
| `lower-sum` | No further entry: \(1-s-p-q\). |
| `central-lower-x`, `central-lower-y` | The proved central signs: \(h(c-b)p-s(c+b)\), \(c(h-a)q-s(h+a)\), respectively. |
| `central-budget` | Fixed initial-box \(M=c_{\max}h_{\max}\): \(M(h-a)(c-b)-sR_0\). |
| `central-sum` | The same \(M\): \(1-s/M-p-q\). |
| `central-floor` | Coordinate axis 0 or 1 and its fixed initial-box monotone floor \(L\): \(p-L\) or \(q-L\), using ONE_LOWER_POINT.md, equation (10). |
| `weighted-barycentric` | Outer and inner top points, the three actual fan lower costs divided by \(s\), the common ceiling divided by \(s\), and axis 0--3: the four fully expanded weighted coordinate factors of N6_TOP_WEIGHTED_BARYCENTRICS.md. The common ceiling is fixed on the initial box. |
| `support-envelope` | Actual support witness, actual triples \(X,Y,Z\), and fixed initial ceiling \(N_X\): expression (7). The witness is the cyclic pentagon, or the cyclic quadrilateral with its actual occupants and support rate. |
| `earlier-area` | Immutable preceding reference, actual triple, direction, and value: \(A_T-L\) or \(U-A_T\). |

The `central` tags require both \(ACP,HBP>0\). Every support
witness requires all positive cyclic convexity tests and its printed
strict inward occupant tests. The weighted tags require their own
actual containing top triangle and the three ordered opposite fans.
All these prerequisites are reconstructed in the geometric context
before the polynomial is used.
