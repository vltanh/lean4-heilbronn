# BITT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 190

| Property | Value |
| --- | --- |
| Scope | root/ACP+/HBP-/HEQ-/CFQ- |
| Packet | forest:root/ACP+/HBP-/HEQ-/CFQ- |
| Index | 7 |
| Context | 73 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 189 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 17183/125000 | 59/125 | 17183/125000 | 59/125 |
| b | 40433/125000 | 1381/2500 | 40433/125000 | 552399/1000000 |
| c | 13857/20000 | 1/1 | 13857/20000 | 1/1 |
| e | 17183/125000 | 59/125 | 17183/125000 | 59/125 |
| f | 40433/125000 | 1381/2500 | 40433/125000 | 552399/1000000 |
| h | 13857/20000 | 1/1 | 13857/20000 | 1/1 |
| p | 107821/1000000 | 168379/500000 | 107821/1000000 | 336757/1000000 |
| q | 111009/500000 | 318229/500000 | 111009/500000 | 636457/1000000 |
| u | 112009/200000 | 907/1000 | 112009/200000 | 907/1000 |
| v | 17183/125000 | 611297/1000000 | 17183/125000 | 611297/1000000 |
| r | 96383/125000 | 1/1 | 154213/200000 | 1/1 |
| w | 274929/500000 | 1/1 | 274929/500000 | 1/1 |
| j | 269553/500000 | 892179/1000000 | 269553/500000 | 892179/1000000 |
| k | 412393/1000000 | 107817/125000 | 412393/1000000 | 107817/125000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 55 | A_BHP | bitt ["actual-area","BHP",[]] | `-1/1 * b * q + -1/1 * h * p + 1/1 * b * h + -93/1000` |
| 116 | fb | bitt ["contact-order","fb"] | `1/1 * f + -1/1 * b` |
| 520 | AREA_lo_CFR | bitt ["earlier-area",{"direction":"lo","ref":"189:199","triangle":"CFR","value":"447601/1000000"}] | `-1/1 * f * w + 1/1 * c * w + 1/1 * r + -1/1 * c + -447601/1000000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 520 | f | 40433/125000 | 1381/2500 | 40433/125000 | 552399/1000000 | 40433/125000 | 552399/1000000 | `(-274929/500000, 115821153/10000000000); (-274929/500000, -126679/1000000); (-274929/500000, 2405181153/10000000000); (-274929/500000, 102257/1000000); (-1/1, 323463/1000000); (-1/1, 552399/1000000)` |
| 1 | 520 | r | 96383/125000 | 1/1 | 154213/200000 | 1/1 | 154213/200000 | 1/1 | `(1/1, -234335288203/250000000000); (1/1, -67225141757/62500000000); (1/1, -531611447021/500000000000); (1/1, -600742004671/500000000000); (1/1, -154213/200000); (1/1, -1/1)` |
| 2 | 116 | b | 40433/125000 | 1381/2500 | 40433/125000 | 552399/1000000 | 40433/125000 | 552399/1000000 | `(-1/1, 40433/125000); (-1/1, 552399/1000000)` |
| 3 | 55 | p | 107821/1000000 | 168379/500000 | 107821/1000000 | 168378239409/500000000000 | 107821/1000000 | 336757/1000000 | `(-13857/20000, 463259391/7812500000); (-13857/20000, 10442945373/62500000000); (-1/1, 9915573103/62500000000); (-1/1, 168378239409/500000000000); (-13857/20000, -1168112783/15625000000); (-13857/20000, -7731139449/125000000000); (-1/1, 1537046843/62500000000); (-1/1, 53910118629/500000000000)` |
| 4 | 55 | q | 111009/500000 | 318229/500000 | 111009/500000 | 351578/552399 | 111009/500000 | 636457/1000000 | `(-40433/125000, 1128165051/20000000000); (-552399/1000000, 2150258673/10000000000); (-40433/125000, 122643/1000000); (-552399/1000000, 175789/500000); (-40433/125000, -2044201101/20000000000); (-552399/1000000, 564075597/10000000000); (-40433/125000, -106293/1000000); (-552399/1000000, 61321/500000)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 190:90 | BHQ | lo | 7211/62500 | earlier 189:90; BHQ; lo; 7211/62500 |
| 190:120 | CFR | lo | 447601/1000000 | earlier 189:199; CFR; lo; 447601/1000000 |
| 190:181 | FQR | hi | 16497/31250 | earlier 189:181; FQR; hi; 16497/31250 |
| 190:182 | FQS | lo | 96343/1000000 | earlier 189:182; FQS; lo; 96343/1000000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |


