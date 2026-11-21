# BITT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 1290

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ+/BPR-/APS+/HQS+/EHQ+/CRS+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ+/BPR-/APS+/HQS+/EHQ+/CRS+:H |
| Index | 0 |
| Context | 276 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1280 |
| Coordinate cut | b high 33257/100000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 54661/500000 | 6143/20000 | 54661/500000 | 6143/20000 |
| b | 33257/100000 | 248183/500000 | 33257/100000 | 248183/500000 |
| c | 278343/500000 | 952521/1000000 | 278343/500000 | 952521/1000000 |
| e | 54683/500000 | 190601/500000 | 54683/500000 | 190601/500000 |
| f | 93761/250000 | 686741/1000000 | 93761/250000 | 686741/1000000 |
| h | 200543/250000 | 1 | 200543/250000 | 1 |
| p | 25141/100000 | 647219/1000000 | 25141/100000 | 647219/1000000 |
| q | 100219/500000 | 6809/12500 | 100219/500000 | 6809/12500 |
| u | 83233/500000 | 422291/1000000 | 83233/500000 | 422291/1000000 |
| v | 491141/1000000 | 804093/1000000 | 491141/1000000 | 804093/1000000 |
| r | 729401/1000000 | 1 | 729401/1000000 | 1 |
| w | 799267/1000000 | 1 | 799267/1000000 | 1 |
| j | 70833/100000 | 895581/1000000 | 70833/100000 | 895581/1000000 |
| k | 6618/15625 | 212871/250000 | 6618/15625 | 212871/250000 |

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
| 0 | bound | `{"direction":"lo","ref":"490:2495","triangle":"BCP","value":"31843/250000"}` | `1 * c * q + -1 * b * q + -31843/250000` |
| 1 | bound | `{"direction":"lo","ref":"490:3178","triangle":"CEH","value":"414881/1000000"}` | `1 * h + -1 * c * h + 1 * c * e + -414881/1000000` |
| 2 | bound | `{"direction":"lo","ref":"490:3296","triangle":"BFR","value":"209419/500000"}` | `-1 * f * w + 1 * b * w + 1 * r + -1 * b + -209419/500000` |
| 3 | physical | `{"factor":110,"stage":490}` | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -93/1000` |
| 4 | physical | `{"factor":121,"stage":490}` | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 5 | physical | `{"factor":129,"stage":490}` | `1/1 * p * v + -1/1 * h * p + -1/1 * q * u + 1/1 * h * u + -93/1000` |
| 6 | physical | `{"factor":30,"stage":490}` | `1/1 * w + -1/1 * a + -1/1 * e * r + 1/1 * a * r + -13857/20000` |
| 7 | physical | `{"factor":35,"stage":490}` | `1/1 * f * v + -1/1 * a * f + -1/1 * u + 1/1 * a * u + -93/1000` |
| 8 | physical | `{"factor":67,"stage":490}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 9 | physical | `{"factor":76,"stage":490}` | `-1/1 * p * w + 1/1 * b * w + 1/1 * q * r + -1/1 * b * q + -93/1000` |
| 10 | physical | `{"factor":94,"stage":490}` | `1/1 * c * v + 1/1 * h * u + -1/1 * c * h + -93/1000` |
| 11 | physical | `{"factor":97,"stage":490}` | `-1/1 * p * v + 1/1 * c * v + 1/1 * q * u + -1/1 * c * q + -93/1000` |
| 12 | coordinate | `{"box":1290,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 13 | coordinate | `{"box":1290,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 14 | coordinate | `{"box":1290,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 15 | coordinate | `{"box":1290,"direction":"hi","value":"952521/1000000","variable":"c"}` | `952521/1000000 + -1 * c` |
| 16 | coordinate | `{"box":1290,"direction":"hi","value":"190601/500000","variable":"e"}` | `190601/500000 + -1 * e` |
| 17 | coordinate | `{"box":1290,"direction":"hi","value":"686741/1000000","variable":"f"}` | `686741/1000000 + -1 * f` |
| 18 | coordinate | `{"box":1290,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 19 | coordinate | `{"box":1290,"direction":"hi","value":"647219/1000000","variable":"p"}` | `647219/1000000 + -1 * p` |
| 20 | coordinate | `{"box":1290,"direction":"hi","value":"6809/12500","variable":"q"}` | `6809/12500 + -1 * q` |
| 21 | coordinate | `{"box":1290,"direction":"hi","value":"422291/1000000","variable":"u"}` | `422291/1000000 + -1 * u` |
| 22 | coordinate | `{"box":1290,"direction":"hi","value":"804093/1000000","variable":"v"}` | `804093/1000000 + -1 * v` |
| 23 | coordinate | `{"box":1290,"direction":"lo","value":"54661/500000","variable":"a"}` | `-54661/500000 + 1 * a` |
| 24 | coordinate | `{"box":1290,"direction":"lo","value":"33257/100000","variable":"b"}` | `-33257/100000 + 1 * b` |
| 25 | coordinate | `{"box":1290,"direction":"lo","value":"799267/1000000","variable":"w"}` | `-799267/1000000 + 1 * w` |
| 26 | coordinate | `{"box":1290,"direction":"lo","value":"278343/500000","variable":"c"}` | `-278343/500000 + 1 * c` |
| 27 | coordinate | `{"box":1290,"direction":"lo","value":"54683/500000","variable":"e"}` | `-54683/500000 + 1 * e` |
| 28 | coordinate | `{"box":1290,"direction":"lo","value":"93761/250000","variable":"f"}` | `-93761/250000 + 1 * f` |
| 29 | coordinate | `{"box":1290,"direction":"lo","value":"100219/500000","variable":"q"}` | `-100219/500000 + 1 * q` |
| 30 | coordinate | `{"box":1290,"direction":"lo","value":"83233/500000","variable":"u"}` | `-83233/500000 + 1 * u` |
| 31 | coordinate | `{"box":1290,"direction":"lo","value":"491141/1000000","variable":"v"}` | `-491141/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 28655000000 | 6 |
| 1 | 24869000000 | 7 |
| 2 | 43613000000 | 0 |
| 3 | 69786000000 | 8 |
| 4 | 2545000000 | 2 |
| 5 | 26173000000 | 9 |
| 6 | 19391000000 | 1 |
| 7 | 16397000000 | 10 |
| 8 | 43613000000 | 11 |
| 9 | 61183000000 | 3 |
| 10 | 28422000000 | 4 |
| 11 | 43613000000 | 5 |
| 12 | 21099000000 | 23, 28 |
| 13 | 3770000000 | 12, 17 |
| 14 | 24869000000 | 21, 23 |
| 15 | 28718000000 | 14, 24 |
| 16 | 28655000000 | 13, 23 |
| 17 | 19391000000 | 15, 27 |
| 18 | 35788000000 | 15, 18 |
| 19 | 13402000000 | 22, 26 |
| 20 | 46609000000 | 15, 31 |
| 21 | 61183000000 | 16, 30 |
| 22 | 28655000000 | 13, 16 |
| 23 | 28422000000 | 18, 28 |
| 24 | 69786000000 | 28, 29 |
| 25 | 24869000000 | 22, 28 |
| 26 | 30967000000 | 14, 17 |
| 27 | 43613000000 | 18, 19 |
| 28 | 1173000000 | 18, 21 |
| 29 | 28422000000 | 13, 18 |
| 30 | 26173000000 | 14, 19 |
| 31 | 26173000000 | 13, 29 |
| 32 | 226174 | 25 |
| 33 | 112047 | 23 |
| 34 | 189216 | 30 |
| 35 | 43613000000 | 24 |
| 36 | 342374 | 13 |
| 37 | 169430 | 18 |
| 38 | 1000000 | 26, 31 |
| 39 | 491141 | 26 |
| 40 | 556686 | 31 |
| 41 | 726297 | 22 |
| 42 | 317829 | 28 |
| 43 | 761361 | 15 |
| 44 | 223989 | 16 |
| 45 | 179416 | 20 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -1903954332562439/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -1903954332562439/1000000 | 1 | -1903954332562439/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1290 | -1903954332562439/1000000 |

## Stage 1291

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ+/BPR-/APS+/HQS+/EHQ- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ+/BPR-/APS+/HQS+/EHQ-:root |
| Index | 0 |
| Context | 278 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 492 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 52193/500000 | 6143/20000 | 52193/500000 | 6143/20000 |
| b | 103839/1000000 | 64073/100000 | 103839/1000000 | 64073/100000 |
| c | 135501/250000 | 248671/250000 | 135501/250000 | 248671/250000 |
| e | 52197/500000 | 6143/20000 | 52197/500000 | 6143/20000 |
| f | 155759/500000 | 4303/6250 | 155759/500000 | 4303/6250 |
| h | 5449/10000 | 1 | 5449/10000 | 1 |
| p | 237747/1000000 | 327467/500000 | 237747/1000000 | 327467/500000 |
| q | 9849/50000 | 585529/1000000 | 9849/50000 | 585529/1000000 |
| u | 103839/1000000 | 493043/1000000 | 103839/1000000 | 493043/1000000 |
| v | 42071/100000 | 880573/1000000 | 42071/100000 | 880573/1000000 |
| r | 13857/20000 | 1 | 13857/20000 | 1 |
| w | 199311/250000 | 1 | 199311/250000 | 1 |
| j | 88359/125000 | 5601/6250 | 88359/125000 | 5601/6250 |
| k | 429103/1000000 | 864921/1000000 | 429103/1000000 | 864921/1000000 |

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


## Stage 1292

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ+/BPR-/APS+/HQS+/EHQ- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ+/BPR-/APS+/HQS+/EHQ-:L |
| Index | 0 |
| Context | 278 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1291 |
| Coordinate cut | v low 288097/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 52193/500000 | 6143/20000 | 52193/500000 | 6143/20000 |
| b | 103839/1000000 | 64073/100000 | 103839/1000000 | 64073/100000 |
| c | 135501/250000 | 248671/250000 | 135501/250000 | 248671/250000 |
| e | 52197/500000 | 6143/20000 | 52197/500000 | 6143/20000 |
| f | 155759/500000 | 4303/6250 | 155759/500000 | 4303/6250 |
| h | 5449/10000 | 1 | 5449/10000 | 1 |
| p | 237747/1000000 | 327467/500000 | 237747/1000000 | 327467/500000 |
| q | 9849/50000 | 585529/1000000 | 9849/50000 | 585529/1000000 |
| u | 103839/1000000 | 493043/1000000 | 103839/1000000 | 493043/1000000 |
| v | 42071/100000 | 288097/500000 | 42071/100000 | 288097/500000 |
| r | 13857/20000 | 1 | 13857/20000 | 1 |
| w | 199311/250000 | 1 | 199311/250000 | 1 |
| j | 88359/125000 | 5601/6250 | 88359/125000 | 5601/6250 |
| k | 429103/1000000 | 864921/1000000 | 429103/1000000 | 864921/1000000 |

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
| 1 | bound | `{"direction":"lo","ref":"492:1785","triangle":"BCQ","value":"32649/100000"}` | `1 * c * v + -1 * b * v + -32649/100000` |
| 2 | physical | `{"factor":0,"stage":492}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 3 | physical | `{"factor":108,"stage":492}` | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 4 | physical | `{"factor":116,"stage":492}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 5 | physical | `{"factor":131,"stage":492}` | `1/1 * u * k + -1/1 * h * u + -1/1 * v * j + 1/1 * h * j + -93/1000` |
| 6 | physical | `{"factor":135,"stage":492}` | `-1/1 * r * k + 1/1 * q * r + 1/1 * p * k + 1/1 * w * j + -1/1 * p * w + -1/1 * q * j + -93/1000` |
| 7 | physical | `{"factor":34,"stage":492}` | `1/1 * f * v + -1/1 * a * f + -1/1 * u + 1/1 * a * u + -93/1000` |
| 8 | physical | `{"factor":47,"stage":492}` | `1/1 * c * e + -1/1 * b * e + -93/1000` |
| 9 | physical | `{"factor":65,"stage":492}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 10 | physical | `{"factor":72,"stage":492}` | `1/1 * b * k + 1/1 * h * j + -1/1 * b * h + -13857/20000` |
| 11 | physical | `{"factor":74,"stage":492}` | `-1/1 * p * w + 1/1 * b * w + 1/1 * q * r + -1/1 * b * q + -93/1000` |
| 12 | physical | `{"factor":75,"stage":492}` | `-1/1 * p * k + 1/1 * b * k + 1/1 * q * j + -1/1 * b * q + -93/1000` |
| 13 | physical | `{"factor":85,"stage":492}` | `1/1 * k + -1/1 * c * k + -1/1 * e * j + 1/1 * c * e + -93/1000` |
| 14 | physical | `{"factor":91,"stage":492}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 15 | coordinate | `{"box":1292,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 16 | coordinate | `{"box":1292,"direction":"hi","value":"64073/100000","variable":"b"}` | `64073/100000 + -1 * b` |
| 17 | coordinate | `{"box":1292,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 18 | coordinate | `{"box":1292,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 19 | coordinate | `{"box":1292,"direction":"hi","value":"5601/6250","variable":"j"}` | `5601/6250 + -1 * j` |
| 20 | coordinate | `{"box":1292,"direction":"hi","value":"864921/1000000","variable":"k"}` | `864921/1000000 + -1 * k` |
| 21 | coordinate | `{"box":1292,"direction":"hi","value":"248671/250000","variable":"c"}` | `248671/250000 + -1 * c` |
| 22 | coordinate | `{"box":1292,"direction":"hi","value":"6143/20000","variable":"e"}` | `6143/20000 + -1 * e` |
| 23 | coordinate | `{"box":1292,"direction":"hi","value":"4303/6250","variable":"f"}` | `4303/6250 + -1 * f` |
| 24 | coordinate | `{"box":1292,"direction":"hi","value":"327467/500000","variable":"p"}` | `327467/500000 + -1 * p` |
| 25 | coordinate | `{"box":1292,"direction":"hi","value":"585529/1000000","variable":"q"}` | `585529/1000000 + -1 * q` |
| 26 | coordinate | `{"box":1292,"direction":"hi","value":"493043/1000000","variable":"u"}` | `493043/1000000 + -1 * u` |
| 27 | coordinate | `{"box":1292,"direction":"hi","value":"288097/500000","variable":"v"}` | `288097/500000 + -1 * v` |
| 28 | coordinate | `{"box":1292,"direction":"lo","value":"52193/500000","variable":"a"}` | `-52193/500000 + 1 * a` |
| 29 | coordinate | `{"box":1292,"direction":"lo","value":"103839/1000000","variable":"b"}` | `-103839/1000000 + 1 * b` |
| 30 | coordinate | `{"box":1292,"direction":"lo","value":"199311/250000","variable":"w"}` | `-199311/250000 + 1 * w` |
| 31 | coordinate | `{"box":1292,"direction":"lo","value":"429103/1000000","variable":"k"}` | `-429103/1000000 + 1 * k` |
| 32 | coordinate | `{"box":1292,"direction":"lo","value":"135501/250000","variable":"c"}` | `-135501/250000 + 1 * c` |
| 33 | coordinate | `{"box":1292,"direction":"lo","value":"52197/500000","variable":"e"}` | `-52197/500000 + 1 * e` |
| 34 | coordinate | `{"box":1292,"direction":"lo","value":"155759/500000","variable":"f"}` | `-155759/500000 + 1 * f` |
| 35 | coordinate | `{"box":1292,"direction":"lo","value":"5449/10000","variable":"h"}` | `-5449/10000 + 1 * h` |
| 36 | coordinate | `{"box":1292,"direction":"lo","value":"237747/1000000","variable":"p"}` | `-237747/1000000 + 1 * p` |
| 37 | coordinate | `{"box":1292,"direction":"lo","value":"9849/50000","variable":"q"}` | `-9849/50000 + 1 * q` |
| 38 | coordinate | `{"box":1292,"direction":"lo","value":"103839/1000000","variable":"u"}` | `-103839/1000000 + 1 * u` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 12068000000 | 2 |
| 1 | 55010000000 | 7 |
| 2 | 10416000000 | 8 |
| 3 | 4301000000 | 0 |
| 4 | 2090000000 | 1 |
| 5 | 25276000000 | 9 |
| 6 | 33374000000 | 10 |
| 7 | 13416000000 | 11 |
| 8 | 7559000000 | 12 |
| 9 | 7559000000 | 13 |
| 10 | 7893000000 | 14 |
| 11 | 88976000000 | 3 |
| 12 | 7559000000 | 4 |
| 13 | 31477000000 | 5 |
| 14 | 7559000000 | 6 |
| 15 | 12068000000 | 28, 29 |
| 16 | 12068000000 | 21, 28 |
| 17 | 10416000000 | 29, 33 |
| 18 | 55010000000 | 15, 23 |
| 19 | 33374000000 | 29, 35 |
| 20 | 2090000000 | 16, 27 |
| 21 | 55010000000 | 26, 28 |
| 22 | 4503000000 | 18, 29 |
| 23 | 8913000000 | 16, 30 |
| 24 | 40934000000 | 20, 29 |
| 25 | 17976000000 | 21, 33 |
| 26 | 7893000000 | 21, 35 |
| 27 | 3592000000 | 21, 25 |
| 28 | 2090000000 | 27, 32 |
| 29 | 7559000000 | 20, 21 |
| 30 | 88976000000 | 33, 38 |
| 31 | 7559000000 | 17, 22 |
| 32 | 25276000000 | 23, 25 |
| 33 | 55010000000 | 27, 34 |
| 34 | 7893000000 | 35, 36 |
| 35 | 57499000000 | 26, 35 |
| 36 | 64851000000 | 19, 35 |
| 37 | 20975000000 | 18, 24 |
| 38 | 20975000000 | 17, 37 |
| 39 | 31477000000 | 20, 38 |
| 40 | 31477000000 | 19, 27 |
| 41 | 36733 | 26 |
| 42 | 1000000 | 32, 33 |
| 43 | 104394 | 32 |
| 44 | 542004 | 33 |
| 45 | 104300 | 24 |
| 46 | 675774 | 16 |
| 47 | 1000000 | 29, 31 |
| 48 | 429103 | 29 |
| 49 | 103839 | 31 |
| 50 | 269473 | 20 |
| 51 | 77697839520 | 27 |
| 52 | 667428 | 35 |
| 53 | 172857 | 18 |
| 54 | 271910 | 28 |
| 55 | 299945 | 21 |
| 56 | 673696 | 22 |
| 57 | 279436 | 23 |
| 58 | 74592 | 25 |
| 59 | 1809908650 | 17 |
| 60 | 17200451362 | 19 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -1898959396646429/500000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -1898959396646429/500000 | 1 | -1898959396646429/500000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1292 | -1898959396646429/500000 |

## Stage 1293

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ+/BPR-/APS+/HQS+/EHQ- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ+/BPR-/APS+/HQS+/EHQ-:H |
| Index | 0 |
| Context | 278 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1291 |
| Coordinate cut | v high 288097/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 52193/500000 | 6143/20000 | 52193/500000 | 6143/20000 |
| b | 103839/1000000 | 64073/100000 | 103839/1000000 | 64073/100000 |
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
| k | 429103/1000000 | 864921/1000000 | 429103/1000000 | 864921/1000000 |

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


## Stage 1294

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ+/BPR-/APS+/HQS+/EHQ- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ+/BPR-/APS+/HQS+/EHQ-:HL |
| Index | 0 |
| Context | 278 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1293 |
| Coordinate cut | b low 102961/200000 |

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
| k | 429103/1000000 | 864921/1000000 | 429103/1000000 | 864921/1000000 |

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
