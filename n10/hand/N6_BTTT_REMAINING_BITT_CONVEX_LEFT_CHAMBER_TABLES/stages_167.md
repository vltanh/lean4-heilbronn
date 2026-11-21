# BITT convex: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 835

| Property | Value |
| --- | --- |
| Scope | root/AFQ-/AFP-/APR-/BFP+/APS+/APQ-/BQR+ |
| Packet | coordinate:root/HEQ+/CFQ+/AFQ-/AFP-/APR-/BFP+/APS+/APQ-/BQR+:LH |
| Index | 0 |
| Context | 119 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 815 |
| Coordinate cut | q high 602167/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 54347/500000 | 6143/20000 | 54347/500000 | 6143/20000 |
| b | 72197/500000 | 116527/200000 | 72197/500000 | 116527/200000 |
| c | 70629/100000 | 1 | 70629/100000 | 1 |
| e | 54347/500000 | 391/1000 | 54347/500000 | 391/1000 |
| f | 279/1000 | 116527/200000 | 279/1000 | 116527/200000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 124389/1000000 | 97927/200000 | 124389/1000000 | 97927/200000 |
| q | 602167/1000000 | 782611/1000000 | 602167/1000000 | 782611/1000000 |
| u | 25301/62500 | 97963/125000 | 25301/62500 | 97963/125000 |
| v | 295417/1000000 | 596101/1000000 | 295417/1000000 | 596101/1000000 |
| r | 57321/100000 | 1 | 57321/100000 | 1 |
| w | 6677/15625 | 26361/31250 | 6677/15625 | 26361/31250 |
| j | 110349/250000 | 174689/200000 | 110349/250000 | 174689/200000 |
| k | 100193/125000 | 1 | 100193/125000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"190:1384","triangle":"EQS","value":"39211/250000"}` | `-1 * u * k + 1 * e * u + 1 * k + 1 * v * j + -1 * v + -1 * e * j + -39211/250000` |
| 1 | bound | `{"direction":"lo","ref":"190:1813","triangle":"FQS","value":"95699/1000000"}` | `1 * u * k + -1 * u + -1 * f * k + -1 * v * j + 1 * f * v + 1 * j + -95699/1000000` |
| 2 | bound | `{"direction":"lo","ref":"190:2577","triangle":"FPS","value":"47573/500000"}` | `1 * p * k + -1 * p + -1 * f * k + -1 * q * j + 1 * f * q + 1 * j + -47573/500000` |
| 3 | bound | `{"direction":"lo","ref":"190:2609","triangle":"CFP","value":"369329/1000000"}` | `1 * f * q + -1 * c * q + -1 * p + 1 * c + -369329/1000000` |
| 4 | bound | `{"direction":"lo","ref":"190:2653","triangle":"FHQ","value":"57159/250000"}` | `-1 * f * v + -1 * h * u + 1 * f * h + 1 * u + -57159/250000` |
| 5 | physical | `{"factor":111,"stage":190}` | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 6 | physical | `{"factor":123,"stage":190}` | `-1/1 * f * k + -1/1 * h * j + 1/1 * f * h + 1/1 * j + -93/1000` |
| 7 | physical | `{"factor":141,"stage":190}` | `1/1 * e + -1/1 * a` |
| 8 | physical | `{"factor":45,"stage":190}` | `1/1 * p * k + -1/1 * a * p + -1/1 * q * j + 1/1 * a * j + -93/1000` |
| 9 | physical | `{"factor":93,"stage":190}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 10 | coordinate | `{"box":835,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 11 | coordinate | `{"box":835,"direction":"hi","value":"174689/200000","variable":"j"}` | `174689/200000 + -1 * j` |
| 12 | coordinate | `{"box":835,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 13 | coordinate | `{"box":835,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 14 | coordinate | `{"box":835,"direction":"hi","value":"116527/200000","variable":"f"}` | `116527/200000 + -1 * f` |
| 15 | coordinate | `{"box":835,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 16 | coordinate | `{"box":835,"direction":"hi","value":"97927/200000","variable":"p"}` | `97927/200000 + -1 * p` |
| 17 | coordinate | `{"box":835,"direction":"hi","value":"782611/1000000","variable":"q"}` | `782611/1000000 + -1 * q` |
| 18 | coordinate | `{"box":835,"direction":"lo","value":"54347/500000","variable":"a"}` | `-54347/500000 + 1 * a` |
| 19 | coordinate | `{"box":835,"direction":"lo","value":"110349/250000","variable":"j"}` | `-110349/250000 + 1 * j` |
| 20 | coordinate | `{"box":835,"direction":"lo","value":"100193/125000","variable":"k"}` | `-100193/125000 + 1 * k` |
| 21 | coordinate | `{"box":835,"direction":"lo","value":"70629/100000","variable":"c"}` | `-70629/100000 + 1 * c` |
| 22 | coordinate | `{"box":835,"direction":"lo","value":"54347/500000","variable":"e"}` | `-54347/500000 + 1 * e` |
| 23 | coordinate | `{"box":835,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 24 | coordinate | `{"box":835,"direction":"lo","value":"135501/250000","variable":"h"}` | `-135501/250000 + 1 * h` |
| 25 | coordinate | `{"box":835,"direction":"lo","value":"124389/1000000","variable":"p"}` | `-124389/1000000 + 1 * p` |
| 26 | coordinate | `{"box":835,"direction":"lo","value":"602167/1000000","variable":"q"}` | `-602167/1000000 + 1 * q` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 84663000000 | 8 |
| 1 | 8695000000 | 3 |
| 2 | 57495000000 | 9 |
| 3 | 22149000000 | 5 |
| 4 | 22149000000 | 0 |
| 5 | 22149000000 | 4 |
| 6 | 22499000000 | 6 |
| 7 | 13161000000 | 2 |
| 8 | 22149000000 | 1 |
| 9 | 9776000000 | 7 |
| 10 | 37948000000 | 18, 25 |
| 11 | 46715000000 | 10, 16 |
| 12 | 84663000000 | 10, 19 |
| 13 | 57495000000 | 13, 24 |
| 14 | 66190000000 | 21, 26 |
| 15 | 22149000000 | 19, 22 |
| 16 | 44648000000 | 15, 23 |
| 17 | 21856000000 | 14, 26 |
| 18 | 57808000000 | 12, 14 |
| 19 | 57495000000 | 15, 16 |
| 20 | 22499000000 | 11, 15 |
| 21 | 97824000000 | 12, 25 |
| 22 | 97824000000 | 19, 26 |
| 23 | 961952 | 14 |
| 24 | 582635 | 17 |
| 25 | 232162 | 25 |
| 26 | 86250 | 13 |
| 27 | 411380 | 24 |
| 28 | 636265456 | 12 |
| 29 | 1000000 | 20, 23 |
| 30 | 801544 | 23 |
| 31 | 279000 | 20 |
| 32 | 392436 | 11 |
| 33 | 480004 | 22 |
| 34 | 296751 | 10 |
| 35 | 77194969479 | 26 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -903749373556109/100000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -903749373556109/100000 | 1 | -903749373556109/100000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 835 | -903749373556109/100000 |

## Stage 836

| Property | Value |
| --- | --- |
| Scope | root/AFQ-/AFP-/APR-/BFP+/APS+/APQ-/BQR+ |
| Packet | coordinate:root/HEQ+/CFQ+/AFQ-/AFP-/APR-/BFP+/APS+/APQ-/BQR+:H |
| Index | 0 |
| Context | 119 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 814 |
| Coordinate cut | v high 596101/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 54347/500000 | 6143/20000 | 54347/500000 | 6143/20000 |
| b | 72197/500000 | 116527/200000 | 72197/500000 | 116527/200000 |
| c | 70629/100000 | 1 | 70629/100000 | 1 |
| e | 54347/500000 | 391/1000 | 54347/500000 | 391/1000 |
| f | 279/1000 | 116527/200000 | 279/1000 | 116527/200000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 124389/1000000 | 97927/200000 | 124389/1000000 | 97927/200000 |
| q | 256997/1000000 | 782611/1000000 | 256997/1000000 | 782611/1000000 |
| u | 25301/62500 | 97963/125000 | 25301/62500 | 97963/125000 |
| v | 596101/1000000 | 103981/125000 | 596101/1000000 | 103981/125000 |
| r | 57321/100000 | 1 | 57321/100000 | 1 |
| w | 6677/15625 | 26361/31250 | 6677/15625 | 26361/31250 |
| j | 110349/250000 | 174689/200000 | 110349/250000 | 174689/200000 |
| k | 100193/125000 | 1 | 100193/125000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"190:2348","triangle":"EQR","value":"130943/1000000"}` | `-1 * u * w + 1 * e * u + 1 * w + 1 * v * r + -1 * v + -1 * e * r + -130943/1000000` |
| 1 | bound | `{"direction":"lo","ref":"190:2560","triangle":"AQR","value":"104751/1000000"}` | `1 * u * w + -1 * a * u + -1 * v * r + 1 * a * r + -104751/1000000` |
| 2 | bound | `{"direction":"lo","ref":"190:2628","triangle":"ARS","value":"40017/100000"}` | `1 * r * k + -1 * a * r + -1 * w * j + 1 * a * j + -40017/100000` |
| 3 | bound | `{"direction":"lo","ref":"190:2639","triangle":"AQS","value":"45239/125000"}` | `1 * u * k + -1 * a * u + -1 * v * j + 1 * a * j + -45239/125000` |
| 4 | bound | `{"direction":"lo","ref":"190:632","triangle":"AFS","value":"103611/1000000"}` | `-1 * f * k + 1 * a * f + 1 * j + -1 * a * j + -103611/1000000` |
| 5 | physical | `{"factor":78,"stage":190}` | `1/1 * u * w + -1/1 * b * w + -1/1 * v * r + 1/1 * b * v + -93/1000` |
| 6 | physical | `{"factor":90,"stage":190}` | `1/1 * f * v + -1/1 * c * v + -1/1 * u + 1/1 * c + -93/1000` |
| 7 | coordinate | `{"box":836,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 8 | coordinate | `{"box":836,"direction":"hi","value":"116527/200000","variable":"b"}` | `116527/200000 + -1 * b` |
| 9 | coordinate | `{"box":836,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 10 | coordinate | `{"box":836,"direction":"hi","value":"26361/31250","variable":"w"}` | `26361/31250 + -1 * w` |
| 11 | coordinate | `{"box":836,"direction":"hi","value":"174689/200000","variable":"j"}` | `174689/200000 + -1 * j` |
| 12 | coordinate | `{"box":836,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 13 | coordinate | `{"box":836,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 14 | coordinate | `{"box":836,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 15 | coordinate | `{"box":836,"direction":"hi","value":"116527/200000","variable":"f"}` | `116527/200000 + -1 * f` |
| 16 | coordinate | `{"box":836,"direction":"hi","value":"97963/125000","variable":"u"}` | `97963/125000 + -1 * u` |
| 17 | coordinate | `{"box":836,"direction":"lo","value":"54347/500000","variable":"a"}` | `-54347/500000 + 1 * a` |
| 18 | coordinate | `{"box":836,"direction":"lo","value":"72197/500000","variable":"b"}` | `-72197/500000 + 1 * b` |
| 19 | coordinate | `{"box":836,"direction":"lo","value":"57321/100000","variable":"r"}` | `-57321/100000 + 1 * r` |
| 20 | coordinate | `{"box":836,"direction":"lo","value":"6677/15625","variable":"w"}` | `-6677/15625 + 1 * w` |
| 21 | coordinate | `{"box":836,"direction":"lo","value":"110349/250000","variable":"j"}` | `-110349/250000 + 1 * j` |
| 22 | coordinate | `{"box":836,"direction":"lo","value":"70629/100000","variable":"c"}` | `-70629/100000 + 1 * c` |
| 23 | coordinate | `{"box":836,"direction":"lo","value":"54347/500000","variable":"e"}` | `-54347/500000 + 1 * e` |
| 24 | coordinate | `{"box":836,"direction":"lo","value":"25301/62500","variable":"u"}` | `-25301/62500 + 1 * u` |
| 25 | coordinate | `{"box":836,"direction":"lo","value":"596101/1000000","variable":"v"}` | `-596101/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 42687000000 | 4 |
| 1 | 45756000000 | 1 |
| 2 | 17416000000 | 3 |
| 3 | 45756000000 | 2 |
| 4 | 48137000000 | 5 |
| 5 | 63827000000 | 6 |
| 6 | 29336000000 | 0 |
| 7 | 42687000000 | 15, 17 |
| 8 | 48137000000 | 8, 25 |
| 9 | 41161000000 | 17, 24 |
| 10 | 22011000000 | 7, 16 |
| 11 | 28618000000 | 18, 20 |
| 12 | 19519000000 | 8, 10 |
| 13 | 20485000000 | 7, 21 |
| 14 | 63827000000 | 22, 25 |
| 15 | 29336000000 | 16, 23 |
| 16 | 14867000000 | 19, 23 |
| 17 | 14469000000 | 9, 14 |
| 18 | 63827000000 | 15, 25 |
| 19 | 42687000000 | 12, 15 |
| 20 | 64557000000 | 10, 24 |
| 21 | 64557000000 | 19, 25 |
| 22 | 17416000000 | 12, 24 |
| 23 | 17416000000 | 21, 25 |
| 24 | 45756000000 | 12, 19 |
| 25 | 45756000000 | 10, 11 |
| 26 | 599728 | 21 |
| 27 | 602001 | 7 |
| 28 | 307150 | 11 |
| 29 | 404816 | 17 |
| 30 | 108694 | 24 |
| 31 | 309958 | 16 |
| 32 | 25779661473 | 13 |
| 33 | 362965 | 20 |
| 34 | 53874297396 | 25 |
| 35 | 159305 | 15 |
| 36 | 50355 | 18 |
| 37 | 172526 | 23 |
| 38 | 175045 | 9 |
| 39 | 8407131971 | 12 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -11049760030721293/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -11049760030721293/1000000 | 1 | -11049760030721293/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 836 | -11049760030721293/1000000 |

## Stage 837

| Property | Value |
| --- | --- |
| Scope | root/AFQ-/AFP-/APR-/BFP+/APS+/APQ-/BQR-/AQR+ |
| Packet | coordinate:root/HEQ+/CFQ+/AFQ-/AFP-/APR-/BFP+/APS+/APQ-/BQR-/AQR+:root |
| Index | 0 |
| Context | 121 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 192 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 54347/500000 | 6143/20000 | 54347/500000 | 6143/20000 |
| b | 72197/500000 | 116527/200000 | 72197/500000 | 116527/200000 |
| c | 70629/100000 | 1 | 70629/100000 | 1 |
| e | 54347/500000 | 391/1000 | 54347/500000 | 391/1000 |
| f | 279/1000 | 116527/200000 | 279/1000 | 116527/200000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 124389/1000000 | 97927/200000 | 124389/1000000 | 97927/200000 |
| q | 256997/1000000 | 383631/500000 | 256997/1000000 | 383631/500000 |
| u | 219441/500000 | 97963/125000 | 219441/500000 | 97963/125000 |
| v | 295417/1000000 | 15079/20000 | 295417/1000000 | 15079/20000 |
| r | 8943/12500 | 1 | 8943/12500 | 1 |
| w | 6677/15625 | 26361/31250 | 6677/15625 | 26361/31250 |
| j | 110349/250000 | 174689/200000 | 110349/250000 | 174689/200000 |
| k | 100193/125000 | 1 | 100193/125000 | 1 |

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


## Stage 838

| Property | Value |
| --- | --- |
| Scope | root/AFQ-/AFP-/APR-/BFP+/APS+/APQ-/BQR-/AQR+ |
| Packet | coordinate:root/HEQ+/CFQ+/AFQ-/AFP-/APR-/BFP+/APS+/APQ-/BQR-/AQR+:L |
| Index | 0 |
| Context | 121 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 837 |
| Coordinate cut | v low 606639/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 54347/500000 | 6143/20000 | 54347/500000 | 6143/20000 |
| b | 72197/500000 | 116527/200000 | 72197/500000 | 116527/200000 |
| c | 70629/100000 | 1 | 70629/100000 | 1 |
| e | 54347/500000 | 391/1000 | 54347/500000 | 391/1000 |
| f | 279/1000 | 116527/200000 | 279/1000 | 116527/200000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 124389/1000000 | 97927/200000 | 124389/1000000 | 97927/200000 |
| q | 256997/1000000 | 383631/500000 | 256997/1000000 | 383631/500000 |
| u | 219441/500000 | 97963/125000 | 219441/500000 | 97963/125000 |
| v | 295417/1000000 | 606639/1000000 | 295417/1000000 | 606639/1000000 |
| r | 8943/12500 | 1 | 8943/12500 | 1 |
| w | 6677/15625 | 26361/31250 | 6677/15625 | 26361/31250 |
| j | 110349/250000 | 174689/200000 | 110349/250000 | 174689/200000 |
| k | 100193/125000 | 1 | 100193/125000 | 1 |

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


## Stage 839

| Property | Value |
| --- | --- |
| Scope | root/AFQ-/AFP-/APR-/BFP+/APS+/APQ-/BQR-/AQR+ |
| Packet | coordinate:root/HEQ+/CFQ+/AFQ-/AFP-/APR-/BFP+/APS+/APQ-/BQR-/AQR+:LL |
| Index | 0 |
| Context | 121 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 838 |
| Coordinate cut | q low 609897/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 54347/500000 | 6143/20000 | 54347/500000 | 6143/20000 |
| b | 72197/500000 | 116527/200000 | 72197/500000 | 116527/200000 |
| c | 70629/100000 | 1 | 70629/100000 | 1 |
| e | 54347/500000 | 391/1000 | 54347/500000 | 391/1000 |
| f | 279/1000 | 116527/200000 | 279/1000 | 116527/200000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 124389/1000000 | 97927/200000 | 124389/1000000 | 97927/200000 |
| q | 256997/1000000 | 609897/1000000 | 256997/1000000 | 609897/1000000 |
| u | 219441/500000 | 97963/125000 | 219441/500000 | 97963/125000 |
| v | 295417/1000000 | 606639/1000000 | 295417/1000000 | 606639/1000000 |
| r | 8943/12500 | 1 | 8943/12500 | 1 |
| w | 6677/15625 | 26361/31250 | 6677/15625 | 26361/31250 |
| j | 110349/250000 | 174689/200000 | 110349/250000 | 174689/200000 |
| k | 100193/125000 | 1 | 100193/125000 | 1 |

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
