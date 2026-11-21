# BITT convex: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 580

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR-/PQS+/BFP-/APR-/APQ-/APS+/CQS+ |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR-/PQS+/BFP-/APR-/APQ-/APS+/CQS+:HLHH |
| Index | 0 |
| Context | 61 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 556 |
| Coordinate cut | q high 128863/250000 |

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
| q | 128863/250000 | 332459/500000 | 128863/250000 | 332459/500000 |
| u | 518997/1000000 | 850783/1000000 | 518997/1000000 | 850783/1000000 |
| v | 383261/1000000 | 33301/40000 | 383261/1000000 | 33301/40000 |
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
| 0 | bound | `{"direction":"lo","ref":"125:4299","triangle":"FPS","value":"97951/1000000"}` | `1 * p * k + -1 * p + -1 * f * k + -1 * q * j + 1 * f * q + 1 * j + -97951/1000000` |
| 1 | bound | `{"direction":"lo","ref":"125:4781","triangle":"CES","value":"10681/31250"}` | `1 * k + -1 * c * k + -1 * e * j + 1 * c * e + -10681/31250` |
| 2 | bound | `{"direction":"lo","ref":"125:4786","triangle":"EFH","value":"191629/500000"}` | `1 * f * h + -1 * e * f + -1 * h + 308371/500000` |
| 3 | physical | `{"factor":122,"stage":125}` | `-1/1 * f * k + -1/1 * h * j + 1/1 * f * h + 1/1 * j + -93/1000` |
| 4 | physical | `{"factor":65,"stage":125}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 5 | physical | `{"factor":92,"stage":125}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 6 | coordinate | `{"box":580,"direction":"hi","value":"6143/20000","variable":"b"}` | `6143/20000 + -1 * b` |
| 7 | coordinate | `{"box":580,"direction":"hi","value":"215121/250000","variable":"j"}` | `215121/250000 + -1 * j` |
| 8 | coordinate | `{"box":580,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 9 | coordinate | `{"box":580,"direction":"hi","value":"422979/500000","variable":"c"}` | `422979/500000 + -1 * c` |
| 10 | coordinate | `{"box":580,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 11 | coordinate | `{"box":580,"direction":"hi","value":"145179/250000","variable":"f"}` | `145179/250000 + -1 * f` |
| 12 | coordinate | `{"box":580,"direction":"hi","value":"194349/200000","variable":"h"}` | `194349/200000 + -1 * h` |
| 13 | coordinate | `{"box":580,"direction":"hi","value":"264693/500000","variable":"p"}` | `264693/500000 + -1 * p` |
| 14 | coordinate | `{"box":580,"direction":"hi","value":"332459/500000","variable":"q"}` | `332459/500000 + -1 * q` |
| 15 | coordinate | `{"box":580,"direction":"lo","value":"26859/250000","variable":"b"}` | `-26859/250000 + 1 * b` |
| 16 | coordinate | `{"box":580,"direction":"lo","value":"147547/500000","variable":"j"}` | `-147547/500000 + 1 * j` |
| 17 | coordinate | `{"box":580,"direction":"lo","value":"853529/1000000","variable":"k"}` | `-853529/1000000 + 1 * k` |
| 18 | coordinate | `{"box":580,"direction":"lo","value":"557763/1000000","variable":"c"}` | `-557763/1000000 + 1 * c` |
| 19 | coordinate | `{"box":580,"direction":"lo","value":"4511/40000","variable":"e"}` | `-4511/40000 + 1 * e` |
| 20 | coordinate | `{"box":580,"direction":"lo","value":"4511/40000","variable":"f"}` | `-4511/40000 + 1 * f` |
| 21 | coordinate | `{"box":580,"direction":"lo","value":"335493/500000","variable":"h"}` | `-335493/500000 + 1 * h` |
| 22 | coordinate | `{"box":580,"direction":"lo","value":"50449/250000","variable":"p"}` | `-50449/250000 + 1 * p` |
| 23 | coordinate | `{"box":580,"direction":"lo","value":"128863/250000","variable":"q"}` | `-128863/250000 + 1 * q` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 90786000000 | 4 |
| 1 | 19598000000 | 1 |
| 2 | 111793000000 | 5 |
| 3 | 59853000000 | 2 |
| 4 | 2310000000 | 3 |
| 5 | 4427000000 | 0 |
| 6 | 90786000000 | 6, 23 |
| 7 | 19598000000 | 9, 19 |
| 8 | 111793000000 | 9, 21 |
| 9 | 111793000000 | 18, 23 |
| 10 | 19598000000 | 8, 9 |
| 11 | 51207000000 | 19, 20 |
| 12 | 8646000000 | 10, 11 |
| 13 | 19598000000 | 16, 19 |
| 14 | 62163000000 | 12, 20 |
| 15 | 86360000000 | 20, 23 |
| 16 | 6737000000 | 8, 11 |
| 17 | 59342000000 | 21, 22 |
| 18 | 52451000000 | 12, 13 |
| 19 | 2310000000 | 7, 12 |
| 20 | 4427000000 | 8, 22 |
| 21 | 4427000000 | 16, 23 |
| 22 | 1000000 | 11, 23 |
| 23 | 515452 | 11 |
| 24 | 580716 | 14 |
| 25 | 648207 | 22 |
| 26 | 43990174728 | 15 |
| 27 | 17684 | 17 |
| 28 | 93661 | 12 |
| 29 | 198596 | 7 |
| 30 | 45514709297 | 23 |
| 31 | 223088 | 18 |
| 32 | 92711 | 10 |
| 33 | 305710 | 20 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -252951546110257/40000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -252951546110257/40000 | 1 | -252951546110257/40000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 580 | -252951546110257/40000 |

## Stage 581

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR-/PQS+/BFP-/APR-/APQ-/APS+/CQS+ |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR-/PQS+/BFP-/APR-/APQ-/APS+/CQS+:HH |
| Index | 0 |
| Context | 61 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 553 |
| Coordinate cut | c high 422979/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 112669/1000000 | 6143/20000 | 112669/1000000 | 6143/20000 |
| b | 26859/250000 | 6143/20000 | 26859/250000 | 6143/20000 |
| c | 422979/500000 | 926723/1000000 | 422979/500000 | 926723/1000000 |
| e | 4511/40000 | 391/1000 | 4511/40000 | 391/1000 |
| f | 4511/40000 | 145179/250000 | 4511/40000 | 145179/250000 |
| h | 29243/50000 | 194349/200000 | 29243/50000 | 194349/200000 |
| p | 50449/250000 | 264693/500000 | 50449/250000 | 264693/500000 |
| q | 18263/62500 | 332459/500000 | 18263/62500 | 332459/500000 |
| u | 518997/1000000 | 850783/1000000 | 518997/1000000 | 850783/1000000 |
| v | 383261/1000000 | 33301/40000 | 383261/1000000 | 33301/40000 |
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
| 0 | bound | `{"direction":"lo","ref":"125:281","triangle":"AFS","value":"123363/1000000"}` | `-1 * f * k + 1 * a * f + 1 * j + -1 * a * j + -123363/1000000` |
| 1 | bound | `{"direction":"lo","ref":"125:4781","triangle":"CES","value":"10681/31250"}` | `1 * k + -1 * c * k + -1 * e * j + 1 * c * e + -10681/31250` |
| 2 | physical | `{"factor":143,"stage":125}` | `1/1 * f + -1/1 * e` |
| 3 | physical | `{"factor":46,"stage":125}` | `1/1 * r * k + -1/1 * a * r + -1/1 * w * j + 1/1 * a * j + -13857/20000` |
| 4 | physical | `{"factor":85,"stage":125}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 5 | coordinate | `{"box":581,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 6 | coordinate | `{"box":581,"direction":"hi","value":"389681/500000","variable":"w"}` | `389681/500000 + -1 * w` |
| 7 | coordinate | `{"box":581,"direction":"hi","value":"215121/250000","variable":"j"}` | `215121/250000 + -1 * j` |
| 8 | coordinate | `{"box":581,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 9 | coordinate | `{"box":581,"direction":"hi","value":"926723/1000000","variable":"c"}` | `926723/1000000 + -1 * c` |
| 10 | coordinate | `{"box":581,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 11 | coordinate | `{"box":581,"direction":"hi","value":"145179/250000","variable":"f"}` | `145179/250000 + -1 * f` |
| 12 | coordinate | `{"box":581,"direction":"lo","value":"112669/1000000","variable":"a"}` | `-112669/1000000 + 1 * a` |
| 13 | coordinate | `{"box":581,"direction":"lo","value":"834931/1000000","variable":"r"}` | `-834931/1000000 + 1 * r` |
| 14 | coordinate | `{"box":581,"direction":"lo","value":"139783/500000","variable":"w"}` | `-139783/500000 + 1 * w` |
| 15 | coordinate | `{"box":581,"direction":"lo","value":"147547/500000","variable":"j"}` | `-147547/500000 + 1 * j` |
| 16 | coordinate | `{"box":581,"direction":"lo","value":"422979/500000","variable":"c"}` | `-422979/500000 + 1 * c` |
| 17 | coordinate | `{"box":581,"direction":"lo","value":"4511/40000","variable":"e"}` | `-4511/40000 + 1 * e` |
| 18 | coordinate | `{"box":581,"direction":"lo","value":"4511/40000","variable":"f"}` | `-4511/40000 + 1 * f` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 32989000000 | 0 |
| 1 | 32989000000 | 3 |
| 2 | 74865000000 | 4 |
| 3 | 110087000000 | 1 |
| 4 | 29272000000 | 2 |
| 5 | 32989000000 | 11, 12 |
| 6 | 32989000000 | 12, 13 |
| 7 | 184951000000 | 10, 16 |
| 8 | 74865000000 | 14, 16 |
| 9 | 110087000000 | 8, 9 |
| 10 | 74865000000 | 5, 10 |
| 11 | 74999000000 | 15, 17 |
| 12 | 35088000000 | 7, 10 |
| 13 | 32989000000 | 8, 11 |
| 14 | 32989000000 | 8, 13 |
| 15 | 29810000000 | 14, 15 |
| 16 | 3179000000 | 6, 7 |
| 17 | 125517 | 7 |
| 18 | 123554 | 6 |
| 19 | 1000000 | 9, 17 |
| 20 | 112775 | 9 |
| 21 | 926723 | 10 |
| 22 | 16453143734 | 8 |
| 23 | 162359 | 18 |
| 24 | 639440 | 17 |
| 25 | 8386298635 | 12 |
| 26 | 52641 | 13 |
| 27 | 58700867590 | 16 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -3196120995825799/500000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -3196120995825799/500000 | 1 | -3196120995825799/500000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 581 | -3196120995825799/500000 |

## Stage 582

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR-/PQS+/BFP-/APR-/APQ-/APS-/BQS+ |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR-/PQS+/BFP-/APR-/APQ-/APS-/BQS+:root |
| Index | 0 |
| Context | 64 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 128 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 3351/31250 | 6143/20000 | 3351/31250 | 6143/20000 |
| b | 10417/100000 | 6143/20000 | 10417/100000 | 6143/20000 |
| c | 135501/250000 | 971389/1000000 | 135501/250000 | 971389/1000000 |
| e | 3351/31250 | 391/1000 | 3351/31250 | 391/1000 |
| f | 3351/31250 | 583319/1000000 | 3351/31250 | 583319/1000000 |
| h | 34873/62500 | 1 | 34873/62500 | 1 |
| p | 99111/500000 | 493439/1000000 | 99111/500000 | 493439/1000000 |
| q | 85909/250000 | 700201/1000000 | 85909/250000 | 700201/1000000 |
| u | 12891/31250 | 845627/1000000 | 12891/31250 | 845627/1000000 |
| v | 410199/1000000 | 855049/1000000 | 410199/1000000 | 855049/1000000 |
| r | 797901/1000000 | 1 | 797901/1000000 | 1 |
| w | 35991/125000 | 87959/100000 | 35991/125000 | 87959/100000 |
| j | 242691/500000 | 87959/100000 | 242691/500000 | 87959/100000 |
| k | 171943/250000 | 1 | 171943/250000 | 1 |

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


## Stage 583

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR-/PQS+/BFP-/APR-/APQ-/APS-/BQS+ |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR-/PQS+/BFP-/APR-/APQ-/APS-/BQS+:L |
| Index | 0 |
| Context | 64 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 582 |
| Coordinate cut | w low 11808/15625 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 3351/31250 | 6143/20000 | 3351/31250 | 6143/20000 |
| b | 10417/100000 | 6143/20000 | 10417/100000 | 6143/20000 |
| c | 135501/250000 | 971389/1000000 | 135501/250000 | 971389/1000000 |
| e | 3351/31250 | 391/1000 | 3351/31250 | 391/1000 |
| f | 3351/31250 | 583319/1000000 | 3351/31250 | 583319/1000000 |
| h | 34873/62500 | 1 | 34873/62500 | 1 |
| p | 99111/500000 | 493439/1000000 | 99111/500000 | 493439/1000000 |
| q | 85909/250000 | 700201/1000000 | 85909/250000 | 700201/1000000 |
| u | 12891/31250 | 845627/1000000 | 12891/31250 | 845627/1000000 |
| v | 410199/1000000 | 855049/1000000 | 410199/1000000 | 855049/1000000 |
| r | 797901/1000000 | 1 | 797901/1000000 | 1 |
| w | 35991/125000 | 11808/15625 | 35991/125000 | 11808/15625 |
| j | 242691/500000 | 87959/100000 | 242691/500000 | 87959/100000 |
| k | 171943/250000 | 1 | 171943/250000 | 1 |

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


## Stage 584

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR-/PQS+/BFP-/APR-/APQ-/APS-/BQS+ |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR-/PQS+/BFP-/APR-/APQ-/APS-/BQS+:LL |
| Index | 0 |
| Context | 64 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 583 |
| Coordinate cut | q low 573309/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 3351/31250 | 6143/20000 | 3351/31250 | 6143/20000 |
| b | 10417/100000 | 6143/20000 | 10417/100000 | 6143/20000 |
| c | 135501/250000 | 971389/1000000 | 135501/250000 | 971389/1000000 |
| e | 3351/31250 | 391/1000 | 3351/31250 | 391/1000 |
| f | 3351/31250 | 583319/1000000 | 3351/31250 | 583319/1000000 |
| h | 34873/62500 | 1 | 34873/62500 | 1 |
| p | 99111/500000 | 493439/1000000 | 99111/500000 | 493439/1000000 |
| q | 85909/250000 | 573309/1000000 | 85909/250000 | 573309/1000000 |
| u | 12891/31250 | 845627/1000000 | 12891/31250 | 845627/1000000 |
| v | 410199/1000000 | 855049/1000000 | 410199/1000000 | 855049/1000000 |
| r | 797901/1000000 | 1 | 797901/1000000 | 1 |
| w | 35991/125000 | 11808/15625 | 35991/125000 | 11808/15625 |
| j | 242691/500000 | 87959/100000 | 242691/500000 | 87959/100000 |
| k | 171943/250000 | 1 | 171943/250000 | 1 |

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
