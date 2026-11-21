# BITT convex: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 335

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS-/CQS- |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS-/CQS-:LHHHHLHHHLHHHLH |
| Index | 0 |
| Context | 33 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 329 |
| Coordinate cut | p high 12739/31250 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 81753/125000 | 1 | 81753/125000 | 1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 103767/1000000 | 484711/1000000 | 103767/1000000 | 484711/1000000 |
| h | 385501/500000 | 1 | 385501/500000 | 1 |
| p | 12739/31250 | 29741/50000 | 12739/31250 | 29741/50000 |
| q | 196851/500000 | 75293/125000 | 196851/500000 | 75293/125000 |
| u | 110369/200000 | 907/1000 | 110369/200000 | 907/1000 |
| v | 70847/200000 | 587917/1000000 | 70847/200000 | 587917/1000000 |
| r | 351759/500000 | 1 | 351759/500000 | 1 |
| w | 577077/1000000 | 176051/200000 | 577077/1000000 | 176051/200000 |
| j | 140777/250000 | 176083/200000 | 140777/250000 | 176083/200000 |
| k | 643183/1000000 | 1 | 643183/1000000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"88:1525","triangle":"QRS","value":"46773/500000"}` | `1 * r * k + -1 * v * r + -1 * u * k + -1 * w * j + 1 * u * w + 1 * v * j + -46773/500000` |
| 1 | bound | `{"direction":"lo","ref":"88:1664","triangle":"PQS","value":"63219/500000"}` | `1 * u * k + -1 * q * u + -1 * p * k + -1 * v * j + 1 * p * v + 1 * q * j + -63219/500000` |
| 2 | bound | `{"direction":"lo","ref":"88:807","triangle":"EPQ","value":"24583/250000"}` | `-1 * p * v + 1 * e * p + 1 * v + 1 * q * u + -1 * q + -1 * e * u + -24583/250000` |
| 3 | bound | `{"direction":"lo","ref":"88:938","triangle":"EQR","value":"24097/200000"}` | `-1 * u * w + 1 * e * u + 1 * w + 1 * v * r + -1 * v + -1 * e * r + -24097/200000` |
| 4 | physical | `{"factor":0,"stage":88}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 5 | physical | `{"factor":106,"stage":88}` | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 6 | physical | `{"factor":111,"stage":88}` | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 7 | physical | `{"factor":119,"stage":88}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 8 | physical | `{"factor":135,"stage":88}` | `1/1 * r * k + -1/1 * h * r + -1/1 * w * j + 1/1 * h * j + -93/1000` |
| 9 | physical | `{"factor":43,"stage":88}` | `-1/1 * p * k + 1/1 * a * p + 1/1 * q * j + -1/1 * a * j + -93/1000` |
| 10 | physical | `{"factor":77,"stage":88}` | `1/1 * u * w + -1/1 * b * w + -1/1 * v * r + 1/1 * b * v + -93/1000` |
| 11 | physical | `{"factor":80,"stage":88}` | `721/1000 + -1/1 * c + -1/1 * e * f + 1/1 * c * e` |
| 12 | physical | `{"factor":93,"stage":88}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 13 | coordinate | `{"box":335,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 14 | coordinate | `{"box":335,"direction":"hi","value":"6143/20000","variable":"b"}` | `6143/20000 + -1 * b` |
| 15 | coordinate | `{"box":335,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 16 | coordinate | `{"box":335,"direction":"hi","value":"176051/200000","variable":"w"}` | `176051/200000 + -1 * w` |
| 17 | coordinate | `{"box":335,"direction":"hi","value":"176083/200000","variable":"j"}` | `176083/200000 + -1 * j` |
| 18 | coordinate | `{"box":335,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 19 | coordinate | `{"box":335,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 20 | coordinate | `{"box":335,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 21 | coordinate | `{"box":335,"direction":"hi","value":"484711/1000000","variable":"f"}` | `484711/1000000 + -1 * f` |
| 22 | coordinate | `{"box":335,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 23 | coordinate | `{"box":335,"direction":"hi","value":"29741/50000","variable":"p"}` | `29741/50000 + -1 * p` |
| 24 | coordinate | `{"box":335,"direction":"hi","value":"75293/125000","variable":"q"}` | `75293/125000 + -1 * q` |
| 25 | coordinate | `{"box":335,"direction":"hi","value":"907/1000","variable":"u"}` | `907/1000 + -1 * u` |
| 26 | coordinate | `{"box":335,"direction":"hi","value":"587917/1000000","variable":"v"}` | `587917/1000000 + -1 * v` |
| 27 | coordinate | `{"box":335,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 28 | coordinate | `{"box":335,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 29 | coordinate | `{"box":335,"direction":"lo","value":"351759/500000","variable":"r"}` | `-351759/500000 + 1 * r` |
| 30 | coordinate | `{"box":335,"direction":"lo","value":"577077/1000000","variable":"w"}` | `-577077/1000000 + 1 * w` |
| 31 | coordinate | `{"box":335,"direction":"lo","value":"140777/250000","variable":"j"}` | `-140777/250000 + 1 * j` |
| 32 | coordinate | `{"box":335,"direction":"lo","value":"643183/1000000","variable":"k"}` | `-643183/1000000 + 1 * k` |
| 33 | coordinate | `{"box":335,"direction":"lo","value":"81753/125000","variable":"c"}` | `-81753/125000 + 1 * c` |
| 34 | coordinate | `{"box":335,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 35 | coordinate | `{"box":335,"direction":"lo","value":"103767/1000000","variable":"f"}` | `-103767/1000000 + 1 * f` |
| 36 | coordinate | `{"box":335,"direction":"lo","value":"385501/500000","variable":"h"}` | `-385501/500000 + 1 * h` |
| 37 | coordinate | `{"box":335,"direction":"lo","value":"12739/31250","variable":"p"}` | `-12739/31250 + 1 * p` |
| 38 | coordinate | `{"box":335,"direction":"lo","value":"196851/500000","variable":"q"}` | `-196851/500000 + 1 * q` |
| 39 | coordinate | `{"box":335,"direction":"lo","value":"110369/200000","variable":"u"}` | `-110369/200000 + 1 * u` |
| 40 | coordinate | `{"box":335,"direction":"lo","value":"70847/200000","variable":"v"}` | `-70847/200000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 825000000 | 4 |
| 1 | 57891000000 | 9 |
| 2 | 7901000000 | 10 |
| 3 | 21673000000 | 11 |
| 4 | 48630000000 | 12 |
| 5 | 19587000000 | 5 |
| 6 | 18672000000 | 6 |
| 7 | 19556000000 | 2 |
| 8 | 27456000000 | 3 |
| 9 | 9695000000 | 7 |
| 10 | 12016000000 | 8 |
| 11 | 19556000000 | 1 |
| 12 | 19556000000 | 0 |
| 13 | 825000000 | 27, 28 |
| 14 | 825000000 | 19, 27 |
| 15 | 44131000000 | 23, 27 |
| 16 | 13760000000 | 13, 37 |
| 17 | 7901000000 | 26, 28 |
| 18 | 7901000000 | 28, 30 |
| 19 | 57891000000 | 27, 31 |
| 20 | 21673000000 | 19, 34 |
| 21 | 48630000000 | 22, 33 |
| 22 | 48630000000 | 19, 24 |
| 23 | 28810000000 | 34, 35 |
| 24 | 12450000000 | 20, 21 |
| 25 | 19556000000 | 20, 37 |
| 26 | 8815000000 | 25, 34 |
| 27 | 37151000000 | 15, 20 |
| 28 | 9695000000 | 17, 34 |
| 29 | 3934000000 | 26, 35 |
| 30 | 15653000000 | 21, 40 |
| 31 | 48630000000 | 36, 37 |
| 32 | 18672000000 | 22, 39 |
| 33 | 12016000000 | 15, 22 |
| 34 | 5157000000 | 17, 36 |
| 35 | 6859000000 | 22, 31 |
| 36 | 77447000000 | 32, 37 |
| 37 | 77447000000 | 17, 38 |
| 38 | 41267000000 | 15, 32 |
| 39 | 41266000000 | 16, 17 |
| 40 | 1000000 | 25, 30 |
| 41 | 577077 | 25 |
| 42 | 907000 | 16 |
| 43 | 1000000 | 29, 40 |
| 44 | 703518 | 40 |
| 45 | 805557 | 29 |
| 46 | 438754 | 33 |
| 47 | 103767 | 34 |
| 48 | 103767 | 35 |
| 49 | 263728 | 26 |
| 50 | 293895 | 39 |
| 51 | 27353 | 36 |
| 52 | 499495 | 38 |
| 53 | 631565 | 30 |
| 54 | 643183 | 15 |
| 55 | 1000000 | 18 |
| 56 | 114656 | 32 |
| 57 | 1000000 | 30, 31 |
| 58 | 577077 | 31 |
| 59 | 255103 | 27 |
| 60 | 39065 | 14 |
| 61 | 70854299584 | 37 |
| 62 | 338946 | 17 |
| 63 | 717260 | 20 |
| 64 | 332430 | 21 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -1859997426632997/250000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -1859997426632997/250000 | 1 | -1859997426632997/250000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 335 | -1859997426632997/250000 |

## Stage 336

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS-/CQS- |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS-/CQS-:LHHHHLHHHLHHHH |
| Index | 0 |
| Context | 33 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 328 |
| Coordinate cut | v high 587917/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 81753/125000 | 1 | 81753/125000 | 1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 103767/1000000 | 484711/1000000 | 103767/1000000 | 484711/1000000 |
| h | 385501/500000 | 1 | 385501/500000 | 1 |
| p | 196767/1000000 | 29741/50000 | 196767/1000000 | 29741/50000 |
| q | 196851/500000 | 75293/125000 | 196851/500000 | 75293/125000 |
| u | 110369/200000 | 907/1000 | 110369/200000 | 907/1000 |
| v | 587917/1000000 | 681371/1000000 | 587917/1000000 | 681371/1000000 |
| r | 351759/500000 | 1 | 351759/500000 | 1 |
| w | 577077/1000000 | 176051/200000 | 577077/1000000 | 176051/200000 |
| j | 140777/250000 | 176083/200000 | 140777/250000 | 176083/200000 |
| k | 643183/1000000 | 1 | 643183/1000000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"88:1633","triangle":"FPS","value":"77239/500000"}` | `1 * p * k + -1 * p + -1 * f * k + -1 * q * j + 1 * f * q + 1 * j + -77239/500000` |
| 1 | physical | `{"factor":106,"stage":88}` | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 2 | physical | `{"factor":111,"stage":88}` | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 3 | physical | `{"factor":119,"stage":88}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 4 | physical | `{"factor":1203,"stage":88}` | `896233/1000000 * w + 13306751/25000000 * a + -896233/1000000 * e * r + -13306751/25000000 * a * r + -558009/390625 * f * w + 558009/390625 * e * f + 558009/390625 * r + -558009/390625` |
| 5 | physical | `{"factor":129,"stage":88}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 6 | physical | `{"factor":145,"stage":88}` | `1/1 * f + -1/1 * e` |
| 7 | physical | `{"factor":43,"stage":88}` | `-1/1 * p * k + 1/1 * a * p + 1/1 * q * j + -1/1 * a * j + -93/1000` |
| 8 | physical | `{"factor":65,"stage":88}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 9 | physical | `{"factor":7,"stage":88}` | `1/1 * b * h + -1/1 * a * b + -93/1000` |
| 10 | physical | `{"factor":77,"stage":88}` | `1/1 * u * w + -1/1 * b * w + -1/1 * v * r + 1/1 * b * v + -93/1000` |
| 11 | physical | `{"factor":90,"stage":88}` | `-1/1 * f * v + 1/1 * c * v + 1/1 * u + -1/1 * c + -93/1000` |
| 12 | physical | `{"factor":93,"stage":88}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 13 | coordinate | `{"box":336,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 14 | coordinate | `{"box":336,"direction":"hi","value":"6143/20000","variable":"b"}` | `6143/20000 + -1 * b` |
| 15 | coordinate | `{"box":336,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 16 | coordinate | `{"box":336,"direction":"hi","value":"176051/200000","variable":"w"}` | `176051/200000 + -1 * w` |
| 17 | coordinate | `{"box":336,"direction":"hi","value":"176083/200000","variable":"j"}` | `176083/200000 + -1 * j` |
| 18 | coordinate | `{"box":336,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 19 | coordinate | `{"box":336,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 20 | coordinate | `{"box":336,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 21 | coordinate | `{"box":336,"direction":"hi","value":"484711/1000000","variable":"f"}` | `484711/1000000 + -1 * f` |
| 22 | coordinate | `{"box":336,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 23 | coordinate | `{"box":336,"direction":"hi","value":"29741/50000","variable":"p"}` | `29741/50000 + -1 * p` |
| 24 | coordinate | `{"box":336,"direction":"hi","value":"75293/125000","variable":"q"}` | `75293/125000 + -1 * q` |
| 25 | coordinate | `{"box":336,"direction":"hi","value":"907/1000","variable":"u"}` | `907/1000 + -1 * u` |
| 26 | coordinate | `{"box":336,"direction":"hi","value":"681371/1000000","variable":"v"}` | `681371/1000000 + -1 * v` |
| 27 | coordinate | `{"box":336,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 28 | coordinate | `{"box":336,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 29 | coordinate | `{"box":336,"direction":"lo","value":"351759/500000","variable":"r"}` | `-351759/500000 + 1 * r` |
| 30 | coordinate | `{"box":336,"direction":"lo","value":"577077/1000000","variable":"w"}` | `-577077/1000000 + 1 * w` |
| 31 | coordinate | `{"box":336,"direction":"lo","value":"140777/250000","variable":"j"}` | `-140777/250000 + 1 * j` |
| 32 | coordinate | `{"box":336,"direction":"lo","value":"81753/125000","variable":"c"}` | `-81753/125000 + 1 * c` |
| 33 | coordinate | `{"box":336,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 34 | coordinate | `{"box":336,"direction":"lo","value":"103767/1000000","variable":"f"}` | `-103767/1000000 + 1 * f` |
| 35 | coordinate | `{"box":336,"direction":"lo","value":"385501/500000","variable":"h"}` | `-385501/500000 + 1 * h` |
| 36 | coordinate | `{"box":336,"direction":"lo","value":"196767/1000000","variable":"p"}` | `-196767/1000000 + 1 * p` |
| 37 | coordinate | `{"box":336,"direction":"lo","value":"196851/500000","variable":"q"}` | `-196851/500000 + 1 * q` |
| 38 | coordinate | `{"box":336,"direction":"lo","value":"110369/200000","variable":"u"}` | `-110369/200000 + 1 * u` |
| 39 | coordinate | `{"box":336,"direction":"lo","value":"587917/1000000","variable":"v"}` | `-587917/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 19500000000000000 | 9 |
| 1 | 163225000000000000 | 7 |
| 2 | 143625000000000000 | 8 |
| 3 | 1394025000000000000 | 10 |
| 4 | 10625000000000000 | 11 |
| 5 | 25950000000000000 | 12 |
| 6 | 2083400000000000000 | 1 |
| 7 | 51025000000000000 | 2 |
| 8 | 559575000000000000 | 3 |
| 9 | 143625000000000000 | 0 |
| 10 | 1129700000000000000 | 5 |
| 11 | 48525000000000000 | 6 |
| 12 | 248425000000000000 | 4 |
| 13 | 19500000000000000 | 22, 28 |
| 14 | 143625000000000000 | 24, 28 |
| 15 | 51750000000000000 | 23, 27 |
| 16 | 111500000000000000 | 13, 36 |
| 17 | 240800000000000000 | 26, 28 |
| 18 | 1153225000000000000 | 14, 39 |
| 19 | 1394025000000000000 | 28, 30 |
| 20 | 132229184687000000 | 27, 29 |
| 21 | 163225000000000000 | 27, 31 |
| 22 | 25950000000000000 | 19, 35 |
| 23 | 25950000000000000 | 19, 24 |
| 24 | 10625000000000000 | 19, 39 |
| 25 | 1728500000000000000 | 20, 21 |
| 26 | 2032375000000000000 | 20, 38 |
| 27 | 782225000000000000 | 29, 33 |
| 28 | 559575000000000000 | 20, 31 |
| 29 | 2072775000000000000 | 21, 39 |
| 30 | 774800000000000000 | 16, 34 |
| 31 | 1273325000000000000 | 18, 21 |
| 32 | 25950000000000000 | 35, 36 |
| 33 | 51025000000000000 | 22, 38 |
| 34 | 19600000000000000 | 18, 23 |
| 35 | 19600000000000000 | 24, 31 |
| 36 | 1394025000000000000 | 16, 38 |
| 37 | 1394025000000000000 | 29, 39 |
| 38 | 1689275000000000000 | 18, 29 |
| 39 | 1689275000000000000 | 16, 17 |
| 40 | 19500000000000000 | 27, 28 |
| 41 | 2031319677628866 | 27 |
| 42 | 2023456500000000 | 28 |
| 43 | 25000000000000 | 27, 36 |
| 44 | 2594175000000 | 36 |
| 45 | 9665350000000 | 23 |
| 46 | 1611200000000 | 14 |
| 47 | 6101375000000 | 25 |
| 48 | 1706775000000 | 32 |
| 49 | 24132288000000 | 33, 34 |
| 50 | 2694210128896 | 33 |
| 51 | 4770460128896 | 34 |
| 52 | 1618574684575000000 | 39 |
| 53 | 243975000000 | 22 |
| 54 | 3316975000000 | 20, 29 |
| 55 | 2333551618050 | 20 |
| 56 | 1296937225000 | 15 |
| 57 | 7263375000000 | 18 |
| 58 | 10760550000000 | 30 |
| 59 | 5366300000000 | 31 |
| 60 | 10295595415929 | 29 |
| 61 | 24132288000000 | 21, 30 |
| 62 | 13926188362176 | 21 |
| 63 | 11697185448768 | 16 |
| 64 | 14669337000000 | 13 |
| 65 | 9547825000000 | 37 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -69483171212945019206807/500000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -69483171212945019206807/500000 | 1 | -69483171212945019206807/500000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 336 | -69483171212945019206807/500000 |

## Stage 337

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS-/CQS- |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS-/CQS-:LHHHHLHHHH |
| Index | 0 |
| Context | 33 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 321 |
| Coordinate cut | f high 484711/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 135501/250000 | 1 | 135501/250000 | 1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 484711/1000000 | 58493/100000 | 484711/1000000 | 58493/100000 |
| h | 385501/500000 | 1 | 385501/500000 | 1 |
| p | 196767/1000000 | 29741/50000 | 196767/1000000 | 29741/50000 |
| q | 18771/62500 | 75293/125000 | 18771/62500 | 75293/125000 |
| u | 110369/200000 | 907/1000 | 110369/200000 | 907/1000 |
| v | 70847/200000 | 681371/1000000 | 70847/200000 | 681371/1000000 |
| r | 608119/1000000 | 1 | 608119/1000000 | 1 |
| w | 577077/1000000 | 176051/200000 | 577077/1000000 | 176051/200000 |
| j | 140777/250000 | 176083/200000 | 140777/250000 | 176083/200000 |
| k | 643183/1000000 | 1 | 643183/1000000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"88:1633","triangle":"FPS","value":"77239/500000"}` | `1 * p * k + -1 * p + -1 * f * k + -1 * q * j + 1 * f * q + 1 * j + -77239/500000` |
| 1 | physical | `{"factor":100,"stage":88}` | `-1/1 * u * w + 1/1 * c * w + 1/1 * v * r + -1/1 * c * v + -93/1000` |
| 2 | physical | `{"factor":106,"stage":88}` | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 3 | physical | `{"factor":111,"stage":88}` | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 4 | physical | `{"factor":119,"stage":88}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 5 | physical | `{"factor":129,"stage":88}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 6 | physical | `{"factor":43,"stage":88}` | `-1/1 * p * k + 1/1 * a * p + 1/1 * q * j + -1/1 * a * j + -93/1000` |
| 7 | physical | `{"factor":65,"stage":88}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 8 | physical | `{"factor":7,"stage":88}` | `1/1 * b * h + -1/1 * a * b + -93/1000` |
| 9 | physical | `{"factor":77,"stage":88}` | `1/1 * u * w + -1/1 * b * w + -1/1 * v * r + 1/1 * b * v + -93/1000` |
| 10 | physical | `{"factor":80,"stage":88}` | `721/1000 + -1/1 * c + -1/1 * e * f + 1/1 * c * e` |
| 11 | physical | `{"factor":90,"stage":88}` | `-1/1 * f * v + 1/1 * c * v + 1/1 * u + -1/1 * c + -93/1000` |
| 12 | physical | `{"factor":93,"stage":88}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 13 | coordinate | `{"box":337,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 14 | coordinate | `{"box":337,"direction":"hi","value":"176051/200000","variable":"w"}` | `176051/200000 + -1 * w` |
| 15 | coordinate | `{"box":337,"direction":"hi","value":"176083/200000","variable":"j"}` | `176083/200000 + -1 * j` |
| 16 | coordinate | `{"box":337,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 17 | coordinate | `{"box":337,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 18 | coordinate | `{"box":337,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 19 | coordinate | `{"box":337,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 20 | coordinate | `{"box":337,"direction":"hi","value":"29741/50000","variable":"p"}` | `29741/50000 + -1 * p` |
| 21 | coordinate | `{"box":337,"direction":"hi","value":"75293/125000","variable":"q"}` | `75293/125000 + -1 * q` |
| 22 | coordinate | `{"box":337,"direction":"hi","value":"907/1000","variable":"u"}` | `907/1000 + -1 * u` |
| 23 | coordinate | `{"box":337,"direction":"hi","value":"681371/1000000","variable":"v"}` | `681371/1000000 + -1 * v` |
| 24 | coordinate | `{"box":337,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 25 | coordinate | `{"box":337,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 26 | coordinate | `{"box":337,"direction":"lo","value":"608119/1000000","variable":"r"}` | `-608119/1000000 + 1 * r` |
| 27 | coordinate | `{"box":337,"direction":"lo","value":"577077/1000000","variable":"w"}` | `-577077/1000000 + 1 * w` |
| 28 | coordinate | `{"box":337,"direction":"lo","value":"140777/250000","variable":"j"}` | `-140777/250000 + 1 * j` |
| 29 | coordinate | `{"box":337,"direction":"lo","value":"643183/1000000","variable":"k"}` | `-643183/1000000 + 1 * k` |
| 30 | coordinate | `{"box":337,"direction":"lo","value":"135501/250000","variable":"c"}` | `-135501/250000 + 1 * c` |
| 31 | coordinate | `{"box":337,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 32 | coordinate | `{"box":337,"direction":"lo","value":"484711/1000000","variable":"f"}` | `-484711/1000000 + 1 * f` |
| 33 | coordinate | `{"box":337,"direction":"lo","value":"385501/500000","variable":"h"}` | `-385501/500000 + 1 * h` |
| 34 | coordinate | `{"box":337,"direction":"lo","value":"196767/1000000","variable":"p"}` | `-196767/1000000 + 1 * p` |
| 35 | coordinate | `{"box":337,"direction":"lo","value":"18771/62500","variable":"q"}` | `-18771/62500 + 1 * q` |
| 36 | coordinate | `{"box":337,"direction":"lo","value":"110369/200000","variable":"u"}` | `-110369/200000 + 1 * u` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 23157000000 | 8 |
| 1 | 54739000000 | 6 |
| 2 | 55996000000 | 7 |
| 3 | 8112000000 | 9 |
| 4 | 6316000000 | 10 |
| 5 | 8112000000 | 11 |
| 6 | 22863000000 | 12 |
| 7 | 8112000000 | 1 |
| 8 | 18445000000 | 2 |
| 9 | 12595000000 | 3 |
| 10 | 27058000000 | 4 |
| 11 | 10106000000 | 0 |
| 12 | 26550000000 | 5 |
| 13 | 23157000000 | 24, 25 |
| 14 | 23157000000 | 19, 25 |
| 15 | 55996000000 | 21, 25 |
| 16 | 54739000000 | 20, 24 |
| 17 | 8112000000 | 23, 25 |
| 18 | 8112000000 | 25, 27 |
| 19 | 54739000000 | 24, 28 |
| 20 | 6316000000 | 17, 31 |
| 21 | 22863000000 | 19, 30 |
| 22 | 22863000000 | 17, 21 |
| 23 | 8112000000 | 17, 27 |
| 24 | 24761000000 | 31, 32 |
| 25 | 5850000000 | 22, 31 |
| 26 | 9226000000 | 26, 31 |
| 27 | 17832000000 | 13, 18 |
| 28 | 27058000000 | 15, 31 |
| 29 | 45890000000 | 32, 35 |
| 30 | 10333000000 | 23, 32 |
| 31 | 26550000000 | 14, 32 |
| 32 | 36656000000 | 29, 32 |
| 33 | 22863000000 | 19, 20 |
| 34 | 12527000000 | 22, 33 |
| 35 | 68000000 | 19, 36 |
| 36 | 44633000000 | 29, 34 |
| 37 | 44633000000 | 15, 35 |
| 38 | 53608000000 | 13, 29 |
| 39 | 53608000000 | 14, 15 |
| 40 | 667049251 | 24 |
| 41 | 667044867 | 25 |
| 42 | 85026 | 34 |
| 43 | 250124 | 17 |
| 44 | 379004 | 22 |
| 45 | 276667 | 23 |
| 46 | 85329 | 33 |
| 47 | 132073 | 16 |
| 48 | 31826 | 14 |
| 49 | 187679 | 28 |
| 50 | 87922 | 13 |
| 51 | 288163 | 35 |
| 52 | 215895 | 31 |
| 53 | 9516932982 | 32 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -60919115941517/20000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -60919115941517/20000 | 1 | -60919115941517/20000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 337 | -60919115941517/20000 |

## Stage 338

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS-/CQS- |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS-/CQS-:LHHHHH |
| Index | 0 |
| Context | 33 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 314 |
| Coordinate cut | q high 75293/125000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 135501/250000 | 1 | 135501/250000 | 1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 103767/1000000 | 58493/100000 | 103767/1000000 | 58493/100000 |
| h | 385501/500000 | 1 | 385501/500000 | 1 |
| p | 196767/1000000 | 29741/50000 | 196767/1000000 | 29741/50000 |
| q | 75293/125000 | 710233/1000000 | 75293/125000 | 710233/1000000 |
| u | 89063/200000 | 907/1000 | 89063/200000 | 907/1000 |
| v | 31109/125000 | 681371/1000000 | 31109/125000 | 681371/1000000 |
| r | 608119/1000000 | 1 | 608119/1000000 | 1 |
| w | 577077/1000000 | 176051/200000 | 577077/1000000 | 176051/200000 |
| j | 112111/250000 | 176083/200000 | 112111/250000 | 176083/200000 |
| k | 643183/1000000 | 1 | 643183/1000000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"88:1623","triangle":"EFH","value":"10017/31250"}` | `1 * f * h + -1 * e * f + -1 * h + 21233/31250` |
| 1 | physical | `{"factor":65,"stage":88}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 2 | physical | `{"factor":80,"stage":88}` | `721/1000 + -1/1 * c + -1/1 * e * f + 1/1 * c * e` |
| 3 | physical | `{"factor":93,"stage":88}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 4 | coordinate | `{"box":338,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 5 | coordinate | `{"box":338,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 6 | coordinate | `{"box":338,"direction":"hi","value":"58493/100000","variable":"f"}` | `58493/100000 + -1 * f` |
| 7 | coordinate | `{"box":338,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 8 | coordinate | `{"box":338,"direction":"hi","value":"29741/50000","variable":"p"}` | `29741/50000 + -1 * p` |
| 9 | coordinate | `{"box":338,"direction":"hi","value":"710233/1000000","variable":"q"}` | `710233/1000000 + -1 * q` |
| 10 | coordinate | `{"box":338,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 11 | coordinate | `{"box":338,"direction":"lo","value":"135501/250000","variable":"c"}` | `-135501/250000 + 1 * c` |
| 12 | coordinate | `{"box":338,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 13 | coordinate | `{"box":338,"direction":"lo","value":"103767/1000000","variable":"f"}` | `-103767/1000000 + 1 * f` |
| 14 | coordinate | `{"box":338,"direction":"lo","value":"385501/500000","variable":"h"}` | `-385501/500000 + 1 * h` |
| 15 | coordinate | `{"box":338,"direction":"lo","value":"196767/1000000","variable":"p"}` | `-196767/1000000 + 1 * p` |
| 16 | coordinate | `{"box":338,"direction":"lo","value":"75293/125000","variable":"q"}` | `-75293/125000 + 1 * q` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 95372000000 | 1 |
| 1 | 20339000000 | 2 |
| 2 | 108082000000 | 3 |
| 3 | 73513000000 | 0 |
| 4 | 95372000000 | 9, 10 |
| 5 | 20339000000 | 4, 12 |
| 6 | 108082000000 | 4, 14 |
| 7 | 108082000000 | 11, 16 |
| 8 | 71822000000 | 12, 13 |
| 9 | 22031000000 | 5, 6 |
| 10 | 73513000000 | 7, 13 |
| 11 | 95372000000 | 13, 16 |
| 12 | 55502000000 | 14, 15 |
| 13 | 52580000000 | 7, 8 |
| 14 | 153004 | 15 |
| 15 | 27635658324 | 10 |
| 16 | 410969 | 4 |
| 17 | 1000000 | 5, 13 |
| 18 | 103767 | 5 |
| 19 | 391000 | 6 |
| 20 | 625837 | 7 |
| 21 | 58580876328 | 16 |
| 22 | 346304 | 12 |
| 23 | 626442 | 13 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -725582578446771/125000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -725582578446771/125000 | 1 | -725582578446771/125000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 338 | -725582578446771/125000 |

## Stage 339

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS-/CQS- |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS-/CQS-:H |
| Index | 0 |
| Context | 33 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 283 |
| Coordinate cut | v high 681371/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 135501/250000 | 1 | 135501/250000 | 1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 103767/1000000 | 58493/100000 | 103767/1000000 | 58493/100000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 196767/1000000 | 29741/50000 | 196767/1000000 | 29741/50000 |
| q | 18771/62500 | 710233/1000000 | 18771/62500 | 710233/1000000 |
| u | 89063/200000 | 907/1000 | 89063/200000 | 907/1000 |
| v | 681371/1000000 | 835237/1000000 | 681371/1000000 | 835237/1000000 |
| r | 504431/1000000 | 1 | 504431/1000000 | 1 |
| w | 228839/500000 | 176051/200000 | 228839/500000 | 176051/200000 |
| j | 112111/250000 | 176083/200000 | 112111/250000 | 176083/200000 |
| k | 260221/500000 | 1 | 260221/500000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"88:1525","triangle":"QRS","value":"46773/500000"}` | `1 * r * k + -1 * v * r + -1 * u * k + -1 * w * j + 1 * u * w + 1 * v * j + -46773/500000` |
| 1 | bound | `{"direction":"lo","ref":"88:1590","triangle":"FQS","value":"76593/500000"}` | `1 * u * k + -1 * u + -1 * f * k + -1 * v * j + 1 * f * v + 1 * j + -76593/500000` |
| 2 | physical | `{"factor":106,"stage":88}` | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 3 | physical | `{"factor":129,"stage":88}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 4 | physical | `{"factor":1483,"stage":88}` | `896233/1000000 * w + 13402431/25000000 * b * w + -896233/1000000 * e * r + -13402431/25000000 * b * e + -559504/390625 * f * w + 559504/390625 * e * f + 559504/390625 * r + -559504/390625` |
| 5 | physical | `{"factor":1486,"stage":88}` | `161052805541/200000000000 * r * k + 433520322459/200000000000 * e * r + 433520322459/200000000000 * k + -161052805541/200000000000 * w * j + -433520322459/200000000000 * w + -433520322459/200000000000 * e * j + -74321641/25000000 * b * k + 74321641/25000000 * b * w` |
| 6 | physical | `{"factor":1545,"stage":88}` | `-324603/500000 * f * k + -186897/500000 * b * k + 324603/500000 * j + 186897/500000 * b + 1023/1000 * f * v + -1023/1000 * u + 1023/1000 * u * k + -1023/1000 * v * j` |
| 7 | physical | `{"factor":77,"stage":88}` | `1/1 * u * w + -1/1 * b * w + -1/1 * v * r + 1/1 * b * v + -93/1000` |
| 8 | coordinate | `{"box":339,"direction":"hi","value":"6143/20000","variable":"b"}` | `6143/20000 + -1 * b` |
| 9 | coordinate | `{"box":339,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 10 | coordinate | `{"box":339,"direction":"hi","value":"176051/200000","variable":"w"}` | `176051/200000 + -1 * w` |
| 11 | coordinate | `{"box":339,"direction":"hi","value":"176083/200000","variable":"j"}` | `176083/200000 + -1 * j` |
| 12 | coordinate | `{"box":339,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 13 | coordinate | `{"box":339,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 14 | coordinate | `{"box":339,"direction":"hi","value":"58493/100000","variable":"f"}` | `58493/100000 + -1 * f` |
| 15 | coordinate | `{"box":339,"direction":"hi","value":"907/1000","variable":"u"}` | `907/1000 + -1 * u` |
| 16 | coordinate | `{"box":339,"direction":"hi","value":"835237/1000000","variable":"v"}` | `835237/1000000 + -1 * v` |
| 17 | coordinate | `{"box":339,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 18 | coordinate | `{"box":339,"direction":"lo","value":"504431/1000000","variable":"r"}` | `-504431/1000000 + 1 * r` |
| 19 | coordinate | `{"box":339,"direction":"lo","value":"228839/500000","variable":"w"}` | `-228839/500000 + 1 * w` |
| 20 | coordinate | `{"box":339,"direction":"lo","value":"112111/250000","variable":"j"}` | `-112111/250000 + 1 * j` |
| 21 | coordinate | `{"box":339,"direction":"lo","value":"260221/500000","variable":"k"}` | `-260221/500000 + 1 * k` |
| 22 | coordinate | `{"box":339,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 23 | coordinate | `{"box":339,"direction":"lo","value":"103767/1000000","variable":"f"}` | `-103767/1000000 + 1 * f` |
| 24 | coordinate | `{"box":339,"direction":"lo","value":"89063/200000","variable":"u"}` | `-89063/200000 + 1 * u` |
| 25 | coordinate | `{"box":339,"direction":"lo","value":"681371/1000000","variable":"v"}` | `-681371/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 13619000000000000000000 | 7 |
| 1 | 17747600000000000000000 | 2 |
| 2 | 4008000000000000000000 | 1 |
| 3 | 1160400000000000000000 | 3 |
| 4 | 5856400000000000000000 | 0 |
| 5 | 5456600000000000000000 | 4 |
| 6 | 105800000000000000000 | 5 |
| 7 | 1807000000000000000000 | 6 |
| 8 | 2925268199784000000000 | 17, 22 |
| 9 | 13619000000000000000000 | 8, 25 |
| 10 | 10379000000000000000000 | 8, 10 |
| 11 | 990200000000000000000 | 17, 21 |
| 12 | 9932000000000000000000 | 13, 14 |
| 13 | 1666400000000000000000 | 15, 22 |
| 14 | 16081200000000000000000 | 13, 24 |
| 15 | 4648252737219189000000 | 18, 22 |
| 16 | 12800000000000000000 | 9, 13 |
| 17 | 229600000000000000000 | 11, 13 |
| 18 | 23604161000000000000000 | 14, 25 |
| 19 | 6655200000000000000000 | 10, 14 |
| 20 | 6341400000000000000000 | 12, 14 |
| 21 | 19475400000000000000000 | 10, 24 |
| 22 | 19475400000000000000000 | 18, 25 |
| 23 | 7102200000000000000000 | 12, 18 |
| 24 | 7102200000000000000000 | 10, 11 |
| 25 | 202615504000000000 | 17, 19 |
| 26 | 109944345626040000 | 17 |
| 27 | 26543919032496000 | 19 |
| 28 | 130497076344000000 | 14 |
| 29 | 94173730000000000 | 16 |
| 30 | 53187584000000000 | 13, 23 |
| 31 | 147407336567719916 | 13 |
| 32 | 9581904126884000000000 | 25 |
| 33 | 176244200000000000 | 24 |
| 34 | 161000000000000000 | 15, 21 |
| 35 | 83791162000000000 | 15 |
| 36 | 215153346009200000 | 12 |
| 37 | 115242000000000000 | 21, 23 |
| 38 | 88311564033952000 | 23 |
| 39 | 237477655073201541 | 21 |
| 40 | 161000000000000000 | 20, 25 |
| 41 | 115119731000000000 | 20 |
| 42 | 203065868811000000 | 18, 21 |
| 43 | 131909789919319425 | 18 |
| 44 | 166598184000000000 | 9 |
| 45 | 203065868811000000 | 10, 20 |
| 46 | 212152889662080084 | 10 |
| 47 | 283439769253125805 | 11 |
| 48 | 53187584000000000 | 19, 23 |
| 49 | 134565375199054459 | 22 |
| 50 | 267749419189000000 | 13, 20 |
| 51 | 225057288000000000 | 8, 21 |
| 52 | 117129265081296000 | 8 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -23905404438975709262741271/10000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -23905404438975709262741271/10000 | 1 | -23905404438975709262741271/10000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 339 | -23905404438975709262741271/10000 |
