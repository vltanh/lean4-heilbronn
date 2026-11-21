# ITTT ----: fixed proof index

The main theorem note, this index, and the linked tables form the literal argument.

## Hypotheses and format

| Property | Value |
| --- | --- |
| Format | n6-ittt-triangular-pair-proof-v1 |
| Status | Complete literal derivation; independent geometry and exact arithmetic accepted. |
| Threshold | 93/1000 |
| Locations | ITTT |
| Top word | `----` |
| Normalized e <= f | yes |
| Variables | a, b, c, e, f, h, p, q, u, v, r, w, j, k |
| Actual labels | ABCEFHPQRS |
| Terminal stage order | 6, 25, 39, 40, 43, 47 |

## Table files

| Kind | File |
| --- | --- |
| contexts | contexts.md |
| stages | stages_00.md |
| stages | stages_01.md |
| stages | stages_02.md |
| stages | stages_03.md |
| stages | stages_04.md |

## Actual-sign case tree

| Node | Depth | Given premises | Stages | Split | Children | Terminal | Metric |
| --- | --- | --- | --- | --- | --- | --- | --- |
| root | 0 | none | 0, 1, 2, 3, 4 | EHP | root/EHP-, root/EHP+ | none | none |
| root/EHP+ | 1 | CPR-, CRS+, CFP+, EHP+ | 5, 6 | none | none | 6 | none |
| root/EHP- | 1 | CPR-, CRS+, CFP+, EHP- | 7, 8, 9, 10, 11, 12 | APQ | root/EHP-/APQ-, root/EHP-/APQ+ | none | none |
| root/EHP-/APQ+ | 2 | CPR-, CRS+, CFP+, EHP-, APQ+ | 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24 | AQR | root/EHP-/APQ+/AQR-, root/EHP-/APQ+/AQR+ | none | none |
| root/EHP-/APQ+/AQR+ | 3 | CPR-, CRS+, CFP+, EHP-, APQ+, CQR+, CQS+, HPS+, AQR+ | 25 | none | none | 25 | none |
| root/EHP-/APQ+/AQR- | 3 | CPR-, CRS+, CFP+, EHP-, APQ+, CQR+, CQS+, HPS+, AQR- | 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37 | AQS | root/EHP-/APQ+/AQR-/AQS-, root/EHP-/APQ+/AQR-/AQS+ | none | none |
| root/EHP-/APQ+/AQR-/AQS+ | 4 | CPR-, CRS+, CFP+, EHP-, APQ+, CQR+, CQS+, HPS+, AQR-, AQS+ | 38, 39 | none | none | 39 | none |
| root/EHP-/APQ+/AQR-/AQS- | 4 | CPR-, CRS+, CFP+, EHP-, APQ+, CQR+, CQS+, HPS+, AQR-, AQS- | 40 | none | none | 40 | none |
| root/EHP-/APQ- | 2 | CPR-, CRS+, CFP+, EHP-, APQ- | 41, 42 | AQR | root/EHP-/APQ-/AQR-, root/EHP-/APQ-/AQR+ | none | none |
| root/EHP-/APQ-/AQR+ | 3 | CPR-, CRS+, CFP+, EHP-, APQ-, AQR+ | 43 | none | none | 43 | none |
| root/EHP-/APQ-/AQR- | 3 | CPR-, CRS+, CFP+, EHP-, APQ-, AQR- | 44, 45, 46, 47 | none | none | 47 | none |

## Capacity-forced signs

| Node | Stage | Forced sign | Outer triangle | Occupants | Excluded point | Upper reference | Upper bound | Cost with extra point |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| root | 0 | CPR- | CER | none | P | 0:295 | 251871/1000000 | 279/1000 |
| root | 0 | CRS+ | CER | none | S | 0:295 | 251871/1000000 | 279/1000 |
| root | 1 | CFP+ | CFR | S | P | 1:121 | 334411734153/500000000000 | 13857/20000 |
| root/EHP-/APQ+ | 13 | CQR+ | CEQ | none | R | 13:113 | 33396659539/125000000000 | 279/1000 |
| root/EHP-/APQ+ | 13 | CQS+ | CEQ | none | S | 13:113 | 33396659539/125000000000 | 279/1000 |
| root/EHP-/APQ+ | 23 | HPS+ | FHS | none | P | 23:185 | 34833810809/125000000000 | 279/1000 |
| root/EHP-/APQ+/AQR-/AQS+ | 38 | BPS+ | ABS | none | P | 38:848 | 55071/250000 | 279/1000 |
| root/EHP-/APQ+/AQR-/AQS+ | 38 | APR+ | AFR | S | P | 38:1769 | 689949/1000000 | 13857/20000 |
| root/EHP-/APQ+/AQR-/AQS+ | 38 | PQR- | FPQ | S | R | 38:199 | 233789465647/500000000000 | 13857/20000 |
| root/EHP-/APQ-/AQR- | 44 | PQS+ | EPQ | R | S | 44:171 | 21459732961/31250000000 | 13857/20000 |
| root/EHP-/APQ-/AQR- | 45 | HPS+ | FHS | none | P | 45:785 | 62939/250000 | 279/1000 |
| root/EHP-/APQ-/AQR- | 46 | CQR+ | CEQ | none | R | 46:129 | 126127403309/500000000000 | 279/1000 |

## Coordinate continuations

| Metric scope | Address | Packet | Stages | Split coordinate | Cut | Has continuation | Forced-source forest | Forced-source node | Forced-source stage | Forced-source sign |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |


## Exact totals

| Object | Count |
| --- | --- |
| contexts | 48 |
| signNodes | 11 |
| signSplits | 5 |
| signLeaves | 6 |
| coordinateSplits | 0 |
| terminals | 6 |
| stages | 48 |
| boxStages | 47 |
| intervalSteps | 4851 |
| physicalFactors | 704 |
| areaBounds | 5962 |
| areaUpdates | 4383 |
| scalarRelations | 992 |
| linearFactors | 0 |
| linearWeights | 0 |
| linearTerminals | 0 |
| affineBounds | 0 |
