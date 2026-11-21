# BITT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 1765

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR+/EHQ+/CFQ-/APS- |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR+/EHQ+/CFQ-/APS-:HLLLHHHLLH |
| Index | 0 |
| Context | 406 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1753 |
| Coordinate cut | e high 350367/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 105041/1000000 | 1813/6250 | 105041/1000000 | 1813/6250 |
| b | 20783/200000 | 6143/20000 | 20783/200000 | 6143/20000 |
| c | 765641/1000000 | 494639/500000 | 765641/1000000 | 494639/500000 |
| e | 350367/1000000 | 59/125 | 350367/1000000 | 59/125 |
| f | 105041/1000000 | 51897/125000 | 105041/1000000 | 51897/125000 |
| h | 797891/1000000 | 1 | 797891/1000000 | 1 |
| p | 98621/500000 | 113009/250000 | 98621/500000 | 113009/250000 |
| q | 145307/500000 | 2047/4000 | 145307/500000 | 2047/4000 |
| u | 516657/1000000 | 19347/25000 | 516657/1000000 | 19347/25000 |
| v | 243059/1000000 | 519527/1000000 | 243059/1000000 | 519527/1000000 |
| r | 814961/1000000 | 1 | 814961/1000000 | 1 |
| w | 283679/500000 | 1 | 283679/500000 | 1 |
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


### Coordinate certificate sources

