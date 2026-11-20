# Exact tables for the one-corner IIRTT count

The [argument](../C1_IIRTT.md) defines the quantities and rules.
The [domain](domain.md) lists the coordinates in order, the initial
box and signs, and all 120 signed determinant polynomials.
The [tree](tree.md) gives the split triangle or the leaf type at
every path. Open the file named after the path for its proof stages.
Both children of a split inherit exactly the indicated assumptions.
Coarse split rows need only the split triangle.

Each table has one literal record per line. Catalogue IDs start at
zero. For an ID, divide it by 1,000 and discard the remainder. The quotient
gives the three-digit file suffix. Read the row carrying the full ID. For example
relation 1420 is in [relation-001.md](relation-001.md).
References in repeated records of the same type continue the list
in order.

| Record | Fields after the name |
|---|---|
| stage | Source of the input box, its fourteen endpoint pairs, branch assumptions |
| meshes, signs | Distributed-triple witnesses and the signs deduced at this stage |
| steps | Ordered IDs in the deduction catalogue |
| initial | IDs of initial bounds. Each row gives the reference, triangle, side, value and witness |
| relations | IDs of relations. Each gives its expression and actual geometric witness. Subsequent references use its zero-based position in this stage |
| updates | Ordered IDs of arithmetic steps. Each gives its new reference, local relation position, rule, triangle, side, value and earlier source references |
| final | IDs in the bounds catalogue giving the retained lower and upper endpoints for actual triangles |
| end, geometry | The scalar or geometric contradiction, with its witnesses |
| tighten | Nonnegative factor, coordinate index, old interval, endpoint lines, exact interval hull, rounded new interval |
| coordinate | Final coordinate lower and upper lists and any contradiction |
| weight | Integer multiplier and the identified relation, determinant, contact order or product envelope |
| sum | Product mode, additional equality mode, constant, collected coefficients, exact upper bound |

The order of polynomial variables is the one in the domain table.
An empty monomial is constant. A monomial with indices separated
by a comma is their product. In a weighted sum an asterisk joins
the two factors of a product. Coordinates and absolute areas have
nonnegative endpoints. Signed determinants keep the orientation of
the label order in the domain.

For a coordinate factor, `lo_T` and `hi_T` refer to the current
stage's final lower and upper bounds on triangle T. `quad_i` and
`linear_i` use relation i in that stage. `order_hd` and `order_cf`
mean the contact orders `h >= d` and `c >= f`. `top_cost` is
`(1-d)(1-f)-3s`. `pent_hiX_i` and `pent_hiY_i` are the two
pentagon upper-endpoint substitutions in the manuscript.
The two [global stages](global.md) use the same conventions.

The two arithmetic steps in the shortest scalar proof are described
in the [worked example](../C1_IIRTT.md). To check all the literal
records and their tree from the repository root, run
`python3 n10/hand/audit_c1_iirtt.py`.
