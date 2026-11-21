# BITT convex: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 490

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR-/PQS+/BFP+/APR-/APS-/BQS+ |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR-/PQS+/BFP+/APR-/APS-/BQS+:LLHHHLLHLHHLH |
| Index | 0 |
| Context | 45 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 486 |
| Coordinate cut | b high 34611/100000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 7533/62500 | 298887/1000000 | 7533/62500 | 298887/1000000 |
| b | 34611/100000 | 18713/40000 | 34611/100000 | 18713/40000 |
| c | 18151/25000 | 227519/250000 | 18151/25000 | 227519/250000 |
| e | 60267/500000 | 391/1000 | 60267/500000 | 391/1000 |
| f | 279/1000 | 577017/1000000 | 279/1000 | 577017/1000000 |
| h | 137199/200000 | 1 | 137199/200000 | 1 |
| p | 13741/100000 | 175991/500000 | 13741/100000 | 175991/500000 |
| q | 389083/1000000 | 613481/1000000 | 389083/1000000 | 613481/1000000 |
| u | 530503/1000000 | 702771/1000000 | 530503/1000000 | 702771/1000000 |
| v | 215201/500000 | 676641/1000000 | 215201/500000 | 676641/1000000 |
| r | 42689/50000 | 1 | 42689/50000 | 1 |
| w | 430663/1000000 | 136197/200000 | 430663/1000000 | 136197/200000 |
| j | 561307/1000000 | 215241/250000 | 561307/1000000 | 215241/250000 |
| k | 100499/125000 | 1 | 100499/125000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"106:1029","triangle":"QRS","value":"63991/500000"}` | `1 * r * k + -1 * v * r + -1 * u * k + -1 * w * j + 1 * u * w + 1 * v * j + -63991/500000` |
| 1 | bound | `{"direction":"lo","ref":"106:1346","triangle":"CEF","value":"334759/1000000"}` | `665241/1000000 + -1 * c + -1 * e * f + 1 * c * e` |
| 2 | bound | `{"direction":"lo","ref":"106:1424","triangle":"AFS","value":"175113/500000"}` | `-1 * f * k + 1 * a * f + 1 * j + -1 * a * j + -175113/500000` |
| 3 | physical | `{"factor":0,"stage":106}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 4 | physical | `{"factor":105,"stage":106}` | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 5 | physical | `{"factor":134,"stage":106}` | `-1/1 * u * w + 1/1 * q * u + 1/1 * p * w + 1/1 * v * r + -1/1 * p * v + -1/1 * q * r + -93/1000` |
| 6 | physical | `{"factor":141,"stage":106}` | `1/1 * f + -1/1 * b` |
| 7 | physical | `{"factor":1913,"stage":106}` | `171776893953/500000000000 * r * k + 339723106047/500000000000 * r + 339723106047/500000000000 * f * k + -171776893953/500000000000 * w * j + -339723106047/500000000000 * f * w + -339723106047/500000000000 * j + -1023/1000 * u * k + 1023/1000 * v * j + 1023/1000 * u * w + -1023/1000 * v * r` |
| 8 | physical | `{"factor":33,"stage":106}` | `-1/1 * f * q + 1/1 * a * f + 1/1 * p + -1/1 * a * p + -93/1000` |
| 9 | physical | `{"factor":44,"stage":106}` | `-1/1 * p * k + 1/1 * a * p + 1/1 * q * j + -1/1 * a * j + -93/1000` |
| 10 | physical | `{"factor":78,"stage":106}` | `1/1 * u * k + -1/1 * b * k + -1/1 * v * j + 1/1 * b * v + -93/1000` |
| 11 | physical | `{"factor":86,"stage":106}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 12 | coordinate | `{"box":490,"direction":"hi","value":"298887/1000000","variable":"a"}` | `298887/1000000 + -1 * a` |
| 13 | coordinate | `{"box":490,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 14 | coordinate | `{"box":490,"direction":"hi","value":"136197/200000","variable":"w"}` | `136197/200000 + -1 * w` |
| 15 | coordinate | `{"box":490,"direction":"hi","value":"215241/250000","variable":"j"}` | `215241/250000 + -1 * j` |
| 16 | coordinate | `{"box":490,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 17 | coordinate | `{"box":490,"direction":"hi","value":"227519/250000","variable":"c"}` | `227519/250000 + -1 * c` |
| 18 | coordinate | `{"box":490,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 19 | coordinate | `{"box":490,"direction":"hi","value":"577017/1000000","variable":"f"}` | `577017/1000000 + -1 * f` |
| 20 | coordinate | `{"box":490,"direction":"hi","value":"175991/500000","variable":"p"}` | `175991/500000 + -1 * p` |
| 21 | coordinate | `{"box":490,"direction":"hi","value":"613481/1000000","variable":"q"}` | `613481/1000000 + -1 * q` |
| 22 | coordinate | `{"box":490,"direction":"hi","value":"702771/1000000","variable":"u"}` | `702771/1000000 + -1 * u` |
| 23 | coordinate | `{"box":490,"direction":"hi","value":"676641/1000000","variable":"v"}` | `676641/1000000 + -1 * v` |
| 24 | coordinate | `{"box":490,"direction":"lo","value":"7533/62500","variable":"a"}` | `-7533/62500 + 1 * a` |
| 25 | coordinate | `{"box":490,"direction":"lo","value":"34611/100000","variable":"b"}` | `-34611/100000 + 1 * b` |
| 26 | coordinate | `{"box":490,"direction":"lo","value":"42689/50000","variable":"r"}` | `-42689/50000 + 1 * r` |
| 27 | coordinate | `{"box":490,"direction":"lo","value":"430663/1000000","variable":"w"}` | `-430663/1000000 + 1 * w` |
| 28 | coordinate | `{"box":490,"direction":"lo","value":"561307/1000000","variable":"j"}` | `-561307/1000000 + 1 * j` |
| 29 | coordinate | `{"box":490,"direction":"lo","value":"100499/125000","variable":"k"}` | `-100499/125000 + 1 * k` |
| 30 | coordinate | `{"box":490,"direction":"lo","value":"18151/25000","variable":"c"}` | `-18151/25000 + 1 * c` |
| 31 | coordinate | `{"box":490,"direction":"lo","value":"60267/500000","variable":"e"}` | `-60267/500000 + 1 * e` |
| 32 | coordinate | `{"box":490,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 33 | coordinate | `{"box":490,"direction":"lo","value":"13741/100000","variable":"p"}` | `-13741/100000 + 1 * p` |
| 34 | coordinate | `{"box":490,"direction":"lo","value":"389083/1000000","variable":"q"}` | `-389083/1000000 + 1 * q` |
| 35 | coordinate | `{"box":490,"direction":"lo","value":"530503/1000000","variable":"u"}` | `-530503/1000000 + 1 * u` |
| 36 | coordinate | `{"box":490,"direction":"lo","value":"215201/500000","variable":"v"}` | `-215201/500000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 10313000000000000000000 | 3 |
| 1 | 11949500000000000000000 | 8 |
| 2 | 8653000000000000000000 | 2 |
| 3 | 11949500000000000000000 | 9 |
| 4 | 20716000000000000000000 | 10 |
| 5 | 973500000000000000000 | 1 |
| 6 | 16392500000000000000000 | 11 |
| 7 | 9570500000000000000000 | 4 |
| 8 | 23396500000000000000000 | 5 |
| 9 | 15019500000000000000000 | 0 |
| 10 | 520500000000000000000 | 6 |
| 11 | 3668500000000000000000 | 7 |
| 12 | 10313000000000000000000 | 24, 25 |
| 13 | 10313000000000000000000 | 17, 24 |
| 14 | 20602500000000000000000 | 12, 32 |
| 15 | 20716000000000000000000 | 23, 25 |
| 16 | 20716000000000000000000 | 25, 29 |
| 17 | 20602500000000000000000 | 24, 28 |
| 18 | 17365500000000000000000 | 18, 30 |
| 19 | 16392500000000000000000 | 27, 30 |
| 20 | 10544000000000000000000 | 31, 32 |
| 21 | 9570500000000000000000 | 22, 31 |
| 22 | 16392500000000000000000 | 13, 18 |
| 23 | 11949500000000000000000 | 32, 34 |
| 24 | 9570500000000000000000 | 23, 32 |
| 25 | 2492548429066839000000 | 27, 32 |
| 26 | 6160000000000000000000 | 16, 19 |
| 27 | 23371500000000000000000 | 33, 36 |
| 28 | 25000000000000000000 | 20, 23 |
| 29 | 23396500000000000000000 | 22, 34 |
| 30 | 23396500000000000000000 | 20, 27 |
| 31 | 23396500000000000000000 | 13, 21 |
| 32 | 11949500000000000000000 | 16, 20 |
| 33 | 11949500000000000000000 | 15, 34 |
| 34 | 2072624500000000000000 | 27, 35 |
| 35 | 2551500000000000000000 | 14, 22 |
| 36 | 4624000000000000000000 | 13, 36 |
| 37 | 1943500000000000000000 | 16, 35 |
| 38 | 1943500000000000000000 | 15, 23 |
| 39 | 16280000000000000000000 | 16, 26 |
| 40 | 16280000000000000000000 | 27, 28 |
| 41 | 232044000000000000 | 12 |
| 42 | 426776000000000000 | 19 |
| 43 | 49488500000000000 | 33 |
| 44 | 451570933161000000 | 29, 32 |
| 45 | 383916024906062969 | 32 |
| 46 | 273631669037720420 | 29 |
| 47 | 553362033742356415 | 15 |
| 48 | 280653500000000000 | 24 |
| 49 | 113849049000000000 | 28 |
| 50 | 124500000000000000 | 22, 29 |
| 51 | 100097004000000000 | 22 |
| 52 | 210086489500000000 | 16 |
| 53 | 124500000000000000 | 28, 36 |
| 54 | 69882721500000000 | 36 |
| 55 | 227463500000000000 | 30 |
| 56 | 500000000000000000 | 17, 31 |
| 57 | 60267000000000000 | 17 |
| 58 | 455038000000000000 | 18 |
| 59 | 116530333148081000 | 27 |
| 60 | 229656610000000000 | 23 |
| 61 | 384856043500000000 | 35 |
| 62 | 124500000000000000 | 23, 26 |
| 63 | 84241804500000000 | 13 |
| 64 | 172929066839000000 | 26, 29 |
| 65 | 187473019467021288 | 26 |
| 66 | 172929066839000000 | 14, 28 |
| 67 | 97066295720198573 | 14 |
| 68 | 4401708580000000000000 | 25 |
| 69 | 358524500000000000 | 31 |
| 70 | 60519500000000000 | 21 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -36639875188272515717756779/50000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -36639875188272515717756779/50000 | 1 | -36639875188272515717756779/50000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 490 | -36639875188272515717756779/50000 |

## Stage 491

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR-/PQS+/BFP+/APR-/APS-/BQS+ |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR-/PQS+/BFP+/APR-/APS-/BQS+:LLHHHLLHLHHH |
| Index | 0 |
| Context | 45 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 485 |
| Coordinate cut | u high 702771/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 7533/62500 | 298887/1000000 | 7533/62500 | 298887/1000000 |
| b | 146871/1000000 | 18713/40000 | 146871/1000000 | 18713/40000 |
| c | 18151/25000 | 227519/250000 | 18151/25000 | 227519/250000 |
| e | 60267/500000 | 391/1000 | 60267/500000 | 391/1000 |
| f | 279/1000 | 577017/1000000 | 279/1000 | 577017/1000000 |
| h | 137199/200000 | 1 | 137199/200000 | 1 |
| p | 13741/100000 | 175991/500000 | 13741/100000 | 175991/500000 |
| q | 389083/1000000 | 613481/1000000 | 389083/1000000 | 613481/1000000 |
| u | 702771/1000000 | 821933/1000000 | 702771/1000000 | 821933/1000000 |
| v | 215201/500000 | 676641/1000000 | 215201/500000 | 676641/1000000 |
| r | 42689/50000 | 1 | 42689/50000 | 1 |
| w | 430663/1000000 | 136197/200000 | 430663/1000000 | 136197/200000 |
| j | 561307/1000000 | 215241/250000 | 561307/1000000 | 215241/250000 |
| k | 100499/125000 | 1 | 100499/125000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"106:1029","triangle":"QRS","value":"63991/500000"}` | `1 * r * k + -1 * v * r + -1 * u * k + -1 * w * j + 1 * u * w + 1 * v * j + -63991/500000` |
| 1 | bound | `{"direction":"lo","ref":"106:1424","triangle":"AFS","value":"175113/500000"}` | `-1 * f * k + 1 * a * f + 1 * j + -1 * a * j + -175113/500000` |
| 2 | physical | `{"factor":0,"stage":106}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 3 | physical | `{"factor":105,"stage":106}` | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 4 | physical | `{"factor":116,"stage":106}` | `-1/1 * u * w + 1/1 * e * u + 1/1 * w + 1/1 * v * r + -1/1 * v + -1/1 * e * r + -93/1000` |
| 5 | physical | `{"factor":118,"stage":106}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 6 | physical | `{"factor":134,"stage":106}` | `-1/1 * u * w + 1/1 * q * u + 1/1 * p * w + 1/1 * v * r + -1/1 * p * v + -1/1 * q * r + -93/1000` |
| 7 | physical | `{"factor":33,"stage":106}` | `-1/1 * f * q + 1/1 * a * f + 1/1 * p + -1/1 * a * p + -93/1000` |
| 8 | physical | `{"factor":36,"stage":106}` | `-1/1 * f * w + 1/1 * a * f + 1/1 * r + -1/1 * a * r + -13857/20000` |
| 9 | physical | `{"factor":44,"stage":106}` | `-1/1 * p * k + 1/1 * a * p + 1/1 * q * j + -1/1 * a * j + -93/1000` |
| 10 | physical | `{"factor":66,"stage":106}` | `1/1 * f * q + -1/1 * b * q + -1/1 * p + 1/1 * b + -93/1000` |
| 11 | physical | `{"factor":86,"stage":106}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 12 | coordinate | `{"box":491,"direction":"hi","value":"298887/1000000","variable":"a"}` | `298887/1000000 + -1 * a` |
| 13 | coordinate | `{"box":491,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 14 | coordinate | `{"box":491,"direction":"hi","value":"136197/200000","variable":"w"}` | `136197/200000 + -1 * w` |
| 15 | coordinate | `{"box":491,"direction":"hi","value":"215241/250000","variable":"j"}` | `215241/250000 + -1 * j` |
| 16 | coordinate | `{"box":491,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 17 | coordinate | `{"box":491,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 18 | coordinate | `{"box":491,"direction":"hi","value":"577017/1000000","variable":"f"}` | `577017/1000000 + -1 * f` |
| 19 | coordinate | `{"box":491,"direction":"hi","value":"175991/500000","variable":"p"}` | `175991/500000 + -1 * p` |
| 20 | coordinate | `{"box":491,"direction":"hi","value":"613481/1000000","variable":"q"}` | `613481/1000000 + -1 * q` |
| 21 | coordinate | `{"box":491,"direction":"hi","value":"676641/1000000","variable":"v"}` | `676641/1000000 + -1 * v` |
| 22 | coordinate | `{"box":491,"direction":"lo","value":"7533/62500","variable":"a"}` | `-7533/62500 + 1 * a` |
| 23 | coordinate | `{"box":491,"direction":"lo","value":"146871/1000000","variable":"b"}` | `-146871/1000000 + 1 * b` |
| 24 | coordinate | `{"box":491,"direction":"lo","value":"42689/50000","variable":"r"}` | `-42689/50000 + 1 * r` |
| 25 | coordinate | `{"box":491,"direction":"lo","value":"430663/1000000","variable":"w"}` | `-430663/1000000 + 1 * w` |
| 26 | coordinate | `{"box":491,"direction":"lo","value":"561307/1000000","variable":"j"}` | `-561307/1000000 + 1 * j` |
| 27 | coordinate | `{"box":491,"direction":"lo","value":"100499/125000","variable":"k"}` | `-100499/125000 + 1 * k` |
| 28 | coordinate | `{"box":491,"direction":"lo","value":"18151/25000","variable":"c"}` | `-18151/25000 + 1 * c` |
| 29 | coordinate | `{"box":491,"direction":"lo","value":"60267/500000","variable":"e"}` | `-60267/500000 + 1 * e` |
| 30 | coordinate | `{"box":491,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 31 | coordinate | `{"box":491,"direction":"lo","value":"13741/100000","variable":"p"}` | `-13741/100000 + 1 * p` |
| 32 | coordinate | `{"box":491,"direction":"lo","value":"389083/1000000","variable":"q"}` | `-389083/1000000 + 1 * q` |
| 33 | coordinate | `{"box":491,"direction":"lo","value":"702771/1000000","variable":"u"}` | `-702771/1000000 + 1 * u` |
| 34 | coordinate | `{"box":491,"direction":"lo","value":"215201/500000","variable":"v"}` | `-215201/500000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 3827000000 | 2 |
| 1 | 26052000000 | 7 |
| 2 | 12227000000 | 8 |
| 3 | 2045000000 | 1 |
| 4 | 20122000000 | 9 |
| 5 | 755000000 | 10 |
| 6 | 28842000000 | 11 |
| 7 | 47982000000 | 3 |
| 8 | 29046000000 | 4 |
| 9 | 6917000000 | 5 |
| 10 | 34167000000 | 6 |
| 11 | 13273000000 | 0 |
| 12 | 3827000000 | 22, 23 |
| 13 | 3827000000 | 12, 28 |
| 14 | 40325000000 | 18, 22 |
| 15 | 755000000 | 23, 32 |
| 16 | 5930000000 | 22, 31 |
| 17 | 12227000000 | 12, 13 |
| 18 | 22167000000 | 22, 26 |
| 19 | 28842000000 | 17, 28 |
| 20 | 28842000000 | 25, 28 |
| 21 | 38463000000 | 29, 30 |
| 22 | 9519000000 | 17, 18 |
| 23 | 77028000000 | 17, 33 |
| 24 | 64805000000 | 13, 17 |
| 25 | 6917000000 | 15, 29 |
| 26 | 25297000000 | 30, 32 |
| 27 | 47982000000 | 18, 34 |
| 28 | 12227000000 | 25, 30 |
| 29 | 2045000000 | 16, 18 |
| 30 | 34167000000 | 19, 21 |
| 31 | 34167000000 | 20, 33 |
| 32 | 34167000000 | 19, 25 |
| 33 | 34167000000 | 13, 20 |
| 34 | 20122000000 | 27, 31 |
| 35 | 20122000000 | 15, 32 |
| 36 | 49940000000 | 25, 33 |
| 37 | 49940000000 | 13, 34 |
| 38 | 13273000000 | 27, 33 |
| 39 | 13273000000 | 15, 34 |
| 40 | 20190000000 | 13, 27 |
| 41 | 20190000000 | 14, 15 |
| 42 | 1000000 | 22, 30 |
| 43 | 279000 | 22 |
| 44 | 120528 | 30 |
| 45 | 11610 | 19 |
| 46 | 177316 | 24 |
| 47 | 243776 | 26 |
| 48 | 18321 | 23 |
| 49 | 143414 | 14 |
| 50 | 164128 | 34 |
| 51 | 29081942709 | 33 |
| 52 | 156732 | 16 |
| 53 | 356719 | 12 |
| 54 | 119697 | 28 |
| 55 | 462970 | 18 |
| 56 | 143760 | 20 |
| 57 | 23567 | 29 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -2318173161833717/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -2318173161833717/1000000 | 1 | -2318173161833717/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 491 | -2318173161833717/1000000 |

## Stage 492

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR-/PQS+/BFP+/APR-/APS-/BQS+ |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR-/PQS+/BFP+/APR-/APS-/BQS+:LLHHHLLHH |
| Index | 0 |
| Context | 45 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 480 |
| Coordinate cut | v high 676641/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 7533/62500 | 298887/1000000 | 7533/62500 | 298887/1000000 |
| b | 146871/1000000 | 18713/40000 | 146871/1000000 | 18713/40000 |
| c | 18151/25000 | 227519/250000 | 18151/25000 | 227519/250000 |
| e | 60267/500000 | 391/1000 | 60267/500000 | 391/1000 |
| f | 279/1000 | 577017/1000000 | 279/1000 | 577017/1000000 |
| h | 137199/200000 | 1 | 137199/200000 | 1 |
| p | 13741/100000 | 175991/500000 | 13741/100000 | 175991/500000 |
| q | 389083/1000000 | 613481/1000000 | 389083/1000000 | 613481/1000000 |
| u | 530503/1000000 | 821933/1000000 | 530503/1000000 | 821933/1000000 |
| v | 676641/1000000 | 840197/1000000 | 676641/1000000 | 840197/1000000 |
| r | 42689/50000 | 1 | 42689/50000 | 1 |
| w | 164873/500000 | 136197/200000 | 164873/500000 | 136197/200000 |
| j | 561307/1000000 | 215241/250000 | 561307/1000000 | 215241/250000 |
| k | 171909/250000 | 1 | 171909/250000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"106:1420","triangle":"AFQ","value":"8569/25000"}` | `-1 * f * v + 1 * a * f + 1 * u + -1 * a * u + -8569/25000` |
| 1 | physical | `{"factor":105,"stage":106}` | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 2 | physical | `{"factor":143,"stage":106}` | `1/1 * f + -1/1 * e` |
| 3 | coordinate | `{"box":492,"direction":"hi","value":"298887/1000000","variable":"a"}` | `298887/1000000 + -1 * a` |
| 4 | coordinate | `{"box":492,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 5 | coordinate | `{"box":492,"direction":"hi","value":"577017/1000000","variable":"f"}` | `577017/1000000 + -1 * f` |
| 6 | coordinate | `{"box":492,"direction":"lo","value":"7533/62500","variable":"a"}` | `-7533/62500 + 1 * a` |
| 7 | coordinate | `{"box":492,"direction":"lo","value":"60267/500000","variable":"e"}` | `-60267/500000 + 1 * e` |
| 8 | coordinate | `{"box":492,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 9 | coordinate | `{"box":492,"direction":"lo","value":"530503/1000000","variable":"u"}` | `-530503/1000000 + 1 * u` |
| 10 | coordinate | `{"box":492,"direction":"lo","value":"676641/1000000","variable":"v"}` | `-676641/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 128119000000 | 0 |
| 1 | 185020000000 | 1 |
| 2 | 3681000000 | 2 |
| 3 | 108123000000 | 5, 6 |
| 4 | 19997000000 | 3, 8 |
| 5 | 128119000000 | 6, 9 |
| 6 | 41231000000 | 7, 8 |
| 7 | 143790000000 | 4, 5 |
| 8 | 185020000000 | 4, 9 |
| 9 | 56901000000 | 5, 10 |
| 10 | 1000000 | 6, 8 |
| 11 | 279000 | 6 |
| 12 | 506058 | 8 |
| 13 | 106832 | 9 |
| 14 | 1000000 | 4, 8 |
| 15 | 279000 | 4 |
| 16 | 391000 | 5 |
| 17 | 152187155683 | 10 |
| 18 | 58370 | 7 |
| 19 | 458234 | 3 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -683857776472407/100000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -683857776472407/100000 | 1 | -683857776472407/100000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 492 | -683857776472407/100000 |

## Stage 493

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR-/PQS+/BFP+/APR-/APS-/BQS+ |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR-/PQS+/BFP+/APR-/APS-/BQS+:LLHHHLH |
| Index | 0 |
| Context | 45 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 463 |
| Coordinate cut | w high 136197/200000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 7533/62500 | 298887/1000000 | 7533/62500 | 298887/1000000 |
| b | 146871/1000000 | 18713/40000 | 146871/1000000 | 18713/40000 |
| c | 135501/250000 | 227519/250000 | 135501/250000 | 227519/250000 |
| e | 60267/500000 | 391/1000 | 60267/500000 | 391/1000 |
| f | 279/1000 | 577017/1000000 | 279/1000 | 577017/1000000 |
| h | 137199/200000 | 1 | 137199/200000 | 1 |
| p | 13741/100000 | 175991/500000 | 13741/100000 | 175991/500000 |
| q | 389083/1000000 | 613481/1000000 | 389083/1000000 | 613481/1000000 |
| u | 530503/1000000 | 821933/1000000 | 530503/1000000 | 821933/1000000 |
| v | 215201/500000 | 840197/1000000 | 215201/500000 | 840197/1000000 |
| r | 42689/50000 | 1 | 42689/50000 | 1 |
| w | 136197/200000 | 31577/40000 | 136197/200000 | 31577/40000 |
| j | 561307/1000000 | 215241/250000 | 561307/1000000 | 215241/250000 |
| k | 171909/250000 | 1 | 171909/250000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"106:1029","triangle":"QRS","value":"63991/500000"}` | `1 * r * k + -1 * v * r + -1 * u * k + -1 * w * j + 1 * u * w + 1 * v * j + -63991/500000` |
| 1 | bound | `{"direction":"lo","ref":"106:1066","triangle":"PRS","value":"156991/500000"}` | `1 * r * k + -1 * q * r + -1 * p * k + -1 * w * j + 1 * p * w + 1 * q * j + -156991/500000` |
| 2 | bound | `{"direction":"lo","ref":"106:1390","triangle":"FPQ","value":"139751/1000000"}` | `1 * p * v + -1 * p + -1 * f * v + -1 * q * u + 1 * f * q + 1 * u + -139751/1000000` |
| 3 | physical | `{"factor":105,"stage":106}` | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 4 | physical | `{"factor":128,"stage":106}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 5 | physical | `{"factor":134,"stage":106}` | `-1/1 * u * w + 1/1 * q * u + 1/1 * p * w + 1/1 * v * r + -1/1 * p * v + -1/1 * q * r + -93/1000` |
| 6 | physical | `{"factor":143,"stage":106}` | `1/1 * f + -1/1 * e` |
| 7 | physical | `{"factor":33,"stage":106}` | `-1/1 * f * q + 1/1 * a * f + 1/1 * p + -1/1 * a * p + -93/1000` |
| 8 | physical | `{"factor":36,"stage":106}` | `-1/1 * f * w + 1/1 * a * f + 1/1 * r + -1/1 * a * r + -13857/20000` |
| 9 | physical | `{"factor":44,"stage":106}` | `-1/1 * p * k + 1/1 * a * p + 1/1 * q * j + -1/1 * a * j + -93/1000` |
| 10 | physical | `{"factor":66,"stage":106}` | `1/1 * f * q + -1/1 * b * q + -1/1 * p + 1/1 * b + -93/1000` |
| 11 | physical | `{"factor":78,"stage":106}` | `1/1 * u * k + -1/1 * b * k + -1/1 * v * j + 1/1 * b * v + -93/1000` |
| 12 | coordinate | `{"box":493,"direction":"hi","value":"298887/1000000","variable":"a"}` | `298887/1000000 + -1 * a` |
| 13 | coordinate | `{"box":493,"direction":"hi","value":"18713/40000","variable":"b"}` | `18713/40000 + -1 * b` |
| 14 | coordinate | `{"box":493,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 15 | coordinate | `{"box":493,"direction":"hi","value":"215241/250000","variable":"j"}` | `215241/250000 + -1 * j` |
| 16 | coordinate | `{"box":493,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 17 | coordinate | `{"box":493,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 18 | coordinate | `{"box":493,"direction":"hi","value":"577017/1000000","variable":"f"}` | `577017/1000000 + -1 * f` |
| 19 | coordinate | `{"box":493,"direction":"hi","value":"175991/500000","variable":"p"}` | `175991/500000 + -1 * p` |
| 20 | coordinate | `{"box":493,"direction":"hi","value":"613481/1000000","variable":"q"}` | `613481/1000000 + -1 * q` |
| 21 | coordinate | `{"box":493,"direction":"hi","value":"840197/1000000","variable":"v"}` | `840197/1000000 + -1 * v` |
| 22 | coordinate | `{"box":493,"direction":"lo","value":"7533/62500","variable":"a"}` | `-7533/62500 + 1 * a` |
| 23 | coordinate | `{"box":493,"direction":"lo","value":"146871/1000000","variable":"b"}` | `-146871/1000000 + 1 * b` |
| 24 | coordinate | `{"box":493,"direction":"lo","value":"136197/200000","variable":"w"}` | `-136197/200000 + 1 * w` |
| 25 | coordinate | `{"box":493,"direction":"lo","value":"561307/1000000","variable":"j"}` | `-561307/1000000 + 1 * j` |
| 26 | coordinate | `{"box":493,"direction":"lo","value":"171909/250000","variable":"k"}` | `-171909/250000 + 1 * k` |
| 27 | coordinate | `{"box":493,"direction":"lo","value":"60267/500000","variable":"e"}` | `-60267/500000 + 1 * e` |
| 28 | coordinate | `{"box":493,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 29 | coordinate | `{"box":493,"direction":"lo","value":"13741/100000","variable":"p"}` | `-13741/100000 + 1 * p` |
| 30 | coordinate | `{"box":493,"direction":"lo","value":"389083/1000000","variable":"q"}` | `-389083/1000000 + 1 * q` |
| 31 | coordinate | `{"box":493,"direction":"lo","value":"530503/1000000","variable":"u"}` | `-530503/1000000 + 1 * u` |
| 32 | coordinate | `{"box":493,"direction":"lo","value":"215201/500000","variable":"v"}` | `-215201/500000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 60890000000 | 7 |
| 1 | 10372000000 | 8 |
| 2 | 52796000000 | 9 |
| 3 | 5285000000 | 10 |
| 4 | 20203000000 | 11 |
| 5 | 30480000000 | 3 |
| 6 | 20969000000 | 2 |
| 7 | 4826000000 | 4 |
| 8 | 48900000000 | 5 |
| 9 | 6716000000 | 1 |
| 10 | 20203000000 | 0 |
| 11 | 7666000000 | 6 |
| 12 | 71262000000 | 18, 22 |
| 13 | 5285000000 | 23, 30 |
| 14 | 8094000000 | 22, 29 |
| 15 | 20203000000 | 21, 23 |
| 16 | 10372000000 | 12, 14 |
| 17 | 20203000000 | 13, 16 |
| 18 | 52796000000 | 22, 25 |
| 19 | 30480000000 | 27, 28 |
| 20 | 30480000000 | 17, 31 |
| 21 | 34636000000 | 28, 30 |
| 22 | 9510000000 | 21, 28 |
| 23 | 5546000000 | 24, 28 |
| 24 | 4826000000 | 26, 28 |
| 25 | 27931000000 | 29, 32 |
| 26 | 27931000000 | 20, 31 |
| 27 | 55616000000 | 19, 24 |
| 28 | 55616000000 | 14, 20 |
| 29 | 59512000000 | 16, 19 |
| 30 | 59512000000 | 15, 30 |
| 31 | 28697000000 | 24, 31 |
| 32 | 28697000000 | 14, 32 |
| 33 | 31745000000 | 14, 26 |
| 34 | 31745000000 | 24, 25 |
| 35 | 670394 | 19 |
| 36 | 137410 | 22 |
| 37 | 120528 | 29 |
| 38 | 2506835754 | 14 |
| 39 | 196336 | 13 |
| 40 | 1000000 | 18, 32 |
| 41 | 430402 | 18 |
| 42 | 577017 | 21 |
| 43 | 473897 | 32 |
| 44 | 408734 | 31 |
| 45 | 157617 | 25 |
| 46 | 89448 | 28 |
| 47 | 188560 | 27 |
| 48 | 561952 | 12 |
| 49 | 488374 | 30 |
| 50 | 75259 | 26 |
| 51 | 15014038394 | 24 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -2816751817062589/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -2816751817062589/1000000 | 1 | -2816751817062589/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 493 | -2816751817062589/1000000 |

## Stage 494

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR-/PQS+/BFP+/APR-/APS-/BQS+ |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR-/PQS+/BFP+/APR-/APS-/BQS+:LLHHHH |
| Index | 0 |
| Context | 45 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 462 |
| Coordinate cut | p high 175991/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 7533/62500 | 298887/1000000 | 7533/62500 | 298887/1000000 |
| b | 146871/1000000 | 18713/40000 | 146871/1000000 | 18713/40000 |
| c | 135501/250000 | 227519/250000 | 135501/250000 | 227519/250000 |
| e | 60267/500000 | 391/1000 | 60267/500000 | 391/1000 |
| f | 279/1000 | 577017/1000000 | 279/1000 | 577017/1000000 |
| h | 137199/200000 | 1 | 137199/200000 | 1 |
| p | 175991/500000 | 4841/10000 | 175991/500000 | 4841/10000 |
| q | 389083/1000000 | 613481/1000000 | 389083/1000000 | 613481/1000000 |
| u | 530503/1000000 | 821933/1000000 | 530503/1000000 | 821933/1000000 |
| v | 215201/500000 | 840197/1000000 | 215201/500000 | 840197/1000000 |
| r | 42689/50000 | 1 | 42689/50000 | 1 |
| w | 164873/500000 | 31577/40000 | 164873/500000 | 31577/40000 |
| j | 561307/1000000 | 215241/250000 | 561307/1000000 | 215241/250000 |
| k | 171909/250000 | 1 | 171909/250000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"106:1066","triangle":"PRS","value":"156991/500000"}` | `1 * r * k + -1 * q * r + -1 * p * k + -1 * w * j + 1 * p * w + 1 * q * j + -156991/500000` |
| 1 | bound | `{"direction":"lo","ref":"106:1346","triangle":"CEF","value":"334759/1000000"}` | `665241/1000000 + -1 * c + -1 * e * f + 1 * c * e` |
| 2 | bound | `{"direction":"lo","ref":"106:960","triangle":"EFR","value":"12659/125000"}` | `-1 * f * w + 1 * e * f + 1 * w + 1 * r + -137659/125000 + -1 * e * r` |
| 3 | physical | `{"factor":0,"stage":106}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 4 | physical | `{"factor":118,"stage":106}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 5 | physical | `{"factor":122,"stage":106}` | `-1/1 * f * k + -1/1 * h * j + 1/1 * f * h + 1/1 * j + -93/1000` |
| 6 | physical | `{"factor":1236,"stage":106}` | `216083/500000 * w + 23406651/25000000 * a + -216083/500000 * e * r + -23406651/25000000 * a * r + -34210801/25000000 * p * w + 34210801/25000000 * e * p + 34210801/25000000 * q * r + -34210801/25000000 * q` |
| 7 | physical | `{"factor":144,"stage":106}` | `76277533/62500000 + 2/1 * a * b + -1/1 * b * h + -1/1 * a * c + -2/1 * c * e + 1/1 * b * e + -2/1 * w + 1/1 * c * w + 2/1 * e * r + -2/1 * r * k + 1/1 * k + 2/1 * w * j + -1/1 * e * j + -2/1 * j + 1/1 * r + 2/1 * f * k + -1/1 * f * w + -2/1 * f * h + 1/1 * h * j + 1/1 * a * f` |
| 8 | physical | `{"factor":44,"stage":106}` | `-1/1 * p * k + 1/1 * a * p + 1/1 * q * j + -1/1 * a * j + -93/1000` |
| 9 | physical | `{"factor":66,"stage":106}` | `1/1 * f * q + -1/1 * b * q + -1/1 * p + 1/1 * b + -93/1000` |
| 10 | physical | `{"factor":86,"stage":106}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 11 | physical | `{"factor":93,"stage":106}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 12 | coordinate | `{"box":494,"direction":"hi","value":"298887/1000000","variable":"a"}` | `298887/1000000 + -1 * a` |
| 13 | coordinate | `{"box":494,"direction":"hi","value":"18713/40000","variable":"b"}` | `18713/40000 + -1 * b` |
| 14 | coordinate | `{"box":494,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 15 | coordinate | `{"box":494,"direction":"hi","value":"31577/40000","variable":"w"}` | `31577/40000 + -1 * w` |
| 16 | coordinate | `{"box":494,"direction":"hi","value":"215241/250000","variable":"j"}` | `215241/250000 + -1 * j` |
| 17 | coordinate | `{"box":494,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 18 | coordinate | `{"box":494,"direction":"hi","value":"227519/250000","variable":"c"}` | `227519/250000 + -1 * c` |
| 19 | coordinate | `{"box":494,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 20 | coordinate | `{"box":494,"direction":"hi","value":"577017/1000000","variable":"f"}` | `577017/1000000 + -1 * f` |
| 21 | coordinate | `{"box":494,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 22 | coordinate | `{"box":494,"direction":"hi","value":"4841/10000","variable":"p"}` | `4841/10000 + -1 * p` |
| 23 | coordinate | `{"box":494,"direction":"hi","value":"613481/1000000","variable":"q"}` | `613481/1000000 + -1 * q` |
| 24 | coordinate | `{"box":494,"direction":"lo","value":"7533/62500","variable":"a"}` | `-7533/62500 + 1 * a` |
| 25 | coordinate | `{"box":494,"direction":"lo","value":"146871/1000000","variable":"b"}` | `-146871/1000000 + 1 * b` |
| 26 | coordinate | `{"box":494,"direction":"lo","value":"42689/50000","variable":"r"}` | `-42689/50000 + 1 * r` |
| 27 | coordinate | `{"box":494,"direction":"lo","value":"164873/500000","variable":"w"}` | `-164873/500000 + 1 * w` |
| 28 | coordinate | `{"box":494,"direction":"lo","value":"561307/1000000","variable":"j"}` | `-561307/1000000 + 1 * j` |
| 29 | coordinate | `{"box":494,"direction":"lo","value":"171909/250000","variable":"k"}` | `-171909/250000 + 1 * k` |
| 30 | coordinate | `{"box":494,"direction":"lo","value":"135501/250000","variable":"c"}` | `-135501/250000 + 1 * c` |
| 31 | coordinate | `{"box":494,"direction":"lo","value":"60267/500000","variable":"e"}` | `-60267/500000 + 1 * e` |
| 32 | coordinate | `{"box":494,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 33 | coordinate | `{"box":494,"direction":"lo","value":"137199/200000","variable":"h"}` | `-137199/200000 + 1 * h` |
| 34 | coordinate | `{"box":494,"direction":"lo","value":"175991/500000","variable":"p"}` | `-175991/500000 + 1 * p` |
| 35 | coordinate | `{"box":494,"direction":"lo","value":"389083/1000000","variable":"q"}` | `-389083/1000000 + 1 * q` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 36885000000000000 | 3 |
| 1 | 131415000000000000 | 8 |
| 2 | 38472500000000000 | 9 |
| 3 | 45230000000000000 | 1 |
| 4 | 39582500000000000 | 10 |
| 5 | 114185000000000000 | 11 |
| 6 | 29160000000000000 | 2 |
| 7 | 28557500000000000 | 4 |
| 8 | 32657500000000000 | 5 |
| 9 | 96577500000000000 | 0 |
| 10 | 16330000000000000 | 7 |
| 11 | 70575000000000000 | 6 |
| 12 | 4227500000000000 | 24, 25 |
| 13 | 20555000000000000 | 18, 24 |
| 14 | 16330000000000000 | 13, 31 |
| 15 | 16330000000000000 | 20, 24 |
| 16 | 16330000000000000 | 13, 21 |
| 17 | 38472500000000000 | 13, 23 |
| 18 | 131415000000000000 | 12, 34 |
| 19 | 66077500000000000 | 12, 14 |
| 20 | 131415000000000000 | 24, 28 |
| 21 | 52155000000000000 | 18, 31 |
| 22 | 114185000000000000 | 21, 30 |
| 23 | 114185000000000000 | 18, 23 |
| 24 | 23255000000000000 | 27, 30 |
| 25 | 16070000000000000 | 31, 32 |
| 26 | 96577500000000000 | 19, 34 |
| 27 | 95145000000000000 | 14, 19 |
| 28 | 12230000000000000 | 16, 31 |
| 29 | 38472500000000000 | 20, 35 |
| 30 | 45490000000000000 | 27, 32 |
| 31 | 114185000000000000 | 33, 34 |
| 32 | 16330000000000000 | 16, 21 |
| 33 | 227992500000000000 | 29, 34 |
| 34 | 227992500000000000 | 16, 35 |
| 35 | 92480000000000000 | 14, 29 |
| 36 | 32610000000000000 | 27, 28 |
| 37 | 59867500000000000 | 15, 16 |
| 38 | 2500000000000 | 12, 25 |
| 39 | 814752028060 | 12 |
| 40 | 747217500000 | 13 |
| 41 | 196538701471526918 | 34 |
| 42 | 859672500000 | 25 |
| 43 | 1156960000000 | 18 |
| 44 | 2500000000000 | 30, 31 |
| 45 | 301335000000 | 30 |
| 46 | 3704804646014 | 31 |
| 47 | 3881110000000 | 27 |
| 48 | 2500000000000 | 18, 27 |
| 49 | 3876346445700 | 15 |
| 50 | 4884550000000 | 19, 26 |
| 51 | 4170331099000 | 19 |
| 52 | 52133243081185349 | 14 |
| 53 | 5000000000000 | 26, 29 |
| 54 | 3597228181491 | 26 |
| 55 | 4268900000000 | 29 |
| 56 | 4686407500000 | 17 |
| 57 | 2500000000000 | 15, 28 |
| 58 | 4473562500000 | 16 |
| 59 | 2500000000000 | 28, 31 |
| 60 | 3770005000000 | 28 |
| 61 | 2500000000000 | 20, 29 |
| 62 | 1810127500000 | 20 |
| 63 | 2500000000000 | 21, 28 |
| 64 | 1403267500000 | 21 |
| 65 | 2500000000000 | 32, 33 |
| 66 | 1714987500000 | 32 |
| 67 | 2159800000000 | 33 |
| 68 | 408777000000 | 26, 35 |
| 69 | 349005627060 | 35 |
| 70 | 408777000000 | 22, 27 |
| 71 | 134792580642 | 22 |
| 72 | 566464500000 | 24 |
| 73 | 524227000000 | 12, 26 |
| 74 | 408777000000 | 31, 34 |
| 75 | 104707000000 | 23 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -4206308249329796078739/250000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -4206308249329796078739/250000 | 1 | -4206308249329796078739/250000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 494 | -4206308249329796078739/250000 |
