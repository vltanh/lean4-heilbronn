# BITT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 1445

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ+/BPS-/CRS+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ+/BPS-/CRS+:LLHLHHLLLLL |
| Index | 0 |
| Context | 287 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1444 |
| Coordinate cut | v low 61333/125000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 439281/1000000 | 103767/1000000 | 439281/1000000 |
| c | 69333/100000 | 1 | 69333/100000 | 1 |
| e | 103767/1000000 | 180659/500000 | 103767/1000000 | 180659/500000 |
| f | 353759/1000000 | 344349/500000 | 353759/1000000 | 344349/500000 |
| h | 796617/1000000 | 1 | 796617/1000000 | 1 |
| p | 292963/1000000 | 290103/500000 | 292963/1000000 | 290103/500000 |
| q | 196767/1000000 | 108041/250000 | 196767/1000000 | 108041/250000 |
| u | 17287/62500 | 240799/500000 | 17287/62500 | 240799/500000 |
| v | 396873/1000000 | 61333/125000 | 396873/1000000 | 61333/125000 |
| r | 19201/31250 | 1 | 19201/31250 | 1 |
| w | 796617/1000000 | 1 | 796617/1000000 | 1 |
| j | 705503/1000000 | 896233/1000000 | 705503/1000000 | 896233/1000000 |
| k | 11627/25000 | 772929/1000000 | 11627/25000 | 772929/1000000 |

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
| 0 | bound | `{"direction":"lo","ref":"501:710","triangle":"BCQ","value":"312711/1000000"}` | `1 * c * v + -1 * b * v + -312711/1000000` |
| 1 | bound | `{"direction":"lo","ref":"501:962","triangle":"BQS","value":"70007/250000"}` | `-1 * u * k + 1 * b * k + 1 * v * j + -1 * b * v + -70007/250000` |
| 2 | bound | `{"direction":"lo","ref":"501:981","triangle":"CEH","value":"366023/1000000"}` | `1 * h + -1 * c * h + 1 * c * e + -366023/1000000` |
| 3 | physical | `{"factor":0,"stage":501}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 4 | physical | `{"factor":103,"stage":501}` | `-1/1 * f * k + 1/1 * e * f + 1/1 * k + 1/1 * j + -1093/1000 + -1/1 * e * j` |
| 5 | physical | `{"factor":113,"stage":501}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 6 | physical | `{"factor":118,"stage":501}` | `-1/1 * p * v + 1/1 * p + 1/1 * f * v + 1/1 * q * u + -1/1 * f * q + -1/1 * u + -93/1000` |
| 7 | physical | `{"factor":124,"stage":501}` | `1/1 * p * v + -1/1 * h * p + -1/1 * q * u + 1/1 * h * u + -93/1000` |
| 8 | physical | `{"factor":27,"stage":501}` | `1/1 * h + -1/1 * a + -13857/20000` |
| 9 | physical | `{"factor":32,"stage":501}` | `1/1 * w + -1/1 * a + -1/1 * e * r + 1/1 * a * r + -13857/20000` |
| 10 | physical | `{"factor":72,"stage":501}` | `1/1 * p * v + -1/1 * b * v + -1/1 * q * u + 1/1 * b * q + -93/1000` |
| 11 | physical | `{"factor":73,"stage":501}` | `-1/1 * p * k + 1/1 * b * k + 1/1 * q * j + -1/1 * b * q + -93/1000` |
| 12 | physical | `{"factor":89,"stage":501}` | `1/1 * c * v + 1/1 * h * u + -1/1 * c * h + -93/1000` |
| 13 | physical | `{"factor":92,"stage":501}` | `-1/1 * p * v + 1/1 * c * v + 1/1 * q * u + -1/1 * c * q + -93/1000` |
| 14 | physical | `{"factor":97,"stage":501}` | `1/1 * r * k + -1/1 * c * k + -1/1 * w * j + 1/1 * c * w + -93/1000` |
| 15 | coordinate | `{"box":1445,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 16 | coordinate | `{"box":1445,"direction":"hi","value":"439281/1000000","variable":"b"}` | `439281/1000000 + -1 * b` |
| 17 | coordinate | `{"box":1445,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 18 | coordinate | `{"box":1445,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 19 | coordinate | `{"box":1445,"direction":"hi","value":"896233/1000000","variable":"j"}` | `896233/1000000 + -1 * j` |
| 20 | coordinate | `{"box":1445,"direction":"hi","value":"772929/1000000","variable":"k"}` | `772929/1000000 + -1 * k` |
| 21 | coordinate | `{"box":1445,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 22 | coordinate | `{"box":1445,"direction":"hi","value":"180659/500000","variable":"e"}` | `180659/500000 + -1 * e` |
| 23 | coordinate | `{"box":1445,"direction":"hi","value":"344349/500000","variable":"f"}` | `344349/500000 + -1 * f` |
| 24 | coordinate | `{"box":1445,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 25 | coordinate | `{"box":1445,"direction":"hi","value":"290103/500000","variable":"p"}` | `290103/500000 + -1 * p` |
| 26 | coordinate | `{"box":1445,"direction":"hi","value":"108041/250000","variable":"q"}` | `108041/250000 + -1 * q` |
| 27 | coordinate | `{"box":1445,"direction":"hi","value":"240799/500000","variable":"u"}` | `240799/500000 + -1 * u` |
| 28 | coordinate | `{"box":1445,"direction":"hi","value":"61333/125000","variable":"v"}` | `61333/125000 + -1 * v` |
| 29 | coordinate | `{"box":1445,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 30 | coordinate | `{"box":1445,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 31 | coordinate | `{"box":1445,"direction":"lo","value":"705503/1000000","variable":"j"}` | `-705503/1000000 + 1 * j` |
| 32 | coordinate | `{"box":1445,"direction":"lo","value":"11627/25000","variable":"k"}` | `-11627/25000 + 1 * k` |
| 33 | coordinate | `{"box":1445,"direction":"lo","value":"69333/100000","variable":"c"}` | `-69333/100000 + 1 * c` |
| 34 | coordinate | `{"box":1445,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 35 | coordinate | `{"box":1445,"direction":"lo","value":"353759/1000000","variable":"f"}` | `-353759/1000000 + 1 * f` |
| 36 | coordinate | `{"box":1445,"direction":"lo","value":"796617/1000000","variable":"h"}` | `-796617/1000000 + 1 * h` |
| 37 | coordinate | `{"box":1445,"direction":"lo","value":"292963/1000000","variable":"p"}` | `-292963/1000000 + 1 * p` |
| 38 | coordinate | `{"box":1445,"direction":"lo","value":"196767/1000000","variable":"q"}` | `-196767/1000000 + 1 * q` |
| 39 | coordinate | `{"box":1445,"direction":"lo","value":"17287/62500","variable":"u"}` | `-17287/62500 + 1 * u` |
| 40 | coordinate | `{"box":1445,"direction":"lo","value":"396873/1000000","variable":"v"}` | `-396873/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 9529000000 | 3 |
| 1 | 8540000000 | 8 |
| 2 | 1537000000 | 9 |
| 3 | 10770000000 | 0 |
| 4 | 45801000000 | 10 |
| 5 | 45801000000 | 11 |
| 6 | 31710000000 | 1 |
| 7 | 3479000000 | 2 |
| 8 | 57506000000 | 12 |
| 9 | 27269000000 | 13 |
| 10 | 9012000000 | 14 |
| 11 | 2811000000 | 4 |
| 12 | 2811000000 | 5 |
| 13 | 32150000000 | 6 |
| 14 | 13618000000 | 7 |
| 15 | 9529000000 | 29, 30 |
| 16 | 9529000000 | 21, 29 |
| 17 | 88281000000 | 16, 28 |
| 18 | 1537000000 | 17, 29 |
| 19 | 26819000000 | 20, 30 |
| 20 | 50692000000 | 16, 32 |
| 21 | 3479000000 | 22, 33 |
| 22 | 60985000000 | 33, 36 |
| 23 | 27269000000 | 33, 38 |
| 24 | 95546000000 | 28, 33 |
| 25 | 9012000000 | 18, 33 |
| 26 | 9012000000 | 32, 33 |
| 27 | 2811000000 | 23, 34 |
| 28 | 4348000000 | 17, 22 |
| 29 | 32150000000 | 23, 26 |
| 30 | 32150000000 | 28, 35 |
| 31 | 2811000000 | 20, 23 |
| 32 | 13618000000 | 36, 37 |
| 33 | 71125000000 | 27, 36 |
| 34 | 11823000000 | 17, 32 |
| 35 | 11823000000 | 18, 19 |
| 36 | 45801000000 | 32, 37 |
| 37 | 45801000000 | 19, 38 |
| 38 | 31710000000 | 20, 27 |
| 39 | 357566 | 24 |
| 40 | 204257 | 15 |
| 41 | 127201 | 18 |
| 42 | 1000000 | 33, 40 |
| 43 | 396873 | 33 |
| 44 | 693330 | 40 |
| 45 | 465080 | 16 |
| 46 | 439281 | 20 |
| 47 | 31710000000 | 28, 31 |
| 48 | 61209594199 | 28 |
| 49 | 15559080807 | 19 |
| 50 | 1000000 | 36, 39 |
| 51 | 276592 | 36 |
| 52 | 991082 | 39 |
| 53 | 170637 | 32 |
| 54 | 540614 | 25 |
| 55 | 551196 | 30 |
| 56 | 175581 | 21 |
| 57 | 4087120055 | 17 |
| 58 | 25148 | 22 |
| 59 | 311163 | 26 |
| 60 | 239382 | 35 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -5160349427348777/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -5160349427348777/1000000 | 1 | -5160349427348777/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1445 | -5160349427348777/1000000 |

## Stage 1446

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ+/BPS-/CRS+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ+/BPS-/CRS+:LLHLHHLLLLH |
| Index | 0 |
| Context | 287 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1444 |
| Coordinate cut | v high 61333/125000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 439281/1000000 | 103767/1000000 | 439281/1000000 |
| c | 69333/100000 | 1 | 69333/100000 | 1 |
| e | 103767/1000000 | 180659/500000 | 103767/1000000 | 180659/500000 |
| f | 353759/1000000 | 344349/500000 | 353759/1000000 | 344349/500000 |
| h | 796617/1000000 | 1 | 796617/1000000 | 1 |
| p | 292963/1000000 | 290103/500000 | 292963/1000000 | 290103/500000 |
| q | 196767/1000000 | 108041/250000 | 196767/1000000 | 108041/250000 |
| u | 17287/62500 | 240799/500000 | 17287/62500 | 240799/500000 |
| v | 61333/125000 | 705227/1000000 | 61333/125000 | 705227/1000000 |
| r | 19201/31250 | 1 | 19201/31250 | 1 |
| w | 796617/1000000 | 1 | 796617/1000000 | 1 |
| j | 705503/1000000 | 896233/1000000 | 705503/1000000 | 896233/1000000 |
| k | 11627/25000 | 772929/1000000 | 11627/25000 | 772929/1000000 |

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


## Stage 1447

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ+/BPS-/CRS+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ+/BPS-/CRS+:LLHLHHLLLLHL |
| Index | 0 |
| Context | 287 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1446 |
| Coordinate cut | c low 45109/50000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 439281/1000000 | 103767/1000000 | 439281/1000000 |
| c | 69333/100000 | 45109/50000 | 69333/100000 | 45109/50000 |
| e | 103767/1000000 | 180659/500000 | 103767/1000000 | 180659/500000 |
| f | 353759/1000000 | 344349/500000 | 353759/1000000 | 344349/500000 |
| h | 796617/1000000 | 1 | 796617/1000000 | 1 |
| p | 292963/1000000 | 290103/500000 | 292963/1000000 | 290103/500000 |
| q | 196767/1000000 | 108041/250000 | 196767/1000000 | 108041/250000 |
| u | 17287/62500 | 240799/500000 | 17287/62500 | 240799/500000 |
| v | 61333/125000 | 705227/1000000 | 61333/125000 | 705227/1000000 |
| r | 19201/31250 | 1 | 19201/31250 | 1 |
| w | 796617/1000000 | 1 | 796617/1000000 | 1 |
| j | 705503/1000000 | 896233/1000000 | 705503/1000000 | 896233/1000000 |
| k | 11627/25000 | 772929/1000000 | 11627/25000 | 772929/1000000 |

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


## Stage 1448

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ+/BPS-/CRS+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ+/BPS-/CRS+:LLHLHHLLLLHLL |
| Index | 0 |
| Context | 287 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1447 |
| Coordinate cut | p low 493551/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 439281/1000000 | 103767/1000000 | 439281/1000000 |
| c | 69333/100000 | 45109/50000 | 69333/100000 | 45109/50000 |
| e | 103767/1000000 | 180659/500000 | 103767/1000000 | 180659/500000 |
| f | 353759/1000000 | 344349/500000 | 353759/1000000 | 344349/500000 |
| h | 796617/1000000 | 1 | 796617/1000000 | 1 |
| p | 292963/1000000 | 493551/1000000 | 292963/1000000 | 493551/1000000 |
| q | 196767/1000000 | 108041/250000 | 196767/1000000 | 108041/250000 |
| u | 17287/62500 | 240799/500000 | 17287/62500 | 240799/500000 |
| v | 61333/125000 | 705227/1000000 | 61333/125000 | 705227/1000000 |
| r | 19201/31250 | 1 | 19201/31250 | 1 |
| w | 796617/1000000 | 1 | 796617/1000000 | 1 |
| j | 705503/1000000 | 896233/1000000 | 705503/1000000 | 896233/1000000 |
| k | 11627/25000 | 772929/1000000 | 11627/25000 | 772929/1000000 |

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


## Stage 1449

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ+/BPS-/CRS+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ+/BPS-/CRS+:LLHLHHLLLLHLLL |
| Index | 0 |
| Context | 287 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1448 |
| Coordinate cut | b low 346727/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 346727/1000000 | 103767/1000000 | 346727/1000000 |
| c | 69333/100000 | 45109/50000 | 69333/100000 | 45109/50000 |
| e | 103767/1000000 | 180659/500000 | 103767/1000000 | 180659/500000 |
| f | 353759/1000000 | 344349/500000 | 353759/1000000 | 344349/500000 |
| h | 796617/1000000 | 1 | 796617/1000000 | 1 |
| p | 292963/1000000 | 493551/1000000 | 292963/1000000 | 493551/1000000 |
| q | 196767/1000000 | 108041/250000 | 196767/1000000 | 108041/250000 |
| u | 17287/62500 | 240799/500000 | 17287/62500 | 240799/500000 |
| v | 61333/125000 | 705227/1000000 | 61333/125000 | 705227/1000000 |
| r | 19201/31250 | 1 | 19201/31250 | 1 |
| w | 796617/1000000 | 1 | 796617/1000000 | 1 |
| j | 705503/1000000 | 896233/1000000 | 705503/1000000 | 896233/1000000 |
| k | 11627/25000 | 772929/1000000 | 11627/25000 | 772929/1000000 |

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
