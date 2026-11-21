# Fixed ITTT --+- proof: index

This is the literal finite proof index for N6_ITTT_TOP_TRIANGLE_WORD.md. Its tables, contexts.md, and the listed stage files together specify every premise, identity, exact bound, and contradictory leaf. No search output or unprinted certificate is a premise.

## Hypotheses and format

| Property | Value |
| --- | --- |
| Format | n6-ittt-triangle-split-proof-v1 |
| Status | Fixed literal rational proof; independent geometric and exact arithmetic review passed. |
| Threshold | 93/1000 |
| Locations | ITTT |
| Top word | `--+-` |
| Normalized e <= f | yes |
| Variables | a, b, c, e, f, h, p, q, u, v, r, w, j, k |
| Actual labels | ABCEFHPQRS |
| Terminal stage order | 8, 10, 11, 22, 24, 27, 29, 32, 33, 36, 37, 40, 41, 43, 45, 49, 50, 51, 52, 53 |

## Table files

| Kind | File |
| --- | --- |
| contexts | contexts.md |
| stages | stages_00.md |
| stages | stages_01.md |
| stages | stages_02.md |
| stages | stages_03.md |

## Actual-sign case tree

| Node | Depth | Given premises | Stages | Split | Children | Terminal | Metric |
| --- | --- | --- | --- | --- | --- | --- | --- |
| `root` | 0 | `none` | 0 | CFP | `root/CFP-, root/CFP+` | none | none |
| `root/CFP-` | 1 | `CPR-, CFP-` | 1, 2 | EHP | `root/CFP-/EHP-, root/CFP-/EHP+` | none | none |
| `root/CFP+` | 1 | `CPR-, CFP+` | 3 | EHP | `root/CFP+/EHP-, root/CFP+/EHP+` | none | none |
| `root/CFP-/EHP-` | 2 | `CPR-, CFP-, HPS+, EHP-` | 4 | CPS | `root/CFP-/EHP-/CPS-, root/CFP-/EHP-/CPS+` | none | none |
| `root/CFP-/EHP+` | 2 | `CPR-, CFP-, HPS+, EHP+` | 5 | APR | `root/CFP-/EHP+/APR-, root/CFP-/EHP+/APR+` | none | none |
| `root/CFP+/EHP-` | 2 | `CPR-, CFP+, EHP-` | 6 | APQ | `root/CFP+/EHP-/APQ-, root/CFP+/EHP-/APQ+` | none | none |
| `root/CFP+/EHP+` | 2 | `CPR-, CFP+, EHP+` | 7, 8 | none | none | 8 | none |
| `root/CFP-/EHP-/CPS-` | 3 | `CPR-, CFP-, HPS+, EHP-, CPS-` | 9 | APS | `root/CFP-/EHP-/CPS-/APS-, root/CFP-/EHP-/CPS-/APS+` | none | none |
| `root/CFP-/EHP-/CPS+` | 3 | `CPR-, CFP-, HPS+, EHP-, CPS+` | 10 | none | none | 10 | none |
| `root/CFP-/EHP+/APR-` | 3 | `CPR-, CFP-, HPS+, EHP+, APR-` | 11 | none | none | 11 | none |
| `root/CFP-/EHP+/APR+` | 3 | `CPR-, CFP-, HPS+, EHP+, APR+` | 12 | CPS | `root/CFP-/EHP+/APR+/CPS-, root/CFP-/EHP+/APR+/CPS+` | none | none |
| `root/CFP+/EHP-/APQ-` | 3 | `CPR-, CFP+, EHP-, APQ-` | 13 | AQR | `root/CFP+/EHP-/APQ-/AQR-, root/CFP+/EHP-/APQ-/AQR+` | none | none |
| `root/CFP+/EHP-/APQ+` | 3 | `CPR-, CFP+, EHP-, APQ+` | 14, 15, 16, 17, 18, 19, 20, 21, 22 | none | none | 22 | none |
| `root/CFP-/EHP-/CPS-/APS-` | 4 | `CPR-, CFP-, HPS+, EHP-, CPS-, APS-` | 23, 24 | none | none | 24 | none |
| `root/CFP-/EHP-/CPS-/APS+` | 4 | `CPR-, CFP-, HPS+, EHP-, CPS-, APS+` | 25 | APR | `root/CFP-/EHP-/CPS-/APS+/APR-, root/CFP-/EHP-/CPS-/APS+/APR+` | none | none |
| `root/CFP-/EHP+/APR+/CPS-` | 4 | `CPR-, CFP-, HPS+, EHP+, APR+, BPR+, BPS+, CPS-` | 26 | APQ | `root/CFP-/EHP+/APR+/CPS-/APQ-, root/CFP-/EHP+/APR+/CPS-/APQ+` | none | none |
| `root/CFP-/EHP+/APR+/CPS+` | 4 | `CPR-, CFP-, HPS+, EHP+, APR+, BPR+, BPS+, CPS+` | 27 | none | none | 27 | none |
| `root/CFP+/EHP-/APQ-/AQR-` | 4 | `CPR-, CFP+, EHP-, APQ-, AQR-` | 28 | BQR | `root/CFP+/EHP-/APQ-/AQR-/BQR-, root/CFP+/EHP-/APQ-/AQR-/BQR+` | none | none |
| `root/CFP+/EHP-/APQ-/AQR+` | 4 | `CPR-, CFP+, EHP-, APQ-, AQR+` | 29 | none | none | 29 | none |
| `root/CFP-/EHP-/CPS-/APS+/APR-` | 5 | `CPR-, CFP-, HPS+, EHP-, CPS-, APS+, BPS+, APR-` | 30 | HPR | `root/CFP-/EHP-/CPS-/APS+/APR-/HPR-, root/CFP-/EHP-/CPS-/APS+/APR-/HPR+` | none | none |
| `root/CFP-/EHP-/CPS-/APS+/APR+` | 5 | `CPR-, CFP-, HPS+, EHP-, CPS-, APS+, BPS+, APR+` | 31, 32 | none | none | 32 | none |
| `root/CFP-/EHP+/APR+/CPS-/APQ-` | 5 | `CPR-, CFP-, HPS+, EHP+, APR+, BPR+, BPS+, CPS-, APQ-` | 33 | none | none | 33 | none |
| `root/CFP-/EHP+/APR+/CPS-/APQ+` | 5 | `CPR-, CFP-, HPS+, EHP+, APR+, BPR+, BPS+, CPS-, APQ+` | 34 | AQR | `root/CFP-/EHP+/APR+/CPS-/APQ+/AQR-, root/CFP-/EHP+/APR+/CPS-/APQ+/AQR+` | none | none |
| `root/CFP+/EHP-/APQ-/AQR-/BQR-` | 5 | `CPR-, CFP+, EHP-, APQ-, AQR-, PQS+, BQR-` | 35 | CQR | `root/CFP+/EHP-/APQ-/AQR-/BQR-/CQR-, root/CFP+/EHP-/APQ-/AQR-/BQR-/CQR+` | none | none |
| `root/CFP+/EHP-/APQ-/AQR-/BQR+` | 5 | `CPR-, CFP+, EHP-, APQ-, AQR-, PQS+, BQR+` | 36 | none | none | 36 | none |
| `root/CFP-/EHP-/CPS-/APS+/APR-/HPR-` | 6 | `CPR-, CFP-, HPS+, EHP-, CPS-, APS+, BPS+, APR-, HPR-` | 37 | none | none | 37 | none |
| `root/CFP-/EHP-/CPS-/APS+/APR-/HPR+` | 6 | `CPR-, CFP-, HPS+, EHP-, CPS-, APS+, BPS+, APR-, HPR+` | 38 | APQ | `root/CFP-/EHP-/CPS-/APS+/APR-/HPR+/APQ-, root/CFP-/EHP-/CPS-/APS+/APR-/HPR+/APQ+` | none | none |
| `root/CFP-/EHP+/APR+/CPS-/APQ+/AQR-` | 6 | `CPR-, CFP-, HPS+, EHP+, APR+, BPR+, BPS+, CPS-, APQ+, AQR-` | 39 | AQS | `root/CFP-/EHP+/APR+/CPS-/APQ+/AQR-/AQS-, root/CFP-/EHP+/APR+/CPS-/APQ+/AQR-/AQS+` | none | none |
| `root/CFP-/EHP+/APR+/CPS-/APQ+/AQR+` | 6 | `CPR-, CFP-, HPS+, EHP+, APR+, BPR+, BPS+, CPS-, APQ+, AQR+` | 40 | none | none | 40 | none |
| `root/CFP+/EHP-/APQ-/AQR-/BQR-/CQR-` | 6 | `CPR-, CFP+, EHP-, APQ-, AQR-, PQS+, BQR-, CQR-` | 41 | none | none | 41 | none |
| `root/CFP+/EHP-/APQ-/AQR-/BQR-/CQR+` | 6 | `CPR-, CFP+, EHP-, APQ-, AQR-, PQS+, BQR-, CQR+` | 42 | HQS | `root/CFP+/EHP-/APQ-/AQR-/BQR-/CQR+/HQS-, root/CFP+/EHP-/APQ-/AQR-/BQR-/CQR+/HQS+` | none | none |
| `root/CFP-/EHP-/CPS-/APS+/APR-/HPR+/APQ-` | 7 | `CPR-, CFP-, HPS+, EHP-, CPS-, APS+, BPS+, APR-, HPR+, APQ-` | 43 | none | none | 43 | none |
| `root/CFP-/EHP-/CPS-/APS+/APR-/HPR+/APQ+` | 7 | `CPR-, CFP-, HPS+, EHP-, CPS-, APS+, BPS+, APR-, HPR+, APQ+` | 44 | CQR | `root/CFP-/EHP-/CPS-/APS+/APR-/HPR+/APQ+/CQR-, root/CFP-/EHP-/CPS-/APS+/APR-/HPR+/APQ+/CQR+` | none | none |
| `root/CFP-/EHP+/APR+/CPS-/APQ+/AQR-/AQS-` | 7 | `CPR-, CFP-, HPS+, EHP+, APR+, BPR+, BPS+, CPS-, APQ+, AQR-, AQS-` | 45 | none | none | 45 | none |
| `root/CFP-/EHP+/APR+/CPS-/APQ+/AQR-/AQS+` | 7 | `CPR-, CFP-, HPS+, EHP+, APR+, BPR+, BPS+, CPS-, APQ+, AQR-, AQS+` | 46, 47, 48, 49 | none | none | 49 | none |
| `root/CFP+/EHP-/APQ-/AQR-/BQR-/CQR+/HQS-` | 7 | `CPR-, CFP+, EHP-, APQ-, AQR-, PQS+, BQR-, CQR+, HQS-` | 50 | none | none | 50 | none |
| `root/CFP+/EHP-/APQ-/AQR-/BQR-/CQR+/HQS+` | 7 | `CPR-, CFP+, EHP-, APQ-, AQR-, PQS+, BQR-, CQR+, HQS+` | 51 | none | none | 51 | none |
| `root/CFP-/EHP-/CPS-/APS+/APR-/HPR+/APQ+/CQR-` | 8 | `CPR-, CFP-, HPS+, EHP-, CPS-, APS+, BPS+, APR-, HPR+, APQ+, AQS+, PQS+, CQR-` | 52 | none | none | 52 | none |
| `root/CFP-/EHP-/CPS-/APS+/APR-/HPR+/APQ+/CQR+` | 8 | `CPR-, CFP-, HPS+, EHP-, CPS-, APS+, BPS+, APR-, HPR+, APQ+, AQS+, PQS+, CQR+` | 53 | none | none | 53 | none |

