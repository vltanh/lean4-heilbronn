# BITT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 1520

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS+/BFQ-/PRS-/AQR- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS+/BFQ-/PRS-/AQR-:LHHHHHLHLHLHL |
| Index | 0 |
| Context | 298 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1519 |
| Coordinate cut | f low 557581/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 4604/15625 | 103767/1000000 | 4604/15625 |
| c | 796617/1000000 | 1 | 796617/1000000 | 1 |
| e | 103767/1000000 | 318197/1000000 | 103767/1000000 | 318197/1000000 |
| f | 158493/400000 | 557581/1000000 | 158493/400000 | 557581/1000000 |
| h | 385501/500000 | 1 | 385501/500000 | 1 |
| p | 255807/500000 | 341509/500000 | 255807/500000 | 341509/500000 |
| q | 196767/1000000 | 91223/250000 | 196767/1000000 | 91223/250000 |
| u | 69693/200000 | 598653/1000000 | 69693/200000 | 598653/1000000 |
| v | 534543/1000000 | 38439/50000 | 534543/1000000 | 38439/50000 |
| r | 418343/500000 | 1 | 418343/500000 | 1 |
| w | 809111/1000000 | 1 | 809111/1000000 | 1 |
| j | 65491/100000 | 896233/1000000 | 65491/100000 | 896233/1000000 |
| k | 216063/500000 | 706737/1000000 | 216063/500000 | 706737/1000000 |

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
| 0 | bound | `{"direction":"lo","ref":"512:1949","triangle":"EPS","value":"71243/500000"}` | `-1 * p * k + 1 * e * p + 1 * k + 1 * q * j + -1 * q + -1 * e * j + -71243/500000` |
| 1 | bound | `{"direction":"lo","ref":"512:2029","triangle":"EPR","value":"164243/500000"}` | `-1 * p * w + 1 * e * p + 1 * w + 1 * q * r + -1 * q + -1 * e * r + -164243/500000` |
| 2 | physical | `{"factor":10,"stage":512}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 3 | physical | `{"factor":109,"stage":512}` | `-1/1 * f * k + 1/1 * e * f + 1/1 * k + 1/1 * j + -1093/1000 + -1/1 * e * j` |
| 4 | physical | `{"factor":111,"stage":512}` | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 5 | physical | `{"factor":122,"stage":512}` | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 6 | physical | `{"factor":124,"stage":512}` | `-1/1 * p * v + 1/1 * p + 1/1 * f * v + 1/1 * q * u + -1/1 * f * q + -1/1 * u + -93/1000` |
| 7 | physical | `{"factor":136,"stage":512}` | `-1/1 * r * k + 1/1 * q * r + 1/1 * p * k + 1/1 * w * j + -1/1 * p * w + -1/1 * q * j + -93/1000` |
| 8 | physical | `{"factor":27,"stage":512}` | `1/1 * q + -1/1 * a + -1/1 * e * p + 1/1 * a * p + -93/1000` |
| 9 | physical | `{"factor":69,"stage":512}` | `-1/1 * f * v + 1/1 * b * v + 1/1 * u + -1/1 * b + -93/1000` |
| 10 | physical | `{"factor":7,"stage":512}` | `1/1 * b * h + -1/1 * a * b + -93/1000` |
| 11 | physical | `{"factor":85,"stage":512}` | `1/1 * q + -1/1 * c * q + -1/1 * e * p + 1/1 * c * e + -93/1000` |
| 12 | physical | `{"factor":87,"stage":512}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 13 | physical | `{"factor":88,"stage":512}` | `1/1 * k + -1/1 * c * k + -1/1 * e * j + 1/1 * c * e + -93/1000` |
| 14 | physical | `{"factor":94,"stage":512}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 15 | coordinate | `{"box":1520,"direction":"hi","value":"4604/15625","variable":"b"}` | `4604/15625 + -1 * b` |
| 16 | coordinate | `{"box":1520,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 17 | coordinate | `{"box":1520,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 18 | coordinate | `{"box":1520,"direction":"hi","value":"896233/1000000","variable":"j"}` | `896233/1000000 + -1 * j` |
| 19 | coordinate | `{"box":1520,"direction":"hi","value":"706737/1000000","variable":"k"}` | `706737/1000000 + -1 * k` |
| 20 | coordinate | `{"box":1520,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 21 | coordinate | `{"box":1520,"direction":"hi","value":"318197/1000000","variable":"e"}` | `318197/1000000 + -1 * e` |
| 22 | coordinate | `{"box":1520,"direction":"hi","value":"557581/1000000","variable":"f"}` | `557581/1000000 + -1 * f` |
| 23 | coordinate | `{"box":1520,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 24 | coordinate | `{"box":1520,"direction":"hi","value":"341509/500000","variable":"p"}` | `341509/500000 + -1 * p` |
| 25 | coordinate | `{"box":1520,"direction":"hi","value":"91223/250000","variable":"q"}` | `91223/250000 + -1 * q` |
| 26 | coordinate | `{"box":1520,"direction":"hi","value":"598653/1000000","variable":"u"}` | `598653/1000000 + -1 * u` |
| 27 | coordinate | `{"box":1520,"direction":"hi","value":"38439/50000","variable":"v"}` | `38439/50000 + -1 * v` |
| 28 | coordinate | `{"box":1520,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 29 | coordinate | `{"box":1520,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 30 | coordinate | `{"box":1520,"direction":"lo","value":"418343/500000","variable":"r"}` | `-418343/500000 + 1 * r` |
| 31 | coordinate | `{"box":1520,"direction":"lo","value":"809111/1000000","variable":"w"}` | `-809111/1000000 + 1 * w` |
| 32 | coordinate | `{"box":1520,"direction":"lo","value":"65491/100000","variable":"j"}` | `-65491/100000 + 1 * j` |
| 33 | coordinate | `{"box":1520,"direction":"lo","value":"216063/500000","variable":"k"}` | `-216063/500000 + 1 * k` |
| 34 | coordinate | `{"box":1520,"direction":"lo","value":"796617/1000000","variable":"c"}` | `-796617/1000000 + 1 * c` |
| 35 | coordinate | `{"box":1520,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 36 | coordinate | `{"box":1520,"direction":"lo","value":"158493/400000","variable":"f"}` | `-158493/400000 + 1 * f` |
| 37 | coordinate | `{"box":1520,"direction":"lo","value":"385501/500000","variable":"h"}` | `-385501/500000 + 1 * h` |
| 38 | coordinate | `{"box":1520,"direction":"lo","value":"255807/500000","variable":"p"}` | `-255807/500000 + 1 * p` |
| 39 | coordinate | `{"box":1520,"direction":"lo","value":"196767/1000000","variable":"q"}` | `-196767/1000000 + 1 * q` |
| 40 | coordinate | `{"box":1520,"direction":"lo","value":"69693/200000","variable":"u"}` | `-69693/200000 + 1 * u` |
| 41 | coordinate | `{"box":1520,"direction":"lo","value":"534543/1000000","variable":"v"}` | `-534543/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 12037000000 | 10 |
| 1 | 4940000000 | 2 |
| 2 | 5088000000 | 8 |
| 3 | 52234000000 | 9 |
| 4 | 11156000000 | 11 |
| 5 | 2578000000 | 12 |
| 6 | 25330000000 | 13 |
| 7 | 32428000000 | 14 |
| 8 | 820000000 | 3 |
| 9 | 19705000000 | 4 |
| 10 | 15039000000 | 1 |
| 11 | 1204000000 | 0 |
| 12 | 8438000000 | 5 |
| 13 | 87016000000 | 6 |
| 14 | 2218000000 | 7 |
| 15 | 16977000000 | 28, 29 |
| 16 | 12037000000 | 23, 29 |
| 17 | 4940000000 | 25, 29 |
| 18 | 10028000000 | 24, 28 |
| 19 | 52234000000 | 27, 29 |
| 20 | 39064000000 | 20, 35 |
| 21 | 32428000000 | 20, 37 |
| 22 | 43584000000 | 34, 39 |
| 23 | 2578000000 | 17, 20 |
| 24 | 25330000000 | 19, 20 |
| 25 | 820000000 | 22, 35 |
| 26 | 19705000000 | 35, 40 |
| 27 | 17618000000 | 30, 35 |
| 28 | 27354000000 | 32, 35 |
| 29 | 3192000000 | 23, 36 |
| 30 | 5246000000 | 22, 37 |
| 31 | 87016000000 | 36, 39 |
| 32 | 34782000000 | 22, 41 |
| 33 | 8438000000 | 17, 22 |
| 34 | 820000000 | 33, 36 |
| 35 | 32428000000 | 37, 38 |
| 36 | 19705000000 | 23, 40 |
| 37 | 8438000000 | 16, 23 |
| 38 | 87016000000 | 38, 41 |
| 39 | 87016000000 | 26, 39 |
| 40 | 17257000000 | 17, 24 |
| 41 | 17257000000 | 16, 39 |
| 42 | 1014000000 | 19, 38 |
| 43 | 1014000000 | 32, 39 |
| 44 | 2218000000 | 16, 19 |
| 45 | 2218000000 | 17, 32 |
| 46 | 597140 | 25 |
| 47 | 347855 | 28 |
| 48 | 1000000 | 35, 38 |
| 49 | 940107 | 35 |
| 50 | 103767 | 38 |
| 51 | 148537 | 26 |
| 52 | 368641 | 15 |
| 53 | 119724 | 31 |
| 54 | 1000000 | 21, 30 |
| 55 | 836686 | 21 |
| 56 | 318197 | 16 |
| 57 | 134054 | 33 |
| 58 | 35744 | 18 |
| 59 | 343996 | 27 |
| 60 | 228522 | 37 |
| 61 | 101553 | 30 |
| 62 | 360250 | 24 |
| 63 | 65806 | 20 |
| 64 | 19466 | 22 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -380474648185607/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -380474648185607/1000000 | 1 | -380474648185607/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1520 | -380474648185607/1000000 |

## Stage 1521

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS+/BFQ-/PRS-/AQR- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS+/BFQ-/PRS-/AQR-:LHHHHHLHLHLHH |
| Index | 0 |
| Context | 298 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1519 |
| Coordinate cut | f high 557581/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 4604/15625 | 103767/1000000 | 4604/15625 |
| c | 796617/1000000 | 1 | 796617/1000000 | 1 |
| e | 103767/1000000 | 318197/1000000 | 103767/1000000 | 318197/1000000 |
| f | 557581/1000000 | 344349/500000 | 557581/1000000 | 344349/500000 |
| h | 385501/500000 | 1 | 385501/500000 | 1 |
| p | 255807/500000 | 341509/500000 | 255807/500000 | 341509/500000 |
| q | 196767/1000000 | 91223/250000 | 196767/1000000 | 91223/250000 |
| u | 69693/200000 | 598653/1000000 | 69693/200000 | 598653/1000000 |
| v | 534543/1000000 | 38439/50000 | 534543/1000000 | 38439/50000 |
| r | 418343/500000 | 1 | 418343/500000 | 1 |
| w | 809111/1000000 | 1 | 809111/1000000 | 1 |
| j | 65491/100000 | 896233/1000000 | 65491/100000 | 896233/1000000 |
| k | 216063/500000 | 706737/1000000 | 216063/500000 | 706737/1000000 |

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
| 0 | physical | `{"factor":10,"stage":512}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 1 | physical | `{"factor":109,"stage":512}` | `-1/1 * f * k + 1/1 * e * f + 1/1 * k + 1/1 * j + -1093/1000 + -1/1 * e * j` |
| 2 | physical | `{"factor":111,"stage":512}` | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 3 | physical | `{"factor":119,"stage":512}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 4 | physical | `{"factor":122,"stage":512}` | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 5 | physical | `{"factor":124,"stage":512}` | `-1/1 * p * v + 1/1 * p + 1/1 * f * v + 1/1 * q * u + -1/1 * f * q + -1/1 * u + -93/1000` |
| 6 | physical | `{"factor":136,"stage":512}` | `-1/1 * r * k + 1/1 * q * r + 1/1 * p * k + 1/1 * w * j + -1/1 * p * w + -1/1 * q * j + -93/1000` |
| 7 | physical | `{"factor":27,"stage":512}` | `1/1 * q + -1/1 * a + -1/1 * e * p + 1/1 * a * p + -93/1000` |
| 8 | physical | `{"factor":45,"stage":512}` | `-1/1 * u * w + 1/1 * a * u + 1/1 * v * r + -1/1 * a * r + -93/1000` |
| 9 | physical | `{"factor":69,"stage":512}` | `-1/1 * f * v + 1/1 * b * v + 1/1 * u + -1/1 * b + -93/1000` |
| 10 | physical | `{"factor":7,"stage":512}` | `1/1 * b * h + -1/1 * a * b + -93/1000` |
| 11 | physical | `{"factor":85,"stage":512}` | `1/1 * q + -1/1 * c * q + -1/1 * e * p + 1/1 * c * e + -93/1000` |
| 12 | physical | `{"factor":88,"stage":512}` | `1/1 * k + -1/1 * c * k + -1/1 * e * j + 1/1 * c * e + -93/1000` |
| 13 | physical | `{"factor":94,"stage":512}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 14 | coordinate | `{"box":1521,"direction":"hi","value":"4604/15625","variable":"b"}` | `4604/15625 + -1 * b` |
| 15 | coordinate | `{"box":1521,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 16 | coordinate | `{"box":1521,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 17 | coordinate | `{"box":1521,"direction":"hi","value":"896233/1000000","variable":"j"}` | `896233/1000000 + -1 * j` |
| 18 | coordinate | `{"box":1521,"direction":"hi","value":"706737/1000000","variable":"k"}` | `706737/1000000 + -1 * k` |
| 19 | coordinate | `{"box":1521,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 20 | coordinate | `{"box":1521,"direction":"hi","value":"318197/1000000","variable":"e"}` | `318197/1000000 + -1 * e` |
| 21 | coordinate | `{"box":1521,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 22 | coordinate | `{"box":1521,"direction":"hi","value":"341509/500000","variable":"p"}` | `341509/500000 + -1 * p` |
| 23 | coordinate | `{"box":1521,"direction":"hi","value":"91223/250000","variable":"q"}` | `91223/250000 + -1 * q` |
| 24 | coordinate | `{"box":1521,"direction":"hi","value":"598653/1000000","variable":"u"}` | `598653/1000000 + -1 * u` |
| 25 | coordinate | `{"box":1521,"direction":"hi","value":"38439/50000","variable":"v"}` | `38439/50000 + -1 * v` |
| 26 | coordinate | `{"box":1521,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 27 | coordinate | `{"box":1521,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 28 | coordinate | `{"box":1521,"direction":"lo","value":"418343/500000","variable":"r"}` | `-418343/500000 + 1 * r` |
| 29 | coordinate | `{"box":1521,"direction":"lo","value":"809111/1000000","variable":"w"}` | `-809111/1000000 + 1 * w` |
| 30 | coordinate | `{"box":1521,"direction":"lo","value":"65491/100000","variable":"j"}` | `-65491/100000 + 1 * j` |
| 31 | coordinate | `{"box":1521,"direction":"lo","value":"216063/500000","variable":"k"}` | `-216063/500000 + 1 * k` |
| 32 | coordinate | `{"box":1521,"direction":"lo","value":"796617/1000000","variable":"c"}` | `-796617/1000000 + 1 * c` |
| 33 | coordinate | `{"box":1521,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 34 | coordinate | `{"box":1521,"direction":"lo","value":"557581/1000000","variable":"f"}` | `-557581/1000000 + 1 * f` |
| 35 | coordinate | `{"box":1521,"direction":"lo","value":"385501/500000","variable":"h"}` | `-385501/500000 + 1 * h` |
| 36 | coordinate | `{"box":1521,"direction":"lo","value":"255807/500000","variable":"p"}` | `-255807/500000 + 1 * p` |
| 37 | coordinate | `{"box":1521,"direction":"lo","value":"196767/1000000","variable":"q"}` | `-196767/1000000 + 1 * q` |
| 38 | coordinate | `{"box":1521,"direction":"lo","value":"69693/200000","variable":"u"}` | `-69693/200000 + 1 * u` |
| 39 | coordinate | `{"box":1521,"direction":"lo","value":"534543/1000000","variable":"v"}` | `-534543/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 8458000000 | 10 |
| 1 | 4918000000 | 0 |
| 2 | 2992000000 | 7 |
| 3 | 4298000000 | 8 |
| 4 | 38338000000 | 9 |
| 5 | 29917000000 | 11 |
| 6 | 19095000000 | 12 |
| 7 | 18080000000 | 13 |
| 8 | 22035000000 | 1 |
| 9 | 10718000000 | 2 |
| 10 | 37246000000 | 3 |
| 11 | 12219000000 | 4 |
| 12 | 51837000000 | 5 |
| 13 | 25896000000 | 6 |
| 14 | 13376000000 | 26, 27 |
| 15 | 8458000000 | 21, 27 |
| 16 | 4918000000 | 23, 27 |
| 17 | 7910000000 | 22, 26 |
| 18 | 38338000000 | 25, 27 |
| 19 | 4298000000 | 24, 26 |
| 20 | 4298000000 | 26, 28 |
| 21 | 49012000000 | 19, 33 |
| 22 | 18080000000 | 19, 35 |
| 23 | 47997000000 | 32, 37 |
| 24 | 14252000000 | 31, 32 |
| 25 | 4843000000 | 18, 19 |
| 26 | 22035000000 | 20, 34 |
| 27 | 32909000000 | 33, 36 |
| 28 | 10718000000 | 33, 38 |
| 29 | 37246000000 | 15, 20 |
| 30 | 3884000000 | 17, 20 |
| 31 | 12219000000 | 21, 34 |
| 32 | 51837000000 | 34, 37 |
| 33 | 13499000000 | 25, 34 |
| 34 | 12219000000 | 29, 34 |
| 35 | 22035000000 | 31, 34 |
| 36 | 18080000000 | 35, 36 |
| 37 | 10718000000 | 24, 35 |
| 38 | 12219000000 | 15, 21 |
| 39 | 51837000000 | 36, 39 |
| 40 | 51837000000 | 24, 37 |
| 41 | 25896000000 | 16, 22 |
| 42 | 25896000000 | 15, 37 |
| 43 | 25896000000 | 18, 36 |
| 44 | 25896000000 | 17, 23 |
| 45 | 4298000000 | 16, 24 |
| 46 | 4298000000 | 15, 39 |
| 47 | 11350000000 | 15, 31 |
| 48 | 11350000000 | 16, 17 |
| 49 | 299453 | 23 |
| 50 | 380846 | 26 |
| 51 | 511614 | 33 |
| 52 | 231532 | 36 |
| 53 | 226275 | 24 |
| 54 | 39104 | 14 |
| 55 | 73325 | 18 |
| 56 | 120380 | 30 |
| 57 | 470247 | 25 |
| 58 | 125259 | 21 |
| 59 | 228489 | 16 |
| 60 | 18118 | 15 |
| 61 | 68378 | 32 |
| 62 | 286981 | 20 |
| 63 | 2583 | 34 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -1434313355678397/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -1434313355678397/1000000 | 1 | -1434313355678397/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1521 | -1434313355678397/1000000 |

## Stage 1522

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS+/BFQ-/PRS-/AQR- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS+/BFQ-/PRS-/AQR-:LHHHHHLHLHH |
| Index | 0 |
| Context | 298 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1516 |
| Coordinate cut | k high 706737/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 4604/15625 | 103767/1000000 | 4604/15625 |
| c | 796617/1000000 | 1 | 796617/1000000 | 1 |
| e | 103767/1000000 | 318197/1000000 | 103767/1000000 | 318197/1000000 |
| f | 158493/400000 | 344349/500000 | 158493/400000 | 344349/500000 |
| h | 385501/500000 | 1 | 385501/500000 | 1 |
| p | 255807/500000 | 341509/500000 | 255807/500000 | 341509/500000 |
| q | 196767/1000000 | 91223/250000 | 196767/1000000 | 91223/250000 |
| u | 69693/200000 | 598653/1000000 | 69693/200000 | 598653/1000000 |
| v | 534543/1000000 | 38439/50000 | 534543/1000000 | 38439/50000 |
| r | 134249/200000 | 1 | 134249/200000 | 1 |
| w | 809111/1000000 | 1 | 809111/1000000 | 1 |
| j | 65491/100000 | 896233/1000000 | 65491/100000 | 896233/1000000 |
| k | 706737/1000000 | 896233/1000000 | 706737/1000000 | 896233/1000000 |

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
| 0 | physical | `{"factor":10,"stage":512}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 1 | physical | `{"factor":111,"stage":512}` | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 2 | physical | `{"factor":119,"stage":512}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 3 | physical | `{"factor":122,"stage":512}` | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 4 | physical | `{"factor":124,"stage":512}` | `-1/1 * p * v + 1/1 * p + 1/1 * f * v + 1/1 * q * u + -1/1 * f * q + -1/1 * u + -93/1000` |
| 5 | physical | `{"factor":136,"stage":512}` | `-1/1 * r * k + 1/1 * q * r + 1/1 * p * k + 1/1 * w * j + -1/1 * p * w + -1/1 * q * j + -93/1000` |
| 6 | physical | `{"factor":45,"stage":512}` | `-1/1 * u * w + 1/1 * a * u + 1/1 * v * r + -1/1 * a * r + -93/1000` |
| 7 | physical | `{"factor":69,"stage":512}` | `-1/1 * f * v + 1/1 * b * v + 1/1 * u + -1/1 * b + -93/1000` |
| 8 | physical | `{"factor":7,"stage":512}` | `1/1 * b * h + -1/1 * a * b + -93/1000` |
| 9 | physical | `{"factor":88,"stage":512}` | `1/1 * k + -1/1 * c * k + -1/1 * e * j + 1/1 * c * e + -93/1000` |
| 10 | physical | `{"factor":94,"stage":512}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 11 | coordinate | `{"box":1522,"direction":"hi","value":"4604/15625","variable":"b"}` | `4604/15625 + -1 * b` |
| 12 | coordinate | `{"box":1522,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 13 | coordinate | `{"box":1522,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 14 | coordinate | `{"box":1522,"direction":"hi","value":"896233/1000000","variable":"j"}` | `896233/1000000 + -1 * j` |
| 15 | coordinate | `{"box":1522,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 16 | coordinate | `{"box":1522,"direction":"hi","value":"318197/1000000","variable":"e"}` | `318197/1000000 + -1 * e` |
| 17 | coordinate | `{"box":1522,"direction":"hi","value":"344349/500000","variable":"f"}` | `344349/500000 + -1 * f` |
| 18 | coordinate | `{"box":1522,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 19 | coordinate | `{"box":1522,"direction":"hi","value":"341509/500000","variable":"p"}` | `341509/500000 + -1 * p` |
| 20 | coordinate | `{"box":1522,"direction":"hi","value":"91223/250000","variable":"q"}` | `91223/250000 + -1 * q` |
| 21 | coordinate | `{"box":1522,"direction":"hi","value":"598653/1000000","variable":"u"}` | `598653/1000000 + -1 * u` |
| 22 | coordinate | `{"box":1522,"direction":"hi","value":"38439/50000","variable":"v"}` | `38439/50000 + -1 * v` |
| 23 | coordinate | `{"box":1522,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 24 | coordinate | `{"box":1522,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 25 | coordinate | `{"box":1522,"direction":"lo","value":"134249/200000","variable":"r"}` | `-134249/200000 + 1 * r` |
| 26 | coordinate | `{"box":1522,"direction":"lo","value":"65491/100000","variable":"j"}` | `-65491/100000 + 1 * j` |
| 27 | coordinate | `{"box":1522,"direction":"lo","value":"706737/1000000","variable":"k"}` | `-706737/1000000 + 1 * k` |
| 28 | coordinate | `{"box":1522,"direction":"lo","value":"796617/1000000","variable":"c"}` | `-796617/1000000 + 1 * c` |
| 29 | coordinate | `{"box":1522,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 30 | coordinate | `{"box":1522,"direction":"lo","value":"158493/400000","variable":"f"}` | `-158493/400000 + 1 * f` |
| 31 | coordinate | `{"box":1522,"direction":"lo","value":"385501/500000","variable":"h"}` | `-385501/500000 + 1 * h` |
| 32 | coordinate | `{"box":1522,"direction":"lo","value":"255807/500000","variable":"p"}` | `-255807/500000 + 1 * p` |
| 33 | coordinate | `{"box":1522,"direction":"lo","value":"196767/1000000","variable":"q"}` | `-196767/1000000 + 1 * q` |
| 34 | coordinate | `{"box":1522,"direction":"lo","value":"69693/200000","variable":"u"}` | `-69693/200000 + 1 * u` |
| 35 | coordinate | `{"box":1522,"direction":"lo","value":"534543/1000000","variable":"v"}` | `-534543/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 10539000000 | 8 |
| 1 | 3322000000 | 0 |
| 2 | 11447000000 | 6 |
| 3 | 44601000000 | 7 |
| 4 | 16239000000 | 9 |
| 5 | 17052000000 | 10 |
| 6 | 12228000000 | 1 |
| 7 | 34606000000 | 2 |
| 8 | 5288000000 | 3 |
| 9 | 59944000000 | 4 |
| 10 | 51487000000 | 5 |
| 11 | 13861000000 | 23, 24 |
| 12 | 10539000000 | 18, 24 |
| 13 | 3322000000 | 20, 24 |
| 14 | 3322000000 | 19, 23 |
| 15 | 44601000000 | 22, 24 |
| 16 | 11447000000 | 21, 23 |
| 17 | 11447000000 | 23, 25 |
| 18 | 16239000000 | 15, 29 |
| 19 | 17052000000 | 15, 31 |
| 20 | 17052000000 | 28, 33 |
| 21 | 16239000000 | 27, 28 |
| 22 | 12228000000 | 29, 34 |
| 23 | 18759000000 | 25, 29 |
| 24 | 15847000000 | 12, 16 |
| 25 | 18367000000 | 14, 29 |
| 26 | 5288000000 | 18, 30 |
| 27 | 59944000000 | 30, 33 |
| 28 | 15342000000 | 22, 30 |
| 29 | 5288000000 | 13, 17 |
| 30 | 17052000000 | 31, 32 |
| 31 | 12228000000 | 18, 34 |
| 32 | 5288000000 | 25, 31 |
| 33 | 59944000000 | 32, 35 |
| 34 | 43006000000 | 21, 33 |
| 35 | 16938000000 | 20, 34 |
| 36 | 51487000000 | 13, 19 |
| 37 | 51487000000 | 12, 33 |
| 38 | 51487000000 | 19, 27 |
| 39 | 51487000000 | 14, 20 |
| 40 | 11447000000 | 13, 21 |
| 41 | 148000000 | 12, 35 |
| 42 | 11299000000 | 22, 25 |
| 43 | 16881000000 | 25, 27 |
| 44 | 16881000000 | 13, 26 |
| 45 | 1000000 | 17, 35 |
| 46 | 534543 | 17 |
| 47 | 688698 | 22 |
| 48 | 339729 | 34 |
| 49 | 213617 | 11 |
| 50 | 7468002542 | 27 |
| 51 | 681379 | 35 |
| 52 | 322405 | 18 |
| 53 | 671245 | 29 |
| 54 | 103767 | 25 |
| 55 | 372029 | 13 |
| 56 | 264146 | 12 |
| 57 | 289803 | 32 |
| 58 | 289215 | 23 |
| 59 | 337473 | 33 |
| 60 | 225390 | 15 |
| 61 | 867781 | 16 |
| 62 | 305915 | 26 |
| 63 | 378288 | 30 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -244772913189481/125000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -244772913189481/125000 | 1 | -244772913189481/125000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1522 | -244772913189481/125000 |

## Stage 1523

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS+/BFQ-/PRS-/AQR- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS+/BFQ-/PRS-/AQR-:LHHHHHLHH |
| Index | 0 |
| Context | 298 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1513 |
| Coordinate cut | q high 91223/250000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 4604/15625 | 103767/1000000 | 4604/15625 |
| c | 796617/1000000 | 1 | 796617/1000000 | 1 |
| e | 103767/1000000 | 318197/1000000 | 103767/1000000 | 318197/1000000 |
| f | 158493/400000 | 344349/500000 | 158493/400000 | 344349/500000 |
| h | 385501/500000 | 1 | 385501/500000 | 1 |
| p | 382767/1000000 | 341509/500000 | 382767/1000000 | 341509/500000 |
| q | 91223/250000 | 524233/1000000 | 91223/250000 | 524233/1000000 |
| u | 69693/200000 | 598653/1000000 | 69693/200000 | 598653/1000000 |
| v | 534543/1000000 | 38439/50000 | 534543/1000000 | 38439/50000 |
| r | 134249/200000 | 1 | 134249/200000 | 1 |
| w | 809111/1000000 | 1 | 809111/1000000 | 1 |
| j | 65491/100000 | 896233/1000000 | 65491/100000 | 896233/1000000 |
| k | 216063/500000 | 896233/1000000 | 216063/500000 | 896233/1000000 |

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
| 0 | bound | `{"direction":"lo","ref":"512:1913","triangle":"CEF","value":"57949/500000"}` | `442051/500000 + -1 * c + -1 * e * f + 1 * c * e` |
| 1 | bound | `{"direction":"lo","ref":"512:2159","triangle":"BFP","value":"161279/500000"}` | `-1 * f * q + 1 * b * q + 1 * p + -1 * b + -161279/500000` |
| 2 | physical | `{"factor":108,"stage":512}` | `-1/1 * f * w + 1/1 * e * f + 1/1 * w + 1/1 * r + -1279/1000 + -1/1 * e * r` |
| 3 | physical | `{"factor":111,"stage":512}` | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 4 | physical | `{"factor":122,"stage":512}` | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 5 | physical | `{"factor":124,"stage":512}` | `-1/1 * p * v + 1/1 * p + 1/1 * f * v + 1/1 * q * u + -1/1 * f * q + -1/1 * u + -93/1000` |
| 6 | physical | `{"factor":69,"stage":512}` | `-1/1 * f * v + 1/1 * b * v + 1/1 * u + -1/1 * b + -93/1000` |
| 7 | physical | `{"factor":85,"stage":512}` | `1/1 * q + -1/1 * c * q + -1/1 * e * p + 1/1 * c * e + -93/1000` |
| 8 | physical | `{"factor":87,"stage":512}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 9 | physical | `{"factor":94,"stage":512}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 10 | coordinate | `{"box":1523,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 11 | coordinate | `{"box":1523,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 12 | coordinate | `{"box":1523,"direction":"hi","value":"318197/1000000","variable":"e"}` | `318197/1000000 + -1 * e` |
| 13 | coordinate | `{"box":1523,"direction":"hi","value":"344349/500000","variable":"f"}` | `344349/500000 + -1 * f` |
| 14 | coordinate | `{"box":1523,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 15 | coordinate | `{"box":1523,"direction":"hi","value":"341509/500000","variable":"p"}` | `341509/500000 + -1 * p` |
| 16 | coordinate | `{"box":1523,"direction":"hi","value":"524233/1000000","variable":"q"}` | `524233/1000000 + -1 * q` |
| 17 | coordinate | `{"box":1523,"direction":"hi","value":"598653/1000000","variable":"u"}` | `598653/1000000 + -1 * u` |
| 18 | coordinate | `{"box":1523,"direction":"hi","value":"38439/50000","variable":"v"}` | `38439/50000 + -1 * v` |
| 19 | coordinate | `{"box":1523,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 20 | coordinate | `{"box":1523,"direction":"lo","value":"134249/200000","variable":"r"}` | `-134249/200000 + 1 * r` |
| 21 | coordinate | `{"box":1523,"direction":"lo","value":"809111/1000000","variable":"w"}` | `-809111/1000000 + 1 * w` |
| 22 | coordinate | `{"box":1523,"direction":"lo","value":"796617/1000000","variable":"c"}` | `-796617/1000000 + 1 * c` |
| 23 | coordinate | `{"box":1523,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 24 | coordinate | `{"box":1523,"direction":"lo","value":"158493/400000","variable":"f"}` | `-158493/400000 + 1 * f` |
| 25 | coordinate | `{"box":1523,"direction":"lo","value":"385501/500000","variable":"h"}` | `-385501/500000 + 1 * h` |
| 26 | coordinate | `{"box":1523,"direction":"lo","value":"382767/1000000","variable":"p"}` | `-382767/1000000 + 1 * p` |
| 27 | coordinate | `{"box":1523,"direction":"lo","value":"91223/250000","variable":"q"}` | `-91223/250000 + 1 * q` |
| 28 | coordinate | `{"box":1523,"direction":"lo","value":"69693/200000","variable":"u"}` | `-69693/200000 + 1 * u` |
| 29 | coordinate | `{"box":1523,"direction":"lo","value":"534543/1000000","variable":"v"}` | `-534543/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 89096000000 | 1 |
| 1 | 46260000000 | 6 |
| 2 | 4270000000 | 0 |
| 3 | 3074000000 | 7 |
| 4 | 51242000000 | 8 |
| 5 | 124484000000 | 9 |
| 6 | 4270000000 | 2 |
| 7 | 57816000000 | 3 |
| 8 | 6506000000 | 4 |
| 9 | 154426000000 | 5 |
| 10 | 89096000000 | 16, 19 |
| 11 | 46260000000 | 18, 19 |
| 12 | 58586000000 | 11, 23 |
| 13 | 124484000000 | 11, 25 |
| 14 | 127558000000 | 22, 27 |
| 15 | 51242000000 | 10, 11 |
| 16 | 3074000000 | 23, 26 |
| 17 | 57816000000 | 23, 28 |
| 18 | 55512000000 | 20, 23 |
| 19 | 6506000000 | 14, 24 |
| 20 | 243522000000 | 24, 27 |
| 21 | 108166000000 | 18, 24 |
| 22 | 10778000000 | 21, 24 |
| 23 | 124484000000 | 14, 15 |
| 24 | 57816000000 | 14, 28 |
| 25 | 6506000000 | 20, 25 |
| 26 | 154426000000 | 15, 18 |
| 27 | 154426000000 | 17, 27 |
| 28 | 7917970502 | 24 |
| 29 | 93339389341 | 27 |
| 30 | 600038 | 26 |
| 31 | 53085173832 | 19 |
| 32 | 580880 | 28 |
| 33 | 187306 | 22 |
| 34 | 593885 | 21 |
| 35 | 2000000 | 13, 21 |
| 36 | 1618222 | 13 |
| 37 | 1377396 | 10 |
| 38 | 452716 | 20 |
| 39 | 591653 | 29 |
| 40 | 808403 | 14 |
| 41 | 369362 | 12 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -5930187047604289/500000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -5930187047604289/500000 | 1 | -5930187047604289/500000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1523 | -5930187047604289/500000 |

## Stage 1524

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS+/BFQ-/PRS-/AQR- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS+/BFQ-/PRS-/AQR-:LHHHHHH |
| Index | 0 |
| Context | 298 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1510 |
| Coordinate cut | e high 318197/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 4604/15625 | 103767/1000000 | 4604/15625 |
| c | 796617/1000000 | 1 | 796617/1000000 | 1 |
| e | 318197/1000000 | 59/125 | 318197/1000000 | 59/125 |
| f | 158493/400000 | 344349/500000 | 158493/400000 | 344349/500000 |
| h | 385501/500000 | 1 | 385501/500000 | 1 |
| p | 382767/1000000 | 341509/500000 | 382767/1000000 | 341509/500000 |
| q | 196767/1000000 | 524233/1000000 | 196767/1000000 | 524233/1000000 |
| u | 196767/1000000 | 598653/1000000 | 196767/1000000 | 598653/1000000 |
| v | 534543/1000000 | 38439/50000 | 534543/1000000 | 38439/50000 |
| r | 134249/200000 | 1 | 134249/200000 | 1 |
| w | 809111/1000000 | 1 | 809111/1000000 | 1 |
| j | 65491/100000 | 896233/1000000 | 65491/100000 | 896233/1000000 |
| k | 216063/500000 | 896233/1000000 | 216063/500000 | 896233/1000000 |

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
| 0 | physical | `{"factor":108,"stage":512}` | `-1/1 * f * w + 1/1 * e * f + 1/1 * w + 1/1 * r + -1279/1000 + -1/1 * e * r` |
| 1 | physical | `{"factor":122,"stage":512}` | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 2 | physical | `{"factor":65,"stage":512}` | `1/1 * w + -1/1 * b * w + -1/1 * e * r + 1/1 * b * e + -13857/20000` |
| 3 | physical | `{"factor":7,"stage":512}` | `1/1 * b * h + -1/1 * a * b + -93/1000` |
| 4 | coordinate | `{"box":1524,"direction":"hi","value":"4604/15625","variable":"b"}` | `4604/15625 + -1 * b` |
| 5 | coordinate | `{"box":1524,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 6 | coordinate | `{"box":1524,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 7 | coordinate | `{"box":1524,"direction":"hi","value":"59/125","variable":"e"}` | `59/125 + -1 * e` |
| 8 | coordinate | `{"box":1524,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 9 | coordinate | `{"box":1524,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 10 | coordinate | `{"box":1524,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 11 | coordinate | `{"box":1524,"direction":"lo","value":"134249/200000","variable":"r"}` | `-134249/200000 + 1 * r` |
| 12 | coordinate | `{"box":1524,"direction":"lo","value":"809111/1000000","variable":"w"}` | `-809111/1000000 + 1 * w` |
| 13 | coordinate | `{"box":1524,"direction":"lo","value":"318197/1000000","variable":"e"}` | `-318197/1000000 + 1 * e` |
| 14 | coordinate | `{"box":1524,"direction":"lo","value":"158493/400000","variable":"f"}` | `-158493/400000 + 1 * f` |
| 15 | coordinate | `{"box":1524,"direction":"lo","value":"385501/500000","variable":"h"}` | `-385501/500000 + 1 * h` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 172308000000 | 3 |
| 1 | 252722000000 | 2 |
| 2 | 96110000000 | 0 |
| 3 | 65014000000 | 1 |
| 4 | 252722000000 | 4, 13 |
| 5 | 172308000000 | 8, 10 |
| 6 | 252722000000 | 4, 6 |
| 7 | 96110000000 | 7, 14 |
| 8 | 348832000000 | 11, 13 |
| 9 | 65014000000 | 8, 14 |
| 10 | 161124000000 | 12, 14 |
| 11 | 65014000000 | 11, 15 |
| 12 | 172308000000 | 9, 10 |
| 13 | 17879884236 | 9 |
| 14 | 17879884236 | 10 |
| 15 | 210523381038 | 6 |
| 16 | 780068 | 5 |
| 17 | 1382234 | 4 |
| 18 | 121603776633 | 13 |
| 19 | 221561 | 8 |
| 20 | 19989280764 | 14 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -9074132318552373/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -9074132318552373/1000000 | 1 | -9074132318552373/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1524 | -9074132318552373/1000000 |
