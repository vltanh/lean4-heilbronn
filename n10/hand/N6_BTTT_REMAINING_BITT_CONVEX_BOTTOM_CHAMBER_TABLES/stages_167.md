# BITT convex: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 835

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS-/BFP-/BPQ+/APR+/FPQ-/BPS-/AFQ+ |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS-/BFP-/BPQ+/APR+/FPQ-/BPS-/AFQ+:LLLL |
| Index | 0 |
| Context | 98 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 834 |
| Coordinate cut | q low 188941/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 31613/125000 | 103767/1000000 | 31613/125000 |
| c | 135501/250000 | 189157/250000 | 135501/250000 | 189157/250000 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 21407/62500 | 58493/100000 | 21407/62500 | 58493/100000 |
| h | 796617/1000000 | 1 | 796617/1000000 | 1 |
| p | 7617/31250 | 232229/500000 | 7617/31250 | 232229/500000 |
| q | 196767/1000000 | 188941/500000 | 196767/1000000 | 188941/500000 |
| u | 164839/1000000 | 354949/1000000 | 164839/1000000 | 354949/1000000 |
| v | 136131/250000 | 403307/500000 | 136131/250000 | 403307/500000 |
| r | 714789/1000000 | 1 | 714789/1000000 | 1 |
| w | 209709/500000 | 823991/1000000 | 209709/500000 | 823991/1000000 |
| j | 13857/20000 | 870893/1000000 | 13857/20000 | 870893/1000000 |
| k | 5537/10000 | 1 | 5537/10000 | 1 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |


### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |


### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |


### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |


### Coordinate certificate sources

