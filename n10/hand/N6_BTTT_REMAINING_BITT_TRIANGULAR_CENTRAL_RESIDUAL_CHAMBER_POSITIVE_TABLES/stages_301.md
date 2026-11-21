# BITT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 1505

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS+/BFQ-/PRS-/AQR- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS+/BFQ-/PRS-/AQR-:LHHLH |
| Index | 0 |
| Context | 298 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1493 |
| Coordinate cut | u high 438753/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 4604/15625 | 103767/1000000 | 4604/15625 |
| c | 796617/1000000 | 1 | 796617/1000000 | 1 |
| e | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| f | 103767/1000000 | 158493/400000 | 103767/1000000 | 158493/400000 |
| h | 385501/500000 | 1 | 385501/500000 | 1 |
| p | 382767/1000000 | 341509/500000 | 382767/1000000 | 341509/500000 |
| q | 196767/1000000 | 524233/1000000 | 196767/1000000 | 524233/1000000 |
| u | 438753/1000000 | 598653/1000000 | 438753/1000000 | 598653/1000000 |
| v | 534543/1000000 | 38439/50000 | 534543/1000000 | 38439/50000 |
| r | 415069/1000000 | 1 | 415069/1000000 | 1 |
| w | 809111/1000000 | 1 | 809111/1000000 | 1 |
| j | 229373/500000 | 896233/1000000 | 229373/500000 | 896233/1000000 |
| k | 216063/500000 | 896233/1000000 | 216063/500000 | 896233/1000000 |

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
| 0 | bound | `{"direction":"lo","ref":"512:2029","triangle":"EPR","value":"164243/500000"}` | `-1 * p * w + 1 * e * p + 1 * w + 1 * q * r + -1 * q + -1 * e * r + -164243/500000` |
| 1 | physical | `{"factor":111,"stage":512}` | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 2 | physical | `{"factor":124,"stage":512}` | `-1/1 * p * v + 1/1 * p + 1/1 * f * v + 1/1 * q * u + -1/1 * f * q + -1/1 * u + -93/1000` |
| 3 | physical | `{"factor":27,"stage":512}` | `1/1 * q + -1/1 * a + -1/1 * e * p + 1/1 * a * p + -93/1000` |
| 4 | physical | `{"factor":45,"stage":512}` | `-1/1 * u * w + 1/1 * a * u + 1/1 * v * r + -1/1 * a * r + -93/1000` |
| 5 | physical | `{"factor":85,"stage":512}` | `1/1 * q + -1/1 * c * q + -1/1 * e * p + 1/1 * c * e + -93/1000` |
| 6 | physical | `{"factor":87,"stage":512}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 7 | physical | `{"factor":94,"stage":512}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 8 | coordinate | `{"box":1505,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 9 | coordinate | `{"box":1505,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 10 | coordinate | `{"box":1505,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 11 | coordinate | `{"box":1505,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 12 | coordinate | `{"box":1505,"direction":"hi","value":"59/125","variable":"e"}` | `59/125 + -1 * e` |
| 13 | coordinate | `{"box":1505,"direction":"hi","value":"158493/400000","variable":"f"}` | `158493/400000 + -1 * f` |
| 14 | coordinate | `{"box":1505,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 15 | coordinate | `{"box":1505,"direction":"hi","value":"341509/500000","variable":"p"}` | `341509/500000 + -1 * p` |
| 16 | coordinate | `{"box":1505,"direction":"hi","value":"524233/1000000","variable":"q"}` | `524233/1000000 + -1 * q` |
| 17 | coordinate | `{"box":1505,"direction":"hi","value":"38439/50000","variable":"v"}` | `38439/50000 + -1 * v` |
| 18 | coordinate | `{"box":1505,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 19 | coordinate | `{"box":1505,"direction":"lo","value":"415069/1000000","variable":"r"}` | `-415069/1000000 + 1 * r` |
| 20 | coordinate | `{"box":1505,"direction":"lo","value":"809111/1000000","variable":"w"}` | `-809111/1000000 + 1 * w` |
| 21 | coordinate | `{"box":1505,"direction":"lo","value":"796617/1000000","variable":"c"}` | `-796617/1000000 + 1 * c` |
| 22 | coordinate | `{"box":1505,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 23 | coordinate | `{"box":1505,"direction":"lo","value":"385501/500000","variable":"h"}` | `-385501/500000 + 1 * h` |
| 24 | coordinate | `{"box":1505,"direction":"lo","value":"382767/1000000","variable":"p"}` | `-382767/1000000 + 1 * p` |
| 25 | coordinate | `{"box":1505,"direction":"lo","value":"196767/1000000","variable":"q"}` | `-196767/1000000 + 1 * q` |
| 26 | coordinate | `{"box":1505,"direction":"lo","value":"438753/1000000","variable":"u"}` | `-438753/1000000 + 1 * u` |
| 27 | coordinate | `{"box":1505,"direction":"lo","value":"534543/1000000","variable":"v"}` | `-534543/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 13801000000 | 3 |
| 1 | 3559000000 | 4 |
| 2 | 16062000000 | 5 |
| 3 | 16127000000 | 6 |
| 4 | 27772000000 | 7 |
| 5 | 30542000000 | 1 |
| 6 | 4927000000 | 0 |
| 7 | 118910000000 | 2 |
| 8 | 13801000000 | 15, 18 |
| 9 | 3559000000 | 8, 26 |
| 10 | 3559000000 | 18, 19 |
| 11 | 32189000000 | 11, 22 |
| 12 | 27772000000 | 11, 23 |
| 13 | 43834000000 | 21, 25 |
| 14 | 16127000000 | 10, 11 |
| 15 | 24936000000 | 22, 24 |
| 16 | 30542000000 | 22, 26 |
| 17 | 20191000000 | 19, 22 |
| 18 | 863000000 | 9, 12 |
| 19 | 118910000000 | 13, 16 |
| 20 | 118910000000 | 13, 27 |
| 21 | 27772000000 | 23, 24 |
| 22 | 30542000000 | 14, 26 |
| 23 | 118910000000 | 15, 17 |
| 24 | 118910000000 | 16, 26 |
| 25 | 4927000000 | 10, 15 |
| 26 | 4927000000 | 9, 25 |
| 27 | 3559000000 | 20, 26 |
| 28 | 3559000000 | 9, 27 |
| 29 | 203077 | 16 |
| 30 | 4290377226 | 18 |
| 31 | 248387 | 10 |
| 32 | 663805 | 27 |
| 33 | 189002 | 14 |
| 34 | 342889 | 24 |
| 35 | 30987184883 | 26 |
| 36 | 107296 | 9 |
| 37 | 338829 | 11 |
| 38 | 269783 | 12 |
| 39 | 1225962100 | 13 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -4509271331030257/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -4509271331030257/1000000 | 1 | -4509271331030257/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1505 | -4509271331030257/1000000 |

## Stage 1506

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS+/BFQ-/PRS-/AQR- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS+/BFQ-/PRS-/AQR-:LHHH |
| Index | 0 |
| Context | 298 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1492 |
| Coordinate cut | f high 158493/400000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 4604/15625 | 103767/1000000 | 4604/15625 |
| c | 796617/1000000 | 1 | 796617/1000000 | 1 |
| e | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| f | 158493/400000 | 344349/500000 | 158493/400000 | 344349/500000 |
| h | 385501/500000 | 1 | 385501/500000 | 1 |
| p | 382767/1000000 | 341509/500000 | 382767/1000000 | 341509/500000 |
| q | 196767/1000000 | 524233/1000000 | 196767/1000000 | 524233/1000000 |
| u | 196767/1000000 | 598653/1000000 | 196767/1000000 | 598653/1000000 |
| v | 534543/1000000 | 38439/50000 | 534543/1000000 | 38439/50000 |
| r | 415069/1000000 | 1 | 415069/1000000 | 1 |
| w | 809111/1000000 | 1 | 809111/1000000 | 1 |
| j | 229373/500000 | 896233/1000000 | 229373/500000 | 896233/1000000 |
| k | 216063/500000 | 896233/1000000 | 216063/500000 | 896233/1000000 |

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


## Stage 1507

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS+/BFQ-/PRS-/AQR- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS+/BFQ-/PRS-/AQR-:LHHHL |
| Index | 0 |
| Context | 298 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1506 |
| Coordinate cut | r low 134249/200000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 4604/15625 | 103767/1000000 | 4604/15625 |
| c | 796617/1000000 | 1 | 796617/1000000 | 1 |
| e | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| f | 158493/400000 | 344349/500000 | 158493/400000 | 344349/500000 |
| h | 385501/500000 | 1 | 385501/500000 | 1 |
| p | 382767/1000000 | 341509/500000 | 382767/1000000 | 341509/500000 |
| q | 196767/1000000 | 524233/1000000 | 196767/1000000 | 524233/1000000 |
| u | 196767/1000000 | 598653/1000000 | 196767/1000000 | 598653/1000000 |
| v | 534543/1000000 | 38439/50000 | 534543/1000000 | 38439/50000 |
| r | 415069/1000000 | 134249/200000 | 415069/1000000 | 134249/200000 |
| w | 809111/1000000 | 1 | 809111/1000000 | 1 |
| j | 229373/500000 | 896233/1000000 | 229373/500000 | 896233/1000000 |
| k | 216063/500000 | 896233/1000000 | 216063/500000 | 896233/1000000 |

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
| 0 | bound | `{"direction":"lo","ref":"512:1900","triangle":"BFR","value":"76219/250000"}` | `-1 * f * w + 1 * b * w + 1 * r + -1 * b + -76219/250000` |
| 1 | physical | `{"factor":108,"stage":512}` | `-1/1 * f * w + 1/1 * e * f + 1/1 * w + 1/1 * r + -1279/1000 + -1/1 * e * r` |
| 2 | coordinate | `{"box":1507,"direction":"hi","value":"134249/200000","variable":"r"}` | `134249/200000 + -1 * r` |
| 3 | coordinate | `{"box":1507,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 4 | coordinate | `{"box":1507,"direction":"hi","value":"59/125","variable":"e"}` | `59/125 + -1 * e` |
| 5 | coordinate | `{"box":1507,"direction":"hi","value":"344349/500000","variable":"f"}` | `344349/500000 + -1 * f` |
| 6 | coordinate | `{"box":1507,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 7 | coordinate | `{"box":1507,"direction":"lo","value":"809111/1000000","variable":"w"}` | `-809111/1000000 + 1 * w` |
| 8 | coordinate | `{"box":1507,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 9 | coordinate | `{"box":1507,"direction":"lo","value":"158493/400000","variable":"f"}` | `-158493/400000 + 1 * f` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 202527000000 | 0 |
| 1 | 98104000000 | 1 |
| 2 | 202527000000 | 3, 6 |
| 3 | 98104000000 | 4, 9 |
| 4 | 98104000000 | 2, 4 |
| 5 | 300632000000 | 7, 9 |
| 6 | 1000000 | 5, 7 |
| 7 | 809111 | 5 |
| 8 | 688698 | 3 |
| 9 | 254325912000 | 2 |
| 10 | 549731 | 7 |
| 11 | 26979826300 | 8 |
| 12 | 196939570152 | 9 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -9238572997071241/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -9238572997071241/1000000 | 1 | -9238572997071241/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1507 | -9238572997071241/1000000 |

## Stage 1508

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS+/BFQ-/PRS-/AQR- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS+/BFQ-/PRS-/AQR-:LHHHH |
| Index | 0 |
| Context | 298 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1506 |
| Coordinate cut | r high 134249/200000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 4604/15625 | 103767/1000000 | 4604/15625 |
| c | 796617/1000000 | 1 | 796617/1000000 | 1 |
| e | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| f | 158493/400000 | 344349/500000 | 158493/400000 | 344349/500000 |
| h | 385501/500000 | 1 | 385501/500000 | 1 |
| p | 382767/1000000 | 341509/500000 | 382767/1000000 | 341509/500000 |
| q | 196767/1000000 | 524233/1000000 | 196767/1000000 | 524233/1000000 |
| u | 196767/1000000 | 598653/1000000 | 196767/1000000 | 598653/1000000 |
| v | 534543/1000000 | 38439/50000 | 534543/1000000 | 38439/50000 |
| r | 134249/200000 | 1 | 134249/200000 | 1 |
| w | 809111/1000000 | 1 | 809111/1000000 | 1 |
| j | 229373/500000 | 896233/1000000 | 229373/500000 | 896233/1000000 |
| k | 216063/500000 | 896233/1000000 | 216063/500000 | 896233/1000000 |

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


## Stage 1509

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS+/BFQ-/PRS-/AQR- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS+/BFQ-/PRS-/AQR-:LHHHHL |
| Index | 0 |
| Context | 298 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1508 |
| Coordinate cut | j low 65491/100000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 4604/15625 | 103767/1000000 | 4604/15625 |
| c | 796617/1000000 | 1 | 796617/1000000 | 1 |
| e | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| f | 158493/400000 | 344349/500000 | 158493/400000 | 344349/500000 |
| h | 385501/500000 | 1 | 385501/500000 | 1 |
| p | 382767/1000000 | 341509/500000 | 382767/1000000 | 341509/500000 |
| q | 196767/1000000 | 524233/1000000 | 196767/1000000 | 524233/1000000 |
| u | 196767/1000000 | 598653/1000000 | 196767/1000000 | 598653/1000000 |
| v | 534543/1000000 | 38439/50000 | 534543/1000000 | 38439/50000 |
| r | 134249/200000 | 1 | 134249/200000 | 1 |
| w | 809111/1000000 | 1 | 809111/1000000 | 1 |
| j | 229373/500000 | 65491/100000 | 229373/500000 | 65491/100000 |
| k | 216063/500000 | 896233/1000000 | 216063/500000 | 896233/1000000 |

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
| 0 | bound | `{"direction":"lo","ref":"512:1990","triangle":"BFS","value":"373993/1000000"}` | `-1 * f * k + 1 * b * k + 1 * j + -1 * b + -373993/1000000` |
| 1 | physical | `{"factor":109,"stage":512}` | `-1/1 * f * k + 1/1 * e * f + 1/1 * k + 1/1 * j + -1093/1000 + -1/1 * e * j` |
| 2 | coordinate | `{"box":1509,"direction":"hi","value":"65491/100000","variable":"j"}` | `65491/100000 + -1 * j` |
| 3 | coordinate | `{"box":1509,"direction":"hi","value":"896233/1000000","variable":"k"}` | `896233/1000000 + -1 * k` |
| 4 | coordinate | `{"box":1509,"direction":"hi","value":"59/125","variable":"e"}` | `59/125 + -1 * e` |
| 5 | coordinate | `{"box":1509,"direction":"hi","value":"344349/500000","variable":"f"}` | `344349/500000 + -1 * f` |
| 6 | coordinate | `{"box":1509,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 7 | coordinate | `{"box":1509,"direction":"lo","value":"229373/500000","variable":"j"}` | `-229373/500000 + 1 * j` |
| 8 | coordinate | `{"box":1509,"direction":"lo","value":"216063/500000","variable":"k"}` | `-216063/500000 + 1 * k` |
| 9 | coordinate | `{"box":1509,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 10 | coordinate | `{"box":1509,"direction":"lo","value":"158493/400000","variable":"f"}` | `-158493/400000 + 1 * f` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 405054000000 | 0 |
| 1 | 196208000000 | 1 |
| 2 | 405054000000 | 3, 6 |
| 3 | 41938000000 | 5, 9 |
| 4 | 154270000000 | 4, 10 |
| 5 | 196208000000 | 7, 9 |
| 6 | 601264000000 | 8, 10 |
| 7 | 2000000 | 5, 8 |
| 8 | 864252 | 5 |
| 9 | 1377396 | 3 |
| 10 | 580902084464 | 2 |
| 11 | 42031238418 | 6 |
| 12 | 1099462 | 8 |
| 13 | 182654586818 | 10 |
| 14 | 230669 | 9 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -2433417413678823/125000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -2433417413678823/125000 | 1 | -2433417413678823/125000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1509 | -2433417413678823/125000 |
