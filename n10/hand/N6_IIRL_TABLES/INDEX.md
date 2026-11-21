# Finite exclusions for the two-upper-point, two-side-cap count

The [domain and chord catalogue](../N6_IIRL_SETUP.md) give the actual
point coordinates, eight hull vertices, ten possible pairs of crossed
edges and the signs at the root of each argument.

| First crossed edge | Second crossed edge | Sign splits | Coordinate splits | Leaves |
| --- | --- | ---: | ---: | ---: |
| \(AB\) | [\(RE\)](AB_RE/tree.md) | 11 | 0 | 12 |
| \(AB\) | [\(EF\)](AB_EF/tree.md) | 35 | 0 | 36 |
| \(AB\) | [\(FS\)](AB_FS/tree.md) | 8 | 0 | 9 |
| \(BC\) | [\(EF\)](BC_EF/tree.md) | 20 | 0 | 21 |
| \(BC\) | [\(FS\)](BC_FS/tree.md) | 67 | 11 | 79 |
| \(CR\) | [\(FS\)](CR_FS/tree.md) | 47 | 0 | 48 |
| \(CR\) | [\(SH\)](CR_SH/tree.md) | 59 | 3 | 63 |
| \(RE\) | [\(SH\)](RE_SH/tree.md) | 33 | 0 | 34 |
| \(RE\) | [\(HA\)](RE_HA/tree.md) | 48 | 1 | 50 |
| \(EF\) | [\(HA\)](EF_HA/tree.md) | 17 | 0 | 18 |
| Total | | 345 | 15 | 370 |

Each directory contains its *domain.md* with fourteen intervals and
all signed determinant expansions. In *tree.md*, a split on \(XYZ\)
has two children, obtained by appending m for a negative determinant
and p for a positive determinant. No actual triple has zero area at
the stated clearance. A coordinate split appends L to the child
below the cut and H to the child above it. Both children keep
the cut face and all other inherited bounds. The file named after a node contains the
finite proof on its branch. A root stage marked *global* starts with
the coarse box in its domain table. At descendants the stage names
the parent that supplies its interval bounds. Each coordinate update
specifies every affine endpoint line and its outward-rounded interval.

The catalogues use the [literal row format](../C1_IIRTT_TABLES/INDEX.md)
and the [area identities](../AREA_RELATIONS.md). The general geometry and
arithmetic rules are given in [Sections 2–6 of the one-corner proof](../C1_IIRTT.md).
Each shared record
has a zero-based row identifier. Its quotient upon division by one
thousand gives the catalogue file suffix. Geometric bounds for the
actual triangles and all two-side-cap sources are derived in the
domain and the [four-vertex cap theorem](../N6_BOTH_SIDE_CAPS.md).
For a five-vertex support, the square-root floors and three consecutive
ear costs are the [pentagon support inequality](../PENTAGON_EAR_SUPPORT.md).
The five coordinate sources named \(\mathtt{order\_ea,order\_he,order\_fb,order\_cf,order\_fe}\)
are \(e-a,h-e,f-b,c-f,f-e\), respectively. In the same order as the eight
projected ears in the setup, \(\mathtt{side\_ear}i\) subtracts \(s\) from
the \(i\)-th positive ear product, starting at zero. The factors
\(\mathtt{side\_ea,side\_hw,side\_fb,side\_cj}\) subtract \(21/250\)
from their indicated coordinate difference. The crossing and displacement
factors are the bounds proved in the [setup](../N6_IIRL_SETUP.md).
Weighted terminal rows expand a stated integer linear combination
and bound each remaining monomial on the inherited box.

The rational replayer accepts the indices of the desired arc roots
in the order of the ten-row domain table, starting from zero. For all
ten pairs run

    python n10/hand/audit_n6_iirl.py
