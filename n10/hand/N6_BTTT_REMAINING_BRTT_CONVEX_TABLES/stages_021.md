# BRTT convex: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 105

| Property | Value |
| --- | --- |
| Scope | root/ACP+/HBP+/APQ-/AEP-/BEP+/BFP-/BPR- |
| Packet | forest:root/ACP+/HBP+/APQ-/AEP-/BEP+/BFP-/BPR- |
| Index | 0 |
| Context | 34 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 100 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 33969/250000 | 18223/31250 | 33969/250000 | 18223/31250 |
| b | 107623/1000000 | 36207/100000 | 107623/1000000 | 36207/100000 |
| c | 135501/250000 | 198017/250000 | 135501/250000 | 198017/250000 |
| e | 13027/31250 | 18223/31250 | 13027/31250 | 18223/31250 |
| f | 107623/1000000 | 36207/100000 | 107623/1000000 | 36207/100000 |
| h | 684289/1000000 | 1/1 | 684289/1000000 | 1/1 |
| p | 200623/1000000 | 517783/1000000 | 200623/1000000 | 517783/1000000 |
| q | 57219/250000 | 61267/125000 | 57219/250000 | 61267/125000 |
| u | 808203/1000000 | 1/1 | 808203/1000000 | 1/1 |
| v | 33969/250000 | 27489/100000 | 33969/250000 | 27489/100000 |
| r | 240269/500000 | 971863/1000000 | 240269/500000 | 971863/1000000 |
| w | 564269/1000000 | 860529/1000000 | 564269/1000000 | 860529/1000000 |
| j | 321057/1000000 | 30977/40000 | 321057/1000000 | 30977/40000 |
| k | 133697/200000 | 1/1 | 133697/200000 | 1/1 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |


### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |


### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 105:8 | ABP | lo | 93/1000 | occupants none |
| 105:10 | ABQ | lo | 7851/50000 | earlier 100:10; ABQ; lo; 7851/50000 |
| 105:13 | ABR | hi | 333581992939/500000000000 | vertex maximum 333581992939/500000000000 |
| 105:20 | ACH | lo | 154123/500000 | earlier 100:20; ACH; lo; 154123/500000 |
| 105:25 | ACQ | hi | 52008179377/125000000000 | vertex maximum 52008179377/125000000000 |
| 105:34 | AEP | lo | 93/1000 | occupants none |
| 105:36 | AEQ | lo | 154123/500000 | earlier 100:36; AEQ; lo; 154123/500000 |
| 105:52 | AHP | lo | 61123/500000 | earlier 100:52; AHP; lo; 61123/500000 |
| 105:60 | APQ | lo | 93/1000 | occupants none |
| 105:62 | APR | lo | 93/1000 | occupants none |
| 105:76 | BCH | lo | 37679/125000 | earlier 100:76; BCH; lo; 37679/125000 |
| 105:80 | BCQ | lo | 93/1000 | occupants none |
| 105:92 | BEQ | lo | 103997/1000000 | earlier 100:92; BEQ; lo; 103997/1000000 |
| 105:118 | BPR | lo | 93/1000 | occupants none |
| 105:132 | CEQ | lo | 93/1000 | occupants none |
| 105:192 | EQR | lo | 93/1000 | occupants none |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 39 | plu | ACQ * BEQ = ABQ * CEQ + AEQ * BCQ | circuit QABCE |
| 2699 | bary | outer ABR; fans BPR, APR, ABP; target EPQ; sign -1; vertices AEQ -1; BEQ -1; EQR -1 | container ABR; inner P; line EQ |
| 3555 | four | -1 * AEP + -1 * APQ + 1 * AEQ + -1 * EPQ = 0 | vertices AEPQ |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 105:250 | EPQ | lo | 124537/1000000 | 41543424843327/333581992939000 | 2699 | 105:13, 105:118, 105:62, 105:8, 105:36, 105:92, 105:192 |
| 105:257 | AEQ | lo | 310537/1000000 | 310537/1000000 | 3555 | 105:34, 105:60, 105:250 |
| 105:262 | BEQ | lo | 104509/1000000 | 5435350125/52008179377 | 39 | 105:10, 105:132, 105:257, 105:80, 105:25 |
| 105:280 | EPQ | lo | 1952/15625 | 41673764343327/333581992939000 | 2699 | 105:13, 105:118, 105:62, 105:8, 105:257, 105:262, 105:192 |
| 105:290 | AEQ | lo | 19433/62500 | 19433/62500 | 3555 | 105:34, 105:60, 105:280 |
| 105:294 | BEQ | lo | 26149/250000 | 5439895500/52008179377 | 39 | 105:10, 105:132, 105:290, 105:80, 105:25 |
| 105:311 | EPQ | lo | 62497/500000 | 41695991343327/333581992939000 | 2699 | 105:13, 105:118, 105:62, 105:8, 105:290, 105:294, 105:192 |
| 105:319 | AEQ | lo | 155497/500000 | 155497/500000 | 3555 | 105:34, 105:60, 105:311 |
| 105:323 | BEQ | lo | 104611/1000000 | 5440662750/52008179377 | 39 | 105:10, 105:132, 105:319, 105:80, 105:25 |
| 105:340 | EPQ | lo | 62503/500000 | 41699757843327/333581992939000 | 2699 | 105:13, 105:118, 105:62, 105:8, 105:319, 105:323, 105:192 |
| 105:348 | AEQ | lo | 155503/500000 | 155503/500000 | 3555 | 105:34, 105:60, 105:340 |
| 105:352 | BEQ | lo | 52307/500000 | 5440802250/52008179377 | 39 | 105:10, 105:132, 105:348, 105:80, 105:25 |
| 105:369 | EPQ | lo | 7813/62500 | 41700455343327/333581992939000 | 2699 | 105:13, 105:118, 105:62, 105:8, 105:348, 105:352, 105:192 |
| 105:374 | AEQ | lo | 9719/31250 | 9719/31250 | 3555 | 105:34, 105:60, 105:369 |

