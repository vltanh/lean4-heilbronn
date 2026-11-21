# The HA radial exclusion in the nine-point IRTT core

Use the nine actual points, contact orders, clearance s=93/1000,
strict octagon ABCQERFH and occupied ear ERF of
[the width argument](N6_IRTT_CORE_CAPS.md). Start with the twelve-coordinate
closed box proved in [N6_IRTT_CORE_DOMAIN.md](N6_IRTT_CORE_DOMAIN.md).
The HA case is ARS>0. The radial separation gives BRS,CRS>0 and HRS<0.
All 84 actual triangle signs then follow by the actual containments,
the empty-ear tests and Plücker identities. The tenth point is unused.

The finite proof is printed in
[N6_IRTT_CORE_HA_TABLES/INDEX.md](N6_IRTT_CORE_HA_TABLES/INDEX.md).
Each node names its parent and a table containing every actual sign,
retained physical factor, coordinate endpoint line and required scalar
deduction. The two initial global stages apply before the first split.
Scalar records have immutable original identifiers; gaps in their
numbering remove deductions unused by the proof. Every retained update
includes all its dependencies, including its earlier-stage ancestors.

## The complete coordinate cover

At node n, a cut x=t has children nm with x<=t and np with x>=t.
The cut is strictly between the node's already proved endpoints. The
two closed children cover the parent, including the equality face.
There are exactly the following nineteen splits:

| Node | Coordinate | Cut |
| --- | --- | --- |
| r | h | 808677/1000000 |
| rm | r | 453607/500000 |
| rp | r | 426879/500000 |
| rpm | u | 891777/1000000 |
| rpp | u | 199139/250000 |
| rppp | w | 864889/1000000 |
| rpppp | e | 552517/1000000 |
| rppppm | f | 60581/200000 |
| rppppp | b | 15423/100000 |
| rppppmm | b | 159591/1000000 |
| rpppppm | v | 308513/1000000 |
| rpppppp | c | 575337/1000000 |
| rppppmmm | j | 321139/500000 |
| rpppppmm | c | 595693/1000000 |
| rppppppm | a | 16147/50000 |
| rppppppp | a | 273629/1000000 |
| rpppppmmm | j | 80879/125000 |
| rpppppmmp | j | 642543/1000000 |
| rppppppmm | j | 130841/200000 |

The letter r in the coordinate column is the x coordinate of R; the
letter r at the start of a node name is the root label. The tree has
39 nodes. Both children of each split are printed, every nonroot node
has its unique parent, and every node is reachable from the root.

## Physical and scalar premises

The interval rule, source costs, support envelopes and normalized
barycentric steps are those described in
[the other three radial exclusions](N6_IRTT_CORE_RADIAL.md).
All source boxes are immutable boxes proved before the source is used.
Four further source forms occur here:

* `top-hull` is (1-e)(1-f)-3s>=0, because the actual triangle ERF
  contains S and lies in the top corner triangle.
* `core-width-six-chain-cap` subtracts an ordered actual determinant
  from its fixed cap in the width note.
* `anchor-cap` subtracts the actual triangle's occupancy cost from a
  proved coordinate cap for an enclosing anchor triangle. In the final
  product identity these are the caps e, b, c, 1-a, h, 1-f and 1-e for
  ABE, ABH, ACF, AEF, BCH, CEF and EFH. Each cap follows by expanding
  that anchor area and using the stated contact orders and unit interval.
* `octagon-ear-cap` and `octagon-ear-root-budget` are exactly the
  individual cap and rational chord budget of
  [N6_IRTT_OCCUPIED_EAR.md](N6_IRTT_OCCUPIED_EAR.md). Each chord row
  prints the actual ear, its occupants, positive lower and upper bounds,
  and two rational cube-root floors. The upper bound is computed from
  the source's fixed input box and the previously proved fixed caps.

