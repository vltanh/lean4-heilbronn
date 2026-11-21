# BITT convex: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 300

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS-/CQS- |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS-/CQS-:LHLHHLHHLHL |
| Index | 0 |
| Context | 33 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 299 |
| Coordinate cut | u low 283247/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 674217/1000000 | 1 | 674217/1000000 | 1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 103767/1000000 | 19471/50000 | 103767/1000000 | 19471/50000 |
| h | 135501/250000 | 385501/500000 | 135501/250000 | 385501/500000 |
| p | 196767/1000000 | 29741/50000 | 196767/1000000 | 29741/50000 |
| q | 18771/62500 | 267419/500000 | 18771/62500 | 267419/500000 |
| u | 89063/200000 | 283247/500000 | 89063/200000 | 283247/500000 |
| v | 31109/125000 | 681371/1000000 | 31109/125000 | 681371/1000000 |
| r | 712119/1000000 | 1 | 712119/1000000 | 1 |
| w | 576727/1000000 | 176051/200000 | 576727/1000000 | 176051/200000 |
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


### Coordinate certificate sources

| Source | Kind | Source witness | Polynomial |
| --- | --- | --- | --- |
| 0 | bound | `{"direction":"lo","ref":"88:1527","triangle":"AHP","value":"1959/15625"}` | `1 * h * p + -1 * a * p + -1959/15625` |
| 1 | physical | `{"factor":0,"stage":88}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 2 | physical | `{"factor":10,"stage":88}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 3 | physical | `{"factor":111,"stage":88}` | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 4 | physical | `{"factor":119,"stage":88}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 5 | physical | `{"factor":129,"stage":88}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 6 | physical | `{"factor":143,"stage":88}` | `1/1 * f + -1/1 * b` |
| 7 | physical | `{"factor":43,"stage":88}` | `-1/1 * p * k + 1/1 * a * p + 1/1 * q * j + -1/1 * a * j + -93/1000` |
| 8 | physical | `{"factor":47,"stage":88}` | `1/1 * c * e + -1/1 * b * e + -93/1000` |
| 9 | physical | `{"factor":65,"stage":88}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 10 | physical | `{"factor":77,"stage":88}` | `1/1 * u * w + -1/1 * b * w + -1/1 * v * r + 1/1 * b * v + -93/1000` |
| 11 | physical | `{"factor":80,"stage":88}` | `721/1000 + -1/1 * c + -1/1 * e * f + 1/1 * c * e` |
| 12 | physical | `{"factor":93,"stage":88}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 13 | coordinate | `{"box":300,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 14 | coordinate | `{"box":300,"direction":"hi","value":"6143/20000","variable":"b"}` | `6143/20000 + -1 * b` |
| 15 | coordinate | `{"box":300,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 16 | coordinate | `{"box":300,"direction":"hi","value":"176051/200000","variable":"w"}` | `176051/200000 + -1 * w` |
| 17 | coordinate | `{"box":300,"direction":"hi","value":"176083/200000","variable":"j"}` | `176083/200000 + -1 * j` |
| 18 | coordinate | `{"box":300,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 19 | coordinate | `{"box":300,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 20 | coordinate | `{"box":300,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 21 | coordinate | `{"box":300,"direction":"hi","value":"19471/50000","variable":"f"}` | `19471/50000 + -1 * f` |
| 22 | coordinate | `{"box":300,"direction":"hi","value":"385501/500000","variable":"h"}` | `385501/500000 + -1 * h` |
| 23 | coordinate | `{"box":300,"direction":"hi","value":"29741/50000","variable":"p"}` | `29741/50000 + -1 * p` |
| 24 | coordinate | `{"box":300,"direction":"hi","value":"267419/500000","variable":"q"}` | `267419/500000 + -1 * q` |
| 25 | coordinate | `{"box":300,"direction":"hi","value":"283247/500000","variable":"u"}` | `283247/500000 + -1 * u` |
| 26 | coordinate | `{"box":300,"direction":"hi","value":"681371/1000000","variable":"v"}` | `681371/1000000 + -1 * v` |
| 27 | coordinate | `{"box":300,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 28 | coordinate | `{"box":300,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 29 | coordinate | `{"box":300,"direction":"lo","value":"712119/1000000","variable":"r"}` | `-712119/1000000 + 1 * r` |
| 30 | coordinate | `{"box":300,"direction":"lo","value":"576727/1000000","variable":"w"}` | `-576727/1000000 + 1 * w` |
| 31 | coordinate | `{"box":300,"direction":"lo","value":"614293/1000000","variable":"j"}` | `-614293/1000000 + 1 * j` |
| 32 | coordinate | `{"box":300,"direction":"lo","value":"3133/5000","variable":"k"}` | `-3133/5000 + 1 * k` |
| 33 | coordinate | `{"box":300,"direction":"lo","value":"674217/1000000","variable":"c"}` | `-674217/1000000 + 1 * c` |
| 34 | coordinate | `{"box":300,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 35 | coordinate | `{"box":300,"direction":"lo","value":"103767/1000000","variable":"f"}` | `-103767/1000000 + 1 * f` |
| 36 | coordinate | `{"box":300,"direction":"lo","value":"135501/250000","variable":"h"}` | `-135501/250000 + 1 * h` |
| 37 | coordinate | `{"box":300,"direction":"lo","value":"196767/1000000","variable":"p"}` | `-196767/1000000 + 1 * p` |
| 38 | coordinate | `{"box":300,"direction":"lo","value":"18771/62500","variable":"q"}` | `-18771/62500 + 1 * q` |
| 39 | coordinate | `{"box":300,"direction":"lo","value":"31109/125000","variable":"v"}` | `-31109/125000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 11411000000 | 1 |
| 1 | 37466000000 | 2 |
| 2 | 22152000000 | 0 |
| 3 | 22401000000 | 7 |
| 4 | 7213000000 | 8 |
| 5 | 2452000000 | 9 |
| 6 | 56631000000 | 10 |
| 7 | 11610000000 | 11 |
| 8 | 22152000000 | 12 |
| 9 | 34452000000 | 3 |
| 10 | 15726000000 | 4 |
| 11 | 21332000000 | 5 |
| 12 | 1814000000 | 6 |
| 13 | 48878000000 | 27, 28 |
| 14 | 11411000000 | 19, 27 |
| 15 | 7213000000 | 28, 34 |
| 16 | 39919000000 | 24, 28 |
| 17 | 37716000000 | 13, 37 |
| 18 | 56631000000 | 26, 28 |
| 19 | 56631000000 | 14, 16 |
| 20 | 22401000000 | 27, 31 |
| 21 | 18823000000 | 19, 34 |
| 22 | 22152000000 | 22, 33 |
| 23 | 13823000000 | 33, 38 |
| 24 | 8329000000 | 19, 24 |
| 25 | 11610000000 | 34, 35 |
| 26 | 34452000000 | 20, 25 |
| 27 | 15726000000 | 29, 34 |
| 28 | 15726000000 | 17, 34 |
| 29 | 2452000000 | 35, 38 |
| 30 | 21332000000 | 16, 35 |
| 31 | 7180000000 | 32, 35 |
| 32 | 14152000000 | 18, 21 |
| 33 | 34452000000 | 25, 36 |
| 34 | 22401000000 | 32, 37 |
| 35 | 22401000000 | 24, 31 |
| 36 | 56631000000 | 25, 30 |
| 37 | 56631000000 | 29, 39 |
| 38 | 37058000000 | 18, 29 |
| 39 | 37058000000 | 16, 17 |
| 40 | 1000000 | 13, 28 |
| 41 | 103767 | 13 |
| 42 | 1110671 | 14 |
| 43 | 1000000 | 28, 38 |
| 44 | 300336 | 28 |
| 45 | 777984 | 38 |
| 46 | 1000000 | 27, 37 |
| 47 | 633514 | 27 |
| 48 | 103767 | 37 |
| 49 | 2800 | 23 |
| 50 | 617888 | 19 |
| 51 | 300336 | 33 |
| 52 | 417888 | 26 |
| 53 | 106272 | 22 |
| 54 | 190565 | 32 |
| 55 | 48638 | 16 |
| 56 | 289926 | 15 |
| 57 | 228477 | 31 |
| 58 | 547082 | 35 |
| 59 | 434633 | 34 |
| 60 | 588308 | 24 |
| 61 | 37863016545 | 25 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -2740024210159371/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -2740024210159371/1000000 | 1 | -2740024210159371/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 300 | -2740024210159371/1000000 |

## Stage 301

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS-/CQS- |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS-/CQS-:LHLHHLHHLHH |
| Index | 0 |
| Context | 33 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 299 |
| Coordinate cut | u high 283247/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 674217/1000000 | 1 | 674217/1000000 | 1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 103767/1000000 | 19471/50000 | 103767/1000000 | 19471/50000 |
| h | 135501/250000 | 385501/500000 | 135501/250000 | 385501/500000 |
| p | 196767/1000000 | 29741/50000 | 196767/1000000 | 29741/50000 |
| q | 18771/62500 | 267419/500000 | 18771/62500 | 267419/500000 |
| u | 283247/500000 | 907/1000 | 283247/500000 | 907/1000 |
| v | 31109/125000 | 681371/1000000 | 31109/125000 | 681371/1000000 |
| r | 712119/1000000 | 1 | 712119/1000000 | 1 |
| w | 576727/1000000 | 176051/200000 | 576727/1000000 | 176051/200000 |
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


## Stage 302

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS-/CQS- |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS-/CQS-:LHLHHLHHLHHL |
| Index | 0 |
| Context | 33 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 301 |
| Coordinate cut | p low 349337/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 674217/1000000 | 1 | 674217/1000000 | 1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 103767/1000000 | 19471/50000 | 103767/1000000 | 19471/50000 |
| h | 135501/250000 | 385501/500000 | 135501/250000 | 385501/500000 |
| p | 196767/1000000 | 349337/1000000 | 196767/1000000 | 349337/1000000 |
| q | 18771/62500 | 267419/500000 | 18771/62500 | 267419/500000 |
| u | 283247/500000 | 907/1000 | 283247/500000 | 907/1000 |
| v | 31109/125000 | 681371/1000000 | 31109/125000 | 681371/1000000 |
| r | 712119/1000000 | 1 | 712119/1000000 | 1 |
| w | 576727/1000000 | 176051/200000 | 576727/1000000 | 176051/200000 |
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


## Stage 303

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS-/CQS- |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS-/CQS-:LHLHHLHHLHHLL |
| Index | 0 |
| Context | 33 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 302 |
| Coordinate cut | v low 69219/125000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 674217/1000000 | 1 | 674217/1000000 | 1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 103767/1000000 | 19471/50000 | 103767/1000000 | 19471/50000 |
| h | 135501/250000 | 385501/500000 | 135501/250000 | 385501/500000 |
| p | 196767/1000000 | 349337/1000000 | 196767/1000000 | 349337/1000000 |
| q | 18771/62500 | 267419/500000 | 18771/62500 | 267419/500000 |
| u | 283247/500000 | 907/1000 | 283247/500000 | 907/1000 |
| v | 31109/125000 | 69219/125000 | 31109/125000 | 69219/125000 |
| r | 712119/1000000 | 1 | 712119/1000000 | 1 |
| w | 576727/1000000 | 176051/200000 | 576727/1000000 | 176051/200000 |
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


## Stage 304

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS-/CQS- |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS-/CQS-:LHLHHLHHLHHLLL |
| Index | 0 |
| Context | 33 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 303 |
| Coordinate cut | c low 849499/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 674217/1000000 | 849499/1000000 | 674217/1000000 | 849499/1000000 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 103767/1000000 | 19471/50000 | 103767/1000000 | 19471/50000 |
| h | 135501/250000 | 385501/500000 | 135501/250000 | 385501/500000 |
| p | 196767/1000000 | 349337/1000000 | 196767/1000000 | 349337/1000000 |
| q | 18771/62500 | 267419/500000 | 18771/62500 | 267419/500000 |
| u | 283247/500000 | 907/1000 | 283247/500000 | 907/1000 |
| v | 31109/125000 | 69219/125000 | 31109/125000 | 69219/125000 |
| r | 712119/1000000 | 1 | 712119/1000000 | 1 |
| w | 576727/1000000 | 176051/200000 | 576727/1000000 | 176051/200000 |
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


### Coordinate certificate sources

| Source | Kind | Source witness | Polynomial |
| --- | --- | --- | --- |
| 0 | physical | `{"factor":10,"stage":88}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 1 | physical | `{"factor":100,"stage":88}` | `-1/1 * u * w + 1/1 * c * w + 1/1 * v * r + -1/1 * c * v + -93/1000` |
| 2 | physical | `{"factor":106,"stage":88}` | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 3 | physical | `{"factor":111,"stage":88}` | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 4 | physical | `{"factor":119,"stage":88}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 5 | physical | `{"factor":129,"stage":88}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 6 | physical | `{"factor":135,"stage":88}` | `1/1 * r * k + -1/1 * h * r + -1/1 * w * j + 1/1 * h * j + -93/1000` |
| 7 | physical | `{"factor":43,"stage":88}` | `-1/1 * p * k + 1/1 * a * p + 1/1 * q * j + -1/1 * a * j + -93/1000` |
| 8 | physical | `{"factor":65,"stage":88}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 9 | physical | `{"factor":7,"stage":88}` | `1/1 * b * h + -1/1 * a * b + -93/1000` |
| 10 | physical | `{"factor":77,"stage":88}` | `1/1 * u * w + -1/1 * b * w + -1/1 * v * r + 1/1 * b * v + -93/1000` |
| 11 | physical | `{"factor":80,"stage":88}` | `721/1000 + -1/1 * c + -1/1 * e * f + 1/1 * c * e` |
| 12 | physical | `{"factor":90,"stage":88}` | `-1/1 * f * v + 1/1 * c * v + 1/1 * u + -1/1 * c + -93/1000` |
| 13 | physical | `{"factor":93,"stage":88}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 14 | coordinate | `{"box":304,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 15 | coordinate | `{"box":304,"direction":"hi","value":"6143/20000","variable":"b"}` | `6143/20000 + -1 * b` |
| 16 | coordinate | `{"box":304,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 17 | coordinate | `{"box":304,"direction":"hi","value":"176051/200000","variable":"w"}` | `176051/200000 + -1 * w` |
| 18 | coordinate | `{"box":304,"direction":"hi","value":"176083/200000","variable":"j"}` | `176083/200000 + -1 * j` |
| 19 | coordinate | `{"box":304,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 20 | coordinate | `{"box":304,"direction":"hi","value":"849499/1000000","variable":"c"}` | `849499/1000000 + -1 * c` |
| 21 | coordinate | `{"box":304,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 22 | coordinate | `{"box":304,"direction":"hi","value":"19471/50000","variable":"f"}` | `19471/50000 + -1 * f` |
| 23 | coordinate | `{"box":304,"direction":"hi","value":"385501/500000","variable":"h"}` | `385501/500000 + -1 * h` |
| 24 | coordinate | `{"box":304,"direction":"hi","value":"349337/1000000","variable":"p"}` | `349337/1000000 + -1 * p` |
| 25 | coordinate | `{"box":304,"direction":"hi","value":"267419/500000","variable":"q"}` | `267419/500000 + -1 * q` |
| 26 | coordinate | `{"box":304,"direction":"hi","value":"69219/125000","variable":"v"}` | `69219/125000 + -1 * v` |
| 27 | coordinate | `{"box":304,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 28 | coordinate | `{"box":304,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 29 | coordinate | `{"box":304,"direction":"lo","value":"712119/1000000","variable":"r"}` | `-712119/1000000 + 1 * r` |
| 30 | coordinate | `{"box":304,"direction":"lo","value":"576727/1000000","variable":"w"}` | `-576727/1000000 + 1 * w` |
| 31 | coordinate | `{"box":304,"direction":"lo","value":"614293/1000000","variable":"j"}` | `-614293/1000000 + 1 * j` |
| 32 | coordinate | `{"box":304,"direction":"lo","value":"3133/5000","variable":"k"}` | `-3133/5000 + 1 * k` |
| 33 | coordinate | `{"box":304,"direction":"lo","value":"674217/1000000","variable":"c"}` | `-674217/1000000 + 1 * c` |
| 34 | coordinate | `{"box":304,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 35 | coordinate | `{"box":304,"direction":"lo","value":"103767/1000000","variable":"f"}` | `-103767/1000000 + 1 * f` |
| 36 | coordinate | `{"box":304,"direction":"lo","value":"135501/250000","variable":"h"}` | `-135501/250000 + 1 * h` |
| 37 | coordinate | `{"box":304,"direction":"lo","value":"196767/1000000","variable":"p"}` | `-196767/1000000 + 1 * p` |
| 38 | coordinate | `{"box":304,"direction":"lo","value":"18771/62500","variable":"q"}` | `-18771/62500 + 1 * q` |
| 39 | coordinate | `{"box":304,"direction":"lo","value":"283247/500000","variable":"u"}` | `-283247/500000 + 1 * u` |
| 40 | coordinate | `{"box":304,"direction":"lo","value":"31109/125000","variable":"v"}` | `-31109/125000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 6274000000 | 9 |
| 1 | 41749000000 | 0 |
| 2 | 36237000000 | 7 |
| 3 | 47292000000 | 8 |
| 4 | 8055000000 | 10 |
| 5 | 3258000000 | 11 |
| 6 | 3888000000 | 12 |
| 7 | 42384000000 | 13 |
| 8 | 2639000000 | 1 |
| 9 | 37798000000 | 2 |
| 10 | 37798000000 | 3 |
| 11 | 8869000000 | 4 |
| 12 | 2493000000 | 5 |
| 13 | 4896000000 | 6 |
| 14 | 48024000000 | 27, 28 |
| 15 | 6274000000 | 23, 28 |
| 16 | 89041000000 | 25, 28 |
| 17 | 77987000000 | 24, 27 |
| 18 | 8055000000 | 26, 28 |
| 19 | 8055000000 | 28, 30 |
| 20 | 36237000000 | 27, 31 |
| 21 | 3258000000 | 20, 34 |
| 22 | 20400000000 | 23, 33 |
| 23 | 21984000000 | 20, 36 |
| 24 | 42384000000 | 20, 25 |
| 25 | 1250000000 | 20, 40 |
| 26 | 2639000000 | 20, 30 |
| 27 | 41056000000 | 34, 35 |
| 28 | 8869000000 | 29, 34 |
| 29 | 8869000000 | 18, 34 |
| 30 | 46483000000 | 35, 38 |
| 31 | 809000000 | 22, 25 |
| 32 | 33910000000 | 26, 35 |
| 33 | 2493000000 | 22, 30 |
| 34 | 2493000000 | 32, 35 |
| 35 | 42384000000 | 23, 24 |
| 36 | 37798000000 | 23, 39 |
| 37 | 4896000000 | 16, 23 |
| 38 | 4896000000 | 23, 31 |
| 39 | 36237000000 | 32, 37 |
| 40 | 36237000000 | 18, 38 |
| 41 | 5416000000 | 17, 39 |
| 42 | 5416000000 | 16, 26 |
| 43 | 16258000000 | 16, 32 |
| 44 | 16258000000 | 17, 18 |
| 45 | 1000000 | 14, 28 |
| 46 | 406537 | 14 |
| 47 | 307150 | 15 |
| 48 | 1000000 | 27, 37 |
| 49 | 196767 | 27 |
| 50 | 103767 | 37 |
| 51 | 224061 | 24 |
| 52 | 593127 | 28 |
| 53 | 428383 | 20 |
| 54 | 1000000 | 33, 40 |
| 55 | 248872 | 33 |
| 56 | 674217 | 40 |
| 57 | 205324 | 39 |
| 58 | 455905 | 26 |
| 59 | 66306 | 23 |
| 60 | 63090 | 19 |
| 61 | 153170 | 17 |
| 62 | 6653 | 16 |
| 63 | 20378 | 18 |
| 64 | 492055 | 38 |
| 65 | 27014 | 21 |
| 66 | 63251 | 35 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -229538037155461/200000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -229538037155461/200000 | 1 | -229538037155461/200000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 304 | -229538037155461/200000 |
