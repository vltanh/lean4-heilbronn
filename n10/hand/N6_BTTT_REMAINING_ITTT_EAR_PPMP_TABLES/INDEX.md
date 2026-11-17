# ITTT ++-+: fixed proof index

The main theorem note, this index, and the linked tables form the literal argument.

## Hypotheses and format

| Property | Value |
| --- | --- |
| Format | n6-ittt-single-ear-proof-v1 |
| Status | Complete literal derivation; independent geometry and exact arithmetic accepted. |
| Threshold | 93/1000 |
| Locations | ITTT |
| Top word | `++-+` |
| Normalized e <= f | yes |
| Variables | a, b, c, e, f, h, p, q, u, v, r, w, j, k |
| Actual labels | ABCEFHPQRS |
| Terminal stage order | 33, 36, 44, 48, 50, 63, 64, 76, 87, 88 |

## Table files

| Kind | File |
| --- | --- |
| contexts | contexts.md |
| stages | stages_00.md |
| stages | stages_01.md |
| stages | stages_02.md |
| stages | stages_03.md |
| stages | stages_04.md |
| stages | stages_05.md |
| stages | stages_06.md |
| stages | stages_07.md |
| stages | stages_08.md |

## Actual-sign case tree

| Node | Depth | Given premises | Stages | Split | Children | Terminal | Metric |
| --- | --- | --- | --- | --- | --- | --- | --- |
| root | 0 | none | 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11 | CFP | root/CFP-, root/CFP+ | none | none |
| root/CFP+ | 1 | CPQ-, CFP+ | 12, 13, 14, 15, 16, 17, 18, 19, 20 | EHP | root/CFP+/EHP-, root/CFP+/EHP+ | none | none |
| root/CFP+/EHP+ | 2 | CPQ-, CFP+, EHP+ | 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32 | APQ | root/CFP+/EHP+/APQ-, root/CFP+/EHP+/APQ+ | none | none |
| root/CFP+/EHP+/APQ+ | 3 | CPQ-, CFP+, EHP+, APQ+ | 33 | none | none | 33 | none |
| root/CFP+/EHP+/APQ- | 3 | CPQ-, CFP+, EHP+, APQ- | 34, 35, 36 | none | none | 36 | none |
| root/CFP+/EHP- | 2 | CPQ-, CFP+, EHP- | 37, 38, 39, 40, 41, 42, 43 | APQ | root/CFP+/EHP-/APQ-, root/CFP+/EHP-/APQ+ | none | none |
| root/CFP+/EHP-/APQ+ | 3 | CPQ-, CFP+, EHP-, APQ+ | 44 | none | none | 44 | none |
| root/CFP+/EHP-/APQ- | 3 | CPQ-, CFP+, EHP-, APQ- | 45, 46 | HPQ | root/CFP+/EHP-/APQ-/HPQ-, root/CFP+/EHP-/APQ-/HPQ+ | none | none |
| root/CFP+/EHP-/APQ-/HPQ+ | 4 | CPQ-, CFP+, EHP-, APQ-, HPQ+ | 47, 48 | none | none | 48 | none |
| root/CFP+/EHP-/APQ-/HPQ- | 4 | CPQ-, CFP+, EHP-, APQ-, HPQ- | 49, 50 | none | none | 50 | none |
| root/CFP- | 1 | CPQ-, CFP- | 51, 52, 53, 54, 55, 56 | EHP | root/CFP-/EHP-, root/CFP-/EHP+ | none | none |
| root/CFP-/EHP+ | 2 | CPQ-, CFP-, EHP+ | 57, 58, 59, 60 | APQ | root/CFP-/EHP+/APQ-, root/CFP-/EHP+/APQ+ | none | none |
| root/CFP-/EHP+/APQ+ | 3 | CPQ-, CFP-, EHP+, APQ+ | 61, 62, 63 | none | none | 63 | none |
| root/CFP-/EHP+/APQ- | 3 | CPQ-, CFP-, EHP+, APQ- | 64 | none | none | 64 | none |
| root/CFP-/EHP- | 2 | CPQ-, CFP-, EHP- | 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75 | APQ | root/CFP-/EHP-/APQ-, root/CFP-/EHP-/APQ+ | none | none |
| root/CFP-/EHP-/APQ+ | 3 | CPQ-, CFP-, EHP-, APQ+ | 76 | none | none | 76 | none |
| root/CFP-/EHP-/APQ- | 3 | CPQ-, CFP-, EHP-, APQ- | 77, 78, 79, 80, 81, 82, 83, 84, 85 | APR | root/CFP-/EHP-/APQ-/APR-, root/CFP-/EHP-/APQ-/APR+ | none | none |
| root/CFP-/EHP-/APQ-/APR+ | 4 | CPQ-, CFP-, EHP-, APQ-, HPR+, HRS-, HPQ+, APR+ | 86, 87 | none | none | 87 | none |
| root/CFP-/EHP-/APQ-/APR- | 4 | CPQ-, CFP-, EHP-, APQ-, HPR+, HRS-, HPQ+, APR- | 88 | none | none | 88 | none |