| Source | Kind | Source witness | Polynomial |
| --- | --- | --- | --- |
| 0 | bound | `{"direction":"lo","ref":"623:1278","triangle":"EQR","value":"54097/500000"}` | `-1 * u * w + 1 * e * u + 1 * w + 1 * v * r + -1 * v + -1 * e * r + -54097/500000` |
| 1 | bound | `{"direction":"lo","ref":"623:1305","triangle":"EPR","value":"330251/1000000"}` | `-1 * p * w + 1 * e * p + 1 * w + 1 * q * r + -1 * q + -1 * e * r + -330251/1000000` |
| 2 | physical | `{"factor":0,"stage":623}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 3 | physical | `{"factor":10,"stage":623}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 4 | physical | `{"factor":110,"stage":623}` | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -93/1000` |
| 5 | physical | `{"factor":113,"stage":623}` | `-1/1 * p * v + 1/1 * e * p + 1/1 * v + 1/1 * q * u + -1/1 * q + -1/1 * e * u + -93/1000` |
| 6 | physical | `{"factor":142,"stage":623}` | `1/1 * f + -1/1 * e` |
| 7 | physical | `{"factor":36,"stage":623}` | `-1/1 * f * w + 1/1 * a * f + 1/1 * r + -1/1 * a * r + -13857/20000` |
| 8 | physical | `{"factor":67,"stage":623}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 9 | physical | `{"factor":79,"stage":623}` | `1/1 * u * w + -1/1 * b * w + -1/1 * v * r + 1/1 * b * v + -93/1000` |
| 10 | physical | `{"factor":88,"stage":623}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 11 | coordinate | `{"box":1765,"direction":"hi","value":"1813/6250","variable":"a"}` | `1813/6250 + -1 * a` |
| 12 | coordinate | `{"box":1765,"direction":"hi","value":"6143/20000","variable":"b"}` | `6143/20000 + -1 * b` |
| 13 | coordinate | `{"box":1765,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 14 | coordinate | `{"box":1765,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 15 | coordinate | `{"box":1765,"direction":"hi","value":"494639/500000","variable":"c"}` | `494639/500000 + -1 * c` |
| 16 | coordinate | `{"box":1765,"direction":"hi","value":"51897/125000","variable":"f"}` | `51897/125000 + -1 * f` |
| 17 | coordinate | `{"box":1765,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 18 | coordinate | `{"box":1765,"direction":"hi","value":"113009/250000","variable":"p"}` | `113009/250000 + -1 * p` |
| 19 | coordinate | `{"box":1765,"direction":"hi","value":"2047/4000","variable":"q"}` | `2047/4000 + -1 * q` |
| 20 | coordinate | `{"box":1765,"direction":"hi","value":"19347/25000","variable":"u"}` | `19347/25000 + -1 * u` |
| 21 | coordinate | `{"box":1765,"direction":"hi","value":"519527/1000000","variable":"v"}` | `519527/1000000 + -1 * v` |
| 22 | coordinate | `{"box":1765,"direction":"lo","value":"105041/1000000","variable":"a"}` | `-105041/1000000 + 1 * a` |
| 23 | coordinate | `{"box":1765,"direction":"lo","value":"20783/200000","variable":"b"}` | `-20783/200000 + 1 * b` |
| 24 | coordinate | `{"box":1765,"direction":"lo","value":"814961/1000000","variable":"r"}` | `-814961/1000000 + 1 * r` |
| 25 | coordinate | `{"box":1765,"direction":"lo","value":"283679/500000","variable":"w"}` | `-283679/500000 + 1 * w` |
| 26 | coordinate | `{"box":1765,"direction":"lo","value":"765641/1000000","variable":"c"}` | `-765641/1000000 + 1 * c` |
| 27 | coordinate | `{"box":1765,"direction":"lo","value":"350367/1000000","variable":"e"}` | `-350367/1000000 + 1 * e` |
| 28 | coordinate | `{"box":1765,"direction":"lo","value":"98621/500000","variable":"p"}` | `-98621/500000 + 1 * p` |
| 29 | coordinate | `{"box":1765,"direction":"lo","value":"145307/500000","variable":"q"}` | `-145307/500000 + 1 * q` |
| 30 | coordinate | `{"box":1765,"direction":"lo","value":"516657/1000000","variable":"u"}` | `-516657/1000000 + 1 * u` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 51230000000 | 2 |
| 1 | 20938000000 | 3 |
| 2 | 90020000000 | 7 |
| 3 | 6383000000 | 8 |
| 4 | 372000000 | 9 |
| 5 | 24799000000 | 10 |
| 6 | 124000000 | 4 |
| 7 | 835000000 | 5 |
| 8 | 38902000000 | 1 |
| 9 | 372000000 | 0 |
| 10 | 83831000000 | 6 |
| 11 | 72168000000 | 22, 23 |
| 12 | 51230000000 | 15, 22 |
| 13 | 90020000000 | 16, 22 |
| 14 | 27321000000 | 19, 23 |
| 15 | 20938000000 | 18, 22 |
| 16 | 372000000 | 21, 23 |
| 17 | 372000000 | 23, 25 |
| 18 | 90020000000 | 11, 13 |
| 19 | 24799000000 | 15, 27 |
| 20 | 24799000000 | 25, 26 |
| 21 | 39737000000 | 18, 27 |
| 22 | 339000000 | 27, 30 |
| 23 | 64073000000 | 24, 27 |
| 24 | 6383000000 | 16, 19 |
| 25 | 90020000000 | 14, 16 |
| 26 | 124000000 | 17, 20 |
| 27 | 835000000 | 18, 21 |
| 28 | 835000000 | 20, 29 |
| 29 | 38902000000 | 25, 28 |
| 30 | 38902000000 | 13, 29 |
| 31 | 52763399437 | 13 |
| 32 | 284024 | 28 |
| 33 | 129730 | 12 |
| 34 | 39343 | 25 |
| 35 | 206320 | 21 |
| 36 | 28038880 | 17 |
| 37 | 183107 | 19 |
| 38 | 290570 | 16 |
| 39 | 93727483222 | 27 |
| 40 | 247508 | 11 |
| 41 | 90621 | 15 |
| 42 | 111723 | 30 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -3711994404284909/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -3711994404284909/1000000 | 1 | -3711994404284909/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1765 | -3711994404284909/1000000 |

## Stage 1766

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR+/EHQ+/CFQ-/APS- |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR+/EHQ+/CFQ-/APS-:HLLLHHHLH |
| Index | 0 |
| Context | 406 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1752 |
| Coordinate cut | q high 2047/4000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 105041/1000000 | 1813/6250 | 105041/1000000 | 1813/6250 |
| b | 20783/200000 | 6143/20000 | 20783/200000 | 6143/20000 |
| c | 765641/1000000 | 494639/500000 | 765641/1000000 | 494639/500000 |
| e | 105041/1000000 | 59/125 | 105041/1000000 | 59/125 |
| f | 105041/1000000 | 51897/125000 | 105041/1000000 | 51897/125000 |
| h | 797891/1000000 | 1 | 797891/1000000 | 1 |
| p | 98621/500000 | 113009/250000 | 98621/500000 | 113009/250000 |
| q | 2047/4000 | 36661/62500 | 2047/4000 | 36661/62500 |
| u | 516657/1000000 | 19347/25000 | 516657/1000000 | 19347/25000 |
| v | 243059/1000000 | 519527/1000000 | 243059/1000000 | 519527/1000000 |
| r | 814961/1000000 | 1 | 814961/1000000 | 1 |
| w | 283679/500000 | 1 | 283679/500000 | 1 |
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


### Coordinate certificate sources

| Source | Kind | Source witness | Polynomial |
| --- | --- | --- | --- |
| 0 | physical | `{"factor":0,"stage":623}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 1 | physical | `{"factor":10,"stage":623}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 2 | physical | `{"factor":110,"stage":623}` | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -93/1000` |
| 3 | physical | `{"factor":113,"stage":623}` | `-1/1 * p * v + 1/1 * e * p + 1/1 * v + 1/1 * q * u + -1/1 * q + -1/1 * e * u + -93/1000` |
| 4 | physical | `{"factor":121,"stage":623}` | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 5 | physical | `{"factor":142,"stage":623}` | `1/1 * f + -1/1 * e` |
| 6 | physical | `{"factor":1610,"stage":623}` | `-1/1 * q + -1/1 * h * p + 1/1 * h + 1/1 * e * p + -309281/1000000` |
| 7 | physical | `{"factor":36,"stage":623}` | `-1/1 * f * w + 1/1 * a * f + 1/1 * r + -1/1 * a * r + -13857/20000` |
| 8 | physical | `{"factor":79,"stage":623}` | `1/1 * u * w + -1/1 * b * w + -1/1 * v * r + 1/1 * b * v + -93/1000` |
| 9 | physical | `{"factor":92,"stage":623}` | `-1/1 * f * v + 1/1 * c * v + 1/1 * u + -1/1 * c + -93/1000` |
| 10 | coordinate | `{"box":1766,"direction":"hi","value":"1813/6250","variable":"a"}` | `1813/6250 + -1 * a` |
| 11 | coordinate | `{"box":1766,"direction":"hi","value":"6143/20000","variable":"b"}` | `6143/20000 + -1 * b` |
| 12 | coordinate | `{"box":1766,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 13 | coordinate | `{"box":1766,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 14 | coordinate | `{"box":1766,"direction":"hi","value":"59/125","variable":"e"}` | `59/125 + -1 * e` |
| 15 | coordinate | `{"box":1766,"direction":"hi","value":"51897/125000","variable":"f"}` | `51897/125000 + -1 * f` |
| 16 | coordinate | `{"box":1766,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 17 | coordinate | `{"box":1766,"direction":"hi","value":"113009/250000","variable":"p"}` | `113009/250000 + -1 * p` |
| 18 | coordinate | `{"box":1766,"direction":"hi","value":"19347/25000","variable":"u"}` | `19347/25000 + -1 * u` |
| 19 | coordinate | `{"box":1766,"direction":"hi","value":"519527/1000000","variable":"v"}` | `519527/1000000 + -1 * v` |
| 20 | coordinate | `{"box":1766,"direction":"lo","value":"105041/1000000","variable":"a"}` | `-105041/1000000 + 1 * a` |
| 21 | coordinate | `{"box":1766,"direction":"lo","value":"20783/200000","variable":"b"}` | `-20783/200000 + 1 * b` |
| 22 | coordinate | `{"box":1766,"direction":"lo","value":"814961/1000000","variable":"r"}` | `-814961/1000000 + 1 * r` |
| 23 | coordinate | `{"box":1766,"direction":"lo","value":"283679/500000","variable":"w"}` | `-283679/500000 + 1 * w` |
| 24 | coordinate | `{"box":1766,"direction":"lo","value":"765641/1000000","variable":"c"}` | `-765641/1000000 + 1 * c` |
| 25 | coordinate | `{"box":1766,"direction":"lo","value":"105041/1000000","variable":"e"}` | `-105041/1000000 + 1 * e` |
| 26 | coordinate | `{"box":1766,"direction":"lo","value":"105041/1000000","variable":"f"}` | `-105041/1000000 + 1 * f` |
| 27 | coordinate | `{"box":1766,"direction":"lo","value":"98621/500000","variable":"p"}` | `-98621/500000 + 1 * p` |
| 28 | coordinate | `{"box":1766,"direction":"lo","value":"2047/4000","variable":"q"}` | `-2047/4000 + 1 * q` |
| 29 | coordinate | `{"box":1766,"direction":"lo","value":"516657/1000000","variable":"u"}` | `-516657/1000000 + 1 * u` |
| 30 | coordinate | `{"box":1766,"direction":"lo","value":"243059/1000000","variable":"v"}` | `-243059/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 4472000000 | 0 |
| 1 | 3223000000 | 1 |
| 2 | 10208000000 | 7 |
| 3 | 17584000000 | 8 |
| 4 | 2700000000 | 9 |
| 5 | 44486000000 | 6 |
| 6 | 76078000000 | 2 |
| 7 | 117536000000 | 3 |
| 8 | 7273000000 | 4 |
| 9 | 10538000000 | 5 |
| 10 | 7695000000 | 20, 21 |
| 11 | 4472000000 | 10, 24 |
| 12 | 10208000000 | 15, 20 |
| 13 | 3223000000 | 11, 28 |
| 14 | 3223000000 | 17, 20 |
| 15 | 17584000000 | 19, 21 |
| 16 | 17584000000 | 21, 23 |
| 17 | 10208000000 | 20, 22 |
| 18 | 2700000000 | 19, 24 |
| 19 | 162022000000 | 14, 27 |
| 20 | 41458000000 | 25, 29 |
| 21 | 7273000000 | 16, 26 |
| 22 | 2700000000 | 15, 19 |
| 23 | 17481000000 | 13, 15 |
| 24 | 44486000000 | 16, 17 |
| 25 | 76078000000 | 16, 18 |
| 26 | 7273000000 | 12, 16 |
| 27 | 103940000000 | 27, 30 |
| 28 | 13596000000 | 17, 19 |
| 29 | 117536000000 | 18, 28 |
| 30 | 17584000000 | 13, 29 |
| 31 | 17584000000 | 12, 19 |
| 32 | 103915 | 20 |
| 33 | 105041 | 21 |
| 34 | 378704 | 12 |
| 35 | 258222 | 18 |
| 36 | 39340 | 24 |
| 37 | 70073295870 | 28 |
| 38 | 35070447057 | 16 |
| 39 | 197242 | 14 |
| 40 | 472000 | 17 |
| 41 | 281924 | 19 |
| 42 | 464372 | 26 |
| 43 | 219824 | 25 |
| 44 | 331290 | 10 |
| 45 | 124492 | 11 |
| 46 | 582409 | 27 |
| 47 | 36328 | 23 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -570671304217913/200000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -570671304217913/200000 | 1 | -570671304217913/200000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1766 | -570671304217913/200000 |

## Stage 1767

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR+/EHQ+/CFQ-/APS- |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR+/EHQ+/CFQ-/APS-:HLLLHHHH |
| Index | 0 |
| Context | 406 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1751 |
| Coordinate cut | f high 51897/125000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 105041/1000000 | 1813/6250 | 105041/1000000 | 1813/6250 |
| b | 20783/200000 | 6143/20000 | 20783/200000 | 6143/20000 |
| c | 765641/1000000 | 494639/500000 | 765641/1000000 | 494639/500000 |
| e | 105041/1000000 | 59/125 | 105041/1000000 | 59/125 |
| f | 51897/125000 | 276481/500000 | 51897/125000 | 276481/500000 |
| h | 797891/1000000 | 1 | 797891/1000000 | 1 |
| p | 98621/500000 | 113009/250000 | 98621/500000 | 113009/250000 |
| q | 145307/500000 | 36661/62500 | 145307/500000 | 36661/62500 |
| u | 516657/1000000 | 19347/25000 | 516657/1000000 | 19347/25000 |
| v | 243059/1000000 | 519527/1000000 | 243059/1000000 | 519527/1000000 |
| r | 814961/1000000 | 1 | 814961/1000000 | 1 |
| w | 283679/500000 | 1 | 283679/500000 | 1 |
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


### Coordinate certificate sources

| Source | Kind | Source witness | Polynomial |
| --- | --- | --- | --- |
| 0 | bound | `{"direction":"lo","ref":"623:1272","triangle":"FQR","value":"12427/40000"}` | `1 * u * w + -1 * u + -1 * f * w + -1 * v * r + 1 * f * v + 1 * r + -12427/40000` |
| 1 | bound | `{"direction":"lo","ref":"623:1278","triangle":"EQR","value":"54097/500000"}` | `-1 * u * w + 1 * e * u + 1 * w + 1 * v * r + -1 * v + -1 * e * r + -54097/500000` |
| 2 | physical | `{"factor":0,"stage":623}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 3 | physical | `{"factor":10,"stage":623}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 4 | physical | `{"factor":110,"stage":623}` | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -93/1000` |
| 5 | physical | `{"factor":113,"stage":623}` | `-1/1 * p * v + 1/1 * e * p + 1/1 * v + 1/1 * q * u + -1/1 * q + -1/1 * e * u + -93/1000` |
| 6 | physical | `{"factor":128,"stage":623}` | `-1/1 * r * k + 1/1 * r + 1/1 * f * k + 1/1 * w * j + -1/1 * f * w + -1/1 * j + -93/1000` |
| 7 | physical | `{"factor":36,"stage":623}` | `-1/1 * f * w + 1/1 * a * f + 1/1 * r + -1/1 * a * r + -13857/20000` |
| 8 | physical | `{"factor":44,"stage":623}` | `-1/1 * p * k + 1/1 * a * p + 1/1 * q * j + -1/1 * a * j + -93/1000` |
| 9 | physical | `{"factor":47,"stage":623}` | `1/1 * r * k + -1/1 * a * r + -1/1 * w * j + 1/1 * a * j + -93/1000` |
| 10 | physical | `{"factor":67,"stage":623}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 11 | physical | `{"factor":86,"stage":623}` | `1/1 * v + -1/1 * c * v + -1/1 * e * u + 1/1 * c * e + -93/1000` |
| 12 | physical | `{"factor":92,"stage":623}` | `-1/1 * f * v + 1/1 * c * v + 1/1 * u + -1/1 * c + -93/1000` |
| 13 | coordinate | `{"box":1767,"direction":"hi","value":"1813/6250","variable":"a"}` | `1813/6250 + -1 * a` |
| 14 | coordinate | `{"box":1767,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 15 | coordinate | `{"box":1767,"direction":"hi","value":"179217/200000","variable":"j"}` | `179217/200000 + -1 * j` |
| 16 | coordinate | `{"box":1767,"direction":"hi","value":"8033/8963","variable":"k"}` | `8033/8963 + -1 * k` |
| 17 | coordinate | `{"box":1767,"direction":"hi","value":"59/125","variable":"e"}` | `59/125 + -1 * e` |
| 18 | coordinate | `{"box":1767,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 19 | coordinate | `{"box":1767,"direction":"hi","value":"113009/250000","variable":"p"}` | `113009/250000 + -1 * p` |
| 20 | coordinate | `{"box":1767,"direction":"hi","value":"36661/62500","variable":"q"}` | `36661/62500 + -1 * q` |
| 21 | coordinate | `{"box":1767,"direction":"hi","value":"19347/25000","variable":"u"}` | `19347/25000 + -1 * u` |
| 22 | coordinate | `{"box":1767,"direction":"hi","value":"519527/1000000","variable":"v"}` | `519527/1000000 + -1 * v` |
| 23 | coordinate | `{"box":1767,"direction":"lo","value":"105041/1000000","variable":"a"}` | `-105041/1000000 + 1 * a` |
| 24 | coordinate | `{"box":1767,"direction":"lo","value":"20783/200000","variable":"b"}` | `-20783/200000 + 1 * b` |
| 25 | coordinate | `{"box":1767,"direction":"lo","value":"814961/1000000","variable":"r"}` | `-814961/1000000 + 1 * r` |
| 26 | coordinate | `{"box":1767,"direction":"lo","value":"283679/500000","variable":"w"}` | `-283679/500000 + 1 * w` |
| 27 | coordinate | `{"box":1767,"direction":"lo","value":"33847/62500","variable":"j"}` | `-33847/62500 + 1 * j` |
| 28 | coordinate | `{"box":1767,"direction":"lo","value":"238307/500000","variable":"k"}` | `-238307/500000 + 1 * k` |
| 29 | coordinate | `{"box":1767,"direction":"lo","value":"765641/1000000","variable":"c"}` | `-765641/1000000 + 1 * c` |
| 30 | coordinate | `{"box":1767,"direction":"lo","value":"105041/1000000","variable":"e"}` | `-105041/1000000 + 1 * e` |
| 31 | coordinate | `{"box":1767,"direction":"lo","value":"51897/125000","variable":"f"}` | `-51897/125000 + 1 * f` |
| 32 | coordinate | `{"box":1767,"direction":"lo","value":"98621/500000","variable":"p"}` | `-98621/500000 + 1 * p` |
| 33 | coordinate | `{"box":1767,"direction":"lo","value":"145307/500000","variable":"q"}` | `-145307/500000 + 1 * q` |
| 34 | coordinate | `{"box":1767,"direction":"lo","value":"243059/1000000","variable":"v"}` | `-243059/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 516725913000000 | 2 |
| 1 | 12503385000000 | 3 |
| 2 | 677459392000000 | 7 |
| 3 | 23554764000000 | 8 |
| 4 | 6498175000000 | 9 |
| 5 | 17746740000000 | 10 |
| 6 | 692427602000000 | 11 |
| 7 | 692427602000000 | 12 |
| 8 | 180505857000000 | 4 |
| 9 | 74670753000000 | 5 |
| 10 | 486269639000000 | 1 |
| 11 | 486269639000000 | 0 |
| 12 | 3163939000000 | 6 |
| 13 | 516725913000000 | 13, 29 |
| 14 | 677459392000000 | 13, 31 |
| 15 | 30250125000000 | 20, 24 |
| 16 | 36058149000000 | 19, 23 |
| 17 | 683948604000000 | 13, 14 |
| 18 | 17056589000000 | 23, 27 |
| 19 | 692427602000000 | 17, 29 |
| 20 | 74670753000000 | 19, 30 |
| 21 | 100322859000000 | 17, 21 |
| 22 | 486269639000000 | 14, 17 |
| 23 | 17746740000000 | 31, 33 |
| 24 | 206157963000000 | 31, 34 |
| 25 | 1166892970000000 | 26, 31 |
| 26 | 3163939000000 | 16, 31 |
| 27 | 180505857000000 | 18, 21 |
| 28 | 74670753000000 | 32, 34 |
| 29 | 74670753000000 | 21, 33 |
| 30 | 23554764000000 | 28, 32 |
| 31 | 23554764000000 | 15, 33 |
| 32 | 3334236000000 | 14, 28 |
| 33 | 3334236000000 | 26, 27 |
| 34 | 529229298000000 | 23, 24 |
| 35 | 55002166997113 | 23 |
| 36 | 55593517369218 | 24 |
| 37 | 740563032900584 | 14 |
| 38 | 8963000000 | 23, 25 |
| 39 | 941482483 | 25 |
| 40 | 1885752459 | 19 |
| 41 | 2811890286 | 22 |
| 42 | 82764342 | 21 |
| 43 | 215709921012960 | 29 |
| 44 | 40815984384840 | 18 |
| 45 | 2058756285 | 33 |
| 46 | 1978886992 | 26 |
| 47 | 1941448541 | 27 |
| 48 | 5372843461 | 13 |
| 49 | 517958991669077 | 31 |
| 50 | 2662996930 | 30 |
| 51 | 1838777376 | 16 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -53664351323154950717/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -53664351323154950717/1000000 | 1 | -53664351323154950717/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1767 | -53664351323154950717/1000000 |

## Stage 1768

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR+/EHQ+/CFQ-/APS- |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR+/EHQ+/CFQ-/APS-:HLLH |
| Index | 0 |
| Context | 406 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1728 |
| Coordinate cut | p high 113009/250000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 105041/1000000 | 1813/6250 | 105041/1000000 | 1813/6250 |
| b | 20783/200000 | 6143/20000 | 20783/200000 | 6143/20000 |
| c | 135501/250000 | 494639/500000 | 135501/250000 | 494639/500000 |
| e | 105041/1000000 | 59/125 | 105041/1000000 | 59/125 |
| f | 105041/1000000 | 276481/500000 | 105041/1000000 | 276481/500000 |
| h | 797891/1000000 | 1 | 797891/1000000 | 1 |
| p | 113009/250000 | 30439/50000 | 113009/250000 | 30439/50000 |
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


### Coordinate certificate sources

| Source | Kind | Source witness | Polynomial |
| --- | --- | --- | --- |
| 0 | bound | `{"direction":"lo","ref":"623:1305","triangle":"EPR","value":"330251/1000000"}` | `-1 * p * w + 1 * e * p + 1 * w + 1 * q * r + -1 * q + -1 * e * r + -330251/1000000` |
| 1 | bound | `{"direction":"lo","ref":"623:253","triangle":"APR","value":"110547/1000000"}` | `-1 * p * w + 1 * a * p + 1 * q * r + -1 * a * r + -110547/1000000` |
| 2 | physical | `{"factor":1610,"stage":623}` | `-1/1 * q + -1/1 * h * p + 1/1 * h + 1/1 * e * p + -309281/1000000` |
| 3 | coordinate | `{"box":1768,"direction":"hi","value":"1813/6250","variable":"a"}` | `1813/6250 + -1 * a` |
| 4 | coordinate | `{"box":1768,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 5 | coordinate | `{"box":1768,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 6 | coordinate | `{"box":1768,"direction":"hi","value":"59/125","variable":"e"}` | `59/125 + -1 * e` |
| 7 | coordinate | `{"box":1768,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 8 | coordinate | `{"box":1768,"direction":"hi","value":"30439/50000","variable":"p"}` | `30439/50000 + -1 * p` |
| 9 | coordinate | `{"box":1768,"direction":"lo","value":"105041/1000000","variable":"a"}` | `-105041/1000000 + 1 * a` |
| 10 | coordinate | `{"box":1768,"direction":"lo","value":"814961/1000000","variable":"r"}` | `-814961/1000000 + 1 * r` |
| 11 | coordinate | `{"box":1768,"direction":"lo","value":"28287/62500","variable":"w"}` | `-28287/62500 + 1 * w` |
| 12 | coordinate | `{"box":1768,"direction":"lo","value":"105041/1000000","variable":"e"}` | `-105041/1000000 + 1 * e` |
| 13 | coordinate | `{"box":1768,"direction":"lo","value":"797891/1000000","variable":"h"}` | `-797891/1000000 + 1 * h` |
| 14 | coordinate | `{"box":1768,"direction":"lo","value":"113009/250000","variable":"p"}` | `-113009/250000 + 1 * p` |
| 15 | coordinate | `{"box":1768,"direction":"lo","value":"145307/500000","variable":"q"}` | `-145307/500000 + 1 * q` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 82476000000 | 1 |
| 1 | 82476000000 | 2 |
| 2 | 68038000000 | 0 |
| 3 | 82476000000 | 8, 9 |
| 4 | 66457000000 | 9, 10 |
| 5 | 16020000000 | 3, 4 |
| 6 | 150514000000 | 6, 14 |
| 7 | 68038000000 | 4, 6 |
| 8 | 82476000000 | 13, 14 |
| 9 | 150514000000 | 11, 14 |
| 10 | 150514000000 | 4, 15 |
| 11 | 1000000 | 3, 10 |
| 12 | 814961 | 3 |
| 13 | 290080 | 4 |
| 14 | 45193878864 | 7 |
| 15 | 253496 | 5 |
| 16 | 54222320888 | 14 |
| 17 | 19970123897 | 9 |
| 18 | 251741 | 10 |
| 19 | 253496 | 12 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -16648224542323861/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -16648224542323861/1000000 | 1 | -16648224542323861/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1768 | -16648224542323861/1000000 |

## Stage 1769

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR+/EHQ+/CFQ-/APS- |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR+/EHQ+/CFQ-/APS-:HLH |
| Index | 0 |
| Context | 406 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1727 |
| Coordinate cut | v high 519527/1000000 |

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
| v | 519527/1000000 | 338513/500000 | 519527/1000000 | 338513/500000 |
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


### Coordinate certificate sources

| Source | Kind | Source witness | Polynomial |
| --- | --- | --- | --- |
| 0 | physical | `{"factor":110,"stage":623}` | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -93/1000` |
| 1 | physical | `{"factor":142,"stage":623}` | `1/1 * f + -1/1 * e` |
| 2 | physical | `{"factor":36,"stage":623}` | `-1/1 * f * w + 1/1 * a * f + 1/1 * r + -1/1 * a * r + -13857/20000` |
| 3 | physical | `{"factor":70,"stage":623}` | `-1/1 * f * w + 1/1 * b * w + 1/1 * r + -1/1 * b + -13857/20000` |
| 4 | physical | `{"factor":79,"stage":623}` | `1/1 * u * w + -1/1 * b * w + -1/1 * v * r + 1/1 * b * v + -93/1000` |
| 5 | coordinate | `{"box":1769,"direction":"hi","value":"1813/6250","variable":"a"}` | `1813/6250 + -1 * a` |
| 6 | coordinate | `{"box":1769,"direction":"hi","value":"6143/20000","variable":"b"}` | `6143/20000 + -1 * b` |
| 7 | coordinate | `{"box":1769,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 8 | coordinate | `{"box":1769,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 9 | coordinate | `{"box":1769,"direction":"hi","value":"276481/500000","variable":"f"}` | `276481/500000 + -1 * f` |
| 10 | coordinate | `{"box":1769,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 11 | coordinate | `{"box":1769,"direction":"hi","value":"19347/25000","variable":"u"}` | `19347/25000 + -1 * u` |
| 12 | coordinate | `{"box":1769,"direction":"hi","value":"338513/500000","variable":"v"}` | `338513/500000 + -1 * v` |
| 13 | coordinate | `{"box":1769,"direction":"lo","value":"105041/1000000","variable":"a"}` | `-105041/1000000 + 1 * a` |
| 14 | coordinate | `{"box":1769,"direction":"lo","value":"20783/200000","variable":"b"}` | `-20783/200000 + 1 * b` |
| 15 | coordinate | `{"box":1769,"direction":"lo","value":"814961/1000000","variable":"r"}` | `-814961/1000000 + 1 * r` |
| 16 | coordinate | `{"box":1769,"direction":"lo","value":"28287/62500","variable":"w"}` | `-28287/62500 + 1 * w` |
| 17 | coordinate | `{"box":1769,"direction":"lo","value":"105041/1000000","variable":"e"}` | `-105041/1000000 + 1 * e` |
| 18 | coordinate | `{"box":1769,"direction":"lo","value":"217779/500000","variable":"u"}` | `-217779/500000 + 1 * u` |
| 19 | coordinate | `{"box":1769,"direction":"lo","value":"519527/1000000","variable":"v"}` | `-519527/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 59483000000 | 2 |
| 1 | 10744000000 | 3 |
| 2 | 87865000000 | 4 |
| 3 | 82673000000 | 0 |
| 4 | 63979000000 | 1 |
| 5 | 59483000000 | 9, 13 |
| 6 | 87865000000 | 6, 19 |
| 7 | 77122000000 | 14, 16 |
| 8 | 59483000000 | 5, 7 |
| 9 | 82673000000 | 11, 17 |
| 10 | 70227000000 | 8, 9 |
| 11 | 82673000000 | 10, 11 |
| 12 | 62516000000 | 8, 18 |
| 13 | 25350000000 | 11, 16 |
| 14 | 41366000000 | 15, 19 |
| 15 | 46499000000 | 7, 12 |
| 16 | 385504 | 7 |
| 17 | 1000000 | 6, 16 |
| 18 | 452592 | 6 |
| 19 | 514074 | 8 |
| 20 | 560369 | 14 |
| 21 | 1000000 | 16, 18 |
| 22 | 452592 | 18 |
| 23 | 435558 | 16 |
| 24 | 135895941976 | 19 |
| 25 | 18694018760 | 10 |
| 26 | 153803 | 9 |
| 27 | 18760 | 17 |
| 28 | 26591161354 | 13 |
| 29 | 261793 | 11 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -1366433377577737/200000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -1366433377577737/200000 | 1 | -1366433377577737/200000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1769 | -1366433377577737/200000 |