## Capacity-forced signs

| Node | Stage | Forced sign | Outer triangle | Occupants | Excluded point | Upper reference | Upper bound | Cost with extra point |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `root` | 0 | CPR- | CER | none | P | `0:117` | 30872448121/125000000000 | 279/1000 |
| `root/CFP-` | 2 | HPS+ | FHS | none | P | `2:177` | 69053469173/250000000000 | 279/1000 |
| `root/CFP-/EHP+/APR+` | 12 | BPR+ | ABR | none | P | `12:13` | 15917897399/62500000000 | 279/1000 |
| `root/CFP-/EHP+/APR+` | 12 | BPS+ | ABS | none | P | `12:15` | 131238247891/500000000000 | 279/1000 |
| `root/CFP+/EHP-/APQ+` | 15 | CQR+ | CEQ | none | R | `15:117` | 26909214741/100000000000 | 279/1000 |
| `root/CFP+/EHP-/APQ+` | 15 | CQS+ | CEQ | none | S | `15:117` | 26909214741/100000000000 | 279/1000 |
| `root/CFP+/EHP-/APQ+` | 17 | HPS+ | FHS | none | P | `17:189` | 130221393799/500000000000 | 279/1000 |
| `root/CFP-/EHP-/CPS-/APS+` | 25 | BPS+ | ABS | none | P | `25:15` | 4089460229/15625000000 | 279/1000 |
| `root/CFP+/EHP-/APQ-/AQR-` | 28 | PQS+ | EPQ | R | S | `28:175` | 346384664347/500000000000 | 13857/20000 |
| `root/CFP-/EHP-/CPS-/APS+/APR+` | 31 | BPR+ | ABR | none | P | `31:13` | 63531160101/250000000000 | 279/1000 |
| `root/CFP-/EHP-/CPS-/APS+/APR-/HPR+/APQ+` | 44 | AQS+ | AQR | P | S | `44:67` | 94899993553/200000000000 | 13857/20000 |
| `root/CFP-/EHP-/CPS-/APS+/APR-/HPR+/APQ+` | 44 | PQS+ | EPQ | R | S | `44:175` | 64623779299/125000000000 | 13857/20000 |
| `root/CFP-/EHP+/APR+/CPS-/APQ+/AQR-/AQS+` | 46 | PQR- | FPQ | S | R | `46:432` | 301469/500000 | 13857/20000 |
| `root/CFP-/EHP+/APR+/CPS-/APQ+/AQR-/AQS+` | 48 | CQR- | BCQ | P | R | `48:81` | 342957/500000 | 13857/20000 |

## Coordinate continuations

| Metric scope | Address | Packet | Stages | Split coordinate | Cut | Has continuation | Forced-source forest | Forced-source node | Forced-source stage | Forced-source sign |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |

## Exact totals

| Object | Count |
| --- | --- |
| contexts | 44 |
| signNodes | 39 |
| signSplits | 19 |
| signLeaves | 20 |
| coordinateSplits | 0 |
| terminals | 20 |
| stages | 54 |
| boxStages | 39 |
| intervalSteps | 5275 |
| physicalFactors | 1139 |
| areaBounds | 3169 |
| areaUpdates | 2730 |
| scalarRelations | 312 |
