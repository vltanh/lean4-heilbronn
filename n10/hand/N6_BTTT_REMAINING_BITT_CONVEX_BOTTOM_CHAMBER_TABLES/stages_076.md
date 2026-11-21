# BITT convex: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 380

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS+/BFP+/AQR+/EPQ-/APS+/APR-/BQR- |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS+/BFP+/AQR+/EPQ-/APS+/APR-/BQR-:LLLHLHL |
| Index | 0 |
| Context | 20 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 379 |
| Coordinate cut | v low 79637/250000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 54347/500000 | 6143/20000 | 54347/500000 | 6143/20000 |
| b | 72197/500000 | 15761/31250 | 72197/500000 | 15761/31250 |
| c | 70629/100000 | 1 | 70629/100000 | 1 |
| e | 54347/500000 | 391/1000 | 54347/500000 | 391/1000 |
| f | 279/1000 | 116527/200000 | 279/1000 | 116527/200000 |
| h | 100193/125000 | 1 | 100193/125000 | 1 |
| p | 18267/125000 | 383187/1000000 | 18267/125000 | 383187/1000000 |
| q | 255089/1000000 | 32733/62500 | 255089/1000000 | 32733/62500 |
| u | 492619/1000000 | 141731/200000 | 492619/1000000 | 141731/200000 |
| v | 5031/20000 | 79637/250000 | 5031/20000 | 79637/250000 |
| r | 8943/12500 | 1 | 8943/12500 | 1 |
| w | 237037/500000 | 26361/31250 | 237037/500000 | 26361/31250 |
| j | 273197/500000 | 174689/200000 | 273197/500000 | 174689/200000 |
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
| 0 | bound | `{"direction":"lo","ref":"31:736","triangle":"BEP","value":"52749/250000"}` | `1 * q + -1 * b * q + -1 * e * p + 1 * b * e + -52749/250000` |
| 1 | bound | `{"direction":"lo","ref":"31:779","triangle":"CEQ","value":"56279/500000"}` | `1 * v + -1 * c * v + -1 * e * u + 1 * c * e + -56279/500000` |
| 2 | physical | `{"factor":115,"stage":31}` | `-1/1 * p * v + 1/1 * e * p + 1/1 * v + 1/1 * q * u + -1/1 * q + -1/1 * e * u + -93/1000` |
| 3 | physical | `{"factor":124,"stage":31}` | `-1/1 * f * k + -1/1 * h * j + 1/1 * f * h + 1/1 * j + -93/1000` |
| 4 | physical | `{"factor":130,"stage":31}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 5 | physical | `{"factor":137,"stage":31}` | `1/1 * u * w + -1/1 * q * u + -1/1 * p * w + -1/1 * v * r + 1/1 * p * v + 1/1 * q * r + -93/1000` |
| 6 | physical | `{"factor":142,"stage":31}` | `1/1 * e + -1/1 * a` |
| 7 | physical | `{"factor":44,"stage":31}` | `-1/1 * p * v + 1/1 * a * p + 1/1 * q * u + -1/1 * a * u + -93/1000` |
| 8 | physical | `{"factor":46,"stage":31}` | `1/1 * p * k + -1/1 * a * p + -1/1 * q * j + 1/1 * a * j + -93/1000` |
| 9 | physical | `{"factor":50,"stage":31}` | `1/1 * c * e + -1/1 * b * e + -93/1000` |
| 10 | physical | `{"factor":69,"stage":31}` | `1/1 * f * q + -1/1 * b * q + -1/1 * p + 1/1 * b + -93/1000` |
| 11 | physical | `{"factor":73,"stage":31}` | `1/1 * b * q + 1/1 * h * p + -1/1 * b * h + -93/1000` |
| 12 | physical | `{"factor":80,"stage":31}` | `-1/1 * u * w + 1/1 * b * w + 1/1 * v * r + -1/1 * b * v + -93/1000` |
| 13 | physical | `{"factor":96,"stage":31}` | `1/1 * c * v + 1/1 * h * u + -1/1 * c * h + -93/1000` |
| 14 | coordinate | `{"box":380,"direction":"hi","value":"15761/31250","variable":"b"}` | `15761/31250 + -1 * b` |
| 15 | coordinate | `{"box":380,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 16 | coordinate | `{"box":380,"direction":"hi","value":"26361/31250","variable":"w"}` | `26361/31250 + -1 * w` |
| 17 | coordinate | `{"box":380,"direction":"hi","value":"174689/200000","variable":"j"}` | `174689/200000 + -1 * j` |
| 18 | coordinate | `{"box":380,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 19 | coordinate | `{"box":380,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 20 | coordinate | `{"box":380,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 21 | coordinate | `{"box":380,"direction":"hi","value":"116527/200000","variable":"f"}` | `116527/200000 + -1 * f` |
| 22 | coordinate | `{"box":380,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 23 | coordinate | `{"box":380,"direction":"hi","value":"383187/1000000","variable":"p"}` | `383187/1000000 + -1 * p` |
| 24 | coordinate | `{"box":380,"direction":"hi","value":"32733/62500","variable":"q"}` | `32733/62500 + -1 * q` |
| 25 | coordinate | `{"box":380,"direction":"hi","value":"141731/200000","variable":"u"}` | `141731/200000 + -1 * u` |
| 26 | coordinate | `{"box":380,"direction":"hi","value":"79637/250000","variable":"v"}` | `79637/250000 + -1 * v` |
| 27 | coordinate | `{"box":380,"direction":"lo","value":"54347/500000","variable":"a"}` | `-54347/500000 + 1 * a` |
| 28 | coordinate | `{"box":380,"direction":"lo","value":"72197/500000","variable":"b"}` | `-72197/500000 + 1 * b` |
| 29 | coordinate | `{"box":380,"direction":"lo","value":"8943/12500","variable":"r"}` | `-8943/12500 + 1 * r` |
| 30 | coordinate | `{"box":380,"direction":"lo","value":"237037/500000","variable":"w"}` | `-237037/500000 + 1 * w` |
| 31 | coordinate | `{"box":380,"direction":"lo","value":"273197/500000","variable":"j"}` | `-273197/500000 + 1 * j` |
| 32 | coordinate | `{"box":380,"direction":"lo","value":"100193/125000","variable":"k"}` | `-100193/125000 + 1 * k` |
| 33 | coordinate | `{"box":380,"direction":"lo","value":"70629/100000","variable":"c"}` | `-70629/100000 + 1 * c` |
| 34 | coordinate | `{"box":380,"direction":"lo","value":"54347/500000","variable":"e"}` | `-54347/500000 + 1 * e` |
| 35 | coordinate | `{"box":380,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 36 | coordinate | `{"box":380,"direction":"lo","value":"100193/125000","variable":"h"}` | `-100193/125000 + 1 * h` |
| 37 | coordinate | `{"box":380,"direction":"lo","value":"18267/125000","variable":"p"}` | `-18267/125000 + 1 * p` |
| 38 | coordinate | `{"box":380,"direction":"lo","value":"255089/1000000","variable":"q"}` | `-255089/1000000 + 1 * q` |
| 39 | coordinate | `{"box":380,"direction":"lo","value":"492619/1000000","variable":"u"}` | `-492619/1000000 + 1 * u` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 28411000000 | 7 |
| 1 | 15834000000 | 8 |
| 2 | 8627000000 | 9 |
| 3 | 8627000000 | 0 |
| 4 | 9087000000 | 10 |
| 5 | 22596000000 | 11 |
| 6 | 42136000000 | 12 |
| 7 | 1353000000 | 1 |
| 8 | 1353000000 | 13 |
| 9 | 97426000000 | 2 |
| 10 | 5612000000 | 3 |
| 11 | 2290000000 | 4 |
| 12 | 1782000000 | 5 |
| 13 | 4654000000 | 6 |
| 14 | 22596000000 | 28, 36 |
| 15 | 4882000000 | 14, 38 |
| 16 | 12577000000 | 23, 27 |
| 17 | 42136000000 | 14, 26 |
| 18 | 28411000000 | 27, 39 |
| 19 | 3319000000 | 16, 28 |
| 20 | 38817000000 | 14, 30 |
| 21 | 15834000000 | 17, 27 |
| 22 | 9980000000 | 19, 34 |
| 23 | 1353000000 | 33, 36 |
| 24 | 88799000000 | 23, 34 |
| 25 | 98780000000 | 34, 39 |
| 26 | 5612000000 | 21, 36 |
| 27 | 9087000000 | 21, 38 |
| 28 | 2290000000 | 21, 30 |
| 29 | 7902000000 | 18, 21 |
| 30 | 22596000000 | 22, 37 |
| 31 | 215000000 | 25, 36 |
| 32 | 1138000000 | 22, 39 |
| 33 | 5612000000 | 31, 36 |
| 34 | 124055000000 | 23, 26 |
| 35 | 124055000000 | 25, 38 |
| 36 | 1782000000 | 30, 37 |
| 37 | 1782000000 | 15, 38 |
| 38 | 15834000000 | 18, 37 |
| 39 | 15834000000 | 31, 38 |
| 40 | 40355000000 | 30, 39 |
| 41 | 2290000000 | 15, 32 |
| 42 | 2290000000 | 30, 31 |
| 43 | 244138 | 24 |
| 44 | 309064 | 37 |
| 45 | 197292 | 14 |
| 46 | 1000000 | 25, 30 |
| 47 | 865074 | 25 |
| 48 | 708655 | 16 |
| 49 | 40354000000 | 26, 29 |
| 50 | 58862226603 | 26 |
| 51 | 12854790350 | 15 |
| 52 | 1000000 | 20, 39 |
| 53 | 492619 | 20 |
| 54 | 87182 | 17 |
| 55 | 282407 | 34 |
| 56 | 327380 | 27 |
| 57 | 97601 | 22 |
| 58 | 756969 | 39 |
| 59 | 386937 | 30 |
| 60 | 277088 | 19 |
| 61 | 111869 | 35 |
| 62 | 64346 | 32 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -2661083933715043/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -2661083933715043/1000000 | 1 | -2661083933715043/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 380 | -2661083933715043/1000000 |

## Stage 381

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS+/BFP+/AQR+/EPQ-/APS+/APR-/BQR- |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS+/BFP+/AQR+/EPQ-/APS+/APR-/BQR-:LLLHLHH |
| Index | 0 |
| Context | 20 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 379 |
| Coordinate cut | v high 79637/250000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 54347/500000 | 6143/20000 | 54347/500000 | 6143/20000 |
| b | 72197/500000 | 15761/31250 | 72197/500000 | 15761/31250 |
| c | 70629/100000 | 1 | 70629/100000 | 1 |
| e | 54347/500000 | 391/1000 | 54347/500000 | 391/1000 |
| f | 279/1000 | 116527/200000 | 279/1000 | 116527/200000 |
| h | 100193/125000 | 1 | 100193/125000 | 1 |
| p | 18267/125000 | 383187/1000000 | 18267/125000 | 383187/1000000 |
| q | 255089/1000000 | 32733/62500 | 255089/1000000 | 32733/62500 |
| u | 492619/1000000 | 141731/200000 | 492619/1000000 | 141731/200000 |
| v | 79637/250000 | 269007/500000 | 79637/250000 | 269007/500000 |
| r | 8943/12500 | 1 | 8943/12500 | 1 |
| w | 237037/500000 | 26361/31250 | 237037/500000 | 26361/31250 |
| j | 273197/500000 | 174689/200000 | 273197/500000 | 174689/200000 |
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


## Stage 382

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS+/BFP+/AQR+/EPQ-/APS+/APR-/BQR- |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS+/BFP+/AQR+/EPQ-/APS+/APR-/BQR-:LLLHLHHL |
| Index | 0 |
| Context | 20 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 381 |
| Coordinate cut | w low 139253/250000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 54347/500000 | 6143/20000 | 54347/500000 | 6143/20000 |
| b | 72197/500000 | 15761/31250 | 72197/500000 | 15761/31250 |
| c | 70629/100000 | 1 | 70629/100000 | 1 |
| e | 54347/500000 | 391/1000 | 54347/500000 | 391/1000 |
| f | 279/1000 | 116527/200000 | 279/1000 | 116527/200000 |
| h | 100193/125000 | 1 | 100193/125000 | 1 |
| p | 18267/125000 | 383187/1000000 | 18267/125000 | 383187/1000000 |
| q | 255089/1000000 | 32733/62500 | 255089/1000000 | 32733/62500 |
| u | 492619/1000000 | 141731/200000 | 492619/1000000 | 141731/200000 |
| v | 79637/250000 | 269007/500000 | 79637/250000 | 269007/500000 |
| r | 8943/12500 | 1 | 8943/12500 | 1 |
| w | 237037/500000 | 139253/250000 | 237037/500000 | 139253/250000 |
| j | 273197/500000 | 174689/200000 | 273197/500000 | 174689/200000 |
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
| 0 | bound | `{"direction":"lo","ref":"31:923","triangle":"EPR","value":"156397/500000"}` | `-1 * p * w + 1 * e * p + 1 * w + 1 * q * r + -1 * q + -1 * e * r + -156397/500000` |
| 1 | physical | `{"factor":115,"stage":31}` | `-1/1 * p * v + 1/1 * e * p + 1/1 * v + 1/1 * q * u + -1/1 * q + -1/1 * e * u + -93/1000` |
| 2 | physical | `{"factor":124,"stage":31}` | `-1/1 * f * k + -1/1 * h * j + 1/1 * f * h + 1/1 * j + -93/1000` |
| 3 | physical | `{"factor":142,"stage":31}` | `1/1 * e + -1/1 * a` |
| 4 | physical | `{"factor":28,"stage":31}` | `1/1 * h + -1/1 * a + -13857/20000` |
| 5 | physical | `{"factor":46,"stage":31}` | `1/1 * p * k + -1/1 * a * p + -1/1 * q * j + 1/1 * a * j + -93/1000` |
| 6 | physical | `{"factor":47,"stage":31}` | `1/1 * u * w + -1/1 * a * u + -1/1 * v * r + 1/1 * a * r + -93/1000` |
| 7 | physical | `{"factor":61,"stage":31}` | `1/1 * h + -1/1 * b * h + 1/1 * b * e + -13857/20000` |
| 8 | physical | `{"factor":73,"stage":31}` | `1/1 * b * q + 1/1 * h * p + -1/1 * b * h + -93/1000` |
| 9 | physical | `{"factor":80,"stage":31}` | `-1/1 * u * w + 1/1 * b * w + 1/1 * v * r + -1/1 * b * v + -93/1000` |
| 10 | coordinate | `{"box":382,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 11 | coordinate | `{"box":382,"direction":"hi","value":"15761/31250","variable":"b"}` | `15761/31250 + -1 * b` |
| 12 | coordinate | `{"box":382,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 13 | coordinate | `{"box":382,"direction":"hi","value":"139253/250000","variable":"w"}` | `139253/250000 + -1 * w` |
| 14 | coordinate | `{"box":382,"direction":"hi","value":"174689/200000","variable":"j"}` | `174689/200000 + -1 * j` |
| 15 | coordinate | `{"box":382,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 16 | coordinate | `{"box":382,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 17 | coordinate | `{"box":382,"direction":"hi","value":"116527/200000","variable":"f"}` | `116527/200000 + -1 * f` |
| 18 | coordinate | `{"box":382,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 19 | coordinate | `{"box":382,"direction":"hi","value":"383187/1000000","variable":"p"}` | `383187/1000000 + -1 * p` |
| 20 | coordinate | `{"box":382,"direction":"hi","value":"32733/62500","variable":"q"}` | `32733/62500 + -1 * q` |
| 21 | coordinate | `{"box":382,"direction":"hi","value":"269007/500000","variable":"v"}` | `269007/500000 + -1 * v` |
| 22 | coordinate | `{"box":382,"direction":"lo","value":"54347/500000","variable":"a"}` | `-54347/500000 + 1 * a` |
| 23 | coordinate | `{"box":382,"direction":"lo","value":"72197/500000","variable":"b"}` | `-72197/500000 + 1 * b` |
| 24 | coordinate | `{"box":382,"direction":"lo","value":"273197/500000","variable":"j"}` | `-273197/500000 + 1 * j` |
| 25 | coordinate | `{"box":382,"direction":"lo","value":"100193/125000","variable":"k"}` | `-100193/125000 + 1 * k` |
| 26 | coordinate | `{"box":382,"direction":"lo","value":"54347/500000","variable":"e"}` | `-54347/500000 + 1 * e` |
| 27 | coordinate | `{"box":382,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 28 | coordinate | `{"box":382,"direction":"lo","value":"100193/125000","variable":"h"}` | `-100193/125000 + 1 * h` |
| 29 | coordinate | `{"box":382,"direction":"lo","value":"18267/125000","variable":"p"}` | `-18267/125000 + 1 * p` |
| 30 | coordinate | `{"box":382,"direction":"lo","value":"255089/1000000","variable":"q"}` | `-255089/1000000 + 1 * q` |
| 31 | coordinate | `{"box":382,"direction":"lo","value":"492619/1000000","variable":"u"}` | `-492619/1000000 + 1 * u` |
| 32 | coordinate | `{"box":382,"direction":"lo","value":"79637/250000","variable":"v"}` | `-79637/250000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 8526000000 | 4 |
| 1 | 22000000 | 5 |
| 2 | 82313000000 | 6 |
| 3 | 2544000000 | 7 |
| 4 | 27317000000 | 8 |
| 5 | 79055000000 | 9 |
| 6 | 17184000000 | 1 |
| 7 | 52932000000 | 0 |
| 8 | 6000000 | 2 |
| 9 | 33247000000 | 3 |
| 10 | 2544000000 | 11, 26 |
| 11 | 29860000000 | 11, 18 |
| 12 | 14012000000 | 20, 23 |
| 13 | 13305000000 | 11, 30 |
| 14 | 22000000 | 22, 29 |
| 15 | 79055000000 | 23, 32 |
| 16 | 82313000000 | 22, 31 |
| 17 | 79055000000 | 13, 23 |
| 18 | 82313000000 | 12, 22 |
| 19 | 22000000 | 10, 24 |
| 20 | 70116000000 | 19, 26 |
| 21 | 17184000000 | 26, 31 |
| 22 | 52932000000 | 12, 16 |
| 23 | 6000000 | 18, 27 |
| 24 | 6000000 | 15, 17 |
| 25 | 27317000000 | 18, 29 |
| 26 | 6000000 | 24, 28 |
| 27 | 17184000000 | 29, 32 |
| 28 | 17184000000 | 20, 31 |
| 29 | 52932000000 | 13, 19 |
| 30 | 52932000000 | 12, 30 |
| 31 | 22000000 | 15, 29 |
| 32 | 14000000 | 24, 30 |
| 33 | 8000000 | 14, 20 |
| 34 | 3258000000 | 13, 31 |
| 35 | 3258000000 | 12, 21 |
| 36 | 442028 | 18 |
| 37 | 142071 | 22 |
| 38 | 1000000 | 23, 28 |
| 39 | 801544 | 23 |
| 40 | 144394 | 28 |
| 41 | 268694 | 32 |
| 42 | 179908 | 20 |
| 43 | 45669166088 | 13 |
| 44 | 186966 | 14 |
| 45 | 446284 | 16 |
| 46 | 724937 | 11 |
| 47 | 109220 | 19 |
| 48 | 239870 | 31 |
| 49 | 38558 | 12 |
| 50 | 280818 | 25 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -830012239291099/250000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -830012239291099/250000 | 1 | -830012239291099/250000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 382 | -830012239291099/250000 |

## Stage 383

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS+/BFP+/AQR+/EPQ-/APS+/APR-/BQR- |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS+/BFP+/AQR+/EPQ-/APS+/APR-/BQR-:LLLHLHHH |
| Index | 0 |
| Context | 20 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 381 |
| Coordinate cut | w high 139253/250000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 54347/500000 | 6143/20000 | 54347/500000 | 6143/20000 |
| b | 72197/500000 | 15761/31250 | 72197/500000 | 15761/31250 |
| c | 70629/100000 | 1 | 70629/100000 | 1 |
| e | 54347/500000 | 391/1000 | 54347/500000 | 391/1000 |
| f | 279/1000 | 116527/200000 | 279/1000 | 116527/200000 |
| h | 100193/125000 | 1 | 100193/125000 | 1 |
| p | 18267/125000 | 383187/1000000 | 18267/125000 | 383187/1000000 |
| q | 255089/1000000 | 32733/62500 | 255089/1000000 | 32733/62500 |
| u | 492619/1000000 | 141731/200000 | 492619/1000000 | 141731/200000 |
| v | 79637/250000 | 269007/500000 | 79637/250000 | 269007/500000 |
| r | 8943/12500 | 1 | 8943/12500 | 1 |
| w | 139253/250000 | 26361/31250 | 139253/250000 | 26361/31250 |
| j | 273197/500000 | 174689/200000 | 273197/500000 | 174689/200000 |
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


## Stage 384

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS+/BFP+/AQR+/EPQ-/APS+/APR-/BQR- |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS+/BFP+/AQR+/EPQ-/APS+/APR-/BQR-:LLLHLHHHL |
| Index | 0 |
| Context | 20 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 383 |
| Coordinate cut | q low 42227/125000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 54347/500000 | 6143/20000 | 54347/500000 | 6143/20000 |
| b | 72197/500000 | 15761/31250 | 72197/500000 | 15761/31250 |
| c | 70629/100000 | 1 | 70629/100000 | 1 |
| e | 54347/500000 | 391/1000 | 54347/500000 | 391/1000 |
| f | 279/1000 | 116527/200000 | 279/1000 | 116527/200000 |
| h | 100193/125000 | 1 | 100193/125000 | 1 |
| p | 18267/125000 | 383187/1000000 | 18267/125000 | 383187/1000000 |
| q | 255089/1000000 | 42227/125000 | 255089/1000000 | 42227/125000 |
| u | 492619/1000000 | 141731/200000 | 492619/1000000 | 141731/200000 |
| v | 79637/250000 | 269007/500000 | 79637/250000 | 269007/500000 |
| r | 8943/12500 | 1 | 8943/12500 | 1 |
| w | 139253/250000 | 26361/31250 | 139253/250000 | 26361/31250 |
| j | 273197/500000 | 174689/200000 | 273197/500000 | 174689/200000 |
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
| 0 | physical | `{"factor":0,"stage":31}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 1 | physical | `{"factor":124,"stage":31}` | `-1/1 * f * k + -1/1 * h * j + 1/1 * f * h + 1/1 * j + -93/1000` |
| 2 | physical | `{"factor":130,"stage":31}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 3 | physical | `{"factor":137,"stage":31}` | `1/1 * u * w + -1/1 * q * u + -1/1 * p * w + -1/1 * v * r + 1/1 * p * v + 1/1 * q * r + -93/1000` |
| 4 | physical | `{"factor":44,"stage":31}` | `-1/1 * p * v + 1/1 * a * p + 1/1 * q * u + -1/1 * a * u + -93/1000` |
| 5 | physical | `{"factor":45,"stage":31}` | `-1/1 * p * w + 1/1 * a * p + 1/1 * q * r + -1/1 * a * r + -93/1000` |
| 6 | physical | `{"factor":46,"stage":31}` | `1/1 * p * k + -1/1 * a * p + -1/1 * q * j + 1/1 * a * j + -93/1000` |
| 7 | physical | `{"factor":69,"stage":31}` | `1/1 * f * q + -1/1 * b * q + -1/1 * p + 1/1 * b + -93/1000` |
| 8 | physical | `{"factor":73,"stage":31}` | `1/1 * b * q + 1/1 * h * p + -1/1 * b * h + -93/1000` |
| 9 | physical | `{"factor":80,"stage":31}` | `-1/1 * u * w + 1/1 * b * w + 1/1 * v * r + -1/1 * b * v + -93/1000` |
| 10 | physical | `{"factor":88,"stage":31}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 11 | coordinate | `{"box":384,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 12 | coordinate | `{"box":384,"direction":"hi","value":"15761/31250","variable":"b"}` | `15761/31250 + -1 * b` |
| 13 | coordinate | `{"box":384,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 14 | coordinate | `{"box":384,"direction":"hi","value":"26361/31250","variable":"w"}` | `26361/31250 + -1 * w` |
| 15 | coordinate | `{"box":384,"direction":"hi","value":"174689/200000","variable":"j"}` | `174689/200000 + -1 * j` |
| 16 | coordinate | `{"box":384,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 17 | coordinate | `{"box":384,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 18 | coordinate | `{"box":384,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 19 | coordinate | `{"box":384,"direction":"hi","value":"116527/200000","variable":"f"}` | `116527/200000 + -1 * f` |
| 20 | coordinate | `{"box":384,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 21 | coordinate | `{"box":384,"direction":"hi","value":"383187/1000000","variable":"p"}` | `383187/1000000 + -1 * p` |
| 22 | coordinate | `{"box":384,"direction":"hi","value":"42227/125000","variable":"q"}` | `42227/125000 + -1 * q` |
| 23 | coordinate | `{"box":384,"direction":"hi","value":"141731/200000","variable":"u"}` | `141731/200000 + -1 * u` |
| 24 | coordinate | `{"box":384,"direction":"hi","value":"269007/500000","variable":"v"}` | `269007/500000 + -1 * v` |
| 25 | coordinate | `{"box":384,"direction":"lo","value":"54347/500000","variable":"a"}` | `-54347/500000 + 1 * a` |
| 26 | coordinate | `{"box":384,"direction":"lo","value":"72197/500000","variable":"b"}` | `-72197/500000 + 1 * b` |
| 27 | coordinate | `{"box":384,"direction":"lo","value":"8943/12500","variable":"r"}` | `-8943/12500 + 1 * r` |
| 28 | coordinate | `{"box":384,"direction":"lo","value":"139253/250000","variable":"w"}` | `-139253/250000 + 1 * w` |
| 29 | coordinate | `{"box":384,"direction":"lo","value":"273197/500000","variable":"j"}` | `-273197/500000 + 1 * j` |
| 30 | coordinate | `{"box":384,"direction":"lo","value":"100193/125000","variable":"k"}` | `-100193/125000 + 1 * k` |
| 31 | coordinate | `{"box":384,"direction":"lo","value":"70629/100000","variable":"c"}` | `-70629/100000 + 1 * c` |
| 32 | coordinate | `{"box":384,"direction":"lo","value":"54347/500000","variable":"e"}` | `-54347/500000 + 1 * e` |
| 33 | coordinate | `{"box":384,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 34 | coordinate | `{"box":384,"direction":"lo","value":"100193/125000","variable":"h"}` | `-100193/125000 + 1 * h` |
| 35 | coordinate | `{"box":384,"direction":"lo","value":"18267/125000","variable":"p"}` | `-18267/125000 + 1 * p` |
| 36 | coordinate | `{"box":384,"direction":"lo","value":"492619/1000000","variable":"u"}` | `-492619/1000000 + 1 * u` |
| 37 | coordinate | `{"box":384,"direction":"lo","value":"79637/250000","variable":"v"}` | `-79637/250000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 19160000000 | 0 |
| 1 | 77938000000 | 4 |
| 2 | 31589000000 | 5 |
| 3 | 23702000000 | 6 |
| 4 | 9526000000 | 7 |
| 5 | 26078000000 | 8 |
| 6 | 32993000000 | 9 |
| 7 | 2834000000 | 10 |
| 8 | 11149000000 | 1 |
| 9 | 7265000000 | 2 |
| 10 | 19721000000 | 3 |
| 11 | 19160000000 | 25, 26 |
| 12 | 19160000000 | 17, 25 |
| 13 | 26078000000 | 26, 34 |
| 14 | 16552000000 | 22, 26 |
| 15 | 85824000000 | 21, 25 |
| 16 | 32993000000 | 26, 37 |
| 17 | 77938000000 | 25, 36 |
| 18 | 32993000000 | 12, 28 |
| 19 | 31589000000 | 11, 13 |
| 20 | 23702000000 | 15, 25 |
| 21 | 2834000000 | 17, 32 |
| 22 | 2834000000 | 14, 17 |
| 23 | 2834000000 | 13, 18 |
| 24 | 11149000000 | 20, 33 |
| 25 | 9526000000 | 22, 33 |
| 26 | 7265000000 | 19, 28 |
| 27 | 18414000000 | 16, 19 |
| 28 | 12384000000 | 21, 34 |
| 29 | 13694000000 | 20, 35 |
| 30 | 11149000000 | 29, 34 |
| 31 | 58217000000 | 35, 37 |
| 32 | 58217000000 | 22, 36 |
| 33 | 51310000000 | 28, 35 |
| 34 | 51310000000 | 22, 27 |
| 35 | 23702000000 | 16, 35 |
| 36 | 23702000000 | 15, 22 |
| 37 | 13272000000 | 14, 23 |
| 38 | 13272000000 | 13, 37 |
| 39 | 7265000000 | 13, 30 |
| 40 | 7265000000 | 28, 29 |
| 41 | 1000000 | 11, 35 |
| 42 | 146136 | 11 |
| 43 | 307150 | 21 |
| 44 | 49733396821 | 22 |
| 45 | 9308669826 | 13 |
| 46 | 319884 | 35 |
| 47 | 68288 | 26 |
| 48 | 130919 | 28 |
| 49 | 244120 | 15 |
| 50 | 294184 | 25 |
| 51 | 10532 | 31 |
| 52 | 108246 | 34 |
| 53 | 409246 | 24 |
| 54 | 381044 | 36 |
| 55 | 272604 | 33 |
| 56 | 74582 | 16 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -247103435105183/100000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -247103435105183/100000 | 1 | -247103435105183/100000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 384 | -247103435105183/100000 |
