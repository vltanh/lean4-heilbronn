# BITT convex: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 600

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR-/PQS+/BFP-/APR-/APQ-/APS-/BQS+ |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR-/PQS+/BFP-/APR-/APQ-/APS-/BQS+:LLHHLLLLHHHLL |
| Index | 0 |
| Context | 64 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 599 |
| Coordinate cut | k low 2492/3125 |

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
| k | 171943/250000 | 2492/3125 | 171943/250000 | 2492/3125 |

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
| 2 | physical | `{"factor":0,"stage":128}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 3 | physical | `{"factor":10,"stage":128}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 4 | physical | `{"factor":105,"stage":128}` | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 5 | physical | `{"factor":118,"stage":128}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 6 | physical | `{"factor":134,"stage":128}` | `-1/1 * u * w + 1/1 * q * u + 1/1 * p * w + 1/1 * v * r + -1/1 * p * v + -1/1 * q * r + -93/1000` |
| 7 | physical | `{"factor":43,"stage":128}` | `-1/1 * p * k + 1/1 * a * p + 1/1 * q * j + -1/1 * a * j + -93/1000` |
| 8 | physical | `{"factor":65,"stage":128}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 9 | physical | `{"factor":78,"stage":128}` | `1/1 * u * k + -1/1 * b * k + -1/1 * v * j + 1/1 * b * v + -93/1000` |
| 10 | physical | `{"factor":86,"stage":128}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 11 | coordinate | `{"box":600,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 12 | coordinate | `{"box":600,"direction":"hi","value":"6143/20000","variable":"b"}` | `6143/20000 + -1 * b` |
| 13 | coordinate | `{"box":600,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 14 | coordinate | `{"box":600,"direction":"hi","value":"632553/1000000","variable":"w"}` | `632553/1000000 + -1 * w` |
| 15 | coordinate | `{"box":600,"direction":"hi","value":"87959/100000","variable":"j"}` | `87959/100000 + -1 * j` |
| 16 | coordinate | `{"box":600,"direction":"hi","value":"2492/3125","variable":"k"}` | `2492/3125 + -1 * k` |
| 17 | coordinate | `{"box":600,"direction":"hi","value":"219919/250000","variable":"c"}` | `219919/250000 + -1 * c` |
| 18 | coordinate | `{"box":600,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 19 | coordinate | `{"box":600,"direction":"hi","value":"218127/500000","variable":"f"}` | `218127/500000 + -1 * f` |
| 20 | coordinate | `{"box":600,"direction":"hi","value":"493439/1000000","variable":"p"}` | `493439/1000000 + -1 * p` |
| 21 | coordinate | `{"box":600,"direction":"hi","value":"573309/1000000","variable":"q"}` | `573309/1000000 + -1 * q` |
| 22 | coordinate | `{"box":600,"direction":"hi","value":"738773/1000000","variable":"u"}` | `738773/1000000 + -1 * u` |
| 23 | coordinate | `{"box":600,"direction":"hi","value":"678801/1000000","variable":"v"}` | `678801/1000000 + -1 * v` |
| 24 | coordinate | `{"box":600,"direction":"lo","value":"3351/31250","variable":"a"}` | `-3351/31250 + 1 * a` |
| 25 | coordinate | `{"box":600,"direction":"lo","value":"10417/100000","variable":"b"}` | `-10417/100000 + 1 * b` |
| 26 | coordinate | `{"box":600,"direction":"lo","value":"379373/1000000","variable":"w"}` | `-379373/1000000 + 1 * w` |
| 27 | coordinate | `{"box":600,"direction":"lo","value":"595741/1000000","variable":"j"}` | `-595741/1000000 + 1 * j` |
| 28 | coordinate | `{"box":600,"direction":"lo","value":"171943/250000","variable":"k"}` | `-171943/250000 + 1 * k` |
| 29 | coordinate | `{"box":600,"direction":"lo","value":"635613/1000000","variable":"c"}` | `-635613/1000000 + 1 * c` |
| 30 | coordinate | `{"box":600,"direction":"lo","value":"3351/31250","variable":"e"}` | `-3351/31250 + 1 * e` |
| 31 | coordinate | `{"box":600,"direction":"lo","value":"3351/31250","variable":"f"}` | `-3351/31250 + 1 * f` |
| 32 | coordinate | `{"box":600,"direction":"lo","value":"99111/500000","variable":"p"}` | `-99111/500000 + 1 * p` |
| 33 | coordinate | `{"box":600,"direction":"lo","value":"85909/250000","variable":"q"}` | `-85909/250000 + 1 * q` |
| 34 | coordinate | `{"box":600,"direction":"lo","value":"251759/500000","variable":"u"}` | `-251759/500000 + 1 * u` |
| 35 | coordinate | `{"box":600,"direction":"lo","value":"410199/1000000","variable":"v"}` | `-410199/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 12502000000 | 2 |
| 1 | 17906000000 | 3 |
| 2 | 28627000000 | 7 |
| 3 | 10332000000 | 8 |
| 4 | 21883000000 | 9 |
| 5 | 4926000000 | 10 |
| 6 | 8026000000 | 4 |
| 7 | 37173000000 | 5 |
| 8 | 31803000000 | 6 |
| 9 | 26172000000 | 1 |
| 10 | 21883000000 | 0 |
| 11 | 30409000000 | 24, 25 |
| 12 | 12502000000 | 17, 24 |
| 13 | 28238000000 | 21, 25 |
| 14 | 46533000000 | 11, 32 |
| 15 | 21883000000 | 23, 25 |
| 16 | 21883000000 | 12, 16 |
| 17 | 28627000000 | 24, 27 |
| 18 | 4926000000 | 17, 30 |
| 19 | 4926000000 | 26, 29 |
| 20 | 8026000000 | 30, 31 |
| 21 | 8026000000 | 22, 30 |
| 22 | 42099000000 | 13, 18 |
| 23 | 37173000000 | 15, 30 |
| 24 | 10332000000 | 31, 33 |
| 25 | 4166000000 | 23, 31 |
| 26 | 3860000000 | 19, 35 |
| 27 | 31803000000 | 32, 35 |
| 28 | 31803000000 | 22, 33 |
| 29 | 39992000000 | 14, 32 |
| 30 | 17983000000 | 20, 26 |
| 31 | 57975000000 | 13, 21 |
| 32 | 54799000000 | 16, 20 |
| 33 | 54799000000 | 21, 27 |
| 34 | 9920000000 | 26, 34 |
| 35 | 9920000000 | 13, 35 |
| 36 | 85228000000 | 13, 28 |
| 37 | 85228000000 | 26, 27 |
| 38 | 1000000 | 11, 25 |
| 39 | 104170 | 11 |
| 40 | 411567 | 12 |
| 41 | 917545 | 32 |
| 42 | 427824 | 26 |
| 43 | 166796 | 23 |
| 44 | 80420 | 34 |
| 45 | 12988307821 | 13 |
| 46 | 14294000000 | 16 |
| 47 | 327211 | 28 |
| 48 | 379373 | 20 |
| 49 | 493439 | 14 |
| 50 | 409459 | 24 |
| 51 | 47898 | 17 |
| 52 | 159786 | 33 |
| 53 | 37481 | 27 |
| 54 | 31112 | 18 |
| 55 | 161922 | 19 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -1254182860308081/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -1254182860308081/1000000 | 1 | -1254182860308081/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 600 | -1254182860308081/1000000 |

## Stage 601

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR-/PQS+/BFP-/APR-/APQ-/APS-/BQS+ |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR-/PQS+/BFP-/APR-/APQ-/APS-/BQS+:LLHHLLLLHHHLH |
| Index | 0 |
| Context | 64 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 599 |
| Coordinate cut | k high 2492/3125 |

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
| k | 2492/3125 | 1 | 2492/3125 | 1 |

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


## Stage 602

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR-/PQS+/BFP-/APR-/APQ-/APS-/BQS+ |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR-/PQS+/BFP-/APR-/APQ-/APS-/BQS+:LLHHLLLLHHHLHL |
| Index | 0 |
| Context | 64 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 601 |
| Coordinate cut | f low 8083/25000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 3351/31250 | 6143/20000 | 3351/31250 | 6143/20000 |
| b | 10417/100000 | 6143/20000 | 10417/100000 | 6143/20000 |
| c | 635613/1000000 | 219919/250000 | 635613/1000000 | 219919/250000 |
| e | 3351/31250 | 391/1000 | 3351/31250 | 391/1000 |
| f | 3351/31250 | 8083/25000 | 3351/31250 | 8083/25000 |
| h | 665227/1000000 | 1 | 665227/1000000 | 1 |
| p | 99111/500000 | 493439/1000000 | 99111/500000 | 493439/1000000 |
| q | 85909/250000 | 573309/1000000 | 85909/250000 | 573309/1000000 |
| u | 251759/500000 | 738773/1000000 | 251759/500000 | 738773/1000000 |
| v | 410199/1000000 | 678801/1000000 | 410199/1000000 | 678801/1000000 |
| r | 797901/1000000 | 1 | 797901/1000000 | 1 |
| w | 379373/1000000 | 632553/1000000 | 379373/1000000 | 632553/1000000 |
| j | 595741/1000000 | 87959/100000 | 595741/1000000 | 87959/100000 |
| k | 2492/3125 | 1 | 2492/3125 | 1 |

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


## Stage 603

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR-/PQS+/BFP-/APR-/APQ-/APS-/BQS+ |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR-/PQS+/BFP-/APR-/APQ-/APS-/BQS+:LLHHLLLLHHHLHLL |
| Index | 0 |
| Context | 64 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 602 |
| Coordinate cut | e low 270261/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 3351/31250 | 6143/20000 | 3351/31250 | 6143/20000 |
| b | 10417/100000 | 6143/20000 | 10417/100000 | 6143/20000 |
| c | 635613/1000000 | 219919/250000 | 635613/1000000 | 219919/250000 |
| e | 3351/31250 | 270261/1000000 | 3351/31250 | 270261/1000000 |
| f | 3351/31250 | 8083/25000 | 3351/31250 | 8083/25000 |
| h | 665227/1000000 | 1 | 665227/1000000 | 1 |
| p | 99111/500000 | 493439/1000000 | 99111/500000 | 493439/1000000 |
| q | 85909/250000 | 573309/1000000 | 85909/250000 | 573309/1000000 |
| u | 251759/500000 | 738773/1000000 | 251759/500000 | 738773/1000000 |
| v | 410199/1000000 | 678801/1000000 | 410199/1000000 | 678801/1000000 |
| r | 797901/1000000 | 1 | 797901/1000000 | 1 |
| w | 379373/1000000 | 632553/1000000 | 379373/1000000 | 632553/1000000 |
| j | 595741/1000000 | 87959/100000 | 595741/1000000 | 87959/100000 |
| k | 2492/3125 | 1 | 2492/3125 | 1 |

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
| 1 | physical | `{"factor":0,"stage":128}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 2 | physical | `{"factor":10,"stage":128}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 3 | physical | `{"factor":105,"stage":128}` | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 4 | physical | `{"factor":110,"stage":128}` | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 5 | physical | `{"factor":118,"stage":128}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 6 | physical | `{"factor":134,"stage":128}` | `-1/1 * u * w + 1/1 * q * u + 1/1 * p * w + 1/1 * v * r + -1/1 * p * v + -1/1 * q * r + -93/1000` |
| 7 | physical | `{"factor":43,"stage":128}` | `-1/1 * p * k + 1/1 * a * p + 1/1 * q * j + -1/1 * a * j + -93/1000` |
| 8 | physical | `{"factor":65,"stage":128}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 9 | physical | `{"factor":78,"stage":128}` | `1/1 * u * k + -1/1 * b * k + -1/1 * v * j + 1/1 * b * v + -93/1000` |
| 10 | physical | `{"factor":86,"stage":128}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 11 | physical | `{"factor":93,"stage":128}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 12 | coordinate | `{"box":603,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 13 | coordinate | `{"box":603,"direction":"hi","value":"6143/20000","variable":"b"}` | `6143/20000 + -1 * b` |
| 14 | coordinate | `{"box":603,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 15 | coordinate | `{"box":603,"direction":"hi","value":"632553/1000000","variable":"w"}` | `632553/1000000 + -1 * w` |
| 16 | coordinate | `{"box":603,"direction":"hi","value":"87959/100000","variable":"j"}` | `87959/100000 + -1 * j` |
| 17 | coordinate | `{"box":603,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 18 | coordinate | `{"box":603,"direction":"hi","value":"219919/250000","variable":"c"}` | `219919/250000 + -1 * c` |
| 19 | coordinate | `{"box":603,"direction":"hi","value":"270261/1000000","variable":"e"}` | `270261/1000000 + -1 * e` |
| 20 | coordinate | `{"box":603,"direction":"hi","value":"8083/25000","variable":"f"}` | `8083/25000 + -1 * f` |
| 21 | coordinate | `{"box":603,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 22 | coordinate | `{"box":603,"direction":"hi","value":"493439/1000000","variable":"p"}` | `493439/1000000 + -1 * p` |
| 23 | coordinate | `{"box":603,"direction":"hi","value":"573309/1000000","variable":"q"}` | `573309/1000000 + -1 * q` |
| 24 | coordinate | `{"box":603,"direction":"hi","value":"738773/1000000","variable":"u"}` | `738773/1000000 + -1 * u` |
| 25 | coordinate | `{"box":603,"direction":"hi","value":"678801/1000000","variable":"v"}` | `678801/1000000 + -1 * v` |
| 26 | coordinate | `{"box":603,"direction":"lo","value":"3351/31250","variable":"a"}` | `-3351/31250 + 1 * a` |
| 27 | coordinate | `{"box":603,"direction":"lo","value":"10417/100000","variable":"b"}` | `-10417/100000 + 1 * b` |
| 28 | coordinate | `{"box":603,"direction":"lo","value":"797901/1000000","variable":"r"}` | `-797901/1000000 + 1 * r` |
| 29 | coordinate | `{"box":603,"direction":"lo","value":"379373/1000000","variable":"w"}` | `-379373/1000000 + 1 * w` |
| 30 | coordinate | `{"box":603,"direction":"lo","value":"595741/1000000","variable":"j"}` | `-595741/1000000 + 1 * j` |
| 31 | coordinate | `{"box":603,"direction":"lo","value":"2492/3125","variable":"k"}` | `-2492/3125 + 1 * k` |
| 32 | coordinate | `{"box":603,"direction":"lo","value":"635613/1000000","variable":"c"}` | `-635613/1000000 + 1 * c` |
| 33 | coordinate | `{"box":603,"direction":"lo","value":"3351/31250","variable":"e"}` | `-3351/31250 + 1 * e` |
| 34 | coordinate | `{"box":603,"direction":"lo","value":"3351/31250","variable":"f"}` | `-3351/31250 + 1 * f` |
| 35 | coordinate | `{"box":603,"direction":"lo","value":"665227/1000000","variable":"h"}` | `-665227/1000000 + 1 * h` |
| 36 | coordinate | `{"box":603,"direction":"lo","value":"99111/500000","variable":"p"}` | `-99111/500000 + 1 * p` |
| 37 | coordinate | `{"box":603,"direction":"lo","value":"85909/250000","variable":"q"}` | `-85909/250000 + 1 * q` |
| 38 | coordinate | `{"box":603,"direction":"lo","value":"251759/500000","variable":"u"}` | `-251759/500000 + 1 * u` |
| 39 | coordinate | `{"box":603,"direction":"lo","value":"410199/1000000","variable":"v"}` | `-410199/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 4641000000 | 1 |
| 1 | 15960000000 | 2 |
| 2 | 37658000000 | 7 |
| 3 | 11600000000 | 8 |
| 4 | 16783000000 | 9 |
| 5 | 14928000000 | 10 |
| 6 | 1723000000 | 11 |
| 7 | 34914000000 | 3 |
| 8 | 1518000000 | 4 |
| 9 | 20149000000 | 5 |
| 10 | 44035000000 | 6 |
| 11 | 1535000000 | 0 |
| 12 | 20601000000 | 26, 27 |
| 13 | 4641000000 | 18, 26 |
| 14 | 27560000000 | 23, 27 |
| 15 | 33431000000 | 22, 26 |
| 16 | 20187000000 | 12, 36 |
| 17 | 16783000000 | 25, 27 |
| 18 | 16783000000 | 27, 31 |
| 19 | 37658000000 | 26, 30 |
| 20 | 14928000000 | 19, 32 |
| 21 | 1723000000 | 21, 32 |
| 22 | 1723000000 | 32, 37 |
| 23 | 14928000000 | 29, 32 |
| 24 | 10824000000 | 33, 34 |
| 25 | 24090000000 | 19, 20 |
| 26 | 33396000000 | 19, 38 |
| 27 | 35078000000 | 14, 19 |
| 28 | 20149000000 | 16, 33 |
| 29 | 11600000000 | 20, 23 |
| 30 | 34914000000 | 20, 39 |
| 31 | 1723000000 | 35, 36 |
| 32 | 1518000000 | 21, 38 |
| 33 | 44035000000 | 36, 39 |
| 34 | 44035000000 | 23, 38 |
| 35 | 44035000000 | 15, 36 |
| 36 | 44035000000 | 14, 23 |
| 37 | 37658000000 | 31, 36 |
| 38 | 4943000000 | 16, 37 |
| 39 | 32715000000 | 23, 30 |
| 40 | 42500000000 | 29, 38 |
| 41 | 42499000000 | 14, 39 |
| 42 | 15248000000 | 17, 38 |
| 43 | 15248000000 | 16, 25 |
| 44 | 21685000000 | 14, 31 |
| 45 | 21685000000 | 29, 30 |
| 46 | 198222 | 12 |
| 47 | 486791 | 22 |
| 48 | 191271 | 13 |
| 49 | 883679 | 29 |
| 50 | 1000000 | 19, 28 |
| 51 | 797901 | 19 |
| 52 | 949062 | 14 |
| 53 | 1014500 | 39 |
| 54 | 325044 | 24 |
| 55 | 34983 | 35 |
| 56 | 1000000 | 28, 31 |
| 57 | 1140912 | 28 |
| 58 | 797901 | 31 |
| 59 | 713278 | 17 |
| 60 | 1000000 | 15, 30 |
| 61 | 595741 | 15 |
| 62 | 632553 | 16 |
| 63 | 379373 | 38 |
| 64 | 1000000 | 25, 28 |
| 65 | 797901 | 25 |
| 66 | 375931 | 26 |
| 67 | 245052 | 32 |
| 68 | 147316 | 23 |
| 69 | 189558 | 30 |
| 70 | 681066 | 33 |
| 71 | 36828 | 20 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -322762990676299/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -322762990676299/1000000 | 1 | -322762990676299/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 603 | -322762990676299/1000000 |

## Stage 604

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR-/PQS+/BFP-/APR-/APQ-/APS-/BQS+ |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR-/PQS+/BFP-/APR-/APQ-/APS-/BQS+:LLHHLLLLHHHLHLH |
| Index | 0 |
| Context | 64 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 602 |
| Coordinate cut | e high 270261/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 3351/31250 | 6143/20000 | 3351/31250 | 6143/20000 |
| b | 10417/100000 | 6143/20000 | 10417/100000 | 6143/20000 |
| c | 635613/1000000 | 219919/250000 | 635613/1000000 | 219919/250000 |
| e | 270261/1000000 | 391/1000 | 270261/1000000 | 391/1000 |
| f | 3351/31250 | 8083/25000 | 3351/31250 | 8083/25000 |
| h | 665227/1000000 | 1 | 665227/1000000 | 1 |
| p | 99111/500000 | 493439/1000000 | 99111/500000 | 493439/1000000 |
| q | 85909/250000 | 573309/1000000 | 85909/250000 | 573309/1000000 |
| u | 251759/500000 | 738773/1000000 | 251759/500000 | 738773/1000000 |
| v | 410199/1000000 | 678801/1000000 | 410199/1000000 | 678801/1000000 |
| r | 797901/1000000 | 1 | 797901/1000000 | 1 |
| w | 379373/1000000 | 632553/1000000 | 379373/1000000 | 632553/1000000 |
| j | 595741/1000000 | 87959/100000 | 595741/1000000 | 87959/100000 |
| k | 2492/3125 | 1 | 2492/3125 | 1 |

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
| 1 | bound | `{"direction":"lo","ref":"128:4031","triangle":"FPQ","value":"6583/50000"}` | `1 * p * v + -1 * p + -1 * f * v + -1 * q * u + 1 * f * q + 1 * u + -6583/50000` |
| 2 | physical | `{"factor":0,"stage":128}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 3 | physical | `{"factor":105,"stage":128}` | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 4 | physical | `{"factor":110,"stage":128}` | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 5 | physical | `{"factor":118,"stage":128}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 6 | physical | `{"factor":134,"stage":128}` | `-1/1 * u * w + 1/1 * q * u + 1/1 * p * w + 1/1 * v * r + -1/1 * p * v + -1/1 * q * r + -93/1000` |
| 7 | physical | `{"factor":143,"stage":128}` | `1/1 * f + -1/1 * e` |
| 8 | physical | `{"factor":43,"stage":128}` | `-1/1 * p * k + 1/1 * a * p + 1/1 * q * j + -1/1 * a * j + -93/1000` |
| 9 | physical | `{"factor":65,"stage":128}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 10 | physical | `{"factor":7,"stage":128}` | `1/1 * b * h + -1/1 * a * b + -93/1000` |
| 11 | physical | `{"factor":78,"stage":128}` | `1/1 * u * k + -1/1 * b * k + -1/1 * v * j + 1/1 * b * v + -93/1000` |
| 12 | physical | `{"factor":86,"stage":128}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 13 | physical | `{"factor":93,"stage":128}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 14 | coordinate | `{"box":604,"direction":"hi","value":"6143/20000","variable":"b"}` | `6143/20000 + -1 * b` |
| 15 | coordinate | `{"box":604,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 16 | coordinate | `{"box":604,"direction":"hi","value":"632553/1000000","variable":"w"}` | `632553/1000000 + -1 * w` |
| 17 | coordinate | `{"box":604,"direction":"hi","value":"87959/100000","variable":"j"}` | `87959/100000 + -1 * j` |
| 18 | coordinate | `{"box":604,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 19 | coordinate | `{"box":604,"direction":"hi","value":"219919/250000","variable":"c"}` | `219919/250000 + -1 * c` |
| 20 | coordinate | `{"box":604,"direction":"hi","value":"8083/25000","variable":"f"}` | `8083/25000 + -1 * f` |
| 21 | coordinate | `{"box":604,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 22 | coordinate | `{"box":604,"direction":"hi","value":"493439/1000000","variable":"p"}` | `493439/1000000 + -1 * p` |
| 23 | coordinate | `{"box":604,"direction":"hi","value":"573309/1000000","variable":"q"}` | `573309/1000000 + -1 * q` |
| 24 | coordinate | `{"box":604,"direction":"hi","value":"738773/1000000","variable":"u"}` | `738773/1000000 + -1 * u` |
| 25 | coordinate | `{"box":604,"direction":"hi","value":"678801/1000000","variable":"v"}` | `678801/1000000 + -1 * v` |
| 26 | coordinate | `{"box":604,"direction":"lo","value":"3351/31250","variable":"a"}` | `-3351/31250 + 1 * a` |
| 27 | coordinate | `{"box":604,"direction":"lo","value":"10417/100000","variable":"b"}` | `-10417/100000 + 1 * b` |
| 28 | coordinate | `{"box":604,"direction":"lo","value":"797901/1000000","variable":"r"}` | `-797901/1000000 + 1 * r` |
| 29 | coordinate | `{"box":604,"direction":"lo","value":"379373/1000000","variable":"w"}` | `-379373/1000000 + 1 * w` |
| 30 | coordinate | `{"box":604,"direction":"lo","value":"595741/1000000","variable":"j"}` | `-595741/1000000 + 1 * j` |
| 31 | coordinate | `{"box":604,"direction":"lo","value":"2492/3125","variable":"k"}` | `-2492/3125 + 1 * k` |
| 32 | coordinate | `{"box":604,"direction":"lo","value":"635613/1000000","variable":"c"}` | `-635613/1000000 + 1 * c` |
| 33 | coordinate | `{"box":604,"direction":"lo","value":"270261/1000000","variable":"e"}` | `-270261/1000000 + 1 * e` |
| 34 | coordinate | `{"box":604,"direction":"lo","value":"3351/31250","variable":"f"}` | `-3351/31250 + 1 * f` |
| 35 | coordinate | `{"box":604,"direction":"lo","value":"665227/1000000","variable":"h"}` | `-665227/1000000 + 1 * h` |
| 36 | coordinate | `{"box":604,"direction":"lo","value":"99111/500000","variable":"p"}` | `-99111/500000 + 1 * p` |
| 37 | coordinate | `{"box":604,"direction":"lo","value":"85909/250000","variable":"q"}` | `-85909/250000 + 1 * q` |
| 38 | coordinate | `{"box":604,"direction":"lo","value":"251759/500000","variable":"u"}` | `-251759/500000 + 1 * u` |
| 39 | coordinate | `{"box":604,"direction":"lo","value":"410199/1000000","variable":"v"}` | `-410199/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 8544000000 | 2 |
| 1 | 20361000000 | 10 |
| 2 | 44038000000 | 8 |
| 3 | 37744000000 | 9 |
| 4 | 9744000000 | 11 |
| 5 | 19458000000 | 12 |
| 6 | 14374000000 | 13 |
| 7 | 24667000000 | 3 |
| 8 | 16935000000 | 4 |
| 9 | 39640000000 | 5 |
| 10 | 252000000 | 1 |
| 11 | 10623000000 | 6 |
| 12 | 9744000000 | 0 |
| 13 | 18146000000 | 7 |
| 14 | 28905000000 | 26, 27 |
| 15 | 8544000000 | 19, 26 |
| 16 | 20361000000 | 21, 27 |
| 17 | 37744000000 | 23, 27 |
| 18 | 44038000000 | 22, 26 |
| 19 | 9744000000 | 25, 27 |
| 20 | 9744000000 | 27, 31 |
| 21 | 44038000000 | 26, 30 |
| 22 | 19458000000 | 19, 33 |
| 23 | 14374000000 | 21, 32 |
| 24 | 14374000000 | 19, 23 |
| 25 | 19458000000 | 16, 19 |
| 26 | 24667000000 | 33, 34 |
| 27 | 7732000000 | 24, 33 |
| 28 | 59098000000 | 28, 33 |
| 29 | 39640000000 | 17, 33 |
| 30 | 37492000000 | 20, 23 |
| 31 | 24415000000 | 20, 39 |
| 32 | 14374000000 | 35, 36 |
| 33 | 16935000000 | 21, 38 |
| 34 | 10371000000 | 36, 39 |
| 35 | 10371000000 | 23, 38 |
| 36 | 10623000000 | 16, 36 |
| 37 | 10623000000 | 15, 23 |
| 38 | 44038000000 | 31, 36 |
| 39 | 44038000000 | 23, 30 |
| 40 | 878000000 | 16, 24 |
| 41 | 878000000 | 15, 39 |
| 42 | 49385000000 | 15, 31 |
| 43 | 49385000000 | 16, 17 |
| 44 | 83888 | 22 |
| 45 | 415520 | 14 |
| 46 | 721664 | 29 |
| 47 | 870082 | 39 |
| 48 | 64157 | 24 |
| 49 | 140934 | 21 |
| 50 | 1000000 | 28, 31 |
| 51 | 797440 | 28 |
| 52 | 797901 | 31 |
| 53 | 667084 | 18 |
| 54 | 1000000 | 16, 30 |
| 55 | 595741 | 16 |
| 56 | 632553 | 17 |
| 57 | 1000000 | 29, 38 |
| 58 | 379373 | 38 |
| 59 | 1000000 | 25, 28 |
| 60 | 797901 | 25 |
| 61 | 17680261838 | 15 |
| 62 | 20530 | 34 |
| 63 | 10249568998 | 33 |
| 64 | 257582 | 26 |
| 65 | 31094 | 32 |
| 66 | 356448 | 37 |
| 67 | 384939 | 30 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -286838270791169/125000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -286838270791169/125000 | 1 | -286838270791169/125000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 604 | -286838270791169/125000 |
