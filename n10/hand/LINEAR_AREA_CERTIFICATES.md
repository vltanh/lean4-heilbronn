# Exact linear certificates in actual triangle areas

This is a reusable proof rule. It converts already proved actual-area
relations and immutable interval bounds into a finite rational contradiction
or a new necessary area bound. It does not by itself close a geometric
placement family.

Let \(X_1,\ldots,X_n\) be the named actual unsigned triangle areas, with
proved rational bounds
\[
 l_i\le X_i\le u_i.
\]
An exact zero affine test may also be included, with both bounds zero.
Every interval endpoint must cite an earlier proof record. When a newly
derived endpoint is used later, it receives a new record identifier; its
old sources are retained.

## 1. Four affine bounds for a product

For \(l_X\le X\le u_X\), \(l_Y\le Y\le u_Y\), define
\[
\begin{array}{ll}
 L_0=l_XY+l_YX-l_Xl_Y,&
 L_1=u_XY+u_YX-u_Xu_Y,\\
 U_0=u_XY+l_YX-u_Xl_Y,&
 U_1=l_XY+u_YX-l_Xu_Y.
\end{array}
\]
Then \(L_0,L_1\le XY\le U_0,U_1\). The complete proof is the four
nonnegative factorizations
\[
\begin{aligned}
 XY-L_0&=(X-l_X)(Y-l_Y),\\
 XY-L_1&=(u_X-X)(u_Y-Y),\\
 U_0-XY&=(u_X-X)(Y-l_Y),\\
 U_1-XY&=(X-l_X)(u_Y-Y).
\end{aligned}                                      \tag{1}
\]
No positivity of the endpoints is required for these identities; their
stated interval order suffices.

Suppose a recorded, geometrically justified identity is
\[
 \sum_j\varepsilon_j X_jY_j=0,\qquad
 \varepsilon_j\in\{-1,1\}.
\]
For either orientation of this identity, replace each positive product
by either of its upper affine bounds and each negative product by either
of its lower affine bounds. The resulting affine expression \(F\)
is nonnegative. Indeed every replacement increases its term, and the
original oriented sum is zero.

This applies to the signed five-label and six-label determinant identities
in [AREA_RELATIONS.md](AREA_RELATIONS.md), after all required actual
orientation signs have been recorded. No convexity or containment is
assumed for these identities. Each particular affine factor records the
identity, its orientation, every chosen \(L_0,L_1,U_0,U_1\), and the exact
source bounds appearing in those choices.

Actual fan identities and signed four-point identities give affine
nonnegative factors in either direction directly. Actual quadrilateral
occupancy costs, barycentric inequalities and other proved affine area
inequalities can be included with their own complete geometric witnesses.

## 2. Positive weighted combinations

Suppose the printed affine factors \(F_1,\ldots,F_m\) are all nonnegative
under a fixed geometric case. Let \(w_j\ge0\) be exact rational
multipliers, usually positive integers, and expand
\[
 W=\sum_j w_jF_j=c_0+\sum_i c_iX_i.
\]
The exact interval upper bound is
\[
 \mathcal U(W)=c_0+
 \sum_{c_i>0}c_i u_i+\sum_{c_i<0}c_i l_i.           \tag{2}
\]
Every feasible configuration satisfies \(0\le W\le\mathcal U(W)\).
A strictly negative rational value of (2) is therefore a contradiction.

The certificate consists of the complete factors, their source records,
the nonnegative multipliers, the expanded affine sum, all endpoint records
used in (2), and its exact rational value. Direct reconstruction of these
items proves the result; the process used to find the multipliers is not
a premise.

## 3. Certificates for a new area bound

The same principle can strengthen an interval instead of ending a case.
Choose a target area \(T\), a sign \(\delta\in\{-1,1\}\), and \(N>0\).
Form the printed affine expression
\[
 W=N\delta T+\sum_jw_jF_j.
\]
Since the sum of the nonnegative factors is nonnegative,
\[
 N\delta T\le W\le\mathcal U(W),
 \qquad
 \delta T\le\frac{\mathcal U(W)}{N}.                 \tag{3}
\]
For \(\delta=1\) this is an upper bound on \(T\); for \(\delta=-1\)
it is the lower bound \(T\ge-\mathcal U(W)/N\).
An upper result may be rounded up and a lower result down to a fixed
rational mesh. Such outward rounding preserves (3).

All factors and endpoints used in this step must be proved before the
new target record is introduced. Subsequent product envelopes may use
the new record, but may not use the future result as one of its own
premises. The resulting dependency graph is finite and acyclic.

## 4. Scope of numerical discovery and exact checking

A numerical linear-programming routine can suggest factors, objectives,
or multipliers. The mathematical certificate is the recovered exact
rational data satisfying (1)--(3), with the complete earlier geometry
and immutable interval proofs. Numerical feasibility, approximate
infeasibility, an unrounded dual vector, or a search termination is not
a certificate.

The optional standard-JavaScript checker
[check_linear_area_certificates.js](check_linear_area_certificates.js)
verifies the four identities (1). Each concrete proof must additionally
reconstruct its own factor witnesses, weighted expansion and exact
endpoint calculation.


## 5. A product inequality from two nested occupied fans

Let \(ABC\) be positively oriented, let \(X\) be strictly inside \(ABC\),
and let \(Y\) be strictly inside \(ABX\). All five points are actual.
Write the positive doubled areas
\[
\begin{gathered}
 S=[ABC],\quad T=[ABX],\quad b=[BCX],\quad c=[CAX],\\
 \alpha=[BXY],\quad\beta=[XAY],\quad\gamma=[ABY].
\end{gathered}
\]
Thus \(S=T+b+c\) and \(T=\alpha+\beta+\gamma\). The signed
determinant identity
\[
 T[CXY]=-c\alpha+b\beta                              \tag{4}
\]
follows by expanding the two sides, or by using the barycentric
coordinates of \(Y\) in \(ABX\).

First suppose \([CXY]<0\), and set \(d=-[CXY]>0\). Then (4) gives
\[
 Tc=Td+\beta(b+c)+\gamma c.                         \tag{5}
\]
For any already proved nonnegative lower bounds
\(d\ge d_0,\ \beta\ge\beta_0,\ \gamma\ge\gamma_0\), the exact remainder is
\[
\begin{aligned}
 Tc-\bigl((d_0-\beta_0)T+\beta_0S+\gamma_0c\bigr)
 &=T(d-d_0)+(\beta-\beta_0)(b+c)
       +(\gamma-\gamma_0)c\\
 &\ge0.                                           \tag{6}
\end{aligned}
\]
If instead \([CXY]>0\), put \(d=[CXY]\). The parallel identity is
\[
 Tb=Td+\alpha(b+c)+\gamma b,
\]
so (6) applies after replacing the face \(c\) by \(b\) and the lower
bound for \(\beta\) by the lower bound for \(\alpha\).

In particular, when all actual doubled triangle areas are at least \(s\),
the negative-sign case yields
\[
 c(T-s)\ge sS,
\]
and the positive-sign case yields \(b(T-s)\ge sS\).

To obtain a nonnegative *affine* factor from (6), replace its product
\(Tc\), or \(Tb\), by either upper envelope \(U_0,U_1\) from Section 1.
Every such factor records the outer triangle, the two strict fan
placements, the sign of \(CXY\), all named areas, the three immutable
lower-bound records, and the two endpoint records for its product
envelope. These premises are geometric and exact; finding the factor
numerically adds no assumption.

The optional checker also expands (5), its positive-sign counterpart,
and both remainders (6) after the affine normalization
\(A=(0,0),B=(1,0),C=(0,1)\).
