# BITT convex: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 830

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS-/BFP-/BPQ+/APR+/FPQ-/BPS+/BFQ-/BPR+ |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS-/BFP-/BPQ+/APR+/FPQ-/BPS+/BFQ-/BPR+:root |
| Index | 0 |
| Context | 95 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 126 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 796617/1000000 | 1 | 796617/1000000 | 1 |
| e | 169283/1000000 | 391/1000 | 169283/1000000 | 391/1000 |
| f | 272243/1000000 | 110439/200000 | 272243/1000000 | 110439/200000 |
| h | 796617/1000000 | 1 | 796617/1000000 | 1 |
| p | 54713/125000 | 42603/62500 | 54713/125000 | 42603/62500 |
| q | 28169/125000 | 441209/1000000 | 28169/125000 | 441209/1000000 |
| u | 273197/1000000 | 65409/125000 | 273197/1000000 | 65409/125000 |
| v | 28431/62500 | 46289/62500 | 28431/62500 | 46289/62500 |
| r | 317327/500000 | 1 | 317327/500000 | 1 |
| w | 235419/500000 | 421239/500000 | 235419/500000 | 421239/500000 |
| j | 31821/62500 | 431131/500000 | 31821/62500 | 431131/500000 |
| k | 587939/1000000 | 1 | 587939/1000000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"126:1654","triangle":"EHP","value":"11861/40000"}` | `-1 * q + -1 * h * p + 1 * h + 1 * e * p + -11861/40000` |
| 1 | physical | `{"factor":0,"stage":126}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 2 | physical | `{"factor":10,"stage":126}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 3 | physical | `{"factor":111,"stage":126}` | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -93/1000` |
| 4 | physical | `{"factor":124,"stage":126}` | `-1/1 * p * v + 1/1 * p + 1/1 * f * v + 1/1 * q * u + -1/1 * f * q + -1/1 * u + -93/1000` |
| 5 | physical | `{"factor":130,"stage":126}` | `1/1 * p * v + -1/1 * h * p + -1/1 * q * u + 1/1 * h * u + -93/1000` |
| 6 | physical | `{"factor":28,"stage":126}` | `1/1 * q + -1/1 * a + -1/1 * e * p + 1/1 * a * p + -93/1000` |
| 7 | physical | `{"factor":69,"stage":126}` | `-1/1 * f * v + 1/1 * b * v + 1/1 * u + -1/1 * b + -93/1000` |
| 8 | physical | `{"factor":95,"stage":126}` | `1/1 * c * v + 1/1 * h * u + -1/1 * c * h + -93/1000` |
| 9 | coordinate | `{"box":830,"direction":"hi","value":"6143/20000","variable":"b"}` | `6143/20000 + -1 * b` |
| 10 | coordinate | `{"box":830,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 11 | coordinate | `{"box":830,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 12 | coordinate | `{"box":830,"direction":"hi","value":"110439/200000","variable":"f"}` | `110439/200000 + -1 * f` |
| 13 | coordinate | `{"box":830,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 14 | coordinate | `{"box":830,"direction":"hi","value":"42603/62500","variable":"p"}` | `42603/62500 + -1 * p` |
| 15 | coordinate | `{"box":830,"direction":"hi","value":"441209/1000000","variable":"q"}` | `441209/1000000 + -1 * q` |
| 16 | coordinate | `{"box":830,"direction":"hi","value":"65409/125000","variable":"u"}` | `65409/125000 + -1 * u` |
| 17 | coordinate | `{"box":830,"direction":"hi","value":"46289/62500","variable":"v"}` | `46289/62500 + -1 * v` |
| 18 | coordinate | `{"box":830,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 19 | coordinate | `{"box":830,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 20 | coordinate | `{"box":830,"direction":"lo","value":"796617/1000000","variable":"c"}` | `-796617/1000000 + 1 * c` |
| 21 | coordinate | `{"box":830,"direction":"lo","value":"169283/1000000","variable":"e"}` | `-169283/1000000 + 1 * e` |
| 22 | coordinate | `{"box":830,"direction":"lo","value":"272243/1000000","variable":"f"}` | `-272243/1000000 + 1 * f` |
| 23 | coordinate | `{"box":830,"direction":"lo","value":"796617/1000000","variable":"h"}` | `-796617/1000000 + 1 * h` |
| 24 | coordinate | `{"box":830,"direction":"lo","value":"54713/125000","variable":"p"}` | `-54713/125000 + 1 * p` |
| 25 | coordinate | `{"box":830,"direction":"lo","value":"28169/125000","variable":"q"}` | `-28169/125000 + 1 * q` |
| 26 | coordinate | `{"box":830,"direction":"lo","value":"273197/1000000","variable":"u"}` | `-273197/1000000 + 1 * u` |
| 27 | coordinate | `{"box":830,"direction":"lo","value":"28431/62500","variable":"v"}` | `-28431/62500 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 1022000000 | 1 |
| 1 | 25408000000 | 2 |
| 2 | 48999000000 | 6 |
| 3 | 32646000000 | 7 |
| 4 | 195000000 | 8 |
| 5 | 8165000000 | 0 |
| 6 | 46332000000 | 3 |
| 7 | 110064000000 | 4 |
| 8 | 110064000000 | 5 |
| 9 | 26430000000 | 18, 19 |
| 10 | 1022000000 | 10, 18 |
| 11 | 25408000000 | 15, 19 |
| 12 | 74407000000 | 14, 18 |
| 13 | 32646000000 | 17, 19 |
| 14 | 195000000 | 10, 13 |
| 15 | 195000000 | 10, 27 |
| 16 | 40834000000 | 21, 24 |
| 17 | 20856000000 | 16, 21 |
| 18 | 25477000000 | 11, 26 |
| 19 | 61818000000 | 22, 25 |
| 20 | 48246000000 | 12, 15 |
| 21 | 77418000000 | 12, 27 |
| 22 | 36170000000 | 23, 24 |
| 23 | 82059000000 | 13, 14 |
| 24 | 63927000000 | 13, 26 |
| 25 | 205808 | 25 |
| 26 | 179074 | 18 |
| 27 | 1073248 | 16 |
| 28 | 87566 | 9 |
| 29 | 273197 | 13 |
| 30 | 715490 | 23 |
| 31 | 409992 | 17 |
| 32 | 1000000 | 21, 26 |
| 33 | 273197 | 21 |
| 34 | 169283 | 26 |
| 35 | 147743 | 24 |
| 36 | 245406 | 20 |
| 37 | 395665 | 11 |
| 38 | 240822 | 22 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -56321144971007/200000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -56321144971007/200000 | 1 | -56321144971007/200000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 830 | -56321144971007/200000 |

## Stage 831

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS-/BFP-/BPQ+/APR+/FPQ-/BPS-/AFQ+ |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS-/BFP-/BPQ+/APR+/FPQ-/BPS-/AFQ+:root |
| Index | 0 |
| Context | 98 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 129 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 15761/31250 | 103767/1000000 | 15761/31250 |
| c | 135501/250000 | 1 | 135501/250000 | 1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 21407/62500 | 58493/100000 | 21407/62500 | 58493/100000 |
| h | 796617/1000000 | 1 | 796617/1000000 | 1 |
| p | 7617/31250 | 710233/1000000 | 7617/31250 | 710233/1000000 |
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


## Stage 832

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS-/BFP-/BPQ+/APR+/FPQ-/BPS-/AFQ+ |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS-/BFP-/BPQ+/APR+/FPQ-/BPS-/AFQ+:L |
| Index | 0 |
| Context | 98 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 831 |
| Coordinate cut | p low 232229/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 15761/31250 | 103767/1000000 | 15761/31250 |
| c | 135501/250000 | 1 | 135501/250000 | 1 |
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


## Stage 833

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS-/BFP-/BPQ+/APR+/FPQ-/BPS-/AFQ+ |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS-/BFP-/BPQ+/APR+/FPQ-/BPS-/AFQ+:LL |
| Index | 0 |
| Context | 98 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 832 |
| Coordinate cut | c low 189157/250000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 15761/31250 | 103767/1000000 | 15761/31250 |
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


## Stage 834

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS-/BFP-/BPQ+/APR+/FPQ-/BPS-/AFQ+ |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS-/BFP-/BPQ+/APR+/FPQ-/BPS-/AFQ+:LLL |
| Index | 0 |
| Context | 98 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 833 |
| Coordinate cut | b low 31613/125000 |

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
