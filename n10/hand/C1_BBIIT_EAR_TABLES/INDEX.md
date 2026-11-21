# Tables for two lower points, two central points and a top point

Use the [ear argument and count proof](../C1_BBIIT_TWO_EARS.md)
for the two placements, all point labels and each initial box.
The closed roots use \(w=847/1000\).

| Central placement | Contact interval | Domain | Global stages | Tree |
| --- | --- | --- | --- | --- |
| both in \(HCR\) | \(w\le c\le h\) | [Domain](both-c/domain.md) | [Two stages](both-c/global.md) | [Splits](both-c/tree.md) |
| both in \(HCR\) | \(c\le w\le h\) | [Domain](both-h/domain.md) | [Two stages](both-h/global.md) | [Splits](both-h/tree.md) |
| both in \(HCR\) | \(c\le h\le w\) | [Domain](both-low/domain.md) | [Two stages](both-low/global.md) | [Splits](both-low/tree.md) |
| one in \(RFH\) | \(c\ge w\) | [Domain](left-c/domain.md) | [Two stages](left-c/global.md) | [Splits](left-c/tree.md) |
| one in \(RFH\) | \(c\le w\) | [Domain](left-r/domain.md) | [Two stages](left-r/global.md) | [Splits](left-r/tree.md) |

Read both determinant-sign children at each split. Each refined
stage takes its displayed initial box from a proved predecessor.
The [table notation](../C1_TOP_TRIPLE_CORE_TABLES/INDEX.md) defines
the sign and arithmetic references. The factor `top_cost` is
\((1-d)(1-f)-s\). The support, ray, top-point and ear sources are
defined in the proof and its cited lemmas.

The separate arithmetic reader is
[audit_c1_bbiit_ears.py](../audit_c1_bbiit_ears.py).
Its argument is the directory name from the tree link.
