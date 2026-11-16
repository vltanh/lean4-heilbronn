# Fixed BTTT ---- proof: index

This is the literal finite proof index for N6_BTTT_TOP_WORD_MMMM.md. Its tables, contexts.md, and the listed stage files together specify every premise, identity, exact bound, and contradictory leaf. No search output or unprinted certificate is a premise.

## Hypotheses and format

| Property | Value |
| --- | --- |
| Format | n6-bttt-left-triangle-proof-v1 |
| Status | Complete literal proof; both independent semantic manuscript readers pass. |
| Threshold | 93/1000 |
| Locations | BTTT |
| Top word | `----` |
| Normalized e <= f | yes |
| Variables | a, b, c, e, f, h, p, q, u, v, r, w, j, k |
| Actual labels | ABCEFHPQRS |
| Terminal stage order | 4, 6, 7, 10, 13, 14, 17, 18, 20, 22, 25, 27, 28, 30, 32, 33 |

## Table files

| Kind | File |
| --- | --- |
| contexts | contexts.md |
| stages | stages_00.md |
| stages | stages_01.md |

## Actual-sign case tree

| Node | Depth | Given premises | Stages | Split | Children | Terminal | Metric |
| --- | --- | --- | --- | --- | --- | --- | --- |
| `root` | 0 | `none` | 0 | APQ | `root/APQ-, root/APQ+` | none | none |
| `root/APQ-` | 1 | `CRS+, APQ-` | 1 | AQR | `root/APQ-/AQR-, root/APQ-/AQR+` | none | none |
| `root/APQ+` | 1 | `CRS+, APQ+` | 2 | AQR | `root/APQ+/AQR-, root/APQ+/AQR+` | none | none |
| `root/APQ-/AQR-` | 2 | `CRS+, APQ-, AQR-` | 3 | AQS | `root/APQ-/AQR-/AQS-, root/APQ-/AQR-/AQS+` | none | none |
| `root/APQ-/AQR+` | 2 | `CRS+, APQ-, AQR+` | 4 | none | none | 4 | none |
| `root/APQ+/AQR-` | 2 | `CRS+, APQ+, AQR-` | 5 | AQS | `root/APQ+/AQR-/AQS-, root/APQ+/AQR-/AQS+` | none | none |
| `root/APQ+/AQR+` | 2 | `CRS+, APQ+, AQR+` | 6 | none | none | 6 | none |
| `root/APQ-/AQR-/AQS-` | 3 | `CRS+, APQ-, AQR-, AQS-` | 7 | none | none | 7 | none |
| `root/APQ-/AQR-/AQS+` | 3 | `CRS+, APQ-, AQR-, AQS+` | 8 | BQR | `root/APQ-/AQR-/AQS+/BQR-, root/APQ-/AQR-/AQS+/BQR+` | none | none |
| `root/APQ+/AQR-/AQS-` | 3 | `CRS+, APQ+, AQR-, AQS-` | 9, 10 | none | none | 10 | none |
| `root/APQ+/AQR-/AQS+` | 3 | `CRS+, APQ+, AQR-, AQS+` | 11 | CQR | `root/APQ+/AQR-/AQS+/CQR-, root/APQ+/AQR-/AQS+/CQR+` | none | none |
| `root/APQ-/AQR-/AQS+/BQR-` | 4 | `CRS+, APQ-, AQR-, AQS+, BQR-` | 12 | HQS | `root/APQ-/AQR-/AQS+/BQR-/HQS-, root/APQ-/AQR-/AQS+/BQR-/HQS+` | none | none |
| `root/APQ-/AQR-/AQS+/BQR+` | 4 | `CRS+, APQ-, AQR-, AQS+, BQR+` | 13 | none | none | 13 | none |
| `root/APQ+/AQR-/AQS+/CQR-` | 4 | `CRS+, APQ+, AQR-, AQS+, BPS+, CQR-` | 14 | none | none | 14 | none |
| `root/APQ+/AQR-/AQS+/CQR+` | 4 | `CRS+, APQ+, AQR-, AQS+, BPS+, CQR+` | 15 | HQS | `root/APQ+/AQR-/AQS+/CQR+/HQS-, root/APQ+/AQR-/AQS+/CQR+/HQS+` | none | none |
| `root/APQ-/AQR-/AQS+/BQR-/HQS-` | 5 | `CRS+, APQ-, AQR-, AQS+, BQR-, HQS-` | 16, 17 | none | none | 17 | none |
| `root/APQ-/AQR-/AQS+/BQR-/HQS+` | 5 | `CRS+, APQ-, AQR-, AQS+, BQR-, HQS+` | 18 | none | none | 18 | none |
| `root/APQ+/AQR-/AQS+/CQR+/HQS-` | 5 | `CRS+, APQ+, AQR-, AQS+, BPS+, CQR+, HQS-` | 19 | BPQ | `root/APQ+/AQR-/AQS+/CQR+/HQS-/BPQ-, root/APQ+/AQR-/AQS+/CQR+/HQS-/BPQ+` | none | none |
| `root/APQ+/AQR-/AQS+/CQR+/HQS+` | 5 | `CRS+, APQ+, AQR-, AQS+, BPS+, CQR+, HQS+` | 20 | none | none | 20 | none |
| `root/APQ+/AQR-/AQS+/CQR+/HQS-/BPQ-` | 6 | `CRS+, APQ+, AQR-, AQS+, BPS+, CQR+, HQS-, BPQ-` | 21, 22 | none | none | 22 | none |
| `root/APQ+/AQR-/AQS+/CQR+/HQS-/BPQ+` | 6 | `CRS+, APQ+, AQR-, AQS+, BPS+, CQR+, HQS-, BPQ+` | 23 | BQR | `root/APQ+/AQR-/AQS+/CQR+/HQS-/BPQ+/BQR-, root/APQ+/AQR-/AQS+/CQR+/HQS-/BPQ+/BQR+` | none | none |
| `root/APQ+/AQR-/AQS+/CQR+/HQS-/BPQ+/BQR-` | 7 | `CRS+, APQ+, AQR-, AQS+, BPS+, CQR+, HQS-, BPQ+, BQR-` | 24 | PQR | `root/APQ+/AQR-/AQS+/CQR+/HQS-/BPQ+/BQR-/PQR-, root/APQ+/AQR-/AQS+/CQR+/HQS-/BPQ+/BQR-/PQR+` | none | none |
| `root/APQ+/AQR-/AQS+/CQR+/HQS-/BPQ+/BQR+` | 7 | `CRS+, APQ+, AQR-, AQS+, BPS+, CQR+, HQS-, BPQ+, BQR+` | 25 | none | none | 25 | none |
| `root/APQ+/AQR-/AQS+/CQR+/HQS-/BPQ+/BQR-/PQR-` | 8 | `CRS+, APQ+, AQR-, AQS+, BPS+, CQR+, HQS-, BPQ+, BQR-, PQR-` | 26 | APR | `root/APQ+/AQR-/AQS+/CQR+/HQS-/BPQ+/BQR-/PQR-/APR-, root/APQ+/AQR-/AQS+/CQR+/HQS-/BPQ+/BQR-/PQR-/APR+` | none | none |
| `root/APQ+/AQR-/AQS+/CQR+/HQS-/BPQ+/BQR-/PQR+` | 8 | `CRS+, APQ+, AQR-, AQS+, BPS+, CQR+, HQS-, BPQ+, BQR-, PQR+` | 27 | none | none | 27 | none |
| `root/APQ+/AQR-/AQS+/CQR+/HQS-/BPQ+/BQR-/PQR-/APR-` | 9 | `CRS+, APQ+, AQR-, AQS+, BPS+, CQR+, HQS-, BPQ+, BQR-, PQR-, APR-` | 28 | none | none | 28 | none |
| `root/APQ+/AQR-/AQS+/CQR+/HQS-/BPQ+/BQR-/PQR-/APR+` | 9 | `CRS+, APQ+, AQR-, AQS+, BPS+, CQR+, HQS-, BPQ+, BQR-, PQR-, APR+` | 29 | BPR | `root/APQ+/AQR-/AQS+/CQR+/HQS-/BPQ+/BQR-/PQR-/APR+/BPR-, root/APQ+/AQR-/AQS+/CQR+/HQS-/BPQ+/BQR-/PQR-/APR+/BPR+` | none | none |
| `root/APQ+/AQR-/AQS+/CQR+/HQS-/BPQ+/BQR-/PQR-/APR+/BPR-` | 10 | `CRS+, APQ+, AQR-, AQS+, BPS+, CQR+, HQS-, BPQ+, BQR-, PQR-, APR+, BPR-` | 30 | none | none | 30 | none |
| `root/APQ+/AQR-/AQS+/CQR+/HQS-/BPQ+/BQR-/PQR-/APR+/BPR+` | 10 | `CRS+, APQ+, AQR-, AQS+, BPS+, CQR+, HQS-, BPQ+, BQR-, PQR-, APR+, BPR+` | 31 | HRS | `root/APQ+/AQR-/AQS+/CQR+/HQS-/BPQ+/BQR-/PQR-/APR+/BPR+/HRS-, root/APQ+/AQR-/AQS+/CQR+/HQS-/BPQ+/BQR-/PQR-/APR+/BPR+/HRS+` | none | none |
| `root/APQ+/AQR-/AQS+/CQR+/HQS-/BPQ+/BQR-/PQR-/APR+/BPR+/HRS-` | 11 | `CRS+, APQ+, AQR-, AQS+, BPS+, CQR+, HQS-, BPQ+, BQR-, PQR-, APR+, BPR+, HRS-` | 32 | none | none | 32 | none |
| `root/APQ+/AQR-/AQS+/CQR+/HQS-/BPQ+/BQR-/PQR-/APR+/BPR+/HRS+` | 11 | `CRS+, APQ+, AQR-, AQS+, BPS+, CQR+, HQS-, BPQ+, BQR-, PQR-, APR+, BPR+, HRS+` | 33 | none | none | 33 | none |

