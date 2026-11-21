# BITT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 300

| Property | Value |
| --- | --- |
| Scope | root/EHQ-/BEP-/AFQ-/CFQ- |
| Packet | forest:root/EHQ-/BEP-/AFQ-/CFQ- |
| Index | 3 |
| Context | 130 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 299 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 235747/500000 | 103767/1000000 | 235747/500000 |
| b | 103767/1000000 | 408899/1000000 | 103767/1000000 | 408899/1000000 |
| c | 173717/250000 | 1/1 | 173717/250000 | 1/1 |
| e | 155651/500000 | 59/125 | 155651/500000 | 59/125 |
| f | 155651/500000 | 541829/1000000 | 155651/500000 | 134477/250000 |
| h | 135501/250000 | 1/1 | 135501/250000 | 1/1 |
| p | 518279/1000000 | 158493/200000 | 518279/1000000 | 158493/200000 |
| q | 22907/200000 | 51787/200000 | 22907/200000 | 51787/200000 |
| u | 484977/1000000 | 398989/500000 | 484977/1000000 | 398989/500000 |
| v | 112727/250000 | 789669/1000000 | 112727/250000 | 789669/1000000 |
| r | 769473/1000000 | 1/1 | 386697/500000 | 1/1 |
| w | 358207/500000 | 1/1 | 358207/500000 | 1/1 |
| j | 9084/15625 | 864963/1000000 | 9084/15625 | 864963/1000000 |
| k | 9084/15625 | 864963/1000000 | 9084/15625 | 864963/1000000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 686 | AREA_lo_CFR | bitt ["earlier-area",{"direction":"lo","ref":"299:214","triangle":"CFR","value":"115523/250000"}] | `-1/1 * f * w + 1/1 * c * w + 1/1 * r + -1/1 * c + -115523/250000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 686 | f | 155651/500000 | 541829/1000000 | 155651/500000 | 134477/250000 | 155651/500000 | 134477/250000 | `(-358207/500000, 13790770419/125000000000); (-358207/500000, 4759/200000); (-358207/500000, 42606645419/125000000000); (-358207/500000, 127161/500000); (-1/1, 307381/1000000); (-1/1, 134477/250000)` |
| 1 | 686 | r | 769473/1000000 | 1/1 | 386697/500000 | 1/1 | 386697/500000 | 1/1 | `(1/1, -220541986919/250000000000); (1/1, -242174777757/250000000000); (1/1, -3264098933/3125000000); (1/1, -141380352739/125000000000); (1/1, -386697/500000); (1/1, -1/1)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 300:125 | CER | hi | 70171674787/250000000000 | vertex maximum 70171674787/250000000000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 1078 | quad | CER + CFR >= 93/125 | quadrilateral CERF; occupants Q, S |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 300:214 | CFR | lo | 463313/1000000 | 115828325213/250000000000 | 1078 | 300:125 |

## Stage 301

| Property | Value |
| --- | --- |
| Scope | root/EHQ-/BEP-/AFQ-/CFQ- |
| Packet | forest:root/EHQ-/BEP-/AFQ-/CFQ- |
| Index | 4 |
| Context | 130 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 300 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 235747/500000 | 103767/1000000 | 235747/500000 |
| b | 103767/1000000 | 408899/1000000 | 103767/1000000 | 408899/1000000 |
| c | 173717/250000 | 1/1 | 173717/250000 | 1/1 |
| e | 155651/500000 | 59/125 | 155651/500000 | 59/125 |
| f | 155651/500000 | 134477/250000 | 155651/500000 | 536687/1000000 |
| h | 135501/250000 | 1/1 | 135501/250000 | 1/1 |
| p | 518279/1000000 | 158493/200000 | 518279/1000000 | 158493/200000 |
| q | 22907/200000 | 51787/200000 | 22907/200000 | 51787/200000 |
| u | 484977/1000000 | 398989/500000 | 484977/1000000 | 398989/500000 |
| v | 112727/250000 | 789669/1000000 | 112727/250000 | 789669/1000000 |
| r | 386697/500000 | 1/1 | 154923/200000 | 1/1 |
| w | 358207/500000 | 1/1 | 358207/500000 | 1/1 |
| j | 9084/15625 | 864963/1000000 | 9084/15625 | 864963/1000000 |
| k | 9084/15625 | 864963/1000000 | 9084/15625 | 864963/1000000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 686 | AREA_lo_CFR | bitt ["earlier-area",{"direction":"lo","ref":"300:214","triangle":"CFR","value":"463313/1000000"}] | `-1/1 * f * w + 1/1 * c * w + 1/1 * r + -1/1 * c + -463313/1000000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 686 | f | 155651/500000 | 134477/250000 | 155651/500000 | 536687/1000000 | 155651/500000 | 536687/1000000 | `(-358207/500000, 14128270419/125000000000); (-358207/500000, 5299/200000); (-358207/500000, 42454020419/125000000000); (-358207/500000, 253101/1000000); (-1/1, 310081/1000000); (-1/1, 536687/1000000)` |
| 1 | 686 | r | 386697/500000 | 1/1 | 154923/200000 | 1/1 | 154923/200000 | 1/1 | `(1/1, -220847236919/250000000000); (1/1, -242480027757/250000000000); (1/1, -522428958533/500000000000); (1/1, -565694540209/500000000000); (1/1, -154923/200000); (1/1, -1/1)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 301:125 | CER | hi | 140153299703/500000000000 | vertex maximum 140153299703/500000000000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 1078 | quad | CER + CFR >= 93/125 | quadrilateral CERF; occupants Q, S |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 301:214 | CFR | lo | 463693/1000000 | 231846700297/500000000000 | 1078 | 301:125 |

