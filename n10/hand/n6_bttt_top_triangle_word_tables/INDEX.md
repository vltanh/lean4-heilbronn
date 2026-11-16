# Fixed BTTT --+- proof: index

This is the literal finite proof index for N6_BTTT_TOP_TRIANGLE_WORD.md. Its tables, contexts.md, and the listed stage files together specify every premise, identity, exact bound, and contradictory leaf. No search output or unprinted certificate is a premise.

## Hypotheses and format

| Property | Value |
| --- | --- |
| Format | n6-bttt-triangle-split-proof-v1 |
| Status | Fixed literal rational proof; independent geometric and exact arithmetic review passed. |
| Threshold | 93/1000 |
| Locations | BTTT |
| Top word | `--+-` |
| Normalized e <= f | yes |
| Variables | a, b, c, e, f, h, p, q, u, v, r, w, j, k |
| Actual labels | ABCEFHPQRS |
| Terminal stage order | 3, 7, 9, 12, 13, 14, 15, 18, 21, 30, 33, 34, 35, 36, 51, 57, 78, 91, 92, 94, 109, 112, 125, 141, 140, 137 |

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
| `root` | 0 | `none` | 0 | APQ | `root/APQ-, root/APQ+` | none | none |
| `root/APQ-` | 1 | `APQ-` | 1 | AQR | `root/APQ-/AQR-, root/APQ-/AQR+` | none | none |
| `root/APQ-/AQR-` | 2 | `APQ-, AQR-` | 2 | AQS | `root/APQ-/AQR-/AQS-, root/APQ-/AQR-/AQS+` | none | none |
| `root/APQ-/AQR-/AQS-` | 3 | `APQ-, AQR-, AQS-` | 3 | none | none | 3 | none |
| `root/APQ-/AQR-/AQS+` | 3 | `APQ-, AQR-, AQS+` | 4 | BQR | `root/APQ-/AQR-/AQS+/BQR-, root/APQ-/AQR-/AQS+/BQR+` | none | none |
| `root/APQ-/AQR-/AQS+/BQR-` | 4 | `APQ-, AQR-, AQS+, BQR-` | 5 | HQS | `root/APQ-/AQR-/AQS+/BQR-/HQS-, root/APQ-/AQR-/AQS+/BQR-/HQS+` | none | none |
| `root/APQ-/AQR-/AQS+/BQR-/HQS-` | 5 | `APQ-, AQR-, AQS+, BQR-, HQS-` | 6 | CQR | `root/APQ-/AQR-/AQS+/BQR-/HQS-/CQR-, root/APQ-/AQR-/AQS+/BQR-/HQS-/CQR+` | none | none |
| `root/APQ-/AQR-/AQS+/BQR-/HQS-/CQR-` | 6 | `APQ-, AQR-, AQS+, BQR-, HQS-, CQR-` | 7 | none | none | 7 | none |
| `root/APQ-/AQR-/AQS+/BQR-/HQS-/CQR+` | 6 | `APQ-, AQR-, AQS+, BQR-, HQS-, CQR+` | 8 | PQS | `root/APQ-/AQR-/AQS+/BQR-/HQS-/CQR+/PQS-, root/APQ-/AQR-/AQS+/BQR-/HQS-/CQR+/PQS+` | none | none |
| `root/APQ-/AQR-/AQS+/BQR-/HQS-/CQR+/PQS-` | 7 | `APQ-, AQR-, AQS+, BQR-, HQS-, CQR+, PQS-` | 9 | none | none | 9 | none |
| `root/APQ-/AQR-/AQS+/BQR-/HQS-/CQR+/PQS+` | 7 | `APQ-, AQR-, AQS+, BQR-, HQS-, CQR+, PQS+` | 10 | APS | `root/APQ-/AQR-/AQS+/BQR-/HQS-/CQR+/PQS+/APS-, root/APQ-/AQR-/AQS+/BQR-/HQS-/CQR+/PQS+/APS+` | none | none |
| `root/APQ-/AQR-/AQS+/BQR-/HQS-/CQR+/PQS+/APS-` | 8 | `APQ-, AQR-, AQS+, BQR-, HQS-, CQR+, PQS+, APS-` | 11 | none | none | none | `root/APQ-/AQR-/AQS+/BQR-/HQS-/CQR+/PQS+/APS-` |
| `root/APQ-/AQR-/AQS+/BQR-/HQS-/CQR+/PQS+/APS+` | 8 | `APQ-, AQR-, AQS+, BQR-, HQS-, CQR+, PQS+, APS+` | 12 | none | none | 12 | none |
| `root/APQ-/AQR-/AQS+/BQR-/HQS+` | 5 | `APQ-, AQR-, AQS+, BQR-, HQS+` | 13 | none | none | 13 | none |
| `root/APQ-/AQR-/AQS+/BQR+` | 4 | `APQ-, AQR-, AQS+, BQR+` | 14 | none | none | 14 | none |
| `root/APQ-/AQR+` | 2 | `APQ-, AQR+` | 15 | none | none | 15 | none |
| `root/APQ+` | 1 | `APQ+` | 16 | AQR | `root/APQ+/AQR-, root/APQ+/AQR+` | none | none |
| `root/APQ+/AQR-` | 2 | `APQ+, AQR-` | 17 | AQS | `root/APQ+/AQR-/AQS-, root/APQ+/AQR-/AQS+` | none | none |
| `root/APQ+/AQR-/AQS-` | 3 | `APQ+, AQR-, AQS-` | 18 | none | none | 18 | none |
| `root/APQ+/AQR-/AQS+` | 3 | `APQ+, AQR-, AQS+` | 19, 20 | CQR | `root/APQ+/AQR-/AQS+/CQR-, root/APQ+/AQR-/AQS+/CQR+` | none | none |
| `root/APQ+/AQR-/AQS+/CQR-` | 4 | `APQ+, AQR-, AQS+, BPS+, CQR-` | 21 | none | none | 21 | none |
| `root/APQ+/AQR-/AQS+/CQR+` | 4 | `APQ+, AQR-, AQS+, BPS+, CQR+` | 22 | HQS | `root/APQ+/AQR-/AQS+/CQR+/HQS-, root/APQ+/AQR-/AQS+/CQR+/HQS+` | none | none |
| `root/APQ+/AQR-/AQS+/CQR+/HQS-` | 5 | `APQ+, AQR-, AQS+, BPS+, CQR+, HQS-` | 23 | BPQ | `root/APQ+/AQR-/AQS+/CQR+/HQS-/BPQ-, root/APQ+/AQR-/AQS+/CQR+/HQS-/BPQ+` | none | none |
| `root/APQ+/AQR-/AQS+/CQR+/HQS-/BPQ-` | 6 | `APQ+, AQR-, AQS+, BPS+, CQR+, HQS-, BPQ-` | 24, 25, 26 | none | none | none | `root/APQ+/AQR-/AQS+/CQR+/HQS-/BPQ-` |
| `root/APQ+/AQR-/AQS+/CQR+/HQS-/BPQ+` | 6 | `APQ+, AQR-, AQS+, BPS+, CQR+, HQS-, BPQ+` | 27 | BQR | `root/APQ+/AQR-/AQS+/CQR+/HQS-/BPQ+/BQR-, root/APQ+/AQR-/AQS+/CQR+/HQS-/BPQ+/BQR+` | none | none |
| `root/APQ+/AQR-/AQS+/CQR+/HQS-/BPQ+/BQR-` | 7 | `APQ+, AQR-, AQS+, BPS+, CQR+, HQS-, BPQ+, BQR-` | 28 | PQR | `root/APQ+/AQR-/AQS+/CQR+/HQS-/BPQ+/BQR-/PQR-, root/APQ+/AQR-/AQS+/CQR+/HQS-/BPQ+/BQR-/PQR+` | none | none |
| `root/APQ+/AQR-/AQS+/CQR+/HQS-/BPQ+/BQR-/PQR-` | 8 | `APQ+, AQR-, AQS+, BPS+, CQR+, HQS-, BPQ+, BQR-, PQR-` | 29 | APR | `root/APQ+/AQR-/AQS+/CQR+/HQS-/BPQ+/BQR-/PQR-/APR-, root/APQ+/AQR-/AQS+/CQR+/HQS-/BPQ+/BQR-/PQR-/APR+` | none | none |
| `root/APQ+/AQR-/AQS+/CQR+/HQS-/BPQ+/BQR-/PQR-/APR-` | 9 | `APQ+, AQR-, AQS+, BPS+, CQR+, HQS-, BPQ+, BQR-, PQR-, APR-` | 30 | none | none | 30 | none |
| `root/APQ+/AQR-/AQS+/CQR+/HQS-/BPQ+/BQR-/PQR-/APR+` | 9 | `APQ+, AQR-, AQS+, BPS+, CQR+, HQS-, BPQ+, BQR-, PQR-, APR+` | 31, 32 | none | none | none | `root/APQ+/AQR-/AQS+/CQR+/HQS-/BPQ+/BQR-/PQR-/APR+` |
| `root/APQ+/AQR-/AQS+/CQR+/HQS-/BPQ+/BQR-/PQR+` | 8 | `APQ+, AQR-, AQS+, BPS+, CQR+, HQS-, BPQ+, BQR-, PQR+` | 33 | none | none | 33 | none |
| `root/APQ+/AQR-/AQS+/CQR+/HQS-/BPQ+/BQR+` | 7 | `APQ+, AQR-, AQS+, BPS+, CQR+, HQS-, BPQ+, BQR+` | 34 | none | none | 34 | none |
| `root/APQ+/AQR-/AQS+/CQR+/HQS+` | 5 | `APQ+, AQR-, AQS+, BPS+, CQR+, HQS+` | 35 | none | none | 35 | none |
| `root/APQ+/AQR+` | 2 | `APQ+, AQR+` | 36 | none | none | 36 | none |