The stronger pentagon support witnesses are instances of
[PENTAGON_EAR_SUPPORT.md](PENTAGON_EAR_SUPPORT.md). For three consecutive
actual ears U,V,W in a strictly convex pentagon, that theorem gives
the support cost (sqrt(U)+sqrt(V)+sqrt(W))^2. Each printed
`pentagon-ear-box` witness lists the actual occupant floors and rational
square-root floors. It may raise an AH ear floor to s*x0/b1, since
b(h-a)>=s, or a BC ear floor to s*y0/a1, since a(c-b)>=s. Here x0,y0
are prior lower endpoints and a1,b1 prior positive upper endpoints.
The chosen cost is the larger of 11s and the square of the three
rational floors' sum. Every floor, square comparison and support
orientation is printed and checked. No additional Delta floor is used.

## Exact terminal arguments

Nineteen leaves end with an empty coordinate interval. For each listed
coordinate, the table prints every endpoint line A*x+B from the final
nonnegative factor; all line-feasible intersections with the old interval
are empty. This is the multiaffine rule in the radial note.

| Leaf | Local stages | Coordinate updates | Impossible coordinate |
| --- | --- | --- | --- |
| rmm | 2 | 146 | c |
| rmp | 2 | 102 | c |
| rpmm | 1 | 26 | c |
| rpmp | 1 | 91 | c |
| rppm | 1 | 54 | a |
| rpppm | 1 | 72 | c |
| rppppmp | 1 | 79 | a |
| rppppmmp | 1 | 47 | c |
| rpppppmp | 1 | 62 | c |
| rppppmmmm | 3 | 310 | h |
| rppppmmmp | 1 | 46 | c |
| rppppppmp | 1 | 67 | e |
| rpppppppm | 4 | 375 | h |
| rpppppppp | 1 | 50 | a |
| rpppppmmmm | 1 | 71 | c |
| rpppppmmpm | 1 | 72 | c |
| rpppppmmpp | 2 | 110 | a |
| rppppppmmm | 1 | 59 | a |
| rppppppmmp | 2 | 109 | a |

The final leaf [rpppppmmmp](N6_IRTT_CORE_HA_TABLES/rpppppmmmp.md)
has two local stages and a printed positive-product identity. Its 118
source polynomials are actual scalar area bounds, final coordinate
bounds, or retained nonnegative physical factors. The table gives 279
positive integer weights and products of one or two such factors.
Their expanded sum P is therefore nonnegative on an actual configuration.

The same table gives all 567 monomials of P and all 605 monomials after
the substitution x_i=L_i+z_i, where L_i is the proved final lower
endpoint. Each z_i lies in [0,H_i-L_i]. Leave the constant term intact,
discard negative nonconstant terms, and replace each positive monomial
by its coefficient times the product of its corresponding interval
widths, with repetitions retained. The resulting exact upper bound is

    -88789728153042525761413590457695848283340401754918057233199765818219883232261128741756300619
    /1521194132101608654771654401274396197917352385720842700541136718750000000000000000000
    < -58000000 < 0.

This contradicts P>=0. This is an exact expanded polynomial argument;
its acceptance requires only the printed sources, positive integers,
identities and rational interval calculation. The corresponding
general product rule is stated in
[N6_BTTT_REMAINING_COORDINATE_PRODUCTS.md](N6_BTTT_REMAINING_COORDINATE_PRODUCTS.md).

All twenty leaves are impossible, so the HA radial case is excluded.

## Verification

The complete standard-library author replay is

    python n10/hand/N6_IRTT_CORE_HA_check.py

It checks 93 stages, 1023 actual sign deductions, 828 physical factors,
5451 coordinate updates, 531 scalar initial bounds, 116 scalar relations,
706 scalar updates, all 19 splits and 20 leaves, and the entire final
118-source/279-product identity. It imports no discovery engine and
requires no scratch files. The separate
[independent reader](n6_irtt_core_independent.py) checks the same full cover,
physical premises, scalar endpoints and negative polynomial sum with its
own coordinate and rational-function implementations. Source, cover and
product corruption probes are in
[N6_IRTT_CORE_HA_MUTATIONS_check.py](N6_IRTT_CORE_HA_MUTATIONS_check.py).
