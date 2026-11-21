# BITT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 1235

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ+/BPR+/BPS+/PRS-/HQS+/EHQ- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ+/BPR+/BPS+/PRS-/HQS+/EHQ-:HHHHHHHLLHH |
| Index | 0 |
| Context | 263 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1227 |
| Coordinate cut | q high 193643/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 270627/1000000 | 103767/1000000 | 270627/1000000 |
| c | 662881/1000000 | 1 | 662881/1000000 | 1 |
| e | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| f | 195079/500000 | 344349/500000 | 195079/500000 | 344349/500000 |
| h | 651469/1000000 | 1 | 651469/1000000 | 1 |
| p | 397223/1000000 | 651139/1000000 | 397223/1000000 | 651139/1000000 |
| q | 193643/500000 | 288239/500000 | 193643/500000 | 288239/500000 |
| u | 103767/1000000 | 199751/500000 | 103767/1000000 | 199751/500000 |
| v | 55147/100000 | 440299/500000 | 55147/100000 | 440299/500000 |
| r | 361353/500000 | 1 | 361353/500000 | 1 |
| w | 41657/50000 | 1 | 41657/50000 | 1 |
| j | 343063/500000 | 896233/1000000 | 343063/500000 | 896233/1000000 |
| k | 544649/1000000 | 786861/1000000 | 544649/1000000 | 786861/1000000 |

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
| 0 | bound | `{"direction":"lo","ref":"477:2581","triangle":"HPS","value":"326251/1000000"}` | `1 * p * k + -1 * h * p + -1 * q * j + 1 * h * j + -326251/1000000` |
| 1 | bound | `{"direction":"lo","ref":"477:2652","triangle":"HPR","value":"451359/1000000"}` | `1 * p * w + -1 * h * p + -1 * q * r + 1 * h * r + -451359/1000000` |
| 2 | bound | `{"direction":"lo","ref":"477:2717","triangle":"BRS","value":"31913/250000"}` | `-1 * r * k + 1 * b * k + 1 * w * j + -1 * b * w + -31913/250000` |
| 3 | physical | `{"factor":109,"stage":477}` | `1/1 * w + 1/1 * h * r + -1/1 * h + -1/1 * e * r + -13857/20000` |
| 4 | physical | `{"factor":119,"stage":477}` | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 5 | physical | `{"factor":135,"stage":477}` | `-1/1 * r * k + 1/1 * q * r + 1/1 * p * k + 1/1 * w * j + -1/1 * p * w + -1/1 * q * j + -93/1000` |
| 6 | physical | `{"factor":75,"stage":477}` | `1/1 * p * k + -1/1 * b * k + -1/1 * q * j + 1/1 * b * q + -93/1000` |
| 7 | physical | `{"factor":84,"stage":477}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 8 | physical | `{"factor":91,"stage":477}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 9 | coordinate | `{"box":1235,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 10 | coordinate | `{"box":1235,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 11 | coordinate | `{"box":1235,"direction":"hi","value":"896233/1000000","variable":"j"}` | `896233/1000000 + -1 * j` |
| 12 | coordinate | `{"box":1235,"direction":"hi","value":"786861/1000000","variable":"k"}` | `786861/1000000 + -1 * k` |
| 13 | coordinate | `{"box":1235,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 14 | coordinate | `{"box":1235,"direction":"hi","value":"344349/500000","variable":"f"}` | `344349/500000 + -1 * f` |
| 15 | coordinate | `{"box":1235,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 16 | coordinate | `{"box":1235,"direction":"hi","value":"651139/1000000","variable":"p"}` | `651139/1000000 + -1 * p` |
| 17 | coordinate | `{"box":1235,"direction":"hi","value":"288239/500000","variable":"q"}` | `288239/500000 + -1 * q` |
| 18 | coordinate | `{"box":1235,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 19 | coordinate | `{"box":1235,"direction":"lo","value":"361353/500000","variable":"r"}` | `-361353/500000 + 1 * r` |
| 20 | coordinate | `{"box":1235,"direction":"lo","value":"41657/50000","variable":"w"}` | `-41657/50000 + 1 * w` |
| 21 | coordinate | `{"box":1235,"direction":"lo","value":"343063/500000","variable":"j"}` | `-343063/500000 + 1 * j` |
| 22 | coordinate | `{"box":1235,"direction":"lo","value":"544649/1000000","variable":"k"}` | `-544649/1000000 + 1 * k` |
| 23 | coordinate | `{"box":1235,"direction":"lo","value":"662881/1000000","variable":"c"}` | `-662881/1000000 + 1 * c` |
| 24 | coordinate | `{"box":1235,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 25 | coordinate | `{"box":1235,"direction":"lo","value":"195079/500000","variable":"f"}` | `-195079/500000 + 1 * f` |
| 26 | coordinate | `{"box":1235,"direction":"lo","value":"651469/1000000","variable":"h"}` | `-651469/1000000 + 1 * h` |
| 27 | coordinate | `{"box":1235,"direction":"lo","value":"397223/1000000","variable":"p"}` | `-397223/1000000 + 1 * p` |
| 28 | coordinate | `{"box":1235,"direction":"lo","value":"193643/500000","variable":"q"}` | `-193643/500000 + 1 * q` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 74017000000 | 6 |
| 1 | 15413000000 | 2 |
| 2 | 15809000000 | 7 |
| 3 | 53631000000 | 8 |
| 4 | 6066000000 | 3 |
| 5 | 42693000000 | 4 |
| 6 | 20930000000 | 1 |
| 7 | 699000000 | 0 |
| 8 | 20930000000 | 5 |
| 9 | 74017000000 | 17, 18 |
| 10 | 15413000000 | 18, 20 |
| 11 | 58604000000 | 18, 22 |
| 12 | 15809000000 | 13, 24 |
| 13 | 53631000000 | 13, 26 |
| 14 | 53631000000 | 23, 28 |
| 15 | 15809000000 | 10, 13 |
| 16 | 21875000000 | 19, 24 |
| 17 | 42693000000 | 15, 25 |
| 18 | 42693000000 | 10, 14 |
| 19 | 75260000000 | 15, 16 |
| 20 | 15697000000 | 9, 15 |
| 21 | 699000000 | 15, 21 |
| 22 | 95646000000 | 12, 27 |
| 23 | 95646000000 | 21, 28 |
| 24 | 15983000000 | 19, 22 |
| 25 | 20361000000 | 9, 12 |
| 26 | 36344000000 | 10, 21 |
| 27 | 1000000 | 9, 22 |
| 28 | 544649 | 9 |
| 29 | 1000000 | 12 |
| 30 | 1000000 | 20, 21 |
| 31 | 686126 | 20 |
| 32 | 833140 | 21 |
| 33 | 618859 | 10 |
| 34 | 103572 | 26 |
| 35 | 304913 | 19 |
| 36 | 93495656268 | 28 |
| 37 | 2090624690 | 18 |
| 38 | 380208 | 22 |
| 39 | 149024 | 23 |
| 40 | 193750 | 24 |
| 41 | 107206 | 16 |
| 42 | 643244 | 11 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -3404824525443609/500000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -3404824525443609/500000 | 1 | -3404824525443609/500000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1235 | -3404824525443609/500000 |

## Stage 1236

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ+/BPR+/BPS+/PRS-/HQS+/EHQ- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ+/BPR+/BPS+/PRS-/HQS+/EHQ-:HHHHHHHLH |
| Index | 0 |
| Context | 263 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1224 |
| Coordinate cut | k high 786861/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 270627/1000000 | 103767/1000000 | 270627/1000000 |
| c | 662881/1000000 | 1 | 662881/1000000 | 1 |
| e | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| f | 195079/500000 | 344349/500000 | 195079/500000 | 344349/500000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 397223/1000000 | 651139/1000000 | 397223/1000000 | 651139/1000000 |
| q | 196767/1000000 | 288239/500000 | 196767/1000000 | 288239/500000 |
| u | 103767/1000000 | 199751/500000 | 103767/1000000 | 199751/500000 |
| v | 55147/100000 | 440299/500000 | 55147/100000 | 440299/500000 |
| r | 361353/500000 | 1 | 361353/500000 | 1 |
| w | 41657/50000 | 1 | 41657/50000 | 1 |
| j | 343063/500000 | 896233/1000000 | 343063/500000 | 896233/1000000 |
| k | 786861/1000000 | 864963/1000000 | 786861/1000000 | 864963/1000000 |

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
| 0 | bound | `{"direction":"lo","ref":"477:2655","triangle":"AHQ","value":"65747/500000"}` | `1 * h * u + -1 * a * u + -65747/500000` |
| 1 | bound | `{"direction":"lo","ref":"477:2717","triangle":"BRS","value":"31913/250000"}` | `-1 * r * k + 1 * b * k + 1 * w * j + -1 * b * w + -31913/250000` |
| 2 | bound | `{"direction":"lo","ref":"477:2718","triangle":"HRS","value":"178433/1000000"}` | `-1 * r * k + 1 * h * r + 1 * w * j + -1 * h * j + -178433/1000000` |
| 3 | physical | `{"factor":0,"stage":477}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 4 | physical | `{"factor":108,"stage":477}` | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 5 | physical | `{"factor":116,"stage":477}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 6 | physical | `{"factor":119,"stage":477}` | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 7 | physical | `{"factor":126,"stage":477}` | `-1/1 * r * k + 1/1 * r + 1/1 * f * k + 1/1 * w * j + -1/1 * f * w + -1/1 * j + -93/1000` |
| 8 | physical | `{"factor":131,"stage":477}` | `1/1 * u * k + -1/1 * h * u + -1/1 * v * j + 1/1 * h * j + -93/1000` |
| 9 | physical | `{"factor":34,"stage":477}` | `1/1 * f * v + -1/1 * a * f + -1/1 * u + 1/1 * a * u + -93/1000` |
| 10 | physical | `{"factor":7,"stage":477}` | `1/1 * b * h + -1/1 * a * b + -93/1000` |
| 11 | physical | `{"factor":85,"stage":477}` | `1/1 * k + -1/1 * c * k + -1/1 * e * j + 1/1 * c * e + -93/1000` |
| 12 | coordinate | `{"box":1236,"direction":"hi","value":"270627/1000000","variable":"b"}` | `270627/1000000 + -1 * b` |
| 13 | coordinate | `{"box":1236,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 14 | coordinate | `{"box":1236,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 15 | coordinate | `{"box":1236,"direction":"hi","value":"896233/1000000","variable":"j"}` | `896233/1000000 + -1 * j` |
| 16 | coordinate | `{"box":1236,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 17 | coordinate | `{"box":1236,"direction":"hi","value":"6143/20000","variable":"e"}` | `6143/20000 + -1 * e` |
| 18 | coordinate | `{"box":1236,"direction":"hi","value":"344349/500000","variable":"f"}` | `344349/500000 + -1 * f` |
| 19 | coordinate | `{"box":1236,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 20 | coordinate | `{"box":1236,"direction":"hi","value":"199751/500000","variable":"u"}` | `199751/500000 + -1 * u` |
| 21 | coordinate | `{"box":1236,"direction":"hi","value":"440299/500000","variable":"v"}` | `440299/500000 + -1 * v` |
| 22 | coordinate | `{"box":1236,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 23 | coordinate | `{"box":1236,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 24 | coordinate | `{"box":1236,"direction":"lo","value":"361353/500000","variable":"r"}` | `-361353/500000 + 1 * r` |
| 25 | coordinate | `{"box":1236,"direction":"lo","value":"343063/500000","variable":"j"}` | `-343063/500000 + 1 * j` |
| 26 | coordinate | `{"box":1236,"direction":"lo","value":"786861/1000000","variable":"k"}` | `-786861/1000000 + 1 * k` |
| 27 | coordinate | `{"box":1236,"direction":"lo","value":"662881/1000000","variable":"c"}` | `-662881/1000000 + 1 * c` |
| 28 | coordinate | `{"box":1236,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 29 | coordinate | `{"box":1236,"direction":"lo","value":"195079/500000","variable":"f"}` | `-195079/500000 + 1 * f` |
| 30 | coordinate | `{"box":1236,"direction":"lo","value":"135501/250000","variable":"h"}` | `-135501/250000 + 1 * h` |
| 31 | coordinate | `{"box":1236,"direction":"lo","value":"103767/1000000","variable":"u"}` | `-103767/1000000 + 1 * u` |
| 32 | coordinate | `{"box":1236,"direction":"lo","value":"55147/100000","variable":"v"}` | `-55147/100000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 824000000 | 3 |
| 1 | 25916000000 | 10 |
| 2 | 4632000000 | 9 |
| 3 | 2171000000 | 0 |
| 4 | 121594000000 | 1 |
| 5 | 125000000 | 11 |
| 6 | 5791000000 | 4 |
| 7 | 146955000000 | 5 |
| 8 | 8478000000 | 6 |
| 9 | 16883000000 | 7 |
| 10 | 8478000000 | 8 |
| 11 | 8478000000 | 2 |
| 12 | 824000000 | 16, 22 |
| 13 | 4632000000 | 22, 29 |
| 14 | 25916000000 | 19, 23 |
| 15 | 2461000000 | 20, 22 |
| 16 | 121594000000 | 12, 14 |
| 17 | 121594000000 | 12, 26 |
| 18 | 125000000 | 16, 28 |
| 19 | 125000000 | 26, 27 |
| 20 | 5791000000 | 17, 20 |
| 21 | 97237000000 | 24, 28 |
| 22 | 49718000000 | 13, 17 |
| 23 | 102026000000 | 15, 28 |
| 24 | 44804000000 | 17, 25 |
| 25 | 8478000000 | 19, 29 |
| 26 | 4632000000 | 21, 29 |
| 27 | 25361000000 | 14, 18 |
| 28 | 16883000000 | 18, 26 |
| 29 | 516000000 | 19, 20 |
| 30 | 8478000000 | 20, 26 |
| 31 | 8478000000 | 15, 21 |
| 32 | 26740000000 | 22, 23 |
| 33 | 2774767014 | 22 |
| 34 | 2775153146 | 23 |
| 35 | 327505 | 31 |
| 36 | 98991974397 | 26 |
| 37 | 51518 | 32 |
| 38 | 157936 | 30 |
| 39 | 96582310584 | 14 |
| 40 | 124521 | 13 |
| 41 | 229302 | 25 |
| 42 | 117258 | 16 |
| 43 | 144545 | 29 |
| 44 | 22042 | 28 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -566124954800389/200000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -566124954800389/200000 | 1 | -566124954800389/200000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1236 | -566124954800389/200000 |

## Stage 1237

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ+/BPR+/BPS+/PRS-/HQS+/EHQ- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ+/BPR+/BPS+/PRS-/HQS+/EHQ-:HHHHHHHH |
| Index | 0 |
| Context | 263 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1223 |
| Coordinate cut | u high 199751/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 270627/1000000 | 103767/1000000 | 270627/1000000 |
| c | 662881/1000000 | 1 | 662881/1000000 | 1 |
| e | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| f | 195079/500000 | 344349/500000 | 195079/500000 | 344349/500000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 397223/1000000 | 651139/1000000 | 397223/1000000 | 651139/1000000 |
| q | 196767/1000000 | 288239/500000 | 196767/1000000 | 288239/500000 |
| u | 199751/500000 | 246589/500000 | 199751/500000 | 246589/500000 |
| v | 55147/100000 | 440299/500000 | 55147/100000 | 440299/500000 |
| r | 361353/500000 | 1 | 361353/500000 | 1 |
| w | 41657/50000 | 1 | 41657/50000 | 1 |
| j | 343063/500000 | 896233/1000000 | 343063/500000 | 896233/1000000 |
| k | 544649/1000000 | 864963/1000000 | 544649/1000000 | 864963/1000000 |

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
| 0 | bound | `{"direction":"lo","ref":"477:2717","triangle":"BRS","value":"31913/250000"}` | `-1 * r * k + 1 * b * k + 1 * w * j + -1 * b * w + -31913/250000` |
| 1 | physical | `{"factor":105,"stage":477}` | `-1/1 * f * w + 1/1 * e * f + 1/1 * w + 1/1 * r + -1279/1000 + -1/1 * e * r` |
| 2 | physical | `{"factor":116,"stage":477}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 3 | physical | `{"factor":119,"stage":477}` | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 4 | physical | `{"factor":131,"stage":477}` | `1/1 * u * k + -1/1 * h * u + -1/1 * v * j + 1/1 * h * j + -93/1000` |
| 5 | physical | `{"factor":138,"stage":477}` | `1/1 * e + -1/1 * a` |
| 6 | physical | `{"factor":34,"stage":477}` | `1/1 * f * v + -1/1 * a * f + -1/1 * u + 1/1 * a * u + -93/1000` |
| 7 | physical | `{"factor":47,"stage":477}` | `1/1 * c * e + -1/1 * b * e + -93/1000` |
| 8 | physical | `{"factor":85,"stage":477}` | `1/1 * k + -1/1 * c * k + -1/1 * e * j + 1/1 * c * e + -93/1000` |
| 9 | coordinate | `{"box":1237,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 10 | coordinate | `{"box":1237,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 11 | coordinate | `{"box":1237,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 12 | coordinate | `{"box":1237,"direction":"hi","value":"896233/1000000","variable":"j"}` | `896233/1000000 + -1 * j` |
| 13 | coordinate | `{"box":1237,"direction":"hi","value":"864963/1000000","variable":"k"}` | `864963/1000000 + -1 * k` |
| 14 | coordinate | `{"box":1237,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 15 | coordinate | `{"box":1237,"direction":"hi","value":"6143/20000","variable":"e"}` | `6143/20000 + -1 * e` |
| 16 | coordinate | `{"box":1237,"direction":"hi","value":"344349/500000","variable":"f"}` | `344349/500000 + -1 * f` |
| 17 | coordinate | `{"box":1237,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 18 | coordinate | `{"box":1237,"direction":"hi","value":"440299/500000","variable":"v"}` | `440299/500000 + -1 * v` |
| 19 | coordinate | `{"box":1237,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 20 | coordinate | `{"box":1237,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 21 | coordinate | `{"box":1237,"direction":"lo","value":"361353/500000","variable":"r"}` | `-361353/500000 + 1 * r` |
| 22 | coordinate | `{"box":1237,"direction":"lo","value":"41657/50000","variable":"w"}` | `-41657/50000 + 1 * w` |
| 23 | coordinate | `{"box":1237,"direction":"lo","value":"343063/500000","variable":"j"}` | `-343063/500000 + 1 * j` |
| 24 | coordinate | `{"box":1237,"direction":"lo","value":"544649/1000000","variable":"k"}` | `-544649/1000000 + 1 * k` |
| 25 | coordinate | `{"box":1237,"direction":"lo","value":"662881/1000000","variable":"c"}` | `-662881/1000000 + 1 * c` |
| 26 | coordinate | `{"box":1237,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 27 | coordinate | `{"box":1237,"direction":"lo","value":"195079/500000","variable":"f"}` | `-195079/500000 + 1 * f` |
| 28 | coordinate | `{"box":1237,"direction":"lo","value":"135501/250000","variable":"h"}` | `-135501/250000 + 1 * h` |
| 29 | coordinate | `{"box":1237,"direction":"lo","value":"199751/500000","variable":"u"}` | `-199751/500000 + 1 * u` |
| 30 | coordinate | `{"box":1237,"direction":"lo","value":"55147/100000","variable":"v"}` | `-55147/100000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 68681000000 | 6 |
| 1 | 10870000000 | 7 |
| 2 | 23526000000 | 0 |
| 3 | 1482000000 | 8 |
| 4 | 34309000000 | 1 |
| 5 | 2281000000 | 2 |
| 6 | 42922000000 | 3 |
| 7 | 52777000000 | 4 |
| 8 | 642000000 | 5 |
| 9 | 10870000000 | 20, 26 |
| 10 | 68681000000 | 19, 27 |
| 11 | 68681000000 | 9, 29 |
| 12 | 23526000000 | 20, 22 |
| 13 | 23526000000 | 13, 20 |
| 14 | 12352000000 | 14, 26 |
| 15 | 1482000000 | 13, 14 |
| 16 | 34309000000 | 16, 26 |
| 17 | 36590000000 | 10, 15 |
| 18 | 800000000 | 12, 26 |
| 19 | 42922000000 | 17, 27 |
| 20 | 68681000000 | 16, 30 |
| 21 | 77231000000 | 11, 16 |
| 22 | 52777000000 | 28, 29 |
| 23 | 42922000000 | 10, 17 |
| 24 | 52586000000 | 12, 28 |
| 25 | 191000000 | 17, 23 |
| 26 | 52777000000 | 13, 29 |
| 27 | 52777000000 | 12, 18 |
| 28 | 21244000000 | 10, 13 |
| 29 | 21244000000 | 12, 22 |
| 30 | 30540823707 | 29 |
| 31 | 379279392 | 20 |
| 32 | 379954511 | 26 |
| 33 | 1000000 | 21, 24 |
| 34 | 544649 | 21 |
| 35 | 722706 | 24 |
| 36 | 1000000 | 11, 23 |
| 37 | 686126 | 11 |
| 38 | 1000000 | 12 |
| 39 | 739496 | 13 |
| 40 | 1000000 | 23, 26 |
| 41 | 362309 | 23 |
| 42 | 483828 | 22 |
| 43 | 4695107528 | 10 |
| 44 | 847177 | 15 |
| 45 | 244736 | 19 |
| 46 | 168254 | 27 |
| 47 | 145182 | 25 |
| 48 | 203226 | 17 |
| 49 | 21703 | 30 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -3051442755601543/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -3051442755601543/1000000 | 1 | -3051442755601543/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1237 | -3051442755601543/1000000 |

## Stage 1238

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ+/BPR+/BPS+/PRS-/HQS- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ+/BPR+/BPS+/PRS-/HQS-:root |
| Index | 0 |
| Context | 264 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 478 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 195999/500000 | 103767/1000000 | 195999/500000 |
| b | 103767/1000000 | 270627/1000000 | 103767/1000000 | 270627/1000000 |
| c | 135501/250000 | 1 | 135501/250000 | 1 |
| e | 103767/1000000 | 195999/500000 | 103767/1000000 | 195999/500000 |
| f | 155651/500000 | 344349/500000 | 155651/500000 | 344349/500000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 10461/31250 | 32593/50000 | 10461/31250 | 32593/50000 |
| q | 196767/1000000 | 71531/125000 | 196767/1000000 | 71531/125000 |
| u | 103767/1000000 | 256733/500000 | 103767/1000000 | 256733/500000 |
| v | 57791/100000 | 907/1000 | 57791/100000 | 907/1000 |
| r | 155651/250000 | 1 | 155651/250000 | 1 |
| w | 41657/50000 | 1 | 41657/50000 | 1 |
| j | 161627/250000 | 896233/1000000 | 161627/250000 | 896233/1000000 |
| k | 105889/250000 | 864963/1000000 | 105889/250000 | 864963/1000000 |

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


## Stage 1239

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ+/BPR+/BPS+/PRS-/HQS- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ+/BPR+/BPS+/PRS-/HQS-:L |
| Index | 0 |
| Context | 264 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1238 |
| Coordinate cut | c low 639583/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 195999/500000 | 103767/1000000 | 195999/500000 |
| b | 103767/1000000 | 270627/1000000 | 103767/1000000 | 270627/1000000 |
| c | 135501/250000 | 639583/1000000 | 135501/250000 | 639583/1000000 |
| e | 103767/1000000 | 195999/500000 | 103767/1000000 | 195999/500000 |
| f | 155651/500000 | 344349/500000 | 155651/500000 | 344349/500000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 10461/31250 | 32593/50000 | 10461/31250 | 32593/50000 |
| q | 196767/1000000 | 71531/125000 | 196767/1000000 | 71531/125000 |
| u | 103767/1000000 | 256733/500000 | 103767/1000000 | 256733/500000 |
| v | 57791/100000 | 907/1000 | 57791/100000 | 907/1000 |
| r | 155651/250000 | 1 | 155651/250000 | 1 |
| w | 41657/50000 | 1 | 41657/50000 | 1 |
| j | 161627/250000 | 896233/1000000 | 161627/250000 | 896233/1000000 |
| k | 105889/250000 | 864963/1000000 | 105889/250000 | 864963/1000000 |

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
| 0 | bound | `{"direction":"lo","ref":"478:1151","triangle":"BCP","value":"24817/200000"}` | `1 * c * q + -1 * b * q + -24817/200000` |
| 1 | bound | `{"direction":"lo","ref":"478:1436","triangle":"FHS","value":"28089/100000"}` | `-1 * f * k + -1 * h * j + 1 * f * h + 1 * j + -28089/100000` |
| 2 | physical | `{"factor":0,"stage":478}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 3 | physical | `{"factor":10,"stage":478}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 4 | physical | `{"factor":106,"stage":478}` | `-1/1 * f * k + 1/1 * e * f + 1/1 * k + 1/1 * j + -1093/1000 + -1/1 * e * j` |
| 5 | physical | `{"factor":26,"stage":478}` | `1/1 * q + -1/1 * a + -1/1 * e * p + 1/1 * a * p + -93/1000` |
| 6 | physical | `{"factor":47,"stage":478}` | `1/1 * c * e + -1/1 * b * e + -93/1000` |
| 7 | physical | `{"factor":7,"stage":478}` | `1/1 * b * h + -1/1 * a * b + -93/1000` |
| 8 | physical | `{"factor":75,"stage":478}` | `1/1 * p * k + -1/1 * b * k + -1/1 * q * j + 1/1 * b * q + -93/1000` |
| 9 | physical | `{"factor":91,"stage":478}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 10 | coordinate | `{"box":1239,"direction":"hi","value":"896233/1000000","variable":"j"}` | `896233/1000000 + -1 * j` |
| 11 | coordinate | `{"box":1239,"direction":"hi","value":"864963/1000000","variable":"k"}` | `864963/1000000 + -1 * k` |
| 12 | coordinate | `{"box":1239,"direction":"hi","value":"639583/1000000","variable":"c"}` | `639583/1000000 + -1 * c` |
| 13 | coordinate | `{"box":1239,"direction":"hi","value":"195999/500000","variable":"e"}` | `195999/500000 + -1 * e` |
| 14 | coordinate | `{"box":1239,"direction":"hi","value":"344349/500000","variable":"f"}` | `344349/500000 + -1 * f` |
| 15 | coordinate | `{"box":1239,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 16 | coordinate | `{"box":1239,"direction":"hi","value":"32593/50000","variable":"p"}` | `32593/50000 + -1 * p` |
| 17 | coordinate | `{"box":1239,"direction":"hi","value":"71531/125000","variable":"q"}` | `71531/125000 + -1 * q` |
| 18 | coordinate | `{"box":1239,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 19 | coordinate | `{"box":1239,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 20 | coordinate | `{"box":1239,"direction":"lo","value":"161627/250000","variable":"j"}` | `-161627/250000 + 1 * j` |
| 21 | coordinate | `{"box":1239,"direction":"lo","value":"105889/250000","variable":"k"}` | `-105889/250000 + 1 * k` |
| 22 | coordinate | `{"box":1239,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 23 | coordinate | `{"box":1239,"direction":"lo","value":"155651/500000","variable":"f"}` | `-155651/500000 + 1 * f` |
| 24 | coordinate | `{"box":1239,"direction":"lo","value":"135501/250000","variable":"h"}` | `-135501/250000 + 1 * h` |
| 25 | coordinate | `{"box":1239,"direction":"lo","value":"10461/31250","variable":"p"}` | `-10461/31250 + 1 * p` |
| 26 | coordinate | `{"box":1239,"direction":"lo","value":"196767/1000000","variable":"q"}` | `-196767/1000000 + 1 * q` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 12240000000 | 2 |
| 1 | 30961000000 | 7 |
| 2 | 15886000000 | 3 |
| 3 | 34621000000 | 5 |
| 4 | 20704000000 | 6 |
| 5 | 69436000000 | 0 |
| 6 | 53550000000 | 8 |
| 7 | 69436000000 | 9 |
| 8 | 11757000000 | 4 |
| 9 | 29448000000 | 1 |
| 10 | 59087000000 | 18, 19 |
| 11 | 12240000000 | 12, 18 |
| 12 | 20704000000 | 19, 22 |
| 13 | 30961000000 | 15, 19 |
| 14 | 50507000000 | 16, 18 |
| 15 | 53550000000 | 19, 21 |
| 16 | 20704000000 | 12, 22 |
| 17 | 69436000000 | 12, 24 |
| 18 | 11757000000 | 14, 22 |
| 19 | 34621000000 | 22, 25 |
| 20 | 11757000000 | 20, 22 |
| 21 | 29448000000 | 15, 23 |
| 22 | 11266000000 | 21, 23 |
| 23 | 29939000000 | 11, 14 |
| 24 | 46876000000 | 24, 25 |
| 25 | 22560000000 | 15, 16 |
| 26 | 29448000000 | 10, 15 |
| 27 | 53550000000 | 11, 25 |
| 28 | 53550000000 | 20, 26 |
| 29 | 496600 | 17 |
| 30 | 291789 | 18 |
| 31 | 188996 | 11 |
| 32 | 138531 | 10 |
| 33 | 96497 | 19 |
| 34 | 41053089792 | 12 |
| 35 | 113302 | 13 |
| 36 | 29165 | 24 |
| 37 | 231708 | 16 |
| 38 | 79466 | 14 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -754374900500427/250000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -754374900500427/250000 | 1 | -754374900500427/250000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1239 | -754374900500427/250000 |
