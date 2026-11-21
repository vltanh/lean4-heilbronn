# BITT convex: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 250

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS+/CQS- |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS+/CQS-:LHLHHLLHLHLLLLH |
| Index | 0 |
| Context | 30 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 248 |
| Coordinate cut | u high 76111/100000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 356427/500000 | 1 | 356427/500000 | 1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 103767/1000000 | 16221/50000 | 103767/1000000 | 16221/50000 |
| h | 135501/250000 | 385501/500000 | 135501/250000 | 385501/500000 |
| p | 196767/1000000 | 97813/250000 | 196767/1000000 | 97813/250000 |
| q | 267769/1000000 | 476331/1000000 | 267769/1000000 | 476331/1000000 |
| u | 76111/100000 | 876973/1000000 | 76111/100000 | 876973/1000000 |
| v | 25071/100000 | 50903/100000 | 25071/100000 | 50903/100000 |
| r | 732787/1000000 | 1 | 732787/1000000 | 1 |
| w | 565491/1000000 | 760093/1000000 | 565491/1000000 | 760093/1000000 |
| j | 266391/500000 | 440113/500000 | 266391/500000 | 440113/500000 |
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
| 0 | bound | `{"direction":"lo","ref":"85:1216","triangle":"AHP","value":"126079/1000000"}` | `1 * h * p + -1 * a * p + -126079/1000000` |
| 1 | bound | `{"direction":"lo","ref":"85:1336","triangle":"EQR","value":"60971/500000"}` | `-1 * u * w + 1 * e * u + 1 * w + 1 * v * r + -1 * v + -1 * e * r + -60971/500000` |
| 2 | physical | `{"factor":0,"stage":85}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 3 | physical | `{"factor":106,"stage":85}` | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 4 | physical | `{"factor":111,"stage":85}` | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 5 | physical | `{"factor":13,"stage":85}` | `1/1 * b * k + -1/1 * a * b + 1/1 * a * j + -279/1000` |
| 6 | physical | `{"factor":155,"stage":85}` | `1/1 * c * h + -135501/250000` |
| 7 | physical | `{"factor":42,"stage":85}` | `-1/1 * p * w + 1/1 * a * p + 1/1 * q * r + -1/1 * a * r + -93/1000` |
| 8 | physical | `{"factor":43,"stage":85}` | `1/1 * p * k + -1/1 * a * p + -1/1 * q * j + 1/1 * a * j + -93/1000` |
| 9 | physical | `{"factor":65,"stage":85}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 10 | physical | `{"factor":77,"stage":85}` | `1/1 * u * w + -1/1 * b * w + -1/1 * v * r + 1/1 * b * v + -93/1000` |
| 11 | physical | `{"factor":86,"stage":85}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 12 | physical | `{"factor":93,"stage":85}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 13 | coordinate | `{"box":250,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 14 | coordinate | `{"box":250,"direction":"hi","value":"6143/20000","variable":"b"}` | `6143/20000 + -1 * b` |
| 15 | coordinate | `{"box":250,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 16 | coordinate | `{"box":250,"direction":"hi","value":"760093/1000000","variable":"w"}` | `760093/1000000 + -1 * w` |
| 17 | coordinate | `{"box":250,"direction":"hi","value":"440113/500000","variable":"j"}` | `440113/500000 + -1 * j` |
| 18 | coordinate | `{"box":250,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 19 | coordinate | `{"box":250,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 20 | coordinate | `{"box":250,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 21 | coordinate | `{"box":250,"direction":"hi","value":"16221/50000","variable":"f"}` | `16221/50000 + -1 * f` |
| 22 | coordinate | `{"box":250,"direction":"hi","value":"385501/500000","variable":"h"}` | `385501/500000 + -1 * h` |
| 23 | coordinate | `{"box":250,"direction":"hi","value":"97813/250000","variable":"p"}` | `97813/250000 + -1 * p` |
| 24 | coordinate | `{"box":250,"direction":"hi","value":"476331/1000000","variable":"q"}` | `476331/1000000 + -1 * q` |
| 25 | coordinate | `{"box":250,"direction":"hi","value":"50903/100000","variable":"v"}` | `50903/100000 + -1 * v` |
| 26 | coordinate | `{"box":250,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 27 | coordinate | `{"box":250,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 28 | coordinate | `{"box":250,"direction":"lo","value":"732787/1000000","variable":"r"}` | `-732787/1000000 + 1 * r` |
| 29 | coordinate | `{"box":250,"direction":"lo","value":"565491/1000000","variable":"w"}` | `-565491/1000000 + 1 * w` |
| 30 | coordinate | `{"box":250,"direction":"lo","value":"356427/500000","variable":"c"}` | `-356427/500000 + 1 * c` |
| 31 | coordinate | `{"box":250,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 32 | coordinate | `{"box":250,"direction":"lo","value":"103767/1000000","variable":"f"}` | `-103767/1000000 + 1 * f` |
| 33 | coordinate | `{"box":250,"direction":"lo","value":"135501/250000","variable":"h"}` | `-135501/250000 + 1 * h` |
| 34 | coordinate | `{"box":250,"direction":"lo","value":"196767/1000000","variable":"p"}` | `-196767/1000000 + 1 * p` |
| 35 | coordinate | `{"box":250,"direction":"lo","value":"267769/1000000","variable":"q"}` | `-267769/1000000 + 1 * q` |
| 36 | coordinate | `{"box":250,"direction":"lo","value":"76111/100000","variable":"u"}` | `-76111/100000 + 1 * u` |
| 37 | coordinate | `{"box":250,"direction":"lo","value":"25071/100000","variable":"v"}` | `-25071/100000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 6817000000 | 2 |
| 1 | 10554000000 | 5 |
| 2 | 20112000000 | 0 |
| 3 | 23052000000 | 7 |
| 4 | 2939000000 | 8 |
| 5 | 11561000000 | 9 |
| 6 | 5061000000 | 10 |
| 7 | 4608000000 | 11 |
| 8 | 22816000000 | 12 |
| 9 | 139001000000 | 3 |
| 10 | 99601000000 | 4 |
| 11 | 5061000000 | 1 |
| 12 | 1510000000 | 6 |
| 13 | 17371000000 | 26, 27 |
| 14 | 6817000000 | 19, 26 |
| 15 | 11561000000 | 14, 35 |
| 16 | 5061000000 | 25, 27 |
| 17 | 5061000000 | 27, 29 |
| 18 | 23052000000 | 26, 28 |
| 19 | 10554000000 | 18, 27 |
| 20 | 13493000000 | 17, 26 |
| 21 | 4608000000 | 19, 31 |
| 22 | 24326000000 | 19, 33 |
| 23 | 22816000000 | 19, 24 |
| 24 | 4608000000 | 16, 19 |
| 25 | 73945000000 | 31, 32 |
| 26 | 65056000000 | 20, 21 |
| 27 | 44461000000 | 20, 36 |
| 28 | 9669000000 | 15, 20 |
| 29 | 11561000000 | 32, 35 |
| 30 | 5253000000 | 25, 32 |
| 31 | 133748000000 | 21, 37 |
| 32 | 2704000000 | 33, 34 |
| 33 | 99601000000 | 22, 36 |
| 34 | 23052000000 | 29, 34 |
| 35 | 23052000000 | 15, 35 |
| 36 | 2939000000 | 18, 34 |
| 37 | 2939000000 | 17, 24 |
| 38 | 196767 | 33 |
| 39 | 1277348 | 34 |
| 40 | 1000000 | 13, 34 |
| 41 | 196767 | 13 |
| 42 | 307150 | 23 |
| 43 | 391731 | 14 |
| 44 | 37671 | 29 |
| 45 | 221002 | 37 |
| 46 | 44824178798 | 36 |
| 47 | 455909 | 22 |
| 48 | 853063 | 26 |
| 49 | 149361 | 30 |
| 50 | 326649 | 24 |
| 51 | 4896 | 28 |
| 52 | 1673455131 | 18 |
| 53 | 191322 | 17 |
| 54 | 193375 | 20 |
| 55 | 271446 | 21 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -3353049466807247/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -3353049466807247/1000000 | 1 | -3353049466807247/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 250 | -3353049466807247/1000000 |

## Stage 251

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS+/CQS- |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS+/CQS-:LHLHHLLHLHLLLH |
| Index | 0 |
| Context | 30 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 247 |
| Coordinate cut | w high 760093/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 356427/500000 | 1 | 356427/500000 | 1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 103767/1000000 | 16221/50000 | 103767/1000000 | 16221/50000 |
| h | 135501/250000 | 385501/500000 | 135501/250000 | 385501/500000 |
| p | 196767/1000000 | 97813/250000 | 196767/1000000 | 97813/250000 |
| q | 267769/1000000 | 476331/1000000 | 267769/1000000 | 476331/1000000 |
| u | 35199/62500 | 876973/1000000 | 35199/62500 | 876973/1000000 |
| v | 25071/100000 | 50903/100000 | 25071/100000 | 50903/100000 |
| r | 732787/1000000 | 1 | 732787/1000000 | 1 |
| w | 760093/1000000 | 440113/500000 | 760093/1000000 | 440113/500000 |
| j | 266391/500000 | 440113/500000 | 266391/500000 | 440113/500000 |
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
| 0 | bound | `{"direction":"lo","ref":"85:1216","triangle":"AHP","value":"126079/1000000"}` | `1 * h * p + -1 * a * p + -126079/1000000` |
| 1 | physical | `{"factor":106,"stage":85}` | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 2 | physical | `{"factor":111,"stage":85}` | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 3 | physical | `{"factor":13,"stage":85}` | `1/1 * b * k + -1/1 * a * b + 1/1 * a * j + -279/1000` |
| 4 | physical | `{"factor":42,"stage":85}` | `-1/1 * p * w + 1/1 * a * p + 1/1 * q * r + -1/1 * a * r + -93/1000` |
| 5 | physical | `{"factor":43,"stage":85}` | `1/1 * p * k + -1/1 * a * p + -1/1 * q * j + 1/1 * a * j + -93/1000` |
| 6 | physical | `{"factor":65,"stage":85}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 7 | physical | `{"factor":76,"stage":85}` | `-1/1 * p * k + 1/1 * b * k + 1/1 * q * j + -1/1 * b * q + -93/1000` |
| 8 | physical | `{"factor":77,"stage":85}` | `1/1 * u * w + -1/1 * b * w + -1/1 * v * r + 1/1 * b * v + -93/1000` |
| 9 | physical | `{"factor":80,"stage":85}` | `721/1000 + -1/1 * c + -1/1 * e * f + 1/1 * c * e` |
| 10 | physical | `{"factor":93,"stage":85}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 11 | coordinate | `{"box":251,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 12 | coordinate | `{"box":251,"direction":"hi","value":"6143/20000","variable":"b"}` | `6143/20000 + -1 * b` |
| 13 | coordinate | `{"box":251,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 14 | coordinate | `{"box":251,"direction":"hi","value":"440113/500000","variable":"j"}` | `440113/500000 + -1 * j` |
| 15 | coordinate | `{"box":251,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 16 | coordinate | `{"box":251,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 17 | coordinate | `{"box":251,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 18 | coordinate | `{"box":251,"direction":"hi","value":"16221/50000","variable":"f"}` | `16221/50000 + -1 * f` |
| 19 | coordinate | `{"box":251,"direction":"hi","value":"385501/500000","variable":"h"}` | `385501/500000 + -1 * h` |
| 20 | coordinate | `{"box":251,"direction":"hi","value":"97813/250000","variable":"p"}` | `97813/250000 + -1 * p` |
| 21 | coordinate | `{"box":251,"direction":"hi","value":"476331/1000000","variable":"q"}` | `476331/1000000 + -1 * q` |
| 22 | coordinate | `{"box":251,"direction":"hi","value":"876973/1000000","variable":"u"}` | `876973/1000000 + -1 * u` |
| 23 | coordinate | `{"box":251,"direction":"hi","value":"50903/100000","variable":"v"}` | `50903/100000 + -1 * v` |
| 24 | coordinate | `{"box":251,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 25 | coordinate | `{"box":251,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 26 | coordinate | `{"box":251,"direction":"lo","value":"732787/1000000","variable":"r"}` | `-732787/1000000 + 1 * r` |
| 27 | coordinate | `{"box":251,"direction":"lo","value":"760093/1000000","variable":"w"}` | `-760093/1000000 + 1 * w` |
| 28 | coordinate | `{"box":251,"direction":"lo","value":"266391/500000","variable":"j"}` | `-266391/500000 + 1 * j` |
| 29 | coordinate | `{"box":251,"direction":"lo","value":"356427/500000","variable":"c"}` | `-356427/500000 + 1 * c` |
| 30 | coordinate | `{"box":251,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 31 | coordinate | `{"box":251,"direction":"lo","value":"103767/1000000","variable":"f"}` | `-103767/1000000 + 1 * f` |
| 32 | coordinate | `{"box":251,"direction":"lo","value":"135501/250000","variable":"h"}` | `-135501/250000 + 1 * h` |
| 33 | coordinate | `{"box":251,"direction":"lo","value":"196767/1000000","variable":"p"}` | `-196767/1000000 + 1 * p` |
| 34 | coordinate | `{"box":251,"direction":"lo","value":"267769/1000000","variable":"q"}` | `-267769/1000000 + 1 * q` |
| 35 | coordinate | `{"box":251,"direction":"lo","value":"35199/62500","variable":"u"}` | `-35199/62500 + 1 * u` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 8967000000 | 3 |
| 1 | 11600000000 | 0 |
| 2 | 56499000000 | 4 |
| 3 | 44899000000 | 5 |
| 4 | 39255000000 | 6 |
| 5 | 28993000000 | 7 |
| 6 | 10605000000 | 8 |
| 7 | 8415000000 | 9 |
| 8 | 34138000000 | 10 |
| 9 | 48293000000 | 1 |
| 10 | 52787000000 | 2 |
| 11 | 8967000000 | 24, 25 |
| 12 | 10261000000 | 21, 25 |
| 13 | 10605000000 | 23, 25 |
| 14 | 10605000000 | 25, 27 |
| 15 | 37483000000 | 24, 26 |
| 16 | 19017000000 | 11, 13 |
| 17 | 37960000000 | 15, 25 |
| 18 | 53866000000 | 14, 24 |
| 19 | 8415000000 | 16, 30 |
| 20 | 23144000000 | 19, 29 |
| 21 | 10995000000 | 16, 32 |
| 22 | 34138000000 | 16, 21 |
| 23 | 56708000000 | 30, 31 |
| 24 | 4494000000 | 30, 35 |
| 25 | 39255000000 | 18, 21 |
| 26 | 48293000000 | 23, 31 |
| 27 | 22538000000 | 32, 33 |
| 28 | 52787000000 | 19, 35 |
| 29 | 56499000000 | 27, 33 |
| 30 | 56499000000 | 13, 34 |
| 31 | 15906000000 | 15, 33 |
| 32 | 9527000000 | 28, 34 |
| 33 | 6379000000 | 14, 21 |
| 34 | 10605000000 | 22, 27 |
| 35 | 10605000000 | 13, 23 |
| 36 | 1000000 | 11, 26 |
| 37 | 732787 | 11 |
| 38 | 307150 | 13 |
| 39 | 1000000 | 12, 34 |
| 40 | 267769 | 12 |
| 41 | 307150 | 21 |
| 42 | 819441 | 20 |
| 43 | 369413 | 25 |
| 44 | 615895 | 16 |
| 45 | 1000000 | 29, 32 |
| 46 | 542004 | 29 |
| 47 | 712854 | 32 |
| 48 | 668766 | 23 |
| 49 | 443708 | 22 |
| 50 | 563184 | 30 |
| 51 | 103767 | 35 |
| 52 | 352138 | 19 |
| 53 | 280094 | 24 |
| 54 | 129681 | 34 |
| 55 | 2917289103 | 27 |
| 56 | 152430 | 26 |
| 57 | 7068771222 | 15 |
| 58 | 37490 | 28 |
| 59 | 195252 | 17 |
| 60 | 206651 | 31 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -628921277107947/500000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -628921277107947/500000 | 1 | -628921277107947/500000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 251 | -628921277107947/500000 |

## Stage 252

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS+/CQS- |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS+/CQS-:LHLHHLLHLHLLH |
| Index | 0 |
| Context | 30 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 246 |
| Coordinate cut | v high 50903/100000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 356427/500000 | 1 | 356427/500000 | 1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 103767/1000000 | 16221/50000 | 103767/1000000 | 16221/50000 |
| h | 135501/250000 | 385501/500000 | 135501/250000 | 385501/500000 |
| p | 196767/1000000 | 97813/250000 | 196767/1000000 | 97813/250000 |
| q | 267769/1000000 | 476331/1000000 | 267769/1000000 | 476331/1000000 |
| u | 35199/62500 | 876973/1000000 | 35199/62500 | 876973/1000000 |
| v | 50903/100000 | 61813/100000 | 50903/100000 | 61813/100000 |
| r | 732787/1000000 | 1 | 732787/1000000 | 1 |
| w | 565491/1000000 | 440113/500000 | 565491/1000000 | 440113/500000 |
| j | 266391/500000 | 440113/500000 | 266391/500000 | 440113/500000 |
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
| 1 | physical | `{"factor":106,"stage":85}` | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 2 | physical | `{"factor":111,"stage":85}` | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 3 | physical | `{"factor":13,"stage":85}` | `1/1 * b * k + -1/1 * a * b + 1/1 * a * j + -279/1000` |
| 4 | physical | `{"factor":145,"stage":85}` | `1/1 * f + -1/1 * e` |
| 5 | physical | `{"factor":42,"stage":85}` | `-1/1 * p * w + 1/1 * a * p + 1/1 * q * r + -1/1 * a * r + -93/1000` |
| 6 | physical | `{"factor":43,"stage":85}` | `1/1 * p * k + -1/1 * a * p + -1/1 * q * j + 1/1 * a * j + -93/1000` |
| 7 | physical | `{"factor":65,"stage":85}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 8 | physical | `{"factor":7,"stage":85}` | `1/1 * b * h + -1/1 * a * b + -93/1000` |
| 9 | physical | `{"factor":76,"stage":85}` | `-1/1 * p * k + 1/1 * b * k + 1/1 * q * j + -1/1 * b * q + -93/1000` |
| 10 | physical | `{"factor":77,"stage":85}` | `1/1 * u * w + -1/1 * b * w + -1/1 * v * r + 1/1 * b * v + -93/1000` |
| 11 | physical | `{"factor":80,"stage":85}` | `721/1000 + -1/1 * c + -1/1 * e * f + 1/1 * c * e` |
| 12 | physical | `{"factor":93,"stage":85}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 13 | coordinate | `{"box":252,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 14 | coordinate | `{"box":252,"direction":"hi","value":"6143/20000","variable":"b"}` | `6143/20000 + -1 * b` |
| 15 | coordinate | `{"box":252,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 16 | coordinate | `{"box":252,"direction":"hi","value":"440113/500000","variable":"w"}` | `440113/500000 + -1 * w` |
| 17 | coordinate | `{"box":252,"direction":"hi","value":"440113/500000","variable":"j"}` | `440113/500000 + -1 * j` |
| 18 | coordinate | `{"box":252,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 19 | coordinate | `{"box":252,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 20 | coordinate | `{"box":252,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 21 | coordinate | `{"box":252,"direction":"hi","value":"16221/50000","variable":"f"}` | `16221/50000 + -1 * f` |
| 22 | coordinate | `{"box":252,"direction":"hi","value":"385501/500000","variable":"h"}` | `385501/500000 + -1 * h` |
| 23 | coordinate | `{"box":252,"direction":"hi","value":"97813/250000","variable":"p"}` | `97813/250000 + -1 * p` |
| 24 | coordinate | `{"box":252,"direction":"hi","value":"476331/1000000","variable":"q"}` | `476331/1000000 + -1 * q` |
| 25 | coordinate | `{"box":252,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 26 | coordinate | `{"box":252,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 27 | coordinate | `{"box":252,"direction":"lo","value":"732787/1000000","variable":"r"}` | `-732787/1000000 + 1 * r` |
| 28 | coordinate | `{"box":252,"direction":"lo","value":"565491/1000000","variable":"w"}` | `-565491/1000000 + 1 * w` |
| 29 | coordinate | `{"box":252,"direction":"lo","value":"266391/500000","variable":"j"}` | `-266391/500000 + 1 * j` |
| 30 | coordinate | `{"box":252,"direction":"lo","value":"796617/1000000","variable":"k"}` | `-796617/1000000 + 1 * k` |
| 31 | coordinate | `{"box":252,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 32 | coordinate | `{"box":252,"direction":"lo","value":"135501/250000","variable":"h"}` | `-135501/250000 + 1 * h` |
| 33 | coordinate | `{"box":252,"direction":"lo","value":"267769/1000000","variable":"q"}` | `-267769/1000000 + 1 * q` |
| 34 | coordinate | `{"box":252,"direction":"lo","value":"35199/62500","variable":"u"}` | `-35199/62500 + 1 * u` |
| 35 | coordinate | `{"box":252,"direction":"lo","value":"50903/100000","variable":"v"}` | `-50903/100000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 6106000000 | 8 |
| 1 | 1224000000 | 3 |
| 2 | 30714000000 | 5 |
| 3 | 30714000000 | 6 |
| 4 | 12279000000 | 0 |
| 5 | 35835000000 | 7 |
| 6 | 30714000000 | 9 |
| 7 | 44099000000 | 10 |
| 8 | 836000000 | 11 |
| 9 | 11413000000 | 12 |
| 10 | 74569000000 | 1 |
| 11 | 17356000000 | 2 |
| 12 | 8595000000 | 4 |
| 13 | 7330000000 | 25, 26 |
| 14 | 6106000000 | 22, 26 |
| 15 | 5121000000 | 24, 26 |
| 16 | 44099000000 | 14, 35 |
| 17 | 44099000000 | 26, 28 |
| 18 | 42993000000 | 25, 27 |
| 19 | 31939000000 | 18, 26 |
| 20 | 25061000000 | 17, 25 |
| 21 | 19156000000 | 13, 29 |
| 22 | 836000000 | 19, 31 |
| 23 | 11413000000 | 19, 32 |
| 24 | 11413000000 | 19, 24 |
| 25 | 75405000000 | 20, 21 |
| 26 | 57213000000 | 20, 34 |
| 27 | 35835000000 | 21, 24 |
| 28 | 74569000000 | 21, 35 |
| 29 | 11413000000 | 22, 23 |
| 30 | 17356000000 | 22, 34 |
| 31 | 30714000000 | 16, 23 |
| 32 | 30714000000 | 24, 27 |
| 33 | 44099000000 | 16, 34 |
| 34 | 44099000000 | 27, 35 |
| 35 | 12279000000 | 18, 27 |
| 36 | 7384000000 | 28, 29 |
| 37 | 4895000000 | 16, 17 |
| 38 | 1000000 | 26, 30 |
| 39 | 796617 | 26 |
| 40 | 103767 | 30 |
| 41 | 532782 | 28 |
| 42 | 565491 | 29 |
| 43 | 292810 | 23 |
| 44 | 543514 | 14 |
| 45 | 275161 | 19 |
| 46 | 51791491083 | 35 |
| 47 | 119914 | 34 |
| 48 | 136270 | 32 |
| 49 | 181685 | 21 |
| 50 | 443908 | 31 |
| 51 | 7823 | 25 |
| 52 | 379975 | 33 |
| 53 | 680579 | 16 |
| 54 | 61733 | 15 |
| 55 | 12312105786 | 18 |
| 56 | 543864 | 17 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -198061501073091/50000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -198061501073091/50000 | 1 | -198061501073091/50000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 252 | -198061501073091/50000 |

## Stage 253

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS+/CQS- |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS+/CQS-:LHLHHLLHLHLH |
| Index | 0 |
| Context | 30 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 245 |
| Coordinate cut | f high 16221/50000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 356427/500000 | 1 | 356427/500000 | 1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 16221/50000 | 440761/1000000 | 16221/50000 | 440761/1000000 |
| h | 135501/250000 | 385501/500000 | 135501/250000 | 385501/500000 |
| p | 196767/1000000 | 97813/250000 | 196767/1000000 | 97813/250000 |
| q | 267769/1000000 | 476331/1000000 | 267769/1000000 | 476331/1000000 |
| u | 35199/62500 | 876973/1000000 | 35199/62500 | 876973/1000000 |
| v | 25071/100000 | 61813/100000 | 25071/100000 | 61813/100000 |
| r | 732787/1000000 | 1 | 732787/1000000 | 1 |
| w | 565491/1000000 | 440113/500000 | 565491/1000000 | 440113/500000 |
| j | 266391/500000 | 440113/500000 | 266391/500000 | 440113/500000 |
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
| 1 | physical | `{"factor":106,"stage":85}` | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 2 | physical | `{"factor":111,"stage":85}` | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 3 | physical | `{"factor":119,"stage":85}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 4 | physical | `{"factor":13,"stage":85}` | `1/1 * b * k + -1/1 * a * b + 1/1 * a * j + -279/1000` |
| 5 | physical | `{"factor":42,"stage":85}` | `-1/1 * p * w + 1/1 * a * p + 1/1 * q * r + -1/1 * a * r + -93/1000` |
| 6 | physical | `{"factor":43,"stage":85}` | `1/1 * p * k + -1/1 * a * p + -1/1 * q * j + 1/1 * a * j + -93/1000` |
| 7 | physical | `{"factor":65,"stage":85}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 8 | physical | `{"factor":76,"stage":85}` | `-1/1 * p * k + 1/1 * b * k + 1/1 * q * j + -1/1 * b * q + -93/1000` |
| 9 | physical | `{"factor":77,"stage":85}` | `1/1 * u * w + -1/1 * b * w + -1/1 * v * r + 1/1 * b * v + -93/1000` |
| 10 | physical | `{"factor":80,"stage":85}` | `721/1000 + -1/1 * c + -1/1 * e * f + 1/1 * c * e` |
| 11 | physical | `{"factor":93,"stage":85}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 12 | coordinate | `{"box":253,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 13 | coordinate | `{"box":253,"direction":"hi","value":"6143/20000","variable":"b"}` | `6143/20000 + -1 * b` |
| 14 | coordinate | `{"box":253,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 15 | coordinate | `{"box":253,"direction":"hi","value":"440113/500000","variable":"w"}` | `440113/500000 + -1 * w` |
| 16 | coordinate | `{"box":253,"direction":"hi","value":"440113/500000","variable":"j"}` | `440113/500000 + -1 * j` |
| 17 | coordinate | `{"box":253,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 18 | coordinate | `{"box":253,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 19 | coordinate | `{"box":253,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 20 | coordinate | `{"box":253,"direction":"hi","value":"440761/1000000","variable":"f"}` | `440761/1000000 + -1 * f` |
| 21 | coordinate | `{"box":253,"direction":"hi","value":"385501/500000","variable":"h"}` | `385501/500000 + -1 * h` |
| 22 | coordinate | `{"box":253,"direction":"hi","value":"97813/250000","variable":"p"}` | `97813/250000 + -1 * p` |
| 23 | coordinate | `{"box":253,"direction":"hi","value":"476331/1000000","variable":"q"}` | `476331/1000000 + -1 * q` |
| 24 | coordinate | `{"box":253,"direction":"hi","value":"876973/1000000","variable":"u"}` | `876973/1000000 + -1 * u` |
| 25 | coordinate | `{"box":253,"direction":"hi","value":"61813/100000","variable":"v"}` | `61813/100000 + -1 * v` |
| 26 | coordinate | `{"box":253,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 27 | coordinate | `{"box":253,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 28 | coordinate | `{"box":253,"direction":"lo","value":"732787/1000000","variable":"r"}` | `-732787/1000000 + 1 * r` |
| 29 | coordinate | `{"box":253,"direction":"lo","value":"565491/1000000","variable":"w"}` | `-565491/1000000 + 1 * w` |
| 30 | coordinate | `{"box":253,"direction":"lo","value":"266391/500000","variable":"j"}` | `-266391/500000 + 1 * j` |
| 31 | coordinate | `{"box":253,"direction":"lo","value":"356427/500000","variable":"c"}` | `-356427/500000 + 1 * c` |
| 32 | coordinate | `{"box":253,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 33 | coordinate | `{"box":253,"direction":"lo","value":"16221/50000","variable":"f"}` | `-16221/50000 + 1 * f` |
| 34 | coordinate | `{"box":253,"direction":"lo","value":"135501/250000","variable":"h"}` | `-135501/250000 + 1 * h` |
| 35 | coordinate | `{"box":253,"direction":"lo","value":"196767/1000000","variable":"p"}` | `-196767/1000000 + 1 * p` |
| 36 | coordinate | `{"box":253,"direction":"lo","value":"267769/1000000","variable":"q"}` | `-267769/1000000 + 1 * q` |
| 37 | coordinate | `{"box":253,"direction":"lo","value":"35199/62500","variable":"u"}` | `-35199/62500 + 1 * u` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 3193000000 | 4 |
| 1 | 53082000000 | 5 |
| 2 | 53082000000 | 6 |
| 3 | 59723000000 | 7 |
| 4 | 53082000000 | 8 |
| 5 | 11710000000 | 9 |
| 6 | 16017000000 | 10 |
| 7 | 38529000000 | 11 |
| 8 | 26454000000 | 1 |
| 9 | 28367000000 | 2 |
| 10 | 3984000000 | 0 |
| 11 | 7521000000 | 3 |
| 12 | 3193000000 | 26, 27 |
| 13 | 6641000000 | 23, 27 |
| 14 | 11710000000 | 25, 27 |
| 15 | 11710000000 | 27, 29 |
| 16 | 14516000000 | 26, 28 |
| 17 | 38566000000 | 12, 14 |
| 18 | 56275000000 | 17, 27 |
| 19 | 56275000000 | 16, 26 |
| 20 | 16017000000 | 18, 32 |
| 21 | 38529000000 | 21, 31 |
| 22 | 14394000000 | 31, 36 |
| 23 | 24135000000 | 18, 23 |
| 24 | 42472000000 | 32, 33 |
| 25 | 2072000000 | 24, 32 |
| 26 | 3103000000 | 28, 32 |
| 27 | 8402000000 | 14, 19 |
| 28 | 7521000000 | 16, 32 |
| 29 | 59723000000 | 33, 36 |
| 30 | 26454000000 | 25, 33 |
| 31 | 38529000000 | 21, 22 |
| 32 | 28367000000 | 21, 37 |
| 33 | 53082000000 | 29, 35 |
| 34 | 53082000000 | 14, 36 |
| 35 | 7726000000 | 24, 29 |
| 36 | 7726000000 | 14, 25 |
| 37 | 7521000000 | 17, 28 |
| 38 | 7521000000 | 15, 16 |
| 39 | 329320 | 35 |
| 40 | 388830 | 13 |
| 41 | 456426 | 18 |
| 42 | 1000000 | 19, 33 |
| 43 | 324420 | 19 |
| 44 | 391000 | 20 |
| 45 | 318250 | 25 |
| 46 | 1002424 | 24 |
| 47 | 1000000 | 32, 37 |
| 48 | 899683 | 32 |
| 49 | 103767 | 37 |
| 50 | 156014 | 34 |
| 51 | 416188 | 15 |
| 52 | 3829778952 | 17 |
| 53 | 254027 | 12 |
| 54 | 39489 | 36 |
| 55 | 42005 | 14 |
| 56 | 260214 | 30 |
| 57 | 4047148991 | 33 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -491114234385379/200000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -491114234385379/200000 | 1 | -491114234385379/200000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 253 | -491114234385379/200000 |

## Stage 254

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS+/CQS- |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS+/CQS-:LHLHHLLHLHH |
| Index | 0 |
| Context | 30 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 244 |
| Coordinate cut | q high 476331/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 356427/500000 | 1 | 356427/500000 | 1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 103767/1000000 | 440761/1000000 | 103767/1000000 | 440761/1000000 |
| h | 135501/250000 | 385501/500000 | 135501/250000 | 385501/500000 |
| p | 196767/1000000 | 97813/250000 | 196767/1000000 | 97813/250000 |
| q | 476331/1000000 | 583187/1000000 | 476331/1000000 | 583187/1000000 |
| u | 35199/62500 | 876973/1000000 | 35199/62500 | 876973/1000000 |
| v | 25071/100000 | 61813/100000 | 25071/100000 | 61813/100000 |
| r | 732787/1000000 | 1 | 732787/1000000 | 1 |
| w | 565491/1000000 | 440113/500000 | 565491/1000000 | 440113/500000 |
| j | 266391/500000 | 440113/500000 | 266391/500000 | 440113/500000 |
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
| 1 | physical | `{"factor":13,"stage":85}` | `1/1 * b * k + -1/1 * a * b + 1/1 * a * j + -279/1000` |
| 2 | physical | `{"factor":145,"stage":85}` | `1/1 * f + -1/1 * e` |
| 3 | physical | `{"factor":43,"stage":85}` | `1/1 * p * k + -1/1 * a * p + -1/1 * q * j + 1/1 * a * j + -93/1000` |
| 4 | physical | `{"factor":65,"stage":85}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 5 | physical | `{"factor":7,"stage":85}` | `1/1 * b * h + -1/1 * a * b + -93/1000` |
| 6 | physical | `{"factor":80,"stage":85}` | `721/1000 + -1/1 * c + -1/1 * e * f + 1/1 * c * e` |
| 7 | physical | `{"factor":93,"stage":85}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 8 | coordinate | `{"box":254,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 9 | coordinate | `{"box":254,"direction":"hi","value":"6143/20000","variable":"b"}` | `6143/20000 + -1 * b` |
| 10 | coordinate | `{"box":254,"direction":"hi","value":"440113/500000","variable":"j"}` | `440113/500000 + -1 * j` |
| 11 | coordinate | `{"box":254,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 12 | coordinate | `{"box":254,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 13 | coordinate | `{"box":254,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 14 | coordinate | `{"box":254,"direction":"hi","value":"440761/1000000","variable":"f"}` | `440761/1000000 + -1 * f` |
| 15 | coordinate | `{"box":254,"direction":"hi","value":"385501/500000","variable":"h"}` | `385501/500000 + -1 * h` |
| 16 | coordinate | `{"box":254,"direction":"hi","value":"97813/250000","variable":"p"}` | `97813/250000 + -1 * p` |
| 17 | coordinate | `{"box":254,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 18 | coordinate | `{"box":254,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 19 | coordinate | `{"box":254,"direction":"lo","value":"266391/500000","variable":"j"}` | `-266391/500000 + 1 * j` |
| 20 | coordinate | `{"box":254,"direction":"lo","value":"356427/500000","variable":"c"}` | `-356427/500000 + 1 * c` |
| 21 | coordinate | `{"box":254,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 22 | coordinate | `{"box":254,"direction":"lo","value":"103767/1000000","variable":"f"}` | `-103767/1000000 + 1 * f` |
| 23 | coordinate | `{"box":254,"direction":"lo","value":"135501/250000","variable":"h"}` | `-135501/250000 + 1 * h` |
| 24 | coordinate | `{"box":254,"direction":"lo","value":"196767/1000000","variable":"p"}` | `-196767/1000000 + 1 * p` |
| 25 | coordinate | `{"box":254,"direction":"lo","value":"476331/1000000","variable":"q"}` | `-476331/1000000 + 1 * q` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 45516000000 | 5 |
| 1 | 4546000000 | 1 |
| 2 | 8253000000 | 3 |
| 3 | 65774000000 | 4 |
| 4 | 31203000000 | 6 |
| 5 | 94903000000 | 7 |
| 6 | 39325000000 | 0 |
| 7 | 15487000000 | 2 |
| 8 | 50062000000 | 17, 18 |
| 9 | 45516000000 | 15, 18 |
| 10 | 65774000000 | 9, 25 |
| 11 | 8253000000 | 17, 24 |
| 12 | 4546000000 | 11, 18 |
| 13 | 12799000000 | 8, 19 |
| 14 | 31203000000 | 12, 21 |
| 15 | 94903000000 | 15, 20 |
| 16 | 94903000000 | 20, 25 |
| 17 | 45609000000 | 21, 22 |
| 18 | 24919000000 | 13, 14 |
| 19 | 39325000000 | 15, 22 |
| 20 | 65774000000 | 22, 25 |
| 21 | 94903000000 | 15, 16 |
| 22 | 8253000000 | 11, 24 |
| 23 | 8253000000 | 19, 25 |
| 24 | 532782 | 8 |
| 25 | 307150 | 10 |
| 26 | 208143 | 16 |
| 27 | 338672 | 9 |
| 28 | 3614 | 12 |
| 29 | 309347 | 23 |
| 30 | 420353 | 14 |
| 31 | 32462 | 21 |
| 32 | 157569 | 17 |
| 33 | 58671719566 | 25 |
| 34 | 2095642833 | 11 |
| 35 | 254043 | 19 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -1319607537974273/250000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -1319607537974273/250000 | 1 | -1319607537974273/250000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 254 | -1319607537974273/250000 |
