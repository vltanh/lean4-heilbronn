# BITT convex: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 795

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS-/BFP-/BPQ+/APR+/FPQ+/AQS- |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS-/BFP-/BPQ+/APR+/FPQ+/AQS-:HHHLLHHH |
| Index | 0 |
| Context | 88 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 787 |
| Coordinate cut | q high 110687/250000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 796617/1000000 | 1 | 796617/1000000 | 1 |
| e | 130761/1000000 | 391/1000 | 130761/1000000 | 391/1000 |
| f | 130761/1000000 | 18929/40000 | 130761/1000000 | 18929/40000 |
| h | 796617/1000000 | 1 | 796617/1000000 | 1 |
| p | 287323/1000000 | 105497/200000 | 287323/1000000 | 105497/200000 |
| q | 110687/250000 | 546021/1000000 | 110687/250000 | 546021/1000000 |
| u | 150981/500000 | 135513/250000 | 150981/500000 | 135513/250000 |
| v | 498449/1000000 | 181027/250000 | 498449/1000000 | 181027/250000 |
| r | 761861/1000000 | 1 | 761861/1000000 | 1 |
| w | 239291/500000 | 175011/200000 | 239291/500000 | 175011/200000 |
| j | 636431/1000000 | 218771/250000 | 636431/1000000 | 218771/250000 |
| k | 634637/1000000 | 1 | 634637/1000000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"119:1026","triangle":"FPR","value":"14463/40000"}` | `1 * p * w + -1 * p + -1 * f * w + -1 * q * r + 1 * f * q + 1 * r + -14463/40000` |
| 1 | bound | `{"direction":"lo","ref":"119:850","triangle":"CFP","value":"280877/1000000"}` | `1 * f * q + -1 * c * q + -1 * p + 1 * c + -280877/1000000` |
| 2 | physical | `{"factor":111,"stage":119}` | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -93/1000` |
| 3 | physical | `{"factor":114,"stage":119}` | `-1/1 * p * v + 1/1 * e * p + 1/1 * v + 1/1 * q * u + -1/1 * q + -1/1 * e * u + -93/1000` |
| 4 | physical | `{"factor":124,"stage":119}` | `1/1 * p * v + -1/1 * p + -1/1 * f * v + -1/1 * q * u + 1/1 * f * q + 1/1 * u + -93/1000` |
| 5 | physical | `{"factor":145,"stage":119}` | `1/1 * f + -1/1 * e` |
| 6 | physical | `{"factor":78,"stage":119}` | `1/1 * p * v + -1/1 * b * v + -1/1 * q * u + 1/1 * b * q + -93/1000` |
| 7 | physical | `{"factor":87,"stage":119}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 8 | physical | `{"factor":91,"stage":119}` | `1/1 * f * v + -1/1 * c * v + -1/1 * u + 1/1 * c + -93/1000` |
| 9 | physical | `{"factor":95,"stage":119}` | `1/1 * c * v + 1/1 * h * u + -1/1 * c * h + -93/1000` |
| 10 | coordinate | `{"box":795,"direction":"hi","value":"6143/20000","variable":"b"}` | `6143/20000 + -1 * b` |
| 11 | coordinate | `{"box":795,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 12 | coordinate | `{"box":795,"direction":"hi","value":"175011/200000","variable":"w"}` | `175011/200000 + -1 * w` |
| 13 | coordinate | `{"box":795,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 14 | coordinate | `{"box":795,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 15 | coordinate | `{"box":795,"direction":"hi","value":"18929/40000","variable":"f"}` | `18929/40000 + -1 * f` |
| 16 | coordinate | `{"box":795,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 17 | coordinate | `{"box":795,"direction":"hi","value":"105497/200000","variable":"p"}` | `105497/200000 + -1 * p` |
| 18 | coordinate | `{"box":795,"direction":"hi","value":"181027/250000","variable":"v"}` | `181027/250000 + -1 * v` |
| 19 | coordinate | `{"box":795,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 20 | coordinate | `{"box":795,"direction":"lo","value":"761861/1000000","variable":"r"}` | `-761861/1000000 + 1 * r` |
| 21 | coordinate | `{"box":795,"direction":"lo","value":"239291/500000","variable":"w"}` | `-239291/500000 + 1 * w` |
| 22 | coordinate | `{"box":795,"direction":"lo","value":"796617/1000000","variable":"c"}` | `-796617/1000000 + 1 * c` |
| 23 | coordinate | `{"box":795,"direction":"lo","value":"130761/1000000","variable":"e"}` | `-130761/1000000 + 1 * e` |
| 24 | coordinate | `{"box":795,"direction":"lo","value":"130761/1000000","variable":"f"}` | `-130761/1000000 + 1 * f` |
| 25 | coordinate | `{"box":795,"direction":"lo","value":"287323/1000000","variable":"p"}` | `-287323/1000000 + 1 * p` |
| 26 | coordinate | `{"box":795,"direction":"lo","value":"110687/250000","variable":"q"}` | `-110687/250000 + 1 * q` |
| 27 | coordinate | `{"box":795,"direction":"lo","value":"150981/500000","variable":"u"}` | `-150981/500000 + 1 * u` |
| 28 | coordinate | `{"box":795,"direction":"lo","value":"498449/1000000","variable":"v"}` | `-498449/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 73784000000 | 6 |
| 1 | 17573000000 | 7 |
| 2 | 23472000000 | 1 |
| 3 | 15716000000 | 8 |
| 4 | 15716000000 | 9 |
| 5 | 15716000000 | 2 |
| 6 | 12092000000 | 3 |
| 7 | 74675000000 | 4 |
| 8 | 12331000000 | 0 |
| 9 | 4569000000 | 5 |
| 10 | 73784000000 | 10, 26 |
| 11 | 73784000000 | 19, 28 |
| 12 | 17573000000 | 13, 23 |
| 13 | 15716000000 | 13, 16 |
| 14 | 23472000000 | 22, 26 |
| 15 | 17573000000 | 12, 13 |
| 16 | 12092000000 | 14, 25 |
| 17 | 3624000000 | 14, 27 |
| 18 | 17573000000 | 11, 14 |
| 19 | 110478000000 | 15, 26 |
| 20 | 58959000000 | 15, 18 |
| 21 | 12331000000 | 12, 15 |
| 22 | 136367000000 | 18, 25 |
| 23 | 136367000000 | 26, 27 |
| 24 | 2786000000 | 12, 25 |
| 25 | 9545000000 | 17, 21 |
| 26 | 12331000000 | 20, 26 |
| 27 | 11272 | 21 |
| 28 | 376056 | 17 |
| 29 | 340482 | 13 |
| 30 | 232516 | 27 |
| 31 | 158438 | 18 |
| 32 | 6418647119 | 26 |
| 33 | 431412 | 11 |
| 34 | 73233 | 24 |
| 35 | 379996 | 23 |
| 36 | 4109842584 | 19 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -3910294619597/625 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -3910294619597/625 | 1 | -3910294619597/625 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 795 | -3910294619597/625 |

## Stage 796

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS-/BFP-/BPQ+/APR+/FPQ+/AQS- |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS-/BFP-/BPQ+/APR+/FPQ+/AQS-:HHHLH |
| Index | 0 |
| Context | 88 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 782 |
| Coordinate cut | p high 105497/200000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 796617/1000000 | 1 | 796617/1000000 | 1 |
| e | 130761/1000000 | 391/1000 | 130761/1000000 | 391/1000 |
| f | 130761/1000000 | 18929/40000 | 130761/1000000 | 18929/40000 |
| h | 796617/1000000 | 1 | 796617/1000000 | 1 |
| p | 105497/200000 | 633491/1000000 | 105497/200000 | 633491/1000000 |
| q | 204481/1000000 | 546021/1000000 | 204481/1000000 | 546021/1000000 |
| u | 150981/500000 | 135513/250000 | 150981/500000 | 135513/250000 |
| v | 390873/1000000 | 181027/250000 | 390873/1000000 | 181027/250000 |
| r | 83739/125000 | 1 | 83739/125000 | 1 |
| w | 239291/500000 | 175011/200000 | 239291/500000 | 175011/200000 |
| j | 636431/1000000 | 218771/250000 | 636431/1000000 | 218771/250000 |
| k | 634637/1000000 | 1 | 634637/1000000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"119:1009","triangle":"FQS","value":"135663/1000000"}` | `1 * u * k + -1 * u + -1 * f * k + -1 * v * j + 1 * f * v + 1 * j + -135663/1000000` |
| 1 | bound | `{"direction":"lo","ref":"119:1026","triangle":"FPR","value":"14463/40000"}` | `1 * p * w + -1 * p + -1 * f * w + -1 * q * r + 1 * f * q + 1 * r + -14463/40000` |
| 2 | bound | `{"direction":"lo","ref":"119:850","triangle":"CFP","value":"280877/1000000"}` | `1 * f * q + -1 * c * q + -1 * p + 1 * c + -280877/1000000` |
| 3 | physical | `{"factor":111,"stage":119}` | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -93/1000` |
| 4 | physical | `{"factor":119,"stage":119}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 5 | physical | `{"factor":124,"stage":119}` | `1/1 * p * v + -1/1 * p + -1/1 * f * v + -1/1 * q * u + 1/1 * f * q + 1/1 * u + -93/1000` |
| 6 | physical | `{"factor":129,"stage":119}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 7 | physical | `{"factor":135,"stage":119}` | `1/1 * r * k + -1/1 * h * r + -1/1 * w * j + 1/1 * h * j + -93/1000` |
| 8 | physical | `{"factor":28,"stage":119}` | `1/1 * q + -1/1 * a + -1/1 * e * p + 1/1 * a * p + -93/1000` |
| 9 | physical | `{"factor":47,"stage":119}` | `-1/1 * u * k + 1/1 * a * u + 1/1 * v * j + -1/1 * a * j + -93/1000` |
| 10 | physical | `{"factor":87,"stage":119}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 11 | physical | `{"factor":88,"stage":119}` | `1/1 * k + -1/1 * c * k + -1/1 * e * j + 1/1 * c * e + -93/1000` |
| 12 | physical | `{"factor":91,"stage":119}` | `1/1 * f * v + -1/1 * c * v + -1/1 * u + 1/1 * c + -93/1000` |
| 13 | physical | `{"factor":95,"stage":119}` | `1/1 * c * v + 1/1 * h * u + -1/1 * c * h + -93/1000` |
| 14 | coordinate | `{"box":796,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 15 | coordinate | `{"box":796,"direction":"hi","value":"175011/200000","variable":"w"}` | `175011/200000 + -1 * w` |
| 16 | coordinate | `{"box":796,"direction":"hi","value":"218771/250000","variable":"j"}` | `218771/250000 + -1 * j` |
| 17 | coordinate | `{"box":796,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 18 | coordinate | `{"box":796,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 19 | coordinate | `{"box":796,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 20 | coordinate | `{"box":796,"direction":"hi","value":"18929/40000","variable":"f"}` | `18929/40000 + -1 * f` |
| 21 | coordinate | `{"box":796,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 22 | coordinate | `{"box":796,"direction":"hi","value":"633491/1000000","variable":"p"}` | `633491/1000000 + -1 * p` |
| 23 | coordinate | `{"box":796,"direction":"hi","value":"546021/1000000","variable":"q"}` | `546021/1000000 + -1 * q` |
| 24 | coordinate | `{"box":796,"direction":"hi","value":"135513/250000","variable":"u"}` | `135513/250000 + -1 * u` |
| 25 | coordinate | `{"box":796,"direction":"hi","value":"181027/250000","variable":"v"}` | `181027/250000 + -1 * v` |
| 26 | coordinate | `{"box":796,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 27 | coordinate | `{"box":796,"direction":"lo","value":"83739/125000","variable":"r"}` | `-83739/125000 + 1 * r` |
| 28 | coordinate | `{"box":796,"direction":"lo","value":"636431/1000000","variable":"j"}` | `-636431/1000000 + 1 * j` |
| 29 | coordinate | `{"box":796,"direction":"lo","value":"634637/1000000","variable":"k"}` | `-634637/1000000 + 1 * k` |
| 30 | coordinate | `{"box":796,"direction":"lo","value":"130761/1000000","variable":"e"}` | `-130761/1000000 + 1 * e` |
| 31 | coordinate | `{"box":796,"direction":"lo","value":"130761/1000000","variable":"f"}` | `-130761/1000000 + 1 * f` |
| 32 | coordinate | `{"box":796,"direction":"lo","value":"796617/1000000","variable":"h"}` | `-796617/1000000 + 1 * h` |
| 33 | coordinate | `{"box":796,"direction":"lo","value":"105497/200000","variable":"p"}` | `-105497/200000 + 1 * p` |
| 34 | coordinate | `{"box":796,"direction":"lo","value":"204481/1000000","variable":"q"}` | `-204481/1000000 + 1 * q` |
| 35 | coordinate | `{"box":796,"direction":"lo","value":"150981/500000","variable":"u"}` | `-150981/500000 + 1 * u` |
| 36 | coordinate | `{"box":796,"direction":"lo","value":"390873/1000000","variable":"v"}` | `-390873/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 27065000000 | 8 |
| 1 | 22282000000 | 9 |
| 2 | 13078000000 | 10 |
| 3 | 21766000000 | 11 |
| 4 | 63117000000 | 2 |
| 5 | 24389000000 | 12 |
| 6 | 24389000000 | 13 |
| 7 | 26337000000 | 3 |
| 8 | 21766000000 | 4 |
| 9 | 60894000000 | 5 |
| 10 | 1644000000 | 1 |
| 11 | 19925000000 | 0 |
| 12 | 1644000000 | 6 |
| 13 | 2454000000 | 7 |
| 14 | 27065000000 | 22, 26 |
| 15 | 22282000000 | 24, 26 |
| 16 | 22282000000 | 26, 28 |
| 17 | 34844000000 | 18, 30 |
| 18 | 24389000000 | 18, 21 |
| 19 | 63117000000 | 18, 23 |
| 20 | 13078000000 | 15, 18 |
| 21 | 21766000000 | 17, 18 |
| 22 | 27065000000 | 30, 33 |
| 23 | 26337000000 | 24, 30 |
| 24 | 34844000000 | 14, 19 |
| 25 | 125655000000 | 20, 34 |
| 26 | 16580000000 | 20, 25 |
| 27 | 21569000000 | 29, 31 |
| 28 | 1948000000 | 21, 24 |
| 29 | 2454000000 | 14, 21 |
| 30 | 2454000000 | 21, 28 |
| 31 | 60894000000 | 25, 33 |
| 32 | 44560000000 | 34, 35 |
| 33 | 16334000000 | 23, 24 |
| 34 | 1644000000 | 15, 33 |
| 35 | 1644000000 | 27, 34 |
| 36 | 2357000000 | 17, 24 |
| 37 | 2357000000 | 16, 36 |
| 38 | 25864000000 | 14, 29 |
| 39 | 25864000000 | 15, 16 |
| 40 | 447959 | 23 |
| 41 | 12022518963 | 26 |
| 42 | 12764 | 15 |
| 43 | 573 | 29 |
| 44 | 80853169638 | 33 |
| 45 | 59537 | 18 |
| 46 | 608377 | 24 |
| 47 | 174078 | 25 |
| 48 | 115622 | 32 |
| 49 | 80604 | 14 |
| 50 | 271153 | 28 |
| 51 | 358001 | 30 |
| 52 | 136038 | 31 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -3320242310108969/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -3320242310108969/1000000 | 1 | -3320242310108969/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 796 | -3320242310108969/1000000 |

## Stage 797

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS-/BFP-/BPQ+/APR+/FPQ+/AQS- |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS-/BFP-/BPQ+/APR+/FPQ+/AQS-:HHHH |
| Index | 0 |
| Context | 88 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 781 |
| Coordinate cut | f high 18929/40000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 796617/1000000 | 1 | 796617/1000000 | 1 |
| e | 130761/1000000 | 391/1000 | 130761/1000000 | 391/1000 |
| f | 18929/40000 | 14301/25000 | 18929/40000 | 14301/25000 |
| h | 796617/1000000 | 1 | 796617/1000000 | 1 |
| p | 287323/1000000 | 633491/1000000 | 287323/1000000 | 633491/1000000 |
| q | 204481/1000000 | 546021/1000000 | 204481/1000000 | 546021/1000000 |
| u | 150981/500000 | 135513/250000 | 150981/500000 | 135513/250000 |
| v | 390873/1000000 | 181027/250000 | 390873/1000000 | 181027/250000 |
| r | 83739/125000 | 1 | 83739/125000 | 1 |
| w | 239291/500000 | 175011/200000 | 239291/500000 | 175011/200000 |
| j | 636431/1000000 | 218771/250000 | 636431/1000000 | 218771/250000 |
| k | 634637/1000000 | 1 | 634637/1000000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"119:1009","triangle":"FQS","value":"135663/1000000"}` | `1 * u * k + -1 * u + -1 * f * k + -1 * v * j + 1 * f * v + 1 * j + -135663/1000000` |
| 1 | bound | `{"direction":"lo","ref":"119:693","triangle":"BFP","value":"66991/500000"}` | `-1 * f * q + 1 * b * q + 1 * p + -1 * b + -66991/500000` |
| 2 | physical | `{"factor":10,"stage":119}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 3 | physical | `{"factor":111,"stage":119}` | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -93/1000` |
| 4 | physical | `{"factor":119,"stage":119}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 5 | physical | `{"factor":124,"stage":119}` | `1/1 * p * v + -1/1 * p + -1/1 * f * v + -1/1 * q * u + 1/1 * f * q + 1/1 * u + -93/1000` |
| 6 | physical | `{"factor":129,"stage":119}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 7 | physical | `{"factor":44,"stage":119}` | `1/1 * p * w + -1/1 * a * p + -1/1 * q * r + 1/1 * a * r + -93/1000` |
| 8 | physical | `{"factor":47,"stage":119}` | `-1/1 * u * k + 1/1 * a * u + 1/1 * v * j + -1/1 * a * j + -93/1000` |
| 9 | physical | `{"factor":78,"stage":119}` | `1/1 * p * v + -1/1 * b * v + -1/1 * q * u + 1/1 * b * q + -93/1000` |
| 10 | coordinate | `{"box":797,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 11 | coordinate | `{"box":797,"direction":"hi","value":"6143/20000","variable":"b"}` | `6143/20000 + -1 * b` |
| 12 | coordinate | `{"box":797,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 13 | coordinate | `{"box":797,"direction":"hi","value":"175011/200000","variable":"w"}` | `175011/200000 + -1 * w` |
| 14 | coordinate | `{"box":797,"direction":"hi","value":"218771/250000","variable":"j"}` | `218771/250000 + -1 * j` |
| 15 | coordinate | `{"box":797,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 16 | coordinate | `{"box":797,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 17 | coordinate | `{"box":797,"direction":"hi","value":"14301/25000","variable":"f"}` | `14301/25000 + -1 * f` |
| 18 | coordinate | `{"box":797,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 19 | coordinate | `{"box":797,"direction":"hi","value":"633491/1000000","variable":"p"}` | `633491/1000000 + -1 * p` |
| 20 | coordinate | `{"box":797,"direction":"hi","value":"546021/1000000","variable":"q"}` | `546021/1000000 + -1 * q` |
| 21 | coordinate | `{"box":797,"direction":"hi","value":"135513/250000","variable":"u"}` | `135513/250000 + -1 * u` |
| 22 | coordinate | `{"box":797,"direction":"hi","value":"181027/250000","variable":"v"}` | `181027/250000 + -1 * v` |
| 23 | coordinate | `{"box":797,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 24 | coordinate | `{"box":797,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 25 | coordinate | `{"box":797,"direction":"lo","value":"83739/125000","variable":"r"}` | `-83739/125000 + 1 * r` |
| 26 | coordinate | `{"box":797,"direction":"lo","value":"239291/500000","variable":"w"}` | `-239291/500000 + 1 * w` |
| 27 | coordinate | `{"box":797,"direction":"lo","value":"636431/1000000","variable":"j"}` | `-636431/1000000 + 1 * j` |
| 28 | coordinate | `{"box":797,"direction":"lo","value":"634637/1000000","variable":"k"}` | `-634637/1000000 + 1 * k` |
| 29 | coordinate | `{"box":797,"direction":"lo","value":"130761/1000000","variable":"e"}` | `-130761/1000000 + 1 * e` |
| 30 | coordinate | `{"box":797,"direction":"lo","value":"18929/40000","variable":"f"}` | `-18929/40000 + 1 * f` |
| 31 | coordinate | `{"box":797,"direction":"lo","value":"287323/1000000","variable":"p"}` | `-287323/1000000 + 1 * p` |
| 32 | coordinate | `{"box":797,"direction":"lo","value":"204481/1000000","variable":"q"}` | `-204481/1000000 + 1 * q` |
| 33 | coordinate | `{"box":797,"direction":"lo","value":"150981/500000","variable":"u"}` | `-150981/500000 + 1 * u` |
| 34 | coordinate | `{"box":797,"direction":"lo","value":"390873/1000000","variable":"v"}` | `-390873/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 7860000000 | 2 |
| 1 | 7860000000 | 7 |
| 2 | 39644000000 | 8 |
| 3 | 8009000000 | 1 |
| 4 | 1031000000 | 9 |
| 5 | 8808000000 | 3 |
| 6 | 59196000000 | 4 |
| 7 | 54553000000 | 5 |
| 8 | 39644000000 | 0 |
| 9 | 35614000000 | 6 |
| 10 | 7860000000 | 23, 24 |
| 11 | 16900000000 | 20, 24 |
| 12 | 1031000000 | 24, 34 |
| 13 | 39644000000 | 21, 23 |
| 14 | 7860000000 | 12, 23 |
| 15 | 25806000000 | 23, 27 |
| 16 | 13838000000 | 10, 14 |
| 17 | 8808000000 | 21, 29 |
| 18 | 7937000000 | 25, 29 |
| 19 | 51259000000 | 12, 16 |
| 20 | 59196000000 | 14, 29 |
| 21 | 37792000000 | 20, 30 |
| 22 | 8752000000 | 17, 32 |
| 23 | 14909000000 | 30, 34 |
| 24 | 35614000000 | 13, 30 |
| 25 | 75258000000 | 28, 30 |
| 26 | 8808000000 | 18, 21 |
| 27 | 55584000000 | 22, 31 |
| 28 | 55584000000 | 32, 33 |
| 29 | 6389000000 | 13, 31 |
| 30 | 1471000000 | 19, 26 |
| 31 | 7860000000 | 12, 20 |
| 32 | 94810000000 | 12, 28 |
| 33 | 17388000000 | 26, 27 |
| 34 | 77422000000 | 13, 14 |
| 35 | 636431 | 23 |
| 36 | 103767 | 27 |
| 37 | 460411 | 31 |
| 38 | 156217 | 11 |
| 39 | 266330 | 22 |
| 40 | 4033605984 | 18 |
| 41 | 32950 | 15 |
| 42 | 8618 | 26 |
| 43 | 609932 | 21 |
| 44 | 386995 | 14 |
| 45 | 301527 | 25 |
| 46 | 986521 | 10 |
| 47 | 19772 | 20 |
| 48 | 225064 | 29 |
| 49 | 15211 | 17 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -2184210442009279/500000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -2184210442009279/500000 | 1 | -2184210442009279/500000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 797 | -2184210442009279/500000 |

## Stage 798

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS-/BFP-/BPQ+/APR+/FPQ-/BPS+/BFQ+/AFQ+ |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS-/BFP-/BPQ+/APR+/FPQ-/BPS+/BFQ+/AFQ+:root |
| Index | 0 |
| Context | 92 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 123 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 15761/31250 | 103767/1000000 | 15761/31250 |
| c | 135501/250000 | 1 | 135501/250000 | 1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 21407/62500 | 58493/100000 | 21407/62500 | 58493/100000 |
| h | 796617/1000000 | 1 | 796617/1000000 | 1 |
| p | 17181/62500 | 710233/1000000 | 17181/62500 | 710233/1000000 |
| q | 196767/1000000 | 553589/1000000 | 196767/1000000 | 553589/1000000 |
| u | 164839/1000000 | 354949/1000000 | 164839/1000000 | 354949/1000000 |
| v | 271347/500000 | 403307/500000 | 271347/500000 | 403307/500000 |
| r | 574631/1000000 | 1 | 574631/1000000 | 1 |
| w | 82517/200000 | 824047/1000000 | 82517/200000 | 824047/1000000 |
| j | 15651/31250 | 435531/500000 | 15651/31250 | 435531/500000 |
| k | 274481/500000 | 1 | 274481/500000 | 1 |

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


## Stage 799

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS-/BFP-/BPQ+/APR+/FPQ-/BPS+/BFQ+/AFQ+ |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS-/BFP-/BPQ+/APR+/FPQ-/BPS+/BFQ+/AFQ+:L |
| Index | 0 |
| Context | 92 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 798 |
| Coordinate cut | p low 96179/200000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 15761/31250 | 103767/1000000 | 15761/31250 |
| c | 135501/250000 | 1 | 135501/250000 | 1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 21407/62500 | 58493/100000 | 21407/62500 | 58493/100000 |
| h | 796617/1000000 | 1 | 796617/1000000 | 1 |
| p | 17181/62500 | 96179/200000 | 17181/62500 | 96179/200000 |
| q | 196767/1000000 | 553589/1000000 | 196767/1000000 | 553589/1000000 |
| u | 164839/1000000 | 354949/1000000 | 164839/1000000 | 354949/1000000 |
| v | 271347/500000 | 403307/500000 | 271347/500000 | 403307/500000 |
| r | 574631/1000000 | 1 | 574631/1000000 | 1 |
| w | 82517/200000 | 824047/1000000 | 82517/200000 | 824047/1000000 |
| j | 15651/31250 | 435531/500000 | 15651/31250 | 435531/500000 |
| k | 274481/500000 | 1 | 274481/500000 | 1 |

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
