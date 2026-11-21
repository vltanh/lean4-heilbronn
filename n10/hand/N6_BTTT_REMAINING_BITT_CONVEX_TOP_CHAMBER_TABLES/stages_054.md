# BITT convex: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 270

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS-/CQS+ |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS-/CQS+:LL |
| Index | 0 |
| Context | 32 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 269 |
| Coordinate cut | k low 665997/1000000 |

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
| k | 107449/200000 | 665997/1000000 | 107449/200000 | 665997/1000000 |

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
| 0 | bound | `{"direction":"lo","ref":"87:4434","triangle":"BCP","value":"14827/100000"}` | `1 * c * q + -1 * b * q + -14827/100000` |
| 1 | bound | `{"direction":"lo","ref":"87:4466","triangle":"QRS","value":"95071/1000000"}` | `1 * r * k + -1 * v * r + -1 * u * k + -1 * w * j + 1 * u * w + 1 * v * j + -95071/1000000` |
| 2 | physical | `{"factor":100,"stage":87}` | `1/1 * u * k + -1/1 * c * k + -1/1 * v * j + 1/1 * c * v + -93/1000` |
| 3 | physical | `{"factor":105,"stage":87}` | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 4 | physical | `{"factor":110,"stage":87}` | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 5 | physical | `{"factor":116,"stage":87}` | `-1/1 * u * w + 1/1 * e * u + 1/1 * w + 1/1 * v * r + -1/1 * v + -1/1 * e * r + -93/1000` |
| 6 | physical | `{"factor":117,"stage":87}` | `-1/1 * u * k + 1/1 * e * u + 1/1 * k + 1/1 * v * j + -1/1 * v + -1/1 * e * j + -93/1000` |
| 7 | physical | `{"factor":128,"stage":87}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 8 | physical | `{"factor":154,"stage":87}` | `1/1 * c * h + -135501/250000` |
| 9 | physical | `{"factor":1588,"stage":87}` | `-324603/500000 * f * k + -186897/500000 * b * k + 324603/500000 * j + 186897/500000 * b + 1023/1000 * f * v + -1023/1000 * u + 1023/1000 * u * k + -1023/1000 * v * j` |
| 10 | physical | `{"factor":43,"stage":87}` | `-1/1 * p * k + 1/1 * a * p + 1/1 * q * j + -1/1 * a * j + -93/1000` |
| 11 | physical | `{"factor":65,"stage":87}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 12 | physical | `{"factor":87,"stage":87}` | `1/1 * k + -1/1 * c * k + -1/1 * e * j + 1/1 * c * e + -279/1000` |
| 13 | physical | `{"factor":93,"stage":87}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 14 | coordinate | `{"box":270,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 15 | coordinate | `{"box":270,"direction":"hi","value":"6143/20000","variable":"b"}` | `6143/20000 + -1 * b` |
| 16 | coordinate | `{"box":270,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 17 | coordinate | `{"box":270,"direction":"hi","value":"439111/500000","variable":"w"}` | `439111/500000 + -1 * w` |
| 18 | coordinate | `{"box":270,"direction":"hi","value":"878179/1000000","variable":"j"}` | `878179/1000000 + -1 * j` |
| 19 | coordinate | `{"box":270,"direction":"hi","value":"665997/1000000","variable":"k"}` | `665997/1000000 + -1 * k` |
| 20 | coordinate | `{"box":270,"direction":"hi","value":"891971/1000000","variable":"c"}` | `891971/1000000 + -1 * c` |
| 21 | coordinate | `{"box":270,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 22 | coordinate | `{"box":270,"direction":"hi","value":"72301/125000","variable":"f"}` | `72301/125000 + -1 * f` |
| 23 | coordinate | `{"box":270,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 24 | coordinate | `{"box":270,"direction":"hi","value":"103689/200000","variable":"p"}` | `103689/200000 + -1 * p` |
| 25 | coordinate | `{"box":270,"direction":"hi","value":"670107/1000000","variable":"q"}` | `670107/1000000 + -1 * q` |
| 26 | coordinate | `{"box":270,"direction":"hi","value":"907/1000","variable":"u"}` | `907/1000 + -1 * u` |
| 27 | coordinate | `{"box":270,"direction":"hi","value":"129251/200000","variable":"v"}` | `129251/200000 + -1 * v` |
| 28 | coordinate | `{"box":270,"direction":"lo","value":"58787/500000","variable":"a"}` | `-58787/500000 + 1 * a` |
| 29 | coordinate | `{"box":270,"direction":"lo","value":"105391/1000000","variable":"b"}` | `-105391/1000000 + 1 * b` |
| 30 | coordinate | `{"box":270,"direction":"lo","value":"522367/1000000","variable":"r"}` | `-522367/1000000 + 1 * r` |
| 31 | coordinate | `{"box":270,"direction":"lo","value":"473531/1000000","variable":"w"}` | `-473531/1000000 + 1 * w` |
| 32 | coordinate | `{"box":270,"direction":"lo","value":"114153/250000","variable":"j"}` | `-114153/250000 + 1 * j` |
| 33 | coordinate | `{"box":270,"direction":"lo","value":"107449/200000","variable":"k"}` | `-107449/200000 + 1 * k` |
| 34 | coordinate | `{"box":270,"direction":"lo","value":"135501/250000","variable":"c"}` | `-135501/250000 + 1 * c` |
| 35 | coordinate | `{"box":270,"direction":"lo","value":"1838/15625","variable":"e"}` | `-1838/15625 + 1 * e` |
| 36 | coordinate | `{"box":270,"direction":"lo","value":"1838/15625","variable":"f"}` | `-1838/15625 + 1 * f` |
| 37 | coordinate | `{"box":270,"direction":"lo","value":"607647/1000000","variable":"h"}` | `-607647/1000000 + 1 * h` |
| 38 | coordinate | `{"box":270,"direction":"lo","value":"40251/200000","variable":"p"}` | `-40251/200000 + 1 * p` |
| 39 | coordinate | `{"box":270,"direction":"lo","value":"157251/500000","variable":"q"}` | `-157251/500000 + 1 * q` |
| 40 | coordinate | `{"box":270,"direction":"lo","value":"90023/200000","variable":"u"}` | `-90023/200000 + 1 * u` |
| 41 | coordinate | `{"box":270,"direction":"lo","value":"65897/250000","variable":"v"}` | `-65897/250000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 55750000000000 | 10 |
| 1 | 163000000000000 | 0 |
| 2 | 163000000000000 | 11 |
| 3 | 880550000000000 | 12 |
| 4 | 217950000000000 | 13 |
| 5 | 2605550000000000 | 2 |
| 6 | 535100000000000 | 3 |
| 7 | 2742950000000000 | 4 |
| 8 | 1412650000000000 | 5 |
| 9 | 2528400000000000 | 6 |
| 10 | 2319300000000000 | 7 |
| 11 | 1412650000000000 | 1 |
| 12 | 333650000000000 | 8 |
| 13 | 1305500000000000 | 9 |
| 14 | 55750000000000 | 24, 28 |
| 15 | 488000000000000 | 15, 19 |
| 16 | 47550000000000 | 28, 32 |
| 17 | 8200000000000 | 14, 18 |
| 18 | 880550000000000 | 20, 35 |
| 19 | 551550000000000 | 23, 34 |
| 20 | 54950000000000 | 34, 39 |
| 21 | 2605550000000000 | 27, 34 |
| 22 | 3486050000000000 | 19, 20 |
| 23 | 535100000000000 | 35, 36 |
| 24 | 1733200000000000 | 26, 35 |
| 25 | 1412650000000000 | 30, 35 |
| 26 | 3408950000000000 | 32, 35 |
| 27 | 163000000000000 | 36, 39 |
| 28 | 1651500000000000 | 27, 36 |
| 29 | 219126500000000 | 22, 41 |
| 30 | 2319300000000000 | 22, 31 |
| 31 | 3166850000000000 | 19, 22 |
| 32 | 217950000000000 | 37, 38 |
| 33 | 2742950000000000 | 26, 37 |
| 34 | 55750000000000 | 19, 24 |
| 35 | 55750000000000 | 18, 39 |
| 36 | 3732000000000000 | 19, 30 |
| 37 | 1241000000000000 | 31, 32 |
| 38 | 2490950000000000 | 17, 18 |
| 39 | 11245900000 | 38 |
| 40 | 18469000000 | 29 |
| 41 | 238478647066286 | 19 |
| 42 | 50000000000 | 33, 34 |
| 43 | 27016150000 | 34 |
| 44 | 53218550000 | 33 |
| 45 | 22830600000 | 35 |
| 46 | 12866682000 | 32 |
| 47 | 50000000000 | 20, 37 |
| 48 | 30382350000 | 20 |
| 49 | 44598550000 | 23 |
| 50 | 26500000000 | 26, 33 |
| 51 | 14236992500 | 26 |
| 52 | 26500000000 | 32, 41 |
| 53 | 12100218000 | 41 |
| 54 | 13199394915 | 22 |
| 55 | 32290812000 | 27 |
| 56 | 1378950000 | 40 |
| 57 | 15571050000 | 37 |
| 58 | 3797650000 | 31 |
| 59 | 50000000000 | 30, 33 |
| 60 | 26862250000 | 30 |
| 61 | 27959200000 | 16 |
| 62 | 11567000000 | 22, 33 |
| 63 | 7859100000 | 18 |
| 64 | 11933000000 | 15, 33 |
| 65 | 6410944585 | 15 |
| 66 | 9659650000 | 28 |
| 67 | 26191500000 | 21 |
| 68 | 1343450000 | 25 |
| 69 | 18597050000 | 36 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -124762422223389273429/500000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -124762422223389273429/500000 | 1 | -124762422223389273429/500000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 270 | -124762422223389273429/500000 |

## Stage 271

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS-/CQS+ |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS-/CQS+:LH |
| Index | 0 |
| Context | 32 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 269 |
| Coordinate cut | k high 665997/1000000 |

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


## Stage 272

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS-/CQS+ |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS-/CQS+:LHL |
| Index | 0 |
| Context | 32 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 271 |
| Coordinate cut | r low 669513/1000000 |

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
| r | 522367/1000000 | 669513/1000000 | 522367/1000000 | 669513/1000000 |
| w | 473531/1000000 | 439111/500000 | 473531/1000000 | 439111/500000 |
| j | 114153/250000 | 878179/1000000 | 114153/250000 | 878179/1000000 |
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
| 1 | bound | `{"direction":"lo","ref":"87:4466","triangle":"QRS","value":"95071/1000000"}` | `1 * r * k + -1 * v * r + -1 * u * k + -1 * w * j + 1 * u * w + 1 * v * j + -95071/1000000` |
| 2 | bound | `{"direction":"lo","ref":"87:4470","triangle":"AHP","value":"64767/500000"}` | `1 * h * p + -1 * a * p + -64767/500000` |
| 3 | bound | `{"direction":"lo","ref":"87:4527","triangle":"EFH","value":"15159/40000"}` | `1 * f * h + -1 * e * f + -1 * h + 24841/40000` |
| 4 | physical | `{"factor":0,"stage":87}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 5 | physical | `{"factor":10,"stage":87}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 6 | physical | `{"factor":100,"stage":87}` | `1/1 * u * k + -1/1 * c * k + -1/1 * v * j + 1/1 * c * v + -93/1000` |
| 7 | physical | `{"factor":105,"stage":87}` | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 8 | physical | `{"factor":110,"stage":87}` | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 9 | physical | `{"factor":118,"stage":87}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 10 | physical | `{"factor":1206,"stage":87}` | `896233/1000000 * w + 13306751/25000000 * a + -896233/1000000 * e * r + -13306751/25000000 * a * r + -558009/390625 * f * w + 558009/390625 * e * f + 558009/390625 * r + -558009/390625` |
| 11 | physical | `{"factor":128,"stage":87}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 12 | physical | `{"factor":144,"stage":87}` | `1/1 * f + -1/1 * e` |
| 13 | physical | `{"factor":43,"stage":87}` | `-1/1 * p * k + 1/1 * a * p + 1/1 * q * j + -1/1 * a * j + -93/1000` |
| 14 | physical | `{"factor":65,"stage":87}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 15 | physical | `{"factor":93,"stage":87}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 16 | coordinate | `{"box":272,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 17 | coordinate | `{"box":272,"direction":"hi","value":"6143/20000","variable":"b"}` | `6143/20000 + -1 * b` |
| 18 | coordinate | `{"box":272,"direction":"hi","value":"669513/1000000","variable":"r"}` | `669513/1000000 + -1 * r` |
| 19 | coordinate | `{"box":272,"direction":"hi","value":"439111/500000","variable":"w"}` | `439111/500000 + -1 * w` |
| 20 | coordinate | `{"box":272,"direction":"hi","value":"878179/1000000","variable":"j"}` | `878179/1000000 + -1 * j` |
| 21 | coordinate | `{"box":272,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 22 | coordinate | `{"box":272,"direction":"hi","value":"891971/1000000","variable":"c"}` | `891971/1000000 + -1 * c` |
| 23 | coordinate | `{"box":272,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 24 | coordinate | `{"box":272,"direction":"hi","value":"72301/125000","variable":"f"}` | `72301/125000 + -1 * f` |
| 25 | coordinate | `{"box":272,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 26 | coordinate | `{"box":272,"direction":"hi","value":"670107/1000000","variable":"q"}` | `670107/1000000 + -1 * q` |
| 27 | coordinate | `{"box":272,"direction":"hi","value":"907/1000","variable":"u"}` | `907/1000 + -1 * u` |
| 28 | coordinate | `{"box":272,"direction":"hi","value":"129251/200000","variable":"v"}` | `129251/200000 + -1 * v` |
| 29 | coordinate | `{"box":272,"direction":"lo","value":"58787/500000","variable":"a"}` | `-58787/500000 + 1 * a` |
| 30 | coordinate | `{"box":272,"direction":"lo","value":"105391/1000000","variable":"b"}` | `-105391/1000000 + 1 * b` |
| 31 | coordinate | `{"box":272,"direction":"lo","value":"522367/1000000","variable":"r"}` | `-522367/1000000 + 1 * r` |
| 32 | coordinate | `{"box":272,"direction":"lo","value":"473531/1000000","variable":"w"}` | `-473531/1000000 + 1 * w` |
| 33 | coordinate | `{"box":272,"direction":"lo","value":"114153/250000","variable":"j"}` | `-114153/250000 + 1 * j` |
| 34 | coordinate | `{"box":272,"direction":"lo","value":"665997/1000000","variable":"k"}` | `-665997/1000000 + 1 * k` |
| 35 | coordinate | `{"box":272,"direction":"lo","value":"135501/250000","variable":"c"}` | `-135501/250000 + 1 * c` |
| 36 | coordinate | `{"box":272,"direction":"lo","value":"1838/15625","variable":"e"}` | `-1838/15625 + 1 * e` |
| 37 | coordinate | `{"box":272,"direction":"lo","value":"1838/15625","variable":"f"}` | `-1838/15625 + 1 * f` |
| 38 | coordinate | `{"box":272,"direction":"lo","value":"607647/1000000","variable":"h"}` | `-607647/1000000 + 1 * h` |
| 39 | coordinate | `{"box":272,"direction":"lo","value":"40251/200000","variable":"p"}` | `-40251/200000 + 1 * p` |
| 40 | coordinate | `{"box":272,"direction":"lo","value":"157251/500000","variable":"q"}` | `-157251/500000 + 1 * q` |
| 41 | coordinate | `{"box":272,"direction":"lo","value":"90023/200000","variable":"u"}` | `-90023/200000 + 1 * u` |
| 42 | coordinate | `{"box":272,"direction":"lo","value":"65897/250000","variable":"v"}` | `-65897/250000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 194500000000000000 | 4 |
| 1 | 268000000000000000 | 5 |
| 2 | 432150000000000000 | 2 |
| 3 | 869825000000000000 | 13 |
| 4 | 544375000000000000 | 14 |
| 5 | 432150000000000000 | 15 |
| 6 | 203075000000000000 | 6 |
| 7 | 409325000000000000 | 3 |
| 8 | 347150000000000000 | 7 |
| 9 | 261125000000000000 | 8 |
| 10 | 1389500000000000000 | 9 |
| 11 | 544375000000000000 | 0 |
| 12 | 1148650000000000000 | 11 |
| 13 | 203075000000000000 | 1 |
| 14 | 78450000000000000 | 12 |
| 15 | 464175000000000000 | 10 |
| 16 | 194500000000000000 | 22, 29 |
| 17 | 812375000000000000 | 26, 30 |
| 18 | 705675000000000000 | 16, 39 |
| 19 | 247075000000000000 | 16, 18 |
| 20 | 869825000000000000 | 29, 33 |
| 21 | 432150000000000000 | 22, 38 |
| 22 | 432150000000000000 | 35, 40 |
| 23 | 203075000000000000 | 22, 42 |
| 24 | 203075000000000000 | 21, 22 |
| 25 | 93399601408000000 | 36, 37 |
| 26 | 86000000000000000 | 27, 36 |
| 27 | 1805525000000000000 | 18, 23 |
| 28 | 1389500000000000000 | 20, 36 |
| 29 | 409325000000000000 | 25, 37 |
| 30 | 347150000000000000 | 28, 37 |
| 31 | 485575000000000000 | 19, 37 |
| 32 | 1693050000000000000 | 34, 37 |
| 33 | 261125000000000000 | 27, 38 |
| 34 | 325450000000000000 | 34, 39 |
| 35 | 325450000000000000 | 26, 33 |
| 36 | 203075000000000000 | 19, 41 |
| 37 | 203075000000000000 | 18, 28 |
| 38 | 2741250000000000000 | 18, 34 |
| 39 | 1075150000000000000 | 32, 33 |
| 40 | 1666075000000000000 | 19, 20 |
| 41 | 462500000000000000 | 29, 30 |
| 42 | 48760367433000000 | 29 |
| 43 | 54377975000000000 | 30 |
| 44 | 647400000000 | 39 |
| 45 | 3174125000000 | 17 |
| 46 | 27520737825856 | 36 |
| 47 | 3082658494208 | 37 |
| 48 | 5361050000000 | 25 |
| 49 | 13392850000000 | 42 |
| 50 | 16892475000000 | 41 |
| 51 | 25000000000000 | 23, 41 |
| 52 | 19635415781575 | 23 |
| 53 | 9775000000000 | 27 |
| 54 | 25000000000000 | 31, 34 |
| 55 | 16649925000000 | 31 |
| 56 | 13059175000000 | 34 |
| 57 | 16047225000000 | 23, 31 |
| 58 | 427010981349283450 | 18 |
| 59 | 24663275000000 | 21 |
| 60 | 3301312174144 | 32 |
| 61 | 25000000000000 | 24, 34 |
| 62 | 31611975000000 | 24 |
| 63 | 8390700000000 | 33 |
| 64 | 398592000000 | 32, 37 |
| 65 | 8554183000000 | 16, 31 |
| 66 | 4468422911161 | 16 |
| 67 | 3887850000000 | 22 |
| 68 | 5639575000000 | 40 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -52120497458872423607803/500000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -52120497458872423607803/500000 | 1 | -52120497458872423607803/500000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 272 | -52120497458872423607803/500000 |

## Stage 273

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS-/CQS+ |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS-/CQS+:LHH |
| Index | 0 |
| Context | 32 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 271 |
| Coordinate cut | r high 669513/1000000 |

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
| r | 669513/1000000 | 1 | 669513/1000000 | 1 |
| w | 473531/1000000 | 439111/500000 | 473531/1000000 | 439111/500000 |
| j | 114153/250000 | 878179/1000000 | 114153/250000 | 878179/1000000 |
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


## Stage 274

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS-/CQS+ |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR+/APR-/APS-/CQS+:LHHL |
| Index | 0 |
| Context | 32 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 273 |
| Coordinate cut | j low 298517/500000 |

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
| r | 669513/1000000 | 1 | 669513/1000000 | 1 |
| w | 473531/1000000 | 439111/500000 | 473531/1000000 | 439111/500000 |
| j | 114153/250000 | 298517/500000 | 114153/250000 | 298517/500000 |
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
| 3 | physical | `{"factor":105,"stage":87}` | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 4 | physical | `{"factor":110,"stage":87}` | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 5 | physical | `{"factor":116,"stage":87}` | `-1/1 * u * w + 1/1 * e * u + 1/1 * w + 1/1 * v * r + -1/1 * v + -1/1 * e * r + -93/1000` |
| 6 | physical | `{"factor":118,"stage":87}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 7 | physical | `{"factor":128,"stage":87}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 8 | physical | `{"factor":43,"stage":87}` | `-1/1 * p * k + 1/1 * a * p + 1/1 * q * j + -1/1 * a * j + -93/1000` |
| 9 | physical | `{"factor":65,"stage":87}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 10 | physical | `{"factor":7,"stage":87}` | `1/1 * b * h + -1/1 * a * b + -93/1000` |
| 11 | physical | `{"factor":77,"stage":87}` | `1/1 * u * w + -1/1 * b * w + -1/1 * v * r + 1/1 * b * v + -93/1000` |
| 12 | physical | `{"factor":87,"stage":87}` | `1/1 * k + -1/1 * c * k + -1/1 * e * j + 1/1 * c * e + -279/1000` |
| 13 | physical | `{"factor":93,"stage":87}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 14 | coordinate | `{"box":274,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 15 | coordinate | `{"box":274,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 16 | coordinate | `{"box":274,"direction":"hi","value":"439111/500000","variable":"w"}` | `439111/500000 + -1 * w` |
| 17 | coordinate | `{"box":274,"direction":"hi","value":"298517/500000","variable":"j"}` | `298517/500000 + -1 * j` |
| 18 | coordinate | `{"box":274,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 19 | coordinate | `{"box":274,"direction":"hi","value":"891971/1000000","variable":"c"}` | `891971/1000000 + -1 * c` |
| 20 | coordinate | `{"box":274,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 21 | coordinate | `{"box":274,"direction":"hi","value":"72301/125000","variable":"f"}` | `72301/125000 + -1 * f` |
| 22 | coordinate | `{"box":274,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 23 | coordinate | `{"box":274,"direction":"hi","value":"670107/1000000","variable":"q"}` | `670107/1000000 + -1 * q` |
| 24 | coordinate | `{"box":274,"direction":"hi","value":"907/1000","variable":"u"}` | `907/1000 + -1 * u` |
| 25 | coordinate | `{"box":274,"direction":"hi","value":"129251/200000","variable":"v"}` | `129251/200000 + -1 * v` |
| 26 | coordinate | `{"box":274,"direction":"lo","value":"58787/500000","variable":"a"}` | `-58787/500000 + 1 * a` |
| 27 | coordinate | `{"box":274,"direction":"lo","value":"105391/1000000","variable":"b"}` | `-105391/1000000 + 1 * b` |
| 28 | coordinate | `{"box":274,"direction":"lo","value":"669513/1000000","variable":"r"}` | `-669513/1000000 + 1 * r` |
| 29 | coordinate | `{"box":274,"direction":"lo","value":"473531/1000000","variable":"w"}` | `-473531/1000000 + 1 * w` |
| 30 | coordinate | `{"box":274,"direction":"lo","value":"665997/1000000","variable":"k"}` | `-665997/1000000 + 1 * k` |
| 31 | coordinate | `{"box":274,"direction":"lo","value":"135501/250000","variable":"c"}` | `-135501/250000 + 1 * c` |
| 32 | coordinate | `{"box":274,"direction":"lo","value":"1838/15625","variable":"e"}` | `-1838/15625 + 1 * e` |
| 33 | coordinate | `{"box":274,"direction":"lo","value":"1838/15625","variable":"f"}` | `-1838/15625 + 1 * f` |
| 34 | coordinate | `{"box":274,"direction":"lo","value":"607647/1000000","variable":"h"}` | `-607647/1000000 + 1 * h` |
| 35 | coordinate | `{"box":274,"direction":"lo","value":"40251/200000","variable":"p"}` | `-40251/200000 + 1 * p` |
| 36 | coordinate | `{"box":274,"direction":"lo","value":"157251/500000","variable":"q"}` | `-157251/500000 + 1 * q` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 37460000000 | 2 |
| 1 | 25541000000 | 10 |
| 2 | 67647000000 | 8 |
| 3 | 55563000000 | 9 |
| 4 | 1134000000 | 11 |
| 5 | 14989000000 | 12 |
| 6 | 34709000000 | 13 |
| 7 | 29983000000 | 1 |
| 8 | 1401000000 | 3 |
| 9 | 2251000000 | 4 |
| 10 | 1134000000 | 5 |
| 11 | 3140000000 | 6 |
| 12 | 30531000000 | 0 |
| 13 | 4756000000 | 7 |
| 14 | 63001000000 | 26, 27 |
| 15 | 37460000000 | 19, 26 |
| 16 | 25541000000 | 22, 27 |
| 17 | 55563000000 | 23, 27 |
| 18 | 67647000000 | 14, 35 |
| 19 | 1134000000 | 25, 27 |
| 20 | 1134000000 | 27, 29 |
| 21 | 67647000000 | 14, 17 |
| 22 | 14989000000 | 19, 32 |
| 23 | 34709000000 | 19, 34 |
| 24 | 16825000000 | 31, 36 |
| 25 | 17884000000 | 19, 23 |
| 26 | 14989000000 | 30, 31 |
| 27 | 31385000000 | 32, 33 |
| 28 | 284000000 | 24, 32 |
| 29 | 4274000000 | 28, 32 |
| 30 | 11849000000 | 17, 20 |
| 31 | 29983000000 | 22, 33 |
| 32 | 25032000000 | 33, 36 |
| 33 | 1401000000 | 25, 33 |
| 34 | 4756000000 | 16, 33 |
| 35 | 35287000000 | 30, 33 |
| 36 | 34709000000 | 34, 35 |
| 37 | 2251000000 | 24, 34 |
| 38 | 37116000000 | 30, 35 |
| 39 | 37116000000 | 17, 36 |
| 40 | 7896000000 | 15, 30 |
| 41 | 7896000000 | 16, 17 |
| 42 | 188325 | 35 |
| 43 | 255317 | 27 |
| 44 | 241080 | 18 |
| 45 | 1000000 | 20, 33 |
| 46 | 117632 | 20 |
| 47 | 391000 | 21 |
| 48 | 470431 | 22 |
| 49 | 315826 | 25 |
| 50 | 220885 | 24 |
| 51 | 236066 | 29 |
| 52 | 14614880270 | 17 |
| 53 | 46856 | 28 |
| 54 | 233256 | 14 |
| 55 | 9040 | 19 |
| 56 | 436811 | 36 |
| 57 | 293429 | 32 |
| 58 | 303436 | 33 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -3005546037677171/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -3005546037677171/1000000 | 1 | -3005546037677171/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 274 | -3005546037677171/1000000 |
