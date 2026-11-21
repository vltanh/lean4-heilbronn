# BITT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 1220

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ+/BPR+/BPS+/PRS-/HQS+/EHQ- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ+/BPR+/BPS+/PRS-/HQS+/EHQ-:HHHHHL |
| Index | 0 |
| Context | 263 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1219 |
| Coordinate cut | j low 343063/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 270627/1000000 | 103767/1000000 | 270627/1000000 |
| c | 135501/250000 | 1 | 135501/250000 | 1 |
| e | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| f | 195079/500000 | 344349/500000 | 195079/500000 | 344349/500000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 397223/1000000 | 651139/1000000 | 397223/1000000 | 651139/1000000 |
| q | 196767/1000000 | 288239/500000 | 196767/1000000 | 288239/500000 |
| u | 103767/1000000 | 246589/500000 | 103767/1000000 | 246589/500000 |
| v | 55147/100000 | 440299/500000 | 55147/100000 | 440299/500000 |
| r | 361353/500000 | 1 | 361353/500000 | 1 |
| w | 41657/50000 | 1 | 41657/50000 | 1 |
| j | 136727/250000 | 343063/500000 | 136727/250000 | 343063/500000 |
| k | 544649/1000000 | 864963/1000000 | 544649/1000000 | 864963/1000000 |

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
| 0 | bound | `{"direction":"lo","ref":"477:2289","triangle":"FQR","value":"2441/20000"}` | `1 * u * w + -1 * u + -1 * f * w + -1 * v * r + 1 * f * v + 1 * r + -2441/20000` |
| 1 | bound | `{"direction":"lo","ref":"477:2655","triangle":"AHQ","value":"65747/500000"}` | `1 * h * u + -1 * a * u + -65747/500000` |
| 2 | bound | `{"direction":"lo","ref":"477:2717","triangle":"BRS","value":"31913/250000"}` | `-1 * r * k + 1 * b * k + 1 * w * j + -1 * b * w + -31913/250000` |
| 3 | physical | `{"factor":10,"stage":477}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 4 | physical | `{"factor":106,"stage":477}` | `-1/1 * f * k + 1/1 * e * f + 1/1 * k + 1/1 * j + -1093/1000 + -1/1 * e * j` |
| 5 | physical | `{"factor":108,"stage":477}` | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 6 | physical | `{"factor":131,"stage":477}` | `1/1 * u * k + -1/1 * h * u + -1/1 * v * j + 1/1 * h * j + -93/1000` |
| 7 | physical | `{"factor":135,"stage":477}` | `-1/1 * r * k + 1/1 * q * r + 1/1 * p * k + 1/1 * w * j + -1/1 * p * w + -1/1 * q * j + -93/1000` |
| 8 | physical | `{"factor":138,"stage":477}` | `1/1 * e + -1/1 * a` |
| 9 | physical | `{"factor":34,"stage":477}` | `1/1 * f * v + -1/1 * a * f + -1/1 * u + 1/1 * a * u + -93/1000` |
| 10 | physical | `{"factor":75,"stage":477}` | `1/1 * p * k + -1/1 * b * k + -1/1 * q * j + 1/1 * b * q + -93/1000` |
| 11 | coordinate | `{"box":1220,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 12 | coordinate | `{"box":1220,"direction":"hi","value":"270627/1000000","variable":"b"}` | `270627/1000000 + -1 * b` |
| 13 | coordinate | `{"box":1220,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 14 | coordinate | `{"box":1220,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 15 | coordinate | `{"box":1220,"direction":"hi","value":"343063/500000","variable":"j"}` | `343063/500000 + -1 * j` |
| 16 | coordinate | `{"box":1220,"direction":"hi","value":"864963/1000000","variable":"k"}` | `864963/1000000 + -1 * k` |
| 17 | coordinate | `{"box":1220,"direction":"hi","value":"6143/20000","variable":"e"}` | `6143/20000 + -1 * e` |
| 18 | coordinate | `{"box":1220,"direction":"hi","value":"344349/500000","variable":"f"}` | `344349/500000 + -1 * f` |
| 19 | coordinate | `{"box":1220,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 20 | coordinate | `{"box":1220,"direction":"hi","value":"651139/1000000","variable":"p"}` | `651139/1000000 + -1 * p` |
| 21 | coordinate | `{"box":1220,"direction":"hi","value":"288239/500000","variable":"q"}` | `288239/500000 + -1 * q` |
| 22 | coordinate | `{"box":1220,"direction":"hi","value":"246589/500000","variable":"u"}` | `246589/500000 + -1 * u` |
| 23 | coordinate | `{"box":1220,"direction":"hi","value":"440299/500000","variable":"v"}` | `440299/500000 + -1 * v` |
| 24 | coordinate | `{"box":1220,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 25 | coordinate | `{"box":1220,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 26 | coordinate | `{"box":1220,"direction":"lo","value":"361353/500000","variable":"r"}` | `-361353/500000 + 1 * r` |
| 27 | coordinate | `{"box":1220,"direction":"lo","value":"41657/50000","variable":"w"}` | `-41657/50000 + 1 * w` |
| 28 | coordinate | `{"box":1220,"direction":"lo","value":"136727/250000","variable":"j"}` | `-136727/250000 + 1 * j` |
| 29 | coordinate | `{"box":1220,"direction":"lo","value":"544649/1000000","variable":"k"}` | `-544649/1000000 + 1 * k` |
| 30 | coordinate | `{"box":1220,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 31 | coordinate | `{"box":1220,"direction":"lo","value":"195079/500000","variable":"f"}` | `-195079/500000 + 1 * f` |
| 32 | coordinate | `{"box":1220,"direction":"lo","value":"135501/250000","variable":"h"}` | `-135501/250000 + 1 * h` |
| 33 | coordinate | `{"box":1220,"direction":"lo","value":"397223/1000000","variable":"p"}` | `-397223/1000000 + 1 * p` |
| 34 | coordinate | `{"box":1220,"direction":"lo","value":"103767/1000000","variable":"u"}` | `-103767/1000000 + 1 * u` |
| 35 | coordinate | `{"box":1220,"direction":"lo","value":"55147/100000","variable":"v"}` | `-55147/100000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 6023000000 | 3 |
| 1 | 25391000000 | 9 |
| 2 | 8910000000 | 1 |
| 3 | 3721000000 | 10 |
| 4 | 22785000000 | 2 |
| 5 | 38055000000 | 4 |
| 6 | 21597000000 | 5 |
| 7 | 24676000000 | 0 |
| 8 | 33954000000 | 6 |
| 9 | 42155000000 | 7 |
| 10 | 2143000000 | 8 |
| 11 | 25391000000 | 24, 31 |
| 12 | 9744000000 | 21, 25 |
| 13 | 6023000000 | 20, 24 |
| 14 | 16481000000 | 22, 24 |
| 15 | 4065000000 | 25, 27 |
| 16 | 18720000000 | 12, 14 |
| 17 | 19064000000 | 16, 25 |
| 18 | 38055000000 | 18, 30 |
| 19 | 21597000000 | 30, 34 |
| 20 | 38055000000 | 15, 17 |
| 21 | 50067000000 | 23, 31 |
| 22 | 24676000000 | 14, 18 |
| 23 | 38055000000 | 29, 31 |
| 24 | 3448000000 | 19, 22 |
| 25 | 33954000000 | 15, 32 |
| 26 | 11081000000 | 27, 33 |
| 27 | 31074000000 | 14, 20 |
| 28 | 42155000000 | 21, 26 |
| 29 | 45876000000 | 16, 33 |
| 30 | 45876000000 | 15, 21 |
| 31 | 24676000000 | 14, 34 |
| 32 | 24676000000 | 26, 35 |
| 33 | 33954000000 | 16, 34 |
| 34 | 33954000000 | 15, 23 |
| 35 | 64940000000 | 26, 29 |
| 36 | 64939000000 | 15, 27 |
| 37 | 6023000000 | 24, 25 |
| 38 | 624988641 | 24 |
| 39 | 624988641 | 25 |
| 40 | 918270 | 34 |
| 41 | 1000000 | 19, 34 |
| 42 | 103767 | 19 |
| 43 | 1000000 | 22 |
| 44 | 544649 | 26 |
| 45 | 722706 | 29 |
| 46 | 1000000 | 14, 28 |
| 47 | 546908 | 14 |
| 48 | 42527559806 | 15 |
| 49 | 253530 | 16 |
| 50 | 825126 | 23 |
| 51 | 755540 | 32 |
| 52 | 394959 | 13 |
| 53 | 178439 | 30 |
| 54 | 375037 | 11 |
| 55 | 387659 | 18 |
| 56 | 60702 | 21 |
| 57 | 142164 | 12 |
| 58 | 6889 | 20 |
| 59 | 492686 | 27 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -4635322094873793/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -4635322094873793/1000000 | 1 | -4635322094873793/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1220 | -4635322094873793/1000000 |

## Stage 1221

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ+/BPR+/BPS+/PRS-/HQS+/EHQ- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ+/BPR+/BPS+/PRS-/HQS+/EHQ-:HHHHHH |
| Index | 0 |
| Context | 263 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1219 |
| Coordinate cut | j high 343063/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 270627/1000000 | 103767/1000000 | 270627/1000000 |
| c | 135501/250000 | 1 | 135501/250000 | 1 |
| e | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| f | 195079/500000 | 344349/500000 | 195079/500000 | 344349/500000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 397223/1000000 | 651139/1000000 | 397223/1000000 | 651139/1000000 |
| q | 196767/1000000 | 288239/500000 | 196767/1000000 | 288239/500000 |
| u | 103767/1000000 | 246589/500000 | 103767/1000000 | 246589/500000 |
| v | 55147/100000 | 440299/500000 | 55147/100000 | 440299/500000 |
| r | 361353/500000 | 1 | 361353/500000 | 1 |
| w | 41657/50000 | 1 | 41657/50000 | 1 |
| j | 343063/500000 | 896233/1000000 | 343063/500000 | 896233/1000000 |
| k | 544649/1000000 | 864963/1000000 | 544649/1000000 | 864963/1000000 |

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


## Stage 1222

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ+/BPR+/BPS+/PRS-/HQS+/EHQ- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ+/BPR+/BPS+/PRS-/HQS+/EHQ-:HHHHHHL |
| Index | 0 |
| Context | 263 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1221 |
| Coordinate cut | c low 662881/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 270627/1000000 | 103767/1000000 | 270627/1000000 |
| c | 135501/250000 | 662881/1000000 | 135501/250000 | 662881/1000000 |
| e | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| f | 195079/500000 | 344349/500000 | 195079/500000 | 344349/500000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 397223/1000000 | 651139/1000000 | 397223/1000000 | 651139/1000000 |
| q | 196767/1000000 | 288239/500000 | 196767/1000000 | 288239/500000 |
| u | 103767/1000000 | 246589/500000 | 103767/1000000 | 246589/500000 |
| v | 55147/100000 | 440299/500000 | 55147/100000 | 440299/500000 |
| r | 361353/500000 | 1 | 361353/500000 | 1 |
| w | 41657/50000 | 1 | 41657/50000 | 1 |
| j | 343063/500000 | 896233/1000000 | 343063/500000 | 896233/1000000 |
| k | 544649/1000000 | 864963/1000000 | 544649/1000000 | 864963/1000000 |

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
| 0 | bound | `{"direction":"lo","ref":"477:2372","triangle":"BCP","value":"12717/100000"}` | `1 * c * q + -1 * b * q + -12717/100000` |
| 1 | bound | `{"direction":"lo","ref":"477:2717","triangle":"BRS","value":"31913/250000"}` | `-1 * r * k + 1 * b * k + 1 * w * j + -1 * b * w + -31913/250000` |
| 2 | physical | `{"factor":10,"stage":477}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 3 | physical | `{"factor":109,"stage":477}` | `1/1 * w + 1/1 * h * r + -1/1 * h + -1/1 * e * r + -13857/20000` |
| 4 | physical | `{"factor":116,"stage":477}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 5 | physical | `{"factor":119,"stage":477}` | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 6 | physical | `{"factor":138,"stage":477}` | `1/1 * e + -1/1 * a` |
| 7 | physical | `{"factor":26,"stage":477}` | `1/1 * q + -1/1 * a + -1/1 * e * p + 1/1 * a * p + -93/1000` |
| 8 | physical | `{"factor":7,"stage":477}` | `1/1 * b * h + -1/1 * a * b + -93/1000` |
| 9 | physical | `{"factor":75,"stage":477}` | `1/1 * p * k + -1/1 * b * k + -1/1 * q * j + 1/1 * b * q + -93/1000` |
| 10 | physical | `{"factor":91,"stage":477}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 11 | coordinate | `{"box":1222,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 12 | coordinate | `{"box":1222,"direction":"hi","value":"270627/1000000","variable":"b"}` | `270627/1000000 + -1 * b` |
| 13 | coordinate | `{"box":1222,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 14 | coordinate | `{"box":1222,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 15 | coordinate | `{"box":1222,"direction":"hi","value":"896233/1000000","variable":"j"}` | `896233/1000000 + -1 * j` |
| 16 | coordinate | `{"box":1222,"direction":"hi","value":"864963/1000000","variable":"k"}` | `864963/1000000 + -1 * k` |
| 17 | coordinate | `{"box":1222,"direction":"hi","value":"662881/1000000","variable":"c"}` | `662881/1000000 + -1 * c` |
| 18 | coordinate | `{"box":1222,"direction":"hi","value":"6143/20000","variable":"e"}` | `6143/20000 + -1 * e` |
| 19 | coordinate | `{"box":1222,"direction":"hi","value":"344349/500000","variable":"f"}` | `344349/500000 + -1 * f` |
| 20 | coordinate | `{"box":1222,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 21 | coordinate | `{"box":1222,"direction":"hi","value":"651139/1000000","variable":"p"}` | `651139/1000000 + -1 * p` |
| 22 | coordinate | `{"box":1222,"direction":"hi","value":"288239/500000","variable":"q"}` | `288239/500000 + -1 * q` |
| 23 | coordinate | `{"box":1222,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 24 | coordinate | `{"box":1222,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 25 | coordinate | `{"box":1222,"direction":"lo","value":"361353/500000","variable":"r"}` | `-361353/500000 + 1 * r` |
| 26 | coordinate | `{"box":1222,"direction":"lo","value":"41657/50000","variable":"w"}` | `-41657/50000 + 1 * w` |
| 27 | coordinate | `{"box":1222,"direction":"lo","value":"343063/500000","variable":"j"}` | `-343063/500000 + 1 * j` |
| 28 | coordinate | `{"box":1222,"direction":"lo","value":"544649/1000000","variable":"k"}` | `-544649/1000000 + 1 * k` |
| 29 | coordinate | `{"box":1222,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 30 | coordinate | `{"box":1222,"direction":"lo","value":"195079/500000","variable":"f"}` | `-195079/500000 + 1 * f` |
| 31 | coordinate | `{"box":1222,"direction":"lo","value":"135501/250000","variable":"h"}` | `-135501/250000 + 1 * h` |
| 32 | coordinate | `{"box":1222,"direction":"lo","value":"397223/1000000","variable":"p"}` | `-397223/1000000 + 1 * p` |
| 33 | coordinate | `{"box":1222,"direction":"lo","value":"196767/1000000","variable":"q"}` | `-196767/1000000 + 1 * q` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 9731000000 | 8 |
| 1 | 85692000000 | 2 |
| 2 | 20127000000 | 7 |
| 3 | 81561000000 | 0 |
| 4 | 35298000000 | 9 |
| 5 | 11558000000 | 1 |
| 6 | 81561000000 | 10 |
| 7 | 6784000000 | 3 |
| 8 | 5146000000 | 4 |
| 9 | 21968000000 | 5 |
| 10 | 12005000000 | 6 |
| 11 | 95423000000 | 23, 24 |
| 12 | 9731000000 | 20, 24 |
| 13 | 39428000000 | 22, 24 |
| 14 | 105819000000 | 11, 32 |
| 15 | 11558000000 | 24, 26 |
| 16 | 23740000000 | 24, 28 |
| 17 | 81561000000 | 17, 31 |
| 18 | 20127000000 | 29, 32 |
| 19 | 11930000000 | 25, 29 |
| 20 | 5146000000 | 15, 29 |
| 21 | 21968000000 | 20, 30 |
| 22 | 21968000000 | 14, 19 |
| 23 | 45014000000 | 31, 32 |
| 24 | 36548000000 | 20, 21 |
| 25 | 15185000000 | 13, 20 |
| 26 | 35298000000 | 16, 32 |
| 27 | 35298000000 | 27, 33 |
| 28 | 6411000000 | 13, 16 |
| 29 | 6412000000 | 14, 27 |
| 30 | 1000000 | 12, 33 |
| 31 | 196767 | 12 |
| 32 | 270627 | 22 |
| 33 | 550272 | 33 |
| 34 | 17804 | 23 |
| 35 | 1000000 | 25, 28 |
| 36 | 762752 | 25 |
| 37 | 722706 | 28 |
| 38 | 783262 | 14 |
| 39 | 1000000 | 15 |
| 40 | 1000000 | 20, 32 |
| 41 | 1119929 | 20 |
| 42 | 1000000 | 21 |
| 43 | 1000000 | 20, 25 |
| 44 | 1000000 | 13 |
| 45 | 1439432 | 31 |
| 46 | 748874 | 16 |
| 47 | 225117 | 18 |
| 48 | 783237 | 24 |
| 49 | 516641 | 32 |
| 50 | 44206388244 | 17 |
| 51 | 496584 | 27 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -832543083155307/250000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -832543083155307/250000 | 1 | -832543083155307/250000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1222 | -832543083155307/250000 |

## Stage 1223

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ+/BPR+/BPS+/PRS-/HQS+/EHQ- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ+/BPR+/BPS+/PRS-/HQS+/EHQ-:HHHHHHH |
| Index | 0 |
| Context | 263 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1221 |
| Coordinate cut | c high 662881/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 270627/1000000 | 103767/1000000 | 270627/1000000 |
| c | 662881/1000000 | 1 | 662881/1000000 | 1 |
| e | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| f | 195079/500000 | 344349/500000 | 195079/500000 | 344349/500000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 397223/1000000 | 651139/1000000 | 397223/1000000 | 651139/1000000 |
| q | 196767/1000000 | 288239/500000 | 196767/1000000 | 288239/500000 |
| u | 103767/1000000 | 246589/500000 | 103767/1000000 | 246589/500000 |
| v | 55147/100000 | 440299/500000 | 55147/100000 | 440299/500000 |
| r | 361353/500000 | 1 | 361353/500000 | 1 |
| w | 41657/50000 | 1 | 41657/50000 | 1 |
| j | 343063/500000 | 896233/1000000 | 343063/500000 | 896233/1000000 |
| k | 544649/1000000 | 864963/1000000 | 544649/1000000 | 864963/1000000 |

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


## Stage 1224

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ+/BPR+/BPS+/PRS-/HQS+/EHQ- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ-/AFQ+/BPR+/BPS+/PRS-/HQS+/EHQ-:HHHHHHHL |
| Index | 0 |
| Context | 263 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1223 |
| Coordinate cut | u low 199751/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 270627/1000000 | 103767/1000000 | 270627/1000000 |
| c | 662881/1000000 | 1 | 662881/1000000 | 1 |
| e | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| f | 195079/500000 | 344349/500000 | 195079/500000 | 344349/500000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 397223/1000000 | 651139/1000000 | 397223/1000000 | 651139/1000000 |
| q | 196767/1000000 | 288239/500000 | 196767/1000000 | 288239/500000 |
| u | 103767/1000000 | 199751/500000 | 103767/1000000 | 199751/500000 |
| v | 55147/100000 | 440299/500000 | 55147/100000 | 440299/500000 |
| r | 361353/500000 | 1 | 361353/500000 | 1 |
| w | 41657/50000 | 1 | 41657/50000 | 1 |
| j | 343063/500000 | 896233/1000000 | 343063/500000 | 896233/1000000 |
| k | 544649/1000000 | 864963/1000000 | 544649/1000000 | 864963/1000000 |

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
