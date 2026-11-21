# BITT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 1960

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS-/HEQ-/CFQ+/BFP-/PQS+/BQS+/QRS-/EPQ+ |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS-/HEQ-/CFQ+/BFP-/PQS+/BQS+/QRS-/EPQ+:root |
| Index | 0 |
| Context | 520 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 825 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 796617/1000000 | 1 | 796617/1000000 | 1 |
| e | 25597/100000 | 59/125 | 25597/100000 | 59/125 |
| f | 25597/100000 | 78127/125000 | 25597/100000 | 78127/125000 |
| h | 73301/125000 | 1 | 73301/125000 | 1 |
| p | 241841/1000000 | 123939/250000 | 241841/1000000 | 123939/250000 |
| q | 166769/500000 | 665159/1000000 | 166769/500000 | 665159/1000000 |
| u | 55371/125000 | 649953/1000000 | 55371/125000 | 649953/1000000 |
| v | 113949/500000 | 531783/1000000 | 113949/500000 | 531783/1000000 |
| r | 613891/1000000 | 1 | 613891/1000000 | 1 |
| w | 147503/200000 | 1 | 147503/200000 | 1 |
| j | 295037/500000 | 437503/500000 | 295037/500000 | 437503/500000 |
| k | 99523/200000 | 54863/62500 | 99523/200000 | 54863/62500 |

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
| 0 | bound | `{"direction":"lo","ref":"825:4511","triangle":"EQR","value":"285743/1000000"}` | `-1 * u * w + 1 * e * u + 1 * w + 1 * v * r + -1 * v + -1 * e * r + -285743/1000000` |
| 1 | bound | `{"direction":"lo","ref":"825:4761","triangle":"CFP","value":"78797/250000"}` | `1 * f * q + -1 * c * q + -1 * p + 1 * c + -78797/250000` |
| 2 | bound | `{"direction":"lo","ref":"825:4764","triangle":"EFR","value":"337293/1000000"}` | `-1 * f * w + 1 * e * f + 1 * w + 1 * r + -1337293/1000000 + -1 * e * r` |
| 3 | physical | `{"factor":10,"stage":825}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 4 | physical | `{"factor":109,"stage":825}` | `1/1 * p * v + -1/1 * e * p + -1/1 * v + -1/1 * q * u + 1/1 * q + 1/1 * e * u + -93/1000` |
| 5 | physical | `{"factor":117,"stage":825}` | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 6 | physical | `{"factor":140,"stage":825}` | `1/1 * f + -1/1 * e` |
| 7 | physical | `{"factor":64,"stage":825}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 8 | physical | `{"factor":7,"stage":825}` | `1/1 * b * h + -1/1 * a * b + -93/1000` |
| 9 | physical | `{"factor":94,"stage":825}` | `-1/1 * p * v + 1/1 * c * v + 1/1 * q * u + -1/1 * c * q + -93/1000` |
| 10 | coordinate | `{"box":1960,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 11 | coordinate | `{"box":1960,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 12 | coordinate | `{"box":1960,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 13 | coordinate | `{"box":1960,"direction":"hi","value":"59/125","variable":"e"}` | `59/125 + -1 * e` |
| 14 | coordinate | `{"box":1960,"direction":"hi","value":"78127/125000","variable":"f"}` | `78127/125000 + -1 * f` |
| 15 | coordinate | `{"box":1960,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 16 | coordinate | `{"box":1960,"direction":"hi","value":"123939/250000","variable":"p"}` | `123939/250000 + -1 * p` |
| 17 | coordinate | `{"box":1960,"direction":"hi","value":"665159/1000000","variable":"q"}` | `665159/1000000 + -1 * q` |
| 18 | coordinate | `{"box":1960,"direction":"hi","value":"649953/1000000","variable":"u"}` | `649953/1000000 + -1 * u` |
| 19 | coordinate | `{"box":1960,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 20 | coordinate | `{"box":1960,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 21 | coordinate | `{"box":1960,"direction":"lo","value":"613891/1000000","variable":"r"}` | `-613891/1000000 + 1 * r` |
| 22 | coordinate | `{"box":1960,"direction":"lo","value":"796617/1000000","variable":"c"}` | `-796617/1000000 + 1 * c` |
| 23 | coordinate | `{"box":1960,"direction":"lo","value":"25597/100000","variable":"e"}` | `-25597/100000 + 1 * e` |
| 24 | coordinate | `{"box":1960,"direction":"lo","value":"25597/100000","variable":"f"}` | `-25597/100000 + 1 * f` |
| 25 | coordinate | `{"box":1960,"direction":"lo","value":"241841/1000000","variable":"p"}` | `-241841/1000000 + 1 * p` |
| 26 | coordinate | `{"box":1960,"direction":"lo","value":"166769/500000","variable":"q"}` | `-166769/500000 + 1 * q` |
| 27 | coordinate | `{"box":1960,"direction":"lo","value":"55371/125000","variable":"u"}` | `-55371/125000 + 1 * u` |
| 28 | coordinate | `{"box":1960,"direction":"lo","value":"113949/500000","variable":"v"}` | `-113949/500000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 13747000000 | 8 |
| 1 | 3639000000 | 3 |
| 2 | 42897000000 | 7 |
| 3 | 19622000000 | 1 |
| 4 | 92404000000 | 9 |
| 5 | 14732000000 | 2 |
| 6 | 92404000000 | 4 |
| 7 | 31866000000 | 0 |
| 8 | 1917000000 | 5 |
| 9 | 15542000000 | 6 |
| 10 | 17386000000 | 19, 20 |
| 11 | 13747000000 | 15, 20 |
| 12 | 46536000000 | 17, 20 |
| 13 | 3639000000 | 16, 19 |
| 14 | 102028000000 | 22, 26 |
| 15 | 9998000000 | 12, 17 |
| 16 | 92404000000 | 12, 28 |
| 17 | 14732000000 | 13, 24 |
| 18 | 92404000000 | 23, 25 |
| 19 | 46598000000 | 10, 13 |
| 20 | 1917000000 | 15, 24 |
| 21 | 23275000000 | 24, 26 |
| 22 | 16649000000 | 11, 14 |
| 23 | 1917000000 | 10, 15 |
| 24 | 31866000000 | 11, 18 |
| 25 | 31866000000 | 10, 28 |
| 26 | 124008000000 | 18, 23 |
| 27 | 262000000 | 13, 27 |
| 28 | 43767 | 25 |
| 29 | 253838 | 20 |
| 30 | 333538 | 22 |
| 31 | 796617 | 26 |
| 32 | 545584 | 12 |
| 33 | 15480706318 | 11 |
| 34 | 58332 | 21 |
| 35 | 756703 | 17 |
| 36 | 442968 | 13 |
| 37 | 472000 | 18 |
| 38 | 407050 | 14 |
| 39 | 1139452 | 23 |
| 40 | 36978 | 19 |
| 41 | 179439 | 15 |
| 42 | 480240 | 27 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -19018350391727/10000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -19018350391727/10000 | 1 | -19018350391727/10000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1960 | -19018350391727/10000 |

## Stage 1961

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS-/HEQ-/CFQ+/BFP-/PQS+/BQS- |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS-/HEQ-/CFQ+/BFP-/PQS+/BQS-:root |
| Index | 0 |
| Context | 522 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 827 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 53481/500000 | 390733/1000000 | 53481/500000 | 390733/1000000 |
| b | 52069/500000 | 140191/500000 | 52069/500000 | 140191/500000 |
| c | 199247/250000 | 194589/200000 | 199247/250000 | 194589/200000 |
| e | 107007/1000000 | 321179/1000000 | 107007/1000000 | 321179/1000000 |
| f | 107007/1000000 | 321179/1000000 | 107007/1000000 | 321179/1000000 |
| h | 727969/1000000 | 1 | 727969/1000000 | 1 |
| p | 98569/500000 | 7463/15625 | 98569/500000 | 7463/15625 |
| q | 20743/62500 | 140359/200000 | 20743/62500 | 140359/200000 |
| u | 191569/500000 | 146359/200000 | 191569/500000 | 146359/200000 |
| v | 113653/500000 | 673567/1000000 | 113653/500000 | 673567/1000000 |
| r | 544457/1000000 | 1 | 544457/1000000 | 1 |
| w | 565107/1000000 | 1 | 565107/1000000 | 1 |
| j | 199247/250000 | 55991/62500 | 199247/250000 | 55991/62500 |
| k | 4581/10000 | 89619/100000 | 4581/10000 | 89619/100000 |

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


## Stage 1962

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS-/HEQ-/CFQ+/BFP-/PQS+/BQS- |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS-/HEQ-/CFQ+/BFP-/PQS+/BQS-:L |
| Index | 0 |
| Context | 522 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1961 |
| Coordinate cut | r low 363503/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 53481/500000 | 390733/1000000 | 53481/500000 | 390733/1000000 |
| b | 52069/500000 | 140191/500000 | 52069/500000 | 140191/500000 |
| c | 199247/250000 | 194589/200000 | 199247/250000 | 194589/200000 |
| e | 107007/1000000 | 321179/1000000 | 107007/1000000 | 321179/1000000 |
| f | 107007/1000000 | 321179/1000000 | 107007/1000000 | 321179/1000000 |
| h | 727969/1000000 | 1 | 727969/1000000 | 1 |
| p | 98569/500000 | 7463/15625 | 98569/500000 | 7463/15625 |
| q | 20743/62500 | 140359/200000 | 20743/62500 | 140359/200000 |
| u | 191569/500000 | 146359/200000 | 191569/500000 | 146359/200000 |
| v | 113653/500000 | 673567/1000000 | 113653/500000 | 673567/1000000 |
| r | 544457/1000000 | 363503/500000 | 544457/1000000 | 363503/500000 |
| w | 565107/1000000 | 1 | 565107/1000000 | 1 |
| j | 199247/250000 | 55991/62500 | 199247/250000 | 55991/62500 |
| k | 4581/10000 | 89619/100000 | 4581/10000 | 89619/100000 |

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
| 0 | bound | `{"direction":"lo","ref":"827:924","triangle":"CFH","value":"312159/1000000"}` | `1 * f * h + -1 * c * h + 1 * c + -312159/1000000` |
| 1 | bound | `{"direction":"lo","ref":"827:926","triangle":"CPS","value":"312647/1000000"}` | `-1 * p * k + 1 * c * k + 1 * q * j + -1 * c * q + -312647/1000000` |
| 2 | physical | `{"factor":10,"stage":827}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 3 | physical | `{"factor":112,"stage":827}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 4 | physical | `{"factor":137,"stage":827}` | `1/1 * f + -1/1 * e` |
| 5 | physical | `{"factor":41,"stage":827}` | `-1/1 * p * w + 1/1 * a * p + 1/1 * q * r + -1/1 * a * r + -93/1000` |
| 6 | physical | `{"factor":64,"stage":827}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 7 | physical | `{"factor":68,"stage":827}` | `-1/1 * f * k + 1/1 * b * k + 1/1 * j + -1/1 * b + -13857/20000` |
| 8 | physical | `{"factor":7,"stage":827}` | `1/1 * b * h + -1/1 * a * b + -93/1000` |
| 9 | physical | `{"factor":72,"stage":827}` | `1/1 * b * k + 1/1 * h * j + -1/1 * b * h + -13857/20000` |
| 10 | physical | `{"factor":83,"stage":827}` | `1/1 * k + -1/1 * c * k + -1/1 * e * j + 1/1 * c * e + -93/1000` |
| 11 | coordinate | `{"box":1962,"direction":"hi","value":"390733/1000000","variable":"a"}` | `390733/1000000 + -1 * a` |
| 12 | coordinate | `{"box":1962,"direction":"hi","value":"140191/500000","variable":"b"}` | `140191/500000 + -1 * b` |
| 13 | coordinate | `{"box":1962,"direction":"hi","value":"363503/500000","variable":"r"}` | `363503/500000 + -1 * r` |
| 14 | coordinate | `{"box":1962,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 15 | coordinate | `{"box":1962,"direction":"hi","value":"55991/62500","variable":"j"}` | `55991/62500 + -1 * j` |
| 16 | coordinate | `{"box":1962,"direction":"hi","value":"89619/100000","variable":"k"}` | `89619/100000 + -1 * k` |
| 17 | coordinate | `{"box":1962,"direction":"hi","value":"194589/200000","variable":"c"}` | `194589/200000 + -1 * c` |
| 18 | coordinate | `{"box":1962,"direction":"hi","value":"321179/1000000","variable":"e"}` | `321179/1000000 + -1 * e` |
| 19 | coordinate | `{"box":1962,"direction":"hi","value":"321179/1000000","variable":"f"}` | `321179/1000000 + -1 * f` |
| 20 | coordinate | `{"box":1962,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 21 | coordinate | `{"box":1962,"direction":"hi","value":"7463/15625","variable":"p"}` | `7463/15625 + -1 * p` |
| 22 | coordinate | `{"box":1962,"direction":"hi","value":"140359/200000","variable":"q"}` | `140359/200000 + -1 * q` |
| 23 | coordinate | `{"box":1962,"direction":"lo","value":"53481/500000","variable":"a"}` | `-53481/500000 + 1 * a` |
| 24 | coordinate | `{"box":1962,"direction":"lo","value":"52069/500000","variable":"b"}` | `-52069/500000 + 1 * b` |
| 25 | coordinate | `{"box":1962,"direction":"lo","value":"199247/250000","variable":"j"}` | `-199247/250000 + 1 * j` |
| 26 | coordinate | `{"box":1962,"direction":"lo","value":"4581/10000","variable":"k"}` | `-4581/10000 + 1 * k` |
| 27 | coordinate | `{"box":1962,"direction":"lo","value":"199247/250000","variable":"c"}` | `-199247/250000 + 1 * c` |
| 28 | coordinate | `{"box":1962,"direction":"lo","value":"107007/1000000","variable":"f"}` | `-107007/1000000 + 1 * f` |
| 29 | coordinate | `{"box":1962,"direction":"lo","value":"727969/1000000","variable":"h"}` | `-727969/1000000 + 1 * h` |
| 30 | coordinate | `{"box":1962,"direction":"lo","value":"98569/500000","variable":"p"}` | `-98569/500000 + 1 * p` |
| 31 | coordinate | `{"box":1962,"direction":"lo","value":"20743/62500","variable":"q"}` | `-20743/62500 + 1 * q` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 18344000000 | 8 |
| 1 | 60000000 | 2 |
| 2 | 22000000 | 5 |
| 3 | 7855000000 | 6 |
| 4 | 55765000000 | 7 |
| 5 | 18344000000 | 9 |
| 6 | 57923000000 | 10 |
| 7 | 21189000000 | 0 |
| 8 | 17169000000 | 1 |
| 9 | 99517000000 | 3 |
| 10 | 6964000000 | 4 |
| 11 | 7915000000 | 22, 24 |
| 12 | 83000000 | 11, 30 |
| 13 | 22000000 | 11, 13 |
| 14 | 55048000000 | 16, 24 |
| 15 | 19061000000 | 12, 26 |
| 16 | 57923000000 | 18, 27 |
| 17 | 21189000000 | 27, 29 |
| 18 | 17169000000 | 27, 31 |
| 19 | 40754000000 | 26, 27 |
| 20 | 99517000000 | 13, 18 |
| 21 | 41594000000 | 18, 25 |
| 22 | 21189000000 | 20, 28 |
| 23 | 7855000000 | 28, 31 |
| 24 | 55765000000 | 26, 28 |
| 25 | 18344000000 | 20, 25 |
| 26 | 22000000 | 14, 21 |
| 27 | 22000000 | 13, 31 |
| 28 | 17169000000 | 26, 30 |
| 29 | 17169000000 | 22, 25 |
| 30 | 99517000000 | 13, 26 |
| 31 | 99517000000 | 14, 15 |
| 32 | 18404000000 | 23, 24 |
| 33 | 1916752890 | 23 |
| 34 | 1968528648 | 24 |
| 35 | 1000000 | 23, 30 |
| 36 | 106962 | 30 |
| 37 | 311939 | 21 |
| 38 | 18645 | 12 |
| 39 | 237681 | 15 |
| 40 | 49399 | 16 |
| 41 | 123604 | 17 |
| 42 | 10353590544 | 14 |
| 43 | 73260 | 19 |
| 44 | 398694 | 18 |
| 45 | 293583 | 31 |
| 46 | 368322 | 11 |
| 47 | 13624672567 | 13 |
| 48 | 59537 | 29 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -4959595817993473/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -4959595817993473/1000000 | 1 | -4959595817993473/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1962 | -4959595817993473/1000000 |

## Stage 1963

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS-/HEQ-/CFQ+/BFP-/PQS+/BQS- |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS-/HEQ-/CFQ+/BFP-/PQS+/BQS-:H |
| Index | 0 |
| Context | 522 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1961 |
| Coordinate cut | r high 363503/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 53481/500000 | 390733/1000000 | 53481/500000 | 390733/1000000 |
| b | 52069/500000 | 140191/500000 | 52069/500000 | 140191/500000 |
| c | 199247/250000 | 194589/200000 | 199247/250000 | 194589/200000 |
| e | 107007/1000000 | 321179/1000000 | 107007/1000000 | 321179/1000000 |
| f | 107007/1000000 | 321179/1000000 | 107007/1000000 | 321179/1000000 |
| h | 727969/1000000 | 1 | 727969/1000000 | 1 |
| p | 98569/500000 | 7463/15625 | 98569/500000 | 7463/15625 |
| q | 20743/62500 | 140359/200000 | 20743/62500 | 140359/200000 |
| u | 191569/500000 | 146359/200000 | 191569/500000 | 146359/200000 |
| v | 113653/500000 | 673567/1000000 | 113653/500000 | 673567/1000000 |
| r | 363503/500000 | 1 | 363503/500000 | 1 |
| w | 565107/1000000 | 1 | 565107/1000000 | 1 |
| j | 199247/250000 | 55991/62500 | 199247/250000 | 55991/62500 |
| k | 4581/10000 | 89619/100000 | 4581/10000 | 89619/100000 |

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


## Stage 1964

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS-/HEQ-/CFQ+/BFP-/PQS+/BQS- |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS-/HEQ-/CFQ+/BFP-/PQS+/BQS-:HL |
| Index | 0 |
| Context | 522 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1963 |
| Coordinate cut | v low 538113/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 53481/500000 | 390733/1000000 | 53481/500000 | 390733/1000000 |
| b | 52069/500000 | 140191/500000 | 52069/500000 | 140191/500000 |
| c | 199247/250000 | 194589/200000 | 199247/250000 | 194589/200000 |
| e | 107007/1000000 | 321179/1000000 | 107007/1000000 | 321179/1000000 |
| f | 107007/1000000 | 321179/1000000 | 107007/1000000 | 321179/1000000 |
| h | 727969/1000000 | 1 | 727969/1000000 | 1 |
| p | 98569/500000 | 7463/15625 | 98569/500000 | 7463/15625 |
| q | 20743/62500 | 140359/200000 | 20743/62500 | 140359/200000 |
| u | 191569/500000 | 146359/200000 | 191569/500000 | 146359/200000 |
| v | 113653/500000 | 538113/1000000 | 113653/500000 | 538113/1000000 |
| r | 363503/500000 | 1 | 363503/500000 | 1 |
| w | 565107/1000000 | 1 | 565107/1000000 | 1 |
| j | 199247/250000 | 55991/62500 | 199247/250000 | 55991/62500 |
| k | 4581/10000 | 89619/100000 | 4581/10000 | 89619/100000 |

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
