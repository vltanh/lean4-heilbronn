# BITT convex: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 435

| Property | Value |
| --- | --- |
| Scope | root/AFQ-/AFP-/APR+/BFP-/FPQ+/BPQ+/AEP+/AQR-/PQS-/BPR-/BPS+/AQS+ |
| Packet | coordinate:root/HEQ+/CFQ+/AFQ-/AFP-/APR+/BFP-/FPQ+/BPQ+/AEP+/AQR-/PQS-/BPR-/BPS+/AQS+:LLLLLHLL |
| Index | 0 |
| Context | 67 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 434 |
| Coordinate cut | p low 376333/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 107303/1000000 | 6143/20000 | 107303/1000000 | 6143/20000 |
| b | 52089/500000 | 278031/1000000 | 52089/500000 | 278031/1000000 |
| c | 199257/250000 | 3034/3125 | 199257/250000 | 3034/3125 |
| e | 107303/1000000 | 391/1000 | 107303/1000000 | 391/1000 |
| f | 107303/1000000 | 42363/100000 | 107303/1000000 | 42363/100000 |
| h | 27913/50000 | 112813/125000 | 27913/50000 | 112813/125000 |
| p | 53537/200000 | 376333/1000000 | 53537/200000 | 376333/1000000 |
| q | 200303/1000000 | 84083/200000 | 200303/1000000 | 84083/200000 |
| u | 764/3125 | 22097/40000 | 764/3125 | 22097/40000 |
| v | 428331/1000000 | 176317/250000 | 428331/1000000 | 176317/250000 |
| r | 99817/125000 | 1 | 99817/125000 | 1 |
| w | 96537/200000 | 385247/500000 | 96537/200000 | 385247/500000 |
| j | 111823/200000 | 879577/1000000 | 111823/200000 | 879577/1000000 |
| k | 800153/1000000 | 1 | 800153/1000000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"137:739","triangle":"ABQ","value":"59859/500000"}` | `1 * b * v + -1 * a * b + 1 * a * u + -59859/500000` |
| 1 | physical | `{"factor":136,"stage":137}` | `-1/1 * u * k + 1/1 * q * u + 1/1 * p * k + 1/1 * v * j + -1/1 * p * v + -1/1 * q * j + -93/1000` |
| 2 | physical | `{"factor":140,"stage":137}` | `1/1 * e + -1/1 * a` |
| 3 | physical | `{"factor":27,"stage":137}` | `1/1 * q + -1/1 * a + -1/1 * e * p + 1/1 * a * p + -93/1000` |
| 4 | physical | `{"factor":44,"stage":137}` | `1/1 * p * k + -1/1 * a * p + -1/1 * q * j + 1/1 * a * j + -279/1000` |
| 5 | physical | `{"factor":46,"stage":137}` | `1/1 * u * k + -1/1 * a * u + -1/1 * v * j + 1/1 * a * j + -93/1000` |
| 6 | physical | `{"factor":76,"stage":137}` | `1/1 * p * v + -1/1 * b * v + -1/1 * q * u + 1/1 * b * q + -93/1000` |
| 7 | physical | `{"factor":78,"stage":137}` | `1/1 * p * k + -1/1 * b * k + -1/1 * q * j + 1/1 * b * q + -93/1000` |
| 8 | coordinate | `{"box":435,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 9 | coordinate | `{"box":435,"direction":"hi","value":"278031/1000000","variable":"b"}` | `278031/1000000 + -1 * b` |
| 10 | coordinate | `{"box":435,"direction":"hi","value":"879577/1000000","variable":"j"}` | `879577/1000000 + -1 * j` |
| 11 | coordinate | `{"box":435,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 12 | coordinate | `{"box":435,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 13 | coordinate | `{"box":435,"direction":"hi","value":"376333/1000000","variable":"p"}` | `376333/1000000 + -1 * p` |
| 14 | coordinate | `{"box":435,"direction":"hi","value":"84083/200000","variable":"q"}` | `84083/200000 + -1 * q` |
| 15 | coordinate | `{"box":435,"direction":"lo","value":"107303/1000000","variable":"a"}` | `-107303/1000000 + 1 * a` |
| 16 | coordinate | `{"box":435,"direction":"lo","value":"52089/500000","variable":"b"}` | `-52089/500000 + 1 * b` |
| 17 | coordinate | `{"box":435,"direction":"lo","value":"111823/200000","variable":"j"}` | `-111823/200000 + 1 * j` |
| 18 | coordinate | `{"box":435,"direction":"lo","value":"800153/1000000","variable":"k"}` | `-800153/1000000 + 1 * k` |
| 19 | coordinate | `{"box":435,"direction":"lo","value":"107303/1000000","variable":"e"}` | `-107303/1000000 + 1 * e` |
| 20 | coordinate | `{"box":435,"direction":"lo","value":"53537/200000","variable":"p"}` | `-53537/200000 + 1 * p` |
| 21 | coordinate | `{"box":435,"direction":"lo","value":"200303/1000000","variable":"q"}` | `-200303/1000000 + 1 * q` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 72401000000 | 0 |
| 1 | 63209000000 | 3 |
| 2 | 63209000000 | 4 |
| 3 | 72401000000 | 5 |
| 4 | 72401000000 | 6 |
| 5 | 14063000000 | 7 |
| 6 | 72401000000 | 1 |
| 7 | 23787000000 | 2 |
| 8 | 72401000000 | 15, 16 |
| 9 | 20502000000 | 14, 16 |
| 10 | 65962000000 | 9, 21 |
| 11 | 14063000000 | 9, 11 |
| 12 | 58408000000 | 10, 15 |
| 13 | 77202000000 | 8, 17 |
| 14 | 63209000000 | 12, 13 |
| 15 | 24715000000 | 11, 20 |
| 16 | 149673000000 | 17, 21 |
| 17 | 477898 | 14 |
| 18 | 20847 | 15 |
| 19 | 124958000000 | 13, 18 |
| 20 | 99985799574 | 13 |
| 21 | 49731703836 | 11 |
| 22 | 559115 | 21 |
| 23 | 310145 | 17 |
| 24 | 559115 | 8 |
| 25 | 307150 | 10 |
| 26 | 632597 | 19 |
| 27 | 109687 | 16 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -3132527759155003/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -3132527759155003/1000000 | 1 | -3132527759155003/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 435 | -3132527759155003/1000000 |

## Stage 436

| Property | Value |
| --- | --- |
| Scope | root/AFQ-/AFP-/APR+/BFP-/FPQ+/BPQ+/AEP+/AQR-/PQS-/BPR-/BPS+/AQS+ |
| Packet | coordinate:root/HEQ+/CFQ+/AFQ-/AFP-/APR+/BFP-/FPQ+/BPQ+/AEP+/AQR-/PQS-/BPR-/BPS+/AQS+:LLLLLHLH |
| Index | 0 |
| Context | 67 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 434 |
| Coordinate cut | p high 376333/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 107303/1000000 | 6143/20000 | 107303/1000000 | 6143/20000 |
| b | 52089/500000 | 278031/1000000 | 52089/500000 | 278031/1000000 |
| c | 199257/250000 | 3034/3125 | 199257/250000 | 3034/3125 |
| e | 107303/1000000 | 391/1000 | 107303/1000000 | 391/1000 |
| f | 107303/1000000 | 42363/100000 | 107303/1000000 | 42363/100000 |
| h | 27913/50000 | 112813/125000 | 27913/50000 | 112813/125000 |
| p | 376333/1000000 | 572761/1000000 | 376333/1000000 | 572761/1000000 |
| q | 200303/1000000 | 84083/200000 | 200303/1000000 | 84083/200000 |
| u | 764/3125 | 22097/40000 | 764/3125 | 22097/40000 |
| v | 428331/1000000 | 176317/250000 | 428331/1000000 | 176317/250000 |
| r | 99817/125000 | 1 | 99817/125000 | 1 |
| w | 96537/200000 | 385247/500000 | 96537/200000 | 385247/500000 |
| j | 111823/200000 | 879577/1000000 | 111823/200000 | 879577/1000000 |
| k | 800153/1000000 | 1 | 800153/1000000 | 1 |

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


## Stage 437

| Property | Value |
| --- | --- |
| Scope | root/AFQ-/AFP-/APR+/BFP-/FPQ+/BPQ+/AEP+/AQR-/PQS-/BPR-/BPS+/AQS+ |
| Packet | coordinate:root/HEQ+/CFQ+/AFQ-/AFP-/APR+/BFP-/FPQ+/BPQ+/AEP+/AQR-/PQS-/BPR-/BPS+/AQS+:LLLLLHLHL |
| Index | 0 |
| Context | 67 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 436 |
| Coordinate cut | h low 390367/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 107303/1000000 | 6143/20000 | 107303/1000000 | 6143/20000 |
| b | 52089/500000 | 278031/1000000 | 52089/500000 | 278031/1000000 |
| c | 199257/250000 | 3034/3125 | 199257/250000 | 3034/3125 |
| e | 107303/1000000 | 391/1000 | 107303/1000000 | 391/1000 |
| f | 107303/1000000 | 42363/100000 | 107303/1000000 | 42363/100000 |
| h | 27913/50000 | 390367/500000 | 27913/50000 | 390367/500000 |
| p | 376333/1000000 | 572761/1000000 | 376333/1000000 | 572761/1000000 |
| q | 200303/1000000 | 84083/200000 | 200303/1000000 | 84083/200000 |
| u | 764/3125 | 22097/40000 | 764/3125 | 22097/40000 |
| v | 428331/1000000 | 176317/250000 | 428331/1000000 | 176317/250000 |
| r | 99817/125000 | 1 | 99817/125000 | 1 |
| w | 96537/200000 | 385247/500000 | 96537/200000 | 385247/500000 |
| j | 111823/200000 | 879577/1000000 | 111823/200000 | 879577/1000000 |
| k | 800153/1000000 | 1 | 800153/1000000 | 1 |

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


## Stage 438

| Property | Value |
| --- | --- |
| Scope | root/AFQ-/AFP-/APR+/BFP-/FPQ+/BPQ+/AEP+/AQR-/PQS-/BPR-/BPS+/AQS+ |
| Packet | coordinate:root/HEQ+/CFQ+/AFQ-/AFP-/APR+/BFP-/FPQ+/BPQ+/AEP+/AQR-/PQS-/BPR-/BPS+/AQS+:LLLLLHLHLL |
| Index | 0 |
| Context | 67 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 437 |
| Coordinate cut | u low 380167/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 107303/1000000 | 6143/20000 | 107303/1000000 | 6143/20000 |
| b | 52089/500000 | 278031/1000000 | 52089/500000 | 278031/1000000 |
| c | 199257/250000 | 3034/3125 | 199257/250000 | 3034/3125 |
| e | 107303/1000000 | 391/1000 | 107303/1000000 | 391/1000 |
| f | 107303/1000000 | 42363/100000 | 107303/1000000 | 42363/100000 |
| h | 27913/50000 | 390367/500000 | 27913/50000 | 390367/500000 |
| p | 376333/1000000 | 572761/1000000 | 376333/1000000 | 572761/1000000 |
| q | 200303/1000000 | 84083/200000 | 200303/1000000 | 84083/200000 |
| u | 764/3125 | 380167/1000000 | 764/3125 | 380167/1000000 |
| v | 428331/1000000 | 176317/250000 | 428331/1000000 | 176317/250000 |
| r | 99817/125000 | 1 | 99817/125000 | 1 |
| w | 96537/200000 | 385247/500000 | 96537/200000 | 385247/500000 |
| j | 111823/200000 | 879577/1000000 | 111823/200000 | 879577/1000000 |
| k | 800153/1000000 | 1 | 800153/1000000 | 1 |

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
| 0 | physical | `{"factor":10,"stage":137}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 1 | physical | `{"factor":12,"stage":137}` | `1/1 * b * w + -1/1 * a * b + 1/1 * a * r + -279/1000` |
| 2 | physical | `{"factor":124,"stage":137}` | `1/1 * p * v + -1/1 * p + -1/1 * f * v + -1/1 * q * u + 1/1 * f * q + 1/1 * u + -93/1000` |
| 3 | physical | `{"factor":136,"stage":137}` | `-1/1 * u * k + 1/1 * q * u + 1/1 * p * k + 1/1 * v * j + -1/1 * p * v + -1/1 * q * j + -93/1000` |
| 4 | physical | `{"factor":140,"stage":137}` | `1/1 * e + -1/1 * a` |
| 5 | physical | `{"factor":142,"stage":137}` | `1/1 * f + -1/1 * b` |
| 6 | physical | `{"factor":27,"stage":137}` | `1/1 * q + -1/1 * a + -1/1 * e * p + 1/1 * a * p + -93/1000` |
| 7 | physical | `{"factor":46,"stage":137}` | `1/1 * u * k + -1/1 * a * u + -1/1 * v * j + 1/1 * a * j + -93/1000` |
| 8 | physical | `{"factor":49,"stage":137}` | `1/1 * c + -1/1 * b + -13857/20000` |
| 9 | physical | `{"factor":76,"stage":137}` | `1/1 * p * v + -1/1 * b * v + -1/1 * q * u + 1/1 * b * q + -93/1000` |
| 10 | physical | `{"factor":77,"stage":137}` | `-1/1 * p * w + 1/1 * b * w + 1/1 * q * r + -1/1 * b * q + -93/1000` |
| 11 | physical | `{"factor":86,"stage":137}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 12 | coordinate | `{"box":438,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 13 | coordinate | `{"box":438,"direction":"hi","value":"278031/1000000","variable":"b"}` | `278031/1000000 + -1 * b` |
| 14 | coordinate | `{"box":438,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 15 | coordinate | `{"box":438,"direction":"hi","value":"385247/500000","variable":"w"}` | `385247/500000 + -1 * w` |
| 16 | coordinate | `{"box":438,"direction":"hi","value":"879577/1000000","variable":"j"}` | `879577/1000000 + -1 * j` |
| 17 | coordinate | `{"box":438,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 18 | coordinate | `{"box":438,"direction":"hi","value":"3034/3125","variable":"c"}` | `3034/3125 + -1 * c` |
| 19 | coordinate | `{"box":438,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 20 | coordinate | `{"box":438,"direction":"hi","value":"42363/100000","variable":"f"}` | `42363/100000 + -1 * f` |
| 21 | coordinate | `{"box":438,"direction":"hi","value":"84083/200000","variable":"q"}` | `84083/200000 + -1 * q` |
| 22 | coordinate | `{"box":438,"direction":"hi","value":"380167/1000000","variable":"u"}` | `380167/1000000 + -1 * u` |
| 23 | coordinate | `{"box":438,"direction":"hi","value":"176317/250000","variable":"v"}` | `176317/250000 + -1 * v` |
| 24 | coordinate | `{"box":438,"direction":"lo","value":"107303/1000000","variable":"a"}` | `-107303/1000000 + 1 * a` |
| 25 | coordinate | `{"box":438,"direction":"lo","value":"52089/500000","variable":"b"}` | `-52089/500000 + 1 * b` |
| 26 | coordinate | `{"box":438,"direction":"lo","value":"96537/200000","variable":"w"}` | `-96537/200000 + 1 * w` |
| 27 | coordinate | `{"box":438,"direction":"lo","value":"111823/200000","variable":"j"}` | `-111823/200000 + 1 * j` |
| 28 | coordinate | `{"box":438,"direction":"lo","value":"199257/250000","variable":"c"}` | `-199257/250000 + 1 * c` |
| 29 | coordinate | `{"box":438,"direction":"lo","value":"107303/1000000","variable":"e"}` | `-107303/1000000 + 1 * e` |
| 30 | coordinate | `{"box":438,"direction":"lo","value":"107303/1000000","variable":"f"}` | `-107303/1000000 + 1 * f` |
| 31 | coordinate | `{"box":438,"direction":"lo","value":"376333/1000000","variable":"p"}` | `-376333/1000000 + 1 * p` |
| 32 | coordinate | `{"box":438,"direction":"lo","value":"200303/1000000","variable":"q"}` | `-200303/1000000 + 1 * q` |
| 33 | coordinate | `{"box":438,"direction":"lo","value":"428331/1000000","variable":"v"}` | `-428331/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 1709000000 | 8 |
| 1 | 679000000 | 0 |
| 2 | 5980000000 | 1 |
| 3 | 31697000000 | 6 |
| 4 | 75049000000 | 7 |
| 5 | 5006000000 | 9 |
| 6 | 5685000000 | 10 |
| 7 | 4553000000 | 11 |
| 8 | 99918000000 | 2 |
| 9 | 75049000000 | 3 |
| 10 | 12061000000 | 4 |
| 11 | 4420000000 | 5 |
| 12 | 6659000000 | 24, 25 |
| 13 | 32376000000 | 12, 31 |
| 14 | 5006000000 | 25, 33 |
| 15 | 75049000000 | 12, 22 |
| 16 | 11665000000 | 15, 25 |
| 17 | 5980000000 | 14, 24 |
| 18 | 40124000000 | 16, 24 |
| 19 | 34925000000 | 12, 27 |
| 20 | 4553000000 | 18, 29 |
| 21 | 4553000000 | 26, 28 |
| 22 | 31697000000 | 29, 31 |
| 23 | 4553000000 | 14, 19 |
| 24 | 83432000000 | 21, 30 |
| 25 | 16486000000 | 20, 32 |
| 26 | 99918000000 | 30, 33 |
| 27 | 29875000000 | 23, 31 |
| 28 | 29875000000 | 21, 22 |
| 29 | 5685000000 | 26, 31 |
| 30 | 5685000000 | 14, 32 |
| 31 | 75049000000 | 17, 31 |
| 32 | 75049000000 | 27, 32 |
| 33 | 114246 | 28 |
| 34 | 56847 | 13 |
| 35 | 42684 | 32 |
| 36 | 37469 | 24 |
| 37 | 559115 | 12 |
| 38 | 307150 | 16 |
| 39 | 85219 | 26 |
| 40 | 77516 | 31 |
| 41 | 64306801525 | 22 |
| 42 | 210461 | 29 |
| 43 | 282680 | 20 |
| 44 | 67847 | 33 |
| 45 | 171495 | 14 |
| 46 | 207675 | 27 |
| 47 | 28243415317 | 17 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -3217224755673911/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -3217224755673911/1000000 | 1 | -3217224755673911/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 438 | -3217224755673911/1000000 |

## Stage 439

| Property | Value |
| --- | --- |
| Scope | root/AFQ-/AFP-/APR+/BFP-/FPQ+/BPQ+/AEP+/AQR-/PQS-/BPR-/BPS+/AQS+ |
| Packet | coordinate:root/HEQ+/CFQ+/AFQ-/AFP-/APR+/BFP-/FPQ+/BPQ+/AEP+/AQR-/PQS-/BPR-/BPS+/AQS+:LLLLLHLHLH |
| Index | 0 |
| Context | 67 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 437 |
| Coordinate cut | u high 380167/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 107303/1000000 | 6143/20000 | 107303/1000000 | 6143/20000 |
| b | 52089/500000 | 278031/1000000 | 52089/500000 | 278031/1000000 |
| c | 199257/250000 | 3034/3125 | 199257/250000 | 3034/3125 |
| e | 107303/1000000 | 391/1000 | 107303/1000000 | 391/1000 |
| f | 107303/1000000 | 42363/100000 | 107303/1000000 | 42363/100000 |
| h | 27913/50000 | 390367/500000 | 27913/50000 | 390367/500000 |
| p | 376333/1000000 | 572761/1000000 | 376333/1000000 | 572761/1000000 |
| q | 200303/1000000 | 84083/200000 | 200303/1000000 | 84083/200000 |
| u | 380167/1000000 | 22097/40000 | 380167/1000000 | 22097/40000 |
| v | 428331/1000000 | 176317/250000 | 428331/1000000 | 176317/250000 |
| r | 99817/125000 | 1 | 99817/125000 | 1 |
| w | 96537/200000 | 385247/500000 | 96537/200000 | 385247/500000 |
| j | 111823/200000 | 879577/1000000 | 111823/200000 | 879577/1000000 |
| k | 800153/1000000 | 1 | 800153/1000000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"137:951","triangle":"CFP","value":"30881/100000"}` | `1 * f * q + -1 * c * q + -1 * p + 1 * c + -30881/100000` |
| 1 | physical | `{"factor":111,"stage":137}` | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 2 | physical | `{"factor":124,"stage":137}` | `1/1 * p * v + -1/1 * p + -1/1 * f * v + -1/1 * q * u + 1/1 * f * q + 1/1 * u + -93/1000` |
| 3 | physical | `{"factor":136,"stage":137}` | `-1/1 * u * k + 1/1 * q * u + 1/1 * p * k + 1/1 * v * j + -1/1 * p * v + -1/1 * q * j + -93/1000` |
| 4 | physical | `{"factor":140,"stage":137}` | `1/1 * e + -1/1 * a` |
| 5 | physical | `{"factor":27,"stage":137}` | `1/1 * q + -1/1 * a + -1/1 * e * p + 1/1 * a * p + -93/1000` |
| 6 | physical | `{"factor":43,"stage":137}` | `1/1 * p * w + -1/1 * a * p + -1/1 * q * r + 1/1 * a * r + -93/1000` |
| 7 | physical | `{"factor":46,"stage":137}` | `1/1 * u * k + -1/1 * a * u + -1/1 * v * j + 1/1 * a * j + -93/1000` |
| 8 | physical | `{"factor":76,"stage":137}` | `1/1 * p * v + -1/1 * b * v + -1/1 * q * u + 1/1 * b * q + -93/1000` |
| 9 | physical | `{"factor":77,"stage":137}` | `-1/1 * p * w + 1/1 * b * w + 1/1 * q * r + -1/1 * b * q + -93/1000` |
| 10 | physical | `{"factor":86,"stage":137}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 11 | physical | `{"factor":93,"stage":137}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 12 | coordinate | `{"box":439,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 13 | coordinate | `{"box":439,"direction":"hi","value":"278031/1000000","variable":"b"}` | `278031/1000000 + -1 * b` |
| 14 | coordinate | `{"box":439,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 15 | coordinate | `{"box":439,"direction":"hi","value":"385247/500000","variable":"w"}` | `385247/500000 + -1 * w` |
| 16 | coordinate | `{"box":439,"direction":"hi","value":"879577/1000000","variable":"j"}` | `879577/1000000 + -1 * j` |
| 17 | coordinate | `{"box":439,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 18 | coordinate | `{"box":439,"direction":"hi","value":"3034/3125","variable":"c"}` | `3034/3125 + -1 * c` |
| 19 | coordinate | `{"box":439,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 20 | coordinate | `{"box":439,"direction":"hi","value":"42363/100000","variable":"f"}` | `42363/100000 + -1 * f` |
| 21 | coordinate | `{"box":439,"direction":"hi","value":"390367/500000","variable":"h"}` | `390367/500000 + -1 * h` |
| 22 | coordinate | `{"box":439,"direction":"hi","value":"572761/1000000","variable":"p"}` | `572761/1000000 + -1 * p` |
| 23 | coordinate | `{"box":439,"direction":"hi","value":"84083/200000","variable":"q"}` | `84083/200000 + -1 * q` |
| 24 | coordinate | `{"box":439,"direction":"hi","value":"22097/40000","variable":"u"}` | `22097/40000 + -1 * u` |
| 25 | coordinate | `{"box":439,"direction":"hi","value":"176317/250000","variable":"v"}` | `176317/250000 + -1 * v` |
| 26 | coordinate | `{"box":439,"direction":"lo","value":"107303/1000000","variable":"a"}` | `-107303/1000000 + 1 * a` |
| 27 | coordinate | `{"box":439,"direction":"lo","value":"52089/500000","variable":"b"}` | `-52089/500000 + 1 * b` |
| 28 | coordinate | `{"box":439,"direction":"lo","value":"99817/125000","variable":"r"}` | `-99817/125000 + 1 * r` |
| 29 | coordinate | `{"box":439,"direction":"lo","value":"96537/200000","variable":"w"}` | `-96537/200000 + 1 * w` |
| 30 | coordinate | `{"box":439,"direction":"lo","value":"111823/200000","variable":"j"}` | `-111823/200000 + 1 * j` |
| 31 | coordinate | `{"box":439,"direction":"lo","value":"199257/250000","variable":"c"}` | `-199257/250000 + 1 * c` |
| 32 | coordinate | `{"box":439,"direction":"lo","value":"107303/1000000","variable":"e"}` | `-107303/1000000 + 1 * e` |
| 33 | coordinate | `{"box":439,"direction":"lo","value":"107303/1000000","variable":"f"}` | `-107303/1000000 + 1 * f` |
| 34 | coordinate | `{"box":439,"direction":"lo","value":"27913/50000","variable":"h"}` | `-27913/50000 + 1 * h` |
| 35 | coordinate | `{"box":439,"direction":"lo","value":"376333/1000000","variable":"p"}` | `-376333/1000000 + 1 * p` |
| 36 | coordinate | `{"box":439,"direction":"lo","value":"200303/1000000","variable":"q"}` | `-200303/1000000 + 1 * q` |
| 37 | coordinate | `{"box":439,"direction":"lo","value":"380167/1000000","variable":"u"}` | `-380167/1000000 + 1 * u` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 33790000000 | 5 |
| 1 | 33790000000 | 6 |
| 2 | 34667000000 | 7 |
| 3 | 58070000000 | 8 |
| 4 | 58070000000 | 9 |
| 5 | 27465000000 | 10 |
| 6 | 19104000000 | 0 |
| 7 | 19719000000 | 11 |
| 8 | 7135000000 | 1 |
| 9 | 7578000000 | 2 |
| 10 | 37739000000 | 3 |
| 11 | 14631000000 | 4 |
| 12 | 58070000000 | 13, 25 |
| 13 | 34667000000 | 26, 37 |
| 14 | 44910000000 | 15, 27 |
| 15 | 13160000000 | 13, 29 |
| 16 | 33790000000 | 14, 26 |
| 17 | 26298000000 | 16, 26 |
| 18 | 8369000000 | 12, 30 |
| 19 | 27465000000 | 18, 32 |
| 20 | 19719000000 | 21, 31 |
| 21 | 168000000 | 31, 36 |
| 22 | 38655000000 | 18, 23 |
| 23 | 27465000000 | 15, 18 |
| 24 | 33790000000 | 32, 35 |
| 25 | 7135000000 | 32, 37 |
| 26 | 7930000000 | 28, 32 |
| 27 | 19535000000 | 14, 19 |
| 28 | 26682000000 | 20, 36 |
| 29 | 7578000000 | 20, 25 |
| 30 | 19719000000 | 21, 22 |
| 31 | 7135000000 | 21, 37 |
| 32 | 27909000000 | 25, 35 |
| 33 | 27909000000 | 36, 37 |
| 34 | 24280000000 | 29, 35 |
| 35 | 24280000000 | 14, 36 |
| 36 | 37739000000 | 17, 35 |
| 37 | 37739000000 | 30, 36 |
| 38 | 3072000000 | 17, 24 |
| 39 | 3072000000 | 25, 30 |
| 40 | 493232 | 36 |
| 41 | 99992 | 12 |
| 42 | 62500 | 29 |
| 43 | 329304 | 35 |
| 44 | 39798 | 31 |
| 45 | 150667 | 25 |
| 46 | 187482 | 34 |
| 47 | 800657 | 24 |
| 48 | 45105 | 19 |
| 49 | 107380 | 13 |
| 50 | 27420 | 14 |
| 51 | 258977 | 30 |
| 52 | 36258 | 33 |
| 53 | 12505381487 | 17 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -26182547576743/62500 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -26182547576743/62500 | 1 | -26182547576743/62500 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 439 | -26182547576743/62500 |
