# BITT convex: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 400

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR-/APS- |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR-/APS-:HL |
| Index | 0 |
| Context | 36 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 399 |
| Coordinate cut | j low 275609/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 107301/1000000 | 6143/20000 | 107301/1000000 | 6143/20000 |
| b | 52089/500000 | 6143/20000 | 52089/500000 | 6143/20000 |
| c | 135501/250000 | 485437/500000 | 135501/250000 | 485437/500000 |
| e | 53651/500000 | 391/1000 | 53651/500000 | 391/1000 |
| f | 53651/500000 | 65019/125000 | 53651/500000 | 65019/125000 |
| h | 610067/1000000 | 1 | 610067/1000000 | 1 |
| p | 99079/500000 | 465549/1000000 | 99079/500000 | 465549/1000000 |
| q | 19721/62500 | 175027/250000 | 19721/62500 | 175027/250000 |
| u | 637419/1000000 | 13472/15625 | 637419/1000000 | 13472/15625 |
| v | 11197/40000 | 730113/1000000 | 11197/40000 | 730113/1000000 |
| r | 49909/62500 | 1 | 49909/62500 | 1 |
| w | 60997/125000 | 43979/50000 | 60997/125000 | 43979/50000 |
| j | 429859/1000000 | 275609/500000 | 429859/1000000 | 275609/500000 |
| k | 112491/200000 | 1 | 112491/200000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"91:486","triangle":"CEF","value":"300587/1000000"}` | `699413/1000000 + -1 * c + -1 * e * f + 1 * c * e` |
| 1 | bound | `{"direction":"lo","ref":"91:644","triangle":"EPQ","value":"26461/250000"}` | `-1 * p * v + 1 * e * p + 1 * v + 1 * q * u + -1 * q + -1 * e * u + -26461/250000` |
| 2 | bound | `{"direction":"lo","ref":"91:725","triangle":"HQR","value":"43821/250000"}` | `1 * u * w + -1 * h * u + -1 * v * r + 1 * h * r + -43821/250000` |
| 3 | bound | `{"direction":"lo","ref":"91:738","triangle":"FPR","value":"56533/200000"}` | `1 * p * w + -1 * p + -1 * f * w + -1 * q * r + 1 * f * q + 1 * r + -56533/200000` |
| 4 | bound | `{"direction":"lo","ref":"91:871","triangle":"FPS","value":"155199/1000000"}` | `1 * p * k + -1 * p + -1 * f * k + -1 * q * j + 1 * f * q + 1 * j + -155199/1000000` |
| 5 | physical | `{"factor":0,"stage":91}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 6 | physical | `{"factor":102,"stage":91}` | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 7 | physical | `{"factor":107,"stage":91}` | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 8 | physical | `{"factor":125,"stage":91}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 9 | physical | `{"factor":132,"stage":91}` | `1/1 * u * w + -1/1 * q * u + -1/1 * p * w + -1/1 * v * r + 1/1 * p * v + 1/1 * q * r + -93/1000` |
| 10 | physical | `{"factor":43,"stage":91}` | `-1/1 * p * k + 1/1 * a * p + 1/1 * q * j + -1/1 * a * j + -93/1000` |
| 11 | physical | `{"factor":526,"stage":91}` | `-602233/1000000 * q + 602233/1000000 * c * q + 602233/1000000 * e * p + 420767/1000000 * c * e + 1023/1000 * a + -1023/1000 * a * c` |
| 12 | physical | `{"factor":63,"stage":91}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 13 | physical | `{"factor":7,"stage":91}` | `1/1 * b * h + -1/1 * a * b + -93/1000` |
| 14 | physical | `{"factor":75,"stage":91}` | `-1/1 * u * w + 1/1 * b * w + 1/1 * v * r + -1/1 * b * v + -93/1000` |
| 15 | physical | `{"factor":90,"stage":91}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 16 | coordinate | `{"box":400,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 17 | coordinate | `{"box":400,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 18 | coordinate | `{"box":400,"direction":"hi","value":"43979/50000","variable":"w"}` | `43979/50000 + -1 * w` |
| 19 | coordinate | `{"box":400,"direction":"hi","value":"275609/500000","variable":"j"}` | `275609/500000 + -1 * j` |
| 20 | coordinate | `{"box":400,"direction":"hi","value":"485437/500000","variable":"c"}` | `485437/500000 + -1 * c` |
| 21 | coordinate | `{"box":400,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 22 | coordinate | `{"box":400,"direction":"hi","value":"65019/125000","variable":"f"}` | `65019/125000 + -1 * f` |
| 23 | coordinate | `{"box":400,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 24 | coordinate | `{"box":400,"direction":"hi","value":"465549/1000000","variable":"p"}` | `465549/1000000 + -1 * p` |
| 25 | coordinate | `{"box":400,"direction":"hi","value":"175027/250000","variable":"q"}` | `175027/250000 + -1 * q` |
| 26 | coordinate | `{"box":400,"direction":"hi","value":"13472/15625","variable":"u"}` | `13472/15625 + -1 * u` |
| 27 | coordinate | `{"box":400,"direction":"hi","value":"730113/1000000","variable":"v"}` | `730113/1000000 + -1 * v` |
| 28 | coordinate | `{"box":400,"direction":"lo","value":"107301/1000000","variable":"a"}` | `-107301/1000000 + 1 * a` |
| 29 | coordinate | `{"box":400,"direction":"lo","value":"52089/500000","variable":"b"}` | `-52089/500000 + 1 * b` |
| 30 | coordinate | `{"box":400,"direction":"lo","value":"60997/125000","variable":"w"}` | `-60997/125000 + 1 * w` |
| 31 | coordinate | `{"box":400,"direction":"lo","value":"112491/200000","variable":"k"}` | `-112491/200000 + 1 * k` |
| 32 | coordinate | `{"box":400,"direction":"lo","value":"135501/250000","variable":"c"}` | `-135501/250000 + 1 * c` |
| 33 | coordinate | `{"box":400,"direction":"lo","value":"53651/500000","variable":"e"}` | `-53651/500000 + 1 * e` |
| 34 | coordinate | `{"box":400,"direction":"lo","value":"53651/500000","variable":"f"}` | `-53651/500000 + 1 * f` |
| 35 | coordinate | `{"box":400,"direction":"lo","value":"610067/1000000","variable":"h"}` | `-610067/1000000 + 1 * h` |
| 36 | coordinate | `{"box":400,"direction":"lo","value":"99079/500000","variable":"p"}` | `-99079/500000 + 1 * p` |
| 37 | coordinate | `{"box":400,"direction":"lo","value":"19721/62500","variable":"q"}` | `-19721/62500 + 1 * q` |
| 38 | coordinate | `{"box":400,"direction":"lo","value":"637419/1000000","variable":"u"}` | `-637419/1000000 + 1 * u` |
| 39 | coordinate | `{"box":400,"direction":"lo","value":"11197/40000","variable":"v"}` | `-11197/40000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 4556000000000000 | 5 |
| 1 | 8995000000000000 | 13 |
| 2 | 35616000000000000 | 10 |
| 3 | 32397500000000000 | 12 |
| 4 | 3626500000000000 | 14 |
| 5 | 217000000000000 | 0 |
| 6 | 8535000000000000 | 15 |
| 7 | 26910500000000000 | 6 |
| 8 | 23998000000000000 | 7 |
| 9 | 403000000000000 | 1 |
| 10 | 403000000000000 | 3 |
| 11 | 24467500000000000 | 4 |
| 12 | 5415500000000000 | 8 |
| 13 | 3223500000000000 | 2 |
| 14 | 403000000000000 | 9 |
| 15 | 1325500000000000 | 11 |
| 16 | 13551000000000000 | 28, 29 |
| 17 | 3200500000000000 | 20, 28 |
| 18 | 8995000000000000 | 23, 29 |
| 19 | 32397500000000000 | 25, 29 |
| 20 | 35616000000000000 | 24, 28 |
| 21 | 3626500000000000 | 29, 39 |
| 22 | 3626500000000000 | 18, 29 |
| 23 | 35616000000000000 | 16, 19 |
| 24 | 774726658500000 | 20, 33 |
| 25 | 8535000000000000 | 20, 35 |
| 26 | 7737000000000000 | 20, 25 |
| 27 | 27127500000000000 | 33, 34 |
| 28 | 1201000000000000 | 24, 33 |
| 29 | 2509500000000000 | 21, 38 |
| 30 | 7527000000000000 | 34, 37 |
| 31 | 26910500000000000 | 27, 34 |
| 32 | 5013000000000000 | 22, 30 |
| 33 | 29883000000000000 | 31, 34 |
| 34 | 8535000000000000 | 35, 36 |
| 35 | 20774500000000000 | 23, 38 |
| 36 | 3223500000000000 | 17, 35 |
| 37 | 11148500000000000 | 31, 36 |
| 38 | 11148500000000000 | 19, 37 |
| 39 | 5415500000000000 | 17, 31 |
| 40 | 5415500000000000 | 18, 19 |
| 41 | 486500000000 | 28, 32 |
| 42 | 263684946000 | 28 |
| 43 | 343703436500 | 32 |
| 44 | 152303526500 | 24 |
| 45 | 138063500000 | 29 |
| 46 | 165762500000 | 33 |
| 47 | 297639000000 | 34 |
| 48 | 106310257911 | 20 |
| 49 | 271546516486 | 21 |
| 50 | 259841500000 | 20, 37 |
| 51 | 252273356471 | 25 |
| 52 | 248954000000 | 27 |
| 53 | 5155285500000000 | 38 |
| 54 | 318709500000 | 23 |
| 55 | 500000000000 | 26 |
| 56 | 545524000000 | 35 |
| 57 | 259841500000 | 21, 36 |
| 58 | 213505500000 | 37 |
| 59 | 500000000000 | 30, 34 |
| 60 | 53651000000 | 30 |
| 61 | 26027000000 | 17 |
| 62 | 17697933206000000 | 19 |
| 63 | 365555000000 | 16 |
| 64 | 202414000000 | 18 |
| 65 | 265983500000 | 22 |
| 66 | 170129000000 | 31 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -81381963650751634977/62500 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -81381963650751634977/62500 | 1 | -81381963650751634977/62500 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 400 | -81381963650751634977/62500 |

## Stage 401

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR-/APS- |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR-/APS-:HH |
| Index | 0 |
| Context | 36 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 399 |
| Coordinate cut | j high 275609/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 107301/1000000 | 6143/20000 | 107301/1000000 | 6143/20000 |
| b | 52089/500000 | 6143/20000 | 52089/500000 | 6143/20000 |
| c | 135501/250000 | 485437/500000 | 135501/250000 | 485437/500000 |
| e | 53651/500000 | 391/1000 | 53651/500000 | 391/1000 |
| f | 53651/500000 | 65019/125000 | 53651/500000 | 65019/125000 |
| h | 610067/1000000 | 1 | 610067/1000000 | 1 |
| p | 99079/500000 | 465549/1000000 | 99079/500000 | 465549/1000000 |
| q | 19721/62500 | 175027/250000 | 19721/62500 | 175027/250000 |
| u | 637419/1000000 | 13472/15625 | 637419/1000000 | 13472/15625 |
| v | 11197/40000 | 730113/1000000 | 11197/40000 | 730113/1000000 |
| r | 49909/62500 | 1 | 49909/62500 | 1 |
| w | 60997/125000 | 43979/50000 | 60997/125000 | 43979/50000 |
| j | 275609/500000 | 439789/500000 | 275609/500000 | 439789/500000 |
| k | 112491/200000 | 1 | 112491/200000 | 1 |

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


## Stage 402

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR-/APS- |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR-/APS-:HHL |
| Index | 0 |
| Context | 36 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 401 |
| Coordinate cut | q low 585889/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 107301/1000000 | 6143/20000 | 107301/1000000 | 6143/20000 |
| b | 52089/500000 | 6143/20000 | 52089/500000 | 6143/20000 |
| c | 135501/250000 | 485437/500000 | 135501/250000 | 485437/500000 |
| e | 53651/500000 | 391/1000 | 53651/500000 | 391/1000 |
| f | 53651/500000 | 65019/125000 | 53651/500000 | 65019/125000 |
| h | 610067/1000000 | 1 | 610067/1000000 | 1 |
| p | 99079/500000 | 465549/1000000 | 99079/500000 | 465549/1000000 |
| q | 19721/62500 | 585889/1000000 | 19721/62500 | 585889/1000000 |
| u | 637419/1000000 | 13472/15625 | 637419/1000000 | 13472/15625 |
| v | 11197/40000 | 730113/1000000 | 11197/40000 | 730113/1000000 |
| r | 49909/62500 | 1 | 49909/62500 | 1 |
| w | 60997/125000 | 43979/50000 | 60997/125000 | 43979/50000 |
| j | 275609/500000 | 439789/500000 | 275609/500000 | 439789/500000 |
| k | 112491/200000 | 1 | 112491/200000 | 1 |

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


## Stage 403

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR-/APS- |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR-/APS-:HHLL |
| Index | 0 |
| Context | 36 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 402 |
| Coordinate cut | v low 2487/6250 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 107301/1000000 | 6143/20000 | 107301/1000000 | 6143/20000 |
| b | 52089/500000 | 6143/20000 | 52089/500000 | 6143/20000 |
| c | 135501/250000 | 485437/500000 | 135501/250000 | 485437/500000 |
| e | 53651/500000 | 391/1000 | 53651/500000 | 391/1000 |
| f | 53651/500000 | 65019/125000 | 53651/500000 | 65019/125000 |
| h | 610067/1000000 | 1 | 610067/1000000 | 1 |
| p | 99079/500000 | 465549/1000000 | 99079/500000 | 465549/1000000 |
| q | 19721/62500 | 585889/1000000 | 19721/62500 | 585889/1000000 |
| u | 637419/1000000 | 13472/15625 | 637419/1000000 | 13472/15625 |
| v | 11197/40000 | 2487/6250 | 11197/40000 | 2487/6250 |
| r | 49909/62500 | 1 | 49909/62500 | 1 |
| w | 60997/125000 | 43979/50000 | 60997/125000 | 43979/50000 |
| j | 275609/500000 | 439789/500000 | 275609/500000 | 439789/500000 |
| k | 112491/200000 | 1 | 112491/200000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"91:486","triangle":"CEF","value":"300587/1000000"}` | `699413/1000000 + -1 * c + -1 * e * f + 1 * c * e` |
| 1 | bound | `{"direction":"lo","ref":"91:644","triangle":"EPQ","value":"26461/250000"}` | `-1 * p * v + 1 * e * p + 1 * v + 1 * q * u + -1 * q + -1 * e * u + -26461/250000` |
| 2 | physical | `{"factor":0,"stage":91}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 3 | physical | `{"factor":102,"stage":91}` | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 4 | physical | `{"factor":107,"stage":91}` | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 5 | physical | `{"factor":132,"stage":91}` | `1/1 * u * w + -1/1 * q * u + -1/1 * p * w + -1/1 * v * r + 1/1 * p * v + 1/1 * q * r + -93/1000` |
| 6 | physical | `{"factor":45,"stage":91}` | `1/1 * c * e + -1/1 * b * e + -93/1000` |
| 7 | physical | `{"factor":63,"stage":91}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 8 | physical | `{"factor":7,"stage":91}` | `1/1 * b * h + -1/1 * a * b + -93/1000` |
| 9 | physical | `{"factor":70,"stage":91}` | `1/1 * b * w + 1/1 * h * r + -1/1 * b * h + -13857/20000` |
| 10 | physical | `{"factor":75,"stage":91}` | `-1/1 * u * w + 1/1 * b * w + 1/1 * v * r + -1/1 * b * v + -93/1000` |
| 11 | coordinate | `{"box":403,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 12 | coordinate | `{"box":403,"direction":"hi","value":"6143/20000","variable":"b"}` | `6143/20000 + -1 * b` |
| 13 | coordinate | `{"box":403,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 14 | coordinate | `{"box":403,"direction":"hi","value":"43979/50000","variable":"w"}` | `43979/50000 + -1 * w` |
| 15 | coordinate | `{"box":403,"direction":"hi","value":"485437/500000","variable":"c"}` | `485437/500000 + -1 * c` |
| 16 | coordinate | `{"box":403,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 17 | coordinate | `{"box":403,"direction":"hi","value":"65019/125000","variable":"f"}` | `65019/125000 + -1 * f` |
| 18 | coordinate | `{"box":403,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 19 | coordinate | `{"box":403,"direction":"hi","value":"465549/1000000","variable":"p"}` | `465549/1000000 + -1 * p` |
| 20 | coordinate | `{"box":403,"direction":"hi","value":"585889/1000000","variable":"q"}` | `585889/1000000 + -1 * q` |
| 21 | coordinate | `{"box":403,"direction":"hi","value":"13472/15625","variable":"u"}` | `13472/15625 + -1 * u` |
| 22 | coordinate | `{"box":403,"direction":"hi","value":"2487/6250","variable":"v"}` | `2487/6250 + -1 * v` |
| 23 | coordinate | `{"box":403,"direction":"lo","value":"107301/1000000","variable":"a"}` | `-107301/1000000 + 1 * a` |
| 24 | coordinate | `{"box":403,"direction":"lo","value":"52089/500000","variable":"b"}` | `-52089/500000 + 1 * b` |
| 25 | coordinate | `{"box":403,"direction":"lo","value":"49909/62500","variable":"r"}` | `-49909/62500 + 1 * r` |
| 26 | coordinate | `{"box":403,"direction":"lo","value":"60997/125000","variable":"w"}` | `-60997/125000 + 1 * w` |
| 27 | coordinate | `{"box":403,"direction":"lo","value":"135501/250000","variable":"c"}` | `-135501/250000 + 1 * c` |
| 28 | coordinate | `{"box":403,"direction":"lo","value":"53651/500000","variable":"e"}` | `-53651/500000 + 1 * e` |
| 29 | coordinate | `{"box":403,"direction":"lo","value":"53651/500000","variable":"f"}` | `-53651/500000 + 1 * f` |
| 30 | coordinate | `{"box":403,"direction":"lo","value":"610067/1000000","variable":"h"}` | `-610067/1000000 + 1 * h` |
| 31 | coordinate | `{"box":403,"direction":"lo","value":"99079/500000","variable":"p"}` | `-99079/500000 + 1 * p` |
| 32 | coordinate | `{"box":403,"direction":"lo","value":"19721/62500","variable":"q"}` | `-19721/62500 + 1 * q` |
| 33 | coordinate | `{"box":403,"direction":"lo","value":"637419/1000000","variable":"u"}` | `-637419/1000000 + 1 * u` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 1337000000 | 2 |
| 1 | 11121000000 | 8 |
| 2 | 26965000000 | 6 |
| 3 | 19145000000 | 7 |
| 4 | 17348000000 | 9 |
| 5 | 83190000000 | 10 |
| 6 | 3402000000 | 0 |
| 7 | 22043000000 | 3 |
| 8 | 46056000000 | 4 |
| 9 | 50254000000 | 1 |
| 10 | 50419000000 | 5 |
| 11 | 12458000000 | 23, 24 |
| 12 | 1337000000 | 15, 23 |
| 13 | 26965000000 | 24, 28 |
| 14 | 6227000000 | 24, 30 |
| 15 | 19145000000 | 20, 24 |
| 16 | 83190000000 | 12, 22 |
| 17 | 100538000000 | 12, 26 |
| 18 | 30367000000 | 15, 28 |
| 19 | 25445000000 | 28, 29 |
| 20 | 50254000000 | 19, 28 |
| 21 | 74267000000 | 28, 33 |
| 22 | 19145000000 | 29, 32 |
| 23 | 22043000000 | 22, 29 |
| 24 | 46056000000 | 18, 33 |
| 25 | 17348000000 | 13, 30 |
| 26 | 165000000 | 22, 31 |
| 27 | 165000000 | 32, 33 |
| 28 | 50419000000 | 26, 31 |
| 29 | 50419000000 | 13, 32 |
| 30 | 32772000000 | 26, 33 |
| 31 | 250436 | 31 |
| 32 | 30304 | 24 |
| 33 | 1000000 | 21, 26 |
| 34 | 584732 | 21 |
| 35 | 862208 | 14 |
| 36 | 32771000000 | 22, 25 |
| 37 | 77282230980 | 22 |
| 38 | 39532688220 | 13 |
| 39 | 98729 | 27 |
| 40 | 637419 | 28 |
| 41 | 107302 | 33 |
| 42 | 253058 | 18 |
| 43 | 16885 | 20 |
| 44 | 209014 | 11 |
| 45 | 211590 | 16 |
| 46 | 176970 | 26 |
| 47 | 114450 | 17 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -3976625438075783/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -3976625438075783/1000000 | 1 | -3976625438075783/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 403 | -3976625438075783/1000000 |

## Stage 404

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR-/APS- |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR+/BFP-/APQ-/BPS-/BQR-/APS-:HHLH |
| Index | 0 |
| Context | 36 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 402 |
| Coordinate cut | v high 2487/6250 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 107301/1000000 | 6143/20000 | 107301/1000000 | 6143/20000 |
| b | 52089/500000 | 6143/20000 | 52089/500000 | 6143/20000 |
| c | 135501/250000 | 485437/500000 | 135501/250000 | 485437/500000 |
| e | 53651/500000 | 391/1000 | 53651/500000 | 391/1000 |
| f | 53651/500000 | 65019/125000 | 53651/500000 | 65019/125000 |
| h | 610067/1000000 | 1 | 610067/1000000 | 1 |
| p | 99079/500000 | 465549/1000000 | 99079/500000 | 465549/1000000 |
| q | 19721/62500 | 585889/1000000 | 19721/62500 | 585889/1000000 |
| u | 637419/1000000 | 13472/15625 | 637419/1000000 | 13472/15625 |
| v | 2487/6250 | 730113/1000000 | 2487/6250 | 730113/1000000 |
| r | 49909/62500 | 1 | 49909/62500 | 1 |
| w | 60997/125000 | 43979/50000 | 60997/125000 | 43979/50000 |
| j | 275609/500000 | 439789/500000 | 275609/500000 | 439789/500000 |
| k | 112491/200000 | 1 | 112491/200000 | 1 |

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
