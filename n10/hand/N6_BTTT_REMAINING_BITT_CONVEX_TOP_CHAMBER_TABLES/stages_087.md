# BITT convex: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 435

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR-/PQS+/BFP+/APR+ |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR-/PQS+/BFP+/APR+:LLHLHLHLH |
| Index | 0 |
| Context | 41 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 433 |
| Coordinate cut | w high 652297/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 4069/31250 | 6143/20000 | 4069/31250 | 6143/20000 |
| b | 112299/500000 | 115233/250000 | 112299/500000 | 115233/250000 |
| c | 660123/1000000 | 93873/100000 | 660123/1000000 | 93873/100000 |
| e | 4069/31250 | 391/1000 | 4069/31250 | 391/1000 |
| f | 279/1000 | 71539/125000 | 279/1000 | 71539/125000 |
| h | 28869/50000 | 78869/100000 | 28869/50000 | 78869/100000 |
| p | 83553/500000 | 186357/500000 | 83553/500000 | 186357/500000 |
| q | 44593/200000 | 104193/250000 | 44593/200000 | 104193/250000 |
| u | 68037/125000 | 814871/1000000 | 68037/125000 | 814871/1000000 |
| v | 437691/1000000 | 757691/1000000 | 437691/1000000 | 757691/1000000 |
| r | 12601/15625 | 1 | 12601/15625 | 1 |
| w | 652297/1000000 | 210623/250000 | 652297/1000000 | 210623/250000 |
| j | 456937/1000000 | 217361/250000 | 456937/1000000 | 217361/250000 |
| k | 822623/1000000 | 1 | 822623/1000000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"101:1448","triangle":"QRS","value":"25337/200000"}` | `1 * r * k + -1 * v * r + -1 * u * k + -1 * w * j + 1 * u * w + 1 * v * j + -25337/200000` |
| 1 | bound | `{"direction":"lo","ref":"101:653","triangle":"BCH","value":"75317/250000"}` | `1 * c * h + -1 * b * h + -75317/250000` |
| 2 | physical | `{"factor":105,"stage":101}` | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 3 | physical | `{"factor":127,"stage":101}` | `1/1 * u * k + -1/1 * u + -1/1 * f * k + -1/1 * v * j + 1/1 * f * v + 1/1 * j + -93/1000` |
| 4 | physical | `{"factor":128,"stage":101}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 5 | physical | `{"factor":134,"stage":101}` | `-1/1 * u * w + 1/1 * q * u + 1/1 * p * w + 1/1 * v * r + -1/1 * p * v + -1/1 * q * r + -93/1000` |
| 6 | physical | `{"factor":153,"stage":101}` | `1/1 * c * h + -135501/250000` |
| 7 | physical | `{"factor":27,"stage":101}` | `1/1 * q + -1/1 * a + -1/1 * e * p + 1/1 * a * p + -93/1000` |
| 8 | physical | `{"factor":42,"stage":101}` | `1/1 * p * v + -1/1 * a * p + -1/1 * q * u + 1/1 * a * u + -93/1000` |
| 9 | physical | `{"factor":43,"stage":101}` | `1/1 * p * w + -1/1 * a * p + -1/1 * q * r + 1/1 * a * r + -93/1000` |
| 10 | physical | `{"factor":66,"stage":101}` | `1/1 * f * q + -1/1 * b * q + -1/1 * p + 1/1 * b + -93/1000` |
| 11 | physical | `{"factor":70,"stage":101}` | `1/1 * b * q + 1/1 * h * p + -1/1 * b * h + -93/1000` |
| 12 | physical | `{"factor":78,"stage":101}` | `1/1 * u * k + -1/1 * b * k + -1/1 * v * j + 1/1 * b * v + -93/1000` |
| 13 | physical | `{"factor":90,"stage":101}` | `-1/1 * f * v + 1/1 * c * v + 1/1 * u + -1/1 * c + -93/1000` |
| 14 | physical | `{"factor":93,"stage":101}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 15 | coordinate | `{"box":435,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 16 | coordinate | `{"box":435,"direction":"hi","value":"115233/250000","variable":"b"}` | `115233/250000 + -1 * b` |
| 17 | coordinate | `{"box":435,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 18 | coordinate | `{"box":435,"direction":"hi","value":"210623/250000","variable":"w"}` | `210623/250000 + -1 * w` |
| 19 | coordinate | `{"box":435,"direction":"hi","value":"217361/250000","variable":"j"}` | `217361/250000 + -1 * j` |
| 20 | coordinate | `{"box":435,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 21 | coordinate | `{"box":435,"direction":"hi","value":"93873/100000","variable":"c"}` | `93873/100000 + -1 * c` |
| 22 | coordinate | `{"box":435,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 23 | coordinate | `{"box":435,"direction":"hi","value":"71539/125000","variable":"f"}` | `71539/125000 + -1 * f` |
| 24 | coordinate | `{"box":435,"direction":"hi","value":"78869/100000","variable":"h"}` | `78869/100000 + -1 * h` |
| 25 | coordinate | `{"box":435,"direction":"hi","value":"186357/500000","variable":"p"}` | `186357/500000 + -1 * p` |
| 26 | coordinate | `{"box":435,"direction":"hi","value":"104193/250000","variable":"q"}` | `104193/250000 + -1 * q` |
| 27 | coordinate | `{"box":435,"direction":"hi","value":"814871/1000000","variable":"u"}` | `814871/1000000 + -1 * u` |
| 28 | coordinate | `{"box":435,"direction":"hi","value":"757691/1000000","variable":"v"}` | `757691/1000000 + -1 * v` |
| 29 | coordinate | `{"box":435,"direction":"lo","value":"4069/31250","variable":"a"}` | `-4069/31250 + 1 * a` |
| 30 | coordinate | `{"box":435,"direction":"lo","value":"112299/500000","variable":"b"}` | `-112299/500000 + 1 * b` |
| 31 | coordinate | `{"box":435,"direction":"lo","value":"12601/15625","variable":"r"}` | `-12601/15625 + 1 * r` |
| 32 | coordinate | `{"box":435,"direction":"lo","value":"652297/1000000","variable":"w"}` | `-652297/1000000 + 1 * w` |
| 33 | coordinate | `{"box":435,"direction":"lo","value":"456937/1000000","variable":"j"}` | `-456937/1000000 + 1 * j` |
| 34 | coordinate | `{"box":435,"direction":"lo","value":"822623/1000000","variable":"k"}` | `-822623/1000000 + 1 * k` |
| 35 | coordinate | `{"box":435,"direction":"lo","value":"660123/1000000","variable":"c"}` | `-660123/1000000 + 1 * c` |
| 36 | coordinate | `{"box":435,"direction":"lo","value":"4069/31250","variable":"e"}` | `-4069/31250 + 1 * e` |
| 37 | coordinate | `{"box":435,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 38 | coordinate | `{"box":435,"direction":"lo","value":"28869/50000","variable":"h"}` | `-28869/50000 + 1 * h` |
| 39 | coordinate | `{"box":435,"direction":"lo","value":"83553/500000","variable":"p"}` | `-83553/500000 + 1 * p` |
| 40 | coordinate | `{"box":435,"direction":"lo","value":"44593/200000","variable":"q"}` | `-44593/200000 + 1 * q` |
| 41 | coordinate | `{"box":435,"direction":"lo","value":"68037/125000","variable":"u"}` | `-68037/125000 + 1 * u` |
| 42 | coordinate | `{"box":435,"direction":"lo","value":"437691/1000000","variable":"v"}` | `-437691/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 40831000000 | 7 |
| 1 | 28746000000 | 8 |
| 2 | 32968000000 | 9 |
| 3 | 9465000000 | 1 |
| 4 | 39532000000 | 10 |
| 5 | 39532000000 | 11 |
| 6 | 3665000000 | 12 |
| 7 | 42822000000 | 13 |
| 8 | 2638000000 | 14 |
| 9 | 46498000000 | 2 |
| 10 | 12066000000 | 3 |
| 11 | 7539000000 | 4 |
| 12 | 28746000000 | 5 |
| 13 | 15732000000 | 0 |
| 14 | 1799000000 | 6 |
| 15 | 48997000000 | 16, 24 |
| 16 | 20883000000 | 15, 25 |
| 17 | 3665000000 | 28, 30 |
| 18 | 28746000000 | 15, 41 |
| 19 | 32968000000 | 17, 29 |
| 20 | 3665000000 | 16, 20 |
| 21 | 13902000000 | 24, 35 |
| 22 | 2638000000 | 35, 40 |
| 23 | 42822000000 | 28, 35 |
| 24 | 46498000000 | 36, 37 |
| 25 | 40831000000 | 22, 25 |
| 26 | 10653000000 | 27, 36 |
| 27 | 35845000000 | 22, 41 |
| 28 | 39532000000 | 23, 40 |
| 29 | 15742000000 | 28, 37 |
| 30 | 7539000000 | 23, 32 |
| 31 | 19605000000 | 20, 23 |
| 32 | 35224000000 | 25, 38 |
| 33 | 1671000000 | 24, 39 |
| 34 | 61714000000 | 25, 32 |
| 35 | 61714000000 | 17, 26 |
| 36 | 13015000000 | 32, 41 |
| 37 | 13015000000 | 17, 42 |
| 38 | 23270000000 | 20, 31 |
| 39 | 23270000000 | 18, 19 |
| 40 | 233510 | 26 |
| 41 | 53646 | 29 |
| 42 | 256718 | 25 |
| 43 | 493585 | 16 |
| 44 | 1000000 | 38, 39 |
| 45 | 167106 | 38 |
| 46 | 577380 | 39 |
| 47 | 1000000 | 34, 41 |
| 48 | 1024354 | 41 |
| 49 | 544296 | 34 |
| 50 | 1000000 | 28, 33 |
| 51 | 456937 | 28 |
| 52 | 968851 | 19 |
| 53 | 30712 | 21 |
| 54 | 849688 | 42 |
| 55 | 544296 | 22 |
| 56 | 1043297 | 27 |
| 57 | 1000000 | 17, 34 |
| 58 | 822623 | 17 |
| 59 | 5857924740 | 20 |
| 60 | 859190 | 31 |
| 61 | 1000000 | 32, 33 |
| 62 | 456937 | 32 |
| 63 | 652297 | 33 |
| 64 | 1000000 | 27, 32 |
| 65 | 1172515 | 18 |
| 66 | 1000000 | 31, 42 |
| 67 | 456804 | 24 |
| 68 | 660747 | 36 |
| 69 | 79601 | 23 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -805684257741631/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -805684257741631/1000000 | 1 | -805684257741631/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 435 | -805684257741631/1000000 |

## Stage 436

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR-/PQS+/BFP+/APR+ |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR-/PQS+/BFP+/APR+:LLHLHLHH |
| Index | 0 |
| Context | 41 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 432 |
| Coordinate cut | p high 186357/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 4069/31250 | 6143/20000 | 4069/31250 | 6143/20000 |
| b | 112299/500000 | 115233/250000 | 112299/500000 | 115233/250000 |
| c | 660123/1000000 | 93873/100000 | 660123/1000000 | 93873/100000 |
| e | 4069/31250 | 391/1000 | 4069/31250 | 391/1000 |
| f | 279/1000 | 71539/125000 | 279/1000 | 71539/125000 |
| h | 28869/50000 | 78869/100000 | 28869/50000 | 78869/100000 |
| p | 186357/500000 | 242189/500000 | 186357/500000 | 242189/500000 |
| q | 44593/200000 | 104193/250000 | 44593/200000 | 104193/250000 |
| u | 68037/125000 | 814871/1000000 | 68037/125000 | 814871/1000000 |
| v | 437691/1000000 | 757691/1000000 | 437691/1000000 | 757691/1000000 |
| r | 12601/15625 | 1 | 12601/15625 | 1 |
| w | 119461/250000 | 210623/250000 | 119461/250000 | 210623/250000 |
| j | 456937/1000000 | 217361/250000 | 456937/1000000 | 217361/250000 |
| k | 822623/1000000 | 1 | 822623/1000000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"101:1448","triangle":"QRS","value":"25337/200000"}` | `1 * r * k + -1 * v * r + -1 * u * k + -1 * w * j + 1 * u * w + 1 * v * j + -25337/200000` |
| 1 | bound | `{"direction":"lo","ref":"101:1637","triangle":"CEF","value":"323903/1000000"}` | `676097/1000000 + -1 * c + -1 * e * f + 1 * c * e` |
| 2 | bound | `{"direction":"lo","ref":"101:653","triangle":"BCH","value":"75317/250000"}` | `1 * c * h + -1 * b * h + -75317/250000` |
| 3 | physical | `{"factor":105,"stage":101}` | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 4 | physical | `{"factor":122,"stage":101}` | `-1/1 * f * k + -1/1 * h * j + 1/1 * f * h + 1/1 * j + -93/1000` |
| 5 | physical | `{"factor":127,"stage":101}` | `1/1 * u * k + -1/1 * u + -1/1 * f * k + -1/1 * v * j + 1/1 * f * v + 1/1 * j + -93/1000` |
| 6 | physical | `{"factor":128,"stage":101}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 7 | physical | `{"factor":134,"stage":101}` | `-1/1 * u * w + 1/1 * q * u + 1/1 * p * w + 1/1 * v * r + -1/1 * p * v + -1/1 * q * r + -93/1000` |
| 8 | physical | `{"factor":141,"stage":101}` | `1/1 * f + -1/1 * b` |
| 9 | physical | `{"factor":27,"stage":101}` | `1/1 * q + -1/1 * a + -1/1 * e * p + 1/1 * a * p + -93/1000` |
| 10 | physical | `{"factor":42,"stage":101}` | `1/1 * p * v + -1/1 * a * p + -1/1 * q * u + 1/1 * a * u + -93/1000` |
| 11 | physical | `{"factor":43,"stage":101}` | `1/1 * p * w + -1/1 * a * p + -1/1 * q * r + 1/1 * a * r + -93/1000` |
| 12 | physical | `{"factor":66,"stage":101}` | `1/1 * f * q + -1/1 * b * q + -1/1 * p + 1/1 * b + -93/1000` |
| 13 | physical | `{"factor":70,"stage":101}` | `1/1 * b * q + 1/1 * h * p + -1/1 * b * h + -93/1000` |
| 14 | physical | `{"factor":78,"stage":101}` | `1/1 * u * k + -1/1 * b * k + -1/1 * v * j + 1/1 * b * v + -93/1000` |
| 15 | physical | `{"factor":90,"stage":101}` | `-1/1 * f * v + 1/1 * c * v + 1/1 * u + -1/1 * c + -93/1000` |
| 16 | coordinate | `{"box":436,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 17 | coordinate | `{"box":436,"direction":"hi","value":"115233/250000","variable":"b"}` | `115233/250000 + -1 * b` |
| 18 | coordinate | `{"box":436,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 19 | coordinate | `{"box":436,"direction":"hi","value":"210623/250000","variable":"w"}` | `210623/250000 + -1 * w` |
| 20 | coordinate | `{"box":436,"direction":"hi","value":"217361/250000","variable":"j"}` | `217361/250000 + -1 * j` |
| 21 | coordinate | `{"box":436,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 22 | coordinate | `{"box":436,"direction":"hi","value":"93873/100000","variable":"c"}` | `93873/100000 + -1 * c` |
| 23 | coordinate | `{"box":436,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 24 | coordinate | `{"box":436,"direction":"hi","value":"71539/125000","variable":"f"}` | `71539/125000 + -1 * f` |
| 25 | coordinate | `{"box":436,"direction":"hi","value":"78869/100000","variable":"h"}` | `78869/100000 + -1 * h` |
| 26 | coordinate | `{"box":436,"direction":"hi","value":"104193/250000","variable":"q"}` | `104193/250000 + -1 * q` |
| 27 | coordinate | `{"box":436,"direction":"hi","value":"814871/1000000","variable":"u"}` | `814871/1000000 + -1 * u` |
| 28 | coordinate | `{"box":436,"direction":"hi","value":"757691/1000000","variable":"v"}` | `757691/1000000 + -1 * v` |
| 29 | coordinate | `{"box":436,"direction":"lo","value":"4069/31250","variable":"a"}` | `-4069/31250 + 1 * a` |
| 30 | coordinate | `{"box":436,"direction":"lo","value":"112299/500000","variable":"b"}` | `-112299/500000 + 1 * b` |
| 31 | coordinate | `{"box":436,"direction":"lo","value":"12601/15625","variable":"r"}` | `-12601/15625 + 1 * r` |
| 32 | coordinate | `{"box":436,"direction":"lo","value":"119461/250000","variable":"w"}` | `-119461/250000 + 1 * w` |
| 33 | coordinate | `{"box":436,"direction":"lo","value":"456937/1000000","variable":"j"}` | `-456937/1000000 + 1 * j` |
| 34 | coordinate | `{"box":436,"direction":"lo","value":"822623/1000000","variable":"k"}` | `-822623/1000000 + 1 * k` |
| 35 | coordinate | `{"box":436,"direction":"lo","value":"660123/1000000","variable":"c"}` | `-660123/1000000 + 1 * c` |
| 36 | coordinate | `{"box":436,"direction":"lo","value":"4069/31250","variable":"e"}` | `-4069/31250 + 1 * e` |
| 37 | coordinate | `{"box":436,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 38 | coordinate | `{"box":436,"direction":"lo","value":"186357/500000","variable":"p"}` | `-186357/500000 + 1 * p` |
| 39 | coordinate | `{"box":436,"direction":"lo","value":"44593/200000","variable":"q"}` | `-44593/200000 + 1 * q` |
| 40 | coordinate | `{"box":436,"direction":"lo","value":"68037/125000","variable":"u"}` | `-68037/125000 + 1 * u` |
| 41 | coordinate | `{"box":436,"direction":"lo","value":"437691/1000000","variable":"v"}` | `-437691/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 32473000000 | 9 |
| 1 | 17400000000 | 10 |
| 2 | 24235000000 | 11 |
| 3 | 43636000000 | 2 |
| 4 | 80352000000 | 12 |
| 5 | 460000000 | 13 |
| 6 | 5941000000 | 14 |
| 7 | 34409000000 | 1 |
| 8 | 18516000000 | 15 |
| 9 | 18020000000 | 3 |
| 10 | 14652000000 | 4 |
| 11 | 11459000000 | 5 |
| 12 | 660000000 | 6 |
| 13 | 17400000000 | 7 |
| 14 | 17400000000 | 0 |
| 15 | 8937000000 | 8 |
| 16 | 44096000000 | 17, 25 |
| 17 | 79892000000 | 17, 26 |
| 18 | 9162000000 | 29, 38 |
| 19 | 5941000000 | 17, 41 |
| 20 | 8065000000 | 27, 29 |
| 21 | 9335000000 | 16, 40 |
| 22 | 24235000000 | 18, 29 |
| 23 | 5941000000 | 17, 21 |
| 24 | 34409000000 | 22, 36 |
| 25 | 43636000000 | 25, 35 |
| 26 | 18516000000 | 28, 35 |
| 27 | 52429000000 | 23, 24 |
| 28 | 32473000000 | 36, 38 |
| 29 | 18020000000 | 23, 40 |
| 30 | 14652000000 | 25, 37 |
| 31 | 80352000000 | 24, 39 |
| 32 | 10963000000 | 28, 37 |
| 33 | 660000000 | 19, 37 |
| 34 | 26771000000 | 21, 24 |
| 35 | 460000000 | 25, 38 |
| 36 | 14652000000 | 20, 25 |
| 37 | 41635000000 | 19, 38 |
| 38 | 41635000000 | 18, 26 |
| 39 | 18060000000 | 18, 34 |
| 40 | 18060000000 | 19, 20 |
| 41 | 365520 | 39 |
| 42 | 132107 | 16 |
| 43 | 50333258260 | 38 |
| 44 | 500633 | 30 |
| 45 | 10468 | 22 |
| 46 | 192770 | 27 |
| 47 | 88520 | 41 |
| 48 | 291400 | 33 |
| 49 | 139960 | 31 |
| 50 | 441713 | 24 |
| 51 | 132708 | 25 |
| 52 | 238436 | 21 |
| 53 | 86920 | 23 |
| 54 | 71250 | 32 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -45592239119847/20000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -45592239119847/20000 | 1 | -45592239119847/20000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 436 | -45592239119847/20000 |

## Stage 437

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR-/PQS+/BFP+/APR+ |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR-/PQS+/BFP+/APR+:LLHLHH |
| Index | 0 |
| Context | 41 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 429 |
| Coordinate cut | b high 115233/250000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 4069/31250 | 6143/20000 | 4069/31250 | 6143/20000 |
| b | 115233/250000 | 286279/500000 | 115233/250000 | 286279/500000 |
| c | 660123/1000000 | 93873/100000 | 660123/1000000 | 93873/100000 |
| e | 4069/31250 | 391/1000 | 4069/31250 | 391/1000 |
| f | 279/1000 | 71539/125000 | 279/1000 | 71539/125000 |
| h | 28869/50000 | 78869/100000 | 28869/50000 | 78869/100000 |
| p | 83553/500000 | 242189/500000 | 83553/500000 | 242189/500000 |
| q | 44593/200000 | 104193/250000 | 44593/200000 | 104193/250000 |
| u | 68037/125000 | 814871/1000000 | 68037/125000 | 814871/1000000 |
| v | 437691/1000000 | 757691/1000000 | 437691/1000000 | 757691/1000000 |
| r | 661729/1000000 | 1 | 661729/1000000 | 1 |
| w | 119461/250000 | 210623/250000 | 119461/250000 | 210623/250000 |
| j | 456937/1000000 | 217361/250000 | 456937/1000000 | 217361/250000 |
| k | 822623/1000000 | 1 | 822623/1000000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"101:1637","triangle":"CEF","value":"323903/1000000"}` | `676097/1000000 + -1 * c + -1 * e * f + 1 * c * e` |
| 1 | bound | `{"direction":"lo","ref":"101:653","triangle":"BCH","value":"75317/250000"}` | `1 * c * h + -1 * b * h + -75317/250000` |
| 2 | physical | `{"factor":141,"stage":101}` | `1/1 * f + -1/1 * b` |
| 3 | physical | `{"factor":156,"stage":101}` | `157/250 + -1/1 * f + -1/1 * e + 1/1 * e * f` |
| 4 | coordinate | `{"box":437,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 5 | coordinate | `{"box":437,"direction":"hi","value":"71539/125000","variable":"f"}` | `71539/125000 + -1 * f` |
| 6 | coordinate | `{"box":437,"direction":"hi","value":"78869/100000","variable":"h"}` | `78869/100000 + -1 * h` |
| 7 | coordinate | `{"box":437,"direction":"lo","value":"115233/250000","variable":"b"}` | `-115233/250000 + 1 * b` |
| 8 | coordinate | `{"box":437,"direction":"lo","value":"660123/1000000","variable":"c"}` | `-660123/1000000 + 1 * c` |
| 9 | coordinate | `{"box":437,"direction":"lo","value":"4069/31250","variable":"e"}` | `-4069/31250 + 1 * e` |
| 10 | coordinate | `{"box":437,"direction":"lo","value":"28869/50000","variable":"h"}` | `-28869/50000 + 1 * h` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 132389000000 | 1 |
| 1 | 171452000000 | 0 |
| 2 | 88476000000 | 2 |
| 3 | 35202000000 | 3 |
| 4 | 132389000000 | 7, 10 |
| 5 | 171452000000 | 4, 8 |
| 6 | 132389000000 | 6, 8 |
| 7 | 136250000000 | 4, 5 |
| 8 | 387590 | 8 |
| 9 | 250000 | 5 |
| 10 | 164914760820 | 7 |
| 11 | 101404 | 9 |
| 12 | 26370697299 | 6 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -2266358549431861/500000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -2266358549431861/500000 | 1 | -2266358549431861/500000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 437 | -2266358549431861/500000 |

## Stage 438

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR-/PQS+/BFP+/APR+ |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR-/PQS+/BFP+/APR+:LLHH |
| Index | 0 |
| Context | 41 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 426 |
| Coordinate cut | q high 104193/250000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 4069/31250 | 6143/20000 | 4069/31250 | 6143/20000 |
| b | 112299/500000 | 286279/500000 | 112299/500000 | 286279/500000 |
| c | 660123/1000000 | 93873/100000 | 660123/1000000 | 93873/100000 |
| e | 4069/31250 | 391/1000 | 4069/31250 | 391/1000 |
| f | 279/1000 | 71539/125000 | 279/1000 | 71539/125000 |
| h | 28869/50000 | 78869/100000 | 28869/50000 | 78869/100000 |
| p | 83553/500000 | 242189/500000 | 83553/500000 | 242189/500000 |
| q | 104193/250000 | 561861/1000000 | 104193/250000 | 561861/1000000 |
| u | 417251/1000000 | 814871/1000000 | 417251/1000000 | 814871/1000000 |
| v | 437691/1000000 | 757691/1000000 | 437691/1000000 | 757691/1000000 |
| r | 661729/1000000 | 1 | 661729/1000000 | 1 |
| w | 119461/250000 | 210623/250000 | 119461/250000 | 210623/250000 |
| j | 456937/1000000 | 217361/250000 | 456937/1000000 | 217361/250000 |
| k | 822623/1000000 | 1 | 822623/1000000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"101:1448","triangle":"QRS","value":"25337/200000"}` | `1 * r * k + -1 * v * r + -1 * u * k + -1 * w * j + 1 * u * w + 1 * v * j + -25337/200000` |
| 1 | bound | `{"direction":"lo","ref":"101:1637","triangle":"CEF","value":"323903/1000000"}` | `676097/1000000 + -1 * c + -1 * e * f + 1 * c * e` |
| 2 | physical | `{"factor":105,"stage":101}` | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 3 | physical | `{"factor":122,"stage":101}` | `-1/1 * f * k + -1/1 * h * j + 1/1 * f * h + 1/1 * j + -93/1000` |
| 4 | physical | `{"factor":127,"stage":101}` | `1/1 * u * k + -1/1 * u + -1/1 * f * k + -1/1 * v * j + 1/1 * f * v + 1/1 * j + -93/1000` |
| 5 | physical | `{"factor":134,"stage":101}` | `-1/1 * u * w + 1/1 * q * u + 1/1 * p * w + 1/1 * v * r + -1/1 * p * v + -1/1 * q * r + -93/1000` |
| 6 | physical | `{"factor":141,"stage":101}` | `1/1 * f + -1/1 * b` |
| 7 | physical | `{"factor":1675,"stage":101}` | `-160609/500000 * p * v + -350891/500000 * c * v + 160609/500000 * q * u + 350891/500000 * c * q + -1023/1000 * q + 1023/1000 * e * p + 1023/1000 * v + -1023/1000 * e * u` |
| 8 | physical | `{"factor":27,"stage":101}` | `1/1 * q + -1/1 * a + -1/1 * e * p + 1/1 * a * p + -93/1000` |
| 9 | physical | `{"factor":32,"stage":101}` | `1/1 * k + -1/1 * a + -1/1 * e * j + 1/1 * a * j + -13857/20000` |
| 10 | physical | `{"factor":42,"stage":101}` | `1/1 * p * v + -1/1 * a * p + -1/1 * q * u + 1/1 * a * u + -93/1000` |
| 11 | physical | `{"factor":43,"stage":101}` | `1/1 * p * w + -1/1 * a * p + -1/1 * q * r + 1/1 * a * r + -93/1000` |
| 12 | physical | `{"factor":66,"stage":101}` | `1/1 * f * q + -1/1 * b * q + -1/1 * p + 1/1 * b + -93/1000` |
| 13 | physical | `{"factor":78,"stage":101}` | `1/1 * u * k + -1/1 * b * k + -1/1 * v * j + 1/1 * b * v + -93/1000` |
| 14 | physical | `{"factor":90,"stage":101}` | `-1/1 * f * v + 1/1 * c * v + 1/1 * u + -1/1 * c + -93/1000` |
| 15 | physical | `{"factor":93,"stage":101}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 16 | coordinate | `{"box":438,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 17 | coordinate | `{"box":438,"direction":"hi","value":"286279/500000","variable":"b"}` | `286279/500000 + -1 * b` |
| 18 | coordinate | `{"box":438,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 19 | coordinate | `{"box":438,"direction":"hi","value":"210623/250000","variable":"w"}` | `210623/250000 + -1 * w` |
| 20 | coordinate | `{"box":438,"direction":"hi","value":"217361/250000","variable":"j"}` | `217361/250000 + -1 * j` |
| 21 | coordinate | `{"box":438,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 22 | coordinate | `{"box":438,"direction":"hi","value":"93873/100000","variable":"c"}` | `93873/100000 + -1 * c` |
| 23 | coordinate | `{"box":438,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 24 | coordinate | `{"box":438,"direction":"hi","value":"71539/125000","variable":"f"}` | `71539/125000 + -1 * f` |
| 25 | coordinate | `{"box":438,"direction":"hi","value":"78869/100000","variable":"h"}` | `78869/100000 + -1 * h` |
| 26 | coordinate | `{"box":438,"direction":"hi","value":"242189/500000","variable":"p"}` | `242189/500000 + -1 * p` |
| 27 | coordinate | `{"box":438,"direction":"hi","value":"561861/1000000","variable":"q"}` | `561861/1000000 + -1 * q` |
| 28 | coordinate | `{"box":438,"direction":"hi","value":"814871/1000000","variable":"u"}` | `814871/1000000 + -1 * u` |
| 29 | coordinate | `{"box":438,"direction":"hi","value":"757691/1000000","variable":"v"}` | `757691/1000000 + -1 * v` |
| 30 | coordinate | `{"box":438,"direction":"lo","value":"112299/500000","variable":"b"}` | `-112299/500000 + 1 * b` |
| 31 | coordinate | `{"box":438,"direction":"lo","value":"661729/1000000","variable":"r"}` | `-661729/1000000 + 1 * r` |
| 32 | coordinate | `{"box":438,"direction":"lo","value":"119461/250000","variable":"w"}` | `-119461/250000 + 1 * w` |
| 33 | coordinate | `{"box":438,"direction":"lo","value":"456937/1000000","variable":"j"}` | `-456937/1000000 + 1 * j` |
| 34 | coordinate | `{"box":438,"direction":"lo","value":"822623/1000000","variable":"k"}` | `-822623/1000000 + 1 * k` |
| 35 | coordinate | `{"box":438,"direction":"lo","value":"660123/1000000","variable":"c"}` | `-660123/1000000 + 1 * c` |
| 36 | coordinate | `{"box":438,"direction":"lo","value":"4069/31250","variable":"e"}` | `-4069/31250 + 1 * e` |
| 37 | coordinate | `{"box":438,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 38 | coordinate | `{"box":438,"direction":"lo","value":"28869/50000","variable":"h"}` | `-28869/50000 + 1 * h` |
| 39 | coordinate | `{"box":438,"direction":"lo","value":"83553/500000","variable":"p"}` | `-83553/500000 + 1 * p` |
| 40 | coordinate | `{"box":438,"direction":"lo","value":"104193/250000","variable":"q"}` | `-104193/250000 + 1 * q` |
| 41 | coordinate | `{"box":438,"direction":"lo","value":"417251/1000000","variable":"u"}` | `-417251/1000000 + 1 * u` |
| 42 | coordinate | `{"box":438,"direction":"lo","value":"437691/1000000","variable":"v"}` | `-437691/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 80300000000000 | 8 |
| 1 | 50800000000000 | 9 |
| 2 | 930850000000000 | 10 |
| 3 | 3806350000000000 | 11 |
| 4 | 950050000000000 | 12 |
| 5 | 265150000000000 | 13 |
| 6 | 583600000000000 | 1 |
| 7 | 920750000000000 | 14 |
| 8 | 2015250000000000 | 15 |
| 9 | 878100000000000 | 2 |
| 10 | 599850000000000 | 3 |
| 11 | 640500000000000 | 4 |
| 12 | 905650000000000 | 5 |
| 13 | 905650000000000 | 0 |
| 14 | 489850000000000 | 6 |
| 15 | 78500000000000 | 7 |
| 16 | 950050000000000 | 30, 40 |
| 17 | 4656950000000000 | 16, 26 |
| 18 | 265150000000000 | 29, 30 |
| 19 | 930850000000000 | 16, 41 |
| 20 | 3806350000000000 | 16, 31 |
| 21 | 265150000000000 | 17, 21 |
| 22 | 50800000000000 | 16, 33 |
| 23 | 583600000000000 | 22, 36 |
| 24 | 2015250000000000 | 25, 35 |
| 25 | 1960160113000000 | 35, 40 |
| 26 | 865650000000000 | 29, 35 |
| 27 | 1461700000000000 | 23, 24 |
| 28 | 797800000000000 | 23, 41 |
| 29 | 50800000000000 | 20, 23 |
| 30 | 599850000000000 | 25, 37 |
| 31 | 950050000000000 | 24, 40 |
| 32 | 597850000000000 | 29, 37 |
| 33 | 1240350000000000 | 21, 24 |
| 34 | 2015250000000000 | 25, 26 |
| 35 | 599850000000000 | 20, 25 |
| 36 | 4712000000000000 | 19, 39 |
| 37 | 4712000000000000 | 31, 40 |
| 38 | 280250000000000 | 21, 31 |
| 39 | 625400000000000 | 18, 34 |
| 40 | 905650000000000 | 19, 20 |
| 41 | 4081673636573899 | 40 |
| 42 | 543566900300000 | 16 |
| 43 | 5500000000 | 23, 39 |
| 44 | 10389283000 | 23 |
| 45 | 17508000000 | 26 |
| 46 | 50000000000 | 16, 39 |
| 47 | 31390650000 | 34 |
| 48 | 15613000000 | 39, 42 |
| 49 | 24244669583 | 39 |
| 50 | 9324375978 | 42 |
| 51 | 15613000000 | 27, 41 |
| 52 | 6514539863 | 27 |
| 53 | 9149835793 | 28 |
| 54 | 2469950000 | 30 |
| 55 | 10916019083 | 22 |
| 56 | 10113000000 | 22, 42 |
| 57 | 9493376490 | 29 |
| 58 | 4214815236 | 35 |
| 59 | 5500000000 | 36, 41 |
| 60 | 2294880500 | 36 |
| 61 | 716144000 | 41 |
| 62 | 8156300000 | 33 |
| 63 | 10799450000 | 24 |
| 64 | 9162700000 | 18 |
| 65 | 7722150000 | 38 |
| 66 | 8486600000 | 32 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -332690414258516902533/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -332690414258516902533/1000000 | 1 | -332690414258516902533/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 438 | -332690414258516902533/1000000 |

## Stage 439

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR-/PQS+/BFP+/APR+ |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR-/PQS+/BFP+/APR+:LH |
| Index | 0 |
| Context | 41 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 423 |
| Coordinate cut | h high 78869/100000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 4069/31250 | 6143/20000 | 4069/31250 | 6143/20000 |
| b | 112299/500000 | 286279/500000 | 112299/500000 | 286279/500000 |
| c | 135501/250000 | 93873/100000 | 135501/250000 | 93873/100000 |
| e | 4069/31250 | 391/1000 | 4069/31250 | 391/1000 |
| f | 279/1000 | 71539/125000 | 279/1000 | 71539/125000 |
| h | 78869/100000 | 1 | 78869/100000 | 1 |
| p | 83553/500000 | 242189/500000 | 83553/500000 | 242189/500000 |
| q | 44593/200000 | 561861/1000000 | 44593/200000 | 561861/1000000 |
| u | 417251/1000000 | 814871/1000000 | 417251/1000000 | 814871/1000000 |
| v | 437691/1000000 | 757691/1000000 | 437691/1000000 | 757691/1000000 |
| r | 661729/1000000 | 1 | 661729/1000000 | 1 |
| w | 119461/250000 | 210623/250000 | 119461/250000 | 210623/250000 |
| j | 456937/1000000 | 217361/250000 | 456937/1000000 | 217361/250000 |
| k | 822623/1000000 | 1 | 822623/1000000 | 1 |

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
