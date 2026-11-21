# BITT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 1295

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ+/BPR-/APS+/HQS+/EHQ- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ+/BPR-/APS+/HQS+/EHQ-:HLL |
| Index | 0 |
| Context | 278 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1294 |
| Coordinate cut | k low 550863/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 52193/500000 | 6143/20000 | 52193/500000 | 6143/20000 |
| b | 103839/1000000 | 102961/200000 | 103839/1000000 | 102961/200000 |
| c | 135501/250000 | 248671/250000 | 135501/250000 | 248671/250000 |
| e | 52197/500000 | 6143/20000 | 52197/500000 | 6143/20000 |
| f | 155759/500000 | 4303/6250 | 155759/500000 | 4303/6250 |
| h | 5449/10000 | 1 | 5449/10000 | 1 |
| p | 237747/1000000 | 327467/500000 | 237747/1000000 | 327467/500000 |
| q | 9849/50000 | 585529/1000000 | 9849/50000 | 585529/1000000 |
| u | 103839/1000000 | 493043/1000000 | 103839/1000000 | 493043/1000000 |
| v | 288097/500000 | 880573/1000000 | 288097/500000 | 880573/1000000 |
| r | 13857/20000 | 1 | 13857/20000 | 1 |
| w | 199311/250000 | 1 | 199311/250000 | 1 |
| j | 88359/125000 | 5601/6250 | 88359/125000 | 5601/6250 |
| k | 429103/1000000 | 550863/1000000 | 429103/1000000 | 550863/1000000 |

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
| 0 | bound | `{"direction":"lo","ref":"492:1536","triangle":"EHS","value":"88583/250000"}` | `1 * k + 1 * h * j + -1 * h + -1 * e * j + -88583/250000` |
| 1 | physical | `{"factor":106,"stage":492}` | `-1/1 * f * k + 1/1 * e * f + 1/1 * k + 1/1 * j + -1093/1000 + -1/1 * e * j` |
| 2 | physical | `{"factor":108,"stage":492}` | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 3 | physical | `{"factor":13,"stage":492}` | `1/1 * b * k + -1/1 * a * b + 1/1 * a * j + -279/1000` |
| 4 | physical | `{"factor":131,"stage":492}` | `1/1 * u * k + -1/1 * h * u + -1/1 * v * j + 1/1 * h * j + -93/1000` |
| 5 | physical | `{"factor":138,"stage":492}` | `1/1 * e + -1/1 * a` |
| 6 | physical | `{"factor":34,"stage":492}` | `1/1 * f * v + -1/1 * a * f + -1/1 * u + 1/1 * a * u + -93/1000` |
| 7 | physical | `{"factor":47,"stage":492}` | `1/1 * c * e + -1/1 * b * e + -93/1000` |
| 8 | physical | `{"factor":85,"stage":492}` | `1/1 * k + -1/1 * c * k + -1/1 * e * j + 1/1 * c * e + -93/1000` |
| 9 | coordinate | `{"box":1295,"direction":"hi","value":"5601/6250","variable":"j"}` | `5601/6250 + -1 * j` |
| 10 | coordinate | `{"box":1295,"direction":"hi","value":"550863/1000000","variable":"k"}` | `550863/1000000 + -1 * k` |
| 11 | coordinate | `{"box":1295,"direction":"hi","value":"248671/250000","variable":"c"}` | `248671/250000 + -1 * c` |
| 12 | coordinate | `{"box":1295,"direction":"hi","value":"6143/20000","variable":"e"}` | `6143/20000 + -1 * e` |
| 13 | coordinate | `{"box":1295,"direction":"hi","value":"4303/6250","variable":"f"}` | `4303/6250 + -1 * f` |
| 14 | coordinate | `{"box":1295,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 15 | coordinate | `{"box":1295,"direction":"hi","value":"493043/1000000","variable":"u"}` | `493043/1000000 + -1 * u` |
| 16 | coordinate | `{"box":1295,"direction":"hi","value":"880573/1000000","variable":"v"}` | `880573/1000000 + -1 * v` |
| 17 | coordinate | `{"box":1295,"direction":"lo","value":"52193/500000","variable":"a"}` | `-52193/500000 + 1 * a` |
| 18 | coordinate | `{"box":1295,"direction":"lo","value":"103839/1000000","variable":"b"}` | `-103839/1000000 + 1 * b` |
| 19 | coordinate | `{"box":1295,"direction":"lo","value":"88359/125000","variable":"j"}` | `-88359/125000 + 1 * j` |
| 20 | coordinate | `{"box":1295,"direction":"lo","value":"135501/250000","variable":"c"}` | `-135501/250000 + 1 * c` |
| 21 | coordinate | `{"box":1295,"direction":"lo","value":"52197/500000","variable":"e"}` | `-52197/500000 + 1 * e` |
| 22 | coordinate | `{"box":1295,"direction":"lo","value":"155759/500000","variable":"f"}` | `-155759/500000 + 1 * f` |
| 23 | coordinate | `{"box":1295,"direction":"lo","value":"5449/10000","variable":"h"}` | `-5449/10000 + 1 * h` |
| 24 | coordinate | `{"box":1295,"direction":"lo","value":"103839/1000000","variable":"u"}` | `-103839/1000000 + 1 * u` |
| 25 | coordinate | `{"box":1295,"direction":"lo","value":"288097/500000","variable":"v"}` | `-288097/500000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 4263000000 | 3 |
| 1 | 25408000000 | 6 |
| 2 | 18233000000 | 7 |
| 3 | 4263000000 | 8 |
| 4 | 26850000000 | 1 |
| 5 | 79921000000 | 2 |
| 6 | 23579000000 | 0 |
| 7 | 108702000000 | 4 |
| 8 | 7990000000 | 5 |
| 9 | 4263000000 | 17, 18 |
| 10 | 18233000000 | 18, 21 |
| 11 | 25408000000 | 17, 22 |
| 12 | 25408000000 | 15, 17 |
| 13 | 4263000000 | 10, 18 |
| 14 | 4263000000 | 9, 17 |
| 15 | 22497000000 | 11, 21 |
| 16 | 4263000000 | 10, 11 |
| 17 | 26850000000 | 13, 21 |
| 18 | 79921000000 | 21, 24 |
| 19 | 54693000000 | 19, 21 |
| 20 | 25408000000 | 13, 25 |
| 21 | 26850000000 | 10, 13 |
| 22 | 28781000000 | 14, 15 |
| 23 | 127767000000 | 9, 23 |
| 24 | 4514000000 | 14, 19 |
| 25 | 108702000000 | 10, 24 |
| 26 | 108702000000 | 9, 16 |
| 27 | 123560 | 24 |
| 28 | 1000000 | 20, 21 |
| 29 | 104394 | 20 |
| 30 | 611558 | 21 |
| 31 | 43696146743 | 10 |
| 32 | 1000000 | 12, 19 |
| 33 | 706872 | 12 |
| 34 | 307150 | 9 |
| 35 | 431470 | 19 |
| 36 | 484480 | 25 |
| 37 | 224345 | 14 |
| 38 | 148377 | 17 |
| 39 | 84351 | 18 |
| 40 | 5014 | 13 |
| 41 | 222849 | 11 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -6450556381371029/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -6450556381371029/1000000 | 1 | -6450556381371029/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1295 | -6450556381371029/1000000 |