## Stage 106

| Property | Value |
| --- | --- |
| Scope | root/ACP+/HBP+/APQ-/AEP-/BEP+/BFP-/BPR- |
| Packet | forest:root/ACP+/HBP+/APQ-/AEP-/BEP+/BFP-/BPR- |
| Index | 1 |
| Context | 34 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 105 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 33969/250000 | 18223/31250 | 33969/250000 | 18223/31250 |
| b | 107623/1000000 | 36207/100000 | 107623/1000000 | 36207/100000 |
| c | 135501/250000 | 198017/250000 | 135501/250000 | 198017/250000 |
| e | 13027/31250 | 18223/31250 | 13027/31250 | 18223/31250 |
| f | 107623/1000000 | 36207/100000 | 107623/1000000 | 36207/100000 |
| h | 684289/1000000 | 1/1 | 684289/1000000 | 1/1 |
| p | 200623/1000000 | 517783/1000000 | 200623/1000000 | 517783/1000000 |
| q | 57219/250000 | 61267/125000 | 57219/250000 | 61267/125000 |
| u | 808203/1000000 | 1/1 | 808203/1000000 | 1/1 |
| v | 33969/250000 | 27489/100000 | 33969/250000 | 4252/15625 |
| r | 240269/500000 | 971863/1000000 | 240269/500000 | 971863/1000000 |
| w | 564269/1000000 | 860529/1000000 | 564269/1000000 | 860529/1000000 |
| j | 321057/1000000 | 30977/40000 | 321057/1000000 | 30977/40000 |
| k | 133697/200000 | 1/1 | 133697/200000 | 1/1 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 181 | AREA_lo_AEQ | brtt ["earlier-area",{"direction":"lo","ref":"105:374","triangle":"AEQ","value":"9719/31250"}] | `-1/1 * v + 1/1 * a + 1/1 * e * u + -1/1 * a * u + -9719/31250` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 181 | v | 33969/250000 | 27489/100000 | 33969/250000 | 4252/15625 | 33969/250000 | 4252/15625 | `(-1/1, 12990836141/250000000000); (-1/1, 1076144303/7812500000); (-1/1, 9317243689/50000000000); (-1/1, 4252/15625); (-1/1, 1654/15625)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 106:8 | ABP | lo | 93/1000 | occupants none |
| 106:10 | ABQ | lo | 7851/50000 | earlier 105:10; ABQ; lo; 7851/50000 |
| 106:13 | ABR | hi | 333581992939/500000000000 | vertex maximum 333581992939/500000000000 |
| 106:20 | ACH | lo | 154123/500000 | earlier 105:20; ACH; lo; 154123/500000 |
| 106:25 | ACQ | hi | 3238815781/7812500000 | vertex maximum 3238815781/7812500000 |
| 106:34 | AEP | lo | 93/1000 | occupants none |
| 106:36 | AEQ | lo | 9719/31250 | earlier 105:374; AEQ; lo; 9719/31250 |
| 106:52 | AHP | lo | 61123/500000 | earlier 105:52; AHP; lo; 61123/500000 |
| 106:60 | APQ | lo | 93/1000 | occupants none |
| 106:62 | APR | lo | 93/1000 | occupants none |
| 106:76 | BCH | lo | 37679/125000 | earlier 105:76; BCH; lo; 37679/125000 |
| 106:80 | BCQ | lo | 93/1000 | occupants none |
| 106:118 | BPR | lo | 93/1000 | occupants none |
| 106:132 | CEQ | lo | 93/1000 | occupants none |
| 106:192 | EQR | lo | 93/1000 | occupants none |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 39 | plu | ACQ * BEQ = ABQ * CEQ + AEQ * BCQ | circuit QABCE |
| 2699 | bary | outer ABR; fans BPR, APR, ABP; target EPQ; sign -1; vertices AEQ -1; BEQ -1; EQR -1 | container ABR; inner P; line EQ |
| 3555 | four | -1 * AEP + -1 * APQ + 1 * AEQ + -1 * EPQ = 0 | vertices AEPQ |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 106:238 | BEQ | lo | 3281/31250 | 1360206375/12955263124 | 39 | 106:10, 106:132, 106:36, 106:80, 106:25 |
| 106:240 | EPQ | lo | 125061/1000000 | 41718125343327/333581992939000 | 2699 | 106:13, 106:118, 106:62, 106:8, 106:36, 106:238, 106:192 |
| 106:247 | AEQ | lo | 311061/1000000 | 311061/1000000 | 3555 | 106:34, 106:60, 106:240 |
| 106:250 | BEQ | lo | 26251/250000 | 5441441625/51821052496 | 39 | 106:10, 106:132, 106:247, 106:80, 106:25 |
| 106:254 | EPQ | lo | 12507/100000 | 41721147843327/333581992939000 | 2699 | 106:13, 106:118, 106:62, 106:8, 106:247, 106:250, 106:192 |
| 106:260 | AEQ | lo | 31107/100000 | 31107/100000 | 3555 | 106:34, 106:60, 106:254 |
| 106:262 | BEQ | lo | 52503/500000 | 2720773125/25910526248 | 39 | 106:10, 106:132, 106:260, 106:80, 106:25 |
| 106:265 | EPQ | lo | 125071/1000000 | 41721659343327/333581992939000 | 2699 | 106:13, 106:118, 106:62, 106:8, 106:260, 106:262, 106:192 |
| 106:270 | AEQ | lo | 311071/1000000 | 311071/1000000 | 3555 | 106:34, 106:60, 106:265 |

## Stage 107

| Property | Value |
| --- | --- |
| Scope | root/ACP+/HBP+/APQ-/AEP-/BEP+/BFP-/BPR- |
| Packet | forest:root/ACP+/HBP+/APQ-/AEP-/BEP+/BFP-/BPR- |
| Index | 2 |
| Context | 34 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 106 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 33969/250000 | 18223/31250 | 33969/250000 | 18223/31250 |
| b | 107623/1000000 | 36207/100000 | 107623/1000000 | 36207/100000 |
| c | 135501/250000 | 198017/250000 | 135501/250000 | 198017/250000 |
| e | 13027/31250 | 18223/31250 | 13027/31250 | 18223/31250 |
| f | 107623/1000000 | 36207/100000 | 107623/1000000 | 36207/100000 |
| h | 684289/1000000 | 1/1 | 684289/1000000 | 1/1 |
| p | 200623/1000000 | 517783/1000000 | 200623/1000000 | 517783/1000000 |
| q | 57219/250000 | 61267/125000 | 57219/250000 | 61267/125000 |
| u | 808203/1000000 | 1/1 | 808203/1000000 | 1/1 |
| v | 33969/250000 | 4252/15625 | 33969/250000 | 54413/200000 |
| r | 240269/500000 | 971863/1000000 | 240269/500000 | 971863/1000000 |
| w | 564269/1000000 | 860529/1000000 | 564269/1000000 | 860529/1000000 |
| j | 321057/1000000 | 30977/40000 | 321057/1000000 | 30977/40000 |
| k | 133697/200000 | 1/1 | 133697/200000 | 1/1 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 181 | AREA_lo_AEQ | brtt ["earlier-area",{"direction":"lo","ref":"106:270","triangle":"AEQ","value":"311071/1000000"}] | `-1/1 * v + 1/1 * a + 1/1 * e * u + -1/1 * a * u + -311071/1000000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 181 | v | 33969/250000 | 4252/15625 | 33969/250000 | 54413/200000 | 33969/250000 | 54413/200000 | `(-1/1, 12975086141/250000000000); (-1/1, 2151304231/15625000000); (-1/1, 9314093689/50000000000); (-1/1, 54413/200000); (-1/1, 105793/1000000)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 107:8 | ABP | lo | 93/1000 | occupants none |
| 107:10 | ABQ | lo | 7851/50000 | earlier 106:10; ABQ; lo; 7851/50000 |
| 107:13 | ABR | hi | 333581992939/500000000000 | vertex maximum 333581992939/500000000000 |
| 107:20 | ACH | lo | 154123/500000 | earlier 106:20; ACH; lo; 154123/500000 |
| 107:25 | ACQ | hi | 103633568429/250000000000 | vertex maximum 103633568429/250000000000 |
| 107:34 | AEP | lo | 93/1000 | occupants none |
| 107:36 | AEQ | lo | 311071/1000000 | earlier 106:270; AEQ; lo; 311071/1000000 |
| 107:52 | AHP | lo | 61123/500000 | earlier 106:52; AHP; lo; 61123/500000 |
| 107:60 | APQ | lo | 93/1000 | occupants none |
| 107:62 | APR | lo | 93/1000 | occupants none |
| 107:76 | BCH | lo | 37679/125000 | earlier 106:76; BCH; lo; 37679/125000 |
| 107:80 | BCQ | lo | 93/1000 | occupants none |
| 107:118 | BPR | lo | 93/1000 | occupants none |
| 107:132 | CEQ | lo | 93/1000 | occupants none |
| 107:192 | EQR | lo | 93/1000 | occupants none |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 39 | plu | ACQ * BEQ = ABQ * CEQ + AEQ * BCQ | circuit QABCE |
| 2699 | bary | outer ABR; fans BPR, APR, ABP; target EPQ; sign -1; vertices AEQ -1; BEQ -1; EQR -1 | container ABR; inner P; line EQ |
| 3555 | four | -1 * AEP + -1 * APQ + 1 * AEQ + -1 * EPQ = 0 | vertices AEPQ |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 107:238 | BEQ | lo | 21003/200000 | 10883115750/103633568429 | 39 | 107:10, 107:132, 107:36, 107:80, 107:25 |
| 107:240 | EPQ | lo | 125073/1000000 | 41722124343327/333581992939000 | 2699 | 107:13, 107:118, 107:62, 107:8, 107:36, 107:238, 107:192 |
| 107:247 | AEQ | lo | 311073/1000000 | 311073/1000000 | 3555 | 107:34, 107:60, 107:240 |

## Stage 108

| Property | Value |
| --- | --- |
| Scope | root/ACP+/HBP+/APQ-/AEP-/BEP+/BFP-/BPR- |
| Packet | forest:root/ACP+/HBP+/APQ-/AEP-/BEP+/BFP-/BPR- |
| Index | 3 |
| Context | 34 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 107 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 33969/250000 | 18223/31250 | 33969/250000 | 18223/31250 |
| b | 107623/1000000 | 36207/100000 | 107623/1000000 | 36207/100000 |
| c | 135501/250000 | 198017/250000 | 135501/250000 | 198017/250000 |
| e | 13027/31250 | 18223/31250 | 13027/31250 | 18223/31250 |
| f | 107623/1000000 | 36207/100000 | 107623/1000000 | 36207/100000 |
| h | 684289/1000000 | 1/1 | 684289/1000000 | 1/1 |
| p | 200623/1000000 | 517783/1000000 | 200623/1000000 | 517783/1000000 |
| q | 57219/250000 | 61267/125000 | 57219/250000 | 61267/125000 |
| u | 808203/1000000 | 1/1 | 808203/1000000 | 1/1 |
| v | 33969/250000 | 54413/200000 | 33969/250000 | 272063/1000000 |
| r | 240269/500000 | 971863/1000000 | 240269/500000 | 971863/1000000 |
| w | 564269/1000000 | 860529/1000000 | 564269/1000000 | 860529/1000000 |
| j | 321057/1000000 | 30977/40000 | 321057/1000000 | 30977/40000 |
| k | 133697/200000 | 1/1 | 133697/200000 | 1/1 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 181 | AREA_lo_AEQ | brtt ["earlier-area",{"direction":"lo","ref":"107:247","triangle":"AEQ","value":"311073/1000000"}] | `-1/1 * v + 1/1 * a + 1/1 * e * u + -1/1 * a * u + -311073/1000000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 181 | v | 33969/250000 | 54413/200000 | 33969/250000 | 272063/1000000 | 33969/250000 | 272063/1000000 | `(-1/1, 12974586141/250000000000); (-1/1, 2151272981/15625000000); (-1/1, 9313993689/50000000000); (-1/1, 272063/1000000); (-1/1, 105791/1000000)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 108:10 | ABQ | lo | 7851/50000 | earlier 107:10; ABQ; lo; 7851/50000 |
| 108:20 | ACH | lo | 154123/500000 | earlier 107:20; ACH; lo; 154123/500000 |
| 108:36 | AEQ | lo | 311073/1000000 | earlier 107:247; AEQ; lo; 311073/1000000 |
| 108:52 | AHP | lo | 61123/500000 | earlier 107:52; AHP; lo; 61123/500000 |
| 108:76 | BCH | lo | 37679/125000 | earlier 107:76; BCH; lo; 37679/125000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |


## Stage 109

| Property | Value |
| --- | --- |
| Scope | root/ACP+/HBP+/APQ-/AEP-/BEP+/BFP-/BPR- |
| Packet | forest:root/ACP+/HBP+/APQ-/AEP-/BEP+/BFP-/BPR- |
| Index | 4 |
| Context | 34 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 108 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 33969/250000 | 18223/31250 | 33969/250000 | 18223/31250 |
| b | 107623/1000000 | 36207/100000 | 107623/1000000 | 36207/100000 |
| c | 135501/250000 | 198017/250000 | 135501/250000 | 198017/250000 |
| e | 13027/31250 | 18223/31250 | 13027/31250 | 18223/31250 |
| f | 107623/1000000 | 36207/100000 | 107623/1000000 | 36207/100000 |
| h | 684289/1000000 | 1/1 | 684289/1000000 | 1/1 |
| p | 200623/1000000 | 517783/1000000 | 200623/1000000 | 517783/1000000 |
| q | 57219/250000 | 61267/125000 | 57219/250000 | 61267/125000 |
| u | 808203/1000000 | 1/1 | 808203/1000000 | 1/1 |
| v | 33969/250000 | 272063/1000000 | 33969/250000 | 272063/1000000 |
| r | 240269/500000 | 971863/1000000 | 240269/500000 | 971863/1000000 |
| w | 564269/1000000 | 860529/1000000 | 564269/1000000 | 860529/1000000 |
| j | 321057/1000000 | 30977/40000 | 321057/1000000 | 30977/40000 |
| k | 133697/200000 | 1/1 | 133697/200000 | 1/1 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |


### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |


### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 109:10 | ABQ | lo | 7851/50000 | earlier 108:10; ABQ; lo; 7851/50000 |
| 109:20 | ACH | lo | 154123/500000 | earlier 108:20; ACH; lo; 154123/500000 |
| 109:36 | AEQ | lo | 311073/1000000 | earlier 108:36; AEQ; lo; 311073/1000000 |
| 109:52 | AHP | lo | 61123/500000 | earlier 108:52; AHP; lo; 61123/500000 |
| 109:76 | BCH | lo | 37679/125000 | earlier 108:76; BCH; lo; 37679/125000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
