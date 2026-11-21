# BITT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 1035

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP+/BQS-/PQS-/APS+/AQR-/HQS-/CFQ+/CRS+/BRS- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP+/BQS-/PQS-/APS+/AQR-/HQS-/CFQ+/CRS+/BRS-:LH |
| Index | 0 |
| Context | 188 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1001 |
| Coordinate cut | b high 4781/10000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 111793/1000000 | 6143/20000 | 111793/1000000 | 6143/20000 |
| b | 4781/10000 | 567233/1000000 | 4781/10000 | 567233/1000000 |
| c | 346863/500000 | 1 | 346863/500000 | 1 |
| e | 111793/1000000 | 421967/1000000 | 111793/1000000 | 421967/1000000 |
| f | 279/1000 | 137177/200000 | 279/1000 | 137177/200000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 65293/500000 | 104699/200000 | 65293/500000 | 104699/200000 |
| q | 25599/125000 | 487263/1000000 | 25599/125000 | 487263/1000000 |
| u | 81541/250000 | 654223/1000000 | 81541/250000 | 654223/1000000 |
| v | 293403/500000 | 907/1000 | 293403/500000 | 907/1000 |
| r | 125971/200000 | 1 | 125971/200000 | 1 |
| w | 402321/500000 | 1 | 402321/500000 | 1 |
| j | 57203/100000 | 179059/200000 | 57203/100000 | 179059/200000 |
| k | 496573/1000000 | 871013/1000000 | 496573/1000000 | 871013/1000000 |

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
| 0 | bound | `{"direction":"lo","ref":"402:2010","triangle":"EQS","value":"15179/125000"}` | `-1 * u * k + 1 * e * u + 1 * k + 1 * v * j + -1 * v + -1 * e * j + -15179/125000` |
| 1 | bound | `{"direction":"lo","ref":"402:2108","triangle":"BCF","value":"247671/500000"}` | `1 * c + -1 * b + -247671/500000` |
| 2 | physical | `{"factor":119,"stage":402}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 3 | physical | `{"factor":128,"stage":402}` | `1/1 * u * k + -1/1 * u + -1/1 * f * k + -1/1 * v * j + 1/1 * f * v + 1/1 * j + -93/1000` |
| 4 | physical | `{"factor":142,"stage":402}` | `1/1 * f + -1/1 * b` |
| 5 | physical | `{"factor":46,"stage":402}` | `-1/1 * u * w + 1/1 * a * u + 1/1 * v * r + -1/1 * a * r + -93/1000` |
| 6 | physical | `{"factor":68,"stage":402}` | `-1/1 * f * v + 1/1 * b * v + 1/1 * u + -1/1 * b + -93/1000` |
| 7 | physical | `{"factor":80,"stage":402}` | `-1/1 * r * k + 1/1 * b * k + 1/1 * w * j + -1/1 * b * w + -93/1000` |
| 8 | physical | `{"factor":86,"stage":402}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 9 | physical | `{"factor":87,"stage":402}` | `1/1 * k + -1/1 * c * k + -1/1 * e * j + 1/1 * c * e + -93/1000` |
| 10 | physical | `{"factor":90,"stage":402}` | `1/1 * f * v + -1/1 * c * v + -1/1 * u + 1/1 * c + -93/1000` |
| 11 | coordinate | `{"box":1035,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 12 | coordinate | `{"box":1035,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 13 | coordinate | `{"box":1035,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 14 | coordinate | `{"box":1035,"direction":"hi","value":"179059/200000","variable":"j"}` | `179059/200000 + -1 * j` |
| 15 | coordinate | `{"box":1035,"direction":"hi","value":"871013/1000000","variable":"k"}` | `871013/1000000 + -1 * k` |
| 16 | coordinate | `{"box":1035,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 17 | coordinate | `{"box":1035,"direction":"hi","value":"421967/1000000","variable":"e"}` | `421967/1000000 + -1 * e` |
| 18 | coordinate | `{"box":1035,"direction":"hi","value":"137177/200000","variable":"f"}` | `137177/200000 + -1 * f` |
| 19 | coordinate | `{"box":1035,"direction":"hi","value":"654223/1000000","variable":"u"}` | `654223/1000000 + -1 * u` |
| 20 | coordinate | `{"box":1035,"direction":"hi","value":"907/1000","variable":"v"}` | `907/1000 + -1 * v` |
| 21 | coordinate | `{"box":1035,"direction":"lo","value":"111793/1000000","variable":"a"}` | `-111793/1000000 + 1 * a` |
| 22 | coordinate | `{"box":1035,"direction":"lo","value":"4781/10000","variable":"b"}` | `-4781/10000 + 1 * b` |
| 23 | coordinate | `{"box":1035,"direction":"lo","value":"125971/200000","variable":"r"}` | `-125971/200000 + 1 * r` |
| 24 | coordinate | `{"box":1035,"direction":"lo","value":"402321/500000","variable":"w"}` | `-402321/500000 + 1 * w` |
| 25 | coordinate | `{"box":1035,"direction":"lo","value":"57203/100000","variable":"j"}` | `-57203/100000 + 1 * j` |
| 26 | coordinate | `{"box":1035,"direction":"lo","value":"496573/1000000","variable":"k"}` | `-496573/1000000 + 1 * k` |
| 27 | coordinate | `{"box":1035,"direction":"lo","value":"346863/500000","variable":"c"}` | `-346863/500000 + 1 * c` |
| 28 | coordinate | `{"box":1035,"direction":"lo","value":"111793/1000000","variable":"e"}` | `-111793/1000000 + 1 * e` |
| 29 | coordinate | `{"box":1035,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 30 | coordinate | `{"box":1035,"direction":"lo","value":"81541/250000","variable":"u"}` | `-81541/250000 + 1 * u` |
| 31 | coordinate | `{"box":1035,"direction":"lo","value":"293403/500000","variable":"v"}` | `-293403/500000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 48730000000 | 1 |
| 1 | 27233000000 | 5 |
| 2 | 81781000000 | 6 |
| 3 | 34138000000 | 7 |
| 4 | 480000000 | 8 |
| 5 | 67989000000 | 9 |
| 6 | 35644000000 | 10 |
| 7 | 24711000000 | 0 |
| 8 | 34138000000 | 2 |
| 9 | 24711000000 | 3 |
| 10 | 24844000000 | 4 |
| 11 | 81781000000 | 20, 22 |
| 12 | 27233000000 | 19, 21 |
| 13 | 34138000000 | 22, 24 |
| 14 | 25440000000 | 21, 23 |
| 15 | 1793000000 | 11, 12 |
| 16 | 34138000000 | 15, 22 |
| 17 | 68469000000 | 16, 28 |
| 18 | 35644000000 | 16, 20 |
| 19 | 480000000 | 13, 16 |
| 20 | 67989000000 | 15, 16 |
| 21 | 24711000000 | 19, 28 |
| 22 | 6519000000 | 23, 28 |
| 23 | 28100000000 | 12, 17 |
| 24 | 58562000000 | 14, 17 |
| 25 | 21426000000 | 29, 31 |
| 26 | 24711000000 | 26, 29 |
| 27 | 27233000000 | 13, 19 |
| 28 | 27233000000 | 12, 31 |
| 29 | 55940 | 27 |
| 30 | 78913859802 | 22 |
| 31 | 24408 | 30 |
| 32 | 167241 | 13 |
| 33 | 1000000 | 17, 23 |
| 34 | 629855 | 17 |
| 35 | 421967 | 12 |
| 36 | 8800 | 15 |
| 37 | 357900 | 31 |
| 38 | 231454 | 25 |
| 39 | 279241 | 18 |
| 40 | 56241 | 21 |
| 41 | 297339 | 23 |
| 42 | 785982 | 28 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -469736438120259/125000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -469736438120259/125000 | 1 | -469736438120259/125000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1035 | -469736438120259/125000 |

## Stage 1036

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP+/BQS-/PQS-/APS+/AQR-/HQS-/CFQ+/CRS+/BRS- |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP+/BQS-/PQS-/APS+/AQR-/HQS-/CFQ+/CRS+/BRS-:H |
| Index | 0 |
| Context | 188 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1000 |
| Coordinate cut | q high 487263/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 111793/1000000 | 6143/20000 | 111793/1000000 | 6143/20000 |
| b | 168107/1000000 | 567233/1000000 | 168107/1000000 | 567233/1000000 |
| c | 346863/500000 | 1 | 346863/500000 | 1 |
| e | 111793/1000000 | 421967/1000000 | 111793/1000000 | 421967/1000000 |
| f | 279/1000 | 137177/200000 | 279/1000 | 137177/200000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 65293/500000 | 104699/200000 | 65293/500000 | 104699/200000 |
| q | 487263/1000000 | 306517/500000 | 487263/1000000 | 306517/500000 |
| u | 81541/250000 | 654223/1000000 | 81541/250000 | 654223/1000000 |
| v | 293403/500000 | 907/1000 | 293403/500000 | 907/1000 |
| r | 125971/200000 | 1 | 125971/200000 | 1 |
| w | 402321/500000 | 1 | 402321/500000 | 1 |
| j | 57203/100000 | 179059/200000 | 57203/100000 | 179059/200000 |
| k | 496573/1000000 | 871013/1000000 | 496573/1000000 | 871013/1000000 |

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
| 0 | bound | `{"direction":"lo","ref":"402:1708","triangle":"FPS","value":"308847/1000000"}` | `1 * p * k + -1 * p + -1 * f * k + -1 * q * j + 1 * f * q + 1 * j + -308847/1000000` |
| 1 | bound | `{"direction":"lo","ref":"402:1739","triangle":"PQR","value":"61509/500000"}` | `-1 * u * w + 1 * q * u + 1 * p * w + 1 * v * r + -1 * p * v + -1 * q * r + -61509/500000` |
| 2 | bound | `{"direction":"lo","ref":"402:1792","triangle":"FPR","value":"154509/500000"}` | `1 * p * w + -1 * p + -1 * f * w + -1 * q * r + 1 * f * q + 1 * r + -154509/500000` |
| 3 | physical | `{"factor":102,"stage":402}` | `1/1 * r * k + -1/1 * c * k + -1/1 * w * j + 1/1 * c * w + -93/1000` |
| 4 | physical | `{"factor":123,"stage":402}` | `-1/1 * f * k + -1/1 * h * j + 1/1 * f * h + 1/1 * j + -279/1000` |
| 5 | physical | `{"factor":124,"stage":402}` | `1/1 * p * v + -1/1 * p + -1/1 * f * v + -1/1 * q * u + 1/1 * f * q + 1/1 * u + -93/1000` |
| 6 | physical | `{"factor":128,"stage":402}` | `1/1 * u * k + -1/1 * u + -1/1 * f * k + -1/1 * v * j + 1/1 * f * v + 1/1 * j + -93/1000` |
| 7 | physical | `{"factor":133,"stage":402}` | `-1/1 * u * k + 1/1 * h * u + 1/1 * v * j + -1/1 * h * j + -93/1000` |
| 8 | physical | `{"factor":140,"stage":402}` | `1/1 * e + -1/1 * a` |
| 9 | physical | `{"factor":142,"stage":402}` | `1/1 * f + -1/1 * b` |
| 10 | physical | `{"factor":32,"stage":402}` | `1/1 * w + -1/1 * a + -1/1 * e * r + 1/1 * a * r + -13857/20000` |
| 11 | physical | `{"factor":45,"stage":402}` | `1/1 * p * k + -1/1 * a * p + -1/1 * q * j + 1/1 * a * j + -93/1000` |
| 12 | physical | `{"factor":67,"stage":402}` | `1/1 * f * q + -1/1 * b * q + -1/1 * p + 1/1 * b + -93/1000` |
| 13 | physical | `{"factor":75,"stage":402}` | `-1/1 * p * v + 1/1 * b * v + 1/1 * q * u + -1/1 * b * q + -93/1000` |
| 14 | physical | `{"factor":80,"stage":402}` | `-1/1 * r * k + 1/1 * b * k + 1/1 * w * j + -1/1 * b * w + -93/1000` |
| 15 | physical | `{"factor":86,"stage":402}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 16 | physical | `{"factor":90,"stage":402}` | `1/1 * f * v + -1/1 * c * v + -1/1 * u + 1/1 * c + -93/1000` |
| 17 | physical | `{"factor":93,"stage":402}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 18 | coordinate | `{"box":1036,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 19 | coordinate | `{"box":1036,"direction":"hi","value":"567233/1000000","variable":"b"}` | `567233/1000000 + -1 * b` |
| 20 | coordinate | `{"box":1036,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 21 | coordinate | `{"box":1036,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 22 | coordinate | `{"box":1036,"direction":"hi","value":"179059/200000","variable":"j"}` | `179059/200000 + -1 * j` |
| 23 | coordinate | `{"box":1036,"direction":"hi","value":"871013/1000000","variable":"k"}` | `871013/1000000 + -1 * k` |
| 24 | coordinate | `{"box":1036,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 25 | coordinate | `{"box":1036,"direction":"hi","value":"421967/1000000","variable":"e"}` | `421967/1000000 + -1 * e` |
| 26 | coordinate | `{"box":1036,"direction":"hi","value":"137177/200000","variable":"f"}` | `137177/200000 + -1 * f` |
| 27 | coordinate | `{"box":1036,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 28 | coordinate | `{"box":1036,"direction":"hi","value":"104699/200000","variable":"p"}` | `104699/200000 + -1 * p` |
| 29 | coordinate | `{"box":1036,"direction":"hi","value":"306517/500000","variable":"q"}` | `306517/500000 + -1 * q` |
| 30 | coordinate | `{"box":1036,"direction":"hi","value":"654223/1000000","variable":"u"}` | `654223/1000000 + -1 * u` |
| 31 | coordinate | `{"box":1036,"direction":"hi","value":"907/1000","variable":"v"}` | `907/1000 + -1 * v` |
| 32 | coordinate | `{"box":1036,"direction":"lo","value":"168107/1000000","variable":"b"}` | `-168107/1000000 + 1 * b` |
| 33 | coordinate | `{"box":1036,"direction":"lo","value":"125971/200000","variable":"r"}` | `-125971/200000 + 1 * r` |
| 34 | coordinate | `{"box":1036,"direction":"lo","value":"402321/500000","variable":"w"}` | `-402321/500000 + 1 * w` |
| 35 | coordinate | `{"box":1036,"direction":"lo","value":"57203/100000","variable":"j"}` | `-57203/100000 + 1 * j` |
| 36 | coordinate | `{"box":1036,"direction":"lo","value":"496573/1000000","variable":"k"}` | `-496573/1000000 + 1 * k` |
| 37 | coordinate | `{"box":1036,"direction":"lo","value":"346863/500000","variable":"c"}` | `-346863/500000 + 1 * c` |
| 38 | coordinate | `{"box":1036,"direction":"lo","value":"111793/1000000","variable":"e"}` | `-111793/1000000 + 1 * e` |
| 39 | coordinate | `{"box":1036,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 40 | coordinate | `{"box":1036,"direction":"lo","value":"135501/250000","variable":"h"}` | `-135501/250000 + 1 * h` |
| 41 | coordinate | `{"box":1036,"direction":"lo","value":"65293/500000","variable":"p"}` | `-65293/500000 + 1 * p` |
| 42 | coordinate | `{"box":1036,"direction":"lo","value":"487263/1000000","variable":"q"}` | `-487263/1000000 + 1 * q` |
| 43 | coordinate | `{"box":1036,"direction":"lo","value":"81541/250000","variable":"u"}` | `-81541/250000 + 1 * u` |
| 44 | coordinate | `{"box":1036,"direction":"lo","value":"293403/500000","variable":"v"}` | `-293403/500000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 3474000000 | 10 |
| 1 | 98075000000 | 11 |
| 2 | 8279000000 | 12 |
| 3 | 16513000000 | 13 |
| 4 | 2908000000 | 14 |
| 5 | 2908000000 | 15 |
| 6 | 16513000000 | 16 |
| 7 | 12277000000 | 17 |
| 8 | 2908000000 | 3 |
| 9 | 2893000000 | 4 |
| 10 | 23660000000 | 5 |
| 11 | 1784000000 | 2 |
| 12 | 34451000000 | 0 |
| 13 | 7146000000 | 6 |
| 14 | 7146000000 | 7 |
| 15 | 7146000000 | 1 |
| 16 | 3474000000 | 8 |
| 17 | 4425000000 | 9 |
| 18 | 24792000000 | 32, 42 |
| 19 | 98075000000 | 18, 28 |
| 20 | 16513000000 | 19, 44 |
| 21 | 2908000000 | 19, 21 |
| 22 | 3474000000 | 18, 33 |
| 23 | 2908000000 | 19, 36 |
| 24 | 98075000000 | 18, 35 |
| 25 | 2908000000 | 24, 38 |
| 26 | 12277000000 | 24, 40 |
| 27 | 12277000000 | 37, 42 |
| 28 | 16513000000 | 24, 31 |
| 29 | 2908000000 | 23, 24 |
| 30 | 6382000000 | 20, 25 |
| 31 | 2893000000 | 27, 39 |
| 32 | 68174000000 | 26, 42 |
| 33 | 1784000000 | 21, 26 |
| 34 | 44491000000 | 23, 26 |
| 35 | 12277000000 | 27, 28 |
| 36 | 7146000000 | 27, 43 |
| 37 | 10039000000 | 22, 27 |
| 38 | 8930000000 | 21, 41 |
| 39 | 8930000000 | 33, 42 |
| 40 | 95703000000 | 23, 41 |
| 41 | 36823000000 | 28, 36 |
| 42 | 132526000000 | 35, 42 |
| 43 | 7146000000 | 21, 30 |
| 44 | 7146000000 | 20, 44 |
| 45 | 76982 | 34 |
| 46 | 186395 | 18 |
| 47 | 983836 | 26 |
| 48 | 685885 | 29 |
| 49 | 871532 | 41 |
| 50 | 262534 | 32 |
| 51 | 1000000 | 28, 44 |
| 52 | 586806 | 28 |
| 53 | 523495 | 31 |
| 54 | 1000000 | 42, 43 |
| 55 | 47359523835 | 42 |
| 56 | 487263 | 43 |
| 57 | 1000000 | 39, 44 |
| 58 | 645690 | 39 |
| 59 | 560471 | 44 |
| 60 | 1000000 | 30 |
| 61 | 47503 | 37 |
| 62 | 1000000 | 26, 36 |
| 63 | 685885 | 23 |
| 64 | 280088 | 35 |
| 65 | 102792 | 20 |
| 66 | 67628 | 36 |
| 67 | 100324 | 27 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -8366343116721809/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -8366343116721809/1000000 | 1 | -8366343116721809/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1036 | -8366343116721809/1000000 |

## Stage 1037

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS+/AFQ-/EHQ-/BPS+/FPQ-/BFQ+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS+/AFQ-/EHQ-/BPS+/FPQ-/BFQ+:root |
| Index | 0 |
| Context | 214 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 428 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 3311/31250 | 6143/20000 | 3311/31250 | 6143/20000 |
| b | 122321/1000000 | 631147/1000000 | 122321/1000000 | 631147/1000000 |
| c | 70001/100000 | 1 | 70001/100000 | 1 |
| e | 105961/1000000 | 406287/1000000 | 105961/1000000 | 406287/1000000 |
| f | 279/1000 | 632421/1000000 | 279/1000 | 632421/1000000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 351087/1000000 | 44253/62500 | 351087/1000000 | 44253/62500 |
| q | 24869/125000 | 556319/1000000 | 24869/125000 | 556319/1000000 |
| u | 47263/250000 | 539307/1000000 | 47263/250000 | 539307/1000000 |
| v | 221817/500000 | 907/1000 | 221817/500000 | 907/1000 |
| r | 167529/250000 | 1 | 167529/250000 | 1 |
| w | 399401/500000 | 1 | 399401/500000 | 1 |
| j | 487653/1000000 | 33643/40000 | 487653/1000000 | 33643/40000 |
| k | 216007/500000 | 435129/500000 | 216007/500000 | 435129/500000 |

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


## Stage 1038

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS+/AFQ-/EHQ-/BPS+/FPQ-/BFQ+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS+/AFQ-/EHQ-/BPS+/FPQ-/BFQ+:L |
| Index | 0 |
| Context | 214 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1037 |
| Coordinate cut | b low 482651/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 3311/31250 | 6143/20000 | 3311/31250 | 6143/20000 |
| b | 122321/1000000 | 482651/1000000 | 122321/1000000 | 482651/1000000 |
| c | 70001/100000 | 1 | 70001/100000 | 1 |
| e | 105961/1000000 | 406287/1000000 | 105961/1000000 | 406287/1000000 |
| f | 279/1000 | 632421/1000000 | 279/1000 | 632421/1000000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 351087/1000000 | 44253/62500 | 351087/1000000 | 44253/62500 |
| q | 24869/125000 | 556319/1000000 | 24869/125000 | 556319/1000000 |
| u | 47263/250000 | 539307/1000000 | 47263/250000 | 539307/1000000 |
| v | 221817/500000 | 907/1000 | 221817/500000 | 907/1000 |
| r | 167529/250000 | 1 | 167529/250000 | 1 |
| w | 399401/500000 | 1 | 399401/500000 | 1 |
| j | 487653/1000000 | 33643/40000 | 487653/1000000 | 33643/40000 |
| k | 216007/500000 | 435129/500000 | 216007/500000 | 435129/500000 |

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


## Stage 1039

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS+/AFQ-/EHQ-/BPS+/FPQ-/BFQ+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS+/AFQ-/EHQ-/BPS+/FPQ-/BFQ+:LL |
| Index | 0 |
| Context | 214 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1038 |
| Coordinate cut | v low 47619/62500 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 3311/31250 | 6143/20000 | 3311/31250 | 6143/20000 |
| b | 122321/1000000 | 482651/1000000 | 122321/1000000 | 482651/1000000 |
| c | 70001/100000 | 1 | 70001/100000 | 1 |
| e | 105961/1000000 | 406287/1000000 | 105961/1000000 | 406287/1000000 |
| f | 279/1000 | 632421/1000000 | 279/1000 | 632421/1000000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 351087/1000000 | 44253/62500 | 351087/1000000 | 44253/62500 |
| q | 24869/125000 | 556319/1000000 | 24869/125000 | 556319/1000000 |
| u | 47263/250000 | 539307/1000000 | 47263/250000 | 539307/1000000 |
| v | 221817/500000 | 47619/62500 | 221817/500000 | 47619/62500 |
| r | 167529/250000 | 1 | 167529/250000 | 1 |
| w | 399401/500000 | 1 | 399401/500000 | 1 |
| j | 487653/1000000 | 33643/40000 | 487653/1000000 | 33643/40000 |
| k | 216007/500000 | 435129/500000 | 216007/500000 | 435129/500000 |

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
