# BITT convex: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 585

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR-/PQS+/BFP-/APR-/APQ-/APS-/BQS+ |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR-/PQS+/BFP-/APR-/APQ-/APS-/BQS+:LLL |
| Index | 0 |
| Context | 64 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 584 |
| Coordinate cut | h low 665227/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 3351/31250 | 6143/20000 | 3351/31250 | 6143/20000 |
| b | 10417/100000 | 6143/20000 | 10417/100000 | 6143/20000 |
| c | 135501/250000 | 971389/1000000 | 135501/250000 | 971389/1000000 |
| e | 3351/31250 | 391/1000 | 3351/31250 | 391/1000 |
| f | 3351/31250 | 583319/1000000 | 3351/31250 | 583319/1000000 |
| h | 34873/62500 | 665227/1000000 | 34873/62500 | 665227/1000000 |
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


### Coordinate certificate sources

| Source | Kind | Source witness | Polynomial |
| --- | --- | --- | --- |
| 0 | bound | `{"direction":"lo","ref":"128:3633","triangle":"QRS","value":"64329/500000"}` | `1 * r * k + -1 * v * r + -1 * u * k + -1 * w * j + 1 * u * w + 1 * v * j + -64329/500000` |
| 1 | bound | `{"direction":"lo","ref":"128:3673","triangle":"PRS","value":"157329/500000"}` | `1 * r * k + -1 * q * r + -1 * p * k + -1 * w * j + 1 * p * w + 1 * q * j + -157329/500000` |
| 2 | bound | `{"direction":"lo","ref":"128:3855","triangle":"AHP","value":"130631/1000000"}` | `1 * h * p + -1 * a * p + -130631/1000000` |
| 3 | bound | `{"direction":"lo","ref":"128:3978","triangle":"CEQ","value":"35663/250000"}` | `1 * v + -1 * c * v + -1 * e * u + 1 * c * e + -35663/250000` |
| 4 | bound | `{"direction":"lo","ref":"128:4005","triangle":"CEF","value":"82163/250000"}` | `167837/250000 + -1 * c + -1 * e * f + 1 * c * e` |
| 5 | physical | `{"factor":0,"stage":128}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 6 | physical | `{"factor":110,"stage":128}` | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 7 | physical | `{"factor":116,"stage":128}` | `-1/1 * u * w + 1/1 * e * u + 1/1 * w + 1/1 * v * r + -1/1 * v + -1/1 * e * r + -93/1000` |
| 8 | physical | `{"factor":118,"stage":128}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 9 | physical | `{"factor":143,"stage":128}` | `1/1 * f + -1/1 * e` |
| 10 | physical | `{"factor":43,"stage":128}` | `-1/1 * p * k + 1/1 * a * p + 1/1 * q * j + -1/1 * a * j + -93/1000` |
| 11 | physical | `{"factor":65,"stage":128}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 12 | physical | `{"factor":7,"stage":128}` | `1/1 * b * h + -1/1 * a * b + -93/1000` |
| 13 | physical | `{"factor":78,"stage":128}` | `1/1 * u * k + -1/1 * b * k + -1/1 * v * j + 1/1 * b * v + -93/1000` |
| 14 | physical | `{"factor":93,"stage":128}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 15 | coordinate | `{"box":585,"direction":"hi","value":"6143/20000","variable":"b"}` | `6143/20000 + -1 * b` |
| 16 | coordinate | `{"box":585,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 17 | coordinate | `{"box":585,"direction":"hi","value":"11808/15625","variable":"w"}` | `11808/15625 + -1 * w` |
| 18 | coordinate | `{"box":585,"direction":"hi","value":"87959/100000","variable":"j"}` | `87959/100000 + -1 * j` |
| 19 | coordinate | `{"box":585,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 20 | coordinate | `{"box":585,"direction":"hi","value":"971389/1000000","variable":"c"}` | `971389/1000000 + -1 * c` |
| 21 | coordinate | `{"box":585,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 22 | coordinate | `{"box":585,"direction":"hi","value":"583319/1000000","variable":"f"}` | `583319/1000000 + -1 * f` |
| 23 | coordinate | `{"box":585,"direction":"hi","value":"665227/1000000","variable":"h"}` | `665227/1000000 + -1 * h` |
| 24 | coordinate | `{"box":585,"direction":"hi","value":"493439/1000000","variable":"p"}` | `493439/1000000 + -1 * p` |
| 25 | coordinate | `{"box":585,"direction":"hi","value":"573309/1000000","variable":"q"}` | `573309/1000000 + -1 * q` |
| 26 | coordinate | `{"box":585,"direction":"hi","value":"845627/1000000","variable":"u"}` | `845627/1000000 + -1 * u` |
| 27 | coordinate | `{"box":585,"direction":"hi","value":"855049/1000000","variable":"v"}` | `855049/1000000 + -1 * v` |
| 28 | coordinate | `{"box":585,"direction":"lo","value":"3351/31250","variable":"a"}` | `-3351/31250 + 1 * a` |
| 29 | coordinate | `{"box":585,"direction":"lo","value":"10417/100000","variable":"b"}` | `-10417/100000 + 1 * b` |
| 30 | coordinate | `{"box":585,"direction":"lo","value":"242691/500000","variable":"j"}` | `-242691/500000 + 1 * j` |
| 31 | coordinate | `{"box":585,"direction":"lo","value":"171943/250000","variable":"k"}` | `-171943/250000 + 1 * k` |
| 32 | coordinate | `{"box":585,"direction":"lo","value":"135501/250000","variable":"c"}` | `-135501/250000 + 1 * c` |
| 33 | coordinate | `{"box":585,"direction":"lo","value":"3351/31250","variable":"e"}` | `-3351/31250 + 1 * e` |
| 34 | coordinate | `{"box":585,"direction":"lo","value":"3351/31250","variable":"f"}` | `-3351/31250 + 1 * f` |
| 35 | coordinate | `{"box":585,"direction":"lo","value":"99111/500000","variable":"p"}` | `-99111/500000 + 1 * p` |
| 36 | coordinate | `{"box":585,"direction":"lo","value":"85909/250000","variable":"q"}` | `-85909/250000 + 1 * q` |
| 37 | coordinate | `{"box":585,"direction":"lo","value":"12891/31250","variable":"u"}` | `-12891/31250 + 1 * u` |
| 38 | coordinate | `{"box":585,"direction":"lo","value":"410199/1000000","variable":"v"}` | `-410199/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 20094000000 | 5 |
| 1 | 65525000000 | 12 |
| 2 | 21982000000 | 2 |
| 3 | 30589000000 | 10 |
| 4 | 50541000000 | 11 |
| 5 | 4447000000 | 13 |
| 6 | 25375000000 | 4 |
| 7 | 4408000000 | 3 |
| 8 | 67897000000 | 14 |
| 9 | 1203000000 | 6 |
| 10 | 5611000000 | 7 |
| 11 | 4242000000 | 8 |
| 12 | 1741000000 | 1 |
| 13 | 5611000000 | 0 |
| 14 | 20089000000 | 9 |
| 15 | 85619000000 | 28, 29 |
| 16 | 20094000000 | 20, 28 |
| 17 | 65525000000 | 23, 29 |
| 18 | 50541000000 | 15, 36 |
| 19 | 8607000000 | 24, 28 |
| 20 | 4447000000 | 15, 38 |
| 21 | 4447000000 | 29, 31 |
| 22 | 30589000000 | 28, 30 |
| 23 | 29783000000 | 20, 33 |
| 24 | 67897000000 | 23, 32 |
| 25 | 67897000000 | 32, 36 |
| 26 | 4408000000 | 32, 38 |
| 27 | 25375000000 | 33, 34 |
| 28 | 9853000000 | 16, 21 |
| 29 | 4242000000 | 18, 33 |
| 30 | 50541000000 | 34, 36 |
| 31 | 45915000000 | 23, 24 |
| 32 | 1203000000 | 23, 37 |
| 33 | 1741000000 | 17, 35 |
| 34 | 1741000000 | 16, 25 |
| 35 | 32331000000 | 31, 35 |
| 36 | 32331000000 | 18, 36 |
| 37 | 1164000000 | 31, 37 |
| 38 | 1163000000 | 18, 38 |
| 39 | 11594000000 | 16, 31 |
| 40 | 11594000000 | 17, 18 |
| 41 | 1000000 | 24, 31 |
| 42 | 687772 | 24 |
| 43 | 782511 | 19 |
| 44 | 1000000 | 30, 36 |
| 45 | 485382 | 36 |
| 46 | 343636 | 30 |
| 47 | 613821 | 35 |
| 48 | 242512 | 15 |
| 49 | 687772 | 37 |
| 50 | 412512 | 31 |
| 51 | 1000000 | 27, 30 |
| 52 | 485382 | 27 |
| 53 | 1045570 | 18 |
| 54 | 317399 | 20 |
| 55 | 294412 | 38 |
| 56 | 20263185089 | 23 |
| 57 | 138042 | 17 |
| 58 | 280924 | 22 |
| 59 | 912633 | 33 |
| 60 | 161189 | 28 |
| 61 | 634340 | 25 |
| 62 | 3123374599 | 16 |
| 63 | 389245 | 26 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -38790723598157/12500 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -38790723598157/12500 | 1 | -38790723598157/12500 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 585 | -38790723598157/12500 |

## Stage 586

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR-/PQS+/BFP-/APR-/APQ-/APS-/BQS+ |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR-/PQS+/BFP-/APR-/APQ-/APS-/BQS+:LLH |
| Index | 0 |
| Context | 64 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 584 |
| Coordinate cut | h high 665227/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 3351/31250 | 6143/20000 | 3351/31250 | 6143/20000 |
| b | 10417/100000 | 6143/20000 | 10417/100000 | 6143/20000 |
| c | 135501/250000 | 971389/1000000 | 135501/250000 | 971389/1000000 |
| e | 3351/31250 | 391/1000 | 3351/31250 | 391/1000 |
| f | 3351/31250 | 583319/1000000 | 3351/31250 | 583319/1000000 |
| h | 665227/1000000 | 1 | 665227/1000000 | 1 |
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


## Stage 587

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR-/PQS+/BFP-/APR-/APQ-/APS-/BQS+ |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR-/PQS+/BFP-/APR-/APQ-/APS-/BQS+:LLHL |
| Index | 0 |
| Context | 64 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 586 |
| Coordinate cut | j low 595741/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 3351/31250 | 6143/20000 | 3351/31250 | 6143/20000 |
| b | 10417/100000 | 6143/20000 | 10417/100000 | 6143/20000 |
| c | 135501/250000 | 971389/1000000 | 135501/250000 | 971389/1000000 |
| e | 3351/31250 | 391/1000 | 3351/31250 | 391/1000 |
| f | 3351/31250 | 583319/1000000 | 3351/31250 | 583319/1000000 |
| h | 665227/1000000 | 1 | 665227/1000000 | 1 |
| p | 99111/500000 | 493439/1000000 | 99111/500000 | 493439/1000000 |
| q | 85909/250000 | 573309/1000000 | 85909/250000 | 573309/1000000 |
| u | 12891/31250 | 845627/1000000 | 12891/31250 | 845627/1000000 |
| v | 410199/1000000 | 855049/1000000 | 410199/1000000 | 855049/1000000 |
| r | 797901/1000000 | 1 | 797901/1000000 | 1 |
| w | 35991/125000 | 11808/15625 | 35991/125000 | 11808/15625 |
| j | 242691/500000 | 595741/1000000 | 242691/500000 | 595741/1000000 |
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
| 0 | bound | `{"direction":"lo","ref":"128:3673","triangle":"PRS","value":"157329/500000"}` | `1 * r * k + -1 * q * r + -1 * p * k + -1 * w * j + 1 * p * w + 1 * q * j + -157329/500000` |
| 1 | bound | `{"direction":"lo","ref":"128:4005","triangle":"CEF","value":"82163/250000"}` | `167837/250000 + -1 * c + -1 * e * f + 1 * c * e` |
| 2 | bound | `{"direction":"lo","ref":"128:4040","triangle":"EFP","value":"183517/500000"}` | `1 * f * q + -1 * e * f + -1 * q + -1 * p + 316483/500000 + 1 * e * p` |
| 3 | bound | `{"direction":"lo","ref":"128:4110","triangle":"EFH","value":"327749/1000000"}` | `1 * f * h + -1 * e * f + -1 * h + 672251/1000000` |
| 4 | physical | `{"factor":0,"stage":128}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 5 | physical | `{"factor":10,"stage":128}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 6 | physical | `{"factor":118,"stage":128}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 7 | physical | `{"factor":143,"stage":128}` | `1/1 * f + -1/1 * e` |
| 8 | physical | `{"factor":43,"stage":128}` | `-1/1 * p * k + 1/1 * a * p + 1/1 * q * j + -1/1 * a * j + -93/1000` |
| 9 | physical | `{"factor":65,"stage":128}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 10 | physical | `{"factor":86,"stage":128}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 11 | physical | `{"factor":93,"stage":128}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 12 | coordinate | `{"box":587,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 13 | coordinate | `{"box":587,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 14 | coordinate | `{"box":587,"direction":"hi","value":"11808/15625","variable":"w"}` | `11808/15625 + -1 * w` |
| 15 | coordinate | `{"box":587,"direction":"hi","value":"595741/1000000","variable":"j"}` | `595741/1000000 + -1 * j` |
| 16 | coordinate | `{"box":587,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 17 | coordinate | `{"box":587,"direction":"hi","value":"971389/1000000","variable":"c"}` | `971389/1000000 + -1 * c` |
| 18 | coordinate | `{"box":587,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 19 | coordinate | `{"box":587,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 20 | coordinate | `{"box":587,"direction":"hi","value":"493439/1000000","variable":"p"}` | `493439/1000000 + -1 * p` |
| 21 | coordinate | `{"box":587,"direction":"hi","value":"573309/1000000","variable":"q"}` | `573309/1000000 + -1 * q` |
| 22 | coordinate | `{"box":587,"direction":"lo","value":"3351/31250","variable":"a"}` | `-3351/31250 + 1 * a` |
| 23 | coordinate | `{"box":587,"direction":"lo","value":"10417/100000","variable":"b"}` | `-10417/100000 + 1 * b` |
| 24 | coordinate | `{"box":587,"direction":"lo","value":"797901/1000000","variable":"r"}` | `-797901/1000000 + 1 * r` |
| 25 | coordinate | `{"box":587,"direction":"lo","value":"35991/125000","variable":"w"}` | `-35991/125000 + 1 * w` |
| 26 | coordinate | `{"box":587,"direction":"lo","value":"242691/500000","variable":"j"}` | `-242691/500000 + 1 * j` |
| 27 | coordinate | `{"box":587,"direction":"lo","value":"171943/250000","variable":"k"}` | `-171943/250000 + 1 * k` |
| 28 | coordinate | `{"box":587,"direction":"lo","value":"135501/250000","variable":"c"}` | `-135501/250000 + 1 * c` |
| 29 | coordinate | `{"box":587,"direction":"lo","value":"3351/31250","variable":"e"}` | `-3351/31250 + 1 * e` |
| 30 | coordinate | `{"box":587,"direction":"lo","value":"3351/31250","variable":"f"}` | `-3351/31250 + 1 * f` |
| 31 | coordinate | `{"box":587,"direction":"lo","value":"665227/1000000","variable":"h"}` | `-665227/1000000 + 1 * h` |
| 32 | coordinate | `{"box":587,"direction":"lo","value":"99111/500000","variable":"p"}` | `-99111/500000 + 1 * p` |
| 33 | coordinate | `{"box":587,"direction":"lo","value":"85909/250000","variable":"q"}` | `-85909/250000 + 1 * q` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 22065000000 | 4 |
| 1 | 41284000000 | 5 |
| 2 | 70164000000 | 8 |
| 3 | 39550000000 | 9 |
| 4 | 1076000000 | 1 |
| 5 | 9691000000 | 10 |
| 6 | 3766000000 | 11 |
| 7 | 3261000000 | 3 |
| 8 | 39550000000 | 2 |
| 9 | 6078000000 | 6 |
| 10 | 17347000000 | 0 |
| 11 | 1445000000 | 7 |
| 12 | 63349000000 | 22, 23 |
| 13 | 22065000000 | 17, 22 |
| 14 | 80834000000 | 21, 23 |
| 15 | 559000000 | 20, 22 |
| 16 | 110889000000 | 12, 32 |
| 17 | 42665000000 | 22, 26 |
| 18 | 27499000000 | 12, 15 |
| 19 | 10768000000 | 17, 29 |
| 20 | 3766000000 | 17, 31 |
| 21 | 3766000000 | 17, 21 |
| 22 | 9691000000 | 25, 28 |
| 23 | 43887000000 | 29, 30 |
| 24 | 39550000000 | 18, 32 |
| 25 | 15769000000 | 13, 18 |
| 26 | 6078000000 | 15, 29 |
| 27 | 3261000000 | 19, 30 |
| 28 | 3766000000 | 31, 32 |
| 29 | 17347000000 | 14, 32 |
| 30 | 17347000000 | 13, 21 |
| 31 | 87511000000 | 27, 32 |
| 32 | 87511000000 | 15, 33 |
| 33 | 23425000000 | 13, 27 |
| 34 | 23424000000 | 14, 15 |
| 35 | 24728 | 20 |
| 36 | 180262 | 23 |
| 37 | 601196 | 17 |
| 38 | 1000000 | 28, 29 |
| 39 | 107232 | 28 |
| 40 | 542004 | 29 |
| 41 | 359086 | 14 |
| 42 | 430474 | 19 |
| 43 | 882543 | 33 |
| 44 | 687772 | 13 |
| 45 | 1000000 | 16 |
| 46 | 605442 | 27 |
| 47 | 1000000 | 25, 26 |
| 48 | 485382 | 25 |
| 49 | 287928 | 26 |
| 50 | 90784 | 30 |
| 51 | 419866 | 18 |
| 52 | 75 | 22 |
| 53 | 517074 | 15 |
| 54 | 498895 | 24 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -2151443091661879/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -2151443091661879/1000000 | 1 | -2151443091661879/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 587 | -2151443091661879/1000000 |

## Stage 588

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR-/PQS+/BFP-/APR-/APQ-/APS-/BQS+ |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR-/PQS+/BFP-/APR-/APQ-/APS-/BQS+:LLHH |
| Index | 0 |
| Context | 64 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 586 |
| Coordinate cut | j high 595741/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 3351/31250 | 6143/20000 | 3351/31250 | 6143/20000 |
| b | 10417/100000 | 6143/20000 | 10417/100000 | 6143/20000 |
| c | 135501/250000 | 971389/1000000 | 135501/250000 | 971389/1000000 |
| e | 3351/31250 | 391/1000 | 3351/31250 | 391/1000 |
| f | 3351/31250 | 583319/1000000 | 3351/31250 | 583319/1000000 |
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


## Stage 589

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR-/PQS+/BFP-/APR-/APQ-/APS-/BQS+ |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR-/PQS+/BFP-/APR-/APQ-/APS-/BQS+:LLHHL |
| Index | 0 |
| Context | 64 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 588 |
| Coordinate cut | f low 218127/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 3351/31250 | 6143/20000 | 3351/31250 | 6143/20000 |
| b | 10417/100000 | 6143/20000 | 10417/100000 | 6143/20000 |
| c | 135501/250000 | 971389/1000000 | 135501/250000 | 971389/1000000 |
| e | 3351/31250 | 391/1000 | 3351/31250 | 391/1000 |
| f | 3351/31250 | 218127/500000 | 3351/31250 | 218127/500000 |
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
