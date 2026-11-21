# BITT convex: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 355

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS+/BFP+/AQR+/EPQ+/AFP+/BQR- |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS+/BFP+/AQR+/EPQ+/AFP+/BQR-:HHH |
| Index | 0 |
| Context | 11 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 299 |
| Coordinate cut | v high 266239/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 15761/31250 | 103767/1000000 | 15761/31250 |
| c | 135501/250000 | 1 | 135501/250000 | 1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 155651/500000 | 58493/100000 | 155651/500000 | 58493/100000 |
| h | 796617/1000000 | 1 | 796617/1000000 | 1 |
| p | 22907/200000 | 172857/500000 | 22907/200000 | 172857/500000 |
| q | 258363/500000 | 158493/200000 | 258363/500000 | 158493/200000 |
| u | 36711/100000 | 51583/62500 | 36711/100000 | 51583/62500 |
| v | 266239/500000 | 79673/125000 | 266239/500000 | 79673/125000 |
| r | 88753/125000 | 1 | 88753/125000 | 1 |
| w | 402789/1000000 | 834351/1000000 | 402789/1000000 | 834351/1000000 |
| j | 18681/40000 | 87273/100000 | 18681/40000 | 87273/100000 |
| k | 330337/500000 | 1 | 330337/500000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"21:1301","triangle":"HRS","value":"7721/62500"}` | `1 * r * k + -1 * h * r + -1 * w * j + 1 * h * j + -7721/62500` |
| 1 | bound | `{"direction":"lo","ref":"21:1364","triangle":"BRS","value":"317283/1000000"}` | `1 * r * k + -1 * b * k + -1 * w * j + 1 * b * w + -317283/1000000` |
| 2 | physical | `{"factor":108,"stage":21}` | `-1/1 * f * k + 1/1 * e * f + 1/1 * k + 1/1 * j + -1093/1000 + -1/1 * e * j` |
| 3 | physical | `{"factor":113,"stage":21}` | `1/1 * p * v + -1/1 * e * p + -1/1 * v + -1/1 * q * u + 1/1 * q + 1/1 * e * u + -93/1000` |
| 4 | physical | `{"factor":118,"stage":21}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 5 | physical | `{"factor":122,"stage":21}` | `-1/1 * f * k + -1/1 * h * j + 1/1 * f * h + 1/1 * j + -93/1000` |
| 6 | physical | `{"factor":128,"stage":21}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 7 | physical | `{"factor":165,"stage":21}` | `1/1 * c * h * p + -1/1 * b * h * p + -93/1000 * c + -93/1000 * b` |
| 8 | physical | `{"factor":45,"stage":21}` | `1/1 * u * w + -1/1 * a * u + -1/1 * v * r + 1/1 * a * r + -93/1000` |
| 9 | physical | `{"factor":73,"stage":21}` | `1/1 * b * w + 1/1 * h * r + -1/1 * b * h + -13857/20000` |
| 10 | physical | `{"factor":78,"stage":21}` | `-1/1 * u * w + 1/1 * b * w + 1/1 * v * r + -1/1 * b * v + -93/1000` |
| 11 | physical | `{"factor":93,"stage":21}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 12 | physical | `{"factor":97,"stage":21}` | `-1/1 * p * v + 1/1 * c * v + 1/1 * q * u + -1/1 * c * q + -93/1000` |
| 13 | coordinate | `{"box":355,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 14 | coordinate | `{"box":355,"direction":"hi","value":"15761/31250","variable":"b"}` | `15761/31250 + -1 * b` |
| 15 | coordinate | `{"box":355,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 16 | coordinate | `{"box":355,"direction":"hi","value":"834351/1000000","variable":"w"}` | `834351/1000000 + -1 * w` |
| 17 | coordinate | `{"box":355,"direction":"hi","value":"87273/100000","variable":"j"}` | `87273/100000 + -1 * j` |
| 18 | coordinate | `{"box":355,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 19 | coordinate | `{"box":355,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 20 | coordinate | `{"box":355,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 21 | coordinate | `{"box":355,"direction":"hi","value":"58493/100000","variable":"f"}` | `58493/100000 + -1 * f` |
| 22 | coordinate | `{"box":355,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 23 | coordinate | `{"box":355,"direction":"hi","value":"172857/500000","variable":"p"}` | `172857/500000 + -1 * p` |
| 24 | coordinate | `{"box":355,"direction":"hi","value":"158493/200000","variable":"q"}` | `158493/200000 + -1 * q` |
| 25 | coordinate | `{"box":355,"direction":"hi","value":"51583/62500","variable":"u"}` | `51583/62500 + -1 * u` |
| 26 | coordinate | `{"box":355,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 27 | coordinate | `{"box":355,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 28 | coordinate | `{"box":355,"direction":"lo","value":"88753/125000","variable":"r"}` | `-88753/125000 + 1 * r` |
| 29 | coordinate | `{"box":355,"direction":"lo","value":"402789/1000000","variable":"w"}` | `-402789/1000000 + 1 * w` |
| 30 | coordinate | `{"box":355,"direction":"lo","value":"18681/40000","variable":"j"}` | `-18681/40000 + 1 * j` |
| 31 | coordinate | `{"box":355,"direction":"lo","value":"330337/500000","variable":"k"}` | `-330337/500000 + 1 * k` |
| 32 | coordinate | `{"box":355,"direction":"lo","value":"135501/250000","variable":"c"}` | `-135501/250000 + 1 * c` |
| 33 | coordinate | `{"box":355,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 34 | coordinate | `{"box":355,"direction":"lo","value":"155651/500000","variable":"f"}` | `-155651/500000 + 1 * f` |
| 35 | coordinate | `{"box":355,"direction":"lo","value":"796617/1000000","variable":"h"}` | `-796617/1000000 + 1 * h` |
| 36 | coordinate | `{"box":355,"direction":"lo","value":"22907/200000","variable":"p"}` | `-22907/200000 + 1 * p` |
| 37 | coordinate | `{"box":355,"direction":"lo","value":"36711/100000","variable":"u"}` | `-36711/100000 + 1 * u` |
| 38 | coordinate | `{"box":355,"direction":"lo","value":"266239/500000","variable":"v"}` | `-266239/500000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 57567000000000000 | 8 |
| 1 | 2553000000000000 | 9 |
| 2 | 5950000000000000 | 10 |
| 3 | 5761000000000000 | 1 |
| 4 | 13029000000000000 | 11 |
| 5 | 4132000000000000 | 12 |
| 6 | 2446000000000000 | 2 |
| 7 | 78725000000000000 | 3 |
| 8 | 2446000000000000 | 4 |
| 9 | 18322000000000000 | 5 |
| 10 | 24019000000000000 | 6 |
| 11 | 2553000000000000 | 0 |
| 12 | 2019000000000000 | 7 |
| 13 | 2784000000000000 | 14, 22 |
| 14 | 5950000000000000 | 27, 38 |
| 15 | 14486000000000000 | 26, 37 |
| 16 | 43081000000000000 | 13, 25 |
| 17 | 14264000000000000 | 16, 27 |
| 18 | 57567000000000000 | 13, 28 |
| 19 | 5761000000000000 | 14, 18 |
| 20 | 5033000000000000 | 22, 32 |
| 21 | 8227246165000000 | 19, 35 |
| 22 | 17161000000000000 | 19, 24 |
| 23 | 4132000000000000 | 19, 38 |
| 24 | 2446000000000000 | 20, 34 |
| 25 | 78725000000000000 | 20, 23 |
| 26 | 78725000000000000 | 20, 37 |
| 27 | 2446000000000000 | 15, 20 |
| 28 | 18322000000000000 | 22, 34 |
| 29 | 24019000000000000 | 16, 34 |
| 30 | 16115000000000000 | 31, 34 |
| 31 | 28672000000000000 | 18, 21 |
| 32 | 11219505573000000 | 35, 36 |
| 33 | 15770000000000000 | 17, 22 |
| 34 | 74593000000000000 | 23, 38 |
| 35 | 74593000000000000 | 24, 25 |
| 36 | 51617000000000000 | 16, 37 |
| 37 | 51617000000000000 | 28, 38 |
| 38 | 34778000000000000 | 18, 28 |
| 39 | 34778000000000000 | 16, 17 |
| 40 | 2019000000000000 | 19, 35, 36 |
| 41 | 1608369723000000 | 19, 36 |
| 42 | 2019000000000000 | 27, 35, 36 |
| 43 | 1608369723000000 | 27, 36 |
| 44 | 246165000000 | 27, 35 |
| 45 | 196099223805 | 27 |
| 46 | 542585803555 | 35 |
| 47 | 1000000000000 | 15, 31 |
| 48 | 660674000000 | 15 |
| 49 | 1000000000000 | 18 |
| 50 | 1000000000000 | 29, 30 |
| 51 | 467025000000 | 29 |
| 52 | 461867000000 | 30 |
| 53 | 101890000000 | 31 |
| 54 | 86071878056000000 | 38 |
| 55 | 308496000000 | 24 |
| 56 | 608156000000 | 16 |
| 57 | 1000000000000 | 22, 30 |
| 58 | 467025000000 | 22 |
| 59 | 1000000000000 | 17 |
| 60 | 598876000000 | 28 |
| 61 | 95610776195 | 32 |
| 62 | 171564000000 | 14 |
| 63 | 40580000000 | 13 |
| 64 | 330910000000 | 25 |
| 65 | 155208000000 | 33 |
| 66 | 98841000000 | 34 |
| 67 | 7582953459 | 23 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -2322225232963878835027/500000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -2322225232963878835027/500000 | 1 | -2322225232963878835027/500000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 355 | -2322225232963878835027/500000 |

## Stage 356

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS+/BFP+/AQR+/EPQ-/APS+/APR-/BQR+ |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS+/BFP+/AQR+/EPQ-/APS+/APR-/BQR+:root |
| Index | 0 |
| Context | 19 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 30 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 54347/500000 | 6143/20000 | 54347/500000 | 6143/20000 |
| b | 72197/500000 | 15761/31250 | 72197/500000 | 15761/31250 |
| c | 70629/100000 | 1 | 70629/100000 | 1 |
| e | 54347/500000 | 391/1000 | 54347/500000 | 391/1000 |
| f | 279/1000 | 116527/200000 | 279/1000 | 116527/200000 |
| h | 100193/125000 | 1 | 100193/125000 | 1 |
| p | 18267/125000 | 115207/250000 | 18267/125000 | 115207/250000 |
| q | 255089/1000000 | 158001/250000 | 255089/1000000 | 158001/250000 |
| u | 12323/31250 | 802043/1000000 | 12323/31250 | 802043/1000000 |
| v | 5031/20000 | 13337/20000 | 5031/20000 | 13337/20000 |
| r | 612987/1000000 | 1 | 612987/1000000 | 1 |
| w | 237037/500000 | 26361/31250 | 237037/500000 | 26361/31250 |
| j | 45583/100000 | 174689/200000 | 45583/100000 | 174689/200000 |
| k | 100193/125000 | 1 | 100193/125000 | 1 |

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


## Stage 357

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS+/BFP+/AQR+/EPQ-/APS+/APR-/BQR+ |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS+/BFP+/AQR+/EPQ-/APS+/APR-/BQR+:L |
| Index | 0 |
| Context | 19 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 356 |
| Coordinate cut | r low 94683/125000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 54347/500000 | 6143/20000 | 54347/500000 | 6143/20000 |
| b | 72197/500000 | 15761/31250 | 72197/500000 | 15761/31250 |
| c | 70629/100000 | 1 | 70629/100000 | 1 |
| e | 54347/500000 | 391/1000 | 54347/500000 | 391/1000 |
| f | 279/1000 | 116527/200000 | 279/1000 | 116527/200000 |
| h | 100193/125000 | 1 | 100193/125000 | 1 |
| p | 18267/125000 | 115207/250000 | 18267/125000 | 115207/250000 |
| q | 255089/1000000 | 158001/250000 | 255089/1000000 | 158001/250000 |
| u | 12323/31250 | 802043/1000000 | 12323/31250 | 802043/1000000 |
| v | 5031/20000 | 13337/20000 | 5031/20000 | 13337/20000 |
| r | 612987/1000000 | 94683/125000 | 612987/1000000 | 94683/125000 |
| w | 237037/500000 | 26361/31250 | 237037/500000 | 26361/31250 |
| j | 45583/100000 | 174689/200000 | 45583/100000 | 174689/200000 |
| k | 100193/125000 | 1 | 100193/125000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"30:1907","triangle":"EFR","value":"3893/31250"}` | `-1 * f * w + 1 * e * f + 1 * w + 1 * r + -35143/31250 + -1 * e * r` |
| 1 | bound | `{"direction":"lo","ref":"30:1985","triangle":"ARS","value":"397529/1000000"}` | `1 * r * k + -1 * a * r + -1 * w * j + 1 * a * j + -397529/1000000` |
| 2 | physical | `{"factor":120,"stage":30}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 3 | physical | `{"factor":124,"stage":30}` | `-1/1 * f * k + -1/1 * h * j + 1/1 * f * h + 1/1 * j + -93/1000` |
| 4 | physical | `{"factor":130,"stage":30}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 5 | coordinate | `{"box":357,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 6 | coordinate | `{"box":357,"direction":"hi","value":"94683/125000","variable":"r"}` | `94683/125000 + -1 * r` |
| 7 | coordinate | `{"box":357,"direction":"hi","value":"26361/31250","variable":"w"}` | `26361/31250 + -1 * w` |
| 8 | coordinate | `{"box":357,"direction":"hi","value":"174689/200000","variable":"j"}` | `174689/200000 + -1 * j` |
| 9 | coordinate | `{"box":357,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 10 | coordinate | `{"box":357,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 11 | coordinate | `{"box":357,"direction":"hi","value":"116527/200000","variable":"f"}` | `116527/200000 + -1 * f` |
| 12 | coordinate | `{"box":357,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 13 | coordinate | `{"box":357,"direction":"lo","value":"54347/500000","variable":"a"}` | `-54347/500000 + 1 * a` |
| 14 | coordinate | `{"box":357,"direction":"lo","value":"612987/1000000","variable":"r"}` | `-612987/1000000 + 1 * r` |
| 15 | coordinate | `{"box":357,"direction":"lo","value":"237037/500000","variable":"w"}` | `-237037/500000 + 1 * w` |
| 16 | coordinate | `{"box":357,"direction":"lo","value":"45583/100000","variable":"j"}` | `-45583/100000 + 1 * j` |
| 17 | coordinate | `{"box":357,"direction":"lo","value":"100193/125000","variable":"k"}` | `-100193/125000 + 1 * k` |
| 18 | coordinate | `{"box":357,"direction":"lo","value":"54347/500000","variable":"e"}` | `-54347/500000 + 1 * e` |
| 19 | coordinate | `{"box":357,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 20 | coordinate | `{"box":357,"direction":"lo","value":"100193/125000","variable":"h"}` | `-100193/125000 + 1 * h` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 55115000000 | 1 |
| 1 | 9841000000 | 0 |
| 2 | 36326000000 | 2 |
| 3 | 118476000000 | 3 |
| 4 | 9841000000 | 4 |
| 5 | 55115000000 | 5, 6 |
| 6 | 39808000000 | 8, 13 |
| 7 | 15307000000 | 5, 16 |
| 8 | 9841000000 | 11, 18 |
| 9 | 46168000000 | 6, 10 |
| 10 | 30358000000 | 8, 18 |
| 11 | 5969000000 | 10, 16 |
| 12 | 49478000000 | 12, 19 |
| 13 | 68998000000 | 11, 20 |
| 14 | 113197000000 | 17, 19 |
| 15 | 15120000000 | 9, 11 |
| 16 | 118476000000 | 16, 20 |
| 17 | 101283000000 | 6, 17 |
| 18 | 101283000000 | 15, 16 |
| 19 | 1000000 | 14, 17 |
| 20 | 801544 | 14 |
| 21 | 612987 | 17 |
| 22 | 1000000 | 7, 16 |
| 23 | 455830 | 7 |
| 24 | 843552 | 8 |
| 25 | 829890 | 15 |
| 26 | 46202911702 | 6 |
| 27 | 1000000 | 10, 14 |
| 28 | 618650 | 10 |
| 29 | 822112 | 9 |
| 30 | 1000000 | 16, 18 |
| 31 | 455830 | 18 |
| 32 | 425326 | 16 |
| 33 | 139990 | 13 |
| 34 | 214398 | 11 |
| 35 | 96650 | 12 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -172127640142449/31250 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -172127640142449/31250 | 1 | -172127640142449/31250 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 357 | -172127640142449/31250 |

## Stage 358

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS+/BFP+/AQR+/EPQ-/APS+/APR-/BQR+ |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS+/BFP+/AQR+/EPQ-/APS+/APR-/BQR+:H |
| Index | 0 |
| Context | 19 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 356 |
| Coordinate cut | r high 94683/125000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 54347/500000 | 6143/20000 | 54347/500000 | 6143/20000 |
| b | 72197/500000 | 15761/31250 | 72197/500000 | 15761/31250 |
| c | 70629/100000 | 1 | 70629/100000 | 1 |
| e | 54347/500000 | 391/1000 | 54347/500000 | 391/1000 |
| f | 279/1000 | 116527/200000 | 279/1000 | 116527/200000 |
| h | 100193/125000 | 1 | 100193/125000 | 1 |
| p | 18267/125000 | 115207/250000 | 18267/125000 | 115207/250000 |
| q | 255089/1000000 | 158001/250000 | 255089/1000000 | 158001/250000 |
| u | 12323/31250 | 802043/1000000 | 12323/31250 | 802043/1000000 |
| v | 5031/20000 | 13337/20000 | 5031/20000 | 13337/20000 |
| r | 94683/125000 | 1 | 94683/125000 | 1 |
| w | 237037/500000 | 26361/31250 | 237037/500000 | 26361/31250 |
| j | 45583/100000 | 174689/200000 | 45583/100000 | 174689/200000 |
| k | 100193/125000 | 1 | 100193/125000 | 1 |

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


## Stage 359

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS+/BFP+/AQR+/EPQ-/APS+/APR-/BQR+ |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS+/BFP+/AQR+/EPQ-/APS+/APR-/BQR+:HL |
| Index | 0 |
| Context | 19 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 358 |
| Coordinate cut | u low 523857/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 54347/500000 | 6143/20000 | 54347/500000 | 6143/20000 |
| b | 72197/500000 | 15761/31250 | 72197/500000 | 15761/31250 |
| c | 70629/100000 | 1 | 70629/100000 | 1 |
| e | 54347/500000 | 391/1000 | 54347/500000 | 391/1000 |
| f | 279/1000 | 116527/200000 | 279/1000 | 116527/200000 |
| h | 100193/125000 | 1 | 100193/125000 | 1 |
| p | 18267/125000 | 115207/250000 | 18267/125000 | 115207/250000 |
| q | 255089/1000000 | 158001/250000 | 255089/1000000 | 158001/250000 |
| u | 12323/31250 | 523857/1000000 | 12323/31250 | 523857/1000000 |
| v | 5031/20000 | 13337/20000 | 5031/20000 | 13337/20000 |
| r | 94683/125000 | 1 | 94683/125000 | 1 |
| w | 237037/500000 | 26361/31250 | 237037/500000 | 26361/31250 |
| j | 45583/100000 | 174689/200000 | 45583/100000 | 174689/200000 |
| k | 100193/125000 | 1 | 100193/125000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"30:1442","triangle":"APQ","value":"99773/1000000"}` | `-1 * p * v + 1 * a * p + 1 * q * u + -1 * a * u + -99773/1000000` |
| 1 | bound | `{"direction":"lo","ref":"30:1973","triangle":"AQS","value":"22543/62500"}` | `1 * u * k + -1 * a * u + -1 * v * j + 1 * a * j + -22543/62500` |
| 2 | bound | `{"direction":"lo","ref":"30:1985","triangle":"ARS","value":"397529/1000000"}` | `1 * r * k + -1 * a * r + -1 * w * j + 1 * a * j + -397529/1000000` |
| 3 | physical | `{"factor":115,"stage":30}` | `-1/1 * p * v + 1/1 * e * p + 1/1 * v + 1/1 * q * u + -1/1 * q + -1/1 * e * u + -93/1000` |
| 4 | physical | `{"factor":124,"stage":30}` | `-1/1 * f * k + -1/1 * h * j + 1/1 * f * h + 1/1 * j + -93/1000` |
| 5 | physical | `{"factor":142,"stage":30}` | `1/1 * e + -1/1 * a` |
| 6 | physical | `{"factor":35,"stage":30}` | `-1/1 * f * q + 1/1 * a * f + 1/1 * p + -1/1 * a * p + -93/1000` |
| 7 | physical | `{"factor":5,"stage":30}` | `1/1 * b + -1/1 * a * b + 1/1 * a * f + -279/1000` |
| 8 | physical | `{"factor":69,"stage":30}` | `1/1 * f * q + -1/1 * b * q + -1/1 * p + 1/1 * b + -93/1000` |
| 9 | physical | `{"factor":73,"stage":30}` | `1/1 * b * q + 1/1 * h * p + -1/1 * b * h + -93/1000` |
| 10 | physical | `{"factor":80,"stage":30}` | `1/1 * u * w + -1/1 * b * w + -1/1 * v * r + 1/1 * b * v + -93/1000` |
| 11 | coordinate | `{"box":359,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 12 | coordinate | `{"box":359,"direction":"hi","value":"15761/31250","variable":"b"}` | `15761/31250 + -1 * b` |
| 13 | coordinate | `{"box":359,"direction":"hi","value":"26361/31250","variable":"w"}` | `26361/31250 + -1 * w` |
| 14 | coordinate | `{"box":359,"direction":"hi","value":"174689/200000","variable":"j"}` | `174689/200000 + -1 * j` |
| 15 | coordinate | `{"box":359,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 16 | coordinate | `{"box":359,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 17 | coordinate | `{"box":359,"direction":"hi","value":"116527/200000","variable":"f"}` | `116527/200000 + -1 * f` |
| 18 | coordinate | `{"box":359,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 19 | coordinate | `{"box":359,"direction":"hi","value":"115207/250000","variable":"p"}` | `115207/250000 + -1 * p` |
| 20 | coordinate | `{"box":359,"direction":"hi","value":"158001/250000","variable":"q"}` | `158001/250000 + -1 * q` |
| 21 | coordinate | `{"box":359,"direction":"hi","value":"523857/1000000","variable":"u"}` | `523857/1000000 + -1 * u` |
| 22 | coordinate | `{"box":359,"direction":"lo","value":"54347/500000","variable":"a"}` | `-54347/500000 + 1 * a` |
| 23 | coordinate | `{"box":359,"direction":"lo","value":"72197/500000","variable":"b"}` | `-72197/500000 + 1 * b` |
| 24 | coordinate | `{"box":359,"direction":"lo","value":"94683/125000","variable":"r"}` | `-94683/125000 + 1 * r` |
| 25 | coordinate | `{"box":359,"direction":"lo","value":"237037/500000","variable":"w"}` | `-237037/500000 + 1 * w` |
| 26 | coordinate | `{"box":359,"direction":"lo","value":"45583/100000","variable":"j"}` | `-45583/100000 + 1 * j` |
| 27 | coordinate | `{"box":359,"direction":"lo","value":"100193/125000","variable":"k"}` | `-100193/125000 + 1 * k` |
| 28 | coordinate | `{"box":359,"direction":"lo","value":"54347/500000","variable":"e"}` | `-54347/500000 + 1 * e` |
| 29 | coordinate | `{"box":359,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 30 | coordinate | `{"box":359,"direction":"lo","value":"100193/125000","variable":"h"}` | `-100193/125000 + 1 * h` |
| 31 | coordinate | `{"box":359,"direction":"lo","value":"18267/125000","variable":"p"}` | `-18267/125000 + 1 * p` |
| 32 | coordinate | `{"box":359,"direction":"lo","value":"255089/1000000","variable":"q"}` | `-255089/1000000 + 1 * q` |
| 33 | coordinate | `{"box":359,"direction":"lo","value":"5031/20000","variable":"v"}` | `-5031/20000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 8541000000 | 7 |
| 1 | 5049000000 | 6 |
| 2 | 32395000000 | 0 |
| 3 | 45019000000 | 1 |
| 4 | 7160000000 | 2 |
| 5 | 7536000000 | 8 |
| 6 | 7536000000 | 9 |
| 7 | 25371000000 | 10 |
| 8 | 37098000000 | 3 |
| 9 | 49786000000 | 4 |
| 10 | 2338000000 | 5 |
| 11 | 8541000000 | 22, 23 |
| 12 | 13590000000 | 11, 29 |
| 13 | 7536000000 | 23, 30 |
| 14 | 27346000000 | 11, 31 |
| 15 | 25371000000 | 12, 33 |
| 16 | 77414000000 | 11, 21 |
| 17 | 16000000000 | 23, 25 |
| 18 | 9371000000 | 12, 13 |
| 19 | 7160000000 | 22, 24 |
| 20 | 43045000000 | 14, 22 |
| 21 | 9134000000 | 11, 26 |
| 22 | 37098000000 | 19, 28 |
| 23 | 37098000000 | 16, 21 |
| 24 | 20835000000 | 18, 29 |
| 25 | 28951000000 | 17, 30 |
| 26 | 2486000000 | 20, 29 |
| 27 | 49786000000 | 15, 17 |
| 28 | 7536000000 | 18, 31 |
| 29 | 49786000000 | 26, 30 |
| 30 | 69493000000 | 31, 33 |
| 31 | 69493000000 | 21, 32 |
| 32 | 25371000000 | 21, 25 |
| 33 | 25371000000 | 24, 33 |
| 34 | 45019000000 | 21, 27 |
| 35 | 45019000000 | 26, 33 |
| 36 | 7160000000 | 15, 24 |
| 37 | 7160000000 | 13, 14 |
| 38 | 174220 | 12 |
| 39 | 1000000 | 17, 32 |
| 40 | 255089 | 17 |
| 41 | 582635 | 20 |
| 42 | 310238 | 31 |
| 43 | 144370 | 33 |
| 44 | 11499 | 32 |
| 45 | 209976 | 14 |
| 46 | 249842 | 28 |
| 47 | 259109 | 11 |
| 48 | 169212 | 29 |
| 49 | 6217 | 18 |
| 50 | 27556312567 | 21 |
| 51 | 323155 | 13 |
| 52 | 324090 | 24 |
| 53 | 105587 | 27 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -887821569937139/200000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -887821569937139/200000 | 1 | -887821569937139/200000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 359 | -887821569937139/200000 |
