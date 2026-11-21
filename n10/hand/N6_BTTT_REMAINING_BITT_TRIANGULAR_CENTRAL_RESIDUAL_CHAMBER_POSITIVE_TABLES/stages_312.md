# BITT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 1560

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS-/HQS-/CRS+/HQR+/BFQ+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS-/HQS-/CRS+/HQR+/BFQ+:HL |
| Index | 0 |
| Context | 308 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1559 |
| Coordinate cut | r low 91293/125000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 52343/500000 | 6143/20000 | 52343/500000 | 6143/20000 |
| b | 3649/15625 | 122027/200000 | 3649/15625 | 122027/200000 |
| c | 348569/500000 | 1 | 348569/500000 | 1 |
| e | 20941/200000 | 6143/20000 | 20941/200000 | 6143/20000 |
| f | 279/1000 | 656169/1000000 | 279/1000 | 656169/1000000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 149507/500000 | 167773/250000 | 149507/500000 | 167773/250000 |
| q | 98843/500000 | 303993/500000 | 98843/500000 | 303993/500000 |
| u | 45019/200000 | 68619/125000 | 45019/200000 | 68619/125000 |
| v | 535141/1000000 | 907/1000 | 535141/1000000 | 907/1000 |
| r | 622831/1000000 | 91293/125000 | 622831/1000000 | 91293/125000 |
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
| 0 | bound | `{"direction":"lo","ref":"522:1603","triangle":"QRS","value":"138417/1000000"}` | `-1 * r * k + 1 * v * r + 1 * u * k + 1 * w * j + -1 * u * w + -1 * v * j + -138417/1000000` |
| 1 | bound | `{"direction":"lo","ref":"522:1630","triangle":"HRS","value":"324417/1000000"}` | `-1 * r * k + 1 * h * r + 1 * w * j + -1 * h * j + -324417/1000000` |
| 2 | bound | `{"direction":"lo","ref":"522:1641","triangle":"FRS","value":"61011/500000"}` | `-1 * r * k + 1 * r + 1 * f * k + 1 * w * j + -1 * f * w + -1 * j + -61011/500000` |
| 3 | physical | `{"factor":106,"stage":522}` | `-1/1 * f * k + 1/1 * e * f + 1/1 * k + 1/1 * j + -1093/1000 + -1/1 * e * j` |
| 4 | physical | `{"factor":131,"stage":522}` | `-1/1 * u * k + 1/1 * h * u + 1/1 * v * j + -1/1 * h * j + -93/1000` |
| 5 | physical | `{"factor":138,"stage":522}` | `1/1 * e + -1/1 * a` |
| 6 | physical | `{"factor":140,"stage":522}` | `1/1 * f + -1/1 * b` |
| 7 | physical | `{"factor":36,"stage":522}` | `-1/1 * f * v + 1/1 * a * f + 1/1 * u + -1/1 * a * u + -93/1000` |
| 8 | physical | `{"factor":66,"stage":522}` | `1/1 * f * v + -1/1 * b * v + -1/1 * u + 1/1 * b + -93/1000` |
| 9 | physical | `{"factor":84,"stage":522}` | `1/1 * k + -1/1 * c * k + -1/1 * e * j + 1/1 * c * e + -93/1000` |
| 10 | physical | `{"factor":99,"stage":522}` | `1/1 * r * k + -1/1 * c * k + -1/1 * w * j + 1/1 * c * w + -93/1000` |
| 11 | coordinate | `{"box":1560,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 12 | coordinate | `{"box":1560,"direction":"hi","value":"122027/200000","variable":"b"}` | `122027/200000 + -1 * b` |
| 13 | coordinate | `{"box":1560,"direction":"hi","value":"91293/125000","variable":"r"}` | `91293/125000 + -1 * r` |
| 14 | coordinate | `{"box":1560,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 15 | coordinate | `{"box":1560,"direction":"hi","value":"111821/125000","variable":"j"}` | `111821/125000 + -1 * j` |
| 16 | coordinate | `{"box":1560,"direction":"hi","value":"170653/250000","variable":"k"}` | `170653/250000 + -1 * k` |
| 17 | coordinate | `{"box":1560,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 18 | coordinate | `{"box":1560,"direction":"hi","value":"6143/20000","variable":"e"}` | `6143/20000 + -1 * e` |
| 19 | coordinate | `{"box":1560,"direction":"hi","value":"656169/1000000","variable":"f"}` | `656169/1000000 + -1 * f` |
| 20 | coordinate | `{"box":1560,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 21 | coordinate | `{"box":1560,"direction":"hi","value":"68619/125000","variable":"u"}` | `68619/125000 + -1 * u` |
| 22 | coordinate | `{"box":1560,"direction":"lo","value":"52343/500000","variable":"a"}` | `-52343/500000 + 1 * a` |
| 23 | coordinate | `{"box":1560,"direction":"lo","value":"3649/15625","variable":"b"}` | `-3649/15625 + 1 * b` |
| 24 | coordinate | `{"box":1560,"direction":"lo","value":"159511/200000","variable":"w"}` | `-159511/200000 + 1 * w` |
| 25 | coordinate | `{"box":1560,"direction":"lo","value":"638473/1000000","variable":"j"}` | `-638473/1000000 + 1 * j` |
| 26 | coordinate | `{"box":1560,"direction":"lo","value":"364609/1000000","variable":"k"}` | `-364609/1000000 + 1 * k` |
| 27 | coordinate | `{"box":1560,"direction":"lo","value":"348569/500000","variable":"c"}` | `-348569/500000 + 1 * c` |
| 28 | coordinate | `{"box":1560,"direction":"lo","value":"20941/200000","variable":"e"}` | `-20941/200000 + 1 * e` |
| 29 | coordinate | `{"box":1560,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 30 | coordinate | `{"box":1560,"direction":"lo","value":"135501/250000","variable":"h"}` | `-135501/250000 + 1 * h` |
| 31 | coordinate | `{"box":1560,"direction":"lo","value":"45019/200000","variable":"u"}` | `-45019/200000 + 1 * u` |
| 32 | coordinate | `{"box":1560,"direction":"lo","value":"535141/1000000","variable":"v"}` | `-535141/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 23672000000 | 7 |
| 1 | 23672000000 | 8 |
| 2 | 41002000000 | 9 |
| 3 | 74657000000 | 10 |
| 4 | 71380000000 | 3 |
| 5 | 14231000000 | 2 |
| 6 | 6692000000 | 4 |
| 7 | 30113000000 | 1 |
| 8 | 2792000000 | 0 |
| 9 | 1276000000 | 5 |
| 10 | 11004000000 | 6 |
| 11 | 23672000000 | 11, 29 |
| 12 | 23672000000 | 23, 32 |
| 13 | 23672000000 | 22, 31 |
| 14 | 41002000000 | 17, 28 |
| 15 | 74657000000 | 14, 27 |
| 16 | 115658000000 | 16, 17 |
| 17 | 25346000000 | 19, 28 |
| 18 | 46034000000 | 18, 29 |
| 19 | 112382000000 | 25, 28 |
| 20 | 14231000000 | 14, 19 |
| 21 | 57149000000 | 26, 29 |
| 22 | 6692000000 | 20, 31 |
| 23 | 30113000000 | 13, 30 |
| 24 | 36805000000 | 25, 30 |
| 25 | 3900000000 | 26, 31 |
| 26 | 3900000000 | 15, 32 |
| 27 | 27521000000 | 13, 26 |
| 28 | 27520000000 | 14, 15 |
| 29 | 2792000000 | 14, 21 |
| 30 | 2792000000 | 13, 32 |
| 31 | 102092 | 31 |
| 32 | 142248 | 12 |
| 33 | 1634724 | 16 |
| 34 | 1000000 | 26, 27 |
| 35 | 364609 | 27 |
| 36 | 976138 | 26 |
| 37 | 638473 | 28 |
| 38 | 902260 | 25 |
| 39 | 42080884413 | 13 |
| 40 | 1000000 | 24, 25 |
| 41 | 638473 | 24 |
| 42 | 364609 | 29 |
| 43 | 511261 | 18 |
| 44 | 375698 | 19 |
| 45 | 740075 | 15 |
| 46 | 39160 | 11 |
| 47 | 328544 | 32 |
| 48 | 575714 | 17 |
| 49 | 16557105283 | 14 |
| 50 | 185847 | 20 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -1829307979979519/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -1829307979979519/1000000 | 1 | -1829307979979519/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1560 | -1829307979979519/1000000 |

## Stage 1561

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS-/HQS-/CRS+/HQR+/BFQ+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS-/HQS-/CRS+/HQR+/BFQ+:HH |
| Index | 0 |
| Context | 308 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1559 |
| Coordinate cut | r high 91293/125000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 52343/500000 | 6143/20000 | 52343/500000 | 6143/20000 |
| b | 3649/15625 | 122027/200000 | 3649/15625 | 122027/200000 |
| c | 348569/500000 | 1 | 348569/500000 | 1 |
| e | 20941/200000 | 6143/20000 | 20941/200000 | 6143/20000 |
| f | 279/1000 | 656169/1000000 | 279/1000 | 656169/1000000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 149507/500000 | 167773/250000 | 149507/500000 | 167773/250000 |
| q | 98843/500000 | 303993/500000 | 98843/500000 | 303993/500000 |
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


## Stage 1562

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS-/HQS-/CRS+/HQR+/BFQ+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS-/HQS-/CRS+/HQR+/BFQ+:HHL |
| Index | 0 |
| Context | 308 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1561 |
| Coordinate cut | b low 31423/62500 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 52343/500000 | 6143/20000 | 52343/500000 | 6143/20000 |
| b | 3649/15625 | 31423/62500 | 3649/15625 | 31423/62500 |
| c | 348569/500000 | 1 | 348569/500000 | 1 |
| e | 20941/200000 | 6143/20000 | 20941/200000 | 6143/20000 |
| f | 279/1000 | 656169/1000000 | 279/1000 | 656169/1000000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 149507/500000 | 167773/250000 | 149507/500000 | 167773/250000 |
| q | 98843/500000 | 303993/500000 | 98843/500000 | 303993/500000 |
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


## Stage 1563

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS-/HQS-/CRS+/HQR+/BFQ+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS-/HQS-/CRS+/HQR+/BFQ+:HHLL |
| Index | 0 |
| Context | 308 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1562 |
| Coordinate cut | h low 27411/31250 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 52343/500000 | 6143/20000 | 52343/500000 | 6143/20000 |
| b | 3649/15625 | 31423/62500 | 3649/15625 | 31423/62500 |
| c | 348569/500000 | 1 | 348569/500000 | 1 |
| e | 20941/200000 | 6143/20000 | 20941/200000 | 6143/20000 |
| f | 279/1000 | 656169/1000000 | 279/1000 | 656169/1000000 |
| h | 135501/250000 | 27411/31250 | 135501/250000 | 27411/31250 |
| p | 149507/500000 | 167773/250000 | 149507/500000 | 167773/250000 |
| q | 98843/500000 | 303993/500000 | 98843/500000 | 303993/500000 |
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


## Stage 1564

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS-/HQS-/CRS+/HQR+/BFQ+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS-/HQS-/CRS+/HQR+/BFQ+:HHLLL |
| Index | 0 |
| Context | 308 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1563 |
| Coordinate cut | p low 113779/200000 |

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
| q | 98843/500000 | 303993/500000 | 98843/500000 | 303993/500000 |
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
