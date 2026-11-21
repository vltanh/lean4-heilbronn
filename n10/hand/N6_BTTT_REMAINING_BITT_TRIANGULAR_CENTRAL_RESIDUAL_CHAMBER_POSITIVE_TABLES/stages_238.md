# BITT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 1190

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ-/BPS-/HQS-/BPR+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ-/BPS-/HQS-/BPR+:LHLLHL |
| Index | 0 |
| Context | 251 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1189 |
| Coordinate cut | v low 29777/50000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 27769/250000 | 6143/20000 | 27769/250000 | 6143/20000 |
| b | 108627/1000000 | 286557/1000000 | 108627/1000000 | 286557/1000000 |
| c | 140427/250000 | 403449/500000 | 140427/250000 | 403449/500000 |
| e | 27793/250000 | 50863/125000 | 27793/250000 | 50863/125000 |
| f | 27793/250000 | 50863/125000 | 27793/250000 | 50863/125000 |
| h | 694321/1000000 | 24123/25000 | 694321/1000000 | 24123/25000 |
| p | 34433/125000 | 501223/1000000 | 34433/125000 | 501223/1000000 |
| q | 203317/1000000 | 552491/1000000 | 203317/1000000 | 552491/1000000 |
| u | 133037/500000 | 85763/125000 | 133037/500000 | 85763/125000 |
| v | 471191/1000000 | 29777/50000 | 471191/1000000 | 29777/50000 |
| r | 629737/1000000 | 1 | 629737/1000000 | 1 |
| w | 411289/500000 | 1 | 411289/500000 | 1 |
| j | 80189/100000 | 8033/8963 | 80189/100000 | 8033/8963 |
| k | 319273/1000000 | 598907/1000000 | 319273/1000000 | 598907/1000000 |

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
| 0 | bound | `{"direction":"lo","ref":"465:2603","triangle":"BCP","value":"127817/1000000"}` | `1 * c * q + -1 * b * q + -127817/1000000` |
| 1 | bound | `{"direction":"lo","ref":"465:2958","triangle":"CEF","value":"80387/200000"}` | `119613/200000 + -1 * c + -1 * e * f + 1 * c * e` |
| 2 | physical | `{"factor":10,"stage":465}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 3 | physical | `{"factor":105,"stage":465}` | `-1/1 * f * k + 1/1 * e * f + 1/1 * k + 1/1 * j + -1093/1000 + -1/1 * e * j` |
| 4 | physical | `{"factor":124,"stage":465}` | `1/1 * u * k + -1/1 * u + -1/1 * f * k + -1/1 * v * j + 1/1 * f * v + 1/1 * j + -93/1000` |
| 5 | physical | `{"factor":129,"stage":465}` | `-1/1 * u * k + 1/1 * h * u + 1/1 * v * j + -1/1 * h * j + -93/1000` |
| 6 | physical | `{"factor":136,"stage":465}` | `1/1 * e + -1/1 * a` |
| 7 | physical | `{"factor":7,"stage":465}` | `1/1 * b * h + -1/1 * a * b + -93/1000` |
| 8 | physical | `{"factor":72,"stage":465}` | `1/1 * p * v + -1/1 * b * v + -1/1 * q * u + 1/1 * b * q + -93/1000` |
| 9 | physical | `{"factor":74,"stage":465}` | `-1/1 * p * k + 1/1 * b * k + 1/1 * q * j + -1/1 * b * q + -93/1000` |
| 10 | physical | `{"factor":87,"stage":465}` | `-1/1 * f * v + 1/1 * c * v + 1/1 * u + -1/1 * c + -93/1000` |
| 11 | physical | `{"factor":90,"stage":465}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 12 | coordinate | `{"box":1190,"direction":"hi","value":"286557/1000000","variable":"b"}` | `286557/1000000 + -1 * b` |
| 13 | coordinate | `{"box":1190,"direction":"hi","value":"8033/8963","variable":"j"}` | `8033/8963 + -1 * j` |
| 14 | coordinate | `{"box":1190,"direction":"hi","value":"598907/1000000","variable":"k"}` | `598907/1000000 + -1 * k` |
| 15 | coordinate | `{"box":1190,"direction":"hi","value":"403449/500000","variable":"c"}` | `403449/500000 + -1 * c` |
| 16 | coordinate | `{"box":1190,"direction":"hi","value":"50863/125000","variable":"e"}` | `50863/125000 + -1 * e` |
| 17 | coordinate | `{"box":1190,"direction":"hi","value":"24123/25000","variable":"h"}` | `24123/25000 + -1 * h` |
| 18 | coordinate | `{"box":1190,"direction":"hi","value":"501223/1000000","variable":"p"}` | `501223/1000000 + -1 * p` |
| 19 | coordinate | `{"box":1190,"direction":"hi","value":"552491/1000000","variable":"q"}` | `552491/1000000 + -1 * q` |
| 20 | coordinate | `{"box":1190,"direction":"hi","value":"85763/125000","variable":"u"}` | `85763/125000 + -1 * u` |
| 21 | coordinate | `{"box":1190,"direction":"hi","value":"29777/50000","variable":"v"}` | `29777/50000 + -1 * v` |
| 22 | coordinate | `{"box":1190,"direction":"lo","value":"27769/250000","variable":"a"}` | `-27769/250000 + 1 * a` |
| 23 | coordinate | `{"box":1190,"direction":"lo","value":"108627/1000000","variable":"b"}` | `-108627/1000000 + 1 * b` |
| 24 | coordinate | `{"box":1190,"direction":"lo","value":"80189/100000","variable":"j"}` | `-80189/100000 + 1 * j` |
| 25 | coordinate | `{"box":1190,"direction":"lo","value":"319273/1000000","variable":"k"}` | `-319273/1000000 + 1 * k` |
| 26 | coordinate | `{"box":1190,"direction":"lo","value":"140427/250000","variable":"c"}` | `-140427/250000 + 1 * c` |
| 27 | coordinate | `{"box":1190,"direction":"lo","value":"27793/250000","variable":"e"}` | `-27793/250000 + 1 * e` |
| 28 | coordinate | `{"box":1190,"direction":"lo","value":"27793/250000","variable":"f"}` | `-27793/250000 + 1 * f` |
| 29 | coordinate | `{"box":1190,"direction":"lo","value":"694321/1000000","variable":"h"}` | `-694321/1000000 + 1 * h` |
| 30 | coordinate | `{"box":1190,"direction":"lo","value":"34433/125000","variable":"p"}` | `-34433/125000 + 1 * p` |
| 31 | coordinate | `{"box":1190,"direction":"lo","value":"203317/1000000","variable":"q"}` | `-203317/1000000 + 1 * q` |
| 32 | coordinate | `{"box":1190,"direction":"lo","value":"133037/500000","variable":"u"}` | `-133037/500000 + 1 * u` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 162293041000000 | 7 |
| 1 | 75513275000000 | 2 |
| 2 | 290535645000000 | 0 |
| 3 | 367850483000000 | 8 |
| 4 | 95948915000000 | 9 |
| 5 | 134498778000000 | 1 |
| 6 | 220265725000000 | 10 |
| 7 | 283472801000000 | 11 |
| 8 | 134498778000000 | 3 |
| 9 | 630251271000000 | 4 |
| 10 | 756055939000000 | 5 |
| 11 | 12019383000000 | 6 |
| 12 | 237806316000000 | 22, 23 |
| 13 | 162293041000000 | 17, 23 |
| 14 | 56870235000000 | 19, 23 |
| 15 | 75513275000000 | 18, 22 |
| 16 | 367850483000000 | 12, 21 |
| 17 | 95948915000000 | 14, 23 |
| 18 | 134498778000000 | 15, 27 |
| 19 | 38343714000000 | 17, 26 |
| 20 | 245129087000000 | 15, 29 |
| 21 | 7062844000000 | 15, 31 |
| 22 | 220265725000000 | 21, 26 |
| 23 | 134498778000000 | 13, 16 |
| 24 | 409985546000000 | 21, 28 |
| 25 | 764750049000000 | 25, 28 |
| 26 | 283472801000000 | 29, 30 |
| 27 | 756055939000000 | 20, 29 |
| 28 | 756055939000000 | 13, 17 |
| 29 | 367850483000000 | 21, 30 |
| 30 | 367850483000000 | 31, 32 |
| 31 | 125804668000000 | 25, 32 |
| 32 | 95948915000000 | 25, 30 |
| 33 | 95948915000000 | 13, 31 |
| 34 | 2579452807 | 22 |
| 35 | 995574188 | 23 |
| 36 | 8963000000 | 12, 31 |
| 37 | 3137865633 | 12 |
| 38 | 2568410391 | 19 |
| 39 | 2069404329 | 26 |
| 40 | 3679203944 | 20 |
| 41 | 1194812715 | 25 |
| 42 | 3492872137 | 24 |
| 43 | 125804668000000 | 21, 24 |
| 44 | 266104872792813 | 21 |
| 45 | 74921711980720 | 13 |
| 46 | 2979970644 | 16 |
| 47 | 350427337 | 17 |
| 48 | 5546698485 | 31 |
| 49 | 2372577804 | 18 |
| 50 | 1250329537 | 28 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -31295849650616196929/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -31295849650616196929/1000000 | 1 | -31295849650616196929/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1190 | -31295849650616196929/1000000 |

