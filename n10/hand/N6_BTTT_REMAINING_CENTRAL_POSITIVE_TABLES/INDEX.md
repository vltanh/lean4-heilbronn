# BTTT +--+: fixed proof index

The main theorem note, this index, and the linked tables form the literal argument.

## Hypotheses and format

| Property | Value |
| --- | --- |
| Format | n6-bttt-central-positive-proof-v1 |
| Status | Complete literal proof; independent standard-library Fraction audit and twenty mutation checks pass. |
| Threshold | 93/1000 |
| Locations | BTTT |
| Top word | `+--+` |
| Normalized e <= f | yes |
| Variables | a, b, c, e, f, h, p, q, u, v, r, w, j, k |
| Actual labels | ABCEFHPQRS |
| Terminal stage order | 4, 7, 19, 21, 22, 23 |

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
| root | 0 | BHP-, AFP+ | 0, 1, 2, 3 | ARS | root/ARS-, root/ARS+ | none | none |
| root/ARS+ | 1 | BHP-, AFP+, HRS-, PRS-, ARS+ | 4 | none | none | 4 | none |
| root/ARS- | 1 | BHP-, AFP+, HRS-, PRS-, ARS- | 5, 6 | BRS | root/ARS-/BRS-, root/ARS-/BRS+ | none | none |
| root/ARS-/BRS+ | 2 | BHP-, AFP+, HRS-, PRS-, ARS-, BRS+ | 7 | none | none | 7 | none |
| root/ARS-/BRS- | 2 | BHP-, AFP+, HRS-, PRS-, ARS-, BRS- | 8, 9 | CRS | root/ARS-/BRS-/CRS-, root/ARS-/BRS-/CRS+ | none | none |
| root/ARS-/BRS-/CRS+ | 3 | BHP-, AFP+, HRS-, PRS-, ARS-, BRS-, CRS+ | 10, 11, 12, 13, 14, 15 | AQS | root/ARS-/BRS-/CRS+/AQS-, root/ARS-/BRS-/CRS+/AQS+ | none | none |
| root/ARS-/BRS-/CRS+/AQS+ | 4 | BHP-, AFP+, HRS-, PRS-, ARS-, BRS-, CRS+, HQS-, AQS+ | 16, 17, 18 | PQS | root/ARS-/BRS-/CRS+/AQS+/PQS-, root/ARS-/BRS-/CRS+/AQS+/PQS+ | none | none |
| root/ARS-/BRS-/CRS+/AQS+/PQS+ | 5 | BHP-, AFP+, HRS-, PRS-, ARS-, BRS-, CRS+, HQS-, AQS+, PQS+ | 19 | none | none | 19 | none |
| root/ARS-/BRS-/CRS+/AQS+/PQS- | 5 | BHP-, AFP+, HRS-, PRS-, ARS-, BRS-, CRS+, HQS-, AQS+, PQS- | 20, 21 | none | none | 21 | none |
| root/ARS-/BRS-/CRS+/AQS- | 4 | BHP-, AFP+, HRS-, PRS-, ARS-, BRS-, CRS+, HQS-, AQS- | 22 | none | none | 22 | none |
| root/ARS-/BRS-/CRS- | 3 | BHP-, AFP+, HRS-, PRS-, ARS-, BRS-, CRS- | 23 | none | none | 23 | none |

## Capacity-forced signs

| Node | Stage | Forced sign | Outer triangle | Occupants | Excluded point | Upper reference | Upper bound | Cost with extra point |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| root | 0 | HRS- | FHR | none | S | 0:193 | 102443652747/500000000000 | 279/1000 |
| root | 0 | PRS- | FPR | none | S | 0:199 | 13678786913/50000000000 | 279/1000 |
| root/ARS-/BRS-/CRS+ | 11 | HQS- | FHQ | none | S | 11:199 | 66508820461/250000000000 | 279/1000 |

## Coordinate continuations

| Metric scope | Address | Packet | Stages | Split coordinate | Cut | Has continuation | Forced-source forest | Forced-source node | Forced-source stage | Forced-source sign |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |


## Exact totals

| Object | Count |
| --- | --- |
| contexts | 24 |
| signNodes | 11 |
| signSplits | 5 |
| signLeaves | 6 |
| coordinateSplits | 0 |
| terminals | 6 |
| stages | 24 |
| boxStages | 24 |
| intervalSteps | 1262 |
| physicalFactors | 275 |
| areaBounds | 4047 |
| areaUpdates | 3154 |
| scalarRelations | 480 |
| linearFactors | 0 |
| linearWeights | 0 |
| linearTerminals | 0 |