## Stage 1296

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ+/BPR-/APS+/HQS+/EHQ- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ+/BPR-/APS+/HQS+/EHQ-:HLH |
| Index | 0 |
| Context | 278 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1294 |
| Coordinate cut | k high 550863/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 52193/500000 | 6143/20000 | 52193/500000 | 6143/20000 |
| b | 103839/1000000 | 102961/200000 | 103839/1000000 | 102961/200000 |
| c | 135501/250000 | 248671/250000 | 135501/250000 | 248671/250000 |
| e | 52197/500000 | 6143/20000 | 52197/500000 | 6143/20000 |
| f | 155759/500000 | 4303/6250 | 155759/500000 | 4303/6250 |
| h | 5449/10000 | 1 | 5449/10000 | 1 |
| p | 237747/1000000 | 327467/500000 | 237747/1000000 | 327467/500000 |
| q | 9849/50000 | 585529/1000000 | 9849/50000 | 585529/1000000 |
| u | 103839/1000000 | 493043/1000000 | 103839/1000000 | 493043/1000000 |
| v | 288097/500000 | 880573/1000000 | 288097/500000 | 880573/1000000 |
| r | 13857/20000 | 1 | 13857/20000 | 1 |
| w | 199311/250000 | 1 | 199311/250000 | 1 |
| j | 88359/125000 | 5601/6250 | 88359/125000 | 5601/6250 |
| k | 550863/1000000 | 864921/1000000 | 550863/1000000 | 864921/1000000 |

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


