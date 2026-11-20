# BITT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 95

| Property | Value |
| --- | --- |
| Scope | root/ACP+/HBP-/HEQ- |
| Packet | forest:root/ACP+/HBP-/HEQ- |
| Index | 0 |
| Context | 40 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 8 |
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
| u | 107821/1000000 | 907/1000 | 107821/1000000 | 907/1000 |
| v | 17183/125000 | 907/1000 | 17183/125000 | 850071/1000000 |
| r | 40433/62500 | 1/1 | 40433/62500 | 1/1 |
| w | 274929/500000 | 1/1 | 274929/500000 | 1/1 |
| j | 51267/100000 | 892179/1000000 | 51267/100000 | 892179/1000000 |
| k | 412393/1000000 | 8033/8963 | 412393/1000000 | 8033/8963 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 86 | A_EHQ | bitt ["actual-area","EHQ",[]] | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -93/1000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 86 | v | 17183/125000 | 907/1000 | 17183/125000 | 53129407/62500000 | 17183/125000 | 850071/1000000 | `(-1/1, 269983863047/500000000000); (-1/1, 11520754643/20000000000); (-1/1, 101750063243/125000000000); (-1/1, 53129407/62500000); (-1/1, 48057449/500000000); (-1/1, 7990781/20000000); (-1/1, 15584981/125000000); (-1/1, 53513/125000)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 95:0 | ABC | lo | 93/1000 | occupants none |
| 95:2 | ABE | lo | 93/1000 | occupants none |
| 95:4 | ABF | lo | 119853/1000000 | earlier 8:4; ABF; lo; 119853/1000000 |
| 95:6 | ABH | lo | 279/1000 | occupants P |
| 95:7 | ABH | hi | 9117760239/15625000000 | vertex maximum 9117760239/15625000000 |
| 95:8 | ABP | lo | 93/1000 | occupants none |
| 95:9 | ABP | hi | 397537/1000000 | earlier 8:9; ABP; hi; 397537/1000000 |
| 95:16 | ACE | lo | 93/1000 | occupants none |
| 95:17 | ACE | hi | 59/125 | vertex maximum 59/125 |
| 95:20 | ACH | lo | 279/1000 | occupants P |
| 95:23 | ACP | hi | 114557/200000 | earlier 8:23; ACP; hi; 114557/200000 |
| 95:37 | AES | hi | 45317/62500 | earlier 8:37; AES; hi; 45317/62500 |
| 95:38 | AFH | lo | 93/1000 | occupants none |
| 95:39 | AFH | hi | 9117760239/15625000000 | vertex maximum 9117760239/15625000000 |
| 95:44 | AHP | lo | 93/1000 | occupants none |
| 95:45 | AHP | hi | 397537/1000000 | earlier 8:45; AHP; hi; 397537/1000000 |
| 95:48 | AHR | lo | 93/1000 | occupants none |
| 95:52 | BCE | lo | 93/1000 | occupants none |
| 95:53 | BCE | hi | 4989453/15625000 | vertex maximum 4989453/15625000 |
| 95:80 | BFR | lo | 13327/125000 | earlier 8:80; BFR; lo; 13327/125000 |
| 95:84 | BHP | lo | 93/1000 | occupants none |
| 95:85 | BHP | hi | 397537/1000000 | earlier 8:85; BHP; hi; 397537/1000000 |
| 95:100 | CEH | lo | 279/1000 | occupants Q |
| 95:101 | CEH | hi | 792719/1250000 | vertex maximum 792719/1250000 |
| 95:104 | CEQ | lo | 93/1000 | occupants none |
| 95:106 | CER | lo | 93/1000 | occupants none |
| 95:113 | CFP | hi | 833139/1000000 | earlier 8:113; CFP; hi; 833139/1000000 |
| 95:114 | CFR | lo | 4733/25000 | earlier 8:114; CFR; lo; 4733/25000 |
| 95:119 | CHP | hi | 84567/125000 | earlier 8:119; CHP; hi; 84567/125000 |
| 95:120 | CHQ | lo | 93/1000 | occupants none |
| 95:131 | CPS | hi | 779927/1000000 | earlier 8:131; CPS; hi; 779927/1000000 |
| 95:132 | EFH | lo | 93/1000 | occupants none |
| 95:138 | EFR | lo | 279/1000 | occupants S |
| 95:139 | EFR | hi | 9117760239/15625000000 | vertex maximum 9117760239/15625000000 |
| 95:140 | EFS | lo | 93/1000 | occupants none |
| 95:143 | EHP | hi | 8997/12500 | earlier 8:143; EHP; hi; 8997/12500 |
| 95:144 | EHQ | lo | 93/1000 | occupants none |
| 95:147 | EHR | hi | 107817/125000 | vertex maximum 107817/125000 |
| 95:158 | ERS | lo | 93/1000 | occupants none |
| 95:159 | ERS | hi | 397537/1000000 | earlier 8:157; ERS; hi; 397537/1000000 |
| 95:161 | FHP | hi | 553893/1000000 | earlier 8:159; FHP; hi; 553893/1000000 |
| 95:164 | FHR | lo | 93/1000 | occupants none |
| 95:176 | FRS | lo | 93/1000 | occupants none |
| 95:177 | FRS | hi | 397537/1000000 | earlier 8:175; FRS; hi; 397537/1000000 |
| 95:181 | HPR | hi | 818719/1000000 | earlier 8:179; HPR; hi; 818719/1000000 |
| 95:183 | HPS | hi | 35379/50000 | earlier 8:181; HPS; hi; 35379/50000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 2 | fan | CEH = CEQ + EHQ + CHQ | point Q |
| 11 | plu | ACE * BCH = ABC * CEH + ACH * BCE | circuit CABEH |
| 373 | plu | CEF * EHR = CEH * EFR + CER * EFH | circuit ECFHR |
| 515 | quad | ACE + AEH >= 93/125 | quadrilateral ACEH; occupants P, Q |
| 651 | support | CEH * BCE >= 1023/1000 * (CEH - BEH) | pentagon EHABC |
| 763 | support | AEH * AFH >= 1023/1000 * (AEH - AEF) | pentagon AERFH |
| 980 | bary | outer ABH; fans BHP, AHP, ABP; target CEP; sign 1; vertices ACE 1; BCE 1; CEH 1 | container ABH; inner P; line CE |
| 1028 | bary | outer CEH; fans EHQ, CHQ, CEQ; target ABQ; sign 1; vertices ABC 1; ABE 1; ABH 1 | container CEH; inner Q; line AB |
| 1044 | bary | outer CEH; fans EHQ, CHQ, CEQ; target FQR; sign -1; vertices CFR -1; EFR -1; FHR -1 | container CEH; inner Q; line FR |
| 1054 | bary | outer EFR; fans FRS, ERS, EFS; target AHS; sign -1; vertices AEH -1; AFH -1; AHR -1 | container EFR; inner S; line AH |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 95:188 | CEQ | hi | 28011/62500 | 560219/1250000 | 2 | 95:101, 95:144, 95:120 |
| 95:189 | EHQ | hi | 28011/62500 | 560219/1250000 | 2 | 95:101, 95:104, 95:120 |
| 95:191 | BCH | lo | 13743/125000 | 25947/236000 | 11 | 95:0, 95:100, 95:20, 95:52, 95:17 |
| 95:194 | CEF | lo | 50137/500000 | 14415/143756 | 373 | 95:100, 95:138, 95:106, 95:132, 95:147 |
| 95:196 | AEH | lo | 34/125 | 34/125 | 515 | 95:17 |
| 95:199 | BEH | lo | 191911/1000000 | 16492383/85937500 | 651 | 95:100, 95:53 |
| 95:200 | AEF | lo | 58423/500000 | 38910816979/333007812500 | 763 | 95:196, 95:39 |
| 95:201 | CEP | lo | 122643/1000000 | 124248105803/1013084471000 | 980 | 95:7, 95:84, 95:44, 95:8, 95:16, 95:52, 95:100 |
| 95:210 | ABQ | lo | 30069/250000 | 95345367/792719000 | 1028 | 95:101, 95:144, 95:120, 95:104, 95:0, 95:2, 95:6 |
| 95:222 | FQR | lo | 134401/1000000 | 106542567/792719000 | 1044 | 95:101, 95:144, 95:120, 95:104, 95:114, 95:138, 95:164 |
| 95:228 | AHS | lo | 121527/1000000 | 369353692409/3039253413000 | 1054 | 95:139, 95:176, 95:158, 95:140, 95:196, 95:38, 95:48 |

## Stage 96

| Property | Value |
| --- | --- |
| Scope | root/ACP+/HBP-/HEQ- |
| Packet | forest:root/ACP+/HBP-/HEQ- |
| Index | 1 |
| Context | 40 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 95 |
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
| u | 107821/1000000 | 907/1000 | 107821/1000000 | 907/1000 |
| v | 17183/125000 | 850071/1000000 | 17183/125000 | 850071/1000000 |
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
| 96:4 | ABF | lo | 119853/1000000 | earlier 95:4; ABF; lo; 119853/1000000 |
| 96:9 | ABP | hi | 397537/1000000 | earlier 95:9; ABP; hi; 397537/1000000 |
| 96:10 | ABQ | lo | 30069/250000 | earlier 95:210; ABQ; lo; 30069/250000 |
| 96:23 | ACP | hi | 114557/200000 | earlier 95:23; ACP; hi; 114557/200000 |
| 96:30 | AEF | lo | 58423/500000 | earlier 95:200; AEF; lo; 58423/500000 |
| 96:32 | AEH | lo | 34/125 | earlier 95:196; AEH; lo; 34/125 |
| 96:37 | AES | hi | 45317/62500 | earlier 95:37; AES; hi; 45317/62500 |
| 96:45 | AHP | hi | 397537/1000000 | earlier 95:45; AHP; hi; 397537/1000000 |
| 96:50 | AHS | lo | 121527/1000000 | earlier 95:228; AHS; lo; 121527/1000000 |
| 96:56 | BCH | lo | 13743/125000 | earlier 95:191; BCH; lo; 13743/125000 |
| 96:68 | BEH | lo | 191911/1000000 | earlier 95:199; BEH; lo; 191911/1000000 |
| 96:80 | BFR | lo | 13327/125000 | earlier 95:80; BFR; lo; 13327/125000 |
| 96:85 | BHP | hi | 397537/1000000 | earlier 95:85; BHP; hi; 397537/1000000 |
| 96:98 | CEF | lo | 50137/500000 | earlier 95:194; CEF; lo; 50137/500000 |
| 96:102 | CEP | lo | 122643/1000000 | earlier 95:201; CEP; lo; 122643/1000000 |
| 96:105 | CEQ | hi | 28011/62500 | earlier 95:188; CEQ; hi; 28011/62500 |
| 96:113 | CFP | hi | 833139/1000000 | earlier 95:113; CFP; hi; 833139/1000000 |
| 96:114 | CFR | lo | 4733/25000 | earlier 95:114; CFR; lo; 4733/25000 |
| 96:119 | CHP | hi | 84567/125000 | earlier 95:119; CHP; hi; 84567/125000 |
| 96:131 | CPS | hi | 779927/1000000 | earlier 95:131; CPS; hi; 779927/1000000 |
| 96:143 | EHP | hi | 8997/12500 | earlier 95:143; EHP; hi; 8997/12500 |
| 96:145 | EHQ | hi | 28011/62500 | earlier 95:189; EHQ; hi; 28011/62500 |
| 96:159 | ERS | hi | 397537/1000000 | earlier 95:159; ERS; hi; 397537/1000000 |
| 96:161 | FHP | hi | 553893/1000000 | earlier 95:161; FHP; hi; 553893/1000000 |
| 96:172 | FQR | lo | 134401/1000000 | earlier 95:222; FQR; lo; 134401/1000000 |
| 96:177 | FRS | hi | 397537/1000000 | earlier 95:177; FRS; hi; 397537/1000000 |
| 96:181 | HPR | hi | 818719/1000000 | earlier 95:181; HPR; hi; 818719/1000000 |
| 96:183 | HPS | hi | 35379/50000 | earlier 95:183; HPS; hi; 35379/50000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |


## Stage 97

| Property | Value |
| --- | --- |
| Scope | root/ACP+/HBP-/HEQ-/CFQ+ |
| Packet | forest:root/ACP+/HBP-/HEQ-/CFQ+ |
| Index | 0 |
| Context | 41 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 96 |
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
| u | 107821/1000000 | 907/1000 | 107821/1000000 | 107817/125000 |
| v | 17183/125000 | 850071/1000000 | 17183/125000 | 850071/1000000 |
| r | 40433/62500 | 1/1 | 40433/62500 | 1/1 |
| w | 274929/500000 | 1/1 | 274929/500000 | 1/1 |
| j | 51267/100000 | 892179/1000000 | 51267/100000 | 892179/1000000 |
| k | 412393/1000000 | 8033/8963 | 412393/1000000 | 8033/8963 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 70 | A_CFQ | bitt ["actual-area","CFQ",[]] | `1/1 * f * v + -1/1 * c * v + -1/1 * u + 1/1 * c + -93/1000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 70 | u | 107821/1000000 | 907/1000 | 107821/1000000 | 13477114761/15625000000 | 107821/1000000 | 107817/125000 | `(-1/1, 34317045181/62500000000); (-1/1, 12718760239/15625000000); (-1/1, 37350463269/62500000000); (-1/1, 13477114761/15625000000); (-1/1, 142922836797/500000000000); (-1/1, 41487045743/125000000000); (-1/1, 292990970853/500000000000); (-1/1, 79004079257/125000000000)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 97:4 | ABF | lo | 119853/1000000 | earlier 96:4; ABF; lo; 119853/1000000 |
| 97:7 | ABH | hi | 9117760239/15625000000 | vertex maximum 9117760239/15625000000 |
| 97:8 | ABP | lo | 93/1000 | occupants none |
| 97:9 | ABP | hi | 397537/1000000 | earlier 96:9; ABP; hi; 397537/1000000 |
| 97:10 | ABQ | lo | 30069/250000 | earlier 96:10; ABQ; lo; 30069/250000 |
| 97:16 | ACE | lo | 93/1000 | occupants none |
| 97:21 | ACH | hi | 107817/125000 | vertex maximum 107817/125000 |
| 97:23 | ACP | hi | 114557/200000 | earlier 96:23; ACP; hi; 114557/200000 |
| 97:26 | ACR | lo | 93/1000 | occupants none |
| 97:30 | AEF | lo | 58423/500000 | earlier 96:30; AEF; lo; 58423/500000 |
| 97:32 | AEH | lo | 34/125 | earlier 96:32; AEH; lo; 34/125 |
| 97:37 | AES | hi | 45317/62500 | earlier 96:37; AES; hi; 45317/62500 |
| 97:39 | AFH | hi | 9117760239/15625000000 | vertex maximum 9117760239/15625000000 |
| 97:44 | AHP | lo | 93/1000 | occupants none |
| 97:45 | AHP | hi | 397537/1000000 | earlier 96:45; AHP; hi; 397537/1000000 |
| 97:50 | AHS | lo | 121527/1000000 | earlier 96:50; AHS; lo; 121527/1000000 |
| 97:54 | BCF | lo | 93/1000 | occupants none |
| 97:56 | BCH | lo | 13743/125000 | earlier 96:56; BCH; lo; 13743/125000 |
| 97:68 | BEH | lo | 191911/1000000 | earlier 96:68; BEH; lo; 191911/1000000 |
| 97:80 | BFR | lo | 13327/125000 | earlier 96:80; BFR; lo; 13327/125000 |
| 97:84 | BHP | lo | 93/1000 | occupants none |
| 97:85 | BHP | hi | 397537/1000000 | earlier 96:85; BHP; hi; 397537/1000000 |
| 97:98 | CEF | lo | 50137/500000 | earlier 96:98; CEF; lo; 50137/500000 |
| 97:100 | CEH | lo | 279/1000 | occupants Q |
| 97:101 | CEH | hi | 792719/1250000 | vertex maximum 792719/1250000 |
| 97:102 | CEP | lo | 122643/1000000 | earlier 96:102; CEP; lo; 122643/1000000 |
| 97:104 | CEQ | lo | 93/1000 | occupants none |
| 97:105 | CEQ | hi | 28011/62500 | earlier 96:105; CEQ; hi; 28011/62500 |
| 97:106 | CER | lo | 93/1000 | occupants none |
| 97:110 | CFH | lo | 279/1000 | occupants Q |
| 97:111 | CFH | hi | 1939719919/2500000000 | vertex maximum 1939719919/2500000000 |
| 97:113 | CFP | hi | 833139/1000000 | earlier 96:113; CFP; hi; 833139/1000000 |
| 97:114 | CFQ | lo | 93/1000 | occupants none |
| 97:116 | CFR | lo | 4733/25000 | earlier 96:114; CFR; lo; 4733/25000 |
| 97:117 | CFR | hi | 84567/125000 | vertex maximum 84567/125000 |
| 97:121 | CHP | hi | 84567/125000 | earlier 96:119; CHP; hi; 84567/125000 |
| 97:122 | CHQ | lo | 93/1000 | occupants none |
| 97:125 | CHR | hi | 1/1 | vertex maximum 1/1 |
| 97:133 | CPS | hi | 779927/1000000 | earlier 96:131; CPS; hi; 779927/1000000 |
| 97:144 | EFR | lo | 279/1000 | occupants S |
| 97:145 | EFR | hi | 9117760239/15625000000 | vertex maximum 9117760239/15625000000 |
| 97:146 | EFS | lo | 93/1000 | occupants none |
| 97:149 | EHP | hi | 8997/12500 | earlier 96:143; EHP; hi; 8997/12500 |
| 97:150 | EHQ | lo | 93/1000 | occupants none |
| 97:151 | EHQ | hi | 28011/62500 | earlier 96:145; EHQ; hi; 28011/62500 |
| 97:153 | EHR | hi | 107817/125000 | vertex maximum 107817/125000 |
| 97:164 | ERS | lo | 93/1000 | occupants none |
| 97:165 | ERS | hi | 397537/1000000 | earlier 96:159; ERS; hi; 397537/1000000 |
| 97:167 | FHP | hi | 553893/1000000 | earlier 96:161; FHP; hi; 553893/1000000 |
| 97:168 | FHQ | lo | 93/1000 | occupants none |
| 97:170 | FHR | lo | 93/1000 | occupants none |
| 97:178 | FQR | lo | 134401/1000000 | earlier 96:172; FQR; lo; 134401/1000000 |
| 97:182 | FRS | lo | 93/1000 | occupants none |
| 97:183 | FRS | hi | 397537/1000000 | earlier 96:177; FRS; hi; 397537/1000000 |
| 97:187 | HPR | hi | 818719/1000000 | earlier 96:181; HPR; hi; 818719/1000000 |
| 97:189 | HPS | hi | 35379/50000 | earlier 96:183; HPS; hi; 35379/50000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 3 | fan | CFH = CFQ + FHQ + CHQ | point Q |
| 404 | plu | CEF * EHR = CEH * EFR + CER * EFH | circuit ECFHR |
| 405 | plu | CFR * EFH = CEF * FHR + CFH * EFR | circuit FCEHR |
| 585 | quad | ACF + AFH >= 93/125 | quadrilateral ACFH; occupants P, Q |
| 1117 | bary | outer ABH; fans BHP, AHP, ABP; target CFP; sign 1; vertices ACF 1; BCF 1; CFH 1 | container ABH; inner P; line CF |
| 1175 | bary | outer CEH; fans EHQ, CHQ, CEQ; target CQR; sign 1; vertices none 0; CER -1; CHR 1 | container CEH; inner Q; line CR |
| 1194 | bary | outer CFH; fans FHQ, CHQ, CFQ; target AHQ; sign -1; vertices ACH -1; AFH -1; none 0 | container CFH; inner Q; line AH |
| 1216 | bary | outer CFH; fans FHQ, CHQ, CFQ; target HQR; sign -1; vertices CHR -1; FHR 1; none 0 | container CFH; inner Q; line HR |
| 1271 | bary | outer EFR; fans FRS, ERS, EFS; target ACS; sign 1; vertices ACE 1; ACF 1; ACR 1 | container EFR; inner S; line AC |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 97:195 | FHQ | hi | 9217/15625 | 1474719919/2500000000 | 3 | 97:111, 97:114, 97:122 |
| 97:202 | EFH | lo | 64421/500000 | 14527747/112756000 | 405 | 97:98, 97:170, 97:110, 97:144, 97:117 |
| 97:203 | ACF | lo | 160463/1000000 | 2507239761/15625000000 | 585 | 97:39 |
| 97:205 | CFP | lo | 26679/200000 | 28958693431/217089529500 | 1117 | 97:7, 97:84, 97:44, 97:8, 97:203, 97:54, 97:110 |
| 97:211 | CQR | hi | 173267/250000 | 2197631/3170876 | 1175 | 97:101, 97:150, 97:122, 97:104, 97:106, 97:125 |
| 97:213 | AHQ | hi | 725709/1000000 | 175958911551363/242464989875000 | 1194 | 97:111, 97:168, 97:122, 97:114, 97:21, 97:39 |
| 97:219 | HQR | hi | 93641/125000 | 1453097419/1939719919 | 1216 | 97:111, 97:168, 97:122, 97:114, 97:125, 97:170 |
| 97:221 | ACS | lo | 103751/1000000 | 157663979017/1519626706500 | 1271 | 97:145, 97:182, 97:164, 97:146, 97:16, 97:203, 97:26 |
| 97:224 | CEF | lo | 52069/500000 | 14970551/143756000 | 404 | 97:100, 97:144, 97:106, 97:202, 97:153 |
| 97:226 | EFH | lo | 129373/1000000 | 14587639/112756000 | 405 | 97:224, 97:170, 97:110, 97:144, 97:117 |
| 97:232 | CEF | lo | 20839/200000 | 29957563/287512000 | 404 | 97:100, 97:144, 97:106, 97:226, 97:153 |
| 97:234 | EFH | lo | 129381/1000000 | 5835409/45102400 | 405 | 97:232, 97:170, 97:110, 97:144, 97:117 |
| 97:239 | CEF | lo | 26049/250000 | 29957811/287512000 | 404 | 97:100, 97:144, 97:106, 97:234, 97:153 |

## Stage 98

| Property | Value |
| --- | --- |
| Scope | root/ACP+/HBP-/HEQ-/CFQ+ |
| Packet | forest:root/ACP+/HBP-/HEQ-/CFQ+ |
| Index | 1 |
| Context | 41 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 97 |
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
| u | 107821/1000000 | 107817/125000 | 107821/1000000 | 107817/125000 |
| v | 17183/125000 | 850071/1000000 | 17183/125000 | 850071/1000000 |
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
| 98:4 | ABF | lo | 119853/1000000 | earlier 97:4; ABF; lo; 119853/1000000 |
| 98:9 | ABP | hi | 397537/1000000 | earlier 97:9; ABP; hi; 397537/1000000 |
| 98:10 | ABQ | lo | 30069/250000 | earlier 97:10; ABQ; lo; 30069/250000 |
| 98:18 | ACF | lo | 160463/1000000 | earlier 97:203; ACF; lo; 160463/1000000 |
| 98:23 | ACP | hi | 114557/200000 | earlier 97:23; ACP; hi; 114557/200000 |
| 98:28 | ACS | lo | 103751/1000000 | earlier 97:221; ACS; lo; 103751/1000000 |
| 98:30 | AEF | lo | 58423/500000 | earlier 97:30; AEF; lo; 58423/500000 |
| 98:32 | AEH | lo | 34/125 | earlier 97:32; AEH; lo; 34/125 |
| 98:37 | AES | hi | 45317/62500 | earlier 97:37; AES; hi; 45317/62500 |
| 98:45 | AHP | hi | 397537/1000000 | earlier 97:45; AHP; hi; 397537/1000000 |
| 98:47 | AHQ | hi | 725709/1000000 | earlier 97:213; AHQ; hi; 725709/1000000 |
| 98:50 | AHS | lo | 121527/1000000 | earlier 97:50; AHS; lo; 121527/1000000 |
| 98:56 | BCH | lo | 13743/125000 | earlier 97:56; BCH; lo; 13743/125000 |
| 98:68 | BEH | lo | 191911/1000000 | earlier 97:68; BEH; lo; 191911/1000000 |
| 98:80 | BFR | lo | 13327/125000 | earlier 97:80; BFR; lo; 13327/125000 |
| 98:85 | BHP | hi | 397537/1000000 | earlier 97:85; BHP; hi; 397537/1000000 |
| 98:98 | CEF | lo | 26049/250000 | earlier 97:239; CEF; lo; 26049/250000 |
| 98:102 | CEP | lo | 122643/1000000 | earlier 97:102; CEP; lo; 122643/1000000 |
| 98:105 | CEQ | hi | 28011/62500 | earlier 97:105; CEQ; hi; 28011/62500 |
| 98:112 | CFP | lo | 26679/200000 | earlier 97:205; CFP; lo; 26679/200000 |
| 98:113 | CFP | hi | 833139/1000000 | earlier 97:113; CFP; hi; 833139/1000000 |
| 98:116 | CFR | lo | 4733/25000 | earlier 97:116; CFR; lo; 4733/25000 |
| 98:121 | CHP | hi | 84567/125000 | earlier 97:121; CHP; hi; 84567/125000 |
| 98:133 | CPS | hi | 779927/1000000 | earlier 97:133; CPS; hi; 779927/1000000 |
| 98:135 | CQR | hi | 173267/250000 | earlier 97:211; CQR; hi; 173267/250000 |
| 98:138 | EFH | lo | 129381/1000000 | earlier 97:234; EFH; lo; 129381/1000000 |
| 98:149 | EHP | hi | 8997/12500 | earlier 97:149; EHP; hi; 8997/12500 |
| 98:151 | EHQ | hi | 28011/62500 | earlier 97:151; EHQ; hi; 28011/62500 |
| 98:165 | ERS | hi | 397537/1000000 | earlier 97:165; ERS; hi; 397537/1000000 |
| 98:167 | FHP | hi | 553893/1000000 | earlier 97:167; FHP; hi; 553893/1000000 |
| 98:169 | FHQ | hi | 9217/15625 | earlier 97:195; FHQ; hi; 9217/15625 |
| 98:178 | FQR | lo | 134401/1000000 | earlier 97:178; FQR; lo; 134401/1000000 |
| 98:183 | FRS | hi | 397537/1000000 | earlier 97:183; FRS; hi; 397537/1000000 |
| 98:187 | HPR | hi | 818719/1000000 | earlier 97:187; HPR; hi; 818719/1000000 |
| 98:189 | HPS | hi | 35379/50000 | earlier 97:189; HPS; hi; 35379/50000 |
| 98:191 | HQR | hi | 93641/125000 | earlier 97:219; HQR; hi; 93641/125000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |


## Stage 99

| Property | Value |
| --- | --- |
| Scope | root/ACP+/HBP-/HEQ-/CFQ+/PQR+ |
| Packet | forest:root/ACP+/HBP-/HEQ-/CFQ+/PQR+ |
| Index | 0 |
| Context | 42 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 98 |
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
| u | 107821/1000000 | 107817/125000 | 107821/1000000 | 107817/125000 |
| v | 17183/125000 | 850071/1000000 | 17183/125000 | 850071/1000000 |
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
| 99:4 | ABF | lo | 119853/1000000 | earlier 98:4; ABF; lo; 119853/1000000 |
| 99:9 | ABP | hi | 397537/1000000 | earlier 98:9; ABP; hi; 397537/1000000 |
| 99:10 | ABQ | lo | 30069/250000 | earlier 98:10; ABQ; lo; 30069/250000 |
| 99:20 | ACH | lo | 279/1000 | occupants P |
| 99:23 | ACP | hi | 114557/200000 | earlier 98:23; ACP; hi; 114557/200000 |
| 99:30 | AEF | lo | 58423/500000 | earlier 98:30; AEF; lo; 58423/500000 |
| 99:32 | AEH | lo | 34/125 | earlier 98:32; AEH; lo; 34/125 |
| 99:37 | AES | hi | 45317/62500 | earlier 98:37; AES; hi; 45317/62500 |
| 99:38 | AFH | lo | 93/1000 | occupants none |
| 99:44 | AHP | lo | 93/1000 | occupants none |
| 99:47 | AHQ | hi | 725709/1000000 | earlier 98:47; AHQ; hi; 725709/1000000 |
| 99:50 | AHS | lo | 121527/1000000 | earlier 98:50; AHS; lo; 121527/1000000 |
| 99:56 | BCH | lo | 13743/125000 | earlier 98:56; BCH; lo; 13743/125000 |
| 99:68 | BEH | lo | 191911/1000000 | earlier 98:68; BEH; lo; 191911/1000000 |
| 99:80 | BFR | lo | 13327/125000 | earlier 98:80; BFR; lo; 13327/125000 |
| 99:85 | BHP | hi | 397537/1000000 | earlier 98:85; BHP; hi; 397537/1000000 |
| 99:98 | CEF | lo | 26049/250000 | earlier 98:98; CEF; lo; 26049/250000 |
| 99:100 | CEH | lo | 279/1000 | occupants Q |
| 99:102 | CEP | lo | 122643/1000000 | earlier 98:102; CEP; lo; 122643/1000000 |
| 99:106 | CER | lo | 93/1000 | occupants none |
| 99:107 | CER | hi | 10275787/31250000 | vertex maximum 10275787/31250000 |
| 99:110 | CFH | lo | 279/1000 | occupants Q |
| 99:113 | CFP | hi | 833139/1000000 | earlier 98:113; CFP; hi; 833139/1000000 |
| 99:114 | CFQ | lo | 93/1000 | occupants none |
| 99:117 | CFR | hi | 84567/125000 | vertex maximum 84567/125000 |
| 99:121 | CHP | hi | 84567/125000 | earlier 98:121; CHP; hi; 84567/125000 |
| 99:122 | CHQ | lo | 93/1000 | occupants none |
| 99:128 | CPQ | lo | 93/1000 | occupants none |
| 99:131 | CPR | hi | 892179/1000000 | vertex maximum 892179/1000000 |
| 99:133 | CPS | hi | 779927/1000000 | earlier 98:133; CPS; hi; 779927/1000000 |
| 99:134 | CQR | lo | 93/1000 | occupants none |
| 99:135 | CQR | hi | 173267/250000 | earlier 98:135; CQR; hi; 173267/250000 |
| 99:144 | EFR | lo | 279/1000 | occupants S |
| 99:145 | EFR | hi | 9117760239/15625000000 | vertex maximum 9117760239/15625000000 |
| 99:146 | EFS | lo | 93/1000 | occupants none |
| 99:149 | EHP | hi | 8997/12500 | earlier 98:149; EHP; hi; 8997/12500 |
| 99:150 | EHQ | lo | 93/1000 | occupants none |
| 99:151 | EHQ | hi | 28011/62500 | earlier 98:151; EHQ; hi; 28011/62500 |
| 99:153 | EHR | hi | 107817/125000 | vertex maximum 107817/125000 |
| 99:157 | EPR | hi | 96192063243/125000000000 | vertex maximum 96192063243/125000000000 |
| 99:164 | ERS | lo | 93/1000 | occupants none |
| 99:165 | ERS | hi | 397537/1000000 | earlier 98:165; ERS; hi; 397537/1000000 |
| 99:166 | FHP | lo | 93/1000 | occupants none |
| 99:169 | FHQ | hi | 9217/15625 | earlier 98:169; FHQ; hi; 9217/15625 |
| 99:170 | FHR | lo | 93/1000 | occupants none |
| 99:174 | FPQ | lo | 93/1000 | occupants none |
| 99:184 | FRS | lo | 93/1000 | occupants none |
| 99:189 | HPR | hi | 818719/1000000 | earlier 98:187; HPR; hi; 818719/1000000 |
| 99:192 | HQR | lo | 93/1000 | occupants none |
| 99:193 | HQR | hi | 93641/125000 | earlier 98:191; HQR; hi; 93641/125000 |
| 99:196 | PQR | lo | 93/1000 | occupants none |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 411 | plu | CEF * EHR = CEH * EFR + CER * EFH | circuit ECFHR |
| 412 | plu | CFR * EFH = CEF * FHR + CFH * EFR | circuit FCEHR |
| 1311 | bary | outer CFP; fans FPQ, CPQ, CFQ; target AHQ; sign -1; vertices ACH -1; AFH -1; AHP -1 | container CFP; inner Q; line AH |
| 1406 | bary | outer CPR; fans PQR, CQR, CPQ; target EQR; sign 1; vertices CER 1; EPR 1; none 0 | container CPR; inner Q; line ER |
| 1408 | bary | outer CPR; fans PQR, CQR, CPQ; target FHQ; sign 1; vertices CFH 1; FHP 1; FHR 1 | container CPR; inner Q; line FH |
| 1446 | bary | outer EFR; fans FRS, ERS, EFS; target HQS; sign 1; vertices EHQ 1; FHQ 1; HQR 1 | container EFR; inner S; line HQ |
| 1531 | four | 1 * CFH + -1 * CHQ + -1 * CFQ + -1 * FHQ = 0 | vertices CFHQ |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 99:203 | AHQ | lo | 56881/500000 | 10531103/92571000 | 1311 | 99:113, 99:174, 99:128, 99:114, 99:20, 99:38, 99:44 |
| 99:207 | EQR | hi | 321691/500000 | 23917135930959499/37174125000000000 | 1406 | 99:131, 99:196, 99:134, 99:128, 99:107, 99:157 |
| 99:208 | FHQ | lo | 28097/250000 | 11141183/99131000 | 1408 | 99:131, 99:196, 99:134, 99:128, 99:110, 99:166, 99:170 |
| 99:212 | CFH | lo | 74597/250000 | 74597/250000 | 1531 | 99:122, 99:114, 99:208 |
| 99:215 | EFH | lo | 4293/31250 | 96813/704725 | 412 | 99:98, 99:170, 99:212, 99:144, 99:117 |
| 99:217 | FHQ | lo | 114409/1000000 | 34024577/297393000 | 1408 | 99:131, 99:196, 99:134, 99:128, 99:212, 99:166, 99:170 |
| 99:220 | CFH | lo | 300409/1000000 | 300409/1000000 | 1531 | 99:122, 99:114, 99:217 |
| 99:223 | CEF | lo | 52529/500000 | 3775707/35939000 | 411 | 99:100, 99:144, 99:106, 99:215, 99:153 |
| 99:225 | EFH | lo | 17291/125000 | 891281/6443200 | 412 | 99:223, 99:170, 99:220, 99:144, 99:117 |
| 99:229 | FHQ | lo | 5731/50000 | 8521807/74348250 | 1408 | 99:131, 99:196, 99:134, 99:128, 99:220, 99:166, 99:170 |
| 99:232 | CFH | lo | 15031/50000 | 15031/50000 | 1531 | 99:122, 99:114, 99:229 |
| 99:235 | CEF | lo | 105161/1000000 | 944849/8984750 | 411 | 99:100, 99:144, 99:106, 99:225, 99:153 |
| 99:237 | EFH | lo | 13843/100000 | 31217651/225512000 | 412 | 99:235, 99:170, 99:232, 99:144, 99:117 |
| 99:241 | FHQ | lo | 57321/500000 | 34093769/297393000 | 1408 | 99:131, 99:196, 99:134, 99:128, 99:232, 99:166, 99:170 |
| 99:243 | HQS | lo | 96449/1000000 | 97711137053/1013084471000 | 1446 | 99:145, 99:184, 99:164, 99:146, 99:150, 99:241, 99:192 |
| 99:244 | CFH | lo | 150321/500000 | 150321/500000 | 1531 | 99:122, 99:114, 99:241 |
| 99:247 | CEF | lo | 26293/250000 | 3023833/28751200 | 411 | 99:100, 99:144, 99:106, 99:237, 99:153 |
| 99:249 | EFH | lo | 3461/25000 | 15610019/112756000 | 412 | 99:247, 99:170, 99:244, 99:144, 99:117 |
| 99:253 | FHQ | lo | 28661/250000 | 11364817/99131000 | 1408 | 99:131, 99:196, 99:134, 99:128, 99:244, 99:166, 99:170 |
| 99:255 | CFH | lo | 75161/250000 | 75161/250000 | 1531 | 99:122, 99:114, 99:253 |
| 99:257 | CEF | lo | 105173/1000000 | 377983/3593900 | 411 | 99:100, 99:144, 99:106, 99:249, 99:153 |
