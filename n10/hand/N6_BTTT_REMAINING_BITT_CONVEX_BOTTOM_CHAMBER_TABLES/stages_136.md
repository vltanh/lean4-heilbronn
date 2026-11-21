# BITT convex: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 680

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS+/BFP-/BQR-/APS+/APQ+/BPR+/AQR- |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS+/BFP-/BQR-/APS+/APQ+/BPR+/AQR-:LHLL |
| Index | 0 |
| Context | 50 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 679 |
| Coordinate cut | w low 265791/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 796617/1000000 | 1 | 796617/1000000 | 1 |
| e | 63687/500000 | 391/1000 | 63687/500000 | 391/1000 |
| f | 63687/500000 | 573701/1000000 | 63687/500000 | 573701/1000000 |
| h | 796617/1000000 | 1 | 796617/1000000 | 1 |
| p | 149479/500000 | 18711/31250 | 149479/500000 | 18711/31250 |
| q | 203801/1000000 | 107787/200000 | 203801/1000000 | 107787/200000 |
| u | 267783/1000000 | 583949/1000000 | 267783/1000000 | 583949/1000000 |
| v | 12157/31250 | 743921/1000000 | 12157/31250 | 743921/1000000 |
| r | 630711/1000000 | 1 | 630711/1000000 | 1 |
| w | 87237/200000 | 265791/500000 | 87237/200000 | 265791/500000 |
| j | 58459/200000 | 109483/125000 | 58459/200000 | 109483/125000 |
| k | 50211/62500 | 1 | 50211/62500 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"70:657","triangle":"EPR","value":"67553/500000"}` | `-1 * p * w + 1 * e * p + 1 * w + 1 * q * r + -1 * q + -1 * e * r + -67553/500000` |
| 1 | bound | `{"direction":"lo","ref":"70:699","triangle":"CEH","value":"152537/500000"}` | `1 * h + -1 * c * h + 1 * c * e + -152537/500000` |
| 2 | physical | `{"factor":0,"stage":70}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 3 | physical | `{"factor":10,"stage":70}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 4 | physical | `{"factor":121,"stage":70}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 5 | physical | `{"factor":125,"stage":70}` | `-1/1 * f * k + -1/1 * h * j + 1/1 * f * h + 1/1 * j + -93/1000` |
| 6 | physical | `{"factor":130,"stage":70}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 7 | physical | `{"factor":28,"stage":70}` | `1/1 * q + -1/1 * a + -1/1 * e * p + 1/1 * a * p + -93/1000` |
| 8 | physical | `{"factor":58,"stage":70}` | `1/1 * c * k + -1/1 * b * k + -13857/20000` |
| 9 | physical | `{"factor":79,"stage":70}` | `1/1 * p * w + -1/1 * b * w + -1/1 * q * r + 1/1 * b * q + -93/1000` |
| 10 | physical | `{"factor":96,"stage":70}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 11 | coordinate | `{"box":680,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 12 | coordinate | `{"box":680,"direction":"hi","value":"6143/20000","variable":"b"}` | `6143/20000 + -1 * b` |
| 13 | coordinate | `{"box":680,"direction":"hi","value":"265791/500000","variable":"w"}` | `265791/500000 + -1 * w` |
| 14 | coordinate | `{"box":680,"direction":"hi","value":"109483/125000","variable":"j"}` | `109483/125000 + -1 * j` |
| 15 | coordinate | `{"box":680,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 16 | coordinate | `{"box":680,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 17 | coordinate | `{"box":680,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 18 | coordinate | `{"box":680,"direction":"hi","value":"573701/1000000","variable":"f"}` | `573701/1000000 + -1 * f` |
| 19 | coordinate | `{"box":680,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 20 | coordinate | `{"box":680,"direction":"hi","value":"18711/31250","variable":"p"}` | `18711/31250 + -1 * p` |
| 21 | coordinate | `{"box":680,"direction":"hi","value":"107787/200000","variable":"q"}` | `107787/200000 + -1 * q` |
| 22 | coordinate | `{"box":680,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 23 | coordinate | `{"box":680,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 24 | coordinate | `{"box":680,"direction":"lo","value":"630711/1000000","variable":"r"}` | `-630711/1000000 + 1 * r` |
| 25 | coordinate | `{"box":680,"direction":"lo","value":"58459/200000","variable":"j"}` | `-58459/200000 + 1 * j` |
| 26 | coordinate | `{"box":680,"direction":"lo","value":"50211/62500","variable":"k"}` | `-50211/62500 + 1 * k` |
| 27 | coordinate | `{"box":680,"direction":"lo","value":"796617/1000000","variable":"c"}` | `-796617/1000000 + 1 * c` |
| 28 | coordinate | `{"box":680,"direction":"lo","value":"63687/500000","variable":"e"}` | `-63687/500000 + 1 * e` |
| 29 | coordinate | `{"box":680,"direction":"lo","value":"63687/500000","variable":"f"}` | `-63687/500000 + 1 * f` |
| 30 | coordinate | `{"box":680,"direction":"lo","value":"796617/1000000","variable":"h"}` | `-796617/1000000 + 1 * h` |
| 31 | coordinate | `{"box":680,"direction":"lo","value":"149479/500000","variable":"p"}` | `-149479/500000 + 1 * p` |
| 32 | coordinate | `{"box":680,"direction":"lo","value":"203801/1000000","variable":"q"}` | `-203801/1000000 + 1 * q` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 3902000000 | 2 |
| 1 | 34388000000 | 3 |
| 2 | 51137000000 | 7 |
| 3 | 2763000000 | 8 |
| 4 | 72140000000 | 9 |
| 5 | 27072000000 | 1 |
| 6 | 25692000000 | 10 |
| 7 | 10929000000 | 0 |
| 8 | 15891000000 | 4 |
| 9 | 16701000000 | 5 |
| 10 | 12082000000 | 6 |
| 11 | 38290000000 | 22, 23 |
| 12 | 3902000000 | 16, 22 |
| 13 | 68124000000 | 21, 23 |
| 14 | 38404000000 | 12, 32 |
| 15 | 85525000000 | 20, 22 |
| 16 | 72140000000 | 12, 13 |
| 17 | 2763000000 | 23, 26 |
| 18 | 27072000000 | 16, 28 |
| 19 | 1380000000 | 16, 19 |
| 20 | 25692000000 | 27, 32 |
| 21 | 2763000000 | 15, 27 |
| 22 | 40208000000 | 17, 20 |
| 23 | 26820000000 | 24, 28 |
| 24 | 15891000000 | 14, 28 |
| 25 | 16701000000 | 19, 29 |
| 26 | 12082000000 | 13, 29 |
| 27 | 28783000000 | 26, 29 |
| 28 | 25692000000 | 19, 20 |
| 29 | 3756000000 | 25, 30 |
| 30 | 12945000000 | 14, 19 |
| 31 | 61211000000 | 13, 31 |
| 32 | 61211000000 | 24, 32 |
| 33 | 27973000000 | 15, 24 |
| 34 | 27973000000 | 13, 14 |
| 35 | 323277 | 32 |
| 36 | 26370 | 11 |
| 37 | 217290 | 19 |
| 38 | 106134 | 13 |
| 39 | 17511 | 15 |
| 40 | 63496 | 14 |
| 41 | 33691 | 24 |
| 42 | 110254 | 23 |
| 43 | 112470 | 16 |
| 44 | 10477 | 20 |
| 45 | 65388 | 17 |
| 46 | 2316 | 18 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -383251186761357/200000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -383251186761357/200000 | 1 | -383251186761357/200000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 680 | -383251186761357/200000 |

## Stage 681

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS+/BFP-/BQR-/APS+/APQ+/BPR+/AQR- |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS+/BFP-/BQR-/APS+/APQ+/BPR+/AQR-:LHLH |
| Index | 0 |
| Context | 50 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 679 |
| Coordinate cut | w high 265791/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 796617/1000000 | 1 | 796617/1000000 | 1 |
| e | 63687/500000 | 391/1000 | 63687/500000 | 391/1000 |
| f | 63687/500000 | 573701/1000000 | 63687/500000 | 573701/1000000 |
| h | 796617/1000000 | 1 | 796617/1000000 | 1 |
| p | 149479/500000 | 18711/31250 | 149479/500000 | 18711/31250 |
| q | 203801/1000000 | 107787/200000 | 203801/1000000 | 107787/200000 |
| u | 267783/1000000 | 583949/1000000 | 267783/1000000 | 583949/1000000 |
| v | 12157/31250 | 743921/1000000 | 12157/31250 | 743921/1000000 |
| r | 630711/1000000 | 1 | 630711/1000000 | 1 |
| w | 265791/500000 | 3503/4000 | 265791/500000 | 3503/4000 |
| j | 58459/200000 | 109483/125000 | 58459/200000 | 109483/125000 |
| k | 50211/62500 | 1 | 50211/62500 | 1 |

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


## Stage 682

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS+/BFP-/BQR-/APS+/APQ+/BPR+/AQR- |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS+/BFP-/BQR-/APS+/APQ+/BPR+/AQR-:LHLHL |
| Index | 0 |
| Context | 50 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 681 |
| Coordinate cut | j low 1168159/2000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 796617/1000000 | 1 | 796617/1000000 | 1 |
| e | 63687/500000 | 391/1000 | 63687/500000 | 391/1000 |
| f | 63687/500000 | 573701/1000000 | 63687/500000 | 573701/1000000 |
| h | 796617/1000000 | 1 | 796617/1000000 | 1 |
| p | 149479/500000 | 18711/31250 | 149479/500000 | 18711/31250 |
| q | 203801/1000000 | 107787/200000 | 203801/1000000 | 107787/200000 |
| u | 267783/1000000 | 583949/1000000 | 267783/1000000 | 583949/1000000 |
| v | 12157/31250 | 743921/1000000 | 12157/31250 | 743921/1000000 |
| r | 630711/1000000 | 1 | 630711/1000000 | 1 |
| w | 265791/500000 | 3503/4000 | 265791/500000 | 3503/4000 |
| j | 58459/200000 | 1168159/2000000 | 58459/200000 | 1168159/2000000 |
| k | 50211/62500 | 1 | 50211/62500 | 1 |

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


## Stage 683

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS+/BFP-/BQR-/APS+/APQ+/BPR+/AQR- |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS+/BFP-/BQR-/APS+/APQ+/BPR+/AQR-:LHLHLL |
| Index | 0 |
| Context | 50 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 682 |
| Coordinate cut | f low 206383/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 796617/1000000 | 1 | 796617/1000000 | 1 |
| e | 63687/500000 | 391/1000 | 63687/500000 | 391/1000 |
| f | 63687/500000 | 206383/500000 | 63687/500000 | 206383/500000 |
| h | 796617/1000000 | 1 | 796617/1000000 | 1 |
| p | 149479/500000 | 18711/31250 | 149479/500000 | 18711/31250 |
| q | 203801/1000000 | 107787/200000 | 203801/1000000 | 107787/200000 |
| u | 267783/1000000 | 583949/1000000 | 267783/1000000 | 583949/1000000 |
| v | 12157/31250 | 743921/1000000 | 12157/31250 | 743921/1000000 |
| r | 630711/1000000 | 1 | 630711/1000000 | 1 |
| w | 265791/500000 | 3503/4000 | 265791/500000 | 3503/4000 |
| j | 58459/200000 | 1168159/2000000 | 58459/200000 | 1168159/2000000 |
| k | 50211/62500 | 1 | 50211/62500 | 1 |

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


## Stage 684

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS+/BFP-/BQR-/APS+/APQ+/BPR+/AQR- |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS+/BFP-/BQR-/APS+/APQ+/BPR+/AQR-:LHLHLLL |
| Index | 0 |
| Context | 50 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 683 |
| Coordinate cut | w low 75879/100000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 796617/1000000 | 1 | 796617/1000000 | 1 |
| e | 63687/500000 | 391/1000 | 63687/500000 | 391/1000 |
| f | 63687/500000 | 206383/500000 | 63687/500000 | 206383/500000 |
| h | 796617/1000000 | 1 | 796617/1000000 | 1 |
| p | 149479/500000 | 18711/31250 | 149479/500000 | 18711/31250 |
| q | 203801/1000000 | 107787/200000 | 203801/1000000 | 107787/200000 |
| u | 267783/1000000 | 583949/1000000 | 267783/1000000 | 583949/1000000 |
| v | 12157/31250 | 743921/1000000 | 12157/31250 | 743921/1000000 |
| r | 630711/1000000 | 1 | 630711/1000000 | 1 |
| w | 265791/500000 | 75879/100000 | 265791/500000 | 75879/100000 |
| j | 58459/200000 | 1168159/2000000 | 58459/200000 | 1168159/2000000 |
| k | 50211/62500 | 1 | 50211/62500 | 1 |

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
