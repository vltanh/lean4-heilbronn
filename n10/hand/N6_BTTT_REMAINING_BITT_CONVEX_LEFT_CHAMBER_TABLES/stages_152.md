# BITT convex: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 760

| Property | Value |
| --- | --- |
| Scope | root/AFQ-/AFP-/APR+/BFP-/FPQ-/AEP+/BPR-/BPS+/AQS-/BFQ- |
| Packet | coordinate:root/HEQ+/CFQ+/AFQ-/AFP-/APR+/BFP-/FPQ-/AEP+/BPR-/BPS+/AQS-/BFQ-:HHHL |
| Index | 0 |
| Context | 94 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 759 |
| Coordinate cut | w low 699723/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 107143/1000000 | 6143/20000 | 107143/1000000 | 6143/20000 |
| b | 651/6250 | 4364/15625 | 651/6250 | 4364/15625 |
| c | 79701/100000 | 242763/250000 | 79701/100000 | 242763/250000 |
| e | 13393/125000 | 391/1000 | 13393/125000 | 391/1000 |
| f | 13393/125000 | 273623/500000 | 13393/125000 | 273623/500000 |
| h | 185807/250000 | 1 | 185807/250000 | 1 |
| p | 383749/1000000 | 683729/1000000 | 383749/1000000 | 683729/1000000 |
| q | 50029/250000 | 509039/1000000 | 50029/250000 | 509039/1000000 |
| u | 198443/1000000 | 580319/1000000 | 198443/1000000 | 580319/1000000 |
| v | 1901/3125 | 907/1000 | 1901/3125 | 907/1000 |
| r | 798359/1000000 | 1 | 798359/1000000 | 1 |
| w | 229431/500000 | 699723/1000000 | 229431/500000 | 699723/1000000 |
| j | 384713/1000000 | 879681/1000000 | 384713/1000000 | 879681/1000000 |
| k | 351951/500000 | 1 | 351951/500000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"164:1477","triangle":"CFQ","value":"151713/1000000"}` | `1 * f * v + -1 * c * v + -1 * u + 1 * c + -151713/1000000` |
| 1 | bound | `{"direction":"lo","ref":"164:1524","triangle":"BFP","value":"309081/1000000"}` | `-1 * f * q + 1 * b * q + 1 * p + -1 * b + -309081/1000000` |
| 2 | physical | `{"factor":112,"stage":164}` | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 3 | physical | `{"factor":122,"stage":164}` | `-1/1 * f * v + -1/1 * h * u + 1/1 * f * h + 1/1 * u + -93/1000` |
| 4 | physical | `{"factor":140,"stage":164}` | `1/1 * e + -1/1 * a` |
| 5 | physical | `{"factor":27,"stage":164}` | `1/1 * q + -1/1 * a + -1/1 * e * p + 1/1 * a * p + -93/1000` |
| 6 | physical | `{"factor":43,"stage":164}` | `1/1 * p * w + -1/1 * a * p + -1/1 * q * r + 1/1 * a * r + -93/1000` |
| 7 | physical | `{"factor":69,"stage":164}` | `-1/1 * f * v + 1/1 * b * v + 1/1 * u + -1/1 * b + -93/1000` |
| 8 | physical | `{"factor":77,"stage":164}` | `-1/1 * p * w + 1/1 * b * w + 1/1 * q * r + -1/1 * b * q + -93/1000` |
| 9 | physical | `{"factor":87,"stage":164}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 10 | physical | `{"factor":94,"stage":164}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 11 | coordinate | `{"box":760,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 12 | coordinate | `{"box":760,"direction":"hi","value":"4364/15625","variable":"b"}` | `4364/15625 + -1 * b` |
| 13 | coordinate | `{"box":760,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 14 | coordinate | `{"box":760,"direction":"hi","value":"699723/1000000","variable":"w"}` | `699723/1000000 + -1 * w` |
| 15 | coordinate | `{"box":760,"direction":"hi","value":"242763/250000","variable":"c"}` | `242763/250000 + -1 * c` |
| 16 | coordinate | `{"box":760,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 17 | coordinate | `{"box":760,"direction":"hi","value":"273623/500000","variable":"f"}` | `273623/500000 + -1 * f` |
| 18 | coordinate | `{"box":760,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 19 | coordinate | `{"box":760,"direction":"hi","value":"683729/1000000","variable":"p"}` | `683729/1000000 + -1 * p` |
| 20 | coordinate | `{"box":760,"direction":"hi","value":"509039/1000000","variable":"q"}` | `509039/1000000 + -1 * q` |
| 21 | coordinate | `{"box":760,"direction":"hi","value":"580319/1000000","variable":"u"}` | `580319/1000000 + -1 * u` |
| 22 | coordinate | `{"box":760,"direction":"hi","value":"907/1000","variable":"v"}` | `907/1000 + -1 * v` |
| 23 | coordinate | `{"box":760,"direction":"lo","value":"107143/1000000","variable":"a"}` | `-107143/1000000 + 1 * a` |
| 24 | coordinate | `{"box":760,"direction":"lo","value":"651/6250","variable":"b"}` | `-651/6250 + 1 * b` |
| 25 | coordinate | `{"box":760,"direction":"lo","value":"798359/1000000","variable":"r"}` | `-798359/1000000 + 1 * r` |
| 26 | coordinate | `{"box":760,"direction":"lo","value":"229431/500000","variable":"w"}` | `-229431/500000 + 1 * w` |
| 27 | coordinate | `{"box":760,"direction":"lo","value":"79701/100000","variable":"c"}` | `-79701/100000 + 1 * c` |
| 28 | coordinate | `{"box":760,"direction":"lo","value":"13393/125000","variable":"e"}` | `-13393/125000 + 1 * e` |
| 29 | coordinate | `{"box":760,"direction":"lo","value":"13393/125000","variable":"f"}` | `-13393/125000 + 1 * f` |
| 30 | coordinate | `{"box":760,"direction":"lo","value":"185807/250000","variable":"h"}` | `-185807/250000 + 1 * h` |
| 31 | coordinate | `{"box":760,"direction":"lo","value":"383749/1000000","variable":"p"}` | `-383749/1000000 + 1 * p` |
| 32 | coordinate | `{"box":760,"direction":"lo","value":"50029/250000","variable":"q"}` | `-50029/250000 + 1 * q` |
| 33 | coordinate | `{"box":760,"direction":"lo","value":"198443/1000000","variable":"u"}` | `-198443/1000000 + 1 * u` |
| 34 | coordinate | `{"box":760,"direction":"lo","value":"1901/3125","variable":"v"}` | `-1901/3125 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 4971000000 | 5 |
| 1 | 56904000000 | 6 |
| 2 | 50261000000 | 1 |
| 3 | 11654000000 | 7 |
| 4 | 83799000000 | 8 |
| 5 | 55006000000 | 9 |
| 6 | 24319000000 | 0 |
| 7 | 28841000000 | 10 |
| 8 | 14185000000 | 2 |
| 9 | 6008000000 | 3 |
| 10 | 6315000000 | 4 |
| 11 | 33538000000 | 24, 32 |
| 12 | 51933000000 | 11, 19 |
| 13 | 9712000000 | 22, 24 |
| 14 | 1942000000 | 12, 34 |
| 15 | 83799000000 | 14, 24 |
| 16 | 6764000000 | 13, 23 |
| 17 | 50140000000 | 11, 25 |
| 18 | 55006000000 | 15, 28 |
| 19 | 28841000000 | 18, 27 |
| 20 | 28841000000 | 27, 32 |
| 21 | 24319000000 | 27, 34 |
| 22 | 55006000000 | 14, 15 |
| 23 | 4971000000 | 28, 31 |
| 24 | 14185000000 | 28, 33 |
| 25 | 55006000000 | 13, 16 |
| 26 | 6008000000 | 18, 29 |
| 27 | 50261000000 | 29, 32 |
| 28 | 6658000000 | 17, 34 |
| 29 | 28841000000 | 30, 31 |
| 30 | 8178000000 | 18, 33 |
| 31 | 26895000000 | 26, 31 |
| 32 | 26895000000 | 13, 32 |
| 33 | 951926 | 20 |
| 34 | 377897 | 23 |
| 35 | 633988 | 19 |
| 36 | 261291 | 24 |
| 37 | 1000000 | 29, 34 |
| 38 | 608320 | 29 |
| 39 | 107144 | 34 |
| 40 | 1162360 | 21 |
| 41 | 111827 | 26 |
| 42 | 680110 | 27 |
| 43 | 72430 | 22 |
| 44 | 1000000 | 30, 33 |
| 45 | 198443 | 30 |
| 46 | 743228 | 33 |
| 47 | 448507 | 18 |
| 48 | 156078 | 16 |
| 49 | 9928 | 25 |
| 50 | 164284 | 17 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -1056004239566751/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -1056004239566751/1000000 | 1 | -1056004239566751/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 760 | -1056004239566751/1000000 |

## Stage 761

| Property | Value |
| --- | --- |
| Scope | root/AFQ-/AFP-/APR+/BFP-/FPQ-/AEP+/BPR-/BPS+/AQS-/BFQ- |
| Packet | coordinate:root/HEQ+/CFQ+/AFQ-/AFP-/APR+/BFP-/FPQ-/AEP+/BPR-/BPS+/AQS-/BFQ-:HHHH |
| Index | 0 |
| Context | 94 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 759 |
| Coordinate cut | w high 699723/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 107143/1000000 | 6143/20000 | 107143/1000000 | 6143/20000 |
| b | 651/6250 | 4364/15625 | 651/6250 | 4364/15625 |
| c | 79701/100000 | 242763/250000 | 79701/100000 | 242763/250000 |
| e | 13393/125000 | 391/1000 | 13393/125000 | 391/1000 |
| f | 13393/125000 | 273623/500000 | 13393/125000 | 273623/500000 |
| h | 185807/250000 | 1 | 185807/250000 | 1 |
| p | 383749/1000000 | 683729/1000000 | 383749/1000000 | 683729/1000000 |
| q | 50029/250000 | 509039/1000000 | 50029/250000 | 509039/1000000 |
| u | 198443/1000000 | 580319/1000000 | 198443/1000000 | 580319/1000000 |
| v | 1901/3125 | 907/1000 | 1901/3125 | 907/1000 |
| r | 798359/1000000 | 1 | 798359/1000000 | 1 |
| w | 699723/1000000 | 109953/125000 | 699723/1000000 | 109953/125000 |
| j | 384713/1000000 | 879681/1000000 | 384713/1000000 | 879681/1000000 |
| k | 351951/500000 | 1 | 351951/500000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"164:1477","triangle":"CFQ","value":"151713/1000000"}` | `1 * f * v + -1 * c * v + -1 * u + 1 * c + -151713/1000000` |
| 1 | bound | `{"direction":"lo","ref":"164:1524","triangle":"BFP","value":"309081/1000000"}` | `-1 * f * q + 1 * b * q + 1 * p + -1 * b + -309081/1000000` |
| 2 | bound | `{"direction":"lo","ref":"164:1686","triangle":"ABR","value":"302327/1000000"}` | `1 * b * w + -1 * a * b + 1 * a * r + -302327/1000000` |
| 3 | physical | `{"factor":112,"stage":164}` | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 4 | physical | `{"factor":121,"stage":164}` | `-1/1 * f * q + -1/1 * h * p + 1/1 * f * h + 1/1 * p + -279/1000` |
| 5 | physical | `{"factor":122,"stage":164}` | `-1/1 * f * v + -1/1 * h * u + 1/1 * f * h + 1/1 * u + -93/1000` |
| 6 | physical | `{"factor":140,"stage":164}` | `1/1 * e + -1/1 * a` |
| 7 | physical | `{"factor":43,"stage":164}` | `1/1 * p * w + -1/1 * a * p + -1/1 * q * r + 1/1 * a * r + -93/1000` |
| 8 | physical | `{"factor":69,"stage":164}` | `-1/1 * f * v + 1/1 * b * v + 1/1 * u + -1/1 * b + -93/1000` |
| 9 | physical | `{"factor":7,"stage":164}` | `1/1 * b * h + -1/1 * a * b + -93/1000` |
| 10 | physical | `{"factor":77,"stage":164}` | `-1/1 * p * w + 1/1 * b * w + 1/1 * q * r + -1/1 * b * q + -93/1000` |
| 11 | physical | `{"factor":87,"stage":164}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 12 | physical | `{"factor":94,"stage":164}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 13 | coordinate | `{"box":761,"direction":"hi","value":"4364/15625","variable":"b"}` | `4364/15625 + -1 * b` |
| 14 | coordinate | `{"box":761,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 15 | coordinate | `{"box":761,"direction":"hi","value":"109953/125000","variable":"w"}` | `109953/125000 + -1 * w` |
| 16 | coordinate | `{"box":761,"direction":"hi","value":"242763/250000","variable":"c"}` | `242763/250000 + -1 * c` |
| 17 | coordinate | `{"box":761,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 18 | coordinate | `{"box":761,"direction":"hi","value":"273623/500000","variable":"f"}` | `273623/500000 + -1 * f` |
| 19 | coordinate | `{"box":761,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 20 | coordinate | `{"box":761,"direction":"hi","value":"509039/1000000","variable":"q"}` | `509039/1000000 + -1 * q` |
| 21 | coordinate | `{"box":761,"direction":"hi","value":"907/1000","variable":"v"}` | `907/1000 + -1 * v` |
| 22 | coordinate | `{"box":761,"direction":"lo","value":"107143/1000000","variable":"a"}` | `-107143/1000000 + 1 * a` |
| 23 | coordinate | `{"box":761,"direction":"lo","value":"651/6250","variable":"b"}` | `-651/6250 + 1 * b` |
| 24 | coordinate | `{"box":761,"direction":"lo","value":"699723/1000000","variable":"w"}` | `-699723/1000000 + 1 * w` |
| 25 | coordinate | `{"box":761,"direction":"lo","value":"79701/100000","variable":"c"}` | `-79701/100000 + 1 * c` |
| 26 | coordinate | `{"box":761,"direction":"lo","value":"13393/125000","variable":"e"}` | `-13393/125000 + 1 * e` |
| 27 | coordinate | `{"box":761,"direction":"lo","value":"13393/125000","variable":"f"}` | `-13393/125000 + 1 * f` |
| 28 | coordinate | `{"box":761,"direction":"lo","value":"185807/250000","variable":"h"}` | `-185807/250000 + 1 * h` |
| 29 | coordinate | `{"box":761,"direction":"lo","value":"383749/1000000","variable":"p"}` | `-383749/1000000 + 1 * p` |
| 30 | coordinate | `{"box":761,"direction":"lo","value":"50029/250000","variable":"q"}` | `-50029/250000 + 1 * q` |
| 31 | coordinate | `{"box":761,"direction":"lo","value":"198443/1000000","variable":"u"}` | `-198443/1000000 + 1 * u` |
| 32 | coordinate | `{"box":761,"direction":"lo","value":"1901/3125","variable":"v"}` | `-1901/3125 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 18094000000 | 9 |
| 1 | 3758000000 | 2 |
| 2 | 7023000000 | 7 |
| 3 | 70336000000 | 1 |
| 4 | 10039000000 | 8 |
| 5 | 70336000000 | 10 |
| 6 | 35358000000 | 11 |
| 7 | 31573000000 | 0 |
| 8 | 36663000000 | 12 |
| 9 | 24118000000 | 3 |
| 10 | 7660000000 | 4 |
| 11 | 21534000000 | 5 |
| 12 | 5810000000 | 6 |
| 13 | 21852000000 | 22, 23 |
| 14 | 18094000000 | 19, 23 |
| 15 | 7023000000 | 22, 29 |
| 16 | 10039000000 | 21, 23 |
| 17 | 20414000000 | 15, 23 |
| 18 | 53681000000 | 13, 24 |
| 19 | 10781000000 | 14, 22 |
| 20 | 35358000000 | 16, 26 |
| 21 | 36663000000 | 16, 28 |
| 22 | 36663000000 | 16, 20 |
| 23 | 31573000000 | 25, 32 |
| 24 | 35358000000 | 24, 25 |
| 25 | 24118000000 | 26, 31 |
| 26 | 35358000000 | 14, 17 |
| 27 | 29194000000 | 19, 27 |
| 28 | 34019000000 | 27, 30 |
| 29 | 43978000000 | 18, 20 |
| 30 | 44323000000 | 28, 29 |
| 31 | 2584000000 | 19, 31 |
| 32 | 63313000000 | 24, 29 |
| 33 | 63313000000 | 14, 30 |
| 34 | 173547 | 22 |
| 35 | 806866 | 23 |
| 36 | 1000000 | 23, 24 |
| 37 | 104160 | 24 |
| 38 | 1000000 | 18, 30 |
| 39 | 200116 | 18 |
| 40 | 547246 | 20 |
| 41 | 122232 | 29 |
| 42 | 1666006 | 13 |
| 43 | 98992 | 31 |
| 44 | 230799 | 15 |
| 45 | 175665 | 16 |
| 46 | 334490 | 32 |
| 47 | 182237 | 19 |
| 48 | 408342 | 17 |
| 49 | 74991 | 14 |
| 50 | 395800 | 30 |
| 51 | 263346 | 27 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -2713145286414547/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -2713145286414547/1000000 | 1 | -2713145286414547/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 761 | -2713145286414547/1000000 |

## Stage 762

| Property | Value |
| --- | --- |
| Scope | root/AFQ-/AFP-/APR+/BFP-/FPQ-/AEP+/BPR-/BPS-/BFQ+ |
| Packet | coordinate:root/HEQ+/CFQ+/AFQ-/AFP-/APR+/BFP-/FPQ-/AEP+/BPR-/BPS-/BFQ+:root |
| Index | 0 |
| Context | 96 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 166 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 108691/1000000 | 6143/20000 | 108691/1000000 | 6143/20000 |
| b | 144393/1000000 | 582637/1000000 | 144393/1000000 | 582637/1000000 |
| c | 706289/1000000 | 1 | 706289/1000000 | 1 |
| e | 54347/500000 | 391/1000 | 54347/500000 | 391/1000 |
| f | 279/1000 | 116527/200000 | 279/1000 | 116527/200000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 314001/1000000 | 705309/1000000 | 314001/1000000 | 705309/1000000 |
| q | 201691/1000000 | 592999/1000000 | 201691/1000000 | 592999/1000000 |
| u | 180577/1000000 | 61209/125000 | 180577/1000000 | 61209/125000 |
| v | 52853/125000 | 907/1000 | 52853/125000 | 907/1000 |
| r | 135883/250000 | 1 | 135883/250000 | 1 |
| w | 421939/1000000 | 843643/1000000 | 421939/1000000 | 843643/1000000 |
| j | 26449/50000 | 87379/100000 | 26449/50000 | 87379/100000 |
| k | 525027/1000000 | 1 | 525027/1000000 | 1 |

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


## Stage 763

| Property | Value |
| --- | --- |
| Scope | root/AFQ-/AFP-/APR+/BFP-/FPQ-/AEP+/BPR-/BPS-/BFQ+ |
| Packet | coordinate:root/HEQ+/CFQ+/AFQ-/AFP-/APR+/BFP-/FPQ-/AEP+/BPR-/BPS-/BFQ+:L |
| Index | 0 |
| Context | 96 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 762 |
| Coordinate cut | v low 77463/100000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 108691/1000000 | 6143/20000 | 108691/1000000 | 6143/20000 |
| b | 144393/1000000 | 582637/1000000 | 144393/1000000 | 582637/1000000 |
| c | 706289/1000000 | 1 | 706289/1000000 | 1 |
| e | 54347/500000 | 391/1000 | 54347/500000 | 391/1000 |
| f | 279/1000 | 116527/200000 | 279/1000 | 116527/200000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 314001/1000000 | 705309/1000000 | 314001/1000000 | 705309/1000000 |
| q | 201691/1000000 | 592999/1000000 | 201691/1000000 | 592999/1000000 |
| u | 180577/1000000 | 61209/125000 | 180577/1000000 | 61209/125000 |
| v | 52853/125000 | 77463/100000 | 52853/125000 | 77463/100000 |
| r | 135883/250000 | 1 | 135883/250000 | 1 |
| w | 421939/1000000 | 843643/1000000 | 421939/1000000 | 843643/1000000 |
| j | 26449/50000 | 87379/100000 | 26449/50000 | 87379/100000 |
| k | 525027/1000000 | 1 | 525027/1000000 | 1 |

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


## Stage 764

| Property | Value |
| --- | --- |
| Scope | root/AFQ-/AFP-/APR+/BFP-/FPQ-/AEP+/BPR-/BPS-/BFQ+ |
| Packet | coordinate:root/HEQ+/CFQ+/AFQ-/AFP-/APR+/BFP-/FPQ-/AEP+/BPR-/BPS-/BFQ+:LL |
| Index | 0 |
| Context | 96 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 763 |
| Coordinate cut | r low 133259/200000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 108691/1000000 | 6143/20000 | 108691/1000000 | 6143/20000 |
| b | 144393/1000000 | 582637/1000000 | 144393/1000000 | 582637/1000000 |
| c | 706289/1000000 | 1 | 706289/1000000 | 1 |
| e | 54347/500000 | 391/1000 | 54347/500000 | 391/1000 |
| f | 279/1000 | 116527/200000 | 279/1000 | 116527/200000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 314001/1000000 | 705309/1000000 | 314001/1000000 | 705309/1000000 |
| q | 201691/1000000 | 592999/1000000 | 201691/1000000 | 592999/1000000 |
| u | 180577/1000000 | 61209/125000 | 180577/1000000 | 61209/125000 |
| v | 52853/125000 | 77463/100000 | 52853/125000 | 77463/100000 |
| r | 135883/250000 | 133259/200000 | 135883/250000 | 133259/200000 |
| w | 421939/1000000 | 843643/1000000 | 421939/1000000 | 843643/1000000 |
| j | 26449/50000 | 87379/100000 | 26449/50000 | 87379/100000 |
| k | 525027/1000000 | 1 | 525027/1000000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"166:1122","triangle":"BFS","value":"43263/125000"}` | `-1 * f * k + 1 * b * k + 1 * j + -1 * b + -43263/125000` |
| 1 | physical | `{"factor":119,"stage":166}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 2 | physical | `{"factor":1213,"stage":166}` | `896233/1000000 * w + 472667/1000000 * b * w + -896233/1000000 * e * r + -472667/1000000 * b * e + -13689/10000 * f * w + 13689/10000 * e * f + 13689/10000 * r + -13689/10000` |
| 3 | physical | `{"factor":129,"stage":166}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 4 | physical | `{"factor":141,"stage":166}` | `1/1 * f + -1/1 * b` |
| 5 | coordinate | `{"box":764,"direction":"hi","value":"582637/1000000","variable":"b"}` | `582637/1000000 + -1 * b` |
| 6 | coordinate | `{"box":764,"direction":"hi","value":"133259/200000","variable":"r"}` | `133259/200000 + -1 * r` |
| 7 | coordinate | `{"box":764,"direction":"hi","value":"843643/1000000","variable":"w"}` | `843643/1000000 + -1 * w` |
| 8 | coordinate | `{"box":764,"direction":"hi","value":"87379/100000","variable":"j"}` | `87379/100000 + -1 * j` |
| 9 | coordinate | `{"box":764,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 10 | coordinate | `{"box":764,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 11 | coordinate | `{"box":764,"direction":"hi","value":"116527/200000","variable":"f"}` | `116527/200000 + -1 * f` |
| 12 | coordinate | `{"box":764,"direction":"lo","value":"144393/1000000","variable":"b"}` | `-144393/1000000 + 1 * b` |
| 13 | coordinate | `{"box":764,"direction":"lo","value":"135883/250000","variable":"r"}` | `-135883/250000 + 1 * r` |
| 14 | coordinate | `{"box":764,"direction":"lo","value":"421939/1000000","variable":"w"}` | `-421939/1000000 + 1 * w` |
| 15 | coordinate | `{"box":764,"direction":"lo","value":"26449/50000","variable":"j"}` | `-26449/50000 + 1 * j` |
| 16 | coordinate | `{"box":764,"direction":"lo","value":"525027/1000000","variable":"k"}` | `-525027/1000000 + 1 * k` |
| 17 | coordinate | `{"box":764,"direction":"lo","value":"54347/500000","variable":"e"}` | `-54347/500000 + 1 * e` |
| 18 | coordinate | `{"box":764,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 5313600000000000 | 0 |
| 1 | 16018200000000000 | 1 |
| 2 | 15648600000000000 | 3 |
| 3 | 2802400000000000 | 4 |
| 4 | 8067000000000000 | 2 |
| 5 | 3813004689000000 | 12, 17 |
| 6 | 3813000000000000 | 7, 12 |
| 7 | 5313600000000000 | 9, 12 |
| 8 | 11042916300000000 | 10, 18 |
| 9 | 23248000000000000 | 6, 10 |
| 10 | 13011200000000000 | 8, 17 |
| 11 | 3007200000000000 | 10, 15 |
| 12 | 4605800000000000 | 7, 18 |
| 13 | 20962200000000000 | 16, 18 |
| 14 | 31666800000000000 | 6, 16 |
| 15 | 7501200000000000 | 14, 15 |
| 16 | 24165600000000000 | 7, 8 |
| 17 | 66465200000 | 8 |
| 18 | 39972666166 | 12 |
| 19 | 111611000000 | 13, 17 |
| 20 | 167137208829 | 17 |
| 21 | 12131446034 | 13 |
| 22 | 23350800000 | 9 |
| 23 | 58651984893 | 7 |
| 24 | 200000000000 | 15, 17 |
| 25 | 21738800000 | 15 |
| 26 | 2930273303600000 | 6 |
| 27 | 116300000000 | 14, 18 |
| 28 | 49071505700 | 18 |
| 29 | 32447700000 | 14 |
| 30 | 110223300000 | 11 |
| 31 | 4689000000 | 5, 14 |
| 32 | 1978471971 | 5 |
| 33 | 182082700000 | 10 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -1654956195786388174127/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -1654956195786388174127/1000000 | 1 | -1654956195786388174127/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 764 | -1654956195786388174127/1000000 |
