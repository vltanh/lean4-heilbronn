# BITT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 1655

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ-/EHQ+/BRS-/CFQ-/QRS-/APS-/BQS-/PQS+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ-/EHQ+/BRS-/CFQ-/QRS-/APS-/BQS-/PQS+:LLLH |
| Index | 0 |
| Context | 362 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1647 |
| Coordinate cut | q high 139577/250000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 106501/1000000 | 208307/500000 | 106501/1000000 | 208307/500000 |
| b | 105961/1000000 | 6143/20000 | 105961/1000000 | 6143/20000 |
| c | 275411/500000 | 212963/250000 | 275411/500000 | 212963/250000 |
| e | 6657/62500 | 416273/1000000 | 6657/62500 | 416273/1000000 |
| f | 6657/62500 | 416273/1000000 | 6657/62500 | 416273/1000000 |
| h | 36693/50000 | 98399/100000 | 36693/50000 | 98399/100000 |
| p | 199033/1000000 | 284009/500000 | 199033/1000000 | 284009/500000 |
| q | 139577/250000 | 137799/200000 | 139577/250000 | 137799/200000 |
| u | 407481/1000000 | 141941/200000 | 407481/1000000 | 141941/200000 |
| v | 21127/100000 | 131033/250000 | 21127/100000 | 131033/250000 |
| r | 466489/1000000 | 1 | 466489/1000000 | 1 |
| w | 2497/3125 | 1 | 2497/3125 | 1 |
| j | 399441/500000 | 8033/8963 | 399441/500000 | 8033/8963 |
| k | 314283/1000000 | 678149/1000000 | 314283/1000000 | 678149/1000000 |

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
| 0 | bound | `{"direction":"lo","ref":"576:3409","triangle":"FQS","value":"43927/250000"}` | `1 * u * k + -1 * u + -1 * f * k + -1 * v * j + 1 * f * v + 1 * j + -43927/250000` |
| 1 | bound | `{"direction":"lo","ref":"576:3563","triangle":"FRS","value":"20147/125000"}` | `-1 * r * k + 1 * r + 1 * f * k + 1 * w * j + -1 * f * w + -1 * j + -20147/125000` |
| 2 | bound | `{"direction":"lo","ref":"576:825","triangle":"CEQ","value":"4713/40000"}` | `1 * v + -1 * c * v + -1 * e * u + 1 * c * e + -4713/40000` |
| 3 | physical | `{"factor":104,"stage":576}` | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -93/1000` |
| 4 | physical | `{"factor":110,"stage":576}` | `-1/1 * u * k + 1/1 * e * u + 1/1 * k + 1/1 * v * j + -1/1 * v + -1/1 * e * j + -93/1000` |
| 5 | physical | `{"factor":111,"stage":576}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 6 | physical | `{"factor":114,"stage":576}` | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 7 | physical | `{"factor":133,"stage":576}` | `1/1 * e + -1/1 * a` |
| 8 | physical | `{"factor":137,"stage":576}` | `1/1 * f + -1/1 * e` |
| 9 | physical | `{"factor":152,"stage":576}` | `38341107961/5812500000 + 1/1 * f + 1/1 * r + -49966107961/5812500000 * j` |
| 10 | physical | `{"factor":40,"stage":576}` | `1/1 * p * w + -1/1 * a * p + -1/1 * q * r + 1/1 * a * r + -93/1000` |
| 11 | physical | `{"factor":63,"stage":576}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 12 | physical | `{"factor":74,"stage":576}` | `-1/1 * u * k + 1/1 * b * k + 1/1 * v * j + -1/1 * b * v + -93/1000` |
| 13 | physical | `{"factor":86,"stage":576}` | `-1/1 * f * v + 1/1 * c * v + 1/1 * u + -1/1 * c + -93/1000` |
| 14 | physical | `{"factor":89,"stage":576}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 15 | coordinate | `{"box":1655,"direction":"hi","value":"208307/500000","variable":"a"}` | `208307/500000 + -1 * a` |
| 16 | coordinate | `{"box":1655,"direction":"hi","value":"6143/20000","variable":"b"}` | `6143/20000 + -1 * b` |
| 17 | coordinate | `{"box":1655,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 18 | coordinate | `{"box":1655,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 19 | coordinate | `{"box":1655,"direction":"hi","value":"8033/8963","variable":"j"}` | `8033/8963 + -1 * j` |
| 20 | coordinate | `{"box":1655,"direction":"hi","value":"678149/1000000","variable":"k"}` | `678149/1000000 + -1 * k` |
| 21 | coordinate | `{"box":1655,"direction":"hi","value":"212963/250000","variable":"c"}` | `212963/250000 + -1 * c` |
| 22 | coordinate | `{"box":1655,"direction":"hi","value":"416273/1000000","variable":"e"}` | `416273/1000000 + -1 * e` |
| 23 | coordinate | `{"box":1655,"direction":"hi","value":"416273/1000000","variable":"f"}` | `416273/1000000 + -1 * f` |
| 24 | coordinate | `{"box":1655,"direction":"hi","value":"98399/100000","variable":"h"}` | `98399/100000 + -1 * h` |
| 25 | coordinate | `{"box":1655,"direction":"hi","value":"284009/500000","variable":"p"}` | `284009/500000 + -1 * p` |
| 26 | coordinate | `{"box":1655,"direction":"hi","value":"141941/200000","variable":"u"}` | `141941/200000 + -1 * u` |
| 27 | coordinate | `{"box":1655,"direction":"hi","value":"131033/250000","variable":"v"}` | `131033/250000 + -1 * v` |
| 28 | coordinate | `{"box":1655,"direction":"lo","value":"106501/1000000","variable":"a"}` | `-106501/1000000 + 1 * a` |
| 29 | coordinate | `{"box":1655,"direction":"lo","value":"105961/1000000","variable":"b"}` | `-105961/1000000 + 1 * b` |
| 30 | coordinate | `{"box":1655,"direction":"lo","value":"466489/1000000","variable":"r"}` | `-466489/1000000 + 1 * r` |
| 31 | coordinate | `{"box":1655,"direction":"lo","value":"2497/3125","variable":"w"}` | `-2497/3125 + 1 * w` |
| 32 | coordinate | `{"box":1655,"direction":"lo","value":"314283/1000000","variable":"k"}` | `-314283/1000000 + 1 * k` |
| 33 | coordinate | `{"box":1655,"direction":"lo","value":"275411/500000","variable":"c"}` | `-275411/500000 + 1 * c` |
| 34 | coordinate | `{"box":1655,"direction":"lo","value":"6657/62500","variable":"e"}` | `-6657/62500 + 1 * e` |
| 35 | coordinate | `{"box":1655,"direction":"lo","value":"6657/62500","variable":"f"}` | `-6657/62500 + 1 * f` |
| 36 | coordinate | `{"box":1655,"direction":"lo","value":"36693/50000","variable":"h"}` | `-36693/50000 + 1 * h` |
| 37 | coordinate | `{"box":1655,"direction":"lo","value":"199033/1000000","variable":"p"}` | `-199033/1000000 + 1 * p` |
| 38 | coordinate | `{"box":1655,"direction":"lo","value":"139577/250000","variable":"q"}` | `-139577/250000 + 1 * q` |
| 39 | coordinate | `{"box":1655,"direction":"lo","value":"407481/1000000","variable":"u"}` | `-407481/1000000 + 1 * u` |
| 40 | coordinate | `{"box":1655,"direction":"lo","value":"21127/100000","variable":"v"}` | `-21127/100000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 452705892900000000 | 10 |
| 1 | 743256775000000 | 11 |
| 2 | 708525150000000 | 12 |
| 3 | 101548325175000000 | 2 |
| 4 | 102229065025000000 | 13 |
| 5 | 527858183075000000 | 14 |
| 6 | 1243392175000000 | 3 |
| 7 | 100297986675000000 | 4 |
| 8 | 99922885125000000 | 5 |
| 9 | 356575701225000000 | 6 |
| 10 | 101006511825000000 | 0 |
| 11 | 99922885125000000 | 1 |
| 12 | 121081391075000000 | 7 |
| 13 | 107320721250000000 | 8 |
| 14 | 104194875000000 | 9 |
| 15 | 743256775000000 | 16, 38 |
| 16 | 452705892900000000 | 28, 37 |
| 17 | 708525150000000 | 29, 40 |
| 18 | 452705892900000000 | 15, 30 |
| 19 | 708525150000000 | 20, 29 |
| 20 | 101548325175000000 | 21, 34 |
| 21 | 527858183075000000 | 21, 36 |
| 22 | 527858183075000000 | 33, 38 |
| 23 | 687686175000000 | 21, 40 |
| 24 | 99922885125000000 | 17, 22 |
| 25 | 375101550000000 | 19, 22 |
| 26 | 356575701225000000 | 24, 35 |
| 27 | 743256775000000 | 35, 38 |
| 28 | 1222553200000000 | 23, 27 |
| 29 | 456505532675000000 | 18, 23 |
| 30 | 1083626700000000 | 20, 23 |
| 31 | 456422176775000000 | 36, 37 |
| 32 | 71436006300000000 | 24, 25 |
| 33 | 1243392175000000 | 24, 26 |
| 34 | 356575701225000000 | 17, 24 |
| 35 | 452705892900000000 | 18, 37 |
| 36 | 452705892900000000 | 30, 38 |
| 37 | 6775111981400 | 37 |
| 38 | 2504942043550 | 16 |
| 39 | 8761246903350 | 27 |
| 40 | 6946325000000 | 33, 40 |
| 41 | 1467550082750 | 33 |
| 42 | 3826188629150 | 40 |
| 43 | 6946325000000 | 34, 39 |
| 44 | 2830495457325 | 34 |
| 45 | 1672133246650 | 39 |
| 46 | 1398897399414250 | 21 |
| 47 | 1876827551750 | 24 |
| 48 | 906953869950 | 32 |
| 49 | 4630496654575 | 31 |
| 50 | 6946325000000 | 23, 31 |
| 51 | 5550391528000 | 23 |
| 52 | 2891567546725 | 18 |
| 53 | 5050971599475 | 30 |
| 54 | 31789601167964 | 19 |
| 55 | 5747546974100 | 22 |
| 56 | 2483783537600 | 28 |
| 57 | 4298121949650 | 35 |
| 58 | 501789093837943300 | 38 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -2047643406881066939971/40000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -2047643406881066939971/40000 | 1 | -2047643406881066939971/40000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1655 | -2047643406881066939971/40000 |

## Stage 1656

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ-/EHQ+/BRS-/CFQ-/QRS-/APS-/BQS-/PQS+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ-/EHQ+/BRS-/CFQ-/QRS-/APS-/BQS-/PQS+:LLH |
| Index | 0 |
| Context | 362 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1646 |
| Coordinate cut | c high 212963/250000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 106501/1000000 | 208307/500000 | 106501/1000000 | 208307/500000 |
| b | 105961/1000000 | 6143/20000 | 105961/1000000 | 6143/20000 |
| c | 212963/250000 | 48933/50000 | 212963/250000 | 48933/50000 |
| e | 6657/62500 | 416273/1000000 | 6657/62500 | 416273/1000000 |
| f | 6657/62500 | 416273/1000000 | 6657/62500 | 416273/1000000 |
| h | 36693/50000 | 98399/100000 | 36693/50000 | 98399/100000 |
| p | 199033/1000000 | 284009/500000 | 199033/1000000 | 284009/500000 |
| q | 31793/100000 | 137799/200000 | 31793/100000 | 137799/200000 |
| u | 407481/1000000 | 141941/200000 | 407481/1000000 | 141941/200000 |
| v | 21127/100000 | 131033/250000 | 21127/100000 | 131033/250000 |
| r | 466489/1000000 | 1 | 466489/1000000 | 1 |
| w | 2497/3125 | 1 | 2497/3125 | 1 |
| j | 399441/500000 | 8033/8963 | 399441/500000 | 8033/8963 |
| k | 314283/1000000 | 678149/1000000 | 314283/1000000 | 678149/1000000 |

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
| 0 | bound | `{"direction":"lo","ref":"576:3409","triangle":"FQS","value":"43927/250000"}` | `1 * u * k + -1 * u + -1 * f * k + -1 * v * j + 1 * f * v + 1 * j + -43927/250000` |
| 1 | bound | `{"direction":"lo","ref":"576:3563","triangle":"FRS","value":"20147/125000"}` | `-1 * r * k + 1 * r + 1 * f * k + 1 * w * j + -1 * f * w + -1 * j + -20147/125000` |
| 2 | bound | `{"direction":"lo","ref":"576:825","triangle":"CEQ","value":"4713/40000"}` | `1 * v + -1 * c * v + -1 * e * u + 1 * c * e + -4713/40000` |
| 3 | physical | `{"factor":104,"stage":576}` | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -93/1000` |
| 4 | physical | `{"factor":109,"stage":576}` | `-1/1 * u * w + 1/1 * e * u + 1/1 * w + 1/1 * v * r + -1/1 * v + -1/1 * e * r + -279/1000` |
| 5 | physical | `{"factor":111,"stage":576}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 6 | physical | `{"factor":114,"stage":576}` | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 7 | physical | `{"factor":137,"stage":576}` | `1/1 * f + -1/1 * e` |
| 8 | physical | `{"factor":74,"stage":576}` | `-1/1 * u * k + 1/1 * b * k + 1/1 * v * j + -1/1 * b * v + -93/1000` |
| 9 | physical | `{"factor":83,"stage":576}` | `1/1 * k + -1/1 * c * k + -1/1 * e * j + 1/1 * c * e + -93/1000` |
| 10 | physical | `{"factor":86,"stage":576}` | `-1/1 * f * v + 1/1 * c * v + 1/1 * u + -1/1 * c + -93/1000` |
| 11 | coordinate | `{"box":1656,"direction":"hi","value":"6143/20000","variable":"b"}` | `6143/20000 + -1 * b` |
| 12 | coordinate | `{"box":1656,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 13 | coordinate | `{"box":1656,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 14 | coordinate | `{"box":1656,"direction":"hi","value":"8033/8963","variable":"j"}` | `8033/8963 + -1 * j` |
| 15 | coordinate | `{"box":1656,"direction":"hi","value":"678149/1000000","variable":"k"}` | `678149/1000000 + -1 * k` |
| 16 | coordinate | `{"box":1656,"direction":"hi","value":"416273/1000000","variable":"e"}` | `416273/1000000 + -1 * e` |
| 17 | coordinate | `{"box":1656,"direction":"hi","value":"416273/1000000","variable":"f"}` | `416273/1000000 + -1 * f` |
| 18 | coordinate | `{"box":1656,"direction":"hi","value":"98399/100000","variable":"h"}` | `98399/100000 + -1 * h` |
| 19 | coordinate | `{"box":1656,"direction":"hi","value":"141941/200000","variable":"u"}` | `141941/200000 + -1 * u` |
| 20 | coordinate | `{"box":1656,"direction":"hi","value":"131033/250000","variable":"v"}` | `131033/250000 + -1 * v` |
| 21 | coordinate | `{"box":1656,"direction":"lo","value":"105961/1000000","variable":"b"}` | `-105961/1000000 + 1 * b` |
| 22 | coordinate | `{"box":1656,"direction":"lo","value":"466489/1000000","variable":"r"}` | `-466489/1000000 + 1 * r` |
| 23 | coordinate | `{"box":1656,"direction":"lo","value":"2497/3125","variable":"w"}` | `-2497/3125 + 1 * w` |
| 24 | coordinate | `{"box":1656,"direction":"lo","value":"314283/1000000","variable":"k"}` | `-314283/1000000 + 1 * k` |
| 25 | coordinate | `{"box":1656,"direction":"lo","value":"212963/250000","variable":"c"}` | `-212963/250000 + 1 * c` |
| 26 | coordinate | `{"box":1656,"direction":"lo","value":"6657/62500","variable":"e"}` | `-6657/62500 + 1 * e` |
| 27 | coordinate | `{"box":1656,"direction":"lo","value":"6657/62500","variable":"f"}` | `-6657/62500 + 1 * f` |
| 28 | coordinate | `{"box":1656,"direction":"lo","value":"407481/1000000","variable":"u"}` | `-407481/1000000 + 1 * u` |
| 29 | coordinate | `{"box":1656,"direction":"lo","value":"21127/100000","variable":"v"}` | `-21127/100000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 311042989000000 | 8 |
| 1 | 564104331000000 | 2 |
| 2 | 557382081000000 | 9 |
| 3 | 836454049000000 | 10 |
| 4 | 526970622000000 | 3 |
| 5 | 37133709000000 | 4 |
| 6 | 8344553000000 | 5 |
| 7 | 171211226000000 | 6 |
| 8 | 217039045000000 | 0 |
| 9 | 8344553000000 | 1 |
| 10 | 417792319000000 | 7 |
| 11 | 311042989000000 | 11, 20 |
| 12 | 179385482000000 | 15, 21 |
| 13 | 131657507000000 | 11, 24 |
| 14 | 1121495375000000 | 16, 25 |
| 15 | 272349718000000 | 20, 25 |
| 16 | 557382081000000 | 24, 25 |
| 17 | 45478262000000 | 12, 16 |
| 18 | 549037528000000 | 14, 16 |
| 19 | 171211226000000 | 18, 27 |
| 20 | 619415004000000 | 17, 20 |
| 21 | 179555779000000 | 23, 27 |
| 22 | 64282636000000 | 24, 27 |
| 23 | 144411856000000 | 15, 17 |
| 24 | 526970622000000 | 18, 19 |
| 25 | 171211226000000 | 12, 18 |
| 26 | 37133709000000 | 13, 19 |
| 27 | 37133709000000 | 12, 29 |
| 28 | 94003944000000 | 15, 19 |
| 29 | 94003944000000 | 14, 29 |
| 30 | 2868946294 | 20 |
| 31 | 8963000000 | 25, 26 |
| 32 | 402035269597828 | 25 |
| 33 | 7635149476 | 26 |
| 34 | 1212801456 | 15 |
| 35 | 1207961436 | 28 |
| 36 | 1760817202 | 18 |
| 37 | 562078693 | 23 |
| 38 | 489128836 | 22 |
| 39 | 2816918529 | 27 |
| 40 | 954667056 | 24 |
| 41 | 5206355736 | 14 |
| 42 | 2100237049 | 17 |
| 43 | 8049184500 | 16 |
| 44 | 217594751 | 11 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -9404214739697200101/200000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -9404214739697200101/200000 | 1 | -9404214739697200101/200000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1656 | -9404214739697200101/200000 |

## Stage 1657

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ-/EHQ+/BRS-/CFQ-/QRS-/APS-/BQS-/PQS+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ-/EHQ+/BRS-/CFQ-/QRS-/APS-/BQS-/PQS+:LH |
| Index | 0 |
| Context | 362 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1645 |
| Coordinate cut | v high 131033/250000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 106501/1000000 | 208307/500000 | 106501/1000000 | 208307/500000 |
| b | 105961/1000000 | 6143/20000 | 105961/1000000 | 6143/20000 |
| c | 275411/500000 | 48933/50000 | 275411/500000 | 48933/50000 |
| e | 6657/62500 | 416273/1000000 | 6657/62500 | 416273/1000000 |
| f | 6657/62500 | 416273/1000000 | 6657/62500 | 416273/1000000 |
| h | 36693/50000 | 98399/100000 | 36693/50000 | 98399/100000 |
| p | 199033/1000000 | 284009/500000 | 199033/1000000 | 284009/500000 |
| q | 31793/100000 | 137799/200000 | 31793/100000 | 137799/200000 |
| u | 407481/1000000 | 141941/200000 | 407481/1000000 | 141941/200000 |
| v | 131033/250000 | 329993/500000 | 131033/250000 | 329993/500000 |
| r | 466489/1000000 | 1 | 466489/1000000 | 1 |
| w | 2497/3125 | 1 | 2497/3125 | 1 |
| j | 399441/500000 | 8033/8963 | 399441/500000 | 8033/8963 |
| k | 314283/1000000 | 678149/1000000 | 314283/1000000 | 678149/1000000 |

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
| 0 | bound | `{"direction":"lo","ref":"576:3453","triangle":"PRS","value":"152977/1000000"}` | `-1 * r * k + 1 * q * r + 1 * p * k + 1 * w * j + -1 * p * w + -1 * q * j + -152977/1000000` |
| 1 | bound | `{"direction":"lo","ref":"576:3563","triangle":"FRS","value":"20147/125000"}` | `-1 * r * k + 1 * r + 1 * f * k + 1 * w * j + -1 * f * w + -1 * j + -20147/125000` |
| 2 | physical | `{"factor":104,"stage":576}` | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -93/1000` |
| 3 | physical | `{"factor":110,"stage":576}` | `-1/1 * u * k + 1/1 * e * u + 1/1 * k + 1/1 * v * j + -1/1 * v + -1/1 * e * j + -93/1000` |
| 4 | physical | `{"factor":111,"stage":576}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 5 | physical | `{"factor":114,"stage":576}` | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 6 | physical | `{"factor":129,"stage":576}` | `1/1 * u * k + -1/1 * q * u + -1/1 * p * k + -1/1 * v * j + 1/1 * p * v + 1/1 * q * j + -93/1000` |
| 7 | physical | `{"factor":137,"stage":576}` | `1/1 * f + -1/1 * e` |
| 8 | physical | `{"factor":39,"stage":576}` | `-1/1 * p * v + 1/1 * a * p + 1/1 * q * u + -1/1 * a * u + -93/1000` |
| 9 | physical | `{"factor":40,"stage":576}` | `1/1 * p * w + -1/1 * a * p + -1/1 * q * r + 1/1 * a * r + -93/1000` |
| 10 | physical | `{"factor":67,"stage":576}` | `-1/1 * f * k + 1/1 * b * k + 1/1 * j + -1/1 * b + -13857/20000` |
| 11 | physical | `{"factor":7,"stage":576}` | `1/1 * b * h + -1/1 * a * b + -93/1000` |
| 12 | physical | `{"factor":86,"stage":576}` | `-1/1 * f * v + 1/1 * c * v + 1/1 * u + -1/1 * c + -93/1000` |
| 13 | physical | `{"factor":89,"stage":576}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 14 | coordinate | `{"box":1657,"direction":"hi","value":"208307/500000","variable":"a"}` | `208307/500000 + -1 * a` |
| 15 | coordinate | `{"box":1657,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 16 | coordinate | `{"box":1657,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 17 | coordinate | `{"box":1657,"direction":"hi","value":"8033/8963","variable":"j"}` | `8033/8963 + -1 * j` |
| 18 | coordinate | `{"box":1657,"direction":"hi","value":"678149/1000000","variable":"k"}` | `678149/1000000 + -1 * k` |
| 19 | coordinate | `{"box":1657,"direction":"hi","value":"48933/50000","variable":"c"}` | `48933/50000 + -1 * c` |
| 20 | coordinate | `{"box":1657,"direction":"hi","value":"416273/1000000","variable":"e"}` | `416273/1000000 + -1 * e` |
| 21 | coordinate | `{"box":1657,"direction":"hi","value":"416273/1000000","variable":"f"}` | `416273/1000000 + -1 * f` |
| 22 | coordinate | `{"box":1657,"direction":"hi","value":"98399/100000","variable":"h"}` | `98399/100000 + -1 * h` |
| 23 | coordinate | `{"box":1657,"direction":"hi","value":"284009/500000","variable":"p"}` | `284009/500000 + -1 * p` |
| 24 | coordinate | `{"box":1657,"direction":"hi","value":"137799/200000","variable":"q"}` | `137799/200000 + -1 * q` |
| 25 | coordinate | `{"box":1657,"direction":"hi","value":"141941/200000","variable":"u"}` | `141941/200000 + -1 * u` |
| 26 | coordinate | `{"box":1657,"direction":"lo","value":"106501/1000000","variable":"a"}` | `-106501/1000000 + 1 * a` |
| 27 | coordinate | `{"box":1657,"direction":"lo","value":"105961/1000000","variable":"b"}` | `-105961/1000000 + 1 * b` |
| 28 | coordinate | `{"box":1657,"direction":"lo","value":"466489/1000000","variable":"r"}` | `-466489/1000000 + 1 * r` |
| 29 | coordinate | `{"box":1657,"direction":"lo","value":"2497/3125","variable":"w"}` | `-2497/3125 + 1 * w` |
| 30 | coordinate | `{"box":1657,"direction":"lo","value":"399441/500000","variable":"j"}` | `-399441/500000 + 1 * j` |
| 31 | coordinate | `{"box":1657,"direction":"lo","value":"314283/1000000","variable":"k"}` | `-314283/1000000 + 1 * k` |
| 32 | coordinate | `{"box":1657,"direction":"lo","value":"275411/500000","variable":"c"}` | `-275411/500000 + 1 * c` |
| 33 | coordinate | `{"box":1657,"direction":"lo","value":"6657/62500","variable":"e"}` | `-6657/62500 + 1 * e` |
| 34 | coordinate | `{"box":1657,"direction":"lo","value":"6657/62500","variable":"f"}` | `-6657/62500 + 1 * f` |
| 35 | coordinate | `{"box":1657,"direction":"lo","value":"36693/50000","variable":"h"}` | `-36693/50000 + 1 * h` |
| 36 | coordinate | `{"box":1657,"direction":"lo","value":"199033/1000000","variable":"p"}` | `-199033/1000000 + 1 * p` |
| 37 | coordinate | `{"box":1657,"direction":"lo","value":"31793/100000","variable":"q"}` | `-31793/100000 + 1 * q` |
| 38 | coordinate | `{"box":1657,"direction":"lo","value":"407481/1000000","variable":"u"}` | `-407481/1000000 + 1 * u` |
| 39 | coordinate | `{"box":1657,"direction":"lo","value":"131033/250000","variable":"v"}` | `-131033/250000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 42619065000000 | 11 |
| 1 | 330734700000000 | 8 |
| 2 | 207618932000000 | 9 |
| 3 | 116196332000000 | 10 |
| 4 | 237376092000000 | 12 |
| 5 | 169588923000000 | 13 |
| 6 | 710792789000000 | 2 |
| 7 | 87469917000000 | 3 |
| 8 | 128565272000000 | 4 |
| 9 | 302761177000000 | 5 |
| 10 | 84072940000000 | 1 |
| 11 | 330734700000000 | 6 |
| 12 | 44492332000000 | 0 |
| 13 | 235117416000000 | 7 |
| 14 | 42619065000000 | 26, 27 |
| 15 | 42619065000000 | 22, 27 |
| 16 | 123115768000000 | 14, 36 |
| 17 | 330734700000000 | 26, 38 |
| 18 | 33602287000000 | 15, 26 |
| 19 | 174016645000000 | 14, 28 |
| 20 | 116196332000000 | 18, 27 |
| 21 | 169588923000000 | 22, 32 |
| 22 | 169588923000000 | 32, 37 |
| 23 | 237376092000000 | 19, 39 |
| 24 | 2957790000000 | 28, 33 |
| 25 | 125607482000000 | 15, 20 |
| 26 | 41095355000000 | 17, 33 |
| 27 | 302761177000000 | 22, 34 |
| 28 | 237376092000000 | 34, 39 |
| 29 | 386843080000000 | 16, 21 |
| 30 | 32123392000000 | 18, 21 |
| 31 | 169588923000000 | 35, 36 |
| 32 | 710792789000000 | 22, 25 |
| 33 | 302761177000000 | 15, 22 |
| 34 | 163126600000000 | 16, 36 |
| 35 | 163126600000000 | 15, 24 |
| 36 | 286242368000000 | 31, 36 |
| 37 | 286242368000000 | 17, 37 |
| 38 | 798262706000000 | 20, 38 |
| 39 | 243264783000000 | 18, 38 |
| 40 | 243264783000000 | 30, 39 |
| 41 | 4181140907 | 14 |
| 42 | 3734111282 | 15 |
| 43 | 2719266644 | 17 |
| 44 | 144922747 | 27 |
| 45 | 4500008595 | 25 |
| 46 | 3288094476 | 32 |
| 47 | 785575478486990 | 39 |
| 48 | 1590547091 | 22 |
| 49 | 1076411485 | 31 |
| 50 | 4181140907 | 33 |
| 51 | 2595209761 | 28 |
| 52 | 4250191859 | 16 |
| 53 | 8963000000 | 21, 29 |
| 54 | 7161795520 | 21 |
| 55 | 12545457322 | 34 |
| 56 | 7697345183 | 20 |
| 57 | 5007816323 | 26 |
| 58 | 2715394628 | 23 |
| 59 | 1978255294 | 24 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -11107559540413851609/250000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -11107559540413851609/250000 | 1 | -11107559540413851609/250000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1657 | -11107559540413851609/250000 |

## Stage 1658

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ-/EHQ+/BRS-/CFQ-/QRS-/APS-/BQS-/PQS+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ-/EHQ+/BRS-/CFQ-/QRS-/APS-/BQS-/PQS+:H |
| Index | 0 |
| Context | 362 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1644 |
| Coordinate cut | k high 678149/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 106501/1000000 | 208307/500000 | 106501/1000000 | 208307/500000 |
| b | 105961/1000000 | 6143/20000 | 105961/1000000 | 6143/20000 |
| c | 275411/500000 | 48933/50000 | 275411/500000 | 48933/50000 |
| e | 6657/62500 | 416273/1000000 | 6657/62500 | 416273/1000000 |
| f | 6657/62500 | 416273/1000000 | 6657/62500 | 416273/1000000 |
| h | 36693/50000 | 98399/100000 | 36693/50000 | 98399/100000 |
| p | 199033/1000000 | 284009/500000 | 199033/1000000 | 284009/500000 |
| q | 31793/100000 | 137799/200000 | 31793/100000 | 137799/200000 |
| u | 407481/1000000 | 141941/200000 | 407481/1000000 | 141941/200000 |
| v | 21127/100000 | 329993/500000 | 21127/100000 | 329993/500000 |
| r | 466489/1000000 | 1 | 466489/1000000 | 1 |
| w | 2497/3125 | 1 | 2497/3125 | 1 |
| j | 399441/500000 | 8033/8963 | 399441/500000 | 8033/8963 |
| k | 678149/1000000 | 169639/200000 | 678149/1000000 | 169639/200000 |

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
| 0 | bound | `{"direction":"lo","ref":"576:3453","triangle":"PRS","value":"152977/1000000"}` | `-1 * r * k + 1 * q * r + 1 * p * k + 1 * w * j + -1 * p * w + -1 * q * j + -152977/1000000` |
| 1 | bound | `{"direction":"lo","ref":"576:3487","triangle":"ARS","value":"338977/1000000"}` | `-1 * r * k + 1 * a * r + 1 * w * j + -1 * a * j + -338977/1000000` |
| 2 | bound | `{"direction":"lo","ref":"576:3595","triangle":"BPS","value":"7353/25000"}` | `-1 * p * k + 1 * b * k + 1 * q * j + -1 * b * q + -7353/25000` |
| 3 | physical | `{"factor":111,"stage":576}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 4 | physical | `{"factor":114,"stage":576}` | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 5 | physical | `{"factor":129,"stage":576}` | `1/1 * u * k + -1/1 * q * u + -1/1 * p * k + -1/1 * v * j + 1/1 * p * v + 1/1 * q * j + -93/1000` |
| 6 | physical | `{"factor":133,"stage":576}` | `1/1 * e + -1/1 * a` |
| 7 | physical | `{"factor":137,"stage":576}` | `1/1 * f + -1/1 * e` |
| 8 | physical | `{"factor":39,"stage":576}` | `-1/1 * p * v + 1/1 * a * p + 1/1 * q * u + -1/1 * a * u + -93/1000` |
| 9 | physical | `{"factor":40,"stage":576}` | `1/1 * p * w + -1/1 * a * p + -1/1 * q * r + 1/1 * a * r + -93/1000` |
| 10 | physical | `{"factor":63,"stage":576}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 11 | physical | `{"factor":67,"stage":576}` | `-1/1 * f * k + 1/1 * b * k + 1/1 * j + -1/1 * b + -13857/20000` |
| 12 | physical | `{"factor":74,"stage":576}` | `-1/1 * u * k + 1/1 * b * k + 1/1 * v * j + -1/1 * b * v + -93/1000` |
| 13 | physical | `{"factor":86,"stage":576}` | `-1/1 * f * v + 1/1 * c * v + 1/1 * u + -1/1 * c + -93/1000` |
| 14 | physical | `{"factor":89,"stage":576}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 15 | coordinate | `{"box":1658,"direction":"hi","value":"208307/500000","variable":"a"}` | `208307/500000 + -1 * a` |
| 16 | coordinate | `{"box":1658,"direction":"hi","value":"6143/20000","variable":"b"}` | `6143/20000 + -1 * b` |
| 17 | coordinate | `{"box":1658,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 18 | coordinate | `{"box":1658,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 19 | coordinate | `{"box":1658,"direction":"hi","value":"8033/8963","variable":"j"}` | `8033/8963 + -1 * j` |
| 20 | coordinate | `{"box":1658,"direction":"hi","value":"416273/1000000","variable":"e"}` | `416273/1000000 + -1 * e` |
| 21 | coordinate | `{"box":1658,"direction":"hi","value":"416273/1000000","variable":"f"}` | `416273/1000000 + -1 * f` |
| 22 | coordinate | `{"box":1658,"direction":"hi","value":"98399/100000","variable":"h"}` | `98399/100000 + -1 * h` |
| 23 | coordinate | `{"box":1658,"direction":"hi","value":"284009/500000","variable":"p"}` | `284009/500000 + -1 * p` |
| 24 | coordinate | `{"box":1658,"direction":"hi","value":"137799/200000","variable":"q"}` | `137799/200000 + -1 * q` |
| 25 | coordinate | `{"box":1658,"direction":"hi","value":"329993/500000","variable":"v"}` | `329993/500000 + -1 * v` |
| 26 | coordinate | `{"box":1658,"direction":"lo","value":"106501/1000000","variable":"a"}` | `-106501/1000000 + 1 * a` |
| 27 | coordinate | `{"box":1658,"direction":"lo","value":"105961/1000000","variable":"b"}` | `-105961/1000000 + 1 * b` |
| 28 | coordinate | `{"box":1658,"direction":"lo","value":"466489/1000000","variable":"r"}` | `-466489/1000000 + 1 * r` |
| 29 | coordinate | `{"box":1658,"direction":"lo","value":"399441/500000","variable":"j"}` | `-399441/500000 + 1 * j` |
| 30 | coordinate | `{"box":1658,"direction":"lo","value":"678149/1000000","variable":"k"}` | `-678149/1000000 + 1 * k` |
| 31 | coordinate | `{"box":1658,"direction":"lo","value":"275411/500000","variable":"c"}` | `-275411/500000 + 1 * c` |
| 32 | coordinate | `{"box":1658,"direction":"lo","value":"6657/62500","variable":"e"}` | `-6657/62500 + 1 * e` |
| 33 | coordinate | `{"box":1658,"direction":"lo","value":"6657/62500","variable":"f"}` | `-6657/62500 + 1 * f` |
| 34 | coordinate | `{"box":1658,"direction":"lo","value":"36693/50000","variable":"h"}` | `-36693/50000 + 1 * h` |
| 35 | coordinate | `{"box":1658,"direction":"lo","value":"199033/1000000","variable":"p"}` | `-199033/1000000 + 1 * p` |
| 36 | coordinate | `{"box":1658,"direction":"lo","value":"31793/100000","variable":"q"}` | `-31793/100000 + 1 * q` |
| 37 | coordinate | `{"box":1658,"direction":"lo","value":"407481/1000000","variable":"u"}` | `-407481/1000000 + 1 * u` |
| 38 | coordinate | `{"box":1658,"direction":"lo","value":"21127/100000","variable":"v"}` | `-21127/100000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 261450710000000 | 8 |
| 1 | 271820901000000 | 9 |
| 2 | 338066434000000 | 1 |
| 3 | 25078474000000 | 10 |
| 4 | 374563770000000 | 11 |
| 5 | 25078474000000 | 2 |
| 6 | 275495731000000 | 12 |
| 7 | 37366747000000 | 13 |
| 8 | 19073264000000 | 14 |
| 9 | 952731048000000 | 3 |
| 10 | 7510994000000 | 4 |
| 11 | 261450710000000 | 5 |
| 12 | 271820901000000 | 0 |
| 13 | 198297412000000 | 6 |
| 14 | 270001412000000 | 7 |
| 15 | 10370191000000 | 26, 35 |
| 16 | 275495731000000 | 27, 38 |
| 17 | 261450710000000 | 26, 37 |
| 18 | 609887335000000 | 17, 26 |
| 19 | 675137975000000 | 16, 30 |
| 20 | 338066434000000 | 15, 19 |
| 21 | 19073264000000 | 22, 31 |
| 22 | 19073264000000 | 31, 36 |
| 23 | 37366747000000 | 25, 31 |
| 24 | 319683321000000 | 28, 32 |
| 25 | 633047727000000 | 17, 20 |
| 26 | 952731048000000 | 19, 32 |
| 27 | 7510994000000 | 22, 33 |
| 28 | 25078474000000 | 33, 36 |
| 29 | 37366747000000 | 33, 38 |
| 30 | 7510994000000 | 18, 21 |
| 31 | 374563770000000 | 30, 33 |
| 32 | 19073264000000 | 34, 35 |
| 33 | 7510994000000 | 17, 22 |
| 34 | 14708283000000 | 30, 35 |
| 35 | 14708283000000 | 19, 36 |
| 36 | 342843713000000 | 17, 30 |
| 37 | 342843713000000 | 18, 19 |
| 38 | 14045021000000 | 30, 37 |
| 39 | 14045021000000 | 19, 38 |
| 40 | 2525361102 | 23 |
| 41 | 2084480095 | 27 |
| 42 | 2366949040 | 29 |
| 43 | 2632011839 | 37 |
| 44 | 1278894618 | 31 |
| 45 | 4711729969 | 32 |
| 46 | 954667056 | 28 |
| 47 | 451064755141430 | 30 |
| 48 | 642334140994638 | 18 |
| 49 | 3151525245 | 17 |
| 50 | 1022013187 | 15 |
| 51 | 3443046820 | 21 |
| 52 | 1672792921 | 38 |
| 53 | 1218537776 | 34 |
| 54 | 5021154304 | 24 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -61731266691066021951/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -61731266691066021951/1000000 | 1 | -61731266691066021951/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1658 | -61731266691066021951/1000000 |

## Stage 1659

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS+/PQR+/BQS+/EPQ+/BFP-/AEQ+/BQR+ |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS+/PQR+/BQS+/EPQ+/BFP-/AEQ+/BQR+:root |
| Index | 0 |
| Context | 389 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 606 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 104519/1000000 | 73609/250000 | 104519/1000000 | 73609/250000 |
| b | 51927/500000 | 6143/20000 | 51927/500000 | 6143/20000 |
| c | 135501/250000 | 496819/500000 | 135501/250000 | 496819/500000 |
| e | 104519/1000000 | 59/125 | 104519/1000000 | 59/125 |
| f | 104519/1000000 | 592449/1000000 | 104519/1000000 | 592449/1000000 |
| h | 797369/1000000 | 1 | 797369/1000000 | 1 |
| p | 197109/1000000 | 519559/1000000 | 197109/1000000 | 519559/1000000 |
| q | 383519/1000000 | 354017/500000 | 383519/1000000 | 354017/500000 |
| u | 76597/200000 | 907/1000 | 76597/200000 | 907/1000 |
| v | 197519/1000000 | 655653/1000000 | 197519/1000000 | 655653/1000000 |
| r | 810083/1000000 | 1 | 810083/1000000 | 1 |
| w | 416083/1000000 | 1 | 416083/1000000 | 1 |
| j | 312133/1000000 | 448073/500000 | 312133/1000000 | 448073/500000 |
| k | 383519/1000000 | 8033/8963 | 383519/1000000 | 8033/8963 |

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
