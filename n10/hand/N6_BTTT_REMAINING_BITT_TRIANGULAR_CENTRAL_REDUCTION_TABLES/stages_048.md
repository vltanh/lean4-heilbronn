# BITT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 240

| Property | Value |
| --- | --- |
| Scope | root/ACP-/HEQ-/HRS-/ARS-/PQR+ |
| Packet | forest:root/ACP-/HEQ-/HRS-/ARS-/PQR+ |
| Index | 1 |
| Context | 101 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 239 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 40433/125000 | 59/125 | 40433/125000 | 59/125 |
| b | 17183/125000 | 408899/1000000 | 17183/125000 | 408899/1000000 |
| c | 145713/200000 | 1/1 | 145713/200000 | 1/1 |
| e | 40433/125000 | 59/125 | 40433/125000 | 59/125 |
| f | 40433/125000 | 293803/500000 | 40433/125000 | 293803/500000 |
| h | 13857/20000 | 1/1 | 13857/20000 | 1/1 |
| p | 64959/250000 | 143633/250000 | 64959/250000 | 143633/250000 |
| q | 107821/1000000 | 128179/500000 | 107821/1000000 | 128179/500000 |
| u | 329281/1000000 | 170663/200000 | 7254/15625 | 802967/1000000 |
| v | 6509/50000 | 36657/50000 | 154349/1000000 | 379/1000 |
| r | 367929/500000 | 1/1 | 367929/500000 | 1/1 |
| w | 367929/500000 | 1/1 | 367929/500000 | 1/1 |
| j | 74799/125000 | 107817/125000 | 74799/125000 | 107817/125000 |
| k | 74799/125000 | 107817/125000 | 74799/125000 | 107817/125000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 29 | A_AEQ | bitt ["actual-area","AEQ",[]] | `-1/1 * v + 1/1 * a + 1/1 * e * u + -1/1 * a * u + -93/1000` |
| 71 | A_CEQ | bitt ["actual-area","CEQ",[]] | `1/1 * v + -1/1 * c * v + -1/1 * e * u + 1/1 * c * e + -93/1000` |
| 80 | A_CHQ | bitt ["actual-area","CHQ",[]] | `1/1 * c * v + 1/1 * h * u + -1/1 * c * h + -93/1000` |
| 83 | A_CPQ | bitt ["actual-area","CPQ",[]] | `-1/1 * p * v + 1/1 * c * v + 1/1 * q * u + -1/1 * c * q + -93/1000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 29 | v | 6509/50000 | 36657/50000 | 6509/50000 | 379/1000 | 6509/50000 | 379/1000 | `(-1/1, 3601/15625); (-1/1, 41261239673/125000000000); (-1/1, 34921760327/125000000000); (-1/1, 379/1000); (-1/1, 6306300079/25000000000); (-1/1, 8930299921/25000000000)` |
| 1 | 71 | u | 329281/1000000 | 170663/200000 | 329281/1000000 | 379/472 | 329281/1000000 | 802967/1000000 | `(-40433/125000, 8899997873/50000000000); (-40433/125000, 3601/15625); (-59/125, 2862180883/10000000000); (-59/125, 379/1000); (-40433/125000, 3069230177/12500000000); (-59/125, 70751309/200000000)` |
| 2 | 80 | u | 329281/1000000 | 802967/1000000 | 428880167/923800000 | 802967/1000000 | 7254/15625 | 802967/1000000 | `(13857/20000, -10058833371/20000000000); (13857/20000, -65567/100000); (1/1, -7267204083/10000000000); (1/1, -48141/50000); (13857/20000, -1286640501/4000000000); (13857/20000, -8137/20000); (1/1, -109087773/200000000); (1/1, -357/500)` |
| 3 | 83 | v | 6509/50000 | 379/1000 | 114244295093/740164000000 | 379/1000 | 154349/1000000 | 379/1000 | `(468729/1000000, -121498060689/1000000000000); (185041/250000, -2355694591/15625000000); (154033/1000000, -121498060689/1000000000000); (106367/250000, -2355694591/15625000000); (468729/1000000, -80378863311/500000000000); (185041/250000, -1799548909/7812500000); (154033/1000000, -80378863311/500000000000); (106367/250000, -1799548909/7812500000); (468729/1000000, -42488950979/500000000000); (185041/250000, -114244295093/1000000000000); (154033/1000000, -42488950979/500000000000); (106367/250000, -114244295093/1000000000000); (468729/1000000, -18481613021/250000000000); (185041/250000, -71755492907/500000000000); (154033/1000000, -18481613021/250000000000); (106367/250000, -71755492907/500000000000)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 240:0 | ABC | lo | 279/1000 | occupants P |
| 240:1 | ABC | hi | 6361203/15625000 | vertex maximum 6361203/15625000 |
| 240:3 | ABE | hi | 59/125 | vertex maximum 59/125 |
| 240:4 | ABF | lo | 93/1000 | occupants none |
| 240:6 | ABH | lo | 93/1000 | occupants none |
| 240:8 | ABP | lo | 93/1000 | occupants none |
| 240:12 | ABR | lo | 79721/500000 | earlier 239:237; ABR; lo; 79721/500000 |
| 240:13 | ABR | hi | 42993667/62500000 | vertex maximum 42993667/62500000 |
| 240:16 | ACE | lo | 279/1000 | occupants Q |
| 240:17 | ACE | hi | 59/125 | vertex maximum 59/125 |
| 240:18 | ACF | lo | 336883/1000000 | earlier 239:234; ACF; lo; 336883/1000000 |
| 240:20 | ACH | lo | 68759/500000 | earlier 239:384; ACH; lo; 68759/500000 |
| 240:22 | ACP | lo | 93/1000 | occupants none |
| 240:23 | ACP | hi | 221117/1000000 | earlier 239:23; ACP; hi; 221117/1000000 |
| 240:24 | ACQ | lo | 93/1000 | occupants none |
| 240:26 | ACR | lo | 13857/20000 | occupants Q, S |
| 240:27 | ACR | hi | 1/1 | vertex maximum 1/1 |
| 240:30 | AEF | lo | 19789/125000 | earlier 239:464; AEF; lo; 19789/125000 |
| 240:36 | AEQ | lo | 93/1000 | occupants none |
| 240:38 | AER | lo | 6277/20000 | earlier 239:288; AER; lo; 6277/20000 |
| 240:39 | AER | hi | 84567/125000 | vertex maximum 84567/125000 |
| 240:42 | AFH | lo | 93/1000 | occupants none |
| 240:44 | AFP | lo | 491/5000 | earlier 239:240; AFP; lo; 491/5000 |
| 240:48 | AFR | lo | 24191/250000 | earlier 239:344; AFR; lo; 24191/250000 |
| 240:56 | AHR | lo | 21623/200000 | earlier 239:343; AHR; lo; 21623/200000 |
| 240:62 | APR | lo | 194693/1000000 | earlier 239:241; APR; lo; 194693/1000000 |
| 240:70 | ARS | lo | 93/1000 | occupants none |
| 240:73 | BCE | hi | 6361203/15625000 | vertex maximum 6361203/15625000 |
| 240:78 | BCP | lo | 93/1000 | occupants none |
| 240:79 | BCP | hi | 221117/1000000 | earlier 239:75; BCP; hi; 221117/1000000 |
| 240:88 | BEH | lo | 336883/1000000 | earlier 239:84; BEH; lo; 336883/1000000 |
| 240:94 | BFH | lo | 93/1000 | occupants none |
| 240:110 | CEH | lo | 279/1000 | occupants Q |
| 240:114 | CEQ | lo | 93/1000 | occupants none |
| 240:116 | CER | lo | 93/1000 | occupants none |
| 240:120 | CFH | lo | 315889/1000000 | earlier 239:474; CFH; lo; 315889/1000000 |
| 240:124 | CFQ | lo | 93/1000 | occupants none |
| 240:127 | CFR | hi | 84567/125000 | vertex maximum 84567/125000 |
| 240:132 | CHQ | lo | 93/1000 | occupants none |
| 240:140 | CPR | lo | 39393/125000 | earlier 239:383; CPR; lo; 39393/125000 |
| 240:141 | CPR | hi | 740163/1000000 | earlier 239:137; CPR; hi; 740163/1000000 |
| 240:143 | CPS | hi | 597479/1000000 | earlier 239:139; CPS; hi; 597479/1000000 |
| 240:144 | CQR | lo | 16143/125000 | earlier 239:351; CQR; lo; 16143/125000 |
| 240:146 | CQS | lo | 12543/125000 | earlier 239:378; CQS; lo; 12543/125000 |
| 240:148 | CRS | lo | 93/1000 | occupants none |
| 240:149 | CRS | hi | 38271/100000 | earlier 239:145; CRS; hi; 38271/100000 |
| 240:156 | EFR | lo | 279/1000 | occupants S |
| 240:157 | EFR | hi | 7151577489/15625000000 | vertex maximum 7151577489/15625000000 |
| 240:158 | EFS | lo | 93/1000 | occupants none |
| 240:176 | ERS | lo | 93/1000 | occupants none |
| 240:182 | FHR | lo | 93/1000 | occupants none |
| 240:196 | FRS | lo | 93/1000 | occupants none |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 34 | plu | ACE * BCR = ABC * CER + ACR * BCE | circuit CABER |
| 114 | plu | ABR * AEH = ABE * AHR + ABH * AER | circuit ABEHR |
| 185 | plu | AER * CEF = ACE * EFR + AEF * CER | circuit EACFR |
| 186 | plu | AEF * CFR = ACF * EFR + AFR * CEF | circuit FACER |
| 584 | plu | CFR * EFH = CEF * FHR + CFH * EFR | circuit FCEHR |
| 760 | quad | ABC + ACE >= 93/125 | quadrilateral ABCE; occupants P, Q |
| 762 | quad | BCE + ABE >= 93/125 | quadrilateral BCEA; occupants P, Q |
| 1575 | bary | outer ABC; fans BCP, ACP, ABP; target CEP; sign 1; vertices ACE 1; BCE 1; none 0 | container ABC; inner P; line CE |
| 1583 | bary | outer ABC; fans BCP, ACP, ABP; target EHP; sign 1; vertices AEH 1; BEH 1; CEH 1 | container ABC; inner P; line EH |
| 1586 | bary | outer ABC; fans BCP, ACP, ABP; target FHP; sign 1; vertices AFH 1; BFH 1; CFH 1 | container ABC; inner P; line FH |
| 1616 | bary | outer ACE; fans CEQ, AEQ, ACQ; target FHQ; sign 1; vertices AFH 1; CFH 1; EFH 1 | container ACE; inner Q; line FH |
| 1725 | bary | outer ACR; fans CRS, ARS, ACS; target FHS; sign 1; vertices AFH 1; CFH 1; FHR 1 | container ACR; inner S; line FH |
| 2113 | bary | outer EFR; fans FRS, ERS, EFS; target ABS; sign 1; vertices ABE 1; ABF 1; ABR 1 | container EFR; inner S; line AB |
| 2114 | bary | outer EFR; fans FRS, ERS, EFS; target ACS; sign 1; vertices ACE 1; ACF 1; ACR 1 | container EFR; inner S; line AC |
| 2288 | four | 1 * CFH + -1 * CHQ + -1 * CFQ + -1 * FHQ = 0 | vertices CFHQ |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 240:216 | CEF | lo | 6841/50000 | 1928417/14094500 | 185 | 240:16, 240:156, 240:30, 240:116, 240:39 |
| 240:217 | AEF | lo | 79249/500000 | 2680740187/16913400000 | 186 | 240:18, 240:156, 240:48, 240:216, 240:127 |
| 240:221 | EFH | lo | 74539/500000 | 33619097/225512000 | 584 | 240:216, 240:182, 240:120, 240:156, 240:127 |
| 240:222 | ACE | lo | 336883/1000000 | 5263797/15625000 | 760 | 240:1 |
| 240:223 | BCE | lo | 34/125 | 34/125 | 762 | 240:3 |
| 240:224 | ABE | lo | 336883/1000000 | 5263797/15625000 | 762 | 240:73 |
| 240:234 | CEP | lo | 13909/100000 | 18875373/135705664 | 1575 | 240:1, 240:78, 240:22, 240:8, 240:222, 240:223 |
| 240:245 | FHQ | lo | 29593/200000 | 69839931/472000000 | 1616 | 240:17, 240:114, 240:36, 240:24, 240:42, 240:120, 240:221 |
| 240:260 | ABS | lo | 78027/500000 | 186006287017/1191929581500 | 2113 | 240:157, 240:196, 240:176, 240:158, 240:224, 240:4, 240:12 |
| 240:261 | ACS | lo | 409211/1000000 | 975503142033929/2383859163000000 | 2114 | 240:157, 240:196, 240:176, 240:158, 240:222, 240:18, 240:26 |
| 240:265 | CFH | lo | 66793/200000 | 66793/200000 | 2288 | 240:132, 240:124, 240:245 |
| 240:268 | BCR | lo | 454241/1000000 | 1072011/2360000 | 34 | 240:0, 240:116, 240:26, 240:223, 240:17 |
| 240:276 | AEH | lo | 95377/1000000 | 13122031109/137579734400 | 114 | 240:224, 240:56, 240:6, 240:38, 240:13 |
| 240:277 | CEF | lo | 40179/250000 | 5177651/32216000 | 185 | 240:222, 240:156, 240:217, 240:116, 240:39 |
| 240:278 | AEF | lo | 32383/200000 | 4564245001/28189000000 | 186 | 240:18, 240:156, 240:48, 240:277, 240:127 |
| 240:281 | EFH | lo | 79909/500000 | 36040941/225512000 | 584 | 240:277, 240:182, 240:265, 240:156, 240:127 |
| 240:284 | EHP | lo | 192491/1000000 | 25509959097/132525062500 | 1583 | 240:1, 240:78, 240:22, 240:8, 240:276, 240:88, 240:110 |
| 240:290 | FHQ | lo | 153643/1000000 | 72519819/472000000 | 1616 | 240:17, 240:114, 240:36, 240:24, 240:42, 240:265, 240:281 |
| 240:306 | CFH | lo | 339643/1000000 | 339643/1000000 | 2288 | 240:132, 240:124, 240:290 |
| 240:310 | CEF | lo | 80593/500000 | 9087371/56378000 | 185 | 240:222, 240:156, 240:278, 240:116, 240:39 |
| 240:311 | AEF | lo | 161983/1000000 | 856151243/5285437500 | 186 | 240:18, 240:156, 240:48, 240:310, 240:127 |
| 240:313 | EFH | lo | 10139/62500 | 7316713/45102400 | 584 | 240:310, 240:182, 240:306, 240:156, 240:127 |
| 240:320 | FHQ | lo | 38809/250000 | 73271631/472000000 | 1616 | 240:17, 240:114, 240:36, 240:24, 240:42, 240:306, 240:313 |
| 240:333 | CFH | lo | 85309/250000 | 85309/250000 | 2288 | 240:132, 240:124, 240:320 |
| 240:337 | CEF | lo | 32239/200000 | 4543949/28189000 | 185 | 240:222, 240:156, 240:311, 240:116, 240:39 |
| 240:339 | EFH | lo | 81441/500000 | 36731993/225512000 | 584 | 240:337, 240:182, 240:333, 240:156, 240:127 |
| 240:345 | FHQ | lo | 973/6250 | 36740487/236000000 | 1616 | 240:17, 240:114, 240:36, 240:24, 240:42, 240:333, 240:339 |
| 240:358 | CFH | lo | 4271/12500 | 4271/12500 | 2288 | 240:132, 240:124, 240:345 |
| 240:361 | EFH | lo | 32613/200000 | 7354657/45102400 | 584 | 240:337, 240:182, 240:358, 240:156, 240:127 |
| 240:366 | FHQ | lo | 155803/1000000 | 14707857/94400000 | 1616 | 240:17, 240:114, 240:36, 240:24, 240:42, 240:358, 240:361 |
| 240:378 | CFH | lo | 341803/1000000 | 341803/1000000 | 2288 | 240:132, 240:124, 240:366 |
| 240:379 | EFH | lo | 40779/250000 | 9196181/56378000 | 584 | 240:337, 240:182, 240:378, 240:156, 240:127 |
| 240:383 | FHQ | lo | 155837/1000000 | 73555467/472000000 | 1616 | 240:17, 240:114, 240:36, 240:24, 240:42, 240:378, 240:379 |
| 240:394 | CFH | lo | 341837/1000000 | 341837/1000000 | 2288 | 240:132, 240:124, 240:383 |
| 240:395 | EFH | lo | 16313/100000 | 18393943/112756000 | 584 | 240:337, 240:182, 240:394, 240:156, 240:127 |
| 240:399 | FHQ | lo | 155847/1000000 | 73559931/472000000 | 1616 | 240:17, 240:114, 240:36, 240:24, 240:42, 240:394, 240:395 |
| 240:408 | CFH | lo | 341847/1000000 | 341847/1000000 | 2288 | 240:132, 240:124, 240:399 |
| 240:409 | EFH | lo | 81567/500000 | 2299301/14094500 | 584 | 240:337, 240:182, 240:408, 240:156, 240:127 |
| 240:413 | FHQ | lo | 3117/20000 | 73561233/472000000 | 1616 | 240:17, 240:114, 240:36, 240:24, 240:42, 240:408, 240:409 |
| 240:419 | CFH | lo | 6837/20000 | 6837/20000 | 2288 | 240:132, 240:124, 240:413 |
| 240:422 | FHP | lo | 74923/500000 | 1270936047/8481604000 | 1586 | 240:1, 240:78, 240:22, 240:8, 240:42, 240:94, 240:419 |
| 240:423 | FHS | lo | 116143/1000000 | 2322861/20000000 | 1725 | 240:27, 240:148, 240:70, 240:261, 240:42, 240:419, 240:182 |

