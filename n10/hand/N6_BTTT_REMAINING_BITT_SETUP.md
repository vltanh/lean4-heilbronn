# Actual-area setup for the BITT six-contact count

This is a setup note for a remaining placement count, with no
whole-count exclusion claim. Use the normalized six contacts and
closed square-side conventions of
[N6_PLACEMENTS.md](N6_PLACEMENTS.md), with every actual unsigned
doubled triangle area at least \(s=93/1000\). Put
\(P\in\operatorname{int}HABC\),
\(Q\in\operatorname{int}HCEF\), and put \(R,S\) in the
top cap \(EF(1,1)\), strictly on its corner side of \(EF\).

## Exhaustive top and symmetry alternatives

Choose the two top labels so \(ERS>0\). The sign \(FRS<0\)
puts \(S\) inside the actual triangle \(ERF\), giving
\(\Omega=(1-e)(1-f)\ge3s\). The sign \(FRS>0\)
gives the convex actual quadrilateral \(ERSF\), giving
\(\Omega\ge4s\). These are the two exhaustive nonzero
determinant alternatives of
[N6_CORNER_CONTAINERS.md](N6_CORNER_CONTAINERS.md), Section 4.

The complete BITT count is invariant under actual transposition
\(T(x,y)=(y,x)\), with

\[
 (A',B',C',E',F',H')=(T(B),T(A),T(H),T(F),T(E),T(C)),
 \qquad P'=T(P),\quad Q'=T(Q).
\]

It preserves the lower and upper placements and exchanges
\((e,f)\). In the triangular alternative keep
\((R',S')=(T(R),T(S))\):
\(E'R'S'=-[FRS]>0\) and \(F'R'S'=-[ERS]<0\).
In the convex alternative exchange them:
\((R',S')=(T(S),T(R))\), giving
\(E'R'S'=[FRS]>0\), \(F'R'S'=[ERS]>0\).
Thus each whole hull alternative is invariant, and \(e\le f\)
may be assumed, including equality.

Since \(\Omega\le(1-e)^2\), the exact comparisons

\[
 3s-(1-59/125)^2=27/125000>0,\qquad
 4s-(1-391/1000)^2=1119/10^6>0
\]

give closed usable ceilings \(a,e\le59/125\) in the triangular
alternative and \(a,e\le391/1000\) in the convex alternative.
These are consequences of the invariant normalization, with no
additional coordinate chamber selected.

## Actual coordinate and source bounds

Use \(\alpha=1037/10000\), \(G=1457/250\),
\(K=149/20\), \(\delta=s/(1-\alpha)\), and
\(\tau=3s\) or \(4s\) according to the top alternative.
The actual anchor clearances give \(a,b>\alpha\).
The top cost gives
\(a,b,e,f\le U=1-\tau/(1-\alpha)\), with the stronger
\(a,e\) ceilings just proved. The lower endpoint container has cost \(\rho=Gs\): the five
actual points \(H,A,B,C,P\) lie in the triangle with actual
endpoints \(H,C\) and the virtual corner \((0,0)\), exactly
as in [N6_TOP_TRIPLE_SETUP.md](N6_TOP_TRIPLE_SETUP.md), Section 2.
This is improved to \(Ks\) in either proved lower ear by
[ONE_LOWER_POINT.md](ONE_LOWER_POINT.md), Section 1, since
\(K<4+2\sqrt3\).
Hence \(c,h\ge\rho\), strengthened by
\(c\ge\alpha+s/a_{\max}\) and
\(h\ge\alpha+s/b_{\max}\).

Every free coordinate is at least \(\delta\). The lower point
satisfies \(p+q\le1-s\); if \(ACP,HBP>0\), both
coordinates are at least \(s(1+\alpha)/(1-\alpha)\).
The corresponding sum bound supplies its individual upper endpoints.
For the upper point \(Q=(u,v)\),

\[
 \delta\le u,v\le1-s.
\]

Indeed, the exact actual identities are

\[
 (1-f)[CEQ]+(1-c)[EFQ]=[CEF](1-u),
\]
\[
 (1-e)(-[HFQ])+(1-h)[EFQ]=[HEF](1-v).
\]