## Stage 191

| Property | Value |
| --- | --- |
| Scope | root/ACP+/HBP-/HEQ-/CFQ- |
| Packet | forest:root/ACP+/HBP-/HEQ-/CFQ- |
| Index | 8 |
| Context | 73 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 190 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 17183/125000 | 59/125 | 17183/125000 | 59/125 |
| b | 40433/125000 | 552399/1000000 | 40433/125000 | 552399/1000000 |
| c | 13857/20000 | 1/1 | 13857/20000 | 1/1 |
| e | 17183/125000 | 59/125 | 17183/125000 | 59/125 |
| f | 40433/125000 | 552399/1000000 | 40433/125000 | 552399/1000000 |
| h | 13857/20000 | 1/1 | 13857/20000 | 1/1 |
| p | 107821/1000000 | 336757/1000000 | 107821/1000000 | 336757/1000000 |
| q | 111009/500000 | 636457/1000000 | 111009/500000 | 636457/1000000 |
| u | 112009/200000 | 907/1000 | 112009/200000 | 907/1000 |
| v | 17183/125000 | 611297/1000000 | 17183/125000 | 611297/1000000 |
| r | 154213/200000 | 1/1 | 154213/200000 | 1/1 |
| w | 274929/500000 | 1/1 | 274929/500000 | 1/1 |
| j | 269553/500000 | 892179/1000000 | 269553/500000 | 892179/1000000 |
| k | 412393/1000000 | 107817/125000 | 412393/1000000 | 107817/125000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |


### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |


### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 191:90 | BHQ | lo | 7211/62500 | earlier 190:90; BHQ; lo; 7211/62500 |
| 191:120 | CFR | lo | 447601/1000000 | earlier 190:120; CFR; lo; 447601/1000000 |
| 191:181 | FQR | hi | 16497/31250 | earlier 190:181; FQR; hi; 16497/31250 |
| 191:182 | FQS | lo | 96343/1000000 | earlier 190:182; FQS; lo; 96343/1000000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |


## Stage 192

| Property | Value |
| --- | --- |
| Scope | root/ACP+/HBP-/HEQ-/CFQ-/PQR+ |
| Packet | forest:root/ACP+/HBP-/HEQ-/CFQ-/PQR+ |
| Index | 0 |
| Context | 74 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 191 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 17183/125000 | 59/125 | 17183/125000 | 59/125 |
| b | 40433/125000 | 552399/1000000 | 40433/125000 | 552399/1000000 |
| c | 13857/20000 | 1/1 | 13857/20000 | 1/1 |
| e | 17183/125000 | 59/125 | 17183/125000 | 59/125 |
| f | 40433/125000 | 552399/1000000 | 40433/125000 | 552399/1000000 |
| h | 13857/20000 | 1/1 | 13857/20000 | 1/1 |
| p | 107821/1000000 | 336757/1000000 | 107821/1000000 | 336757/1000000 |
| q | 111009/500000 | 636457/1000000 | 111009/500000 | 636457/1000000 |
| u | 112009/200000 | 907/1000 | 112009/200000 | 907/1000 |
| v | 17183/125000 | 611297/1000000 | 17183/125000 | 611297/1000000 |
| r | 154213/200000 | 1/1 | 154213/200000 | 1/1 |
| w | 274929/500000 | 1/1 | 274929/500000 | 1/1 |
| j | 269553/500000 | 892179/1000000 | 269553/500000 | 892179/1000000 |
| k | 412393/1000000 | 107817/125000 | 412393/1000000 | 107817/125000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |


### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |


### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 192:90 | BHQ | lo | 7211/62500 | earlier 191:90; BHQ; lo; 7211/62500 |
| 192:120 | CFR | lo | 447601/1000000 | earlier 191:120; CFR; lo; 447601/1000000 |
| 192:181 | FQR | hi | 16497/31250 | earlier 191:181; FQR; hi; 16497/31250 |
| 192:182 | FQS | lo | 96343/1000000 | earlier 191:182; FQS; lo; 96343/1000000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |


