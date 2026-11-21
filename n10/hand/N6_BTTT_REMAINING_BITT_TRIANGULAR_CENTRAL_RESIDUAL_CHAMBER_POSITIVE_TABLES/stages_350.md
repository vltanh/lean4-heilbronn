# BITT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 1750

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR+/EHQ+/CFQ-/APS- |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR+/EHQ+/CFQ-/APS-:HLLLHHLH |
| Index | 0 |
| Context | 406 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1734 |
| Coordinate cut | f high 408963/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 105041/1000000 | 1813/6250 | 105041/1000000 | 1813/6250 |
| b | 20783/200000 | 6143/20000 | 20783/200000 | 6143/20000 |
| c | 135501/250000 | 765641/1000000 | 135501/250000 | 765641/1000000 |
| e | 105041/1000000 | 59/125 | 105041/1000000 | 59/125 |
| f | 408963/1000000 | 276481/500000 | 408963/1000000 | 276481/500000 |
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
| 1 | physical | `{"factor":0,"stage":623}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 2 | physical | `{"factor":10,"stage":623}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 3 | physical | `{"factor":107,"stage":623}` | `-1/1 * f * w + 1/1 * e * f + 1/1 * w + 1/1 * r + -1279/1000 + -1/1 * e * r` |
| 4 | physical | `{"factor":108,"stage":623}` | `-1/1 * f * k + 1/1 * e * f + 1/1 * k + 1/1 * j + -1093/1000 + -1/1 * e * j` |
| 5 | physical | `{"factor":110,"stage":623}` | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -93/1000` |
| 6 | physical | `{"factor":113,"stage":623}` | `-1/1 * p * v + 1/1 * e * p + 1/1 * v + 1/1 * q * u + -1/1 * q + -1/1 * e * u + -93/1000` |
| 7 | physical | `{"factor":128,"stage":623}` | `-1/1 * r * k + 1/1 * r + 1/1 * f * k + 1/1 * w * j + -1/1 * f * w + -1/1 * j + -93/1000` |
| 8 | physical | `{"factor":36,"stage":623}` | `-1/1 * f * w + 1/1 * a * f + 1/1 * r + -1/1 * a * r + -13857/20000` |
| 9 | physical | `{"factor":44,"stage":623}` | `-1/1 * p * k + 1/1 * a * p + 1/1 * q * j + -1/1 * a * j + -93/1000` |
| 10 | physical | `{"factor":47,"stage":623}` | `1/1 * r * k + -1/1 * a * r + -1/1 * w * j + 1/1 * a * j + -93/1000` |
| 11 | physical | `{"factor":67,"stage":623}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 12 | physical | `{"factor":79,"stage":623}` | `1/1 * u * w + -1/1 * b * w + -1/1 * v * r + 1/1 * b * v + -93/1000` |
| 13 | physical | `{"factor":92,"stage":623}` | `-1/1 * f * v + 1/1 * c * v + 1/1 * u + -1/1 * c + -93/1000` |
| 14 | coordinate | `{"box":1750,"direction":"hi","value":"1813/6250","variable":"a"}` | `1813/6250 + -1 * a` |
| 15 | coordinate | `{"box":1750,"direction":"hi","value":"6143/20000","variable":"b"}` | `6143/20000 + -1 * b` |
| 16 | coordinate | `{"box":1750,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 17 | coordinate | `{"box":1750,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 18 | coordinate | `{"box":1750,"direction":"hi","value":"179217/200000","variable":"j"}` | `179217/200000 + -1 * j` |
| 19 | coordinate | `{"box":1750,"direction":"hi","value":"8033/8963","variable":"k"}` | `8033/8963 + -1 * k` |
| 20 | coordinate | `{"box":1750,"direction":"hi","value":"765641/1000000","variable":"c"}` | `765641/1000000 + -1 * c` |
| 21 | coordinate | `{"box":1750,"direction":"hi","value":"59/125","variable":"e"}` | `59/125 + -1 * e` |
| 22 | coordinate | `{"box":1750,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 23 | coordinate | `{"box":1750,"direction":"hi","value":"113009/250000","variable":"p"}` | `113009/250000 + -1 * p` |
| 24 | coordinate | `{"box":1750,"direction":"hi","value":"36661/62500","variable":"q"}` | `36661/62500 + -1 * q` |
| 25 | coordinate | `{"box":1750,"direction":"hi","value":"19347/25000","variable":"u"}` | `19347/25000 + -1 * u` |
| 26 | coordinate | `{"box":1750,"direction":"hi","value":"519527/1000000","variable":"v"}` | `519527/1000000 + -1 * v` |
| 27 | coordinate | `{"box":1750,"direction":"lo","value":"105041/1000000","variable":"a"}` | `-105041/1000000 + 1 * a` |
| 28 | coordinate | `{"box":1750,"direction":"lo","value":"20783/200000","variable":"b"}` | `-20783/200000 + 1 * b` |
| 29 | coordinate | `{"box":1750,"direction":"lo","value":"283679/500000","variable":"w"}` | `-283679/500000 + 1 * w` |
| 30 | coordinate | `{"box":1750,"direction":"lo","value":"33847/62500","variable":"j"}` | `-33847/62500 + 1 * j` |
| 31 | coordinate | `{"box":1750,"direction":"lo","value":"238307/500000","variable":"k"}` | `-238307/500000 + 1 * k` |
| 32 | coordinate | `{"box":1750,"direction":"lo","value":"135501/250000","variable":"c"}` | `-135501/250000 + 1 * c` |
| 33 | coordinate | `{"box":1750,"direction":"lo","value":"105041/1000000","variable":"e"}` | `-105041/1000000 + 1 * e` |
| 34 | coordinate | `{"box":1750,"direction":"lo","value":"408963/1000000","variable":"f"}` | `-408963/1000000 + 1 * f` |
| 35 | coordinate | `{"box":1750,"direction":"lo","value":"98621/500000","variable":"p"}` | `-98621/500000 + 1 * p` |
| 36 | coordinate | `{"box":1750,"direction":"lo","value":"145307/500000","variable":"q"}` | `-145307/500000 + 1 * q` |
| 37 | coordinate | `{"box":1750,"direction":"lo","value":"516657/1000000","variable":"u"}` | `-516657/1000000 + 1 * u` |
| 38 | coordinate | `{"box":1750,"direction":"lo","value":"243059/1000000","variable":"v"}` | `-243059/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 365376695000000 | 1 |
| 1 | 175576207000000 | 2 |
| 2 | 460814719000000 | 8 |
| 3 | 129345053000000 | 9 |
| 4 | 41364245000000 | 10 |
| 5 | 93994981000000 | 11 |
| 6 | 152747446000000 | 12 |
| 7 | 50703691000000 | 13 |
| 8 | 143031554000000 | 3 |
| 9 | 14546949000000 | 4 |
| 10 | 225697303000000 | 5 |
| 11 | 466452446000000 | 6 |
| 12 | 50703691000000 | 0 |
| 13 | 41364245000000 | 7 |
| 14 | 540952902000000 | 27, 28 |
| 15 | 365376695000000 | 20, 27 |
| 16 | 460814719000000 | 14, 34 |
| 17 | 269571188000000 | 24, 28 |
| 18 | 304921260000000 | 23, 27 |
| 19 | 152747446000000 | 26, 28 |
| 20 | 152747446000000 | 28, 29 |
| 21 | 502178964000000 | 14, 16 |
| 22 | 87980808000000 | 27, 30 |
| 23 | 50703691000000 | 20, 38 |
| 24 | 157578503000000 | 21, 34 |
| 25 | 466452446000000 | 23, 33 |
| 26 | 240764106000000 | 33, 37 |
| 27 | 143031554000000 | 16, 21 |
| 28 | 14546949000000 | 30, 33 |
| 29 | 93994981000000 | 34, 36 |
| 30 | 695914209000000 | 29, 34 |
| 31 | 26817296000000 | 19, 34 |
| 32 | 225697303000000 | 22, 25 |
| 33 | 466452446000000 | 35, 38 |
| 34 | 466452446000000 | 25, 36 |
| 35 | 129345053000000 | 31, 35 |
| 36 | 129345053000000 | 18, 36 |
| 37 | 203451137000000 | 25, 29 |
| 38 | 203451137000000 | 16, 26 |
| 39 | 377032882782681 | 16 |
| 40 | 2281710910 | 35 |
| 41 | 711303680 | 15 |
| 42 | 164130456 | 37 |
| 43 | 169149736 | 32 |
| 44 | 2406395203 | 17 |
| 45 | 1953880222 | 19 |
| 46 | 2569109505 | 18 |
| 47 | 6431821911 | 38 |
| 48 | 51034674154360 | 22 |
| 49 | 8963000000 | 21, 37 |
| 50 | 4630796691 | 21 |
| 51 | 4230536000 | 25 |
| 52 | 1955314302 | 24 |
| 53 | 667402906 | 14 |
| 54 | 190063828094636 | 34 |
| 55 | 4868836045 | 33 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -6804101450359189369/200000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -6804101450359189369/200000 | 1 | -6804101450359189369/200000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1750 | -6804101450359189369/200000 |

## Stage 1751

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR+/EHQ+/CFQ-/APS- |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR+/EHQ+/CFQ-/APS-:HLLLHHH |
| Index | 0 |
| Context | 406 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1733 |
| Coordinate cut | c high 765641/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 105041/1000000 | 1813/6250 | 105041/1000000 | 1813/6250 |
| b | 20783/200000 | 6143/20000 | 20783/200000 | 6143/20000 |
| c | 765641/1000000 | 494639/500000 | 765641/1000000 | 494639/500000 |
| e | 105041/1000000 | 59/125 | 105041/1000000 | 59/125 |
| f | 105041/1000000 | 276481/500000 | 105041/1000000 | 276481/500000 |
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


## Stage 1752

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR+/EHQ+/CFQ-/APS- |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR+/EHQ+/CFQ-/APS-:HLLLHHHL |
| Index | 0 |
| Context | 406 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1751 |
| Coordinate cut | f low 51897/125000 |

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


## Stage 1753

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR+/EHQ+/CFQ-/APS- |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR+/EHQ+/CFQ-/APS-:HLLLHHHLL |
| Index | 0 |
| Context | 406 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1752 |
| Coordinate cut | q low 2047/4000 |

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


## Stage 1754

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR+/EHQ+/CFQ-/APS- |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR+/EHQ+/CFQ-/APS-:HLLLHHHLLL |
| Index | 0 |
| Context | 406 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1753 |
| Coordinate cut | e low 350367/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 105041/1000000 | 1813/6250 | 105041/1000000 | 1813/6250 |
| b | 20783/200000 | 6143/20000 | 20783/200000 | 6143/20000 |
| c | 765641/1000000 | 494639/500000 | 765641/1000000 | 494639/500000 |
| e | 105041/1000000 | 350367/1000000 | 105041/1000000 | 350367/1000000 |
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
