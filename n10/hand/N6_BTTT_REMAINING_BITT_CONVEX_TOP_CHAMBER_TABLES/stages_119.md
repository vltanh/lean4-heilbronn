# BITT convex: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 595

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR-/PQS+/BFP-/APR-/APQ-/APS-/BQS+ |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR-/PQS+/BFP-/APR-/APQ-/APS-/BQS+:LLHHLLLLHL |
| Index | 0 |
| Context | 64 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 594 |
| Coordinate cut | c low 635613/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 3351/31250 | 6143/20000 | 3351/31250 | 6143/20000 |
| b | 10417/100000 | 6143/20000 | 10417/100000 | 6143/20000 |
| c | 135501/250000 | 635613/1000000 | 135501/250000 | 635613/1000000 |
| e | 3351/31250 | 391/1000 | 3351/31250 | 391/1000 |
| f | 3351/31250 | 218127/500000 | 3351/31250 | 218127/500000 |
| h | 665227/1000000 | 1 | 665227/1000000 | 1 |
| p | 99111/500000 | 493439/1000000 | 99111/500000 | 493439/1000000 |
| q | 85909/250000 | 573309/1000000 | 85909/250000 | 573309/1000000 |
| u | 251759/500000 | 738773/1000000 | 251759/500000 | 738773/1000000 |
| v | 410199/1000000 | 678801/1000000 | 410199/1000000 | 678801/1000000 |
| r | 797901/1000000 | 1 | 797901/1000000 | 1 |
| w | 35991/125000 | 632553/1000000 | 35991/125000 | 632553/1000000 |
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
| 1 | bound | `{"direction":"lo","ref":"128:4110","triangle":"EFH","value":"327749/1000000"}` | `1 * f * h + -1 * e * f + -1 * h + 672251/1000000` |
| 2 | physical | `{"factor":0,"stage":128}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 3 | physical | `{"factor":10,"stage":128}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 4 | physical | `{"factor":105,"stage":128}` | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 5 | physical | `{"factor":110,"stage":128}` | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 6 | physical | `{"factor":116,"stage":128}` | `-1/1 * u * w + 1/1 * e * u + 1/1 * w + 1/1 * v * r + -1/1 * v + -1/1 * e * r + -93/1000` |
| 7 | physical | `{"factor":118,"stage":128}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 8 | physical | `{"factor":134,"stage":128}` | `-1/1 * u * w + 1/1 * q * u + 1/1 * p * w + 1/1 * v * r + -1/1 * p * v + -1/1 * q * r + -93/1000` |
| 9 | physical | `{"factor":43,"stage":128}` | `-1/1 * p * k + 1/1 * a * p + 1/1 * q * j + -1/1 * a * j + -93/1000` |
| 10 | physical | `{"factor":65,"stage":128}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 11 | physical | `{"factor":78,"stage":128}` | `1/1 * u * k + -1/1 * b * k + -1/1 * v * j + 1/1 * b * v + -93/1000` |
| 12 | physical | `{"factor":93,"stage":128}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 13 | coordinate | `{"box":595,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 14 | coordinate | `{"box":595,"direction":"hi","value":"6143/20000","variable":"b"}` | `6143/20000 + -1 * b` |
| 15 | coordinate | `{"box":595,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 16 | coordinate | `{"box":595,"direction":"hi","value":"632553/1000000","variable":"w"}` | `632553/1000000 + -1 * w` |
| 17 | coordinate | `{"box":595,"direction":"hi","value":"87959/100000","variable":"j"}` | `87959/100000 + -1 * j` |
| 18 | coordinate | `{"box":595,"direction":"hi","value":"635613/1000000","variable":"c"}` | `635613/1000000 + -1 * c` |
| 19 | coordinate | `{"box":595,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 20 | coordinate | `{"box":595,"direction":"hi","value":"218127/500000","variable":"f"}` | `218127/500000 + -1 * f` |
| 21 | coordinate | `{"box":595,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 22 | coordinate | `{"box":595,"direction":"hi","value":"493439/1000000","variable":"p"}` | `493439/1000000 + -1 * p` |
| 23 | coordinate | `{"box":595,"direction":"hi","value":"573309/1000000","variable":"q"}` | `573309/1000000 + -1 * q` |
| 24 | coordinate | `{"box":595,"direction":"hi","value":"738773/1000000","variable":"u"}` | `738773/1000000 + -1 * u` |
| 25 | coordinate | `{"box":595,"direction":"hi","value":"678801/1000000","variable":"v"}` | `678801/1000000 + -1 * v` |
| 26 | coordinate | `{"box":595,"direction":"lo","value":"3351/31250","variable":"a"}` | `-3351/31250 + 1 * a` |
| 27 | coordinate | `{"box":595,"direction":"lo","value":"10417/100000","variable":"b"}` | `-10417/100000 + 1 * b` |
| 28 | coordinate | `{"box":595,"direction":"lo","value":"797901/1000000","variable":"r"}` | `-797901/1000000 + 1 * r` |
| 29 | coordinate | `{"box":595,"direction":"lo","value":"35991/125000","variable":"w"}` | `-35991/125000 + 1 * w` |
| 30 | coordinate | `{"box":595,"direction":"lo","value":"595741/1000000","variable":"j"}` | `-595741/1000000 + 1 * j` |
| 31 | coordinate | `{"box":595,"direction":"lo","value":"171943/250000","variable":"k"}` | `-171943/250000 + 1 * k` |
| 32 | coordinate | `{"box":595,"direction":"lo","value":"3351/31250","variable":"e"}` | `-3351/31250 + 1 * e` |
| 33 | coordinate | `{"box":595,"direction":"lo","value":"3351/31250","variable":"f"}` | `-3351/31250 + 1 * f` |
| 34 | coordinate | `{"box":595,"direction":"lo","value":"665227/1000000","variable":"h"}` | `-665227/1000000 + 1 * h` |
| 35 | coordinate | `{"box":595,"direction":"lo","value":"99111/500000","variable":"p"}` | `-99111/500000 + 1 * p` |
| 36 | coordinate | `{"box":595,"direction":"lo","value":"85909/250000","variable":"q"}` | `-85909/250000 + 1 * q` |
| 37 | coordinate | `{"box":595,"direction":"lo","value":"251759/500000","variable":"u"}` | `-251759/500000 + 1 * u` |
| 38 | coordinate | `{"box":595,"direction":"lo","value":"410199/1000000","variable":"v"}` | `-410199/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 18312000000 | 2 |
| 1 | 43991000000 | 3 |
| 2 | 34889000000 | 9 |
| 3 | 43240000000 | 10 |
| 4 | 9983000000 | 11 |
| 5 | 54960000000 | 12 |
| 6 | 5882000000 | 1 |
| 7 | 31710000000 | 4 |
| 8 | 25257000000 | 5 |
| 9 | 1438000000 | 6 |
| 10 | 2996000000 | 7 |
| 11 | 784000000 | 8 |
| 12 | 2222000000 | 0 |
| 13 | 62303000000 | 26, 27 |
| 14 | 18312000000 | 18, 26 |
| 15 | 87230000000 | 23, 27 |
| 16 | 78880000000 | 13, 35 |
| 17 | 9983000000 | 25, 27 |
| 18 | 9983000000 | 27, 31 |
| 19 | 34889000000 | 26, 30 |
| 20 | 54960000000 | 18, 34 |
| 21 | 54960000000 | 18, 23 |
| 22 | 37593000000 | 32, 33 |
| 23 | 7892000000 | 24, 32 |
| 24 | 4435000000 | 15, 19 |
| 25 | 2996000000 | 17, 32 |
| 26 | 5882000000 | 21, 33 |
| 27 | 43240000000 | 33, 36 |
| 28 | 31710000000 | 20, 38 |
| 29 | 33796000000 | 34, 35 |
| 30 | 21164000000 | 21, 22 |
| 31 | 25257000000 | 21, 37 |
| 32 | 784000000 | 35, 38 |
| 33 | 784000000 | 24, 36 |
| 34 | 784000000 | 16, 35 |
| 35 | 784000000 | 15, 23 |
| 36 | 34889000000 | 31, 35 |
| 37 | 34889000000 | 17, 36 |
| 38 | 7761000000 | 24, 31 |
| 39 | 7761000000 | 17, 25 |
| 40 | 5218000000 | 15, 31 |
| 41 | 5218000000 | 16, 17 |
| 42 | 104170 | 26 |
| 43 | 688719 | 27 |
| 44 | 1000000 | 14, 36 |
| 45 | 343636 | 14 |
| 46 | 307150 | 23 |
| 47 | 628536 | 22 |
| 48 | 1000000 | 19, 33 |
| 49 | 905133 | 19 |
| 50 | 391000 | 20 |
| 51 | 129522 | 21 |
| 52 | 639412 | 25 |
| 53 | 484060 | 24 |
| 54 | 1000000 | 32, 37 |
| 55 | 1027938 | 32 |
| 56 | 107232 | 37 |
| 57 | 294572 | 29 |
| 58 | 1000000 | 19, 28 |
| 59 | 1405626040 | 15 |
| 60 | 79215 | 31 |
| 61 | 289527 | 13 |
| 62 | 7015445664 | 18 |
| 63 | 39518 | 36 |
| 64 | 330113 | 17 |
| 65 | 582926 | 33 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -503754103513377/250000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -503754103513377/250000 | 1 | -503754103513377/250000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 595 | -503754103513377/250000 |

## Stage 596

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR-/PQS+/BFP-/APR-/APQ-/APS-/BQS+ |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR-/PQS+/BFP-/APR-/APQ-/APS-/BQS+:LLHHLLLLHH |
| Index | 0 |
| Context | 64 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 594 |
| Coordinate cut | c high 635613/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 3351/31250 | 6143/20000 | 3351/31250 | 6143/20000 |
| b | 10417/100000 | 6143/20000 | 10417/100000 | 6143/20000 |
| c | 635613/1000000 | 971389/1000000 | 635613/1000000 | 971389/1000000 |
| e | 3351/31250 | 391/1000 | 3351/31250 | 391/1000 |
| f | 3351/31250 | 218127/500000 | 3351/31250 | 218127/500000 |
| h | 665227/1000000 | 1 | 665227/1000000 | 1 |
| p | 99111/500000 | 493439/1000000 | 99111/500000 | 493439/1000000 |
| q | 85909/250000 | 573309/1000000 | 85909/250000 | 573309/1000000 |
| u | 251759/500000 | 738773/1000000 | 251759/500000 | 738773/1000000 |
| v | 410199/1000000 | 678801/1000000 | 410199/1000000 | 678801/1000000 |
| r | 797901/1000000 | 1 | 797901/1000000 | 1 |
| w | 35991/125000 | 632553/1000000 | 35991/125000 | 632553/1000000 |
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


## Stage 597

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR-/PQS+/BFP-/APR-/APQ-/APS-/BQS+ |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR-/PQS+/BFP-/APR-/APQ-/APS-/BQS+:LLHHLLLLHHL |
| Index | 0 |
| Context | 64 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 596 |
| Coordinate cut | w low 379373/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 3351/31250 | 6143/20000 | 3351/31250 | 6143/20000 |
| b | 10417/100000 | 6143/20000 | 10417/100000 | 6143/20000 |
| c | 635613/1000000 | 971389/1000000 | 635613/1000000 | 971389/1000000 |
| e | 3351/31250 | 391/1000 | 3351/31250 | 391/1000 |
| f | 3351/31250 | 218127/500000 | 3351/31250 | 218127/500000 |
| h | 665227/1000000 | 1 | 665227/1000000 | 1 |
| p | 99111/500000 | 493439/1000000 | 99111/500000 | 493439/1000000 |
| q | 85909/250000 | 573309/1000000 | 85909/250000 | 573309/1000000 |
| u | 251759/500000 | 738773/1000000 | 251759/500000 | 738773/1000000 |
| v | 410199/1000000 | 678801/1000000 | 410199/1000000 | 678801/1000000 |
| r | 797901/1000000 | 1 | 797901/1000000 | 1 |
| w | 35991/125000 | 379373/1000000 | 35991/125000 | 379373/1000000 |
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
| 2 | bound | `{"direction":"lo","ref":"128:4031","triangle":"FPQ","value":"6583/50000"}` | `1 * p * v + -1 * p + -1 * f * v + -1 * q * u + 1 * f * q + 1 * u + -6583/50000` |
| 3 | bound | `{"direction":"lo","ref":"128:4110","triangle":"EFH","value":"327749/1000000"}` | `1 * f * h + -1 * e * f + -1 * h + 672251/1000000` |
| 4 | physical | `{"factor":0,"stage":128}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 5 | physical | `{"factor":10,"stage":128}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 6 | physical | `{"factor":105,"stage":128}` | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 7 | physical | `{"factor":110,"stage":128}` | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 8 | physical | `{"factor":118,"stage":128}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 9 | physical | `{"factor":134,"stage":128}` | `-1/1 * u * w + 1/1 * q * u + 1/1 * p * w + 1/1 * v * r + -1/1 * p * v + -1/1 * q * r + -93/1000` |
| 10 | physical | `{"factor":43,"stage":128}` | `-1/1 * p * k + 1/1 * a * p + 1/1 * q * j + -1/1 * a * j + -93/1000` |
| 11 | physical | `{"factor":47,"stage":128}` | `1/1 * c * e + -1/1 * b * e + -93/1000` |
| 12 | physical | `{"factor":65,"stage":128}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 13 | physical | `{"factor":78,"stage":128}` | `1/1 * u * k + -1/1 * b * k + -1/1 * v * j + 1/1 * b * v + -93/1000` |
| 14 | physical | `{"factor":86,"stage":128}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 15 | physical | `{"factor":93,"stage":128}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 16 | coordinate | `{"box":597,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 17 | coordinate | `{"box":597,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 18 | coordinate | `{"box":597,"direction":"hi","value":"379373/1000000","variable":"w"}` | `379373/1000000 + -1 * w` |
| 19 | coordinate | `{"box":597,"direction":"hi","value":"87959/100000","variable":"j"}` | `87959/100000 + -1 * j` |
| 20 | coordinate | `{"box":597,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 21 | coordinate | `{"box":597,"direction":"hi","value":"971389/1000000","variable":"c"}` | `971389/1000000 + -1 * c` |
| 22 | coordinate | `{"box":597,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 23 | coordinate | `{"box":597,"direction":"hi","value":"218127/500000","variable":"f"}` | `218127/500000 + -1 * f` |
| 24 | coordinate | `{"box":597,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 25 | coordinate | `{"box":597,"direction":"hi","value":"493439/1000000","variable":"p"}` | `493439/1000000 + -1 * p` |
| 26 | coordinate | `{"box":597,"direction":"hi","value":"573309/1000000","variable":"q"}` | `573309/1000000 + -1 * q` |
| 27 | coordinate | `{"box":597,"direction":"hi","value":"738773/1000000","variable":"u"}` | `738773/1000000 + -1 * u` |
| 28 | coordinate | `{"box":597,"direction":"hi","value":"678801/1000000","variable":"v"}` | `678801/1000000 + -1 * v` |
| 29 | coordinate | `{"box":597,"direction":"lo","value":"3351/31250","variable":"a"}` | `-3351/31250 + 1 * a` |
| 30 | coordinate | `{"box":597,"direction":"lo","value":"10417/100000","variable":"b"}` | `-10417/100000 + 1 * b` |
| 31 | coordinate | `{"box":597,"direction":"lo","value":"797901/1000000","variable":"r"}` | `-797901/1000000 + 1 * r` |
| 32 | coordinate | `{"box":597,"direction":"lo","value":"35991/125000","variable":"w"}` | `-35991/125000 + 1 * w` |
| 33 | coordinate | `{"box":597,"direction":"lo","value":"595741/1000000","variable":"j"}` | `-595741/1000000 + 1 * j` |
| 34 | coordinate | `{"box":597,"direction":"lo","value":"171943/250000","variable":"k"}` | `-171943/250000 + 1 * k` |
| 35 | coordinate | `{"box":597,"direction":"lo","value":"635613/1000000","variable":"c"}` | `-635613/1000000 + 1 * c` |
| 36 | coordinate | `{"box":597,"direction":"lo","value":"3351/31250","variable":"e"}` | `-3351/31250 + 1 * e` |
| 37 | coordinate | `{"box":597,"direction":"lo","value":"3351/31250","variable":"f"}` | `-3351/31250 + 1 * f` |
| 38 | coordinate | `{"box":597,"direction":"lo","value":"665227/1000000","variable":"h"}` | `-665227/1000000 + 1 * h` |
| 39 | coordinate | `{"box":597,"direction":"lo","value":"99111/500000","variable":"p"}` | `-99111/500000 + 1 * p` |
| 40 | coordinate | `{"box":597,"direction":"lo","value":"85909/250000","variable":"q"}` | `-85909/250000 + 1 * q` |
| 41 | coordinate | `{"box":597,"direction":"lo","value":"251759/500000","variable":"u"}` | `-251759/500000 + 1 * u` |
| 42 | coordinate | `{"box":597,"direction":"lo","value":"410199/1000000","variable":"v"}` | `-410199/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 2671000000 | 4 |
| 1 | 25653000000 | 5 |
| 2 | 29486000000 | 10 |
| 3 | 3577000000 | 11 |
| 4 | 26418000000 | 12 |
| 5 | 1561000000 | 13 |
| 6 | 47532000000 | 14 |
| 7 | 18687000000 | 15 |
| 8 | 8378000000 | 3 |
| 9 | 6763000000 | 6 |
| 10 | 1398000000 | 7 |
| 11 | 52276000000 | 8 |
| 12 | 6763000000 | 2 |
| 13 | 6763000000 | 9 |
| 14 | 5546000000 | 1 |
| 15 | 1561000000 | 0 |
| 16 | 28324000000 | 29, 30 |
| 17 | 2671000000 | 21, 29 |
| 18 | 3577000000 | 30, 36 |
| 19 | 52071000000 | 26, 30 |
| 20 | 23686000000 | 25, 29 |
| 21 | 31454000000 | 16, 39 |
| 22 | 1561000000 | 28, 30 |
| 23 | 1561000000 | 30, 34 |
| 24 | 29486000000 | 29, 33 |
| 25 | 51110000000 | 21, 36 |
| 26 | 18687000000 | 24, 35 |
| 27 | 18687000000 | 35, 40 |
| 28 | 47532000000 | 18, 21 |
| 29 | 15141000000 | 36, 37 |
| 30 | 5365000000 | 27, 36 |
| 31 | 10947000000 | 31, 36 |
| 32 | 88861000000 | 17, 22 |
| 33 | 52276000000 | 19, 36 |
| 34 | 8378000000 | 24, 37 |
| 35 | 19655000000 | 37, 40 |
| 36 | 18687000000 | 38, 39 |
| 37 | 1398000000 | 24, 41 |
| 38 | 12309000000 | 18, 39 |
| 39 | 12309000000 | 17, 26 |
| 40 | 35032000000 | 34, 39 |
| 41 | 35032000000 | 26, 33 |
| 42 | 5202000000 | 18, 27 |
| 43 | 5202000000 | 17, 42 |
| 44 | 59383000000 | 17, 34 |
| 45 | 59382000000 | 18, 19 |
| 46 | 1000000 | 29, 39 |
| 47 | 198222 | 29 |
| 48 | 107232 | 39 |
| 49 | 1000000 | 35, 36 |
| 50 | 107232 | 35 |
| 51 | 635613 | 36 |
| 52 | 569856 | 25 |
| 53 | 38824 | 30 |
| 54 | 942124 | 18 |
| 55 | 166523 | 38 |
| 56 | 390630 | 42 |
| 57 | 198666 | 41 |
| 58 | 687772 | 17 |
| 59 | 1000000 | 20 |
| 60 | 722474 | 34 |
| 61 | 1000000 | 32, 33 |
| 62 | 595741 | 32 |
| 63 | 287928 | 33 |
| 64 | 520755 | 16 |
| 65 | 160824 | 21 |
| 66 | 817726 | 22 |
| 67 | 110309 | 40 |
| 68 | 50682 | 19 |
| 69 | 234708 | 23 |
| 70 | 248083 | 31 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -875682604009241/500000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -875682604009241/500000 | 1 | -875682604009241/500000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 597 | -875682604009241/500000 |

## Stage 598

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR-/PQS+/BFP-/APR-/APQ-/APS-/BQS+ |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR-/PQS+/BFP-/APR-/APQ-/APS-/BQS+:LLHHLLLLHHH |
| Index | 0 |
| Context | 64 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 596 |
| Coordinate cut | w high 379373/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 3351/31250 | 6143/20000 | 3351/31250 | 6143/20000 |
| b | 10417/100000 | 6143/20000 | 10417/100000 | 6143/20000 |
| c | 635613/1000000 | 971389/1000000 | 635613/1000000 | 971389/1000000 |
| e | 3351/31250 | 391/1000 | 3351/31250 | 391/1000 |
| f | 3351/31250 | 218127/500000 | 3351/31250 | 218127/500000 |
| h | 665227/1000000 | 1 | 665227/1000000 | 1 |
| p | 99111/500000 | 493439/1000000 | 99111/500000 | 493439/1000000 |
| q | 85909/250000 | 573309/1000000 | 85909/250000 | 573309/1000000 |
| u | 251759/500000 | 738773/1000000 | 251759/500000 | 738773/1000000 |
| v | 410199/1000000 | 678801/1000000 | 410199/1000000 | 678801/1000000 |
| r | 797901/1000000 | 1 | 797901/1000000 | 1 |
| w | 379373/1000000 | 632553/1000000 | 379373/1000000 | 632553/1000000 |
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


## Stage 599

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR-/PQS+/BFP-/APR-/APQ-/APS-/BQS+ |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR-/PQS+/BFP-/APR-/APQ-/APS-/BQS+:LLHHLLLLHHHL |
| Index | 0 |
| Context | 64 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 598 |
| Coordinate cut | c low 219919/250000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 3351/31250 | 6143/20000 | 3351/31250 | 6143/20000 |
| b | 10417/100000 | 6143/20000 | 10417/100000 | 6143/20000 |
| c | 635613/1000000 | 219919/250000 | 635613/1000000 | 219919/250000 |
| e | 3351/31250 | 391/1000 | 3351/31250 | 391/1000 |
| f | 3351/31250 | 218127/500000 | 3351/31250 | 218127/500000 |
| h | 665227/1000000 | 1 | 665227/1000000 | 1 |
| p | 99111/500000 | 493439/1000000 | 99111/500000 | 493439/1000000 |
| q | 85909/250000 | 573309/1000000 | 85909/250000 | 573309/1000000 |
| u | 251759/500000 | 738773/1000000 | 251759/500000 | 738773/1000000 |
| v | 410199/1000000 | 678801/1000000 | 410199/1000000 | 678801/1000000 |
| r | 797901/1000000 | 1 | 797901/1000000 | 1 |
| w | 379373/1000000 | 632553/1000000 | 379373/1000000 | 632553/1000000 |
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
