# Reading the BIRTT tables

The [proof](../C1_BIRTT.md) derives the initial intervals and signs.
The [domain table](domain.md) lists these and the 120 actual
determinants. The [tree table](tree.md) assigns a split or a
contradiction to every branch, starting at `r`. A determinant
split appends `m` or `p`. A coordinate split appends `L` or `H`;
its two entries are the zero-based coordinate index and the exact cut.
Both children retain the cut face.

The catalogue numbering and the entries `stage`, `steps`,
`initial`, `relations`, `updates`, `tighten`, `coordinate`,
`weight` and `sum` have the fields in the
[record format](../C1_IIRTT_TABLES/INDEX.md). The right and nested-top
sources have the same definitions. In a `pentagon_initial` relation,
the listed polygon determines the three ears. The record supplies
each initial ear floor, its witness and the chosen rational
square-root lower bound, followed by four initial endpoints with their
witnesses and the gain \(g\) of the [pentagon calculation](../C1_BIRTT.md).

The exact reader is [audit_c1_birtt.py](../audit_c1_birtt.py). From
the repository root run `python n10/hand/audit_c1_birtt.py`.
