# Exact affine bounds in actual triangle areas

This note supplies a certificate rule for the remaining BTTT metric
cases. It does not assert closure of a placement count or of a
particular numerical packet. Every application still needs its
actual-sign witnesses, immutable bound sources, literal expanded
coefficients, positive weights, and exact terminal comparison.

Write \(A_T=|[T]|\) for an actual triangle with three distinct
labels. Suppose independently proved bounds give
\(\ell_T\le A_T\le u_T\). The bounds used below are fixed rational
numbers from completed earlier stages of the same case or one of
its ancestors. Each source has its own immutable identifier.

**Affine bound lemma.** Let finitely many proved nonnegative affine
functions of the actual areas be

\[
 F_i=c_i+\sum_T a_{i,T}A_T\ge0,
\]

and choose positive integers \(n_i\). Expand their sum exactly:

\[
 L=\sum_i n_iF_i=C+\sum_T c_TA_T\ge0. \tag{1}
\]

For a fixed target \(V\), put

\[
 U_{\ne V}=C+\sum_{T\ne V,;c_T>0}c_Tu_T
                    +\sum_{T\ne V,;c_T<0}c_T\ell_T.
\]

Then \(L\le c_VA_V+U_{\ne V}\). Consequently

\[
 c_V>0\Longrightarrow A_V\ge-U_{\ne V}/c_V,
 \qquad
 c_V<0\Longrightarrow A_V\le-U_{\ne V}/c_V. \tag{2}
\]

A lower bound in (2) may be rounded down and an upper bound up.
Alternatively the full ceiling

\[
 U=C+\sum_{c_T>0}c_Tu_T+\sum_{c_T<0}c_T\ell_T<0 \tag{3}
\]

contradicts (1). These assertions follow by multiplying each valid
endpoint bound by its displayed coefficient; the sign of that
coefficient determines which endpoint is an upper bound. No optimum,
feasibility assertion, or numerical tolerance is a premise.

The following are nonnegative affine factors permitted in this rule.
Every geometric witness and bound version must be specified in an
application.

1. A proved area bound gives \(A_T-\ell_T\) or \(u_T-A_T\).

2. An actual fan identity gives either sign of
\(A_{ABC}-A_{ABP}-A_{BCP}-A_{CAP}=0\), when \(P\) is inside
\(ABC\). More generally either sign of the actual four-point
identity

   \[
   [ABC]+[ACD]-[ABD]-[BCD]=0 \tag{4}
   \]

   is affine in unsigned areas after all four actual signs have
   been proved. Its coefficient at \(A_T\) is the displayed
   coefficient in (4) multiplied by the sign of that oriented
   determinant.

3. A proved occupied-quadrilateral area floor gives
\(A_{ABC}+A_{ACD}-q\ge0\), for its printed positive convex hull
\(ABCD\), diagonal \(AC\), actual occupants, and valid cost \(q\).

4. For \(\ell_X\le X\le u_X\) and
\(\ell_Y\le Y\le u_Y\), the four affine product envelopes are

   \[
   \begin{aligned}
   L_0&=\ell_XY+\ell_YX-\ell_X\ell_Y\le XY,\\
   L_1&=u_XY+u_YX-u_Xu_Y\le XY,\\
   U_0&=u_XY+\ell_YX-u_X\ell_Y\ge XY,\\
   U_1&=\ell_XY+u_YX-\ell_Xu_Y\ge XY.
   \end{aligned} \tag{5}
   \]

   These follow respectively from the nonnegative products
   \((X-\ell_X)(Y-\ell_Y)\), \((u_X-X)(u_Y-Y)\),
   \((u_X-X)(Y-\ell_Y)\), and \((X-\ell_X)(u_Y-Y)\).
   In either orientation of a proved five-label identity
   \(XY-UV-WZ=0\), replace each positive product by one of its
   upper envelopes and each negative product by minus one of its
   lower envelopes. The resulting affine expression is nonnegative.
   Its six endpoint sources and three envelope choices are explicit.

5. A witnessed endpoint-support inequality
\(XY\ge\kappa(X-Z)\) and either upper envelope for \(XY\) give
\(U_i-\kappa X+\kappa Z\ge0\). Here the actual hull, occupants,
support rate, and two endpoint sources in \(U_i\) must be proved.
For one actual interior point the ordinary endpoint-five rate may
be \(G=1457/250\), because \(G<3+2\sqrt2\). This is the same
support construction in
[QUADRILATERAL_SUPPORT.md](QUADRILATERAL_SUPPORT.md); its lower
legacy rational rate \(29/5\) is not needed when this stronger
comparison is printed.

6. There is an affine version of the signed-area barycentric rule.
Let the actual \(V\) be inside \(T_0T_1T_2\), with proved outer
area upper bound \(N>0\), opposite fan lower bounds \(b_i\ge0\),
and \(R=N-\sum b_i\ge0\). Fix an oriented actual line \(IJ\).
Write \(D=[IJV]\), \(D_i=[IJT_i]\), and suppose fixed proved
signed bounds give \(\ell_i\le D_i\le u_i\). Then

   \[
   ND-\sum_i b_iD_i-R\min_i\ell_i\ge0,
   \qquad
   -ND+\sum_i b_iD_i+R\max_i u_i\ge0. \tag{6}
   \]

   Indeed the barycentric weights satisfy \(\lambda_i\ge b_i/N\).
   Their nonnegative residuals have sum \(R/N\). Affinity gives
   \(ND-\sum_i b_iD_i
      =N\sum_i(\lambda_i-b_i/N)D_i\), between the two stated
   residual extrema. After the actual signs are proved, \(D,D_i\)
   are signed unsigned-area variables, so (6) is affine. A repeated
   label makes the corresponding determinant exactly zero. In
   particular if \(V\) lies on \(IJ\), the target term is zero;
   no minimum-area assumption is applied to that repeated triple.
   Each application prints the ordered fans, \(N,b_i\), signed
   vertex endpoint sources, and selected residual minimum or maximum.

All expressions in this list have a direct geometric or algebraic
proof of nonnegativity. Equations (1)--(3) therefore convert their
literal positive integer combinations into exact further bounds or
contradictions. Bounds from (2) can be used in later physical
coordinate factors or scalar rows only after their own combinations
and source scopes have been checked. They cannot supply endpoints
for their own product envelopes or their own ceilings.