## Stage 1297

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ+/BPR-/APS+/HQS+/EHQ- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ+/BPR-/APS+/HQS+/EHQ-:HLHL |
| Index | 0 |
| Context | 278 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1296 |
| Coordinate cut | h low 41757/62500 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 52193/500000 | 6143/20000 | 52193/500000 | 6143/20000 |
| b | 103839/1000000 | 102961/200000 | 103839/1000000 | 102961/200000 |
| c | 135501/250000 | 248671/250000 | 135501/250000 | 248671/250000 |
| e | 52197/500000 | 6143/20000 | 52197/500000 | 6143/20000 |
| f | 155759/500000 | 4303/6250 | 155759/500000 | 4303/6250 |
| h | 5449/10000 | 41757/62500 | 5449/10000 | 41757/62500 |
| p | 237747/1000000 | 327467/500000 | 237747/1000000 | 327467/500000 |
| q | 9849/50000 | 585529/1000000 | 9849/50000 | 585529/1000000 |
| u | 103839/1000000 | 493043/1000000 | 103839/1000000 | 493043/1000000 |
| v | 288097/500000 | 880573/1000000 | 288097/500000 | 880573/1000000 |
| r | 13857/20000 | 1 | 13857/20000 | 1 |
| w | 199311/250000 | 1 | 199311/250000 | 1 |
| j | 88359/125000 | 5601/6250 | 88359/125000 | 5601/6250 |
| k | 550863/1000000 | 864921/1000000 | 550863/1000000 | 864921/1000000 |

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
| 0 | bound | `{"direction":"lo","ref":"492:1704","triangle":"BCP","value":"15327/125000"}` | `1 * c * q + -1 * b * q + -15327/125000` |
| 1 | bound | `{"direction":"lo","ref":"492:1949","triangle":"AFH","value":"73411/250000"}` | `1 * f * h + -1 * a * f + -73411/250000` |
| 2 | physical | `{"factor":0,"stage":492}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 3 | physical | `{"factor":116,"stage":492}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 4 | physical | `{"factor":65,"stage":492}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 5 | physical | `{"factor":72,"stage":492}` | `1/1 * b * k + 1/1 * h * j + -1/1 * b * h + -13857/20000` |
| 6 | physical | `{"factor":74,"stage":492}` | `-1/1 * p * w + 1/1 * b * w + 1/1 * q * r + -1/1 * b * q + -93/1000` |
| 7 | physical | `{"factor":78,"stage":492}` | `-1/1 * r * k + 1/1 * b * k + 1/1 * w * j + -1/1 * b * w + -93/1000` |
| 8 | physical | `{"factor":85,"stage":492}` | `1/1 * k + -1/1 * c * k + -1/1 * e * j + 1/1 * c * e + -93/1000` |
| 9 | physical | `{"factor":91,"stage":492}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 10 | coordinate | `{"box":1297,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 11 | coordinate | `{"box":1297,"direction":"hi","value":"102961/200000","variable":"b"}` | `102961/200000 + -1 * b` |
| 12 | coordinate | `{"box":1297,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 13 | coordinate | `{"box":1297,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 14 | coordinate | `{"box":1297,"direction":"hi","value":"5601/6250","variable":"j"}` | `5601/6250 + -1 * j` |
| 15 | coordinate | `{"box":1297,"direction":"hi","value":"864921/1000000","variable":"k"}` | `864921/1000000 + -1 * k` |
| 16 | coordinate | `{"box":1297,"direction":"hi","value":"248671/250000","variable":"c"}` | `248671/250000 + -1 * c` |
| 17 | coordinate | `{"box":1297,"direction":"hi","value":"6143/20000","variable":"e"}` | `6143/20000 + -1 * e` |
| 18 | coordinate | `{"box":1297,"direction":"hi","value":"41757/62500","variable":"h"}` | `41757/62500 + -1 * h` |
| 19 | coordinate | `{"box":1297,"direction":"hi","value":"327467/500000","variable":"p"}` | `327467/500000 + -1 * p` |
| 20 | coordinate | `{"box":1297,"direction":"hi","value":"585529/1000000","variable":"q"}` | `585529/1000000 + -1 * q` |
| 21 | coordinate | `{"box":1297,"direction":"lo","value":"52193/500000","variable":"a"}` | `-52193/500000 + 1 * a` |
| 22 | coordinate | `{"box":1297,"direction":"lo","value":"103839/1000000","variable":"b"}` | `-103839/1000000 + 1 * b` |
| 23 | coordinate | `{"box":1297,"direction":"lo","value":"13857/20000","variable":"r"}` | `-13857/20000 + 1 * r` |
| 24 | coordinate | `{"box":1297,"direction":"lo","value":"199311/250000","variable":"w"}` | `-199311/250000 + 1 * w` |
| 25 | coordinate | `{"box":1297,"direction":"lo","value":"88359/125000","variable":"j"}` | `-88359/125000 + 1 * j` |
| 26 | coordinate | `{"box":1297,"direction":"lo","value":"550863/1000000","variable":"k"}` | `-550863/1000000 + 1 * k` |
| 27 | coordinate | `{"box":1297,"direction":"lo","value":"135501/250000","variable":"c"}` | `-135501/250000 + 1 * c` |
| 28 | coordinate | `{"box":1297,"direction":"lo","value":"52197/500000","variable":"e"}` | `-52197/500000 + 1 * e` |
| 29 | coordinate | `{"box":1297,"direction":"lo","value":"155759/500000","variable":"f"}` | `-155759/500000 + 1 * f` |
| 30 | coordinate | `{"box":1297,"direction":"lo","value":"5449/10000","variable":"h"}` | `-5449/10000 + 1 * h` |
| 31 | coordinate | `{"box":1297,"direction":"lo","value":"237747/1000000","variable":"p"}` | `-237747/1000000 + 1 * p` |
| 32 | coordinate | `{"box":1297,"direction":"lo","value":"9849/50000","variable":"q"}` | `-9849/50000 + 1 * q` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 5735000000 | 2 |
| 1 | 16400000000 | 1 |
| 2 | 21627000000 | 0 |
| 3 | 46935000000 | 4 |
| 4 | 134961000000 | 5 |
| 5 | 25308000000 | 6 |
| 6 | 18453000000 | 7 |
| 7 | 20953000000 | 8 |
| 8 | 32371000000 | 9 |
| 9 | 20953000000 | 3 |
| 10 | 5735000000 | 21, 22 |
| 11 | 5735000000 | 16, 21 |
| 12 | 16400000000 | 21, 29 |
| 13 | 134961000000 | 11, 18 |
| 14 | 6854000000 | 13, 22 |
| 15 | 147547000000 | 15, 22 |
| 16 | 5868000000 | 11, 26 |
| 17 | 20953000000 | 16, 28 |
| 18 | 32371000000 | 18, 27 |
| 19 | 10744000000 | 16, 20 |
| 20 | 20953000000 | 15, 16 |
| 21 | 363000000 | 23, 28 |
| 22 | 20591000000 | 12, 17 |
| 23 | 16400000000 | 18, 29 |
| 24 | 46935000000 | 29, 32 |
| 25 | 32371000000 | 18, 19 |
| 26 | 75908000000 | 14, 30 |
| 27 | 25308000000 | 13, 19 |
| 28 | 25308000000 | 12, 32 |
| 29 | 2500000000 | 12, 26 |
| 30 | 2500000000 | 13, 14 |
| 31 | 453552 | 31 |
| 32 | 1042773 | 11 |
| 33 | 1000000 | 22, 26 |
| 34 | 550863 | 22 |
| 35 | 103839 | 26 |
| 36 | 59053000000 | 18, 25 |
| 37 | 41743266061 | 18 |
| 38 | 78316287136 | 14 |
| 39 | 1000000 | 11, 24 |
| 40 | 2849757639 | 13 |
| 41 | 394821 | 15 |
| 42 | 1000000 | 17, 23 |
| 43 | 692850 | 17 |
| 44 | 307150 | 12 |
| 45 | 100875 | 10 |
| 46 | 138545 | 27 |
| 47 | 149900 | 29 |
| 48 | 890698 | 28 |
| 49 | 17774 | 20 |
| 50 | 93332 | 23 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -3635407979875883/500000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -3635407979875883/500000 | 1 | -3635407979875883/500000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1297 | -3635407979875883/500000 |

## Stage 1298

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ+/BPR-/APS+/HQS+/EHQ- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ+/BPR-/APS+/HQS+/EHQ-:HLHH |
| Index | 0 |
| Context | 278 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1296 |
| Coordinate cut | h high 41757/62500 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 52193/500000 | 6143/20000 | 52193/500000 | 6143/20000 |
| b | 103839/1000000 | 102961/200000 | 103839/1000000 | 102961/200000 |
| c | 135501/250000 | 248671/250000 | 135501/250000 | 248671/250000 |
| e | 52197/500000 | 6143/20000 | 52197/500000 | 6143/20000 |
| f | 155759/500000 | 4303/6250 | 155759/500000 | 4303/6250 |
| h | 41757/62500 | 1 | 41757/62500 | 1 |
| p | 237747/1000000 | 327467/500000 | 237747/1000000 | 327467/500000 |
| q | 9849/50000 | 585529/1000000 | 9849/50000 | 585529/1000000 |
| u | 103839/1000000 | 493043/1000000 | 103839/1000000 | 493043/1000000 |
| v | 288097/500000 | 880573/1000000 | 288097/500000 | 880573/1000000 |
| r | 13857/20000 | 1 | 13857/20000 | 1 |
| w | 199311/250000 | 1 | 199311/250000 | 1 |
| j | 88359/125000 | 5601/6250 | 88359/125000 | 5601/6250 |
| k | 550863/1000000 | 864921/1000000 | 550863/1000000 | 864921/1000000 |

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


## Stage 1299

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ+/BPR-/APS+/HQS+/EHQ- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ+/BPR-/APS+/HQS+/EHQ-:HLHHL |
| Index | 0 |
| Context | 278 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1298 |
| Coordinate cut | p low 281849/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 52193/500000 | 6143/20000 | 52193/500000 | 6143/20000 |
| b | 103839/1000000 | 102961/200000 | 103839/1000000 | 102961/200000 |
| c | 135501/250000 | 248671/250000 | 135501/250000 | 248671/250000 |
| e | 52197/500000 | 6143/20000 | 52197/500000 | 6143/20000 |
| f | 155759/500000 | 4303/6250 | 155759/500000 | 4303/6250 |
| h | 41757/62500 | 1 | 41757/62500 | 1 |
| p | 237747/1000000 | 281849/500000 | 237747/1000000 | 281849/500000 |
| q | 9849/50000 | 585529/1000000 | 9849/50000 | 585529/1000000 |
| u | 103839/1000000 | 493043/1000000 | 103839/1000000 | 493043/1000000 |
| v | 288097/500000 | 880573/1000000 | 288097/500000 | 880573/1000000 |
| r | 13857/20000 | 1 | 13857/20000 | 1 |
| w | 199311/250000 | 1 | 199311/250000 | 1 |
| j | 88359/125000 | 5601/6250 | 88359/125000 | 5601/6250 |
| k | 550863/1000000 | 864921/1000000 | 550863/1000000 | 864921/1000000 |

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
