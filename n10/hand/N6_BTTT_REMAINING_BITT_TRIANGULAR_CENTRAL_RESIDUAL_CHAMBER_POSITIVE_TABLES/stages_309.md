# BITT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 1545

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS-/HQS+/CRS+/BFQ+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS-/HQS+/CRS+/BFQ+:HLHHHHLLHHLL |
| Index | 0 |
| Context | 302 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1544 |
| Coordinate cut | c low 792523/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 20869/200000 | 6143/20000 | 20869/200000 | 6143/20000 |
| b | 20269/100000 | 56791/125000 | 20269/100000 | 56791/125000 |
| c | 693349/1000000 | 792523/1000000 | 693349/1000000 | 792523/1000000 |
| e | 104347/1000000 | 6143/20000 | 104347/1000000 | 6143/20000 |
| f | 197713/500000 | 43031/62500 | 197713/500000 | 43031/62500 |
| h | 22673/31250 | 1 | 22673/31250 | 1 |
| p | 205967/500000 | 305781/500000 | 205967/500000 | 305781/500000 |
| q | 12327/62500 | 444499/1000000 | 12327/62500 | 444499/1000000 |
| u | 72761/250000 | 112021/200000 | 72761/250000 | 112021/200000 |
| v | 513651/1000000 | 191619/250000 | 513651/1000000 | 191619/250000 |
| r | 37799/50000 | 1 | 37799/50000 | 1 |
| w | 797197/1000000 | 1 | 797197/1000000 | 1 |
| j | 706243/1000000 | 448083/500000 | 706243/1000000 | 448083/500000 |
| k | 482391/1000000 | 98121/125000 | 482391/1000000 | 98121/125000 |

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
| 0 | bound | `{"direction":"lo","ref":"516:1345","triangle":"BCP","value":"132477/1000000"}` | `1 * c * q + -1 * b * q + -132477/1000000` |
| 1 | bound | `{"direction":"lo","ref":"516:1368","triangle":"BCQ","value":"10927/31250"}` | `1 * c * v + -1 * b * v + -10927/31250` |
| 2 | physical | `{"factor":107,"stage":516}` | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 3 | physical | `{"factor":118,"stage":516}` | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 4 | physical | `{"factor":120,"stage":516}` | `-1/1 * p * v + 1/1 * p + 1/1 * f * v + 1/1 * q * u + -1/1 * f * q + -1/1 * u + -93/1000` |
| 5 | physical | `{"factor":130,"stage":516}` | `1/1 * u * k + -1/1 * h * u + -1/1 * v * j + 1/1 * h * j + -93/1000` |
| 6 | physical | `{"factor":134,"stage":516}` | `-1/1 * r * k + 1/1 * q * r + 1/1 * p * k + 1/1 * w * j + -1/1 * p * w + -1/1 * q * j + -93/1000` |
| 7 | physical | `{"factor":137,"stage":516}` | `1/1 * e + -1/1 * a` |
| 8 | physical | `{"factor":1396,"stage":516}` | `86047/125000 * p * k + -86047/125000 * e * p + 10457/31250 * k + -86047/125000 * q * j + 86047/125000 * q + -10457/31250 * e * j + -1023/1000 * u * k + 1023/1000 * e * u + 1023/1000 * v * j + -1023/1000 * v` |
| 9 | physical | `{"factor":36,"stage":516}` | `-1/1 * f * v + 1/1 * a * f + 1/1 * u + -1/1 * a * u + -93/1000` |
| 10 | physical | `{"factor":65,"stage":516}` | `1/1 * f * v + -1/1 * b * v + -1/1 * u + 1/1 * b + -93/1000` |
| 11 | physical | `{"factor":72,"stage":516}` | `1/1 * p * v + -1/1 * b * v + -1/1 * q * u + 1/1 * b * q + -93/1000` |
| 12 | physical | `{"factor":73,"stage":516}` | `-1/1 * p * k + 1/1 * b * k + 1/1 * q * j + -1/1 * b * q + -93/1000` |
| 13 | physical | `{"factor":89,"stage":516}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 14 | physical | `{"factor":98,"stage":516}` | `1/1 * r * k + -1/1 * c * k + -1/1 * w * j + 1/1 * c * w + -93/1000` |
| 15 | coordinate | `{"box":1545,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 16 | coordinate | `{"box":1545,"direction":"hi","value":"56791/125000","variable":"b"}` | `56791/125000 + -1 * b` |
| 17 | coordinate | `{"box":1545,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 18 | coordinate | `{"box":1545,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 19 | coordinate | `{"box":1545,"direction":"hi","value":"448083/500000","variable":"j"}` | `448083/500000 + -1 * j` |
| 20 | coordinate | `{"box":1545,"direction":"hi","value":"98121/125000","variable":"k"}` | `98121/125000 + -1 * k` |
| 21 | coordinate | `{"box":1545,"direction":"hi","value":"792523/1000000","variable":"c"}` | `792523/1000000 + -1 * c` |
| 22 | coordinate | `{"box":1545,"direction":"hi","value":"6143/20000","variable":"e"}` | `6143/20000 + -1 * e` |
| 23 | coordinate | `{"box":1545,"direction":"hi","value":"43031/62500","variable":"f"}` | `43031/62500 + -1 * f` |
| 24 | coordinate | `{"box":1545,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 25 | coordinate | `{"box":1545,"direction":"hi","value":"305781/500000","variable":"p"}` | `305781/500000 + -1 * p` |
| 26 | coordinate | `{"box":1545,"direction":"hi","value":"444499/1000000","variable":"q"}` | `444499/1000000 + -1 * q` |
| 27 | coordinate | `{"box":1545,"direction":"hi","value":"112021/200000","variable":"u"}` | `112021/200000 + -1 * u` |
| 28 | coordinate | `{"box":1545,"direction":"hi","value":"191619/250000","variable":"v"}` | `191619/250000 + -1 * v` |
| 29 | coordinate | `{"box":1545,"direction":"lo","value":"20869/200000","variable":"a"}` | `-20869/200000 + 1 * a` |
| 30 | coordinate | `{"box":1545,"direction":"lo","value":"20269/100000","variable":"b"}` | `-20269/100000 + 1 * b` |
| 31 | coordinate | `{"box":1545,"direction":"lo","value":"797197/1000000","variable":"w"}` | `-797197/1000000 + 1 * w` |
| 32 | coordinate | `{"box":1545,"direction":"lo","value":"706243/1000000","variable":"j"}` | `-706243/1000000 + 1 * j` |
| 33 | coordinate | `{"box":1545,"direction":"lo","value":"482391/1000000","variable":"k"}` | `-482391/1000000 + 1 * k` |
| 34 | coordinate | `{"box":1545,"direction":"lo","value":"104347/1000000","variable":"e"}` | `-104347/1000000 + 1 * e` |
| 35 | coordinate | `{"box":1545,"direction":"lo","value":"197713/500000","variable":"f"}` | `-197713/500000 + 1 * f` |
| 36 | coordinate | `{"box":1545,"direction":"lo","value":"22673/31250","variable":"h"}` | `-22673/31250 + 1 * h` |
| 37 | coordinate | `{"box":1545,"direction":"lo","value":"205967/500000","variable":"p"}` | `-205967/500000 + 1 * p` |
| 38 | coordinate | `{"box":1545,"direction":"lo","value":"12327/62500","variable":"q"}` | `-12327/62500 + 1 * q` |
| 39 | coordinate | `{"box":1545,"direction":"lo","value":"72761/250000","variable":"u"}` | `-72761/250000 + 1 * u` |
| 40 | coordinate | `{"box":1545,"direction":"lo","value":"513651/1000000","variable":"v"}` | `-513651/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 3188562500000000 | 9 |
| 1 | 358437500000000 | 0 |
| 2 | 848937500000000 | 1 |
| 3 | 368750000000000 | 10 |
| 4 | 2819812500000000 | 11 |
| 5 | 2461375000000000 | 12 |
| 6 | 2057250000000000 | 13 |
| 7 | 2391250000000000 | 14 |
| 8 | 1837812500000000 | 2 |
| 9 | 607625000000000 | 3 |
| 10 | 2819812500000000 | 4 |
| 11 | 1466375000000000 | 5 |
| 12 | 1474687500000000 | 6 |
| 13 | 944437500000000 | 7 |
| 14 | 1433375000000000 | 8 |
| 15 | 2086812500000000 | 23, 29 |
| 16 | 1101812500000000 | 15, 35 |
| 17 | 3139750000000000 | 30, 40 |
| 18 | 897750000000000 | 16, 28 |
| 19 | 3188562500000000 | 29, 39 |
| 20 | 2461375000000000 | 20, 30 |
| 21 | 2057250000000000 | 21, 36 |
| 22 | 1698812500000000 | 21, 26 |
| 23 | 848937500000000 | 21, 40 |
| 24 | 2391250000000000 | 21, 31 |
| 25 | 2391250000000000 | 20, 21 |
| 26 | 986700949000000 | 34, 37 |
| 27 | 371500000000000 | 34, 39 |
| 28 | 479625000000000 | 19, 22 |
| 29 | 607625000000000 | 24, 35 |
| 30 | 2819812500000000 | 35, 38 |
| 31 | 607625000000000 | 18, 23 |
| 32 | 2057250000000000 | 36, 37 |
| 33 | 371500000000000 | 24, 39 |
| 34 | 607625000000000 | 17, 24 |
| 35 | 1466375000000000 | 19, 36 |
| 36 | 1234750000000000 | 31, 37 |
| 37 | 239937500000000 | 18, 25 |
| 38 | 1474687500000000 | 17, 38 |
| 39 | 916562500000000 | 17, 33 |
| 40 | 916562500000000 | 18, 19 |
| 41 | 62500000000 | 29, 35 |
| 42 | 26829750000 | 29 |
| 43 | 6521562500 | 35 |
| 44 | 49405739875 | 27 |
| 45 | 11054750000 | 16 |
| 46 | 13449000000 | 25, 33 |
| 47 | 25500176559 | 25 |
| 48 | 26358296713 | 20 |
| 49 | 13449000000 | 32, 38 |
| 50 | 9498262107 | 38 |
| 51 | 21022114865 | 32 |
| 52 | 3479812500 | 28 |
| 53 | 62500000000 | 36, 39 |
| 54 | 18190250000 | 36 |
| 55 | 45346000000 | 39 |
| 56 | 38207750000 | 24 |
| 57 | 30125000000 | 22, 39 |
| 58 | 49675325500 | 22 |
| 59 | 732997065937500 | 17 |
| 60 | 32375000000 | 27, 33 |
| 61 | 32375000000 | 32, 40 |
| 62 | 22864617125 | 40 |
| 63 | 51228175303 | 37 |
| 64 | 25745875000 | 31 |
| 65 | 17317408634 | 34 |
| 66 | 20349000000 | 33 |
| 67 | 13292437500 | 26 |
| 68 | 16676000000 | 32, 34 |
| 69 | 12900687500 | 23 |
| 70 | 1202788670625000 | 21 |
| 71 | 34674375000 | 18 |
| 72 | 28533250000 | 19 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -163874561940428814263/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -163874561940428814263/1000000 | 1 | -163874561940428814263/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1545 | -163874561940428814263/1000000 |

## Stage 1546

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS-/HQS+/CRS+/BFQ+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS-/HQS+/CRS+/BFQ+:HLHHHHLLHHLH |
| Index | 0 |
| Context | 302 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1544 |
| Coordinate cut | c high 792523/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 20869/200000 | 6143/20000 | 20869/200000 | 6143/20000 |
| b | 20269/100000 | 56791/125000 | 20269/100000 | 56791/125000 |
| c | 792523/1000000 | 995083/1000000 | 792523/1000000 | 995083/1000000 |
| e | 104347/1000000 | 6143/20000 | 104347/1000000 | 6143/20000 |
| f | 197713/500000 | 43031/62500 | 197713/500000 | 43031/62500 |
| h | 22673/31250 | 1 | 22673/31250 | 1 |
| p | 205967/500000 | 305781/500000 | 205967/500000 | 305781/500000 |
| q | 12327/62500 | 444499/1000000 | 12327/62500 | 444499/1000000 |
| u | 72761/250000 | 112021/200000 | 72761/250000 | 112021/200000 |
| v | 513651/1000000 | 191619/250000 | 513651/1000000 | 191619/250000 |
| r | 37799/50000 | 1 | 37799/50000 | 1 |
| w | 797197/1000000 | 1 | 797197/1000000 | 1 |
| j | 706243/1000000 | 448083/500000 | 706243/1000000 | 448083/500000 |
| k | 482391/1000000 | 98121/125000 | 482391/1000000 | 98121/125000 |

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


## Stage 1547

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS-/HQS+/CRS+/BFQ+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS-/HQS+/CRS+/BFQ+:HLHHHHLLHHLHL |
| Index | 0 |
| Context | 302 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1546 |
| Coordinate cut | k low 574573/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 20869/200000 | 6143/20000 | 20869/200000 | 6143/20000 |
| b | 20269/100000 | 56791/125000 | 20269/100000 | 56791/125000 |
| c | 792523/1000000 | 995083/1000000 | 792523/1000000 | 995083/1000000 |
| e | 104347/1000000 | 6143/20000 | 104347/1000000 | 6143/20000 |
| f | 197713/500000 | 43031/62500 | 197713/500000 | 43031/62500 |
| h | 22673/31250 | 1 | 22673/31250 | 1 |
| p | 205967/500000 | 305781/500000 | 205967/500000 | 305781/500000 |
| q | 12327/62500 | 444499/1000000 | 12327/62500 | 444499/1000000 |
| u | 72761/250000 | 112021/200000 | 72761/250000 | 112021/200000 |
| v | 513651/1000000 | 191619/250000 | 513651/1000000 | 191619/250000 |
| r | 37799/50000 | 1 | 37799/50000 | 1 |
| w | 797197/1000000 | 1 | 797197/1000000 | 1 |
| j | 706243/1000000 | 448083/500000 | 706243/1000000 | 448083/500000 |
| k | 482391/1000000 | 574573/1000000 | 482391/1000000 | 574573/1000000 |

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
| 0 | bound | `{"direction":"lo","ref":"516:1359","triangle":"CPQ","value":"124187/1000000"}` | `-1 * p * v + 1 * c * v + 1 * q * u + -1 * c * q + -124187/1000000` |
| 1 | physical | `{"factor":105,"stage":516}` | `-1/1 * f * k + 1/1 * e * f + 1/1 * k + 1/1 * j + -1093/1000 + -1/1 * e * j` |
| 2 | physical | `{"factor":107,"stage":516}` | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 3 | physical | `{"factor":120,"stage":516}` | `-1/1 * p * v + 1/1 * p + 1/1 * f * v + 1/1 * q * u + -1/1 * f * q + -1/1 * u + -93/1000` |
| 4 | physical | `{"factor":130,"stage":516}` | `1/1 * u * k + -1/1 * h * u + -1/1 * v * j + 1/1 * h * j + -93/1000` |
| 5 | physical | `{"factor":134,"stage":516}` | `-1/1 * r * k + 1/1 * q * r + 1/1 * p * k + 1/1 * w * j + -1/1 * p * w + -1/1 * q * j + -93/1000` |
| 6 | physical | `{"factor":137,"stage":516}` | `1/1 * e + -1/1 * a` |
| 7 | physical | `{"factor":36,"stage":516}` | `-1/1 * f * v + 1/1 * a * f + 1/1 * u + -1/1 * a * u + -93/1000` |
| 8 | physical | `{"factor":46,"stage":516}` | `1/1 * c * e + -1/1 * b * e + -93/1000` |
| 9 | physical | `{"factor":65,"stage":516}` | `1/1 * f * v + -1/1 * b * v + -1/1 * u + 1/1 * b + -93/1000` |
| 10 | physical | `{"factor":71,"stage":516}` | `1/1 * b * k + 1/1 * h * j + -1/1 * b * h + -13857/20000` |
| 11 | physical | `{"factor":72,"stage":516}` | `1/1 * p * v + -1/1 * b * v + -1/1 * q * u + 1/1 * b * q + -93/1000` |
| 12 | physical | `{"factor":73,"stage":516}` | `-1/1 * p * k + 1/1 * b * k + 1/1 * q * j + -1/1 * b * q + -93/1000` |
| 13 | physical | `{"factor":83,"stage":516}` | `1/1 * k + -1/1 * c * k + -1/1 * e * j + 1/1 * c * e + -93/1000` |
| 14 | physical | `{"factor":89,"stage":516}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 15 | physical | `{"factor":98,"stage":516}` | `1/1 * r * k + -1/1 * c * k + -1/1 * w * j + 1/1 * c * w + -93/1000` |
| 16 | coordinate | `{"box":1547,"direction":"hi","value":"56791/125000","variable":"b"}` | `56791/125000 + -1 * b` |
| 17 | coordinate | `{"box":1547,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 18 | coordinate | `{"box":1547,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 19 | coordinate | `{"box":1547,"direction":"hi","value":"448083/500000","variable":"j"}` | `448083/500000 + -1 * j` |
| 20 | coordinate | `{"box":1547,"direction":"hi","value":"574573/1000000","variable":"k"}` | `574573/1000000 + -1 * k` |
| 21 | coordinate | `{"box":1547,"direction":"hi","value":"995083/1000000","variable":"c"}` | `995083/1000000 + -1 * c` |
| 22 | coordinate | `{"box":1547,"direction":"hi","value":"6143/20000","variable":"e"}` | `6143/20000 + -1 * e` |
| 23 | coordinate | `{"box":1547,"direction":"hi","value":"43031/62500","variable":"f"}` | `43031/62500 + -1 * f` |
| 24 | coordinate | `{"box":1547,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 25 | coordinate | `{"box":1547,"direction":"hi","value":"305781/500000","variable":"p"}` | `305781/500000 + -1 * p` |
| 26 | coordinate | `{"box":1547,"direction":"hi","value":"444499/1000000","variable":"q"}` | `444499/1000000 + -1 * q` |
| 27 | coordinate | `{"box":1547,"direction":"hi","value":"191619/250000","variable":"v"}` | `191619/250000 + -1 * v` |
| 28 | coordinate | `{"box":1547,"direction":"lo","value":"20869/200000","variable":"a"}` | `-20869/200000 + 1 * a` |
| 29 | coordinate | `{"box":1547,"direction":"lo","value":"20269/100000","variable":"b"}` | `-20269/100000 + 1 * b` |
| 30 | coordinate | `{"box":1547,"direction":"lo","value":"797197/1000000","variable":"w"}` | `-797197/1000000 + 1 * w` |
| 31 | coordinate | `{"box":1547,"direction":"lo","value":"706243/1000000","variable":"j"}` | `-706243/1000000 + 1 * j` |
| 32 | coordinate | `{"box":1547,"direction":"lo","value":"482391/1000000","variable":"k"}` | `-482391/1000000 + 1 * k` |
| 33 | coordinate | `{"box":1547,"direction":"lo","value":"792523/1000000","variable":"c"}` | `-792523/1000000 + 1 * c` |
| 34 | coordinate | `{"box":1547,"direction":"lo","value":"104347/1000000","variable":"e"}` | `-104347/1000000 + 1 * e` |
| 35 | coordinate | `{"box":1547,"direction":"lo","value":"22673/31250","variable":"h"}` | `-22673/31250 + 1 * h` |
| 36 | coordinate | `{"box":1547,"direction":"lo","value":"205967/500000","variable":"p"}` | `-205967/500000 + 1 * p` |
| 37 | coordinate | `{"box":1547,"direction":"lo","value":"12327/62500","variable":"q"}` | `-12327/62500 + 1 * q` |
| 38 | coordinate | `{"box":1547,"direction":"lo","value":"72761/250000","variable":"u"}` | `-72761/250000 + 1 * u` |
| 39 | coordinate | `{"box":1547,"direction":"lo","value":"513651/1000000","variable":"v"}` | `-513651/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 26490000000 | 7 |
| 1 | 9746000000 | 8 |
| 2 | 37635000000 | 9 |
| 3 | 11837000000 | 10 |
| 4 | 14257000000 | 11 |
| 5 | 14257000000 | 12 |
| 6 | 26593000000 | 13 |
| 7 | 4086000000 | 14 |
| 8 | 1132000000 | 0 |
| 9 | 17778000000 | 15 |
| 10 | 19982000000 | 1 |
| 11 | 57489000000 | 2 |
| 12 | 13124000000 | 3 |
| 13 | 57489000000 | 4 |
| 14 | 3805000000 | 5 |
| 15 | 10529000000 | 6 |
| 16 | 9746000000 | 29, 34 |
| 17 | 26490000000 | 23, 28 |
| 18 | 11837000000 | 16, 24 |
| 19 | 51892000000 | 16, 27 |
| 20 | 26490000000 | 28, 38 |
| 21 | 26094000000 | 20, 29 |
| 22 | 36339000000 | 21, 34 |
| 23 | 4086000000 | 24, 33 |
| 24 | 5218000000 | 33, 37 |
| 25 | 1132000000 | 27, 33 |
| 26 | 17778000000 | 18, 33 |
| 27 | 44370000000 | 20, 21 |
| 28 | 19982000000 | 23, 34 |
| 29 | 57489000000 | 34, 38 |
| 30 | 46575000000 | 19, 22 |
| 31 | 13124000000 | 23, 26 |
| 32 | 24269000000 | 23, 39 |
| 33 | 19982000000 | 20, 23 |
| 34 | 4086000000 | 24, 25 |
| 35 | 69326000000 | 19, 35 |
| 36 | 3805000000 | 30, 36 |
| 37 | 3805000000 | 17, 37 |
| 38 | 13973000000 | 18, 19 |
| 39 | 10452000000 | 20, 25 |
| 40 | 10452000000 | 19, 37 |
| 41 | 57489000000 | 20, 38 |
| 42 | 57489000000 | 19, 27 |
| 43 | 473768 | 38 |
| 44 | 555879 | 21 |
| 45 | 995083 | 22 |
| 46 | 30592 | 29 |
| 47 | 1000000 | 25, 39 |
| 48 | 513651 | 25 |
| 49 | 611562 | 27 |
| 50 | 1000000 | 37, 38 |
| 51 | 291044 | 37 |
| 52 | 18267415570 | 20 |
| 53 | 1000000 | 32, 33 |
| 54 | 482391 | 33 |
| 55 | 792523 | 32 |
| 56 | 13973000000 | 17, 32 |
| 57 | 7490917203 | 17 |
| 58 | 472414 | 31 |
| 59 | 430290 | 39 |
| 60 | 130226 | 24 |
| 61 | 771581 | 36 |
| 62 | 323580 | 34 |
| 63 | 496520 | 28 |
| 64 | 234361 | 23 |
| 65 | 520514 | 26 |
| 66 | 62494 | 30 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -541052020387349/200000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -541052020387349/200000 | 1 | -541052020387349/200000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1547 | -541052020387349/200000 |

## Stage 1548

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS-/HQS+/CRS+/BFQ+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS-/HQS+/CRS+/BFQ+:HLHHHHLLHHLHH |
| Index | 0 |
| Context | 302 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1546 |
| Coordinate cut | k high 574573/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 20869/200000 | 6143/20000 | 20869/200000 | 6143/20000 |
| b | 20269/100000 | 56791/125000 | 20269/100000 | 56791/125000 |
| c | 792523/1000000 | 995083/1000000 | 792523/1000000 | 995083/1000000 |
| e | 104347/1000000 | 6143/20000 | 104347/1000000 | 6143/20000 |
| f | 197713/500000 | 43031/62500 | 197713/500000 | 43031/62500 |
| h | 22673/31250 | 1 | 22673/31250 | 1 |
| p | 205967/500000 | 305781/500000 | 205967/500000 | 305781/500000 |
| q | 12327/62500 | 444499/1000000 | 12327/62500 | 444499/1000000 |
| u | 72761/250000 | 112021/200000 | 72761/250000 | 112021/200000 |
| v | 513651/1000000 | 191619/250000 | 513651/1000000 | 191619/250000 |
| r | 37799/50000 | 1 | 37799/50000 | 1 |
| w | 797197/1000000 | 1 | 797197/1000000 | 1 |
| j | 706243/1000000 | 448083/500000 | 706243/1000000 | 448083/500000 |
| k | 574573/1000000 | 98121/125000 | 574573/1000000 | 98121/125000 |

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


## Stage 1549

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS-/HQS+/CRS+/BFQ+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS-/HQS+/CRS+/BFQ+:HLHHHHLLHHLHHL |
| Index | 0 |
| Context | 302 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1548 |
| Coordinate cut | h low 8917/10000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 20869/200000 | 6143/20000 | 20869/200000 | 6143/20000 |
| b | 20269/100000 | 56791/125000 | 20269/100000 | 56791/125000 |
| c | 792523/1000000 | 995083/1000000 | 792523/1000000 | 995083/1000000 |
| e | 104347/1000000 | 6143/20000 | 104347/1000000 | 6143/20000 |
| f | 197713/500000 | 43031/62500 | 197713/500000 | 43031/62500 |
| h | 22673/31250 | 8917/10000 | 22673/31250 | 8917/10000 |
| p | 205967/500000 | 305781/500000 | 205967/500000 | 305781/500000 |
| q | 12327/62500 | 444499/1000000 | 12327/62500 | 444499/1000000 |
| u | 72761/250000 | 112021/200000 | 72761/250000 | 112021/200000 |
| v | 513651/1000000 | 191619/250000 | 513651/1000000 | 191619/250000 |
| r | 37799/50000 | 1 | 37799/50000 | 1 |
| w | 797197/1000000 | 1 | 797197/1000000 | 1 |
| j | 706243/1000000 | 448083/500000 | 706243/1000000 | 448083/500000 |
| k | 574573/1000000 | 98121/125000 | 574573/1000000 | 98121/125000 |

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
