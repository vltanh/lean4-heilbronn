# BITT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 970

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP+/BQS-/PQS+/QRS-/EPQ+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP+/BQS-/PQS+/QRS-/EPQ+:H |
| Index | 0 |
| Context | 171 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 924 |
| Coordinate cut | v high 272719/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 112077/250000 | 103767/1000000 | 112077/250000 |
| b | 103767/1000000 | 278371/500000 | 103767/1000000 | 278371/500000 |
| c | 135501/250000 | 1 | 135501/250000 | 1 |
| e | 103767/1000000 | 112077/250000 | 103767/1000000 | 112077/250000 |
| f | 279/1000 | 344349/500000 | 279/1000 | 344349/500000 |
| h | 721163/1000000 | 1 | 721163/1000000 | 1 |
| p | 22907/200000 | 568313/1000000 | 22907/200000 | 568313/1000000 |
| q | 196767/1000000 | 158493/200000 | 196767/1000000 | 158493/200000 |
| u | 155651/500000 | 750147/1000000 | 155651/500000 | 750147/1000000 |
| v | 272719/500000 | 367629/500000 | 272719/500000 | 367629/500000 |
| r | 295151/500000 | 1 | 295151/500000 | 1 |
| w | 796617/1000000 | 1 | 796617/1000000 | 1 |
| j | 353117/500000 | 896233/1000000 | 353117/500000 | 896233/1000000 |
| k | 361741/1000000 | 871013/1000000 | 361741/1000000 | 871013/1000000 |

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
| 0 | bound | `{"direction":"lo","ref":"385:1258","triangle":"EHQ","value":"129787/1000000"}` | `-1 * v + -1 * h * u + 1 * h + 1 * e * u + -129787/1000000` |
| 1 | bound | `{"direction":"lo","ref":"385:776","triangle":"AQR","value":"68107/200000"}` | `1 * u * w + -1 * a * u + -1 * v * r + 1 * a * r + -68107/200000` |
| 2 | physical | `{"factor":107,"stage":385}` | `-1/1 * u * w + 1/1 * e * u + 1/1 * w + 1/1 * v * r + -1/1 * v + -1/1 * e * r + -279/1000` |
| 3 | physical | `{"factor":112,"stage":385}` | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 4 | coordinate | `{"box":970,"direction":"hi","value":"112077/250000","variable":"a"}` | `112077/250000 + -1 * a` |
| 5 | coordinate | `{"box":970,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 6 | coordinate | `{"box":970,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 7 | coordinate | `{"box":970,"direction":"hi","value":"112077/250000","variable":"e"}` | `112077/250000 + -1 * e` |
| 8 | coordinate | `{"box":970,"direction":"hi","value":"344349/500000","variable":"f"}` | `344349/500000 + -1 * f` |
| 9 | coordinate | `{"box":970,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 10 | coordinate | `{"box":970,"direction":"hi","value":"750147/1000000","variable":"u"}` | `750147/1000000 + -1 * u` |
| 11 | coordinate | `{"box":970,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 12 | coordinate | `{"box":970,"direction":"lo","value":"295151/500000","variable":"r"}` | `-295151/500000 + 1 * r` |
| 13 | coordinate | `{"box":970,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 14 | coordinate | `{"box":970,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 15 | coordinate | `{"box":970,"direction":"lo","value":"155651/500000","variable":"u"}` | `-155651/500000 + 1 * u` |
| 16 | coordinate | `{"box":970,"direction":"lo","value":"272719/500000","variable":"v"}` | `-272719/500000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 112697000000 | 1 |
| 1 | 88060000000 | 0 |
| 2 | 50273000000 | 2 |
| 3 | 30516000000 | 3 |
| 4 | 41049000000 | 11, 15 |
| 5 | 71648000000 | 4, 10 |
| 6 | 112697000000 | 4, 12 |
| 7 | 17598000000 | 12, 13 |
| 8 | 32675000000 | 5, 7 |
| 9 | 30516000000 | 9, 14 |
| 10 | 30516000000 | 6, 8 |
| 11 | 88060000000 | 9, 10 |
| 12 | 30516000000 | 5, 9 |
| 13 | 62424000000 | 6, 15 |
| 14 | 62424000000 | 12, 16 |
| 15 | 138333000000 | 7, 15 |
| 16 | 175182012048 | 16 |
| 17 | 19180 | 9 |
| 18 | 48689407880 | 6 |
| 19 | 10602 | 12 |
| 20 | 96440 | 4 |
| 21 | 112603 | 15 |
| 22 | 204970 | 7 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -183929523738126/15625 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -183929523738126/15625 | 1 | -183929523738126/15625 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 970 | -183929523738126/15625 |

## Stage 971

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP+/BQS-/PQS-/APS+/AQR-/HQS+/BRS-/CRS+/CFQ+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP+/BQS-/PQS-/APS+/AQR-/HQS+/BRS-/CRS+/CFQ+:root |
| Index | 0 |
| Context | 181 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 395 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 114221/1000000 | 6143/20000 | 114221/1000000 | 6143/20000 |
| b | 46449/250000 | 153249/250000 | 46449/250000 | 153249/250000 |
| c | 346929/500000 | 1 | 346929/500000 | 1 |
| e | 114221/1000000 | 392679/1000000 | 114221/1000000 | 392679/1000000 |
| f | 279/1000 | 21407/31250 | 279/1000 | 21407/31250 |
| h | 563529/1000000 | 1 | 563529/1000000 | 1 |
| p | 167637/1000000 | 280009/500000 | 167637/1000000 | 280009/500000 |
| q | 41443/200000 | 276119/500000 | 41443/200000 | 276119/500000 |
| u | 79669/250000 | 21407/31250 | 79669/250000 | 21407/31250 |
| v | 427901/1000000 | 408537/500000 | 427901/1000000 | 408537/500000 |
| r | 13857/20000 | 1 | 13857/20000 | 1 |
| w | 403531/500000 | 1 | 403531/500000 | 1 |
| j | 143363/200000 | 27969/31250 | 143363/200000 | 27969/31250 |
| k | 17591/40000 | 871013/1000000 | 17591/40000 | 871013/1000000 |

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


## Stage 972

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP+/BQS-/PQS-/APS+/AQR-/HQS+/BRS-/CRS+/CFQ+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP+/BQS-/PQS-/APS+/AQR-/HQS+/BRS-/CRS+/CFQ+:L |
| Index | 0 |
| Context | 181 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 971 |
| Coordinate cut | b low 255239/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 114221/1000000 | 6143/20000 | 114221/1000000 | 6143/20000 |
| b | 46449/250000 | 255239/500000 | 46449/250000 | 255239/500000 |
| c | 346929/500000 | 1 | 346929/500000 | 1 |
| e | 114221/1000000 | 392679/1000000 | 114221/1000000 | 392679/1000000 |
| f | 279/1000 | 21407/31250 | 279/1000 | 21407/31250 |
| h | 563529/1000000 | 1 | 563529/1000000 | 1 |
| p | 167637/1000000 | 280009/500000 | 167637/1000000 | 280009/500000 |
| q | 41443/200000 | 276119/500000 | 41443/200000 | 276119/500000 |
| u | 79669/250000 | 21407/31250 | 79669/250000 | 21407/31250 |
| v | 427901/1000000 | 408537/500000 | 427901/1000000 | 408537/500000 |
| r | 13857/20000 | 1 | 13857/20000 | 1 |
| w | 403531/500000 | 1 | 403531/500000 | 1 |
| j | 143363/200000 | 27969/31250 | 143363/200000 | 27969/31250 |
| k | 17591/40000 | 871013/1000000 | 17591/40000 | 871013/1000000 |

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


## Stage 973

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP+/BQS-/PQS-/APS+/AQR-/HQS+/BRS-/CRS+/CFQ+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP+/BQS-/PQS-/APS+/AQR-/HQS+/BRS-/CRS+/CFQ+:LL |
| Index | 0 |
| Context | 181 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 972 |
| Coordinate cut | v low 537597/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 114221/1000000 | 6143/20000 | 114221/1000000 | 6143/20000 |
| b | 46449/250000 | 255239/500000 | 46449/250000 | 255239/500000 |
| c | 346929/500000 | 1 | 346929/500000 | 1 |
| e | 114221/1000000 | 392679/1000000 | 114221/1000000 | 392679/1000000 |
| f | 279/1000 | 21407/31250 | 279/1000 | 21407/31250 |
| h | 563529/1000000 | 1 | 563529/1000000 | 1 |
| p | 167637/1000000 | 280009/500000 | 167637/1000000 | 280009/500000 |
| q | 41443/200000 | 276119/500000 | 41443/200000 | 276119/500000 |
| u | 79669/250000 | 21407/31250 | 79669/250000 | 21407/31250 |
| v | 427901/1000000 | 537597/1000000 | 427901/1000000 | 537597/1000000 |
| r | 13857/20000 | 1 | 13857/20000 | 1 |
| w | 403531/500000 | 1 | 403531/500000 | 1 |
| j | 143363/200000 | 27969/31250 | 143363/200000 | 27969/31250 |
| k | 17591/40000 | 871013/1000000 | 17591/40000 | 871013/1000000 |

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
| 0 | physical | `{"factor":12,"stage":395}` | `1/1 * b * v + -1/1 * a * b + 1/1 * a * u + -279/1000` |
| 1 | physical | `{"factor":139,"stage":395}` | `1/1 * e + -1/1 * a` |
| 2 | physical | `{"factor":141,"stage":395}` | `1/1 * f + -1/1 * b` |
| 3 | physical | `{"factor":32,"stage":395}` | `1/1 * w + -1/1 * a + -1/1 * e * r + 1/1 * a * r + -13857/20000` |
| 4 | physical | `{"factor":46,"stage":395}` | `-1/1 * u * w + 1/1 * a * u + 1/1 * v * r + -1/1 * a * r + -93/1000` |
| 5 | physical | `{"factor":68,"stage":395}` | `-1/1 * f * v + 1/1 * b * v + 1/1 * u + -1/1 * b + -93/1000` |
| 6 | coordinate | `{"box":973,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 7 | coordinate | `{"box":973,"direction":"hi","value":"255239/500000","variable":"b"}` | `255239/500000 + -1 * b` |
| 8 | coordinate | `{"box":973,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 9 | coordinate | `{"box":973,"direction":"hi","value":"392679/1000000","variable":"e"}` | `392679/1000000 + -1 * e` |
| 10 | coordinate | `{"box":973,"direction":"hi","value":"21407/31250","variable":"f"}` | `21407/31250 + -1 * f` |
| 11 | coordinate | `{"box":973,"direction":"hi","value":"21407/31250","variable":"u"}` | `21407/31250 + -1 * u` |
| 12 | coordinate | `{"box":973,"direction":"hi","value":"537597/1000000","variable":"v"}` | `537597/1000000 + -1 * v` |
| 13 | coordinate | `{"box":973,"direction":"lo","value":"114221/1000000","variable":"a"}` | `-114221/1000000 + 1 * a` |
| 14 | coordinate | `{"box":973,"direction":"lo","value":"46449/250000","variable":"b"}` | `-46449/250000 + 1 * b` |
| 15 | coordinate | `{"box":973,"direction":"lo","value":"13857/20000","variable":"r"}` | `-13857/20000 + 1 * r` |
| 16 | coordinate | `{"box":973,"direction":"lo","value":"403531/500000","variable":"w"}` | `-403531/500000 + 1 * w` |
| 17 | coordinate | `{"box":973,"direction":"lo","value":"79669/250000","variable":"u"}` | `-79669/250000 + 1 * u` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 105606000000 | 0 |
| 1 | 25635000000 | 3 |
| 2 | 80443000000 | 4 |
| 3 | 43672000000 | 5 |
| 4 | 25635000000 | 1 |
| 5 | 23478000000 | 2 |
| 6 | 100222000000 | 13, 14 |
| 7 | 5384000000 | 6, 7 |
| 8 | 149278000000 | 12, 14 |
| 9 | 186049000000 | 11, 13 |
| 10 | 54808000000 | 6, 8 |
| 11 | 25635000000 | 8, 9 |
| 12 | 43672000000 | 10, 12 |
| 13 | 80443000000 | 16, 17 |
| 14 | 80443000000 | 12, 15 |
| 15 | 185796 | 13 |
| 16 | 114221 | 14 |
| 17 | 253468 | 16 |
| 18 | 955708 | 6 |
| 19 | 53553819710 | 12 |
| 20 | 16345312106 | 8 |
| 21 | 214363 | 11 |
| 22 | 366525 | 7 |
| 23 | 63816 | 10 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -641857464460213/100000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -641857464460213/100000 | 1 | -641857464460213/100000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 973 | -641857464460213/100000 |

## Stage 974

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP+/BQS-/PQS-/APS+/AQR-/HQS+/BRS-/CRS+/CFQ+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP+/BQS-/PQS-/APS+/AQR-/HQS+/BRS-/CRS+/CFQ+:LH |
| Index | 0 |
| Context | 181 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 972 |
| Coordinate cut | v high 537597/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 114221/1000000 | 6143/20000 | 114221/1000000 | 6143/20000 |
| b | 46449/250000 | 255239/500000 | 46449/250000 | 255239/500000 |
| c | 346929/500000 | 1 | 346929/500000 | 1 |
| e | 114221/1000000 | 392679/1000000 | 114221/1000000 | 392679/1000000 |
| f | 279/1000 | 21407/31250 | 279/1000 | 21407/31250 |
| h | 563529/1000000 | 1 | 563529/1000000 | 1 |
| p | 167637/1000000 | 280009/500000 | 167637/1000000 | 280009/500000 |
| q | 41443/200000 | 276119/500000 | 41443/200000 | 276119/500000 |
| u | 79669/250000 | 21407/31250 | 79669/250000 | 21407/31250 |
| v | 537597/1000000 | 408537/500000 | 537597/1000000 | 408537/500000 |
| r | 13857/20000 | 1 | 13857/20000 | 1 |
| w | 403531/500000 | 1 | 403531/500000 | 1 |
| j | 143363/200000 | 27969/31250 | 143363/200000 | 27969/31250 |
| k | 17591/40000 | 871013/1000000 | 17591/40000 | 871013/1000000 |

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
