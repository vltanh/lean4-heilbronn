# BITT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 1865

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR-/EHQ+/CFQ- |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR-/EHQ+/CFQ-:LLHHLH |
| Index | 0 |
| Context | 417 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1861 |
| Coordinate cut | w high 433927/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 116533/1000000 | 117231/500000 | 116533/1000000 | 117231/500000 |
| b | 105267/1000000 | 234461/1000000 | 105267/1000000 | 234461/1000000 |
| c | 135501/250000 | 385393/500000 | 135501/250000 | 385393/500000 |
| e | 116533/1000000 | 234461/1000000 | 116533/1000000 | 234461/1000000 |
| f | 116533/1000000 | 234461/1000000 | 116533/1000000 | 234461/1000000 |
| h | 809383/1000000 | 1 | 809383/1000000 | 1 |
| p | 201957/1000000 | 19199/40000 | 201957/1000000 | 19199/40000 |
| q | 328009/1000000 | 113279/200000 | 328009/1000000 | 113279/200000 |
| u | 387641/1000000 | 118859/200000 | 387641/1000000 | 118859/200000 |
| v | 15301/50000 | 123917/250000 | 15301/50000 | 123917/250000 |
| r | 934901/1000000 | 1 | 934901/1000000 | 1 |
| w | 433927/500000 | 1 | 433927/500000 | 1 |
| j | 23559/50000 | 187867/250000 | 23559/50000 | 187867/250000 |
| k | 325337/500000 | 178947/200000 | 325337/500000 | 178947/200000 |

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
| 0 | bound | `{"direction":"lo","ref":"634:1249","triangle":"HPQ","value":"130219/1000000"}` | `1 * p * v + -1 * h * p + -1 * q * u + 1 * h * u + -130219/1000000` |
| 1 | bound | `{"direction":"lo","ref":"634:1303","triangle":"EHP","value":"316219/1000000"}` | `-1 * q + -1 * h * p + 1 * h + 1 * e * p + -316219/1000000` |
| 2 | physical | `{"factor":0,"stage":634}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 3 | physical | `{"factor":10,"stage":634}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 4 | physical | `{"factor":109,"stage":634}` | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -93/1000` |
| 5 | physical | `{"factor":120,"stage":634}` | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 6 | physical | `{"factor":134,"stage":634}` | `1/1 * u * w + -1/1 * q * u + -1/1 * p * w + -1/1 * v * r + 1/1 * p * v + 1/1 * q * r + -93/1000` |
| 7 | physical | `{"factor":143,"stage":634}` | `1/1 * f + -1/1 * e` |
| 8 | physical | `{"factor":42,"stage":634}` | `-1/1 * p * v + 1/1 * a * p + 1/1 * q * u + -1/1 * a * u + -93/1000` |
| 9 | physical | `{"factor":46,"stage":634}` | `1/1 * c * e + -1/1 * b * e + -93/1000` |
| 10 | physical | `{"factor":65,"stage":634}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 11 | physical | `{"factor":77,"stage":634}` | `-1/1 * u * w + 1/1 * b * w + 1/1 * v * r + -1/1 * b * v + -93/1000` |
| 12 | physical | `{"factor":90,"stage":634}` | `-1/1 * f * v + 1/1 * c * v + 1/1 * u + -1/1 * c + -93/1000` |
| 13 | coordinate | `{"box":1865,"direction":"hi","value":"117231/500000","variable":"a"}` | `117231/500000 + -1 * a` |
| 14 | coordinate | `{"box":1865,"direction":"hi","value":"234461/1000000","variable":"b"}` | `234461/1000000 + -1 * b` |
| 15 | coordinate | `{"box":1865,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 16 | coordinate | `{"box":1865,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 17 | coordinate | `{"box":1865,"direction":"hi","value":"234461/1000000","variable":"e"}` | `234461/1000000 + -1 * e` |
| 18 | coordinate | `{"box":1865,"direction":"hi","value":"234461/1000000","variable":"f"}` | `234461/1000000 + -1 * f` |
| 19 | coordinate | `{"box":1865,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 20 | coordinate | `{"box":1865,"direction":"hi","value":"19199/40000","variable":"p"}` | `19199/40000 + -1 * p` |
| 21 | coordinate | `{"box":1865,"direction":"hi","value":"113279/200000","variable":"q"}` | `113279/200000 + -1 * q` |
| 22 | coordinate | `{"box":1865,"direction":"hi","value":"118859/200000","variable":"u"}` | `118859/200000 + -1 * u` |
| 23 | coordinate | `{"box":1865,"direction":"hi","value":"123917/250000","variable":"v"}` | `123917/250000 + -1 * v` |
| 24 | coordinate | `{"box":1865,"direction":"lo","value":"116533/1000000","variable":"a"}` | `-116533/1000000 + 1 * a` |
| 25 | coordinate | `{"box":1865,"direction":"lo","value":"105267/1000000","variable":"b"}` | `-105267/1000000 + 1 * b` |
| 26 | coordinate | `{"box":1865,"direction":"lo","value":"934901/1000000","variable":"r"}` | `-934901/1000000 + 1 * r` |
| 27 | coordinate | `{"box":1865,"direction":"lo","value":"433927/500000","variable":"w"}` | `-433927/500000 + 1 * w` |
| 28 | coordinate | `{"box":1865,"direction":"lo","value":"135501/250000","variable":"c"}` | `-135501/250000 + 1 * c` |
| 29 | coordinate | `{"box":1865,"direction":"lo","value":"116533/1000000","variable":"e"}` | `-116533/1000000 + 1 * e` |
| 30 | coordinate | `{"box":1865,"direction":"lo","value":"116533/1000000","variable":"f"}` | `-116533/1000000 + 1 * f` |
| 31 | coordinate | `{"box":1865,"direction":"lo","value":"809383/1000000","variable":"h"}` | `-809383/1000000 + 1 * h` |
| 32 | coordinate | `{"box":1865,"direction":"lo","value":"201957/1000000","variable":"p"}` | `-201957/1000000 + 1 * p` |
| 33 | coordinate | `{"box":1865,"direction":"lo","value":"328009/1000000","variable":"q"}` | `-328009/1000000 + 1 * q` |
| 34 | coordinate | `{"box":1865,"direction":"lo","value":"387641/1000000","variable":"u"}` | `-387641/1000000 + 1 * u` |
| 35 | coordinate | `{"box":1865,"direction":"lo","value":"15301/50000","variable":"v"}` | `-15301/50000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 14868000000 | 2 |
| 1 | 11086000000 | 3 |
| 2 | 40742000000 | 8 |
| 3 | 14902000000 | 9 |
| 4 | 44410000000 | 10 |
| 5 | 47660000000 | 11 |
| 6 | 13840000000 | 12 |
| 7 | 37298000000 | 1 |
| 8 | 4111000000 | 4 |
| 9 | 37405000000 | 5 |
| 10 | 4111000000 | 0 |
| 11 | 36632000000 | 6 |
| 12 | 16484000000 | 7 |
| 13 | 25954000000 | 24, 25 |
| 14 | 14868000000 | 13, 28 |
| 15 | 14902000000 | 25, 29 |
| 16 | 55495000000 | 21, 25 |
| 17 | 51828000000 | 13, 32 |
| 18 | 47660000000 | 14, 23 |
| 19 | 40742000000 | 24, 34 |
| 20 | 47660000000 | 14, 27 |
| 21 | 14902000000 | 17, 28 |
| 22 | 13840000000 | 23, 28 |
| 23 | 37298000000 | 17, 32 |
| 24 | 4111000000 | 22, 29 |
| 25 | 37405000000 | 19, 30 |
| 26 | 44410000000 | 30, 33 |
| 27 | 13840000000 | 18, 23 |
| 28 | 37405000000 | 27, 30 |
| 29 | 41409000000 | 31, 32 |
| 30 | 37405000000 | 15, 19 |
| 31 | 36632000000 | 27, 32 |
| 32 | 36632000000 | 15, 33 |
| 33 | 11029000000 | 27, 34 |
| 34 | 11029000000 | 15, 35 |
| 35 | 105267 | 24 |
| 36 | 596963 | 25 |
| 37 | 1000000 | 14, 33 |
| 38 | 328009 | 14 |
| 39 | 796096 | 21 |
| 40 | 1000000 | 20, 35 |
| 41 | 306020 | 20 |
| 42 | 479975 | 23 |
| 43 | 1000000 | 33, 34 |
| 44 | 387641 | 33 |
| 45 | 610098 | 34 |
| 46 | 345461 | 32 |
| 47 | 1000000 | 22, 27 |
| 48 | 867854 | 22 |
| 49 | 594295 | 16 |
| 50 | 1000000 | 26, 35 |
| 51 | 951041 | 35 |
| 52 | 306020 | 26 |
| 53 | 36042 | 28 |
| 54 | 79452 | 19 |
| 55 | 15390720268 | 15 |
| 56 | 3680 | 30 |
| 57 | 6295 | 29 |
| 58 | 278795 | 13 |
| 59 | 4857887018 | 27 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -1348768185476679/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -1348768185476679/1000000 | 1 | -1348768185476679/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1865 | -1348768185476679/1000000 |

## Stage 1866

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR-/EHQ+/CFQ- |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR-/EHQ+/CFQ-:LLHHH |
| Index | 0 |
| Context | 417 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1860 |
| Coordinate cut | v high 123917/250000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 116533/1000000 | 117231/500000 | 116533/1000000 | 117231/500000 |
| b | 105267/1000000 | 234461/1000000 | 105267/1000000 | 234461/1000000 |
| c | 135501/250000 | 385393/500000 | 135501/250000 | 385393/500000 |
| e | 116533/1000000 | 234461/1000000 | 116533/1000000 | 234461/1000000 |
| f | 116533/1000000 | 234461/1000000 | 116533/1000000 | 234461/1000000 |
| h | 809383/1000000 | 1 | 809383/1000000 | 1 |
| p | 201957/1000000 | 19199/40000 | 201957/1000000 | 19199/40000 |
| q | 328009/1000000 | 113279/200000 | 328009/1000000 | 113279/200000 |
| u | 387641/1000000 | 118859/200000 | 387641/1000000 | 118859/200000 |
| v | 123917/250000 | 610247/1000000 | 123917/250000 | 610247/1000000 |
| r | 934901/1000000 | 1 | 934901/1000000 | 1 |
| w | 672401/1000000 | 1 | 672401/1000000 | 1 |
| j | 23559/50000 | 187867/250000 | 23559/50000 | 187867/250000 |
| k | 325337/500000 | 178947/200000 | 325337/500000 | 178947/200000 |

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
| 0 | bound | `{"direction":"lo","ref":"634:1249","triangle":"HPQ","value":"130219/1000000"}` | `1 * p * v + -1 * h * p + -1 * q * u + 1 * h * u + -130219/1000000` |
| 1 | bound | `{"direction":"lo","ref":"634:1303","triangle":"EHP","value":"316219/1000000"}` | `-1 * q + -1 * h * p + 1 * h + 1 * e * p + -316219/1000000` |
| 2 | bound | `{"direction":"lo","ref":"634:2086","triangle":"FPS","value":"47627/250000"}` | `1 * p * k + -1 * p + -1 * f * k + -1 * q * j + 1 * f * q + 1 * j + -47627/250000` |
| 3 | physical | `{"factor":0,"stage":634}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 4 | physical | `{"factor":10,"stage":634}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 5 | physical | `{"factor":109,"stage":634}` | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -93/1000` |
| 6 | physical | `{"factor":121,"stage":634}` | `-1/1 * f * k + -1/1 * h * j + 1/1 * f * h + 1/1 * j + -93/1000` |
| 7 | physical | `{"factor":135,"stage":634}` | `1/1 * u * k + -1/1 * q * u + -1/1 * p * k + -1/1 * v * j + 1/1 * p * v + 1/1 * q * j + -93/1000` |
| 8 | physical | `{"factor":143,"stage":634}` | `1/1 * f + -1/1 * e` |
| 9 | physical | `{"factor":42,"stage":634}` | `-1/1 * p * v + 1/1 * a * p + 1/1 * q * u + -1/1 * a * u + -93/1000` |
| 10 | physical | `{"factor":65,"stage":634}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 11 | physical | `{"factor":78,"stage":634}` | `1/1 * u * k + -1/1 * b * k + -1/1 * v * j + 1/1 * b * v + -93/1000` |
| 12 | physical | `{"factor":90,"stage":634}` | `-1/1 * f * v + 1/1 * c * v + 1/1 * u + -1/1 * c + -93/1000` |
| 13 | coordinate | `{"box":1866,"direction":"hi","value":"117231/500000","variable":"a"}` | `117231/500000 + -1 * a` |
| 14 | coordinate | `{"box":1866,"direction":"hi","value":"234461/1000000","variable":"b"}` | `234461/1000000 + -1 * b` |
| 15 | coordinate | `{"box":1866,"direction":"hi","value":"187867/250000","variable":"j"}` | `187867/250000 + -1 * j` |
| 16 | coordinate | `{"box":1866,"direction":"hi","value":"178947/200000","variable":"k"}` | `178947/200000 + -1 * k` |
| 17 | coordinate | `{"box":1866,"direction":"hi","value":"385393/500000","variable":"c"}` | `385393/500000 + -1 * c` |
| 18 | coordinate | `{"box":1866,"direction":"hi","value":"234461/1000000","variable":"e"}` | `234461/1000000 + -1 * e` |
| 19 | coordinate | `{"box":1866,"direction":"hi","value":"234461/1000000","variable":"f"}` | `234461/1000000 + -1 * f` |
| 20 | coordinate | `{"box":1866,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 21 | coordinate | `{"box":1866,"direction":"hi","value":"19199/40000","variable":"p"}` | `19199/40000 + -1 * p` |
| 22 | coordinate | `{"box":1866,"direction":"hi","value":"113279/200000","variable":"q"}` | `113279/200000 + -1 * q` |
| 23 | coordinate | `{"box":1866,"direction":"hi","value":"118859/200000","variable":"u"}` | `118859/200000 + -1 * u` |
| 24 | coordinate | `{"box":1866,"direction":"hi","value":"610247/1000000","variable":"v"}` | `610247/1000000 + -1 * v` |
| 25 | coordinate | `{"box":1866,"direction":"lo","value":"116533/1000000","variable":"a"}` | `-116533/1000000 + 1 * a` |
| 26 | coordinate | `{"box":1866,"direction":"lo","value":"105267/1000000","variable":"b"}` | `-105267/1000000 + 1 * b` |
| 27 | coordinate | `{"box":1866,"direction":"lo","value":"23559/50000","variable":"j"}` | `-23559/50000 + 1 * j` |
| 28 | coordinate | `{"box":1866,"direction":"lo","value":"325337/500000","variable":"k"}` | `-325337/500000 + 1 * k` |
| 29 | coordinate | `{"box":1866,"direction":"lo","value":"135501/250000","variable":"c"}` | `-135501/250000 + 1 * c` |
| 30 | coordinate | `{"box":1866,"direction":"lo","value":"116533/1000000","variable":"e"}` | `-116533/1000000 + 1 * e` |
| 31 | coordinate | `{"box":1866,"direction":"lo","value":"116533/1000000","variable":"f"}` | `-116533/1000000 + 1 * f` |
| 32 | coordinate | `{"box":1866,"direction":"lo","value":"809383/1000000","variable":"h"}` | `-809383/1000000 + 1 * h` |
| 33 | coordinate | `{"box":1866,"direction":"lo","value":"201957/1000000","variable":"p"}` | `-201957/1000000 + 1 * p` |
| 34 | coordinate | `{"box":1866,"direction":"lo","value":"328009/1000000","variable":"q"}` | `-328009/1000000 + 1 * q` |
| 35 | coordinate | `{"box":1866,"direction":"lo","value":"387641/1000000","variable":"u"}` | `-387641/1000000 + 1 * u` |
| 36 | coordinate | `{"box":1866,"direction":"lo","value":"123917/250000","variable":"v"}` | `-123917/250000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 7118000000 | 3 |
| 1 | 30069000000 | 4 |
| 2 | 41170000000 | 9 |
| 3 | 22671000000 | 10 |
| 4 | 18497000000 | 11 |
| 5 | 1645000000 | 12 |
| 6 | 4499000000 | 1 |
| 7 | 57087000000 | 5 |
| 8 | 66481000000 | 6 |
| 9 | 18179000000 | 2 |
| 10 | 22990000000 | 0 |
| 11 | 18179000000 | 7 |
| 12 | 23038000000 | 8 |
| 13 | 37187000000 | 25, 26 |
| 14 | 7118000000 | 17, 25 |
| 15 | 52740000000 | 22, 26 |
| 16 | 71239000000 | 13, 33 |
| 17 | 18497000000 | 14, 36 |
| 18 | 41170000000 | 25, 35 |
| 19 | 18497000000 | 26, 28 |
| 20 | 1645000000 | 17, 36 |
| 21 | 4499000000 | 18, 33 |
| 22 | 57087000000 | 18, 35 |
| 23 | 11865000000 | 20, 31 |
| 24 | 54616000000 | 19, 32 |
| 25 | 4492000000 | 19, 22 |
| 26 | 1645000000 | 31, 36 |
| 27 | 84661000000 | 16, 19 |
| 28 | 27489000000 | 32, 33 |
| 29 | 34096000000 | 20, 23 |
| 30 | 66481000000 | 15, 20 |
| 31 | 36677000000 | 23, 28 |
| 32 | 36677000000 | 27, 36 |
| 33 | 1000000 | 33, 36 |
| 34 | 495668 | 33 |
| 35 | 68955599515 | 36 |
| 36 | 1000000 | 22, 35 |
| 37 | 387641 | 22 |
| 38 | 1348190 | 23 |
| 39 | 549170 | 21 |
| 40 | 13647 | 14 |
| 41 | 1000000 | 28, 35 |
| 42 | 1460057 | 35 |
| 43 | 387641 | 28 |
| 44 | 1000000 | 24, 27 |
| 45 | 471180 | 24 |
| 46 | 610247 | 15 |
| 47 | 144246 | 29 |
| 48 | 417232 | 34 |
| 49 | 963620 | 20 |
| 50 | 1000000 | 32, 35 |
| 51 | 387641 | 32 |
| 52 | 1000000 | 19, 28 |
| 53 | 650674 | 19 |
| 54 | 365756 | 16 |
| 55 | 615236 | 27 |
| 56 | 518107 | 31 |
| 57 | 133690 | 30 |
| 58 | 74428 | 25 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -1229755852485389/500000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -1229755852485389/500000 | 1 | -1229755852485389/500000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1866 | -1229755852485389/500000 |

## Stage 1867

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR-/EHQ+/CFQ- |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR-/EHQ+/CFQ-:LH |
| Index | 0 |
| Context | 417 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1855 |
| Coordinate cut | c high 385393/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 116533/1000000 | 117231/500000 | 116533/1000000 | 117231/500000 |
| b | 105267/1000000 | 234461/1000000 | 105267/1000000 | 234461/1000000 |
| c | 385393/500000 | 22583/25000 | 385393/500000 | 22583/25000 |
| e | 116533/1000000 | 234461/1000000 | 116533/1000000 | 234461/1000000 |
| f | 116533/1000000 | 234461/1000000 | 116533/1000000 | 234461/1000000 |
| h | 809383/1000000 | 1 | 809383/1000000 | 1 |
| p | 201957/1000000 | 19199/40000 | 201957/1000000 | 19199/40000 |
| q | 328009/1000000 | 113279/200000 | 328009/1000000 | 113279/200000 |
| u | 387641/1000000 | 118859/200000 | 387641/1000000 | 118859/200000 |
| v | 15301/50000 | 610247/1000000 | 15301/50000 | 610247/1000000 |
| r | 934901/1000000 | 1 | 934901/1000000 | 1 |
| w | 137993/250000 | 1 | 137993/250000 | 1 |
| j | 23559/50000 | 187867/250000 | 23559/50000 | 187867/250000 |
| k | 535121/1000000 | 178947/200000 | 535121/1000000 | 178947/200000 |

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
| 0 | physical | `{"factor":109,"stage":634}` | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -93/1000` |
| 1 | physical | `{"factor":120,"stage":634}` | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 2 | physical | `{"factor":143,"stage":634}` | `1/1 * f + -1/1 * e` |
| 3 | physical | `{"factor":77,"stage":634}` | `-1/1 * u * w + 1/1 * b * w + 1/1 * v * r + -1/1 * b * v + -93/1000` |
| 4 | physical | `{"factor":90,"stage":634}` | `-1/1 * f * v + 1/1 * c * v + 1/1 * u + -1/1 * c + -93/1000` |
| 5 | physical | `{"factor":91,"stage":634}` | `-1/1 * f * w + 1/1 * c * w + 1/1 * r + -1/1 * c + -13857/20000` |
| 6 | coordinate | `{"box":1867,"direction":"hi","value":"234461/1000000","variable":"b"}` | `234461/1000000 + -1 * b` |
| 7 | coordinate | `{"box":1867,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 8 | coordinate | `{"box":1867,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 9 | coordinate | `{"box":1867,"direction":"hi","value":"234461/1000000","variable":"f"}` | `234461/1000000 + -1 * f` |
| 10 | coordinate | `{"box":1867,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 11 | coordinate | `{"box":1867,"direction":"hi","value":"118859/200000","variable":"u"}` | `118859/200000 + -1 * u` |
| 12 | coordinate | `{"box":1867,"direction":"hi","value":"610247/1000000","variable":"v"}` | `610247/1000000 + -1 * v` |
| 13 | coordinate | `{"box":1867,"direction":"lo","value":"105267/1000000","variable":"b"}` | `-105267/1000000 + 1 * b` |
| 14 | coordinate | `{"box":1867,"direction":"lo","value":"137993/250000","variable":"w"}` | `-137993/250000 + 1 * w` |
| 15 | coordinate | `{"box":1867,"direction":"lo","value":"385393/500000","variable":"c"}` | `-385393/500000 + 1 * c` |
| 16 | coordinate | `{"box":1867,"direction":"lo","value":"116533/1000000","variable":"e"}` | `-116533/1000000 + 1 * e` |
| 17 | coordinate | `{"box":1867,"direction":"lo","value":"116533/1000000","variable":"f"}` | `-116533/1000000 + 1 * f` |
| 18 | coordinate | `{"box":1867,"direction":"lo","value":"387641/1000000","variable":"u"}` | `-387641/1000000 + 1 * u` |
| 19 | coordinate | `{"box":1867,"direction":"lo","value":"15301/50000","variable":"v"}` | `-15301/50000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 25516000000 | 3 |
| 1 | 102684000000 | 4 |
| 2 | 29990000000 | 5 |
| 3 | 87347000000 | 0 |
| 4 | 40111000000 | 1 |
| 5 | 51910000000 | 2 |
| 6 | 4888000000 | 13, 19 |
| 7 | 20629000000 | 6, 12 |
| 8 | 25516000000 | 6, 14 |
| 9 | 102684000000 | 12, 15 |
| 10 | 29990000000 | 8, 15 |
| 11 | 87347000000 | 11, 16 |
| 12 | 40111000000 | 10, 17 |
| 13 | 102684000000 | 17, 19 |
| 14 | 21213000000 | 14, 17 |
| 15 | 48889000000 | 8, 9 |
| 16 | 87347000000 | 10, 11 |
| 17 | 40111000000 | 7, 10 |
| 18 | 25516000000 | 8, 11 |
| 19 | 25516000000 | 7, 19 |
| 20 | 1000000 | 6, 19 |
| 21 | 306020 | 6 |
| 22 | 234461 | 12 |
| 23 | 192049 | 18 |
| 24 | 40021397052 | 15 |
| 25 | 1000000 | 9, 14 |
| 26 | 551972 | 9 |
| 27 | 234461 | 8 |
| 28 | 37798406320 | 7 |
| 29 | 926013 | 19 |
| 30 | 369798 | 10 |
| 31 | 339716 | 17 |
| 32 | 114635 | 16 |
| 33 | 493571 | 13 |
| 34 | 230562 | 14 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -1017663596009183/250000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -1017663596009183/250000 | 1 | -1017663596009183/250000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1867 | -1017663596009183/250000 |

## Stage 1868

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR-/EHQ+/CFQ- |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS+/PQR+/BQS+/EPQ-/BFP-/BQR-/EHQ+/CFQ-:H |
| Index | 0 |
| Context | 417 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1854 |
| Coordinate cut | u high 118859/200000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 116533/1000000 | 117231/500000 | 116533/1000000 | 117231/500000 |
| b | 105267/1000000 | 234461/1000000 | 105267/1000000 | 234461/1000000 |
| c | 135501/250000 | 22583/25000 | 135501/250000 | 22583/25000 |
| e | 116533/1000000 | 234461/1000000 | 116533/1000000 | 234461/1000000 |
| f | 116533/1000000 | 234461/1000000 | 116533/1000000 | 234461/1000000 |
| h | 809383/1000000 | 1 | 809383/1000000 | 1 |
| p | 201957/1000000 | 19199/40000 | 201957/1000000 | 19199/40000 |
| q | 328009/1000000 | 113279/200000 | 328009/1000000 | 113279/200000 |
| u | 118859/200000 | 724507/1000000 | 118859/200000 | 724507/1000000 |
| v | 15301/50000 | 610247/1000000 | 15301/50000 | 610247/1000000 |
| r | 934901/1000000 | 1 | 934901/1000000 | 1 |
| w | 137993/250000 | 1 | 137993/250000 | 1 |
| j | 23559/50000 | 187867/250000 | 23559/50000 | 187867/250000 |
| k | 535121/1000000 | 178947/200000 | 535121/1000000 | 178947/200000 |

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
| 0 | bound | `{"direction":"lo","ref":"634:2378","triangle":"EQS","value":"51189/500000"}` | `-1 * u * k + 1 * e * u + 1 * k + 1 * v * j + -1 * v + -1 * e * j + -51189/500000` |
| 1 | bound | `{"direction":"lo","ref":"634:2439","triangle":"EHS","value":"170797/1000000"}` | `1 * k + 1 * h * j + -1 * h + -1 * e * j + -170797/1000000` |
| 2 | physical | `{"factor":109,"stage":634}` | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -93/1000` |
| 3 | physical | `{"factor":112,"stage":634}` | `-1/1 * p * v + 1/1 * e * p + 1/1 * v + 1/1 * q * u + -1/1 * q + -1/1 * e * u + -93/1000` |
| 4 | physical | `{"factor":120,"stage":634}` | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 5 | physical | `{"factor":121,"stage":634}` | `-1/1 * f * k + -1/1 * h * j + 1/1 * f * h + 1/1 * j + -93/1000` |
| 6 | physical | `{"factor":134,"stage":634}` | `1/1 * u * w + -1/1 * q * u + -1/1 * p * w + -1/1 * v * r + 1/1 * p * v + 1/1 * q * r + -93/1000` |
| 7 | physical | `{"factor":143,"stage":634}` | `1/1 * f + -1/1 * e` |
| 8 | physical | `{"factor":65,"stage":634}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 9 | physical | `{"factor":77,"stage":634}` | `-1/1 * u * w + 1/1 * b * w + 1/1 * v * r + -1/1 * b * v + -93/1000` |
| 10 | physical | `{"factor":78,"stage":634}` | `1/1 * u * k + -1/1 * b * k + -1/1 * v * j + 1/1 * b * v + -93/1000` |
| 11 | coordinate | `{"box":1868,"direction":"hi","value":"234461/1000000","variable":"b"}` | `234461/1000000 + -1 * b` |
| 12 | coordinate | `{"box":1868,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 13 | coordinate | `{"box":1868,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 14 | coordinate | `{"box":1868,"direction":"hi","value":"187867/250000","variable":"j"}` | `187867/250000 + -1 * j` |
| 15 | coordinate | `{"box":1868,"direction":"hi","value":"178947/200000","variable":"k"}` | `178947/200000 + -1 * k` |
| 16 | coordinate | `{"box":1868,"direction":"hi","value":"234461/1000000","variable":"e"}` | `234461/1000000 + -1 * e` |
| 17 | coordinate | `{"box":1868,"direction":"hi","value":"234461/1000000","variable":"f"}` | `234461/1000000 + -1 * f` |
| 18 | coordinate | `{"box":1868,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 19 | coordinate | `{"box":1868,"direction":"hi","value":"19199/40000","variable":"p"}` | `19199/40000 + -1 * p` |
| 20 | coordinate | `{"box":1868,"direction":"hi","value":"113279/200000","variable":"q"}` | `113279/200000 + -1 * q` |
| 21 | coordinate | `{"box":1868,"direction":"hi","value":"610247/1000000","variable":"v"}` | `610247/1000000 + -1 * v` |
| 22 | coordinate | `{"box":1868,"direction":"lo","value":"105267/1000000","variable":"b"}` | `-105267/1000000 + 1 * b` |
| 23 | coordinate | `{"box":1868,"direction":"lo","value":"137993/250000","variable":"w"}` | `-137993/250000 + 1 * w` |
| 24 | coordinate | `{"box":1868,"direction":"lo","value":"23559/50000","variable":"j"}` | `-23559/50000 + 1 * j` |
| 25 | coordinate | `{"box":1868,"direction":"lo","value":"535121/1000000","variable":"k"}` | `-535121/1000000 + 1 * k` |
| 26 | coordinate | `{"box":1868,"direction":"lo","value":"116533/1000000","variable":"e"}` | `-116533/1000000 + 1 * e` |
| 27 | coordinate | `{"box":1868,"direction":"lo","value":"116533/1000000","variable":"f"}` | `-116533/1000000 + 1 * f` |
| 28 | coordinate | `{"box":1868,"direction":"lo","value":"809383/1000000","variable":"h"}` | `-809383/1000000 + 1 * h` |
| 29 | coordinate | `{"box":1868,"direction":"lo","value":"201957/1000000","variable":"p"}` | `-201957/1000000 + 1 * p` |
| 30 | coordinate | `{"box":1868,"direction":"lo","value":"328009/1000000","variable":"q"}` | `-328009/1000000 + 1 * q` |
| 31 | coordinate | `{"box":1868,"direction":"lo","value":"118859/200000","variable":"u"}` | `-118859/200000 + 1 * u` |
| 32 | coordinate | `{"box":1868,"direction":"lo","value":"15301/50000","variable":"v"}` | `-15301/50000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 24808000000 | 8 |
| 1 | 78131000000 | 9 |
| 2 | 3672000000 | 10 |
| 3 | 65897000000 | 2 |
| 4 | 1125000000 | 1 |
| 5 | 78131000000 | 3 |
| 6 | 3672000000 | 0 |
| 7 | 16427000000 | 4 |
| 8 | 18809000000 | 5 |
| 9 | 78131000000 | 6 |
| 10 | 7086000000 | 7 |
| 11 | 24808000000 | 11, 30 |
| 12 | 68855000000 | 22, 32 |
| 13 | 5604000000 | 11, 21 |
| 14 | 78131000000 | 11, 23 |
| 15 | 3672000000 | 22, 25 |
| 16 | 78131000000 | 16, 29 |
| 17 | 8562000000 | 26, 31 |
| 18 | 4796000000 | 14, 16 |
| 19 | 35236000000 | 18, 27 |
| 20 | 24808000000 | 17, 20 |
| 21 | 11126000000 | 23, 27 |
| 22 | 5302000000 | 13, 17 |
| 23 | 18809000000 | 15, 17 |
| 24 | 65897000000 | 28, 31 |
| 25 | 16427000000 | 12, 18 |
| 26 | 17684000000 | 14, 18 |
| 27 | 78131000000 | 23, 29 |
| 28 | 78131000000 | 12, 30 |
| 29 | 548059 | 19 |
| 30 | 423996 | 22 |
| 31 | 78729 | 32 |
| 32 | 60939 | 28 |
| 33 | 482627 | 15 |
| 34 | 1000000 | 24, 26 |
| 35 | 471180 | 26 |
| 36 | 116533 | 24 |
| 37 | 1000000 | 17, 23 |
| 38 | 551972 | 17 |
| 39 | 234461 | 13 |
| 40 | 25627671179 | 12 |
| 41 | 525044 | 14 |
| 42 | 1438247 | 27 |
| 43 | 708049 | 16 |
| 44 | 88356 | 23 |
| 45 | 54333667097 | 31 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -2548234145936197/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -2548234145936197/1000000 | 1 | -2548234145936197/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1868 | -2548234145936197/1000000 |

## Stage 1869

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS-/HEQ+/CFQ+/PQR+/PQS+/QRS-/AQR+ |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS-/HEQ+/CFQ+/PQR+/PQS+/QRS-/AQR+:root |
| Index | 0 |
| Context | 444 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 687 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 105391/1000000 | 51147/250000 | 105391/1000000 | 51147/250000 |
| b | 1786/15625 | 75859/200000 | 1786/15625 | 75859/200000 |
| c | 10887/15625 | 39869/40000 | 10887/15625 | 39869/40000 |
| e | 105391/1000000 | 51147/250000 | 105391/1000000 | 51147/250000 |
| f | 1786/15625 | 659589/1000000 | 1786/15625 | 659589/1000000 |
| h | 67973/125000 | 28719/31250 | 67973/125000 | 28719/31250 |
| p | 64471/500000 | 28191/125000 | 64471/500000 | 28191/125000 |
| q | 300953/1000000 | 176379/250000 | 300953/1000000 | 176379/250000 |
| u | 344607/1000000 | 130599/200000 | 344607/1000000 | 130599/200000 |
| v | 70103/200000 | 695763/1000000 | 70103/200000 | 695763/1000000 |
| r | 139541/250000 | 1 | 139541/250000 | 1 |
| w | 900803/1000000 | 1 | 900803/1000000 | 1 |
| j | 293/625 | 224011/250000 | 293/625 | 224011/250000 |
| k | 498407/1000000 | 433601/500000 | 498407/1000000 | 433601/500000 |

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
