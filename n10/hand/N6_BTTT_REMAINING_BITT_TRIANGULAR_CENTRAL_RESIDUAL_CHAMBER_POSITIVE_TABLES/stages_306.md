# BITT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 1530

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS-/HQS+/CRS+/BFQ+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS-/HQS+/CRS+/BFQ+:HLL |
| Index | 0 |
| Context | 302 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1529 |
| Coordinate cut | r low 37799/50000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 20869/200000 | 6143/20000 | 20869/200000 | 6143/20000 |
| b | 51917/500000 | 282989/500000 | 51917/500000 | 282989/500000 |
| c | 693349/1000000 | 995083/1000000 | 693349/1000000 | 995083/1000000 |
| e | 104347/1000000 | 6143/20000 | 104347/1000000 | 6143/20000 |
| f | 279/1000 | 43031/62500 | 279/1000 | 43031/62500 |
| h | 605299/1000000 | 1 | 605299/1000000 | 1 |
| p | 146723/500000 | 305781/500000 | 146723/500000 | 305781/500000 |
| q | 12327/62500 | 594769/1000000 | 12327/62500 | 594769/1000000 |
| u | 175861/1000000 | 112021/200000 | 175861/1000000 | 112021/200000 |
| v | 513651/1000000 | 869121/1000000 | 513651/1000000 | 869121/1000000 |
| r | 148791/250000 | 37799/50000 | 148791/250000 | 37799/50000 |
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
| 0 | bound | `{"direction":"lo","ref":"516:904","triangle":"FQR","value":"122157/1000000"}` | `1 * u * w + -1 * u + -1 * f * w + -1 * v * r + 1 * f * v + 1 * r + -122157/1000000` |
| 1 | physical | `{"factor":104,"stage":516}` | `-1/1 * f * w + 1/1 * e * f + 1/1 * w + 1/1 * r + -1279/1000 + -1/1 * e * r` |
| 2 | physical | `{"factor":107,"stage":516}` | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 3 | physical | `{"factor":108,"stage":516}` | `1/1 * w + 1/1 * h * r + -1/1 * h + -1/1 * e * r + -13857/20000` |
| 4 | physical | `{"factor":118,"stage":516}` | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 5 | physical | `{"factor":137,"stage":516}` | `1/1 * e + -1/1 * a` |
| 6 | physical | `{"factor":36,"stage":516}` | `-1/1 * f * v + 1/1 * a * f + 1/1 * u + -1/1 * a * u + -93/1000` |
| 7 | physical | `{"factor":65,"stage":516}` | `1/1 * f * v + -1/1 * b * v + -1/1 * u + 1/1 * b + -93/1000` |
| 8 | physical | `{"factor":71,"stage":516}` | `1/1 * b * k + 1/1 * h * j + -1/1 * b * h + -13857/20000` |
| 9 | physical | `{"factor":82,"stage":516}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 10 | physical | `{"factor":98,"stage":516}` | `1/1 * r * k + -1/1 * c * k + -1/1 * w * j + 1/1 * c * w + -93/1000` |
| 11 | coordinate | `{"box":1530,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 12 | coordinate | `{"box":1530,"direction":"hi","value":"282989/500000","variable":"b"}` | `282989/500000 + -1 * b` |
| 13 | coordinate | `{"box":1530,"direction":"hi","value":"37799/50000","variable":"r"}` | `37799/50000 + -1 * r` |
| 14 | coordinate | `{"box":1530,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 15 | coordinate | `{"box":1530,"direction":"hi","value":"448083/500000","variable":"j"}` | `448083/500000 + -1 * j` |
| 16 | coordinate | `{"box":1530,"direction":"hi","value":"98121/125000","variable":"k"}` | `98121/125000 + -1 * k` |
| 17 | coordinate | `{"box":1530,"direction":"hi","value":"995083/1000000","variable":"c"}` | `995083/1000000 + -1 * c` |
| 18 | coordinate | `{"box":1530,"direction":"hi","value":"6143/20000","variable":"e"}` | `6143/20000 + -1 * e` |
| 19 | coordinate | `{"box":1530,"direction":"hi","value":"43031/62500","variable":"f"}` | `43031/62500 + -1 * f` |
| 20 | coordinate | `{"box":1530,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 21 | coordinate | `{"box":1530,"direction":"hi","value":"869121/1000000","variable":"v"}` | `869121/1000000 + -1 * v` |
| 22 | coordinate | `{"box":1530,"direction":"lo","value":"20869/200000","variable":"a"}` | `-20869/200000 + 1 * a` |
| 23 | coordinate | `{"box":1530,"direction":"lo","value":"51917/500000","variable":"b"}` | `-51917/500000 + 1 * b` |
| 24 | coordinate | `{"box":1530,"direction":"lo","value":"797197/1000000","variable":"w"}` | `-797197/1000000 + 1 * w` |
| 25 | coordinate | `{"box":1530,"direction":"lo","value":"706243/1000000","variable":"j"}` | `-706243/1000000 + 1 * j` |
| 26 | coordinate | `{"box":1530,"direction":"lo","value":"482391/1000000","variable":"k"}` | `-482391/1000000 + 1 * k` |
| 27 | coordinate | `{"box":1530,"direction":"lo","value":"693349/1000000","variable":"c"}` | `-693349/1000000 + 1 * c` |
| 28 | coordinate | `{"box":1530,"direction":"lo","value":"104347/1000000","variable":"e"}` | `-104347/1000000 + 1 * e` |
| 29 | coordinate | `{"box":1530,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 30 | coordinate | `{"box":1530,"direction":"lo","value":"605299/1000000","variable":"h"}` | `-605299/1000000 + 1 * h` |
| 31 | coordinate | `{"box":1530,"direction":"lo","value":"175861/1000000","variable":"u"}` | `-175861/1000000 + 1 * u` |
| 32 | coordinate | `{"box":1530,"direction":"lo","value":"513651/1000000","variable":"v"}` | `-513651/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 29478000000 | 6 |
| 1 | 29267000000 | 7 |
| 2 | 73290000000 | 8 |
| 3 | 17596000000 | 9 |
| 4 | 73290000000 | 10 |
| 5 | 3198000000 | 1 |
| 6 | 3198000000 | 2 |
| 7 | 24525000000 | 3 |
| 8 | 23158000000 | 4 |
| 9 | 211000000 | 0 |
| 10 | 15111000000 | 5 |
| 11 | 29478000000 | 19, 22 |
| 12 | 20311000000 | 23, 30 |
| 13 | 52979000000 | 12, 20 |
| 14 | 29267000000 | 23, 32 |
| 15 | 29478000000 | 22, 31 |
| 16 | 51838000000 | 16, 23 |
| 17 | 21452000000 | 12, 26 |
| 18 | 17596000000 | 17, 28 |
| 19 | 55694000000 | 14, 27 |
| 20 | 73290000000 | 16, 17 |
| 21 | 3198000000 | 19, 28 |
| 22 | 3198000000 | 28, 31 |
| 23 | 45319000000 | 13, 18 |
| 24 | 23158000000 | 20, 29 |
| 25 | 26568000000 | 14, 19 |
| 26 | 3198000000 | 20, 31 |
| 27 | 1367000000 | 13, 30 |
| 28 | 73290000000 | 20, 25 |
| 29 | 73290000000 | 13, 26 |
| 30 | 73290000000 | 14, 15 |
| 31 | 211000000 | 14, 31 |
| 32 | 211000000 | 13, 21 |
| 33 | 583616 | 31 |
| 34 | 171110 | 12 |
| 35 | 481991 | 24 |
| 36 | 1000000 | 19, 24 |
| 37 | 797197 | 19 |
| 38 | 688496 | 14 |
| 39 | 48645764742 | 13 |
| 40 | 421458 | 32 |
| 41 | 538772 | 20 |
| 42 | 370422 | 28 |
| 43 | 454530 | 11 |
| 44 | 416384 | 29 |
| 45 | 48078 | 16 |
| 46 | 214908 | 27 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -5220937907286447/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -5220937907286447/1000000 | 1 | -5220937907286447/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1530 | -5220937907286447/1000000 |

## Stage 1531

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS-/HQS+/CRS+/BFQ+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS-/HQS+/CRS+/BFQ+:HLH |
| Index | 0 |
| Context | 302 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1529 |
| Coordinate cut | r high 37799/50000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 20869/200000 | 6143/20000 | 20869/200000 | 6143/20000 |
| b | 51917/500000 | 282989/500000 | 51917/500000 | 282989/500000 |
| c | 693349/1000000 | 995083/1000000 | 693349/1000000 | 995083/1000000 |
| e | 104347/1000000 | 6143/20000 | 104347/1000000 | 6143/20000 |
| f | 279/1000 | 43031/62500 | 279/1000 | 43031/62500 |
| h | 605299/1000000 | 1 | 605299/1000000 | 1 |
| p | 146723/500000 | 305781/500000 | 146723/500000 | 305781/500000 |
| q | 12327/62500 | 594769/1000000 | 12327/62500 | 594769/1000000 |
| u | 175861/1000000 | 112021/200000 | 175861/1000000 | 112021/200000 |
| v | 513651/1000000 | 869121/1000000 | 513651/1000000 | 869121/1000000 |
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


## Stage 1532

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS-/HQS+/CRS+/BFQ+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS-/HQS+/CRS+/BFQ+:HLHL |
| Index | 0 |
| Context | 302 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1531 |
| Coordinate cut | b low 20269/100000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 20869/200000 | 6143/20000 | 20869/200000 | 6143/20000 |
| b | 51917/500000 | 20269/100000 | 51917/500000 | 20269/100000 |
| c | 693349/1000000 | 995083/1000000 | 693349/1000000 | 995083/1000000 |
| e | 104347/1000000 | 6143/20000 | 104347/1000000 | 6143/20000 |
| f | 279/1000 | 43031/62500 | 279/1000 | 43031/62500 |
| h | 605299/1000000 | 1 | 605299/1000000 | 1 |
| p | 146723/500000 | 305781/500000 | 146723/500000 | 305781/500000 |
| q | 12327/62500 | 594769/1000000 | 12327/62500 | 594769/1000000 |
| u | 175861/1000000 | 112021/200000 | 175861/1000000 | 112021/200000 |
| v | 513651/1000000 | 869121/1000000 | 513651/1000000 | 869121/1000000 |
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
| 0 | bound | `{"direction":"lo","ref":"516:1135","triangle":"ABF","value":"79157/250000"}` | `1 * b + -1 * a * b + 1 * a * f + -79157/250000` |
| 1 | physical | `{"factor":107,"stage":516}` | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 2 | physical | `{"factor":115,"stage":516}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 3 | physical | `{"factor":134,"stage":516}` | `-1/1 * r * k + 1/1 * q * r + 1/1 * p * k + 1/1 * w * j + -1/1 * p * w + -1/1 * q * j + -93/1000` |
| 4 | physical | `{"factor":137,"stage":516}` | `1/1 * e + -1/1 * a` |
| 5 | physical | `{"factor":36,"stage":516}` | `-1/1 * f * v + 1/1 * a * f + 1/1 * u + -1/1 * a * u + -93/1000` |
| 6 | physical | `{"factor":64,"stage":516}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 7 | physical | `{"factor":65,"stage":516}` | `1/1 * f * v + -1/1 * b * v + -1/1 * u + 1/1 * b + -93/1000` |
| 8 | physical | `{"factor":71,"stage":516}` | `1/1 * b * k + 1/1 * h * j + -1/1 * b * h + -13857/20000` |
| 9 | physical | `{"factor":76,"stage":516}` | `-1/1 * r * k + 1/1 * b * k + 1/1 * w * j + -1/1 * b * w + -93/1000` |
| 10 | coordinate | `{"box":1532,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 11 | coordinate | `{"box":1532,"direction":"hi","value":"20269/100000","variable":"b"}` | `20269/100000 + -1 * b` |
| 12 | coordinate | `{"box":1532,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 13 | coordinate | `{"box":1532,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 14 | coordinate | `{"box":1532,"direction":"hi","value":"448083/500000","variable":"j"}` | `448083/500000 + -1 * j` |
| 15 | coordinate | `{"box":1532,"direction":"hi","value":"98121/125000","variable":"k"}` | `98121/125000 + -1 * k` |
| 16 | coordinate | `{"box":1532,"direction":"hi","value":"6143/20000","variable":"e"}` | `6143/20000 + -1 * e` |
| 17 | coordinate | `{"box":1532,"direction":"hi","value":"43031/62500","variable":"f"}` | `43031/62500 + -1 * f` |
| 18 | coordinate | `{"box":1532,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 19 | coordinate | `{"box":1532,"direction":"hi","value":"305781/500000","variable":"p"}` | `305781/500000 + -1 * p` |
| 20 | coordinate | `{"box":1532,"direction":"hi","value":"594769/1000000","variable":"q"}` | `594769/1000000 + -1 * q` |
| 21 | coordinate | `{"box":1532,"direction":"hi","value":"112021/200000","variable":"u"}` | `112021/200000 + -1 * u` |
| 22 | coordinate | `{"box":1532,"direction":"hi","value":"869121/1000000","variable":"v"}` | `869121/1000000 + -1 * v` |
| 23 | coordinate | `{"box":1532,"direction":"lo","value":"20869/200000","variable":"a"}` | `-20869/200000 + 1 * a` |
| 24 | coordinate | `{"box":1532,"direction":"lo","value":"51917/500000","variable":"b"}` | `-51917/500000 + 1 * b` |
| 25 | coordinate | `{"box":1532,"direction":"lo","value":"37799/50000","variable":"r"}` | `-37799/50000 + 1 * r` |
| 26 | coordinate | `{"box":1532,"direction":"lo","value":"482391/1000000","variable":"k"}` | `-482391/1000000 + 1 * k` |
| 27 | coordinate | `{"box":1532,"direction":"lo","value":"104347/1000000","variable":"e"}` | `-104347/1000000 + 1 * e` |
| 28 | coordinate | `{"box":1532,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 29 | coordinate | `{"box":1532,"direction":"lo","value":"605299/1000000","variable":"h"}` | `-605299/1000000 + 1 * h` |
| 30 | coordinate | `{"box":1532,"direction":"lo","value":"146723/500000","variable":"p"}` | `-146723/500000 + 1 * p` |
| 31 | coordinate | `{"box":1532,"direction":"lo","value":"12327/62500","variable":"q"}` | `-12327/62500 + 1 * q` |
| 32 | coordinate | `{"box":1532,"direction":"lo","value":"175861/1000000","variable":"u"}` | `-175861/1000000 + 1 * u` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 11022000000 | 0 |
| 1 | 118734000000 | 5 |
| 2 | 2165000000 | 6 |
| 3 | 103924000000 | 7 |
| 4 | 37151000000 | 8 |
| 5 | 523000000 | 9 |
| 6 | 31261000000 | 1 |
| 7 | 17822000000 | 2 |
| 8 | 10068000000 | 3 |
| 9 | 19360000000 | 4 |
| 10 | 11022000000 | 10, 11 |
| 11 | 126730000000 | 17, 23 |
| 12 | 3026000000 | 10, 28 |
| 13 | 37151000000 | 11, 18 |
| 14 | 2165000000 | 11, 31 |
| 15 | 103924000000 | 11, 22 |
| 16 | 118734000000 | 10, 21 |
| 17 | 523000000 | 11, 13 |
| 18 | 37674000000 | 11, 26 |
| 19 | 31261000000 | 16, 21 |
| 20 | 17822000000 | 12, 16 |
| 21 | 17822000000 | 14, 27 |
| 22 | 16000000 | 28, 31 |
| 23 | 2149000000 | 17, 20 |
| 24 | 14810000000 | 17, 22 |
| 25 | 31261000000 | 18, 32 |
| 26 | 37151000000 | 14, 29 |
| 27 | 10068000000 | 13, 19 |
| 28 | 10068000000 | 12, 31 |
| 29 | 7231000000 | 12, 26 |
| 30 | 7231000000 | 13, 14 |
| 31 | 10068000000 | 15, 30 |
| 32 | 10068000000 | 14, 20 |
| 33 | 332290 | 24 |
| 34 | 35750 | 21 |
| 35 | 197232 | 28 |
| 36 | 279000 | 31 |
| 37 | 57824 | 19 |
| 38 | 18680 | 22 |
| 39 | 82403 | 29 |
| 40 | 442612 | 26 |
| 41 | 5078610568 | 13 |
| 42 | 28047 | 16 |
| 43 | 204170 | 23 |
| 44 | 278679 | 17 |
| 45 | 461658 | 20 |
| 46 | 126203 | 25 |
| 47 | 11128001091 | 14 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -3225433951425903/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -3225433951425903/1000000 | 1 | -3225433951425903/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1532 | -3225433951425903/1000000 |

## Stage 1533

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS-/HQS+/CRS+/BFQ+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS-/HQS+/CRS+/BFQ+:HLHH |
| Index | 0 |
| Context | 302 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1531 |
| Coordinate cut | b high 20269/100000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 20869/200000 | 6143/20000 | 20869/200000 | 6143/20000 |
| b | 20269/100000 | 282989/500000 | 20269/100000 | 282989/500000 |
| c | 693349/1000000 | 995083/1000000 | 693349/1000000 | 995083/1000000 |
| e | 104347/1000000 | 6143/20000 | 104347/1000000 | 6143/20000 |
| f | 279/1000 | 43031/62500 | 279/1000 | 43031/62500 |
| h | 605299/1000000 | 1 | 605299/1000000 | 1 |
| p | 146723/500000 | 305781/500000 | 146723/500000 | 305781/500000 |
| q | 12327/62500 | 594769/1000000 | 12327/62500 | 594769/1000000 |
| u | 175861/1000000 | 112021/200000 | 175861/1000000 | 112021/200000 |
| v | 513651/1000000 | 869121/1000000 | 513651/1000000 | 869121/1000000 |
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


## Stage 1534

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS-/HQS+/CRS+/BFQ+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS-/HQS+/CRS+/BFQ+:HLHHL |
| Index | 0 |
| Context | 302 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1533 |
| Coordinate cut | h low 22673/31250 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 20869/200000 | 6143/20000 | 20869/200000 | 6143/20000 |
| b | 20269/100000 | 282989/500000 | 20269/100000 | 282989/500000 |
| c | 693349/1000000 | 995083/1000000 | 693349/1000000 | 995083/1000000 |
| e | 104347/1000000 | 6143/20000 | 104347/1000000 | 6143/20000 |
| f | 279/1000 | 43031/62500 | 279/1000 | 43031/62500 |
| h | 605299/1000000 | 22673/31250 | 605299/1000000 | 22673/31250 |
| p | 146723/500000 | 305781/500000 | 146723/500000 | 305781/500000 |
| q | 12327/62500 | 594769/1000000 | 12327/62500 | 594769/1000000 |
| u | 175861/1000000 | 112021/200000 | 175861/1000000 | 112021/200000 |
| v | 513651/1000000 | 869121/1000000 | 513651/1000000 | 869121/1000000 |
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
| 1 | physical | `{"factor":115,"stage":516}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 2 | physical | `{"factor":134,"stage":516}` | `-1/1 * r * k + 1/1 * q * r + 1/1 * p * k + 1/1 * w * j + -1/1 * p * w + -1/1 * q * j + -93/1000` |
| 3 | physical | `{"factor":139,"stage":516}` | `1/1 * f + -1/1 * b` |
| 4 | physical | `{"factor":64,"stage":516}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 5 | physical | `{"factor":71,"stage":516}` | `1/1 * b * k + 1/1 * h * j + -1/1 * b * h + -13857/20000` |
| 6 | physical | `{"factor":73,"stage":516}` | `-1/1 * p * k + 1/1 * b * k + 1/1 * q * j + -1/1 * b * q + -93/1000` |
| 7 | physical | `{"factor":76,"stage":516}` | `-1/1 * r * k + 1/1 * b * k + 1/1 * w * j + -1/1 * b * w + -93/1000` |
| 8 | physical | `{"factor":83,"stage":516}` | `1/1 * k + -1/1 * c * k + -1/1 * e * j + 1/1 * c * e + -93/1000` |
| 9 | physical | `{"factor":89,"stage":516}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 10 | physical | `{"factor":98,"stage":516}` | `1/1 * r * k + -1/1 * c * k + -1/1 * w * j + 1/1 * c * w + -93/1000` |
| 11 | coordinate | `{"box":1534,"direction":"hi","value":"282989/500000","variable":"b"}` | `282989/500000 + -1 * b` |
| 12 | coordinate | `{"box":1534,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 13 | coordinate | `{"box":1534,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 14 | coordinate | `{"box":1534,"direction":"hi","value":"448083/500000","variable":"j"}` | `448083/500000 + -1 * j` |
| 15 | coordinate | `{"box":1534,"direction":"hi","value":"98121/125000","variable":"k"}` | `98121/125000 + -1 * k` |
| 16 | coordinate | `{"box":1534,"direction":"hi","value":"995083/1000000","variable":"c"}` | `995083/1000000 + -1 * c` |
| 17 | coordinate | `{"box":1534,"direction":"hi","value":"6143/20000","variable":"e"}` | `6143/20000 + -1 * e` |
| 18 | coordinate | `{"box":1534,"direction":"hi","value":"43031/62500","variable":"f"}` | `43031/62500 + -1 * f` |
| 19 | coordinate | `{"box":1534,"direction":"hi","value":"22673/31250","variable":"h"}` | `22673/31250 + -1 * h` |
| 20 | coordinate | `{"box":1534,"direction":"hi","value":"305781/500000","variable":"p"}` | `305781/500000 + -1 * p` |
| 21 | coordinate | `{"box":1534,"direction":"hi","value":"594769/1000000","variable":"q"}` | `594769/1000000 + -1 * q` |
| 22 | coordinate | `{"box":1534,"direction":"lo","value":"20269/100000","variable":"b"}` | `-20269/100000 + 1 * b` |
| 23 | coordinate | `{"box":1534,"direction":"lo","value":"37799/50000","variable":"r"}` | `-37799/50000 + 1 * r` |
| 24 | coordinate | `{"box":1534,"direction":"lo","value":"706243/1000000","variable":"j"}` | `-706243/1000000 + 1 * j` |
| 25 | coordinate | `{"box":1534,"direction":"lo","value":"482391/1000000","variable":"k"}` | `-482391/1000000 + 1 * k` |
| 26 | coordinate | `{"box":1534,"direction":"lo","value":"693349/1000000","variable":"c"}` | `-693349/1000000 + 1 * c` |
| 27 | coordinate | `{"box":1534,"direction":"lo","value":"104347/1000000","variable":"e"}` | `-104347/1000000 + 1 * e` |
| 28 | coordinate | `{"box":1534,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 29 | coordinate | `{"box":1534,"direction":"lo","value":"605299/1000000","variable":"h"}` | `-605299/1000000 + 1 * h` |
| 30 | coordinate | `{"box":1534,"direction":"lo","value":"146723/500000","variable":"p"}` | `-146723/500000 + 1 * p` |
| 31 | coordinate | `{"box":1534,"direction":"lo","value":"12327/62500","variable":"q"}` | `-12327/62500 + 1 * q` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 831000000 | 0 |
| 1 | 1455000000 | 4 |
| 2 | 183616000000 | 5 |
| 3 | 624000000 | 6 |
| 4 | 44924000000 | 7 |
| 5 | 13075000000 | 8 |
| 6 | 1146000000 | 9 |
| 7 | 37809000000 | 10 |
| 8 | 12456000000 | 1 |
| 9 | 624000000 | 2 |
| 10 | 287000000 | 3 |
| 11 | 183616000000 | 11, 19 |
| 12 | 44924000000 | 11, 13 |
| 13 | 229164000000 | 15, 22 |
| 14 | 13075000000 | 16, 27 |
| 15 | 1146000000 | 19, 26 |
| 16 | 315000000 | 26, 31 |
| 17 | 37809000000 | 13, 26 |
| 18 | 50885000000 | 15, 16 |
| 19 | 12456000000 | 12, 17 |
| 20 | 619000000 | 14, 17 |
| 21 | 1455000000 | 28, 31 |
| 22 | 1146000000 | 19, 20 |
| 23 | 115859000000 | 14, 29 |
| 24 | 624000000 | 13, 20 |
| 25 | 624000000 | 12, 31 |
| 26 | 4717000000 | 15, 23 |
| 27 | 4717000000 | 13, 14 |
| 28 | 423479 | 26 |
| 29 | 693349 | 31 |
| 30 | 464256 | 30 |
| 31 | 388576 | 11 |
| 32 | 67757000000 | 19, 24 |
| 33 | 47852914999 | 19 |
| 34 | 114382353743 | 14 |
| 35 | 589635 | 25 |
| 36 | 1000000 | 16, 25 |
| 37 | 482391 | 16 |
| 38 | 995083 | 15 |
| 39 | 8636006959 | 13 |
| 40 | 27440 | 18 |
| 41 | 16529 | 27 |
| 42 | 343414 | 21 |
| 43 | 93576 | 23 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -897993456425953/125000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -897993456425953/125000 | 1 | -897993456425953/125000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1534 | -897993456425953/125000 |
