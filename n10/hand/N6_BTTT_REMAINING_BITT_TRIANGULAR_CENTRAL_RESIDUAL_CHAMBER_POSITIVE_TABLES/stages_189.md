# BITT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 945

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP+/BQS-/PQS+/QRS-/EPQ+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP+/BQS-/PQS+/QRS-/EPQ+:LLLHLHLH |
| Index | 0 |
| Context | 171 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 933 |
| Coordinate cut | f high 556921/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 112077/250000 | 103767/1000000 | 112077/250000 |
| b | 103767/1000000 | 447123/1000000 | 103767/1000000 | 447123/1000000 |
| c | 135501/250000 | 1 | 135501/250000 | 1 |
| e | 103767/1000000 | 112077/250000 | 103767/1000000 | 112077/250000 |
| f | 556921/1000000 | 344349/500000 | 556921/1000000 | 344349/500000 |
| h | 721163/1000000 | 1 | 721163/1000000 | 1 |
| p | 22907/200000 | 10229/25000 | 22907/200000 | 10229/25000 |
| q | 312379/1000000 | 158779/250000 | 312379/1000000 | 158779/250000 |
| u | 155651/500000 | 750147/1000000 | 155651/500000 | 750147/1000000 |
| v | 103767/1000000 | 272719/500000 | 103767/1000000 | 272719/500000 |
| r | 353273/500000 | 1 | 353273/500000 | 1 |
| w | 796617/1000000 | 1 | 796617/1000000 | 1 |
| j | 353117/500000 | 896233/1000000 | 353117/500000 | 896233/1000000 |
| k | 361741/1000000 | 616377/1000000 | 361741/1000000 | 616377/1000000 |

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
| 0 | bound | `{"direction":"lo","ref":"385:1320","triangle":"CEP","value":"319469/1000000"}` | `1 * q + -1 * c * q + -1 * e * p + 1 * c * e + -319469/1000000` |
| 1 | physical | `{"factor":109,"stage":385}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 2 | physical | `{"factor":131,"stage":385}` | `1/1 * e + -1/1 * a` |
| 3 | physical | `{"factor":41,"stage":385}` | `1/1 * p * w + -1/1 * a * p + -1/1 * q * r + 1/1 * a * r + -93/1000` |
| 4 | physical | `{"factor":99,"stage":385}` | `-1/1 * f * k + 1/1 * e * f + 1/1 * k + 1/1 * j + -1093/1000 + -1/1 * e * j` |
| 5 | coordinate | `{"box":945,"direction":"hi","value":"112077/250000","variable":"a"}` | `112077/250000 + -1 * a` |
| 6 | coordinate | `{"box":945,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 7 | coordinate | `{"box":945,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 8 | coordinate | `{"box":945,"direction":"hi","value":"896233/1000000","variable":"j"}` | `896233/1000000 + -1 * j` |
| 9 | coordinate | `{"box":945,"direction":"hi","value":"616377/1000000","variable":"k"}` | `616377/1000000 + -1 * k` |
| 10 | coordinate | `{"box":945,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 11 | coordinate | `{"box":945,"direction":"hi","value":"112077/250000","variable":"e"}` | `112077/250000 + -1 * e` |
| 12 | coordinate | `{"box":945,"direction":"hi","value":"344349/500000","variable":"f"}` | `344349/500000 + -1 * f` |
| 13 | coordinate | `{"box":945,"direction":"hi","value":"10229/25000","variable":"p"}` | `10229/25000 + -1 * p` |
| 14 | coordinate | `{"box":945,"direction":"hi","value":"158779/250000","variable":"q"}` | `158779/250000 + -1 * q` |
| 15 | coordinate | `{"box":945,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 16 | coordinate | `{"box":945,"direction":"lo","value":"353273/500000","variable":"r"}` | `-353273/500000 + 1 * r` |
| 17 | coordinate | `{"box":945,"direction":"lo","value":"361741/1000000","variable":"k"}` | `-361741/1000000 + 1 * k` |
| 18 | coordinate | `{"box":945,"direction":"lo","value":"135501/250000","variable":"c"}` | `-135501/250000 + 1 * c` |
| 19 | coordinate | `{"box":945,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 20 | coordinate | `{"box":945,"direction":"lo","value":"556921/1000000","variable":"f"}` | `-556921/1000000 + 1 * f` |
| 21 | coordinate | `{"box":945,"direction":"lo","value":"22907/200000","variable":"p"}` | `-22907/200000 + 1 * p` |
| 22 | coordinate | `{"box":945,"direction":"lo","value":"312379/1000000","variable":"q"}` | `-312379/1000000 + 1 * q` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 24939000000 | 3 |
| 1 | 54453000000 | 0 |
| 2 | 92348000000 | 4 |
| 3 | 92348000000 | 1 |
| 4 | 14735000000 | 2 |
| 5 | 24939000000 | 5, 13 |
| 6 | 24939000000 | 6, 15 |
| 7 | 32970000000 | 11, 18 |
| 8 | 21483000000 | 10, 19 |
| 9 | 54453000000 | 18, 22 |
| 10 | 92348000000 | 11, 20 |
| 11 | 30919000000 | 19, 21 |
| 12 | 23534000000 | 11, 13 |
| 13 | 92348000000 | 6, 11 |
| 14 | 60953000000 | 17, 20 |
| 15 | 31395000000 | 9, 12 |
| 16 | 24939000000 | 7, 21 |
| 17 | 24939000000 | 6, 14 |
| 18 | 88666000000 | 9, 16 |
| 19 | 92348000000 | 7, 8 |
| 20 | 256188 | 14 |
| 21 | 10760928213 | 9 |
| 22 | 3682000000 | 6, 17 |
| 23 | 1331953549 | 6 |
| 24 | 12439063281 | 7 |
| 25 | 66717 | 19 |
| 26 | 41240 | 15 |
| 27 | 205557 | 21 |
| 28 | 32466 | 18 |
| 29 | 7904 | 20 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -3433509584059383/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -3433509584059383/1000000 | 1 | -3433509584059383/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 945 | -3433509584059383/1000000 |

## Stage 946

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP+/BQS-/PQS+/QRS-/EPQ+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP+/BQS-/PQS+/QRS-/EPQ+:LLLHLHH |
| Index | 0 |
| Context | 171 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 932 |
| Coordinate cut | p high 10229/25000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 112077/250000 | 103767/1000000 | 112077/250000 |
| b | 103767/1000000 | 447123/1000000 | 103767/1000000 | 447123/1000000 |
| c | 135501/250000 | 1 | 135501/250000 | 1 |
| e | 103767/1000000 | 112077/250000 | 103767/1000000 | 112077/250000 |
| f | 279/1000 | 344349/500000 | 279/1000 | 344349/500000 |
| h | 721163/1000000 | 1 | 721163/1000000 | 1 |
| p | 10229/25000 | 568313/1000000 | 10229/25000 | 568313/1000000 |
| q | 312379/1000000 | 158779/250000 | 312379/1000000 | 158779/250000 |
| u | 155651/500000 | 750147/1000000 | 155651/500000 | 750147/1000000 |
| v | 103767/1000000 | 272719/500000 | 103767/1000000 | 272719/500000 |
| r | 353273/500000 | 1 | 353273/500000 | 1 |
| w | 796617/1000000 | 1 | 796617/1000000 | 1 |
| j | 353117/500000 | 896233/1000000 | 353117/500000 | 896233/1000000 |
| k | 361741/1000000 | 616377/1000000 | 361741/1000000 | 616377/1000000 |

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
| 0 | bound | `{"direction":"lo","ref":"385:1320","triangle":"CEP","value":"319469/1000000"}` | `1 * q + -1 * c * q + -1 * e * p + 1 * c * e + -319469/1000000` |
| 1 | bound | `{"direction":"lo","ref":"385:1419","triangle":"BPS","value":"145381/500000"}` | `-1 * p * k + 1 * b * k + 1 * q * j + -1 * b * q + -145381/500000` |
| 2 | physical | `{"factor":109,"stage":385}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 3 | physical | `{"factor":112,"stage":385}` | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 4 | physical | `{"factor":29,"stage":385}` | `1/1 * w + -1/1 * a + -1/1 * e * r + 1/1 * a * r + -13857/20000` |
| 5 | physical | `{"factor":63,"stage":385}` | `1/1 * f * q + -1/1 * b * q + -1/1 * p + 1/1 * b + -93/1000` |
| 6 | physical | `{"factor":86,"stage":385}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 7 | physical | `{"factor":99,"stage":385}` | `-1/1 * f * k + 1/1 * e * f + 1/1 * k + 1/1 * j + -1093/1000 + -1/1 * e * j` |
| 8 | coordinate | `{"box":946,"direction":"hi","value":"447123/1000000","variable":"b"}` | `447123/1000000 + -1 * b` |
| 9 | coordinate | `{"box":946,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 10 | coordinate | `{"box":946,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 11 | coordinate | `{"box":946,"direction":"hi","value":"896233/1000000","variable":"j"}` | `896233/1000000 + -1 * j` |
| 12 | coordinate | `{"box":946,"direction":"hi","value":"616377/1000000","variable":"k"}` | `616377/1000000 + -1 * k` |
| 13 | coordinate | `{"box":946,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 14 | coordinate | `{"box":946,"direction":"hi","value":"112077/250000","variable":"e"}` | `112077/250000 + -1 * e` |
| 15 | coordinate | `{"box":946,"direction":"hi","value":"344349/500000","variable":"f"}` | `344349/500000 + -1 * f` |
| 16 | coordinate | `{"box":946,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 17 | coordinate | `{"box":946,"direction":"hi","value":"158779/250000","variable":"q"}` | `158779/250000 + -1 * q` |
| 18 | coordinate | `{"box":946,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 19 | coordinate | `{"box":946,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 20 | coordinate | `{"box":946,"direction":"lo","value":"353273/500000","variable":"r"}` | `-353273/500000 + 1 * r` |
| 21 | coordinate | `{"box":946,"direction":"lo","value":"361741/1000000","variable":"k"}` | `-361741/1000000 + 1 * k` |
| 22 | coordinate | `{"box":946,"direction":"lo","value":"135501/250000","variable":"c"}` | `-135501/250000 + 1 * c` |
| 23 | coordinate | `{"box":946,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 24 | coordinate | `{"box":946,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 25 | coordinate | `{"box":946,"direction":"lo","value":"721163/1000000","variable":"h"}` | `-721163/1000000 + 1 * h` |
| 26 | coordinate | `{"box":946,"direction":"lo","value":"10229/25000","variable":"p"}` | `-10229/25000 + 1 * p` |
| 27 | coordinate | `{"box":946,"direction":"lo","value":"312379/1000000","variable":"q"}` | `-312379/1000000 + 1 * q` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 3573000000 | 4 |
| 1 | 11568000000 | 5 |
| 2 | 30956000000 | 1 |
| 3 | 132518000000 | 0 |
| 4 | 34146000000 | 6 |
| 5 | 21501000000 | 7 |
| 6 | 7324000000 | 2 |
| 7 | 6291000000 | 3 |
| 8 | 42524000000 | 8, 17 |
| 9 | 3573000000 | 9, 18 |
| 10 | 16657000000 | 12, 19 |
| 11 | 14299000000 | 8, 21 |
| 12 | 132518000000 | 14, 22 |
| 13 | 34146000000 | 16, 22 |
| 14 | 38099000000 | 22, 27 |
| 15 | 128565000000 | 13, 17 |
| 16 | 21501000000 | 14, 24 |
| 17 | 132518000000 | 23, 26 |
| 18 | 10897000000 | 9, 14 |
| 19 | 14177000000 | 11, 14 |
| 20 | 6291000000 | 16, 24 |
| 21 | 11568000000 | 15, 27 |
| 22 | 6291000000 | 10, 15 |
| 23 | 21501000000 | 12, 15 |
| 24 | 34146000000 | 25, 26 |
| 25 | 6291000000 | 9, 16 |
| 26 | 7324000000 | 12, 20 |
| 27 | 7324000000 | 10, 11 |
| 28 | 30956000000 | 21, 26 |
| 29 | 30956000000 | 11, 27 |
| 30 | 390390 | 10 |
| 31 | 61141881500 | 26 |
| 32 | 146536 | 19 |
| 33 | 378364 | 17 |
| 34 | 51058 | 21 |
| 35 | 17491341808 | 11 |
| 36 | 107637 | 20 |
| 37 | 104951 | 14 |
| 38 | 136517 | 22 |
| 39 | 280224 | 16 |
| 40 | 51297 | 24 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -4027646904762613/500000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -4027646904762613/500000 | 1 | -4027646904762613/500000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 946 | -4027646904762613/500000 |

## Stage 947

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP+/BQS-/PQS+/QRS-/EPQ+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP+/BQS-/PQS+/QRS-/EPQ+:LLLHH |
| Index | 0 |
| Context | 171 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 929 |
| Coordinate cut | b high 447123/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 112077/250000 | 103767/1000000 | 112077/250000 |
| b | 447123/1000000 | 278371/500000 | 447123/1000000 | 278371/500000 |
| c | 135501/250000 | 1 | 135501/250000 | 1 |
| e | 103767/1000000 | 112077/250000 | 103767/1000000 | 112077/250000 |
| f | 279/1000 | 344349/500000 | 279/1000 | 344349/500000 |
| h | 721163/1000000 | 1 | 721163/1000000 | 1 |
| p | 22907/200000 | 568313/1000000 | 22907/200000 | 568313/1000000 |
| q | 196767/1000000 | 158779/250000 | 196767/1000000 | 158779/250000 |
| u | 155651/500000 | 750147/1000000 | 155651/500000 | 750147/1000000 |
| v | 103767/1000000 | 272719/500000 | 103767/1000000 | 272719/500000 |
| r | 353273/500000 | 1 | 353273/500000 | 1 |
| w | 796617/1000000 | 1 | 796617/1000000 | 1 |
| j | 353117/500000 | 896233/1000000 | 353117/500000 | 896233/1000000 |
| k | 361741/1000000 | 616377/1000000 | 361741/1000000 | 616377/1000000 |

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
| 0 | physical | `{"factor":109,"stage":385}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 1 | physical | `{"factor":112,"stage":385}` | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 2 | physical | `{"factor":133,"stage":385}` | `1/1 * f + -1/1 * b` |
| 3 | physical | `{"factor":29,"stage":385}` | `1/1 * w + -1/1 * a + -1/1 * e * r + 1/1 * a * r + -13857/20000` |
| 4 | physical | `{"factor":55,"stage":385}` | `1/1 * h + -1/1 * b * h + 1/1 * b * e + -13857/20000` |
| 5 | physical | `{"factor":99,"stage":385}` | `-1/1 * f * k + 1/1 * e * f + 1/1 * k + 1/1 * j + -1093/1000 + -1/1 * e * j` |
| 6 | coordinate | `{"box":947,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 7 | coordinate | `{"box":947,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 8 | coordinate | `{"box":947,"direction":"hi","value":"896233/1000000","variable":"j"}` | `896233/1000000 + -1 * j` |
| 9 | coordinate | `{"box":947,"direction":"hi","value":"616377/1000000","variable":"k"}` | `616377/1000000 + -1 * k` |
| 10 | coordinate | `{"box":947,"direction":"hi","value":"112077/250000","variable":"e"}` | `112077/250000 + -1 * e` |
| 11 | coordinate | `{"box":947,"direction":"hi","value":"344349/500000","variable":"f"}` | `344349/500000 + -1 * f` |
| 12 | coordinate | `{"box":947,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 13 | coordinate | `{"box":947,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 14 | coordinate | `{"box":947,"direction":"lo","value":"447123/1000000","variable":"b"}` | `-447123/1000000 + 1 * b` |
| 15 | coordinate | `{"box":947,"direction":"lo","value":"353273/500000","variable":"r"}` | `-353273/500000 + 1 * r` |
| 16 | coordinate | `{"box":947,"direction":"lo","value":"796617/1000000","variable":"w"}` | `-796617/1000000 + 1 * w` |
| 17 | coordinate | `{"box":947,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 18 | coordinate | `{"box":947,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 19 | coordinate | `{"box":947,"direction":"lo","value":"721163/1000000","variable":"h"}` | `-721163/1000000 + 1 * h` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 62509000000 | 3 |
| 1 | 120582000000 | 4 |
| 2 | 11282000000 | 5 |
| 3 | 11282000000 | 0 |
| 4 | 92464000000 | 1 |
| 5 | 1896000000 | 2 |
| 6 | 120582000000 | 10, 14 |
| 7 | 120582000000 | 14, 19 |
| 8 | 62509000000 | 6, 13 |
| 9 | 11282000000 | 10, 18 |
| 10 | 57006000000 | 15, 17 |
| 11 | 16785000000 | 6, 10 |
| 12 | 92464000000 | 12, 18 |
| 13 | 92464000000 | 7, 11 |
| 14 | 11282000000 | 9, 11 |
| 15 | 92464000000 | 6, 12 |
| 16 | 11282000000 | 9, 15 |
| 17 | 11282000000 | 7, 8 |
| 18 | 72578 | 16 |
| 19 | 470414 | 12 |
| 20 | 201361136 | 9 |
| 21 | 145335 | 6 |
| 22 | 154458 | 18 |
| 23 | 34797401610 | 14 |
| 24 | 302310 | 10 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -2708435758978227/500000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -2708435758978227/500000 | 1 | -2708435758978227/500000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 947 | -2708435758978227/500000 |

## Stage 948

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP+/BQS-/PQS+/QRS-/EPQ+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP+/BQS-/PQS+/QRS-/EPQ+:LLH |
| Index | 0 |
| Context | 171 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 926 |
| Coordinate cut | k high 616377/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 112077/250000 | 103767/1000000 | 112077/250000 |
| b | 103767/1000000 | 278371/500000 | 103767/1000000 | 278371/500000 |
| c | 135501/250000 | 1 | 135501/250000 | 1 |
| e | 103767/1000000 | 112077/250000 | 103767/1000000 | 112077/250000 |
| f | 279/1000 | 344349/500000 | 279/1000 | 344349/500000 |
| h | 721163/1000000 | 1 | 721163/1000000 | 1 |
| p | 22907/200000 | 568313/1000000 | 22907/200000 | 568313/1000000 |
| q | 196767/1000000 | 158779/250000 | 196767/1000000 | 158779/250000 |
| u | 155651/500000 | 750147/1000000 | 155651/500000 | 750147/1000000 |
| v | 103767/1000000 | 272719/500000 | 103767/1000000 | 272719/500000 |
| r | 295151/500000 | 1 | 295151/500000 | 1 |
| w | 796617/1000000 | 1 | 796617/1000000 | 1 |
| j | 353117/500000 | 896233/1000000 | 353117/500000 | 896233/1000000 |
| k | 616377/1000000 | 871013/1000000 | 616377/1000000 | 871013/1000000 |

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


## Stage 949

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP+/BQS-/PQS+/QRS-/EPQ+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP+/BQS-/PQS+/QRS-/EPQ+:LLHL |
| Index | 0 |
| Context | 171 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 948 |
| Coordinate cut | v low 12057/50000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 112077/250000 | 103767/1000000 | 112077/250000 |
| b | 103767/1000000 | 278371/500000 | 103767/1000000 | 278371/500000 |
| c | 135501/250000 | 1 | 135501/250000 | 1 |
| e | 103767/1000000 | 112077/250000 | 103767/1000000 | 112077/250000 |
| f | 279/1000 | 344349/500000 | 279/1000 | 344349/500000 |
| h | 721163/1000000 | 1 | 721163/1000000 | 1 |
| p | 22907/200000 | 568313/1000000 | 22907/200000 | 568313/1000000 |
| q | 196767/1000000 | 158779/250000 | 196767/1000000 | 158779/250000 |
| u | 155651/500000 | 750147/1000000 | 155651/500000 | 750147/1000000 |
| v | 103767/1000000 | 12057/50000 | 103767/1000000 | 12057/50000 |
| r | 295151/500000 | 1 | 295151/500000 | 1 |
| w | 796617/1000000 | 1 | 796617/1000000 | 1 |
| j | 353117/500000 | 896233/1000000 | 353117/500000 | 896233/1000000 |
| k | 616377/1000000 | 871013/1000000 | 616377/1000000 | 871013/1000000 |

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
| 0 | bound | `{"direction":"lo","ref":"385:1209","triangle":"BCH","value":"62041/200000"}` | `1 * c * h + -1 * b * h + -62041/200000` |
| 1 | physical | `{"factor":109,"stage":385}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 2 | physical | `{"factor":129,"stage":385}` | `-1/1 * r * k + 1/1 * v * r + 1/1 * u * k + 1/1 * w * j + -1/1 * u * w + -1/1 * v * j + -93/1000` |
| 3 | physical | `{"factor":74,"stage":385}` | `-1/1 * u * k + 1/1 * b * k + 1/1 * v * j + -1/1 * b * v + -93/1000` |
| 4 | physical | `{"factor":87,"stage":385}` | `1/1 * c * v + 1/1 * h * u + -1/1 * c * h + -93/1000` |
| 5 | coordinate | `{"box":949,"direction":"hi","value":"278371/500000","variable":"b"}` | `278371/500000 + -1 * b` |
| 6 | coordinate | `{"box":949,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 7 | coordinate | `{"box":949,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 8 | coordinate | `{"box":949,"direction":"hi","value":"896233/1000000","variable":"j"}` | `896233/1000000 + -1 * j` |
| 9 | coordinate | `{"box":949,"direction":"hi","value":"871013/1000000","variable":"k"}` | `871013/1000000 + -1 * k` |
| 10 | coordinate | `{"box":949,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 11 | coordinate | `{"box":949,"direction":"hi","value":"112077/250000","variable":"e"}` | `112077/250000 + -1 * e` |
| 12 | coordinate | `{"box":949,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 13 | coordinate | `{"box":949,"direction":"hi","value":"750147/1000000","variable":"u"}` | `750147/1000000 + -1 * u` |
| 14 | coordinate | `{"box":949,"direction":"hi","value":"12057/50000","variable":"v"}` | `12057/50000 + -1 * v` |
| 15 | coordinate | `{"box":949,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 16 | coordinate | `{"box":949,"direction":"lo","value":"295151/500000","variable":"r"}` | `-295151/500000 + 1 * r` |
| 17 | coordinate | `{"box":949,"direction":"lo","value":"353117/500000","variable":"j"}` | `-353117/500000 + 1 * j` |
| 18 | coordinate | `{"box":949,"direction":"lo","value":"616377/1000000","variable":"k"}` | `-616377/1000000 + 1 * k` |
| 19 | coordinate | `{"box":949,"direction":"lo","value":"135501/250000","variable":"c"}` | `-135501/250000 + 1 * c` |
| 20 | coordinate | `{"box":949,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 21 | coordinate | `{"box":949,"direction":"lo","value":"721163/1000000","variable":"h"}` | `-721163/1000000 + 1 * h` |
| 22 | coordinate | `{"box":949,"direction":"lo","value":"155651/500000","variable":"u"}` | `-155651/500000 + 1 * u` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 51737000000 | 0 |
| 1 | 106069000000 | 3 |
| 2 | 77728000000 | 4 |
| 3 | 39760000000 | 1 |
| 4 | 32191000000 | 2 |
| 5 | 41270000000 | 15, 21 |
| 6 | 10467000000 | 5, 12 |
| 7 | 106069000000 | 5, 14 |
| 8 | 1684000000 | 9, 15 |
| 9 | 104385000000 | 5, 18 |
| 10 | 25991000000 | 19, 21 |
| 11 | 77728000000 | 14, 19 |
| 12 | 10070000000 | 16, 20 |
| 13 | 29690000000 | 6, 11 |
| 14 | 39760000000 | 8, 20 |
| 15 | 77728000000 | 12, 22 |
| 16 | 32191000000 | 7, 13 |
| 17 | 32191000000 | 14, 16 |
| 18 | 7569000000 | 9, 16 |
| 19 | 7569000000 | 7, 8 |
| 20 | 73878000000 | 18, 22 |
| 21 | 73878000000 | 14, 17 |
| 22 | 721163 | 19 |
| 23 | 542004 | 21 |
| 24 | 54253386848 | 14 |
| 25 | 14371944000 | 8 |
| 26 | 116020 | 18 |
| 27 | 8828430346 | 7 |
| 28 | 423367 | 5 |
| 29 | 315292 | 12 |
| 30 | 303550 | 10 |
| 31 | 36927 | 6 |
| 32 | 117060 | 20 |
| 33 | 227160 | 17 |
| 34 | 299994 | 13 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -3887356824043443/500000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -3887356824043443/500000 | 1 | -3887356824043443/500000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 949 | -3887356824043443/500000 |
