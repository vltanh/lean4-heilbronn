# BITT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 1755

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR+/EHQ+/CFQ-/APS- |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR+/EHQ+/CFQ-/APS-:HLLLHHHLLLL |
| Index | 0 |
| Context | 406 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1754 |
| Coordinate cut | k low 284753/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 105041/1000000 | 1813/6250 | 105041/1000000 | 1813/6250 |
| b | 20783/200000 | 6143/20000 | 20783/200000 | 6143/20000 |
| c | 765641/1000000 | 494639/500000 | 765641/1000000 | 494639/500000 |
| e | 105041/1000000 | 350367/1000000 | 105041/1000000 | 350367/1000000 |
| f | 105041/1000000 | 51897/125000 | 105041/1000000 | 51897/125000 |
| h | 797891/1000000 | 1 | 797891/1000000 | 1 |
| p | 98621/500000 | 113009/250000 | 98621/500000 | 113009/250000 |
| q | 145307/500000 | 2047/4000 | 145307/500000 | 2047/4000 |
| u | 516657/1000000 | 19347/25000 | 516657/1000000 | 19347/25000 |
| v | 243059/1000000 | 519527/1000000 | 243059/1000000 | 519527/1000000 |
| r | 814961/1000000 | 1 | 814961/1000000 | 1 |
| w | 283679/500000 | 1 | 283679/500000 | 1 |
| j | 33847/62500 | 179217/200000 | 33847/62500 | 179217/200000 |
| k | 238307/500000 | 284753/500000 | 238307/500000 | 284753/500000 |

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
| 0 | bound | `{"direction":"lo","ref":"623:1168","triangle":"BQS","value":"121029/1000000"}` | `1 * u * k + -1 * b * k + -1 * v * j + 1 * b * v + -121029/1000000` |
| 1 | bound | `{"direction":"lo","ref":"623:1229","triangle":"FQS","value":"4987/40000"}` | `1 * u * k + -1 * u + -1 * f * k + -1 * v * j + 1 * f * v + 1 * j + -4987/40000` |
| 2 | physical | `{"factor":0,"stage":623}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 3 | physical | `{"factor":10,"stage":623}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 4 | physical | `{"factor":110,"stage":623}` | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -93/1000` |
| 5 | physical | `{"factor":113,"stage":623}` | `-1/1 * p * v + 1/1 * e * p + 1/1 * v + 1/1 * q * u + -1/1 * q + -1/1 * e * u + -93/1000` |
| 6 | physical | `{"factor":117,"stage":623}` | `-1/1 * u * k + 1/1 * e * u + 1/1 * k + 1/1 * v * j + -1/1 * v + -1/1 * e * j + -93/1000` |
| 7 | physical | `{"factor":121,"stage":623}` | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 8 | physical | `{"factor":140,"stage":623}` | `1/1 * f + -1/1 * b` |
| 9 | physical | `{"factor":44,"stage":623}` | `-1/1 * p * k + 1/1 * a * p + 1/1 * q * j + -1/1 * a * j + -93/1000` |
| 10 | physical | `{"factor":47,"stage":623}` | `1/1 * r * k + -1/1 * a * r + -1/1 * w * j + 1/1 * a * j + -93/1000` |
| 11 | physical | `{"factor":67,"stage":623}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 12 | physical | `{"factor":79,"stage":623}` | `1/1 * u * w + -1/1 * b * w + -1/1 * v * r + 1/1 * b * v + -93/1000` |
| 13 | physical | `{"factor":92,"stage":623}` | `-1/1 * f * v + 1/1 * c * v + 1/1 * u + -1/1 * c + -93/1000` |
| 14 | coordinate | `{"box":1755,"direction":"hi","value":"1813/6250","variable":"a"}` | `1813/6250 + -1 * a` |
| 15 | coordinate | `{"box":1755,"direction":"hi","value":"6143/20000","variable":"b"}` | `6143/20000 + -1 * b` |
| 16 | coordinate | `{"box":1755,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 17 | coordinate | `{"box":1755,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 18 | coordinate | `{"box":1755,"direction":"hi","value":"179217/200000","variable":"j"}` | `179217/200000 + -1 * j` |
| 19 | coordinate | `{"box":1755,"direction":"hi","value":"284753/500000","variable":"k"}` | `284753/500000 + -1 * k` |
| 20 | coordinate | `{"box":1755,"direction":"hi","value":"350367/1000000","variable":"e"}` | `350367/1000000 + -1 * e` |
| 21 | coordinate | `{"box":1755,"direction":"hi","value":"51897/125000","variable":"f"}` | `51897/125000 + -1 * f` |
| 22 | coordinate | `{"box":1755,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 23 | coordinate | `{"box":1755,"direction":"hi","value":"113009/250000","variable":"p"}` | `113009/250000 + -1 * p` |
| 24 | coordinate | `{"box":1755,"direction":"hi","value":"2047/4000","variable":"q"}` | `2047/4000 + -1 * q` |
| 25 | coordinate | `{"box":1755,"direction":"hi","value":"19347/25000","variable":"u"}` | `19347/25000 + -1 * u` |
| 26 | coordinate | `{"box":1755,"direction":"hi","value":"519527/1000000","variable":"v"}` | `519527/1000000 + -1 * v` |
| 27 | coordinate | `{"box":1755,"direction":"lo","value":"105041/1000000","variable":"a"}` | `-105041/1000000 + 1 * a` |
| 28 | coordinate | `{"box":1755,"direction":"lo","value":"20783/200000","variable":"b"}` | `-20783/200000 + 1 * b` |
| 29 | coordinate | `{"box":1755,"direction":"lo","value":"814961/1000000","variable":"r"}` | `-814961/1000000 + 1 * r` |
| 30 | coordinate | `{"box":1755,"direction":"lo","value":"283679/500000","variable":"w"}` | `-283679/500000 + 1 * w` |
| 31 | coordinate | `{"box":1755,"direction":"lo","value":"33847/62500","variable":"j"}` | `-33847/62500 + 1 * j` |
| 32 | coordinate | `{"box":1755,"direction":"lo","value":"765641/1000000","variable":"c"}` | `-765641/1000000 + 1 * c` |
| 33 | coordinate | `{"box":1755,"direction":"lo","value":"105041/1000000","variable":"e"}` | `-105041/1000000 + 1 * e` |
| 34 | coordinate | `{"box":1755,"direction":"lo","value":"105041/1000000","variable":"f"}` | `-105041/1000000 + 1 * f` |
| 35 | coordinate | `{"box":1755,"direction":"lo","value":"98621/500000","variable":"p"}` | `-98621/500000 + 1 * p` |
| 36 | coordinate | `{"box":1755,"direction":"lo","value":"145307/500000","variable":"q"}` | `-145307/500000 + 1 * q` |
| 37 | coordinate | `{"box":1755,"direction":"lo","value":"516657/1000000","variable":"u"}` | `-516657/1000000 + 1 * u` |
| 38 | coordinate | `{"box":1755,"direction":"lo","value":"243059/1000000","variable":"v"}` | `-243059/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 5277000000 | 2 |
| 1 | 21170000000 | 3 |
| 2 | 28342000000 | 9 |
| 3 | 28342000000 | 10 |
| 4 | 10617000000 | 11 |
| 5 | 24231000000 | 12 |
| 6 | 9173000000 | 0 |
| 7 | 3186000000 | 13 |
| 8 | 33351000000 | 4 |
| 9 | 79763000000 | 5 |
| 10 | 12359000000 | 6 |
| 11 | 8426000000 | 7 |
| 12 | 3186000000 | 1 |
| 13 | 1254000000 | 8 |
| 14 | 26447000000 | 27, 28 |
| 15 | 5277000000 | 14, 32 |
| 16 | 31787000000 | 24, 28 |
| 17 | 49512000000 | 23, 27 |
| 18 | 33404000000 | 26, 28 |
| 19 | 24231000000 | 28, 30 |
| 20 | 25233000000 | 27, 29 |
| 21 | 3109000000 | 14, 16 |
| 22 | 9173000000 | 15, 19 |
| 23 | 3186000000 | 26, 32 |
| 24 | 33573000000 | 23, 33 |
| 25 | 46190000000 | 20, 35 |
| 26 | 34053000000 | 33, 37 |
| 27 | 12359000000 | 31, 33 |
| 28 | 8426000000 | 22, 34 |
| 29 | 10617000000 | 34, 36 |
| 30 | 8426000000 | 30, 34 |
| 31 | 3186000000 | 19, 21 |
| 32 | 33351000000 | 22, 25 |
| 33 | 8426000000 | 16, 22 |
| 34 | 79763000000 | 35, 38 |
| 35 | 79763000000 | 25, 36 |
| 36 | 28342000000 | 19, 23 |
| 37 | 1409000000 | 18, 36 |
| 38 | 26933000000 | 24, 31 |
| 39 | 24231000000 | 25, 30 |
| 40 | 24231000000 | 16, 26 |
| 41 | 28342000000 | 19, 29 |
| 42 | 28342000000 | 30, 31 |
| 43 | 103915 | 27 |
| 44 | 105041 | 28 |
| 45 | 270854 | 35 |
| 46 | 632636 | 15 |
| 47 | 64993 | 37 |
| 48 | 34818 | 32 |
| 49 | 104760 | 38 |
| 50 | 403586 | 22 |
| 51 | 120029 | 24 |
| 52 | 18504782664 | 19 |
| 53 | 77958 | 29 |
| 54 | 175721 | 18 |
| 55 | 453462 | 34 |
| 56 | 446986 | 14 |
| 57 | 179665 | 17 |
| 58 | 50619 | 20 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -520048005930501/500000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -520048005930501/500000 | 1 | -520048005930501/500000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1755 | -520048005930501/500000 |

## Stage 1756

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR+/EHQ+/CFQ-/APS- |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR+/EHQ+/CFQ-/APS-:HLLLHHHLLLH |
| Index | 0 |
| Context | 406 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1754 |
| Coordinate cut | k high 284753/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 105041/1000000 | 1813/6250 | 105041/1000000 | 1813/6250 |
| b | 20783/200000 | 6143/20000 | 20783/200000 | 6143/20000 |
| c | 765641/1000000 | 494639/500000 | 765641/1000000 | 494639/500000 |
| e | 105041/1000000 | 350367/1000000 | 105041/1000000 | 350367/1000000 |
| f | 105041/1000000 | 51897/125000 | 105041/1000000 | 51897/125000 |
| h | 797891/1000000 | 1 | 797891/1000000 | 1 |
| p | 98621/500000 | 113009/250000 | 98621/500000 | 113009/250000 |
| q | 145307/500000 | 2047/4000 | 145307/500000 | 2047/4000 |
| u | 516657/1000000 | 19347/25000 | 516657/1000000 | 19347/25000 |
| v | 243059/1000000 | 519527/1000000 | 243059/1000000 | 519527/1000000 |
| r | 814961/1000000 | 1 | 814961/1000000 | 1 |
| w | 283679/500000 | 1 | 283679/500000 | 1 |
| j | 33847/62500 | 179217/200000 | 33847/62500 | 179217/200000 |
| k | 284753/500000 | 8033/8963 | 284753/500000 | 8033/8963 |

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


## Stage 1757

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR+/EHQ+/CFQ-/APS- |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR+/EHQ+/CFQ-/APS-:HLLLHHHLLLHL |
| Index | 0 |
| Context | 406 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1756 |
| Coordinate cut | j low 643207/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 105041/1000000 | 1813/6250 | 105041/1000000 | 1813/6250 |
| b | 20783/200000 | 6143/20000 | 20783/200000 | 6143/20000 |
| c | 765641/1000000 | 494639/500000 | 765641/1000000 | 494639/500000 |
| e | 105041/1000000 | 350367/1000000 | 105041/1000000 | 350367/1000000 |
| f | 105041/1000000 | 51897/125000 | 105041/1000000 | 51897/125000 |
| h | 797891/1000000 | 1 | 797891/1000000 | 1 |
| p | 98621/500000 | 113009/250000 | 98621/500000 | 113009/250000 |
| q | 145307/500000 | 2047/4000 | 145307/500000 | 2047/4000 |
| u | 516657/1000000 | 19347/25000 | 516657/1000000 | 19347/25000 |
| v | 243059/1000000 | 519527/1000000 | 243059/1000000 | 519527/1000000 |
| r | 814961/1000000 | 1 | 814961/1000000 | 1 |
| w | 283679/500000 | 1 | 283679/500000 | 1 |
| j | 33847/62500 | 643207/1000000 | 33847/62500 | 643207/1000000 |
| k | 284753/500000 | 8033/8963 | 284753/500000 | 8033/8963 |

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
| 0 | bound | `{"direction":"lo","ref":"623:1229","triangle":"FQS","value":"4987/40000"}` | `1 * u * k + -1 * u + -1 * f * k + -1 * v * j + 1 * f * v + 1 * j + -4987/40000` |
| 1 | physical | `{"factor":0,"stage":623}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 2 | physical | `{"factor":10,"stage":623}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 3 | physical | `{"factor":110,"stage":623}` | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -93/1000` |
| 4 | physical | `{"factor":113,"stage":623}` | `-1/1 * p * v + 1/1 * e * p + 1/1 * v + 1/1 * q * u + -1/1 * q + -1/1 * e * u + -93/1000` |
| 5 | physical | `{"factor":115,"stage":623}` | `-1/1 * p * k + 1/1 * e * p + 1/1 * k + 1/1 * q * j + -1/1 * q + -1/1 * e * j + -279/1000` |
| 6 | physical | `{"factor":117,"stage":623}` | `-1/1 * u * k + 1/1 * e * u + 1/1 * k + 1/1 * v * j + -1/1 * v + -1/1 * e * j + -93/1000` |
| 7 | physical | `{"factor":121,"stage":623}` | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 8 | physical | `{"factor":142,"stage":623}` | `1/1 * f + -1/1 * e` |
| 9 | physical | `{"factor":36,"stage":623}` | `-1/1 * f * w + 1/1 * a * f + 1/1 * r + -1/1 * a * r + -13857/20000` |
| 10 | physical | `{"factor":44,"stage":623}` | `-1/1 * p * k + 1/1 * a * p + 1/1 * q * j + -1/1 * a * j + -93/1000` |
| 11 | physical | `{"factor":47,"stage":623}` | `1/1 * r * k + -1/1 * a * r + -1/1 * w * j + 1/1 * a * j + -93/1000` |
| 12 | physical | `{"factor":67,"stage":623}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 13 | physical | `{"factor":79,"stage":623}` | `1/1 * u * w + -1/1 * b * w + -1/1 * v * r + 1/1 * b * v + -93/1000` |
| 14 | physical | `{"factor":92,"stage":623}` | `-1/1 * f * v + 1/1 * c * v + 1/1 * u + -1/1 * c + -93/1000` |
| 15 | coordinate | `{"box":1757,"direction":"hi","value":"1813/6250","variable":"a"}` | `1813/6250 + -1 * a` |
| 16 | coordinate | `{"box":1757,"direction":"hi","value":"6143/20000","variable":"b"}` | `6143/20000 + -1 * b` |
| 17 | coordinate | `{"box":1757,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 18 | coordinate | `{"box":1757,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 19 | coordinate | `{"box":1757,"direction":"hi","value":"643207/1000000","variable":"j"}` | `643207/1000000 + -1 * j` |
| 20 | coordinate | `{"box":1757,"direction":"hi","value":"8033/8963","variable":"k"}` | `8033/8963 + -1 * k` |
| 21 | coordinate | `{"box":1757,"direction":"hi","value":"494639/500000","variable":"c"}` | `494639/500000 + -1 * c` |
| 22 | coordinate | `{"box":1757,"direction":"hi","value":"350367/1000000","variable":"e"}` | `350367/1000000 + -1 * e` |
| 23 | coordinate | `{"box":1757,"direction":"hi","value":"51897/125000","variable":"f"}` | `51897/125000 + -1 * f` |
| 24 | coordinate | `{"box":1757,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 25 | coordinate | `{"box":1757,"direction":"hi","value":"113009/250000","variable":"p"}` | `113009/250000 + -1 * p` |
| 26 | coordinate | `{"box":1757,"direction":"hi","value":"2047/4000","variable":"q"}` | `2047/4000 + -1 * q` |
| 27 | coordinate | `{"box":1757,"direction":"hi","value":"19347/25000","variable":"u"}` | `19347/25000 + -1 * u` |
| 28 | coordinate | `{"box":1757,"direction":"hi","value":"519527/1000000","variable":"v"}` | `519527/1000000 + -1 * v` |
| 29 | coordinate | `{"box":1757,"direction":"lo","value":"105041/1000000","variable":"a"}` | `-105041/1000000 + 1 * a` |
| 30 | coordinate | `{"box":1757,"direction":"lo","value":"20783/200000","variable":"b"}` | `-20783/200000 + 1 * b` |
| 31 | coordinate | `{"box":1757,"direction":"lo","value":"814961/1000000","variable":"r"}` | `-814961/1000000 + 1 * r` |
| 32 | coordinate | `{"box":1757,"direction":"lo","value":"283679/500000","variable":"w"}` | `-283679/500000 + 1 * w` |
| 33 | coordinate | `{"box":1757,"direction":"lo","value":"33847/62500","variable":"j"}` | `-33847/62500 + 1 * j` |
| 34 | coordinate | `{"box":1757,"direction":"lo","value":"284753/500000","variable":"k"}` | `-284753/500000 + 1 * k` |
| 35 | coordinate | `{"box":1757,"direction":"lo","value":"765641/1000000","variable":"c"}` | `-765641/1000000 + 1 * c` |
| 36 | coordinate | `{"box":1757,"direction":"lo","value":"105041/1000000","variable":"e"}` | `-105041/1000000 + 1 * e` |
| 37 | coordinate | `{"box":1757,"direction":"lo","value":"105041/1000000","variable":"f"}` | `-105041/1000000 + 1 * f` |
| 38 | coordinate | `{"box":1757,"direction":"lo","value":"98621/500000","variable":"p"}` | `-98621/500000 + 1 * p` |
| 39 | coordinate | `{"box":1757,"direction":"lo","value":"145307/500000","variable":"q"}` | `-145307/500000 + 1 * q` |
| 40 | coordinate | `{"box":1757,"direction":"lo","value":"516657/1000000","variable":"u"}` | `-516657/1000000 + 1 * u` |
| 41 | coordinate | `{"box":1757,"direction":"lo","value":"243059/1000000","variable":"v"}` | `-243059/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 30499000000 | 1 |
| 1 | 16454000000 | 2 |
| 2 | 3024000000 | 9 |
| 3 | 51054000000 | 10 |
| 4 | 1510000000 | 11 |
| 5 | 6502000000 | 12 |
| 6 | 6559000000 | 13 |
| 7 | 18413000000 | 14 |
| 8 | 53436000000 | 3 |
| 9 | 61352000000 | 4 |
| 10 | 8045000000 | 5 |
| 11 | 2348000000 | 6 |
| 12 | 13501000000 | 7 |
| 13 | 2348000000 | 0 |
| 14 | 4126000000 | 8 |
| 15 | 46953000000 | 29, 30 |
| 16 | 30499000000 | 15, 35 |
| 17 | 3024000000 | 23, 29 |
| 18 | 22956000000 | 26, 30 |
| 19 | 9887000000 | 25, 29 |
| 20 | 57622000000 | 15, 38 |
| 21 | 6559000000 | 28, 30 |
| 22 | 6559000000 | 30, 32 |
| 23 | 4534000000 | 29, 31 |
| 24 | 49544000000 | 15, 19 |
| 25 | 18413000000 | 28, 35 |
| 26 | 69397000000 | 22, 38 |
| 27 | 5568000000 | 36, 40 |
| 28 | 10394000000 | 19, 22 |
| 29 | 13501000000 | 24, 37 |
| 30 | 6502000000 | 23, 26 |
| 31 | 16065000000 | 37, 41 |
| 32 | 16525000000 | 32, 37 |
| 33 | 2348000000 | 34, 37 |
| 34 | 53436000000 | 24, 27 |
| 35 | 13501000000 | 17, 24 |
| 36 | 61352000000 | 38, 41 |
| 37 | 61352000000 | 26, 40 |
| 38 | 59100000000 | 34, 38 |
| 39 | 59100000000 | 19, 39 |
| 40 | 6559000000 | 18, 40 |
| 41 | 6559000000 | 17, 28 |
| 42 | 1510000000 | 17, 34 |
| 43 | 1510000000 | 18, 19 |
| 44 | 1000000 | 29, 38 |
| 45 | 197242 | 29 |
| 46 | 116583 | 38 |
| 47 | 120573 | 17 |
| 48 | 1000000 | 25, 34 |
| 49 | 569506 | 25 |
| 50 | 452036 | 20 |
| 51 | 1000000 | 33, 39 |
| 52 | 541552 | 39 |
| 53 | 441332 | 33 |
| 54 | 19398 | 16 |
| 55 | 17712 | 27 |
| 56 | 200571 | 21 |
| 57 | 348631 | 41 |
| 58 | 106861 | 24 |
| 59 | 472352 | 26 |
| 60 | 638468 | 34 |
| 61 | 1000000 | 22, 33 |
| 62 | 541552 | 22 |
| 63 | 350367 | 19 |
| 64 | 288389 | 37 |
| 65 | 236660 | 36 |
| 66 | 333762 | 15 |
| 67 | 129683 | 18 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -12187747141932317937/8963000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -12187747141932317937/8963000000 | 1 | -12187747141932317937/8963000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1757 | -12187747141932317937/8963000000 |

## Stage 1758

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR+/EHQ+/CFQ-/APS- |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR+/EHQ+/CFQ-/APS-:HLLLHHHLLLHH |
| Index | 0 |
| Context | 406 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1756 |
| Coordinate cut | j high 643207/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 105041/1000000 | 1813/6250 | 105041/1000000 | 1813/6250 |
| b | 20783/200000 | 6143/20000 | 20783/200000 | 6143/20000 |
| c | 765641/1000000 | 494639/500000 | 765641/1000000 | 494639/500000 |
| e | 105041/1000000 | 350367/1000000 | 105041/1000000 | 350367/1000000 |
| f | 105041/1000000 | 51897/125000 | 105041/1000000 | 51897/125000 |
| h | 797891/1000000 | 1 | 797891/1000000 | 1 |
| p | 98621/500000 | 113009/250000 | 98621/500000 | 113009/250000 |
| q | 145307/500000 | 2047/4000 | 145307/500000 | 2047/4000 |
| u | 516657/1000000 | 19347/25000 | 516657/1000000 | 19347/25000 |
| v | 243059/1000000 | 519527/1000000 | 243059/1000000 | 519527/1000000 |
| r | 814961/1000000 | 1 | 814961/1000000 | 1 |
| w | 283679/500000 | 1 | 283679/500000 | 1 |
| j | 643207/1000000 | 179217/200000 | 643207/1000000 | 179217/200000 |
| k | 284753/500000 | 8033/8963 | 284753/500000 | 8033/8963 |

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


## Stage 1759

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR+/EHQ+/CFQ-/APS- |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR+/EHQ+/CFQ-/APS-:HLLLHHHLLLHHL |
| Index | 0 |
| Context | 406 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1758 |
| Coordinate cut | w low 89213/100000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 105041/1000000 | 1813/6250 | 105041/1000000 | 1813/6250 |
| b | 20783/200000 | 6143/20000 | 20783/200000 | 6143/20000 |
| c | 765641/1000000 | 494639/500000 | 765641/1000000 | 494639/500000 |
| e | 105041/1000000 | 350367/1000000 | 105041/1000000 | 350367/1000000 |
| f | 105041/1000000 | 51897/125000 | 105041/1000000 | 51897/125000 |
| h | 797891/1000000 | 1 | 797891/1000000 | 1 |
| p | 98621/500000 | 113009/250000 | 98621/500000 | 113009/250000 |
| q | 145307/500000 | 2047/4000 | 145307/500000 | 2047/4000 |
| u | 516657/1000000 | 19347/25000 | 516657/1000000 | 19347/25000 |
| v | 243059/1000000 | 519527/1000000 | 243059/1000000 | 519527/1000000 |
| r | 814961/1000000 | 1 | 814961/1000000 | 1 |
| w | 283679/500000 | 89213/100000 | 283679/500000 | 89213/100000 |
| j | 643207/1000000 | 179217/200000 | 643207/1000000 | 179217/200000 |
| k | 284753/500000 | 8033/8963 | 284753/500000 | 8033/8963 |

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
