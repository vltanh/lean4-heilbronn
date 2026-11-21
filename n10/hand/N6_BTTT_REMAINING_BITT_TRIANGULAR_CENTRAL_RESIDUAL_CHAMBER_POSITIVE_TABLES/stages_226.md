# BITT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 1130

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ-/BPS+/AQS-/AQR- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ-/BPS+/AQS-/AQR-:L |
| Index | 0 |
| Context | 247 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1129 |
| Coordinate cut | r low 114671/200000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 145241/500000 | 103767/1000000 | 145241/500000 |
| c | 135501/250000 | 1 | 135501/250000 | 1 |
| e | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| f | 103767/1000000 | 661171/1000000 | 103767/1000000 | 661171/1000000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 145397/500000 | 710233/1000000 | 145397/500000 | 710233/1000000 |
| q | 196767/1000000 | 308103/500000 | 196767/1000000 | 308103/500000 |
| u | 62991/250000 | 344349/500000 | 62991/250000 | 344349/500000 |
| v | 225289/500000 | 907/1000 | 225289/500000 | 907/1000 |
| r | 451113/1000000 | 114671/200000 | 451113/1000000 | 114671/200000 |
| w | 162657/200000 | 1 | 162657/200000 | 1 |
| j | 483003/1000000 | 896233/1000000 | 483003/1000000 | 896233/1000000 |
| k | 110021/250000 | 896233/1000000 | 110021/250000 | 896233/1000000 |

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
| 0 | bound | `{"direction":"lo","ref":"461:1384","triangle":"FQR","value":"99699/1000000"}` | `1 * u * w + -1 * u + -1 * f * w + -1 * v * r + 1 * f * v + 1 * r + -99699/1000000` |
| 1 | physical | `{"factor":102,"stage":461}` | `1/1 * f * h + -1/1 * e * f + -1/1 * h + 721/1000` |
| 2 | physical | `{"factor":105,"stage":461}` | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 3 | physical | `{"factor":116,"stage":461}` | `-1/1 * u * w + 1/1 * e * u + 1/1 * w + 1/1 * v * r + -1/1 * v + -1/1 * e * r + -279/1000` |
| 4 | physical | `{"factor":137,"stage":461}` | `1/1 * e + -1/1 * a` |
| 5 | physical | `{"factor":141,"stage":461}` | `1/1 * f + -1/1 * e` |
| 6 | physical | `{"factor":142,"stage":461}` | `1/1 * c * h + -135501/250000` |
| 7 | physical | `{"factor":44,"stage":461}` | `-1/1 * u * w + 1/1 * a * u + 1/1 * v * r + -1/1 * a * r + -93/1000` |
| 8 | physical | `{"factor":90,"stage":461}` | `-1/1 * f * v + 1/1 * c * v + 1/1 * u + -1/1 * c + -93/1000` |
| 9 | coordinate | `{"box":1130,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 10 | coordinate | `{"box":1130,"direction":"hi","value":"114671/200000","variable":"r"}` | `114671/200000 + -1 * r` |
| 11 | coordinate | `{"box":1130,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 12 | coordinate | `{"box":1130,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 13 | coordinate | `{"box":1130,"direction":"hi","value":"59/125","variable":"e"}` | `59/125 + -1 * e` |
| 14 | coordinate | `{"box":1130,"direction":"hi","value":"661171/1000000","variable":"f"}` | `661171/1000000 + -1 * f` |
| 15 | coordinate | `{"box":1130,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 16 | coordinate | `{"box":1130,"direction":"hi","value":"344349/500000","variable":"u"}` | `344349/500000 + -1 * u` |
| 17 | coordinate | `{"box":1130,"direction":"hi","value":"907/1000","variable":"v"}` | `907/1000 + -1 * v` |
| 18 | coordinate | `{"box":1130,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 19 | coordinate | `{"box":1130,"direction":"lo","value":"162657/200000","variable":"w"}` | `-162657/200000 + 1 * w` |
| 20 | coordinate | `{"box":1130,"direction":"lo","value":"135501/250000","variable":"c"}` | `-135501/250000 + 1 * c` |
| 21 | coordinate | `{"box":1130,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 22 | coordinate | `{"box":1130,"direction":"lo","value":"103767/1000000","variable":"f"}` | `-103767/1000000 + 1 * f` |
| 23 | coordinate | `{"box":1130,"direction":"lo","value":"135501/250000","variable":"h"}` | `-135501/250000 + 1 * h` |
| 24 | coordinate | `{"box":1130,"direction":"lo","value":"62991/250000","variable":"u"}` | `-62991/250000 + 1 * u` |
| 25 | coordinate | `{"box":1130,"direction":"lo","value":"225289/500000","variable":"v"}` | `-225289/500000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 69991000000 | 7 |
| 1 | 134286000000 | 8 |
| 2 | 7553000000 | 1 |
| 3 | 72798000000 | 2 |
| 4 | 11394000000 | 3 |
| 5 | 61488000000 | 0 |
| 6 | 7680000000 | 4 |
| 7 | 50793000000 | 5 |
| 8 | 12489000000 | 6 |
| 9 | 69092000000 | 16, 18 |
| 10 | 899000000 | 9, 24 |
| 11 | 69991000000 | 9, 10 |
| 12 | 12489000000 | 15, 20 |
| 13 | 134286000000 | 17, 20 |
| 14 | 80351000000 | 21, 22 |
| 15 | 84192000000 | 16, 21 |
| 16 | 11394000000 | 10, 13 |
| 17 | 7553000000 | 15, 22 |
| 18 | 61488000000 | 19, 22 |
| 19 | 19897000000 | 19, 24 |
| 20 | 19897000000 | 10, 25 |
| 21 | 17033 | 16 |
| 22 | 402000 | 12 |
| 23 | 727071 | 21 |
| 24 | 103767 | 22 |
| 25 | 159893 | 23 |
| 26 | 406421 | 25 |
| 27 | 246996 | 11 |
| 28 | 43577446816 | 10 |
| 29 | 348047 | 9 |
| 30 | 1053470 | 14 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -2806853067168967/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -2806853067168967/1000000 | 1 | -2806853067168967/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1130 | -2806853067168967/1000000 |

## Stage 1131

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ-/BPS+/AQS-/AQR- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ-/BPS+/AQS-/AQR-:H |
| Index | 0 |
| Context | 247 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1129 |
| Coordinate cut | r high 114671/200000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 145241/500000 | 103767/1000000 | 145241/500000 |
| c | 135501/250000 | 1 | 135501/250000 | 1 |
| e | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| f | 103767/1000000 | 661171/1000000 | 103767/1000000 | 661171/1000000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 145397/500000 | 710233/1000000 | 145397/500000 | 710233/1000000 |
| q | 196767/1000000 | 308103/500000 | 196767/1000000 | 308103/500000 |
| u | 62991/250000 | 344349/500000 | 62991/250000 | 344349/500000 |
| v | 225289/500000 | 907/1000 | 225289/500000 | 907/1000 |
| r | 114671/200000 | 1 | 114671/200000 | 1 |
| w | 162657/200000 | 1 | 162657/200000 | 1 |
| j | 483003/1000000 | 896233/1000000 | 483003/1000000 | 896233/1000000 |
| k | 110021/250000 | 896233/1000000 | 110021/250000 | 896233/1000000 |

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


## Stage 1132

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ-/BPS+/AQS-/AQR- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ-/BPS+/AQS-/AQR-:HL |
| Index | 0 |
| Context | 247 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1131 |
| Coordinate cut | p low 154789/250000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 145241/500000 | 103767/1000000 | 145241/500000 |
| c | 135501/250000 | 1 | 135501/250000 | 1 |
| e | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| f | 103767/1000000 | 661171/1000000 | 103767/1000000 | 661171/1000000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 145397/500000 | 154789/250000 | 145397/500000 | 154789/250000 |
| q | 196767/1000000 | 308103/500000 | 196767/1000000 | 308103/500000 |
| u | 62991/250000 | 344349/500000 | 62991/250000 | 344349/500000 |
| v | 225289/500000 | 907/1000 | 225289/500000 | 907/1000 |
| r | 114671/200000 | 1 | 114671/200000 | 1 |
| w | 162657/200000 | 1 | 162657/200000 | 1 |
| j | 483003/1000000 | 896233/1000000 | 483003/1000000 | 896233/1000000 |
| k | 110021/250000 | 896233/1000000 | 110021/250000 | 896233/1000000 |

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


## Stage 1133

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ-/BPS+/AQS-/AQR- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ-/BPS+/AQS-/AQR-:HLL |
| Index | 0 |
| Context | 247 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1132 |
| Coordinate cut | f low 131839/250000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 145241/500000 | 103767/1000000 | 145241/500000 |
| c | 135501/250000 | 1 | 135501/250000 | 1 |
| e | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| f | 103767/1000000 | 131839/250000 | 103767/1000000 | 131839/250000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 145397/500000 | 154789/250000 | 145397/500000 | 154789/250000 |
| q | 196767/1000000 | 308103/500000 | 196767/1000000 | 308103/500000 |
| u | 62991/250000 | 344349/500000 | 62991/250000 | 344349/500000 |
| v | 225289/500000 | 907/1000 | 225289/500000 | 907/1000 |
| r | 114671/200000 | 1 | 114671/200000 | 1 |
| w | 162657/200000 | 1 | 162657/200000 | 1 |
| j | 483003/1000000 | 896233/1000000 | 483003/1000000 | 896233/1000000 |
| k | 110021/250000 | 896233/1000000 | 110021/250000 | 896233/1000000 |

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


## Stage 1134

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ-/BPS+/AQS-/AQR- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ-/BPS+/AQS-/AQR-:HLLL |
| Index | 0 |
| Context | 247 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1133 |
| Coordinate cut | h low 385501/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 145241/500000 | 103767/1000000 | 145241/500000 |
| c | 135501/250000 | 1 | 135501/250000 | 1 |
| e | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| f | 103767/1000000 | 131839/250000 | 103767/1000000 | 131839/250000 |
| h | 135501/250000 | 385501/500000 | 135501/250000 | 385501/500000 |
| p | 145397/500000 | 154789/250000 | 145397/500000 | 154789/250000 |
| q | 196767/1000000 | 308103/500000 | 196767/1000000 | 308103/500000 |
| u | 62991/250000 | 344349/500000 | 62991/250000 | 344349/500000 |
| v | 225289/500000 | 907/1000 | 225289/500000 | 907/1000 |
| r | 114671/200000 | 1 | 114671/200000 | 1 |
| w | 162657/200000 | 1 | 162657/200000 | 1 |
| j | 483003/1000000 | 896233/1000000 | 483003/1000000 | 896233/1000000 |
| k | 110021/250000 | 896233/1000000 | 110021/250000 | 896233/1000000 |

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