## Capacity-forced signs

| Node | Stage | Forced sign | Outer triangle | Occupants | Excluded point | Upper reference | Upper bound | Cost with extra point |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| root | 0 | CPQ- | CEQ | none | P | 0:119 | 196846738349/1000000000000 | 279/1000 |
| root/CFP+/EHP+/APQ- | 35 | HRS- | FHR | none | S | 35:191 | 131609739799/500000000000 | 279/1000 |
| root/CFP+/EHP-/APQ-/HPQ- | 49 | PRS- | FPR | none | S | 49:197 | 248136607483/1000000000000 | 279/1000 |
| root/CFP-/EHP+/APQ+ | 61 | BPQ+ | ABQ | none | P | 61:11 | 125394377197/500000000000 | 279/1000 |
| root/CFP-/EHP+/APQ+ | 61 | BPS+ | ABS | none | P | 61:328 | 13177/50000 | 279/1000 |
| root/CFP-/EHP+/APQ+ | 62 | PRS+ | EPR | none | S | 62:181 | 32211928109/125000000000 | 279/1000 |
| root/CFP-/EHP+/APQ+ | 62 | HRS- | FHR | none | S | 62:195 | 14345173419/100000000000 | 279/1000 |
| root/CFP-/EHP-/APQ- | 78 | HPR+ | FHR | none | P | 78:187 | 139041994209/500000000000 | 279/1000 |
| root/CFP-/EHP-/APQ- | 78 | HRS- | FHR | none | S | 78:187 | 139041994209/500000000000 | 279/1000 |
| root/CFP-/EHP-/APQ- | 79 | HPQ+ | HQR | S | P | 79:205 | 139399356577/250000000000 | 13857/20000 |
| root/CFP-/EHP-/APQ-/APR+ | 86 | ARS+ | AQR | P | S | 86:65 | 342388873/500000000 | 13857/20000 |

## Coordinate continuations

| Metric scope | Address | Packet | Stages | Split coordinate | Cut | Has continuation | Forced-source forest | Forced-source node | Forced-source stage | Forced-source sign |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |


## Exact totals

| Object | Count |
| --- | --- |
| contexts | 89 |
| signNodes | 19 |
| signSplits | 9 |
| signLeaves | 10 |
| coordinateSplits | 0 |
| terminals | 10 |
| stages | 89 |
| boxStages | 89 |
| intervalSteps | 7558 |
| physicalFactors | 1236 |
| areaBounds | 6410 |
| areaUpdates | 4743 |
| scalarRelations | 873 |
| linearFactors | 0 |
| linearWeights | 0 |
| linearTerminals | 0 |
| affineBounds | 0 |
