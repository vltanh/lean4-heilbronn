# BITT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 1145

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ-/BPS+/AQS-/AQR- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ-/BPS+/AQS-/AQR-:HLLLHHHHLLL |
| Index | 0 |
| Context | 247 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1144 |
| Coordinate cut | e low 286679/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 145241/500000 | 103767/1000000 | 145241/500000 |
| c | 677279/1000000 | 1 | 677279/1000000 | 1 |
| e | 103767/1000000 | 286679/1000000 | 103767/1000000 | 286679/1000000 |
| f | 103767/1000000 | 12413/31250 | 103767/1000000 | 12413/31250 |
| h | 135501/250000 | 385501/500000 | 135501/250000 | 385501/500000 |
| p | 145397/500000 | 154789/250000 | 145397/500000 | 154789/250000 |
| q | 196767/1000000 | 308103/500000 | 196767/1000000 | 308103/500000 |
| u | 78479/200000 | 344349/500000 | 78479/200000 | 344349/500000 |
| v | 225289/500000 | 387093/500000 | 225289/500000 | 387093/500000 |
| r | 704889/1000000 | 1 | 704889/1000000 | 1 |
| w | 162657/200000 | 1 | 162657/200000 | 1 |
| j | 617289/1000000 | 896233/1000000 | 617289/1000000 | 896233/1000000 |
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
| 1 | physical | `{"factor":10,"stage":461}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 2 | physical | `{"factor":105,"stage":461}` | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 3 | physical | `{"factor":141,"stage":461}` | `1/1 * f + -1/1 * e` |
| 4 | physical | `{"factor":26,"stage":461}` | `1/1 * q + -1/1 * a + -1/1 * e * p + 1/1 * a * p + -93/1000` |
| 5 | physical | `{"factor":44,"stage":461}` | `-1/1 * u * w + 1/1 * a * u + 1/1 * v * r + -1/1 * a * r + -93/1000` |
| 6 | physical | `{"factor":63,"stage":461}` | `1/1 * w + -1/1 * b * w + -1/1 * e * r + 1/1 * b * e + -13857/20000` |
| 7 | physical | `{"factor":7,"stage":461}` | `1/1 * b * h + -1/1 * a * b + -93/1000` |
| 8 | physical | `{"factor":90,"stage":461}` | `-1/1 * f * v + 1/1 * c * v + 1/1 * u + -1/1 * c + -93/1000` |
| 9 | physical | `{"factor":93,"stage":461}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 10 | coordinate | `{"box":1145,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 11 | coordinate | `{"box":1145,"direction":"hi","value":"145241/500000","variable":"b"}` | `145241/500000 + -1 * b` |
| 12 | coordinate | `{"box":1145,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 13 | coordinate | `{"box":1145,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 14 | coordinate | `{"box":1145,"direction":"hi","value":"286679/1000000","variable":"e"}` | `286679/1000000 + -1 * e` |
| 15 | coordinate | `{"box":1145,"direction":"hi","value":"12413/31250","variable":"f"}` | `12413/31250 + -1 * f` |
| 16 | coordinate | `{"box":1145,"direction":"hi","value":"385501/500000","variable":"h"}` | `385501/500000 + -1 * h` |
| 17 | coordinate | `{"box":1145,"direction":"hi","value":"154789/250000","variable":"p"}` | `154789/250000 + -1 * p` |
| 18 | coordinate | `{"box":1145,"direction":"hi","value":"344349/500000","variable":"u"}` | `344349/500000 + -1 * u` |
| 19 | coordinate | `{"box":1145,"direction":"hi","value":"387093/500000","variable":"v"}` | `387093/500000 + -1 * v` |
| 20 | coordinate | `{"box":1145,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 21 | coordinate | `{"box":1145,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 22 | coordinate | `{"box":1145,"direction":"lo","value":"704889/1000000","variable":"r"}` | `-704889/1000000 + 1 * r` |
| 23 | coordinate | `{"box":1145,"direction":"lo","value":"162657/200000","variable":"w"}` | `-162657/200000 + 1 * w` |
| 24 | coordinate | `{"box":1145,"direction":"lo","value":"677279/1000000","variable":"c"}` | `-677279/1000000 + 1 * c` |
| 25 | coordinate | `{"box":1145,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 26 | coordinate | `{"box":1145,"direction":"lo","value":"103767/1000000","variable":"f"}` | `-103767/1000000 + 1 * f` |
| 27 | coordinate | `{"box":1145,"direction":"lo","value":"145397/500000","variable":"p"}` | `-145397/500000 + 1 * p` |
| 28 | coordinate | `{"box":1145,"direction":"lo","value":"196767/1000000","variable":"q"}` | `-196767/1000000 + 1 * q` |
| 29 | coordinate | `{"box":1145,"direction":"lo","value":"78479/200000","variable":"u"}` | `-78479/200000 + 1 * u` |
| 30 | coordinate | `{"box":1145,"direction":"lo","value":"225289/500000","variable":"v"}` | `-225289/500000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 22894000000 | 7 |
| 1 | 25857000000 | 1 |
| 2 | 20357000000 | 4 |
| 3 | 25390000000 | 5 |
| 4 | 10472000000 | 6 |
| 5 | 19733000000 | 0 |
| 6 | 73933000000 | 8 |
| 7 | 29073000000 | 9 |
| 8 | 75640000000 | 2 |
| 9 | 6527000000 | 3 |
| 10 | 48751000000 | 20, 21 |
| 11 | 10472000000 | 14, 21 |
| 12 | 22894000000 | 16, 21 |
| 13 | 45590000000 | 11, 28 |
| 14 | 46214000000 | 17, 20 |
| 15 | 25390000000 | 18, 20 |
| 16 | 30205000000 | 21, 23 |
| 17 | 15946000000 | 20, 22 |
| 18 | 9444000000 | 10, 12 |
| 19 | 29073000000 | 16, 24 |
| 20 | 29073000000 | 24, 28 |
| 21 | 73933000000 | 19, 24 |
| 22 | 75640000000 | 25, 26 |
| 23 | 20357000000 | 25, 27 |
| 24 | 75640000000 | 14, 29 |
| 25 | 10472000000 | 12, 14 |
| 26 | 1708000000 | 19, 26 |
| 27 | 29073000000 | 16, 17 |
| 28 | 19733000000 | 13, 27 |
| 29 | 19733000000 | 22, 28 |
| 30 | 14884000000 | 23, 29 |
| 31 | 10506000000 | 13, 18 |
| 32 | 25390000000 | 12, 30 |
| 33 | 32624 | 28 |
| 34 | 187407 | 20 |
| 35 | 87399 | 13 |
| 36 | 1000000 | 26, 30 |
| 37 | 450578 | 26 |
| 38 | 103767 | 30 |
| 39 | 1109750 | 18 |
| 40 | 372307 | 24 |
| 41 | 502343 | 19 |
| 42 | 373808 | 15 |
| 43 | 223514 | 25 |
| 44 | 11364 | 11 |
| 45 | 4065451677 | 16 |
| 46 | 762173 | 17 |
| 47 | 123461 | 22 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -1314070044194557/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -1314070044194557/1000000 | 1 | -1314070044194557/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1145 | -1314070044194557/1000000 |

## Stage 1146

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ-/BPS+/AQS-/AQR- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ-/BPS+/AQS-/AQR-:HLLLHHHHLLH |
| Index | 0 |
| Context | 247 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1144 |
| Coordinate cut | e high 286679/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 145241/500000 | 103767/1000000 | 145241/500000 |
| c | 677279/1000000 | 1 | 677279/1000000 | 1 |
| e | 286679/1000000 | 59/125 | 286679/1000000 | 59/125 |
| f | 103767/1000000 | 12413/31250 | 103767/1000000 | 12413/31250 |
| h | 135501/250000 | 385501/500000 | 135501/250000 | 385501/500000 |
| p | 145397/500000 | 154789/250000 | 145397/500000 | 154789/250000 |
| q | 196767/1000000 | 308103/500000 | 196767/1000000 | 308103/500000 |
| u | 78479/200000 | 344349/500000 | 78479/200000 | 344349/500000 |
| v | 225289/500000 | 387093/500000 | 225289/500000 | 387093/500000 |
| r | 704889/1000000 | 1 | 704889/1000000 | 1 |
| w | 162657/200000 | 1 | 162657/200000 | 1 |
| j | 617289/1000000 | 896233/1000000 | 617289/1000000 | 896233/1000000 |
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
| 1 | physical | `{"factor":0,"stage":461}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 2 | physical | `{"factor":105,"stage":461}` | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 3 | physical | `{"factor":141,"stage":461}` | `1/1 * f + -1/1 * e` |
| 4 | physical | `{"factor":26,"stage":461}` | `1/1 * q + -1/1 * a + -1/1 * e * p + 1/1 * a * p + -93/1000` |
| 5 | physical | `{"factor":44,"stage":461}` | `-1/1 * u * w + 1/1 * a * u + 1/1 * v * r + -1/1 * a * r + -93/1000` |
| 6 | physical | `{"factor":63,"stage":461}` | `1/1 * w + -1/1 * b * w + -1/1 * e * r + 1/1 * b * e + -13857/20000` |
| 7 | physical | `{"factor":7,"stage":461}` | `1/1 * b * h + -1/1 * a * b + -93/1000` |
| 8 | physical | `{"factor":90,"stage":461}` | `-1/1 * f * v + 1/1 * c * v + 1/1 * u + -1/1 * c + -93/1000` |
| 9 | physical | `{"factor":93,"stage":461}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 10 | coordinate | `{"box":1146,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 11 | coordinate | `{"box":1146,"direction":"hi","value":"145241/500000","variable":"b"}` | `145241/500000 + -1 * b` |
| 12 | coordinate | `{"box":1146,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 13 | coordinate | `{"box":1146,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 14 | coordinate | `{"box":1146,"direction":"hi","value":"12413/31250","variable":"f"}` | `12413/31250 + -1 * f` |
| 15 | coordinate | `{"box":1146,"direction":"hi","value":"385501/500000","variable":"h"}` | `385501/500000 + -1 * h` |
| 16 | coordinate | `{"box":1146,"direction":"hi","value":"154789/250000","variable":"p"}` | `154789/250000 + -1 * p` |
| 17 | coordinate | `{"box":1146,"direction":"hi","value":"308103/500000","variable":"q"}` | `308103/500000 + -1 * q` |
| 18 | coordinate | `{"box":1146,"direction":"hi","value":"344349/500000","variable":"u"}` | `344349/500000 + -1 * u` |
| 19 | coordinate | `{"box":1146,"direction":"hi","value":"387093/500000","variable":"v"}` | `387093/500000 + -1 * v` |
| 20 | coordinate | `{"box":1146,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 21 | coordinate | `{"box":1146,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 22 | coordinate | `{"box":1146,"direction":"lo","value":"704889/1000000","variable":"r"}` | `-704889/1000000 + 1 * r` |
| 23 | coordinate | `{"box":1146,"direction":"lo","value":"162657/200000","variable":"w"}` | `-162657/200000 + 1 * w` |
| 24 | coordinate | `{"box":1146,"direction":"lo","value":"677279/1000000","variable":"c"}` | `-677279/1000000 + 1 * c` |
| 25 | coordinate | `{"box":1146,"direction":"lo","value":"286679/1000000","variable":"e"}` | `-286679/1000000 + 1 * e` |
| 26 | coordinate | `{"box":1146,"direction":"lo","value":"103767/1000000","variable":"f"}` | `-103767/1000000 + 1 * f` |
| 27 | coordinate | `{"box":1146,"direction":"lo","value":"145397/500000","variable":"p"}` | `-145397/500000 + 1 * p` |
| 28 | coordinate | `{"box":1146,"direction":"lo","value":"196767/1000000","variable":"q"}` | `-196767/1000000 + 1 * q` |
| 29 | coordinate | `{"box":1146,"direction":"lo","value":"225289/500000","variable":"v"}` | `-225289/500000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 13577000000 | 1 |
| 1 | 51249000000 | 7 |
| 2 | 23089000000 | 4 |
| 3 | 24835000000 | 5 |
| 4 | 45648000000 | 6 |
| 5 | 18113000000 | 0 |
| 6 | 64278000000 | 8 |
| 7 | 18015000000 | 9 |
| 8 | 58907000000 | 2 |
| 9 | 21046000000 | 3 |
| 10 | 13577000000 | 10, 24 |
| 11 | 45648000000 | 11, 25 |
| 12 | 51249000000 | 15, 21 |
| 13 | 18113000000 | 17, 21 |
| 14 | 23089000000 | 16, 20 |
| 15 | 24835000000 | 18, 20 |
| 16 | 63760000000 | 11, 12 |
| 17 | 24835000000 | 20, 22 |
| 18 | 18015000000 | 15, 24 |
| 19 | 18015000000 | 24, 28 |
| 20 | 64278000000 | 19, 24 |
| 21 | 58907000000 | 25, 26 |
| 22 | 23089000000 | 25, 27 |
| 23 | 58907000000 | 18, 25 |
| 24 | 45648000000 | 22, 25 |
| 25 | 5371000000 | 14, 19 |
| 26 | 18015000000 | 15, 16 |
| 27 | 18113000000 | 12, 27 |
| 28 | 18113000000 | 22, 28 |
| 29 | 24835000000 | 12, 18 |
| 30 | 24835000000 | 19, 22 |
| 31 | 64826000000 | 20, 21 |
| 32 | 6726799542 | 20 |
| 33 | 6727612827 | 21 |
| 34 | 303971 | 28 |
| 35 | 6382 | 10 |
| 36 | 15290204572 | 12 |
| 37 | 1000000 | 21, 23 |
| 38 | 103767 | 23 |
| 39 | 453298 | 18 |
| 40 | 146783 | 13 |
| 41 | 389259 | 29 |
| 42 | 447141 | 14 |
| 43 | 12220462985 | 25 |
| 44 | 743768 | 11 |
| 45 | 6365040828 | 15 |
| 46 | 143802 | 16 |
| 47 | 507798 | 22 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -5532914277860263/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -5532914277860263/1000000 | 1 | -5532914277860263/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1146 | -5532914277860263/1000000 |

## Stage 1147

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ-/BPS+/AQS-/AQR- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ-/BPS+/AQS-/AQR-:HLLLHHHHLH |
| Index | 0 |
| Context | 247 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1143 |
| Coordinate cut | v high 387093/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 145241/500000 | 103767/1000000 | 145241/500000 |
| c | 677279/1000000 | 1 | 677279/1000000 | 1 |
| e | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| f | 103767/1000000 | 12413/31250 | 103767/1000000 | 12413/31250 |
| h | 135501/250000 | 385501/500000 | 135501/250000 | 385501/500000 |
| p | 145397/500000 | 154789/250000 | 145397/500000 | 154789/250000 |
| q | 196767/1000000 | 308103/500000 | 196767/1000000 | 308103/500000 |
| u | 78479/200000 | 344349/500000 | 78479/200000 | 344349/500000 |
| v | 387093/500000 | 907/1000 | 387093/500000 | 907/1000 |
| r | 704889/1000000 | 1 | 704889/1000000 | 1 |
| w | 162657/200000 | 1 | 162657/200000 | 1 |
| j | 617289/1000000 | 896233/1000000 | 617289/1000000 | 896233/1000000 |
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
| 0 | physical | `{"factor":105,"stage":461}` | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 1 | physical | `{"factor":141,"stage":461}` | `1/1 * f + -1/1 * e` |
| 2 | physical | `{"factor":142,"stage":461}` | `1/1 * c * h + -135501/250000` |
| 3 | physical | `{"factor":90,"stage":461}` | `-1/1 * f * v + 1/1 * c * v + 1/1 * u + -1/1 * c + -93/1000` |
| 4 | coordinate | `{"box":1147,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 5 | coordinate | `{"box":1147,"direction":"hi","value":"59/125","variable":"e"}` | `59/125 + -1 * e` |
| 6 | coordinate | `{"box":1147,"direction":"hi","value":"12413/31250","variable":"f"}` | `12413/31250 + -1 * f` |
| 7 | coordinate | `{"box":1147,"direction":"hi","value":"385501/500000","variable":"h"}` | `385501/500000 + -1 * h` |
| 8 | coordinate | `{"box":1147,"direction":"hi","value":"344349/500000","variable":"u"}` | `344349/500000 + -1 * u` |
| 9 | coordinate | `{"box":1147,"direction":"lo","value":"677279/1000000","variable":"c"}` | `-677279/1000000 + 1 * c` |
| 10 | coordinate | `{"box":1147,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 11 | coordinate | `{"box":1147,"direction":"lo","value":"103767/1000000","variable":"f"}` | `-103767/1000000 + 1 * f` |
| 12 | coordinate | `{"box":1147,"direction":"lo","value":"78479/200000","variable":"u"}` | `-78479/200000 + 1 * u` |
| 13 | coordinate | `{"box":1147,"direction":"lo","value":"387093/500000","variable":"v"}` | `-387093/500000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 108155000000 | 3 |
| 1 | 204839000000 | 0 |
| 2 | 9133000000 | 1 |
| 3 | 31677000000 | 2 |
| 4 | 31677000000 | 7, 9 |
| 5 | 108155000000 | 4, 13 |
| 6 | 34488000000 | 10, 11 |
| 7 | 170351000000 | 5, 6 |
| 8 | 204839000000 | 5, 12 |
| 9 | 96684000000 | 6, 13 |
| 10 | 8000 | 8 |
| 11 | 117184 | 4 |
| 12 | 58279568256 | 13 |
| 13 | 10928 | 6 |
| 14 | 59707 | 10 |
| 15 | 21454166883 | 7 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -5650417179376789/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -5650417179376789/1000000 | 1 | -5650417179376789/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1147 | -5650417179376789/1000000 |

## Stage 1148

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ-/BPS+/AQS-/AQR- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ-/BPS+/AQS-/AQR-:HLLLHHHHH |
| Index | 0 |
| Context | 247 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1142 |
| Coordinate cut | f high 12413/31250 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 145241/500000 | 103767/1000000 | 145241/500000 |
| c | 677279/1000000 | 1 | 677279/1000000 | 1 |
| e | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| f | 12413/31250 | 131839/250000 | 12413/31250 | 131839/250000 |
| h | 135501/250000 | 385501/500000 | 135501/250000 | 385501/500000 |
| p | 145397/500000 | 154789/250000 | 145397/500000 | 154789/250000 |
| q | 196767/1000000 | 308103/500000 | 196767/1000000 | 308103/500000 |
| u | 78479/200000 | 344349/500000 | 78479/200000 | 344349/500000 |
| v | 225289/500000 | 907/1000 | 225289/500000 | 907/1000 |
| r | 704889/1000000 | 1 | 704889/1000000 | 1 |
| w | 162657/200000 | 1 | 162657/200000 | 1 |
| j | 617289/1000000 | 896233/1000000 | 617289/1000000 | 896233/1000000 |
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
| 1 | bound | `{"direction":"lo","ref":"461:1384","triangle":"FQR","value":"99699/1000000"}` | `1 * u * w + -1 * u + -1 * f * w + -1 * v * r + 1 * f * v + 1 * r + -99699/1000000` |
| 2 | bound | `{"direction":"lo","ref":"461:1486","triangle":"AQS","value":"3817/31250"}` | `-1 * u * k + 1 * a * u + 1 * v * j + -1 * a * j + -3817/31250` |
| 3 | physical | `{"factor":0,"stage":461}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 4 | physical | `{"factor":105,"stage":461}` | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 5 | physical | `{"factor":118,"stage":461}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 6 | physical | `{"factor":127,"stage":461}` | `1/1 * u * k + -1/1 * u + -1/1 * f * k + -1/1 * v * j + 1/1 * f * v + 1/1 * j + -93/1000` |
| 7 | physical | `{"factor":26,"stage":461}` | `1/1 * q + -1/1 * a + -1/1 * e * p + 1/1 * a * p + -93/1000` |
| 8 | physical | `{"factor":44,"stage":461}` | `-1/1 * u * w + 1/1 * a * u + 1/1 * v * r + -1/1 * a * r + -93/1000` |
| 9 | physical | `{"factor":63,"stage":461}` | `1/1 * w + -1/1 * b * w + -1/1 * e * r + 1/1 * b * e + -13857/20000` |
| 10 | physical | `{"factor":7,"stage":461}` | `1/1 * b * h + -1/1 * a * b + -93/1000` |
| 11 | physical | `{"factor":76,"stage":461}` | `1/1 * p * k + -1/1 * b * k + -1/1 * q * j + 1/1 * b * q + -93/1000` |
| 12 | physical | `{"factor":79,"stage":461}` | `-1/1 * r * k + 1/1 * b * k + 1/1 * w * j + -1/1 * b * w + -93/1000` |
| 13 | physical | `{"factor":90,"stage":461}` | `-1/1 * f * v + 1/1 * c * v + 1/1 * u + -1/1 * c + -93/1000` |
| 14 | physical | `{"factor":93,"stage":461}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 15 | coordinate | `{"box":1148,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 16 | coordinate | `{"box":1148,"direction":"hi","value":"145241/500000","variable":"b"}` | `145241/500000 + -1 * b` |
| 17 | coordinate | `{"box":1148,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 18 | coordinate | `{"box":1148,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 19 | coordinate | `{"box":1148,"direction":"hi","value":"896233/1000000","variable":"j"}` | `896233/1000000 + -1 * j` |
| 20 | coordinate | `{"box":1148,"direction":"hi","value":"896233/1000000","variable":"k"}` | `896233/1000000 + -1 * k` |
| 21 | coordinate | `{"box":1148,"direction":"hi","value":"59/125","variable":"e"}` | `59/125 + -1 * e` |
| 22 | coordinate | `{"box":1148,"direction":"hi","value":"385501/500000","variable":"h"}` | `385501/500000 + -1 * h` |
| 23 | coordinate | `{"box":1148,"direction":"hi","value":"154789/250000","variable":"p"}` | `154789/250000 + -1 * p` |
| 24 | coordinate | `{"box":1148,"direction":"hi","value":"308103/500000","variable":"q"}` | `308103/500000 + -1 * q` |
| 25 | coordinate | `{"box":1148,"direction":"hi","value":"344349/500000","variable":"u"}` | `344349/500000 + -1 * u` |
| 26 | coordinate | `{"box":1148,"direction":"hi","value":"907/1000","variable":"v"}` | `907/1000 + -1 * v` |
| 27 | coordinate | `{"box":1148,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 28 | coordinate | `{"box":1148,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 29 | coordinate | `{"box":1148,"direction":"lo","value":"704889/1000000","variable":"r"}` | `-704889/1000000 + 1 * r` |
| 30 | coordinate | `{"box":1148,"direction":"lo","value":"162657/200000","variable":"w"}` | `-162657/200000 + 1 * w` |
| 31 | coordinate | `{"box":1148,"direction":"lo","value":"617289/1000000","variable":"j"}` | `-617289/1000000 + 1 * j` |
| 32 | coordinate | `{"box":1148,"direction":"lo","value":"110021/250000","variable":"k"}` | `-110021/250000 + 1 * k` |
| 33 | coordinate | `{"box":1148,"direction":"lo","value":"677279/1000000","variable":"c"}` | `-677279/1000000 + 1 * c` |
| 34 | coordinate | `{"box":1148,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 35 | coordinate | `{"box":1148,"direction":"lo","value":"12413/31250","variable":"f"}` | `-12413/31250 + 1 * f` |
| 36 | coordinate | `{"box":1148,"direction":"lo","value":"145397/500000","variable":"p"}` | `-145397/500000 + 1 * p` |
| 37 | coordinate | `{"box":1148,"direction":"lo","value":"196767/1000000","variable":"q"}` | `-196767/1000000 + 1 * q` |
| 38 | coordinate | `{"box":1148,"direction":"lo","value":"225289/500000","variable":"v"}` | `-225289/500000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 9284000000 | 3 |
| 1 | 22275000000 | 10 |
| 2 | 15285000000 | 7 |
| 3 | 30221000000 | 8 |
| 4 | 315000000 | 2 |
| 5 | 26315000000 | 9 |
| 6 | 8985000000 | 0 |
| 7 | 1531000000 | 11 |
| 8 | 180000000 | 12 |
| 9 | 113608000000 | 13 |
| 10 | 13433000000 | 14 |
| 11 | 96225000000 | 4 |
| 12 | 180000000 | 5 |
| 13 | 6903000000 | 1 |
| 14 | 315000000 | 6 |
| 15 | 9284000000 | 15, 33 |
| 16 | 26315000000 | 21, 28 |
| 17 | 22275000000 | 22, 28 |
| 18 | 10516000000 | 24, 28 |
| 19 | 15285000000 | 23, 27 |
| 20 | 30536000000 | 25, 27 |
| 21 | 35480000000 | 16, 18 |
| 22 | 30221000000 | 27, 29 |
| 23 | 1351000000 | 28, 32 |
| 24 | 315000000 | 27, 31 |
| 25 | 13433000000 | 22, 33 |
| 26 | 13433000000 | 33, 37 |
| 27 | 113608000000 | 26, 33 |
| 28 | 96225000000 | 34, 35 |
| 29 | 15285000000 | 34, 36 |
| 30 | 96225000000 | 25, 34 |
| 31 | 26495000000 | 17, 21 |
| 32 | 180000000 | 19, 34 |
| 33 | 10165000000 | 35, 38 |
| 34 | 6903000000 | 30, 35 |
| 35 | 315000000 | 32, 35 |
| 36 | 13433000000 | 22, 23 |
| 37 | 8985000000 | 18, 36 |
| 38 | 8985000000 | 29, 37 |
| 39 | 1531000000 | 20, 36 |
| 40 | 1531000000 | 31, 37 |
| 41 | 23318000000 | 18, 25 |
| 42 | 23318000000 | 17, 38 |
| 43 | 31559000000 | 27, 28 |
| 44 | 3274939433 | 27 |
| 45 | 3274782753 | 28 |
| 46 | 172159 | 37 |
| 47 | 440718 | 18 |
| 48 | 608687 | 25 |
| 49 | 264645 | 33 |
| 50 | 388008 | 38 |
| 51 | 106643 | 32 |
| 52 | 43802 | 17 |
| 53 | 258822 | 31 |
| 54 | 19705 | 21 |
| 55 | 218362 | 16 |
| 56 | 3092176184 | 22 |
| 57 | 262857 | 23 |
| 58 | 20317837760 | 35 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -1152422034169507/250000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -1152422034169507/250000 | 1 | -1152422034169507/250000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1148 | -1152422034169507/250000 |

## Stage 1149

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ-/BPS+/AQS-/AQR- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ-/BPS+/AQS-/AQR-:HLLH |
| Index | 0 |
| Context | 247 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1133 |
| Coordinate cut | h high 385501/500000 |

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
| v | 225289/500000 | 907/1000 | 225289/500000 | 907/1000 |
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
