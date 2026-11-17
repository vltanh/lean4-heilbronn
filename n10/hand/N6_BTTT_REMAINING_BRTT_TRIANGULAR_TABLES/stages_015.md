# BRTT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 75

| Property | Value |
| --- | --- |
| Scope | root/ACP+/HBP+/AEP+/AFP-/APR-/ARS-/BRS-/BFP+ |
| Packet | forest:root/ACP+/HBP+/AEP+/AFP-/APR-/ARS-/BRS-/BFP+ |
| Index | 2 |
| Context | 26 |
| Box present | yes |
| Coarse version | 2 |
| Parent box | 74 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 33263/250000 | 118459/200000 | 33263/250000 | 580331/1000000 |
| b | 13409/125000 | 349/1000 | 13409/125000 | 349/1000 |
| c | 135501/250000 | 161249/200000 | 135501/250000 | 161249/200000 |
| e | 4167/10000 | 306519/500000 | 4167/10000 | 306519/500000 |
| f | 279/1000 | 521687/1000000 | 279/1000 | 521687/1000000 |
| h | 672257/1000000 | 1/1 | 672257/1000000 | 1/1 |
| p | 24309/200000 | 76547/200000 | 24309/200000 | 76547/200000 |
| q | 32201/100000 | 733897/1000000 | 161507/500000 | 733897/1000000 |
| u | 793109/1000000 | 1/1 | 793109/1000000 | 1/1 |
| v | 33263/250000 | 20499/50000 | 33263/250000 | 20499/50000 |
| r | 757313/1000000 | 1/1 | 757313/1000000 | 1/1 |
| w | 401831/500000 | 1/1 | 401831/500000 | 1/1 |
| j | 638837/1000000 | 840563/1000000 | 638837/1000000 | 840563/1000000 |
| k | 337337/500000 | 871013/1000000 | 337337/500000 | 871013/1000000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 908 | AREA_lo_AFS | brtt ["earlier-area",{"direction":"lo","ref":"74:1190","triangle":"AFS","value":"326437/1000000"}] | `-1/1 * f * k + 1/1 * a * f + 1/1 * j + -1/1 * a * j + -326437/1000000` |
| 919 | AREA_lo_APS | brtt ["earlier-area",{"direction":"lo","ref":"74:1187","triangle":"APS","value":"23461/250000"}] | `-1/1 * p * k + 1/1 * a * p + 1/1 * q * j + -1/1 * a * j + -23461/250000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 908 | a | 33263/250000 | 118459/200000 | 33263/250000 | 162945977/280781500 | 33263/250000 | 580331/1000000 | `(-359837/1000000, 62082977/500000000); (-2343/20000, -19784327519/500000000000); (-561563/1000000, 162945977/500000000); (-79719/250000, 81078672481/500000000000); (-359837/1000000, 69387373/1000000000); (-2343/20000, -141996158931/1000000000000); (-561563/1000000, 271113373/1000000000); (-79719/250000, 59729841069/1000000000000)` |
| 1 | 919 | q | 32201/100000 | 733897/1000000 | 135757017133/420281500000 | 733897/1000000 | 161507/500000 | 733897/1000000 | `(638837/1000000, -122336993257/500000000000); (638837/1000000, -238023917491/500000000000); (638837/1000000, -193070118347/500000000000); (638837/1000000, -31293080197/62500000000); (840563/1000000, -135757017133/500000000000); (840563/1000000, -37069730393/62500000000); (840563/1000000, -206490142223/500000000000); (840563/1000000, -308878567229/500000000000); (638837/1000000, -268538010269/1000000000000); (638837/1000000, -499911858737/1000000000000); (638837/1000000, -461286043859/1000000000000); (638837/1000000, -575835090317/1000000000000); (840563/1000000, -295378058021/1000000000000); (840563/1000000, -616979710043/1000000000000); (840563/1000000, -488126091611/1000000000000); (840563/1000000, -692902941623/1000000000000)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 75:0 | ABC | lo | 93/1000 | occupants none |
| 75:5 | ABF | hi | 449215619397/1000000000000 | vertex maximum 449215619397/1000000000000 |
| 75:8 | ABP | lo | 93/1000 | occupants none |
| 75:12 | ABR | lo | 167331/1000000 | earlier 74:1181; ABR; lo; 167331/1000000 |
| 75:19 | ACF | hi | 96047998623/125000000000 | vertex maximum 96047998623/125000000000 |
| 75:28 | ACS | lo | 167361/1000000 | earlier 74:1175; ACS; lo; 167361/1000000 |
| 75:30 | AEF | lo | 323659/1000000 | earlier 74:30; AEF; lo; 323659/1000000 |
| 75:38 | AER | lo | 352301/1000000 | earlier 74:1206; AER; lo; 352301/1000000 |
| 75:39 | AER | hi | 2547412821/3906250000 | vertex maximum 2547412821/3906250000 |
| 75:40 | AES | lo | 166301/1000000 | earlier 74:1198; AES; lo; 166301/1000000 |
| 75:41 | AES | hi | 110793/250000 | earlier 74:41; AES; hi; 110793/250000 |
| 75:44 | AFP | lo | 93/1000 | occupants none |
| 75:46 | AFQ | lo | 80549/250000 | earlier 74:1189; AFQ; lo; 80549/250000 |
| 75:48 | AFR | lo | 163217/500000 | earlier 74:1179; AFR; lo; 163217/500000 |
| 75:50 | AFS | lo | 326437/1000000 | earlier 74:1190; AFS; lo; 326437/1000000 |
| 75:52 | AHP | lo | 93/1000 | occupants none |
| 75:59 | AHS | hi | 182181/250000 | earlier 74:59; AHS; hi; 182181/250000 |
| 75:60 | APQ | lo | 100317/1000000 | earlier 74:1183; APQ; lo; 100317/1000000 |
| 75:62 | APR | lo | 93/1000 | occupants none |
| 75:64 | APS | lo | 23461/250000 | earlier 74:1187; APS; lo; 23461/250000 |
| 75:66 | AQR | lo | 51393/125000 | earlier 74:1180; AQR; lo; 51393/125000 |
| 75:72 | BCE | lo | 93/1000 | occupants none |
| 75:76 | BCH | lo | 156517/500000 | earlier 74:1031; BCH; lo; 156517/500000 |
| 75:80 | BCQ | lo | 93/1000 | occupants none |
| 75:84 | BCS | lo | 68829/500000 | earlier 74:1022; BCS; lo; 68829/500000 |
| 75:88 | BEH | lo | 327239/1000000 | earlier 74:898; BEH; lo; 327239/1000000 |
| 75:94 | BER | lo | 308449/1000000 | earlier 74:970; BER; lo; 308449/1000000 |
| 75:100 | BFP | lo | 93/1000 | occupants none |
| 75:108 | BHP | lo | 93/1000 | occupants none |
| 75:110 | BHQ | lo | 167127/500000 | earlier 74:900; BHQ; lo; 167127/500000 |
| 75:111 | BHQ | hi | 5854421091/6250000000 | vertex maximum 5854421091/6250000000 |
| 75:114 | BHS | lo | 308267/1000000 | earlier 74:1033; BHS; lo; 308267/1000000 |
| 75:122 | BQR | lo | 91707/250000 | earlier 74:903; BQR; lo; 91707/250000 |
| 75:124 | BQS | lo | 45207/250000 | earlier 74:888; BQS; lo; 45207/250000 |
| 75:148 | CFS | lo | 103623/1000000 | earlier 74:1164; CFS; lo; 103623/1000000 |
| 75:150 | CHP | lo | 93/1000 | occupants none |
| 75:156 | CHS | lo | 58327/500000 | earlier 74:1078; CHS; lo; 58327/500000 |
| 75:168 | EFH | lo | 1637/12500 | earlier 74:772; EFH; lo; 1637/12500 |
| 75:174 | EFR | lo | 279/1000 | occupants S |
| 75:180 | EHQ | lo | 23703/250000 | earlier 74:1104; EHQ; lo; 23703/250000 |
| 75:183 | EHR | hi | 5833/10000 | vertex maximum 5833/10000 |
| 75:184 | EHS | lo | 93/1000 | occupants none |
| 75:189 | EPR | hi | 17/32 | earlier 74:189; EPR; hi; 17/32 |
| 75:196 | ERS | lo | 93/1000 | occupants none |
| 75:204 | FHS | lo | 126493/1000000 | earlier 74:204; FHS; lo; 126493/1000000 |
| 75:209 | FPR | hi | 61731/125000 | earlier 74:209; FPR; hi; 61731/125000 |
| 75:212 | FQR | lo | 301749/1000000 | earlier 74:1194; FQR; lo; 301749/1000000 |
| 75:217 | FRS | hi | 733/3125 | earlier 74:217; FRS; hi; 733/3125 |
| 75:220 | HPR | lo | 93/1000 | occupants none |
| 75:221 | HPR | hi | 308519/500000 | earlier 74:221; HPR; hi; 308519/500000 |
| 75:222 | HPS | lo | 93/1000 | occupants none |
| 75:224 | HQR | lo | 68919/200000 | earlier 74:1160; HQR; lo; 68919/200000 |
| 75:228 | HRS | lo | 93/1000 | occupants none |
| 75:229 | HRS | hi | 7619/25000 | earlier 74:229; HRS; hi; 7619/25000 |
| 75:231 | PQR | hi | 357633/500000 | earlier 74:231; PQR; hi; 357633/500000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 183 | plu | AER * BPR = ABR * EPR + APR * BER | circuit RABEP |
| 773 | plu | BCR * BHQ = BCH * BQR + BCQ * BHR | circuit BCHQR |
| 2640 | bary | outer ABF; fans BFP, AFP, ABP; target ACP; sign 1; vertices none 0; ABC -1; ACF 1 | container ABF; inner P; line AC |
| 2662 | bary | outer ABF; fans BFP, AFP, ABP; target CPS; sign 1; vertices ACS 1; BCS 1; CFS 1 | container ABF; inner P; line CS |
| 2667 | bary | outer ABF; fans BFP, AFP, ABP; target EPR; sign 1; vertices AER 1; BER 1; EFR 1 | container ABF; inner P; line ER |
| 3136 | bary | outer AHS; fans HPS, APS, AHP; target BCP; sign 1; vertices ABC 1; BCH 1; BCS 1 | container AHS; inner P; line BC |
| 3619 | bary | outer EHR; fans HRS, ERS, EHS; target BCS; sign 1; vertices BCE 1; BCH 1; BCR 1 | container EHR; inner S; line BC |
| 3919 | four | 1 * BCH + -1 * BHP + -1 * BCP + -1 * CHP = 0 | vertices BCHP |
| 3954 | four | -1 * BHP + -1 * BPR + 1 * BHR + -1 * HPR = 0 | vertices BHPR |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 75:241 | ACP | hi | 215489/500000 | 8066736149798382696777/18717317474875000000000 | 2640 | 75:5, 75:100, 75:44, 75:8, 75:0, 75:19 |
| 75:253 | CPS | lo | 15483/125000 | 18547319709591777/149738539799000000 | 2662 | 75:5, 75:100, 75:44, 75:8, 75:28, 75:84, 75:148 |
| 75:255 | EPR | lo | 18767/62500 | 44962302603921/149738539799000 | 2667 | 75:5, 75:100, 75:44, 75:8, 75:38, 75:94, 75:174 |
| 75:265 | BPR | lo | 121033/1000000 | 1096257931/9057467808 | 183 | 75:12, 75:255, 75:62, 75:94, 75:39 |
| 75:270 | BHR | lo | 307033/1000000 | 307033/1000000 | 3954 | 75:108, 75:265, 75:220 |
| 75:272 | BCR | lo | 9567/62500 | 1493580262/9757368485 | 773 | 75:76, 75:122, 75:80, 75:270, 75:111 |
| 75:275 | BCS | lo | 137659/1000000 | 40148379/291650000 | 3619 | 75:183, 75:228, 75:196, 75:184, 75:72, 75:76, 75:272 |
| 75:279 | BCP | lo | 25407/200000 | 2892921553/22772625000 | 3136 | 75:59, 75:222, 75:64, 75:52, 75:0, 75:76, 75:275 |
| 75:280 | BCH | lo | 62607/200000 | 62607/200000 | 3919 | 75:108, 75:279, 75:150 |

## Stage 76

| Property | Value |
| --- | --- |
| Scope | root/ACP+/HBP+/AEP+/AFP-/APR-/ARS-/BRS-/BFP+ |
| Packet | forest:root/ACP+/HBP+/AEP+/AFP-/APR-/ARS-/BRS-/BFP+ |
| Index | 3 |
| Context | 26 |
| Box present | yes |
| Coarse version | 2 |
| Parent box | 75 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 33263/250000 | 580331/1000000 | 33263/250000 | 580331/1000000 |
| b | 13409/125000 | 349/1000 | 13409/125000 | 349/1000 |
| c | 135501/250000 | 161249/200000 | 135501/250000 | 161249/200000 |
| e | 4167/10000 | 306519/500000 | 4167/10000 | 306519/500000 |
| f | 279/1000 | 521687/1000000 | 279/1000 | 521687/1000000 |
| h | 672257/1000000 | 1/1 | 672257/1000000 | 1/1 |
| p | 24309/200000 | 76547/200000 | 24309/200000 | 76547/200000 |
| q | 161507/500000 | 733897/1000000 | 161507/500000 | 733897/1000000 |
| u | 793109/1000000 | 1/1 | 793109/1000000 | 1/1 |
| v | 33263/250000 | 20499/50000 | 33263/250000 | 20499/50000 |
| r | 757313/1000000 | 1/1 | 757313/1000000 | 1/1 |
| w | 401831/500000 | 1/1 | 401831/500000 | 1/1 |
| j | 638837/1000000 | 840563/1000000 | 638837/1000000 | 840563/1000000 |
| k | 337337/500000 | 871013/1000000 | 337337/500000 | 871013/1000000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |


### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |


### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 76:23 | ACP | hi | 215489/500000 | earlier 75:241; ACP; hi; 215489/500000 |
| 76:28 | ACS | lo | 167361/1000000 | earlier 75:28; ACS; lo; 167361/1000000 |
| 76:30 | AEF | lo | 323659/1000000 | earlier 75:30; AEF; lo; 323659/1000000 |
| 76:38 | AER | lo | 352301/1000000 | earlier 75:38; AER; lo; 352301/1000000 |
| 76:40 | AES | lo | 166301/1000000 | earlier 75:40; AES; lo; 166301/1000000 |
| 76:41 | AES | hi | 110793/250000 | earlier 75:41; AES; hi; 110793/250000 |
| 76:46 | AFQ | lo | 80549/250000 | earlier 75:46; AFQ; lo; 80549/250000 |
| 76:48 | AFR | lo | 163217/500000 | earlier 75:48; AFR; lo; 163217/500000 |
| 76:50 | AFS | lo | 326437/1000000 | earlier 75:50; AFS; lo; 326437/1000000 |
| 76:59 | AHS | hi | 182181/250000 | earlier 75:59; AHS; hi; 182181/250000 |
| 76:60 | APQ | lo | 100317/1000000 | earlier 75:60; APQ; lo; 100317/1000000 |
| 76:66 | AQR | lo | 51393/125000 | earlier 75:66; AQR; lo; 51393/125000 |
| 76:76 | BCH | lo | 62607/200000 | earlier 75:280; BCH; lo; 62607/200000 |
| 76:84 | BCS | lo | 137659/1000000 | earlier 75:275; BCS; lo; 137659/1000000 |
| 76:88 | BEH | lo | 327239/1000000 | earlier 75:88; BEH; lo; 327239/1000000 |
| 76:94 | BER | lo | 308449/1000000 | earlier 75:94; BER; lo; 308449/1000000 |
| 76:110 | BHQ | lo | 167127/500000 | earlier 75:110; BHQ; lo; 167127/500000 |
| 76:114 | BHS | lo | 308267/1000000 | earlier 75:114; BHS; lo; 308267/1000000 |
| 76:122 | BQR | lo | 91707/250000 | earlier 75:122; BQR; lo; 91707/250000 |
| 76:124 | BQS | lo | 45207/250000 | earlier 75:124; BQS; lo; 45207/250000 |
| 76:148 | CFS | lo | 103623/1000000 | earlier 75:148; CFS; lo; 103623/1000000 |
| 76:156 | CHS | lo | 58327/500000 | earlier 75:156; CHS; lo; 58327/500000 |
| 76:162 | CPS | lo | 15483/125000 | earlier 75:253; CPS; lo; 15483/125000 |
| 76:168 | EFH | lo | 1637/12500 | earlier 75:168; EFH; lo; 1637/12500 |
| 76:180 | EHQ | lo | 23703/250000 | earlier 75:180; EHQ; lo; 23703/250000 |
| 76:189 | EPR | hi | 17/32 | earlier 75:189; EPR; hi; 17/32 |
| 76:204 | FHS | lo | 126493/1000000 | earlier 75:204; FHS; lo; 126493/1000000 |
| 76:209 | FPR | hi | 61731/125000 | earlier 75:209; FPR; hi; 61731/125000 |
| 76:212 | FQR | lo | 301749/1000000 | earlier 75:212; FQR; lo; 301749/1000000 |
| 76:217 | FRS | hi | 733/3125 | earlier 75:217; FRS; hi; 733/3125 |
| 76:221 | HPR | hi | 308519/500000 | earlier 75:221; HPR; hi; 308519/500000 |
| 76:224 | HQR | lo | 68919/200000 | earlier 75:224; HQR; lo; 68919/200000 |
| 76:229 | HRS | hi | 7619/25000 | earlier 75:229; HRS; hi; 7619/25000 |
| 76:231 | PQR | hi | 357633/500000 | earlier 75:231; PQR; hi; 357633/500000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |


## Stage 77

| Property | Value |
| --- | --- |
| Scope | root/ACP+/HBP+/AEP+/AFP-/APR-/ARS-/BRS-/BFP+/CRS+ |
| Packet | forest:root/ACP+/HBP+/AEP+/AFP-/APR-/ARS-/BRS-/BFP+/CRS+ |
| Index | 0 |
| Context | 27 |
| Box present | yes |
| Coarse version | 2 |
| Parent box | 76 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 33263/250000 | 580331/1000000 | 33263/250000 | 580331/1000000 |
| b | 13409/125000 | 349/1000 | 13409/125000 | 349/1000 |
| c | 135501/250000 | 161249/200000 | 135501/250000 | 161249/200000 |
| e | 4167/10000 | 306519/500000 | 4167/10000 | 306519/500000 |
| f | 279/1000 | 521687/1000000 | 279/1000 | 521687/1000000 |
| h | 672257/1000000 | 1/1 | 672257/1000000 | 1/1 |
| p | 24309/200000 | 76547/200000 | 24309/200000 | 76547/200000 |
| q | 161507/500000 | 733897/1000000 | 161507/500000 | 733897/1000000 |
| u | 793109/1000000 | 1/1 | 793109/1000000 | 1/1 |
| v | 33263/250000 | 20499/50000 | 33263/250000 | 20499/50000 |
| r | 757313/1000000 | 1/1 | 757313/1000000 | 1/1 |
| w | 401831/500000 | 1/1 | 401831/500000 | 1/1 |
| j | 638837/1000000 | 840563/1000000 | 638837/1000000 | 840563/1000000 |
| k | 337337/500000 | 871013/1000000 | 337337/500000 | 871013/1000000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |


### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |


### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 77:0 | ABC | lo | 93/1000 | occupants none |
| 77:2 | ABE | lo | 93/1000 | occupants none |
| 77:4 | ABF | lo | 279/1000 | occupants P |
| 77:5 | ABF | hi | 449215619397/1000000000000 | vertex maximum 449215619397/1000000000000 |
| 77:8 | ABP | lo | 93/1000 | occupants none |
| 77:10 | ABQ | lo | 93/1000 | occupants none |
| 77:18 | ACF | lo | 279/1000 | occupants P |
| 77:19 | ACF | hi | 96047998623/125000000000 | vertex maximum 96047998623/125000000000 |
| 77:21 | ACH | hi | 34948624513/50000000000 | vertex maximum 34948624513/50000000000 |
| 77:22 | ACP | lo | 93/1000 | occupants none |
| 77:23 | ACP | hi | 215489/500000 | earlier 76:23; ACP; hi; 215489/500000 |
| 77:24 | ACQ | lo | 93/1000 | occupants none |
| 77:27 | ACR | hi | 183737406581/200000000000 | vertex maximum 183737406581/200000000000 |
| 77:28 | ACS | lo | 167361/1000000 | earlier 76:28; ACS; lo; 167361/1000000 |
| 77:30 | AEF | lo | 323659/1000000 | earlier 76:30; AEF; lo; 323659/1000000 |
| 77:34 | AEP | lo | 93/1000 | occupants none |
| 77:38 | AER | lo | 352301/1000000 | earlier 76:38; AER; lo; 352301/1000000 |
| 77:39 | AER | hi | 2547412821/3906250000 | vertex maximum 2547412821/3906250000 |
| 77:40 | AES | lo | 166301/1000000 | earlier 76:40; AES; lo; 166301/1000000 |
| 77:41 | AES | hi | 110793/250000 | earlier 76:41; AES; hi; 110793/250000 |
| 77:44 | AFP | lo | 93/1000 | occupants none |
| 77:46 | AFQ | lo | 80549/250000 | earlier 76:46; AFQ; lo; 80549/250000 |
| 77:48 | AFR | lo | 163217/500000 | earlier 76:48; AFR; lo; 163217/500000 |
| 77:49 | AFR | hi | 67984781/100000000 | vertex maximum 67984781/100000000 |
| 77:50 | AFS | lo | 326437/1000000 | earlier 76:50; AFS; lo; 326437/1000000 |
| 77:52 | AHP | lo | 93/1000 | occupants none |
| 77:57 | AHR | hi | 216737/250000 | vertex maximum 216737/250000 |
| 77:59 | AHS | hi | 182181/250000 | earlier 76:59; AHS; hi; 182181/250000 |
| 77:60 | APQ | lo | 100317/1000000 | earlier 76:60; APQ; lo; 100317/1000000 |
| 77:62 | APR | lo | 93/1000 | occupants none |
| 77:66 | AQR | lo | 51393/125000 | earlier 76:66; AQR; lo; 51393/125000 |
| 77:67 | AQR | hi | 216737/250000 | vertex maximum 216737/250000 |
| 77:70 | ARS | lo | 93/1000 | occupants none |
| 77:73 | BCE | hi | 214248504987/500000000000 | vertex maximum 214248504987/500000000000 |
| 77:75 | BCF | hi | 698973/1000000 | vertex maximum 698973/1000000 |
| 77:76 | BCH | lo | 62607/200000 | earlier 76:76; BCH; lo; 62607/200000 |
| 77:80 | BCQ | lo | 93/1000 | occupants none |
| 77:83 | BCR | hi | 698973/1000000 | vertex maximum 698973/1000000 |
| 77:84 | BCS | lo | 137659/1000000 | earlier 76:84; BCS; lo; 137659/1000000 |
| 77:88 | BEH | lo | 327239/1000000 | earlier 76:88; BEH; lo; 327239/1000000 |
| 77:94 | BER | lo | 308449/1000000 | earlier 76:94; BER; lo; 308449/1000000 |
| 77:95 | BER | hi | 6218559153/10000000000 | vertex maximum 6218559153/10000000000 |
| 77:98 | BFH | lo | 279/1000 | occupants P |
| 77:99 | BFH | hi | 521687/1000000 | vertex maximum 521687/1000000 |
| 77:100 | BFP | lo | 93/1000 | occupants none |
| 77:105 | BFR | hi | 23584897877/31250000000 | vertex maximum 23584897877/31250000000 |
| 77:108 | BHP | lo | 93/1000 | occupants none |
| 77:110 | BHQ | lo | 167127/500000 | earlier 76:110; BHQ; lo; 167127/500000 |
| 77:113 | BHR | hi | 1/1 | vertex maximum 1/1 |
| 77:114 | BHS | lo | 308267/1000000 | earlier 76:114; BHS; lo; 308267/1000000 |
| 77:122 | BQR | lo | 91707/250000 | earlier 76:122; BQR; lo; 91707/250000 |
| 77:123 | BQR | hi | 201559686217/250000000000 | vertex maximum 201559686217/250000000000 |
| 77:124 | BQS | lo | 45207/250000 | earlier 76:124; BQS; lo; 45207/250000 |
| 77:126 | BRS | lo | 93/1000 | occupants none |
| 77:134 | CEQ | lo | 93/1000 | occupants none |
| 77:136 | CER | lo | 93/1000 | occupants none |
| 77:137 | CER | hi | 3682767397/10000000000 | vertex maximum 3682767397/10000000000 |
| 77:138 | CES | lo | 93/1000 | occupants none |
| 77:142 | CFP | lo | 93/1000 | occupants none |
| 77:144 | CFQ | lo | 93/1000 | occupants none |
| 77:148 | CFS | lo | 103623/1000000 | earlier 76:148; CFS; lo; 103623/1000000 |
| 77:150 | CHP | lo | 93/1000 | occupants none |
| 77:156 | CHS | lo | 58327/500000 | earlier 76:156; CHS; lo; 58327/500000 |
| 77:162 | CPS | lo | 15483/125000 | earlier 76:162; CPS; lo; 15483/125000 |
| 77:165 | CQR | hi | 107337176733/250000000000 | vertex maximum 107337176733/250000000000 |
| 77:168 | CRS | lo | 93/1000 | occupants none |
| 77:170 | EFH | lo | 1637/12500 | earlier 76:168; EFH; lo; 1637/12500 |
| 77:176 | EFR | lo | 279/1000 | occupants S |
| 77:177 | EFR | hi | 4205593/10000000 | vertex maximum 4205593/10000000 |
| 77:178 | EFS | lo | 93/1000 | occupants none |
| 77:180 | EHP | lo | 93/1000 | occupants none |
| 77:182 | EHQ | lo | 23703/250000 | earlier 76:180; EHQ; lo; 23703/250000 |
| 77:184 | EHR | lo | 279/1000 | occupants S |
| 77:185 | EHR | hi | 5833/10000 | vertex maximum 5833/10000 |
| 77:186 | EHS | lo | 93/1000 | occupants none |
| 77:191 | EPR | hi | 17/32 | earlier 76:189; EPR; hi; 17/32 |
| 77:194 | EQR | lo | 93/1000 | occupants none |
| 77:198 | ERS | lo | 93/1000 | occupants none |
| 77:200 | FHP | lo | 93/1000 | occupants none |
| 77:204 | FHR | lo | 93/1000 | occupants none |
| 77:206 | FHS | lo | 126493/1000000 | earlier 76:204; FHS; lo; 126493/1000000 |
| 77:211 | FPR | hi | 61731/125000 | earlier 76:209; FPR; hi; 61731/125000 |
| 77:214 | FQR | lo | 301749/1000000 | earlier 76:212; FQR; lo; 301749/1000000 |
| 77:218 | FRS | lo | 93/1000 | occupants none |
| 77:219 | FRS | hi | 733/3125 | earlier 76:217; FRS; hi; 733/3125 |
| 77:220 | HPQ | lo | 93/1000 | occupants none |
| 77:222 | HPR | lo | 93/1000 | occupants none |
| 77:223 | HPR | hi | 308519/500000 | earlier 76:221; HPR; hi; 308519/500000 |
| 77:226 | HQR | lo | 68919/200000 | earlier 76:224; HQR; lo; 68919/200000 |
| 77:230 | HRS | lo | 93/1000 | occupants none |
| 77:231 | HRS | hi | 7619/25000 | earlier 76:229; HRS; hi; 7619/25000 |
| 77:233 | PQR | hi | 357633/500000 | earlier 76:231; PQR; hi; 357633/500000 |
| 77:236 | PRS | lo | 93/1000 | occupants none |
| 77:238 | QRS | lo | 93/1000 | occupants none |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 3 | fan | ACR = ACS + CRS + ARS | point S |
| 15 | fan | BCR = BCS + CRS + BRS | point S |
| 23 | fan | CFR = CFS + FRS + CRS | point S |
| 24 | fan | CHR = CHS + HRS + CRS | point S |
| 25 | fan | CPR = CPS + PRS + CRS | point S |
| 32 | plu | ABE * ACF = ABC * AEF + ABF * ACE | circuit ABCEF |
| 70 | plu | ABF * CFP = ACF * BFP + AFP * BCF | circuit FABCP |
| 77 | plu | ABR * ACF = ABC * AFR + ABF * ACR | circuit ABCFR |
| 78 | plu | ABR * BCF = ABC * BFR + ABF * BCR | circuit BACFR |
| 156 | plu | AER * BFR = ABR * EFR + AFR * BER | circuit RABEF |
| 191 | plu | AER * BPR = ABR * EPR + APR * BER | circuit RABEP |
| 336 | plu | AES * CFS = ACS * EFS + AFS * CES | circuit SACEF |
| 373 | plu | ACE * CQR = ACQ * CER + ACR * CEQ | circuit CAEQR |
| 374 | plu | AEQ * CER = ACE * EQR + AER * CEQ | circuit EACQR |
| 412 | plu | ACP * AFR = ACF * APR + ACR * AFP | circuit ACFPR |
| 436 | plu | ACS * FRS = AFS * CRS + ARS * CFS | circuit SACFR |
| 445 | plu | ACP * HPR = AHP * CPR + APR * CHP | circuit PACHR |
| 512 | plu | AEP * AFR = AEF * APR + AER * AFP | circuit AEFPR |
| 531 | plu | AES * FQS = AFS * EQS + AQS * EFS | circuit SAEFQ |
| 536 | plu | AES * FRS = AFS * ERS + ARS * EFS | circuit SAEFR |
| 617 | plu | AFR * APQ = AFP * AQR + AFQ * APR | circuit AFPQR |
| 724 | plu | BEQ * CER = BCE * EQR + BER * CEQ | circuit EBCQR |
| 747 | plu | BCF * BHR = BCH * BFR + BCR * BFH | circuit BCFHR |
| 749 | plu | BFR * CFH = BCF * FHR + BFH * CFR | circuit FBCHR |
| 750 | plu | BHR * CFH = BCH * FHR + BFH * CHR | circuit HBCFR |
| 815 | plu | BCR * HRS = BHR * CRS + BRS * CHR | circuit RBCHS |
| 848 | plu | BEF * EHR = BEH * EFR + BER * EFH | circuit EBFHR |
| 849 | plu | BFR * EFH = BEF * FHR + BFH * EFR | circuit FBEHR |
| 916 | plu | BES * HRS = BHS * ERS + BRS * EHS | circuit SBEHR |
| 952 | plu | BFQ * BHR = BFH * BQR + BFR * BHQ | circuit BFHQR |
| 953 | plu | BFR * FHQ = BFH * FQR + BFQ * FHR | circuit FBHQR |
| 1078 | plu | CER * EHQ = CEH * EQR + CEQ * EHR | circuit ECHQR |
| 2248 | support | ACR * AER >= 1023/1000 * (ACR - ACE) | pentagon ACQER |
| 2418 | support | BCR * BER >= 1023/1000 * (BCR - BCE) | pentagon BCQER |
| 2617 | support | CFR * EFR >= 1023/1000 * (CFR - CEF) | pentagon FCQER |
| 2642 | support | CHR * EHR >= 1023/1000 * (CHR - CEH) | pentagon HCQER |
| 2652 | support | CPR * EPR >= 1023/1000 * (CPR - CEP) | pentagon PCQER |
| 2786 | bary | outer ABF; fans BFP, AFP, ABP; target CFP; sign 1; vertices ACF 1; BCF 1; none 0 | container ABF; inner P; line CF |
| 2797 | bary | outer ABF; fans BFP, AFP, ABP; target EPS; sign 1; vertices AES 1; BES 1; EFS 1 | container ABF; inner P; line ES |
| 2882 | bary | outer ACH; fans CHP, AHP, ACP; target EFP; sign 1; vertices AEF 1; CEF 1; EFH 1 | container ACH; inner P; line EF |
| 2890 | bary | outer ACH; fans CHP, AHP, ACP; target FPQ; sign -1; vertices AFQ -1; CFQ -1; FHQ -1 | container ACH; inner P; line FQ |
| 2891 | bary | outer ACH; fans CHP, AHP, ACP; target FPR; sign -1; vertices AFR -1; CFR -1; FHR -1 | container ACH; inner P; line FR |
| 2892 | bary | outer ACH; fans CHP, AHP, ACP; target FPS; sign -1; vertices AFS -1; CFS -1; FHS -1 | container ACH; inner P; line FS |
| 2930 | bary | outer ACR; fans CRS, ARS, ACS; target EQS; sign -1; vertices AEQ -1; CEQ -1; EQR -1 | container ACR; inner S; line EQ |
| 3047 | bary | outer AER; fans ERS, ARS, AES; target BCS; sign 1; vertices ABC 1; BCE 1; BCR 1 | container AER; inner S; line BC |
| 3272 | bary | outer AHR; fans HPR, APR, AHP; target BCP; sign 1; vertices ABC 1; BCH 1; BCR 1 | container AHR; inner P; line BC |
| 3273 | bary | outer AHR; fans HPR, APR, AHP; target BEP; sign 1; vertices ABE 1; BEH 1; BER 1 | container AHR; inner P; line BE |
| 3277 | bary | outer AHR; fans HPR, APR, AHP; target BPQ; sign 1; vertices ABQ 1; BHQ 1; BQR 1 | container AHR; inner P; line BQ |
| 3279 | bary | outer AHR; fans HPR, APR, AHP; target BPS; sign 1; vertices ABS 1; BHS 1; BRS 1 | container AHR; inner P; line BS |
| 3449 | bary | outer BCR; fans CRS, BRS, BCS; target AQS; sign 1; vertices ABQ -1; ACQ -1; AQR 1 | container BCR; inner S; line AQ |
| 3453 | bary | outer BCR; fans CRS, BRS, BCS; target BES; sign 1; vertices none 0; BCE -1; BER 1 | container BCR; inner S; line BE |
| 3457 | bary | outer BCR; fans CRS, BRS, BCS; target BQS; sign 1; vertices none 0; BCQ -1; BQR 1 | container BCR; inner S; line BQ |
| 3460 | bary | outer BCR; fans CRS, BRS, BCS; target CES; sign 1; vertices BCE 1; none 0; CER 1 | container BCR; inner S; line CE |
| 3535 | bary | outer BER; fans ERS, BRS, BES; target AES; sign 1; vertices ABE -1; none 0; AER 1 | container BER; inner S; line AE |
| 3563 | bary | outer BER; fans ERS, BRS, BES; target FHS; sign 1; vertices BFH 1; EFH 1; FHR 1 | container BER; inner S; line FH |
| 3622 | bary | outer BFH; fans FHP, BHP, BFP; target PRS; sign -1; vertices BRS -1; FRS -1; HRS -1 | container BFH; inner P; line RS |
| 3763 | bary | outer BQR; fans QRS, BRS, BQS; target APS; sign -1; vertices ABP -1; APQ -1; APR -1 | container BQR; inner S; line AP |
| 3938 | bary | outer EFR; fans FRS, ERS, EFS; target ABS; sign 1; vertices ABE 1; ABF 1; ABR 1 | container EFR; inner S; line AB |
| 3939 | bary | outer EFR; fans FRS, ERS, EFS; target ACS; sign 1; vertices ACE 1; ACF 1; ACR 1 | container EFR; inner S; line AC |
| 3944 | bary | outer EFR; fans FRS, ERS, EFS; target AQS; sign 1; vertices AEQ 1; AFQ 1; AQR 1 | container EFR; inner S; line AQ |
| 3957 | bary | outer EFR; fans FRS, ERS, EFS; target CHS; sign -1; vertices CEH -1; CFH -1; CHR -1 | container EFR; inner S; line CH |
| 3958 | bary | outer EFR; fans FRS, ERS, EFS; target CPS; sign -1; vertices CEP -1; CFP -1; CPR -1 | container EFR; inner S; line CP |
| 3973 | bary | outer EFR; fans FRS, ERS, EFS; target HPS; sign 1; vertices EHP 1; FHP 1; HPR 1 | container EFR; inner S; line HP |
| 3974 | bary | outer EFR; fans FRS, ERS, EFS; target HQS; sign 1; vertices EHQ 1; FHQ 1; HQR 1 | container EFR; inner S; line HQ |
| 3992 | bary | outer EHR; fans HRS, ERS, EHS; target BCS; sign 1; vertices BCE 1; BCH 1; BCR 1 | container EHR; inner S; line BC |
| 3997 | bary | outer EHR; fans HRS, ERS, EHS; target BQS; sign 1; vertices BEQ 1; BHQ 1; BQR 1 | container EHR; inner S; line BQ |
| 4243 | four | 1 * ACF + -1 * AFP + -1 * ACP + -1 * CFP = 0 | vertices ACFP |
| 4256 | four | 1 * ACR + -1 * ARS + -1 * ACS + -1 * CRS = 0 | vertices ACRS |
| 4258 | four | 1 * AEF + -1 * AFP + -1 * AEP + -1 * EFP = 0 | vertices AEFP |
| 4271 | four | 1 * AER + -1 * ARS + -1 * AES + -1 * ERS = 0 | vertices AERS |
| 4276 | four | -1 * AFP + -1 * APQ + 1 * AFQ + -1 * FPQ = 0 | vertices AFPQ |
| 4277 | four | -1 * AFP + -1 * APR + 1 * AFR + -1 * FPR = 0 | vertices AFPR |
| 4278 | four | -1 * AFP + -1 * APS + 1 * AFS + -1 * FPS = 0 | vertices AFPS |
| 4291 | four | 1 * AQR + -1 * ARS + -1 * AQS + -1 * QRS = 0 | vertices AQRS |
| 4303 | four | 1 * BCH + -1 * BHP + -1 * BCP + -1 * CHP = 0 | vertices BCHP |
| 4312 | four | 1 * BCR + -1 * BRS + -1 * BCS + -1 * CRS = 0 | vertices BCRS |
| 4318 | four | 1 * BEH + -1 * BHP + -1 * BEP + -1 * EHP = 0 | vertices BEHP |
| 4327 | four | 1 * BER + -1 * BRS + -1 * BES + -1 * ERS = 0 | vertices BERS |
| 4338 | four | -1 * BHP + -1 * BPQ + 1 * BHQ + -1 * HPQ = 0 | vertices BHPQ |
| 4339 | four | -1 * BHP + -1 * BPR + 1 * BHR + -1 * HPR = 0 | vertices BHPR |
| 4340 | four | -1 * BHP + -1 * BPS + 1 * BHS + -1 * HPS = 0 | vertices BHPS |
| 4347 | four | 1 * BQR + -1 * BRS + -1 * BQS + -1 * QRS = 0 | vertices BQRS |
| 4372 | four | -1 * CFR + 1 * CRS + 1 * CFS + 1 * FRS = 0 | vertices CFRS |
| 4378 | four | -1 * CHR + 1 * CRS + 1 * CHS + 1 * HRS = 0 | vertices CHRS |
| 4381 | four | -1 * CPR + 1 * CRS + 1 * CPS + 1 * PRS = 0 | vertices CPRS |
| 4398 | four | -1 * EHR + 1 * ERS + 1 * EHS + 1 * HRS = 0 | vertices EHRS |
| 4401 | four | -1 * EPR + 1 * ERS + 1 * EPS + 1 * PRS = 0 | vertices EPRS |
| 4412 | four | 1 * FQR + -1 * FRS + -1 * FQS + -1 * QRS = 0 | vertices FQRS |
| 4416 | four | 1 * HQR + -1 * HRS + -1 * HQS + -1 * QRS = 0 | vertices HQRS |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 77:240 | ACR | lo | 353361/1000000 | 353361/1000000 | 3 | 77:28, 77:168, 77:70 |
| 77:241 | BCR | lo | 323659/1000000 | 323659/1000000 | 15 | 77:84, 77:168, 77:126 |
| 77:242 | BCS | hi | 512973/1000000 | 512973/1000000 | 15 | 77:83, 77:168, 77:126 |
| 77:243 | CFR | lo | 289623/1000000 | 289623/1000000 | 23 | 77:148, 77:218, 77:168 |
| 77:244 | CHR | lo | 151327/500000 | 151327/500000 | 24 | 77:156, 77:230, 77:168 |
| 77:245 | CPR | lo | 38733/125000 | 38733/125000 | 25 | 77:162, 77:236, 77:168 |
| 77:246 | ABR | lo | 83907/500000 | 5372753375/32015999541 | 77 | 77:0, 77:48, 77:4, 77:240, 77:19 |
| 77:247 | BFR | lo | 14137/62500 | 73754173433/326068841088 | 156 | 77:246, 77:176, 77:48, 77:94, 77:39 |
| 77:249 | ACE | lo | 24171/250000 | 150404250/1555611257 | 373 | 77:24, 77:136, 77:240, 77:134, 77:165 |
| 77:250 | AEQ | lo | 113381/1000000 | 417556050/3682767397 | 374 | 77:249, 77:194, 77:38, 77:134, 77:137 |
| 77:251 | ACS | lo | 170513/1000000 | 1999779/11728000 | 436 | 77:50, 77:168, 77:70, 77:148, 77:219 |
| 77:252 | BCF | lo | 80553/500000 | 4027671843/25000000000 | 747 | 77:76, 77:247, 77:241, 77:98, 77:113 |
| 77:253 | CFH | lo | 63459/500000 | 11973459375/94339591508 | 749 | 77:252, 77:204, 77:98, 77:243, 77:105 |
| 77:254 | BFQ | lo | 3559/20000 | 695119503/3906250000 | 952 | 77:98, 77:122, 77:247, 77:110, 77:113 |
| 77:255 | FHQ | lo | 33369/250000 | 12592165125/94339591508 | 953 | 77:98, 77:214, 77:254, 77:204, 77:105 |
| 77:256 | ACE | lo | 128101/1000000 | 170635780584123/1332031250000000 | 2248 | 77:240, 77:39 |
| 77:257 | BCE | lo | 63457/500000 | 432779644366391/3410000000000000 | 2418 | 77:241, 77:95 |
| 77:258 | CEF | lo | 170557/1000000 | 581602276187/3410000000000 | 2617 | 77:243, 77:177 |
| 77:259 | CEH | lo | 26017/200000 | 60489529/465000000 | 2642 | 77:244, 77:185 |
| 77:260 | CEP | lo | 148949/1000000 | 25395937/170500000 | 2652 | 77:245, 77:191 |
| 77:264 | EFP | lo | 161867/1000000 | 70713103327781/436857806412500 | 2882 | 77:21, 77:150, 77:52, 77:22, 77:30, 77:258, 77:170 |
| 77:265 | FPQ | lo | 1611/12500 | 4504196879709/34948624513000 | 2890 | 77:21, 77:150, 77:52, 77:22, 77:46, 77:144, 77:255 |
| 77:266 | FPR | lo | 7511/50000 | 5249987129709/34948624513000 | 2891 | 77:21, 77:150, 77:52, 77:22, 77:48, 77:243, 77:204 |
| 77:268 | EQS | lo | 95063/1000000 | 17466665412033/183737406581000 | 2930 | 77:27, 77:168, 77:70, 77:251, 77:250, 77:134, 77:194 |
| 77:269 | BCS | lo | 9791/62500 | 12770203600171/81517210272000 | 3047 | 77:39, 77:198, 77:70, 77:40, 77:0, 77:257, 77:241 |
| 77:272 | BCP | lo | 141347/1000000 | 61270353/433474000 | 3272 | 77:57, 77:222, 77:62, 77:52, 77:0, 77:76, 77:241 |
| 77:275 | AQS | hi | 305751/500000 | 3238052397/5295250000 | 3449 | 77:83, 77:168, 77:126, 77:269, 77:10, 77:24, 77:67 |
| 77:276 | BQS | hi | 579321/1000000 | 33744142305931047/58247750000000000 | 3457 | 77:83, 77:168, 77:126, 77:269, 77:80, 77:123 |
| 77:283 | ABS | lo | 75337/500000 | 633677169/4205593000 | 3938 | 77:177, 77:218, 77:198, 77:178, 77:2, 77:4, 77:246 |
| 77:284 | ACS | lo | 105641/500000 | 126938362699/600799000000 | 3939 | 77:177, 77:218, 77:198, 77:178, 77:256, 77:18, 77:240 |
| 77:286 | AQS | lo | 112701/500000 | 49892204207/221347000000 | 3944 | 77:177, 77:218, 77:198, 77:178, 77:250, 77:46, 77:66 |
| 77:288 | CHS | lo | 166479/1000000 | 350072621187/2102796500000 | 3957 | 77:177, 77:218, 77:198, 77:178, 77:259, 77:253, 77:244 |
| 77:289 | CPS | lo | 9583/62500 | 644836239/4205593000 | 3958 | 77:177, 77:218, 77:198, 77:178, 77:260, 77:142, 77:245 |
| 77:290 | HQS | lo | 158597/1000000 | 166749098379/1051398250000 | 3974 | 77:177, 77:218, 77:198, 77:178, 77:182, 77:255, 77:226 |
| 77:292 | BCS | lo | 187957/1000000 | 548177371/2916500000 | 3992 | 77:185, 77:230, 77:198, 77:186, 77:257, 77:76, 77:241 |
| 77:293 | ACR | lo | 198641/500000 | 198641/500000 | 4256 | 77:70, 77:284, 77:168 |
| 77:294 | AEF | lo | 347867/1000000 | 347867/1000000 | 4258 | 77:44, 77:34, 77:264 |
| 77:295 | AFQ | lo | 322197/1000000 | 322197/1000000 | 4276 | 77:44, 77:60, 77:265 |
| 77:296 | AFR | lo | 16811/50000 | 16811/50000 | 4277 | 77:44, 77:62, 77:266 |
| 77:297 | AQR | lo | 205701/500000 | 205701/500000 | 4291 | 77:70, 77:286, 77:238 |
| 77:298 | BCH | lo | 327347/1000000 | 327347/1000000 | 4303 | 77:108, 77:272, 77:150 |
| 77:299 | BCR | lo | 373957/1000000 | 373957/1000000 | 4312 | 77:126, 77:292, 77:168 |
| 77:301 | CHR | lo | 352479/1000000 | 352479/1000000 | 4378 | 77:168, 77:288, 77:230 |
| 77:302 | CPR | lo | 5302/15625 | 5302/15625 | 4381 | 77:168, 77:289, 77:236 |
| 77:303 | HQR | lo | 344597/1000000 | 344597/1000000 | 4416 | 77:230, 77:290, 77:238 |
| 77:305 | ABR | lo | 92473/500000 | 5921255750/32015999541 | 77 | 77:0, 77:296, 77:4, 77:293, 77:19 |
| 77:307 | BFR | lo | 4763/20000 | 38826664195/163034420544 | 156 | 77:305, 77:176, 77:296, 77:94, 77:39 |
| 77:310 | CFS | lo | 2821/25000 | 16669289/147724000 | 336 | 77:284, 77:178, 77:50, 77:138, 77:41 |
| 77:311 | AEQ | lo | 60657/500000 | 446773860/3682767397 | 374 | 77:256, 77:194, 77:38, 77:134, 77:137 |
| 77:313 | HPR | lo | 93291/1000000 | 5025813/53872250 | 445 | 77:52, 77:302, 77:62, 77:150, 77:23 |
| 77:314 | AEP | lo | 95779/1000000 | 32557812/339923905 | 512 | 77:294, 77:62, 77:38, 77:44, 77:49 |
| 77:316 | FQS | lo | 117323/1000000 | 51994466531/443172000000 | 531 | 77:50, 77:268, 77:286, 77:178, 77:41 |
| 77:317 | APQ | lo | 1568/15625 | 68224707/679847810 | 617 | 77:44, 77:297, 77:295, 77:62, 77:49 |
| 77:320 | BEQ | lo | 109941/1000000 | 404887590/3682767397 | 724 | 77:257, 77:194, 77:94, 77:134, 77:137 |
| 77:322 | BCF | lo | 182291/1000000 | 3645833821/20000000000 | 747 | 77:298, 77:307, 77:299, 77:98, 77:113 |
| 77:323 | CFH | lo | 129529/1000000 | 3054933750/23584897877 | 749 | 77:322, 77:204, 77:98, 77:243, 77:105 |
| 77:325 | BFQ | lo | 181947/1000000 | 1819476021/10000000000 | 952 | 77:98, 77:122, 77:307, 77:110, 77:113 |
| 77:326 | FHQ | lo | 133969/1000000 | 6319315125/47169795754 | 953 | 77:98, 77:214, 77:325, 77:204, 77:105 |
| 77:329 | EHQ | lo | 20661/200000 | 380449050/3682767397 | 1078 | 77:259, 77:194, 77:134, 77:184, 77:137 |
| 77:332 | ACE | lo | 18003/125000 | 95922476139163/666015625000000 | 2248 | 77:293, 77:39 |
| 77:333 | BCE | lo | 146637/1000000 | 500035461607193/3410000000000000 | 2418 | 77:299, 77:95 |
| 77:334 | CEH | lo | 303/2000 | 516616721/3410000000 | 2642 | 77:301, 77:185 |
| 77:335 | CEP | lo | 20389/125000 | 474047/2906250 | 2652 | 77:302, 77:191 |
| 77:338 | CFP | lo | 95499/1000000 | 14300021000/149738539799 | 2786 | 77:5, 77:100, 77:44, 77:8, 77:18, 77:322 |
| 77:340 | EFP | lo | 5159/31250 | 72120193327781/436857806412500 | 2882 | 77:21, 77:150, 77:52, 77:22, 77:294, 77:258, 77:170 |
| 77:341 | FPQ | lo | 64473/500000 | 4506493979709/34948624513000 | 2890 | 77:21, 77:150, 77:52, 77:22, 77:295, 77:144, 77:326 |
| 77:342 | FPR | lo | 75761/500000 | 5295492029709/34948624513000 | 2891 | 77:21, 77:150, 77:52, 77:22, 77:296, 77:243, 77:204 |
| 77:343 | FPS | lo | 35769/250000 | 125007882251173/873715612825000 | 2892 | 77:21, 77:150, 77:52, 77:22, 77:50, 77:310, 77:206 |
| 77:344 | EQS | lo | 47933/500000 | 17614219212033/183737406581000 | 2930 | 77:27, 77:168, 77:70, 77:284, 77:311, 77:134, 77:194 |
| 77:357 | BCP | lo | 74139/500000 | 32137359/216737000 | 3272 | 77:57, 77:313, 77:62, 77:52, 77:0, 77:298, 77:299 |
| 77:358 | BPS | lo | 61149/500000 | 53013230067/433474000000 | 3279 | 77:57, 77:313, 77:62, 77:52, 77:283, 77:114, 77:126 |
| 77:364 | APS | lo | 11731/125000 | 18915984818181/201559686217000 | 3763 | 77:123, 77:238, 77:126, 77:124, 77:8, 77:317, 77:62 |
| 77:366 | ABS | lo | 154463/1000000 | 649609929/4205593000 | 3938 | 77:177, 77:218, 77:198, 77:178, 77:2, 77:4, 77:305 |
| 77:367 | ACS | lo | 1839/8000 | 17263641897/75099875000 | 3939 | 77:177, 77:218, 77:198, 77:178, 77:332, 77:18, 77:293 |
| 77:369 | AQS | lo | 57471/250000 | 483400169601/2102796500000 | 3944 | 77:177, 77:218, 77:198, 77:178, 77:311, 77:295, 77:297 |
| 77:374 | CHS | lo | 183689/1000000 | 772522785697/4205593000000 | 3957 | 77:177, 77:218, 77:198, 77:178, 77:334, 77:323, 77:301 |
| 77:375 | CPS | lo | 164369/1000000 | 691270985907/4205593000000 | 3958 | 77:177, 77:218, 77:198, 77:178, 77:335, 77:338, 77:302 |
| 77:376 | HPS | lo | 11633/125000 | 391390779/4205593000 | 3973 | 77:177, 77:218, 77:198, 77:178, 77:180, 77:200, 77:313 |
| 77:377 | HQS | lo | 163443/1000000 | 137475572973/841118600000 | 3974 | 77:177, 77:218, 77:198, 77:178, 77:329, 77:326, 77:303 |
| 77:379 | BCS | lo | 52923/250000 | 1234801521/5833000000 | 3992 | 77:185, 77:230, 77:198, 77:186, 77:333, 77:298, 77:299 |
| 77:380 | BQS | lo | 93331/500000 | 1088801853/5833000000 | 3997 | 77:185, 77:230, 77:198, 77:186, 77:320, 77:110, 77:122 |
| 77:382 | ACF | lo | 281499/1000000 | 281499/1000000 | 4243 | 77:44, 77:22, 77:338 |
| 77:383 | ACR | lo | 3327/8000 | 3327/8000 | 4256 | 77:70, 77:367, 77:168 |
| 77:384 | AEF | lo | 353867/1000000 | 353867/1000000 | 4258 | 77:44, 77:314, 77:340 |
| 77:386 | AFQ | lo | 161149/500000 | 161149/500000 | 4276 | 77:44, 77:317, 77:341 |
| 77:387 | AFR | lo | 168761/500000 | 168761/500000 | 4277 | 77:44, 77:62, 77:342 |
| 77:388 | AFS | lo | 82481/250000 | 82481/250000 | 4278 | 77:44, 77:364, 77:343 |
| 77:393 | AQR | lo | 103971/250000 | 103971/250000 | 4291 | 77:70, 77:369, 77:238 |
| 77:394 | BCH | lo | 167139/500000 | 167139/500000 | 4303 | 77:108, 77:357, 77:150 |
| 77:395 | BCR | lo | 99423/250000 | 99423/250000 | 4312 | 77:126, 77:379, 77:168 |
| 77:397 | BHS | lo | 154181/500000 | 154181/500000 | 4340 | 77:108, 77:358, 77:376 |
| 77:398 | BQR | lo | 186331/500000 | 186331/500000 | 4347 | 77:126, 77:380, 77:238 |
| 77:399 | CFR | lo | 7471/25000 | 7471/25000 | 4372 | 77:168, 77:310, 77:218 |
| 77:400 | CHR | lo | 369689/1000000 | 369689/1000000 | 4378 | 77:168, 77:374, 77:230 |
| 77:401 | CPR | lo | 350369/1000000 | 350369/1000000 | 4381 | 77:168, 77:375, 77:236 |
| 77:402 | FQR | lo | 303323/1000000 | 303323/1000000 | 4412 | 77:218, 77:316, 77:238 |
| 77:403 | HQR | lo | 349443/1000000 | 349443/1000000 | 4416 | 77:230, 77:377, 77:238 |
| 77:405 | ABE | lo | 23781/250000 | 3045513625/32015999541 | 32 | 77:0, 77:384, 77:4, 77:332, 77:19 |
| 77:407 | ABR | lo | 38371/200000 | 6142444625/32015999541 | 77 | 77:0, 77:387, 77:4, 77:383, 77:19 |
| 77:409 | BFR | lo | 241721/1000000 | 78817934189/326068841088 | 156 | 77:407, 77:176, 77:387, 77:94, 77:39 |
| 77:412 | CFS | lo | 58737/500000 | 17353769/147724000 | 336 | 77:367, 77:178, 77:388, 77:138, 77:41 |
| 77:413 | AEQ | lo | 25067/200000 | 461582250/3682767397 | 374 | 77:332, 77:194, 77:38, 77:134, 77:137 |
| 77:414 | ACP | lo | 95397/1000000 | 32427891/339923905 | 412 | 77:382, 77:62, 77:383, 77:44, 77:49 |
| 77:415 | HPR | lo | 95673/1000000 | 41233317/430978000 | 445 | 77:52, 77:401, 77:62, 77:150, 77:23 |
| 77:416 | AEP | lo | 483/5000 | 32836812/339923905 | 512 | 77:384, 77:62, 77:38, 77:44, 77:49 |
| 77:417 | FQS | lo | 119609/1000000 | 6625963273/55396500000 | 531 | 77:388, 77:344, 77:369, 77:178, 77:41 |
| 77:418 | AES | lo | 167683/1000000 | 9832983/58640000 | 536 | 77:388, 77:198, 77:70, 77:178, 77:219 |
| 77:419 | APQ | lo | 100979/1000000 | 34325463/339923905 | 617 | 77:44, 77:393, 77:386, 77:62, 77:49 |
| 77:422 | BEQ | lo | 114921/1000000 | 423229980/3682767397 | 724 | 77:333, 77:194, 77:94, 77:134, 77:137 |
| 77:423 | BCF | lo | 95879/500000 | 95879040219/500000000000 | 747 | 77:394, 77:409, 77:395, 77:98, 77:113 |
| 77:425 | CFH | lo | 134231/1000000 | 26846217/200000000 | 750 | 77:394, 77:204, 77:98, 77:400, 77:113 |
| 77:426 | BES | lo | 61239/500000 | 18663333/152380000 | 916 | 77:397, 77:198, 77:126, 77:186, 77:231 |
| 77:427 | BFQ | lo | 2887/15625 | 92384454567/500000000000 | 952 | 77:98, 77:398, 77:409, 77:110, 77:113 |
| 77:428 | FHQ | lo | 134899/1000000 | 12726317625/94339591508 | 953 | 77:98, 77:402, 77:427, 77:204, 77:105 |
| 77:429 | EHQ | lo | 108713/1000000 | 400365000/3682767397 | 1078 | 77:334, 77:194, 77:134, 77:184, 77:137 |
| 77:432 | ACE | lo | 37691/250000 | 1606587150261/10656250000000 | 2248 | 77:383, 77:39 |
| 77:433 | BCE | lo | 31189/200000 | 132943161110427/852500000000000 | 2418 | 77:395, 77:95 |
| 77:434 | CEF | lo | 35197/200000 | 1451882087/8250000000 | 2617 | 77:399, 77:177 |
| 77:435 | CEH | lo | 158897/1000000 | 1625522533/10230000000 | 2642 | 77:400, 77:185 |
| 77:436 | CEP | lo | 8421/50000 | 689175823/4092000000 | 2652 | 77:401, 77:191 |
| 77:439 | CFP | lo | 97977/1000000 | 14670967000/149738539799 | 2786 | 77:5, 77:100, 77:44, 77:8, 77:382, 77:423 |
| 77:440 | EPS | lo | 28641/250000 | 17154675201307/149738539799000 | 2797 | 77:5, 77:100, 77:44, 77:8, 77:418, 77:426, 77:178 |
| 77:442 | EFP | lo | 166609/1000000 | 72784445827781/436857806412500 | 2882 | 77:21, 77:150, 77:52, 77:414, 77:384, 77:434, 77:170 |
| 77:443 | FPQ | lo | 129227/1000000 | 4516309724859/34948624513000 | 2890 | 77:21, 77:150, 77:52, 77:414, 77:386, 77:144, 77:428 |
| 77:444 | FPR | lo | 152921/1000000 | 485855034519/3177147683000 | 2891 | 77:21, 77:150, 77:52, 77:414, 77:387, 77:399, 77:204 |
| 77:445 | FPS | lo | 146971/1000000 | 2568233246595081/17474312256500000 | 2892 | 77:21, 77:150, 77:52, 77:414, 77:388, 77:412, 77:206 |
| 77:446 | EQS | lo | 96273/1000000 | 17689009812033/183737406581000 | 2930 | 77:27, 77:168, 77:70, 77:367, 77:413, 77:134, 77:194 |
| 77:463 | BCP | lo | 151567/1000000 | 65700687/433474000 | 3272 | 77:57, 77:415, 77:62, 77:52, 77:0, 77:394, 77:395 |
| 77:464 | BEP | lo | 142907/1000000 | 7743342597/54184250000 | 3273 | 77:57, 77:415, 77:62, 77:52, 77:405, 77:88, 77:94 |
| 77:465 | BPQ | lo | 1861/12500 | 16133919/108368500 | 3277 | 77:57, 77:415, 77:62, 77:52, 77:10, 77:110, 77:398 |
| 77:466 | BPS | lo | 24577/200000 | 106535179599/866948000000 | 3279 | 77:57, 77:415, 77:62, 77:52, 77:366, 77:397, 77:126 |
| 77:472 | AES | hi | 88571/200000 | 1195275756798788957/2699027410156250000 | 3535 | 77:95, 77:198, 77:126, 77:426, 77:405, 77:39 |
| 77:475 | APS | lo | 587/6250 | 18930562568181/201559686217000 | 3763 | 77:123, 77:238, 77:126, 77:380, 77:8, 77:419, 77:62 |
| 77:477 | ABS | lo | 6287/40000 | 165254334633/1051398250000 | 3938 | 77:177, 77:218, 77:198, 77:178, 77:405, 77:4, 77:407 |
| 77:478 | ACS | lo | 238299/1000000 | 13186694777/55336750000 | 3939 | 77:177, 77:218, 77:198, 77:178, 77:432, 77:382, 77:383 |
| 77:480 | AQS | lo | 11657/50000 | 196098831731/841118600000 | 3944 | 77:177, 77:218, 77:198, 77:178, 77:413, 77:386, 77:393 |
| 77:485 | CHS | lo | 191753/1000000 | 806436273983/4205593000000 | 3957 | 77:177, 77:218, 77:198, 77:178, 77:435, 77:425, 77:400 |
| 77:486 | CPS | lo | 84683/500000 | 712287935361/4205593000000 | 3958 | 77:177, 77:218, 77:198, 77:178, 77:436, 77:439, 77:401 |
| 77:487 | HPS | lo | 93591/1000000 | 393606039/4205593000 | 3973 | 77:177, 77:218, 77:198, 77:178, 77:180, 77:200, 77:415 |
| 77:488 | HQS | lo | 167737/1000000 | 705434511809/4205593000000 | 3974 | 77:177, 77:218, 77:198, 77:178, 77:429, 77:428, 77:403 |
| 77:490 | BCS | lo | 222921/1000000 | 260060317/1166600000 | 3992 | 77:185, 77:230, 77:198, 77:186, 77:433, 77:394, 77:395 |
| 77:491 | BQS | lo | 23873/125000 | 1114013013/5833000000 | 3997 | 77:185, 77:230, 77:198, 77:186, 77:422, 77:110, 77:398 |
| 77:493 | ACF | lo | 143187/500000 | 143187/500000 | 4243 | 77:44, 77:414, 77:439 |
| 77:495 | ACR | lo | 424299/1000000 | 424299/1000000 | 4256 | 77:70, 77:478, 77:168 |
| 77:496 | AEF | lo | 356209/1000000 | 356209/1000000 | 4258 | 77:44, 77:416, 77:442 |
| 77:498 | AER | lo | 353683/1000000 | 353683/1000000 | 4271 | 77:70, 77:418, 77:198 |
| 77:499 | AFQ | lo | 161603/500000 | 161603/500000 | 4276 | 77:44, 77:419, 77:443 |
| 77:500 | AFR | lo | 338921/1000000 | 338921/1000000 | 4277 | 77:44, 77:62, 77:444 |
| 77:501 | AFS | lo | 333891/1000000 | 333891/1000000 | 4278 | 77:44, 77:475, 77:445 |
| 77:506 | AQR | lo | 20957/50000 | 20957/50000 | 4291 | 77:70, 77:480, 77:238 |
| 77:507 | BCH | lo | 337567/1000000 | 337567/1000000 | 4303 | 77:108, 77:463, 77:150 |
| 77:508 | BCR | lo | 408921/1000000 | 408921/1000000 | 4312 | 77:126, 77:490, 77:168 |
| 77:509 | BEH | lo | 328907/1000000 | 328907/1000000 | 4318 | 77:108, 77:464, 77:180 |
| 77:510 | BER | lo | 154239/500000 | 154239/500000 | 4327 | 77:126, 77:426, 77:198 |
| 77:511 | BHQ | lo | 2093/6250 | 2093/6250 | 4338 | 77:108, 77:465, 77:220 |
| 77:513 | BHS | lo | 77369/250000 | 77369/250000 | 4340 | 77:108, 77:466, 77:487 |
| 77:514 | BQR | lo | 47123/125000 | 47123/125000 | 4347 | 77:126, 77:491, 77:238 |
| 77:515 | CFR | lo | 151737/500000 | 151737/500000 | 4372 | 77:168, 77:412, 77:218 |
| 77:516 | CHR | lo | 377753/1000000 | 377753/1000000 | 4378 | 77:168, 77:485, 77:230 |
| 77:517 | CPR | lo | 177683/500000 | 177683/500000 | 4381 | 77:168, 77:486, 77:236 |
| 77:518 | EPR | lo | 75141/250000 | 75141/250000 | 4401 | 77:198, 77:440, 77:236 |
| 77:519 | FQR | lo | 305609/1000000 | 305609/1000000 | 4412 | 77:218, 77:417, 77:238 |
| 77:520 | HQR | lo | 353737/1000000 | 353737/1000000 | 4416 | 77:230, 77:488, 77:238 |
| 77:522 | ABE | lo | 19571/200000 | 3132941375/32015999541 | 32 | 77:0, 77:496, 77:4, 77:432, 77:19 |
| 77:525 | ABR | lo | 39077/200000 | 11380751/58247750 | 78 | 77:0, 77:409, 77:4, 77:508, 77:75 |
| 77:526 | BFR | lo | 60977/250000 | 1395281467/5720505984 | 156 | 77:525, 77:176, 77:500, 77:510, 77:39 |
| 77:527 | BPR | lo | 67021/500000 | 2428170865/18114935616 | 191 | 77:525, 77:518, 77:62, 77:510, 77:39 |
| 77:529 | CFS | lo | 751/6250 | 5321367/44285500 | 336 | 77:478, 77:178, 77:501, 77:138, 77:472 |
| 77:530 | AEQ | lo | 63693/500000 | 469135710/3682767397 | 374 | 77:432, 77:194, 77:498, 77:134, 77:137 |
| 77:531 | ACP | lo | 1519/15625 | 66092589/679847810 | 412 | 77:493, 77:62, 77:495, 77:44, 77:49 |
| 77:532 | HPR | lo | 6047/62500 | 20849019/215489000 | 445 | 77:52, 77:517, 77:62, 77:150, 77:23 |
| 77:533 | AEP | lo | 97109/1000000 | 33009978/339923905 | 512 | 77:496, 77:62, 77:498, 77:44, 77:49 |
| 77:534 | FQS | lo | 15193/125000 | 7689529749/63265000000 | 531 | 77:501, 77:446, 77:480, 77:178, 77:472 |
| 77:535 | AES | lo | 21157/125000 | 39700863/234560000 | 536 | 77:501, 77:198, 77:70, 77:178, 77:219 |
| 77:536 | APQ | lo | 101549/1000000 | 34519089/339923905 | 617 | 77:44, 77:506, 77:499, 77:62, 77:49 |
| 77:539 | BEQ | lo | 117279/1000000 | 431913390/3682767397 | 724 | 77:433, 77:194, 77:510, 77:134, 77:137 |
| 77:540 | BCF | lo | 24553/125000 | 49106062709/250000000000 | 747 | 77:507, 77:526, 77:508, 77:98, 77:113 |
| 77:542 | CFH | lo | 68393/500000 | 68393409/500000000 | 750 | 77:507, 77:204, 77:98, 77:516, 77:113 |
| 77:543 | BEF | lo | 113289/500000 | 3304083297/14582500000 | 848 | 77:509, 77:176, 77:510, 77:170, 77:185 |
| 77:544 | EFH | lo | 131059/1000000 | 6182047125/47169795754 | 849 | 77:543, 77:204, 77:98, 77:176, 77:105 |
| 77:545 | BES | lo | 61409/500000 | 9357567/76190000 | 916 | 77:513, 77:198, 77:126, 77:186, 77:231 |
| 77:546 | BFQ | lo | 93429/500000 | 583932647/3125000000 | 952 | 77:98, 77:514, 77:526, 77:511, 77:113 |
| 77:547 | FHQ | lo | 136001/1000000 | 12830338125/94339591508 | 953 | 77:98, 77:519, 77:546, 77:204, 77:105 |
| 77:549 | EHQ | lo | 110581/1000000 | 407244210/3682767397 | 1078 | 77:435, 77:194, 77:134, 77:184, 77:137 |
| 77:552 | ACE | lo | 76909/500000 | 204891289831257/1332031250000000 | 2248 | 77:495, 77:39 |
| 77:553 | BCE | lo | 40087/250000 | 17638305404259/110000000000000 | 2418 | 77:508, 77:95 |
| 77:554 | CEF | lo | 89357/500000 | 304708481653/1705000000000 | 2617 | 77:515, 77:177 |
| 77:555 | CEH | lo | 162363/1000000 | 1660979941/10230000000 | 2642 | 77:516, 77:185 |
| 77:556 | CEP | lo | 85411/500000 | 31772951/186000000 | 2652 | 77:517, 77:191 |
| 77:559 | CFP | lo | 6247/62500 | 14966738000/149738539799 | 2786 | 77:5, 77:100, 77:44, 77:8, 77:493, 77:540 |
| 77:560 | EPS | lo | 1437/12500 | 17213978201307/149738539799000 | 2797 | 77:5, 77:100, 77:44, 77:8, 77:535, 77:545, 77:178 |
| 77:562 | EFP | lo | 41839/250000 | 5848875030049267/34948624513000000 | 2882 | 77:21, 77:150, 77:52, 77:531, 77:496, 77:554, 77:544 |
| 77:563 | FPQ | lo | 12961/100000 | 4529699240509/34948624513000 | 2890 | 77:21, 77:150, 77:52, 77:531, 77:499, 77:144, 77:547 |
| 77:564 | FPR | lo | 38431/250000 | 5372458829709/34948624513000 | 2891 | 77:21, 77:150, 77:52, 77:531, 77:500, 77:515, 77:204 |
| 77:565 | FPS | lo | 74739/500000 | 32650370736763/218428903206250 | 2892 | 77:21, 77:150, 77:52, 77:531, 77:501, 77:529, 77:206 |
| 77:566 | EQS | lo | 603/6250 | 17727158412033/183737406581000 | 2930 | 77:27, 77:168, 77:70, 77:478, 77:530, 77:134, 77:194 |
| 77:582 | BCP | lo | 49/320 | 33187887/216737000 | 3272 | 77:57, 77:532, 77:62, 77:52, 77:0, 77:507, 77:508 |
| 77:583 | BEP | lo | 72617/500000 | 6295548577/43347400000 | 3273 | 77:57, 77:532, 77:62, 77:52, 77:522, 77:509, 77:510 |
| 77:584 | BPQ | lo | 14941/100000 | 32382879/216737000 | 3277 | 77:57, 77:532, 77:62, 77:52, 77:10, 77:511, 77:514 |
| 77:585 | BPS | lo | 123383/1000000 | 267418729/2167370000 | 3279 | 77:57, 77:532, 77:62, 77:52, 77:477, 77:513, 77:126 |
| 77:592 | AES | hi | 221223/500000 | 3582520200083866871/8097082230468750000 | 3535 | 77:95, 77:198, 77:126, 77:545, 77:522, 77:39 |
| 77:594 | FHS | lo | 31627/250000 | 262233623743/2072853051000 | 3563 | 77:95, 77:198, 77:126, 77:545, 77:98, 77:544, 77:204 |
| 77:596 | APS | lo | 46993/500000 | 18943815068181/201559686217000 | 3763 | 77:123, 77:238, 77:126, 77:491, 77:8, 77:536, 77:62 |
| 77:598 | ABS | lo | 159479/1000000 | 134141210603/841118600000 | 3938 | 77:177, 77:218, 77:198, 77:178, 77:522, 77:4, 77:525 |
| 77:599 | ACS | lo | 242943/1000000 | 510860157037/2102796500000 | 3939 | 77:177, 77:218, 77:198, 77:178, 77:552, 77:493, 77:495 |
| 77:601 | AQS | lo | 47041/200000 | 494588744949/2102796500000 | 3944 | 77:177, 77:218, 77:198, 77:178, 77:530, 77:499, 77:506 |
| 77:605 | CHS | lo | 195727/1000000 | 411576082049/2102796500000 | 3957 | 77:177, 77:218, 77:198, 77:178, 77:555, 77:542, 77:516 |
| 77:606 | CPS | lo | 21513/125000 | 6462513853/37549937500 | 3958 | 77:177, 77:218, 77:198, 77:178, 77:556, 77:559, 77:517 |
| 77:607 | HPS | lo | 93829/1000000 | 56372787/600799000 | 3973 | 77:177, 77:218, 77:198, 77:178, 77:180, 77:200, 77:532 |
| 77:608 | HQS | lo | 42493/250000 | 102119194219/600799000000 | 3974 | 77:177, 77:218, 77:198, 77:178, 77:549, 77:547, 77:520 |
| 77:610 | BCS | lo | 45647/200000 | 332824111/1458250000 | 3992 | 77:185, 77:230, 77:198, 77:186, 77:553, 77:507, 77:508 |
| 77:611 | BQS | lo | 193379/1000000 | 1127982987/5833000000 | 3997 | 77:185, 77:230, 77:198, 77:186, 77:539, 77:511, 77:514 |
| 77:613 | ACF | lo | 36271/125000 | 36271/125000 | 4243 | 77:44, 77:531, 77:559 |
| 77:615 | ACR | lo | 428943/1000000 | 428943/1000000 | 4256 | 77:70, 77:599, 77:168 |
| 77:616 | AEF | lo | 71493/200000 | 71493/200000 | 4258 | 77:44, 77:533, 77:562 |
| 77:618 | AER | lo | 44407/125000 | 44407/125000 | 4271 | 77:70, 77:535, 77:198 |
| 77:619 | AFQ | lo | 324159/1000000 | 324159/1000000 | 4276 | 77:44, 77:536, 77:563 |
| 77:620 | AFR | lo | 84931/250000 | 84931/250000 | 4277 | 77:44, 77:62, 77:564 |
| 77:621 | AFS | lo | 21029/62500 | 21029/62500 | 4278 | 77:44, 77:596, 77:565 |
| 77:626 | AQR | lo | 84241/200000 | 84241/200000 | 4291 | 77:70, 77:601, 77:238 |
| 77:627 | BCH | lo | 2713/8000 | 2713/8000 | 4303 | 77:108, 77:582, 77:150 |
| 77:628 | BCR | lo | 82847/200000 | 82847/200000 | 4312 | 77:126, 77:610, 77:168 |
| 77:629 | BEH | lo | 165617/500000 | 165617/500000 | 4318 | 77:108, 77:583, 77:180 |
| 77:630 | BER | lo | 154409/500000 | 154409/500000 | 4327 | 77:126, 77:545, 77:198 |
| 77:631 | BHQ | lo | 33541/100000 | 33541/100000 | 4338 | 77:108, 77:584, 77:220 |
| 77:632 | BHR | lo | 161897/500000 | 161897/500000 | 4339 | 77:108, 77:527, 77:532 |
| 77:633 | BHS | lo | 77553/250000 | 77553/250000 | 4340 | 77:108, 77:585, 77:607 |
| 77:634 | BQR | lo | 379379/1000000 | 379379/1000000 | 4347 | 77:126, 77:611, 77:238 |
| 77:635 | CFR | lo | 3827/12500 | 3827/12500 | 4372 | 77:168, 77:529, 77:218 |
| 77:636 | CHR | lo | 381727/1000000 | 381727/1000000 | 4378 | 77:168, 77:605, 77:230 |
| 77:637 | CPR | lo | 44763/125000 | 44763/125000 | 4381 | 77:168, 77:606, 77:236 |
| 77:638 | EPR | lo | 1881/6250 | 1881/6250 | 4401 | 77:198, 77:560, 77:236 |
| 77:639 | FQR | lo | 38443/125000 | 38443/125000 | 4412 | 77:218, 77:534, 77:238 |
| 77:640 | HQR | lo | 88993/250000 | 88993/250000 | 4416 | 77:230, 77:608, 77:238 |
| 77:642 | ABE | lo | 24779/250000 | 1057770375/10671999847 | 32 | 77:0, 77:616, 77:4, 77:552, 77:19 |
| 77:645 | ABR | lo | 197797/1000000 | 46085003/232991000 | 78 | 77:0, 77:526, 77:4, 77:628, 77:75 |
| 77:646 | BFR | lo | 245497/1000000 | 10006140577/40758605136 | 156 | 77:645, 77:176, 77:620, 77:630, 77:39 |
| 77:647 | BPR | lo | 67661/500000 | 1838522065/13586201712 | 191 | 77:645, 77:638, 77:62, 77:630, 77:39 |
| 77:649 | CFS | lo | 30447/250000 | 17961617/147482000 | 336 | 77:599, 77:178, 77:621, 77:138, 77:592 |
| 77:650 | AEQ | lo | 25711/200000 | 473438820/3682767397 | 374 | 77:552, 77:194, 77:618, 77:134, 77:137 |
| 77:651 | ACP | lo | 98371/1000000 | 66877323/679847810 | 412 | 77:613, 77:62, 77:615, 77:44, 77:49 |
| 77:652 | HPR | lo | 48671/500000 | 2622042/26936125 | 445 | 77:52, 77:637, 77:62, 77:150, 77:23 |
| 77:653 | AEP | lo | 12187/125000 | 66283053/679847810 | 512 | 77:616, 77:62, 77:618, 77:44, 77:49 |
| 77:654 | FQS | lo | 15351/125000 | 12237863/99650000 | 531 | 77:621, 77:566, 77:601, 77:178, 77:592 |
| 77:655 | AES | lo | 42569/250000 | 4992519/29320000 | 536 | 77:621, 77:198, 77:70, 77:178, 77:219 |
| 77:656 | APQ | lo | 50981/500000 | 34659426/339923905 | 617 | 77:44, 77:626, 77:619, 77:62, 77:49 |
| 77:659 | BEQ | lo | 118477/1000000 | 436324380/3682767397 | 724 | 77:553, 77:194, 77:630, 77:134, 77:137 |
| 77:660 | BCF | lo | 7953/40000 | 1590605881/8000000000 | 747 | 77:627, 77:646, 77:628, 77:98, 77:113 |
| 77:662 | CFH | lo | 3451/25000 | 69020229/500000000 | 750 | 77:627, 77:204, 77:98, 77:636, 77:113 |
| 77:663 | HRS | lo | 93871/1000000 | 21871151/232991000 | 815 | 77:632, 77:168, 77:126, 77:636, 77:83 |
| 77:664 | BEF | lo | 11391/50000 | 66443832131/291650000000 | 848 | 77:629, 77:176, 77:630, 77:544, 77:185 |
| 77:665 | EFH | lo | 32803/250000 | 3094633125/23584897877 | 849 | 77:664, 77:204, 77:98, 77:176, 77:105 |
| 77:666 | BES | lo | 123043/1000000 | 9374679/76190000 | 916 | 77:633, 77:198, 77:126, 77:186, 77:231 |
| 77:667 | BFQ | lo | 47047/250000 | 18818888977/100000000000 | 952 | 77:98, 77:634, 77:646, 77:631, 77:113 |
| 77:668 | FHQ | lo | 1711/12500 | 3228320625/23584897877 | 953 | 77:98, 77:639, 77:667, 77:204, 77:105 |
| 77:670 | EHQ | lo | 3483/31250 | 410467590/3682767397 | 1078 | 77:555, 77:194, 77:134, 77:184, 77:137 |
| 77:673 | ACE | lo | 77751/500000 | 207133847909349/1332031250000000 | 2248 | 77:615, 77:39 |
| 77:674 | BCE | lo | 162431/1000000 | 110778613283803/682000000000000 | 2418 | 77:628, 77:95 |
| 77:675 | CEF | lo | 22537/125000 | 23055405589/127875000000 | 2617 | 77:635, 77:177 |
| 77:676 | CEH | lo | 164071/1000000 | 1678453619/10230000000 | 2642 | 77:636, 77:185 |
| 77:677 | CEP | lo | 86069/500000 | 29349607/170500000 | 2652 | 77:637, 77:191 |
| 77:680 | CFP | lo | 20247/200000 | 15158783000/149738539799 | 2786 | 77:5, 77:100, 77:44, 77:8, 77:613, 77:660 |
| 77:681 | EPS | lo | 115217/1000000 | 17252573201307/149738539799000 | 2797 | 77:5, 77:100, 77:44, 77:8, 77:655, 77:666, 77:178 |
| 77:683 | EFP | lo | 83923/500000 | 1466498992399939/8737156128250000 | 2882 | 77:21, 77:150, 77:52, 77:651, 77:616, 77:675, 77:665 |
| 77:684 | FPQ | lo | 129931/1000000 | 4540937403709/34948624513000 | 2890 | 77:21, 77:150, 77:52, 77:651, 77:619, 77:144, 77:668 |
| 77:685 | FPR | lo | 38547/250000 | 5388682679709/34948624513000 | 2891 | 77:21, 77:150, 77:52, 77:651, 77:620, 77:635, 77:204 |
| 77:686 | FPS | lo | 30203/200000 | 1319445509547311/8737156128250000 | 2892 | 77:21, 77:150, 77:52, 77:651, 77:621, 77:649, 77:594 |
| 77:687 | EQS | lo | 96599/1000000 | 17748901812033/183737406581000 | 2930 | 77:27, 77:168, 77:70, 77:599, 77:650, 77:134, 77:194 |
| 77:702 | BCP | lo | 76931/500000 | 33347661/216737000 | 3272 | 77:57, 77:652, 77:62, 77:52, 77:0, 77:627, 77:628 |
| 77:703 | BEP | lo | 146511/1000000 | 7938604873/54184250000 | 3273 | 77:57, 77:652, 77:62, 77:52, 77:642, 77:629, 77:630 |
| 77:704 | BPQ | lo | 37431/250000 | 129803541/866948000 | 3277 | 77:57, 77:652, 77:62, 77:52, 77:10, 77:631, 77:634 |
| 77:705 | BPS | lo | 24753/200000 | 53649039409/433474000000 | 3279 | 77:57, 77:652, 77:62, 77:52, 77:598, 77:633, 77:126 |
| 77:712 | AES | hi | 221129/500000 | 3580993207896366871/8097082230468750000 | 3535 | 77:95, 77:198, 77:126, 77:666, 77:642, 77:39 |
| 77:714 | FHS | lo | 126531/1000000 | 262281053743/2072853051000 | 3563 | 77:95, 77:198, 77:126, 77:666, 77:98, 77:665, 77:204 |
| 77:715 | PRS | lo | 18631/200000 | 24298947/260843500 | 3622 | 77:99, 77:200, 77:108, 77:100, 77:126, 77:218, 77:663 |
| 77:717 | APS | lo | 94033/1000000 | 18953417318181/201559686217000 | 3763 | 77:123, 77:238, 77:126, 77:611, 77:8, 77:656, 77:62 |
| 77:718 | ABS | lo | 40179/250000 | 24139535921/150199750000 | 3938 | 77:177, 77:218, 77:198, 77:178, 77:642, 77:4, 77:645 |
| 77:719 | ACS | lo | 61437/250000 | 73822688049/300399500000 | 3939 | 77:177, 77:218, 77:198, 77:178, 77:673, 77:613, 77:615 |
| 77:721 | AQS | lo | 59131/250000 | 198945245623/841118600000 | 3944 | 77:177, 77:218, 77:198, 77:178, 77:650, 77:619, 77:626 |
| 77:724 | CHS | lo | 197683/1000000 | 20784444943/105139825000 | 3957 | 77:177, 77:218, 77:198, 77:178, 77:676, 77:662, 77:636 |
| 77:725 | CPS | lo | 43429/250000 | 146116233471/841118600000 | 3958 | 77:177, 77:218, 77:198, 77:178, 77:677, 77:680, 77:637 |
| 77:726 | HPS | lo | 2349/25000 | 395158209/4205593000 | 3973 | 77:177, 77:218, 77:198, 77:178, 77:180, 77:200, 77:652 |
| 77:727 | HQS | lo | 42787/250000 | 22493211669/131424781250 | 3974 | 77:177, 77:218, 77:198, 77:178, 77:670, 77:668, 77:640 |
| 77:729 | BCS | lo | 230749/1000000 | 1345963163/5833000000 | 3992 | 77:185, 77:663, 77:198, 77:186, 77:674, 77:627, 77:628 |
| 77:730 | BQS | lo | 194661/1000000 | 1135462891/5833000000 | 3997 | 77:185, 77:663, 77:198, 77:186, 77:659, 77:631, 77:634 |
| 77:732 | ACF | lo | 146303/500000 | 146303/500000 | 4243 | 77:44, 77:651, 77:680 |
| 77:734 | ACR | lo | 107937/250000 | 107937/250000 | 4256 | 77:70, 77:719, 77:168 |
| 77:735 | AEF | lo | 179171/500000 | 179171/500000 | 4258 | 77:44, 77:653, 77:683 |
| 77:737 | AER | lo | 89069/250000 | 89069/250000 | 4271 | 77:70, 77:655, 77:198 |
| 77:738 | AFQ | lo | 324893/1000000 | 324893/1000000 | 4276 | 77:44, 77:656, 77:684 |
| 77:739 | AFR | lo | 85047/250000 | 85047/250000 | 4277 | 77:44, 77:62, 77:685 |
| 77:740 | AFS | lo | 5282/15625 | 5282/15625 | 4278 | 77:44, 77:717, 77:686 |
| 77:745 | AQR | lo | 105631/250000 | 105631/250000 | 4291 | 77:70, 77:721, 77:238 |
| 77:746 | BCH | lo | 169931/500000 | 169931/500000 | 4303 | 77:108, 77:702, 77:150 |
| 77:747 | BCR | lo | 416749/1000000 | 416749/1000000 | 4312 | 77:126, 77:729, 77:168 |
| 77:748 | BEH | lo | 332511/1000000 | 332511/1000000 | 4318 | 77:108, 77:703, 77:180 |
| 77:749 | BER | lo | 309043/1000000 | 309043/1000000 | 4327 | 77:126, 77:666, 77:198 |
| 77:750 | BHQ | lo | 83931/250000 | 83931/250000 | 4338 | 77:108, 77:704, 77:220 |
| 77:751 | BHR | lo | 10177/31250 | 10177/31250 | 4339 | 77:108, 77:647, 77:652 |
| 77:752 | BHS | lo | 12429/40000 | 12429/40000 | 4340 | 77:108, 77:705, 77:726 |
| 77:753 | BQR | lo | 380661/1000000 | 380661/1000000 | 4347 | 77:126, 77:730, 77:238 |
| 77:754 | CFR | lo | 76947/250000 | 76947/250000 | 4372 | 77:168, 77:649, 77:218 |
| 77:755 | CHR | lo | 192277/500000 | 192277/500000 | 4378 | 77:168, 77:724, 77:663 |
| 77:756 | CPR | lo | 359871/1000000 | 359871/1000000 | 4381 | 77:168, 77:725, 77:715 |
| 77:757 | EHR | lo | 279871/1000000 | 279871/1000000 | 4398 | 77:198, 77:186, 77:663 |
| 77:758 | EPR | lo | 75343/250000 | 75343/250000 | 4401 | 77:198, 77:681, 77:715 |
| 77:759 | FQR | lo | 38601/125000 | 38601/125000 | 4412 | 77:218, 77:654, 77:238 |
| 77:760 | HQR | lo | 358019/1000000 | 358019/1000000 | 4416 | 77:663, 77:727, 77:238 |
| 77:762 | ABE | lo | 49917/500000 | 3196286000/32015999541 | 32 | 77:0, 77:735, 77:4, 77:673, 77:19 |
| 77:765 | ABR | lo | 49753/250000 | 5796008/29123875 | 78 | 77:0, 77:646, 77:4, 77:747, 77:75 |
| 77:766 | BFR | lo | 123177/500000 | 13388089007/54344806848 | 156 | 77:765, 77:176, 77:739, 77:749, 77:39 |
| 77:767 | BPR | lo | 136041/1000000 | 583668707/4290379488 | 191 | 77:765, 77:758, 77:62, 77:749, 77:39 |
| 77:769 | CFS | lo | 122763/1000000 | 13573257/110564500 | 336 | 77:719, 77:178, 77:740, 77:138, 77:712 |
| 77:770 | AEQ | lo | 64619/500000 | 475953540/3682767397 | 374 | 77:673, 77:194, 77:737, 77:134, 77:137 |
| 77:771 | ACP | lo | 6193/62500 | 33682461/339923905 | 412 | 77:732, 77:62, 77:734, 77:44, 77:49 |
| 77:772 | HPR | lo | 24431/250000 | 42117003/430978000 | 445 | 77:52, 77:756, 77:62, 77:150, 77:23 |
| 77:773 | AEP | lo | 24439/250000 | 33229737/339923905 | 512 | 77:735, 77:62, 77:737, 77:44, 77:49 |
| 77:774 | FQS | lo | 61787/500000 | 1707869711/13820562500 | 531 | 77:740, 77:687, 77:721, 77:178, 77:712 |
| 77:775 | AES | lo | 21363/125000 | 5010933/29320000 | 536 | 77:740, 77:198, 77:70, 77:178, 77:219 |
| 77:776 | APQ | lo | 102243/1000000 | 69509781/679847810 | 617 | 77:44, 77:745, 77:738, 77:62, 77:49 |
| 77:779 | BEQ | lo | 5953/50000 | 438470820/3682767397 | 724 | 77:674, 77:194, 77:749, 77:134, 77:137 |
| 77:780 | BCF | lo | 199999/1000000 | 49999833537/250000000000 | 747 | 77:746, 77:766, 77:747, 77:98, 77:113 |
| 77:782 | CFH | lo | 138897/1000000 | 34724433/250000000 | 750 | 77:746, 77:204, 77:98, 77:755, 77:113 |
| 77:783 | HRS | lo | 2953/31250 | 11008379/116495500 | 815 | 77:751, 77:168, 77:126, 77:755, 77:83 |
| 77:784 | BEF | lo | 114281/500000 | 33330179779/145825000000 | 848 | 77:748, 77:176, 77:749, 77:665, 77:185 |
| 77:785 | EFH | lo | 131303/1000000 | 6193579125/47169795754 | 849 | 77:784, 77:204, 77:98, 77:176, 77:105 |
| 77:786 | BES | lo | 123199/1000000 | 1501857/12190400 | 916 | 77:752, 77:198, 77:126, 77:186, 77:231 |
| 77:787 | BFQ | lo | 188911/1000000 | 11806960581/62500000000 | 952 | 77:98, 77:753, 77:766, 77:750, 77:113 |
| 77:788 | FHQ | lo | 137437/1000000 | 12965769375/94339591508 | 953 | 77:98, 77:759, 77:787, 77:204, 77:105 |
| 77:790 | EHQ | lo | 112107/1000000 | 412866060/3682767397 | 1078 | 77:676, 77:194, 77:134, 77:757, 77:137 |
| 77:793 | ACE | lo | 156519/1000000 | 52122091144491/333007812500000 | 2248 | 77:734, 77:39 |
| 77:794 | BCE | lo | 163417/1000000 | 557254653848801/3410000000000000 | 2418 | 77:747, 77:95 |
| 77:795 | CEF | lo | 36251/200000 | 154520015143/852500000000 | 2617 | 77:754, 77:177 |
| 77:796 | CEH | lo | 82643/500000 | 845441969/5115000000 | 2642 | 77:755, 77:185 |
| 77:797 | CEP | lo | 172987/1000000 | 235955419/1364000000 | 2652 | 77:756, 77:191 |
| 77:800 | CFP | lo | 50991/500000 | 15270755000/149738539799 | 2786 | 77:5, 77:100, 77:44, 77:8, 77:732, 77:780 |
| 77:801 | EPS | lo | 5769/50000 | 17276877201307/149738539799000 | 2797 | 77:5, 77:100, 77:44, 77:8, 77:775, 77:786, 77:178 |
| 77:803 | EFP | lo | 168157/1000000 | 534260672220949/3177147683000000 | 2882 | 77:21, 77:150, 77:52, 77:771, 77:735, 77:795, 77:785 |
| 77:804 | FPQ | lo | 130153/1000000 | 4548683202509/34948624513000 | 2890 | 77:21, 77:150, 77:52, 77:771, 77:738, 77:144, 77:788 |
| 77:805 | FPR | lo | 154467/1000000 | 5398410479709/34948624513000 | 2891 | 77:21, 77:150, 77:52, 77:771, 77:739, 77:754, 77:204 |
| 77:806 | FPS | lo | 151941/1000000 | 5310141420289419/34948624513000000 | 2892 | 77:21, 77:150, 77:52, 77:771, 77:740, 77:769, 77:714 |
| 77:807 | EQS | lo | 24167/250000 | 17761605612033/183737406581000 | 2930 | 77:27, 77:168, 77:70, 77:719, 77:770, 77:134, 77:194 |
| 77:821 | BCP | lo | 154211/1000000 | 133692987/866948000 | 3272 | 77:57, 77:772, 77:62, 77:52, 77:0, 77:746, 77:747 |
| 77:822 | BEP | lo | 36809/250000 | 15955785579/108368500000 | 3273 | 77:57, 77:772, 77:62, 77:52, 77:762, 77:748, 77:749 |
| 77:823 | BPQ | lo | 29979/200000 | 129951969/866948000 | 3277 | 77:57, 77:772, 77:62, 77:52, 77:10, 77:750, 77:753 |
| 77:824 | BPS | lo | 123989/1000000 | 13436508423/108368500000 | 3279 | 77:57, 77:772, 77:62, 77:52, 77:718, 77:752, 77:126 |
| 77:830 | AES | hi | 8843/20000 | 1193374584923788957/2699027410156250000 | 3535 | 77:95, 77:198, 77:126, 77:786, 77:762, 77:39 |
| 77:832 | FHS | lo | 25309/200000 | 262309263743/2072853051000 | 3563 | 77:95, 77:198, 77:126, 77:786, 77:98, 77:785, 77:204 |
| 77:833 | PRS | lo | 46633/500000 | 48656019/521687000 | 3622 | 77:99, 77:200, 77:108, 77:100, 77:126, 77:218, 77:783 |
| 77:835 | APS | lo | 47033/500000 | 18959950568181/201559686217000 | 3763 | 77:123, 77:238, 77:126, 77:730, 77:8, 77:776, 77:62 |
| 77:836 | ABS | lo | 32277/200000 | 339360545781/2102796500000 | 3938 | 77:177, 77:218, 77:198, 77:178, 77:762, 77:4, 77:765 |
| 77:837 | ACS | lo | 123737/500000 | 1040779090767/4205593000000 | 3939 | 77:177, 77:218, 77:198, 77:178, 77:793, 77:732, 77:734 |
| 77:839 | AQS | lo | 237359/1000000 | 4845813389/20415500000 | 3944 | 77:177, 77:218, 77:198, 77:178, 77:770, 77:738, 77:745 |
| 77:842 | CHS | lo | 39811/200000 | 837147030921/4205593000000 | 3957 | 77:177, 77:218, 77:198, 77:178, 77:796, 77:782, 77:755 |
| 77:843 | CPS | lo | 174711/1000000 | 367383102663/2102796500000 | 3958 | 77:177, 77:218, 77:198, 77:178, 77:797, 77:800, 77:756 |
| 77:844 | HPS | lo | 23511/250000 | 395513469/4205593000 | 3973 | 77:177, 77:218, 77:198, 77:178, 77:180, 77:200, 77:772 |
| 77:845 | HQS | lo | 172087/1000000 | 723731474451/4205593000000 | 3974 | 77:177, 77:218, 77:198, 77:178, 77:790, 77:788, 77:760 |
| 77:847 | BCS | lo | 231939/1000000 | 1352903971/5833000000 | 3992 | 77:185, 77:783, 77:198, 77:186, 77:794, 77:746, 77:747 |
| 77:848 | BQS | lo | 195313/1000000 | 113926343/583300000 | 3997 | 77:185, 77:783, 77:198, 77:186, 77:779, 77:750, 77:753 |
| 77:850 | ACF | lo | 29407/100000 | 29407/100000 | 4243 | 77:44, 77:771, 77:800 |
| 77:852 | ACR | lo | 216737/500000 | 216737/500000 | 4256 | 77:70, 77:837, 77:168 |
| 77:853 | AEF | lo | 358913/1000000 | 358913/1000000 | 4258 | 77:44, 77:773, 77:803 |
| 77:855 | AER | lo | 44613/125000 | 44613/125000 | 4271 | 77:70, 77:775, 77:198 |
| 77:856 | AFQ | lo | 81349/250000 | 81349/250000 | 4276 | 77:44, 77:776, 77:804 |
| 77:857 | AFR | lo | 340467/1000000 | 340467/1000000 | 4277 | 77:44, 77:62, 77:805 |
| 77:858 | AFS | lo | 339007/1000000 | 339007/1000000 | 4278 | 77:44, 77:835, 77:806 |
| 77:863 | AQR | lo | 423359/1000000 | 423359/1000000 | 4291 | 77:70, 77:839, 77:238 |
| 77:864 | BCH | lo | 340211/1000000 | 340211/1000000 | 4303 | 77:108, 77:821, 77:150 |
| 77:865 | BCR | lo | 417939/1000000 | 417939/1000000 | 4312 | 77:126, 77:847, 77:168 |
| 77:866 | BEH | lo | 83309/250000 | 83309/250000 | 4318 | 77:108, 77:822, 77:180 |
| 77:867 | BER | lo | 309199/1000000 | 309199/1000000 | 4327 | 77:126, 77:786, 77:198 |
| 77:868 | BHQ | lo | 67179/200000 | 67179/200000 | 4338 | 77:108, 77:823, 77:220 |
| 77:869 | BHR | lo | 65353/200000 | 65353/200000 | 4339 | 77:108, 77:767, 77:772 |
| 77:870 | BHS | lo | 311033/1000000 | 311033/1000000 | 4340 | 77:108, 77:824, 77:844 |
| 77:871 | BQR | lo | 381313/1000000 | 381313/1000000 | 4347 | 77:126, 77:848, 77:238 |
| 77:872 | CFR | lo | 308763/1000000 | 308763/1000000 | 4372 | 77:168, 77:769, 77:218 |
| 77:873 | CHR | lo | 386551/1000000 | 386551/1000000 | 4378 | 77:168, 77:842, 77:783 |
| 77:874 | CPR | lo | 360977/1000000 | 360977/1000000 | 4381 | 77:168, 77:843, 77:833 |
| 77:875 | EHR | lo | 17531/62500 | 17531/62500 | 4398 | 77:198, 77:186, 77:783 |
| 77:876 | EPR | lo | 150823/500000 | 150823/500000 | 4401 | 77:198, 77:801, 77:833 |
| 77:877 | FQR | lo | 154787/500000 | 154787/500000 | 4412 | 77:218, 77:774, 77:238 |
| 77:878 | HQR | lo | 359583/1000000 | 359583/1000000 | 4416 | 77:783, 77:845, 77:238 |
| 77:880 | ABE | lo | 6267/62500 | 3210321250/32015999541 | 32 | 77:0, 77:853, 77:4, 77:793, 77:19 |
| 77:882 | ABR | lo | 199601/1000000 | 46505301/232991000 | 78 | 77:0, 77:766, 77:4, 77:865, 77:75 |
| 77:883 | BFR | lo | 12341/50000 | 53653578311/217379227392 | 156 | 77:882, 77:176, 77:857, 77:867, 77:39 |
| 77:884 | BPR | lo | 136419/1000000 | 44482175123/326068841088 | 191 | 77:882, 77:876, 77:62, 77:867, 77:39 |
| 77:886 | CFS | lo | 123357/1000000 | 54542733/442150000 | 336 | 77:837, 77:178, 77:858, 77:138, 77:830 |
| 77:887 | AEQ | lo | 129653/1000000 | 477483390/3682767397 | 374 | 77:793, 77:194, 77:855, 77:134, 77:137 |
| 77:888 | ACP | lo | 24881/250000 | 33830796/339923905 | 412 | 77:850, 77:62, 77:852, 77:44, 77:49 |
| 77:889 | HPR | lo | 48981/500000 | 42219861/430978000 | 445 | 77:52, 77:874, 77:62, 77:150, 77:23 |
| 77:890 | AEP | lo | 306/3125 | 66570981/679847810 | 512 | 77:853, 77:62, 77:855, 77:44, 77:49 |
| 77:891 | FQS | lo | 62021/500000 | 13711378919/110537500000 | 531 | 77:858, 77:807, 77:839, 77:178, 77:830 |
| 77:892 | AES | lo | 34257/200000 | 40176651/234560000 | 536 | 77:858, 77:198, 77:70, 77:178, 77:219 |
| 77:893 | APQ | lo | 51213/500000 | 13926843/135969562 | 617 | 77:44, 77:863, 77:856, 77:62, 77:49 |
| 77:896 | BEQ | lo | 29837/250000 | 439532880/3682767397 | 724 | 77:794, 77:194, 77:867, 77:134, 77:137 |
| 77:897 | BCF | lo | 8023/40000 | 10028793001/50000000000 | 747 | 77:864, 77:883, 77:865, 77:98, 77:113 |
| 77:898 | CFH | lo | 139487/1000000 | 17435919/125000000 | 750 | 77:864, 77:204, 77:98, 77:873, 77:113 |
| 77:899 | HRS | lo | 23727/250000 | 5528199/58247750 | 815 | 77:869, 77:168, 77:126, 77:873, 77:83 |
| 77:900 | BEF | lo | 3578/15625 | 133571600297/583300000000 | 848 | 77:866, 77:176, 77:867, 77:785, 77:185 |
| 77:901 | EFH | lo | 32839/250000 | 3098039250/23584897877 | 849 | 77:900, 77:204, 77:98, 77:176, 77:105 |
| 77:902 | BES | lo | 123293/1000000 | 37575069/304760000 | 916 | 77:870, 77:198, 77:126, 77:186, 77:231 |
| 77:903 | BFQ | lo | 189291/1000000 | 1892919309/10000000000 | 952 | 77:98, 77:871, 77:883, 77:868, 77:113 |
| 77:904 | FHQ | lo | 137767/1000000 | 12996901125/94339591508 | 953 | 77:98, 77:877, 77:903, 77:204, 77:105 |
| 77:906 | EHQ | lo | 28143/250000 | 414577260/3682767397 | 1078 | 77:796, 77:194, 77:134, 77:875, 77:137 |
| 77:909 | ACE | lo | 19643/125000 | 104660919502891/666015625000000 | 2248 | 77:852, 77:39 |
| 77:910 | BCE | lo | 40971/250000 | 558845858718111/3410000000000000 | 2418 | 77:865, 77:95 |
| 77:911 | CEF | lo | 181829/1000000 | 620037992847/3410000000000 | 2617 | 77:872, 77:177 |
| 77:912 | CEH | lo | 33229/200000 | 154514977/930000000 | 2642 | 77:873, 77:185 |
| 77:913 | CEP | lo | 173519/1000000 | 710041759/4092000000 | 2652 | 77:874, 77:191 |
| 77:916 | CFP | lo | 20481/200000 | 15333995000/149738539799 | 2786 | 77:5, 77:100, 77:44, 77:8, 77:850, 77:897 |
| 77:917 | EPS | lo | 57739/500000 | 17291602201307/149738539799000 | 2797 | 77:5, 77:100, 77:44, 77:8, 77:892, 77:902, 77:178 |
| 77:919 | EFP | lo | 42087/250000 | 1470887755382407/8737156128250000 | 2882 | 77:21, 77:150, 77:52, 77:888, 77:853, 77:911, 77:901 |
| 77:920 | FPQ | lo | 26059/200000 | 4553633025109/34948624513000 | 2890 | 77:21, 77:150, 77:52, 77:888, 77:856, 77:144, 77:904 |
| 77:921 | FPR | lo | 154633/1000000 | 5404241579709/34948624513000 | 2891 | 77:21, 77:150, 77:52, 77:888, 77:857, 77:872, 77:204 |
| 77:922 | FPS | lo | 152503/1000000 | 484526736331831/3177147683000000 | 2892 | 77:21, 77:150, 77:52, 77:888, 77:858, 77:886, 77:832 |
| 77:923 | EQS | lo | 9671/100000 | 17769324612033/183737406581000 | 2930 | 77:27, 77:168, 77:70, 77:837, 77:887, 77:134, 77:194 |
| 77:937 | BCP | lo | 19297/125000 | 66918057/433474000 | 3272 | 77:57, 77:889, 77:62, 77:52, 77:0, 77:864, 77:865 |
| 77:938 | BEP | lo | 73837/500000 | 16003309107/108368500000 | 3273 | 77:57, 77:889, 77:62, 77:52, 77:880, 77:866, 77:867 |
| 77:939 | BPQ | lo | 4687/31250 | 32507127/216737000 | 3277 | 77:57, 77:889, 77:62, 77:52, 77:10, 77:868, 77:871 |
| 77:940 | BPS | lo | 31029/250000 | 10760236437/86694800000 | 3279 | 77:57, 77:889, 77:62, 77:52, 77:836, 77:870, 77:126 |
| 77:946 | AES | hi | 88417/200000 | 1193197788048788957/2699027410156250000 | 3535 | 77:95, 77:198, 77:126, 77:902, 77:880, 77:39 |
| 77:948 | FHS | lo | 15819/125000 | 262325693743/2072853051000 | 3563 | 77:95, 77:198, 77:126, 77:902, 77:98, 77:901, 77:204 |
| 77:949 | PRS | lo | 4667/50000 | 9738867/104337400 | 3622 | 77:99, 77:200, 77:108, 77:100, 77:126, 77:218, 77:899 |
| 77:951 | APS | lo | 94087/1000000 | 18964205318181/201559686217000 | 3763 | 77:123, 77:238, 77:126, 77:848, 77:8, 77:893, 77:62 |
| 77:952 | ABS | lo | 161759/1000000 | 10629628614/65712390625 | 3938 | 77:177, 77:218, 77:198, 77:178, 77:880, 77:4, 77:882 |
| 77:953 | ACS | lo | 15533/62500 | 130651473299/525699125000 | 3939 | 77:177, 77:218, 77:198, 77:178, 77:909, 77:850, 77:852 |
| 77:955 | AQS | lo | 118943/500000 | 1000455319229/4205593000000 | 3944 | 77:177, 77:218, 77:198, 77:178, 77:887, 77:856, 77:863 |
| 77:958 | CHS | lo | 12501/62500 | 841187010791/4205593000000 | 3957 | 77:177, 77:218, 77:198, 77:178, 77:912, 77:898, 77:873 |
| 77:959 | CPS | lo | 175309/1000000 | 21065192319/120159800000 | 3958 | 77:177, 77:218, 77:198, 77:178, 77:913, 77:916, 77:874 |
| 77:960 | HPS | lo | 94097/1000000 | 395734809/4205593000 | 3973 | 77:177, 77:218, 77:198, 77:178, 77:180, 77:200, 77:889 |
| 77:961 | HQS | lo | 86383/500000 | 181645898799/1051398250000 | 3974 | 77:177, 77:218, 77:198, 77:178, 77:906, 77:904, 77:878 |
| 77:963 | BCS | lo | 232503/1000000 | 169523829/729125000 | 3992 | 77:185, 77:899, 77:198, 77:186, 77:910, 77:864, 77:865 |
| 77:964 | BQS | lo | 4891/25000 | 285293261/1458250000 | 3997 | 77:185, 77:899, 77:198, 77:186, 77:896, 77:868, 77:871 |
| 77:966 | ACF | lo | 294929/1000000 | 294929/1000000 | 4243 | 77:44, 77:888, 77:916 |
| 77:968 | ACR | lo | 13579/31250 | 13579/31250 | 4256 | 77:70, 77:953, 77:168 |
| 77:969 | AEF | lo | 89817/250000 | 89817/250000 | 4258 | 77:44, 77:890, 77:919 |
| 77:971 | AER | lo | 71457/200000 | 71457/200000 | 4271 | 77:70, 77:892, 77:198 |
| 77:972 | AFQ | lo | 325721/1000000 | 325721/1000000 | 4276 | 77:44, 77:893, 77:920 |
| 77:973 | AFR | lo | 340633/1000000 | 340633/1000000 | 4277 | 77:44, 77:62, 77:921 |
| 77:974 | AFS | lo | 33959/100000 | 33959/100000 | 4278 | 77:44, 77:951, 77:922 |
| 77:979 | AQR | lo | 211943/500000 | 211943/500000 | 4291 | 77:70, 77:955, 77:238 |
| 77:980 | BCH | lo | 42547/125000 | 42547/125000 | 4303 | 77:108, 77:937, 77:150 |
| 77:981 | BCR | lo | 418503/1000000 | 418503/1000000 | 4312 | 77:126, 77:963, 77:168 |
| 77:982 | BEH | lo | 166837/500000 | 166837/500000 | 4318 | 77:108, 77:938, 77:180 |
| 77:983 | BER | lo | 309293/1000000 | 309293/1000000 | 4327 | 77:126, 77:902, 77:198 |
| 77:984 | BHQ | lo | 20999/62500 | 20999/62500 | 4338 | 77:108, 77:939, 77:220 |
| 77:985 | BHR | lo | 327381/1000000 | 327381/1000000 | 4339 | 77:108, 77:884, 77:889 |
| 77:986 | BHS | lo | 311213/1000000 | 311213/1000000 | 4340 | 77:108, 77:940, 77:960 |
| 77:987 | BQR | lo | 9541/25000 | 9541/25000 | 4347 | 77:126, 77:964, 77:238 |
| 77:988 | CFR | lo | 309357/1000000 | 309357/1000000 | 4372 | 77:168, 77:886, 77:218 |
| 77:989 | CHR | lo | 96981/250000 | 96981/250000 | 4378 | 77:168, 77:958, 77:899 |
| 77:990 | CPR | lo | 361649/1000000 | 361649/1000000 | 4381 | 77:168, 77:959, 77:949 |
| 77:991 | EHR | lo | 70227/250000 | 70227/250000 | 4398 | 77:198, 77:186, 77:899 |
| 77:992 | EPR | lo | 150909/500000 | 150909/500000 | 4401 | 77:198, 77:917, 77:949 |
| 77:993 | FQR | lo | 155021/500000 | 155021/500000 | 4412 | 77:218, 77:891, 77:238 |
| 77:994 | HQR | lo | 180337/500000 | 180337/500000 | 4416 | 77:899, 77:961, 77:238 |
| 77:996 | ABE | lo | 50271/500000 | 15112500/150309857 | 32 | 77:0, 77:969, 77:4, 77:909, 77:19 |
| 77:998 | ABR | lo | 12493/62500 | 46572199/232991000 | 78 | 77:0, 77:883, 77:4, 77:981, 77:75 |
| 77:999 | BFR | lo | 24707/100000 | 161124154469/652137682176 | 156 | 77:998, 77:176, 77:973, 77:983, 77:39 |
| 77:1000 | BPR | lo | 68309/500000 | 1237417297/9057467808 | 191 | 77:998, 77:992, 77:62, 77:983, 77:39 |
| 77:1002 | CFS | lo | 3093/25000 | 27347487/221042500 | 336 | 77:953, 77:178, 77:974, 77:138, 77:946 |
| 77:1003 | AEQ | lo | 129907/1000000 | 478418970/3682767397 | 374 | 77:909, 77:194, 77:971, 77:134, 77:137 |
| 77:1004 | ACP | lo | 49893/500000 | 67839501/679847810 | 412 | 77:966, 77:62, 77:968, 77:44, 77:49 |
| 77:1005 | HPR | lo | 98107/1000000 | 42282357/430978000 | 445 | 77:52, 77:990, 77:62, 77:150, 77:23 |
| 77:1006 | AEP | lo | 98021/1000000 | 66639429/679847810 | 512 | 77:969, 77:62, 77:971, 77:44, 77:49 |
| 77:1007 | FQS | lo | 124331/1000000 | 549651469/4420850000 | 531 | 77:974, 77:923, 77:955, 77:178, 77:946 |
| 77:1008 | AES | lo | 42879/250000 | 4023087/23456000 | 536 | 77:974, 77:198, 77:70, 77:178, 77:219 |
| 77:1009 | APQ | lo | 51271/500000 | 69713451/679847810 | 617 | 77:44, 77:979, 77:972, 77:62, 77:49 |
| 77:1012 | BEQ | lo | 11949/100000 | 440054610/3682767397 | 724 | 77:910, 77:194, 77:983, 77:134, 77:137 |
| 77:1013 | BCF | lo | 200859/1000000 | 5021475883/25000000000 | 747 | 77:980, 77:999, 77:981, 77:98, 77:113 |
| 77:1014 | CFH | lo | 27977/200000 | 34971441/250000000 | 750 | 77:980, 77:204, 77:98, 77:989, 77:113 |
| 77:1015 | HRS | lo | 95173/1000000 | 4434891/46598200 | 815 | 77:985, 77:168, 77:126, 77:989, 77:83 |
| 77:1016 | BEF | lo | 229251/1000000 | 33430634327/145825000000 | 848 | 77:982, 77:176, 77:983, 77:901, 77:185 |
| 77:1017 | EFH | lo | 32847/250000 | 12395167875/94339591508 | 849 | 77:1016, 77:204, 77:98, 77:176, 77:105 |
| 77:1018 | BES | lo | 30837/250000 | 37591809/304760000 | 916 | 77:986, 77:198, 77:126, 77:186, 77:231 |
| 77:1019 | BFQ | lo | 189489/1000000 | 1184307043/6250000000 | 952 | 77:98, 77:987, 77:999, 77:984, 77:113 |
| 77:1020 | FHQ | lo | 34491/250000 | 13015524375/94339591508 | 953 | 77:98, 77:993, 77:1019, 77:204, 77:105 |
| 77:1022 | EHQ | lo | 112893/1000000 | 415759290/3682767397 | 1078 | 77:912, 77:194, 77:134, 77:991, 77:137 |
| 77:1025 | ACE | lo | 78763/500000 | 6557212778297/41625976562500 | 2248 | 77:968, 77:39 |
| 77:1026 | BCE | lo | 32821/200000 | 559600009597347/3410000000000000 | 2418 | 77:981, 77:95 |
| 77:1027 | CEF | lo | 182179/1000000 | 621230825433/3410000000000 | 2617 | 77:988, 77:177 |
| 77:1028 | CEH | lo | 33347/200000 | 142141819/852500000 | 2642 | 77:989, 77:185 |
| 77:1029 | CEP | lo | 86921/500000 | 711363583/4092000000 | 2652 | 77:990, 77:191 |
| 77:1032 | CFP | lo | 102641/1000000 | 15369428000/149738539799 | 2786 | 77:5, 77:100, 77:44, 77:8, 77:966, 77:1013 |
| 77:1033 | EPS | lo | 115537/1000000 | 17300468201307/149738539799000 | 2797 | 77:5, 77:100, 77:44, 77:8, 77:1008, 77:1018, 77:178 |
| 77:1035 | EFP | lo | 33693/200000 | 1471912506878511/8737156128250000 | 2882 | 77:21, 77:150, 77:52, 77:1004, 77:969, 77:1027, 77:1017 |
| 77:1036 | FPQ | lo | 130383/1000000 | 4556713614909/34948624513000 | 2890 | 77:21, 77:150, 77:52, 77:1004, 77:972, 77:144, 77:1020 |
| 77:1037 | FPR | lo | 30947/200000 | 5407775579709/34948624513000 | 2891 | 77:21, 77:150, 77:52, 77:1004, 77:973, 77:988, 77:204 |
| 77:1038 | FPS | lo | 76423/500000 | 133544225558709/873715612825000 | 2892 | 77:21, 77:150, 77:52, 77:1004, 77:974, 77:1002, 77:948 |
| 77:1039 | EQS | lo | 3023/31250 | 17774049012033/183737406581000 | 2930 | 77:27, 77:168, 77:70, 77:953, 77:1003, 77:134, 77:194 |
| 77:1053 | BCP | lo | 77227/500000 | 133903911/866948000 | 3272 | 77:57, 77:1005, 77:62, 77:52, 77:0, 77:980, 77:981 |
| 77:1054 | BEP | lo | 18493/125000 | 8016237801/54184250000 | 3273 | 77:57, 77:1005, 77:62, 77:52, 77:996, 77:982, 77:983 |
| 77:1055 | BPQ | lo | 37507/250000 | 32516799/216737000 | 3277 | 77:57, 77:1005, 77:62, 77:52, 77:10, 77:984, 77:987 |
| 77:1056 | BPS | lo | 124189/1000000 | 107665712213/866948000000 | 3279 | 77:57, 77:1005, 77:62, 77:52, 77:952, 77:986, 77:126 |
| 77:1062 | AES | hi | 110511/250000 | 1193088803673788957/2699027410156250000 | 3535 | 77:95, 77:198, 77:126, 77:1018, 77:996, 77:39 |
| 77:1064 | FHS | lo | 126557/1000000 | 87445204581/690951017000 | 3563 | 77:95, 77:198, 77:126, 77:1018, 77:98, 77:1017, 77:204 |
| 77:1065 | PRS | lo | 93387/1000000 | 2435949/26084350 | 3622 | 77:99, 77:200, 77:108, 77:100, 77:126, 77:218, 77:1015 |
| 77:1067 | APS | lo | 941/10000 | 18966902318181/201559686217000 | 3763 | 77:123, 77:238, 77:126, 77:964, 77:8, 77:1009, 77:62 |
| 77:1068 | ABS | lo | 161973/1000000 | 340598225703/2102796500000 | 3938 | 77:177, 77:218, 77:198, 77:178, 77:996, 77:4, 77:998 |
| 77:1069 | ACS | lo | 49833/200000 | 523943446459/2102796500000 | 3939 | 77:177, 77:218, 77:198, 77:178, 77:1025, 77:966, 77:968 |
| 77:1071 | AQS | lo | 29777/125000 | 1001843459851/4205593000000 | 3944 | 77:177, 77:218, 77:198, 77:178, 77:1003, 77:972, 77:979 |
| 77:1074 | CHS | lo | 6271/31250 | 168789229361/841118600000 | 3957 | 77:177, 77:218, 77:198, 77:178, 77:1028, 77:1014, 77:989 |
| 77:1075 | CPS | lo | 175661/1000000 | 738760641113/4205593000000 | 3958 | 77:177, 77:218, 77:198, 77:178, 77:1029, 77:1032, 77:990 |
| 77:1076 | HPS | lo | 94129/1000000 | 395869659/4205593000 | 3973 | 77:177, 77:218, 77:198, 77:178, 77:180, 77:200, 77:1005 |
| 77:1077 | HQS | lo | 173229/1000000 | 728534370549/4205593000000 | 3974 | 77:177, 77:218, 77:198, 77:178, 77:1022, 77:1020, 77:994 |
| 77:1079 | BCS | lo | 232769/1000000 | 271549327/1166600000 | 3992 | 77:185, 77:1015, 77:198, 77:186, 77:1026, 77:980, 77:981 |
| 77:1080 | BQS | lo | 195803/1000000 | 114212409/583300000 | 3997 | 77:185, 77:1015, 77:198, 77:186, 77:1012, 77:984, 77:987 |
| 77:1082 | ACF | lo | 295427/1000000 | 295427/1000000 | 4243 | 77:44, 77:1004, 77:1032 |
| 77:1084 | ACR | lo | 87033/200000 | 87033/200000 | 4256 | 77:70, 77:1069, 77:168 |
| 77:1085 | AEF | lo | 179743/500000 | 179743/500000 | 4258 | 77:44, 77:1006, 77:1035 |
| 77:1087 | AER | lo | 89379/250000 | 89379/250000 | 4271 | 77:70, 77:1008, 77:198 |
| 77:1088 | AFQ | lo | 13037/40000 | 13037/40000 | 4276 | 77:44, 77:1009, 77:1036 |
| 77:1089 | AFR | lo | 68147/200000 | 68147/200000 | 4277 | 77:44, 77:62, 77:1037 |
| 77:1090 | AFS | lo | 169973/500000 | 169973/500000 | 4278 | 77:44, 77:1067, 77:1038 |
| 77:1095 | AQR | lo | 53027/125000 | 53027/125000 | 4291 | 77:70, 77:1071, 77:238 |
| 77:1096 | BCH | lo | 170227/500000 | 170227/500000 | 4303 | 77:108, 77:1053, 77:150 |
| 77:1097 | BCR | lo | 418769/1000000 | 418769/1000000 | 4312 | 77:126, 77:1079, 77:168 |
| 77:1098 | BEH | lo | 41743/125000 | 41743/125000 | 4318 | 77:108, 77:1054, 77:180 |
| 77:1099 | BER | lo | 77337/250000 | 77337/250000 | 4327 | 77:126, 77:1018, 77:198 |
| 77:1100 | BHQ | lo | 84007/250000 | 84007/250000 | 4338 | 77:108, 77:1055, 77:220 |
| 77:1101 | BHR | lo | 13109/40000 | 13109/40000 | 4339 | 77:108, 77:1000, 77:1005 |
| 77:1102 | BHS | lo | 155659/500000 | 155659/500000 | 4340 | 77:108, 77:1056, 77:1076 |
| 77:1103 | BQR | lo | 381803/1000000 | 381803/1000000 | 4347 | 77:126, 77:1080, 77:238 |
| 77:1104 | CFR | lo | 7743/25000 | 7743/25000 | 4372 | 77:168, 77:1002, 77:218 |
| 77:1105 | CHR | lo | 77769/200000 | 77769/200000 | 4378 | 77:168, 77:1074, 77:1015 |
| 77:1106 | CPR | lo | 5657/15625 | 5657/15625 | 4381 | 77:168, 77:1075, 77:1065 |
| 77:1107 | EHR | lo | 281173/1000000 | 281173/1000000 | 4398 | 77:198, 77:186, 77:1015 |
| 77:1108 | EPR | lo | 75481/250000 | 75481/250000 | 4401 | 77:198, 77:1033, 77:1065 |
| 77:1109 | FQR | lo | 310331/1000000 | 310331/1000000 | 4412 | 77:218, 77:1007, 77:238 |
| 77:1110 | HQR | lo | 180701/500000 | 180701/500000 | 4416 | 77:1015, 77:1077, 77:238 |
| 77:1112 | ABE | lo | 100707/1000000 | 3224248000/32015999541 | 32 | 77:0, 77:1085, 77:4, 77:1025, 77:19 |
| 77:1114 | ABR | lo | 200027/1000000 | 46604687/232991000 | 78 | 77:0, 77:999, 77:4, 77:1097, 77:75 |
| 77:1115 | BFR | lo | 247207/1000000 | 1492715035/6038311872 | 156 | 77:1114, 77:176, 77:1089, 77:1099, 77:39 |
| 77:1116 | BPR | lo | 136723/1000000 | 22290578987/163034420544 | 191 | 77:1114, 77:1108, 77:62, 77:1099, 77:39 |
| 77:1118 | CFS | lo | 6197/50000 | 18262441/147348000 | 336 | 77:1069, 77:178, 77:1090, 77:138, 77:1062 |
| 77:1119 | AEQ | lo | 65031/500000 | 478989060/3682767397 | 374 | 77:1025, 77:194, 77:1087, 77:134, 77:137 |
| 77:1120 | ACP | lo | 99941/1000000 | 33972528/339923905 | 412 | 77:1082, 77:62, 77:1084, 77:44, 77:49 |
| 77:1121 | HPR | lo | 49097/500000 | 5289933/53872250 | 445 | 77:52, 77:1106, 77:62, 77:150, 77:23 |
| 77:1122 | AEP | lo | 49041/500000 | 33340593/339923905 | 512 | 77:1085, 77:62, 77:1087, 77:44, 77:49 |
| 77:1123 | FQS | lo | 12451/100000 | 214996501/1726734375 | 531 | 77:1090, 77:1039, 77:1071, 77:178, 77:1062 |
| 77:1124 | AES | lo | 171657/1000000 | 20131989/117280000 | 536 | 77:1090, 77:198, 77:70, 77:178, 77:219 |
| 77:1125 | APQ | lo | 20523/200000 | 69763113/679847810 | 617 | 77:44, 77:1095, 77:1088, 77:62, 77:49 |
| 77:1128 | BEQ | lo | 119559/1000000 | 440311290/3682767397 | 724 | 77:1026, 77:194, 77:1099, 77:134, 77:137 |
| 77:1129 | BCF | lo | 200999/1000000 | 100499581489/500000000000 | 747 | 77:1096, 77:1115, 77:1097, 77:98, 77:113 |
| 77:1130 | CFH | lo | 140149/1000000 | 140149977/1000000000 | 750 | 77:1096, 77:204, 77:98, 77:1105, 77:113 |
| 77:1131 | HRS | lo | 95341/1000000 | 2221367/23299100 | 815 | 77:1101, 77:168, 77:126, 77:1105, 77:83 |
| 77:1132 | BEF | lo | 22941/100000 | 8363436939/36456250000 | 848 | 77:1098, 77:176, 77:1099, 77:1017, 77:185 |
| 77:1133 | EFH | lo | 8213/62500 | 6198508125/47169795754 | 849 | 77:1132, 77:204, 77:98, 77:176, 77:105 |
| 77:1134 | BES | lo | 6169/50000 | 18800787/152380000 | 916 | 77:1102, 77:198, 77:126, 77:186, 77:231 |
| 77:1135 | BFQ | lo | 189591/1000000 | 47397877699/250000000000 | 952 | 77:98, 77:1103, 77:1115, 77:1100, 77:113 |
| 77:1136 | FHQ | lo | 34521/250000 | 3256697250/23584897877 | 953 | 77:98, 77:1109, 77:1135, 77:204, 77:105 |
| 77:1138 | EHQ | lo | 113109/1000000 | 416554440/3682767397 | 1078 | 77:1028, 77:194, 77:134, 77:1107, 77:137 |
| 77:1141 | ACE | lo | 157757/1000000 | 42027682431219/266406250000000 | 2248 | 77:1084, 77:39 |
| 77:1142 | BCE | lo | 164209/1000000 | 559955690685781/3410000000000000 | 2418 | 77:1097, 77:95 |
| 77:1143 | CEF | lo | 22799/125000 | 15548994467/85250000000 | 2617 | 77:1104, 77:177 |
| 77:1144 | CEH | lo | 167131/1000000 | 113983431/682000000 | 2642 | 77:1105, 77:185 |
| 77:1145 | CEP | lo | 87017/500000 | 11127319/63937500 | 2652 | 77:1106, 77:191 |
| 77:1148 | CFP | lo | 102773/1000000 | 15389206000/149738539799 | 2786 | 77:5, 77:100, 77:44, 77:8, 77:1082, 77:1129 |
| 77:1149 | EPS | lo | 115573/1000000 | 17305831201307/149738539799000 | 2797 | 77:5, 77:100, 77:44, 77:8, 77:1124, 77:1134, 77:178 |
| 77:1151 | EFP | lo | 168537/1000000 | 368135446875269/2184289032062500 | 2882 | 77:21, 77:150, 77:52, 77:1120, 77:1085, 77:1143, 77:1133 |
| 77:1152 | FPQ | lo | 130437/1000000 | 4558610331909/34948624513000 | 2890 | 77:21, 77:150, 77:52, 77:1120, 77:1088, 77:144, 77:1136 |
| 77:1153 | FPR | lo | 38699/250000 | 5409937829709/34948624513000 | 2891 | 77:21, 77:150, 77:52, 77:1120, 77:1089, 77:1104, 77:204 |
| 77:1154 | FPS | lo | 76527/500000 | 267451885099561/1747431225650000 | 2892 | 77:21, 77:150, 77:52, 77:1120, 77:1090, 77:1118, 77:1064 |
| 77:1155 | EQS | lo | 96751/1000000 | 17776932012033/183737406581000 | 2930 | 77:27, 77:168, 77:70, 77:1069, 77:1119, 77:134, 77:194 |
| 77:1168 | BCP | lo | 154491/1000000 | 133935903/866948000 | 3272 | 77:57, 77:1121, 77:62, 77:52, 77:0, 77:1096, 77:1097 |
| 77:1169 | BEP | lo | 37027/250000 | 32100596559/216737000000 | 3273 | 77:57, 77:1121, 77:62, 77:52, 77:1112, 77:1098, 77:1099 |
| 77:1170 | BPQ | lo | 150051/1000000 | 130086447/866948000 | 3277 | 77:57, 77:1121, 77:62, 77:52, 77:10, 77:1100, 77:1103 |
| 77:1171 | BPS | lo | 124231/1000000 | 53851236381/433474000000 | 3279 | 77:57, 77:1121, 77:62, 77:52, 77:1068, 77:1102, 77:126 |
| 77:1177 | AES | hi | 22101/50000 | 1193022202111288957/2699027410156250000 | 3535 | 77:95, 77:198, 77:126, 77:1134, 77:1112, 77:39 |
| 77:1179 | FHS | lo | 791/6250 | 262341813743/2072853051000 | 3563 | 77:95, 77:198, 77:126, 77:1134, 77:98, 77:1133, 77:204 |
| 77:1180 | PRS | lo | 93417/1000000 | 12183651/130421750 | 3622 | 77:99, 77:200, 77:108, 77:100, 77:126, 77:218, 77:1131 |
| 77:1182 | APS | lo | 94109/1000000 | 18968599568181/201559686217000 | 3763 | 77:123, 77:238, 77:126, 77:1080, 77:8, 77:1125, 77:62 |
| 77:1183 | ABS | lo | 10131/62500 | 97387534893/600799000000 | 3938 | 77:177, 77:218, 77:198, 77:178, 77:1112, 77:4, 77:1114 |
| 77:1184 | ACS | lo | 31193/125000 | 1049484274901/4205593000000 | 3939 | 77:177, 77:218, 77:198, 77:178, 77:1141, 77:1082, 77:1084 |
| 77:1186 | AQS | lo | 238421/1000000 | 501351823383/2102796500000 | 3944 | 77:177, 77:218, 77:198, 77:178, 77:1119, 77:1088, 77:1095 |
| 77:1189 | CHS | lo | 20111/100000 | 845790193357/4205593000000 | 3957 | 77:177, 77:218, 77:198, 77:178, 77:1144, 77:1130, 77:1105 |
| 77:1190 | CPS | lo | 35173/200000 | 739619889389/4205593000000 | 3958 | 77:177, 77:218, 77:198, 77:178, 77:1145, 77:1148, 77:1106 |
| 77:1191 | HPS | lo | 23537/250000 | 56564367/600799000 | 3973 | 77:177, 77:218, 77:198, 77:178, 77:180, 77:200, 77:1121 |
| 77:1192 | HQS | lo | 173537/1000000 | 729829658637/4205593000000 | 3974 | 77:177, 77:218, 77:198, 77:178, 77:1138, 77:1136, 77:1110 |
| 77:1194 | BCS | lo | 46579/200000 | 1358479747/5833000000 | 3992 | 77:185, 77:1131, 77:198, 77:186, 77:1142, 77:1096, 77:1097 |
| 77:1195 | BQS | lo | 195883/1000000 | 1142590737/5833000000 | 3997 | 77:185, 77:1131, 77:198, 77:186, 77:1128, 77:1100, 77:1103 |
| 77:1197 | ACF | lo | 147857/500000 | 147857/500000 | 4243 | 77:44, 77:1120, 77:1148 |
| 77:1199 | ACR | lo | 54443/125000 | 54443/125000 | 4256 | 77:70, 77:1184, 77:168 |
| 77:1200 | AEF | lo | 359619/1000000 | 359619/1000000 | 4258 | 77:44, 77:1122, 77:1151 |
| 77:1202 | AER | lo | 357657/1000000 | 357657/1000000 | 4271 | 77:70, 77:1124, 77:198 |
| 77:1203 | AFQ | lo | 81513/250000 | 81513/250000 | 4276 | 77:44, 77:1125, 77:1152 |
| 77:1204 | AFR | lo | 85199/250000 | 85199/250000 | 4277 | 77:44, 77:62, 77:1153 |
| 77:1205 | AFS | lo | 340163/1000000 | 340163/1000000 | 4278 | 77:44, 77:1182, 77:1154 |
| 77:1210 | AQR | lo | 424421/1000000 | 424421/1000000 | 4291 | 77:70, 77:1186, 77:238 |
| 77:1211 | BCH | lo | 340491/1000000 | 340491/1000000 | 4303 | 77:108, 77:1168, 77:150 |
| 77:1212 | BCR | lo | 83779/200000 | 83779/200000 | 4312 | 77:126, 77:1194, 77:168 |
| 77:1213 | BEH | lo | 83527/250000 | 83527/250000 | 4318 | 77:108, 77:1169, 77:180 |
| 77:1214 | BER | lo | 15469/50000 | 15469/50000 | 4327 | 77:126, 77:1134, 77:198 |
| 77:1215 | BHQ | lo | 336051/1000000 | 336051/1000000 | 4338 | 77:108, 77:1170, 77:220 |
| 77:1216 | BHR | lo | 327917/1000000 | 327917/1000000 | 4339 | 77:108, 77:1116, 77:1121 |
| 77:1217 | BHS | lo | 311379/1000000 | 311379/1000000 | 4340 | 77:108, 77:1171, 77:1191 |
| 77:1218 | BQR | lo | 381883/1000000 | 381883/1000000 | 4347 | 77:126, 77:1195, 77:238 |
| 77:1219 | CFR | lo | 15497/50000 | 15497/50000 | 4372 | 77:168, 77:1118, 77:218 |
| 77:1220 | CHR | lo | 389451/1000000 | 389451/1000000 | 4378 | 77:168, 77:1189, 77:1131 |
| 77:1221 | CPR | lo | 181141/500000 | 181141/500000 | 4381 | 77:168, 77:1190, 77:1180 |
| 77:1222 | EHR | lo | 281341/1000000 | 281341/1000000 | 4398 | 77:198, 77:186, 77:1131 |
| 77:1223 | EPR | lo | 30199/100000 | 30199/100000 | 4401 | 77:198, 77:1149, 77:1180 |
| 77:1224 | FQR | lo | 31051/100000 | 31051/100000 | 4412 | 77:218, 77:1123, 77:238 |
| 77:1225 | HQR | lo | 180939/500000 | 180939/500000 | 4416 | 77:1131, 77:1192, 77:238 |
| 77:1227 | ABE | lo | 100807/1000000 | 1075816250/10671999847 | 32 | 77:0, 77:1200, 77:4, 77:1141, 77:19 |
| 77:1229 | ABR | lo | 6253/31250 | 11655163/58247750 | 78 | 77:0, 77:1115, 77:4, 77:1212, 77:75 |
| 77:1230 | BFR | lo | 123641/500000 | 10078890655/40758605136 | 156 | 77:1229, 77:176, 77:1204, 77:1214, 77:39 |
| 77:1231 | BPR | lo | 136779/1000000 | 2787479095/20379302568 | 191 | 77:1229, 77:1223, 77:62, 77:1214, 77:39 |
| 77:1233 | CFS | lo | 124073/1000000 | 18280917/147340000 | 336 | 77:1184, 77:178, 77:1205, 77:138, 77:1177 |
| 77:1234 | AEQ | lo | 32539/250000 | 479335020/3682767397 | 374 | 77:1141, 77:194, 77:1202, 77:134, 77:137 |
| 77:1235 | ACP | lo | 1563/15625 | 34003497/339923905 | 412 | 77:1197, 77:62, 77:1199, 77:44, 77:49 |
| 77:1236 | HPR | lo | 24561/250000 | 21170613/215489000 | 445 | 77:52, 77:1221, 77:62, 77:150, 77:23 |
| 77:1237 | AEP | lo | 2453/25000 | 33353334/339923905 | 512 | 77:1200, 77:62, 77:1202, 77:44, 77:49 |
| 77:1238 | FQS | lo | 124619/1000000 | 55084263413/442020000000 | 531 | 77:1205, 77:1155, 77:1186, 77:178, 77:1177 |
| 77:1239 | AES | lo | 171743/1000000 | 40284159/234560000 | 536 | 77:1205, 77:198, 77:70, 77:178, 77:219 |
| 77:1240 | APQ | lo | 102661/1000000 | 69793989/679847810 | 617 | 77:44, 77:1210, 77:1203, 77:62, 77:49 |
| 77:1243 | BEQ | lo | 59797/500000 | 440437770/3682767397 | 724 | 77:1142, 77:194, 77:1214, 77:134, 77:137 |
| 77:1244 | BCF | lo | 201069/1000000 | 100534500231/500000000000 | 747 | 77:1211, 77:1230, 77:1212, 77:98, 77:113 |
| 77:1245 | CFH | lo | 70161/500000 | 35080623/250000000 | 750 | 77:1211, 77:204, 77:98, 77:1220, 77:113 |
| 77:1246 | HRS | lo | 95447/1000000 | 2779801/29123875 | 815 | 77:1216, 77:168, 77:126, 77:1220, 77:83 |
| 77:1247 | BEF | lo | 114753/500000 | 836694619/3645625000 | 848 | 77:1213, 77:176, 77:1214, 77:1133, 77:185 |
| 77:1248 | EFH | lo | 6571/50000 | 6199066125/47169795754 | 849 | 77:1247, 77:204, 77:98, 77:176, 77:105 |
| 77:1249 | BES | lo | 123399/1000000 | 37607247/304760000 | 916 | 77:1217, 77:198, 77:126, 77:186, 77:231 |
| 77:1250 | BFQ | lo | 47411/250000 | 94822360191/500000000000 | 952 | 77:98, 77:1218, 77:1230, 77:1215, 77:113 |
| 77:1251 | FHQ | lo | 34539/250000 | 6516823875/47169795754 | 953 | 77:98, 77:1224, 77:1250, 77:204, 77:105 |
| 77:1253 | EHQ | lo | 113251/1000000 | 417078960/3682767397 | 1078 | 77:1144, 77:194, 77:134, 77:1222, 77:137 |
| 77:1256 | ACE | lo | 31579/200000 | 26290178605849/166503906250000 | 2248 | 77:1199, 77:39 |
| 77:1257 | BCE | lo | 164259/1000000 | 112024834240271/682000000000000 | 2418 | 77:1212, 77:95 |
| 77:1258 | CEF | lo | 91261/500000 | 93360235279/511500000000 | 2617 | 77:1219, 77:177 |
| 77:1259 | CEH | lo | 167391/1000000 | 570805349/3410000000 | 2642 | 77:1220, 77:185 |
| 77:1260 | CEP | lo | 87073/500000 | 356304347/2046000000 | 2652 | 77:1221, 77:191 |
| 77:1263 | CFP | lo | 102847/1000000 | 15400273000/149738539799 | 2786 | 77:5, 77:100, 77:44, 77:8, 77:1197, 77:1244 |
| 77:1264 | EPS | lo | 23119/200000 | 17309086201307/149738539799000 | 2797 | 77:5, 77:100, 77:44, 77:8, 77:1239, 77:1249, 77:178 |
| 77:1266 | EFP | lo | 168581/1000000 | 26780444924993/158857384150000 | 2882 | 77:21, 77:150, 77:52, 77:1235, 77:1200, 77:1258, 77:1248 |
| 77:1267 | FPQ | lo | 13047/100000 | 4559766129309/34948624513000 | 2890 | 77:21, 77:150, 77:52, 77:1235, 77:1203, 77:144, 77:1251 |
| 77:1268 | FPR | lo | 77417/500000 | 5411244479709/34948624513000 | 2891 | 77:21, 77:150, 77:52, 77:1235, 77:1204, 77:1219, 77:204 |
| 77:1269 | FPS | lo | 7659/50000 | 5353438168401449/34948624513000000 | 2892 | 77:21, 77:150, 77:52, 77:1235, 77:1205, 77:1233, 77:1179 |
| 77:1270 | EQS | lo | 96761/1000000 | 17778680412033/183737406581000 | 2930 | 77:27, 77:168, 77:70, 77:1184, 77:1234, 77:134, 77:194 |
| 77:1284 | BCP | lo | 38627/250000 | 66975531/433474000 | 3272 | 77:57, 77:1236, 77:62, 77:52, 77:0, 77:1211, 77:1212 |
| 77:1285 | BEP | lo | 9263/62500 | 32122177259/216737000000 | 3273 | 77:57, 77:1236, 77:62, 77:52, 77:1227, 77:1213, 77:1214 |
| 77:1286 | BPQ | lo | 75031/500000 | 65048013/433474000 | 3277 | 77:57, 77:1236, 77:62, 77:52, 77:10, 77:1215, 77:1218 |
| 77:1287 | BPS | lo | 3883/31250 | 13465459803/108368500000 | 3279 | 77:57, 77:1236, 77:62, 77:52, 77:1183, 77:1217, 77:126 |
| 77:1293 | AES | hi | 88401/200000 | 3578945512583866871/8097082230468750000 | 3535 | 77:95, 77:198, 77:126, 77:1249, 77:1227, 77:39 |
| 77:1295 | FHS | lo | 63281/500000 | 262345533743/2072853051000 | 3563 | 77:95, 77:198, 77:126, 77:1249, 77:98, 77:1248, 77:204 |
| 77:1296 | PRS | lo | 23359/250000 | 24372231/260843500 | 3622 | 77:99, 77:200, 77:108, 77:100, 77:126, 77:218, 77:1246 |
| 77:1298 | APS | lo | 47057/500000 | 18969669068181/201559686217000 | 3763 | 77:123, 77:238, 77:126, 77:1195, 77:8, 77:1240, 77:62 |
| 77:1299 | ABS | lo | 162167/1000000 | 6621470617/40831000000 | 3938 | 77:177, 77:218, 77:198, 77:178, 77:1227, 77:4, 77:1229 |
| 77:1300 | ACS | lo | 249769/1000000 | 210085469347/841118600000 | 3939 | 77:177, 77:218, 77:198, 77:178, 77:1256, 77:1197, 77:1199 |
| 77:1302 | AQS | lo | 238547/1000000 | 35829746161/150199750000 | 3944 | 77:177, 77:218, 77:198, 77:178, 77:1234, 77:1203, 77:1210 |
| 77:1305 | CHS | lo | 100699/500000 | 423500680473/2102796500000 | 3957 | 77:177, 77:218, 77:198, 77:178, 77:1259, 77:1245, 77:1220 |
| 77:1306 | CPS | lo | 175983/1000000 | 740115243271/4205593000000 | 3958 | 77:177, 77:218, 77:198, 77:178, 77:1260, 77:1263, 77:1221 |
| 77:1307 | HPS | lo | 94159/1000000 | 20841951/221347000 | 3973 | 77:177, 77:218, 77:198, 77:178, 77:180, 77:200, 77:1236 |
| 77:1308 | HQS | lo | 86869/500000 | 104381767549/600799000000 | 3974 | 77:177, 77:218, 77:198, 77:178, 77:1253, 77:1251, 77:1225 |
| 77:1310 | BCS | lo | 46591/200000 | 1358829987/5833000000 | 3992 | 77:185, 77:1246, 77:198, 77:186, 77:1257, 77:1211, 77:1212 |
| 77:1311 | BQS | lo | 48981/250000 | 571412791/2916500000 | 3997 | 77:185, 77:1246, 77:198, 77:186, 77:1243, 77:1215, 77:1218 |
| 77:1313 | ACF | lo | 295879/1000000 | 295879/1000000 | 4243 | 77:44, 77:1235, 77:1263 |
| 77:1315 | ACR | lo | 435769/1000000 | 435769/1000000 | 4256 | 77:70, 77:1300, 77:168 |
| 77:1316 | AEF | lo | 359701/1000000 | 359701/1000000 | 4258 | 77:44, 77:1237, 77:1266 |
| 77:1318 | AER | lo | 357743/1000000 | 357743/1000000 | 4271 | 77:70, 77:1239, 77:198 |
| 77:1319 | AFQ | lo | 326131/1000000 | 326131/1000000 | 4276 | 77:44, 77:1240, 77:1267 |
| 77:1320 | AFR | lo | 170417/500000 | 170417/500000 | 4277 | 77:44, 77:62, 77:1268 |
| 77:1321 | AFS | lo | 170147/500000 | 170147/500000 | 4278 | 77:44, 77:1298, 77:1269 |
| 77:1326 | AQR | lo | 424547/1000000 | 424547/1000000 | 4291 | 77:70, 77:1302, 77:238 |
| 77:1327 | BCH | lo | 85127/250000 | 85127/250000 | 4303 | 77:108, 77:1284, 77:150 |
| 77:1328 | BCR | lo | 83791/200000 | 83791/200000 | 4312 | 77:126, 77:1310, 77:168 |
| 77:1329 | BEH | lo | 5222/15625 | 5222/15625 | 4318 | 77:108, 77:1285, 77:180 |
| 77:1330 | BER | lo | 309399/1000000 | 309399/1000000 | 4327 | 77:126, 77:1249, 77:198 |
| 77:1331 | BHQ | lo | 168031/500000 | 168031/500000 | 4338 | 77:108, 77:1286, 77:220 |
| 77:1332 | BHR | lo | 328023/1000000 | 328023/1000000 | 4339 | 77:108, 77:1231, 77:1236 |
| 77:1333 | BHS | lo | 62283/200000 | 62283/200000 | 4340 | 77:108, 77:1287, 77:1307 |
| 77:1334 | BQR | lo | 95481/250000 | 95481/250000 | 4347 | 77:126, 77:1311, 77:238 |
| 77:1335 | CFR | lo | 310073/1000000 | 310073/1000000 | 4372 | 77:168, 77:1233, 77:218 |
| 77:1336 | CHR | lo | 77969/200000 | 77969/200000 | 4378 | 77:168, 77:1305, 77:1246 |
| 77:1337 | CPR | lo | 362419/1000000 | 362419/1000000 | 4381 | 77:168, 77:1306, 77:1296 |
| 77:1338 | EHR | lo | 281447/1000000 | 281447/1000000 | 4398 | 77:198, 77:186, 77:1246 |
| 77:1339 | EPR | lo | 302031/1000000 | 302031/1000000 | 4401 | 77:198, 77:1264, 77:1296 |
| 77:1340 | FQR | lo | 310619/1000000 | 310619/1000000 | 4412 | 77:218, 77:1238, 77:238 |
| 77:1341 | HQR | lo | 72437/200000 | 72437/200000 | 4416 | 77:1246, 77:1308, 77:238 |
| 77:1343 | ABE | lo | 100867/1000000 | 3229370750/32015999541 | 32 | 77:0, 77:1316, 77:4, 77:1256, 77:19 |
| 77:1345 | ABR | lo | 20013/100000 | 46628557/232991000 | 78 | 77:0, 77:1230, 77:4, 77:1328, 77:75 |
| 77:1346 | BFR | lo | 9893/40000 | 26881661461/108689613696 | 156 | 77:1345, 77:176, 77:1320, 77:1330, 77:39 |
| 77:1347 | BPR | lo | 13681/100000 | 4956642835/36229871232 | 191 | 77:1345, 77:1339, 77:62, 77:1330, 77:39 |
| 77:1349 | CFS | lo | 15519/125000 | 18291953/147335000 | 336 | 77:1300, 77:178, 77:1321, 77:138, 77:1293 |
| 77:1350 | AEQ | lo | 32553/250000 | 479543340/3682767397 | 374 | 77:1256, 77:194, 77:1318, 77:134, 77:137 |
| 77:1351 | ACP | lo | 50043/500000 | 34021632/339923905 | 412 | 77:1313, 77:62, 77:1315, 77:44, 77:49 |
| 77:1352 | HPR | lo | 49137/500000 | 42353967/430978000 | 445 | 77:52, 77:1337, 77:62, 77:150, 77:23 |
| 77:1353 | AEP | lo | 49071/500000 | 33361146/339923905 | 512 | 77:1316, 77:62, 77:1318, 77:44, 77:49 |
| 77:1354 | FQS | lo | 62343/500000 | 27556029367/221002500000 | 531 | 77:1321, 77:1270, 77:1302, 77:178, 77:1293 |
| 77:1355 | AES | lo | 34359/200000 | 20148171/117280000 | 536 | 77:1321, 77:198, 77:70, 77:178, 77:219 |
| 77:1356 | APQ | lo | 102689/1000000 | 34906527/339923905 | 617 | 77:44, 77:1326, 77:1319, 77:62, 77:49 |
| 77:1359 | BEQ | lo | 119611/1000000 | 440501940/3682767397 | 724 | 77:1257, 77:194, 77:1330, 77:134, 77:137 |
| 77:1360 | BCF | lo | 12569/62500 | 2011045861/10000000000 | 747 | 77:1327, 77:1346, 77:1328, 77:98, 77:113 |
| 77:1361 | CFH | lo | 140433/1000000 | 140433999/1000000000 | 750 | 77:1327, 77:204, 77:98, 77:1336, 77:113 |
| 77:1362 | HRS | lo | 47757/500000 | 5563477/58247750 | 815 | 77:1332, 77:168, 77:126, 77:1336, 77:83 |
| 77:1363 | BEF | lo | 57391/250000 | 6695262429/29165000000 | 848 | 77:1329, 77:176, 77:1330, 77:1248, 77:185 |
| 77:1364 | EFH | lo | 131427/1000000 | 3099701625/23584897877 | 849 | 77:1363, 77:204, 77:98, 77:176, 77:105 |
| 77:1365 | BES | lo | 12341/100000 | 395901/3208000 | 916 | 77:1333, 77:198, 77:126, 77:186, 77:231 |
| 77:1366 | BFQ | lo | 189673/1000000 | 3793466603/20000000000 | 952 | 77:98, 77:1334, 77:1346, 77:1331, 77:113 |
| 77:1367 | FHQ | lo | 691/5000 | 6518893125/47169795754 | 953 | 77:98, 77:1340, 77:1366, 77:204, 77:105 |
| 77:1369 | EHQ | lo | 113343/1000000 | 417419340/3682767397 | 1078 | 77:1259, 77:194, 77:134, 77:1338, 77:137 |
| 77:1372 | ACE | lo | 19747/125000 | 210430079916467/1332031250000000 | 2248 | 77:1315, 77:39 |
| 77:1373 | BCE | lo | 82141/500000 | 112040880003659/682000000000000 | 2418 | 77:1328, 77:95 |
| 77:1374 | CEF | lo | 913/5000 | 1868005951711/10230000000000 | 2617 | 77:1335, 77:177 |
| 77:1375 | CEH | lo | 4189/25000 | 342829693/2046000000 | 2642 | 77:1336, 77:185 |
| 77:1376 | CEP | lo | 43553/250000 | 712878173/4092000000 | 2652 | 77:1337, 77:191 |
| 77:1379 | CFP | lo | 102889/1000000 | 15406473000/149738539799 | 2786 | 77:5, 77:100, 77:44, 77:8, 77:1313, 77:1360 |
| 77:1380 | EPS | lo | 14451/125000 | 17311039201307/149738539799000 | 2797 | 77:5, 77:100, 77:44, 77:8, 77:1355, 77:1365, 77:178 |
| 77:1382 | EFP | lo | 5269/31250 | 5892621423870051/34948624513000000 | 2882 | 77:21, 77:150, 77:52, 77:1351, 77:1316, 77:1374, 77:1364 |
| 77:1383 | FPQ | lo | 13049/100000 | 4560475589709/34948624513000 | 2890 | 77:21, 77:150, 77:52, 77:1351, 77:1319, 77:144, 77:1367 |
| 77:1384 | FPR | lo | 154857/1000000 | 5412039629709/34948624513000 | 2891 | 77:21, 77:150, 77:52, 77:1351, 77:1320, 77:1335, 77:204 |
| 77:1385 | FPS | lo | 30651/200000 | 669507786692247/4368578064125000 | 2892 | 77:21, 77:150, 77:52, 77:1351, 77:1321, 77:1349, 77:1295 |
| 77:1386 | EQS | lo | 96767/1000000 | 17779722012033/183737406581000 | 2930 | 77:27, 77:168, 77:70, 77:1300, 77:1350, 77:134, 77:194 |
| 77:1399 | BCP | lo | 154517/1000000 | 133958223/866948000 | 3272 | 77:57, 77:1352, 77:62, 77:52, 77:0, 77:1327, 77:1328 |
| 77:1400 | BEP | lo | 148267/1000000 | 32135158229/216737000000 | 3273 | 77:57, 77:1352, 77:62, 77:52, 77:1343, 77:1329, 77:1330 |
| 77:1401 | BPQ | lo | 150067/1000000 | 65050431/433474000 | 3277 | 77:57, 77:1352, 77:62, 77:52, 77:10, 77:1331, 77:1334 |
| 77:1402 | BPS | lo | 12427/100000 | 53868038379/433474000000 | 3279 | 77:57, 77:1352, 77:62, 77:52, 77:1299, 77:1333, 77:126 |
| 77:1408 | AES | hi | 110499/250000 | 3578872856333866871/8097082230468750000 | 3535 | 77:95, 77:198, 77:126, 77:1365, 77:1343, 77:39 |
| 77:1410 | FHS | lo | 126563/1000000 | 87449234581/690951017000 | 3563 | 77:95, 77:198, 77:126, 77:1365, 77:98, 77:1364, 77:204 |
| 77:1411 | PRS | lo | 11681/125000 | 48750693/521687000 | 3622 | 77:99, 77:200, 77:108, 77:100, 77:126, 77:218, 77:1362 |
| 77:1413 | APS | lo | 94117/1000000 | 18970320068181/201559686217000 | 3763 | 77:123, 77:238, 77:126, 77:1311, 77:8, 77:1356, 77:62 |
| 77:1414 | ABS | lo | 5069/31250 | 97454832733/600799000000 | 3938 | 77:177, 77:218, 77:198, 77:178, 77:1343, 77:4, 77:1345 |
| 77:1415 | ACS | lo | 2499/10000 | 131372504971/525699125000 | 3939 | 77:177, 77:218, 77:198, 77:178, 77:1372, 77:1313, 77:1315 |
| 77:1417 | AQS | lo | 238623/1000000 | 250888723929/1051398250000 | 3944 | 77:177, 77:218, 77:198, 77:178, 77:1350, 77:1319, 77:1326 |
| 77:1420 | CHS | lo | 40317/200000 | 847785311769/4205593000000 | 3957 | 77:177, 77:218, 77:198, 77:178, 77:1375, 77:1361, 77:1336 |
| 77:1421 | CPS | lo | 176051/1000000 | 740402548177/4205593000000 | 3958 | 77:177, 77:218, 77:198, 77:178, 77:1376, 77:1379, 77:1337 |
| 77:1422 | HPS | lo | 47083/500000 | 396024969/4205593000 | 3973 | 77:177, 77:218, 77:198, 77:178, 77:180, 77:200, 77:1352 |
| 77:1423 | HQS | lo | 173867/1000000 | 731214597399/4205593000000 | 3974 | 77:177, 77:218, 77:198, 77:178, 77:1369, 77:1367, 77:1341 |
| 77:1425 | BCS | lo | 232983/1000000 | 84937061/364562500 | 3992 | 77:185, 77:1362, 77:198, 77:186, 77:1373, 77:1327, 77:1328 |
| 77:1426 | BQS | lo | 24493/125000 | 1142941483/5833000000 | 3997 | 77:185, 77:1362, 77:198, 77:186, 77:1359, 77:1331, 77:1334 |
| 77:1428 | ACF | lo | 11839/40000 | 11839/40000 | 4243 | 77:44, 77:1351, 77:1379 |
| 77:1430 | ACR | lo | 4359/10000 | 4359/10000 | 4256 | 77:70, 77:1415, 77:168 |
| 77:1431 | AEF | lo | 1439/4000 | 1439/4000 | 4258 | 77:44, 77:1353, 77:1382 |
| 77:1433 | AER | lo | 71559/200000 | 71559/200000 | 4271 | 77:70, 77:1355, 77:198 |
| 77:1434 | AFQ | lo | 326179/1000000 | 326179/1000000 | 4276 | 77:44, 77:1356, 77:1383 |
| 77:1435 | AFR | lo | 340857/1000000 | 340857/1000000 | 4277 | 77:44, 77:62, 77:1384 |
| 77:1436 | AFS | lo | 85093/250000 | 85093/250000 | 4278 | 77:44, 77:1413, 77:1385 |
| 77:1441 | AQR | lo | 424623/1000000 | 424623/1000000 | 4291 | 77:70, 77:1417, 77:238 |
| 77:1442 | BCH | lo | 340517/1000000 | 340517/1000000 | 4303 | 77:108, 77:1399, 77:150 |
| 77:1443 | BCR | lo | 418983/1000000 | 418983/1000000 | 4312 | 77:126, 77:1425, 77:168 |
| 77:1444 | BEH | lo | 334267/1000000 | 334267/1000000 | 4318 | 77:108, 77:1400, 77:180 |
| 77:1445 | BER | lo | 30941/100000 | 30941/100000 | 4327 | 77:126, 77:1365, 77:198 |
| 77:1446 | BHQ | lo | 336067/1000000 | 336067/1000000 | 4338 | 77:108, 77:1401, 77:220 |
| 77:1447 | BHR | lo | 82021/250000 | 82021/250000 | 4339 | 77:108, 77:1347, 77:1352 |
| 77:1448 | BHS | lo | 77859/250000 | 77859/250000 | 4340 | 77:108, 77:1402, 77:1422 |
| 77:1449 | BQR | lo | 47743/125000 | 47743/125000 | 4347 | 77:126, 77:1426, 77:238 |
| 77:1450 | CFR | lo | 38769/125000 | 38769/125000 | 4372 | 77:168, 77:1349, 77:218 |
| 77:1451 | CHR | lo | 390099/1000000 | 390099/1000000 | 4378 | 77:168, 77:1420, 77:1362 |
| 77:1452 | CPR | lo | 362499/1000000 | 362499/1000000 | 4381 | 77:168, 77:1421, 77:1411 |
| 77:1453 | EHR | lo | 140757/500000 | 140757/500000 | 4398 | 77:198, 77:186, 77:1362 |
| 77:1454 | EPR | lo | 37757/125000 | 37757/125000 | 4401 | 77:198, 77:1380, 77:1411 |
| 77:1455 | FQR | lo | 155343/500000 | 155343/500000 | 4412 | 77:218, 77:1354, 77:238 |
| 77:1456 | HQR | lo | 362381/1000000 | 362381/1000000 | 4416 | 77:1362, 77:1423, 77:238 |
| 77:1458 | ABE | lo | 50451/500000 | 3230502250/32015999541 | 32 | 77:0, 77:1431, 77:4, 77:1372, 77:19 |
| 77:1460 | ABR | lo | 200147/1000000 | 23316247/116495500 | 78 | 77:0, 77:1346, 77:4, 77:1443, 77:75 |
| 77:1461 | BFR | lo | 61837/250000 | 471653735/1906835328 | 156 | 77:1460, 77:176, 77:1435, 77:1445, 77:39 |
| 77:1462 | BPR | lo | 34207/250000 | 587044291/4290379488 | 191 | 77:1460, 77:1454, 77:62, 77:1445, 77:39 |
| 77:1464 | CFS | lo | 62099/500000 | 571826/4604125 | 336 | 77:1415, 77:178, 77:1436, 77:138, 77:1408 |
| 77:1465 | AEQ | lo | 65123/500000 | 479667030/3682767397 | 374 | 77:1372, 77:194, 77:1433, 77:134, 77:137 |
| 77:1466 | ACP | lo | 100117/1000000 | 13612875/135969562 | 412 | 77:1428, 77:62, 77:1430, 77:44, 77:49 |
| 77:1467 | HPR | lo | 98291/1000000 | 42361407/430978000 | 445 | 77:52, 77:1452, 77:62, 77:150, 77:23 |
| 77:1468 | AEP | lo | 24539/250000 | 13346337/135969562 | 512 | 77:1431, 77:62, 77:1433, 77:44, 77:49 |
| 77:1469 | FQS | lo | 62363/500000 | 13782179081/110499000000 | 531 | 77:1436, 77:1386, 77:1417, 77:178, 77:1408 |
| 77:1470 | AES | lo | 85913/500000 | 10075899/58640000 | 536 | 77:1436, 77:198, 77:70, 77:178, 77:219 |
| 77:1471 | APQ | lo | 51353/500000 | 34912293/339923905 | 617 | 77:44, 77:1441, 77:1434, 77:62, 77:49 |
| 77:1474 | BEQ | lo | 5981/50000 | 440533560/3682767397 | 724 | 77:1373, 77:194, 77:1445, 77:134, 77:137 |
| 77:1475 | BCF | lo | 100561/500000 | 50280613979/250000000000 | 747 | 77:1442, 77:1461, 77:1443, 77:98, 77:113 |
| 77:1476 | CFH | lo | 28101/200000 | 70252851/500000000 | 750 | 77:1442, 77:204, 77:98, 77:1451, 77:113 |
| 77:1477 | HRS | lo | 19111/200000 | 22263673/232991000 | 815 | 77:1447, 77:168, 77:126, 77:1451, 77:83 |
| 77:1478 | BEF | lo | 229599/1000000 | 13392532107/58330000000 | 848 | 77:1444, 77:176, 77:1445, 77:1364, 77:185 |
| 77:1479 | EFH | lo | 131431/1000000 | 12399213375/94339591508 | 849 | 77:1478, 77:204, 77:98, 77:176, 77:105 |
| 77:1480 | BES | lo | 15427/125000 | 9403137/76190000 | 916 | 77:1448, 77:198, 77:126, 77:186, 77:231 |
| 77:1481 | BFQ | lo | 189687/1000000 | 47421969079/250000000000 | 952 | 77:98, 77:1449, 77:1461, 77:1446, 77:113 |
| 77:1482 | FHQ | lo | 138227/1000000 | 13040285625/94339591508 | 953 | 77:98, 77:1455, 77:1481, 77:204, 77:105 |
| 77:1484 | EHQ | lo | 113403/1000000 | 417638820/3682767397 | 1078 | 77:1375, 77:194, 77:134, 77:1453, 77:137 |
| 77:1487 | ACE | lo | 19753/125000 | 2104933389837/13320312500000 | 2248 | 77:1430, 77:39 |
| 77:1488 | BCE | lo | 164293/1000000 | 560241840132867/3410000000000000 | 2418 | 77:1443, 77:95 |
| 77:1489 | CEF | lo | 182647/1000000 | 77853411661/426250000000 | 2617 | 77:1450, 77:177 |
| 77:1490 | CEH | lo | 16767/100000 | 571755101/3410000000 | 2642 | 77:1451, 77:185 |
| 77:1491 | CEP | lo | 174251/1000000 | 237678511/1364000000 | 2652 | 77:1452, 77:191 |
| 77:1494 | CFP | lo | 1608/15625 | 15410007000/149738539799 | 2786 | 77:5, 77:100, 77:44, 77:8, 77:1428, 77:1475 |
| 77:1495 | EPS | lo | 3613/31250 | 17312186201307/149738539799000 | 2797 | 77:5, 77:100, 77:44, 77:8, 77:1470, 77:1480, 77:178 |
| 77:1497 | EFP | lo | 168623/1000000 | 5893170418368103/34948624513000000 | 2882 | 77:21, 77:150, 77:52, 77:1466, 77:1431, 77:1489, 77:1479 |
| 77:1498 | FPQ | lo | 130503/1000000 | 4560904007659/34948624513000 | 2890 | 77:21, 77:150, 77:52, 77:1466, 77:1434, 77:144, 77:1482 |
| 77:1499 | FPR | lo | 15487/100000 | 5412513929709/34948624513000 | 2891 | 77:21, 77:150, 77:52, 77:1466, 77:1435, 77:1450, 77:204 |
| 77:1500 | FPS | lo | 153299/1000000 | 2678798601257787/17474312256500000 | 2892 | 77:21, 77:150, 77:52, 77:1466, 77:1436, 77:1464, 77:1410 |
| 77:1501 | EQS | lo | 9677/100000 | 17780354412033/183737406581000 | 2930 | 77:27, 77:168, 77:70, 77:1415, 77:1465, 77:134, 77:194 |
| 77:1513 | BCP | lo | 3863/25000 | 4186302/27092125 | 3272 | 77:57, 77:1467, 77:62, 77:52, 77:0, 77:1442, 77:1443 |
| 77:1514 | BEP | lo | 74151/500000 | 4017843003/27092125000 | 3273 | 77:57, 77:1467, 77:62, 77:52, 77:1458, 77:1444, 77:1445 |
| 77:1515 | BPQ | lo | 15007/100000 | 130103187/866948000 | 3277 | 77:57, 77:1467, 77:62, 77:52, 77:10, 77:1446, 77:1449 |
| 77:1516 | BPS | lo | 62139/500000 | 13467904441/108368500000 | 3279 | 77:57, 77:1467, 77:62, 77:52, 77:1414, 77:1448, 77:126 |
| 77:1522 | AES | hi | 441991/1000000 | 1192943491173788957/2699027410156250000 | 3535 | 77:95, 77:198, 77:126, 77:1480, 77:1458, 77:39 |
| 77:1524 | FHS | lo | 31641/250000 | 262348943743/2072853051000 | 3563 | 77:95, 77:198, 77:126, 77:1480, 77:98, 77:1479, 77:204 |
| 77:1525 | PRS | lo | 18691/200000 | 24377253/260843500 | 3622 | 77:99, 77:200, 77:108, 77:100, 77:126, 77:218, 77:1477 |
| 77:1527 | APS | lo | 94119/1000000 | 18970715318181/201559686217000 | 3763 | 77:123, 77:238, 77:126, 77:1426, 77:8, 77:1471, 77:62 |
| 77:1528 | ABS | lo | 162231/1000000 | 17954782497/110673500000 | 3938 | 77:177, 77:218, 77:198, 77:178, 77:1458, 77:4, 77:1460 |
| 77:1529 | ACS | lo | 249977/1000000 | 131412967279/525699125000 | 3939 | 77:177, 77:218, 77:198, 77:178, 77:1487, 77:1428, 77:1430 |
| 77:1531 | AQS | lo | 23867/100000 | 501874982939/2102796500000 | 3944 | 77:177, 77:218, 77:198, 77:178, 77:1465, 77:1434, 77:1441 |
| 77:1534 | CHS | lo | 40341/200000 | 24236934699/120159800000 | 3957 | 77:177, 77:218, 77:198, 77:178, 77:1490, 77:1476, 77:1451 |
| 77:1535 | CPS | lo | 176091/1000000 | 23142723963/131424781250 | 3958 | 77:177, 77:218, 77:198, 77:178, 77:1491, 77:1494, 77:1452 |
| 77:1536 | HPS | lo | 9417/100000 | 396040779/4205593000 | 3973 | 77:177, 77:218, 77:198, 77:178, 77:180, 77:200, 77:1467 |
| 77:1537 | HQS | lo | 173949/1000000 | 731562722979/4205593000000 | 3974 | 77:177, 77:218, 77:198, 77:178, 77:1484, 77:1482, 77:1456 |
| 77:1539 | BCS | lo | 58249/250000 | 1359071089/5833000000 | 3992 | 77:185, 77:1477, 77:198, 77:186, 77:1488, 77:1442, 77:1443 |
| 77:1540 | BQS | lo | 97977/500000 | 114300049/583300000 | 3997 | 77:185, 77:1477, 77:198, 77:186, 77:1474, 77:1446, 77:1449 |
| 77:1542 | ACF | lo | 296029/1000000 | 296029/1000000 | 4243 | 77:44, 77:1466, 77:1494 |
| 77:1544 | ACR | lo | 435977/1000000 | 435977/1000000 | 4256 | 77:70, 77:1529, 77:168 |
| 77:1545 | AEF | lo | 359779/1000000 | 359779/1000000 | 4258 | 77:44, 77:1468, 77:1497 |
| 77:1547 | AER | lo | 178913/500000 | 178913/500000 | 4271 | 77:70, 77:1470, 77:198 |
| 77:1548 | AFQ | lo | 326209/1000000 | 326209/1000000 | 4276 | 77:44, 77:1471, 77:1498 |
| 77:1549 | AFR | lo | 34087/100000 | 34087/100000 | 4277 | 77:44, 77:62, 77:1499 |
| 77:1550 | AFS | lo | 170209/500000 | 170209/500000 | 4278 | 77:44, 77:1527, 77:1500 |
| 77:1555 | AQR | lo | 42467/100000 | 42467/100000 | 4291 | 77:70, 77:1531, 77:238 |
| 77:1556 | BCH | lo | 8513/25000 | 8513/25000 | 4303 | 77:108, 77:1513, 77:150 |
| 77:1557 | BCR | lo | 104749/250000 | 104749/250000 | 4312 | 77:126, 77:1539, 77:168 |
| 77:1558 | BEH | lo | 167151/500000 | 167151/500000 | 4318 | 77:108, 77:1514, 77:180 |
| 77:1559 | BER | lo | 38677/125000 | 38677/125000 | 4327 | 77:126, 77:1480, 77:198 |
| 77:1560 | BHQ | lo | 33607/100000 | 33607/100000 | 4338 | 77:108, 77:1515, 77:220 |
| 77:1561 | BHR | lo | 328119/1000000 | 328119/1000000 | 4339 | 77:108, 77:1462, 77:1467 |
| 77:1562 | BHS | lo | 38931/125000 | 38931/125000 | 4340 | 77:108, 77:1516, 77:1536 |
| 77:1563 | BQR | lo | 190977/500000 | 190977/500000 | 4347 | 77:126, 77:1540, 77:238 |
| 77:1564 | CFR | lo | 155099/500000 | 155099/500000 | 4372 | 77:168, 77:1464, 77:218 |
| 77:1565 | CHR | lo | 19513/50000 | 19513/50000 | 4378 | 77:168, 77:1534, 77:1477 |
| 77:1566 | CPR | lo | 181273/500000 | 181273/500000 | 4381 | 77:168, 77:1535, 77:1525 |
| 77:1567 | EHR | lo | 56311/200000 | 56311/200000 | 4398 | 77:198, 77:186, 77:1477 |
| 77:1568 | EPR | lo | 302071/1000000 | 302071/1000000 | 4401 | 77:198, 77:1495, 77:1525 |
| 77:1569 | FQR | lo | 155363/500000 | 155363/500000 | 4412 | 77:218, 77:1469, 77:238 |
| 77:1570 | HQR | lo | 45313/125000 | 45313/125000 | 4416 | 77:1477, 77:1537, 77:238 |
| 77:1572 | ABE | lo | 100923/1000000 | 3231172625/32015999541 | 32 | 77:0, 77:1545, 77:4, 77:1487, 77:19 |
| 77:1574 | ABR | lo | 40031/200000 | 5829302/29123875 | 78 | 77:0, 77:1461, 77:4, 77:1557, 77:75 |
| 77:1575 | BFR | lo | 247361/1000000 | 20164234615/81517210272 | 156 | 77:1574, 77:176, 77:1549, 77:1559, 77:39 |
| 77:1576 | BPR | lo | 136837/1000000 | 4696668895/34323035904 | 191 | 77:1574, 77:1568, 77:62, 77:1559, 77:39 |
| 77:1578 | CFS | lo | 4969/40000 | 10981347/88398200 | 336 | 77:1529, 77:178, 77:1550, 77:138, 77:1522 |
| 77:1579 | AEQ | lo | 65133/500000 | 25249500/193829863 | 374 | 77:1487, 77:194, 77:1547, 77:134, 77:137 |
| 77:1580 | ACP | lo | 50067/500000 | 34038279/339923905 | 412 | 77:1542, 77:62, 77:1544, 77:44, 77:49 |
| 77:1581 | HPR | lo | 98301/1000000 | 21182889/215489000 | 445 | 77:52, 77:1566, 77:62, 77:150, 77:23 |
| 77:1582 | AEP | lo | 19633/200000 | 13347453/135969562 | 512 | 77:1545, 77:62, 77:1547, 77:44, 77:49 |
| 77:1583 | FQS | lo | 499/4000 | 2756927993/22099550000 | 531 | 77:1550, 77:1501, 77:1531, 77:178, 77:1522 |
| 77:1584 | AES | lo | 42961/250000 | 20153937/117280000 | 536 | 77:1550, 77:198, 77:70, 77:178, 77:219 |
| 77:1585 | APQ | lo | 25679/250000 | 69831747/679847810 | 617 | 77:44, 77:1555, 77:1548, 77:62, 77:49 |
| 77:1588 | BEQ | lo | 14953/125000 | 440549370/3682767397 | 724 | 77:1488, 77:194, 77:1559, 77:134, 77:137 |
| 77:1589 | BCF | lo | 201131/1000000 | 5028281293/25000000000 | 747 | 77:1556, 77:1575, 77:1557, 77:98, 77:113 |
| 77:1590 | CFH | lo | 2811/20000 | 1405509/10000000 | 750 | 77:1556, 77:204, 77:98, 77:1565, 77:113 |
| 77:1591 | HRS | lo | 47791/500000 | 22269749/232991000 | 815 | 77:1561, 77:168, 77:126, 77:1565, 77:83 |
| 77:1592 | BEF | lo | 229619/1000000 | 16742139037/72912500000 | 848 | 77:1558, 77:176, 77:1559, 77:1479, 77:185 |
| 77:1593 | EFH | lo | 65717/500000 | 12399445875/94339591508 | 849 | 77:1592, 77:204, 77:98, 77:176, 77:105 |
| 77:1594 | BES | lo | 6171/50000 | 1175427/9523750 | 916 | 77:1562, 77:198, 77:126, 77:186, 77:231 |
| 77:1595 | BFQ | lo | 37939/200000 | 18969577727/100000000000 | 952 | 77:98, 77:1563, 77:1575, 77:1560, 77:113 |
| 77:1596 | FHQ | lo | 69121/500000 | 13041773625/94339591508 | 953 | 77:98, 77:1569, 77:1595, 77:204, 77:105 |
| 77:1598 | EHQ | lo | 113441/1000000 | 417779250/3682767397 | 1078 | 77:1490, 77:194, 77:134, 77:1567, 77:137 |
| 77:1601 | ACE | lo | 39513/250000 | 210530521794211/1332031250000000 | 2248 | 77:1544, 77:39 |
| 77:1602 | BCE | lo | 82149/500000 | 4518219540671/27500000000000 | 2418 | 77:1557, 77:95 |
| 77:1603 | CEF | lo | 91337/500000 | 934379501293/5115000000000 | 2617 | 77:1564, 77:177 |
| 77:1604 | CEH | lo | 167739/1000000 | 85798661/511500000 | 2642 | 77:1565, 77:185 |
| 77:1605 | CEP | lo | 174273/1000000 | 356563991/2046000000 | 2652 | 77:1566, 77:191 |
| 77:1608 | CFP | lo | 4117/40000 | 15411960000/149738539799 | 2786 | 77:5, 77:100, 77:44, 77:8, 77:1542, 77:1589 |
| 77:1609 | EPS | lo | 5781/50000 | 17312868201307/149738539799000 | 2797 | 77:5, 77:100, 77:44, 77:8, 77:1584, 77:1594, 77:178 |
| 77:1611 | EFP | lo | 168633/1000000 | 2946753882120821/17474312256500000 | 2882 | 77:21, 77:150, 77:52, 77:1580, 77:1545, 77:1603, 77:1593 |
| 77:1612 | FPQ | lo | 13051/100000 | 4561157051109/34948624513000 | 2890 | 77:21, 77:150, 77:52, 77:1580, 77:1548, 77:144, 77:1596 |
| 77:1613 | FPR | lo | 77439/500000 | 5412788279709/34948624513000 | 2891 | 77:21, 77:150, 77:52, 77:1580, 77:1549, 77:1564, 77:204 |
| 77:1614 | FPS | lo | 6133/40000 | 2936164932289/19149931240000 | 2892 | 77:21, 77:150, 77:52, 77:1580, 77:1550, 77:1578, 77:1524 |
| 77:1615 | EQS | lo | 24193/250000 | 17780726412033/183737406581000 | 2930 | 77:27, 77:168, 77:70, 77:1529, 77:1579, 77:134, 77:194 |
| 77:1628 | BCP | lo | 77261/500000 | 8372697/54184250 | 3272 | 77:57, 77:1581, 77:62, 77:52, 77:0, 77:1556, 77:1557 |
| 77:1629 | BEP | lo | 148323/1000000 | 32147272251/216737000000 | 3273 | 77:57, 77:1581, 77:62, 77:52, 77:1572, 77:1558, 77:1559 |
| 77:1630 | BPQ | lo | 150071/1000000 | 445563/2969000 | 3277 | 77:57, 77:1581, 77:62, 77:52, 77:10, 77:1560, 77:1563 |
| 77:1631 | BPS | lo | 124283/1000000 | 107747304531/866948000000 | 3279 | 77:57, 77:1581, 77:62, 77:52, 77:1528, 77:1562, 77:126 |
| 77:1632 | BES | hi | 434517/1000000 | 17159072341197/39490000000000 | 3453 | 77:83, 77:168, 77:126, 77:1539, 77:1602, 77:95 |
| 77:1636 | AES | hi | 441987/1000000 | 1192935014611288957/2699027410156250000 | 3535 | 77:95, 77:198, 77:126, 77:1594, 77:1572, 77:39 |
| 77:1638 | PRS | lo | 4673/50000 | 48757017/521687000 | 3622 | 77:99, 77:200, 77:108, 77:100, 77:126, 77:218, 77:1591 |
| 77:1640 | APS | lo | 2353/25000 | 18970947818181/201559686217000 | 3763 | 77:123, 77:238, 77:126, 77:1540, 77:8, 77:1585, 77:62 |
| 77:1641 | ABS | lo | 32449/200000 | 682338432339/4205593000000 | 3938 | 77:177, 77:218, 77:198, 77:178, 77:1572, 77:4, 77:1574 |
| 77:1642 | ACS | lo | 125011/500000 | 262872811209/1051398250000 | 3939 | 77:177, 77:218, 77:198, 77:178, 77:1601, 77:1542, 77:1544 |
| 77:1644 | AQS | lo | 119349/500000 | 501934243869/2102796500000 | 3944 | 77:177, 77:218, 77:198, 77:178, 77:1579, 77:1548, 77:1555 |
| 77:1647 | CHS | lo | 201781/1000000 | 2424606189/12015980000 | 3957 | 77:177, 77:218, 77:198, 77:178, 77:1604, 77:1590, 77:1565 |
| 77:1648 | CPS | lo | 176113/1000000 | 29626473181/168223720000 | 3958 | 77:177, 77:218, 77:198, 77:178, 77:1605, 77:1608, 77:1566 |
| 77:1649 | HPS | lo | 23543/250000 | 20844741/221347000 | 3973 | 77:177, 77:218, 77:198, 77:178, 77:180, 77:200, 77:1581 |
| 77:1650 | HQS | lo | 174001/1000000 | 731780195513/4205593000000 | 3974 | 77:177, 77:218, 77:198, 77:178, 77:1598, 77:1596, 77:1570 |
| 77:1652 | BCS | lo | 116501/500000 | 35765943/153500000 | 3992 | 77:185, 77:1591, 77:198, 77:186, 77:1602, 77:1556, 77:1557 |
| 77:1653 | BQS | lo | 97979/500000 | 142878559/729125000 | 3997 | 77:185, 77:1591, 77:198, 77:186, 77:1588, 77:1560, 77:1563 |
| 77:1655 | ACF | lo | 296059/1000000 | 296059/1000000 | 4243 | 77:44, 77:1580, 77:1608 |
| 77:1657 | ACR | lo | 218011/500000 | 218011/500000 | 4256 | 77:70, 77:1642, 77:168 |
| 77:1658 | AEF | lo | 179899/500000 | 179899/500000 | 4258 | 77:44, 77:1582, 77:1611 |
| 77:1660 | AER | lo | 89461/250000 | 89461/250000 | 4271 | 77:70, 77:1584, 77:198 |
| 77:1661 | AFQ | lo | 163113/500000 | 163113/500000 | 4276 | 77:44, 77:1585, 77:1612 |
| 77:1662 | AFR | lo | 170439/500000 | 170439/500000 | 4277 | 77:44, 77:62, 77:1613 |
| 77:1663 | AFS | lo | 68089/200000 | 68089/200000 | 4278 | 77:44, 77:1640, 77:1614 |
| 77:1668 | AQR | lo | 212349/500000 | 212349/500000 | 4291 | 77:70, 77:1644, 77:238 |
| 77:1669 | BCH | lo | 170261/500000 | 170261/500000 | 4303 | 77:108, 77:1628, 77:150 |
| 77:1670 | BCR | lo | 209501/500000 | 209501/500000 | 4312 | 77:126, 77:1652, 77:168 |
| 77:1671 | BEH | lo | 334323/1000000 | 334323/1000000 | 4318 | 77:108, 77:1629, 77:180 |
| 77:1672 | BER | lo | 15471/50000 | 15471/50000 | 4327 | 77:126, 77:1594, 77:198 |
| 77:1673 | BHQ | lo | 336071/1000000 | 336071/1000000 | 4338 | 77:108, 77:1630, 77:220 |
| 77:1674 | BHR | lo | 164069/500000 | 164069/500000 | 4339 | 77:108, 77:1576, 77:1581 |
| 77:1675 | BHS | lo | 62291/200000 | 62291/200000 | 4340 | 77:108, 77:1631, 77:1649 |
| 77:1676 | BQR | lo | 190979/500000 | 190979/500000 | 4347 | 77:126, 77:1653, 77:238 |
| 77:1677 | CFR | lo | 12409/40000 | 12409/40000 | 4372 | 77:168, 77:1578, 77:218 |
| 77:1678 | CHR | lo | 390363/1000000 | 390363/1000000 | 4378 | 77:168, 77:1647, 77:1591 |
| 77:1679 | CPR | lo | 362573/1000000 | 362573/1000000 | 4381 | 77:168, 77:1648, 77:1638 |
| 77:1680 | EHR | lo | 140791/500000 | 140791/500000 | 4398 | 77:198, 77:186, 77:1591 |
| 77:1681 | EPR | lo | 944/3125 | 944/3125 | 4401 | 77:198, 77:1609, 77:1638 |
| 77:1682 | FQR | lo | 1243/4000 | 1243/4000 | 4412 | 77:218, 77:1583, 77:238 |
| 77:1683 | HQR | lo | 362583/1000000 | 362583/1000000 | 4416 | 77:1591, 77:1650, 77:238 |
| 77:1685 | ABE | lo | 12617/125000 | 3231571750/32015999541 | 32 | 77:0, 77:1658, 77:4, 77:1601, 77:19 |
| 77:1687 | ABR | lo | 200159/1000000 | 46635377/232991000 | 78 | 77:0, 77:1575, 77:4, 77:1670, 77:75 |
| 77:1688 | BFR | lo | 247369/1000000 | 1120269665/4528733904 | 156 | 77:1687, 77:176, 77:1662, 77:1672, 77:39 |
| 77:1689 | BPR | lo | 68421/500000 | 146776465/1072594872 | 191 | 77:1687, 77:1681, 77:62, 77:1672, 77:39 |
| 77:1691 | CFS | lo | 62121/500000 | 18304477/147329000 | 336 | 77:1642, 77:178, 77:1663, 77:138, 77:1636 |
| 77:1692 | AEQ | lo | 130277/1000000 | 479783280/3682767397 | 374 | 77:1601, 77:194, 77:1660, 77:134, 77:137 |
| 77:1693 | ACP | lo | 20029/200000 | 68083533/679847810 | 412 | 77:1655, 77:62, 77:1657, 77:44, 77:49 |
| 77:1694 | HPR | lo | 98307/1000000 | 42368289/430978000 | 445 | 77:52, 77:1679, 77:62, 77:150, 77:23 |
| 77:1695 | AEP | lo | 9817/100000 | 33370353/339923905 | 512 | 77:1658, 77:62, 77:1660, 77:44, 77:49 |
| 77:1696 | FQS | lo | 31191/250000 | 2757222877/22099350000 | 531 | 77:1663, 77:1615, 77:1644, 77:178, 77:1636 |
| 77:1697 | AES | lo | 34371/200000 | 8062077/46912000 | 536 | 77:1663, 77:198, 77:70, 77:178, 77:219 |
| 77:1698 | APQ | lo | 51361/500000 | 34917966/339923905 | 617 | 77:44, 77:1668, 77:1661, 77:62, 77:49 |
| 77:1701 | BEQ | lo | 59813/500000 | 440557740/3682767397 | 724 | 77:1602, 77:194, 77:1672, 77:134, 77:137 |
| 77:1702 | BCF | lo | 12571/62500 | 100568072309/500000000000 | 747 | 77:1669, 77:1688, 77:1670, 77:98, 77:113 |
| 77:1703 | CFH | lo | 140579/1000000 | 140579823/1000000000 | 750 | 77:1669, 77:204, 77:98, 77:1678, 77:113 |
| 77:1704 | HRS | lo | 47799/500000 | 22273531/232991000 | 815 | 77:1674, 77:168, 77:126, 77:1678, 77:83 |
| 77:1705 | BEF | lo | 3588/15625 | 418576329/1822812500 | 848 | 77:1671, 77:176, 77:1672, 77:1593, 77:185 |
| 77:1706 | EFH | lo | 26287/200000 | 3099899250/23584897877 | 849 | 77:1705, 77:204, 77:98, 77:176, 77:105 |
| 77:1707 | BES | lo | 61711/500000 | 7522863/60952000 | 916 | 77:1675, 77:198, 77:126, 77:186, 77:231 |
| 77:1708 | BFQ | lo | 189699/1000000 | 189699829199/1000000000000 | 952 | 77:98, 77:1676, 77:1688, 77:1673, 77:113 |
| 77:1709 | FHQ | lo | 34563/250000 | 13042657125/94339591508 | 953 | 77:98, 77:1682, 77:1708, 77:204, 77:105 |
| 77:1711 | EHQ | lo | 22693/200000 | 417868530/3682767397 | 1078 | 77:1604, 77:194, 77:134, 77:1680, 77:137 |
| 77:1714 | ACE | lo | 39517/250000 | 105276126004073/666015625000000 | 2248 | 77:1657, 77:39 |
| 77:1715 | BCE | lo | 164301/1000000 | 280133622962449/1705000000000000 | 2418 | 77:1670, 77:95 |
| 77:1716 | CEF | lo | 18269/100000 | 74756866463/409200000000 | 2617 | 77:1677, 77:177 |
| 77:1717 | CEH | lo | 167783/1000000 | 572142037/3410000000 | 2642 | 77:1678, 77:185 |
| 77:1718 | CEP | lo | 87143/500000 | 713181091/4092000000 | 2652 | 77:1679, 77:191 |
| 77:1721 | CFP | lo | 102933/1000000 | 15413045000/149738539799 | 2786 | 77:5, 77:100, 77:44, 77:8, 77:1655, 77:1702 |
| 77:1722 | EPS | lo | 115623/1000000 | 17313271201307/149738539799000 | 2797 | 77:5, 77:100, 77:44, 77:8, 77:1697, 77:1707, 77:178 |
| 77:1724 | EFP | lo | 84319/500000 | 1178739232573231/6989724902600000 | 2882 | 77:21, 77:150, 77:52, 77:1693, 77:1658, 77:1716, 77:1706 |
| 77:1725 | FPQ | lo | 65257/500000 | 414664641519/3177147683000 | 2890 | 77:21, 77:150, 77:52, 77:1693, 77:1661, 77:144, 77:1709 |
| 77:1726 | FPR | lo | 154883/1000000 | 5412951029709/34948624513000 | 2891 | 77:21, 77:150, 77:52, 77:1693, 77:1662, 77:1677, 77:204 |
| 77:1727 | FPS | lo | 153341/1000000 | 243593535965643/1588573841500000 | 2892 | 77:21, 77:150, 77:52, 77:1693, 77:1663, 77:1691, 77:1524 |
| 77:1728 | EQS | lo | 96773/1000000 | 17780931012033/183737406581000 | 2930 | 77:27, 77:168, 77:70, 77:1642, 77:1692, 77:134, 77:194 |
| 77:1739 | BCP | lo | 154523/1000000 | 16745487/108368500 | 3272 | 77:57, 77:1694, 77:62, 77:52, 77:0, 77:1669, 77:1670 |
| 77:1740 | BEP | lo | 9271/62500 | 16075033291/108368500000 | 3273 | 77:57, 77:1694, 77:62, 77:52, 77:1685, 77:1671, 77:1672 |
| 77:1741 | BPQ | lo | 18759/125000 | 130104861/866948000 | 3277 | 77:57, 77:1694, 77:62, 77:52, 77:10, 77:1673, 77:1676 |
| 77:1742 | BPS | lo | 62143/500000 | 21549949443/173389600000 | 3279 | 77:57, 77:1694, 77:62, 77:52, 77:1641, 77:1675, 77:126 |
| 77:1745 | AES | hi | 220993/500000 | 3578789301646366871/8097082230468750000 | 3535 | 77:95, 77:198, 77:126, 77:1707, 77:1685, 77:39 |
| 77:1747 | PRS | lo | 93463/1000000 | 9751701/104337400 | 3622 | 77:99, 77:200, 77:108, 77:100, 77:126, 77:218, 77:1704 |
| 77:1749 | APS | lo | 94121/1000000 | 18971087318181/201559686217000 | 3763 | 77:123, 77:238, 77:126, 77:1653, 77:8, 77:1698, 77:62 |
| 77:1750 | ABS | lo | 162253/1000000 | 85296580631/525699125000 | 3938 | 77:177, 77:218, 77:198, 77:178, 77:1685, 77:4, 77:1687 |
| 77:1751 | ACS | lo | 250047/1000000 | 262899631081/1051398250000 | 3939 | 77:177, 77:218, 77:198, 77:178, 77:1714, 77:1655, 77:1657 |
| 77:1753 | AQS | lo | 119357/500000 | 1003936139261/4205593000000 | 3944 | 77:177, 77:218, 77:198, 77:178, 77:1692, 77:1661, 77:1668 |
| 77:1756 | CHS | lo | 20183/100000 | 848816898347/4205593000000 | 3957 | 77:177, 77:218, 77:198, 77:178, 77:1717, 77:1703, 77:1678 |
| 77:1757 | CPS | lo | 88063/500000 | 740717794269/4205593000000 | 3958 | 77:177, 77:218, 77:198, 77:178, 77:1718, 77:1721, 77:1679 |
| 77:1758 | HPS | lo | 94173/1000000 | 396055659/4205593000 | 3973 | 77:177, 77:218, 77:198, 77:178, 77:180, 77:200, 77:1694 |
| 77:1759 | HQS | lo | 87017/500000 | 146383851949/841118600000 | 3974 | 77:177, 77:218, 77:198, 77:178, 77:1711, 77:1709, 77:1683 |
| 77:1761 | BCS | lo | 116503/500000 | 1359125193/5833000000 | 3992 | 77:185, 77:1704, 77:198, 77:186, 77:1715, 77:1669, 77:1670 |
| 77:1762 | BQS | lo | 195961/1000000 | 285760267/1458250000 | 3997 | 77:185, 77:1704, 77:198, 77:186, 77:1701, 77:1673, 77:1676 |
| 77:1764 | ACF | lo | 148039/500000 | 148039/500000 | 4243 | 77:44, 77:1693, 77:1721 |
| 77:1766 | ACR | lo | 436047/1000000 | 436047/1000000 | 4256 | 77:70, 77:1751, 77:168 |
| 77:1767 | AEF | lo | 5622/15625 | 5622/15625 | 4258 | 77:44, 77:1695, 77:1724 |
| 77:1769 | AER | lo | 71571/200000 | 71571/200000 | 4271 | 77:70, 77:1697, 77:198 |
| 77:1770 | AFQ | lo | 81559/250000 | 81559/250000 | 4276 | 77:44, 77:1698, 77:1725 |
| 77:1771 | AFR | lo | 340883/1000000 | 340883/1000000 | 4277 | 77:44, 77:62, 77:1726 |
| 77:1772 | AFS | lo | 170231/500000 | 170231/500000 | 4278 | 77:44, 77:1749, 77:1727 |
| 77:1777 | AQR | lo | 212357/500000 | 212357/500000 | 4291 | 77:70, 77:1753, 77:238 |
| 77:1778 | BCH | lo | 340523/1000000 | 340523/1000000 | 4303 | 77:108, 77:1739, 77:150 |
| 77:1779 | BCR | lo | 209503/500000 | 209503/500000 | 4312 | 77:126, 77:1761, 77:168 |
| 77:1780 | BEH | lo | 5224/15625 | 5224/15625 | 4318 | 77:108, 77:1740, 77:180 |
| 77:1781 | BER | lo | 154711/500000 | 154711/500000 | 4327 | 77:126, 77:1707, 77:198 |
| 77:1782 | BHQ | lo | 42009/125000 | 42009/125000 | 4338 | 77:108, 77:1741, 77:220 |
| 77:1783 | BHR | lo | 328149/1000000 | 328149/1000000 | 4339 | 77:108, 77:1689, 77:1694 |
| 77:1784 | BHS | lo | 311459/1000000 | 311459/1000000 | 4340 | 77:108, 77:1742, 77:1758 |
| 77:1785 | BQR | lo | 381961/1000000 | 381961/1000000 | 4347 | 77:126, 77:1762, 77:238 |
| 77:1786 | CFR | lo | 155121/500000 | 155121/500000 | 4372 | 77:168, 77:1691, 77:218 |
| 77:1787 | CHR | lo | 97607/250000 | 97607/250000 | 4378 | 77:168, 77:1756, 77:1704 |
| 77:1788 | CPR | lo | 362589/1000000 | 362589/1000000 | 4381 | 77:168, 77:1757, 77:1747 |
| 77:1789 | EHR | lo | 140799/500000 | 140799/500000 | 4398 | 77:198, 77:186, 77:1704 |
| 77:1790 | EPR | lo | 151043/500000 | 151043/500000 | 4401 | 77:198, 77:1722, 77:1747 |
| 77:1791 | FQR | lo | 77691/250000 | 77691/250000 | 4412 | 77:218, 77:1696, 77:238 |
| 77:1792 | HQR | lo | 45329/125000 | 45329/125000 | 4416 | 77:1704, 77:1759, 77:238 |
| 77:1794 | ABE | lo | 100943/1000000 | 1077265500/10671999847 | 32 | 77:0, 77:1767, 77:4, 77:1714, 77:19 |
| 77:1796 | ABR | lo | 100081/500000 | 46635997/232991000 | 78 | 77:0, 77:1688, 77:4, 77:1779, 77:75 |
| 77:1797 | BFR | lo | 247373/1000000 | 80660948813/326068841088 | 156 | 77:1796, 77:176, 77:1771, 77:1781, 77:39 |
| 77:1798 | BPR | lo | 27369/200000 | 1312387999/9590260032 | 191 | 77:1796, 77:1790, 77:62, 77:1781, 77:39 |
| 77:1800 | CFS | lo | 124251/1000000 | 54917337/441986000 | 336 | 77:1751, 77:178, 77:1772, 77:138, 77:1745 |
| 77:1801 | AEQ | lo | 32571/250000 | 479808390/3682767397 | 374 | 77:1714, 77:194, 77:1769, 77:134, 77:137 |
| 77:1802 | ACP | lo | 100151/1000000 | 13617525/135969562 | 412 | 77:1764, 77:62, 77:1766, 77:44, 77:49 |
| 77:1803 | HPR | lo | 9831/100000 | 42369777/430978000 | 445 | 77:52, 77:1788, 77:62, 77:150, 77:23 |
| 77:1804 | AEP | lo | 24543/250000 | 66742659/679847810 | 512 | 77:1767, 77:62, 77:1769, 77:44, 77:49 |
| 77:1805 | FQS | lo | 124773/1000000 | 27573965563/220993000000 | 531 | 77:1772, 77:1728, 77:1753, 77:178, 77:1745 |
| 77:1806 | AES | lo | 85931/500000 | 20155983/117280000 | 536 | 77:1772, 77:198, 77:70, 77:178, 77:219 |
| 77:1807 | APQ | lo | 51363/500000 | 6983835/67984781 | 617 | 77:44, 77:1777, 77:1770, 77:62, 77:49 |
| 77:1810 | BEQ | lo | 29907/250000 | 440562390/3682767397 | 724 | 77:1715, 77:194, 77:1781, 77:134, 77:137 |
| 77:1811 | BCF | lo | 100569/500000 | 201138870079/1000000000000 | 747 | 77:1778, 77:1797, 77:1779, 77:98, 77:113 |
| 77:1812 | CFH | lo | 70299/500000 | 140598051/1000000000 | 750 | 77:1778, 77:204, 77:98, 77:1787, 77:113 |
| 77:1813 | HRS | lo | 11951/125000 | 22275887/232991000 | 815 | 77:1783, 77:168, 77:126, 77:1787, 77:83 |
| 77:1814 | BEF | lo | 229639/1000000 | 13394862457/58330000000 | 848 | 77:1780, 77:176, 77:1781, 77:1706, 77:185 |
| 77:1815 | EFH | lo | 32859/250000 | 12399678375/94339591508 | 849 | 77:1814, 77:204, 77:98, 77:176, 77:105 |
| 77:1816 | BES | lo | 123423/1000000 | 37614687/304760000 | 916 | 77:1784, 77:198, 77:126, 77:186, 77:231 |
| 77:1817 | BFQ | lo | 94851/500000 | 2964097779/15625000000 | 952 | 77:98, 77:1785, 77:1797, 77:1782, 77:113 |
| 77:1818 | FHQ | lo | 138257/1000000 | 6521590125/47169795754 | 953 | 77:98, 77:1791, 77:1817, 77:204, 77:105 |
| 77:1820 | EHQ | lo | 113481/1000000 | 417924330/3682767397 | 1078 | 77:1717, 77:194, 77:134, 77:1789, 77:137 |
| 77:1823 | ACE | lo | 158077/1000000 | 210564324349221/1332031250000000 | 2248 | 77:1766, 77:39 |
| 77:1824 | BCE | lo | 82151/500000 | 280136297256347/1705000000000000 | 2418 | 77:1779, 77:95 |
| 77:1825 | CEF | lo | 1827/10000 | 311504012749/1705000000000 | 2617 | 77:1786, 77:177 |
| 77:1826 | CEH | lo | 167811/1000000 | 429177979/2557500000 | 2642 | 77:1787, 77:185 |
| 77:1827 | CEP | lo | 87147/500000 | 237737521/1364000000 | 2652 | 77:1788, 77:191 |
| 77:1829 | CFP | lo | 102937/1000000 | 15413696000/149738539799 | 2786 | 77:5, 77:100, 77:44, 77:8, 77:1764, 77:1811 |
| 77:1830 | EPS | lo | 37/320 | 17313519201307/149738539799000 | 2797 | 77:5, 77:100, 77:44, 77:8, 77:1806, 77:1816, 77:178 |
| 77:1831 | EFP | lo | 84321/500000 | 1473453702872667/8737156128250000 | 2882 | 77:21, 77:150, 77:52, 77:1802, 77:1767, 77:1825, 77:1815 |
| 77:1832 | FPQ | lo | 130517/1000000 | 4561396170059/34948624513000 | 2890 | 77:21, 77:150, 77:52, 77:1802, 77:1770, 77:144, 77:1818 |
| 77:1833 | FPR | lo | 77443/500000 | 5413053329709/34948624513000 | 2891 | 77:21, 77:150, 77:52, 77:1802, 77:1771, 77:1786, 77:204 |
| 77:1834 | FPS | lo | 153349/1000000 | 5359365157514763/34948624513000000 | 2892 | 77:21, 77:150, 77:52, 77:1802, 77:1772, 77:1800, 77:1524 |
| 77:1835 | EQS | lo | 48387/500000 | 17781061212033/183737406581000 | 2930 | 77:27, 77:168, 77:70, 77:1751, 77:1801, 77:134, 77:194 |
| 77:1846 | BCP | lo | 38631/250000 | 133964361/866948000 | 3272 | 77:57, 77:1803, 77:62, 77:52, 77:0, 77:1778, 77:1779 |
| 77:1847 | BEP | lo | 148343/1000000 | 32151606991/216737000000 | 3273 | 77:57, 77:1803, 77:62, 77:52, 77:1794, 77:1780, 77:1781 |
| 77:1848 | BPS | lo | 124287/1000000 | 10775111343/86694800000 | 3279 | 77:57, 77:1803, 77:62, 77:52, 77:1750, 77:1784, 77:126 |
| 77:1849 | CES | hi | 35141/100000 | 122812967164755529/349486500000000000 | 3460 | 77:83, 77:168, 77:126, 77:1761, 77:73, 77:137 |
| 77:1852 | AES | hi | 88397/200000 | 3578780825083866871/8097082230468750000 | 3535 | 77:95, 77:198, 77:126, 77:1816, 77:1794, 77:39 |
| 77:1854 | PRS | lo | 11683/125000 | 9751887/104337400 | 3622 | 77:99, 77:200, 77:108, 77:100, 77:126, 77:218, 77:1813 |
| 77:1856 | ABS | lo | 81129/500000 | 6625163633/40831000000 | 3938 | 77:177, 77:218, 77:198, 77:178, 77:1794, 77:4, 77:1796 |
| 77:1857 | ACS | lo | 125031/500000 | 1051660554661/4205593000000 | 3939 | 77:177, 77:218, 77:198, 77:178, 77:1823, 77:1764, 77:1766 |
| 77:1859 | AQS | lo | 59681/250000 | 250994184603/1051398250000 | 3944 | 77:177, 77:218, 77:198, 77:178, 77:1801, 77:1770, 77:1777 |
| 77:1862 | CHS | lo | 201861/1000000 | 424473977307/2102796500000 | 3957 | 77:177, 77:218, 77:198, 77:178, 77:1826, 77:1812, 77:1787 |
| 77:1863 | CPS | lo | 88067/500000 | 105821356663/600799000000 | 3958 | 77:177, 77:218, 77:198, 77:178, 77:1827, 77:1829, 77:1788 |
| 77:1864 | HPS | lo | 47087/500000 | 396058449/4205593000 | 3973 | 77:177, 77:218, 77:198, 77:178, 77:180, 77:200, 77:1803 |
| 77:1865 | HQS | lo | 34811/200000 | 732007009233/4205593000000 | 3974 | 77:177, 77:218, 77:198, 77:178, 77:1820, 77:1818, 77:1792 |
| 77:1867 | BCS | lo | 233007/1000000 | 169891727/729125000 | 3992 | 77:185, 77:1813, 77:198, 77:186, 77:1824, 77:1778, 77:1779 |
| 77:1868 | BQS | lo | 195963/1000000 | 571526367/2916500000 | 3997 | 77:185, 77:1813, 77:198, 77:186, 77:1810, 77:1782, 77:1785 |
| 77:1870 | ACF | lo | 37011/125000 | 37011/125000 | 4243 | 77:44, 77:1802, 77:1829 |
| 77:1872 | ACR | lo | 218031/500000 | 218031/500000 | 4256 | 77:70, 77:1857, 77:168 |
| 77:1873 | AEF | lo | 179907/500000 | 179907/500000 | 4258 | 77:44, 77:1804, 77:1831 |
| 77:1875 | AER | lo | 178931/500000 | 178931/500000 | 4271 | 77:70, 77:1806, 77:198 |
| 77:1876 | AFQ | lo | 326243/1000000 | 326243/1000000 | 4276 | 77:44, 77:1807, 77:1832 |
| 77:1877 | AFR | lo | 170443/500000 | 170443/500000 | 4277 | 77:44, 77:62, 77:1833 |
| 77:1878 | AFS | lo | 34047/100000 | 34047/100000 | 4278 | 77:44, 77:1749, 77:1834 |
| 77:1882 | AQR | lo | 106181/250000 | 106181/250000 | 4291 | 77:70, 77:1859, 77:238 |
| 77:1883 | BCH | lo | 85131/250000 | 85131/250000 | 4303 | 77:108, 77:1846, 77:150 |
| 77:1884 | BCR | lo | 419007/1000000 | 419007/1000000 | 4312 | 77:126, 77:1867, 77:168 |
| 77:1885 | BEH | lo | 334343/1000000 | 334343/1000000 | 4318 | 77:108, 77:1847, 77:180 |
| 77:1886 | BER | lo | 309423/1000000 | 309423/1000000 | 4327 | 77:126, 77:1816, 77:198 |
| 77:1887 | BHR | lo | 65631/200000 | 65631/200000 | 4339 | 77:108, 77:1798, 77:1803 |
| 77:1888 | BHS | lo | 311461/1000000 | 311461/1000000 | 4340 | 77:108, 77:1848, 77:1864 |
| 77:1889 | BQR | lo | 381963/1000000 | 381963/1000000 | 4347 | 77:126, 77:1868, 77:238 |
| 77:1890 | CFR | lo | 310251/1000000 | 310251/1000000 | 4372 | 77:168, 77:1800, 77:218 |
| 77:1891 | CHR | lo | 390469/1000000 | 390469/1000000 | 4378 | 77:168, 77:1862, 77:1813 |
| 77:1892 | CPR | lo | 181299/500000 | 181299/500000 | 4381 | 77:168, 77:1863, 77:1854 |
| 77:1893 | EHR | lo | 35201/125000 | 35201/125000 | 4398 | 77:198, 77:186, 77:1813 |
| 77:1894 | EPR | lo | 302089/1000000 | 302089/1000000 | 4401 | 77:198, 77:1830, 77:1854 |
| 77:1895 | FQR | lo | 310773/1000000 | 310773/1000000 | 4412 | 77:218, 77:1805, 77:238 |
| 77:1896 | HQR | lo | 362663/1000000 | 362663/1000000 | 4416 | 77:1813, 77:1865, 77:238 |
| 77:1898 | ABE | lo | 100947/1000000 | 1077308125/10671999847 | 32 | 77:0, 77:1873, 77:4, 77:1823, 77:19 |
| 77:1899 | CFP | lo | 102939/1000000 | 15414006000/149738539799 | 70 | 77:1870, 77:100, 77:44, 77:1811, 77:5 |
| 77:1900 | ABR | lo | 200163/1000000 | 23318107/116495500 | 78 | 77:0, 77:1797, 77:4, 77:1884, 77:75 |
| 77:1901 | BFR | lo | 15461/62500 | 26887240963/108689613696 | 156 | 77:1900, 77:176, 77:1877, 77:1886, 77:39 |
| 77:1902 | BPR | lo | 136847/1000000 | 29747793169/217379227392 | 191 | 77:1900, 77:1894, 77:62, 77:1886, 77:39 |
| 77:1904 | CFS | lo | 3883/31250 | 13729869/110496250 | 336 | 77:1857, 77:178, 77:1878, 77:138, 77:1852 |
| 77:1905 | AEQ | lo | 8143/62500 | 479823270/3682767397 | 374 | 77:1823, 77:194, 77:1875, 77:134, 77:137 |
| 77:1906 | ACP | lo | 50077/500000 | 6808995/67984781 | 412 | 77:1870, 77:62, 77:1872, 77:44, 77:49 |
| 77:1907 | HPR | lo | 12289/125000 | 21185307/215489000 | 445 | 77:52, 77:1892, 77:62, 77:150, 77:23 |
| 77:1908 | AEP | lo | 49087/500000 | 33371934/339923905 | 512 | 77:1873, 77:62, 77:1875, 77:44, 77:49 |
| 77:1909 | FQS | lo | 124777/1000000 | 2757498789/22099250000 | 531 | 77:1878, 77:1835, 77:1859, 77:178, 77:1852 |
| 77:1910 | AES | lo | 34373/200000 | 4031271/23456000 | 536 | 77:1878, 77:198, 77:70, 77:178, 77:219 |
| 77:1911 | APQ | lo | 12841/125000 | 69839931/679847810 | 617 | 77:44, 77:1882, 77:1876, 77:62, 77:49 |
| 77:1915 | CFH | lo | 140609/1000000 | 140609583/1000000000 | 750 | 77:1883, 77:204, 77:98, 77:1891, 77:113 |
| 77:1916 | HRS | lo | 47807/500000 | 2784668/29123875 | 815 | 77:1887, 77:168, 77:126, 77:1891, 77:83 |
| 77:1917 | BEF | lo | 229643/1000000 | 33487754607/145825000000 | 848 | 77:1885, 77:176, 77:1886, 77:1815, 77:185 |
| 77:1918 | EFH | lo | 131437/1000000 | 12399724875/94339591508 | 849 | 77:1917, 77:204, 77:98, 77:176, 77:105 |
| 77:1919 | BES | lo | 3857/31250 | 37614873/304760000 | 916 | 77:1888, 77:198, 77:126, 77:186, 77:231 |
| 77:1920 | BFQ | lo | 189703/1000000 | 23712978009/125000000000 | 952 | 77:98, 77:1889, 77:1901, 77:1782, 77:113 |
| 77:1921 | FHQ | lo | 138261/1000000 | 6521752875/47169795754 | 953 | 77:98, 77:1895, 77:1920, 77:204, 77:105 |
| 77:1923 | EHQ | lo | 11349/100000 | 417959670/3682767397 | 1078 | 77:1826, 77:194, 77:134, 77:1893, 77:137 |
| 77:1926 | ACE | lo | 158083/1000000 | 9571434897903/60546875000000 | 2248 | 77:1872, 77:39 |
| 77:1927 | BCE | lo | 164303/1000000 | 560273931659643/3410000000000000 | 2418 | 77:1884, 77:95 |
| 77:1928 | CEF | lo | 36541/200000 | 623026098719/3410000000000 | 2617 | 77:1890, 77:177 |
| 77:1929 | CEH | lo | 167829/1000000 | 1716892193/10230000000 | 2642 | 77:1891, 77:185 |
| 77:1930 | CEP | lo | 87149/500000 | 118871711/682000000 | 2652 | 77:1892, 77:191 |
| 77:1932 | EFP | lo | 42161/250000 | 5893891610115181/34948624513000000 | 2882 | 77:21, 77:150, 77:52, 77:1906, 77:1873, 77:1928, 77:1918 |
| 77:1933 | FPQ | lo | 65259/500000 | 4561455539409/34948624513000 | 2890 | 77:21, 77:150, 77:52, 77:1906, 77:1876, 77:144, 77:1921 |
| 77:1934 | FPR | lo | 154887/1000000 | 5413109129709/34948624513000 | 2891 | 77:21, 77:150, 77:52, 77:1906, 77:1877, 77:1890, 77:204 |
| 77:1935 | FPS | lo | 76677/500000 | 167485286221479/1092144516031250 | 2892 | 77:21, 77:150, 77:52, 77:1906, 77:1878, 77:1904, 77:1524 |
| 77:1941 | BEP | lo | 148347/1000000 | 32152473939/216737000000 | 3273 | 77:57, 77:1907, 77:62, 77:52, 77:1898, 77:1885, 77:1886 |
| 77:1942 | BPS | lo | 1942/15625 | 13468991187/108368500000 | 3279 | 77:57, 77:1907, 77:62, 77:52, 77:1856, 77:1888, 77:126 |
| 77:1944 | AES | hi | 6906/15625 | 62785543532173103/142054074218750000 | 3535 | 77:95, 77:198, 77:126, 77:1919, 77:1898, 77:39 |
| 77:1946 | FHS | lo | 25313/200000 | 262350803743/2072853051000 | 3563 | 77:95, 77:198, 77:126, 77:1919, 77:98, 77:1918, 77:204 |
| 77:1947 | PRS | lo | 18693/200000 | 48759993/521687000 | 3622 | 77:99, 77:200, 77:108, 77:100, 77:126, 77:218, 77:1916 |
| 77:1949 | APS | lo | 47061/500000 | 18971226818181/201559686217000 | 3763 | 77:123, 77:238, 77:126, 77:1868, 77:8, 77:1911, 77:62 |
| 77:1950 | ABS | lo | 8113/50000 | 682402166571/4205593000000 | 3938 | 77:177, 77:218, 77:198, 77:178, 77:1898, 77:4, 77:1900 |
| 77:1951 | ACS | lo | 250071/1000000 | 1051697878219/4205593000000 | 3939 | 77:177, 77:218, 77:198, 77:178, 77:1926, 77:1870, 77:1872 |
| 77:1952 | AQS | lo | 23873/100000 | 31375060337/131424781250 | 3944 | 77:177, 77:218, 77:198, 77:178, 77:1905, 77:1876, 77:1882 |
| 77:1955 | CHS | lo | 5047/25000 | 849028626137/4205593000000 | 3957 | 77:177, 77:218, 77:198, 77:178, 77:1929, 77:1915, 77:1891 |
| 77:1956 | CPS | lo | 88069/500000 | 38987698833/221347000000 | 3958 | 77:177, 77:218, 77:198, 77:178, 77:1930, 77:1899, 77:1892 |
| 77:1957 | HQS | lo | 43517/250000 | 73206066957/420559300000 | 3974 | 77:177, 77:218, 77:198, 77:178, 77:1923, 77:1921, 77:1896 |
| 77:1959 | BCS | lo | 14563/62500 | 1359139649/5833000000 | 3992 | 77:185, 77:1916, 77:198, 77:186, 77:1927, 77:1883, 77:1884 |
| 77:1961 | ACF | lo | 296093/1000000 | 296093/1000000 | 4243 | 77:44, 77:1906, 77:1899 |
| 77:1963 | ACR | lo | 436071/1000000 | 436071/1000000 | 4256 | 77:70, 77:1951, 77:168 |
| 77:1964 | AEF | lo | 179909/500000 | 179909/500000 | 4258 | 77:44, 77:1908, 77:1932 |
| 77:1966 | AER | lo | 71573/200000 | 71573/200000 | 4271 | 77:70, 77:1910, 77:198 |
| 77:1967 | AFQ | lo | 163123/500000 | 163123/500000 | 4276 | 77:44, 77:1911, 77:1933 |
| 77:1968 | AFR | lo | 340887/1000000 | 340887/1000000 | 4277 | 77:44, 77:62, 77:1934 |
| 77:1969 | AFS | lo | 85119/250000 | 85119/250000 | 4278 | 77:44, 77:1949, 77:1935 |
| 77:1974 | AQR | lo | 42473/100000 | 42473/100000 | 4291 | 77:70, 77:1952, 77:238 |
| 77:1975 | BCR | lo | 6547/15625 | 6547/15625 | 4312 | 77:126, 77:1959, 77:168 |
| 77:1976 | BEH | lo | 334347/1000000 | 334347/1000000 | 4318 | 77:108, 77:1941, 77:180 |
| 77:1977 | BER | lo | 19339/62500 | 19339/62500 | 4327 | 77:126, 77:1919, 77:198 |
| 77:1978 | BHR | lo | 328159/1000000 | 328159/1000000 | 4339 | 77:108, 77:1902, 77:1907 |
| 77:1979 | BHS | lo | 155731/500000 | 155731/500000 | 4340 | 77:108, 77:1942, 77:1864 |
| 77:1980 | CFR | lo | 19391/62500 | 19391/62500 | 4372 | 77:168, 77:1904, 77:218 |
| 77:1981 | CHR | lo | 195247/500000 | 195247/500000 | 4378 | 77:168, 77:1955, 77:1916 |
| 77:1982 | CPR | lo | 362603/1000000 | 362603/1000000 | 4381 | 77:168, 77:1956, 77:1947 |
| 77:1983 | EHR | lo | 140807/500000 | 140807/500000 | 4398 | 77:198, 77:186, 77:1916 |
| 77:1985 | FQR | lo | 310777/1000000 | 310777/1000000 | 4412 | 77:218, 77:1909, 77:238 |
| 77:1986 | HQR | lo | 181341/500000 | 181341/500000 | 4416 | 77:1916, 77:1957, 77:238 |
| 77:1988 | ABE | lo | 100949/1000000 | 3232009625/32015999541 | 32 | 77:0, 77:1964, 77:4, 77:1926, 77:19 |
| 77:1990 | BFR | lo | 247377/1000000 | 6721837337/27172403424 | 156 | 77:1900, 77:176, 77:1968, 77:1977, 77:39 |
| 77:1992 | CFS | lo | 124259/1000000 | 18306957/147328000 | 336 | 77:1951, 77:178, 77:1969, 77:138, 77:1944 |
| 77:1993 | AEQ | lo | 130291/1000000 | 479831640/3682767397 | 374 | 77:1926, 77:194, 77:1966, 77:134, 77:137 |
| 77:1994 | ACP | lo | 25039/250000 | 34045626/339923905 | 412 | 77:1961, 77:62, 77:1963, 77:44, 77:49 |
| 77:1995 | HPR | lo | 98313/1000000 | 42371079/430978000 | 445 | 77:52, 77:1982, 77:62, 77:150, 77:23 |
| 77:1996 | AEP | lo | 3927/40000 | 66744519/679847810 | 512 | 77:1964, 77:62, 77:1966, 77:44, 77:49 |
| 77:1997 | FQS | lo | 6239/50000 | 2297963101/18416000000 | 531 | 77:1969, 77:1835, 77:1952, 77:178, 77:1944 |
| 77:1998 | AES | lo | 171867/1000000 | 10078317/58640000 | 536 | 77:1969, 77:198, 77:70, 77:178, 77:219 |
| 77:1999 | APQ | lo | 10273/100000 | 34920384/339923905 | 617 | 77:44, 77:1974, 77:1967, 77:62, 77:49 |
| 77:2002 | BEQ | lo | 119629/1000000 | 23187690/193829863 | 724 | 77:1927, 77:194, 77:1977, 77:134, 77:137 |
| 77:2003 | BCF | lo | 201141/1000000 | 50285259387/250000000000 | 747 | 77:1883, 77:1990, 77:1975, 77:98, 77:113 |
| 77:2004 | CFH | lo | 17577/125000 | 70308279/500000000 | 750 | 77:1883, 77:204, 77:98, 77:1981, 77:113 |
| 77:2005 | HRS | lo | 47809/500000 | 22278243/232991000 | 815 | 77:1978, 77:168, 77:126, 77:1981, 77:83 |
| 77:2007 | BFQ | lo | 23713/125000 | 11856510009/62500000000 | 952 | 77:98, 77:1889, 77:1990, 77:1782, 77:113 |
| 77:2008 | FHQ | lo | 69131/500000 | 13043656875/94339591508 | 953 | 77:98, 77:1985, 77:2007, 77:204, 77:105 |
| 77:2010 | EHQ | lo | 14187/125000 | 417981990/3682767397 | 1078 | 77:1929, 77:194, 77:134, 77:1983, 77:137 |
| 77:2013 | ACE | lo | 79043/500000 | 210575913796653/1332031250000000 | 2248 | 77:1963, 77:39 |
| 77:2014 | CEF | lo | 45677/250000 | 116819276137/639375000000 | 2617 | 77:1980, 77:177 |
| 77:2015 | CEH | lo | 167839/1000000 | 858501059/5115000000 | 2642 | 77:1981, 77:185 |
| 77:2016 | CEP | lo | 174301/1000000 | 713240101/4092000000 | 2652 | 77:1982, 77:191 |
| 77:2017 | CFP | lo | 102941/1000000 | 15414254000/149738539799 | 2786 | 77:5, 77:100, 77:44, 77:8, 77:1961, 77:2003 |
| 77:2018 | EPS | lo | 57813/500000 | 17313705201307/149738539799000 | 2797 | 77:5, 77:100, 77:44, 77:8, 77:1998, 77:1919, 77:178 |
| 77:2019 | EFP | lo | 33729/200000 | 5893924160115181/34948624513000000 | 2882 | 77:21, 77:150, 77:52, 77:1994, 77:1964, 77:2014, 77:1918 |
| 77:2020 | FPQ | lo | 130519/1000000 | 4561479023309/34948624513000 | 2890 | 77:21, 77:150, 77:52, 77:1994, 77:1967, 77:144, 77:2008 |
| 77:2021 | FPR | lo | 19361/125000 | 5413137029709/34948624513000 | 2891 | 77:21, 77:150, 77:52, 77:1994, 77:1968, 77:1980, 77:204 |
| 77:2022 | FPS | lo | 153357/1000000 | 5359638170160867/34948624513000000 | 2892 | 77:21, 77:150, 77:52, 77:1994, 77:1969, 77:1992, 77:1946 |
| 77:2023 | EQS | lo | 3871/40000 | 17781191412033/183737406581000 | 2930 | 77:27, 77:168, 77:70, 77:1951, 77:1993, 77:134, 77:194 |
| 77:2035 | BEP | lo | 148349/1000000 | 32152930663/216737000000 | 3273 | 77:57, 77:1995, 77:62, 77:52, 77:1988, 77:1976, 77:1977 |
| 77:2036 | BPS | lo | 124289/1000000 | 5387614419/43347400000 | 3279 | 77:57, 77:1995, 77:62, 77:52, 77:1950, 77:1979, 77:126 |
| 77:2038 | PRS | lo | 46733/500000 | 9752073/104337400 | 3622 | 77:99, 77:200, 77:108, 77:100, 77:126, 77:218, 77:2005 |
| 77:2041 | ACS | lo | 62519/250000 | 525858967499/2102796500000 | 3939 | 77:177, 77:218, 77:198, 77:178, 77:2013, 77:1961, 77:1963 |
| 77:2042 | AQS | lo | 238733/1000000 | 1004017337563/4205593000000 | 3944 | 77:177, 77:218, 77:198, 77:178, 77:1993, 77:1967, 77:1974 |
| 77:2043 | CHS | lo | 50473/250000 | 106134699411/525699125000 | 3957 | 77:177, 77:218, 77:198, 77:178, 77:2015, 77:2004, 77:1981 |
| 77:2044 | CPS | lo | 176141/1000000 | 740778409013/4205593000000 | 3958 | 77:177, 77:218, 77:198, 77:178, 77:2016, 77:2017, 77:1982 |
| 77:2045 | HQS | lo | 43519/250000 | 13073095413/75099875000 | 3974 | 77:177, 77:218, 77:198, 77:178, 77:2010, 77:2008, 77:1986 |
| 77:2047 | BQS | lo | 48991/250000 | 1143058567/5833000000 | 3997 | 77:185, 77:2005, 77:198, 77:186, 77:2002, 77:1782, 77:1889 |
| 77:2049 | ACF | lo | 296097/1000000 | 296097/1000000 | 4243 | 77:44, 77:1994, 77:2017 |
| 77:2051 | ACR | lo | 109019/250000 | 109019/250000 | 4256 | 77:70, 77:2041, 77:168 |
| 77:2052 | AEF | lo | 17991/50000 | 17991/50000 | 4258 | 77:44, 77:1996, 77:2019 |
| 77:2054 | AER | lo | 357867/1000000 | 357867/1000000 | 4271 | 77:70, 77:1998, 77:198 |
| 77:2055 | AFQ | lo | 326249/1000000 | 326249/1000000 | 4276 | 77:44, 77:1999, 77:2020 |
| 77:2056 | AFR | lo | 42611/125000 | 42611/125000 | 4277 | 77:44, 77:62, 77:2021 |
| 77:2057 | AFS | lo | 340479/1000000 | 340479/1000000 | 4278 | 77:44, 77:1949, 77:2022 |
| 77:2060 | AQR | lo | 424733/1000000 | 424733/1000000 | 4291 | 77:70, 77:2042, 77:238 |
| 77:2061 | BEH | lo | 334349/1000000 | 334349/1000000 | 4318 | 77:108, 77:2035, 77:180 |
| 77:2062 | BHR | lo | 2051/6250 | 2051/6250 | 4339 | 77:108, 77:1902, 77:1995 |
| 77:2063 | BHS | lo | 311463/1000000 | 311463/1000000 | 4340 | 77:108, 77:2036, 77:1864 |
| 77:2064 | BQR | lo | 95491/250000 | 95491/250000 | 4347 | 77:126, 77:2047, 77:238 |
| 77:2066 | CHR | lo | 39051/100000 | 39051/100000 | 4378 | 77:168, 77:2043, 77:2005 |
| 77:2067 | CPR | lo | 362607/1000000 | 362607/1000000 | 4381 | 77:168, 77:2044, 77:2038 |
| 77:2068 | EHR | lo | 140809/500000 | 140809/500000 | 4398 | 77:198, 77:186, 77:2005 |
| 77:2069 | EPR | lo | 75523/250000 | 75523/250000 | 4401 | 77:198, 77:2018, 77:2038 |
| 77:2070 | FQR | lo | 15539/50000 | 15539/50000 | 4412 | 77:218, 77:1997, 77:238 |
| 77:2071 | HQR | lo | 181347/500000 | 181347/500000 | 4416 | 77:2005, 77:2045, 77:238 |
| 77:2073 | ABE | lo | 100951/1000000 | 1077350750/10671999847 | 32 | 77:0, 77:2052, 77:4, 77:2013, 77:19 |
| 77:2074 | ABR | lo | 50041/250000 | 46636431/232991000 | 78 | 77:0, 77:1990, 77:4, 77:1975, 77:75 |
| 77:2075 | BFR | lo | 123689/500000 | 5041396391/20379302568 | 156 | 77:2074, 77:176, 77:2056, 77:1977, 77:39 |
| 77:2076 | BPR | lo | 8553/62500 | 5577773443/40758605136 | 191 | 77:2074, 77:2069, 77:62, 77:1977, 77:39 |
| 77:2078 | CFS | lo | 124261/1000000 | 3661441/29465600 | 336 | 77:2041, 77:178, 77:2057, 77:138, 77:1944 |
| 77:2079 | AEQ | lo | 32573/250000 | 479836290/3682767397 | 374 | 77:2013, 77:194, 77:2054, 77:134, 77:137 |
| 77:2080 | ACP | lo | 100157/1000000 | 68092089/679847810 | 412 | 77:2049, 77:62, 77:2051, 77:44, 77:49 |
| 77:2081 | HPR | lo | 49157/500000 | 42371451/430978000 | 445 | 77:52, 77:2067, 77:62, 77:150, 77:23 |
| 77:2082 | AEP | lo | 1534/15625 | 66744891/679847810 | 512 | 77:2052, 77:62, 77:2054, 77:44, 77:49 |
| 77:2083 | FQS | lo | 62391/500000 | 735360323/5893120000 | 531 | 77:2057, 77:2023, 77:2042, 77:178, 77:1944 |
| 77:2084 | AES | lo | 42967/250000 | 40313547/234560000 | 536 | 77:2057, 77:198, 77:70, 77:178, 77:219 |
| 77:2086 | CFH | lo | 140621/1000000 | 70310511/500000000 | 750 | 77:1883, 77:204, 77:98, 77:2066, 77:113 |
| 77:2087 | HRS | lo | 4781/50000 | 2227877/23299100 | 815 | 77:2062, 77:168, 77:126, 77:2066, 77:83 |
| 77:2089 | BES | lo | 4937/40000 | 37615059/304760000 | 916 | 77:2063, 77:198, 77:126, 77:186, 77:231 |
| 77:2090 | FHQ | lo | 138263/1000000 | 3260940375/23584897877 | 953 | 77:98, 77:2070, 77:2007, 77:204, 77:105 |
| 77:2091 | EHQ | lo | 227/2000 | 417995010/3682767397 | 1078 | 77:2015, 77:194, 77:134, 77:2068, 77:137 |
| 77:2094 | ACE | lo | 19761/125000 | 52644582066217/333007812500000 | 2248 | 77:2051, 77:39 |
| 77:2096 | CEH | lo | 83923/500000 | 57235749/341000000 | 2642 | 77:2066, 77:185 |
| 77:2097 | CEP | lo | 174303/1000000 | 7669333/44000000 | 2652 | 77:2067, 77:191 |
| 77:2100 | FPQ | lo | 3263/25000 | 4561500244259/34948624513000 | 2890 | 77:21, 77:150, 77:52, 77:2080, 77:2055, 77:144, 77:2090 |
| 77:2101 | FPS | lo | 153359/1000000 | 487245710637263/3177147683000000 | 2892 | 77:21, 77:150, 77:52, 77:2080, 77:2057, 77:2078, 77:1946 |
| 77:2105 | BEP | lo | 148351/1000000 | 32153317637/216737000000 | 3273 | 77:57, 77:2081, 77:62, 77:52, 77:2073, 77:2061, 77:1977 |
| 77:2106 | BPQ | lo | 150073/1000000 | 16263189/108368500 | 3277 | 77:57, 77:2081, 77:62, 77:52, 77:10, 77:1782, 77:2064 |
| 77:2108 | AES | hi | 441983/1000000 | 3578771137583866871/8097082230468750000 | 3535 | 77:95, 77:198, 77:126, 77:2089, 77:2073, 77:39 |
| 77:2109 | PRS | lo | 93467/1000000 | 48760551/521687000 | 3622 | 77:99, 77:200, 77:108, 77:100, 77:126, 77:218, 77:2087 |
| 77:2110 | ABS | lo | 162263/1000000 | 682412478943/4205593000000 | 3938 | 77:177, 77:218, 77:198, 77:178, 77:2073, 77:4, 77:2074 |
| 77:2111 | ACS | lo | 250079/1000000 | 131466374523/525699125000 | 3939 | 77:177, 77:218, 77:198, 77:178, 77:2094, 77:2049, 77:2051 |
| 77:2113 | AQS | lo | 47747/200000 | 251006315789/1051398250000 | 3944 | 77:177, 77:218, 77:198, 77:178, 77:2079, 77:2055, 77:2060 |
| 77:2115 | CHS | lo | 2019/10000 | 849110713253/4205593000000 | 3957 | 77:177, 77:218, 77:198, 77:178, 77:2096, 77:2086, 77:2066 |
| 77:2116 | CPS | lo | 88071/500000 | 740783989013/4205593000000 | 3958 | 77:177, 77:218, 77:198, 77:178, 77:2097, 77:2017, 77:2067 |
| 77:2117 | HPS | lo | 3767/40000 | 396062169/4205593000 | 3973 | 77:177, 77:218, 77:198, 77:178, 77:180, 77:200, 77:2081 |
| 77:2118 | HQS | lo | 174081/1000000 | 1464229631/8411186000 | 3974 | 77:177, 77:218, 77:198, 77:178, 77:2091, 77:2090, 77:2071 |
| 77:2120 | ACF | lo | 148049/500000 | 148049/500000 | 4243 | 77:44, 77:2080, 77:2017 |
| 77:2122 | ACR | lo | 436079/1000000 | 436079/1000000 | 4256 | 77:70, 77:2111, 77:168 |
| 77:2123 | AEF | lo | 359821/1000000 | 359821/1000000 | 4258 | 77:44, 77:2082, 77:2019 |
| 77:2125 | AER | lo | 89467/250000 | 89467/250000 | 4271 | 77:70, 77:2084, 77:198 |
| 77:2126 | AFQ | lo | 261/800 | 261/800 | 4276 | 77:44, 77:1999, 77:2100 |
| 77:2127 | AFS | lo | 340481/1000000 | 340481/1000000 | 4278 | 77:44, 77:1949, 77:2101 |
| 77:2130 | AQR | lo | 84947/200000 | 84947/200000 | 4291 | 77:70, 77:2113, 77:238 |
| 77:2131 | BEH | lo | 334351/1000000 | 334351/1000000 | 4318 | 77:108, 77:2105, 77:180 |
| 77:2132 | BER | lo | 12377/40000 | 12377/40000 | 4327 | 77:126, 77:2089, 77:198 |
| 77:2133 | BHQ | lo | 336073/1000000 | 336073/1000000 | 4338 | 77:108, 77:2106, 77:220 |
| 77:2134 | BHR | lo | 164081/500000 | 164081/500000 | 4339 | 77:108, 77:2076, 77:2081 |
| 77:2135 | BHS | lo | 38933/125000 | 38933/125000 | 4340 | 77:108, 77:2036, 77:2117 |
| 77:2136 | CFR | lo | 310261/1000000 | 310261/1000000 | 4372 | 77:168, 77:2078, 77:218 |
| 77:2137 | CHR | lo | 9763/25000 | 9763/25000 | 4378 | 77:168, 77:2115, 77:2087 |
| 77:2138 | CPR | lo | 362609/1000000 | 362609/1000000 | 4381 | 77:168, 77:2116, 77:2109 |
| 77:2139 | EHR | lo | 14081/50000 | 14081/50000 | 4398 | 77:198, 77:186, 77:2087 |
| 77:2140 | EPR | lo | 302093/1000000 | 302093/1000000 | 4401 | 77:198, 77:2018, 77:2109 |
| 77:2141 | FQR | lo | 155391/500000 | 155391/500000 | 4412 | 77:218, 77:2083, 77:238 |
| 77:2142 | HQR | lo | 362701/1000000 | 362701/1000000 | 4416 | 77:2087, 77:2118, 77:238 |
| 77:2144 | ABE | lo | 12619/125000 | 3232079375/32015999541 | 32 | 77:0, 77:2123, 77:4, 77:2094, 77:19 |
| 77:2145 | CFP | lo | 51471/500000 | 15414409000/149738539799 | 70 | 77:2120, 77:100, 77:44, 77:2003, 77:5 |
| 77:2146 | BPR | lo | 136849/1000000 | 22311167063/163034420544 | 191 | 77:2074, 77:2140, 77:62, 77:2132, 77:39 |
| 77:2148 | CFS | lo | 62131/500000 | 1373052/11049575 | 336 | 77:2111, 77:178, 77:2127, 77:138, 77:2108 |
| 77:2149 | AEQ | lo | 130293/1000000 | 479839080/3682767397 | 374 | 77:2094, 77:194, 77:2125, 77:134, 77:137 |
| 77:2150 | ACP | lo | 50079/500000 | 68092461/679847810 | 412 | 77:2120, 77:62, 77:2122, 77:44, 77:49 |
| 77:2151 | HPR | lo | 19663/200000 | 42371637/430978000 | 445 | 77:52, 77:2138, 77:62, 77:150, 77:23 |
| 77:2152 | FQS | lo | 124783/1000000 | 2206096151/17679320000 | 531 | 77:2127, 77:2023, 77:2113, 77:178, 77:2108 |
| 77:2154 | APQ | lo | 102731/1000000 | 13968321/135969562 | 617 | 77:44, 77:2130, 77:2126, 77:62, 77:49 |
| 77:2157 | CFH | lo | 140623/1000000 | 35155953/250000000 | 750 | 77:1883, 77:204, 77:98, 77:2137, 77:113 |
| 77:2158 | HRS | lo | 47811/500000 | 11139571/116495500 | 815 | 77:2134, 77:168, 77:126, 77:2137, 77:83 |
| 77:2160 | BFQ | lo | 37941/200000 | 94852511297/500000000000 | 952 | 77:98, 77:2064, 77:2075, 77:2133, 77:113 |
| 77:2161 | FHQ | lo | 17283/125000 | 13043842875/94339591508 | 953 | 77:98, 77:2141, 77:2160, 77:204, 77:105 |
| 77:2163 | EHQ | lo | 56751/500000 | 418003380/3682767397 | 1078 | 77:2096, 77:194, 77:134, 77:2139, 77:137 |
| 77:2166 | ACE | lo | 158089/1000000 | 210579776945797/1332031250000000 | 2248 | 77:2122, 77:39 |
| 77:2167 | CEF | lo | 182711/1000000 | 1869138540227/10230000000000 | 2617 | 77:2136, 77:177 |
| 77:2168 | CEH | lo | 167851/1000000 | 42927911/255750000 | 2642 | 77:2137, 77:185 |
| 77:2169 | EFP | lo | 84323/500000 | 5893952060115181/34948624513000000 | 2882 | 77:21, 77:150, 77:52, 77:2150, 77:2123, 77:2167, 77:1918 |
| 77:2170 | FPR | lo | 154889/1000000 | 5413164929709/34948624513000 | 2891 | 77:21, 77:150, 77:52, 77:2150, 77:2056, 77:2136, 77:204 |
| 77:2171 | FPS | lo | 1917/12500 | 2679868761467203/17474312256500000 | 2892 | 77:21, 77:150, 77:52, 77:2150, 77:2127, 77:2148, 77:1946 |
| 77:2176 | BEP | lo | 2318/15625 | 4019194703/27092125000 | 3273 | 77:57, 77:2151, 77:62, 77:52, 77:2144, 77:2131, 77:2132 |
| 77:2178 | ACS | lo | 1563/6250 | 1051737061777/4205593000000 | 3939 | 77:177, 77:218, 77:198, 77:178, 77:2166, 77:2120, 77:2122 |
| 77:2179 | AQS | lo | 14921/62500 | 143432914107/600799000000 | 3944 | 77:177, 77:218, 77:198, 77:178, 77:2149, 77:2126, 77:2130 |
| 77:2180 | CHS | lo | 12619/62500 | 849129354439/4205593000000 | 3957 | 77:177, 77:218, 77:198, 77:178, 77:2168, 77:2157, 77:2137 |
| 77:2181 | CPS | lo | 176143/1000000 | 370394097303/2102796500000 | 3958 | 77:177, 77:218, 77:198, 77:178, 77:2097, 77:2145, 77:2138 |
| 77:2182 | HQS | lo | 43521/250000 | 19266498597/110673500000 | 3974 | 77:177, 77:218, 77:198, 77:178, 77:2163, 77:2161, 77:2142 |
| 77:2185 | ACF | lo | 2961/10000 | 2961/10000 | 4243 | 77:44, 77:2150, 77:2145 |
| 77:2187 | ACR | lo | 5451/12500 | 5451/12500 | 4256 | 77:70, 77:2178, 77:168 |
| 77:2188 | AEF | lo | 179911/500000 | 179911/500000 | 4258 | 77:44, 77:2082, 77:2169 |
| 77:2190 | AFQ | lo | 326251/1000000 | 326251/1000000 | 4276 | 77:44, 77:2154, 77:2100 |
| 77:2191 | AFR | lo | 340889/1000000 | 340889/1000000 | 4277 | 77:44, 77:62, 77:2170 |
| 77:2192 | AFS | lo | 170241/500000 | 170241/500000 | 4278 | 77:44, 77:1949, 77:2171 |
| 77:2195 | AQR | lo | 13273/31250 | 13273/31250 | 4291 | 77:70, 77:2179, 77:238 |
| 77:2196 | BEH | lo | 20897/62500 | 20897/62500 | 4318 | 77:108, 77:2176, 77:180 |
| 77:2197 | BHR | lo | 82041/250000 | 82041/250000 | 4339 | 77:108, 77:2146, 77:2151 |
| 77:2199 | CHR | lo | 195263/500000 | 195263/500000 | 4378 | 77:168, 77:2180, 77:2158 |
| 77:2200 | CPR | lo | 36261/100000 | 36261/100000 | 4381 | 77:168, 77:2181, 77:2109 |
| 77:2201 | EHR | lo | 140811/500000 | 140811/500000 | 4398 | 77:198, 77:186, 77:2158 |
| 77:2202 | FQR | lo | 310783/1000000 | 310783/1000000 | 4412 | 77:218, 77:2152, 77:238 |
| 77:2203 | HQR | lo | 181353/500000 | 181353/500000 | 4416 | 77:2158, 77:2182, 77:238 |
| 77:2206 | CFS | lo | 124263/1000000 | 27461133/220991500 | 336 | 77:2178, 77:178, 77:2192, 77:138, 77:2108 |
| 77:2209 | CFH | lo | 9/64 | 70312743/500000000 | 750 | 77:1883, 77:204, 77:98, 77:2199, 77:113 |
| 77:2210 | HRS | lo | 95623/1000000 | 2227939/23299100 | 815 | 77:2197, 77:168, 77:126, 77:2199, 77:83 |
| 77:2211 | FHQ | lo | 27653/200000 | 6521938875/47169795754 | 953 | 77:98, 77:2202, 77:2160, 77:204, 77:105 |
| 77:2212 | EHQ | lo | 3547/31250 | 418009890/3682767397 | 1078 | 77:2168, 77:194, 77:134, 77:2201, 77:137 |
| 77:2214 | CEH | lo | 167853/1000000 | 858571411/5115000000 | 2642 | 77:2199, 77:185 |
| 77:2215 | CEP | lo | 5447/31250 | 23775129/136400000 | 2652 | 77:2200, 77:191 |
| 77:2216 | FPS | lo | 153361/1000000 | 5359767463658919/34948624513000000 | 2892 | 77:21, 77:150, 77:52, 77:2150, 77:2192, 77:2206, 77:1946 |
| 77:2218 | ACS | lo | 250081/1000000 | 1051739851777/4205593000000 | 3939 | 77:177, 77:218, 77:198, 77:178, 77:2166, 77:2185, 77:2187 |
| 77:2219 | AQS | lo | 238737/1000000 | 1004032258749/4205593000000 | 3944 | 77:177, 77:218, 77:198, 77:178, 77:2149, 77:2190, 77:2195 |
| 77:2221 | CHS | lo | 201907/1000000 | 1358626377/6728948800 | 3957 | 77:177, 77:218, 77:198, 77:178, 77:2214, 77:2209, 77:2199 |
| 77:2222 | CPS | lo | 11009/62500 | 52913575329/300399500000 | 3958 | 77:177, 77:218, 77:198, 77:178, 77:2215, 77:2145, 77:2200 |
| 77:2223 | HQS | lo | 87043/500000 | 45758576117/262849562500 | 3974 | 77:177, 77:218, 77:198, 77:178, 77:2212, 77:2211, 77:2203 |
| 77:2224 | ACR | lo | 436081/1000000 | 436081/1000000 | 4256 | 77:70, 77:2218, 77:168 |
| 77:2225 | AFS | lo | 340483/1000000 | 340483/1000000 | 4278 | 77:44, 77:1949, 77:2216 |
| 77:2226 | AQR | lo | 424737/1000000 | 424737/1000000 | 4291 | 77:70, 77:2219, 77:238 |
| 77:2228 | CHR | lo | 39053/100000 | 39053/100000 | 4378 | 77:168, 77:2221, 77:2210 |
| 77:2229 | CPR | lo | 362611/1000000 | 362611/1000000 | 4381 | 77:168, 77:2222, 77:2109 |
| 77:2230 | EHR | lo | 281623/1000000 | 281623/1000000 | 4398 | 77:198, 77:186, 77:2210 |
| 77:2232 | HQR | lo | 362709/1000000 | 362709/1000000 | 4416 | 77:2210, 77:2223, 77:238 |
| 77:2233 | AES | lo | 17187/100000 | 40313919/234560000 | 536 | 77:2225, 77:198, 77:70, 77:178, 77:219 |
| 77:2234 | CFH | lo | 70313/500000 | 70313301/500000000 | 750 | 77:1883, 77:204, 77:98, 77:2228, 77:113 |
| 77:2235 | EHQ | lo | 22701/200000 | 418012680/3682767397 | 1078 | 77:2214, 77:194, 77:134, 77:2230, 77:137 |
| 77:2236 | CEH | lo | 33571/200000 | 171716041/1023000000 | 2642 | 77:2228, 77:185 |
| 77:2239 | CHS | lo | 201909/1000000 | 424574705609/2102796500000 | 3957 | 77:177, 77:218, 77:198, 77:178, 77:2236, 77:2234, 77:2228 |
| 77:2240 | HQS | lo | 174087/1000000 | 146428470693/841118600000 | 3974 | 77:177, 77:218, 77:198, 77:178, 77:2235, 77:2211, 77:2232 |
| 77:2241 | AER | lo | 35787/100000 | 35787/100000 | 4271 | 77:70, 77:2233, 77:198 |
| 77:2242 | CHR | lo | 97633/250000 | 97633/250000 | 4378 | 77:168, 77:2239, 77:2210 |
| 77:2244 | HQR | lo | 36271/100000 | 36271/100000 | 4416 | 77:2210, 77:2240, 77:238 |
| 77:2246 | CFH | lo | 140627/1000000 | 3515679/25000000 | 750 | 77:1883, 77:204, 77:98, 77:2242, 77:113 |
| 77:2247 | HRS | lo | 11953/125000 | 253177/2647625 | 815 | 77:2197, 77:168, 77:126, 77:2242, 77:83 |
| 77:2248 | CEH | lo | 10491/62500 | 429292301/2557500000 | 2642 | 77:2242, 77:185 |
| 77:2250 | CHS | lo | 20191/100000 | 44692344569/221347000000 | 3957 | 77:177, 77:218, 77:198, 77:178, 77:2248, 77:2246, 77:2242 |
| 77:2251 | HQS | lo | 21761/125000 | 146428656693/841118600000 | 3974 | 77:177, 77:218, 77:198, 77:178, 77:2235, 77:2211, 77:2244 |
| 77:2252 | CHR | lo | 195267/500000 | 195267/500000 | 4378 | 77:168, 77:2250, 77:2247 |
| 77:2253 | EHR | lo | 35203/125000 | 35203/125000 | 4398 | 77:198, 77:186, 77:2247 |
| 77:2254 | HQR | lo | 45339/125000 | 45339/125000 | 4416 | 77:2247, 77:2251, 77:238 |
| 77:2255 | EHQ | lo | 56753/500000 | 418016400/3682767397 | 1078 | 77:2248, 77:194, 77:134, 77:2253, 77:137 |
| 77:2256 | CEH | lo | 167857/1000000 | 286196333/1705000000 | 2642 | 77:2252, 77:185 |
| 77:2257 | CHS | lo | 201911/1000000 | 121308190973/600799000000 | 3957 | 77:177, 77:218, 77:198, 77:178, 77:2256, 77:2246, 77:2252 |
| 77:2258 | HQS | lo | 174089/1000000 | 366073744529/2102796500000 | 3974 | 77:177, 77:218, 77:198, 77:178, 77:2255, 77:2211, 77:2254 |
| 77:2259 | CHR | lo | 78107/200000 | 78107/200000 | 4378 | 77:168, 77:2257, 77:2247 |
| 77:2260 | HQR | lo | 362713/1000000 | 362713/1000000 | 4416 | 77:2247, 77:2258, 77:238 |

## Stage 78

| Property | Value |
| --- | --- |
| Scope | root/ACP+/HBP+/AEP+/AFP-/APR-/ARS-/BRS-/BFP+/CRS+ |
| Packet | forest:root/ACP+/HBP+/AEP+/AFP-/APR-/ARS-/BRS-/BFP+/CRS+ |
| Index | 1 |
| Context | 27 |
| Box present | yes |
| Coarse version | 2 |
| Parent box | 77 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 33263/250000 | 580331/1000000 | 33263/250000 | 277659/500000 |
| b | 13409/125000 | 349/1000 | 13409/125000 | 349/1000 |
| c | 135501/250000 | 161249/200000 | 135501/250000 | 161249/200000 |
| e | 4167/10000 | 306519/500000 | 4167/10000 | 306519/500000 |
| f | 279/1000 | 521687/1000000 | 279/1000 | 521687/1000000 |
| h | 672257/1000000 | 1/1 | 672257/1000000 | 1/1 |
| p | 24309/200000 | 76547/200000 | 24309/200000 | 76547/200000 |
| q | 161507/500000 | 733897/1000000 | 64669/200000 | 733897/1000000 |
| u | 793109/1000000 | 1/1 | 793109/1000000 | 1/1 |
| v | 33263/250000 | 20499/50000 | 33263/250000 | 20499/50000 |
| r | 757313/1000000 | 1/1 | 757313/1000000 | 1/1 |
| w | 401831/500000 | 1/1 | 401831/500000 | 1/1 |
| j | 638837/1000000 | 840563/1000000 | 638837/1000000 | 840563/1000000 |
| k | 337337/500000 | 871013/1000000 | 337337/500000 | 871013/1000000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 947 | AREA_lo_AFS | brtt ["earlier-area",{"direction":"lo","ref":"77:2225","triangle":"AFS","value":"340483/1000000"}] | `-1/1 * f * k + 1/1 * a * f + 1/1 * j + -1/1 * a * j + -340483/1000000` |
| 959 | AREA_lo_APS | brtt ["earlier-area",{"direction":"lo","ref":"77:1949","triangle":"APS","value":"47061/500000"}] | `-1/1 * p * k + 1/1 * a * p + 1/1 * q * j + -1/1 * a * j + -47061/500000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 947 | a | 33263/250000 | 580331/1000000 | 33263/250000 | 155922977/280781500 | 33263/250000 | 277659/500000 | `(-359837/1000000, 55059977/500000000); (-2343/20000, -26807327519/500000000000); (-561563/1000000, 155922977/500000000); (-79719/250000, 74055672481/500000000000); (-359837/1000000, 55341373/1000000000); (-2343/20000, -156042158931/1000000000000); (-561563/1000000, 257067373/1000000000); (-79719/250000, 45683841069/1000000000000)` |
| 1 | 959 | q | 161507/500000 | 733897/1000000 | 135896017133/420281500000 | 733897/1000000 | 64669/200000 | 733897/1000000 | `(638837/1000000, -122475993257/500000000000); (638837/1000000, -231693405093/500000000000); (638837/1000000, -193209118347/500000000000); (638837/1000000, -247280701913/500000000000); (840563/1000000, -135896017133/500000000000); (840563/1000000, -287704444527/500000000000); (840563/1000000, -206629142223/500000000000); (840563/1000000, -303291741347/500000000000); (638837/1000000, -268816010269/1000000000000); (638837/1000000, -487250833941/1000000000000); (638837/1000000, -461564043859/1000000000000); (638837/1000000, -569707210991/1000000000000); (840563/1000000, -295656058021/1000000000000); (840563/1000000, -599272912809/1000000000000); (840563/1000000, -488404091611/1000000000000); (840563/1000000, -681729289859/1000000000000)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 78:0 | ABC | lo | 93/1000 | occupants none |
| 78:4 | ABF | lo | 279/1000 | occupants P |
| 78:5 | ABF | hi | 222448099733/500000000000 | vertex maximum 222448099733/500000000000 |
| 78:8 | ABP | lo | 93/1000 | occupants none |
| 78:10 | ABQ | lo | 93/1000 | occupants none |
| 78:12 | ABR | lo | 50041/250000 | earlier 77:2074; ABR; lo; 50041/250000 |
| 78:14 | ABS | lo | 162263/1000000 | earlier 77:2110; ABS; lo; 162263/1000000 |
| 78:16 | ACE | lo | 158089/1000000 | earlier 77:2166; ACE; lo; 158089/1000000 |
| 78:18 | ACF | lo | 2961/10000 | earlier 77:2185; ACF; lo; 2961/10000 |
| 78:19 | ACF | hi | 96047998623/125000000000 | vertex maximum 96047998623/125000000000 |
| 78:21 | ACH | hi | 34948624513/50000000000 | vertex maximum 34948624513/50000000000 |
| 78:22 | ACP | lo | 50079/500000 | earlier 77:2150; ACP; lo; 50079/500000 |
| 78:26 | ACR | lo | 436081/1000000 | earlier 77:2224; ACR; lo; 436081/1000000 |
| 78:27 | ACR | hi | 91384063909/100000000000 | vertex maximum 91384063909/100000000000 |
| 78:28 | ACS | lo | 250081/1000000 | earlier 77:2218; ACS; lo; 250081/1000000 |
| 78:30 | AEF | lo | 179911/500000 | earlier 77:2188; AEF; lo; 179911/500000 |
| 78:31 | AEF | hi | 24619069/31250000 | vertex maximum 24619069/31250000 |
| 78:34 | AEP | lo | 1534/15625 | earlier 77:2082; AEP; lo; 1534/15625 |
| 78:36 | AEQ | lo | 130293/1000000 | earlier 77:2149; AEQ; lo; 130293/1000000 |
| 78:37 | AEQ | hi | 239993/500000 | vertex maximum 239993/500000 |
| 78:38 | AER | lo | 35787/100000 | earlier 77:2241; AER; lo; 35787/100000 |
| 78:39 | AER | hi | 2547412821/3906250000 | vertex maximum 2547412821/3906250000 |
| 78:40 | AES | lo | 17187/100000 | earlier 77:2233; AES; lo; 17187/100000 |
| 78:41 | AES | hi | 441983/1000000 | earlier 77:2108; AES; hi; 441983/1000000 |
| 78:44 | AFP | lo | 93/1000 | occupants none |
| 78:46 | AFQ | lo | 326251/1000000 | earlier 77:2190; AFQ; lo; 326251/1000000 |
| 78:48 | AFR | lo | 340889/1000000 | earlier 77:2191; AFR; lo; 340889/1000000 |
| 78:49 | AFR | hi | 67984781/100000000 | vertex maximum 67984781/100000000 |
| 78:50 | AFS | lo | 340483/1000000 | earlier 77:2225; AFS; lo; 340483/1000000 |
| 78:51 | AFS | hi | 144402968431/250000000000 | vertex maximum 144402968431/250000000000 |
| 78:52 | AHP | lo | 93/1000 | occupants none |
| 78:57 | AHR | hi | 216737/250000 | vertex maximum 216737/250000 |
| 78:59 | AHS | hi | 182181/250000 | earlier 77:59; AHS; hi; 182181/250000 |
| 78:60 | APQ | lo | 102731/1000000 | earlier 77:2154; APQ; lo; 102731/1000000 |
| 78:62 | APR | lo | 93/1000 | occupants none |
| 78:64 | APS | lo | 47061/500000 | earlier 77:1949; APS; lo; 47061/500000 |
| 78:66 | AQR | lo | 424737/1000000 | earlier 77:2226; AQR; lo; 424737/1000000 |
| 78:68 | AQS | lo | 238737/1000000 | earlier 77:2219; AQS; lo; 238737/1000000 |
| 78:69 | AQS | hi | 305751/500000 | earlier 77:275; AQS; hi; 305751/500000 |
| 78:70 | ARS | lo | 93/1000 | occupants none |
| 78:72 | BCE | lo | 164303/1000000 | earlier 77:1927; BCE; lo; 164303/1000000 |
| 78:74 | BCF | lo | 201141/1000000 | earlier 77:2003; BCF; lo; 201141/1000000 |
| 78:75 | BCF | hi | 698973/1000000 | vertex maximum 698973/1000000 |
| 78:76 | BCH | lo | 85131/250000 | earlier 77:1883; BCH; lo; 85131/250000 |
| 78:82 | BCR | lo | 6547/15625 | earlier 77:1975; BCR; lo; 6547/15625 |
| 78:83 | BCR | hi | 698973/1000000 | vertex maximum 698973/1000000 |
| 78:84 | BCS | lo | 14563/62500 | earlier 77:1959; BCS; lo; 14563/62500 |
| 78:85 | BCS | hi | 512973/1000000 | earlier 77:242; BCS; hi; 512973/1000000 |
| 78:88 | BEH | lo | 20897/62500 | earlier 77:2196; BEH; lo; 20897/62500 |
| 78:94 | BER | lo | 12377/40000 | earlier 77:2132; BER; lo; 12377/40000 |
| 78:95 | BER | hi | 6218559153/10000000000 | vertex maximum 6218559153/10000000000 |
| 78:96 | BES | lo | 4937/40000 | earlier 77:2089; BES; lo; 4937/40000 |
| 78:97 | BES | hi | 434517/1000000 | earlier 77:1632; BES; hi; 434517/1000000 |
| 78:98 | BFH | lo | 279/1000 | occupants P |
| 78:99 | BFH | hi | 521687/1000000 | vertex maximum 521687/1000000 |
| 78:100 | BFP | lo | 93/1000 | occupants none |
| 78:102 | BFQ | lo | 37941/200000 | earlier 77:2160; BFQ; lo; 37941/200000 |
| 78:105 | BFR | hi | 23584897877/31250000000 | vertex maximum 23584897877/31250000000 |
| 78:108 | BHP | lo | 93/1000 | occupants none |
| 78:110 | BHQ | lo | 336073/1000000 | earlier 77:2133; BHQ; lo; 336073/1000000 |
| 78:113 | BHR | hi | 1/1 | vertex maximum 1/1 |
| 78:114 | BHS | lo | 38933/125000 | earlier 77:2135; BHS; lo; 38933/125000 |
| 78:122 | BQR | lo | 95491/250000 | earlier 77:2064; BQR; lo; 95491/250000 |
| 78:123 | BQR | hi | 201559686217/250000000000 | vertex maximum 201559686217/250000000000 |
| 78:125 | BQS | hi | 579321/1000000 | earlier 77:276; BQS; hi; 579321/1000000 |
| 78:126 | BRS | lo | 93/1000 | occupants none |
| 78:130 | CEH | lo | 167857/1000000 | earlier 77:2256; CEH; lo; 167857/1000000 |
| 78:132 | CEP | lo | 5447/31250 | earlier 77:2215; CEP; lo; 5447/31250 |
| 78:134 | CEQ | lo | 93/1000 | occupants none |
| 78:137 | CER | hi | 3682767397/10000000000 | vertex maximum 3682767397/10000000000 |
| 78:138 | CES | lo | 93/1000 | occupants none |
| 78:139 | CES | hi | 35141/100000 | earlier 77:1849; CES; hi; 35141/100000 |
| 78:144 | CFQ | lo | 93/1000 | occupants none |
| 78:150 | CHP | lo | 93/1000 | occupants none |
| 78:154 | CHR | lo | 78107/200000 | earlier 77:2259; CHR; lo; 78107/200000 |
| 78:156 | CHS | lo | 201911/1000000 | earlier 77:2257; CHS; lo; 201911/1000000 |
| 78:160 | CPR | lo | 362611/1000000 | earlier 77:2229; CPR; lo; 362611/1000000 |
| 78:168 | CRS | lo | 93/1000 | occupants none |
| 78:170 | EFH | lo | 131437/1000000 | earlier 77:1918; EFH; lo; 131437/1000000 |
| 78:175 | EFQ | hi | 213064430571/500000000000 | vertex maximum 213064430571/500000000000 |
| 78:176 | EFR | lo | 279/1000 | occupants S |
| 78:177 | EFR | hi | 4205593/10000000 | vertex maximum 4205593/10000000 |
| 78:178 | EFS | lo | 93/1000 | occupants none |
| 78:180 | EHP | lo | 93/1000 | occupants none |
| 78:182 | EHQ | lo | 56753/500000 | earlier 77:2255; EHQ; lo; 56753/500000 |
| 78:185 | EHR | hi | 5833/10000 | vertex maximum 5833/10000 |
| 78:186 | EHS | lo | 93/1000 | occupants none |
| 78:191 | EPR | hi | 17/32 | earlier 77:191; EPR; hi; 17/32 |
| 78:194 | EQR | lo | 93/1000 | occupants none |
| 78:198 | ERS | lo | 93/1000 | occupants none |
| 78:200 | FHP | lo | 93/1000 | occupants none |
| 78:202 | FHQ | lo | 27653/200000 | earlier 77:2211; FHQ; lo; 27653/200000 |
| 78:204 | FHR | lo | 93/1000 | occupants none |
| 78:206 | FHS | lo | 25313/200000 | earlier 77:1946; FHS; lo; 25313/200000 |
| 78:211 | FPR | hi | 61731/125000 | earlier 77:211; FPR; hi; 61731/125000 |
| 78:218 | FRS | lo | 93/1000 | occupants none |
| 78:219 | FRS | hi | 733/3125 | earlier 77:219; FRS; hi; 733/3125 |
| 78:220 | HPQ | lo | 93/1000 | occupants none |
| 78:223 | HPR | hi | 308519/500000 | earlier 77:223; HPR; hi; 308519/500000 |
| 78:226 | HQR | lo | 362713/1000000 | earlier 77:2260; HQR; lo; 362713/1000000 |
| 78:231 | HRS | hi | 7619/25000 | earlier 77:231; HRS; hi; 7619/25000 |
| 78:233 | PQR | hi | 357633/500000 | earlier 77:233; PQR; hi; 357633/500000 |
| 78:236 | PRS | lo | 93467/1000000 | earlier 77:2109; PRS; lo; 93467/1000000 |
| 78:238 | QRS | lo | 93/1000 | occupants none |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 32 | plu | ABE * ACF = ABC * AEF + ABF * ACE | circuit ABCEF |
| 70 | plu | ABF * CFP = ACF * BFP + AFP * BCF | circuit FABCP |
| 78 | plu | ABR * BCF = ABC * BFR + ABF * BCR | circuit BACFR |
| 156 | plu | AER * BFR = ABR * EFR + AFR * BER | circuit RABEF |
| 191 | plu | AER * BPR = ABR * EPR + APR * BER | circuit RABEP |
| 261 | plu | ARS * BFS = ABS * FRS + AFS * BRS | circuit SABFR |
| 336 | plu | AES * CFS = ACS * EFS + AFS * CES | circuit SACEF |
| 374 | plu | AEQ * CER = ACE * EQR + AER * CEQ | circuit EACQR |
| 412 | plu | ACP * AFR = ACF * APR + ACR * AFP | circuit ACFPR |
| 445 | plu | ACP * HPR = AHP * CPR + APR * CHP | circuit PACHR |
| 512 | plu | AEP * AFR = AEF * APR + AER * AFP | circuit AEFPR |
| 531 | plu | AES * FQS = AFS * EQS + AQS * EFS | circuit SAEFQ |
| 536 | plu | AES * FRS = AFS * ERS + ARS * EFS | circuit SAEFR |
| 617 | plu | AFR * APQ = AFP * AQR + AFQ * APR | circuit AFPQR |
| 724 | plu | BEQ * CER = BCE * EQR + BER * CEQ | circuit EBCQR |
| 747 | plu | BCF * BHR = BCH * BFR + BCR * BFH | circuit BCFHR |
| 750 | plu | BHR * CFH = BCH * FHR + BFH * CHR | circuit HBCFR |
| 815 | plu | BCR * HRS = BHR * CRS + BRS * CHR | circuit RBCHS |
| 848 | plu | BEF * EHR = BEH * EFR + BER * EFH | circuit EBFHR |
| 849 | plu | BFR * EFH = BEF * FHR + BFH * EFR | circuit FBEHR |
| 916 | plu | BES * HRS = BHS * ERS + BRS * EHS | circuit SBEHR |
| 952 | plu | BFQ * BHR = BFH * BQR + BFR * BHQ | circuit BFHQR |
| 953 | plu | BFR * FHQ = BFH * FQR + BFQ * FHR | circuit FBHQR |
| 1078 | plu | CER * EHQ = CEH * EQR + CEQ * EHR | circuit ECHQR |
| 2248 | support | ACR * AER >= 1023/1000 * (ACR - ACE) | pentagon ACQER |
| 2617 | support | CFR * EFR >= 1023/1000 * (CFR - CEF) | pentagon FCQER |
| 2642 | support | CHR * EHR >= 1023/1000 * (CHR - CEH) | pentagon HCQER |
| 2652 | support | CPR * EPR >= 1023/1000 * (CPR - CEP) | pentagon PCQER |
| 2769 | bary | outer ABF; fans BFP, AFP, ABP; target ACP; sign 1; vertices none 0; ABC -1; ACF 1 | container ABF; inner P; line AC |
| 2786 | bary | outer ABF; fans BFP, AFP, ABP; target CFP; sign 1; vertices ACF 1; BCF 1; none 0 | container ABF; inner P; line CF |
| 2797 | bary | outer ABF; fans BFP, AFP, ABP; target EPS; sign 1; vertices AES 1; BES 1; EFS 1 | container ABF; inner P; line ES |
| 2882 | bary | outer ACH; fans CHP, AHP, ACP; target EFP; sign 1; vertices AEF 1; CEF 1; EFH 1 | container ACH; inner P; line EF |
| 2890 | bary | outer ACH; fans CHP, AHP, ACP; target FPQ; sign -1; vertices AFQ -1; CFQ -1; FHQ -1 | container ACH; inner P; line FQ |
| 2891 | bary | outer ACH; fans CHP, AHP, ACP; target FPR; sign -1; vertices AFR -1; CFR -1; FHR -1 | container ACH; inner P; line FR |
| 2892 | bary | outer ACH; fans CHP, AHP, ACP; target FPS; sign -1; vertices AFS -1; CFS -1; FHS -1 | container ACH; inner P; line FS |
| 2930 | bary | outer ACR; fans CRS, ARS, ACS; target EQS; sign -1; vertices AEQ -1; CEQ -1; EQR -1 | container ACR; inner S; line EQ |
| 2975 | bary | outer AEF; fans EFP, AFP, AEP; target EPQ; sign -1; vertices AEQ -1; none 0; EFQ -1 | container AEF; inner P; line EQ |
| 3191 | bary | outer AFS; fans FPS, APS, AFP; target CFP; sign 1; vertices ACF 1; none 0; CFS -1 | container AFS; inner P; line CF |
| 3273 | bary | outer AHR; fans HPR, APR, AHP; target BEP; sign 1; vertices ABE 1; BEH 1; BER 1 | container AHR; inner P; line BE |
| 3277 | bary | outer AHR; fans HPR, APR, AHP; target BPQ; sign 1; vertices ABQ 1; BHQ 1; BQR 1 | container AHR; inner P; line BQ |
| 3279 | bary | outer AHR; fans HPR, APR, AHP; target BPS; sign 1; vertices ABS 1; BHS 1; BRS 1 | container AHR; inner P; line BS |
| 3535 | bary | outer BER; fans ERS, BRS, BES; target AES; sign 1; vertices ABE -1; none 0; AER 1 | container BER; inner S; line AE |
| 3563 | bary | outer BER; fans ERS, BRS, BES; target FHS; sign 1; vertices BFH 1; EFH 1; FHR 1 | container BER; inner S; line FH |
| 3622 | bary | outer BFH; fans FHP, BHP, BFP; target PRS; sign -1; vertices BRS -1; FRS -1; HRS -1 | container BFH; inner P; line RS |
| 3763 | bary | outer BQR; fans QRS, BRS, BQS; target APS; sign -1; vertices ABP -1; APQ -1; APR -1 | container BQR; inner S; line AP |
| 3938 | bary | outer EFR; fans FRS, ERS, EFS; target ABS; sign 1; vertices ABE 1; ABF 1; ABR 1 | container EFR; inner S; line AB |
| 3939 | bary | outer EFR; fans FRS, ERS, EFS; target ACS; sign 1; vertices ACE 1; ACF 1; ACR 1 | container EFR; inner S; line AC |
| 3944 | bary | outer EFR; fans FRS, ERS, EFS; target AQS; sign 1; vertices AEQ 1; AFQ 1; AQR 1 | container EFR; inner S; line AQ |
| 3945 | bary | outer EFR; fans FRS, ERS, EFS; target ARS; sign -1; vertices AER -1; AFR 1; none 0 | container EFR; inner S; line AR |
| 3957 | bary | outer EFR; fans FRS, ERS, EFS; target CHS; sign -1; vertices CEH -1; CFH -1; CHR -1 | container EFR; inner S; line CH |
| 3958 | bary | outer EFR; fans FRS, ERS, EFS; target CPS; sign -1; vertices CEP -1; CFP -1; CPR -1 | container EFR; inner S; line CP |
| 3973 | bary | outer EFR; fans FRS, ERS, EFS; target HPS; sign 1; vertices EHP 1; FHP 1; HPR 1 | container EFR; inner S; line HP |
| 3974 | bary | outer EFR; fans FRS, ERS, EFS; target HQS; sign 1; vertices EHQ 1; FHQ 1; HQR 1 | container EFR; inner S; line HQ |
| 3997 | bary | outer EHR; fans HRS, ERS, EHS; target BQS; sign 1; vertices BEQ 1; BHQ 1; BQR 1 | container EHR; inner S; line BQ |
| 4243 | four | 1 * ACF + -1 * AFP + -1 * ACP + -1 * CFP = 0 | vertices ACFP |
| 4256 | four | 1 * ACR + -1 * ARS + -1 * ACS + -1 * CRS = 0 | vertices ACRS |
| 4258 | four | 1 * AEF + -1 * AFP + -1 * AEP + -1 * EFP = 0 | vertices AEFP |
| 4271 | four | 1 * AER + -1 * ARS + -1 * AES + -1 * ERS = 0 | vertices AERS |
| 4276 | four | -1 * AFP + -1 * APQ + 1 * AFQ + -1 * FPQ = 0 | vertices AFPQ |
| 4277 | four | -1 * AFP + -1 * APR + 1 * AFR + -1 * FPR = 0 | vertices AFPR |
| 4278 | four | -1 * AFP + -1 * APS + 1 * AFS + -1 * FPS = 0 | vertices AFPS |
| 4282 | four | -1 * AHP + -1 * APQ + 1 * AHQ + -1 * HPQ = 0 | vertices AHPQ |
| 4291 | four | 1 * AQR + -1 * ARS + -1 * AQS + -1 * QRS = 0 | vertices AQRS |
| 4318 | four | 1 * BEH + -1 * BHP + -1 * BEP + -1 * EHP = 0 | vertices BEHP |
| 4327 | four | 1 * BER + -1 * BRS + -1 * BES + -1 * ERS = 0 | vertices BERS |
| 4338 | four | -1 * BHP + -1 * BPQ + 1 * BHQ + -1 * HPQ = 0 | vertices BHPQ |
| 4339 | four | -1 * BHP + -1 * BPR + 1 * BHR + -1 * HPR = 0 | vertices BHPR |
| 4340 | four | -1 * BHP + -1 * BPS + 1 * BHS + -1 * HPS = 0 | vertices BHPS |
| 4347 | four | 1 * BQR + -1 * BRS + -1 * BQS + -1 * QRS = 0 | vertices BQRS |
| 4372 | four | -1 * CFR + 1 * CRS + 1 * CFS + 1 * FRS = 0 | vertices CFRS |
| 4378 | four | -1 * CHR + 1 * CRS + 1 * CHS + 1 * HRS = 0 | vertices CHRS |
| 4381 | four | -1 * CPR + 1 * CRS + 1 * CPS + 1 * PRS = 0 | vertices CPRS |
| 4398 | four | -1 * EHR + 1 * ERS + 1 * EHS + 1 * HRS = 0 | vertices EHRS |
| 4401 | four | -1 * EPR + 1 * ERS + 1 * EPS + 1 * PRS = 0 | vertices EPRS |
| 4412 | four | 1 * FQR + -1 * FRS + -1 * FQS + -1 * QRS = 0 | vertices FQRS |
| 4416 | four | 1 * HQR + -1 * HRS + -1 * HQS + -1 * QRS = 0 | vertices HQRS |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 78:243 | CFP | lo | 51971/500000 | 23121706500/222448099733 | 70 | 78:18, 78:100, 78:44, 78:74, 78:5 |
| 78:244 | ACP | hi | 213851/500000 | 11892668404905150667659/27806012466625000000000 | 2769 | 78:5, 78:100, 78:44, 78:8, 78:0, 78:19 |
| 78:256 | EPS | lo | 57923/500000 | 25769890775169/222448099733000 | 2797 | 78:5, 78:100, 78:44, 78:8, 78:40, 78:96, 78:178 |
| 78:258 | EQS | lo | 19359/200000 | 8845542843537/91384063909000 | 2930 | 78:27, 78:168, 78:70, 78:28, 78:36, 78:134, 78:194 |
| 78:264 | CPS | lo | 176701/1000000 | 371568288803/2102796500000 | 3958 | 78:177, 78:218, 78:198, 78:178, 78:132, 78:243, 78:160 |
| 78:265 | ACF | lo | 2971/10000 | 2971/10000 | 4243 | 78:44, 78:22, 78:243 |
| 78:266 | CPR | lo | 11349/31250 | 11349/31250 | 4381 | 78:168, 78:264, 78:236 |
| 78:267 | EPR | lo | 302313/1000000 | 302313/1000000 | 4401 | 78:198, 78:256, 78:236 |
| 78:268 | CFP | lo | 104151/1000000 | 23168206500/222448099733 | 70 | 78:265, 78:100, 78:44, 78:74, 78:5 |
| 78:269 | BPR | lo | 34229/250000 | 2480241787/18114935616 | 191 | 78:12, 78:267, 78:62, 78:94, 78:39 |
| 78:270 | ACP | lo | 20059/200000 | 68185833/679847810 | 412 | 78:265, 78:62, 78:26, 78:44, 78:49 |
| 78:271 | HPR | lo | 99189/1000000 | 5302953/53462750 | 445 | 78:52, 78:266, 78:62, 78:150, 78:244 |
| 78:272 | FQS | lo | 78/625 | 11031918597/88396600000 | 531 | 78:50, 78:258, 78:68, 78:178, 78:41 |
| 78:275 | CEP | lo | 43643/250000 | 7441161/42625000 | 2652 | 78:266, 78:191 |
| 78:278 | FPQ | lo | 130529/1000000 | 4561831888459/34948624513000 | 2890 | 78:21, 78:150, 78:52, 78:270, 78:46, 78:144, 78:202 |
| 78:281 | BPS | lo | 124359/1000000 | 107813443707/866948000000 | 3279 | 78:57, 78:271, 78:62, 78:52, 78:14, 78:114, 78:126 |
| 78:283 | ACS | lo | 125151/500000 | 1052670781777/4205593000000 | 3939 | 78:177, 78:218, 78:198, 78:178, 78:16, 78:265, 78:26 |
| 78:284 | CPS | lo | 177/1000 | 744394056543/4205593000000 | 3958 | 78:177, 78:218, 78:198, 78:178, 78:275, 78:268, 78:266 |
| 78:285 | HPS | lo | 2949/31250 | 396875919/4205593000 | 3973 | 78:177, 78:218, 78:198, 78:178, 78:180, 78:200, 78:271 |
| 78:287 | ACF | lo | 148723/500000 | 148723/500000 | 4243 | 78:44, 78:270, 78:268 |
| 78:289 | ACR | lo | 218151/500000 | 218151/500000 | 4256 | 78:70, 78:283, 78:168 |
| 78:290 | AFQ | lo | 16313/50000 | 16313/50000 | 4276 | 78:44, 78:60, 78:278 |
| 78:293 | BHR | lo | 65821/200000 | 65821/200000 | 4339 | 78:108, 78:269, 78:271 |
| 78:294 | BHS | lo | 311727/1000000 | 311727/1000000 | 4340 | 78:108, 78:281, 78:285 |
| 78:295 | CPR | lo | 363467/1000000 | 363467/1000000 | 4381 | 78:168, 78:284, 78:236 |
| 78:296 | FQR | lo | 777/2500 | 777/2500 | 4412 | 78:218, 78:272, 78:238 |
| 78:298 | CFP | lo | 104223/1000000 | 23184295500/222448099733 | 70 | 78:287, 78:100, 78:44, 78:74, 78:5 |
| 78:299 | CFS | lo | 12431/100000 | 10988601/88396600 | 336 | 78:283, 78:178, 78:50, 78:138, 78:41 |
| 78:300 | ACP | lo | 100373/1000000 | 34119282/339923905 | 412 | 78:287, 78:62, 78:289, 78:44, 78:49 |
| 78:301 | HPR | lo | 49627/500000 | 3859221/38882000 | 445 | 78:52, 78:295, 78:62, 78:150, 78:244 |
| 78:302 | APQ | lo | 25683/250000 | 69842721/679847810 | 617 | 78:44, 78:66, 78:290, 78:62, 78:49 |
| 78:304 | HRS | lo | 95749/1000000 | 557721/5824775 | 815 | 78:293, 78:168, 78:126, 78:154, 78:83 |
| 78:305 | BES | lo | 24701/200000 | 37639611/304760000 | 916 | 78:294, 78:198, 78:126, 78:186, 78:231 |
| 78:306 | FHQ | lo | 138271/1000000 | 13044470625/94339591508 | 953 | 78:98, 78:296, 78:102, 78:204, 78:105 |
| 78:309 | ACE | lo | 15817/100000 | 105343731114093/666015625000000 | 2248 | 78:289, 78:39 |
| 78:310 | CEP | lo | 43679/250000 | 714939589/4092000000 | 2652 | 78:295, 78:191 |
| 78:311 | EPS | lo | 115863/1000000 | 25773610775169/222448099733000 | 2797 | 78:5, 78:100, 78:44, 78:8, 78:40, 78:305, 78:178 |
| 78:313 | FPQ | lo | 16317/125000 | 4562080383859/34948624513000 | 2890 | 78:21, 78:150, 78:52, 78:300, 78:290, 78:144, 78:306 |
| 78:314 | FPS | lo | 38349/250000 | 536098501896103/3494862451300000 | 2892 | 78:21, 78:150, 78:52, 78:300, 78:50, 78:299, 78:206 |
| 78:318 | BPS | lo | 124393/1000000 | 53921202401/433474000000 | 3279 | 78:57, 78:301, 78:62, 78:52, 78:14, 78:294, 78:126 |
| 78:319 | PRS | lo | 9349/100000 | 12193137/130421750 | 3622 | 78:99, 78:200, 78:108, 78:100, 78:126, 78:218, 78:304 |
| 78:321 | ACS | lo | 250473/1000000 | 105338808481/420559300000 | 3939 | 78:177, 78:218, 78:198, 78:178, 78:309, 78:287, 78:289 |
| 78:322 | AQS | lo | 238739/1000000 | 1004041558749/4205593000000 | 3944 | 78:177, 78:218, 78:198, 78:178, 78:36, 78:290, 78:66 |
| 78:323 | CPS | lo | 177139/1000000 | 744974929239/4205593000000 | 3958 | 78:177, 78:218, 78:198, 78:178, 78:310, 78:298, 78:295 |
| 78:324 | HPS | lo | 47191/500000 | 396936369/4205593000 | 3973 | 78:177, 78:218, 78:198, 78:178, 78:180, 78:200, 78:301 |
| 78:325 | HQS | lo | 17409/100000 | 366076999529/2102796500000 | 3974 | 78:177, 78:218, 78:198, 78:178, 78:182, 78:306, 78:226 |
| 78:328 | ACF | lo | 74399/250000 | 74399/250000 | 4243 | 78:44, 78:300, 78:298 |
| 78:330 | ACR | lo | 436473/1000000 | 436473/1000000 | 4256 | 78:70, 78:321, 78:168 |
| 78:331 | AFQ | lo | 81567/250000 | 81567/250000 | 4276 | 78:44, 78:302, 78:313 |
| 78:332 | AFS | lo | 170259/500000 | 170259/500000 | 4278 | 78:44, 78:64, 78:314 |
| 78:336 | AQR | lo | 424739/1000000 | 424739/1000000 | 4291 | 78:70, 78:322, 78:238 |
| 78:337 | BER | lo | 61901/200000 | 61901/200000 | 4327 | 78:126, 78:305, 78:198 |
| 78:338 | BHR | lo | 32917/100000 | 32917/100000 | 4339 | 78:108, 78:269, 78:301 |
| 78:339 | BHS | lo | 12471/40000 | 12471/40000 | 4340 | 78:108, 78:318, 78:324 |
| 78:340 | CFR | lo | 31031/100000 | 31031/100000 | 4372 | 78:168, 78:299, 78:218 |
| 78:341 | CHR | lo | 19533/50000 | 19533/50000 | 4378 | 78:168, 78:156, 78:304 |
| 78:342 | CPR | lo | 363629/1000000 | 363629/1000000 | 4381 | 78:168, 78:323, 78:319 |
| 78:343 | EHR | lo | 281749/1000000 | 281749/1000000 | 4398 | 78:198, 78:186, 78:304 |
| 78:344 | EPR | lo | 302353/1000000 | 302353/1000000 | 4401 | 78:198, 78:311, 78:319 |
| 78:345 | HQR | lo | 362839/1000000 | 362839/1000000 | 4416 | 78:304, 78:325, 78:238 |
| 78:347 | ABE | lo | 100981/1000000 | 3233036500/32015999541 | 32 | 78:0, 78:30, 78:4, 78:309, 78:19 |
| 78:349 | BFR | lo | 247421/1000000 | 161352605945/652137682176 | 156 | 78:12, 78:176, 78:48, 78:337, 78:39 |
| 78:350 | BPR | lo | 6847/50000 | 1175054617/8580758976 | 191 | 78:12, 78:344, 78:62, 78:337, 78:39 |
| 78:352 | CFS | lo | 124353/1000000 | 54962163/441983000 | 336 | 78:321, 78:178, 78:332, 78:138, 78:41 |
| 78:353 | AEQ | lo | 65157/500000 | 25258800/193829863 | 374 | 78:309, 78:194, 78:38, 78:134, 78:137 |
| 78:354 | ACP | lo | 100417/1000000 | 68268417/679847810 | 412 | 78:328, 78:62, 78:330, 78:44, 78:49 |
| 78:355 | HPR | lo | 99289/1000000 | 42466497/427702000 | 445 | 78:52, 78:342, 78:62, 78:150, 78:244 |
| 78:356 | FQS | lo | 15601/125000 | 5516316681/44198300000 | 531 | 78:332, 78:258, 78:322, 78:178, 78:41 |
| 78:357 | AES | lo | 42971/250000 | 20158587/117280000 | 536 | 78:332, 78:198, 78:70, 78:178, 78:219 |
| 78:358 | APQ | lo | 51367/500000 | 69843651/679847810 | 617 | 78:44, 78:336, 78:331, 78:62, 78:49 |
| 78:360 | BEQ | lo | 119649/1000000 | 440641440/3682767397 | 724 | 78:72, 78:194, 78:337, 78:134, 78:137 |
| 78:361 | BCF | lo | 50289/250000 | 50289005151/250000000000 | 747 | 78:76, 78:349, 78:82, 78:98, 78:113 |
| 78:362 | CFH | lo | 70331/500000 | 17582859/125000000 | 750 | 78:76, 78:204, 78:98, 78:341, 78:113 |
| 78:363 | HRS | lo | 3831/40000 | 2231473/23299100 | 815 | 78:338, 78:168, 78:126, 78:341, 78:83 |
| 78:364 | BEF | lo | 114833/500000 | 26792923337/116660000000 | 848 | 78:88, 78:176, 78:337, 78:170, 78:185 |
| 78:365 | EFH | lo | 131439/1000000 | 6199996125/47169795754 | 849 | 78:364, 78:204, 78:98, 78:176, 78:105 |
| 78:366 | BES | lo | 386/3125 | 1505763/12190400 | 916 | 78:339, 78:198, 78:126, 78:186, 78:231 |
| 78:367 | BFQ | lo | 189719/1000000 | 189719473733/1000000000000 | 952 | 78:98, 78:122, 78:349, 78:110, 78:113 |
| 78:368 | FHQ | lo | 138273/1000000 | 13044633375/94339591508 | 953 | 78:98, 78:296, 78:367, 78:204, 78:105 |
| 78:369 | EHQ | lo | 113537/1000000 | 418133580/3682767397 | 1078 | 78:130, 78:194, 78:134, 78:343, 78:137 |
| 78:372 | ACE | lo | 19779/125000 | 210770037041139/1332031250000000 | 2248 | 78:330, 78:39 |
| 78:373 | CEF | lo | 9137/50000 | 548221037/3000000000 | 2617 | 78:340, 78:177 |
| 78:374 | CEH | lo | 167911/1000000 | 28628867/170500000 | 2642 | 78:341, 78:185 |
| 78:375 | CEP | lo | 87397/500000 | 715258243/4092000000 | 2652 | 78:342, 78:191 |
| 78:377 | CFP | lo | 104257/1000000 | 23191968000/222448099733 | 2786 | 78:5, 78:100, 78:44, 78:8, 78:328, 78:361 |
| 78:378 | EPS | lo | 115869/1000000 | 25774959275169/222448099733000 | 2797 | 78:5, 78:100, 78:44, 78:8, 78:357, 78:366, 78:178 |
| 78:380 | EFP | lo | 168651/1000000 | 5894142857364207/34948624513000000 | 2882 | 78:21, 78:150, 78:52, 78:354, 78:30, 78:373, 78:365 |
| 78:381 | FPQ | lo | 6527/50000 | 4562227221759/34948624513000 | 2890 | 78:21, 78:150, 78:52, 78:354, 78:331, 78:144, 78:368 |
| 78:382 | FPR | lo | 30979/200000 | 5413397429709/34948624513000 | 2891 | 78:21, 78:150, 78:52, 78:354, 78:48, 78:340, 78:204 |
| 78:383 | FPS | lo | 19179/125000 | 487476334024099/3177147683000000 | 2892 | 78:21, 78:150, 78:52, 78:354, 78:332, 78:352, 78:206 |
| 78:384 | EQS | lo | 96797/1000000 | 8845738143537/91384063909000 | 2930 | 78:27, 78:168, 78:70, 78:321, 78:353, 78:134, 78:194 |
| 78:389 | BEP | lo | 4637/31250 | 32160377747/216737000000 | 3273 | 78:57, 78:355, 78:62, 78:52, 78:347, 78:88, 78:337 |
| 78:390 | BPS | lo | 124401/1000000 | 107849293007/866948000000 | 3279 | 78:57, 78:355, 78:62, 78:52, 78:14, 78:339, 78:126 |
| 78:392 | AES | hi | 441979/1000000 | 3578734809458866871/8097082230468750000 | 3535 | 78:95, 78:198, 78:126, 78:366, 78:347, 78:39 |
| 78:393 | PRS | lo | 46747/500000 | 24387483/260843500 | 3622 | 78:99, 78:200, 78:108, 78:100, 78:126, 78:218, 78:363 |
| 78:395 | ABS | lo | 162279/1000000 | 682482846733/4205593000000 | 3938 | 78:177, 78:218, 78:198, 78:178, 78:347, 78:4, 78:12 |
| 78:396 | ACS | lo | 125289/500000 | 131729005197/525699125000 | 3939 | 78:177, 78:218, 78:198, 78:178, 78:372, 78:328, 78:330 |
| 78:398 | AQS | lo | 238753/1000000 | 502050058101/2102796500000 | 3944 | 78:177, 78:218, 78:198, 78:178, 78:353, 78:331, 78:336 |
| 78:400 | CHS | lo | 20197/100000 | 424703416283/2102796500000 | 3957 | 78:177, 78:218, 78:198, 78:178, 78:374, 78:362, 78:341 |
| 78:401 | CPS | lo | 177211/1000000 | 7235707567/40831000000 | 3958 | 78:177, 78:218, 78:198, 78:178, 78:375, 78:377, 78:342 |
| 78:402 | HPS | lo | 9439/100000 | 20893101/221347000 | 3973 | 78:177, 78:218, 78:198, 78:178, 78:180, 78:200, 78:355 |
| 78:403 | HQS | lo | 21767/125000 | 732345752441/4205593000000 | 3974 | 78:177, 78:218, 78:198, 78:178, 78:369, 78:368, 78:345 |
| 78:405 | BQS | lo | 97989/500000 | 1143139887/5833000000 | 3997 | 78:185, 78:363, 78:198, 78:186, 78:360, 78:110, 78:122 |
| 78:407 | ACF | lo | 148837/500000 | 148837/500000 | 4243 | 78:44, 78:354, 78:377 |
| 78:409 | ACR | lo | 218289/500000 | 218289/500000 | 4256 | 78:70, 78:396, 78:168 |
| 78:410 | AEF | lo | 359827/1000000 | 359827/1000000 | 4258 | 78:44, 78:34, 78:380 |
| 78:411 | AER | lo | 89471/250000 | 89471/250000 | 4271 | 78:70, 78:357, 78:198 |
| 78:412 | AFQ | lo | 163137/500000 | 163137/500000 | 4276 | 78:44, 78:358, 78:381 |
| 78:413 | AFR | lo | 68179/200000 | 68179/200000 | 4277 | 78:44, 78:62, 78:382 |
| 78:414 | AFS | lo | 170277/500000 | 170277/500000 | 4278 | 78:44, 78:64, 78:383 |
| 78:418 | AQR | lo | 424753/1000000 | 424753/1000000 | 4291 | 78:70, 78:398, 78:238 |
| 78:419 | BEH | lo | 20899/62500 | 20899/62500 | 4318 | 78:108, 78:389, 78:180 |
| 78:420 | BER | lo | 3869/12500 | 3869/12500 | 4327 | 78:126, 78:366, 78:198 |
| 78:421 | BHR | lo | 329229/1000000 | 329229/1000000 | 4339 | 78:108, 78:350, 78:355 |
| 78:422 | BHS | lo | 311791/1000000 | 311791/1000000 | 4340 | 78:108, 78:390, 78:402 |
| 78:423 | BQR | lo | 190989/500000 | 190989/500000 | 4347 | 78:126, 78:405, 78:238 |
| 78:424 | CFR | lo | 310353/1000000 | 310353/1000000 | 4372 | 78:168, 78:352, 78:218 |
| 78:425 | CHR | lo | 78149/200000 | 78149/200000 | 4378 | 78:168, 78:400, 78:363 |
| 78:426 | CPR | lo | 72741/200000 | 72741/200000 | 4381 | 78:168, 78:401, 78:393 |
| 78:427 | EHR | lo | 11271/40000 | 11271/40000 | 4398 | 78:198, 78:186, 78:363 |
| 78:428 | EPR | lo | 302363/1000000 | 302363/1000000 | 4401 | 78:198, 78:378, 78:393 |
| 78:429 | FQR | lo | 38851/125000 | 38851/125000 | 4412 | 78:218, 78:356, 78:238 |
| 78:430 | HQR | lo | 362911/1000000 | 362911/1000000 | 4416 | 78:363, 78:403, 78:238 |
| 78:432 | ABE | lo | 20201/200000 | 3233776625/32015999541 | 32 | 78:0, 78:410, 78:4, 78:372, 78:19 |
| 78:434 | ABR | lo | 200169/1000000 | 9327559/46598200 | 78 | 78:0, 78:349, 78:4, 78:82, 78:75 |
| 78:435 | BFR | lo | 247433/1000000 | 20170121425/81517210272 | 156 | 78:434, 78:176, 78:413, 78:420, 78:39 |
| 78:436 | BPR | lo | 34237/250000 | 29769686449/217379227392 | 191 | 78:434, 78:428, 78:62, 78:420, 78:39 |
| 78:438 | CFS | lo | 3887/31250 | 13743819/110494750 | 336 | 78:396, 78:178, 78:414, 78:138, 78:392 |
| 78:439 | AEQ | lo | 130333/1000000 | 25262520/193829863 | 374 | 78:372, 78:194, 78:411, 78:134, 78:137 |
| 78:440 | ACP | lo | 50221/500000 | 34142718/339923905 | 412 | 78:407, 78:62, 78:409, 78:44, 78:49 |
| 78:441 | HPR | lo | 49653/500000 | 8494713/85540400 | 445 | 78:52, 78:426, 78:62, 78:150, 78:244 |
| 78:442 | AEP | lo | 98179/1000000 | 66747123/679847810 | 512 | 78:410, 78:62, 78:411, 78:44, 78:49 |
| 78:443 | FQS | lo | 124821/1000000 | 27584317269/220989500000 | 531 | 78:414, 78:384, 78:398, 78:178, 78:392 |
| 78:444 | AES | lo | 85949/500000 | 20160261/117280000 | 536 | 78:414, 78:198, 78:70, 78:178, 78:219 |
| 78:445 | APQ | lo | 6421/62500 | 69845511/679847810 | 617 | 78:44, 78:418, 78:412, 78:62, 78:49 |
| 78:448 | BEQ | lo | 119653/1000000 | 440655390/3682767397 | 724 | 78:72, 78:194, 78:420, 78:134, 78:137 |
| 78:449 | BCF | lo | 5029/25000 | 50290026723/250000000000 | 747 | 78:76, 78:435, 78:82, 78:98, 78:113 |
| 78:450 | CFH | lo | 70343/500000 | 140686587/1000000000 | 750 | 78:76, 78:204, 78:98, 78:425, 78:113 |
| 78:451 | HRS | lo | 47897/500000 | 11159597/116495500 | 815 | 78:421, 78:168, 78:126, 78:425, 78:83 |
| 78:452 | BEF | lo | 114843/500000 | 1674701691/7291250000 | 848 | 78:419, 78:176, 78:420, 78:365, 78:185 |
| 78:453 | EFH | lo | 65721/500000 | 6200112375/47169795754 | 849 | 78:452, 78:204, 78:98, 78:176, 78:105 |
| 78:454 | BES | lo | 4941/40000 | 37645563/304760000 | 916 | 78:422, 78:198, 78:126, 78:186, 78:231 |
| 78:455 | BFQ | lo | 189727/1000000 | 189727412609/1000000000000 | 952 | 78:98, 78:423, 78:435, 78:110, 78:113 |
| 78:456 | FHQ | lo | 138277/1000000 | 13045005375/94339591508 | 953 | 78:98, 78:429, 78:455, 78:204, 78:105 |
| 78:458 | EHQ | lo | 56779/500000 | 418207980/3682767397 | 1078 | 78:374, 78:194, 78:134, 78:427, 78:137 |
| 78:461 | ACE | lo | 15827/100000 | 105410370436827/666015625000000 | 2248 | 78:409, 78:39 |
| 78:462 | CEF | lo | 36553/200000 | 623230928557/3410000000000 | 2617 | 78:424, 78:177 |
| 78:463 | CEH | lo | 167947/1000000 | 343621153/2046000000 | 2642 | 78:425, 78:185 |
| 78:464 | CEP | lo | 17483/100000 | 47693849/272800000 | 2652 | 78:426, 78:191 |
| 78:467 | CFP | lo | 4171/40000 | 23195781000/222448099733 | 2786 | 78:5, 78:100, 78:44, 78:8, 78:407, 78:449 |
| 78:468 | EPS | lo | 115873/1000000 | 25775842775169/222448099733000 | 2797 | 78:5, 78:100, 78:44, 78:8, 78:444, 78:454, 78:178 |
| 78:470 | EFP | lo | 168657/1000000 | 267925422874443/1588573841500000 | 2882 | 78:21, 78:150, 78:52, 78:440, 78:410, 78:462, 78:453 |
| 78:471 | FPQ | lo | 130543/1000000 | 4562331801409/34948624513000 | 2890 | 78:21, 78:150, 78:52, 78:440, 78:412, 78:144, 78:456 |
| 78:472 | FPR | lo | 77451/500000 | 5413625279709/34948624513000 | 2891 | 78:21, 78:150, 78:52, 78:440, 78:413, 78:424, 78:204 |
| 78:473 | FPS | lo | 153459/1000000 | 611678080694/3985928890625 | 2892 | 78:21, 78:150, 78:52, 78:440, 78:414, 78:438, 78:206 |
| 78:474 | EQS | lo | 96799/1000000 | 8845914843537/91384063909000 | 2930 | 78:27, 78:168, 78:70, 78:396, 78:439, 78:134, 78:194 |
| 78:481 | BEP | lo | 18551/125000 | 6433111237/43347400000 | 3273 | 78:57, 78:441, 78:62, 78:52, 78:432, 78:419, 78:420 |
| 78:482 | BPQ | lo | 75037/500000 | 130106907/866948000 | 3277 | 78:57, 78:441, 78:62, 78:52, 78:10, 78:110, 78:423 |
| 78:483 | BPS | lo | 62203/500000 | 53926773687/433474000000 | 3279 | 78:57, 78:441, 78:62, 78:52, 78:395, 78:422, 78:126 |
| 78:486 | AES | hi | 17679/40000 | 3578705746958866871/8097082230468750000 | 3535 | 78:95, 78:198, 78:126, 78:454, 78:432, 78:39 |
| 78:488 | PRS | lo | 46749/500000 | 48776733/521687000 | 3622 | 78:99, 78:200, 78:108, 78:100, 78:126, 78:218, 78:451 |
| 78:490 | APS | lo | 94123/1000000 | 18971412818181/201559686217000 | 3763 | 78:123, 78:238, 78:126, 78:405, 78:8, 78:445, 78:62 |
| 78:491 | ABS | lo | 81147/500000 | 136508758193/841118600000 | 3938 | 78:177, 78:218, 78:198, 78:178, 78:432, 78:4, 78:434 |
| 78:492 | ACS | lo | 3133/12500 | 105409136411/420559300000 | 3939 | 78:177, 78:218, 78:198, 78:178, 78:461, 78:407, 78:409 |
| 78:494 | AQS | lo | 14923/62500 | 1004163282469/4205593000000 | 3944 | 78:177, 78:218, 78:198, 78:178, 78:439, 78:412, 78:418 |
| 78:497 | CHS | lo | 20201/100000 | 424787828399/2102796500000 | 3957 | 78:177, 78:218, 78:198, 78:178, 78:463, 78:450, 78:425 |
| 78:498 | CPS | lo | 35449/200000 | 29816970403/168223720000 | 3958 | 78:177, 78:218, 78:198, 78:178, 78:464, 78:467, 78:426 |
| 78:499 | HPS | lo | 47197/500000 | 396984729/4205593000 | 3973 | 78:177, 78:218, 78:198, 78:178, 78:180, 78:200, 78:441 |
| 78:500 | HQS | lo | 43541/250000 | 366232844947/2102796500000 | 3974 | 78:177, 78:218, 78:198, 78:178, 78:458, 78:456, 78:430 |
| 78:502 | BQS | lo | 97991/500000 | 1143168799/5833000000 | 3997 | 78:185, 78:451, 78:198, 78:186, 78:448, 78:110, 78:423 |
| 78:504 | ACF | lo | 297717/1000000 | 297717/1000000 | 4243 | 78:44, 78:440, 78:467 |
| 78:506 | ACR | lo | 2729/6250 | 2729/6250 | 4256 | 78:70, 78:492, 78:168 |
| 78:507 | AEF | lo | 89959/250000 | 89959/250000 | 4258 | 78:44, 78:442, 78:470 |
| 78:509 | AER | lo | 178949/500000 | 178949/500000 | 4271 | 78:70, 78:444, 78:198 |
| 78:510 | AFQ | lo | 326279/1000000 | 326279/1000000 | 4276 | 78:44, 78:445, 78:471 |
| 78:511 | AFR | lo | 170451/500000 | 170451/500000 | 4277 | 78:44, 78:62, 78:472 |
| 78:512 | AFS | lo | 170291/500000 | 170291/500000 | 4278 | 78:44, 78:490, 78:473 |
| 78:517 | AQR | lo | 6637/15625 | 6637/15625 | 4291 | 78:70, 78:494, 78:238 |
| 78:518 | BEH | lo | 41801/125000 | 41801/125000 | 4318 | 78:108, 78:481, 78:180 |
| 78:519 | BER | lo | 12381/40000 | 12381/40000 | 4327 | 78:126, 78:454, 78:198 |
| 78:520 | BHQ | lo | 168037/500000 | 168037/500000 | 4338 | 78:108, 78:482, 78:220 |
| 78:521 | BHR | lo | 164627/500000 | 164627/500000 | 4339 | 78:108, 78:436, 78:441 |
| 78:522 | BHS | lo | 1559/5000 | 1559/5000 | 4340 | 78:108, 78:483, 78:499 |
| 78:523 | BQR | lo | 190991/500000 | 190991/500000 | 4347 | 78:126, 78:502, 78:238 |
| 78:524 | CFR | lo | 19399/62500 | 19399/62500 | 4372 | 78:168, 78:438, 78:218 |
| 78:525 | CHR | lo | 97701/250000 | 97701/250000 | 4378 | 78:168, 78:497, 78:451 |
| 78:526 | CPR | lo | 363743/1000000 | 363743/1000000 | 4381 | 78:168, 78:498, 78:488 |
| 78:527 | EHR | lo | 140897/500000 | 140897/500000 | 4398 | 78:198, 78:186, 78:451 |
| 78:528 | EPR | lo | 302371/1000000 | 302371/1000000 | 4401 | 78:198, 78:468, 78:488 |
| 78:529 | FQR | lo | 310821/1000000 | 310821/1000000 | 4412 | 78:218, 78:443, 78:238 |
| 78:530 | HQR | lo | 181479/500000 | 181479/500000 | 4416 | 78:451, 78:500, 78:238 |
| 78:532 | ABE | lo | 101019/1000000 | 3234253250/32015999541 | 32 | 78:0, 78:507, 78:4, 78:461, 78:19 |
| 78:533 | CFP | lo | 26071/250000 | 23197780500/222448099733 | 70 | 78:504, 78:100, 78:44, 78:449, 78:5 |
| 78:534 | ABR | lo | 200171/1000000 | 46638167/232991000 | 78 | 78:0, 78:435, 78:4, 78:82, 78:75 |
| 78:535 | BFR | lo | 3093/12500 | 8964744475/36229871232 | 156 | 78:534, 78:176, 78:511, 78:519, 78:39 |
| 78:536 | BPR | lo | 17119/125000 | 89311730441/652137682176 | 191 | 78:534, 78:528, 78:62, 78:519, 78:39 |
| 78:538 | CFS | lo | 31101/250000 | 9163941/73662500 | 336 | 78:492, 78:178, 78:512, 78:138, 78:486 |
| 78:539 | AEQ | lo | 65173/500000 | 480036240/3682767397 | 374 | 78:461, 78:194, 78:509, 78:134, 78:137 |
| 78:540 | ACP | lo | 12557/125000 | 68295201/679847810 | 412 | 78:504, 78:62, 78:506, 78:44, 78:49 |
| 78:541 | HPR | lo | 49657/500000 | 42477099/427702000 | 445 | 78:52, 78:526, 78:62, 78:150, 78:244 |
| 78:542 | AEP | lo | 49091/500000 | 33374631/339923905 | 512 | 78:507, 78:62, 78:509, 78:44, 78:49 |
| 78:543 | FQS | lo | 124833/1000000 | 27586710509/220987500000 | 531 | 78:512, 78:474, 78:494, 78:178, 78:486 |
| 78:544 | AES | lo | 171909/1000000 | 20161563/117280000 | 536 | 78:512, 78:198, 78:70, 78:178, 78:219 |
| 78:545 | APQ | lo | 102739/1000000 | 69847371/679847810 | 617 | 78:44, 78:517, 78:510, 78:62, 78:49 |
| 78:548 | BEQ | lo | 59827/500000 | 440660040/3682767397 | 724 | 78:72, 78:194, 78:519, 78:134, 78:137 |
| 78:549 | BCF | lo | 100581/500000 | 628632783/3125000000 | 747 | 78:76, 78:535, 78:82, 78:98, 78:113 |
| 78:550 | CFH | lo | 140703/1000000 | 17587881/125000000 | 750 | 78:76, 78:204, 78:98, 78:525, 78:113 |
| 78:551 | HRS | lo | 19161/200000 | 11160899/116495500 | 815 | 78:521, 78:168, 78:126, 78:525, 78:83 |
| 78:552 | BEF | lo | 2297/10000 | 2679688341/11666000000 | 848 | 78:518, 78:176, 78:519, 78:453, 78:185 |
| 78:553 | EFH | lo | 32861/250000 | 3100096875/23584897877 | 849 | 78:552, 78:204, 78:98, 78:176, 78:105 |
| 78:554 | BES | lo | 15441/125000 | 23529/190475 | 916 | 78:522, 78:198, 78:126, 78:186, 78:231 |
| 78:555 | BFQ | lo | 189731/1000000 | 2371639107/12500000000 | 952 | 78:98, 78:523, 78:535, 78:520, 78:113 |
| 78:556 | FHQ | lo | 69141/500000 | 6522752625/47169795754 | 953 | 78:98, 78:529, 78:555, 78:204, 78:105 |
| 78:558 | EHQ | lo | 113571/1000000 | 418259130/3682767397 | 1078 | 78:463, 78:194, 78:134, 78:527, 78:137 |
| 78:561 | ACE | lo | 39573/250000 | 1317816751747/8325195312500 | 2248 | 78:506, 78:39 |
| 78:562 | CEF | lo | 182783/1000000 | 116867471393/639375000000 | 2617 | 78:524, 78:177 |
| 78:563 | CEH | lo | 167973/1000000 | 143197099/852500000 | 2642 | 78:525, 78:185 |
| 78:564 | CEP | lo | 174849/1000000 | 715482481/4092000000 | 2652 | 78:526, 78:191 |
| 78:566 | EPS | lo | 28969/250000 | 25776493775169/222448099733000 | 2797 | 78:5, 78:100, 78:44, 78:8, 78:544, 78:554, 78:178 |
| 78:568 | EFP | lo | 84331/500000 | 1473634037621693/8737156128250000 | 2882 | 78:21, 78:150, 78:52, 78:540, 78:507, 78:562, 78:553 |
| 78:569 | FPQ | lo | 65273/500000 | 4562411859309/34948624513000 | 2890 | 78:21, 78:150, 78:52, 78:540, 78:510, 78:144, 78:556 |
| 78:570 | FPR | lo | 154907/1000000 | 5413801979709/34948624513000 | 2891 | 78:21, 78:150, 78:52, 78:540, 78:511, 78:524, 78:204 |
| 78:571 | FPS | lo | 153477/1000000 | 1340957663678813/8737156128250000 | 2892 | 78:21, 78:150, 78:52, 78:540, 78:512, 78:538, 78:206 |
| 78:572 | EQS | lo | 121/1250 | 8846035743537/91384063909000 | 2930 | 78:27, 78:168, 78:70, 78:492, 78:539, 78:134, 78:194 |
| 78:581 | BEP | lo | 74211/500000 | 32168613753/216737000000 | 3273 | 78:57, 78:541, 78:62, 78:52, 78:532, 78:518, 78:519 |
| 78:582 | BPQ | lo | 6003/40000 | 32526843/216737000 | 3277 | 78:57, 78:541, 78:62, 78:52, 78:10, 78:520, 78:523 |
| 78:583 | BPS | lo | 124409/1000000 | 26964107079/216737000000 | 3279 | 78:57, 78:541, 78:62, 78:52, 78:491, 78:522, 78:126 |
| 78:585 | AES | hi | 441973/1000000 | 1192896264611288957/2699027410156250000 | 3535 | 78:95, 78:198, 78:126, 78:554, 78:532, 78:39 |
| 78:587 | FHS | lo | 63283/500000 | 262352973743/2072853051000 | 3563 | 78:95, 78:198, 78:126, 78:554, 78:98, 78:553, 78:204 |
| 78:588 | PRS | lo | 187/2000 | 12194439/130421750 | 3622 | 78:99, 78:200, 78:108, 78:100, 78:126, 78:218, 78:551 |
| 78:590 | ABS | lo | 81151/500000 | 682578489267/4205593000000 | 3938 | 78:177, 78:218, 78:198, 78:178, 78:532, 78:4, 78:534 |
| 78:591 | ACS | lo | 10027/40000 | 263560154289/1051398250000 | 3939 | 78:177, 78:218, 78:198, 78:178, 78:561, 78:504, 78:506 |
| 78:593 | AQS | lo | 11939/50000 | 502106187589/2102796500000 | 3944 | 78:177, 78:218, 78:198, 78:178, 78:539, 78:510, 78:517 |
| 78:596 | CHS | lo | 202039/1000000 | 849694581879/4205593000000 | 3957 | 78:177, 78:218, 78:198, 78:178, 78:563, 78:550, 78:525 |
| 78:597 | CPS | lo | 177263/1000000 | 186374595103/1051398250000 | 3958 | 78:177, 78:218, 78:198, 78:178, 78:564, 78:533, 78:526 |
| 78:598 | HPS | lo | 23599/250000 | 56713167/600799000 | 3973 | 78:177, 78:218, 78:198, 78:178, 78:180, 78:200, 78:541 |
| 78:599 | HQS | lo | 174183/1000000 | 732544542603/4205593000000 | 3974 | 78:177, 78:218, 78:198, 78:178, 78:558, 78:556, 78:530 |
| 78:601 | BQS | lo | 12249/62500 | 571588711/2916500000 | 3997 | 78:185, 78:551, 78:198, 78:186, 78:548, 78:520, 78:523 |
| 78:603 | ACF | lo | 14887/50000 | 14887/50000 | 4243 | 78:44, 78:540, 78:533 |
| 78:605 | ACR | lo | 17467/40000 | 17467/40000 | 4256 | 78:70, 78:591, 78:168 |
| 78:606 | AEF | lo | 89961/250000 | 89961/250000 | 4258 | 78:44, 78:542, 78:568 |
| 78:608 | AER | lo | 357909/1000000 | 357909/1000000 | 4271 | 78:70, 78:544, 78:198 |
| 78:609 | AFQ | lo | 65257/200000 | 65257/200000 | 4276 | 78:44, 78:545, 78:569 |
| 78:610 | AFR | lo | 340907/1000000 | 340907/1000000 | 4277 | 78:44, 78:62, 78:570 |
| 78:611 | AFS | lo | 1703/5000 | 1703/5000 | 4278 | 78:44, 78:490, 78:571 |
| 78:615 | AQR | lo | 21239/50000 | 21239/50000 | 4291 | 78:70, 78:593, 78:238 |
| 78:616 | BEH | lo | 167211/500000 | 167211/500000 | 4318 | 78:108, 78:581, 78:180 |
| 78:617 | BER | lo | 38691/125000 | 38691/125000 | 4327 | 78:126, 78:554, 78:198 |
| 78:618 | BHQ | lo | 13443/40000 | 13443/40000 | 4338 | 78:108, 78:582, 78:220 |
| 78:619 | BHR | lo | 164633/500000 | 164633/500000 | 4339 | 78:108, 78:536, 78:541 |
| 78:620 | BHS | lo | 62361/200000 | 62361/200000 | 4340 | 78:108, 78:583, 78:598 |
| 78:621 | BQR | lo | 11937/31250 | 11937/31250 | 4347 | 78:126, 78:601, 78:238 |
| 78:622 | CFR | lo | 77601/250000 | 77601/250000 | 4372 | 78:168, 78:538, 78:218 |
| 78:623 | CHR | lo | 97711/250000 | 97711/250000 | 4378 | 78:168, 78:596, 78:551 |
| 78:624 | CPR | lo | 363763/1000000 | 363763/1000000 | 4381 | 78:168, 78:597, 78:588 |
| 78:625 | EHR | lo | 56361/200000 | 56361/200000 | 4398 | 78:198, 78:186, 78:551 |
| 78:626 | EPR | lo | 37797/125000 | 37797/125000 | 4401 | 78:198, 78:566, 78:588 |
| 78:627 | FQR | lo | 310833/1000000 | 310833/1000000 | 4412 | 78:218, 78:543, 78:238 |
| 78:628 | HQR | lo | 90747/250000 | 90747/250000 | 4416 | 78:551, 78:599, 78:238 |
| 78:630 | ABE | lo | 25257/250000 | 1078180000/10671999847 | 32 | 78:0, 78:606, 78:4, 78:561, 78:19 |
| 78:631 | CFP | lo | 104289/1000000 | 23198943000/222448099733 | 70 | 78:603, 78:100, 78:44, 78:549, 78:5 |
| 78:632 | ABR | lo | 50043/250000 | 5829798/29123875 | 78 | 78:0, 78:535, 78:4, 78:82, 78:75 |
| 78:633 | BFR | lo | 49489/200000 | 13106583/52967648 | 156 | 78:632, 78:176, 78:610, 78:617, 78:39 |
| 78:634 | BPR | lo | 68477/500000 | 310115669/2264366952 | 191 | 78:632, 78:626, 78:62, 78:617, 78:39 |
| 78:636 | CFS | lo | 1944/15625 | 2199543/17678920 | 336 | 78:591, 78:178, 78:611, 78:138, 78:585 |
| 78:637 | AEQ | lo | 65177/500000 | 480066930/3682767397 | 374 | 78:561, 78:194, 78:608, 78:134, 78:137 |
| 78:638 | ACP | lo | 6279/62500 | 13660119/135969562 | 412 | 78:603, 78:62, 78:605, 78:44, 78:49 |
| 78:639 | HPR | lo | 99319/1000000 | 42478959/427702000 | 445 | 78:52, 78:624, 78:62, 78:150, 78:244 |
| 78:640 | AEP | lo | 19637/200000 | 66751029/679847810 | 512 | 78:606, 78:62, 78:608, 78:44, 78:49 |
| 78:641 | FQS | lo | 124841/1000000 | 2758831/22098650 | 531 | 78:611, 78:572, 78:593, 78:178, 78:585 |
| 78:642 | AES | lo | 42979/250000 | 25203/146600 | 536 | 78:611, 78:198, 78:70, 78:178, 78:219 |
| 78:643 | APQ | lo | 51371/500000 | 13969809/135969562 | 617 | 78:44, 78:615, 78:609, 78:62, 78:49 |
| 78:646 | BEQ | lo | 23931/200000 | 440662830/3682767397 | 724 | 78:72, 78:194, 78:617, 78:134, 78:137 |
| 78:647 | BCF | lo | 50291/250000 | 10058209659/50000000000 | 747 | 78:76, 78:633, 78:82, 78:98, 78:113 |
| 78:648 | CFH | lo | 70357/500000 | 4397319/31250000 | 750 | 78:76, 78:204, 78:98, 78:623, 78:113 |
| 78:649 | HRS | lo | 23953/250000 | 2232341/23299100 | 815 | 78:619, 78:168, 78:126, 78:623, 78:83 |
| 78:650 | BEF | lo | 229709/1000000 | 8374333527/36456250000 | 848 | 78:616, 78:176, 78:617, 78:553, 78:185 |
| 78:651 | EFH | lo | 26289/200000 | 12400492125/94339591508 | 849 | 78:650, 78:204, 78:98, 78:176, 78:105 |
| 78:652 | BES | lo | 123529/1000000 | 7529373/60952000 | 916 | 78:620, 78:198, 78:126, 78:186, 78:231 |
| 78:653 | BFQ | lo | 189733/1000000 | 303573783/1600000000 | 952 | 78:98, 78:621, 78:633, 78:618, 78:113 |
| 78:654 | FHQ | lo | 138287/1000000 | 3261486750/23584897877 | 953 | 78:98, 78:627, 78:653, 78:204, 78:105 |
| 78:656 | EHQ | lo | 113581/1000000 | 418293540/3682767397 | 1078 | 78:563, 78:194, 78:134, 78:625, 78:137 |
| 78:659 | ACE | lo | 31661/200000 | 8434703262281/53281250000000 | 2248 | 78:605, 78:39 |
| 78:660 | CEF | lo | 36559/200000 | 155833335869/852500000000 | 2617 | 78:622, 78:177 |
| 78:661 | CEH | lo | 16799/100000 | 429635267/2557500000 | 2642 | 78:623, 78:185 |
| 78:662 | CEP | lo | 87429/500000 | 715521821/4092000000 | 2652 | 78:624, 78:191 |
| 78:665 | EPS | lo | 57939/500000 | 25776865775169/222448099733000 | 2797 | 78:5, 78:100, 78:44, 78:8, 78:642, 78:652, 78:178 |
| 78:667 | EFP | lo | 84333/500000 | 1178930959822257/6989724902600000 | 2882 | 78:21, 78:150, 78:52, 78:638, 78:606, 78:660, 78:651 |
| 78:668 | FPQ | lo | 32637/250000 | 4562482988109/34948624513000 | 2890 | 78:21, 78:150, 78:52, 78:638, 78:609, 78:144, 78:654 |
| 78:669 | FPR | lo | 15491/100000 | 492174384519/3177147683000 | 2891 | 78:21, 78:150, 78:52, 78:638, 78:610, 78:622, 78:204 |
| 78:670 | FPS | lo | 9593/62500 | 7619635720752/49642932546875 | 2892 | 78:21, 78:150, 78:52, 78:638, 78:611, 78:636, 78:587 |
| 78:671 | EQS | lo | 96801/1000000 | 8846110143537/91384063909000 | 2930 | 78:27, 78:168, 78:70, 78:591, 78:637, 78:134, 78:194 |
| 78:678 | BEP | lo | 148431/1000000 | 2010658821/13546062500 | 3273 | 78:57, 78:639, 78:62, 78:52, 78:630, 78:616, 78:617 |
| 78:679 | BPS | lo | 124411/1000000 | 53929017169/433474000000 | 3279 | 78:57, 78:639, 78:62, 78:52, 78:590, 78:620, 78:126 |
| 78:681 | AES | hi | 110493/250000 | 1192892631798788957/2699027410156250000 | 3535 | 78:95, 78:198, 78:126, 78:652, 78:630, 78:39 |
| 78:683 | PRS | lo | 93501/1000000 | 48778407/521687000 | 3622 | 78:99, 78:200, 78:108, 78:100, 78:126, 78:218, 78:649 |
| 78:685 | ABS | lo | 162307/1000000 | 24378590343/150199750000 | 3938 | 78:177, 78:218, 78:198, 78:178, 78:630, 78:4, 78:632 |
| 78:686 | ACS | lo | 50139/200000 | 210865009973/841118600000 | 3939 | 78:177, 78:218, 78:198, 78:178, 78:659, 78:603, 78:605 |
| 78:688 | AQS | lo | 59697/250000 | 71731991423/300399500000 | 3944 | 78:177, 78:218, 78:198, 78:178, 78:637, 78:609, 78:615 |
| 78:691 | CHS | lo | 202057/1000000 | 424886696701/2102796500000 | 3957 | 78:177, 78:218, 78:198, 78:178, 78:661, 78:648, 78:623 |
| 78:692 | CPS | lo | 22159/125000 | 106505296911/600799000000 | 3958 | 78:177, 78:218, 78:198, 78:178, 78:662, 78:631, 78:624 |
| 78:693 | HPS | lo | 94397/1000000 | 396996819/4205593000 | 3973 | 78:177, 78:218, 78:198, 78:178, 78:180, 78:200, 78:639 |
| 78:694 | HQS | lo | 43549/250000 | 5508274801/31621000000 | 3974 | 78:177, 78:218, 78:198, 78:178, 78:656, 78:654, 78:628 |
| 78:696 | BQS | lo | 39197/200000 | 228636837/1166600000 | 3997 | 78:185, 78:649, 78:198, 78:186, 78:646, 78:618, 78:621 |
| 78:698 | ACF | lo | 297753/1000000 | 297753/1000000 | 4243 | 78:44, 78:638, 78:631 |
| 78:700 | ACR | lo | 87339/200000 | 87339/200000 | 4256 | 78:70, 78:686, 78:168 |
| 78:701 | AEF | lo | 359851/1000000 | 359851/1000000 | 4258 | 78:44, 78:640, 78:667 |
| 78:703 | AER | lo | 89479/250000 | 89479/250000 | 4271 | 78:70, 78:642, 78:198 |
| 78:704 | AFQ | lo | 32629/100000 | 32629/100000 | 4276 | 78:44, 78:643, 78:668 |
| 78:705 | AFR | lo | 34091/100000 | 34091/100000 | 4277 | 78:44, 78:62, 78:669 |
| 78:706 | AFS | lo | 340611/1000000 | 340611/1000000 | 4278 | 78:44, 78:490, 78:670 |
| 78:710 | AQR | lo | 106197/250000 | 106197/250000 | 4291 | 78:70, 78:688, 78:238 |
| 78:711 | BEH | lo | 334431/1000000 | 334431/1000000 | 4318 | 78:108, 78:678, 78:180 |
| 78:712 | BER | lo | 309529/1000000 | 309529/1000000 | 4327 | 78:126, 78:652, 78:198 |
| 78:713 | BHR | lo | 329273/1000000 | 329273/1000000 | 4339 | 78:108, 78:634, 78:639 |
| 78:714 | BHS | lo | 4872/15625 | 4872/15625 | 4340 | 78:108, 78:679, 78:693 |
| 78:715 | BQR | lo | 76397/200000 | 76397/200000 | 4347 | 78:126, 78:696, 78:238 |
| 78:716 | CFR | lo | 19401/62500 | 19401/62500 | 4372 | 78:168, 78:636, 78:218 |
| 78:717 | CHR | lo | 390869/1000000 | 390869/1000000 | 4378 | 78:168, 78:691, 78:649 |
| 78:718 | CPR | lo | 363773/1000000 | 363773/1000000 | 4381 | 78:168, 78:692, 78:683 |
| 78:719 | EHR | lo | 70453/250000 | 70453/250000 | 4398 | 78:198, 78:186, 78:649 |
| 78:720 | EPR | lo | 302379/1000000 | 302379/1000000 | 4401 | 78:198, 78:665, 78:683 |
| 78:721 | FQR | lo | 310841/1000000 | 310841/1000000 | 4412 | 78:218, 78:641, 78:238 |
| 78:722 | HQR | lo | 5672/15625 | 5672/15625 | 4416 | 78:649, 78:694, 78:238 |
| 78:724 | ABE | lo | 50517/500000 | 3234718250/32015999541 | 32 | 78:0, 78:701, 78:4, 78:659, 78:19 |
| 78:725 | CFP | lo | 26073/250000 | 23199640500/222448099733 | 70 | 78:698, 78:100, 78:44, 78:647, 78:5 |
| 78:726 | ABR | lo | 200173/1000000 | 46638539/232991000 | 78 | 78:0, 78:633, 78:4, 78:82, 78:75 |
| 78:727 | BFR | lo | 247447/1000000 | 80684899195/326068841088 | 156 | 78:726, 78:176, 78:705, 78:712, 78:39 |
| 78:728 | BPR | lo | 34239/250000 | 9923812063/72459742464 | 191 | 78:726, 78:720, 78:62, 78:712, 78:39 |
| 78:730 | CFS | lo | 62211/500000 | 3055081/24554000 | 336 | 78:686, 78:178, 78:706, 78:138, 78:681 |
| 78:731 | AEQ | lo | 130359/1000000 | 480085530/3682767397 | 374 | 78:659, 78:194, 78:703, 78:134, 78:137 |
| 78:732 | ACP | lo | 100469/1000000 | 34151832/339923905 | 412 | 78:698, 78:62, 78:700, 78:44, 78:49 |
| 78:733 | HPR | lo | 99321/1000000 | 42479889/427702000 | 445 | 78:52, 78:718, 78:62, 78:150, 78:244 |
| 78:734 | AEP | lo | 98187/1000000 | 66752331/679847810 | 512 | 78:701, 78:62, 78:703, 78:44, 78:49 |
| 78:735 | FQS | lo | 62423/500000 | 6130974379/49108000000 | 531 | 78:706, 78:671, 78:688, 78:178, 78:681 |
| 78:736 | AES | lo | 171921/1000000 | 40325823/234560000 | 536 | 78:706, 78:198, 78:70, 78:178, 78:219 |
| 78:737 | APQ | lo | 102743/1000000 | 34925127/339923905 | 617 | 78:44, 78:710, 78:704, 78:62, 78:49 |
| 78:740 | CFH | lo | 140721/1000000 | 140721183/1000000000 | 750 | 78:76, 78:204, 78:98, 78:717, 78:113 |
| 78:741 | HRS | lo | 11977/125000 | 11162201/116495500 | 815 | 78:713, 78:168, 78:126, 78:717, 78:83 |
| 78:743 | BES | lo | 12353/100000 | 4705893/38095000 | 916 | 78:714, 78:198, 78:126, 78:186, 78:231 |
| 78:744 | BFQ | lo | 94867/500000 | 7589382621/40000000000 | 952 | 78:98, 78:715, 78:727, 78:618, 78:113 |
| 78:745 | FHQ | lo | 13829/100000 | 13046237625/94339591508 | 953 | 78:98, 78:721, 78:744, 78:204, 78:105 |
| 78:747 | EHQ | lo | 113587/1000000 | 418315860/3682767397 | 1078 | 78:661, 78:194, 78:134, 78:719, 78:137 |
| 78:750 | ACE | lo | 19789/125000 | 42175447885977/266406250000000 | 2248 | 78:700, 78:39 |
| 78:751 | CEF | lo | 91401/500000 | 38959840069/213125000000 | 2617 | 78:716, 78:177 |
| 78:752 | CEH | lo | 168001/1000000 | 1718650993/10230000000 | 2642 | 78:717, 78:185 |
| 78:753 | CEP | lo | 174863/1000000 | 715541491/4092000000 | 2652 | 78:718, 78:191 |
| 78:756 | EFP | lo | 42167/250000 | 107176725438387/635429536600000 | 2882 | 78:21, 78:150, 78:52, 78:732, 78:701, 78:751, 78:651 |
| 78:757 | FPQ | lo | 130549/1000000 | 4562532630209/34948624513000 | 2890 | 78:21, 78:150, 78:52, 78:732, 78:704, 78:144, 78:745 |
| 78:758 | FPR | lo | 4841/31250 | 5413987979709/34948624513000 | 2891 | 78:21, 78:150, 78:52, 78:732, 78:705, 78:716, 78:204 |
| 78:759 | FPS | lo | 76747/500000 | 2682213442978243/17474312256500000 | 2892 | 78:21, 78:150, 78:52, 78:732, 78:706, 78:730, 78:587 |
| 78:760 | EPQ | hi | 104153/250000 | 164105550802018777/393905104000000000 | 2975 | 78:31, 78:756, 78:44, 78:734, 78:37, 78:175 |
| 78:766 | BEP | lo | 148437/1000000 | 16085897529/108368500000 | 3273 | 78:57, 78:733, 78:62, 78:52, 78:724, 78:711, 78:712 |
| 78:767 | BPS | lo | 31103/250000 | 107858948547/866948000000 | 3279 | 78:57, 78:733, 78:62, 78:52, 78:685, 78:714, 78:126 |
| 78:768 | AES | hi | 441971/1000000 | 1192890209923788957/2699027410156250000 | 3535 | 78:95, 78:198, 78:126, 78:743, 78:724, 78:39 |
| 78:770 | PRS | lo | 46751/500000 | 48778779/521687000 | 3622 | 78:99, 78:200, 78:108, 78:100, 78:126, 78:218, 78:741 |
| 78:773 | ACS | lo | 250707/1000000 | 131796519877/525699125000 | 3939 | 78:177, 78:218, 78:198, 78:178, 78:750, 78:698, 78:700 |
| 78:775 | AQS | lo | 119397/500000 | 1004271697887/4205593000000 | 3944 | 78:177, 78:218, 78:198, 78:178, 78:731, 78:704, 78:710 |
| 78:777 | CHS | lo | 202069/1000000 | 849823292553/4205593000000 | 3957 | 78:177, 78:218, 78:198, 78:178, 78:752, 78:740, 78:717 |
| 78:778 | CPS | lo | 177277/1000000 | 186389516289/1051398250000 | 3958 | 78:177, 78:218, 78:198, 78:178, 78:753, 78:725, 78:718 |
| 78:779 | HQS | lo | 34841/200000 | 732636012091/4205593000000 | 3974 | 78:177, 78:218, 78:198, 78:178, 78:747, 78:745, 78:722 |
| 78:781 | ACF | lo | 297761/1000000 | 297761/1000000 | 4243 | 78:44, 78:732, 78:725 |
| 78:783 | ACR | lo | 436707/1000000 | 436707/1000000 | 4256 | 78:70, 78:773, 78:168 |
| 78:784 | AEF | lo | 71971/200000 | 71971/200000 | 4258 | 78:44, 78:734, 78:756 |
| 78:786 | AER | lo | 357921/1000000 | 357921/1000000 | 4271 | 78:70, 78:736, 78:198 |
| 78:787 | AFQ | lo | 81573/250000 | 81573/250000 | 4276 | 78:44, 78:737, 78:757 |
| 78:788 | AFR | lo | 21307/62500 | 21307/62500 | 4277 | 78:44, 78:62, 78:758 |
| 78:789 | AFS | lo | 340617/1000000 | 340617/1000000 | 4278 | 78:44, 78:490, 78:759 |
| 78:792 | AQR | lo | 212397/500000 | 212397/500000 | 4291 | 78:70, 78:775, 78:238 |
| 78:793 | BEH | lo | 334437/1000000 | 334437/1000000 | 4318 | 78:108, 78:766, 78:180 |
| 78:794 | BER | lo | 30953/100000 | 30953/100000 | 4327 | 78:126, 78:743, 78:198 |
| 78:795 | BHR | lo | 329277/1000000 | 329277/1000000 | 4339 | 78:108, 78:728, 78:733 |
| 78:797 | CFR | lo | 155211/500000 | 155211/500000 | 4372 | 78:168, 78:730, 78:218 |
| 78:798 | CHR | lo | 78177/200000 | 78177/200000 | 4378 | 78:168, 78:777, 78:741 |
| 78:799 | CPR | lo | 363779/1000000 | 363779/1000000 | 4381 | 78:168, 78:778, 78:770 |
| 78:800 | EHR | lo | 35227/125000 | 35227/125000 | 4398 | 78:198, 78:186, 78:741 |
| 78:802 | FQR | lo | 155423/500000 | 155423/500000 | 4412 | 78:218, 78:735, 78:238 |
| 78:803 | HQR | lo | 363021/1000000 | 363021/1000000 | 4416 | 78:741, 78:779, 78:238 |
| 78:805 | ABE | lo | 101037/1000000 | 3234815125/32015999541 | 32 | 78:0, 78:784, 78:4, 78:750, 78:19 |
| 78:806 | CFP | lo | 52147/500000 | 23200012500/222448099733 | 70 | 78:781, 78:100, 78:44, 78:647, 78:5 |
| 78:807 | BFR | lo | 30931/125000 | 20171344795/81517210272 | 156 | 78:726, 78:176, 78:788, 78:794, 78:39 |
| 78:809 | CFS | lo | 124427/1000000 | 13748283/110492750 | 336 | 78:773, 78:178, 78:789, 78:138, 78:768 |
| 78:810 | AEQ | lo | 130363/1000000 | 480096690/3682767397 | 374 | 78:750, 78:194, 78:786, 78:134, 78:137 |
| 78:811 | ACP | lo | 100471/1000000 | 34152762/339923905 | 412 | 78:781, 78:62, 78:783, 78:44, 78:49 |
| 78:812 | HPR | lo | 49661/500000 | 42480447/427702000 | 445 | 78:52, 78:799, 78:62, 78:150, 78:244 |
| 78:813 | AEP | lo | 24547/250000 | 33376584/339923905 | 512 | 78:784, 78:62, 78:786, 78:44, 78:49 |
| 78:814 | FQS | lo | 124849/1000000 | 55179908217/441971000000 | 531 | 78:789, 78:671, 78:775, 78:178, 78:768 |
| 78:815 | AES | lo | 171923/1000000 | 40326381/234560000 | 536 | 78:789, 78:198, 78:70, 78:178, 78:219 |
| 78:816 | APQ | lo | 20549/200000 | 34925499/339923905 | 617 | 78:44, 78:792, 78:787, 78:62, 78:49 |
| 78:819 | BCF | lo | 40233/200000 | 6286412961/31250000000 | 747 | 78:76, 78:807, 78:82, 78:98, 78:113 |
| 78:820 | CFH | lo | 5629/40000 | 140725647/1000000000 | 750 | 78:76, 78:204, 78:98, 78:798, 78:113 |
| 78:821 | HRS | lo | 95819/1000000 | 11162511/116495500 | 815 | 78:795, 78:168, 78:126, 78:798, 78:83 |
| 78:822 | BEF | lo | 229717/1000000 | 2679881877/11666000000 | 848 | 78:793, 78:176, 78:794, 78:651, 78:185 |
| 78:823 | EFH | lo | 65723/500000 | 12400585125/94339591508 | 849 | 78:822, 78:204, 78:98, 78:176, 78:105 |
| 78:824 | FHQ | lo | 34573/250000 | 3261603000/23584897877 | 953 | 78:98, 78:802, 78:744, 78:204, 78:105 |
| 78:826 | EHQ | lo | 113591/1000000 | 418329810/3682767397 | 1078 | 78:752, 78:194, 78:134, 78:800, 78:137 |
| 78:829 | ACE | lo | 39579/250000 | 210883034153601/1332031250000000 | 2248 | 78:783, 78:39 |
| 78:830 | CEF | lo | 91403/500000 | 311684744959/1705000000000 | 2617 | 78:797, 78:177 |
| 78:831 | CEH | lo | 168007/1000000 | 10416493/62000000 | 2642 | 78:798, 78:185 |
| 78:832 | CEP | lo | 87433/500000 | 715553293/4092000000 | 2652 | 78:799, 78:191 |
| 78:834 | EFP | lo | 168669/1000000 | 2947391373867899/17474312256500000 | 2882 | 78:21, 78:150, 78:52, 78:811, 78:784, 78:830, 78:823 |
| 78:835 | FPQ | lo | 2611/20000 | 4562556506309/34948624513000 | 2890 | 78:21, 78:150, 78:52, 78:811, 78:787, 78:144, 78:824 |
| 78:836 | FPR | lo | 154913/1000000 | 5414025179709/34948624513000 | 2891 | 78:21, 78:150, 78:52, 78:811, 78:788, 78:797, 78:204 |
| 78:837 | FPS | lo | 153499/1000000 | 5364581375729051/34948624513000000 | 2892 | 78:21, 78:150, 78:52, 78:811, 78:789, 78:809, 78:587 |
| 78:838 | EQS | lo | 48401/500000 | 8846193843537/91384063909000 | 2930 | 78:27, 78:168, 78:70, 78:773, 78:810, 78:134, 78:194 |
| 78:842 | BEP | lo | 3711/25000 | 32172468519/216737000000 | 3273 | 78:57, 78:812, 78:62, 78:52, 78:805, 78:793, 78:794 |
| 78:844 | AES | hi | 44197/100000 | 1192888998986288957/2699027410156250000 | 3535 | 78:95, 78:198, 78:126, 78:743, 78:805, 78:39 |
| 78:846 | APS | lo | 23531/250000 | 18971622068181/201559686217000 | 3763 | 78:123, 78:238, 78:126, 78:696, 78:8, 78:816, 78:62 |
| 78:847 | ABS | lo | 162313/1000000 | 682622569941/4205593000000 | 3938 | 78:177, 78:218, 78:198, 78:178, 78:805, 78:4, 78:726 |
| 78:848 | ACS | lo | 250713/1000000 | 263600035347/1051398250000 | 3939 | 78:177, 78:218, 78:198, 78:178, 78:829, 78:781, 78:783 |
| 78:849 | AQS | lo | 119399/500000 | 1004288520259/4205593000000 | 3944 | 78:177, 78:218, 78:198, 78:178, 78:810, 78:787, 78:792 |
| 78:850 | ARS | hi | 288331/1000000 | 676674900863979/2346871093750000 | 3945 | 78:177, 78:218, 78:198, 78:178, 78:39, 78:788 |
| 78:851 | CHS | lo | 50519/250000 | 33994125397/168223720000 | 3957 | 78:177, 78:218, 78:198, 78:178, 78:831, 78:820, 78:798 |
| 78:852 | CPS | lo | 554/3125 | 53255080453/300399500000 | 3958 | 78:177, 78:218, 78:198, 78:178, 78:832, 78:806, 78:799 |
| 78:853 | HPS | lo | 47199/500000 | 396999609/4205593000 | 3973 | 78:177, 78:218, 78:198, 78:178, 78:180, 78:200, 78:812 |
| 78:854 | HQS | lo | 17421/100000 | 732659344463/4205593000000 | 3974 | 78:177, 78:218, 78:198, 78:178, 78:826, 78:824, 78:803 |
| 78:857 | ACF | lo | 59553/200000 | 59553/200000 | 4243 | 78:44, 78:811, 78:806 |
| 78:859 | ACR | lo | 436713/1000000 | 436713/1000000 | 4256 | 78:70, 78:848, 78:168 |
| 78:860 | AEF | lo | 359857/1000000 | 359857/1000000 | 4258 | 78:44, 78:813, 78:834 |
| 78:862 | AER | lo | 357923/1000000 | 357923/1000000 | 4271 | 78:70, 78:815, 78:198 |
| 78:863 | AFQ | lo | 65259/200000 | 65259/200000 | 4276 | 78:44, 78:816, 78:835 |
| 78:864 | AFR | lo | 340913/1000000 | 340913/1000000 | 4277 | 78:44, 78:62, 78:836 |
| 78:865 | AFS | lo | 340623/1000000 | 340623/1000000 | 4278 | 78:44, 78:846, 78:837 |
| 78:870 | AQR | lo | 212399/500000 | 212399/500000 | 4291 | 78:70, 78:849, 78:238 |
| 78:871 | BEH | lo | 8361/25000 | 8361/25000 | 4318 | 78:108, 78:842, 78:180 |
| 78:872 | BHR | lo | 164639/500000 | 164639/500000 | 4339 | 78:108, 78:728, 78:812 |
| 78:873 | BHS | lo | 31181/100000 | 31181/100000 | 4340 | 78:108, 78:767, 78:853 |
| 78:874 | CFR | lo | 310427/1000000 | 310427/1000000 | 4372 | 78:168, 78:809, 78:218 |
| 78:875 | CHR | lo | 78179/200000 | 78179/200000 | 4378 | 78:168, 78:851, 78:821 |
| 78:876 | CPR | lo | 181891/500000 | 181891/500000 | 4381 | 78:168, 78:852, 78:770 |
| 78:877 | EHR | lo | 281819/1000000 | 281819/1000000 | 4398 | 78:198, 78:186, 78:821 |
| 78:878 | FQR | lo | 310849/1000000 | 310849/1000000 | 4412 | 78:218, 78:814, 78:238 |
| 78:879 | HQR | lo | 363029/1000000 | 363029/1000000 | 4416 | 78:821, 78:854, 78:238 |
| 78:881 | ABE | lo | 101039/1000000 | 3234869375/32015999541 | 32 | 78:0, 78:860, 78:4, 78:829, 78:19 |
| 78:882 | CFP | lo | 20859/200000 | 23200245000/222448099733 | 70 | 78:857, 78:100, 78:44, 78:819, 78:5 |
| 78:883 | BFR | lo | 247449/1000000 | 80685533945/326068841088 | 156 | 78:726, 78:176, 78:864, 78:794, 78:39 |
| 78:885 | CFS | lo | 124429/1000000 | 6874281/55246250 | 336 | 78:848, 78:178, 78:865, 78:138, 78:844 |
| 78:886 | AEQ | lo | 32591/250000 | 480102270/3682767397 | 374 | 78:829, 78:194, 78:862, 78:134, 78:137 |
| 78:887 | ACP | lo | 100473/1000000 | 34153227/339923905 | 412 | 78:857, 78:62, 78:859, 78:44, 78:49 |
| 78:888 | HPR | lo | 99323/1000000 | 21240363/213851000 | 445 | 78:52, 78:876, 78:62, 78:150, 78:244 |
| 78:889 | FQS | lo | 31213/250000 | 27590600823/220985000000 | 531 | 78:865, 78:838, 78:849, 78:178, 78:844 |
| 78:890 | AES | lo | 6877/40000 | 40326939/234560000 | 536 | 78:865, 78:198, 78:70, 78:178, 78:219 |
| 78:891 | APQ | lo | 51373/500000 | 69851649/679847810 | 617 | 78:44, 78:870, 78:863, 78:62, 78:49 |
| 78:893 | CFH | lo | 17591/125000 | 140728437/1000000000 | 750 | 78:76, 78:204, 78:98, 78:875, 78:113 |
| 78:894 | HRS | lo | 4791/50000 | 22325363/232991000 | 815 | 78:872, 78:168, 78:126, 78:875, 78:83 |
| 78:896 | BES | lo | 123531/1000000 | 3764733/30476000 | 916 | 78:873, 78:198, 78:126, 78:186, 78:231 |
| 78:897 | BFQ | lo | 37947/200000 | 7589409507/40000000000 | 952 | 78:98, 78:715, 78:883, 78:618, 78:113 |
| 78:898 | FHQ | lo | 138293/1000000 | 6523264125/47169795754 | 953 | 78:98, 78:878, 78:897, 78:204, 78:105 |
| 78:900 | EHQ | lo | 113593/1000000 | 418338180/3682767397 | 1078 | 78:831, 78:194, 78:134, 78:877, 78:137 |
| 78:902 | ACE | lo | 158319/1000000 | 210885931515459/1332031250000000 | 2248 | 78:859, 78:39 |
| 78:903 | CEF | lo | 182809/1000000 | 1870138591789/10230000000000 | 2617 | 78:874, 78:177 |
| 78:904 | CEH | lo | 42003/250000 | 343753063/2046000000 | 2642 | 78:875, 78:185 |
| 78:905 | CEP | lo | 174867/1000000 | 357779597/2046000000 | 2652 | 78:876, 78:191 |
| 78:906 | EPS | lo | 2897/25000 | 25777377275169/222448099733000 | 2797 | 78:5, 78:100, 78:44, 78:8, 78:890, 78:896, 78:178 |
| 78:907 | EFP | lo | 16867/100000 | 267945727169809/1588573841500000 | 2882 | 78:21, 78:150, 78:52, 78:887, 78:860, 78:903, 78:823 |
| 78:908 | FPQ | lo | 130551/1000000 | 4562580009159/34948624513000 | 2890 | 78:21, 78:150, 78:52, 78:887, 78:863, 78:144, 78:898 |
| 78:909 | FPR | lo | 77457/500000 | 5414053079709/34948624513000 | 2891 | 78:21, 78:150, 78:52, 78:887, 78:864, 78:874, 78:204 |
| 78:910 | FPS | lo | 153501/1000000 | 5364660039578077/34948624513000000 | 2892 | 78:21, 78:150, 78:52, 78:887, 78:865, 78:885, 78:587 |
| 78:920 | BEP | lo | 74221/500000 | 32172878743/216737000000 | 3273 | 78:57, 78:888, 78:62, 78:52, 78:881, 78:871, 78:794 |
| 78:921 | BPS | lo | 124413/1000000 | 107859869099/866948000000 | 3279 | 78:57, 78:888, 78:62, 78:52, 78:847, 78:873, 78:126 |
| 78:924 | ACS | lo | 250717/1000000 | 1054416478167/4205593000000 | 3939 | 78:177, 78:218, 78:198, 78:178, 78:902, 78:857, 78:859 |
| 78:925 | AQS | lo | 597/2500 | 251074343963/1051398250000 | 3944 | 78:177, 78:218, 78:198, 78:178, 78:886, 78:863, 78:870 |
| 78:926 | CHS | lo | 202081/1000000 | 106234265213/525699125000 | 3957 | 78:177, 78:218, 78:198, 78:178, 78:904, 78:893, 78:875 |
| 78:927 | CPS | lo | 88641/500000 | 149115438387/841118600000 | 3958 | 78:177, 78:218, 78:198, 78:178, 78:905, 78:882, 78:876 |
| 78:928 | HQS | lo | 174213/1000000 | 732672405649/4205593000000 | 3974 | 78:177, 78:218, 78:198, 78:178, 78:900, 78:898, 78:879 |
| 78:930 | ACF | lo | 37221/125000 | 37221/125000 | 4243 | 78:44, 78:887, 78:882 |
| 78:932 | ACR | lo | 436717/1000000 | 436717/1000000 | 4256 | 78:70, 78:924, 78:168 |
| 78:933 | AEF | lo | 179929/500000 | 179929/500000 | 4258 | 78:44, 78:813, 78:907 |
| 78:934 | AER | lo | 14317/40000 | 14317/40000 | 4271 | 78:70, 78:890, 78:198 |
| 78:935 | AFQ | lo | 326297/1000000 | 326297/1000000 | 4276 | 78:44, 78:891, 78:908 |
| 78:936 | AFR | lo | 170457/500000 | 170457/500000 | 4277 | 78:44, 78:62, 78:909 |
| 78:937 | AFS | lo | 109/320 | 109/320 | 4278 | 78:44, 78:846, 78:910 |
| 78:938 | AHQ | lo | 144373/500000 | 144373/500000 | 4282 | 78:52, 78:891, 78:220 |
| 78:940 | AQR | lo | 531/1250 | 531/1250 | 4291 | 78:70, 78:925, 78:238 |
| 78:941 | BEH | lo | 167221/500000 | 167221/500000 | 4318 | 78:108, 78:920, 78:180 |
| 78:942 | BER | lo | 309531/1000000 | 309531/1000000 | 4327 | 78:126, 78:896, 78:198 |
| 78:943 | BHR | lo | 329279/1000000 | 329279/1000000 | 4339 | 78:108, 78:728, 78:888 |
| 78:944 | BHS | lo | 311811/1000000 | 311811/1000000 | 4340 | 78:108, 78:921, 78:853 |
| 78:945 | CFR | lo | 310429/1000000 | 310429/1000000 | 4372 | 78:168, 78:885, 78:218 |
| 78:946 | CHR | lo | 390901/1000000 | 390901/1000000 | 4378 | 78:168, 78:926, 78:894 |
| 78:948 | EHR | lo | 14091/50000 | 14091/50000 | 4398 | 78:198, 78:186, 78:894 |
| 78:949 | EPR | lo | 151191/500000 | 151191/500000 | 4401 | 78:198, 78:906, 78:770 |
| 78:950 | FQR | lo | 77713/250000 | 77713/250000 | 4412 | 78:218, 78:889, 78:238 |
| 78:951 | HQR | lo | 363033/1000000 | 363033/1000000 | 4416 | 78:894, 78:928, 78:238 |
| 78:953 | ABE | lo | 1263/12500 | 31406875/310834947 | 32 | 78:0, 78:933, 78:4, 78:902, 78:19 |
| 78:955 | BPR | lo | 136957/1000000 | 4961949727/36229871232 | 191 | 78:726, 78:949, 78:62, 78:942, 78:39 |
| 78:957 | CFS | lo | 124431/1000000 | 27497403/220985000 | 336 | 78:924, 78:178, 78:937, 78:138, 78:844 |
| 78:958 | AEQ | lo | 26073/200000 | 480106920/3682767397 | 374 | 78:902, 78:194, 78:934, 78:134, 78:137 |
| 78:959 | ACP | lo | 50237/500000 | 13661421/135969562 | 412 | 78:930, 78:62, 78:932, 78:44, 78:49 |
| 78:960 | AEP | lo | 98189/1000000 | 66753819/679847810 | 512 | 78:933, 78:62, 78:934, 78:44, 78:49 |
| 78:962 | AES | lo | 85963/500000 | 322617/1876480 | 536 | 78:937, 78:198, 78:70, 78:178, 78:219 |
| 78:964 | BEQ | lo | 14957/125000 | 440665620/3682767397 | 724 | 78:72, 78:194, 78:942, 78:134, 78:137 |
| 78:965 | CFH | lo | 14073/100000 | 140730111/1000000000 | 750 | 78:76, 78:204, 78:98, 78:946, 78:113 |
| 78:966 | HRS | lo | 95821/1000000 | 1116279/11649550 | 815 | 78:943, 78:168, 78:126, 78:946, 78:83 |
| 78:968 | FHQ | lo | 69147/500000 | 13046632875/94339591508 | 953 | 78:98, 78:950, 78:897, 78:204, 78:105 |
| 78:970 | EHQ | lo | 56797/500000 | 418343760/3682767397 | 1078 | 78:904, 78:194, 78:134, 78:948, 78:137 |
| 78:972 | ACE | lo | 1979/12500 | 210887863090031/1332031250000000 | 2248 | 78:932, 78:39 |
| 78:974 | CEH | lo | 84007/500000 | 1718791697/10230000000 | 2642 | 78:946, 78:185 |
| 78:976 | FPR | lo | 30983/200000 | 50598757287/326622659000 | 2891 | 78:21, 78:150, 78:52, 78:959, 78:936, 78:945, 78:204 |
| 78:977 | FPS | lo | 153503/1000000 | 487701817843373/3177147683000000 | 2892 | 78:21, 78:150, 78:52, 78:959, 78:937, 78:957, 78:587 |
| 78:978 | CFP | hi | 499423/1000000 | 9014767095685237470513/18050371053875000000000 | 3191 | 78:51, 78:977, 78:846, 78:44, 78:19, 78:957 |
| 78:981 | BEP | lo | 148443/1000000 | 3217311873/21673700000 | 3273 | 78:57, 78:888, 78:62, 78:52, 78:953, 78:941, 78:942 |
| 78:982 | ACS | lo | 250719/1000000 | 3295079168/13142478125 | 3939 | 78:177, 78:218, 78:198, 78:178, 78:972, 78:930, 78:932 |
| 78:983 | AQS | lo | 238801/1000000 | 200860688289/841118600000 | 3944 | 78:177, 78:218, 78:198, 78:178, 78:958, 78:935, 78:940 |
| 78:984 | CHS | lo | 50521/250000 | 84988625289/420559300000 | 3957 | 78:177, 78:218, 78:198, 78:178, 78:974, 78:965, 78:946 |
| 78:985 | HQS | lo | 34843/200000 | 366339700621/2102796500000 | 3974 | 78:177, 78:218, 78:198, 78:178, 78:970, 78:968, 78:951 |
| 78:987 | BQS | lo | 97993/500000 | 35724659/182281250 | 3997 | 78:185, 78:966, 78:198, 78:186, 78:964, 78:618, 78:715 |
| 78:988 | ACF | lo | 297769/1000000 | 297769/1000000 | 4243 | 78:44, 78:959, 78:882 |
| 78:990 | ACR | lo | 436719/1000000 | 436719/1000000 | 4256 | 78:70, 78:982, 78:168 |
| 78:991 | AEF | lo | 359859/1000000 | 359859/1000000 | 4258 | 78:44, 78:960, 78:907 |
| 78:993 | AER | lo | 178963/500000 | 178963/500000 | 4271 | 78:70, 78:962, 78:198 |
| 78:994 | AFR | lo | 68183/200000 | 68183/200000 | 4277 | 78:44, 78:62, 78:976 |
| 78:995 | AFS | lo | 340627/1000000 | 340627/1000000 | 4278 | 78:44, 78:846, 78:977 |
| 78:996 | AQR | lo | 424801/1000000 | 424801/1000000 | 4291 | 78:70, 78:983, 78:238 |
| 78:997 | BEH | lo | 334443/1000000 | 334443/1000000 | 4318 | 78:108, 78:981, 78:180 |
| 78:998 | BHR | lo | 1029/3125 | 1029/3125 | 4339 | 78:108, 78:955, 78:888 |
| 78:999 | BQR | lo | 190993/500000 | 190993/500000 | 4347 | 78:126, 78:987, 78:238 |
| 78:1000 | CFR | lo | 310431/1000000 | 310431/1000000 | 4372 | 78:168, 78:957, 78:218 |
| 78:1001 | CHR | lo | 78181/200000 | 78181/200000 | 4378 | 78:168, 78:984, 78:966 |
| 78:1002 | EHR | lo | 281821/1000000 | 281821/1000000 | 4398 | 78:198, 78:186, 78:966 |
| 78:1004 | HQR | lo | 90759/250000 | 90759/250000 | 4416 | 78:966, 78:985, 78:238 |
| 78:1007 | AEQ | lo | 65183/500000 | 480108780/3682767397 | 374 | 78:972, 78:194, 78:993, 78:134, 78:137 |
| 78:1008 | FQS | lo | 62427/500000 | 27590933927/220985000000 | 531 | 78:995, 78:838, 78:983, 78:178, 78:844 |
| 78:1009 | AES | lo | 171927/1000000 | 40327311/234560000 | 536 | 78:995, 78:198, 78:70, 78:178, 78:219 |
| 78:1010 | CFH | lo | 140731/1000000 | 140731227/1000000000 | 750 | 78:76, 78:204, 78:98, 78:1001, 78:113 |
| 78:1011 | HRS | lo | 47911/500000 | 4465147/46598200 | 815 | 78:998, 78:168, 78:126, 78:1001, 78:83 |
| 78:1012 | EHQ | lo | 22719/200000 | 418346550/3682767397 | 1078 | 78:974, 78:194, 78:134, 78:1002, 78:137 |
| 78:1014 | ACE | lo | 158321/1000000 | 210888828877317/1332031250000000 | 2248 | 78:990, 78:39 |
| 78:1015 | CEF | lo | 182811/1000000 | 56671596649/310000000000 | 2617 | 78:1000, 78:177 |
| 78:1016 | CEH | lo | 10501/62500 | 343761857/2046000000 | 2642 | 78:1001, 78:185 |
| 78:1017 | EFP | lo | 168671/1000000 | 2947412298867899/17474312256500000 | 2882 | 78:21, 78:150, 78:52, 78:959, 78:991, 78:1015, 78:823 |
| 78:1020 | PRS | lo | 93503/1000000 | 48779337/521687000 | 3622 | 78:99, 78:200, 78:108, 78:100, 78:126, 78:218, 78:1011 |
| 78:1021 | ACS | lo | 1567/6250 | 1054430469353/4205593000000 | 3939 | 78:177, 78:218, 78:198, 78:178, 78:1014, 78:988, 78:990 |
| 78:1022 | AQS | lo | 119401/500000 | 502153358519/2102796500000 | 3944 | 78:177, 78:218, 78:198, 78:178, 78:1007, 78:935, 78:996 |
| 78:1023 | CHS | lo | 101043/500000 | 121413454069/600799000000 | 3957 | 78:177, 78:218, 78:198, 78:178, 78:1016, 78:1010, 78:1001 |
| 78:1024 | HQS | lo | 21777/125000 | 146536907367/841118600000 | 3974 | 78:177, 78:218, 78:198, 78:178, 78:1012, 78:968, 78:1004 |
| 78:1025 | ACR | lo | 5459/12500 | 5459/12500 | 4256 | 78:70, 78:1021, 78:168 |
| 78:1026 | AEF | lo | 17993/50000 | 17993/50000 | 4258 | 78:44, 78:960, 78:1017 |
| 78:1027 | AER | lo | 357927/1000000 | 357927/1000000 | 4271 | 78:70, 78:1009, 78:198 |
| 78:1028 | AQR | lo | 212401/500000 | 212401/500000 | 4291 | 78:70, 78:1022, 78:238 |
| 78:1029 | CHR | lo | 97727/250000 | 97727/250000 | 4378 | 78:168, 78:1023, 78:1011 |
| 78:1030 | CPR | lo | 72757/200000 | 72757/200000 | 4381 | 78:168, 78:927, 78:1020 |
| 78:1031 | EHR | lo | 140911/500000 | 140911/500000 | 4398 | 78:198, 78:186, 78:1011 |
| 78:1033 | FQR | lo | 155427/500000 | 155427/500000 | 4412 | 78:218, 78:1008, 78:238 |
| 78:1034 | HQR | lo | 181519/500000 | 181519/500000 | 4416 | 78:1011, 78:1024, 78:238 |
| 78:1036 | ABE | lo | 101041/1000000 | 3234939125/32015999541 | 32 | 78:0, 78:1026, 78:4, 78:1014, 78:19 |
| 78:1037 | CFS | lo | 7777/62500 | 54995271/441970000 | 336 | 78:1021, 78:178, 78:995, 78:138, 78:844 |
| 78:1039 | CFH | lo | 35183/250000 | 4397877/31250000 | 750 | 78:76, 78:204, 78:98, 78:1029, 78:113 |
| 78:1040 | FHQ | lo | 27659/200000 | 13046702625/94339591508 | 953 | 78:98, 78:1033, 78:897, 78:204, 78:105 |
| 78:1041 | EHQ | lo | 28399/250000 | 418349340/3682767397 | 1078 | 78:1016, 78:194, 78:134, 78:1031, 78:137 |
| 78:1042 | CEH | lo | 168017/1000000 | 429705619/2557500000 | 2642 | 78:1029, 78:185 |
| 78:1043 | CEP | lo | 174869/1000000 | 4616549/26400000 | 2652 | 78:1030, 78:191 |
| 78:1044 | FPS | lo | 4797/31250 | 335297160700101/2184289032062500 | 2892 | 78:21, 78:150, 78:52, 78:959, 78:995, 78:1037, 78:587 |
| 78:1045 | BEP | lo | 37111/250000 | 32173312217/216737000000 | 3273 | 78:57, 78:888, 78:62, 78:52, 78:1036, 78:997, 78:942 |
| 78:1046 | ABS | lo | 32463/200000 | 682631952313/4205593000000 | 3938 | 78:177, 78:218, 78:198, 78:178, 78:1036, 78:4, 78:726 |
| 78:1047 | ACS | lo | 250721/1000000 | 1054431399353/4205593000000 | 3939 | 78:177, 78:218, 78:198, 78:178, 78:1014, 78:988, 78:1025 |
| 78:1048 | CHS | lo | 25261/125000 | 212475061019/1051398250000 | 3957 | 78:177, 78:218, 78:198, 78:178, 78:1042, 78:1039, 78:1029 |
| 78:1049 | CPS | lo | 177283/1000000 | 21302338341/120159800000 | 3958 | 78:177, 78:218, 78:198, 78:178, 78:1043, 78:882, 78:1030 |
| 78:1050 | HQS | lo | 174217/1000000 | 26167488301/150199750000 | 3974 | 78:177, 78:218, 78:198, 78:178, 78:1041, 78:1040, 78:1034 |
| 78:1051 | ACR | lo | 436721/1000000 | 436721/1000000 | 4256 | 78:70, 78:1047, 78:168 |
| 78:1052 | AFS | lo | 85157/250000 | 85157/250000 | 4278 | 78:44, 78:846, 78:1044 |
| 78:1053 | BEH | lo | 83611/250000 | 83611/250000 | 4318 | 78:108, 78:1045, 78:180 |
| 78:1055 | CHR | lo | 39091/100000 | 39091/100000 | 4378 | 78:168, 78:1048, 78:1011 |
| 78:1056 | CPR | lo | 181893/500000 | 181893/500000 | 4381 | 78:168, 78:1049, 78:1020 |
| 78:1057 | HQR | lo | 363039/1000000 | 363039/1000000 | 4416 | 78:1011, 78:1050, 78:238 |
| 78:1058 | BFS | lo | 81111/500000 | 1508829/9301000 | 261 | 78:1046, 78:218, 78:1052, 78:126, 78:850 |
| 78:1059 | HPR | lo | 24831/250000 | 1930959/19441000 | 445 | 78:52, 78:1056, 78:62, 78:150, 78:244 |
| 78:1063 | CEH | lo | 84009/500000 | 5544617/33000000 | 2642 | 78:1055, 78:185 |
| 78:1065 | HQS | lo | 87109/500000 | 183172650607/1051398250000 | 3974 | 78:177, 78:218, 78:198, 78:178, 78:1041, 78:1040, 78:1057 |
| 78:1068 | BHR | lo | 329281/1000000 | 329281/1000000 | 4339 | 78:108, 78:955, 78:1059 |
| 78:1071 | HRS | lo | 95823/1000000 | 22325921/232991000 | 815 | 78:1068, 78:168, 78:126, 78:1055, 78:83 |
| 78:1073 | CHR | lo | 390911/1000000 | 390911/1000000 | 4378 | 78:168, 78:1048, 78:1071 |
| 78:1074 | EHR | lo | 281823/1000000 | 281823/1000000 | 4398 | 78:198, 78:186, 78:1071 |
| 78:1075 | HQR | lo | 363041/1000000 | 363041/1000000 | 4416 | 78:1071, 78:1065, 78:238 |
| 78:1076 | EHQ | lo | 113597/1000000 | 418352130/3682767397 | 1078 | 78:1063, 78:194, 78:134, 78:1074, 78:137 |
| 78:1077 | CEH | lo | 168019/1000000 | 1718835667/10230000000 | 2642 | 78:1073, 78:185 |
| 78:1078 | CHS | lo | 202089/1000000 | 30353746217/150199750000 | 3957 | 78:177, 78:218, 78:198, 78:178, 78:1077, 78:1039, 78:1073 |
| 78:1079 | HQS | lo | 174219/1000000 | 732694808021/4205593000000 | 3974 | 78:177, 78:218, 78:198, 78:178, 78:1076, 78:1040, 78:1075 |
| 78:1080 | CHR | lo | 6108/15625 | 6108/15625 | 4378 | 78:168, 78:1078, 78:1071 |
| 78:1082 | CFH | lo | 140733/1000000 | 7036659/50000000 | 750 | 78:76, 78:204, 78:98, 78:1080, 78:113 |

## Stage 79

| Property | Value |
| --- | --- |
| Scope | root/ACP+/HBP+/AEP+/AFP-/APR-/ARS-/BRS-/BFP+/CRS+ |
| Packet | forest:root/ACP+/HBP+/AEP+/AFP-/APR-/ARS-/BRS-/BFP+/CRS+ |
| Index | 2 |
| Context | 27 |
| Box present | yes |
| Coarse version | 2 |
| Parent box | 78 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 33263/250000 | 277659/500000 | 33263/250000 | 27753/50000 |
| b | 13409/125000 | 349/1000 | 13409/125000 | 349/1000 |
| c | 135501/250000 | 161249/200000 | 135501/250000 | 161249/200000 |
| e | 4167/10000 | 306519/500000 | 4167/10000 | 306519/500000 |
| f | 279/1000 | 521687/1000000 | 279/1000 | 521687/1000000 |
| h | 672257/1000000 | 1/1 | 672257/1000000 | 1/1 |
| p | 24309/200000 | 76547/200000 | 24309/200000 | 76547/200000 |
| q | 64669/200000 | 733897/1000000 | 323347/1000000 | 733897/1000000 |
| u | 793109/1000000 | 1/1 | 793109/1000000 | 1/1 |
| v | 33263/250000 | 20499/50000 | 33263/250000 | 20499/50000 |
| r | 757313/1000000 | 1/1 | 757313/1000000 | 1/1 |
| w | 401831/500000 | 1/1 | 401831/500000 | 1/1 |
| j | 638837/1000000 | 840563/1000000 | 638837/1000000 | 840563/1000000 |
| k | 337337/500000 | 871013/1000000 | 337337/500000 | 871013/1000000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 947 | AREA_lo_AFS | brtt ["earlier-area",{"direction":"lo","ref":"78:1052","triangle":"AFS","value":"85157/250000"}] | `-1/1 * f * k + 1/1 * a * f + 1/1 * j + -1/1 * a * j + -85157/250000` |
| 959 | AREA_lo_APS | brtt ["earlier-area",{"direction":"lo","ref":"78:846","triangle":"APS","value":"23531/250000"}] | `-1/1 * p * k + 1/1 * a * p + 1/1 * q * j + -1/1 * a * j + -23531/250000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 947 | a | 33263/250000 | 277659/500000 | 33263/250000 | 155850477/280781500 | 33263/250000 | 27753/50000 | `(-359837/1000000, 54987477/500000000); (-2343/20000, -26879827519/500000000000); (-561563/1000000, 155850477/500000000); (-79719/250000, 73983172481/500000000000); (-359837/1000000, 55196373/1000000000); (-2343/20000, -156187158931/1000000000000); (-561563/1000000, 256922373/1000000000); (-79719/250000, 45538841069/1000000000000)` |
| 1 | 959 | q | 64669/200000 | 733897/1000000 | 135897017133/420281500000 | 733897/1000000 | 323347/1000000 | 733897/1000000 | `(638837/1000000, -122476993257/500000000000); (638837/1000000, -9265106977/20000000000); (638837/1000000, -193210118347/500000000000); (638837/1000000, -49449732951/100000000000); (840563/1000000, -135897017133/500000000000); (840563/1000000, -57522538241/100000000000); (840563/1000000, -206630142223/500000000000); (840563/1000000, -60646736307/100000000000); (638837/1000000, -268818010269/1000000000000); (638837/1000000, -97423874521/200000000000); (638837/1000000, -461566043859/1000000000000); (638837/1000000, -22785725467/40000000000); (840563/1000000, -295658058021/1000000000000); (840563/1000000, -119817881233/200000000000); (840563/1000000, -488406091611/1000000000000); (840563/1000000, -136322634047/200000000000)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 79:0 | ABC | lo | 93/1000 | occupants none |
| 79:4 | ABF | lo | 279/1000 | occupants P |
| 79:5 | ABF | hi | 22242582311/50000000000 | vertex maximum 22242582311/50000000000 |
| 79:8 | ABP | lo | 93/1000 | occupants none |
| 79:12 | ABR | lo | 200173/1000000 | earlier 78:726; ABR; lo; 200173/1000000 |
| 79:14 | ABS | lo | 32463/200000 | earlier 78:1046; ABS; lo; 32463/200000 |
| 79:16 | ACE | lo | 158321/1000000 | earlier 78:1014; ACE; lo; 158321/1000000 |
| 79:18 | ACF | lo | 297769/1000000 | earlier 78:988; ACF; lo; 297769/1000000 |
| 79:19 | ACF | hi | 96047998623/125000000000 | vertex maximum 96047998623/125000000000 |
| 79:21 | ACH | hi | 34948624513/50000000000 | vertex maximum 34948624513/50000000000 |
| 79:22 | ACP | lo | 50237/500000 | earlier 78:959; ACP; lo; 50237/500000 |
| 79:26 | ACR | lo | 436721/1000000 | earlier 78:1051; ACR; lo; 436721/1000000 |
| 79:27 | ACR | hi | 9137906503/10000000000 | vertex maximum 9137906503/10000000000 |
| 79:30 | AEF | lo | 17993/50000 | earlier 78:1026; AEF; lo; 17993/50000 |
| 79:38 | AER | lo | 357927/1000000 | earlier 78:1027; AER; lo; 357927/1000000 |
| 79:39 | AER | hi | 2547412821/3906250000 | vertex maximum 2547412821/3906250000 |
| 79:40 | AES | lo | 171927/1000000 | earlier 78:1009; AES; lo; 171927/1000000 |
| 79:41 | AES | hi | 44197/100000 | earlier 78:844; AES; hi; 44197/100000 |
| 79:44 | AFP | lo | 93/1000 | occupants none |
| 79:46 | AFQ | lo | 326297/1000000 | earlier 78:935; AFQ; lo; 326297/1000000 |
| 79:48 | AFR | lo | 68183/200000 | earlier 78:994; AFR; lo; 68183/200000 |
| 79:49 | AFR | hi | 67984781/100000000 | vertex maximum 67984781/100000000 |
| 79:50 | AFS | lo | 85157/250000 | earlier 78:1052; AFS; lo; 85157/250000 |
| 79:51 | AFS | hi | 144402968431/250000000000 | vertex maximum 144402968431/250000000000 |
| 79:52 | AHP | lo | 93/1000 | occupants none |
| 79:54 | AHQ | lo | 144373/500000 | earlier 78:938; AHQ; lo; 144373/500000 |
| 79:57 | AHR | hi | 216737/250000 | vertex maximum 216737/250000 |
| 79:59 | AHS | hi | 182181/250000 | earlier 78:59; AHS; hi; 182181/250000 |
| 79:62 | APR | lo | 93/1000 | occupants none |
| 79:64 | APS | lo | 23531/250000 | earlier 78:846; APS; lo; 23531/250000 |
| 79:66 | AQR | lo | 212401/500000 | earlier 78:1028; AQR; lo; 212401/500000 |
| 79:69 | AQS | hi | 305751/500000 | earlier 78:69; AQS; hi; 305751/500000 |
| 79:70 | ARS | lo | 93/1000 | occupants none |
| 79:72 | BCE | lo | 164303/1000000 | earlier 78:72; BCE; lo; 164303/1000000 |
| 79:73 | BCE | hi | 214248504987/500000000000 | vertex maximum 214248504987/500000000000 |
| 79:74 | BCF | lo | 40233/200000 | earlier 78:819; BCF; lo; 40233/200000 |
| 79:76 | BCH | lo | 85131/250000 | earlier 78:76; BCH; lo; 85131/250000 |
| 79:80 | BCQ | lo | 93/1000 | occupants none |
| 79:82 | BCR | lo | 6547/15625 | earlier 78:82; BCR; lo; 6547/15625 |
| 79:83 | BCR | hi | 698973/1000000 | vertex maximum 698973/1000000 |
| 79:84 | BCS | lo | 14563/62500 | earlier 78:84; BCS; lo; 14563/62500 |
| 79:85 | BCS | hi | 512973/1000000 | earlier 78:85; BCS; hi; 512973/1000000 |
| 79:88 | BEH | lo | 83611/250000 | earlier 78:1053; BEH; lo; 83611/250000 |
| 79:92 | BEQ | lo | 14957/125000 | earlier 78:964; BEQ; lo; 14957/125000 |
| 79:94 | BER | lo | 309531/1000000 | earlier 78:942; BER; lo; 309531/1000000 |
| 79:96 | BES | lo | 123531/1000000 | earlier 78:896; BES; lo; 123531/1000000 |
| 79:97 | BES | hi | 434517/1000000 | earlier 78:97; BES; hi; 434517/1000000 |
| 79:98 | BFH | lo | 279/1000 | occupants P |
| 79:100 | BFP | lo | 93/1000 | occupants none |
| 79:106 | BFS | lo | 81111/500000 | earlier 78:1058; BFS; lo; 81111/500000 |
| 79:108 | BHP | lo | 93/1000 | occupants none |
| 79:110 | BHQ | lo | 13443/40000 | earlier 78:618; BHQ; lo; 13443/40000 |
| 79:113 | BHR | hi | 1/1 | vertex maximum 1/1 |
| 79:114 | BHS | lo | 311811/1000000 | earlier 78:944; BHS; lo; 311811/1000000 |
| 79:122 | BQR | lo | 190993/500000 | earlier 78:999; BQR; lo; 190993/500000 |
| 79:125 | BQS | hi | 579321/1000000 | earlier 78:125; BQS; hi; 579321/1000000 |
| 79:126 | BRS | lo | 93/1000 | occupants none |
| 79:130 | CEH | lo | 168019/1000000 | earlier 78:1077; CEH; lo; 168019/1000000 |
| 79:132 | CEP | lo | 174869/1000000 | earlier 78:1043; CEP; lo; 174869/1000000 |
| 79:134 | CEQ | lo | 93/1000 | occupants none |
| 79:137 | CER | hi | 3682767397/10000000000 | vertex maximum 3682767397/10000000000 |
| 79:138 | CES | lo | 93/1000 | occupants none |
| 79:139 | CES | hi | 35141/100000 | earlier 78:139; CES; hi; 35141/100000 |
| 79:140 | CFH | lo | 140733/1000000 | earlier 78:1082; CFH; lo; 140733/1000000 |
| 79:143 | CFP | hi | 499423/1000000 | earlier 78:978; CFP; hi; 499423/1000000 |
| 79:147 | CFR | hi | 721/1000 | vertex maximum 721/1000 |
| 79:150 | CHP | lo | 93/1000 | occupants none |
| 79:154 | CHR | lo | 6108/15625 | earlier 78:1080; CHR; lo; 6108/15625 |
| 79:156 | CHS | lo | 202089/1000000 | earlier 78:1078; CHS; lo; 202089/1000000 |
| 79:160 | CPR | lo | 181893/500000 | earlier 78:1056; CPR; lo; 181893/500000 |
| 79:168 | CRS | lo | 93/1000 | occupants none |
| 79:170 | EFH | lo | 65723/500000 | earlier 78:823; EFH; lo; 65723/500000 |
| 79:172 | EFP | lo | 168671/1000000 | earlier 78:1017; EFP; lo; 168671/1000000 |
| 79:176 | EFR | lo | 279/1000 | occupants S |
| 79:177 | EFR | hi | 4205593/10000000 | vertex maximum 4205593/10000000 |
| 79:178 | EFS | lo | 93/1000 | occupants none |
| 79:180 | EHP | lo | 93/1000 | occupants none |
| 79:185 | EHR | hi | 5833/10000 | vertex maximum 5833/10000 |
| 79:186 | EHS | lo | 93/1000 | occupants none |
| 79:189 | EPQ | hi | 104153/250000 | earlier 78:760; EPQ; hi; 104153/250000 |
| 79:191 | EPR | hi | 17/32 | earlier 78:191; EPR; hi; 17/32 |
| 79:194 | EQR | lo | 93/1000 | occupants none |
| 79:196 | EQS | lo | 48401/500000 | earlier 78:838; EQS; lo; 48401/500000 |
| 79:198 | ERS | lo | 93/1000 | occupants none |
| 79:200 | FHP | lo | 93/1000 | occupants none |
| 79:202 | FHQ | lo | 27659/200000 | earlier 78:1040; FHQ; lo; 27659/200000 |
| 79:204 | FHR | lo | 93/1000 | occupants none |
| 79:206 | FHS | lo | 63283/500000 | earlier 78:587; FHS; lo; 63283/500000 |
| 79:210 | FPR | lo | 30983/200000 | earlier 78:976; FPR; lo; 30983/200000 |
| 79:211 | FPR | hi | 61731/125000 | earlier 78:211; FPR; hi; 61731/125000 |
| 79:212 | FPS | lo | 4797/31250 | earlier 78:1044; FPS; lo; 4797/31250 |
| 79:218 | FRS | lo | 93/1000 | occupants none |
| 79:219 | FRS | hi | 733/3125 | earlier 78:219; FRS; hi; 733/3125 |
| 79:223 | HPR | hi | 308519/500000 | earlier 78:223; HPR; hi; 308519/500000 |
| 79:228 | HQS | lo | 174219/1000000 | earlier 78:1079; HQS; lo; 174219/1000000 |
| 79:231 | HRS | hi | 7619/25000 | earlier 78:231; HRS; hi; 7619/25000 |
| 79:233 | PQR | hi | 357633/500000 | earlier 78:233; PQR; hi; 357633/500000 |
| 79:236 | PRS | lo | 93503/1000000 | earlier 78:1020; PRS; lo; 93503/1000000 |
| 79:238 | QRS | lo | 93/1000 | occupants none |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 0 | fan | ABF = ABP + BFP + AFP | point P |
| 32 | plu | ABE * ACF = ABC * AEF + ABF * ACE | circuit ABCEF |
| 70 | plu | ABF * CFP = ACF * BFP + AFP * BCF | circuit FABCP |
| 156 | plu | AER * BFR = ABR * EFR + AFR * BER | circuit RABEF |
| 191 | plu | AER * BPR = ABR * EPR + APR * BER | circuit RABEP |
| 336 | plu | AES * CFS = ACS * EFS + AFS * CES | circuit SACEF |
| 374 | plu | AEQ * CER = ACE * EQR + AER * CEQ | circuit EACQR |
| 412 | plu | ACP * AFR = ACF * APR + ACR * AFP | circuit ACFPR |
| 445 | plu | ACP * HPR = AHP * CPR + APR * CHP | circuit PACHR |
| 512 | plu | AEP * AFR = AEF * APR + AER * AFP | circuit AEFPR |
| 531 | plu | AES * FQS = AFS * EQS + AQS * EFS | circuit SAEFQ |
| 536 | plu | AES * FRS = AFS * ERS + ARS * EFS | circuit SAEFR |
| 693 | plu | BCE * CHQ = BCH * CEQ + BCQ * CEH | circuit CBEHQ |
| 723 | plu | BCE * CQR = BCQ * CER + BCR * CEQ | circuit CBEQR |
| 747 | plu | BCF * BHR = BCH * BFR + BCR * BFH | circuit BCFHR |
| 750 | plu | BHR * CFH = BCH * FHR + BFH * CHR | circuit HBCFR |
| 815 | plu | BCR * HRS = BHR * CRS + BRS * CHR | circuit RBCHS |
| 848 | plu | BEF * EHR = BEH * EFR + BER * EFH | circuit EBFHR |
| 916 | plu | BES * HRS = BHS * ERS + BRS * EHS | circuit SBEHR |
| 952 | plu | BFQ * BHR = BFH * BQR + BFR * BHQ | circuit BFHQR |
| 1078 | plu | CER * EHQ = CEH * EQR + CEQ * EHR | circuit ECHQR |
| 1093 | plu | CER * EPQ = CEP * EQR + CEQ * EPR | circuit ECPQR |
| 2248 | support | ACR * AER >= 1023/1000 * (ACR - ACE) | pentagon ACQER |
| 2617 | support | CFR * EFR >= 1023/1000 * (CFR - CEF) | pentagon FCQER |
| 2642 | support | CHR * EHR >= 1023/1000 * (CHR - CEH) | pentagon HCQER |
| 2652 | support | CPR * EPR >= 1023/1000 * (CPR - CEP) | pentagon PCQER |
| 2769 | bary | outer ABF; fans BFP, AFP, ABP; target ACP; sign 1; vertices none 0; ABC -1; ACF 1 | container ABF; inner P; line AC |
| 2786 | bary | outer ABF; fans BFP, AFP, ABP; target CFP; sign 1; vertices ACF 1; BCF 1; none 0 | container ABF; inner P; line CF |
| 2797 | bary | outer ABF; fans BFP, AFP, ABP; target EPS; sign 1; vertices AES 1; BES 1; EFS 1 | container ABF; inner P; line ES |
| 2892 | bary | outer ACH; fans CHP, AHP, ACP; target FPS; sign -1; vertices AFS -1; CFS -1; FHS -1 | container ACH; inner P; line FS |
| 3196 | bary | outer AFS; fans FPS, APS, AFP; target CPS; sign 1; vertices ACS 1; CFS 1; none 0 | container AFS; inner P; line CS |
| 3273 | bary | outer AHR; fans HPR, APR, AHP; target BEP; sign 1; vertices ABE 1; BEH 1; BER 1 | container AHR; inner P; line BE |
| 3279 | bary | outer AHR; fans HPR, APR, AHP; target BPS; sign 1; vertices ABS 1; BHS 1; BRS 1 | container AHR; inner P; line BS |
| 3444 | bary | outer BCR; fans CRS, BRS, BCS; target ACS; sign 1; vertices ABC -1; none 0; ACR 1 | container BCR; inner S; line AC |
| 3461 | bary | outer BCR; fans CRS, BRS, BCS; target CFS; sign -1; vertices BCF 1; none 0; CFR -1 | container BCR; inner S; line CF |
| 3939 | bary | outer EFR; fans FRS, ERS, EFS; target ACS; sign 1; vertices ACE 1; ACF 1; ACR 1 | container EFR; inner S; line AC |
| 3944 | bary | outer EFR; fans FRS, ERS, EFS; target AQS; sign 1; vertices AEQ 1; AFQ 1; AQR 1 | container EFR; inner S; line AQ |
| 3957 | bary | outer EFR; fans FRS, ERS, EFS; target CHS; sign -1; vertices CEH -1; CFH -1; CHR -1 | container EFR; inner S; line CH |
| 3958 | bary | outer EFR; fans FRS, ERS, EFS; target CPS; sign -1; vertices CEP -1; CFP -1; CPR -1 | container EFR; inner S; line CP |
| 3973 | bary | outer EFR; fans FRS, ERS, EFS; target HPS; sign 1; vertices EHP 1; FHP 1; HPR 1 | container EFR; inner S; line HP |
| 3974 | bary | outer EFR; fans FRS, ERS, EFS; target HQS; sign 1; vertices EHQ 1; FHQ 1; HQR 1 | container EFR; inner S; line HQ |
| 4004 | bary | outer EHR; fans HRS, ERS, EHS; target CQS; sign 1; vertices CEQ 1; CHQ 1; CQR 1 | container EHR; inner S; line CQ |
| 4243 | four | 1 * ACF + -1 * AFP + -1 * ACP + -1 * CFP = 0 | vertices ACFP |
| 4247 | four | 1 * ACH + -1 * AHP + -1 * ACP + -1 * CHP = 0 | vertices ACHP |
| 4256 | four | 1 * ACR + -1 * ARS + -1 * ACS + -1 * CRS = 0 | vertices ACRS |
| 4271 | four | 1 * AER + -1 * ARS + -1 * AES + -1 * ERS = 0 | vertices AERS |
| 4278 | four | -1 * AFP + -1 * APS + 1 * AFS + -1 * FPS = 0 | vertices AFPS |
| 4283 | four | -1 * AHP + -1 * APR + 1 * AHR + -1 * HPR = 0 | vertices AHPR |
| 4291 | four | 1 * AQR + -1 * ARS + -1 * AQS + -1 * QRS = 0 | vertices AQRS |
| 4318 | four | 1 * BEH + -1 * BHP + -1 * BEP + -1 * EHP = 0 | vertices BEHP |
| 4327 | four | 1 * BER + -1 * BRS + -1 * BES + -1 * ERS = 0 | vertices BERS |
| 4339 | four | -1 * BHP + -1 * BPR + 1 * BHR + -1 * HPR = 0 | vertices BHPR |
| 4340 | four | -1 * BHP + -1 * BPS + 1 * BHS + -1 * HPS = 0 | vertices BHPS |
| 4372 | four | -1 * CFR + 1 * CRS + 1 * CFS + 1 * FRS = 0 | vertices CFRS |
| 4378 | four | -1 * CHR + 1 * CRS + 1 * CHS + 1 * HRS = 0 | vertices CHRS |
| 4381 | four | -1 * CPR + 1 * CRS + 1 * CPS + 1 * PRS = 0 | vertices CPRS |
| 4398 | four | -1 * EHR + 1 * ERS + 1 * EHS + 1 * HRS = 0 | vertices EHRS |
| 4401 | four | -1 * EPR + 1 * ERS + 1 * EPS + 1 * PRS = 0 | vertices EPRS |
| 4412 | four | 1 * FQR + -1 * FRS + -1 * FQS + -1 * QRS = 0 | vertices FQRS |
| 4416 | four | 1 * HQR + -1 * HRS + -1 * HQS + -1 * QRS = 0 | vertices HQRS |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 79:240 | ABP | hi | 64713/250000 | 12942582311/50000000000 | 0 | 79:5, 79:100, 79:44 |
| 79:243 | CFP | lo | 52153/500000 | 2320043100/22242582311 | 70 | 79:18, 79:100, 79:44, 79:74, 79:5 |
| 79:244 | ACP | hi | 106917/250000 | 1189052877984992157753/2780322788875000000000 | 2769 | 79:5, 79:100, 79:44, 79:8, 79:0, 79:19 |
| 79:255 | EPS | lo | 115883/1000000 | 2577539854923/22242582311000 | 2797 | 79:5, 79:100, 79:44, 79:8, 79:40, 79:96, 79:178 |
| 79:260 | ACS | hi | 658253/1000000 | 1533669770854473/2329910000000000 | 3444 | 79:83, 79:168, 79:126, 79:84, 79:0, 79:27 |
| 79:262 | CPS | lo | 177289/1000000 | 53257755247/300399500000 | 3958 | 79:177, 79:218, 79:198, 79:178, 79:132, 79:243, 79:160 |
| 79:263 | ACF | lo | 14889/50000 | 14889/50000 | 4243 | 79:44, 79:22, 79:243 |
| 79:264 | CPR | lo | 22737/62500 | 22737/62500 | 4381 | 79:168, 79:262, 79:236 |
| 79:265 | EPR | lo | 151193/500000 | 151193/500000 | 4401 | 79:198, 79:255, 79:236 |
| 79:266 | CFP | lo | 26077/250000 | 2320094250/22242582311 | 70 | 79:263, 79:100, 79:44, 79:74, 79:5 |
| 79:267 | BPR | lo | 68479/500000 | 44657947889/326068841088 | 191 | 79:12, 79:265, 79:62, 79:94, 79:39 |
| 79:268 | ACP | lo | 25119/250000 | 68308593/679847810 | 412 | 79:263, 79:62, 79:26, 79:44, 79:49 |
| 79:269 | HPR | lo | 99333/1000000 | 1770069/17819500 | 445 | 79:52, 79:264, 79:62, 79:150, 79:244 |
| 79:270 | CER | lo | 106537/1000000 | 8876943/83322400 | 1093 | 79:132, 79:194, 79:134, 79:265, 79:189 |
| 79:272 | CEP | lo | 21859/125000 | 1355263/7750000 | 2652 | 79:264, 79:191 |
| 79:275 | BPS | lo | 62207/500000 | 21572170779/173389600000 | 3279 | 79:57, 79:269, 79:62, 79:52, 79:14, 79:114, 79:126 |
| 79:277 | ACS | lo | 250723/1000000 | 1054442559353/4205593000000 | 3939 | 79:177, 79:218, 79:198, 79:178, 79:16, 79:263, 79:26 |
| 79:278 | CPS | lo | 44323/250000 | 186405408661/1051398250000 | 3958 | 79:177, 79:218, 79:198, 79:178, 79:272, 79:266, 79:264 |
| 79:279 | HPS | lo | 59/625 | 397009839/4205593000 | 3973 | 79:177, 79:218, 79:198, 79:178, 79:180, 79:200, 79:269 |
| 79:281 | ACF | lo | 37223/125000 | 37223/125000 | 4243 | 79:44, 79:268, 79:266 |
| 79:283 | ACR | lo | 436723/1000000 | 436723/1000000 | 4256 | 79:70, 79:277, 79:168 |
| 79:286 | BHR | lo | 329291/1000000 | 329291/1000000 | 4339 | 79:108, 79:267, 79:269 |
| 79:287 | BHS | lo | 155907/500000 | 155907/500000 | 4340 | 79:108, 79:275, 79:279 |
| 79:288 | CPR | lo | 72759/200000 | 72759/200000 | 4381 | 79:168, 79:278, 79:236 |
| 79:290 | CFP | lo | 104309/1000000 | 2320112850/22242582311 | 70 | 79:281, 79:100, 79:44, 79:74, 79:5 |
| 79:291 | ACP | lo | 100477/1000000 | 68309151/679847810 | 412 | 79:281, 79:62, 79:283, 79:44, 79:49 |
| 79:292 | CQR | lo | 114063/1000000 | 8145947500/71416168329 | 723 | 79:80, 79:270, 79:82, 79:134, 79:73 |
| 79:293 | HRS | lo | 5989/62500 | 2029663/21181000 | 815 | 79:286, 79:168, 79:126, 79:154, 79:83 |
| 79:294 | BES | lo | 30883/250000 | 990729/8020000 | 916 | 79:287, 79:198, 79:126, 79:186, 79:231 |
| 79:295 | ACE | lo | 79161/500000 | 210890760451889/1332031250000000 | 2248 | 79:283, 79:39 |
| 79:296 | CEP | lo | 87437/500000 | 47705651/272800000 | 2652 | 79:288, 79:191 |
| 79:297 | ACS | lo | 10029/40000 | 527225242473/2102796500000 | 3939 | 79:177, 79:218, 79:198, 79:178, 79:295, 79:281, 79:283 |
| 79:298 | CPS | lo | 88647/500000 | 745628630237/4205593000000 | 3958 | 79:177, 79:218, 79:198, 79:178, 79:296, 79:290, 79:288 |
| 79:299 | ACF | lo | 148893/500000 | 148893/500000 | 4243 | 79:44, 79:291, 79:290 |
| 79:301 | ACR | lo | 17469/40000 | 17469/40000 | 4256 | 79:70, 79:297, 79:168 |
| 79:302 | BER | lo | 77383/250000 | 77383/250000 | 4327 | 79:126, 79:294, 79:198 |
| 79:303 | CHR | lo | 390913/1000000 | 390913/1000000 | 4378 | 79:168, 79:156, 79:293 |
| 79:304 | CPR | lo | 363797/1000000 | 363797/1000000 | 4381 | 79:168, 79:298, 79:236 |
| 79:307 | BFR | lo | 247451/1000000 | 40343092195/163034420544 | 156 | 79:12, 79:176, 79:48, 79:302, 79:39 |
| 79:309 | AEQ | lo | 130367/1000000 | 25269030/193829863 | 374 | 79:295, 79:194, 79:38, 79:134, 79:137 |
| 79:310 | HPR | lo | 49667/500000 | 14160707/142556000 | 445 | 79:52, 79:304, 79:62, 79:150, 79:244 |
| 79:311 | BCF | lo | 100583/500000 | 50291559081/250000000000 | 747 | 79:76, 79:307, 79:82, 79:98, 79:113 |
| 79:312 | BFQ | lo | 23717/125000 | 7589447553/40000000000 | 952 | 79:98, 79:122, 79:307, 79:110, 79:113 |
| 79:313 | CER | lo | 53269/500000 | 317037/2975800 | 1093 | 79:296, 79:194, 79:134, 79:265, 79:189 |
| 79:315 | ACE | lo | 158323/1000000 | 8435669049567/53281250000000 | 2248 | 79:301, 79:39 |
| 79:316 | CEP | lo | 1399/8000 | 715588699/4092000000 | 2652 | 79:304, 79:191 |
| 79:317 | CFP | lo | 10431/100000 | 2320126800/22242582311 | 2786 | 79:5, 79:100, 79:44, 79:8, 79:299, 79:311 |
| 79:318 | CFS | hi | 502373/1000000 | 23409673/46598200 | 3461 | 79:83, 79:168, 79:126, 79:84, 79:311, 79:147 |
| 79:319 | ACS | lo | 250727/1000000 | 150636650077/600799000000 | 3939 | 79:177, 79:218, 79:198, 79:178, 79:315, 79:299, 79:301 |
| 79:320 | AQS | lo | 238803/1000000 | 1004309992631/4205593000000 | 3944 | 79:177, 79:218, 79:198, 79:178, 79:309, 79:46, 79:66 |
| 79:322 | CHS | lo | 20209/100000 | 121415585667/600799000000 | 3957 | 79:177, 79:218, 79:198, 79:178, 79:130, 79:140, 79:303 |
| 79:323 | CPS | lo | 35459/200000 | 74563376583/420559300000 | 3958 | 79:177, 79:218, 79:198, 79:178, 79:316, 79:317, 79:304 |
| 79:324 | ACF | lo | 297787/1000000 | 297787/1000000 | 4243 | 79:44, 79:291, 79:317 |
| 79:325 | ACR | lo | 436727/1000000 | 436727/1000000 | 4256 | 79:70, 79:319, 79:168 |
| 79:326 | AHR | lo | 142667/500000 | 142667/500000 | 4283 | 79:52, 79:62, 79:310 |
| 79:327 | AQR | lo | 424803/1000000 | 424803/1000000 | 4291 | 79:70, 79:320, 79:238 |
| 79:328 | BHR | lo | 82323/250000 | 82323/250000 | 4339 | 79:108, 79:267, 79:310 |
| 79:330 | CHR | lo | 195457/500000 | 195457/500000 | 4378 | 79:168, 79:322, 79:293 |
| 79:331 | CPR | lo | 181899/500000 | 181899/500000 | 4381 | 79:168, 79:323, 79:236 |
| 79:332 | ABE | lo | 50521/500000 | 3234962375/32015999541 | 32 | 79:0, 79:30, 79:4, 79:315, 79:19 |
| 79:333 | ACP | lo | 50239/500000 | 34154901/339923905 | 412 | 79:324, 79:62, 79:325, 79:44, 79:49 |
| 79:334 | HRS | lo | 3833/40000 | 11163193/116495500 | 815 | 79:328, 79:168, 79:126, 79:330, 79:83 |
| 79:335 | ACE | lo | 39581/250000 | 210892692026461/1332031250000000 | 2248 | 79:325, 79:39 |
| 79:336 | CEH | lo | 8401/50000 | 859424429/5115000000 | 2642 | 79:330, 79:185 |
| 79:337 | CPS | hi | 131717/250000 | 76081292648611043/144402968431000000 | 3196 | 79:51, 79:212, 79:64, 79:44, 79:260, 79:318 |
| 79:338 | BEP | lo | 29689/200000 | 16086764477/108368500000 | 3273 | 79:57, 79:310, 79:62, 79:52, 79:332, 79:88, 79:302 |
| 79:339 | ACS | lo | 31341/125000 | 263615421533/1051398250000 | 3939 | 79:177, 79:218, 79:198, 79:178, 79:335, 79:324, 79:325 |
| 79:340 | ACF | lo | 74447/250000 | 74447/250000 | 4243 | 79:44, 79:333, 79:317 |
| 79:341 | ACH | lo | 143239/500000 | 143239/500000 | 4247 | 79:52, 79:333, 79:150 |
| 79:343 | BEH | lo | 66889/200000 | 66889/200000 | 4318 | 79:108, 79:338, 79:180 |
| 79:344 | CHR | lo | 78183/200000 | 78183/200000 | 4378 | 79:168, 79:322, 79:334 |
| 79:345 | EHR | lo | 11273/40000 | 11273/40000 | 4398 | 79:198, 79:186, 79:334 |
| 79:346 | HQR | lo | 90761/250000 | 90761/250000 | 4416 | 79:334, 79:228, 79:238 |
| 79:347 | CFS | lo | 62217/500000 | 13749027/110492500 | 336 | 79:339, 79:178, 79:50, 79:138, 79:41 |
| 79:348 | CHQ | lo | 110373/1000000 | 7882432000/71416168329 | 693 | 79:76, 79:134, 79:80, 79:336, 79:73 |
| 79:349 | CFH | lo | 70367/500000 | 140734017/1000000000 | 750 | 79:76, 79:204, 79:98, 79:344, 79:113 |
| 79:350 | BEF | lo | 114861/500000 | 4187403071/18228125000 | 848 | 79:343, 79:176, 79:302, 79:170, 79:185 |
| 79:351 | EHQ | lo | 56799/500000 | 418355850/3682767397 | 1078 | 79:336, 79:194, 79:134, 79:345, 79:137 |
| 79:352 | FPS | lo | 30701/200000 | 2682405098725321/17474312256500000 | 2892 | 79:21, 79:150, 79:52, 79:333, 79:50, 79:347, 79:206 |
| 79:353 | CHS | lo | 202091/1000000 | 424957117631/2102796500000 | 3957 | 79:177, 79:218, 79:198, 79:178, 79:336, 79:349, 79:344 |
| 79:354 | HQS | lo | 8711/50000 | 366349971807/2102796500000 | 3974 | 79:177, 79:218, 79:198, 79:178, 79:351, 79:202, 79:346 |
| 79:355 | CQS | lo | 12391/125000 | 7227681/72912500 | 4004 | 79:185, 79:334, 79:198, 79:186, 79:134, 79:348, 79:292 |
| 79:356 | AFS | lo | 340629/1000000 | 340629/1000000 | 4278 | 79:44, 79:64, 79:352 |
| 79:357 | CFR | lo | 155217/500000 | 155217/500000 | 4372 | 79:168, 79:347, 79:218 |
| 79:358 | CHR | lo | 97729/250000 | 97729/250000 | 4378 | 79:168, 79:353, 79:334 |
| 79:359 | HQR | lo | 72609/200000 | 72609/200000 | 4416 | 79:334, 79:354, 79:238 |
| 79:360 | FQS | lo | 24971/200000 | 27591123729/220985000000 | 531 | 79:356, 79:196, 79:320, 79:178, 79:41 |
| 79:361 | AES | lo | 21491/125000 | 40327497/234560000 | 536 | 79:356, 79:198, 79:70, 79:178, 79:219 |
| 79:362 | CEF | lo | 182813/1000000 | 10054735283/55000000000 | 2617 | 79:357, 79:177 |
| 79:363 | CEH | lo | 168021/1000000 | 429714413/2557500000 | 2642 | 79:358, 79:185 |
| 79:365 | AER | lo | 44741/125000 | 44741/125000 | 4271 | 79:70, 79:361, 79:198 |
| 79:366 | FQR | lo | 62171/200000 | 62171/200000 | 4412 | 79:218, 79:360, 79:238 |
| 79:367 | AEP | lo | 9819/100000 | 33377142/339923905 | 512 | 79:30, 79:62, 79:365, 79:44, 79:49 |
