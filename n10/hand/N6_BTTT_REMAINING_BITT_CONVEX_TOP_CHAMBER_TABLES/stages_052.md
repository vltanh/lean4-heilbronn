# BITT convex: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 260

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS+/CQS- |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS+/CQS-:LHLHHHHL |
| Index | 0 |
| Context | 30 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 259 |
| Coordinate cut | f low 45981/200000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 609783/1000000 | 1 | 609783/1000000 | 1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 103767/1000000 | 45981/200000 | 103767/1000000 | 45981/200000 |
| h | 385501/500000 | 1 | 385501/500000 | 1 |
| p | 196767/1000000 | 590123/1000000 | 196767/1000000 | 590123/1000000 |
| q | 267769/1000000 | 583187/1000000 | 267769/1000000 | 583187/1000000 |
| u | 35199/62500 | 876973/1000000 | 35199/62500 | 876973/1000000 |
| v | 25071/100000 | 61813/100000 | 25071/100000 | 61813/100000 |
| r | 732787/1000000 | 1 | 732787/1000000 | 1 |
| w | 565491/1000000 | 440113/500000 | 565491/1000000 | 440113/500000 |
| j | 579567/1000000 | 440113/500000 | 579567/1000000 | 440113/500000 |
| k | 796617/1000000 | 1 | 796617/1000000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"85:1633","triangle":"EFH","value":"200011/500000"}` | `1 * f * h + -1 * e * f + -1 * h + 299989/500000` |
| 1 | bound | `{"direction":"lo","ref":"85:1657","triangle":"ARS","value":"49327/125000"}` | `1 * r * k + -1 * a * r + -1 * w * j + 1 * a * j + -49327/125000` |
| 2 | physical | `{"factor":106,"stage":85}` | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 3 | physical | `{"factor":111,"stage":85}` | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 4 | physical | `{"factor":119,"stage":85}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 5 | physical | `{"factor":13,"stage":85}` | `1/1 * b * k + -1/1 * a * b + 1/1 * a * j + -279/1000` |
| 6 | physical | `{"factor":141,"stage":85}` | `1/1 * e + -1/1 * a` |
| 7 | physical | `{"factor":47,"stage":85}` | `1/1 * c * e + -1/1 * b * e + -93/1000` |
| 8 | physical | `{"factor":77,"stage":85}` | `1/1 * u * w + -1/1 * b * w + -1/1 * v * r + 1/1 * b * v + -93/1000` |
| 9 | physical | `{"factor":80,"stage":85}` | `721/1000 + -1/1 * c + -1/1 * e * f + 1/1 * c * e` |
| 10 | coordinate | `{"box":260,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 11 | coordinate | `{"box":260,"direction":"hi","value":"440113/500000","variable":"w"}` | `440113/500000 + -1 * w` |
| 12 | coordinate | `{"box":260,"direction":"hi","value":"440113/500000","variable":"j"}` | `440113/500000 + -1 * j` |
| 13 | coordinate | `{"box":260,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 14 | coordinate | `{"box":260,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 15 | coordinate | `{"box":260,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 16 | coordinate | `{"box":260,"direction":"hi","value":"45981/200000","variable":"f"}` | `45981/200000 + -1 * f` |
| 17 | coordinate | `{"box":260,"direction":"hi","value":"876973/1000000","variable":"u"}` | `876973/1000000 + -1 * u` |
| 18 | coordinate | `{"box":260,"direction":"hi","value":"61813/100000","variable":"v"}` | `61813/100000 + -1 * v` |
| 19 | coordinate | `{"box":260,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 20 | coordinate | `{"box":260,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 21 | coordinate | `{"box":260,"direction":"lo","value":"732787/1000000","variable":"r"}` | `-732787/1000000 + 1 * r` |
| 22 | coordinate | `{"box":260,"direction":"lo","value":"565491/1000000","variable":"w"}` | `-565491/1000000 + 1 * w` |
| 23 | coordinate | `{"box":260,"direction":"lo","value":"579567/1000000","variable":"j"}` | `-579567/1000000 + 1 * j` |
| 24 | coordinate | `{"box":260,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 25 | coordinate | `{"box":260,"direction":"lo","value":"385501/500000","variable":"h"}` | `-385501/500000 + 1 * h` |
| 26 | coordinate | `{"box":260,"direction":"lo","value":"35199/62500","variable":"u"}` | `-35199/62500 + 1 * u` |
| 27 | coordinate | `{"box":260,"direction":"lo","value":"25071/100000","variable":"v"}` | `-25071/100000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 6255000000 | 5 |
| 1 | 657000000 | 1 |
| 2 | 54640000000 | 7 |
| 3 | 1212000000 | 8 |
| 4 | 6326000000 | 9 |
| 5 | 251145000000 | 0 |
| 6 | 4685000000 | 2 |
| 7 | 4694000000 | 3 |
| 8 | 179000000 | 4 |
| 9 | 4954000000 | 6 |
| 10 | 6255000000 | 19, 20 |
| 11 | 54640000000 | 20, 24 |
| 12 | 1212000000 | 18, 20 |
| 13 | 1212000000 | 20, 22 |
| 14 | 657000000 | 19, 21 |
| 15 | 6255000000 | 13, 20 |
| 16 | 6912000000 | 12, 19 |
| 17 | 60966000000 | 14, 24 |
| 18 | 262156000000 | 15, 16 |
| 19 | 9000000 | 24, 26 |
| 20 | 179000000 | 21, 24 |
| 21 | 179000000 | 12, 24 |
| 22 | 251145000000 | 16, 25 |
| 23 | 4685000000 | 16, 27 |
| 24 | 4694000000 | 17, 25 |
| 25 | 1212000000 | 11, 26 |
| 26 | 1212000000 | 10, 18 |
| 27 | 836000000 | 13, 21 |
| 28 | 836000000 | 11, 12 |
| 29 | 258922 | 14 |
| 30 | 193982997513 | 25 |
| 31 | 129471 | 27 |
| 32 | 16603 | 26 |
| 33 | 1082672517 | 13 |
| 34 | 55532 | 22 |
| 35 | 518865 | 15 |
| 36 | 381532 | 19 |
| 37 | 92997 | 20 |
| 38 | 77228 | 10 |
| 39 | 57139 | 23 |
| 40 | 92304877640 | 16 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -6538442877323379/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -6538442877323379/1000000 | 1 | -6538442877323379/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 260 | -6538442877323379/1000000 |

## Stage 261

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS+/CQS- |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS+/CQS-:LHLHHHHH |
| Index | 0 |
| Context | 30 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 259 |
| Coordinate cut | f high 45981/200000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 609783/1000000 | 1 | 609783/1000000 | 1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 45981/200000 | 58493/100000 | 45981/200000 | 58493/100000 |
| h | 385501/500000 | 1 | 385501/500000 | 1 |
| p | 196767/1000000 | 590123/1000000 | 196767/1000000 | 590123/1000000 |
| q | 267769/1000000 | 583187/1000000 | 267769/1000000 | 583187/1000000 |
| u | 35199/62500 | 876973/1000000 | 35199/62500 | 876973/1000000 |
| v | 25071/100000 | 61813/100000 | 25071/100000 | 61813/100000 |
| r | 732787/1000000 | 1 | 732787/1000000 | 1 |
| w | 565491/1000000 | 440113/500000 | 565491/1000000 | 440113/500000 |
| j | 579567/1000000 | 440113/500000 | 579567/1000000 | 440113/500000 |
| k | 796617/1000000 | 1 | 796617/1000000 | 1 |

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


## Stage 262

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS+/CQS- |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS+/CQS-:LHLHHHHHL |
| Index | 0 |
| Context | 30 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 261 |
| Coordinate cut | p low 218683/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 609783/1000000 | 1 | 609783/1000000 | 1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 45981/200000 | 58493/100000 | 45981/200000 | 58493/100000 |
| h | 385501/500000 | 1 | 385501/500000 | 1 |
| p | 196767/1000000 | 218683/500000 | 196767/1000000 | 218683/500000 |
| q | 267769/1000000 | 583187/1000000 | 267769/1000000 | 583187/1000000 |
| u | 35199/62500 | 876973/1000000 | 35199/62500 | 876973/1000000 |
| v | 25071/100000 | 61813/100000 | 25071/100000 | 61813/100000 |
| r | 732787/1000000 | 1 | 732787/1000000 | 1 |
| w | 565491/1000000 | 440113/500000 | 565491/1000000 | 440113/500000 |
| j | 579567/1000000 | 440113/500000 | 579567/1000000 | 440113/500000 |
| k | 796617/1000000 | 1 | 796617/1000000 | 1 |

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


## Stage 263

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS+/CQS- |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS+/CQS-:LHLHHHHHLL |
| Index | 0 |
| Context | 30 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 262 |
| Coordinate cut | v low 191903/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 609783/1000000 | 1 | 609783/1000000 | 1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 45981/200000 | 58493/100000 | 45981/200000 | 58493/100000 |
| h | 385501/500000 | 1 | 385501/500000 | 1 |
| p | 196767/1000000 | 218683/500000 | 196767/1000000 | 218683/500000 |
| q | 267769/1000000 | 583187/1000000 | 267769/1000000 | 583187/1000000 |
| u | 35199/62500 | 876973/1000000 | 35199/62500 | 876973/1000000 |
| v | 25071/100000 | 191903/500000 | 25071/100000 | 191903/500000 |
| r | 732787/1000000 | 1 | 732787/1000000 | 1 |
| w | 565491/1000000 | 440113/500000 | 565491/1000000 | 440113/500000 |
| j | 579567/1000000 | 440113/500000 | 579567/1000000 | 440113/500000 |
| k | 796617/1000000 | 1 | 796617/1000000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"85:1657","triangle":"ARS","value":"49327/125000"}` | `1 * r * k + -1 * a * r + -1 * w * j + 1 * a * j + -49327/125000` |
| 1 | physical | `{"factor":101,"stage":85}` | `-1/1 * u * k + 1/1 * c * k + 1/1 * v * j + -1/1 * c * v + -93/1000` |
| 2 | physical | `{"factor":106,"stage":85}` | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 3 | physical | `{"factor":111,"stage":85}` | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 4 | physical | `{"factor":119,"stage":85}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 5 | physical | `{"factor":13,"stage":85}` | `1/1 * b * k + -1/1 * a * b + 1/1 * a * j + -279/1000` |
| 6 | physical | `{"factor":141,"stage":85}` | `1/1 * e + -1/1 * a` |
| 7 | physical | `{"factor":42,"stage":85}` | `-1/1 * p * w + 1/1 * a * p + 1/1 * q * r + -1/1 * a * r + -93/1000` |
| 8 | physical | `{"factor":43,"stage":85}` | `1/1 * p * k + -1/1 * a * p + -1/1 * q * j + 1/1 * a * j + -93/1000` |
| 9 | physical | `{"factor":47,"stage":85}` | `1/1 * c * e + -1/1 * b * e + -93/1000` |
| 10 | physical | `{"factor":65,"stage":85}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 11 | physical | `{"factor":76,"stage":85}` | `-1/1 * p * k + 1/1 * b * k + 1/1 * q * j + -1/1 * b * q + -93/1000` |
| 12 | physical | `{"factor":77,"stage":85}` | `1/1 * u * w + -1/1 * b * w + -1/1 * v * r + 1/1 * b * v + -93/1000` |
| 13 | physical | `{"factor":80,"stage":85}` | `721/1000 + -1/1 * c + -1/1 * e * f + 1/1 * c * e` |
| 14 | physical | `{"factor":90,"stage":85}` | `-1/1 * f * v + 1/1 * c * v + 1/1 * u + -1/1 * c + -93/1000` |
| 15 | physical | `{"factor":93,"stage":85}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 16 | coordinate | `{"box":263,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 17 | coordinate | `{"box":263,"direction":"hi","value":"6143/20000","variable":"b"}` | `6143/20000 + -1 * b` |
| 18 | coordinate | `{"box":263,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 19 | coordinate | `{"box":263,"direction":"hi","value":"440113/500000","variable":"w"}` | `440113/500000 + -1 * w` |
| 20 | coordinate | `{"box":263,"direction":"hi","value":"440113/500000","variable":"j"}` | `440113/500000 + -1 * j` |
| 21 | coordinate | `{"box":263,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 22 | coordinate | `{"box":263,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 23 | coordinate | `{"box":263,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 24 | coordinate | `{"box":263,"direction":"hi","value":"58493/100000","variable":"f"}` | `58493/100000 + -1 * f` |
| 25 | coordinate | `{"box":263,"direction":"hi","value":"218683/500000","variable":"p"}` | `218683/500000 + -1 * p` |
| 26 | coordinate | `{"box":263,"direction":"hi","value":"583187/1000000","variable":"q"}` | `583187/1000000 + -1 * q` |
| 27 | coordinate | `{"box":263,"direction":"hi","value":"876973/1000000","variable":"u"}` | `876973/1000000 + -1 * u` |
| 28 | coordinate | `{"box":263,"direction":"hi","value":"191903/500000","variable":"v"}` | `191903/500000 + -1 * v` |
| 29 | coordinate | `{"box":263,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 30 | coordinate | `{"box":263,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 31 | coordinate | `{"box":263,"direction":"lo","value":"565491/1000000","variable":"w"}` | `-565491/1000000 + 1 * w` |
| 32 | coordinate | `{"box":263,"direction":"lo","value":"579567/1000000","variable":"j"}` | `-579567/1000000 + 1 * j` |
| 33 | coordinate | `{"box":263,"direction":"lo","value":"796617/1000000","variable":"k"}` | `-796617/1000000 + 1 * k` |
| 34 | coordinate | `{"box":263,"direction":"lo","value":"609783/1000000","variable":"c"}` | `-609783/1000000 + 1 * c` |
| 35 | coordinate | `{"box":263,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 36 | coordinate | `{"box":263,"direction":"lo","value":"45981/200000","variable":"f"}` | `-45981/200000 + 1 * f` |
| 37 | coordinate | `{"box":263,"direction":"lo","value":"385501/500000","variable":"h"}` | `-385501/500000 + 1 * h` |
| 38 | coordinate | `{"box":263,"direction":"lo","value":"196767/1000000","variable":"p"}` | `-196767/1000000 + 1 * p` |
| 39 | coordinate | `{"box":263,"direction":"lo","value":"267769/1000000","variable":"q"}` | `-267769/1000000 + 1 * q` |
| 40 | coordinate | `{"box":263,"direction":"lo","value":"25071/100000","variable":"v"}` | `-25071/100000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 4739000000 | 5 |
| 1 | 21841000000 | 7 |
| 2 | 21443000000 | 8 |
| 3 | 6788000000 | 0 |
| 4 | 19207000000 | 9 |
| 5 | 6547000000 | 10 |
| 6 | 6547000000 | 11 |
| 7 | 12407000000 | 12 |
| 8 | 1522000000 | 13 |
| 9 | 51454000000 | 14 |
| 10 | 11846000000 | 15 |
| 11 | 40758000000 | 1 |
| 12 | 77343000000 | 2 |
| 13 | 77343000000 | 3 |
| 14 | 5670000000 | 4 |
| 15 | 74000000 | 6 |
| 16 | 4739000000 | 29, 30 |
| 17 | 19207000000 | 30, 35 |
| 18 | 398000000 | 25, 29 |
| 19 | 12407000000 | 28, 30 |
| 20 | 12407000000 | 30, 31 |
| 21 | 28629000000 | 16, 18 |
| 22 | 11286000000 | 21, 30 |
| 23 | 32970000000 | 20, 29 |
| 24 | 20729000000 | 22, 35 |
| 25 | 11846000000 | 22, 37 |
| 26 | 11846000000 | 34, 39 |
| 27 | 10695000000 | 28, 34 |
| 28 | 40758000000 | 21, 34 |
| 29 | 78865000000 | 35, 36 |
| 30 | 5670000000 | 18, 23 |
| 31 | 5670000000 | 20, 35 |
| 32 | 6547000000 | 36, 39 |
| 33 | 25890000000 | 28, 36 |
| 34 | 11846000000 | 37, 38 |
| 35 | 77343000000 | 27, 37 |
| 36 | 21841000000 | 31, 38 |
| 37 | 21841000000 | 18, 39 |
| 38 | 14896000000 | 21, 38 |
| 39 | 14896000000 | 20, 26 |
| 40 | 12407000000 | 27, 31 |
| 41 | 12407000000 | 18, 28 |
| 42 | 40758000000 | 21, 27 |
| 43 | 40758000000 | 28, 32 |
| 44 | 12458000000 | 18, 33 |
| 45 | 12458000000 | 19, 20 |
| 46 | 120643 | 25 |
| 47 | 29623 | 17 |
| 48 | 910569 | 34 |
| 49 | 1000000 | 36, 40 |
| 50 | 250710 | 36 |
| 51 | 229905 | 40 |
| 52 | 1000000 | 22, 40 |
| 53 | 250710 | 22 |
| 54 | 24977298590 | 28 |
| 55 | 654523 | 27 |
| 56 | 179143 | 37 |
| 57 | 25574 | 21 |
| 58 | 276713 | 31 |
| 59 | 629174 | 35 |
| 60 | 371075 | 16 |
| 61 | 348923 | 18 |
| 62 | 287232 | 32 |
| 63 | 476051 | 26 |
| 64 | 69242 | 24 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -2856589401808143/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -2856589401808143/1000000 | 1 | -2856589401808143/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 263 | -2856589401808143/1000000 |

## Stage 264

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS+/CQS- |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS+/CQS-:LHLHHHHHLH |
| Index | 0 |
| Context | 30 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 262 |
| Coordinate cut | v high 191903/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 609783/1000000 | 1 | 609783/1000000 | 1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 45981/200000 | 58493/100000 | 45981/200000 | 58493/100000 |
| h | 385501/500000 | 1 | 385501/500000 | 1 |
| p | 196767/1000000 | 218683/500000 | 196767/1000000 | 218683/500000 |
| q | 267769/1000000 | 583187/1000000 | 267769/1000000 | 583187/1000000 |
| u | 35199/62500 | 876973/1000000 | 35199/62500 | 876973/1000000 |
| v | 191903/500000 | 61813/100000 | 191903/500000 | 61813/100000 |
| r | 732787/1000000 | 1 | 732787/1000000 | 1 |
| w | 565491/1000000 | 440113/500000 | 565491/1000000 | 440113/500000 |
| j | 579567/1000000 | 440113/500000 | 579567/1000000 | 440113/500000 |
| k | 796617/1000000 | 1 | 796617/1000000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"85:1336","triangle":"EQR","value":"60971/500000"}` | `-1 * u * w + 1 * e * u + 1 * w + 1 * v * r + -1 * v + -1 * e * r + -60971/500000` |
| 1 | bound | `{"direction":"lo","ref":"85:1657","triangle":"ARS","value":"49327/125000"}` | `1 * r * k + -1 * a * r + -1 * w * j + 1 * a * j + -49327/125000` |
| 2 | physical | `{"factor":101,"stage":85}` | `-1/1 * u * k + 1/1 * c * k + 1/1 * v * j + -1/1 * c * v + -93/1000` |
| 3 | physical | `{"factor":106,"stage":85}` | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 4 | physical | `{"factor":111,"stage":85}` | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 5 | physical | `{"factor":13,"stage":85}` | `1/1 * b * k + -1/1 * a * b + 1/1 * a * j + -279/1000` |
| 6 | physical | `{"factor":42,"stage":85}` | `-1/1 * p * w + 1/1 * a * p + 1/1 * q * r + -1/1 * a * r + -93/1000` |
| 7 | physical | `{"factor":43,"stage":85}` | `1/1 * p * k + -1/1 * a * p + -1/1 * q * j + 1/1 * a * j + -93/1000` |
| 8 | physical | `{"factor":65,"stage":85}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 9 | physical | `{"factor":76,"stage":85}` | `-1/1 * p * k + 1/1 * b * k + 1/1 * q * j + -1/1 * b * q + -93/1000` |
| 10 | physical | `{"factor":77,"stage":85}` | `1/1 * u * w + -1/1 * b * w + -1/1 * v * r + 1/1 * b * v + -93/1000` |
| 11 | physical | `{"factor":80,"stage":85}` | `721/1000 + -1/1 * c + -1/1 * e * f + 1/1 * c * e` |
| 12 | physical | `{"factor":90,"stage":85}` | `-1/1 * f * v + 1/1 * c * v + 1/1 * u + -1/1 * c + -93/1000` |
| 13 | physical | `{"factor":93,"stage":85}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 14 | coordinate | `{"box":264,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 15 | coordinate | `{"box":264,"direction":"hi","value":"6143/20000","variable":"b"}` | `6143/20000 + -1 * b` |
| 16 | coordinate | `{"box":264,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 17 | coordinate | `{"box":264,"direction":"hi","value":"440113/500000","variable":"w"}` | `440113/500000 + -1 * w` |
| 18 | coordinate | `{"box":264,"direction":"hi","value":"440113/500000","variable":"j"}` | `440113/500000 + -1 * j` |
| 19 | coordinate | `{"box":264,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 20 | coordinate | `{"box":264,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 21 | coordinate | `{"box":264,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 22 | coordinate | `{"box":264,"direction":"hi","value":"58493/100000","variable":"f"}` | `58493/100000 + -1 * f` |
| 23 | coordinate | `{"box":264,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 24 | coordinate | `{"box":264,"direction":"hi","value":"583187/1000000","variable":"q"}` | `583187/1000000 + -1 * q` |
| 25 | coordinate | `{"box":264,"direction":"hi","value":"876973/1000000","variable":"u"}` | `876973/1000000 + -1 * u` |
| 26 | coordinate | `{"box":264,"direction":"hi","value":"61813/100000","variable":"v"}` | `61813/100000 + -1 * v` |
| 27 | coordinate | `{"box":264,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 28 | coordinate | `{"box":264,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 29 | coordinate | `{"box":264,"direction":"lo","value":"732787/1000000","variable":"r"}` | `-732787/1000000 + 1 * r` |
| 30 | coordinate | `{"box":264,"direction":"lo","value":"565491/1000000","variable":"w"}` | `-565491/1000000 + 1 * w` |
| 31 | coordinate | `{"box":264,"direction":"lo","value":"579567/1000000","variable":"j"}` | `-579567/1000000 + 1 * j` |
| 32 | coordinate | `{"box":264,"direction":"lo","value":"609783/1000000","variable":"c"}` | `-609783/1000000 + 1 * c` |
| 33 | coordinate | `{"box":264,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 34 | coordinate | `{"box":264,"direction":"lo","value":"45981/200000","variable":"f"}` | `-45981/200000 + 1 * f` |
| 35 | coordinate | `{"box":264,"direction":"lo","value":"385501/500000","variable":"h"}` | `-385501/500000 + 1 * h` |
| 36 | coordinate | `{"box":264,"direction":"lo","value":"196767/1000000","variable":"p"}` | `-196767/1000000 + 1 * p` |
| 37 | coordinate | `{"box":264,"direction":"lo","value":"267769/1000000","variable":"q"}` | `-267769/1000000 + 1 * q` |
| 38 | coordinate | `{"box":264,"direction":"lo","value":"35199/62500","variable":"u"}` | `-35199/62500 + 1 * u` |
| 39 | coordinate | `{"box":264,"direction":"lo","value":"191903/500000","variable":"v"}` | `-191903/500000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 906000000 | 5 |
| 1 | 10654000000 | 6 |
| 2 | 12234000000 | 7 |
| 3 | 25896000000 | 1 |
| 4 | 12234000000 | 8 |
| 5 | 12234000000 | 9 |
| 6 | 39153000000 | 10 |
| 7 | 1643000000 | 11 |
| 8 | 48836000000 | 12 |
| 9 | 7841000000 | 13 |
| 10 | 48836000000 | 2 |
| 11 | 65389000000 | 3 |
| 12 | 51193000000 | 4 |
| 13 | 9147000000 | 0 |
| 14 | 906000000 | 27, 28 |
| 15 | 1580000000 | 27, 36 |
| 16 | 26893000000 | 26, 28 |
| 17 | 12260000000 | 15, 39 |
| 18 | 39153000000 | 28, 30 |
| 19 | 9709000000 | 27, 29 |
| 20 | 26841000000 | 14, 16 |
| 21 | 13140000000 | 19, 28 |
| 22 | 39036000000 | 18, 27 |
| 23 | 1643000000 | 20, 33 |
| 24 | 7841000000 | 20, 35 |
| 25 | 7841000000 | 20, 24 |
| 26 | 48836000000 | 19, 32 |
| 27 | 67032000000 | 33, 34 |
| 28 | 23342000000 | 25, 33 |
| 29 | 9147000000 | 29, 33 |
| 30 | 12234000000 | 34, 37 |
| 31 | 16552000000 | 26, 34 |
| 32 | 7841000000 | 35, 36 |
| 33 | 51193000000 | 25, 35 |
| 34 | 10654000000 | 30, 36 |
| 35 | 10654000000 | 16, 37 |
| 36 | 20741000000 | 17, 38 |
| 37 | 9265000000 | 25, 30 |
| 38 | 30006000000 | 16, 26 |
| 39 | 48836000000 | 19, 25 |
| 40 | 48836000000 | 18, 39 |
| 41 | 25896000000 | 19, 29 |
| 42 | 25896000000 | 17, 18 |
| 43 | 119656 | 36 |
| 44 | 149625 | 15 |
| 45 | 146596 | 20 |
| 46 | 1000000 | 22, 39 |
| 47 | 383806 | 22 |
| 48 | 584930 | 26 |
| 49 | 923719 | 38 |
| 50 | 630573 | 39 |
| 51 | 1000000 | 21, 38 |
| 52 | 563184 | 21 |
| 53 | 391000 | 25 |
| 54 | 28742 | 23 |
| 55 | 323276 | 30 |
| 56 | 31609 | 27 |
| 57 | 358444 | 16 |
| 58 | 7291259692 | 19 |
| 59 | 134068 | 31 |
| 60 | 490883 | 33 |
| 61 | 342230 | 24 |
| 62 | 307730 | 34 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -6763799431589/125000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -6763799431589/125000 | 1 | -6763799431589/125000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 264 | -6763799431589/125000 |
