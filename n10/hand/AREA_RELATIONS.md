# Signed area identities and finite product bounds

This note supplements SCALAR_AREA_INTERVALS.md. Its variables are unsigned
doubled areas of named actual triangles. A common positive minimum \(s\)
ensures that every triangle on three distinct actual points has positive
unsigned area. A finite application must give the actual sign witnesses
and earlier immutable bounds for every use.

## 1. A four-point linear identity

For arbitrary planar points \(A,B,C,D\),
\[
 [ABC]+[ACD]=[ABD]+[BCD].
 \tag{1}
\]
It follows directly by expanding the determinants; convexity is not
required. When the signs of the four nonzero actual determinants are
known, replace each signed determinant by its sign times its positive
unsigned area. This gives a linear equality. Each direction is an
instance of Section 5 of SCALAR_AREA_INTERVALS.md.

If after collecting terms one side is a nonempty sum of positive
quantities and the other side is zero, the sign pattern is impossible.
Repeated labels produce literal zero determinants and may be omitted;
they must not be assigned the positive lower bound of a distinct-point
triangle.

## 2. A six-label identity

For arbitrary planar points \(A,B,C,P,I,J\),
\[
 [ABC][IJP]
 =[PBC][IJA]+[APC][IJB]+[ABP][IJC].
 \tag{2}
\]
No containment is assumed. To prove it, write the lifted affine vector
\(\widehat X=(x_X,y_X,1)\). Cofactor expansion gives
\[
 [ABC]\widehat P
 =[PBC]\widehat A+[APC]\widehat B+[ABP]\widehat C.
\]
The constant-coordinate equality is the fan identity with signed areas;
the two other coordinates follow by the same determinant expansion.
Apply the linear functional
\(\widehat X\mapsto\det(\widehat I,\widehat J,\widehat X)\)
to obtain (2). This also proves (2) if \(A,B,C\) are collinear.

For the positive-area rules below, take all six labels distinct.
The eight determinant signs identify four signed products. Move
negative terms to the opposite side to get
\[
 \sum_{i\in L}X_iY_i=\sum_{i\in R}X_iY_i.
 \tag{3}
\]
Every factor is a positive actual triangle area. Both sides must be
nonempty, since otherwise a sum of positive products would be zero.
The ordinary five-label Pluecker identity is treated by the same
rules with three products. A finite reader must reconstruct the
products and their signs from (2), not select an unsigned equality
without its orientation witnesses.

## 3. Isolating a product

Suppose (3) is proved, and choose the product \(XY\) on one side.
Call the other products on that same side \(S\), and the products
on the opposite side \(O\). For each factor \(Z\), let earlier
immutable bounds satisfy \(0<l_Z\le Z\le u_Z\). Define
\[
 N_{\rm lo}=\sum_{UV\in O}l_Ul_V-\sum_{UV\in S}u_Uu_V,
 \qquad
 N_{\rm hi}=\sum_{UV\in O}u_Uu_V-\sum_{UV\in S}l_Ul_V.
 \tag{4}
\]
Subtraction of the same-side terms from (3) gives
\[
 N_{\rm lo}\le XY\le N_{\rm hi}.
\]
If \(N_{\rm lo}>0\), division by \(Y\le u_Y\) gives
\(X\ge N_{\rm lo}/u_Y\). If \(N_{\rm lo}\le0\), the same
lower bound follows from \(X>0\). Thus always
\[
 X\ge N_{\rm lo}/u_Y.
 \tag{5}
\]
If \(N_{\rm hi}\le0\), positivity already gives a contradiction.
Otherwise division by \(Y\ge l_Y>0\) gives
\[
 X\le N_{\rm hi}/l_Y.
 \tag{6}
\]
A uniform terminal encoding may retain
\(X\le\max(0,N_{\rm hi}/l_Y)\); when \(N_{\rm hi}\le0\)
the premise is already contradictory. It must not be justified by
division of a negative numerator using the wrong inequality direction.

The same argument applies to \(Y\) and to every product on either
side. All source references precede the new bound and retain their
original values. Lower bounds may be rounded down, upper bounds up,
to a stated rational grid. A nonpositive candidate lower bound may
be discarded. No fixed-point or convergence assumption is used.

## 4. A one-interior-point quadrilateral cost

Let \(A,B,C,D\) be an actual strictly convex quadrilateral in
counterclockwise order and let the distinct actual point \(P\) lie
strictly inside it. Its four positive fan areas are
\[
 a=[ABP],\quad b=[BCP],\quad c=[CDP],\quad d=[DAP].
\]
Every fan area is at least \(s\), and their sum is the doubled area
\(Q\) of the quadrilateral. The pivot-\(P\) Pluecker identity is
\[
 ac-bd=[ACP][BDP].
 \tag{7}
\]
Both determinants on the right are distinct-point actual triangles,
so \(|ac-bd|\ge s^2\). Both positive products on the left are at least
\(s^2\); therefore the larger is at least \(2s^2\). Its two factors
have sum at least \(2\sqrt2\,s\); the remaining two have sum at least
\(2s\). Hence
\[
 \boxed{Q\ge(2+2\sqrt2)s.}
 \tag{8}
\]
At \(s=93/1000\), this is strictly greater than \(449/1000\).
Indeed the comparison is \(186\sqrt2>263\), and its exact positive
square gap is
\[
 2\cdot186^2-263^2=23.
 \tag{9}
\]
This is a separately named stronger rational cost. Previously printed
fixed factors, including a \(24s/5\) cost, keep their original meanings.

## 5. Independent algebra checks

check_area_relations.js expands (1), the lifted affine identity,
(2), and (7) in independent coordinate indeterminates. It also
checks the exact rational comparisons and physical side-cap
identities in SIDE_PAIR_AREA_REFINEMENTS.md. These are symbolic
transcription checks of the displayed proofs. An application still
must supply its complete branch coverage and every geometric
witness; this reusable note closes no configuration count alone.
