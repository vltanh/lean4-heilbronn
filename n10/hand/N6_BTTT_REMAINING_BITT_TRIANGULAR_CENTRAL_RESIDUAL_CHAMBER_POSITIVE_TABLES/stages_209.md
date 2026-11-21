# BITT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 1045

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS+/AFQ-/EHQ-/BPS+/FPQ-/BFQ+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS+/AFQ-/EHQ-/BPS+/FPQ-/BFQ+:LLHHH |
| Index | 0 |
| Context | 214 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1043 |
| Coordinate cut | h high 710623/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 3311/31250 | 6143/20000 | 3311/31250 | 6143/20000 |
| b | 122321/1000000 | 482651/1000000 | 122321/1000000 | 482651/1000000 |
| c | 70001/100000 | 1 | 70001/100000 | 1 |
| e | 105961/1000000 | 406287/1000000 | 105961/1000000 | 406287/1000000 |
| f | 279/1000 | 632421/1000000 | 279/1000 | 632421/1000000 |
| h | 710623/1000000 | 1 | 710623/1000000 | 1 |
| p | 482939/1000000 | 44253/62500 | 482939/1000000 | 44253/62500 |
| q | 24869/125000 | 556319/1000000 | 24869/125000 | 556319/1000000 |
| u | 47263/250000 | 539307/1000000 | 47263/250000 | 539307/1000000 |
| v | 221817/500000 | 47619/62500 | 221817/500000 | 47619/62500 |
| r | 167529/250000 | 1 | 167529/250000 | 1 |
| w | 399401/500000 | 1 | 399401/500000 | 1 |
| j | 487653/1000000 | 33643/40000 | 487653/1000000 | 33643/40000 |
| k | 573989/1000000 | 435129/500000 | 573989/1000000 | 435129/500000 |

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
| 0 | bound | `{"direction":"lo","ref":"428:2251","triangle":"BCP","value":"64009/500000"}` | `1 * c * q + -1 * b * q + -64009/500000` |
| 1 | bound | `{"direction":"lo","ref":"428:2586","triangle":"FRS","value":"50519/500000"}` | `-1 * r * k + 1 * r + 1 * f * k + 1 * w * j + -1 * f * w + -1 * j + -50519/500000` |
| 2 | physical | `{"factor":108,"stage":428}` | `-1/1 * f * k + 1/1 * e * f + 1/1 * k + 1/1 * j + -1093/1000 + -1/1 * e * j` |
| 3 | physical | `{"factor":110,"stage":428}` | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 4 | physical | `{"factor":121,"stage":428}` | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 5 | physical | `{"factor":135,"stage":428}` | `1/1 * r * k + -1/1 * q * r + -1/1 * p * k + -1/1 * w * j + 1/1 * p * w + 1/1 * q * j + -93/1000` |
| 6 | physical | `{"factor":138,"stage":428}` | `1/1 * e + -1/1 * a` |
| 7 | physical | `{"factor":28,"stage":428}` | `1/1 * q + -1/1 * a + -1/1 * e * p + 1/1 * a * p + -93/1000` |
| 8 | physical | `{"factor":36,"stage":428}` | `-1/1 * f * v + 1/1 * a * f + 1/1 * u + -1/1 * a * u + -93/1000` |
| 9 | physical | `{"factor":48,"stage":428}` | `-1/1 * r * k + 1/1 * a * r + 1/1 * w * j + -1/1 * a * j + -93/1000` |
| 10 | physical | `{"factor":68,"stage":428}` | `1/1 * f * v + -1/1 * b * v + -1/1 * u + 1/1 * b + -93/1000` |
| 11 | physical | `{"factor":76,"stage":428}` | `1/1 * p * k + -1/1 * b * k + -1/1 * q * j + 1/1 * b * q + -93/1000` |
| 12 | physical | `{"factor":79,"stage":428}` | `1/1 * r * k + -1/1 * b * k + -1/1 * w * j + 1/1 * b * w + -93/1000` |
| 13 | physical | `{"factor":85,"stage":428}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 14 | physical | `{"factor":92,"stage":428}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 15 | coordinate | `{"box":1045,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 16 | coordinate | `{"box":1045,"direction":"hi","value":"482651/1000000","variable":"b"}` | `482651/1000000 + -1 * b` |
| 17 | coordinate | `{"box":1045,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 18 | coordinate | `{"box":1045,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 19 | coordinate | `{"box":1045,"direction":"hi","value":"33643/40000","variable":"j"}` | `33643/40000 + -1 * j` |
| 20 | coordinate | `{"box":1045,"direction":"hi","value":"435129/500000","variable":"k"}` | `435129/500000 + -1 * k` |
| 21 | coordinate | `{"box":1045,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 22 | coordinate | `{"box":1045,"direction":"hi","value":"406287/1000000","variable":"e"}` | `406287/1000000 + -1 * e` |
| 23 | coordinate | `{"box":1045,"direction":"hi","value":"632421/1000000","variable":"f"}` | `632421/1000000 + -1 * f` |
| 24 | coordinate | `{"box":1045,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 25 | coordinate | `{"box":1045,"direction":"hi","value":"44253/62500","variable":"p"}` | `44253/62500 + -1 * p` |
| 26 | coordinate | `{"box":1045,"direction":"hi","value":"539307/1000000","variable":"u"}` | `539307/1000000 + -1 * u` |
| 27 | coordinate | `{"box":1045,"direction":"hi","value":"47619/62500","variable":"v"}` | `47619/62500 + -1 * v` |
| 28 | coordinate | `{"box":1045,"direction":"lo","value":"3311/31250","variable":"a"}` | `-3311/31250 + 1 * a` |
| 29 | coordinate | `{"box":1045,"direction":"lo","value":"122321/1000000","variable":"b"}` | `-122321/1000000 + 1 * b` |
| 30 | coordinate | `{"box":1045,"direction":"lo","value":"167529/250000","variable":"r"}` | `-167529/250000 + 1 * r` |
| 31 | coordinate | `{"box":1045,"direction":"lo","value":"487653/1000000","variable":"j"}` | `-487653/1000000 + 1 * j` |
| 32 | coordinate | `{"box":1045,"direction":"lo","value":"573989/1000000","variable":"k"}` | `-573989/1000000 + 1 * k` |
| 33 | coordinate | `{"box":1045,"direction":"lo","value":"70001/100000","variable":"c"}` | `-70001/100000 + 1 * c` |
| 34 | coordinate | `{"box":1045,"direction":"lo","value":"105961/1000000","variable":"e"}` | `-105961/1000000 + 1 * e` |
| 35 | coordinate | `{"box":1045,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 36 | coordinate | `{"box":1045,"direction":"lo","value":"710623/1000000","variable":"h"}` | `-710623/1000000 + 1 * h` |
| 37 | coordinate | `{"box":1045,"direction":"lo","value":"482939/1000000","variable":"p"}` | `-482939/1000000 + 1 * p` |
| 38 | coordinate | `{"box":1045,"direction":"lo","value":"24869/125000","variable":"q"}` | `-24869/125000 + 1 * q` |
| 39 | coordinate | `{"box":1045,"direction":"lo","value":"47263/250000","variable":"u"}` | `-47263/250000 + 1 * u` |
| 40 | coordinate | `{"box":1045,"direction":"lo","value":"221817/500000","variable":"v"}` | `-221817/500000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 23774000000 | 7 |
| 1 | 52307000000 | 8 |
| 2 | 18748000000 | 9 |
| 3 | 20049000000 | 0 |
| 4 | 67500000000 | 10 |
| 5 | 20049000000 | 11 |
| 6 | 10610000000 | 12 |
| 7 | 24389000000 | 13 |
| 8 | 34819000000 | 14 |
| 9 | 19764000000 | 2 |
| 10 | 28340000000 | 3 |
| 11 | 1611000000 | 4 |
| 12 | 11911000000 | 1 |
| 13 | 20049000000 | 5 |
| 14 | 13978000000 | 6 |
| 15 | 52307000000 | 23, 28 |
| 16 | 443000000 | 25, 28 |
| 17 | 23331000000 | 15, 37 |
| 18 | 67500000000 | 16, 27 |
| 19 | 52307000000 | 28, 39 |
| 20 | 10610000000 | 18, 29 |
| 21 | 18748000000 | 17, 28 |
| 22 | 30660000000 | 16, 20 |
| 23 | 18748000000 | 15, 19 |
| 24 | 24389000000 | 21, 34 |
| 25 | 34819000000 | 21, 36 |
| 26 | 14770000000 | 33, 38 |
| 27 | 24389000000 | 18, 21 |
| 28 | 19764000000 | 23, 34 |
| 29 | 23774000000 | 34, 37 |
| 30 | 28340000000 | 34, 39 |
| 31 | 24389000000 | 17, 22 |
| 32 | 19764000000 | 31, 34 |
| 33 | 1611000000 | 23, 36 |
| 34 | 15192000000 | 27, 35 |
| 35 | 13522000000 | 18, 23 |
| 36 | 7853000000 | 20, 23 |
| 37 | 34819000000 | 36, 37 |
| 38 | 15906000000 | 26, 36 |
| 39 | 12435000000 | 24, 39 |
| 40 | 1611000000 | 17, 24 |
| 41 | 20049000000 | 18, 37 |
| 42 | 20049000000 | 30, 38 |
| 43 | 303384 | 38 |
| 44 | 56744 | 28 |
| 45 | 1000000 | 23, 40 |
| 46 | 443634 | 23 |
| 47 | 632421 | 27 |
| 48 | 203434 | 26 |
| 49 | 630280 | 29 |
| 50 | 1000000 | 16, 32 |
| 51 | 573989 | 16 |
| 52 | 482651 | 20 |
| 53 | 2428673059 | 18 |
| 54 | 481773 | 32 |
| 55 | 338596 | 19 |
| 56 | 374500 | 40 |
| 57 | 1000000 | 36, 39 |
| 58 | 189052 | 36 |
| 59 | 710623 | 39 |
| 60 | 455952 | 24 |
| 61 | 334195 | 30 |
| 62 | 69286 | 22 |
| 63 | 232385 | 35 |
| 64 | 245665 | 37 |
| 65 | 55974 | 33 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -51496020591659/250000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -51496020591659/250000 | 1 | -51496020591659/250000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1045 | -51496020591659/250000 |

## Stage 1046

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS+/AFQ-/EHQ-/BPS+/FPQ-/BFQ+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS+/AFQ-/EHQ-/BPS+/FPQ-/BFQ+:LH |
| Index | 0 |
| Context | 214 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1038 |
| Coordinate cut | v high 47619/62500 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 3311/31250 | 6143/20000 | 3311/31250 | 6143/20000 |
| b | 122321/1000000 | 482651/1000000 | 122321/1000000 | 482651/1000000 |
| c | 70001/100000 | 1 | 70001/100000 | 1 |
| e | 105961/1000000 | 406287/1000000 | 105961/1000000 | 406287/1000000 |
| f | 279/1000 | 632421/1000000 | 279/1000 | 632421/1000000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 351087/1000000 | 44253/62500 | 351087/1000000 | 44253/62500 |
| q | 24869/125000 | 556319/1000000 | 24869/125000 | 556319/1000000 |
| u | 47263/250000 | 539307/1000000 | 47263/250000 | 539307/1000000 |
| v | 47619/62500 | 907/1000 | 47619/62500 | 907/1000 |
| r | 167529/250000 | 1 | 167529/250000 | 1 |
| w | 399401/500000 | 1 | 399401/500000 | 1 |
| j | 487653/1000000 | 33643/40000 | 487653/1000000 | 33643/40000 |
| k | 216007/500000 | 435129/500000 | 216007/500000 | 435129/500000 |

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
| 0 | bound | `{"direction":"lo","ref":"428:2251","triangle":"BCP","value":"64009/500000"}` | `1 * c * q + -1 * b * q + -64009/500000` |
| 1 | bound | `{"direction":"lo","ref":"428:2353","triangle":"EPS","value":"18531/125000"}` | `-1 * p * k + 1 * e * p + 1 * k + 1 * q * j + -1 * q + -1 * e * j + -18531/125000` |
| 2 | bound | `{"direction":"lo","ref":"428:2586","triangle":"FRS","value":"50519/500000"}` | `-1 * r * k + 1 * r + 1 * f * k + 1 * w * j + -1 * f * w + -1 * j + -50519/500000` |
| 3 | physical | `{"factor":108,"stage":428}` | `-1/1 * f * k + 1/1 * e * f + 1/1 * k + 1/1 * j + -1093/1000 + -1/1 * e * j` |
| 4 | physical | `{"factor":121,"stage":428}` | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 5 | physical | `{"factor":135,"stage":428}` | `1/1 * r * k + -1/1 * q * r + -1/1 * p * k + -1/1 * w * j + 1/1 * p * w + 1/1 * q * j + -93/1000` |
| 6 | physical | `{"factor":138,"stage":428}` | `1/1 * e + -1/1 * a` |
| 7 | physical | `{"factor":140,"stage":428}` | `1/1 * f + -1/1 * b` |
| 8 | physical | `{"factor":28,"stage":428}` | `1/1 * q + -1/1 * a + -1/1 * e * p + 1/1 * a * p + -93/1000` |
| 9 | physical | `{"factor":36,"stage":428}` | `-1/1 * f * v + 1/1 * a * f + 1/1 * u + -1/1 * a * u + -93/1000` |
| 10 | physical | `{"factor":48,"stage":428}` | `-1/1 * r * k + 1/1 * a * r + 1/1 * w * j + -1/1 * a * j + -93/1000` |
| 11 | physical | `{"factor":68,"stage":428}` | `1/1 * f * v + -1/1 * b * v + -1/1 * u + 1/1 * b + -93/1000` |
| 12 | physical | `{"factor":76,"stage":428}` | `1/1 * p * k + -1/1 * b * k + -1/1 * q * j + 1/1 * b * q + -93/1000` |
| 13 | physical | `{"factor":85,"stage":428}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 14 | physical | `{"factor":92,"stage":428}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 15 | coordinate | `{"box":1046,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 16 | coordinate | `{"box":1046,"direction":"hi","value":"482651/1000000","variable":"b"}` | `482651/1000000 + -1 * b` |
| 17 | coordinate | `{"box":1046,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 18 | coordinate | `{"box":1046,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 19 | coordinate | `{"box":1046,"direction":"hi","value":"33643/40000","variable":"j"}` | `33643/40000 + -1 * j` |
| 20 | coordinate | `{"box":1046,"direction":"hi","value":"435129/500000","variable":"k"}` | `435129/500000 + -1 * k` |
| 21 | coordinate | `{"box":1046,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 22 | coordinate | `{"box":1046,"direction":"hi","value":"406287/1000000","variable":"e"}` | `406287/1000000 + -1 * e` |
| 23 | coordinate | `{"box":1046,"direction":"hi","value":"632421/1000000","variable":"f"}` | `632421/1000000 + -1 * f` |
| 24 | coordinate | `{"box":1046,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 25 | coordinate | `{"box":1046,"direction":"hi","value":"44253/62500","variable":"p"}` | `44253/62500 + -1 * p` |
| 26 | coordinate | `{"box":1046,"direction":"hi","value":"539307/1000000","variable":"u"}` | `539307/1000000 + -1 * u` |
| 27 | coordinate | `{"box":1046,"direction":"lo","value":"3311/31250","variable":"a"}` | `-3311/31250 + 1 * a` |
| 28 | coordinate | `{"box":1046,"direction":"lo","value":"122321/1000000","variable":"b"}` | `-122321/1000000 + 1 * b` |
| 29 | coordinate | `{"box":1046,"direction":"lo","value":"167529/250000","variable":"r"}` | `-167529/250000 + 1 * r` |
| 30 | coordinate | `{"box":1046,"direction":"lo","value":"399401/500000","variable":"w"}` | `-399401/500000 + 1 * w` |
| 31 | coordinate | `{"box":1046,"direction":"lo","value":"487653/1000000","variable":"j"}` | `-487653/1000000 + 1 * j` |
| 32 | coordinate | `{"box":1046,"direction":"lo","value":"105961/1000000","variable":"e"}` | `-105961/1000000 + 1 * e` |
| 33 | coordinate | `{"box":1046,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 34 | coordinate | `{"box":1046,"direction":"lo","value":"135501/250000","variable":"h"}` | `-135501/250000 + 1 * h` |
| 35 | coordinate | `{"box":1046,"direction":"lo","value":"351087/1000000","variable":"p"}` | `-351087/1000000 + 1 * p` |
| 36 | coordinate | `{"box":1046,"direction":"lo","value":"24869/125000","variable":"q"}` | `-24869/125000 + 1 * q` |
| 37 | coordinate | `{"box":1046,"direction":"lo","value":"47263/250000","variable":"u"}` | `-47263/250000 + 1 * u` |
| 38 | coordinate | `{"box":1046,"direction":"lo","value":"47619/62500","variable":"v"}` | `-47619/62500 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 5896000000 | 8 |
| 1 | 170781000000 | 9 |
| 2 | 6274000000 | 10 |
| 3 | 7602000000 | 0 |
| 4 | 118326000000 | 11 |
| 5 | 10261000000 | 12 |
| 6 | 4608000000 | 13 |
| 7 | 7602000000 | 14 |
| 8 | 5694000000 | 3 |
| 9 | 921000000 | 1 |
| 10 | 3078000000 | 4 |
| 11 | 3066000000 | 2 |
| 12 | 9340000000 | 5 |
| 13 | 3148000000 | 6 |
| 14 | 19772000000 | 7 |
| 15 | 136742000000 | 23, 27 |
| 16 | 34039000000 | 15, 33 |
| 17 | 2659000000 | 16, 36 |
| 18 | 5896000000 | 25, 27 |
| 19 | 118326000000 | 28, 38 |
| 20 | 170781000000 | 15, 26 |
| 21 | 6274000000 | 17, 27 |
| 22 | 10261000000 | 16, 20 |
| 23 | 6274000000 | 15, 19 |
| 24 | 4608000000 | 21, 32 |
| 25 | 7602000000 | 21, 34 |
| 26 | 4608000000 | 18, 21 |
| 27 | 5694000000 | 23, 32 |
| 28 | 4976000000 | 22, 25 |
| 29 | 4608000000 | 17, 22 |
| 30 | 6615000000 | 31, 32 |
| 31 | 3078000000 | 24, 33 |
| 32 | 52455000000 | 33, 38 |
| 33 | 6144000000 | 18, 23 |
| 34 | 2628000000 | 20, 23 |
| 35 | 7602000000 | 24, 25 |
| 36 | 3078000000 | 17, 24 |
| 37 | 7642000000 | 18, 35 |
| 38 | 1699000000 | 25, 30 |
| 39 | 9340000000 | 29, 36 |
| 40 | 514431 | 36 |
| 41 | 248927 | 27 |
| 42 | 1000000 | 22, 35 |
| 43 | 772471 | 22 |
| 44 | 579765 | 25 |
| 45 | 384150 | 37 |
| 46 | 243326 | 16 |
| 47 | 385782 | 18 |
| 48 | 515701 | 20 |
| 49 | 114846 | 19 |
| 50 | 487653 | 32 |
| 51 | 105961 | 31 |
| 52 | 360672 | 17 |
| 53 | 1000000 | 30, 35 |
| 54 | 798802 | 35 |
| 55 | 351087 | 30 |
| 56 | 203176 | 33 |
| 57 | 29108699646 | 38 |
| 58 | 582696 | 21 |
| 59 | 181104 | 24 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -4327667419027017/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -4327667419027017/1000000 | 1 | -4327667419027017/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1046 | -4327667419027017/1000000 |

## Stage 1047

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS+/AFQ-/EHQ-/BPS+/FPQ-/BFQ+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS+/AFQ-/EHQ-/BPS+/FPQ-/BFQ+:H |
| Index | 0 |
| Context | 214 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1037 |
| Coordinate cut | b high 482651/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 3311/31250 | 6143/20000 | 3311/31250 | 6143/20000 |
| b | 482651/1000000 | 631147/1000000 | 482651/1000000 | 631147/1000000 |
| c | 70001/100000 | 1 | 70001/100000 | 1 |
| e | 105961/1000000 | 406287/1000000 | 105961/1000000 | 406287/1000000 |
| f | 279/1000 | 632421/1000000 | 279/1000 | 632421/1000000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 351087/1000000 | 44253/62500 | 351087/1000000 | 44253/62500 |
| q | 24869/125000 | 556319/1000000 | 24869/125000 | 556319/1000000 |
| u | 47263/250000 | 539307/1000000 | 47263/250000 | 539307/1000000 |
| v | 221817/500000 | 907/1000 | 221817/500000 | 907/1000 |
| r | 167529/250000 | 1 | 167529/250000 | 1 |
| w | 399401/500000 | 1 | 399401/500000 | 1 |
| j | 487653/1000000 | 33643/40000 | 487653/1000000 | 33643/40000 |
| k | 216007/500000 | 435129/500000 | 216007/500000 | 435129/500000 |

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
| 0 | bound | `{"direction":"lo","ref":"428:2251","triangle":"BCP","value":"64009/500000"}` | `1 * c * q + -1 * b * q + -64009/500000` |
| 1 | bound | `{"direction":"lo","ref":"428:2353","triangle":"EPS","value":"18531/125000"}` | `-1 * p * k + 1 * e * p + 1 * k + 1 * q * j + -1 * q + -1 * e * j + -18531/125000` |
| 2 | bound | `{"direction":"lo","ref":"428:2586","triangle":"FRS","value":"50519/500000"}` | `-1 * r * k + 1 * r + 1 * f * k + 1 * w * j + -1 * f * w + -1 * j + -50519/500000` |
| 3 | physical | `{"factor":108,"stage":428}` | `-1/1 * f * k + 1/1 * e * f + 1/1 * k + 1/1 * j + -1093/1000 + -1/1 * e * j` |
| 4 | physical | `{"factor":121,"stage":428}` | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 5 | physical | `{"factor":135,"stage":428}` | `1/1 * r * k + -1/1 * q * r + -1/1 * p * k + -1/1 * w * j + 1/1 * p * w + 1/1 * q * j + -93/1000` |
| 6 | physical | `{"factor":138,"stage":428}` | `1/1 * e + -1/1 * a` |
| 7 | physical | `{"factor":140,"stage":428}` | `1/1 * f + -1/1 * b` |
| 8 | physical | `{"factor":28,"stage":428}` | `1/1 * q + -1/1 * a + -1/1 * e * p + 1/1 * a * p + -93/1000` |
| 9 | physical | `{"factor":48,"stage":428}` | `-1/1 * r * k + 1/1 * a * r + 1/1 * w * j + -1/1 * a * j + -93/1000` |
| 10 | physical | `{"factor":76,"stage":428}` | `1/1 * p * k + -1/1 * b * k + -1/1 * q * j + 1/1 * b * q + -93/1000` |
| 11 | physical | `{"factor":85,"stage":428}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 12 | physical | `{"factor":92,"stage":428}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 13 | coordinate | `{"box":1047,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 14 | coordinate | `{"box":1047,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 15 | coordinate | `{"box":1047,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 16 | coordinate | `{"box":1047,"direction":"hi","value":"33643/40000","variable":"j"}` | `33643/40000 + -1 * j` |
| 17 | coordinate | `{"box":1047,"direction":"hi","value":"435129/500000","variable":"k"}` | `435129/500000 + -1 * k` |
| 18 | coordinate | `{"box":1047,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 19 | coordinate | `{"box":1047,"direction":"hi","value":"406287/1000000","variable":"e"}` | `406287/1000000 + -1 * e` |
| 20 | coordinate | `{"box":1047,"direction":"hi","value":"632421/1000000","variable":"f"}` | `632421/1000000 + -1 * f` |
| 21 | coordinate | `{"box":1047,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 22 | coordinate | `{"box":1047,"direction":"hi","value":"44253/62500","variable":"p"}` | `44253/62500 + -1 * p` |
| 23 | coordinate | `{"box":1047,"direction":"hi","value":"556319/1000000","variable":"q"}` | `556319/1000000 + -1 * q` |
| 24 | coordinate | `{"box":1047,"direction":"lo","value":"3311/31250","variable":"a"}` | `-3311/31250 + 1 * a` |
| 25 | coordinate | `{"box":1047,"direction":"lo","value":"482651/1000000","variable":"b"}` | `-482651/1000000 + 1 * b` |
| 26 | coordinate | `{"box":1047,"direction":"lo","value":"167529/250000","variable":"r"}` | `-167529/250000 + 1 * r` |
| 27 | coordinate | `{"box":1047,"direction":"lo","value":"399401/500000","variable":"w"}` | `-399401/500000 + 1 * w` |
| 28 | coordinate | `{"box":1047,"direction":"lo","value":"487653/1000000","variable":"j"}` | `-487653/1000000 + 1 * j` |
| 29 | coordinate | `{"box":1047,"direction":"lo","value":"216007/500000","variable":"k"}` | `-216007/500000 + 1 * k` |
| 30 | coordinate | `{"box":1047,"direction":"lo","value":"105961/1000000","variable":"e"}` | `-105961/1000000 + 1 * e` |
| 31 | coordinate | `{"box":1047,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 32 | coordinate | `{"box":1047,"direction":"lo","value":"135501/250000","variable":"h"}` | `-135501/250000 + 1 * h` |
| 33 | coordinate | `{"box":1047,"direction":"lo","value":"351087/1000000","variable":"p"}` | `-351087/1000000 + 1 * p` |
| 34 | coordinate | `{"box":1047,"direction":"lo","value":"24869/125000","variable":"q"}` | `-24869/125000 + 1 * q` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 28831000000 | 8 |
| 1 | 37253000000 | 9 |
| 2 | 63352000000 | 0 |
| 3 | 63352000000 | 10 |
| 4 | 30941000000 | 11 |
| 5 | 43897000000 | 12 |
| 6 | 20601000000 | 3 |
| 7 | 17681000000 | 1 |
| 8 | 17775000000 | 4 |
| 9 | 8418000000 | 2 |
| 10 | 45671000000 | 5 |
| 11 | 3327000000 | 6 |
| 12 | 16838000000 | 7 |
| 13 | 28831000000 | 22, 24 |
| 14 | 37253000000 | 14, 24 |
| 15 | 63352000000 | 25, 29 |
| 16 | 16479000000 | 24, 28 |
| 17 | 20775000000 | 13, 16 |
| 18 | 30941000000 | 18, 30 |
| 19 | 43897000000 | 18, 32 |
| 20 | 19455000000 | 18, 34 |
| 21 | 30941000000 | 15, 18 |
| 22 | 20601000000 | 20, 30 |
| 23 | 11150000000 | 19, 22 |
| 24 | 30941000000 | 26, 30 |
| 25 | 38282000000 | 28, 30 |
| 26 | 17775000000 | 21, 31 |
| 27 | 26193000000 | 15, 20 |
| 28 | 12183000000 | 17, 20 |
| 29 | 43897000000 | 21, 22 |
| 30 | 17775000000 | 14, 21 |
| 31 | 44185000000 | 15, 33 |
| 32 | 1486000000 | 22, 27 |
| 33 | 45671000000 | 26, 34 |
| 34 | 132164 | 23 |
| 35 | 635024 | 24 |
| 36 | 1000000 | 13, 28 |
| 37 | 487653 | 13 |
| 38 | 307150 | 16 |
| 39 | 64830 | 27 |
| 40 | 308805 | 17 |
| 41 | 423260 | 28 |
| 42 | 153763 | 14 |
| 43 | 621481 | 30 |
| 44 | 549347 | 20 |
| 45 | 44206950928 | 25 |
| 46 | 378166 | 33 |
| 47 | 500049 | 18 |
| 48 | 41944 | 21 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -4109658098484679/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -4109658098484679/1000000 | 1 | -4109658098484679/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1047 | -4109658098484679/1000000 |

## Stage 1048

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS+/AFQ-/EHQ-/BPS+/FPQ-/BFQ- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS+/AFQ-/EHQ-/BPS+/FPQ-/BFQ-:root |
| Index | 0 |
| Context | 215 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 429 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 27061/250000 | 6143/20000 | 27061/250000 | 6143/20000 |
| b | 1689/15625 | 4279/15625 | 1689/15625 | 4279/15625 |
| c | 400473/500000 | 48291/50000 | 400473/500000 | 48291/50000 |
| e | 54157/500000 | 71351/200000 | 54157/500000 | 71351/200000 |
| f | 54157/500000 | 71547/200000 | 54157/500000 | 71547/200000 |
| h | 112237/200000 | 15126/15625 | 112237/200000 | 15126/15625 |
| p | 48387/125000 | 671639/1000000 | 48387/125000 | 671639/1000000 |
| q | 49683/250000 | 484089/1000000 | 49683/250000 | 484089/1000000 |
| u | 25137/125000 | 537519/1000000 | 25137/125000 | 537519/1000000 |
| v | 445939/1000000 | 904619/1000000 | 445939/1000000 | 904619/1000000 |
| r | 400473/500000 | 1 | 400473/500000 | 1 |
| w | 797369/1000000 | 1 | 797369/1000000 | 1 |
| j | 48387/125000 | 168131/200000 | 48387/125000 | 168131/200000 |
| k | 8501/20000 | 882539/1000000 | 8501/20000 | 882539/1000000 |

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


## Stage 1049

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS+/AFQ-/EHQ-/BPS+/FPQ-/BFQ- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS+/AFQ-/EHQ-/BPS+/FPQ-/BFQ-:L |
| Index | 0 |
| Context | 215 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1048 |
| Coordinate cut | k low 716789/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 27061/250000 | 6143/20000 | 27061/250000 | 6143/20000 |
| b | 1689/15625 | 4279/15625 | 1689/15625 | 4279/15625 |
| c | 400473/500000 | 48291/50000 | 400473/500000 | 48291/50000 |
| e | 54157/500000 | 71351/200000 | 54157/500000 | 71351/200000 |
| f | 54157/500000 | 71547/200000 | 54157/500000 | 71547/200000 |
| h | 112237/200000 | 15126/15625 | 112237/200000 | 15126/15625 |
| p | 48387/125000 | 671639/1000000 | 48387/125000 | 671639/1000000 |
| q | 49683/250000 | 484089/1000000 | 49683/250000 | 484089/1000000 |
| u | 25137/125000 | 537519/1000000 | 25137/125000 | 537519/1000000 |
| v | 445939/1000000 | 904619/1000000 | 445939/1000000 | 904619/1000000 |
| r | 400473/500000 | 1 | 400473/500000 | 1 |
| w | 797369/1000000 | 1 | 797369/1000000 | 1 |
| j | 48387/125000 | 168131/200000 | 48387/125000 | 168131/200000 |
| k | 8501/20000 | 716789/1000000 | 8501/20000 | 716789/1000000 |

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
| 0 | physical | `{"factor":109,"stage":429}` | `-1/1 * f * k + 1/1 * e * f + 1/1 * k + 1/1 * j + -1093/1000 + -1/1 * e * j` |
| 1 | physical | `{"factor":139,"stage":429}` | `1/1 * e + -1/1 * a` |
| 2 | physical | `{"factor":141,"stage":429}` | `1/1 * f + -1/1 * b` |
| 3 | physical | `{"factor":143,"stage":429}` | `1/1 * f + -1/1 * e` |
| 4 | physical | `{"factor":47,"stage":429}` | `-1/1 * r * k + 1/1 * a * r + 1/1 * w * j + -1/1 * a * j + -93/1000` |
| 5 | physical | `{"factor":49,"stage":429}` | `1/1 * c + -1/1 * b + -13857/20000` |
| 6 | physical | `{"factor":80,"stage":429}` | `1/1 * r * k + -1/1 * b * k + -1/1 * w * j + 1/1 * b * w + -93/1000` |
| 7 | physical | `{"factor":86,"stage":429}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 8 | coordinate | `{"box":1049,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 9 | coordinate | `{"box":1049,"direction":"hi","value":"4279/15625","variable":"b"}` | `4279/15625 + -1 * b` |
| 10 | coordinate | `{"box":1049,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 11 | coordinate | `{"box":1049,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 12 | coordinate | `{"box":1049,"direction":"hi","value":"168131/200000","variable":"j"}` | `168131/200000 + -1 * j` |
| 13 | coordinate | `{"box":1049,"direction":"hi","value":"716789/1000000","variable":"k"}` | `716789/1000000 + -1 * k` |
| 14 | coordinate | `{"box":1049,"direction":"hi","value":"48291/50000","variable":"c"}` | `48291/50000 + -1 * c` |
| 15 | coordinate | `{"box":1049,"direction":"hi","value":"71351/200000","variable":"e"}` | `71351/200000 + -1 * e` |
| 16 | coordinate | `{"box":1049,"direction":"hi","value":"71547/200000","variable":"f"}` | `71547/200000 + -1 * f` |
| 17 | coordinate | `{"box":1049,"direction":"lo","value":"27061/250000","variable":"a"}` | `-27061/250000 + 1 * a` |
| 18 | coordinate | `{"box":1049,"direction":"lo","value":"1689/15625","variable":"b"}` | `-1689/15625 + 1 * b` |
| 19 | coordinate | `{"box":1049,"direction":"lo","value":"48387/125000","variable":"j"}` | `-48387/125000 + 1 * j` |
| 20 | coordinate | `{"box":1049,"direction":"lo","value":"8501/20000","variable":"k"}` | `-8501/20000 + 1 * k` |
| 21 | coordinate | `{"box":1049,"direction":"lo","value":"54157/500000","variable":"e"}` | `-54157/500000 + 1 * e` |
| 22 | coordinate | `{"box":1049,"direction":"lo","value":"54157/500000","variable":"f"}` | `-54157/500000 + 1 * f` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 21849000000 | 5 |
| 1 | 109729000000 | 4 |
| 2 | 113721000000 | 6 |
| 3 | 24503000000 | 7 |
| 4 | 42274000000 | 0 |
| 5 | 17485000000 | 1 |
| 6 | 10358000000 | 2 |
| 7 | 4862000000 | 3 |
| 8 | 113721000000 | 11, 18 |
| 9 | 109729000000 | 10, 17 |
| 10 | 113721000000 | 9, 13 |
| 11 | 109729000000 | 8, 12 |
| 12 | 24503000000 | 14, 21 |
| 13 | 24503000000 | 11, 14 |
| 14 | 42274000000 | 15, 22 |
| 15 | 24503000000 | 10, 15 |
| 16 | 42274000000 | 19, 21 |
| 17 | 42274000000 | 13, 16 |
| 18 | 3992000000 | 10, 20 |
| 19 | 3992000000 | 11, 12 |
| 20 | 17942 | 14 |
| 21 | 38131 | 9 |
| 22 | 9774402996 | 11 |
| 23 | 67566 | 20 |
| 24 | 128386 | 19 |
| 25 | 257192 | 15 |
| 26 | 232495 | 17 |
| 27 | 77316 | 22 |
| 28 | 4832737711 | 10 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -207183750122791/250000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -207183750122791/250000 | 1 | -207183750122791/250000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1049 | -207183750122791/250000 |
