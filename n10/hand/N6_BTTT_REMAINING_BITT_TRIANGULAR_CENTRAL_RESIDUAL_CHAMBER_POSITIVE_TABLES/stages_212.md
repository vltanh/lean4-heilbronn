# BITT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 1060

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ+/QRS-/EHQ+/BQR-/BPS+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ+/QRS-/EHQ+/BQR-/BPS+:HLLHLLL |
| Index | 0 |
| Context | 225 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1059 |
| Coordinate cut | q low 172217/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 16691/62500 | 103767/1000000 | 16691/62500 |
| c | 796617/1000000 | 1 | 796617/1000000 | 1 |
| e | 132669/1000000 | 27307/62500 | 132669/1000000 | 27307/62500 |
| f | 132669/1000000 | 237543/500000 | 132669/1000000 | 237543/500000 |
| h | 796617/1000000 | 1 | 796617/1000000 | 1 |
| p | 62027/200000 | 498273/1000000 | 62027/200000 | 498273/1000000 |
| q | 102791/500000 | 172217/500000 | 102791/500000 | 172217/500000 |
| u | 153479/500000 | 260293/500000 | 153479/500000 | 260293/500000 |
| v | 391141/1000000 | 614801/1000000 | 391141/1000000 | 614801/1000000 |
| r | 87613/125000 | 1 | 87613/125000 | 1 |
| w | 841977/1000000 | 1 | 841977/1000000 | 1 |
| j | 137827/250000 | 35711/40000 | 137827/250000 | 35711/40000 |
| k | 22131/40000 | 35711/40000 | 22131/40000 | 35711/40000 |

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
| 0 | bound | `{"direction":"lo","ref":"439:1567","triangle":"PQR","value":"123981/1000000"}` | `-1 * u * w + 1 * q * u + 1 * p * w + 1 * v * r + -1 * p * v + -1 * q * r + -123981/1000000` |
| 1 | physical | `{"factor":10,"stage":439}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 2 | physical | `{"factor":110,"stage":439}` | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -93/1000` |
| 3 | physical | `{"factor":118,"stage":439}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 4 | physical | `{"factor":121,"stage":439}` | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 5 | physical | `{"factor":123,"stage":439}` | `1/1 * p * v + -1/1 * p + -1/1 * f * v + -1/1 * q * u + 1/1 * f * q + 1/1 * u + -93/1000` |
| 6 | physical | `{"factor":28,"stage":439}` | `1/1 * q + -1/1 * a + -1/1 * e * p + 1/1 * a * p + -93/1000` |
| 7 | physical | `{"factor":65,"stage":439}` | `1/1 * w + -1/1 * b * w + -1/1 * e * r + 1/1 * b * e + -13857/20000` |
| 8 | physical | `{"factor":78,"stage":439}` | `1/1 * p * k + -1/1 * b * k + -1/1 * q * j + 1/1 * b * q + -93/1000` |
| 9 | physical | `{"factor":81,"stage":439}` | `-1/1 * r * k + 1/1 * b * k + 1/1 * w * j + -1/1 * b * w + -93/1000` |
| 10 | physical | `{"factor":91,"stage":439}` | `1/1 * f * v + -1/1 * c * v + -1/1 * u + 1/1 * c + -93/1000` |
| 11 | physical | `{"factor":95,"stage":439}` | `1/1 * c * v + 1/1 * h * u + -1/1 * c * h + -93/1000` |
| 12 | coordinate | `{"box":1060,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 13 | coordinate | `{"box":1060,"direction":"hi","value":"16691/62500","variable":"b"}` | `16691/62500 + -1 * b` |
| 14 | coordinate | `{"box":1060,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 15 | coordinate | `{"box":1060,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 16 | coordinate | `{"box":1060,"direction":"hi","value":"35711/40000","variable":"j"}` | `35711/40000 + -1 * j` |
| 17 | coordinate | `{"box":1060,"direction":"hi","value":"35711/40000","variable":"k"}` | `35711/40000 + -1 * k` |
| 18 | coordinate | `{"box":1060,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 19 | coordinate | `{"box":1060,"direction":"hi","value":"27307/62500","variable":"e"}` | `27307/62500 + -1 * e` |
| 20 | coordinate | `{"box":1060,"direction":"hi","value":"237543/500000","variable":"f"}` | `237543/500000 + -1 * f` |
| 21 | coordinate | `{"box":1060,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 22 | coordinate | `{"box":1060,"direction":"hi","value":"498273/1000000","variable":"p"}` | `498273/1000000 + -1 * p` |
| 23 | coordinate | `{"box":1060,"direction":"hi","value":"172217/500000","variable":"q"}` | `172217/500000 + -1 * q` |
| 24 | coordinate | `{"box":1060,"direction":"hi","value":"260293/500000","variable":"u"}` | `260293/500000 + -1 * u` |
| 25 | coordinate | `{"box":1060,"direction":"hi","value":"614801/1000000","variable":"v"}` | `614801/1000000 + -1 * v` |
| 26 | coordinate | `{"box":1060,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 27 | coordinate | `{"box":1060,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 28 | coordinate | `{"box":1060,"direction":"lo","value":"87613/125000","variable":"r"}` | `-87613/125000 + 1 * r` |
| 29 | coordinate | `{"box":1060,"direction":"lo","value":"841977/1000000","variable":"w"}` | `-841977/1000000 + 1 * w` |
| 30 | coordinate | `{"box":1060,"direction":"lo","value":"137827/250000","variable":"j"}` | `-137827/250000 + 1 * j` |
| 31 | coordinate | `{"box":1060,"direction":"lo","value":"22131/40000","variable":"k"}` | `-22131/40000 + 1 * k` |
| 32 | coordinate | `{"box":1060,"direction":"lo","value":"796617/1000000","variable":"c"}` | `-796617/1000000 + 1 * c` |
| 33 | coordinate | `{"box":1060,"direction":"lo","value":"132669/1000000","variable":"e"}` | `-132669/1000000 + 1 * e` |
| 34 | coordinate | `{"box":1060,"direction":"lo","value":"132669/1000000","variable":"f"}` | `-132669/1000000 + 1 * f` |
| 35 | coordinate | `{"box":1060,"direction":"lo","value":"796617/1000000","variable":"h"}` | `-796617/1000000 + 1 * h` |
| 36 | coordinate | `{"box":1060,"direction":"lo","value":"62027/200000","variable":"p"}` | `-62027/200000 + 1 * p` |
| 37 | coordinate | `{"box":1060,"direction":"lo","value":"102791/500000","variable":"q"}` | `-102791/500000 + 1 * q` |
| 38 | coordinate | `{"box":1060,"direction":"lo","value":"391141/1000000","variable":"v"}` | `-391141/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 46790000000 | 1 |
| 1 | 36790000000 | 6 |
| 2 | 2179000000 | 7 |
| 3 | 28681000000 | 8 |
| 4 | 12625000000 | 9 |
| 5 | 22026000000 | 10 |
| 6 | 46666000000 | 11 |
| 7 | 36546000000 | 2 |
| 8 | 3166000000 | 3 |
| 9 | 5349000000 | 4 |
| 10 | 41056000000 | 5 |
| 11 | 27150000000 | 0 |
| 12 | 46790000000 | 26, 27 |
| 13 | 2179000000 | 19, 27 |
| 14 | 75470000000 | 23, 27 |
| 15 | 83580000000 | 22, 26 |
| 16 | 10098000000 | 27, 29 |
| 17 | 4706000000 | 13, 15 |
| 18 | 16056000000 | 27, 31 |
| 19 | 46666000000 | 32, 35 |
| 20 | 24639000000 | 25, 32 |
| 21 | 36790000000 | 19, 22 |
| 22 | 36546000000 | 24, 33 |
| 23 | 5345000000 | 28, 33 |
| 24 | 3166000000 | 16, 33 |
| 25 | 5349000000 | 21, 34 |
| 26 | 23472000000 | 23, 34 |
| 27 | 17584000000 | 20, 37 |
| 28 | 19030000000 | 20, 25 |
| 29 | 5349000000 | 15, 20 |
| 30 | 10120000000 | 24, 35 |
| 31 | 5349000000 | 14, 21 |
| 32 | 13906000000 | 22, 38 |
| 33 | 13906000000 | 23, 24 |
| 34 | 27150000000 | 15, 36 |
| 35 | 13056000000 | 28, 37 |
| 36 | 14094000000 | 14, 23 |
| 37 | 28681000000 | 22, 31 |
| 38 | 28681000000 | 16, 23 |
| 39 | 9458000000 | 14, 17 |
| 40 | 9459000000 | 15, 30 |
| 41 | 27150000000 | 15, 24 |
| 42 | 27150000000 | 25, 28 |
| 43 | 1000000 | 13, 37 |
| 44 | 205582 | 13 |
| 45 | 267056 | 23 |
| 46 | 736833 | 37 |
| 47 | 399410 | 12 |
| 48 | 313302 | 29 |
| 49 | 1000000 | 28, 31 |
| 50 | 553275 | 28 |
| 51 | 700904 | 31 |
| 52 | 551308 | 15 |
| 53 | 1000000 | 16 |
| 54 | 1000000 | 18, 38 |
| 55 | 391141 | 18 |
| 56 | 1000000 | 25 |
| 57 | 586110 | 24 |
| 58 | 847083 | 32 |
| 59 | 512379 | 38 |
| 60 | 47879 | 21 |
| 61 | 884961 | 17 |
| 62 | 334007 | 14 |
| 63 | 540401 | 22 |
| 64 | 459848 | 27 |
| 65 | 174349 | 19 |
| 66 | 681500 | 30 |
| 67 | 154294 | 34 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -85714852375203/100000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -85714852375203/100000 | 1 | -85714852375203/100000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1060 | -85714852375203/100000 |

## Stage 1061

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ+/QRS-/EHQ+/BQR-/BPS+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ+/QRS-/EHQ+/BQR-/BPS+:HLLHLLH |
| Index | 0 |
| Context | 225 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1059 |
| Coordinate cut | q high 172217/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 16691/62500 | 103767/1000000 | 16691/62500 |
| c | 796617/1000000 | 1 | 796617/1000000 | 1 |
| e | 132669/1000000 | 27307/62500 | 132669/1000000 | 27307/62500 |
| f | 132669/1000000 | 237543/500000 | 132669/1000000 | 237543/500000 |
| h | 796617/1000000 | 1 | 796617/1000000 | 1 |
| p | 62027/200000 | 498273/1000000 | 62027/200000 | 498273/1000000 |
| q | 172217/500000 | 546367/1000000 | 172217/500000 | 546367/1000000 |
| u | 153479/500000 | 260293/500000 | 153479/500000 | 260293/500000 |
| v | 391141/1000000 | 614801/1000000 | 391141/1000000 | 614801/1000000 |
| r | 87613/125000 | 1 | 87613/125000 | 1 |
| w | 841977/1000000 | 1 | 841977/1000000 | 1 |
| j | 137827/250000 | 35711/40000 | 137827/250000 | 35711/40000 |
| k | 22131/40000 | 35711/40000 | 22131/40000 | 35711/40000 |

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
| 0 | bound | `{"direction":"lo","ref":"439:1567","triangle":"PQR","value":"123981/1000000"}` | `-1 * u * w + 1 * q * u + 1 * p * w + 1 * v * r + -1 * p * v + -1 * q * r + -123981/1000000` |
| 1 | physical | `{"factor":110,"stage":439}` | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -93/1000` |
| 2 | physical | `{"factor":118,"stage":439}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 3 | physical | `{"factor":121,"stage":439}` | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 4 | physical | `{"factor":123,"stage":439}` | `1/1 * p * v + -1/1 * p + -1/1 * f * v + -1/1 * q * u + 1/1 * f * q + 1/1 * u + -93/1000` |
| 5 | physical | `{"factor":136,"stage":439}` | `-1/1 * u * k + 1/1 * q * u + 1/1 * p * k + 1/1 * v * j + -1/1 * p * v + -1/1 * q * j + -93/1000` |
| 6 | physical | `{"factor":137,"stage":439}` | `-1/1 * r * k + 1/1 * v * r + 1/1 * u * k + 1/1 * w * j + -1/1 * u * w + -1/1 * v * j + -93/1000` |
| 7 | physical | `{"factor":143,"stage":439}` | `1/1 * f + -1/1 * e` |
| 8 | physical | `{"factor":78,"stage":439}` | `1/1 * p * k + -1/1 * b * k + -1/1 * q * j + 1/1 * b * q + -93/1000` |
| 9 | physical | `{"factor":81,"stage":439}` | `-1/1 * r * k + 1/1 * b * k + 1/1 * w * j + -1/1 * b * w + -93/1000` |
| 10 | physical | `{"factor":88,"stage":439}` | `1/1 * k + -1/1 * c * k + -1/1 * e * j + 1/1 * c * e + -93/1000` |
| 11 | physical | `{"factor":90,"stage":439}` | `1/1 * f * q + -1/1 * c * q + -1/1 * p + 1/1 * c + -279/1000` |
| 12 | physical | `{"factor":91,"stage":439}` | `1/1 * f * v + -1/1 * c * v + -1/1 * u + 1/1 * c + -93/1000` |
| 13 | physical | `{"factor":95,"stage":439}` | `1/1 * c * v + 1/1 * h * u + -1/1 * c * h + -93/1000` |
| 14 | coordinate | `{"box":1061,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 15 | coordinate | `{"box":1061,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 16 | coordinate | `{"box":1061,"direction":"hi","value":"35711/40000","variable":"k"}` | `35711/40000 + -1 * k` |
| 17 | coordinate | `{"box":1061,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 18 | coordinate | `{"box":1061,"direction":"hi","value":"27307/62500","variable":"e"}` | `27307/62500 + -1 * e` |
| 19 | coordinate | `{"box":1061,"direction":"hi","value":"237543/500000","variable":"f"}` | `237543/500000 + -1 * f` |
| 20 | coordinate | `{"box":1061,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 21 | coordinate | `{"box":1061,"direction":"hi","value":"498273/1000000","variable":"p"}` | `498273/1000000 + -1 * p` |
| 22 | coordinate | `{"box":1061,"direction":"hi","value":"546367/1000000","variable":"q"}` | `546367/1000000 + -1 * q` |
| 23 | coordinate | `{"box":1061,"direction":"hi","value":"260293/500000","variable":"u"}` | `260293/500000 + -1 * u` |
| 24 | coordinate | `{"box":1061,"direction":"hi","value":"614801/1000000","variable":"v"}` | `614801/1000000 + -1 * v` |
| 25 | coordinate | `{"box":1061,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 26 | coordinate | `{"box":1061,"direction":"lo","value":"87613/125000","variable":"r"}` | `-87613/125000 + 1 * r` |
| 27 | coordinate | `{"box":1061,"direction":"lo","value":"841977/1000000","variable":"w"}` | `-841977/1000000 + 1 * w` |
| 28 | coordinate | `{"box":1061,"direction":"lo","value":"137827/250000","variable":"j"}` | `-137827/250000 + 1 * j` |
| 29 | coordinate | `{"box":1061,"direction":"lo","value":"22131/40000","variable":"k"}` | `-22131/40000 + 1 * k` |
| 30 | coordinate | `{"box":1061,"direction":"lo","value":"796617/1000000","variable":"c"}` | `-796617/1000000 + 1 * c` |
| 31 | coordinate | `{"box":1061,"direction":"lo","value":"132669/1000000","variable":"e"}` | `-132669/1000000 + 1 * e` |
| 32 | coordinate | `{"box":1061,"direction":"lo","value":"132669/1000000","variable":"f"}` | `-132669/1000000 + 1 * f` |
| 33 | coordinate | `{"box":1061,"direction":"lo","value":"796617/1000000","variable":"h"}` | `-796617/1000000 + 1 * h` |
| 34 | coordinate | `{"box":1061,"direction":"lo","value":"62027/200000","variable":"p"}` | `-62027/200000 + 1 * p` |
| 35 | coordinate | `{"box":1061,"direction":"lo","value":"172217/500000","variable":"q"}` | `-172217/500000 + 1 * q` |
| 36 | coordinate | `{"box":1061,"direction":"lo","value":"153479/500000","variable":"u"}` | `-153479/500000 + 1 * u` |
| 37 | coordinate | `{"box":1061,"direction":"lo","value":"391141/1000000","variable":"v"}` | `-391141/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 43821000000 | 8 |
| 1 | 19288000000 | 9 |
| 2 | 4196000000 | 10 |
| 3 | 4865000000 | 11 |
| 4 | 16532000000 | 12 |
| 5 | 16532000000 | 13 |
| 6 | 21293000000 | 1 |
| 7 | 4196000000 | 2 |
| 8 | 2632000000 | 3 |
| 9 | 84792000000 | 4 |
| 10 | 56618000000 | 0 |
| 11 | 2000000 | 5 |
| 12 | 2000000 | 6 |
| 13 | 11085000000 | 7 |
| 14 | 43821000000 | 22, 25 |
| 15 | 19288000000 | 25, 27 |
| 16 | 24533000000 | 25, 29 |
| 17 | 4196000000 | 17, 31 |
| 18 | 16532000000 | 17, 20 |
| 19 | 4865000000 | 30, 35 |
| 20 | 4196000000 | 16, 17 |
| 21 | 21293000000 | 23, 31 |
| 22 | 4196000000 | 14, 18 |
| 23 | 2632000000 | 20, 32 |
| 24 | 89657000000 | 19, 35 |
| 25 | 68259000000 | 19, 24 |
| 26 | 2632000000 | 15, 19 |
| 27 | 4761000000 | 20, 23 |
| 28 | 2632000000 | 14, 20 |
| 29 | 28172000000 | 21, 37 |
| 30 | 28172000000 | 35, 36 |
| 31 | 42529000000 | 15, 34 |
| 32 | 14089000000 | 21, 27 |
| 33 | 56618000000 | 26, 35 |
| 34 | 43823000000 | 21, 29 |
| 35 | 43823000000 | 28, 35 |
| 36 | 15094000000 | 14, 16 |
| 37 | 15094000000 | 15, 28 |
| 38 | 56620000000 | 15, 23 |
| 39 | 56620000000 | 24, 26 |
| 40 | 101868 | 16 |
| 41 | 8530 | 21 |
| 42 | 76186 | 30 |
| 43 | 1000000 | 32, 37 |
| 44 | 391141 | 32 |
| 45 | 132669 | 37 |
| 46 | 526369 | 23 |
| 47 | 636162 | 24 |
| 48 | 325138 | 33 |
| 49 | 120904 | 27 |
| 50 | 39806 | 14 |
| 51 | 217679 | 19 |
| 52 | 162302 | 31 |
| 53 | 29224956428 | 35 |
| 54 | 5871199644 | 25 |
| 55 | 131182 | 28 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -7053964290605579/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -7053964290605579/1000000 | 1 | -7053964290605579/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1061 | -7053964290605579/1000000 |

## Stage 1062

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ+/QRS-/EHQ+/BQR-/BPS+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ+/QRS-/EHQ+/BQR-/BPS+:HLLHLH |
| Index | 0 |
| Context | 225 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1058 |
| Coordinate cut | p high 498273/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 16691/62500 | 103767/1000000 | 16691/62500 |
| c | 796617/1000000 | 1 | 796617/1000000 | 1 |
| e | 132669/1000000 | 27307/62500 | 132669/1000000 | 27307/62500 |
| f | 132669/1000000 | 237543/500000 | 132669/1000000 | 237543/500000 |
| h | 796617/1000000 | 1 | 796617/1000000 | 1 |
| p | 498273/1000000 | 161193/250000 | 498273/1000000 | 161193/250000 |
| q | 102791/500000 | 546367/1000000 | 102791/500000 | 546367/1000000 |
| u | 153479/500000 | 260293/500000 | 153479/500000 | 260293/500000 |
| v | 391141/1000000 | 614801/1000000 | 391141/1000000 | 614801/1000000 |
| r | 87613/125000 | 1 | 87613/125000 | 1 |
| w | 841977/1000000 | 1 | 841977/1000000 | 1 |
| j | 137827/250000 | 35711/40000 | 137827/250000 | 35711/40000 |
| k | 22131/40000 | 35711/40000 | 22131/40000 | 35711/40000 |

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
| 0 | bound | `{"direction":"lo","ref":"439:1578","triangle":"EPQ","value":"23867/250000"}` | `-1 * p * v + 1 * e * p + 1 * v + 1 * q * u + -1 * q + -1 * e * u + -23867/250000` |
| 1 | physical | `{"factor":110,"stage":439}` | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -93/1000` |
| 2 | physical | `{"factor":123,"stage":439}` | `1/1 * p * v + -1/1 * p + -1/1 * f * v + -1/1 * q * u + 1/1 * f * q + 1/1 * u + -93/1000` |
| 3 | physical | `{"factor":143,"stage":439}` | `1/1 * f + -1/1 * e` |
| 4 | physical | `{"factor":65,"stage":439}` | `1/1 * w + -1/1 * b * w + -1/1 * e * r + 1/1 * b * e + -13857/20000` |
| 5 | physical | `{"factor":79,"stage":439}` | `-1/1 * u * w + 1/1 * b * w + 1/1 * v * r + -1/1 * b * v + -93/1000` |
| 6 | physical | `{"factor":91,"stage":439}` | `1/1 * f * v + -1/1 * c * v + -1/1 * u + 1/1 * c + -93/1000` |
| 7 | physical | `{"factor":95,"stage":439}` | `1/1 * c * v + 1/1 * h * u + -1/1 * c * h + -93/1000` |
| 8 | coordinate | `{"box":1062,"direction":"hi","value":"16691/62500","variable":"b"}` | `16691/62500 + -1 * b` |
| 9 | coordinate | `{"box":1062,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 10 | coordinate | `{"box":1062,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 11 | coordinate | `{"box":1062,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 12 | coordinate | `{"box":1062,"direction":"hi","value":"27307/62500","variable":"e"}` | `27307/62500 + -1 * e` |
| 13 | coordinate | `{"box":1062,"direction":"hi","value":"237543/500000","variable":"f"}` | `237543/500000 + -1 * f` |
| 14 | coordinate | `{"box":1062,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 15 | coordinate | `{"box":1062,"direction":"hi","value":"546367/1000000","variable":"q"}` | `546367/1000000 + -1 * q` |
| 16 | coordinate | `{"box":1062,"direction":"hi","value":"260293/500000","variable":"u"}` | `260293/500000 + -1 * u` |
| 17 | coordinate | `{"box":1062,"direction":"hi","value":"614801/1000000","variable":"v"}` | `614801/1000000 + -1 * v` |
| 18 | coordinate | `{"box":1062,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 19 | coordinate | `{"box":1062,"direction":"lo","value":"87613/125000","variable":"r"}` | `-87613/125000 + 1 * r` |
| 20 | coordinate | `{"box":1062,"direction":"lo","value":"132669/1000000","variable":"e"}` | `-132669/1000000 + 1 * e` |
| 21 | coordinate | `{"box":1062,"direction":"lo","value":"498273/1000000","variable":"p"}` | `-498273/1000000 + 1 * p` |
| 22 | coordinate | `{"box":1062,"direction":"lo","value":"102791/500000","variable":"q"}` | `-102791/500000 + 1 * q` |
| 23 | coordinate | `{"box":1062,"direction":"lo","value":"153479/500000","variable":"u"}` | `-153479/500000 + 1 * u` |
| 24 | coordinate | `{"box":1062,"direction":"lo","value":"391141/1000000","variable":"v"}` | `-391141/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 28947000000 | 4 |
| 1 | 26771000000 | 5 |
| 2 | 63720000000 | 6 |
| 3 | 63720000000 | 7 |
| 4 | 63720000000 | 1 |
| 5 | 19453000000 | 0 |
| 6 | 112335000000 | 2 |
| 7 | 6795000000 | 3 |
| 8 | 28947000000 | 12, 18 |
| 9 | 26771000000 | 18, 24 |
| 10 | 2176000000 | 8, 10 |
| 11 | 63720000000 | 11, 14 |
| 12 | 19453000000 | 12, 21 |
| 13 | 44267000000 | 16, 20 |
| 14 | 28947000000 | 9, 12 |
| 15 | 112335000000 | 13, 22 |
| 16 | 48615000000 | 13, 17 |
| 17 | 92883000000 | 17, 21 |
| 18 | 67581000000 | 22, 23 |
| 19 | 25301000000 | 15, 16 |
| 20 | 26771000000 | 10, 16 |
| 21 | 17041000000 | 9, 24 |
| 22 | 9730000000 | 17, 19 |
| 23 | 14429278338 | 10 |
| 24 | 700904 | 17 |
| 25 | 614801 | 9 |
| 26 | 209986 | 23 |
| 27 | 564445 | 24 |
| 28 | 1000000 | 21, 24 |
| 29 | 46731580722 | 21 |
| 30 | 89174 | 22 |
| 31 | 503355 | 13 |
| 32 | 571520 | 20 |
| 33 | 55953 | 8 |
| 34 | 458954 | 19 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -684683502034169/250000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -684683502034169/250000 | 1 | -684683502034169/250000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1062 | -684683502034169/250000 |

## Stage 1063

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ+/QRS-/EHQ+/BQR-/BPS+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ+/QRS-/EHQ+/BQR-/BPS+:HLLHH |
| Index | 0 |
| Context | 225 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1057 |
| Coordinate cut | v high 614801/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 16691/62500 | 103767/1000000 | 16691/62500 |
| c | 796617/1000000 | 1 | 796617/1000000 | 1 |
| e | 132669/1000000 | 27307/62500 | 132669/1000000 | 27307/62500 |
| f | 132669/1000000 | 237543/500000 | 132669/1000000 | 237543/500000 |
| h | 796617/1000000 | 1 | 796617/1000000 | 1 |
| p | 62027/200000 | 161193/250000 | 62027/200000 | 161193/250000 |
| q | 102791/500000 | 546367/1000000 | 102791/500000 | 546367/1000000 |
| u | 153479/500000 | 260293/500000 | 153479/500000 | 260293/500000 |
| v | 614801/1000000 | 743847/1000000 | 614801/1000000 | 743847/1000000 |
| r | 87613/125000 | 1 | 87613/125000 | 1 |
| w | 841977/1000000 | 1 | 841977/1000000 | 1 |
| j | 137827/250000 | 35711/40000 | 137827/250000 | 35711/40000 |
| k | 22131/40000 | 35711/40000 | 22131/40000 | 35711/40000 |

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
| 0 | physical | `{"factor":10,"stage":439}` | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 1 | physical | `{"factor":110,"stage":439}` | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -93/1000` |
| 2 | physical | `{"factor":118,"stage":439}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 3 | physical | `{"factor":121,"stage":439}` | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 4 | physical | `{"factor":123,"stage":439}` | `1/1 * p * v + -1/1 * p + -1/1 * f * v + -1/1 * q * u + 1/1 * f * q + 1/1 * u + -93/1000` |
| 5 | physical | `{"factor":143,"stage":439}` | `1/1 * f + -1/1 * e` |
| 6 | physical | `{"factor":28,"stage":439}` | `1/1 * q + -1/1 * a + -1/1 * e * p + 1/1 * a * p + -93/1000` |
| 7 | physical | `{"factor":65,"stage":439}` | `1/1 * w + -1/1 * b * w + -1/1 * e * r + 1/1 * b * e + -13857/20000` |
| 8 | physical | `{"factor":78,"stage":439}` | `1/1 * p * k + -1/1 * b * k + -1/1 * q * j + 1/1 * b * q + -93/1000` |
| 9 | physical | `{"factor":81,"stage":439}` | `-1/1 * r * k + 1/1 * b * k + 1/1 * w * j + -1/1 * b * w + -93/1000` |
| 10 | coordinate | `{"box":1063,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 11 | coordinate | `{"box":1063,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 12 | coordinate | `{"box":1063,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 13 | coordinate | `{"box":1063,"direction":"hi","value":"35711/40000","variable":"j"}` | `35711/40000 + -1 * j` |
| 14 | coordinate | `{"box":1063,"direction":"hi","value":"35711/40000","variable":"k"}` | `35711/40000 + -1 * k` |
| 15 | coordinate | `{"box":1063,"direction":"hi","value":"27307/62500","variable":"e"}` | `27307/62500 + -1 * e` |
| 16 | coordinate | `{"box":1063,"direction":"hi","value":"237543/500000","variable":"f"}` | `237543/500000 + -1 * f` |
| 17 | coordinate | `{"box":1063,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 18 | coordinate | `{"box":1063,"direction":"hi","value":"161193/250000","variable":"p"}` | `161193/250000 + -1 * p` |
| 19 | coordinate | `{"box":1063,"direction":"hi","value":"546367/1000000","variable":"q"}` | `546367/1000000 + -1 * q` |
| 20 | coordinate | `{"box":1063,"direction":"hi","value":"260293/500000","variable":"u"}` | `260293/500000 + -1 * u` |
| 21 | coordinate | `{"box":1063,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 22 | coordinate | `{"box":1063,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 23 | coordinate | `{"box":1063,"direction":"lo","value":"87613/125000","variable":"r"}` | `-87613/125000 + 1 * r` |
| 24 | coordinate | `{"box":1063,"direction":"lo","value":"841977/1000000","variable":"w"}` | `-841977/1000000 + 1 * w` |
| 25 | coordinate | `{"box":1063,"direction":"lo","value":"137827/250000","variable":"j"}` | `-137827/250000 + 1 * j` |
| 26 | coordinate | `{"box":1063,"direction":"lo","value":"22131/40000","variable":"k"}` | `-22131/40000 + 1 * k` |
| 27 | coordinate | `{"box":1063,"direction":"lo","value":"132669/1000000","variable":"e"}` | `-132669/1000000 + 1 * e` |
| 28 | coordinate | `{"box":1063,"direction":"lo","value":"132669/1000000","variable":"f"}` | `-132669/1000000 + 1 * f` |
| 29 | coordinate | `{"box":1063,"direction":"lo","value":"796617/1000000","variable":"h"}` | `-796617/1000000 + 1 * h` |
| 30 | coordinate | `{"box":1063,"direction":"lo","value":"62027/200000","variable":"p"}` | `-62027/200000 + 1 * p` |
| 31 | coordinate | `{"box":1063,"direction":"lo","value":"102791/500000","variable":"q"}` | `-102791/500000 + 1 * q` |
| 32 | coordinate | `{"box":1063,"direction":"lo","value":"153479/500000","variable":"u"}` | `-153479/500000 + 1 * u` |
| 33 | coordinate | `{"box":1063,"direction":"lo","value":"614801/1000000","variable":"v"}` | `-614801/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 2574000000 | 0 |
| 1 | 770000000 | 6 |
| 2 | 11471000000 | 7 |
| 3 | 24900000000 | 8 |
| 4 | 7329000000 | 9 |
| 5 | 84807000000 | 1 |
| 6 | 2548000000 | 2 |
| 7 | 54515000000 | 3 |
| 8 | 60112000000 | 4 |
| 9 | 19432000000 | 5 |
| 10 | 2574000000 | 21, 22 |
| 11 | 11471000000 | 15, 22 |
| 12 | 27474000000 | 19, 22 |
| 13 | 3344000000 | 10, 30 |
| 14 | 18800000000 | 22, 24 |
| 15 | 17571000000 | 22, 26 |
| 16 | 770000000 | 27, 30 |
| 17 | 84807000000 | 15, 32 |
| 18 | 14019000000 | 23, 27 |
| 19 | 2548000000 | 13, 27 |
| 20 | 54515000000 | 17, 28 |
| 21 | 60112000000 | 16, 31 |
| 22 | 60112000000 | 28, 33 |
| 23 | 32695000000 | 24, 28 |
| 24 | 21821000000 | 12, 16 |
| 25 | 84807000000 | 17, 20 |
| 26 | 22151000000 | 23, 29 |
| 27 | 32365000000 | 11, 17 |
| 28 | 60112000000 | 18, 33 |
| 29 | 60112000000 | 31, 32 |
| 30 | 24900000000 | 14, 30 |
| 31 | 24900000000 | 25, 31 |
| 32 | 4781000000 | 23, 26 |
| 33 | 4781000000 | 12, 25 |
| 34 | 164306 | 31 |
| 35 | 4818 | 21 |
| 36 | 480613 | 24 |
| 37 | 54023464464 | 33 |
| 38 | 610871 | 29 |
| 39 | 49519 | 14 |
| 40 | 1000000 | 16, 24 |
| 41 | 841977 | 16 |
| 42 | 475086 | 12 |
| 43 | 1000000 | 17, 23 |
| 44 | 700904 | 17 |
| 45 | 1000000 | 11 |
| 46 | 957653 | 23 |
| 47 | 30318 | 30 |
| 48 | 250800 | 20 |
| 49 | 1410543 | 28 |
| 50 | 511937 | 15 |
| 51 | 5795154373 | 22 |
| 52 | 48812 | 13 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -4101139052337173/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -4101139052337173/1000000 | 1 | -4101139052337173/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1063 | -4101139052337173/1000000 |

## Stage 1064

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ+/QRS-/EHQ+/BQR-/BPS+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP-/BPQ+/BRS-/FPQ+/CFQ+/QRS-/EHQ+/BQR-/BPS+:HLH |
| Index | 0 |
| Context | 225 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1054 |
| Coordinate cut | f high 237543/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 16691/62500 | 103767/1000000 | 16691/62500 |
| c | 796617/1000000 | 1 | 796617/1000000 | 1 |
| e | 132669/1000000 | 27307/62500 | 132669/1000000 | 27307/62500 |
| f | 237543/500000 | 156507/250000 | 237543/500000 | 156507/250000 |
| h | 796617/1000000 | 1 | 796617/1000000 | 1 |
| p | 62027/200000 | 161193/250000 | 62027/200000 | 161193/250000 |
| q | 102791/500000 | 546367/1000000 | 102791/500000 | 546367/1000000 |
| u | 153479/500000 | 260293/500000 | 153479/500000 | 260293/500000 |
| v | 391141/1000000 | 743847/1000000 | 391141/1000000 | 743847/1000000 |
| r | 284739/500000 | 1 | 284739/500000 | 1 |
| w | 841977/1000000 | 1 | 841977/1000000 | 1 |
| j | 137827/250000 | 35711/40000 | 137827/250000 | 35711/40000 |
| k | 22131/40000 | 35711/40000 | 22131/40000 | 35711/40000 |

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
| 0 | bound | `{"direction":"lo","ref":"439:1442","triangle":"CEH","value":"62761/200000"}` | `1 * h + -1 * c * h + 1 * c * e + -62761/200000` |
| 1 | bound | `{"direction":"lo","ref":"439:1567","triangle":"PQR","value":"123981/1000000"}` | `-1 * u * w + 1 * q * u + 1 * p * w + 1 * v * r + -1 * p * v + -1 * q * r + -123981/1000000` |
| 2 | bound | `{"direction":"lo","ref":"439:298","triangle":"BCP","value":"19439/125000"}` | `1 * c * q + -1 * b * q + -19439/125000` |
| 3 | physical | `{"factor":110,"stage":439}` | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -93/1000` |
| 4 | physical | `{"factor":121,"stage":439}` | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 5 | physical | `{"factor":123,"stage":439}` | `1/1 * p * v + -1/1 * p + -1/1 * f * v + -1/1 * q * u + 1/1 * f * q + 1/1 * u + -93/1000` |
| 6 | physical | `{"factor":65,"stage":439}` | `1/1 * w + -1/1 * b * w + -1/1 * e * r + 1/1 * b * e + -13857/20000` |
| 7 | physical | `{"factor":78,"stage":439}` | `1/1 * p * k + -1/1 * b * k + -1/1 * q * j + 1/1 * b * q + -93/1000` |
| 8 | physical | `{"factor":81,"stage":439}` | `-1/1 * r * k + 1/1 * b * k + 1/1 * w * j + -1/1 * b * w + -93/1000` |
| 9 | coordinate | `{"box":1064,"direction":"hi","value":"16691/62500","variable":"b"}` | `16691/62500 + -1 * b` |
| 10 | coordinate | `{"box":1064,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 11 | coordinate | `{"box":1064,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 12 | coordinate | `{"box":1064,"direction":"hi","value":"35711/40000","variable":"j"}` | `35711/40000 + -1 * j` |
| 13 | coordinate | `{"box":1064,"direction":"hi","value":"35711/40000","variable":"k"}` | `35711/40000 + -1 * k` |
| 14 | coordinate | `{"box":1064,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 15 | coordinate | `{"box":1064,"direction":"hi","value":"27307/62500","variable":"e"}` | `27307/62500 + -1 * e` |
| 16 | coordinate | `{"box":1064,"direction":"hi","value":"156507/250000","variable":"f"}` | `156507/250000 + -1 * f` |
| 17 | coordinate | `{"box":1064,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 18 | coordinate | `{"box":1064,"direction":"hi","value":"161193/250000","variable":"p"}` | `161193/250000 + -1 * p` |
| 19 | coordinate | `{"box":1064,"direction":"hi","value":"546367/1000000","variable":"q"}` | `546367/1000000 + -1 * q` |
| 20 | coordinate | `{"box":1064,"direction":"hi","value":"260293/500000","variable":"u"}` | `260293/500000 + -1 * u` |
| 21 | coordinate | `{"box":1064,"direction":"hi","value":"743847/1000000","variable":"v"}` | `743847/1000000 + -1 * v` |
| 22 | coordinate | `{"box":1064,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 23 | coordinate | `{"box":1064,"direction":"lo","value":"284739/500000","variable":"r"}` | `-284739/500000 + 1 * r` |
| 24 | coordinate | `{"box":1064,"direction":"lo","value":"841977/1000000","variable":"w"}` | `-841977/1000000 + 1 * w` |
| 25 | coordinate | `{"box":1064,"direction":"lo","value":"137827/250000","variable":"j"}` | `-137827/250000 + 1 * j` |
| 26 | coordinate | `{"box":1064,"direction":"lo","value":"22131/40000","variable":"k"}` | `-22131/40000 + 1 * k` |
| 27 | coordinate | `{"box":1064,"direction":"lo","value":"796617/1000000","variable":"c"}` | `-796617/1000000 + 1 * c` |
| 28 | coordinate | `{"box":1064,"direction":"lo","value":"132669/1000000","variable":"e"}` | `-132669/1000000 + 1 * e` |
| 29 | coordinate | `{"box":1064,"direction":"lo","value":"237543/500000","variable":"f"}` | `-237543/500000 + 1 * f` |
| 30 | coordinate | `{"box":1064,"direction":"lo","value":"796617/1000000","variable":"h"}` | `-796617/1000000 + 1 * h` |
| 31 | coordinate | `{"box":1064,"direction":"lo","value":"62027/200000","variable":"p"}` | `-62027/200000 + 1 * p` |
| 32 | coordinate | `{"box":1064,"direction":"lo","value":"102791/500000","variable":"q"}` | `-102791/500000 + 1 * q` |
| 33 | coordinate | `{"box":1064,"direction":"lo","value":"153479/500000","variable":"u"}` | `-153479/500000 + 1 * u` |
| 34 | coordinate | `{"box":1064,"direction":"lo","value":"391141/1000000","variable":"v"}` | `-391141/1000000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 528000000 | 2 |
| 1 | 16887000000 | 6 |
| 2 | 13133000000 | 7 |
| 3 | 3207000000 | 8 |
| 4 | 164000000 | 0 |
| 5 | 28759000000 | 3 |
| 6 | 26329000000 | 4 |
| 7 | 96053000000 | 5 |
| 8 | 64654000000 | 1 |
| 9 | 16887000000 | 15, 22 |
| 10 | 12605000000 | 19, 22 |
| 11 | 20094000000 | 22, 24 |
| 12 | 9927000000 | 22, 26 |
| 13 | 164000000 | 14, 28 |
| 14 | 164000000 | 27, 30 |
| 15 | 528000000 | 14, 32 |
| 16 | 28759000000 | 20, 28 |
| 17 | 16887000000 | 10, 15 |
| 18 | 26329000000 | 17, 29 |
| 19 | 40092000000 | 19, 29 |
| 20 | 55961000000 | 16, 32 |
| 21 | 96053000000 | 29, 34 |
| 22 | 26329000000 | 24, 29 |
| 23 | 28759000000 | 17, 20 |
| 24 | 26329000000 | 10, 17 |
| 25 | 31398000000 | 21, 31 |
| 26 | 31399000000 | 32, 33 |
| 27 | 42402000000 | 11, 31 |
| 28 | 22252000000 | 18, 24 |
| 29 | 59501000000 | 23, 32 |
| 30 | 5153000000 | 10, 19 |
| 31 | 12644000000 | 13, 31 |
| 32 | 489000000 | 18, 26 |
| 33 | 13133000000 | 25, 32 |
| 34 | 3207000000 | 10, 13 |
| 35 | 3207000000 | 12, 24 |
| 36 | 64654000000 | 11, 20 |
| 37 | 64654000000 | 10, 34 |
| 38 | 181561 | 11 |
| 39 | 8145957784 | 22 |
| 40 | 1003841958 | 24 |
| 41 | 1000000 | 9, 26 |
| 42 | 553275 | 9 |
| 43 | 267056 | 13 |
| 44 | 361332 | 17 |
| 45 | 816828 | 34 |
| 46 | 195888 | 23 |
| 47 | 1000000 | 18, 34 |
| 48 | 391141 | 18 |
| 49 | 644772 | 21 |
| 50 | 1221115 | 31 |
| 51 | 354857 | 32 |
| 52 | 205582 | 33 |
| 53 | 205582 | 16 |
| 54 | 626028 | 19 |
| 55 | 564135 | 20 |
| 56 | 846103 | 15 |
| 57 | 454561 | 26 |
| 58 | 340176 | 27 |
| 59 | 364422 | 29 |
| 60 | 311833 | 12 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -677002511323613/125000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -677002511323613/125000 | 1 | -677002511323613/125000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1064 | -677002511323613/125000 |
