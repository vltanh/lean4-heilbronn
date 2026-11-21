# BITT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 1685

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS+/PQR+/BQS+/EPQ+/BFP-/AEQ+/BQR+ |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS+/PQR+/BQS+/EPQ+/BFP-/AEQ+/BQR+:LLHH |
| Index | 0 |
| Context | 389 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1663 |
| Coordinate cut | v high 508169/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 104519/1000000 | 73609/250000 | 104519/1000000 | 73609/250000 |
| b | 51927/500000 | 6143/20000 | 51927/500000 | 6143/20000 |
| c | 135501/250000 | 496819/500000 | 135501/250000 | 496819/500000 |
| e | 104519/1000000 | 59/125 | 104519/1000000 | 59/125 |
| f | 104519/1000000 | 592449/1000000 | 104519/1000000 | 592449/1000000 |
| h | 797369/1000000 | 1 | 797369/1000000 | 1 |
| p | 197109/1000000 | 519559/1000000 | 197109/1000000 | 519559/1000000 |
| q | 383519/1000000 | 354017/500000 | 383519/1000000 | 354017/500000 |
| u | 76597/200000 | 390627/500000 | 76597/200000 | 390627/500000 |
| v | 508169/1000000 | 655653/1000000 | 508169/1000000 | 655653/1000000 |
| r | 810083/1000000 | 1 | 810083/1000000 | 1 |
| w | 416083/1000000 | 1 | 416083/1000000 | 1 |
| j | 312133/1000000 | 1208279/2000000 | 312133/1000000 | 1208279/2000000 |
| k | 114901/200000 | 8033/8963 | 114901/200000 | 8033/8963 |

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
| 0 | physical | `{"factor":109,"stage":606}` | `1/1 * p * v + -1/1 * e * p + -1/1 * v + -1/1 * q * u + 1/1 * q + 1/1 * e * u + -93/1000` |
| 1 | physical | `{"factor":138,"stage":606}` | `1/1 * f + -1/1 * e` |
| 2 | physical | `{"factor":1440,"stage":606}` | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -130273/1000000` |
| 3 | physical | `{"factor":147,"stage":606}` | `450319/496819 + -1/1 * p + -1/1 * q` |
| 4 | physical | `{"factor":36,"stage":606}` | `-1/1 * f * w + 1/1 * a * f + 1/1 * r + -1/1 * a * r + -13857/20000` |
| 5 | physical | `{"factor":67,"stage":606}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 6 | physical | `{"factor":69,"stage":606}` | `-1/1 * f * w + 1/1 * b * w + 1/1 * r + -1/1 * b + -13857/20000` |
| 7 | physical | `{"factor":77,"stage":606}` | `1/1 * u * w + -1/1 * b * w + -1/1 * v * r + 1/1 * b * v + -93/1000` |
| 8 | coordinate | `{"box":1685,"direction":"hi","value":"6143/20000","variable":"b"}` | `6143/20000 + -1 * b` |
| 9 | coordinate | `{"box":1685,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 10 | coordinate | `{"box":1685,"direction":"hi","value":"59/125","variable":"e"}` | `59/125 + -1 * e` |
| 11 | coordinate | `{"box":1685,"direction":"hi","value":"592449/1000000","variable":"f"}` | `592449/1000000 + -1 * f` |
| 12 | coordinate | `{"box":1685,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 13 | coordinate | `{"box":1685,"direction":"hi","value":"519559/1000000","variable":"p"}` | `519559/1000000 + -1 * p` |
| 14 | coordinate | `{"box":1685,"direction":"hi","value":"354017/500000","variable":"q"}` | `354017/500000 + -1 * q` |
| 15 | coordinate | `{"box":1685,"direction":"hi","value":"390627/500000","variable":"u"}` | `390627/500000 + -1 * u` |
| 16 | coordinate | `{"box":1685,"direction":"lo","value":"104519/1000000","variable":"a"}` | `-104519/1000000 + 1 * a` |
| 17 | coordinate | `{"box":1685,"direction":"lo","value":"51927/500000","variable":"b"}` | `-51927/500000 + 1 * b` |
| 18 | coordinate | `{"box":1685,"direction":"lo","value":"810083/1000000","variable":"r"}` | `-810083/1000000 + 1 * r` |
| 19 | coordinate | `{"box":1685,"direction":"lo","value":"416083/1000000","variable":"w"}` | `-416083/1000000 + 1 * w` |
| 20 | coordinate | `{"box":1685,"direction":"lo","value":"104519/1000000","variable":"f"}` | `-104519/1000000 + 1 * f` |
| 21 | coordinate | `{"box":1685,"direction":"lo","value":"383519/1000000","variable":"q"}` | `-383519/1000000 + 1 * q` |
| 22 | coordinate | `{"box":1685,"direction":"lo","value":"76597/200000","variable":"u"}` | `-76597/200000 + 1 * u` |
| 23 | coordinate | `{"box":1685,"direction":"lo","value":"508169/1000000","variable":"v"}` | `-508169/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 28803000000 | 4 |
| 1 | 3820000000 | 5 |
| 2 | 8837000000 | 6 |
| 3 | 68146000000 | 7 |
| 4 | 108588000000 | 2 |
| 5 | 31143000000 | 0 |
| 6 | 37334000000 | 1 |
| 7 | 4946000000 | 3 |
| 8 | 28803000000 | 11, 16 |
| 9 | 3820000000 | 14, 17 |
| 10 | 68146000000 | 8, 23 |
| 11 | 59309000000 | 17, 19 |
| 12 | 28803000000 | 16, 18 |
| 13 | 31143000000 | 10, 13 |
| 14 | 139731000000 | 10, 22 |
| 15 | 3820000000 | 11, 14 |
| 16 | 37640000000 | 9, 11 |
| 17 | 108588000000 | 12, 15 |
| 18 | 31143000000 | 13, 23 |
| 19 | 31143000000 | 14, 15 |
| 20 | 62219000000 | 9, 22 |
| 21 | 5927000000 | 15, 19 |
| 22 | 68146000000 | 18, 23 |
| 23 | 145431 | 18 |
| 24 | 411167 | 13 |
| 25 | 92093 | 17 |
| 26 | 157823246281 | 23 |
| 27 | 23753190648 | 12 |
| 28 | 26222 | 21 |
| 29 | 229123 | 20 |
| 30 | 251098 | 10 |
| 31 | 6268512102 | 16 |
| 32 | 178927 | 9 |
| 33 | 146921 | 22 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -383347922091638201819/49681900000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -383347922091638201819/49681900000 | 1 | -383347922091638201819/49681900000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1685 | -383347922091638201819/49681900000 |

## Stage 1686

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS+/PQR+/BQS+/EPQ+/BFP-/AEQ+/BQR+ |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS+/PQR+/BQS+/EPQ+/BFP-/AEQ+/BQR+:LH |
| Index | 0 |
| Context | 389 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1660 |
| Coordinate cut | j high 1208279/2000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 104519/1000000 | 73609/250000 | 104519/1000000 | 73609/250000 |
| b | 51927/500000 | 6143/20000 | 51927/500000 | 6143/20000 |
| c | 135501/250000 | 496819/500000 | 135501/250000 | 496819/500000 |
| e | 104519/1000000 | 59/125 | 104519/1000000 | 59/125 |
| f | 104519/1000000 | 592449/1000000 | 104519/1000000 | 592449/1000000 |
| h | 797369/1000000 | 1 | 797369/1000000 | 1 |
| p | 197109/1000000 | 519559/1000000 | 197109/1000000 | 519559/1000000 |
| q | 383519/1000000 | 354017/500000 | 383519/1000000 | 354017/500000 |
| u | 76597/200000 | 390627/500000 | 76597/200000 | 390627/500000 |
| v | 197519/1000000 | 655653/1000000 | 197519/1000000 | 655653/1000000 |
| r | 810083/1000000 | 1 | 810083/1000000 | 1 |
| w | 416083/1000000 | 1 | 416083/1000000 | 1 |
| j | 1208279/2000000 | 448073/500000 | 1208279/2000000 | 448073/500000 |
| k | 383519/1000000 | 8033/8963 | 383519/1000000 | 8033/8963 |

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


## Stage 1687

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS+/PQR+/BQS+/EPQ+/BFP-/AEQ+/BQR+ |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS+/PQR+/BQS+/EPQ+/BFP-/AEQ+/BQR+:LHL |
| Index | 0 |
| Context | 389 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1686 |
| Coordinate cut | f low 243107/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 104519/1000000 | 73609/250000 | 104519/1000000 | 73609/250000 |
| b | 51927/500000 | 6143/20000 | 51927/500000 | 6143/20000 |
| c | 135501/250000 | 496819/500000 | 135501/250000 | 496819/500000 |
| e | 104519/1000000 | 59/125 | 104519/1000000 | 59/125 |
| f | 104519/1000000 | 243107/500000 | 104519/1000000 | 243107/500000 |
| h | 797369/1000000 | 1 | 797369/1000000 | 1 |
| p | 197109/1000000 | 519559/1000000 | 197109/1000000 | 519559/1000000 |
| q | 383519/1000000 | 354017/500000 | 383519/1000000 | 354017/500000 |
| u | 76597/200000 | 390627/500000 | 76597/200000 | 390627/500000 |
| v | 197519/1000000 | 655653/1000000 | 197519/1000000 | 655653/1000000 |
| r | 810083/1000000 | 1 | 810083/1000000 | 1 |
| w | 416083/1000000 | 1 | 416083/1000000 | 1 |
| j | 1208279/2000000 | 448073/500000 | 1208279/2000000 | 448073/500000 |
| k | 383519/1000000 | 8033/8963 | 383519/1000000 | 8033/8963 |

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


## Stage 1688

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS+/PQR+/BQS+/EPQ+/BFP-/AEQ+/BQR+ |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS+/PQR+/BQS+/EPQ+/BFP-/AEQ+/BQR+:LHLL |
| Index | 0 |
| Context | 389 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1687 |
| Coordinate cut | c low 767821/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 104519/1000000 | 73609/250000 | 104519/1000000 | 73609/250000 |
| b | 51927/500000 | 6143/20000 | 51927/500000 | 6143/20000 |
| c | 135501/250000 | 767821/1000000 | 135501/250000 | 767821/1000000 |
| e | 104519/1000000 | 59/125 | 104519/1000000 | 59/125 |
| f | 104519/1000000 | 243107/500000 | 104519/1000000 | 243107/500000 |
| h | 797369/1000000 | 1 | 797369/1000000 | 1 |
| p | 197109/1000000 | 519559/1000000 | 197109/1000000 | 519559/1000000 |
| q | 383519/1000000 | 354017/500000 | 383519/1000000 | 354017/500000 |
| u | 76597/200000 | 390627/500000 | 76597/200000 | 390627/500000 |
| v | 197519/1000000 | 655653/1000000 | 197519/1000000 | 655653/1000000 |
| r | 810083/1000000 | 1 | 810083/1000000 | 1 |
| w | 416083/1000000 | 1 | 416083/1000000 | 1 |
| j | 1208279/2000000 | 448073/500000 | 1208279/2000000 | 448073/500000 |
| k | 383519/1000000 | 8033/8963 | 383519/1000000 | 8033/8963 |

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


## Stage 1689

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS+/PQR+/BQS+/EPQ+/BFP-/AEQ+/BQR+ |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS+/PQR+/BQS+/EPQ+/BFP-/AEQ+/BQR+:LHLLL |
| Index | 0 |
| Context | 389 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1688 |
| Coordinate cut | u low 30397/62500 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 104519/1000000 | 73609/250000 | 104519/1000000 | 73609/250000 |
| b | 51927/500000 | 6143/20000 | 51927/500000 | 6143/20000 |
| c | 135501/250000 | 767821/1000000 | 135501/250000 | 767821/1000000 |
| e | 104519/1000000 | 59/125 | 104519/1000000 | 59/125 |
| f | 104519/1000000 | 243107/500000 | 104519/1000000 | 243107/500000 |
| h | 797369/1000000 | 1 | 797369/1000000 | 1 |
| p | 197109/1000000 | 519559/1000000 | 197109/1000000 | 519559/1000000 |
| q | 383519/1000000 | 354017/500000 | 383519/1000000 | 354017/500000 |
| u | 76597/200000 | 30397/62500 | 76597/200000 | 30397/62500 |
| v | 197519/1000000 | 655653/1000000 | 197519/1000000 | 655653/1000000 |
| r | 810083/1000000 | 1 | 810083/1000000 | 1 |
| w | 416083/1000000 | 1 | 416083/1000000 | 1 |
| j | 1208279/2000000 | 448073/500000 | 1208279/2000000 | 448073/500000 |
| k | 383519/1000000 | 8033/8963 | 383519/1000000 | 8033/8963 |

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
| 0 | physical | `{"factor":10,"stage":606}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 1 | physical | `{"factor":109,"stage":606}` | `1/1 * p * v + -1/1 * e * p + -1/1 * v + -1/1 * q * u + 1/1 * q + 1/1 * e * u + -93/1000` |
| 2 | physical | `{"factor":117,"stage":606}` | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 3 | physical | `{"factor":138,"stage":606}` | `1/1 * f + -1/1 * e` |
| 4 | physical | `{"factor":36,"stage":606}` | `-1/1 * f * w + 1/1 * a * f + 1/1 * r + -1/1 * a * r + -13857/20000` |
| 5 | physical | `{"factor":67,"stage":606}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 6 | physical | `{"factor":77,"stage":606}` | `1/1 * u * w + -1/1 * b * w + -1/1 * v * r + 1/1 * b * v + -93/1000` |
| 7 | physical | `{"factor":91,"stage":606}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 8 | physical | `{"factor":92,"stage":606}` | `1/1 * c * v + 1/1 * h * u + -1/1 * c * h + -93/1000` |
| 9 | physical | `{"factor":95,"stage":606}` | `-1/1 * p * v + 1/1 * c * v + 1/1 * q * u + -1/1 * c * q + -93/1000` |
| 10 | coordinate | `{"box":1689,"direction":"hi","value":"73609/250000","variable":"a"}` | `73609/250000 + -1 * a` |
| 11 | coordinate | `{"box":1689,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 12 | coordinate | `{"box":1689,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 13 | coordinate | `{"box":1689,"direction":"hi","value":"767821/1000000","variable":"c"}` | `767821/1000000 + -1 * c` |
| 14 | coordinate | `{"box":1689,"direction":"hi","value":"59/125","variable":"e"}` | `59/125 + -1 * e` |
| 15 | coordinate | `{"box":1689,"direction":"hi","value":"243107/500000","variable":"f"}` | `243107/500000 + -1 * f` |
| 16 | coordinate | `{"box":1689,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 17 | coordinate | `{"box":1689,"direction":"hi","value":"519559/1000000","variable":"p"}` | `519559/1000000 + -1 * p` |
| 18 | coordinate | `{"box":1689,"direction":"hi","value":"354017/500000","variable":"q"}` | `354017/500000 + -1 * q` |
| 19 | coordinate | `{"box":1689,"direction":"hi","value":"30397/62500","variable":"u"}` | `30397/62500 + -1 * u` |
| 20 | coordinate | `{"box":1689,"direction":"hi","value":"655653/1000000","variable":"v"}` | `655653/1000000 + -1 * v` |
| 21 | coordinate | `{"box":1689,"direction":"lo","value":"104519/1000000","variable":"a"}` | `-104519/1000000 + 1 * a` |
| 22 | coordinate | `{"box":1689,"direction":"lo","value":"51927/500000","variable":"b"}` | `-51927/500000 + 1 * b` |
| 23 | coordinate | `{"box":1689,"direction":"lo","value":"810083/1000000","variable":"r"}` | `-810083/1000000 + 1 * r` |
| 24 | coordinate | `{"box":1689,"direction":"lo","value":"416083/1000000","variable":"w"}` | `-416083/1000000 + 1 * w` |
| 25 | coordinate | `{"box":1689,"direction":"lo","value":"135501/250000","variable":"c"}` | `-135501/250000 + 1 * c` |
| 26 | coordinate | `{"box":1689,"direction":"lo","value":"104519/1000000","variable":"e"}` | `-104519/1000000 + 1 * e` |
| 27 | coordinate | `{"box":1689,"direction":"lo","value":"104519/1000000","variable":"f"}` | `-104519/1000000 + 1 * f` |
| 28 | coordinate | `{"box":1689,"direction":"lo","value":"797369/1000000","variable":"h"}` | `-797369/1000000 + 1 * h` |
| 29 | coordinate | `{"box":1689,"direction":"lo","value":"197109/1000000","variable":"p"}` | `-197109/1000000 + 1 * p` |
| 30 | coordinate | `{"box":1689,"direction":"lo","value":"383519/1000000","variable":"q"}` | `-383519/1000000 + 1 * q` |
| 31 | coordinate | `{"box":1689,"direction":"lo","value":"197519/1000000","variable":"v"}` | `-197519/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 17605000000 | 0 |
| 1 | 2327000000 | 4 |
| 2 | 51210000000 | 5 |
| 3 | 10549000000 | 6 |
| 4 | 55929000000 | 7 |
| 5 | 28533000000 | 8 |
| 6 | 62270000000 | 9 |
| 7 | 62270000000 | 1 |
| 8 | 10369000000 | 2 |
| 9 | 18011000000 | 3 |
| 10 | 17605000000 | 21, 22 |
| 11 | 2327000000 | 10, 27 |
| 12 | 68815000000 | 18, 22 |
| 13 | 17605000000 | 10, 29 |
| 14 | 10549000000 | 20, 22 |
| 15 | 10549000000 | 22, 24 |
| 16 | 2327000000 | 21, 23 |
| 17 | 27397000000 | 16, 25 |
| 18 | 118200000000 | 25, 30 |
| 19 | 90803000000 | 13, 31 |
| 20 | 62270000000 | 26, 29 |
| 21 | 62270000000 | 19, 26 |
| 22 | 10369000000 | 16, 27 |
| 23 | 51210000000 | 27, 30 |
| 24 | 5601000000 | 24, 27 |
| 25 | 7095000000 | 12, 15 |
| 26 | 29828000000 | 28, 29 |
| 27 | 26102000000 | 16, 17 |
| 28 | 28533000000 | 19, 28 |
| 29 | 10369000000 | 11, 16 |
| 30 | 10549000000 | 19, 24 |
| 31 | 10549000000 | 23, 31 |
| 32 | 156356 | 11 |
| 33 | 774882 | 29 |
| 34 | 1799473355 | 22 |
| 35 | 1000000 | 13, 30 |
| 36 | 755476 | 13 |
| 37 | 767821 | 18 |
| 38 | 1000000 | 16, 29 |
| 39 | 423554 | 16 |
| 40 | 1000000 | 17 |
| 41 | 1000000 | 25, 28 |
| 42 | 797369 | 25 |
| 43 | 542004 | 28 |
| 44 | 440542 | 20 |
| 45 | 577780 | 30 |
| 46 | 336301 | 27 |
| 47 | 161610 | 14 |
| 48 | 93153 | 21 |
| 49 | 127847 | 24 |
| 50 | 33648987374 | 19 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -212925344630957/62500 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -212925344630957/62500 | 1 | -212925344630957/62500 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1689 | -212925344630957/62500 |
