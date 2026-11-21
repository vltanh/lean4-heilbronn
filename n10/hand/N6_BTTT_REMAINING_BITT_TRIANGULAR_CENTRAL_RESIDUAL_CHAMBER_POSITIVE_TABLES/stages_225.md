# BITT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 1125

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ+:LLLH |
| Index | 0 |
| Context | 241 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1123 |
| Coordinate cut | p high 244073/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 135501/250000 | 846283/1000000 | 135501/250000 | 846283/1000000 |
| e | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| f | 103767/1000000 | 211889/500000 | 103767/1000000 | 211889/500000 |
| h | 796617/1000000 | 1 | 796617/1000000 | 1 |
| p | 244073/500000 | 710233/1000000 | 244073/500000 | 710233/1000000 |
| q | 196767/1000000 | 574911/1000000 | 196767/1000000 | 574911/1000000 |
| u | 763/2500 | 595439/1000000 | 763/2500 | 595439/1000000 |
| v | 382767/1000000 | 149171/200000 | 382767/1000000 | 149171/200000 |
| r | 415069/1000000 | 1 | 415069/1000000 | 1 |
| w | 796617/1000000 | 1 | 796617/1000000 | 1 |
| j | 161159/500000 | 8033/8963 | 161159/500000 | 8033/8963 |
| k | 155647/500000 | 8033/8963 | 155647/500000 | 8033/8963 |

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
| 0 | bound | `{"direction":"lo","ref":"455:793","triangle":"BCQ","value":"157311/500000"}` | `1 * c * v + -1 * b * v + -157311/500000` |
| 1 | physical | `{"factor":0,"stage":455}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 2 | physical | `{"factor":102,"stage":455}` | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -93/1000` |
| 3 | physical | `{"factor":105,"stage":455}` | `-1/1 * p * v + 1/1 * e * p + 1/1 * v + 1/1 * q * u + -1/1 * q + -1/1 * e * u + -93/1000` |
| 4 | physical | `{"factor":113,"stage":455}` | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 5 | physical | `{"factor":132,"stage":455}` | `1/1 * f + -1/1 * e` |
| 6 | physical | `{"factor":27,"stage":455}` | `1/1 * q + -1/1 * a + -1/1 * e * p + 1/1 * a * p + -93/1000` |
| 7 | physical | `{"factor":31,"stage":455}` | `1/1 * w + -1/1 * a + -1/1 * e * r + 1/1 * a * r + -13857/20000` |
| 8 | physical | `{"factor":73,"stage":455}` | `1/1 * p * v + -1/1 * b * v + -1/1 * q * u + 1/1 * b * q + -93/1000` |
| 9 | physical | `{"factor":85,"stage":455}` | `-1/1 * f * v + 1/1 * c * v + 1/1 * u + -1/1 * c + -93/1000` |
| 10 | physical | `{"factor":88,"stage":455}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 11 | physical | `{"factor":92,"stage":455}` | `-1/1 * p * v + 1/1 * c * v + 1/1 * q * u + -1/1 * c * q + -93/1000` |
| 12 | coordinate | `{"box":1125,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 13 | coordinate | `{"box":1125,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 14 | coordinate | `{"box":1125,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 15 | coordinate | `{"box":1125,"direction":"hi","value":"846283/1000000","variable":"c"}` | `846283/1000000 + -1 * c` |
| 16 | coordinate | `{"box":1125,"direction":"hi","value":"211889/500000","variable":"f"}` | `211889/500000 + -1 * f` |
| 17 | coordinate | `{"box":1125,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 18 | coordinate | `{"box":1125,"direction":"hi","value":"574911/1000000","variable":"q"}` | `574911/1000000 + -1 * q` |
| 19 | coordinate | `{"box":1125,"direction":"hi","value":"595439/1000000","variable":"u"}` | `595439/1000000 + -1 * u` |
| 20 | coordinate | `{"box":1125,"direction":"hi","value":"149171/200000","variable":"v"}` | `149171/200000 + -1 * v` |
| 21 | coordinate | `{"box":1125,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 22 | coordinate | `{"box":1125,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 23 | coordinate | `{"box":1125,"direction":"lo","value":"415069/1000000","variable":"r"}` | `-415069/1000000 + 1 * r` |
| 24 | coordinate | `{"box":1125,"direction":"lo","value":"796617/1000000","variable":"w"}` | `-796617/1000000 + 1 * w` |
| 25 | coordinate | `{"box":1125,"direction":"lo","value":"135501/250000","variable":"c"}` | `-135501/250000 + 1 * c` |
| 26 | coordinate | `{"box":1125,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 27 | coordinate | `{"box":1125,"direction":"lo","value":"103767/1000000","variable":"f"}` | `-103767/1000000 + 1 * f` |
| 28 | coordinate | `{"box":1125,"direction":"lo","value":"796617/1000000","variable":"h"}` | `-796617/1000000 + 1 * h` |
| 29 | coordinate | `{"box":1125,"direction":"lo","value":"244073/500000","variable":"p"}` | `-244073/500000 + 1 * p` |
| 30 | coordinate | `{"box":1125,"direction":"lo","value":"196767/1000000","variable":"q"}` | `-196767/1000000 + 1 * q` |
| 31 | coordinate | `{"box":1125,"direction":"lo","value":"382767/1000000","variable":"v"}` | `-382767/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 28131000000 | 1 |
| 1 | 40807000000 | 6 |
| 2 | 3462000000 | 7 |
| 3 | 3324000000 | 0 |
| 4 | 21813000000 | 8 |
| 5 | 63059000000 | 9 |
| 6 | 42374000000 | 10 |
| 7 | 3732000000 | 11 |
| 8 | 68266000000 | 2 |
| 9 | 18081000000 | 3 |
| 10 | 33362000000 | 4 |
| 11 | 17352000000 | 5 |
| 12 | 28131000000 | 21, 22 |
| 13 | 28131000000 | 15, 21 |
| 14 | 21813000000 | 18, 22 |
| 15 | 40807000000 | 12, 29 |
| 16 | 25137000000 | 22, 31 |
| 17 | 3462000000 | 13, 21 |
| 18 | 42374000000 | 17, 25 |
| 19 | 46107000000 | 25, 30 |
| 20 | 70115000000 | 15, 31 |
| 21 | 22726000000 | 26, 29 |
| 22 | 50185000000 | 19, 26 |
| 23 | 3462000000 | 23, 26 |
| 24 | 33362000000 | 17, 27 |
| 25 | 63059000000 | 27, 31 |
| 26 | 33362000000 | 24, 27 |
| 27 | 42374000000 | 28, 29 |
| 28 | 68266000000 | 17, 19 |
| 29 | 33362000000 | 13, 17 |
| 30 | 708857 | 30 |
| 31 | 491418 | 12 |
| 32 | 125346 | 14 |
| 33 | 546895 | 19 |
| 34 | 558387 | 25 |
| 35 | 1000000 | 15, 30 |
| 36 | 196767 | 15 |
| 37 | 846283 | 18 |
| 38 | 298213 | 20 |
| 39 | 185228 | 28 |
| 40 | 359393 | 16 |
| 41 | 468659 | 26 |
| 42 | 149913 | 22 |
| 43 | 23580187550 | 29 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -3901181950700349/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -3901181950700349/1000000 | 1 | -3901181950700349/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1125 | -3901181950700349/1000000 |

## Stage 1126

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ+:LLH |
| Index | 0 |
| Context | 241 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1122 |
| Coordinate cut | f high 211889/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 135501/250000 | 846283/1000000 | 135501/250000 | 846283/1000000 |
| e | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| f | 211889/500000 | 344349/500000 | 211889/500000 | 344349/500000 |
| h | 796617/1000000 | 1 | 796617/1000000 | 1 |
| p | 55337/200000 | 710233/1000000 | 55337/200000 | 710233/1000000 |
| q | 196767/1000000 | 574911/1000000 | 196767/1000000 | 574911/1000000 |
| u | 763/2500 | 595439/1000000 | 763/2500 | 595439/1000000 |
| v | 382767/1000000 | 149171/200000 | 382767/1000000 | 149171/200000 |
| r | 415069/1000000 | 1 | 415069/1000000 | 1 |
| w | 796617/1000000 | 1 | 796617/1000000 | 1 |
| j | 161159/500000 | 8033/8963 | 161159/500000 | 8033/8963 |
| k | 155647/500000 | 8033/8963 | 155647/500000 | 8033/8963 |

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
| 0 | bound | `{"direction":"lo","ref":"455:793","triangle":"BCQ","value":"157311/500000"}` | `1 * c * v + -1 * b * v + -157311/500000` |
| 1 | physical | `{"factor":0,"stage":455}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 2 | physical | `{"factor":102,"stage":455}` | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -93/1000` |
| 3 | physical | `{"factor":105,"stage":455}` | `-1/1 * p * v + 1/1 * e * p + 1/1 * v + 1/1 * q * u + -1/1 * q + -1/1 * e * u + -93/1000` |
| 4 | physical | `{"factor":113,"stage":455}` | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 5 | physical | `{"factor":27,"stage":455}` | `1/1 * q + -1/1 * a + -1/1 * e * p + 1/1 * a * p + -93/1000` |
| 6 | physical | `{"factor":31,"stage":455}` | `1/1 * w + -1/1 * a + -1/1 * e * r + 1/1 * a * r + -13857/20000` |
| 7 | physical | `{"factor":73,"stage":455}` | `1/1 * p * v + -1/1 * b * v + -1/1 * q * u + 1/1 * b * q + -93/1000` |
| 8 | physical | `{"factor":85,"stage":455}` | `-1/1 * f * v + 1/1 * c * v + 1/1 * u + -1/1 * c + -93/1000` |
| 9 | physical | `{"factor":88,"stage":455}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 10 | physical | `{"factor":99,"stage":455}` | `-1/1 * f * w + 1/1 * e * f + 1/1 * w + 1/1 * r + -1279/1000 + -1/1 * e * r` |
| 11 | coordinate | `{"box":1126,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 12 | coordinate | `{"box":1126,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 13 | coordinate | `{"box":1126,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 14 | coordinate | `{"box":1126,"direction":"hi","value":"846283/1000000","variable":"c"}` | `846283/1000000 + -1 * c` |
| 15 | coordinate | `{"box":1126,"direction":"hi","value":"59/125","variable":"e"}` | `59/125 + -1 * e` |
| 16 | coordinate | `{"box":1126,"direction":"hi","value":"344349/500000","variable":"f"}` | `344349/500000 + -1 * f` |
| 17 | coordinate | `{"box":1126,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 18 | coordinate | `{"box":1126,"direction":"hi","value":"710233/1000000","variable":"p"}` | `710233/1000000 + -1 * p` |
| 19 | coordinate | `{"box":1126,"direction":"hi","value":"574911/1000000","variable":"q"}` | `574911/1000000 + -1 * q` |
| 20 | coordinate | `{"box":1126,"direction":"hi","value":"595439/1000000","variable":"u"}` | `595439/1000000 + -1 * u` |
| 21 | coordinate | `{"box":1126,"direction":"hi","value":"149171/200000","variable":"v"}` | `149171/200000 + -1 * v` |
| 22 | coordinate | `{"box":1126,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 23 | coordinate | `{"box":1126,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 24 | coordinate | `{"box":1126,"direction":"lo","value":"415069/1000000","variable":"r"}` | `-415069/1000000 + 1 * r` |
| 25 | coordinate | `{"box":1126,"direction":"lo","value":"796617/1000000","variable":"w"}` | `-796617/1000000 + 1 * w` |
| 26 | coordinate | `{"box":1126,"direction":"lo","value":"135501/250000","variable":"c"}` | `-135501/250000 + 1 * c` |
| 27 | coordinate | `{"box":1126,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 28 | coordinate | `{"box":1126,"direction":"lo","value":"211889/500000","variable":"f"}` | `-211889/500000 + 1 * f` |
| 29 | coordinate | `{"box":1126,"direction":"lo","value":"55337/200000","variable":"p"}` | `-55337/200000 + 1 * p` |
| 30 | coordinate | `{"box":1126,"direction":"lo","value":"196767/1000000","variable":"q"}` | `-196767/1000000 + 1 * q` |
| 31 | coordinate | `{"box":1126,"direction":"lo","value":"763/2500","variable":"u"}` | `-763/2500 + 1 * u` |
| 32 | coordinate | `{"box":1126,"direction":"lo","value":"382767/1000000","variable":"v"}` | `-382767/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 11969000000 | 1 |
| 1 | 34956000000 | 5 |
| 2 | 13945000000 | 6 |
| 3 | 35669000000 | 0 |
| 4 | 36811000000 | 7 |
| 5 | 65447000000 | 8 |
| 6 | 5010000000 | 9 |
| 7 | 9725000000 | 10 |
| 8 | 67788000000 | 2 |
| 9 | 34956000000 | 3 |
| 10 | 46130000000 | 4 |
| 11 | 11969000000 | 14, 22 |
| 12 | 36811000000 | 19, 23 |
| 13 | 34956000000 | 18, 22 |
| 14 | 72480000000 | 23, 32 |
| 15 | 13945000000 | 12, 22 |
| 16 | 5010000000 | 17, 26 |
| 17 | 5010000000 | 26, 30 |
| 18 | 59150000000 | 21, 26 |
| 19 | 41966000000 | 14, 32 |
| 20 | 9725000000 | 15, 28 |
| 21 | 32831000000 | 20, 27 |
| 22 | 23670000000 | 12, 15 |
| 23 | 46130000000 | 17, 28 |
| 24 | 65447000000 | 28, 32 |
| 25 | 55856000000 | 25, 28 |
| 26 | 5010000000 | 17, 18 |
| 27 | 67788000000 | 17, 20 |
| 28 | 46130000000 | 12, 17 |
| 29 | 1854000000 | 21, 29 |
| 30 | 1854000000 | 19, 20 |
| 31 | 11969000000 | 22, 23 |
| 32 | 1241987223 | 22 |
| 33 | 7821890562 | 23 |
| 34 | 383091 | 19 |
| 35 | 65975 | 11 |
| 36 | 543968 | 25 |
| 37 | 382767 | 14 |
| 38 | 1556516 | 21 |
| 39 | 1254241 | 32 |
| 40 | 1000000 | 18, 32 |
| 41 | 477189 | 18 |
| 42 | 1000000 | 30, 31 |
| 43 | 305200 | 30 |
| 44 | 307384 | 31 |
| 45 | 675042 | 26 |
| 46 | 1000000 | 16, 25 |
| 47 | 796617 | 16 |
| 48 | 688698 | 13 |
| 49 | 209185 | 24 |
| 50 | 432918 | 17 |
| 51 | 1000000 | 15, 31 |
| 52 | 404059 | 15 |
| 53 | 472000 | 20 |
| 54 | 18826591001 | 28 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -6948208269181817/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -6948208269181817/1000000 | 1 | -6948208269181817/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1126 | -6948208269181817/1000000 |

## Stage 1127

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ+:LH |
| Index | 0 |
| Context | 241 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1121 |
| Coordinate cut | u high 595439/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 135501/250000 | 846283/1000000 | 135501/250000 | 846283/1000000 |
| e | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| f | 103767/1000000 | 344349/500000 | 103767/1000000 | 344349/500000 |
| h | 796617/1000000 | 1 | 796617/1000000 | 1 |
| p | 55337/200000 | 710233/1000000 | 55337/200000 | 710233/1000000 |
| q | 196767/1000000 | 574911/1000000 | 196767/1000000 | 574911/1000000 |
| u | 595439/1000000 | 102859/125000 | 595439/1000000 | 102859/125000 |
| v | 382767/1000000 | 149171/200000 | 382767/1000000 | 149171/200000 |
| r | 415069/1000000 | 1 | 415069/1000000 | 1 |
| w | 796617/1000000 | 1 | 796617/1000000 | 1 |
| j | 161159/500000 | 8033/8963 | 161159/500000 | 8033/8963 |
| k | 155647/500000 | 8033/8963 | 155647/500000 | 8033/8963 |

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
| 0 | bound | `{"direction":"lo","ref":"455:228","triangle":"EFQ","value":"53013/500000"}` | `1 * f * v + -1 * e * f + -1 * v + -1 * u + 446987/500000 + 1 * e * u` |
| 1 | physical | `{"factor":0,"stage":455}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 2 | physical | `{"factor":102,"stage":455}` | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -93/1000` |
| 3 | physical | `{"factor":105,"stage":455}` | `-1/1 * p * v + 1/1 * e * p + 1/1 * v + 1/1 * q * u + -1/1 * q + -1/1 * e * u + -93/1000` |
| 4 | physical | `{"factor":113,"stage":455}` | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 5 | physical | `{"factor":27,"stage":455}` | `1/1 * q + -1/1 * a + -1/1 * e * p + 1/1 * a * p + -93/1000` |
| 6 | physical | `{"factor":29,"stage":455}` | `1/1 * v + -1/1 * a + -1/1 * e * u + 1/1 * a * u + -279/1000` |
| 7 | physical | `{"factor":31,"stage":455}` | `1/1 * w + -1/1 * a + -1/1 * e * r + 1/1 * a * r + -13857/20000` |
| 8 | physical | `{"factor":73,"stage":455}` | `1/1 * p * v + -1/1 * b * v + -1/1 * q * u + 1/1 * b * q + -93/1000` |
| 9 | physical | `{"factor":85,"stage":455}` | `-1/1 * f * v + 1/1 * c * v + 1/1 * u + -1/1 * c + -93/1000` |
| 10 | physical | `{"factor":88,"stage":455}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 11 | physical | `{"factor":99,"stage":455}` | `-1/1 * f * w + 1/1 * e * f + 1/1 * w + 1/1 * r + -1279/1000 + -1/1 * e * r` |
| 12 | coordinate | `{"box":1127,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 13 | coordinate | `{"box":1127,"direction":"hi","value":"6143/20000","variable":"b"}` | `6143/20000 + -1 * b` |
| 14 | coordinate | `{"box":1127,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 15 | coordinate | `{"box":1127,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 16 | coordinate | `{"box":1127,"direction":"hi","value":"846283/1000000","variable":"c"}` | `846283/1000000 + -1 * c` |
| 17 | coordinate | `{"box":1127,"direction":"hi","value":"59/125","variable":"e"}` | `59/125 + -1 * e` |
| 18 | coordinate | `{"box":1127,"direction":"hi","value":"344349/500000","variable":"f"}` | `344349/500000 + -1 * f` |
| 19 | coordinate | `{"box":1127,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 20 | coordinate | `{"box":1127,"direction":"hi","value":"710233/1000000","variable":"p"}` | `710233/1000000 + -1 * p` |
| 21 | coordinate | `{"box":1127,"direction":"hi","value":"574911/1000000","variable":"q"}` | `574911/1000000 + -1 * q` |
| 22 | coordinate | `{"box":1127,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 23 | coordinate | `{"box":1127,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 24 | coordinate | `{"box":1127,"direction":"lo","value":"415069/1000000","variable":"r"}` | `-415069/1000000 + 1 * r` |
| 25 | coordinate | `{"box":1127,"direction":"lo","value":"796617/1000000","variable":"w"}` | `-796617/1000000 + 1 * w` |
| 26 | coordinate | `{"box":1127,"direction":"lo","value":"135501/250000","variable":"c"}` | `-135501/250000 + 1 * c` |
| 27 | coordinate | `{"box":1127,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 28 | coordinate | `{"box":1127,"direction":"lo","value":"103767/1000000","variable":"f"}` | `-103767/1000000 + 1 * f` |
| 29 | coordinate | `{"box":1127,"direction":"lo","value":"796617/1000000","variable":"h"}` | `-796617/1000000 + 1 * h` |
| 30 | coordinate | `{"box":1127,"direction":"lo","value":"55337/200000","variable":"p"}` | `-55337/200000 + 1 * p` |
| 31 | coordinate | `{"box":1127,"direction":"lo","value":"196767/1000000","variable":"q"}` | `-196767/1000000 + 1 * q` |
| 32 | coordinate | `{"box":1127,"direction":"lo","value":"595439/1000000","variable":"u"}` | `-595439/1000000 + 1 * u` |
| 33 | coordinate | `{"box":1127,"direction":"lo","value":"382767/1000000","variable":"v"}` | `-382767/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 57976000000 | 1 |
| 1 | 29317000000 | 5 |
| 2 | 85409000000 | 6 |
| 3 | 3268000000 | 7 |
| 4 | 31310000000 | 8 |
| 5 | 14698000000 | 9 |
| 6 | 3805000000 | 10 |
| 7 | 2279000000 | 0 |
| 8 | 2279000000 | 11 |
| 9 | 121764000000 | 2 |
| 10 | 29317000000 | 3 |
| 11 | 35145000000 | 4 |
| 12 | 57976000000 | 22, 23 |
| 13 | 57976000000 | 16, 22 |
| 14 | 31310000000 | 21, 23 |
| 15 | 29317000000 | 20, 22 |
| 16 | 31310000000 | 23, 33 |
| 17 | 85409000000 | 12, 32 |
| 18 | 3268000000 | 14, 22 |
| 19 | 3805000000 | 19, 26 |
| 20 | 3805000000 | 26, 31 |
| 21 | 14698000000 | 16, 33 |
| 22 | 9317000000 | 17, 32 |
| 23 | 5548000000 | 14, 17 |
| 24 | 35145000000 | 19, 28 |
| 25 | 12419000000 | 28, 33 |
| 26 | 34580000000 | 25, 28 |
| 27 | 2845000000 | 15, 18 |
| 28 | 3805000000 | 19, 20 |
| 29 | 121764000000 | 29, 32 |
| 30 | 35145000000 | 14, 19 |
| 31 | 1993000000 | 20, 33 |
| 32 | 1993000000 | 31, 32 |
| 33 | 90377 | 31 |
| 34 | 141972 | 22 |
| 35 | 465240 | 33 |
| 36 | 608670 | 25 |
| 37 | 1000000 | 17, 24 |
| 38 | 415069 | 17 |
| 39 | 472000 | 14 |
| 40 | 54341430669 | 32 |
| 41 | 206523 | 16 |
| 42 | 1000000 | 18, 25 |
| 43 | 796617 | 18 |
| 44 | 688698 | 15 |
| 45 | 545444 | 24 |
| 46 | 17122745474 | 19 |
| 47 | 33048 | 13 |
| 48 | 8230 | 30 |
| 49 | 294837 | 27 |
| 50 | 599233 | 28 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -4942999124456709/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -4942999124456709/1000000 | 1 | -4942999124456709/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1127 | -4942999124456709/1000000 |

## Stage 1128

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ+:H |
| Index | 0 |
| Context | 241 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1120 |
| Coordinate cut | c high 846283/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 846283/1000000 | 1 | 846283/1000000 | 1 |
| e | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| f | 103767/1000000 | 344349/500000 | 103767/1000000 | 344349/500000 |
| h | 796617/1000000 | 1 | 796617/1000000 | 1 |
| p | 55337/200000 | 710233/1000000 | 55337/200000 | 710233/1000000 |
| q | 196767/1000000 | 574911/1000000 | 196767/1000000 | 574911/1000000 |
| u | 763/2500 | 102859/125000 | 763/2500 | 102859/125000 |
| v | 382767/1000000 | 149171/200000 | 382767/1000000 | 149171/200000 |
| r | 415069/1000000 | 1 | 415069/1000000 | 1 |
| w | 796617/1000000 | 1 | 796617/1000000 | 1 |
| j | 161159/500000 | 8033/8963 | 161159/500000 | 8033/8963 |
| k | 155647/500000 | 8033/8963 | 155647/500000 | 8033/8963 |

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
| 0 | bound | `{"direction":"lo","ref":"455:778","triangle":"CEQ","value":"62117/500000"}` | `1 * v + -1 * c * v + -1 * e * u + 1 * c * e + -62117/500000` |
| 1 | bound | `{"direction":"lo","ref":"455:794","triangle":"CEF","value":"16163/50000"}` | `33837/50000 + -1 * c + -1 * e * f + 1 * c * e` |
| 2 | physical | `{"factor":0,"stage":455}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 3 | physical | `{"factor":102,"stage":455}` | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -93/1000` |
| 4 | physical | `{"factor":105,"stage":455}` | `-1/1 * p * v + 1/1 * e * p + 1/1 * v + 1/1 * q * u + -1/1 * q + -1/1 * e * u + -93/1000` |
| 5 | physical | `{"factor":113,"stage":455}` | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 6 | physical | `{"factor":132,"stage":455}` | `1/1 * f + -1/1 * e` |
| 7 | physical | `{"factor":27,"stage":455}` | `1/1 * q + -1/1 * a + -1/1 * e * p + 1/1 * a * p + -93/1000` |
| 8 | physical | `{"factor":31,"stage":455}` | `1/1 * w + -1/1 * a + -1/1 * e * r + 1/1 * a * r + -13857/20000` |
| 9 | physical | `{"factor":73,"stage":455}` | `1/1 * p * v + -1/1 * b * v + -1/1 * q * u + 1/1 * b * q + -93/1000` |
| 10 | physical | `{"factor":85,"stage":455}` | `-1/1 * f * v + 1/1 * c * v + 1/1 * u + -1/1 * c + -93/1000` |
| 11 | physical | `{"factor":88,"stage":455}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 12 | physical | `{"factor":99,"stage":455}` | `-1/1 * f * w + 1/1 * e * f + 1/1 * w + 1/1 * r + -1279/1000 + -1/1 * e * r` |
| 13 | coordinate | `{"box":1128,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 14 | coordinate | `{"box":1128,"direction":"hi","value":"6143/20000","variable":"b"}` | `6143/20000 + -1 * b` |
| 15 | coordinate | `{"box":1128,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 16 | coordinate | `{"box":1128,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 17 | coordinate | `{"box":1128,"direction":"hi","value":"59/125","variable":"e"}` | `59/125 + -1 * e` |
| 18 | coordinate | `{"box":1128,"direction":"hi","value":"344349/500000","variable":"f"}` | `344349/500000 + -1 * f` |
| 19 | coordinate | `{"box":1128,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 20 | coordinate | `{"box":1128,"direction":"hi","value":"710233/1000000","variable":"p"}` | `710233/1000000 + -1 * p` |
| 21 | coordinate | `{"box":1128,"direction":"hi","value":"574911/1000000","variable":"q"}` | `574911/1000000 + -1 * q` |
| 22 | coordinate | `{"box":1128,"direction":"hi","value":"102859/125000","variable":"u"}` | `102859/125000 + -1 * u` |
| 23 | coordinate | `{"box":1128,"direction":"hi","value":"149171/200000","variable":"v"}` | `149171/200000 + -1 * v` |
| 24 | coordinate | `{"box":1128,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 25 | coordinate | `{"box":1128,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 26 | coordinate | `{"box":1128,"direction":"lo","value":"415069/1000000","variable":"r"}` | `-415069/1000000 + 1 * r` |
| 27 | coordinate | `{"box":1128,"direction":"lo","value":"796617/1000000","variable":"w"}` | `-796617/1000000 + 1 * w` |
| 28 | coordinate | `{"box":1128,"direction":"lo","value":"846283/1000000","variable":"c"}` | `-846283/1000000 + 1 * c` |
| 29 | coordinate | `{"box":1128,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 30 | coordinate | `{"box":1128,"direction":"lo","value":"103767/1000000","variable":"f"}` | `-103767/1000000 + 1 * f` |
| 31 | coordinate | `{"box":1128,"direction":"lo","value":"55337/200000","variable":"p"}` | `-55337/200000 + 1 * p` |
| 32 | coordinate | `{"box":1128,"direction":"lo","value":"196767/1000000","variable":"q"}` | `-196767/1000000 + 1 * q` |
| 33 | coordinate | `{"box":1128,"direction":"lo","value":"763/2500","variable":"u"}` | `-763/2500 + 1 * u` |
| 34 | coordinate | `{"box":1128,"direction":"lo","value":"382767/1000000","variable":"v"}` | `-382767/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 15943000000 | 2 |
| 1 | 40854000000 | 7 |
| 2 | 1413000000 | 8 |
| 3 | 44195000000 | 9 |
| 4 | 985000000 | 1 |
| 5 | 20305000000 | 0 |
| 6 | 87186000000 | 10 |
| 7 | 5816000000 | 11 |
| 8 | 985000000 | 12 |
| 9 | 107467000000 | 3 |
| 10 | 44195000000 | 4 |
| 11 | 22122000000 | 5 |
| 12 | 29658000000 | 6 |
| 13 | 15943000000 | 24, 25 |
| 14 | 15943000000 | 13, 28 |
| 15 | 26113000000 | 21, 25 |
| 16 | 18082000000 | 14, 32 |
| 17 | 40854000000 | 20, 24 |
| 18 | 44195000000 | 25, 34 |
| 19 | 1413000000 | 15, 24 |
| 20 | 21290000000 | 17, 28 |
| 21 | 5816000000 | 19, 28 |
| 22 | 5816000000 | 28, 32 |
| 23 | 66882000000 | 23, 28 |
| 24 | 3341000000 | 17, 31 |
| 25 | 42968000000 | 17, 33 |
| 26 | 2398000000 | 15, 17 |
| 27 | 22122000000 | 19, 30 |
| 28 | 87186000000 | 30, 34 |
| 29 | 23108000000 | 27, 30 |
| 30 | 5816000000 | 19, 20 |
| 31 | 107467000000 | 19, 22 |
| 32 | 22122000000 | 15, 19 |
| 33 | 572043 | 21 |
| 34 | 208430 | 24 |
| 35 | 840862 | 16 |
| 36 | 196767 | 14 |
| 37 | 18669733079 | 28 |
| 38 | 1087379 | 23 |
| 39 | 1000000 | 28, 34 |
| 40 | 846283 | 34 |
| 41 | 1000000 | 29, 33 |
| 42 | 701945 | 29 |
| 43 | 207767 | 33 |
| 44 | 1000000 | 18, 27 |
| 45 | 796617 | 18 |
| 46 | 233229 | 26 |
| 47 | 215150 | 19 |
| 48 | 149298 | 30 |
| 49 | 349776 | 25 |
| 50 | 249018 | 20 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -452740755142391/100000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -452740755142391/100000 | 1 | -452740755142391/100000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1128 | -452740755142391/100000 |

## Stage 1129

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ-/BPS+/AQS-/AQR- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ-/BPS+/AQS-/AQR-:root |
| Index | 0 |
| Context | 247 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 461 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 145241/500000 | 103767/1000000 | 145241/500000 |
| c | 135501/250000 | 1 | 135501/250000 | 1 |
| e | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| f | 103767/1000000 | 661171/1000000 | 103767/1000000 | 661171/1000000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 145397/500000 | 710233/1000000 | 145397/500000 | 710233/1000000 |
| q | 196767/1000000 | 308103/500000 | 196767/1000000 | 308103/500000 |
| u | 62991/250000 | 344349/500000 | 62991/250000 | 344349/500000 |
| v | 225289/500000 | 907/1000 | 225289/500000 | 907/1000 |
| r | 451113/1000000 | 1 | 451113/1000000 | 1 |
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
