# BITT convex: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 495

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR-/PQS+/BFP+/APR-/APS-/BQS+ |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR-/PQS+/BFP+/APR-/APS-/BQS+:LH |
| Index | 0 |
| Context | 45 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 455 |
| Coordinate cut | b high 18713/40000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 7533/62500 | 298887/1000000 | 7533/62500 | 298887/1000000 |
| b | 18713/40000 | 72131/125000 | 18713/40000 | 72131/125000 |
| c | 135501/250000 | 227519/250000 | 135501/250000 | 227519/250000 |
| e | 60267/500000 | 391/1000 | 60267/500000 | 391/1000 |
| f | 279/1000 | 577017/1000000 | 279/1000 | 577017/1000000 |
| h | 595559/1000000 | 1 | 595559/1000000 | 1 |
| p | 13741/100000 | 4841/10000 | 13741/100000 | 4841/10000 |
| q | 31859/100000 | 613481/1000000 | 31859/100000 | 613481/1000000 |
| u | 89481/200000 | 821933/1000000 | 89481/200000 | 821933/1000000 |
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
| 0 | bound | `{"direction":"lo","ref":"106:1025","triangle":"BCQ","value":"71317/500000"}` | `1 * c * v + -1 * b * v + -71317/500000` |
| 1 | bound | `{"direction":"lo","ref":"106:1029","triangle":"QRS","value":"63991/500000"}` | `1 * r * k + -1 * v * r + -1 * u * k + -1 * w * j + 1 * u * w + 1 * v * j + -63991/500000` |
| 2 | bound | `{"direction":"lo","ref":"106:1053","triangle":"BCH","value":"324687/1000000"}` | `1 * c * h + -1 * b * h + -324687/1000000` |
| 3 | bound | `{"direction":"lo","ref":"106:1196","triangle":"AQR","value":"18821/125000"}` | `-1 * u * w + 1 * a * u + 1 * v * r + -1 * a * r + -18821/125000` |
| 4 | bound | `{"direction":"lo","ref":"106:1329","triangle":"CEQ","value":"148759/1000000"}` | `1 * v + -1 * c * v + -1 * e * u + 1 * c * e + -148759/1000000` |
| 5 | bound | `{"direction":"lo","ref":"106:1346","triangle":"CEF","value":"334759/1000000"}` | `665241/1000000 + -1 * c + -1 * e * f + 1 * c * e` |
| 6 | bound | `{"direction":"lo","ref":"106:1424","triangle":"AFS","value":"175113/500000"}` | `-1 * f * k + 1 * a * f + 1 * j + -1 * a * j + -175113/500000` |
| 7 | physical | `{"factor":0,"stage":106}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 8 | physical | `{"factor":105,"stage":106}` | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 9 | physical | `{"factor":116,"stage":106}` | `-1/1 * u * w + 1/1 * e * u + 1/1 * w + 1/1 * v * r + -1/1 * v + -1/1 * e * r + -93/1000` |
| 10 | physical | `{"factor":118,"stage":106}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 11 | physical | `{"factor":122,"stage":106}` | `-1/1 * f * k + -1/1 * h * j + 1/1 * f * h + 1/1 * j + -93/1000` |
| 12 | physical | `{"factor":141,"stage":106}` | `1/1 * f + -1/1 * b` |
| 13 | physical | `{"factor":144,"stage":106}` | `76277533/62500000 + 2/1 * a * b + -1/1 * b * h + -1/1 * a * c + -2/1 * c * e + 1/1 * b * e + -2/1 * w + 1/1 * c * w + 2/1 * e * r + -2/1 * r * k + 1/1 * k + 2/1 * w * j + -1/1 * e * j + -2/1 * j + 1/1 * r + 2/1 * f * k + -1/1 * f * w + -2/1 * f * h + 1/1 * h * j + 1/1 * a * f` |
| 14 | physical | `{"factor":48,"stage":106}` | `1/1 * c * e + -1/1 * b * e + -93/1000` |
| 15 | physical | `{"factor":78,"stage":106}` | `1/1 * u * k + -1/1 * b * k + -1/1 * v * j + 1/1 * b * v + -93/1000` |
| 16 | physical | `{"factor":86,"stage":106}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 17 | coordinate | `{"box":495,"direction":"hi","value":"298887/1000000","variable":"a"}` | `298887/1000000 + -1 * a` |
| 18 | coordinate | `{"box":495,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 19 | coordinate | `{"box":495,"direction":"hi","value":"31577/40000","variable":"w"}` | `31577/40000 + -1 * w` |
| 20 | coordinate | `{"box":495,"direction":"hi","value":"215241/250000","variable":"j"}` | `215241/250000 + -1 * j` |
| 21 | coordinate | `{"box":495,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 22 | coordinate | `{"box":495,"direction":"hi","value":"227519/250000","variable":"c"}` | `227519/250000 + -1 * c` |
| 23 | coordinate | `{"box":495,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 24 | coordinate | `{"box":495,"direction":"hi","value":"577017/1000000","variable":"f"}` | `577017/1000000 + -1 * f` |
| 25 | coordinate | `{"box":495,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 26 | coordinate | `{"box":495,"direction":"hi","value":"821933/1000000","variable":"u"}` | `821933/1000000 + -1 * u` |
| 27 | coordinate | `{"box":495,"direction":"hi","value":"840197/1000000","variable":"v"}` | `840197/1000000 + -1 * v` |
| 28 | coordinate | `{"box":495,"direction":"lo","value":"7533/62500","variable":"a"}` | `-7533/62500 + 1 * a` |
| 29 | coordinate | `{"box":495,"direction":"lo","value":"18713/40000","variable":"b"}` | `-18713/40000 + 1 * b` |
| 30 | coordinate | `{"box":495,"direction":"lo","value":"164873/500000","variable":"w"}` | `-164873/500000 + 1 * w` |
| 31 | coordinate | `{"box":495,"direction":"lo","value":"561307/1000000","variable":"j"}` | `-561307/1000000 + 1 * j` |
| 32 | coordinate | `{"box":495,"direction":"lo","value":"171909/250000","variable":"k"}` | `-171909/250000 + 1 * k` |
| 33 | coordinate | `{"box":495,"direction":"lo","value":"135501/250000","variable":"c"}` | `-135501/250000 + 1 * c` |
| 34 | coordinate | `{"box":495,"direction":"lo","value":"60267/500000","variable":"e"}` | `-60267/500000 + 1 * e` |
| 35 | coordinate | `{"box":495,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 36 | coordinate | `{"box":495,"direction":"lo","value":"595559/1000000","variable":"h"}` | `-595559/1000000 + 1 * h` |
| 37 | coordinate | `{"box":495,"direction":"lo","value":"215201/500000","variable":"v"}` | `-215201/500000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 39765000000 | 7 |
| 1 | 53635000000 | 6 |
| 2 | 13652000000 | 3 |
| 3 | 123000000 | 14 |
| 4 | 1736000000 | 2 |
| 5 | 35120000000 | 0 |
| 6 | 58253000000 | 15 |
| 7 | 12220000000 | 5 |
| 8 | 35120000000 | 4 |
| 9 | 123000000 | 16 |
| 10 | 3170000000 | 8 |
| 11 | 44601000000 | 9 |
| 12 | 123000000 | 10 |
| 13 | 123000000 | 11 |
| 14 | 58253000000 | 1 |
| 15 | 51850000000 | 12 |
| 16 | 123000000 | 13 |
| 17 | 39519000000 | 28, 29 |
| 18 | 39642000000 | 22, 28 |
| 19 | 53759000000 | 24, 28 |
| 20 | 1859000000 | 29, 36 |
| 21 | 23133000000 | 27, 29 |
| 22 | 13652000000 | 26, 28 |
| 23 | 13652000000 | 17, 18 |
| 24 | 58253000000 | 29, 32 |
| 25 | 53635000000 | 17, 20 |
| 26 | 47340000000 | 22, 34 |
| 27 | 1736000000 | 25, 33 |
| 28 | 15390000000 | 23, 24 |
| 29 | 12651000000 | 26, 34 |
| 30 | 44601000000 | 18, 23 |
| 31 | 123000000 | 24, 25 |
| 32 | 3170000000 | 24, 37 |
| 33 | 123000000 | 30, 35 |
| 34 | 53512000000 | 21, 24 |
| 35 | 58130000000 | 18, 32 |
| 36 | 18291000000 | 30, 31 |
| 37 | 39839000000 | 19, 20 |
| 38 | 1000000 | 28, 35 |
| 39 | 279000 | 28 |
| 40 | 120528 | 35 |
| 41 | 238840 | 20 |
| 42 | 50536 | 22 |
| 43 | 339615 | 27 |
| 44 | 433174 | 19 |
| 45 | 323890 | 26 |
| 46 | 456571 | 21 |
| 47 | 561307 | 30 |
| 48 | 329746 | 31 |
| 49 | 790334 | 24 |
| 50 | 78340872920 | 29 |
| 51 | 18575884356 | 18 |
| 52 | 338696 | 17 |
| 53 | 259178 | 25 |
| 54 | 19407 | 34 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -4296698071333169/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -4296698071333169/1000000 | 1 | -4296698071333169/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 495 | -4296698071333169/1000000 |

## Stage 496

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR-/PQS+/BFP+/APR-/APS-/BQS+ |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR-/PQS+/BFP+/APR-/APS-/BQS+:H |
| Index | 0 |
| Context | 45 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 454 |
| Coordinate cut | q high 613481/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 7533/62500 | 298887/1000000 | 7533/62500 | 298887/1000000 |
| b | 146871/1000000 | 72131/125000 | 146871/1000000 | 72131/125000 |
| c | 135501/250000 | 227519/250000 | 135501/250000 | 227519/250000 |
| e | 60267/500000 | 391/1000 | 60267/500000 | 391/1000 |
| f | 279/1000 | 577017/1000000 | 279/1000 | 577017/1000000 |
| h | 595559/1000000 | 1 | 595559/1000000 | 1 |
| p | 13741/100000 | 4841/10000 | 13741/100000 | 4841/10000 |
| q | 613481/1000000 | 93353/125000 | 613481/1000000 | 93353/125000 |
| u | 89481/200000 | 821933/1000000 | 89481/200000 | 821933/1000000 |
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
| 0 | bound | `{"direction":"lo","ref":"106:1292","triangle":"EFP","value":"370959/1000000"}` | `1 * f * q + -1 * e * f + -1 * q + -1 * p + 629041/1000000 + 1 * e * p` |
| 1 | bound | `{"direction":"lo","ref":"106:1346","triangle":"CEF","value":"334759/1000000"}` | `665241/1000000 + -1 * c + -1 * e * f + 1 * c * e` |
| 2 | bound | `{"direction":"lo","ref":"106:1390","triangle":"FPQ","value":"139751/1000000"}` | `1 * p * v + -1 * p + -1 * f * v + -1 * q * u + 1 * f * q + 1 * u + -139751/1000000` |
| 3 | bound | `{"direction":"lo","ref":"106:939","triangle":"EFH","value":"163857/500000"}` | `1 * f * h + -1 * e * f + -1 * h + 336143/500000` |
| 4 | physical | `{"factor":105,"stage":106}` | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 5 | physical | `{"factor":1770,"stage":106}` | `-86073/200000 * p * v + -118527/200000 * c * v + 86073/200000 * q * u + 118527/200000 * c * q + -1023/1000 * q + 1023/1000 * e * p + 1023/1000 * v + -1023/1000 * e * u` |
| 6 | physical | `{"factor":33,"stage":106}` | `-1/1 * f * q + 1/1 * a * f + 1/1 * p + -1/1 * a * p + -93/1000` |
| 7 | physical | `{"factor":90,"stage":106}` | `-1/1 * f * v + 1/1 * c * v + 1/1 * u + -1/1 * c + -93/1000` |
| 8 | physical | `{"factor":93,"stage":106}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 9 | coordinate | `{"box":496,"direction":"hi","value":"298887/1000000","variable":"a"}` | `298887/1000000 + -1 * a` |
| 10 | coordinate | `{"box":496,"direction":"hi","value":"227519/250000","variable":"c"}` | `227519/250000 + -1 * c` |
| 11 | coordinate | `{"box":496,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 12 | coordinate | `{"box":496,"direction":"hi","value":"577017/1000000","variable":"f"}` | `577017/1000000 + -1 * f` |
| 13 | coordinate | `{"box":496,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 14 | coordinate | `{"box":496,"direction":"hi","value":"4841/10000","variable":"p"}` | `4841/10000 + -1 * p` |
| 15 | coordinate | `{"box":496,"direction":"hi","value":"93353/125000","variable":"q"}` | `93353/125000 + -1 * q` |
| 16 | coordinate | `{"box":496,"direction":"hi","value":"821933/1000000","variable":"u"}` | `821933/1000000 + -1 * u` |
| 17 | coordinate | `{"box":496,"direction":"hi","value":"840197/1000000","variable":"v"}` | `840197/1000000 + -1 * v` |
| 18 | coordinate | `{"box":496,"direction":"lo","value":"7533/62500","variable":"a"}` | `-7533/62500 + 1 * a` |
| 19 | coordinate | `{"box":496,"direction":"lo","value":"135501/250000","variable":"c"}` | `-135501/250000 + 1 * c` |
| 20 | coordinate | `{"box":496,"direction":"lo","value":"60267/500000","variable":"e"}` | `-60267/500000 + 1 * e` |
| 21 | coordinate | `{"box":496,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 22 | coordinate | `{"box":496,"direction":"lo","value":"595559/1000000","variable":"h"}` | `-595559/1000000 + 1 * h` |
| 23 | coordinate | `{"box":496,"direction":"lo","value":"13741/100000","variable":"p"}` | `-13741/100000 + 1 * p` |
| 24 | coordinate | `{"box":496,"direction":"lo","value":"613481/1000000","variable":"q"}` | `-613481/1000000 + 1 * q` |
| 25 | coordinate | `{"box":496,"direction":"lo","value":"89481/200000","variable":"u"}` | `-89481/200000 + 1 * u` |
| 26 | coordinate | `{"box":496,"direction":"lo","value":"215201/500000","variable":"v"}` | `-215201/500000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 12538000000000000 | 6 |
| 1 | 2134800000000000 | 1 |
| 2 | 729300000000000 | 7 |
| 3 | 5586700000000000 | 8 |
| 4 | 448700000000000 | 3 |
| 5 | 7371900000000000 | 0 |
| 6 | 1258900000000000 | 4 |
| 7 | 529600000000000 | 2 |
| 8 | 1230600000000000 | 5 |
| 9 | 12538000000000000 | 9, 21 |
| 10 | 7417400000000000 | 18, 23 |
| 11 | 5120600000000000 | 9, 14 |
| 12 | 2134800000000000 | 10, 20 |
| 13 | 5586700000000000 | 13, 19 |
| 14 | 4857403369000000 | 19, 24 |
| 15 | 11214300000000000 | 20, 21 |
| 16 | 8630803800000000 | 11, 23 |
| 17 | 448700000000000 | 13, 21 |
| 18 | 4636500000000000 | 21, 24 |
| 19 | 5586700000000000 | 13, 14 |
| 20 | 45444951938 | 23 |
| 21 | 8693017489 | 19 |
| 22 | 29600139000 | 20 |
| 23 | 12053400000 | 21 |
| 24 | 3369000000 | 10, 26 |
| 25 | 1450024338 | 10 |
| 26 | 6866046044 | 17 |
| 27 | 12557119355611476 | 24 |
| 28 | 20423200000 | 22 |
| 29 | 27194958000 | 11 |
| 30 | 1485800000 | 14 |
| 31 | 3800000000 | 20, 25 |
| 32 | 458029200 | 25 |
| 33 | 7169000000 | 23, 26 |
| 34 | 985092290 | 26 |
| 35 | 7169000000 | 15, 25 |
| 36 | 3207446445 | 15 |
| 37 | 5353981256 | 16 |
| 38 | 5394000000 | 18 |
| 39 | 48166700000 | 12 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -28630806851526275801/50000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -28630806851526275801/50000 | 1 | -28630806851526275801/50000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 496 | -28630806851526275801/50000 |

## Stage 497

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR-/PQS+/BFP+/APR-/APS-/BQS- |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR-/PQS+/BFP+/APR-/APS-/BQS-:root |
| Index | 0 |
| Context | 46 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 107 |
| Coordinate cut | none |

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
| q | 68837/200000 | 36117/50000 | 68837/200000 | 36117/50000 |
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


## Stage 498

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR-/PQS+/BFP+/APR-/APS-/BQS- |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR-/PQS+/BFP+/APR-/APS-/BQS-:L |
| Index | 0 |
| Context | 46 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 497 |
| Coordinate cut | q low 582139/1000000 |

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
| q | 68837/200000 | 582139/1000000 | 68837/200000 | 582139/1000000 |
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


## Stage 499

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR-/PQS+/BFP+/APR-/APS-/BQS- |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR-/PQS+/BFP+/APR-/APS-/BQS-:LL |
| Index | 0 |
| Context | 46 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 498 |
| Coordinate cut | h low 761077/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 126511/1000000 | 16389/62500 | 126511/1000000 | 16389/62500 |
| b | 173033/1000000 | 119657/250000 | 173033/1000000 | 119657/250000 |
| c | 135501/250000 | 439089/500000 | 135501/250000 | 439089/500000 |
| e | 65593/500000 | 391/1000 | 65593/500000 | 391/1000 |
| f | 279/1000 | 571831/1000000 | 279/1000 | 571831/1000000 |
| h | 617191/1000000 | 761077/1000000 | 617191/1000000 | 761077/1000000 |
| p | 30167/200000 | 78953/250000 | 30167/200000 | 78953/250000 |
| q | 68837/200000 | 582139/1000000 | 68837/200000 | 582139/1000000 |
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
| 2 | physical | `{"factor":0,"stage":107}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 3 | physical | `{"factor":119,"stage":107}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 4 | physical | `{"factor":135,"stage":107}` | `-1/1 * u * w + 1/1 * q * u + 1/1 * p * w + 1/1 * v * r + -1/1 * p * v + -1/1 * q * r + -93/1000` |
| 5 | physical | `{"factor":136,"stage":107}` | `1/1 * u * k + -1/1 * q * u + -1/1 * p * k + -1/1 * v * j + 1/1 * p * v + 1/1 * q * j + -93/1000` |
| 6 | physical | `{"factor":165,"stage":107}` | `1/1 * c * h * p + -1/1 * b * h * p + -93/1000 * c + -93/1000 * b` |
| 7 | physical | `{"factor":33,"stage":107}` | `-1/1 * f * q + 1/1 * a * f + 1/1 * p + -1/1 * a * p + -93/1000` |
| 8 | physical | `{"factor":44,"stage":107}` | `-1/1 * p * k + 1/1 * a * p + 1/1 * q * j + -1/1 * a * j + -93/1000` |
| 9 | physical | `{"factor":46,"stage":107}` | `1/1 * u * k + -1/1 * a * u + -1/1 * v * j + 1/1 * a * j + -93/1000` |
| 10 | physical | `{"factor":66,"stage":107}` | `1/1 * f * q + -1/1 * b * q + -1/1 * p + 1/1 * b + -93/1000` |
| 11 | physical | `{"factor":70,"stage":107}` | `1/1 * b * q + 1/1 * h * p + -1/1 * b * h + -93/1000` |
| 12 | physical | `{"factor":73,"stage":107}` | `1/1 * b * k + 1/1 * h * j + -1/1 * b * h + -13857/20000` |
| 13 | physical | `{"factor":78,"stage":107}` | `-1/1 * u * k + 1/1 * b * k + 1/1 * v * j + -1/1 * b * v + -93/1000` |
| 14 | physical | `{"factor":90,"stage":107}` | `-1/1 * f * v + 1/1 * c * v + 1/1 * u + -1/1 * c + -93/1000` |
| 15 | physical | `{"factor":93,"stage":107}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 16 | coordinate | `{"box":499,"direction":"hi","value":"16389/62500","variable":"a"}` | `16389/62500 + -1 * a` |
| 17 | coordinate | `{"box":499,"direction":"hi","value":"119657/250000","variable":"b"}` | `119657/250000 + -1 * b` |
| 18 | coordinate | `{"box":499,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 19 | coordinate | `{"box":499,"direction":"hi","value":"773963/1000000","variable":"w"}` | `773963/1000000 + -1 * w` |
| 20 | coordinate | `{"box":499,"direction":"hi","value":"213829/250000","variable":"j"}` | `213829/250000 + -1 * j` |
| 21 | coordinate | `{"box":499,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 22 | coordinate | `{"box":499,"direction":"hi","value":"439089/500000","variable":"c"}` | `439089/500000 + -1 * c` |
| 23 | coordinate | `{"box":499,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 24 | coordinate | `{"box":499,"direction":"hi","value":"571831/1000000","variable":"f"}` | `571831/1000000 + -1 * f` |
| 25 | coordinate | `{"box":499,"direction":"hi","value":"761077/1000000","variable":"h"}` | `761077/1000000 + -1 * h` |
| 26 | coordinate | `{"box":499,"direction":"hi","value":"78953/250000","variable":"p"}` | `78953/250000 + -1 * p` |
| 27 | coordinate | `{"box":499,"direction":"hi","value":"582139/1000000","variable":"q"}` | `582139/1000000 + -1 * q` |
| 28 | coordinate | `{"box":499,"direction":"hi","value":"836359/1000000","variable":"v"}` | `836359/1000000 + -1 * v` |
| 29 | coordinate | `{"box":499,"direction":"lo","value":"126511/1000000","variable":"a"}` | `-126511/1000000 + 1 * a` |
| 30 | coordinate | `{"box":499,"direction":"lo","value":"173033/1000000","variable":"b"}` | `-173033/1000000 + 1 * b` |
| 31 | coordinate | `{"box":499,"direction":"lo","value":"433969/1000000","variable":"w"}` | `-433969/1000000 + 1 * w` |
| 32 | coordinate | `{"box":499,"direction":"lo","value":"13857/20000","variable":"j"}` | `-13857/20000 + 1 * j` |
| 33 | coordinate | `{"box":499,"direction":"lo","value":"154161/200000","variable":"k"}` | `-154161/200000 + 1 * k` |
| 34 | coordinate | `{"box":499,"direction":"lo","value":"135501/250000","variable":"c"}` | `-135501/250000 + 1 * c` |
| 35 | coordinate | `{"box":499,"direction":"lo","value":"65593/500000","variable":"e"}` | `-65593/500000 + 1 * e` |
| 36 | coordinate | `{"box":499,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 37 | coordinate | `{"box":499,"direction":"lo","value":"617191/1000000","variable":"h"}` | `-617191/1000000 + 1 * h` |
| 38 | coordinate | `{"box":499,"direction":"lo","value":"30167/200000","variable":"p"}` | `-30167/200000 + 1 * p` |
| 39 | coordinate | `{"box":499,"direction":"lo","value":"68837/200000","variable":"q"}` | `-68837/200000 + 1 * q` |
| 40 | coordinate | `{"box":499,"direction":"lo","value":"466437/1000000","variable":"u"}` | `-466437/1000000 + 1 * u` |
| 41 | coordinate | `{"box":499,"direction":"lo","value":"3891/8000","variable":"v"}` | `-3891/8000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 6881000000000000 | 2 |
| 1 | 12106000000000000 | 7 |
| 2 | 29253000000000000 | 8 |
| 3 | 29253000000000000 | 9 |
| 4 | 12106000000000000 | 10 |
| 5 | 20330000000000000 | 11 |
| 6 | 9856000000000000 | 12 |
| 7 | 31870000000000000 | 13 |
| 8 | 6267000000000000 | 1 |
| 9 | 4836000000000000 | 14 |
| 10 | 31858000000000000 | 15 |
| 11 | 25954000000000000 | 3 |
| 12 | 2617000000000000 | 4 |
| 13 | 2617000000000000 | 5 |
| 14 | 4158000000000000 | 0 |
| 15 | 75376000000000000 | 6 |
| 16 | 6881000000000000 | 29, 30 |
| 17 | 6881000000000000 | 22, 29 |
| 18 | 12106000000000000 | 16, 36 |
| 19 | 43728389505000000 | 17, 25 |
| 20 | 8224000000000000 | 17, 39 |
| 21 | 17147000000000000 | 26, 29 |
| 22 | 31870000000000000 | 30, 41 |
| 23 | 29253000000000000 | 29, 40 |
| 24 | 41725000000000000 | 21, 30 |
| 25 | 6267000000000000 | 22, 35 |
| 26 | 41247000000000000 | 25, 34 |
| 27 | 31858000000000000 | 22, 27 |
| 28 | 4836000000000000 | 22, 41 |
| 29 | 6267000000000000 | 35, 36 |
| 30 | 25954000000000000 | 18, 23 |
| 31 | 25954000000000000 | 20, 35 |
| 32 | 4836000000000000 | 36, 41 |
| 33 | 9856000000000000 | 25, 32 |
| 34 | 6775000000000000 | 19, 38 |
| 35 | 6775000000000000 | 18, 27 |
| 36 | 36028000000000000 | 21, 26 |
| 37 | 36028000000000000 | 20, 39 |
| 38 | 2617000000000000 | 31, 40 |
| 39 | 2617000000000000 | 18, 41 |
| 40 | 30112000000000000 | 18, 33 |
| 41 | 30112000000000000 | 19, 20 |
| 42 | 75377000000000000 | 22, 37, 38 |
| 43 | 1980489795000000 | 22, 37 |
| 44 | 46522006007000000 | 22, 38 |
| 45 | 54666580500000000 | 25, 38 |
| 46 | 62203000000000000 | 17, 25, 38 |
| 47 | 36077064128000000 | 25, 26 |
| 48 | 13173000000000000 | 17, 26, 37 |
| 49 | 8130257043000000 | 17, 26 |
| 50 | 47341272631000000 | 30, 38 |
| 51 | 240177682912 | 26 |
| 52 | 473677560801 | 30 |
| 53 | 699398000000 | 37, 38 |
| 54 | 138625364038 | 37 |
| 55 | 478836310841 | 38 |
| 56 | 191476000000 | 30, 37 |
| 57 | 1000000000000 | 17, 33 |
| 58 | 770805000000 | 17 |
| 59 | 478628000000 | 21 |
| 60 | 505587065845 | 22 |
| 61 | 523156000000 | 40 |
| 62 | 3343846077100492 | 25 |
| 63 | 272811000000 | 33 |
| 64 | 33896000000 | 31 |
| 65 | 1000000000000 | 34, 37, 38 |
| 66 | 150835000000 | 34, 37 |
| 67 | 617191000000 | 34, 38 |
| 68 | 93094004485 | 34 |
| 69 | 223548000000 | 16 |
| 70 | 231582000000 | 24 |
| 71 | 433204000000 | 39 |
| 72 | 63098000000 | 28 |
| 73 | 80010000000 | 35 |
| 74 | 10391317810000000 | 18 |
| 75 | 699680000000 | 20 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -2560847009358180197463/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -2560847009358180197463/1000000 | 1 | -2560847009358180197463/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 499 | -2560847009358180197463/1000000 |
