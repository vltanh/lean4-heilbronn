# BITT convex: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 610

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR-/PQS+/BFP-/APR-/APQ-/APS-/BQS+ |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR-/PQS+/BFP-/APR-/APQ-/APS-/BQS+:LLHHH |
| Index | 0 |
| Context | 64 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 588 |
| Coordinate cut | f high 218127/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 3351/31250 | 6143/20000 | 3351/31250 | 6143/20000 |
| b | 10417/100000 | 6143/20000 | 10417/100000 | 6143/20000 |
| c | 135501/250000 | 971389/1000000 | 135501/250000 | 971389/1000000 |
| e | 3351/31250 | 391/1000 | 3351/31250 | 391/1000 |
| f | 218127/500000 | 583319/1000000 | 218127/500000 | 583319/1000000 |
| h | 665227/1000000 | 1 | 665227/1000000 | 1 |
| p | 99111/500000 | 493439/1000000 | 99111/500000 | 493439/1000000 |
| q | 85909/250000 | 573309/1000000 | 85909/250000 | 573309/1000000 |
| u | 12891/31250 | 845627/1000000 | 12891/31250 | 845627/1000000 |
| v | 410199/1000000 | 855049/1000000 | 410199/1000000 | 855049/1000000 |
| r | 797901/1000000 | 1 | 797901/1000000 | 1 |
| w | 35991/125000 | 11808/15625 | 35991/125000 | 11808/15625 |
| j | 595741/1000000 | 87959/100000 | 595741/1000000 | 87959/100000 |
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


### Coordinate certificate sources

