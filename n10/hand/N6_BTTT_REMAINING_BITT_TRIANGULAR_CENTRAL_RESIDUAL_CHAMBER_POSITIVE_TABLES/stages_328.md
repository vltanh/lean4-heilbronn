# BITT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 1640

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ-/EHQ+/BRS-/CFQ+/QRS-/APS+/APQ- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ-/EHQ+/BRS-/CFQ+/QRS-/APS+/APQ-:LLHHLH |
| Index | 0 |
| Context | 331 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1636 |
| Coordinate cut | v high 405907/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 46233/125000 | 103767/1000000 | 46233/125000 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 796617/1000000 | 1 | 796617/1000000 | 1 |
| e | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| f | 103767/1000000 | 344349/500000 | 103767/1000000 | 344349/500000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 196767/1000000 | 632499/1000000 | 196767/1000000 | 632499/1000000 |
| q | 196767/1000000 | 590237/1000000 | 196767/1000000 | 590237/1000000 |
| u | 382767/1000000 | 765141/1000000 | 382767/1000000 | 765141/1000000 |
| v | 405907/1000000 | 541027/1000000 | 405907/1000000 | 541027/1000000 |
| r | 28351/40000 | 1 | 28351/40000 | 1 |
| w | 796617/1000000 | 1 | 796617/1000000 | 1 |
| j | 674227/1000000 | 896233/1000000 | 674227/1000000 | 896233/1000000 |
| k | 703617/1000000 | 896233/1000000 | 703617/1000000 | 896233/1000000 |

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
| 0 | bound | `{"direction":"lo","ref":"545:1624","triangle":"ARS","value":"87037/500000"}` | `-1 * r * k + 1 * a * r + 1 * w * j + -1 * a * j + -87037/500000` |
| 1 | physical | `{"factor":109,"stage":545}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 2 | physical | `{"factor":129,"stage":545}` | `-1/1 * r * k + 1/1 * v * r + 1/1 * u * k + 1/1 * w * j + -1/1 * u * w + -1/1 * v * j + -93/1000` |
| 3 | physical | `{"factor":44,"stage":545}` | `1/1 * u * k + -1/1 * a * u + -1/1 * v * j + 1/1 * a * j + -279/1000` |
| 4 | coordinate | `{"box":1640,"direction":"hi","value":"46233/125000","variable":"a"}` | `46233/125000 + -1 * a` |
| 5 | coordinate | `{"box":1640,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 6 | coordinate | `{"box":1640,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 7 | coordinate | `{"box":1640,"direction":"hi","value":"896233/1000000","variable":"j"}` | `896233/1000000 + -1 * j` |
| 8 | coordinate | `{"box":1640,"direction":"hi","value":"59/125","variable":"e"}` | `59/125 + -1 * e` |
| 9 | coordinate | `{"box":1640,"direction":"hi","value":"765141/1000000","variable":"u"}` | `765141/1000000 + -1 * u` |
| 10 | coordinate | `{"box":1640,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 11 | coordinate | `{"box":1640,"direction":"lo","value":"28351/40000","variable":"r"}` | `-28351/40000 + 1 * r` |
| 12 | coordinate | `{"box":1640,"direction":"lo","value":"674227/1000000","variable":"j"}` | `-674227/1000000 + 1 * j` |
| 13 | coordinate | `{"box":1640,"direction":"lo","value":"703617/1000000","variable":"k"}` | `-703617/1000000 + 1 * k` |
| 14 | coordinate | `{"box":1640,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 15 | coordinate | `{"box":1640,"direction":"lo","value":"405907/1000000","variable":"v"}` | `-405907/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 62104000000 | 3 |
| 1 | 41047000000 | 0 |
| 2 | 76804000000 | 1 |
| 3 | 69934000000 | 2 |
| 4 | 62104000000 | 4, 9 |
| 5 | 41047000000 | 4, 11 |
| 6 | 19045000000 | 7, 10 |
| 7 | 2012000000 | 4, 12 |
| 8 | 45435000000 | 11, 14 |
| 9 | 31369000000 | 5, 8 |
| 10 | 53102000000 | 7, 14 |
| 11 | 23702000000 | 8, 12 |
| 12 | 69934000000 | 6, 9 |
| 13 | 69934000000 | 5, 15 |
| 14 | 132038000000 | 9, 13 |
| 15 | 132038000000 | 12, 15 |
| 16 | 34177000000 | 11, 13 |
| 17 | 34177000000 | 6, 12 |
| 18 | 708775 | 14 |
| 19 | 103767 | 11 |
| 20 | 115817 | 13 |
| 21 | 46337685485 | 6 |
| 22 | 72970 | 4 |
| 23 | 147590 | 9 |
| 24 | 271659 | 5 |
| 25 | 160349 | 12 |
| 26 | 809770 | 8 |
| 27 | 19089584626 | 15 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -1029295238955297/200000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -1029295238955297/200000 | 1 | -1029295238955297/200000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1640 | -1029295238955297/200000 |

## Stage 1641

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ-/EHQ+/BRS-/CFQ+/QRS-/APS+/APQ- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ-/EHQ+/BRS-/CFQ+/QRS-/APS+/APQ-:LLHHH |
| Index | 0 |
| Context | 331 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1635 |
| Coordinate cut | a high 46233/125000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 46233/125000 | 59/125 | 46233/125000 | 59/125 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 796617/1000000 | 1 | 796617/1000000 | 1 |
| e | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| f | 103767/1000000 | 344349/500000 | 103767/1000000 | 344349/500000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 196767/1000000 | 632499/1000000 | 196767/1000000 | 632499/1000000 |
| q | 196767/1000000 | 590237/1000000 | 196767/1000000 | 590237/1000000 |
| u | 382767/1000000 | 765141/1000000 | 382767/1000000 | 765141/1000000 |
| v | 162771/1000000 | 541027/1000000 | 162771/1000000 | 541027/1000000 |
| r | 28351/40000 | 1 | 28351/40000 | 1 |
| w | 796617/1000000 | 1 | 796617/1000000 | 1 |
| j | 674227/1000000 | 896233/1000000 | 674227/1000000 | 896233/1000000 |
| k | 703617/1000000 | 896233/1000000 | 703617/1000000 | 896233/1000000 |

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
| 0 | physical | `{"factor":131,"stage":545}` | `1/1 * e + -1/1 * a` |
| 1 | physical | `{"factor":29,"stage":545}` | `1/1 * w + -1/1 * a + -1/1 * e * r + 1/1 * a * r + -13857/20000` |
| 2 | coordinate | `{"box":1641,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 3 | coordinate | `{"box":1641,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 4 | coordinate | `{"box":1641,"direction":"hi","value":"59/125","variable":"e"}` | `59/125 + -1 * e` |
| 5 | coordinate | `{"box":1641,"direction":"lo","value":"46233/125000","variable":"a"}` | `-46233/125000 + 1 * a` |
| 6 | coordinate | `{"box":1641,"direction":"lo","value":"28351/40000","variable":"r"}` | `-28351/40000 + 1 * r` |
| 7 | coordinate | `{"box":1641,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 255153000000 | 1 |
| 1 | 234542000000 | 0 |
| 2 | 255153000000 | 2, 5 |
| 3 | 70772000000 | 6, 7 |
| 4 | 184381000000 | 2, 4 |
| 5 | 255153000000 | 3 |
| 6 | 234542000000 | 5 |
| 7 | 708775 | 7 |
| 8 | 103767 | 6 |
| 9 | 284475 | 4 |
| 10 | 382835 | 2 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -42068020009491/4000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -42068020009491/4000 | 1 | -42068020009491/4000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1641 | -42068020009491/4000 |

## Stage 1642

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ-/EHQ+/BRS-/CFQ+/QRS-/APS+/APQ- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ-/EHQ+/BRS-/CFQ+/QRS-/APS+/APQ-:LH |
| Index | 0 |
| Context | 331 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1620 |
| Coordinate cut | q high 590237/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 796617/1000000 | 1 | 796617/1000000 | 1 |
| e | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| f | 103767/1000000 | 344349/500000 | 103767/1000000 | 344349/500000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 196767/1000000 | 632499/1000000 | 196767/1000000 | 632499/1000000 |
| q | 590237/1000000 | 710233/1000000 | 590237/1000000 | 710233/1000000 |
| u | 382767/1000000 | 765141/1000000 | 382767/1000000 | 765141/1000000 |
| v | 162771/1000000 | 541027/1000000 | 162771/1000000 | 541027/1000000 |
| r | 8351/20000 | 1 | 8351/20000 | 1 |
| w | 796617/1000000 | 1 | 796617/1000000 | 1 |
| j | 508403/1000000 | 896233/1000000 | 508403/1000000 | 896233/1000000 |
| k | 703617/1000000 | 896233/1000000 | 703617/1000000 | 896233/1000000 |

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
| 0 | bound | `{"direction":"lo","ref":"545:1624","triangle":"ARS","value":"87037/500000"}` | `-1 * r * k + 1 * a * r + 1 * w * j + -1 * a * j + -87037/500000` |
| 1 | physical | `{"factor":109,"stage":545}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 2 | physical | `{"factor":112,"stage":545}` | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 3 | physical | `{"factor":131,"stage":545}` | `1/1 * e + -1/1 * a` |
| 4 | physical | `{"factor":135,"stage":545}` | `1/1 * f + -1/1 * e` |
| 5 | physical | `{"factor":142,"stage":545}` | `907/1000 + -1/1 * p + -1/1 * q` |
| 6 | physical | `{"factor":42,"stage":545}` | `1/1 * p * k + -1/1 * a * p + -1/1 * q * j + 1/1 * a * j + -93/1000` |
| 7 | physical | `{"factor":64,"stage":545}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 8 | physical | `{"factor":7,"stage":545}` | `1/1 * b * h + -1/1 * a * b + -93/1000` |
| 9 | physical | `{"factor":86,"stage":545}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 10 | physical | `{"factor":99,"stage":545}` | `-1/1 * f * w + 1/1 * e * f + 1/1 * w + 1/1 * r + -1279/1000 + -1/1 * e * r` |
| 11 | coordinate | `{"box":1642,"direction":"hi","value":"59/125","variable":"a"}` | `59/125 + -1 * a` |
| 12 | coordinate | `{"box":1642,"direction":"hi","value":"6143/20000","variable":"b"}` | `6143/20000 + -1 * b` |
| 13 | coordinate | `{"box":1642,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 14 | coordinate | `{"box":1642,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 15 | coordinate | `{"box":1642,"direction":"hi","value":"896233/1000000","variable":"j"}` | `896233/1000000 + -1 * j` |
| 16 | coordinate | `{"box":1642,"direction":"hi","value":"896233/1000000","variable":"k"}` | `896233/1000000 + -1 * k` |
| 17 | coordinate | `{"box":1642,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 18 | coordinate | `{"box":1642,"direction":"hi","value":"59/125","variable":"e"}` | `59/125 + -1 * e` |
| 19 | coordinate | `{"box":1642,"direction":"hi","value":"344349/500000","variable":"f"}` | `344349/500000 + -1 * f` |
| 20 | coordinate | `{"box":1642,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 21 | coordinate | `{"box":1642,"direction":"hi","value":"632499/1000000","variable":"p"}` | `632499/1000000 + -1 * p` |
| 22 | coordinate | `{"box":1642,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 23 | coordinate | `{"box":1642,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 24 | coordinate | `{"box":1642,"direction":"lo","value":"8351/20000","variable":"r"}` | `-8351/20000 + 1 * r` |
| 25 | coordinate | `{"box":1642,"direction":"lo","value":"796617/1000000","variable":"w"}` | `-796617/1000000 + 1 * w` |
| 26 | coordinate | `{"box":1642,"direction":"lo","value":"508403/1000000","variable":"j"}` | `-508403/1000000 + 1 * j` |
| 27 | coordinate | `{"box":1642,"direction":"lo","value":"703617/1000000","variable":"k"}` | `-703617/1000000 + 1 * k` |
| 28 | coordinate | `{"box":1642,"direction":"lo","value":"796617/1000000","variable":"c"}` | `-796617/1000000 + 1 * c` |
| 29 | coordinate | `{"box":1642,"direction":"lo","value":"103767/1000000","variable":"f"}` | `-103767/1000000 + 1 * f` |
| 30 | coordinate | `{"box":1642,"direction":"lo","value":"135501/250000","variable":"h"}` | `-135501/250000 + 1 * h` |
| 31 | coordinate | `{"box":1642,"direction":"lo","value":"196767/1000000","variable":"p"}` | `-196767/1000000 + 1 * p` |
| 32 | coordinate | `{"box":1642,"direction":"lo","value":"590237/1000000","variable":"q"}` | `-590237/1000000 + 1 * q` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 5182000000 | 8 |
| 1 | 79213000000 | 6 |
| 2 | 25918000000 | 0 |
| 3 | 11334000000 | 7 |
| 4 | 72224000000 | 9 |
| 5 | 7781000000 | 10 |
| 6 | 8180000000 | 1 |
| 7 | 28489000000 | 2 |
| 8 | 21793000000 | 3 |
| 9 | 10798000000 | 4 |
| 10 | 1884000000 | 5 |
| 11 | 5182000000 | 22, 23 |
| 12 | 5182000000 | 20, 23 |
| 13 | 11334000000 | 12, 32 |
| 14 | 79213000000 | 22, 31 |
| 15 | 25918000000 | 11, 24 |
| 16 | 53295000000 | 11, 26 |
| 17 | 7606000000 | 20, 28 |
| 18 | 64618000000 | 17, 30 |
| 19 | 72224000000 | 28, 32 |
| 20 | 7781000000 | 18, 29 |
| 21 | 15961000000 | 13, 18 |
| 22 | 8180000000 | 18, 26 |
| 23 | 28489000000 | 20, 29 |
| 24 | 11334000000 | 29, 32 |
| 25 | 36271000000 | 14, 19 |
| 26 | 72224000000 | 20, 21 |
| 27 | 28489000000 | 13, 20 |
| 28 | 79213000000 | 16, 31 |
| 29 | 79213000000 | 26, 32 |
| 30 | 17739000000 | 24, 27 |
| 31 | 17739000000 | 14, 26 |
| 32 | 1000000 | 13, 27 |
| 33 | 703617 | 13 |
| 34 | 1000000 | 16 |
| 35 | 1000000 | 25, 26 |
| 36 | 712744 | 25 |
| 37 | 796617 | 26 |
| 38 | 390742 | 31 |
| 39 | 25564 | 12 |
| 40 | 1000000 | 19, 25 |
| 41 | 796617 | 19 |
| 42 | 688698 | 14 |
| 43 | 757963 | 24 |
| 44 | 415079 | 27 |
| 45 | 147567 | 18 |
| 46 | 173820 | 11 |
| 47 | 1114158 | 29 |
| 48 | 97385850125 | 32 |
| 49 | 399783 | 20 |
| 50 | 756519 | 15 |
| 51 | 62616 | 28 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -1782851084639481/250000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -1782851084639481/250000 | 1 | -1782851084639481/250000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1642 | -1782851084639481/250000 |

## Stage 1643

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ-/EHQ+/BRS-/CFQ+/QRS-/APS+/APQ- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ-/EHQ+/BRS-/CFQ+/QRS-/APS+/APQ-:H |
| Index | 0 |
| Context | 331 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1619 |
| Coordinate cut | v high 541027/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 796617/1000000 | 1 | 796617/1000000 | 1 |
| e | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| f | 103767/1000000 | 344349/500000 | 103767/1000000 | 344349/500000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 196767/1000000 | 632499/1000000 | 196767/1000000 | 632499/1000000 |
| q | 196767/1000000 | 710233/1000000 | 196767/1000000 | 710233/1000000 |
| u | 382767/1000000 | 765141/1000000 | 382767/1000000 | 765141/1000000 |
| v | 541027/1000000 | 7049/10000 | 541027/1000000 | 7049/10000 |
| r | 8351/20000 | 1 | 8351/20000 | 1 |
| w | 796617/1000000 | 1 | 796617/1000000 | 1 |
| j | 508403/1000000 | 896233/1000000 | 508403/1000000 | 896233/1000000 |
| k | 703617/1000000 | 896233/1000000 | 703617/1000000 | 896233/1000000 |

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
| 0 | bound | `{"direction":"lo","ref":"545:1542","triangle":"FQR","value":"36147/250000"}` | `1 * u * w + -1 * u + -1 * f * w + -1 * v * r + 1 * f * v + 1 * r + -36147/250000` |
| 1 | bound | `{"direction":"lo","ref":"545:1624","triangle":"ARS","value":"87037/500000"}` | `-1 * r * k + 1 * a * r + 1 * w * j + -1 * a * j + -87037/500000` |
| 2 | bound | `{"direction":"lo","ref":"545:399","triangle":"EQR","value":"158609/500000"}` | `-1 * u * w + 1 * e * u + 1 * w + 1 * v * r + -1 * v + -1 * e * r + -158609/500000` |
| 3 | physical | `{"factor":102,"stage":545}` | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -93/1000` |
| 4 | physical | `{"factor":112,"stage":545}` | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 5 | physical | `{"factor":44,"stage":545}` | `1/1 * u * k + -1/1 * a * u + -1/1 * v * j + 1/1 * a * j + -279/1000` |
| 6 | physical | `{"factor":83,"stage":545}` | `1/1 * f * v + -1/1 * c * v + -1/1 * u + 1/1 * c + -93/1000` |
| 7 | coordinate | `{"box":1643,"direction":"hi","value":"59/125","variable":"a"}` | `59/125 + -1 * a` |
| 8 | coordinate | `{"box":1643,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 9 | coordinate | `{"box":1643,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 10 | coordinate | `{"box":1643,"direction":"hi","value":"896233/1000000","variable":"j"}` | `896233/1000000 + -1 * j` |
| 11 | coordinate | `{"box":1643,"direction":"hi","value":"896233/1000000","variable":"k"}` | `896233/1000000 + -1 * k` |
| 12 | coordinate | `{"box":1643,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 13 | coordinate | `{"box":1643,"direction":"hi","value":"59/125","variable":"e"}` | `59/125 + -1 * e` |
| 14 | coordinate | `{"box":1643,"direction":"hi","value":"344349/500000","variable":"f"}` | `344349/500000 + -1 * f` |
| 15 | coordinate | `{"box":1643,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 16 | coordinate | `{"box":1643,"direction":"hi","value":"765141/1000000","variable":"u"}` | `765141/1000000 + -1 * u` |
| 17 | coordinate | `{"box":1643,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 18 | coordinate | `{"box":1643,"direction":"lo","value":"8351/20000","variable":"r"}` | `-8351/20000 + 1 * r` |
| 19 | coordinate | `{"box":1643,"direction":"lo","value":"508403/1000000","variable":"j"}` | `-508403/1000000 + 1 * j` |
| 20 | coordinate | `{"box":1643,"direction":"lo","value":"703617/1000000","variable":"k"}` | `-703617/1000000 + 1 * k` |
| 21 | coordinate | `{"box":1643,"direction":"lo","value":"796617/1000000","variable":"c"}` | `-796617/1000000 + 1 * c` |
| 22 | coordinate | `{"box":1643,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 23 | coordinate | `{"box":1643,"direction":"lo","value":"103767/1000000","variable":"f"}` | `-103767/1000000 + 1 * f` |
| 24 | coordinate | `{"box":1643,"direction":"lo","value":"135501/250000","variable":"h"}` | `-135501/250000 + 1 * h` |
| 25 | coordinate | `{"box":1643,"direction":"lo","value":"382767/1000000","variable":"u"}` | `-382767/1000000 + 1 * u` |
| 26 | coordinate | `{"box":1643,"direction":"lo","value":"541027/1000000","variable":"v"}` | `-541027/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 100306000000 | 5 |
| 1 | 38394000000 | 1 |
| 2 | 23271000000 | 6 |
| 3 | 36779000000 | 3 |
| 4 | 27431000000 | 2 |
| 5 | 9638000000 | 4 |
| 6 | 27431000000 | 0 |
| 7 | 39705000000 | 17, 25 |
| 8 | 60601000000 | 7, 16 |
| 9 | 38394000000 | 7, 18 |
| 10 | 36249000000 | 10, 17 |
| 11 | 25663000000 | 7, 19 |
| 12 | 23271000000 | 21, 26 |
| 13 | 4900000000 | 18, 22 |
| 14 | 22532000000 | 8, 13 |
| 15 | 9638000000 | 15, 23 |
| 16 | 50702000000 | 14, 26 |
| 17 | 37069000000 | 9, 14 |
| 18 | 36779000000 | 15, 16 |
| 19 | 9638000000 | 8, 15 |
| 20 | 100306000000 | 11, 25 |
| 21 | 100306000000 | 19, 26 |
| 22 | 38394000000 | 8, 11 |
| 23 | 38394000000 | 9, 19 |
| 24 | 64210000000 | 13, 25 |
| 25 | 73437 | 25 |
| 26 | 10680760683 | 12 |
| 27 | 98825579529 | 26 |
| 28 | 14493 | 24 |
| 29 | 21421278620 | 9 |
| 30 | 1000000 | 13, 18 |
| 31 | 417550 | 13 |
| 32 | 472000 | 8 |
| 33 | 564102 | 18 |
| 34 | 37430 | 7 |
| 35 | 131721 | 10 |
| 36 | 525930 | 22 |
| 37 | 150954 | 14 |
| 38 | 173298 | 20 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -4026103743497701/500000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -4026103743497701/500000 | 1 | -4026103743497701/500000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1643 | -4026103743497701/500000 |

## Stage 1644

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ-/EHQ+/BRS-/CFQ-/QRS-/APS-/BQS-/PQS+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ-/EHQ+/BRS-/CFQ-/QRS-/APS-/BQS-/PQS+:root |
| Index | 0 |
| Context | 362 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 576 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 106501/1000000 | 208307/500000 | 106501/1000000 | 208307/500000 |
| b | 105961/1000000 | 6143/20000 | 105961/1000000 | 6143/20000 |
| c | 275411/500000 | 48933/50000 | 275411/500000 | 48933/50000 |
| e | 6657/62500 | 416273/1000000 | 6657/62500 | 416273/1000000 |
| f | 6657/62500 | 416273/1000000 | 6657/62500 | 416273/1000000 |
| h | 36693/50000 | 98399/100000 | 36693/50000 | 98399/100000 |
| p | 199033/1000000 | 284009/500000 | 199033/1000000 | 284009/500000 |
| q | 31793/100000 | 137799/200000 | 31793/100000 | 137799/200000 |
| u | 407481/1000000 | 141941/200000 | 407481/1000000 | 141941/200000 |
| v | 21127/100000 | 329993/500000 | 21127/100000 | 329993/500000 |
| r | 466489/1000000 | 1 | 466489/1000000 | 1 |
| w | 2497/3125 | 1 | 2497/3125 | 1 |
| j | 399441/500000 | 8033/8963 | 399441/500000 | 8033/8963 |
| k | 314283/1000000 | 169639/200000 | 314283/1000000 | 169639/200000 |

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
