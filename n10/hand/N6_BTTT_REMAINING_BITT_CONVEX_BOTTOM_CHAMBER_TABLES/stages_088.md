# BITT convex: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 440

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS+/BFP+/AQR+/EPQ-/APS-/BQR- |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS+/BFP+/AQR+/EPQ-/APS-/BQR-:HLHLHHHLL |
| Index | 0 |
| Context | 25 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 439 |
| Coordinate cut | v low 1781/5000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 389389/1000000 | 103767/1000000 | 389389/1000000 |
| c | 135501/250000 | 1 | 135501/250000 | 1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 279/1000 | 58493/100000 | 279/1000 | 58493/100000 |
| h | 796617/1000000 | 1 | 796617/1000000 | 1 |
| p | 130177/1000000 | 463061/1000000 | 130177/1000000 | 463061/1000000 |
| q | 72279/200000 | 641723/1000000 | 72279/200000 | 641723/1000000 |
| u | 334113/1000000 | 1138349/2000000 | 334113/1000000 | 1138349/2000000 |
| v | 249033/1000000 | 1781/5000 | 249033/1000000 | 1781/5000 |
| r | 354517/500000 | 1 | 354517/500000 | 1 |
| w | 290083/500000 | 168759/200000 | 290083/500000 | 168759/200000 |
| j | 558873/1000000 | 874369/1000000 | 558873/1000000 | 874369/1000000 |
| k | 803941/1000000 | 1 | 803941/1000000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"36:1140","triangle":"ABR","value":"310411/1000000"}` | `1 * b * w + -1 * a * b + 1 * a * r + -310411/1000000` |
| 1 | physical | `{"factor":112,"stage":36}` | `-1/1 * p * v + 1/1 * e * p + 1/1 * v + 1/1 * q * u + -1/1 * q + -1/1 * e * u + -93/1000` |
| 2 | physical | `{"factor":139,"stage":36}` | `1/1 * e + -1/1 * a` |
| 3 | physical | `{"factor":42,"stage":36}` | `-1/1 * p * k + 1/1 * a * p + 1/1 * q * j + -1/1 * a * j + -93/1000` |
| 4 | physical | `{"factor":70,"stage":36}` | `1/1 * b * q + 1/1 * h * p + -1/1 * b * h + -93/1000` |
| 5 | physical | `{"factor":77,"stage":36}` | `-1/1 * u * w + 1/1 * b * w + 1/1 * v * r + -1/1 * b * v + -93/1000` |
| 6 | physical | `{"factor":78,"stage":36}` | `1/1 * u * k + -1/1 * b * k + -1/1 * v * j + 1/1 * b * v + -93/1000` |
| 7 | coordinate | `{"box":440,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 8 | coordinate | `{"box":440,"direction":"hi","value":"389389/1000000","variable":"b"}` | `389389/1000000 + -1 * b` |
| 9 | coordinate | `{"box":440,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 10 | coordinate | `{"box":440,"direction":"hi","value":"168759/200000","variable":"w"}` | `168759/200000 + -1 * w` |
| 11 | coordinate | `{"box":440,"direction":"hi","value":"874369/1000000","variable":"j"}` | `874369/1000000 + -1 * j` |
| 12 | coordinate | `{"box":440,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 13 | coordinate | `{"box":440,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 14 | coordinate | `{"box":440,"direction":"hi","value":"463061/1000000","variable":"p"}` | `463061/1000000 + -1 * p` |
| 15 | coordinate | `{"box":440,"direction":"hi","value":"641723/1000000","variable":"q"}` | `641723/1000000 + -1 * q` |
| 16 | coordinate | `{"box":440,"direction":"hi","value":"1138349/2000000","variable":"u"}` | `1138349/2000000 + -1 * u` |
| 17 | coordinate | `{"box":440,"direction":"hi","value":"1781/5000","variable":"v"}` | `1781/5000 + -1 * v` |
| 18 | coordinate | `{"box":440,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 19 | coordinate | `{"box":440,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 20 | coordinate | `{"box":440,"direction":"lo","value":"354517/500000","variable":"r"}` | `-354517/500000 + 1 * r` |
| 21 | coordinate | `{"box":440,"direction":"lo","value":"290083/500000","variable":"w"}` | `-290083/500000 + 1 * w` |
| 22 | coordinate | `{"box":440,"direction":"lo","value":"558873/1000000","variable":"j"}` | `-558873/1000000 + 1 * j` |
| 23 | coordinate | `{"box":440,"direction":"lo","value":"803941/1000000","variable":"k"}` | `-803941/1000000 + 1 * k` |
| 24 | coordinate | `{"box":440,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 25 | coordinate | `{"box":440,"direction":"lo","value":"796617/1000000","variable":"h"}` | `-796617/1000000 + 1 * h` |
| 26 | coordinate | `{"box":440,"direction":"lo","value":"130177/1000000","variable":"p"}` | `-130177/1000000 + 1 * p` |
| 27 | coordinate | `{"box":440,"direction":"lo","value":"72279/200000","variable":"q"}` | `-72279/200000 + 1 * q` |
| 28 | coordinate | `{"box":440,"direction":"lo","value":"334113/1000000","variable":"u"}` | `-334113/1000000 + 1 * u` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 54404000000 | 0 |
| 1 | 60646000000 | 3 |
| 2 | 85590000000 | 4 |
| 3 | 16962000000 | 5 |
| 4 | 16962000000 | 6 |
| 5 | 200440000000 | 1 |
| 6 | 15860000000 | 2 |
| 7 | 54404000000 | 18, 19 |
| 8 | 77676000000 | 19, 25 |
| 9 | 7914000000 | 8, 13 |
| 10 | 85590000000 | 8, 27 |
| 11 | 23922000000 | 14, 18 |
| 12 | 36724000000 | 7, 26 |
| 13 | 63492000000 | 10, 19 |
| 14 | 7874000000 | 8, 21 |
| 15 | 54404000000 | 9, 18 |
| 16 | 16962000000 | 19, 23 |
| 17 | 13534000000 | 18, 22 |
| 18 | 47112000000 | 7, 11 |
| 19 | 200440000000 | 14, 24 |
| 20 | 23014000000 | 24, 28 |
| 21 | 177426000000 | 12, 16 |
| 22 | 85590000000 | 13, 26 |
| 23 | 200440000000 | 14, 17 |
| 24 | 200440000000 | 16, 27 |
| 25 | 60646000000 | 23, 26 |
| 26 | 60646000000 | 11, 27 |
| 27 | 16962000000 | 10, 16 |
| 28 | 16962000000 | 16, 23 |
| 29 | 16962000000 | 11, 17 |
| 30 | 16962000000 | 17, 20 |
| 31 | 104819640890 | 17 |
| 32 | 11687204268 | 9 |
| 33 | 123664 | 15 |
| 34 | 668226 | 24 |
| 35 | 207534 | 28 |
| 36 | 983647 | 12 |
| 37 | 433988 | 18 |
| 38 | 448072 | 8 |
| 39 | 19392 | 13 |
| 40 | 1385632 | 26 |
| 41 | 85481 | 10 |
| 42 | 472327 | 23 |
| 43 | 463392 | 11 |
| 44 | 558048 | 16 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -378449878905807/62500 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -378449878905807/62500 | 1 | -378449878905807/62500 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 440 | -378449878905807/62500 |

## Stage 441

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS+/BFP+/AQR+/EPQ-/APS-/BQR- |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS+/BFP+/AQR+/EPQ-/APS-/BQR-:HLHLHHHLH |
| Index | 0 |
| Context | 25 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 439 |
| Coordinate cut | v high 1781/5000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 389389/1000000 | 103767/1000000 | 389389/1000000 |
| c | 135501/250000 | 1 | 135501/250000 | 1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 279/1000 | 58493/100000 | 279/1000 | 58493/100000 |
| h | 796617/1000000 | 1 | 796617/1000000 | 1 |
| p | 130177/1000000 | 463061/1000000 | 130177/1000000 | 463061/1000000 |
| q | 72279/200000 | 641723/1000000 | 72279/200000 | 641723/1000000 |
| u | 334113/1000000 | 1138349/2000000 | 334113/1000000 | 1138349/2000000 |
| v | 1781/5000 | 29007/50000 | 1781/5000 | 29007/50000 |
| r | 354517/500000 | 1 | 354517/500000 | 1 |
| w | 290083/500000 | 168759/200000 | 290083/500000 | 168759/200000 |
| j | 558873/1000000 | 874369/1000000 | 558873/1000000 | 874369/1000000 |
| k | 803941/1000000 | 1 | 803941/1000000 | 1 |

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


## Stage 442

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS+/BFP+/AQR+/EPQ-/APS-/BQR- |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS+/BFP+/AQR+/EPQ-/APS-/BQR-:HLHLHHHLHL |
| Index | 0 |
| Context | 25 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 441 |
| Coordinate cut | c low 42421/62500 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 389389/1000000 | 103767/1000000 | 389389/1000000 |
| c | 135501/250000 | 42421/62500 | 135501/250000 | 42421/62500 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 279/1000 | 58493/100000 | 279/1000 | 58493/100000 |
| h | 796617/1000000 | 1 | 796617/1000000 | 1 |
| p | 130177/1000000 | 463061/1000000 | 130177/1000000 | 463061/1000000 |
| q | 72279/200000 | 641723/1000000 | 72279/200000 | 641723/1000000 |
| u | 334113/1000000 | 1138349/2000000 | 334113/1000000 | 1138349/2000000 |
| v | 1781/5000 | 29007/50000 | 1781/5000 | 29007/50000 |
| r | 354517/500000 | 1 | 354517/500000 | 1 |
| w | 290083/500000 | 168759/200000 | 290083/500000 | 168759/200000 |
| j | 558873/1000000 | 874369/1000000 | 558873/1000000 | 874369/1000000 |
| k | 803941/1000000 | 1 | 803941/1000000 | 1 |

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
| 0 | physical | `{"factor":112,"stage":36}` | `-1/1 * p * v + 1/1 * e * p + 1/1 * v + 1/1 * q * u + -1/1 * q + -1/1 * e * u + -93/1000` |
| 1 | physical | `{"factor":121,"stage":36}` | `-1/1 * f * k + -1/1 * h * j + 1/1 * f * h + 1/1 * j + -93/1000` |
| 2 | physical | `{"factor":127,"stage":36}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 3 | physical | `{"factor":139,"stage":36}` | `1/1 * e + -1/1 * a` |
| 4 | physical | `{"factor":163,"stage":36}` | `1/1 * c * h * p + -1/1 * b * h * p + -93/1000 * c + -93/1000 * b` |
| 5 | physical | `{"factor":26,"stage":36}` | `1/1 * h + -1/1 * a + -13857/20000` |
| 6 | physical | `{"factor":42,"stage":36}` | `-1/1 * p * k + 1/1 * a * p + 1/1 * q * j + -1/1 * a * j + -93/1000` |
| 7 | physical | `{"factor":43,"stage":36}` | `1/1 * u * w + -1/1 * a * u + -1/1 * v * r + 1/1 * a * r + -93/1000` |
| 8 | physical | `{"factor":77,"stage":36}` | `-1/1 * u * w + 1/1 * b * w + 1/1 * v * r + -1/1 * b * v + -93/1000` |
| 9 | physical | `{"factor":78,"stage":36}` | `1/1 * u * k + -1/1 * b * k + -1/1 * v * j + 1/1 * b * v + -93/1000` |
| 10 | physical | `{"factor":89,"stage":36}` | `1/1 * f * v + -1/1 * c * v + -1/1 * u + 1/1 * c + -93/1000` |
| 11 | coordinate | `{"box":442,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 12 | coordinate | `{"box":442,"direction":"hi","value":"389389/1000000","variable":"b"}` | `389389/1000000 + -1 * b` |
| 13 | coordinate | `{"box":442,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 14 | coordinate | `{"box":442,"direction":"hi","value":"168759/200000","variable":"w"}` | `168759/200000 + -1 * w` |
| 15 | coordinate | `{"box":442,"direction":"hi","value":"874369/1000000","variable":"j"}` | `874369/1000000 + -1 * j` |
| 16 | coordinate | `{"box":442,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 17 | coordinate | `{"box":442,"direction":"hi","value":"42421/62500","variable":"c"}` | `42421/62500 + -1 * c` |
| 18 | coordinate | `{"box":442,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 19 | coordinate | `{"box":442,"direction":"hi","value":"58493/100000","variable":"f"}` | `58493/100000 + -1 * f` |
| 20 | coordinate | `{"box":442,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 21 | coordinate | `{"box":442,"direction":"hi","value":"463061/1000000","variable":"p"}` | `463061/1000000 + -1 * p` |
| 22 | coordinate | `{"box":442,"direction":"hi","value":"1138349/2000000","variable":"u"}` | `1138349/2000000 + -1 * u` |
| 23 | coordinate | `{"box":442,"direction":"hi","value":"29007/50000","variable":"v"}` | `29007/50000 + -1 * v` |
| 24 | coordinate | `{"box":442,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 25 | coordinate | `{"box":442,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 26 | coordinate | `{"box":442,"direction":"lo","value":"354517/500000","variable":"r"}` | `-354517/500000 + 1 * r` |
| 27 | coordinate | `{"box":442,"direction":"lo","value":"290083/500000","variable":"w"}` | `-290083/500000 + 1 * w` |
| 28 | coordinate | `{"box":442,"direction":"lo","value":"558873/1000000","variable":"j"}` | `-558873/1000000 + 1 * j` |
| 29 | coordinate | `{"box":442,"direction":"lo","value":"803941/1000000","variable":"k"}` | `-803941/1000000 + 1 * k` |
| 30 | coordinate | `{"box":442,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 31 | coordinate | `{"box":442,"direction":"lo","value":"796617/1000000","variable":"h"}` | `-796617/1000000 + 1 * h` |
| 32 | coordinate | `{"box":442,"direction":"lo","value":"130177/1000000","variable":"p"}` | `-130177/1000000 + 1 * p` |
| 33 | coordinate | `{"box":442,"direction":"lo","value":"72279/200000","variable":"q"}` | `-72279/200000 + 1 * q` |
| 34 | coordinate | `{"box":442,"direction":"lo","value":"1781/5000","variable":"v"}` | `-1781/5000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 961500000000000 | 5 |
| 1 | 8328000000000000 | 6 |
| 2 | 27742000000000000 | 7 |
| 3 | 25548500000000000 | 8 |
| 4 | 19951000000000000 | 9 |
| 5 | 8290500000000000 | 10 |
| 6 | 16902000000000000 | 0 |
| 7 | 14080500000000000 | 1 |
| 8 | 8193000000000000 | 2 |
| 9 | 7420000000000000 | 3 |
| 10 | 6173000000000000 | 4 |
| 11 | 8328000000000000 | 11, 32 |
| 12 | 5597500000000000 | 25, 34 |
| 13 | 27742000000000000 | 11, 22 |
| 14 | 25548500000000000 | 14, 25 |
| 15 | 27742000000000000 | 13, 24 |
| 16 | 8167000000000000 | 25, 29 |
| 17 | 11784000000000000 | 12, 16 |
| 18 | 8328000000000000 | 24, 28 |
| 19 | 803582621000000 | 17, 31 |
| 20 | 8290500000000000 | 17, 23 |
| 21 | 16902000000000000 | 18, 32 |
| 22 | 16902000000000000 | 18, 22 |
| 23 | 5853000000000000 | 20, 30 |
| 24 | 8227500000000000 | 19, 31 |
| 25 | 8290500000000000 | 19, 34 |
| 26 | 8193000000000000 | 14, 30 |
| 27 | 22273000000000000 | 16, 19 |
| 28 | 14080500000000000 | 28, 31 |
| 29 | 16902000000000000 | 32, 34 |
| 30 | 16902000000000000 | 22, 33 |
| 31 | 8328000000000000 | 29, 32 |
| 32 | 8328000000000000 | 15, 33 |
| 33 | 2193500000000000 | 22, 27 |
| 34 | 2193500000000000 | 13, 23 |
| 35 | 19951000000000000 | 22, 29 |
| 36 | 19951000000000000 | 28, 34 |
| 37 | 8193000000000000 | 13, 29 |
| 38 | 3101000000000000 | 27, 28 |
| 39 | 5092000000000000 | 14, 15 |
| 40 | 6173000000000000 | 17, 31, 32 |
| 41 | 4917516741000000 | 17, 32 |
| 42 | 3549449912000000 | 20, 32 |
| 43 | 6173000000000000 | 25, 31, 32 |
| 44 | 803582621000000 | 25, 31 |
| 45 | 4917516741000000 | 25, 32 |
| 46 | 354498680675 | 31 |
| 47 | 280733000000 | 11 |
| 48 | 182002000000 | 22 |
| 49 | 3546907906793157 | 17 |
| 50 | 361302500000 | 34 |
| 51 | 67569000000 | 33 |
| 52 | 500000000000 | 29, 30 |
| 53 | 401970500000 | 30 |
| 54 | 139500000000 | 29 |
| 55 | 15209500000 | 15 |
| 56 | 144363000000 | 26 |
| 57 | 64255000000 | 18 |
| 58 | 176893194424 | 20 |
| 59 | 364064000000 | 21 |
| 60 | 155666293157 | 25 |
| 61 | 70344250000 | 14 |
| 62 | 315438500000 | 16 |
| 63 | 454902500000 | 19 |
| 64 | 166275000000 | 31, 32 |
| 65 | 132457491675 | 32 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -10987659735983181059/40000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -10987659735983181059/40000 | 1 | -10987659735983181059/40000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 442 | -10987659735983181059/40000 |

## Stage 443

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS+/BFP+/AQR+/EPQ-/APS-/BQR- |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS+/BFP+/AQR+/EPQ-/APS-/BQR-:HLHLHHHLHH |
| Index | 0 |
| Context | 25 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 441 |
| Coordinate cut | c high 42421/62500 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 389389/1000000 | 103767/1000000 | 389389/1000000 |
| c | 42421/62500 | 1 | 42421/62500 | 1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 279/1000 | 58493/100000 | 279/1000 | 58493/100000 |
| h | 796617/1000000 | 1 | 796617/1000000 | 1 |
| p | 130177/1000000 | 463061/1000000 | 130177/1000000 | 463061/1000000 |
| q | 72279/200000 | 641723/1000000 | 72279/200000 | 641723/1000000 |
| u | 334113/1000000 | 1138349/2000000 | 334113/1000000 | 1138349/2000000 |
| v | 1781/5000 | 29007/50000 | 1781/5000 | 29007/50000 |
| r | 354517/500000 | 1 | 354517/500000 | 1 |
| w | 290083/500000 | 168759/200000 | 290083/500000 | 168759/200000 |
| j | 558873/1000000 | 874369/1000000 | 558873/1000000 | 874369/1000000 |
| k | 803941/1000000 | 1 | 803941/1000000 | 1 |

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


## Stage 444

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS+/BFP+/AQR+/EPQ-/APS-/BQR- |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS+/BFP+/AQR+/EPQ-/APS-/BQR-:HLHLHHHLHHL |
| Index | 0 |
| Context | 25 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 443 |
| Coordinate cut | q low 102769/200000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 389389/1000000 | 103767/1000000 | 389389/1000000 |
| c | 42421/62500 | 1 | 42421/62500 | 1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 279/1000 | 58493/100000 | 279/1000 | 58493/100000 |
| h | 796617/1000000 | 1 | 796617/1000000 | 1 |
| p | 130177/1000000 | 463061/1000000 | 130177/1000000 | 463061/1000000 |
| q | 72279/200000 | 102769/200000 | 72279/200000 | 102769/200000 |
| u | 334113/1000000 | 1138349/2000000 | 334113/1000000 | 1138349/2000000 |
| v | 1781/5000 | 29007/50000 | 1781/5000 | 29007/50000 |
| r | 354517/500000 | 1 | 354517/500000 | 1 |
| w | 290083/500000 | 168759/200000 | 290083/500000 | 168759/200000 |
| j | 558873/1000000 | 874369/1000000 | 558873/1000000 | 874369/1000000 |
| k | 803941/1000000 | 1 | 803941/1000000 | 1 |

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
| 0 | physical | `{"factor":109,"stage":36}` | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -93/1000` |
| 1 | physical | `{"factor":112,"stage":36}` | `-1/1 * p * v + 1/1 * e * p + 1/1 * v + 1/1 * q * u + -1/1 * q + -1/1 * e * u + -93/1000` |
| 2 | physical | `{"factor":121,"stage":36}` | `-1/1 * f * k + -1/1 * h * j + 1/1 * f * h + 1/1 * j + -93/1000` |
| 3 | physical | `{"factor":127,"stage":36}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 4 | physical | `{"factor":139,"stage":36}` | `1/1 * e + -1/1 * a` |
| 5 | physical | `{"factor":42,"stage":36}` | `-1/1 * p * k + 1/1 * a * p + 1/1 * q * j + -1/1 * a * j + -93/1000` |
| 6 | physical | `{"factor":43,"stage":36}` | `1/1 * u * w + -1/1 * a * u + -1/1 * v * r + 1/1 * a * r + -93/1000` |
| 7 | physical | `{"factor":66,"stage":36}` | `1/1 * f * q + -1/1 * b * q + -1/1 * p + 1/1 * b + -93/1000` |
| 8 | physical | `{"factor":70,"stage":36}` | `1/1 * b * q + 1/1 * h * p + -1/1 * b * h + -93/1000` |
| 9 | physical | `{"factor":77,"stage":36}` | `-1/1 * u * w + 1/1 * b * w + 1/1 * v * r + -1/1 * b * v + -93/1000` |
| 10 | physical | `{"factor":78,"stage":36}` | `1/1 * u * k + -1/1 * b * k + -1/1 * v * j + 1/1 * b * v + -93/1000` |
| 11 | coordinate | `{"box":444,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 12 | coordinate | `{"box":444,"direction":"hi","value":"389389/1000000","variable":"b"}` | `389389/1000000 + -1 * b` |
| 13 | coordinate | `{"box":444,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 14 | coordinate | `{"box":444,"direction":"hi","value":"168759/200000","variable":"w"}` | `168759/200000 + -1 * w` |
| 15 | coordinate | `{"box":444,"direction":"hi","value":"874369/1000000","variable":"j"}` | `874369/1000000 + -1 * j` |
| 16 | coordinate | `{"box":444,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 17 | coordinate | `{"box":444,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 18 | coordinate | `{"box":444,"direction":"hi","value":"58493/100000","variable":"f"}` | `58493/100000 + -1 * f` |
| 19 | coordinate | `{"box":444,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 20 | coordinate | `{"box":444,"direction":"hi","value":"463061/1000000","variable":"p"}` | `463061/1000000 + -1 * p` |
| 21 | coordinate | `{"box":444,"direction":"hi","value":"102769/200000","variable":"q"}` | `102769/200000 + -1 * q` |
| 22 | coordinate | `{"box":444,"direction":"hi","value":"1138349/2000000","variable":"u"}` | `1138349/2000000 + -1 * u` |
| 23 | coordinate | `{"box":444,"direction":"hi","value":"29007/50000","variable":"v"}` | `29007/50000 + -1 * v` |
| 24 | coordinate | `{"box":444,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 25 | coordinate | `{"box":444,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 26 | coordinate | `{"box":444,"direction":"lo","value":"354517/500000","variable":"r"}` | `-354517/500000 + 1 * r` |
| 27 | coordinate | `{"box":444,"direction":"lo","value":"290083/500000","variable":"w"}` | `-290083/500000 + 1 * w` |
| 28 | coordinate | `{"box":444,"direction":"lo","value":"558873/1000000","variable":"j"}` | `-558873/1000000 + 1 * j` |
| 29 | coordinate | `{"box":444,"direction":"lo","value":"803941/1000000","variable":"k"}` | `-803941/1000000 + 1 * k` |
| 30 | coordinate | `{"box":444,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 31 | coordinate | `{"box":444,"direction":"lo","value":"796617/1000000","variable":"h"}` | `-796617/1000000 + 1 * h` |
| 32 | coordinate | `{"box":444,"direction":"lo","value":"130177/1000000","variable":"p"}` | `-130177/1000000 + 1 * p` |
| 33 | coordinate | `{"box":444,"direction":"lo","value":"72279/200000","variable":"q"}` | `-72279/200000 + 1 * q` |
| 34 | coordinate | `{"box":444,"direction":"lo","value":"334113/1000000","variable":"u"}` | `-334113/1000000 + 1 * u` |
| 35 | coordinate | `{"box":444,"direction":"lo","value":"1781/5000","variable":"v"}` | `-1781/5000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 53654000000 | 5 |
| 1 | 105412000000 | 6 |
| 2 | 6074000000 | 7 |
| 3 | 29326000000 | 8 |
| 4 | 95408000000 | 9 |
| 5 | 63966000000 | 10 |
| 6 | 36052000000 | 0 |
| 7 | 97798000000 | 1 |
| 8 | 28892000000 | 2 |
| 9 | 26192000000 | 3 |
| 10 | 22414000000 | 4 |
| 11 | 29326000000 | 25, 31 |
| 12 | 23252000000 | 21, 25 |
| 13 | 53654000000 | 11, 32 |
| 14 | 31442000000 | 25, 35 |
| 15 | 105412000000 | 11, 22 |
| 16 | 95408000000 | 14, 25 |
| 17 | 105412000000 | 13, 24 |
| 18 | 63966000000 | 12, 16 |
| 19 | 53654000000 | 24, 28 |
| 20 | 97798000000 | 17, 32 |
| 21 | 61746000000 | 17, 22 |
| 22 | 28892000000 | 19, 30 |
| 23 | 26192000000 | 14, 30 |
| 24 | 4946000000 | 29, 30 |
| 25 | 50138000000 | 16, 18 |
| 26 | 29326000000 | 19, 32 |
| 27 | 36052000000 | 19, 22 |
| 28 | 2838000000 | 28, 31 |
| 29 | 26056000000 | 15, 19 |
| 30 | 97798000000 | 32, 35 |
| 31 | 97798000000 | 22, 33 |
| 32 | 53654000000 | 29, 32 |
| 33 | 25488000000 | 15, 33 |
| 34 | 28166000000 | 21, 28 |
| 35 | 10004000000 | 22, 27 |
| 36 | 10002000000 | 13, 23 |
| 37 | 63966000000 | 22, 29 |
| 38 | 63966000000 | 28, 35 |
| 39 | 26192000000 | 13, 29 |
| 40 | 26192000000 | 14, 15 |
| 41 | 6074000000 | 21, 30 |
| 42 | 1160332 | 22 |
| 43 | 1138349 | 14 |
| 44 | 2000000 | 26, 35 |
| 45 | 1418068 | 35 |
| 46 | 712400 | 26 |
| 47 | 546086 | 20 |
| 48 | 513242 | 25 |
| 49 | 1437422 | 23 |
| 50 | 1151652 | 31 |
| 51 | 698025 | 21 |
| 52 | 2000000 | 19, 28 |
| 53 | 1117746 | 19 |
| 54 | 2000000 | 15 |
| 55 | 1487474 | 28 |
| 56 | 549396 | 13 |
| 57 | 801569 | 17 |
| 58 | 1077578 | 24 |
| 59 | 563252 | 34 |
| 60 | 819563 | 27 |
| 61 | 488195 | 16 |
| 62 | 519016 | 30 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -73240782828753/500000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -73240782828753/500000 | 1 | -73240782828753/500000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 444 | -73240782828753/500000 |
