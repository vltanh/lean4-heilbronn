# BITT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 1110

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ+/QRS-/EHQ-/PQR-/BQR-/AQR-/BPS+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ+/QRS-/EHQ-/PQR-/BQR-/AQR-/BPS+:HLLHHH |
| Index | 0 |
| Context | 236 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1088 |
| Coordinate cut | p high 558587/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 145241/500000 | 103767/1000000 | 145241/500000 |
| c | 796617/1000000 | 1 | 796617/1000000 | 1 |
| e | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| f | 103767/1000000 | 344349/500000 | 103767/1000000 | 344349/500000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 558587/1000000 | 316903/500000 | 558587/1000000 | 316903/500000 |
| q | 196767/1000000 | 467809/1000000 | 196767/1000000 | 467809/1000000 |
| u | 241001/1000000 | 340733/500000 | 241001/1000000 | 340733/500000 |
| v | 409699/1000000 | 387403/500000 | 409699/1000000 | 387403/500000 |
| r | 1451113/2000000 | 1 | 1451113/2000000 | 1 |
| w | 162657/200000 | 1 | 162657/200000 | 1 |
| j | 571423/1000000 | 8033/8963 | 571423/1000000 | 8033/8963 |
| k | 133833/250000 | 896233/1000000 | 133833/250000 | 896233/1000000 |

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
| 0 | bound | `{"direction":"lo","ref":"450:1373","triangle":"FQR","value":"13533/125000"}` | `1 * u * w + -1 * u + -1 * f * w + -1 * v * r + 1 * f * v + 1 * r + -13533/125000` |
| 1 | physical | `{"factor":10,"stage":450}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 2 | physical | `{"factor":124,"stage":450}` | `1/1 * p * v + -1/1 * p + -1/1 * f * v + -1/1 * q * u + 1/1 * f * q + 1/1 * u + -93/1000` |
| 3 | physical | `{"factor":1527,"stage":450}` | `1/1 * f * q + -1/1 * c * q + -1/1 * p + 1/1 * c + -304941/1000000` |
| 4 | physical | `{"factor":45,"stage":450}` | `-1/1 * u * w + 1/1 * a * u + 1/1 * v * r + -1/1 * a * r + -93/1000` |
| 5 | physical | `{"factor":65,"stage":450}` | `1/1 * w + -1/1 * b * w + -1/1 * e * r + 1/1 * b * e + -13857/20000` |
| 6 | physical | `{"factor":87,"stage":450}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 7 | physical | `{"factor":91,"stage":450}` | `1/1 * f * v + -1/1 * c * v + -1/1 * u + 1/1 * c + -93/1000` |
| 8 | coordinate | `{"box":1110,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 9 | coordinate | `{"box":1110,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 10 | coordinate | `{"box":1110,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 11 | coordinate | `{"box":1110,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 12 | coordinate | `{"box":1110,"direction":"hi","value":"59/125","variable":"e"}` | `59/125 + -1 * e` |
| 13 | coordinate | `{"box":1110,"direction":"hi","value":"344349/500000","variable":"f"}` | `344349/500000 + -1 * f` |
| 14 | coordinate | `{"box":1110,"direction":"hi","value":"467809/1000000","variable":"q"}` | `467809/1000000 + -1 * q` |
| 15 | coordinate | `{"box":1110,"direction":"hi","value":"340733/500000","variable":"u"}` | `340733/500000 + -1 * u` |
| 16 | coordinate | `{"box":1110,"direction":"hi","value":"387403/500000","variable":"v"}` | `387403/500000 + -1 * v` |
| 17 | coordinate | `{"box":1110,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 18 | coordinate | `{"box":1110,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 19 | coordinate | `{"box":1110,"direction":"lo","value":"1451113/2000000","variable":"r"}` | `-1451113/2000000 + 1 * r` |
| 20 | coordinate | `{"box":1110,"direction":"lo","value":"162657/200000","variable":"w"}` | `-162657/200000 + 1 * w` |
| 21 | coordinate | `{"box":1110,"direction":"lo","value":"796617/1000000","variable":"c"}` | `-796617/1000000 + 1 * c` |
| 22 | coordinate | `{"box":1110,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 23 | coordinate | `{"box":1110,"direction":"lo","value":"103767/1000000","variable":"f"}` | `-103767/1000000 + 1 * f` |
| 24 | coordinate | `{"box":1110,"direction":"lo","value":"558587/1000000","variable":"p"}` | `-558587/1000000 + 1 * p` |
| 25 | coordinate | `{"box":1110,"direction":"lo","value":"196767/1000000","variable":"q"}` | `-196767/1000000 + 1 * q` |
| 26 | coordinate | `{"box":1110,"direction":"lo","value":"241001/1000000","variable":"u"}` | `-241001/1000000 + 1 * u` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 1705000000 | 1 |
| 1 | 21602000000 | 4 |
| 2 | 16600000000 | 5 |
| 3 | 66708000000 | 6 |
| 4 | 91019000000 | 3 |
| 5 | 24584000000 | 7 |
| 6 | 55521000000 | 2 |
| 7 | 21602000000 | 0 |
| 8 | 16600000000 | 12, 18 |
| 9 | 1705000000 | 14, 18 |
| 10 | 1705000000 | 8, 24 |
| 11 | 21602000000 | 15, 17 |
| 12 | 16600000000 | 18, 20 |
| 13 | 21602000000 | 17, 19 |
| 14 | 66708000000 | 11, 22 |
| 15 | 21437000000 | 21, 25 |
| 16 | 69582000000 | 11, 14 |
| 17 | 24584000000 | 11, 16 |
| 18 | 66708000000 | 10, 11 |
| 19 | 54208000000 | 19, 22 |
| 20 | 29100000000 | 9, 12 |
| 21 | 146540000000 | 13, 25 |
| 22 | 9335000000 | 13, 16 |
| 23 | 21602000000 | 10, 13 |
| 24 | 55521000000 | 16, 24 |
| 25 | 53117000000 | 25, 26 |
| 26 | 2404000000 | 14, 15 |
| 27 | 1705000000 | 17, 18 |
| 28 | 176974881 | 17 |
| 29 | 5044639390 | 18 |
| 30 | 213604 | 10 |
| 31 | 102998305324 | 24 |
| 32 | 78315 | 11 |
| 33 | 289159 | 15 |
| 34 | 223730 | 9 |
| 35 | 434552 | 22 |
| 36 | 154645 | 14 |
| 37 | 312997 | 16 |
| 38 | 577830 | 23 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -3343425876624931/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -3343425876624931/1000000 | 1 | -3343425876624931/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1110 | -3343425876624931/1000000 |

## Stage 1111

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ+/QRS-/EHQ-/PQR-/BQR-/AQR-/BPS+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ+/QRS-/EHQ-/PQR-/BQR-/AQR-/BPS+:HLH |
| Index | 0 |
| Context | 236 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1069 |
| Coordinate cut | q high 467809/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 145241/500000 | 103767/1000000 | 145241/500000 |
| c | 796617/1000000 | 1 | 796617/1000000 | 1 |
| e | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| f | 103767/1000000 | 344349/500000 | 103767/1000000 | 344349/500000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 289047/1000000 | 316903/500000 | 289047/1000000 | 316903/500000 |
| q | 467809/1000000 | 617953/1000000 | 467809/1000000 | 617953/1000000 |
| u | 241001/1000000 | 340733/500000 | 241001/1000000 | 340733/500000 |
| v | 409699/1000000 | 387403/500000 | 409699/1000000 | 387403/500000 |
| r | 451113/1000000 | 1 | 451113/1000000 | 1 |
| w | 162657/200000 | 1 | 162657/200000 | 1 |
| j | 59381/125000 | 8033/8963 | 59381/125000 | 8033/8963 |
| k | 133833/250000 | 896233/1000000 | 133833/250000 | 896233/1000000 |

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
| 0 | bound | `{"direction":"lo","ref":"450:1399","triangle":"FPR","value":"82509/250000"}` | `1 * p * w + -1 * p + -1 * f * w + -1 * q * r + 1 * f * q + 1 * r + -82509/250000` |
| 1 | bound | `{"direction":"lo","ref":"450:433","triangle":"BPR","value":"22041/200000"}` | `1 * p * w + -1 * b * w + -1 * q * r + 1 * b * q + -22041/200000` |
| 2 | physical | `{"factor":149,"stage":450}` | `907/1000 + -1/1 * p + -1/1 * q` |
| 3 | physical | `{"factor":1527,"stage":450}` | `1/1 * f * q + -1/1 * c * q + -1/1 * p + 1/1 * c + -304941/1000000` |
| 4 | coordinate | `{"box":1111,"direction":"hi","value":"145241/500000","variable":"b"}` | `145241/500000 + -1 * b` |
| 5 | coordinate | `{"box":1111,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 6 | coordinate | `{"box":1111,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 7 | coordinate | `{"box":1111,"direction":"hi","value":"344349/500000","variable":"f"}` | `344349/500000 + -1 * f` |
| 8 | coordinate | `{"box":1111,"direction":"hi","value":"316903/500000","variable":"p"}` | `316903/500000 + -1 * p` |
| 9 | coordinate | `{"box":1111,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 10 | coordinate | `{"box":1111,"direction":"lo","value":"451113/1000000","variable":"r"}` | `-451113/1000000 + 1 * r` |
| 11 | coordinate | `{"box":1111,"direction":"lo","value":"162657/200000","variable":"w"}` | `-162657/200000 + 1 * w` |
| 12 | coordinate | `{"box":1111,"direction":"lo","value":"796617/1000000","variable":"c"}` | `-796617/1000000 + 1 * c` |
| 13 | coordinate | `{"box":1111,"direction":"lo","value":"103767/1000000","variable":"f"}` | `-103767/1000000 + 1 * f` |
| 14 | coordinate | `{"box":1111,"direction":"lo","value":"289047/1000000","variable":"p"}` | `-289047/1000000 + 1 * p` |
| 15 | coordinate | `{"box":1111,"direction":"lo","value":"467809/1000000","variable":"q"}` | `-467809/1000000 + 1 * q` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 84718000000 | 1 |
| 1 | 77668000000 | 3 |
| 2 | 74469000000 | 0 |
| 3 | 7049000000 | 2 |
| 4 | 84718000000 | 4, 15 |
| 5 | 84718000000 | 9, 11 |
| 6 | 77668000000 | 12, 15 |
| 7 | 152137000000 | 7, 15 |
| 8 | 17662000000 | 11, 13 |
| 9 | 56807000000 | 5, 7 |
| 10 | 159187000000 | 5, 14 |
| 11 | 159187000000 | 10, 15 |
| 12 | 29268500580 | 9 |
| 13 | 3734366796 | 11 |
| 14 | 1000000 | 8 |
| 15 | 41334210588 | 6 |
| 16 | 111283 | 10 |
| 17 | 11346472585 | 15 |
| 18 | 464812 | 4 |
| 19 | 358839 | 5 |
| 20 | 181837 | 13 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -8745313929551097/500000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -8745313929551097/500000 | 1 | -8745313929551097/500000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1111 | -8745313929551097/500000 |

## Stage 1112

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ+/QRS-/EHQ-/PQR-/BQR-/AQR-/BPS+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ+/QRS-/EHQ-/PQR-/BQR-/AQR-/BPS+:HH |
| Index | 0 |
| Context | 236 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1068 |
| Coordinate cut | v high 387403/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 145241/500000 | 103767/1000000 | 145241/500000 |
| c | 796617/1000000 | 1 | 796617/1000000 | 1 |
| e | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| f | 103767/1000000 | 344349/500000 | 103767/1000000 | 344349/500000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 289047/1000000 | 316903/500000 | 289047/1000000 | 316903/500000 |
| q | 196767/1000000 | 617953/1000000 | 196767/1000000 | 617953/1000000 |
| u | 241001/1000000 | 340733/500000 | 241001/1000000 | 340733/500000 |
| v | 387403/500000 | 907/1000 | 387403/500000 | 907/1000 |
| r | 451113/1000000 | 1 | 451113/1000000 | 1 |
| w | 162657/200000 | 1 | 162657/200000 | 1 |
| j | 59381/125000 | 8033/8963 | 59381/125000 | 8033/8963 |
| k | 133833/250000 | 896233/1000000 | 133833/250000 | 896233/1000000 |

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
| 0 | bound | `{"direction":"lo","ref":"450:1172","triangle":"BFQ","value":"13791/100000"}` | `-1 * f * v + 1 * b * v + 1 * u + -1 * b + -13791/100000` |
| 1 | bound | `{"direction":"hi","ref":"450:1205","triangle":"BCQ","value":"665323/1000000"}` | `-1 * c * v + 1 * b * v + 665323/1000000` |
| 2 | physical | `{"factor":91,"stage":450}` | `1/1 * f * v + -1/1 * c * v + -1/1 * u + 1/1 * c + -93/1000` |
| 3 | coordinate | `{"box":1112,"direction":"hi","value":"145241/500000","variable":"b"}` | `145241/500000 + -1 * b` |
| 4 | coordinate | `{"box":1112,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 5 | coordinate | `{"box":1112,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 6 | coordinate | `{"box":1112,"direction":"lo","value":"796617/1000000","variable":"c"}` | `-796617/1000000 + 1 * c` |
| 7 | coordinate | `{"box":1112,"direction":"lo","value":"387403/500000","variable":"v"}` | `-387403/500000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 102628500000 | 0 |
| 1 | 102628500000 | 2 |
| 2 | 29828500000 | 1 |
| 3 | 132457000000 | 3, 7 |
| 4 | 132457000000 | 6, 7 |
| 5 | 21658 | 5 |
| 6 | 21658 | 4 |
| 7 | 67041123695 | 7 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -1926170209442843/500000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -1926170209442843/500000 | 1 | -1926170209442843/500000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1112 | -1926170209442843/500000 |

## Stage 1113

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ+/QRS-/EHQ-/PQR-/BQR-/AQR-/BPS-/HQS+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ+/QRS-/EHQ-/PQR-/BQR-/AQR-/BPS-/HQS+:root |
| Index | 0 |
| Context | 238 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 452 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 11163/100000 | 6143/20000 | 11163/100000 | 6143/20000 |
| b | 110539/1000000 | 62571/250000 | 110539/1000000 | 62571/250000 |
| c | 803389/1000000 | 37709/40000 | 803389/1000000 | 37709/40000 |
| e | 55849/500000 | 305547/1000000 | 55849/500000 | 305547/1000000 |
| f | 55849/500000 | 305547/1000000 | 55849/500000 | 305547/1000000 |
| h | 183379/250000 | 476039/500000 | 183379/250000 | 476039/500000 |
| p | 258907/1000000 | 99677/200000 | 258907/1000000 | 99677/200000 |
| q | 2043/10000 | 580141/1000000 | 2043/10000 | 580141/1000000 |
| u | 259903/1000000 | 273837/500000 | 259903/1000000 | 273837/500000 |
| v | 242981/500000 | 826587/1000000 | 242981/500000 | 826587/1000000 |
| r | 23139/31250 | 1 | 23139/31250 | 1 |
| w | 201137/250000 | 1 | 201137/250000 | 1 |
| j | 803593/1000000 | 447653/500000 | 803593/1000000 | 447653/500000 |
| k | 473131/1000000 | 877513/1000000 | 473131/1000000 | 877513/1000000 |

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


## Stage 1114

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ+/QRS-/EHQ-/PQR-/BQR-/AQR-/BPS-/HQS+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ+/QRS-/EHQ-/PQR-/BQR-/AQR-/BPS-/HQS+:L |
| Index | 0 |
| Context | 238 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1113 |
| Coordinate cut | q low 420933/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 11163/100000 | 6143/20000 | 11163/100000 | 6143/20000 |
| b | 110539/1000000 | 62571/250000 | 110539/1000000 | 62571/250000 |
| c | 803389/1000000 | 37709/40000 | 803389/1000000 | 37709/40000 |
| e | 55849/500000 | 305547/1000000 | 55849/500000 | 305547/1000000 |
| f | 55849/500000 | 305547/1000000 | 55849/500000 | 305547/1000000 |
| h | 183379/250000 | 476039/500000 | 183379/250000 | 476039/500000 |
| p | 258907/1000000 | 99677/200000 | 258907/1000000 | 99677/200000 |
| q | 2043/10000 | 420933/1000000 | 2043/10000 | 420933/1000000 |
| u | 259903/1000000 | 273837/500000 | 259903/1000000 | 273837/500000 |
| v | 242981/500000 | 826587/1000000 | 242981/500000 | 826587/1000000 |
| r | 23139/31250 | 1 | 23139/31250 | 1 |
| w | 201137/250000 | 1 | 201137/250000 | 1 |
| j | 803593/1000000 | 447653/500000 | 803593/1000000 | 447653/500000 |
| k | 473131/1000000 | 877513/1000000 | 473131/1000000 | 877513/1000000 |

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