## Stage 1191

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ-/BPS-/HQS-/BPR+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ-/BPS-/HQS-/BPR+:LHLLHH |
| Index | 0 |
| Context | 251 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1189 |
| Coordinate cut | v high 29777/50000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 27769/250000 | 6143/20000 | 27769/250000 | 6143/20000 |
| b | 108627/1000000 | 286557/1000000 | 108627/1000000 | 286557/1000000 |
| c | 140427/250000 | 403449/500000 | 140427/250000 | 403449/500000 |
| e | 27793/250000 | 50863/125000 | 27793/250000 | 50863/125000 |
| f | 27793/250000 | 50863/125000 | 27793/250000 | 50863/125000 |
| h | 694321/1000000 | 24123/25000 | 694321/1000000 | 24123/25000 |
| p | 34433/125000 | 501223/1000000 | 34433/125000 | 501223/1000000 |
| q | 203317/1000000 | 552491/1000000 | 203317/1000000 | 552491/1000000 |
| u | 133037/500000 | 85763/125000 | 133037/500000 | 85763/125000 |
| v | 29777/50000 | 22289/25000 | 29777/50000 | 22289/25000 |
| r | 629737/1000000 | 1 | 629737/1000000 | 1 |
| w | 411289/500000 | 1 | 411289/500000 | 1 |
| j | 80189/100000 | 8033/8963 | 80189/100000 | 8033/8963 |
| k | 319273/1000000 | 598907/1000000 | 319273/1000000 | 598907/1000000 |

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


