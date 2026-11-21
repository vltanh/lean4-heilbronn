# BITT convex: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 290

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS-/CQS- |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS-/CQS-:LHLHL |
| Index | 0 |
| Context | 33 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 289 |
| Coordinate cut | k low 3133/5000 |

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
| k | 260221/500000 | 3133/5000 | 260221/500000 | 3133/5000 |

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
| 0 | bound | `{"direction":"lo","ref":"88:1525","triangle":"QRS","value":"46773/500000"}` | `1 * r * k + -1 * v * r + -1 * u * k + -1 * w * j + 1 * u * w + 1 * v * j + -46773/500000` |
| 1 | bound | `{"direction":"lo","ref":"88:938","triangle":"EQR","value":"24097/200000"}` | `-1 * u * w + 1 * e * u + 1 * w + 1 * v * r + -1 * v + -1 * e * r + -24097/200000` |
| 2 | physical | `{"factor":101,"stage":88}` | `-1/1 * u * k + 1/1 * c * k + 1/1 * v * j + -1/1 * c * v + -93/1000` |
| 3 | physical | `{"factor":111,"stage":88}` | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 4 | physical | `{"factor":119,"stage":88}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 5 | physical | `{"factor":129,"stage":88}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 6 | physical | `{"factor":1545,"stage":88}` | `-324603/500000 * f * k + -186897/500000 * b * k + 324603/500000 * j + 186897/500000 * b + 1023/1000 * f * v + -1023/1000 * u + 1023/1000 * u * k + -1023/1000 * v * j` |
| 7 | physical | `{"factor":155,"stage":88}` | `1/1 * c * h + -135501/250000` |
| 8 | physical | `{"factor":77,"stage":88}` | `1/1 * u * w + -1/1 * b * w + -1/1 * v * r + 1/1 * b * v + -93/1000` |
| 9 | physical | `{"factor":90,"stage":88}` | `-1/1 * f * v + 1/1 * c * v + 1/1 * u + -1/1 * c + -93/1000` |
| 10 | coordinate | `{"box":290,"direction":"hi","value":"6143/20000","variable":"b"}` | `6143/20000 + -1 * b` |
| 11 | coordinate | `{"box":290,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 12 | coordinate | `{"box":290,"direction":"hi","value":"176051/200000","variable":"w"}` | `176051/200000 + -1 * w` |
| 13 | coordinate | `{"box":290,"direction":"hi","value":"176083/200000","variable":"j"}` | `176083/200000 + -1 * j` |
| 14 | coordinate | `{"box":290,"direction":"hi","value":"3133/5000","variable":"k"}` | `3133/5000 + -1 * k` |
| 15 | coordinate | `{"box":290,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 16 | coordinate | `{"box":290,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 17 | coordinate | `{"box":290,"direction":"hi","value":"58493/100000","variable":"f"}` | `58493/100000 + -1 * f` |
| 18 | coordinate | `{"box":290,"direction":"hi","value":"385501/500000","variable":"h"}` | `385501/500000 + -1 * h` |
| 19 | coordinate | `{"box":290,"direction":"hi","value":"907/1000","variable":"u"}` | `907/1000 + -1 * u` |
| 20 | coordinate | `{"box":290,"direction":"hi","value":"681371/1000000","variable":"v"}` | `681371/1000000 + -1 * v` |
| 21 | coordinate | `{"box":290,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 22 | coordinate | `{"box":290,"direction":"lo","value":"608119/1000000","variable":"r"}` | `-608119/1000000 + 1 * r` |
| 23 | coordinate | `{"box":290,"direction":"lo","value":"228839/500000","variable":"w"}` | `-228839/500000 + 1 * w` |
| 24 | coordinate | `{"box":290,"direction":"lo","value":"112111/250000","variable":"j"}` | `-112111/250000 + 1 * j` |
| 25 | coordinate | `{"box":290,"direction":"lo","value":"260221/500000","variable":"k"}` | `-260221/500000 + 1 * k` |
| 26 | coordinate | `{"box":290,"direction":"lo","value":"674217/1000000","variable":"c"}` | `-674217/1000000 + 1 * c` |
| 27 | coordinate | `{"box":290,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 28 | coordinate | `{"box":290,"direction":"lo","value":"103767/1000000","variable":"f"}` | `-103767/1000000 + 1 * f` |
| 29 | coordinate | `{"box":290,"direction":"lo","value":"135501/250000","variable":"h"}` | `-135501/250000 + 1 * h` |
| 30 | coordinate | `{"box":290,"direction":"lo","value":"89063/200000","variable":"u"}` | `-89063/200000 + 1 * u` |
| 31 | coordinate | `{"box":290,"direction":"lo","value":"31109/125000","variable":"v"}` | `-31109/125000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 8974250000000000 | 8 |
| 1 | 8391750000000000 | 9 |
| 2 | 11586750000000000 | 2 |
| 3 | 6256000000000000 | 3 |
| 4 | 13216750000000000 | 1 |
| 5 | 6331500000000000 | 4 |
| 6 | 12311750000000000 | 5 |
| 7 | 4242500000000000 | 0 |
| 8 | 2499000000000000 | 7 |
| 9 | 8203250000000000 | 6 |
| 10 | 932750000000000 | 20, 21 |
| 11 | 8041500000000000 | 10, 31 |
| 12 | 8974250000000000 | 21, 23 |
| 13 | 3066325630500000 | 21, 25 |
| 14 | 2499000000000000 | 18, 26 |
| 15 | 3195000000000000 | 26, 31 |
| 16 | 11586750000000000 | 14, 26 |
| 17 | 6960750000000000 | 19, 27 |
| 18 | 19548250000000000 | 22, 27 |
| 19 | 6331500000000000 | 13, 27 |
| 20 | 11783000000000000 | 12, 28 |
| 21 | 528750000000000 | 17, 23 |
| 22 | 4120849119500000 | 25, 28 |
| 23 | 13516500000000000 | 14, 17 |
| 24 | 3866750000000000 | 19, 29 |
| 25 | 2389250000000000 | 18, 30 |
| 26 | 7437250000000000 | 14, 19 |
| 27 | 7437250000000000 | 13, 31 |
| 28 | 22885500000000000 | 14, 22 |
| 29 | 22885500000000000 | 12, 13 |
| 30 | 174750000000 | 17, 31 |
| 31 | 157909882000 | 17 |
| 32 | 135961928500 | 20 |
| 33 | 62218000000 | 26 |
| 34 | 271462000000 | 31 |
| 35 | 188122510500 | 30 |
| 36 | 157726000000 | 15 |
| 37 | 75250000000 | 25, 30 |
| 38 | 51643237000 | 25 |
| 39 | 75250000000 | 20, 24 |
| 40 | 248632667750 | 13 |
| 41 | 20603250000 | 29 |
| 42 | 249816250000 | 12 |
| 43 | 250000000000 | 11, 25 |
| 44 | 130110500000 | 11 |
| 45 | 275675250000 | 14 |
| 46 | 250000000000 | 23, 24 |
| 47 | 112111000000 | 23 |
| 48 | 114419500000 | 24 |
| 49 | 158957750000 | 22 |
| 50 | 174369450819 | 28 |
| 51 | 39361288681 | 21 |
| 52 | 56544750000 | 10 |
| 53 | 85580750000 | 16 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -4991573904005491581/4000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -4991573904005491581/4000 | 1 | -4991573904005491581/4000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 290 | -4991573904005491581/4000 |

## Stage 291

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS-/CQS- |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS-/CQS-:LHLHH |
| Index | 0 |
| Context | 33 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 289 |
| Coordinate cut | k high 3133/5000 |

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
| k | 3133/5000 | 1 | 3133/5000 | 1 |

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


## Stage 292

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS-/CQS- |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS-/CQS-:LHLHHL |
| Index | 0 |
| Context | 33 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 291 |
| Coordinate cut | q low 267419/500000 |

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
| q | 18771/62500 | 267419/500000 | 18771/62500 | 267419/500000 |
| u | 89063/200000 | 907/1000 | 89063/200000 | 907/1000 |
| v | 31109/125000 | 681371/1000000 | 31109/125000 | 681371/1000000 |
| r | 608119/1000000 | 1 | 608119/1000000 | 1 |
| w | 228839/500000 | 176051/200000 | 228839/500000 | 176051/200000 |
| j | 112111/250000 | 176083/200000 | 112111/250000 | 176083/200000 |
| k | 3133/5000 | 1 | 3133/5000 | 1 |

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


## Stage 293

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS-/CQS- |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS-/CQS-:LHLHHLL |
| Index | 0 |
| Context | 33 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 292 |
| Coordinate cut | j low 614293/1000000 |

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
| q | 18771/62500 | 267419/500000 | 18771/62500 | 267419/500000 |
| u | 89063/200000 | 907/1000 | 89063/200000 | 907/1000 |
| v | 31109/125000 | 681371/1000000 | 31109/125000 | 681371/1000000 |
| r | 608119/1000000 | 1 | 608119/1000000 | 1 |
| w | 228839/500000 | 176051/200000 | 228839/500000 | 176051/200000 |
| j | 112111/250000 | 614293/1000000 | 112111/250000 | 614293/1000000 |
| k | 3133/5000 | 1 | 3133/5000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"88:938","triangle":"EQR","value":"24097/200000"}` | `-1 * u * w + 1 * e * u + 1 * w + 1 * v * r + -1 * v + -1 * e * r + -24097/200000` |
| 1 | physical | `{"factor":10,"stage":88}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 2 | physical | `{"factor":101,"stage":88}` | `-1/1 * u * k + 1/1 * c * k + 1/1 * v * j + -1/1 * c * v + -93/1000` |
| 3 | physical | `{"factor":106,"stage":88}` | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 4 | physical | `{"factor":111,"stage":88}` | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 5 | physical | `{"factor":119,"stage":88}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 6 | physical | `{"factor":129,"stage":88}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 7 | physical | `{"factor":145,"stage":88}` | `1/1 * f + -1/1 * e` |
| 8 | physical | `{"factor":1545,"stage":88}` | `-324603/500000 * f * k + -186897/500000 * b * k + 324603/500000 * j + 186897/500000 * b + 1023/1000 * f * v + -1023/1000 * u + 1023/1000 * u * k + -1023/1000 * v * j` |
| 9 | physical | `{"factor":43,"stage":88}` | `-1/1 * p * k + 1/1 * a * p + 1/1 * q * j + -1/1 * a * j + -93/1000` |
| 10 | physical | `{"factor":65,"stage":88}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 11 | physical | `{"factor":7,"stage":88}` | `1/1 * b * h + -1/1 * a * b + -93/1000` |
| 12 | physical | `{"factor":77,"stage":88}` | `1/1 * u * w + -1/1 * b * w + -1/1 * v * r + 1/1 * b * v + -93/1000` |
| 13 | physical | `{"factor":80,"stage":88}` | `721/1000 + -1/1 * c + -1/1 * e * f + 1/1 * c * e` |
| 14 | physical | `{"factor":90,"stage":88}` | `-1/1 * f * v + 1/1 * c * v + 1/1 * u + -1/1 * c + -93/1000` |
| 15 | physical | `{"factor":93,"stage":88}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 16 | coordinate | `{"box":293,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 17 | coordinate | `{"box":293,"direction":"hi","value":"6143/20000","variable":"b"}` | `6143/20000 + -1 * b` |
| 18 | coordinate | `{"box":293,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 19 | coordinate | `{"box":293,"direction":"hi","value":"176051/200000","variable":"w"}` | `176051/200000 + -1 * w` |
| 20 | coordinate | `{"box":293,"direction":"hi","value":"614293/1000000","variable":"j"}` | `614293/1000000 + -1 * j` |
| 21 | coordinate | `{"box":293,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 22 | coordinate | `{"box":293,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 23 | coordinate | `{"box":293,"direction":"hi","value":"58493/100000","variable":"f"}` | `58493/100000 + -1 * f` |
| 24 | coordinate | `{"box":293,"direction":"hi","value":"385501/500000","variable":"h"}` | `385501/500000 + -1 * h` |
| 25 | coordinate | `{"box":293,"direction":"hi","value":"29741/50000","variable":"p"}` | `29741/50000 + -1 * p` |
| 26 | coordinate | `{"box":293,"direction":"hi","value":"267419/500000","variable":"q"}` | `267419/500000 + -1 * q` |
| 27 | coordinate | `{"box":293,"direction":"hi","value":"907/1000","variable":"u"}` | `907/1000 + -1 * u` |
| 28 | coordinate | `{"box":293,"direction":"hi","value":"681371/1000000","variable":"v"}` | `681371/1000000 + -1 * v` |
| 29 | coordinate | `{"box":293,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 30 | coordinate | `{"box":293,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 31 | coordinate | `{"box":293,"direction":"lo","value":"608119/1000000","variable":"r"}` | `-608119/1000000 + 1 * r` |
| 32 | coordinate | `{"box":293,"direction":"lo","value":"228839/500000","variable":"w"}` | `-228839/500000 + 1 * w` |
| 33 | coordinate | `{"box":293,"direction":"lo","value":"112111/250000","variable":"j"}` | `-112111/250000 + 1 * j` |
| 34 | coordinate | `{"box":293,"direction":"lo","value":"3133/5000","variable":"k"}` | `-3133/5000 + 1 * k` |
| 35 | coordinate | `{"box":293,"direction":"lo","value":"674217/1000000","variable":"c"}` | `-674217/1000000 + 1 * c` |
| 36 | coordinate | `{"box":293,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 37 | coordinate | `{"box":293,"direction":"lo","value":"103767/1000000","variable":"f"}` | `-103767/1000000 + 1 * f` |
| 38 | coordinate | `{"box":293,"direction":"lo","value":"135501/250000","variable":"h"}` | `-135501/250000 + 1 * h` |
| 39 | coordinate | `{"box":293,"direction":"lo","value":"196767/1000000","variable":"p"}` | `-196767/1000000 + 1 * p` |
| 40 | coordinate | `{"box":293,"direction":"lo","value":"18771/62500","variable":"q"}` | `-18771/62500 + 1 * q` |
| 41 | coordinate | `{"box":293,"direction":"lo","value":"89063/200000","variable":"u"}` | `-89063/200000 + 1 * u` |
| 42 | coordinate | `{"box":293,"direction":"lo","value":"31109/125000","variable":"v"}` | `-31109/125000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 172581250000000 | 11 |
| 1 | 50831250000000 | 1 |
| 2 | 362162500000000 | 9 |
| 3 | 328368750000000 | 10 |
| 4 | 54231250000000 | 12 |
| 5 | 49175000000000 | 13 |
| 6 | 26012500000000 | 14 |
| 7 | 227750000000000 | 15 |
| 8 | 26012500000000 | 2 |
| 9 | 127612500000000 | 3 |
| 10 | 162975000000000 | 4 |
| 11 | 54231250000000 | 0 |
| 12 | 6281250000000 | 5 |
| 13 | 99950000000000 | 6 |
| 14 | 15006250000000 | 7 |
| 15 | 25425000000000 | 8 |
| 16 | 223412500000000 | 29, 30 |
| 17 | 172581250000000 | 24, 30 |
| 18 | 379200000000000 | 26, 30 |
| 19 | 412993750000000 | 25, 29 |
| 20 | 54231250000000 | 28, 30 |
| 21 | 54231250000000 | 30, 32 |
| 22 | 9506250000000 | 30, 34 |
| 23 | 362162500000000 | 16, 20 |
| 24 | 49175000000000 | 22, 36 |
| 25 | 227750000000000 | 24, 35 |
| 26 | 227750000000000 | 22, 26 |
| 27 | 26012500000000 | 22, 34 |
| 28 | 176787500000000 | 36, 37 |
| 29 | 18868750000000 | 27, 36 |
| 30 | 60512500000000 | 31, 36 |
| 31 | 6281250000000 | 20, 36 |
| 32 | 328368750000000 | 37, 40 |
| 33 | 127612500000000 | 28, 37 |
| 34 | 99950000000000 | 19, 37 |
| 35 | 116456250000000 | 34, 37 |
| 36 | 136687500000000 | 38, 39 |
| 37 | 91062500000000 | 24, 25 |
| 38 | 162975000000000 | 24, 41 |
| 39 | 362162500000000 | 34, 39 |
| 40 | 362162500000000 | 20, 40 |
| 41 | 106231250000000 | 21, 31 |
| 42 | 106231250000000 | 19, 20 |
| 43 | 1691418750 | 39 |
| 44 | 2289168750 | 30 |
| 45 | 1025725000 | 22 |
| 46 | 2725000000 | 37, 42 |
| 47 | 678176200 | 37 |
| 48 | 282765075 | 42 |
| 49 | 2229531250 | 27 |
| 50 | 2725000000 | 34, 41 |
| 51 | 1707485000 | 41 |
| 52 | 1213483375 | 34 |
| 53 | 2725000000 | 28, 33 |
| 54 | 1852416150 | 28 |
| 55 | 21131341510975 | 20 |
| 56 | 13118750 | 38 |
| 57 | 515725000 | 32 |
| 58 | 1001197361 | 21 |
| 59 | 2049412500 | 18 |
| 60 | 187450000 | 23, 34 |
| 61 | 2159781170 | 23 |
| 62 | 2275343750 | 36 |
| 63 | 2537550000 | 17, 34 |
| 64 | 1590028830 | 17 |
| 65 | 208875000 | 16 |
| 66 | 1505068750 | 40 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -696455286726426439/40000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -696455286726426439/40000 | 1 | -696455286726426439/40000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 293 | -696455286726426439/40000 |

## Stage 294

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS-/CQS- |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS-/CQS-:LHLHHLH |
| Index | 0 |
| Context | 33 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 292 |
| Coordinate cut | j high 614293/1000000 |

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
| q | 18771/62500 | 267419/500000 | 18771/62500 | 267419/500000 |
| u | 89063/200000 | 907/1000 | 89063/200000 | 907/1000 |
| v | 31109/125000 | 681371/1000000 | 31109/125000 | 681371/1000000 |
| r | 608119/1000000 | 1 | 608119/1000000 | 1 |
| w | 228839/500000 | 176051/200000 | 228839/500000 | 176051/200000 |
| j | 614293/1000000 | 176083/200000 | 614293/1000000 | 176083/200000 |
| k | 3133/5000 | 1 | 3133/5000 | 1 |

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
