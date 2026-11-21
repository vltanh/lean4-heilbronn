# BITT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 1150

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ-/BPS+/AQS-/AQR- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ-/BPS+/AQS-/AQR-:HLLHL |
| Index | 0 |
| Context | 247 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1149 |
| Coordinate cut | v low 137319/250000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 145241/500000 | 103767/1000000 | 145241/500000 |
| c | 135501/250000 | 1 | 135501/250000 | 1 |
| e | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| f | 103767/1000000 | 131839/250000 | 103767/1000000 | 131839/250000 |
| h | 385501/500000 | 1 | 385501/500000 | 1 |
| p | 145397/500000 | 154789/250000 | 145397/500000 | 154789/250000 |
| q | 196767/1000000 | 308103/500000 | 196767/1000000 | 308103/500000 |
| u | 62991/250000 | 344349/500000 | 62991/250000 | 344349/500000 |
| v | 225289/500000 | 137319/250000 | 225289/500000 | 137319/250000 |
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


### Coordinate certificate sources

| Source | Kind | Source witness | Polynomial |
| --- | --- | --- | --- |
| 0 | bound | `{"direction":"lo","ref":"461:1089","triangle":"BPR","value":"27553/250000"}` | `1 * p * w + -1 * b * w + -1 * q * r + 1 * b * q + -27553/250000` |
| 1 | bound | `{"direction":"lo","ref":"461:1189","triangle":"BCP","value":"63453/500000"}` | `1 * c * q + -1 * b * q + -63453/500000` |
| 2 | physical | `{"factor":10,"stage":461}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 3 | physical | `{"factor":105,"stage":461}` | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 4 | physical | `{"factor":110,"stage":461}` | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 5 | physical | `{"factor":137,"stage":461}` | `1/1 * e + -1/1 * a` |
| 6 | physical | `{"factor":141,"stage":461}` | `1/1 * f + -1/1 * e` |
| 7 | physical | `{"factor":44,"stage":461}` | `-1/1 * u * w + 1/1 * a * u + 1/1 * v * r + -1/1 * a * r + -93/1000` |
| 8 | physical | `{"factor":47,"stage":461}` | `1/1 * c * e + -1/1 * b * e + -93/1000` |
| 9 | physical | `{"factor":63,"stage":461}` | `1/1 * w + -1/1 * b * w + -1/1 * e * r + 1/1 * b * e + -13857/20000` |
| 10 | physical | `{"factor":7,"stage":461}` | `1/1 * b * h + -1/1 * a * b + -93/1000` |
| 11 | physical | `{"factor":90,"stage":461}` | `-1/1 * f * v + 1/1 * c * v + 1/1 * u + -1/1 * c + -93/1000` |
| 12 | physical | `{"factor":93,"stage":461}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 13 | coordinate | `{"box":1150,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 14 | coordinate | `{"box":1150,"direction":"hi","value":"145241/500000","variable":"b"}` | `145241/500000 + -1 * b` |
| 15 | coordinate | `{"box":1150,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 16 | coordinate | `{"box":1150,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 17 | coordinate | `{"box":1150,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 18 | coordinate | `{"box":1150,"direction":"hi","value":"59/125","variable":"e"}` | `59/125 + -1 * e` |
| 19 | coordinate | `{"box":1150,"direction":"hi","value":"131839/250000","variable":"f"}` | `131839/250000 + -1 * f` |
| 20 | coordinate | `{"box":1150,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 21 | coordinate | `{"box":1150,"direction":"hi","value":"154789/250000","variable":"p"}` | `154789/250000 + -1 * p` |
| 22 | coordinate | `{"box":1150,"direction":"hi","value":"308103/500000","variable":"q"}` | `308103/500000 + -1 * q` |
| 23 | coordinate | `{"box":1150,"direction":"hi","value":"344349/500000","variable":"u"}` | `344349/500000 + -1 * u` |
| 24 | coordinate | `{"box":1150,"direction":"hi","value":"137319/250000","variable":"v"}` | `137319/250000 + -1 * v` |
| 25 | coordinate | `{"box":1150,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 26 | coordinate | `{"box":1150,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 27 | coordinate | `{"box":1150,"direction":"lo","value":"114671/200000","variable":"r"}` | `-114671/200000 + 1 * r` |
| 28 | coordinate | `{"box":1150,"direction":"lo","value":"162657/200000","variable":"w"}` | `-162657/200000 + 1 * w` |
| 29 | coordinate | `{"box":1150,"direction":"lo","value":"135501/250000","variable":"c"}` | `-135501/250000 + 1 * c` |
| 30 | coordinate | `{"box":1150,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 31 | coordinate | `{"box":1150,"direction":"lo","value":"103767/1000000","variable":"f"}` | `-103767/1000000 + 1 * f` |
| 32 | coordinate | `{"box":1150,"direction":"lo","value":"385501/500000","variable":"h"}` | `-385501/500000 + 1 * h` |
| 33 | coordinate | `{"box":1150,"direction":"lo","value":"145397/500000","variable":"p"}` | `-145397/500000 + 1 * p` |
| 34 | coordinate | `{"box":1150,"direction":"lo","value":"196767/1000000","variable":"q"}` | `-196767/1000000 + 1 * q` |
| 35 | coordinate | `{"box":1150,"direction":"lo","value":"62991/250000","variable":"u"}` | `-62991/250000 + 1 * u` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 18291000000 | 10 |
| 1 | 50119000000 | 2 |
| 2 | 50664000000 | 7 |
| 3 | 11823000000 | 8 |
| 4 | 21789000000 | 1 |
| 5 | 11823000000 | 9 |
| 6 | 11599000000 | 0 |
| 7 | 39994000000 | 11 |
| 8 | 21789000000 | 12 |
| 9 | 46010000000 | 3 |
| 10 | 55736000000 | 4 |
| 11 | 8161000000 | 5 |
| 12 | 1470000000 | 6 |
| 13 | 68410000000 | 25, 26 |
| 14 | 18291000000 | 20, 26 |
| 15 | 39929000000 | 14, 34 |
| 16 | 50119000000 | 21, 25 |
| 17 | 50664000000 | 23, 25 |
| 18 | 23422000000 | 26, 28 |
| 19 | 50664000000 | 13, 15 |
| 20 | 11823000000 | 17, 30 |
| 21 | 21789000000 | 17, 32 |
| 22 | 39994000000 | 24, 29 |
| 23 | 46010000000 | 30, 31 |
| 24 | 9726000000 | 30, 35 |
| 25 | 1251000000 | 27, 30 |
| 26 | 10572000000 | 15, 18 |
| 27 | 6016000000 | 24, 31 |
| 28 | 21789000000 | 32, 33 |
| 29 | 55736000000 | 23, 32 |
| 30 | 11599000000 | 16, 33 |
| 31 | 11599000000 | 15, 22 |
| 32 | 50664000000 | 28, 35 |
| 33 | 50664000000 | 24, 27 |
| 34 | 15164 | 28 |
| 35 | 309678 | 23 |
| 36 | 55837 | 29 |
| 37 | 61075627968 | 24 |
| 38 | 163459 | 20 |
| 39 | 188639 | 30 |
| 40 | 25434 | 25 |
| 41 | 124746 | 19 |
| 42 | 247803 | 14 |
| 43 | 344222 | 34 |
| 44 | 335695 | 21 |
| 45 | 98247 | 27 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -3775740517789561/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -3775740517789561/1000000 | 1 | -3775740517789561/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1150 | -3775740517789561/1000000 |

## Stage 1151

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ-/BPS+/AQS-/AQR- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ-/BPS+/AQS-/AQR-:HLLHH |
| Index | 0 |
| Context | 247 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1149 |
| Coordinate cut | v high 137319/250000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 145241/500000 | 103767/1000000 | 145241/500000 |
| c | 135501/250000 | 1 | 135501/250000 | 1 |
| e | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| f | 103767/1000000 | 131839/250000 | 103767/1000000 | 131839/250000 |
| h | 385501/500000 | 1 | 385501/500000 | 1 |
| p | 145397/500000 | 154789/250000 | 145397/500000 | 154789/250000 |
| q | 196767/1000000 | 308103/500000 | 196767/1000000 | 308103/500000 |
| u | 62991/250000 | 344349/500000 | 62991/250000 | 344349/500000 |
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


## Stage 1152

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ-/BPS+/AQS-/AQR- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ-/BPS+/AQS-/AQR-:HLLHHL |
| Index | 0 |
| Context | 247 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1151 |
| Coordinate cut | u low 69713/200000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 145241/500000 | 103767/1000000 | 145241/500000 |
| c | 135501/250000 | 1 | 135501/250000 | 1 |
| e | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| f | 103767/1000000 | 131839/250000 | 103767/1000000 | 131839/250000 |
| h | 385501/500000 | 1 | 385501/500000 | 1 |
| p | 145397/500000 | 154789/250000 | 145397/500000 | 154789/250000 |
| q | 196767/1000000 | 308103/500000 | 196767/1000000 | 308103/500000 |
| u | 62991/250000 | 69713/200000 | 62991/250000 | 69713/200000 |
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


### Coordinate certificate sources

| Source | Kind | Source witness | Polynomial |
| --- | --- | --- | --- |
| 0 | physical | `{"factor":10,"stage":461}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 1 | physical | `{"factor":102,"stage":461}` | `1/1 * f * h + -1/1 * e * f + -1/1 * h + 721/1000` |
| 2 | physical | `{"factor":105,"stage":461}` | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 3 | physical | `{"factor":118,"stage":461}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 4 | physical | `{"factor":141,"stage":461}` | `1/1 * f + -1/1 * e` |
| 5 | physical | `{"factor":142,"stage":461}` | `1/1 * c * h + -135501/250000` |
| 6 | physical | `{"factor":44,"stage":461}` | `-1/1 * u * w + 1/1 * a * u + 1/1 * v * r + -1/1 * a * r + -93/1000` |
| 7 | physical | `{"factor":47,"stage":461}` | `1/1 * c * e + -1/1 * b * e + -93/1000` |
| 8 | physical | `{"factor":7,"stage":461}` | `1/1 * b * h + -1/1 * a * b + -93/1000` |
| 9 | physical | `{"factor":76,"stage":461}` | `1/1 * p * k + -1/1 * b * k + -1/1 * q * j + 1/1 * b * q + -93/1000` |
| 10 | physical | `{"factor":79,"stage":461}` | `-1/1 * r * k + 1/1 * b * k + 1/1 * w * j + -1/1 * b * w + -93/1000` |
| 11 | physical | `{"factor":90,"stage":461}` | `-1/1 * f * v + 1/1 * c * v + 1/1 * u + -1/1 * c + -93/1000` |
| 12 | physical | `{"factor":93,"stage":461}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 13 | coordinate | `{"box":1152,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 14 | coordinate | `{"box":1152,"direction":"hi","value":"145241/500000","variable":"b"}` | `145241/500000 + -1 * b` |
| 15 | coordinate | `{"box":1152,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 16 | coordinate | `{"box":1152,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 17 | coordinate | `{"box":1152,"direction":"hi","value":"896233/1000000","variable":"j"}` | `896233/1000000 + -1 * j` |
| 18 | coordinate | `{"box":1152,"direction":"hi","value":"896233/1000000","variable":"k"}` | `896233/1000000 + -1 * k` |
| 19 | coordinate | `{"box":1152,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 20 | coordinate | `{"box":1152,"direction":"hi","value":"59/125","variable":"e"}` | `59/125 + -1 * e` |
| 21 | coordinate | `{"box":1152,"direction":"hi","value":"131839/250000","variable":"f"}` | `131839/250000 + -1 * f` |
| 22 | coordinate | `{"box":1152,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 23 | coordinate | `{"box":1152,"direction":"hi","value":"154789/250000","variable":"p"}` | `154789/250000 + -1 * p` |
| 24 | coordinate | `{"box":1152,"direction":"hi","value":"308103/500000","variable":"q"}` | `308103/500000 + -1 * q` |
| 25 | coordinate | `{"box":1152,"direction":"hi","value":"69713/200000","variable":"u"}` | `69713/200000 + -1 * u` |
| 26 | coordinate | `{"box":1152,"direction":"hi","value":"907/1000","variable":"v"}` | `907/1000 + -1 * v` |
| 27 | coordinate | `{"box":1152,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 28 | coordinate | `{"box":1152,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 29 | coordinate | `{"box":1152,"direction":"lo","value":"114671/200000","variable":"r"}` | `-114671/200000 + 1 * r` |
| 30 | coordinate | `{"box":1152,"direction":"lo","value":"483003/1000000","variable":"j"}` | `-483003/1000000 + 1 * j` |
| 31 | coordinate | `{"box":1152,"direction":"lo","value":"110021/250000","variable":"k"}` | `-110021/250000 + 1 * k` |
| 32 | coordinate | `{"box":1152,"direction":"lo","value":"135501/250000","variable":"c"}` | `-135501/250000 + 1 * c` |
| 33 | coordinate | `{"box":1152,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 34 | coordinate | `{"box":1152,"direction":"lo","value":"103767/1000000","variable":"f"}` | `-103767/1000000 + 1 * f` |
| 35 | coordinate | `{"box":1152,"direction":"lo","value":"385501/500000","variable":"h"}` | `-385501/500000 + 1 * h` |
| 36 | coordinate | `{"box":1152,"direction":"lo","value":"145397/500000","variable":"p"}` | `-145397/500000 + 1 * p` |
| 37 | coordinate | `{"box":1152,"direction":"lo","value":"196767/1000000","variable":"q"}` | `-196767/1000000 + 1 * q` |
| 38 | coordinate | `{"box":1152,"direction":"lo","value":"137319/250000","variable":"v"}` | `-137319/250000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 3887000000 | 8 |
| 1 | 784000000 | 0 |
| 2 | 3000000 | 6 |
| 3 | 37447000000 | 7 |
| 4 | 24000000 | 9 |
| 5 | 7000000 | 10 |
| 6 | 191648000000 | 11 |
| 7 | 133000000 | 12 |
| 8 | 8851000000 | 1 |
| 9 | 93713000000 | 2 |
| 10 | 3000000 | 3 |
| 11 | 55585000000 | 4 |
| 12 | 13830000000 | 5 |
| 13 | 4671000000 | 27, 28 |
| 14 | 37447000000 | 28, 33 |
| 15 | 3887000000 | 22, 28 |
| 16 | 808000000 | 24, 28 |
| 17 | 784000000 | 23, 27 |
| 18 | 3000000 | 25, 27 |
| 19 | 7000000 | 14, 16 |
| 20 | 3000000 | 27, 29 |
| 21 | 17000000 | 28, 31 |
| 22 | 37447000000 | 19, 33 |
| 23 | 13964000000 | 22, 32 |
| 24 | 133000000 | 32, 37 |
| 25 | 191648000000 | 26, 32 |
| 26 | 102565000000 | 33, 34 |
| 27 | 93713000000 | 25, 33 |
| 28 | 3000000 | 29, 33 |
| 29 | 3000000 | 17, 33 |
| 30 | 8851000000 | 22, 34 |
| 31 | 97935000000 | 34, 38 |
| 32 | 133000000 | 35, 36 |
| 33 | 24000000 | 18, 36 |
| 34 | 24000000 | 30, 37 |
| 35 | 3000000 | 16, 25 |
| 36 | 3000000 | 26, 29 |
| 37 | 4000000 | 29, 31 |
| 38 | 4000000 | 16, 30 |
| 39 | 107656628172 | 25 |
| 40 | 328838 | 19 |
| 41 | 1000000 | 32, 35 |
| 42 | 771002 | 32 |
| 43 | 542004 | 35 |
| 44 | 1000000 | 20, 34 |
| 45 | 103767 | 20 |
| 46 | 472000 | 21 |
| 47 | 652300 | 22 |
| 48 | 281512 | 26 |
| 49 | 78403 | 31 |
| 50 | 1852943 | 16 |
| 51 | 207415 | 34 |
| 52 | 584725 | 33 |
| 53 | 48277 | 13 |
| 54 | 45486 | 28 |
| 55 | 165132 | 24 |
| 56 | 319654 | 23 |
| 57 | 338062 | 15 |
| 58 | 411107 | 30 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -3644267953221377/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -3644267953221377/1000000 | 1 | -3644267953221377/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1152 | -3644267953221377/1000000 |

## Stage 1153

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ-/BPS+/AQS-/AQR- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ-/BPS+/AQS-/AQR-:HLLHHH |
| Index | 0 |
| Context | 247 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1151 |
| Coordinate cut | u high 69713/200000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 145241/500000 | 103767/1000000 | 145241/500000 |
| c | 135501/250000 | 1 | 135501/250000 | 1 |
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


## Stage 1154

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ-/BPS+/AQS-/AQR- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ-/BPS+/AQS-/AQR-:HLLHHHL |
| Index | 0 |
| Context | 247 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1153 |
| Coordinate cut | c low 385501/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 145241/500000 | 103767/1000000 | 145241/500000 |
| c | 135501/250000 | 385501/500000 | 135501/250000 | 385501/500000 |
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
