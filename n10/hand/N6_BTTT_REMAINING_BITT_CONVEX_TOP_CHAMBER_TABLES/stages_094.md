# BITT convex: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 470

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR-/PQS+/BFP+/APR-/APS-/BQS+ |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR-/PQS+/BFP+/APR-/APS-/BQS+:LLHHHLLLLHLL |
| Index | 0 |
| Context | 45 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 469 |
| Coordinate cut | j low 650123/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 7533/62500 | 298887/1000000 | 7533/62500 | 298887/1000000 |
| b | 146871/1000000 | 366279/1000000 | 146871/1000000 | 366279/1000000 |
| c | 135501/250000 | 18151/25000 | 135501/250000 | 18151/25000 |
| e | 60267/500000 | 391/1000 | 60267/500000 | 391/1000 |
| f | 279/1000 | 577017/1000000 | 279/1000 | 577017/1000000 |
| h | 39619/50000 | 1 | 39619/50000 | 1 |
| p | 13741/100000 | 175991/500000 | 13741/100000 | 175991/500000 |
| q | 389083/1000000 | 613481/1000000 | 389083/1000000 | 613481/1000000 |
| u | 530503/1000000 | 821933/1000000 | 530503/1000000 | 821933/1000000 |
| v | 215201/500000 | 27217/40000 | 215201/500000 | 27217/40000 |
| r | 42689/50000 | 1 | 42689/50000 | 1 |
| w | 164873/500000 | 136197/200000 | 164873/500000 | 136197/200000 |
| j | 561307/1000000 | 650123/1000000 | 561307/1000000 | 650123/1000000 |
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
| 2 | bound | `{"direction":"lo","ref":"106:1424","triangle":"AFS","value":"175113/500000"}` | `-1 * f * k + 1 * a * f + 1 * j + -1 * a * j + -175113/500000` |
| 3 | physical | `{"factor":0,"stage":106}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 4 | physical | `{"factor":105,"stage":106}` | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 5 | physical | `{"factor":110,"stage":106}` | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 6 | physical | `{"factor":116,"stage":106}` | `-1/1 * u * w + 1/1 * e * u + 1/1 * w + 1/1 * v * r + -1/1 * v + -1/1 * e * r + -93/1000` |
| 7 | physical | `{"factor":33,"stage":106}` | `-1/1 * f * q + 1/1 * a * f + 1/1 * p + -1/1 * a * p + -93/1000` |
| 8 | physical | `{"factor":44,"stage":106}` | `-1/1 * p * k + 1/1 * a * p + 1/1 * q * j + -1/1 * a * j + -93/1000` |
| 9 | physical | `{"factor":48,"stage":106}` | `1/1 * c * e + -1/1 * b * e + -93/1000` |
| 10 | physical | `{"factor":66,"stage":106}` | `1/1 * f * q + -1/1 * b * q + -1/1 * p + 1/1 * b + -93/1000` |
| 11 | physical | `{"factor":70,"stage":106}` | `1/1 * b * q + 1/1 * h * p + -1/1 * b * h + -93/1000` |
| 12 | physical | `{"factor":78,"stage":106}` | `1/1 * u * k + -1/1 * b * k + -1/1 * v * j + 1/1 * b * v + -93/1000` |
| 13 | physical | `{"factor":86,"stage":106}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 14 | physical | `{"factor":93,"stage":106}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 15 | coordinate | `{"box":470,"direction":"hi","value":"298887/1000000","variable":"a"}` | `298887/1000000 + -1 * a` |
| 16 | coordinate | `{"box":470,"direction":"hi","value":"366279/1000000","variable":"b"}` | `366279/1000000 + -1 * b` |
| 17 | coordinate | `{"box":470,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 18 | coordinate | `{"box":470,"direction":"hi","value":"136197/200000","variable":"w"}` | `136197/200000 + -1 * w` |
| 19 | coordinate | `{"box":470,"direction":"hi","value":"650123/1000000","variable":"j"}` | `650123/1000000 + -1 * j` |
| 20 | coordinate | `{"box":470,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 21 | coordinate | `{"box":470,"direction":"hi","value":"18151/25000","variable":"c"}` | `18151/25000 + -1 * c` |
| 22 | coordinate | `{"box":470,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 23 | coordinate | `{"box":470,"direction":"hi","value":"577017/1000000","variable":"f"}` | `577017/1000000 + -1 * f` |
| 24 | coordinate | `{"box":470,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 25 | coordinate | `{"box":470,"direction":"hi","value":"175991/500000","variable":"p"}` | `175991/500000 + -1 * p` |
| 26 | coordinate | `{"box":470,"direction":"hi","value":"613481/1000000","variable":"q"}` | `613481/1000000 + -1 * q` |
| 27 | coordinate | `{"box":470,"direction":"hi","value":"821933/1000000","variable":"u"}` | `821933/1000000 + -1 * u` |
| 28 | coordinate | `{"box":470,"direction":"hi","value":"27217/40000","variable":"v"}` | `27217/40000 + -1 * v` |
| 29 | coordinate | `{"box":470,"direction":"lo","value":"7533/62500","variable":"a"}` | `-7533/62500 + 1 * a` |
| 30 | coordinate | `{"box":470,"direction":"lo","value":"146871/1000000","variable":"b"}` | `-146871/1000000 + 1 * b` |
| 31 | coordinate | `{"box":470,"direction":"lo","value":"42689/50000","variable":"r"}` | `-42689/50000 + 1 * r` |
| 32 | coordinate | `{"box":470,"direction":"lo","value":"164873/500000","variable":"w"}` | `-164873/500000 + 1 * w` |
| 33 | coordinate | `{"box":470,"direction":"lo","value":"171909/250000","variable":"k"}` | `-171909/250000 + 1 * k` |
| 34 | coordinate | `{"box":470,"direction":"lo","value":"135501/250000","variable":"c"}` | `-135501/250000 + 1 * c` |
| 35 | coordinate | `{"box":470,"direction":"lo","value":"60267/500000","variable":"e"}` | `-60267/500000 + 1 * e` |
| 36 | coordinate | `{"box":470,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 37 | coordinate | `{"box":470,"direction":"lo","value":"39619/50000","variable":"h"}` | `-39619/50000 + 1 * h` |
| 38 | coordinate | `{"box":470,"direction":"lo","value":"13741/100000","variable":"p"}` | `-13741/100000 + 1 * p` |
| 39 | coordinate | `{"box":470,"direction":"lo","value":"389083/1000000","variable":"q"}` | `-389083/1000000 + 1 * q` |
| 40 | coordinate | `{"box":470,"direction":"lo","value":"530503/1000000","variable":"u"}` | `-530503/1000000 + 1 * u` |
| 41 | coordinate | `{"box":470,"direction":"lo","value":"215201/500000","variable":"v"}` | `-215201/500000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 42659000000 | 3 |
| 1 | 70258000000 | 7 |
| 2 | 30115000000 | 2 |
| 3 | 45792000000 | 8 |
| 4 | 6105000000 | 9 |
| 5 | 38338000000 | 10 |
| 6 | 20152000000 | 11 |
| 7 | 2022000000 | 12 |
| 8 | 14340000000 | 13 |
| 9 | 12070000000 | 14 |
| 10 | 5586000000 | 4 |
| 11 | 5309000000 | 5 |
| 12 | 2022000000 | 6 |
| 13 | 15550000000 | 1 |
| 14 | 2022000000 | 0 |
| 15 | 42659000000 | 29, 30 |
| 16 | 42659000000 | 21, 29 |
| 17 | 6105000000 | 30, 35 |
| 18 | 100373000000 | 15, 36 |
| 19 | 20152000000 | 16, 24 |
| 20 | 18186000000 | 16, 26 |
| 21 | 24466000000 | 29, 38 |
| 22 | 2022000000 | 16, 41 |
| 23 | 2022000000 | 16, 20 |
| 24 | 75907000000 | 15, 19 |
| 25 | 20445000000 | 21, 35 |
| 26 | 12070000000 | 21, 37 |
| 27 | 12070000000 | 21, 26 |
| 28 | 14340000000 | 18, 21 |
| 29 | 5586000000 | 35, 36 |
| 30 | 2299000000 | 27, 35 |
| 31 | 14250000000 | 31, 35 |
| 32 | 2112000000 | 17, 22 |
| 33 | 31920000000 | 36, 39 |
| 34 | 5586000000 | 28, 36 |
| 35 | 30115000000 | 33, 36 |
| 36 | 8082000000 | 24, 38 |
| 37 | 5309000000 | 24, 40 |
| 38 | 15550000000 | 25, 32 |
| 39 | 15550000000 | 17, 26 |
| 40 | 61342000000 | 33, 38 |
| 41 | 61342000000 | 19, 39 |
| 42 | 17572000000 | 17, 33 |
| 43 | 17572000000 | 18, 19 |
| 44 | 255260 | 38 |
| 45 | 19328245457 | 19 |
| 46 | 43356 | 16 |
| 47 | 54856 | 32 |
| 48 | 853780 | 35 |
| 49 | 120534 | 31 |
| 50 | 110138 | 28 |
| 51 | 107666 | 27 |
| 52 | 36439 | 24 |
| 53 | 77750 | 15 |
| 54 | 92388 | 34 |
| 55 | 859092 | 22 |
| 56 | 48477 | 23 |
| 57 | 287628 | 39 |
| 58 | 294642 | 20 |
| 59 | 229276 | 17 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -2392473795176339/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -2392473795176339/1000000 | 1 | -2392473795176339/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 470 | -2392473795176339/1000000 |

## Stage 471

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR-/PQS+/BFP+/APR-/APS-/BQS+ |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR-/PQS+/BFP+/APR-/APS-/BQS+:LLHHHLLLLHLH |
| Index | 0 |
| Context | 45 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 469 |
| Coordinate cut | j high 650123/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 7533/62500 | 298887/1000000 | 7533/62500 | 298887/1000000 |
| b | 146871/1000000 | 366279/1000000 | 146871/1000000 | 366279/1000000 |
| c | 135501/250000 | 18151/25000 | 135501/250000 | 18151/25000 |
| e | 60267/500000 | 391/1000 | 60267/500000 | 391/1000 |
| f | 279/1000 | 577017/1000000 | 279/1000 | 577017/1000000 |
| h | 39619/50000 | 1 | 39619/50000 | 1 |
| p | 13741/100000 | 175991/500000 | 13741/100000 | 175991/500000 |
| q | 389083/1000000 | 613481/1000000 | 389083/1000000 | 613481/1000000 |
| u | 530503/1000000 | 821933/1000000 | 530503/1000000 | 821933/1000000 |
| v | 215201/500000 | 27217/40000 | 215201/500000 | 27217/40000 |
| r | 42689/50000 | 1 | 42689/50000 | 1 |
| w | 164873/500000 | 136197/200000 | 164873/500000 | 136197/200000 |
| j | 650123/1000000 | 215241/250000 | 650123/1000000 | 215241/250000 |
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


## Stage 472

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR-/PQS+/BFP+/APR-/APS-/BQS+ |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR-/PQS+/BFP+/APR-/APS-/BQS+:LLHHHLLLLHLHL |
| Index | 0 |
| Context | 45 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 471 |
| Coordinate cut | k low 157447/200000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 7533/62500 | 298887/1000000 | 7533/62500 | 298887/1000000 |
| b | 146871/1000000 | 366279/1000000 | 146871/1000000 | 366279/1000000 |
| c | 135501/250000 | 18151/25000 | 135501/250000 | 18151/25000 |
| e | 60267/500000 | 391/1000 | 60267/500000 | 391/1000 |
| f | 279/1000 | 577017/1000000 | 279/1000 | 577017/1000000 |
| h | 39619/50000 | 1 | 39619/50000 | 1 |
| p | 13741/100000 | 175991/500000 | 13741/100000 | 175991/500000 |
| q | 389083/1000000 | 613481/1000000 | 389083/1000000 | 613481/1000000 |
| u | 530503/1000000 | 821933/1000000 | 530503/1000000 | 821933/1000000 |
| v | 215201/500000 | 27217/40000 | 215201/500000 | 27217/40000 |
| r | 42689/50000 | 1 | 42689/50000 | 1 |
| w | 164873/500000 | 136197/200000 | 164873/500000 | 136197/200000 |
| j | 650123/1000000 | 215241/250000 | 650123/1000000 | 215241/250000 |
| k | 171909/250000 | 157447/200000 | 171909/250000 | 157447/200000 |

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
| 1 | physical | `{"factor":116,"stage":106}` | `-1/1 * u * w + 1/1 * e * u + 1/1 * w + 1/1 * v * r + -1/1 * v + -1/1 * e * r + -93/1000` |
| 2 | physical | `{"factor":118,"stage":106}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 3 | physical | `{"factor":134,"stage":106}` | `-1/1 * u * w + 1/1 * q * u + 1/1 * p * w + 1/1 * v * r + -1/1 * p * v + -1/1 * q * r + -93/1000` |
| 4 | physical | `{"factor":139,"stage":106}` | `1/1 * e + -1/1 * a` |
| 5 | physical | `{"factor":33,"stage":106}` | `-1/1 * f * q + 1/1 * a * f + 1/1 * p + -1/1 * a * p + -93/1000` |
| 6 | physical | `{"factor":44,"stage":106}` | `-1/1 * p * k + 1/1 * a * p + 1/1 * q * j + -1/1 * a * j + -93/1000` |
| 7 | physical | `{"factor":48,"stage":106}` | `1/1 * c * e + -1/1 * b * e + -93/1000` |
| 8 | physical | `{"factor":66,"stage":106}` | `1/1 * f * q + -1/1 * b * q + -1/1 * p + 1/1 * b + -93/1000` |
| 9 | physical | `{"factor":78,"stage":106}` | `1/1 * u * k + -1/1 * b * k + -1/1 * v * j + 1/1 * b * v + -93/1000` |
| 10 | physical | `{"factor":86,"stage":106}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 11 | coordinate | `{"box":472,"direction":"hi","value":"298887/1000000","variable":"a"}` | `298887/1000000 + -1 * a` |
| 12 | coordinate | `{"box":472,"direction":"hi","value":"366279/1000000","variable":"b"}` | `366279/1000000 + -1 * b` |
| 13 | coordinate | `{"box":472,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 14 | coordinate | `{"box":472,"direction":"hi","value":"136197/200000","variable":"w"}` | `136197/200000 + -1 * w` |
| 15 | coordinate | `{"box":472,"direction":"hi","value":"215241/250000","variable":"j"}` | `215241/250000 + -1 * j` |
| 16 | coordinate | `{"box":472,"direction":"hi","value":"157447/200000","variable":"k"}` | `157447/200000 + -1 * k` |
| 17 | coordinate | `{"box":472,"direction":"hi","value":"18151/25000","variable":"c"}` | `18151/25000 + -1 * c` |
| 18 | coordinate | `{"box":472,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 19 | coordinate | `{"box":472,"direction":"hi","value":"577017/1000000","variable":"f"}` | `577017/1000000 + -1 * f` |
| 20 | coordinate | `{"box":472,"direction":"hi","value":"175991/500000","variable":"p"}` | `175991/500000 + -1 * p` |
| 21 | coordinate | `{"box":472,"direction":"hi","value":"613481/1000000","variable":"q"}` | `613481/1000000 + -1 * q` |
| 22 | coordinate | `{"box":472,"direction":"hi","value":"821933/1000000","variable":"u"}` | `821933/1000000 + -1 * u` |
| 23 | coordinate | `{"box":472,"direction":"hi","value":"27217/40000","variable":"v"}` | `27217/40000 + -1 * v` |
| 24 | coordinate | `{"box":472,"direction":"lo","value":"7533/62500","variable":"a"}` | `-7533/62500 + 1 * a` |
| 25 | coordinate | `{"box":472,"direction":"lo","value":"146871/1000000","variable":"b"}` | `-146871/1000000 + 1 * b` |
| 26 | coordinate | `{"box":472,"direction":"lo","value":"42689/50000","variable":"r"}` | `-42689/50000 + 1 * r` |
| 27 | coordinate | `{"box":472,"direction":"lo","value":"164873/500000","variable":"w"}` | `-164873/500000 + 1 * w` |
| 28 | coordinate | `{"box":472,"direction":"lo","value":"650123/1000000","variable":"j"}` | `-650123/1000000 + 1 * j` |
| 29 | coordinate | `{"box":472,"direction":"lo","value":"171909/250000","variable":"k"}` | `-171909/250000 + 1 * k` |
| 30 | coordinate | `{"box":472,"direction":"lo","value":"135501/250000","variable":"c"}` | `-135501/250000 + 1 * c` |
| 31 | coordinate | `{"box":472,"direction":"lo","value":"60267/500000","variable":"e"}` | `-60267/500000 + 1 * e` |
| 32 | coordinate | `{"box":472,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 33 | coordinate | `{"box":472,"direction":"lo","value":"13741/100000","variable":"p"}` | `-13741/100000 + 1 * p` |
| 34 | coordinate | `{"box":472,"direction":"lo","value":"389083/1000000","variable":"q"}` | `-389083/1000000 + 1 * q` |
| 35 | coordinate | `{"box":472,"direction":"lo","value":"215201/500000","variable":"v"}` | `-215201/500000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 50991000000 | 5 |
| 1 | 22661000000 | 6 |
| 2 | 2547000000 | 7 |
| 3 | 25565000000 | 8 |
| 4 | 42909000000 | 9 |
| 5 | 548000000 | 10 |
| 6 | 25918000000 | 1 |
| 7 | 8967000000 | 2 |
| 8 | 41441000000 | 3 |
| 9 | 67359000000 | 0 |
| 10 | 4537000000 | 4 |
| 11 | 2547000000 | 25, 31 |
| 12 | 29984000000 | 19, 24 |
| 13 | 21007000000 | 11, 32 |
| 14 | 25565000000 | 25, 34 |
| 15 | 28330000000 | 24, 33 |
| 16 | 42909000000 | 12, 35 |
| 17 | 42909000000 | 12, 16 |
| 18 | 22661000000 | 24, 28 |
| 19 | 3095000000 | 17, 31 |
| 20 | 548000000 | 14, 17 |
| 21 | 25918000000 | 22, 31 |
| 22 | 35432000000 | 13, 18 |
| 23 | 8967000000 | 15, 31 |
| 24 | 25426000000 | 32, 34 |
| 25 | 41441000000 | 33, 35 |
| 26 | 41441000000 | 22, 34 |
| 27 | 41441000000 | 20, 27 |
| 28 | 41441000000 | 13, 21 |
| 29 | 22661000000 | 16, 20 |
| 30 | 16578000000 | 15, 34 |
| 31 | 6083000000 | 21, 28 |
| 32 | 24450000000 | 16, 22 |
| 33 | 24450000000 | 23, 28 |
| 34 | 14992000000 | 16, 26 |
| 35 | 61334000000 | 13, 29 |
| 36 | 76326000000 | 27, 28 |
| 37 | 389083 | 32 |
| 38 | 279000 | 34 |
| 39 | 624129 | 20 |
| 40 | 254190 | 25 |
| 41 | 328044 | 14 |
| 42 | 1000000 | 26, 31 |
| 43 | 853780 | 31 |
| 44 | 120534 | 26 |
| 45 | 234849 | 35 |
| 46 | 14700515423 | 13 |
| 47 | 21377678197 | 16 |
| 48 | 1137045 | 18 |
| 49 | 31875 | 24 |
| 50 | 195486 | 19 |
| 51 | 152739 | 21 |
| 52 | 235679 | 28 |
| 53 | 127050 | 30 |
| 54 | 93065 | 22 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -915059611315443/500000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -915059611315443/500000 | 1 | -915059611315443/500000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 472 | -915059611315443/500000 |

## Stage 473

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR-/PQS+/BFP+/APR-/APS-/BQS+ |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR-/PQS+/BFP+/APR-/APS-/BQS+:LLHHHLLLLHLHH |
| Index | 0 |
| Context | 45 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 471 |
| Coordinate cut | k high 157447/200000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 7533/62500 | 298887/1000000 | 7533/62500 | 298887/1000000 |
| b | 146871/1000000 | 366279/1000000 | 146871/1000000 | 366279/1000000 |
| c | 135501/250000 | 18151/25000 | 135501/250000 | 18151/25000 |
| e | 60267/500000 | 391/1000 | 60267/500000 | 391/1000 |
| f | 279/1000 | 577017/1000000 | 279/1000 | 577017/1000000 |
| h | 39619/50000 | 1 | 39619/50000 | 1 |
| p | 13741/100000 | 175991/500000 | 13741/100000 | 175991/500000 |
| q | 389083/1000000 | 613481/1000000 | 389083/1000000 | 613481/1000000 |
| u | 530503/1000000 | 821933/1000000 | 530503/1000000 | 821933/1000000 |
| v | 215201/500000 | 27217/40000 | 215201/500000 | 27217/40000 |
| r | 42689/50000 | 1 | 42689/50000 | 1 |
| w | 164873/500000 | 136197/200000 | 164873/500000 | 136197/200000 |
| j | 650123/1000000 | 215241/250000 | 650123/1000000 | 215241/250000 |
| k | 157447/200000 | 1 | 157447/200000 | 1 |

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


## Stage 474

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR-/PQS+/BFP+/APR-/APS-/BQS+ |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR-/PQS+/BFP+/APR-/APS-/BQS+:LLHHHLLLLHLHHL |
| Index | 0 |
| Context | 45 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 473 |
| Coordinate cut | w low 10799/25000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 7533/62500 | 298887/1000000 | 7533/62500 | 298887/1000000 |
| b | 146871/1000000 | 366279/1000000 | 146871/1000000 | 366279/1000000 |
| c | 135501/250000 | 18151/25000 | 135501/250000 | 18151/25000 |
| e | 60267/500000 | 391/1000 | 60267/500000 | 391/1000 |
| f | 279/1000 | 577017/1000000 | 279/1000 | 577017/1000000 |
| h | 39619/50000 | 1 | 39619/50000 | 1 |
| p | 13741/100000 | 175991/500000 | 13741/100000 | 175991/500000 |
| q | 389083/1000000 | 613481/1000000 | 389083/1000000 | 613481/1000000 |
| u | 530503/1000000 | 821933/1000000 | 530503/1000000 | 821933/1000000 |
| v | 215201/500000 | 27217/40000 | 215201/500000 | 27217/40000 |
| r | 42689/50000 | 1 | 42689/50000 | 1 |
| w | 164873/500000 | 10799/25000 | 164873/500000 | 10799/25000 |
| j | 650123/1000000 | 215241/250000 | 650123/1000000 | 215241/250000 |
| k | 157447/200000 | 1 | 157447/200000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"106:1424","triangle":"AFS","value":"175113/500000"}` | `-1 * f * k + 1 * a * f + 1 * j + -1 * a * j + -175113/500000` |
| 1 | physical | `{"factor":0,"stage":106}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 2 | physical | `{"factor":118,"stage":106}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 3 | physical | `{"factor":128,"stage":106}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 4 | physical | `{"factor":33,"stage":106}` | `-1/1 * f * q + 1/1 * a * f + 1/1 * p + -1/1 * a * p + -93/1000` |
| 5 | physical | `{"factor":44,"stage":106}` | `-1/1 * p * k + 1/1 * a * p + 1/1 * q * j + -1/1 * a * j + -93/1000` |
| 6 | physical | `{"factor":48,"stage":106}` | `1/1 * c * e + -1/1 * b * e + -93/1000` |
| 7 | physical | `{"factor":66,"stage":106}` | `1/1 * f * q + -1/1 * b * q + -1/1 * p + 1/1 * b + -93/1000` |
| 8 | physical | `{"factor":86,"stage":106}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 9 | coordinate | `{"box":474,"direction":"hi","value":"298887/1000000","variable":"a"}` | `298887/1000000 + -1 * a` |
| 10 | coordinate | `{"box":474,"direction":"hi","value":"366279/1000000","variable":"b"}` | `366279/1000000 + -1 * b` |
| 11 | coordinate | `{"box":474,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 12 | coordinate | `{"box":474,"direction":"hi","value":"10799/25000","variable":"w"}` | `10799/25000 + -1 * w` |
| 13 | coordinate | `{"box":474,"direction":"hi","value":"215241/250000","variable":"j"}` | `215241/250000 + -1 * j` |
| 14 | coordinate | `{"box":474,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 15 | coordinate | `{"box":474,"direction":"hi","value":"18151/25000","variable":"c"}` | `18151/25000 + -1 * c` |
| 16 | coordinate | `{"box":474,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 17 | coordinate | `{"box":474,"direction":"hi","value":"577017/1000000","variable":"f"}` | `577017/1000000 + -1 * f` |
| 18 | coordinate | `{"box":474,"direction":"hi","value":"613481/1000000","variable":"q"}` | `613481/1000000 + -1 * q` |
| 19 | coordinate | `{"box":474,"direction":"lo","value":"7533/62500","variable":"a"}` | `-7533/62500 + 1 * a` |
| 20 | coordinate | `{"box":474,"direction":"lo","value":"146871/1000000","variable":"b"}` | `-146871/1000000 + 1 * b` |
| 21 | coordinate | `{"box":474,"direction":"lo","value":"164873/500000","variable":"w"}` | `-164873/500000 + 1 * w` |
| 22 | coordinate | `{"box":474,"direction":"lo","value":"650123/1000000","variable":"j"}` | `-650123/1000000 + 1 * j` |
| 23 | coordinate | `{"box":474,"direction":"lo","value":"157447/200000","variable":"k"}` | `-157447/200000 + 1 * k` |
| 24 | coordinate | `{"box":474,"direction":"lo","value":"135501/250000","variable":"c"}` | `-135501/250000 + 1 * c` |
| 25 | coordinate | `{"box":474,"direction":"lo","value":"60267/500000","variable":"e"}` | `-60267/500000 + 1 * e` |
| 26 | coordinate | `{"box":474,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 27 | coordinate | `{"box":474,"direction":"lo","value":"13741/100000","variable":"p"}` | `-13741/100000 + 1 * p` |
| 28 | coordinate | `{"box":474,"direction":"lo","value":"389083/1000000","variable":"q"}` | `-389083/1000000 + 1 * q` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 3604000000 | 1 |
| 1 | 20840000000 | 4 |
| 2 | 5236000000 | 0 |
| 3 | 6036000000 | 5 |
| 4 | 68893000000 | 6 |
| 5 | 14304000000 | 7 |
| 6 | 28059000000 | 8 |
| 7 | 103534000000 | 2 |
| 8 | 3177000000 | 3 |
| 9 | 3604000000 | 19, 20 |
| 10 | 3604000000 | 15, 19 |
| 11 | 68893000000 | 20, 25 |
| 12 | 26076000000 | 9, 26 |
| 13 | 14304000000 | 20, 28 |
| 14 | 14804000000 | 19, 27 |
| 15 | 11273000000 | 19, 22 |
| 16 | 96953000000 | 15, 25 |
| 17 | 28059000000 | 12, 15 |
| 18 | 131593000000 | 11, 16 |
| 19 | 19021000000 | 13, 25 |
| 20 | 84513000000 | 16, 22 |
| 21 | 6536000000 | 26, 28 |
| 22 | 3177000000 | 12, 26 |
| 23 | 8413000000 | 23, 26 |
| 24 | 6036000000 | 23, 27 |
| 25 | 6036000000 | 18, 22 |
| 26 | 106711000000 | 11, 23 |
| 27 | 106710000000 | 12, 13 |
| 28 | 46972 | 27 |
| 29 | 366673 | 13 |
| 30 | 1000000 | 9, 22 |
| 31 | 650123 | 9 |
| 32 | 1000000 | 24, 25 |
| 33 | 120534 | 24 |
| 34 | 542004 | 25 |
| 35 | 224994 | 10 |
| 36 | 20233958200 | 12 |
| 37 | 29376771085 | 11 |
| 38 | 1000000 | 14 |
| 39 | 633760 | 23 |
| 40 | 1000000 | 21, 22 |
| 41 | 650123 | 21 |
| 42 | 329746 | 22 |
| 43 | 525143 | 19 |
| 44 | 150174 | 15 |
| 45 | 613660 | 16 |
| 46 | 59789 | 17 |
| 47 | 244356 | 28 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -1671802740535861/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -1671802740535861/1000000 | 1 | -1671802740535861/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 474 | -1671802740535861/1000000 |