## Stage 241

| Property | Value |
| --- | --- |
| Scope | root/ACP-/HEQ-/HRS-/ARS-/PQR+ |
| Packet | forest:root/ACP-/HEQ-/HRS-/ARS-/PQR+ |
| Index | 2 |
| Context | 101 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 240 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 40433/125000 | 59/125 | 40433/125000 | 59/125 |
| b | 17183/125000 | 408899/1000000 | 17183/125000 | 408899/1000000 |
| c | 145713/200000 | 1/1 | 145713/200000 | 1/1 |
| e | 40433/125000 | 59/125 | 40433/125000 | 59/125 |
| f | 40433/125000 | 293803/500000 | 40433/125000 | 293803/500000 |
| h | 13857/20000 | 1/1 | 13857/20000 | 1/1 |
| p | 64959/250000 | 143633/250000 | 64959/250000 | 143633/250000 |
| q | 107821/1000000 | 128179/500000 | 107821/1000000 | 128179/500000 |
| u | 7254/15625 | 802967/1000000 | 7254/15625 | 802967/1000000 |
| v | 154349/1000000 | 379/1000 | 154349/1000000 | 379/1000 |
| r | 367929/500000 | 1/1 | 367929/500000 | 1/1 |
| w | 367929/500000 | 1/1 | 367929/500000 | 1/1 |
| j | 74799/125000 | 107817/125000 | 74799/125000 | 107817/125000 |
| k | 74799/125000 | 107817/125000 | 74799/125000 | 107817/125000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |


### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |


### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 241:2 | ABE | lo | 336883/1000000 | earlier 240:224; ABE; lo; 336883/1000000 |
| 241:14 | ABS | lo | 78027/500000 | earlier 240:260; ABS; lo; 78027/500000 |
| 241:16 | ACE | lo | 336883/1000000 | earlier 240:222; ACE; lo; 336883/1000000 |
| 241:18 | ACF | lo | 336883/1000000 | earlier 240:18; ACF; lo; 336883/1000000 |
| 241:20 | ACH | lo | 68759/500000 | earlier 240:20; ACH; lo; 68759/500000 |
| 241:23 | ACP | hi | 221117/1000000 | earlier 240:23; ACP; hi; 221117/1000000 |
| 241:28 | ACS | lo | 409211/1000000 | earlier 240:261; ACS; lo; 409211/1000000 |
| 241:32 | AEH | lo | 95377/1000000 | earlier 240:276; AEH; lo; 95377/1000000 |
| 241:44 | AFP | lo | 491/5000 | earlier 240:44; AFP; lo; 491/5000 |
| 241:56 | AHR | lo | 21623/200000 | earlier 240:56; AHR; lo; 21623/200000 |
| 241:62 | APR | lo | 194693/1000000 | earlier 240:62; APR; lo; 194693/1000000 |
| 241:72 | BCE | lo | 34/125 | earlier 240:223; BCE; lo; 34/125 |
| 241:79 | BCP | hi | 221117/1000000 | earlier 240:79; BCP; hi; 221117/1000000 |
| 241:82 | BCR | lo | 454241/1000000 | earlier 240:268; BCR; lo; 454241/1000000 |
| 241:88 | BEH | lo | 336883/1000000 | earlier 240:88; BEH; lo; 336883/1000000 |
| 241:108 | CEF | lo | 32239/200000 | earlier 240:337; CEF; lo; 32239/200000 |
| 241:112 | CEP | lo | 13909/100000 | earlier 240:234; CEP; lo; 13909/100000 |
| 241:120 | CFH | lo | 6837/20000 | earlier 240:419; CFH; lo; 6837/20000 |
| 241:140 | CPR | lo | 39393/125000 | earlier 240:140; CPR; lo; 39393/125000 |
| 241:141 | CPR | hi | 740163/1000000 | earlier 240:141; CPR; hi; 740163/1000000 |
| 241:143 | CPS | hi | 597479/1000000 | earlier 240:143; CPS; hi; 597479/1000000 |
| 241:144 | CQR | lo | 16143/125000 | earlier 240:144; CQR; lo; 16143/125000 |
| 241:146 | CQS | lo | 12543/125000 | earlier 240:146; CQS; lo; 12543/125000 |
| 241:149 | CRS | hi | 38271/100000 | earlier 240:149; CRS; hi; 38271/100000 |
| 241:160 | EHP | lo | 192491/1000000 | earlier 240:284; EHP; lo; 192491/1000000 |
| 241:178 | FHP | lo | 74923/500000 | earlier 240:422; FHP; lo; 74923/500000 |
| 241:184 | FHS | lo | 116143/1000000 | earlier 240:423; FHS; lo; 116143/1000000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |


