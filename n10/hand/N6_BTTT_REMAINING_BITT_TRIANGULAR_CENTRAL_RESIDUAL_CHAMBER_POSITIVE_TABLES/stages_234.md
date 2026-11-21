# BITT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 1170

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ-/BPS+/AQS-/AQR- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ-/BPS+/AQS-/AQR-:HLLHHHLHHLLH |
| Index | 0 |
| Context | 247 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1160 |
| Coordinate cut | f high 400743/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 145241/500000 | 103767/1000000 | 145241/500000 |
| c | 135501/250000 | 385501/500000 | 135501/250000 | 385501/500000 |
| e | 103767/1000000 | 14209/40000 | 103767/1000000 | 14209/40000 |
| f | 400743/1000000 | 131839/250000 | 400743/1000000 | 131839/250000 |
| h | 385501/500000 | 1 | 385501/500000 | 1 |
| p | 145397/500000 | 501929/1000000 | 145397/500000 | 501929/1000000 |
| q | 196767/1000000 | 308103/500000 | 196767/1000000 | 308103/500000 |
| u | 69713/200000 | 344349/500000 | 69713/200000 | 344349/500000 |
| v | 137319/250000 | 907/1000 | 137319/250000 | 907/1000 |
| r | 114671/200000 | 1 | 114671/200000 | 1 |
| w | 162657/200000 | 1 | 162657/200000 | 1 |
| j | 11643/20000 | 896233/1000000 | 11643/20000 | 896233/1000000 |
| k | 272449/500000 | 896233/1000000 | 272449/500000 | 896233/1000000 |

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
| 0 | bound | `{"direction":"lo","ref":"461:1189","triangle":"BCP","value":"63453/500000"}` | `1 * c * q + -1 * b * q + -63453/500000` |
| 1 | bound | `{"direction":"lo","ref":"461:1486","triangle":"AQS","value":"3817/31250"}` | `-1 * u * k + 1 * a * u + 1 * v * j + -1 * a * j + -3817/31250` |
| 2 | physical | `{"factor":10,"stage":461}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 3 | physical | `{"factor":105,"stage":461}` | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 4 | physical | `{"factor":118,"stage":461}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 5 | physical | `{"factor":121,"stage":461}` | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 6 | physical | `{"factor":127,"stage":461}` | `1/1 * u * k + -1/1 * u + -1/1 * f * k + -1/1 * v * j + 1/1 * f * v + 1/1 * j + -93/1000` |
| 7 | physical | `{"factor":26,"stage":461}` | `1/1 * q + -1/1 * a + -1/1 * e * p + 1/1 * a * p + -93/1000` |
| 8 | physical | `{"factor":44,"stage":461}` | `-1/1 * u * w + 1/1 * a * u + 1/1 * v * r + -1/1 * a * r + -93/1000` |
| 9 | physical | `{"factor":63,"stage":461}` | `1/1 * w + -1/1 * b * w + -1/1 * e * r + 1/1 * b * e + -13857/20000` |
| 10 | physical | `{"factor":7,"stage":461}` | `1/1 * b * h + -1/1 * a * b + -93/1000` |
| 11 | physical | `{"factor":76,"stage":461}` | `1/1 * p * k + -1/1 * b * k + -1/1 * q * j + 1/1 * b * q + -93/1000` |
| 12 | physical | `{"factor":79,"stage":461}` | `-1/1 * r * k + 1/1 * b * k + 1/1 * w * j + -1/1 * b * w + -93/1000` |
| 13 | physical | `{"factor":90,"stage":461}` | `-1/1 * f * v + 1/1 * c * v + 1/1 * u + -1/1 * c + -93/1000` |
| 14 | physical | `{"factor":93,"stage":461}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 15 | coordinate | `{"box":1170,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 16 | coordinate | `{"box":1170,"direction":"hi","value":"145241/500000","variable":"b"}` | `145241/500000 + -1 * b` |
| 17 | coordinate | `{"box":1170,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 18 | coordinate | `{"box":1170,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 19 | coordinate | `{"box":1170,"direction":"hi","value":"896233/1000000","variable":"j"}` | `896233/1000000 + -1 * j` |
| 20 | coordinate | `{"box":1170,"direction":"hi","value":"896233/1000000","variable":"k"}` | `896233/1000000 + -1 * k` |
| 21 | coordinate | `{"box":1170,"direction":"hi","value":"385501/500000","variable":"c"}` | `385501/500000 + -1 * c` |
| 22 | coordinate | `{"box":1170,"direction":"hi","value":"14209/40000","variable":"e"}` | `14209/40000 + -1 * e` |
| 23 | coordinate | `{"box":1170,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 24 | coordinate | `{"box":1170,"direction":"hi","value":"501929/1000000","variable":"p"}` | `501929/1000000 + -1 * p` |
| 25 | coordinate | `{"box":1170,"direction":"hi","value":"308103/500000","variable":"q"}` | `308103/500000 + -1 * q` |
| 26 | coordinate | `{"box":1170,"direction":"hi","value":"344349/500000","variable":"u"}` | `344349/500000 + -1 * u` |
| 27 | coordinate | `{"box":1170,"direction":"hi","value":"907/1000","variable":"v"}` | `907/1000 + -1 * v` |
| 28 | coordinate | `{"box":1170,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 29 | coordinate | `{"box":1170,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 30 | coordinate | `{"box":1170,"direction":"lo","value":"114671/200000","variable":"r"}` | `-114671/200000 + 1 * r` |
| 31 | coordinate | `{"box":1170,"direction":"lo","value":"162657/200000","variable":"w"}` | `-162657/200000 + 1 * w` |
| 32 | coordinate | `{"box":1170,"direction":"lo","value":"11643/20000","variable":"j"}` | `-11643/20000 + 1 * j` |
| 33 | coordinate | `{"box":1170,"direction":"lo","value":"272449/500000","variable":"k"}` | `-272449/500000 + 1 * k` |
| 34 | coordinate | `{"box":1170,"direction":"lo","value":"135501/250000","variable":"c"}` | `-135501/250000 + 1 * c` |
| 35 | coordinate | `{"box":1170,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 36 | coordinate | `{"box":1170,"direction":"lo","value":"400743/1000000","variable":"f"}` | `-400743/1000000 + 1 * f` |
| 37 | coordinate | `{"box":1170,"direction":"lo","value":"385501/500000","variable":"h"}` | `-385501/500000 + 1 * h` |
| 38 | coordinate | `{"box":1170,"direction":"lo","value":"145397/500000","variable":"p"}` | `-145397/500000 + 1 * p` |
| 39 | coordinate | `{"box":1170,"direction":"lo","value":"196767/1000000","variable":"q"}` | `-196767/1000000 + 1 * q` |
| 40 | coordinate | `{"box":1170,"direction":"lo","value":"137319/250000","variable":"v"}` | `-137319/250000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 231000000 | 10 |
| 1 | 29109000000 | 2 |
| 2 | 26790000000 | 7 |
| 3 | 6988000000 | 8 |
| 4 | 9118000000 | 1 |
| 5 | 24737000000 | 0 |
| 6 | 3606000000 | 9 |
| 7 | 44252000000 | 11 |
| 8 | 5157000000 | 12 |
| 9 | 68012000000 | 13 |
| 10 | 35944000000 | 14 |
| 11 | 59780000000 | 3 |
| 12 | 5157000000 | 4 |
| 13 | 7591000000 | 5 |
| 14 | 9118000000 | 6 |
| 15 | 29340000000 | 28, 29 |
| 16 | 3606000000 | 22, 29 |
| 17 | 231000000 | 23, 29 |
| 18 | 48624000000 | 25, 29 |
| 19 | 55899000000 | 24, 28 |
| 20 | 16106000000 | 26, 28 |
| 21 | 8764000000 | 29, 31 |
| 22 | 6988000000 | 28, 30 |
| 23 | 39095000000 | 29, 33 |
| 24 | 9118000000 | 28, 32 |
| 25 | 22476000000 | 23, 34 |
| 26 | 13469000000 | 21, 37 |
| 27 | 11208000000 | 34, 39 |
| 28 | 68012000000 | 21, 40 |
| 29 | 59780000000 | 35, 36 |
| 30 | 26790000000 | 22, 24 |
| 31 | 59780000000 | 26, 35 |
| 32 | 8764000000 | 17, 22 |
| 33 | 5157000000 | 19, 35 |
| 34 | 7591000000 | 23, 36 |
| 35 | 887000000 | 27, 36 |
| 36 | 7591000000 | 31, 36 |
| 37 | 9118000000 | 33, 36 |
| 38 | 35944000000 | 23, 24 |
| 39 | 7591000000 | 17, 23 |
| 40 | 44252000000 | 20, 38 |
| 41 | 44252000000 | 32, 39 |
| 42 | 6988000000 | 18, 26 |
| 43 | 6988000000 | 17, 40 |
| 44 | 516024 | 39 |
| 45 | 326939 | 15 |
| 46 | 1000000 | 21, 39 |
| 47 | 817481 | 21 |
| 48 | 771002 | 25 |
| 49 | 1075725 | 31 |
| 50 | 1000000 | 16, 31 |
| 51 | 813285 | 16 |
| 52 | 290482 | 18 |
| 53 | 1000000 | 22, 30 |
| 54 | 573355 | 22 |
| 55 | 380217 | 17 |
| 56 | 1000000 | 36, 40 |
| 57 | 8950257935 | 36 |
| 58 | 400743 | 40 |
| 59 | 462562 | 26 |
| 60 | 1000000 | 34, 37 |
| 61 | 771002 | 34 |
| 62 | 542004 | 37 |
| 63 | 847065 | 27 |
| 64 | 470549 | 20 |
| 65 | 354371 | 32 |
| 66 | 598936 | 29 |
| 67 | 670627 | 35 |
| 68 | 382156 | 23 |
| 69 | 96499 | 24 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -288336495667413/125000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -288336495667413/125000 | 1 | -288336495667413/125000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1170 | -288336495667413/125000 |

## Stage 1171

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ-/BPS+/AQS-/AQR- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ-/BPS+/AQS-/AQR-:HLLHHHLHHLH |
| Index | 0 |
| Context | 247 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1159 |
| Coordinate cut | e high 14209/40000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 145241/500000 | 103767/1000000 | 145241/500000 |
| c | 135501/250000 | 385501/500000 | 135501/250000 | 385501/500000 |
| e | 14209/40000 | 59/125 | 14209/40000 | 59/125 |
| f | 103767/1000000 | 131839/250000 | 103767/1000000 | 131839/250000 |
| h | 385501/500000 | 1 | 385501/500000 | 1 |
| p | 145397/500000 | 501929/1000000 | 145397/500000 | 501929/1000000 |
| q | 196767/1000000 | 308103/500000 | 196767/1000000 | 308103/500000 |
| u | 69713/200000 | 344349/500000 | 69713/200000 | 344349/500000 |
| v | 137319/250000 | 907/1000 | 137319/250000 | 907/1000 |
| r | 114671/200000 | 1 | 114671/200000 | 1 |
| w | 162657/200000 | 1 | 162657/200000 | 1 |
| j | 11643/20000 | 896233/1000000 | 11643/20000 | 896233/1000000 |
| k | 272449/500000 | 896233/1000000 | 272449/500000 | 896233/1000000 |

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
| 0 | bound | `{"direction":"lo","ref":"461:1384","triangle":"FQR","value":"99699/1000000"}` | `1 * u * w + -1 * u + -1 * f * w + -1 * v * r + 1 * f * v + 1 * r + -99699/1000000` |
| 1 | bound | `{"direction":"lo","ref":"461:1486","triangle":"AQS","value":"3817/31250"}` | `-1 * u * k + 1 * a * u + 1 * v * j + -1 * a * j + -3817/31250` |
| 2 | physical | `{"factor":0,"stage":461}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 3 | physical | `{"factor":116,"stage":461}` | `-1/1 * u * w + 1/1 * e * u + 1/1 * w + 1/1 * v * r + -1/1 * v + -1/1 * e * r + -279/1000` |
| 4 | physical | `{"factor":118,"stage":461}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 5 | physical | `{"factor":121,"stage":461}` | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 6 | physical | `{"factor":127,"stage":461}` | `1/1 * u * k + -1/1 * u + -1/1 * f * k + -1/1 * v * j + 1/1 * f * v + 1/1 * j + -93/1000` |
| 7 | physical | `{"factor":141,"stage":461}` | `1/1 * f + -1/1 * e` |
| 8 | physical | `{"factor":26,"stage":461}` | `1/1 * q + -1/1 * a + -1/1 * e * p + 1/1 * a * p + -93/1000` |
| 9 | physical | `{"factor":44,"stage":461}` | `-1/1 * u * w + 1/1 * a * u + 1/1 * v * r + -1/1 * a * r + -93/1000` |
| 10 | physical | `{"factor":63,"stage":461}` | `1/1 * w + -1/1 * b * w + -1/1 * e * r + 1/1 * b * e + -13857/20000` |
| 11 | physical | `{"factor":76,"stage":461}` | `1/1 * p * k + -1/1 * b * k + -1/1 * q * j + 1/1 * b * q + -93/1000` |
| 12 | physical | `{"factor":79,"stage":461}` | `-1/1 * r * k + 1/1 * b * k + 1/1 * w * j + -1/1 * b * w + -93/1000` |
| 13 | physical | `{"factor":90,"stage":461}` | `-1/1 * f * v + 1/1 * c * v + 1/1 * u + -1/1 * c + -93/1000` |
| 14 | physical | `{"factor":93,"stage":461}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 15 | coordinate | `{"box":1171,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 16 | coordinate | `{"box":1171,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 17 | coordinate | `{"box":1171,"direction":"hi","value":"896233/1000000","variable":"j"}` | `896233/1000000 + -1 * j` |
| 18 | coordinate | `{"box":1171,"direction":"hi","value":"896233/1000000","variable":"k"}` | `896233/1000000 + -1 * k` |
| 19 | coordinate | `{"box":1171,"direction":"hi","value":"385501/500000","variable":"c"}` | `385501/500000 + -1 * c` |
| 20 | coordinate | `{"box":1171,"direction":"hi","value":"59/125","variable":"e"}` | `59/125 + -1 * e` |
| 21 | coordinate | `{"box":1171,"direction":"hi","value":"131839/250000","variable":"f"}` | `131839/250000 + -1 * f` |
| 22 | coordinate | `{"box":1171,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 23 | coordinate | `{"box":1171,"direction":"hi","value":"501929/1000000","variable":"p"}` | `501929/1000000 + -1 * p` |
| 24 | coordinate | `{"box":1171,"direction":"hi","value":"308103/500000","variable":"q"}` | `308103/500000 + -1 * q` |
| 25 | coordinate | `{"box":1171,"direction":"hi","value":"344349/500000","variable":"u"}` | `344349/500000 + -1 * u` |
| 26 | coordinate | `{"box":1171,"direction":"hi","value":"907/1000","variable":"v"}` | `907/1000 + -1 * v` |
| 27 | coordinate | `{"box":1171,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 28 | coordinate | `{"box":1171,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 29 | coordinate | `{"box":1171,"direction":"lo","value":"114671/200000","variable":"r"}` | `-114671/200000 + 1 * r` |
| 30 | coordinate | `{"box":1171,"direction":"lo","value":"162657/200000","variable":"w"}` | `-162657/200000 + 1 * w` |
| 31 | coordinate | `{"box":1171,"direction":"lo","value":"11643/20000","variable":"j"}` | `-11643/20000 + 1 * j` |
| 32 | coordinate | `{"box":1171,"direction":"lo","value":"272449/500000","variable":"k"}` | `-272449/500000 + 1 * k` |
| 33 | coordinate | `{"box":1171,"direction":"lo","value":"135501/250000","variable":"c"}` | `-135501/250000 + 1 * c` |
| 34 | coordinate | `{"box":1171,"direction":"lo","value":"14209/40000","variable":"e"}` | `-14209/40000 + 1 * e` |
| 35 | coordinate | `{"box":1171,"direction":"lo","value":"103767/1000000","variable":"f"}` | `-103767/1000000 + 1 * f` |
| 36 | coordinate | `{"box":1171,"direction":"lo","value":"385501/500000","variable":"h"}` | `-385501/500000 + 1 * h` |
| 37 | coordinate | `{"box":1171,"direction":"lo","value":"145397/500000","variable":"p"}` | `-145397/500000 + 1 * p` |
| 38 | coordinate | `{"box":1171,"direction":"lo","value":"196767/1000000","variable":"q"}` | `-196767/1000000 + 1 * q` |
| 39 | coordinate | `{"box":1171,"direction":"lo","value":"69713/200000","variable":"u"}` | `-69713/200000 + 1 * u` |
| 40 | coordinate | `{"box":1171,"direction":"lo","value":"137319/250000","variable":"v"}` | `-137319/250000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 181000000 | 2 |
| 1 | 6517000000 | 8 |
| 2 | 25664000000 | 9 |
| 3 | 1371000000 | 1 |
| 4 | 120029000000 | 10 |
| 5 | 7680000000 | 11 |
| 6 | 796000000 | 12 |
| 7 | 45499000000 | 13 |
| 8 | 5245000000 | 14 |
| 9 | 32988000000 | 3 |
| 10 | 796000000 | 4 |
| 11 | 235000000 | 5 |
| 12 | 44129000000 | 0 |
| 13 | 1371000000 | 6 |
| 14 | 45357000000 | 7 |
| 15 | 181000000 | 19, 27 |
| 16 | 120029000000 | 20, 28 |
| 17 | 7680000000 | 24, 28 |
| 18 | 6517000000 | 23, 27 |
| 19 | 27035000000 | 25, 27 |
| 20 | 120825000000 | 28, 30 |
| 21 | 25664000000 | 27, 29 |
| 22 | 6884000000 | 28, 32 |
| 23 | 1371000000 | 27, 31 |
| 24 | 5245000000 | 22, 33 |
| 25 | 5245000000 | 33, 38 |
| 26 | 45499000000 | 26, 33 |
| 27 | 6517000000 | 34, 37 |
| 28 | 32988000000 | 25, 34 |
| 29 | 153813000000 | 29, 34 |
| 30 | 796000000 | 17, 34 |
| 31 | 235000000 | 22, 35 |
| 32 | 44363000000 | 16, 21 |
| 33 | 1371000000 | 18, 21 |
| 34 | 5245000000 | 22, 23 |
| 35 | 235000000 | 15, 22 |
| 36 | 7680000000 | 18, 37 |
| 37 | 7680000000 | 31, 38 |
| 38 | 14523000000 | 16, 25 |
| 39 | 14523000000 | 26, 29 |
| 40 | 181000000 | 27, 28 |
| 41 | 18919112 | 27 |
| 42 | 40648869704 | 28 |
| 43 | 207580 | 24 |
| 44 | 107878296943 | 16 |
| 45 | 1000000 | 21, 40 |
| 46 | 813833 | 21 |
| 47 | 527356 | 26 |
| 48 | 496855 | 39 |
| 49 | 331912 | 19 |
| 50 | 525339 | 40 |
| 51 | 39184 | 32 |
| 52 | 1000000 | 30, 35 |
| 53 | 813285 | 35 |
| 54 | 103767 | 30 |
| 55 | 61787 | 15 |
| 56 | 323983 | 17 |
| 57 | 99554336778 | 34 |
| 58 | 682346 | 37 |
| 59 | 421380 | 36 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -6597205041889941/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -6597205041889941/1000000 | 1 | -6597205041889941/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1171 | -6597205041889941/1000000 |

## Stage 1172

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ-/BPS+/AQS-/AQR- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ-/BPS+/AQS-/AQR-:HLLHHHLHHH |
| Index | 0 |
| Context | 247 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1158 |
| Coordinate cut | p high 501929/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 145241/500000 | 103767/1000000 | 145241/500000 |
| c | 135501/250000 | 385501/500000 | 135501/250000 | 385501/500000 |
| e | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| f | 103767/1000000 | 131839/250000 | 103767/1000000 | 131839/250000 |
| h | 385501/500000 | 1 | 385501/500000 | 1 |
| p | 501929/1000000 | 154789/250000 | 501929/1000000 | 154789/250000 |
| q | 196767/1000000 | 308103/500000 | 196767/1000000 | 308103/500000 |
| u | 69713/200000 | 344349/500000 | 69713/200000 | 344349/500000 |
| v | 137319/250000 | 907/1000 | 137319/250000 | 907/1000 |
| r | 114671/200000 | 1 | 114671/200000 | 1 |
| w | 162657/200000 | 1 | 162657/200000 | 1 |
| j | 11643/20000 | 896233/1000000 | 11643/20000 | 896233/1000000 |
| k | 272449/500000 | 896233/1000000 | 272449/500000 | 896233/1000000 |

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
| 1 | physical | `{"factor":10,"stage":461}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 2 | physical | `{"factor":102,"stage":461}` | `1/1 * f * h + -1/1 * e * f + -1/1 * h + 721/1000` |
| 3 | physical | `{"factor":105,"stage":461}` | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 4 | physical | `{"factor":110,"stage":461}` | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 5 | physical | `{"factor":121,"stage":461}` | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 6 | physical | `{"factor":26,"stage":461}` | `1/1 * q + -1/1 * a + -1/1 * e * p + 1/1 * a * p + -93/1000` |
| 7 | physical | `{"factor":44,"stage":461}` | `-1/1 * u * w + 1/1 * a * u + 1/1 * v * r + -1/1 * a * r + -93/1000` |
| 8 | physical | `{"factor":63,"stage":461}` | `1/1 * w + -1/1 * b * w + -1/1 * e * r + 1/1 * b * e + -13857/20000` |
| 9 | physical | `{"factor":90,"stage":461}` | `-1/1 * f * v + 1/1 * c * v + 1/1 * u + -1/1 * c + -93/1000` |
| 10 | physical | `{"factor":93,"stage":461}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 11 | coordinate | `{"box":1172,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 12 | coordinate | `{"box":1172,"direction":"hi","value":"145241/500000","variable":"b"}` | `145241/500000 + -1 * b` |
| 13 | coordinate | `{"box":1172,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 14 | coordinate | `{"box":1172,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 15 | coordinate | `{"box":1172,"direction":"hi","value":"385501/500000","variable":"c"}` | `385501/500000 + -1 * c` |
| 16 | coordinate | `{"box":1172,"direction":"hi","value":"59/125","variable":"e"}` | `59/125 + -1 * e` |
| 17 | coordinate | `{"box":1172,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 18 | coordinate | `{"box":1172,"direction":"hi","value":"308103/500000","variable":"q"}` | `308103/500000 + -1 * q` |
| 19 | coordinate | `{"box":1172,"direction":"hi","value":"344349/500000","variable":"u"}` | `344349/500000 + -1 * u` |
| 20 | coordinate | `{"box":1172,"direction":"hi","value":"907/1000","variable":"v"}` | `907/1000 + -1 * v` |
| 21 | coordinate | `{"box":1172,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 22 | coordinate | `{"box":1172,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 23 | coordinate | `{"box":1172,"direction":"lo","value":"114671/200000","variable":"r"}` | `-114671/200000 + 1 * r` |
| 24 | coordinate | `{"box":1172,"direction":"lo","value":"162657/200000","variable":"w"}` | `-162657/200000 + 1 * w` |
| 25 | coordinate | `{"box":1172,"direction":"lo","value":"135501/250000","variable":"c"}` | `-135501/250000 + 1 * c` |
| 26 | coordinate | `{"box":1172,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 27 | coordinate | `{"box":1172,"direction":"lo","value":"103767/1000000","variable":"f"}` | `-103767/1000000 + 1 * f` |
| 28 | coordinate | `{"box":1172,"direction":"lo","value":"385501/500000","variable":"h"}` | `-385501/500000 + 1 * h` |
| 29 | coordinate | `{"box":1172,"direction":"lo","value":"501929/1000000","variable":"p"}` | `-501929/1000000 + 1 * p` |
| 30 | coordinate | `{"box":1172,"direction":"lo","value":"196767/1000000","variable":"q"}` | `-196767/1000000 + 1 * q` |
| 31 | coordinate | `{"box":1172,"direction":"lo","value":"69713/200000","variable":"u"}` | `-69713/200000 + 1 * u` |
| 32 | coordinate | `{"box":1172,"direction":"lo","value":"137319/250000","variable":"v"}` | `-137319/250000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 26557000000 | 0 |
| 1 | 5599000000 | 1 |
| 2 | 49125000000 | 6 |
| 3 | 10776000000 | 7 |
| 4 | 10109000000 | 8 |
| 5 | 62510000000 | 9 |
| 6 | 74322000000 | 10 |
| 7 | 3947000000 | 2 |
| 8 | 62510000000 | 3 |
| 9 | 3539000000 | 4 |
| 10 | 15794000000 | 5 |
| 11 | 26557000000 | 15, 21 |
| 12 | 10109000000 | 16, 22 |
| 13 | 5599000000 | 18, 22 |
| 14 | 54724000000 | 11, 29 |
| 15 | 10776000000 | 19, 21 |
| 16 | 10109000000 | 22, 24 |
| 17 | 10633000000 | 21, 23 |
| 18 | 144000000 | 11, 13 |
| 19 | 74322000000 | 15, 28 |
| 20 | 33174000000 | 25, 30 |
| 21 | 41148000000 | 15, 18 |
| 22 | 62510000000 | 15, 32 |
| 23 | 66457000000 | 26, 27 |
| 24 | 49125000000 | 26, 29 |
| 25 | 58972000000 | 19, 26 |
| 26 | 10109000000 | 13, 16 |
| 27 | 19741000000 | 17, 27 |
| 28 | 15794000000 | 24, 27 |
| 29 | 74322000000 | 28, 29 |
| 30 | 3539000000 | 17, 31 |
| 31 | 15794000000 | 13, 17 |
| 32 | 10776000000 | 14, 19 |
| 33 | 10776000000 | 13, 32 |
| 34 | 32156000000 | 21, 22 |
| 35 | 3337743009 | 21 |
| 36 | 3336731652 | 22 |
| 37 | 360441 | 18 |
| 38 | 1000000 | 11, 23 |
| 39 | 573355 | 11 |
| 40 | 307150 | 13 |
| 41 | 286249 | 24 |
| 42 | 540716 | 19 |
| 43 | 200677 | 15 |
| 44 | 79388 | 17 |
| 45 | 335020 | 20 |
| 46 | 1000000 | 26, 31 |
| 47 | 348565 | 26 |
| 48 | 103767 | 31 |
| 49 | 33935 | 23 |
| 50 | 573415 | 16 |
| 51 | 87329 | 12 |
| 52 | 45591487919 | 29 |
| 53 | 66809 | 27 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -2027426408874373/500000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -2027426408874373/500000 | 1 | -2027426408874373/500000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1172 | -2027426408874373/500000 |

## Stage 1173

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ-/BPS+/AQS-/AQR- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ-/BPS+/AQS-/AQR-:HLLHHHH |
| Index | 0 |
| Context | 247 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1153 |
| Coordinate cut | c high 385501/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 145241/500000 | 103767/1000000 | 145241/500000 |
| c | 385501/500000 | 1 | 385501/500000 | 1 |
| e | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| f | 103767/1000000 | 131839/250000 | 103767/1000000 | 131839/250000 |
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


## Stage 1174

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ-/BPS+/AQS-/AQR- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ-/BPS+/AQS-/AQR-:HLLHHHHL |
| Index | 0 |
| Context | 247 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1173 |
| Coordinate cut | f low 372181/1000000 |

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
