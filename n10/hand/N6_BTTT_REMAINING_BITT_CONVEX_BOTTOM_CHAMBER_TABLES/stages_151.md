# BITT convex: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 755

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS-/BFP+/PQR+/AFP-/AQR+/EPQ- |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS-/BFP+/PQR+/AFP-/AQR+/EPQ-:HHLLH |
| Index | 0 |
| Context | 72 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 747 |
| Coordinate cut | p high 326553/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 54347/500000 | 6143/20000 | 54347/500000 | 6143/20000 |
| b | 72197/500000 | 15761/31250 | 72197/500000 | 15761/31250 |
| c | 70629/100000 | 1 | 70629/100000 | 1 |
| e | 54347/500000 | 391/1000 | 54347/500000 | 391/1000 |
| f | 279/1000 | 116527/200000 | 279/1000 | 116527/200000 |
| h | 100193/125000 | 1 | 100193/125000 | 1 |
| p | 326553/1000000 | 460921/1000000 | 326553/1000000 | 460921/1000000 |
| q | 285061/1000000 | 158027/250000 | 285061/1000000 | 158027/250000 |
| u | 181319/500000 | 122283/200000 | 181319/500000 | 122283/200000 |
| v | 135199/500000 | 137873/250000 | 135199/500000 | 137873/250000 |
| r | 8943/12500 | 1 | 8943/12500 | 1 |
| w | 586153/1000000 | 26361/31250 | 586153/1000000 | 26361/31250 |
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
| 0 | bound | `{"direction":"lo","ref":"97:3714","triangle":"CEH","value":"3783/12500"}` | `1 * h + -1 * c * h + 1 * c * e + -3783/12500` |
| 1 | bound | `{"direction":"lo","ref":"97:4132","triangle":"QRS","value":"51293/500000"}` | `1 * r * k + -1 * v * r + -1 * u * k + -1 * w * j + 1 * u * w + 1 * v * j + -51293/500000` |
| 2 | bound | `{"direction":"lo","ref":"97:4358","triangle":"PQS","value":"136927/1000000"}` | `1 * u * k + -1 * q * u + -1 * p * k + -1 * v * j + 1 * p * v + 1 * q * j + -136927/1000000` |
| 3 | physical | `{"factor":0,"stage":97}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 4 | physical | `{"factor":111,"stage":97}` | `-1/1 * q + -1/1 * h * p + 1/1 * h + 1/1 * e * p + -279/1000` |
| 5 | physical | `{"factor":112,"stage":97}` | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -93/1000` |
| 6 | physical | `{"factor":115,"stage":97}` | `-1/1 * p * v + 1/1 * e * p + 1/1 * v + 1/1 * q * u + -1/1 * q + -1/1 * e * u + -93/1000` |
| 7 | physical | `{"factor":120,"stage":97}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 8 | physical | `{"factor":124,"stage":97}` | `-1/1 * f * k + -1/1 * h * j + 1/1 * f * h + 1/1 * j + -93/1000` |
| 9 | physical | `{"factor":130,"stage":97}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 10 | physical | `{"factor":147,"stage":97}` | `76277533/62500000 + 2/1 * a * b + -1/1 * b * h + -1/1 * a * c + -2/1 * c * e + 1/1 * b * e + -2/1 * w + 1/1 * c * w + 2/1 * e * r + -2/1 * r * k + 1/1 * k + 2/1 * w * j + -1/1 * e * j + -2/1 * j + 1/1 * r + 2/1 * f * k + -1/1 * f * w + -2/1 * f * h + 1/1 * h * j + 1/1 * a * f` |
| 11 | physical | `{"factor":46,"stage":97}` | `-1/1 * p * k + 1/1 * a * p + 1/1 * q * j + -1/1 * a * j + -93/1000` |
| 12 | physical | `{"factor":47,"stage":97}` | `1/1 * u * w + -1/1 * a * u + -1/1 * v * r + 1/1 * a * r + -93/1000` |
| 13 | physical | `{"factor":81,"stage":97}` | `-1/1 * u * k + 1/1 * b * k + 1/1 * v * j + -1/1 * b * v + -93/1000` |
| 14 | physical | `{"factor":88,"stage":97}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 15 | physical | `{"factor":96,"stage":97}` | `1/1 * c * v + 1/1 * h * u + -1/1 * c * h + -93/1000` |
| 16 | coordinate | `{"box":755,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 17 | coordinate | `{"box":755,"direction":"hi","value":"15761/31250","variable":"b"}` | `15761/31250 + -1 * b` |
| 18 | coordinate | `{"box":755,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 19 | coordinate | `{"box":755,"direction":"hi","value":"26361/31250","variable":"w"}` | `26361/31250 + -1 * w` |
| 20 | coordinate | `{"box":755,"direction":"hi","value":"174689/200000","variable":"j"}` | `174689/200000 + -1 * j` |
| 21 | coordinate | `{"box":755,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 22 | coordinate | `{"box":755,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 23 | coordinate | `{"box":755,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 24 | coordinate | `{"box":755,"direction":"hi","value":"116527/200000","variable":"f"}` | `116527/200000 + -1 * f` |
| 25 | coordinate | `{"box":755,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 26 | coordinate | `{"box":755,"direction":"hi","value":"460921/1000000","variable":"p"}` | `460921/1000000 + -1 * p` |
| 27 | coordinate | `{"box":755,"direction":"hi","value":"158027/250000","variable":"q"}` | `158027/250000 + -1 * q` |
| 28 | coordinate | `{"box":755,"direction":"hi","value":"122283/200000","variable":"u"}` | `122283/200000 + -1 * u` |
| 29 | coordinate | `{"box":755,"direction":"hi","value":"137873/250000","variable":"v"}` | `137873/250000 + -1 * v` |
| 30 | coordinate | `{"box":755,"direction":"lo","value":"54347/500000","variable":"a"}` | `-54347/500000 + 1 * a` |
| 31 | coordinate | `{"box":755,"direction":"lo","value":"72197/500000","variable":"b"}` | `-72197/500000 + 1 * b` |
| 32 | coordinate | `{"box":755,"direction":"lo","value":"8943/12500","variable":"r"}` | `-8943/12500 + 1 * r` |
| 33 | coordinate | `{"box":755,"direction":"lo","value":"586153/1000000","variable":"w"}` | `-586153/1000000 + 1 * w` |
| 34 | coordinate | `{"box":755,"direction":"lo","value":"13857/20000","variable":"j"}` | `-13857/20000 + 1 * j` |
| 35 | coordinate | `{"box":755,"direction":"lo","value":"687973/1000000","variable":"k"}` | `-687973/1000000 + 1 * k` |
| 36 | coordinate | `{"box":755,"direction":"lo","value":"70629/100000","variable":"c"}` | `-70629/100000 + 1 * c` |
| 37 | coordinate | `{"box":755,"direction":"lo","value":"54347/500000","variable":"e"}` | `-54347/500000 + 1 * e` |
| 38 | coordinate | `{"box":755,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 39 | coordinate | `{"box":755,"direction":"lo","value":"100193/125000","variable":"h"}` | `-100193/125000 + 1 * h` |
| 40 | coordinate | `{"box":755,"direction":"lo","value":"326553/1000000","variable":"p"}` | `-326553/1000000 + 1 * p` |
| 41 | coordinate | `{"box":755,"direction":"lo","value":"285061/1000000","variable":"q"}` | `-285061/1000000 + 1 * q` |
| 42 | coordinate | `{"box":755,"direction":"lo","value":"181319/500000","variable":"u"}` | `-181319/500000 + 1 * u` |
| 43 | coordinate | `{"box":755,"direction":"lo","value":"135199/500000","variable":"v"}` | `-135199/500000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 17765000000 | 3 |
| 1 | 43976000000 | 11 |
| 2 | 1666000000 | 12 |
| 3 | 20019000000 | 13 |
| 4 | 1189000000 | 0 |
| 5 | 1189000000 | 14 |
| 6 | 1366000000 | 15 |
| 7 | 29711000000 | 4 |
| 8 | 15180000000 | 5 |
| 9 | 68746000000 | 6 |
| 10 | 1189000000 | 7 |
| 11 | 8538000000 | 8 |
| 12 | 1189000000 | 9 |
| 13 | 68746000000 | 2 |
| 14 | 1644000000 | 1 |
| 15 | 1189000000 | 10 |
| 16 | 15387000000 | 30, 31 |
| 17 | 16576000000 | 22, 30 |
| 18 | 1189000000 | 17, 37 |
| 19 | 1189000000 | 24, 30 |
| 20 | 1189000000 | 17, 25 |
| 21 | 43976000000 | 16, 40 |
| 22 | 20019000000 | 17, 29 |
| 23 | 1666000000 | 30, 42 |
| 24 | 1666000000 | 18, 30 |
| 25 | 20019000000 | 17, 35 |
| 26 | 43976000000 | 30, 34 |
| 27 | 2555000000 | 22, 25 |
| 28 | 1366000000 | 29, 36 |
| 29 | 98457000000 | 23, 40 |
| 30 | 53566000000 | 23, 28 |
| 31 | 6160000000 | 25, 38 |
| 32 | 3397000000 | 35, 38 |
| 33 | 3952000000 | 21, 24 |
| 34 | 29711000000 | 39, 40 |
| 35 | 13814000000 | 25, 28 |
| 36 | 7349000000 | 20, 25 |
| 37 | 112723000000 | 35, 40 |
| 38 | 112723000000 | 20, 41 |
| 39 | 2362000000 | 19, 42 |
| 40 | 948000000 | 28, 33 |
| 41 | 3310000000 | 18, 29 |
| 42 | 47083000000 | 28, 35 |
| 43 | 47083000000 | 20, 29 |
| 44 | 1644000000 | 21, 32 |
| 45 | 1644000000 | 19, 20 |
| 46 | 1000000 | 26, 35 |
| 47 | 687973 | 26 |
| 48 | 460921 | 21 |
| 49 | 1000000 | 34, 41 |
| 50 | 692850 | 41 |
| 51 | 285061 | 34 |
| 52 | 20076715174 | 25 |
| 53 | 228796 | 19 |
| 54 | 340735 | 27 |
| 55 | 241483 | 43 |
| 56 | 311846 | 35 |
| 57 | 687973 | 38 |
| 58 | 306435 | 20 |
| 59 | 354316 | 32 |
| 60 | 530757 | 16 |
| 61 | 24273 | 31 |
| 62 | 49816 | 22 |
| 63 | 47359 | 23 |
| 64 | 880858 | 24 |
| 65 | 49361138863 | 40 |
| 66 | 585423 | 28 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -125293628846551/20000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -125293628846551/20000 | 1 | -125293628846551/20000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 755 | -125293628846551/20000 |

## Stage 756

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS-/BFP+/PQR+/AFP-/AQR+/EPQ- |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS-/BFP+/PQR+/AFP-/AQR+/EPQ-:HHLH |
| Index | 0 |
| Context | 72 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 746 |
| Coordinate cut | u high 122283/200000 |

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
| u | 122283/200000 | 372137/500000 | 122283/200000 | 372137/500000 |
| v | 135199/500000 | 137873/250000 | 135199/500000 | 137873/250000 |
| r | 8943/12500 | 1 | 8943/12500 | 1 |
| w | 586153/1000000 | 26361/31250 | 586153/1000000 | 26361/31250 |
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
| 0 | bound | `{"direction":"lo","ref":"97:3744","triangle":"HRS","value":"56881/500000"}` | `1 * r * k + -1 * h * r + -1 * w * j + 1 * h * j + -56881/500000` |
| 1 | bound | `{"direction":"lo","ref":"97:4358","triangle":"PQS","value":"136927/1000000"}` | `1 * u * k + -1 * q * u + -1 * p * k + -1 * v * j + 1 * p * v + 1 * q * j + -136927/1000000` |
| 2 | physical | `{"factor":112,"stage":97}` | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -93/1000` |
| 3 | physical | `{"factor":115,"stage":97}` | `-1/1 * p * v + 1/1 * e * p + 1/1 * v + 1/1 * q * u + -1/1 * q + -1/1 * e * u + -93/1000` |
| 4 | physical | `{"factor":120,"stage":97}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 5 | physical | `{"factor":124,"stage":97}` | `-1/1 * f * k + -1/1 * h * j + 1/1 * f * h + 1/1 * j + -93/1000` |
| 6 | physical | `{"factor":130,"stage":97}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 7 | physical | `{"factor":144,"stage":97}` | `1/1 * f + -1/1 * b` |
| 8 | physical | `{"factor":46,"stage":97}` | `-1/1 * p * k + 1/1 * a * p + 1/1 * q * j + -1/1 * a * j + -93/1000` |
| 9 | physical | `{"factor":47,"stage":97}` | `1/1 * u * w + -1/1 * a * u + -1/1 * v * r + 1/1 * a * r + -93/1000` |
| 10 | physical | `{"factor":73,"stage":97}` | `1/1 * b * q + 1/1 * h * p + -1/1 * b * h + -93/1000` |
| 11 | physical | `{"factor":81,"stage":97}` | `-1/1 * u * k + 1/1 * b * k + 1/1 * v * j + -1/1 * b * v + -93/1000` |
| 12 | coordinate | `{"box":756,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 13 | coordinate | `{"box":756,"direction":"hi","value":"15761/31250","variable":"b"}` | `15761/31250 + -1 * b` |
| 14 | coordinate | `{"box":756,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 15 | coordinate | `{"box":756,"direction":"hi","value":"26361/31250","variable":"w"}` | `26361/31250 + -1 * w` |
| 16 | coordinate | `{"box":756,"direction":"hi","value":"174689/200000","variable":"j"}` | `174689/200000 + -1 * j` |
| 17 | coordinate | `{"box":756,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 18 | coordinate | `{"box":756,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 19 | coordinate | `{"box":756,"direction":"hi","value":"116527/200000","variable":"f"}` | `116527/200000 + -1 * f` |
| 20 | coordinate | `{"box":756,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 21 | coordinate | `{"box":756,"direction":"hi","value":"460921/1000000","variable":"p"}` | `460921/1000000 + -1 * p` |
| 22 | coordinate | `{"box":756,"direction":"hi","value":"158027/250000","variable":"q"}` | `158027/250000 + -1 * q` |
| 23 | coordinate | `{"box":756,"direction":"hi","value":"137873/250000","variable":"v"}` | `137873/250000 + -1 * v` |
| 24 | coordinate | `{"box":756,"direction":"lo","value":"54347/500000","variable":"a"}` | `-54347/500000 + 1 * a` |
| 25 | coordinate | `{"box":756,"direction":"lo","value":"8943/12500","variable":"r"}` | `-8943/12500 + 1 * r` |
| 26 | coordinate | `{"box":756,"direction":"lo","value":"586153/1000000","variable":"w"}` | `-586153/1000000 + 1 * w` |
| 27 | coordinate | `{"box":756,"direction":"lo","value":"13857/20000","variable":"j"}` | `-13857/20000 + 1 * j` |
| 28 | coordinate | `{"box":756,"direction":"lo","value":"687973/1000000","variable":"k"}` | `-687973/1000000 + 1 * k` |
| 29 | coordinate | `{"box":756,"direction":"lo","value":"54347/500000","variable":"e"}` | `-54347/500000 + 1 * e` |
| 30 | coordinate | `{"box":756,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 31 | coordinate | `{"box":756,"direction":"lo","value":"100193/125000","variable":"h"}` | `-100193/125000 + 1 * h` |
| 32 | coordinate | `{"box":756,"direction":"lo","value":"36491/250000","variable":"p"}` | `-36491/250000 + 1 * p` |
| 33 | coordinate | `{"box":756,"direction":"lo","value":"285061/1000000","variable":"q"}` | `-285061/1000000 + 1 * q` |
| 34 | coordinate | `{"box":756,"direction":"lo","value":"122283/200000","variable":"u"}` | `-122283/200000 + 1 * u` |
| 35 | coordinate | `{"box":756,"direction":"lo","value":"135199/500000","variable":"v"}` | `-135199/500000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 5671000000 | 8 |
| 1 | 10616000000 | 9 |
| 2 | 11662000000 | 10 |
| 3 | 80467000000 | 11 |
| 4 | 33590000000 | 2 |
| 5 | 35106000000 | 3 |
| 6 | 33164000000 | 4 |
| 7 | 10109000000 | 5 |
| 8 | 6390000000 | 6 |
| 9 | 10109000000 | 0 |
| 10 | 10712000000 | 1 |
| 11 | 2644000000 | 7 |
| 12 | 11662000000 | 13, 20 |
| 13 | 11662000000 | 13, 33 |
| 14 | 5671000000 | 12, 32 |
| 15 | 80467000000 | 13, 23 |
| 16 | 10616000000 | 24, 34 |
| 17 | 10616000000 | 14, 24 |
| 18 | 80467000000 | 13, 28 |
| 19 | 5671000000 | 12, 16 |
| 20 | 35106000000 | 18, 32 |
| 21 | 1516000000 | 29, 34 |
| 22 | 33164000000 | 14, 18 |
| 23 | 33164000000 | 16, 29 |
| 24 | 10109000000 | 20, 30 |
| 25 | 6390000000 | 19, 26 |
| 26 | 16499000000 | 17, 19 |
| 27 | 11662000000 | 20, 32 |
| 28 | 33590000000 | 31, 34 |
| 29 | 10109000000 | 14, 20 |
| 30 | 24394000000 | 21, 23 |
| 31 | 24394000000 | 22, 34 |
| 32 | 8670000000 | 28, 32 |
| 33 | 7713000000 | 17, 21 |
| 34 | 16382000000 | 16, 33 |
| 35 | 10616000000 | 15, 34 |
| 36 | 10616000000 | 14, 23 |
| 37 | 69755000000 | 28, 34 |
| 38 | 69755000000 | 16, 35 |
| 39 | 49663000000 | 14, 28 |
| 40 | 49663000000 | 15, 16 |
| 41 | 1000000 | 22, 27 |
| 42 | 692850 | 22 |
| 43 | 671090 | 16 |
| 44 | 243283 | 35 |
| 45 | 1584460294 | 20 |
| 46 | 613476 | 33 |
| 47 | 47359 | 28 |
| 48 | 79745 | 26 |
| 49 | 64469 | 25 |
| 50 | 482330 | 30 |
| 51 | 598009 | 13 |
| 52 | 326391 | 24 |
| 53 | 528108 | 32 |
| 54 | 51857304599 | 34 |
| 55 | 237024 | 18 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -415813709302353/100000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -415813709302353/100000 | 1 | -415813709302353/100000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 756 | -415813709302353/100000 |

## Stage 757

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS-/BFP+/PQR+/AFP-/AQR+/EPQ- |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS-/BFP+/PQR+/AFP-/AQR+/EPQ-:HHH |
| Index | 0 |
| Context | 72 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 745 |
| Coordinate cut | v high 137873/250000 |

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
| v | 137873/250000 | 676753/1000000 | 137873/250000 | 676753/1000000 |
| r | 8943/12500 | 1 | 8943/12500 | 1 |
| w | 586153/1000000 | 26361/31250 | 586153/1000000 | 26361/31250 |
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
| 0 | bound | `{"direction":"lo","ref":"97:3744","triangle":"HRS","value":"56881/500000"}` | `1 * r * k + -1 * h * r + -1 * w * j + 1 * h * j + -56881/500000` |
| 1 | bound | `{"direction":"lo","ref":"97:4351","triangle":"FQS","value":"12057/62500"}` | `1 * u * k + -1 * u + -1 * f * k + -1 * v * j + 1 * f * v + 1 * j + -12057/62500` |
| 2 | physical | `{"factor":112,"stage":97}` | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -93/1000` |
| 3 | physical | `{"factor":120,"stage":97}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 4 | physical | `{"factor":124,"stage":97}` | `-1/1 * f * k + -1/1 * h * j + 1/1 * f * h + 1/1 * j + -93/1000` |
| 5 | physical | `{"factor":130,"stage":97}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 6 | physical | `{"factor":144,"stage":97}` | `1/1 * f + -1/1 * b` |
| 7 | physical | `{"factor":47,"stage":97}` | `1/1 * u * w + -1/1 * a * u + -1/1 * v * r + 1/1 * a * r + -93/1000` |
| 8 | physical | `{"factor":81,"stage":97}` | `-1/1 * u * k + 1/1 * b * k + 1/1 * v * j + -1/1 * b * v + -93/1000` |
| 9 | physical | `{"factor":88,"stage":97}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 10 | physical | `{"factor":92,"stage":97}` | `1/1 * f * v + -1/1 * c * v + -1/1 * u + 1/1 * c + -93/1000` |
| 11 | coordinate | `{"box":757,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 12 | coordinate | `{"box":757,"direction":"hi","value":"15761/31250","variable":"b"}` | `15761/31250 + -1 * b` |
| 13 | coordinate | `{"box":757,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 14 | coordinate | `{"box":757,"direction":"hi","value":"26361/31250","variable":"w"}` | `26361/31250 + -1 * w` |
| 15 | coordinate | `{"box":757,"direction":"hi","value":"174689/200000","variable":"j"}` | `174689/200000 + -1 * j` |
| 16 | coordinate | `{"box":757,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 17 | coordinate | `{"box":757,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 18 | coordinate | `{"box":757,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 19 | coordinate | `{"box":757,"direction":"hi","value":"116527/200000","variable":"f"}` | `116527/200000 + -1 * f` |
| 20 | coordinate | `{"box":757,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 21 | coordinate | `{"box":757,"direction":"hi","value":"372137/500000","variable":"u"}` | `372137/500000 + -1 * u` |
| 22 | coordinate | `{"box":757,"direction":"lo","value":"54347/500000","variable":"a"}` | `-54347/500000 + 1 * a` |
| 23 | coordinate | `{"box":757,"direction":"lo","value":"72197/500000","variable":"b"}` | `-72197/500000 + 1 * b` |
| 24 | coordinate | `{"box":757,"direction":"lo","value":"8943/12500","variable":"r"}` | `-8943/12500 + 1 * r` |
| 25 | coordinate | `{"box":757,"direction":"lo","value":"586153/1000000","variable":"w"}` | `-586153/1000000 + 1 * w` |
| 26 | coordinate | `{"box":757,"direction":"lo","value":"13857/20000","variable":"j"}` | `-13857/20000 + 1 * j` |
| 27 | coordinate | `{"box":757,"direction":"lo","value":"687973/1000000","variable":"k"}` | `-687973/1000000 + 1 * k` |
| 28 | coordinate | `{"box":757,"direction":"lo","value":"70629/100000","variable":"c"}` | `-70629/100000 + 1 * c` |
| 29 | coordinate | `{"box":757,"direction":"lo","value":"54347/500000","variable":"e"}` | `-54347/500000 + 1 * e` |
| 30 | coordinate | `{"box":757,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 31 | coordinate | `{"box":757,"direction":"lo","value":"100193/125000","variable":"h"}` | `-100193/125000 + 1 * h` |
| 32 | coordinate | `{"box":757,"direction":"lo","value":"181319/500000","variable":"u"}` | `-181319/500000 + 1 * u` |
| 33 | coordinate | `{"box":757,"direction":"lo","value":"137873/250000","variable":"v"}` | `-137873/250000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 71728000000 | 7 |
| 1 | 9197000000 | 8 |
| 2 | 7206000000 | 9 |
| 3 | 7271000000 | 10 |
| 4 | 36136000000 | 2 |
| 5 | 35774000000 | 3 |
| 6 | 11767000000 | 4 |
| 7 | 9197000000 | 1 |
| 8 | 30462000000 | 5 |
| 9 | 14232000000 | 0 |
| 10 | 1255000000 | 6 |
| 11 | 9197000000 | 23, 33 |
| 12 | 71728000000 | 11, 21 |
| 13 | 7268000000 | 13, 22 |
| 14 | 64460000000 | 11, 24 |
| 15 | 9197000000 | 12, 27 |
| 16 | 7206000000 | 18, 28 |
| 17 | 7271000000 | 28, 33 |
| 18 | 7206000000 | 14, 17 |
| 19 | 36136000000 | 18, 32 |
| 20 | 42980000000 | 13, 18 |
| 21 | 35774000000 | 18, 26 |
| 22 | 11767000000 | 20, 30 |
| 23 | 16468000000 | 19, 33 |
| 24 | 30462000000 | 14, 30 |
| 25 | 11620000000 | 27, 30 |
| 26 | 39807000000 | 16, 19 |
| 27 | 36136000000 | 20, 21 |
| 28 | 14232000000 | 13, 20 |
| 29 | 2465000000 | 20, 26 |
| 30 | 71728000000 | 14, 32 |
| 31 | 71728000000 | 24, 33 |
| 32 | 80468000000 | 16, 24 |
| 33 | 80468000000 | 14, 15 |
| 34 | 175796 | 25 |
| 35 | 218656 | 21 |
| 36 | 11956 | 17 |
| 37 | 84321673348 | 33 |
| 38 | 217014 | 31 |
| 39 | 380181 | 27 |
| 40 | 1000000 | 19, 27 |
| 41 | 687973 | 19 |
| 42 | 582635 | 16 |
| 43 | 308336 | 26 |
| 44 | 278816 | 13 |
| 45 | 994980 | 30 |
| 46 | 215757 | 12 |
| 47 | 23072 | 22 |
| 48 | 171592 | 29 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -862476727821049/200000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -862476727821049/200000 | 1 | -862476727821049/200000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 757 | -862476727821049/200000 |

## Stage 758

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS-/BFP+/PQR+/AFP-/AQR- |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS-/BFP+/PQR+/AFP-/AQR-:root |
| Index | 0 |
| Context | 73 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 98 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 130521/1000000 | 259627/1000000 | 130521/1000000 | 259627/1000000 |
| b | 171739/1000000 | 15761/31250 | 171739/1000000 | 15761/31250 |
| c | 710721/1000000 | 175031/200000 | 710721/1000000 | 175031/200000 |
| e | 16389/125000 | 391/1000 | 16389/125000 | 391/1000 |
| f | 279/1000 | 571867/1000000 | 279/1000 | 571867/1000000 |
| h | 823371/1000000 | 1 | 823371/1000000 | 1 |
| p | 198873/1000000 | 185823/500000 | 198873/1000000 | 185823/500000 |
| q | 469071/1000000 | 66649/100000 | 469071/1000000 | 66649/100000 |
| u | 382959/1000000 | 340119/500000 | 382959/1000000 | 340119/500000 |
| v | 169097/500000 | 304377/500000 | 169097/500000 | 304377/500000 |
| r | 892941/1000000 | 1 | 892941/1000000 | 1 |
| w | 86779/200000 | 1909/2500 | 86779/200000 | 1909/2500 |
| j | 13857/20000 | 426481/500000 | 13857/20000 | 426481/500000 |
| k | 622239/1000000 | 1 | 622239/1000000 | 1 |

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


## Stage 759

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AEQ+/BQS-/BFP+/PQR+/AFP-/AQR- |
| Packet | coordinate:root/HEQ-/CFQ+/AEP+/AEQ+/BQS-/BFP+/PQR+/AFP-/AQR-:L |
| Index | 0 |
| Context | 73 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 758 |
| Coordinate cut | k low 756779/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 130521/1000000 | 259627/1000000 | 130521/1000000 | 259627/1000000 |
| b | 171739/1000000 | 15761/31250 | 171739/1000000 | 15761/31250 |
| c | 710721/1000000 | 175031/200000 | 710721/1000000 | 175031/200000 |
| e | 16389/125000 | 391/1000 | 16389/125000 | 391/1000 |
| f | 279/1000 | 571867/1000000 | 279/1000 | 571867/1000000 |
| h | 823371/1000000 | 1 | 823371/1000000 | 1 |
| p | 198873/1000000 | 185823/500000 | 198873/1000000 | 185823/500000 |
| q | 469071/1000000 | 66649/100000 | 469071/1000000 | 66649/100000 |
| u | 382959/1000000 | 340119/500000 | 382959/1000000 | 340119/500000 |
| v | 169097/500000 | 304377/500000 | 169097/500000 | 304377/500000 |
| r | 892941/1000000 | 1 | 892941/1000000 | 1 |
| w | 86779/200000 | 1909/2500 | 86779/200000 | 1909/2500 |
| j | 13857/20000 | 426481/500000 | 13857/20000 | 426481/500000 |
| k | 622239/1000000 | 756779/1000000 | 622239/1000000 | 756779/1000000 |

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
| 0 | physical | `{"factor":117,"stage":98}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 1 | physical | `{"factor":127,"stage":98}` | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 2 | physical | `{"factor":139,"stage":98}` | `1/1 * e + -1/1 * a` |
| 3 | physical | `{"factor":35,"stage":98}` | `-1/1 * f * q + 1/1 * a * f + 1/1 * p + -1/1 * a * p + -93/1000` |
| 4 | physical | `{"factor":38,"stage":98}` | `-1/1 * f * w + 1/1 * a * f + 1/1 * r + -1/1 * a * r + -13857/20000` |
| 5 | physical | `{"factor":45,"stage":98}` | `-1/1 * p * w + 1/1 * a * p + 1/1 * q * r + -1/1 * a * r + -279/1000` |
| 6 | physical | `{"factor":48,"stage":98}` | `1/1 * c * e + -1/1 * b * e + -93/1000` |
| 7 | physical | `{"factor":67,"stage":98}` | `1/1 * f * q + -1/1 * b * q + -1/1 * p + 1/1 * b + -93/1000` |
| 8 | physical | `{"factor":86,"stage":98}` | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 9 | coordinate | `{"box":759,"direction":"hi","value":"259627/1000000","variable":"a"}` | `259627/1000000 + -1 * a` |
| 10 | coordinate | `{"box":759,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 11 | coordinate | `{"box":759,"direction":"hi","value":"1909/2500","variable":"w"}` | `1909/2500 + -1 * w` |
| 12 | coordinate | `{"box":759,"direction":"hi","value":"426481/500000","variable":"j"}` | `426481/500000 + -1 * j` |
| 13 | coordinate | `{"box":759,"direction":"hi","value":"756779/1000000","variable":"k"}` | `756779/1000000 + -1 * k` |
| 14 | coordinate | `{"box":759,"direction":"hi","value":"175031/200000","variable":"c"}` | `175031/200000 + -1 * c` |
| 15 | coordinate | `{"box":759,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 16 | coordinate | `{"box":759,"direction":"hi","value":"571867/1000000","variable":"f"}` | `571867/1000000 + -1 * f` |
| 17 | coordinate | `{"box":759,"direction":"hi","value":"185823/500000","variable":"p"}` | `185823/500000 + -1 * p` |
| 18 | coordinate | `{"box":759,"direction":"hi","value":"66649/100000","variable":"q"}` | `66649/100000 + -1 * q` |
| 19 | coordinate | `{"box":759,"direction":"lo","value":"130521/1000000","variable":"a"}` | `-130521/1000000 + 1 * a` |
| 20 | coordinate | `{"box":759,"direction":"lo","value":"171739/1000000","variable":"b"}` | `-171739/1000000 + 1 * b` |
| 21 | coordinate | `{"box":759,"direction":"lo","value":"892941/1000000","variable":"r"}` | `-892941/1000000 + 1 * r` |
| 22 | coordinate | `{"box":759,"direction":"lo","value":"86779/200000","variable":"w"}` | `-86779/200000 + 1 * w` |
| 23 | coordinate | `{"box":759,"direction":"lo","value":"13857/20000","variable":"j"}` | `-13857/20000 + 1 * j` |
| 24 | coordinate | `{"box":759,"direction":"lo","value":"622239/1000000","variable":"k"}` | `-622239/1000000 + 1 * k` |
| 25 | coordinate | `{"box":759,"direction":"lo","value":"710721/1000000","variable":"c"}` | `-710721/1000000 + 1 * c` |
| 26 | coordinate | `{"box":759,"direction":"lo","value":"16389/125000","variable":"e"}` | `-16389/125000 + 1 * e` |
| 27 | coordinate | `{"box":759,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 28 | coordinate | `{"box":759,"direction":"lo","value":"198873/1000000","variable":"p"}` | `-198873/1000000 + 1 * p` |
| 29 | coordinate | `{"box":759,"direction":"lo","value":"469071/1000000","variable":"q"}` | `-469071/1000000 + 1 * q` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 6688000000 | 3 |
| 1 | 1212000000 | 4 |
| 2 | 1284000000 | 5 |
| 3 | 21969000000 | 6 |
| 4 | 5425000000 | 7 |
| 5 | 9513000000 | 8 |
| 6 | 103461000000 | 0 |
| 7 | 71359000000 | 1 |
| 8 | 947000000 | 2 |
| 9 | 21969000000 | 20, 26 |
| 10 | 7900000000 | 16, 19 |
| 11 | 5425000000 | 20, 29 |
| 12 | 5404000000 | 19, 28 |
| 13 | 2496000000 | 9, 10 |
| 14 | 31483000000 | 14, 26 |
| 15 | 9513000000 | 22, 25 |
| 16 | 112975000000 | 10, 15 |
| 17 | 103461000000 | 12, 26 |
| 18 | 1263000000 | 27, 29 |
| 19 | 70147000000 | 11, 27 |
| 20 | 71359000000 | 13, 16 |
| 21 | 1284000000 | 22, 28 |
| 22 | 1284000000 | 10, 29 |
| 23 | 122271000000 | 13, 21 |
| 24 | 52549000000 | 10, 24 |
| 25 | 147310000000 | 22, 23 |
| 26 | 27510000000 | 11, 12 |
| 27 | 469071 | 27 |
| 28 | 279000 | 29 |
| 29 | 543336 | 17 |
| 30 | 719687 | 21 |
| 31 | 1000000 | 25, 26 |
| 32 | 131112 | 25 |
| 33 | 838465 | 26 |
| 34 | 109703 | 20 |
| 35 | 146925 | 22 |
| 36 | 1000000 | 15, 21 |
| 37 | 892941 | 15 |
| 38 | 10865306179 | 10 |
| 39 | 17461000000 | 13 |
| 40 | 68242 | 24 |
| 41 | 270182 | 12 |
| 42 | 39608 | 9 |
| 43 | 404837 | 16 |
| 44 | 217925 | 18 |
| 45 | 155961 | 14 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -1886085813157159/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -1886085813157159/1000000 | 1 | -1886085813157159/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 759 | -1886085813157159/1000000 |
