# BITT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 1175

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ-/BPS+/AQS-/AQR- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ-/BPS+/AQS-/AQR-:HLLHHHHLL |
| Index | 0 |
| Context | 247 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1174 |
| Coordinate cut | r low 11493/15625 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 145241/500000 | 103767/1000000 | 145241/500000 |
| c | 385501/500000 | 1 | 385501/500000 | 1 |
| e | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| f | 103767/1000000 | 372181/1000000 | 103767/1000000 | 372181/1000000 |
| h | 385501/500000 | 1 | 385501/500000 | 1 |
| p | 145397/500000 | 154789/250000 | 145397/500000 | 154789/250000 |
| q | 196767/1000000 | 308103/500000 | 196767/1000000 | 308103/500000 |
| u | 69713/200000 | 344349/500000 | 69713/200000 | 344349/500000 |
| v | 137319/250000 | 907/1000 | 137319/250000 | 907/1000 |
| r | 114671/200000 | 11493/15625 | 114671/200000 | 11493/15625 |
| w | 162657/200000 | 1 | 162657/200000 | 1 |
| j | 483003/1000000 | 896233/1000000 | 483003/1000000 | 896233/1000000 |
| k | 110021/250000 | 896233/1000000 | 110021/250000 | 896233/1000000 |

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
| 0 | bound | `{"direction":"lo","ref":"461:1089","triangle":"BPR","value":"27553/250000"}` | `1 * p * w + -1 * b * w + -1 * q * r + 1 * b * q + -27553/250000` |
| 1 | physical | `{"factor":10,"stage":461}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 2 | physical | `{"factor":105,"stage":461}` | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 3 | physical | `{"factor":116,"stage":461}` | `-1/1 * u * w + 1/1 * e * u + 1/1 * w + 1/1 * v * r + -1/1 * v + -1/1 * e * r + -279/1000` |
| 4 | physical | `{"factor":121,"stage":461}` | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 5 | physical | `{"factor":141,"stage":461}` | `1/1 * f + -1/1 * e` |
| 6 | physical | `{"factor":44,"stage":461}` | `-1/1 * u * w + 1/1 * a * u + 1/1 * v * r + -1/1 * a * r + -93/1000` |
| 7 | physical | `{"factor":63,"stage":461}` | `1/1 * w + -1/1 * b * w + -1/1 * e * r + 1/1 * b * e + -13857/20000` |
| 8 | physical | `{"factor":7,"stage":461}` | `1/1 * b * h + -1/1 * a * b + -93/1000` |
| 9 | physical | `{"factor":90,"stage":461}` | `-1/1 * f * v + 1/1 * c * v + 1/1 * u + -1/1 * c + -93/1000` |
| 10 | physical | `{"factor":93,"stage":461}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 11 | coordinate | `{"box":1175,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 12 | coordinate | `{"box":1175,"direction":"hi","value":"11493/15625","variable":"r"}` | `11493/15625 + -1 * r` |
| 13 | coordinate | `{"box":1175,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 14 | coordinate | `{"box":1175,"direction":"hi","value":"59/125","variable":"e"}` | `59/125 + -1 * e` |
| 15 | coordinate | `{"box":1175,"direction":"hi","value":"372181/1000000","variable":"f"}` | `372181/1000000 + -1 * f` |
| 16 | coordinate | `{"box":1175,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 17 | coordinate | `{"box":1175,"direction":"hi","value":"154789/250000","variable":"p"}` | `154789/250000 + -1 * p` |
| 18 | coordinate | `{"box":1175,"direction":"hi","value":"308103/500000","variable":"q"}` | `308103/500000 + -1 * q` |
| 19 | coordinate | `{"box":1175,"direction":"hi","value":"344349/500000","variable":"u"}` | `344349/500000 + -1 * u` |
| 20 | coordinate | `{"box":1175,"direction":"hi","value":"907/1000","variable":"v"}` | `907/1000 + -1 * v` |
| 21 | coordinate | `{"box":1175,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 22 | coordinate | `{"box":1175,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 23 | coordinate | `{"box":1175,"direction":"lo","value":"114671/200000","variable":"r"}` | `-114671/200000 + 1 * r` |
| 24 | coordinate | `{"box":1175,"direction":"lo","value":"162657/200000","variable":"w"}` | `-162657/200000 + 1 * w` |
| 25 | coordinate | `{"box":1175,"direction":"lo","value":"385501/500000","variable":"c"}` | `-385501/500000 + 1 * c` |
| 26 | coordinate | `{"box":1175,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 27 | coordinate | `{"box":1175,"direction":"lo","value":"103767/1000000","variable":"f"}` | `-103767/1000000 + 1 * f` |
| 28 | coordinate | `{"box":1175,"direction":"lo","value":"385501/500000","variable":"h"}` | `-385501/500000 + 1 * h` |
| 29 | coordinate | `{"box":1175,"direction":"lo","value":"145397/500000","variable":"p"}` | `-145397/500000 + 1 * p` |
| 30 | coordinate | `{"box":1175,"direction":"lo","value":"196767/1000000","variable":"q"}` | `-196767/1000000 + 1 * q` |
| 31 | coordinate | `{"box":1175,"direction":"lo","value":"69713/200000","variable":"u"}` | `-69713/200000 + 1 * u` |
| 32 | coordinate | `{"box":1175,"direction":"lo","value":"137319/250000","variable":"v"}` | `-137319/250000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 8117000000 | 8 |
| 1 | 1502000000 | 1 |
| 2 | 41217000000 | 6 |
| 3 | 26483000000 | 7 |
| 4 | 25000000 | 0 |
| 5 | 113253000000 | 9 |
| 6 | 181000000 | 10 |
| 7 | 113253000000 | 2 |
| 8 | 16573000000 | 3 |
| 9 | 1377000000 | 4 |
| 10 | 11752000000 | 5 |
| 11 | 26483000000 | 14, 22 |
| 12 | 8117000000 | 16, 22 |
| 13 | 1528000000 | 18, 22 |
| 14 | 1502000000 | 17, 21 |
| 15 | 41217000000 | 19, 21 |
| 16 | 26508000000 | 22, 24 |
| 17 | 6171000000 | 21, 23 |
| 18 | 35046000000 | 11, 12 |
| 19 | 181000000 | 16, 25 |
| 20 | 181000000 | 25, 30 |
| 21 | 113253000000 | 20, 25 |
| 22 | 113253000000 | 26, 27 |
| 23 | 21088000000 | 19, 26 |
| 24 | 108738000000 | 14, 31 |
| 25 | 43055000000 | 12, 14 |
| 26 | 1377000000 | 16, 27 |
| 27 | 1377000000 | 13, 15 |
| 28 | 181000000 | 16, 17 |
| 29 | 1377000000 | 12, 16 |
| 30 | 25000000 | 13, 29 |
| 31 | 25000000 | 12, 18 |
| 32 | 57790000000 | 13, 19 |
| 33 | 57790000000 | 12, 32 |
| 34 | 9619000000 | 21, 22 |
| 35 | 998426092 | 21 |
| 36 | 998351552 | 22 |
| 37 | 1000000 | 22, 30 |
| 38 | 103767 | 30 |
| 39 | 263557 | 13 |
| 40 | 1000000 | 23, 26 |
| 41 | 573355 | 26 |
| 42 | 103767 | 23 |
| 43 | 461065 | 31 |
| 44 | 10387143827 | 25 |
| 45 | 160414 | 32 |
| 46 | 569833 | 12 |
| 47 | 75949 | 15 |
| 48 | 470444 | 14 |
| 49 | 207080 | 28 |
| 50 | 615814 | 18 |
| 51 | 141966 | 29 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -194863915802849/62500 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -194863915802849/62500 | 1 | -194863915802849/62500 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1175 | -194863915802849/62500 |

## Stage 1176

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ-/BPS+/AQS-/AQR- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ-/BPS+/AQS-/AQR-:HLLHHHHLH |
| Index | 0 |
| Context | 247 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1174 |
| Coordinate cut | r high 11493/15625 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 145241/500000 | 103767/1000000 | 145241/500000 |
| c | 385501/500000 | 1 | 385501/500000 | 1 |
| e | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| f | 103767/1000000 | 372181/1000000 | 103767/1000000 | 372181/1000000 |
| h | 385501/500000 | 1 | 385501/500000 | 1 |
| p | 145397/500000 | 154789/250000 | 145397/500000 | 154789/250000 |
| q | 196767/1000000 | 308103/500000 | 196767/1000000 | 308103/500000 |
| u | 69713/200000 | 344349/500000 | 69713/200000 | 344349/500000 |
| v | 137319/250000 | 907/1000 | 137319/250000 | 907/1000 |
| r | 11493/15625 | 1 | 11493/15625 | 1 |
| w | 162657/200000 | 1 | 162657/200000 | 1 |
| j | 483003/1000000 | 896233/1000000 | 483003/1000000 | 896233/1000000 |
| k | 110021/250000 | 896233/1000000 | 110021/250000 | 896233/1000000 |

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


## Stage 1177

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ-/BPS+/AQS-/AQR- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ-/BPS+/AQS-/AQR-:HLLHHHHLHL |
| Index | 0 |
| Context | 247 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1176 |
| Coordinate cut | e low 153933/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 145241/500000 | 103767/1000000 | 145241/500000 |
| c | 385501/500000 | 1 | 385501/500000 | 1 |
| e | 103767/1000000 | 153933/500000 | 103767/1000000 | 153933/500000 |
| f | 103767/1000000 | 372181/1000000 | 103767/1000000 | 372181/1000000 |
| h | 385501/500000 | 1 | 385501/500000 | 1 |
| p | 145397/500000 | 154789/250000 | 145397/500000 | 154789/250000 |
| q | 196767/1000000 | 308103/500000 | 196767/1000000 | 308103/500000 |
| u | 69713/200000 | 344349/500000 | 69713/200000 | 344349/500000 |
| v | 137319/250000 | 907/1000 | 137319/250000 | 907/1000 |
| r | 11493/15625 | 1 | 11493/15625 | 1 |
| w | 162657/200000 | 1 | 162657/200000 | 1 |
| j | 483003/1000000 | 896233/1000000 | 483003/1000000 | 896233/1000000 |
| k | 110021/250000 | 896233/1000000 | 110021/250000 | 896233/1000000 |

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
| 0 | bound | `{"direction":"lo","ref":"461:1089","triangle":"BPR","value":"27553/250000"}` | `1 * p * w + -1 * b * w + -1 * q * r + 1 * b * q + -27553/250000` |
| 1 | physical | `{"factor":10,"stage":461}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 2 | physical | `{"factor":102,"stage":461}` | `1/1 * f * h + -1/1 * e * f + -1/1 * h + 721/1000` |
| 3 | physical | `{"factor":105,"stage":461}` | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 4 | physical | `{"factor":141,"stage":461}` | `1/1 * f + -1/1 * e` |
| 5 | physical | `{"factor":44,"stage":461}` | `-1/1 * u * w + 1/1 * a * u + 1/1 * v * r + -1/1 * a * r + -93/1000` |
| 6 | physical | `{"factor":63,"stage":461}` | `1/1 * w + -1/1 * b * w + -1/1 * e * r + 1/1 * b * e + -13857/20000` |
| 7 | physical | `{"factor":7,"stage":461}` | `1/1 * b * h + -1/1 * a * b + -93/1000` |
| 8 | physical | `{"factor":90,"stage":461}` | `-1/1 * f * v + 1/1 * c * v + 1/1 * u + -1/1 * c + -93/1000` |
| 9 | physical | `{"factor":93,"stage":461}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 10 | coordinate | `{"box":1177,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 11 | coordinate | `{"box":1177,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 12 | coordinate | `{"box":1177,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 13 | coordinate | `{"box":1177,"direction":"hi","value":"153933/500000","variable":"e"}` | `153933/500000 + -1 * e` |
| 14 | coordinate | `{"box":1177,"direction":"hi","value":"372181/1000000","variable":"f"}` | `372181/1000000 + -1 * f` |
| 15 | coordinate | `{"box":1177,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 16 | coordinate | `{"box":1177,"direction":"hi","value":"154789/250000","variable":"p"}` | `154789/250000 + -1 * p` |
| 17 | coordinate | `{"box":1177,"direction":"hi","value":"308103/500000","variable":"q"}` | `308103/500000 + -1 * q` |
| 18 | coordinate | `{"box":1177,"direction":"hi","value":"344349/500000","variable":"u"}` | `344349/500000 + -1 * u` |
| 19 | coordinate | `{"box":1177,"direction":"hi","value":"907/1000","variable":"v"}` | `907/1000 + -1 * v` |
| 20 | coordinate | `{"box":1177,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 21 | coordinate | `{"box":1177,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 22 | coordinate | `{"box":1177,"direction":"lo","value":"162657/200000","variable":"w"}` | `-162657/200000 + 1 * w` |
| 23 | coordinate | `{"box":1177,"direction":"lo","value":"385501/500000","variable":"c"}` | `-385501/500000 + 1 * c` |
| 24 | coordinate | `{"box":1177,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 25 | coordinate | `{"box":1177,"direction":"lo","value":"103767/1000000","variable":"f"}` | `-103767/1000000 + 1 * f` |
| 26 | coordinate | `{"box":1177,"direction":"lo","value":"385501/500000","variable":"h"}` | `-385501/500000 + 1 * h` |
| 27 | coordinate | `{"box":1177,"direction":"lo","value":"145397/500000","variable":"p"}` | `-145397/500000 + 1 * p` |
| 28 | coordinate | `{"box":1177,"direction":"lo","value":"196767/1000000","variable":"q"}` | `-196767/1000000 + 1 * q` |
| 29 | coordinate | `{"box":1177,"direction":"lo","value":"69713/200000","variable":"u"}` | `-69713/200000 + 1 * u` |
| 30 | coordinate | `{"box":1177,"direction":"lo","value":"137319/250000","variable":"v"}` | `-137319/250000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 2620000000 | 7 |
| 1 | 20380000000 | 1 |
| 2 | 32867000000 | 5 |
| 3 | 25196000000 | 6 |
| 4 | 290000000 | 0 |
| 5 | 117238000000 | 8 |
| 6 | 2405000000 | 9 |
| 7 | 711000000 | 2 |
| 8 | 126827000000 | 3 |
| 9 | 7747000000 | 4 |
| 10 | 23000000000 | 20, 21 |
| 11 | 25196000000 | 13, 21 |
| 12 | 2620000000 | 15, 21 |
| 13 | 20670000000 | 17, 21 |
| 14 | 20380000000 | 16, 20 |
| 15 | 32867000000 | 18, 20 |
| 16 | 25486000000 | 21, 22 |
| 17 | 32867000000 | 10, 11 |
| 18 | 2405000000 | 15, 23 |
| 19 | 2405000000 | 23, 28 |
| 20 | 117238000000 | 19, 23 |
| 21 | 125135000000 | 24, 25 |
| 22 | 2403000000 | 13, 14 |
| 23 | 126827000000 | 13, 29 |
| 24 | 25196000000 | 11, 13 |
| 25 | 711000000 | 15, 25 |
| 26 | 9589000000 | 14, 30 |
| 27 | 2405000000 | 15, 16 |
| 28 | 290000000 | 12, 27 |
| 29 | 290000000 | 11, 17 |
| 30 | 32867000000 | 12, 18 |
| 31 | 32867000000 | 11, 30 |
| 32 | 287332 | 12 |
| 33 | 231171 | 18 |
| 34 | 8971358635 | 23 |
| 35 | 162493 | 26 |
| 36 | 423915 | 30 |
| 37 | 322021 | 14 |
| 38 | 267901 | 24 |
| 39 | 195446 | 10 |
| 40 | 52754 | 21 |
| 41 | 604080 | 17 |
| 42 | 228540 | 27 |
| 43 | 22263766 | 11 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -2296201669286157/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -2296201669286157/1000000 | 1 | -2296201669286157/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1177 | -2296201669286157/1000000 |

## Stage 1178

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ-/BPS+/AQS-/AQR- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ-/BPS+/AQS-/AQR-:HLLHHHHLHH |
| Index | 0 |
| Context | 247 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1176 |
| Coordinate cut | e high 153933/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 145241/500000 | 103767/1000000 | 145241/500000 |
| c | 385501/500000 | 1 | 385501/500000 | 1 |
| e | 153933/500000 | 59/125 | 153933/500000 | 59/125 |
| f | 103767/1000000 | 372181/1000000 | 103767/1000000 | 372181/1000000 |
| h | 385501/500000 | 1 | 385501/500000 | 1 |
| p | 145397/500000 | 154789/250000 | 145397/500000 | 154789/250000 |
| q | 196767/1000000 | 308103/500000 | 196767/1000000 | 308103/500000 |
| u | 69713/200000 | 344349/500000 | 69713/200000 | 344349/500000 |
| v | 137319/250000 | 907/1000 | 137319/250000 | 907/1000 |
| r | 11493/15625 | 1 | 11493/15625 | 1 |
| w | 162657/200000 | 1 | 162657/200000 | 1 |
| j | 483003/1000000 | 896233/1000000 | 483003/1000000 | 896233/1000000 |
| k | 110021/250000 | 896233/1000000 | 110021/250000 | 896233/1000000 |

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
| 0 | physical | `{"factor":0,"stage":461}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 1 | physical | `{"factor":105,"stage":461}` | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 2 | physical | `{"factor":141,"stage":461}` | `1/1 * f + -1/1 * e` |
| 3 | physical | `{"factor":44,"stage":461}` | `-1/1 * u * w + 1/1 * a * u + 1/1 * v * r + -1/1 * a * r + -93/1000` |
| 4 | physical | `{"factor":63,"stage":461}` | `1/1 * w + -1/1 * b * w + -1/1 * e * r + 1/1 * b * e + -13857/20000` |
| 5 | physical | `{"factor":90,"stage":461}` | `-1/1 * f * v + 1/1 * c * v + 1/1 * u + -1/1 * c + -93/1000` |
| 6 | coordinate | `{"box":1178,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 7 | coordinate | `{"box":1178,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 8 | coordinate | `{"box":1178,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 9 | coordinate | `{"box":1178,"direction":"hi","value":"59/125","variable":"e"}` | `59/125 + -1 * e` |
| 10 | coordinate | `{"box":1178,"direction":"hi","value":"372181/1000000","variable":"f"}` | `372181/1000000 + -1 * f` |
| 11 | coordinate | `{"box":1178,"direction":"hi","value":"344349/500000","variable":"u"}` | `344349/500000 + -1 * u` |
| 12 | coordinate | `{"box":1178,"direction":"hi","value":"907/1000","variable":"v"}` | `907/1000 + -1 * v` |
| 13 | coordinate | `{"box":1178,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 14 | coordinate | `{"box":1178,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 15 | coordinate | `{"box":1178,"direction":"lo","value":"11493/15625","variable":"r"}` | `-11493/15625 + 1 * r` |
| 16 | coordinate | `{"box":1178,"direction":"lo","value":"162657/200000","variable":"w"}` | `-162657/200000 + 1 * w` |
| 17 | coordinate | `{"box":1178,"direction":"lo","value":"385501/500000","variable":"c"}` | `-385501/500000 + 1 * c` |
| 18 | coordinate | `{"box":1178,"direction":"lo","value":"153933/500000","variable":"e"}` | `-153933/500000 + 1 * e` |
| 19 | coordinate | `{"box":1178,"direction":"lo","value":"103767/1000000","variable":"f"}` | `-103767/1000000 + 1 * f` |
| 20 | coordinate | `{"box":1178,"direction":"lo","value":"137319/250000","variable":"v"}` | `-137319/250000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 1945000000 | 0 |
| 1 | 32011000000 | 3 |
| 2 | 57282000000 | 4 |
| 3 | 109277000000 | 5 |
| 4 | 116433000000 | 1 |
| 5 | 31915000000 | 2 |
| 6 | 1945000000 | 6, 17 |
| 7 | 57282000000 | 9, 14 |
| 8 | 32011000000 | 11, 13 |
| 9 | 57282000000 | 14, 16 |
| 10 | 32011000000 | 13, 15 |
| 11 | 109277000000 | 12, 17 |
| 12 | 116433000000 | 18, 19 |
| 13 | 116433000000 | 11, 18 |
| 14 | 57282000000 | 15, 18 |
| 15 | 7156000000 | 10, 20 |
| 16 | 32011000000 | 8, 11 |
| 17 | 22579000000 | 7, 20 |
| 18 | 9432000000 | 12, 15 |
| 19 | 1945000000 | 13, 14 |
| 20 | 202071319 | 13 |
| 21 | 19751314185 | 14 |
| 22 | 29292107028 | 8 |
| 23 | 447415 | 11 |
| 24 | 9565354250 | 17 |
| 25 | 160746 | 20 |
| 26 | 142922 | 19 |
| 27 | 362753 | 9 |
| 28 | 61155 | 7 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -1667332602270901/200000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -1667332602270901/200000 | 1 | -1667332602270901/200000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1178 | -1667332602270901/200000 |

## Stage 1179

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ-/BPS+/AQS-/AQR- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ-/BPS+/AQS-/AQR-:HLLHHHHH |
| Index | 0 |
| Context | 247 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1173 |
| Coordinate cut | f high 372181/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 145241/500000 | 103767/1000000 | 145241/500000 |
| c | 385501/500000 | 1 | 385501/500000 | 1 |
| e | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| f | 372181/1000000 | 131839/250000 | 372181/1000000 | 131839/250000 |
| h | 385501/500000 | 1 | 385501/500000 | 1 |
| p | 145397/500000 | 154789/250000 | 145397/500000 | 154789/250000 |
| q | 196767/1000000 | 308103/500000 | 196767/1000000 | 308103/500000 |
| u | 69713/200000 | 344349/500000 | 69713/200000 | 344349/500000 |
| v | 137319/250000 | 907/1000 | 137319/250000 | 907/1000 |
| r | 114671/200000 | 1 | 114671/200000 | 1 |
| w | 162657/200000 | 1 | 162657/200000 | 1 |
| j | 483003/1000000 | 896233/1000000 | 483003/1000000 | 896233/1000000 |
| k | 110021/250000 | 896233/1000000 | 110021/250000 | 896233/1000000 |

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
| 0 | physical | `{"factor":105,"stage":461}` | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 1 | physical | `{"factor":121,"stage":461}` | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 2 | physical | `{"factor":44,"stage":461}` | `-1/1 * u * w + 1/1 * a * u + 1/1 * v * r + -1/1 * a * r + -93/1000` |
| 3 | physical | `{"factor":63,"stage":461}` | `1/1 * w + -1/1 * b * w + -1/1 * e * r + 1/1 * b * e + -13857/20000` |
| 4 | physical | `{"factor":7,"stage":461}` | `1/1 * b * h + -1/1 * a * b + -93/1000` |
| 5 | physical | `{"factor":90,"stage":461}` | `-1/1 * f * v + 1/1 * c * v + 1/1 * u + -1/1 * c + -93/1000` |
| 6 | coordinate | `{"box":1179,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 7 | coordinate | `{"box":1179,"direction":"hi","value":"145241/500000","variable":"b"}` | `145241/500000 + -1 * b` |
| 8 | coordinate | `{"box":1179,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 9 | coordinate | `{"box":1179,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 10 | coordinate | `{"box":1179,"direction":"hi","value":"59/125","variable":"e"}` | `59/125 + -1 * e` |
| 11 | coordinate | `{"box":1179,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 12 | coordinate | `{"box":1179,"direction":"hi","value":"344349/500000","variable":"u"}` | `344349/500000 + -1 * u` |
| 13 | coordinate | `{"box":1179,"direction":"hi","value":"907/1000","variable":"v"}` | `907/1000 + -1 * v` |
| 14 | coordinate | `{"box":1179,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 15 | coordinate | `{"box":1179,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 16 | coordinate | `{"box":1179,"direction":"lo","value":"114671/200000","variable":"r"}` | `-114671/200000 + 1 * r` |
| 17 | coordinate | `{"box":1179,"direction":"lo","value":"162657/200000","variable":"w"}` | `-162657/200000 + 1 * w` |
| 18 | coordinate | `{"box":1179,"direction":"lo","value":"385501/500000","variable":"c"}` | `-385501/500000 + 1 * c` |
| 19 | coordinate | `{"box":1179,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 20 | coordinate | `{"box":1179,"direction":"lo","value":"372181/1000000","variable":"f"}` | `-372181/1000000 + 1 * f` |
| 21 | coordinate | `{"box":1179,"direction":"lo","value":"385501/500000","variable":"h"}` | `-385501/500000 + 1 * h` |
| 22 | coordinate | `{"box":1179,"direction":"lo","value":"69713/200000","variable":"u"}` | `-69713/200000 + 1 * u` |
| 23 | coordinate | `{"box":1179,"direction":"lo","value":"137319/250000","variable":"v"}` | `-137319/250000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 13206000000 | 4 |
| 1 | 32624000000 | 2 |
| 2 | 28377000000 | 3 |
| 3 | 131931000000 | 5 |
| 4 | 135773000000 | 0 |
| 5 | 2183000000 | 1 |
| 6 | 13206000000 | 14, 15 |
| 7 | 28377000000 | 10, 15 |
| 8 | 13206000000 | 11, 15 |
| 9 | 32624000000 | 12, 14 |
| 10 | 16854000000 | 15, 17 |
| 11 | 11523000000 | 7, 9 |
| 12 | 27016000000 | 14, 16 |
| 13 | 5608000000 | 6, 8 |
| 14 | 131931000000 | 13, 18 |
| 15 | 135773000000 | 19, 20 |
| 16 | 84198000000 | 12, 19 |
| 17 | 51575000000 | 10, 22 |
| 18 | 28377000000 | 8, 10 |
| 19 | 2183000000 | 11, 20 |
| 20 | 3842000000 | 13, 20 |
| 21 | 2183000000 | 17, 20 |
| 22 | 2183000000 | 8, 11 |
| 23 | 32624000000 | 9, 12 |
| 24 | 32624000000 | 8, 23 |
| 25 | 435988 | 9 |
| 26 | 813285 | 15 |
| 27 | 103767 | 17 |
| 28 | 331526 | 22 |
| 29 | 12269583000 | 18 |
| 30 | 15736 | 23 |
| 31 | 230248 | 16 |
| 32 | 22130 | 14 |
| 33 | 304893 | 7 |
| 34 | 300675 | 19 |
| 35 | 181875 | 21 |
| 36 | 10196464046 | 20 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -6195823738711943/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -6195823738711943/1000000 | 1 | -6195823738711943/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1179 | -6195823738711943/1000000 |
