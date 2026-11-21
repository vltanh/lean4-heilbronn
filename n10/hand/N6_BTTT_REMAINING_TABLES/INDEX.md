# BTTT ---+: fixed proof index

The main theorem note, this index, and the linked tables form the literal argument.

## Hypotheses and format

| Property | Value |
| --- | --- |
| Format | n6-bttt-remaining-triangle-proof-v1 |
| Status | Complete literal proof; independent standard-library Fraction audit and seven mutation checks pass. |
| Threshold | 93/1000 |
| Locations | BTTT |
| Top word | `---+` |
| Normalized e <= f | yes |
| Variables | a, b, c, e, f, h, p, q, u, v, r, w, j, k |
| Actual labels | ABCEFHPQRS |
| Terminal stage order | 3, 6, 9, 11, 13, 14, 16, 19, 20, 23, 25, 26, 28, 29 |

## Table files

| Kind | File |
| --- | --- |
| contexts | contexts.md |
| stages | stages_00.md |
| stages | stages_01.md |
| stages | stages_02.md |

## Actual-sign case tree

| Node | Depth | Given premises | Stages | Split | Children | Terminal | Metric |
| --- | --- | --- | --- | --- | --- | --- | --- |
| root | 0 | none | 0 | APQ | root/APQ-, root/APQ+ | none | none |
| root/APQ- | 1 | APQ- | 1 | AQR | root/APQ-/AQR-, root/APQ-/AQR+ | none | none |
| root/APQ+ | 1 | APQ+ | 2 | AQR | root/APQ+/AQR-, root/APQ+/AQR+ | none | none |
| root/APQ-/AQR- | 2 | APQ-, AQR- | 3 | none | none | 3 | none |
| root/APQ-/AQR+ | 2 | APQ-, AQR+ | 4, 5 | BQS | root/APQ-/AQR+/BQS-, root/APQ-/AQR+/BQS+ | none | none |
| root/APQ+/AQR- | 2 | APQ+, AQR- | 6 | none | none | 6 | none |
| root/APQ+/AQR+ | 2 | APQ+, AQR+ | 7 | AQS | root/APQ+/AQR+/AQS-, root/APQ+/AQR+/AQS+ | none | none |
| root/APQ-/AQR+/BQS- | 3 | APQ-, AQR+, AQS-, BQS- | 8 | HQR | root/APQ-/AQR+/BQS-/HQR-, root/APQ-/AQR+/BQS-/HQR+ | none | none |
| root/APQ-/AQR+/BQS+ | 3 | APQ-, AQR+, AQS-, BQS+ | 9 | none | none | 9 | none |
| root/APQ+/AQR+/AQS- | 3 | APQ+, AQR+, AQS- | 10 | CQS | root/APQ+/AQR+/AQS-/CQS-, root/APQ+/AQR+/AQS-/CQS+ | none | none |
| root/APQ+/AQR+/AQS+ | 3 | APQ+, AQR+, AQS+ | 11 | none | none | 11 | none |
| root/APQ-/AQR+/BQS-/HQR- | 4 | APQ-, AQR+, AQS-, BQS-, HQR- | 12 | CQS | root/APQ-/AQR+/BQS-/HQR-/CQS-, root/APQ-/AQR+/BQS-/HQR-/CQS+ | none | none |
| root/APQ-/AQR+/BQS-/HQR+ | 4 | APQ-, AQR+, AQS-, BQS-, HQR+ | 13 | none | none | 13 | none |
| root/APQ+/AQR+/AQS-/CQS- | 4 | APQ+, AQR+, AQS-, CQS- | 14 | none | none | 14 | none |
| root/APQ+/AQR+/AQS-/CQS+ | 4 | APQ+, AQR+, AQS-, CQS+ | 15 | HQR | root/APQ+/AQR+/AQS-/CQS+/HQR-, root/APQ+/AQR+/AQS-/CQS+/HQR+ | none | none |
| root/APQ-/AQR+/BQS-/HQR-/CQS- | 5 | APQ-, AQR+, AQS-, BQS-, HQR-, CQS- | 16 | none | none | 16 | none |
| root/APQ-/AQR+/BQS-/HQR-/CQS+ | 5 | APQ-, AQR+, AQS-, BQS-, HQR-, CQS+ | 17 | PQR | root/APQ-/AQR+/BQS-/HQR-/CQS+/PQR-, root/APQ-/AQR+/BQS-/HQR-/CQS+/PQR+ | none | none |
| root/APQ+/AQR+/AQS-/CQS+/HQR- | 5 | APQ+, AQR+, AQS-, CQS+, HQR- | 18 | BPQ | root/APQ+/AQR+/AQS-/CQS+/HQR-/BPQ-, root/APQ+/AQR+/AQS-/CQS+/HQR-/BPQ+ | none | none |
| root/APQ+/AQR+/AQS-/CQS+/HQR+ | 5 | APQ+, AQR+, AQS-, CQS+, HQR+ | 19 | none | none | 19 | none |
| root/APQ-/AQR+/BQS-/HQR-/CQS+/PQR- | 6 | APQ-, AQR+, AQS-, BQS-, HQR-, CQS+, PQR- | 20 | none | none | 20 | none |
| root/APQ-/AQR+/BQS-/HQR-/CQS+/PQR+ | 6 | APQ-, AQR+, AQS-, BQS-, HQR-, CQS+, PQR+ | 21 | APR | root/APQ-/AQR+/BQS-/HQR-/CQS+/PQR+/APR-, root/APQ-/AQR+/BQS-/HQR-/CQS+/PQR+/APR+ | none | none |
| root/APQ+/AQR+/AQS-/CQS+/HQR-/BPQ- | 6 | APQ+, AQR+, AQS-, CQS+, HQR-, BPQ- | 22, 23 | none | none | 23 | none |
| root/APQ+/AQR+/AQS-/CQS+/HQR-/BPQ+ | 6 | APQ+, AQR+, AQS-, CQS+, HQR-, BPQ+ | 24 | BQS | root/APQ+/AQR+/AQS-/CQS+/HQR-/BPQ+/BQS-, root/APQ+/AQR+/AQS-/CQS+/HQR-/BPQ+/BQS+ | none | none |
| root/APQ-/AQR+/BQS-/HQR-/CQS+/PQR+/APR- | 7 | APQ-, AQR+, AQS-, BQS-, HQR-, CQS+, PQR+, APR- | 25 | none | none | 25 | none |
| root/APQ-/AQR+/BQS-/HQR-/CQS+/PQR+/APR+ | 7 | APQ-, AQR+, AQS-, BQS-, HQR-, CQS+, PQR+, APR+ | 26 | none | none | 26 | none |
| root/APQ+/AQR+/AQS-/CQS+/HQR-/BPQ+/BQS- | 7 | APQ+, AQR+, AQS-, CQS+, HQR-, BPQ+, BQS- | 27, 28 | none | none | 28 | none |
| root/APQ+/AQR+/AQS-/CQS+/HQR-/BPQ+/BQS+ | 7 | APQ+, AQR+, AQS-, CQS+, HQR-, BPQ+, BQS+ | 29 | none | none | 29 | none |

