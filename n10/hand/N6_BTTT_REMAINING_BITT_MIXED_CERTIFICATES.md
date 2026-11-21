# Mixed area/coordinate discovery compiled to ordinary positive products

This note explains the exact identities used to shorten BITT terminal
certificates. It excludes no case by itself. Every actual terminal remains
a literal positive-product sum under
[N6_BTTT_REMAINING_COORDINATE_PRODUCTS.md](N6_BTTT_REMAINING_COORDINATE_PRODUCTS.md);
a lifted numerical model is not a proof premise.

Use completed, proved intervals for actual coordinates and signed actual
triangle areas. All these quantities are nonnegative. An auxiliary product
\(z=xy\), defined by its actual factors, has the proved interval
\([L_xL_y,U_xU_y]\). Its four rectangular inequalities are exactly the
nonnegative products
\[
 (x-L_x)(y-L_y),\quad(U_x-x)(U_y-y),\quad
 (x-L_x)(U_y-y),\quad(U_x-x)(y-L_y).
\]
They remain valid when the factors coincide.

Actual area definitions and proved fan, four-point, Pluecker and barycentric
equalities can be used while discovering a weighted sum. Any equality
discarded during compilation is expanded in the actual coordinates and
checked to be the zero polynomial. A negative multiplier is allowed only
on such an equality. Every remaining inequality has a positive multiplier.

Suppose the weighted sum, written temporarily in the defined quantities
\(z_j\), has residual
\[
 R=c+\sum_j a_jz_j.
\]
For \(a_j>0\), add the proved nonnegative term
\(a_j(U_j-z_j)\); for \(a_j<0\), add
\((-a_j)(z_j-L_j)\). The resulting exact polynomial is the constant
\[
 C=c+\sum_{a_j>0}a_jU_j+\sum_{a_j<0}a_jL_j.
\]
A certificate is retained only if \(C<0\).

Composite-product gaps require no new assumed inequality. They telescope
into positive products of primitive gaps:
\[
 xy-L_xL_y
 =(x-L_x)(y-L_y)+L_y(x-L_x)+L_x(y-L_y),
\]
\[
 U_xU_y-xy
 =(U_x-x)(y-L_y)+L_y(U_x-x)+U_x(U_y-y).
\]
The coefficients are nonnegative by the proved intervals. Apply these
identities recursively. In the present application every resulting
product has at most four primitive factors. Clear their rational
coefficients by a common positive integer denominator.

Thus the final written certificate contains only positive integer
products of completed coordinate gaps, immutable actual-area gaps and
proved physical factors. It prints every source polynomial and the entire
expanded sum. The exact sum is a negative constant, so its translated
width ceiling has just that negative contribution. The ordinary literal
reader reconstructs this identity without reading or trusting the
discovery model or the compiler.

A materialized quadrilateral source is the polynomial
\[
 A(T_1)+A(T_2)-q,
\]
where the two actual triangles dissect a proved positive convex
quadrilateral, its actual occupants are explicitly listed, and \(q\)
is precisely the already established quadrilateral cost. Its geometric
premise is the existing quadrilateral area relation of
N6_TOP_TRIPLE_SETUP.md. It needs no coordinate endpoint estimate and
cannot use the terminal conclusion or a later bound. The literal
physical factor carries that complete relation as its witness.

The numerical model may propose weights, but the source proofs, exact
polynomial expansion, positive integer signs and negative constant are
the written argument. A feasible numerical relaxation, a timeout or an
unsuccessful rounding attempt closes no case.
