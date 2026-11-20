# The triangular BITT alternative forces a lower-central point

Use the ten actual points and contact inequalities of
[N6_BTTT_REMAINING_BITT_SETUP.md](N6_BTTT_REMAINING_BITT_SETUP.md),
with every unsigned doubled triangle area at least \(s=93/1000\).
Thus \(P\in\operatorname{int}HABC\),
\(Q\in\operatorname{int}HCEF\), and \(R,S\) lie strictly in the
opposite corner cap beyond \(EF\), with closed outer square faces allowed.
Assume \([ERS]>0\), \([FRS]<0\); equivalently \(S\) is inside
\(ERF\).

**Theorem.** The actual lower point satisfies
\[
                         [ACP]>0,\qquad[HBP]>0.
\]
This excludes both lower ears in the complete triangular BITT alternative.
It does not exclude the remaining lower-central position or the whole count.

The proof consists of this note, the [literal index](N6_BTTT_REMAINING_BITT_TRIANGULAR_CENTRAL_REDUCTION_TABLES/INDEX.md),
and every context and stage table linked there. The tables print all sources,
coordinate updates, area deductions, products and branches of the argument.

## Geometry, sources and exact deduction rules

The count-invariant transposition in the BITT setup permits \(e\le f\).
It preserves the triangular alternative and exchanges the two claimed lower
signs, so positivity of both signs gives the stated theorem before normalization
as well. The setup proves the initial signs, rational coordinate box, actual
upper-point bounds and lower/top endpoint costs used here. The exact lower
point classification of [ONE_LOWER_POINT.md](ONE_LOWER_POINT.md) gives two
ears and the lower-central position, including both central contact orders.

Every subsequent sign uses a printed actual branch, a Pluecker sign identity,
affinity on a proved containing actual triangle or quadrilateral, the
three-interior-point distributed-mesh theorem, or an earlier proved capacity
bound. The geometric rules and actual support inequalities are proved in
[N6_TOP_TRIPLE_SETUP.md](N6_TOP_TRIPLE_SETUP.md), Sections 3--5. Each
support factor supplies its own actual convex hull, occupants and allocation;
no support cost or sign is imported from a different placement count.

The scalar deductions use exact actual fan sums, signed four-point area
identities, Pluecker product identities, occupied quadrilateral lower bounds,
actual support bounds, and the signed barycentric identities. Sources are
immutable preceding versions in the same stage or an ancestor. Barycentric
weights and residuals use the nonnegative actual fan lower bounds and the
proved positive outer ceiling, as in
[N6_BTTT_REMAINING_AFFINE_BOUNDS.md](N6_BTTT_REMAINING_AFFINE_BOUNDS.md).
The literal records include every fan and signed vertex endpoint, including
repeated-label zero terms.

Coordinate factors are multiaffine polynomials whose nonnegativity is proved
by their printed geometry and fixed earlier endpoints. To refine one coordinate,
fix all other coordinates at endpoints of the current box. The resulting
lines give every possible vertex maximum for that coordinate. The feasible
interval of each line is solved exactly; the bounding interval of their union
contains every feasible actual coordinate. The printed outward rounding uses
denominator \(10^6\). Fixed support and upper-point ceilings are computed
before the refinement that uses them. The initial/refined boxes and all
endpoint lines are printed, so no numerical optimizer is a proof premise.

Sixteen leaves use the [positive coordinate-product rule](N6_BTTT_REMAINING_COORDINATE_PRODUCTS.md).
Every factor is a proved actual-area gap, completed coordinate gap or proved
physical polynomial. Positive integer products have one through four factors.
The full raw sum and its translation by the lower box corner are printed.
Each positive translated monomial is bounded by its width product, each
negative nonconstant monomial by zero, and the constant by its signed value.
Every resulting exact ceiling is strictly negative, contradicting the
nonnegativity of the positive product sum. These completed-box sources are
terminal premises and are not used to justify their own coordinate box.

## Exhaustive binary cover and conclusion

The case tree begins with the actual sign of \([ACP]\). Its positive
child splits the actual sign of \([HBP]\). Positive clearance excludes
zero in either split. The branch with both positive signs concludes the
claimed lower-central condition directly; its final context already proves
both signs. It makes no contradiction claim.

Every other branch is refined by the printed nonzero actual determinant
splits. The complete tree has 101 nodes, fifty binary splits and 51 leaves:

| Leaf type | Number | Conclusion |
| --- | ---: | --- |
| Exact interval contradiction | 28 | Infeasible |
| Exact scalar lower/upper contradiction | 3 | Infeasible |
| Clustered-triangle or conflicting proved signs | 3 | Infeasible |
| Positive coordinate-product contradiction | 16 | Infeasible |
| Proved \([ACP],[HBP]>0\) | 1 | Lower-central position |

There are no missing children, coordinate cuts, open leaves or additional
case assumptions. Induction up the binary tree proves the theorem: every
actual triangular BITT configuration reaches either a contradiction or the
single branch carrying the two proved positive signs.

## Verification status

The author reader reconstructs the literal Markdown with

```sh
node n10/hand/N6_BTTT_REMAINING_BITT_REPLAY.js - lower-central
```

It passes all 121 actual-sign contexts, 4,429 geometric deductions,
277 stages, 2,010 physical factors, 4,725 coordinate updates,
17,386 scalar updates, 3,542 scalar relations, 27,856 immutable area-bound
versions, 38 capacity-forced signs and 7,630 positive coordinate products.
The complete 101-node/51-leaf cover includes its explicit positive conclusion.
The [independent Fraction reader](audit_n6_bttt_remaining.py) reconstructs
the actual geometric sources, all 277 arithmetic stages and all 51 terminal
scopes with the argument `--bitt-triangular-lower-central`. Its
[negative probes](audit_n6_bitt_reduction_mutations.py) reject nine
alterations, including an unproved positive conclusion and a contradiction
taken from another branch. The [convex alternative](N6_BTTT_REMAINING_BITT_OCTAGON.md)
also forces both positive signs. The remaining BITT case has one lower
point in the lower-central position.