## Capacity-forced signs

| Node | Stage | Forced sign | Outer triangle | Occupants | Excluded point | Upper reference | Upper bound | Cost with extra point |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `root` | 0 | CRS+ | CER | none | S | `0:113` | 682239051/2500000000 | 279/1000 |
| `root/APQ+/AQR-/AQS-` | 9 | BPR+ | ABR | none | P | `9:13` | 260062077173/1000000000000 | 279/1000 |
| `root/APQ+/AQR-/AQS-` | 9 | BPS+ | ABS | none | P | `9:15` | 22704341051/100000000000 | 279/1000 |
| `root/APQ+/AQR-/AQS+` | 11 | BPS+ | ABS | none | P | `11:15` | 252134129241/1000000000000 | 279/1000 |
| `root/APQ-/AQR-/AQS+/BQR-/HQS-` | 16 | HRS- | FHR | none | S | `16:199` | 1761409929/7812500000 | 279/1000 |
| `root/APQ+/AQR-/AQS+/CQR+/HQS-/BPQ-` | 21 | BQR- | ABQ | P | R | `21:11` | 1076733/3125000 | 13857/20000 |
| `root/APQ+/AQR-/AQS+/CQR+/HQS-/BPQ-` | 21 | PQR- | FPQ | S | R | `21:912` | 574741/1000000 | 13857/20000 |

## Coordinate continuations

| Metric scope | Address | Packet | Stages | Split coordinate | Cut | Has continuation | Forced-source forest | Forced-source node | Forced-source stage | Forced-source sign |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |

## Exact totals

| Object | Count |
| --- | --- |
| contexts | 34 |
| signNodes | 31 |
| signSplits | 15 |
| signLeaves | 16 |
| coordinateSplits | 0 |
| terminals | 16 |
| stages | 34 |
| boxStages | 19 |
| intervalSteps | 1948 |
| physicalFactors | 586 |
| areaBounds | 1168 |
| areaUpdates | 846 |
| scalarRelations | 191 |
| linearFactors | 79 |
| linearWeights | 79 |
| linearTerminals | 1 |