## Capacity-forced signs

| Node | Stage | Forced sign | Outer triangle | Occupants | Excluded point | Upper reference | Upper bound | Cost with extra point |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `root/APQ+/AQR-/AQS+` | 19 | BPS+ | ABS | none | P | `19:15` | 135449413569/500000000000 | 279/1000 |
| `root/APQ+/AQR-/AQS+/CQR+/HQS-/BPQ-` | 24 | BQR- | ABQ | P | R | `24:11` | 1076733/3125000 | 13857/20000 |
| `root/APQ+/AQR-/AQS+/CQR+/HQS-/BPQ-` | 24 | PQR- | FPQ | S | R | `24:4643` | 615579/1000000 | 13857/20000 |
| `root/APQ+/AQR-/AQS+/CQR+/HQS-/BPQ-` | 25 | APR- | ABR | none | P | `25:13` | 1596721749/6250000000 | 279/1000 |
| `root/APQ+/AQR-/AQS+/CQR+/HQS-/BPQ+/BQR-/PQR-/APR+` | 31 | BPR+ | ABR | none | P | `31:13` | 129118384707/500000000000 | 279/1000 |

## Coordinate continuations

| Metric scope | Address | Packet | Stages | Split coordinate | Cut | Has continuation | Forced-source forest | Forced-source node | Forced-source stage | Forced-source sign |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `root/APQ-/AQR-/AQS+/BQR-/HQS-/CQR+/PQS+/APS-` | root | `top_scalar_coupled_signed_probe` | 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50 | c | 79/100 | no | none | none | none | none |
| `root/APQ-/AQR-/AQS+/BQR-/HQS-/CQR+/PQS+/APS-` | rootL | `top_scalar_coordinate_low` | 51 | none | none | no | none | none | none | none |
| `root/APQ-/AQR-/AQS+/BQR-/HQS-/CQR+/PQS+/APS-` | rootH | `top_scalar_coordinate_high` | 52, 53, 54, 55, 56 | r | 19/25 | no | none | none | none | none |
| `root/APQ-/AQR-/AQS+/BQR-/HQS-/CQR+/PQS+/APS-` | rootHL | `top_scalar_coordinate_high_r_low` | 57 | none | none | no | none | none | none | none |
| `root/APQ-/AQR-/AQS+/BQR-/HQS-/CQR+/PQS+/APS-` | rootHH | `top_scalar_coordinate_high_r_high` | 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77 | w | 11/20 | no | none | none | none | none |
| `root/APQ-/AQR-/AQS+/BQR-/HQS-/CQR+/PQS+/APS-` | rootHHL | `top_scalar_coordinate_cr_w_low` | 78 | none | none | no | none | none | none | none |
| `root/APQ-/AQR-/AQS+/BQR-/HQS-/CQR+/PQS+/APS-` | rootHHH | `top_scalar_coordinate_cr_w_high` | 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90 | j | 29/50 | no | none | none | none | none |
| `root/APQ-/AQR-/AQS+/BQR-/HQS-/CQR+/PQS+/APS-` | rootHHHL | `top_scalar_coordinate_crw_j_low` | 91 | none | none | no | none | none | none | none |
| `root/APQ-/AQR-/AQS+/BQR-/HQS-/CQR+/PQS+/APS-` | rootHHHH | `top_scalar_coordinate_crw_j_high` | 92 | none | none | no | none | none | none | none |
| `root/APQ+/AQR-/AQS+/CQR+/HQS-/BPQ-` | root | `top_scalar_complete_input_metric_1` | 93, 94 | none | none | no | none | none | none | none |
| `root/APQ+/AQR-/AQS+/CQR+/HQS-/BPQ+/BQR-/PQR-/APR+` | root | `top_scalar_last_open_1` | 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108 | h | 3/4 | no | none | none | none | none |
| `root/APQ+/AQR-/AQS+/CQR+/HQS-/BPQ+/BQR-/PQR-/APR+` | rootL | `top_scalar_open1_h_low` | 109 | none | none | no | none | none | none | none |
| `root/APQ+/AQR-/AQS+/CQR+/HQS-/BPQ+/BQR-/PQR-/APR+` | rootH | `top_scalar_open1_h_high` | 110, 111 | k | 19/25 | no | none | none | none | none |
| `root/APQ+/AQR-/AQS+/CQR+/HQS-/BPQ+/BQR-/PQR-/APR+` | rootHL | `top_scalar_open1_h_k_low` | 112 | none | none | no | none | none | none | none |
| `root/APQ+/AQR-/AQS+/CQR+/HQS-/BPQ+/BQR-/PQR-/APR+` | rootHH | `top_scalar_open1_h_k_high` | 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124 | w | 27/50 | no | none | none | none | none |
| `root/APQ+/AQR-/AQS+/CQR+/HQS-/BPQ+/BQR-/PQR-/APR+` | rootHHL | `top_scalar_open1_hk_w_low` | 125 | none | none | no | none | none | none | none |
| `root/APQ+/AQR-/AQS+/CQR+/HQS-/BPQ+/BQR-/PQR-/APR+` | rootHHH | `top_scalar_open1_hk_w_high` | 126, 127, 128 | p | 49/100 | no | none | none | none | none |
| `root/APQ+/AQR-/AQS+/CQR+/HQS-/BPQ+/BQR-/PQR-/APR+` | rootHHHL | `top_scalar_open1_hkw_p_low` | 129, 130 | q | 8/25 | no | none | none | none | none |
| `root/APQ+/AQR-/AQS+/CQR+/HQS-/BPQ+/BQR-/PQR-/APR+` | rootHHHLL | `top_scalar_open1_hkwp_q_low` | 138, 139 | none | none | yes | none | none | none | none |
| `root/APQ+/AQR-/AQS+/CQR+/HQS-/BPQ+/BQR-/PQR-/APR+` | rootHHHLLC | `top_scalar_open1_final_forced_probe` | 141 | none | none | no | top_scalar_forest_BTTT_--+- | `root/APQ+/AQR-/AQS+/CQR+/HQS-/BPQ+/BQR-/PQR-/APR+` | 0 | BPR+ |
| `root/APQ+/AQR-/AQS+/CQR+/HQS-/BPQ+/BQR-/PQR-/APR+` | rootHHHLH | `top_scalar_open1_hkwp_q_high` | 140 | none | none | no | none | none | none | none |
| `root/APQ+/AQR-/AQS+/CQR+/HQS-/BPQ+/BQR-/PQR-/APR+` | rootHHHH | `top_scalar_open1_hkw_p_high` | 131, 132, 133, 134, 135, 136, 137 | none | none | no | none | none | none | none |

## Exact totals

| Object | Count |
| --- | --- |
| contexts | 37 |
| signNodes | 33 |
| signSplits | 16 |
| signLeaves | 17 |
| coordinateSplits | 9 |
| terminals | 26 |
| stages | 142 |
| boxStages | 123 |
| intervalSteps | 6294 |
| physicalFactors | 1979 |
| areaBounds | 16773 |
| areaUpdates | 13039 |
| scalarRelations | 2176 |
