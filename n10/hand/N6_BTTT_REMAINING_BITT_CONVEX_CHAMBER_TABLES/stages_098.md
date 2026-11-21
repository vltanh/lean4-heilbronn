# BITT convex: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 490

| Property | Value |
| --- | --- |
| Scope | root/AEQ+/AEP+/PQR-/PQS- |
| Packet | coordinate:root/HEQ-/CFQ-/AEQ+/AEP+/PQR-/PQS-:HHLLLLL |
| Index | 0 |
| Context | 33 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 489 |
| Coordinate cut | v low 249243/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 15761/31250 | 103767/1000000 | 15761/31250 |
| c | 135501/250000 | 385501/500000 | 135501/250000 | 385501/500000 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 103767/1000000 | 58493/100000 | 103767/1000000 | 58493/100000 |
| h | 796617/1000000 | 1 | 796617/1000000 | 1 |
| p | 133749/1000000 | 421991/1000000 | 133749/1000000 | 421991/1000000 |
| q | 196767/1000000 | 9489/15625 | 196767/1000000 | 9489/15625 |
| u | 323991/1000000 | 1230991/2000000 | 323991/1000000 | 1230991/2000000 |
| v | 143641/500000 | 249243/500000 | 143641/500000 | 249243/500000 |
| r | 510467/1000000 | 1510467/2000000 | 510467/1000000 | 1510467/2000000 |
| w | 116579/200000 | 440113/500000 | 116579/200000 | 440113/500000 |
| j | 488441/1000000 | 440113/500000 | 488441/1000000 | 440113/500000 |
| k | 331827/500000 | 1 | 331827/500000 | 1 |

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
| 0 | physical | `{"factor":0,"stage":119}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 1 | physical | `{"factor":10,"stage":119}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 2 | physical | `{"factor":106,"stage":119}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 3 | physical | `{"factor":109,"stage":119}` | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 4 | physical | `{"factor":116,"stage":119}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 5 | physical | `{"factor":123,"stage":119}` | `-1/1 * u * w + 1/1 * q * u + 1/1 * p * w + 1/1 * v * r + -1/1 * p * v + -1/1 * q * r + -93/1000` |
| 6 | physical | `{"factor":124,"stage":119}` | `-1/1 * u * k + 1/1 * q * u + 1/1 * p * k + 1/1 * v * j + -1/1 * p * v + -1/1 * q * j + -93/1000` |
| 7 | physical | `{"factor":128,"stage":119}` | `1/1 * e + -1/1 * a` |
| 8 | physical | `{"factor":132,"stage":119}` | `1/1 * f + -1/1 * e` |
| 9 | physical | `{"factor":763,"stage":119}` | `1/1 * p * v + -1/1 * h * p + -1/1 * q * u + 1/1 * h * u + -125251/1000000` |
| 10 | physical | `{"factor":78,"stage":119}` | `-1/1 * f * v + 1/1 * c * v + 1/1 * u + -1/1 * c + -93/1000` |
| 11 | physical | `{"factor":81,"stage":119}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 12 | physical | `{"factor":98,"stage":119}` | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -93/1000` |
| 13 | coordinate | `{"box":490,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 14 | coordinate | `{"box":490,"direction":"hi","value":"1510467/2000000","variable":"r"}` | `1510467/2000000 + -1 * r` |
| 15 | coordinate | `{"box":490,"direction":"hi","value":"440113/500000","variable":"w"}` | `440113/500000 + -1 * w` |
| 16 | coordinate | `{"box":490,"direction":"hi","value":"440113/500000","variable":"j"}` | `440113/500000 + -1 * j` |
| 17 | coordinate | `{"box":490,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 18 | coordinate | `{"box":490,"direction":"hi","value":"385501/500000","variable":"c"}` | `385501/500000 + -1 * c` |
| 19 | coordinate | `{"box":490,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 20 | coordinate | `{"box":490,"direction":"hi","value":"58493/100000","variable":"f"}` | `58493/100000 + -1 * f` |
| 21 | coordinate | `{"box":490,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 22 | coordinate | `{"box":490,"direction":"hi","value":"421991/1000000","variable":"p"}` | `421991/1000000 + -1 * p` |
| 23 | coordinate | `{"box":490,"direction":"hi","value":"9489/15625","variable":"q"}` | `9489/15625 + -1 * q` |
| 24 | coordinate | `{"box":490,"direction":"hi","value":"1230991/2000000","variable":"u"}` | `1230991/2000000 + -1 * u` |
| 25 | coordinate | `{"box":490,"direction":"hi","value":"249243/500000","variable":"v"}` | `249243/500000 + -1 * v` |
| 26 | coordinate | `{"box":490,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 27 | coordinate | `{"box":490,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 28 | coordinate | `{"box":490,"direction":"lo","value":"510467/1000000","variable":"r"}` | `-510467/1000000 + 1 * r` |
| 29 | coordinate | `{"box":490,"direction":"lo","value":"116579/200000","variable":"w"}` | `-116579/200000 + 1 * w` |
| 30 | coordinate | `{"box":490,"direction":"lo","value":"488441/1000000","variable":"j"}` | `-488441/1000000 + 1 * j` |
| 31 | coordinate | `{"box":490,"direction":"lo","value":"331827/500000","variable":"k"}` | `-331827/500000 + 1 * k` |
| 32 | coordinate | `{"box":490,"direction":"lo","value":"135501/250000","variable":"c"}` | `-135501/250000 + 1 * c` |
| 33 | coordinate | `{"box":490,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 34 | coordinate | `{"box":490,"direction":"lo","value":"103767/1000000","variable":"f"}` | `-103767/1000000 + 1 * f` |
| 35 | coordinate | `{"box":490,"direction":"lo","value":"796617/1000000","variable":"h"}` | `-796617/1000000 + 1 * h` |
| 36 | coordinate | `{"box":490,"direction":"lo","value":"133749/1000000","variable":"p"}` | `-133749/1000000 + 1 * p` |
| 37 | coordinate | `{"box":490,"direction":"lo","value":"196767/1000000","variable":"q"}` | `-196767/1000000 + 1 * q` |
| 38 | coordinate | `{"box":490,"direction":"lo","value":"323991/1000000","variable":"u"}` | `-323991/1000000 + 1 * u` |
| 39 | coordinate | `{"box":490,"direction":"lo","value":"143641/500000","variable":"v"}` | `-143641/500000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 53604000000 | 0 |
| 1 | 11046000000 | 1 |
| 2 | 77078000000 | 10 |
| 3 | 27628000000 | 11 |
| 4 | 2454000000 | 12 |
| 5 | 59688000000 | 2 |
| 6 | 7268000000 | 3 |
| 7 | 7268000000 | 4 |
| 8 | 2454000000 | 9 |
| 9 | 13796000000 | 5 |
| 10 | 135896000000 | 6 |
| 11 | 27006000000 | 7 |
| 12 | 35978000000 | 8 |
| 13 | 64650000000 | 26, 27 |
| 14 | 53604000000 | 13, 32 |
| 15 | 11046000000 | 23, 27 |
| 16 | 11046000000 | 22, 26 |
| 17 | 27628000000 | 21, 32 |
| 18 | 27628000000 | 32, 37 |
| 19 | 77078000000 | 25, 32 |
| 20 | 2454000000 | 24, 33 |
| 21 | 59688000000 | 14, 19 |
| 22 | 59688000000 | 16, 33 |
| 23 | 7268000000 | 21, 34 |
| 24 | 77078000000 | 20, 25 |
| 25 | 7268000000 | 31, 34 |
| 26 | 30082000000 | 21, 22 |
| 27 | 7268000000 | 14, 21 |
| 28 | 66956000000 | 14, 31 |
| 29 | 15042000000 | 29, 30 |
| 30 | 51914000000 | 15, 16 |
| 31 | 147238000000 | 22, 25 |
| 32 | 147238000000 | 24, 37 |
| 33 | 13796000000 | 15, 36 |
| 34 | 13796000000 | 14, 23 |
| 35 | 135896000000 | 22, 31 |
| 36 | 135896000000 | 30, 37 |
| 37 | 13796000000 | 15, 24 |
| 38 | 2010000000 | 14, 39 |
| 39 | 124088000000 | 31, 38 |
| 40 | 11810000000 | 17, 24 |
| 41 | 135896000000 | 25, 30 |
| 42 | 871684 | 38 |
| 43 | 493832 | 18 |
| 44 | 563615 | 39 |
| 45 | 705272 | 35 |
| 46 | 272457 | 31 |
| 47 | 1356800 | 29 |
| 48 | 11903946424 | 14 |
| 49 | 90766 | 16 |
| 50 | 11786000000 | 25, 28 |
| 51 | 6016364062 | 25 |
| 52 | 2000000 | 24, 31 |
| 53 | 1327308 | 24 |
| 54 | 1230991 | 17 |
| 55 | 1021703 | 33 |
| 56 | 358452 | 13 |
| 57 | 258820 | 20 |
| 58 | 344934 | 27 |
| 59 | 329303 | 37 |
| 60 | 349506 | 36 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -62664656073413/10000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -62664656073413/10000 | 1 | -62664656073413/10000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 490 | -62664656073413/10000 |

## Stage 491

| Property | Value |
| --- | --- |
| Scope | root/AEQ+/AEP+/PQR-/PQS- |
| Packet | coordinate:root/HEQ-/CFQ-/AEQ+/AEP+/PQR-/PQS-:HHLLLLH |
| Index | 0 |
| Context | 33 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 489 |
| Coordinate cut | v high 249243/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 15761/31250 | 103767/1000000 | 15761/31250 |
| c | 135501/250000 | 385501/500000 | 135501/250000 | 385501/500000 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 103767/1000000 | 58493/100000 | 103767/1000000 | 58493/100000 |
| h | 796617/1000000 | 1 | 796617/1000000 | 1 |
| p | 133749/1000000 | 421991/1000000 | 133749/1000000 | 421991/1000000 |
| q | 196767/1000000 | 9489/15625 | 196767/1000000 | 9489/15625 |
| u | 323991/1000000 | 1230991/2000000 | 323991/1000000 | 1230991/2000000 |
| v | 249243/500000 | 70969/100000 | 249243/500000 | 70969/100000 |
| r | 510467/1000000 | 1510467/2000000 | 510467/1000000 | 1510467/2000000 |
| w | 116579/200000 | 440113/500000 | 116579/200000 | 440113/500000 |
| j | 488441/1000000 | 440113/500000 | 488441/1000000 | 440113/500000 |
| k | 331827/500000 | 1 | 331827/500000 | 1 |

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
| 0 | physical | `{"factor":10,"stage":119}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 1 | physical | `{"factor":106,"stage":119}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 2 | physical | `{"factor":109,"stage":119}` | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 3 | physical | `{"factor":116,"stage":119}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 4 | physical | `{"factor":124,"stage":119}` | `-1/1 * u * k + 1/1 * q * u + 1/1 * p * k + 1/1 * v * j + -1/1 * p * v + -1/1 * q * j + -93/1000` |
| 5 | physical | `{"factor":132,"stage":119}` | `1/1 * f + -1/1 * e` |
| 6 | physical | `{"factor":142,"stage":119}` | `1/1 * c * h + -135501/250000` |
| 7 | physical | `{"factor":27,"stage":119}` | `1/1 * q + -1/1 * a + -1/1 * e * p + 1/1 * a * p + -93/1000` |
| 8 | physical | `{"factor":673,"stage":119}` | `1/1 * c * q + -1/1 * b * q + -22907/200000` |
| 9 | physical | `{"factor":7,"stage":119}` | `1/1 * b * h + -1/1 * a * b + -93/1000` |
| 10 | physical | `{"factor":78,"stage":119}` | `-1/1 * f * v + 1/1 * c * v + 1/1 * u + -1/1 * c + -93/1000` |
| 11 | physical | `{"factor":81,"stage":119}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 12 | physical | `{"factor":98,"stage":119}` | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -93/1000` |
| 13 | coordinate | `{"box":491,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 14 | coordinate | `{"box":491,"direction":"hi","value":"1510467/2000000","variable":"r"}` | `1510467/2000000 + -1 * r` |
| 15 | coordinate | `{"box":491,"direction":"hi","value":"440113/500000","variable":"w"}` | `440113/500000 + -1 * w` |
| 16 | coordinate | `{"box":491,"direction":"hi","value":"440113/500000","variable":"j"}` | `440113/500000 + -1 * j` |
| 17 | coordinate | `{"box":491,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 18 | coordinate | `{"box":491,"direction":"hi","value":"385501/500000","variable":"c"}` | `385501/500000 + -1 * c` |
| 19 | coordinate | `{"box":491,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 20 | coordinate | `{"box":491,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 21 | coordinate | `{"box":491,"direction":"hi","value":"421991/1000000","variable":"p"}` | `421991/1000000 + -1 * p` |
| 22 | coordinate | `{"box":491,"direction":"hi","value":"9489/15625","variable":"q"}` | `9489/15625 + -1 * q` |
| 23 | coordinate | `{"box":491,"direction":"hi","value":"1230991/2000000","variable":"u"}` | `1230991/2000000 + -1 * u` |
| 24 | coordinate | `{"box":491,"direction":"hi","value":"70969/100000","variable":"v"}` | `70969/100000 + -1 * v` |
| 25 | coordinate | `{"box":491,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 26 | coordinate | `{"box":491,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 27 | coordinate | `{"box":491,"direction":"lo","value":"116579/200000","variable":"w"}` | `-116579/200000 + 1 * w` |
| 28 | coordinate | `{"box":491,"direction":"lo","value":"488441/1000000","variable":"j"}` | `-488441/1000000 + 1 * j` |
| 29 | coordinate | `{"box":491,"direction":"lo","value":"331827/500000","variable":"k"}` | `-331827/500000 + 1 * k` |
| 30 | coordinate | `{"box":491,"direction":"lo","value":"135501/250000","variable":"c"}` | `-135501/250000 + 1 * c` |
| 31 | coordinate | `{"box":491,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 32 | coordinate | `{"box":491,"direction":"lo","value":"103767/1000000","variable":"f"}` | `-103767/1000000 + 1 * f` |
| 33 | coordinate | `{"box":491,"direction":"lo","value":"796617/1000000","variable":"h"}` | `-796617/1000000 + 1 * h` |
| 34 | coordinate | `{"box":491,"direction":"lo","value":"133749/1000000","variable":"p"}` | `-133749/1000000 + 1 * p` |
| 35 | coordinate | `{"box":491,"direction":"lo","value":"196767/1000000","variable":"q"}` | `-196767/1000000 + 1 * q` |
| 36 | coordinate | `{"box":491,"direction":"lo","value":"323991/1000000","variable":"u"}` | `-323991/1000000 + 1 * u` |
| 37 | coordinate | `{"box":491,"direction":"lo","value":"249243/500000","variable":"v"}` | `-249243/500000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 223000000 | 9 |
| 1 | 1927000000 | 0 |
| 2 | 1021000000 | 7 |
| 3 | 1927000000 | 8 |
| 4 | 54672000000 | 10 |
| 5 | 9096000000 | 11 |
| 6 | 40792000000 | 12 |
| 7 | 49804000000 | 1 |
| 8 | 32598000000 | 2 |
| 9 | 32598000000 | 3 |
| 10 | 22550000000 | 4 |
| 11 | 16289000000 | 5 |
| 12 | 8187000000 | 6 |
| 13 | 2150000000 | 25, 26 |
| 14 | 223000000 | 20, 26 |
| 15 | 2947000000 | 21, 25 |
| 16 | 17282000000 | 20, 30 |
| 17 | 7169000000 | 30, 35 |
| 18 | 54672000000 | 24, 30 |
| 19 | 1021000000 | 19, 21 |
| 20 | 40792000000 | 23, 31 |
| 21 | 49804000000 | 14, 19 |
| 22 | 12505000000 | 16, 31 |
| 23 | 37299000000 | 19, 28 |
| 24 | 32598000000 | 20, 32 |
| 25 | 54672000000 | 32, 37 |
| 26 | 32598000000 | 29, 32 |
| 27 | 9096000000 | 20, 21 |
| 28 | 40792000000 | 20, 23 |
| 29 | 32598000000 | 14, 20 |
| 30 | 82402000000 | 14, 29 |
| 31 | 58013000000 | 27, 28 |
| 32 | 24389000000 | 15, 16 |
| 33 | 22550000000 | 34, 37 |
| 34 | 22550000000 | 23, 35 |
| 35 | 16247000000 | 17, 34 |
| 36 | 6303000000 | 21, 29 |
| 37 | 22550000000 | 28, 35 |
| 38 | 22550000000 | 17, 23 |
| 39 | 22550000000 | 16, 37 |
| 40 | 1000000 | 13, 34 |
| 41 | 133749 | 13 |
| 42 | 307150 | 21 |
| 43 | 452299 | 22 |
| 44 | 491573 | 25 |
| 45 | 40686 | 36 |
| 46 | 450943 | 30 |
| 47 | 1000000 | 18, 33 |
| 48 | 796617 | 18 |
| 49 | 771002 | 20 |
| 50 | 349614 | 24 |
| 51 | 174370 | 33 |
| 52 | 440048 | 29 |
| 53 | 240353 | 15 |
| 54 | 488441 | 19 |
| 55 | 391000 | 16 |
| 56 | 2615052908 | 14 |
| 57 | 431764 | 28 |
| 58 | 19684 | 32 |
| 59 | 1111061 | 31 |
| 60 | 99050 | 26 |
| 61 | 257789 | 34 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -14000018475202/15625 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -14000018475202/15625 | 1 | -14000018475202/15625 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 491 | -14000018475202/15625 |

## Stage 492

| Property | Value |
| --- | --- |
| Scope | root/AEQ+/AEP+/PQR-/PQS- |
| Packet | coordinate:root/HEQ-/CFQ-/AEQ+/AEP+/PQR-/PQS-:HHLLLH |
| Index | 0 |
| Context | 33 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 488 |
| Coordinate cut | r high 1510467/2000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 15761/31250 | 103767/1000000 | 15761/31250 |
| c | 135501/250000 | 385501/500000 | 135501/250000 | 385501/500000 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 103767/1000000 | 58493/100000 | 103767/1000000 | 58493/100000 |
| h | 796617/1000000 | 1 | 796617/1000000 | 1 |
| p | 133749/1000000 | 421991/1000000 | 133749/1000000 | 421991/1000000 |
| q | 196767/1000000 | 9489/15625 | 196767/1000000 | 9489/15625 |
| u | 323991/1000000 | 1230991/2000000 | 323991/1000000 | 1230991/2000000 |
| v | 143641/500000 | 70969/100000 | 143641/500000 | 70969/100000 |
| r | 1510467/2000000 | 1 | 1510467/2000000 | 1 |
| w | 116579/200000 | 440113/500000 | 116579/200000 | 440113/500000 |
| j | 488441/1000000 | 440113/500000 | 488441/1000000 | 440113/500000 |
| k | 331827/500000 | 1 | 331827/500000 | 1 |

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


## Stage 493

| Property | Value |
| --- | --- |
| Scope | root/AEQ+/AEP+/PQR-/PQS- |
| Packet | coordinate:root/HEQ-/CFQ-/AEQ+/AEP+/PQR-/PQS-:HHLLLHL |
| Index | 0 |
| Context | 33 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 492 |
| Coordinate cut | v low 249243/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 15761/31250 | 103767/1000000 | 15761/31250 |
| c | 135501/250000 | 385501/500000 | 135501/250000 | 385501/500000 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 103767/1000000 | 58493/100000 | 103767/1000000 | 58493/100000 |
| h | 796617/1000000 | 1 | 796617/1000000 | 1 |
| p | 133749/1000000 | 421991/1000000 | 133749/1000000 | 421991/1000000 |
| q | 196767/1000000 | 9489/15625 | 196767/1000000 | 9489/15625 |
| u | 323991/1000000 | 1230991/2000000 | 323991/1000000 | 1230991/2000000 |
| v | 143641/500000 | 249243/500000 | 143641/500000 | 249243/500000 |
| r | 1510467/2000000 | 1 | 1510467/2000000 | 1 |
| w | 116579/200000 | 440113/500000 | 116579/200000 | 440113/500000 |
| j | 488441/1000000 | 440113/500000 | 488441/1000000 | 440113/500000 |
| k | 331827/500000 | 1 | 331827/500000 | 1 |

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


## Stage 494

| Property | Value |
| --- | --- |
| Scope | root/AEQ+/AEP+/PQR-/PQS- |
| Packet | coordinate:root/HEQ-/CFQ-/AEQ+/AEP+/PQR-/PQS-:HHLLLHLL |
| Index | 0 |
| Context | 33 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 493 |
| Coordinate cut | q low 804063/2000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 15761/31250 | 103767/1000000 | 15761/31250 |
| c | 135501/250000 | 385501/500000 | 135501/250000 | 385501/500000 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 103767/1000000 | 58493/100000 | 103767/1000000 | 58493/100000 |
| h | 796617/1000000 | 1 | 796617/1000000 | 1 |
| p | 133749/1000000 | 421991/1000000 | 133749/1000000 | 421991/1000000 |
| q | 196767/1000000 | 804063/2000000 | 196767/1000000 | 804063/2000000 |
| u | 323991/1000000 | 1230991/2000000 | 323991/1000000 | 1230991/2000000 |
| v | 143641/500000 | 249243/500000 | 143641/500000 | 249243/500000 |
| r | 1510467/2000000 | 1 | 1510467/2000000 | 1 |
| w | 116579/200000 | 440113/500000 | 116579/200000 | 440113/500000 |
| j | 488441/1000000 | 440113/500000 | 488441/1000000 | 440113/500000 |
| k | 331827/500000 | 1 | 331827/500000 | 1 |

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
| 0 | physical | `{"factor":0,"stage":119}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 1 | physical | `{"factor":10,"stage":119}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 2 | physical | `{"factor":106,"stage":119}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 3 | physical | `{"factor":110,"stage":119}` | `-1/1 * f * k + -1/1 * h * j + 1/1 * f * h + 1/1 * j + -93/1000` |
| 4 | physical | `{"factor":116,"stage":119}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 5 | physical | `{"factor":124,"stage":119}` | `-1/1 * u * k + 1/1 * q * u + 1/1 * p * k + 1/1 * v * j + -1/1 * p * v + -1/1 * q * j + -93/1000` |
| 6 | physical | `{"factor":128,"stage":119}` | `1/1 * e + -1/1 * a` |
| 7 | physical | `{"factor":132,"stage":119}` | `1/1 * f + -1/1 * e` |
| 8 | physical | `{"factor":41,"stage":119}` | `1/1 * c * e + -1/1 * b * e + -93/1000` |
| 9 | physical | `{"factor":673,"stage":119}` | `1/1 * c * q + -1/1 * b * q + -22907/200000` |
| 10 | physical | `{"factor":78,"stage":119}` | `-1/1 * f * v + 1/1 * c * v + 1/1 * u + -1/1 * c + -93/1000` |
| 11 | physical | `{"factor":81,"stage":119}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 12 | physical | `{"factor":98,"stage":119}` | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -93/1000` |
| 13 | coordinate | `{"box":494,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 14 | coordinate | `{"box":494,"direction":"hi","value":"15761/31250","variable":"b"}` | `15761/31250 + -1 * b` |
| 15 | coordinate | `{"box":494,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 16 | coordinate | `{"box":494,"direction":"hi","value":"440113/500000","variable":"w"}` | `440113/500000 + -1 * w` |
| 17 | coordinate | `{"box":494,"direction":"hi","value":"440113/500000","variable":"j"}` | `440113/500000 + -1 * j` |
| 18 | coordinate | `{"box":494,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 19 | coordinate | `{"box":494,"direction":"hi","value":"385501/500000","variable":"c"}` | `385501/500000 + -1 * c` |
| 20 | coordinate | `{"box":494,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 21 | coordinate | `{"box":494,"direction":"hi","value":"58493/100000","variable":"f"}` | `58493/100000 + -1 * f` |
| 22 | coordinate | `{"box":494,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 23 | coordinate | `{"box":494,"direction":"hi","value":"421991/1000000","variable":"p"}` | `421991/1000000 + -1 * p` |
| 24 | coordinate | `{"box":494,"direction":"hi","value":"804063/2000000","variable":"q"}` | `804063/2000000 + -1 * q` |
| 25 | coordinate | `{"box":494,"direction":"hi","value":"1230991/2000000","variable":"u"}` | `1230991/2000000 + -1 * u` |
| 26 | coordinate | `{"box":494,"direction":"hi","value":"249243/500000","variable":"v"}` | `249243/500000 + -1 * v` |
| 27 | coordinate | `{"box":494,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 28 | coordinate | `{"box":494,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 29 | coordinate | `{"box":494,"direction":"lo","value":"488441/1000000","variable":"j"}` | `-488441/1000000 + 1 * j` |
| 30 | coordinate | `{"box":494,"direction":"lo","value":"331827/500000","variable":"k"}` | `-331827/500000 + 1 * k` |
| 31 | coordinate | `{"box":494,"direction":"lo","value":"135501/250000","variable":"c"}` | `-135501/250000 + 1 * c` |
| 32 | coordinate | `{"box":494,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 33 | coordinate | `{"box":494,"direction":"lo","value":"103767/1000000","variable":"f"}` | `-103767/1000000 + 1 * f` |
| 34 | coordinate | `{"box":494,"direction":"lo","value":"796617/1000000","variable":"h"}` | `-796617/1000000 + 1 * h` |
| 35 | coordinate | `{"box":494,"direction":"lo","value":"196767/1000000","variable":"q"}` | `-196767/1000000 + 1 * q` |
| 36 | coordinate | `{"box":494,"direction":"lo","value":"323991/1000000","variable":"u"}` | `-323991/1000000 + 1 * u` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 1456000000 | 0 |
| 1 | 104448000000 | 1 |
| 2 | 6008000000 | 8 |
| 3 | 75562000000 | 9 |
| 4 | 84832000000 | 10 |
| 5 | 33122000000 | 11 |
| 6 | 5324000000 | 12 |
| 7 | 17170000000 | 2 |
| 8 | 7756000000 | 3 |
| 9 | 2648000000 | 4 |
| 10 | 134922000000 | 5 |
| 11 | 33876000000 | 6 |
| 12 | 39104000000 | 7 |
| 13 | 105904000000 | 27, 28 |
| 14 | 1456000000 | 13, 31 |
| 15 | 6008000000 | 28, 32 |
| 16 | 28884000000 | 24, 28 |
| 17 | 104448000000 | 23, 27 |
| 18 | 6008000000 | 19, 32 |
| 19 | 33122000000 | 22, 31 |
| 20 | 42440000000 | 19, 35 |
| 21 | 84832000000 | 26, 31 |
| 22 | 5324000000 | 25, 32 |
| 23 | 17170000000 | 15, 20 |
| 24 | 17170000000 | 17, 32 |
| 25 | 7756000000 | 22, 33 |
| 26 | 84832000000 | 21, 26 |
| 27 | 2648000000 | 16, 33 |
| 28 | 10404000000 | 30, 33 |
| 29 | 33122000000 | 22, 23 |
| 30 | 5324000000 | 22, 25 |
| 31 | 7756000000 | 17, 22 |
| 32 | 19818000000 | 15, 30 |
| 33 | 19818000000 | 16, 17 |
| 34 | 134922000000 | 23, 26 |
| 35 | 134922000000 | 25, 35 |
| 36 | 134922000000 | 23, 30 |
| 37 | 134922000000 | 17, 24 |
| 38 | 84182000000 | 30, 36 |
| 39 | 50740000000 | 18, 25 |
| 40 | 134922000000 | 26, 29 |
| 41 | 207534 | 27 |
| 42 | 494658 | 28 |
| 43 | 2000000 | 14, 35 |
| 44 | 393534 | 14 |
| 45 | 1571091 | 24 |
| 46 | 931654 | 25 |
| 47 | 1001632 | 31 |
| 48 | 68468 | 26 |
| 49 | 43460 | 34 |
| 50 | 174198 | 30 |
| 51 | 456148 | 16 |
| 52 | 805429 | 29 |
| 53 | 3790824972 | 15 |
| 54 | 1126342 | 20 |
| 55 | 140958 | 13 |
| 56 | 1382120 | 33 |
| 57 | 1052512 | 23 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -957945427679921/2000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -957945427679921/2000000 | 1 | -957945427679921/2000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 494 | -957945427679921/2000000 |
