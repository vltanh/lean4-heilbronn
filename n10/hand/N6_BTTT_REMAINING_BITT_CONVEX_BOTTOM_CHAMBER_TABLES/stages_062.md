# BITT convex: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 310

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS+/BFP+/AQR+/EPQ+/AFP+/BQR- |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS+/BFP+/AQR+/EPQ+/AFP+/BQR-:HHLLLLHLLHL |
| Index | 0 |
| Context | 11 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 309 |
| Coordinate cut | u low 58299/125000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 103507/250000 | 103767/1000000 | 103507/250000 |
| c | 135501/250000 | 4487/5000 | 135501/250000 | 4487/5000 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 155651/500000 | 58493/100000 | 155651/500000 | 58493/100000 |
| h | 796617/1000000 | 1 | 796617/1000000 | 1 |
| p | 22907/200000 | 172857/500000 | 22907/200000 | 172857/500000 |
| q | 258363/500000 | 158493/200000 | 258363/500000 | 158493/200000 |
| u | 36711/100000 | 58299/125000 | 36711/100000 | 58299/125000 |
| v | 196767/1000000 | 431993/1000000 | 196767/1000000 | 431993/1000000 |
| r | 88753/125000 | 1 | 88753/125000 | 1 |
| w | 402789/1000000 | 61857/100000 | 402789/1000000 | 61857/100000 |
| j | 145913/250000 | 87273/100000 | 145913/250000 | 87273/100000 |
| k | 753553/1000000 | 1 | 753553/1000000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"21:1361","triangle":"BHQ","value":"35263/100000"}` | `1 * b * v + 1 * h * u + -1 * b * h + -35263/100000` |
| 1 | physical | `{"factor":122,"stage":21}` | `-1/1 * f * k + -1/1 * h * j + 1/1 * f * h + 1/1 * j + -93/1000` |
| 2 | physical | `{"factor":128,"stage":21}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 3 | physical | `{"factor":129,"stage":21}` | `1/1 * p * v + -1/1 * h * p + -1/1 * q * u + 1/1 * h * u + -93/1000` |
| 4 | physical | `{"factor":140,"stage":21}` | `1/1 * e + -1/1 * a` |
| 5 | physical | `{"factor":165,"stage":21}` | `1/1 * c * h * p + -1/1 * b * h * p + -93/1000 * c + -93/1000 * b` |
| 6 | physical | `{"factor":28,"stage":21}` | `1/1 * v + -1/1 * a + -1/1 * e * u + 1/1 * a * u + -93/1000` |
| 7 | physical | `{"factor":34,"stage":21}` | `1/1 * f * q + -1/1 * a * f + -1/1 * p + 1/1 * a * p + -93/1000` |
| 8 | physical | `{"factor":38,"stage":21}` | `1/1 * h * p + -1/1 * a * p + -93/1000` |
| 9 | physical | `{"factor":45,"stage":21}` | `1/1 * u * w + -1/1 * a * u + -1/1 * v * r + 1/1 * a * r + -93/1000` |
| 10 | physical | `{"factor":71,"stage":21}` | `1/1 * b * q + 1/1 * h * p + -1/1 * b * h + -93/1000` |
| 11 | physical | `{"factor":78,"stage":21}` | `-1/1 * u * w + 1/1 * b * w + 1/1 * v * r + -1/1 * b * v + -93/1000` |
| 12 | physical | `{"factor":79,"stage":21}` | `1/1 * u * k + -1/1 * b * k + -1/1 * v * j + 1/1 * b * v + -93/1000` |
| 13 | physical | `{"factor":93,"stage":21}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 14 | physical | `{"factor":97,"stage":21}` | `-1/1 * p * v + 1/1 * c * v + 1/1 * q * u + -1/1 * c * q + -93/1000` |
| 15 | coordinate | `{"box":310,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 16 | coordinate | `{"box":310,"direction":"hi","value":"103507/250000","variable":"b"}` | `103507/250000 + -1 * b` |
| 17 | coordinate | `{"box":310,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 18 | coordinate | `{"box":310,"direction":"hi","value":"61857/100000","variable":"w"}` | `61857/100000 + -1 * w` |
| 19 | coordinate | `{"box":310,"direction":"hi","value":"87273/100000","variable":"j"}` | `87273/100000 + -1 * j` |
| 20 | coordinate | `{"box":310,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 21 | coordinate | `{"box":310,"direction":"hi","value":"4487/5000","variable":"c"}` | `4487/5000 + -1 * c` |
| 22 | coordinate | `{"box":310,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 23 | coordinate | `{"box":310,"direction":"hi","value":"58493/100000","variable":"f"}` | `58493/100000 + -1 * f` |
| 24 | coordinate | `{"box":310,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 25 | coordinate | `{"box":310,"direction":"hi","value":"172857/500000","variable":"p"}` | `172857/500000 + -1 * p` |
| 26 | coordinate | `{"box":310,"direction":"hi","value":"158493/200000","variable":"q"}` | `158493/200000 + -1 * q` |
| 27 | coordinate | `{"box":310,"direction":"hi","value":"58299/125000","variable":"u"}` | `58299/125000 + -1 * u` |
| 28 | coordinate | `{"box":310,"direction":"hi","value":"431993/1000000","variable":"v"}` | `431993/1000000 + -1 * v` |
| 29 | coordinate | `{"box":310,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 30 | coordinate | `{"box":310,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 31 | coordinate | `{"box":310,"direction":"lo","value":"88753/125000","variable":"r"}` | `-88753/125000 + 1 * r` |
| 32 | coordinate | `{"box":310,"direction":"lo","value":"402789/1000000","variable":"w"}` | `-402789/1000000 + 1 * w` |
| 33 | coordinate | `{"box":310,"direction":"lo","value":"753553/1000000","variable":"k"}` | `-753553/1000000 + 1 * k` |
| 34 | coordinate | `{"box":310,"direction":"lo","value":"135501/250000","variable":"c"}` | `-135501/250000 + 1 * c` |
| 35 | coordinate | `{"box":310,"direction":"lo","value":"155651/500000","variable":"f"}` | `-155651/500000 + 1 * f` |
| 36 | coordinate | `{"box":310,"direction":"lo","value":"796617/1000000","variable":"h"}` | `-796617/1000000 + 1 * h` |
| 37 | coordinate | `{"box":310,"direction":"lo","value":"22907/200000","variable":"p"}` | `-22907/200000 + 1 * p` |
| 38 | coordinate | `{"box":310,"direction":"lo","value":"258363/500000","variable":"q"}` | `-258363/500000 + 1 * q` |
| 39 | coordinate | `{"box":310,"direction":"lo","value":"36711/100000","variable":"u"}` | `-36711/100000 + 1 * u` |
| 40 | coordinate | `{"box":310,"direction":"lo","value":"196767/1000000","variable":"v"}` | `-196767/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 347160000000000 | 6 |
| 1 | 1226280000000000 | 7 |
| 2 | 866640000000000 | 8 |
| 3 | 2217880000000000 | 9 |
| 4 | 724520000000000 | 10 |
| 5 | 65360000000000 | 0 |
| 6 | 1809360000000000 | 11 |
| 7 | 594920000000000 | 12 |
| 8 | 170960000000000 | 13 |
| 9 | 1291160000000000 | 14 |
| 10 | 846920000000000 | 1 |
| 11 | 673800000000000 | 2 |
| 12 | 1291160000000000 | 3 |
| 13 | 161920000000000 | 4 |
| 14 | 1243400000000000 | 5 |
| 15 | 1226280000000000 | 15, 23 |
| 16 | 789880000000000 | 16, 24 |
| 17 | 724520000000000 | 26, 30 |
| 18 | 359640000000000 | 15, 37 |
| 19 | 1149080000000000 | 30, 40 |
| 20 | 1870760000000000 | 15, 27 |
| 21 | 1809360000000000 | 18, 30 |
| 22 | 1665320000000000 | 17, 29 |
| 23 | 552560000000000 | 15, 31 |
| 24 | 594920000000000 | 30, 33 |
| 25 | 313400000000000 | 24, 34 |
| 26 | 1462120000000000 | 34, 38 |
| 27 | 1291160000000000 | 28, 34 |
| 28 | 347160000000000 | 22, 27 |
| 29 | 846920000000000 | 24, 35 |
| 30 | 1226280000000000 | 23, 38 |
| 31 | 673800000000000 | 18, 35 |
| 32 | 1520720000000000 | 20, 23 |
| 33 | 1356520000000000 | 27, 36 |
| 34 | 846920000000000 | 19, 24 |
| 35 | 408520000000000 | 27, 32 |
| 36 | 408520000000000 | 17, 28 |
| 37 | 594920000000000 | 27, 33 |
| 38 | 594920000000000 | 19, 28 |
| 39 | 673800000000000 | 17, 33 |
| 40 | 673800000000000 | 18, 19 |
| 41 | 1243400000000000 | 21, 36, 37 |
| 42 | 990513577800000 | 21, 37 |
| 43 | 1115843272200000 | 24, 37 |
| 44 | 1243400000000000 | 30, 36, 37 |
| 45 | 142412819000000 | 30, 36 |
| 46 | 990513577800000 | 30, 37 |
| 47 | 12768680000 | 28 |
| 48 | 33229480000 | 29 |
| 49 | 40000000000 | 15, 39 |
| 50 | 14684400000 | 15 |
| 51 | 983146797880000 | 27 |
| 52 | 26698200000 | 25 |
| 53 | 18936450827 | 24 |
| 54 | 27181000000 | 34, 36 |
| 55 | 21652846677 | 34 |
| 56 | 14732210724 | 36 |
| 57 | 6258440000 | 19 |
| 58 | 9704520000 | 31 |
| 59 | 7353280000 | 22 |
| 60 | 20462760000 | 21 |
| 61 | 3109246677 | 16 |
| 62 | 8676720000 | 35 |
| 63 | 5661240000 | 38 |
| 64 | 7867440000 | 32 |
| 65 | 18115400000 | 20 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -66327150104555948011/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -66327150104555948011/1000000 | 1 | -66327150104555948011/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 310 | -66327150104555948011/1000000 |

## Stage 311

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS+/BFP+/AQR+/EPQ+/AFP+/BQR- |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS+/BFP+/AQR+/EPQ+/AFP+/BQR-:HHLLLLHLLHH |
| Index | 0 |
| Context | 11 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 309 |
| Coordinate cut | u high 58299/125000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 103507/250000 | 103767/1000000 | 103507/250000 |
| c | 135501/250000 | 4487/5000 | 135501/250000 | 4487/5000 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 155651/500000 | 58493/100000 | 155651/500000 | 58493/100000 |
| h | 796617/1000000 | 1 | 796617/1000000 | 1 |
| p | 22907/200000 | 172857/500000 | 22907/200000 | 172857/500000 |
| q | 258363/500000 | 158493/200000 | 258363/500000 | 158493/200000 |
| u | 58299/125000 | 711227/1000000 | 58299/125000 | 711227/1000000 |
| v | 196767/1000000 | 431993/1000000 | 196767/1000000 | 431993/1000000 |
| r | 88753/125000 | 1 | 88753/125000 | 1 |
| w | 402789/1000000 | 61857/100000 | 402789/1000000 | 61857/100000 |
| j | 145913/250000 | 87273/100000 | 145913/250000 | 87273/100000 |
| k | 753553/1000000 | 1 | 753553/1000000 | 1 |

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


## Stage 312

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS+/BFP+/AQR+/EPQ+/AFP+/BQR- |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS+/BFP+/AQR+/EPQ+/AFP+/BQR-:HHLLLLHLLHHL |
| Index | 0 |
| Context | 11 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 311 |
| Coordinate cut | c low 632053/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 103507/250000 | 103767/1000000 | 103507/250000 |
| c | 135501/250000 | 632053/1000000 | 135501/250000 | 632053/1000000 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 155651/500000 | 58493/100000 | 155651/500000 | 58493/100000 |
| h | 796617/1000000 | 1 | 796617/1000000 | 1 |
| p | 22907/200000 | 172857/500000 | 22907/200000 | 172857/500000 |
| q | 258363/500000 | 158493/200000 | 258363/500000 | 158493/200000 |
| u | 58299/125000 | 711227/1000000 | 58299/125000 | 711227/1000000 |
| v | 196767/1000000 | 431993/1000000 | 196767/1000000 | 431993/1000000 |
| r | 88753/125000 | 1 | 88753/125000 | 1 |
| w | 402789/1000000 | 61857/100000 | 402789/1000000 | 61857/100000 |
| j | 145913/250000 | 87273/100000 | 145913/250000 | 87273/100000 |
| k | 753553/1000000 | 1 | 753553/1000000 | 1 |

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
| 0 | physical | `{"factor":118,"stage":21}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 1 | physical | `{"factor":122,"stage":21}` | `-1/1 * f * k + -1/1 * h * j + 1/1 * f * h + 1/1 * j + -93/1000` |
| 2 | physical | `{"factor":128,"stage":21}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 3 | physical | `{"factor":140,"stage":21}` | `1/1 * e + -1/1 * a` |
| 4 | physical | `{"factor":165,"stage":21}` | `1/1 * c * h * p + -1/1 * b * h * p + -93/1000 * c + -93/1000 * b` |
| 5 | physical | `{"factor":28,"stage":21}` | `1/1 * v + -1/1 * a + -1/1 * e * u + 1/1 * a * u + -93/1000` |
| 6 | physical | `{"factor":34,"stage":21}` | `1/1 * f * q + -1/1 * a * f + -1/1 * p + 1/1 * a * p + -93/1000` |
| 7 | physical | `{"factor":45,"stage":21}` | `1/1 * u * w + -1/1 * a * u + -1/1 * v * r + 1/1 * a * r + -93/1000` |
| 8 | physical | `{"factor":78,"stage":21}` | `-1/1 * u * w + 1/1 * b * w + 1/1 * v * r + -1/1 * b * v + -93/1000` |
| 9 | physical | `{"factor":90,"stage":21}` | `1/1 * f * v + -1/1 * c * v + -1/1 * u + 1/1 * c + -93/1000` |
| 10 | physical | `{"factor":93,"stage":21}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 11 | physical | `{"factor":94,"stage":21}` | `1/1 * c * v + 1/1 * h * u + -1/1 * c * h + -93/1000` |
| 12 | coordinate | `{"box":312,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 13 | coordinate | `{"box":312,"direction":"hi","value":"103507/250000","variable":"b"}` | `103507/250000 + -1 * b` |
| 14 | coordinate | `{"box":312,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 15 | coordinate | `{"box":312,"direction":"hi","value":"61857/100000","variable":"w"}` | `61857/100000 + -1 * w` |
| 16 | coordinate | `{"box":312,"direction":"hi","value":"87273/100000","variable":"j"}` | `87273/100000 + -1 * j` |
| 17 | coordinate | `{"box":312,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 18 | coordinate | `{"box":312,"direction":"hi","value":"632053/1000000","variable":"c"}` | `632053/1000000 + -1 * c` |
| 19 | coordinate | `{"box":312,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 20 | coordinate | `{"box":312,"direction":"hi","value":"58493/100000","variable":"f"}` | `58493/100000 + -1 * f` |
| 21 | coordinate | `{"box":312,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 22 | coordinate | `{"box":312,"direction":"hi","value":"172857/500000","variable":"p"}` | `172857/500000 + -1 * p` |
| 23 | coordinate | `{"box":312,"direction":"hi","value":"158493/200000","variable":"q"}` | `158493/200000 + -1 * q` |
| 24 | coordinate | `{"box":312,"direction":"hi","value":"431993/1000000","variable":"v"}` | `431993/1000000 + -1 * v` |
| 25 | coordinate | `{"box":312,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 26 | coordinate | `{"box":312,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 27 | coordinate | `{"box":312,"direction":"lo","value":"88753/125000","variable":"r"}` | `-88753/125000 + 1 * r` |
| 28 | coordinate | `{"box":312,"direction":"lo","value":"402789/1000000","variable":"w"}` | `-402789/1000000 + 1 * w` |
| 29 | coordinate | `{"box":312,"direction":"lo","value":"145913/250000","variable":"j"}` | `-145913/250000 + 1 * j` |
| 30 | coordinate | `{"box":312,"direction":"lo","value":"753553/1000000","variable":"k"}` | `-753553/1000000 + 1 * k` |
| 31 | coordinate | `{"box":312,"direction":"lo","value":"135501/250000","variable":"c"}` | `-135501/250000 + 1 * c` |
| 32 | coordinate | `{"box":312,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 33 | coordinate | `{"box":312,"direction":"lo","value":"155651/500000","variable":"f"}` | `-155651/500000 + 1 * f` |
| 34 | coordinate | `{"box":312,"direction":"lo","value":"796617/1000000","variable":"h"}` | `-796617/1000000 + 1 * h` |
| 35 | coordinate | `{"box":312,"direction":"lo","value":"22907/200000","variable":"p"}` | `-22907/200000 + 1 * p` |
| 36 | coordinate | `{"box":312,"direction":"lo","value":"258363/500000","variable":"q"}` | `-258363/500000 + 1 * q` |
| 37 | coordinate | `{"box":312,"direction":"lo","value":"58299/125000","variable":"u"}` | `-58299/125000 + 1 * u` |
| 38 | coordinate | `{"box":312,"direction":"lo","value":"196767/1000000","variable":"v"}` | `-196767/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 12799000000000000 | 5 |
| 1 | 25661000000000000 | 6 |
| 2 | 50397000000000000 | 7 |
| 3 | 37191000000000000 | 8 |
| 4 | 11532000000000000 | 9 |
| 5 | 23748000000000000 | 10 |
| 6 | 8592000000000000 | 11 |
| 7 | 15891000000000000 | 0 |
| 8 | 15219000000000000 | 1 |
| 9 | 21447000000000000 | 2 |
| 10 | 7992000000000000 | 3 |
| 11 | 75588000000000000 | 4 |
| 12 | 25661000000000000 | 12, 20 |
| 13 | 8657000000000000 | 13, 21 |
| 14 | 25661000000000000 | 12, 35 |
| 15 | 37191000000000000 | 26, 38 |
| 16 | 37598000000000000 | 25, 37 |
| 17 | 37191000000000000 | 15, 26 |
| 18 | 50397000000000000 | 14, 25 |
| 19 | 6068000000000000 | 21, 31 |
| 20 | 17745471580000000 | 18, 34 |
| 21 | 23748000000000000 | 18, 23 |
| 22 | 2940000000000000 | 18, 24 |
| 23 | 12799000000000000 | 32, 37 |
| 24 | 15891000000000000 | 14, 19 |
| 25 | 15891000000000000 | 16, 32 |
| 26 | 15219000000000000 | 21, 33 |
| 27 | 25661000000000000 | 20, 36 |
| 28 | 2268000000000000 | 24, 33 |
| 29 | 9264000000000000 | 20, 38 |
| 30 | 21447000000000000 | 15, 33 |
| 31 | 36666000000000000 | 17, 20 |
| 32 | 8592000000000000 | 21, 37 |
| 33 | 15219000000000000 | 16, 21 |
| 34 | 13207000000000000 | 15, 37 |
| 35 | 13207000000000000 | 14, 24 |
| 36 | 37338000000000000 | 14, 30 |
| 37 | 37338000000000000 | 15, 16 |
| 38 | 75588000000000000 | 18, 34, 35 |
| 39 | 60214685796000000 | 18, 35 |
| 40 | 24027622164000000 | 21, 35 |
| 41 | 75588000000000000 | 26, 34, 35 |
| 42 | 60214685796000000 | 26, 35 |
| 43 | 7843539996000000 | 34, 35 |
| 44 | 609861000000 | 38 |
| 45 | 212511000000 | 25 |
| 46 | 26355993532 | 35 |
| 47 | 1000000000000 | 28, 37 |
| 48 | 494298000000 | 37 |
| 49 | 466392000000 | 28 |
| 50 | 1000000000000 | 24, 27 |
| 51 | 710024000000 | 24 |
| 52 | 431993000000 | 14 |
| 53 | 88295886565 | 31 |
| 54 | 3663608576553740 | 21 |
| 55 | 127369000000 | 22 |
| 56 | 4617230389531425 | 18 |
| 57 | 43380000000 | 30 |
| 58 | 338895000000 | 15 |
| 59 | 205263000000 | 29 |
| 60 | 5138000000 | 27 |
| 61 | 201222000000 | 19 |
| 62 | 591373000000 | 13 |
| 63 | 10138000000 | 20 |
| 64 | 471580000000 | 26, 34 |
| 65 | 375668644860 | 26 |
| 66 | 48934441860 | 34 |
| 67 | 105914000000 | 36 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -276018319838361979187/200000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -276018319838361979187/200000 | 1 | -276018319838361979187/200000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 312 | -276018319838361979187/200000 |

## Stage 313

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS+/BFP+/AQR+/EPQ+/AFP+/BQR- |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS+/BFP+/AQR+/EPQ+/AFP+/BQR-:HHLLLLHLLHHH |
| Index | 0 |
| Context | 11 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 311 |
| Coordinate cut | c high 632053/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 103507/250000 | 103767/1000000 | 103507/250000 |
| c | 632053/1000000 | 4487/5000 | 632053/1000000 | 4487/5000 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 155651/500000 | 58493/100000 | 155651/500000 | 58493/100000 |
| h | 796617/1000000 | 1 | 796617/1000000 | 1 |
| p | 22907/200000 | 172857/500000 | 22907/200000 | 172857/500000 |
| q | 258363/500000 | 158493/200000 | 258363/500000 | 158493/200000 |
| u | 58299/125000 | 711227/1000000 | 58299/125000 | 711227/1000000 |
| v | 196767/1000000 | 431993/1000000 | 196767/1000000 | 431993/1000000 |
| r | 88753/125000 | 1 | 88753/125000 | 1 |
| w | 402789/1000000 | 61857/100000 | 402789/1000000 | 61857/100000 |
| j | 145913/250000 | 87273/100000 | 145913/250000 | 87273/100000 |
| k | 753553/1000000 | 1 | 753553/1000000 | 1 |

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


## Stage 314

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS+/BFP+/AQR+/EPQ+/AFP+/BQR- |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS+/BFP+/AQR+/EPQ+/AFP+/BQR-:HHLLLLHLLHHHL |
| Index | 0 |
| Context | 11 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 313 |
| Coordinate cut | q low 702857/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 103507/250000 | 103767/1000000 | 103507/250000 |
| c | 632053/1000000 | 4487/5000 | 632053/1000000 | 4487/5000 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 155651/500000 | 58493/100000 | 155651/500000 | 58493/100000 |
| h | 796617/1000000 | 1 | 796617/1000000 | 1 |
| p | 22907/200000 | 172857/500000 | 22907/200000 | 172857/500000 |
| q | 258363/500000 | 702857/1000000 | 258363/500000 | 702857/1000000 |
| u | 58299/125000 | 711227/1000000 | 58299/125000 | 711227/1000000 |
| v | 196767/1000000 | 431993/1000000 | 196767/1000000 | 431993/1000000 |
| r | 88753/125000 | 1 | 88753/125000 | 1 |
| w | 402789/1000000 | 61857/100000 | 402789/1000000 | 61857/100000 |
| j | 145913/250000 | 87273/100000 | 145913/250000 | 87273/100000 |
| k | 753553/1000000 | 1 | 753553/1000000 | 1 |

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
