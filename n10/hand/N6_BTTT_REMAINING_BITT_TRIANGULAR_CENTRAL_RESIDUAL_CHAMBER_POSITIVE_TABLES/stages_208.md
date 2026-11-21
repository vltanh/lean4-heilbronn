# BITT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 1040

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS+/AFQ-/EHQ-/BPS+/FPQ-/BFQ+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS+/AFQ-/EHQ-/BPS+/FPQ-/BFQ+:LLL |
| Index | 0 |
| Context | 214 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1039 |
| Coordinate cut | k low 573989/1000000 |

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
| v | 221817/500000 | 47619/62500 | 221817/500000 | 47619/62500 |
| r | 167529/250000 | 1 | 167529/250000 | 1 |
| w | 399401/500000 | 1 | 399401/500000 | 1 |
| j | 487653/1000000 | 33643/40000 | 487653/1000000 | 33643/40000 |
| k | 216007/500000 | 573989/1000000 | 216007/500000 | 573989/1000000 |

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
| 2 | physical | `{"factor":108,"stage":428}` | `-1/1 * f * k + 1/1 * e * f + 1/1 * k + 1/1 * j + -1093/1000 + -1/1 * e * j` |
| 3 | physical | `{"factor":138,"stage":428}` | `1/1 * e + -1/1 * a` |
| 4 | physical | `{"factor":140,"stage":428}` | `1/1 * f + -1/1 * b` |
| 5 | physical | `{"factor":48,"stage":428}` | `-1/1 * r * k + 1/1 * a * r + 1/1 * w * j + -1/1 * a * j + -93/1000` |
| 6 | physical | `{"factor":76,"stage":428}` | `1/1 * p * k + -1/1 * b * k + -1/1 * q * j + 1/1 * b * q + -93/1000` |
| 7 | physical | `{"factor":79,"stage":428}` | `1/1 * r * k + -1/1 * b * k + -1/1 * w * j + 1/1 * b * w + -93/1000` |
| 8 | physical | `{"factor":83,"stage":428}` | `1/1 * q + -1/1 * c * q + -1/1 * e * p + 1/1 * c * e + -93/1000` |
| 9 | physical | `{"factor":85,"stage":428}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 10 | coordinate | `{"box":1040,"direction":"hi","value":"482651/1000000","variable":"b"}` | `482651/1000000 + -1 * b` |
| 11 | coordinate | `{"box":1040,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 12 | coordinate | `{"box":1040,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 13 | coordinate | `{"box":1040,"direction":"hi","value":"33643/40000","variable":"j"}` | `33643/40000 + -1 * j` |
| 14 | coordinate | `{"box":1040,"direction":"hi","value":"573989/1000000","variable":"k"}` | `573989/1000000 + -1 * k` |
| 15 | coordinate | `{"box":1040,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 16 | coordinate | `{"box":1040,"direction":"hi","value":"406287/1000000","variable":"e"}` | `406287/1000000 + -1 * e` |
| 17 | coordinate | `{"box":1040,"direction":"hi","value":"632421/1000000","variable":"f"}` | `632421/1000000 + -1 * f` |
| 18 | coordinate | `{"box":1040,"direction":"lo","value":"3311/31250","variable":"a"}` | `-3311/31250 + 1 * a` |
| 19 | coordinate | `{"box":1040,"direction":"lo","value":"122321/1000000","variable":"b"}` | `-122321/1000000 + 1 * b` |
| 20 | coordinate | `{"box":1040,"direction":"lo","value":"399401/500000","variable":"w"}` | `-399401/500000 + 1 * w` |
| 21 | coordinate | `{"box":1040,"direction":"lo","value":"487653/1000000","variable":"j"}` | `-487653/1000000 + 1 * j` |
| 22 | coordinate | `{"box":1040,"direction":"lo","value":"216007/500000","variable":"k"}` | `-216007/500000 + 1 * k` |
| 23 | coordinate | `{"box":1040,"direction":"lo","value":"70001/100000","variable":"c"}` | `-70001/100000 + 1 * c` |
| 24 | coordinate | `{"box":1040,"direction":"lo","value":"105961/1000000","variable":"e"}` | `-105961/1000000 + 1 * e` |
| 25 | coordinate | `{"box":1040,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 20150000000 | 5 |
| 1 | 16579000000 | 0 |
| 2 | 16579000000 | 6 |
| 3 | 109605000000 | 7 |
| 4 | 16579000000 | 8 |
| 5 | 1965000000 | 9 |
| 6 | 90187000000 | 2 |
| 7 | 16579000000 | 1 |
| 8 | 10324000000 | 3 |
| 9 | 15125000000 | 4 |
| 10 | 109605000000 | 10, 20 |
| 11 | 20150000000 | 11, 18 |
| 12 | 126184000000 | 10, 14 |
| 13 | 20150000000 | 18, 21 |
| 14 | 18544000000 | 15, 24 |
| 15 | 1965000000 | 12, 15 |
| 16 | 90187000000 | 16, 25 |
| 17 | 1965000000 | 11, 16 |
| 18 | 106766000000 | 21, 24 |
| 19 | 90187000000 | 14, 17 |
| 20 | 89455000000 | 11, 22 |
| 21 | 63204000000 | 20, 21 |
| 22 | 26251000000 | 12, 13 |
| 23 | 39982391215 | 11 |
| 24 | 78282013489 | 14 |
| 25 | 282818 | 12 |
| 26 | 553466 | 13 |
| 27 | 412802 | 16 |
| 28 | 207950 | 18 |
| 29 | 459726 | 17 |
| 30 | 534766 | 19 |
| 31 | 59216 | 23 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -1270378231062421/250000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -1270378231062421/250000 | 1 | -1270378231062421/250000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1040 | -1270378231062421/250000 |

## Stage 1041

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS+/AFQ-/EHQ-/BPS+/FPQ-/BFQ+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS+/AFQ-/EHQ-/BPS+/FPQ-/BFQ+:LLH |
| Index | 0 |
| Context | 214 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1039 |
| Coordinate cut | k high 573989/1000000 |

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


## Stage 1042

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS+/AFQ-/EHQ-/BPS+/FPQ-/BFQ+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS+/AFQ-/EHQ-/BPS+/FPQ-/BFQ+:LLHL |
| Index | 0 |
| Context | 214 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1041 |
| Coordinate cut | p low 482939/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 3311/31250 | 6143/20000 | 3311/31250 | 6143/20000 |
| b | 122321/1000000 | 482651/1000000 | 122321/1000000 | 482651/1000000 |
| c | 70001/100000 | 1 | 70001/100000 | 1 |
| e | 105961/1000000 | 406287/1000000 | 105961/1000000 | 406287/1000000 |
| f | 279/1000 | 632421/1000000 | 279/1000 | 632421/1000000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 351087/1000000 | 482939/1000000 | 351087/1000000 | 482939/1000000 |
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
| 0 | bound | `{"direction":"lo","ref":"428:2433","triangle":"PQR","value":"80957/250000"}` | `-1 * u * w + 1 * q * u + 1 * p * w + 1 * v * r + -1 * p * v + -1 * q * r + -80957/250000` |
| 1 | bound | `{"direction":"lo","ref":"428:2586","triangle":"FRS","value":"50519/500000"}` | `-1 * r * k + 1 * r + 1 * f * k + 1 * w * j + -1 * f * w + -1 * j + -50519/500000` |
| 2 | bound | `{"direction":"lo","ref":"428:2611","triangle":"APQ","value":"140769/1000000"}` | `1 * p * v + -1 * a * p + -1 * q * u + 1 * a * u + -140769/1000000` |
| 3 | physical | `{"factor":108,"stage":428}` | `-1/1 * f * k + 1/1 * e * f + 1/1 * k + 1/1 * j + -1093/1000 + -1/1 * e * j` |
| 4 | physical | `{"factor":110,"stage":428}` | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 5 | physical | `{"factor":135,"stage":428}` | `1/1 * r * k + -1/1 * q * r + -1/1 * p * k + -1/1 * w * j + 1/1 * p * w + 1/1 * q * j + -93/1000` |
| 6 | physical | `{"factor":138,"stage":428}` | `1/1 * e + -1/1 * a` |
| 7 | physical | `{"factor":28,"stage":428}` | `1/1 * q + -1/1 * a + -1/1 * e * p + 1/1 * a * p + -93/1000` |
| 8 | physical | `{"factor":36,"stage":428}` | `-1/1 * f * v + 1/1 * a * f + 1/1 * u + -1/1 * a * u + -93/1000` |
| 9 | physical | `{"factor":48,"stage":428}` | `-1/1 * r * k + 1/1 * a * r + 1/1 * w * j + -1/1 * a * j + -93/1000` |
| 10 | physical | `{"factor":68,"stage":428}` | `1/1 * f * v + -1/1 * b * v + -1/1 * u + 1/1 * b + -93/1000` |
| 11 | physical | `{"factor":76,"stage":428}` | `1/1 * p * k + -1/1 * b * k + -1/1 * q * j + 1/1 * b * q + -93/1000` |
| 12 | physical | `{"factor":92,"stage":428}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 13 | coordinate | `{"box":1042,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 14 | coordinate | `{"box":1042,"direction":"hi","value":"482651/1000000","variable":"b"}` | `482651/1000000 + -1 * b` |
| 15 | coordinate | `{"box":1042,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 16 | coordinate | `{"box":1042,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 17 | coordinate | `{"box":1042,"direction":"hi","value":"33643/40000","variable":"j"}` | `33643/40000 + -1 * j` |
| 18 | coordinate | `{"box":1042,"direction":"hi","value":"435129/500000","variable":"k"}` | `435129/500000 + -1 * k` |
| 19 | coordinate | `{"box":1042,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 20 | coordinate | `{"box":1042,"direction":"hi","value":"406287/1000000","variable":"e"}` | `406287/1000000 + -1 * e` |
| 21 | coordinate | `{"box":1042,"direction":"hi","value":"632421/1000000","variable":"f"}` | `632421/1000000 + -1 * f` |
| 22 | coordinate | `{"box":1042,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 23 | coordinate | `{"box":1042,"direction":"hi","value":"482939/1000000","variable":"p"}` | `482939/1000000 + -1 * p` |
| 24 | coordinate | `{"box":1042,"direction":"hi","value":"556319/1000000","variable":"q"}` | `556319/1000000 + -1 * q` |
| 25 | coordinate | `{"box":1042,"direction":"hi","value":"539307/1000000","variable":"u"}` | `539307/1000000 + -1 * u` |
| 26 | coordinate | `{"box":1042,"direction":"hi","value":"47619/62500","variable":"v"}` | `47619/62500 + -1 * v` |
| 27 | coordinate | `{"box":1042,"direction":"lo","value":"3311/31250","variable":"a"}` | `-3311/31250 + 1 * a` |
| 28 | coordinate | `{"box":1042,"direction":"lo","value":"122321/1000000","variable":"b"}` | `-122321/1000000 + 1 * b` |
| 29 | coordinate | `{"box":1042,"direction":"lo","value":"167529/250000","variable":"r"}` | `-167529/250000 + 1 * r` |
| 30 | coordinate | `{"box":1042,"direction":"lo","value":"399401/500000","variable":"w"}` | `-399401/500000 + 1 * w` |
| 31 | coordinate | `{"box":1042,"direction":"lo","value":"487653/1000000","variable":"j"}` | `-487653/1000000 + 1 * j` |
| 32 | coordinate | `{"box":1042,"direction":"lo","value":"573989/1000000","variable":"k"}` | `-573989/1000000 + 1 * k` |
| 33 | coordinate | `{"box":1042,"direction":"lo","value":"70001/100000","variable":"c"}` | `-70001/100000 + 1 * c` |
| 34 | coordinate | `{"box":1042,"direction":"lo","value":"105961/1000000","variable":"e"}` | `-105961/1000000 + 1 * e` |
| 35 | coordinate | `{"box":1042,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 36 | coordinate | `{"box":1042,"direction":"lo","value":"135501/250000","variable":"h"}` | `-135501/250000 + 1 * h` |
| 37 | coordinate | `{"box":1042,"direction":"lo","value":"351087/1000000","variable":"p"}` | `-351087/1000000 + 1 * p` |
| 38 | coordinate | `{"box":1042,"direction":"lo","value":"24869/125000","variable":"q"}` | `-24869/125000 + 1 * q` |
| 39 | coordinate | `{"box":1042,"direction":"lo","value":"47263/250000","variable":"u"}` | `-47263/250000 + 1 * u` |
| 40 | coordinate | `{"box":1042,"direction":"lo","value":"221817/500000","variable":"v"}` | `-221817/500000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 21845000000 | 7 |
| 1 | 46797000000 | 8 |
| 2 | 107000000 | 2 |
| 3 | 66687000000 | 9 |
| 4 | 46797000000 | 10 |
| 5 | 69423000000 | 11 |
| 6 | 8866000000 | 12 |
| 7 | 18357000000 | 3 |
| 8 | 5653000000 | 4 |
| 9 | 2736000000 | 1 |
| 10 | 107000000 | 0 |
| 11 | 69423000000 | 5 |
| 12 | 8961000000 | 6 |
| 13 | 46797000000 | 13, 35 |
| 14 | 69423000000 | 14, 38 |
| 15 | 21738000000 | 23, 27 |
| 16 | 46797000000 | 28, 40 |
| 17 | 46690000000 | 27, 39 |
| 18 | 47054000000 | 15, 27 |
| 19 | 19633000000 | 13, 29 |
| 20 | 69423000000 | 28, 32 |
| 21 | 33831000000 | 27, 31 |
| 22 | 32856000000 | 13, 17 |
| 23 | 8866000000 | 19, 36 |
| 24 | 356000000 | 33, 38 |
| 25 | 8510000000 | 19, 24 |
| 26 | 18357000000 | 21, 34 |
| 27 | 21845000000 | 20, 23 |
| 28 | 5653000000 | 34, 39 |
| 29 | 18357000000 | 31, 34 |
| 30 | 2736000000 | 16, 21 |
| 31 | 39000000 | 32, 35 |
| 32 | 15582000000 | 18, 21 |
| 33 | 8866000000 | 22, 23 |
| 34 | 5653000000 | 22, 39 |
| 35 | 15438000000 | 16, 37 |
| 36 | 69530000000 | 29, 38 |
| 37 | 107000000 | 16, 25 |
| 38 | 107000000 | 26, 29 |
| 39 | 411343 | 24 |
| 40 | 108313 | 27 |
| 41 | 103587 | 25 |
| 42 | 66051 | 14 |
| 43 | 198952 | 33 |
| 44 | 700010 | 38 |
| 45 | 155805 | 32 |
| 46 | 308589 | 31 |
| 47 | 446575 | 26 |
| 48 | 26218 | 36 |
| 49 | 132526 | 15 |
| 50 | 54092000000 | 23, 30 |
| 51 | 43208797784 | 23 |
| 52 | 29755207789 | 16 |
| 53 | 7235 | 34 |
| 54 | 78900 | 21 |
| 55 | 154939 | 37 |
| 56 | 504814 | 19 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -2590984268285397/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -2590984268285397/1000000 | 1 | -2590984268285397/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1042 | -2590984268285397/1000000 |

## Stage 1043

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS+/AFQ-/EHQ-/BPS+/FPQ-/BFQ+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS+/AFQ-/EHQ-/BPS+/FPQ-/BFQ+:LLHH |
| Index | 0 |
| Context | 214 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1041 |
| Coordinate cut | p high 482939/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 3311/31250 | 6143/20000 | 3311/31250 | 6143/20000 |
| b | 122321/1000000 | 482651/1000000 | 122321/1000000 | 482651/1000000 |
| c | 70001/100000 | 1 | 70001/100000 | 1 |
| e | 105961/1000000 | 406287/1000000 | 105961/1000000 | 406287/1000000 |
| f | 279/1000 | 632421/1000000 | 279/1000 | 632421/1000000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
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


## Stage 1044

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS+/AFQ-/EHQ-/BPS+/FPQ-/BFQ+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS+/AFQ-/EHQ-/BPS+/FPQ-/BFQ+:LLHHL |
| Index | 0 |
| Context | 214 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1043 |
| Coordinate cut | h low 710623/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 3311/31250 | 6143/20000 | 3311/31250 | 6143/20000 |
| b | 122321/1000000 | 482651/1000000 | 122321/1000000 | 482651/1000000 |
| c | 70001/100000 | 1 | 70001/100000 | 1 |
| e | 105961/1000000 | 406287/1000000 | 105961/1000000 | 406287/1000000 |
| f | 279/1000 | 632421/1000000 | 279/1000 | 632421/1000000 |
| h | 135501/250000 | 710623/1000000 | 135501/250000 | 710623/1000000 |
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
| 1 | physical | `{"factor":108,"stage":428}` | `-1/1 * f * k + 1/1 * e * f + 1/1 * k + 1/1 * j + -1093/1000 + -1/1 * e * j` |
| 2 | physical | `{"factor":110,"stage":428}` | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 3 | physical | `{"factor":135,"stage":428}` | `1/1 * r * k + -1/1 * q * r + -1/1 * p * k + -1/1 * w * j + 1/1 * p * w + 1/1 * q * j + -93/1000` |
| 4 | physical | `{"factor":138,"stage":428}` | `1/1 * e + -1/1 * a` |
| 5 | physical | `{"factor":28,"stage":428}` | `1/1 * q + -1/1 * a + -1/1 * e * p + 1/1 * a * p + -93/1000` |
| 6 | physical | `{"factor":36,"stage":428}` | `-1/1 * f * v + 1/1 * a * f + 1/1 * u + -1/1 * a * u + -93/1000` |
| 7 | physical | `{"factor":48,"stage":428}` | `-1/1 * r * k + 1/1 * a * r + 1/1 * w * j + -1/1 * a * j + -93/1000` |
| 8 | physical | `{"factor":68,"stage":428}` | `1/1 * f * v + -1/1 * b * v + -1/1 * u + 1/1 * b + -93/1000` |
| 9 | physical | `{"factor":76,"stage":428}` | `1/1 * p * k + -1/1 * b * k + -1/1 * q * j + 1/1 * b * q + -93/1000` |
| 10 | physical | `{"factor":79,"stage":428}` | `1/1 * r * k + -1/1 * b * k + -1/1 * w * j + 1/1 * b * w + -93/1000` |
| 11 | physical | `{"factor":85,"stage":428}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 12 | physical | `{"factor":92,"stage":428}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 13 | coordinate | `{"box":1044,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 14 | coordinate | `{"box":1044,"direction":"hi","value":"482651/1000000","variable":"b"}` | `482651/1000000 + -1 * b` |
| 15 | coordinate | `{"box":1044,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 16 | coordinate | `{"box":1044,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 17 | coordinate | `{"box":1044,"direction":"hi","value":"33643/40000","variable":"j"}` | `33643/40000 + -1 * j` |
| 18 | coordinate | `{"box":1044,"direction":"hi","value":"435129/500000","variable":"k"}` | `435129/500000 + -1 * k` |
| 19 | coordinate | `{"box":1044,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 20 | coordinate | `{"box":1044,"direction":"hi","value":"406287/1000000","variable":"e"}` | `406287/1000000 + -1 * e` |
| 21 | coordinate | `{"box":1044,"direction":"hi","value":"632421/1000000","variable":"f"}` | `632421/1000000 + -1 * f` |
| 22 | coordinate | `{"box":1044,"direction":"hi","value":"710623/1000000","variable":"h"}` | `710623/1000000 + -1 * h` |
| 23 | coordinate | `{"box":1044,"direction":"hi","value":"44253/62500","variable":"p"}` | `44253/62500 + -1 * p` |
| 24 | coordinate | `{"box":1044,"direction":"hi","value":"556319/1000000","variable":"q"}` | `556319/1000000 + -1 * q` |
| 25 | coordinate | `{"box":1044,"direction":"hi","value":"539307/1000000","variable":"u"}` | `539307/1000000 + -1 * u` |
| 26 | coordinate | `{"box":1044,"direction":"hi","value":"47619/62500","variable":"v"}` | `47619/62500 + -1 * v` |
| 27 | coordinate | `{"box":1044,"direction":"lo","value":"3311/31250","variable":"a"}` | `-3311/31250 + 1 * a` |
| 28 | coordinate | `{"box":1044,"direction":"lo","value":"122321/1000000","variable":"b"}` | `-122321/1000000 + 1 * b` |
| 29 | coordinate | `{"box":1044,"direction":"lo","value":"167529/250000","variable":"r"}` | `-167529/250000 + 1 * r` |
| 30 | coordinate | `{"box":1044,"direction":"lo","value":"487653/1000000","variable":"j"}` | `-487653/1000000 + 1 * j` |
| 31 | coordinate | `{"box":1044,"direction":"lo","value":"573989/1000000","variable":"k"}` | `-573989/1000000 + 1 * k` |
| 32 | coordinate | `{"box":1044,"direction":"lo","value":"70001/100000","variable":"c"}` | `-70001/100000 + 1 * c` |
| 33 | coordinate | `{"box":1044,"direction":"lo","value":"105961/1000000","variable":"e"}` | `-105961/1000000 + 1 * e` |
| 34 | coordinate | `{"box":1044,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 35 | coordinate | `{"box":1044,"direction":"lo","value":"135501/250000","variable":"h"}` | `-135501/250000 + 1 * h` |
| 36 | coordinate | `{"box":1044,"direction":"lo","value":"482939/1000000","variable":"p"}` | `-482939/1000000 + 1 * p` |
| 37 | coordinate | `{"box":1044,"direction":"lo","value":"24869/125000","variable":"q"}` | `-24869/125000 + 1 * q` |
| 38 | coordinate | `{"box":1044,"direction":"lo","value":"47263/250000","variable":"u"}` | `-47263/250000 + 1 * u` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 38929000000 | 5 |
| 1 | 11690000000 | 6 |
| 2 | 55250000000 | 7 |
| 3 | 8174000000 | 0 |
| 4 | 14168000000 | 8 |
| 5 | 28136000000 | 9 |
| 6 | 31725000000 | 10 |
| 7 | 27397000000 | 11 |
| 8 | 50615000000 | 12 |
| 9 | 11706000000 | 1 |
| 10 | 6147000000 | 2 |
| 11 | 28136000000 | 3 |
| 12 | 9230000000 | 4 |
| 13 | 11690000000 | 13, 34 |
| 14 | 19963000000 | 14, 37 |
| 15 | 38929000000 | 13, 36 |
| 16 | 14168000000 | 14, 26 |
| 17 | 11690000000 | 27, 38 |
| 18 | 31725000000 | 16, 28 |
| 19 | 55250000000 | 15, 27 |
| 20 | 43962000000 | 28, 31 |
| 21 | 15899000000 | 14, 18 |
| 22 | 55250000000 | 27, 30 |
| 23 | 27397000000 | 19, 33 |
| 24 | 32643000000 | 22, 32 |
| 25 | 17972000000 | 19, 35 |
| 26 | 42441000000 | 32, 37 |
| 27 | 27397000000 | 16, 19 |
| 28 | 11706000000 | 21, 33 |
| 29 | 38929000000 | 33, 36 |
| 30 | 6147000000 | 33, 38 |
| 31 | 27397000000 | 29, 33 |
| 32 | 11706000000 | 30, 33 |
| 33 | 2478000000 | 26, 34 |
| 34 | 11706000000 | 31, 34 |
| 35 | 50615000000 | 22, 23 |
| 36 | 6147000000 | 22, 38 |
| 37 | 28136000000 | 16, 36 |
| 38 | 28136000000 | 29, 37 |
| 39 | 4611000000 | 15, 31 |
| 40 | 4611000000 | 16, 17 |
| 41 | 653727 | 24 |
| 42 | 3799 | 27 |
| 43 | 278434 | 25 |
| 44 | 1000000 | 28, 37 |
| 45 | 198952 | 28 |
| 46 | 122321 | 37 |
| 47 | 86544 | 14 |
| 48 | 13590408604 | 16 |
| 49 | 118051 | 31 |
| 50 | 772534 | 17 |
| 51 | 162632 | 26 |
| 52 | 320446 | 35 |
| 53 | 51181 | 20 |
| 54 | 154156 | 34 |
| 55 | 96564 | 36 |
| 56 | 215710 | 29 |
| 57 | 54162 | 19 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -262146755113973/125000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -262146755113973/125000 | 1 | -262146755113973/125000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1044 | -262146755113973/125000 |
