# BITT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 1205

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ+/BPR+/BPS+/PRS+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ+/BPR+/BPS+/PRS+:L |
| Index | 0 |
| Context | 257 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1204 |
| Coordinate cut | v low 145983/200000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 73307/200000 | 103767/1000000 | 73307/200000 |
| b | 103767/1000000 | 133227/500000 | 103767/1000000 | 133227/500000 |
| c | 796617/1000000 | 1 | 796617/1000000 | 1 |
| e | 103767/1000000 | 73307/200000 | 103767/1000000 | 73307/200000 |
| f | 155651/500000 | 344349/500000 | 155651/500000 | 344349/500000 |
| h | 11407/20000 | 1 | 11407/20000 | 1 |
| p | 491949/1000000 | 710233/1000000 | 491949/1000000 | 710233/1000000 |
| q | 196767/1000000 | 415051/1000000 | 196767/1000000 | 415051/1000000 |
| u | 103767/1000000 | 256733/500000 | 103767/1000000 | 256733/500000 |
| v | 419897/1000000 | 145983/200000 | 419897/1000000 | 145983/200000 |
| r | 82331/125000 | 1 | 82331/125000 | 1 |
| w | 837313/1000000 | 1 | 837313/1000000 | 1 |
| j | 129709/250000 | 876743/1000000 | 129709/250000 | 876743/1000000 |
| k | 16563/40000 | 864963/1000000 | 16563/40000 | 864963/1000000 |

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
| 0 | bound | `{"direction":"lo","ref":"471:4958","triangle":"FRS","value":"107267/1000000"}` | `-1 * r * k + 1 * r + 1 * f * k + 1 * w * j + -1 * f * w + -1 * j + -107267/1000000` |
| 1 | bound | `{"direction":"lo","ref":"471:5073","triangle":"BPR","value":"327787/1000000"}` | `1 * p * w + -1 * b * w + -1 * q * r + 1 * b * q + -327787/1000000` |
| 2 | physical | `{"factor":10,"stage":471}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 3 | physical | `{"factor":106,"stage":471}` | `-1/1 * f * k + 1/1 * e * f + 1/1 * k + 1/1 * j + -1093/1000 + -1/1 * e * j` |
| 4 | physical | `{"factor":117,"stage":471}` | `-1/1 * f * v + -1/1 * h * u + 1/1 * f * h + 1/1 * u + -93/1000` |
| 5 | physical | `{"factor":132,"stage":471}` | `1/1 * r * k + -1/1 * q * r + -1/1 * p * k + -1/1 * w * j + 1/1 * p * w + 1/1 * q * j + -93/1000` |
| 6 | physical | `{"factor":26,"stage":471}` | `1/1 * q + -1/1 * a + -1/1 * e * p + 1/1 * a * p + -93/1000` |
| 7 | physical | `{"factor":34,"stage":471}` | `1/1 * f * v + -1/1 * a * f + -1/1 * u + 1/1 * a * u + -93/1000` |
| 8 | physical | `{"factor":7,"stage":471}` | `1/1 * b * h + -1/1 * a * b + -93/1000` |
| 9 | physical | `{"factor":78,"stage":471}` | `-1/1 * r * k + 1/1 * b * k + 1/1 * w * j + -1/1 * b * w + -93/1000` |
| 10 | physical | `{"factor":82,"stage":471}` | `1/1 * q + -1/1 * c * q + -1/1 * e * p + 1/1 * c * e + -93/1000` |
| 11 | physical | `{"factor":84,"stage":471}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 12 | physical | `{"factor":91,"stage":471}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 13 | physical | `{"factor":92,"stage":471}` | `1/1 * c * v + 1/1 * h * u + -1/1 * c * h + -93/1000` |
| 14 | physical | `{"factor":95,"stage":471}` | `-1/1 * p * v + 1/1 * c * v + 1/1 * q * u + -1/1 * c * q + -93/1000` |
| 15 | coordinate | `{"box":1205,"direction":"hi","value":"73307/200000","variable":"a"}` | `73307/200000 + -1 * a` |
| 16 | coordinate | `{"box":1205,"direction":"hi","value":"133227/500000","variable":"b"}` | `133227/500000 + -1 * b` |
| 17 | coordinate | `{"box":1205,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 18 | coordinate | `{"box":1205,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 19 | coordinate | `{"box":1205,"direction":"hi","value":"876743/1000000","variable":"j"}` | `876743/1000000 + -1 * j` |
| 20 | coordinate | `{"box":1205,"direction":"hi","value":"864963/1000000","variable":"k"}` | `864963/1000000 + -1 * k` |
| 21 | coordinate | `{"box":1205,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 22 | coordinate | `{"box":1205,"direction":"hi","value":"73307/200000","variable":"e"}` | `73307/200000 + -1 * e` |
| 23 | coordinate | `{"box":1205,"direction":"hi","value":"344349/500000","variable":"f"}` | `344349/500000 + -1 * f` |
| 24 | coordinate | `{"box":1205,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 25 | coordinate | `{"box":1205,"direction":"hi","value":"710233/1000000","variable":"p"}` | `710233/1000000 + -1 * p` |
| 26 | coordinate | `{"box":1205,"direction":"hi","value":"415051/1000000","variable":"q"}` | `415051/1000000 + -1 * q` |
| 27 | coordinate | `{"box":1205,"direction":"hi","value":"256733/500000","variable":"u"}` | `256733/500000 + -1 * u` |
| 28 | coordinate | `{"box":1205,"direction":"hi","value":"145983/200000","variable":"v"}` | `145983/200000 + -1 * v` |
| 29 | coordinate | `{"box":1205,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 30 | coordinate | `{"box":1205,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 31 | coordinate | `{"box":1205,"direction":"lo","value":"82331/125000","variable":"r"}` | `-82331/125000 + 1 * r` |
| 32 | coordinate | `{"box":1205,"direction":"lo","value":"837313/1000000","variable":"w"}` | `-837313/1000000 + 1 * w` |
| 33 | coordinate | `{"box":1205,"direction":"lo","value":"129709/250000","variable":"j"}` | `-129709/250000 + 1 * j` |
| 34 | coordinate | `{"box":1205,"direction":"lo","value":"16563/40000","variable":"k"}` | `-16563/40000 + 1 * k` |
| 35 | coordinate | `{"box":1205,"direction":"lo","value":"796617/1000000","variable":"c"}` | `-796617/1000000 + 1 * c` |
| 36 | coordinate | `{"box":1205,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 37 | coordinate | `{"box":1205,"direction":"lo","value":"155651/500000","variable":"f"}` | `-155651/500000 + 1 * f` |
| 38 | coordinate | `{"box":1205,"direction":"lo","value":"11407/20000","variable":"h"}` | `-11407/20000 + 1 * h` |
| 39 | coordinate | `{"box":1205,"direction":"lo","value":"491949/1000000","variable":"p"}` | `-491949/1000000 + 1 * p` |
| 40 | coordinate | `{"box":1205,"direction":"lo","value":"196767/1000000","variable":"q"}` | `-196767/1000000 + 1 * q` |
| 41 | coordinate | `{"box":1205,"direction":"lo","value":"103767/1000000","variable":"u"}` | `-103767/1000000 + 1 * u` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 18702000000 | 8 |
| 1 | 11616000000 | 2 |
| 2 | 28452000000 | 6 |
| 3 | 15534000000 | 7 |
| 4 | 33073000000 | 1 |
| 5 | 7640000000 | 9 |
| 6 | 4688000000 | 10 |
| 7 | 27730000000 | 11 |
| 8 | 7503000000 | 12 |
| 9 | 5975000000 | 13 |
| 10 | 40387000000 | 14 |
| 11 | 12653000000 | 3 |
| 12 | 5975000000 | 4 |
| 13 | 12653000000 | 0 |
| 14 | 23629000000 | 5 |
| 15 | 30318000000 | 29, 30 |
| 16 | 15534000000 | 29, 37 |
| 17 | 18702000000 | 24, 30 |
| 18 | 44689000000 | 26, 30 |
| 19 | 40068000000 | 25, 29 |
| 20 | 15534000000 | 27, 29 |
| 21 | 40712000000 | 16, 18 |
| 22 | 7640000000 | 20, 30 |
| 23 | 32419000000 | 21, 36 |
| 24 | 1528000000 | 21, 38 |
| 25 | 52579000000 | 35, 40 |
| 26 | 46362000000 | 28, 35 |
| 27 | 27730000000 | 18, 21 |
| 28 | 12653000000 | 23, 36 |
| 29 | 33140000000 | 36, 39 |
| 30 | 27730000000 | 31, 36 |
| 31 | 12653000000 | 33, 36 |
| 32 | 5975000000 | 24, 37 |
| 33 | 9559000000 | 28, 37 |
| 34 | 12653000000 | 18, 23 |
| 35 | 7503000000 | 24, 25 |
| 36 | 40387000000 | 25, 28 |
| 37 | 40387000000 | 27, 40 |
| 38 | 56702000000 | 18, 39 |
| 39 | 56702000000 | 31, 40 |
| 40 | 23629000000 | 20, 25 |
| 41 | 23629000000 | 19, 40 |
| 42 | 3336000000 | 17, 34 |
| 43 | 3336000000 | 18, 19 |
| 44 | 828987 | 40 |
| 45 | 23514 | 15 |
| 46 | 254593 | 41 |
| 47 | 1000000 | 30, 32 |
| 48 | 837313 | 30 |
| 49 | 103767 | 32 |
| 50 | 1000000 | 21, 40 |
| 51 | 221077 | 21 |
| 52 | 1000000 | 26 |
| 53 | 1000000 | 35, 36 |
| 54 | 103767 | 35 |
| 55 | 796617 | 36 |
| 56 | 5407706508 | 18 |
| 57 | 315677 | 34 |
| 58 | 443592 | 19 |
| 59 | 187144 | 31 |
| 60 | 523553 | 16 |
| 61 | 304758 | 23 |
| 62 | 198315 | 38 |
| 63 | 609944 | 25 |
| 64 | 764986 | 22 |
| 65 | 11224313001 | 28 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -206629275466413/200000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -206629275466413/200000 | 1 | -206629275466413/200000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1205 | -206629275466413/200000 |

## Stage 1206

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ+/BPR+/BPS+/PRS+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ+/BPR+/BPS+/PRS+:H |
| Index | 0 |
| Context | 257 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1204 |
| Coordinate cut | v high 145983/200000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 73307/200000 | 103767/1000000 | 73307/200000 |
| b | 103767/1000000 | 133227/500000 | 103767/1000000 | 133227/500000 |
| c | 796617/1000000 | 1 | 796617/1000000 | 1 |
| e | 103767/1000000 | 73307/200000 | 103767/1000000 | 73307/200000 |
| f | 155651/500000 | 344349/500000 | 155651/500000 | 344349/500000 |
| h | 11407/20000 | 1 | 11407/20000 | 1 |
| p | 491949/1000000 | 710233/1000000 | 491949/1000000 | 710233/1000000 |
| q | 196767/1000000 | 415051/1000000 | 196767/1000000 | 415051/1000000 |
| u | 103767/1000000 | 256733/500000 | 103767/1000000 | 256733/500000 |
| v | 145983/200000 | 907/1000 | 145983/200000 | 907/1000 |
| r | 82331/125000 | 1 | 82331/125000 | 1 |
| w | 837313/1000000 | 1 | 837313/1000000 | 1 |
| j | 129709/250000 | 876743/1000000 | 129709/250000 | 876743/1000000 |
| k | 16563/40000 | 864963/1000000 | 16563/40000 | 864963/1000000 |

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


## Stage 1207

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ+/BPR+/BPS+/PRS+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ+/BPR+/BPS+/PRS+:HL |
| Index | 0 |
| Context | 257 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1206 |
| Coordinate cut | h low 405909/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 73307/200000 | 103767/1000000 | 73307/200000 |
| b | 103767/1000000 | 133227/500000 | 103767/1000000 | 133227/500000 |
| c | 796617/1000000 | 1 | 796617/1000000 | 1 |
| e | 103767/1000000 | 73307/200000 | 103767/1000000 | 73307/200000 |
| f | 155651/500000 | 344349/500000 | 155651/500000 | 344349/500000 |
| h | 11407/20000 | 405909/500000 | 11407/20000 | 405909/500000 |
| p | 491949/1000000 | 710233/1000000 | 491949/1000000 | 710233/1000000 |
| q | 196767/1000000 | 415051/1000000 | 196767/1000000 | 415051/1000000 |
| u | 103767/1000000 | 256733/500000 | 103767/1000000 | 256733/500000 |
| v | 145983/200000 | 907/1000 | 145983/200000 | 907/1000 |
| r | 82331/125000 | 1 | 82331/125000 | 1 |
| w | 837313/1000000 | 1 | 837313/1000000 | 1 |
| j | 129709/250000 | 876743/1000000 | 129709/250000 | 876743/1000000 |
| k | 16563/40000 | 864963/1000000 | 16563/40000 | 864963/1000000 |

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
| 0 | bound | `{"direction":"lo","ref":"471:4958","triangle":"FRS","value":"107267/1000000"}` | `-1 * r * k + 1 * r + 1 * f * k + 1 * w * j + -1 * f * w + -1 * j + -107267/1000000` |
| 1 | bound | `{"direction":"lo","ref":"471:5073","triangle":"BPR","value":"327787/1000000"}` | `1 * p * w + -1 * b * w + -1 * q * r + 1 * b * q + -327787/1000000` |
| 2 | physical | `{"factor":10,"stage":471}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 3 | physical | `{"factor":106,"stage":471}` | `-1/1 * f * k + 1/1 * e * f + 1/1 * k + 1/1 * j + -1093/1000 + -1/1 * e * j` |
| 4 | physical | `{"factor":117,"stage":471}` | `-1/1 * f * v + -1/1 * h * u + 1/1 * f * h + 1/1 * u + -93/1000` |
| 5 | physical | `{"factor":126,"stage":471}` | `1/1 * p * v + -1/1 * h * p + -1/1 * q * u + 1/1 * h * u + -93/1000` |
| 6 | physical | `{"factor":132,"stage":471}` | `1/1 * r * k + -1/1 * q * r + -1/1 * p * k + -1/1 * w * j + 1/1 * p * w + 1/1 * q * j + -93/1000` |
| 7 | physical | `{"factor":26,"stage":471}` | `1/1 * q + -1/1 * a + -1/1 * e * p + 1/1 * a * p + -93/1000` |
| 8 | physical | `{"factor":34,"stage":471}` | `1/1 * f * v + -1/1 * a * f + -1/1 * u + 1/1 * a * u + -93/1000` |
| 9 | physical | `{"factor":7,"stage":471}` | `1/1 * b * h + -1/1 * a * b + -93/1000` |
| 10 | physical | `{"factor":78,"stage":471}` | `-1/1 * r * k + 1/1 * b * k + 1/1 * w * j + -1/1 * b * w + -93/1000` |
| 11 | physical | `{"factor":82,"stage":471}` | `1/1 * q + -1/1 * c * q + -1/1 * e * p + 1/1 * c * e + -93/1000` |
| 12 | physical | `{"factor":84,"stage":471}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 13 | physical | `{"factor":91,"stage":471}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 14 | coordinate | `{"box":1207,"direction":"hi","value":"133227/500000","variable":"b"}` | `133227/500000 + -1 * b` |
| 15 | coordinate | `{"box":1207,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 16 | coordinate | `{"box":1207,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 17 | coordinate | `{"box":1207,"direction":"hi","value":"876743/1000000","variable":"j"}` | `876743/1000000 + -1 * j` |
| 18 | coordinate | `{"box":1207,"direction":"hi","value":"864963/1000000","variable":"k"}` | `864963/1000000 + -1 * k` |
| 19 | coordinate | `{"box":1207,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 20 | coordinate | `{"box":1207,"direction":"hi","value":"344349/500000","variable":"f"}` | `344349/500000 + -1 * f` |
| 21 | coordinate | `{"box":1207,"direction":"hi","value":"405909/500000","variable":"h"}` | `405909/500000 + -1 * h` |
| 22 | coordinate | `{"box":1207,"direction":"hi","value":"710233/1000000","variable":"p"}` | `710233/1000000 + -1 * p` |
| 23 | coordinate | `{"box":1207,"direction":"hi","value":"256733/500000","variable":"u"}` | `256733/500000 + -1 * u` |
| 24 | coordinate | `{"box":1207,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 25 | coordinate | `{"box":1207,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 26 | coordinate | `{"box":1207,"direction":"lo","value":"82331/125000","variable":"r"}` | `-82331/125000 + 1 * r` |
| 27 | coordinate | `{"box":1207,"direction":"lo","value":"837313/1000000","variable":"w"}` | `-837313/1000000 + 1 * w` |
| 28 | coordinate | `{"box":1207,"direction":"lo","value":"129709/250000","variable":"j"}` | `-129709/250000 + 1 * j` |
| 29 | coordinate | `{"box":1207,"direction":"lo","value":"16563/40000","variable":"k"}` | `-16563/40000 + 1 * k` |
| 30 | coordinate | `{"box":1207,"direction":"lo","value":"796617/1000000","variable":"c"}` | `-796617/1000000 + 1 * c` |
| 31 | coordinate | `{"box":1207,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 32 | coordinate | `{"box":1207,"direction":"lo","value":"155651/500000","variable":"f"}` | `-155651/500000 + 1 * f` |
| 33 | coordinate | `{"box":1207,"direction":"lo","value":"11407/20000","variable":"h"}` | `-11407/20000 + 1 * h` |
| 34 | coordinate | `{"box":1207,"direction":"lo","value":"491949/1000000","variable":"p"}` | `-491949/1000000 + 1 * p` |
| 35 | coordinate | `{"box":1207,"direction":"lo","value":"196767/1000000","variable":"q"}` | `-196767/1000000 + 1 * q` |
| 36 | coordinate | `{"box":1207,"direction":"lo","value":"103767/1000000","variable":"u"}` | `-103767/1000000 + 1 * u` |
| 37 | coordinate | `{"box":1207,"direction":"lo","value":"145983/200000","variable":"v"}` | `-145983/200000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 31484000000 | 9 |
| 1 | 17405000000 | 2 |
| 2 | 32377000000 | 7 |
| 3 | 10354000000 | 8 |
| 4 | 29026000000 | 1 |
| 5 | 4416000000 | 10 |
| 6 | 11128000000 | 11 |
| 7 | 25305000000 | 12 |
| 8 | 38556000000 | 13 |
| 9 | 9633000000 | 3 |
| 10 | 26261000000 | 4 |
| 11 | 9633000000 | 0 |
| 12 | 6972000000 | 5 |
| 13 | 16247000000 | 6 |
| 14 | 48889000000 | 24, 25 |
| 15 | 10354000000 | 24, 32 |
| 16 | 31484000000 | 21, 25 |
| 17 | 46431000000 | 14, 35 |
| 18 | 49782000000 | 22, 24 |
| 19 | 10354000000 | 23, 24 |
| 20 | 33442000000 | 14, 16 |
| 21 | 4416000000 | 18, 25 |
| 22 | 36433000000 | 19, 31 |
| 23 | 38556000000 | 21, 30 |
| 24 | 49684000000 | 30, 35 |
| 25 | 25305000000 | 16, 19 |
| 26 | 9633000000 | 20, 31 |
| 27 | 43505000000 | 31, 34 |
| 28 | 25305000000 | 26, 31 |
| 29 | 9633000000 | 28, 31 |
| 30 | 26261000000 | 21, 32 |
| 31 | 15907000000 | 32, 37 |
| 32 | 9633000000 | 16, 20 |
| 33 | 45528000000 | 21, 22 |
| 34 | 204000000 | 33, 36 |
| 35 | 19085000000 | 21, 23 |
| 36 | 6972000000 | 22, 37 |
| 37 | 6972000000 | 35, 36 |
| 38 | 45273000000 | 16, 34 |
| 39 | 45273000000 | 26, 35 |
| 40 | 16247000000 | 18, 22 |
| 41 | 16247000000 | 17, 35 |
| 42 | 2197000000 | 18, 26 |
| 43 | 2197000000 | 16, 17 |
| 44 | 384261 | 35 |
| 45 | 39601 | 24 |
| 46 | 353936 | 36 |
| 47 | 1000000 | 15, 29 |
| 48 | 414075 | 15 |
| 49 | 1000000 | 18 |
| 50 | 1000000 | 27, 28 |
| 51 | 518836 | 27 |
| 52 | 837313 | 28 |
| 53 | 4800820204 | 16 |
| 54 | 870823 | 29 |
| 55 | 285938 | 17 |
| 56 | 732615 | 26 |
| 57 | 21766 | 25 |
| 58 | 578586 | 20 |
| 59 | 312000 | 21 |
| 60 | 190926 | 34 |
| 61 | 173709 | 30 |
| 62 | 48239 | 31 |
| 63 | 136438 | 37 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -2750002708228087/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -2750002708228087/1000000 | 1 | -2750002708228087/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1207 | -2750002708228087/1000000 |

## Stage 1208

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ+/BPR+/BPS+/PRS+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ+/BPR+/BPS+/PRS+:HH |
| Index | 0 |
| Context | 257 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1206 |
| Coordinate cut | h high 405909/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 73307/200000 | 103767/1000000 | 73307/200000 |
| b | 103767/1000000 | 133227/500000 | 103767/1000000 | 133227/500000 |
| c | 796617/1000000 | 1 | 796617/1000000 | 1 |
| e | 103767/1000000 | 73307/200000 | 103767/1000000 | 73307/200000 |
| f | 155651/500000 | 344349/500000 | 155651/500000 | 344349/500000 |
| h | 405909/500000 | 1 | 405909/500000 | 1 |
| p | 491949/1000000 | 710233/1000000 | 491949/1000000 | 710233/1000000 |
| q | 196767/1000000 | 415051/1000000 | 196767/1000000 | 415051/1000000 |
| u | 103767/1000000 | 256733/500000 | 103767/1000000 | 256733/500000 |
| v | 145983/200000 | 907/1000 | 145983/200000 | 907/1000 |
| r | 82331/125000 | 1 | 82331/125000 | 1 |
| w | 837313/1000000 | 1 | 837313/1000000 | 1 |
| j | 129709/250000 | 876743/1000000 | 129709/250000 | 876743/1000000 |
| k | 16563/40000 | 864963/1000000 | 16563/40000 | 864963/1000000 |

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
| 0 | bound | `{"direction":"lo","ref":"471:4958","triangle":"FRS","value":"107267/1000000"}` | `-1 * r * k + 1 * r + 1 * f * k + 1 * w * j + -1 * f * w + -1 * j + -107267/1000000` |
| 1 | bound | `{"direction":"lo","ref":"471:5073","triangle":"BPR","value":"327787/1000000"}` | `1 * p * w + -1 * b * w + -1 * q * r + 1 * b * q + -327787/1000000` |
| 2 | physical | `{"factor":10,"stage":471}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 3 | physical | `{"factor":106,"stage":471}` | `-1/1 * f * k + 1/1 * e * f + 1/1 * k + 1/1 * j + -1093/1000 + -1/1 * e * j` |
| 4 | physical | `{"factor":117,"stage":471}` | `-1/1 * f * v + -1/1 * h * u + 1/1 * f * h + 1/1 * u + -93/1000` |
| 5 | physical | `{"factor":118,"stage":471}` | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 6 | physical | `{"factor":126,"stage":471}` | `1/1 * p * v + -1/1 * h * p + -1/1 * q * u + 1/1 * h * u + -93/1000` |
| 7 | physical | `{"factor":132,"stage":471}` | `1/1 * r * k + -1/1 * q * r + -1/1 * p * k + -1/1 * w * j + 1/1 * p * w + 1/1 * q * j + -93/1000` |
| 8 | physical | `{"factor":26,"stage":471}` | `1/1 * q + -1/1 * a + -1/1 * e * p + 1/1 * a * p + -93/1000` |
| 9 | physical | `{"factor":34,"stage":471}` | `1/1 * f * v + -1/1 * a * f + -1/1 * u + 1/1 * a * u + -93/1000` |
| 10 | physical | `{"factor":7,"stage":471}` | `1/1 * b * h + -1/1 * a * b + -93/1000` |
| 11 | physical | `{"factor":78,"stage":471}` | `-1/1 * r * k + 1/1 * b * k + 1/1 * w * j + -1/1 * b * w + -93/1000` |
| 12 | physical | `{"factor":82,"stage":471}` | `1/1 * q + -1/1 * c * q + -1/1 * e * p + 1/1 * c * e + -93/1000` |
| 13 | physical | `{"factor":84,"stage":471}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 14 | physical | `{"factor":91,"stage":471}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 15 | physical | `{"factor":95,"stage":471}` | `-1/1 * p * v + 1/1 * c * v + 1/1 * q * u + -1/1 * c * q + -93/1000` |
| 16 | coordinate | `{"box":1208,"direction":"hi","value":"133227/500000","variable":"b"}` | `133227/500000 + -1 * b` |
| 17 | coordinate | `{"box":1208,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 18 | coordinate | `{"box":1208,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 19 | coordinate | `{"box":1208,"direction":"hi","value":"876743/1000000","variable":"j"}` | `876743/1000000 + -1 * j` |
| 20 | coordinate | `{"box":1208,"direction":"hi","value":"864963/1000000","variable":"k"}` | `864963/1000000 + -1 * k` |
| 21 | coordinate | `{"box":1208,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 22 | coordinate | `{"box":1208,"direction":"hi","value":"73307/200000","variable":"e"}` | `73307/200000 + -1 * e` |
| 23 | coordinate | `{"box":1208,"direction":"hi","value":"344349/500000","variable":"f"}` | `344349/500000 + -1 * f` |
| 24 | coordinate | `{"box":1208,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 25 | coordinate | `{"box":1208,"direction":"hi","value":"710233/1000000","variable":"p"}` | `710233/1000000 + -1 * p` |
| 26 | coordinate | `{"box":1208,"direction":"hi","value":"415051/1000000","variable":"q"}` | `415051/1000000 + -1 * q` |
| 27 | coordinate | `{"box":1208,"direction":"hi","value":"256733/500000","variable":"u"}` | `256733/500000 + -1 * u` |
| 28 | coordinate | `{"box":1208,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 29 | coordinate | `{"box":1208,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 30 | coordinate | `{"box":1208,"direction":"lo","value":"82331/125000","variable":"r"}` | `-82331/125000 + 1 * r` |
| 31 | coordinate | `{"box":1208,"direction":"lo","value":"837313/1000000","variable":"w"}` | `-837313/1000000 + 1 * w` |
| 32 | coordinate | `{"box":1208,"direction":"lo","value":"129709/250000","variable":"j"}` | `-129709/250000 + 1 * j` |
| 33 | coordinate | `{"box":1208,"direction":"lo","value":"16563/40000","variable":"k"}` | `-16563/40000 + 1 * k` |
| 34 | coordinate | `{"box":1208,"direction":"lo","value":"796617/1000000","variable":"c"}` | `-796617/1000000 + 1 * c` |
| 35 | coordinate | `{"box":1208,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 36 | coordinate | `{"box":1208,"direction":"lo","value":"155651/500000","variable":"f"}` | `-155651/500000 + 1 * f` |
| 37 | coordinate | `{"box":1208,"direction":"lo","value":"405909/500000","variable":"h"}` | `-405909/500000 + 1 * h` |
| 38 | coordinate | `{"box":1208,"direction":"lo","value":"491949/1000000","variable":"p"}` | `-491949/1000000 + 1 * p` |
| 39 | coordinate | `{"box":1208,"direction":"lo","value":"196767/1000000","variable":"q"}` | `-196767/1000000 + 1 * q` |
| 40 | coordinate | `{"box":1208,"direction":"lo","value":"103767/1000000","variable":"u"}` | `-103767/1000000 + 1 * u` |
| 41 | coordinate | `{"box":1208,"direction":"lo","value":"145983/200000","variable":"v"}` | `-145983/200000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 9227000000 | 10 |
| 1 | 16014000000 | 2 |
| 2 | 35211000000 | 8 |
| 3 | 7163000000 | 9 |
| 4 | 31842000000 | 1 |
| 5 | 6918000000 | 11 |
| 6 | 17904000000 | 12 |
| 7 | 21515000000 | 13 |
| 8 | 30954000000 | 14 |
| 9 | 3581000000 | 15 |
| 10 | 11457000000 | 3 |
| 11 | 18667000000 | 4 |
| 12 | 16886000000 | 5 |
| 13 | 11457000000 | 0 |
| 14 | 3581000000 | 6 |
| 15 | 21396000000 | 7 |
| 16 | 25241000000 | 28, 29 |
| 17 | 7163000000 | 28, 36 |
| 18 | 9227000000 | 24, 29 |
| 19 | 47857000000 | 26, 29 |
| 20 | 51225000000 | 25, 28 |
| 21 | 7163000000 | 27, 28 |
| 22 | 38760000000 | 29, 31 |
| 23 | 6918000000 | 20, 29 |
| 24 | 39419000000 | 21, 35 |
| 25 | 30954000000 | 21, 37 |
| 26 | 52440000000 | 34, 39 |
| 27 | 3581000000 | 21, 41 |
| 28 | 21515000000 | 18, 21 |
| 29 | 8636000000 | 23, 35 |
| 30 | 2821000000 | 22, 36 |
| 31 | 53115000000 | 35, 38 |
| 32 | 21515000000 | 30, 35 |
| 33 | 11457000000 | 32, 35 |
| 34 | 35553000000 | 24, 36 |
| 35 | 11504000000 | 36, 41 |
| 36 | 28343000000 | 18, 23 |
| 37 | 34535000000 | 24, 25 |
| 38 | 15086000000 | 37, 40 |
| 39 | 16886000000 | 17, 24 |
| 40 | 53238000000 | 18, 38 |
| 41 | 53238000000 | 30, 39 |
| 42 | 21396000000 | 20, 25 |
| 43 | 21396000000 | 19, 39 |
| 44 | 3021000000 | 17, 33 |
| 45 | 3021000000 | 18, 19 |
| 46 | 1000000 | 29, 39 |
| 47 | 196767 | 29 |
| 48 | 103767 | 39 |
| 49 | 1072843 | 26 |
| 50 | 396690 | 28 |
| 51 | 196673 | 27 |
| 52 | 1000000 | 21, 39 |
| 53 | 196767 | 21 |
| 54 | 36075 | 31 |
| 55 | 285162 | 33 |
| 56 | 168213 | 19 |
| 57 | 107976 | 30 |
| 58 | 475014 | 16 |
| 59 | 98134 | 36 |
| 60 | 147502 | 37 |
| 61 | 132022 | 25 |
| 62 | 230120 | 34 |
| 63 | 208037 | 35 |
| 64 | 218208 | 41 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -96160854688181/200000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -96160854688181/200000 | 1 | -96160854688181/200000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1208 | -96160854688181/200000 |

## Stage 1209

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ+/BPR+/BPS+/PRS-/HQS+/EHQ- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ+/BPR+/BPS+/PRS-/HQS+/EHQ-:root |
| Index | 0 |
| Context | 263 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 477 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 270627/1000000 | 103767/1000000 | 270627/1000000 |
| c | 135501/250000 | 1 | 135501/250000 | 1 |
| e | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| f | 155651/500000 | 344349/500000 | 155651/500000 | 344349/500000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 165261/500000 | 651139/1000000 | 165261/500000 | 651139/1000000 |
| q | 196767/1000000 | 288239/500000 | 196767/1000000 | 288239/500000 |
| u | 103767/1000000 | 246589/500000 | 103767/1000000 | 246589/500000 |
| v | 430809/1000000 | 440299/500000 | 430809/1000000 | 440299/500000 |
| r | 155651/250000 | 1 | 155651/250000 | 1 |
| w | 41657/50000 | 1 | 41657/50000 | 1 |
| j | 136727/250000 | 896233/1000000 | 136727/250000 | 896233/1000000 |
| k | 428241/1000000 | 864963/1000000 | 428241/1000000 | 864963/1000000 |

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
