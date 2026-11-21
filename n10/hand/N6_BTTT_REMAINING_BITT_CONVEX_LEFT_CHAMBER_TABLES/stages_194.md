# BITT convex: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 970

| Property | Value |
| --- | --- |
| Scope | root/AFQ-/AFP-/APR-/BFP-/APS+/BPQ-/PQR+/BQR+ |
| Packet | coordinate:root/HEQ+/CFQ+/AFQ-/AFP-/APR-/BFP-/APS+/BPQ-/PQR+/BQR+:LLLLH |
| Index | 0 |
| Context | 147 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 962 |
| Coordinate cut | h high 84413/100000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 796617/1000000 | 1 | 796617/1000000 | 1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 103767/1000000 | 54789/125000 | 103767/1000000 | 54789/125000 |
| h | 84413/100000 | 1 | 84413/100000 | 1 |
| p | 196767/1000000 | 72133/125000 | 196767/1000000 | 72133/125000 |
| q | 277213/1000000 | 8893/15625 | 277213/1000000 | 8893/15625 |
| u | 382767/1000000 | 196623/250000 | 382767/1000000 | 196623/250000 |
| v | 145167/500000 | 603419/1000000 | 145167/500000 | 603419/1000000 |
| r | 273819/500000 | 1 | 273819/500000 | 1 |
| w | 256303/500000 | 440113/500000 | 256303/500000 | 440113/500000 |
| j | 294577/1000000 | 1174803/2000000 | 294577/1000000 | 1174803/2000000 |
| k | 796617/1000000 | 1 | 796617/1000000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"219:2761","triangle":"EQS","value":"19273/125000"}` | `-1 * u * k + 1 * e * u + 1 * k + 1 * v * j + -1 * v + -1 * e * j + -19273/125000` |
| 1 | bound | `{"direction":"lo","ref":"219:3009","triangle":"EQR","value":"138567/1000000"}` | `-1 * u * w + 1 * e * u + 1 * w + 1 * v * r + -1 * v + -1 * e * r + -138567/1000000` |
| 2 | bound | `{"direction":"lo","ref":"219:3395","triangle":"AQS","value":"18177/62500"}` | `1 * u * k + -1 * a * u + -1 * v * j + 1 * a * j + -18177/62500` |
| 3 | bound | `{"direction":"lo","ref":"219:3396","triangle":"ARS","value":"7481/20000"}` | `1 * r * k + -1 * a * r + -1 * w * j + 1 * a * j + -7481/20000` |
| 4 | physical | `{"factor":111,"stage":219}` | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 5 | physical | `{"factor":123,"stage":219}` | `-1/1 * f * k + -1/1 * h * j + 1/1 * f * h + 1/1 * j + -93/1000` |
| 6 | physical | `{"factor":129,"stage":219}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 7 | physical | `{"factor":141,"stage":219}` | `1/1 * e + -1/1 * a` |
| 8 | physical | `{"factor":48,"stage":219}` | `1/1 * c * e + -1/1 * b * e + -93/1000` |
| 9 | physical | `{"factor":78,"stage":219}` | `1/1 * u * w + -1/1 * b * w + -1/1 * v * r + 1/1 * b * v + -93/1000` |
| 10 | physical | `{"factor":86,"stage":219}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 11 | physical | `{"factor":90,"stage":219}` | `1/1 * f * v + -1/1 * c * v + -1/1 * u + 1/1 * c + -93/1000` |
| 12 | coordinate | `{"box":970,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 13 | coordinate | `{"box":970,"direction":"hi","value":"6143/20000","variable":"b"}` | `6143/20000 + -1 * b` |
| 14 | coordinate | `{"box":970,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 15 | coordinate | `{"box":970,"direction":"hi","value":"440113/500000","variable":"w"}` | `440113/500000 + -1 * w` |
| 16 | coordinate | `{"box":970,"direction":"hi","value":"1174803/2000000","variable":"j"}` | `1174803/2000000 + -1 * j` |
| 17 | coordinate | `{"box":970,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 18 | coordinate | `{"box":970,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 19 | coordinate | `{"box":970,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 20 | coordinate | `{"box":970,"direction":"hi","value":"54789/125000","variable":"f"}` | `54789/125000 + -1 * f` |
| 21 | coordinate | `{"box":970,"direction":"hi","value":"196623/250000","variable":"u"}` | `196623/250000 + -1 * u` |
| 22 | coordinate | `{"box":970,"direction":"hi","value":"603419/1000000","variable":"v"}` | `603419/1000000 + -1 * v` |
| 23 | coordinate | `{"box":970,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 24 | coordinate | `{"box":970,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 25 | coordinate | `{"box":970,"direction":"lo","value":"273819/500000","variable":"r"}` | `-273819/500000 + 1 * r` |
| 26 | coordinate | `{"box":970,"direction":"lo","value":"256303/500000","variable":"w"}` | `-256303/500000 + 1 * w` |
| 27 | coordinate | `{"box":970,"direction":"lo","value":"294577/1000000","variable":"j"}` | `-294577/1000000 + 1 * j` |
| 28 | coordinate | `{"box":970,"direction":"lo","value":"796617/1000000","variable":"k"}` | `-796617/1000000 + 1 * k` |
| 29 | coordinate | `{"box":970,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 30 | coordinate | `{"box":970,"direction":"lo","value":"103767/1000000","variable":"f"}` | `-103767/1000000 + 1 * f` |
| 31 | coordinate | `{"box":970,"direction":"lo","value":"84413/100000","variable":"h"}` | `-84413/100000 + 1 * h` |
| 32 | coordinate | `{"box":970,"direction":"lo","value":"382767/1000000","variable":"u"}` | `-382767/1000000 + 1 * u` |
| 33 | coordinate | `{"box":970,"direction":"lo","value":"145167/500000","variable":"v"}` | `-145167/500000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 23748000000 | 2 |
| 1 | 31462000000 | 3 |
| 2 | 15608000000 | 8 |
| 3 | 36912000000 | 9 |
| 4 | 54768000000 | 10 |
| 5 | 103146000000 | 11 |
| 6 | 114766000000 | 4 |
| 7 | 18434000000 | 1 |
| 8 | 23748000000 | 0 |
| 9 | 145194000000 | 5 |
| 10 | 15010000000 | 6 |
| 11 | 6110000000 | 7 |
| 12 | 15608000000 | 24, 29 |
| 13 | 36912000000 | 22, 24 |
| 14 | 23748000000 | 23, 32 |
| 15 | 32200000000 | 24, 26 |
| 16 | 4714000000 | 13, 15 |
| 17 | 31462000000 | 23, 25 |
| 18 | 55210000000 | 16, 23 |
| 19 | 70376000000 | 18, 29 |
| 20 | 103146000000 | 18, 22 |
| 21 | 54768000000 | 15, 18 |
| 22 | 72584000000 | 29, 32 |
| 23 | 73204000000 | 25, 29 |
| 24 | 23748000000 | 27, 29 |
| 25 | 145194000000 | 20, 31 |
| 26 | 103146000000 | 20, 33 |
| 27 | 15010000000 | 20, 26 |
| 28 | 160204000000 | 17, 20 |
| 29 | 114766000000 | 21, 31 |
| 30 | 145194000000 | 27, 31 |
| 31 | 18478000000 | 15, 32 |
| 32 | 18478000000 | 14, 22 |
| 33 | 46472000000 | 14, 28 |
| 34 | 46472000000 | 15, 16 |
| 35 | 2000000 | 13, 26 |
| 36 | 1025212 | 13 |
| 37 | 614300 | 15 |
| 38 | 1093262 | 26 |
| 39 | 2000000 | 19, 25 |
| 40 | 1095276 | 19 |
| 41 | 782000 | 14 |
| 42 | 156964 | 21 |
| 43 | 232650 | 18 |
| 44 | 377056 | 22 |
| 45 | 3633999538 | 31 |
| 46 | 664352 | 17 |
| 47 | 243462 | 16 |
| 48 | 467880 | 25 |
| 49 | 1262012 | 29 |
| 50 | 699343 | 12 |
| 51 | 1491772 | 24 |
| 52 | 381956 | 30 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -5065830722033303/500000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -5065830722033303/500000 | 1 | -5065830722033303/500000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 970 | -5065830722033303/500000 |

## Stage 971

| Property | Value |
| --- | --- |
| Scope | root/AFQ-/AFP-/APR-/BFP-/APS+/BPQ-/PQR+/BQR+ |
| Packet | coordinate:root/HEQ+/CFQ+/AFQ-/AFP-/APR-/BFP-/APS+/BPQ-/PQR+/BQR+:LLLH |
| Index | 0 |
| Context | 147 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 961 |
| Coordinate cut | f high 54789/125000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 796617/1000000 | 1 | 796617/1000000 | 1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 54789/125000 | 58493/100000 | 54789/125000 | 58493/100000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 196767/1000000 | 72133/125000 | 196767/1000000 | 72133/125000 |
| q | 277213/1000000 | 8893/15625 | 277213/1000000 | 8893/15625 |
| u | 382767/1000000 | 196623/250000 | 382767/1000000 | 196623/250000 |
| v | 145167/500000 | 603419/1000000 | 145167/500000 | 603419/1000000 |
| r | 273819/500000 | 1 | 273819/500000 | 1 |
| w | 256303/500000 | 440113/500000 | 256303/500000 | 440113/500000 |
| j | 294577/1000000 | 1174803/2000000 | 294577/1000000 | 1174803/2000000 |
| k | 796617/1000000 | 1 | 796617/1000000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"219:2564","triangle":"AHP","value":"129253/1000000"}` | `1 * h * p + -1 * a * p + -129253/1000000` |
| 1 | bound | `{"direction":"lo","ref":"219:3009","triangle":"EQR","value":"138567/1000000"}` | `-1 * u * w + 1 * e * u + 1 * w + 1 * v * r + -1 * v + -1 * e * r + -138567/1000000` |
| 2 | bound | `{"direction":"lo","ref":"219:3258","triangle":"QRS","value":"31663/250000"}` | `1 * r * k + -1 * v * r + -1 * u * k + -1 * w * j + 1 * u * w + 1 * v * j + -31663/250000` |
| 3 | physical | `{"factor":111,"stage":219}` | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 4 | physical | `{"factor":123,"stage":219}` | `-1/1 * f * k + -1/1 * h * j + 1/1 * f * h + 1/1 * j + -93/1000` |
| 5 | physical | `{"factor":129,"stage":219}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 6 | physical | `{"factor":43,"stage":219}` | `-1/1 * p * w + 1/1 * a * p + 1/1 * q * r + -1/1 * a * r + -93/1000` |
| 7 | physical | `{"factor":67,"stage":219}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 8 | physical | `{"factor":7,"stage":219}` | `1/1 * b * h + -1/1 * a * b + -93/1000` |
| 9 | physical | `{"factor":78,"stage":219}` | `1/1 * u * w + -1/1 * b * w + -1/1 * v * r + 1/1 * b * v + -93/1000` |
| 10 | physical | `{"factor":85,"stage":219}` | `1/1 * v + -1/1 * c * v + -1/1 * e * u + 1/1 * c * e + -93/1000` |
| 11 | physical | `{"factor":86,"stage":219}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 12 | physical | `{"factor":90,"stage":219}` | `1/1 * f * v + -1/1 * c * v + -1/1 * u + 1/1 * c + -93/1000` |
| 13 | physical | `{"factor":93,"stage":219}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 14 | coordinate | `{"box":971,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 15 | coordinate | `{"box":971,"direction":"hi","value":"6143/20000","variable":"b"}` | `6143/20000 + -1 * b` |
| 16 | coordinate | `{"box":971,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 17 | coordinate | `{"box":971,"direction":"hi","value":"440113/500000","variable":"w"}` | `440113/500000 + -1 * w` |
| 18 | coordinate | `{"box":971,"direction":"hi","value":"1174803/2000000","variable":"j"}` | `1174803/2000000 + -1 * j` |
| 19 | coordinate | `{"box":971,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 20 | coordinate | `{"box":971,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 21 | coordinate | `{"box":971,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 22 | coordinate | `{"box":971,"direction":"hi","value":"58493/100000","variable":"f"}` | `58493/100000 + -1 * f` |
| 23 | coordinate | `{"box":971,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 24 | coordinate | `{"box":971,"direction":"hi","value":"72133/125000","variable":"p"}` | `72133/125000 + -1 * p` |
| 25 | coordinate | `{"box":971,"direction":"hi","value":"8893/15625","variable":"q"}` | `8893/15625 + -1 * q` |
| 26 | coordinate | `{"box":971,"direction":"hi","value":"196623/250000","variable":"u"}` | `196623/250000 + -1 * u` |
| 27 | coordinate | `{"box":971,"direction":"hi","value":"603419/1000000","variable":"v"}` | `603419/1000000 + -1 * v` |
| 28 | coordinate | `{"box":971,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 29 | coordinate | `{"box":971,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 30 | coordinate | `{"box":971,"direction":"lo","value":"273819/500000","variable":"r"}` | `-273819/500000 + 1 * r` |
| 31 | coordinate | `{"box":971,"direction":"lo","value":"256303/500000","variable":"w"}` | `-256303/500000 + 1 * w` |
| 32 | coordinate | `{"box":971,"direction":"lo","value":"294577/1000000","variable":"j"}` | `-294577/1000000 + 1 * j` |
| 33 | coordinate | `{"box":971,"direction":"lo","value":"796617/1000000","variable":"k"}` | `-796617/1000000 + 1 * k` |
| 34 | coordinate | `{"box":971,"direction":"lo","value":"796617/1000000","variable":"c"}` | `-796617/1000000 + 1 * c` |
| 35 | coordinate | `{"box":971,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 36 | coordinate | `{"box":971,"direction":"lo","value":"54789/125000","variable":"f"}` | `-54789/125000 + 1 * f` |
| 37 | coordinate | `{"box":971,"direction":"lo","value":"135501/250000","variable":"h"}` | `-135501/250000 + 1 * h` |
| 38 | coordinate | `{"box":971,"direction":"lo","value":"196767/1000000","variable":"p"}` | `-196767/1000000 + 1 * p` |
| 39 | coordinate | `{"box":971,"direction":"lo","value":"277213/1000000","variable":"q"}` | `-277213/1000000 + 1 * q` |
| 40 | coordinate | `{"box":971,"direction":"lo","value":"382767/1000000","variable":"u"}` | `-382767/1000000 + 1 * u` |
| 41 | coordinate | `{"box":971,"direction":"lo","value":"145167/500000","variable":"v"}` | `-145167/500000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 10486000000 | 8 |
| 1 | 64000000 | 0 |
| 2 | 1257000000 | 6 |
| 3 | 1231000000 | 7 |
| 4 | 21567000000 | 9 |
| 5 | 13131000000 | 10 |
| 6 | 3806000000 | 11 |
| 7 | 5131000000 | 12 |
| 8 | 1375000000 | 13 |
| 9 | 15222000000 | 3 |
| 10 | 24261000000 | 1 |
| 11 | 7298000000 | 4 |
| 12 | 140635000000 | 5 |
| 13 | 2694000000 | 2 |
| 14 | 10486000000 | 15, 37 |
| 15 | 1231000000 | 15, 39 |
| 16 | 1193000000 | 24, 28 |
| 17 | 21567000000 | 15, 41 |
| 18 | 21567000000 | 29, 31 |
| 19 | 1257000000 | 28, 30 |
| 20 | 16937000000 | 20, 35 |
| 21 | 1375000000 | 20, 37 |
| 22 | 1375000000 | 34, 39 |
| 23 | 18263000000 | 34, 41 |
| 24 | 3806000000 | 31, 34 |
| 25 | 4092000000 | 35, 40 |
| 26 | 28067000000 | 30, 35 |
| 27 | 7298000000 | 23, 36 |
| 28 | 1231000000 | 36, 39 |
| 29 | 5131000000 | 27, 36 |
| 30 | 140635000000 | 17, 36 |
| 31 | 69275000000 | 33, 36 |
| 32 | 78658000000 | 19, 22 |
| 33 | 1311000000 | 37, 38 |
| 34 | 15222000000 | 26, 37 |
| 35 | 7298000000 | 18, 23 |
| 36 | 1257000000 | 31, 38 |
| 37 | 1257000000 | 16, 39 |
| 38 | 2694000000 | 19, 26 |
| 39 | 2694000000 | 18, 41 |
| 40 | 143330000000 | 19, 30 |
| 41 | 143330000000 | 17, 18 |
| 42 | 10486000000 | 28, 29 |
| 43 | 1088100762 | 28 |
| 44 | 1088137839 | 29 |
| 45 | 118955 | 38 |
| 46 | 873708 | 41 |
| 47 | 1000000 | 20, 41 |
| 48 | 290334 | 20 |
| 49 | 1000000 | 27 |
| 50 | 452185 | 31 |
| 51 | 770324 | 26 |
| 52 | 758974 | 34 |
| 53 | 260584 | 37 |
| 54 | 15255247442 | 18 |
| 55 | 1000000 | 30, 33 |
| 56 | 796617 | 30 |
| 57 | 547638 | 33 |
| 58 | 593233 | 16 |
| 59 | 1000000 | 17, 32 |
| 60 | 294577 | 17 |
| 61 | 191203 | 25 |
| 62 | 56386 | 14 |
| 63 | 161690 | 21 |
| 64 | 165479 | 36 |
| 65 | 657352 | 19 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -3097392947768079/500000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -3097392947768079/500000 | 1 | -3097392947768079/500000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 971 | -3097392947768079/500000 |

## Stage 972

| Property | Value |
| --- | --- |
| Scope | root/AFQ-/AFP-/APR-/BFP-/APS+/BPQ-/PQR+/BQR+ |
| Packet | coordinate:root/HEQ+/CFQ+/AFQ-/AFP-/APR-/BFP-/APS+/BPQ-/PQR+/BQR+:LLH |
| Index | 0 |
| Context | 147 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 960 |
| Coordinate cut | j high 1174803/2000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 796617/1000000 | 1 | 796617/1000000 | 1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 103767/1000000 | 58493/100000 | 103767/1000000 | 58493/100000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 196767/1000000 | 72133/125000 | 196767/1000000 | 72133/125000 |
| q | 277213/1000000 | 8893/15625 | 277213/1000000 | 8893/15625 |
| u | 382767/1000000 | 196623/250000 | 382767/1000000 | 196623/250000 |
| v | 145167/500000 | 603419/1000000 | 145167/500000 | 603419/1000000 |
| r | 273819/500000 | 1 | 273819/500000 | 1 |
| w | 256303/500000 | 440113/500000 | 256303/500000 | 440113/500000 |
| j | 1174803/2000000 | 440113/500000 | 1174803/2000000 | 440113/500000 |
| k | 796617/1000000 | 1 | 796617/1000000 | 1 |

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


## Stage 973

| Property | Value |
| --- | --- |
| Scope | root/AFQ-/AFP-/APR-/BFP-/APS+/BPQ-/PQR+/BQR+ |
| Packet | coordinate:root/HEQ+/CFQ+/AFQ-/AFP-/APR-/BFP-/APS+/BPQ-/PQR+/BQR+:LLHL |
| Index | 0 |
| Context | 147 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 972 |
| Coordinate cut | r low 152451/200000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 796617/1000000 | 1 | 796617/1000000 | 1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 103767/1000000 | 58493/100000 | 103767/1000000 | 58493/100000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 196767/1000000 | 72133/125000 | 196767/1000000 | 72133/125000 |
| q | 277213/1000000 | 8893/15625 | 277213/1000000 | 8893/15625 |
| u | 382767/1000000 | 196623/250000 | 382767/1000000 | 196623/250000 |
| v | 145167/500000 | 603419/1000000 | 145167/500000 | 603419/1000000 |
| r | 273819/500000 | 152451/200000 | 273819/500000 | 152451/200000 |
| w | 256303/500000 | 440113/500000 | 256303/500000 | 440113/500000 |
| j | 1174803/2000000 | 440113/500000 | 1174803/2000000 | 440113/500000 |
| k | 796617/1000000 | 1 | 796617/1000000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"219:3396","triangle":"ARS","value":"7481/20000"}` | `1 * r * k + -1 * a * r + -1 * w * j + 1 * a * j + -7481/20000` |
| 1 | physical | `{"factor":119,"stage":219}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 2 | coordinate | `{"box":973,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 3 | coordinate | `{"box":973,"direction":"hi","value":"152451/200000","variable":"r"}` | `152451/200000 + -1 * r` |
| 4 | coordinate | `{"box":973,"direction":"hi","value":"440113/500000","variable":"j"}` | `440113/500000 + -1 * j` |
| 5 | coordinate | `{"box":973,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 6 | coordinate | `{"box":973,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 7 | coordinate | `{"box":973,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 8 | coordinate | `{"box":973,"direction":"lo","value":"273819/500000","variable":"r"}` | `-273819/500000 + 1 * r` |
| 9 | coordinate | `{"box":973,"direction":"lo","value":"256303/500000","variable":"w"}` | `-256303/500000 + 1 * w` |
| 10 | coordinate | `{"box":973,"direction":"lo","value":"1174803/2000000","variable":"j"}` | `-1174803/2000000 + 1 * j` |
| 11 | coordinate | `{"box":973,"direction":"lo","value":"796617/1000000","variable":"k"}` | `-796617/1000000 + 1 * k` |
| 12 | coordinate | `{"box":973,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 172976000000 | 0 |
| 1 | 246258000000 | 1 |
| 2 | 172976000000 | 2, 3 |
| 3 | 103288000000 | 4, 7 |
| 4 | 69688000000 | 2, 10 |
| 5 | 200632000000 | 8, 12 |
| 6 | 45626000000 | 3, 6 |
| 7 | 246258000000 | 6, 10 |
| 8 | 419234000000 | 3, 11 |
| 9 | 419234000000 | 9, 10 |
| 10 | 242180606234 | 3 |
| 11 | 73305212670 | 5 |
| 12 | 1174803 | 2 |
| 13 | 614300 | 4 |
| 14 | 680451 | 9 |
| 15 | 1376863 | 7 |
| 16 | 86493045008 | 10 |
| 17 | 35259 | 12 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -1095248775549269/50000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -1095248775549269/50000 | 1 | -1095248775549269/50000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 973 | -1095248775549269/50000 |

## Stage 974

| Property | Value |
| --- | --- |
| Scope | root/AFQ-/AFP-/APR-/BFP-/APS+/BPQ-/PQR+/BQR+ |
| Packet | coordinate:root/HEQ+/CFQ+/AFQ-/AFP-/APR-/BFP-/APS+/BPQ-/PQR+/BQR+:LLHH |
| Index | 0 |
| Context | 147 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 972 |
| Coordinate cut | r high 152451/200000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 796617/1000000 | 1 | 796617/1000000 | 1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 103767/1000000 | 58493/100000 | 103767/1000000 | 58493/100000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 196767/1000000 | 72133/125000 | 196767/1000000 | 72133/125000 |
| q | 277213/1000000 | 8893/15625 | 277213/1000000 | 8893/15625 |
| u | 382767/1000000 | 196623/250000 | 382767/1000000 | 196623/250000 |
| v | 145167/500000 | 603419/1000000 | 145167/500000 | 603419/1000000 |
| r | 152451/200000 | 1 | 152451/200000 | 1 |
| w | 256303/500000 | 440113/500000 | 256303/500000 | 440113/500000 |
| j | 1174803/2000000 | 440113/500000 | 1174803/2000000 | 440113/500000 |
| k | 796617/1000000 | 1 | 796617/1000000 | 1 |

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