All three relevant upper-quadrilateral inward areas are at least
\(s\). As in
[N6_BTTT_REMAINING_ITTT_ROUTE.md](N6_BTTT_REMAINING_ITTT_ROUTE.md),
any fixed initial-box ceilings \(N_x\ge[CEF]\),
\(N_y\ge[HEF]\) give the nonnegative physical factors

\[
 N_x(1-u)-s(2-c-f),\qquad
 N_y(1-v)-s(2-e-h).
\]

Their endpoint ceilings must be proved before the coordinate
refinement using them. The occupied actual quadrilaterals
\(HABC\) and \(HCEF\) each have area at least \((24/5)s\).
The shared lower-central coordinate, sum and fixed-budget factors
of [ONE_LOWER_POINT.md](ONE_LOWER_POINT.md) apply only after
their two actual central signs have been proved.

For the top pair, the outer actual triangle in the triangular
alternative has area at least \(3s\), and all three of its
actual subtriangle areas are at least \(s\). Since
\(\Omega\le(1-\alpha)^2<9s\), the generic \(1/9\)
affine barycentric bounds of
[N6_TOP_PAIR_BARYCENTRIC_BOUNDS.md](N6_TOP_PAIR_BARYCENTRIC_BOUNDS.md),
Section 1, apply. Stronger weights may use their own proved fan
costs and a fixed initial-box maximum of \(\Omega\).

The fixed region signs are the inward tests of \(HABC\) at
\(P\), of \(HCEF\) at \(Q\), and of the top cap at
\(R,S\). In particular \(HCP<0\) and
\(HCQ,HCR,HCS>0\).

For completeness, put \(D=-[HCP]=hc-hp-cq\ge s\).
The positive coordinates and \(D>0\) give \(p<c\), \(q<h\).
The exact identities

\[
\begin{aligned}
 [HPE]&=D/c+p(e+h/c-h),\
 [HPF]&=fD/c+p(1-h+fh/c),\
 [CPE]&=-eD/h-q(1-c+ec/h),\
 [CPF]&=-D/h-q(c/h-c+f)
\end{aligned}
\]

show that their first two areas are positive and their last two
negative. All displayed remainder coefficients are nonnegative
because \(0<c,h\le1\). Also \([HPC]=D>0\),
\([CPH]=-D<0\),
\([HP(1,1)]=h-q+p(1-h)>0\), and
\([CP(1,1)]=-(c-p)-q(1-c)<0\).
Affinity on the actual upper quadrilateral at \(Q\), and on the
top container at \(R,S\), proves
\(HPQ,HPR,HPS>0\), \(CPQ,CPR,CPS<0\).
The virtual corner is used only for this affine sign calculation;
no actual minimum-area premise is assigned to it.

For either \(X=P\) or \(X=Q\), the anchor edge tests give
\([EFX]>0\). For each top point \(T\), the exact identities

\[
\begin{aligned}
 (1-f)[EXT]&=(1-x_X)[EFT]-(1-x_T)[EFX],\
 (1-e)[FXT]&=(1-y_T)[EFX]-(1-y_X)[EFT]
\end{aligned}
\]

have \([EFT]<0\), \(x_X,y_X<1\), and all corner distances
nonnegative. Thus \(EPR,EPS,EQR,EQS<0\) and
\(FPR,FPS,FQR,FQS>0\), including the closed square-side faces
of \(T\). No additional \(HQ\), \(CQ\), or pair ordering
is prescribed. Actual affinity may use both proved containing
quadrilaterals and the anchor hexagon.

The existing actual-area, support-envelope and polynomial-terminal
rules require their own geometric witnesses and immutable sources.
This setup supplies no unconditional empty-anchor list and excludes
no remaining numerical or sign case by itself.

## Verification status

Independent mathematical review accepts this setup: it checked the
actual transposition and label choices in both top-hull alternatives,
expanded all eight displayed determinant identities independently,
and verified both rational square gaps and every remainder sign,
including the closed top-side faces. This is acceptance of the setup;
a whole BITT exclusion still requires its complete literal case cover.