| Source | Kind | Source witness | Polynomial |
| --- | --- | --- | --- |
| 0 | bound | `{"direction":"lo","ref":"128:3633","triangle":"QRS","value":"64329/500000"}` | `1 * r * k + -1 * v * r + -1 * u * k + -1 * w * j + 1 * u * w + 1 * v * j + -64329/500000` |
| 1 | bound | `{"direction":"lo","ref":"128:3673","triangle":"PRS","value":"157329/500000"}` | `1 * r * k + -1 * q * r + -1 * p * k + -1 * w * j + 1 * p * w + 1 * q * j + -157329/500000` |
| 2 | bound | `{"direction":"lo","ref":"128:4005","triangle":"CEF","value":"82163/250000"}` | `167837/250000 + -1 * c + -1 * e * f + 1 * c * e` |
| 3 | bound | `{"direction":"lo","ref":"128:4024","triangle":"FPS","value":"89139/500000"}` | `1 * p * k + -1 * p + -1 * f * k + -1 * q * j + 1 * f * q + 1 * j + -89139/500000` |
| 4 | physical | `{"factor":10,"stage":128}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 5 | physical | `{"factor":105,"stage":128}` | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 6 | physical | `{"factor":110,"stage":128}` | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 7 | physical | `{"factor":116,"stage":128}` | `-1/1 * u * w + 1/1 * e * u + 1/1 * w + 1/1 * v * r + -1/1 * v + -1/1 * e * r + -93/1000` |
| 8 | physical | `{"factor":1176,"stage":128}` | `410659/1000000 * w + 958241/1000000 * a + -410659/1000000 * e * r + -958241/1000000 * a * r + -13689/10000 * p * w + 13689/10000 * e * p + 13689/10000 * q * r + -13689/10000 * q` |
| 9 | physical | `{"factor":118,"stage":128}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 10 | physical | `{"factor":43,"stage":128}` | `-1/1 * p * k + 1/1 * a * p + 1/1 * q * j + -1/1 * a * j + -93/1000` |
| 11 | physical | `{"factor":65,"stage":128}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 12 | physical | `{"factor":7,"stage":128}` | `1/1 * b * h + -1/1 * a * b + -93/1000` |
| 13 | physical | `{"factor":78,"stage":128}` | `1/1 * u * k + -1/1 * b * k + -1/1 * v * j + 1/1 * b * v + -93/1000` |
| 14 | physical | `{"factor":93,"stage":128}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 15 | coordinate | `{"box":610,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 16 | coordinate | `{"box":610,"direction":"hi","value":"6143/20000","variable":"b"}` | `6143/20000 + -1 * b` |
| 17 | coordinate | `{"box":610,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 18 | coordinate | `{"box":610,"direction":"hi","value":"11808/15625","variable":"w"}` | `11808/15625 + -1 * w` |
| 19 | coordinate | `{"box":610,"direction":"hi","value":"87959/100000","variable":"j"}` | `87959/100000 + -1 * j` |
| 20 | coordinate | `{"box":610,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 21 | coordinate | `{"box":610,"direction":"hi","value":"971389/1000000","variable":"c"}` | `971389/1000000 + -1 * c` |
| 22 | coordinate | `{"box":610,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 23 | coordinate | `{"box":610,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 24 | coordinate | `{"box":610,"direction":"hi","value":"493439/1000000","variable":"p"}` | `493439/1000000 + -1 * p` |
| 25 | coordinate | `{"box":610,"direction":"hi","value":"573309/1000000","variable":"q"}` | `573309/1000000 + -1 * q` |
| 26 | coordinate | `{"box":610,"direction":"hi","value":"845627/1000000","variable":"u"}` | `845627/1000000 + -1 * u` |
| 27 | coordinate | `{"box":610,"direction":"hi","value":"855049/1000000","variable":"v"}` | `855049/1000000 + -1 * v` |
| 28 | coordinate | `{"box":610,"direction":"lo","value":"3351/31250","variable":"a"}` | `-3351/31250 + 1 * a` |
| 29 | coordinate | `{"box":610,"direction":"lo","value":"10417/100000","variable":"b"}` | `-10417/100000 + 1 * b` |
| 30 | coordinate | `{"box":610,"direction":"lo","value":"797901/1000000","variable":"r"}` | `-797901/1000000 + 1 * r` |
| 31 | coordinate | `{"box":610,"direction":"lo","value":"35991/125000","variable":"w"}` | `-35991/125000 + 1 * w` |
| 32 | coordinate | `{"box":610,"direction":"lo","value":"595741/1000000","variable":"j"}` | `-595741/1000000 + 1 * j` |
| 33 | coordinate | `{"box":610,"direction":"lo","value":"171943/250000","variable":"k"}` | `-171943/250000 + 1 * k` |
| 34 | coordinate | `{"box":610,"direction":"lo","value":"135501/250000","variable":"c"}` | `-135501/250000 + 1 * c` |
| 35 | coordinate | `{"box":610,"direction":"lo","value":"3351/31250","variable":"e"}` | `-3351/31250 + 1 * e` |
| 36 | coordinate | `{"box":610,"direction":"lo","value":"218127/500000","variable":"f"}` | `-218127/500000 + 1 * f` |
| 37 | coordinate | `{"box":610,"direction":"lo","value":"665227/1000000","variable":"h"}` | `-665227/1000000 + 1 * h` |
| 38 | coordinate | `{"box":610,"direction":"lo","value":"99111/500000","variable":"p"}` | `-99111/500000 + 1 * p` |
| 39 | coordinate | `{"box":610,"direction":"lo","value":"85909/250000","variable":"q"}` | `-85909/250000 + 1 * q` |
| 40 | coordinate | `{"box":610,"direction":"lo","value":"12891/31250","variable":"u"}` | `-12891/31250 + 1 * u` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 20471000000000000 | 12 |
| 1 | 11320000000000000 | 4 |
| 2 | 54602000000000000 | 10 |
| 3 | 64061000000000000 | 11 |
| 4 | 2233000000000000 | 13 |
| 5 | 7527000000000000 | 2 |
| 6 | 15749000000000000 | 14 |
| 7 | 5200000000000000 | 5 |
| 8 | 4932000000000000 | 6 |
| 9 | 2233000000000000 | 7 |
| 10 | 42572000000000000 | 9 |
| 11 | 23607000000000000 | 3 |
| 12 | 18013000000000000 | 1 |
| 13 | 2233000000000000 | 0 |
| 14 | 13159000000000000 | 8 |
| 15 | 20471000000000000 | 23, 29 |
| 16 | 75382000000000000 | 25, 29 |
| 17 | 65922000000000000 | 24, 28 |
| 18 | 2233000000000000 | 27, 29 |
| 19 | 12609000000000000 | 15, 17 |
| 20 | 2233000000000000 | 29, 33 |
| 21 | 54602000000000000 | 28, 32 |
| 22 | 7527000000000000 | 21, 35 |
| 23 | 15749000000000000 | 23, 34 |
| 24 | 15749000000000000 | 21, 25 |
| 25 | 12727000000000000 | 35, 36 |
| 26 | 18013000000000000 | 24, 35 |
| 27 | 2501000000000000 | 26, 35 |
| 28 | 50209000000000000 | 17, 22 |
| 29 | 42572000000000000 | 19, 35 |
| 30 | 40454000000000000 | 36, 39 |
| 31 | 5200000000000000 | 27, 36 |
| 32 | 23607000000000000 | 33, 36 |
| 33 | 15749000000000000 | 23, 24 |
| 34 | 4932000000000000 | 23, 40 |
| 35 | 49008000000000000 | 33, 38 |
| 36 | 49008000000000000 | 19, 39 |
| 37 | 62818000000000000 | 17, 33 |
| 38 | 17774000000000000 | 31, 32 |
| 39 | 45044000000000000 | 18, 19 |
| 40 | 31791000000000000 | 28, 29 |
| 41 | 3312062089723419 | 28 |
| 42 | 3409356148000000 | 29 |
| 43 | 1000000000000 | 29, 39 |
| 44 | 594287000000 | 39 |
| 45 | 914499232800 | 38 |
| 46 | 708579000000 | 16 |
| 47 | 91823000000 | 21 |
| 48 | 132410000000 | 27 |
| 49 | 187232000000 | 26 |
| 50 | 176561000000 | 37 |
| 51 | 161101632200 | 31 |
| 52 | 138219000000 | 22, 30 |
| 53 | 180673710519 | 22 |
| 54 | 19700145771654900 | 17 |
| 55 | 276436000000 | 20 |
| 56 | 11472000000 | 32 |
| 57 | 355100000000 | 25, 30 |
| 58 | 283334645100 | 25 |
| 59 | 355100000000 | 31, 38 |
| 60 | 328995000000 | 15 |
| 61 | 493319000000 | 28, 30 |
| 62 | 52899583008 | 30 |
| 63 | 355100000000 | 22, 38 |
| 64 | 138844100000 | 24 |
| 65 | 424341000000 | 35 |
| 66 | 27056171212000000 | 36 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -44710991401375388247/15625 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -44710991401375388247/15625 | 1 | -44710991401375388247/15625 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 610 | -44710991401375388247/15625 |

## Stage 611

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR-/PQS+/BFP-/APR-/APQ-/APS-/BQS+ |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR-/PQS+/BFP-/APR-/APQ-/APS-/BQS+:LH |
| Index | 0 |
| Context | 64 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 583 |
| Coordinate cut | q high 573309/1000000 |

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
| q | 573309/1000000 | 700201/1000000 | 573309/1000000 | 700201/1000000 |
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


### Coordinate certificate sources

| Source | Kind | Source witness | Polynomial |
| --- | --- | --- | --- |
| 0 | bound | `{"direction":"lo","ref":"128:4005","triangle":"CEF","value":"82163/250000"}` | `167837/250000 + -1 * c + -1 * e * f + 1 * c * e` |
| 1 | bound | `{"direction":"lo","ref":"128:4040","triangle":"EFP","value":"183517/500000"}` | `1 * f * q + -1 * e * f + -1 * q + -1 * p + 316483/500000 + 1 * e * p` |
| 2 | bound | `{"direction":"lo","ref":"128:4110","triangle":"EFH","value":"327749/1000000"}` | `1 * f * h + -1 * e * f + -1 * h + 672251/1000000` |
| 3 | physical | `{"factor":65,"stage":128}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 4 | physical | `{"factor":93,"stage":128}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 5 | coordinate | `{"box":611,"direction":"hi","value":"971389/1000000","variable":"c"}` | `971389/1000000 + -1 * c` |
| 6 | coordinate | `{"box":611,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 7 | coordinate | `{"box":611,"direction":"hi","value":"583319/1000000","variable":"f"}` | `583319/1000000 + -1 * f` |
| 8 | coordinate | `{"box":611,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 9 | coordinate | `{"box":611,"direction":"hi","value":"493439/1000000","variable":"p"}` | `493439/1000000 + -1 * p` |
| 10 | coordinate | `{"box":611,"direction":"hi","value":"700201/1000000","variable":"q"}` | `700201/1000000 + -1 * q` |
| 11 | coordinate | `{"box":611,"direction":"lo","value":"10417/100000","variable":"b"}` | `-10417/100000 + 1 * b` |
| 12 | coordinate | `{"box":611,"direction":"lo","value":"135501/250000","variable":"c"}` | `-135501/250000 + 1 * c` |
| 13 | coordinate | `{"box":611,"direction":"lo","value":"3351/31250","variable":"e"}` | `-3351/31250 + 1 * e` |
| 14 | coordinate | `{"box":611,"direction":"lo","value":"3351/31250","variable":"f"}` | `-3351/31250 + 1 * f` |
| 15 | coordinate | `{"box":611,"direction":"lo","value":"34873/62500","variable":"h"}` | `-34873/62500 + 1 * h` |
| 16 | coordinate | `{"box":611,"direction":"lo","value":"99111/500000","variable":"p"}` | `-99111/500000 + 1 * p` |
| 17 | coordinate | `{"box":611,"direction":"lo","value":"573309/1000000","variable":"q"}` | `-573309/1000000 + 1 * q` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 134054000000 | 3 |
| 1 | 7157000000 | 0 |
| 2 | 14975000000 | 4 |
| 3 | 815000000 | 2 |
| 4 | 195533000000 | 1 |
| 5 | 134054000000 | 10, 11 |
| 6 | 7157000000 | 5, 13 |
| 7 | 14975000000 | 8, 12 |
| 8 | 14975000000 | 12, 17 |
| 9 | 153327000000 | 13, 14 |
| 10 | 50178000000 | 6, 7 |
| 11 | 195533000000 | 6, 16 |
| 12 | 815000000 | 8, 14 |
| 13 | 61479000000 | 7, 17 |
| 14 | 14975000000 | 8, 9 |
| 15 | 597000 | 16 |
| 16 | 40189255146 | 11 |
| 17 | 157149 | 5 |
| 18 | 345045 | 15 |
| 19 | 153823235919 | 17 |
| 20 | 168247 | 13 |
| 21 | 305147 | 7 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -3153952094213439/500000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -3153952094213439/500000 | 1 | -3153952094213439/500000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 611 | -3153952094213439/500000 |

## Stage 612

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR-/PQS+/BFP-/APR-/APQ-/APS-/BQS+ |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR-/PQS+/BFP-/APR-/APQ-/APS-/BQS+:H |
| Index | 0 |
| Context | 64 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 582 |
| Coordinate cut | w high 11808/15625 |

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
| w | 11808/15625 | 87959/100000 | 11808/15625 | 87959/100000 |
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


### Coordinate certificate sources

| Source | Kind | Source witness | Polynomial |
| --- | --- | --- | --- |
| 0 | bound | `{"direction":"lo","ref":"128:3633","triangle":"QRS","value":"64329/500000"}` | `1 * r * k + -1 * v * r + -1 * u * k + -1 * w * j + 1 * u * w + 1 * v * j + -64329/500000` |
| 1 | bound | `{"direction":"lo","ref":"128:3673","triangle":"PRS","value":"157329/500000"}` | `1 * r * k + -1 * q * r + -1 * p * k + -1 * w * j + 1 * p * w + 1 * q * j + -157329/500000` |
| 2 | bound | `{"direction":"lo","ref":"128:4024","triangle":"FPS","value":"89139/500000"}` | `1 * p * k + -1 * p + -1 * f * k + -1 * q * j + 1 * f * q + 1 * j + -89139/500000` |
| 3 | bound | `{"direction":"lo","ref":"128:4031","triangle":"FPQ","value":"6583/50000"}` | `1 * p * v + -1 * p + -1 * f * v + -1 * q * u + 1 * f * q + 1 * u + -6583/50000` |
| 4 | physical | `{"factor":105,"stage":128}` | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 5 | physical | `{"factor":110,"stage":128}` | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 6 | physical | `{"factor":134,"stage":128}` | `-1/1 * u * w + 1/1 * q * u + 1/1 * p * w + 1/1 * v * r + -1/1 * p * v + -1/1 * q * r + -93/1000` |
| 7 | physical | `{"factor":143,"stage":128}` | `1/1 * f + -1/1 * e` |
| 8 | physical | `{"factor":43,"stage":128}` | `-1/1 * p * k + 1/1 * a * p + 1/1 * q * j + -1/1 * a * j + -93/1000` |
| 9 | physical | `{"factor":65,"stage":128}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 10 | physical | `{"factor":7,"stage":128}` | `1/1 * b * h + -1/1 * a * b + -93/1000` |
| 11 | physical | `{"factor":78,"stage":128}` | `1/1 * u * k + -1/1 * b * k + -1/1 * v * j + 1/1 * b * v + -93/1000` |
| 12 | coordinate | `{"box":612,"direction":"hi","value":"6143/20000","variable":"b"}` | `6143/20000 + -1 * b` |
| 13 | coordinate | `{"box":612,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 14 | coordinate | `{"box":612,"direction":"hi","value":"87959/100000","variable":"w"}` | `87959/100000 + -1 * w` |
| 15 | coordinate | `{"box":612,"direction":"hi","value":"87959/100000","variable":"j"}` | `87959/100000 + -1 * j` |
| 16 | coordinate | `{"box":612,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 17 | coordinate | `{"box":612,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 18 | coordinate | `{"box":612,"direction":"hi","value":"583319/1000000","variable":"f"}` | `583319/1000000 + -1 * f` |
| 19 | coordinate | `{"box":612,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 20 | coordinate | `{"box":612,"direction":"hi","value":"493439/1000000","variable":"p"}` | `493439/1000000 + -1 * p` |
| 21 | coordinate | `{"box":612,"direction":"hi","value":"700201/1000000","variable":"q"}` | `700201/1000000 + -1 * q` |
| 22 | coordinate | `{"box":612,"direction":"hi","value":"855049/1000000","variable":"v"}` | `855049/1000000 + -1 * v` |
| 23 | coordinate | `{"box":612,"direction":"lo","value":"3351/31250","variable":"a"}` | `-3351/31250 + 1 * a` |
| 24 | coordinate | `{"box":612,"direction":"lo","value":"10417/100000","variable":"b"}` | `-10417/100000 + 1 * b` |
| 25 | coordinate | `{"box":612,"direction":"lo","value":"797901/1000000","variable":"r"}` | `-797901/1000000 + 1 * r` |
| 26 | coordinate | `{"box":612,"direction":"lo","value":"11808/15625","variable":"w"}` | `-11808/15625 + 1 * w` |
| 27 | coordinate | `{"box":612,"direction":"lo","value":"242691/500000","variable":"j"}` | `-242691/500000 + 1 * j` |
| 28 | coordinate | `{"box":612,"direction":"lo","value":"171943/250000","variable":"k"}` | `-171943/250000 + 1 * k` |
| 29 | coordinate | `{"box":612,"direction":"lo","value":"3351/31250","variable":"e"}` | `-3351/31250 + 1 * e` |
| 30 | coordinate | `{"box":612,"direction":"lo","value":"3351/31250","variable":"f"}` | `-3351/31250 + 1 * f` |
| 31 | coordinate | `{"box":612,"direction":"lo","value":"99111/500000","variable":"p"}` | `-99111/500000 + 1 * p` |
| 32 | coordinate | `{"box":612,"direction":"lo","value":"85909/250000","variable":"q"}` | `-85909/250000 + 1 * q` |
| 33 | coordinate | `{"box":612,"direction":"lo","value":"12891/31250","variable":"u"}` | `-12891/31250 + 1 * u` |
| 34 | coordinate | `{"box":612,"direction":"lo","value":"410199/1000000","variable":"v"}` | `-410199/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 13255000000 | 10 |
| 1 | 55141000000 | 8 |
| 2 | 49845000000 | 9 |
| 3 | 12831000000 | 11 |
| 4 | 37372000000 | 4 |
| 5 | 2350000000 | 5 |
| 6 | 47615000000 | 3 |
| 7 | 2230000000 | 2 |
| 8 | 47615000000 | 6 |
| 9 | 17381000000 | 1 |
| 10 | 12831000000 | 0 |
| 11 | 10439000000 | 7 |
| 12 | 13255000000 | 23, 24 |
| 13 | 13255000000 | 19, 24 |
| 14 | 49845000000 | 21, 24 |
| 15 | 55141000000 | 20, 23 |
| 16 | 12831000000 | 22, 24 |
| 17 | 12831000000 | 24, 28 |
| 18 | 55141000000 | 23, 27 |
| 19 | 37372000000 | 29, 30 |
| 20 | 35022000000 | 17, 33 |
| 21 | 10243000000 | 30, 34 |
| 22 | 2230000000 | 16, 18 |
| 23 | 2350000000 | 19, 33 |
| 24 | 10360000000 | 14, 31 |
| 25 | 54636000000 | 20, 26 |
| 26 | 2888000000 | 25, 32 |
| 27 | 62108000000 | 13, 21 |
| 28 | 44768000000 | 28, 31 |
| 29 | 25524000000 | 16, 20 |
| 30 | 63675000000 | 15, 32 |
| 31 | 6617000000 | 21, 27 |
| 32 | 34784000000 | 26, 33 |
| 33 | 34784000000 | 13, 34 |
| 34 | 30212000000 | 16, 25 |
| 35 | 30212000000 | 26, 27 |
| 36 | 936502313 | 23 |
| 37 | 964015680 | 24 |
| 38 | 336048 | 20 |
| 39 | 505552 | 12 |
| 40 | 227894 | 22 |
| 41 | 84208 | 33 |
| 42 | 176550 | 19 |
| 43 | 198339 | 27 |
| 44 | 142661 | 30 |
| 45 | 520960 | 17 |
| 46 | 318494 | 32 |
| 47 | 238840 | 16 |
| 48 | 65268 | 26 |
| 49 | 142460 | 25 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -1824828925221687/500000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -1824828925221687/500000 | 1 | -1824828925221687/500000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 612 | -1824828925221687/500000 |

## Stage 613

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR-/PQS-/BPQ+/AQS+ |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR-/PQS-/BPQ+/AQS+:root |
| Index | 0 |
| Context | 68 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 138 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 609783/1000000 | 1 | 609783/1000000 | 1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 103767/1000000 | 2021/4000 | 103767/1000000 | 2021/4000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 262449/1000000 | 710233/1000000 | 262449/1000000 | 710233/1000000 |
| q | 196767/1000000 | 608929/1000000 | 196767/1000000 | 608929/1000000 |
| u | 273069/1000000 | 731791/1000000 | 273069/1000000 | 731791/1000000 |
| v | 410377/1000000 | 863907/1000000 | 410377/1000000 | 863907/1000000 |
| r | 276749/500000 | 1 | 276749/500000 | 1 |
| w | 56647/200000 | 440113/500000 | 56647/200000 | 440113/500000 |
| j | 481803/1000000 | 440113/500000 | 481803/1000000 | 440113/500000 |
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


## Stage 614

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR-/PQS-/BPQ+/AQS+ |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR-/PQS-/BPQ+/AQS+:L |
| Index | 0 |
| Context | 68 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 613 |
| Coordinate cut | h low 385501/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 609783/1000000 | 1 | 609783/1000000 | 1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 103767/1000000 | 2021/4000 | 103767/1000000 | 2021/4000 |
| h | 135501/250000 | 385501/500000 | 135501/250000 | 385501/500000 |
| p | 262449/1000000 | 710233/1000000 | 262449/1000000 | 710233/1000000 |
| q | 196767/1000000 | 608929/1000000 | 196767/1000000 | 608929/1000000 |
| u | 273069/1000000 | 731791/1000000 | 273069/1000000 | 731791/1000000 |
| v | 410377/1000000 | 863907/1000000 | 410377/1000000 | 863907/1000000 |
| r | 276749/500000 | 1 | 276749/500000 | 1 |
| w | 56647/200000 | 440113/500000 | 56647/200000 | 440113/500000 |
| j | 481803/1000000 | 440113/500000 | 481803/1000000 | 440113/500000 |
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
