# BITT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 1630

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ-/EHQ+/BRS-/CFQ+/QRS-/APS+/APQ- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ-/EHQ+/BRS-/CFQ+/QRS-/APS+/APQ-:LLLLLH |
| Index | 0 |
| Context | 331 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1624 |
| Coordinate cut | p high 448047/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 796617/1000000 | 1 | 796617/1000000 | 1 |
| e | 103767/1000000 | 359179/1000000 | 103767/1000000 | 359179/1000000 |
| f | 103767/1000000 | 111617/250000 | 103767/1000000 | 111617/250000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 448047/1000000 | 632499/1000000 | 448047/1000000 | 632499/1000000 |
| q | 196767/1000000 | 590237/1000000 | 196767/1000000 | 590237/1000000 |
| u | 382767/1000000 | 765141/1000000 | 382767/1000000 | 765141/1000000 |
| v | 162771/1000000 | 541027/1000000 | 162771/1000000 | 541027/1000000 |
| r | 8351/20000 | 28351/40000 | 8351/20000 | 28351/40000 |
| w | 796617/1000000 | 1 | 796617/1000000 | 1 |
| j | 508403/1000000 | 896233/1000000 | 508403/1000000 | 896233/1000000 |
| k | 703617/1000000 | 896233/1000000 | 703617/1000000 | 896233/1000000 |

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
| 0 | bound | `{"direction":"lo","ref":"545:1584","triangle":"PQR","value":"27061/250000"}` | `1 * u * w + -1 * q * u + -1 * p * w + -1 * v * r + 1 * p * v + 1 * q * r + -27061/250000` |
| 1 | bound | `{"direction":"lo","ref":"545:399","triangle":"EQR","value":"158609/500000"}` | `-1 * u * w + 1 * e * u + 1 * w + 1 * v * r + -1 * v + -1 * e * r + -158609/500000` |
| 2 | physical | `{"factor":109,"stage":545}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 3 | physical | `{"factor":119,"stage":545}` | `-1/1 * r * k + 1/1 * r + 1/1 * f * k + 1/1 * w * j + -1/1 * f * w + -1/1 * j + -93/1000` |
| 4 | physical | `{"factor":120,"stage":545}` | `1/1 * p * v + -1/1 * h * p + -1/1 * q * u + 1/1 * h * u + -93/1000` |
| 5 | physical | `{"factor":129,"stage":545}` | `-1/1 * r * k + 1/1 * v * r + 1/1 * u * k + 1/1 * w * j + -1/1 * u * w + -1/1 * v * j + -93/1000` |
| 6 | physical | `{"factor":135,"stage":545}` | `1/1 * f + -1/1 * e` |
| 7 | physical | `{"factor":24,"stage":545}` | `1/1 * c * k + -1/1 * a * c + 1/1 * a * j + -13857/20000` |
| 8 | physical | `{"factor":40,"stage":545}` | `-1/1 * p * v + 1/1 * a * p + 1/1 * q * u + -1/1 * a * u + -93/1000` |
| 9 | physical | `{"factor":78,"stage":545}` | `1/1 * v + -1/1 * c * v + -1/1 * e * u + 1/1 * c * e + -93/1000` |
| 10 | physical | `{"factor":87,"stage":545}` | `1/1 * c * v + 1/1 * h * u + -1/1 * c * h + -93/1000` |
| 11 | physical | `{"factor":90,"stage":545}` | `-1/1 * p * v + 1/1 * c * v + 1/1 * q * u + -1/1 * c * q + -93/1000` |
| 12 | physical | `{"factor":99,"stage":545}` | `-1/1 * f * w + 1/1 * e * f + 1/1 * w + 1/1 * r + -1279/1000 + -1/1 * e * r` |
| 13 | coordinate | `{"box":1630,"direction":"hi","value":"59/125","variable":"a"}` | `59/125 + -1 * a` |
| 14 | coordinate | `{"box":1630,"direction":"hi","value":"28351/40000","variable":"r"}` | `28351/40000 + -1 * r` |
| 15 | coordinate | `{"box":1630,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 16 | coordinate | `{"box":1630,"direction":"hi","value":"896233/1000000","variable":"j"}` | `896233/1000000 + -1 * j` |
| 17 | coordinate | `{"box":1630,"direction":"hi","value":"896233/1000000","variable":"k"}` | `896233/1000000 + -1 * k` |
| 18 | coordinate | `{"box":1630,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 19 | coordinate | `{"box":1630,"direction":"hi","value":"359179/1000000","variable":"e"}` | `359179/1000000 + -1 * e` |
| 20 | coordinate | `{"box":1630,"direction":"hi","value":"111617/250000","variable":"f"}` | `111617/250000 + -1 * f` |
| 21 | coordinate | `{"box":1630,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 22 | coordinate | `{"box":1630,"direction":"hi","value":"765141/1000000","variable":"u"}` | `765141/1000000 + -1 * u` |
| 23 | coordinate | `{"box":1630,"direction":"hi","value":"541027/1000000","variable":"v"}` | `541027/1000000 + -1 * v` |
| 24 | coordinate | `{"box":1630,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 25 | coordinate | `{"box":1630,"direction":"lo","value":"8351/20000","variable":"r"}` | `-8351/20000 + 1 * r` |
| 26 | coordinate | `{"box":1630,"direction":"lo","value":"796617/1000000","variable":"w"}` | `-796617/1000000 + 1 * w` |
| 27 | coordinate | `{"box":1630,"direction":"lo","value":"508403/1000000","variable":"j"}` | `-508403/1000000 + 1 * j` |
| 28 | coordinate | `{"box":1630,"direction":"lo","value":"703617/1000000","variable":"k"}` | `-703617/1000000 + 1 * k` |
| 29 | coordinate | `{"box":1630,"direction":"lo","value":"796617/1000000","variable":"c"}` | `-796617/1000000 + 1 * c` |
| 30 | coordinate | `{"box":1630,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 31 | coordinate | `{"box":1630,"direction":"lo","value":"103767/1000000","variable":"f"}` | `-103767/1000000 + 1 * f` |
| 32 | coordinate | `{"box":1630,"direction":"lo","value":"135501/250000","variable":"h"}` | `-135501/250000 + 1 * h` |
| 33 | coordinate | `{"box":1630,"direction":"lo","value":"448047/1000000","variable":"p"}` | `-448047/1000000 + 1 * p` |
| 34 | coordinate | `{"box":1630,"direction":"lo","value":"196767/1000000","variable":"q"}` | `-196767/1000000 + 1 * q` |
| 35 | coordinate | `{"box":1630,"direction":"lo","value":"382767/1000000","variable":"u"}` | `-382767/1000000 + 1 * u` |
| 36 | coordinate | `{"box":1630,"direction":"lo","value":"162771/1000000","variable":"v"}` | `-162771/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 12254000000 | 7 |
| 1 | 9167000000 | 8 |
| 2 | 67147000000 | 9 |
| 3 | 1377000000 | 10 |
| 4 | 65770000000 | 11 |
| 5 | 8885000000 | 12 |
| 6 | 67147000000 | 1 |
| 7 | 35890000000 | 2 |
| 8 | 12001000000 | 3 |
| 9 | 1020000000 | 4 |
| 10 | 73870000000 | 0 |
| 11 | 23889000000 | 5 |
| 12 | 9251000000 | 6 |
| 13 | 12254000000 | 24, 29 |
| 14 | 9167000000 | 13, 33 |
| 15 | 9167000000 | 24, 35 |
| 16 | 7563000000 | 16, 24 |
| 17 | 4691000000 | 13, 27 |
| 18 | 67147000000 | 18, 30 |
| 19 | 1377000000 | 18, 21 |
| 20 | 65770000000 | 29, 34 |
| 21 | 12254000000 | 18, 28 |
| 22 | 8885000000 | 19, 31 |
| 23 | 7770000000 | 25, 30 |
| 24 | 104152000000 | 14, 19 |
| 25 | 35890000000 | 19, 27 |
| 26 | 20886000000 | 15, 20 |
| 27 | 12001000000 | 20, 28 |
| 28 | 1020000000 | 32, 33 |
| 29 | 2396000000 | 22, 32 |
| 30 | 47000000 | 33, 36 |
| 31 | 47000000 | 22, 34 |
| 32 | 73870000000 | 26, 33 |
| 33 | 73870000000 | 14, 34 |
| 34 | 17165000000 | 15, 22 |
| 35 | 17165000000 | 14, 36 |
| 36 | 23889000000 | 22, 28 |
| 37 | 23889000000 | 27, 36 |
| 38 | 508403 | 13 |
| 39 | 472000 | 16 |
| 40 | 174601 | 36 |
| 41 | 1000000 | 21, 35 |
| 42 | 382767 | 21 |
| 43 | 1364057 | 22 |
| 44 | 56366192197 | 15 |
| 45 | 338293 | 25 |
| 46 | 1000000 | 26, 35 |
| 47 | 796617 | 35 |
| 48 | 382767 | 26 |
| 49 | 1000000 | 23, 25 |
| 50 | 417550 | 23 |
| 51 | 541027 | 14 |
| 52 | 515817 | 17 |
| 53 | 32288 | 27 |
| 54 | 413032 | 20 |
| 55 | 143835 | 30 |
| 56 | 702709 | 24 |
| 57 | 160941 | 29 |
| 58 | 55079768107 | 33 |
| 59 | 730104 | 32 |
| 60 | 329213 | 34 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -1381306595471423/500000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -1381306595471423/500000 | 1 | -1381306595471423/500000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1630 | -1381306595471423/500000 |

## Stage 1631

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ-/EHQ+/BRS-/CFQ+/QRS-/APS+/APQ- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ-/EHQ+/BRS-/CFQ+/QRS-/APS+/APQ-:LLLLH |
| Index | 0 |
| Context | 331 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1623 |
| Coordinate cut | e high 359179/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 796617/1000000 | 1 | 796617/1000000 | 1 |
| e | 359179/1000000 | 59/125 | 359179/1000000 | 59/125 |
| f | 103767/1000000 | 111617/250000 | 103767/1000000 | 111617/250000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 196767/1000000 | 632499/1000000 | 196767/1000000 | 632499/1000000 |
| q | 196767/1000000 | 590237/1000000 | 196767/1000000 | 590237/1000000 |
| u | 382767/1000000 | 765141/1000000 | 382767/1000000 | 765141/1000000 |
| v | 162771/1000000 | 541027/1000000 | 162771/1000000 | 541027/1000000 |
| r | 8351/20000 | 28351/40000 | 8351/20000 | 28351/40000 |
| w | 796617/1000000 | 1 | 796617/1000000 | 1 |
| j | 508403/1000000 | 896233/1000000 | 508403/1000000 | 896233/1000000 |
| k | 703617/1000000 | 896233/1000000 | 703617/1000000 | 896233/1000000 |

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
| 0 | physical | `{"factor":135,"stage":545}` | `1/1 * f + -1/1 * e` |
| 1 | physical | `{"factor":99,"stage":545}` | `-1/1 * f * w + 1/1 * e * f + 1/1 * w + 1/1 * r + -1279/1000 + -1/1 * e * r` |
| 2 | coordinate | `{"box":1631,"direction":"hi","value":"28351/40000","variable":"r"}` | `28351/40000 + -1 * r` |
| 3 | coordinate | `{"box":1631,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 4 | coordinate | `{"box":1631,"direction":"hi","value":"111617/250000","variable":"f"}` | `111617/250000 + -1 * f` |
| 5 | coordinate | `{"box":1631,"direction":"lo","value":"8351/20000","variable":"r"}` | `-8351/20000 + 1 * r` |
| 6 | coordinate | `{"box":1631,"direction":"lo","value":"359179/1000000","variable":"e"}` | `-359179/1000000 + 1 * e` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 215479000000 | 1 |
| 1 | 138084000000 | 0 |
| 2 | 215479000000 | 4, 6 |
| 3 | 215479000000 | 5, 6 |
| 4 | 215479000000 | 3, 4 |
| 5 | 119274521828 | 3 |
| 6 | 138083468259 | 2 |
| 7 | 531741 | 4 |
| 8 | 131852778278 | 6 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -11845166415386487/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -11845166415386487/1000000 | 1 | -11845166415386487/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1631 | -11845166415386487/1000000 |

## Stage 1632

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ-/EHQ+/BRS-/CFQ+/QRS-/APS+/APQ- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ-/EHQ+/BRS-/CFQ+/QRS-/APS+/APQ-:LLLH |
| Index | 0 |
| Context | 331 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1622 |
| Coordinate cut | f high 111617/250000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 796617/1000000 | 1 | 796617/1000000 | 1 |
| e | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| f | 111617/250000 | 344349/500000 | 111617/250000 | 344349/500000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 196767/1000000 | 632499/1000000 | 196767/1000000 | 632499/1000000 |
| q | 196767/1000000 | 590237/1000000 | 196767/1000000 | 590237/1000000 |
| u | 382767/1000000 | 765141/1000000 | 382767/1000000 | 765141/1000000 |
| v | 162771/1000000 | 541027/1000000 | 162771/1000000 | 541027/1000000 |
| r | 8351/20000 | 28351/40000 | 8351/20000 | 28351/40000 |
| w | 796617/1000000 | 1 | 796617/1000000 | 1 |
| j | 508403/1000000 | 896233/1000000 | 508403/1000000 | 896233/1000000 |
| k | 703617/1000000 | 896233/1000000 | 703617/1000000 | 896233/1000000 |

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
| 0 | bound | `{"direction":"hi","ref":"545:1632","triangle":"AES","value":"629159/1000000"}` | `-1 * k + 1 * a + 1 * e * j + -1 * a * j + 629159/1000000` |
| 1 | physical | `{"factor":109,"stage":545}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 2 | physical | `{"factor":112,"stage":545}` | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 3 | physical | `{"factor":119,"stage":545}` | `-1/1 * r * k + 1/1 * r + 1/1 * f * k + 1/1 * w * j + -1/1 * f * w + -1/1 * j + -93/1000` |
| 4 | physical | `{"factor":131,"stage":545}` | `1/1 * e + -1/1 * a` |
| 5 | physical | `{"factor":24,"stage":545}` | `1/1 * c * k + -1/1 * a * c + 1/1 * a * j + -13857/20000` |
| 6 | physical | `{"factor":76,"stage":545}` | `1/1 * h + -1/1 * c * h + 1/1 * c * e + -279/1000` |
| 7 | physical | `{"factor":99,"stage":545}` | `-1/1 * f * w + 1/1 * e * f + 1/1 * w + 1/1 * r + -1279/1000 + -1/1 * e * r` |
| 8 | coordinate | `{"box":1632,"direction":"hi","value":"59/125","variable":"a"}` | `59/125 + -1 * a` |
| 9 | coordinate | `{"box":1632,"direction":"hi","value":"28351/40000","variable":"r"}` | `28351/40000 + -1 * r` |
| 10 | coordinate | `{"box":1632,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 11 | coordinate | `{"box":1632,"direction":"hi","value":"896233/1000000","variable":"j"}` | `896233/1000000 + -1 * j` |
| 12 | coordinate | `{"box":1632,"direction":"hi","value":"896233/1000000","variable":"k"}` | `896233/1000000 + -1 * k` |
| 13 | coordinate | `{"box":1632,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 14 | coordinate | `{"box":1632,"direction":"hi","value":"59/125","variable":"e"}` | `59/125 + -1 * e` |
| 15 | coordinate | `{"box":1632,"direction":"hi","value":"344349/500000","variable":"f"}` | `344349/500000 + -1 * f` |
| 16 | coordinate | `{"box":1632,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 17 | coordinate | `{"box":1632,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 18 | coordinate | `{"box":1632,"direction":"lo","value":"796617/1000000","variable":"w"}` | `-796617/1000000 + 1 * w` |
| 19 | coordinate | `{"box":1632,"direction":"lo","value":"508403/1000000","variable":"j"}` | `-508403/1000000 + 1 * j` |
| 20 | coordinate | `{"box":1632,"direction":"lo","value":"796617/1000000","variable":"c"}` | `-796617/1000000 + 1 * c` |
| 21 | coordinate | `{"box":1632,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 22 | coordinate | `{"box":1632,"direction":"lo","value":"111617/250000","variable":"f"}` | `-111617/250000 + 1 * f` |
| 23 | coordinate | `{"box":1632,"direction":"lo","value":"135501/250000","variable":"h"}` | `-135501/250000 + 1 * h` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 17473000000 | 5 |
| 1 | 31596000000 | 6 |
| 2 | 177330000000 | 7 |
| 3 | 2023000000 | 1 |
| 4 | 24498000000 | 2 |
| 5 | 2023000000 | 3 |
| 6 | 3069000000 | 4 |
| 7 | 12799000000 | 0 |
| 8 | 17473000000 | 17, 20 |
| 9 | 4673000000 | 11, 17 |
| 10 | 31596000000 | 13, 21 |
| 11 | 31596000000 | 20, 23 |
| 12 | 17473000000 | 12, 20 |
| 13 | 177330000000 | 14, 22 |
| 14 | 179353000000 | 9, 14 |
| 15 | 14822000000 | 11, 21 |
| 16 | 24498000000 | 16, 22 |
| 17 | 203852000000 | 10, 15 |
| 18 | 2023000000 | 12, 22 |
| 19 | 24498000000 | 9, 16 |
| 20 | 1000000 | 8, 19 |
| 21 | 508403 | 8 |
| 22 | 472000 | 11 |
| 23 | 92382 | 16 |
| 24 | 1000000 | 15, 18 |
| 25 | 796617 | 15 |
| 26 | 38961224002 | 10 |
| 27 | 94698384000 | 9 |
| 28 | 493605 | 12 |
| 29 | 62335 | 19 |
| 30 | 213391 | 14 |
| 31 | 1192032 | 17 |
| 32 | 222166 | 13 |
| 33 | 93841160641 | 22 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -11982612709868507/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -11982612709868507/1000000 | 1 | -11982612709868507/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1632 | -11982612709868507/1000000 |

## Stage 1633

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ-/EHQ+/BRS-/CFQ+/QRS-/APS+/APQ- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ-/EHQ+/BRS-/CFQ+/QRS-/APS+/APQ-:LLH |
| Index | 0 |
| Context | 331 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1621 |
| Coordinate cut | r high 28351/40000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 796617/1000000 | 1 | 796617/1000000 | 1 |
| e | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| f | 103767/1000000 | 344349/500000 | 103767/1000000 | 344349/500000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 196767/1000000 | 632499/1000000 | 196767/1000000 | 632499/1000000 |
| q | 196767/1000000 | 590237/1000000 | 196767/1000000 | 590237/1000000 |
| u | 382767/1000000 | 765141/1000000 | 382767/1000000 | 765141/1000000 |
| v | 162771/1000000 | 541027/1000000 | 162771/1000000 | 541027/1000000 |
| r | 28351/40000 | 1 | 28351/40000 | 1 |
| w | 796617/1000000 | 1 | 796617/1000000 | 1 |
| j | 508403/1000000 | 896233/1000000 | 508403/1000000 | 896233/1000000 |
| k | 703617/1000000 | 896233/1000000 | 703617/1000000 | 896233/1000000 |

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


## Stage 1634

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ-/EHQ+/BRS-/CFQ+/QRS-/APS+/APQ- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ-/EHQ+/BRS-/CFQ+/QRS-/APS+/APQ-:LLHL |
| Index | 0 |
| Context | 331 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1633 |
| Coordinate cut | j low 674227/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 796617/1000000 | 1 | 796617/1000000 | 1 |
| e | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| f | 103767/1000000 | 344349/500000 | 103767/1000000 | 344349/500000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 196767/1000000 | 632499/1000000 | 196767/1000000 | 632499/1000000 |
| q | 196767/1000000 | 590237/1000000 | 196767/1000000 | 590237/1000000 |
| u | 382767/1000000 | 765141/1000000 | 382767/1000000 | 765141/1000000 |
| v | 162771/1000000 | 541027/1000000 | 162771/1000000 | 541027/1000000 |
| r | 28351/40000 | 1 | 28351/40000 | 1 |
| w | 796617/1000000 | 1 | 796617/1000000 | 1 |
| j | 508403/1000000 | 674227/1000000 | 508403/1000000 | 674227/1000000 |
| k | 703617/1000000 | 896233/1000000 | 703617/1000000 | 896233/1000000 |

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
| 0 | bound | `{"direction":"lo","ref":"545:1030","triangle":"AHQ","value":"154717/500000"}` | `1 * h * u + -1 * a * u + -154717/500000` |
| 1 | bound | `{"direction":"lo","ref":"545:1624","triangle":"ARS","value":"87037/500000"}` | `-1 * r * k + 1 * a * r + 1 * w * j + -1 * a * j + -87037/500000` |
| 2 | physical | `{"factor":129,"stage":545}` | `-1/1 * r * k + 1/1 * v * r + 1/1 * u * k + 1/1 * w * j + -1/1 * u * w + -1/1 * v * j + -93/1000` |
| 3 | physical | `{"factor":24,"stage":545}` | `1/1 * c * k + -1/1 * a * c + 1/1 * a * j + -13857/20000` |
| 4 | physical | `{"factor":44,"stage":545}` | `1/1 * u * k + -1/1 * a * u + -1/1 * v * j + 1/1 * a * j + -279/1000` |
| 5 | physical | `{"factor":87,"stage":545}` | `1/1 * c * v + 1/1 * h * u + -1/1 * c * h + -93/1000` |
| 6 | coordinate | `{"box":1634,"direction":"hi","value":"59/125","variable":"a"}` | `59/125 + -1 * a` |
| 7 | coordinate | `{"box":1634,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 8 | coordinate | `{"box":1634,"direction":"hi","value":"674227/1000000","variable":"j"}` | `674227/1000000 + -1 * j` |
| 9 | coordinate | `{"box":1634,"direction":"hi","value":"896233/1000000","variable":"k"}` | `896233/1000000 + -1 * k` |
| 10 | coordinate | `{"box":1634,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 11 | coordinate | `{"box":1634,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 12 | coordinate | `{"box":1634,"direction":"hi","value":"765141/1000000","variable":"u"}` | `765141/1000000 + -1 * u` |
| 13 | coordinate | `{"box":1634,"direction":"hi","value":"541027/1000000","variable":"v"}` | `541027/1000000 + -1 * v` |
| 14 | coordinate | `{"box":1634,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 15 | coordinate | `{"box":1634,"direction":"lo","value":"28351/40000","variable":"r"}` | `-28351/40000 + 1 * r` |
| 16 | coordinate | `{"box":1634,"direction":"lo","value":"796617/1000000","variable":"w"}` | `-796617/1000000 + 1 * w` |
| 17 | coordinate | `{"box":1634,"direction":"lo","value":"508403/1000000","variable":"j"}` | `-508403/1000000 + 1 * j` |
| 18 | coordinate | `{"box":1634,"direction":"lo","value":"703617/1000000","variable":"k"}` | `-703617/1000000 + 1 * k` |
| 19 | coordinate | `{"box":1634,"direction":"lo","value":"796617/1000000","variable":"c"}` | `-796617/1000000 + 1 * c` |
| 20 | coordinate | `{"box":1634,"direction":"lo","value":"135501/250000","variable":"h"}` | `-135501/250000 + 1 * h` |
| 21 | coordinate | `{"box":1634,"direction":"lo","value":"382767/1000000","variable":"u"}` | `-382767/1000000 + 1 * u` |
| 22 | coordinate | `{"box":1634,"direction":"lo","value":"162771/1000000","variable":"v"}` | `-162771/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 27349000000 | 3 |
| 1 | 1258000000 | 0 |
| 2 | 23884000000 | 4 |
| 3 | 70328000000 | 1 |
| 4 | 13515000000 | 5 |
| 5 | 74915000000 | 2 |
| 6 | 27349000000 | 6, 10 |
| 7 | 25142000000 | 14, 21 |
| 8 | 70328000000 | 6, 15 |
| 9 | 19094000000 | 6, 8 |
| 10 | 10875000000 | 19, 20 |
| 11 | 2640000000 | 10, 11 |
| 12 | 13515000000 | 10, 22 |
| 13 | 27349000000 | 10, 18 |
| 14 | 14773000000 | 12, 20 |
| 15 | 74915000000 | 7, 12 |
| 16 | 74915000000 | 13, 15 |
| 17 | 98799000000 | 12, 18 |
| 18 | 98799000000 | 8, 13 |
| 19 | 145243000000 | 15, 18 |
| 20 | 85016000000 | 8, 16 |
| 21 | 1000000 | 14, 17 |
| 22 | 508403 | 14 |
| 23 | 103767 | 17 |
| 24 | 28469590226 | 15 |
| 25 | 708775 | 18 |
| 26 | 60227000000 | 7, 17 |
| 27 | 30619587481 | 7 |
| 28 | 65486896299 | 8 |
| 29 | 509948 | 6 |
| 30 | 49898 | 10 |
| 31 | 228839 | 21 |
| 32 | 218118 | 11 |
| 33 | 74248 | 22 |
| 34 | 267109 | 9 |
| 35 | 455383 | 16 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -2014443596194987/250000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -2014443596194987/250000 | 1 | -2014443596194987/250000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1634 | -2014443596194987/250000 |
