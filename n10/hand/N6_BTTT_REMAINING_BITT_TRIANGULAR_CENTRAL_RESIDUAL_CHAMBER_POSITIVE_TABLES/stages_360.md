# BITT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 1800

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR+/EHQ-/CFQ-/APS- |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR+/EHQ-/CFQ-/APS-:LHHLHLLL |
| Index | 0 |
| Context | 413 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1799 |
| Coordinate cut | u low 285001/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 52569/500000 | 289273/1000000 | 52569/500000 | 289273/1000000 |
| b | 51963/500000 | 6143/20000 | 51963/500000 | 6143/20000 |
| c | 135501/250000 | 61219/80000 | 135501/250000 | 61219/80000 |
| e | 52569/500000 | 59/125 | 52569/500000 | 59/125 |
| f | 52569/500000 | 205551/500000 | 52569/500000 | 205551/500000 |
| h | 676291/1000000 | 1 | 676291/1000000 | 1 |
| p | 197279/1000000 | 606611/1000000 | 197279/1000000 | 606611/1000000 |
| q | 29223/100000 | 34659/62500 | 29223/100000 | 34659/62500 |
| u | 221499/500000 | 285001/500000 | 221499/500000 | 285001/500000 |
| v | 250663/1000000 | 564631/1000000 | 250663/1000000 | 564631/1000000 |
| r | 101983/125000 | 1 | 101983/125000 | 1 |
| w | 143681/250000 | 1 | 143681/250000 | 1 |
| j | 509771/1000000 | 448037/500000 | 509771/1000000 | 448037/500000 |
| k | 483539/1000000 | 8033/8963 | 483539/1000000 | 8033/8963 |

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
| 0 | bound | `{"direction":"lo","ref":"630:1240","triangle":"APR","value":"110647/1000000"}` | `-1 * p * w + 1 * a * p + 1 * q * r + -1 * a * r + -110647/1000000` |
| 1 | bound | `{"direction":"lo","ref":"630:1403","triangle":"AHP","value":"789/6250"}` | `1 * h * p + -1 * a * p + -789/6250` |
| 2 | physical | `{"factor":0,"stage":630}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 3 | physical | `{"factor":10,"stage":630}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 4 | physical | `{"factor":104,"stage":630}` | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 5 | physical | `{"factor":109,"stage":630}` | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 6 | physical | `{"factor":35,"stage":630}` | `-1/1 * f * w + 1/1 * a * f + 1/1 * r + -1/1 * a * r + -13857/20000` |
| 7 | physical | `{"factor":43,"stage":630}` | `-1/1 * p * k + 1/1 * a * p + 1/1 * q * j + -1/1 * a * j + -93/1000` |
| 8 | physical | `{"factor":46,"stage":630}` | `1/1 * r * k + -1/1 * a * r + -1/1 * w * j + 1/1 * a * j + -93/1000` |
| 9 | physical | `{"factor":47,"stage":630}` | `1/1 * c * e + -1/1 * b * e + -93/1000` |
| 10 | physical | `{"factor":77,"stage":630}` | `1/1 * u * w + -1/1 * b * w + -1/1 * v * r + 1/1 * b * v + -93/1000` |
| 11 | physical | `{"factor":93,"stage":630}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 12 | coordinate | `{"box":1800,"direction":"hi","value":"289273/1000000","variable":"a"}` | `289273/1000000 + -1 * a` |
| 13 | coordinate | `{"box":1800,"direction":"hi","value":"6143/20000","variable":"b"}` | `6143/20000 + -1 * b` |
| 14 | coordinate | `{"box":1800,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 15 | coordinate | `{"box":1800,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 16 | coordinate | `{"box":1800,"direction":"hi","value":"448037/500000","variable":"j"}` | `448037/500000 + -1 * j` |
| 17 | coordinate | `{"box":1800,"direction":"hi","value":"8033/8963","variable":"k"}` | `8033/8963 + -1 * k` |
| 18 | coordinate | `{"box":1800,"direction":"hi","value":"61219/80000","variable":"c"}` | `61219/80000 + -1 * c` |
| 19 | coordinate | `{"box":1800,"direction":"hi","value":"59/125","variable":"e"}` | `59/125 + -1 * e` |
| 20 | coordinate | `{"box":1800,"direction":"hi","value":"205551/500000","variable":"f"}` | `205551/500000 + -1 * f` |
| 21 | coordinate | `{"box":1800,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 22 | coordinate | `{"box":1800,"direction":"hi","value":"606611/1000000","variable":"p"}` | `606611/1000000 + -1 * p` |
| 23 | coordinate | `{"box":1800,"direction":"hi","value":"34659/62500","variable":"q"}` | `34659/62500 + -1 * q` |
| 24 | coordinate | `{"box":1800,"direction":"hi","value":"285001/500000","variable":"u"}` | `285001/500000 + -1 * u` |
| 25 | coordinate | `{"box":1800,"direction":"hi","value":"564631/1000000","variable":"v"}` | `564631/1000000 + -1 * v` |
| 26 | coordinate | `{"box":1800,"direction":"lo","value":"52569/500000","variable":"a"}` | `-52569/500000 + 1 * a` |
| 27 | coordinate | `{"box":1800,"direction":"lo","value":"51963/500000","variable":"b"}` | `-51963/500000 + 1 * b` |
| 28 | coordinate | `{"box":1800,"direction":"lo","value":"101983/125000","variable":"r"}` | `-101983/125000 + 1 * r` |
| 29 | coordinate | `{"box":1800,"direction":"lo","value":"143681/250000","variable":"w"}` | `-143681/250000 + 1 * w` |
| 30 | coordinate | `{"box":1800,"direction":"lo","value":"509771/1000000","variable":"j"}` | `-509771/1000000 + 1 * j` |
| 31 | coordinate | `{"box":1800,"direction":"lo","value":"483539/1000000","variable":"k"}` | `-483539/1000000 + 1 * k` |
| 32 | coordinate | `{"box":1800,"direction":"lo","value":"52569/500000","variable":"e"}` | `-52569/500000 + 1 * e` |
| 33 | coordinate | `{"box":1800,"direction":"lo","value":"52569/500000","variable":"f"}` | `-52569/500000 + 1 * f` |
| 34 | coordinate | `{"box":1800,"direction":"lo","value":"676291/1000000","variable":"h"}` | `-676291/1000000 + 1 * h` |
| 35 | coordinate | `{"box":1800,"direction":"lo","value":"197279/1000000","variable":"p"}` | `-197279/1000000 + 1 * p` |
| 36 | coordinate | `{"box":1800,"direction":"lo","value":"29223/100000","variable":"q"}` | `-29223/100000 + 1 * q` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 601399374000000 | 2 |
| 1 | 887103962000000 | 3 |
| 2 | 234651340000000 | 6 |
| 3 | 491925292000000 | 1 |
| 4 | 325052158000000 | 0 |
| 5 | 40476908000000 | 7 |
| 6 | 9787596000000 | 8 |
| 7 | 522453270000000 | 9 |
| 8 | 644314218000000 | 10 |
| 9 | 512127894000000 | 11 |
| 10 | 362947722000000 | 4 |
| 11 | 902143876000000 | 5 |
| 12 | 1488503336000000 | 26, 27 |
| 13 | 601399374000000 | 18, 26 |
| 14 | 522453270000000 | 27, 32 |
| 15 | 234651340000000 | 12, 33 |
| 16 | 887103962000000 | 23, 27 |
| 17 | 760707736000000 | 12, 35 |
| 18 | 644314218000000 | 25, 27 |
| 19 | 644314218000000 | 13, 15 |
| 20 | 569491094000000 | 26, 28 |
| 21 | 30689312000000 | 26, 30 |
| 22 | 522453270000000 | 18, 32 |
| 23 | 512127894000000 | 18, 34 |
| 24 | 512127894000000 | 18, 23 |
| 25 | 362947722000000 | 32, 33 |
| 26 | 539196154000000 | 19, 24 |
| 27 | 362947722000000 | 25, 33 |
| 28 | 234651340000000 | 15, 20 |
| 29 | 20220528000000 | 34, 35 |
| 30 | 902143876000000 | 24, 34 |
| 31 | 325052158000000 | 29, 35 |
| 32 | 325052158000000 | 23, 28 |
| 33 | 40476908000000 | 31, 35 |
| 34 | 35959556000000 | 16, 36 |
| 35 | 4517352000000 | 23, 30 |
| 36 | 644314218000000 | 24, 29 |
| 37 | 644314218000000 | 14, 25 |
| 38 | 9787596000000 | 17, 28 |
| 39 | 9787596000000 | 15, 16 |
| 40 | 6048745210 | 14 |
| 41 | 14625178064 | 26 |
| 42 | 1884703788 | 28 |
| 43 | 17926000000 | 21, 35 |
| 44 | 3536423354 | 21 |
| 45 | 17926000000 | 22 |
| 46 | 2533015504 | 25 |
| 47 | 362966321981748 | 24 |
| 48 | 9678650735 | 34 |
| 49 | 4411794749 | 12 |
| 50 | 4212914742 | 27 |
| 51 | 180509653995690 | 18 |
| 52 | 1871895661 | 19 |
| 53 | 1105299234 | 33 |
| 54 | 17289134035 | 23 |
| 55 | 10192257524 | 35 |
| 56 | 2729323130 | 29 |
| 57 | 677387688 | 30 |
| 58 | 103289612 | 17 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -7571244144867631061/125000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -7571244144867631061/125000 | 1 | -7571244144867631061/125000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1800 | -7571244144867631061/125000 |

## Stage 1801

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR+/EHQ-/CFQ-/APS- |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR+/EHQ-/CFQ-/APS-:LHHLHLLH |
| Index | 0 |
| Context | 413 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1799 |
| Coordinate cut | u high 285001/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 52569/500000 | 289273/1000000 | 52569/500000 | 289273/1000000 |
| b | 51963/500000 | 6143/20000 | 51963/500000 | 6143/20000 |
| c | 135501/250000 | 61219/80000 | 135501/250000 | 61219/80000 |
| e | 52569/500000 | 59/125 | 52569/500000 | 59/125 |
| f | 52569/500000 | 205551/500000 | 52569/500000 | 205551/500000 |
| h | 676291/1000000 | 1 | 676291/1000000 | 1 |
| p | 197279/1000000 | 606611/1000000 | 197279/1000000 | 606611/1000000 |
| q | 29223/100000 | 34659/62500 | 29223/100000 | 34659/62500 |
| u | 285001/500000 | 450533/500000 | 285001/500000 | 450533/500000 |
| v | 250663/1000000 | 564631/1000000 | 250663/1000000 | 564631/1000000 |
| r | 101983/125000 | 1 | 101983/125000 | 1 |
| w | 143681/250000 | 1 | 143681/250000 | 1 |
| j | 509771/1000000 | 448037/500000 | 509771/1000000 | 448037/500000 |
| k | 483539/1000000 | 8033/8963 | 483539/1000000 | 8033/8963 |

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


## Stage 1802

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR+/EHQ-/CFQ-/APS- |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR+/EHQ-/CFQ-/APS-:LHHLHLLHL |
| Index | 0 |
| Context | 413 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1801 |
| Coordinate cut | k low 596999/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 52569/500000 | 289273/1000000 | 52569/500000 | 289273/1000000 |
| b | 51963/500000 | 6143/20000 | 51963/500000 | 6143/20000 |
| c | 135501/250000 | 61219/80000 | 135501/250000 | 61219/80000 |
| e | 52569/500000 | 59/125 | 52569/500000 | 59/125 |
| f | 52569/500000 | 205551/500000 | 52569/500000 | 205551/500000 |
| h | 676291/1000000 | 1 | 676291/1000000 | 1 |
| p | 197279/1000000 | 606611/1000000 | 197279/1000000 | 606611/1000000 |
| q | 29223/100000 | 34659/62500 | 29223/100000 | 34659/62500 |
| u | 285001/500000 | 450533/500000 | 285001/500000 | 450533/500000 |
| v | 250663/1000000 | 564631/1000000 | 250663/1000000 | 564631/1000000 |
| r | 101983/125000 | 1 | 101983/125000 | 1 |
| w | 143681/250000 | 1 | 143681/250000 | 1 |
| j | 509771/1000000 | 448037/500000 | 509771/1000000 | 448037/500000 |
| k | 483539/1000000 | 596999/1000000 | 483539/1000000 | 596999/1000000 |

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
| 0 | bound | `{"direction":"lo","ref":"630:1483","triangle":"BQS","value":"61127/500000"}` | `1 * u * k + -1 * b * k + -1 * v * j + 1 * b * v + -61127/500000` |
| 1 | physical | `{"factor":10,"stage":630}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 2 | physical | `{"factor":104,"stage":630}` | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 3 | physical | `{"factor":109,"stage":630}` | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 4 | physical | `{"factor":116,"stage":630}` | `-1/1 * u * k + 1/1 * e * u + 1/1 * k + 1/1 * v * j + -1/1 * v + -1/1 * e * j + -93/1000` |
| 5 | physical | `{"factor":126,"stage":630}` | `1/1 * u * k + -1/1 * u + -1/1 * f * k + -1/1 * v * j + 1/1 * f * v + 1/1 * j + -93/1000` |
| 6 | physical | `{"factor":43,"stage":630}` | `-1/1 * p * k + 1/1 * a * p + 1/1 * q * j + -1/1 * a * j + -93/1000` |
| 7 | physical | `{"factor":47,"stage":630}` | `1/1 * c * e + -1/1 * b * e + -93/1000` |
| 8 | physical | `{"factor":65,"stage":630}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 9 | physical | `{"factor":7,"stage":630}` | `1/1 * b * h + -1/1 * a * b + -93/1000` |
| 10 | physical | `{"factor":84,"stage":630}` | `1/1 * v + -1/1 * c * v + -1/1 * e * u + 1/1 * c * e + -93/1000` |
| 11 | physical | `{"factor":93,"stage":630}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 12 | coordinate | `{"box":1802,"direction":"hi","value":"289273/1000000","variable":"a"}` | `289273/1000000 + -1 * a` |
| 13 | coordinate | `{"box":1802,"direction":"hi","value":"6143/20000","variable":"b"}` | `6143/20000 + -1 * b` |
| 14 | coordinate | `{"box":1802,"direction":"hi","value":"448037/500000","variable":"j"}` | `448037/500000 + -1 * j` |
| 15 | coordinate | `{"box":1802,"direction":"hi","value":"596999/1000000","variable":"k"}` | `596999/1000000 + -1 * k` |
| 16 | coordinate | `{"box":1802,"direction":"hi","value":"61219/80000","variable":"c"}` | `61219/80000 + -1 * c` |
| 17 | coordinate | `{"box":1802,"direction":"hi","value":"205551/500000","variable":"f"}` | `205551/500000 + -1 * f` |
| 18 | coordinate | `{"box":1802,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 19 | coordinate | `{"box":1802,"direction":"hi","value":"606611/1000000","variable":"p"}` | `606611/1000000 + -1 * p` |
| 20 | coordinate | `{"box":1802,"direction":"hi","value":"34659/62500","variable":"q"}` | `34659/62500 + -1 * q` |
| 21 | coordinate | `{"box":1802,"direction":"hi","value":"450533/500000","variable":"u"}` | `450533/500000 + -1 * u` |
| 22 | coordinate | `{"box":1802,"direction":"hi","value":"564631/1000000","variable":"v"}` | `564631/1000000 + -1 * v` |
| 23 | coordinate | `{"box":1802,"direction":"lo","value":"52569/500000","variable":"a"}` | `-52569/500000 + 1 * a` |
| 24 | coordinate | `{"box":1802,"direction":"lo","value":"51963/500000","variable":"b"}` | `-51963/500000 + 1 * b` |
| 25 | coordinate | `{"box":1802,"direction":"lo","value":"509771/1000000","variable":"j"}` | `-509771/1000000 + 1 * j` |
| 26 | coordinate | `{"box":1802,"direction":"lo","value":"52569/500000","variable":"e"}` | `-52569/500000 + 1 * e` |
| 27 | coordinate | `{"box":1802,"direction":"lo","value":"52569/500000","variable":"f"}` | `-52569/500000 + 1 * f` |
| 28 | coordinate | `{"box":1802,"direction":"lo","value":"676291/1000000","variable":"h"}` | `-676291/1000000 + 1 * h` |
| 29 | coordinate | `{"box":1802,"direction":"lo","value":"197279/1000000","variable":"p"}` | `-197279/1000000 + 1 * p` |
| 30 | coordinate | `{"box":1802,"direction":"lo","value":"29223/100000","variable":"q"}` | `-29223/100000 + 1 * q` |
| 31 | coordinate | `{"box":1802,"direction":"lo","value":"250663/1000000","variable":"v"}` | `-250663/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 8672000000 | 9 |
| 1 | 23976000000 | 1 |
| 2 | 31380000000 | 6 |
| 3 | 27618000000 | 7 |
| 4 | 26414000000 | 8 |
| 5 | 119462000000 | 0 |
| 6 | 14108000000 | 10 |
| 7 | 29400000000 | 11 |
| 8 | 118440000000 | 2 |
| 9 | 177886000000 | 3 |
| 10 | 126936000000 | 4 |
| 11 | 7474000000 | 5 |
| 12 | 32650000000 | 23, 24 |
| 13 | 27618000000 | 24, 26 |
| 14 | 8672000000 | 18, 24 |
| 15 | 50390000000 | 20, 24 |
| 16 | 20690000000 | 19, 23 |
| 17 | 34668000000 | 12, 29 |
| 18 | 119462000000 | 22, 24 |
| 19 | 119462000000 | 13, 15 |
| 20 | 31380000000 | 23, 25 |
| 21 | 41726000000 | 16, 26 |
| 22 | 29400000000 | 16, 28 |
| 23 | 29400000000 | 16, 20 |
| 24 | 14108000000 | 16, 22 |
| 25 | 118440000000 | 26, 27 |
| 26 | 53382000000 | 21, 26 |
| 27 | 126936000000 | 25, 26 |
| 28 | 26414000000 | 17, 20 |
| 29 | 125916000000 | 17, 31 |
| 30 | 7474000000 | 15, 17 |
| 31 | 29400000000 | 28, 29 |
| 32 | 177886000000 | 21, 28 |
| 33 | 31380000000 | 15, 19 |
| 34 | 31380000000 | 14, 30 |
| 35 | 2000000 | 12, 24 |
| 36 | 459934 | 12 |
| 37 | 578546 | 13 |
| 38 | 2000000 | 23, 29 |
| 39 | 394558 | 23 |
| 40 | 210276 | 29 |
| 41 | 1037564 | 19 |
| 42 | 1730840 | 24 |
| 43 | 1556594 | 22 |
| 44 | 2000000 | 27, 31 |
| 45 | 501326 | 27 |
| 46 | 210276 | 31 |
| 47 | 1177542 | 21 |
| 48 | 252648 | 18 |
| 49 | 68135217172 | 15 |
| 50 | 850208 | 25 |
| 51 | 59507 | 26 |
| 52 | 1197468 | 30 |
| 53 | 535840 | 16 |
| 54 | 241846 | 17 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -383282961891439/100000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -383282961891439/100000 | 1 | -383282961891439/100000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1802 | -383282961891439/100000 |

## Stage 1803

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR+/EHQ-/CFQ-/APS- |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR+/EHQ-/CFQ-/APS-:LHHLHLLHH |
| Index | 0 |
| Context | 413 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1801 |
| Coordinate cut | k high 596999/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 52569/500000 | 289273/1000000 | 52569/500000 | 289273/1000000 |
| b | 51963/500000 | 6143/20000 | 51963/500000 | 6143/20000 |
| c | 135501/250000 | 61219/80000 | 135501/250000 | 61219/80000 |
| e | 52569/500000 | 59/125 | 52569/500000 | 59/125 |
| f | 52569/500000 | 205551/500000 | 52569/500000 | 205551/500000 |
| h | 676291/1000000 | 1 | 676291/1000000 | 1 |
| p | 197279/1000000 | 606611/1000000 | 197279/1000000 | 606611/1000000 |
| q | 29223/100000 | 34659/62500 | 29223/100000 | 34659/62500 |
| u | 285001/500000 | 450533/500000 | 285001/500000 | 450533/500000 |
| v | 250663/1000000 | 564631/1000000 | 250663/1000000 | 564631/1000000 |
| r | 101983/125000 | 1 | 101983/125000 | 1 |
| w | 143681/250000 | 1 | 143681/250000 | 1 |
| j | 509771/1000000 | 448037/500000 | 509771/1000000 | 448037/500000 |
| k | 596999/1000000 | 8033/8963 | 596999/1000000 | 8033/8963 |

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


## Stage 1804

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR+/EHQ-/CFQ-/APS- |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR+/EHQ-/CFQ-/APS-:LHHLHLLHHL |
| Index | 0 |
| Context | 413 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1803 |
| Coordinate cut | j low 159469/250000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 52569/500000 | 289273/1000000 | 52569/500000 | 289273/1000000 |
| b | 51963/500000 | 6143/20000 | 51963/500000 | 6143/20000 |
| c | 135501/250000 | 61219/80000 | 135501/250000 | 61219/80000 |
| e | 52569/500000 | 59/125 | 52569/500000 | 59/125 |
| f | 52569/500000 | 205551/500000 | 52569/500000 | 205551/500000 |
| h | 676291/1000000 | 1 | 676291/1000000 | 1 |
| p | 197279/1000000 | 606611/1000000 | 197279/1000000 | 606611/1000000 |
| q | 29223/100000 | 34659/62500 | 29223/100000 | 34659/62500 |
| u | 285001/500000 | 450533/500000 | 285001/500000 | 450533/500000 |
| v | 250663/1000000 | 564631/1000000 | 250663/1000000 | 564631/1000000 |
| r | 101983/125000 | 1 | 101983/125000 | 1 |
| w | 143681/250000 | 1 | 143681/250000 | 1 |
| j | 509771/1000000 | 159469/250000 | 509771/1000000 | 159469/250000 |
| k | 596999/1000000 | 8033/8963 | 596999/1000000 | 8033/8963 |

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
| 0 | physical | `{"factor":0,"stage":630}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 1 | physical | `{"factor":10,"stage":630}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 2 | physical | `{"factor":104,"stage":630}` | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 3 | physical | `{"factor":109,"stage":630}` | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 4 | physical | `{"factor":116,"stage":630}` | `-1/1 * u * k + 1/1 * e * u + 1/1 * k + 1/1 * v * j + -1/1 * v + -1/1 * e * j + -93/1000` |
| 5 | physical | `{"factor":126,"stage":630}` | `1/1 * u * k + -1/1 * u + -1/1 * f * k + -1/1 * v * j + 1/1 * f * v + 1/1 * j + -93/1000` |
| 6 | physical | `{"factor":35,"stage":630}` | `-1/1 * f * w + 1/1 * a * f + 1/1 * r + -1/1 * a * r + -13857/20000` |
| 7 | physical | `{"factor":43,"stage":630}` | `-1/1 * p * k + 1/1 * a * p + 1/1 * q * j + -1/1 * a * j + -93/1000` |
| 8 | physical | `{"factor":46,"stage":630}` | `1/1 * r * k + -1/1 * a * r + -1/1 * w * j + 1/1 * a * j + -93/1000` |
| 9 | physical | `{"factor":47,"stage":630}` | `1/1 * c * e + -1/1 * b * e + -93/1000` |
| 10 | physical | `{"factor":65,"stage":630}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 11 | physical | `{"factor":7,"stage":630}` | `1/1 * b * h + -1/1 * a * b + -93/1000` |
| 12 | physical | `{"factor":77,"stage":630}` | `1/1 * u * w + -1/1 * b * w + -1/1 * v * r + 1/1 * b * v + -93/1000` |
| 13 | physical | `{"factor":93,"stage":630}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 14 | coordinate | `{"box":1804,"direction":"hi","value":"289273/1000000","variable":"a"}` | `289273/1000000 + -1 * a` |
| 15 | coordinate | `{"box":1804,"direction":"hi","value":"6143/20000","variable":"b"}` | `6143/20000 + -1 * b` |
| 16 | coordinate | `{"box":1804,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 17 | coordinate | `{"box":1804,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 18 | coordinate | `{"box":1804,"direction":"hi","value":"159469/250000","variable":"j"}` | `159469/250000 + -1 * j` |
| 19 | coordinate | `{"box":1804,"direction":"hi","value":"8033/8963","variable":"k"}` | `8033/8963 + -1 * k` |
| 20 | coordinate | `{"box":1804,"direction":"hi","value":"61219/80000","variable":"c"}` | `61219/80000 + -1 * c` |
| 21 | coordinate | `{"box":1804,"direction":"hi","value":"59/125","variable":"e"}` | `59/125 + -1 * e` |
| 22 | coordinate | `{"box":1804,"direction":"hi","value":"205551/500000","variable":"f"}` | `205551/500000 + -1 * f` |
| 23 | coordinate | `{"box":1804,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 24 | coordinate | `{"box":1804,"direction":"hi","value":"34659/62500","variable":"q"}` | `34659/62500 + -1 * q` |
| 25 | coordinate | `{"box":1804,"direction":"hi","value":"450533/500000","variable":"u"}` | `450533/500000 + -1 * u` |
| 26 | coordinate | `{"box":1804,"direction":"hi","value":"564631/1000000","variable":"v"}` | `564631/1000000 + -1 * v` |
| 27 | coordinate | `{"box":1804,"direction":"lo","value":"52569/500000","variable":"a"}` | `-52569/500000 + 1 * a` |
| 28 | coordinate | `{"box":1804,"direction":"lo","value":"51963/500000","variable":"b"}` | `-51963/500000 + 1 * b` |
| 29 | coordinate | `{"box":1804,"direction":"lo","value":"143681/250000","variable":"w"}` | `-143681/250000 + 1 * w` |
| 30 | coordinate | `{"box":1804,"direction":"lo","value":"509771/1000000","variable":"j"}` | `-509771/1000000 + 1 * j` |
| 31 | coordinate | `{"box":1804,"direction":"lo","value":"596999/1000000","variable":"k"}` | `-596999/1000000 + 1 * k` |
| 32 | coordinate | `{"box":1804,"direction":"lo","value":"52569/500000","variable":"e"}` | `-52569/500000 + 1 * e` |
| 33 | coordinate | `{"box":1804,"direction":"lo","value":"52569/500000","variable":"f"}` | `-52569/500000 + 1 * f` |
| 34 | coordinate | `{"box":1804,"direction":"lo","value":"676291/1000000","variable":"h"}` | `-676291/1000000 + 1 * h` |
| 35 | coordinate | `{"box":1804,"direction":"lo","value":"197279/1000000","variable":"p"}` | `-197279/1000000 + 1 * p` |
| 36 | coordinate | `{"box":1804,"direction":"lo","value":"29223/100000","variable":"q"}` | `-29223/100000 + 1 * q` |
| 37 | coordinate | `{"box":1804,"direction":"lo","value":"285001/500000","variable":"u"}` | `-285001/500000 + 1 * u` |
| 38 | coordinate | `{"box":1804,"direction":"lo","value":"250663/1000000","variable":"v"}` | `-250663/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 59062000000 | 0 |
| 1 | 3428000000 | 11 |
| 2 | 65740000000 | 1 |
| 3 | 4082000000 | 6 |
| 4 | 94778000000 | 7 |
| 5 | 1868000000 | 8 |
| 6 | 18542000000 | 9 |
| 7 | 54752000000 | 10 |
| 8 | 6156000000 | 12 |
| 9 | 65954000000 | 13 |
| 10 | 74722000000 | 2 |
| 11 | 87942000000 | 3 |
| 12 | 28524000000 | 4 |
| 13 | 9822000000 | 5 |
| 14 | 128230000000 | 27, 28 |
| 15 | 59062000000 | 20, 27 |
| 16 | 18542000000 | 28, 32 |
| 17 | 4082000000 | 22, 27 |
| 18 | 3428000000 | 23, 28 |
| 19 | 120492000000 | 24, 28 |
| 20 | 160518000000 | 14, 35 |
| 21 | 6156000000 | 26, 28 |
| 22 | 6156000000 | 28, 29 |
| 23 | 5950000000 | 14, 16 |
| 24 | 92912000000 | 14, 18 |
| 25 | 18542000000 | 20, 32 |
| 26 | 65954000000 | 20, 34 |
| 27 | 65954000000 | 20, 24 |
| 28 | 74722000000 | 32, 33 |
| 29 | 15302000000 | 25, 32 |
| 30 | 28524000000 | 18, 21 |
| 31 | 54752000000 | 22, 24 |
| 32 | 84544000000 | 26, 33 |
| 33 | 4082000000 | 17, 22 |
| 34 | 9822000000 | 31, 33 |
| 35 | 65954000000 | 34, 35 |
| 36 | 87942000000 | 23, 37 |
| 37 | 94778000000 | 31, 35 |
| 38 | 94778000000 | 18, 36 |
| 39 | 6156000000 | 17, 37 |
| 40 | 6156000000 | 16, 26 |
| 41 | 18702000000 | 31, 37 |
| 42 | 18702000000 | 18, 38 |
| 43 | 1868000000 | 16, 31 |
| 44 | 1868000000 | 17, 18 |
| 45 | 151346 | 16 |
| 46 | 2000000 | 14, 30 |
| 47 | 1019542 | 14 |
| 48 | 578546 | 18 |
| 49 | 944422 | 35 |
| 50 | 668604 | 15 |
| 51 | 1887520 | 38 |
| 52 | 2253622 | 37 |
| 53 | 2000000 | 21, 37 |
| 54 | 1140004 | 21 |
| 55 | 944000 | 25 |
| 56 | 509121 | 23 |
| 57 | 1448098 | 19 |
| 58 | 1386610 | 30 |
| 59 | 1359781 | 27 |
| 60 | 16188830990 | 20 |
| 61 | 746895 | 32 |
| 62 | 1097678 | 22 |
| 63 | 267659 | 36 |
| 64 | 506876 | 29 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -4582927193065632929/1120375000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -4582927193065632929/1120375000 | 1 | -4582927193065632929/1120375000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1804 | -4582927193065632929/1120375000 |
