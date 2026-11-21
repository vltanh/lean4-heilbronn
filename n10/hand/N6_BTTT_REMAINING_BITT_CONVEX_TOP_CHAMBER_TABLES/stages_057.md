# BITT convex: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 285

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS-/CQS- |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS-/CQS-:LL |
| Index | 0 |
| Context | 33 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 284 |
| Coordinate cut | r low 608119/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 135501/250000 | 1 | 135501/250000 | 1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 103767/1000000 | 58493/100000 | 103767/1000000 | 58493/100000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 196767/1000000 | 29741/50000 | 196767/1000000 | 29741/50000 |
| q | 18771/62500 | 710233/1000000 | 18771/62500 | 710233/1000000 |
| u | 89063/200000 | 907/1000 | 89063/200000 | 907/1000 |
| v | 31109/125000 | 681371/1000000 | 31109/125000 | 681371/1000000 |
| r | 504431/1000000 | 608119/1000000 | 504431/1000000 | 608119/1000000 |
| w | 228839/500000 | 176051/200000 | 228839/500000 | 176051/200000 |
| j | 112111/250000 | 176083/200000 | 112111/250000 | 176083/200000 |
| k | 260221/500000 | 1 | 260221/500000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"88:1504","triangle":"EFP","value":"329549/1000000"}` | `1 * f * q + -1 * e * f + -1 * q + -1 * p + 670451/1000000 + 1 * e * p` |
| 1 | bound | `{"direction":"lo","ref":"88:1623","triangle":"EFH","value":"10017/31250"}` | `1 * f * h + -1 * e * f + -1 * h + 21233/31250` |
| 2 | bound | `{"direction":"lo","ref":"88:1633","triangle":"FPS","value":"77239/500000"}` | `1 * p * k + -1 * p + -1 * f * k + -1 * q * j + 1 * f * q + 1 * j + -77239/500000` |
| 3 | physical | `{"factor":0,"stage":88}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 4 | physical | `{"factor":119,"stage":88}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 5 | physical | `{"factor":1203,"stage":88}` | `896233/1000000 * w + 13306751/25000000 * a + -896233/1000000 * e * r + -13306751/25000000 * a * r + -558009/390625 * f * w + 558009/390625 * e * f + 558009/390625 * r + -558009/390625` |
| 6 | physical | `{"factor":129,"stage":88}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 7 | physical | `{"factor":43,"stage":88}` | `-1/1 * p * k + 1/1 * a * p + 1/1 * q * j + -1/1 * a * j + -93/1000` |
| 8 | physical | `{"factor":65,"stage":88}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 9 | physical | `{"factor":7,"stage":88}` | `1/1 * b * h + -1/1 * a * b + -93/1000` |
| 10 | physical | `{"factor":80,"stage":88}` | `721/1000 + -1/1 * c + -1/1 * e * f + 1/1 * c * e` |
| 11 | coordinate | `{"box":285,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 12 | coordinate | `{"box":285,"direction":"hi","value":"608119/1000000","variable":"r"}` | `608119/1000000 + -1 * r` |
| 13 | coordinate | `{"box":285,"direction":"hi","value":"176051/200000","variable":"w"}` | `176051/200000 + -1 * w` |
| 14 | coordinate | `{"box":285,"direction":"hi","value":"176083/200000","variable":"j"}` | `176083/200000 + -1 * j` |
| 15 | coordinate | `{"box":285,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 16 | coordinate | `{"box":285,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 17 | coordinate | `{"box":285,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 18 | coordinate | `{"box":285,"direction":"hi","value":"58493/100000","variable":"f"}` | `58493/100000 + -1 * f` |
| 19 | coordinate | `{"box":285,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 20 | coordinate | `{"box":285,"direction":"hi","value":"29741/50000","variable":"p"}` | `29741/50000 + -1 * p` |
| 21 | coordinate | `{"box":285,"direction":"hi","value":"710233/1000000","variable":"q"}` | `710233/1000000 + -1 * q` |
| 22 | coordinate | `{"box":285,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 23 | coordinate | `{"box":285,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 24 | coordinate | `{"box":285,"direction":"lo","value":"504431/1000000","variable":"r"}` | `-504431/1000000 + 1 * r` |
| 25 | coordinate | `{"box":285,"direction":"lo","value":"228839/500000","variable":"w"}` | `-228839/500000 + 1 * w` |
| 26 | coordinate | `{"box":285,"direction":"lo","value":"112111/250000","variable":"j"}` | `-112111/250000 + 1 * j` |
| 27 | coordinate | `{"box":285,"direction":"lo","value":"260221/500000","variable":"k"}` | `-260221/500000 + 1 * k` |
| 28 | coordinate | `{"box":285,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 29 | coordinate | `{"box":285,"direction":"lo","value":"103767/1000000","variable":"f"}` | `-103767/1000000 + 1 * f` |
| 30 | coordinate | `{"box":285,"direction":"lo","value":"196767/1000000","variable":"p"}` | `-196767/1000000 + 1 * p` |
| 31 | coordinate | `{"box":285,"direction":"lo","value":"18771/62500","variable":"q"}` | `-18771/62500 + 1 * q` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 696093750000000 | 3 |
| 1 | 1779296875000000 | 9 |
| 2 | 11592187500000000 | 7 |
| 3 | 6140625000000000 | 8 |
| 4 | 80468750000000 | 10 |
| 5 | 205859375000000 | 1 |
| 6 | 5587890625000000 | 0 |
| 7 | 29441796875000000 | 4 |
| 8 | 552734375000000 | 2 |
| 9 | 27296875000000000 | 6 |
| 10 | 10650000000000000 | 5 |
| 11 | 696093750000000 | 16, 22 |
| 12 | 1779296875000000 | 19, 23 |
| 13 | 6140625000000000 | 21, 23 |
| 14 | 11592187500000000 | 11, 30 |
| 15 | 5668750000000000 | 11, 12 |
| 16 | 11592187500000000 | 22, 26 |
| 17 | 80468750000000 | 16, 28 |
| 18 | 9339338626000000 | 17, 29 |
| 19 | 5587890625000000 | 17, 30 |
| 20 | 38986718750000000 | 12, 17 |
| 21 | 19344921875000000 | 14, 28 |
| 22 | 10097265625000000 | 17, 26 |
| 23 | 205859375000000 | 19, 29 |
| 24 | 12083593750000000 | 13, 29 |
| 25 | 27850000000000000 | 27, 29 |
| 26 | 11039453125000000 | 27, 30 |
| 27 | 11039453125000000 | 21, 26 |
| 28 | 56739062500000000 | 12, 27 |
| 29 | 22485546875000000 | 25, 26 |
| 30 | 34253125000000000 | 13, 14 |
| 31 | 2475390625000000 | 22, 23 |
| 32 | 256863858984375 | 22 |
| 33 | 256917468359375 | 23 |
| 34 | 10561718750 | 20 |
| 35 | 112810937500 | 16 |
| 36 | 169926421067 | 17 |
| 37 | 311262922250 | 18 |
| 38 | 134333593750 | 19 |
| 39 | 119873437500 | 31 |
| 40 | 390625000000 | 24, 27 |
| 41 | 203297656250 | 24 |
| 42 | 197043359375 | 27 |
| 43 | 40425000000 | 17, 24 |
| 44 | 461148505879100 | 12 |
| 45 | 422538671875 | 15 |
| 46 | 82967968750 | 13 |
| 47 | 390625000000 | 26, 28 |
| 48 | 175173437500 | 28 |
| 49 | 40533984375 | 26 |
| 50 | 390625000000 | 18, 27 |
| 51 | 77464062500 | 14 |
| 52 | 276126000000 | 25, 29 |
| 53 | 359447889178 | 29 |
| 54 | 28652766642 | 25 |
| 55 | 45486534394 | 11 |
| 56 | 74074000000 | 11, 24 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -978024426476198301563/500000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -978024426476198301563/500000 | 1 | -978024426476198301563/500000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 285 | -978024426476198301563/500000 |

## Stage 286

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS-/CQS- |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS-/CQS-:LH |
| Index | 0 |
| Context | 33 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 284 |
| Coordinate cut | r high 608119/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 135501/250000 | 1 | 135501/250000 | 1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 103767/1000000 | 58493/100000 | 103767/1000000 | 58493/100000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 196767/1000000 | 29741/50000 | 196767/1000000 | 29741/50000 |
| q | 18771/62500 | 710233/1000000 | 18771/62500 | 710233/1000000 |
| u | 89063/200000 | 907/1000 | 89063/200000 | 907/1000 |
| v | 31109/125000 | 681371/1000000 | 31109/125000 | 681371/1000000 |
| r | 608119/1000000 | 1 | 608119/1000000 | 1 |
| w | 228839/500000 | 176051/200000 | 228839/500000 | 176051/200000 |
| j | 112111/250000 | 176083/200000 | 112111/250000 | 176083/200000 |
| k | 260221/500000 | 1 | 260221/500000 | 1 |

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


## Stage 287

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS-/CQS- |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS-/CQS-:LHL |
| Index | 0 |
| Context | 33 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 286 |
| Coordinate cut | h low 385501/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 135501/250000 | 1 | 135501/250000 | 1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 103767/1000000 | 58493/100000 | 103767/1000000 | 58493/100000 |
| h | 135501/250000 | 385501/500000 | 135501/250000 | 385501/500000 |
| p | 196767/1000000 | 29741/50000 | 196767/1000000 | 29741/50000 |
| q | 18771/62500 | 710233/1000000 | 18771/62500 | 710233/1000000 |
| u | 89063/200000 | 907/1000 | 89063/200000 | 907/1000 |
| v | 31109/125000 | 681371/1000000 | 31109/125000 | 681371/1000000 |
| r | 608119/1000000 | 1 | 608119/1000000 | 1 |
| w | 228839/500000 | 176051/200000 | 228839/500000 | 176051/200000 |
| j | 112111/250000 | 176083/200000 | 112111/250000 | 176083/200000 |
| k | 260221/500000 | 1 | 260221/500000 | 1 |

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


## Stage 288

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS-/CQS- |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS-/CQS-:LHLL |
| Index | 0 |
| Context | 33 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 287 |
| Coordinate cut | c low 674217/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 135501/250000 | 674217/1000000 | 135501/250000 | 674217/1000000 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 103767/1000000 | 58493/100000 | 103767/1000000 | 58493/100000 |
| h | 135501/250000 | 385501/500000 | 135501/250000 | 385501/500000 |
| p | 196767/1000000 | 29741/50000 | 196767/1000000 | 29741/50000 |
| q | 18771/62500 | 710233/1000000 | 18771/62500 | 710233/1000000 |
| u | 89063/200000 | 907/1000 | 89063/200000 | 907/1000 |
| v | 31109/125000 | 681371/1000000 | 31109/125000 | 681371/1000000 |
| r | 608119/1000000 | 1 | 608119/1000000 | 1 |
| w | 228839/500000 | 176051/200000 | 228839/500000 | 176051/200000 |
| j | 112111/250000 | 176083/200000 | 112111/250000 | 176083/200000 |
| k | 260221/500000 | 1 | 260221/500000 | 1 |

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
| 0 | physical | `{"factor":155,"stage":88}` | `1/1 * c * h + -135501/250000` |
| 1 | coordinate | `{"box":288,"direction":"hi","value":"674217/1000000","variable":"c"}` | `674217/1000000 + -1 * c` |
| 2 | coordinate | `{"box":288,"direction":"hi","value":"385501/500000","variable":"h"}` | `385501/500000 + -1 * h` |
| 3 | coordinate | `{"box":288,"direction":"lo","value":"135501/250000","variable":"h"}` | `-135501/250000 + 1 * h` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 1000000 | 0 |
| 1 | 1000000 | 1, 3 |
| 2 | 542004 | 1 |
| 3 | 674217 | 2 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -11090672283/500000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -11090672283/500000 | 1 | -11090672283/500000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 288 | -11090672283/500000 |

## Stage 289

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS-/CQS- |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS-/CQS-:LHLH |
| Index | 0 |
| Context | 33 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 287 |
| Coordinate cut | c high 674217/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 674217/1000000 | 1 | 674217/1000000 | 1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 103767/1000000 | 58493/100000 | 103767/1000000 | 58493/100000 |
| h | 135501/250000 | 385501/500000 | 135501/250000 | 385501/500000 |
| p | 196767/1000000 | 29741/50000 | 196767/1000000 | 29741/50000 |
| q | 18771/62500 | 710233/1000000 | 18771/62500 | 710233/1000000 |
| u | 89063/200000 | 907/1000 | 89063/200000 | 907/1000 |
| v | 31109/125000 | 681371/1000000 | 31109/125000 | 681371/1000000 |
| r | 608119/1000000 | 1 | 608119/1000000 | 1 |
| w | 228839/500000 | 176051/200000 | 228839/500000 | 176051/200000 |
| j | 112111/250000 | 176083/200000 | 112111/250000 | 176083/200000 |
| k | 260221/500000 | 1 | 260221/500000 | 1 |

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
