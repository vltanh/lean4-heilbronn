# BITT convex: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 740

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS-/BFP+/PQR+/AFP-/AQR+/EPQ+ |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS-/BFP+/PQR+/AFP-/AQR+/EPQ+:H |
| Index | 0 |
| Context | 71 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 738 |
| Coordinate cut | k high 769541/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 54347/500000 | 6143/20000 | 54347/500000 | 6143/20000 |
| b | 36379/250000 | 15761/31250 | 36379/250000 | 15761/31250 |
| c | 706599/1000000 | 1 | 706599/1000000 | 1 |
| e | 14313/125000 | 391/1000 | 14313/125000 | 391/1000 |
| f | 279/1000 | 579897/1000000 | 279/1000 | 579897/1000000 |
| h | 100193/125000 | 1 | 100193/125000 | 1 |
| p | 83511/500000 | 233717/500000 | 83511/500000 | 233717/500000 |
| q | 388589/1000000 | 369989/500000 | 388589/1000000 | 369989/500000 |
| u | 326037/1000000 | 372137/500000 | 326037/1000000 | 372137/500000 |
| v | 50861/250000 | 676753/1000000 | 50861/250000 | 676753/1000000 |
| r | 715651/1000000 | 1 | 715651/1000000 | 1 |
| w | 27049/62500 | 33731/40000 | 27049/62500 | 33731/40000 |
| j | 13857/20000 | 436197/500000 | 13857/20000 | 436197/500000 |
| k | 769541/1000000 | 1 | 769541/1000000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"96:5757","triangle":"ABQ","value":"36627/200000"}` | `1 * b * v + -1 * a * b + 1 * a * u + -36627/200000` |
| 1 | bound | `{"direction":"lo","ref":"96:5777","triangle":"EHQ","value":"35117/200000"}` | `-1 * v + -1 * h * u + 1 * h + 1 * e * u + -35117/200000` |
| 2 | bound | `{"direction":"lo","ref":"96:5800","triangle":"FQS","value":"207661/1000000"}` | `1 * u * k + -1 * u + -1 * f * k + -1 * v * j + 1 * f * v + 1 * j + -207661/1000000` |
| 3 | bound | `{"direction":"lo","ref":"96:5858","triangle":"APQ","value":"78043/500000"}` | `-1 * p * v + 1 * a * p + 1 * q * u + -1 * a * u + -78043/500000` |
| 4 | bound | `{"direction":"lo","ref":"96:5891","triangle":"AFQ","value":"78123/200000"}` | `-1 * f * v + 1 * a * f + 1 * u + -1 * a * u + -78123/200000` |
| 5 | bound | `{"direction":"lo","ref":"96:5910","triangle":"BHQ","value":"328927/1000000"}` | `1 * b * v + 1 * h * u + -1 * b * h + -328927/1000000` |
| 6 | bound | `{"direction":"lo","ref":"96:5918","triangle":"CEP","value":"335439/1000000"}` | `1 * q + -1 * c * q + -1 * e * p + 1 * c * e + -335439/1000000` |
| 7 | physical | `{"factor":115,"stage":96}` | `1/1 * p * v + -1/1 * e * p + -1/1 * v + -1/1 * q * u + 1/1 * q + 1/1 * e * u + -93/1000` |
| 8 | physical | `{"factor":120,"stage":96}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 9 | physical | `{"factor":130,"stage":96}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 10 | physical | `{"factor":36,"stage":96}` | `-1/1 * f * q + 1/1 * a * f + 1/1 * p + -1/1 * a * p + -93/1000` |
| 11 | physical | `{"factor":81,"stage":96}` | `-1/1 * u * k + 1/1 * b * k + 1/1 * v * j + -1/1 * b * v + -93/1000` |
| 12 | physical | `{"factor":92,"stage":96}` | `1/1 * f * v + -1/1 * c * v + -1/1 * u + 1/1 * c + -93/1000` |
| 13 | physical | `{"factor":95,"stage":96}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 14 | physical | `{"factor":96,"stage":96}` | `1/1 * c * v + 1/1 * h * u + -1/1 * c * h + -93/1000` |
| 15 | physical | `{"factor":99,"stage":96}` | `-1/1 * p * v + 1/1 * c * v + 1/1 * q * u + -1/1 * c * q + -93/1000` |
| 16 | coordinate | `{"box":740,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 17 | coordinate | `{"box":740,"direction":"hi","value":"15761/31250","variable":"b"}` | `15761/31250 + -1 * b` |
| 18 | coordinate | `{"box":740,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 19 | coordinate | `{"box":740,"direction":"hi","value":"33731/40000","variable":"w"}` | `33731/40000 + -1 * w` |
| 20 | coordinate | `{"box":740,"direction":"hi","value":"436197/500000","variable":"j"}` | `436197/500000 + -1 * j` |
| 21 | coordinate | `{"box":740,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 22 | coordinate | `{"box":740,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 23 | coordinate | `{"box":740,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 24 | coordinate | `{"box":740,"direction":"hi","value":"579897/1000000","variable":"f"}` | `579897/1000000 + -1 * f` |
| 25 | coordinate | `{"box":740,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 26 | coordinate | `{"box":740,"direction":"hi","value":"233717/500000","variable":"p"}` | `233717/500000 + -1 * p` |
| 27 | coordinate | `{"box":740,"direction":"hi","value":"369989/500000","variable":"q"}` | `369989/500000 + -1 * q` |
| 28 | coordinate | `{"box":740,"direction":"hi","value":"372137/500000","variable":"u"}` | `372137/500000 + -1 * u` |
| 29 | coordinate | `{"box":740,"direction":"hi","value":"676753/1000000","variable":"v"}` | `676753/1000000 + -1 * v` |
| 30 | coordinate | `{"box":740,"direction":"lo","value":"54347/500000","variable":"a"}` | `-54347/500000 + 1 * a` |
| 31 | coordinate | `{"box":740,"direction":"lo","value":"36379/250000","variable":"b"}` | `-36379/250000 + 1 * b` |
| 32 | coordinate | `{"box":740,"direction":"lo","value":"13857/20000","variable":"j"}` | `-13857/20000 + 1 * j` |
| 33 | coordinate | `{"box":740,"direction":"lo","value":"769541/1000000","variable":"k"}` | `-769541/1000000 + 1 * k` |
| 34 | coordinate | `{"box":740,"direction":"lo","value":"706599/1000000","variable":"c"}` | `-706599/1000000 + 1 * c` |
| 35 | coordinate | `{"box":740,"direction":"lo","value":"14313/125000","variable":"e"}` | `-14313/125000 + 1 * e` |
| 36 | coordinate | `{"box":740,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 37 | coordinate | `{"box":740,"direction":"lo","value":"100193/125000","variable":"h"}` | `-100193/125000 + 1 * h` |
| 38 | coordinate | `{"box":740,"direction":"lo","value":"83511/500000","variable":"p"}` | `-83511/500000 + 1 * p` |
| 39 | coordinate | `{"box":740,"direction":"lo","value":"388589/1000000","variable":"q"}` | `-388589/1000000 + 1 * q` |
| 40 | coordinate | `{"box":740,"direction":"lo","value":"326037/1000000","variable":"u"}` | `-326037/1000000 + 1 * u` |
| 41 | coordinate | `{"box":740,"direction":"lo","value":"50861/250000","variable":"v"}` | `-50861/250000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 12684000000 | 0 |
| 1 | 32757000000 | 10 |
| 2 | 28206000000 | 4 |
| 3 | 2288000000 | 3 |
| 4 | 25449000000 | 5 |
| 5 | 38132000000 | 11 |
| 6 | 48888000000 | 6 |
| 7 | 19953000000 | 12 |
| 8 | 2792000000 | 13 |
| 9 | 1545000000 | 14 |
| 10 | 18408000000 | 15 |
| 11 | 5370000000 | 1 |
| 12 | 20696000000 | 7 |
| 13 | 34240000000 | 8 |
| 14 | 8253000000 | 2 |
| 15 | 7363000000 | 9 |
| 16 | 12684000000 | 16, 17 |
| 17 | 945000000 | 24, 30 |
| 18 | 60018000000 | 16, 36 |
| 19 | 25449000000 | 17, 25 |
| 20 | 30469000000 | 30, 38 |
| 21 | 17810000000 | 30, 40 |
| 22 | 38132000000 | 17, 33 |
| 23 | 48888000000 | 23, 34 |
| 24 | 1247000000 | 25, 34 |
| 25 | 32865000000 | 34, 39 |
| 26 | 37223000000 | 22, 27 |
| 27 | 69584000000 | 23, 26 |
| 28 | 26066000000 | 23, 40 |
| 29 | 34240000000 | 18, 23 |
| 30 | 34240000000 | 23, 32 |
| 31 | 32757000000 | 36, 39 |
| 32 | 7363000000 | 19, 36 |
| 33 | 15616000000 | 33, 36 |
| 34 | 2792000000 | 37, 38 |
| 35 | 21624000000 | 25, 40 |
| 36 | 29879000000 | 21, 28 |
| 37 | 29879000000 | 20, 41 |
| 38 | 41603000000 | 18, 33 |
| 39 | 41603000000 | 19, 20 |
| 40 | 1000000 | 17, 41 |
| 41 | 203444 | 17 |
| 42 | 764678 | 29 |
| 43 | 52334 | 38 |
| 44 | 34140 | 40 |
| 45 | 326037 | 25 |
| 46 | 1000000 | 28 |
| 47 | 579135 | 39 |
| 48 | 29421 | 22 |
| 49 | 552468 | 37 |
| 50 | 76382 | 33 |
| 51 | 69418 | 19 |
| 52 | 226549 | 32 |
| 53 | 11264374223 | 18 |
| 54 | 111609 | 16 |
| 55 | 753188 | 31 |
| 56 | 116226 | 24 |
| 57 | 51102 | 35 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -65776767326099/125000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -65776767326099/125000 | 1 | -65776767326099/125000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 740 | -65776767326099/125000 |

## Stage 741

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS-/BFP+/PQR+/AFP-/AQR+/EPQ- |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS-/BFP+/PQR+/AFP-/AQR+/EPQ-:root |
| Index | 0 |
| Context | 72 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 97 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 54347/500000 | 6143/20000 | 54347/500000 | 6143/20000 |
| b | 72197/500000 | 15761/31250 | 72197/500000 | 15761/31250 |
| c | 70629/100000 | 1 | 70629/100000 | 1 |
| e | 54347/500000 | 391/1000 | 54347/500000 | 391/1000 |
| f | 279/1000 | 116527/200000 | 279/1000 | 116527/200000 |
| h | 100193/125000 | 1 | 100193/125000 | 1 |
| p | 36491/250000 | 460921/1000000 | 36491/250000 | 460921/1000000 |
| q | 285061/1000000 | 158027/250000 | 285061/1000000 | 158027/250000 |
| u | 181319/500000 | 372137/500000 | 181319/500000 | 372137/500000 |
| v | 135199/500000 | 676753/1000000 | 135199/500000 | 676753/1000000 |
| r | 8943/12500 | 1 | 8943/12500 | 1 |
| w | 217689/500000 | 26361/31250 | 217689/500000 | 26361/31250 |
| j | 13857/20000 | 174689/200000 | 13857/20000 | 174689/200000 |
| k | 5321/10000 | 1 | 5321/10000 | 1 |

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


## Stage 742

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS-/BFP+/PQR+/AFP-/AQR+/EPQ- |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS-/BFP+/PQR+/AFP-/AQR+/EPQ-:L |
| Index | 0 |
| Context | 72 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 741 |
| Coordinate cut | k low 687973/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 54347/500000 | 6143/20000 | 54347/500000 | 6143/20000 |
| b | 72197/500000 | 15761/31250 | 72197/500000 | 15761/31250 |
| c | 70629/100000 | 1 | 70629/100000 | 1 |
| e | 54347/500000 | 391/1000 | 54347/500000 | 391/1000 |
| f | 279/1000 | 116527/200000 | 279/1000 | 116527/200000 |
| h | 100193/125000 | 1 | 100193/125000 | 1 |
| p | 36491/250000 | 460921/1000000 | 36491/250000 | 460921/1000000 |
| q | 285061/1000000 | 158027/250000 | 285061/1000000 | 158027/250000 |
| u | 181319/500000 | 372137/500000 | 181319/500000 | 372137/500000 |
| v | 135199/500000 | 676753/1000000 | 135199/500000 | 676753/1000000 |
| r | 8943/12500 | 1 | 8943/12500 | 1 |
| w | 217689/500000 | 26361/31250 | 217689/500000 | 26361/31250 |
| j | 13857/20000 | 174689/200000 | 13857/20000 | 174689/200000 |
| k | 5321/10000 | 687973/1000000 | 5321/10000 | 687973/1000000 |

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
| 0 | bound | `{"direction":"lo","ref":"97:4358","triangle":"PQS","value":"136927/1000000"}` | `1 * u * k + -1 * q * u + -1 * p * k + -1 * v * j + 1 * p * v + 1 * q * j + -136927/1000000` |
| 1 | bound | `{"direction":"lo","ref":"97:4388","triangle":"EQR","value":"39737/250000"}` | `-1 * u * w + 1 * e * u + 1 * w + 1 * v * r + -1 * v + -1 * e * r + -39737/250000` |
| 2 | bound | `{"direction":"lo","ref":"97:4423","triangle":"BPS","value":"163331/500000"}` | `-1 * p * k + 1 * b * k + 1 * q * j + -1 * b * q + -163331/500000` |
| 3 | bound | `{"direction":"lo","ref":"97:4430","triangle":"EPS","value":"401791/1000000"}` | `-1 * p * k + 1 * e * p + 1 * k + 1 * q * j + -1 * q + -1 * e * j + -401791/1000000` |
| 4 | physical | `{"factor":115,"stage":97}` | `-1/1 * p * v + 1/1 * e * p + 1/1 * v + 1/1 * q * u + -1/1 * q + -1/1 * e * u + -93/1000` |
| 5 | physical | `{"factor":120,"stage":97}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 6 | physical | `{"factor":130,"stage":97}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 7 | physical | `{"factor":142,"stage":97}` | `1/1 * e + -1/1 * a` |
| 8 | physical | `{"factor":35,"stage":97}` | `-1/1 * f * q + 1/1 * a * f + 1/1 * p + -1/1 * a * p + -93/1000` |
| 9 | physical | `{"factor":47,"stage":97}` | `1/1 * u * w + -1/1 * a * u + -1/1 * v * r + 1/1 * a * r + -93/1000` |
| 10 | physical | `{"factor":50,"stage":97}` | `1/1 * c * e + -1/1 * b * e + -93/1000` |
| 11 | physical | `{"factor":61,"stage":97}` | `1/1 * h + -1/1 * b * h + 1/1 * b * e + -13857/20000` |
| 12 | physical | `{"factor":73,"stage":97}` | `1/1 * b * q + 1/1 * h * p + -1/1 * b * h + -93/1000` |
| 13 | physical | `{"factor":81,"stage":97}` | `-1/1 * u * k + 1/1 * b * k + 1/1 * v * j + -1/1 * b * v + -93/1000` |
| 14 | physical | `{"factor":96,"stage":97}` | `1/1 * c * v + 1/1 * h * u + -1/1 * c * h + -93/1000` |
| 15 | physical | `{"factor":987,"stage":97}` | `-445653/500000 * f * k + -12256479/25000000 * a * f + 445653/500000 * j + 12256479/25000000 * a * j + -34539129/25000000 + 34539129/25000000 * e * f + 34539129/25000000 * k + -34539129/25000000 * e * j` |
| 16 | coordinate | `{"box":742,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 17 | coordinate | `{"box":742,"direction":"hi","value":"15761/31250","variable":"b"}` | `15761/31250 + -1 * b` |
| 18 | coordinate | `{"box":742,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 19 | coordinate | `{"box":742,"direction":"hi","value":"26361/31250","variable":"w"}` | `26361/31250 + -1 * w` |
| 20 | coordinate | `{"box":742,"direction":"hi","value":"174689/200000","variable":"j"}` | `174689/200000 + -1 * j` |
| 21 | coordinate | `{"box":742,"direction":"hi","value":"687973/1000000","variable":"k"}` | `687973/1000000 + -1 * k` |
| 22 | coordinate | `{"box":742,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 23 | coordinate | `{"box":742,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 24 | coordinate | `{"box":742,"direction":"hi","value":"116527/200000","variable":"f"}` | `116527/200000 + -1 * f` |
| 25 | coordinate | `{"box":742,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 26 | coordinate | `{"box":742,"direction":"hi","value":"460921/1000000","variable":"p"}` | `460921/1000000 + -1 * p` |
| 27 | coordinate | `{"box":742,"direction":"hi","value":"158027/250000","variable":"q"}` | `158027/250000 + -1 * q` |
| 28 | coordinate | `{"box":742,"direction":"hi","value":"372137/500000","variable":"u"}` | `372137/500000 + -1 * u` |
| 29 | coordinate | `{"box":742,"direction":"lo","value":"54347/500000","variable":"a"}` | `-54347/500000 + 1 * a` |
| 30 | coordinate | `{"box":742,"direction":"lo","value":"72197/500000","variable":"b"}` | `-72197/500000 + 1 * b` |
| 31 | coordinate | `{"box":742,"direction":"lo","value":"8943/12500","variable":"r"}` | `-8943/12500 + 1 * r` |
| 32 | coordinate | `{"box":742,"direction":"lo","value":"217689/500000","variable":"w"}` | `-217689/500000 + 1 * w` |
| 33 | coordinate | `{"box":742,"direction":"lo","value":"13857/20000","variable":"j"}` | `-13857/20000 + 1 * j` |
| 34 | coordinate | `{"box":742,"direction":"lo","value":"5321/10000","variable":"k"}` | `-5321/10000 + 1 * k` |
| 35 | coordinate | `{"box":742,"direction":"lo","value":"70629/100000","variable":"c"}` | `-70629/100000 + 1 * c` |
| 36 | coordinate | `{"box":742,"direction":"lo","value":"54347/500000","variable":"e"}` | `-54347/500000 + 1 * e` |
| 37 | coordinate | `{"box":742,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 38 | coordinate | `{"box":742,"direction":"lo","value":"100193/125000","variable":"h"}` | `-100193/125000 + 1 * h` |
| 39 | coordinate | `{"box":742,"direction":"lo","value":"36491/250000","variable":"p"}` | `-36491/250000 + 1 * p` |
| 40 | coordinate | `{"box":742,"direction":"lo","value":"285061/1000000","variable":"q"}` | `-285061/1000000 + 1 * q` |
| 41 | coordinate | `{"box":742,"direction":"lo","value":"181319/500000","variable":"u"}` | `-181319/500000 + 1 * u` |
| 42 | coordinate | `{"box":742,"direction":"lo","value":"135199/500000","variable":"v"}` | `-135199/500000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 1918750000000000 | 8 |
| 1 | 33062500000000000 | 9 |
| 2 | 5797500000000000 | 10 |
| 3 | 5797500000000000 | 11 |
| 4 | 16247500000000000 | 12 |
| 5 | 4701250000000000 | 2 |
| 6 | 32732500000000000 | 13 |
| 7 | 1186250000000000 | 14 |
| 8 | 37263750000000000 | 4 |
| 9 | 18682500000000000 | 3 |
| 10 | 33062500000000000 | 1 |
| 11 | 42001250000000000 | 5 |
| 12 | 77975000000000000 | 6 |
| 13 | 32732500000000000 | 0 |
| 14 | 22468750000000000 | 7 |
| 15 | 3912500000000000 | 15 |
| 16 | 9326250000000000 | 30, 38 |
| 17 | 12718750000000000 | 17, 25 |
| 18 | 11546250000000000 | 17, 40 |
| 19 | 1918750000000000 | 29, 39 |
| 20 | 32732500000000000 | 30, 42 |
| 21 | 33062500000000000 | 29, 41 |
| 22 | 33062500000000000 | 18, 29 |
| 23 | 37435000000000000 | 21, 30 |
| 24 | 1918750000000000 | 20, 29 |
| 25 | 5797500000000000 | 22, 36 |
| 26 | 1186250000000000 | 35, 38 |
| 27 | 1186250000000000 | 22, 42 |
| 28 | 5406250000000000 | 24, 36 |
| 29 | 55947500000000000 | 23, 39 |
| 30 | 4201250000000000 | 36, 41 |
| 31 | 75063750000000000 | 31, 36 |
| 32 | 17912500000000000 | 20, 36 |
| 33 | 1918750000000000 | 37, 40 |
| 34 | 54032500000000000 | 19, 37 |
| 35 | 23942500000000000 | 24, 32 |
| 36 | 81462500000000000 | 21, 24 |
| 37 | 16247500000000000 | 25, 39 |
| 38 | 1186250000000000 | 25, 41 |
| 39 | 4531250000000000 | 39, 42 |
| 40 | 4531250000000000 | 27, 41 |
| 41 | 56117500000000000 | 21, 26 |
| 42 | 56117500000000000 | 20, 40 |
| 43 | 119975000000000000 | 21, 31 |
| 44 | 3898750000000000 | 32, 33 |
| 45 | 116077500000000000 | 19, 20 |
| 46 | 611036500000 | 16, 37 |
| 47 | 170479183500 | 16 |
| 48 | 328832688475 | 24 |
| 49 | 1265247500000 | 26 |
| 50 | 11362500000 | 25 |
| 51 | 1250000000000 | 26, 34 |
| 52 | 1980709749625 | 21 |
| 53 | 1250000000000 | 30, 34 |
| 54 | 665125000000 | 30 |
| 55 | 1891319000000 | 34 |
| 56 | 1250000000000 | 33, 40 |
| 57 | 866062500000 | 40 |
| 58 | 966964751331 | 33 |
| 59 | 1250000000000 | 36, 39 |
| 60 | 426945908500 | 36 |
| 61 | 135867500000 | 39 |
| 62 | 275980000000 | 42 |
| 63 | 546255000000 | 27 |
| 64 | 876311500000 | 23, 33 |
| 65 | 1489876172775 | 23 |
| 66 | 732882796500 | 20 |
| 67 | 861125000000 | 19 |
| 68 | 1250000000000 | 18, 34 |
| 69 | 665125000000 | 18 |
| 70 | 866062500000 | 32 |
| 71 | 723192500000 | 31 |
| 72 | 265275000000 | 24, 34 |
| 73 | 538062889025 | 29 |
| 74 | 611036500000 | 29, 33 |
| 75 | 876311500000 | 36, 37 |
| 76 | 168413552181 | 37 |
| 77 | 702561250000 | 17 |
| 78 | 143332500000 | 28 |
| 79 | 81522500000 | 22 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -40081398295708469053/5000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -40081398295708469053/5000 | 1 | -40081398295708469053/5000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 742 | -40081398295708469053/5000 |

## Stage 743

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS-/BFP+/PQR+/AFP-/AQR+/EPQ- |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS-/BFP+/PQR+/AFP-/AQR+/EPQ-:H |
| Index | 0 |
| Context | 72 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 741 |
| Coordinate cut | k high 687973/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 54347/500000 | 6143/20000 | 54347/500000 | 6143/20000 |
| b | 72197/500000 | 15761/31250 | 72197/500000 | 15761/31250 |
| c | 70629/100000 | 1 | 70629/100000 | 1 |
| e | 54347/500000 | 391/1000 | 54347/500000 | 391/1000 |
| f | 279/1000 | 116527/200000 | 279/1000 | 116527/200000 |
| h | 100193/125000 | 1 | 100193/125000 | 1 |
| p | 36491/250000 | 460921/1000000 | 36491/250000 | 460921/1000000 |
| q | 285061/1000000 | 158027/250000 | 285061/1000000 | 158027/250000 |
| u | 181319/500000 | 372137/500000 | 181319/500000 | 372137/500000 |
| v | 135199/500000 | 676753/1000000 | 135199/500000 | 676753/1000000 |
| r | 8943/12500 | 1 | 8943/12500 | 1 |
| w | 217689/500000 | 26361/31250 | 217689/500000 | 26361/31250 |
| j | 13857/20000 | 174689/200000 | 13857/20000 | 174689/200000 |
| k | 687973/1000000 | 1 | 687973/1000000 | 1 |

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


## Stage 744

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS-/BFP+/PQR+/AFP-/AQR+/EPQ- |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS-/BFP+/PQR+/AFP-/AQR+/EPQ-:HL |
| Index | 0 |
| Context | 72 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 743 |
| Coordinate cut | w low 586153/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 54347/500000 | 6143/20000 | 54347/500000 | 6143/20000 |
| b | 72197/500000 | 15761/31250 | 72197/500000 | 15761/31250 |
| c | 70629/100000 | 1 | 70629/100000 | 1 |
| e | 54347/500000 | 391/1000 | 54347/500000 | 391/1000 |
| f | 279/1000 | 116527/200000 | 279/1000 | 116527/200000 |
| h | 100193/125000 | 1 | 100193/125000 | 1 |
| p | 36491/250000 | 460921/1000000 | 36491/250000 | 460921/1000000 |
| q | 285061/1000000 | 158027/250000 | 285061/1000000 | 158027/250000 |
| u | 181319/500000 | 372137/500000 | 181319/500000 | 372137/500000 |
| v | 135199/500000 | 676753/1000000 | 135199/500000 | 676753/1000000 |
| r | 8943/12500 | 1 | 8943/12500 | 1 |
| w | 217689/500000 | 586153/1000000 | 217689/500000 | 586153/1000000 |
| j | 13857/20000 | 174689/200000 | 13857/20000 | 174689/200000 |
| k | 687973/1000000 | 1 | 687973/1000000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"97:4335","triangle":"BEP","value":"14159/50000"}` | `1 * q + -1 * b * q + -1 * e * p + 1 * b * e + -14159/50000` |
| 1 | bound | `{"direction":"lo","ref":"97:4358","triangle":"PQS","value":"136927/1000000"}` | `1 * u * k + -1 * q * u + -1 * p * k + -1 * v * j + 1 * p * v + 1 * q * j + -136927/1000000` |
| 2 | bound | `{"direction":"lo","ref":"97:4388","triangle":"EQR","value":"39737/250000"}` | `-1 * u * w + 1 * e * u + 1 * w + 1 * v * r + -1 * v + -1 * e * r + -39737/250000` |
| 3 | bound | `{"direction":"lo","ref":"97:4429","triangle":"EPR","value":"179029/500000"}` | `-1 * p * w + 1 * e * p + 1 * w + 1 * q * r + -1 * q + -1 * e * r + -179029/500000` |
| 4 | physical | `{"factor":1068,"stage":97}` | `-12079/20000 * r * k + 12079/20000 * q * r + -8381/20000 * p * k + 12079/20000 * w * j + -12079/20000 * p * w + 8381/20000 * q * j + 1023/1000 * u * k + -1023/1000 * q * u + -1023/1000 * v * j + 1023/1000 * p * v` |
| 5 | physical | `{"factor":115,"stage":97}` | `-1/1 * p * v + 1/1 * e * p + 1/1 * v + 1/1 * q * u + -1/1 * q + -1/1 * e * u + -93/1000` |
| 6 | physical | `{"factor":120,"stage":97}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 7 | physical | `{"factor":142,"stage":97}` | `1/1 * e + -1/1 * a` |
| 8 | physical | `{"factor":47,"stage":97}` | `1/1 * u * w + -1/1 * a * u + -1/1 * v * r + 1/1 * a * r + -93/1000` |
| 9 | physical | `{"factor":50,"stage":97}` | `1/1 * c * e + -1/1 * b * e + -93/1000` |
| 10 | physical | `{"factor":61,"stage":97}` | `1/1 * h + -1/1 * b * h + 1/1 * b * e + -13857/20000` |
| 11 | physical | `{"factor":73,"stage":97}` | `1/1 * b * q + 1/1 * h * p + -1/1 * b * h + -93/1000` |
| 12 | physical | `{"factor":81,"stage":97}` | `-1/1 * u * k + 1/1 * b * k + 1/1 * v * j + -1/1 * b * v + -93/1000` |
| 13 | physical | `{"factor":96,"stage":97}` | `1/1 * c * v + 1/1 * h * u + -1/1 * c * h + -93/1000` |
| 14 | coordinate | `{"box":744,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 15 | coordinate | `{"box":744,"direction":"hi","value":"15761/31250","variable":"b"}` | `15761/31250 + -1 * b` |
| 16 | coordinate | `{"box":744,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 17 | coordinate | `{"box":744,"direction":"hi","value":"586153/1000000","variable":"w"}` | `586153/1000000 + -1 * w` |
| 18 | coordinate | `{"box":744,"direction":"hi","value":"174689/200000","variable":"j"}` | `174689/200000 + -1 * j` |
| 19 | coordinate | `{"box":744,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 20 | coordinate | `{"box":744,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 21 | coordinate | `{"box":744,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 22 | coordinate | `{"box":744,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 23 | coordinate | `{"box":744,"direction":"hi","value":"460921/1000000","variable":"p"}` | `460921/1000000 + -1 * p` |
| 24 | coordinate | `{"box":744,"direction":"hi","value":"158027/250000","variable":"q"}` | `158027/250000 + -1 * q` |
| 25 | coordinate | `{"box":744,"direction":"hi","value":"372137/500000","variable":"u"}` | `372137/500000 + -1 * u` |
| 26 | coordinate | `{"box":744,"direction":"hi","value":"676753/1000000","variable":"v"}` | `676753/1000000 + -1 * v` |
| 27 | coordinate | `{"box":744,"direction":"lo","value":"54347/500000","variable":"a"}` | `-54347/500000 + 1 * a` |
| 28 | coordinate | `{"box":744,"direction":"lo","value":"72197/500000","variable":"b"}` | `-72197/500000 + 1 * b` |
| 29 | coordinate | `{"box":744,"direction":"lo","value":"8943/12500","variable":"r"}` | `-8943/12500 + 1 * r` |
| 30 | coordinate | `{"box":744,"direction":"lo","value":"217689/500000","variable":"w"}` | `-217689/500000 + 1 * w` |
| 31 | coordinate | `{"box":744,"direction":"lo","value":"13857/20000","variable":"j"}` | `-13857/20000 + 1 * j` |
| 32 | coordinate | `{"box":744,"direction":"lo","value":"687973/1000000","variable":"k"}` | `-687973/1000000 + 1 * k` |
| 33 | coordinate | `{"box":744,"direction":"lo","value":"70629/100000","variable":"c"}` | `-70629/100000 + 1 * c` |
| 34 | coordinate | `{"box":744,"direction":"lo","value":"54347/500000","variable":"e"}` | `-54347/500000 + 1 * e` |
| 35 | coordinate | `{"box":744,"direction":"lo","value":"100193/125000","variable":"h"}` | `-100193/125000 + 1 * h` |
| 36 | coordinate | `{"box":744,"direction":"lo","value":"36491/250000","variable":"p"}` | `-36491/250000 + 1 * p` |
| 37 | coordinate | `{"box":744,"direction":"lo","value":"285061/1000000","variable":"q"}` | `-285061/1000000 + 1 * q` |
| 38 | coordinate | `{"box":744,"direction":"lo","value":"181319/500000","variable":"u"}` | `-181319/500000 + 1 * u` |
| 39 | coordinate | `{"box":744,"direction":"lo","value":"135199/500000","variable":"v"}` | `-135199/500000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 227430000000000 | 8 |
| 1 | 55680000000000 | 9 |
| 2 | 54610000000000 | 10 |
| 3 | 1075000000000 | 0 |
| 4 | 64595000000000 | 11 |
| 5 | 242105000000000 | 12 |
| 6 | 11395000000000 | 13 |
| 7 | 242105000000000 | 5 |
| 8 | 13435000000000 | 3 |
| 9 | 196180000000000 | 2 |
| 10 | 270310000000000 | 6 |
| 11 | 70015000000000 | 1 |
| 12 | 144955000000000 | 7 |
| 13 | 168220000000000 | 4 |
| 14 | 119205000000000 | 15, 22 |
| 15 | 63520000000000 | 15, 37 |
| 16 | 242105000000000 | 28, 39 |
| 17 | 227430000000000 | 27, 38 |
| 18 | 227430000000000 | 16, 27 |
| 19 | 242105000000000 | 15, 32 |
| 20 | 55680000000000 | 20, 34 |
| 21 | 11395000000000 | 33, 35 |
| 22 | 11395000000000 | 20, 39 |
| 23 | 254465000000000 | 21, 36 |
| 24 | 45925000000000 | 34, 38 |
| 25 | 79770000000000 | 29, 34 |
| 26 | 400165000000000 | 16, 21 |
| 27 | 270310000000000 | 18, 34 |
| 28 | 64595000000000 | 22, 36 |
| 29 | 11395000000000 | 22, 38 |
| 30 | 115030000000000 | 17, 23 |
| 31 | 115030000000000 | 16, 37 |
| 32 | 140507591000000 | 32, 36 |
| 33 | 55620000000000 | 18, 37 |
| 34 | 84887591000000 | 24, 31 |
| 35 | 31250000000000 | 17, 38 |
| 36 | 31250000000000 | 29, 39 |
| 37 | 168715000000000 | 16, 32 |
| 38 | 168715000000000 | 17, 18 |
| 39 | 5000000000 | 15, 34 |
| 40 | 543470000 | 15 |
| 41 | 9676160000 | 21 |
| 42 | 1349880000 | 22 |
| 43 | 4977810000 | 37 |
| 44 | 940000000 | 32, 38 |
| 45 | 1190164620 | 38 |
| 46 | 1770053804 | 32 |
| 47 | 940000000 | 26, 31 |
| 48 | 4641909000 | 26 |
| 49 | 3134998405 | 18 |
| 50 | 940000000 | 36, 39 |
| 51 | 2676282445 | 36 |
| 52 | 137206160 | 39 |
| 53 | 940000000 | 24, 38 |
| 54 | 3187035430 | 24 |
| 55 | 1370531520 | 25 |
| 56 | 11151740000 | 34 |
| 57 | 1469000000 | 30, 36 |
| 58 | 214421116 | 30 |
| 59 | 290875439491650 | 17 |
| 60 | 1469000000 | 24, 29 |
| 61 | 4838566652 | 16 |
| 62 | 10000000000 | 21, 29 |
| 63 | 1469000000 | 29, 32 |
| 64 | 3775567337 | 29 |
| 65 | 2469140000 | 19 |
| 66 | 1469000000 | 17, 31 |
| 67 | 239660000 | 14 |
| 68 | 929905000 | 28 |
| 69 | 326750000 | 33 |
| 70 | 1989045000 | 23 |
| 71 | 147855000 | 31 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -3393926573553715223/200000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -3393926573553715223/200000 | 1 | -3393926573553715223/200000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 744 | -3393926573553715223/200000 |
