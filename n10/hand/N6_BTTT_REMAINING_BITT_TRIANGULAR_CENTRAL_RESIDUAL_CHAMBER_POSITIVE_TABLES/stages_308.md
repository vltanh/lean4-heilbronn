# BITT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 1540

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS-/HQS+/CRS+/BFQ+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS-/HQS+/CRS+/BFQ+:HLHHHHLLL |
| Index | 0 |
| Context | 302 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1539 |
| Coordinate cut | f low 197713/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 20869/200000 | 6143/20000 | 20869/200000 | 6143/20000 |
| b | 20269/100000 | 282989/500000 | 20269/100000 | 282989/500000 |
| c | 693349/1000000 | 995083/1000000 | 693349/1000000 | 995083/1000000 |
| e | 104347/1000000 | 6143/20000 | 104347/1000000 | 6143/20000 |
| f | 279/1000 | 197713/500000 | 279/1000 | 197713/500000 |
| h | 22673/31250 | 1 | 22673/31250 | 1 |
| p | 146723/500000 | 305781/500000 | 146723/500000 | 305781/500000 |
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
| 1 | physical | `{"factor":107,"stage":516}` | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 2 | physical | `{"factor":130,"stage":516}` | `1/1 * u * k + -1/1 * h * u + -1/1 * v * j + 1/1 * h * j + -93/1000` |
| 3 | physical | `{"factor":134,"stage":516}` | `-1/1 * r * k + 1/1 * q * r + 1/1 * p * k + 1/1 * w * j + -1/1 * p * w + -1/1 * q * j + -93/1000` |
| 4 | physical | `{"factor":137,"stage":516}` | `1/1 * e + -1/1 * a` |
| 5 | physical | `{"factor":139,"stage":516}` | `1/1 * f + -1/1 * b` |
| 6 | physical | `{"factor":36,"stage":516}` | `-1/1 * f * v + 1/1 * a * f + 1/1 * u + -1/1 * a * u + -93/1000` |
| 7 | physical | `{"factor":46,"stage":516}` | `1/1 * c * e + -1/1 * b * e + -93/1000` |
| 8 | physical | `{"factor":64,"stage":516}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 9 | physical | `{"factor":65,"stage":516}` | `1/1 * f * v + -1/1 * b * v + -1/1 * u + 1/1 * b + -93/1000` |
| 10 | physical | `{"factor":71,"stage":516}` | `1/1 * b * k + 1/1 * h * j + -1/1 * b * h + -13857/20000` |
| 11 | physical | `{"factor":73,"stage":516}` | `-1/1 * p * k + 1/1 * b * k + 1/1 * q * j + -1/1 * b * q + -93/1000` |
| 12 | physical | `{"factor":83,"stage":516}` | `1/1 * k + -1/1 * c * k + -1/1 * e * j + 1/1 * c * e + -93/1000` |
| 13 | physical | `{"factor":89,"stage":516}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 14 | physical | `{"factor":98,"stage":516}` | `1/1 * r * k + -1/1 * c * k + -1/1 * w * j + 1/1 * c * w + -93/1000` |
| 15 | coordinate | `{"box":1540,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 16 | coordinate | `{"box":1540,"direction":"hi","value":"282989/500000","variable":"b"}` | `282989/500000 + -1 * b` |
| 17 | coordinate | `{"box":1540,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 18 | coordinate | `{"box":1540,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 19 | coordinate | `{"box":1540,"direction":"hi","value":"448083/500000","variable":"j"}` | `448083/500000 + -1 * j` |
| 20 | coordinate | `{"box":1540,"direction":"hi","value":"98121/125000","variable":"k"}` | `98121/125000 + -1 * k` |
| 21 | coordinate | `{"box":1540,"direction":"hi","value":"995083/1000000","variable":"c"}` | `995083/1000000 + -1 * c` |
| 22 | coordinate | `{"box":1540,"direction":"hi","value":"6143/20000","variable":"e"}` | `6143/20000 + -1 * e` |
| 23 | coordinate | `{"box":1540,"direction":"hi","value":"197713/500000","variable":"f"}` | `197713/500000 + -1 * f` |
| 24 | coordinate | `{"box":1540,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 25 | coordinate | `{"box":1540,"direction":"hi","value":"305781/500000","variable":"p"}` | `305781/500000 + -1 * p` |
| 26 | coordinate | `{"box":1540,"direction":"hi","value":"444499/1000000","variable":"q"}` | `444499/1000000 + -1 * q` |
| 27 | coordinate | `{"box":1540,"direction":"hi","value":"191619/250000","variable":"v"}` | `191619/250000 + -1 * v` |
| 28 | coordinate | `{"box":1540,"direction":"lo","value":"20869/200000","variable":"a"}` | `-20869/200000 + 1 * a` |
| 29 | coordinate | `{"box":1540,"direction":"lo","value":"20269/100000","variable":"b"}` | `-20269/100000 + 1 * b` |
| 30 | coordinate | `{"box":1540,"direction":"lo","value":"706243/1000000","variable":"j"}` | `-706243/1000000 + 1 * j` |
| 31 | coordinate | `{"box":1540,"direction":"lo","value":"482391/1000000","variable":"k"}` | `-482391/1000000 + 1 * k` |
| 32 | coordinate | `{"box":1540,"direction":"lo","value":"693349/1000000","variable":"c"}` | `-693349/1000000 + 1 * c` |
| 33 | coordinate | `{"box":1540,"direction":"lo","value":"104347/1000000","variable":"e"}` | `-104347/1000000 + 1 * e` |
| 34 | coordinate | `{"box":1540,"direction":"lo","value":"22673/31250","variable":"h"}` | `-22673/31250 + 1 * h` |
| 35 | coordinate | `{"box":1540,"direction":"lo","value":"146723/500000","variable":"p"}` | `-146723/500000 + 1 * p` |
| 36 | coordinate | `{"box":1540,"direction":"lo","value":"12327/62500","variable":"q"}` | `-12327/62500 + 1 * q` |
| 37 | coordinate | `{"box":1540,"direction":"lo","value":"72761/250000","variable":"u"}` | `-72761/250000 + 1 * u` |
| 38 | coordinate | `{"box":1540,"direction":"lo","value":"513651/1000000","variable":"v"}` | `-513651/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 34528000000 | 6 |
| 1 | 13783000000 | 7 |
| 2 | 12332000000 | 0 |
| 3 | 28077000000 | 8 |
| 4 | 74931000000 | 9 |
| 5 | 11333000000 | 10 |
| 6 | 15744000000 | 11 |
| 7 | 22160000000 | 12 |
| 8 | 16997000000 | 13 |
| 9 | 15744000000 | 14 |
| 10 | 57439000000 | 1 |
| 11 | 34599000000 | 2 |
| 12 | 15744000000 | 3 |
| 13 | 3604000000 | 4 |
| 14 | 1016000000 | 5 |
| 15 | 13783000000 | 29, 33 |
| 16 | 34528000000 | 23, 28 |
| 17 | 11333000000 | 29, 34 |
| 18 | 74931000000 | 16, 27 |
| 19 | 34528000000 | 28, 37 |
| 20 | 27078000000 | 20, 29 |
| 21 | 35943000000 | 21, 33 |
| 22 | 16997000000 | 21, 34 |
| 23 | 4665000000 | 21, 26 |
| 24 | 15744000000 | 18, 32 |
| 25 | 37904000000 | 20, 21 |
| 26 | 57439000000 | 33, 37 |
| 27 | 22160000000 | 19, 22 |
| 28 | 28077000000 | 23, 26 |
| 29 | 40403000000 | 23, 38 |
| 30 | 16997000000 | 34, 35 |
| 31 | 22840000000 | 24, 37 |
| 32 | 45932000000 | 19, 34 |
| 33 | 15744000000 | 18, 25 |
| 34 | 15744000000 | 17, 36 |
| 35 | 34599000000 | 20, 37 |
| 36 | 34599000000 | 19, 27 |
| 37 | 303661 | 37 |
| 38 | 104347 | 21 |
| 39 | 995083 | 22 |
| 40 | 1000000 | 16, 36 |
| 41 | 197232 | 16 |
| 42 | 565978 | 26 |
| 43 | 1064608 | 25 |
| 44 | 646232 | 29 |
| 45 | 1000000 | 29, 31 |
| 46 | 202690 | 31 |
| 47 | 645144 | 20 |
| 48 | 348274 | 38 |
| 49 | 220009 | 34 |
| 50 | 717960 | 33 |
| 51 | 101696 | 15 |
| 52 | 12891667090 | 23 |
| 53 | 639641 | 32 |
| 54 | 437997 | 36 |
| 55 | 1287654528 | 18 |
| 56 | 427572 | 30 |
| 57 | 3105220608 | 17 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -1033564431998121/500000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -1033564431998121/500000 | 1 | -1033564431998121/500000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1540 | -1033564431998121/500000 |

## Stage 1541

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS-/HQS+/CRS+/BFQ+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS-/HQS+/CRS+/BFQ+:HLHHHHLLH |
| Index | 0 |
| Context | 302 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1539 |
| Coordinate cut | f high 197713/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 20869/200000 | 6143/20000 | 20869/200000 | 6143/20000 |
| b | 20269/100000 | 282989/500000 | 20269/100000 | 282989/500000 |
| c | 693349/1000000 | 995083/1000000 | 693349/1000000 | 995083/1000000 |
| e | 104347/1000000 | 6143/20000 | 104347/1000000 | 6143/20000 |
| f | 197713/500000 | 43031/62500 | 197713/500000 | 43031/62500 |
| h | 22673/31250 | 1 | 22673/31250 | 1 |
| p | 146723/500000 | 305781/500000 | 146723/500000 | 305781/500000 |
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


## Stage 1542

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS-/HQS+/CRS+/BFQ+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS-/HQS+/CRS+/BFQ+:HLHHHHLLHL |
| Index | 0 |
| Context | 302 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1541 |
| Coordinate cut | p low 205967/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 20869/200000 | 6143/20000 | 20869/200000 | 6143/20000 |
| b | 20269/100000 | 282989/500000 | 20269/100000 | 282989/500000 |
| c | 693349/1000000 | 995083/1000000 | 693349/1000000 | 995083/1000000 |
| e | 104347/1000000 | 6143/20000 | 104347/1000000 | 6143/20000 |
| f | 197713/500000 | 43031/62500 | 197713/500000 | 43031/62500 |
| h | 22673/31250 | 1 | 22673/31250 | 1 |
| p | 146723/500000 | 205967/500000 | 146723/500000 | 205967/500000 |
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
| 0 | physical | `{"factor":107,"stage":516}` | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 1 | physical | `{"factor":120,"stage":516}` | `-1/1 * p * v + 1/1 * p + 1/1 * f * v + 1/1 * q * u + -1/1 * f * q + -1/1 * u + -93/1000` |
| 2 | physical | `{"factor":137,"stage":516}` | `1/1 * e + -1/1 * a` |
| 3 | physical | `{"factor":28,"stage":516}` | `1/1 * q + -1/1 * a + -1/1 * e * p + 1/1 * a * p + -93/1000` |
| 4 | physical | `{"factor":36,"stage":516}` | `-1/1 * f * v + 1/1 * a * f + 1/1 * u + -1/1 * a * u + -93/1000` |
| 5 | physical | `{"factor":65,"stage":516}` | `1/1 * f * v + -1/1 * b * v + -1/1 * u + 1/1 * b + -93/1000` |
| 6 | physical | `{"factor":71,"stage":516}` | `1/1 * b * k + 1/1 * h * j + -1/1 * b * h + -13857/20000` |
| 7 | physical | `{"factor":72,"stage":516}` | `1/1 * p * v + -1/1 * b * v + -1/1 * q * u + 1/1 * b * q + -93/1000` |
| 8 | physical | `{"factor":73,"stage":516}` | `-1/1 * p * k + 1/1 * b * k + 1/1 * q * j + -1/1 * b * q + -93/1000` |
| 9 | coordinate | `{"box":1542,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 10 | coordinate | `{"box":1542,"direction":"hi","value":"282989/500000","variable":"b"}` | `282989/500000 + -1 * b` |
| 11 | coordinate | `{"box":1542,"direction":"hi","value":"448083/500000","variable":"j"}` | `448083/500000 + -1 * j` |
| 12 | coordinate | `{"box":1542,"direction":"hi","value":"98121/125000","variable":"k"}` | `98121/125000 + -1 * k` |
| 13 | coordinate | `{"box":1542,"direction":"hi","value":"6143/20000","variable":"e"}` | `6143/20000 + -1 * e` |
| 14 | coordinate | `{"box":1542,"direction":"hi","value":"43031/62500","variable":"f"}` | `43031/62500 + -1 * f` |
| 15 | coordinate | `{"box":1542,"direction":"hi","value":"205967/500000","variable":"p"}` | `205967/500000 + -1 * p` |
| 16 | coordinate | `{"box":1542,"direction":"hi","value":"444499/1000000","variable":"q"}` | `444499/1000000 + -1 * q` |
| 17 | coordinate | `{"box":1542,"direction":"hi","value":"112021/200000","variable":"u"}` | `112021/200000 + -1 * u` |
| 18 | coordinate | `{"box":1542,"direction":"hi","value":"191619/250000","variable":"v"}` | `191619/250000 + -1 * v` |
| 19 | coordinate | `{"box":1542,"direction":"lo","value":"20869/200000","variable":"a"}` | `-20869/200000 + 1 * a` |
| 20 | coordinate | `{"box":1542,"direction":"lo","value":"20269/100000","variable":"b"}` | `-20269/100000 + 1 * b` |
| 21 | coordinate | `{"box":1542,"direction":"lo","value":"482391/1000000","variable":"k"}` | `-482391/1000000 + 1 * k` |
| 22 | coordinate | `{"box":1542,"direction":"lo","value":"104347/1000000","variable":"e"}` | `-104347/1000000 + 1 * e` |
| 23 | coordinate | `{"box":1542,"direction":"lo","value":"197713/500000","variable":"f"}` | `-197713/500000 + 1 * f` |
| 24 | coordinate | `{"box":1542,"direction":"lo","value":"22673/31250","variable":"h"}` | `-22673/31250 + 1 * h` |
| 25 | coordinate | `{"box":1542,"direction":"lo","value":"12327/62500","variable":"q"}` | `-12327/62500 + 1 * q` |
| 26 | coordinate | `{"box":1542,"direction":"lo","value":"72761/250000","variable":"u"}` | `-72761/250000 + 1 * u` |
| 27 | coordinate | `{"box":1542,"direction":"lo","value":"513651/1000000","variable":"v"}` | `-513651/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 15921000000 | 3 |
| 1 | 99834000000 | 4 |
| 2 | 3997000000 | 5 |
| 3 | 12326000000 | 6 |
| 4 | 97491000000 | 7 |
| 5 | 11940000000 | 8 |
| 6 | 19432000000 | 0 |
| 7 | 97491000000 | 1 |
| 8 | 12214000000 | 2 |
| 9 | 38064000000 | 14, 19 |
| 10 | 61770000000 | 9, 23 |
| 11 | 12326000000 | 20, 24 |
| 12 | 85550000000 | 16, 20 |
| 13 | 15921000000 | 15, 19 |
| 14 | 101488000000 | 20, 27 |
| 15 | 99834000000 | 19, 26 |
| 16 | 24267000000 | 12, 20 |
| 17 | 15921000000 | 13, 15 |
| 18 | 19432000000 | 22, 26 |
| 19 | 79027000000 | 23, 25 |
| 20 | 18464000000 | 14, 16 |
| 21 | 1654000000 | 14, 27 |
| 22 | 19432000000 | 17, 24 |
| 23 | 12326000000 | 11, 24 |
| 24 | 11940000000 | 12, 15 |
| 25 | 11940000000 | 11, 25 |
| 26 | 369106 | 25 |
| 27 | 705144 | 19 |
| 28 | 395426 | 9 |
| 29 | 307150 | 14 |
| 30 | 234082 | 26 |
| 31 | 996042 | 20 |
| 32 | 202690 | 27 |
| 33 | 1049365 | 10 |
| 34 | 1000000 | 20, 21 |
| 35 | 202690 | 21 |
| 36 | 1000000 | 10, 25 |
| 37 | 565978 | 16 |
| 38 | 372354 | 18 |
| 39 | 254464 | 24 |
| 40 | 84889623675 | 15 |
| 41 | 31778 | 13 |
| 42 | 167616 | 23 |
| 43 | 186270 | 12 |
| 44 | 11297906816 | 11 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -1519858031185599/500000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -1519858031185599/500000 | 1 | -1519858031185599/500000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1542 | -1519858031185599/500000 |

## Stage 1543

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS-/HQS+/CRS+/BFQ+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS-/HQS+/CRS+/BFQ+:HLHHHHLLHH |
| Index | 0 |
| Context | 302 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1541 |
| Coordinate cut | p high 205967/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 20869/200000 | 6143/20000 | 20869/200000 | 6143/20000 |
| b | 20269/100000 | 282989/500000 | 20269/100000 | 282989/500000 |
| c | 693349/1000000 | 995083/1000000 | 693349/1000000 | 995083/1000000 |
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


## Stage 1544

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS-/HQS+/CRS+/BFQ+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ-/EHQ-/BPS-/HQS+/CRS+/BFQ+:HLHHHHLLHHL |
| Index | 0 |
| Context | 302 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1543 |
| Coordinate cut | b low 56791/125000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 20869/200000 | 6143/20000 | 20869/200000 | 6143/20000 |
| b | 20269/100000 | 56791/125000 | 20269/100000 | 56791/125000 |
| c | 693349/1000000 | 995083/1000000 | 693349/1000000 | 995083/1000000 |
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