## Stage 242

| Property | Value |
| --- | --- |
| Scope | root/ACP-/HEQ-/HRS-/ARS-/PQR+/PQS+ |
| Packet | forest:root/ACP-/HEQ-/HRS-/ARS-/PQR+/PQS+ |
| Index | 0 |
| Context | 102 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 241 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 40433/125000 | 59/125 | 40433/125000 | 59/125 |
| b | 17183/125000 | 408899/1000000 | 17183/125000 | 408899/1000000 |
| c | 145713/200000 | 1/1 | 145713/200000 | 1/1 |
| e | 40433/125000 | 59/125 | 40433/125000 | 59/125 |
| f | 40433/125000 | 293803/500000 | 40433/125000 | 293803/500000 |
| h | 13857/20000 | 1/1 | 13857/20000 | 1/1 |
| p | 64959/250000 | 143633/250000 | 64959/250000 | 143633/250000 |
| q | 107821/1000000 | 128179/500000 | 107821/1000000 | 128179/500000 |
| u | 7254/15625 | 802967/1000000 | 7254/15625 | 802967/1000000 |
| v | 154349/1000000 | 379/1000 | 154349/1000000 | 379/1000 |
| r | 367929/500000 | 1/1 | 367929/500000 | 1/1 |
| w | 367929/500000 | 1/1 | 367929/500000 | 1/1 |
| j | 74799/125000 | 107817/125000 | 74799/125000 | 107817/125000 |
| k | 74799/125000 | 107817/125000 | 74799/125000 | 107817/125000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |


### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |


### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 242:1 | ABC | hi | 6361203/15625000 | vertex maximum 6361203/15625000 |
| 242:2 | ABE | lo | 336883/1000000 | earlier 241:2; ABE; lo; 336883/1000000 |
| 242:8 | ABP | lo | 93/1000 | occupants none |
| 242:14 | ABS | lo | 78027/500000 | earlier 241:14; ABS; lo; 78027/500000 |
| 242:16 | ACE | lo | 336883/1000000 | earlier 241:16; ACE; lo; 336883/1000000 |
| 242:18 | ACF | lo | 336883/1000000 | earlier 241:18; ACF; lo; 336883/1000000 |
| 242:20 | ACH | lo | 68759/500000 | earlier 241:20; ACH; lo; 68759/500000 |
| 242:22 | ACP | lo | 93/1000 | occupants none |
| 242:23 | ACP | hi | 221117/1000000 | earlier 241:23; ACP; hi; 221117/1000000 |
| 242:26 | ACR | lo | 13857/20000 | occupants Q, S |
| 242:27 | ACR | hi | 1/1 | vertex maximum 1/1 |
| 242:28 | ACS | lo | 409211/1000000 | earlier 241:28; ACS; lo; 409211/1000000 |
| 242:32 | AEH | lo | 95377/1000000 | earlier 241:32; AEH; lo; 95377/1000000 |
| 242:36 | AEQ | lo | 93/1000 | occupants none |
| 242:42 | AFH | lo | 93/1000 | occupants none |
| 242:44 | AFP | lo | 491/5000 | earlier 241:44; AFP; lo; 491/5000 |
| 242:50 | AFS | lo | 93/1000 | occupants none |
| 242:52 | AHP | lo | 93/1000 | occupants none |
| 242:56 | AHR | lo | 21623/200000 | earlier 241:56; AHR; lo; 21623/200000 |
| 242:62 | APR | lo | 194693/1000000 | earlier 241:62; APR; lo; 194693/1000000 |
| 242:70 | ARS | lo | 93/1000 | occupants none |
| 242:72 | BCE | lo | 34/125 | earlier 241:72; BCE; lo; 34/125 |
| 242:78 | BCP | lo | 93/1000 | occupants none |
| 242:79 | BCP | hi | 221117/1000000 | earlier 241:79; BCP; hi; 221117/1000000 |
| 242:82 | BCR | lo | 454241/1000000 | earlier 241:82; BCR; lo; 454241/1000000 |
| 242:88 | BEH | lo | 336883/1000000 | earlier 241:88; BEH; lo; 336883/1000000 |
| 242:94 | BFH | lo | 93/1000 | occupants none |
| 242:108 | CEF | lo | 32239/200000 | earlier 241:108; CEF; lo; 32239/200000 |
| 242:110 | CEH | lo | 279/1000 | occupants Q |
| 242:112 | CEP | lo | 13909/100000 | earlier 241:112; CEP; lo; 13909/100000 |
| 242:120 | CFH | lo | 6837/20000 | earlier 241:120; CFH; lo; 6837/20000 |
| 242:124 | CFQ | lo | 93/1000 | occupants none |
| 242:132 | CHQ | lo | 93/1000 | occupants none |
| 242:134 | CHR | lo | 13857/20000 | occupants Q, S |
| 242:135 | CHR | hi | 1/1 | vertex maximum 1/1 |
| 242:138 | CPQ | lo | 93/1000 | occupants none |
| 242:140 | CPR | lo | 39393/125000 | earlier 241:140; CPR; lo; 39393/125000 |
| 242:141 | CPR | hi | 740163/1000000 | earlier 241:141; CPR; hi; 740163/1000000 |
| 242:143 | CPS | hi | 597479/1000000 | earlier 241:143; CPS; hi; 597479/1000000 |
| 242:144 | CQR | lo | 16143/125000 | earlier 241:144; CQR; lo; 16143/125000 |
| 242:146 | CQS | lo | 12543/125000 | earlier 241:146; CQS; lo; 12543/125000 |
| 242:148 | CRS | lo | 93/1000 | occupants none |
| 242:149 | CRS | hi | 38271/100000 | earlier 241:149; CRS; hi; 38271/100000 |
| 242:151 | EFH | hi | 131050857479/250000000000 | vertex maximum 131050857479/250000000000 |
| 242:157 | EFR | hi | 7151577489/15625000000 | vertex maximum 7151577489/15625000000 |
| 242:158 | EFS | lo | 93/1000 | occupants none |
| 242:160 | EHP | lo | 192491/1000000 | earlier 241:160; EHP; lo; 192491/1000000 |
| 242:176 | ERS | lo | 93/1000 | occupants none |
| 242:178 | FHP | lo | 74923/500000 | earlier 241:178; FHP; lo; 74923/500000 |
| 242:182 | FHR | lo | 93/1000 | occupants none |
| 242:184 | FHS | lo | 116143/1000000 | earlier 241:184; FHS; lo; 116143/1000000 |
| 242:196 | FRS | lo | 93/1000 | occupants none |
| 242:208 | HRS | lo | 93/1000 | occupants none |
| 242:212 | PQS | lo | 93/1000 | occupants none |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 16 | fan | CPS = CPQ + PQS + CQS | point Q |
| 600 | plu | CFS * EFH = CEF * FHS + CFH * EFS | circuit FCEHS |
| 1632 | bary | outer ABC; fans BCP, ACP, ABP; target FHP; sign 1; vertices AFH 1; BFH 1; CFH 1 | container ABC; inner P; line FH |
| 1773 | bary | outer ACR; fans CRS, ARS, ACS; target FHS; sign 1; vertices AFH 1; CFH 1; FHR 1 | container ACR; inner S; line FH |
| 2071 | bary | outer CHR; fans HRS, CRS, CHS; target APS; sign 1; vertices ACP 1; AHP 1; APR 1 | container CHR; inner S; line AP |
| 2175 | bary | outer CPS; fans PQS, CQS, CPQ; target AFQ; sign -1; vertices ACF -1; AFP -1; AFS -1 | container CPS; inner Q; line AF |
| 2179 | bary | outer CPS; fans PQS, CQS, CPQ; target AQR; sign -1; vertices ACR -1; APR -1; ARS -1 | container CPS; inner Q; line AR |
| 2194 | bary | outer CPS; fans PQS, CQS, CPQ; target FHQ; sign 1; vertices CFH 1; FHP 1; FHS 1 | container CPS; inner Q; line FH |
| 2212 | bary | outer EFR; fans FRS, ERS, EFS; target AQS; sign 1; vertices AEQ 1; AFQ 1; AQR 1 | container EFR; inner S; line AQ |
| 2221 | bary | outer EFR; fans FRS, ERS, EFS; target CHS; sign -1; vertices CEH -1; CFH -1; CHR -1 | container EFR; inner S; line CH |
| 2382 | four | 1 * CFH + -1 * CHQ + -1 * CFQ + -1 * FHQ = 0 | vertices CFHQ |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 242:214 | CPS | lo | 35793/125000 | 35793/125000 | 16 | 242:138, 242:212, 242:146 |
| 242:215 | AFQ | lo | 65917/500000 | 196921137/1493697500 | 2175 | 242:143, 242:212, 242:146, 242:138, 242:18, 242:44, 242:50 |
| 242:217 | AQR | lo | 203447/1000000 | 3798621231/18671218750 | 2179 | 242:143, 242:212, 242:146, 242:138, 242:26, 242:62, 242:70 |
| 242:219 | FHQ | lo | 31387/200000 | 93765648329/597479000000 | 2194 | 242:143, 242:212, 242:146, 242:138, 242:120, 242:178, 242:184 |
| 242:220 | AQS | lo | 30833/250000 | 147003443267/1191929581500 | 2212 | 242:157, 242:196, 242:176, 242:158, 242:36, 242:215, 242:217 |
| 242:221 | CFH | lo | 68587/200000 | 68587/200000 | 2382 | 242:132, 242:124, 242:219 |
| 242:224 | FHP | lo | 75047/500000 | 2546076469/16963208000 | 1632 | 242:1, 242:78, 242:22, 242:8, 242:42, 242:94, 242:221 |
| 242:226 | FHS | lo | 116243/1000000 | 23248791/200000000 | 1773 | 242:27, 242:148, 242:70, 242:28, 242:42, 242:221, 242:182 |
| 242:233 | FHQ | lo | 157213/1000000 | 93931852141/597479000000 | 2194 | 242:143, 242:212, 242:146, 242:138, 242:221, 242:224, 242:226 |
| 242:236 | CFH | lo | 343213/1000000 | 343213/1000000 | 2382 | 242:132, 242:124, 242:233 |
| 242:240 | FHP | lo | 150157/1000000 | 2547153719/16963208000 | 1632 | 242:1, 242:78, 242:22, 242:8, 242:42, 242:94, 242:236 |
| 242:242 | FHS | lo | 116269/1000000 | 116269809/1000000000 | 1773 | 242:27, 242:148, 242:70, 242:28, 242:42, 242:236, 242:182 |
| 242:249 | FHQ | lo | 31457/200000 | 93974535323/597479000000 | 2194 | 242:143, 242:212, 242:146, 242:138, 242:236, 242:240, 242:242 |
| 242:252 | CFH | lo | 68657/200000 | 68657/200000 | 2382 | 242:132, 242:124, 242:249 |
| 242:256 | FHP | lo | 150173/1000000 | 2547432719/16963208000 | 1632 | 242:1, 242:78, 242:22, 242:8, 242:42, 242:94, 242:252 |
| 242:258 | FHS | lo | 29069/250000 | 23255301/200000000 | 1773 | 242:27, 242:148, 242:70, 242:28, 242:42, 242:252, 242:182 |
| 242:266 | FHQ | lo | 157303/1000000 | 23496416443/149369750000 | 2194 | 242:143, 242:212, 242:146, 242:138, 242:252, 242:256, 242:258 |
| 242:269 | CFH | lo | 343303/1000000 | 343303/1000000 | 2382 | 242:132, 242:124, 242:266 |
| 242:273 | FHP | lo | 75089/500000 | 2547502469/16963208000 | 1632 | 242:1, 242:78, 242:22, 242:8, 242:42, 242:94, 242:269 |
| 242:276 | FHS | lo | 58139/500000 | 116278179/1000000000 | 1773 | 242:27, 242:148, 242:70, 242:28, 242:42, 242:269, 242:182 |
| 242:281 | FHQ | lo | 39327/250000 | 46994324881/298739500000 | 2194 | 242:143, 242:212, 242:146, 242:138, 242:269, 242:273, 242:276 |
| 242:282 | CHS | lo | 75231/200000 | 224175516463/595964790750 | 2221 | 242:157, 242:196, 242:176, 242:158, 242:110, 242:269, 242:134 |
| 242:284 | CFH | lo | 85827/250000 | 85827/250000 | 2382 | 242:132, 242:124, 242:281 |
| 242:286 | CFS | lo | 96663/1000000 | 25335538105/262101714958 | 600 | 242:108, 242:276, 242:284, 242:158, 242:151 |
| 242:288 | FHP | lo | 150179/1000000 | 636880461/4240802000 | 1632 | 242:1, 242:78, 242:22, 242:8, 242:42, 242:94, 242:284 |
| 242:290 | APS | lo | 32813/250000 | 26250466083/200000000000 | 2071 | 242:135, 242:208, 242:148, 242:282, 242:22, 242:52, 242:62 |
| 242:291 | FHQ | lo | 157309/1000000 | 46994607553/298739500000 | 2194 | 242:143, 242:212, 242:146, 242:138, 242:284, 242:288, 242:276 |
| 242:292 | CHS | lo | 94039/250000 | 298901495909/794619721000 | 2221 | 242:157, 242:196, 242:176, 242:158, 242:110, 242:284, 242:134 |
| 242:293 | CFH | lo | 343309/1000000 | 343309/1000000 | 2382 | 242:132, 242:124, 242:291 |

