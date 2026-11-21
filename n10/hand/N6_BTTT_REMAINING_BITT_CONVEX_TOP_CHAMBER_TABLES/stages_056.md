# BITT convex: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 280

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS-/CQS+ |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS-/CQS+:LHHHHLH |
| Index | 0 |
| Context | 32 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 278 |
| Coordinate cut | q high 133651/250000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 58787/500000 | 6143/20000 | 58787/500000 | 6143/20000 |
| b | 105391/1000000 | 6143/20000 | 105391/1000000 | 6143/20000 |
| c | 135501/250000 | 891971/1000000 | 135501/250000 | 891971/1000000 |
| e | 1838/15625 | 391/1000 | 1838/15625 | 391/1000 |
| f | 1838/15625 | 438363/1000000 | 1838/15625 | 438363/1000000 |
| h | 607647/1000000 | 1 | 607647/1000000 | 1 |
| p | 40251/200000 | 103689/200000 | 40251/200000 | 103689/200000 |
| q | 133651/250000 | 670107/1000000 | 133651/250000 | 670107/1000000 |
| u | 9744/15625 | 907/1000 | 9744/15625 | 907/1000 |
| v | 65897/250000 | 129251/200000 | 65897/250000 | 129251/200000 |
| r | 669513/1000000 | 1 | 669513/1000000 | 1 |
| w | 473531/1000000 | 439111/500000 | 473531/1000000 | 439111/500000 |
| j | 298517/500000 | 878179/1000000 | 298517/500000 | 878179/1000000 |
| k | 665997/1000000 | 1 | 665997/1000000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"87:4404","triangle":"FPS","value":"46891/250000"}` | `1 * p * k + -1 * p + -1 * f * k + -1 * q * j + 1 * f * q + 1 * j + -46891/250000` |
| 1 | bound | `{"direction":"lo","ref":"87:4527","triangle":"EFH","value":"15159/40000"}` | `1 * f * h + -1 * e * f + -1 * h + 24841/40000` |
| 2 | physical | `{"factor":0,"stage":87}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 3 | physical | `{"factor":43,"stage":87}` | `-1/1 * p * k + 1/1 * a * p + 1/1 * q * j + -1/1 * a * j + -93/1000` |
| 4 | physical | `{"factor":65,"stage":87}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 5 | physical | `{"factor":7,"stage":87}` | `1/1 * b * h + -1/1 * a * b + -93/1000` |
| 6 | physical | `{"factor":87,"stage":87}` | `1/1 * k + -1/1 * c * k + -1/1 * e * j + 1/1 * c * e + -279/1000` |
| 7 | physical | `{"factor":93,"stage":87}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 8 | coordinate | `{"box":280,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 9 | coordinate | `{"box":280,"direction":"hi","value":"6143/20000","variable":"b"}` | `6143/20000 + -1 * b` |
| 10 | coordinate | `{"box":280,"direction":"hi","value":"878179/1000000","variable":"j"}` | `878179/1000000 + -1 * j` |
| 11 | coordinate | `{"box":280,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 12 | coordinate | `{"box":280,"direction":"hi","value":"891971/1000000","variable":"c"}` | `891971/1000000 + -1 * c` |
| 13 | coordinate | `{"box":280,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 14 | coordinate | `{"box":280,"direction":"hi","value":"438363/1000000","variable":"f"}` | `438363/1000000 + -1 * f` |
| 15 | coordinate | `{"box":280,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 16 | coordinate | `{"box":280,"direction":"hi","value":"103689/200000","variable":"p"}` | `103689/200000 + -1 * p` |
| 17 | coordinate | `{"box":280,"direction":"hi","value":"670107/1000000","variable":"q"}` | `670107/1000000 + -1 * q` |
| 18 | coordinate | `{"box":280,"direction":"lo","value":"58787/500000","variable":"a"}` | `-58787/500000 + 1 * a` |
| 19 | coordinate | `{"box":280,"direction":"lo","value":"105391/1000000","variable":"b"}` | `-105391/1000000 + 1 * b` |
| 20 | coordinate | `{"box":280,"direction":"lo","value":"298517/500000","variable":"j"}` | `-298517/500000 + 1 * j` |
| 21 | coordinate | `{"box":280,"direction":"lo","value":"665997/1000000","variable":"k"}` | `-665997/1000000 + 1 * k` |
| 22 | coordinate | `{"box":280,"direction":"lo","value":"135501/250000","variable":"c"}` | `-135501/250000 + 1 * c` |
| 23 | coordinate | `{"box":280,"direction":"lo","value":"1838/15625","variable":"e"}` | `-1838/15625 + 1 * e` |
| 24 | coordinate | `{"box":280,"direction":"lo","value":"1838/15625","variable":"f"}` | `-1838/15625 + 1 * f` |
| 25 | coordinate | `{"box":280,"direction":"lo","value":"607647/1000000","variable":"h"}` | `-607647/1000000 + 1 * h` |
| 26 | coordinate | `{"box":280,"direction":"lo","value":"40251/200000","variable":"p"}` | `-40251/200000 + 1 * p` |
| 27 | coordinate | `{"box":280,"direction":"lo","value":"133651/250000","variable":"q"}` | `-133651/250000 + 1 * q` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 809000000 | 2 |
| 1 | 30787000000 | 5 |
| 2 | 9177000000 | 3 |
| 3 | 66152000000 | 4 |
| 4 | 42225000000 | 6 |
| 5 | 95540000000 | 7 |
| 6 | 47953000000 | 1 |
| 7 | 2450000000 | 0 |
| 8 | 809000000 | 12, 18 |
| 9 | 30787000000 | 15, 19 |
| 10 | 66152000000 | 9, 27 |
| 11 | 9177000000 | 16, 18 |
| 12 | 9177000000 | 18, 20 |
| 13 | 42225000000 | 12, 23 |
| 14 | 76931000000 | 15, 22 |
| 15 | 18609000000 | 12, 25 |
| 16 | 95540000000 | 22, 27 |
| 17 | 42225000000 | 11, 12 |
| 18 | 26711000000 | 23, 24 |
| 19 | 21242000000 | 13, 14 |
| 20 | 42225000000 | 20, 23 |
| 21 | 47953000000 | 15, 24 |
| 22 | 63703000000 | 24, 27 |
| 23 | 2450000000 | 11, 14 |
| 24 | 95540000000 | 25, 26 |
| 25 | 6727000000 | 11, 16 |
| 26 | 6727000000 | 10, 27 |
| 27 | 31596000000 | 18, 19 |
| 28 | 3329934036 | 18 |
| 29 | 3714868104 | 19 |
| 30 | 1000000 | 14, 27 |
| 31 | 534604 | 14 |
| 32 | 438363 | 17 |
| 33 | 617782 | 26 |
| 34 | 123808 | 9 |
| 35 | 44340 | 21 |
| 36 | 607647 | 12 |
| 37 | 891971 | 15 |
| 38 | 716595 | 25 |
| 39 | 293310 | 10 |
| 40 | 842218 | 22 |
| 41 | 393286 | 8 |
| 42 | 33050476523 | 27 |
| 43 | 60373 | 23 |
| 44 | 568964 | 24 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -294712848233137/50000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -294712848233137/50000 | 1 | -294712848233137/50000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 280 | -294712848233137/50000 |

## Stage 281

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS-/CQS+ |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS-/CQS+:LHHHHH |
| Index | 0 |
| Context | 32 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 277 |
| Coordinate cut | f high 438363/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 58787/500000 | 6143/20000 | 58787/500000 | 6143/20000 |
| b | 105391/1000000 | 6143/20000 | 105391/1000000 | 6143/20000 |
| c | 135501/250000 | 891971/1000000 | 135501/250000 | 891971/1000000 |
| e | 1838/15625 | 391/1000 | 1838/15625 | 391/1000 |
| f | 438363/1000000 | 72301/125000 | 438363/1000000 | 72301/125000 |
| h | 607647/1000000 | 1 | 607647/1000000 | 1 |
| p | 40251/200000 | 103689/200000 | 40251/200000 | 103689/200000 |
| q | 157251/500000 | 670107/1000000 | 157251/500000 | 670107/1000000 |
| u | 9744/15625 | 907/1000 | 9744/15625 | 907/1000 |
| v | 65897/250000 | 129251/200000 | 65897/250000 | 129251/200000 |
| r | 669513/1000000 | 1 | 669513/1000000 | 1 |
| w | 473531/1000000 | 439111/500000 | 473531/1000000 | 439111/500000 |
| j | 298517/500000 | 878179/1000000 | 298517/500000 | 878179/1000000 |
| k | 665997/1000000 | 1 | 665997/1000000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"87:4404","triangle":"FPS","value":"46891/250000"}` | `1 * p * k + -1 * p + -1 * f * k + -1 * q * j + 1 * f * q + 1 * j + -46891/250000` |
| 1 | physical | `{"factor":0,"stage":87}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 2 | physical | `{"factor":100,"stage":87}` | `1/1 * u * k + -1/1 * c * k + -1/1 * v * j + 1/1 * c * v + -93/1000` |
| 3 | physical | `{"factor":105,"stage":87}` | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 4 | physical | `{"factor":110,"stage":87}` | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 5 | physical | `{"factor":118,"stage":87}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 6 | physical | `{"factor":128,"stage":87}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 7 | physical | `{"factor":43,"stage":87}` | `-1/1 * p * k + 1/1 * a * p + 1/1 * q * j + -1/1 * a * j + -93/1000` |
| 8 | physical | `{"factor":65,"stage":87}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 9 | physical | `{"factor":7,"stage":87}` | `1/1 * b * h + -1/1 * a * b + -93/1000` |
| 10 | physical | `{"factor":77,"stage":87}` | `1/1 * u * w + -1/1 * b * w + -1/1 * v * r + 1/1 * b * v + -93/1000` |
| 11 | physical | `{"factor":84,"stage":87}` | `1/1 * v + -1/1 * c * v + -1/1 * e * u + 1/1 * c * e + -93/1000` |
| 12 | physical | `{"factor":87,"stage":87}` | `1/1 * k + -1/1 * c * k + -1/1 * e * j + 1/1 * c * e + -279/1000` |
| 13 | physical | `{"factor":93,"stage":87}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 14 | coordinate | `{"box":281,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 15 | coordinate | `{"box":281,"direction":"hi","value":"439111/500000","variable":"w"}` | `439111/500000 + -1 * w` |
| 16 | coordinate | `{"box":281,"direction":"hi","value":"878179/1000000","variable":"j"}` | `878179/1000000 + -1 * j` |
| 17 | coordinate | `{"box":281,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 18 | coordinate | `{"box":281,"direction":"hi","value":"891971/1000000","variable":"c"}` | `891971/1000000 + -1 * c` |
| 19 | coordinate | `{"box":281,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 20 | coordinate | `{"box":281,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 21 | coordinate | `{"box":281,"direction":"hi","value":"103689/200000","variable":"p"}` | `103689/200000 + -1 * p` |
| 22 | coordinate | `{"box":281,"direction":"hi","value":"670107/1000000","variable":"q"}` | `670107/1000000 + -1 * q` |
| 23 | coordinate | `{"box":281,"direction":"hi","value":"907/1000","variable":"u"}` | `907/1000 + -1 * u` |
| 24 | coordinate | `{"box":281,"direction":"hi","value":"129251/200000","variable":"v"}` | `129251/200000 + -1 * v` |
| 25 | coordinate | `{"box":281,"direction":"lo","value":"58787/500000","variable":"a"}` | `-58787/500000 + 1 * a` |
| 26 | coordinate | `{"box":281,"direction":"lo","value":"105391/1000000","variable":"b"}` | `-105391/1000000 + 1 * b` |
| 27 | coordinate | `{"box":281,"direction":"lo","value":"473531/1000000","variable":"w"}` | `-473531/1000000 + 1 * w` |
| 28 | coordinate | `{"box":281,"direction":"lo","value":"298517/500000","variable":"j"}` | `-298517/500000 + 1 * j` |
| 29 | coordinate | `{"box":281,"direction":"lo","value":"665997/1000000","variable":"k"}` | `-665997/1000000 + 1 * k` |
| 30 | coordinate | `{"box":281,"direction":"lo","value":"135501/250000","variable":"c"}` | `-135501/250000 + 1 * c` |
| 31 | coordinate | `{"box":281,"direction":"lo","value":"1838/15625","variable":"e"}` | `-1838/15625 + 1 * e` |
| 32 | coordinate | `{"box":281,"direction":"lo","value":"438363/1000000","variable":"f"}` | `-438363/1000000 + 1 * f` |
| 33 | coordinate | `{"box":281,"direction":"lo","value":"607647/1000000","variable":"h"}` | `-607647/1000000 + 1 * h` |
| 34 | coordinate | `{"box":281,"direction":"lo","value":"40251/200000","variable":"p"}` | `-40251/200000 + 1 * p` |
| 35 | coordinate | `{"box":281,"direction":"lo","value":"157251/500000","variable":"q"}` | `-157251/500000 + 1 * q` |
| 36 | coordinate | `{"box":281,"direction":"lo","value":"9744/15625","variable":"u"}` | `-9744/15625 + 1 * u` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 4856000000 | 1 |
| 1 | 23007000000 | 9 |
| 2 | 55120000000 | 7 |
| 3 | 71133000000 | 8 |
| 4 | 2655000000 | 10 |
| 5 | 1547000000 | 11 |
| 6 | 33382000000 | 12 |
| 7 | 37612000000 | 13 |
| 8 | 1547000000 | 2 |
| 9 | 11768000000 | 3 |
| 10 | 8797000000 | 4 |
| 11 | 18262000000 | 5 |
| 12 | 9856000000 | 0 |
| 13 | 9898000000 | 6 |
| 14 | 4856000000 | 18, 25 |
| 15 | 23007000000 | 20, 26 |
| 16 | 71133000000 | 22, 26 |
| 17 | 55120000000 | 21, 25 |
| 18 | 2655000000 | 24, 26 |
| 19 | 2655000000 | 26, 27 |
| 20 | 55120000000 | 25, 28 |
| 21 | 34929000000 | 18, 31 |
| 22 | 37612000000 | 20, 30 |
| 23 | 37612000000 | 30, 35 |
| 24 | 13373000000 | 29, 30 |
| 25 | 21556000000 | 17, 18 |
| 26 | 11768000000 | 31, 32 |
| 27 | 1425000000 | 23, 31 |
| 28 | 18262000000 | 14, 19 |
| 29 | 15120000000 | 28, 31 |
| 30 | 61277000000 | 32, 35 |
| 31 | 11768000000 | 24, 32 |
| 32 | 9898000000 | 15, 32 |
| 33 | 19754000000 | 29, 32 |
| 34 | 37612000000 | 20, 21 |
| 35 | 8797000000 | 20, 36 |
| 36 | 45265000000 | 29, 34 |
| 37 | 45265000000 | 16, 35 |
| 38 | 2655000000 | 23, 27 |
| 39 | 2655000000 | 14, 24 |
| 40 | 1547000000 | 17, 36 |
| 41 | 1547000000 | 16, 24 |
| 42 | 28160000000 | 14, 29 |
| 43 | 28160000000 | 15, 16 |
| 44 | 27863000000 | 25, 26 |
| 45 | 2936923937 | 25 |
| 46 | 3276660911 | 26 |
| 47 | 1000000 | 21, 29 |
| 48 | 665997 | 21 |
| 49 | 1017756 | 17 |
| 50 | 1000000 | 28, 35 |
| 51 | 597034 | 35 |
| 52 | 314502 | 28 |
| 53 | 675325 | 34 |
| 54 | 925976 | 24 |
| 55 | 1000000 | 31, 36 |
| 56 | 623616 | 31 |
| 57 | 117632 | 36 |
| 58 | 665997 | 30 |
| 59 | 542004 | 29 |
| 60 | 850405 | 23 |
| 61 | 218203 | 33 |
| 62 | 331771 | 27 |
| 63 | 170305 | 16 |
| 64 | 226495 | 14 |
| 65 | 946364 | 18 |
| 66 | 126439 | 22 |
| 67 | 320195 | 19 |
| 68 | 17514366972 | 32 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -4633599063104131/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -4633599063104131/1000000 | 1 | -4633599063104131/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 281 | -4633599063104131/1000000 |

## Stage 282

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS-/CQS+ |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS-/CQS+:H |
| Index | 0 |
| Context | 32 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 268 |
| Coordinate cut | v high 129251/200000 |

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
| v | 129251/200000 | 834871/1000000 | 129251/200000 | 834871/1000000 |
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


### Coordinate certificate sources

| Source | Kind | Source witness | Polynomial |
| --- | --- | --- | --- |
| 0 | bound | `{"direction":"lo","ref":"87:4480","triangle":"BFQ","value":"424541/1000000"}` | `-1 * f * v + 1 * b * v + 1 * u + -1 * b + -424541/1000000` |
| 1 | physical | `{"factor":105,"stage":87}` | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 2 | physical | `{"factor":144,"stage":87}` | `1/1 * f + -1/1 * e` |
| 3 | coordinate | `{"box":282,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 4 | coordinate | `{"box":282,"direction":"hi","value":"72301/125000","variable":"f"}` | `72301/125000 + -1 * f` |
| 5 | coordinate | `{"box":282,"direction":"hi","value":"907/1000","variable":"u"}` | `907/1000 + -1 * u` |
| 6 | coordinate | `{"box":282,"direction":"hi","value":"834871/1000000","variable":"v"}` | `834871/1000000 + -1 * v` |
| 7 | coordinate | `{"box":282,"direction":"lo","value":"105391/1000000","variable":"b"}` | `-105391/1000000 + 1 * b` |
| 8 | coordinate | `{"box":282,"direction":"lo","value":"1838/15625","variable":"e"}` | `-1838/15625 + 1 * e` |
| 9 | coordinate | `{"box":282,"direction":"lo","value":"1838/15625","variable":"f"}` | `-1838/15625 + 1 * f` |
| 10 | coordinate | `{"box":282,"direction":"lo","value":"90023/200000","variable":"u"}` | `-90023/200000 + 1 * u` |
| 11 | coordinate | `{"box":282,"direction":"lo","value":"129251/200000","variable":"v"}` | `-129251/200000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 131023000000 | 0 |
| 1 | 215144000000 | 1 |
| 2 | 8399000000 | 2 |
| 3 | 131023000000 | 6, 7 |
| 4 | 78131000000 | 8, 9 |
| 5 | 137014000000 | 3, 4 |
| 6 | 215144000000 | 3, 10 |
| 7 | 84121000000 | 4, 11 |
| 8 | 304000 | 5 |
| 9 | 21635696967 | 7 |
| 10 | 1000000 | 3, 9 |
| 11 | 117632 | 3 |
| 12 | 391000 | 4 |
| 13 | 152679095639 | 11 |
| 14 | 562937 | 9 |
| 15 | 157944 | 8 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -10207627304038033/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -10207627304038033/1000000 | 1 | -10207627304038033/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 282 | -10207627304038033/1000000 |

## Stage 283

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS-/CQS- |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS-/CQS-:root |
| Index | 0 |
| Context | 33 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 88 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 135501/250000 | 1 | 135501/250000 | 1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 103767/1000000 | 58493/100000 | 103767/1000000 | 58493/100000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 196767/1000000 | 29741/50000 | 196767/1000000 | 29741/50000 |
| q | 18771/62500 | 710233/1000000 | 18771/62500 | 710233/1000000 |
| u | 89063/200000 | 907/1000 | 89063/200000 | 907/1000 |
| v | 31109/125000 | 835237/1000000 | 31109/125000 | 835237/1000000 |
| r | 504431/1000000 | 1 | 504431/1000000 | 1 |
| w | 228839/500000 | 176051/200000 | 228839/500000 | 176051/200000 |
| j | 112111/250000 | 176083/200000 | 112111/250000 | 176083/200000 |
| k | 260221/500000 | 1 | 260221/500000 | 1 |

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


## Stage 284

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS-/CQS- |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS-/CQS-:L |
| Index | 0 |
| Context | 33 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 283 |
| Coordinate cut | v low 681371/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 135501/250000 | 1 | 135501/250000 | 1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 103767/1000000 | 58493/100000 | 103767/1000000 | 58493/100000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 196767/1000000 | 29741/50000 | 196767/1000000 | 29741/50000 |
| q | 18771/62500 | 710233/1000000 | 18771/62500 | 710233/1000000 |
| u | 89063/200000 | 907/1000 | 89063/200000 | 907/1000 |
| v | 31109/125000 | 681371/1000000 | 31109/125000 | 681371/1000000 |
| r | 504431/1000000 | 1 | 504431/1000000 | 1 |
| w | 228839/500000 | 176051/200000 | 228839/500000 | 176051/200000 |
| j | 112111/250000 | 176083/200000 | 112111/250000 | 176083/200000 |
| k | 260221/500000 | 1 | 260221/500000 | 1 |

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