## Capacity-forced signs

| Node | Stage | Forced sign | Outer triangle | Occupants | Excluded point | Upper reference | Upper bound | Cost with extra point |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| root/APQ-/AQR+ | 4 | AQS- | AFQ | P, R | S | 4:47 | 789889218671/1000000000000 | 411711/500000 |
| root/APQ+/AQR+/AQS-/CQS+/HQR-/BPQ- | 22 | BQS- | ABQ | P | S | 22:11 | 1076733/3125000 | 13857/20000 |
| root/APQ+/AQR+/AQS-/CQS+/HQR-/BPQ- | 22 | BPR+ | ABR | none | P | 22:1166 | 55477/200000 | 279/1000 |
| root/APQ+/AQR+/AQS-/CQS+/HQR-/BPQ- | 22 | BRS- | ABR | none | S | 22:1166 | 55477/200000 | 279/1000 |
| root/APQ+/AQR+/AQS-/CQS+/HQR-/BPQ- | 22 | PQS- | FPQ | R | S | 22:400 | 607373/1000000 | 13857/20000 |
| root/APQ+/AQR+/AQS-/CQS+/HQR-/BPQ+/BQS- | 27 | CRS+ | CER | none | S | 27:133 | 13217722949/62500000000 | 279/1000 |

## Coordinate continuations

| Metric scope | Address | Packet | Stages | Split coordinate | Cut | Has continuation | Forced-source forest | Forced-source node | Forced-source stage | Forced-source sign |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |


## Exact totals

| Object | Count |
| --- | --- |
| contexts | 30 |
| signNodes | 27 |
| signSplits | 13 |
| signLeaves | 14 |
| coordinateSplits | 0 |
| terminals | 14 |
| stages | 30 |
| boxStages | 16 |
| intervalSteps | 1493 |
| physicalFactors | 525 |
| areaBounds | 830 |
| areaUpdates | 664 |
| scalarRelations | 277 |
| linearFactors | 0 |
| linearWeights | 0 |
| linearTerminals | 0 |