## Stage 243

| Property | Value |
| --- | --- |
| Scope | root/ACP-/HEQ-/HRS-/ARS-/PQR+/PQS+ |
| Packet | forest:root/ACP-/HEQ-/HRS-/ARS-/PQR+/PQS+ |
| Index | 1 |
| Context | 102 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 242 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 40433/125000 | 59/125 | 40433/125000 | 59/125 |
| b | 17183/125000 | 408899/1000000 | 17183/125000 | 408899/1000000 |
| c | 145713/200000 | 1/1 | 145713/200000 | 1/1 |
| e | 40433/125000 | 59/125 | 40433/125000 | 59/125 |
| f | 40433/125000 | 293803/500000 | 40433/125000 | 293803/500000 |
| h | 13857/20000 | 1/1 | 13857/20000 | 1/1 |
| p | 64959/250000 | 143633/250000 | 64959/250000 | 143633/250000 |
| q | 107821/1000000 | 128179/500000 | 107821/1000000 | 128179/500000 |
| u | 7254/15625 | 802967/1000000 | 7254/15625 | 802967/1000000 |
| v | 154349/1000000 | 379/1000 | 154349/1000000 | 379/1000 |
| r | 367929/500000 | 1/1 | 367929/500000 | 1/1 |
| w | 367929/500000 | 1/1 | 367929/500000 | 1/1 |
| j | 74799/125000 | 107817/125000 | 74799/125000 | 107817/125000 |
| k | 74799/125000 | 107817/125000 | 74799/125000 | 107817/125000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |


### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |


### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 243:2 | ABE | lo | 336883/1000000 | earlier 242:2; ABE; lo; 336883/1000000 |
| 243:14 | ABS | lo | 78027/500000 | earlier 242:14; ABS; lo; 78027/500000 |
| 243:16 | ACE | lo | 336883/1000000 | earlier 242:16; ACE; lo; 336883/1000000 |
| 243:18 | ACF | lo | 336883/1000000 | earlier 242:18; ACF; lo; 336883/1000000 |
| 243:20 | ACH | lo | 68759/500000 | earlier 242:20; ACH; lo; 68759/500000 |
| 243:23 | ACP | hi | 221117/1000000 | earlier 242:23; ACP; hi; 221117/1000000 |
| 243:28 | ACS | lo | 409211/1000000 | earlier 242:28; ACS; lo; 409211/1000000 |
| 243:32 | AEH | lo | 95377/1000000 | earlier 242:32; AEH; lo; 95377/1000000 |
| 243:44 | AFP | lo | 491/5000 | earlier 242:44; AFP; lo; 491/5000 |
| 243:56 | AHR | lo | 21623/200000 | earlier 242:56; AHR; lo; 21623/200000 |
| 243:64 | APS | lo | 32813/250000 | earlier 242:290; APS; lo; 32813/250000 |
| 243:68 | AQS | lo | 30833/250000 | earlier 242:220; AQS; lo; 30833/250000 |
| 243:72 | BCE | lo | 34/125 | earlier 242:72; BCE; lo; 34/125 |
| 243:79 | BCP | hi | 221117/1000000 | earlier 242:79; BCP; hi; 221117/1000000 |
| 243:82 | BCR | lo | 454241/1000000 | earlier 242:82; BCR; lo; 454241/1000000 |
| 243:88 | BEH | lo | 336883/1000000 | earlier 242:88; BEH; lo; 336883/1000000 |
| 243:112 | CEP | lo | 13909/100000 | earlier 242:112; CEP; lo; 13909/100000 |
| 243:120 | CFH | lo | 343309/1000000 | earlier 242:293; CFH; lo; 343309/1000000 |
| 243:128 | CFS | lo | 96663/1000000 | earlier 242:286; CFS; lo; 96663/1000000 |
| 243:136 | CHS | lo | 94039/250000 | earlier 242:292; CHS; lo; 94039/250000 |
| 243:140 | CPR | lo | 39393/125000 | earlier 242:140; CPR; lo; 39393/125000 |
| 243:141 | CPR | hi | 740163/1000000 | earlier 242:141; CPR; hi; 740163/1000000 |
| 243:142 | CPS | lo | 35793/125000 | earlier 242:214; CPS; lo; 35793/125000 |
| 243:144 | CQR | lo | 16143/125000 | earlier 242:144; CQR; lo; 16143/125000 |
| 243:146 | CQS | lo | 12543/125000 | earlier 242:146; CQS; lo; 12543/125000 |
| 243:149 | CRS | hi | 38271/100000 | earlier 242:149; CRS; hi; 38271/100000 |
| 243:160 | EHP | lo | 192491/1000000 | earlier 242:160; EHP; lo; 192491/1000000 |
| 243:184 | FHS | lo | 58139/500000 | earlier 242:276; FHS; lo; 58139/500000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |


## Stage 244

| Property | Value |
| --- | --- |
| Scope | root/ACP-/HEQ-/HRS-/ARS-/PQR+/PQS+/PRS+ |
| Packet | forest:root/ACP-/HEQ-/HRS-/ARS-/PQR+/PQS+/PRS+ |
| Index | 0 |
| Context | 103 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 243 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 40433/125000 | 59/125 | 40433/125000 | 59/125 |
| b | 17183/125000 | 408899/1000000 | 17183/125000 | 408899/1000000 |
| c | 145713/200000 | 1/1 | 145713/200000 | 1/1 |
| e | 40433/125000 | 59/125 | 40433/125000 | 59/125 |
| f | 40433/125000 | 293803/500000 | 40433/125000 | 293803/500000 |
| h | 13857/20000 | 1/1 | 13857/20000 | 1/1 |
| p | 64959/250000 | 143633/250000 | 64959/250000 | 143633/250000 |
| q | 107821/1000000 | 128179/500000 | 107821/1000000 | 128179/500000 |
| u | 7254/15625 | 802967/1000000 | 7254/15625 | 802967/1000000 |
| v | 154349/1000000 | 379/1000 | 154349/1000000 | 379/1000 |
| r | 367929/500000 | 1/1 | 367929/500000 | 1/1 |
| w | 367929/500000 | 1/1 | 367929/500000 | 1/1 |
| j | 74799/125000 | 107817/125000 | 74799/125000 | 107817/125000 |
| k | 74799/125000 | 107817/125000 | 74799/125000 | 107817/125000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |


### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |


### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 244:0 | ABC | lo | 279/1000 | occupants P |
| 244:1 | ABC | hi | 6361203/15625000 | vertex maximum 6361203/15625000 |
| 244:2 | ABE | lo | 336883/1000000 | earlier 243:2; ABE; lo; 336883/1000000 |
| 244:8 | ABP | lo | 93/1000 | occupants none |
| 244:14 | ABS | lo | 78027/500000 | earlier 243:14; ABS; lo; 78027/500000 |
| 244:16 | ACE | lo | 336883/1000000 | earlier 243:16; ACE; lo; 336883/1000000 |
| 244:17 | ACE | hi | 59/125 | vertex maximum 59/125 |
| 244:18 | ACF | lo | 336883/1000000 | earlier 243:18; ACF; lo; 336883/1000000 |
| 244:20 | ACH | lo | 68759/500000 | earlier 243:20; ACH; lo; 68759/500000 |
| 244:22 | ACP | lo | 93/1000 | occupants none |
| 244:23 | ACP | hi | 221117/1000000 | earlier 243:23; ACP; hi; 221117/1000000 |
| 244:24 | ACQ | lo | 93/1000 | occupants none |
| 244:26 | ACR | lo | 13857/20000 | occupants Q, S |
| 244:27 | ACR | hi | 1/1 | vertex maximum 1/1 |
| 244:28 | ACS | lo | 409211/1000000 | earlier 243:28; ACS; lo; 409211/1000000 |
| 244:32 | AEH | lo | 95377/1000000 | earlier 243:32; AEH; lo; 95377/1000000 |
| 244:36 | AEQ | lo | 93/1000 | occupants none |
| 244:42 | AFH | lo | 93/1000 | occupants none |
| 244:44 | AFP | lo | 491/5000 | earlier 243:44; AFP; lo; 491/5000 |
| 244:50 | AFS | lo | 93/1000 | occupants none |
| 244:52 | AHP | lo | 93/1000 | occupants none |
| 244:56 | AHR | lo | 21623/200000 | earlier 243:56; AHR; lo; 21623/200000 |
| 244:63 | APR | hi | 83441487/125000000 | vertex maximum 83441487/125000000 |
| 244:64 | APS | lo | 32813/250000 | earlier 243:64; APS; lo; 32813/250000 |
| 244:68 | AQS | lo | 30833/250000 | earlier 243:68; AQS; lo; 30833/250000 |
| 244:70 | ARS | lo | 93/1000 | occupants none |
| 244:72 | BCE | lo | 34/125 | earlier 243:72; BCE; lo; 34/125 |
| 244:77 | BCH | hi | 107817/125000 | vertex maximum 107817/125000 |
| 244:78 | BCP | lo | 93/1000 | occupants none |
| 244:79 | BCP | hi | 221117/1000000 | earlier 243:79; BCP; hi; 221117/1000000 |
| 244:82 | BCR | lo | 454241/1000000 | earlier 243:82; BCR; lo; 454241/1000000 |
| 244:83 | BCR | hi | 107817/125000 | vertex maximum 107817/125000 |
| 244:88 | BEH | lo | 336883/1000000 | earlier 243:88; BEH; lo; 336883/1000000 |
| 244:94 | BFH | lo | 93/1000 | occupants none |
| 244:98 | BFS | lo | 93/1000 | occupants none |
| 244:100 | BHP | lo | 93/1000 | occupants none |
| 244:110 | CEH | lo | 279/1000 | occupants Q |
| 244:112 | CEP | lo | 13909/100000 | earlier 243:112; CEP; lo; 13909/100000 |
| 244:114 | CEQ | lo | 93/1000 | occupants none |
| 244:116 | CER | lo | 93/1000 | occupants none |
| 244:120 | CFH | lo | 343309/1000000 | earlier 243:120; CFH; lo; 343309/1000000 |
| 244:121 | CFH | hi | 7142728171/10000000000 | vertex maximum 7142728171/10000000000 |
| 244:122 | CFP | lo | 279/1000 | occupants Q |
| 244:124 | CFQ | lo | 93/1000 | occupants none |
| 244:127 | CFR | hi | 84567/125000 | vertex maximum 84567/125000 |
| 244:128 | CFS | lo | 96663/1000000 | earlier 243:128; CFS; lo; 96663/1000000 |
| 244:132 | CHQ | lo | 93/1000 | occupants none |
| 244:134 | CHR | lo | 13857/20000 | occupants Q, S |
| 244:135 | CHR | hi | 1/1 | vertex maximum 1/1 |
| 244:136 | CHS | lo | 94039/250000 | earlier 243:136; CHS; lo; 94039/250000 |
| 244:138 | CPQ | lo | 93/1000 | occupants none |
| 244:140 | CPR | lo | 39393/125000 | earlier 243:140; CPR; lo; 39393/125000 |
| 244:141 | CPR | hi | 740163/1000000 | earlier 243:141; CPR; hi; 740163/1000000 |
| 244:142 | CPS | lo | 35793/125000 | earlier 243:142; CPS; lo; 35793/125000 |
| 244:144 | CQR | lo | 16143/125000 | earlier 243:144; CQR; lo; 16143/125000 |
| 244:146 | CQS | lo | 12543/125000 | earlier 243:146; CQS; lo; 12543/125000 |
| 244:149 | CRS | hi | 38271/100000 | earlier 243:149; CRS; hi; 38271/100000 |
| 244:157 | EFR | hi | 7151577489/15625000000 | vertex maximum 7151577489/15625000000 |
| 244:158 | EFS | lo | 93/1000 | occupants none |
| 244:160 | EHP | lo | 192491/1000000 | earlier 243:160; EHP; lo; 192491/1000000 |
| 244:165 | EHR | hi | 84567/125000 | vertex maximum 84567/125000 |
| 244:176 | ERS | lo | 93/1000 | occupants none |
| 244:182 | FHR | lo | 93/1000 | occupants none |
| 244:184 | FHS | lo | 58139/500000 | earlier 243:184; FHS; lo; 58139/500000 |
| 244:196 | FRS | lo | 93/1000 | occupants none |
| 244:201 | HPR | hi | 892179/1000000 | vertex maximum 892179/1000000 |
| 244:208 | HRS | lo | 93/1000 | occupants none |
| 244:210 | PQR | lo | 93/1000 | occupants none |
| 244:212 | PQS | lo | 93/1000 | occupants none |
| 244:214 | PRS | lo | 93/1000 | occupants none |
| 244:216 | QRS | lo | 93/1000 | occupants none |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 7 | fan | APR = APS + PRS + ARS | point S |
| 8 | fan | AQR = AQS + QRS + ARS | point S |
| 46 | plu | ACE * BCS = ABC * CES + ACS * BCE | circuit CABES |
| 303 | plu | ACR * CHP = ACH * CPR + ACP * CHR | circuit CAHPR |
| 340 | plu | APR * CRS = ACR * PRS + ARS * CPR | circuit RACPS |
| 341 | plu | APS * CRS = ACS * PRS + ARS * CPS | circuit SACPR |
| 443 | plu | AFP * HPR = AHP * FPR + APR * FHP | circuit PAFHR |
| 636 | plu | CFS * EHS = CES * FHS + CHS * EFS | circuit SCEFH |
| 720 | plu | CFH * CQR = CFQ * CHR + CFR * CHQ | circuit CFHQR |
| 1801 | bary | outer ABC; fans BCP, ACP, ABP; target CPS; sign 1; vertices ACS 1; BCS 1; none 0 | container ABC; inner P; line CS |
| 1806 | bary | outer ABC; fans BCP, ACP, ABP; target FHP; sign 1; vertices AFH 1; BFH 1; CFH 1 | container ABC; inner P; line FH |
| 1911 | bary | outer ACR; fans CQR, AQR, ACQ; target FHQ; sign 1; vertices AFH 1; CFH 1; FHR 1 | container ACR; inner Q; line FH |
| 1952 | bary | outer ACR; fans CRS, ARS, ACS; target FHS; sign 1; vertices AFH 1; CFH 1; FHR 1 | container ACR; inner S; line FH |
| 2046 | bary | outer APR; fans PRS, ARS, APS; target ACS; sign 1; vertices none 0; ACP -1; ACR 1 | container APR; inner S; line AC |
| 2054 | bary | outer APR; fans PRS, ARS, APS; target BCS; sign 1; vertices ABC 1; BCP 1; BCR 1 | container APR; inner S; line BC |
| 2056 | bary | outer APR; fans PRS, ARS, APS; target CES; sign 1; vertices ACE 1; CEP 1; CER 1 | container APR; inner S; line CE |
| 2057 | bary | outer APR; fans PRS, ARS, APS; target CFS; sign -1; vertices ACF 1; CFP 1; CFR -1 | container APR; inner S; line CF |
| 2059 | bary | outer APR; fans PRS, ARS, APS; target CPS; sign -1; vertices ACP -1; none 0; CPR -1 | container APR; inner S; line CP |
| 2064 | bary | outer APR; fans PRS, ARS, APS; target EHS; sign -1; vertices AEH 1; EHP 1; EHR -1 | container APR; inner S; line EH |
| 2146 | bary | outer BCH; fans CHP, BHP, BCP; target FPS; sign -1; vertices BFS -1; CFS -1; FHS -1 | container BCH; inner P; line FS |
| 2347 | bary | outer CHR; fans HRS, CRS, CHS; target APS; sign 1; vertices ACP 1; AHP 1; APR 1 | container CHR; inner S; line AP |
| 2461 | bary | outer CPS; fans PQS, CQS, CPQ; target AFQ; sign -1; vertices ACF -1; AFP -1; AFS -1 | container CPS; inner Q; line AF |
| 2501 | bary | outer EFR; fans FRS, ERS, EFS; target AQS; sign 1; vertices AEQ 1; AFQ 1; AQR 1 | container EFR; inner S; line AQ |
| 2510 | bary | outer EFR; fans FRS, ERS, EFS; target CHS; sign -1; vertices CEH -1; CFH -1; CHR -1 | container EFR; inner S; line CH |
| 2512 | bary | outer EFR; fans FRS, ERS, EFS; target CQS; sign -1; vertices CEQ -1; CFQ -1; CQR -1 | container EFR; inner S; line CQ |
| 2798 | four | 1 * APR + -1 * ARS + -1 * APS + -1 * PRS = 0 | vertices APRS |
| 2799 | four | 1 * AQR + -1 * ARS + -1 * AQS + -1 * QRS = 0 | vertices AQRS |
| 2833 | four | 1 * CFH + -1 * CHQ + -1 * CFQ + -1 * FHQ = 0 | vertices CFHQ |
| 2841 | four | -1 * CFR + 1 * CRS + 1 * CFS + 1 * FRS = 0 | vertices CFRS |
| 2848 | four | -1 * CPQ + -1 * CQR + 1 * CPR + -1 * PQR = 0 | vertices CPQR |
| 2876 | four | 1 * FPR + -1 * FRS + -1 * FPS + -1 * PRS = 0 | vertices FPRS |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 244:218 | APR | lo | 79313/250000 | 79313/250000 | 7 | 244:64, 244:214, 244:70 |
| 244:220 | AQR | lo | 77333/250000 | 77333/250000 | 8 | 244:68, 244:216, 244:70 |
| 244:231 | CRS | lo | 8777/62500 | 15623907/111255316 | 340 | 244:26, 244:214, 244:70, 244:140, 244:63 |
| 244:233 | APS | lo | 84511/500000 | 4312441/25514000 | 341 | 244:28, 244:214, 244:70, 244:142, 244:149 |
| 244:240 | FHQ | lo | 42607/250000 | 42607145897/250000000000 | 1911 | 244:27, 244:144, 244:220, 244:24, 244:42, 244:120, 244:182 |
| 244:252 | ACS | hi | 141681/200000 | 19703454/27813829 | 2046 | 244:63, 244:214, 244:70, 244:233, 244:22, 244:27 |
| 244:257 | BCS | hi | 354863/500000 | 308440336396/434591078125 | 2054 | 244:63, 244:214, 244:70, 244:233, 244:1, 244:79, 244:83 |
| 244:259 | CES | lo | 66699/500000 | 463791434/3476728625 | 2056 | 244:63, 244:214, 244:70, 244:233, 244:16, 244:112, 244:116 |
| 244:260 | CFS | hi | 402223/1000000 | 1905203677/4736687500 | 2057 | 244:63, 244:214, 244:70, 244:233, 244:18, 244:122, 244:127 |
| 244:262 | CPS | hi | 141183/250000 | 15707332239127/27813829000000 | 2059 | 244:63, 244:214, 244:70, 244:233, 244:23, 244:141 |
| 244:264 | EHS | hi | 223961/500000 | 1557301764543/3476728625000 | 2064 | 244:63, 244:214, 244:70, 244:233, 244:32, 244:160, 244:165 |
| 244:283 | APS | lo | 177353/1000000 | 11084608457/62500000000 | 2347 | 244:135, 244:208, 244:231, 244:136, 244:22, 244:52, 244:218 |
| 244:288 | AFQ | lo | 67043/500000 | 126204973/941220000 | 2461 | 244:262, 244:212, 244:146, 244:138, 244:18, 244:44, 244:50 |
| 244:293 | AQS | lo | 18163/125000 | 16494559329/113517103000 | 2501 | 244:157, 244:196, 244:176, 244:158, 244:36, 244:288, 244:220 |
| 244:297 | APR | lo | 363353/1000000 | 363353/1000000 | 2798 | 244:70, 244:283, 244:214 |
| 244:298 | AQR | lo | 41413/125000 | 41413/125000 | 2799 | 244:70, 244:293, 244:216 |
| 244:299 | CFH | lo | 89107/250000 | 89107/250000 | 2833 | 244:132, 244:124, 244:240 |
| 244:300 | CFR | lo | 66019/200000 | 66019/200000 | 2841 | 244:231, 244:128, 244:196 |
| 244:303 | BCS | lo | 78667/250000 | 74261717/236000000 | 46 | 244:0, 244:259, 244:28, 244:72, 244:17 |
| 244:313 | CFS | lo | 14091/125000 | 12623440161/111980500000 | 636 | 244:259, 244:184, 244:136, 244:158, 244:264 |
| 244:315 | CQR | lo | 133189/1000000 | 951338850/7142728171 | 720 | 244:124, 244:134, 244:300, 244:132, 244:121 |
| 244:317 | CPS | hi | 273649/500000 | 1160490329501/2120401000000 | 1801 | 244:1, 244:78, 244:22, 244:8, 244:252, 244:257 |
| 244:323 | FHQ | lo | 90137/500000 | 5633585941/31250000000 | 1911 | 244:27, 244:315, 244:298, 244:24, 244:42, 244:299, 244:182 |
| 244:324 | FHS | lo | 58749/500000 | 29374701/250000000 | 1952 | 244:27, 244:231, 244:70, 244:28, 244:42, 244:299, 244:182 |
| 244:338 | APS | lo | 97347/500000 | 48673725767/250000000000 | 2347 | 244:135, 244:208, 244:231, 244:136, 244:22, 244:52, 244:297 |
| 244:343 | AFQ | lo | 27079/200000 | 370508109/2736490000 | 2461 | 244:317, 244:212, 244:146, 244:138, 244:18, 244:44, 244:50 |
| 244:348 | AQS | lo | 30007/200000 | 89415620071/595964790750 | 2501 | 244:157, 244:196, 244:176, 244:158, 244:36, 244:343, 244:298 |
| 244:349 | CHS | lo | 189411/500000 | 903059487727/2383859163000 | 2510 | 244:157, 244:196, 244:176, 244:158, 244:110, 244:299, 244:134 |
| 244:350 | CQS | lo | 20233/200000 | 120582724517/1191929581500 | 2512 | 244:157, 244:196, 244:176, 244:158, 244:114, 244:124, 244:315 |
| 244:353 | APR | lo | 190347/500000 | 190347/500000 | 2798 | 244:70, 244:338, 244:214 |
| 244:355 | AQR | lo | 67207/200000 | 67207/200000 | 2799 | 244:70, 244:348, 244:216 |
| 244:356 | CFH | lo | 183137/500000 | 183137/500000 | 2833 | 244:132, 244:124, 244:323 |
| 244:357 | CFR | lo | 4327/12500 | 4327/12500 | 2841 | 244:231, 244:313, 244:196 |
| 244:358 | CPR | lo | 319189/1000000 | 319189/1000000 | 2848 | 244:138, 244:315, 244:210 |
| 244:374 | CRS | lo | 35249/250000 | 31373209/222510632 | 340 | 244:26, 244:214, 244:70, 244:358, 244:63 |
| 244:376 | CFS | lo | 22729/200000 | 12726111051/111980500000 | 636 | 244:259, 244:324, 244:349, 244:158, 244:264 |
| 244:379 | CQR | lo | 135281/1000000 | 966279300/7142728171 | 720 | 244:124, 244:134, 244:357, 244:132, 244:121 |
| 244:384 | FHQ | lo | 184829/1000000 | 18482962859/100000000000 | 1911 | 244:27, 244:379, 244:355, 244:24, 244:42, 244:356, 244:182 |
| 244:385 | FHS | lo | 59207/500000 | 59207241/500000000 | 1952 | 244:27, 244:374, 244:70, 244:28, 244:42, 244:356, 244:182 |
| 244:401 | APS | lo | 3156/15625 | 50496204117/250000000000 | 2347 | 244:135, 244:208, 244:374, 244:349, 244:22, 244:52, 244:353 |
| 244:406 | AFQ | lo | 135403/1000000 | 74105891/547298000 | 2461 | 244:317, 244:212, 244:350, 244:138, 244:18, 244:44, 244:50 |
| 244:409 | AQS | lo | 150997/1000000 | 119985977803/794619721000 | 2501 | 244:157, 244:196, 244:176, 244:158, 244:36, 244:406, 244:355 |
| 244:410 | CHS | lo | 380823/1000000 | 907828643977/2383859163000 | 2510 | 244:157, 244:196, 244:176, 244:158, 244:110, 244:356, 244:134 |
| 244:411 | CQS | lo | 101591/1000000 | 121089380767/1191929581500 | 2512 | 244:157, 244:196, 244:176, 244:158, 244:114, 244:124, 244:379 |
| 244:414 | APR | lo | 24249/62500 | 24249/62500 | 2798 | 244:70, 244:401, 244:214 |
| 244:416 | AQR | lo | 336997/1000000 | 336997/1000000 | 2799 | 244:70, 244:409, 244:216 |
| 244:418 | CFH | lo | 370829/1000000 | 370829/1000000 | 2833 | 244:132, 244:124, 244:384 |
| 244:419 | CFR | lo | 347641/1000000 | 347641/1000000 | 2841 | 244:374, 244:376, 244:196 |
| 244:421 | CPR | lo | 321281/1000000 | 321281/1000000 | 2848 | 244:138, 244:379, 244:210 |
| 244:436 | CHP | lo | 13577/125000 | 54308485279/500000000000 | 303 | 244:20, 244:421, 244:22, 244:134, 244:27 |
| 244:437 | CRS | lo | 141287/1000000 | 31438061/222510632 | 340 | 244:26, 244:214, 244:70, 244:421, 244:63 |
| 244:439 | CFS | lo | 57167/500000 | 12803182443/111980500000 | 636 | 244:259, 244:385, 244:410, 244:158, 244:264 |
| 244:442 | CQR | lo | 67737/500000 | 967656630/7142728171 | 720 | 244:124, 244:134, 244:419, 244:132, 244:121 |
| 244:444 | FHP | lo | 78233/500000 | 2654165719/16963208000 | 1806 | 244:1, 244:78, 244:22, 244:8, 244:42, 244:94, 244:418 |
| 244:445 | FHQ | lo | 186627/1000000 | 186627539513/1000000000000 | 1911 | 244:27, 244:442, 244:416, 244:24, 244:42, 244:418, 244:182 |
| 244:446 | FHS | lo | 59419/500000 | 118838097/1000000000 | 1952 | 244:27, 244:437, 244:70, 244:28, 244:42, 244:418, 244:182 |
| 244:451 | FPS | lo | 49043/500000 | 7050237/71878000 | 2146 | 244:77, 244:436, 244:100, 244:78, 244:98, 244:439, 244:446 |
| 244:462 | APS | lo | 25667/125000 | 25667086479/125000000000 | 2347 | 244:135, 244:208, 244:437, 244:410, 244:22, 244:52, 244:414 |
| 244:468 | AFQ | lo | 135407/1000000 | 370540531/2736490000 | 2461 | 244:317, 244:212, 244:411, 244:138, 244:18, 244:44, 244:50 |
| 244:472 | AQS | lo | 75597/500000 | 120141946553/794619721000 | 2501 | 244:157, 244:196, 244:176, 244:158, 244:36, 244:468, 244:416 |
| 244:473 | CHS | lo | 95437/250000 | 455017486051/1191929581500 | 2510 | 244:157, 244:196, 244:176, 244:158, 244:110, 244:418, 244:134 |
| 244:474 | CQS | lo | 10163/100000 | 80757415303/794619721000 | 2512 | 244:157, 244:196, 244:176, 244:158, 244:114, 244:124, 244:442 |
| 244:477 | APR | lo | 48917/125000 | 48917/125000 | 2798 | 244:70, 244:462, 244:214 |
| 244:479 | AQR | lo | 168597/500000 | 168597/500000 | 2799 | 244:70, 244:472, 244:216 |
| 244:481 | CFH | lo | 372627/1000000 | 372627/1000000 | 2833 | 244:132, 244:124, 244:445 |
| 244:482 | CFR | lo | 348621/1000000 | 348621/1000000 | 2841 | 244:437, 244:439, 244:196 |
| 244:484 | CPR | lo | 160737/500000 | 160737/500000 | 2848 | 244:138, 244:442, 244:210 |
| 244:488 | FPR | lo | 142043/500000 | 142043/500000 | 2876 | 244:196, 244:451, 244:214 |
| 244:499 | CHP | lo | 108643/1000000 | 27160877883/250000000000 | 303 | 244:20, 244:484, 244:22, 244:134, 244:27 |
| 244:500 | CRS | lo | 70657/500000 | 7861011/55627658 | 340 | 244:26, 244:214, 244:70, 244:484, 244:63 |
| 244:501 | AFP | lo | 98243/1000000 | 1369543384/13940296875 | 443 | 244:52, 244:488, 244:477, 244:444, 244:201 |
| 244:503 | CFS | lo | 28663/250000 | 12838828881/111980500000 | 636 | 244:259, 244:446, 244:473, 244:158, 244:264 |
| 244:506 | CQR | lo | 135601/1000000 | 968568030/7142728171 | 720 | 244:124, 244:134, 244:482, 244:132, 244:121 |
| 244:508 | FHP | lo | 39219/250000 | 32061843/204376000 | 1806 | 244:1, 244:78, 244:22, 244:8, 244:42, 244:94, 244:481 |
| 244:510 | FHQ | lo | 23411/125000 | 93644273319/500000000000 | 1911 | 244:27, 244:506, 244:479, 244:24, 244:42, 244:481, 244:182 |
| 244:511 | FHS | lo | 23801/200000 | 119005311/1000000000 | 1952 | 244:27, 244:500, 244:70, 244:28, 244:42, 244:481, 244:182 |
| 244:517 | FPS | lo | 49069/500000 | 28215983/287512000 | 2146 | 244:77, 244:499, 244:100, 244:78, 244:98, 244:503, 244:511 |
| 244:528 | APS | lo | 206889/1000000 | 1616321651/7812500000 | 2347 | 244:135, 244:208, 244:500, 244:473, 244:22, 244:52, 244:477 |
| 244:534 | AFQ | lo | 27083/200000 | 7411267909/54729800000 | 2461 | 244:317, 244:212, 244:474, 244:138, 244:18, 244:501, 244:50 |
| 244:538 | AQS | lo | 30247/200000 | 180262568267/1191929581500 | 2501 | 244:157, 244:196, 244:176, 244:158, 244:36, 244:534, 244:479 |
| 244:539 | CHS | lo | 382113/1000000 | 37954411598/99327465125 | 2510 | 244:157, 244:196, 244:176, 244:158, 244:110, 244:481, 244:134 |
| 244:540 | CQS | lo | 12707/125000 | 121166880767/1191929581500 | 2512 | 244:157, 244:196, 244:176, 244:158, 244:114, 244:124, 244:506 |
| 244:543 | APR | lo | 392889/1000000 | 392889/1000000 | 2798 | 244:70, 244:528, 244:214 |
| 244:545 | AQR | lo | 67447/200000 | 67447/200000 | 2799 | 244:70, 244:538, 244:216 |
| 244:547 | CFH | lo | 46661/125000 | 46661/125000 | 2833 | 244:132, 244:124, 244:510 |
| 244:548 | CFR | lo | 174483/500000 | 174483/500000 | 2841 | 244:500, 244:503, 244:196 |
| 244:550 | CPR | lo | 321601/1000000 | 321601/1000000 | 2848 | 244:138, 244:506, 244:210 |
| 244:554 | FPR | lo | 142069/500000 | 142069/500000 | 2876 | 244:196, 244:517, 244:214 |
| 244:565 | CHP | lo | 5433/50000 | 54330488159/500000000000 | 303 | 244:20, 244:550, 244:22, 244:134, 244:27 |
| 244:566 | CRS | lo | 35333/250000 | 31447981/222510632 | 340 | 244:26, 244:214, 244:70, 244:550, 244:63 |
| 244:567 | AFP | lo | 98701/1000000 | 7338307397/74348250000 | 443 | 244:52, 244:554, 244:543, 244:508, 244:201 |
| 244:569 | CFS | lo | 114777/1000000 | 5141153799/44792200000 | 636 | 244:259, 244:511, 244:539, 244:158, 244:264 |
| 244:572 | CQR | lo | 67823/500000 | 968888880/7142728171 | 720 | 244:124, 244:134, 244:548, 244:132, 244:121 |
| 244:574 | FHP | lo | 157027/1000000 | 332961793/2120401000 | 1806 | 244:1, 244:78, 244:22, 244:8, 244:42, 244:94, 244:547 |
| 244:576 | FHQ | lo | 93761/500000 | 1172018273/6250000000 | 1911 | 244:27, 244:572, 244:545, 244:24, 244:42, 244:547, 244:182 |
| 244:577 | FHS | lo | 59533/500000 | 3720837/31250000 | 1952 | 244:27, 244:566, 244:70, 244:28, 244:42, 244:547, 244:182 |
| 244:583 | FPS | lo | 49079/500000 | 28221749/287512000 | 2146 | 244:77, 244:565, 244:100, 244:78, 244:98, 244:569, 244:577 |
| 244:594 | APS | lo | 207591/1000000 | 207591485457/1000000000000 | 2347 | 244:135, 244:208, 244:566, 244:539, 244:22, 244:52, 244:543 |
| 244:600 | AFQ | lo | 271/2000 | 2317480433/17103062500 | 2461 | 244:317, 244:212, 244:540, 244:138, 244:18, 244:567, 244:50 |
| 244:604 | AQS | lo | 151261/1000000 | 45073270973/297982395375 | 2501 | 244:157, 244:196, 244:176, 244:158, 244:36, 244:600, 244:545 |
| 244:605 | CHS | lo | 47781/125000 | 911226050227/2383859163000 | 2510 | 244:157, 244:196, 244:176, 244:158, 244:110, 244:547, 244:134 |
| 244:606 | CQS | lo | 20333/200000 | 242355558409/2383859163000 | 2512 | 244:157, 244:196, 244:176, 244:158, 244:114, 244:124, 244:572 |
| 244:609 | APR | lo | 393591/1000000 | 393591/1000000 | 2798 | 244:70, 244:594, 244:214 |
| 244:611 | AQR | lo | 337261/1000000 | 337261/1000000 | 2799 | 244:70, 244:604, 244:216 |
| 244:613 | CFH | lo | 186761/500000 | 186761/500000 | 2833 | 244:132, 244:124, 244:576 |
| 244:614 | CFR | lo | 349109/1000000 | 349109/1000000 | 2841 | 244:566, 244:569, 244:196 |
| 244:616 | CPR | lo | 160823/500000 | 160823/500000 | 2848 | 244:138, 244:572, 244:210 |
| 244:620 | FPR | lo | 142079/500000 | 142079/500000 | 2876 | 244:196, 244:583, 244:214 |
| 244:631 | CHP | lo | 108667/1000000 | 27166791157/250000000000 | 303 | 244:20, 244:616, 244:22, 244:134, 244:27 |
| 244:632 | CRS | lo | 70669/500000 | 3931172/27813829 | 340 | 244:26, 244:214, 244:70, 244:616, 244:63 |
| 244:633 | AFP | lo | 98893/1000000 | 29410369319/297393000000 | 443 | 244:52, 244:620, 244:609, 244:574, 244:201 |
| 244:635 | CFS | lo | 14353/125000 | 12858057567/111980500000 | 636 | 244:259, 244:577, 244:605, 244:158, 244:264 |
| 244:638 | CQR | lo | 27133/200000 | 969021870/7142728171 | 720 | 244:124, 244:134, 244:614, 244:132, 244:121 |
| 244:640 | FHP | lo | 157081/1000000 | 1332300547/8481604000 | 1806 | 244:1, 244:78, 244:22, 244:8, 244:42, 244:94, 244:613 |
| 244:642 | FHQ | lo | 187609/1000000 | 93804565121/500000000000 | 1911 | 244:27, 244:638, 244:611, 244:24, 244:42, 244:613, 244:182 |
| 244:643 | FHS | lo | 7443/62500 | 59544273/500000000 | 1952 | 244:27, 244:632, 244:70, 244:28, 244:42, 244:613, 244:182 |
| 244:649 | FPS | lo | 19633/200000 | 1763993/17969500 | 2146 | 244:77, 244:631, 244:100, 244:78, 244:98, 244:635, 244:643 |
| 244:660 | APS | lo | 2079/10000 | 25987538571/125000000000 | 2347 | 244:135, 244:208, 244:632, 244:605, 244:22, 244:52, 244:609 |
| 244:666 | AFQ | lo | 8471/62500 | 14835788969/109459600000 | 2461 | 244:317, 244:212, 244:606, 244:138, 244:18, 244:633, 244:50 |
| 244:669 | AQS | lo | 75637/500000 | 1226585711/8108364500 | 2501 | 244:157, 244:196, 244:176, 244:158, 244:36, 244:666, 244:611 |
| 244:670 | CHS | lo | 76459/200000 | 911339393977/2383859163000 | 2510 | 244:157, 244:196, 244:176, 244:158, 244:110, 244:613, 244:134 |
| 244:671 | CQS | lo | 101669/1000000 | 17311768681/170275654500 | 2512 | 244:157, 244:196, 244:176, 244:158, 244:114, 244:124, 244:638 |
| 244:674 | APR | lo | 3939/10000 | 3939/10000 | 2798 | 244:70, 244:660, 244:214 |
| 244:676 | AQR | lo | 168637/500000 | 168637/500000 | 2799 | 244:70, 244:669, 244:216 |
| 244:678 | CFH | lo | 373609/1000000 | 373609/1000000 | 2833 | 244:132, 244:124, 244:642 |
| 244:679 | CFR | lo | 174581/500000 | 174581/500000 | 2841 | 244:632, 244:635, 244:196 |
| 244:681 | CPR | lo | 64333/200000 | 64333/200000 | 2848 | 244:138, 244:638, 244:210 |
| 244:685 | FPR | lo | 56833/200000 | 56833/200000 | 2876 | 244:196, 244:649, 244:214 |
| 244:696 | CHP | lo | 108669/1000000 | 10866977747/100000000000 | 303 | 244:20, 244:681, 244:22, 244:134, 244:27 |
| 244:697 | CRS | lo | 141341/1000000 | 31449965/222510632 | 340 | 244:26, 244:214, 244:70, 244:681, 244:63 |
| 244:698 | AFP | lo | 24743/250000 | 294338503/2973930000 | 443 | 244:52, 244:685, 244:674, 244:640, 244:201 |
| 244:700 | CFS | lo | 2871/25000 | 6429942003/55990250000 | 636 | 244:259, 244:643, 244:670, 244:158, 244:264 |
| 244:703 | CQR | lo | 16959/125000 | 969071160/7142728171 | 720 | 244:124, 244:134, 244:679, 244:132, 244:121 |
| 244:705 | FHP | lo | 157101/1000000 | 2664938219/16963208000 | 1806 | 244:1, 244:78, 244:22, 244:8, 244:42, 244:94, 244:678 |
| 244:707 | FHQ | lo | 93821/500000 | 93821059933/500000000000 | 1911 | 244:27, 244:703, 244:676, 244:24, 244:42, 244:678, 244:182 |
| 244:708 | FHS | lo | 14887/125000 | 119096637/1000000000 | 1952 | 244:27, 244:697, 244:70, 244:28, 244:42, 244:678, 244:182 |
| 244:713 | FPS | lo | 12271/125000 | 3528079/35939000 | 2146 | 244:77, 244:696, 244:100, 244:78, 244:98, 244:700, 244:708 |
| 244:723 | APS | lo | 6501/31250 | 416065131/2000000000 | 2347 | 244:135, 244:208, 244:697, 244:670, 244:22, 244:52, 244:674 |
| 244:728 | AFQ | lo | 135551/1000000 | 18546750067/136824500000 | 2461 | 244:317, 244:212, 244:671, 244:138, 244:18, 244:698, 244:50 |
| 244:731 | AQS | lo | 151279/1000000 | 25759268681/170275654500 | 2501 | 244:157, 244:196, 244:176, 244:158, 244:36, 244:728, 244:676 |
| 244:732 | CHS | lo | 382313/1000000 | 65098681043/170275654500 | 2510 | 244:157, 244:196, 244:176, 244:158, 244:110, 244:678, 244:134 |
| 244:733 | CQS | lo | 10167/100000 | 11541340579/113517103000 | 2512 | 244:157, 244:196, 244:176, 244:158, 244:114, 244:124, 244:703 |
| 244:736 | APR | lo | 24627/62500 | 24627/62500 | 2798 | 244:70, 244:723, 244:214 |
| 244:738 | AQR | lo | 337279/1000000 | 337279/1000000 | 2799 | 244:70, 244:731, 244:216 |
| 244:740 | CFH | lo | 186821/500000 | 186821/500000 | 2833 | 244:132, 244:124, 244:707 |
| 244:741 | CFR | lo | 349181/1000000 | 349181/1000000 | 2841 | 244:697, 244:700, 244:196 |
| 244:743 | CPR | lo | 40209/125000 | 40209/125000 | 2848 | 244:138, 244:703, 244:210 |
| 244:747 | FPR | lo | 35521/125000 | 35521/125000 | 2876 | 244:196, 244:713, 244:214 |
| 244:756 | CHP | lo | 10867/100000 | 848990157/7812500000 | 303 | 244:20, 244:743, 244:22, 244:134, 244:27 |
| 244:757 | CRS | lo | 70671/500000 | 15725091/111255316 | 340 | 244:26, 244:214, 244:70, 244:743, 244:63 |
| 244:758 | AFP | lo | 19801/200000 | 1840217609/18587062500 | 443 | 244:52, 244:747, 244:736, 244:705, 244:201 |
| 244:760 | CFS | lo | 57423/500000 | 6430284651/55990250000 | 636 | 244:259, 244:708, 244:732, 244:158, 244:264 |
| 244:763 | CQR | lo | 67837/500000 | 969088830/7142728171 | 720 | 244:124, 244:134, 244:741, 244:132, 244:121 |
| 244:765 | FHP | lo | 39277/250000 | 1332533047/8481604000 | 1806 | 244:1, 244:78, 244:22, 244:8, 244:42, 244:94, 244:740 |
| 244:766 | FHQ | lo | 93827/500000 | 93827326559/500000000000 | 1911 | 244:27, 244:763, 244:738, 244:24, 244:42, 244:740, 244:182 |
| 244:767 | FHS | lo | 119099/1000000 | 59549853/500000000 | 1952 | 244:27, 244:757, 244:70, 244:28, 244:42, 244:740, 244:182 |
| 244:773 | FPS | lo | 98169/1000000 | 28224911/287512000 | 2146 | 244:77, 244:756, 244:100, 244:78, 244:98, 244:760, 244:767 |
| 244:782 | APS | lo | 26011/125000 | 26011055877/125000000000 | 2347 | 244:135, 244:208, 244:757, 244:732, 244:22, 244:52, 244:736 |
| 244:787 | AFQ | lo | 135557/1000000 | 1483807227/10945960000 | 2461 | 244:317, 244:212, 244:733, 244:138, 244:18, 244:758, 244:50 |
| 244:790 | AQS | lo | 75641/500000 | 120211696553/794619721000 | 2501 | 244:157, 244:196, 244:176, 244:158, 244:36, 244:787, 244:738 |
| 244:791 | CHS | lo | 4779/12500 | 911397518977/2383859163000 | 2510 | 244:157, 244:196, 244:176, 244:158, 244:110, 244:740, 244:134 |
| 244:794 | APR | lo | 49261/125000 | 49261/125000 | 2798 | 244:70, 244:782, 244:214 |
| 244:796 | AQR | lo | 168641/500000 | 168641/500000 | 2799 | 244:70, 244:790, 244:216 |
| 244:798 | CFH | lo | 186827/500000 | 186827/500000 | 2833 | 244:132, 244:124, 244:766 |
| 244:799 | CFR | lo | 87297/250000 | 87297/250000 | 2841 | 244:757, 244:760, 244:196 |
| 244:800 | CPR | lo | 160837/500000 | 160837/500000 | 2848 | 244:138, 244:763, 244:210 |
| 244:802 | FPR | lo | 284169/1000000 | 284169/1000000 | 2876 | 244:196, 244:773, 244:214 |
| 244:810 | CHP | lo | 108671/1000000 | 27167753783/250000000000 | 303 | 244:20, 244:800, 244:22, 244:134, 244:27 |
| 244:811 | AFP | lo | 49509/500000 | 11042761813/111522375000 | 443 | 244:52, 244:802, 244:794, 244:765, 244:201 |
| 244:813 | CFS | lo | 3589/31250 | 25721664201/223961000000 | 636 | 244:259, 244:767, 244:791, 244:158, 244:264 |
| 244:816 | CQR | lo | 5427/40000 | 969095340/7142728171 | 720 | 244:124, 244:134, 244:799, 244:132, 244:121 |
| 244:819 | FHQ | lo | 187659/1000000 | 46914885607/250000000000 | 1911 | 244:27, 244:816, 244:796, 244:24, 244:42, 244:798, 244:182 |
| 244:829 | APS | lo | 208111/1000000 | 10161717/48828125 | 2347 | 244:135, 244:208, 244:757, 244:791, 244:22, 244:52, 244:794 |
| 244:831 | AFQ | lo | 135559/1000000 | 3709584153/27364900000 | 2461 | 244:317, 244:212, 244:733, 244:138, 244:18, 244:811, 244:50 |
| 244:832 | AQS | lo | 151283/1000000 | 180318755767/1191929581500 | 2501 | 244:157, 244:196, 244:176, 244:158, 244:36, 244:831, 244:796 |
| 244:833 | CHS | lo | 191161/500000 | 911403331477/2383859163000 | 2510 | 244:157, 244:196, 244:176, 244:158, 244:110, 244:798, 244:134 |
| 244:834 | CQS | lo | 101671/1000000 | 20197467107/198654930250 | 2512 | 244:157, 244:196, 244:176, 244:158, 244:114, 244:124, 244:816 |
| 244:837 | APR | lo | 394111/1000000 | 394111/1000000 | 2798 | 244:70, 244:829, 244:214 |
| 244:839 | AQR | lo | 337283/1000000 | 337283/1000000 | 2799 | 244:70, 244:832, 244:216 |
| 244:841 | CFH | lo | 373659/1000000 | 373659/1000000 | 2833 | 244:132, 244:124, 244:819 |
| 244:842 | CFR | lo | 34919/100000 | 34919/100000 | 2841 | 244:757, 244:813, 244:196 |
| 244:858 | CQR | lo | 33919/250000 | 969097200/7142728171 | 720 | 244:124, 244:134, 244:842, 244:132, 244:121 |
| 244:860 | FHQ | lo | 187661/1000000 | 187661509497/1000000000000 | 1911 | 244:27, 244:858, 244:839, 244:24, 244:42, 244:841, 244:182 |
| 244:861 | FHS | lo | 119101/1000000 | 119101287/1000000000 | 1952 | 244:27, 244:757, 244:70, 244:28, 244:42, 244:841, 244:182 |
| 244:870 | APS | lo | 208121/1000000 | 104060679871/500000000000 | 2347 | 244:135, 244:208, 244:757, 244:833, 244:22, 244:52, 244:837 |
| 244:875 | CHS | lo | 382323/1000000 | 37975239723/99327465125 | 2510 | 244:157, 244:196, 244:176, 244:158, 244:110, 244:841, 244:134 |
| 244:878 | APR | lo | 394121/1000000 | 394121/1000000 | 2798 | 244:70, 244:870, 244:214 |
| 244:880 | CFH | lo | 373661/1000000 | 373661/1000000 | 2833 | 244:132, 244:124, 244:860 |
| 244:891 | CFS | lo | 2297/20000 | 25721937099/223961000000 | 636 | 244:259, 244:861, 244:875, 244:158, 244:264 |
| 244:893 | FHQ | lo | 93831/500000 | 187662184063/1000000000000 | 1911 | 244:27, 244:858, 244:839, 244:24, 244:42, 244:880, 244:182 |
| 244:898 | APS | lo | 333/1600 | 208125484083/1000000000000 | 2347 | 244:135, 244:208, 244:757, 244:875, 244:22, 244:52, 244:878 |
| 244:900 | CHS | lo | 95581/250000 | 455703361051/1191929581500 | 2510 | 244:157, 244:196, 244:176, 244:158, 244:110, 244:880, 244:134 |
| 244:902 | APR | lo | 3153/8000 | 3153/8000 | 2798 | 244:70, 244:898, 244:214 |
| 244:904 | CFH | lo | 186831/500000 | 186831/500000 | 2833 | 244:132, 244:124, 244:893 |
| 244:909 | FHP | lo | 157113/1000000 | 1332571797/8481604000 | 1806 | 244:1, 244:78, 244:22, 244:8, 244:42, 244:94, 244:904 |
| 244:911 | APS | lo | 208127/1000000 | 416254629/2000000000 | 2347 | 244:135, 244:208, 244:757, 244:900, 244:22, 244:52, 244:902 |
| 244:912 | APR | lo | 394127/1000000 | 394127/1000000 | 2798 | 244:70, 244:911, 244:214 |
| 244:917 | APS | lo | 3252/15625 | 52032019787/250000000000 | 2347 | 244:135, 244:208, 244:757, 244:900, 244:22, 244:52, 244:912 |
| 244:918 | APR | lo | 24633/62500 | 24633/62500 | 2798 | 244:70, 244:917, 244:214 |
