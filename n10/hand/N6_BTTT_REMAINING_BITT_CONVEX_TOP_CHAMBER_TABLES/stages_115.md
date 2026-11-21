# BITT convex: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 575

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR-/PQS+/BFP-/APR-/APQ-/APS+/CQS+ |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR-/PQS+/BFP-/APR-/APQ-/APS+/CQS+:HLHLLLLLH |
| Index | 0 |
| Context | 61 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 561 |
| Coordinate cut | h high 448917/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 112669/1000000 | 6143/20000 | 112669/1000000 | 6143/20000 |
| b | 26859/250000 | 6143/20000 | 26859/250000 | 6143/20000 |
| c | 557763/1000000 | 422979/500000 | 557763/1000000 | 422979/500000 |
| e | 4511/40000 | 391/1000 | 4511/40000 | 391/1000 |
| f | 4511/40000 | 231403/500000 | 4511/40000 | 231403/500000 |
| h | 448917/500000 | 194349/200000 | 448917/500000 | 194349/200000 |
| p | 50449/250000 | 264693/500000 | 50449/250000 | 264693/500000 |
| q | 18263/62500 | 128863/250000 | 18263/62500 | 128863/250000 |
| u | 518997/1000000 | 850783/1000000 | 518997/1000000 | 850783/1000000 |
| v | 383261/1000000 | 325219/500000 | 383261/1000000 | 325219/500000 |
| r | 834931/1000000 | 1 | 834931/1000000 | 1 |
| w | 139783/500000 | 647363/1000000 | 139783/500000 | 647363/1000000 |
| j | 147547/500000 | 733771/1000000 | 147547/500000 | 733771/1000000 |
| k | 853529/1000000 | 1 | 853529/1000000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"125:323","triangle":"QRS","value":"15587/100000"}` | `1 * r * k + -1 * v * r + -1 * u * k + -1 * w * j + 1 * u * w + 1 * v * j + -15587/100000` |
| 1 | bound | `{"direction":"lo","ref":"125:4786","triangle":"EFH","value":"191629/500000"}` | `1 * f * h + -1 * e * f + -1 * h + 308371/500000` |
| 2 | physical | `{"factor":0,"stage":125}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 3 | physical | `{"factor":100,"stage":125}` | `1/1 * u * k + -1/1 * c * k + -1/1 * v * j + 1/1 * c * v + -93/1000` |
| 4 | physical | `{"factor":105,"stage":125}` | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 5 | physical | `{"factor":110,"stage":125}` | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 6 | physical | `{"factor":116,"stage":125}` | `-1/1 * u * w + 1/1 * e * u + 1/1 * w + 1/1 * v * r + -1/1 * v + -1/1 * e * r + -93/1000` |
| 7 | physical | `{"factor":122,"stage":125}` | `-1/1 * f * k + -1/1 * h * j + 1/1 * f * h + 1/1 * j + -93/1000` |
| 8 | physical | `{"factor":127,"stage":125}` | `1/1 * u * k + -1/1 * u + -1/1 * f * k + -1/1 * v * j + 1/1 * f * v + 1/1 * j + -93/1000` |
| 9 | physical | `{"factor":46,"stage":125}` | `1/1 * r * k + -1/1 * a * r + -1/1 * w * j + 1/1 * a * j + -13857/20000` |
| 10 | physical | `{"factor":47,"stage":125}` | `1/1 * c * e + -1/1 * b * e + -93/1000` |
| 11 | coordinate | `{"box":575,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 12 | coordinate | `{"box":575,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 13 | coordinate | `{"box":575,"direction":"hi","value":"647363/1000000","variable":"w"}` | `647363/1000000 + -1 * w` |
| 14 | coordinate | `{"box":575,"direction":"hi","value":"733771/1000000","variable":"j"}` | `733771/1000000 + -1 * j` |
| 15 | coordinate | `{"box":575,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 16 | coordinate | `{"box":575,"direction":"hi","value":"422979/500000","variable":"c"}` | `422979/500000 + -1 * c` |
| 17 | coordinate | `{"box":575,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 18 | coordinate | `{"box":575,"direction":"hi","value":"231403/500000","variable":"f"}` | `231403/500000 + -1 * f` |
| 19 | coordinate | `{"box":575,"direction":"hi","value":"194349/200000","variable":"h"}` | `194349/200000 + -1 * h` |
| 20 | coordinate | `{"box":575,"direction":"hi","value":"850783/1000000","variable":"u"}` | `850783/1000000 + -1 * u` |
| 21 | coordinate | `{"box":575,"direction":"hi","value":"325219/500000","variable":"v"}` | `325219/500000 + -1 * v` |
| 22 | coordinate | `{"box":575,"direction":"lo","value":"112669/1000000","variable":"a"}` | `-112669/1000000 + 1 * a` |
| 23 | coordinate | `{"box":575,"direction":"lo","value":"26859/250000","variable":"b"}` | `-26859/250000 + 1 * b` |
| 24 | coordinate | `{"box":575,"direction":"lo","value":"139783/500000","variable":"w"}` | `-139783/500000 + 1 * w` |
| 25 | coordinate | `{"box":575,"direction":"lo","value":"147547/500000","variable":"j"}` | `-147547/500000 + 1 * j` |
| 26 | coordinate | `{"box":575,"direction":"lo","value":"853529/1000000","variable":"k"}` | `-853529/1000000 + 1 * k` |
| 27 | coordinate | `{"box":575,"direction":"lo","value":"557763/1000000","variable":"c"}` | `-557763/1000000 + 1 * c` |
| 28 | coordinate | `{"box":575,"direction":"lo","value":"4511/40000","variable":"e"}` | `-4511/40000 + 1 * e` |
| 29 | coordinate | `{"box":575,"direction":"lo","value":"4511/40000","variable":"f"}` | `-4511/40000 + 1 * f` |
| 30 | coordinate | `{"box":575,"direction":"lo","value":"448917/500000","variable":"h"}` | `-448917/500000 + 1 * h` |
| 31 | coordinate | `{"box":575,"direction":"lo","value":"383261/1000000","variable":"v"}` | `-383261/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 14911000000 | 2 |
| 1 | 44423000000 | 9 |
| 2 | 9109000000 | 10 |
| 3 | 15948000000 | 3 |
| 4 | 12440000000 | 1 |
| 5 | 13109000000 | 4 |
| 6 | 15518000000 | 5 |
| 7 | 18597000000 | 6 |
| 8 | 114300000000 | 7 |
| 9 | 2649000000 | 8 |
| 10 | 18597000000 | 0 |
| 11 | 12178000000 | 16, 22 |
| 12 | 2733000000 | 11, 27 |
| 13 | 44423000000 | 11, 12 |
| 14 | 44423000000 | 14, 22 |
| 15 | 9109000000 | 16, 28 |
| 16 | 15948000000 | 21, 27 |
| 17 | 15948000000 | 26, 27 |
| 18 | 25549000000 | 28, 29 |
| 19 | 16188000000 | 20, 28 |
| 20 | 18597000000 | 12, 17 |
| 21 | 126740000000 | 18, 30 |
| 22 | 15758000000 | 18, 31 |
| 23 | 116950000000 | 15, 18 |
| 24 | 15518000000 | 20, 30 |
| 25 | 91114000000 | 25, 30 |
| 26 | 23187000000 | 14, 19 |
| 27 | 63020000000 | 12, 26 |
| 28 | 63020000000 | 24, 25 |
| 29 | 14911000000 | 22, 23 |
| 30 | 1602226260 | 22 |
| 31 | 2707274934 | 23 |
| 32 | 9109000000 | 23, 28 |
| 33 | 978747299 | 28 |
| 34 | 380477 | 29 |
| 35 | 659859 | 30 |
| 36 | 101272 | 21 |
| 37 | 189712 | 20 |
| 38 | 176120 | 13 |
| 39 | 1000000 | 18, 26 |
| 40 | 853529 | 18 |
| 41 | 462806 | 15 |
| 42 | 1000000 | 19, 25 |
| 43 | 295094 | 19 |
| 44 | 971745 | 14 |
| 45 | 1252724 | 25 |
| 46 | 103761 | 27 |
| 47 | 32873446130 | 12 |
| 48 | 130926 | 17 |
| 49 | 366024 | 26 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -5078423215506173/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -5078423215506173/1000000 | 1 | -5078423215506173/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 575 | -5078423215506173/1000000 |

## Stage 576

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR-/PQS+/BFP-/APR-/APQ-/APS+/CQS+ |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR-/PQS+/BFP-/APR-/APQ-/APS+/CQS+:HLHLLLLH |
| Index | 0 |
| Context | 61 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 560 |
| Coordinate cut | f high 231403/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 112669/1000000 | 6143/20000 | 112669/1000000 | 6143/20000 |
| b | 26859/250000 | 6143/20000 | 26859/250000 | 6143/20000 |
| c | 557763/1000000 | 422979/500000 | 557763/1000000 | 422979/500000 |
| e | 4511/40000 | 391/1000 | 4511/40000 | 391/1000 |
| f | 231403/500000 | 145179/250000 | 231403/500000 | 145179/250000 |
| h | 335493/500000 | 194349/200000 | 335493/500000 | 194349/200000 |
| p | 50449/250000 | 264693/500000 | 50449/250000 | 264693/500000 |
| q | 18263/62500 | 128863/250000 | 18263/62500 | 128863/250000 |
| u | 518997/1000000 | 850783/1000000 | 518997/1000000 | 850783/1000000 |
| v | 383261/1000000 | 325219/500000 | 383261/1000000 | 325219/500000 |
| r | 834931/1000000 | 1 | 834931/1000000 | 1 |
| w | 139783/500000 | 647363/1000000 | 139783/500000 | 647363/1000000 |
| j | 147547/500000 | 733771/1000000 | 147547/500000 | 733771/1000000 |
| k | 853529/1000000 | 1 | 853529/1000000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"125:323","triangle":"QRS","value":"15587/100000"}` | `1 * r * k + -1 * v * r + -1 * u * k + -1 * w * j + 1 * u * w + 1 * v * j + -15587/100000` |
| 1 | bound | `{"direction":"lo","ref":"125:4666","triangle":"AQR","value":"76857/500000"}` | `-1 * u * w + 1 * a * u + 1 * v * r + -1 * a * r + -76857/500000` |
| 2 | bound | `{"direction":"lo","ref":"125:4752","triangle":"CEQ","value":"151291/1000000"}` | `1 * v + -1 * c * v + -1 * e * u + 1 * c * e + -151291/1000000` |
| 3 | physical | `{"factor":0,"stage":125}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 4 | physical | `{"factor":100,"stage":125}` | `1/1 * u * k + -1/1 * c * k + -1/1 * v * j + 1/1 * c * v + -93/1000` |
| 5 | physical | `{"factor":116,"stage":125}` | `-1/1 * u * w + 1/1 * e * u + 1/1 * w + 1/1 * v * r + -1/1 * v + -1/1 * e * r + -93/1000` |
| 6 | physical | `{"factor":122,"stage":125}` | `-1/1 * f * k + -1/1 * h * j + 1/1 * f * h + 1/1 * j + -93/1000` |
| 7 | physical | `{"factor":127,"stage":125}` | `1/1 * u * k + -1/1 * u + -1/1 * f * k + -1/1 * v * j + 1/1 * f * v + 1/1 * j + -93/1000` |
| 8 | physical | `{"factor":128,"stage":125}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 9 | physical | `{"factor":41,"stage":125}` | `-1/1 * p * v + 1/1 * a * p + 1/1 * q * u + -1/1 * a * u + -93/1000` |
| 10 | physical | `{"factor":47,"stage":125}` | `1/1 * c * e + -1/1 * b * e + -93/1000` |
| 11 | physical | `{"factor":65,"stage":125}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 12 | physical | `{"factor":7,"stage":125}` | `1/1 * b * h + -1/1 * a * b + -93/1000` |
| 13 | physical | `{"factor":92,"stage":125}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 14 | coordinate | `{"box":576,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 15 | coordinate | `{"box":576,"direction":"hi","value":"6143/20000","variable":"b"}` | `6143/20000 + -1 * b` |
| 16 | coordinate | `{"box":576,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 17 | coordinate | `{"box":576,"direction":"hi","value":"647363/1000000","variable":"w"}` | `647363/1000000 + -1 * w` |
| 18 | coordinate | `{"box":576,"direction":"hi","value":"733771/1000000","variable":"j"}` | `733771/1000000 + -1 * j` |
| 19 | coordinate | `{"box":576,"direction":"hi","value":"422979/500000","variable":"c"}` | `422979/500000 + -1 * c` |
| 20 | coordinate | `{"box":576,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 21 | coordinate | `{"box":576,"direction":"hi","value":"194349/200000","variable":"h"}` | `194349/200000 + -1 * h` |
| 22 | coordinate | `{"box":576,"direction":"hi","value":"264693/500000","variable":"p"}` | `264693/500000 + -1 * p` |
| 23 | coordinate | `{"box":576,"direction":"hi","value":"128863/250000","variable":"q"}` | `128863/250000 + -1 * q` |
| 24 | coordinate | `{"box":576,"direction":"hi","value":"850783/1000000","variable":"u"}` | `850783/1000000 + -1 * u` |
| 25 | coordinate | `{"box":576,"direction":"hi","value":"325219/500000","variable":"v"}` | `325219/500000 + -1 * v` |
| 26 | coordinate | `{"box":576,"direction":"lo","value":"112669/1000000","variable":"a"}` | `-112669/1000000 + 1 * a` |
| 27 | coordinate | `{"box":576,"direction":"lo","value":"26859/250000","variable":"b"}` | `-26859/250000 + 1 * b` |
| 28 | coordinate | `{"box":576,"direction":"lo","value":"139783/500000","variable":"w"}` | `-139783/500000 + 1 * w` |
| 29 | coordinate | `{"box":576,"direction":"lo","value":"147547/500000","variable":"j"}` | `-147547/500000 + 1 * j` |
| 30 | coordinate | `{"box":576,"direction":"lo","value":"853529/1000000","variable":"k"}` | `-853529/1000000 + 1 * k` |
| 31 | coordinate | `{"box":576,"direction":"lo","value":"557763/1000000","variable":"c"}` | `-557763/1000000 + 1 * c` |
| 32 | coordinate | `{"box":576,"direction":"lo","value":"4511/40000","variable":"e"}` | `-4511/40000 + 1 * e` |
| 33 | coordinate | `{"box":576,"direction":"lo","value":"231403/500000","variable":"f"}` | `-231403/500000 + 1 * f` |
| 34 | coordinate | `{"box":576,"direction":"lo","value":"335493/500000","variable":"h"}` | `-335493/500000 + 1 * h` |
| 35 | coordinate | `{"box":576,"direction":"lo","value":"50449/250000","variable":"p"}` | `-50449/250000 + 1 * p` |
| 36 | coordinate | `{"box":576,"direction":"lo","value":"18263/62500","variable":"q"}` | `-18263/62500 + 1 * q` |
| 37 | coordinate | `{"box":576,"direction":"lo","value":"518997/1000000","variable":"u"}` | `-518997/1000000 + 1 * u` |
| 38 | coordinate | `{"box":576,"direction":"lo","value":"383261/1000000","variable":"v"}` | `-383261/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 8098000000 | 3 |
| 1 | 16814000000 | 12 |
| 2 | 30040000000 | 9 |
| 3 | 9327000000 | 1 |
| 4 | 2985000000 | 10 |
| 5 | 27232000000 | 11 |
| 6 | 24458000000 | 2 |
| 7 | 28471000000 | 13 |
| 8 | 24458000000 | 4 |
| 9 | 21209000000 | 5 |
| 10 | 52834000000 | 6 |
| 11 | 6078000000 | 7 |
| 12 | 19305000000 | 8 |
| 13 | 30536000000 | 0 |
| 14 | 24912000000 | 26, 27 |
| 15 | 8098000000 | 19, 26 |
| 16 | 2985000000 | 27, 32 |
| 17 | 16814000000 | 21, 27 |
| 18 | 27232000000 | 23, 27 |
| 19 | 30040000000 | 22, 26 |
| 20 | 20713000000 | 26, 37 |
| 21 | 9327000000 | 14, 16 |
| 22 | 27444000000 | 19, 32 |
| 23 | 20230000000 | 21, 31 |
| 24 | 8241000000 | 19, 34 |
| 25 | 28471000000 | 31, 36 |
| 26 | 24458000000 | 30, 31 |
| 27 | 3249000000 | 32, 37 |
| 28 | 21209000000 | 16, 20 |
| 29 | 52834000000 | 21, 33 |
| 30 | 27232000000 | 33, 36 |
| 31 | 6078000000 | 25, 33 |
| 32 | 19305000000 | 17, 33 |
| 33 | 78217000000 | 30, 33 |
| 34 | 28471000000 | 34, 35 |
| 35 | 52834000000 | 18, 21 |
| 36 | 30040000000 | 35, 38 |
| 37 | 30040000000 | 24, 36 |
| 38 | 49841000000 | 16, 30 |
| 39 | 14654000000 | 28, 29 |
| 40 | 35187000000 | 17, 18 |
| 41 | 1000000 | 31, 32 |
| 42 | 112775 | 31 |
| 43 | 557763 | 32 |
| 44 | 226086 | 35 |
| 45 | 265791 | 15 |
| 46 | 16972 | 38 |
| 47 | 37823 | 28 |
| 48 | 302625 | 18 |
| 49 | 190652 | 37 |
| 50 | 12078231839 | 16 |
| 51 | 107169 | 26 |
| 52 | 321388 | 19 |
| 53 | 553639 | 20 |
| 54 | 15546 | 21 |
| 55 | 15107 | 23 |
| 56 | 64356 | 30 |
| 57 | 6926005840 | 33 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -9520016802443/3125 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -9520016802443/3125 | 1 | -9520016802443/3125 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 576 | -9520016802443/3125 |

## Stage 577

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR-/PQS+/BFP-/APR-/APQ-/APS+/CQS+ |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR-/PQS+/BFP-/APR-/APQ-/APS+/CQS+:HLHLLLH |
| Index | 0 |
| Context | 61 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 559 |
| Coordinate cut | w high 647363/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 112669/1000000 | 6143/20000 | 112669/1000000 | 6143/20000 |
| b | 26859/250000 | 6143/20000 | 26859/250000 | 6143/20000 |
| c | 557763/1000000 | 422979/500000 | 557763/1000000 | 422979/500000 |
| e | 4511/40000 | 391/1000 | 4511/40000 | 391/1000 |
| f | 4511/40000 | 145179/250000 | 4511/40000 | 145179/250000 |
| h | 335493/500000 | 194349/200000 | 335493/500000 | 194349/200000 |
| p | 50449/250000 | 264693/500000 | 50449/250000 | 264693/500000 |
| q | 18263/62500 | 128863/250000 | 18263/62500 | 128863/250000 |
| u | 518997/1000000 | 850783/1000000 | 518997/1000000 | 850783/1000000 |
| v | 383261/1000000 | 325219/500000 | 383261/1000000 | 325219/500000 |
| r | 834931/1000000 | 1 | 834931/1000000 | 1 |
| w | 647363/1000000 | 389681/500000 | 647363/1000000 | 389681/500000 |
| j | 147547/500000 | 733771/1000000 | 147547/500000 | 733771/1000000 |
| k | 853529/1000000 | 1 | 853529/1000000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"125:4666","triangle":"AQR","value":"76857/500000"}` | `-1 * u * w + 1 * a * u + 1 * v * r + -1 * a * r + -76857/500000` |
| 1 | physical | `{"factor":0,"stage":125}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 2 | physical | `{"factor":100,"stage":125}` | `1/1 * u * k + -1/1 * c * k + -1/1 * v * j + 1/1 * c * v + -93/1000` |
| 3 | physical | `{"factor":105,"stage":125}` | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 4 | physical | `{"factor":122,"stage":125}` | `-1/1 * f * k + -1/1 * h * j + 1/1 * f * h + 1/1 * j + -93/1000` |
| 5 | physical | `{"factor":128,"stage":125}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 6 | physical | `{"factor":134,"stage":125}` | `-1/1 * u * w + 1/1 * q * u + 1/1 * p * w + 1/1 * v * r + -1/1 * p * v + -1/1 * q * r + -93/1000` |
| 7 | physical | `{"factor":143,"stage":125}` | `1/1 * f + -1/1 * e` |
| 8 | physical | `{"factor":41,"stage":125}` | `-1/1 * p * v + 1/1 * a * p + 1/1 * q * u + -1/1 * a * u + -93/1000` |
| 9 | physical | `{"factor":46,"stage":125}` | `1/1 * r * k + -1/1 * a * r + -1/1 * w * j + 1/1 * a * j + -13857/20000` |
| 10 | physical | `{"factor":92,"stage":125}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 11 | coordinate | `{"box":577,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 12 | coordinate | `{"box":577,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 13 | coordinate | `{"box":577,"direction":"hi","value":"389681/500000","variable":"w"}` | `389681/500000 + -1 * w` |
| 14 | coordinate | `{"box":577,"direction":"hi","value":"733771/1000000","variable":"j"}` | `733771/1000000 + -1 * j` |
| 15 | coordinate | `{"box":577,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 16 | coordinate | `{"box":577,"direction":"hi","value":"422979/500000","variable":"c"}` | `422979/500000 + -1 * c` |
| 17 | coordinate | `{"box":577,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 18 | coordinate | `{"box":577,"direction":"hi","value":"145179/250000","variable":"f"}` | `145179/250000 + -1 * f` |
| 19 | coordinate | `{"box":577,"direction":"hi","value":"194349/200000","variable":"h"}` | `194349/200000 + -1 * h` |
| 20 | coordinate | `{"box":577,"direction":"hi","value":"264693/500000","variable":"p"}` | `264693/500000 + -1 * p` |
| 21 | coordinate | `{"box":577,"direction":"hi","value":"128863/250000","variable":"q"}` | `128863/250000 + -1 * q` |
| 22 | coordinate | `{"box":577,"direction":"hi","value":"325219/500000","variable":"v"}` | `325219/500000 + -1 * v` |
| 23 | coordinate | `{"box":577,"direction":"lo","value":"112669/1000000","variable":"a"}` | `-112669/1000000 + 1 * a` |
| 24 | coordinate | `{"box":577,"direction":"lo","value":"26859/250000","variable":"b"}` | `-26859/250000 + 1 * b` |
| 25 | coordinate | `{"box":577,"direction":"lo","value":"834931/1000000","variable":"r"}` | `-834931/1000000 + 1 * r` |
| 26 | coordinate | `{"box":577,"direction":"lo","value":"647363/1000000","variable":"w"}` | `-647363/1000000 + 1 * w` |
| 27 | coordinate | `{"box":577,"direction":"lo","value":"147547/500000","variable":"j"}` | `-147547/500000 + 1 * j` |
| 28 | coordinate | `{"box":577,"direction":"lo","value":"853529/1000000","variable":"k"}` | `-853529/1000000 + 1 * k` |
| 29 | coordinate | `{"box":577,"direction":"lo","value":"557763/1000000","variable":"c"}` | `-557763/1000000 + 1 * c` |
| 30 | coordinate | `{"box":577,"direction":"lo","value":"4511/40000","variable":"e"}` | `-4511/40000 + 1 * e` |
| 31 | coordinate | `{"box":577,"direction":"lo","value":"4511/40000","variable":"f"}` | `-4511/40000 + 1 * f` |
| 32 | coordinate | `{"box":577,"direction":"lo","value":"335493/500000","variable":"h"}` | `-335493/500000 + 1 * h` |
| 33 | coordinate | `{"box":577,"direction":"lo","value":"50449/250000","variable":"p"}` | `-50449/250000 + 1 * p` |
| 34 | coordinate | `{"box":577,"direction":"lo","value":"18263/62500","variable":"q"}` | `-18263/62500 + 1 * q` |
| 35 | coordinate | `{"box":577,"direction":"lo","value":"518997/1000000","variable":"u"}` | `-518997/1000000 + 1 * u` |
| 36 | coordinate | `{"box":577,"direction":"lo","value":"383261/1000000","variable":"v"}` | `-383261/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 12096000000 | 1 |
| 1 | 30828000000 | 8 |
| 2 | 486000000 | 0 |
| 3 | 38759000000 | 9 |
| 4 | 2130000000 | 10 |
| 5 | 4846000000 | 2 |
| 6 | 21527000000 | 3 |
| 7 | 7525000000 | 4 |
| 8 | 57016000000 | 5 |
| 9 | 29518000000 | 6 |
| 10 | 8745000000 | 7 |
| 11 | 12096000000 | 16, 23 |
| 12 | 30828000000 | 20, 23 |
| 13 | 30342000000 | 23, 35 |
| 14 | 39245000000 | 11, 12 |
| 15 | 38759000000 | 14, 23 |
| 16 | 2130000000 | 16, 32 |
| 17 | 2130000000 | 16, 21 |
| 18 | 4846000000 | 22, 29 |
| 19 | 4846000000 | 15, 16 |
| 20 | 21527000000 | 30, 31 |
| 21 | 21527000000 | 17, 35 |
| 22 | 7525000000 | 19, 31 |
| 23 | 21527000000 | 22, 31 |
| 24 | 57016000000 | 18, 26 |
| 25 | 64541000000 | 15, 18 |
| 26 | 2130000000 | 32, 33 |
| 27 | 7525000000 | 27, 32 |
| 28 | 60346000000 | 33, 36 |
| 29 | 60346000000 | 21, 35 |
| 30 | 14964000000 | 13, 33 |
| 31 | 14554000000 | 20, 26 |
| 32 | 29518000000 | 12, 21 |
| 33 | 30004000000 | 26, 35 |
| 34 | 30004000000 | 12, 36 |
| 35 | 4846000000 | 15, 35 |
| 36 | 4846000000 | 27, 36 |
| 37 | 72786000000 | 15, 25 |
| 38 | 95776000000 | 26, 27 |
| 39 | 12096000000 | 23, 24 |
| 40 | 1299545856 | 23 |
| 41 | 1362844224 | 24 |
| 42 | 22989000000 | 12, 28 |
| 43 | 19621927339 | 12 |
| 44 | 44695843404 | 15 |
| 45 | 1000000 | 13, 27 |
| 46 | 295094 | 13 |
| 47 | 779362 | 14 |
| 48 | 19983 | 22 |
| 49 | 558858 | 35 |
| 50 | 353373 | 27 |
| 51 | 701334 | 18 |
| 52 | 259006 | 30 |
| 53 | 154192 | 16 |
| 54 | 442791 | 11 |
| 55 | 14484 | 33 |
| 56 | 114585 | 19 |
| 57 | 497578 | 34 |
| 58 | 446288 | 26 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -585716754509519/125000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -585716754509519/125000 | 1 | -585716754509519/125000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 577 | -585716754509519/125000 |

## Stage 578

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR-/PQS+/BFP-/APR-/APQ-/APS+/CQS+ |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR-/PQS+/BFP-/APR-/APQ-/APS+/CQS+:HLHLLH |
| Index | 0 |
| Context | 61 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 558 |
| Coordinate cut | j high 733771/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 112669/1000000 | 6143/20000 | 112669/1000000 | 6143/20000 |
| b | 26859/250000 | 6143/20000 | 26859/250000 | 6143/20000 |
| c | 557763/1000000 | 422979/500000 | 557763/1000000 | 422979/500000 |
| e | 4511/40000 | 391/1000 | 4511/40000 | 391/1000 |
| f | 4511/40000 | 145179/250000 | 4511/40000 | 145179/250000 |
| h | 335493/500000 | 194349/200000 | 335493/500000 | 194349/200000 |
| p | 50449/250000 | 264693/500000 | 50449/250000 | 264693/500000 |
| q | 18263/62500 | 128863/250000 | 18263/62500 | 128863/250000 |
| u | 518997/1000000 | 850783/1000000 | 518997/1000000 | 850783/1000000 |
| v | 383261/1000000 | 325219/500000 | 383261/1000000 | 325219/500000 |
| r | 834931/1000000 | 1 | 834931/1000000 | 1 |
| w | 139783/500000 | 389681/500000 | 139783/500000 | 389681/500000 |
| j | 733771/1000000 | 215121/250000 | 733771/1000000 | 215121/250000 |
| k | 853529/1000000 | 1 | 853529/1000000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"125:323","triangle":"QRS","value":"15587/100000"}` | `1 * r * k + -1 * v * r + -1 * u * k + -1 * w * j + 1 * u * w + 1 * v * j + -15587/100000` |
| 1 | bound | `{"direction":"lo","ref":"125:4666","triangle":"AQR","value":"76857/500000"}` | `-1 * u * w + 1 * a * u + 1 * v * r + -1 * a * r + -76857/500000` |
| 2 | bound | `{"direction":"lo","ref":"125:4706","triangle":"BCP","value":"1611/10000"}` | `1 * c * q + -1 * b * q + -1611/10000` |
| 3 | physical | `{"factor":0,"stage":125}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 4 | physical | `{"factor":10,"stage":125}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 5 | physical | `{"factor":100,"stage":125}` | `1/1 * u * k + -1/1 * c * k + -1/1 * v * j + 1/1 * c * v + -93/1000` |
| 6 | physical | `{"factor":105,"stage":125}` | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 7 | physical | `{"factor":116,"stage":125}` | `-1/1 * u * w + 1/1 * e * u + 1/1 * w + 1/1 * v * r + -1/1 * v + -1/1 * e * r + -93/1000` |
| 8 | physical | `{"factor":118,"stage":125}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 9 | physical | `{"factor":122,"stage":125}` | `-1/1 * f * k + -1/1 * h * j + 1/1 * f * h + 1/1 * j + -93/1000` |
| 10 | physical | `{"factor":153,"stage":125}` | `1/1 * c * h + -135501/250000` |
| 11 | physical | `{"factor":46,"stage":125}` | `1/1 * r * k + -1/1 * a * r + -1/1 * w * j + 1/1 * a * j + -13857/20000` |
| 12 | physical | `{"factor":47,"stage":125}` | `1/1 * c * e + -1/1 * b * e + -93/1000` |
| 13 | physical | `{"factor":816,"stage":125}` | `-598379/1000000 * f * h + 598379/1000000 * a * f + 1023/1000 * h * p + -1023/1000 * a * p` |
| 14 | physical | `{"factor":92,"stage":125}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 15 | coordinate | `{"box":578,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 16 | coordinate | `{"box":578,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 17 | coordinate | `{"box":578,"direction":"hi","value":"389681/500000","variable":"w"}` | `389681/500000 + -1 * w` |
| 18 | coordinate | `{"box":578,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 19 | coordinate | `{"box":578,"direction":"hi","value":"422979/500000","variable":"c"}` | `422979/500000 + -1 * c` |
| 20 | coordinate | `{"box":578,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 21 | coordinate | `{"box":578,"direction":"hi","value":"145179/250000","variable":"f"}` | `145179/250000 + -1 * f` |
| 22 | coordinate | `{"box":578,"direction":"hi","value":"194349/200000","variable":"h"}` | `194349/200000 + -1 * h` |
| 23 | coordinate | `{"box":578,"direction":"hi","value":"264693/500000","variable":"p"}` | `264693/500000 + -1 * p` |
| 24 | coordinate | `{"box":578,"direction":"hi","value":"850783/1000000","variable":"u"}` | `850783/1000000 + -1 * u` |
| 25 | coordinate | `{"box":578,"direction":"hi","value":"325219/500000","variable":"v"}` | `325219/500000 + -1 * v` |
| 26 | coordinate | `{"box":578,"direction":"lo","value":"112669/1000000","variable":"a"}` | `-112669/1000000 + 1 * a` |
| 27 | coordinate | `{"box":578,"direction":"lo","value":"26859/250000","variable":"b"}` | `-26859/250000 + 1 * b` |
| 28 | coordinate | `{"box":578,"direction":"lo","value":"834931/1000000","variable":"r"}` | `-834931/1000000 + 1 * r` |
| 29 | coordinate | `{"box":578,"direction":"lo","value":"139783/500000","variable":"w"}` | `-139783/500000 + 1 * w` |
| 30 | coordinate | `{"box":578,"direction":"lo","value":"733771/1000000","variable":"j"}` | `-733771/1000000 + 1 * j` |
| 31 | coordinate | `{"box":578,"direction":"lo","value":"853529/1000000","variable":"k"}` | `-853529/1000000 + 1 * k` |
| 32 | coordinate | `{"box":578,"direction":"lo","value":"557763/1000000","variable":"c"}` | `-557763/1000000 + 1 * c` |
| 33 | coordinate | `{"box":578,"direction":"lo","value":"4511/40000","variable":"e"}` | `-4511/40000 + 1 * e` |
| 34 | coordinate | `{"box":578,"direction":"lo","value":"4511/40000","variable":"f"}` | `-4511/40000 + 1 * f` |
| 35 | coordinate | `{"box":578,"direction":"lo","value":"335493/500000","variable":"h"}` | `-335493/500000 + 1 * h` |
| 36 | coordinate | `{"box":578,"direction":"lo","value":"50449/250000","variable":"p"}` | `-50449/250000 + 1 * p` |
| 37 | coordinate | `{"box":578,"direction":"lo","value":"518997/1000000","variable":"u"}` | `-518997/1000000 + 1 * u` |
| 38 | coordinate | `{"box":578,"direction":"lo","value":"383261/1000000","variable":"v"}` | `-383261/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 5875500000000000 | 3 |
| 1 | 1247000000000000 | 4 |
| 2 | 10596000000000000 | 1 |
| 3 | 7961500000000000 | 11 |
| 4 | 12234000000000000 | 12 |
| 5 | 1247000000000000 | 2 |
| 6 | 1247000000000000 | 14 |
| 7 | 21384500000000000 | 5 |
| 8 | 2717000000000000 | 6 |
| 9 | 10788000000000000 | 7 |
| 10 | 40359500000000000 | 8 |
| 11 | 3833500000000000 | 9 |
| 12 | 21384500000000000 | 0 |
| 13 | 3168500000000000 | 10 |
| 14 | 1219000000000000 | 13 |
| 15 | 5875500000000000 | 15, 32 |
| 16 | 729500000000000 | 21, 26 |
| 17 | 10596000000000000 | 24, 26 |
| 18 | 18557500000000000 | 15, 16 |
| 19 | 7961500000000000 | 15, 30 |
| 20 | 12234000000000000 | 19, 33 |
| 21 | 4415500000000000 | 22, 32 |
| 22 | 21384500000000000 | 25, 32 |
| 23 | 21384500000000000 | 18, 19 |
| 24 | 2717000000000000 | 33, 34 |
| 25 | 13505000000000000 | 24, 33 |
| 26 | 51148000000000000 | 16, 20 |
| 27 | 40359500000000000 | 20, 30 |
| 28 | 3104000000000000 | 22, 34 |
| 29 | 2717000000000000 | 21, 38 |
| 30 | 3833500000000000 | 18, 21 |
| 31 | 3833500000000000 | 30, 35 |
| 32 | 69705500000000000 | 16, 31 |
| 33 | 69705500000000000 | 29, 30 |
| 34 | 7122500000000000 | 26, 27 |
| 35 | 765228947239225 | 26 |
| 36 | 2182174302500000 | 27 |
| 37 | 37000000000 | 26, 36 |
| 38 | 4168753000 | 36 |
| 39 | 500000000000 | 24, 29 |
| 40 | 139783000000 | 24 |
| 41 | 425391500000 | 17 |
| 42 | 500000000000 | 28, 38 |
| 43 | 417465500000 | 38 |
| 44 | 191630500000 | 28 |
| 45 | 33797057084500000 | 16 |
| 46 | 9029500000000000 | 18 |
| 47 | 12234000000000000 | 27, 33 |
| 48 | 1314876437500000 | 33 |
| 49 | 37000000000 | 22, 36 |
| 50 | 51600287284 | 22 |
| 51 | 35954565000 | 23 |
| 52 | 288245500000 | 25 |
| 53 | 132901000000 | 37 |
| 54 | 374440500000 | 29 |
| 55 | 500000000000 | 20, 28 |
| 56 | 417465500000 | 20 |
| 57 | 63637000000 | 31 |
| 58 | 75999000000 | 21, 35 |
| 59 | 50994265014 | 21 |
| 60 | 73419000000 | 30 |
| 61 | 75999000000 | 26, 34 |
| 62 | 109585231331 | 34 |
| 63 | 83313000000 | 15 |
| 64 | 119366500000 | 32 |
| 65 | 55002000000 | 35 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -523977643530478320189/200000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -523977643530478320189/200000 | 1 | -523977643530478320189/200000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 578 | -523977643530478320189/200000 |

## Stage 579

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR-/PQS+/BFP-/APR-/APQ-/APS+/CQS+ |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR-/PQS+/BFP-/APR-/APQ-/APS+/CQS+:HLHLH |
| Index | 0 |
| Context | 61 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 557 |
| Coordinate cut | v high 325219/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 112669/1000000 | 6143/20000 | 112669/1000000 | 6143/20000 |
| b | 26859/250000 | 6143/20000 | 26859/250000 | 6143/20000 |
| c | 557763/1000000 | 422979/500000 | 557763/1000000 | 422979/500000 |
| e | 4511/40000 | 391/1000 | 4511/40000 | 391/1000 |
| f | 4511/40000 | 145179/250000 | 4511/40000 | 145179/250000 |
| h | 335493/500000 | 194349/200000 | 335493/500000 | 194349/200000 |
| p | 50449/250000 | 264693/500000 | 50449/250000 | 264693/500000 |
| q | 18263/62500 | 128863/250000 | 18263/62500 | 128863/250000 |
| u | 518997/1000000 | 850783/1000000 | 518997/1000000 | 850783/1000000 |
| v | 325219/500000 | 33301/40000 | 325219/500000 | 33301/40000 |
| r | 834931/1000000 | 1 | 834931/1000000 | 1 |
| w | 139783/500000 | 389681/500000 | 139783/500000 | 389681/500000 |
| j | 147547/500000 | 215121/250000 | 147547/500000 | 215121/250000 |
| k | 853529/1000000 | 1 | 853529/1000000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"125:4704","triangle":"FHQ","value":"98629/500000"}` | `-1 * f * v + -1 * h * u + 1 * f * h + 1 * u + -98629/500000` |
| 1 | bound | `{"direction":"lo","ref":"125:4739","triangle":"FPQ","value":"154843/1000000"}` | `1 * p * v + -1 * p + -1 * f * v + -1 * q * u + 1 * f * q + 1 * u + -154843/1000000` |
| 2 | bound | `{"direction":"lo","ref":"125:4770","triangle":"AQS","value":"318747/1000000"}` | `1 * u * k + -1 * a * u + -1 * v * j + 1 * a * j + -318747/1000000` |
| 3 | physical | `{"factor":100,"stage":125}` | `1/1 * u * k + -1/1 * c * k + -1/1 * v * j + 1/1 * c * v + -93/1000` |
| 4 | physical | `{"factor":105,"stage":125}` | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 5 | physical | `{"factor":127,"stage":125}` | `1/1 * u * k + -1/1 * u + -1/1 * f * k + -1/1 * v * j + 1/1 * f * v + 1/1 * j + -93/1000` |
| 6 | physical | `{"factor":143,"stage":125}` | `1/1 * f + -1/1 * e` |
| 7 | physical | `{"factor":41,"stage":125}` | `-1/1 * p * v + 1/1 * a * p + 1/1 * q * u + -1/1 * a * u + -93/1000` |
| 8 | physical | `{"factor":65,"stage":125}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 9 | physical | `{"factor":7,"stage":125}` | `1/1 * b * h + -1/1 * a * b + -93/1000` |
| 10 | physical | `{"factor":92,"stage":125}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 11 | coordinate | `{"box":579,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 12 | coordinate | `{"box":579,"direction":"hi","value":"215121/250000","variable":"j"}` | `215121/250000 + -1 * j` |
| 13 | coordinate | `{"box":579,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 14 | coordinate | `{"box":579,"direction":"hi","value":"422979/500000","variable":"c"}` | `422979/500000 + -1 * c` |
| 15 | coordinate | `{"box":579,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 16 | coordinate | `{"box":579,"direction":"hi","value":"145179/250000","variable":"f"}` | `145179/250000 + -1 * f` |
| 17 | coordinate | `{"box":579,"direction":"hi","value":"194349/200000","variable":"h"}` | `194349/200000 + -1 * h` |
| 18 | coordinate | `{"box":579,"direction":"hi","value":"264693/500000","variable":"p"}` | `264693/500000 + -1 * p` |
| 19 | coordinate | `{"box":579,"direction":"hi","value":"128863/250000","variable":"q"}` | `128863/250000 + -1 * q` |
| 20 | coordinate | `{"box":579,"direction":"hi","value":"850783/1000000","variable":"u"}` | `850783/1000000 + -1 * u` |
| 21 | coordinate | `{"box":579,"direction":"lo","value":"112669/1000000","variable":"a"}` | `-112669/1000000 + 1 * a` |
| 22 | coordinate | `{"box":579,"direction":"lo","value":"26859/250000","variable":"b"}` | `-26859/250000 + 1 * b` |
| 23 | coordinate | `{"box":579,"direction":"lo","value":"147547/500000","variable":"j"}` | `-147547/500000 + 1 * j` |
| 24 | coordinate | `{"box":579,"direction":"lo","value":"853529/1000000","variable":"k"}` | `-853529/1000000 + 1 * k` |
| 25 | coordinate | `{"box":579,"direction":"lo","value":"557763/1000000","variable":"c"}` | `-557763/1000000 + 1 * c` |
| 26 | coordinate | `{"box":579,"direction":"lo","value":"4511/40000","variable":"e"}` | `-4511/40000 + 1 * e` |
| 27 | coordinate | `{"box":579,"direction":"lo","value":"4511/40000","variable":"f"}` | `-4511/40000 + 1 * f` |
| 28 | coordinate | `{"box":579,"direction":"lo","value":"335493/500000","variable":"h"}` | `-335493/500000 + 1 * h` |
| 29 | coordinate | `{"box":579,"direction":"lo","value":"50449/250000","variable":"p"}` | `-50449/250000 + 1 * p` |
| 30 | coordinate | `{"box":579,"direction":"lo","value":"518997/1000000","variable":"u"}` | `-518997/1000000 + 1 * u` |
| 31 | coordinate | `{"box":579,"direction":"lo","value":"325219/500000","variable":"v"}` | `-325219/500000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 20751000000 | 9 |
| 1 | 45306000000 | 7 |
| 2 | 10266000000 | 2 |
| 3 | 41616000000 | 8 |
| 4 | 7549000000 | 10 |
| 5 | 9854000000 | 3 |
| 6 | 100753000000 | 4 |
| 7 | 12103000000 | 0 |
| 8 | 41616000000 | 1 |
| 9 | 34129000000 | 5 |
| 10 | 3307000000 | 6 |
| 11 | 20751000000 | 17, 22 |
| 12 | 41616000000 | 19, 22 |
| 13 | 33167000000 | 18, 21 |
| 14 | 12139000000 | 11, 29 |
| 15 | 55572000000 | 21, 30 |
| 16 | 10266000000 | 12, 21 |
| 17 | 7549000000 | 17, 25 |
| 18 | 7549000000 | 14, 19 |
| 19 | 9854000000 | 14, 31 |
| 20 | 9854000000 | 13, 14 |
| 21 | 20356000000 | 26, 27 |
| 22 | 80397000000 | 15, 16 |
| 23 | 100753000000 | 15, 30 |
| 24 | 12103000000 | 17, 27 |
| 25 | 81164000000 | 16, 31 |
| 26 | 34129000000 | 13, 16 |
| 27 | 7549000000 | 28, 29 |
| 28 | 12103000000 | 28, 30 |
| 29 | 3690000000 | 29, 31 |
| 30 | 3690000000 | 19, 30 |
| 31 | 54249000000 | 13, 30 |
| 32 | 54249000000 | 23, 31 |
| 33 | 20751000000 | 21, 22 |
| 34 | 2229629870 | 21 |
| 35 | 2338263492 | 22 |
| 36 | 2961 | 29 |
| 37 | 1000000 | 27, 31 |
| 38 | 650438 | 27 |
| 39 | 62036990865 | 31 |
| 40 | 255654 | 20 |
| 41 | 48892 | 12 |
| 42 | 304667 | 16 |
| 43 | 32589 | 15 |
| 44 | 94453 | 17 |
| 45 | 18564 | 19 |
| 46 | 28091 | 25 |
| 47 | 258243 | 24 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -1213324279234257/200000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -1213324279234257/200000 | 1 | -1213324279234257/200000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 579 | -1213324279234257/200000 |
