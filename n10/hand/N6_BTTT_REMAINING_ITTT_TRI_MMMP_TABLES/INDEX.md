# ITTT ---+: fixed proof index

The main theorem note, this index, and the linked tables form the literal argument.

## Hypotheses and format

| Property | Value |
| --- | --- |
| Format | n6-ittt-triangular-pair-proof-v1 |
| Status | Complete literal derivation; independent geometry and exact arithmetic accepted. |
| Threshold | 93/1000 |
| Locations | ITTT |
| Top word | `---+` |
| Normalized e <= f | yes |
| Variables | a, b, c, e, f, h, p, q, u, v, r, w, j, k |
| Actual labels | ABCEFHPQRS |
| Terminal stage order | 10, 20, 25, 26, 51, 52, 65, 68 |

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

## Actual-sign case tree

| Node | Depth | Given premises | Stages | Split | Children | Terminal | Metric |
| --- | --- | --- | --- | --- | --- | --- | --- |
| root | 0 | none | 0, 1, 2, 3, 4 | CFP | root/CFP-, root/CFP+ | none | none |
| root/CFP+ | 1 | CPS-, CFP+ | 5, 6, 7, 8 | EHP | root/CFP+/EHP-, root/CFP+/EHP+ | none | none |
| root/CFP+/EHP+ | 2 | CPS-, CFP+, EHP+ | 9, 10 | none | none | 10 | none |
| root/CFP+/EHP- | 2 | CPS-, CFP+, EHP- | 11, 12, 13, 14, 15, 16 | APQ | root/CFP+/EHP-/APQ-, root/CFP+/EHP-/APQ+ | none | none |
| root/CFP+/EHP-/APQ+ | 3 | CPS-, CFP+, EHP-, APQ+ | 17, 18, 19, 20 | none | none | 20 | none |
| root/CFP+/EHP-/APQ- | 3 | CPS-, CFP+, EHP-, APQ- | 21, 22 | AQR | root/CFP+/EHP-/APQ-/AQR-, root/CFP+/EHP-/APQ-/AQR+ | none | none |
| root/CFP+/EHP-/APQ-/AQR+ | 4 | CPS-, CFP+, EHP-, APQ-, AQR+ | 23, 24, 25 | none | none | 25 | none |
| root/CFP+/EHP-/APQ-/AQR- | 4 | CPS-, CFP+, EHP-, APQ-, AQR- | 26 | none | none | 26 | none |
| root/CFP- | 1 | CPS-, CFP- | 27, 28, 29, 30, 31, 32, 33, 34, 35 | EHP | root/CFP-/EHP-, root/CFP-/EHP+ | none | none |
| root/CFP-/EHP+ | 2 | CPS-, CFP-, EHP+ | 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47 | APS | root/CFP-/EHP+/APS-, root/CFP-/EHP+/APS+ | none | none |
| root/CFP-/EHP+/APS+ | 3 | CPS-, CFP-, EHP+, HRS-, APS+ | 48, 49, 50, 51 | none | none | 51 | none |
| root/CFP-/EHP+/APS- | 3 | CPS-, CFP-, EHP+, HRS-, APS- | 52 | none | none | 52 | none |
| root/CFP-/EHP- | 2 | CPS-, CFP-, EHP- | 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63 | APS | root/CFP-/EHP-/APS-, root/CFP-/EHP-/APS+ | none | none |
| root/CFP-/EHP-/APS+ | 3 | CPS-, CFP-, EHP-, APS+ | 64, 65 | none | none | 65 | none |
| root/CFP-/EHP-/APS- | 3 | CPS-, CFP-, EHP-, APS- | 66, 67, 68 | none | none | 68 | none |

## Capacity-forced signs

| Node | Stage | Forced sign | Outer triangle | Occupants | Excluded point | Upper reference | Upper bound | Cost with extra point |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| root | 0 | CPS- | CES | none | P | 0:115 | 30872448121/125000000000 | 279/1000 |
| root/CFP+/EHP-/APQ+ | 17 | CQR+ | CEQ | none | R | 17:113 | 33396659539/125000000000 | 279/1000 |
| root/CFP+/EHP-/APQ+ | 17 | CQS+ | CEQ | none | S | 17:113 | 33396659539/125000000000 | 279/1000 |
| root/CFP+/EHP-/APQ+ | 18 | CRS+ | CER | none | S | 18:115 | 53890712547/200000000000 | 279/1000 |
| root/CFP+/EHP-/APQ+ | 19 | HPR+ | FHR | none | P | 19:299 | 261241/1000000 | 279/1000 |
| root/CFP+/EHP-/APQ+ | 19 | HRS- | FHR | none | S | 19:299 | 261241/1000000 | 279/1000 |
| root/CFP+/EHP-/APQ-/AQR+ | 23 | AQS- | AFQ | P, R | S | 23:47 | 48727839803/62500000000 | 411711/500000 |
| root/CFP+/EHP-/APQ-/AQR+ | 24 | HPR- | EHR | S | P | 24:173 | 687045454971/1000000000000 | 13857/20000 |
| root/CFP+/EHP-/APQ-/AQR+ | 24 | PQR+ | EPQ | S | R | 24:177 | 21459732961/31250000000 | 13857/20000 |
| root/CFP-/EHP+ | 37 | HRS- | FHR | none | S | 37:1153 | 69413/250000 | 279/1000 |
| root/CFP-/EHP+/APS+ | 48 | BPS+ | ABS | none | P | 48:15 | 22333570959/100000000000 | 279/1000 |
| root/CFP-/EHP-/APS+ | 64 | BPS+ | ABS | none | P | 64:15 | 21739205629/100000000000 | 279/1000 |
| root/CFP-/EHP-/APS+ | 64 | HPR+ | FHR | none | P | 64:278 | 32983/125000 | 279/1000 |
| root/CFP-/EHP-/APS+ | 64 | HRS- | FHR | none | S | 64:278 | 32983/125000 | 279/1000 |
| root/CFP-/EHP-/APS- | 67 | CPQ- | CEQ | none | P | 67:115 | 3444356043/12500000000 | 279/1000 |
| root/CFP-/EHP-/APS- | 67 | CQR+ | CEQ | none | R | 67:115 | 3444356043/12500000000 | 279/1000 |
| root/CFP-/EHP-/APS- | 67 | CQS+ | CEQ | none | S | 67:115 | 3444356043/12500000000 | 279/1000 |
| root/CFP-/EHP-/APS- | 67 | HPR+ | FHR | none | P | 67:293 | 66773/250000 | 279/1000 |
| root/CFP-/EHP-/APS- | 67 | HRS- | FHR | none | S | 67:293 | 66773/250000 | 279/1000 |

## Coordinate continuations

| Metric scope | Address | Packet | Stages | Split coordinate | Cut | Has continuation | Forced-source forest | Forced-source node | Forced-source stage | Forced-source sign |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |


## Exact totals

| Object | Count |
| --- | --- |
| contexts | 69 |
| signNodes | 15 |
| signSplits | 7 |
| signLeaves | 8 |
| coordinateSplits | 0 |
| terminals | 8 |
| stages | 69 |
| boxStages | 69 |
| intervalSteps | 3805 |
| physicalFactors | 840 |
| areaBounds | 6323 |
| areaUpdates | 4772 |
| scalarRelations | 778 |
| linearFactors | 0 |
| linearWeights | 0 |
| linearTerminals | 0 |
| affineBounds | 0 |
