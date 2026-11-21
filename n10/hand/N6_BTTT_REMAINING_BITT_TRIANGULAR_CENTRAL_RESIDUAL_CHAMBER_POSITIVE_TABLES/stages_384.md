# BITT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 1920

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS-/HEQ+/CFQ+/PQR-/AFQ+/BRS-/HQS-/HQR- |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS-/HEQ+/CFQ+/PQR-/AFQ+/BRS-/HQS-/HQR-:L |
| Index | 0 |
| Context | 455 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1919 |
| Coordinate cut | k low 59603/100000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| b | 103767/1000000 | 64101/100000 | 103767/1000000 | 64101/100000 |
| c | 135501/250000 | 1 | 135501/250000 | 1 |
| e | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| f | 350837/1000000 | 33667/50000 | 350837/1000000 | 33667/50000 |
| h | 288697/500000 | 1 | 288697/500000 | 1 |
| p | 54839/200000 | 593613/1000000 | 54839/200000 | 593613/1000000 |
| q | 313387/1000000 | 36603/62500 | 313387/1000000 | 36603/62500 |
| u | 71651/500000 | 249851/500000 | 71651/500000 | 249851/500000 |
| v | 129697/200000 | 907/1000 | 129697/200000 | 907/1000 |
| r | 8397/12500 | 1 | 8397/12500 | 1 |
| w | 533551/1000000 | 493359/500000 | 533551/1000000 | 493359/500000 |
| j | 646063/1000000 | 55917/62500 | 646063/1000000 | 55917/62500 |
| k | 24393/62500 | 59603/100000 | 24393/62500 | 59603/100000 |

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
| 0 | bound | `{"direction":"lo","ref":"706:2083","triangle":"FHR","value":"155801/500000"}` | `-1 * f * w + -1 * h * r + 1 * f * h + 1 * r + -155801/500000` |
| 1 | bound | `{"direction":"lo","ref":"706:2133","triangle":"AFH","value":"91841/250000"}` | `1 * f * h + -1 * a * f + -91841/250000` |
| 2 | physical | `{"factor":0,"stage":706}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 3 | physical | `{"factor":106,"stage":706}` | `-1/1 * f * k + 1/1 * e * f + 1/1 * k + 1/1 * j + -1093/1000 + -1/1 * e * j` |
| 4 | physical | `{"factor":116,"stage":706}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 5 | physical | `{"factor":47,"stage":706}` | `1/1 * c * e + -1/1 * b * e + -93/1000` |
| 6 | physical | `{"factor":7,"stage":706}` | `1/1 * b * h + -1/1 * a * b + -93/1000` |
| 7 | physical | `{"factor":78,"stage":706}` | `-1/1 * r * k + 1/1 * b * k + 1/1 * w * j + -1/1 * b * w + -93/1000` |
| 8 | physical | `{"factor":85,"stage":706}` | `1/1 * k + -1/1 * c * k + -1/1 * e * j + 1/1 * c * e + -93/1000` |
| 9 | coordinate | `{"box":1920,"direction":"hi","value":"59/125","variable":"a"}` | `59/125 + -1 * a` |
| 10 | coordinate | `{"box":1920,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 11 | coordinate | `{"box":1920,"direction":"hi","value":"493359/500000","variable":"w"}` | `493359/500000 + -1 * w` |
| 12 | coordinate | `{"box":1920,"direction":"hi","value":"55917/62500","variable":"j"}` | `55917/62500 + -1 * j` |
| 13 | coordinate | `{"box":1920,"direction":"hi","value":"59603/100000","variable":"k"}` | `59603/100000 + -1 * k` |
| 14 | coordinate | `{"box":1920,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 15 | coordinate | `{"box":1920,"direction":"hi","value":"59/125","variable":"e"}` | `59/125 + -1 * e` |
| 16 | coordinate | `{"box":1920,"direction":"hi","value":"33667/50000","variable":"f"}` | `33667/50000 + -1 * f` |
| 17 | coordinate | `{"box":1920,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 18 | coordinate | `{"box":1920,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 19 | coordinate | `{"box":1920,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 20 | coordinate | `{"box":1920,"direction":"lo","value":"8397/12500","variable":"r"}` | `-8397/12500 + 1 * r` |
| 21 | coordinate | `{"box":1920,"direction":"lo","value":"533551/1000000","variable":"w"}` | `-533551/1000000 + 1 * w` |
| 22 | coordinate | `{"box":1920,"direction":"lo","value":"24393/62500","variable":"k"}` | `-24393/62500 + 1 * k` |
| 23 | coordinate | `{"box":1920,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 24 | coordinate | `{"box":1920,"direction":"lo","value":"350837/1000000","variable":"f"}` | `-350837/1000000 + 1 * f` |
| 25 | coordinate | `{"box":1920,"direction":"lo","value":"288697/500000","variable":"h"}` | `-288697/500000 + 1 * h` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 15601000000 | 2 |
| 1 | 1336000000 | 6 |
| 2 | 39458000000 | 1 |
| 3 | 8076000000 | 5 |
| 4 | 20156000000 | 7 |
| 5 | 4991000000 | 8 |
| 6 | 55300000000 | 3 |
| 7 | 78070000000 | 4 |
| 8 | 68876000000 | 0 |
| 9 | 16937000000 | 18, 19 |
| 10 | 15601000000 | 14, 18 |
| 11 | 8076000000 | 19, 23 |
| 12 | 39458000000 | 18, 24 |
| 13 | 1336000000 | 17, 19 |
| 14 | 20156000000 | 19, 21 |
| 15 | 20156000000 | 13, 19 |
| 16 | 13067000000 | 14, 23 |
| 17 | 4991000000 | 13, 14 |
| 18 | 55300000000 | 16, 23 |
| 19 | 38687000000 | 20, 23 |
| 20 | 39383000000 | 10, 15 |
| 21 | 17779000000 | 12, 23 |
| 22 | 13048000000 | 17, 24 |
| 23 | 95286000000 | 16, 25 |
| 24 | 68876000000 | 21, 24 |
| 25 | 55300000000 | 13, 16 |
| 26 | 68876000000 | 10, 17 |
| 27 | 57914000000 | 10, 22 |
| 28 | 57914000000 | 11, 12 |
| 29 | 577394 | 16 |
| 30 | 673340 | 17 |
| 31 | 174348 | 22 |
| 32 | 87241 | 12 |
| 33 | 188928 | 11 |
| 34 | 70697 | 20 |
| 35 | 171975 | 9 |
| 36 | 197247 | 19 |
| 37 | 6626 | 14 |
| 38 | 325924 | 23 |
| 39 | 453572 | 24 |
| 40 | 444212 | 25 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -127644424825003/500000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -127644424825003/500000 | 1 | -127644424825003/500000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1920 | -127644424825003/500000 |

## Stage 1921

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS-/HEQ+/CFQ+/PQR-/AFQ+/BRS-/HQS-/HQR- |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS-/HEQ+/CFQ+/PQR-/AFQ+/BRS-/HQS-/HQR-:H |
| Index | 0 |
| Context | 455 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1919 |
| Coordinate cut | k high 59603/100000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| b | 103767/1000000 | 64101/100000 | 103767/1000000 | 64101/100000 |
| c | 135501/250000 | 1 | 135501/250000 | 1 |
| e | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| f | 350837/1000000 | 33667/50000 | 350837/1000000 | 33667/50000 |
| h | 288697/500000 | 1 | 288697/500000 | 1 |
| p | 54839/200000 | 593613/1000000 | 54839/200000 | 593613/1000000 |
| q | 313387/1000000 | 36603/62500 | 313387/1000000 | 36603/62500 |
| u | 71651/500000 | 249851/500000 | 71651/500000 | 249851/500000 |
| v | 129697/200000 | 907/1000 | 129697/200000 | 907/1000 |
| r | 8397/12500 | 1 | 8397/12500 | 1 |
| w | 533551/1000000 | 493359/500000 | 533551/1000000 | 493359/500000 |
| j | 646063/1000000 | 55917/62500 | 646063/1000000 | 55917/62500 |
| k | 59603/100000 | 850699/1000000 | 59603/100000 | 850699/1000000 |

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
| 0 | bound | `{"direction":"lo","ref":"706:2022","triangle":"FPR","value":"307873/1000000"}` | `1 * p * w + -1 * p + -1 * f * w + -1 * q * r + 1 * f * q + 1 * r + -307873/1000000` |
| 1 | bound | `{"direction":"lo","ref":"706:2083","triangle":"FHR","value":"155801/500000"}` | `-1 * f * w + -1 * h * r + 1 * f * h + 1 * r + -155801/500000` |
| 2 | bound | `{"direction":"lo","ref":"706:2133","triangle":"AFH","value":"91841/250000"}` | `1 * f * h + -1 * a * f + -91841/250000` |
| 3 | physical | `{"factor":0,"stage":706}` | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 4 | physical | `{"factor":116,"stage":706}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 5 | physical | `{"factor":42,"stage":706}` | `-1/1 * p * w + 1/1 * a * p + 1/1 * q * r + -1/1 * a * r + -93/1000` |
| 6 | physical | `{"factor":65,"stage":706}` | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 7 | physical | `{"factor":7,"stage":706}` | `1/1 * b * h + -1/1 * a * b + -93/1000` |
| 8 | physical | `{"factor":78,"stage":706}` | `-1/1 * r * k + 1/1 * b * k + 1/1 * w * j + -1/1 * b * w + -93/1000` |
| 9 | physical | `{"factor":85,"stage":706}` | `1/1 * k + -1/1 * c * k + -1/1 * e * j + 1/1 * c * e + -93/1000` |
| 10 | physical | `{"factor":91,"stage":706}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 11 | coordinate | `{"box":1921,"direction":"hi","value":"59/125","variable":"a"}` | `59/125 + -1 * a` |
| 12 | coordinate | `{"box":1921,"direction":"hi","value":"64101/100000","variable":"b"}` | `64101/100000 + -1 * b` |
| 13 | coordinate | `{"box":1921,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 14 | coordinate | `{"box":1921,"direction":"hi","value":"493359/500000","variable":"w"}` | `493359/500000 + -1 * w` |
| 15 | coordinate | `{"box":1921,"direction":"hi","value":"55917/62500","variable":"j"}` | `55917/62500 + -1 * j` |
| 16 | coordinate | `{"box":1921,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 17 | coordinate | `{"box":1921,"direction":"hi","value":"59/125","variable":"e"}` | `59/125 + -1 * e` |
| 18 | coordinate | `{"box":1921,"direction":"hi","value":"33667/50000","variable":"f"}` | `33667/50000 + -1 * f` |
| 19 | coordinate | `{"box":1921,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 20 | coordinate | `{"box":1921,"direction":"hi","value":"593613/1000000","variable":"p"}` | `593613/1000000 + -1 * p` |
| 21 | coordinate | `{"box":1921,"direction":"hi","value":"36603/62500","variable":"q"}` | `36603/62500 + -1 * q` |
| 22 | coordinate | `{"box":1921,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 23 | coordinate | `{"box":1921,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 24 | coordinate | `{"box":1921,"direction":"lo","value":"8397/12500","variable":"r"}` | `-8397/12500 + 1 * r` |
| 25 | coordinate | `{"box":1921,"direction":"lo","value":"533551/1000000","variable":"w"}` | `-533551/1000000 + 1 * w` |
| 26 | coordinate | `{"box":1921,"direction":"lo","value":"646063/1000000","variable":"j"}` | `-646063/1000000 + 1 * j` |
| 27 | coordinate | `{"box":1921,"direction":"lo","value":"59603/100000","variable":"k"}` | `-59603/100000 + 1 * k` |
| 28 | coordinate | `{"box":1921,"direction":"lo","value":"135501/250000","variable":"c"}` | `-135501/250000 + 1 * c` |
| 29 | coordinate | `{"box":1921,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 30 | coordinate | `{"box":1921,"direction":"lo","value":"350837/1000000","variable":"f"}` | `-350837/1000000 + 1 * f` |
| 31 | coordinate | `{"box":1921,"direction":"lo","value":"288697/500000","variable":"h"}` | `-288697/500000 + 1 * h` |
| 32 | coordinate | `{"box":1921,"direction":"lo","value":"54839/200000","variable":"p"}` | `-54839/200000 + 1 * p` |
| 33 | coordinate | `{"box":1921,"direction":"lo","value":"313387/1000000","variable":"q"}` | `-313387/1000000 + 1 * q` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 15253000000 | 3 |
| 1 | 4645000000 | 7 |
| 2 | 39072000000 | 2 |
| 3 | 19766000000 | 5 |
| 4 | 18941000000 | 6 |
| 5 | 51276000000 | 8 |
| 6 | 3168000000 | 9 |
| 7 | 2790000000 | 10 |
| 8 | 56929000000 | 4 |
| 9 | 88214000000 | 1 |
| 10 | 18941000000 | 0 |
| 11 | 15253000000 | 16, 22 |
| 12 | 39072000000 | 22, 30 |
| 13 | 4645000000 | 19, 23 |
| 14 | 18941000000 | 21, 23 |
| 15 | 19766000000 | 20, 22 |
| 16 | 51276000000 | 23, 25 |
| 17 | 19766000000 | 22, 24 |
| 18 | 51276000000 | 12, 27 |
| 19 | 3168000000 | 16, 29 |
| 20 | 2790000000 | 16, 31 |
| 21 | 2790000000 | 16, 21 |
| 22 | 3168000000 | 27, 28 |
| 23 | 17251000000 | 24, 29 |
| 24 | 39678000000 | 13, 17 |
| 25 | 53761000000 | 15, 29 |
| 26 | 127287000000 | 18, 31 |
| 27 | 80085000000 | 25, 30 |
| 28 | 27070000000 | 14, 18 |
| 29 | 2790000000 | 31, 32 |
| 30 | 88214000000 | 13, 19 |
| 31 | 825000000 | 25, 32 |
| 32 | 825000000 | 13, 33 |
| 33 | 5654000000 | 13, 27 |
| 34 | 5654000000 | 14, 15 |
| 35 | 19898000000 | 22, 23 |
| 36 | 2064755766 | 22 |
| 37 | 2064755766 | 23 |
| 38 | 1000000 | 30, 31 |
| 39 | 577394 | 30 |
| 40 | 350837 | 31 |
| 41 | 50313 | 32 |
| 42 | 431972 | 12 |
| 43 | 1000000 | 24, 27 |
| 44 | 596030 | 24 |
| 45 | 16956311672 | 27 |
| 46 | 1000000 | 14, 26 |
| 47 | 646063 | 14 |
| 48 | 986718 | 15 |
| 49 | 538000 | 25 |
| 50 | 338856 | 13 |
| 51 | 240207 | 16 |
| 52 | 443134 | 11 |
| 53 | 477759 | 18 |
| 54 | 422245 | 19 |
| 55 | 450747 | 21 |
| 56 | 70368 | 29 |
| 57 | 285885 | 26 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -789415562952529/250000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -789415562952529/250000 | 1 | -789415562952529/250000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 1921 | -789415562952529/250000 |

## Stage 1922

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS-/HEQ+/CFQ+/PQR-/AFQ-/BPQ+/HQS- |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS-/HEQ+/CFQ+/PQR-/AFQ-/BPQ+/HQS-:root |
| Index | 0 |
| Context | 460 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 720 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 111451/1000000 | 50951/250000 | 111451/1000000 | 50951/250000 |
| b | 114279/1000000 | 383811/1000000 | 114279/1000000 | 383811/1000000 |
| c | 182763/250000 | 947217/1000000 | 182763/250000 | 947217/1000000 |
| e | 111491/1000000 | 383811/1000000 | 111491/1000000 | 383811/1000000 |
| f | 114279/1000000 | 383811/1000000 | 114279/1000000 | 383811/1000000 |
| h | 286103/500000 | 229897/250000 | 286103/500000 | 229897/250000 |
| p | 47039/200000 | 129589/250000 | 47039/200000 | 129589/250000 |
| q | 32073/100000 | 298661/500000 | 32073/100000 | 298661/500000 |
| u | 161747/1000000 | 541367/1000000 | 161747/1000000 | 541367/1000000 |
| v | 11171/20000 | 446743/500000 | 11171/20000 | 446743/500000 |
| r | 21091/25000 | 1 | 21091/25000 | 1 |
| w | 611959/1000000 | 1 | 611959/1000000 | 1 |
| j | 407087/500000 | 895331/1000000 | 407087/500000 | 895331/1000000 |
| k | 380249/1000000 | 110349/125000 | 380249/1000000 | 110349/125000 |

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


## Stage 1923

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS-/HEQ+/CFQ+/PQR-/AFQ-/BPQ+/HQS- |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS-/HEQ+/CFQ+/PQR-/AFQ-/BPQ+/HQS-:L |
| Index | 0 |
| Context | 460 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1922 |
| Coordinate cut | u low 359733/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 111451/1000000 | 50951/250000 | 111451/1000000 | 50951/250000 |
| b | 114279/1000000 | 383811/1000000 | 114279/1000000 | 383811/1000000 |
| c | 182763/250000 | 947217/1000000 | 182763/250000 | 947217/1000000 |
| e | 111491/1000000 | 383811/1000000 | 111491/1000000 | 383811/1000000 |
| f | 114279/1000000 | 383811/1000000 | 114279/1000000 | 383811/1000000 |
| h | 286103/500000 | 229897/250000 | 286103/500000 | 229897/250000 |
| p | 47039/200000 | 129589/250000 | 47039/200000 | 129589/250000 |
| q | 32073/100000 | 298661/500000 | 32073/100000 | 298661/500000 |
| u | 161747/1000000 | 359733/1000000 | 161747/1000000 | 359733/1000000 |
| v | 11171/20000 | 446743/500000 | 11171/20000 | 446743/500000 |
| r | 21091/25000 | 1 | 21091/25000 | 1 |
| w | 611959/1000000 | 1 | 611959/1000000 | 1 |
| j | 407087/500000 | 895331/1000000 | 407087/500000 | 895331/1000000 |
| k | 380249/1000000 | 110349/125000 | 380249/1000000 | 110349/125000 |

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


## Stage 1924

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS-/HEQ+/CFQ+/PQR-/AFQ-/BPQ+/HQS- |
| Packet | coordinate:root/AEP+/AFP-/APR-/ARS-/HEQ+/CFQ+/PQR-/AFQ-/BPQ+/HQS-:LL |
| Index | 0 |
| Context | 460 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 1923 |
| Coordinate cut | k low 358001/500000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 111451/1000000 | 50951/250000 | 111451/1000000 | 50951/250000 |
| b | 114279/1000000 | 383811/1000000 | 114279/1000000 | 383811/1000000 |
| c | 182763/250000 | 947217/1000000 | 182763/250000 | 947217/1000000 |
| e | 111491/1000000 | 383811/1000000 | 111491/1000000 | 383811/1000000 |
| f | 114279/1000000 | 383811/1000000 | 114279/1000000 | 383811/1000000 |
| h | 286103/500000 | 229897/250000 | 286103/500000 | 229897/250000 |
| p | 47039/200000 | 129589/250000 | 47039/200000 | 129589/250000 |
| q | 32073/100000 | 298661/500000 | 32073/100000 | 298661/500000 |
| u | 161747/1000000 | 359733/1000000 | 161747/1000000 | 359733/1000000 |
| v | 11171/20000 | 446743/500000 | 11171/20000 | 446743/500000 |
| r | 21091/25000 | 1 | 21091/25000 | 1 |
| w | 611959/1000000 | 1 | 611959/1000000 | 1 |
| j | 407087/500000 | 895331/1000000 | 407087/500000 | 895331/1000000 |
| k | 380249/1000000 | 358001/500000 | 380249/1000000 | 358001/500000 |

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
