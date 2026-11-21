# BITT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 100

| Property | Value |
| --- | --- |
| Scope | root/ACP+/HBP-/HEQ-/CFQ+/PQR+ |
| Packet | forest:root/ACP+/HBP-/HEQ-/CFQ+/PQR+ |
| Index | 1 |
| Context | 42 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 99 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 17183/125000 | 59/125 | 17183/125000 | 59/125 |
| b | 40433/125000 | 84567/125000 | 40433/125000 | 84567/125000 |
| c | 13857/20000 | 1/1 | 13857/20000 | 1/1 |
| e | 17183/125000 | 59/125 | 17183/125000 | 59/125 |
| f | 40433/125000 | 84567/125000 | 40433/125000 | 84567/125000 |
| h | 13857/20000 | 1/1 | 13857/20000 | 1/1 |
| p | 107821/1000000 | 235733/500000 | 107821/1000000 | 235733/500000 |
| q | 82827/500000 | 703163/1000000 | 82827/500000 | 703163/1000000 |
| u | 107821/1000000 | 107817/125000 | 32973/250000 | 107817/125000 |
| v | 17183/125000 | 850071/1000000 | 17183/125000 | 418681/500000 |
| r | 40433/62500 | 1/1 | 40433/62500 | 1/1 |
| w | 274929/500000 | 1/1 | 274929/500000 | 1/1 |
| j | 51267/100000 | 892179/1000000 | 51267/100000 | 892179/1000000 |
| k | 412393/1000000 | 8033/8963 | 412393/1000000 | 8033/8963 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 89 | A_EHQ | bitt ["actual-area","EHQ",[]] | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -93/1000` |
| 501 | AREA_lo_AHQ | bitt ["earlier-area",{"direction":"lo","ref":"99:203","triangle":"AHQ","value":"56881/500000"}] | `1/1 * h * u + -1/1 * a * u + -56881/500000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 501 | u | 107821/1000000 | 107817/125000 | 56881/431268 | 107817/125000 | 32973/250000 | 107817/125000 | `(277693/500000, -56881/500000); (4417/20000, -56881/500000); (107817/125000, -56881/500000); (66/125, -56881/500000)` |
| 1 | 89 | v | 17183/125000 | 850071/1000000 | 17183/125000 | 6541883/7812500 | 17183/125000 | 418681/500000 | `(-1/1, 65824878711/125000000000); (-1/1, 2853608259/5000000000); (-1/1, 24788700059/31250000000); (-1/1, 6541883/7812500); (-1/1, 7550598819/62500000000); (-1/1, 1023397311/2500000000); (-1/1, 2547369511/15625000000); (-1/1, 7055953/15625000)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 100:4 | ABF | lo | 119853/1000000 | earlier 99:4; ABF; lo; 119853/1000000 |
| 100:9 | ABP | hi | 397537/1000000 | earlier 99:9; ABP; hi; 397537/1000000 |
| 100:10 | ABQ | lo | 30069/250000 | earlier 99:10; ABQ; lo; 30069/250000 |
| 100:23 | ACP | hi | 114557/200000 | earlier 99:23; ACP; hi; 114557/200000 |
| 100:30 | AEF | lo | 58423/500000 | earlier 99:30; AEF; lo; 58423/500000 |
| 100:32 | AEH | lo | 34/125 | earlier 99:32; AEH; lo; 34/125 |
| 100:37 | AES | hi | 45317/62500 | earlier 99:37; AES; hi; 45317/62500 |
| 100:46 | AHQ | lo | 56881/500000 | earlier 99:203; AHQ; lo; 56881/500000 |
| 100:47 | AHQ | hi | 725709/1000000 | earlier 99:47; AHQ; hi; 725709/1000000 |
| 100:50 | AHS | lo | 121527/1000000 | earlier 99:50; AHS; lo; 121527/1000000 |
| 100:56 | BCH | lo | 13743/125000 | earlier 99:56; BCH; lo; 13743/125000 |
| 100:68 | BEH | lo | 191911/1000000 | earlier 99:68; BEH; lo; 191911/1000000 |
| 100:80 | BFR | lo | 13327/125000 | earlier 99:80; BFR; lo; 13327/125000 |
| 100:85 | BHP | hi | 397537/1000000 | earlier 99:85; BHP; hi; 397537/1000000 |
| 100:98 | CEF | lo | 105173/1000000 | earlier 99:257; CEF; lo; 105173/1000000 |
| 100:102 | CEP | lo | 122643/1000000 | earlier 99:102; CEP; lo; 122643/1000000 |
| 100:110 | CFH | lo | 75161/250000 | earlier 99:255; CFH; lo; 75161/250000 |
| 100:113 | CFP | hi | 833139/1000000 | earlier 99:113; CFP; hi; 833139/1000000 |
| 100:121 | CHP | hi | 84567/125000 | earlier 99:121; CHP; hi; 84567/125000 |
| 100:133 | CPS | hi | 779927/1000000 | earlier 99:133; CPS; hi; 779927/1000000 |
| 100:135 | CQR | hi | 173267/250000 | earlier 99:135; CQR; hi; 173267/250000 |
| 100:149 | EHP | hi | 8997/12500 | earlier 99:149; EHP; hi; 8997/12500 |
| 100:151 | EHQ | hi | 28011/62500 | earlier 99:151; EHQ; hi; 28011/62500 |
| 100:161 | EQR | hi | 321691/500000 | earlier 99:207; EQR; hi; 321691/500000 |
| 100:165 | ERS | hi | 397537/1000000 | earlier 99:165; ERS; hi; 397537/1000000 |
| 100:169 | FHQ | hi | 9217/15625 | earlier 99:169; FHQ; hi; 9217/15625 |
| 100:189 | HPR | hi | 818719/1000000 | earlier 99:189; HPR; hi; 818719/1000000 |
| 100:193 | HQR | hi | 93641/125000 | earlier 99:193; HQR; hi; 93641/125000 |
| 100:194 | HQS | lo | 96449/1000000 | earlier 99:243; HQS; lo; 96449/1000000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |


## Stage 101

| Property | Value |
| --- | --- |
| Scope | root/ACP+/HBP-/HEQ-/CFQ+/PQR+ |
| Packet | forest:root/ACP+/HBP-/HEQ-/CFQ+/PQR+ |
| Index | 2 |
| Context | 42 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 100 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 17183/125000 | 59/125 | 17183/125000 | 59/125 |
| b | 40433/125000 | 84567/125000 | 40433/125000 | 84567/125000 |
| c | 13857/20000 | 1/1 | 13857/20000 | 1/1 |
| e | 17183/125000 | 59/125 | 17183/125000 | 59/125 |
| f | 40433/125000 | 84567/125000 | 40433/125000 | 84567/125000 |
| h | 13857/20000 | 1/1 | 13857/20000 | 1/1 |
| p | 107821/1000000 | 235733/500000 | 107821/1000000 | 235733/500000 |
| q | 82827/500000 | 703163/1000000 | 82827/500000 | 703163/1000000 |
| u | 32973/250000 | 107817/125000 | 32973/250000 | 107817/125000 |
| v | 17183/125000 | 418681/500000 | 17183/125000 | 418681/500000 |
| r | 40433/62500 | 1/1 | 40433/62500 | 1/1 |
| w | 274929/500000 | 1/1 | 274929/500000 | 1/1 |
| j | 51267/100000 | 892179/1000000 | 51267/100000 | 892179/1000000 |
| k | 412393/1000000 | 8033/8963 | 412393/1000000 | 8033/8963 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |


### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |


### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 101:4 | ABF | lo | 119853/1000000 | earlier 100:4; ABF; lo; 119853/1000000 |
| 101:9 | ABP | hi | 397537/1000000 | earlier 100:9; ABP; hi; 397537/1000000 |
| 101:10 | ABQ | lo | 30069/250000 | earlier 100:10; ABQ; lo; 30069/250000 |
| 101:23 | ACP | hi | 114557/200000 | earlier 100:23; ACP; hi; 114557/200000 |
| 101:30 | AEF | lo | 58423/500000 | earlier 100:30; AEF; lo; 58423/500000 |
| 101:32 | AEH | lo | 34/125 | earlier 100:32; AEH; lo; 34/125 |
| 101:37 | AES | hi | 45317/62500 | earlier 100:37; AES; hi; 45317/62500 |
| 101:46 | AHQ | lo | 56881/500000 | earlier 100:46; AHQ; lo; 56881/500000 |
| 101:47 | AHQ | hi | 725709/1000000 | earlier 100:47; AHQ; hi; 725709/1000000 |
| 101:50 | AHS | lo | 121527/1000000 | earlier 100:50; AHS; lo; 121527/1000000 |
| 101:56 | BCH | lo | 13743/125000 | earlier 100:56; BCH; lo; 13743/125000 |
| 101:68 | BEH | lo | 191911/1000000 | earlier 100:68; BEH; lo; 191911/1000000 |
| 101:80 | BFR | lo | 13327/125000 | earlier 100:80; BFR; lo; 13327/125000 |
| 101:85 | BHP | hi | 397537/1000000 | earlier 100:85; BHP; hi; 397537/1000000 |
| 101:98 | CEF | lo | 105173/1000000 | earlier 100:98; CEF; lo; 105173/1000000 |
| 101:102 | CEP | lo | 122643/1000000 | earlier 100:102; CEP; lo; 122643/1000000 |
| 101:110 | CFH | lo | 75161/250000 | earlier 100:110; CFH; lo; 75161/250000 |
| 101:113 | CFP | hi | 833139/1000000 | earlier 100:113; CFP; hi; 833139/1000000 |
| 101:121 | CHP | hi | 84567/125000 | earlier 100:121; CHP; hi; 84567/125000 |
| 101:133 | CPS | hi | 779927/1000000 | earlier 100:133; CPS; hi; 779927/1000000 |
| 101:135 | CQR | hi | 173267/250000 | earlier 100:135; CQR; hi; 173267/250000 |
| 101:149 | EHP | hi | 8997/12500 | earlier 100:149; EHP; hi; 8997/12500 |
| 101:151 | EHQ | hi | 28011/62500 | earlier 100:151; EHQ; hi; 28011/62500 |
| 101:161 | EQR | hi | 321691/500000 | earlier 100:161; EQR; hi; 321691/500000 |
| 101:165 | ERS | hi | 397537/1000000 | earlier 100:165; ERS; hi; 397537/1000000 |
| 101:169 | FHQ | hi | 9217/15625 | earlier 100:169; FHQ; hi; 9217/15625 |
| 101:189 | HPR | hi | 818719/1000000 | earlier 100:189; HPR; hi; 818719/1000000 |
| 101:193 | HQR | hi | 93641/125000 | earlier 100:193; HQR; hi; 93641/125000 |
| 101:194 | HQS | lo | 96449/1000000 | earlier 100:194; HQS; lo; 96449/1000000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |


## Stage 102

| Property | Value |
| --- | --- |
| Scope | root/ACP+/HBP-/HEQ-/CFQ+/PQR+/PQS+ |
| Packet | forest:root/ACP+/HBP-/HEQ-/CFQ+/PQR+/PQS+ |
| Index | 0 |
| Context | 43 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 101 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 17183/125000 | 59/125 | 17183/125000 | 59/125 |
| b | 40433/125000 | 84567/125000 | 40433/125000 | 84567/125000 |
| c | 13857/20000 | 1/1 | 13857/20000 | 1/1 |
| e | 17183/125000 | 59/125 | 17183/125000 | 59/125 |
| f | 40433/125000 | 84567/125000 | 40433/125000 | 84567/125000 |
| h | 13857/20000 | 1/1 | 13857/20000 | 1/1 |
| p | 107821/1000000 | 235733/500000 | 107821/1000000 | 235733/500000 |
| q | 82827/500000 | 703163/1000000 | 82827/500000 | 703163/1000000 |
| u | 32973/250000 | 107817/125000 | 32973/250000 | 107817/125000 |
| v | 17183/125000 | 418681/500000 | 17183/125000 | 418681/500000 |
| r | 40433/62500 | 1/1 | 40433/62500 | 1/1 |
| w | 274929/500000 | 1/1 | 274929/500000 | 1/1 |
| j | 51267/100000 | 892179/1000000 | 51267/100000 | 892179/1000000 |
| k | 412393/1000000 | 8033/8963 | 412393/1000000 | 8033/8963 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |


### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |


### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 102:4 | ABF | lo | 119853/1000000 | earlier 101:4; ABF; lo; 119853/1000000 |
| 102:9 | ABP | hi | 397537/1000000 | earlier 101:9; ABP; hi; 397537/1000000 |
| 102:10 | ABQ | lo | 30069/250000 | earlier 101:10; ABQ; lo; 30069/250000 |
| 102:20 | ACH | lo | 279/1000 | occupants P |
| 102:23 | ACP | hi | 114557/200000 | earlier 101:23; ACP; hi; 114557/200000 |
| 102:30 | AEF | lo | 58423/500000 | earlier 101:30; AEF; lo; 58423/500000 |
| 102:32 | AEH | lo | 34/125 | earlier 101:32; AEH; lo; 34/125 |
| 102:37 | AES | hi | 45317/62500 | earlier 101:37; AES; hi; 45317/62500 |
| 102:44 | AHP | lo | 93/1000 | occupants none |
| 102:47 | AHQ | hi | 725709/1000000 | earlier 101:47; AHQ; hi; 725709/1000000 |
| 102:50 | AHS | lo | 121527/1000000 | earlier 101:50; AHS; lo; 121527/1000000 |
| 102:56 | BCH | lo | 13743/125000 | earlier 101:56; BCH; lo; 13743/125000 |
| 102:68 | BEH | lo | 191911/1000000 | earlier 101:68; BEH; lo; 191911/1000000 |
| 102:80 | BFR | lo | 13327/125000 | earlier 101:80; BFR; lo; 13327/125000 |
| 102:85 | BHP | hi | 397537/1000000 | earlier 101:85; BHP; hi; 397537/1000000 |
| 102:98 | CEF | lo | 105173/1000000 | earlier 101:98; CEF; lo; 105173/1000000 |
| 102:100 | CEH | lo | 279/1000 | occupants Q |
| 102:102 | CEP | lo | 122643/1000000 | earlier 101:102; CEP; lo; 122643/1000000 |
| 102:106 | CER | lo | 93/1000 | occupants none |
| 102:110 | CFH | lo | 75161/250000 | earlier 101:110; CFH; lo; 75161/250000 |
| 102:113 | CFP | hi | 833139/1000000 | earlier 101:113; CFP; hi; 833139/1000000 |
| 102:114 | CFQ | lo | 93/1000 | occupants none |
| 102:117 | CFR | hi | 84567/125000 | vertex maximum 84567/125000 |
| 102:121 | CHP | hi | 84567/125000 | earlier 101:121; CHP; hi; 84567/125000 |
| 102:122 | CHQ | lo | 93/1000 | occupants none |
| 102:128 | CPQ | lo | 93/1000 | occupants none |
| 102:133 | CPS | hi | 779927/1000000 | earlier 101:133; CPS; hi; 779927/1000000 |
| 102:135 | CQR | hi | 173267/250000 | earlier 101:135; CQR; hi; 173267/250000 |
| 102:136 | CQS | lo | 93/1000 | occupants none |
| 102:144 | EFR | lo | 279/1000 | occupants S |
| 102:149 | EHP | hi | 8997/12500 | earlier 101:149; EHP; hi; 8997/12500 |
| 102:151 | EHQ | hi | 28011/62500 | earlier 101:151; EHQ; hi; 28011/62500 |
| 102:153 | EHR | hi | 107817/125000 | vertex maximum 107817/125000 |
| 102:161 | EQR | hi | 321691/500000 | earlier 101:161; EQR; hi; 321691/500000 |
| 102:165 | ERS | hi | 397537/1000000 | earlier 101:165; ERS; hi; 397537/1000000 |
| 102:166 | FHP | lo | 93/1000 | occupants none |
| 102:169 | FHQ | hi | 9217/15625 | earlier 101:169; FHQ; hi; 9217/15625 |
| 102:170 | FHR | lo | 93/1000 | occupants none |
| 102:172 | FHS | lo | 93/1000 | occupants none |
| 102:189 | HPR | hi | 818719/1000000 | earlier 101:189; HPR; hi; 818719/1000000 |
| 102:193 | HQR | hi | 93641/125000 | earlier 101:193; HQR; hi; 93641/125000 |
| 102:198 | PQS | lo | 93/1000 | occupants none |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 415 | plu | CEF * EHR = CEH * EFR + CER * EFH | circuit ECFHR |
| 416 | plu | CFR * EFH = CEF * FHR + CFH * EFR | circuit FCEHR |
| 1464 | bary | outer CPS; fans PQS, CQS, CPQ; target AHQ; sign -1; vertices ACH -1; AHP -1; AHS -1 | container CPS; inner Q; line AH |
| 1478 | bary | outer CPS; fans PQS, CQS, CPQ; target FHQ; sign 1; vertices CFH 1; FHP 1; FHS 1 | container CPS; inner Q; line FH |
| 1601 | four | 1 * CFH + -1 * CHQ + -1 * CFQ + -1 * FHQ = 0 | vertices CFHQ |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 102:201 | AHQ | lo | 5929/50000 | 46242111/389963500 | 1464 | 102:133, 102:198, 102:136, 102:128, 102:20, 102:44, 102:50 |
| 102:204 | FHQ | lo | 117759/1000000 | 91844103/779927000 | 1478 | 102:133, 102:198, 102:136, 102:128, 102:110, 102:166, 102:172 |
| 102:206 | CFH | lo | 303759/1000000 | 303759/1000000 | 1601 | 102:122, 102:114, 102:204 |
| 102:209 | EFH | lo | 69863/500000 | 630199/4510240 | 416 | 102:98, 102:170, 102:206, 102:144, 102:117 |
| 102:210 | FHQ | lo | 118131/1000000 | 46066899/389963500 | 1478 | 102:133, 102:198, 102:136, 102:128, 102:206, 102:166, 102:172 |
| 102:213 | CFH | lo | 304131/1000000 | 304131/1000000 | 1601 | 102:122, 102:114, 102:210 |
| 102:216 | CEF | lo | 3291/31250 | 15139253/143756000 | 415 | 102:100, 102:144, 102:106, 102:209, 102:153 |
| 102:218 | EFH | lo | 69949/500000 | 6309771/45102400 | 416 | 102:216, 102:170, 102:213, 102:144, 102:117 |
| 102:222 | FHQ | lo | 4727/40000 | 46084197/389963500 | 1478 | 102:133, 102:198, 102:136, 102:128, 102:213, 102:166, 102:172 |
| 102:225 | CFH | lo | 12167/40000 | 12167/40000 | 1601 | 102:122, 102:114, 102:222 |
| 102:228 | CEF | lo | 10533/100000 | 15141919/143756000 | 415 | 102:100, 102:144, 102:106, 102:218, 102:153 |
| 102:230 | EFH | lo | 139919/1000000 | 6310701/45102400 | 416 | 102:228, 102:170, 102:225, 102:144, 102:117 |
| 102:234 | FHQ | lo | 5909/50000 | 46086243/389963500 | 1478 | 102:133, 102:198, 102:136, 102:128, 102:225, 102:166, 102:172 |
| 102:237 | CFH | lo | 15209/50000 | 15209/50000 | 1601 | 102:122, 102:114, 102:234 |
| 102:240 | CEF | lo | 26333/250000 | 30284489/287512000 | 415 | 102:100, 102:144, 102:106, 102:230, 102:153 |
| 102:242 | EFH | lo | 139921/1000000 | 1972127/14094500 | 416 | 102:240, 102:170, 102:237, 102:144, 102:117 |
| 102:244 | FHQ | lo | 118181/1000000 | 92172951/779927000 | 1478 | 102:133, 102:198, 102:136, 102:128, 102:237, 102:166, 102:172 |
| 102:245 | CFH | lo | 304181/1000000 | 304181/1000000 | 1601 | 102:122, 102:114, 102:244 |
| 102:247 | CEF | lo | 105333/1000000 | 30284551/287512000 | 415 | 102:100, 102:144, 102:106, 102:242, 102:153 |
| 102:248 | EFH | lo | 69961/500000 | 7888539/56378000 | 416 | 102:247, 102:170, 102:245, 102:144, 102:117 |

## Stage 103

| Property | Value |
| --- | --- |
| Scope | root/ACP+/HBP-/HEQ-/CFQ+/PQR+/PQS+ |
| Packet | forest:root/ACP+/HBP-/HEQ-/CFQ+/PQR+/PQS+ |
| Index | 1 |
| Context | 43 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 102 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 17183/125000 | 59/125 | 17183/125000 | 59/125 |
| b | 40433/125000 | 84567/125000 | 40433/125000 | 84567/125000 |
| c | 13857/20000 | 1/1 | 13857/20000 | 1/1 |
| e | 17183/125000 | 59/125 | 17183/125000 | 59/125 |
| f | 40433/125000 | 84567/125000 | 40433/125000 | 84567/125000 |
| h | 13857/20000 | 1/1 | 13857/20000 | 1/1 |
| p | 107821/1000000 | 235733/500000 | 107821/1000000 | 235733/500000 |
| q | 82827/500000 | 703163/1000000 | 82827/500000 | 703163/1000000 |
| u | 32973/250000 | 107817/125000 | 68739/500000 | 107817/125000 |
| v | 17183/125000 | 418681/500000 | 17183/125000 | 208603/250000 |
| r | 40433/62500 | 1/1 | 40433/62500 | 1/1 |
| w | 274929/500000 | 1/1 | 274929/500000 | 1/1 |
| j | 51267/100000 | 892179/1000000 | 51267/100000 | 892179/1000000 |
| k | 412393/1000000 | 8033/8963 | 412393/1000000 | 8033/8963 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 89 | A_EHQ | bitt ["actual-area","EHQ",[]] | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -93/1000` |
| 513 | AREA_lo_AHQ | bitt ["earlier-area",{"direction":"lo","ref":"102:201","triangle":"AHQ","value":"5929/50000"}] | `1/1 * h * u + -1/1 * a * u + -5929/50000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 513 | u | 32973/250000 | 107817/125000 | 29645/215634 | 107817/125000 | 68739/500000 | 107817/125000 | `(277693/500000, -5929/50000); (4417/20000, -5929/50000); (107817/125000, -5929/50000); (66/125, -5929/50000)` |
| 1 | 89 | v | 17183/125000 | 418681/500000 | 17183/125000 | 26075363/31250000 | 17183/125000 | 208603/250000 | `(-1/1, 130874160873/250000000000); (-1/1, 5694879837/10000000000); (-1/1, 49276267237/62500000000); (-1/1, 26075363/31250000); (-1/1, 7550598819/62500000000); (-1/1, 1023397311/2500000000); (-1/1, 2547369511/15625000000); (-1/1, 7055953/15625000)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 103:4 | ABF | lo | 119853/1000000 | earlier 102:4; ABF; lo; 119853/1000000 |
| 103:9 | ABP | hi | 397537/1000000 | earlier 102:9; ABP; hi; 397537/1000000 |
| 103:10 | ABQ | lo | 30069/250000 | earlier 102:10; ABQ; lo; 30069/250000 |
| 103:23 | ACP | hi | 114557/200000 | earlier 102:23; ACP; hi; 114557/200000 |
| 103:30 | AEF | lo | 58423/500000 | earlier 102:30; AEF; lo; 58423/500000 |
| 103:32 | AEH | lo | 34/125 | earlier 102:32; AEH; lo; 34/125 |
| 103:37 | AES | hi | 45317/62500 | earlier 102:37; AES; hi; 45317/62500 |
| 103:47 | AHQ | hi | 725709/1000000 | earlier 102:47; AHQ; hi; 725709/1000000 |
| 103:50 | AHS | lo | 121527/1000000 | earlier 102:50; AHS; lo; 121527/1000000 |
| 103:56 | BCH | lo | 13743/125000 | earlier 102:56; BCH; lo; 13743/125000 |
| 103:68 | BEH | lo | 191911/1000000 | earlier 102:68; BEH; lo; 191911/1000000 |
| 103:80 | BFR | lo | 13327/125000 | earlier 102:80; BFR; lo; 13327/125000 |
| 103:85 | BHP | hi | 397537/1000000 | earlier 102:85; BHP; hi; 397537/1000000 |
| 103:98 | CEF | lo | 105333/1000000 | earlier 102:247; CEF; lo; 105333/1000000 |
| 103:102 | CEP | lo | 122643/1000000 | earlier 102:102; CEP; lo; 122643/1000000 |
| 103:110 | CFH | lo | 304181/1000000 | earlier 102:245; CFH; lo; 304181/1000000 |
| 103:113 | CFP | hi | 833139/1000000 | earlier 102:113; CFP; hi; 833139/1000000 |
| 103:121 | CHP | hi | 84567/125000 | earlier 102:121; CHP; hi; 84567/125000 |
| 103:135 | CQR | hi | 173267/250000 | earlier 102:135; CQR; hi; 173267/250000 |
| 103:138 | EFH | lo | 69961/500000 | earlier 102:248; EFH; lo; 69961/500000 |
| 103:149 | EHP | hi | 8997/12500 | earlier 102:149; EHP; hi; 8997/12500 |
| 103:151 | EHQ | hi | 28011/62500 | earlier 102:151; EHQ; hi; 28011/62500 |
| 103:161 | EQR | hi | 321691/500000 | earlier 102:161; EQR; hi; 321691/500000 |
| 103:165 | ERS | hi | 397537/1000000 | earlier 102:165; ERS; hi; 397537/1000000 |
| 103:169 | FHQ | hi | 9217/15625 | earlier 102:169; FHQ; hi; 9217/15625 |
| 103:189 | HPR | hi | 818719/1000000 | earlier 102:189; HPR; hi; 818719/1000000 |
| 103:193 | HQR | hi | 93641/125000 | earlier 102:193; HQR; hi; 93641/125000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |


