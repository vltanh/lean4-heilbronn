# BITT convex: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 590

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS+/BFP+/AQR-/EPQ-/PQR-/APQ- |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS+/BFP+/AQR-/EPQ-/PQR-/APQ-:LLHHHL |
| Index | 0 |
| Context | 34 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 589 |
| Coordinate cut | v low 430019/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 104983/1000000 | 6143/20000 | 104983/1000000 | 6143/20000 |
| b | 25977/250000 | 15761/31250 | 25977/250000 | 15761/31250 |
| c | 135501/250000 | 765833/1000000 | 135501/250000 | 765833/1000000 |
| e | 20997/200000 | 391/1000 | 20997/200000 | 391/1000 |
| f | 279/1000 | 116873/200000 | 279/1000 | 116873/200000 |
| h | 797833/1000000 | 1 | 797833/1000000 | 1 |
| p | 13023/100000 | 231363/500000 | 13023/100000 | 231363/500000 |
| q | 63529/250000 | 64169/100000 | 63529/250000 | 64169/100000 |
| u | 12469/40000 | 631279/1000000 | 12469/40000 | 631279/1000000 |
| v | 142957/500000 | 430019/1000000 | 142957/500000 | 430019/1000000 |
| r | 774119/1000000 | 1 | 774119/1000000 | 1 |
| w | 276783/500000 | 843727/1000000 | 276783/500000 | 843727/1000000 |
| j | 110897/200000 | 13658/15625 | 110897/200000 | 13658/15625 |
| k | 160833/200000 | 1 | 160833/200000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"48:919","triangle":"APR","value":"1962/15625"}` | `-1 * p * w + 1 * a * p + 1 * q * r + -1 * a * r + -1962/15625` |
| 1 | physical | `{"factor":0,"stage":48}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 2 | physical | `{"factor":10,"stage":48}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 3 | physical | `{"factor":120,"stage":48}` | `-1/1 * f * k + -1/1 * h * j + 1/1 * f * h + 1/1 * j + -93/1000` |
| 4 | physical | `{"factor":126,"stage":48}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 5 | physical | `{"factor":133,"stage":48}` | `-1/1 * u * w + 1/1 * q * u + 1/1 * p * w + 1/1 * v * r + -1/1 * p * v + -1/1 * q * r + -93/1000` |
| 6 | physical | `{"factor":65,"stage":48}` | `1/1 * f * q + -1/1 * b * q + -1/1 * p + 1/1 * b + -93/1000` |
| 7 | physical | `{"factor":77,"stage":48}` | `1/1 * u * k + -1/1 * b * k + -1/1 * v * j + 1/1 * b * v + -93/1000` |
| 8 | physical | `{"factor":92,"stage":48}` | `1/1 * c * v + 1/1 * h * u + -1/1 * c * h + -93/1000` |
| 9 | coordinate | `{"box":590,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 10 | coordinate | `{"box":590,"direction":"hi","value":"15761/31250","variable":"b"}` | `15761/31250 + -1 * b` |
| 11 | coordinate | `{"box":590,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 12 | coordinate | `{"box":590,"direction":"hi","value":"843727/1000000","variable":"w"}` | `843727/1000000 + -1 * w` |
| 13 | coordinate | `{"box":590,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 14 | coordinate | `{"box":590,"direction":"hi","value":"765833/1000000","variable":"c"}` | `765833/1000000 + -1 * c` |
| 15 | coordinate | `{"box":590,"direction":"hi","value":"116873/200000","variable":"f"}` | `116873/200000 + -1 * f` |
| 16 | coordinate | `{"box":590,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 17 | coordinate | `{"box":590,"direction":"hi","value":"231363/500000","variable":"p"}` | `231363/500000 + -1 * p` |
| 18 | coordinate | `{"box":590,"direction":"hi","value":"64169/100000","variable":"q"}` | `64169/100000 + -1 * q` |
| 19 | coordinate | `{"box":590,"direction":"hi","value":"631279/1000000","variable":"u"}` | `631279/1000000 + -1 * u` |
| 20 | coordinate | `{"box":590,"direction":"hi","value":"430019/1000000","variable":"v"}` | `430019/1000000 + -1 * v` |
| 21 | coordinate | `{"box":590,"direction":"lo","value":"104983/1000000","variable":"a"}` | `-104983/1000000 + 1 * a` |
| 22 | coordinate | `{"box":590,"direction":"lo","value":"25977/250000","variable":"b"}` | `-25977/250000 + 1 * b` |
| 23 | coordinate | `{"box":590,"direction":"lo","value":"774119/1000000","variable":"r"}` | `-774119/1000000 + 1 * r` |
| 24 | coordinate | `{"box":590,"direction":"lo","value":"276783/500000","variable":"w"}` | `-276783/500000 + 1 * w` |
| 25 | coordinate | `{"box":590,"direction":"lo","value":"110897/200000","variable":"j"}` | `-110897/200000 + 1 * j` |
| 26 | coordinate | `{"box":590,"direction":"lo","value":"160833/200000","variable":"k"}` | `-160833/200000 + 1 * k` |
| 27 | coordinate | `{"box":590,"direction":"lo","value":"135501/250000","variable":"c"}` | `-135501/250000 + 1 * c` |
| 28 | coordinate | `{"box":590,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 29 | coordinate | `{"box":590,"direction":"lo","value":"797833/1000000","variable":"h"}` | `-797833/1000000 + 1 * h` |
| 30 | coordinate | `{"box":590,"direction":"lo","value":"13023/100000","variable":"p"}` | `-13023/100000 + 1 * p` |
| 31 | coordinate | `{"box":590,"direction":"lo","value":"63529/250000","variable":"q"}` | `-63529/250000 + 1 * q` |
| 32 | coordinate | `{"box":590,"direction":"lo","value":"12469/40000","variable":"u"}` | `-12469/40000 + 1 * u` |
| 33 | coordinate | `{"box":590,"direction":"lo","value":"142957/500000","variable":"v"}` | `-142957/500000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 23708000000 | 1 |
| 1 | 11670000000 | 2 |
| 2 | 24850000000 | 0 |
| 3 | 11670000000 | 6 |
| 4 | 21265000000 | 7 |
| 5 | 6767000000 | 8 |
| 6 | 9294000000 | 3 |
| 7 | 2434000000 | 4 |
| 8 | 94705000000 | 5 |
| 9 | 35379000000 | 21, 22 |
| 10 | 23708000000 | 14, 21 |
| 11 | 36520000000 | 9, 30 |
| 12 | 21265000000 | 20, 22 |
| 13 | 24850000000 | 21, 23 |
| 14 | 21265000000 | 22, 26 |
| 15 | 6767000000 | 27, 29 |
| 16 | 6767000000 | 20, 27 |
| 17 | 9294000000 | 15, 29 |
| 18 | 2434000000 | 15, 24 |
| 19 | 11728000000 | 13, 15 |
| 20 | 4007000000 | 19, 29 |
| 21 | 2760000000 | 16, 32 |
| 22 | 9294000000 | 25, 29 |
| 23 | 94705000000 | 17, 20 |
| 24 | 91770000000 | 19, 31 |
| 25 | 2935000000 | 18, 32 |
| 26 | 8646000000 | 12, 30 |
| 27 | 61209000000 | 17, 24 |
| 28 | 18541000000 | 23, 31 |
| 29 | 51314000000 | 11, 18 |
| 30 | 94705000000 | 24, 32 |
| 31 | 94705000000 | 20, 23 |
| 32 | 21265000000 | 13, 32 |
| 33 | 21265000000 | 25, 33 |
| 34 | 2434000000 | 11, 26 |
| 35 | 2434000000 | 24, 25 |
| 36 | 11670000000 | 15, 31 |
| 37 | 1000000 | 9, 22 |
| 38 | 103908 | 9 |
| 39 | 307150 | 10 |
| 40 | 253541 | 17 |
| 41 | 408247 | 22 |
| 42 | 3114400756 | 25 |
| 43 | 214039 | 11 |
| 44 | 649918 | 21 |
| 45 | 60374 | 27 |
| 46 | 23576695228 | 20 |
| 47 | 204215 | 26 |
| 48 | 140395 | 29 |
| 49 | 26734 | 28 |
| 50 | 223891 | 24 |
| 51 | 34271 | 19 |
| 52 | 14124 | 31 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -5311491346988387/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -5311491346988387/1000000 | 1 | -5311491346988387/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 590 | -5311491346988387/1000000 |

## Stage 591

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS+/BFP+/AQR-/EPQ-/PQR-/APQ- |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS+/BFP+/AQR-/EPQ-/PQR-/APQ-:LLHHHH |
| Index | 0 |
| Context | 34 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 589 |
| Coordinate cut | v high 430019/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 104983/1000000 | 6143/20000 | 104983/1000000 | 6143/20000 |
| b | 25977/250000 | 15761/31250 | 25977/250000 | 15761/31250 |
| c | 135501/250000 | 765833/1000000 | 135501/250000 | 765833/1000000 |
| e | 20997/200000 | 391/1000 | 20997/200000 | 391/1000 |
| f | 279/1000 | 116873/200000 | 279/1000 | 116873/200000 |
| h | 797833/1000000 | 1 | 797833/1000000 | 1 |
| p | 13023/100000 | 231363/500000 | 13023/100000 | 231363/500000 |
| q | 63529/250000 | 64169/100000 | 63529/250000 | 64169/100000 |
| u | 12469/40000 | 631279/1000000 | 12469/40000 | 631279/1000000 |
| v | 430019/1000000 | 17929/25000 | 430019/1000000 | 17929/25000 |
| r | 774119/1000000 | 1 | 774119/1000000 | 1 |
| w | 276783/500000 | 843727/1000000 | 276783/500000 | 843727/1000000 |
| j | 110897/200000 | 13658/15625 | 110897/200000 | 13658/15625 |
| k | 160833/200000 | 1 | 160833/200000 | 1 |

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


## Stage 592

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS+/BFP+/AQR-/EPQ-/PQR-/APQ- |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS+/BFP+/AQR-/EPQ-/PQR-/APQ-:LLHHHHL |
| Index | 0 |
| Context | 34 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 591 |
| Coordinate cut | b low 148943/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 104983/1000000 | 6143/20000 | 104983/1000000 | 6143/20000 |
| b | 25977/250000 | 148943/500000 | 25977/250000 | 148943/500000 |
| c | 135501/250000 | 765833/1000000 | 135501/250000 | 765833/1000000 |
| e | 20997/200000 | 391/1000 | 20997/200000 | 391/1000 |
| f | 279/1000 | 116873/200000 | 279/1000 | 116873/200000 |
| h | 797833/1000000 | 1 | 797833/1000000 | 1 |
| p | 13023/100000 | 231363/500000 | 13023/100000 | 231363/500000 |
| q | 63529/250000 | 64169/100000 | 63529/250000 | 64169/100000 |
| u | 12469/40000 | 631279/1000000 | 12469/40000 | 631279/1000000 |
| v | 430019/1000000 | 17929/25000 | 430019/1000000 | 17929/25000 |
| r | 774119/1000000 | 1 | 774119/1000000 | 1 |
| w | 276783/500000 | 843727/1000000 | 276783/500000 | 843727/1000000 |
| j | 110897/200000 | 13658/15625 | 110897/200000 | 13658/15625 |
| k | 160833/200000 | 1 | 160833/200000 | 1 |

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


## Stage 593

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS+/BFP+/AQR-/EPQ-/PQR-/APQ- |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS+/BFP+/AQR-/EPQ-/PQR-/APQ-:LLHHHHLL |
| Index | 0 |
| Context | 34 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 592 |
| Coordinate cut | q low 122297/250000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 104983/1000000 | 6143/20000 | 104983/1000000 | 6143/20000 |
| b | 25977/250000 | 148943/500000 | 25977/250000 | 148943/500000 |
| c | 135501/250000 | 765833/1000000 | 135501/250000 | 765833/1000000 |
| e | 20997/200000 | 391/1000 | 20997/200000 | 391/1000 |
| f | 279/1000 | 116873/200000 | 279/1000 | 116873/200000 |
| h | 797833/1000000 | 1 | 797833/1000000 | 1 |
| p | 13023/100000 | 231363/500000 | 13023/100000 | 231363/500000 |
| q | 63529/250000 | 122297/250000 | 63529/250000 | 122297/250000 |
| u | 12469/40000 | 631279/1000000 | 12469/40000 | 631279/1000000 |
| v | 430019/1000000 | 17929/25000 | 430019/1000000 | 17929/25000 |
| r | 774119/1000000 | 1 | 774119/1000000 | 1 |
| w | 276783/500000 | 843727/1000000 | 276783/500000 | 843727/1000000 |
| j | 110897/200000 | 13658/15625 | 110897/200000 | 13658/15625 |
| k | 160833/200000 | 1 | 160833/200000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"48:977","triangle":"QRS","value":"131459/1000000"}` | `1 * r * k + -1 * v * r + -1 * u * k + -1 * w * j + 1 * u * w + 1 * v * j + -131459/1000000` |
| 1 | physical | `{"factor":0,"stage":48}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 2 | physical | `{"factor":10,"stage":48}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 3 | physical | `{"factor":108,"stage":48}` | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -93/1000` |
| 4 | physical | `{"factor":116,"stage":48}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 5 | physical | `{"factor":120,"stage":48}` | `-1/1 * f * k + -1/1 * h * j + 1/1 * f * h + 1/1 * j + -93/1000` |
| 6 | physical | `{"factor":126,"stage":48}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 7 | physical | `{"factor":133,"stage":48}` | `-1/1 * u * w + 1/1 * q * u + 1/1 * p * w + 1/1 * v * r + -1/1 * p * v + -1/1 * q * r + -93/1000` |
| 8 | physical | `{"factor":40,"stage":48}` | `-1/1 * p * v + 1/1 * a * p + 1/1 * q * u + -1/1 * a * u + -93/1000` |
| 9 | physical | `{"factor":65,"stage":48}` | `1/1 * f * q + -1/1 * b * q + -1/1 * p + 1/1 * b + -93/1000` |
| 10 | physical | `{"factor":77,"stage":48}` | `1/1 * u * k + -1/1 * b * k + -1/1 * v * j + 1/1 * b * v + -93/1000` |
| 11 | physical | `{"factor":88,"stage":48}` | `1/1 * f * v + -1/1 * c * v + -1/1 * u + 1/1 * c + -93/1000` |
| 12 | coordinate | `{"box":593,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 13 | coordinate | `{"box":593,"direction":"hi","value":"148943/500000","variable":"b"}` | `148943/500000 + -1 * b` |
| 14 | coordinate | `{"box":593,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 15 | coordinate | `{"box":593,"direction":"hi","value":"843727/1000000","variable":"w"}` | `843727/1000000 + -1 * w` |
| 16 | coordinate | `{"box":593,"direction":"hi","value":"13658/15625","variable":"j"}` | `13658/15625 + -1 * j` |
| 17 | coordinate | `{"box":593,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 18 | coordinate | `{"box":593,"direction":"hi","value":"765833/1000000","variable":"c"}` | `765833/1000000 + -1 * c` |
| 19 | coordinate | `{"box":593,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 20 | coordinate | `{"box":593,"direction":"hi","value":"116873/200000","variable":"f"}` | `116873/200000 + -1 * f` |
| 21 | coordinate | `{"box":593,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 22 | coordinate | `{"box":593,"direction":"hi","value":"231363/500000","variable":"p"}` | `231363/500000 + -1 * p` |
| 23 | coordinate | `{"box":593,"direction":"hi","value":"122297/250000","variable":"q"}` | `122297/250000 + -1 * q` |
| 24 | coordinate | `{"box":593,"direction":"hi","value":"631279/1000000","variable":"u"}` | `631279/1000000 + -1 * u` |
| 25 | coordinate | `{"box":593,"direction":"hi","value":"17929/25000","variable":"v"}` | `17929/25000 + -1 * v` |
| 26 | coordinate | `{"box":593,"direction":"lo","value":"104983/1000000","variable":"a"}` | `-104983/1000000 + 1 * a` |
| 27 | coordinate | `{"box":593,"direction":"lo","value":"25977/250000","variable":"b"}` | `-25977/250000 + 1 * b` |
| 28 | coordinate | `{"box":593,"direction":"lo","value":"276783/500000","variable":"w"}` | `-276783/500000 + 1 * w` |
| 29 | coordinate | `{"box":593,"direction":"lo","value":"110897/200000","variable":"j"}` | `-110897/200000 + 1 * j` |
| 30 | coordinate | `{"box":593,"direction":"lo","value":"160833/200000","variable":"k"}` | `-160833/200000 + 1 * k` |
| 31 | coordinate | `{"box":593,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 32 | coordinate | `{"box":593,"direction":"lo","value":"797833/1000000","variable":"h"}` | `-797833/1000000 + 1 * h` |
| 33 | coordinate | `{"box":593,"direction":"lo","value":"13023/100000","variable":"p"}` | `-13023/100000 + 1 * p` |
| 34 | coordinate | `{"box":593,"direction":"lo","value":"63529/250000","variable":"q"}` | `-63529/250000 + 1 * q` |
| 35 | coordinate | `{"box":593,"direction":"lo","value":"12469/40000","variable":"u"}` | `-12469/40000 + 1 * u` |
| 36 | coordinate | `{"box":593,"direction":"lo","value":"430019/1000000","variable":"v"}` | `-430019/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 325000000 | 1 |
| 1 | 38640000000 | 2 |
| 2 | 6789000000 | 8 |
| 3 | 17074000000 | 9 |
| 4 | 41287000000 | 10 |
| 5 | 23654000000 | 11 |
| 6 | 3579000000 | 3 |
| 7 | 2504000000 | 4 |
| 8 | 39622000000 | 5 |
| 9 | 27262000000 | 6 |
| 10 | 30620000000 | 7 |
| 11 | 16347000000 | 0 |
| 12 | 38965000000 | 26, 27 |
| 13 | 325000000 | 18, 26 |
| 14 | 21567000000 | 23, 27 |
| 15 | 45429000000 | 12, 33 |
| 16 | 41287000000 | 13, 36 |
| 17 | 6789000000 | 26, 35 |
| 18 | 41287000000 | 13, 17 |
| 19 | 23654000000 | 18, 25 |
| 20 | 3579000000 | 19, 35 |
| 21 | 2504000000 | 14, 19 |
| 22 | 2504000000 | 19, 29 |
| 23 | 8198000000 | 21, 31 |
| 24 | 31424000000 | 20, 32 |
| 25 | 23654000000 | 20, 36 |
| 26 | 27262000000 | 20, 28 |
| 27 | 66884000000 | 17, 20 |
| 28 | 3579000000 | 21, 24 |
| 29 | 39622000000 | 29, 32 |
| 30 | 37409000000 | 33, 36 |
| 31 | 37409000000 | 24, 34 |
| 32 | 7776000000 | 15, 33 |
| 33 | 22844000000 | 22, 28 |
| 34 | 30620000000 | 14, 23 |
| 35 | 14273000000 | 28, 35 |
| 36 | 14273000000 | 14, 36 |
| 37 | 24941000000 | 17, 35 |
| 38 | 24941000000 | 29, 36 |
| 39 | 46113000000 | 14, 30 |
| 40 | 46113000000 | 28, 29 |
| 41 | 17074000000 | 23, 31 |
| 42 | 1000000 | 27, 34 |
| 43 | 254116 | 27 |
| 44 | 103908 | 34 |
| 45 | 580565 | 33 |
| 46 | 849454 | 13 |
| 47 | 1000000 | 30, 35 |
| 48 | 966826 | 35 |
| 49 | 311725 | 30 |
| 50 | 1000000 | 25, 29 |
| 51 | 554485 | 25 |
| 52 | 717160 | 16 |
| 53 | 6724416835 | 18 |
| 54 | 809245 | 36 |
| 55 | 175549 | 21 |
| 56 | 245283 | 17 |
| 57 | 77876 | 28 |
| 58 | 367963 | 29 |
| 59 | 121272 | 14 |
| 60 | 38150 | 12 |
| 61 | 145947 | 23 |
| 62 | 94215 | 19 |
| 63 | 485822 | 20 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -2812280674427/100000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -2812280674427/100000 | 1 | -2812280674427/100000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 593 | -2812280674427/100000 |

## Stage 594

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS+/BFP+/AQR-/EPQ-/PQR-/APQ- |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS+/BFP+/AQR-/EPQ-/PQR-/APQ-:LLHHHHLH |
| Index | 0 |
| Context | 34 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 592 |
| Coordinate cut | q high 122297/250000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 104983/1000000 | 6143/20000 | 104983/1000000 | 6143/20000 |
| b | 25977/250000 | 148943/500000 | 25977/250000 | 148943/500000 |
| c | 135501/250000 | 765833/1000000 | 135501/250000 | 765833/1000000 |
| e | 20997/200000 | 391/1000 | 20997/200000 | 391/1000 |
| f | 279/1000 | 116873/200000 | 279/1000 | 116873/200000 |
| h | 797833/1000000 | 1 | 797833/1000000 | 1 |
| p | 13023/100000 | 231363/500000 | 13023/100000 | 231363/500000 |
| q | 122297/250000 | 64169/100000 | 122297/250000 | 64169/100000 |
| u | 12469/40000 | 631279/1000000 | 12469/40000 | 631279/1000000 |
| v | 430019/1000000 | 17929/25000 | 430019/1000000 | 17929/25000 |
| r | 774119/1000000 | 1 | 774119/1000000 | 1 |
| w | 276783/500000 | 843727/1000000 | 276783/500000 | 843727/1000000 |
| j | 110897/200000 | 13658/15625 | 110897/200000 | 13658/15625 |
| k | 160833/200000 | 1 | 160833/200000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"48:975","triangle":"FPQ","value":"15487/125000"}` | `1 * p * v + -1 * p + -1 * f * v + -1 * q * u + 1 * f * q + 1 * u + -15487/125000` |
| 1 | bound | `{"direction":"lo","ref":"48:977","triangle":"QRS","value":"131459/1000000"}` | `1 * r * k + -1 * v * r + -1 * u * k + -1 * w * j + 1 * u * w + 1 * v * j + -131459/1000000` |
| 2 | physical | `{"factor":10,"stage":48}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 3 | physical | `{"factor":108,"stage":48}` | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -93/1000` |
| 4 | physical | `{"factor":116,"stage":48}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 5 | physical | `{"factor":120,"stage":48}` | `-1/1 * f * k + -1/1 * h * j + 1/1 * f * h + 1/1 * j + -93/1000` |
| 6 | physical | `{"factor":126,"stage":48}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 7 | physical | `{"factor":133,"stage":48}` | `-1/1 * u * w + 1/1 * q * u + 1/1 * p * w + 1/1 * v * r + -1/1 * p * v + -1/1 * q * r + -93/1000` |
| 8 | physical | `{"factor":38,"stage":48}` | `1/1 * h * r + -1/1 * a * r + -13857/20000` |
| 9 | physical | `{"factor":65,"stage":48}` | `1/1 * f * q + -1/1 * b * q + -1/1 * p + 1/1 * b + -93/1000` |
| 10 | physical | `{"factor":77,"stage":48}` | `1/1 * u * k + -1/1 * b * k + -1/1 * v * j + 1/1 * b * v + -93/1000` |
| 11 | physical | `{"factor":84,"stage":48}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 12 | physical | `{"factor":88,"stage":48}` | `1/1 * f * v + -1/1 * c * v + -1/1 * u + 1/1 * c + -93/1000` |
| 13 | coordinate | `{"box":594,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 14 | coordinate | `{"box":594,"direction":"hi","value":"148943/500000","variable":"b"}` | `148943/500000 + -1 * b` |
| 15 | coordinate | `{"box":594,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 16 | coordinate | `{"box":594,"direction":"hi","value":"843727/1000000","variable":"w"}` | `843727/1000000 + -1 * w` |
| 17 | coordinate | `{"box":594,"direction":"hi","value":"13658/15625","variable":"j"}` | `13658/15625 + -1 * j` |
| 18 | coordinate | `{"box":594,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 19 | coordinate | `{"box":594,"direction":"hi","value":"765833/1000000","variable":"c"}` | `765833/1000000 + -1 * c` |
| 20 | coordinate | `{"box":594,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 21 | coordinate | `{"box":594,"direction":"hi","value":"116873/200000","variable":"f"}` | `116873/200000 + -1 * f` |
| 22 | coordinate | `{"box":594,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 23 | coordinate | `{"box":594,"direction":"hi","value":"231363/500000","variable":"p"}` | `231363/500000 + -1 * p` |
| 24 | coordinate | `{"box":594,"direction":"hi","value":"631279/1000000","variable":"u"}` | `631279/1000000 + -1 * u` |
| 25 | coordinate | `{"box":594,"direction":"hi","value":"17929/25000","variable":"v"}` | `17929/25000 + -1 * v` |
| 26 | coordinate | `{"box":594,"direction":"lo","value":"104983/1000000","variable":"a"}` | `-104983/1000000 + 1 * a` |
| 27 | coordinate | `{"box":594,"direction":"lo","value":"25977/250000","variable":"b"}` | `-25977/250000 + 1 * b` |
| 28 | coordinate | `{"box":594,"direction":"lo","value":"774119/1000000","variable":"r"}` | `-774119/1000000 + 1 * r` |
| 29 | coordinate | `{"box":594,"direction":"lo","value":"276783/500000","variable":"w"}` | `-276783/500000 + 1 * w` |
| 30 | coordinate | `{"box":594,"direction":"lo","value":"110897/200000","variable":"j"}` | `-110897/200000 + 1 * j` |
| 31 | coordinate | `{"box":594,"direction":"lo","value":"160833/200000","variable":"k"}` | `-160833/200000 + 1 * k` |
| 32 | coordinate | `{"box":594,"direction":"lo","value":"20997/200000","variable":"e"}` | `-20997/200000 + 1 * e` |
| 33 | coordinate | `{"box":594,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 34 | coordinate | `{"box":594,"direction":"lo","value":"797833/1000000","variable":"h"}` | `-797833/1000000 + 1 * h` |
| 35 | coordinate | `{"box":594,"direction":"lo","value":"13023/100000","variable":"p"}` | `-13023/100000 + 1 * p` |
| 36 | coordinate | `{"box":594,"direction":"lo","value":"122297/250000","variable":"q"}` | `-122297/250000 + 1 * q` |
| 37 | coordinate | `{"box":594,"direction":"lo","value":"12469/40000","variable":"u"}` | `-12469/40000 + 1 * u` |
| 38 | coordinate | `{"box":594,"direction":"lo","value":"430019/1000000","variable":"v"}` | `-430019/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 3151000000 | 2 |
| 1 | 83000000 | 8 |
| 2 | 3151000000 | 9 |
| 3 | 32411000000 | 10 |
| 4 | 7184000000 | 11 |
| 5 | 23244000000 | 12 |
| 6 | 14007000000 | 3 |
| 7 | 6025000000 | 4 |
| 8 | 46862000000 | 5 |
| 9 | 23244000000 | 0 |
| 10 | 17560000000 | 6 |
| 11 | 59817000000 | 7 |
| 12 | 19397000000 | 1 |
| 13 | 3151000000 | 26, 27 |
| 14 | 3151000000 | 13, 35 |
| 15 | 32411000000 | 25, 27 |
| 16 | 83000000 | 13, 15 |
| 17 | 32411000000 | 27, 31 |
| 18 | 7184000000 | 19, 32 |
| 19 | 23244000000 | 19, 25 |
| 20 | 7184000000 | 16, 19 |
| 21 | 14007000000 | 20, 37 |
| 22 | 13209000000 | 15, 20 |
| 23 | 6025000000 | 20, 30 |
| 24 | 21771000000 | 22, 33 |
| 25 | 25091000000 | 21, 34 |
| 26 | 17560000000 | 21, 29 |
| 27 | 64422000000 | 18, 21 |
| 28 | 14007000000 | 22, 24 |
| 29 | 83000000 | 15, 34 |
| 30 | 46862000000 | 30, 34 |
| 31 | 36573000000 | 35, 38 |
| 32 | 36573000000 | 24, 36 |
| 33 | 27714000000 | 16, 35 |
| 34 | 32103000000 | 23, 29 |
| 35 | 59817000000 | 28, 36 |
| 36 | 40420000000 | 29, 37 |
| 37 | 40420000000 | 15, 38 |
| 38 | 13015000000 | 18, 37 |
| 39 | 13015000000 | 30, 38 |
| 40 | 42982000000 | 15, 31 |
| 41 | 42982000000 | 29, 30 |
| 42 | 26395000000 | 21, 36 |
| 43 | 75861 | 35 |
| 44 | 279512 | 14 |
| 45 | 1000000 | 31, 37 |
| 46 | 804165 | 37 |
| 47 | 311725 | 31 |
| 48 | 1000000 | 25, 30 |
| 49 | 770356 | 25 |
| 50 | 717160 | 17 |
| 51 | 6644 | 29 |
| 52 | 672004 | 24 |
| 53 | 1267210432 | 19 |
| 54 | 189808 | 34 |
| 55 | 376657 | 18 |
| 56 | 346143 | 30 |
| 57 | 237103 | 15 |
| 58 | 59378 | 26 |
| 59 | 151528 | 32 |
| 60 | 164023 | 21 |
| 61 | 7793395181 | 36 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -3405533502746623/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -3405533502746623/1000000 | 1 | -3405533502746623/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 594 | -3405533502746623/1000000 |
