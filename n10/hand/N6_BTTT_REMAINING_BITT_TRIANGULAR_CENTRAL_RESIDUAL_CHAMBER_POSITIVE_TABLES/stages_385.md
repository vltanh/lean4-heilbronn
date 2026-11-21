# BITT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 1925

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS-/HEQ+/CFQ+/PQR-/AFQ-/BPQ+/HQS- |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS-/HEQ+/CFQ+/PQR-/AFQ-/BPQ+/HQS-:LLL |
| Index | 0 |
| Context | 460 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1924 |
| Coordinate cut | v low 343987/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 111451/1000000 | 50951/250000 | 111451/1000000 | 50951/250000 |
| b | 114279/1000000 | 383811/1000000 | 114279/1000000 | 383811/1000000 |
| c | 182763/250000 | 947217/1000000 | 182763/250000 | 947217/1000000 |
| e | 111491/1000000 | 383811/1000000 | 111491/1000000 | 383811/1000000 |
| f | 114279/1000000 | 383811/1000000 | 114279/1000000 | 383811/1000000 |
| h | 286103/500000 | 229897/250000 | 286103/500000 | 229897/250000 |
| p | 47039/200000 | 129589/250000 | 47039/200000 | 129589/250000 |
| q | 32073/100000 | 298661/500000 | 32073/100000 | 298661/500000 |
| u | 161747/1000000 | 359733/1000000 | 161747/1000000 | 359733/1000000 |
| v | 11171/20000 | 343987/500000 | 11171/20000 | 343987/500000 |
| r | 21091/25000 | 1 | 21091/25000 | 1 |
| w | 611959/1000000 | 1 | 611959/1000000 | 1 |
| j | 407087/500000 | 895331/1000000 | 407087/500000 | 895331/1000000 |
| k | 380249/1000000 | 358001/500000 | 380249/1000000 | 358001/500000 |

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
| 0 | bound | `{"direction":"lo","ref":"720:577","triangle":"APS","value":"97857/1000000"}` | `-1 * p * k + 1 * a * p + 1 * q * j + -1 * a * j + -97857/1000000` |
| 1 | physical | `{"factor":0,"stage":720}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 2 | physical | `{"factor":10,"stage":720}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 3 | physical | `{"factor":114,"stage":720}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 4 | physical | `{"factor":116,"stage":720}` | `-1/1 * f * v + -1/1 * h * u + 1/1 * f * h + 1/1 * u + -93/1000` |
| 5 | physical | `{"factor":127,"stage":720}` | `-1/1 * u * k + 1/1 * h * u + 1/1 * v * j + -1/1 * h * j + -93/1000` |
| 6 | physical | `{"factor":131,"stage":720}` | `-1/1 * r * k + 1/1 * q * r + 1/1 * p * k + 1/1 * w * j + -1/1 * p * w + -1/1 * q * j + -93/1000` |
| 7 | physical | `{"factor":37,"stage":720}` | `-1/1 * f * k + 1/1 * a * f + 1/1 * j + -1/1 * a * j + -13857/20000` |
| 8 | physical | `{"factor":43,"stage":720}` | `-1/1 * p * w + 1/1 * a * p + 1/1 * q * r + -1/1 * a * r + -93/1000` |
| 9 | physical | `{"factor":71,"stage":720}` | `1/1 * p * v + -1/1 * b * v + -1/1 * q * u + 1/1 * b * q + -93/1000` |
| 10 | physical | `{"factor":81,"stage":720}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 11 | physical | `{"factor":82,"stage":720}` | `1/1 * k + -1/1 * c * k + -1/1 * e * j + 1/1 * c * e + -93/1000` |
| 12 | physical | `{"factor":85,"stage":720}` | `1/1 * f * v + -1/1 * c * v + -1/1 * u + 1/1 * c + -93/1000` |
| 13 | physical | `{"factor":88,"stage":720}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 14 | coordinate | `{"box":1925,"direction":"hi","value":"50951/250000","variable":"a"}` | `50951/250000 + -1 * a` |
| 15 | coordinate | `{"box":1925,"direction":"hi","value":"383811/1000000","variable":"b"}` | `383811/1000000 + -1 * b` |
| 16 | coordinate | `{"box":1925,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 17 | coordinate | `{"box":1925,"direction":"hi","value":"358001/500000","variable":"k"}` | `358001/500000 + -1 * k` |
| 18 | coordinate | `{"box":1925,"direction":"hi","value":"947217/1000000","variable":"c"}` | `947217/1000000 + -1 * c` |
| 19 | coordinate | `{"box":1925,"direction":"hi","value":"383811/1000000","variable":"e"}` | `383811/1000000 + -1 * e` |
| 20 | coordinate | `{"box":1925,"direction":"hi","value":"383811/1000000","variable":"f"}` | `383811/1000000 + -1 * f` |
| 21 | coordinate | `{"box":1925,"direction":"hi","value":"229897/250000","variable":"h"}` | `229897/250000 + -1 * h` |
| 22 | coordinate | `{"box":1925,"direction":"hi","value":"129589/250000","variable":"p"}` | `129589/250000 + -1 * p` |
| 23 | coordinate | `{"box":1925,"direction":"hi","value":"298661/500000","variable":"q"}` | `298661/500000 + -1 * q` |
| 24 | coordinate | `{"box":1925,"direction":"hi","value":"359733/1000000","variable":"u"}` | `359733/1000000 + -1 * u` |
| 25 | coordinate | `{"box":1925,"direction":"hi","value":"343987/500000","variable":"v"}` | `343987/500000 + -1 * v` |
| 26 | coordinate | `{"box":1925,"direction":"lo","value":"111451/1000000","variable":"a"}` | `-111451/1000000 + 1 * a` |
| 27 | coordinate | `{"box":1925,"direction":"lo","value":"114279/1000000","variable":"b"}` | `-114279/1000000 + 1 * b` |
| 28 | coordinate | `{"box":1925,"direction":"lo","value":"21091/25000","variable":"r"}` | `-21091/25000 + 1 * r` |
| 29 | coordinate | `{"box":1925,"direction":"lo","value":"611959/1000000","variable":"w"}` | `-611959/1000000 + 1 * w` |
| 30 | coordinate | `{"box":1925,"direction":"lo","value":"407087/500000","variable":"j"}` | `-407087/500000 + 1 * j` |
| 31 | coordinate | `{"box":1925,"direction":"lo","value":"380249/1000000","variable":"k"}` | `-380249/1000000 + 1 * k` |
| 32 | coordinate | `{"box":1925,"direction":"lo","value":"182763/250000","variable":"c"}` | `-182763/250000 + 1 * c` |
| 33 | coordinate | `{"box":1925,"direction":"lo","value":"111491/1000000","variable":"e"}` | `-111491/1000000 + 1 * e` |
| 34 | coordinate | `{"box":1925,"direction":"lo","value":"114279/1000000","variable":"f"}` | `-114279/1000000 + 1 * f` |
| 35 | coordinate | `{"box":1925,"direction":"lo","value":"286103/500000","variable":"h"}` | `-286103/500000 + 1 * h` |
| 36 | coordinate | `{"box":1925,"direction":"lo","value":"47039/200000","variable":"p"}` | `-47039/200000 + 1 * p` |
| 37 | coordinate | `{"box":1925,"direction":"lo","value":"32073/100000","variable":"q"}` | `-32073/100000 + 1 * q` |
| 38 | coordinate | `{"box":1925,"direction":"lo","value":"161747/1000000","variable":"u"}` | `-161747/1000000 + 1 * u` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 13783000000 | 1 |
| 1 | 10645000000 | 2 |
| 2 | 11532000000 | 7 |
| 3 | 21847000000 | 8 |
| 4 | 1001000000 | 0 |
| 5 | 40110000000 | 9 |
| 6 | 697000000 | 10 |
| 7 | 33130000000 | 11 |
| 8 | 301000000 | 12 |
| 9 | 30313000000 | 13 |
| 10 | 23521000000 | 3 |
| 11 | 12490000000 | 4 |
| 12 | 40749000000 | 5 |
| 13 | 1001000000 | 6 |
| 14 | 24428000000 | 26, 27 |
| 15 | 13783000000 | 18, 26 |
| 16 | 11532000000 | 20, 26 |
| 17 | 50755000000 | 23, 27 |
| 18 | 33493000000 | 22, 26 |
| 19 | 40110000000 | 15, 25 |
| 20 | 21847000000 | 14, 16 |
| 21 | 12533000000 | 26, 30 |
| 22 | 33827000000 | 18, 33 |
| 23 | 30313000000 | 18, 35 |
| 24 | 30313000000 | 32, 37 |
| 25 | 301000000 | 18, 25 |
| 26 | 697000000 | 29, 32 |
| 27 | 33130000000 | 31, 32 |
| 28 | 24219000000 | 16, 19 |
| 29 | 9609000000 | 30, 33 |
| 30 | 12490000000 | 21, 34 |
| 31 | 12189000000 | 20, 25 |
| 32 | 11532000000 | 31, 34 |
| 33 | 30313000000 | 35, 36 |
| 34 | 28259000000 | 24, 35 |
| 35 | 40749000000 | 30, 35 |
| 36 | 40110000000 | 25, 36 |
| 37 | 40110000000 | 37, 38 |
| 38 | 22848000000 | 29, 36 |
| 39 | 22848000000 | 16, 37 |
| 40 | 40749000000 | 31, 38 |
| 41 | 40749000000 | 25, 30 |
| 42 | 22520000000 | 16, 31 |
| 43 | 22520000000 | 29, 30 |
| 44 | 18850 | 30 |
| 45 | 477084 | 29 |
| 46 | 1000000 | 19, 28 |
| 47 | 843640 | 19 |
| 48 | 2143605734 | 16 |
| 49 | 353309 | 17 |
| 50 | 277447 | 38 |
| 51 | 262211 | 18 |
| 52 | 247717 | 14 |
| 53 | 84058 | 27 |
| 54 | 160498 | 20 |
| 55 | 179199 | 23 |
| 56 | 145773 | 22 |
| 57 | 22252403970 | 25 |
| 58 | 888507 | 33 |
| 59 | 213883 | 35 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -553830258044153/250000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -553830258044153/250000 | 1 | -553830258044153/250000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1925 | -553830258044153/250000 |

## Stage 1926

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS-/HEQ+/CFQ+/PQR-/AFQ-/BPQ+/HQS- |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS-/HEQ+/CFQ+/PQR-/AFQ-/BPQ+/HQS-:LLH |
| Index | 0 |
| Context | 460 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1924 |
| Coordinate cut | v high 343987/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 111451/1000000 | 50951/250000 | 111451/1000000 | 50951/250000 |
| b | 114279/1000000 | 383811/1000000 | 114279/1000000 | 383811/1000000 |
| c | 182763/250000 | 947217/1000000 | 182763/250000 | 947217/1000000 |
| e | 111491/1000000 | 383811/1000000 | 111491/1000000 | 383811/1000000 |
| f | 114279/1000000 | 383811/1000000 | 114279/1000000 | 383811/1000000 |
| h | 286103/500000 | 229897/250000 | 286103/500000 | 229897/250000 |
| p | 47039/200000 | 129589/250000 | 47039/200000 | 129589/250000 |
| q | 32073/100000 | 298661/500000 | 32073/100000 | 298661/500000 |
| u | 161747/1000000 | 359733/1000000 | 161747/1000000 | 359733/1000000 |
| v | 343987/500000 | 446743/500000 | 343987/500000 | 446743/500000 |
| r | 21091/25000 | 1 | 21091/25000 | 1 |
| w | 611959/1000000 | 1 | 611959/1000000 | 1 |
| j | 407087/500000 | 895331/1000000 | 407087/500000 | 895331/1000000 |
| k | 380249/1000000 | 358001/500000 | 380249/1000000 | 358001/500000 |

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


## Stage 1927

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS-/HEQ+/CFQ+/PQR-/AFQ-/BPQ+/HQS- |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS-/HEQ+/CFQ+/PQR-/AFQ-/BPQ+/HQS-:LLHL |
| Index | 0 |
| Context | 460 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1926 |
| Coordinate cut | p low 362011/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 111451/1000000 | 50951/250000 | 111451/1000000 | 50951/250000 |
| b | 114279/1000000 | 383811/1000000 | 114279/1000000 | 383811/1000000 |
| c | 182763/250000 | 947217/1000000 | 182763/250000 | 947217/1000000 |
| e | 111491/1000000 | 383811/1000000 | 111491/1000000 | 383811/1000000 |
| f | 114279/1000000 | 383811/1000000 | 114279/1000000 | 383811/1000000 |
| h | 286103/500000 | 229897/250000 | 286103/500000 | 229897/250000 |
| p | 47039/200000 | 362011/1000000 | 47039/200000 | 362011/1000000 |
| q | 32073/100000 | 298661/500000 | 32073/100000 | 298661/500000 |
| u | 161747/1000000 | 359733/1000000 | 161747/1000000 | 359733/1000000 |
| v | 343987/500000 | 446743/500000 | 343987/500000 | 446743/500000 |
| r | 21091/25000 | 1 | 21091/25000 | 1 |
| w | 611959/1000000 | 1 | 611959/1000000 | 1 |
| j | 407087/500000 | 895331/1000000 | 407087/500000 | 895331/1000000 |
| k | 380249/1000000 | 358001/500000 | 380249/1000000 | 358001/500000 |

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


## Stage 1928

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS-/HEQ+/CFQ+/PQR-/AFQ-/BPQ+/HQS- |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS-/HEQ+/CFQ+/PQR-/AFQ-/BPQ+/HQS-:LLHLL |
| Index | 0 |
| Context | 460 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1927 |
| Coordinate cut | h low 100671/125000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 111451/1000000 | 50951/250000 | 111451/1000000 | 50951/250000 |
| b | 114279/1000000 | 383811/1000000 | 114279/1000000 | 383811/1000000 |
| c | 182763/250000 | 947217/1000000 | 182763/250000 | 947217/1000000 |
| e | 111491/1000000 | 383811/1000000 | 111491/1000000 | 383811/1000000 |
| f | 114279/1000000 | 383811/1000000 | 114279/1000000 | 383811/1000000 |
| h | 286103/500000 | 100671/125000 | 286103/500000 | 100671/125000 |
| p | 47039/200000 | 362011/1000000 | 47039/200000 | 362011/1000000 |
| q | 32073/100000 | 298661/500000 | 32073/100000 | 298661/500000 |
| u | 161747/1000000 | 359733/1000000 | 161747/1000000 | 359733/1000000 |
| v | 343987/500000 | 446743/500000 | 343987/500000 | 446743/500000 |
| r | 21091/25000 | 1 | 21091/25000 | 1 |
| w | 611959/1000000 | 1 | 611959/1000000 | 1 |
| j | 407087/500000 | 895331/1000000 | 407087/500000 | 895331/1000000 |
| k | 380249/1000000 | 358001/500000 | 380249/1000000 | 358001/500000 |

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
| 0 | physical | `{"factor":0,"stage":720}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 1 | physical | `{"factor":10,"stage":720}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 2 | physical | `{"factor":114,"stage":720}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 3 | physical | `{"factor":116,"stage":720}` | `-1/1 * f * v + -1/1 * h * u + 1/1 * f * h + 1/1 * u + -93/1000` |
| 4 | physical | `{"factor":37,"stage":720}` | `-1/1 * f * k + 1/1 * a * f + 1/1 * j + -1/1 * a * j + -13857/20000` |
| 5 | physical | `{"factor":43,"stage":720}` | `-1/1 * p * w + 1/1 * a * p + 1/1 * q * r + -1/1 * a * r + -93/1000` |
| 6 | physical | `{"factor":48,"stage":720}` | `1/1 * c * e + -1/1 * b * e + -93/1000` |
| 7 | physical | `{"factor":71,"stage":720}` | `1/1 * p * v + -1/1 * b * v + -1/1 * q * u + 1/1 * b * q + -93/1000` |
| 8 | physical | `{"factor":82,"stage":720}` | `1/1 * k + -1/1 * c * k + -1/1 * e * j + 1/1 * c * e + -93/1000` |
| 9 | physical | `{"factor":85,"stage":720}` | `1/1 * f * v + -1/1 * c * v + -1/1 * u + 1/1 * c + -93/1000` |
| 10 | physical | `{"factor":88,"stage":720}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 11 | coordinate | `{"box":1928,"direction":"hi","value":"50951/250000","variable":"a"}` | `50951/250000 + -1 * a` |
| 12 | coordinate | `{"box":1928,"direction":"hi","value":"383811/1000000","variable":"b"}` | `383811/1000000 + -1 * b` |
| 13 | coordinate | `{"box":1928,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 14 | coordinate | `{"box":1928,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 15 | coordinate | `{"box":1928,"direction":"hi","value":"895331/1000000","variable":"j"}` | `895331/1000000 + -1 * j` |
| 16 | coordinate | `{"box":1928,"direction":"hi","value":"358001/500000","variable":"k"}` | `358001/500000 + -1 * k` |
| 17 | coordinate | `{"box":1928,"direction":"hi","value":"947217/1000000","variable":"c"}` | `947217/1000000 + -1 * c` |
| 18 | coordinate | `{"box":1928,"direction":"hi","value":"383811/1000000","variable":"e"}` | `383811/1000000 + -1 * e` |
| 19 | coordinate | `{"box":1928,"direction":"hi","value":"383811/1000000","variable":"f"}` | `383811/1000000 + -1 * f` |
| 20 | coordinate | `{"box":1928,"direction":"hi","value":"100671/125000","variable":"h"}` | `100671/125000 + -1 * h` |
| 21 | coordinate | `{"box":1928,"direction":"hi","value":"362011/1000000","variable":"p"}` | `362011/1000000 + -1 * p` |
| 22 | coordinate | `{"box":1928,"direction":"hi","value":"298661/500000","variable":"q"}` | `298661/500000 + -1 * q` |
| 23 | coordinate | `{"box":1928,"direction":"hi","value":"359733/1000000","variable":"u"}` | `359733/1000000 + -1 * u` |
| 24 | coordinate | `{"box":1928,"direction":"hi","value":"446743/500000","variable":"v"}` | `446743/500000 + -1 * v` |
| 25 | coordinate | `{"box":1928,"direction":"lo","value":"111451/1000000","variable":"a"}` | `-111451/1000000 + 1 * a` |
| 26 | coordinate | `{"box":1928,"direction":"lo","value":"114279/1000000","variable":"b"}` | `-114279/1000000 + 1 * b` |
| 27 | coordinate | `{"box":1928,"direction":"lo","value":"611959/1000000","variable":"w"}` | `-611959/1000000 + 1 * w` |
| 28 | coordinate | `{"box":1928,"direction":"lo","value":"407087/500000","variable":"j"}` | `-407087/500000 + 1 * j` |
| 29 | coordinate | `{"box":1928,"direction":"lo","value":"380249/1000000","variable":"k"}` | `-380249/1000000 + 1 * k` |
| 30 | coordinate | `{"box":1928,"direction":"lo","value":"182763/250000","variable":"c"}` | `-182763/250000 + 1 * c` |
| 31 | coordinate | `{"box":1928,"direction":"lo","value":"111491/1000000","variable":"e"}` | `-111491/1000000 + 1 * e` |
| 32 | coordinate | `{"box":1928,"direction":"lo","value":"114279/1000000","variable":"f"}` | `-114279/1000000 + 1 * f` |
| 33 | coordinate | `{"box":1928,"direction":"lo","value":"286103/500000","variable":"h"}` | `-286103/500000 + 1 * h` |
| 34 | coordinate | `{"box":1928,"direction":"lo","value":"47039/200000","variable":"p"}` | `-47039/200000 + 1 * p` |
| 35 | coordinate | `{"box":1928,"direction":"lo","value":"32073/100000","variable":"q"}` | `-32073/100000 + 1 * q` |
| 36 | coordinate | `{"box":1928,"direction":"lo","value":"161747/1000000","variable":"u"}` | `-161747/1000000 + 1 * u` |
| 37 | coordinate | `{"box":1928,"direction":"lo","value":"343987/500000","variable":"v"}` | `-343987/500000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 23081000000 | 0 |
| 1 | 12313000000 | 1 |
| 2 | 25293000000 | 4 |
| 3 | 17853000000 | 5 |
| 4 | 2437000000 | 6 |
| 5 | 34620000000 | 7 |
| 6 | 19522000000 | 8 |
| 7 | 78000000 | 9 |
| 8 | 24098000000 | 10 |
| 9 | 29067000000 | 2 |
| 10 | 57453000000 | 3 |
| 11 | 35394000000 | 25, 26 |
| 12 | 23081000000 | 17, 25 |
| 13 | 2437000000 | 26, 31 |
| 14 | 25293000000 | 19, 25 |
| 15 | 46933000000 | 22, 26 |
| 16 | 30166000000 | 21, 25 |
| 17 | 34620000000 | 26, 37 |
| 18 | 17853000000 | 11, 13 |
| 19 | 25293000000 | 25, 28 |
| 20 | 21959000000 | 17, 31 |
| 21 | 24098000000 | 17, 33 |
| 22 | 24098000000 | 30, 35 |
| 23 | 78000000 | 17, 24 |
| 24 | 8604000000 | 29, 30 |
| 25 | 10918000000 | 16, 17 |
| 26 | 29067000000 | 13, 18 |
| 27 | 9545000000 | 15, 31 |
| 28 | 57453000000 | 20, 32 |
| 29 | 57375000000 | 32, 37 |
| 30 | 25293000000 | 29, 32 |
| 31 | 24098000000 | 20, 21 |
| 32 | 57453000000 | 20, 23 |
| 33 | 15341000000 | 24, 34 |
| 34 | 19279000000 | 21, 37 |
| 35 | 34620000000 | 35, 36 |
| 36 | 17853000000 | 27, 34 |
| 37 | 17853000000 | 13, 35 |
| 38 | 29067000000 | 13, 29 |
| 39 | 14250000000 | 27, 28 |
| 40 | 14818000000 | 14, 15 |
| 41 | 114279 | 25 |
| 42 | 111451 | 26 |
| 43 | 164298 | 28 |
| 44 | 145361 | 29 |
| 45 | 519696 | 23 |
| 46 | 35908 | 17 |
| 47 | 1000000 | 14, 28 |
| 48 | 814174 | 14 |
| 49 | 1000000 | 15 |
| 50 | 930593 | 27 |
| 51 | 291397 | 11 |
| 52 | 164736 | 12 |
| 53 | 374575 | 18 |
| 54 | 408360 | 32 |
| 55 | 115929 | 35 |
| 56 | 611753 | 34 |
| 57 | 357033 | 24 |
| 58 | 1983943224 | 13 |
| 59 | 225526 | 20 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -592420924970603/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -592420924970603/1000000 | 1 | -592420924970603/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1928 | -592420924970603/1000000 |

## Stage 1929

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS-/HEQ+/CFQ+/PQR-/AFQ-/BPQ+/HQS- |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS-/HEQ+/CFQ+/PQR-/AFQ-/BPQ+/HQS-:LLHLH |
| Index | 0 |
| Context | 460 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1927 |
| Coordinate cut | h high 100671/125000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 111451/1000000 | 50951/250000 | 111451/1000000 | 50951/250000 |
| b | 114279/1000000 | 383811/1000000 | 114279/1000000 | 383811/1000000 |
| c | 182763/250000 | 947217/1000000 | 182763/250000 | 947217/1000000 |
| e | 111491/1000000 | 383811/1000000 | 111491/1000000 | 383811/1000000 |
| f | 114279/1000000 | 383811/1000000 | 114279/1000000 | 383811/1000000 |
| h | 100671/125000 | 229897/250000 | 100671/125000 | 229897/250000 |
| p | 47039/200000 | 362011/1000000 | 47039/200000 | 362011/1000000 |
| q | 32073/100000 | 298661/500000 | 32073/100000 | 298661/500000 |
| u | 161747/1000000 | 359733/1000000 | 161747/1000000 | 359733/1000000 |
| v | 343987/500000 | 446743/500000 | 343987/500000 | 446743/500000 |
| r | 21091/25000 | 1 | 21091/25000 | 1 |
| w | 611959/1000000 | 1 | 611959/1000000 | 1 |
| j | 407087/500000 | 895331/1000000 | 407087/500000 | 895331/1000000 |
| k | 380249/1000000 | 358001/500000 | 380249/1000000 | 358001/500000 |

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
| 0 | physical | `{"factor":0,"stage":720}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 1 | physical | `{"factor":10,"stage":720}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 2 | physical | `{"factor":114,"stage":720}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 3 | physical | `{"factor":116,"stage":720}` | `-1/1 * f * v + -1/1 * h * u + 1/1 * f * h + 1/1 * u + -93/1000` |
| 4 | physical | `{"factor":127,"stage":720}` | `-1/1 * u * k + 1/1 * h * u + 1/1 * v * j + -1/1 * h * j + -93/1000` |
| 5 | physical | `{"factor":37,"stage":720}` | `-1/1 * f * k + 1/1 * a * f + 1/1 * j + -1/1 * a * j + -13857/20000` |
| 6 | physical | `{"factor":43,"stage":720}` | `-1/1 * p * w + 1/1 * a * p + 1/1 * q * r + -1/1 * a * r + -93/1000` |
| 7 | physical | `{"factor":71,"stage":720}` | `1/1 * p * v + -1/1 * b * v + -1/1 * q * u + 1/1 * b * q + -93/1000` |
| 8 | physical | `{"factor":82,"stage":720}` | `1/1 * k + -1/1 * c * k + -1/1 * e * j + 1/1 * c * e + -93/1000` |
| 9 | physical | `{"factor":85,"stage":720}` | `1/1 * f * v + -1/1 * c * v + -1/1 * u + 1/1 * c + -93/1000` |
| 10 | physical | `{"factor":88,"stage":720}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 11 | coordinate | `{"box":1929,"direction":"hi","value":"50951/250000","variable":"a"}` | `50951/250000 + -1 * a` |
| 12 | coordinate | `{"box":1929,"direction":"hi","value":"383811/1000000","variable":"b"}` | `383811/1000000 + -1 * b` |
| 13 | coordinate | `{"box":1929,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 14 | coordinate | `{"box":1929,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 15 | coordinate | `{"box":1929,"direction":"hi","value":"895331/1000000","variable":"j"}` | `895331/1000000 + -1 * j` |
| 16 | coordinate | `{"box":1929,"direction":"hi","value":"358001/500000","variable":"k"}` | `358001/500000 + -1 * k` |
| 17 | coordinate | `{"box":1929,"direction":"hi","value":"947217/1000000","variable":"c"}` | `947217/1000000 + -1 * c` |
| 18 | coordinate | `{"box":1929,"direction":"hi","value":"383811/1000000","variable":"e"}` | `383811/1000000 + -1 * e` |
| 19 | coordinate | `{"box":1929,"direction":"hi","value":"383811/1000000","variable":"f"}` | `383811/1000000 + -1 * f` |
| 20 | coordinate | `{"box":1929,"direction":"hi","value":"229897/250000","variable":"h"}` | `229897/250000 + -1 * h` |
| 21 | coordinate | `{"box":1929,"direction":"hi","value":"362011/1000000","variable":"p"}` | `362011/1000000 + -1 * p` |
| 22 | coordinate | `{"box":1929,"direction":"hi","value":"298661/500000","variable":"q"}` | `298661/500000 + -1 * q` |
| 23 | coordinate | `{"box":1929,"direction":"hi","value":"359733/1000000","variable":"u"}` | `359733/1000000 + -1 * u` |
| 24 | coordinate | `{"box":1929,"direction":"hi","value":"446743/500000","variable":"v"}` | `446743/500000 + -1 * v` |
| 25 | coordinate | `{"box":1929,"direction":"lo","value":"111451/1000000","variable":"a"}` | `-111451/1000000 + 1 * a` |
| 26 | coordinate | `{"box":1929,"direction":"lo","value":"114279/1000000","variable":"b"}` | `-114279/1000000 + 1 * b` |
| 27 | coordinate | `{"box":1929,"direction":"lo","value":"407087/500000","variable":"j"}` | `-407087/500000 + 1 * j` |
| 28 | coordinate | `{"box":1929,"direction":"lo","value":"380249/1000000","variable":"k"}` | `-380249/1000000 + 1 * k` |
| 29 | coordinate | `{"box":1929,"direction":"lo","value":"182763/250000","variable":"c"}` | `-182763/250000 + 1 * c` |
| 30 | coordinate | `{"box":1929,"direction":"lo","value":"111491/1000000","variable":"e"}` | `-111491/1000000 + 1 * e` |
| 31 | coordinate | `{"box":1929,"direction":"lo","value":"114279/1000000","variable":"f"}` | `-114279/1000000 + 1 * f` |
| 32 | coordinate | `{"box":1929,"direction":"lo","value":"100671/125000","variable":"h"}` | `-100671/125000 + 1 * h` |
| 33 | coordinate | `{"box":1929,"direction":"lo","value":"47039/200000","variable":"p"}` | `-47039/200000 + 1 * p` |
| 34 | coordinate | `{"box":1929,"direction":"lo","value":"32073/100000","variable":"q"}` | `-32073/100000 + 1 * q` |
| 35 | coordinate | `{"box":1929,"direction":"lo","value":"161747/1000000","variable":"u"}` | `-161747/1000000 + 1 * u` |
| 36 | coordinate | `{"box":1929,"direction":"lo","value":"343987/500000","variable":"v"}` | `-343987/500000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 21597000000 | 0 |
| 1 | 7928000000 | 1 |
| 2 | 35071000000 | 5 |
| 3 | 7617000000 | 6 |
| 4 | 15938000000 | 7 |
| 5 | 36798000000 | 8 |
| 6 | 16093000000 | 9 |
| 7 | 6308000000 | 10 |
| 8 | 26346000000 | 2 |
| 9 | 71147000000 | 3 |
| 10 | 31100000000 | 4 |
| 11 | 29525000000 | 25, 26 |
| 12 | 21597000000 | 17, 25 |
| 13 | 35071000000 | 19, 25 |
| 14 | 23866000000 | 22, 26 |
| 15 | 15545000000 | 21, 25 |
| 16 | 15938000000 | 26, 36 |
| 17 | 7617000000 | 11, 13 |
| 18 | 35071000000 | 25, 27 |
| 19 | 36798000000 | 17, 30 |
| 20 | 6308000000 | 17, 32 |
| 21 | 6308000000 | 29, 34 |
| 22 | 13195000000 | 29, 36 |
| 23 | 2898000000 | 17, 24 |
| 24 | 36798000000 | 28, 29 |
| 25 | 26346000000 | 13, 18 |
| 26 | 10452000000 | 27, 30 |
| 27 | 71147000000 | 19, 32 |
| 28 | 6412000000 | 31, 36 |
| 29 | 48642000000 | 19, 24 |
| 30 | 35071000000 | 28, 31 |
| 31 | 6308000000 | 32, 33 |
| 32 | 40047000000 | 32, 35 |
| 33 | 31100000000 | 27, 32 |
| 34 | 15938000000 | 21, 36 |
| 35 | 15938000000 | 22, 23 |
| 36 | 7617000000 | 14, 21 |
| 37 | 7617000000 | 13, 34 |
| 38 | 26763000000 | 28, 35 |
| 39 | 4337000000 | 16, 23 |
| 40 | 31100000000 | 15, 36 |
| 41 | 26346000000 | 13, 28 |
| 42 | 26346000000 | 14, 15 |
| 43 | 44647 | 15 |
| 44 | 127287 | 28 |
| 45 | 594993 | 35 |
| 46 | 207509 | 17 |
| 47 | 171687 | 14 |
| 48 | 158296 | 11 |
| 49 | 166465 | 12 |
| 50 | 267138 | 19 |
| 51 | 517956 | 34 |
| 52 | 174063 | 21 |
| 53 | 210900 | 36 |
| 54 | 796780890 | 13 |
| 55 | 55482 | 30 |
| 56 | 142484 | 20 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -974156314869419/500000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -974156314869419/500000 | 1 | -974156314869419/500000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1929 | -974156314869419/500000 |
