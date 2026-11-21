# BITT convex: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 265

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS+/CQS- |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS+/CQS-:LHLHHHHHH |
| Index | 0 |
| Context | 30 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 261 |
| Coordinate cut | p high 218683/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 609783/1000000 | 1 | 609783/1000000 | 1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 45981/200000 | 58493/100000 | 45981/200000 | 58493/100000 |
| h | 385501/500000 | 1 | 385501/500000 | 1 |
| p | 218683/500000 | 590123/1000000 | 218683/500000 | 590123/1000000 |
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
| 0 | bound | `{"direction":"lo","ref":"85:1072","triangle":"EPQ","value":"48949/500000"}` | `-1 * p * v + 1 * e * p + 1 * v + 1 * q * u + -1 * q + -1 * e * u + -48949/500000` |
| 1 | bound | `{"direction":"lo","ref":"85:1468","triangle":"EPR","value":"318939/1000000"}` | `-1 * p * w + 1 * e * p + 1 * w + 1 * q * r + -1 * q + -1 * e * r + -318939/1000000` |
| 2 | bound | `{"direction":"lo","ref":"85:1633","triangle":"EFH","value":"200011/500000"}` | `1 * f * h + -1 * e * f + -1 * h + 299989/500000` |
| 3 | bound | `{"direction":"lo","ref":"85:1654","triangle":"PQS","value":"1503/10000"}` | `1 * u * k + -1 * q * u + -1 * p * k + -1 * v * j + 1 * p * v + 1 * q * j + -1503/10000` |
| 4 | bound | `{"direction":"lo","ref":"85:1657","triangle":"ARS","value":"49327/125000"}` | `1 * r * k + -1 * a * r + -1 * w * j + 1 * a * j + -49327/125000` |
| 5 | physical | `{"factor":0,"stage":85}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 6 | physical | `{"factor":101,"stage":85}` | `-1/1 * u * k + 1/1 * c * k + 1/1 * v * j + -1/1 * c * v + -93/1000` |
| 7 | physical | `{"factor":106,"stage":85}` | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 8 | physical | `{"factor":123,"stage":85}` | `-1/1 * f * k + -1/1 * h * j + 1/1 * f * h + 1/1 * j + -93/1000` |
| 9 | physical | `{"factor":42,"stage":85}` | `-1/1 * p * w + 1/1 * a * p + 1/1 * q * r + -1/1 * a * r + -93/1000` |
| 10 | physical | `{"factor":43,"stage":85}` | `1/1 * p * k + -1/1 * a * p + -1/1 * q * j + 1/1 * a * j + -93/1000` |
| 11 | physical | `{"factor":76,"stage":85}` | `-1/1 * p * k + 1/1 * b * k + 1/1 * q * j + -1/1 * b * q + -93/1000` |
| 12 | physical | `{"factor":80,"stage":85}` | `721/1000 + -1/1 * c + -1/1 * e * f + 1/1 * c * e` |
| 13 | physical | `{"factor":90,"stage":85}` | `-1/1 * f * v + 1/1 * c * v + 1/1 * u + -1/1 * c + -93/1000` |
| 14 | physical | `{"factor":93,"stage":85}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 15 | coordinate | `{"box":265,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 16 | coordinate | `{"box":265,"direction":"hi","value":"6143/20000","variable":"b"}` | `6143/20000 + -1 * b` |
| 17 | coordinate | `{"box":265,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 18 | coordinate | `{"box":265,"direction":"hi","value":"440113/500000","variable":"w"}` | `440113/500000 + -1 * w` |
| 19 | coordinate | `{"box":265,"direction":"hi","value":"440113/500000","variable":"j"}` | `440113/500000 + -1 * j` |
| 20 | coordinate | `{"box":265,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 21 | coordinate | `{"box":265,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 22 | coordinate | `{"box":265,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 23 | coordinate | `{"box":265,"direction":"hi","value":"58493/100000","variable":"f"}` | `58493/100000 + -1 * f` |
| 24 | coordinate | `{"box":265,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 25 | coordinate | `{"box":265,"direction":"hi","value":"590123/1000000","variable":"p"}` | `590123/1000000 + -1 * p` |
| 26 | coordinate | `{"box":265,"direction":"hi","value":"583187/1000000","variable":"q"}` | `583187/1000000 + -1 * q` |
| 27 | coordinate | `{"box":265,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 28 | coordinate | `{"box":265,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 29 | coordinate | `{"box":265,"direction":"lo","value":"732787/1000000","variable":"r"}` | `-732787/1000000 + 1 * r` |
| 30 | coordinate | `{"box":265,"direction":"lo","value":"565491/1000000","variable":"w"}` | `-565491/1000000 + 1 * w` |
| 31 | coordinate | `{"box":265,"direction":"lo","value":"579567/1000000","variable":"j"}` | `-579567/1000000 + 1 * j` |
| 32 | coordinate | `{"box":265,"direction":"lo","value":"796617/1000000","variable":"k"}` | `-796617/1000000 + 1 * k` |
| 33 | coordinate | `{"box":265,"direction":"lo","value":"609783/1000000","variable":"c"}` | `-609783/1000000 + 1 * c` |
| 34 | coordinate | `{"box":265,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 35 | coordinate | `{"box":265,"direction":"lo","value":"45981/200000","variable":"f"}` | `-45981/200000 + 1 * f` |
| 36 | coordinate | `{"box":265,"direction":"lo","value":"385501/500000","variable":"h"}` | `-385501/500000 + 1 * h` |
| 37 | coordinate | `{"box":265,"direction":"lo","value":"218683/500000","variable":"p"}` | `-218683/500000 + 1 * p` |
| 38 | coordinate | `{"box":265,"direction":"lo","value":"267769/1000000","variable":"q"}` | `-267769/1000000 + 1 * q` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 21341000000 | 5 |
| 1 | 55489000000 | 9 |
| 2 | 7248000000 | 10 |
| 3 | 1629000000 | 4 |
| 4 | 4187000000 | 11 |
| 5 | 33168000000 | 12 |
| 6 | 3061000000 | 13 |
| 7 | 57269000000 | 14 |
| 8 | 3061000000 | 6 |
| 9 | 4195000000 | 2 |
| 10 | 3061000000 | 7 |
| 11 | 3061000000 | 0 |
| 12 | 44813000000 | 1 |
| 13 | 10216000000 | 8 |
| 14 | 3061000000 | 3 |
| 15 | 21341000000 | 27, 28 |
| 16 | 21341000000 | 21, 27 |
| 17 | 4187000000 | 28, 38 |
| 18 | 48241000000 | 15, 37 |
| 19 | 33976000000 | 27, 29 |
| 20 | 23142000000 | 15, 17 |
| 21 | 4187000000 | 16, 32 |
| 22 | 8877000000 | 19, 27 |
| 23 | 33168000000 | 21, 34 |
| 24 | 57269000000 | 24, 33 |
| 25 | 13518000000 | 33, 38 |
| 26 | 43751000000 | 21, 26 |
| 27 | 3061000000 | 21, 32 |
| 28 | 40424000000 | 34, 35 |
| 29 | 47874000000 | 22, 37 |
| 30 | 44813000000 | 17, 22 |
| 31 | 14411000000 | 24, 35 |
| 32 | 10216000000 | 20, 23 |
| 33 | 57269000000 | 36, 37 |
| 34 | 10216000000 | 19, 24 |
| 35 | 100302000000 | 30, 37 |
| 36 | 100302000000 | 17, 38 |
| 37 | 1629000000 | 17, 32 |
| 38 | 1629000000 | 30, 31 |
| 39 | 35739 | 33 |
| 40 | 657202 | 34 |
| 41 | 103767 | 35 |
| 42 | 78688 | 36 |
| 43 | 437366 | 22 |
| 44 | 391000 | 25 |
| 45 | 519023 | 38 |
| 46 | 200825 | 18 |
| 47 | 45180 | 31 |
| 48 | 76749 | 15 |
| 49 | 204971 | 28 |
| 50 | 67338825670 | 37 |
| 51 | 80561 | 29 |
| 52 | 392170 | 20 |
| 53 | 426559 | 23 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -3056688973007057/500000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -3056688973007057/500000 | 1 | -3056688973007057/500000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 265 | -3056688973007057/500000 |

## Stage 266

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS+/CQS- |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS+/CQS-:LHH |
| Index | 0 |
| Context | 30 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 232 |
| Coordinate cut | q high 583187/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 609783/1000000 | 1 | 609783/1000000 | 1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 103767/1000000 | 58493/100000 | 103767/1000000 | 58493/100000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 196767/1000000 | 590123/1000000 | 196767/1000000 | 590123/1000000 |
| q | 583187/1000000 | 710233/1000000 | 583187/1000000 | 710233/1000000 |
| u | 115727/250000 | 876973/1000000 | 115727/250000 | 876973/1000000 |
| v | 25071/100000 | 61813/100000 | 25071/100000 | 61813/100000 |
| r | 152417/250000 | 1 | 152417/250000 | 1 |
| w | 565491/1000000 | 440113/500000 | 565491/1000000 | 440113/500000 |
| j | 42547/100000 | 440113/500000 | 42547/100000 | 440113/500000 |
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
| 0 | bound | `{"direction":"lo","ref":"85:1145","triangle":"CFS","value":"167671/500000"}` | `-1 * f * k + 1 * c * k + 1 * j + -1 * c + -167671/500000` |
| 1 | bound | `{"direction":"lo","ref":"85:1633","triangle":"EFH","value":"200011/500000"}` | `1 * f * h + -1 * e * f + -1 * h + 299989/500000` |
| 2 | physical | `{"factor":141,"stage":85}` | `1/1 * e + -1/1 * a` |
| 3 | physical | `{"factor":43,"stage":85}` | `1/1 * p * k + -1/1 * a * p + -1/1 * q * j + 1/1 * a * j + -93/1000` |
| 4 | physical | `{"factor":80,"stage":85}` | `721/1000 + -1/1 * c + -1/1 * e * f + 1/1 * c * e` |
| 5 | physical | `{"factor":93,"stage":85}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 6 | coordinate | `{"box":266,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 7 | coordinate | `{"box":266,"direction":"hi","value":"440113/500000","variable":"j"}` | `440113/500000 + -1 * j` |
| 8 | coordinate | `{"box":266,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 9 | coordinate | `{"box":266,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 10 | coordinate | `{"box":266,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 11 | coordinate | `{"box":266,"direction":"hi","value":"58493/100000","variable":"f"}` | `58493/100000 + -1 * f` |
| 12 | coordinate | `{"box":266,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 13 | coordinate | `{"box":266,"direction":"hi","value":"590123/1000000","variable":"p"}` | `590123/1000000 + -1 * p` |
| 14 | coordinate | `{"box":266,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 15 | coordinate | `{"box":266,"direction":"lo","value":"42547/100000","variable":"j"}` | `-42547/100000 + 1 * j` |
| 16 | coordinate | `{"box":266,"direction":"lo","value":"609783/1000000","variable":"c"}` | `-609783/1000000 + 1 * c` |
| 17 | coordinate | `{"box":266,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 18 | coordinate | `{"box":266,"direction":"lo","value":"103767/1000000","variable":"f"}` | `-103767/1000000 + 1 * f` |
| 19 | coordinate | `{"box":266,"direction":"lo","value":"135501/250000","variable":"h"}` | `-135501/250000 + 1 * h` |
| 20 | coordinate | `{"box":266,"direction":"lo","value":"196767/1000000","variable":"p"}` | `-196767/1000000 + 1 * p` |
| 21 | coordinate | `{"box":266,"direction":"lo","value":"583187/1000000","variable":"q"}` | `-583187/1000000 + 1 * q` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 100247000000 | 3 |
| 1 | 2098000000 | 4 |
| 2 | 27672000000 | 0 |
| 3 | 78688000000 | 5 |
| 4 | 31119000000 | 1 |
| 5 | 1349000000 | 2 |
| 6 | 45392000000 | 14, 20 |
| 7 | 54855000000 | 6, 13 |
| 8 | 100247000000 | 6, 15 |
| 9 | 2098000000 | 9, 17 |
| 10 | 11181000000 | 12, 16 |
| 11 | 67507000000 | 9, 19 |
| 12 | 78688000000 | 16, 21 |
| 13 | 27672000000 | 8, 16 |
| 14 | 33217000000 | 17, 18 |
| 15 | 31119000000 | 12, 18 |
| 16 | 27672000000 | 8, 11 |
| 17 | 78688000000 | 12, 13 |
| 18 | 100247000000 | 8, 20 |
| 19 | 100247000000 | 15, 21 |
| 20 | 196767 | 14 |
| 21 | 103767 | 20 |
| 22 | 51462 | 16 |
| 23 | 103767 | 17 |
| 24 | 103767 | 18 |
| 25 | 118861 | 7 |
| 26 | 489628 | 19 |
| 27 | 275328 | 10 |
| 28 | 443028 | 6 |
| 29 | 198853 | 13 |
| 30 | 90634695794 | 21 |
| 31 | 20413033665 | 8 |
| 32 | 275328 | 11 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -4014237315058709/500000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -4014237315058709/500000 | 1 | -4014237315058709/500000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 266 | -4014237315058709/500000 |

## Stage 267

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS+/CQS- |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS+/CQS-:H |
| Index | 0 |
| Context | 30 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 229 |
| Coordinate cut | v high 61813/100000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 609783/1000000 | 1 | 609783/1000000 | 1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 103767/1000000 | 58493/100000 | 103767/1000000 | 58493/100000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 196767/1000000 | 590123/1000000 | 196767/1000000 | 590123/1000000 |
| q | 267769/1000000 | 710233/1000000 | 267769/1000000 | 710233/1000000 |
| u | 115727/250000 | 876973/1000000 | 115727/250000 | 876973/1000000 |
| v | 61813/100000 | 815043/1000000 | 61813/100000 | 815043/1000000 |
| r | 152417/250000 | 1 | 152417/250000 | 1 |
| w | 464611/1000000 | 440113/500000 | 464611/1000000 | 440113/500000 |
| j | 42547/100000 | 440113/500000 | 42547/100000 | 440113/500000 |
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
| 0 | bound | `{"direction":"lo","ref":"85:1145","triangle":"CFS","value":"167671/500000"}` | `-1 * f * k + 1 * c * k + 1 * j + -1 * c + -167671/500000` |
| 1 | bound | `{"direction":"lo","ref":"85:1336","triangle":"EQR","value":"60971/500000"}` | `-1 * u * w + 1 * e * u + 1 * w + 1 * v * r + -1 * v + -1 * e * r + -60971/500000` |
| 2 | bound | `{"direction":"lo","ref":"85:1657","triangle":"ARS","value":"49327/125000"}` | `1 * r * k + -1 * a * r + -1 * w * j + 1 * a * j + -49327/125000` |
| 3 | physical | `{"factor":106,"stage":85}` | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 4 | physical | `{"factor":77,"stage":85}` | `1/1 * u * w + -1/1 * b * w + -1/1 * v * r + 1/1 * b * v + -93/1000` |
| 5 | coordinate | `{"box":267,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 6 | coordinate | `{"box":267,"direction":"hi","value":"6143/20000","variable":"b"}` | `6143/20000 + -1 * b` |
| 7 | coordinate | `{"box":267,"direction":"hi","value":"440113/500000","variable":"w"}` | `440113/500000 + -1 * w` |
| 8 | coordinate | `{"box":267,"direction":"hi","value":"440113/500000","variable":"j"}` | `440113/500000 + -1 * j` |
| 9 | coordinate | `{"box":267,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 10 | coordinate | `{"box":267,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 11 | coordinate | `{"box":267,"direction":"hi","value":"58493/100000","variable":"f"}` | `58493/100000 + -1 * f` |
| 12 | coordinate | `{"box":267,"direction":"hi","value":"876973/1000000","variable":"u"}` | `876973/1000000 + -1 * u` |
| 13 | coordinate | `{"box":267,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 14 | coordinate | `{"box":267,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 15 | coordinate | `{"box":267,"direction":"lo","value":"152417/250000","variable":"r"}` | `-152417/250000 + 1 * r` |
| 16 | coordinate | `{"box":267,"direction":"lo","value":"464611/1000000","variable":"w"}` | `-464611/1000000 + 1 * w` |
| 17 | coordinate | `{"box":267,"direction":"lo","value":"42547/100000","variable":"j"}` | `-42547/100000 + 1 * j` |
| 18 | coordinate | `{"box":267,"direction":"lo","value":"609783/1000000","variable":"c"}` | `-609783/1000000 + 1 * c` |
| 19 | coordinate | `{"box":267,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 20 | coordinate | `{"box":267,"direction":"lo","value":"103767/1000000","variable":"f"}` | `-103767/1000000 + 1 * f` |
| 21 | coordinate | `{"box":267,"direction":"lo","value":"115727/250000","variable":"u"}` | `-115727/250000 + 1 * u` |
| 22 | coordinate | `{"box":267,"direction":"lo","value":"61813/100000","variable":"v"}` | `-61813/100000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 38150000000 | 2 |
| 1 | 74542000000 | 4 |
| 2 | 25006000000 | 0 |
| 3 | 84604000000 | 3 |
| 4 | 23106000000 | 1 |
| 5 | 74542000000 | 6, 22 |
| 6 | 47008000000 | 14, 16 |
| 7 | 27534000000 | 6, 7 |
| 8 | 38150000000 | 13, 15 |
| 9 | 15453000000 | 8, 13 |
| 10 | 22698000000 | 5, 17 |
| 11 | 25006000000 | 9, 18 |
| 12 | 20157000000 | 19, 20 |
| 13 | 64447000000 | 10, 11 |
| 14 | 9698000000 | 12, 19 |
| 15 | 98012000000 | 10, 21 |
| 16 | 23106000000 | 15, 19 |
| 17 | 84604000000 | 11, 22 |
| 18 | 25006000000 | 9, 11 |
| 19 | 51436000000 | 7, 21 |
| 20 | 51436000000 | 15, 22 |
| 21 | 38150000000 | 9, 15 |
| 22 | 38150000000 | 7, 8 |
| 23 | 1000000 | 13, 17 |
| 24 | 425470 | 13 |
| 25 | 103767 | 17 |
| 26 | 580251 | 8 |
| 27 | 66685890228 | 22 |
| 28 | 328902 | 12 |
| 29 | 566752 | 7 |
| 30 | 69888 | 6 |
| 31 | 616238 | 5 |
| 32 | 486032 | 15 |
| 33 | 23880308318 | 9 |
| 34 | 180887 | 19 |
| 35 | 137899 | 20 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -8889573769491631/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -8889573769491631/1000000 | 1 | -8889573769491631/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 267 | -8889573769491631/1000000 |

## Stage 268

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS-/CQS+ |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS-/CQS+:root |
| Index | 0 |
| Context | 32 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 87 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 58787/500000 | 6143/20000 | 58787/500000 | 6143/20000 |
| b | 105391/1000000 | 6143/20000 | 105391/1000000 | 6143/20000 |
| c | 135501/250000 | 891971/1000000 | 135501/250000 | 891971/1000000 |
| e | 1838/15625 | 391/1000 | 1838/15625 | 391/1000 |
| f | 1838/15625 | 72301/125000 | 1838/15625 | 72301/125000 |
| h | 607647/1000000 | 1 | 607647/1000000 | 1 |
| p | 40251/200000 | 103689/200000 | 40251/200000 | 103689/200000 |
| q | 157251/500000 | 670107/1000000 | 157251/500000 | 670107/1000000 |
| u | 90023/200000 | 907/1000 | 90023/200000 | 907/1000 |
| v | 65897/250000 | 834871/1000000 | 65897/250000 | 834871/1000000 |
| r | 522367/1000000 | 1 | 522367/1000000 | 1 |
| w | 473531/1000000 | 439111/500000 | 473531/1000000 | 439111/500000 |
| j | 114153/250000 | 878179/1000000 | 114153/250000 | 878179/1000000 |
| k | 107449/200000 | 1 | 107449/200000 | 1 |

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


## Stage 269

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS-/CQS+ |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS-/CQS+:L |
| Index | 0 |
| Context | 32 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 268 |
| Coordinate cut | v low 129251/200000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 58787/500000 | 6143/20000 | 58787/500000 | 6143/20000 |
| b | 105391/1000000 | 6143/20000 | 105391/1000000 | 6143/20000 |
| c | 135501/250000 | 891971/1000000 | 135501/250000 | 891971/1000000 |
| e | 1838/15625 | 391/1000 | 1838/15625 | 391/1000 |
| f | 1838/15625 | 72301/125000 | 1838/15625 | 72301/125000 |
| h | 607647/1000000 | 1 | 607647/1000000 | 1 |
| p | 40251/200000 | 103689/200000 | 40251/200000 | 103689/200000 |
| q | 157251/500000 | 670107/1000000 | 157251/500000 | 670107/1000000 |
| u | 90023/200000 | 907/1000 | 90023/200000 | 907/1000 |
| v | 65897/250000 | 129251/200000 | 65897/250000 | 129251/200000 |
| r | 522367/1000000 | 1 | 522367/1000000 | 1 |
| w | 473531/1000000 | 439111/500000 | 473531/1000000 | 439111/500000 |
| j | 114153/250000 | 878179/1000000 | 114153/250000 | 878179/1000000 |
| k | 107449/200000 | 1 | 107449/200000 | 1 |

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
