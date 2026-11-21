# BITT convex: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 640

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS+/BFP+/AQR-/EPQ-/PQR-/APQ- |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS+/BFP+/AQR-/EPQ-/PQR-/APQ-:HLHHHHH |
| Index | 0 |
| Context | 34 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 634 |
| Coordinate cut | b high 343963/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 104983/1000000 | 6143/20000 | 104983/1000000 | 6143/20000 |
| b | 343963/1000000 | 15761/31250 | 343963/1000000 | 15761/31250 |
| c | 765833/1000000 | 494831/500000 | 765833/1000000 | 494831/500000 |
| e | 20997/200000 | 391/1000 | 20997/200000 | 391/1000 |
| f | 279/1000 | 116873/200000 | 279/1000 | 116873/200000 |
| h | 797833/1000000 | 1 | 797833/1000000 | 1 |
| p | 13023/100000 | 231363/500000 | 13023/100000 | 231363/500000 |
| q | 63529/250000 | 64169/100000 | 63529/250000 | 64169/100000 |
| u | 12469/40000 | 680489/1000000 | 12469/40000 | 680489/1000000 |
| v | 423333/1000000 | 17929/25000 | 423333/1000000 | 17929/25000 |
| r | 774119/1000000 | 1 | 774119/1000000 | 1 |
| w | 276783/500000 | 843727/1000000 | 276783/500000 | 843727/1000000 |
| j | 110017/200000 | 13658/15625 | 110017/200000 | 13658/15625 |
| k | 79979/100000 | 1 | 79979/100000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"48:919","triangle":"APR","value":"1962/15625"}` | `-1 * p * w + 1 * a * p + 1 * q * r + -1 * a * r + -1962/15625` |
| 1 | bound | `{"direction":"lo","ref":"48:977","triangle":"QRS","value":"131459/1000000"}` | `1 * r * k + -1 * v * r + -1 * u * k + -1 * w * j + 1 * u * w + 1 * v * j + -131459/1000000` |
| 2 | physical | `{"factor":0,"stage":48}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 3 | physical | `{"factor":108,"stage":48}` | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -93/1000` |
| 4 | physical | `{"factor":120,"stage":48}` | `-1/1 * f * k + -1/1 * h * j + 1/1 * f * h + 1/1 * j + -93/1000` |
| 5 | physical | `{"factor":126,"stage":48}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 6 | physical | `{"factor":133,"stage":48}` | `-1/1 * u * w + 1/1 * q * u + 1/1 * p * w + 1/1 * v * r + -1/1 * p * v + -1/1 * q * r + -93/1000` |
| 7 | physical | `{"factor":38,"stage":48}` | `1/1 * h * r + -1/1 * a * r + -13857/20000` |
| 8 | physical | `{"factor":56,"stage":48}` | `1/1 * h + -1/1 * b * h + 1/1 * b * e + -13857/20000` |
| 9 | physical | `{"factor":69,"stage":48}` | `1/1 * b * q + 1/1 * h * p + -1/1 * b * h + -93/1000` |
| 10 | physical | `{"factor":77,"stage":48}` | `1/1 * u * k + -1/1 * b * k + -1/1 * v * j + 1/1 * b * v + -93/1000` |
| 11 | physical | `{"factor":84,"stage":48}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 12 | physical | `{"factor":88,"stage":48}` | `1/1 * f * v + -1/1 * c * v + -1/1 * u + 1/1 * c + -93/1000` |
| 13 | coordinate | `{"box":640,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 14 | coordinate | `{"box":640,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 15 | coordinate | `{"box":640,"direction":"hi","value":"843727/1000000","variable":"w"}` | `843727/1000000 + -1 * w` |
| 16 | coordinate | `{"box":640,"direction":"hi","value":"13658/15625","variable":"j"}` | `13658/15625 + -1 * j` |
| 17 | coordinate | `{"box":640,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 18 | coordinate | `{"box":640,"direction":"hi","value":"494831/500000","variable":"c"}` | `494831/500000 + -1 * c` |
| 19 | coordinate | `{"box":640,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 20 | coordinate | `{"box":640,"direction":"hi","value":"116873/200000","variable":"f"}` | `116873/200000 + -1 * f` |
| 21 | coordinate | `{"box":640,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 22 | coordinate | `{"box":640,"direction":"hi","value":"231363/500000","variable":"p"}` | `231363/500000 + -1 * p` |
| 23 | coordinate | `{"box":640,"direction":"hi","value":"64169/100000","variable":"q"}` | `64169/100000 + -1 * q` |
| 24 | coordinate | `{"box":640,"direction":"hi","value":"680489/1000000","variable":"u"}` | `680489/1000000 + -1 * u` |
| 25 | coordinate | `{"box":640,"direction":"hi","value":"17929/25000","variable":"v"}` | `17929/25000 + -1 * v` |
| 26 | coordinate | `{"box":640,"direction":"lo","value":"104983/1000000","variable":"a"}` | `-104983/1000000 + 1 * a` |
| 27 | coordinate | `{"box":640,"direction":"lo","value":"343963/1000000","variable":"b"}` | `-343963/1000000 + 1 * b` |
| 28 | coordinate | `{"box":640,"direction":"lo","value":"774119/1000000","variable":"r"}` | `-774119/1000000 + 1 * r` |
| 29 | coordinate | `{"box":640,"direction":"lo","value":"276783/500000","variable":"w"}` | `-276783/500000 + 1 * w` |
| 30 | coordinate | `{"box":640,"direction":"lo","value":"110017/200000","variable":"j"}` | `-110017/200000 + 1 * j` |
| 31 | coordinate | `{"box":640,"direction":"lo","value":"79979/100000","variable":"k"}` | `-79979/100000 + 1 * k` |
| 32 | coordinate | `{"box":640,"direction":"lo","value":"765833/1000000","variable":"c"}` | `-765833/1000000 + 1 * c` |
| 33 | coordinate | `{"box":640,"direction":"lo","value":"20997/200000","variable":"e"}` | `-20997/200000 + 1 * e` |
| 34 | coordinate | `{"box":640,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 35 | coordinate | `{"box":640,"direction":"lo","value":"797833/1000000","variable":"h"}` | `-797833/1000000 + 1 * h` |
| 36 | coordinate | `{"box":640,"direction":"lo","value":"13023/100000","variable":"p"}` | `-13023/100000 + 1 * p` |
| 37 | coordinate | `{"box":640,"direction":"lo","value":"63529/250000","variable":"q"}` | `-63529/250000 + 1 * q` |
| 38 | coordinate | `{"box":640,"direction":"lo","value":"12469/40000","variable":"u"}` | `-12469/40000 + 1 * u` |
| 39 | coordinate | `{"box":640,"direction":"lo","value":"423333/1000000","variable":"v"}` | `-423333/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 10047000000 | 2 |
| 1 | 3960000000 | 7 |
| 2 | 10988000000 | 0 |
| 3 | 16755000000 | 8 |
| 4 | 395000000 | 9 |
| 5 | 37105000000 | 10 |
| 6 | 32143000000 | 11 |
| 7 | 7232000000 | 12 |
| 8 | 5657000000 | 3 |
| 9 | 61513000000 | 4 |
| 10 | 17486000000 | 5 |
| 11 | 34817000000 | 6 |
| 12 | 34817000000 | 1 |
| 13 | 10047000000 | 26, 27 |
| 14 | 10047000000 | 18, 26 |
| 15 | 16755000000 | 19, 27 |
| 16 | 17150000000 | 27, 35 |
| 17 | 395000000 | 23, 27 |
| 18 | 10988000000 | 22, 26 |
| 19 | 37105000000 | 25, 27 |
| 20 | 14948000000 | 26, 28 |
| 21 | 37105000000 | 27, 31 |
| 22 | 32143000000 | 19, 32 |
| 23 | 7232000000 | 32, 39 |
| 24 | 32143000000 | 29, 32 |
| 25 | 5657000000 | 19, 38 |
| 26 | 32143000000 | 14, 19 |
| 27 | 61513000000 | 21, 34 |
| 28 | 7232000000 | 20, 39 |
| 29 | 17486000000 | 20, 29 |
| 30 | 23699000000 | 31, 34 |
| 31 | 55300000000 | 17, 20 |
| 32 | 395000000 | 21, 36 |
| 33 | 5657000000 | 21, 24 |
| 34 | 3960000000 | 14, 35 |
| 35 | 61513000000 | 30, 35 |
| 36 | 34817000000 | 36, 39 |
| 37 | 34817000000 | 24, 37 |
| 38 | 23829000000 | 22, 29 |
| 39 | 23828000000 | 14, 23 |
| 40 | 2288000000 | 24, 31 |
| 41 | 2288000000 | 30, 39 |
| 42 | 9605000000 | 17, 28 |
| 43 | 42698000000 | 14, 31 |
| 44 | 52303000000 | 29, 30 |
| 45 | 553566 | 22 |
| 46 | 462726 | 15 |
| 47 | 1000000 | 28, 37 |
| 48 | 774119 | 37 |
| 49 | 590010 | 28 |
| 50 | 302478 | 35 |
| 51 | 224356 | 29 |
| 52 | 363292 | 24 |
| 53 | 138993 | 32 |
| 54 | 558149 | 25 |
| 55 | 799790 | 34 |
| 56 | 780788 | 31 |
| 57 | 150269 | 16 |
| 58 | 799790 | 14 |
| 59 | 1000000 | 17 |
| 60 | 240329 | 13 |
| 61 | 10998913751 | 27 |
| 62 | 301491 | 33 |
| 63 | 450898 | 23 |
| 64 | 261209 | 36 |
| 65 | 775912 | 20 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -458767747765293/200000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -458767747765293/200000 | 1 | -458767747765293/200000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 640 | -458767747765293/200000 |

## Stage 641

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS+/BFP+/AQR-/EPQ-/PQR-/APQ- |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS+/BFP+/AQR-/EPQ-/PQR-/APQ-:HH |
| Index | 0 |
| Context | 34 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 597 |
| Coordinate cut | u high 680489/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 104983/1000000 | 6143/20000 | 104983/1000000 | 6143/20000 |
| b | 25977/250000 | 15761/31250 | 25977/250000 | 15761/31250 |
| c | 765833/1000000 | 494831/500000 | 765833/1000000 | 494831/500000 |
| e | 20997/200000 | 391/1000 | 20997/200000 | 391/1000 |
| f | 279/1000 | 116873/200000 | 279/1000 | 116873/200000 |
| h | 797833/1000000 | 1 | 797833/1000000 | 1 |
| p | 13023/100000 | 231363/500000 | 13023/100000 | 231363/500000 |
| q | 63529/250000 | 64169/100000 | 63529/250000 | 64169/100000 |
| u | 680489/1000000 | 780839/1000000 | 680489/1000000 | 780839/1000000 |
| v | 142957/500000 | 17929/25000 | 142957/500000 | 17929/25000 |
| r | 774119/1000000 | 1 | 774119/1000000 | 1 |
| w | 52681/200000 | 843727/1000000 | 52681/200000 | 843727/1000000 |
| j | 16519/40000 | 13658/15625 | 16519/40000 | 13658/15625 |
| k | 311071/500000 | 1 | 311071/500000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"48:756","triangle":"EQR","value":"11841/125000"}` | `-1 * u * w + 1 * e * u + 1 * w + 1 * v * r + -1 * v + -1 * e * r + -11841/125000` |
| 1 | bound | `{"direction":"lo","ref":"48:920","triangle":"AQR","value":"29607/250000"}` | `-1 * u * w + 1 * a * u + 1 * v * r + -1 * a * r + -29607/250000` |
| 2 | physical | `{"factor":105,"stage":48}` | `-1/1 * f * w + 1/1 * e * f + 1/1 * w + 1/1 * r + -1093/1000 + -1/1 * e * r` |
| 3 | physical | `{"factor":108,"stage":48}` | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -93/1000` |
| 4 | physical | `{"factor":1588,"stage":48}` | `-420459/1000000 * f * w + 602541/1000000 * h * r + -602541/1000000 * f * h + 420459/1000000 * r + 1023/1000 * f * v + -1023/1000 * u + 1023/1000 * u * w + -1023/1000 * v * r` |
| 5 | physical | `{"factor":878,"stage":48}` | `-79/125 * c * v + 79/125 * a * c + 391/1000 * a * u + -1023/1000 * a + 1023/1000 * v + -1023/1000 * e * u` |
| 6 | physical | `{"factor":88,"stage":48}` | `1/1 * f * v + -1/1 * c * v + -1/1 * u + 1/1 * c + -93/1000` |
| 7 | coordinate | `{"box":641,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 8 | coordinate | `{"box":641,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 9 | coordinate | `{"box":641,"direction":"hi","value":"843727/1000000","variable":"w"}` | `843727/1000000 + -1 * w` |
| 10 | coordinate | `{"box":641,"direction":"hi","value":"494831/500000","variable":"c"}` | `494831/500000 + -1 * c` |
| 11 | coordinate | `{"box":641,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 12 | coordinate | `{"box":641,"direction":"hi","value":"116873/200000","variable":"f"}` | `116873/200000 + -1 * f` |
| 13 | coordinate | `{"box":641,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 14 | coordinate | `{"box":641,"direction":"hi","value":"780839/1000000","variable":"u"}` | `780839/1000000 + -1 * u` |
| 15 | coordinate | `{"box":641,"direction":"hi","value":"17929/25000","variable":"v"}` | `17929/25000 + -1 * v` |
| 16 | coordinate | `{"box":641,"direction":"lo","value":"104983/1000000","variable":"a"}` | `-104983/1000000 + 1 * a` |
| 17 | coordinate | `{"box":641,"direction":"lo","value":"774119/1000000","variable":"r"}` | `-774119/1000000 + 1 * r` |
| 18 | coordinate | `{"box":641,"direction":"lo","value":"52681/200000","variable":"w"}` | `-52681/200000 + 1 * w` |
| 19 | coordinate | `{"box":641,"direction":"lo","value":"765833/1000000","variable":"c"}` | `-765833/1000000 + 1 * c` |
| 20 | coordinate | `{"box":641,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 21 | coordinate | `{"box":641,"direction":"lo","value":"797833/1000000","variable":"h"}` | `-797833/1000000 + 1 * h` |
| 22 | coordinate | `{"box":641,"direction":"lo","value":"680489/1000000","variable":"u"}` | `-680489/1000000 + 1 * u` |
| 23 | coordinate | `{"box":641,"direction":"lo","value":"142957/500000","variable":"v"}` | `-142957/500000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 13663750000000000 | 1 |
| 1 | 104000000000000 | 6 |
| 2 | 462750000000000 | 2 |
| 3 | 13562000000000000 | 3 |
| 4 | 27674000000000000 | 0 |
| 5 | 76000000000000 | 5 |
| 6 | 211000000000000 | 4 |
| 7 | 48000000000000 | 10, 16 |
| 8 | 12848250000000000 | 14, 16 |
| 9 | 845216000000000 | 7, 22 |
| 10 | 13663750000000000 | 16, 17 |
| 11 | 152250000000000 | 10, 15 |
| 12 | 462750000000000 | 11, 20 |
| 13 | 41158252000000000 | 11, 22 |
| 14 | 28136750000000000 | 8, 11 |
| 15 | 127250000000000 | 12, 13 |
| 16 | 320000000000000 | 12, 23 |
| 17 | 551500000000000 | 18, 20 |
| 18 | 13562000000000000 | 13, 14 |
| 19 | 127250000000000 | 13, 17 |
| 20 | 41121897000000000 | 18, 22 |
| 21 | 41121750000000000 | 8, 23 |
| 22 | 7012300949535000 | 22 |
| 23 | 117067633000 | 18 |
| 24 | 171492280000 | 7 |
| 25 | 67126400000 | 14 |
| 26 | 147000000000 | 15, 17 |
| 27 | 329541809000 | 15 |
| 28 | 175584770000 | 8 |
| 29 | 147000000000 | 20, 23 |
| 30 | 132156858000 | 20 |
| 31 | 222252500000 | 23 |
| 32 | 218000000000 | 10, 23 |
| 33 | 72158052000 | 10 |
| 34 | 148426000000 | 19 |
| 35 | 33151000000 | 12, 18 |
| 36 | 99564628372 | 12 |
| 37 | 19372284115 | 9 |
| 38 | 2996474207870885 | 13 |
| 39 | 94995228000 | 11 |
| 40 | 32000000000 | 7, 19 |
| 41 | 184823500000 | 16 |
| 42 | 113849000000 | 17, 21 |
| 43 | 88132674031 | 21 |
| 44 | 90832489217 | 17 |
| 45 | 113849000000 | 12, 21 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -820864250327079266609/500000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -820864250327079266609/500000 | 1 | -820864250327079266609/500000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 641 | -820864250327079266609/500000 |

## Stage 642

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS+/BFP-/BQR+/APS+/APR+ |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS+/BFP-/BQR+/APS+/APR+:root |
| Index | 0 |
| Context | 38 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 55 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 11253/100000 | 211403/1000000 | 11253/100000 | 211403/1000000 |
| b | 13099/125000 | 2967/12500 | 13099/125000 | 2967/12500 |
| c | 398821/500000 | 457141/500000 | 398821/500000 | 457141/500000 |
| e | 11267/100000 | 211403/1000000 | 11267/100000 | 211403/1000000 |
| f | 173387/1000000 | 420519/1000000 | 173387/1000000 | 420519/1000000 |
| h | 40269/50000 | 893529/1000000 | 40269/50000 | 893529/1000000 |
| p | 6533/31250 | 159653/250000 | 6533/31250 | 159653/250000 |
| q | 199797/1000000 | 126123/200000 | 199797/1000000 | 126123/200000 |
| u | 344441/1000000 | 723411/1000000 | 344441/1000000 | 723411/1000000 |
| v | 49697/250000 | 622269/1000000 | 49697/250000 | 622269/1000000 |
| r | 365441/500000 | 1 | 365441/500000 | 1 |
| w | 796617/1000000 | 54389/62500 | 796617/1000000 | 54389/62500 |
| j | 123687/200000 | 109723/125000 | 123687/200000 | 109723/125000 |
| k | 453707/500000 | 1 | 453707/500000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"55:358","triangle":"CHP","value":"96963/1000000"}` | `-1 * c * q + -1 * h * p + 1 * c * h + -96963/1000000` |
| 1 | physical | `{"factor":10,"stage":55}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 2 | physical | `{"factor":107,"stage":55}` | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -93/1000` |
| 3 | physical | `{"factor":114,"stage":55}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 4 | physical | `{"factor":118,"stage":55}` | `-1/1 * f * k + -1/1 * h * j + 1/1 * f * h + 1/1 * j + -93/1000` |
| 5 | physical | `{"factor":123,"stage":55}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 6 | physical | `{"factor":31,"stage":55}` | `1/1 * w + -1/1 * a + -1/1 * e * r + 1/1 * a * r + -13857/20000` |
| 7 | physical | `{"factor":7,"stage":55}` | `1/1 * b * h + -1/1 * a * b + -93/1000` |
| 8 | physical | `{"factor":75,"stage":55}` | `1/1 * u * w + -1/1 * b * w + -1/1 * v * r + 1/1 * b * v + -93/1000` |
| 9 | physical | `{"factor":80,"stage":55}` | `1/1 * h + -1/1 * c * h + 1/1 * c * e + -279/1000` |
| 10 | physical | `{"factor":87,"stage":55}` | `1/1 * f * v + -1/1 * c * v + -1/1 * u + 1/1 * c + -93/1000` |
| 11 | physical | `{"factor":91,"stage":55}` | `1/1 * c * v + 1/1 * h * u + -1/1 * c * h + -93/1000` |
| 12 | coordinate | `{"box":642,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 13 | coordinate | `{"box":642,"direction":"hi","value":"54389/62500","variable":"w"}` | `54389/62500 + -1 * w` |
| 14 | coordinate | `{"box":642,"direction":"hi","value":"109723/125000","variable":"j"}` | `109723/125000 + -1 * j` |
| 15 | coordinate | `{"box":642,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 16 | coordinate | `{"box":642,"direction":"hi","value":"457141/500000","variable":"c"}` | `457141/500000 + -1 * c` |
| 17 | coordinate | `{"box":642,"direction":"hi","value":"211403/1000000","variable":"e"}` | `211403/1000000 + -1 * e` |
| 18 | coordinate | `{"box":642,"direction":"hi","value":"420519/1000000","variable":"f"}` | `420519/1000000 + -1 * f` |
| 19 | coordinate | `{"box":642,"direction":"hi","value":"893529/1000000","variable":"h"}` | `893529/1000000 + -1 * h` |
| 20 | coordinate | `{"box":642,"direction":"hi","value":"159653/250000","variable":"p"}` | `159653/250000 + -1 * p` |
| 21 | coordinate | `{"box":642,"direction":"hi","value":"126123/200000","variable":"q"}` | `126123/200000 + -1 * q` |
| 22 | coordinate | `{"box":642,"direction":"hi","value":"723411/1000000","variable":"u"}` | `723411/1000000 + -1 * u` |
| 23 | coordinate | `{"box":642,"direction":"hi","value":"622269/1000000","variable":"v"}` | `622269/1000000 + -1 * v` |
| 24 | coordinate | `{"box":642,"direction":"lo","value":"11253/100000","variable":"a"}` | `-11253/100000 + 1 * a` |
| 25 | coordinate | `{"box":642,"direction":"lo","value":"13099/125000","variable":"b"}` | `-13099/125000 + 1 * b` |
| 26 | coordinate | `{"box":642,"direction":"lo","value":"365441/500000","variable":"r"}` | `-365441/500000 + 1 * r` |
| 27 | coordinate | `{"box":642,"direction":"lo","value":"796617/1000000","variable":"w"}` | `-796617/1000000 + 1 * w` |
| 28 | coordinate | `{"box":642,"direction":"lo","value":"123687/200000","variable":"j"}` | `-123687/200000 + 1 * j` |
| 29 | coordinate | `{"box":642,"direction":"lo","value":"398821/500000","variable":"c"}` | `-398821/500000 + 1 * c` |
| 30 | coordinate | `{"box":642,"direction":"lo","value":"11267/100000","variable":"e"}` | `-11267/100000 + 1 * e` |
| 31 | coordinate | `{"box":642,"direction":"lo","value":"173387/1000000","variable":"f"}` | `-173387/1000000 + 1 * f` |
| 32 | coordinate | `{"box":642,"direction":"lo","value":"40269/50000","variable":"h"}` | `-40269/50000 + 1 * h` |
| 33 | coordinate | `{"box":642,"direction":"lo","value":"6533/31250","variable":"p"}` | `-6533/31250 + 1 * p` |
| 34 | coordinate | `{"box":642,"direction":"lo","value":"199797/1000000","variable":"q"}` | `-199797/1000000 + 1 * q` |
| 35 | coordinate | `{"box":642,"direction":"lo","value":"344441/1000000","variable":"u"}` | `-344441/1000000 + 1 * u` |
| 36 | coordinate | `{"box":642,"direction":"lo","value":"49697/250000","variable":"v"}` | `-49697/250000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 1727000000 | 7 |
| 1 | 339000000 | 1 |
| 2 | 34315000000 | 6 |
| 3 | 8744000000 | 8 |
| 4 | 3073000000 | 9 |
| 5 | 48569000000 | 10 |
| 6 | 45000000 | 0 |
| 7 | 90372000000 | 11 |
| 8 | 45940000000 | 2 |
| 9 | 11202000000 | 3 |
| 10 | 14329000000 | 4 |
| 11 | 53634000000 | 5 |
| 12 | 2066000000 | 24, 25 |
| 13 | 1727000000 | 19, 25 |
| 14 | 339000000 | 21, 25 |
| 15 | 339000000 | 20, 24 |
| 16 | 8744000000 | 23, 25 |
| 17 | 8744000000 | 25, 27 |
| 18 | 34315000000 | 12, 24 |
| 19 | 3073000000 | 17, 29 |
| 20 | 93400000000 | 29, 32 |
| 21 | 45000000 | 29, 34 |
| 22 | 41802000000 | 23, 29 |
| 23 | 45940000000 | 22, 30 |
| 24 | 45517000000 | 12, 17 |
| 25 | 11202000000 | 14, 30 |
| 26 | 1068000000 | 19, 31 |
| 27 | 13261000000 | 18, 32 |
| 28 | 48569000000 | 18, 36 |
| 29 | 53634000000 | 13, 31 |
| 30 | 67963000000 | 15, 18 |
| 31 | 19000000 | 32, 33 |
| 32 | 26000000 | 19, 20 |
| 33 | 44431000000 | 22, 32 |
| 34 | 14329000000 | 14, 19 |
| 35 | 8744000000 | 13, 35 |
| 36 | 8744000000 | 12, 23 |
| 37 | 64836000000 | 15, 26 |
| 38 | 64836000000 | 13, 14 |
| 39 | 74210 | 27 |
| 40 | 10804 | 24 |
| 41 | 576012 | 32 |
| 42 | 1000000 | 16, 36 |
| 43 | 198788 | 16 |
| 44 | 914282 | 23 |
| 45 | 1030765 | 22 |
| 46 | 752708 | 29 |
| 47 | 1000000 | 19, 35 |
| 48 | 344441 | 19 |
| 49 | 480557 | 36 |
| 50 | 7605732555 | 15 |
| 51 | 90965 | 28 |
| 52 | 83537 | 26 |
| 53 | 82824 | 25 |
| 54 | 369402 | 34 |
| 55 | 386304 | 33 |
| 56 | 591574 | 17 |
| 57 | 38460 | 31 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -17354342790813/20000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -17354342790813/20000 | 1 | -17354342790813/20000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 642 | -17354342790813/20000 |

## Stage 643

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS+/BFP-/BQR+/APS+/APR-/EPQ- |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS+/BFP-/BQR+/APS+/APR-/EPQ-:root |
| Index | 0 |
| Context | 41 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 58 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 796617/1000000 | 1 | 796617/1000000 | 1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 188671/1000000 | 58493/100000 | 188671/1000000 | 58493/100000 |
| h | 796617/1000000 | 1 | 796617/1000000 | 1 |
| p | 220141/1000000 | 606731/1000000 | 220141/1000000 | 606731/1000000 |
| q | 137651/500000 | 117387/200000 | 137651/500000 | 117387/200000 |
| u | 21413/50000 | 796909/1000000 | 21413/50000 | 796909/1000000 |
| v | 26769/100000 | 646317/1000000 | 26769/100000 | 646317/1000000 |
| r | 135947/250000 | 1 | 135947/250000 | 1 |
| w | 461523/1000000 | 108133/125000 | 461523/1000000 | 108133/125000 |
| j | 18069/50000 | 438941/500000 | 18069/50000 | 438941/500000 |
| k | 796617/1000000 | 1 | 796617/1000000 | 1 |

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


## Stage 644

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS+/BFP-/BQR+/APS+/APR-/EPQ- |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS+/BFP-/BQR+/APS+/APR-/EPQ-:L |
| Index | 0 |
| Context | 41 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 643 |
| Coordinate cut | r low 338967/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 796617/1000000 | 1 | 796617/1000000 | 1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 188671/1000000 | 58493/100000 | 188671/1000000 | 58493/100000 |
| h | 796617/1000000 | 1 | 796617/1000000 | 1 |
| p | 220141/1000000 | 606731/1000000 | 220141/1000000 | 606731/1000000 |
| q | 137651/500000 | 117387/200000 | 137651/500000 | 117387/200000 |
| u | 21413/50000 | 796909/1000000 | 21413/50000 | 796909/1000000 |
| v | 26769/100000 | 646317/1000000 | 26769/100000 | 646317/1000000 |
| r | 135947/250000 | 338967/500000 | 135947/250000 | 338967/500000 |
| w | 461523/1000000 | 108133/125000 | 461523/1000000 | 108133/125000 |
| j | 18069/50000 | 438941/500000 | 18069/50000 | 438941/500000 |
| k | 796617/1000000 | 1 | 796617/1000000 | 1 |

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
| 0 | bound | `{"direction":"lo","ref":"58:1292","triangle":"ARS","value":"73921/200000"}` | `1 * r * k + -1 * a * r + -1 * w * j + 1 * a * j + -73921/200000` |
| 1 | physical | `{"factor":10,"stage":58}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 2 | physical | `{"factor":111,"stage":58}` | `-1/1 * q + -1/1 * h * p + 1/1 * h + 1/1 * e * p + -279/1000` |
| 3 | physical | `{"factor":120,"stage":58}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 4 | physical | `{"factor":124,"stage":58}` | `-1/1 * f * k + -1/1 * h * j + 1/1 * f * h + 1/1 * j + -93/1000` |
| 5 | physical | `{"factor":130,"stage":58}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 6 | physical | `{"factor":1643,"stage":58}` | `103893/250000 * p * w + -103893/250000 * e * p + 151857/250000 * w + -103893/250000 * q * r + 103893/250000 * q + -151857/250000 * e * r + -1023/1000 * f * w + 1023/1000 * e * f + 1023/1000 * r + -1023/1000` |
| 7 | physical | `{"factor":44,"stage":58}` | `-1/1 * p * w + 1/1 * a * p + 1/1 * q * r + -1/1 * a * r + -93/1000` |
| 8 | physical | `{"factor":69,"stage":58}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 9 | coordinate | `{"box":644,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 10 | coordinate | `{"box":644,"direction":"hi","value":"338967/500000","variable":"r"}` | `338967/500000 + -1 * r` |
| 11 | coordinate | `{"box":644,"direction":"hi","value":"108133/125000","variable":"w"}` | `108133/125000 + -1 * w` |
| 12 | coordinate | `{"box":644,"direction":"hi","value":"438941/500000","variable":"j"}` | `438941/500000 + -1 * j` |
| 13 | coordinate | `{"box":644,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 14 | coordinate | `{"box":644,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 15 | coordinate | `{"box":644,"direction":"hi","value":"58493/100000","variable":"f"}` | `58493/100000 + -1 * f` |
| 16 | coordinate | `{"box":644,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 17 | coordinate | `{"box":644,"direction":"hi","value":"606731/1000000","variable":"p"}` | `606731/1000000 + -1 * p` |
| 18 | coordinate | `{"box":644,"direction":"hi","value":"117387/200000","variable":"q"}` | `117387/200000 + -1 * q` |
| 19 | coordinate | `{"box":644,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 20 | coordinate | `{"box":644,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 21 | coordinate | `{"box":644,"direction":"lo","value":"135947/250000","variable":"r"}` | `-135947/250000 + 1 * r` |
| 22 | coordinate | `{"box":644,"direction":"lo","value":"461523/1000000","variable":"w"}` | `-461523/1000000 + 1 * w` |
| 23 | coordinate | `{"box":644,"direction":"lo","value":"18069/50000","variable":"j"}` | `-18069/50000 + 1 * j` |
| 24 | coordinate | `{"box":644,"direction":"lo","value":"796617/1000000","variable":"k"}` | `-796617/1000000 + 1 * k` |
| 25 | coordinate | `{"box":644,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 26 | coordinate | `{"box":644,"direction":"lo","value":"188671/1000000","variable":"f"}` | `-188671/1000000 + 1 * f` |
| 27 | coordinate | `{"box":644,"direction":"lo","value":"796617/1000000","variable":"h"}` | `-796617/1000000 + 1 * h` |
| 28 | coordinate | `{"box":644,"direction":"lo","value":"220141/1000000","variable":"p"}` | `-220141/1000000 + 1 * p` |
| 29 | coordinate | `{"box":644,"direction":"lo","value":"137651/500000","variable":"q"}` | `-137651/500000 + 1 * q` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 1540250000000000 | 1 |
| 1 | 6073000000000000 | 7 |
| 2 | 12208750000000000 | 0 |
| 3 | 2188750000000000 | 8 |
| 4 | 4438500000000000 | 2 |
| 5 | 7664000000000000 | 3 |
| 6 | 20389000000000000 | 4 |
| 7 | 2655500000000000 | 5 |
| 8 | 2595750000000000 | 6 |
| 9 | 3729000000000000 | 18, 20 |
| 10 | 7613250000000000 | 9, 28 |
| 11 | 18281750000000000 | 9, 10 |
| 12 | 12208750000000000 | 12, 19 |
| 13 | 2655500000000000 | 15, 25 |
| 14 | 3359778981000000 | 14, 28 |
| 15 | 9240500000000000 | 10, 14 |
| 16 | 2327250000000000 | 12, 25 |
| 17 | 5336750000000000 | 14, 23 |
| 18 | 20237750000000000 | 16, 26 |
| 19 | 151250000000000 | 15, 27 |
| 20 | 2188750000000000 | 26, 29 |
| 21 | 14815500000000000 | 24, 26 |
| 22 | 8229000000000000 | 13, 15 |
| 23 | 4438500000000000 | 27, 28 |
| 24 | 20389000000000000 | 23, 27 |
| 25 | 4994278981000000 | 22, 28 |
| 26 | 4994250000000000 | 10, 29 |
| 27 | 22528250000000000 | 10, 24 |
| 28 | 22528250000000000 | 22, 23 |
| 29 | 1540250000000000 | 19, 20 |
| 30 | 159827121750000 | 19 |
| 31 | 159896506750000 | 20 |
| 32 | 13375398063 | 28 |
| 33 | 96724906321 | 22 |
| 34 | 28981000000 | 18, 21 |
| 35 | 15759520028 | 18 |
| 36 | 10093008191213235 | 10 |
| 37 | 169483500000 | 13 |
| 38 | 115380750000 | 23 |
| 39 | 87521821000 | 17 |
| 40 | 13609750000 | 29 |
| 41 | 25455750000 | 27 |
| 42 | 103192156321 | 14 |
| 43 | 231231000000 | 21, 25 |
| 44 | 134749683278 | 25 |
| 45 | 23994147177 | 21 |
| 46 | 147018500000 | 24 |
| 47 | 151332157500 | 11 |
| 48 | 112205000000 | 12 |
| 49 | 47750000000 | 15, 22 |
| 50 | 22037723250 | 15 |
| 51 | 47750000000 | 25, 26 |
| 52 | 59781124250 | 26 |
| 53 | 10431250000 | 9 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -1282709139573272207619/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -1282709139573272207619/1000000 | 1 | -1282709139573272207619/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 644 | -1282709139573272207619/1000000 |
