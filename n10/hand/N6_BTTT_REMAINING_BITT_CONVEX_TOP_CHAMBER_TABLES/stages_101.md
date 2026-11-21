# BITT convex: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 505

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR-/PQS+/BFP+/APR-/APS-/BQS- |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR-/PQS+/BFP+/APR-/APS-/BQS-:H |
| Index | 0 |
| Context | 46 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 497 |
| Coordinate cut | q high 582139/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 126511/1000000 | 16389/62500 | 126511/1000000 | 16389/62500 |
| b | 173033/1000000 | 119657/250000 | 173033/1000000 | 119657/250000 |
| c | 135501/250000 | 439089/500000 | 135501/250000 | 439089/500000 |
| e | 65593/500000 | 391/1000 | 65593/500000 | 391/1000 |
| f | 279/1000 | 571831/1000000 | 279/1000 | 571831/1000000 |
| h | 617191/1000000 | 1 | 617191/1000000 | 1 |
| p | 30167/200000 | 78953/250000 | 30167/200000 | 78953/250000 |
| q | 582139/1000000 | 36117/50000 | 582139/1000000 | 36117/50000 |
| u | 466437/1000000 | 146121/200000 | 466437/1000000 | 146121/200000 |
| v | 3891/8000 | 836359/1000000 | 3891/8000 | 836359/1000000 |
| r | 887979/1000000 | 1 | 887979/1000000 | 1 |
| w | 433969/1000000 | 773963/1000000 | 433969/1000000 | 773963/1000000 |
| j | 13857/20000 | 213829/250000 | 13857/20000 | 213829/250000 |
| k | 154161/200000 | 1 | 154161/200000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"107:1135","triangle":"PRS","value":"19757/62500"}` | `1 * r * k + -1 * q * r + -1 * p * k + -1 * w * j + 1 * p * w + 1 * q * j + -19757/62500` |
| 1 | bound | `{"direction":"lo","ref":"107:1460","triangle":"CEF","value":"343651/1000000"}` | `656349/1000000 + -1 * c + -1 * e * f + 1 * c * e` |
| 2 | bound | `{"direction":"lo","ref":"107:472","triangle":"EFH","value":"62929/200000"}` | `1 * f * h + -1 * e * f + -1 * h + 137071/200000` |
| 3 | physical | `{"factor":119,"stage":107}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 4 | physical | `{"factor":123,"stage":107}` | `-1/1 * f * k + -1/1 * h * j + 1/1 * f * h + 1/1 * j + -93/1000` |
| 5 | physical | `{"factor":33,"stage":107}` | `-1/1 * f * q + 1/1 * a * f + 1/1 * p + -1/1 * a * p + -93/1000` |
| 6 | physical | `{"factor":86,"stage":107}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 7 | physical | `{"factor":93,"stage":107}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 8 | coordinate | `{"box":505,"direction":"hi","value":"16389/62500","variable":"a"}` | `16389/62500 + -1 * a` |
| 9 | coordinate | `{"box":505,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 10 | coordinate | `{"box":505,"direction":"hi","value":"773963/1000000","variable":"w"}` | `773963/1000000 + -1 * w` |
| 11 | coordinate | `{"box":505,"direction":"hi","value":"213829/250000","variable":"j"}` | `213829/250000 + -1 * j` |
| 12 | coordinate | `{"box":505,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 13 | coordinate | `{"box":505,"direction":"hi","value":"439089/500000","variable":"c"}` | `439089/500000 + -1 * c` |
| 14 | coordinate | `{"box":505,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 15 | coordinate | `{"box":505,"direction":"hi","value":"571831/1000000","variable":"f"}` | `571831/1000000 + -1 * f` |
| 16 | coordinate | `{"box":505,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 17 | coordinate | `{"box":505,"direction":"hi","value":"78953/250000","variable":"p"}` | `78953/250000 + -1 * p` |
| 18 | coordinate | `{"box":505,"direction":"lo","value":"126511/1000000","variable":"a"}` | `-126511/1000000 + 1 * a` |
| 19 | coordinate | `{"box":505,"direction":"lo","value":"887979/1000000","variable":"r"}` | `-887979/1000000 + 1 * r` |
| 20 | coordinate | `{"box":505,"direction":"lo","value":"433969/1000000","variable":"w"}` | `-433969/1000000 + 1 * w` |
| 21 | coordinate | `{"box":505,"direction":"lo","value":"13857/20000","variable":"j"}` | `-13857/20000 + 1 * j` |
| 22 | coordinate | `{"box":505,"direction":"lo","value":"154161/200000","variable":"k"}` | `-154161/200000 + 1 * k` |
| 23 | coordinate | `{"box":505,"direction":"lo","value":"135501/250000","variable":"c"}` | `-135501/250000 + 1 * c` |
| 24 | coordinate | `{"box":505,"direction":"lo","value":"65593/500000","variable":"e"}` | `-65593/500000 + 1 * e` |
| 25 | coordinate | `{"box":505,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 26 | coordinate | `{"box":505,"direction":"lo","value":"617191/1000000","variable":"h"}` | `-617191/1000000 + 1 * h` |
| 27 | coordinate | `{"box":505,"direction":"lo","value":"30167/200000","variable":"p"}` | `-30167/200000 + 1 * p` |
| 28 | coordinate | `{"box":505,"direction":"lo","value":"582139/1000000","variable":"q"}` | `-582139/1000000 + 1 * q` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 109751000000 | 5 |
| 1 | 20572000000 | 1 |
| 2 | 1801000000 | 6 |
| 3 | 83452000000 | 7 |
| 4 | 42555000000 | 2 |
| 5 | 1114000000 | 3 |
| 6 | 3652000000 | 4 |
| 7 | 1489000000 | 0 |
| 8 | 109751000000 | 8, 25 |
| 9 | 24489000000 | 18, 27 |
| 10 | 85262000000 | 8, 17 |
| 11 | 22373000000 | 13, 24 |
| 12 | 42072000000 | 16, 23 |
| 13 | 41380000000 | 13, 26 |
| 14 | 83452000000 | 23, 28 |
| 15 | 1801000000 | 10, 13 |
| 16 | 63128000000 | 24, 25 |
| 17 | 2914000000 | 9, 14 |
| 18 | 665000000 | 11, 24 |
| 19 | 449000000 | 14, 21 |
| 20 | 46207000000 | 16, 25 |
| 21 | 109751000000 | 25, 28 |
| 22 | 3652000000 | 22, 25 |
| 23 | 83452000000 | 16, 17 |
| 24 | 3652000000 | 11, 16 |
| 25 | 1489000000 | 17, 20 |
| 26 | 1489000000 | 19, 28 |
| 27 | 1489000000 | 12, 17 |
| 28 | 1489000000 | 11, 28 |
| 29 | 2603000000 | 9, 22 |
| 30 | 2603000000 | 20, 21 |
| 31 | 309274 | 17 |
| 32 | 183233 | 23 |
| 33 | 1000000 | 14, 25 |
| 34 | 918184 | 14 |
| 35 | 391000 | 15 |
| 36 | 156940 | 10 |
| 37 | 1000000 | 19, 24 |
| 38 | 887979 | 24 |
| 39 | 131186 | 19 |
| 40 | 193872 | 16 |
| 41 | 152068 | 22 |
| 42 | 18646 | 21 |
| 43 | 32059 | 18 |
| 44 | 480833 | 25 |
| 45 | 75900482015 | 28 |
| 46 | 226444 | 9 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -1899234759418789/500000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -1899234759418789/500000 | 1 | -1899234759418789/500000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 505 | -1899234759418789/500000 |

## Stage 506

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR-/PQS+/BFP-/APR+/BPQ+/BPR+/AQR- |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR-/PQS+/BFP-/APR+/BPQ+/BPR+/AQR-:root |
| Index | 0 |
| Context | 52 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 115 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 135501/250000 | 1 | 135501/250000 | 1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 103767/1000000 | 58493/100000 | 103767/1000000 | 58493/100000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 33851/100000 | 176763/250000 | 33851/100000 | 176763/250000 |
| q | 196767/1000000 | 56849/100000 | 196767/1000000 | 56849/100000 |
| u | 177229/500000 | 834671/1000000 | 177229/500000 | 834671/1000000 |
| v | 409517/1000000 | 440113/500000 | 409517/1000000 | 440113/500000 |
| r | 340839/500000 | 1 | 340839/500000 | 1 |
| w | 238397/500000 | 440113/500000 | 238397/500000 | 440113/500000 |
| j | 281517/1000000 | 440113/500000 | 281517/1000000 | 440113/500000 |
| k | 796617/1000000 | 1 | 796617/1000000 | 1 |

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


## Stage 507

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR-/PQS+/BFP-/APR+/BPQ+/BPR+/AQR- |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR-/PQS+/BFP-/APR+/BPQ+/BPR+/AQR-:L |
| Index | 0 |
| Context | 52 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 506 |
| Coordinate cut | c low 385501/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 135501/250000 | 385501/500000 | 135501/250000 | 385501/500000 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 103767/1000000 | 58493/100000 | 103767/1000000 | 58493/100000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 33851/100000 | 176763/250000 | 33851/100000 | 176763/250000 |
| q | 196767/1000000 | 56849/100000 | 196767/1000000 | 56849/100000 |
| u | 177229/500000 | 834671/1000000 | 177229/500000 | 834671/1000000 |
| v | 409517/1000000 | 440113/500000 | 409517/1000000 | 440113/500000 |
| r | 340839/500000 | 1 | 340839/500000 | 1 |
| w | 238397/500000 | 440113/500000 | 238397/500000 | 440113/500000 |
| j | 281517/1000000 | 440113/500000 | 281517/1000000 | 440113/500000 |
| k | 796617/1000000 | 1 | 796617/1000000 | 1 |

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


## Stage 508

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR-/PQS+/BFP-/APR+/BPQ+/BPR+/AQR- |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR-/PQS+/BFP-/APR+/BPQ+/BPR+/AQR-:LL |
| Index | 0 |
| Context | 52 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 507 |
| Coordinate cut | p low 16971/31250 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 135501/250000 | 385501/500000 | 135501/250000 | 385501/500000 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 103767/1000000 | 58493/100000 | 103767/1000000 | 58493/100000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 33851/100000 | 16971/31250 | 33851/100000 | 16971/31250 |
| q | 196767/1000000 | 56849/100000 | 196767/1000000 | 56849/100000 |
| u | 177229/500000 | 834671/1000000 | 177229/500000 | 834671/1000000 |
| v | 409517/1000000 | 440113/500000 | 409517/1000000 | 440113/500000 |
| r | 340839/500000 | 1 | 340839/500000 | 1 |
| w | 238397/500000 | 440113/500000 | 238397/500000 | 440113/500000 |
| j | 281517/1000000 | 440113/500000 | 281517/1000000 | 440113/500000 |
| k | 796617/1000000 | 1 | 796617/1000000 | 1 |

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


## Stage 509

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR-/PQS+/BFP-/APR+/BPQ+/BPR+/AQR- |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR-/PQS+/BFP-/APR+/BPQ+/BPR+/AQR-:LLL |
| Index | 0 |
| Context | 52 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 508 |
| Coordinate cut | h low 694739/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 135501/250000 | 385501/500000 | 135501/250000 | 385501/500000 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 103767/1000000 | 58493/100000 | 103767/1000000 | 58493/100000 |
| h | 135501/250000 | 694739/1000000 | 135501/250000 | 694739/1000000 |
| p | 33851/100000 | 16971/31250 | 33851/100000 | 16971/31250 |
| q | 196767/1000000 | 56849/100000 | 196767/1000000 | 56849/100000 |
| u | 177229/500000 | 834671/1000000 | 177229/500000 | 834671/1000000 |
| v | 409517/1000000 | 440113/500000 | 409517/1000000 | 440113/500000 |
| r | 340839/500000 | 1 | 340839/500000 | 1 |
| w | 238397/500000 | 440113/500000 | 238397/500000 | 440113/500000 |
| j | 281517/1000000 | 440113/500000 | 281517/1000000 | 440113/500000 |
| k | 796617/1000000 | 1 | 796617/1000000 | 1 |

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
| 0 | physical | `{"factor":153,"stage":115}` | `1/1 * c * h + -135501/250000` |
| 1 | coordinate | `{"box":509,"direction":"hi","value":"385501/500000","variable":"c"}` | `385501/500000 + -1 * c` |
| 2 | coordinate | `{"box":509,"direction":"hi","value":"694739/1000000","variable":"h"}` | `694739/1000000 + -1 * h` |
| 3 | coordinate | `{"box":509,"direction":"lo","value":"135501/250000","variable":"h"}` | `-135501/250000 + 1 * h` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 1000000 | 0 |
| 1 | 1000000 | 1, 3 |
| 2 | 542004 | 1 |
| 3 | 771002 | 2 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -3179420761/500000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -3179420761/500000 | 1 | -3179420761/500000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 509 | -3179420761/500000 |
