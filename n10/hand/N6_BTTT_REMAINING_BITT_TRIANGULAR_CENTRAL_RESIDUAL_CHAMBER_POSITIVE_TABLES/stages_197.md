# BITT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 985

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP+/BQS-/PQS-/APS+/AQR-/HQS+/BRS-/CRS+/CFQ+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP+/BQS-/PQS-/APS+/AQR-/HQS+/BRS-/CRS+/CFQ+:LHLHHLHLLL |
| Index | 0 |
| Context | 181 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 984 |
| Coordinate cut | b low 298541/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 114221/1000000 | 6143/20000 | 114221/1000000 | 6143/20000 |
| b | 46449/250000 | 298541/1000000 | 46449/250000 | 298541/1000000 |
| c | 346929/500000 | 1 | 346929/500000 | 1 |
| e | 114221/1000000 | 392679/1000000 | 114221/1000000 | 392679/1000000 |
| f | 279/1000 | 120503/250000 | 279/1000 | 120503/250000 |
| h | 758223/1000000 | 1 | 758223/1000000 | 1 |
| p | 167637/1000000 | 435291/1000000 | 167637/1000000 | 435291/1000000 |
| q | 41443/200000 | 82069/200000 | 41443/200000 | 82069/200000 |
| u | 79669/250000 | 21407/31250 | 79669/250000 | 21407/31250 |
| v | 537597/1000000 | 408537/500000 | 537597/1000000 | 408537/500000 |
| r | 13857/20000 | 1 | 13857/20000 | 1 |
| w | 403531/500000 | 1 | 403531/500000 | 1 |
| j | 143363/200000 | 27969/31250 | 143363/200000 | 27969/31250 |
| k | 68041/125000 | 773343/1000000 | 68041/125000 | 773343/1000000 |

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
| 0 | bound | `{"direction":"lo","ref":"395:1836","triangle":"FPR","value":"348937/1000000"}` | `1 * p * w + -1 * p + -1 * f * w + -1 * q * r + 1 * f * q + 1 * r + -348937/1000000` |
| 1 | physical | `{"factor":10,"stage":395}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 2 | physical | `{"factor":102,"stage":395}` | `1/1 * r * k + -1/1 * c * k + -1/1 * w * j + 1/1 * c * w + -93/1000` |
| 3 | physical | `{"factor":117,"stage":395}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 4 | physical | `{"factor":139,"stage":395}` | `1/1 * e + -1/1 * a` |
| 5 | physical | `{"factor":28,"stage":395}` | `1/1 * q + -1/1 * a + -1/1 * e * p + 1/1 * a * p + -93/1000` |
| 6 | physical | `{"factor":45,"stage":395}` | `1/1 * p * k + -1/1 * a * p + -1/1 * q * j + 1/1 * a * j + -93/1000` |
| 7 | physical | `{"factor":67,"stage":395}` | `1/1 * f * q + -1/1 * b * q + -1/1 * p + 1/1 * b + -93/1000` |
| 8 | physical | `{"factor":71,"stage":395}` | `1/1 * b * q + 1/1 * h * p + -1/1 * b * h + -93/1000` |
| 9 | physical | `{"factor":80,"stage":395}` | `-1/1 * r * k + 1/1 * b * k + 1/1 * w * j + -1/1 * b * w + -93/1000` |
| 10 | physical | `{"factor":87,"stage":395}` | `1/1 * k + -1/1 * c * k + -1/1 * e * j + 1/1 * c * e + -93/1000` |
| 11 | coordinate | `{"box":985,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 12 | coordinate | `{"box":985,"direction":"hi","value":"298541/1000000","variable":"b"}` | `298541/1000000 + -1 * b` |
| 13 | coordinate | `{"box":985,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 14 | coordinate | `{"box":985,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 15 | coordinate | `{"box":985,"direction":"hi","value":"27969/31250","variable":"j"}` | `27969/31250 + -1 * j` |
| 16 | coordinate | `{"box":985,"direction":"hi","value":"773343/1000000","variable":"k"}` | `773343/1000000 + -1 * k` |
| 17 | coordinate | `{"box":985,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 18 | coordinate | `{"box":985,"direction":"hi","value":"392679/1000000","variable":"e"}` | `392679/1000000 + -1 * e` |
| 19 | coordinate | `{"box":985,"direction":"hi","value":"120503/250000","variable":"f"}` | `120503/250000 + -1 * f` |
| 20 | coordinate | `{"box":985,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 21 | coordinate | `{"box":985,"direction":"hi","value":"435291/1000000","variable":"p"}` | `435291/1000000 + -1 * p` |
| 22 | coordinate | `{"box":985,"direction":"hi","value":"82069/200000","variable":"q"}` | `82069/200000 + -1 * q` |
| 23 | coordinate | `{"box":985,"direction":"lo","value":"114221/1000000","variable":"a"}` | `-114221/1000000 + 1 * a` |
| 24 | coordinate | `{"box":985,"direction":"lo","value":"46449/250000","variable":"b"}` | `-46449/250000 + 1 * b` |
| 25 | coordinate | `{"box":985,"direction":"lo","value":"13857/20000","variable":"r"}` | `-13857/20000 + 1 * r` |
| 26 | coordinate | `{"box":985,"direction":"lo","value":"143363/200000","variable":"j"}` | `-143363/200000 + 1 * j` |
| 27 | coordinate | `{"box":985,"direction":"lo","value":"68041/125000","variable":"k"}` | `-68041/125000 + 1 * k` |
| 28 | coordinate | `{"box":985,"direction":"lo","value":"346929/500000","variable":"c"}` | `-346929/500000 + 1 * c` |
| 29 | coordinate | `{"box":985,"direction":"lo","value":"114221/1000000","variable":"e"}` | `-114221/1000000 + 1 * e` |
| 30 | coordinate | `{"box":985,"direction":"lo","value":"758223/1000000","variable":"h"}` | `-758223/1000000 + 1 * h` |
| 31 | coordinate | `{"box":985,"direction":"lo","value":"167637/1000000","variable":"p"}` | `-167637/1000000 + 1 * p` |
| 32 | coordinate | `{"box":985,"direction":"lo","value":"41443/200000","variable":"q"}` | `-41443/200000 + 1 * q` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 32498000000 | 1 |
| 1 | 47987000000 | 5 |
| 2 | 80485000000 | 6 |
| 3 | 86806000000 | 7 |
| 4 | 34073000000 | 8 |
| 5 | 19235000000 | 9 |
| 6 | 569000000 | 10 |
| 7 | 1655000000 | 2 |
| 8 | 569000000 | 3 |
| 9 | 22689000000 | 0 |
| 10 | 8044000000 | 4 |
| 11 | 32498000000 | 11, 12 |
| 12 | 34073000000 | 12, 20 |
| 13 | 20234000000 | 12, 22 |
| 14 | 19235000000 | 12, 14 |
| 15 | 19235000000 | 12, 27 |
| 16 | 45121000000 | 15, 23 |
| 17 | 35364000000 | 11, 26 |
| 18 | 569000000 | 17, 29 |
| 19 | 1655000000 | 14, 28 |
| 20 | 2224000000 | 16, 17 |
| 21 | 47987000000 | 29, 31 |
| 22 | 569000000 | 13, 18 |
| 23 | 109495000000 | 19, 32 |
| 24 | 22689000000 | 14, 19 |
| 25 | 16665000000 | 21, 30 |
| 26 | 17409000000 | 20, 31 |
| 27 | 22689000000 | 14, 31 |
| 28 | 22689000000 | 13, 22 |
| 29 | 80485000000 | 16, 31 |
| 30 | 80485000000 | 15, 22 |
| 31 | 17011000000 | 13, 16 |
| 32 | 17011000000 | 14, 26 |
| 33 | 1000000 | 24, 32 |
| 34 | 207215 | 24 |
| 35 | 185796 | 32 |
| 36 | 506466 | 22 |
| 37 | 116210 | 11 |
| 38 | 174523 | 21 |
| 39 | 25683467650 | 12 |
| 40 | 1000000 | 30, 31 |
| 41 | 167637 | 30 |
| 42 | 758223 | 31 |
| 43 | 299920 | 27 |
| 44 | 1035784445 | 14 |
| 45 | 89829 | 25 |
| 46 | 396719 | 29 |
| 47 | 329555 | 20 |
| 48 | 201016 | 15 |
| 49 | 76917 | 17 |
| 50 | 6425 | 19 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -1400684543521659/500000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -1400684543521659/500000 | 1 | -1400684543521659/500000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 985 | -1400684543521659/500000 |

## Stage 986

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP+/BQS-/PQS-/APS+/AQR-/HQS+/BRS-/CRS+/CFQ+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP+/BQS-/PQS-/APS+/AQR-/HQS+/BRS-/CRS+/CFQ+:LHLHHLHLLH |
| Index | 0 |
| Context | 181 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 984 |
| Coordinate cut | b high 298541/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 114221/1000000 | 6143/20000 | 114221/1000000 | 6143/20000 |
| b | 298541/1000000 | 255239/500000 | 298541/1000000 | 255239/500000 |
| c | 346929/500000 | 1 | 346929/500000 | 1 |
| e | 114221/1000000 | 392679/1000000 | 114221/1000000 | 392679/1000000 |
| f | 279/1000 | 120503/250000 | 279/1000 | 120503/250000 |
| h | 758223/1000000 | 1 | 758223/1000000 | 1 |
| p | 167637/1000000 | 435291/1000000 | 167637/1000000 | 435291/1000000 |
| q | 41443/200000 | 82069/200000 | 41443/200000 | 82069/200000 |
| u | 79669/250000 | 21407/31250 | 79669/250000 | 21407/31250 |
| v | 537597/1000000 | 408537/500000 | 537597/1000000 | 408537/500000 |
| r | 13857/20000 | 1 | 13857/20000 | 1 |
| w | 403531/500000 | 1 | 403531/500000 | 1 |
| j | 143363/200000 | 27969/31250 | 143363/200000 | 27969/31250 |
| k | 68041/125000 | 773343/1000000 | 68041/125000 | 773343/1000000 |

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


## Stage 987

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP+/BQS-/PQS-/APS+/AQR-/HQS+/BRS-/CRS+/CFQ+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP+/BQS-/PQS-/APS+/AQR-/HQS+/BRS-/CRS+/CFQ+:LHLHHLHLLHL |
| Index | 0 |
| Context | 181 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 986 |
| Coordinate cut | c low 863509/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 114221/1000000 | 6143/20000 | 114221/1000000 | 6143/20000 |
| b | 298541/1000000 | 255239/500000 | 298541/1000000 | 255239/500000 |
| c | 346929/500000 | 863509/1000000 | 346929/500000 | 863509/1000000 |
| e | 114221/1000000 | 392679/1000000 | 114221/1000000 | 392679/1000000 |
| f | 279/1000 | 120503/250000 | 279/1000 | 120503/250000 |
| h | 758223/1000000 | 1 | 758223/1000000 | 1 |
| p | 167637/1000000 | 435291/1000000 | 167637/1000000 | 435291/1000000 |
| q | 41443/200000 | 82069/200000 | 41443/200000 | 82069/200000 |
| u | 79669/250000 | 21407/31250 | 79669/250000 | 21407/31250 |
| v | 537597/1000000 | 408537/500000 | 537597/1000000 | 408537/500000 |
| r | 13857/20000 | 1 | 13857/20000 | 1 |
| w | 403531/500000 | 1 | 403531/500000 | 1 |
| j | 143363/200000 | 27969/31250 | 143363/200000 | 27969/31250 |
| k | 68041/125000 | 773343/1000000 | 68041/125000 | 773343/1000000 |

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
| 0 | physical | `{"factor":102,"stage":395}` | `1/1 * r * k + -1/1 * c * k + -1/1 * w * j + 1/1 * c * w + -93/1000` |
| 1 | physical | `{"factor":120,"stage":395}` | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 2 | physical | `{"factor":122,"stage":395}` | `1/1 * p * v + -1/1 * p + -1/1 * f * v + -1/1 * q * u + 1/1 * f * q + 1/1 * u + -93/1000` |
| 3 | physical | `{"factor":139,"stage":395}` | `1/1 * e + -1/1 * a` |
| 4 | physical | `{"factor":28,"stage":395}` | `1/1 * q + -1/1 * a + -1/1 * e * p + 1/1 * a * p + -93/1000` |
| 5 | physical | `{"factor":45,"stage":395}` | `1/1 * p * k + -1/1 * a * p + -1/1 * q * j + 1/1 * a * j + -93/1000` |
| 6 | physical | `{"factor":46,"stage":395}` | `-1/1 * u * w + 1/1 * a * u + 1/1 * v * r + -1/1 * a * r + -93/1000` |
| 7 | physical | `{"factor":67,"stage":395}` | `1/1 * f * q + -1/1 * b * q + -1/1 * p + 1/1 * b + -93/1000` |
| 8 | physical | `{"factor":71,"stage":395}` | `1/1 * b * q + 1/1 * h * p + -1/1 * b * h + -93/1000` |
| 9 | physical | `{"factor":74,"stage":395}` | `1/1 * b * k + 1/1 * h * j + -1/1 * b * h + -13857/20000` |
| 10 | physical | `{"factor":75,"stage":395}` | `-1/1 * p * v + 1/1 * b * v + 1/1 * q * u + -1/1 * b * q + -93/1000` |
| 11 | physical | `{"factor":80,"stage":395}` | `-1/1 * r * k + 1/1 * b * k + 1/1 * w * j + -1/1 * b * w + -93/1000` |
| 12 | physical | `{"factor":90,"stage":395}` | `1/1 * f * v + -1/1 * c * v + -1/1 * u + 1/1 * c + -93/1000` |
| 13 | coordinate | `{"box":987,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 14 | coordinate | `{"box":987,"direction":"hi","value":"255239/500000","variable":"b"}` | `255239/500000 + -1 * b` |
| 15 | coordinate | `{"box":987,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 16 | coordinate | `{"box":987,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 17 | coordinate | `{"box":987,"direction":"hi","value":"27969/31250","variable":"j"}` | `27969/31250 + -1 * j` |
| 18 | coordinate | `{"box":987,"direction":"hi","value":"773343/1000000","variable":"k"}` | `773343/1000000 + -1 * k` |
| 19 | coordinate | `{"box":987,"direction":"hi","value":"863509/1000000","variable":"c"}` | `863509/1000000 + -1 * c` |
| 20 | coordinate | `{"box":987,"direction":"hi","value":"392679/1000000","variable":"e"}` | `392679/1000000 + -1 * e` |
| 21 | coordinate | `{"box":987,"direction":"hi","value":"120503/250000","variable":"f"}` | `120503/250000 + -1 * f` |
| 22 | coordinate | `{"box":987,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 23 | coordinate | `{"box":987,"direction":"hi","value":"435291/1000000","variable":"p"}` | `435291/1000000 + -1 * p` |
| 24 | coordinate | `{"box":987,"direction":"hi","value":"82069/200000","variable":"q"}` | `82069/200000 + -1 * q` |
| 25 | coordinate | `{"box":987,"direction":"hi","value":"21407/31250","variable":"u"}` | `21407/31250 + -1 * u` |
| 26 | coordinate | `{"box":987,"direction":"hi","value":"408537/500000","variable":"v"}` | `408537/500000 + -1 * v` |
| 27 | coordinate | `{"box":987,"direction":"lo","value":"114221/1000000","variable":"a"}` | `-114221/1000000 + 1 * a` |
| 28 | coordinate | `{"box":987,"direction":"lo","value":"298541/1000000","variable":"b"}` | `-298541/1000000 + 1 * b` |
| 29 | coordinate | `{"box":987,"direction":"lo","value":"403531/500000","variable":"w"}` | `-403531/500000 + 1 * w` |
| 30 | coordinate | `{"box":987,"direction":"lo","value":"143363/200000","variable":"j"}` | `-143363/200000 + 1 * j` |
| 31 | coordinate | `{"box":987,"direction":"lo","value":"68041/125000","variable":"k"}` | `-68041/125000 + 1 * k` |
| 32 | coordinate | `{"box":987,"direction":"lo","value":"114221/1000000","variable":"e"}` | `-114221/1000000 + 1 * e` |
| 33 | coordinate | `{"box":987,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 34 | coordinate | `{"box":987,"direction":"lo","value":"758223/1000000","variable":"h"}` | `-758223/1000000 + 1 * h` |
| 35 | coordinate | `{"box":987,"direction":"lo","value":"167637/1000000","variable":"p"}` | `-167637/1000000 + 1 * p` |
| 36 | coordinate | `{"box":987,"direction":"lo","value":"41443/200000","variable":"q"}` | `-41443/200000 + 1 * q` |
| 37 | coordinate | `{"box":987,"direction":"lo","value":"79669/250000","variable":"u"}` | `-79669/250000 + 1 * u` |
| 38 | coordinate | `{"box":987,"direction":"lo","value":"537597/1000000","variable":"v"}` | `-537597/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 23495000000 | 4 |
| 1 | 48565000000 | 5 |
| 2 | 1743000000 | 6 |
| 3 | 38857000000 | 7 |
| 4 | 40617000000 | 8 |
| 5 | 18967000000 | 9 |
| 6 | 3901000000 | 10 |
| 7 | 47844000000 | 11 |
| 8 | 2694000000 | 12 |
| 9 | 47844000000 | 0 |
| 10 | 32564000000 | 1 |
| 11 | 3901000000 | 2 |
| 12 | 7870000000 | 3 |
| 13 | 59584000000 | 28, 34 |
| 14 | 2141000000 | 28, 36 |
| 15 | 25070000000 | 13, 23 |
| 16 | 3901000000 | 26, 28 |
| 17 | 1743000000 | 13, 37 |
| 18 | 47844000000 | 14, 16 |
| 19 | 1743000000 | 13, 15 |
| 20 | 65735000000 | 18, 28 |
| 21 | 1076000000 | 14, 31 |
| 22 | 48565000000 | 17, 27 |
| 23 | 2694000000 | 19, 26 |
| 24 | 47844000000 | 19, 29 |
| 25 | 47844000000 | 18, 19 |
| 26 | 8805000000 | 32, 35 |
| 27 | 14690000000 | 20, 23 |
| 28 | 32564000000 | 21, 34 |
| 29 | 42758000000 | 21, 36 |
| 30 | 1208000000 | 21, 26 |
| 31 | 32564000000 | 16, 21 |
| 32 | 40617000000 | 23, 34 |
| 33 | 32564000000 | 15, 22 |
| 34 | 18967000000 | 17, 34 |
| 35 | 48565000000 | 23, 31 |
| 36 | 48565000000 | 17, 24 |
| 37 | 1743000000 | 16, 25 |
| 38 | 1743000000 | 15, 38 |
| 39 | 370705 | 36 |
| 40 | 770418 | 13 |
| 41 | 388004 | 35 |
| 42 | 198160 | 14 |
| 43 | 1000000 | 21, 38 |
| 44 | 537597 | 21 |
| 45 | 482012 | 26 |
| 46 | 637550 | 37 |
| 47 | 2106054480 | 19 |
| 48 | 401669121 | 15 |
| 49 | 468575 | 32 |
| 50 | 196893 | 34 |
| 51 | 955301 | 38 |
| 52 | 179564 | 16 |
| 53 | 49782 | 18 |
| 54 | 46419 | 30 |
| 55 | 152650 | 33 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -2641690564251/1600 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -2641690564251/1600 | 1 | -2641690564251/1600 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 987 | -2641690564251/1600 |

## Stage 988

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP+/BQS-/PQS-/APS+/AQR-/HQS+/BRS-/CRS+/CFQ+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP+/BQS-/PQS-/APS+/AQR-/HQS+/BRS-/CRS+/CFQ+:LHLHHLHLLHH |
| Index | 0 |
| Context | 181 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 986 |
| Coordinate cut | c high 863509/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 114221/1000000 | 6143/20000 | 114221/1000000 | 6143/20000 |
| b | 298541/1000000 | 255239/500000 | 298541/1000000 | 255239/500000 |
| c | 863509/1000000 | 1 | 863509/1000000 | 1 |
| e | 114221/1000000 | 392679/1000000 | 114221/1000000 | 392679/1000000 |
| f | 279/1000 | 120503/250000 | 279/1000 | 120503/250000 |
| h | 758223/1000000 | 1 | 758223/1000000 | 1 |
| p | 167637/1000000 | 435291/1000000 | 167637/1000000 | 435291/1000000 |
| q | 41443/200000 | 82069/200000 | 41443/200000 | 82069/200000 |
| u | 79669/250000 | 21407/31250 | 79669/250000 | 21407/31250 |
| v | 537597/1000000 | 408537/500000 | 537597/1000000 | 408537/500000 |
| r | 13857/20000 | 1 | 13857/20000 | 1 |
| w | 403531/500000 | 1 | 403531/500000 | 1 |
| j | 143363/200000 | 27969/31250 | 143363/200000 | 27969/31250 |
| k | 68041/125000 | 773343/1000000 | 68041/125000 | 773343/1000000 |

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
| 0 | bound | `{"direction":"lo","ref":"395:1812","triangle":"FQR","value":"26531/200000"}` | `1 * u * w + -1 * u + -1 * f * w + -1 * v * r + 1 * f * v + 1 * r + -26531/200000` |
| 1 | physical | `{"factor":102,"stage":395}` | `1/1 * r * k + -1/1 * c * k + -1/1 * w * j + 1/1 * c * w + -93/1000` |
| 2 | physical | `{"factor":117,"stage":395}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 3 | physical | `{"factor":120,"stage":395}` | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 4 | physical | `{"factor":139,"stage":395}` | `1/1 * e + -1/1 * a` |
| 5 | physical | `{"factor":45,"stage":395}` | `1/1 * p * k + -1/1 * a * p + -1/1 * q * j + 1/1 * a * j + -93/1000` |
| 6 | physical | `{"factor":46,"stage":395}` | `-1/1 * u * w + 1/1 * a * u + 1/1 * v * r + -1/1 * a * r + -93/1000` |
| 7 | physical | `{"factor":67,"stage":395}` | `1/1 * f * q + -1/1 * b * q + -1/1 * p + 1/1 * b + -93/1000` |
| 8 | physical | `{"factor":68,"stage":395}` | `-1/1 * f * v + 1/1 * b * v + 1/1 * u + -1/1 * b + -93/1000` |
| 9 | physical | `{"factor":71,"stage":395}` | `1/1 * b * q + 1/1 * h * p + -1/1 * b * h + -93/1000` |
| 10 | physical | `{"factor":74,"stage":395}` | `1/1 * b * k + 1/1 * h * j + -1/1 * b * h + -13857/20000` |
| 11 | physical | `{"factor":80,"stage":395}` | `-1/1 * r * k + 1/1 * b * k + 1/1 * w * j + -1/1 * b * w + -93/1000` |
| 12 | physical | `{"factor":87,"stage":395}` | `1/1 * k + -1/1 * c * k + -1/1 * e * j + 1/1 * c * e + -93/1000` |
| 13 | physical | `{"factor":90,"stage":395}` | `1/1 * f * v + -1/1 * c * v + -1/1 * u + 1/1 * c + -93/1000` |
| 14 | coordinate | `{"box":988,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 15 | coordinate | `{"box":988,"direction":"hi","value":"255239/500000","variable":"b"}` | `255239/500000 + -1 * b` |
| 16 | coordinate | `{"box":988,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 17 | coordinate | `{"box":988,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 18 | coordinate | `{"box":988,"direction":"hi","value":"27969/31250","variable":"j"}` | `27969/31250 + -1 * j` |
| 19 | coordinate | `{"box":988,"direction":"hi","value":"773343/1000000","variable":"k"}` | `773343/1000000 + -1 * k` |
| 20 | coordinate | `{"box":988,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 21 | coordinate | `{"box":988,"direction":"hi","value":"392679/1000000","variable":"e"}` | `392679/1000000 + -1 * e` |
| 22 | coordinate | `{"box":988,"direction":"hi","value":"120503/250000","variable":"f"}` | `120503/250000 + -1 * f` |
| 23 | coordinate | `{"box":988,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 24 | coordinate | `{"box":988,"direction":"hi","value":"435291/1000000","variable":"p"}` | `435291/1000000 + -1 * p` |
| 25 | coordinate | `{"box":988,"direction":"hi","value":"82069/200000","variable":"q"}` | `82069/200000 + -1 * q` |
| 26 | coordinate | `{"box":988,"direction":"hi","value":"21407/31250","variable":"u"}` | `21407/31250 + -1 * u` |
| 27 | coordinate | `{"box":988,"direction":"hi","value":"408537/500000","variable":"v"}` | `408537/500000 + -1 * v` |
| 28 | coordinate | `{"box":988,"direction":"lo","value":"114221/1000000","variable":"a"}` | `-114221/1000000 + 1 * a` |
| 29 | coordinate | `{"box":988,"direction":"lo","value":"298541/1000000","variable":"b"}` | `-298541/1000000 + 1 * b` |
| 30 | coordinate | `{"box":988,"direction":"lo","value":"403531/500000","variable":"w"}` | `-403531/500000 + 1 * w` |
| 31 | coordinate | `{"box":988,"direction":"lo","value":"68041/125000","variable":"k"}` | `-68041/125000 + 1 * k` |
| 32 | coordinate | `{"box":988,"direction":"lo","value":"863509/1000000","variable":"c"}` | `-863509/1000000 + 1 * c` |
| 33 | coordinate | `{"box":988,"direction":"lo","value":"114221/1000000","variable":"e"}` | `-114221/1000000 + 1 * e` |
| 34 | coordinate | `{"box":988,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 35 | coordinate | `{"box":988,"direction":"lo","value":"758223/1000000","variable":"h"}` | `-758223/1000000 + 1 * h` |
| 36 | coordinate | `{"box":988,"direction":"lo","value":"167637/1000000","variable":"p"}` | `-167637/1000000 + 1 * p` |
| 37 | coordinate | `{"box":988,"direction":"lo","value":"41443/200000","variable":"q"}` | `-41443/200000 + 1 * q` |
| 38 | coordinate | `{"box":988,"direction":"lo","value":"79669/250000","variable":"u"}` | `-79669/250000 + 1 * u` |
| 39 | coordinate | `{"box":988,"direction":"lo","value":"537597/1000000","variable":"v"}` | `-537597/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 34163000000 | 5 |
| 1 | 17995000000 | 6 |
| 2 | 65824000000 | 7 |
| 3 | 25653000000 | 8 |
| 4 | 65824000000 | 9 |
| 5 | 13343000000 | 10 |
| 6 | 31112000000 | 11 |
| 7 | 25242000000 | 12 |
| 8 | 13186000000 | 13 |
| 9 | 5870000000 | 1 |
| 10 | 25242000000 | 2 |
| 11 | 9612000000 | 3 |
| 12 | 12468000000 | 0 |
| 13 | 3445000000 | 4 |
| 14 | 61084000000 | 29, 35 |
| 15 | 18083000000 | 15, 23 |
| 16 | 34163000000 | 14, 24 |
| 17 | 25653000000 | 27, 29 |
| 18 | 17995000000 | 14, 38 |
| 19 | 31112000000 | 15, 17 |
| 20 | 17995000000 | 14, 16 |
| 21 | 44454000000 | 19, 29 |
| 22 | 34163000000 | 18, 28 |
| 23 | 25242000000 | 21, 32 |
| 24 | 13186000000 | 20, 27 |
| 25 | 5870000000 | 17, 32 |
| 26 | 25615000000 | 31, 32 |
| 27 | 5497000000 | 19, 20 |
| 28 | 25242000000 | 16, 21 |
| 29 | 9612000000 | 22, 35 |
| 30 | 5671000000 | 25, 34 |
| 31 | 60153000000 | 22, 37 |
| 32 | 22079000000 | 17, 22 |
| 33 | 35379000000 | 24, 35 |
| 34 | 30445000000 | 23, 36 |
| 35 | 9612000000 | 16, 23 |
| 36 | 13343000000 | 18, 35 |
| 37 | 1969000000 | 19, 36 |
| 38 | 32194000000 | 24, 31 |
| 39 | 34163000000 | 18, 25 |
| 40 | 5527000000 | 17, 26 |
| 41 | 5527000000 | 16, 39 |
| 42 | 185934 | 36 |
| 43 | 597863 | 15 |
| 44 | 1000000 | 22, 39 |
| 45 | 1247463 | 22 |
| 46 | 482012 | 27 |
| 47 | 835750 | 38 |
| 48 | 758223 | 29 |
| 49 | 298541 | 35 |
| 50 | 1000000 | 15, 31 |
| 51 | 510478 | 19 |
| 52 | 605714 | 31 |
| 53 | 37363 | 20 |
| 54 | 335698 | 17 |
| 55 | 1000000 | 30, 34 |
| 56 | 807062 | 34 |
| 57 | 279000 | 30 |
| 58 | 131051 | 16 |
| 59 | 305822 | 33 |
| 60 | 113509 | 28 |
| 61 | 306265 | 23 |
| 62 | 527727 | 39 |
| 63 | 485277 | 18 |
| 64 | 518532 | 25 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -73935791221479/250000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -73935791221479/250000 | 1 | -73935791221479/250000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 988 | -73935791221479/250000 |

## Stage 989

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP+/BQS-/PQS-/APS+/AQR-/HQS+/BRS-/CRS+/CFQ+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP+/BQS-/PQS-/APS+/AQR-/HQS+/BRS-/CRS+/CFQ+:LHLHHLHLH |
| Index | 0 |
| Context | 181 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 983 |
| Coordinate cut | q high 82069/200000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 114221/1000000 | 6143/20000 | 114221/1000000 | 6143/20000 |
| b | 46449/250000 | 255239/500000 | 46449/250000 | 255239/500000 |
| c | 346929/500000 | 1 | 346929/500000 | 1 |
| e | 114221/1000000 | 392679/1000000 | 114221/1000000 | 392679/1000000 |
| f | 279/1000 | 120503/250000 | 279/1000 | 120503/250000 |
| h | 758223/1000000 | 1 | 758223/1000000 | 1 |
| p | 167637/1000000 | 435291/1000000 | 167637/1000000 | 435291/1000000 |
| q | 82069/200000 | 276119/500000 | 82069/200000 | 276119/500000 |
| u | 79669/250000 | 21407/31250 | 79669/250000 | 21407/31250 |
| v | 537597/1000000 | 408537/500000 | 537597/1000000 | 408537/500000 |
| r | 13857/20000 | 1 | 13857/20000 | 1 |
| w | 403531/500000 | 1 | 403531/500000 | 1 |
| j | 143363/200000 | 27969/31250 | 143363/200000 | 27969/31250 |
| k | 68041/125000 | 773343/1000000 | 68041/125000 | 773343/1000000 |

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
| 0 | bound | `{"direction":"lo","ref":"395:1836","triangle":"FPR","value":"348937/1000000"}` | `1 * p * w + -1 * p + -1 * f * w + -1 * q * r + 1 * f * q + 1 * r + -348937/1000000` |
| 1 | physical | `{"factor":117,"stage":395}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 2 | physical | `{"factor":139,"stage":395}` | `1/1 * e + -1/1 * a` |
| 3 | physical | `{"factor":141,"stage":395}` | `1/1 * f + -1/1 * b` |
| 4 | physical | `{"factor":45,"stage":395}` | `1/1 * p * k + -1/1 * a * p + -1/1 * q * j + 1/1 * a * j + -93/1000` |
| 5 | physical | `{"factor":46,"stage":395}` | `-1/1 * u * w + 1/1 * a * u + 1/1 * v * r + -1/1 * a * r + -93/1000` |
| 6 | physical | `{"factor":67,"stage":395}` | `1/1 * f * q + -1/1 * b * q + -1/1 * p + 1/1 * b + -93/1000` |
| 7 | physical | `{"factor":68,"stage":395}` | `-1/1 * f * v + 1/1 * b * v + 1/1 * u + -1/1 * b + -93/1000` |
| 8 | physical | `{"factor":80,"stage":395}` | `-1/1 * r * k + 1/1 * b * k + 1/1 * w * j + -1/1 * b * w + -93/1000` |
| 9 | physical | `{"factor":87,"stage":395}` | `1/1 * k + -1/1 * c * k + -1/1 * e * j + 1/1 * c * e + -93/1000` |
| 10 | physical | `{"factor":90,"stage":395}` | `1/1 * f * v + -1/1 * c * v + -1/1 * u + 1/1 * c + -93/1000` |
| 11 | coordinate | `{"box":989,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 12 | coordinate | `{"box":989,"direction":"hi","value":"255239/500000","variable":"b"}` | `255239/500000 + -1 * b` |
| 13 | coordinate | `{"box":989,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 14 | coordinate | `{"box":989,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 15 | coordinate | `{"box":989,"direction":"hi","value":"27969/31250","variable":"j"}` | `27969/31250 + -1 * j` |
| 16 | coordinate | `{"box":989,"direction":"hi","value":"773343/1000000","variable":"k"}` | `773343/1000000 + -1 * k` |
| 17 | coordinate | `{"box":989,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 18 | coordinate | `{"box":989,"direction":"hi","value":"392679/1000000","variable":"e"}` | `392679/1000000 + -1 * e` |
| 19 | coordinate | `{"box":989,"direction":"hi","value":"120503/250000","variable":"f"}` | `120503/250000 + -1 * f` |
| 20 | coordinate | `{"box":989,"direction":"hi","value":"435291/1000000","variable":"p"}` | `435291/1000000 + -1 * p` |
| 21 | coordinate | `{"box":989,"direction":"hi","value":"21407/31250","variable":"u"}` | `21407/31250 + -1 * u` |
| 22 | coordinate | `{"box":989,"direction":"hi","value":"408537/500000","variable":"v"}` | `408537/500000 + -1 * v` |
| 23 | coordinate | `{"box":989,"direction":"lo","value":"46449/250000","variable":"b"}` | `-46449/250000 + 1 * b` |
| 24 | coordinate | `{"box":989,"direction":"lo","value":"13857/20000","variable":"r"}` | `-13857/20000 + 1 * r` |
| 25 | coordinate | `{"box":989,"direction":"lo","value":"143363/200000","variable":"j"}` | `-143363/200000 + 1 * j` |
| 26 | coordinate | `{"box":989,"direction":"lo","value":"68041/125000","variable":"k"}` | `-68041/125000 + 1 * k` |
| 27 | coordinate | `{"box":989,"direction":"lo","value":"346929/500000","variable":"c"}` | `-346929/500000 + 1 * c` |
| 28 | coordinate | `{"box":989,"direction":"lo","value":"114221/1000000","variable":"e"}` | `-114221/1000000 + 1 * e` |
| 29 | coordinate | `{"box":989,"direction":"lo","value":"167637/1000000","variable":"p"}` | `-167637/1000000 + 1 * p` |
| 30 | coordinate | `{"box":989,"direction":"lo","value":"82069/200000","variable":"q"}` | `-82069/200000 + 1 * q` |
| 31 | coordinate | `{"box":989,"direction":"lo","value":"79669/250000","variable":"u"}` | `-79669/250000 + 1 * u` |
| 32 | coordinate | `{"box":989,"direction":"lo","value":"537597/1000000","variable":"v"}` | `-537597/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 90016000000 | 4 |
| 1 | 8093000000 | 5 |
| 2 | 41965000000 | 6 |
| 3 | 22466000000 | 7 |
| 4 | 30826000000 | 8 |
| 5 | 4679000000 | 9 |
| 6 | 16859000000 | 10 |
| 7 | 23711000000 | 1 |
| 8 | 21959000000 | 0 |
| 9 | 1998000000 | 2 |
| 10 | 310000000 | 3 |
| 11 | 41965000000 | 23, 30 |
| 12 | 90016000000 | 11, 20 |
| 13 | 22466000000 | 12, 32 |
| 14 | 8093000000 | 11, 31 |
| 15 | 30826000000 | 12, 14 |
| 16 | 8093000000 | 11, 13 |
| 17 | 30826000000 | 12, 26 |
| 18 | 90016000000 | 11, 25 |
| 19 | 4679000000 | 17, 28 |
| 20 | 16859000000 | 17, 22 |
| 21 | 4679000000 | 16, 17 |
| 22 | 23711000000 | 13, 18 |
| 23 | 19032000000 | 15, 28 |
| 24 | 63924000000 | 19, 30 |
| 25 | 5607000000 | 19, 22 |
| 26 | 21959000000 | 14, 19 |
| 27 | 21959000000 | 14, 29 |
| 28 | 21959000000 | 24, 30 |
| 29 | 90016000000 | 16, 29 |
| 30 | 90016000000 | 25, 30 |
| 31 | 8093000000 | 14, 21 |
| 32 | 8093000000 | 13, 32 |
| 33 | 7115000000 | 13, 16 |
| 34 | 7115000000 | 14, 25 |
| 35 | 170912 | 29 |
| 36 | 18795 | 23 |
| 37 | 235050 | 31 |
| 38 | 7020 | 16 |
| 39 | 82404 | 27 |
| 40 | 627884040 | 14 |
| 41 | 94502 | 13 |
| 42 | 207744 | 28 |
| 43 | 17829709252 | 11 |
| 44 | 559862 | 19 |
| 45 | 56723906242 | 30 |
| 46 | 242536 | 32 |
| 47 | 347048 | 25 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -1393240504506521/250000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -1393240504506521/250000 | 1 | -1393240504506521/250000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 989 | -1393240504506521/250000 |
