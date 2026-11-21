# BITT convex: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 320

| Property | Value |
| --- | --- |
| Scope | root/AFQ-/AFP-/APR+/BFP+/PQS-/AQS-/HQR+ |
| Packet | coordinate:root/HEQ+/CFQ+/AFQ-/AFP-/APR+/BFP+/PQS-/AQS-/HQR+:HLHH |
| Index | 0 |
| Context | 46 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 288 |
| Coordinate cut | q high 231677/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| b | 103767/1000000 | 58493/100000 | 103767/1000000 | 58493/100000 |
| c | 141069/200000 | 1 | 141069/200000 | 1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 279/1000 | 58493/100000 | 279/1000 | 58493/100000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 136893/1000000 | 49193/100000 | 136893/1000000 | 49193/100000 |
| q | 231677/500000 | 11483/20000 | 231677/500000 | 11483/20000 |
| u | 127361/500000 | 624421/1000000 | 127361/500000 | 624421/1000000 |
| v | 121107/250000 | 86721/100000 | 121107/250000 | 86721/100000 |
| r | 141809/200000 | 1 | 141809/200000 | 1 |
| w | 8131/20000 | 84379/100000 | 8131/20000 | 84379/100000 |
| j | 13857/20000 | 874351/1000000 | 13857/20000 | 874351/1000000 |
| k | 60269/100000 | 1 | 60269/100000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"115:675","triangle":"QRS","value":"9481/100000"}` | `1 * r * k + -1 * v * r + -1 * u * k + -1 * w * j + 1 * u * w + 1 * v * j + -9481/100000` |
| 1 | bound | `{"direction":"lo","ref":"115:849","triangle":"PQR","value":"30721/250000"}` | `-1 * u * w + 1 * q * u + 1 * p * w + 1 * v * r + -1 * p * v + -1 * q * r + -30721/250000` |
| 2 | bound | `{"direction":"lo","ref":"115:956","triangle":"FQS","value":"125231/1000000"}` | `1 * u * k + -1 * u + -1 * f * k + -1 * v * j + 1 * f * v + 1 * j + -125231/1000000` |
| 3 | bound | `{"direction":"lo","ref":"115:977","triangle":"FPS","value":"319311/1000000"}` | `1 * p * k + -1 * p + -1 * f * k + -1 * q * j + 1 * f * q + 1 * j + -319311/1000000` |
| 4 | physical | `{"factor":117,"stage":115}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 5 | physical | `{"factor":122,"stage":115}` | `1/1 * p * v + -1/1 * p + -1/1 * f * v + -1/1 * q * u + 1/1 * f * q + 1/1 * u + -93/1000` |
| 6 | physical | `{"factor":127,"stage":115}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 7 | physical | `{"factor":139,"stage":115}` | `1/1 * e + -1/1 * a` |
| 8 | physical | `{"factor":141,"stage":115}` | `1/1 * f + -1/1 * b` |
| 9 | physical | `{"factor":1538,"stage":115}` | `1367/4000 * v + 109/160 * c * v + -1367/4000 * e * u + -109/160 * c * e + -1023/1000 * p * v + 1023/1000 * e * p + 1023/1000 * q * u + -1023/1000 * q` |
| 10 | physical | `{"factor":1588,"stage":115}` | `-385517/1000000 * u * k + -637483/1000000 * c * k + 385517/1000000 * v * j + 637483/1000000 * c * v + -1023/1000 * v + 1023/1000 * e * u + 1023/1000 * k + -1023/1000 * e * j` |
| 11 | physical | `{"factor":42,"stage":115}` | `1/1 * p * w + -1/1 * a * p + -1/1 * q * r + 1/1 * a * r + -93/1000` |
| 12 | physical | `{"factor":65,"stage":115}` | `1/1 * f * q + -1/1 * b * q + -1/1 * p + 1/1 * b + -93/1000` |
| 13 | physical | `{"factor":84,"stage":115}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 14 | physical | `{"factor":88,"stage":115}` | `1/1 * f * v + -1/1 * c * v + -1/1 * u + 1/1 * c + -93/1000` |
| 15 | coordinate | `{"box":320,"direction":"hi","value":"391/1000","variable":"a"}` | `391/1000 + -1 * a` |
| 16 | coordinate | `{"box":320,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 17 | coordinate | `{"box":320,"direction":"hi","value":"84379/100000","variable":"w"}` | `84379/100000 + -1 * w` |
| 18 | coordinate | `{"box":320,"direction":"hi","value":"874351/1000000","variable":"j"}` | `874351/1000000 + -1 * j` |
| 19 | coordinate | `{"box":320,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 20 | coordinate | `{"box":320,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 21 | coordinate | `{"box":320,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 22 | coordinate | `{"box":320,"direction":"hi","value":"58493/100000","variable":"f"}` | `58493/100000 + -1 * f` |
| 23 | coordinate | `{"box":320,"direction":"hi","value":"49193/100000","variable":"p"}` | `49193/100000 + -1 * p` |
| 24 | coordinate | `{"box":320,"direction":"hi","value":"11483/20000","variable":"q"}` | `11483/20000 + -1 * q` |
| 25 | coordinate | `{"box":320,"direction":"hi","value":"624421/1000000","variable":"u"}` | `624421/1000000 + -1 * u` |
| 26 | coordinate | `{"box":320,"direction":"hi","value":"86721/100000","variable":"v"}` | `86721/100000 + -1 * v` |
| 27 | coordinate | `{"box":320,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 28 | coordinate | `{"box":320,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 29 | coordinate | `{"box":320,"direction":"lo","value":"141809/200000","variable":"r"}` | `-141809/200000 + 1 * r` |
| 30 | coordinate | `{"box":320,"direction":"lo","value":"8131/20000","variable":"w"}` | `-8131/20000 + 1 * w` |
| 31 | coordinate | `{"box":320,"direction":"lo","value":"13857/20000","variable":"j"}` | `-13857/20000 + 1 * j` |
| 32 | coordinate | `{"box":320,"direction":"lo","value":"60269/100000","variable":"k"}` | `-60269/100000 + 1 * k` |
| 33 | coordinate | `{"box":320,"direction":"lo","value":"141069/200000","variable":"c"}` | `-141069/200000 + 1 * c` |
| 34 | coordinate | `{"box":320,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 35 | coordinate | `{"box":320,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 36 | coordinate | `{"box":320,"direction":"lo","value":"136893/1000000","variable":"p"}` | `-136893/1000000 + 1 * p` |
| 37 | coordinate | `{"box":320,"direction":"lo","value":"231677/500000","variable":"q"}` | `-231677/500000 + 1 * q` |
| 38 | coordinate | `{"box":320,"direction":"lo","value":"127361/500000","variable":"u"}` | `-127361/500000 + 1 * u` |
| 39 | coordinate | `{"box":320,"direction":"lo","value":"121107/250000","variable":"v"}` | `-121107/250000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 34239500000000000 | 11 |
| 1 | 11944500000000000 | 12 |
| 2 | 416000000000000 | 13 |
| 3 | 406000000000000 | 14 |
| 4 | 22950000000000000 | 4 |
| 5 | 4953000000000000 | 5 |
| 6 | 15978000000000000 | 3 |
| 7 | 4547000000000000 | 2 |
| 8 | 7157000000000000 | 6 |
| 9 | 4488500000000000 | 1 |
| 10 | 4488500000000000 | 0 |
| 11 | 7434000000000000 | 7 |
| 12 | 6410000000000000 | 8 |
| 13 | 454500000000000 | 9 |
| 14 | 152000000000000 | 10 |
| 15 | 11944500000000000 | 28, 37 |
| 16 | 34239500000000000 | 15, 23 |
| 17 | 34239500000000000 | 15, 29 |
| 18 | 107000000000000 | 21, 33 |
| 19 | 416000000000000 | 17, 20 |
| 20 | 96500000000000 | 19, 20 |
| 21 | 23366000000000000 | 16, 21 |
| 22 | 22794504000000000 | 21, 31 |
| 23 | 32875500000000000 | 22, 37 |
| 24 | 7157000000000000 | 17, 35 |
| 25 | 27681500000000000 | 19, 22 |
| 26 | 38727500000000000 | 17, 36 |
| 27 | 38728000000000000 | 29, 37 |
| 28 | 9497000000000000 | 19, 36 |
| 29 | 6481000000000000 | 23, 32 |
| 30 | 15978000000000000 | 31, 37 |
| 31 | 34595500000000000 | 16, 32 |
| 32 | 34595000000000000 | 17, 18 |
| 33 | 464953500000000 | 21, 36 |
| 34 | 500000000000 | 23, 30 |
| 35 | 380593500000 | 23 |
| 36 | 399777500000 | 17 |
| 37 | 21004784276500000 | 37 |
| 38 | 231677000000 | 29 |
| 39 | 833573098000 | 36 |
| 40 | 31853000000 | 28 |
| 41 | 628125000000 | 33, 34 |
| 42 | 304697295915 | 33 |
| 43 | 443044828125 | 34 |
| 44 | 525541000000 | 20, 39 |
| 45 | 574946775548 | 20 |
| 46 | 593844924400 | 26 |
| 47 | 358360000000 | 16 |
| 48 | 1027356000000 | 19 |
| 49 | 500000000000 | 30, 31 |
| 50 | 346425000000 | 30 |
| 51 | 203275000000 | 31 |
| 52 | 336352816750 | 21 |
| 53 | 351295030640 | 18 |
| 54 | 453500000000 | 36, 39 |
| 55 | 232705975500 | 39 |
| 56 | 453500000000 | 24, 38 |
| 57 | 115516427000 | 24 |
| 58 | 327091400000 | 25 |
| 59 | 500000000000 | 32, 35 |
| 60 | 301345000000 | 35 |
| 61 | 444926902168 | 32 |
| 62 | 98584000000 | 32, 38 |
| 63 | 59415590960 | 38 |
| 64 | 98584000000 | 26, 31 |
| 65 | 90957500000 | 27 |
| 66 | 499457000000 | 22 |
| 67 | 170625000000 | 21, 38 |
| 68 | 397416000000 | 32, 33 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -512259632765886235631/200000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -512259632765886235631/200000 | 1 | -512259632765886235631/200000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 320 | -512259632765886235631/200000 |

## Stage 321

| Property | Value |
| --- | --- |
| Scope | root/AFQ-/AFP-/APR+/BFP+/PQS-/AQS-/HQR+ |
| Packet | coordinate:root/HEQ+/CFQ+/AFQ-/AFP-/APR+/BFP+/PQS-/AQS-/HQR+:HH |
| Index | 0 |
| Context | 46 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 285 |
| Coordinate cut | u high 624421/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| b | 103767/1000000 | 58493/100000 | 103767/1000000 | 58493/100000 |
| c | 141069/200000 | 1 | 141069/200000 | 1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 279/1000 | 58493/100000 | 279/1000 | 58493/100000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 136893/1000000 | 49193/100000 | 136893/1000000 | 49193/100000 |
| q | 3643/25000 | 11483/20000 | 3643/25000 | 11483/20000 |
| u | 624421/1000000 | 769723/1000000 | 624421/1000000 | 769723/1000000 |
| v | 165367/500000 | 86721/100000 | 165367/500000 | 86721/100000 |
| r | 141809/200000 | 1 | 141809/200000 | 1 |
| w | 8131/20000 | 84379/100000 | 8131/20000 | 84379/100000 |
| j | 13857/20000 | 874351/1000000 | 13857/20000 | 874351/1000000 |
| k | 60269/100000 | 1 | 60269/100000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"115:1012","triangle":"EQR","value":"143561/1000000"}` | `-1 * u * w + 1 * e * u + 1 * w + 1 * v * r + -1 * v + -1 * e * r + -143561/1000000` |
| 1 | bound | `{"direction":"lo","ref":"115:956","triangle":"FQS","value":"125231/1000000"}` | `1 * u * k + -1 * u + -1 * f * k + -1 * v * j + 1 * f * v + 1 * j + -125231/1000000` |
| 2 | bound | `{"direction":"lo","ref":"115:960","triangle":"ABR","value":"360337/1000000"}` | `1 * b * w + -1 * a * b + 1 * a * r + -360337/1000000` |
| 3 | physical | `{"factor":0,"stage":115}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 4 | physical | `{"factor":117,"stage":115}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 5 | physical | `{"factor":127,"stage":115}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 6 | physical | `{"factor":131,"stage":115}` | `1/1 * u * w + -1/1 * h * u + -1/1 * v * r + 1/1 * h * r + -93/1000` |
| 7 | physical | `{"factor":144,"stage":115}` | `76277533/62500000 + 2/1 * a * b + -1/1 * b * h + -1/1 * a * c + -2/1 * c * e + 1/1 * b * e + -2/1 * w + 1/1 * c * w + 2/1 * e * r + -2/1 * r * k + 1/1 * k + 2/1 * w * j + -1/1 * e * j + -2/1 * j + 1/1 * r + 2/1 * f * k + -1/1 * f * w + -2/1 * f * h + 1/1 * h * j + 1/1 * a * f` |
| 8 | physical | `{"factor":45,"stage":115}` | `-1/1 * u * k + 1/1 * a * u + 1/1 * v * j + -1/1 * a * j + -93/1000` |
| 9 | physical | `{"factor":47,"stage":115}` | `1/1 * c * e + -1/1 * b * e + -93/1000` |
| 10 | physical | `{"factor":84,"stage":115}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 11 | physical | `{"factor":85,"stage":115}` | `1/1 * k + -1/1 * c * k + -1/1 * e * j + 1/1 * c * e + -93/1000` |
| 12 | physical | `{"factor":88,"stage":115}` | `1/1 * f * v + -1/1 * c * v + -1/1 * u + 1/1 * c + -93/1000` |
| 13 | coordinate | `{"box":321,"direction":"hi","value":"391/1000","variable":"a"}` | `391/1000 + -1 * a` |
| 14 | coordinate | `{"box":321,"direction":"hi","value":"58493/100000","variable":"b"}` | `58493/100000 + -1 * b` |
| 15 | coordinate | `{"box":321,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 16 | coordinate | `{"box":321,"direction":"hi","value":"84379/100000","variable":"w"}` | `84379/100000 + -1 * w` |
| 17 | coordinate | `{"box":321,"direction":"hi","value":"874351/1000000","variable":"j"}` | `874351/1000000 + -1 * j` |
| 18 | coordinate | `{"box":321,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 19 | coordinate | `{"box":321,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 20 | coordinate | `{"box":321,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 21 | coordinate | `{"box":321,"direction":"hi","value":"58493/100000","variable":"f"}` | `58493/100000 + -1 * f` |
| 22 | coordinate | `{"box":321,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 23 | coordinate | `{"box":321,"direction":"hi","value":"86721/100000","variable":"v"}` | `86721/100000 + -1 * v` |
| 24 | coordinate | `{"box":321,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 25 | coordinate | `{"box":321,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 26 | coordinate | `{"box":321,"direction":"lo","value":"141809/200000","variable":"r"}` | `-141809/200000 + 1 * r` |
| 27 | coordinate | `{"box":321,"direction":"lo","value":"8131/20000","variable":"w"}` | `-8131/20000 + 1 * w` |
| 28 | coordinate | `{"box":321,"direction":"lo","value":"13857/20000","variable":"j"}` | `-13857/20000 + 1 * j` |
| 29 | coordinate | `{"box":321,"direction":"lo","value":"60269/100000","variable":"k"}` | `-60269/100000 + 1 * k` |
| 30 | coordinate | `{"box":321,"direction":"lo","value":"141069/200000","variable":"c"}` | `-141069/200000 + 1 * c` |
| 31 | coordinate | `{"box":321,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 32 | coordinate | `{"box":321,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 33 | coordinate | `{"box":321,"direction":"lo","value":"135501/250000","variable":"h"}` | `-135501/250000 + 1 * h` |
| 34 | coordinate | `{"box":321,"direction":"lo","value":"624421/1000000","variable":"u"}` | `-624421/1000000 + 1 * u` |
| 35 | coordinate | `{"box":321,"direction":"lo","value":"165367/500000","variable":"v"}` | `-165367/500000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 995000000 | 3 |
| 1 | 2946000000 | 2 |
| 2 | 48608000000 | 8 |
| 3 | 995000000 | 9 |
| 4 | 8141000000 | 10 |
| 5 | 5242000000 | 11 |
| 6 | 75201000000 | 12 |
| 7 | 2814000000 | 0 |
| 8 | 49386000000 | 4 |
| 9 | 29272000000 | 1 |
| 10 | 37683000000 | 5 |
| 11 | 2814000000 | 6 |
| 12 | 995000000 | 7 |
| 13 | 1951000000 | 24, 25 |
| 14 | 995000000 | 21, 24 |
| 15 | 995000000 | 14, 22 |
| 16 | 48608000000 | 13, 34 |
| 17 | 2946000000 | 14, 27 |
| 18 | 2946000000 | 15, 24 |
| 19 | 48608000000 | 24, 28 |
| 20 | 12388000000 | 19, 31 |
| 21 | 75201000000 | 19, 23 |
| 22 | 7146000000 | 16, 19 |
| 23 | 5242000000 | 18, 19 |
| 24 | 2814000000 | 20, 34 |
| 25 | 22267000000 | 26, 31 |
| 26 | 36084000000 | 15, 20 |
| 27 | 43149000000 | 17, 31 |
| 28 | 1991000000 | 21, 22 |
| 29 | 104473000000 | 21, 35 |
| 30 | 36688000000 | 21, 27 |
| 31 | 43754000000 | 29, 32 |
| 32 | 21211000000 | 18, 21 |
| 33 | 2814000000 | 33, 34 |
| 34 | 2814000000 | 15, 33 |
| 35 | 995000000 | 22, 28 |
| 36 | 19336000000 | 29, 34 |
| 37 | 19335000000 | 17, 35 |
| 38 | 85079000000 | 15, 29 |
| 39 | 85078000000 | 16, 17 |
| 40 | 97545811096 | 34 |
| 41 | 1120686 | 29 |
| 42 | 1000000 | 23, 28 |
| 43 | 692850 | 23 |
| 44 | 1179427 | 17 |
| 45 | 1196538 | 27 |
| 46 | 316954 | 30 |
| 47 | 31525 | 35 |
| 48 | 602690 | 15 |
| 49 | 1000000 | 18 |
| 50 | 1000000 | 27, 28 |
| 51 | 406550 | 28 |
| 52 | 977063 | 32 |
| 53 | 867131 | 26 |
| 54 | 948554 | 21 |
| 55 | 584930 | 16 |
| 56 | 1000000 | 21, 33 |
| 57 | 584930 | 22 |
| 58 | 640899 | 24 |
| 59 | 246883 | 14 |
| 60 | 335924 | 33 |
| 61 | 186978 | 20 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -2354880719775723/500000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -2354880719775723/500000 | 1 | -2354880719775723/500000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 321 | -2354880719775723/500000 |

## Stage 322

| Property | Value |
| --- | --- |
| Scope | root/AFQ-/AFP-/APR+/BFP+/PQS-/AQS-/HQR-/HQS+ |
| Packet | coordinate:root/HEQ+/CFQ+/AFQ-/AFP-/APR+/BFP+/PQS-/AQS-/HQR-/HQS+:root |
| Index | 0 |
| Context | 48 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 117 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 104209/1000000 | 391/1000 | 104209/1000000 | 391/1000 |
| b | 26893/250000 | 146183/250000 | 26893/250000 | 146183/250000 |
| c | 705427/1000000 | 19943/20000 | 705427/1000000 | 19943/20000 |
| e | 104209/1000000 | 391/1000 | 104209/1000000 | 391/1000 |
| f | 279/1000 | 23389/40000 | 279/1000 | 23389/40000 |
| h | 543553/1000000 | 1 | 543553/1000000 | 1 |
| p | 17909/125000 | 245951/500000 | 17909/125000 | 245951/500000 |
| q | 29189/200000 | 532639/1000000 | 29189/200000 | 532639/1000000 |
| u | 315393/1000000 | 675399/1000000 | 315393/1000000 | 675399/1000000 |
| v | 543817/1000000 | 892661/1000000 | 543817/1000000 | 892661/1000000 |
| r | 397421/500000 | 1 | 397421/500000 | 1 |
| w | 25437/62500 | 25011/31250 | 25437/62500 | 25011/31250 |
| j | 13857/20000 | 866407/1000000 | 13857/20000 | 866407/1000000 |
| k | 176007/250000 | 1 | 176007/250000 | 1 |

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


## Stage 323

| Property | Value |
| --- | --- |
| Scope | root/AFQ-/AFP-/APR+/BFP+/PQS-/AQS-/HQR-/HQS+ |
| Packet | coordinate:root/HEQ+/CFQ+/AFQ-/AFP-/APR+/BFP+/PQS-/AQS-/HQR-/HQS+:L |
| Index | 0 |
| Context | 48 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 322 |
| Coordinate cut | b low 235537/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 104209/1000000 | 391/1000 | 104209/1000000 | 391/1000 |
| b | 26893/250000 | 235537/500000 | 26893/250000 | 235537/500000 |
| c | 705427/1000000 | 19943/20000 | 705427/1000000 | 19943/20000 |
| e | 104209/1000000 | 391/1000 | 104209/1000000 | 391/1000 |
| f | 279/1000 | 23389/40000 | 279/1000 | 23389/40000 |
| h | 543553/1000000 | 1 | 543553/1000000 | 1 |
| p | 17909/125000 | 245951/500000 | 17909/125000 | 245951/500000 |
| q | 29189/200000 | 532639/1000000 | 29189/200000 | 532639/1000000 |
| u | 315393/1000000 | 675399/1000000 | 315393/1000000 | 675399/1000000 |
| v | 543817/1000000 | 892661/1000000 | 543817/1000000 | 892661/1000000 |
| r | 397421/500000 | 1 | 397421/500000 | 1 |
| w | 25437/62500 | 25011/31250 | 25437/62500 | 25011/31250 |
| j | 13857/20000 | 866407/1000000 | 13857/20000 | 866407/1000000 |
| k | 176007/250000 | 1 | 176007/250000 | 1 |

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


## Stage 324

| Property | Value |
| --- | --- |
| Scope | root/AFQ-/AFP-/APR+/BFP+/PQS-/AQS-/HQR-/HQS+ |
| Packet | coordinate:root/HEQ+/CFQ+/AFQ-/AFP-/APR+/BFP+/PQS-/AQS-/HQR-/HQS+:LL |
| Index | 0 |
| Context | 48 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 323 |
| Coordinate cut | p low 96301/250000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 104209/1000000 | 391/1000 | 104209/1000000 | 391/1000 |
| b | 26893/250000 | 235537/500000 | 26893/250000 | 235537/500000 |
| c | 705427/1000000 | 19943/20000 | 705427/1000000 | 19943/20000 |
| e | 104209/1000000 | 391/1000 | 104209/1000000 | 391/1000 |
| f | 279/1000 | 23389/40000 | 279/1000 | 23389/40000 |
| h | 543553/1000000 | 1 | 543553/1000000 | 1 |
| p | 17909/125000 | 96301/250000 | 17909/125000 | 96301/250000 |
| q | 29189/200000 | 532639/1000000 | 29189/200000 | 532639/1000000 |
| u | 315393/1000000 | 675399/1000000 | 315393/1000000 | 675399/1000000 |
| v | 543817/1000000 | 892661/1000000 | 543817/1000000 | 892661/1000000 |
| r | 397421/500000 | 1 | 397421/500000 | 1 |
| w | 25437/62500 | 25011/31250 | 25437/62500 | 25011/31250 |
| j | 13857/20000 | 866407/1000000 | 13857/20000 | 866407/1000000 |
| k | 176007/250000 | 1 | 176007/250000 | 1 |

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
