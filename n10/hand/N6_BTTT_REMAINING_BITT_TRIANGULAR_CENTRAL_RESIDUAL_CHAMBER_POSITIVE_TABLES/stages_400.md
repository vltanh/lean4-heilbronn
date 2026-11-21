# BITT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 2000

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS-/HEQ-/CFQ-/PQR+/PQS+/QRS-/AEQ+/AQR+/EPQ+/BQS+/BFP- |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS-/HEQ-/CFQ-/PQR+/PQS+/QRS-/AEQ+/AQR+/EPQ+/BQS+/BFP-:LLLHH |
| Index | 0 |
| Context | 548 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1992 |
| Coordinate cut | e high 337423/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 11581/40000 | 103767/1000000 | 11581/40000 |
| c | 135501/250000 | 43711/50000 | 135501/250000 | 43711/50000 |
| e | 337423/1000000 | 59/125 | 337423/1000000 | 59/125 |
| f | 103767/1000000 | 447427/1000000 | 103767/1000000 | 447427/1000000 |
| h | 796617/1000000 | 1 | 796617/1000000 | 1 |
| p | 196767/1000000 | 15093/31250 | 196767/1000000 | 15093/31250 |
| q | 53003/125000 | 710233/1000000 | 53003/125000 | 710233/1000000 |
| u | 97891/250000 | 376701/500000 | 97891/250000 | 376701/500000 |
| v | 196767/1000000 | 239879/500000 | 196767/1000000 | 239879/500000 |
| r | 295317/500000 | 1 | 295317/500000 | 1 |
| w | 407121/500000 | 1 | 407121/500000 | 1 |
| j | 239751/500000 | 8033/8963 | 239751/500000 | 8033/8963 |
| k | 382767/1000000 | 896233/1000000 | 382767/1000000 | 896233/1000000 |

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
| 0 | bound | `{"direction":"lo","ref":"897:1948","triangle":"FPR","value":"4281/25000"}` | `1 * p * w + -1 * p + -1 * f * w + -1 * q * r + 1 * f * q + 1 * r + -4281/25000` |
| 1 | physical | `{"factor":0,"stage":897}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 2 | physical | `{"factor":115,"stage":897}` | `-1/1 * u * w + 1/1 * e * u + 1/1 * w + 1/1 * v * r + -1/1 * v + -1/1 * e * r + -279/1000` |
| 3 | physical | `{"factor":120,"stage":897}` | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 4 | physical | `{"factor":143,"stage":897}` | `1/1 * f + -1/1 * e` |
| 5 | physical | `{"factor":29,"stage":897}` | `1/1 * v + -1/1 * a + -1/1 * e * u + 1/1 * a * u + -93/1000` |
| 6 | physical | `{"factor":43,"stage":897}` | `-1/1 * p * w + 1/1 * a * p + 1/1 * q * r + -1/1 * a * r + -93/1000` |
| 7 | physical | `{"factor":65,"stage":897}` | `1/1 * w + -1/1 * b * w + -1/1 * e * r + 1/1 * b * e + -13857/20000` |
| 8 | physical | `{"factor":68,"stage":897}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 9 | physical | `{"factor":7,"stage":897}` | `1/1 * b * h + -1/1 * a * b + -93/1000` |
| 10 | physical | `{"factor":92,"stage":897}` | `-1/1 * f * v + 1/1 * c * v + 1/1 * u + -1/1 * c + -93/1000` |
| 11 | physical | `{"factor":95,"stage":897}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 12 | coordinate | `{"box":2000,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 13 | coordinate | `{"box":2000,"direction":"hi","value":"11581/40000","variable":"b"}` | `11581/40000 + -1 * b` |
| 14 | coordinate | `{"box":2000,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 15 | coordinate | `{"box":2000,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 16 | coordinate | `{"box":2000,"direction":"hi","value":"43711/50000","variable":"c"}` | `43711/50000 + -1 * c` |
| 17 | coordinate | `{"box":2000,"direction":"hi","value":"447427/1000000","variable":"f"}` | `447427/1000000 + -1 * f` |
| 18 | coordinate | `{"box":2000,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 19 | coordinate | `{"box":2000,"direction":"hi","value":"15093/31250","variable":"p"}` | `15093/31250 + -1 * p` |
| 20 | coordinate | `{"box":2000,"direction":"hi","value":"710233/1000000","variable":"q"}` | `710233/1000000 + -1 * q` |
| 21 | coordinate | `{"box":2000,"direction":"hi","value":"376701/500000","variable":"u"}` | `376701/500000 + -1 * u` |
| 22 | coordinate | `{"box":2000,"direction":"hi","value":"239879/500000","variable":"v"}` | `239879/500000 + -1 * v` |
| 23 | coordinate | `{"box":2000,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 24 | coordinate | `{"box":2000,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 25 | coordinate | `{"box":2000,"direction":"lo","value":"295317/500000","variable":"r"}` | `-295317/500000 + 1 * r` |
| 26 | coordinate | `{"box":2000,"direction":"lo","value":"135501/250000","variable":"c"}` | `-135501/250000 + 1 * c` |
| 27 | coordinate | `{"box":2000,"direction":"lo","value":"337423/1000000","variable":"e"}` | `-337423/1000000 + 1 * e` |
| 28 | coordinate | `{"box":2000,"direction":"lo","value":"103767/1000000","variable":"f"}` | `-103767/1000000 + 1 * f` |
| 29 | coordinate | `{"box":2000,"direction":"lo","value":"796617/1000000","variable":"h"}` | `-796617/1000000 + 1 * h` |
| 30 | coordinate | `{"box":2000,"direction":"lo","value":"196767/1000000","variable":"p"}` | `-196767/1000000 + 1 * p` |
| 31 | coordinate | `{"box":2000,"direction":"lo","value":"53003/125000","variable":"q"}` | `-53003/125000 + 1 * q` |
| 32 | coordinate | `{"box":2000,"direction":"lo","value":"196767/1000000","variable":"v"}` | `-196767/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 2522000000 | 1 |
| 1 | 68368000000 | 9 |
| 2 | 346000000 | 5 |
| 3 | 19684000000 | 6 |
| 4 | 94156000000 | 7 |
| 5 | 20643000000 | 8 |
| 6 | 2074000000 | 10 |
| 7 | 3768000000 | 11 |
| 8 | 3008000000 | 2 |
| 9 | 67366000000 | 3 |
| 10 | 19684000000 | 0 |
| 11 | 34787000000 | 4 |
| 12 | 2522000000 | 16, 23 |
| 13 | 94156000000 | 13, 27 |
| 14 | 68368000000 | 18, 24 |
| 15 | 20643000000 | 20, 24 |
| 16 | 19684000000 | 19, 23 |
| 17 | 346000000 | 21, 23 |
| 18 | 94156000000 | 13, 15 |
| 19 | 19684000000 | 23, 25 |
| 20 | 3768000000 | 16, 29 |
| 21 | 3768000000 | 26, 31 |
| 22 | 2074000000 | 16, 32 |
| 23 | 2662000000 | 21, 27 |
| 24 | 97164000000 | 25, 27 |
| 25 | 67366000000 | 17, 29 |
| 26 | 960000000 | 28, 31 |
| 27 | 2074000000 | 17, 22 |
| 28 | 87050000000 | 15, 17 |
| 29 | 3768000000 | 29, 30 |
| 30 | 67366000000 | 25, 29 |
| 31 | 3008000000 | 15, 21 |
| 32 | 3008000000 | 22, 25 |
| 33 | 70890000000 | 23, 24 |
| 34 | 7356042630 | 23 |
| 35 | 7356042630 | 24 |
| 36 | 204246 | 32 |
| 37 | 319860 | 12 |
| 38 | 28688730534 | 15 |
| 39 | 1000000 | 17, 31 |
| 40 | 424024 | 17 |
| 41 | 622216 | 20 |
| 42 | 103228 | 30 |
| 43 | 739807 | 13 |
| 44 | 123408 | 21 |
| 45 | 274444 | 26 |
| 46 | 293242 | 14 |
| 47 | 180310 | 28 |
| 48 | 62909289952 | 27 |
| 49 | 297602 | 29 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -241090899363089/50000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -241090899363089/50000 | 1 | -241090899363089/50000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 2000 | -241090899363089/50000 |

## Stage 2001

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS-/HEQ-/CFQ-/PQR+/PQS+/QRS-/AEQ+/AQR+/EPQ+/BQS+/BFP- |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS-/HEQ-/CFQ-/PQR+/PQS+/QRS-/AEQ+/AQR+/EPQ+/BQS+/BFP-:LLH |
| Index | 0 |
| Context | 548 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1989 |
| Coordinate cut | c high 43711/50000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 11581/40000 | 103767/1000000 | 11581/40000 |
| c | 43711/50000 | 1 | 43711/50000 | 1 |
| e | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| f | 103767/1000000 | 447427/1000000 | 103767/1000000 | 447427/1000000 |
| h | 796617/1000000 | 1 | 796617/1000000 | 1 |
| p | 196767/1000000 | 15093/31250 | 196767/1000000 | 15093/31250 |
| q | 53003/125000 | 710233/1000000 | 53003/125000 | 710233/1000000 |
| u | 97891/250000 | 376701/500000 | 97891/250000 | 376701/500000 |
| v | 196767/1000000 | 239879/500000 | 196767/1000000 | 239879/500000 |
| r | 459381/1000000 | 1 | 459381/1000000 | 1 |
| w | 407121/500000 | 1 | 407121/500000 | 1 |
| j | 239751/500000 | 8033/8963 | 239751/500000 | 8033/8963 |
| k | 382767/1000000 | 896233/1000000 | 382767/1000000 | 896233/1000000 |

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
| 0 | bound | `{"direction":"lo","ref":"897:1747","triangle":"EHQ","value":"138117/1000000"}` | `-1 * v + -1 * h * u + 1 * h + 1 * e * u + -138117/1000000` |
| 1 | bound | `{"direction":"lo","ref":"897:1950","triangle":"FQR","value":"28997/125000"}` | `1 * u * w + -1 * u + -1 * f * w + -1 * v * r + 1 * f * v + 1 * r + -28997/125000` |
| 2 | physical | `{"factor":115,"stage":897}` | `-1/1 * u * w + 1/1 * e * u + 1/1 * w + 1/1 * v * r + -1/1 * v + -1/1 * e * r + -279/1000` |
| 3 | physical | `{"factor":120,"stage":897}` | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 4 | physical | `{"factor":143,"stage":897}` | `1/1 * f + -1/1 * e` |
| 5 | physical | `{"factor":86,"stage":897}` | `1/1 * v + -1/1 * c * v + -1/1 * e * u + 1/1 * c * e + -93/1000` |
| 6 | physical | `{"factor":92,"stage":897}` | `-1/1 * f * v + 1/1 * c * v + 1/1 * u + -1/1 * c + -93/1000` |
| 7 | coordinate | `{"box":2001,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 8 | coordinate | `{"box":2001,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 9 | coordinate | `{"box":2001,"direction":"hi","value":"59/125","variable":"e"}` | `59/125 + -1 * e` |
| 10 | coordinate | `{"box":2001,"direction":"hi","value":"447427/1000000","variable":"f"}` | `447427/1000000 + -1 * f` |
| 11 | coordinate | `{"box":2001,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 12 | coordinate | `{"box":2001,"direction":"hi","value":"376701/500000","variable":"u"}` | `376701/500000 + -1 * u` |
| 13 | coordinate | `{"box":2001,"direction":"hi","value":"239879/500000","variable":"v"}` | `239879/500000 + -1 * v` |
| 14 | coordinate | `{"box":2001,"direction":"lo","value":"459381/1000000","variable":"r"}` | `-459381/1000000 + 1 * r` |
| 15 | coordinate | `{"box":2001,"direction":"lo","value":"407121/500000","variable":"w"}` | `-407121/500000 + 1 * w` |
| 16 | coordinate | `{"box":2001,"direction":"lo","value":"43711/50000","variable":"c"}` | `-43711/50000 + 1 * c` |
| 17 | coordinate | `{"box":2001,"direction":"lo","value":"103767/1000000","variable":"f"}` | `-103767/1000000 + 1 * f` |
| 18 | coordinate | `{"box":2001,"direction":"lo","value":"796617/1000000","variable":"h"}` | `-796617/1000000 + 1 * h` |
| 19 | coordinate | `{"box":2001,"direction":"lo","value":"97891/250000","variable":"u"}` | `-97891/250000 + 1 * u` |
| 20 | coordinate | `{"box":2001,"direction":"lo","value":"196767/1000000","variable":"v"}` | `-196767/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 128343000000 | 5 |
| 1 | 128343000000 | 6 |
| 2 | 75297000000 | 0 |
| 3 | 53046000000 | 2 |
| 4 | 20718000000 | 3 |
| 5 | 18177000000 | 1 |
| 6 | 59154000000 | 4 |
| 7 | 128343000000 | 9, 16 |
| 8 | 53046000000 | 7, 9 |
| 9 | 20718000000 | 11, 17 |
| 10 | 41966000000 | 17, 20 |
| 11 | 68201000000 | 10, 13 |
| 12 | 38895000000 | 8, 10 |
| 13 | 75297000000 | 11, 12 |
| 14 | 20718000000 | 7, 11 |
| 15 | 34870000000 | 8, 12 |
| 16 | 34870000000 | 7, 20 |
| 17 | 792678 | 13 |
| 18 | 1000000 | 10, 20 |
| 19 | 196767 | 10 |
| 20 | 1000000 | 19 |
| 21 | 67765104000 | 16 |
| 22 | 65688 | 18 |
| 23 | 1000000 | 12, 15 |
| 24 | 814242 | 12 |
| 25 | 9372952497 | 8 |
| 26 | 1000000 | 14, 20 |
| 27 | 459381 | 20 |
| 28 | 196767 | 14 |
| 29 | 553290 | 7 |
| 30 | 499280 | 17 |
| 31 | 17460 | 9 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -5397566528936519/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -5397566528936519/1000000 | 1 | -5397566528936519/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 2001 | -5397566528936519/1000000 |

## Stage 2002

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS-/HEQ-/CFQ-/PQR+/PQS+/QRS-/AEQ+/AQR+/EPQ+/BQS+/BFP- |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS-/HEQ-/CFQ-/PQR+/PQS+/QRS-/AEQ+/AQR+/EPQ+/BQS+/BFP-:LH |
| Index | 0 |
| Context | 548 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1988 |
| Coordinate cut | v high 239879/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 11581/40000 | 103767/1000000 | 11581/40000 |
| c | 135501/250000 | 1 | 135501/250000 | 1 |
| e | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| f | 103767/1000000 | 447427/1000000 | 103767/1000000 | 447427/1000000 |
| h | 796617/1000000 | 1 | 796617/1000000 | 1 |
| p | 196767/1000000 | 15093/31250 | 196767/1000000 | 15093/31250 |
| q | 53003/125000 | 710233/1000000 | 53003/125000 | 710233/1000000 |
| u | 97891/250000 | 376701/500000 | 97891/250000 | 376701/500000 |
| v | 239879/500000 | 39849/62500 | 239879/500000 | 39849/62500 |
| r | 459381/1000000 | 1 | 459381/1000000 | 1 |
| w | 407121/500000 | 1 | 407121/500000 | 1 |
| j | 239751/500000 | 8033/8963 | 239751/500000 | 8033/8963 |
| k | 382767/1000000 | 896233/1000000 | 382767/1000000 | 896233/1000000 |

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
| 0 | bound | `{"direction":"lo","ref":"897:1950","triangle":"FQR","value":"28997/125000"}` | `1 * u * w + -1 * u + -1 * f * w + -1 * v * r + 1 * f * v + 1 * r + -28997/125000` |
| 1 | physical | `{"factor":112,"stage":897}` | `1/1 * p * v + -1/1 * e * p + -1/1 * v + -1/1 * q * u + 1/1 * q + 1/1 * e * u + -93/1000` |
| 2 | physical | `{"factor":115,"stage":897}` | `-1/1 * u * w + 1/1 * e * u + 1/1 * w + 1/1 * v * r + -1/1 * v + -1/1 * e * r + -279/1000` |
| 3 | physical | `{"factor":120,"stage":897}` | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 4 | physical | `{"factor":143,"stage":897}` | `1/1 * f + -1/1 * e` |
| 5 | physical | `{"factor":65,"stage":897}` | `1/1 * w + -1/1 * b * w + -1/1 * e * r + 1/1 * b * e + -13857/20000` |
| 6 | physical | `{"factor":68,"stage":897}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 7 | physical | `{"factor":92,"stage":897}` | `-1/1 * f * v + 1/1 * c * v + 1/1 * u + -1/1 * c + -93/1000` |
| 8 | physical | `{"factor":95,"stage":897}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 9 | coordinate | `{"box":2002,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 10 | coordinate | `{"box":2002,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 11 | coordinate | `{"box":2002,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 12 | coordinate | `{"box":2002,"direction":"hi","value":"59/125","variable":"e"}` | `59/125 + -1 * e` |
| 13 | coordinate | `{"box":2002,"direction":"hi","value":"447427/1000000","variable":"f"}` | `447427/1000000 + -1 * f` |
| 14 | coordinate | `{"box":2002,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 15 | coordinate | `{"box":2002,"direction":"hi","value":"15093/31250","variable":"p"}` | `15093/31250 + -1 * p` |
| 16 | coordinate | `{"box":2002,"direction":"hi","value":"710233/1000000","variable":"q"}` | `710233/1000000 + -1 * q` |
| 17 | coordinate | `{"box":2002,"direction":"hi","value":"376701/500000","variable":"u"}` | `376701/500000 + -1 * u` |
| 18 | coordinate | `{"box":2002,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 19 | coordinate | `{"box":2002,"direction":"lo","value":"459381/1000000","variable":"r"}` | `-459381/1000000 + 1 * r` |
| 20 | coordinate | `{"box":2002,"direction":"lo","value":"407121/500000","variable":"w"}` | `-407121/500000 + 1 * w` |
| 21 | coordinate | `{"box":2002,"direction":"lo","value":"135501/250000","variable":"c"}` | `-135501/250000 + 1 * c` |
| 22 | coordinate | `{"box":2002,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 23 | coordinate | `{"box":2002,"direction":"lo","value":"103767/1000000","variable":"f"}` | `-103767/1000000 + 1 * f` |
| 24 | coordinate | `{"box":2002,"direction":"lo","value":"196767/1000000","variable":"p"}` | `-196767/1000000 + 1 * p` |
| 25 | coordinate | `{"box":2002,"direction":"lo","value":"53003/125000","variable":"q"}` | `-53003/125000 + 1 * q` |
| 26 | coordinate | `{"box":2002,"direction":"lo","value":"97891/250000","variable":"u"}` | `-97891/250000 + 1 * u` |
| 27 | coordinate | `{"box":2002,"direction":"lo","value":"239879/500000","variable":"v"}` | `-239879/500000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 950000000 | 5 |
| 1 | 12759000000 | 6 |
| 2 | 49610000000 | 7 |
| 3 | 44810000000 | 8 |
| 4 | 116269000000 | 1 |
| 5 | 849000000 | 2 |
| 6 | 2951000000 | 3 |
| 7 | 849000000 | 0 |
| 8 | 33304000000 | 4 |
| 9 | 950000000 | 12, 18 |
| 10 | 12759000000 | 16, 18 |
| 11 | 950000000 | 18, 20 |
| 12 | 44810000000 | 14, 21 |
| 13 | 44810000000 | 21, 25 |
| 14 | 49610000000 | 11, 27 |
| 15 | 84591000000 | 22, 24 |
| 16 | 31679000000 | 12, 15 |
| 17 | 58286000000 | 17, 22 |
| 18 | 58832000000 | 12, 26 |
| 19 | 1799000000 | 9, 12 |
| 20 | 2951000000 | 14, 23 |
| 21 | 12759000000 | 13, 16 |
| 22 | 48761000000 | 23, 27 |
| 23 | 3800000000 | 10, 13 |
| 24 | 44810000000 | 14, 15 |
| 25 | 2951000000 | 9, 14 |
| 26 | 116269000000 | 15, 27 |
| 27 | 116269000000 | 16, 17 |
| 28 | 198750 | 10 |
| 29 | 259395 | 24 |
| 30 | 4022267053 | 18 |
| 31 | 213315 | 26 |
| 32 | 278940 | 11 |
| 33 | 1000000 | 12, 24 |
| 34 | 196767 | 12 |
| 35 | 472000 | 15 |
| 36 | 16412646143 | 27 |
| 37 | 254318 | 25 |
| 38 | 128000 | 19 |
| 39 | 342685 | 23 |
| 40 | 53131 | 22 |
| 41 | 261097 | 14 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -7023369088989271/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -7023369088989271/1000000 | 1 | -7023369088989271/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 2002 | -7023369088989271/1000000 |

## Stage 2003

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS-/HEQ-/CFQ-/PQR+/PQS+/QRS-/AEQ+/AQR+/EPQ+/BQS+/BFP- |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS-/HEQ-/CFQ-/PQR+/PQS+/QRS-/AEQ+/AQR+/EPQ+/BQS+/BFP-:H |
| Index | 0 |
| Context | 548 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1987 |
| Coordinate cut | f high 447427/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 11581/40000 | 103767/1000000 | 11581/40000 |
| c | 135501/250000 | 1 | 135501/250000 | 1 |
| e | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| f | 447427/1000000 | 344349/500000 | 447427/1000000 | 344349/500000 |
| h | 796617/1000000 | 1 | 796617/1000000 | 1 |
| p | 196767/1000000 | 15093/31250 | 196767/1000000 | 15093/31250 |
| q | 53003/125000 | 710233/1000000 | 53003/125000 | 710233/1000000 |
| u | 97891/250000 | 376701/500000 | 97891/250000 | 376701/500000 |
| v | 196767/1000000 | 39849/62500 | 196767/1000000 | 39849/62500 |
| r | 459381/1000000 | 1 | 459381/1000000 | 1 |
| w | 407121/500000 | 1 | 407121/500000 | 1 |
| j | 239751/500000 | 8033/8963 | 239751/500000 | 8033/8963 |
| k | 382767/1000000 | 896233/1000000 | 382767/1000000 | 896233/1000000 |

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
| 0 | bound | `{"direction":"lo","ref":"897:1747","triangle":"EHQ","value":"138117/1000000"}` | `-1 * v + -1 * h * u + 1 * h + 1 * e * u + -138117/1000000` |
| 1 | physical | `{"factor":112,"stage":897}` | `1/1 * p * v + -1/1 * e * p + -1/1 * v + -1/1 * q * u + 1/1 * q + 1/1 * e * u + -93/1000` |
| 2 | physical | `{"factor":115,"stage":897}` | `-1/1 * u * w + 1/1 * e * u + 1/1 * w + 1/1 * v * r + -1/1 * v + -1/1 * e * r + -279/1000` |
| 3 | physical | `{"factor":120,"stage":897}` | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 4 | physical | `{"factor":43,"stage":897}` | `-1/1 * p * w + 1/1 * a * p + 1/1 * q * r + -1/1 * a * r + -93/1000` |
| 5 | physical | `{"factor":65,"stage":897}` | `1/1 * w + -1/1 * b * w + -1/1 * e * r + 1/1 * b * e + -13857/20000` |
| 6 | physical | `{"factor":68,"stage":897}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 7 | physical | `{"factor":86,"stage":897}` | `1/1 * v + -1/1 * c * v + -1/1 * e * u + 1/1 * c * e + -93/1000` |
| 8 | physical | `{"factor":92,"stage":897}` | `-1/1 * f * v + 1/1 * c * v + 1/1 * u + -1/1 * c + -93/1000` |
| 9 | physical | `{"factor":95,"stage":897}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 10 | coordinate | `{"box":2003,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 11 | coordinate | `{"box":2003,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 12 | coordinate | `{"box":2003,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 13 | coordinate | `{"box":2003,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 14 | coordinate | `{"box":2003,"direction":"hi","value":"59/125","variable":"e"}` | `59/125 + -1 * e` |
| 15 | coordinate | `{"box":2003,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 16 | coordinate | `{"box":2003,"direction":"hi","value":"15093/31250","variable":"p"}` | `15093/31250 + -1 * p` |
| 17 | coordinate | `{"box":2003,"direction":"hi","value":"710233/1000000","variable":"q"}` | `710233/1000000 + -1 * q` |
| 18 | coordinate | `{"box":2003,"direction":"hi","value":"376701/500000","variable":"u"}` | `376701/500000 + -1 * u` |
| 19 | coordinate | `{"box":2003,"direction":"hi","value":"39849/62500","variable":"v"}` | `39849/62500 + -1 * v` |
| 20 | coordinate | `{"box":2003,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 21 | coordinate | `{"box":2003,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 22 | coordinate | `{"box":2003,"direction":"lo","value":"459381/1000000","variable":"r"}` | `-459381/1000000 + 1 * r` |
| 23 | coordinate | `{"box":2003,"direction":"lo","value":"407121/500000","variable":"w"}` | `-407121/500000 + 1 * w` |
| 24 | coordinate | `{"box":2003,"direction":"lo","value":"135501/250000","variable":"c"}` | `-135501/250000 + 1 * c` |
| 25 | coordinate | `{"box":2003,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 26 | coordinate | `{"box":2003,"direction":"lo","value":"447427/1000000","variable":"f"}` | `-447427/1000000 + 1 * f` |
| 27 | coordinate | `{"box":2003,"direction":"lo","value":"196767/1000000","variable":"p"}` | `-196767/1000000 + 1 * p` |
| 28 | coordinate | `{"box":2003,"direction":"lo","value":"53003/125000","variable":"q"}` | `-53003/125000 + 1 * q` |
| 29 | coordinate | `{"box":2003,"direction":"lo","value":"97891/250000","variable":"u"}` | `-97891/250000 + 1 * u` |
| 30 | coordinate | `{"box":2003,"direction":"lo","value":"196767/1000000","variable":"v"}` | `-196767/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 42706000000 | 4 |
| 1 | 23154000000 | 5 |
| 2 | 78602000000 | 6 |
| 3 | 27563000000 | 7 |
| 4 | 27563000000 | 8 |
| 5 | 42889000000 | 9 |
| 6 | 992000000 | 0 |
| 7 | 27539000000 | 1 |
| 8 | 8608000000 | 2 |
| 9 | 5024000000 | 3 |
| 10 | 23154000000 | 14, 21 |
| 11 | 78602000000 | 17, 21 |
| 12 | 42706000000 | 16, 20 |
| 13 | 23154000000 | 21, 23 |
| 14 | 40842000000 | 20, 22 |
| 15 | 1864000000 | 10, 11 |
| 16 | 27563000000 | 13, 25 |
| 17 | 42889000000 | 15, 24 |
| 18 | 42889000000 | 24, 28 |
| 19 | 27539000000 | 25, 27 |
| 20 | 9576000000 | 18, 25 |
| 21 | 31761000000 | 11, 14 |
| 22 | 5024000000 | 15, 26 |
| 23 | 78602000000 | 26, 28 |
| 24 | 27563000000 | 26, 30 |
| 25 | 5024000000 | 23, 26 |
| 26 | 42889000000 | 15, 16 |
| 27 | 992000000 | 15, 18 |
| 28 | 5024000000 | 11, 15 |
| 29 | 27539000000 | 16, 30 |
| 30 | 2105000000 | 28, 29 |
| 31 | 25435000000 | 17, 18 |
| 32 | 42706000000 | 12, 16 |
| 33 | 42706000000 | 11, 28 |
| 34 | 8608000000 | 12, 18 |
| 35 | 8608000000 | 11, 30 |
| 36 | 248162 | 12 |
| 37 | 1000000 | 22, 25 |
| 38 | 459381 | 25 |
| 39 | 103767 | 22 |
| 40 | 399498 | 27 |
| 41 | 30700537002 | 21 |
| 42 | 245663 | 19 |
| 43 | 674083 | 29 |
| 44 | 164485 | 13 |
| 45 | 150356 | 15 |
| 46 | 1000000 | 17, 29 |
| 47 | 391564 | 17 |
| 48 | 710233 | 18 |
| 49 | 394966 | 28 |
| 50 | 367866 | 11 |
| 51 | 432257 | 14 |
| 52 | 65746 | 20 |
| 53 | 37819375077 | 26 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -3044691796157349/500000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -3044691796157349/500000 | 1 | -3044691796157349/500000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 2003 | -3044691796157349/500000 |

## Stage 2004

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS-/HEQ-/CFQ-/PQR+/PQS+/QRS-/AEQ+/AQR+/EPQ+/BQS-/AQS+ |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS-/HEQ-/CFQ-/PQR+/PQS+/QRS-/AEQ+/AQR+/EPQ+/BQS-/AQS+:root |
| Index | 0 |
| Context | 550 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 899 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 145431/250000 | 103767/1000000 | 145431/250000 |
| c | 135501/250000 | 1 | 135501/250000 | 1 |
| e | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| f | 103767/1000000 | 14917/25000 | 103767/1000000 | 14917/25000 |
| h | 796617/1000000 | 1 | 796617/1000000 | 1 |
| p | 13607/100000 | 524233/1000000 | 13607/100000 | 524233/1000000 |
| q | 382767/1000000 | 77093/100000 | 382767/1000000 | 77093/100000 |
| u | 33937/100000 | 755499/1000000 | 33937/100000 | 755499/1000000 |
| v | 196767/1000000 | 345787/500000 | 196767/1000000 | 345787/500000 |
| r | 455359/1000000 | 1 | 455359/1000000 | 1 |
| w | 796617/1000000 | 1 | 796617/1000000 | 1 |
| j | 703617/1000000 | 8033/8963 | 703617/1000000 | 8033/8963 |
| k | 382767/1000000 | 896233/1000000 | 382767/1000000 | 896233/1000000 |

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
