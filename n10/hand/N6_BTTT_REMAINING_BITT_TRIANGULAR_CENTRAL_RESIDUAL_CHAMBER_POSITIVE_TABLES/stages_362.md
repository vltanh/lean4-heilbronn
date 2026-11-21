# BITT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 1810

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR+/EHQ-/CFQ-/APS- |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR+/EHQ-/CFQ-/APS-:LHHLHLLHHHLH |
| Index | 0 |
| Context | 413 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1806 |
| Coordinate cut | w high 828887/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 52569/500000 | 289273/1000000 | 52569/500000 | 289273/1000000 |
| b | 51963/500000 | 6143/20000 | 51963/500000 | 6143/20000 |
| c | 135501/250000 | 61219/80000 | 135501/250000 | 61219/80000 |
| e | 52569/500000 | 59/125 | 52569/500000 | 59/125 |
| f | 52569/500000 | 205551/500000 | 52569/500000 | 205551/500000 |
| h | 676291/1000000 | 1 | 676291/1000000 | 1 |
| p | 197279/1000000 | 90349/250000 | 197279/1000000 | 90349/250000 |
| q | 29223/100000 | 34659/62500 | 29223/100000 | 34659/62500 |
| u | 285001/500000 | 450533/500000 | 285001/500000 | 450533/500000 |
| v | 250663/1000000 | 564631/1000000 | 250663/1000000 | 564631/1000000 |
| r | 101983/125000 | 1 | 101983/125000 | 1 |
| w | 828887/1000000 | 1 | 828887/1000000 | 1 |
| j | 159469/250000 | 448037/500000 | 159469/250000 | 448037/500000 |
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
| 0 | bound | `{"direction":"lo","ref":"630:1240","triangle":"APR","value":"110647/1000000"}` | `-1 * p * w + 1 * a * p + 1 * q * r + -1 * a * r + -110647/1000000` |
| 1 | physical | `{"factor":0,"stage":630}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 2 | physical | `{"factor":10,"stage":630}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 3 | physical | `{"factor":104,"stage":630}` | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 4 | physical | `{"factor":109,"stage":630}` | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 5 | physical | `{"factor":35,"stage":630}` | `-1/1 * f * w + 1/1 * a * f + 1/1 * r + -1/1 * a * r + -13857/20000` |
| 6 | physical | `{"factor":47,"stage":630}` | `1/1 * c * e + -1/1 * b * e + -93/1000` |
| 7 | physical | `{"factor":65,"stage":630}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 8 | physical | `{"factor":77,"stage":630}` | `1/1 * u * w + -1/1 * b * w + -1/1 * v * r + 1/1 * b * v + -93/1000` |
| 9 | physical | `{"factor":93,"stage":630}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 10 | coordinate | `{"box":1810,"direction":"hi","value":"289273/1000000","variable":"a"}` | `289273/1000000 + -1 * a` |
| 11 | coordinate | `{"box":1810,"direction":"hi","value":"6143/20000","variable":"b"}` | `6143/20000 + -1 * b` |
| 12 | coordinate | `{"box":1810,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 13 | coordinate | `{"box":1810,"direction":"hi","value":"61219/80000","variable":"c"}` | `61219/80000 + -1 * c` |
| 14 | coordinate | `{"box":1810,"direction":"hi","value":"205551/500000","variable":"f"}` | `205551/500000 + -1 * f` |
| 15 | coordinate | `{"box":1810,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 16 | coordinate | `{"box":1810,"direction":"hi","value":"90349/250000","variable":"p"}` | `90349/250000 + -1 * p` |
| 17 | coordinate | `{"box":1810,"direction":"hi","value":"34659/62500","variable":"q"}` | `34659/62500 + -1 * q` |
| 18 | coordinate | `{"box":1810,"direction":"hi","value":"450533/500000","variable":"u"}` | `450533/500000 + -1 * u` |
| 19 | coordinate | `{"box":1810,"direction":"hi","value":"564631/1000000","variable":"v"}` | `564631/1000000 + -1 * v` |
| 20 | coordinate | `{"box":1810,"direction":"lo","value":"52569/500000","variable":"a"}` | `-52569/500000 + 1 * a` |
| 21 | coordinate | `{"box":1810,"direction":"lo","value":"51963/500000","variable":"b"}` | `-51963/500000 + 1 * b` |
| 22 | coordinate | `{"box":1810,"direction":"lo","value":"828887/1000000","variable":"w"}` | `-828887/1000000 + 1 * w` |
| 23 | coordinate | `{"box":1810,"direction":"lo","value":"52569/500000","variable":"e"}` | `-52569/500000 + 1 * e` |
| 24 | coordinate | `{"box":1810,"direction":"lo","value":"52569/500000","variable":"f"}` | `-52569/500000 + 1 * f` |
| 25 | coordinate | `{"box":1810,"direction":"lo","value":"676291/1000000","variable":"h"}` | `-676291/1000000 + 1 * h` |
| 26 | coordinate | `{"box":1810,"direction":"lo","value":"197279/1000000","variable":"p"}` | `-197279/1000000 + 1 * p` |
| 27 | coordinate | `{"box":1810,"direction":"lo","value":"29223/100000","variable":"q"}` | `-29223/100000 + 1 * q` |
| 28 | coordinate | `{"box":1810,"direction":"lo","value":"285001/500000","variable":"u"}` | `-285001/500000 + 1 * u` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 43316000000 | 1 |
| 1 | 91938000000 | 2 |
| 2 | 36180000000 | 5 |
| 3 | 48560000000 | 0 |
| 4 | 9116000000 | 6 |
| 5 | 76756000000 | 7 |
| 6 | 6104000000 | 8 |
| 7 | 75822000000 | 9 |
| 8 | 105802000000 | 3 |
| 9 | 100148000000 | 4 |
| 10 | 135254000000 | 20, 21 |
| 11 | 43316000000 | 13, 20 |
| 12 | 9116000000 | 21, 23 |
| 13 | 36180000000 | 14, 20 |
| 14 | 168694000000 | 17, 21 |
| 15 | 140498000000 | 16, 20 |
| 16 | 6104000000 | 19, 21 |
| 17 | 6104000000 | 21, 22 |
| 18 | 84740000000 | 10, 12 |
| 19 | 9116000000 | 13, 23 |
| 20 | 75822000000 | 13, 25 |
| 21 | 75822000000 | 13, 17 |
| 22 | 105802000000 | 23, 24 |
| 23 | 5654000000 | 18, 23 |
| 24 | 76756000000 | 24, 27 |
| 25 | 105802000000 | 19, 24 |
| 26 | 36180000000 | 22, 24 |
| 27 | 75822000000 | 25, 26 |
| 28 | 100148000000 | 15, 28 |
| 29 | 48560000000 | 22, 26 |
| 30 | 48560000000 | 12, 27 |
| 31 | 6104000000 | 18, 22 |
| 32 | 6104000000 | 12, 19 |
| 33 | 22411187156 | 12 |
| 34 | 810198 | 26 |
| 35 | 453852 | 11 |
| 36 | 174980 | 19 |
| 37 | 23500 | 28 |
| 38 | 309683 | 15 |
| 39 | 294086 | 20 |
| 40 | 14743696650 | 13 |
| 41 | 667878 | 23 |
| 42 | 366314 | 24 |
| 43 | 117409 | 27 |
| 44 | 8518018520 | 22 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -728770774339791/500000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -728770774339791/500000 | 1 | -728770774339791/500000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1810 | -728770774339791/500000 |

## Stage 1811

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR+/EHQ-/CFQ-/APS- |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR+/EHQ-/CFQ-/APS-:LHHLHLLHHHH |
| Index | 0 |
| Context | 413 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1805 |
| Coordinate cut | p high 90349/250000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 52569/500000 | 289273/1000000 | 52569/500000 | 289273/1000000 |
| b | 51963/500000 | 6143/20000 | 51963/500000 | 6143/20000 |
| c | 135501/250000 | 61219/80000 | 135501/250000 | 61219/80000 |
| e | 52569/500000 | 59/125 | 52569/500000 | 59/125 |
| f | 52569/500000 | 205551/500000 | 52569/500000 | 205551/500000 |
| h | 676291/1000000 | 1 | 676291/1000000 | 1 |
| p | 90349/250000 | 606611/1000000 | 90349/250000 | 606611/1000000 |
| q | 29223/100000 | 34659/62500 | 29223/100000 | 34659/62500 |
| u | 285001/500000 | 450533/500000 | 285001/500000 | 450533/500000 |
| v | 250663/1000000 | 564631/1000000 | 250663/1000000 | 564631/1000000 |
| r | 101983/125000 | 1 | 101983/125000 | 1 |
| w | 143681/250000 | 1 | 143681/250000 | 1 |
| j | 159469/250000 | 448037/500000 | 159469/250000 | 448037/500000 |
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
| 0 | bound | `{"direction":"lo","ref":"630:1483","triangle":"BQS","value":"61127/500000"}` | `1 * u * k + -1 * b * k + -1 * v * j + 1 * b * v + -61127/500000` |
| 1 | physical | `{"factor":0,"stage":630}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 2 | physical | `{"factor":104,"stage":630}` | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 3 | physical | `{"factor":109,"stage":630}` | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 4 | physical | `{"factor":116,"stage":630}` | `-1/1 * u * k + 1/1 * e * u + 1/1 * k + 1/1 * v * j + -1/1 * v + -1/1 * e * j + -93/1000` |
| 5 | physical | `{"factor":127,"stage":630}` | `-1/1 * r * k + 1/1 * r + 1/1 * f * k + 1/1 * w * j + -1/1 * f * w + -1/1 * j + -93/1000` |
| 6 | physical | `{"factor":35,"stage":630}` | `-1/1 * f * w + 1/1 * a * f + 1/1 * r + -1/1 * a * r + -13857/20000` |
| 7 | physical | `{"factor":43,"stage":630}` | `-1/1 * p * k + 1/1 * a * p + 1/1 * q * j + -1/1 * a * j + -93/1000` |
| 8 | physical | `{"factor":46,"stage":630}` | `1/1 * r * k + -1/1 * a * r + -1/1 * w * j + 1/1 * a * j + -93/1000` |
| 9 | physical | `{"factor":77,"stage":630}` | `1/1 * u * w + -1/1 * b * w + -1/1 * v * r + 1/1 * b * v + -93/1000` |
| 10 | physical | `{"factor":93,"stage":630}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 11 | coordinate | `{"box":1811,"direction":"hi","value":"289273/1000000","variable":"a"}` | `289273/1000000 + -1 * a` |
| 12 | coordinate | `{"box":1811,"direction":"hi","value":"6143/20000","variable":"b"}` | `6143/20000 + -1 * b` |
| 13 | coordinate | `{"box":1811,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 14 | coordinate | `{"box":1811,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 15 | coordinate | `{"box":1811,"direction":"hi","value":"448037/500000","variable":"j"}` | `448037/500000 + -1 * j` |
| 16 | coordinate | `{"box":1811,"direction":"hi","value":"8033/8963","variable":"k"}` | `8033/8963 + -1 * k` |
| 17 | coordinate | `{"box":1811,"direction":"hi","value":"61219/80000","variable":"c"}` | `61219/80000 + -1 * c` |
| 18 | coordinate | `{"box":1811,"direction":"hi","value":"59/125","variable":"e"}` | `59/125 + -1 * e` |
| 19 | coordinate | `{"box":1811,"direction":"hi","value":"205551/500000","variable":"f"}` | `205551/500000 + -1 * f` |
| 20 | coordinate | `{"box":1811,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 21 | coordinate | `{"box":1811,"direction":"hi","value":"34659/62500","variable":"q"}` | `34659/62500 + -1 * q` |
| 22 | coordinate | `{"box":1811,"direction":"hi","value":"450533/500000","variable":"u"}` | `450533/500000 + -1 * u` |
| 23 | coordinate | `{"box":1811,"direction":"hi","value":"564631/1000000","variable":"v"}` | `564631/1000000 + -1 * v` |
| 24 | coordinate | `{"box":1811,"direction":"lo","value":"52569/500000","variable":"a"}` | `-52569/500000 + 1 * a` |
| 25 | coordinate | `{"box":1811,"direction":"lo","value":"51963/500000","variable":"b"}` | `-51963/500000 + 1 * b` |
| 26 | coordinate | `{"box":1811,"direction":"lo","value":"143681/250000","variable":"w"}` | `-143681/250000 + 1 * w` |
| 27 | coordinate | `{"box":1811,"direction":"lo","value":"159469/250000","variable":"j"}` | `-159469/250000 + 1 * j` |
| 28 | coordinate | `{"box":1811,"direction":"lo","value":"596999/1000000","variable":"k"}` | `-596999/1000000 + 1 * k` |
| 29 | coordinate | `{"box":1811,"direction":"lo","value":"52569/500000","variable":"e"}` | `-52569/500000 + 1 * e` |
| 30 | coordinate | `{"box":1811,"direction":"lo","value":"52569/500000","variable":"f"}` | `-52569/500000 + 1 * f` |
| 31 | coordinate | `{"box":1811,"direction":"lo","value":"676291/1000000","variable":"h"}` | `-676291/1000000 + 1 * h` |
| 32 | coordinate | `{"box":1811,"direction":"lo","value":"90349/250000","variable":"p"}` | `-90349/250000 + 1 * p` |
| 33 | coordinate | `{"box":1811,"direction":"lo","value":"29223/100000","variable":"q"}` | `-29223/100000 + 1 * q` |
| 34 | coordinate | `{"box":1811,"direction":"lo","value":"285001/500000","variable":"u"}` | `-285001/500000 + 1 * u` |
| 35 | coordinate | `{"box":1811,"direction":"lo","value":"250663/1000000","variable":"v"}` | `-250663/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 52746000000 | 1 |
| 1 | 7050000000 | 6 |
| 2 | 98950000000 | 7 |
| 3 | 24448000000 | 8 |
| 4 | 19906000000 | 9 |
| 5 | 20068000000 | 0 |
| 6 | 115868000000 | 10 |
| 7 | 123962000000 | 2 |
| 8 | 108820000000 | 3 |
| 9 | 20068000000 | 4 |
| 10 | 11576000000 | 5 |
| 11 | 52746000000 | 17, 24 |
| 12 | 7050000000 | 19, 24 |
| 13 | 98950000000 | 11, 32 |
| 14 | 39972000000 | 23, 25 |
| 15 | 19906000000 | 25, 26 |
| 16 | 31498000000 | 11, 13 |
| 17 | 20068000000 | 25, 28 |
| 18 | 74502000000 | 24, 27 |
| 19 | 115868000000 | 17, 31 |
| 20 | 115868000000 | 17, 21 |
| 21 | 104704000000 | 29, 30 |
| 22 | 19258000000 | 18, 19 |
| 23 | 35210000000 | 22, 29 |
| 24 | 20068000000 | 27, 29 |
| 25 | 123962000000 | 19, 35 |
| 26 | 18626000000 | 14, 19 |
| 27 | 11576000000 | 19, 28 |
| 28 | 115868000000 | 31, 32 |
| 29 | 108820000000 | 20, 34 |
| 30 | 98950000000 | 28, 32 |
| 31 | 98950000000 | 15, 33 |
| 32 | 19906000000 | 22, 26 |
| 33 | 19906000000 | 13, 23 |
| 34 | 12872000000 | 13, 28 |
| 35 | 12872000000 | 26, 27 |
| 36 | 52746000000 | 24, 25 |
| 37 | 5481680796 | 24 |
| 38 | 6397210492 | 25 |
| 39 | 5959505488 | 13 |
| 40 | 2000000 | 12, 35 |
| 41 | 501326 | 12 |
| 42 | 614300 | 23 |
| 43 | 148198476 | 28 |
| 44 | 210276 | 29 |
| 45 | 210276 | 30 |
| 46 | 843804 | 35 |
| 47 | 364924 | 22 |
| 48 | 75438 | 31 |
| 49 | 1394060 | 16 |
| 50 | 589488 | 27 |
| 51 | 19652190344 | 17 |
| 52 | 582723 | 11 |
| 53 | 835254 | 19 |
| 54 | 108809973288 | 32 |
| 55 | 56884 | 26 |
| 56 | 16350 | 33 |
| 57 | 477100 | 18 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -115648902046451658973/8963000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -115648902046451658973/8963000000 | 1 | -115648902046451658973/8963000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1811 | -115648902046451658973/8963000000 |

## Stage 1812

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR+/EHQ-/CFQ-/APS- |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR+/EHQ-/CFQ-/APS-:LHHLHLH |
| Index | 0 |
| Context | 413 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1798 |
| Coordinate cut | v high 564631/1000000 |

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
| u | 221499/500000 | 450533/500000 | 221499/500000 | 450533/500000 |
| v | 564631/1000000 | 344111/500000 | 564631/1000000 | 344111/500000 |
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
| 0 | physical | `{"factor":0,"stage":630}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 1 | physical | `{"factor":104,"stage":630}` | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 2 | physical | `{"factor":141,"stage":630}` | `1/1 * f + -1/1 * e` |
| 3 | physical | `{"factor":35,"stage":630}` | `-1/1 * f * w + 1/1 * a * f + 1/1 * r + -1/1 * a * r + -13857/20000` |
| 4 | physical | `{"factor":77,"stage":630}` | `1/1 * u * w + -1/1 * b * w + -1/1 * v * r + 1/1 * b * v + -93/1000` |
| 5 | coordinate | `{"box":1812,"direction":"hi","value":"289273/1000000","variable":"a"}` | `289273/1000000 + -1 * a` |
| 6 | coordinate | `{"box":1812,"direction":"hi","value":"6143/20000","variable":"b"}` | `6143/20000 + -1 * b` |
| 7 | coordinate | `{"box":1812,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 8 | coordinate | `{"box":1812,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 9 | coordinate | `{"box":1812,"direction":"hi","value":"61219/80000","variable":"c"}` | `61219/80000 + -1 * c` |
| 10 | coordinate | `{"box":1812,"direction":"hi","value":"59/125","variable":"e"}` | `59/125 + -1 * e` |
| 11 | coordinate | `{"box":1812,"direction":"hi","value":"205551/500000","variable":"f"}` | `205551/500000 + -1 * f` |
| 12 | coordinate | `{"box":1812,"direction":"hi","value":"450533/500000","variable":"u"}` | `450533/500000 + -1 * u` |
| 13 | coordinate | `{"box":1812,"direction":"hi","value":"344111/500000","variable":"v"}` | `344111/500000 + -1 * v` |
| 14 | coordinate | `{"box":1812,"direction":"lo","value":"52569/500000","variable":"a"}` | `-52569/500000 + 1 * a` |
| 15 | coordinate | `{"box":1812,"direction":"lo","value":"51963/500000","variable":"b"}` | `-51963/500000 + 1 * b` |
| 16 | coordinate | `{"box":1812,"direction":"lo","value":"101983/125000","variable":"r"}` | `-101983/125000 + 1 * r` |
| 17 | coordinate | `{"box":1812,"direction":"lo","value":"143681/250000","variable":"w"}` | `-143681/250000 + 1 * w` |
| 18 | coordinate | `{"box":1812,"direction":"lo","value":"52569/500000","variable":"e"}` | `-52569/500000 + 1 * e` |
| 19 | coordinate | `{"box":1812,"direction":"lo","value":"52569/500000","variable":"f"}` | `-52569/500000 + 1 * f` |
| 20 | coordinate | `{"box":1812,"direction":"lo","value":"221499/500000","variable":"u"}` | `-221499/500000 + 1 * u` |
| 21 | coordinate | `{"box":1812,"direction":"lo","value":"564631/1000000","variable":"v"}` | `-564631/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 43398000000 | 0 |
| 1 | 56393000000 | 3 |
| 2 | 68373000000 | 4 |
| 3 | 76406000000 | 1 |
| 4 | 40142000000 | 2 |
| 5 | 43398000000 | 9, 14 |
| 6 | 56393000000 | 11, 14 |
| 7 | 5584000000 | 13, 15 |
| 8 | 62789000000 | 6, 21 |
| 9 | 68373000000 | 15, 17 |
| 10 | 56393000000 | 5, 7 |
| 11 | 8844000000 | 18, 19 |
| 12 | 67562000000 | 10, 11 |
| 13 | 76406000000 | 12, 18 |
| 14 | 76406000000 | 11, 21 |
| 15 | 56393000000 | 8, 11 |
| 16 | 68373000000 | 8, 20 |
| 17 | 56441000000 | 16, 21 |
| 18 | 11932000000 | 7, 13 |
| 19 | 43398000000 | 14, 15 |
| 20 | 4510180548 | 14 |
| 21 | 4562778924 | 15 |
| 22 | 175464 | 16 |
| 23 | 83109556478 | 21 |
| 24 | 174028 | 12 |
| 25 | 138948 | 11 |
| 26 | 135000 | 10 |
| 27 | 4562778924 | 9 |
| 28 | 52111 | 5 |
| 29 | 43455 | 6 |
| 30 | 94770 | 8 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -1111179418183039/200000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -1111179418183039/200000 | 1 | -1111179418183039/200000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1812 | -1111179418183039/200000 |

## Stage 1813

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR+/EHQ-/CFQ-/APS- |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR+/EHQ-/CFQ-/APS-:LHHLHH |
| Index | 0 |
| Context | 413 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1797 |
| Coordinate cut | f high 205551/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 52569/500000 | 289273/1000000 | 52569/500000 | 289273/1000000 |
| b | 51963/500000 | 6143/20000 | 51963/500000 | 6143/20000 |
| c | 135501/250000 | 61219/80000 | 135501/250000 | 61219/80000 |
| e | 52569/500000 | 59/125 | 52569/500000 | 59/125 |
| f | 205551/500000 | 546379/1000000 | 205551/500000 | 546379/1000000 |
| h | 676291/1000000 | 1 | 676291/1000000 | 1 |
| p | 197279/1000000 | 606611/1000000 | 197279/1000000 | 606611/1000000 |
| q | 29223/100000 | 34659/62500 | 29223/100000 | 34659/62500 |
| u | 221499/500000 | 450533/500000 | 221499/500000 | 450533/500000 |
| v | 250663/1000000 | 344111/500000 | 250663/1000000 | 344111/500000 |
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
| 0 | physical | `{"factor":0,"stage":630}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 1 | physical | `{"factor":10,"stage":630}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 2 | physical | `{"factor":109,"stage":630}` | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 3 | physical | `{"factor":125,"stage":630}` | `1/1 * u * w + -1/1 * u + -1/1 * f * w + -1/1 * v * r + 1/1 * f * v + 1/1 * r + -279/1000` |
| 4 | physical | `{"factor":127,"stage":630}` | `-1/1 * r * k + 1/1 * r + 1/1 * f * k + 1/1 * w * j + -1/1 * f * w + -1/1 * j + -93/1000` |
| 5 | physical | `{"factor":35,"stage":630}` | `-1/1 * f * w + 1/1 * a * f + 1/1 * r + -1/1 * a * r + -13857/20000` |
| 6 | physical | `{"factor":43,"stage":630}` | `-1/1 * p * k + 1/1 * a * p + 1/1 * q * j + -1/1 * a * j + -93/1000` |
| 7 | physical | `{"factor":46,"stage":630}` | `1/1 * r * k + -1/1 * a * r + -1/1 * w * j + 1/1 * a * j + -93/1000` |
| 8 | physical | `{"factor":47,"stage":630}` | `1/1 * c * e + -1/1 * b * e + -93/1000` |
| 9 | physical | `{"factor":65,"stage":630}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 10 | physical | `{"factor":77,"stage":630}` | `1/1 * u * w + -1/1 * b * w + -1/1 * v * r + 1/1 * b * v + -93/1000` |
| 11 | physical | `{"factor":93,"stage":630}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 12 | coordinate | `{"box":1813,"direction":"hi","value":"289273/1000000","variable":"a"}` | `289273/1000000 + -1 * a` |
| 13 | coordinate | `{"box":1813,"direction":"hi","value":"6143/20000","variable":"b"}` | `6143/20000 + -1 * b` |
| 14 | coordinate | `{"box":1813,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 15 | coordinate | `{"box":1813,"direction":"hi","value":"448037/500000","variable":"j"}` | `448037/500000 + -1 * j` |
| 16 | coordinate | `{"box":1813,"direction":"hi","value":"8033/8963","variable":"k"}` | `8033/8963 + -1 * k` |
| 17 | coordinate | `{"box":1813,"direction":"hi","value":"61219/80000","variable":"c"}` | `61219/80000 + -1 * c` |
| 18 | coordinate | `{"box":1813,"direction":"hi","value":"59/125","variable":"e"}` | `59/125 + -1 * e` |
| 19 | coordinate | `{"box":1813,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 20 | coordinate | `{"box":1813,"direction":"hi","value":"606611/1000000","variable":"p"}` | `606611/1000000 + -1 * p` |
| 21 | coordinate | `{"box":1813,"direction":"hi","value":"34659/62500","variable":"q"}` | `34659/62500 + -1 * q` |
| 22 | coordinate | `{"box":1813,"direction":"hi","value":"450533/500000","variable":"u"}` | `450533/500000 + -1 * u` |
| 23 | coordinate | `{"box":1813,"direction":"hi","value":"344111/500000","variable":"v"}` | `344111/500000 + -1 * v` |
| 24 | coordinate | `{"box":1813,"direction":"lo","value":"52569/500000","variable":"a"}` | `-52569/500000 + 1 * a` |
| 25 | coordinate | `{"box":1813,"direction":"lo","value":"51963/500000","variable":"b"}` | `-51963/500000 + 1 * b` |
| 26 | coordinate | `{"box":1813,"direction":"lo","value":"143681/250000","variable":"w"}` | `-143681/250000 + 1 * w` |
| 27 | coordinate | `{"box":1813,"direction":"lo","value":"509771/1000000","variable":"j"}` | `-509771/1000000 + 1 * j` |
| 28 | coordinate | `{"box":1813,"direction":"lo","value":"483539/1000000","variable":"k"}` | `-483539/1000000 + 1 * k` |
| 29 | coordinate | `{"box":1813,"direction":"lo","value":"52569/500000","variable":"e"}` | `-52569/500000 + 1 * e` |
| 30 | coordinate | `{"box":1813,"direction":"lo","value":"205551/500000","variable":"f"}` | `-205551/500000 + 1 * f` |
| 31 | coordinate | `{"box":1813,"direction":"lo","value":"676291/1000000","variable":"h"}` | `-676291/1000000 + 1 * h` |
| 32 | coordinate | `{"box":1813,"direction":"lo","value":"197279/1000000","variable":"p"}` | `-197279/1000000 + 1 * p` |
| 33 | coordinate | `{"box":1813,"direction":"lo","value":"29223/100000","variable":"q"}` | `-29223/100000 + 1 * q` |
| 34 | coordinate | `{"box":1813,"direction":"lo","value":"221499/500000","variable":"u"}` | `-221499/500000 + 1 * u` |
| 35 | coordinate | `{"box":1813,"direction":"lo","value":"250663/1000000","variable":"v"}` | `-250663/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 420239218000000 | 0 |
| 1 | 168907735000000 | 1 |
| 2 | 613660758000000 | 5 |
| 3 | 37124746000000 | 6 |
| 4 | 10262635000000 | 7 |
| 5 | 205360256000000 | 8 |
| 6 | 32401245000000 | 9 |
| 7 | 37886601000000 | 10 |
| 8 | 53401554000000 | 11 |
| 9 | 306561489000000 | 2 |
| 10 | 462921024000000 | 3 |
| 11 | 4992391000000 | 4 |
| 12 | 589146953000000 | 24, 25 |
| 13 | 420239218000000 | 17, 24 |
| 14 | 205360256000000 | 25, 29 |
| 15 | 613660758000000 | 12, 30 |
| 16 | 201308980000000 | 21, 25 |
| 17 | 206032481000000 | 20, 24 |
| 18 | 37886601000000 | 23, 25 |
| 19 | 37886601000000 | 25, 26 |
| 20 | 623923393000000 | 12, 14 |
| 21 | 26862111000000 | 24, 27 |
| 22 | 205360256000000 | 17, 29 |
| 23 | 53401554000000 | 17, 31 |
| 24 | 53401554000000 | 17, 21 |
| 25 | 306561489000000 | 29, 34 |
| 26 | 32401245000000 | 30, 33 |
| 27 | 462921024000000 | 23, 30 |
| 28 | 1081574173000000 | 26, 30 |
| 29 | 4992391000000 | 16, 30 |
| 30 | 53401554000000 | 31, 32 |
| 31 | 306561489000000 | 22, 31 |
| 32 | 37124746000000 | 28, 32 |
| 33 | 37124746000000 | 15, 33 |
| 34 | 500807625000000 | 22, 26 |
| 35 | 500807625000000 | 14, 23 |
| 36 | 5270244000000 | 14, 28 |
| 37 | 5270244000000 | 26, 27 |
| 38 | 558971524557477 | 14 |
| 39 | 4569077473 | 24 |
| 40 | 942351894 | 27 |
| 41 | 3164924930 | 32 |
| 42 | 596505576 | 13 |
| 43 | 974296026 | 35 |
| 44 | 512154783 | 19 |
| 45 | 1348402683 | 34 |
| 46 | 4351536500 | 15 |
| 47 | 1507504896 | 12 |
| 48 | 72275756492250 | 17 |
| 49 | 972431722 | 18 |
| 50 | 130492948401340 | 30 |
| 51 | 2668401619 | 21 |
| 52 | 602690046 | 26 |
| 53 | 1306841252 | 28 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -4498808456720566293/125000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -4498808456720566293/125000 | 1 | -4498808456720566293/125000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1813 | -4498808456720566293/125000 |

## Stage 1814

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR+/EHQ-/CFQ-/APS- |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR+/EHQ-/CFQ-/APS-:LHHH |
| Index | 0 |
| Context | 413 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1794 |
| Coordinate cut | q high 34659/62500 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 52569/500000 | 289273/1000000 | 52569/500000 | 289273/1000000 |
| b | 51963/500000 | 6143/20000 | 51963/500000 | 6143/20000 |
| c | 135501/250000 | 61219/80000 | 135501/250000 | 61219/80000 |
| e | 52569/500000 | 59/125 | 52569/500000 | 59/125 |
| f | 52569/500000 | 546379/1000000 | 52569/500000 | 546379/1000000 |
| h | 676291/1000000 | 1 | 676291/1000000 | 1 |
| p | 197279/1000000 | 606611/1000000 | 197279/1000000 | 606611/1000000 |
| q | 34659/62500 | 22073/31250 | 34659/62500 | 22073/31250 |
| u | 221499/500000 | 450533/500000 | 221499/500000 | 450533/500000 |
| v | 250663/1000000 | 344111/500000 | 250663/1000000 | 344111/500000 |
| r | 101983/125000 | 1 | 101983/125000 | 1 |
| w | 459317/1000000 | 1 | 459317/1000000 | 1 |
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
| 0 | bound | `{"direction":"lo","ref":"630:1588","triangle":"EFH","value":"3289/10000"}` | `1 * f * h + -1 * e * f + -1 * h + 6711/10000` |
| 1 | physical | `{"factor":47,"stage":630}` | `1/1 * c * e + -1/1 * b * e + -93/1000` |
| 2 | physical | `{"factor":65,"stage":630}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 3 | physical | `{"factor":93,"stage":630}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 4 | coordinate | `{"box":1814,"direction":"hi","value":"61219/80000","variable":"c"}` | `61219/80000 + -1 * c` |
| 5 | coordinate | `{"box":1814,"direction":"hi","value":"59/125","variable":"e"}` | `59/125 + -1 * e` |
| 6 | coordinate | `{"box":1814,"direction":"hi","value":"546379/1000000","variable":"f"}` | `546379/1000000 + -1 * f` |
| 7 | coordinate | `{"box":1814,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 8 | coordinate | `{"box":1814,"direction":"hi","value":"606611/1000000","variable":"p"}` | `606611/1000000 + -1 * p` |
| 9 | coordinate | `{"box":1814,"direction":"hi","value":"22073/31250","variable":"q"}` | `22073/31250 + -1 * q` |
| 10 | coordinate | `{"box":1814,"direction":"lo","value":"51963/500000","variable":"b"}` | `-51963/500000 + 1 * b` |
| 11 | coordinate | `{"box":1814,"direction":"lo","value":"135501/250000","variable":"c"}` | `-135501/250000 + 1 * c` |
| 12 | coordinate | `{"box":1814,"direction":"lo","value":"52569/500000","variable":"e"}` | `-52569/500000 + 1 * e` |
| 13 | coordinate | `{"box":1814,"direction":"lo","value":"52569/500000","variable":"f"}` | `-52569/500000 + 1 * f` |
| 14 | coordinate | `{"box":1814,"direction":"lo","value":"676291/1000000","variable":"h"}` | `-676291/1000000 + 1 * h` |
| 15 | coordinate | `{"box":1814,"direction":"lo","value":"197279/1000000","variable":"p"}` | `-197279/1000000 + 1 * p` |
| 16 | coordinate | `{"box":1814,"direction":"lo","value":"34659/62500","variable":"q"}` | `-34659/62500 + 1 * q` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 16790000000 | 1 |
| 1 | 197196000000 | 2 |
| 2 | 252056000000 | 3 |
| 3 | 122202000000 | 0 |
| 4 | 197196000000 | 9, 10 |
| 5 | 16790000000 | 4, 12 |
| 6 | 252056000000 | 4, 14 |
| 7 | 38262000000 | 11, 16 |
| 8 | 213794000000 | 4, 9 |
| 9 | 122202000000 | 12, 13 |
| 10 | 122202000000 | 7, 13 |
| 11 | 197196000000 | 13, 16 |
| 12 | 169474000000 | 14, 15 |
| 13 | 82582000000 | 7, 8 |
| 14 | 16790000000 | 10, 12 |
| 15 | 59674633164 | 10 |
| 16 | 1744917540 | 12 |
| 17 | 259066 | 8 |
| 18 | 33672 | 14 |
| 19 | 184580344675 | 16 |
| 20 | 110004 | 4 |
| 21 | 263749 | 5 |
| 22 | 67500 | 6 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -4099388169634787/250000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -4099388169634787/250000 | 1 | -4099388169634787/250000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1814 | -4099388169634787/250000 |
