# BITT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 1935

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS-/HEQ-/CFQ+/BFP+/BRS+/BQS+/EPQ+/AEQ- |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS-/HEQ-/CFQ+/BFP+/BRS+/BQS+/EPQ+/AEQ-:LL |
| Index | 0 |
| Context | 489 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1934 |
| Coordinate cut | u low 127549/250000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| b | 103767/1000000 | 21407/40000 | 103767/1000000 | 21407/40000 |
| c | 351277/500000 | 1 | 351277/500000 | 1 |
| e | 279/1000 | 59/125 | 279/1000 | 59/125 |
| f | 279/1000 | 121807/200000 | 279/1000 | 121807/200000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 22907/200000 | 6143/20000 | 22907/200000 | 6143/20000 |
| q | 137461/500000 | 641153/1000000 | 137461/500000 | 641153/1000000 |
| u | 382873/1000000 | 127549/250000 | 382873/1000000 | 127549/250000 |
| v | 2239/20000 | 379/1000 | 2239/20000 | 379/1000 |
| r | 13857/20000 | 1 | 13857/20000 | 1 |
| w | 78247/100000 | 1 | 78247/100000 | 1 |
| j | 540977/1000000 | 848397/1000000 | 540977/1000000 | 848397/1000000 |
| k | 55959/100000 | 86701/100000 | 55959/100000 | 86701/100000 |

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
| 0 | bound | `{"direction":"lo","ref":"794:2946","triangle":"AHQ","value":"58271/200000"}` | `1 * h * u + -1 * a * u + -58271/200000` |
| 1 | bound | `{"direction":"lo","ref":"794:3058","triangle":"AQR","value":"190957/500000"}` | `1 * u * w + -1 * a * u + -1 * v * r + 1 * a * r + -190957/500000` |
| 2 | bound | `{"direction":"lo","ref":"794:3272","triangle":"AFR","value":"94901/250000"}` | `-1 * f * w + 1 * a * f + 1 * r + -1 * a * r + -94901/250000` |
| 3 | physical | `{"factor":106,"stage":794}` | `-1/1 * f * k + 1/1 * e * f + 1/1 * k + 1/1 * j + -1093/1000 + -1/1 * e * j` |
| 4 | physical | `{"factor":136,"stage":794}` | `1/1 * r * k + -1/1 * v * r + -1/1 * u * k + -1/1 * w * j + 1/1 * u * w + 1/1 * v * j + -93/1000` |
| 5 | physical | `{"factor":17,"stage":794}` | `1/1 * c + -1/1 * a * c + 1/1 * a * f + -13857/20000` |
| 6 | physical | `{"factor":31,"stage":794}` | `-1/1 * v + 1/1 * a + 1/1 * e * u + -1/1 * a * u + -93/1000` |
| 7 | physical | `{"factor":48,"stage":794}` | `-1/1 * r * k + 1/1 * a * r + 1/1 * w * j + -1/1 * a * j + -93/1000` |
| 8 | physical | `{"factor":76,"stage":794}` | `1/1 * u * w + -1/1 * b * w + -1/1 * v * r + 1/1 * b * v + -93/1000` |
| 9 | physical | `{"factor":78,"stage":794}` | `1/1 * r * k + -1/1 * b * k + -1/1 * w * j + 1/1 * b * w + -93/1000` |
| 10 | physical | `{"factor":92,"stage":794}` | `1/1 * c * v + 1/1 * h * u + -1/1 * c * h + -93/1000` |
| 11 | coordinate | `{"box":1935,"direction":"hi","value":"59/125","variable":"a"}` | `59/125 + -1 * a` |
| 12 | coordinate | `{"box":1935,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 13 | coordinate | `{"box":1935,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 14 | coordinate | `{"box":1935,"direction":"hi","value":"848397/1000000","variable":"j"}` | `848397/1000000 + -1 * j` |
| 15 | coordinate | `{"box":1935,"direction":"hi","value":"86701/100000","variable":"k"}` | `86701/100000 + -1 * k` |
| 16 | coordinate | `{"box":1935,"direction":"hi","value":"59/125","variable":"e"}` | `59/125 + -1 * e` |
| 17 | coordinate | `{"box":1935,"direction":"hi","value":"121807/200000","variable":"f"}` | `121807/200000 + -1 * f` |
| 18 | coordinate | `{"box":1935,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 19 | coordinate | `{"box":1935,"direction":"hi","value":"127549/250000","variable":"u"}` | `127549/250000 + -1 * u` |
| 20 | coordinate | `{"box":1935,"direction":"hi","value":"379/1000","variable":"v"}` | `379/1000 + -1 * v` |
| 21 | coordinate | `{"box":1935,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 22 | coordinate | `{"box":1935,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 23 | coordinate | `{"box":1935,"direction":"lo","value":"78247/100000","variable":"w"}` | `-78247/100000 + 1 * w` |
| 24 | coordinate | `{"box":1935,"direction":"lo","value":"540977/1000000","variable":"j"}` | `-540977/1000000 + 1 * j` |
| 25 | coordinate | `{"box":1935,"direction":"lo","value":"55959/100000","variable":"k"}` | `-55959/100000 + 1 * k` |
| 26 | coordinate | `{"box":1935,"direction":"lo","value":"351277/500000","variable":"c"}` | `-351277/500000 + 1 * c` |
| 27 | coordinate | `{"box":1935,"direction":"lo","value":"279/1000","variable":"e"}` | `-279/1000 + 1 * e` |
| 28 | coordinate | `{"box":1935,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 29 | coordinate | `{"box":1935,"direction":"lo","value":"135501/250000","variable":"h"}` | `-135501/250000 + 1 * h` |
| 30 | coordinate | `{"box":1935,"direction":"lo","value":"382873/1000000","variable":"u"}` | `-382873/1000000 + 1 * u` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 19558000000 | 5 |
| 1 | 55251000000 | 6 |
| 2 | 7346000000 | 2 |
| 3 | 40544000000 | 0 |
| 4 | 8124000000 | 1 |
| 5 | 21266000000 | 7 |
| 6 | 9688000000 | 8 |
| 7 | 13660000000 | 9 |
| 8 | 107535000000 | 10 |
| 9 | 13551000000 | 3 |
| 10 | 7606000000 | 4 |
| 11 | 19558000000 | 21, 26 |
| 12 | 26904000000 | 11, 28 |
| 13 | 9688000000 | 20, 22 |
| 14 | 103919000000 | 11, 19 |
| 15 | 3972000000 | 13, 22 |
| 16 | 22044000000 | 12, 21 |
| 17 | 13660000000 | 22, 25 |
| 18 | 21266000000 | 11, 14 |
| 19 | 107535000000 | 26, 29 |
| 20 | 107535000000 | 20, 26 |
| 21 | 13551000000 | 16, 28 |
| 22 | 15123000000 | 19, 27 |
| 23 | 13551000000 | 14, 16 |
| 24 | 7346000000 | 13, 17 |
| 25 | 13551000000 | 15, 17 |
| 26 | 148078000000 | 19, 29 |
| 27 | 25418000000 | 19, 23 |
| 28 | 25418000000 | 12, 20 |
| 29 | 7606000000 | 15, 19 |
| 30 | 7606000000 | 20, 24 |
| 31 | 110126 | 26 |
| 32 | 110148 | 20 |
| 33 | 403858 | 21 |
| 34 | 40128000000 | 16, 30 |
| 35 | 15363927744 | 16 |
| 36 | 67664177712 | 19 |
| 37 | 17748 | 12 |
| 38 | 1000000 | 18, 30 |
| 39 | 382873 | 18 |
| 40 | 8906491572 | 13 |
| 41 | 41281 | 25 |
| 42 | 50000 | 14 |
| 43 | 92510 | 28 |
| 44 | 247400 | 22 |
| 45 | 138230 | 23 |
| 46 | 341102 | 29 |
| 47 | 204639 | 27 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -3860102858739767/500000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -3860102858739767/500000 | 1 | -3860102858739767/500000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1935 | -3860102858739767/500000 |

## Stage 1936

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS-/HEQ-/CFQ+/BFP+/BRS+/BQS+/EPQ+/AEQ- |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS-/HEQ-/CFQ+/BFP+/BRS+/BQS+/EPQ+/AEQ-:LH |
| Index | 0 |
| Context | 489 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1934 |
| Coordinate cut | u high 127549/250000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| b | 103767/1000000 | 21407/40000 | 103767/1000000 | 21407/40000 |
| c | 351277/500000 | 1 | 351277/500000 | 1 |
| e | 279/1000 | 59/125 | 279/1000 | 59/125 |
| f | 279/1000 | 121807/200000 | 279/1000 | 121807/200000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 22907/200000 | 6143/20000 | 22907/200000 | 6143/20000 |
| q | 137461/500000 | 641153/1000000 | 137461/500000 | 641153/1000000 |
| u | 127549/250000 | 802967/1000000 | 127549/250000 | 802967/1000000 |
| v | 2239/20000 | 379/1000 | 2239/20000 | 379/1000 |
| r | 13857/20000 | 1 | 13857/20000 | 1 |
| w | 78247/100000 | 1 | 78247/100000 | 1 |
| j | 540977/1000000 | 848397/1000000 | 540977/1000000 | 848397/1000000 |
| k | 55959/100000 | 86701/100000 | 55959/100000 | 86701/100000 |

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


## Stage 1937

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS-/HEQ-/CFQ+/BFP+/BRS+/BQS+/EPQ+/AEQ- |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS-/HEQ-/CFQ+/BFP+/BRS+/BQS+/EPQ+/AEQ-:LHL |
| Index | 0 |
| Context | 489 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1936 |
| Coordinate cut | q low 182117/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| b | 103767/1000000 | 21407/40000 | 103767/1000000 | 21407/40000 |
| c | 351277/500000 | 1 | 351277/500000 | 1 |
| e | 279/1000 | 59/125 | 279/1000 | 59/125 |
| f | 279/1000 | 121807/200000 | 279/1000 | 121807/200000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 22907/200000 | 6143/20000 | 22907/200000 | 6143/20000 |
| q | 137461/500000 | 182117/500000 | 137461/500000 | 182117/500000 |
| u | 127549/250000 | 802967/1000000 | 127549/250000 | 802967/1000000 |
| v | 2239/20000 | 379/1000 | 2239/20000 | 379/1000 |
| r | 13857/20000 | 1 | 13857/20000 | 1 |
| w | 78247/100000 | 1 | 78247/100000 | 1 |
| j | 540977/1000000 | 848397/1000000 | 540977/1000000 | 848397/1000000 |
| k | 55959/100000 | 86701/100000 | 55959/100000 | 86701/100000 |

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
| 0 | bound | `{"direction":"lo","ref":"794:3122","triangle":"ABQ","value":"65799/500000"}` | `1 * b * v + -1 * a * b + 1 * a * u + -65799/500000` |
| 1 | bound | `{"direction":"lo","ref":"794:3175","triangle":"BCQ","value":"53341/500000"}` | `1 * c * v + -1 * b * v + -53341/500000` |
| 2 | physical | `{"factor":0,"stage":794}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 3 | physical | `{"factor":106,"stage":794}` | `-1/1 * f * k + 1/1 * e * f + 1/1 * k + 1/1 * j + -1093/1000 + -1/1 * e * j` |
| 4 | physical | `{"factor":31,"stage":794}` | `-1/1 * v + 1/1 * a + 1/1 * e * u + -1/1 * a * u + -93/1000` |
| 5 | physical | `{"factor":44,"stage":794}` | `-1/1 * p * w + 1/1 * a * p + 1/1 * q * r + -1/1 * a * r + -93/1000` |
| 6 | physical | `{"factor":48,"stage":794}` | `-1/1 * r * k + 1/1 * a * r + 1/1 * w * j + -1/1 * a * j + -93/1000` |
| 7 | physical | `{"factor":69,"stage":794}` | `1/1 * b * q + 1/1 * h * p + -1/1 * b * h + -93/1000` |
| 8 | physical | `{"factor":78,"stage":794}` | `1/1 * r * k + -1/1 * b * k + -1/1 * w * j + 1/1 * b * w + -93/1000` |
| 9 | physical | `{"factor":83,"stage":794}` | `1/1 * v + -1/1 * c * v + -1/1 * e * u + 1/1 * c * e + -93/1000` |
| 10 | physical | `{"factor":84,"stage":794}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 11 | physical | `{"factor":88,"stage":794}` | `1/1 * f * v + -1/1 * c * v + -1/1 * u + 1/1 * c + -93/1000` |
| 12 | physical | `{"factor":95,"stage":794}` | `-1/1 * p * v + 1/1 * c * v + 1/1 * q * u + -1/1 * c * q + -93/1000` |
| 13 | physical | `{"factor":96,"stage":794}` | `-1/1 * p * w + 1/1 * c * w + 1/1 * q * r + -1/1 * c * q + -13857/20000` |
| 14 | coordinate | `{"box":1937,"direction":"hi","value":"59/125","variable":"a"}` | `59/125 + -1 * a` |
| 15 | coordinate | `{"box":1937,"direction":"hi","value":"21407/40000","variable":"b"}` | `21407/40000 + -1 * b` |
| 16 | coordinate | `{"box":1937,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 17 | coordinate | `{"box":1937,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 18 | coordinate | `{"box":1937,"direction":"hi","value":"848397/1000000","variable":"j"}` | `848397/1000000 + -1 * j` |
| 19 | coordinate | `{"box":1937,"direction":"hi","value":"86701/100000","variable":"k"}` | `86701/100000 + -1 * k` |
| 20 | coordinate | `{"box":1937,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 21 | coordinate | `{"box":1937,"direction":"hi","value":"59/125","variable":"e"}` | `59/125 + -1 * e` |
| 22 | coordinate | `{"box":1937,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 23 | coordinate | `{"box":1937,"direction":"hi","value":"6143/20000","variable":"p"}` | `6143/20000 + -1 * p` |
| 24 | coordinate | `{"box":1937,"direction":"hi","value":"182117/500000","variable":"q"}` | `182117/500000 + -1 * q` |
| 25 | coordinate | `{"box":1937,"direction":"hi","value":"802967/1000000","variable":"u"}` | `802967/1000000 + -1 * u` |
| 26 | coordinate | `{"box":1937,"direction":"hi","value":"379/1000","variable":"v"}` | `379/1000 + -1 * v` |
| 27 | coordinate | `{"box":1937,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 28 | coordinate | `{"box":1937,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 29 | coordinate | `{"box":1937,"direction":"lo","value":"13857/20000","variable":"r"}` | `-13857/20000 + 1 * r` |
| 30 | coordinate | `{"box":1937,"direction":"lo","value":"78247/100000","variable":"w"}` | `-78247/100000 + 1 * w` |
| 31 | coordinate | `{"box":1937,"direction":"lo","value":"540977/1000000","variable":"j"}` | `-540977/1000000 + 1 * j` |
| 32 | coordinate | `{"box":1937,"direction":"lo","value":"55959/100000","variable":"k"}` | `-55959/100000 + 1 * k` |
| 33 | coordinate | `{"box":1937,"direction":"lo","value":"351277/500000","variable":"c"}` | `-351277/500000 + 1 * c` |
| 34 | coordinate | `{"box":1937,"direction":"lo","value":"279/1000","variable":"e"}` | `-279/1000 + 1 * e` |
| 35 | coordinate | `{"box":1937,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 36 | coordinate | `{"box":1937,"direction":"lo","value":"135501/250000","variable":"h"}` | `-135501/250000 + 1 * h` |
| 37 | coordinate | `{"box":1937,"direction":"lo","value":"22907/200000","variable":"p"}` | `-22907/200000 + 1 * p` |
| 38 | coordinate | `{"box":1937,"direction":"lo","value":"127549/250000","variable":"u"}` | `-127549/250000 + 1 * u` |
| 39 | coordinate | `{"box":1937,"direction":"lo","value":"2239/20000","variable":"v"}` | `-2239/20000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 11226000000 | 2 |
| 1 | 366000000 | 0 |
| 2 | 5098000000 | 4 |
| 3 | 54343000000 | 5 |
| 4 | 54343000000 | 6 |
| 5 | 366000000 | 1 |
| 6 | 80687000000 | 7 |
| 7 | 53432000000 | 8 |
| 8 | 5098000000 | 9 |
| 9 | 16502000000 | 10 |
| 10 | 2069000000 | 11 |
| 11 | 7030000000 | 12 |
| 12 | 15377000000 | 13 |
| 13 | 8954000000 | 3 |
| 14 | 11592000000 | 27, 28 |
| 15 | 11226000000 | 20, 27 |
| 16 | 63252000000 | 28, 36 |
| 17 | 17435000000 | 15, 22 |
| 18 | 80687000000 | 24, 28 |
| 19 | 54343000000 | 23, 27 |
| 20 | 4732000000 | 27, 38 |
| 21 | 53432000000 | 17, 28 |
| 22 | 53432000000 | 28, 32 |
| 23 | 54343000000 | 27, 31 |
| 24 | 21600000000 | 20, 34 |
| 25 | 22407000000 | 20, 24 |
| 26 | 229000000 | 20, 39 |
| 27 | 1125000000 | 17, 20 |
| 28 | 8954000000 | 21, 35 |
| 29 | 16502000000 | 16, 21 |
| 30 | 8954000000 | 18, 21 |
| 31 | 2069000000 | 26, 35 |
| 32 | 8954000000 | 32, 35 |
| 33 | 34540000000 | 23, 36 |
| 34 | 46147000000 | 22, 37 |
| 35 | 7030000000 | 37, 39 |
| 36 | 7030000000 | 24, 38 |
| 37 | 69720000000 | 17, 23 |
| 38 | 69720000000 | 24, 29 |
| 39 | 911000000 | 16, 19 |
| 40 | 911000000 | 17, 31 |
| 41 | 1069950 | 26 |
| 42 | 24803 | 14 |
| 43 | 37857827809 | 24 |
| 44 | 16815604370 | 16 |
| 45 | 111950 | 20 |
| 46 | 189609 | 30 |
| 47 | 539576 | 25 |
| 48 | 578296 | 33 |
| 49 | 355656 | 19 |
| 50 | 298081 | 31 |
| 51 | 231806 | 15 |
| 52 | 161236 | 22 |
| 53 | 180259 | 37 |
| 54 | 380738 | 34 |
| 55 | 129860 | 35 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -2476626447846619/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -2476626447846619/1000000 | 1 | -2476626447846619/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1937 | -2476626447846619/1000000 |

## Stage 1938

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS-/HEQ-/CFQ+/BFP+/BRS+/BQS+/EPQ+/AEQ- |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS-/HEQ-/CFQ+/BFP+/BRS+/BQS+/EPQ+/AEQ-:LHH |
| Index | 0 |
| Context | 489 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1936 |
| Coordinate cut | q high 182117/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| b | 103767/1000000 | 21407/40000 | 103767/1000000 | 21407/40000 |
| c | 351277/500000 | 1 | 351277/500000 | 1 |
| e | 279/1000 | 59/125 | 279/1000 | 59/125 |
| f | 279/1000 | 121807/200000 | 279/1000 | 121807/200000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 22907/200000 | 6143/20000 | 22907/200000 | 6143/20000 |
| q | 182117/500000 | 641153/1000000 | 182117/500000 | 641153/1000000 |
| u | 127549/250000 | 802967/1000000 | 127549/250000 | 802967/1000000 |
| v | 2239/20000 | 379/1000 | 2239/20000 | 379/1000 |
| r | 13857/20000 | 1 | 13857/20000 | 1 |
| w | 78247/100000 | 1 | 78247/100000 | 1 |
| j | 540977/1000000 | 848397/1000000 | 540977/1000000 | 848397/1000000 |
| k | 55959/100000 | 86701/100000 | 55959/100000 | 86701/100000 |

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


## Stage 1939

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS-/HEQ-/CFQ+/BFP+/BRS+/BQS+/EPQ+/AEQ- |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS-/HEQ-/CFQ+/BFP+/BRS+/BQS+/EPQ+/AEQ-:LHHL |
| Index | 0 |
| Context | 489 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1938 |
| Coordinate cut | h low 322309/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| b | 103767/1000000 | 21407/40000 | 103767/1000000 | 21407/40000 |
| c | 351277/500000 | 1 | 351277/500000 | 1 |
| e | 279/1000 | 59/125 | 279/1000 | 59/125 |
| f | 279/1000 | 121807/200000 | 279/1000 | 121807/200000 |
| h | 135501/250000 | 322309/500000 | 135501/250000 | 322309/500000 |
| p | 22907/200000 | 6143/20000 | 22907/200000 | 6143/20000 |
| q | 182117/500000 | 641153/1000000 | 182117/500000 | 641153/1000000 |
| u | 127549/250000 | 802967/1000000 | 127549/250000 | 802967/1000000 |
| v | 2239/20000 | 379/1000 | 2239/20000 | 379/1000 |
| r | 13857/20000 | 1 | 13857/20000 | 1 |
| w | 78247/100000 | 1 | 78247/100000 | 1 |
| j | 540977/1000000 | 848397/1000000 | 540977/1000000 | 848397/1000000 |
| k | 55959/100000 | 86701/100000 | 55959/100000 | 86701/100000 |

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
| 0 | bound | `{"direction":"lo","ref":"794:3267","triangle":"ABR","value":"218019/500000"}` | `1 * b * w + -1 * a * b + 1 * a * r + -218019/500000` |
| 1 | bound | `{"direction":"lo","ref":"794:3319","triangle":"BPR","value":"38181/100000"}` | `-1 * p * w + 1 * b * w + 1 * q * r + -1 * b * q + -38181/100000` |
| 2 | physical | `{"factor":153,"stage":794}` | `1/1 * c * h * p + -1/1 * b * h * p + -93/1000 * c + -93/1000 * b` |
| 3 | physical | `{"factor":39,"stage":794}` | `1/1 * h * p + -1/1 * a * p + -93/1000` |
| 4 | physical | `{"factor":44,"stage":794}` | `-1/1 * p * w + 1/1 * a * p + 1/1 * q * r + -1/1 * a * r + -93/1000` |
| 5 | physical | `{"factor":69,"stage":794}` | `1/1 * b * q + 1/1 * h * p + -1/1 * b * h + -93/1000` |
| 6 | physical | `{"factor":84,"stage":794}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 7 | physical | `{"factor":91,"stage":794}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 8 | physical | `{"factor":96,"stage":794}` | `-1/1 * p * w + 1/1 * c * w + 1/1 * q * r + -1/1 * c * q + -13857/20000` |
| 9 | coordinate | `{"box":1939,"direction":"hi","value":"59/125","variable":"a"}` | `59/125 + -1 * a` |
| 10 | coordinate | `{"box":1939,"direction":"hi","value":"21407/40000","variable":"b"}` | `21407/40000 + -1 * b` |
| 11 | coordinate | `{"box":1939,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 12 | coordinate | `{"box":1939,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 13 | coordinate | `{"box":1939,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 14 | coordinate | `{"box":1939,"direction":"hi","value":"59/125","variable":"e"}` | `59/125 + -1 * e` |
| 15 | coordinate | `{"box":1939,"direction":"hi","value":"322309/500000","variable":"h"}` | `322309/500000 + -1 * h` |
| 16 | coordinate | `{"box":1939,"direction":"hi","value":"6143/20000","variable":"p"}` | `6143/20000 + -1 * p` |
| 17 | coordinate | `{"box":1939,"direction":"hi","value":"641153/1000000","variable":"q"}` | `641153/1000000 + -1 * q` |
| 18 | coordinate | `{"box":1939,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 19 | coordinate | `{"box":1939,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 20 | coordinate | `{"box":1939,"direction":"lo","value":"13857/20000","variable":"r"}` | `-13857/20000 + 1 * r` |
| 21 | coordinate | `{"box":1939,"direction":"lo","value":"78247/100000","variable":"w"}` | `-78247/100000 + 1 * w` |
| 22 | coordinate | `{"box":1939,"direction":"lo","value":"351277/500000","variable":"c"}` | `-351277/500000 + 1 * c` |
| 23 | coordinate | `{"box":1939,"direction":"lo","value":"279/1000","variable":"e"}` | `-279/1000 + 1 * e` |
| 24 | coordinate | `{"box":1939,"direction":"lo","value":"135501/250000","variable":"h"}` | `-135501/250000 + 1 * h` |
| 25 | coordinate | `{"box":1939,"direction":"lo","value":"22907/200000","variable":"p"}` | `-22907/200000 + 1 * p` |
| 26 | coordinate | `{"box":1939,"direction":"lo","value":"182117/500000","variable":"q"}` | `-182117/500000 + 1 * q` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 17567000000000000 | 0 |
| 1 | 15744000000000000 | 3 |
| 2 | 15744000000000000 | 4 |
| 3 | 46102000000000000 | 5 |
| 4 | 19362000000000000 | 1 |
| 5 | 35233000000000000 | 6 |
| 6 | 74585000000000000 | 7 |
| 7 | 10032000000000000 | 8 |
| 8 | 90673000000000000 | 2 |
| 9 | 17567000000000000 | 18, 19 |
| 10 | 56487000000000000 | 10, 15 |
| 11 | 26740000000000000 | 10, 26 |
| 12 | 36928000000000000 | 12, 19 |
| 13 | 1823000000000000 | 11, 18 |
| 14 | 35233000000000000 | 13, 23 |
| 15 | 83511000000000000 | 15, 22 |
| 16 | 84617000000000000 | 22, 26 |
| 17 | 25201000000000000 | 12, 13 |
| 18 | 35233000000000000 | 11, 14 |
| 19 | 45138000000000000 | 12, 16 |
| 20 | 45138000000000000 | 11, 26 |
| 21 | 90673000000000000 | 13, 24, 25 |
| 22 | 1459232055000000 | 13, 24 |
| 23 | 49145128692000000 | 13, 25 |
| 24 | 77934000000000000 | 15, 25 |
| 25 | 90673000000000000 | 19, 24, 25 |
| 26 | 49145128692000000 | 19, 25 |
| 27 | 9408865191000000 | 24, 25 |
| 28 | 1000000000000 | 10, 21 |
| 29 | 782470000000 | 10 |
| 30 | 535175000000 | 12 |
| 31 | 28440727559000000 | 15 |
| 32 | 644618000000 | 16 |
| 33 | 232055000000 | 19, 24 |
| 34 | 509469738220 | 19 |
| 35 | 24079651185 | 24 |
| 36 | 228924000000 | 21 |
| 37 | 30436234620 | 13 |
| 38 | 397405496400 | 22 |
| 39 | 125111000000 | 9 |
| 40 | 567682000000 | 17 |
| 41 | 14467000000 | 20 |
| 42 | 627974982764 | 25 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -167960531061058134017/50000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -167960531061058134017/50000 | 1 | -167960531061058134017/50000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1939 | -167960531061058134017/50000 |
