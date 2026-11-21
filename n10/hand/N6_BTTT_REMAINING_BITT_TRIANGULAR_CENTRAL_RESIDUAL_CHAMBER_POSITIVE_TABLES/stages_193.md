# BITT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 965

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP+/BQS-/PQS+/QRS-/EPQ+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP+/BQS-/PQS+/QRS-/EPQ+:LLHHHLHLLHH |
| Index | 0 |
| Context | 171 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 959 |
| Coordinate cut | b high 104579/250000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 112077/250000 | 103767/1000000 | 112077/250000 |
| b | 104579/250000 | 278371/500000 | 104579/250000 | 278371/500000 |
| c | 135501/250000 | 87563/100000 | 135501/250000 | 87563/100000 |
| e | 45433/200000 | 112077/250000 | 45433/200000 | 112077/250000 |
| f | 279/1000 | 344349/500000 | 279/1000 | 344349/500000 |
| h | 721163/1000000 | 1 | 721163/1000000 | 1 |
| p | 22907/200000 | 102531/250000 | 22907/200000 | 102531/250000 |
| q | 323029/1000000 | 158779/250000 | 323029/1000000 | 158779/250000 |
| u | 155651/500000 | 622889/1000000 | 155651/500000 | 622889/1000000 |
| v | 12057/50000 | 272719/500000 | 12057/50000 | 272719/500000 |
| r | 688009/1000000 | 1 | 688009/1000000 | 1 |
| w | 796617/1000000 | 1 | 796617/1000000 | 1 |
| j | 353117/500000 | 896233/1000000 | 353117/500000 | 896233/1000000 |
| k | 616377/1000000 | 871013/1000000 | 616377/1000000 | 871013/1000000 |

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
| 0 | bound | `{"direction":"lo","ref":"385:1417","triangle":"BHQ","value":"141601/500000"}` | `1 * b * v + 1 * h * u + -1 * b * h + -141601/500000` |
| 1 | bound | `{"direction":"lo","ref":"385:776","triangle":"AQR","value":"68107/200000"}` | `1 * u * w + -1 * a * u + -1 * v * r + 1 * a * r + -68107/200000` |
| 2 | physical | `{"factor":109,"stage":385}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 3 | physical | `{"factor":112,"stage":385}` | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 4 | physical | `{"factor":129,"stage":385}` | `-1/1 * r * k + 1/1 * v * r + 1/1 * u * k + 1/1 * w * j + -1/1 * u * w + -1/1 * v * j + -93/1000` |
| 5 | physical | `{"factor":29,"stage":385}` | `1/1 * w + -1/1 * a + -1/1 * e * r + 1/1 * a * r + -13857/20000` |
| 6 | physical | `{"factor":55,"stage":385}` | `1/1 * h + -1/1 * b * h + 1/1 * b * e + -13857/20000` |
| 7 | physical | `{"factor":70,"stage":385}` | `1/1 * b * k + 1/1 * h * j + -1/1 * b * h + -13857/20000` |
| 8 | physical | `{"factor":74,"stage":385}` | `-1/1 * u * k + 1/1 * b * k + 1/1 * v * j + -1/1 * b * v + -93/1000` |
| 9 | coordinate | `{"box":965,"direction":"hi","value":"112077/250000","variable":"a"}` | `112077/250000 + -1 * a` |
| 10 | coordinate | `{"box":965,"direction":"hi","value":"278371/500000","variable":"b"}` | `278371/500000 + -1 * b` |
| 11 | coordinate | `{"box":965,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 12 | coordinate | `{"box":965,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 13 | coordinate | `{"box":965,"direction":"hi","value":"896233/1000000","variable":"j"}` | `896233/1000000 + -1 * j` |
| 14 | coordinate | `{"box":965,"direction":"hi","value":"871013/1000000","variable":"k"}` | `871013/1000000 + -1 * k` |
| 15 | coordinate | `{"box":965,"direction":"hi","value":"112077/250000","variable":"e"}` | `112077/250000 + -1 * e` |
| 16 | coordinate | `{"box":965,"direction":"hi","value":"344349/500000","variable":"f"}` | `344349/500000 + -1 * f` |
| 17 | coordinate | `{"box":965,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 18 | coordinate | `{"box":965,"direction":"hi","value":"622889/1000000","variable":"u"}` | `622889/1000000 + -1 * u` |
| 19 | coordinate | `{"box":965,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 20 | coordinate | `{"box":965,"direction":"lo","value":"104579/250000","variable":"b"}` | `-104579/250000 + 1 * b` |
| 21 | coordinate | `{"box":965,"direction":"lo","value":"688009/1000000","variable":"r"}` | `-688009/1000000 + 1 * r` |
| 22 | coordinate | `{"box":965,"direction":"lo","value":"353117/500000","variable":"j"}` | `-353117/500000 + 1 * j` |
| 23 | coordinate | `{"box":965,"direction":"lo","value":"616377/1000000","variable":"k"}` | `-616377/1000000 + 1 * k` |
| 24 | coordinate | `{"box":965,"direction":"lo","value":"45433/200000","variable":"e"}` | `-45433/200000 + 1 * e` |
| 25 | coordinate | `{"box":965,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 26 | coordinate | `{"box":965,"direction":"lo","value":"721163/1000000","variable":"h"}` | `-721163/1000000 + 1 * h` |
| 27 | coordinate | `{"box":965,"direction":"lo","value":"155651/500000","variable":"u"}` | `-155651/500000 + 1 * u` |
| 28 | coordinate | `{"box":965,"direction":"lo","value":"12057/50000","variable":"v"}` | `-12057/50000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 32059000000 | 5 |
| 1 | 14581000000 | 1 |
| 2 | 67130000000 | 6 |
| 3 | 11818000000 | 0 |
| 4 | 23037000000 | 7 |
| 5 | 16567000000 | 8 |
| 6 | 42934000000 | 2 |
| 7 | 72782000000 | 3 |
| 8 | 16567000000 | 4 |
| 9 | 67130000000 | 15, 20 |
| 10 | 101986000000 | 20, 26 |
| 11 | 4749000000 | 20, 28 |
| 12 | 14581000000 | 9, 18 |
| 13 | 29016000000 | 11, 19 |
| 14 | 17624000000 | 9, 21 |
| 15 | 39604000000 | 14, 20 |
| 16 | 27029000000 | 21, 24 |
| 17 | 47964000000 | 11, 15 |
| 18 | 42934000000 | 13, 24 |
| 19 | 72782000000 | 17, 25 |
| 20 | 72782000000 | 12, 16 |
| 21 | 11818000000 | 18, 26 |
| 22 | 72782000000 | 11, 17 |
| 23 | 23037000000 | 13, 26 |
| 24 | 1986000000 | 12, 18 |
| 25 | 1986000000 | 11, 28 |
| 26 | 26367000000 | 11, 23 |
| 27 | 26367000000 | 12, 13 |
| 28 | 149099 | 12 |
| 29 | 126107 | 9 |
| 30 | 375753 | 26 |
| 31 | 1000000 | 10, 26 |
| 32 | 721163 | 10 |
| 33 | 556742 | 17 |
| 34 | 13136 | 23 |
| 35 | 112166 | 11 |
| 36 | 225441 | 15 |
| 37 | 10103188686 | 20 |
| 38 | 582684 | 28 |
| 39 | 74614 | 27 |
| 40 | 465859 | 22 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -3688964092484091/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -3688964092484091/1000000 | 1 | -3688964092484091/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 965 | -3688964092484091/1000000 |

## Stage 966

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP+/BQS-/PQS+/QRS-/EPQ+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP+/BQS-/PQS+/QRS-/EPQ+:LLHHHLHLH |
| Index | 0 |
| Context | 171 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 956 |
| Coordinate cut | c high 87563/100000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 112077/250000 | 103767/1000000 | 112077/250000 |
| b | 103767/1000000 | 278371/500000 | 103767/1000000 | 278371/500000 |
| c | 87563/100000 | 1 | 87563/100000 | 1 |
| e | 103767/1000000 | 112077/250000 | 103767/1000000 | 112077/250000 |
| f | 279/1000 | 344349/500000 | 279/1000 | 344349/500000 |
| h | 721163/1000000 | 1 | 721163/1000000 | 1 |
| p | 22907/200000 | 102531/250000 | 22907/200000 | 102531/250000 |
| q | 323029/1000000 | 158779/250000 | 323029/1000000 | 158779/250000 |
| u | 155651/500000 | 622889/1000000 | 155651/500000 | 622889/1000000 |
| v | 12057/50000 | 272719/500000 | 12057/50000 | 272719/500000 |
| r | 688009/1000000 | 1 | 688009/1000000 | 1 |
| w | 796617/1000000 | 1 | 796617/1000000 | 1 |
| j | 353117/500000 | 896233/1000000 | 353117/500000 | 896233/1000000 |
| k | 616377/1000000 | 871013/1000000 | 616377/1000000 | 871013/1000000 |

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
| 0 | bound | `{"direction":"lo","ref":"385:1320","triangle":"CEP","value":"319469/1000000"}` | `1 * q + -1 * c * q + -1 * e * p + 1 * c * e + -319469/1000000` |
| 1 | physical | `{"factor":104,"stage":385}` | `1/1 * p * v + -1/1 * e * p + -1/1 * v + -1/1 * q * u + 1/1 * q + 1/1 * e * u + -93/1000` |
| 2 | physical | `{"factor":109,"stage":385}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 3 | physical | `{"factor":129,"stage":385}` | `-1/1 * r * k + 1/1 * v * r + 1/1 * u * k + 1/1 * w * j + -1/1 * u * w + -1/1 * v * j + -93/1000` |
| 4 | physical | `{"factor":29,"stage":385}` | `1/1 * w + -1/1 * a + -1/1 * e * r + 1/1 * a * r + -13857/20000` |
| 5 | physical | `{"factor":40,"stage":385}` | `-1/1 * p * v + 1/1 * a * p + 1/1 * q * u + -1/1 * a * u + -93/1000` |
| 6 | physical | `{"factor":41,"stage":385}` | `1/1 * p * w + -1/1 * a * p + -1/1 * q * r + 1/1 * a * r + -93/1000` |
| 7 | physical | `{"factor":70,"stage":385}` | `1/1 * b * k + 1/1 * h * j + -1/1 * b * h + -13857/20000` |
| 8 | physical | `{"factor":74,"stage":385}` | `-1/1 * u * k + 1/1 * b * k + 1/1 * v * j + -1/1 * b * v + -93/1000` |
| 9 | physical | `{"factor":81,"stage":385}` | `1/1 * k + -1/1 * c * k + -1/1 * e * j + 1/1 * c * e + -93/1000` |
| 10 | physical | `{"factor":86,"stage":385}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 11 | physical | `{"factor":87,"stage":385}` | `1/1 * c * v + 1/1 * h * u + -1/1 * c * h + -93/1000` |
| 12 | physical | `{"factor":90,"stage":385}` | `-1/1 * p * v + 1/1 * c * v + 1/1 * q * u + -1/1 * c * q + -93/1000` |
| 13 | coordinate | `{"box":966,"direction":"hi","value":"112077/250000","variable":"a"}` | `112077/250000 + -1 * a` |
| 14 | coordinate | `{"box":966,"direction":"hi","value":"278371/500000","variable":"b"}` | `278371/500000 + -1 * b` |
| 15 | coordinate | `{"box":966,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 16 | coordinate | `{"box":966,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 17 | coordinate | `{"box":966,"direction":"hi","value":"896233/1000000","variable":"j"}` | `896233/1000000 + -1 * j` |
| 18 | coordinate | `{"box":966,"direction":"hi","value":"871013/1000000","variable":"k"}` | `871013/1000000 + -1 * k` |
| 19 | coordinate | `{"box":966,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 20 | coordinate | `{"box":966,"direction":"hi","value":"112077/250000","variable":"e"}` | `112077/250000 + -1 * e` |
| 21 | coordinate | `{"box":966,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 22 | coordinate | `{"box":966,"direction":"hi","value":"102531/250000","variable":"p"}` | `102531/250000 + -1 * p` |
| 23 | coordinate | `{"box":966,"direction":"hi","value":"158779/250000","variable":"q"}` | `158779/250000 + -1 * q` |
| 24 | coordinate | `{"box":966,"direction":"hi","value":"622889/1000000","variable":"u"}` | `622889/1000000 + -1 * u` |
| 25 | coordinate | `{"box":966,"direction":"hi","value":"272719/500000","variable":"v"}` | `272719/500000 + -1 * v` |
| 26 | coordinate | `{"box":966,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 27 | coordinate | `{"box":966,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 28 | coordinate | `{"box":966,"direction":"lo","value":"688009/1000000","variable":"r"}` | `-688009/1000000 + 1 * r` |
| 29 | coordinate | `{"box":966,"direction":"lo","value":"616377/1000000","variable":"k"}` | `-616377/1000000 + 1 * k` |
| 30 | coordinate | `{"box":966,"direction":"lo","value":"87563/100000","variable":"c"}` | `-87563/100000 + 1 * c` |
| 31 | coordinate | `{"box":966,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 32 | coordinate | `{"box":966,"direction":"lo","value":"721163/1000000","variable":"h"}` | `-721163/1000000 + 1 * h` |
| 33 | coordinate | `{"box":966,"direction":"lo","value":"22907/200000","variable":"p"}` | `-22907/200000 + 1 * p` |
| 34 | coordinate | `{"box":966,"direction":"lo","value":"323029/1000000","variable":"q"}` | `-323029/1000000 + 1 * q` |
| 35 | coordinate | `{"box":966,"direction":"lo","value":"12057/50000","variable":"v"}` | `-12057/50000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 23372000000 | 4 |
| 1 | 30813000000 | 5 |
| 2 | 40029000000 | 6 |
| 3 | 7465000000 | 7 |
| 4 | 15132000000 | 8 |
| 5 | 34575000000 | 0 |
| 6 | 20515000000 | 9 |
| 7 | 3971000000 | 10 |
| 8 | 33491000000 | 11 |
| 9 | 15381000000 | 12 |
| 10 | 46194000000 | 1 |
| 11 | 20515000000 | 2 |
| 12 | 15132000000 | 3 |
| 13 | 6420000000 | 27, 32 |
| 14 | 1045000000 | 14, 21 |
| 15 | 9216000000 | 26, 33 |
| 16 | 15132000000 | 14, 25 |
| 17 | 30813000000 | 13, 24 |
| 18 | 63401000000 | 13, 28 |
| 19 | 22597000000 | 14, 29 |
| 20 | 55091000000 | 20, 30 |
| 21 | 29520000000 | 30, 32 |
| 22 | 53927000000 | 30, 34 |
| 23 | 48872000000 | 25, 30 |
| 24 | 20515000000 | 29, 30 |
| 25 | 80769000000 | 20, 22 |
| 26 | 43887000000 | 15, 20 |
| 27 | 3971000000 | 32, 33 |
| 28 | 33491000000 | 24, 32 |
| 29 | 7465000000 | 17, 32 |
| 30 | 40029000000 | 16, 33 |
| 31 | 20770000000 | 28, 34 |
| 32 | 19259000000 | 15, 23 |
| 33 | 15132000000 | 16, 24 |
| 34 | 4531000000 | 15, 35 |
| 35 | 10601000000 | 25, 28 |
| 36 | 5383000000 | 15, 29 |
| 37 | 5383000000 | 16, 17 |
| 38 | 46194000000 | 24, 31 |
| 39 | 34221742928 | 16 |
| 40 | 174708 | 26 |
| 41 | 45940 | 34 |
| 42 | 1000000 | 30, 31 |
| 43 | 103767 | 30 |
| 44 | 875630 | 31 |
| 45 | 149524 | 18 |
| 46 | 247175 | 35 |
| 47 | 163207 | 27 |
| 48 | 159229 | 21 |
| 49 | 443797 | 33 |
| 50 | 168427 | 24 |
| 51 | 21907 | 15 |
| 52 | 761440 | 20 |
| 53 | 691166 | 19 |
| 54 | 481795 | 17 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -686678211434569/200000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -686678211434569/200000 | 1 | -686678211434569/200000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 966 | -686678211434569/200000 |

## Stage 967

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP+/BQS-/PQS+/QRS-/EPQ+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP+/BQS-/PQS+/QRS-/EPQ+:LLHHHLHH |
| Index | 0 |
| Context | 171 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 955 |
| Coordinate cut | u high 622889/1000000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 112077/250000 | 103767/1000000 | 112077/250000 |
| b | 103767/1000000 | 278371/500000 | 103767/1000000 | 278371/500000 |
| c | 135501/250000 | 1 | 135501/250000 | 1 |
| e | 103767/1000000 | 112077/250000 | 103767/1000000 | 112077/250000 |
| f | 279/1000 | 344349/500000 | 279/1000 | 344349/500000 |
| h | 721163/1000000 | 1 | 721163/1000000 | 1 |
| p | 22907/200000 | 102531/250000 | 22907/200000 | 102531/250000 |
| q | 323029/1000000 | 158779/250000 | 323029/1000000 | 158779/250000 |
| u | 622889/1000000 | 750147/1000000 | 622889/1000000 | 750147/1000000 |
| v | 12057/50000 | 272719/500000 | 12057/50000 | 272719/500000 |
| r | 688009/1000000 | 1 | 688009/1000000 | 1 |
| w | 796617/1000000 | 1 | 796617/1000000 | 1 |
| j | 353117/500000 | 896233/1000000 | 353117/500000 | 896233/1000000 |
| k | 616377/1000000 | 871013/1000000 | 616377/1000000 | 871013/1000000 |

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
| 0 | physical | `{"factor":104,"stage":385}` | `1/1 * p * v + -1/1 * e * p + -1/1 * v + -1/1 * q * u + 1/1 * q + 1/1 * e * u + -93/1000` |
| 1 | physical | `{"factor":109,"stage":385}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 2 | physical | `{"factor":112,"stage":385}` | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 3 | physical | `{"factor":129,"stage":385}` | `-1/1 * r * k + 1/1 * v * r + 1/1 * u * k + 1/1 * w * j + -1/1 * u * w + -1/1 * v * j + -93/1000` |
| 4 | physical | `{"factor":131,"stage":385}` | `1/1 * e + -1/1 * a` |
| 5 | physical | `{"factor":133,"stage":385}` | `1/1 * f + -1/1 * b` |
| 6 | physical | `{"factor":29,"stage":385}` | `1/1 * w + -1/1 * a + -1/1 * e * r + 1/1 * a * r + -13857/20000` |
| 7 | physical | `{"factor":40,"stage":385}` | `-1/1 * p * v + 1/1 * a * p + 1/1 * q * u + -1/1 * a * u + -93/1000` |
| 8 | physical | `{"factor":41,"stage":385}` | `1/1 * p * w + -1/1 * a * p + -1/1 * q * r + 1/1 * a * r + -93/1000` |
| 9 | physical | `{"factor":70,"stage":385}` | `1/1 * b * k + 1/1 * h * j + -1/1 * b * h + -13857/20000` |
| 10 | physical | `{"factor":74,"stage":385}` | `-1/1 * u * k + 1/1 * b * k + 1/1 * v * j + -1/1 * b * v + -93/1000` |
| 11 | physical | `{"factor":86,"stage":385}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 12 | physical | `{"factor":90,"stage":385}` | `-1/1 * p * v + 1/1 * c * v + 1/1 * q * u + -1/1 * c * q + -93/1000` |
| 13 | physical | `{"factor":99,"stage":385}` | `-1/1 * f * k + 1/1 * e * f + 1/1 * k + 1/1 * j + -1093/1000 + -1/1 * e * j` |
| 14 | coordinate | `{"box":967,"direction":"hi","value":"112077/250000","variable":"a"}` | `112077/250000 + -1 * a` |
| 15 | coordinate | `{"box":967,"direction":"hi","value":"278371/500000","variable":"b"}` | `278371/500000 + -1 * b` |
| 16 | coordinate | `{"box":967,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 17 | coordinate | `{"box":967,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 18 | coordinate | `{"box":967,"direction":"hi","value":"896233/1000000","variable":"j"}` | `896233/1000000 + -1 * j` |
| 19 | coordinate | `{"box":967,"direction":"hi","value":"871013/1000000","variable":"k"}` | `871013/1000000 + -1 * k` |
| 20 | coordinate | `{"box":967,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 21 | coordinate | `{"box":967,"direction":"hi","value":"112077/250000","variable":"e"}` | `112077/250000 + -1 * e` |
| 22 | coordinate | `{"box":967,"direction":"hi","value":"344349/500000","variable":"f"}` | `344349/500000 + -1 * f` |
| 23 | coordinate | `{"box":967,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 24 | coordinate | `{"box":967,"direction":"hi","value":"102531/250000","variable":"p"}` | `102531/250000 + -1 * p` |
| 25 | coordinate | `{"box":967,"direction":"hi","value":"158779/250000","variable":"q"}` | `158779/250000 + -1 * q` |
| 26 | coordinate | `{"box":967,"direction":"hi","value":"750147/1000000","variable":"u"}` | `750147/1000000 + -1 * u` |
| 27 | coordinate | `{"box":967,"direction":"hi","value":"272719/500000","variable":"v"}` | `272719/500000 + -1 * v` |
| 28 | coordinate | `{"box":967,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 29 | coordinate | `{"box":967,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 30 | coordinate | `{"box":967,"direction":"lo","value":"688009/1000000","variable":"r"}` | `-688009/1000000 + 1 * r` |
| 31 | coordinate | `{"box":967,"direction":"lo","value":"796617/1000000","variable":"w"}` | `-796617/1000000 + 1 * w` |
| 32 | coordinate | `{"box":967,"direction":"lo","value":"353117/500000","variable":"j"}` | `-353117/500000 + 1 * j` |
| 33 | coordinate | `{"box":967,"direction":"lo","value":"616377/1000000","variable":"k"}` | `-616377/1000000 + 1 * k` |
| 34 | coordinate | `{"box":967,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 35 | coordinate | `{"box":967,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 36 | coordinate | `{"box":967,"direction":"lo","value":"721163/1000000","variable":"h"}` | `-721163/1000000 + 1 * h` |
| 37 | coordinate | `{"box":967,"direction":"lo","value":"22907/200000","variable":"p"}` | `-22907/200000 + 1 * p` |
| 38 | coordinate | `{"box":967,"direction":"lo","value":"323029/1000000","variable":"q"}` | `-323029/1000000 + 1 * q` |
| 39 | coordinate | `{"box":967,"direction":"lo","value":"622889/1000000","variable":"u"}` | `-622889/1000000 + 1 * u` |
| 40 | coordinate | `{"box":967,"direction":"lo","value":"12057/50000","variable":"v"}` | `-12057/50000 + 1 * v` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 2521000000 | 6 |
| 1 | 18473000000 | 7 |
| 2 | 18473000000 | 8 |
| 3 | 13959000000 | 9 |
| 4 | 79827000000 | 10 |
| 5 | 6187000000 | 11 |
| 6 | 1351000000 | 12 |
| 7 | 1833000000 | 13 |
| 8 | 36229000000 | 0 |
| 9 | 43103000000 | 1 |
| 10 | 11634000000 | 2 |
| 11 | 10109000000 | 3 |
| 12 | 416000000 | 4 |
| 13 | 308000000 | 5 |
| 14 | 13959000000 | 15, 23 |
| 15 | 79827000000 | 15, 27 |
| 16 | 18473000000 | 28, 39 |
| 17 | 20994000000 | 14, 30 |
| 18 | 93786000000 | 15, 33 |
| 19 | 6187000000 | 20, 36 |
| 20 | 7538000000 | 20, 25 |
| 21 | 1351000000 | 20, 40 |
| 22 | 1833000000 | 21, 35 |
| 23 | 36229000000 | 21, 24 |
| 24 | 45624000000 | 16, 21 |
| 25 | 41270000000 | 18, 34 |
| 26 | 11634000000 | 23, 35 |
| 27 | 11634000000 | 17, 22 |
| 28 | 1833000000 | 33, 35 |
| 29 | 6187000000 | 23, 24 |
| 30 | 11634000000 | 16, 23 |
| 31 | 13959000000 | 18, 36 |
| 32 | 16405000000 | 24, 40 |
| 33 | 16405000000 | 38, 39 |
| 34 | 18473000000 | 17, 37 |
| 35 | 18473000000 | 16, 25 |
| 36 | 10109000000 | 17, 26 |
| 37 | 10109000000 | 16, 40 |
| 38 | 32994000000 | 16, 33 |
| 39 | 32993000000 | 17, 18 |
| 40 | 36229000000 | 21, 39 |
| 41 | 69718000000 | 33, 39 |
| 42 | 69718000000 | 18, 40 |
| 43 | 2574841131 | 17 |
| 44 | 255560 | 28 |
| 45 | 688009 | 14 |
| 46 | 1064685 | 16 |
| 47 | 377090 | 33 |
| 48 | 976927 | 18 |
| 49 | 387120 | 40 |
| 50 | 494045 | 38 |
| 51 | 1000000 | 19 |
| 52 | 1000000 | 31, 32 |
| 53 | 706234 | 31 |
| 54 | 796617 | 32 |
| 55 | 961595 | 30 |
| 56 | 793905 | 34 |
| 57 | 70477 | 35 |
| 58 | 145904 | 29 |
| 59 | 403681 | 23 |
| 60 | 44055999690 | 39 |
| 61 | 111213 | 20 |
| 62 | 151168 | 24 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -4165967622217619/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -4165967622217619/1000000 | 1 | -4165967622217619/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 967 | -4165967622217619/1000000 |

## Stage 968

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP+/BQS-/PQS+/QRS-/EPQ+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP+/BQS-/PQS+/QRS-/EPQ+:LLHHHH |
| Index | 0 |
| Context | 171 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 952 |
| Coordinate cut | p high 102531/250000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 112077/250000 | 103767/1000000 | 112077/250000 |
| b | 103767/1000000 | 278371/500000 | 103767/1000000 | 278371/500000 |
| c | 135501/250000 | 1 | 135501/250000 | 1 |
| e | 103767/1000000 | 112077/250000 | 103767/1000000 | 112077/250000 |
| f | 279/1000 | 344349/500000 | 279/1000 | 344349/500000 |
| h | 721163/1000000 | 1 | 721163/1000000 | 1 |
| p | 102531/250000 | 568313/1000000 | 102531/250000 | 568313/1000000 |
| q | 323029/1000000 | 158779/250000 | 323029/1000000 | 158779/250000 |
| u | 155651/500000 | 750147/1000000 | 155651/500000 | 750147/1000000 |
| v | 12057/50000 | 272719/500000 | 12057/50000 | 272719/500000 |
| r | 295151/500000 | 1 | 295151/500000 | 1 |
| w | 796617/1000000 | 1 | 796617/1000000 | 1 |
| j | 353117/500000 | 896233/1000000 | 353117/500000 | 896233/1000000 |
| k | 616377/1000000 | 871013/1000000 | 616377/1000000 | 871013/1000000 |

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
| 0 | bound | `{"direction":"lo","ref":"385:1058","triangle":"PQR","value":"145529/1000000"}` | `1 * u * w + -1 * q * u + -1 * p * w + -1 * v * r + 1 * p * v + 1 * q * r + -145529/1000000` |
| 1 | bound | `{"direction":"lo","ref":"385:1320","triangle":"CEP","value":"319469/1000000"}` | `1 * q + -1 * c * q + -1 * e * p + 1 * c * e + -319469/1000000` |
| 2 | bound | `{"direction":"lo","ref":"385:1392","triangle":"BPQ","value":"48601/500000"}` | `-1 * p * v + 1 * b * v + 1 * q * u + -1 * b * q + -48601/500000` |
| 3 | bound | `{"direction":"lo","ref":"385:1419","triangle":"BPS","value":"145381/500000"}` | `-1 * p * k + 1 * b * k + 1 * q * j + -1 * b * q + -145381/500000` |
| 4 | physical | `{"factor":109,"stage":385}` | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 5 | physical | `{"factor":112,"stage":385}` | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 6 | physical | `{"factor":129,"stage":385}` | `-1/1 * r * k + 1/1 * v * r + 1/1 * u * k + 1/1 * w * j + -1/1 * u * w + -1/1 * v * j + -93/1000` |
| 7 | physical | `{"factor":29,"stage":385}` | `1/1 * w + -1/1 * a + -1/1 * e * r + 1/1 * a * r + -13857/20000` |
| 8 | physical | `{"factor":63,"stage":385}` | `1/1 * f * q + -1/1 * b * q + -1/1 * p + 1/1 * b + -93/1000` |
| 9 | physical | `{"factor":74,"stage":385}` | `-1/1 * u * k + 1/1 * b * k + 1/1 * v * j + -1/1 * b * v + -93/1000` |
| 10 | physical | `{"factor":86,"stage":385}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 11 | physical | `{"factor":98,"stage":385}` | `-1/1 * f * w + 1/1 * e * f + 1/1 * w + 1/1 * r + -1279/1000 + -1/1 * e * r` |
| 12 | coordinate | `{"box":968,"direction":"hi","value":"278371/500000","variable":"b"}` | `278371/500000 + -1 * b` |
| 13 | coordinate | `{"box":968,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 14 | coordinate | `{"box":968,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 15 | coordinate | `{"box":968,"direction":"hi","value":"896233/1000000","variable":"j"}` | `896233/1000000 + -1 * j` |
| 16 | coordinate | `{"box":968,"direction":"hi","value":"871013/1000000","variable":"k"}` | `871013/1000000 + -1 * k` |
| 17 | coordinate | `{"box":968,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 18 | coordinate | `{"box":968,"direction":"hi","value":"112077/250000","variable":"e"}` | `112077/250000 + -1 * e` |
| 19 | coordinate | `{"box":968,"direction":"hi","value":"344349/500000","variable":"f"}` | `344349/500000 + -1 * f` |
| 20 | coordinate | `{"box":968,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 21 | coordinate | `{"box":968,"direction":"hi","value":"158779/250000","variable":"q"}` | `158779/250000 + -1 * q` |
| 22 | coordinate | `{"box":968,"direction":"lo","value":"103767/1000000","variable":"a"}` | `-103767/1000000 + 1 * a` |
| 23 | coordinate | `{"box":968,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 24 | coordinate | `{"box":968,"direction":"lo","value":"796617/1000000","variable":"w"}` | `-796617/1000000 + 1 * w` |
| 25 | coordinate | `{"box":968,"direction":"lo","value":"616377/1000000","variable":"k"}` | `-616377/1000000 + 1 * k` |
| 26 | coordinate | `{"box":968,"direction":"lo","value":"135501/250000","variable":"c"}` | `-135501/250000 + 1 * c` |
| 27 | coordinate | `{"box":968,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 28 | coordinate | `{"box":968,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 29 | coordinate | `{"box":968,"direction":"lo","value":"721163/1000000","variable":"h"}` | `-721163/1000000 + 1 * h` |
| 30 | coordinate | `{"box":968,"direction":"lo","value":"102531/250000","variable":"p"}` | `-102531/250000 + 1 * p` |
| 31 | coordinate | `{"box":968,"direction":"lo","value":"323029/1000000","variable":"q"}` | `-323029/1000000 + 1 * q` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 6327000000 | 7 |
| 1 | 3126000000 | 8 |
| 2 | 15132000000 | 2 |
| 3 | 45747000000 | 3 |
| 4 | 15132000000 | 9 |
| 5 | 84242000000 | 1 |
| 6 | 29792000000 | 10 |
| 7 | 1831000000 | 11 |
| 8 | 33372000000 | 4 |
| 9 | 5449000000 | 5 |
| 10 | 15132000000 | 0 |
| 11 | 15132000000 | 6 |
| 12 | 64005000000 | 12, 21 |
| 13 | 6327000000 | 13, 22 |
| 14 | 60879000000 | 12, 25 |
| 15 | 84242000000 | 18, 26 |
| 16 | 29792000000 | 20, 26 |
| 17 | 15593000000 | 26, 31 |
| 18 | 98441000000 | 17, 21 |
| 19 | 1831000000 | 18, 28 |
| 20 | 84242000000 | 27, 30 |
| 21 | 41530000000 | 13, 18 |
| 22 | 33372000000 | 15, 27 |
| 23 | 5449000000 | 20, 28 |
| 24 | 3126000000 | 19, 31 |
| 25 | 7280000000 | 14, 19 |
| 26 | 29792000000 | 29, 30 |
| 27 | 5449000000 | 13, 20 |
| 28 | 15132000000 | 24, 30 |
| 29 | 15132000000 | 13, 31 |
| 30 | 18240000000 | 13, 25 |
| 31 | 18240000000 | 14, 15 |
| 32 | 45747000000 | 25, 30 |
| 33 | 45747000000 | 15, 31 |
| 34 | 13962992272 | 14 |
| 35 | 73604234773 | 30 |
| 36 | 800574 | 23 |
| 37 | 616377 | 12 |
| 38 | 556742 | 16 |
| 39 | 100917 | 21 |
| 40 | 93877 | 13 |
| 41 | 603152 | 25 |
| 42 | 228364 | 27 |
| 43 | 82817 | 26 |
| 44 | 239960 | 20 |
| 45 | 359398 | 28 |
| 46 | 519987 | 15 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -359672344523697/50000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -359672344523697/50000 | 1 | -359672344523697/50000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 968 | -359672344523697/50000 |

## Stage 969

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS-/BFP+/BQS-/PQS+/QRS-/EPQ+ |
| Packet | coordinate:root/AEP+/AFP-/APR+/ARS-/BFP+/BQS-/PQS+/QRS-/EPQ+:LH |
| Index | 0 |
| Context | 171 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 925 |
| Coordinate cut | q high 158779/250000 |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 112077/250000 | 103767/1000000 | 112077/250000 |
| b | 103767/1000000 | 278371/500000 | 103767/1000000 | 278371/500000 |
| c | 135501/250000 | 1 | 135501/250000 | 1 |
| e | 103767/1000000 | 112077/250000 | 103767/1000000 | 112077/250000 |
| f | 279/1000 | 344349/500000 | 279/1000 | 344349/500000 |
| h | 721163/1000000 | 1 | 721163/1000000 | 1 |
| p | 22907/200000 | 568313/1000000 | 22907/200000 | 568313/1000000 |
| q | 158779/250000 | 158493/200000 | 158779/250000 | 158493/200000 |
| u | 155651/500000 | 750147/1000000 | 155651/500000 | 750147/1000000 |
| v | 103767/1000000 | 272719/500000 | 103767/1000000 | 272719/500000 |
| r | 295151/500000 | 1 | 295151/500000 | 1 |
| w | 796617/1000000 | 1 | 796617/1000000 | 1 |
| j | 353117/500000 | 896233/1000000 | 353117/500000 | 896233/1000000 |
| k | 361741/1000000 | 871013/1000000 | 361741/1000000 | 871013/1000000 |

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
| 0 | bound | `{"direction":"lo","ref":"385:1233","triangle":"EHP","value":"132227/1000000"}` | `-1 * q + -1 * h * p + 1 * h + 1 * e * p + -132227/1000000` |
| 1 | bound | `{"direction":"lo","ref":"385:1320","triangle":"CEP","value":"319469/1000000"}` | `1 * q + -1 * c * q + -1 * e * p + 1 * c * e + -319469/1000000` |
| 2 | physical | `{"factor":112,"stage":385}` | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 3 | physical | `{"factor":131,"stage":385}` | `1/1 * e + -1/1 * a` |
| 4 | physical | `{"factor":133,"stage":385}` | `1/1 * f + -1/1 * b` |
| 5 | physical | `{"factor":142,"stage":385}` | `907/1000 + -1/1 * p + -1/1 * q` |
| 6 | physical | `{"factor":41,"stage":385}` | `1/1 * p * w + -1/1 * a * p + -1/1 * q * r + 1/1 * a * r + -93/1000` |
| 7 | physical | `{"factor":63,"stage":385}` | `1/1 * f * q + -1/1 * b * q + -1/1 * p + 1/1 * b + -93/1000` |
| 8 | physical | `{"factor":86,"stage":385}` | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 9 | physical | `{"factor":98,"stage":385}` | `-1/1 * f * w + 1/1 * e * f + 1/1 * w + 1/1 * r + -1279/1000 + -1/1 * e * r` |
| 10 | coordinate | `{"box":969,"direction":"hi","value":"112077/250000","variable":"a"}` | `112077/250000 + -1 * a` |
| 11 | coordinate | `{"box":969,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 12 | coordinate | `{"box":969,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 13 | coordinate | `{"box":969,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 14 | coordinate | `{"box":969,"direction":"hi","value":"112077/250000","variable":"e"}` | `112077/250000 + -1 * e` |
| 15 | coordinate | `{"box":969,"direction":"hi","value":"344349/500000","variable":"f"}` | `344349/500000 + -1 * f` |
| 16 | coordinate | `{"box":969,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 17 | coordinate | `{"box":969,"direction":"hi","value":"568313/1000000","variable":"p"}` | `568313/1000000 + -1 * p` |
| 18 | coordinate | `{"box":969,"direction":"lo","value":"103767/1000000","variable":"b"}` | `-103767/1000000 + 1 * b` |
| 19 | coordinate | `{"box":969,"direction":"lo","value":"295151/500000","variable":"r"}` | `-295151/500000 + 1 * r` |
| 20 | coordinate | `{"box":969,"direction":"lo","value":"135501/250000","variable":"c"}` | `-135501/250000 + 1 * c` |
| 21 | coordinate | `{"box":969,"direction":"lo","value":"103767/1000000","variable":"e"}` | `-103767/1000000 + 1 * e` |
| 22 | coordinate | `{"box":969,"direction":"lo","value":"279/1000","variable":"f"}` | `-279/1000 + 1 * f` |
| 23 | coordinate | `{"box":969,"direction":"lo","value":"721163/1000000","variable":"h"}` | `-721163/1000000 + 1 * h` |
| 24 | coordinate | `{"box":969,"direction":"lo","value":"22907/200000","variable":"p"}` | `-22907/200000 + 1 * p` |
| 25 | coordinate | `{"box":969,"direction":"lo","value":"158779/250000","variable":"q"}` | `-158779/250000 + 1 * q` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 32543000000 | 6 |
| 1 | 2528000000 | 7 |
| 2 | 711000000 | 1 |
| 3 | 4390000000 | 8 |
| 4 | 4582500000 | 9 |
| 5 | 711000000 | 0 |
| 6 | 7073500000 | 2 |
| 7 | 715500000 | 3 |
| 8 | 922500000 | 4 |
| 9 | 10324500000 | 5 |
| 10 | 2528000000 | 18, 25 |
| 11 | 32543000000 | 10, 17 |
| 12 | 32543000000 | 10, 19 |
| 13 | 711000000 | 13, 21 |
| 14 | 4390000000 | 13, 23 |
| 15 | 5101000000 | 20, 25 |
| 16 | 4582500000 | 14, 22 |
| 17 | 4582500000 | 19, 21 |
| 18 | 7073500000 | 16, 22 |
| 19 | 2528000000 | 15, 25 |
| 20 | 11656000000 | 12, 15 |
| 21 | 5101000000 | 16, 17 |
| 22 | 7073500000 | 19, 23 |
| 23 | 32543000000 | 12, 24 |
| 24 | 32543000000 | 19, 25 |
| 25 | 212756 | 17 |
| 26 | 73248 | 18 |
| 27 | 30820754822 | 25 |
| 28 | 282348617 | 12 |
| 29 | 48498 | 11 |
| 30 | 40690 | 16 |
| 31 | 41415 | 21 |
| 32 | 88027 | 10 |
| 33 | 55342 | 22 |
| 34 | 42809 | 20 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `1` | -3036402912527213/1000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `1` | -3036402912527213/1000000 | 1 | -3036402912527213/1000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 969 | -3036402912527213/1000000 |