## Stage 1192

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ-/BPS-/HQS-/BPR+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ-/BPS-/HQS-/BPR+:LHLLHHL |
| Index | 0 |
| Context | 251 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1191 |
| Coordinate cut | u low 549909/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 27769/250000 | 6143/20000 | 27769/250000 | 6143/20000 |
| b | 108627/1000000 | 286557/1000000 | 108627/1000000 | 286557/1000000 |
| c | 140427/250000 | 403449/500000 | 140427/250000 | 403449/500000 |
| e | 27793/250000 | 50863/125000 | 27793/250000 | 50863/125000 |
| f | 27793/250000 | 50863/125000 | 27793/250000 | 50863/125000 |
| h | 694321/1000000 | 24123/25000 | 694321/1000000 | 24123/25000 |
| p | 34433/125000 | 501223/1000000 | 34433/125000 | 501223/1000000 |
| q | 203317/1000000 | 552491/1000000 | 203317/1000000 | 552491/1000000 |
| u | 133037/500000 | 549909/1000000 | 133037/500000 | 549909/1000000 |
| v | 29777/50000 | 22289/25000 | 29777/50000 | 22289/25000 |
| r | 629737/1000000 | 1 | 629737/1000000 | 1 |
| w | 411289/500000 | 1 | 411289/500000 | 1 |
| j | 80189/100000 | 8033/8963 | 80189/100000 | 8033/8963 |
| k | 319273/1000000 | 598907/1000000 | 319273/1000000 | 598907/1000000 |

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


