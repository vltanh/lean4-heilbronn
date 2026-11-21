# BITT convex: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 275

| Property | Value |
| --- | --- |
| Scope | root/AFQ-/AFP-/APR+/BFP+/PQS+/BQS+/APQ+/PQR-/AEP+ |
| Packet | coordinate:root/HEQ+/CFQ+/AFQ-/AFP-/APR+/BFP+/PQS+/BQS+/APQ+/PQR-/AEP+:LHHHLHLHLLLHHLH |
| Index | 0 |
| Context | 39 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 273 |
| Coordinate cut | h high 376047/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 113901/1000000 | 6143/20000 | 113901/1000000 | 6143/20000 |
| b | 5509/20000 | 244957/500000 | 5509/20000 | 244957/500000 |
| c | 851303/1000000 | 1 | 851303/1000000 | 1 |
| e | 113901/1000000 | 391/1000 | 113901/1000000 | 391/1000 |
| f | 279/1000 | 580183/1000000 | 279/1000 | 580183/1000000 |
| h | 376047/500000 | 178489/200000 | 376047/500000 | 178489/200000 |
| p | 218501/1000000 | 98007/200000 | 218501/1000000 | 98007/200000 |
| q | 41359/200000 | 422121/1000000 | 41359/200000 | 422121/1000000 |
| u | 246093/500000 | 74173/100000 | 246093/500000 | 74173/100000 |
| v | 494393/1000000 | 143991/200000 | 494393/1000000 | 143991/200000 |
| r | 730683/1000000 | 1 | 730683/1000000 | 1 |
| w | 253063/500000 | 12071/15625 | 253063/500000 | 12071/15625 |
| j | 216203/500000 | 333243/500000 | 216203/500000 | 333243/500000 |
| k | 201641/250000 | 1 | 201641/250000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"108:1474","triangle":"QRS","value":"128537/1000000"}` | `1 * r * k + -1 * v * r + -1 * u * k + -1 * w * j + 1 * u * w + 1 * v * j + -128537/1000000` |
| 1 | physical | `{"factor":123,"stage":108}` | `-1/1 * f * k + -1/1 * h * j + 1/1 * f * h + 1/1 * j + -93/1000` |
| 2 | physical | `{"factor":129,"stage":108}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 3 | physical | `{"factor":140,"stage":108}` | `1/1 * e + -1/1 * a` |
| 4 | physical | `{"factor":1404,"stage":108}` | `583753/1000000 * b * v + -439247/1000000 * h * u + 439247/1000000 * b * h + -1023/1000 * f * v + 1023/1000 * u + -1023/1000 * b` |
| 5 | physical | `{"factor":28,"stage":108}` | `1/1 * q + -1/1 * a + -1/1 * e * p + 1/1 * a * p + -93/1000` |
| 6 | physical | `{"factor":43,"stage":108}` | `1/1 * p * v + -1/1 * a * p + -1/1 * q * u + 1/1 * a * u + -93/1000` |
| 7 | physical | `{"factor":44,"stage":108}` | `1/1 * p * w + -1/1 * a * p + -1/1 * q * r + 1/1 * a * r + -93/1000` |
| 8 | physical | `{"factor":46,"stage":108}` | `-1/1 * u * w + 1/1 * a * u + 1/1 * v * r + -1/1 * a * r + -93/1000` |
| 9 | physical | `{"factor":67,"stage":108}` | `1/1 * f * q + -1/1 * b * q + -1/1 * p + 1/1 * b + -93/1000` |
| 10 | physical | `{"factor":71,"stage":108}` | `1/1 * b * q + 1/1 * h * p + -1/1 * b * h + -93/1000` |
| 11 | physical | `{"factor":75,"stage":108}` | `-1/1 * p * v + 1/1 * b * v + 1/1 * q * u + -1/1 * b * q + -93/1000` |
| 12 | physical | `{"factor":79,"stage":108}` | `1/1 * u * k + -1/1 * b * k + -1/1 * v * j + 1/1 * b * v + -93/1000` |
| 13 | physical | `{"factor":86,"stage":108}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 14 | physical | `{"factor":90,"stage":108}` | `1/1 * f * v + -1/1 * c * v + -1/1 * u + 1/1 * c + -93/1000` |
| 15 | coordinate | `{"box":275,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 16 | coordinate | `{"box":275,"direction":"hi","value":"244957/500000","variable":"b"}` | `244957/500000 + -1 * b` |
| 17 | coordinate | `{"box":275,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 18 | coordinate | `{"box":275,"direction":"hi","value":"12071/15625","variable":"w"}` | `12071/15625 + -1 * w` |
| 19 | coordinate | `{"box":275,"direction":"hi","value":"333243/500000","variable":"j"}` | `333243/500000 + -1 * j` |
| 20 | coordinate | `{"box":275,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 21 | coordinate | `{"box":275,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 22 | coordinate | `{"box":275,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 23 | coordinate | `{"box":275,"direction":"hi","value":"580183/1000000","variable":"f"}` | `580183/1000000 + -1 * f` |
| 24 | coordinate | `{"box":275,"direction":"hi","value":"178489/200000","variable":"h"}` | `178489/200000 + -1 * h` |
| 25 | coordinate | `{"box":275,"direction":"hi","value":"98007/200000","variable":"p"}` | `98007/200000 + -1 * p` |
| 26 | coordinate | `{"box":275,"direction":"hi","value":"422121/1000000","variable":"q"}` | `422121/1000000 + -1 * q` |
| 27 | coordinate | `{"box":275,"direction":"hi","value":"74173/100000","variable":"u"}` | `74173/100000 + -1 * u` |
| 28 | coordinate | `{"box":275,"direction":"hi","value":"143991/200000","variable":"v"}` | `143991/200000 + -1 * v` |
| 29 | coordinate | `{"box":275,"direction":"lo","value":"113901/1000000","variable":"a"}` | `-113901/1000000 + 1 * a` |
| 30 | coordinate | `{"box":275,"direction":"lo","value":"5509/20000","variable":"b"}` | `-5509/20000 + 1 * b` |
| 31 | coordinate | `{"box":275,"direction":"lo","value":"730683/1000000","variable":"r"}` | `-730683/1000000 + 1 * r` |
| 32 | coordinate | `{"box":275,"direction":"lo","value":"253063/500000","variable":"w"}` | `-253063/500000 + 1 * w` |
| 33 | coordinate | `{"box":275,"direction":"lo","value":"216203/500000","variable":"j"}` | `-216203/500000 + 1 * j` |
| 34 | coordinate | `{"box":275,"direction":"lo","value":"201641/250000","variable":"k"}` | `-201641/250000 + 1 * k` |
| 35 | coordinate | `{"box":275,"direction":"lo","value":"851303/1000000","variable":"c"}` | `-851303/1000000 + 1 * c` |
| 36 | coordinate | `{"box":275,"direction":"lo","value":"113901/1000000","variable":"e"}` | `-113901/1000000 + 1 * e` |
| 37 | coordinate | `{"box":275,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 38 | coordinate | `{"box":275,"direction":"lo","value":"376047/500000","variable":"h"}` | `-376047/500000 + 1 * h` |
| 39 | coordinate | `{"box":275,"direction":"lo","value":"218501/1000000","variable":"p"}` | `-218501/1000000 + 1 * p` |
| 40 | coordinate | `{"box":275,"direction":"lo","value":"41359/200000","variable":"q"}` | `-41359/200000 + 1 * q` |
| 41 | coordinate | `{"box":275,"direction":"lo","value":"246093/500000","variable":"u"}` | `-246093/500000 + 1 * u` |
| 42 | coordinate | `{"box":275,"direction":"lo","value":"494393/1000000","variable":"v"}` | `-494393/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 247200000000000 | 5 |
| 1 | 121320000000000 | 6 |
| 2 | 928440000000000 | 7 |
| 3 | 637560000000000 | 8 |
| 4 | 2441800000000000 | 9 |
| 5 | 2563160000000000 | 10 |
| 6 | 121320000000000 | 11 |
| 7 | 637560000000000 | 12 |
| 8 | 856720000000000 | 13 |
| 9 | 664600000000000 | 14 |
| 10 | 719360000000000 | 1 |
| 11 | 1753280000000000 | 2 |
| 12 | 637560000000000 | 0 |
| 13 | 54000000000000 | 3 |
| 14 | 623000000000000 | 4 |
| 15 | 2289509119000000 | 30, 38 |
| 16 | 399320000000000 | 29, 39 |
| 17 | 403280000000000 | 15, 25 |
| 18 | 1122560000000000 | 16, 42 |
| 19 | 758880000000000 | 15, 41 |
| 20 | 290880000000000 | 15, 31 |
| 21 | 637560000000000 | 16, 20 |
| 22 | 856720000000000 | 21, 36 |
| 23 | 664600000000000 | 35, 42 |
| 24 | 856720000000000 | 32, 35 |
| 25 | 247200000000000 | 36, 39 |
| 26 | 856720000000000 | 17, 22 |
| 27 | 719360000000000 | 23, 38 |
| 28 | 2441800000000000 | 26, 37 |
| 29 | 27280000000000 | 23, 42 |
| 30 | 1753280000000000 | 23, 32 |
| 31 | 2472640000000000 | 20, 23 |
| 32 | 884040000000000 | 25, 38 |
| 33 | 1679120000000000 | 24, 39 |
| 34 | 273650881000000 | 38, 41 |
| 35 | 116680000000000 | 33, 38 |
| 36 | 602680000000000 | 19, 24 |
| 37 | 22600000000000 | 18, 39 |
| 38 | 905840000000000 | 25, 32 |
| 39 | 928440000000000 | 17, 26 |
| 40 | 2390800000000000 | 20, 31 |
| 41 | 2390800000000000 | 18, 19 |
| 42 | 41796560000 | 26 |
| 43 | 21951400000 | 29 |
| 44 | 40000000000 | 15, 39 |
| 45 | 8740040000 | 15 |
| 46 | 47983800000 | 25 |
| 47 | 40000000000 | 16, 40 |
| 48 | 8271800000 | 16 |
| 49 | 10325920000 | 39 |
| 50 | 30195218419 | 30 |
| 51 | 10425800000 | 24 |
| 52 | 13376304416 | 38 |
| 53 | 1881000000 | 30, 42 |
| 54 | 3029121450 | 42 |
| 55 | 11642280000 | 18 |
| 56 | 9000000000 | 37, 42 |
| 57 | 15417577000 | 37 |
| 58 | 15989840000 | 27 |
| 59 | 589800000 | 35 |
| 60 | 28724280000 | 19 |
| 61 | 40000000000 | 17, 34 |
| 62 | 32262560000 | 17 |
| 63 | 40000000000 | 20 |
| 64 | 27749240000 | 31 |
| 65 | 40000000000 | 32, 33 |
| 66 | 17296240000 | 32 |
| 67 | 20245040000 | 33 |
| 68 | 13447200000 | 36 |
| 69 | 8183534814 | 41 |
| 70 | 9278280000 | 28 |
| 71 | 16346560000 | 34 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -34526069388456838477/500000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -34526069388456838477/500000 | 1 | -34526069388456838477/500000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 275 | -34526069388456838477/500000 |

## Stage 276

| Property | Value |
| --- | --- |
| Scope | root/AFQ-/AFP-/APR+/BFP+/PQS+/BQS+/APQ+/PQR-/AEP+ |
| Packet | coordinate:root/HEQ+/CFQ+/AFQ-/AFP-/APR+/BFP+/PQS+/BQS+/APQ+/PQR-/AEP+:LHHHLHLHLLLHHH |
| Index | 0 |
| Context | 39 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 272 |
| Coordinate cut | j high 333243/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 113901/1000000 | 6143/20000 | 113901/1000000 | 6143/20000 |
| b | 5509/20000 | 244957/500000 | 5509/20000 | 244957/500000 |
| c | 851303/1000000 | 1 | 851303/1000000 | 1 |
| e | 113901/1000000 | 391/1000 | 113901/1000000 | 391/1000 |
| f | 279/1000 | 580183/1000000 | 279/1000 | 580183/1000000 |
| h | 135501/250000 | 178489/200000 | 135501/250000 | 178489/200000 |
| p | 218501/1000000 | 98007/200000 | 218501/1000000 | 98007/200000 |
| q | 41359/200000 | 422121/1000000 | 41359/200000 | 422121/1000000 |
| u | 246093/500000 | 74173/100000 | 246093/500000 | 74173/100000 |
| v | 494393/1000000 | 143991/200000 | 494393/1000000 | 143991/200000 |
| r | 730683/1000000 | 1 | 730683/1000000 | 1 |
| w | 253063/500000 | 12071/15625 | 253063/500000 | 12071/15625 |
| j | 333243/500000 | 389799/500000 | 333243/500000 | 389799/500000 |
| k | 201641/250000 | 1 | 201641/250000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"108:1474","triangle":"QRS","value":"128537/1000000"}` | `1 * r * k + -1 * v * r + -1 * u * k + -1 * w * j + 1 * u * w + 1 * v * j + -128537/1000000` |
| 1 | physical | `{"factor":10,"stage":108}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 2 | physical | `{"factor":119,"stage":108}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 3 | physical | `{"factor":12,"stage":108}` | `1/1 * b * v + -1/1 * a * b + 1/1 * a * u + -279/1000` |
| 4 | physical | `{"factor":123,"stage":108}` | `-1/1 * f * k + -1/1 * h * j + 1/1 * f * h + 1/1 * j + -93/1000` |
| 5 | physical | `{"factor":129,"stage":108}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 6 | physical | `{"factor":140,"stage":108}` | `1/1 * e + -1/1 * a` |
| 7 | physical | `{"factor":28,"stage":108}` | `1/1 * q + -1/1 * a + -1/1 * e * p + 1/1 * a * p + -93/1000` |
| 8 | physical | `{"factor":44,"stage":108}` | `1/1 * p * w + -1/1 * a * p + -1/1 * q * r + 1/1 * a * r + -93/1000` |
| 9 | physical | `{"factor":46,"stage":108}` | `-1/1 * u * w + 1/1 * a * u + 1/1 * v * r + -1/1 * a * r + -93/1000` |
| 10 | physical | `{"factor":67,"stage":108}` | `1/1 * f * q + -1/1 * b * q + -1/1 * p + 1/1 * b + -93/1000` |
| 11 | physical | `{"factor":71,"stage":108}` | `1/1 * b * q + 1/1 * h * p + -1/1 * b * h + -93/1000` |
| 12 | physical | `{"factor":79,"stage":108}` | `1/1 * u * k + -1/1 * b * k + -1/1 * v * j + 1/1 * b * v + -93/1000` |
| 13 | physical | `{"factor":86,"stage":108}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 14 | physical | `{"factor":90,"stage":108}` | `1/1 * f * v + -1/1 * c * v + -1/1 * u + 1/1 * c + -93/1000` |
| 15 | coordinate | `{"box":276,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 16 | coordinate | `{"box":276,"direction":"hi","value":"244957/500000","variable":"b"}` | `244957/500000 + -1 * b` |
| 17 | coordinate | `{"box":276,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 18 | coordinate | `{"box":276,"direction":"hi","value":"12071/15625","variable":"w"}` | `12071/15625 + -1 * w` |
| 19 | coordinate | `{"box":276,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 20 | coordinate | `{"box":276,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 21 | coordinate | `{"box":276,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 22 | coordinate | `{"box":276,"direction":"hi","value":"580183/1000000","variable":"f"}` | `580183/1000000 + -1 * f` |
| 23 | coordinate | `{"box":276,"direction":"hi","value":"98007/200000","variable":"p"}` | `98007/200000 + -1 * p` |
| 24 | coordinate | `{"box":276,"direction":"hi","value":"422121/1000000","variable":"q"}` | `422121/1000000 + -1 * q` |
| 25 | coordinate | `{"box":276,"direction":"hi","value":"143991/200000","variable":"v"}` | `143991/200000 + -1 * v` |
| 26 | coordinate | `{"box":276,"direction":"lo","value":"113901/1000000","variable":"a"}` | `-113901/1000000 + 1 * a` |
| 27 | coordinate | `{"box":276,"direction":"lo","value":"5509/20000","variable":"b"}` | `-5509/20000 + 1 * b` |
| 28 | coordinate | `{"box":276,"direction":"lo","value":"730683/1000000","variable":"r"}` | `-730683/1000000 + 1 * r` |
| 29 | coordinate | `{"box":276,"direction":"lo","value":"253063/500000","variable":"w"}` | `-253063/500000 + 1 * w` |
| 30 | coordinate | `{"box":276,"direction":"lo","value":"333243/500000","variable":"j"}` | `-333243/500000 + 1 * j` |
| 31 | coordinate | `{"box":276,"direction":"lo","value":"851303/1000000","variable":"c"}` | `-851303/1000000 + 1 * c` |
| 32 | coordinate | `{"box":276,"direction":"lo","value":"113901/1000000","variable":"e"}` | `-113901/1000000 + 1 * e` |
| 33 | coordinate | `{"box":276,"direction":"lo","value":"135501/250000","variable":"h"}` | `-135501/250000 + 1 * h` |
| 34 | coordinate | `{"box":276,"direction":"lo","value":"218501/1000000","variable":"p"}` | `-218501/1000000 + 1 * p` |
| 35 | coordinate | `{"box":276,"direction":"lo","value":"41359/200000","variable":"q"}` | `-41359/200000 + 1 * q` |
| 36 | coordinate | `{"box":276,"direction":"lo","value":"246093/500000","variable":"u"}` | `-246093/500000 + 1 * u` |
| 37 | coordinate | `{"box":276,"direction":"lo","value":"494393/1000000","variable":"v"}` | `-494393/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 7453000000 | 1 |
| 1 | 19506000000 | 3 |
| 2 | 8580000000 | 7 |
| 3 | 16033000000 | 8 |
| 4 | 16033000000 | 9 |
| 5 | 13775000000 | 10 |
| 6 | 4365000000 | 11 |
| 7 | 41298000000 | 12 |
| 8 | 46640000000 | 13 |
| 9 | 36181000000 | 14 |
| 10 | 9002000000 | 2 |
| 11 | 10854000000 | 4 |
| 12 | 31921000000 | 5 |
| 13 | 16033000000 | 0 |
| 14 | 1486000000 | 6 |
| 15 | 26959000000 | 26, 27 |
| 16 | 4365000000 | 27, 33 |
| 17 | 1957000000 | 27, 35 |
| 18 | 14644000000 | 25, 27 |
| 19 | 46160000000 | 16, 37 |
| 20 | 35539000000 | 15, 36 |
| 21 | 41298000000 | 16, 19 |
| 22 | 46640000000 | 20, 32 |
| 23 | 36181000000 | 31, 37 |
| 24 | 46640000000 | 29, 31 |
| 25 | 8580000000 | 32, 34 |
| 26 | 12591000000 | 28, 32 |
| 27 | 43051000000 | 17, 21 |
| 28 | 9002000000 | 21, 30 |
| 29 | 10854000000 | 22, 33 |
| 30 | 13775000000 | 22, 35 |
| 31 | 36181000000 | 22, 37 |
| 32 | 31921000000 | 22, 29 |
| 33 | 42775000000 | 19, 22 |
| 34 | 4365000000 | 23, 33 |
| 35 | 10854000000 | 30, 33 |
| 36 | 16033000000 | 18, 34 |
| 37 | 16033000000 | 17, 24 |
| 38 | 25265000000 | 19, 36 |
| 39 | 25265000000 | 30, 37 |
| 40 | 56956000000 | 19, 28 |
| 41 | 56956000000 | 29, 30 |
| 42 | 206795 | 27 |
| 43 | 275450 | 35 |
| 44 | 240625 | 24 |
| 45 | 58296 | 26 |
| 46 | 225168 | 34 |
| 47 | 206361 | 16 |
| 48 | 99540 | 18 |
| 49 | 196150 | 36 |
| 50 | 7133 | 31 |
| 51 | 64041 | 19 |
| 52 | 905881017 | 30 |
| 53 | 65516 | 17 |
| 54 | 61261 | 32 |
| 55 | 69237 | 33 |
| 56 | 41470 | 37 |
| 57 | 193720 | 22 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -2172522021138063/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -2172522021138063/1000000 | 1 | -2172522021138063/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 276 | -2172522021138063/1000000 |

## Stage 277

| Property | Value |
| --- | --- |
| Scope | root/AFQ-/AFP-/APR+/BFP+/PQS+/BQS+/APQ+/PQR-/AEP+ |
| Packet | coordinate:root/HEQ+/CFQ+/AFQ-/AFP-/APR+/BFP+/PQS+/BQS+/APQ+/PQR-/AEP+:LHHHLHLHLLH |
| Index | 0 |
| Context | 39 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 267 |
| Coordinate cut | b high 244957/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 113901/1000000 | 6143/20000 | 113901/1000000 | 6143/20000 |
| b | 244957/500000 | 145071/250000 | 244957/500000 | 145071/250000 |
| c | 707319/1000000 | 1 | 707319/1000000 | 1 |
| e | 113901/1000000 | 391/1000 | 113901/1000000 | 391/1000 |
| f | 279/1000 | 580183/1000000 | 279/1000 | 580183/1000000 |
| h | 135501/250000 | 178489/200000 | 135501/250000 | 178489/200000 |
| p | 218501/1000000 | 98007/200000 | 218501/1000000 | 98007/200000 |
| q | 41359/200000 | 422121/1000000 | 41359/200000 | 422121/1000000 |
| u | 246093/500000 | 74173/100000 | 246093/500000 | 74173/100000 |
| v | 49221/125000 | 143991/200000 | 49221/125000 | 143991/200000 |
| r | 730683/1000000 | 1 | 730683/1000000 | 1 |
| w | 253063/500000 | 12071/15625 | 253063/500000 | 12071/15625 |
| j | 216203/500000 | 389799/500000 | 216203/500000 | 389799/500000 |
| k | 201641/250000 | 1 | 201641/250000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"108:1474","triangle":"QRS","value":"128537/1000000"}` | `1 * r * k + -1 * v * r + -1 * u * k + -1 * w * j + 1 * u * w + 1 * v * j + -128537/1000000` |
| 1 | bound | `{"direction":"lo","ref":"108:1614","triangle":"BCH","value":"15649/50000"}` | `1 * c * h + -1 * b * h + -15649/50000` |
| 2 | bound | `{"direction":"lo","ref":"108:1631","triangle":"BCQ","value":"101497/500000"}` | `1 * c * v + -1 * b * v + -101497/500000` |
| 3 | physical | `{"factor":0,"stage":108}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 4 | physical | `{"factor":129,"stage":108}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 5 | physical | `{"factor":1404,"stage":108}` | `583753/1000000 * b * v + -439247/1000000 * h * u + 439247/1000000 * b * h + -1023/1000 * f * v + 1023/1000 * u + -1023/1000 * b` |
| 6 | physical | `{"factor":142,"stage":108}` | `1/1 * f + -1/1 * b` |
| 7 | physical | `{"factor":46,"stage":108}` | `-1/1 * u * w + 1/1 * a * u + 1/1 * v * r + -1/1 * a * r + -93/1000` |
| 8 | physical | `{"factor":79,"stage":108}` | `1/1 * u * k + -1/1 * b * k + -1/1 * v * j + 1/1 * b * v + -93/1000` |
| 9 | physical | `{"factor":86,"stage":108}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 10 | physical | `{"factor":90,"stage":108}` | `1/1 * f * v + -1/1 * c * v + -1/1 * u + 1/1 * c + -93/1000` |
| 11 | coordinate | `{"box":277,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 12 | coordinate | `{"box":277,"direction":"hi","value":"145071/250000","variable":"b"}` | `145071/250000 + -1 * b` |
| 13 | coordinate | `{"box":277,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 14 | coordinate | `{"box":277,"direction":"hi","value":"12071/15625","variable":"w"}` | `12071/15625 + -1 * w` |
| 15 | coordinate | `{"box":277,"direction":"hi","value":"389799/500000","variable":"j"}` | `389799/500000 + -1 * j` |
| 16 | coordinate | `{"box":277,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 17 | coordinate | `{"box":277,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 18 | coordinate | `{"box":277,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 19 | coordinate | `{"box":277,"direction":"hi","value":"580183/1000000","variable":"f"}` | `580183/1000000 + -1 * f` |
| 20 | coordinate | `{"box":277,"direction":"hi","value":"178489/200000","variable":"h"}` | `178489/200000 + -1 * h` |
| 21 | coordinate | `{"box":277,"direction":"hi","value":"74173/100000","variable":"u"}` | `74173/100000 + -1 * u` |
| 22 | coordinate | `{"box":277,"direction":"hi","value":"143991/200000","variable":"v"}` | `143991/200000 + -1 * v` |
| 23 | coordinate | `{"box":277,"direction":"lo","value":"113901/1000000","variable":"a"}` | `-113901/1000000 + 1 * a` |
| 24 | coordinate | `{"box":277,"direction":"lo","value":"244957/500000","variable":"b"}` | `-244957/500000 + 1 * b` |
| 25 | coordinate | `{"box":277,"direction":"lo","value":"730683/1000000","variable":"r"}` | `-730683/1000000 + 1 * r` |
| 26 | coordinate | `{"box":277,"direction":"lo","value":"253063/500000","variable":"w"}` | `-253063/500000 + 1 * w` |
| 27 | coordinate | `{"box":277,"direction":"lo","value":"216203/500000","variable":"j"}` | `-216203/500000 + 1 * j` |
| 28 | coordinate | `{"box":277,"direction":"lo","value":"201641/250000","variable":"k"}` | `-201641/250000 + 1 * k` |
| 29 | coordinate | `{"box":277,"direction":"lo","value":"707319/1000000","variable":"c"}` | `-707319/1000000 + 1 * c` |
| 30 | coordinate | `{"box":277,"direction":"lo","value":"113901/1000000","variable":"e"}` | `-113901/1000000 + 1 * e` |
| 31 | coordinate | `{"box":277,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 32 | coordinate | `{"box":277,"direction":"lo","value":"135501/250000","variable":"h"}` | `-135501/250000 + 1 * h` |
| 33 | coordinate | `{"box":277,"direction":"lo","value":"246093/500000","variable":"u"}` | `-246093/500000 + 1 * u` |
| 34 | coordinate | `{"box":277,"direction":"lo","value":"49221/125000","variable":"v"}` | `-49221/125000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 17198000000000000 | 3 |
| 1 | 33966000000000000 | 7 |
| 2 | 79000000000000 | 1 |
| 3 | 25018000000000000 | 2 |
| 4 | 39701000000000000 | 8 |
| 5 | 60188000000000000 | 9 |
| 6 | 41269000000000000 | 10 |
| 7 | 39381000000000000 | 4 |
| 8 | 33966000000000000 | 0 |
| 9 | 19449000000000000 | 6 |
| 10 | 40341000000000000 | 5 |
| 11 | 17198000000000000 | 23, 24 |
| 12 | 17198000000000000 | 17, 23 |
| 13 | 17641000000000000 | 20, 24 |
| 14 | 38232000000000000 | 22, 24 |
| 15 | 33966000000000000 | 21, 23 |
| 16 | 33966000000000000 | 11, 13 |
| 17 | 39701000000000000 | 24, 28 |
| 18 | 60188000000000000 | 17, 30 |
| 19 | 79000000000000 | 17, 32 |
| 20 | 16251000000000000 | 17, 22 |
| 21 | 30298000000000000 | 26, 29 |
| 22 | 29890000000000000 | 14, 17 |
| 23 | 60188000000000000 | 13, 18 |
| 24 | 39381000000000000 | 19, 26 |
| 25 | 39381000000000000 | 16, 19 |
| 26 | 17720000000000000 | 32, 33 |
| 27 | 5735000000000000 | 16, 33 |
| 28 | 5735000000000000 | 27, 34 |
| 29 | 73348000000000000 | 16, 25 |
| 30 | 73348000000000000 | 26, 27 |
| 31 | 336773000000 | 24, 32 |
| 32 | 51429350489313092 | 24 |
| 33 | 164989807522 | 32 |
| 34 | 179773000000 | 12, 34 |
| 35 | 70788854664 | 12 |
| 36 | 195408126532 | 22 |
| 37 | 860098000000 | 14 |
| 38 | 506126000000 | 29 |
| 39 | 707319000000 | 26 |
| 40 | 157000000000 | 19, 34 |
| 41 | 61821576000 | 19 |
| 42 | 706514000000 | 33 |
| 43 | 732815000000 | 17 |
| 44 | 1000000000000 | 25, 28 |
| 45 | 806564000000 | 25 |
| 46 | 730683000000 | 28 |
| 47 | 835100000000 | 13 |
| 48 | 1000000000000 | 14, 27 |
| 49 | 772544000000 | 15 |
| 50 | 589328000000 | 27 |
| 51 | 251994000000 | 31 |
| 52 | 336773000000 | 20, 33 |
| 53 | 202708955778 | 20 |
| 54 | 300551379985 | 21 |
| 55 | 60208000000 | 11 |
| 56 | 456362000000 | 34 |
| 57 | 14118560957000000 | 16 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -1072164535345669266989/500000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -1072164535345669266989/500000 | 1 | -1072164535345669266989/500000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 277 | -1072164535345669266989/500000 |

## Stage 278

| Property | Value |
| --- | --- |
| Scope | root/AFQ-/AFP-/APR+/BFP+/PQS+/BQS+/APQ+/PQR-/AEP+ |
| Packet | coordinate:root/HEQ+/CFQ+/AFQ-/AFP-/APR+/BFP+/PQS+/BQS+/APQ+/PQR-/AEP+:LHHHLHLHLH |
| Index | 0 |
| Context | 39 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 266 |
| Coordinate cut | j high 389799/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 113901/1000000 | 6143/20000 | 113901/1000000 | 6143/20000 |
| b | 5509/20000 | 145071/250000 | 5509/20000 | 145071/250000 |
| c | 707319/1000000 | 1 | 707319/1000000 | 1 |
| e | 113901/1000000 | 391/1000 | 113901/1000000 | 391/1000 |
| f | 279/1000 | 580183/1000000 | 279/1000 | 580183/1000000 |
| h | 135501/250000 | 178489/200000 | 135501/250000 | 178489/200000 |
| p | 218501/1000000 | 98007/200000 | 218501/1000000 | 98007/200000 |
| q | 41359/200000 | 422121/1000000 | 41359/200000 | 422121/1000000 |
| u | 246093/500000 | 74173/100000 | 246093/500000 | 74173/100000 |
| v | 49221/125000 | 143991/200000 | 49221/125000 | 143991/200000 |
| r | 730683/1000000 | 1 | 730683/1000000 | 1 |
| w | 253063/500000 | 12071/15625 | 253063/500000 | 12071/15625 |
| j | 389799/500000 | 872503/1000000 | 389799/500000 | 872503/1000000 |
| k | 201641/250000 | 1 | 201641/250000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"108:1474","triangle":"QRS","value":"128537/1000000"}` | `1 * r * k + -1 * v * r + -1 * u * k + -1 * w * j + 1 * u * w + 1 * v * j + -128537/1000000` |
| 1 | physical | `{"factor":10,"stage":108}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 2 | physical | `{"factor":12,"stage":108}` | `1/1 * b * v + -1/1 * a * b + 1/1 * a * u + -279/1000` |
| 3 | physical | `{"factor":123,"stage":108}` | `-1/1 * f * k + -1/1 * h * j + 1/1 * f * h + 1/1 * j + -93/1000` |
| 4 | physical | `{"factor":129,"stage":108}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 5 | physical | `{"factor":140,"stage":108}` | `1/1 * e + -1/1 * a` |
| 6 | physical | `{"factor":157,"stage":108}` | `157/250 + -1/1 * f + -1/1 * e + 1/1 * e * f` |
| 7 | physical | `{"factor":28,"stage":108}` | `1/1 * q + -1/1 * a + -1/1 * e * p + 1/1 * a * p + -93/1000` |
| 8 | physical | `{"factor":44,"stage":108}` | `1/1 * p * w + -1/1 * a * p + -1/1 * q * r + 1/1 * a * r + -93/1000` |
| 9 | physical | `{"factor":46,"stage":108}` | `-1/1 * u * w + 1/1 * a * u + 1/1 * v * r + -1/1 * a * r + -93/1000` |
| 10 | physical | `{"factor":49,"stage":108}` | `1/1 * c * e + -1/1 * b * e + -93/1000` |
| 11 | physical | `{"factor":67,"stage":108}` | `1/1 * f * q + -1/1 * b * q + -1/1 * p + 1/1 * b + -93/1000` |
| 12 | physical | `{"factor":71,"stage":108}` | `1/1 * b * q + 1/1 * h * p + -1/1 * b * h + -93/1000` |
| 13 | physical | `{"factor":79,"stage":108}` | `1/1 * u * k + -1/1 * b * k + -1/1 * v * j + 1/1 * b * v + -93/1000` |
| 14 | physical | `{"factor":86,"stage":108}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 15 | physical | `{"factor":90,"stage":108}` | `1/1 * f * v + -1/1 * c * v + -1/1 * u + 1/1 * c + -93/1000` |
| 16 | coordinate | `{"box":278,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 17 | coordinate | `{"box":278,"direction":"hi","value":"145071/250000","variable":"b"}` | `145071/250000 + -1 * b` |
| 18 | coordinate | `{"box":278,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 19 | coordinate | `{"box":278,"direction":"hi","value":"12071/15625","variable":"w"}` | `12071/15625 + -1 * w` |
| 20 | coordinate | `{"box":278,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 21 | coordinate | `{"box":278,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 22 | coordinate | `{"box":278,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 23 | coordinate | `{"box":278,"direction":"hi","value":"580183/1000000","variable":"f"}` | `580183/1000000 + -1 * f` |
| 24 | coordinate | `{"box":278,"direction":"hi","value":"178489/200000","variable":"h"}` | `178489/200000 + -1 * h` |
| 25 | coordinate | `{"box":278,"direction":"hi","value":"98007/200000","variable":"p"}` | `98007/200000 + -1 * p` |
| 26 | coordinate | `{"box":278,"direction":"hi","value":"422121/1000000","variable":"q"}` | `422121/1000000 + -1 * q` |
| 27 | coordinate | `{"box":278,"direction":"hi","value":"74173/100000","variable":"u"}` | `74173/100000 + -1 * u` |
| 28 | coordinate | `{"box":278,"direction":"hi","value":"143991/200000","variable":"v"}` | `143991/200000 + -1 * v` |
| 29 | coordinate | `{"box":278,"direction":"lo","value":"113901/1000000","variable":"a"}` | `-113901/1000000 + 1 * a` |
| 30 | coordinate | `{"box":278,"direction":"lo","value":"5509/20000","variable":"b"}` | `-5509/20000 + 1 * b` |
| 31 | coordinate | `{"box":278,"direction":"lo","value":"730683/1000000","variable":"r"}` | `-730683/1000000 + 1 * r` |
| 32 | coordinate | `{"box":278,"direction":"lo","value":"253063/500000","variable":"w"}` | `-253063/500000 + 1 * w` |
| 33 | coordinate | `{"box":278,"direction":"lo","value":"389799/500000","variable":"j"}` | `-389799/500000 + 1 * j` |
| 34 | coordinate | `{"box":278,"direction":"lo","value":"201641/250000","variable":"k"}` | `-201641/250000 + 1 * k` |
| 35 | coordinate | `{"box":278,"direction":"lo","value":"707319/1000000","variable":"c"}` | `-707319/1000000 + 1 * c` |
| 36 | coordinate | `{"box":278,"direction":"lo","value":"113901/1000000","variable":"e"}` | `-113901/1000000 + 1 * e` |
| 37 | coordinate | `{"box":278,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 38 | coordinate | `{"box":278,"direction":"lo","value":"135501/250000","variable":"h"}` | `-135501/250000 + 1 * h` |
| 39 | coordinate | `{"box":278,"direction":"lo","value":"218501/1000000","variable":"p"}` | `-218501/1000000 + 1 * p` |
| 40 | coordinate | `{"box":278,"direction":"lo","value":"41359/200000","variable":"q"}` | `-41359/200000 + 1 * q` |
| 41 | coordinate | `{"box":278,"direction":"lo","value":"246093/500000","variable":"u"}` | `-246093/500000 + 1 * u` |
| 42 | coordinate | `{"box":278,"direction":"lo","value":"49221/125000","variable":"v"}` | `-49221/125000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 11609000000 | 1 |
| 1 | 3648000000 | 2 |
| 2 | 24426000000 | 7 |
| 3 | 36035000000 | 8 |
| 4 | 36035000000 | 9 |
| 5 | 9880000000 | 10 |
| 6 | 20009000000 | 11 |
| 7 | 8400000000 | 12 |
| 8 | 54345000000 | 13 |
| 9 | 40365000000 | 14 |
| 10 | 24259000000 | 15 |
| 11 | 9039000000 | 3 |
| 12 | 8112000000 | 4 |
| 13 | 29752000000 | 0 |
| 14 | 805000000 | 5 |
| 15 | 6257000000 | 6 |
| 16 | 15257000000 | 29, 30 |
| 17 | 9880000000 | 30, 36 |
| 18 | 8400000000 | 30, 38 |
| 19 | 57992000000 | 28, 30 |
| 20 | 39682000000 | 27, 29 |
| 21 | 54345000000 | 17, 20 |
| 22 | 50245000000 | 21, 36 |
| 23 | 24259000000 | 35, 42 |
| 24 | 40365000000 | 32, 35 |
| 25 | 6257000000 | 23, 36 |
| 26 | 24426000000 | 36, 39 |
| 27 | 40365000000 | 18, 22 |
| 28 | 9039000000 | 23, 38 |
| 29 | 20009000000 | 23, 40 |
| 30 | 24259000000 | 23, 42 |
| 31 | 8112000000 | 23, 32 |
| 32 | 17151000000 | 20, 23 |
| 33 | 8400000000 | 25, 38 |
| 34 | 9039000000 | 33, 38 |
| 35 | 36035000000 | 25, 32 |
| 36 | 36035000000 | 18, 26 |
| 37 | 6283000000 | 19, 27 |
| 38 | 6283000000 | 18, 42 |
| 39 | 24593000000 | 20, 41 |
| 40 | 24593000000 | 33, 42 |
| 41 | 31493000000 | 20, 31 |
| 42 | 6371000000 | 18, 34 |
| 43 | 37864000000 | 32, 33 |
| 44 | 275450 | 29 |
| 45 | 332677 | 30 |
| 46 | 1000000 | 17, 42 |
| 47 | 393768 | 17 |
| 48 | 630846 | 28 |
| 49 | 1000000 | 16, 41 |
| 50 | 556846 | 16 |
| 51 | 307150 | 27 |
| 52 | 118353 | 40 |
| 53 | 61816 | 39 |
| 54 | 715622 | 19 |
| 55 | 74470 | 41 |
| 56 | 238157 | 35 |
| 57 | 16596065444 | 33 |
| 58 | 806564 | 18 |
| 59 | 1000000 | 20 |
| 60 | 988211 | 31 |
| 61 | 779598 | 32 |
| 62 | 346395 | 36 |
| 63 | 274108 | 37 |
| 64 | 1815 | 24 |
| 65 | 522596 | 34 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -1930037248563353/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -1930037248563353/1000000 | 1 | -1930037248563353/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 278 | -1930037248563353/1000000 |

## Stage 279

| Property | Value |
| --- | --- |
| Scope | root/AFQ-/AFP-/APR+/BFP+/PQS+/BQS+/APQ+/PQR-/AEP+ |
| Packet | coordinate:root/HEQ+/CFQ+/AFQ-/AFP-/APR+/BFP+/PQS+/BQS+/APQ+/PQR-/AEP+:LHHHLHLHH |
| Index | 0 |
| Context | 39 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 265 |
| Coordinate cut | h high 178489/200000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 113901/1000000 | 6143/20000 | 113901/1000000 | 6143/20000 |
| b | 5509/20000 | 145071/250000 | 5509/20000 | 145071/250000 |
| c | 707319/1000000 | 1 | 707319/1000000 | 1 |
| e | 113901/1000000 | 391/1000 | 113901/1000000 | 391/1000 |
| f | 279/1000 | 580183/1000000 | 279/1000 | 580183/1000000 |
| h | 178489/200000 | 1 | 178489/200000 | 1 |
| p | 218501/1000000 | 98007/200000 | 218501/1000000 | 98007/200000 |
| q | 41359/200000 | 422121/1000000 | 41359/200000 | 422121/1000000 |
| u | 246093/500000 | 74173/100000 | 246093/500000 | 74173/100000 |
| v | 49221/125000 | 143991/200000 | 49221/125000 | 143991/200000 |
| r | 730683/1000000 | 1 | 730683/1000000 | 1 |
| w | 253063/500000 | 12071/15625 | 253063/500000 | 12071/15625 |
| j | 216203/500000 | 872503/1000000 | 216203/500000 | 872503/1000000 |
| k | 201641/250000 | 1 | 201641/250000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"108:1474","triangle":"QRS","value":"128537/1000000"}` | `1 * r * k + -1 * v * r + -1 * u * k + -1 * w * j + 1 * u * w + 1 * v * j + -128537/1000000` |
| 1 | physical | `{"factor":111,"stage":108}` | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 2 | physical | `{"factor":123,"stage":108}` | `-1/1 * f * k + -1/1 * h * j + 1/1 * f * h + 1/1 * j + -93/1000` |
| 3 | physical | `{"factor":128,"stage":108}` | `1/1 * u * k + -1/1 * u + -1/1 * f * k + -1/1 * v * j + 1/1 * f * v + 1/1 * j + -93/1000` |
| 4 | physical | `{"factor":129,"stage":108}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 5 | physical | `{"factor":135,"stage":108}` | `-1/1 * u * w + 1/1 * q * u + 1/1 * p * w + 1/1 * v * r + -1/1 * p * v + -1/1 * q * r + -93/1000` |
| 6 | physical | `{"factor":140,"stage":108}` | `1/1 * e + -1/1 * a` |
| 7 | physical | `{"factor":1404,"stage":108}` | `583753/1000000 * b * v + -439247/1000000 * h * u + 439247/1000000 * b * h + -1023/1000 * f * v + 1023/1000 * u + -1023/1000 * b` |
| 8 | physical | `{"factor":43,"stage":108}` | `1/1 * p * v + -1/1 * a * p + -1/1 * q * u + 1/1 * a * u + -93/1000` |
| 9 | physical | `{"factor":67,"stage":108}` | `1/1 * f * q + -1/1 * b * q + -1/1 * p + 1/1 * b + -93/1000` |
| 10 | physical | `{"factor":71,"stage":108}` | `1/1 * b * q + 1/1 * h * p + -1/1 * b * h + -93/1000` |
| 11 | physical | `{"factor":79,"stage":108}` | `1/1 * u * k + -1/1 * b * k + -1/1 * v * j + 1/1 * b * v + -93/1000` |
| 12 | physical | `{"factor":86,"stage":108}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 13 | physical | `{"factor":90,"stage":108}` | `1/1 * f * v + -1/1 * c * v + -1/1 * u + 1/1 * c + -93/1000` |
| 14 | coordinate | `{"box":279,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 15 | coordinate | `{"box":279,"direction":"hi","value":"145071/250000","variable":"b"}` | `145071/250000 + -1 * b` |
| 16 | coordinate | `{"box":279,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 17 | coordinate | `{"box":279,"direction":"hi","value":"12071/15625","variable":"w"}` | `12071/15625 + -1 * w` |
| 18 | coordinate | `{"box":279,"direction":"hi","value":"872503/1000000","variable":"j"}` | `872503/1000000 + -1 * j` |
| 19 | coordinate | `{"box":279,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 20 | coordinate | `{"box":279,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 21 | coordinate | `{"box":279,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 22 | coordinate | `{"box":279,"direction":"hi","value":"580183/1000000","variable":"f"}` | `580183/1000000 + -1 * f` |
| 23 | coordinate | `{"box":279,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 24 | coordinate | `{"box":279,"direction":"hi","value":"98007/200000","variable":"p"}` | `98007/200000 + -1 * p` |
| 25 | coordinate | `{"box":279,"direction":"hi","value":"422121/1000000","variable":"q"}` | `422121/1000000 + -1 * q` |
| 26 | coordinate | `{"box":279,"direction":"hi","value":"74173/100000","variable":"u"}` | `74173/100000 + -1 * u` |
| 27 | coordinate | `{"box":279,"direction":"hi","value":"143991/200000","variable":"v"}` | `143991/200000 + -1 * v` |
| 28 | coordinate | `{"box":279,"direction":"lo","value":"113901/1000000","variable":"a"}` | `-113901/1000000 + 1 * a` |
| 29 | coordinate | `{"box":279,"direction":"lo","value":"5509/20000","variable":"b"}` | `-5509/20000 + 1 * b` |
| 30 | coordinate | `{"box":279,"direction":"lo","value":"730683/1000000","variable":"r"}` | `-730683/1000000 + 1 * r` |
| 31 | coordinate | `{"box":279,"direction":"lo","value":"253063/500000","variable":"w"}` | `-253063/500000 + 1 * w` |
| 32 | coordinate | `{"box":279,"direction":"lo","value":"216203/500000","variable":"j"}` | `-216203/500000 + 1 * j` |
| 33 | coordinate | `{"box":279,"direction":"lo","value":"201641/250000","variable":"k"}` | `-201641/250000 + 1 * k` |
| 34 | coordinate | `{"box":279,"direction":"lo","value":"707319/1000000","variable":"c"}` | `-707319/1000000 + 1 * c` |
| 35 | coordinate | `{"box":279,"direction":"lo","value":"113901/1000000","variable":"e"}` | `-113901/1000000 + 1 * e` |
| 36 | coordinate | `{"box":279,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 37 | coordinate | `{"box":279,"direction":"lo","value":"178489/200000","variable":"h"}` | `-178489/200000 + 1 * h` |
| 38 | coordinate | `{"box":279,"direction":"lo","value":"218501/1000000","variable":"p"}` | `-218501/1000000 + 1 * p` |
| 39 | coordinate | `{"box":279,"direction":"lo","value":"41359/200000","variable":"q"}` | `-41359/200000 + 1 * q` |
| 40 | coordinate | `{"box":279,"direction":"lo","value":"246093/500000","variable":"u"}` | `-246093/500000 + 1 * u` |
| 41 | coordinate | `{"box":279,"direction":"lo","value":"49221/125000","variable":"v"}` | `-49221/125000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 522960000000000 | 8 |
| 1 | 968520000000000 | 9 |
| 2 | 829960000000000 | 10 |
| 3 | 418960000000000 | 11 |
| 4 | 355020000000000 | 12 |
| 5 | 834960000000000 | 13 |
| 6 | 488760000000000 | 1 |
| 7 | 720380000000000 | 2 |
| 8 | 55100000000000 | 3 |
| 9 | 217380000000000 | 4 |
| 10 | 522960000000000 | 5 |
| 11 | 474060000000000 | 0 |
| 12 | 240560000000000 | 6 |
| 13 | 773000000000000 | 7 |
| 14 | 490422069000000 | 29, 37 |
| 15 | 138560000000000 | 29, 39 |
| 16 | 401160000000000 | 28, 38 |
| 17 | 121800000000000 | 14, 24 |
| 18 | 870200000000000 | 27, 29 |
| 19 | 522960000000000 | 26, 28 |
| 20 | 418960000000000 | 29, 33 |
| 21 | 355020000000000 | 20, 35 |
| 22 | 834960000000000 | 20, 27 |
| 23 | 355020000000000 | 17, 20 |
| 24 | 488760000000000 | 35, 40 |
| 25 | 355020000000000 | 16, 21 |
| 26 | 720380000000000 | 22, 37 |
| 27 | 2580000000000 | 25, 36 |
| 28 | 965940000000000 | 22, 39 |
| 29 | 99281000000000 | 22, 41 |
| 30 | 217380000000000 | 22, 31 |
| 31 | 992860000000000 | 19, 22 |
| 32 | 829960000000000 | 24, 37 |
| 33 | 149220000000000 | 26, 37 |
| 34 | 720380000000000 | 32, 37 |
| 35 | 173580000000000 | 17, 38 |
| 36 | 349400000000000 | 24, 31 |
| 37 | 522960000000000 | 16, 25 |
| 38 | 48920000000000 | 17, 26 |
| 39 | 48920000000000 | 16, 41 |
| 40 | 691440000000000 | 16, 33 |
| 41 | 691440000000000 | 31, 32 |
| 42 | 4529668000 | 22 |
| 43 | 15435020000 | 25 |
| 44 | 8868960000 | 24 |
| 45 | 1816397992 | 15 |
| 46 | 1846468705 | 29 |
| 47 | 764446050 | 37 |
| 48 | 1069000000 | 15, 41 |
| 49 | 18358746596 | 27 |
| 50 | 6793140000 | 31 |
| 51 | 7795380000 | 40 |
| 52 | 5064660000 | 34 |
| 53 | 2069000000 | 23, 40 |
| 54 | 1018332834 | 23 |
| 55 | 12191520000 | 26 |
| 56 | 4709460000 | 18 |
| 57 | 8524560000 | 16 |
| 58 | 20000000000 | 26, 31 |
| 59 | 14834600000 | 17 |
| 60 | 20000000000 | 31, 38 |
| 61 | 10122520000 | 38 |
| 62 | 20000000000 | 30, 41 |
| 63 | 14613660000 | 41 |
| 64 | 7875360000 | 30 |
| 65 | 829360000 | 35 |
| 66 | 5003360000 | 28 |
| 67 | 3025380000 | 33 |
| 68 | 9015400000 | 36 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -5480717981660392907/100000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -5480717981660392907/100000 | 1 | -5480717981660392907/100000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 279 | -5480717981660392907/100000 |
