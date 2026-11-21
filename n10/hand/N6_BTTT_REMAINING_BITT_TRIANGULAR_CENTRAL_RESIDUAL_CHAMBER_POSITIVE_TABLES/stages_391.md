# BITT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 1955

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS-/HEQ-/CFQ+/BFP+/BRS+/BQS+/EPQ+/AEQ- |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS-/HEQ-/CFQ+/BFP+/BRS+/BQS+/EPQ+/AEQ-:LHHHLH |
| Index | 0 |
| Context | 489 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1941 |
| Coordinate cut | a high 380329/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 380329/1000000 | 59/125 | 380329/1000000 | 59/125 |
| b | 103767/1000000 | 21407/40000 | 103767/1000000 | 21407/40000 |
| c | 351277/500000 | 1 | 351277/500000 | 1 |
| e | 279/1000 | 59/125 | 279/1000 | 59/125 |
| f | 279/1000 | 32193/62500 | 279/1000 | 32193/62500 |
| h | 322309/500000 | 1 | 322309/500000 | 1 |
| p | 22907/200000 | 6143/20000 | 22907/200000 | 6143/20000 |
| q | 182117/500000 | 641153/1000000 | 182117/500000 | 641153/1000000 |
| u | 127549/250000 | 802967/1000000 | 127549/250000 | 802967/1000000 |
| v | 2239/20000 | 379/1000 | 2239/20000 | 379/1000 |
| r | 13857/20000 | 1 | 13857/20000 | 1 |
| w | 78247/100000 | 1 | 78247/100000 | 1 |
| j | 540977/1000000 | 848397/1000000 | 540977/1000000 | 848397/1000000 |
| k | 55959/100000 | 86701/100000 | 55959/100000 | 86701/100000 |

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
| 0 | bound | `{"direction":"lo","ref":"794:3283","triangle":"CFP","value":"180231/500000"}` | `1 * f * q + -1 * c * q + -1 * p + 1 * c + -180231/500000` |
| 1 | physical | `{"factor":138,"stage":794}` | `1/1 * e + -1/1 * a` |
| 2 | physical | `{"factor":142,"stage":794}` | `1/1 * f + -1/1 * e` |
| 3 | physical | `{"factor":17,"stage":794}` | `1/1 * c + -1/1 * a * c + 1/1 * a * f + -13857/20000` |
| 4 | physical | `{"factor":35,"stage":794}` | `-1/1 * f * q + 1/1 * a * f + 1/1 * p + -1/1 * a * p + -93/1000` |
| 5 | physical | `{"factor":44,"stage":794}` | `-1/1 * p * w + 1/1 * a * p + 1/1 * q * r + -1/1 * a * r + -93/1000` |
| 6 | physical | `{"factor":84,"stage":794}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 7 | physical | `{"factor":96,"stage":794}` | `-1/1 * p * w + 1/1 * c * w + 1/1 * q * r + -1/1 * c * q + -13857/20000` |
| 8 | coordinate | `{"box":1955,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 9 | coordinate | `{"box":1955,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 10 | coordinate | `{"box":1955,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 11 | coordinate | `{"box":1955,"direction":"hi","value":"59/125","variable":"e"}` | `59/125 + -1 * e` |
| 12 | coordinate | `{"box":1955,"direction":"hi","value":"32193/62500","variable":"f"}` | `32193/62500 + -1 * f` |
| 13 | coordinate | `{"box":1955,"direction":"hi","value":"6143/20000","variable":"p"}` | `6143/20000 + -1 * p` |
| 14 | coordinate | `{"box":1955,"direction":"hi","value":"641153/1000000","variable":"q"}` | `641153/1000000 + -1 * q` |
| 15 | coordinate | `{"box":1955,"direction":"lo","value":"380329/1000000","variable":"a"}` | `-380329/1000000 + 1 * a` |
| 16 | coordinate | `{"box":1955,"direction":"lo","value":"13857/20000","variable":"r"}` | `-13857/20000 + 1 * r` |
| 17 | coordinate | `{"box":1955,"direction":"lo","value":"78247/100000","variable":"w"}` | `-78247/100000 + 1 * w` |
| 18 | coordinate | `{"box":1955,"direction":"lo","value":"351277/500000","variable":"c"}` | `-351277/500000 + 1 * c` |
| 19 | coordinate | `{"box":1955,"direction":"lo","value":"279/1000","variable":"e"}` | `-279/1000 + 1 * e` |
| 20 | coordinate | `{"box":1955,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 21 | coordinate | `{"box":1955,"direction":"lo","value":"22907/200000","variable":"p"}` | `-22907/200000 + 1 * p` |
| 22 | coordinate | `{"box":1955,"direction":"lo","value":"182117/500000","variable":"q"}` | `-182117/500000 + 1 * q` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 6289000000 | 3 |
| 1 | 126201000000 | 4 |
| 2 | 66546000000 | 5 |
| 3 | 23803000000 | 6 |
| 4 | 3179000000 | 0 |
| 5 | 33787000000 | 7 |
| 6 | 28486000000 | 1 |
| 7 | 28486000000 | 2 |
| 8 | 6289000000 | 15, 18 |
| 9 | 132490000000 | 12, 15 |
| 10 | 59655000000 | 15, 21 |
| 11 | 66546000000 | 15, 16 |
| 12 | 23803000000 | 10, 19 |
| 13 | 36966000000 | 10, 14 |
| 14 | 9983000000 | 9, 18 |
| 15 | 23803000000 | 8, 11 |
| 16 | 123021000000 | 12, 14 |
| 17 | 100333000000 | 9, 13 |
| 18 | 100333000000 | 8, 22 |
| 19 | 713879 | 18 |
| 20 | 1000000 | 20, 22 |
| 21 | 364234 | 20 |
| 22 | 279000 | 22 |
| 23 | 473505 | 13 |
| 24 | 684368 | 17 |
| 25 | 1000000 | 10, 17 |
| 26 | 782470 | 10 |
| 27 | 1000000 | 9 |
| 28 | 17599334511 | 15 |
| 29 | 505997 | 12 |
| 30 | 300288 | 8 |
| 31 | 359152 | 14 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -92585552405461/25000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -92585552405461/25000 | 1 | -92585552405461/25000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1955 | -92585552405461/25000 |

## Stage 1956

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS-/HEQ-/CFQ+/BFP+/BRS+/BQS+/EPQ+/AEQ- |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS-/HEQ-/CFQ+/BFP+/BRS+/BQS+/EPQ+/AEQ-:LHHHH |
| Index | 0 |
| Context | 489 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1940 |
| Coordinate cut | f high 32193/62500 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| b | 103767/1000000 | 21407/40000 | 103767/1000000 | 21407/40000 |
| c | 351277/500000 | 1 | 351277/500000 | 1 |
| e | 279/1000 | 59/125 | 279/1000 | 59/125 |
| f | 32193/62500 | 121807/200000 | 32193/62500 | 121807/200000 |
| h | 322309/500000 | 1 | 322309/500000 | 1 |
| p | 22907/200000 | 6143/20000 | 22907/200000 | 6143/20000 |
| q | 182117/500000 | 641153/1000000 | 182117/500000 | 641153/1000000 |
| u | 127549/250000 | 802967/1000000 | 127549/250000 | 802967/1000000 |
| v | 2239/20000 | 379/1000 | 2239/20000 | 379/1000 |
| r | 13857/20000 | 1 | 13857/20000 | 1 |
| w | 78247/100000 | 1 | 78247/100000 | 1 |
| j | 540977/1000000 | 848397/1000000 | 540977/1000000 | 848397/1000000 |
| k | 55959/100000 | 86701/100000 | 55959/100000 | 86701/100000 |

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
| 0 | bound | `{"direction":"lo","ref":"794:2960","triangle":"CEP","value":"298601/1000000"}` | `1 * q + -1 * c * q + -1 * e * p + 1 * c * e + -298601/1000000` |
| 1 | bound | `{"direction":"lo","ref":"794:3175","triangle":"BCQ","value":"53341/500000"}` | `1 * c * v + -1 * b * v + -53341/500000` |
| 2 | bound | `{"direction":"lo","ref":"794:3327","triangle":"BCP","value":"190299/1000000"}` | `1 * c * q + -1 * b * q + -190299/1000000` |
| 3 | bound | `{"direction":"lo","ref":"794:3342","triangle":"BCH","value":"376299/1000000"}` | `1 * c * h + -1 * b * h + -376299/1000000` |
| 4 | physical | `{"factor":106,"stage":794}` | `-1/1 * f * k + 1/1 * e * f + 1/1 * k + 1/1 * j + -1093/1000 + -1/1 * e * j` |
| 5 | physical | `{"factor":135,"stage":794}` | `-1/1 * r * k + 1/1 * q * r + 1/1 * p * k + 1/1 * w * j + -1/1 * p * w + -1/1 * q * j + -93/1000` |
| 6 | physical | `{"factor":153,"stage":794}` | `1/1 * c * h * p + -1/1 * b * h * p + -93/1000 * c + -93/1000 * b` |
| 7 | physical | `{"factor":31,"stage":794}` | `-1/1 * v + 1/1 * a + 1/1 * e * u + -1/1 * a * u + -93/1000` |
| 8 | physical | `{"factor":35,"stage":794}` | `-1/1 * f * q + 1/1 * a * f + 1/1 * p + -1/1 * a * p + -93/1000` |
| 9 | physical | `{"factor":45,"stage":794}` | `-1/1 * p * k + 1/1 * a * p + 1/1 * q * j + -1/1 * a * j + -93/1000` |
| 10 | physical | `{"factor":69,"stage":794}` | `1/1 * b * q + 1/1 * h * p + -1/1 * b * h + -93/1000` |
| 11 | physical | `{"factor":78,"stage":794}` | `1/1 * r * k + -1/1 * b * k + -1/1 * w * j + 1/1 * b * w + -93/1000` |
| 12 | physical | `{"factor":83,"stage":794}` | `1/1 * v + -1/1 * c * v + -1/1 * e * u + 1/1 * c * e + -93/1000` |
| 13 | physical | `{"factor":84,"stage":794}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 14 | physical | `{"factor":88,"stage":794}` | `1/1 * f * v + -1/1 * c * v + -1/1 * u + 1/1 * c + -93/1000` |
| 15 | physical | `{"factor":92,"stage":794}` | `1/1 * c * v + 1/1 * h * u + -1/1 * c * h + -93/1000` |
| 16 | physical | `{"factor":96,"stage":794}` | `-1/1 * p * w + 1/1 * c * w + 1/1 * q * r + -1/1 * c * q + -13857/20000` |
| 17 | coordinate | `{"box":1956,"direction":"hi","value":"59/125","variable":"a"}` | `59/125 + -1 * a` |
| 18 | coordinate | `{"box":1956,"direction":"hi","value":"21407/40000","variable":"b"}` | `21407/40000 + -1 * b` |
| 19 | coordinate | `{"box":1956,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 20 | coordinate | `{"box":1956,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 21 | coordinate | `{"box":1956,"direction":"hi","value":"848397/1000000","variable":"j"}` | `848397/1000000 + -1 * j` |
| 22 | coordinate | `{"box":1956,"direction":"hi","value":"86701/100000","variable":"k"}` | `86701/100000 + -1 * k` |
| 23 | coordinate | `{"box":1956,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 24 | coordinate | `{"box":1956,"direction":"hi","value":"59/125","variable":"e"}` | `59/125 + -1 * e` |
| 25 | coordinate | `{"box":1956,"direction":"hi","value":"121807/200000","variable":"f"}` | `121807/200000 + -1 * f` |
| 26 | coordinate | `{"box":1956,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 27 | coordinate | `{"box":1956,"direction":"hi","value":"6143/20000","variable":"p"}` | `6143/20000 + -1 * p` |
| 28 | coordinate | `{"box":1956,"direction":"hi","value":"641153/1000000","variable":"q"}` | `641153/1000000 + -1 * q` |
| 29 | coordinate | `{"box":1956,"direction":"hi","value":"802967/1000000","variable":"u"}` | `802967/1000000 + -1 * u` |
| 30 | coordinate | `{"box":1956,"direction":"hi","value":"379/1000","variable":"v"}` | `379/1000 + -1 * v` |
| 31 | coordinate | `{"box":1956,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 32 | coordinate | `{"box":1956,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 33 | coordinate | `{"box":1956,"direction":"lo","value":"55959/100000","variable":"k"}` | `-55959/100000 + 1 * k` |
| 34 | coordinate | `{"box":1956,"direction":"lo","value":"351277/500000","variable":"c"}` | `-351277/500000 + 1 * c` |
| 35 | coordinate | `{"box":1956,"direction":"lo","value":"279/1000","variable":"e"}` | `-279/1000 + 1 * e` |
| 36 | coordinate | `{"box":1956,"direction":"lo","value":"32193/62500","variable":"f"}` | `-32193/62500 + 1 * f` |
| 37 | coordinate | `{"box":1956,"direction":"lo","value":"322309/500000","variable":"h"}` | `-322309/500000 + 1 * h` |
| 38 | coordinate | `{"box":1956,"direction":"lo","value":"22907/200000","variable":"p"}` | `-22907/200000 + 1 * p` |
| 39 | coordinate | `{"box":1956,"direction":"lo","value":"182117/500000","variable":"q"}` | `-182117/500000 + 1 * q` |
| 40 | coordinate | `{"box":1956,"direction":"lo","value":"127549/250000","variable":"u"}` | `-127549/250000 + 1 * u` |
| 41 | coordinate | `{"box":1956,"direction":"lo","value":"2239/20000","variable":"v"}` | `-2239/20000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 4570000000000000 | 7 |
| 1 | 83134000000000000 | 8 |
| 2 | 39083000000000000 | 9 |
| 3 | 1843000000000000 | 3 |
| 4 | 1609000000000000 | 2 |
| 5 | 2438000000000000 | 1 |
| 6 | 1609000000000000 | 10 |
| 7 | 41956000000000000 | 11 |
| 8 | 12829000000000000 | 0 |
| 9 | 4570000000000000 | 12 |
| 10 | 9237000000000000 | 13 |
| 11 | 2533000000000000 | 14 |
| 12 | 4665000000000000 | 15 |
| 13 | 18565000000000000 | 16 |
| 14 | 40380000000000000 | 4 |
| 15 | 39083000000000000 | 5 |
| 16 | 3007000000000000 | 6 |
| 17 | 17332000000000000 | 25, 31 |
| 18 | 65802000000000000 | 17, 36 |
| 19 | 3797406745000000 | 18, 26 |
| 20 | 44051000000000000 | 17, 27 |
| 21 | 2438000000000000 | 18, 30 |
| 22 | 4570000000000000 | 31, 40 |
| 23 | 41956000000000000 | 20, 32 |
| 24 | 41956000000000000 | 18, 22 |
| 25 | 39083000000000000 | 17, 21 |
| 26 | 26637000000000000 | 23, 35 |
| 27 | 1898000000000000 | 23, 26 |
| 28 | 7158000000000000 | 34, 39 |
| 29 | 22627000000000000 | 23, 28 |
| 30 | 9328000000000000 | 20, 34 |
| 31 | 40380000000000000 | 24, 36 |
| 32 | 12829000000000000 | 24, 27 |
| 33 | 9237000000000000 | 19, 24 |
| 34 | 40380000000000000 | 21, 24 |
| 35 | 83134000000000000 | 36, 39 |
| 36 | 2533000000000000 | 30, 36 |
| 37 | 40380000000000000 | 33, 36 |
| 38 | 4665000000000000 | 29, 37 |
| 39 | 57648000000000000 | 20, 27 |
| 40 | 57648000000000000 | 19, 39 |
| 41 | 2873000000000000 | 19, 33 |
| 42 | 2873000000000000 | 20, 21 |
| 43 | 3007000000000000 | 27, 34, 37 |
| 44 | 1938366326000000 | 27, 34 |
| 45 | 2112579878000000 | 27, 37 |
| 46 | 3007000000000000 | 18, 26, 38 |
| 47 | 3007000000000000 | 18, 27 |
| 48 | 38746000000 | 41 |
| 49 | 145125000000 | 31 |
| 50 | 447015796604 | 27 |
| 51 | 399950000000 | 34, 37 |
| 52 | 536814969100 | 34 |
| 53 | 430271227675 | 37 |
| 54 | 1000000000000 | 18, 37 |
| 55 | 644618000000 | 18 |
| 56 | 535175000000 | 26 |
| 57 | 271225000000 | 37, 38 |
| 58 | 174836517050 | 38 |
| 59 | 207324000000 | 39 |
| 60 | 1000000000000 | 34, 35 |
| 61 | 702554000000 | 35 |
| 62 | 44183000000 | 20 |
| 63 | 72220000000 | 40 |
| 64 | 516097000000 | 23 |
| 65 | 55740000000 | 33 |
| 66 | 464000000000 | 21 |
| 67 | 524610000000 | 32 |
| 68 | 72912000000 | 36 |
| 69 | 555230000000 | 24 |
| 70 | 18245199702000000 | 19 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -77299995289672048063/20000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -77299995289672048063/20000 | 1 | -77299995289672048063/20000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1956 | -77299995289672048063/20000 |

## Stage 1957

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS-/HEQ-/CFQ+/BFP+/BRS+/BQS+/EPQ+/AEQ- |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS-/HEQ-/CFQ+/BFP+/BRS+/BQS+/EPQ+/AEQ-:H |
| Index | 0 |
| Context | 489 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1933 |
| Coordinate cut | q high 641153/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| b | 103767/1000000 | 21407/40000 | 103767/1000000 | 21407/40000 |
| c | 351277/500000 | 1 | 351277/500000 | 1 |
| e | 279/1000 | 59/125 | 279/1000 | 59/125 |
| f | 279/1000 | 121807/200000 | 279/1000 | 121807/200000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 22907/200000 | 6143/20000 | 22907/200000 | 6143/20000 |
| q | 641153/1000000 | 378547/500000 | 641153/1000000 | 378547/500000 |
| u | 382873/1000000 | 802967/1000000 | 382873/1000000 | 802967/1000000 |
| v | 2239/20000 | 379/1000 | 2239/20000 | 379/1000 |
| r | 13857/20000 | 1 | 13857/20000 | 1 |
| w | 78247/100000 | 1 | 78247/100000 | 1 |
| j | 540977/1000000 | 848397/1000000 | 540977/1000000 | 848397/1000000 |
| k | 55959/100000 | 86701/100000 | 55959/100000 | 86701/100000 |

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
| 0 | bound | `{"direction":"lo","ref":"794:3229","triangle":"FPR","value":"48401/250000"}` | `1 * p * w + -1 * p + -1 * f * w + -1 * q * r + 1 * f * q + 1 * r + -48401/250000` |
| 1 | physical | `{"factor":119,"stage":794}` | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 2 | physical | `{"factor":142,"stage":794}` | `1/1 * f + -1/1 * e` |
| 3 | physical | `{"factor":31,"stage":794}` | `-1/1 * v + 1/1 * a + 1/1 * e * u + -1/1 * a * u + -93/1000` |
| 4 | physical | `{"factor":35,"stage":794}` | `-1/1 * f * q + 1/1 * a * f + 1/1 * p + -1/1 * a * p + -93/1000` |
| 5 | physical | `{"factor":84,"stage":794}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 6 | physical | `{"factor":88,"stage":794}` | `1/1 * f * v + -1/1 * c * v + -1/1 * u + 1/1 * c + -93/1000` |
| 7 | physical | `{"factor":91,"stage":794}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 8 | physical | `{"factor":92,"stage":794}` | `1/1 * c * v + 1/1 * h * u + -1/1 * c * h + -93/1000` |
| 9 | physical | `{"factor":96,"stage":794}` | `-1/1 * p * w + 1/1 * c * w + 1/1 * q * r + -1/1 * c * q + -13857/20000` |
| 10 | coordinate | `{"box":1957,"direction":"hi","value":"59/125","variable":"a"}` | `59/125 + -1 * a` |
| 11 | coordinate | `{"box":1957,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 12 | coordinate | `{"box":1957,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 13 | coordinate | `{"box":1957,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 14 | coordinate | `{"box":1957,"direction":"hi","value":"59/125","variable":"e"}` | `59/125 + -1 * e` |
| 15 | coordinate | `{"box":1957,"direction":"hi","value":"121807/200000","variable":"f"}` | `121807/200000 + -1 * f` |
| 16 | coordinate | `{"box":1957,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 17 | coordinate | `{"box":1957,"direction":"hi","value":"6143/20000","variable":"p"}` | `6143/20000 + -1 * p` |
| 18 | coordinate | `{"box":1957,"direction":"hi","value":"378547/500000","variable":"q"}` | `378547/500000 + -1 * q` |
| 19 | coordinate | `{"box":1957,"direction":"hi","value":"802967/1000000","variable":"u"}` | `802967/1000000 + -1 * u` |
| 20 | coordinate | `{"box":1957,"direction":"hi","value":"379/1000","variable":"v"}` | `379/1000 + -1 * v` |
| 21 | coordinate | `{"box":1957,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 22 | coordinate | `{"box":1957,"direction":"lo","value":"351277/500000","variable":"c"}` | `-351277/500000 + 1 * c` |
| 23 | coordinate | `{"box":1957,"direction":"lo","value":"279/1000","variable":"e"}` | `-279/1000 + 1 * e` |
| 24 | coordinate | `{"box":1957,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 25 | coordinate | `{"box":1957,"direction":"lo","value":"135501/250000","variable":"h"}` | `-135501/250000 + 1 * h` |
| 26 | coordinate | `{"box":1957,"direction":"lo","value":"22907/200000","variable":"p"}` | `-22907/200000 + 1 * p` |
| 27 | coordinate | `{"box":1957,"direction":"lo","value":"641153/1000000","variable":"q"}` | `-641153/1000000 + 1 * q` |
| 28 | coordinate | `{"box":1957,"direction":"lo","value":"382873/1000000","variable":"u"}` | `-382873/1000000 + 1 * u` |
| 29 | coordinate | `{"box":1957,"direction":"lo","value":"2239/20000","variable":"v"}` | `-2239/20000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 13517000000 | 3 |
| 1 | 115319000000 | 4 |
| 2 | 26466000000 | 5 |
| 3 | 43619000000 | 6 |
| 4 | 48397000000 | 7 |
| 5 | 44966000000 | 8 |
| 6 | 12492000000 | 9 |
| 7 | 8019000000 | 1 |
| 8 | 12492000000 | 0 |
| 9 | 8108000000 | 2 |
| 10 | 1766000000 | 15, 21 |
| 11 | 113553000000 | 10, 24 |
| 12 | 115319000000 | 10, 17 |
| 13 | 13517000000 | 10, 19 |
| 14 | 26466000000 | 13, 23 |
| 15 | 3431000000 | 13, 25 |
| 16 | 60889000000 | 22, 27 |
| 17 | 1347000000 | 13, 29 |
| 18 | 13974000000 | 12, 13 |
| 19 | 6981000000 | 19, 23 |
| 20 | 6536000000 | 14, 28 |
| 21 | 26466000000 | 11, 14 |
| 22 | 8019000000 | 16, 24 |
| 23 | 102828000000 | 24, 27 |
| 24 | 43619000000 | 20, 24 |
| 25 | 20511000000 | 12, 15 |
| 26 | 48397000000 | 16, 17 |
| 27 | 44966000000 | 16, 28 |
| 28 | 8019000000 | 11, 16 |
| 29 | 299000 | 29 |
| 30 | 92979 | 21 |
| 31 | 1000000 | 15, 27 |
| 32 | 641153 | 15 |
| 33 | 609035 | 18 |
| 34 | 568000 | 26 |
| 35 | 83115 | 12 |
| 36 | 333000 | 28 |
| 37 | 280647 | 22 |
| 38 | 542004 | 13 |
| 39 | 1000000 | 16 |
| 40 | 48000 | 11 |
| 41 | 611162 | 24 |
| 42 | 29445 | 23 |
| 43 | 570232 | 25 |
| 44 | 71466822506 | 27 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -6587827865374239/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -6587827865374239/1000000 | 1 | -6587827865374239/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1957 | -6587827865374239/1000000 |

## Stage 1958

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS-/HEQ-/CFQ+/BFP+/BRS-/AQS+/BQR+/QRS+/BEQ+ |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS-/HEQ-/CFQ+/BFP+/BRS-/AQS+/BQR+/QRS+/BEQ+:root |
| Index | 0 |
| Context | 496 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 801 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 42553/125000 | 103767/1000000 | 42553/125000 |
| b | 3407/31250 | 262413/1000000 | 3407/31250 | 262413/1000000 |
| c | 400937/500000 | 1 | 400937/500000 | 1 |
| e | 104379/1000000 | 42553/125000 | 104379/1000000 | 42553/125000 |
| f | 76963/250000 | 594427/1000000 | 76963/250000 | 594427/1000000 |
| h | 734781/1000000 | 996681/1000000 | 734781/1000000 | 996681/1000000 |
| p | 7881/62500 | 6143/20000 | 7881/62500 | 6143/20000 |
| q | 284959/1000000 | 27857/40000 | 284959/1000000 | 27857/40000 |
| u | 487317/1000000 | 52121/62500 | 487317/1000000 | 52121/62500 |
| v | 147899/1000000 | 266563/500000 | 147899/1000000 | 266563/500000 |
| r | 28537/40000 | 1 | 28537/40000 | 1 |
| w | 211453/250000 | 1 | 211453/250000 | 1 |
| j | 270791/500000 | 848563/1000000 | 270791/500000 | 848563/1000000 |
| k | 217349/500000 | 826483/1000000 | 217349/500000 | 826483/1000000 |

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
| 0 | bound | `{"direction":"lo","ref":"801:5098","triangle":"AFR","value":"417777/1000000"}` | `-1 * f * w + 1 * a * f + 1 * r + -1 * a * r + -417777/1000000` |
| 1 | physical | `{"factor":138,"stage":801}` | `1/1 * e + -1/1 * a` |
| 2 | physical | `{"factor":5,"stage":801}` | `1/1 * b + -1/1 * a * b + 1/1 * a * f + -279/1000` |
| 3 | physical | `{"factor":63,"stage":801}` | `1/1 * w + -1/1 * b * w + -1/1 * e * r + 1/1 * b * e + -13857/20000` |
| 4 | coordinate | `{"box":1958,"direction":"hi","value":"42553/125000","variable":"a"}` | `42553/125000 + -1 * a` |
| 5 | coordinate | `{"box":1958,"direction":"hi","value":"262413/1000000","variable":"b"}` | `262413/1000000 + -1 * b` |
| 6 | coordinate | `{"box":1958,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 7 | coordinate | `{"box":1958,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 8 | coordinate | `{"box":1958,"direction":"hi","value":"594427/1000000","variable":"f"}` | `594427/1000000 + -1 * f` |
| 9 | coordinate | `{"box":1958,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 10 | coordinate | `{"box":1958,"direction":"lo","value":"3407/31250","variable":"b"}` | `-3407/31250 + 1 * b` |
| 11 | coordinate | `{"box":1958,"direction":"lo","value":"28537/40000","variable":"r"}` | `-28537/40000 + 1 * r` |
| 12 | coordinate | `{"box":1958,"direction":"lo","value":"104379/1000000","variable":"e"}` | `-104379/1000000 + 1 * e` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 132458000000 | 2 |
| 1 | 15336000000 | 0 |
| 2 | 121609000000 | 3 |
| 3 | 54847000000 | 1 |
| 4 | 91058000000 | 9, 10 |
| 5 | 41400000000 | 4, 5 |
| 6 | 121609000000 | 5, 12 |
| 7 | 147794000000 | 8, 9 |
| 8 | 121609000000 | 5, 7 |
| 9 | 10894000000 | 9, 11 |
| 10 | 4442000000 | 4, 6 |
| 11 | 121609000000 | 11, 12 |
| 12 | 15336000000 | 7, 8 |
| 13 | 56725 | 5 |
| 14 | 26917 | 11 |
| 15 | 80581085011 | 7 |
| 16 | 118308 | 12 |
| 17 | 286496 | 4 |
| 18 | 139998 | 8 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -1177322352845441/500000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -1177322352845441/500000 | 1 | -1177322352845441/500000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1958 | -1177322352845441/500000 |

## Stage 1959

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS-/HEQ-/CFQ+/BFP+/BRS-/AQS+/BQR+/QRS-/EPQ+/BQS- |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS-/HEQ-/CFQ+/BFP+/BRS-/AQS+/BQR+/QRS-/EPQ+/BQS-:root |
| Index | 0 |
| Context | 505 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 810 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 82511/200000 | 103767/1000000 | 82511/200000 |
| b | 103767/1000000 | 13681/50000 | 103767/1000000 | 13681/50000 |
| c | 69333/100000 | 1 | 69333/100000 | 1 |
| e | 103767/1000000 | 82511/200000 | 103767/1000000 | 82511/200000 |
| f | 35687/125000 | 344349/500000 | 35687/125000 | 344349/500000 |
| h | 730537/1000000 | 1 | 730537/1000000 | 1 |
| p | 22907/200000 | 101911/200000 | 22907/200000 | 101911/200000 |
| q | 292467/1000000 | 158493/200000 | 292467/1000000 | 158493/200000 |
| u | 333331/1000000 | 85867/125000 | 333331/1000000 | 85867/125000 |
| v | 7367/40000 | 355649/500000 | 7367/40000 | 355649/500000 |
| r | 298399/500000 | 1 | 298399/500000 | 1 |
| w | 830147/1000000 | 1 | 830147/1000000 | 1 |
| j | 141271/200000 | 896233/1000000 | 141271/200000 | 896233/1000000 |
| k | 182043/500000 | 10873/12500 | 182043/500000 | 10873/12500 |

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
| 0 | bound | `{"direction":"lo","ref":"810:3248","triangle":"ABS","value":"158443/500000"}` | `1 * b * k + -1 * a * b + 1 * a * j + -158443/500000` |
| 1 | bound | `{"direction":"lo","ref":"810:3390","triangle":"BRS","value":"158453/500000"}` | `-1 * r * k + 1 * b * k + 1 * w * j + -1 * b * w + -158453/500000` |
| 2 | bound | `{"direction":"lo","ref":"810:3575","triangle":"AFR","value":"46789/125000"}` | `-1 * f * w + 1 * a * f + 1 * r + -1 * a * r + -46789/125000` |
| 3 | physical | `{"factor":116,"stage":810}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 4 | physical | `{"factor":138,"stage":810}` | `1/1 * e + -1/1 * a` |
| 5 | physical | `{"factor":156,"stage":810}` | `460183993/93000000 + 1/1 * f + 1/1 * r + -646183993/93000000 * j` |
| 6 | physical | `{"factor":5,"stage":810}` | `1/1 * b + -1/1 * a * b + 1/1 * a * f + -279/1000` |
| 7 | physical | `{"factor":63,"stage":810}` | `1/1 * w + -1/1 * b * w + -1/1 * e * r + 1/1 * b * e + -13857/20000` |
| 8 | coordinate | `{"box":1959,"direction":"hi","value":"82511/200000","variable":"a"}` | `82511/200000 + -1 * a` |
| 9 | coordinate | `{"box":1959,"direction":"hi","value":"13681/50000","variable":"b"}` | `13681/50000 + -1 * b` |
| 10 | coordinate | `{"box":1959,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 11 | coordinate | `{"box":1959,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 12 | coordinate | `{"box":1959,"direction":"hi","value":"896233/1000000","variable":"j"}` | `896233/1000000 + -1 * j` |
| 13 | coordinate | `{"box":1959,"direction":"hi","value":"82511/200000","variable":"e"}` | `82511/200000 + -1 * e` |
| 14 | coordinate | `{"box":1959,"direction":"hi","value":"344349/500000","variable":"f"}` | `344349/500000 + -1 * f` |
| 15 | coordinate | `{"box":1959,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 16 | coordinate | `{"box":1959,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 17 | coordinate | `{"box":1959,"direction":"lo","value":"298399/500000","variable":"r"}` | `-298399/500000 + 1 * r` |
| 18 | coordinate | `{"box":1959,"direction":"lo","value":"182043/500000","variable":"k"}` | `-182043/500000 + 1 * k` |
| 19 | coordinate | `{"box":1959,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 20 | coordinate | `{"box":1959,"direction":"lo","value":"35687/125000","variable":"f"}` | `-35687/125000 + 1 * f` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 5335224000000 | 6 |
| 1 | 7143051000000 | 0 |
| 2 | 3996861000000 | 2 |
| 3 | 3356463000000 | 7 |
| 4 | 2690769000000 | 1 |
| 5 | 2690769000000 | 3 |
| 6 | 2717274000000 | 4 |
| 7 | 146847000000 | 5 |
| 8 | 6254529000000 | 15, 16 |
| 9 | 6223839000000 | 8, 9 |
| 10 | 3356463000000 | 9, 19 |
| 11 | 9332085000000 | 8, 20 |
| 12 | 6047232000000 | 9, 11 |
| 13 | 3996861000000 | 8, 10 |
| 14 | 9833820000000 | 9, 18 |
| 15 | 7143051000000 | 12, 15 |
| 16 | 6047232000000 | 10, 13 |
| 17 | 2690769000000 | 12, 19 |
| 18 | 3996861000000 | 11, 14 |
| 19 | 51324747 | 16 |
| 20 | 93000000 | 8, 16 |
| 21 | 9650331 | 8 |
| 22 | 38367615 | 9 |
| 23 | 32787615 | 17 |
| 24 | 1639958203182 | 11 |
| 25 | 39171600 | 18 |
| 26 | 6620763 | 19 |
| 27 | 4571880 | 15 |
| 28 | 15672825 | 20 |
| 29 | 101474993 | 12 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -7770226123378749/100000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -7770226123378749/100000 | 1 | -7770226123378749/100000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1959 | -7770226123378749/100000 |