| Source | Kind | Source witness | Polynomial |
| --- | --- | --- | --- |
| 0 | bound | `{"direction":"lo","ref":"129:1472","triangle":"HRS","value":"29333/250000"}` | `1 * r * k + -1 * h * r + -1 * w * j + 1 * h * j + -29333/250000` |
| 1 | bound | `{"direction":"lo","ref":"129:1889","triangle":"BCP","value":"126917/1000000"}` | `1 * c * q + -1 * b * q + -126917/1000000` |
| 2 | physical | `{"factor":110,"stage":129}` | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -93/1000` |
| 3 | physical | `{"factor":118,"stage":129}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 4 | physical | `{"factor":12,"stage":129}` | `1/1 * b * w + -1/1 * a * b + 1/1 * a * r + -279/1000` |
| 5 | physical | `{"factor":128,"stage":129}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 6 | physical | `{"factor":27,"stage":129}` | `1/1 * q + -1/1 * a + -1/1 * e * p + 1/1 * a * p + -93/1000` |
| 7 | physical | `{"factor":35,"stage":129}` | `1/1 * f * v + -1/1 * a * f + -1/1 * u + 1/1 * a * u + -93/1000` |
| 8 | physical | `{"factor":43,"stage":129}` | `1/1 * p * w + -1/1 * a * p + -1/1 * q * r + 1/1 * a * r + -93/1000` |
| 9 | physical | `{"factor":67,"stage":129}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 10 | physical | `{"factor":76,"stage":129}` | `-1/1 * p * w + 1/1 * b * w + 1/1 * q * r + -1/1 * b * q + -93/1000` |
| 11 | physical | `{"factor":77,"stage":129}` | `-1/1 * p * k + 1/1 * b * k + 1/1 * q * j + -1/1 * b * q + -93/1000` |
| 12 | physical | `{"factor":93,"stage":129}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 13 | physical | `{"factor":94,"stage":129}` | `1/1 * c * v + 1/1 * h * u + -1/1 * c * h + -93/1000` |
| 14 | coordinate | `{"box":835,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 15 | coordinate | `{"box":835,"direction":"hi","value":"31613/125000","variable":"b"}` | `31613/125000 + -1 * b` |
| 16 | coordinate | `{"box":835,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 17 | coordinate | `{"box":835,"direction":"hi","value":"823991/1000000","variable":"w"}` | `823991/1000000 + -1 * w` |
| 18 | coordinate | `{"box":835,"direction":"hi","value":"870893/1000000","variable":"j"}` | `870893/1000000 + -1 * j` |
| 19 | coordinate | `{"box":835,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 20 | coordinate | `{"box":835,"direction":"hi","value":"189157/250000","variable":"c"}` | `189157/250000 + -1 * c` |
| 21 | coordinate | `{"box":835,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 22 | coordinate | `{"box":835,"direction":"hi","value":"58493/100000","variable":"f"}` | `58493/100000 + -1 * f` |
| 23 | coordinate | `{"box":835,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 24 | coordinate | `{"box":835,"direction":"hi","value":"232229/500000","variable":"p"}` | `232229/500000 + -1 * p` |
| 25 | coordinate | `{"box":835,"direction":"hi","value":"188941/500000","variable":"q"}` | `188941/500000 + -1 * q` |
| 26 | coordinate | `{"box":835,"direction":"hi","value":"354949/1000000","variable":"u"}` | `354949/1000000 + -1 * u` |
| 27 | coordinate | `{"box":835,"direction":"hi","value":"403307/500000","variable":"v"}` | `403307/500000 + -1 * v` |
| 28 | coordinate | `{"box":835,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 29 | coordinate | `{"box":835,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 30 | coordinate | `{"box":835,"direction":"lo","value":"714789/1000000","variable":"r"}` | `-714789/1000000 + 1 * r` |
| 31 | coordinate | `{"box":835,"direction":"lo","value":"209709/500000","variable":"w"}` | `-209709/500000 + 1 * w` |
| 32 | coordinate | `{"box":835,"direction":"lo","value":"13857/20000","variable":"j"}` | `-13857/20000 + 1 * j` |
| 33 | coordinate | `{"box":835,"direction":"lo","value":"5537/10000","variable":"k"}` | `-5537/10000 + 1 * k` |
| 34 | coordinate | `{"box":835,"direction":"lo","value":"135501/250000","variable":"c"}` | `-135501/250000 + 1 * c` |
| 35 | coordinate | `{"box":835,"direction":"lo","value":"21407/62500","variable":"f"}` | `-21407/62500 + 1 * f` |
| 36 | coordinate | `{"box":835,"direction":"lo","value":"796617/1000000","variable":"h"}` | `-796617/1000000 + 1 * h` |
| 37 | coordinate | `{"box":835,"direction":"lo","value":"7617/31250","variable":"p"}` | `-7617/31250 + 1 * p` |
| 38 | coordinate | `{"box":835,"direction":"lo","value":"196767/1000000","variable":"q"}` | `-196767/1000000 + 1 * q` |
| 39 | coordinate | `{"box":835,"direction":"lo","value":"164839/1000000","variable":"u"}` | `-164839/1000000 + 1 * u` |
| 40 | coordinate | `{"box":835,"direction":"lo","value":"136131/250000","variable":"v"}` | `-136131/250000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 10980000000 | 4 |
| 1 | 2255000000 | 6 |
| 2 | 42790000000 | 7 |
| 3 | 2255000000 | 8 |
| 4 | 4269000000 | 1 |
| 5 | 40764000000 | 9 |
| 6 | 2255000000 | 10 |
| 7 | 34240000000 | 11 |
| 8 | 15944000000 | 12 |
| 9 | 70569000000 | 13 |
| 10 | 52905000000 | 2 |
| 11 | 24982000000 | 3 |
| 12 | 10279000000 | 5 |
| 13 | 1905000000 | 0 |
| 14 | 10980000000 | 28, 29 |
| 15 | 42790000000 | 14, 22 |
| 16 | 42790000000 | 26, 28 |
| 17 | 13236000000 | 17, 29 |
| 18 | 13236000000 | 16, 28 |
| 19 | 26975000000 | 19, 29 |
| 20 | 7265000000 | 15, 33 |
| 21 | 54624000000 | 20, 23 |
| 22 | 11675000000 | 34, 38 |
| 23 | 70569000000 | 27, 34 |
| 24 | 2255000000 | 21, 24 |
| 25 | 52905000000 | 21, 39 |
| 26 | 24982000000 | 16, 21 |
| 27 | 24982000000 | 21, 32 |
| 28 | 40764000000 | 22, 25 |
| 29 | 42790000000 | 27, 35 |
| 30 | 10279000000 | 22, 31 |
| 31 | 10279000000 | 19, 22 |
| 32 | 15944000000 | 23, 24 |
| 33 | 17664000000 | 23, 39 |
| 34 | 1905000000 | 16, 23 |
| 35 | 1905000000 | 23, 32 |
| 36 | 23083000000 | 33, 37 |
| 37 | 11157000000 | 19, 24 |
| 38 | 23555000000 | 18, 38 |
| 39 | 10685000000 | 25, 32 |
| 40 | 37167000000 | 16, 33 |
| 41 | 37167000000 | 17, 18 |
| 42 | 1000000 | 29, 31 |
| 43 | 419418 | 29 |
| 44 | 628416 | 31 |
| 45 | 1000000 | 28, 30 |
| 46 | 714789 | 28 |
| 47 | 657467 | 30 |
| 48 | 689205 | 38 |
| 49 | 751350 | 14 |
| 50 | 44930 | 26 |
| 51 | 791600 | 24 |
| 52 | 613716 | 15 |
| 53 | 553700 | 37 |
| 54 | 958533 | 33 |
| 55 | 692850 | 25 |
| 56 | 1201873 | 18 |
| 57 | 1000000 | 34, 36 |
| 58 | 796617 | 34 |
| 59 | 542004 | 36 |
| 60 | 231244 | 40 |
| 61 | 6496229122 | 23 |
| 62 | 1000000 | 30, 33 |
| 63 | 910001 | 19 |
| 64 | 1000000 | 17, 32 |
| 65 | 692850 | 17 |
| 66 | 865912 | 16 |
| 67 | 1173524 | 32 |
| 68 | 280334 | 22 |
| 69 | 688641 | 20 |
| 70 | 233205 | 21 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -214922202171649/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -214922202171649/1000000 | 1 | -214922202171649/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 835 | -214922202171649/1000000 |

## Stage 836

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS-/BFP-/BPQ+/APR+/FPQ-/BPS-/AFQ+ |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS-/BFP-/BPQ+/APR+/FPQ-/BPS-/AFQ+:LLLH |
| Index | 0 |
| Context | 98 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 834 |
| Coordinate cut | q high 188941/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 31613/125000 | 103767/1000000 | 31613/125000 |
| c | 135501/250000 | 189157/250000 | 135501/250000 | 189157/250000 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 21407/62500 | 58493/100000 | 21407/62500 | 58493/100000 |
| h | 796617/1000000 | 1 | 796617/1000000 | 1 |
| p | 7617/31250 | 232229/500000 | 7617/31250 | 232229/500000 |
| q | 188941/500000 | 566589/1000000 | 188941/500000 | 566589/1000000 |
| u | 164839/1000000 | 354949/1000000 | 164839/1000000 | 354949/1000000 |
| v | 136131/250000 | 403307/500000 | 136131/250000 | 403307/500000 |
| r | 714789/1000000 | 1 | 714789/1000000 | 1 |
| w | 209709/500000 | 823991/1000000 | 209709/500000 | 823991/1000000 |
| j | 13857/20000 | 870893/1000000 | 13857/20000 | 870893/1000000 |
| k | 5537/10000 | 1 | 5537/10000 | 1 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |


### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |


### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |


### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |


### Coordinate certificate sources

| Source | Kind | Source witness | Polynomial |
| --- | --- | --- | --- |
| 0 | bound | `{"direction":"lo","ref":"129:2073","triangle":"BFS","value":"384769/1000000"}` | `-1 * f * k + 1 * b * k + 1 * j + -1 * b + -384769/1000000` |
| 1 | physical | `{"factor":110,"stage":129}` | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -93/1000` |
| 2 | physical | `{"factor":118,"stage":129}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 3 | physical | `{"factor":128,"stage":129}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 4 | physical | `{"factor":129,"stage":129}` | `1/1 * p * v + -1/1 * h * p + -1/1 * q * u + 1/1 * h * u + -93/1000` |
| 5 | physical | `{"factor":1298,"stage":129}` | `44186246291/50000000000 * w + 28776953709/50000000000 * b * w + -44186246291/50000000000 * e * r + -28776953709/50000000000 * b * e + -22801/15625 * f * w + 22801/15625 * e * f + 22801/15625 * r + -22801/15625` |
| 6 | physical | `{"factor":158,"stage":129}` | `157/250 + -1/1 * f + -1/1 * e + 1/1 * e * f` |
| 7 | physical | `{"factor":35,"stage":129}` | `1/1 * f * v + -1/1 * a * f + -1/1 * u + 1/1 * a * u + -93/1000` |
| 8 | physical | `{"factor":43,"stage":129}` | `1/1 * p * w + -1/1 * a * p + -1/1 * q * r + 1/1 * a * r + -93/1000` |
| 9 | physical | `{"factor":67,"stage":129}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 10 | physical | `{"factor":94,"stage":129}` | `1/1 * c * v + 1/1 * h * u + -1/1 * c * h + -93/1000` |
| 11 | physical | `{"factor":97,"stage":129}` | `-1/1 * p * v + 1/1 * c * v + 1/1 * q * u + -1/1 * c * q + -93/1000` |
| 12 | coordinate | `{"box":836,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 13 | coordinate | `{"box":836,"direction":"hi","value":"31613/125000","variable":"b"}` | `31613/125000 + -1 * b` |
| 14 | coordinate | `{"box":836,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 15 | coordinate | `{"box":836,"direction":"hi","value":"823991/1000000","variable":"w"}` | `823991/1000000 + -1 * w` |
| 16 | coordinate | `{"box":836,"direction":"hi","value":"870893/1000000","variable":"j"}` | `870893/1000000 + -1 * j` |
| 17 | coordinate | `{"box":836,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 18 | coordinate | `{"box":836,"direction":"hi","value":"189157/250000","variable":"c"}` | `189157/250000 + -1 * c` |
| 19 | coordinate | `{"box":836,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 20 | coordinate | `{"box":836,"direction":"hi","value":"58493/100000","variable":"f"}` | `58493/100000 + -1 * f` |
| 21 | coordinate | `{"box":836,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 22 | coordinate | `{"box":836,"direction":"hi","value":"232229/500000","variable":"p"}` | `232229/500000 + -1 * p` |
| 23 | coordinate | `{"box":836,"direction":"hi","value":"354949/1000000","variable":"u"}` | `354949/1000000 + -1 * u` |
| 24 | coordinate | `{"box":836,"direction":"hi","value":"403307/500000","variable":"v"}` | `403307/500000 + -1 * v` |
| 25 | coordinate | `{"box":836,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 26 | coordinate | `{"box":836,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 27 | coordinate | `{"box":836,"direction":"lo","value":"714789/1000000","variable":"r"}` | `-714789/1000000 + 1 * r` |
| 28 | coordinate | `{"box":836,"direction":"lo","value":"209709/500000","variable":"w"}` | `-209709/500000 + 1 * w` |
| 29 | coordinate | `{"box":836,"direction":"lo","value":"13857/20000","variable":"j"}` | `-13857/20000 + 1 * j` |
| 30 | coordinate | `{"box":836,"direction":"lo","value":"5537/10000","variable":"k"}` | `-5537/10000 + 1 * k` |
| 31 | coordinate | `{"box":836,"direction":"lo","value":"135501/250000","variable":"c"}` | `-135501/250000 + 1 * c` |
| 32 | coordinate | `{"box":836,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 33 | coordinate | `{"box":836,"direction":"lo","value":"21407/62500","variable":"f"}` | `-21407/62500 + 1 * f` |
| 34 | coordinate | `{"box":836,"direction":"lo","value":"7617/31250","variable":"p"}` | `-7617/31250 + 1 * p` |
| 35 | coordinate | `{"box":836,"direction":"lo","value":"188941/500000","variable":"q"}` | `-188941/500000 + 1 * q` |
| 36 | coordinate | `{"box":836,"direction":"lo","value":"164839/1000000","variable":"u"}` | `-164839/1000000 + 1 * u` |
| 37 | coordinate | `{"box":836,"direction":"lo","value":"136131/250000","variable":"v"}` | `-136131/250000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 2198900000000000000000 | 7 |
| 1 | 1724850000000000000000 | 8 |
| 2 | 147900000000000000000 | 9 |
| 3 | 69850000000000000000 | 0 |
| 4 | 120400000000000000000 | 10 |
| 5 | 329050000000000000000 | 11 |
| 6 | 1988500000000000000000 | 1 |
| 7 | 370450000000000000000 | 2 |
| 8 | 1072550000000000000000 | 3 |
| 9 | 4002100000000000000000 | 4 |
| 10 | 614200000000000000000 | 6 |
| 11 | 221950000000000000000 | 5 |
| 12 | 127750000000000000000 | 26, 32 |
| 13 | 2198900000000000000000 | 12, 20 |
| 14 | 147900000000000000000 | 13, 35 |
| 15 | 1724850000000000000000 | 12, 22 |
| 16 | 2198900000000000000000 | 12, 36 |
| 17 | 127750000000000000000 | 15, 26 |
| 18 | 1724850000000000000000 | 14, 25 |
| 19 | 69850000000000000000 | 17, 26 |
| 20 | 120400000000000000000 | 18, 21 |
| 21 | 329050000000000000000 | 31, 35 |
| 22 | 449450000000000000000 | 18, 37 |
| 23 | 938100000000000000000 | 20, 32 |
| 24 | 1988500000000000000000 | 19, 36 |
| 25 | 566600000000000000000 | 14, 19 |
| 26 | 342000000000000000000 | 16, 32 |
| 27 | 28450000000000000000 | 19, 29 |
| 28 | 147900000000000000000 | 33, 35 |
| 29 | 2198900000000000000000 | 24, 33 |
| 30 | 748700000000000000000 | 15, 33 |
| 31 | 1142450000000000000000 | 17, 20 |
| 32 | 4002100000000000000000 | 21, 22 |
| 33 | 2134000000000000000000 | 21, 36 |
| 34 | 3673050000000000000000 | 24, 34 |
| 35 | 3673050000000000000000 | 35, 36 |
| 36 | 1724850000000000000000 | 15, 34 |
| 37 | 1724850000000000000000 | 27, 35 |
| 38 | 1443050000000000000000 | 17, 27 |
| 39 | 1443050000000000000000 | 15, 16 |
| 40 | 16154900000000000 | 23 |
| 41 | 6751550000000000 | 22 |
| 42 | 6453946367874082 | 26 |
| 43 | 50000000000000000 | 20, 30 |
| 44 | 27685000000000000 | 20 |
| 45 | 50359400000000000 | 17 |
| 46 | 47948550000000000 | 29 |
| 47 | 9400000000000 | 37 |
| 48 | 390361053000000000000 | 21 |
| 49 | 50000000000000000 | 27, 30 |
| 50 | 27685000000000000 | 27 |
| 51 | 35739450000000000 | 30 |
| 52 | 7252714251000000 | 19, 27 |
| 53 | 13424965422623135 | 19 |
| 54 | 38622861272141000 | 14 |
| 55 | 50000000000000000 | 15, 29 |
| 56 | 34642500000000000 | 15 |
| 57 | 41199550000000000 | 16 |
| 58 | 45057599627316483 | 28 |
| 59 | 33644800000000000 | 28, 33 |
| 60 | 17282164764800000 | 33 |
| 61 | 16355200000000000 | 32, 33 |
| 62 | 5601852262400000 | 32 |
| 63 | 9102485749000000 | 26, 28 |
| 64 | 9102485749000000 | 13, 32 |
| 65 | 944537638716483 | 13 |
| 66 | 8481200000000000 | 25 |
| 67 | 2029965135000000000000 | 35 |
| 68 | 5760300000000000 | 31 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -78331235789277409016465447/500000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -78331235789277409016465447/500000 | 1 | -78331235789277409016465447/500000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 836 | -78331235789277409016465447/500000 |

## Stage 837

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS-/BFP-/BPQ+/APR+/FPQ-/BPS-/AFQ+ |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS-/BFP-/BPQ+/APR+/FPQ-/BPS-/AFQ+:LLH |
| Index | 0 |
| Context | 98 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 833 |
| Coordinate cut | b high 31613/125000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 31613/125000 | 15761/31250 | 31613/125000 | 15761/31250 |
| c | 135501/250000 | 189157/250000 | 135501/250000 | 189157/250000 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 21407/62500 | 58493/100000 | 21407/62500 | 58493/100000 |
| h | 796617/1000000 | 1 | 796617/1000000 | 1 |
| p | 7617/31250 | 232229/500000 | 7617/31250 | 232229/500000 |
| q | 196767/1000000 | 566589/1000000 | 196767/1000000 | 566589/1000000 |
| u | 164839/1000000 | 354949/1000000 | 164839/1000000 | 354949/1000000 |
| v | 136131/250000 | 403307/500000 | 136131/250000 | 403307/500000 |
| r | 714789/1000000 | 1 | 714789/1000000 | 1 |
| w | 209709/500000 | 823991/1000000 | 209709/500000 | 823991/1000000 |
| j | 13857/20000 | 870893/1000000 | 13857/20000 | 870893/1000000 |
| k | 5537/10000 | 1 | 5537/10000 | 1 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |


### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |


### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |


### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |


### Coordinate certificate sources

| Source | Kind | Source witness | Polynomial |
| --- | --- | --- | --- |
| 0 | bound | `{"direction":"lo","ref":"129:1889","triangle":"BCP","value":"126917/1000000"}` | `1 * c * q + -1 * b * q + -126917/1000000` |
| 1 | physical | `{"factor":0,"stage":129}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 2 | physical | `{"factor":110,"stage":129}` | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -93/1000` |
| 3 | physical | `{"factor":118,"stage":129}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 4 | physical | `{"factor":128,"stage":129}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 5 | physical | `{"factor":129,"stage":129}` | `1/1 * p * v + -1/1 * h * p + -1/1 * q * u + 1/1 * h * u + -93/1000` |
| 6 | physical | `{"factor":145,"stage":129}` | `76277533/62500000 + 2/1 * a * b + -1/1 * b * h + -1/1 * a * c + -2/1 * c * e + 1/1 * b * e + -2/1 * w + 1/1 * c * w + 2/1 * e * r + -2/1 * r * k + 1/1 * k + 2/1 * w * j + -1/1 * e * j + -2/1 * j + 1/1 * r + 2/1 * f * k + -1/1 * f * w + -2/1 * f * h + 1/1 * h * j + 1/1 * a * f` |
| 7 | physical | `{"factor":27,"stage":129}` | `1/1 * q + -1/1 * a + -1/1 * e * p + 1/1 * a * p + -93/1000` |
| 8 | physical | `{"factor":35,"stage":129}` | `1/1 * f * v + -1/1 * a * f + -1/1 * u + 1/1 * a * u + -93/1000` |
| 9 | physical | `{"factor":43,"stage":129}` | `1/1 * p * w + -1/1 * a * p + -1/1 * q * r + 1/1 * a * r + -93/1000` |
| 10 | physical | `{"factor":67,"stage":129}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 11 | physical | `{"factor":77,"stage":129}` | `-1/1 * p * k + 1/1 * b * k + 1/1 * q * j + -1/1 * b * q + -93/1000` |
| 12 | physical | `{"factor":94,"stage":129}` | `1/1 * c * v + 1/1 * h * u + -1/1 * c * h + -93/1000` |
| 13 | physical | `{"factor":97,"stage":129}` | `-1/1 * p * v + 1/1 * c * v + 1/1 * q * u + -1/1 * c * q + -93/1000` |
| 14 | coordinate | `{"box":837,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 15 | coordinate | `{"box":837,"direction":"hi","value":"15761/31250","variable":"b"}` | `15761/31250 + -1 * b` |
| 16 | coordinate | `{"box":837,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 17 | coordinate | `{"box":837,"direction":"hi","value":"823991/1000000","variable":"w"}` | `823991/1000000 + -1 * w` |
| 18 | coordinate | `{"box":837,"direction":"hi","value":"870893/1000000","variable":"j"}` | `870893/1000000 + -1 * j` |
| 19 | coordinate | `{"box":837,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 20 | coordinate | `{"box":837,"direction":"hi","value":"189157/250000","variable":"c"}` | `189157/250000 + -1 * c` |
| 21 | coordinate | `{"box":837,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 22 | coordinate | `{"box":837,"direction":"hi","value":"58493/100000","variable":"f"}` | `58493/100000 + -1 * f` |
| 23 | coordinate | `{"box":837,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 24 | coordinate | `{"box":837,"direction":"hi","value":"232229/500000","variable":"p"}` | `232229/500000 + -1 * p` |
| 25 | coordinate | `{"box":837,"direction":"hi","value":"566589/1000000","variable":"q"}` | `566589/1000000 + -1 * q` |
| 26 | coordinate | `{"box":837,"direction":"hi","value":"354949/1000000","variable":"u"}` | `354949/1000000 + -1 * u` |
| 27 | coordinate | `{"box":837,"direction":"hi","value":"403307/500000","variable":"v"}` | `403307/500000 + -1 * v` |
| 28 | coordinate | `{"box":837,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 29 | coordinate | `{"box":837,"direction":"lo","value":"31613/125000","variable":"b"}` | `-31613/125000 + 1 * b` |
| 30 | coordinate | `{"box":837,"direction":"lo","value":"714789/1000000","variable":"r"}` | `-714789/1000000 + 1 * r` |
| 31 | coordinate | `{"box":837,"direction":"lo","value":"209709/500000","variable":"w"}` | `-209709/500000 + 1 * w` |
| 32 | coordinate | `{"box":837,"direction":"lo","value":"13857/20000","variable":"j"}` | `-13857/20000 + 1 * j` |
| 33 | coordinate | `{"box":837,"direction":"lo","value":"5537/10000","variable":"k"}` | `-5537/10000 + 1 * k` |
| 34 | coordinate | `{"box":837,"direction":"lo","value":"135501/250000","variable":"c"}` | `-135501/250000 + 1 * c` |
| 35 | coordinate | `{"box":837,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 36 | coordinate | `{"box":837,"direction":"lo","value":"21407/62500","variable":"f"}` | `-21407/62500 + 1 * f` |
| 37 | coordinate | `{"box":837,"direction":"lo","value":"796617/1000000","variable":"h"}` | `-796617/1000000 + 1 * h` |
| 38 | coordinate | `{"box":837,"direction":"lo","value":"196767/1000000","variable":"q"}` | `-196767/1000000 + 1 * q` |
| 39 | coordinate | `{"box":837,"direction":"lo","value":"164839/1000000","variable":"u"}` | `-164839/1000000 + 1 * u` |
| 40 | coordinate | `{"box":837,"direction":"lo","value":"136131/250000","variable":"v"}` | `-136131/250000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 11853000000 | 1 |
| 1 | 1805000000 | 7 |
| 2 | 39806000000 | 8 |
| 3 | 3237000000 | 9 |
| 4 | 7194000000 | 0 |
| 5 | 56548000000 | 10 |
| 6 | 33334000000 | 11 |
| 7 | 42221000000 | 12 |
| 8 | 23426000000 | 13 |
| 9 | 49215000000 | 2 |
| 10 | 24586000000 | 3 |
| 11 | 14564000000 | 4 |
| 12 | 23426000000 | 5 |
| 13 | 5927000000 | 6 |
| 14 | 5927000000 | 20, 28 |
| 15 | 5927000000 | 21, 29 |
| 16 | 1802000000 | 28, 36 |
| 17 | 32077000000 | 14, 22 |
| 18 | 5927000000 | 15, 23 |
| 19 | 16020000000 | 25, 29 |
| 20 | 1432000000 | 14, 24 |
| 21 | 39806000000 | 26, 28 |
| 22 | 3237000000 | 16, 28 |
| 23 | 33334000000 | 19, 29 |
| 24 | 11853000000 | 20, 21 |
| 25 | 42221000000 | 20, 23 |
| 26 | 16232000000 | 20, 25 |
| 27 | 65647000000 | 27, 34 |
| 28 | 5927000000 | 20, 31 |
| 29 | 1805000000 | 21, 24 |
| 30 | 49215000000 | 21, 39 |
| 31 | 12733000000 | 16, 21 |
| 32 | 18660000000 | 21, 32 |
| 33 | 11853000000 | 22, 23 |
| 34 | 56548000000 | 36, 38 |
| 35 | 39806000000 | 27, 36 |
| 36 | 8638000000 | 22, 31 |
| 37 | 2711000000 | 19, 22 |
| 38 | 23426000000 | 23, 24 |
| 39 | 16432000000 | 23, 39 |
| 40 | 5927000000 | 23, 32 |
| 41 | 3237000000 | 24, 31 |
| 42 | 3237000000 | 16, 25 |
| 43 | 33334000000 | 19, 24 |
| 44 | 33334000000 | 18, 38 |
| 45 | 27297000000 | 16, 33 |
| 46 | 27297000000 | 17, 18 |
| 47 | 1000000 | 14, 29 |
| 48 | 776864 | 14 |
| 49 | 307150 | 15 |
| 50 | 1000000 | 28, 34 |
| 51 | 542004 | 28 |
| 52 | 207534 | 34 |
| 53 | 84930 | 38 |
| 54 | 385798 | 39 |
| 55 | 62266 | 24 |
| 56 | 17746787220 | 29 |
| 57 | 30740 | 40 |
| 58 | 3281702908 | 23 |
| 59 | 1000000 | 30, 33 |
| 60 | 553700 | 30 |
| 61 | 714789 | 33 |
| 62 | 1000000 | 21, 30 |
| 63 | 1150808 | 21 |
| 64 | 982086 | 16 |
| 65 | 898664 | 19 |
| 66 | 1000000 | 17, 32 |
| 67 | 692850 | 17 |
| 68 | 823991 | 18 |
| 69 | 498691 | 31 |
| 70 | 1000000 | 32, 35 |
| 71 | 1234854 | 35 |
| 72 | 494916 | 32 |
| 73 | 1000000 | 22, 33 |
| 74 | 1344268 | 22 |
| 75 | 1000000 | 31, 36 |
| 76 | 1216035 | 36 |
| 77 | 1000000 | 34, 35 |
| 78 | 1000000 | 36, 37 |
| 79 | 342512 | 37 |
| 80 | 311105 | 20 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -485197907536211/250000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -485197907536211/250000 | 1 | -485197907536211/250000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 837 | -485197907536211/250000 |

## Stage 838

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS-/BFP-/BPQ+/APR+/FPQ-/BPS-/AFQ+ |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS-/BFP-/BPQ+/APR+/FPQ-/BPS-/AFQ+:LH |
| Index | 0 |
| Context | 98 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 832 |
| Coordinate cut | c high 189157/250000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 15761/31250 | 103767/1000000 | 15761/31250 |
| c | 189157/250000 | 1 | 189157/250000 | 1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 21407/62500 | 58493/100000 | 21407/62500 | 58493/100000 |
| h | 796617/1000000 | 1 | 796617/1000000 | 1 |
| p | 7617/31250 | 232229/500000 | 7617/31250 | 232229/500000 |
| q | 196767/1000000 | 566589/1000000 | 196767/1000000 | 566589/1000000 |
| u | 164839/1000000 | 354949/1000000 | 164839/1000000 | 354949/1000000 |
| v | 136131/250000 | 403307/500000 | 136131/250000 | 403307/500000 |
| r | 714789/1000000 | 1 | 714789/1000000 | 1 |
| w | 209709/500000 | 823991/1000000 | 209709/500000 | 823991/1000000 |
| j | 13857/20000 | 870893/1000000 | 13857/20000 | 870893/1000000 |
| k | 5537/10000 | 1 | 5537/10000 | 1 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |


### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |


### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |


### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |


### Coordinate certificate sources

| Source | Kind | Source witness | Polynomial |
| --- | --- | --- | --- |
| 0 | physical | `{"factor":110,"stage":129}` | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -93/1000` |
| 1 | physical | `{"factor":158,"stage":129}` | `157/250 + -1/1 * f + -1/1 * e + 1/1 * e * f` |
| 2 | physical | `{"factor":35,"stage":129}` | `1/1 * f * v + -1/1 * a * f + -1/1 * u + 1/1 * a * u + -93/1000` |
| 3 | physical | `{"factor":94,"stage":129}` | `1/1 * c * v + 1/1 * h * u + -1/1 * c * h + -93/1000` |
| 4 | coordinate | `{"box":838,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 5 | coordinate | `{"box":838,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 6 | coordinate | `{"box":838,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 7 | coordinate | `{"box":838,"direction":"hi","value":"58493/100000","variable":"f"}` | `58493/100000 + -1 * f` |
| 8 | coordinate | `{"box":838,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 9 | coordinate | `{"box":838,"direction":"hi","value":"354949/1000000","variable":"u"}` | `354949/1000000 + -1 * u` |
| 10 | coordinate | `{"box":838,"direction":"hi","value":"403307/500000","variable":"v"}` | `403307/500000 + -1 * v` |
| 11 | coordinate | `{"box":838,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 12 | coordinate | `{"box":838,"direction":"lo","value":"189157/250000","variable":"c"}` | `-189157/250000 + 1 * c` |
| 13 | coordinate | `{"box":838,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 14 | coordinate | `{"box":838,"direction":"lo","value":"21407/62500","variable":"f"}` | `-21407/62500 + 1 * f` |
| 15 | coordinate | `{"box":838,"direction":"lo","value":"796617/1000000","variable":"h"}` | `-796617/1000000 + 1 * h` |
| 16 | coordinate | `{"box":838,"direction":"lo","value":"164839/1000000","variable":"u"}` | `-164839/1000000 + 1 * u` |
| 17 | coordinate | `{"box":838,"direction":"lo","value":"136131/250000","variable":"v"}` | `-136131/250000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 63790000000 | 2 |
| 1 | 131478000000 | 3 |
| 2 | 122014000000 | 0 |
| 3 | 48456000000 | 1 |
| 4 | 60518000000 | 11, 14 |
| 5 | 3273000000 | 4, 7 |
| 6 | 63790000000 | 9, 11 |
| 7 | 125015000000 | 12, 15 |
| 8 | 6463000000 | 5, 8 |
| 9 | 131478000000 | 10, 12 |
| 10 | 48456000000 | 7, 13 |
| 11 | 122014000000 | 6, 16 |
| 12 | 60962000000 | 10, 14 |
| 13 | 2828000000 | 7, 17 |
| 14 | 9464000000 | 8, 16 |
| 15 | 1000000 | 4, 14 |
| 16 | 342512 | 4 |
| 17 | 307150 | 7 |
| 18 | 229070 | 16 |
| 19 | 22521186876 | 8 |
| 20 | 1000000 | 9 |
| 21 | 334768 | 10 |
| 22 | 222964 | 14 |
| 23 | 33826 | 6 |
| 24 | 420396 | 11 |
| 25 | 78763 | 12 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -587611748452839/125000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -587611748452839/125000 | 1 | -587611748452839/125000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 838 | -587611748452839/125000 |

## Stage 839

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS-/BFP-/BPQ+/APR+/FPQ-/BPS-/AFQ+ |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS-/BFP-/BPQ+/APR+/FPQ-/BPS-/AFQ+:H |
| Index | 0 |
| Context | 98 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 831 |
| Coordinate cut | p high 232229/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 15761/31250 | 103767/1000000 | 15761/31250 |
| c | 135501/250000 | 1 | 135501/250000 | 1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 21407/62500 | 58493/100000 | 21407/62500 | 58493/100000 |
| h | 796617/1000000 | 1 | 796617/1000000 | 1 |
| p | 232229/500000 | 710233/1000000 | 232229/500000 | 710233/1000000 |
| q | 196767/1000000 | 566589/1000000 | 196767/1000000 | 566589/1000000 |
| u | 164839/1000000 | 354949/1000000 | 164839/1000000 | 354949/1000000 |
| v | 136131/250000 | 403307/500000 | 136131/250000 | 403307/500000 |
| r | 714789/1000000 | 1 | 714789/1000000 | 1 |
| w | 209709/500000 | 823991/1000000 | 209709/500000 | 823991/1000000 |
| j | 13857/20000 | 870893/1000000 | 13857/20000 | 870893/1000000 |
| k | 5537/10000 | 1 | 5537/10000 | 1 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |


### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |


### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |


### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |


### Coordinate certificate sources

| Source | Kind | Source witness | Polynomial |
| --- | --- | --- | --- |
| 0 | bound | `{"direction":"lo","ref":"129:2073","triangle":"BFS","value":"384769/1000000"}` | `-1 * f * k + 1 * b * k + 1 * j + -1 * b + -384769/1000000` |
| 1 | bound | `{"direction":"lo","ref":"129:2309","triangle":"CEH","value":"212339/500000"}` | `1 * h + -1 * c * h + 1 * c * e + -212339/500000` |
| 2 | physical | `{"factor":0,"stage":129}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 3 | physical | `{"factor":110,"stage":129}` | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -93/1000` |
| 4 | physical | `{"factor":118,"stage":129}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 5 | physical | `{"factor":122,"stage":129}` | `-1/1 * f * k + -1/1 * h * j + 1/1 * f * h + 1/1 * j + -93/1000` |
| 6 | physical | `{"factor":128,"stage":129}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 7 | physical | `{"factor":129,"stage":129}` | `1/1 * p * v + -1/1 * h * p + -1/1 * q * u + 1/1 * h * u + -93/1000` |
| 8 | physical | `{"factor":1298,"stage":129}` | `44186246291/50000000000 * w + 28776953709/50000000000 * b * w + -44186246291/50000000000 * e * r + -28776953709/50000000000 * b * e + -22801/15625 * f * w + 22801/15625 * e * f + 22801/15625 * r + -22801/15625` |
| 9 | physical | `{"factor":145,"stage":129}` | `76277533/62500000 + 2/1 * a * b + -1/1 * b * h + -1/1 * a * c + -2/1 * c * e + 1/1 * b * e + -2/1 * w + 1/1 * c * w + 2/1 * e * r + -2/1 * r * k + 1/1 * k + 2/1 * w * j + -1/1 * e * j + -2/1 * j + 1/1 * r + 2/1 * f * k + -1/1 * f * w + -2/1 * f * h + 1/1 * h * j + 1/1 * a * f` |
| 10 | physical | `{"factor":158,"stage":129}` | `157/250 + -1/1 * f + -1/1 * e + 1/1 * e * f` |
| 11 | physical | `{"factor":27,"stage":129}` | `1/1 * q + -1/1 * a + -1/1 * e * p + 1/1 * a * p + -93/1000` |
| 12 | physical | `{"factor":35,"stage":129}` | `1/1 * f * v + -1/1 * a * f + -1/1 * u + 1/1 * a * u + -93/1000` |
| 13 | physical | `{"factor":48,"stage":129}` | `1/1 * c * e + -1/1 * b * e + -93/1000` |
| 14 | physical | `{"factor":77,"stage":129}` | `-1/1 * p * k + 1/1 * b * k + 1/1 * q * j + -1/1 * b * q + -93/1000` |
| 15 | physical | `{"factor":86,"stage":129}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 16 | coordinate | `{"box":839,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 17 | coordinate | `{"box":839,"direction":"hi","value":"15761/31250","variable":"b"}` | `15761/31250 + -1 * b` |
| 18 | coordinate | `{"box":839,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 19 | coordinate | `{"box":839,"direction":"hi","value":"823991/1000000","variable":"w"}` | `823991/1000000 + -1 * w` |
| 20 | coordinate | `{"box":839,"direction":"hi","value":"870893/1000000","variable":"j"}` | `870893/1000000 + -1 * j` |
| 21 | coordinate | `{"box":839,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 22 | coordinate | `{"box":839,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 23 | coordinate | `{"box":839,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 24 | coordinate | `{"box":839,"direction":"hi","value":"58493/100000","variable":"f"}` | `58493/100000 + -1 * f` |
| 25 | coordinate | `{"box":839,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 26 | coordinate | `{"box":839,"direction":"hi","value":"710233/1000000","variable":"p"}` | `710233/1000000 + -1 * p` |
| 27 | coordinate | `{"box":839,"direction":"hi","value":"354949/1000000","variable":"u"}` | `354949/1000000 + -1 * u` |
| 28 | coordinate | `{"box":839,"direction":"hi","value":"403307/500000","variable":"v"}` | `403307/500000 + -1 * v` |
| 29 | coordinate | `{"box":839,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 30 | coordinate | `{"box":839,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 31 | coordinate | `{"box":839,"direction":"lo","value":"714789/1000000","variable":"r"}` | `-714789/1000000 + 1 * r` |
| 32 | coordinate | `{"box":839,"direction":"lo","value":"209709/500000","variable":"w"}` | `-209709/500000 + 1 * w` |
| 33 | coordinate | `{"box":839,"direction":"lo","value":"13857/20000","variable":"j"}` | `-13857/20000 + 1 * j` |
| 34 | coordinate | `{"box":839,"direction":"lo","value":"5537/10000","variable":"k"}` | `-5537/10000 + 1 * k` |
| 35 | coordinate | `{"box":839,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 36 | coordinate | `{"box":839,"direction":"lo","value":"21407/62500","variable":"f"}` | `-21407/62500 + 1 * f` |
| 37 | coordinate | `{"box":839,"direction":"lo","value":"796617/1000000","variable":"h"}` | `-796617/1000000 + 1 * h` |
| 38 | coordinate | `{"box":839,"direction":"lo","value":"232229/500000","variable":"p"}` | `-232229/500000 + 1 * p` |
| 39 | coordinate | `{"box":839,"direction":"lo","value":"196767/1000000","variable":"q"}` | `-196767/1000000 + 1 * q` |
| 40 | coordinate | `{"box":839,"direction":"lo","value":"164839/1000000","variable":"u"}` | `-164839/1000000 + 1 * u` |
| 41 | coordinate | `{"box":839,"direction":"lo","value":"136131/250000","variable":"v"}` | `-136131/250000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 50130000000000000000 | 2 |
| 1 | 68160000000000000000 | 11 |
| 2 | 229300000000000000000 | 12 |
| 3 | 22465000000000000000 | 13 |
| 4 | 7780000000000000000 | 0 |
| 5 | 29675000000000000000 | 14 |
| 6 | 2600000000000000000 | 1 |
| 7 | 25065000000000000000 | 15 |
| 8 | 390070000000000000000 | 3 |
| 9 | 46395000000000000000 | 4 |
| 10 | 7390000000000000000 | 5 |
| 11 | 34960000000000000000 | 6 |
| 12 | 551600000000000000000 | 7 |
| 13 | 25065000000000000000 | 9 |
| 14 | 72475000000000000000 | 10 |
| 15 | 850000000000000000 | 8 |
| 16 | 25065000000000000000 | 22, 29 |
| 17 | 2110000000000000000 | 23, 30 |
| 18 | 204235000000000000000 | 29, 36 |
| 19 | 25065000000000000000 | 17, 25 |
| 20 | 29675000000000000000 | 30, 39 |
| 21 | 68160000000000000000 | 16, 38 |
| 22 | 229300000000000000000 | 27, 29 |
| 23 | 490000000000000000 | 19, 30 |
| 24 | 37455000000000000000 | 21, 30 |
| 25 | 2600000000000000000 | 22, 25 |
| 26 | 73715000000000000000 | 24, 35 |
| 27 | 68160000000000000000 | 35, 38 |
| 28 | 390070000000000000000 | 23, 40 |
| 29 | 22080000000000000000 | 18, 23 |
| 30 | 21330000000000000000 | 20, 35 |
| 31 | 42740000000000000000 | 24, 25 |
| 32 | 1025000000000000000 | 28, 36 |
| 33 | 228280000000000000000 | 24, 41 |
| 34 | 8655000000000000000 | 24, 32 |
| 35 | 537120000000000000000 | 37, 38 |
| 36 | 14480000000000000000 | 25, 26 |
| 37 | 161530000000000000000 | 25, 40 |
| 38 | 17675000000000000000 | 25, 33 |
| 39 | 551600000000000000000 | 28, 38 |
| 40 | 551600000000000000000 | 39, 40 |
| 41 | 29675000000000000000 | 34, 38 |
| 42 | 29675000000000000000 | 20, 39 |
| 43 | 31225000000000000000 | 18, 34 |
| 44 | 31225000000000000000 | 19, 20 |
| 45 | 728350000000000 | 39 |
| 46 | 675340000000000 | 29 |
| 47 | 5000000000000000 | 36, 41 |
| 48 | 2879650099200000 | 36 |
| 49 | 1712560000000000 | 41 |
| 50 | 534100000000000 | 40 |
| 51 | 791786947000000 | 17, 35 |
| 52 | 82161356129349 | 17 |
| 53 | 527575823093344 | 23 |
| 54 | 1708140000000000 | 33 |
| 55 | 627224697736846 | 30 |
| 56 | 131549543830000000000 | 25 |
| 57 | 947241947000000 | 19 |
| 58 | 1166186947000000 | 31, 35 |
| 59 | 1331117601659183 | 35 |
| 60 | 121011720929349 | 31 |
| 61 | 3928000000000000 | 28 |
| 62 | 5000000000000000 | 27 |
| 63 | 1198165000000000 | 34 |
| 64 | 1376900000000000 | 18 |
| 65 | 374400000000000 | 32, 36 |
| 66 | 210397848929349 | 32 |
| 67 | 2322290000000000 | 37 |
| 68 | 3983085000000000 | 38 |
| 69 | 2258410400000000 | 24 |
| 70 | 374400000000000 | 23, 36 |
| 71 | 791786947000000 | 30, 32 |
| 72 | 919855000000000 | 22 |
| 73 | 4880225000000000 | 26 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -15382084636734021443637243/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -15382084636734021443637243/1000000 | 1 | -15382084636734021443637243/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 839 | -15382084636734021443637243/1000000 |
