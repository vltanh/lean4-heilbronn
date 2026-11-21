# BITT convex: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 595

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS+/BFP+/AQR-/EPQ-/PQR-/APQ- |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS+/BFP+/AQR-/EPQ-/PQR-/APQ-:LLHHHHH |
| Index | 0 |
| Context | 34 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 591 |
| Coordinate cut | b high 148943/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 104983/1000000 | 6143/20000 | 104983/1000000 | 6143/20000 |
| b | 148943/500000 | 15761/31250 | 148943/500000 | 15761/31250 |
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


### Coordinate certificate sources

| Source | Kind | Source witness | Polynomial |
| --- | --- | --- | --- |
| 0 | bound | `{"direction":"lo","ref":"48:919","triangle":"APR","value":"1962/15625"}` | `-1 * p * w + 1 * a * p + 1 * q * r + -1 * a * r + -1962/15625` |
| 1 | bound | `{"direction":"lo","ref":"48:920","triangle":"AQR","value":"29607/250000"}` | `-1 * u * w + 1 * a * u + 1 * v * r + -1 * a * r + -29607/250000` |
| 2 | physical | `{"factor":0,"stage":48}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 3 | physical | `{"factor":120,"stage":48}` | `-1/1 * f * k + -1/1 * h * j + 1/1 * f * h + 1/1 * j + -93/1000` |
| 4 | physical | `{"factor":126,"stage":48}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 5 | physical | `{"factor":133,"stage":48}` | `-1/1 * u * w + 1/1 * q * u + 1/1 * p * w + 1/1 * v * r + -1/1 * p * v + -1/1 * q * r + -93/1000` |
| 6 | physical | `{"factor":38,"stage":48}` | `1/1 * h * r + -1/1 * a * r + -13857/20000` |
| 7 | physical | `{"factor":77,"stage":48}` | `1/1 * u * k + -1/1 * b * k + -1/1 * v * j + 1/1 * b * v + -93/1000` |
| 8 | physical | `{"factor":88,"stage":48}` | `1/1 * f * v + -1/1 * c * v + -1/1 * u + 1/1 * c + -93/1000` |
| 9 | coordinate | `{"box":595,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 10 | coordinate | `{"box":595,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 11 | coordinate | `{"box":595,"direction":"hi","value":"13658/15625","variable":"j"}` | `13658/15625 + -1 * j` |
| 12 | coordinate | `{"box":595,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 13 | coordinate | `{"box":595,"direction":"hi","value":"765833/1000000","variable":"c"}` | `765833/1000000 + -1 * c` |
| 14 | coordinate | `{"box":595,"direction":"hi","value":"116873/200000","variable":"f"}` | `116873/200000 + -1 * f` |
| 15 | coordinate | `{"box":595,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 16 | coordinate | `{"box":595,"direction":"hi","value":"231363/500000","variable":"p"}` | `231363/500000 + -1 * p` |
| 17 | coordinate | `{"box":595,"direction":"hi","value":"64169/100000","variable":"q"}` | `64169/100000 + -1 * q` |
| 18 | coordinate | `{"box":595,"direction":"hi","value":"631279/1000000","variable":"u"}` | `631279/1000000 + -1 * u` |
| 19 | coordinate | `{"box":595,"direction":"hi","value":"17929/25000","variable":"v"}` | `17929/25000 + -1 * v` |
| 20 | coordinate | `{"box":595,"direction":"lo","value":"104983/1000000","variable":"a"}` | `-104983/1000000 + 1 * a` |
| 21 | coordinate | `{"box":595,"direction":"lo","value":"148943/500000","variable":"b"}` | `-148943/500000 + 1 * b` |
| 22 | coordinate | `{"box":595,"direction":"lo","value":"774119/1000000","variable":"r"}` | `-774119/1000000 + 1 * r` |
| 23 | coordinate | `{"box":595,"direction":"lo","value":"276783/500000","variable":"w"}` | `-276783/500000 + 1 * w` |
| 24 | coordinate | `{"box":595,"direction":"lo","value":"110897/200000","variable":"j"}` | `-110897/200000 + 1 * j` |
| 25 | coordinate | `{"box":595,"direction":"lo","value":"160833/200000","variable":"k"}` | `-160833/200000 + 1 * k` |
| 26 | coordinate | `{"box":595,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 27 | coordinate | `{"box":595,"direction":"lo","value":"797833/1000000","variable":"h"}` | `-797833/1000000 + 1 * h` |
| 28 | coordinate | `{"box":595,"direction":"lo","value":"13023/100000","variable":"p"}` | `-13023/100000 + 1 * p` |
| 29 | coordinate | `{"box":595,"direction":"lo","value":"63529/250000","variable":"q"}` | `-63529/250000 + 1 * q` |
| 30 | coordinate | `{"box":595,"direction":"lo","value":"12469/40000","variable":"u"}` | `-12469/40000 + 1 * u` |
| 31 | coordinate | `{"box":595,"direction":"lo","value":"430019/1000000","variable":"v"}` | `-430019/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 25800000000 | 2 |
| 1 | 4823000000 | 6 |
| 2 | 8511000000 | 0 |
| 3 | 2952000000 | 1 |
| 4 | 55978000000 | 7 |
| 5 | 47742000000 | 8 |
| 6 | 17609000000 | 3 |
| 7 | 45946000000 | 4 |
| 8 | 23082000000 | 5 |
| 9 | 25800000000 | 20, 21 |
| 10 | 25800000000 | 13, 20 |
| 11 | 3732000000 | 16, 20 |
| 12 | 4779000000 | 9, 28 |
| 13 | 55978000000 | 19, 21 |
| 14 | 2952000000 | 18, 20 |
| 15 | 16286000000 | 9, 10 |
| 16 | 55978000000 | 21, 25 |
| 17 | 47742000000 | 13, 19 |
| 18 | 17518000000 | 15, 26 |
| 19 | 91000000 | 14, 27 |
| 20 | 47742000000 | 14, 31 |
| 21 | 45946000000 | 14, 23 |
| 22 | 63555000000 | 12, 14 |
| 23 | 4823000000 | 10, 27 |
| 24 | 17609000000 | 24, 27 |
| 25 | 23082000000 | 28, 31 |
| 26 | 23082000000 | 18, 29 |
| 27 | 14571000000 | 16, 23 |
| 28 | 14571000000 | 10, 17 |
| 29 | 26034000000 | 23, 30 |
| 30 | 26034000000 | 10, 31 |
| 31 | 55978000000 | 12, 30 |
| 32 | 55978000000 | 24, 31 |
| 33 | 42419000000 | 12, 22 |
| 34 | 3527000000 | 10, 25 |
| 35 | 45946000000 | 23, 24 |
| 36 | 121916 | 30 |
| 37 | 16211908680 | 13 |
| 38 | 797833 | 14 |
| 39 | 584365 | 15 |
| 40 | 211685 | 11 |
| 41 | 43270 | 10 |
| 42 | 169190 | 20 |
| 43 | 7578927290 | 21 |
| 44 | 21966 | 28 |
| 45 | 487062 | 19 |
| 46 | 284172 | 25 |
| 47 | 811515 | 27 |
| 48 | 1084496 | 26 |
| 49 | 201624 | 23 |
| 50 | 181878 | 17 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -1871149230029899/500000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -1871149230029899/500000 | 1 | -1871149230029899/500000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 595 | -1871149230029899/500000 |

## Stage 596

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS+/BFP+/AQR-/EPQ-/PQR-/APQ- |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS+/BFP+/AQR-/EPQ-/PQR-/APQ-:LH |
| Index | 0 |
| Context | 34 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 546 |
| Coordinate cut | u high 631279/1000000 |

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
| u | 631279/1000000 | 780839/1000000 | 631279/1000000 | 780839/1000000 |
| v | 142957/500000 | 17929/25000 | 142957/500000 | 17929/25000 |
| r | 774119/1000000 | 1 | 774119/1000000 | 1 |
| w | 52681/200000 | 843727/1000000 | 52681/200000 | 843727/1000000 |
| j | 16519/40000 | 13658/15625 | 16519/40000 | 13658/15625 |
| k | 311071/500000 | 1 | 311071/500000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"48:756","triangle":"EQR","value":"11841/125000"}` | `-1 * u * w + 1 * e * u + 1 * w + 1 * v * r + -1 * v + -1 * e * r + -11841/125000` |
| 1 | bound | `{"direction":"lo","ref":"48:919","triangle":"APR","value":"1962/15625"}` | `-1 * p * w + 1 * a * p + 1 * q * r + -1 * a * r + -1962/15625` |
| 2 | bound | `{"direction":"lo","ref":"48:920","triangle":"AQR","value":"29607/250000"}` | `-1 * u * w + 1 * a * u + 1 * v * r + -1 * a * r + -29607/250000` |
| 3 | bound | `{"direction":"lo","ref":"48:954","triangle":"CEQ","value":"13233/100000"}` | `1 * v + -1 * c * v + -1 * e * u + 1 * c * e + -13233/100000` |
| 4 | physical | `{"factor":0,"stage":48}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 5 | physical | `{"factor":10,"stage":48}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 6 | physical | `{"factor":133,"stage":48}` | `-1/1 * u * w + 1/1 * q * u + 1/1 * p * w + 1/1 * v * r + -1/1 * p * v + -1/1 * q * r + -93/1000` |
| 7 | physical | `{"factor":84,"stage":48}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 8 | physical | `{"factor":88,"stage":48}` | `1/1 * f * v + -1/1 * c * v + -1/1 * u + 1/1 * c + -93/1000` |
| 9 | coordinate | `{"box":596,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 10 | coordinate | `{"box":596,"direction":"hi","value":"15761/31250","variable":"b"}` | `15761/31250 + -1 * b` |
| 11 | coordinate | `{"box":596,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 12 | coordinate | `{"box":596,"direction":"hi","value":"843727/1000000","variable":"w"}` | `843727/1000000 + -1 * w` |
| 13 | coordinate | `{"box":596,"direction":"hi","value":"765833/1000000","variable":"c"}` | `765833/1000000 + -1 * c` |
| 14 | coordinate | `{"box":596,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 15 | coordinate | `{"box":596,"direction":"hi","value":"116873/200000","variable":"f"}` | `116873/200000 + -1 * f` |
| 16 | coordinate | `{"box":596,"direction":"hi","value":"231363/500000","variable":"p"}` | `231363/500000 + -1 * p` |
| 17 | coordinate | `{"box":596,"direction":"hi","value":"64169/100000","variable":"q"}` | `64169/100000 + -1 * q` |
| 18 | coordinate | `{"box":596,"direction":"hi","value":"17929/25000","variable":"v"}` | `17929/25000 + -1 * v` |
| 19 | coordinate | `{"box":596,"direction":"lo","value":"104983/1000000","variable":"a"}` | `-104983/1000000 + 1 * a` |
| 20 | coordinate | `{"box":596,"direction":"lo","value":"25977/250000","variable":"b"}` | `-25977/250000 + 1 * b` |
| 21 | coordinate | `{"box":596,"direction":"lo","value":"774119/1000000","variable":"r"}` | `-774119/1000000 + 1 * r` |
| 22 | coordinate | `{"box":596,"direction":"lo","value":"52681/200000","variable":"w"}` | `-52681/200000 + 1 * w` |
| 23 | coordinate | `{"box":596,"direction":"lo","value":"135501/250000","variable":"c"}` | `-135501/250000 + 1 * c` |
| 24 | coordinate | `{"box":596,"direction":"lo","value":"20997/200000","variable":"e"}` | `-20997/200000 + 1 * e` |
| 25 | coordinate | `{"box":596,"direction":"lo","value":"13023/100000","variable":"p"}` | `-13023/100000 + 1 * p` |
| 26 | coordinate | `{"box":596,"direction":"lo","value":"63529/250000","variable":"q"}` | `-63529/250000 + 1 * q` |
| 27 | coordinate | `{"box":596,"direction":"lo","value":"631279/1000000","variable":"u"}` | `-631279/1000000 + 1 * u` |
| 28 | coordinate | `{"box":596,"direction":"lo","value":"142957/500000","variable":"v"}` | `-142957/500000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 4607000000 | 4 |
| 1 | 1268000000 | 5 |
| 2 | 429000000 | 1 |
| 3 | 25643000000 | 2 |
| 4 | 14820000000 | 3 |
| 5 | 55115000000 | 7 |
| 6 | 174319000000 | 8 |
| 7 | 10763000000 | 0 |
| 8 | 2897000000 | 6 |
| 9 | 5875000000 | 19, 20 |
| 10 | 4607000000 | 13, 19 |
| 11 | 1268000000 | 10, 26 |
| 12 | 1697000000 | 16, 19 |
| 13 | 25643000000 | 9, 27 |
| 14 | 26072000000 | 19, 21 |
| 15 | 69935000000 | 13, 24 |
| 16 | 189139000000 | 13, 18 |
| 17 | 55115000000 | 12, 13 |
| 18 | 4057000000 | 24, 27 |
| 19 | 65878000000 | 21, 24 |
| 20 | 174319000000 | 15, 28 |
| 21 | 2897000000 | 25, 28 |
| 22 | 2897000000 | 17, 27 |
| 23 | 2469000000 | 16, 22 |
| 24 | 2469000000 | 11, 17 |
| 25 | 39303000000 | 22, 27 |
| 26 | 39303000000 | 11, 28 |
| 27 | 291964018 | 19 |
| 28 | 294556037 | 20 |
| 29 | 1000000 | 22, 25 |
| 30 | 263405 | 25 |
| 31 | 130230 | 22 |
| 32 | 1000000 | 17, 21 |
| 33 | 774119 | 17 |
| 34 | 641690 | 11 |
| 35 | 241662 | 28 |
| 36 | 426162 | 12 |
| 37 | 175362307480 | 27 |
| 38 | 156189 | 23 |
| 39 | 666401 | 26 |
| 40 | 210238 | 16 |
| 41 | 373274 | 21 |
| 42 | 20470 | 14 |
| 43 | 49840242566 | 15 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -1476795340556621/200000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -1476795340556621/200000 | 1 | -1476795340556621/200000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 596 | -1476795340556621/200000 |

## Stage 597

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS+/BFP+/AQR-/EPQ-/PQR-/APQ- |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS+/BFP+/AQR-/EPQ-/PQR-/APQ-:H |
| Index | 0 |
| Context | 34 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 545 |
| Coordinate cut | c high 765833/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 104983/1000000 | 6143/20000 | 104983/1000000 | 6143/20000 |
| b | 25977/250000 | 15761/31250 | 25977/250000 | 15761/31250 |
| c | 765833/1000000 | 494831/500000 | 765833/1000000 | 494831/500000 |
| e | 20997/200000 | 391/1000 | 20997/200000 | 391/1000 |
| f | 279/1000 | 116873/200000 | 279/1000 | 116873/200000 |
| h | 797833/1000000 | 1 | 797833/1000000 | 1 |
| p | 13023/100000 | 231363/500000 | 13023/100000 | 231363/500000 |
| q | 63529/250000 | 64169/100000 | 63529/250000 | 64169/100000 |
| u | 12469/40000 | 780839/1000000 | 12469/40000 | 780839/1000000 |
| v | 142957/500000 | 17929/25000 | 142957/500000 | 17929/25000 |
| r | 774119/1000000 | 1 | 774119/1000000 | 1 |
| w | 52681/200000 | 843727/1000000 | 52681/200000 | 843727/1000000 |
| j | 16519/40000 | 13658/15625 | 16519/40000 | 13658/15625 |
| k | 311071/500000 | 1 | 311071/500000 | 1 |

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


## Stage 598

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS+/BFP+/AQR-/EPQ-/PQR-/APQ- |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS+/BFP+/AQR-/EPQ-/PQR-/APQ-:HL |
| Index | 0 |
| Context | 34 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 597 |
| Coordinate cut | u low 680489/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 104983/1000000 | 6143/20000 | 104983/1000000 | 6143/20000 |
| b | 25977/250000 | 15761/31250 | 25977/250000 | 15761/31250 |
| c | 765833/1000000 | 494831/500000 | 765833/1000000 | 494831/500000 |
| e | 20997/200000 | 391/1000 | 20997/200000 | 391/1000 |
| f | 279/1000 | 116873/200000 | 279/1000 | 116873/200000 |
| h | 797833/1000000 | 1 | 797833/1000000 | 1 |
| p | 13023/100000 | 231363/500000 | 13023/100000 | 231363/500000 |
| q | 63529/250000 | 64169/100000 | 63529/250000 | 64169/100000 |
| u | 12469/40000 | 680489/1000000 | 12469/40000 | 680489/1000000 |
| v | 142957/500000 | 17929/25000 | 142957/500000 | 17929/25000 |
| r | 774119/1000000 | 1 | 774119/1000000 | 1 |
| w | 52681/200000 | 843727/1000000 | 52681/200000 | 843727/1000000 |
| j | 16519/40000 | 13658/15625 | 16519/40000 | 13658/15625 |
| k | 311071/500000 | 1 | 311071/500000 | 1 |

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


## Stage 599

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS+/BFP+/AQR-/EPQ-/PQR-/APQ- |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS+/BFP+/AQR-/EPQ-/PQR-/APQ-:HLL |
| Index | 0 |
| Context | 34 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 598 |
| Coordinate cut | w low 276783/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 104983/1000000 | 6143/20000 | 104983/1000000 | 6143/20000 |
| b | 25977/250000 | 15761/31250 | 25977/250000 | 15761/31250 |
| c | 765833/1000000 | 494831/500000 | 765833/1000000 | 494831/500000 |
| e | 20997/200000 | 391/1000 | 20997/200000 | 391/1000 |
| f | 279/1000 | 116873/200000 | 279/1000 | 116873/200000 |
| h | 797833/1000000 | 1 | 797833/1000000 | 1 |
| p | 13023/100000 | 231363/500000 | 13023/100000 | 231363/500000 |
| q | 63529/250000 | 64169/100000 | 63529/250000 | 64169/100000 |
| u | 12469/40000 | 680489/1000000 | 12469/40000 | 680489/1000000 |
| v | 142957/500000 | 17929/25000 | 142957/500000 | 17929/25000 |
| r | 774119/1000000 | 1 | 774119/1000000 | 1 |
| w | 52681/200000 | 276783/500000 | 52681/200000 | 276783/500000 |
| j | 16519/40000 | 13658/15625 | 16519/40000 | 13658/15625 |
| k | 311071/500000 | 1 | 311071/500000 | 1 |

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