## Stage 302

| Property | Value |
| --- | --- |
| Scope | root/EHQ-/BEP-/AFQ-/CFQ- |
| Packet | forest:root/EHQ-/BEP-/AFQ-/CFQ- |
| Index | 5 |
| Context | 130 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 301 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 235747/500000 | 103767/1000000 | 235747/500000 |
| b | 103767/1000000 | 408899/1000000 | 103767/1000000 | 408899/1000000 |
| c | 173717/250000 | 1/1 | 173717/250000 | 1/1 |
| e | 155651/500000 | 59/125 | 155651/500000 | 59/125 |
| f | 155651/500000 | 536687/1000000 | 155651/500000 | 536307/1000000 |
| h | 135501/250000 | 1/1 | 135501/250000 | 1/1 |
| p | 518279/1000000 | 158493/200000 | 518279/1000000 | 158493/200000 |
| q | 22907/200000 | 51787/200000 | 22907/200000 | 51787/200000 |
| u | 484977/1000000 | 398989/500000 | 484977/1000000 | 398989/500000 |
| v | 112727/250000 | 789669/1000000 | 112727/250000 | 789669/1000000 |
| r | 154923/200000 | 1/1 | 154999/200000 | 1/1 |
| w | 358207/500000 | 1/1 | 358207/500000 | 1/1 |
| j | 9084/15625 | 864963/1000000 | 9084/15625 | 864963/1000000 |
| k | 9084/15625 | 864963/1000000 | 9084/15625 | 864963/1000000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 686 | AREA_lo_CFR | bitt ["earlier-area",{"direction":"lo","ref":"301:214","triangle":"CFR","value":"463693/1000000"}] | `-1/1 * f * w + 1/1 * c * w + 1/1 * r + -1/1 * c + -463693/1000000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 686 | f | 155651/500000 | 536687/1000000 | 155651/500000 | 536307/1000000 | 155651/500000 | 536307/1000000 | `(-358207/500000, 14233395419/125000000000); (-358207/500000, 3417/125000); (-358207/500000, 42406520419/125000000000); (-358207/500000, 252721/1000000); (-1/1, 155461/500000); (-1/1, 536307/1000000)` |
| 1 | 686 | r | 154923/200000 | 1/1 | 154999/200000 | 1/1 | 154999/200000 | 1/1 | `(1/1, -220942236919/250000000000); (1/1, -242575027757/250000000000); (1/1, -522482839873/500000000000); (1/1, -565748421549/500000000000); (1/1, -154999/200000); (1/1, -1/1)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 302:125 | CER | hi | 140094152323/500000000000 | vertex maximum 140094152323/500000000000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 1078 | quad | CER + CFR >= 93/125 | quadrilateral CERF; occupants Q, S |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 302:214 | CFR | lo | 463811/1000000 | 231905847677/500000000000 | 1078 | 302:125 |

## Stage 303