## Stage 104

| Property | Value |
| --- | --- |
| Scope | root/ACP+/HBP-/HEQ-/CFQ+/PQR+/PQS+ |
| Packet | forest:root/ACP+/HBP-/HEQ-/CFQ+/PQR+/PQS+ |
| Index | 2 |
| Context | 43 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 103 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 17183/125000 | 59/125 | 17183/125000 | 59/125 |
| b | 40433/125000 | 84567/125000 | 40433/125000 | 84567/125000 |
| c | 13857/20000 | 1/1 | 13857/20000 | 1/1 |
| e | 17183/125000 | 59/125 | 17183/125000 | 59/125 |
| f | 40433/125000 | 84567/125000 | 40433/125000 | 84567/125000 |
| h | 13857/20000 | 1/1 | 13857/20000 | 1/1 |
| p | 107821/1000000 | 235733/500000 | 107821/1000000 | 235733/500000 |
| q | 82827/500000 | 703163/1000000 | 82827/500000 | 703163/1000000 |
| u | 68739/500000 | 107817/125000 | 68739/500000 | 107817/125000 |
| v | 17183/125000 | 208603/250000 | 17183/125000 | 208603/250000 |
| r | 40433/62500 | 1/1 | 40433/62500 | 1/1 |
| w | 274929/500000 | 1/1 | 274929/500000 | 1/1 |
| j | 51267/100000 | 892179/1000000 | 51267/100000 | 892179/1000000 |
| k | 412393/1000000 | 8033/8963 | 412393/1000000 | 8033/8963 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |


### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |


### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 104:4 | ABF | lo | 119853/1000000 | earlier 103:4; ABF; lo; 119853/1000000 |
| 104:9 | ABP | hi | 397537/1000000 | earlier 103:9; ABP; hi; 397537/1000000 |
| 104:10 | ABQ | lo | 30069/250000 | earlier 103:10; ABQ; lo; 30069/250000 |
| 104:23 | ACP | hi | 114557/200000 | earlier 103:23; ACP; hi; 114557/200000 |
| 104:30 | AEF | lo | 58423/500000 | earlier 103:30; AEF; lo; 58423/500000 |
| 104:32 | AEH | lo | 34/125 | earlier 103:32; AEH; lo; 34/125 |
| 104:37 | AES | hi | 45317/62500 | earlier 103:37; AES; hi; 45317/62500 |
| 104:47 | AHQ | hi | 725709/1000000 | earlier 103:47; AHQ; hi; 725709/1000000 |
| 104:50 | AHS | lo | 121527/1000000 | earlier 103:50; AHS; lo; 121527/1000000 |
| 104:56 | BCH | lo | 13743/125000 | earlier 103:56; BCH; lo; 13743/125000 |
| 104:68 | BEH | lo | 191911/1000000 | earlier 103:68; BEH; lo; 191911/1000000 |
| 104:80 | BFR | lo | 13327/125000 | earlier 103:80; BFR; lo; 13327/125000 |
| 104:85 | BHP | hi | 397537/1000000 | earlier 103:85; BHP; hi; 397537/1000000 |
| 104:98 | CEF | lo | 105333/1000000 | earlier 103:98; CEF; lo; 105333/1000000 |
| 104:102 | CEP | lo | 122643/1000000 | earlier 103:102; CEP; lo; 122643/1000000 |
| 104:110 | CFH | lo | 304181/1000000 | earlier 103:110; CFH; lo; 304181/1000000 |
| 104:113 | CFP | hi | 833139/1000000 | earlier 103:113; CFP; hi; 833139/1000000 |
| 104:121 | CHP | hi | 84567/125000 | earlier 103:121; CHP; hi; 84567/125000 |
| 104:135 | CQR | hi | 173267/250000 | earlier 103:135; CQR; hi; 173267/250000 |
| 104:138 | EFH | lo | 69961/500000 | earlier 103:138; EFH; lo; 69961/500000 |
| 104:149 | EHP | hi | 8997/12500 | earlier 103:149; EHP; hi; 8997/12500 |
| 104:151 | EHQ | hi | 28011/62500 | earlier 103:151; EHQ; hi; 28011/62500 |
| 104:161 | EQR | hi | 321691/500000 | earlier 103:161; EQR; hi; 321691/500000 |
| 104:165 | ERS | hi | 397537/1000000 | earlier 103:165; ERS; hi; 397537/1000000 |
| 104:169 | FHQ | hi | 9217/15625 | earlier 103:169; FHQ; hi; 9217/15625 |
| 104:189 | HPR | hi | 818719/1000000 | earlier 103:189; HPR; hi; 818719/1000000 |
| 104:193 | HQR | hi | 93641/125000 | earlier 103:193; HQR; hi; 93641/125000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
