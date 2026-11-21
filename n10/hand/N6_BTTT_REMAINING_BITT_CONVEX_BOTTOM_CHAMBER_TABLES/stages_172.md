# BITT convex: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 860

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS-/BFP-/BPQ+/APR+/FPQ-/BPS-/AFQ- |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS-/BFP-/BPQ+/APR+/FPQ-/BPS-/AFQ-:HLHHHLLHLHHH |
| Index | 0 |
| Context | 99 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 858 |
| Coordinate cut | v high 670887/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 26227/125000 | 15761/31250 | 26227/125000 | 15761/31250 |
| c | 141069/200000 | 894143/1000000 | 141069/200000 | 894143/1000000 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 37559/125000 | 58493/100000 | 37559/125000 | 58493/100000 |
| h | 796617/1000000 | 1 | 796617/1000000 | 1 |
| p | 61899/200000 | 569629/1000000 | 61899/200000 | 569629/1000000 |
| q | 196767/1000000 | 97579/250000 | 196767/1000000 | 97579/250000 |
| u | 136047/500000 | 1517/3125 | 136047/500000 | 1517/3125 |
| v | 670887/1000000 | 403307/500000 | 670887/1000000 | 403307/500000 |
| r | 176911/250000 | 1 | 176911/250000 | 1 |
| w | 523117/1000000 | 857427/1000000 | 523117/1000000 | 857427/1000000 |
| j | 13857/20000 | 876603/1000000 | 13857/20000 | 876603/1000000 |
| k | 150983/200000 | 1 | 150983/200000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"130:1376","triangle":"BCQ","value":"62809/200000"}` | `1 * c * v + -1 * b * v + -62809/200000` |
| 1 | physical | `{"factor":110,"stage":130}` | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -93/1000` |
| 2 | physical | `{"factor":118,"stage":130}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 3 | physical | `{"factor":122,"stage":130}` | `-1/1 * f * k + -1/1 * h * j + 1/1 * f * h + 1/1 * j + -93/1000` |
| 4 | physical | `{"factor":123,"stage":130}` | `-1/1 * p * v + 1/1 * p + 1/1 * f * v + 1/1 * q * u + -1/1 * f * q + -1/1 * u + -93/1000` |
| 5 | physical | `{"factor":128,"stage":130}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 6 | physical | `{"factor":129,"stage":130}` | `1/1 * p * v + -1/1 * h * p + -1/1 * q * u + 1/1 * h * u + -93/1000` |
| 7 | physical | `{"factor":28,"stage":130}` | `1/1 * q + -1/1 * a + -1/1 * e * p + 1/1 * a * p + -93/1000` |
| 8 | physical | `{"factor":36,"stage":130}` | `-1/1 * f * v + 1/1 * a * f + 1/1 * u + -1/1 * a * u + -93/1000` |
| 9 | physical | `{"factor":75,"stage":130}` | `1/1 * p * v + -1/1 * b * v + -1/1 * q * u + 1/1 * b * q + -93/1000` |
| 10 | physical | `{"factor":77,"stage":130}` | `-1/1 * p * k + 1/1 * b * k + 1/1 * q * j + -1/1 * b * q + -93/1000` |
| 11 | physical | `{"factor":94,"stage":130}` | `1/1 * c * v + 1/1 * h * u + -1/1 * c * h + -93/1000` |
| 12 | coordinate | `{"box":860,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 13 | coordinate | `{"box":860,"direction":"hi","value":"15761/31250","variable":"b"}` | `15761/31250 + -1 * b` |
| 14 | coordinate | `{"box":860,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 15 | coordinate | `{"box":860,"direction":"hi","value":"857427/1000000","variable":"w"}` | `857427/1000000 + -1 * w` |
| 16 | coordinate | `{"box":860,"direction":"hi","value":"876603/1000000","variable":"j"}` | `876603/1000000 + -1 * j` |
| 17 | coordinate | `{"box":860,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 18 | coordinate | `{"box":860,"direction":"hi","value":"894143/1000000","variable":"c"}` | `894143/1000000 + -1 * c` |
| 19 | coordinate | `{"box":860,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 20 | coordinate | `{"box":860,"direction":"hi","value":"58493/100000","variable":"f"}` | `58493/100000 + -1 * f` |
| 21 | coordinate | `{"box":860,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 22 | coordinate | `{"box":860,"direction":"hi","value":"569629/1000000","variable":"p"}` | `569629/1000000 + -1 * p` |
| 23 | coordinate | `{"box":860,"direction":"hi","value":"97579/250000","variable":"q"}` | `97579/250000 + -1 * q` |
| 24 | coordinate | `{"box":860,"direction":"hi","value":"1517/3125","variable":"u"}` | `1517/3125 + -1 * u` |
| 25 | coordinate | `{"box":860,"direction":"hi","value":"403307/500000","variable":"v"}` | `403307/500000 + -1 * v` |
| 26 | coordinate | `{"box":860,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 27 | coordinate | `{"box":860,"direction":"lo","value":"26227/125000","variable":"b"}` | `-26227/125000 + 1 * b` |
| 28 | coordinate | `{"box":860,"direction":"lo","value":"523117/1000000","variable":"w"}` | `-523117/1000000 + 1 * w` |
| 29 | coordinate | `{"box":860,"direction":"lo","value":"150983/200000","variable":"k"}` | `-150983/200000 + 1 * k` |
| 30 | coordinate | `{"box":860,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 31 | coordinate | `{"box":860,"direction":"lo","value":"37559/125000","variable":"f"}` | `-37559/125000 + 1 * f` |
| 32 | coordinate | `{"box":860,"direction":"lo","value":"796617/1000000","variable":"h"}` | `-796617/1000000 + 1 * h` |
| 33 | coordinate | `{"box":860,"direction":"lo","value":"61899/200000","variable":"p"}` | `-61899/200000 + 1 * p` |
| 34 | coordinate | `{"box":860,"direction":"lo","value":"196767/1000000","variable":"q"}` | `-196767/1000000 + 1 * q` |
| 35 | coordinate | `{"box":860,"direction":"lo","value":"136047/500000","variable":"u"}` | `-136047/500000 + 1 * u` |
| 36 | coordinate | `{"box":860,"direction":"lo","value":"670887/1000000","variable":"v"}` | `-670887/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 8999000000 | 7 |
| 1 | 62051000000 | 8 |
| 2 | 4913000000 | 0 |
| 3 | 50441000000 | 9 |
| 4 | 47856000000 | 10 |
| 5 | 10015000000 | 11 |
| 6 | 24937000000 | 1 |
| 7 | 13443000000 | 2 |
| 8 | 1280000000 | 3 |
| 9 | 88031000000 | 4 |
| 10 | 5015000000 | 5 |
| 11 | 37591000000 | 6 |
| 12 | 7425000000 | 20, 26 |
| 13 | 54626000000 | 12, 31 |
| 14 | 2585000000 | 23, 27 |
| 15 | 8999000000 | 22, 26 |
| 16 | 55354000000 | 27, 36 |
| 17 | 62051000000 | 26, 35 |
| 18 | 47856000000 | 13, 29 |
| 19 | 10015000000 | 18, 21 |
| 20 | 14928000000 | 18, 36 |
| 21 | 8999000000 | 19, 22 |
| 22 | 24937000000 | 19, 35 |
| 23 | 13443000000 | 14, 19 |
| 24 | 13443000000 | 16, 30 |
| 25 | 1280000000 | 21, 31 |
| 26 | 88031000000 | 20, 23 |
| 27 | 25980000000 | 20, 36 |
| 28 | 689000000 | 15, 31 |
| 29 | 4326000000 | 20, 28 |
| 30 | 6295000000 | 29, 31 |
| 31 | 37591000000 | 21, 22 |
| 32 | 22669000000 | 21, 35 |
| 33 | 1280000000 | 16, 21 |
| 34 | 47856000000 | 17, 22 |
| 35 | 47856000000 | 16, 34 |
| 36 | 18458000000 | 14, 29 |
| 37 | 18458000000 | 15, 16 |
| 38 | 114698 | 23 |
| 39 | 75299 | 12 |
| 40 | 520883 | 24 |
| 41 | 1000000 | 22, 36 |
| 42 | 670887 | 22 |
| 43 | 569629 | 25 |
| 44 | 1000000 | 34, 35 |
| 45 | 272094 | 34 |
| 46 | 196767 | 35 |
| 47 | 8006906760 | 36 |
| 48 | 114678 | 32 |
| 49 | 367352 | 29 |
| 50 | 94214 | 15 |
| 51 | 33767 | 16 |
| 52 | 809767 | 33 |
| 53 | 3663008070 | 14 |
| 54 | 163759 | 20 |
| 55 | 99898 | 27 |
| 56 | 1136 | 18 |
| 57 | 290836 | 19 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -1270369562396721/500000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -1270369562396721/500000 | 1 | -1270369562396721/500000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 860 | -1270369562396721/500000 |

## Stage 861

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS-/BFP-/BPQ+/APR+/FPQ-/BPS-/AFQ- |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS-/BFP-/BPQ+/APR+/FPQ-/BPS-/AFQ-:HLHHHLLHH |
| Index | 0 |
| Context | 99 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 853 |
| Coordinate cut | c high 894143/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 26227/125000 | 15761/31250 | 26227/125000 | 15761/31250 |
| c | 894143/1000000 | 1 | 894143/1000000 | 1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 37559/125000 | 58493/100000 | 37559/125000 | 58493/100000 |
| h | 796617/1000000 | 1 | 796617/1000000 | 1 |
| p | 61899/200000 | 569629/1000000 | 61899/200000 | 569629/1000000 |
| q | 196767/1000000 | 97579/250000 | 196767/1000000 | 97579/250000 |
| u | 136047/500000 | 1517/3125 | 136047/500000 | 1517/3125 |
| v | 99539/200000 | 403307/500000 | 99539/200000 | 403307/500000 |
| r | 176911/250000 | 1 | 176911/250000 | 1 |
| w | 209709/500000 | 857427/1000000 | 209709/500000 | 857427/1000000 |
| j | 13857/20000 | 876603/1000000 | 13857/20000 | 876603/1000000 |
| k | 638303/1000000 | 1 | 638303/1000000 | 1 |

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
| 0 | physical | `{"factor":0,"stage":130}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 1 | physical | `{"factor":110,"stage":130}` | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -93/1000` |
| 2 | physical | `{"factor":118,"stage":130}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 3 | physical | `{"factor":123,"stage":130}` | `-1/1 * p * v + 1/1 * p + 1/1 * f * v + 1/1 * q * u + -1/1 * f * q + -1/1 * u + -93/1000` |
| 4 | physical | `{"factor":128,"stage":130}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 5 | physical | `{"factor":129,"stage":130}` | `1/1 * p * v + -1/1 * h * p + -1/1 * q * u + 1/1 * h * u + -93/1000` |
| 6 | physical | `{"factor":145,"stage":130}` | `76277533/62500000 + 2/1 * a * b + -1/1 * b * h + -1/1 * a * c + -2/1 * c * e + 1/1 * b * e + -2/1 * w + 1/1 * c * w + 2/1 * e * r + -2/1 * r * k + 1/1 * k + 2/1 * w * j + -1/1 * e * j + -2/1 * j + 1/1 * r + 2/1 * f * k + -1/1 * f * w + -2/1 * f * h + 1/1 * h * j + 1/1 * a * f` |
| 7 | physical | `{"factor":157,"stage":130}` | `157/250 + -1/1 * f + -1/1 * e + 1/1 * e * f` |
| 8 | physical | `{"factor":28,"stage":130}` | `1/1 * q + -1/1 * a + -1/1 * e * p + 1/1 * a * p + -93/1000` |
| 9 | physical | `{"factor":75,"stage":130}` | `1/1 * p * v + -1/1 * b * v + -1/1 * q * u + 1/1 * b * q + -93/1000` |
| 10 | physical | `{"factor":77,"stage":130}` | `-1/1 * p * k + 1/1 * b * k + 1/1 * q * j + -1/1 * b * q + -93/1000` |
| 11 | physical | `{"factor":86,"stage":130}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 12 | physical | `{"factor":924,"stage":130}` | `-896233/1000000 * f * k + -11910339/25000000 * a * f + 896233/1000000 * j + 11910339/25000000 * a * j + -8579041/6250000 + 8579041/6250000 * e * f + 8579041/6250000 * k + -8579041/6250000 * e * j` |
| 13 | physical | `{"factor":94,"stage":130}` | `1/1 * c * v + 1/1 * h * u + -1/1 * c * h + -93/1000` |
| 14 | coordinate | `{"box":861,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 15 | coordinate | `{"box":861,"direction":"hi","value":"15761/31250","variable":"b"}` | `15761/31250 + -1 * b` |
| 16 | coordinate | `{"box":861,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 17 | coordinate | `{"box":861,"direction":"hi","value":"857427/1000000","variable":"w"}` | `857427/1000000 + -1 * w` |
| 18 | coordinate | `{"box":861,"direction":"hi","value":"876603/1000000","variable":"j"}` | `876603/1000000 + -1 * j` |
| 19 | coordinate | `{"box":861,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 20 | coordinate | `{"box":861,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 21 | coordinate | `{"box":861,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 22 | coordinate | `{"box":861,"direction":"hi","value":"58493/100000","variable":"f"}` | `58493/100000 + -1 * f` |
| 23 | coordinate | `{"box":861,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 24 | coordinate | `{"box":861,"direction":"hi","value":"569629/1000000","variable":"p"}` | `569629/1000000 + -1 * p` |
| 25 | coordinate | `{"box":861,"direction":"hi","value":"97579/250000","variable":"q"}` | `97579/250000 + -1 * q` |
| 26 | coordinate | `{"box":861,"direction":"hi","value":"1517/3125","variable":"u"}` | `1517/3125 + -1 * u` |
| 27 | coordinate | `{"box":861,"direction":"hi","value":"403307/500000","variable":"v"}` | `403307/500000 + -1 * v` |
| 28 | coordinate | `{"box":861,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 29 | coordinate | `{"box":861,"direction":"lo","value":"26227/125000","variable":"b"}` | `-26227/125000 + 1 * b` |
| 30 | coordinate | `{"box":861,"direction":"lo","value":"176911/250000","variable":"r"}` | `-176911/250000 + 1 * r` |
| 31 | coordinate | `{"box":861,"direction":"lo","value":"209709/500000","variable":"w"}` | `-209709/500000 + 1 * w` |
| 32 | coordinate | `{"box":861,"direction":"lo","value":"13857/20000","variable":"j"}` | `-13857/20000 + 1 * j` |
| 33 | coordinate | `{"box":861,"direction":"lo","value":"638303/1000000","variable":"k"}` | `-638303/1000000 + 1 * k` |
| 34 | coordinate | `{"box":861,"direction":"lo","value":"894143/1000000","variable":"c"}` | `-894143/1000000 + 1 * c` |
| 35 | coordinate | `{"box":861,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 36 | coordinate | `{"box":861,"direction":"lo","value":"37559/125000","variable":"f"}` | `-37559/125000 + 1 * f` |
| 37 | coordinate | `{"box":861,"direction":"lo","value":"796617/1000000","variable":"h"}` | `-796617/1000000 + 1 * h` |
| 38 | coordinate | `{"box":861,"direction":"lo","value":"61899/200000","variable":"p"}` | `-61899/200000 + 1 * p` |
| 39 | coordinate | `{"box":861,"direction":"lo","value":"196767/1000000","variable":"q"}` | `-196767/1000000 + 1 * q` |
| 40 | coordinate | `{"box":861,"direction":"lo","value":"136047/500000","variable":"u"}` | `-136047/500000 + 1 * u` |
| 41 | coordinate | `{"box":861,"direction":"lo","value":"99539/200000","variable":"v"}` | `-99539/200000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 151700000000000000 | 0 |
| 1 | 386675000000000000 | 8 |
| 2 | 588400000000000000 | 9 |
| 3 | 477350000000000000 | 10 |
| 4 | 324100000000000000 | 11 |
| 5 | 1838575000000000000 | 13 |
| 6 | 2052800000000000000 | 1 |
| 7 | 616100000000000000 | 2 |
| 8 | 1266325000000000000 | 3 |
| 9 | 282850000000000000 | 4 |
| 10 | 677925000000000000 | 5 |
| 11 | 151700000000000000 | 6 |
| 12 | 87550000000000000 | 7 |
| 13 | 22925000000000000 | 12 |
| 14 | 151700000000000000 | 15, 28 |
| 15 | 151700000000000000 | 21, 29 |
| 16 | 140775000000000000 | 22, 28 |
| 17 | 151700000000000000 | 15, 23 |
| 18 | 111075000000000000 | 25, 29 |
| 19 | 386675000000000000 | 24, 28 |
| 20 | 135275000000000000 | 29, 41 |
| 21 | 453150000000000000 | 15, 27 |
| 22 | 446325000000000000 | 19, 29 |
| 23 | 31025000000000000 | 15, 33 |
| 24 | 10925000000000000 | 14, 32 |
| 25 | 20725000000000000 | 21, 34 |
| 26 | 1838575000000000000 | 34, 37 |
| 27 | 1838575000000000000 | 27, 34 |
| 28 | 172425000000000000 | 31, 34 |
| 29 | 119025000000000000 | 21, 36 |
| 30 | 386675000000000000 | 21, 24 |
| 31 | 2052800000000000000 | 21, 40 |
| 32 | 636825000000000000 | 16, 21 |
| 33 | 432932077612000000 | 21, 32 |
| 34 | 303400000000000000 | 22, 23 |
| 35 | 1266325000000000000 | 22, 25 |
| 36 | 263400000000000000 | 27, 36 |
| 37 | 1002925000000000000 | 22, 41 |
| 38 | 131150000000000000 | 17, 36 |
| 39 | 677925000000000000 | 23, 24 |
| 40 | 463700000000000000 | 23, 40 |
| 41 | 151700000000000000 | 23, 32 |
| 42 | 477350000000000000 | 19, 24 |
| 43 | 477350000000000000 | 25, 32 |
| 44 | 595550000000000000 | 16, 33 |
| 45 | 595550000000000000 | 17, 18 |
| 46 | 777450000000 | 25 |
| 47 | 10366235532664 | 14 |
| 48 | 25000000000000 | 15, 41 |
| 49 | 12442375000000 | 15 |
| 50 | 16851875000000 | 27 |
| 51 | 25000000000000 | 29, 39 |
| 52 | 8890225000000 | 29 |
| 53 | 5245400000000 | 39 |
| 54 | 26620625000000 | 31 |
| 55 | 25000000000000 | 20, 31 |
| 56 | 10485450000000 | 20 |
| 57 | 25000000000000 | 17 |
| 58 | 25000000000000 | 21, 30 |
| 59 | 22594823474200 | 21 |
| 60 | 9775000000000 | 16 |
| 61 | 25000000000000 | 34, 35 |
| 62 | 45837033550000000 | 34 |
| 63 | 30243649232864 | 35 |
| 64 | 6802350000000 | 23 |
| 65 | 25000000000000 | 26 |
| 66 | 24136000000000 | 37 |
| 67 | 833762000000 | 33 |
| 68 | 4890371292000 | 18 |
| 69 | 15820275000000 | 38 |
| 70 | 5200000000000 | 40 |
| 71 | 7223350000000 | 30 |
| 72 | 3858475000000 | 22, 33 |
| 73 | 3451634097475 | 22 |
| 74 | 2256937781750 | 19 |
| 75 | 3219137000000 | 14, 36 |
| 76 | 6632172564404 | 36 |
| 77 | 7077612000000 | 35, 36 |
| 78 | 3219137000000 | 28, 32 |
| 79 | 2230379070450 | 28 |
| 80 | 334040189079 | 32 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -30585402931024661613169/500000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -30585402931024661613169/500000 | 1 | -30585402931024661613169/500000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 861 | -30585402931024661613169/500000 |

## Stage 862

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS-/BFP-/BPQ+/APR+/FPQ-/BPS-/AFQ- |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS-/BFP-/BPQ+/APR+/FPQ-/BPS-/AFQ-:HLHHHLH |
| Index | 0 |
| Context | 99 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 850 |
| Coordinate cut | q high 97579/250000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 15761/31250 | 103767/1000000 | 15761/31250 |
| c | 141069/200000 | 1 | 141069/200000 | 1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 37559/125000 | 58493/100000 | 37559/125000 | 58493/100000 |
| h | 796617/1000000 | 1 | 796617/1000000 | 1 |
| p | 61899/200000 | 569629/1000000 | 61899/200000 | 569629/1000000 |
| q | 97579/250000 | 266259/500000 | 97579/250000 | 266259/500000 |
| u | 136047/500000 | 1517/3125 | 136047/500000 | 1517/3125 |
| v | 99539/200000 | 403307/500000 | 99539/200000 | 403307/500000 |
| r | 176911/250000 | 1 | 176911/250000 | 1 |
| w | 209709/500000 | 857427/1000000 | 209709/500000 | 857427/1000000 |
| j | 13857/20000 | 876603/1000000 | 13857/20000 | 876603/1000000 |
| k | 638303/1000000 | 1 | 638303/1000000 | 1 |

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
| 0 | physical | `{"factor":110,"stage":130}` | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -93/1000` |
| 1 | physical | `{"factor":123,"stage":130}` | `-1/1 * p * v + 1/1 * p + 1/1 * f * v + 1/1 * q * u + -1/1 * f * q + -1/1 * u + -93/1000` |
| 2 | physical | `{"factor":129,"stage":130}` | `1/1 * p * v + -1/1 * h * p + -1/1 * q * u + 1/1 * h * u + -93/1000` |
| 3 | physical | `{"factor":157,"stage":130}` | `157/250 + -1/1 * f + -1/1 * e + 1/1 * e * f` |
| 4 | physical | `{"factor":27,"stage":130}` | `1/1 * h + -1/1 * a + -13857/20000` |
| 5 | physical | `{"factor":36,"stage":130}` | `-1/1 * f * v + 1/1 * a * f + 1/1 * u + -1/1 * a * u + -93/1000` |
| 6 | physical | `{"factor":94,"stage":130}` | `1/1 * c * v + 1/1 * h * u + -1/1 * c * h + -93/1000` |
| 7 | physical | `{"factor":97,"stage":130}` | `-1/1 * p * v + 1/1 * c * v + 1/1 * q * u + -1/1 * c * q + -93/1000` |
| 8 | coordinate | `{"box":862,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 9 | coordinate | `{"box":862,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 10 | coordinate | `{"box":862,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 11 | coordinate | `{"box":862,"direction":"hi","value":"58493/100000","variable":"f"}` | `58493/100000 + -1 * f` |
| 12 | coordinate | `{"box":862,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 13 | coordinate | `{"box":862,"direction":"hi","value":"569629/1000000","variable":"p"}` | `569629/1000000 + -1 * p` |
| 14 | coordinate | `{"box":862,"direction":"hi","value":"1517/3125","variable":"u"}` | `1517/3125 + -1 * u` |
| 15 | coordinate | `{"box":862,"direction":"hi","value":"403307/500000","variable":"v"}` | `403307/500000 + -1 * v` |
| 16 | coordinate | `{"box":862,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 17 | coordinate | `{"box":862,"direction":"lo","value":"141069/200000","variable":"c"}` | `-141069/200000 + 1 * c` |
| 18 | coordinate | `{"box":862,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 19 | coordinate | `{"box":862,"direction":"lo","value":"37559/125000","variable":"f"}` | `-37559/125000 + 1 * f` |
| 20 | coordinate | `{"box":862,"direction":"lo","value":"796617/1000000","variable":"h"}` | `-796617/1000000 + 1 * h` |
| 21 | coordinate | `{"box":862,"direction":"lo","value":"61899/200000","variable":"p"}` | `-61899/200000 + 1 * p` |
| 22 | coordinate | `{"box":862,"direction":"lo","value":"97579/250000","variable":"q"}` | `-97579/250000 + 1 * q` |
| 23 | coordinate | `{"box":862,"direction":"lo","value":"136047/500000","variable":"u"}` | `-136047/500000 + 1 * u` |
| 24 | coordinate | `{"box":862,"direction":"lo","value":"99539/200000","variable":"v"}` | `-99539/200000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 1044000000 | 4 |
| 1 | 36789000000 | 5 |
| 2 | 51000000 | 6 |
| 3 | 237000000 | 7 |
| 4 | 54613000000 | 0 |
| 5 | 137776000000 | 1 |
| 6 | 138013000000 | 2 |
| 7 | 21243000000 | 3 |
| 8 | 36789000000 | 8, 19 |
| 9 | 36789000000 | 16, 23 |
| 10 | 51000000 | 9, 12 |
| 11 | 237000000 | 17, 22 |
| 12 | 288000000 | 9, 24 |
| 13 | 21243000000 | 10, 19 |
| 14 | 54613000000 | 10, 23 |
| 15 | 137776000000 | 19, 22 |
| 16 | 16680000000 | 15, 19 |
| 17 | 84307000000 | 11, 24 |
| 18 | 1166000000 | 20, 21 |
| 19 | 136847000000 | 12, 13 |
| 20 | 83451000000 | 12, 23 |
| 21 | 646633 | 20 |
| 22 | 1758 | 16 |
| 23 | 801163 | 23 |
| 24 | 272094 | 12 |
| 25 | 1000000 | 14 |
| 26 | 566470 | 15 |
| 27 | 144578 | 13 |
| 28 | 71019 | 11 |
| 29 | 203682 | 18 |
| 30 | 168732 | 17 |
| 31 | 41564997037 | 22 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -5365470465845969/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -5365470465845969/1000000 | 1 | -5365470465845969/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 862 | -5365470465845969/1000000 |

## Stage 863

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS-/BFP-/BPQ+/APR+/FPQ-/BPS-/AFQ- |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS-/BFP-/BPQ+/APR+/FPQ-/BPS-/AFQ-:HLHHHH |
| Index | 0 |
| Context | 99 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 849 |
| Coordinate cut | p high 569629/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 15761/31250 | 103767/1000000 | 15761/31250 |
| c | 141069/200000 | 1 | 141069/200000 | 1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 37559/125000 | 58493/100000 | 37559/125000 | 58493/100000 |
| h | 796617/1000000 | 1 | 796617/1000000 | 1 |
| p | 569629/1000000 | 710233/1000000 | 569629/1000000 | 710233/1000000 |
| q | 196767/1000000 | 266259/500000 | 196767/1000000 | 266259/500000 |
| u | 136047/500000 | 1517/3125 | 136047/500000 | 1517/3125 |
| v | 99539/200000 | 403307/500000 | 99539/200000 | 403307/500000 |
| r | 176911/250000 | 1 | 176911/250000 | 1 |
| w | 209709/500000 | 857427/1000000 | 209709/500000 | 857427/1000000 |
| j | 13857/20000 | 876603/1000000 | 13857/20000 | 876603/1000000 |
| k | 638303/1000000 | 1 | 638303/1000000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"130:1678","triangle":"CEH","value":"23961/62500"}` | `1 * h + -1 * c * h + 1 * c * e + -23961/62500` |
| 1 | bound | `{"direction":"lo","ref":"130:1728","triangle":"EHP","value":"143947/500000"}` | `-1 * q + -1 * h * p + 1 * h + 1 * e * p + -143947/500000` |
| 2 | physical | `{"factor":0,"stage":130}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 3 | physical | `{"factor":118,"stage":130}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 4 | physical | `{"factor":128,"stage":130}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 5 | physical | `{"factor":142,"stage":130}` | `1/1 * f + -1/1 * b` |
| 6 | physical | `{"factor":145,"stage":130}` | `76277533/62500000 + 2/1 * a * b + -1/1 * b * h + -1/1 * a * c + -2/1 * c * e + 1/1 * b * e + -2/1 * w + 1/1 * c * w + 2/1 * e * r + -2/1 * r * k + 1/1 * k + 2/1 * w * j + -1/1 * e * j + -2/1 * j + 1/1 * r + 2/1 * f * k + -1/1 * f * w + -2/1 * f * h + 1/1 * h * j + 1/1 * a * f` |
| 7 | physical | `{"factor":28,"stage":130}` | `1/1 * q + -1/1 * a + -1/1 * e * p + 1/1 * a * p + -93/1000` |
| 8 | physical | `{"factor":77,"stage":130}` | `-1/1 * p * k + 1/1 * b * k + 1/1 * q * j + -1/1 * b * q + -93/1000` |
| 9 | physical | `{"factor":86,"stage":130}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 10 | physical | `{"factor":924,"stage":130}` | `-896233/1000000 * f * k + -11910339/25000000 * a * f + 896233/1000000 * j + 11910339/25000000 * a * j + -8579041/6250000 + 8579041/6250000 * e * f + 8579041/6250000 * k + -8579041/6250000 * e * j` |
| 11 | physical | `{"factor":93,"stage":130}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 12 | coordinate | `{"box":863,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 13 | coordinate | `{"box":863,"direction":"hi","value":"15761/31250","variable":"b"}` | `15761/31250 + -1 * b` |
| 14 | coordinate | `{"box":863,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 15 | coordinate | `{"box":863,"direction":"hi","value":"857427/1000000","variable":"w"}` | `857427/1000000 + -1 * w` |
| 16 | coordinate | `{"box":863,"direction":"hi","value":"876603/1000000","variable":"j"}` | `876603/1000000 + -1 * j` |
| 17 | coordinate | `{"box":863,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 18 | coordinate | `{"box":863,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 19 | coordinate | `{"box":863,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 20 | coordinate | `{"box":863,"direction":"hi","value":"58493/100000","variable":"f"}` | `58493/100000 + -1 * f` |
| 21 | coordinate | `{"box":863,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 22 | coordinate | `{"box":863,"direction":"hi","value":"266259/500000","variable":"q"}` | `266259/500000 + -1 * q` |
| 23 | coordinate | `{"box":863,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 24 | coordinate | `{"box":863,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 25 | coordinate | `{"box":863,"direction":"lo","value":"13857/20000","variable":"j"}` | `-13857/20000 + 1 * j` |
| 26 | coordinate | `{"box":863,"direction":"lo","value":"638303/1000000","variable":"k"}` | `-638303/1000000 + 1 * k` |
| 27 | coordinate | `{"box":863,"direction":"lo","value":"141069/200000","variable":"c"}` | `-141069/200000 + 1 * c` |
| 28 | coordinate | `{"box":863,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 29 | coordinate | `{"box":863,"direction":"lo","value":"37559/125000","variable":"f"}` | `-37559/125000 + 1 * f` |
| 30 | coordinate | `{"box":863,"direction":"lo","value":"796617/1000000","variable":"h"}` | `-796617/1000000 + 1 * h` |
| 31 | coordinate | `{"box":863,"direction":"lo","value":"569629/1000000","variable":"p"}` | `-569629/1000000 + 1 * p` |
| 32 | coordinate | `{"box":863,"direction":"lo","value":"196767/1000000","variable":"q"}` | `-196767/1000000 + 1 * q` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 39168750000000000 | 2 |
| 1 | 99968750000000000 | 7 |
| 2 | 618881250000000000 | 8 |
| 3 | 52787500000000000 | 0 |
| 4 | 113900000000000000 | 9 |
| 5 | 230381250000000000 | 11 |
| 6 | 99968750000000000 | 1 |
| 7 | 211218750000000000 | 3 |
| 8 | 76018750000000000 | 4 |
| 9 | 41412500000000000 | 5 |
| 10 | 39168750000000000 | 6 |
| 11 | 2587500000000000 | 10 |
| 12 | 39168750000000000 | 13, 23 |
| 13 | 24318750000000000 | 19, 24 |
| 14 | 14850000000000000 | 13, 28 |
| 15 | 37937500000000000 | 20, 23 |
| 16 | 39168750000000000 | 13, 21 |
| 17 | 618881250000000000 | 13, 22 |
| 18 | 99968750000000000 | 12, 31 |
| 19 | 618881250000000000 | 13, 26 |
| 20 | 1231250000000000 | 16, 23 |
| 21 | 88356250000000000 | 18, 28 |
| 22 | 177587500000000000 | 21, 27 |
| 23 | 230381250000000000 | 18, 22 |
| 24 | 74731250000000000 | 15, 18 |
| 25 | 3551722974000000 | 19, 29 |
| 26 | 246781250000000000 | 14, 19 |
| 27 | 166543750000000000 | 16, 28 |
| 28 | 1962500000000000 | 19, 25 |
| 29 | 78331250000000000 | 20, 21 |
| 30 | 36850000000000000 | 15, 29 |
| 31 | 330350000000000000 | 30, 31 |
| 32 | 39168750000000000 | 21, 25 |
| 33 | 618881250000000000 | 26, 31 |
| 34 | 618881250000000000 | 16, 32 |
| 35 | 208900000000000000 | 14, 26 |
| 36 | 208900000000000000 | 15, 16 |
| 37 | 2085806250000 | 32 |
| 38 | 2304361931525 | 12 |
| 39 | 51414508193750000 | 21 |
| 40 | 6250000000000 | 18, 30 |
| 41 | 4978856250000 | 18 |
| 42 | 6250000000000 | 27, 28 |
| 43 | 3439531250000 | 27 |
| 44 | 9932481285900 | 28 |
| 45 | 26500000000 | 15 |
| 46 | 5438131250000 | 30 |
| 47 | 627490782906250000 | 31 |
| 48 | 3011617750000 | 17 |
| 49 | 7972974000000 | 25, 28 |
| 50 | 827331593058 | 25 |
| 51 | 27950000000 | 14 |
| 52 | 252887500000 | 26, 29 |
| 53 | 5292821565758 | 29 |
| 54 | 75985612900 | 26 |
| 55 | 5206968318475 | 16 |
| 56 | 2819195334000 | 20 |
| 57 | 1097912500000 | 13 |
| 58 | 6250000000000 | 29, 30 |
| 59 | 1470086500000 | 23, 29 |
| 60 | 441719830828 | 23 |
| 61 | 1470086500000 | 12, 25 |
| 62 | 7773242943728 | 19 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -43232701981837197412651/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -43232701981837197412651/1000000 | 1 | -43232701981837197412651/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 863 | -43232701981837197412651/1000000 |

## Stage 864

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS-/BFP-/BPQ+/APR+/FPQ-/BPS-/AFQ- |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS-/BFP-/BPQ+/APR+/FPQ-/BPS-/AFQ-:HH |
| Index | 0 |
| Context | 99 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 842 |
| Coordinate cut | u high 1517/3125 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 15761/31250 | 103767/1000000 | 15761/31250 |
| c | 141069/200000 | 1 | 141069/200000 | 1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 224307/1000000 | 58493/100000 | 224307/1000000 | 58493/100000 |
| h | 796617/1000000 | 1 | 796617/1000000 | 1 |
| p | 61899/200000 | 710233/1000000 | 61899/200000 | 710233/1000000 |
| q | 196767/1000000 | 266259/500000 | 196767/1000000 | 266259/500000 |
| u | 1517/3125 | 309291/500000 | 1517/3125 | 309291/500000 |
| v | 382767/1000000 | 403307/500000 | 382767/1000000 | 403307/500000 |
| r | 176911/250000 | 1 | 176911/250000 | 1 |
| w | 209709/500000 | 857427/1000000 | 209709/500000 | 857427/1000000 |
| j | 13857/20000 | 876603/1000000 | 13857/20000 | 876603/1000000 |
| k | 638303/1000000 | 1 | 638303/1000000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"130:1383","triangle":"BQS","value":"315099/1000000"}` | `-1 * u * k + 1 * b * k + 1 * v * j + -1 * b * v + -315099/1000000` |
| 1 | bound | `{"direction":"lo","ref":"130:1532","triangle":"HRS","value":"20827/200000"}` | `1 * r * k + -1 * h * r + -1 * w * j + 1 * h * j + -20827/200000` |
| 2 | physical | `{"factor":110,"stage":130}` | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -93/1000` |
| 3 | physical | `{"factor":118,"stage":130}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 4 | coordinate | `{"box":864,"direction":"hi","value":"15761/31250","variable":"b"}` | `15761/31250 + -1 * b` |
| 5 | coordinate | `{"box":864,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 6 | coordinate | `{"box":864,"direction":"hi","value":"857427/1000000","variable":"w"}` | `857427/1000000 + -1 * w` |
| 7 | coordinate | `{"box":864,"direction":"hi","value":"876603/1000000","variable":"j"}` | `876603/1000000 + -1 * j` |
| 8 | coordinate | `{"box":864,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 9 | coordinate | `{"box":864,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 10 | coordinate | `{"box":864,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 11 | coordinate | `{"box":864,"direction":"hi","value":"403307/500000","variable":"v"}` | `403307/500000 + -1 * v` |
| 12 | coordinate | `{"box":864,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 13 | coordinate | `{"box":864,"direction":"lo","value":"209709/500000","variable":"w"}` | `-209709/500000 + 1 * w` |
| 14 | coordinate | `{"box":864,"direction":"lo","value":"13857/20000","variable":"j"}` | `-13857/20000 + 1 * j` |
| 15 | coordinate | `{"box":864,"direction":"lo","value":"638303/1000000","variable":"k"}` | `-638303/1000000 + 1 * k` |
| 16 | coordinate | `{"box":864,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 17 | coordinate | `{"box":864,"direction":"lo","value":"796617/1000000","variable":"h"}` | `-796617/1000000 + 1 * h` |
| 18 | coordinate | `{"box":864,"direction":"lo","value":"1517/3125","variable":"u"}` | `-1517/3125 + 1 * u` |
| 19 | coordinate | `{"box":864,"direction":"lo","value":"382767/1000000","variable":"v"}` | `-382767/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 94267000000 | 0 |
| 1 | 39956000000 | 2 |
| 2 | 71671000000 | 3 |
| 3 | 10089000000 | 1 |
| 4 | 12144000000 | 12, 19 |
| 5 | 82124000000 | 4, 11 |
| 6 | 29636000000 | 8, 12 |
| 7 | 64631000000 | 4, 15 |
| 8 | 39956000000 | 9, 18 |
| 9 | 71671000000 | 5, 9 |
| 10 | 14245000000 | 7, 16 |
| 11 | 57426000000 | 9, 14 |
| 12 | 39956000000 | 17, 18 |
| 13 | 10089000000 | 5, 10 |
| 14 | 10089000000 | 10, 14 |
| 15 | 94267000000 | 15, 18 |
| 16 | 94267000000 | 7, 19 |
| 17 | 81760000000 | 5, 15 |
| 18 | 81759000000 | 6, 7 |
| 19 | 1000000 | 4, 19 |
| 20 | 382767 | 4 |
| 21 | 504352 | 11 |
| 22 | 815095 | 19 |
| 23 | 17460923010 | 10 |
| 24 | 14075292280 | 5 |
| 25 | 1000000 | 8 |
| 26 | 959556 | 15 |
| 27 | 1000000 | 13, 14 |
| 28 | 692850 | 13 |
| 29 | 419418 | 14 |
| 30 | 815323 | 6 |
| 31 | 692850 | 9 |
| 32 | 649611 | 7 |
| 33 | 529391 | 12 |
| 34 | 638375 | 16 |
| 35 | 76377741753 | 18 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -3841826471406777/500000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -3841826471406777/500000 | 1 | -3841826471406777/500000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 864 | -3841826471406777/500000 |