| Property | Value |
| --- | --- |
| Scope | root/EHQ-/BEP-/AFQ-/CFQ- |
| Packet | forest:root/EHQ-/BEP-/AFQ-/CFQ- |
| Index | 6 |
| Context | 130 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 302 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 235747/500000 | 103767/1000000 | 235747/500000 |
| b | 103767/1000000 | 408899/1000000 | 103767/1000000 | 408899/1000000 |
| c | 173717/250000 | 1/1 | 173717/250000 | 1/1 |
| e | 155651/500000 | 59/125 | 155651/500000 | 59/125 |
| f | 155651/500000 | 536307/1000000 | 155651/500000 | 536189/1000000 |
| h | 135501/250000 | 1/1 | 135501/250000 | 1/1 |
| p | 518279/1000000 | 158493/200000 | 518279/1000000 | 158493/200000 |
| q | 22907/200000 | 51787/200000 | 22907/200000 | 51787/200000 |
| u | 484977/1000000 | 398989/500000 | 484977/1000000 | 398989/500000 |
| v | 112727/250000 | 789669/1000000 | 112727/250000 | 789669/1000000 |
| r | 154999/200000 | 1/1 | 775113/1000000 | 1/1 |
| w | 358207/500000 | 1/1 | 358207/500000 | 1/1 |
| j | 9084/15625 | 864963/1000000 | 9084/15625 | 864963/1000000 |
| k | 9084/15625 | 864963/1000000 | 9084/15625 | 864963/1000000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 686 | AREA_lo_CFR | bitt ["earlier-area",{"direction":"lo","ref":"302:214","triangle":"CFR","value":"463811/1000000"}] | `-1/1 * f * w + 1/1 * c * w + 1/1 * r + -1/1 * c + -463811/1000000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 686 | f | 155651/500000 | 536307/1000000 | 155651/500000 | 536189/1000000 | 155651/500000 | 536189/1000000 | `(-358207/500000, 14266145419/125000000000); (-358207/500000, 13799/500000); (-358207/500000, 42391770419/125000000000); (-358207/500000, 252603/1000000); (-1/1, 19449/62500); (-1/1, 536189/1000000)` |
| 1 | 686 | r | 154999/200000 | 1/1 | 775113/1000000 | 1/1 | 775113/1000000 | 1/1 | `(1/1, -220971736919/250000000000); (1/1, -242604527757/250000000000); (1/1, -522499571447/500000000000); (1/1, -565765153123/500000000000); (1/1, -775113/1000000); (1/1, -1/1)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 303:125 | CER | hi | 28015157101/100000000000 | vertex maximum 28015157101/100000000000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 1078 | quad | CER + CFR >= 93/125 | quadrilateral CERF; occupants Q, S |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 303:214 | CFR | lo | 57981/125000 | 46384842899/100000000000 | 1078 | 303:125 |

## Stage 304

| Property | Value |
| --- | --- |
| Scope | root/EHQ-/BEP-/AFQ-/CFQ- |
| Packet | forest:root/EHQ-/BEP-/AFQ-/CFQ- |
| Index | 7 |
| Context | 130 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 303 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 235747/500000 | 103767/1000000 | 235747/500000 |
| b | 103767/1000000 | 408899/1000000 | 103767/1000000 | 408899/1000000 |
| c | 173717/250000 | 1/1 | 173717/250000 | 1/1 |
| e | 155651/500000 | 59/125 | 155651/500000 | 59/125 |
| f | 155651/500000 | 536189/1000000 | 155651/500000 | 67019/125000 |
| h | 135501/250000 | 1/1 | 135501/250000 | 1/1 |
| p | 518279/1000000 | 158493/200000 | 518279/1000000 | 158493/200000 |
| q | 22907/200000 | 51787/200000 | 22907/200000 | 51787/200000 |
| u | 484977/1000000 | 398989/500000 | 484977/1000000 | 398989/500000 |
| v | 112727/250000 | 789669/1000000 | 112727/250000 | 789669/1000000 |
| r | 775113/1000000 | 1/1 | 15503/20000 | 1/1 |
| w | 358207/500000 | 1/1 | 358207/500000 | 1/1 |
| j | 9084/15625 | 864963/1000000 | 9084/15625 | 864963/1000000 |
| k | 9084/15625 | 864963/1000000 | 9084/15625 | 864963/1000000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 686 | AREA_lo_CFR | bitt ["earlier-area",{"direction":"lo","ref":"303:214","triangle":"CFR","value":"57981/125000"}] | `-1/1 * f * w + 1/1 * c * w + 1/1 * r + -1/1 * c + -57981/125000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 686 | f | 155651/500000 | 536189/1000000 | 155651/500000 | 67019/125000 | 155651/500000 | 67019/125000 | `(-358207/500000, 14276270419/125000000000); (-358207/500000, 27679/1000000); (-358207/500000, 42387145419/125000000000); (-358207/500000, 126283/500000); (-1/1, 62253/200000); (-1/1, 67019/125000)` |
| 1 | 686 | r | 775113/1000000 | 1/1 | 15503/20000 | 1/1 | 15503/20000 | 1/1 | `(1/1, -220980986919/250000000000); (1/1, -242613777757/250000000000); (1/1, -130626204447/125000000000); (1/1, -70721299933/62500000000); (1/1, -15503/20000); (1/1, -1/1)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 304:125 | CER | hi | 70035013209/250000000000 | vertex maximum 70035013209/250000000000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 1078 | quad | CER + CFR >= 93/125 | quadrilateral CERF; occupants Q, S |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 304:214 | CFR | lo | 463859/1000000 | 115964986791/250000000000 | 1078 | 304:125 |