## Stage 1193

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ-/BPS-/HQS-/BPR+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ-/BPS-/HQS-/BPR+:LHLLHHLL |
| Index | 0 |
| Context | 251 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1192 |
| Coordinate cut | r low 775959/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 27769/250000 | 6143/20000 | 27769/250000 | 6143/20000 |
| b | 108627/1000000 | 286557/1000000 | 108627/1000000 | 286557/1000000 |
| c | 140427/250000 | 403449/500000 | 140427/250000 | 403449/500000 |
| e | 27793/250000 | 50863/125000 | 27793/250000 | 50863/125000 |
| f | 27793/250000 | 50863/125000 | 27793/250000 | 50863/125000 |
| h | 694321/1000000 | 24123/25000 | 694321/1000000 | 24123/25000 |
| p | 34433/125000 | 501223/1000000 | 34433/125000 | 501223/1000000 |
| q | 203317/1000000 | 552491/1000000 | 203317/1000000 | 552491/1000000 |
| u | 133037/500000 | 549909/1000000 | 133037/500000 | 549909/1000000 |
| v | 29777/50000 | 22289/25000 | 29777/50000 | 22289/25000 |
| r | 629737/1000000 | 775959/1000000 | 629737/1000000 | 775959/1000000 |
| w | 411289/500000 | 1 | 411289/500000 | 1 |
| j | 80189/100000 | 8033/8963 | 80189/100000 | 8033/8963 |
| k | 319273/1000000 | 598907/1000000 | 319273/1000000 | 598907/1000000 |

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
| 0 | bound | `{"direction":"lo","ref":"465:3165","triangle":"EFR","value":"224857/500000"}` | `-1 * f * w + 1 * e * f + 1 * w + 1 * r + -724857/500000 + -1 * e * r` |
| 1 | physical | `{"factor":10,"stage":465}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 2 | physical | `{"factor":102,"stage":465}` | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 3 | physical | `{"factor":114,"stage":465}` | `-1/1 * u * k + 1/1 * e * u + 1/1 * k + 1/1 * v * j + -1/1 * v + -1/1 * e * j + -93/1000` |
| 4 | physical | `{"factor":115,"stage":465}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 5 | physical | `{"factor":119,"stage":465}` | `-1/1 * f * k + -1/1 * h * j + 1/1 * f * h + 1/1 * j + -279/1000` |
| 6 | physical | `{"factor":124,"stage":465}` | `1/1 * u * k + -1/1 * u + -1/1 * f * k + -1/1 * v * j + 1/1 * f * v + 1/1 * j + -93/1000` |
| 7 | physical | `{"factor":129,"stage":465}` | `-1/1 * u * k + 1/1 * h * u + 1/1 * v * j + -1/1 * h * j + -93/1000` |
| 8 | physical | `{"factor":141,"stage":465}` | `1/1 * c * h + -135501/250000` |
| 9 | physical | `{"factor":67,"stage":465}` | `-1/1 * f * k + 1/1 * b * k + 1/1 * j + -1/1 * b + -13857/20000` |
| 10 | physical | `{"factor":7,"stage":465}` | `1/1 * b * h + -1/1 * a * b + -93/1000` |
| 11 | physical | `{"factor":73,"stage":465}` | `1/1 * p * w + -1/1 * b * w + -1/1 * q * r + 1/1 * b * q + -93/1000` |
| 12 | physical | `{"factor":87,"stage":465}` | `-1/1 * f * v + 1/1 * c * v + 1/1 * u + -1/1 * c + -93/1000` |
| 13 | physical | `{"factor":90,"stage":465}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 14 | coordinate | `{"box":1193,"direction":"hi","value":"286557/1000000","variable":"b"}` | `286557/1000000 + -1 * b` |
| 15 | coordinate | `{"box":1193,"direction":"hi","value":"775959/1000000","variable":"r"}` | `775959/1000000 + -1 * r` |
| 16 | coordinate | `{"box":1193,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 17 | coordinate | `{"box":1193,"direction":"hi","value":"8033/8963","variable":"j"}` | `8033/8963 + -1 * j` |
| 18 | coordinate | `{"box":1193,"direction":"hi","value":"598907/1000000","variable":"k"}` | `598907/1000000 + -1 * k` |
| 19 | coordinate | `{"box":1193,"direction":"hi","value":"403449/500000","variable":"c"}` | `403449/500000 + -1 * c` |
| 20 | coordinate | `{"box":1193,"direction":"hi","value":"50863/125000","variable":"e"}` | `50863/125000 + -1 * e` |
| 21 | coordinate | `{"box":1193,"direction":"hi","value":"50863/125000","variable":"f"}` | `50863/125000 + -1 * f` |
| 22 | coordinate | `{"box":1193,"direction":"hi","value":"24123/25000","variable":"h"}` | `24123/25000 + -1 * h` |
| 23 | coordinate | `{"box":1193,"direction":"hi","value":"501223/1000000","variable":"p"}` | `501223/1000000 + -1 * p` |
| 24 | coordinate | `{"box":1193,"direction":"hi","value":"552491/1000000","variable":"q"}` | `552491/1000000 + -1 * q` |
| 25 | coordinate | `{"box":1193,"direction":"hi","value":"549909/1000000","variable":"u"}` | `549909/1000000 + -1 * u` |
| 26 | coordinate | `{"box":1193,"direction":"hi","value":"22289/25000","variable":"v"}` | `22289/25000 + -1 * v` |
| 27 | coordinate | `{"box":1193,"direction":"lo","value":"27769/250000","variable":"a"}` | `-27769/250000 + 1 * a` |
| 28 | coordinate | `{"box":1193,"direction":"lo","value":"108627/1000000","variable":"b"}` | `-108627/1000000 + 1 * b` |
| 29 | coordinate | `{"box":1193,"direction":"lo","value":"629737/1000000","variable":"r"}` | `-629737/1000000 + 1 * r` |
| 30 | coordinate | `{"box":1193,"direction":"lo","value":"80189/100000","variable":"j"}` | `-80189/100000 + 1 * j` |
| 31 | coordinate | `{"box":1193,"direction":"lo","value":"319273/1000000","variable":"k"}` | `-319273/1000000 + 1 * k` |
| 32 | coordinate | `{"box":1193,"direction":"lo","value":"140427/250000","variable":"c"}` | `-140427/250000 + 1 * c` |
| 33 | coordinate | `{"box":1193,"direction":"lo","value":"27793/250000","variable":"e"}` | `-27793/250000 + 1 * e` |
| 34 | coordinate | `{"box":1193,"direction":"lo","value":"27793/250000","variable":"f"}` | `-27793/250000 + 1 * f` |
| 35 | coordinate | `{"box":1193,"direction":"lo","value":"694321/1000000","variable":"h"}` | `-694321/1000000 + 1 * h` |
| 36 | coordinate | `{"box":1193,"direction":"lo","value":"34433/125000","variable":"p"}` | `-34433/125000 + 1 * p` |
| 37 | coordinate | `{"box":1193,"direction":"lo","value":"203317/1000000","variable":"q"}` | `-203317/1000000 + 1 * q` |
| 38 | coordinate | `{"box":1193,"direction":"lo","value":"29777/50000","variable":"v"}` | `-29777/50000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 93591646000000 | 10 |
| 1 | 25894107000000 | 1 |
| 2 | 227319606000000 | 9 |
| 3 | 367483000000 | 11 |
| 4 | 385749594000000 | 12 |
| 5 | 4669723000000 | 13 |
| 6 | 121045315000000 | 2 |
| 7 | 84700350000000 | 0 |
| 8 | 216115856000000 | 3 |
| 9 | 628628968000000 | 4 |
| 10 | 174240720000000 | 5 |
| 11 | 497688501000000 | 6 |
| 12 | 281572645000000 | 7 |
| 13 | 221412989000000 | 8 |
| 14 | 119485753000000 | 27, 28 |
| 15 | 93591646000000 | 22, 28 |
| 16 | 26261590000000 | 24, 28 |
| 17 | 25894107000000 | 23, 27 |
| 18 | 367483000000 | 14, 16 |
| 19 | 227319606000000 | 18, 28 |
| 20 | 226082712000000 | 19, 35 |
| 21 | 4669723000000 | 32, 37 |
| 22 | 385749594000000 | 19, 38 |
| 23 | 36344965000000 | 33, 34 |
| 24 | 337161171000000 | 25, 33 |
| 25 | 16662217000000 | 29, 33 |
| 26 | 696676064000000 | 15, 20 |
| 27 | 412513112000000 | 17, 33 |
| 28 | 174240720000000 | 22, 34 |
| 29 | 232984222000000 | 26, 34 |
| 30 | 84700350000000 | 16, 21 |
| 31 | 899248827000000 | 31, 34 |
| 32 | 4669723000000 | 35, 36 |
| 33 | 281572645000000 | 25, 35 |
| 34 | 455813365000000 | 30, 35 |
| 35 | 367483000000 | 16, 36 |
| 36 | 367483000000 | 29, 37 |
| 37 | 628628968000000 | 15, 31 |
| 38 | 628628968000000 | 16, 17 |
| 39 | 1024712901 | 30 |
| 40 | 1957949424 | 14 |
| 41 | 460151457 | 25 |
| 42 | 1963381002 | 32 |
| 43 | 6223199123 | 19 |
| 44 | 7232226774 | 22 |
| 45 | 726827596 | 26 |
| 46 | 115457842294681 | 16 |
| 47 | 2758175027 | 29 |
| 48 | 8963000000 | 20, 29 |
| 49 | 5644332731 | 20 |
| 50 | 3647080552 | 15 |
| 51 | 1050373970 | 31 |
| 52 | 656898270 | 27 |
| 53 | 3463222533 | 35 |
| 54 | 1720671925 | 37 |
| 55 | 1410086049 | 23 |
| 56 | 6664557846 | 33 |
| 57 | 1005316969 | 21 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -20459816629307765847/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -20459816629307765847/1000000 | 1 | -20459816629307765847/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1193 | -20459816629307765847/1000000 |

## Stage 1194

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ-/BPS-/HQS-/BPR+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ-/EHQ-/BPS-/HQS-/BPR+:LHLLHHLH |
| Index | 0 |
| Context | 251 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1192 |
| Coordinate cut | r high 775959/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 27769/250000 | 6143/20000 | 27769/250000 | 6143/20000 |
| b | 108627/1000000 | 286557/1000000 | 108627/1000000 | 286557/1000000 |
| c | 140427/250000 | 403449/500000 | 140427/250000 | 403449/500000 |
| e | 27793/250000 | 50863/125000 | 27793/250000 | 50863/125000 |
| f | 27793/250000 | 50863/125000 | 27793/250000 | 50863/125000 |
| h | 694321/1000000 | 24123/25000 | 694321/1000000 | 24123/25000 |
| p | 34433/125000 | 501223/1000000 | 34433/125000 | 501223/1000000 |
| q | 203317/1000000 | 552491/1000000 | 203317/1000000 | 552491/1000000 |
| u | 133037/500000 | 549909/1000000 | 133037/500000 | 549909/1000000 |
| v | 29777/50000 | 22289/25000 | 29777/50000 | 22289/25000 |
| r | 775959/1000000 | 1 | 775959/1000000 | 1 |
| w | 411289/500000 | 1 | 411289/500000 | 1 |
| j | 80189/100000 | 8033/8963 | 80189/100000 | 8033/8963 |
| k | 319273/1000000 | 598907/1000000 | 319273/1000000 | 598907/1000000 |

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
| 0 | physical | `{"factor":10,"stage":465}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 1 | physical | `{"factor":102,"stage":465}` | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 2 | physical | `{"factor":114,"stage":465}` | `-1/1 * u * k + 1/1 * e * u + 1/1 * k + 1/1 * v * j + -1/1 * v + -1/1 * e * j + -93/1000` |
| 3 | physical | `{"factor":115,"stage":465}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 4 | physical | `{"factor":119,"stage":465}` | `-1/1 * f * k + -1/1 * h * j + 1/1 * f * h + 1/1 * j + -279/1000` |
| 5 | physical | `{"factor":124,"stage":465}` | `1/1 * u * k + -1/1 * u + -1/1 * f * k + -1/1 * v * j + 1/1 * f * v + 1/1 * j + -93/1000` |
| 6 | physical | `{"factor":129,"stage":465}` | `-1/1 * u * k + 1/1 * h * u + 1/1 * v * j + -1/1 * h * j + -93/1000` |
| 7 | physical | `{"factor":26,"stage":465}` | `1/1 * q + -1/1 * a + -1/1 * e * p + 1/1 * a * p + -93/1000` |
| 8 | physical | `{"factor":7,"stage":465}` | `1/1 * b * h + -1/1 * a * b + -93/1000` |
| 9 | physical | `{"factor":73,"stage":465}` | `1/1 * p * w + -1/1 * b * w + -1/1 * q * r + 1/1 * b * q + -93/1000` |
| 10 | physical | `{"factor":74,"stage":465}` | `-1/1 * p * k + 1/1 * b * k + 1/1 * q * j + -1/1 * b * q + -93/1000` |
| 11 | physical | `{"factor":87,"stage":465}` | `-1/1 * f * v + 1/1 * c * v + 1/1 * u + -1/1 * c + -93/1000` |
| 12 | physical | `{"factor":90,"stage":465}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 13 | coordinate | `{"box":1194,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 14 | coordinate | `{"box":1194,"direction":"hi","value":"286557/1000000","variable":"b"}` | `286557/1000000 + -1 * b` |
| 15 | coordinate | `{"box":1194,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 16 | coordinate | `{"box":1194,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 17 | coordinate | `{"box":1194,"direction":"hi","value":"8033/8963","variable":"j"}` | `8033/8963 + -1 * j` |
| 18 | coordinate | `{"box":1194,"direction":"hi","value":"598907/1000000","variable":"k"}` | `598907/1000000 + -1 * k` |
| 19 | coordinate | `{"box":1194,"direction":"hi","value":"403449/500000","variable":"c"}` | `403449/500000 + -1 * c` |
| 20 | coordinate | `{"box":1194,"direction":"hi","value":"50863/125000","variable":"f"}` | `50863/125000 + -1 * f` |
| 21 | coordinate | `{"box":1194,"direction":"hi","value":"24123/25000","variable":"h"}` | `24123/25000 + -1 * h` |
| 22 | coordinate | `{"box":1194,"direction":"hi","value":"501223/1000000","variable":"p"}` | `501223/1000000 + -1 * p` |
| 23 | coordinate | `{"box":1194,"direction":"hi","value":"552491/1000000","variable":"q"}` | `552491/1000000 + -1 * q` |
| 24 | coordinate | `{"box":1194,"direction":"hi","value":"549909/1000000","variable":"u"}` | `549909/1000000 + -1 * u` |
| 25 | coordinate | `{"box":1194,"direction":"hi","value":"22289/25000","variable":"v"}` | `22289/25000 + -1 * v` |
| 26 | coordinate | `{"box":1194,"direction":"lo","value":"27769/250000","variable":"a"}` | `-27769/250000 + 1 * a` |
| 27 | coordinate | `{"box":1194,"direction":"lo","value":"108627/1000000","variable":"b"}` | `-108627/1000000 + 1 * b` |
| 28 | coordinate | `{"box":1194,"direction":"lo","value":"775959/1000000","variable":"r"}` | `-775959/1000000 + 1 * r` |
| 29 | coordinate | `{"box":1194,"direction":"lo","value":"80189/100000","variable":"j"}` | `-80189/100000 + 1 * j` |
| 30 | coordinate | `{"box":1194,"direction":"lo","value":"319273/1000000","variable":"k"}` | `-319273/1000000 + 1 * k` |
| 31 | coordinate | `{"box":1194,"direction":"lo","value":"140427/250000","variable":"c"}` | `-140427/250000 + 1 * c` |
| 32 | coordinate | `{"box":1194,"direction":"lo","value":"27793/250000","variable":"e"}` | `-27793/250000 + 1 * e` |
| 33 | coordinate | `{"box":1194,"direction":"lo","value":"27793/250000","variable":"f"}` | `-27793/250000 + 1 * f` |
| 34 | coordinate | `{"box":1194,"direction":"lo","value":"694321/1000000","variable":"h"}` | `-694321/1000000 + 1 * h` |
| 35 | coordinate | `{"box":1194,"direction":"lo","value":"34433/125000","variable":"p"}` | `-34433/125000 + 1 * p` |
| 36 | coordinate | `{"box":1194,"direction":"lo","value":"203317/1000000","variable":"q"}` | `-203317/1000000 + 1 * q` |
| 37 | coordinate | `{"box":1194,"direction":"lo","value":"133037/500000","variable":"u"}` | `-133037/500000 + 1 * u` |
| 38 | coordinate | `{"box":1194,"direction":"lo","value":"29777/50000","variable":"v"}` | `-29777/50000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 158214876000000 | 8 |
| 1 | 64524637000000 | 0 |
| 2 | 16330586000000 | 7 |
| 3 | 415273716000000 | 9 |
| 4 | 479798353000000 | 10 |
| 5 | 268217775000000 | 11 |
| 6 | 220946913000000 | 12 |
| 7 | 74518382000000 | 1 |
| 8 | 186887513000000 | 2 |
| 9 | 303693329000000 | 3 |
| 10 | 61315883000000 | 4 |
| 11 | 304249035000000 | 5 |
| 12 | 117361522000000 | 6 |
| 13 | 222739513000000 | 26, 27 |
| 14 | 158214876000000 | 21, 27 |
| 15 | 80855223000000 | 22, 26 |
| 16 | 415273716000000 | 14, 16 |
| 17 | 479798353000000 | 18, 27 |
| 18 | 220946913000000 | 19, 34 |
| 19 | 220946913000000 | 31, 36 |
| 20 | 268217775000000 | 19, 38 |
| 21 | 74518382000000 | 32, 33 |
| 22 | 16330586000000 | 32, 35 |
| 23 | 261405895000000 | 24, 32 |
| 24 | 303693329000000 | 28, 32 |
| 25 | 116805816000000 | 17, 32 |
| 26 | 61315883000000 | 21, 33 |
| 27 | 110549642000000 | 20, 38 |
| 28 | 365564918000000 | 30, 33 |
| 29 | 17979778000000 | 34, 35 |
| 30 | 202967135000000 | 21, 22 |
| 31 | 117361522000000 | 24, 34 |
| 32 | 178677405000000 | 17, 21 |
| 33 | 415273716000000 | 16, 35 |
| 34 | 415273716000000 | 28, 36 |
| 35 | 75934536000000 | 18, 28 |
| 36 | 227758793000000 | 15, 30 |
| 37 | 303693329000000 | 16, 17 |
| 38 | 261925749000000 | 30, 35 |
| 39 | 217872604000000 | 18, 22 |
| 40 | 479798353000000 | 17, 36 |
| 41 | 973623801 | 26 |
| 42 | 995574188 | 27 |
| 43 | 2082998952 | 23 |
| 44 | 1359982879 | 13 |
| 45 | 2056524498 | 37 |
| 46 | 2456794152 | 19 |
| 47 | 2468983832 | 34 |
| 48 | 6223199123 | 35 |
| 49 | 1582740318 | 25 |
| 50 | 338469769 | 30 |
| 51 | 26904558668412 | 16 |
| 52 | 1114719347 | 29 |
| 53 | 5555778291 | 14 |
| 54 | 2832198235 | 21 |
| 55 | 3477393036 | 22 |
| 56 | 907669564 | 32 |
| 57 | 2289992722 | 20 |
| 58 | 557382081 | 15 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -9233056712800335631/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -9233056712800335631/1000000 | 1 | -9233056712800335631/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1194 | -9233056712800335631/1000000 |
