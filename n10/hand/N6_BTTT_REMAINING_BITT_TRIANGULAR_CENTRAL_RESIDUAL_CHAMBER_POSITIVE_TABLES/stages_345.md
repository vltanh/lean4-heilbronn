# BITT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 1725

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR+/EHQ+/CFQ-/APS- |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR+/EHQ+/CFQ-/APS-:L |
| Index | 0 |
| Context | 406 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1724 |
| Coordinate cut | j low 33847/62500 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 105041/1000000 | 1813/6250 | 105041/1000000 | 1813/6250 |
| b | 20783/200000 | 6143/20000 | 20783/200000 | 6143/20000 |
| c | 135501/250000 | 494639/500000 | 135501/250000 | 494639/500000 |
| e | 105041/1000000 | 59/125 | 105041/1000000 | 59/125 |
| f | 105041/1000000 | 276481/500000 | 105041/1000000 | 276481/500000 |
| h | 797891/1000000 | 1 | 797891/1000000 | 1 |
| p | 98621/500000 | 30439/50000 | 98621/500000 | 30439/50000 |
| q | 145307/500000 | 36661/62500 | 145307/500000 | 36661/62500 |
| u | 217779/500000 | 904097/1000000 | 217779/500000 | 904097/1000000 |
| v | 243059/1000000 | 338513/500000 | 243059/1000000 | 338513/500000 |
| r | 814961/1000000 | 1 | 814961/1000000 | 1 |
| w | 28287/62500 | 1 | 28287/62500 | 1 |
| j | 383451/1000000 | 33847/62500 | 383451/1000000 | 33847/62500 |
| k | 238307/500000 | 8033/8963 | 238307/500000 | 8033/8963 |

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
| 0 | bound | `{"direction":"lo","ref":"623:1229","triangle":"FQS","value":"4987/40000"}` | `1 * u * k + -1 * u + -1 * f * k + -1 * v * j + 1 * f * v + 1 * j + -4987/40000` |
| 1 | bound | `{"direction":"lo","ref":"623:1307","triangle":"FPS","value":"198341/1000000"}` | `1 * p * k + -1 * p + -1 * f * k + -1 * q * j + 1 * f * q + 1 * j + -198341/1000000` |
| 2 | physical | `{"factor":0,"stage":623}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 3 | physical | `{"factor":10,"stage":623}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 4 | physical | `{"factor":108,"stage":623}` | `-1/1 * f * k + 1/1 * e * f + 1/1 * k + 1/1 * j + -1093/1000 + -1/1 * e * j` |
| 5 | physical | `{"factor":115,"stage":623}` | `-1/1 * p * k + 1/1 * e * p + 1/1 * k + 1/1 * q * j + -1/1 * q + -1/1 * e * j + -279/1000` |
| 6 | physical | `{"factor":117,"stage":623}` | `-1/1 * u * k + 1/1 * e * u + 1/1 * k + 1/1 * v * j + -1/1 * v + -1/1 * e * j + -93/1000` |
| 7 | physical | `{"factor":119,"stage":623}` | `-1/1 * f * q + -1/1 * h * p + 1/1 * f * h + 1/1 * p + -93/1000` |
| 8 | physical | `{"factor":1610,"stage":623}` | `-1/1 * q + -1/1 * h * p + 1/1 * h + 1/1 * e * p + -309281/1000000` |
| 9 | physical | `{"factor":44,"stage":623}` | `-1/1 * p * k + 1/1 * a * p + 1/1 * q * j + -1/1 * a * j + -93/1000` |
| 10 | physical | `{"factor":67,"stage":623}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 11 | physical | `{"factor":86,"stage":623}` | `1/1 * v + -1/1 * c * v + -1/1 * e * u + 1/1 * c * e + -93/1000` |
| 12 | physical | `{"factor":92,"stage":623}` | `-1/1 * f * v + 1/1 * c * v + 1/1 * u + -1/1 * c + -93/1000` |
| 13 | coordinate | `{"box":1725,"direction":"hi","value":"1813/6250","variable":"a"}` | `1813/6250 + -1 * a` |
| 14 | coordinate | `{"box":1725,"direction":"hi","value":"6143/20000","variable":"b"}` | `6143/20000 + -1 * b` |
| 15 | coordinate | `{"box":1725,"direction":"hi","value":"33847/62500","variable":"j"}` | `33847/62500 + -1 * j` |
| 16 | coordinate | `{"box":1725,"direction":"hi","value":"8033/8963","variable":"k"}` | `8033/8963 + -1 * k` |
| 17 | coordinate | `{"box":1725,"direction":"hi","value":"494639/500000","variable":"c"}` | `494639/500000 + -1 * c` |
| 18 | coordinate | `{"box":1725,"direction":"hi","value":"59/125","variable":"e"}` | `59/125 + -1 * e` |
| 19 | coordinate | `{"box":1725,"direction":"hi","value":"276481/500000","variable":"f"}` | `276481/500000 + -1 * f` |
| 20 | coordinate | `{"box":1725,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 21 | coordinate | `{"box":1725,"direction":"hi","value":"30439/50000","variable":"p"}` | `30439/50000 + -1 * p` |
| 22 | coordinate | `{"box":1725,"direction":"hi","value":"36661/62500","variable":"q"}` | `36661/62500 + -1 * q` |
| 23 | coordinate | `{"box":1725,"direction":"lo","value":"105041/1000000","variable":"a"}` | `-105041/1000000 + 1 * a` |
| 24 | coordinate | `{"box":1725,"direction":"lo","value":"20783/200000","variable":"b"}` | `-20783/200000 + 1 * b` |
| 25 | coordinate | `{"box":1725,"direction":"lo","value":"383451/1000000","variable":"j"}` | `-383451/1000000 + 1 * j` |
| 26 | coordinate | `{"box":1725,"direction":"lo","value":"238307/500000","variable":"k"}` | `-238307/500000 + 1 * k` |
| 27 | coordinate | `{"box":1725,"direction":"lo","value":"135501/250000","variable":"c"}` | `-135501/250000 + 1 * c` |
| 28 | coordinate | `{"box":1725,"direction":"lo","value":"105041/1000000","variable":"e"}` | `-105041/1000000 + 1 * e` |
| 29 | coordinate | `{"box":1725,"direction":"lo","value":"105041/1000000","variable":"f"}` | `-105041/1000000 + 1 * f` |
| 30 | coordinate | `{"box":1725,"direction":"lo","value":"797891/1000000","variable":"h"}` | `-797891/1000000 + 1 * h` |
| 31 | coordinate | `{"box":1725,"direction":"lo","value":"98621/500000","variable":"p"}` | `-98621/500000 + 1 * p` |
| 32 | coordinate | `{"box":1725,"direction":"lo","value":"145307/500000","variable":"q"}` | `-145307/500000 + 1 * q` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 28031000000 | 2 |
| 1 | 40104000000 | 3 |
| 2 | 94776000000 | 9 |
| 3 | 49545000000 | 10 |
| 4 | 3290000000 | 11 |
| 5 | 3290000000 | 12 |
| 6 | 4138000000 | 4 |
| 7 | 5620000000 | 8 |
| 8 | 3696000000 | 5 |
| 9 | 3290000000 | 6 |
| 10 | 48928000000 | 7 |
| 11 | 98473000000 | 1 |
| 12 | 3290000000 | 0 |
| 13 | 68135000000 | 23, 24 |
| 14 | 28031000000 | 17, 23 |
| 15 | 89648000000 | 22, 24 |
| 16 | 134880000000 | 13, 31 |
| 17 | 94776000000 | 13, 15 |
| 18 | 3290000000 | 17, 28 |
| 19 | 1110000000 | 19, 28 |
| 20 | 3028000000 | 18, 29 |
| 21 | 9316000000 | 18, 31 |
| 22 | 11124000000 | 15, 18 |
| 23 | 48928000000 | 20, 29 |
| 24 | 105901000000 | 26, 29 |
| 25 | 54548000000 | 30, 31 |
| 26 | 4071928299 | 23 |
| 27 | 4116603287 | 24 |
| 28 | 1000000 | 14, 32 |
| 29 | 290614 | 14 |
| 30 | 307150 | 22 |
| 31 | 1000000 | 21, 26 |
| 32 | 476614 | 21 |
| 33 | 766880 | 16 |
| 34 | 1000000 | 25, 32 |
| 35 | 611531 | 32 |
| 36 | 290614 | 25 |
| 37 | 215868 | 31 |
| 38 | 10839 | 27 |
| 39 | 559704 | 29 |
| 40 | 105041 | 26 |
| 41 | 105041 | 18 |
| 42 | 472000 | 19 |
| 43 | 73157849920 | 15 |
| 44 | 289432 | 20 |
| 45 | 246429 | 28 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -447173494485598053/112037500 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -447173494485598053/112037500 | 1 | -447173494485598053/112037500 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1725 | -447173494485598053/112037500 |

## Stage 1726

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR+/EHQ+/CFQ-/APS- |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR+/EHQ+/CFQ-/APS-:H |
| Index | 0 |
| Context | 406 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1724 |
| Coordinate cut | j high 33847/62500 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 105041/1000000 | 1813/6250 | 105041/1000000 | 1813/6250 |
| b | 20783/200000 | 6143/20000 | 20783/200000 | 6143/20000 |
| c | 135501/250000 | 494639/500000 | 135501/250000 | 494639/500000 |
| e | 105041/1000000 | 59/125 | 105041/1000000 | 59/125 |
| f | 105041/1000000 | 276481/500000 | 105041/1000000 | 276481/500000 |
| h | 797891/1000000 | 1 | 797891/1000000 | 1 |
| p | 98621/500000 | 30439/50000 | 98621/500000 | 30439/50000 |
| q | 145307/500000 | 36661/62500 | 145307/500000 | 36661/62500 |
| u | 217779/500000 | 904097/1000000 | 217779/500000 | 904097/1000000 |
| v | 243059/1000000 | 338513/500000 | 243059/1000000 | 338513/500000 |
| r | 814961/1000000 | 1 | 814961/1000000 | 1 |
| w | 28287/62500 | 1 | 28287/62500 | 1 |
| j | 33847/62500 | 179217/200000 | 33847/62500 | 179217/200000 |
| k | 238307/500000 | 8033/8963 | 238307/500000 | 8033/8963 |

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


## Stage 1727

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR+/EHQ+/CFQ-/APS- |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR+/EHQ+/CFQ-/APS-:HL |
| Index | 0 |
| Context | 406 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1726 |
| Coordinate cut | u low 19347/25000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 105041/1000000 | 1813/6250 | 105041/1000000 | 1813/6250 |
| b | 20783/200000 | 6143/20000 | 20783/200000 | 6143/20000 |
| c | 135501/250000 | 494639/500000 | 135501/250000 | 494639/500000 |
| e | 105041/1000000 | 59/125 | 105041/1000000 | 59/125 |
| f | 105041/1000000 | 276481/500000 | 105041/1000000 | 276481/500000 |
| h | 797891/1000000 | 1 | 797891/1000000 | 1 |
| p | 98621/500000 | 30439/50000 | 98621/500000 | 30439/50000 |
| q | 145307/500000 | 36661/62500 | 145307/500000 | 36661/62500 |
| u | 217779/500000 | 19347/25000 | 217779/500000 | 19347/25000 |
| v | 243059/1000000 | 338513/500000 | 243059/1000000 | 338513/500000 |
| r | 814961/1000000 | 1 | 814961/1000000 | 1 |
| w | 28287/62500 | 1 | 28287/62500 | 1 |
| j | 33847/62500 | 179217/200000 | 33847/62500 | 179217/200000 |
| k | 238307/500000 | 8033/8963 | 238307/500000 | 8033/8963 |

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


## Stage 1728

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR+/EHQ+/CFQ-/APS- |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR+/EHQ+/CFQ-/APS-:HLL |
| Index | 0 |
| Context | 406 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1727 |
| Coordinate cut | v low 519527/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 105041/1000000 | 1813/6250 | 105041/1000000 | 1813/6250 |
| b | 20783/200000 | 6143/20000 | 20783/200000 | 6143/20000 |
| c | 135501/250000 | 494639/500000 | 135501/250000 | 494639/500000 |
| e | 105041/1000000 | 59/125 | 105041/1000000 | 59/125 |
| f | 105041/1000000 | 276481/500000 | 105041/1000000 | 276481/500000 |
| h | 797891/1000000 | 1 | 797891/1000000 | 1 |
| p | 98621/500000 | 30439/50000 | 98621/500000 | 30439/50000 |
| q | 145307/500000 | 36661/62500 | 145307/500000 | 36661/62500 |
| u | 217779/500000 | 19347/25000 | 217779/500000 | 19347/25000 |
| v | 243059/1000000 | 519527/1000000 | 243059/1000000 | 519527/1000000 |
| r | 814961/1000000 | 1 | 814961/1000000 | 1 |
| w | 28287/62500 | 1 | 28287/62500 | 1 |
| j | 33847/62500 | 179217/200000 | 33847/62500 | 179217/200000 |
| k | 238307/500000 | 8033/8963 | 238307/500000 | 8033/8963 |

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


## Stage 1729

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR+/EHQ+/CFQ-/APS- |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR+/EHQ+/CFQ-/APS-:HLLL |
| Index | 0 |
| Context | 406 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1728 |
| Coordinate cut | p low 113009/250000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 105041/1000000 | 1813/6250 | 105041/1000000 | 1813/6250 |
| b | 20783/200000 | 6143/20000 | 20783/200000 | 6143/20000 |
| c | 135501/250000 | 494639/500000 | 135501/250000 | 494639/500000 |
| e | 105041/1000000 | 59/125 | 105041/1000000 | 59/125 |
| f | 105041/1000000 | 276481/500000 | 105041/1000000 | 276481/500000 |
| h | 797891/1000000 | 1 | 797891/1000000 | 1 |
| p | 98621/500000 | 113009/250000 | 98621/500000 | 113009/250000 |
| q | 145307/500000 | 36661/62500 | 145307/500000 | 36661/62500 |
| u | 217779/500000 | 19347/25000 | 217779/500000 | 19347/25000 |
| v | 243059/1000000 | 519527/1000000 | 243059/1000000 | 519527/1000000 |
| r | 814961/1000000 | 1 | 814961/1000000 | 1 |
| w | 28287/62500 | 1 | 28287/62500 | 1 |
| j | 33847/62500 | 179217/200000 | 33847/62500 | 179217/200000 |
| k | 238307/500000 | 8033/8963 | 238307/500000 | 8033/8963 |

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