## Stage 193

| Property | Value |
| --- | --- |
| Scope | root/ACP+/HBP-/HEQ-/CFQ-/PQR+ |
| Packet | forest:root/ACP+/HBP-/HEQ-/CFQ-/PQR+ |
| Index | 1 |
| Context | 74 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 192 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 17183/125000 | 59/125 | 17183/125000 | 59/125 |
| b | 40433/125000 | 552399/1000000 | 40433/125000 | 552399/1000000 |
| c | 13857/20000 | 1/1 | 13857/20000 | 1/1 |
| e | 17183/125000 | 59/125 | 17183/125000 | 59/125 |
| f | 40433/125000 | 552399/1000000 | 40433/125000 | 552399/1000000 |
| h | 13857/20000 | 1/1 | 13857/20000 | 1/1 |
| p | 107821/1000000 | 336757/1000000 | 107821/1000000 | 336757/1000000 |
| q | 111009/500000 | 636457/1000000 | 111009/500000 | 636457/1000000 |
| u | 112009/200000 | 907/1000 | 112009/200000 | 907/1000 |
| v | 17183/125000 | 611297/1000000 | 17183/125000 | 611297/1000000 |
| r | 154213/200000 | 1/1 | 154213/200000 | 1/1 |
| w | 274929/500000 | 1/1 | 274929/500000 | 1/1 |
| j | 269553/500000 | 892179/1000000 | 269553/500000 | 892179/1000000 |
| k | 412393/1000000 | 107817/125000 | 412393/1000000 | 107817/125000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |


### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |


### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 193:90 | BHQ | lo | 7211/62500 | earlier 192:90; BHQ; lo; 7211/62500 |
| 193:120 | CFR | lo | 447601/1000000 | earlier 192:120; CFR; lo; 447601/1000000 |
| 193:181 | FQR | hi | 16497/31250 | earlier 192:181; FQR; hi; 16497/31250 |
| 193:182 | FQS | lo | 96343/1000000 | earlier 192:182; FQS; lo; 96343/1000000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |


## Stage 194

| Property | Value |
| --- | --- |
| Scope | root/ACP+/HBP-/HEQ-/CFQ-/PQR+/PQS+ |
| Packet | forest:root/ACP+/HBP-/HEQ-/CFQ-/PQR+/PQS+ |
| Index | 0 |
| Context | 75 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 193 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 17183/125000 | 59/125 | 17183/125000 | 59/125 |
| b | 40433/125000 | 552399/1000000 | 40433/125000 | 552399/1000000 |
| c | 13857/20000 | 1/1 | 13857/20000 | 1/1 |
| e | 17183/125000 | 59/125 | 17183/125000 | 59/125 |
| f | 40433/125000 | 552399/1000000 | 40433/125000 | 552399/1000000 |
| h | 13857/20000 | 1/1 | 13857/20000 | 1/1 |
| p | 107821/1000000 | 336757/1000000 | 107821/1000000 | 336757/1000000 |
| q | 111009/500000 | 636457/1000000 | 111009/500000 | 636457/1000000 |
| u | 112009/200000 | 907/1000 | 112009/200000 | 907/1000 |
| v | 17183/125000 | 611297/1000000 | 17183/125000 | 611297/1000000 |
| r | 154213/200000 | 1/1 | 154213/200000 | 1/1 |
| w | 274929/500000 | 1/1 | 274929/500000 | 1/1 |
| j | 269553/500000 | 892179/1000000 | 269553/500000 | 892179/1000000 |
| k | 412393/1000000 | 107817/125000 | 412393/1000000 | 107817/125000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |


### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |


### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 194:90 | BHQ | lo | 7211/62500 | earlier 193:90; BHQ; lo; 7211/62500 |
| 194:120 | CFR | lo | 447601/1000000 | earlier 193:120; CFR; lo; 447601/1000000 |
| 194:181 | FQR | hi | 16497/31250 | earlier 193:181; FQR; hi; 16497/31250 |
| 194:182 | FQS | lo | 96343/1000000 | earlier 193:182; FQS; lo; 96343/1000000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
