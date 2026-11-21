# BITT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 1570

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS-/HQS-/CRS+/HQR+/BFQ+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS-/HQS-/CRS+/HQR+/BFQ+:HHLLLLHLLL |
| Index | 0 |
| Context | 308 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1569 |
| Coordinate cut | f low 495903/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 52343/500000 | 6143/20000 | 52343/500000 | 6143/20000 |
| b | 3649/15625 | 31423/62500 | 3649/15625 | 31423/62500 |
| c | 348569/500000 | 1 | 348569/500000 | 1 |
| e | 20941/200000 | 6143/20000 | 20941/200000 | 6143/20000 |
| f | 279/1000 | 495903/1000000 | 279/1000 | 495903/1000000 |
| h | 135501/250000 | 27411/31250 | 135501/250000 | 27411/31250 |
| p | 80721/200000 | 113779/200000 | 80721/200000 | 113779/200000 |
| q | 98843/500000 | 1631/4000 | 98843/500000 | 1631/4000 |
| u | 45019/200000 | 216869/500000 | 45019/200000 | 216869/500000 |
| v | 535141/1000000 | 384913/500000 | 535141/1000000 | 384913/500000 |
| r | 91293/125000 | 1 | 91293/125000 | 1 |
| w | 159511/200000 | 1 | 159511/200000 | 1 |
| j | 638473/1000000 | 111821/125000 | 638473/1000000 | 111821/125000 |
| k | 364609/1000000 | 170653/250000 | 364609/1000000 | 170653/250000 |

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
| 0 | bound | `{"direction":"lo","ref":"522:1572","triangle":"BCP","value":"133823/1000000"}` | `1 * c * q + -1 * b * q + -133823/1000000` |
| 1 | physical | `{"factor":106,"stage":522}` | `-1/1 * f * k + 1/1 * e * f + 1/1 * k + 1/1 * j + -1093/1000 + -1/1 * e * j` |
| 2 | physical | `{"factor":121,"stage":522}` | `-1/1 * p * v + 1/1 * p + 1/1 * f * v + 1/1 * q * u + -1/1 * f * q + -1/1 * u + -93/1000` |
| 3 | physical | `{"factor":131,"stage":522}` | `-1/1 * u * k + 1/1 * h * u + 1/1 * v * j + -1/1 * h * j + -93/1000` |
| 4 | physical | `{"factor":138,"stage":522}` | `1/1 * e + -1/1 * a` |
| 5 | physical | `{"factor":140,"stage":522}` | `1/1 * f + -1/1 * b` |
| 6 | physical | `{"factor":28,"stage":522}` | `1/1 * q + -1/1 * a + -1/1 * e * p + 1/1 * a * p + -93/1000` |
| 7 | physical | `{"factor":36,"stage":522}` | `-1/1 * f * v + 1/1 * a * f + 1/1 * u + -1/1 * a * u + -93/1000` |
| 8 | physical | `{"factor":66,"stage":522}` | `1/1 * f * v + -1/1 * b * v + -1/1 * u + 1/1 * b + -93/1000` |
| 9 | physical | `{"factor":73,"stage":522}` | `1/1 * p * v + -1/1 * b * v + -1/1 * q * u + 1/1 * b * q + -93/1000` |
| 10 | physical | `{"factor":84,"stage":522}` | `1/1 * k + -1/1 * c * k + -1/1 * e * j + 1/1 * c * e + -93/1000` |
| 11 | physical | `{"factor":90,"stage":522}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 12 | coordinate | `{"box":1570,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 13 | coordinate | `{"box":1570,"direction":"hi","value":"31423/62500","variable":"b"}` | `31423/62500 + -1 * b` |
| 14 | coordinate | `{"box":1570,"direction":"hi","value":"111821/125000","variable":"j"}` | `111821/125000 + -1 * j` |
| 15 | coordinate | `{"box":1570,"direction":"hi","value":"170653/250000","variable":"k"}` | `170653/250000 + -1 * k` |
| 16 | coordinate | `{"box":1570,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 17 | coordinate | `{"box":1570,"direction":"hi","value":"6143/20000","variable":"e"}` | `6143/20000 + -1 * e` |
| 18 | coordinate | `{"box":1570,"direction":"hi","value":"495903/1000000","variable":"f"}` | `495903/1000000 + -1 * f` |
| 19 | coordinate | `{"box":1570,"direction":"hi","value":"27411/31250","variable":"h"}` | `27411/31250 + -1 * h` |
| 20 | coordinate | `{"box":1570,"direction":"hi","value":"113779/200000","variable":"p"}` | `113779/200000 + -1 * p` |
| 21 | coordinate | `{"box":1570,"direction":"hi","value":"1631/4000","variable":"q"}` | `1631/4000 + -1 * q` |
| 22 | coordinate | `{"box":1570,"direction":"hi","value":"216869/500000","variable":"u"}` | `216869/500000 + -1 * u` |
| 23 | coordinate | `{"box":1570,"direction":"hi","value":"384913/500000","variable":"v"}` | `384913/500000 + -1 * v` |
| 24 | coordinate | `{"box":1570,"direction":"lo","value":"52343/500000","variable":"a"}` | `-52343/500000 + 1 * a` |
| 25 | coordinate | `{"box":1570,"direction":"lo","value":"3649/15625","variable":"b"}` | `-3649/15625 + 1 * b` |
| 26 | coordinate | `{"box":1570,"direction":"lo","value":"638473/1000000","variable":"j"}` | `-638473/1000000 + 1 * j` |
| 27 | coordinate | `{"box":1570,"direction":"lo","value":"364609/1000000","variable":"k"}` | `-364609/1000000 + 1 * k` |
| 28 | coordinate | `{"box":1570,"direction":"lo","value":"348569/500000","variable":"c"}` | `-348569/500000 + 1 * c` |
| 29 | coordinate | `{"box":1570,"direction":"lo","value":"20941/200000","variable":"e"}` | `-20941/200000 + 1 * e` |
| 30 | coordinate | `{"box":1570,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 31 | coordinate | `{"box":1570,"direction":"lo","value":"135501/250000","variable":"h"}` | `-135501/250000 + 1 * h` |
| 32 | coordinate | `{"box":1570,"direction":"lo","value":"80721/200000","variable":"p"}` | `-80721/200000 + 1 * p` |
| 33 | coordinate | `{"box":1570,"direction":"lo","value":"98843/500000","variable":"q"}` | `-98843/500000 + 1 * q` |
| 34 | coordinate | `{"box":1570,"direction":"lo","value":"45019/200000","variable":"u"}` | `-45019/200000 + 1 * u` |
| 35 | coordinate | `{"box":1570,"direction":"lo","value":"535141/1000000","variable":"v"}` | `-535141/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 17809000000 | 6 |
| 1 | 82566000000 | 7 |
| 2 | 13609000000 | 0 |
| 3 | 68958000000 | 8 |
| 4 | 13609000000 | 9 |
| 5 | 16018000000 | 10 |
| 6 | 27620000000 | 11 |
| 7 | 20246000000 | 1 |
| 8 | 13609000000 | 2 |
| 9 | 46404000000 | 3 |
| 10 | 13570000000 | 4 |
| 11 | 5396000000 | 5 |
| 12 | 82566000000 | 18, 24 |
| 13 | 11081000000 | 20, 24 |
| 14 | 6728000000 | 12, 32 |
| 15 | 82566000000 | 13, 23 |
| 16 | 82566000000 | 24, 34 |
| 17 | 16018000000 | 16, 29 |
| 18 | 27620000000 | 16, 31 |
| 19 | 14012000000 | 16, 21 |
| 20 | 16018000000 | 15, 16 |
| 21 | 20246000000 | 18, 29 |
| 22 | 17809000000 | 29, 32 |
| 23 | 36264000000 | 14, 17 |
| 24 | 13609000000 | 30, 33 |
| 25 | 1104000000 | 27, 30 |
| 26 | 19142000000 | 15, 18 |
| 27 | 27620000000 | 31, 32 |
| 28 | 45176000000 | 22, 31 |
| 29 | 1228000000 | 19, 34 |
| 30 | 20180000000 | 26, 31 |
| 31 | 26224000000 | 14, 19 |
| 32 | 46404000000 | 27, 34 |
| 33 | 46404000000 | 14, 35 |
| 34 | 1089000 | 21 |
| 35 | 86737 | 24 |
| 36 | 1000000 | 18, 35 |
| 37 | 535141 | 18 |
| 38 | 495903 | 23 |
| 39 | 1104952 | 34 |
| 40 | 1000000 | 16, 33 |
| 41 | 197686 | 16 |
| 42 | 1000000 | 25, 35 |
| 43 | 535141 | 25 |
| 44 | 242752 | 35 |
| 45 | 546484 | 13 |
| 46 | 100394 | 15 |
| 47 | 120596 | 14 |
| 48 | 688941 | 20 |
| 49 | 363259 | 29 |
| 50 | 34308 | 30 |
| 51 | 156846 | 28 |
| 52 | 141924 | 31 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -45525137650767/40000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -45525137650767/40000 | 1 | -45525137650767/40000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1570 | -45525137650767/40000 |

## Stage 1571

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS-/HQS-/CRS+/HQR+/BFQ+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS-/HQS-/CRS+/HQR+/BFQ+:HHLLLLHLLH |
| Index | 0 |
| Context | 308 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1569 |
| Coordinate cut | f high 495903/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 52343/500000 | 6143/20000 | 52343/500000 | 6143/20000 |
| b | 3649/15625 | 31423/62500 | 3649/15625 | 31423/62500 |
| c | 348569/500000 | 1 | 348569/500000 | 1 |
| e | 20941/200000 | 6143/20000 | 20941/200000 | 6143/20000 |
| f | 495903/1000000 | 656169/1000000 | 495903/1000000 | 656169/1000000 |
| h | 135501/250000 | 27411/31250 | 135501/250000 | 27411/31250 |
| p | 80721/200000 | 113779/200000 | 80721/200000 | 113779/200000 |
| q | 98843/500000 | 1631/4000 | 98843/500000 | 1631/4000 |
| u | 45019/200000 | 216869/500000 | 45019/200000 | 216869/500000 |
| v | 535141/1000000 | 384913/500000 | 535141/1000000 | 384913/500000 |
| r | 91293/125000 | 1 | 91293/125000 | 1 |
| w | 159511/200000 | 1 | 159511/200000 | 1 |
| j | 638473/1000000 | 111821/125000 | 638473/1000000 | 111821/125000 |
| k | 364609/1000000 | 170653/250000 | 364609/1000000 | 170653/250000 |

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
| 0 | bound | `{"direction":"lo","ref":"522:1483","triangle":"CEP","value":"48777/500000"}` | `1 * q + -1 * c * q + -1 * e * p + 1 * c * e + -48777/500000` |
| 1 | bound | `{"direction":"lo","ref":"522:1572","triangle":"BCP","value":"133823/1000000"}` | `1 * c * q + -1 * b * q + -133823/1000000` |
| 2 | physical | `{"factor":106,"stage":522}` | `-1/1 * f * k + 1/1 * e * f + 1/1 * k + 1/1 * j + -1093/1000 + -1/1 * e * j` |
| 3 | physical | `{"factor":131,"stage":522}` | `-1/1 * u * k + 1/1 * h * u + 1/1 * v * j + -1/1 * h * j + -93/1000` |
| 4 | physical | `{"factor":138,"stage":522}` | `1/1 * e + -1/1 * a` |
| 5 | physical | `{"factor":28,"stage":522}` | `1/1 * q + -1/1 * a + -1/1 * e * p + 1/1 * a * p + -93/1000` |
| 6 | physical | `{"factor":36,"stage":522}` | `-1/1 * f * v + 1/1 * a * f + 1/1 * u + -1/1 * a * u + -93/1000` |
| 7 | physical | `{"factor":65,"stage":522}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 8 | physical | `{"factor":66,"stage":522}` | `1/1 * f * v + -1/1 * b * v + -1/1 * u + 1/1 * b + -93/1000` |
| 9 | physical | `{"factor":84,"stage":522}` | `1/1 * k + -1/1 * c * k + -1/1 * e * j + 1/1 * c * e + -93/1000` |
| 10 | physical | `{"factor":90,"stage":522}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 11 | coordinate | `{"box":1571,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 12 | coordinate | `{"box":1571,"direction":"hi","value":"31423/62500","variable":"b"}` | `31423/62500 + -1 * b` |
| 13 | coordinate | `{"box":1571,"direction":"hi","value":"111821/125000","variable":"j"}` | `111821/125000 + -1 * j` |
| 14 | coordinate | `{"box":1571,"direction":"hi","value":"170653/250000","variable":"k"}` | `170653/250000 + -1 * k` |
| 15 | coordinate | `{"box":1571,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 16 | coordinate | `{"box":1571,"direction":"hi","value":"6143/20000","variable":"e"}` | `6143/20000 + -1 * e` |
| 17 | coordinate | `{"box":1571,"direction":"hi","value":"656169/1000000","variable":"f"}` | `656169/1000000 + -1 * f` |
| 18 | coordinate | `{"box":1571,"direction":"hi","value":"27411/31250","variable":"h"}` | `27411/31250 + -1 * h` |
| 19 | coordinate | `{"box":1571,"direction":"hi","value":"113779/200000","variable":"p"}` | `113779/200000 + -1 * p` |
| 20 | coordinate | `{"box":1571,"direction":"hi","value":"1631/4000","variable":"q"}` | `1631/4000 + -1 * q` |
| 21 | coordinate | `{"box":1571,"direction":"hi","value":"216869/500000","variable":"u"}` | `216869/500000 + -1 * u` |
| 22 | coordinate | `{"box":1571,"direction":"hi","value":"384913/500000","variable":"v"}` | `384913/500000 + -1 * v` |
| 23 | coordinate | `{"box":1571,"direction":"lo","value":"52343/500000","variable":"a"}` | `-52343/500000 + 1 * a` |
| 24 | coordinate | `{"box":1571,"direction":"lo","value":"3649/15625","variable":"b"}` | `-3649/15625 + 1 * b` |
| 25 | coordinate | `{"box":1571,"direction":"lo","value":"638473/1000000","variable":"j"}` | `-638473/1000000 + 1 * j` |
| 26 | coordinate | `{"box":1571,"direction":"lo","value":"364609/1000000","variable":"k"}` | `-364609/1000000 + 1 * k` |
| 27 | coordinate | `{"box":1571,"direction":"lo","value":"348569/500000","variable":"c"}` | `-348569/500000 + 1 * c` |
| 28 | coordinate | `{"box":1571,"direction":"lo","value":"20941/200000","variable":"e"}` | `-20941/200000 + 1 * e` |
| 29 | coordinate | `{"box":1571,"direction":"lo","value":"495903/1000000","variable":"f"}` | `-495903/1000000 + 1 * f` |
| 30 | coordinate | `{"box":1571,"direction":"lo","value":"135501/250000","variable":"h"}` | `-135501/250000 + 1 * h` |
| 31 | coordinate | `{"box":1571,"direction":"lo","value":"80721/200000","variable":"p"}` | `-80721/200000 + 1 * p` |
| 32 | coordinate | `{"box":1571,"direction":"lo","value":"98843/500000","variable":"q"}` | `-98843/500000 + 1 * q` |
| 33 | coordinate | `{"box":1571,"direction":"lo","value":"45019/200000","variable":"u"}` | `-45019/200000 + 1 * u` |
| 34 | coordinate | `{"box":1571,"direction":"lo","value":"535141/1000000","variable":"v"}` | `-535141/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 4467000000 | 5 |
| 1 | 81803000000 | 6 |
| 2 | 35587000000 | 1 |
| 3 | 15795000000 | 7 |
| 4 | 51655000000 | 8 |
| 5 | 7989000000 | 0 |
| 6 | 27331000000 | 9 |
| 7 | 27599000000 | 10 |
| 8 | 30732000000 | 2 |
| 9 | 35718000000 | 3 |
| 10 | 3160000000 | 4 |
| 11 | 81803000000 | 11, 29 |
| 12 | 19792000000 | 24, 32 |
| 13 | 4467000000 | 19, 23 |
| 14 | 33314000000 | 24, 34 |
| 15 | 18341000000 | 12, 22 |
| 16 | 81803000000 | 11, 21 |
| 17 | 35320000000 | 15, 28 |
| 18 | 27599000000 | 15, 30 |
| 19 | 27331000000 | 14, 15 |
| 20 | 20272000000 | 17, 28 |
| 21 | 10460000000 | 16, 29 |
| 22 | 12456000000 | 28, 31 |
| 23 | 58064000000 | 13, 16 |
| 24 | 15795000000 | 29, 32 |
| 25 | 30148000000 | 29, 34 |
| 26 | 30732000000 | 26, 29 |
| 27 | 27599000000 | 30, 31 |
| 28 | 35718000000 | 21, 30 |
| 29 | 35718000000 | 13, 18 |
| 30 | 35718000000 | 14, 21 |
| 31 | 35718000000 | 13, 34 |
| 32 | 1067603 | 20 |
| 33 | 462540 | 23 |
| 34 | 496884 | 28 |
| 35 | 341514 | 31 |
| 36 | 27994 | 33 |
| 37 | 1000000 | 27, 32 |
| 38 | 197686 | 27 |
| 39 | 697138 | 32 |
| 40 | 867889 | 12 |
| 41 | 535141 | 24 |
| 42 | 233536 | 34 |
| 43 | 344880 | 26 |
| 44 | 1000000 | 16, 25 |
| 45 | 638473 | 16 |
| 46 | 682000652 | 13 |
| 47 | 115184 | 17 |
| 48 | 643524 | 22 |
| 49 | 480424 | 15 |
| 50 | 20335 | 30 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -49303115519206/15625 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -49303115519206/15625 | 1 | -49303115519206/15625 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1571 | -49303115519206/15625 |

## Stage 1572

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS-/HQS-/CRS+/HQR+/BFQ+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS-/HQS-/CRS+/HQR+/BFQ+:HHLLLLHLH |
| Index | 0 |
| Context | 308 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1568 |
| Coordinate cut | u high 216869/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 52343/500000 | 6143/20000 | 52343/500000 | 6143/20000 |
| b | 3649/15625 | 31423/62500 | 3649/15625 | 31423/62500 |
| c | 348569/500000 | 1 | 348569/500000 | 1 |
| e | 20941/200000 | 6143/20000 | 20941/200000 | 6143/20000 |
| f | 279/1000 | 656169/1000000 | 279/1000 | 656169/1000000 |
| h | 135501/250000 | 27411/31250 | 135501/250000 | 27411/31250 |
| p | 80721/200000 | 113779/200000 | 80721/200000 | 113779/200000 |
| q | 98843/500000 | 1631/4000 | 98843/500000 | 1631/4000 |
| u | 216869/500000 | 68619/125000 | 216869/500000 | 68619/125000 |
| v | 535141/1000000 | 384913/500000 | 535141/1000000 | 384913/500000 |
| r | 91293/125000 | 1 | 91293/125000 | 1 |
| w | 159511/200000 | 1 | 159511/200000 | 1 |
| j | 638473/1000000 | 111821/125000 | 638473/1000000 | 111821/125000 |
| k | 364609/1000000 | 170653/250000 | 364609/1000000 | 170653/250000 |

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
| 0 | bound | `{"direction":"lo","ref":"522:1572","triangle":"BCP","value":"133823/1000000"}` | `1 * c * q + -1 * b * q + -133823/1000000` |
| 1 | physical | `{"factor":106,"stage":522}` | `-1/1 * f * k + 1/1 * e * f + 1/1 * k + 1/1 * j + -1093/1000 + -1/1 * e * j` |
| 2 | physical | `{"factor":131,"stage":522}` | `-1/1 * u * k + 1/1 * h * u + 1/1 * v * j + -1/1 * h * j + -93/1000` |
| 3 | physical | `{"factor":138,"stage":522}` | `1/1 * e + -1/1 * a` |
| 4 | physical | `{"factor":28,"stage":522}` | `1/1 * q + -1/1 * a + -1/1 * e * p + 1/1 * a * p + -93/1000` |
| 5 | physical | `{"factor":36,"stage":522}` | `-1/1 * f * v + 1/1 * a * f + 1/1 * u + -1/1 * a * u + -93/1000` |
| 6 | physical | `{"factor":65,"stage":522}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 7 | physical | `{"factor":66,"stage":522}` | `1/1 * f * v + -1/1 * b * v + -1/1 * u + 1/1 * b + -93/1000` |
| 8 | physical | `{"factor":84,"stage":522}` | `1/1 * k + -1/1 * c * k + -1/1 * e * j + 1/1 * c * e + -93/1000` |
| 9 | physical | `{"factor":90,"stage":522}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 10 | coordinate | `{"box":1572,"direction":"hi","value":"31423/62500","variable":"b"}` | `31423/62500 + -1 * b` |
| 11 | coordinate | `{"box":1572,"direction":"hi","value":"111821/125000","variable":"j"}` | `111821/125000 + -1 * j` |
| 12 | coordinate | `{"box":1572,"direction":"hi","value":"170653/250000","variable":"k"}` | `170653/250000 + -1 * k` |
| 13 | coordinate | `{"box":1572,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 14 | coordinate | `{"box":1572,"direction":"hi","value":"6143/20000","variable":"e"}` | `6143/20000 + -1 * e` |
| 15 | coordinate | `{"box":1572,"direction":"hi","value":"656169/1000000","variable":"f"}` | `656169/1000000 + -1 * f` |
| 16 | coordinate | `{"box":1572,"direction":"hi","value":"27411/31250","variable":"h"}` | `27411/31250 + -1 * h` |
| 17 | coordinate | `{"box":1572,"direction":"hi","value":"113779/200000","variable":"p"}` | `113779/200000 + -1 * p` |
| 18 | coordinate | `{"box":1572,"direction":"hi","value":"1631/4000","variable":"q"}` | `1631/4000 + -1 * q` |
| 19 | coordinate | `{"box":1572,"direction":"hi","value":"384913/500000","variable":"v"}` | `384913/500000 + -1 * v` |
| 20 | coordinate | `{"box":1572,"direction":"lo","value":"52343/500000","variable":"a"}` | `-52343/500000 + 1 * a` |
| 21 | coordinate | `{"box":1572,"direction":"lo","value":"3649/15625","variable":"b"}` | `-3649/15625 + 1 * b` |
| 22 | coordinate | `{"box":1572,"direction":"lo","value":"638473/1000000","variable":"j"}` | `-638473/1000000 + 1 * j` |
| 23 | coordinate | `{"box":1572,"direction":"lo","value":"364609/1000000","variable":"k"}` | `-364609/1000000 + 1 * k` |
| 24 | coordinate | `{"box":1572,"direction":"lo","value":"348569/500000","variable":"c"}` | `-348569/500000 + 1 * c` |
| 25 | coordinate | `{"box":1572,"direction":"lo","value":"20941/200000","variable":"e"}` | `-20941/200000 + 1 * e` |
| 26 | coordinate | `{"box":1572,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 27 | coordinate | `{"box":1572,"direction":"lo","value":"135501/250000","variable":"h"}` | `-135501/250000 + 1 * h` |
| 28 | coordinate | `{"box":1572,"direction":"lo","value":"80721/200000","variable":"p"}` | `-80721/200000 + 1 * p` |
| 29 | coordinate | `{"box":1572,"direction":"lo","value":"98843/500000","variable":"q"}` | `-98843/500000 + 1 * q` |
| 30 | coordinate | `{"box":1572,"direction":"lo","value":"216869/500000","variable":"u"}` | `-216869/500000 + 1 * u` |
| 31 | coordinate | `{"box":1572,"direction":"lo","value":"535141/1000000","variable":"v"}` | `-535141/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 9286000000 | 4 |
| 1 | 62010000000 | 5 |
| 2 | 24095000000 | 0 |
| 3 | 21960000000 | 6 |
| 4 | 97240000000 | 7 |
| 5 | 24872000000 | 8 |
| 6 | 27911000000 | 9 |
| 7 | 36344000000 | 1 |
| 8 | 28810000000 | 2 |
| 9 | 9790000000 | 3 |
| 10 | 62010000000 | 15, 20 |
| 11 | 2135000000 | 21, 29 |
| 12 | 9286000000 | 17, 20 |
| 13 | 97240000000 | 10, 19 |
| 14 | 62010000000 | 20, 30 |
| 15 | 24872000000 | 13, 25 |
| 16 | 27911000000 | 13, 27 |
| 17 | 3816000000 | 24, 29 |
| 18 | 24872000000 | 12, 13 |
| 19 | 36344000000 | 15, 25 |
| 20 | 9286000000 | 25, 28 |
| 21 | 61215000000 | 11, 14 |
| 22 | 21960000000 | 26, 29 |
| 23 | 35230000000 | 15, 31 |
| 24 | 36344000000 | 12, 15 |
| 25 | 7526000000 | 27, 28 |
| 26 | 20385000000 | 16, 17 |
| 27 | 28810000000 | 16, 30 |
| 28 | 28810000000 | 11, 16 |
| 29 | 28810000000 | 23, 30 |
| 30 | 28810000000 | 11, 31 |
| 31 | 282032 | 18 |
| 32 | 294720 | 20 |
| 33 | 26955215030 | 30 |
| 34 | 42058 | 28 |
| 35 | 60150 | 10 |
| 36 | 202084 | 12 |
| 37 | 1000000 | 22, 25 |
| 38 | 638473 | 25 |
| 39 | 104705 | 22 |
| 40 | 7688475840 | 11 |
| 41 | 949986 | 14 |
| 42 | 40278 | 26 |
| 43 | 177630 | 19 |
| 44 | 199036 | 24 |
| 45 | 31895 | 16 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -698710252603551/200000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -698710252603551/200000 | 1 | -698710252603551/200000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1572 | -698710252603551/200000 |

## Stage 1573

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS-/HQS-/CRS+/HQR+/BFQ+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS-/HQS-/CRS+/HQR+/BFQ+:HHLLLLHH |
| Index | 0 |
| Context | 308 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1567 |
| Coordinate cut | v high 384913/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 52343/500000 | 6143/20000 | 52343/500000 | 6143/20000 |
| b | 3649/15625 | 31423/62500 | 3649/15625 | 31423/62500 |
| c | 348569/500000 | 1 | 348569/500000 | 1 |
| e | 20941/200000 | 6143/20000 | 20941/200000 | 6143/20000 |
| f | 279/1000 | 656169/1000000 | 279/1000 | 656169/1000000 |
| h | 135501/250000 | 27411/31250 | 135501/250000 | 27411/31250 |
| p | 80721/200000 | 113779/200000 | 80721/200000 | 113779/200000 |
| q | 98843/500000 | 1631/4000 | 98843/500000 | 1631/4000 |
| u | 45019/200000 | 68619/125000 | 45019/200000 | 68619/125000 |
| v | 384913/500000 | 907/1000 | 384913/500000 | 907/1000 |
| r | 91293/125000 | 1 | 91293/125000 | 1 |
| w | 159511/200000 | 1 | 159511/200000 | 1 |
| j | 638473/1000000 | 111821/125000 | 638473/1000000 | 111821/125000 |
| k | 364609/1000000 | 170653/250000 | 364609/1000000 | 170653/250000 |

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
| 0 | bound | `{"direction":"lo","ref":"522:1572","triangle":"BCP","value":"133823/1000000"}` | `1 * c * q + -1 * b * q + -133823/1000000` |
| 1 | physical | `{"factor":106,"stage":522}` | `-1/1 * f * k + 1/1 * e * f + 1/1 * k + 1/1 * j + -1093/1000 + -1/1 * e * j` |
| 2 | physical | `{"factor":121,"stage":522}` | `-1/1 * p * v + 1/1 * p + 1/1 * f * v + 1/1 * q * u + -1/1 * f * q + -1/1 * u + -93/1000` |
| 3 | physical | `{"factor":131,"stage":522}` | `-1/1 * u * k + 1/1 * h * u + 1/1 * v * j + -1/1 * h * j + -93/1000` |
| 4 | physical | `{"factor":140,"stage":522}` | `1/1 * f + -1/1 * b` |
| 5 | physical | `{"factor":28,"stage":522}` | `1/1 * q + -1/1 * a + -1/1 * e * p + 1/1 * a * p + -93/1000` |
| 6 | physical | `{"factor":36,"stage":522}` | `-1/1 * f * v + 1/1 * a * f + 1/1 * u + -1/1 * a * u + -93/1000` |
| 7 | physical | `{"factor":66,"stage":522}` | `1/1 * f * v + -1/1 * b * v + -1/1 * u + 1/1 * b + -93/1000` |
| 8 | physical | `{"factor":73,"stage":522}` | `1/1 * p * v + -1/1 * b * v + -1/1 * q * u + 1/1 * b * q + -93/1000` |
| 9 | physical | `{"factor":74,"stage":522}` | `-1/1 * p * k + 1/1 * b * k + 1/1 * q * j + -1/1 * b * q + -93/1000` |
| 10 | physical | `{"factor":84,"stage":522}` | `1/1 * k + -1/1 * c * k + -1/1 * e * j + 1/1 * c * e + -93/1000` |
| 11 | physical | `{"factor":90,"stage":522}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 12 | coordinate | `{"box":1573,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 13 | coordinate | `{"box":1573,"direction":"hi","value":"31423/62500","variable":"b"}` | `31423/62500 + -1 * b` |
| 14 | coordinate | `{"box":1573,"direction":"hi","value":"111821/125000","variable":"j"}` | `111821/125000 + -1 * j` |
| 15 | coordinate | `{"box":1573,"direction":"hi","value":"170653/250000","variable":"k"}` | `170653/250000 + -1 * k` |
| 16 | coordinate | `{"box":1573,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 17 | coordinate | `{"box":1573,"direction":"hi","value":"6143/20000","variable":"e"}` | `6143/20000 + -1 * e` |
| 18 | coordinate | `{"box":1573,"direction":"hi","value":"656169/1000000","variable":"f"}` | `656169/1000000 + -1 * f` |
| 19 | coordinate | `{"box":1573,"direction":"hi","value":"27411/31250","variable":"h"}` | `27411/31250 + -1 * h` |
| 20 | coordinate | `{"box":1573,"direction":"hi","value":"113779/200000","variable":"p"}` | `113779/200000 + -1 * p` |
| 21 | coordinate | `{"box":1573,"direction":"hi","value":"1631/4000","variable":"q"}` | `1631/4000 + -1 * q` |
| 22 | coordinate | `{"box":1573,"direction":"hi","value":"68619/125000","variable":"u"}` | `68619/125000 + -1 * u` |
| 23 | coordinate | `{"box":1573,"direction":"hi","value":"907/1000","variable":"v"}` | `907/1000 + -1 * v` |
| 24 | coordinate | `{"box":1573,"direction":"lo","value":"52343/500000","variable":"a"}` | `-52343/500000 + 1 * a` |
| 25 | coordinate | `{"box":1573,"direction":"lo","value":"3649/15625","variable":"b"}` | `-3649/15625 + 1 * b` |
| 26 | coordinate | `{"box":1573,"direction":"lo","value":"364609/1000000","variable":"k"}` | `-364609/1000000 + 1 * k` |
| 27 | coordinate | `{"box":1573,"direction":"lo","value":"348569/500000","variable":"c"}` | `-348569/500000 + 1 * c` |
| 28 | coordinate | `{"box":1573,"direction":"lo","value":"20941/200000","variable":"e"}` | `-20941/200000 + 1 * e` |
| 29 | coordinate | `{"box":1573,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 30 | coordinate | `{"box":1573,"direction":"lo","value":"135501/250000","variable":"h"}` | `-135501/250000 + 1 * h` |
| 31 | coordinate | `{"box":1573,"direction":"lo","value":"80721/200000","variable":"p"}` | `-80721/200000 + 1 * p` |
| 32 | coordinate | `{"box":1573,"direction":"lo","value":"98843/500000","variable":"q"}` | `-98843/500000 + 1 * q` |
| 33 | coordinate | `{"box":1573,"direction":"lo","value":"45019/200000","variable":"u"}` | `-45019/200000 + 1 * u` |
| 34 | coordinate | `{"box":1573,"direction":"lo","value":"384913/500000","variable":"v"}` | `-384913/500000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 610000000 | 5 |
| 1 | 174740000000 | 6 |
| 2 | 6857000000 | 0 |
| 3 | 109079000000 | 7 |
| 4 | 12332000000 | 8 |
| 5 | 6102000000 | 9 |
| 6 | 12286000000 | 10 |
| 7 | 9170000000 | 11 |
| 8 | 3978000000 | 1 |
| 9 | 12332000000 | 2 |
| 10 | 1757000000 | 3 |
| 11 | 17583000000 | 4 |
| 12 | 125764000000 | 18, 24 |
| 13 | 48976000000 | 12, 29 |
| 14 | 627000000 | 13, 21 |
| 15 | 610000000 | 20, 24 |
| 16 | 121411000000 | 25, 34 |
| 17 | 174740000000 | 12, 22 |
| 18 | 6102000000 | 13, 26 |
| 19 | 12286000000 | 16, 28 |
| 20 | 9170000000 | 19, 27 |
| 21 | 2312000000 | 16, 21 |
| 22 | 12286000000 | 15, 16 |
| 23 | 3978000000 | 18, 28 |
| 24 | 610000000 | 17, 20 |
| 25 | 16264000000 | 14, 17 |
| 26 | 12332000000 | 29, 32 |
| 27 | 53330000000 | 29, 34 |
| 28 | 3978000000 | 15, 18 |
| 29 | 9170000000 | 19, 20 |
| 30 | 1757000000 | 19, 33 |
| 31 | 1757000000 | 14, 19 |
| 32 | 1757000000 | 15, 22 |
| 33 | 1757000000 | 14, 34 |
| 34 | 6102000000 | 15, 20 |
| 35 | 6102000000 | 14, 32 |
| 36 | 790400 | 21 |
| 37 | 104414 | 24 |
| 38 | 1000000 | 18, 34 |
| 39 | 879952 | 18 |
| 40 | 656169 | 23 |
| 41 | 584220 | 33 |
| 42 | 1000000 | 27, 32 |
| 43 | 197686 | 27 |
| 44 | 697138 | 32 |
| 45 | 769826 | 25 |
| 46 | 41661153320 | 34 |
| 47 | 610208 | 13 |
| 48 | 255900 | 26 |
| 49 | 220590 | 14 |
| 50 | 285304 | 31 |
| 51 | 600438 | 16 |
| 52 | 39620 | 28 |
| 53 | 275751 | 30 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -1094869650417549/250000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -1094869650417549/250000 | 1 | -1094869650417549/250000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1573 | -1094869650417549/250000 |

## Stage 1574

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS-/HQS-/CRS+/HQR+/BFQ+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS-/HQS-/CRS+/HQR+/BFQ+:HHLLLH |
| Index | 0 |
| Context | 308 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1564 |
| Coordinate cut | q high 1631/4000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 52343/500000 | 6143/20000 | 52343/500000 | 6143/20000 |
| b | 3649/15625 | 31423/62500 | 3649/15625 | 31423/62500 |
| c | 348569/500000 | 1 | 348569/500000 | 1 |
| e | 20941/200000 | 6143/20000 | 20941/200000 | 6143/20000 |
| f | 279/1000 | 656169/1000000 | 279/1000 | 656169/1000000 |
| h | 135501/250000 | 27411/31250 | 135501/250000 | 27411/31250 |
| p | 149507/500000 | 113779/200000 | 149507/500000 | 113779/200000 |
| q | 1631/4000 | 303993/500000 | 1631/4000 | 303993/500000 |
| u | 45019/200000 | 68619/125000 | 45019/200000 | 68619/125000 |
| v | 535141/1000000 | 907/1000 | 535141/1000000 | 907/1000 |
| r | 91293/125000 | 1 | 91293/125000 | 1 |
| w | 159511/200000 | 1 | 159511/200000 | 1 |
| j | 638473/1000000 | 111821/125000 | 638473/1000000 | 111821/125000 |
| k | 364609/1000000 | 170653/250000 | 364609/1000000 | 170653/250000 |

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
| 0 | bound | `{"direction":"lo","ref":"522:1677","triangle":"FHS","value":"146271/500000"}` | `-1 * f * k + -1 * h * j + 1 * f * h + 1 * j + -146271/500000` |
| 1 | physical | `{"factor":106,"stage":522}` | `-1/1 * f * k + 1/1 * e * f + 1/1 * k + 1/1 * j + -1093/1000 + -1/1 * e * j` |
| 2 | physical | `{"factor":109,"stage":522}` | `1/1 * w + 1/1 * h * r + -1/1 * h + -1/1 * e * r + -13857/20000` |
| 3 | physical | `{"factor":118,"stage":522}` | `-1/1 * f * v + -1/1 * h * u + 1/1 * f * h + 1/1 * u + -93/1000` |
| 4 | physical | `{"factor":119,"stage":522}` | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 5 | physical | `{"factor":131,"stage":522}` | `-1/1 * u * k + 1/1 * h * u + 1/1 * v * j + -1/1 * h * j + -93/1000` |
| 6 | physical | `{"factor":138,"stage":522}` | `1/1 * e + -1/1 * a` |
| 7 | physical | `{"factor":36,"stage":522}` | `-1/1 * f * v + 1/1 * a * f + 1/1 * u + -1/1 * a * u + -93/1000` |
| 8 | physical | `{"factor":65,"stage":522}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 9 | physical | `{"factor":66,"stage":522}` | `1/1 * f * v + -1/1 * b * v + -1/1 * u + 1/1 * b + -93/1000` |
| 10 | physical | `{"factor":83,"stage":522}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 11 | physical | `{"factor":90,"stage":522}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 12 | coordinate | `{"box":1574,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 13 | coordinate | `{"box":1574,"direction":"hi","value":"31423/62500","variable":"b"}` | `31423/62500 + -1 * b` |
| 14 | coordinate | `{"box":1574,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 15 | coordinate | `{"box":1574,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 16 | coordinate | `{"box":1574,"direction":"hi","value":"111821/125000","variable":"j"}` | `111821/125000 + -1 * j` |
| 17 | coordinate | `{"box":1574,"direction":"hi","value":"170653/250000","variable":"k"}` | `170653/250000 + -1 * k` |
| 18 | coordinate | `{"box":1574,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 19 | coordinate | `{"box":1574,"direction":"hi","value":"6143/20000","variable":"e"}` | `6143/20000 + -1 * e` |
| 20 | coordinate | `{"box":1574,"direction":"hi","value":"656169/1000000","variable":"f"}` | `656169/1000000 + -1 * f` |
| 21 | coordinate | `{"box":1574,"direction":"hi","value":"27411/31250","variable":"h"}` | `27411/31250 + -1 * h` |
| 22 | coordinate | `{"box":1574,"direction":"hi","value":"113779/200000","variable":"p"}` | `113779/200000 + -1 * p` |
| 23 | coordinate | `{"box":1574,"direction":"hi","value":"68619/125000","variable":"u"}` | `68619/125000 + -1 * u` |
| 24 | coordinate | `{"box":1574,"direction":"hi","value":"907/1000","variable":"v"}` | `907/1000 + -1 * v` |
| 25 | coordinate | `{"box":1574,"direction":"lo","value":"52343/500000","variable":"a"}` | `-52343/500000 + 1 * a` |
| 26 | coordinate | `{"box":1574,"direction":"lo","value":"3649/15625","variable":"b"}` | `-3649/15625 + 1 * b` |
| 27 | coordinate | `{"box":1574,"direction":"lo","value":"91293/125000","variable":"r"}` | `-91293/125000 + 1 * r` |
| 28 | coordinate | `{"box":1574,"direction":"lo","value":"638473/1000000","variable":"j"}` | `-638473/1000000 + 1 * j` |
| 29 | coordinate | `{"box":1574,"direction":"lo","value":"364609/1000000","variable":"k"}` | `-364609/1000000 + 1 * k` |
| 30 | coordinate | `{"box":1574,"direction":"lo","value":"348569/500000","variable":"c"}` | `-348569/500000 + 1 * c` |
| 31 | coordinate | `{"box":1574,"direction":"lo","value":"20941/200000","variable":"e"}` | `-20941/200000 + 1 * e` |
| 32 | coordinate | `{"box":1574,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 33 | coordinate | `{"box":1574,"direction":"lo","value":"135501/250000","variable":"h"}` | `-135501/250000 + 1 * h` |
| 34 | coordinate | `{"box":1574,"direction":"lo","value":"1631/4000","variable":"q"}` | `-1631/4000 + 1 * q` |
| 35 | coordinate | `{"box":1574,"direction":"lo","value":"45019/200000","variable":"u"}` | `-45019/200000 + 1 * u` |
| 36 | coordinate | `{"box":1574,"direction":"lo","value":"535141/1000000","variable":"v"}` | `-535141/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 69294000000 | 7 |
| 1 | 54776000000 | 8 |
| 2 | 69787000000 | 9 |
| 3 | 22377000000 | 10 |
| 4 | 62447000000 | 11 |
| 5 | 7040000000 | 1 |
| 6 | 2617000000 | 2 |
| 7 | 493000000 | 3 |
| 8 | 2617000000 | 4 |
| 9 | 2624000000 | 0 |
| 10 | 19296000000 | 5 |
| 11 | 211000000 | 6 |
| 12 | 69294000000 | 12, 32 |
| 13 | 54776000000 | 13, 34 |
| 14 | 69787000000 | 26, 36 |
| 15 | 58410000000 | 25, 35 |
| 16 | 10884000000 | 12, 23 |
| 17 | 22377000000 | 18, 31 |
| 18 | 34761000000 | 21, 30 |
| 19 | 27686000000 | 18, 33 |
| 20 | 62447000000 | 30, 34 |
| 21 | 22377000000 | 15, 18 |
| 22 | 7040000000 | 19, 32 |
| 23 | 24994000000 | 27, 31 |
| 24 | 7040000000 | 16, 19 |
| 25 | 5734000000 | 21, 32 |
| 26 | 54776000000 | 32, 34 |
| 27 | 2617000000 | 15, 20 |
| 28 | 9664000000 | 29, 32 |
| 29 | 62447000000 | 21, 22 |
| 30 | 18803000000 | 21, 35 |
| 31 | 21920000000 | 16, 21 |
| 32 | 19296000000 | 29, 35 |
| 33 | 15532000000 | 16, 36 |
| 34 | 3765000000 | 24, 28 |
| 35 | 136068 | 35 |
| 36 | 489056 | 22 |
| 37 | 29033 | 13 |
| 38 | 899805727 | 15 |
| 39 | 364609 | 32 |
| 40 | 279000 | 29 |
| 41 | 589880 | 17 |
| 42 | 1157172 | 16 |
| 43 | 255322 | 33 |
| 44 | 3230 | 14 |
| 45 | 1000000 | 28, 36 |
| 46 | 638473 | 36 |
| 47 | 535141 | 28 |
| 48 | 183344 | 19 |
| 49 | 566518 | 25 |
| 50 | 446901 | 20 |
| 51 | 31277060718 | 34 |
| 52 | 504189 | 24 |
| 53 | 177049 | 30 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -3225996065427331/500000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -3225996065427331/500000 | 1 | -3225996065427331/500000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1574 | -3225996065427331/500000 |
