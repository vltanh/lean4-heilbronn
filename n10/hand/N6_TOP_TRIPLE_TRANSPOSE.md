# A residual transposition normalization for the top-triple counts

Use the BTTT or ITTT hypotheses of N6_TOP_TRIPLE_SETUP.md. The
following normalization is local to those two complete counts. It
introduces no hypothesis about a candidate configuration.

**Lemma.** In proving the union of all remaining top-word cases, it
is enough to assume e<=f. In each triangular or single-ear top case
this gives a,e<21/125=.168. In the central top-quadrilateral case it
gives a,e<33/125=.264.

## 1. The exact square and label maps

Let T(x,y)=(y,x). Define the new actual anchor labels by

| New point | Old point after T |
|---|---|
| A' | T(B) |
| B' | T(A) |
| C' | T(H) |
| E' | T(F) |
| F' | T(E) |
| H' | T(C) |
| P' | T(P) |

Thus

    (a',b',c',e',f',h')=(b,a,h,f,e,c).

All normalized contact inequalities are preserved. For example,
a'<=e'<=h' is b<=f<=c, and b'<=f'<=c' is a<=e<=h.
The lower quadrilateral H'A'B'C' is the transpose of the old lower
quadrilateral, with its cyclic order reversed before transposition.
The same holds for H'C'E'F' and the upper quadrilateral. Therefore
P' has the same B or I placement, and the three top points remain in
the top cap. Square-side points are preserved. Every unsigned actual
area is preserved, because det(T)=-1.

The three transformed top points must be relabeled so their rays from
E' again have positive pair determinants. The necessary relabeling
and resulting word are explicit:

| Old word (FQR,FQS,FRS,QRS) | (Q',R',S') | New word |
|---|---|---|
| ---- | (T(Q),T(R),T(S)) | ---+ |
| ---+ | (T(Q),T(R),T(S)) | ---- |
| --+- | (T(Q),T(S),T(R)) | --+- |
| -++- | (T(S),T(Q),T(R)) | ++-+ |
| +--+ | (T(R),T(Q),T(S)) | +--+ |
| ++-+ | (T(R),T(S),T(Q)) | -++- |

To verify any row, replace each new determinant by minus the old
determinant with the indicated labels. For instance, in the central
row +--+, E'Q'R'=-[FRQ]=[FQR]>0, E'Q'S'=-[FRS]>0,
and E'R'S'=-[FQS]>0. The new F signs are respectively
-[ERQ]>0, -[ERS]<0, -[EQS]<0, and
[Q'R'S']=-[RQS]=[QRS]>0. This proves that row; the other five
follow by the same displayed label substitutions.

The full sixteen-word catalogue in N6_TOP_TRIPLE_SETUP.md has
already excluded the other ten words by geometric or endpoint
arguments. The remaining six words are preserved as a set by the
table. The two single-ear words form one pair; the triangular words
form an invariant set; and the central word is invariant. Consequently,
after any complete invariant group has been excluded, the same
normalization is still available for the residual group. In particular
N6_BTTT_TOP_EARS.md removes both single-ear BTTT words together.

If e>f, apply this map. Then e'=f<e=f'. If e<=f, keep the
configuration. Equality is permitted. This proves the claimed
normalization without discarding any remaining case.

## 2. Exact coordinate consequences

Assume e<=f. Let tau denote the applicable rational top-container
cost: tau=(149/20)s for a triangular or single-ear top hull, and
tau=(1457/250)s for the central top quadrilateral. The setup gives

    (1-e)(1-f)>=tau.

Since e<=f<1, this implies

    (1-e)^2>=tau.                                      (1)

For s=93/1000 the two exact comparisons are

    (149/20)s-(1-21/125)^2=313/500000>0,
    (1457/250)s-(1-33/125)^2=77/250000>0.               (2)

If e were at least the corresponding ceiling, (1) would contradict
(2). Thus e is strictly smaller, and a<=e gives the same ceiling
for a. Closed upper endpoints .168 and .264 may be used in every
rational box. The affine factor f-e is also nonnegative throughout
this normalized residual problem.

One further useful initial-box consequence is

    c>=alpha+s/a_hi,   h>=alpha+s/b_hi,
    alpha=1037/10000.                                  (3)

Indeed the actual ABC and ABH clearances give a(c-b)>=s and
b(h-a)>=s, while a,b>=alpha and their chosen positive upper bounds
are a_hi,b_hi. All denominators in (3) are strictly positive.
These replacements may be combined with the version-2 bounds of
the setup before exact multiaffine interval refinement. They are
continuous inequalities on the whole normalized group; no coordinate
subdivision or unprinted sign choice is involved.
