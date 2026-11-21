# BITT convex: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 655

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS+/BFP-/BQR+/APS+/APR-/EPQ- |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS+/BFP-/BQR+/APS+/APR-/EPQ-:HLHHLHLL |
| Index | 0 |
| Context | 41 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 654 |
| Coordinate cut | r low 421843/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 796617/1000000 | 1 | 796617/1000000 | 1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 188671/1000000 | 58493/100000 | 188671/1000000 | 58493/100000 |
| h | 796617/1000000 | 1 | 796617/1000000 | 1 |
| p | 220141/1000000 | 219739/500000 | 220141/1000000 | 219739/500000 |
| q | 137651/500000 | 470859/1000000 | 137651/500000 | 470859/1000000 |
| u | 266419/500000 | 796909/1000000 | 266419/500000 | 796909/1000000 |
| v | 26769/100000 | 518169/1000000 | 26769/100000 | 518169/1000000 |
| r | 338967/500000 | 421843/500000 | 338967/500000 | 421843/500000 |
| w | 36977/62500 | 108133/125000 | 36977/62500 | 108133/125000 |
| j | 120419/250000 | 438941/500000 | 120419/250000 | 438941/500000 |
| k | 796617/1000000 | 1 | 796617/1000000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"58:1245","triangle":"EQR","value":"68197/500000"}` | `-1 * u * w + 1 * e * u + 1 * w + 1 * v * r + -1 * v + -1 * e * r + -68197/500000` |
| 1 | bound | `{"direction":"lo","ref":"58:1292","triangle":"ARS","value":"73921/200000"}` | `1 * r * k + -1 * a * r + -1 * w * j + 1 * a * j + -73921/200000` |
| 2 | physical | `{"factor":0,"stage":58}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 3 | physical | `{"factor":10,"stage":58}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 4 | physical | `{"factor":112,"stage":58}` | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -93/1000` |
| 5 | physical | `{"factor":115,"stage":58}` | `-1/1 * p * v + 1/1 * e * p + 1/1 * v + 1/1 * q * u + -1/1 * q + -1/1 * e * u + -93/1000` |
| 6 | physical | `{"factor":124,"stage":58}` | `-1/1 * f * k + -1/1 * h * j + 1/1 * f * h + 1/1 * j + -93/1000` |
| 7 | physical | `{"factor":130,"stage":58}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 8 | physical | `{"factor":44,"stage":58}` | `-1/1 * p * w + 1/1 * a * p + 1/1 * q * r + -1/1 * a * r + -93/1000` |
| 9 | physical | `{"factor":69,"stage":58}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 10 | physical | `{"factor":80,"stage":58}` | `1/1 * u * w + -1/1 * b * w + -1/1 * v * r + 1/1 * b * v + -93/1000` |
| 11 | physical | `{"factor":92,"stage":58}` | `1/1 * f * v + -1/1 * c * v + -1/1 * u + 1/1 * c + -93/1000` |
| 12 | physical | `{"factor":96,"stage":58}` | `1/1 * c * v + 1/1 * h * u + -1/1 * c * h + -93/1000` |
| 13 | coordinate | `{"box":655,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 14 | coordinate | `{"box":655,"direction":"hi","value":"421843/500000","variable":"r"}` | `421843/500000 + -1 * r` |
| 15 | coordinate | `{"box":655,"direction":"hi","value":"108133/125000","variable":"w"}` | `108133/125000 + -1 * w` |
| 16 | coordinate | `{"box":655,"direction":"hi","value":"438941/500000","variable":"j"}` | `438941/500000 + -1 * j` |
| 17 | coordinate | `{"box":655,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 18 | coordinate | `{"box":655,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 19 | coordinate | `{"box":655,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 20 | coordinate | `{"box":655,"direction":"hi","value":"58493/100000","variable":"f"}` | `58493/100000 + -1 * f` |
| 21 | coordinate | `{"box":655,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 22 | coordinate | `{"box":655,"direction":"hi","value":"219739/500000","variable":"p"}` | `219739/500000 + -1 * p` |
| 23 | coordinate | `{"box":655,"direction":"hi","value":"470859/1000000","variable":"q"}` | `470859/1000000 + -1 * q` |
| 24 | coordinate | `{"box":655,"direction":"hi","value":"796909/1000000","variable":"u"}` | `796909/1000000 + -1 * u` |
| 25 | coordinate | `{"box":655,"direction":"hi","value":"518169/1000000","variable":"v"}` | `518169/1000000 + -1 * v` |
| 26 | coordinate | `{"box":655,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 27 | coordinate | `{"box":655,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 28 | coordinate | `{"box":655,"direction":"lo","value":"338967/500000","variable":"r"}` | `-338967/500000 + 1 * r` |
| 29 | coordinate | `{"box":655,"direction":"lo","value":"36977/62500","variable":"w"}` | `-36977/62500 + 1 * w` |
| 30 | coordinate | `{"box":655,"direction":"lo","value":"120419/250000","variable":"j"}` | `-120419/250000 + 1 * j` |
| 31 | coordinate | `{"box":655,"direction":"lo","value":"796617/1000000","variable":"k"}` | `-796617/1000000 + 1 * k` |
| 32 | coordinate | `{"box":655,"direction":"lo","value":"796617/1000000","variable":"c"}` | `-796617/1000000 + 1 * c` |
| 33 | coordinate | `{"box":655,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 34 | coordinate | `{"box":655,"direction":"lo","value":"188671/1000000","variable":"f"}` | `-188671/1000000 + 1 * f` |
| 35 | coordinate | `{"box":655,"direction":"lo","value":"796617/1000000","variable":"h"}` | `-796617/1000000 + 1 * h` |
| 36 | coordinate | `{"box":655,"direction":"lo","value":"220141/1000000","variable":"p"}` | `-220141/1000000 + 1 * p` |
| 37 | coordinate | `{"box":655,"direction":"lo","value":"137651/500000","variable":"q"}` | `-137651/500000 + 1 * q` |
| 38 | coordinate | `{"box":655,"direction":"lo","value":"266419/500000","variable":"u"}` | `-266419/500000 + 1 * u` |
| 39 | coordinate | `{"box":655,"direction":"lo","value":"26769/100000","variable":"v"}` | `-26769/100000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 2375000000 | 2 |
| 1 | 29431000000 | 3 |
| 2 | 38022000000 | 8 |
| 3 | 13619000000 | 1 |
| 4 | 17238000000 | 9 |
| 5 | 19550000000 | 10 |
| 6 | 17048000000 | 11 |
| 7 | 17385000000 | 12 |
| 8 | 31181000000 | 4 |
| 9 | 57451000000 | 5 |
| 10 | 17338000000 | 0 |
| 11 | 21996000000 | 6 |
| 12 | 5316000000 | 7 |
| 13 | 31806000000 | 26, 27 |
| 14 | 2375000000 | 18, 26 |
| 15 | 46669000000 | 23, 27 |
| 16 | 67453000000 | 22, 26 |
| 17 | 19550000000 | 25, 27 |
| 18 | 19550000000 | 27, 29 |
| 19 | 17462000000 | 26, 28 |
| 20 | 34180000000 | 13, 14 |
| 21 | 13619000000 | 16, 26 |
| 22 | 17385000000 | 18, 21 |
| 23 | 337000000 | 18, 39 |
| 24 | 30728000000 | 22, 33 |
| 25 | 26723000000 | 19, 36 |
| 26 | 8932000000 | 33, 38 |
| 27 | 17338000000 | 14, 19 |
| 28 | 21996000000 | 21, 34 |
| 29 | 17238000000 | 20, 23 |
| 30 | 17048000000 | 25, 34 |
| 31 | 5316000000 | 15, 34 |
| 32 | 27312000000 | 17, 20 |
| 33 | 13796000000 | 35, 38 |
| 34 | 21996000000 | 30, 35 |
| 35 | 57451000000 | 36, 39 |
| 36 | 57451000000 | 23, 38 |
| 37 | 38022000000 | 29, 36 |
| 38 | 38022000000 | 14, 37 |
| 39 | 2213000000 | 15, 38 |
| 40 | 2213000000 | 14, 25 |
| 41 | 18935000000 | 14, 31 |
| 42 | 18935000000 | 29, 30 |
| 43 | 1000000 | 13, 28 |
| 44 | 677934 | 13 |
| 45 | 825319 | 14 |
| 46 | 550733 | 22 |
| 47 | 96181 | 27 |
| 48 | 1000000 | 29, 38 |
| 49 | 591632 | 38 |
| 50 | 532838 | 29 |
| 51 | 1000000 | 25, 28 |
| 52 | 677934 | 25 |
| 53 | 732065 | 24 |
| 54 | 341845 | 32 |
| 55 | 289651 | 39 |
| 56 | 28972 | 21 |
| 57 | 220141 | 19 |
| 58 | 616187 | 37 |
| 59 | 764518 | 15 |
| 60 | 263321 | 16 |
| 61 | 756812 | 28 |
| 62 | 699698 | 26 |
| 63 | 249098 | 33 |
| 64 | 242106 | 34 |
| 65 | 413750 | 31 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -856447145096611/500000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -856447145096611/500000 | 1 | -856447145096611/500000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 655 | -856447145096611/500000 |

## Stage 656

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS+/BFP-/BQR+/APS+/APR-/EPQ- |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS+/BFP-/BQR+/APS+/APR-/EPQ-:HLHHLHLH |
| Index | 0 |
| Context | 41 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 654 |
| Coordinate cut | r high 421843/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 796617/1000000 | 1 | 796617/1000000 | 1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 188671/1000000 | 58493/100000 | 188671/1000000 | 58493/100000 |
| h | 796617/1000000 | 1 | 796617/1000000 | 1 |
| p | 220141/1000000 | 219739/500000 | 220141/1000000 | 219739/500000 |
| q | 137651/500000 | 470859/1000000 | 137651/500000 | 470859/1000000 |
| u | 266419/500000 | 796909/1000000 | 266419/500000 | 796909/1000000 |
| v | 26769/100000 | 518169/1000000 | 26769/100000 | 518169/1000000 |
| r | 421843/500000 | 1 | 421843/500000 | 1 |
| w | 36977/62500 | 108133/125000 | 36977/62500 | 108133/125000 |
| j | 120419/250000 | 438941/500000 | 120419/250000 | 438941/500000 |
| k | 796617/1000000 | 1 | 796617/1000000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"58:1245","triangle":"EQR","value":"68197/500000"}` | `-1 * u * w + 1 * e * u + 1 * w + 1 * v * r + -1 * v + -1 * e * r + -68197/500000` |
| 1 | physical | `{"factor":0,"stage":58}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 2 | physical | `{"factor":10,"stage":58}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 3 | physical | `{"factor":112,"stage":58}` | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -93/1000` |
| 4 | physical | `{"factor":115,"stage":58}` | `-1/1 * p * v + 1/1 * e * p + 1/1 * v + 1/1 * q * u + -1/1 * q + -1/1 * e * u + -93/1000` |
| 5 | physical | `{"factor":44,"stage":58}` | `-1/1 * p * w + 1/1 * a * p + 1/1 * q * r + -1/1 * a * r + -93/1000` |
| 6 | physical | `{"factor":69,"stage":58}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 7 | physical | `{"factor":80,"stage":58}` | `1/1 * u * w + -1/1 * b * w + -1/1 * v * r + 1/1 * b * v + -93/1000` |
| 8 | physical | `{"factor":88,"stage":58}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 9 | physical | `{"factor":92,"stage":58}` | `1/1 * f * v + -1/1 * c * v + -1/1 * u + 1/1 * c + -93/1000` |
| 10 | physical | `{"factor":96,"stage":58}` | `1/1 * c * v + 1/1 * h * u + -1/1 * c * h + -93/1000` |
| 11 | coordinate | `{"box":656,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 12 | coordinate | `{"box":656,"direction":"hi","value":"6143/20000","variable":"b"}` | `6143/20000 + -1 * b` |
| 13 | coordinate | `{"box":656,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 14 | coordinate | `{"box":656,"direction":"hi","value":"108133/125000","variable":"w"}` | `108133/125000 + -1 * w` |
| 15 | coordinate | `{"box":656,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 16 | coordinate | `{"box":656,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 17 | coordinate | `{"box":656,"direction":"hi","value":"58493/100000","variable":"f"}` | `58493/100000 + -1 * f` |
| 18 | coordinate | `{"box":656,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 19 | coordinate | `{"box":656,"direction":"hi","value":"219739/500000","variable":"p"}` | `219739/500000 + -1 * p` |
| 20 | coordinate | `{"box":656,"direction":"hi","value":"470859/1000000","variable":"q"}` | `470859/1000000 + -1 * q` |
| 21 | coordinate | `{"box":656,"direction":"hi","value":"796909/1000000","variable":"u"}` | `796909/1000000 + -1 * u` |
| 22 | coordinate | `{"box":656,"direction":"hi","value":"518169/1000000","variable":"v"}` | `518169/1000000 + -1 * v` |
| 23 | coordinate | `{"box":656,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 24 | coordinate | `{"box":656,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 25 | coordinate | `{"box":656,"direction":"lo","value":"421843/500000","variable":"r"}` | `-421843/500000 + 1 * r` |
| 26 | coordinate | `{"box":656,"direction":"lo","value":"36977/62500","variable":"w"}` | `-36977/62500 + 1 * w` |
| 27 | coordinate | `{"box":656,"direction":"lo","value":"796617/1000000","variable":"c"}` | `-796617/1000000 + 1 * c` |
| 28 | coordinate | `{"box":656,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 29 | coordinate | `{"box":656,"direction":"lo","value":"188671/1000000","variable":"f"}` | `-188671/1000000 + 1 * f` |
| 30 | coordinate | `{"box":656,"direction":"lo","value":"220141/1000000","variable":"p"}` | `-220141/1000000 + 1 * p` |
| 31 | coordinate | `{"box":656,"direction":"lo","value":"137651/500000","variable":"q"}` | `-137651/500000 + 1 * q` |
| 32 | coordinate | `{"box":656,"direction":"lo","value":"266419/500000","variable":"u"}` | `-266419/500000 + 1 * u` |
| 33 | coordinate | `{"box":656,"direction":"lo","value":"26769/100000","variable":"v"}` | `-26769/100000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 2182000000 | 1 |
| 1 | 40936000000 | 2 |
| 2 | 38838000000 | 5 |
| 3 | 24138000000 | 6 |
| 4 | 27615000000 | 7 |
| 5 | 3500000000 | 8 |
| 6 | 38849000000 | 9 |
| 7 | 33789000000 | 10 |
| 8 | 33789000000 | 3 |
| 9 | 54373000000 | 4 |
| 10 | 11173000000 | 0 |
| 11 | 43119000000 | 23, 24 |
| 12 | 2182000000 | 15, 23 |
| 13 | 65074000000 | 20, 24 |
| 14 | 79774000000 | 19, 23 |
| 15 | 27615000000 | 22, 24 |
| 16 | 27615000000 | 24, 26 |
| 17 | 38838000000 | 23, 25 |
| 18 | 3500000000 | 15, 28 |
| 19 | 33789000000 | 15, 18 |
| 20 | 5060000000 | 15, 22 |
| 21 | 3500000000 | 14, 15 |
| 22 | 19228000000 | 19, 28 |
| 23 | 35145000000 | 16, 30 |
| 24 | 9411000000 | 28, 32 |
| 25 | 14673000000 | 13, 16 |
| 26 | 24138000000 | 17, 20 |
| 27 | 3856000000 | 22, 29 |
| 28 | 34994000000 | 17, 33 |
| 29 | 54373000000 | 30, 33 |
| 30 | 54373000000 | 20, 32 |
| 31 | 38838000000 | 14, 19 |
| 32 | 38838000000 | 20, 25 |
| 33 | 16443000000 | 14, 32 |
| 34 | 16443000000 | 13, 22 |
| 35 | 1000000 | 11, 24 |
| 36 | 103767 | 11 |
| 37 | 307150 | 12 |
| 38 | 371532 | 19 |
| 39 | 331452 | 24 |
| 40 | 1000000 | 26, 32 |
| 41 | 695399 | 32 |
| 42 | 532838 | 26 |
| 43 | 1000000 | 22, 25 |
| 44 | 1198594 | 22 |
| 45 | 518169 | 13 |
| 46 | 482965 | 14 |
| 47 | 1000000 | 29, 33 |
| 48 | 267690 | 29 |
| 49 | 188671 | 33 |
| 50 | 816289 | 21 |
| 51 | 55046 | 27 |
| 52 | 532838 | 28 |
| 53 | 429140 | 31 |
| 54 | 488169 | 23 |
| 55 | 276771 | 25 |
| 56 | 132849 | 16 |
| 57 | 8982 | 17 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -71863692978441/500000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -71863692978441/500000 | 1 | -71863692978441/500000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 656 | -71863692978441/500000 |

## Stage 657

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS+/BFP-/BQR+/APS+/APR-/EPQ- |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS+/BFP-/BQR+/APS+/APR-/EPQ-:HLHHLHH |
| Index | 0 |
| Context | 41 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 653 |
| Coordinate cut | q high 470859/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 796617/1000000 | 1 | 796617/1000000 | 1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 188671/1000000 | 58493/100000 | 188671/1000000 | 58493/100000 |
| h | 796617/1000000 | 1 | 796617/1000000 | 1 |
| p | 220141/1000000 | 219739/500000 | 220141/1000000 | 219739/500000 |
| q | 470859/1000000 | 117387/200000 | 470859/1000000 | 117387/200000 |
| u | 266419/500000 | 796909/1000000 | 266419/500000 | 796909/1000000 |
| v | 26769/100000 | 518169/1000000 | 26769/100000 | 518169/1000000 |
| r | 338967/500000 | 1 | 338967/500000 | 1 |
| w | 36977/62500 | 108133/125000 | 36977/62500 | 108133/125000 |
| j | 120419/250000 | 438941/500000 | 120419/250000 | 438941/500000 |
| k | 796617/1000000 | 1 | 796617/1000000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"58:1292","triangle":"ARS","value":"73921/200000"}` | `1 * r * k + -1 * a * r + -1 * w * j + 1 * a * j + -73921/200000` |
| 1 | physical | `{"factor":10,"stage":58}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 2 | physical | `{"factor":112,"stage":58}` | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -93/1000` |
| 3 | physical | `{"factor":115,"stage":58}` | `-1/1 * p * v + 1/1 * e * p + 1/1 * v + 1/1 * q * u + -1/1 * q + -1/1 * e * u + -93/1000` |
| 4 | physical | `{"factor":124,"stage":58}` | `-1/1 * f * k + -1/1 * h * j + 1/1 * f * h + 1/1 * j + -93/1000` |
| 5 | physical | `{"factor":130,"stage":58}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 6 | physical | `{"factor":45,"stage":58}` | `1/1 * p * k + -1/1 * a * p + -1/1 * q * j + 1/1 * a * j + -93/1000` |
| 7 | physical | `{"factor":69,"stage":58}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 8 | physical | `{"factor":7,"stage":58}` | `1/1 * b * h + -1/1 * a * b + -93/1000` |
| 9 | physical | `{"factor":80,"stage":58}` | `1/1 * u * w + -1/1 * b * w + -1/1 * v * r + 1/1 * b * v + -93/1000` |
| 10 | physical | `{"factor":92,"stage":58}` | `1/1 * f * v + -1/1 * c * v + -1/1 * u + 1/1 * c + -93/1000` |
| 11 | physical | `{"factor":96,"stage":58}` | `1/1 * c * v + 1/1 * h * u + -1/1 * c * h + -93/1000` |
| 12 | coordinate | `{"box":657,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 13 | coordinate | `{"box":657,"direction":"hi","value":"6143/20000","variable":"b"}` | `6143/20000 + -1 * b` |
| 14 | coordinate | `{"box":657,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 15 | coordinate | `{"box":657,"direction":"hi","value":"108133/125000","variable":"w"}` | `108133/125000 + -1 * w` |
| 16 | coordinate | `{"box":657,"direction":"hi","value":"438941/500000","variable":"j"}` | `438941/500000 + -1 * j` |
| 17 | coordinate | `{"box":657,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 18 | coordinate | `{"box":657,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 19 | coordinate | `{"box":657,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 20 | coordinate | `{"box":657,"direction":"hi","value":"58493/100000","variable":"f"}` | `58493/100000 + -1 * f` |
| 21 | coordinate | `{"box":657,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 22 | coordinate | `{"box":657,"direction":"hi","value":"219739/500000","variable":"p"}` | `219739/500000 + -1 * p` |
| 23 | coordinate | `{"box":657,"direction":"hi","value":"796909/1000000","variable":"u"}` | `796909/1000000 + -1 * u` |
| 24 | coordinate | `{"box":657,"direction":"hi","value":"518169/1000000","variable":"v"}` | `518169/1000000 + -1 * v` |
| 25 | coordinate | `{"box":657,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 26 | coordinate | `{"box":657,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 27 | coordinate | `{"box":657,"direction":"lo","value":"338967/500000","variable":"r"}` | `-338967/500000 + 1 * r` |
| 28 | coordinate | `{"box":657,"direction":"lo","value":"36977/62500","variable":"w"}` | `-36977/62500 + 1 * w` |
| 29 | coordinate | `{"box":657,"direction":"lo","value":"120419/250000","variable":"j"}` | `-120419/250000 + 1 * j` |
| 30 | coordinate | `{"box":657,"direction":"lo","value":"796617/1000000","variable":"k"}` | `-796617/1000000 + 1 * k` |
| 31 | coordinate | `{"box":657,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 32 | coordinate | `{"box":657,"direction":"lo","value":"188671/1000000","variable":"f"}` | `-188671/1000000 + 1 * f` |
| 33 | coordinate | `{"box":657,"direction":"lo","value":"796617/1000000","variable":"h"}` | `-796617/1000000 + 1 * h` |
| 34 | coordinate | `{"box":657,"direction":"lo","value":"220141/1000000","variable":"p"}` | `-220141/1000000 + 1 * p` |
| 35 | coordinate | `{"box":657,"direction":"lo","value":"470859/1000000","variable":"q"}` | `-470859/1000000 + 1 * q` |
| 36 | coordinate | `{"box":657,"direction":"lo","value":"266419/500000","variable":"u"}` | `-266419/500000 + 1 * u` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 8595000000 | 8 |
| 1 | 5703000000 | 1 |
| 2 | 5703000000 | 6 |
| 3 | 6437000000 | 0 |
| 4 | 16969000000 | 7 |
| 5 | 11133000000 | 9 |
| 6 | 13634000000 | 10 |
| 7 | 13634000000 | 11 |
| 8 | 60007000000 | 2 |
| 9 | 120268000000 | 3 |
| 10 | 16169000000 | 4 |
| 11 | 5722000000 | 5 |
| 12 | 14298000000 | 25, 26 |
| 13 | 8595000000 | 21, 26 |
| 14 | 22672000000 | 13, 35 |
| 15 | 11133000000 | 24, 26 |
| 16 | 11133000000 | 26, 28 |
| 17 | 6437000000 | 25, 27 |
| 18 | 12140000000 | 12, 29 |
| 19 | 13634000000 | 18, 21 |
| 20 | 25684000000 | 22, 31 |
| 21 | 94585000000 | 19, 34 |
| 22 | 60261000000 | 31, 36 |
| 23 | 16169000000 | 21, 32 |
| 24 | 16969000000 | 32, 35 |
| 25 | 13634000000 | 24, 32 |
| 26 | 5722000000 | 15, 32 |
| 27 | 8344000000 | 30, 32 |
| 28 | 13547000000 | 17, 20 |
| 29 | 46373000000 | 21, 23 |
| 30 | 2105000000 | 29, 33 |
| 31 | 14064000000 | 16, 21 |
| 32 | 120268000000 | 22, 24 |
| 33 | 120268000000 | 23, 35 |
| 34 | 5703000000 | 17, 34 |
| 35 | 5703000000 | 29, 35 |
| 36 | 11133000000 | 15, 36 |
| 37 | 11133000000 | 14, 24 |
| 38 | 12159000000 | 17, 27 |
| 39 | 12159000000 | 28, 29 |
| 40 | 737336 | 22 |
| 41 | 208897 | 26 |
| 42 | 75463 | 36 |
| 43 | 438321 | 24 |
| 44 | 22721 | 33 |
| 45 | 1000000 | 31, 34 |
| 46 | 220141 | 31 |
| 47 | 103767 | 34 |
| 48 | 23410200015 | 35 |
| 49 | 40150 | 29 |
| 50 | 276344 | 14 |
| 51 | 24916 | 12 |
| 52 | 275579 | 28 |
| 53 | 238719 | 19 |
| 54 | 366265 | 32 |
| 55 | 146095 | 17 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -1600073352925509/500000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -1600073352925509/500000 | 1 | -1600073352925509/500000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 657 | -1600073352925509/500000 |

## Stage 658

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS+/BFP-/BQR+/APS+/APR-/EPQ- |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS+/BFP-/BQR+/APS+/APR-/EPQ-:HLHHH |
| Index | 0 |
| Context | 41 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 650 |
| Coordinate cut | p high 219739/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 796617/1000000 | 1 | 796617/1000000 | 1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 188671/1000000 | 58493/100000 | 188671/1000000 | 58493/100000 |
| h | 796617/1000000 | 1 | 796617/1000000 | 1 |
| p | 219739/500000 | 606731/1000000 | 219739/500000 | 606731/1000000 |
| q | 137651/500000 | 117387/200000 | 137651/500000 | 117387/200000 |
| u | 21413/50000 | 796909/1000000 | 21413/50000 | 796909/1000000 |
| v | 26769/100000 | 518169/1000000 | 26769/100000 | 518169/1000000 |
| r | 338967/500000 | 1 | 338967/500000 | 1 |
| w | 36977/62500 | 108133/125000 | 36977/62500 | 108133/125000 |
| j | 120419/250000 | 438941/500000 | 120419/250000 | 438941/500000 |
| k | 796617/1000000 | 1 | 796617/1000000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"58:1270","triangle":"EPR","value":"161197/500000"}` | `-1 * p * w + 1 * e * p + 1 * w + 1 * q * r + -1 * q + -1 * e * r + -161197/500000` |
| 1 | physical | `{"factor":111,"stage":58}` | `-1/1 * q + -1/1 * h * p + 1/1 * h + 1/1 * e * p + -279/1000` |
| 2 | physical | `{"factor":44,"stage":58}` | `-1/1 * p * w + 1/1 * a * p + 1/1 * q * r + -1/1 * a * r + -93/1000` |
| 3 | coordinate | `{"box":658,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 4 | coordinate | `{"box":658,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 5 | coordinate | `{"box":658,"direction":"hi","value":"108133/125000","variable":"w"}` | `108133/125000 + -1 * w` |
| 6 | coordinate | `{"box":658,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 7 | coordinate | `{"box":658,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 8 | coordinate | `{"box":658,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 9 | coordinate | `{"box":658,"direction":"lo","value":"338967/500000","variable":"r"}` | `-338967/500000 + 1 * r` |
| 10 | coordinate | `{"box":658,"direction":"lo","value":"36977/62500","variable":"w"}` | `-36977/62500 + 1 * w` |
| 11 | coordinate | `{"box":658,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 12 | coordinate | `{"box":658,"direction":"lo","value":"796617/1000000","variable":"h"}` | `-796617/1000000 + 1 * h` |
| 13 | coordinate | `{"box":658,"direction":"lo","value":"219739/500000","variable":"p"}` | `-219739/500000 + 1 * p` |
| 14 | coordinate | `{"box":658,"direction":"lo","value":"137651/500000","variable":"q"}` | `-137651/500000 + 1 * q` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 83891000000 | 2 |
| 1 | 83891000000 | 1 |
| 2 | 65775000000 | 0 |
| 3 | 83891000000 | 3, 13 |
| 4 | 83891000000 | 8, 9 |
| 5 | 149666000000 | 6, 13 |
| 6 | 65775000000 | 4, 6 |
| 7 | 83891000000 | 12, 13 |
| 8 | 149666000000 | 10, 13 |
| 9 | 149666000000 | 4, 14 |
| 10 | 47022751102 | 7 |
| 11 | 85652 | 5 |
| 12 | 20004312296 | 8 |
| 13 | 71089665009 | 13 |
| 14 | 6780206735 | 4 |
| 15 | 85652 | 11 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -1026951085499059/100000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -1026951085499059/100000 | 1 | -1026951085499059/100000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 658 | -1026951085499059/100000 |

## Stage 659

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS+/BFP-/BQR+/APS+/APR-/EPQ- |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS+/BFP-/BQR+/APS+/APR-/EPQ-:HH |
| Index | 0 |
| Context | 41 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 645 |
| Coordinate cut | v high 518169/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 796617/1000000 | 1 | 796617/1000000 | 1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 188671/1000000 | 58493/100000 | 188671/1000000 | 58493/100000 |
| h | 796617/1000000 | 1 | 796617/1000000 | 1 |
| p | 220141/1000000 | 606731/1000000 | 220141/1000000 | 606731/1000000 |
| q | 137651/500000 | 117387/200000 | 137651/500000 | 117387/200000 |
| u | 21413/50000 | 796909/1000000 | 21413/50000 | 796909/1000000 |
| v | 518169/1000000 | 646317/1000000 | 518169/1000000 | 646317/1000000 |
| r | 338967/500000 | 1 | 338967/500000 | 1 |
| w | 461523/1000000 | 108133/125000 | 461523/1000000 | 108133/125000 |
| j | 18069/50000 | 438941/500000 | 18069/50000 | 438941/500000 |
| k | 796617/1000000 | 1 | 796617/1000000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"58:1270","triangle":"EPR","value":"161197/500000"}` | `-1 * p * w + 1 * e * p + 1 * w + 1 * q * r + -1 * q + -1 * e * r + -161197/500000` |
| 1 | bound | `{"direction":"lo","ref":"58:1279","triangle":"EFR","value":"136463/1000000"}` | `-1 * f * w + 1 * e * f + 1 * w + 1 * r + -1136463/1000000 + -1 * e * r` |
| 2 | bound | `{"direction":"lo","ref":"58:1280","triangle":"PRS","value":"36721/200000"}` | `1 * r * k + -1 * q * r + -1 * p * k + -1 * w * j + 1 * p * w + 1 * q * j + -36721/200000` |
| 3 | bound | `{"direction":"lo","ref":"58:1292","triangle":"ARS","value":"73921/200000"}` | `1 * r * k + -1 * a * r + -1 * w * j + 1 * a * j + -73921/200000` |
| 4 | bound | `{"direction":"lo","ref":"58:604","triangle":"FPS","value":"51343/500000"}` | `1 * p * k + -1 * p + -1 * f * k + -1 * q * j + 1 * f * q + 1 * j + -51343/500000` |
| 5 | physical | `{"factor":112,"stage":58}` | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -93/1000` |
| 6 | physical | `{"factor":124,"stage":58}` | `-1/1 * f * k + -1/1 * h * j + 1/1 * f * h + 1/1 * j + -93/1000` |
| 7 | physical | `{"factor":130,"stage":58}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 8 | physical | `{"factor":44,"stage":58}` | `-1/1 * p * w + 1/1 * a * p + 1/1 * q * r + -1/1 * a * r + -93/1000` |
| 9 | physical | `{"factor":69,"stage":58}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 10 | physical | `{"factor":80,"stage":58}` | `1/1 * u * w + -1/1 * b * w + -1/1 * v * r + 1/1 * b * v + -93/1000` |
| 11 | physical | `{"factor":92,"stage":58}` | `1/1 * f * v + -1/1 * c * v + -1/1 * u + 1/1 * c + -93/1000` |
| 12 | coordinate | `{"box":659,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 13 | coordinate | `{"box":659,"direction":"hi","value":"6143/20000","variable":"b"}` | `6143/20000 + -1 * b` |
| 14 | coordinate | `{"box":659,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 15 | coordinate | `{"box":659,"direction":"hi","value":"108133/125000","variable":"w"}` | `108133/125000 + -1 * w` |
| 16 | coordinate | `{"box":659,"direction":"hi","value":"438941/500000","variable":"j"}` | `438941/500000 + -1 * j` |
| 17 | coordinate | `{"box":659,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 18 | coordinate | `{"box":659,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 19 | coordinate | `{"box":659,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 20 | coordinate | `{"box":659,"direction":"hi","value":"58493/100000","variable":"f"}` | `58493/100000 + -1 * f` |
| 21 | coordinate | `{"box":659,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 22 | coordinate | `{"box":659,"direction":"hi","value":"606731/1000000","variable":"p"}` | `606731/1000000 + -1 * p` |
| 23 | coordinate | `{"box":659,"direction":"hi","value":"117387/200000","variable":"q"}` | `117387/200000 + -1 * q` |
| 24 | coordinate | `{"box":659,"direction":"hi","value":"796909/1000000","variable":"u"}` | `796909/1000000 + -1 * u` |
| 25 | coordinate | `{"box":659,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 26 | coordinate | `{"box":659,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 27 | coordinate | `{"box":659,"direction":"lo","value":"338967/500000","variable":"r"}` | `-338967/500000 + 1 * r` |
| 28 | coordinate | `{"box":659,"direction":"lo","value":"461523/1000000","variable":"w"}` | `-461523/1000000 + 1 * w` |
| 29 | coordinate | `{"box":659,"direction":"lo","value":"18069/50000","variable":"j"}` | `-18069/50000 + 1 * j` |
| 30 | coordinate | `{"box":659,"direction":"lo","value":"796617/1000000","variable":"k"}` | `-796617/1000000 + 1 * k` |
| 31 | coordinate | `{"box":659,"direction":"lo","value":"796617/1000000","variable":"c"}` | `-796617/1000000 + 1 * c` |
| 32 | coordinate | `{"box":659,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 33 | coordinate | `{"box":659,"direction":"lo","value":"188671/1000000","variable":"f"}` | `-188671/1000000 + 1 * f` |
| 34 | coordinate | `{"box":659,"direction":"lo","value":"796617/1000000","variable":"h"}` | `-796617/1000000 + 1 * h` |
| 35 | coordinate | `{"box":659,"direction":"lo","value":"220141/1000000","variable":"p"}` | `-220141/1000000 + 1 * p` |
| 36 | coordinate | `{"box":659,"direction":"lo","value":"137651/500000","variable":"q"}` | `-137651/500000 + 1 * q` |
| 37 | coordinate | `{"box":659,"direction":"lo","value":"21413/50000","variable":"u"}` | `-21413/50000 + 1 * u` |
| 38 | coordinate | `{"box":659,"direction":"lo","value":"518169/1000000","variable":"v"}` | `-518169/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 18790000000 | 8 |
| 1 | 10504000000 | 3 |
| 2 | 18333000000 | 9 |
| 3 | 73760000000 | 10 |
| 4 | 51976000000 | 11 |
| 5 | 12147000000 | 1 |
| 6 | 19426000000 | 5 |
| 7 | 2451000000 | 0 |
| 8 | 17483000000 | 6 |
| 9 | 21242000000 | 4 |
| 10 | 12147000000 | 7 |
| 11 | 21242000000 | 2 |
| 12 | 18333000000 | 23, 26 |
| 13 | 18790000000 | 22, 25 |
| 14 | 73760000000 | 13, 38 |
| 15 | 73760000000 | 26, 28 |
| 16 | 29295000000 | 25, 27 |
| 17 | 9028000000 | 16, 25 |
| 18 | 1476000000 | 12, 29 |
| 19 | 51976000000 | 31, 38 |
| 20 | 12147000000 | 19, 33 |
| 21 | 2451000000 | 19, 35 |
| 22 | 19426000000 | 19, 37 |
| 23 | 10704000000 | 27, 32 |
| 24 | 3894000000 | 14, 19 |
| 25 | 17483000000 | 21, 33 |
| 26 | 2908000000 | 23, 33 |
| 27 | 51976000000 | 20, 38 |
| 28 | 50872000000 | 17, 20 |
| 29 | 19426000000 | 21, 24 |
| 30 | 15691000000 | 29, 34 |
| 31 | 1792000000 | 16, 21 |
| 32 | 73760000000 | 15, 37 |
| 33 | 73760000000 | 27, 38 |
| 34 | 43893000000 | 17, 27 |
| 35 | 43893000000 | 15, 16 |
| 36 | 1000000 | 22, 28 |
| 37 | 461523 | 22 |
| 38 | 606731 | 15 |
| 39 | 1000000 | 27, 36 |
| 40 | 677934 | 36 |
| 41 | 550975 | 27 |
| 42 | 1000000 | 12, 27 |
| 43 | 677934 | 12 |
| 44 | 307150 | 14 |
| 45 | 1000000 | 20, 36 |
| 46 | 275302 | 20 |
| 47 | 600609 | 23 |
| 48 | 877070 | 35 |
| 49 | 3394511685 | 26 |
| 50 | 686640 | 24 |
| 51 | 25043648056 | 18 |
| 52 | 270946 | 28 |
| 53 | 57777671352 | 38 |
| 54 | 202735 | 21 |
| 55 | 190377 | 16 |
| 56 | 685464 | 25 |
| 57 | 125452 | 19 |
| 58 | 364076 | 33 |
| 59 | 1898 | 30 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -5458903692778371/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -5458903692778371/1000000 | 1 | -5458903692778371/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 659 | -5458903692778371/1000000 |
