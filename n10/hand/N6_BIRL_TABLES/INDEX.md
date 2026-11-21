# Chord exclusions with one lower point, one upper point and both side caps

The [BIRL setup](../N6_BIRL_SETUP.md) lists the nine possible pairs of
crossed edges, with the containers and orientation of the interior
line in each pair. The common [IIRL setup](../N6_IIRL_SETUP.md) proves
the coordinate ranges, actual area inequalities and octagon capacities.
Every occurrence of \(P\) here means the lower point, and every
occurrence of \(Q\) means the upper point.

| Crossed edges | Determinant splits | Coordinate cuts | Geometric leaves | Scalar leaves | Coordinate leaves | Weighted sums |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| [\(AB,RE\)](AB_RE/tree.md) | 16 | 0 | 3 | 9 | 5 | 0 |
| [\(AB,EF\), \(p\ge b,\ q\ge a\)](AB_EFgood/tree.md) | 48 | 0 | 7 | 24 | 17 | 1 |
| [\(AB,EF\), \(p\le b\)](AB_EFlowx/tree.md) | 58 | 0 | 0 | 37 | 19 | 3 |
| [\(AB,EF\), \(p\ge b,\ q\le a\)](AB_EFlowy/tree.md) | 53 | 0 | 0 | 35 | 17 | 2 |
| [\(AB,FS\)](AB_FS/tree.md) | 26 | 0 | 1 | 20 | 5 | 1 |
| [\(BC,EF\)](BC_EF/tree.md) | 26 | 0 | 1 | 14 | 12 | 0 |
| [\(BC,FS\)](BC_FS/tree.md) | 83 | 9 | 9 | 51 | 23 | 10 |
| [\(BC,SH\)](BC_SH/tree.md) | 48 | 0 | 6 | 22 | 18 | 3 |
| [\(HA,CR\)](CR_HA/tree.md) | 41 | 0 | 4 | 23 | 15 | 0 |
| [\(HA,RE\)](RE_HA/tree.md) | 84 | 6 | 3 | 49 | 28 | 11 |
| [\(HA,EF\)](EF_HA/tree.md) | 29 | 0 | 0 | 21 | 9 | 0 |
| Total | 512 | 15 | 34 | 305 | 168 | 31 |

The [table conventions](../N6_IIRL_TABLES/INDEX.md) apply. A split
lists a determinant whose negative and positive values cover the
branch because every actual triangle area is at least \(s\).
If a split is on a coordinate, its two closed children both include
the common endpoint. A child inherits the terminal coordinate box of
its parent, intersected with its coordinate cut when present.
The \(AB,EF\) entry uses the sharp projection terminal once. Its
two coordinate conditions and required signs are in the
[BIRL setup](../N6_BIRL_SETUP.md).

The additional factors \(\mathtt{side\_lowp}\) and
\(\mathtt{side\_lowq}\) are \(c-p-2s/(1-\ell)\) and
\(h-q-2s/(1-\ell)\), respectively. Their bounds follow from the
actual areas of \(HCP,BCP,AHP\) in the [common setup](../N6_IIRL_SETUP.md).

The exact replayer accepts the indices of the desired pairs in the
setup, starting from zero. Index 1 covers the \(AB,EF\) pair by
all three indicated coordinate regions. For all nine pairs run

    python n10/hand/audit_n6_birl.py
