# BITT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 865

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS-/HEQ-/CFQ-/PQR+/PQS+/QRS+/AEQ-/BEQ+ |
| Packet | forest:root/AFP-/APR-/ARS-/HEQ-/CFQ-/PQR+/PQS+/QRS+/AEQ-/BEQ+ |
| Index | 4 |
| Context | 538 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 864 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 4537/40000 | 59/125 | 4537/40000 | 59/125 |
| b | 52449/500000 | 145431/250000 | 52449/500000 | 145431/250000 |
| c | 135501/250000 | 1/1 | 135501/250000 | 1/1 |
| e | 279/1000 | 59/125 | 279/1000 | 59/125 |
| f | 279/1000 | 9289/15625 | 279/1000 | 9289/15625 |
| h | 718731/1000000 | 1/1 | 718731/1000000 | 1/1 |
| p | 114797/1000000 | 5489/10000 | 114797/1000000 | 5489/10000 |
| q | 276019/1000000 | 774121/1000000 | 276019/1000000 | 19353/25000 |
| u | 21413/40000 | 830823/1000000 | 21413/40000 | 830823/1000000 |
| v | 84991/500000 | 379/1000 | 84991/500000 | 379/1000 |
| r | 351607/500000 | 1/1 | 351607/500000 | 1/1 |
| w | 85563/125000 | 1/1 | 85563/125000 | 1/1 |
| j | 138879/250000 | 871013/1000000 | 138879/250000 | 871013/1000000 |
| k | 268487/500000 | 852471/1000000 | 268487/500000 | 852471/1000000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 1677 | AREA_lo_EHP | bitt ["earlier-area",{"direction":"lo","ref":"864:264","triangle":"EHP","value":"41317/250000"}] | `-1/1 * q + -1/1 * h * p + 1/1 * h + 1/1 * e * p + -41317/250000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 1677 | q | 276019/1000000 | 774121/1000000 | 276019/1000000 | 48382449/62500000 | 276019/1000000 | 19353/25000 | `(-1/1, 502983200393/1000000000000); (-1/1, 525139021393/1000000000000); (-1/1, 751963363/1000000000); (-1/1, 48382449/62500000); (-1/1, 3120946541/10000000000); (-1/1, 4180323541/10000000000); (-1/1, 4389751/10000000); (-1/1, 681141/1250000)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 865:2 | ABE | lo | 322017/1000000 | earlier 864:2; ABE; lo; 322017/1000000 |
| 865:10 | ABQ | lo | 136017/1000000 | earlier 864:10; ABQ; lo; 136017/1000000 |
| 865:11 | ABQ | hi | 143/500 | earlier 864:11; ABQ; hi; 143/500 |
| 865:21 | ACH | hi | 813499/1000000 | earlier 864:287; ACH; hi; 813499/1000000 |
| 865:25 | ACQ | hi | 66919/250000 | earlier 864:25; ACQ; hi; 66919/250000 |
| 865:26 | ACR | lo | 330981/1000000 | earlier 864:229; ACR; lo; 330981/1000000 |
| 865:30 | AEF | lo | 358461/1000000 | earlier 864:30; AEF; lo; 358461/1000000 |
| 865:32 | AEH | lo | 87817/250000 | earlier 864:288; AEH; lo; 87817/250000 |
| 865:38 | AER | lo | 327161/1000000 | earlier 864:312; AER; lo; 327161/1000000 |
| 865:40 | AES | lo | 141161/1000000 | earlier 864:297; AES; lo; 141161/1000000 |
| 865:46 | AFQ | lo | 303101/1000000 | earlier 864:46; AFQ; lo; 303101/1000000 |
| 865:47 | AFQ | hi | 625021/1000000 | earlier 864:235; AFQ; hi; 625021/1000000 |
| 865:48 | AFR | lo | 360497/1000000 | earlier 864:289; AFR; lo; 360497/1000000 |
| 865:50 | AFS | lo | 65219/200000 | earlier 864:50; AFS; lo; 65219/200000 |
| 865:54 | AHQ | lo | 58109/200000 | earlier 864:54; AHQ; lo; 58109/200000 |
| 865:55 | AHQ | hi | 638823/1000000 | earlier 864:236; AHQ; hi; 638823/1000000 |
| 865:59 | AHS | hi | 143451/200000 | earlier 864:254; AHS; hi; 143451/200000 |
| 865:66 | AQR | lo | 182651/500000 | earlier 864:66; AQR; lo; 182651/500000 |
| 865:68 | AQS | lo | 89651/500000 | earlier 864:68; AQS; lo; 89651/500000 |
| 865:69 | AQS | hi | 87407/200000 | earlier 864:255; AQS; hi; 87407/200000 |
| 865:75 | BCF | hi | 740859/1000000 | earlier 864:292; BCF; hi; 740859/1000000 |
| 865:76 | BCH | lo | 19431/62500 | earlier 864:76; BCH; lo; 19431/62500 |
| 865:77 | BCH | hi | 200073/250000 | earlier 864:293; BCH; hi; 200073/250000 |
| 865:78 | BCP | lo | 3903/31250 | earlier 864:78; BCP; lo; 3903/31250 |
| 865:84 | BCS | lo | 24221/200000 | earlier 864:84; BCS; lo; 24221/200000 |
| 865:86 | BEF | lo | 19689/50000 | earlier 864:86; BEF; lo; 19689/50000 |
| 865:90 | BEP | lo | 18351/62500 | earlier 864:90; BEP; lo; 18351/62500 |
| 865:94 | BER | lo | 8011/62500 | earlier 864:94; BER; lo; 8011/62500 |
| 865:96 | BES | lo | 86191/500000 | earlier 864:96; BES; lo; 86191/500000 |
| 865:101 | BFQ | hi | 98923/200000 | earlier 864:101; BFQ; hi; 98923/200000 |
| 865:105 | BFS | hi | 298991/500000 | earlier 864:271; BFS; hi; 298991/500000 |
| 865:109 | BHQ | hi | 8657/15625 | earlier 864:238; BHQ; hi; 8657/15625 |
| 865:115 | BPQ | hi | 356503/1000000 | earlier 864:263; BPQ; hi; 356503/1000000 |
| 865:116 | BPR | lo | 128713/1000000 | earlier 864:233; BPR; lo; 128713/1000000 |
| 865:120 | CEF | lo | 41777/125000 | earlier 864:120; CEF; lo; 41777/125000 |
| 865:122 | CEH | lo | 195863/500000 | earlier 864:122; CEH; lo; 195863/500000 |
| 865:124 | CEP | lo | 18351/62500 | earlier 864:124; CEP; lo; 18351/62500 |
| 865:130 | CES | lo | 132103/1000000 | earlier 864:130; CES; lo; 132103/1000000 |
| 865:156 | EFH | lo | 47759/500000 | earlier 864:156; EFH; lo; 47759/500000 |
| 865:159 | EFP | hi | 22439/40000 | earlier 864:304; EFP; hi; 22439/40000 |
| 865:160 | EFQ | lo | 18527/125000 | earlier 864:160; EFQ; lo; 18527/125000 |
| 865:161 | EFQ | hi | 198067/500000 | earlier 864:161; EFQ; hi; 198067/500000 |
| 865:162 | EFR | lo | 292369/1000000 | earlier 864:162; EFR; lo; 292369/1000000 |
| 865:166 | EHP | lo | 41317/250000 | earlier 864:264; EHP; lo; 41317/250000 |
| 865:168 | EHQ | lo | 102863/500000 | earlier 864:168; EHQ; lo; 102863/500000 |
| 865:174 | EPQ | lo | 3363/31250 | earlier 864:174; EPQ; lo; 3363/31250 |
| 865:176 | EPR | lo | 294739/1000000 | earlier 864:176; EPR; lo; 294739/1000000 |
| 865:194 | FPQ | lo | 117101/1000000 | earlier 864:194; FPQ; lo; 117101/1000000 |
| 865:196 | FPR | lo | 174497/1000000 | earlier 864:250; FPR; lo; 174497/1000000 |
| 865:200 | FQR | lo | 176053/500000 | earlier 864:200; FQR; lo; 176053/500000 |
| 865:201 | FQR | hi | 573679/1000000 | earlier 864:201; FQR; hi; 573679/1000000 |
| 865:204 | FRS | lo | 106369/1000000 | earlier 864:204; FRS; lo; 106369/1000000 |
| 865:206 | HPQ | lo | 20909/200000 | earlier 864:206; HPQ; lo; 20909/200000 |
| 865:212 | HQR | lo | 185789/500000 | earlier 864:212; HQR; lo; 185789/500000 |
| 865:213 | HQR | hi | 390407/500000 | earlier 864:213; HQR; hi; 390407/500000 |
| 865:216 | HRS | lo | 102401/1000000 | earlier 864:216; HRS; lo; 102401/1000000 |
| 865:218 | PQR | lo | 21013/62500 | earlier 864:218; PQR; lo; 21013/62500 |
| 865:219 | PQR | hi | 522987/1000000 | earlier 864:243; PQR; hi; 522987/1000000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |


## Stage 866

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS-/HEQ-/CFQ-/PQR+/PQS+/QRS+/AEQ-/BEQ+ |
| Packet | forest:root/AFP-/APR-/ARS-/HEQ-/CFQ-/PQR+/PQS+/QRS+/AEQ-/BEQ+ |
| Index | 5 |
| Context | 538 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 865 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 4537/40000 | 59/125 | 4537/40000 | 59/125 |
| b | 52449/500000 | 145431/250000 | 52449/500000 | 145431/250000 |
| c | 135501/250000 | 1/1 | 135501/250000 | 1/1 |
| e | 279/1000 | 59/125 | 279/1000 | 59/125 |
| f | 279/1000 | 9289/15625 | 279/1000 | 9289/15625 |
| h | 718731/1000000 | 1/1 | 718731/1000000 | 1/1 |
| p | 114797/1000000 | 5489/10000 | 114797/1000000 | 5489/10000 |
| q | 276019/1000000 | 19353/25000 | 276019/1000000 | 19353/25000 |
| u | 21413/40000 | 830823/1000000 | 21413/40000 | 830823/1000000 |
| v | 84991/500000 | 379/1000 | 84991/500000 | 379/1000 |
| r | 351607/500000 | 1/1 | 351607/500000 | 1/1 |
| w | 85563/125000 | 1/1 | 85563/125000 | 1/1 |
| j | 138879/250000 | 871013/1000000 | 138879/250000 | 871013/1000000 |
| k | 268487/500000 | 852471/1000000 | 268487/500000 | 852471/1000000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |


### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |


### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 866:2 | ABE | lo | 322017/1000000 | earlier 865:2; ABE; lo; 322017/1000000 |
| 866:10 | ABQ | lo | 136017/1000000 | earlier 865:10; ABQ; lo; 136017/1000000 |
| 866:11 | ABQ | hi | 143/500 | earlier 865:11; ABQ; hi; 143/500 |
| 866:21 | ACH | hi | 813499/1000000 | earlier 865:21; ACH; hi; 813499/1000000 |
| 866:25 | ACQ | hi | 66919/250000 | earlier 865:25; ACQ; hi; 66919/250000 |
| 866:26 | ACR | lo | 330981/1000000 | earlier 865:26; ACR; lo; 330981/1000000 |
| 866:30 | AEF | lo | 358461/1000000 | earlier 865:30; AEF; lo; 358461/1000000 |
| 866:32 | AEH | lo | 87817/250000 | earlier 865:32; AEH; lo; 87817/250000 |
| 866:38 | AER | lo | 327161/1000000 | earlier 865:38; AER; lo; 327161/1000000 |
| 866:40 | AES | lo | 141161/1000000 | earlier 865:40; AES; lo; 141161/1000000 |
| 866:46 | AFQ | lo | 303101/1000000 | earlier 865:46; AFQ; lo; 303101/1000000 |
| 866:47 | AFQ | hi | 625021/1000000 | earlier 865:47; AFQ; hi; 625021/1000000 |
| 866:48 | AFR | lo | 360497/1000000 | earlier 865:48; AFR; lo; 360497/1000000 |
| 866:50 | AFS | lo | 65219/200000 | earlier 865:50; AFS; lo; 65219/200000 |
| 866:54 | AHQ | lo | 58109/200000 | earlier 865:54; AHQ; lo; 58109/200000 |
| 866:55 | AHQ | hi | 638823/1000000 | earlier 865:55; AHQ; hi; 638823/1000000 |
| 866:59 | AHS | hi | 143451/200000 | earlier 865:59; AHS; hi; 143451/200000 |
| 866:66 | AQR | lo | 182651/500000 | earlier 865:66; AQR; lo; 182651/500000 |
| 866:68 | AQS | lo | 89651/500000 | earlier 865:68; AQS; lo; 89651/500000 |
| 866:69 | AQS | hi | 87407/200000 | earlier 865:69; AQS; hi; 87407/200000 |
| 866:75 | BCF | hi | 740859/1000000 | earlier 865:75; BCF; hi; 740859/1000000 |
| 866:76 | BCH | lo | 19431/62500 | earlier 865:76; BCH; lo; 19431/62500 |
| 866:77 | BCH | hi | 200073/250000 | earlier 865:77; BCH; hi; 200073/250000 |
| 866:78 | BCP | lo | 3903/31250 | earlier 865:78; BCP; lo; 3903/31250 |
| 866:84 | BCS | lo | 24221/200000 | earlier 865:84; BCS; lo; 24221/200000 |
| 866:86 | BEF | lo | 19689/50000 | earlier 865:86; BEF; lo; 19689/50000 |
| 866:90 | BEP | lo | 18351/62500 | earlier 865:90; BEP; lo; 18351/62500 |
| 866:94 | BER | lo | 8011/62500 | earlier 865:94; BER; lo; 8011/62500 |
| 866:96 | BES | lo | 86191/500000 | earlier 865:96; BES; lo; 86191/500000 |
| 866:101 | BFQ | hi | 98923/200000 | earlier 865:101; BFQ; hi; 98923/200000 |
| 866:105 | BFS | hi | 298991/500000 | earlier 865:105; BFS; hi; 298991/500000 |
| 866:109 | BHQ | hi | 8657/15625 | earlier 865:109; BHQ; hi; 8657/15625 |
| 866:115 | BPQ | hi | 356503/1000000 | earlier 865:115; BPQ; hi; 356503/1000000 |
| 866:116 | BPR | lo | 128713/1000000 | earlier 865:116; BPR; lo; 128713/1000000 |
| 866:120 | CEF | lo | 41777/125000 | earlier 865:120; CEF; lo; 41777/125000 |
| 866:122 | CEH | lo | 195863/500000 | earlier 865:122; CEH; lo; 195863/500000 |
| 866:124 | CEP | lo | 18351/62500 | earlier 865:124; CEP; lo; 18351/62500 |
| 866:130 | CES | lo | 132103/1000000 | earlier 865:130; CES; lo; 132103/1000000 |
| 866:156 | EFH | lo | 47759/500000 | earlier 865:156; EFH; lo; 47759/500000 |
| 866:159 | EFP | hi | 22439/40000 | earlier 865:159; EFP; hi; 22439/40000 |
| 866:160 | EFQ | lo | 18527/125000 | earlier 865:160; EFQ; lo; 18527/125000 |
| 866:161 | EFQ | hi | 198067/500000 | earlier 865:161; EFQ; hi; 198067/500000 |
| 866:162 | EFR | lo | 292369/1000000 | earlier 865:162; EFR; lo; 292369/1000000 |
| 866:166 | EHP | lo | 41317/250000 | earlier 865:166; EHP; lo; 41317/250000 |
| 866:168 | EHQ | lo | 102863/500000 | earlier 865:168; EHQ; lo; 102863/500000 |
| 866:174 | EPQ | lo | 3363/31250 | earlier 865:174; EPQ; lo; 3363/31250 |
| 866:176 | EPR | lo | 294739/1000000 | earlier 865:176; EPR; lo; 294739/1000000 |
| 866:194 | FPQ | lo | 117101/1000000 | earlier 865:194; FPQ; lo; 117101/1000000 |
| 866:196 | FPR | lo | 174497/1000000 | earlier 865:196; FPR; lo; 174497/1000000 |
| 866:200 | FQR | lo | 176053/500000 | earlier 865:200; FQR; lo; 176053/500000 |
| 866:201 | FQR | hi | 573679/1000000 | earlier 865:201; FQR; hi; 573679/1000000 |
| 866:204 | FRS | lo | 106369/1000000 | earlier 865:204; FRS; lo; 106369/1000000 |
| 866:206 | HPQ | lo | 20909/200000 | earlier 865:206; HPQ; lo; 20909/200000 |
| 866:212 | HQR | lo | 185789/500000 | earlier 865:212; HQR; lo; 185789/500000 |
| 866:213 | HQR | hi | 390407/500000 | earlier 865:213; HQR; hi; 390407/500000 |
| 866:216 | HRS | lo | 102401/1000000 | earlier 865:216; HRS; lo; 102401/1000000 |
| 866:218 | PQR | lo | 21013/62500 | earlier 865:218; PQR; lo; 21013/62500 |
| 866:219 | PQR | hi | 522987/1000000 | earlier 865:219; PQR; hi; 522987/1000000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |


## Stage 867

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS-/HEQ-/CFQ-/PQR+/PQS+/QRS+/AEQ-/BEQ+/BFP+ |
| Packet | forest:root/AFP-/APR-/ARS-/HEQ-/CFQ-/PQR+/PQS+/QRS+/AEQ-/BEQ+/BFP+ |
| Index | 0 |
| Context | 539 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 866 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 4537/40000 | 59/125 | 4537/40000 | 59/125 |
| b | 52449/500000 | 145431/250000 | 52449/500000 | 145431/250000 |
| c | 135501/250000 | 1/1 | 135501/250000 | 1/1 |
| e | 279/1000 | 59/125 | 279/1000 | 59/125 |
| f | 279/1000 | 9289/15625 | 279/1000 | 9289/15625 |
| h | 718731/1000000 | 1/1 | 718731/1000000 | 1/1 |
| p | 114797/1000000 | 5489/10000 | 114797/1000000 | 124653/250000 |
| q | 276019/1000000 | 19353/25000 | 276019/1000000 | 19353/25000 |
| u | 21413/40000 | 830823/1000000 | 21413/40000 | 830823/1000000 |
| v | 84991/500000 | 379/1000 | 84991/500000 | 379/1000 |
| r | 351607/500000 | 1/1 | 351607/500000 | 1/1 |
| w | 85563/125000 | 1/1 | 85563/125000 | 1/1 |
| j | 138879/250000 | 871013/1000000 | 138879/250000 | 871013/1000000 |
| k | 268487/500000 | 852471/1000000 | 268487/500000 | 852471/1000000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 67 | A_BFP | bitt ["actual-area","BFP",[]] | `1/1 * f * q + -1/1 * b * q + -1/1 * p + 1/1 * b + -93/1000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 67 | p | 114797/1000000 | 5489/10000 | 114797/1000000 | 3116319129/6250000000 | 114797/1000000 | 124653/250000 | `(-1/1, 29976729969/500000000000); (-1/1, 101291606061/250000000000); (-1/1, 73518175181/500000000000); (-1/1, 123062328667/250000000000); (-1/1, 1833423003/12500000000); (-1/1, 1589870607/6250000000); (-1/1, 4886320047/12500000000); (-1/1, 3116319129/6250000000)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 867:0 | ABC | lo | 93/1000 | occupants none |
| 867:2 | ABE | lo | 322017/1000000 | earlier 866:2; ABE; lo; 322017/1000000 |
| 867:3 | ABE | hi | 59/125 | vertex maximum 59/125 |
| 867:4 | ABF | lo | 279/1000 | occupants P |
| 867:10 | ABQ | lo | 136017/1000000 | earlier 866:10; ABQ; lo; 136017/1000000 |
| 867:11 | ABQ | hi | 143/500 | earlier 866:11; ABQ; hi; 143/500 |
| 867:13 | ABR | hi | 12174223/15625000 | vertex maximum 12174223/15625000 |
| 867:17 | ACE | hi | 59/125 | vertex maximum 59/125 |
| 867:21 | ACH | hi | 813499/1000000 | earlier 866:21; ACH; hi; 813499/1000000 |
| 867:22 | ACP | lo | 93/1000 | occupants none |
| 867:25 | ACQ | hi | 66919/250000 | earlier 866:25; ACQ; hi; 66919/250000 |
| 867:26 | ACR | lo | 330981/1000000 | earlier 866:26; ACR; lo; 330981/1000000 |
| 867:31 | AEF | hi | 33615183/40000000 | vertex maximum 33615183/40000000 |
| 867:34 | AEP | lo | 93/1000 | occupants none |
| 867:36 | AEQ | lo | 93/1000 | occupants none |
| 867:38 | AER | lo | 327161/1000000 | earlier 866:38; AER; lo; 327161/1000000 |
| 867:39 | AER | hi | 15402806839/20000000000 | vertex maximum 15402806839/20000000000 |
| 867:40 | AES | lo | 141161/1000000 | earlier 866:40; AES; lo; 141161/1000000 |
| 867:42 | AFH | lo | 93/1000 | occupants none |
| 867:44 | AFP | lo | 93/1000 | occupants none |
| 867:46 | AFQ | lo | 303101/1000000 | earlier 866:46; AFQ; lo; 303101/1000000 |
| 867:47 | AFQ | hi | 625021/1000000 | earlier 866:47; AFQ; hi; 625021/1000000 |
| 867:48 | AFR | lo | 360497/1000000 | earlier 866:48; AFR; lo; 360497/1000000 |
| 867:49 | AFR | hi | 727243959/1000000000 | vertex maximum 727243959/1000000000 |
| 867:50 | AFS | lo | 65219/200000 | earlier 866:50; AFS; lo; 65219/200000 |
| 867:52 | AHP | lo | 93/1000 | occupants none |
| 867:54 | AHQ | lo | 58109/200000 | earlier 866:54; AHQ; lo; 58109/200000 |
| 867:55 | AHQ | hi | 638823/1000000 | earlier 866:55; AHQ; hi; 638823/1000000 |
| 867:57 | AHR | hi | 35463/40000 | vertex maximum 35463/40000 |
| 867:59 | AHS | hi | 143451/200000 | earlier 866:59; AHS; hi; 143451/200000 |
| 867:60 | APQ | lo | 93/1000 | occupants none |
| 867:62 | APR | lo | 93/1000 | occupants none |
| 867:64 | APS | lo | 93/1000 | occupants none |
| 867:66 | AQR | lo | 182651/500000 | earlier 866:66; AQR; lo; 182651/500000 |
| 867:68 | AQS | lo | 89651/500000 | earlier 866:68; AQS; lo; 89651/500000 |
| 867:69 | AQS | hi | 87407/200000 | earlier 866:69; AQS; hi; 87407/200000 |
| 867:70 | ARS | lo | 93/1000 | occupants none |
| 867:72 | BCE | lo | 93/1000 | occupants none |
| 867:76 | BCH | lo | 19431/62500 | earlier 866:76; BCH; lo; 19431/62500 |
| 867:77 | BCH | hi | 200073/250000 | earlier 866:77; BCH; hi; 200073/250000 |
| 867:78 | BCP | lo | 3903/31250 | earlier 866:78; BCP; lo; 3903/31250 |
| 867:80 | BCQ | lo | 93/1000 | occupants none |
| 867:81 | BCQ | hi | 169621829/500000000 | vertex maximum 169621829/500000000 |
| 867:82 | BCR | lo | 93/1000 | occupants none |
| 867:84 | BCS | lo | 24221/200000 | earlier 866:84; BCS; lo; 24221/200000 |
| 867:86 | BEF | lo | 19689/50000 | earlier 866:86; BEF; lo; 19689/50000 |
| 867:87 | BEF | hi | 423263771/500000000 | vertex maximum 423263771/500000000 |
| 867:88 | BEH | lo | 13857/20000 | occupants P, Q |
| 867:89 | BEH | hi | 29519183/31250000 | vertex maximum 29519183/31250000 |
| 867:90 | BEP | lo | 18351/62500 | earlier 866:90; BEP; lo; 18351/62500 |
| 867:92 | BEQ | lo | 93/1000 | occupants none |
| 867:94 | BER | lo | 8011/62500 | earlier 866:94; BER; lo; 8011/62500 |
| 867:96 | BES | lo | 86191/500000 | earlier 866:96; BES; lo; 86191/500000 |
| 867:98 | BFH | lo | 279/1000 | occupants P |
| 867:99 | BFH | hi | 9289/15625 | vertex maximum 9289/15625 |
| 867:100 | BFP | lo | 93/1000 | occupants none |
| 867:105 | BFR | hi | 48495530287/62500000000 | vertex maximum 48495530287/62500000000 |
| 867:108 | BHP | lo | 93/1000 | occupants none |
| 867:111 | BHQ | hi | 8657/15625 | earlier 866:109; BHQ; hi; 8657/15625 |
| 867:117 | BPQ | hi | 356503/1000000 | earlier 866:115; BPQ; hi; 356503/1000000 |
| 867:122 | CEF | lo | 41777/125000 | earlier 866:120; CEF; lo; 41777/125000 |
| 867:123 | CEF | hi | 4547921/7812500 | vertex maximum 4547921/7812500 |
| 867:124 | CEH | lo | 195863/500000 | earlier 866:122; CEH; lo; 195863/500000 |
| 867:125 | CEH | hi | 11153467/15625000 | vertex maximum 11153467/15625000 |
| 867:126 | CEP | lo | 18351/62500 | earlier 866:124; CEP; lo; 18351/62500 |
| 867:128 | CEQ | lo | 93/1000 | occupants none |
| 867:130 | CER | lo | 93/1000 | occupants none |
| 867:132 | CES | lo | 132103/1000000 | earlier 866:130; CES; lo; 132103/1000000 |
| 867:138 | CFQ | lo | 93/1000 | occupants none |
| 867:144 | CHP | lo | 93/1000 | occupants none |
| 867:161 | EFP | hi | 22439/40000 | earlier 866:159; EFP; hi; 22439/40000 |
| 867:162 | EFQ | lo | 18527/125000 | earlier 866:160; EFQ; lo; 18527/125000 |
| 867:163 | EFQ | hi | 198067/500000 | earlier 866:161; EFQ; hi; 198067/500000 |
| 867:164 | EFR | lo | 292369/1000000 | earlier 866:162; EFR; lo; 292369/1000000 |
| 867:165 | EFR | hi | 519841/1000000 | vertex maximum 519841/1000000 |
| 867:166 | EFS | lo | 93/1000 | occupants none |
| 867:168 | EHP | lo | 41317/250000 | earlier 866:166; EHP; lo; 41317/250000 |
| 867:170 | EHQ | lo | 102863/500000 | earlier 866:168; EHQ; lo; 102863/500000 |
| 867:173 | EHR | hi | 721/1000 | vertex maximum 721/1000 |
| 867:176 | EPQ | lo | 3363/31250 | earlier 866:174; EPQ; lo; 3363/31250 |
| 867:178 | EPR | lo | 294739/1000000 | earlier 866:176; EPR; lo; 294739/1000000 |
| 867:184 | EQS | lo | 93/1000 | occupants none |
| 867:186 | ERS | lo | 93/1000 | occupants none |
| 867:188 | FHP | lo | 93/1000 | occupants none |
| 867:192 | FHR | lo | 93/1000 | occupants none |
| 867:198 | FPR | lo | 174497/1000000 | earlier 866:196; FPR; lo; 174497/1000000 |
| 867:203 | FQR | hi | 573679/1000000 | earlier 866:201; FQR; hi; 573679/1000000 |
| 867:206 | FRS | lo | 106369/1000000 | earlier 866:204; FRS; lo; 106369/1000000 |
| 867:208 | HPQ | lo | 20909/200000 | earlier 866:206; HPQ; lo; 20909/200000 |
| 867:214 | HQR | lo | 185789/500000 | earlier 866:212; HQR; lo; 185789/500000 |
| 867:215 | HQR | hi | 390407/500000 | earlier 866:213; HQR; hi; 390407/500000 |
| 867:218 | HRS | lo | 102401/1000000 | earlier 866:216; HRS; lo; 102401/1000000 |
| 867:220 | PQR | lo | 21013/62500 | earlier 866:218; PQR; lo; 21013/62500 |
| 867:221 | PQR | hi | 522987/1000000 | earlier 866:219; PQR; hi; 522987/1000000 |
| 867:224 | PRS | lo | 93/1000 | occupants none |
| 867:226 | QRS | lo | 93/1000 | occupants none |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 56 | plu | ACE * BER = ABE * CER + AER * BCE | circuit EABCR |
| 77 | plu | ACQ * BFQ = ABQ * CFQ + AFQ * BCQ | circuit QABCF |
| 138 | plu | ABE * EFQ = AEF * BEQ + AEQ * BEF | circuit EABFQ |
| 141 | plu | ABR * AEF = ABE * AFR + ABF * AER | circuit ABEFR |
| 149 | plu | AEF * BFS = ABF * EFS + AFS * BEF | circuit FABES |
| 150 | plu | AES * BFS = ABS * EFS + AFS * BES | circuit SABEF |
| 160 | plu | ABQ * EHQ = AEQ * BHQ + AHQ * BEQ | circuit QABEH |
| 357 | plu | ACP * AFS = ACF * APS + ACS * AFP | circuit ACFPS |
| 421 | plu | AEP * AFR = AEF * APR + AER * AFP | circuit AEFPR |
| 544 | plu | AQR * FRS = AFR * QRS + ARS * FQR | circuit RAFQS |
| 564 | plu | AQR * HRS = AHR * QRS + ARS * HQR | circuit RAHQS |
| 565 | plu | AQS * HRS = AHS * QRS + ARS * HQS | circuit SAHQR |
| 575 | plu | BEH * CFH = BCH * EFH + BFH * CEH | circuit HBCEF |
| 643 | plu | BFQ * CHQ = BCQ * FHQ + BHQ * CFQ | circuit QBCFH |
| 705 | plu | BFR * EFH = BEF * FHR + BFH * EFR | circuit FBEHR |
| 709 | plu | BEF * EHS = BEH * EFS + BES * EFH | circuit EBFHS |
| 721 | plu | BPR * EFP = BEP * FPR + BFP * EPR | circuit PBEFR |
| 736 | plu | BHQ * EHP = BEH * HPQ + BHP * EHQ | circuit HBEPQ |
| 790 | plu | BHQ * HPR = BHP * HQR + BHR * HPQ | circuit HBPQR |
| 791 | plu | BPQ * HPR = BHP * PQR + BPR * HPQ | circuit PBHQR |
| 798 | plu | CEH * CFP = CEF * CHP + CEP * CFH | circuit CEFHP |
| 2084 | support | FQR * PQR >= 1023/1000 * (FQR - FPR) | pentagon ears ["RFHPQ",[[],[],[]],"11/1"] |
| 2102 | bary | outer ABE; fans BEQ, AEQ, ABQ; target AQR; sign -1; vertices none 0; ABR -1; AER -1 | container ABE; inner Q; line AR |
| 2106 | bary | outer ABE; fans BEQ, AEQ, ABQ; target BFQ; sign -1; vertices ABF 1; none 0; BEF -1 | container ABE; inner Q; line BF |
| 2121 | bary | outer ABE; fans BEQ, AEQ, ABQ; target FHQ; sign 1; vertices AFH 1; BFH 1; EFH 1 | container ABE; inner Q; line FH |
| 2125 | bary | outer ABE; fans BEQ, AEQ, ABQ; target FQS; sign -1; vertices AFS -1; BFS -1; EFS -1 | container ABE; inner Q; line FS |
| 2287 | bary | outer ACH; fans CHP, AHP, ACP; target FPQ; sign -1; vertices AFQ -1; CFQ -1; FHQ -1 | container ACH; inner P; line FQ |
| 2411 | bary | outer AER; fans ERS, ARS, AES; target FHS; sign 1; vertices AFH 1; EFH 1; FHR 1 | container AER; inner S; line FH |
| 2464 | bary | outer AFQ; fans FPQ, APQ, AFP; target PQR; sign 1; vertices AQR 1; FQR 1; none 0 | container AFQ; inner P; line QR |
| 2528 | bary | outer AFS; fans FPS, APS, AFP; target EFP; sign 1; vertices AEF 1; none 0; EFS -1 | container AFS; inner P; line EF |
| 2578 | bary | outer AHQ; fans HPQ, APQ, AHP; target FPR; sign -1; vertices AFR -1; FHR -1; FQR -1 | container AHQ; inner P; line FR |
| 2579 | bary | outer AHQ; fans HPQ, APQ, AHP; target FPS; sign -1; vertices AFS -1; FHS -1; FQS -1 | container AHQ; inner P; line FS |
| 2640 | bary | outer AHS; fans HPS, APS, AHP; target BCP; sign 1; vertices ABC 1; BCH 1; BCS 1 | container AHS; inner P; line BC |
| 2654 | bary | outer AHS; fans HPS, APS, AHP; target EPQ; sign -1; vertices AEQ -1; EHQ -1; EQS -1 | container AHS; inner P; line EQ |
| 2676 | bary | outer AQR; fans QRS, ARS, AQS; target AHS; sign -1; vertices none 0; AHQ -1; AHR -1 | container AQR; inner S; line AH |
| 2699 | bary | outer AQR; fans QRS, ARS, AQS; target FRS; sign -1; vertices AFR -1; FQR -1; none 0 | container AQR; inner S; line FR |
| 2703 | bary | outer AQR; fans QRS, ARS, AQS; target HRS; sign -1; vertices AHR -1; HQR -1; none 0 | container AQR; inner S; line HR |
| 2735 | bary | outer BCH; fans CHP, BHP, BCP; target EFP; sign 1; vertices BEF 1; CEF 1; EFH 1 | container BCH; inner P; line EF |
| 2740 | bary | outer BCH; fans CHP, BHP, BCP; target EPS; sign 1; vertices BES 1; CES 1; EHS 1 | container BCH; inner P; line ES |
| 2930 | bary | outer BFH; fans FHP, BHP, BFP; target CPQ; sign 1; vertices BCQ 1; CFQ 1; CHQ 1 | container BFH; inner P; line CQ |
| 3065 | bary | outer CEF; fans EFQ, CFQ, CEQ; target ABQ; sign 1; vertices ABC 1; ABE 1; ABF 1 | container CEF; inner Q; line AB |
| 3077 | bary | outer CEF; fans EFQ, CFQ, CEQ; target BHQ; sign -1; vertices BCH -1; BEH -1; BFH -1 | container CEF; inner Q; line BH |
| 3078 | bary | outer CEF; fans EFQ, CFQ, CEQ; target BPQ; sign -1; vertices BCP -1; BEP -1; BFP -1 | container CEF; inner Q; line BP |
| 3096 | bary | outer CEF; fans EFQ, CFQ, CEQ; target HPQ; sign 1; vertices CHP 1; EHP 1; FHP 1 | container CEF; inner Q; line HP |
| 3179 | bary | outer EFR; fans FRS, ERS, EFS; target ABS; sign 1; vertices ABE 1; ABF 1; ABR 1 | container EFR; inner S; line AB |
| 3180 | bary | outer EFR; fans FRS, ERS, EFS; target ACS; sign 1; vertices ACE 1; ACF 1; ACR 1 | container EFR; inner S; line AC |
| 3185 | bary | outer EFR; fans FRS, ERS, EFS; target AQS; sign 1; vertices AEQ 1; AFQ 1; AQR 1 | container EFR; inner S; line AQ |
| 3208 | bary | outer EFR; fans FRS, ERS, EFS; target HPS; sign 1; vertices EHP 1; FHP 1; HPR 1 | container EFR; inner S; line HP |
| 3209 | bary | outer EFR; fans FRS, ERS, EFS; target HQS; sign 1; vertices EHQ 1; FHQ 1; HQR 1 | container EFR; inner S; line HQ |
| 3212 | bary | outer EFR; fans FRS, ERS, EFS; target PQS; sign 1; vertices EPQ 1; FPQ 1; PQR 1 | container EFR; inner S; line PQ |
| 3227 | bary | outer EHR; fans HRS, ERS, EHS; target BCS; sign 1; vertices BCE 1; BCH 1; BCR 1 | container EHR; inner S; line BC |
| 3299 | bary | outer FQR; fans QRS, FRS, FQS; target AFS; sign -1; vertices none 0; AFQ -1; AFR -1 | container FQR; inner S; line AF |
| 3310 | bary | outer FQR; fans QRS, FRS, FQS; target CES; sign 1; vertices CEF 1; CEQ 1; CER 1 | container FQR; inner S; line CE |
| 3345 | bary | outer HQR; fans QRS, HRS, HQS; target BES; sign 1; vertices BEH 1; BEQ 1; BER 1 | container HQR; inner S; line BE |
| 3385 | bary | outer PQR; fans QRS, PRS, PQS; target BFS; sign -1; vertices BFP 1; BFQ -1; BFR -1 | container PQR; inner S; line BF |
| 3398 | bary | outer PQR; fans QRS, PRS, PQS; target FHS; sign 1; vertices FHP 1; FHQ 1; FHR 1 | container PQR; inner S; line FH |
| 3423 | four | 1 * ABE + -1 * AEQ + -1 * ABQ + -1 * BEQ = 0 | vertices ABEQ |
| 3441 | four | 1 * ACE + -1 * AEQ + -1 * ACQ + -1 * CEQ = 0 | vertices ACEQ |
| 3445 | four | 1 * ACF + -1 * AFP + -1 * ACP + -1 * CFP = 0 | vertices ACFP |
| 3450 | four | 1 * ACH + -1 * AHQ + -1 * ACQ + 1 * CHQ = 0 | vertices ACHQ |
| 3457 | four | 1 * AEF + -1 * AFP + -1 * AEP + -1 * EFP = 0 | vertices AEFP |
| 3470 | four | 1 * AER + -1 * ARS + -1 * AES + -1 * ERS = 0 | vertices AERS |
| 3475 | four | -1 * AFP + -1 * APQ + 1 * AFQ + -1 * FPQ = 0 | vertices AFPQ |
| 3476 | four | -1 * AFP + -1 * APR + 1 * AFR + -1 * FPR = 0 | vertices AFPR |
| 3477 | four | -1 * AFP + -1 * APS + 1 * AFS + -1 * FPS = 0 | vertices AFPS |
| 3481 | four | -1 * AHP + -1 * APQ + 1 * AHQ + -1 * HPQ = 0 | vertices AHPQ |
| 3482 | four | -1 * AHP + -1 * APR + 1 * AHR + -1 * HPR = 0 | vertices AHPR |
| 3483 | four | -1 * AHP + -1 * APS + 1 * AHS + -1 * HPS = 0 | vertices AHPS |
| 3490 | four | 1 * AQR + -1 * ARS + -1 * AQS + -1 * QRS = 0 | vertices AQRS |
| 3502 | four | 1 * BCH + -1 * BHP + -1 * BCP + -1 * CHP = 0 | vertices BCHP |
| 3503 | four | 1 * BCH + -1 * BHQ + -1 * BCQ + 1 * CHQ = 0 | vertices BCHQ |
| 3511 | four | 1 * BEF + -1 * BFQ + -1 * BEQ + -1 * EFQ = 0 | vertices BEFQ |
| 3518 | four | 1 * BEP + -1 * BPQ + -1 * BEQ + -1 * EPQ = 0 | vertices BEPQ |
| 3529 | four | -1 * BHP + -1 * BPR + 1 * BHR + -1 * HPR = 0 | vertices BHPR |
| 3533 | four | 1 * CEF + -1 * CFQ + -1 * CEQ + -1 * EFQ = 0 | vertices CEFQ |
| 3537 | four | 1 * CEH + -1 * CHQ + -1 * CEQ + -1 * EHQ = 0 | vertices CEHQ |
| 3540 | four | 1 * CEP + -1 * CPQ + -1 * CEQ + -1 * EPQ = 0 | vertices CEPQ |
| 3562 | four | -1 * EFR + 1 * ERS + 1 * EFS + 1 * FRS = 0 | vertices EFRS |
| 3571 | four | -1 * EPR + 1 * ERS + 1 * EPS + 1 * PRS = 0 | vertices EPRS |
| 3582 | four | 1 * FQR + -1 * FRS + -1 * FQS + -1 * QRS = 0 | vertices FQRS |
| 3586 | four | 1 * HQR + -1 * HRS + -1 * HQS + -1 * QRS = 0 | vertices HQRS |
| 3587 | four | 1 * PQR + -1 * PRS + -1 * PQS + -1 * QRS = 0 | vertices PQRS |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 867:229 | ABR | lo | 987/4000 | 9874480069/40018075000 | 141 | 867:2, 867:48, 867:4, 867:38, 867:31 |
| 867:232 | BFS | lo | 91837/500000 | 514522297/2801265250 | 149 | 867:4, 867:166, 867:50, 867:86, 867:31 |
| 867:235 | EFH | lo | 152323/1000000 | 14774061375/96991060574 | 705 | 867:86, 867:192, 867:98, 867:164, 867:105 |
| 867:236 | EHS | lo | 21427/200000 | 45346396693/423263771000 | 709 | 867:88, 867:166, 867:96, 867:235, 867:87 |
| 867:237 | BPR | lo | 70097/500000 | 9830729769/70121875000 | 721 | 867:90, 867:198, 867:100, 867:178, 867:161 |
| 867:239 | HPR | lo | 128817/1000000 | 4592392573/35650300000 | 791 | 867:108, 867:220, 867:237, 867:208, 867:117 |
| 867:241 | BFQ | hi | 228983/500000 | 54039969253/118000000000 | 2106 | 867:3, 867:92, 867:36, 867:10, 867:4, 867:87 |
| 867:242 | FHQ | lo | 146743/1000000 | 69262936491/472000000000 | 2121 | 867:3, 867:92, 867:36, 867:10, 867:42, 867:98, 867:235 |
| 867:244 | FQS | lo | 156793/1000000 | 74006517/472000000 | 2125 | 867:3, 867:92, 867:36, 867:10, 867:50, 867:232, 867:166 |
| 867:251 | FPQ | lo | 61581/500000 | 100192899/813499000 | 2287 | 867:21, 867:144, 867:52, 867:22, 867:46, 867:138, 867:242 |
| 867:253 | FHS | lo | 100163/1000000 | 1542801816027/15402806839000 | 2411 | 867:39, 867:186, 867:70, 867:40, 867:42, 867:235, 867:192 |
| 867:259 | FPS | lo | 145381/1000000 | 92873079089/638823000000 | 2579 | 867:55, 867:208, 867:60, 867:52, 867:50, 867:253, 867:244 |
| 867:263 | EFP | lo | 201519/1000000 | 13439535693/66691000000 | 2735 | 867:77, 867:144, 867:108, 867:78, 867:86, 867:122, 867:235 |
| 867:264 | EPS | lo | 58809/500000 | 1568821307/13338200000 | 2740 | 867:77, 867:144, 867:108, 867:78, 867:96, 867:132, 867:236 |
| 867:266 | ABQ | lo | 159301/1000000 | 11591879073/72766736000 | 3065 | 867:123, 867:162, 867:138, 867:128, 867:0, 867:2, 867:4 |
| 867:267 | BHQ | lo | 88309/250000 | 1835990199/5197624000 | 3077 | 867:123, 867:162, 867:138, 867:128, 867:76, 867:88, 867:98 |
| 867:268 | BPQ | lo | 13317/100000 | 8652147/64970300 | 3078 | 867:123, 867:162, 867:138, 867:128, 867:78, 867:90, 867:100 |
| 867:270 | ABS | lo | 3349/12500 | 139276092273/519841000000 | 3179 | 867:165, 867:206, 867:186, 867:166, 867:2, 867:4, 867:229 |
| 867:275 | HPS | lo | 22839/200000 | 14840817223/129960250000 | 3208 | 867:165, 867:206, 867:186, 867:166, 867:168, 867:188, 867:239 |
| 867:276 | HQS | lo | 39807/200000 | 1478094937/7426300000 | 3209 | 867:165, 867:206, 867:186, 867:166, 867:170, 867:242, 867:214 |
| 867:277 | PQS | lo | 37823/250000 | 4915502691/32490062500 | 3212 | 867:165, 867:206, 867:186, 867:166, 867:176, 867:251, 867:220 |
| 867:283 | BES | lo | 43353/250000 | 3385075179/19520350000 | 3345 | 867:215, 867:226, 867:218, 867:276, 867:88, 867:92, 867:94 |
| 867:284 | BFS | hi | 56487/100000 | 6154576046608423/10895562500000000 | 3385 | 867:221, 867:226, 867:224, 867:277, 867:100, 867:241, 867:105 |
| 867:288 | FHS | lo | 25639/250000 | 1787863/17432900 | 3398 | 867:221, 867:226, 867:224, 867:277, 867:188, 867:242, 867:192 |
| 867:291 | ABE | lo | 345301/1000000 | 345301/1000000 | 3423 | 867:36, 867:266, 867:92 |
| 867:294 | AEF | lo | 387519/1000000 | 387519/1000000 | 3457 | 867:44, 867:34, 867:263 |
| 867:295 | AFQ | lo | 154581/500000 | 154581/500000 | 3475 | 867:44, 867:60, 867:251 |
| 867:297 | AFS | lo | 331381/1000000 | 331381/1000000 | 3477 | 867:44, 867:64, 867:259 |
| 867:299 | AHS | lo | 60039/200000 | 60039/200000 | 3483 | 867:52, 867:64, 867:275 |
| 867:301 | BEP | lo | 166893/500000 | 166893/500000 | 3518 | 867:268, 867:92, 867:176 |
| 867:303 | BHR | lo | 362011/1000000 | 362011/1000000 | 3529 | 867:108, 867:237, 867:239 |
| 867:305 | EPR | lo | 151809/500000 | 151809/500000 | 3571 | 867:186, 867:264, 867:224 |
| 867:306 | FQR | lo | 178081/500000 | 178081/500000 | 3582 | 867:206, 867:244, 867:226 |
| 867:307 | HQR | lo | 98609/250000 | 98609/250000 | 3586 | 867:218, 867:276, 867:226 |
| 867:308 | PQR | lo | 84323/250000 | 84323/250000 | 3587 | 867:224, 867:277, 867:226 |
| 867:310 | BER | lo | 132497/1000000 | 31269483/236000000 | 56 | 867:291, 867:130, 867:38, 867:72, 867:17 |
| 867:311 | ACQ | lo | 95131/1000000 | 43567059/457966000 | 77 | 867:266, 867:138, 867:295, 867:80, 867:241 |
| 867:312 | BFQ | lo | 4069/25000 | 43567059/267676000 | 77 | 867:266, 867:138, 867:295, 867:80, 867:25 |
| 867:313 | EFQ | lo | 76971/500000 | 72660807/472000000 | 138 | 867:294, 867:92, 867:36, 867:86, 867:3 |
| 867:314 | ABR | lo | 128369/500000 | 215757893597/840379575000 | 141 | 867:291, 867:48, 867:4, 867:38, 867:31 |
| 867:315 | BFS | lo | 186151/1000000 | 372471929/2000903750 | 149 | 867:4, 867:166, 867:297, 867:86, 867:31 |
| 867:316 | AES | lo | 72921/500000 | 6865166831/47072500000 | 150 | 867:270, 867:166, 867:297, 867:283, 867:284 |
| 867:317 | EHQ | lo | 209341/1000000 | 59871633/286000000 | 160 | 867:36, 867:267, 867:54, 867:92, 867:11 |
| 867:321 | HRS | lo | 53117/500000 | 4642839/43703500 | 565 | 867:299, 867:226, 867:70, 867:276, 867:69 |
| 867:322 | CFH | lo | 165833/1000000 | 4895255169/29519183000 | 575 | 867:76, 867:235, 867:98, 867:124, 867:89 |
| 867:323 | CHQ | lo | 101531/1000000 | 46498047/457966000 | 643 | 867:80, 867:242, 867:267, 867:138, 867:241 |
| 867:324 | EHS | lo | 2683/25000 | 22712421519/211631885500 | 709 | 867:88, 867:166, 867:283, 867:235, 867:87 |
| 867:325 | BPR | lo | 77081/500000 | 43240564821/280487500000 | 721 | 867:301, 867:198, 867:100, 867:305, 867:161 |
| 867:326 | EHP | lo | 1327/8000 | 73522173/443238400 | 736 | 867:88, 867:208, 867:108, 867:317, 867:111 |
| 867:328 | HPR | lo | 134517/1000000 | 1355072509/10073600000 | 790 | 867:108, 867:307, 867:303, 867:208, 867:111 |
| 867:329 | CFP | lo | 22351/200000 | 4985831883/44613868000 | 798 | 867:122, 867:144, 867:126, 867:322, 867:125 |
| 867:330 | AQR | hi | 622591/1000000 | 5877253244422099/9440000000000000 | 2102 | 867:3, 867:92, 867:36, 867:266, 867:13, 867:39 |
| 867:332 | FHQ | lo | 149669/1000000 | 70644213223/472000000000 | 2121 | 867:3, 867:92, 867:36, 867:266, 867:42, 867:98, 867:235 |
| 867:334 | FQS | lo | 158323/1000000 | 18682119/118000000 | 2125 | 867:3, 867:92, 867:36, 867:266, 867:297, 867:315, 867:166 |
| 867:338 | FPQ | lo | 12419/100000 | 10102869/81349900 | 2287 | 867:21, 867:144, 867:52, 867:22, 867:295, 867:138, 867:332 |
| 867:345 | PQR | hi | 20907/40000 | 326682670411/625021000000 | 2464 | 867:47, 867:338, 867:60, 867:44, 867:330, 867:203 |
| 867:349 | FPR | lo | 175087/1000000 | 22370015773/127764600000 | 2578 | 867:55, 867:208, 867:60, 867:52, 867:48, 867:192, 867:306 |
| 867:350 | FPS | lo | 74061/500000 | 31541324071/212941000000 | 2579 | 867:55, 867:208, 867:60, 867:52, 867:297, 867:288, 867:334 |
| 867:351 | EPQ | lo | 27021/250000 | 6460369/59771250 | 2654 | 867:59, 867:275, 867:64, 867:52, 867:36, 867:317, 867:184 |
| 867:355 | AHS | hi | 143427/200000 | 17859248193/24903640000 | 2676 | 867:330, 867:226, 867:70, 867:68, 867:55, 867:57 |
| 867:358 | FRS | lo | 107051/1000000 | 66649287/622591000 | 2699 | 867:330, 867:226, 867:70, 867:68, 867:48, 867:306 |
| 867:359 | EPS | lo | 2947/25000 | 786155937/6669100000 | 2740 | 867:77, 867:144, 867:108, 867:78, 867:283, 867:132, 867:324 |
| 867:367 | CPQ | lo | 47167/500000 | 56081511/594496000 | 2930 | 867:99, 867:188, 867:108, 867:100, 867:80, 867:138, 867:323 |
| 867:371 | ABQ | lo | 163021/1000000 | 11862555573/72766736000 | 3065 | 867:123, 867:313, 867:138, 867:128, 867:0, 867:291, 867:4 |
| 867:372 | BHQ | lo | 7071/20000 | 918810441/2598812000 | 3077 | 867:123, 867:313, 867:138, 867:128, 867:76, 867:88, 867:98 |
| 867:373 | BPQ | lo | 139901/1000000 | 2545052613/18191684000 | 3078 | 867:123, 867:313, 867:138, 867:128, 867:78, 867:301, 867:100 |
| 867:374 | HPQ | lo | 52321/500000 | 7614478323/72766736000 | 3096 | 867:123, 867:313, 867:138, 867:128, 867:144, 867:326, 867:188 |
| 867:375 | ABS | lo | 139479/500000 | 145014062371/519841000000 | 3179 | 867:165, 867:358, 867:186, 867:166, 867:291, 867:4, 867:314 |
| 867:377 | AQS | lo | 90193/500000 | 18754473/103968200 | 3185 | 867:165, 867:358, 867:186, 867:166, 867:36, 867:295, 867:66 |
| 867:383 | HPS | lo | 57717/500000 | 1959433/16974400 | 3208 | 867:165, 867:358, 867:186, 867:166, 867:326, 867:188, 867:328 |
| 867:384 | HQS | lo | 102873/500000 | 106955360901/519841000000 | 3209 | 867:165, 867:358, 867:186, 867:166, 867:317, 867:332, 867:307 |
| 867:385 | PQS | lo | 15197/100000 | 19750174161/129960250000 | 3212 | 867:165, 867:358, 867:186, 867:166, 867:351, 867:338, 867:308 |
| 867:386 | AFS | hi | 23611/40000 | 84656957246063/143419750000000 | 3299 | 867:203, 867:226, 867:358, 867:334, 867:47, 867:49 |
| 867:391 | BES | lo | 174853/1000000 | 68264050881/390407000000 | 3345 | 867:215, 867:226, 867:321, 867:384, 867:88, 867:92, 867:310 |
| 867:393 | BFS | hi | 70593/125000 | 245981300458343/435562500000000 | 3385 | 867:345, 867:226, 867:224, 867:385, 867:100, 867:241, 867:105 |
| 867:402 | FHS | lo | 103083/1000000 | 2244958/21778125 | 3398 | 867:345, 867:226, 867:224, 867:385, 867:188, 867:332, 867:192 |
| 867:408 | ABE | lo | 349021/1000000 | 349021/1000000 | 3423 | 867:36, 867:371, 867:92 |
| 867:410 | ACE | lo | 281131/1000000 | 281131/1000000 | 3441 | 867:36, 867:311, 867:128 |
| 867:411 | ACF | lo | 59551/200000 | 59551/200000 | 3445 | 867:44, 867:22, 867:329 |
| 867:412 | ACH | hi | 100621/125000 | 100621/125000 | 3450 | 867:55, 867:25, 867:323 |
| 867:414 | AER | lo | 165921/500000 | 165921/500000 | 3470 | 867:70, 867:316, 867:186 |
| 867:415 | AFQ | lo | 31019/100000 | 31019/100000 | 3475 | 867:44, 867:60, 867:338 |
| 867:416 | AFR | lo | 361087/1000000 | 361087/1000000 | 3476 | 867:44, 867:62, 867:349 |
| 867:418 | AFS | lo | 167061/500000 | 167061/500000 | 3477 | 867:44, 867:64, 867:350 |
| 867:421 | AHQ | lo | 145321/500000 | 145321/500000 | 3481 | 867:52, 867:60, 867:374 |
| 867:422 | AHR | lo | 320517/1000000 | 320517/1000000 | 3482 | 867:52, 867:62, 867:328 |
| 867:424 | AQR | lo | 183193/500000 | 183193/500000 | 3490 | 867:70, 867:377, 867:226 |
| 867:425 | BCH | hi | 791761/1000000 | 395880329/500000000 | 3503 | 867:111, 867:81, 867:323 |
| 867:426 | BEF | lo | 204851/500000 | 204851/500000 | 3511 | 867:312, 867:92, 867:313 |
| 867:427 | BEP | lo | 68197/200000 | 68197/200000 | 3518 | 867:373, 867:92, 867:351 |
| 867:429 | BHR | lo | 381679/1000000 | 381679/1000000 | 3529 | 867:108, 867:325, 867:328 |
| 867:430 | CEF | lo | 169971/500000 | 169971/500000 | 3533 | 867:138, 867:128, 867:313 |
| 867:431 | CEH | lo | 12621/31250 | 12621/31250 | 3537 | 867:323, 867:128, 867:317 |
| 867:432 | CEP | lo | 147709/500000 | 147709/500000 | 3540 | 867:367, 867:128, 867:351 |
| 867:433 | EFR | lo | 293051/1000000 | 293051/1000000 | 3562 | 867:186, 867:166, 867:358 |
| 867:435 | EPR | lo | 7597/25000 | 7597/25000 | 3571 | 867:186, 867:359, 867:224 |
| 867:436 | FQR | lo | 179187/500000 | 179187/500000 | 3582 | 867:358, 867:334, 867:226 |
| 867:437 | HQR | lo | 20249/50000 | 20249/50000 | 3586 | 867:321, 867:384, 867:226 |
| 867:438 | PQR | lo | 33797/100000 | 33797/100000 | 3587 | 867:224, 867:385, 867:226 |
| 867:440 | BER | lo | 134153/1000000 | 63320259/472000000 | 56 | 867:408, 867:130, 867:414, 867:72, 867:17 |
| 867:441 | ACQ | lo | 19219/200000 | 44008623/457966000 | 77 | 867:371, 867:138, 867:415, 867:80, 867:241 |
| 867:442 | BFQ | lo | 16441/100000 | 44008623/267676000 | 77 | 867:371, 867:138, 867:415, 867:80, 867:25 |
| 867:443 | EFQ | lo | 157079/1000000 | 74141553/472000000 | 138 | 867:294, 867:92, 867:36, 867:426, 867:3 |
| 867:444 | ABR | lo | 260133/1000000 | 218610863827/840379575000 | 141 | 867:408, 867:416, 867:4, 867:414, 867:31 |
| 867:446 | BFS | lo | 96883/500000 | 1938541091/10004518750 | 149 | 867:4, 867:166, 867:418, 867:426, 867:31 |
| 867:447 | AES | lo | 74693/500000 | 14060888011/94124000000 | 150 | 867:375, 867:166, 867:418, 867:391, 867:393 |
| 867:448 | EHQ | lo | 8379/40000 | 1872183/8937500 | 160 | 867:36, 867:372, 867:421, 867:92, 867:11 |
| 867:453 | CFH | lo | 8471/50000 | 10002306213/59038366000 | 575 | 867:76, 867:235, 867:98, 867:431, 867:89 |
| 867:454 | CHQ | lo | 102189/1000000 | 46799367/457966000 | 643 | 867:80, 867:332, 867:372, 867:138, 867:241 |
| 867:455 | EFH | lo | 154477/1000000 | 14982939375/96991060574 | 705 | 867:426, 867:192, 867:98, 867:433, 867:105 |
| 867:456 | EHS | lo | 13503/125000 | 91445816881/846527542000 | 709 | 867:88, 867:166, 867:391, 867:455, 867:87 |
| 867:457 | BPR | lo | 156803/1000000 | 17592576139/112195000000 | 721 | 867:427, 867:349, 867:100, 867:435, 867:161 |
| 867:458 | EHP | lo | 83009/500000 | 919823847/5540480000 | 736 | 867:88, 867:374, 867:108, 867:448, 867:111 |
| 867:459 | HPR | lo | 28013/200000 | 38801396959/277024000000 | 790 | 867:108, 867:437, 867:429, 867:374, 867:111 |
| 867:460 | CFP | lo | 28601/250000 | 2041608089/17845547200 | 798 | 867:430, 867:144, 867:432, 867:453, 867:125 |
| 867:463 | AQR | hi | 15563/25000 | 5876582905626379/9440000000000000 | 2102 | 867:3, 867:92, 867:36, 867:371, 867:13, 867:39 |
| 867:465 | FHQ | lo | 150881/1000000 | 71216042017/472000000000 | 2121 | 867:3, 867:92, 867:36, 867:371, 867:42, 867:98, 867:455 |
| 867:467 | FQS | lo | 160363/1000000 | 1182681/7375000 | 2125 | 867:3, 867:92, 867:36, 867:371, 867:418, 867:446, 867:166 |
| 867:470 | FPQ | lo | 124779/1000000 | 100443627/804968000 | 2287 | 867:412, 867:144, 867:52, 867:22, 867:415, 867:138, 867:465 |
| 867:475 | PQR | hi | 4181/8000 | 4083143749/7812762500 | 2464 | 867:47, 867:470, 867:60, 867:44, 867:463, 867:203 |
| 867:479 | EFP | hi | 280459/500000 | 529752724293/944440000000 | 2528 | 867:386, 867:350, 867:64, 867:44, 867:31, 867:166 |
| 867:480 | FPR | lo | 175547/1000000 | 56071740427/319411500000 | 2578 | 867:55, 867:374, 867:60, 867:52, 867:416, 867:192, 867:436 |
| 867:481 | FPS | lo | 149267/1000000 | 31785071449/212941000000 | 2579 | 867:55, 867:374, 867:60, 867:52, 867:418, 867:402, 867:467 |
| 867:482 | BCP | lo | 62451/500000 | 3732152/29880625 | 2640 | 867:355, 867:383, 867:64, 867:52, 867:0, 867:76, 867:84 |
| 867:483 | EPQ | lo | 13513/125000 | 2584191/23904500 | 2654 | 867:355, 867:383, 867:64, 867:52, 867:36, 867:448, 867:184 |
| 867:487 | AHS | hi | 143423/200000 | 223209129/311260000 | 2676 | 867:463, 867:226, 867:70, 867:377, 867:55, 867:57 |
| 867:490 | FRS | lo | 53741/500000 | 66909873/622520000 | 2699 | 867:463, 867:226, 867:70, 867:377, 867:416, 867:436 |
| 867:491 | HRS | lo | 3387/31250 | 67471221/622520000 | 2703 | 867:463, 867:226, 867:70, 867:377, 867:422, 867:437 |
| 867:492 | EFP | lo | 1289/6250 | 163293033997/791761000000 | 2735 | 867:425, 867:144, 867:108, 867:482, 867:426, 867:430, 867:455 |
| 867:493 | EPS | lo | 59351/500000 | 11747954283/98970125000 | 2740 | 867:425, 867:144, 867:108, 867:482, 867:391, 867:132, 867:456 |
| 867:499 | CPQ | lo | 94437/1000000 | 11228541/118899200 | 2930 | 867:99, 867:188, 867:108, 867:100, 867:80, 867:138, 867:454 |
| 867:505 | ABQ | lo | 32723/200000 | 11905800573/72766736000 | 3065 | 867:123, 867:443, 867:138, 867:128, 867:0, 867:408, 867:4 |
| 867:506 | BHQ | lo | 176861/500000 | 25739199567/72766736000 | 3077 | 867:123, 867:443, 867:138, 867:128, 867:76, 867:88, 867:98 |
| 867:507 | BPQ | lo | 5649/40000 | 41106095421/291066944000 | 3078 | 867:123, 867:443, 867:138, 867:128, 867:482, 867:427, 867:100 |
| 867:509 | HPQ | lo | 20933/200000 | 3808070349/36383368000 | 3096 | 867:123, 867:443, 867:138, 867:128, 867:144, 867:458, 867:188 |
| 867:510 | ABS | lo | 140943/500000 | 146536289869/519841000000 | 3179 | 867:165, 867:490, 867:186, 867:166, 867:408, 867:4, 867:444 |
| 867:511 | ACS | lo | 293023/1000000 | 152325502171/519841000000 | 3180 | 867:165, 867:490, 867:186, 867:166, 867:410, 867:411, 867:26 |
| 867:512 | AQS | lo | 45191/250000 | 93968781/519841000 | 3185 | 867:165, 867:490, 867:186, 867:166, 867:36, 867:415, 867:424 |
| 867:518 | HPS | lo | 116517/1000000 | 15142594669/129960250000 | 3208 | 867:165, 867:490, 867:186, 867:166, 867:458, 867:188, 867:459 |
| 867:519 | HQS | lo | 104227/500000 | 108363137229/519841000000 | 3209 | 867:165, 867:490, 867:186, 867:166, 867:448, 867:465, 867:437 |
| 867:520 | PQS | lo | 15221/100000 | 4945325279/32490062500 | 3212 | 867:165, 867:490, 867:186, 867:166, 867:483, 867:470, 867:438 |
| 867:521 | AFS | hi | 295099/500000 | 338583770888923/573679000000000 | 3299 | 867:203, 867:226, 867:490, 867:467, 867:47, 867:49 |
| 867:524 | CES | lo | 16629/125000 | 76317753/573679000 | 3310 | 867:203, 867:226, 867:490, 867:467, 867:430, 867:128, 867:130 |
| 867:527 | BES | lo | 21929/125000 | 68490129731/390407000000 | 3345 | 867:215, 867:226, 867:491, 867:519, 867:88, 867:92, 867:440 |
| 867:529 | BFS | hi | 141181/250000 | 147569382062891/261312500000000 | 3385 | 867:475, 867:226, 867:224, 867:520, 867:100, 867:241, 867:105 |
| 867:538 | FHS | lo | 103299/1000000 | 26993529/261312500 | 3398 | 867:475, 867:226, 867:224, 867:520, 867:188, 867:465, 867:192 |
| 867:544 | ABE | lo | 69923/200000 | 69923/200000 | 3423 | 867:36, 867:505, 867:92 |
| 867:546 | ACE | lo | 56419/200000 | 56419/200000 | 3441 | 867:36, 867:441, 867:128 |
| 867:547 | ACF | lo | 75101/250000 | 75101/250000 | 3445 | 867:44, 867:22, 867:460 |
| 867:548 | ACH | hi | 80431/100000 | 80431/100000 | 3450 | 867:55, 867:25, 867:454 |
| 867:549 | AEF | lo | 4903/12500 | 4903/12500 | 3457 | 867:44, 867:34, 867:492 |
| 867:551 | AER | lo | 167693/500000 | 167693/500000 | 3470 | 867:70, 867:447, 867:186 |
| 867:552 | AFQ | lo | 310779/1000000 | 310779/1000000 | 3475 | 867:44, 867:60, 867:470 |
| 867:553 | AFR | lo | 361547/1000000 | 361547/1000000 | 3476 | 867:44, 867:62, 867:480 |
| 867:555 | AFS | lo | 335267/1000000 | 335267/1000000 | 3477 | 867:44, 867:64, 867:481 |
| 867:558 | AHQ | lo | 58133/200000 | 58133/200000 | 3481 | 867:52, 867:60, 867:509 |
| 867:559 | AHR | lo | 65213/200000 | 65213/200000 | 3482 | 867:52, 867:62, 867:459 |
| 867:561 | AQR | lo | 91691/250000 | 91691/250000 | 3490 | 867:70, 867:512, 867:226 |
| 867:562 | BCH | lo | 155451/500000 | 155451/500000 | 3502 | 867:108, 867:482, 867:144 |
| 867:563 | BCH | hi | 791103/1000000 | 395551329/500000000 | 3503 | 867:111, 867:81, 867:454 |
| 867:564 | BEF | lo | 414489/1000000 | 414489/1000000 | 3511 | 867:442, 867:92, 867:443 |
| 867:565 | BEP | lo | 342329/1000000 | 342329/1000000 | 3518 | 867:507, 867:92, 867:483 |
| 867:567 | BHR | lo | 97467/250000 | 97467/250000 | 3529 | 867:108, 867:457, 867:459 |
| 867:568 | CEF | lo | 343079/1000000 | 343079/1000000 | 3533 | 867:138, 867:128, 867:443 |
| 867:569 | CEH | lo | 50583/125000 | 50583/125000 | 3537 | 867:454, 867:128, 867:448 |
| 867:570 | CEP | lo | 295541/1000000 | 295541/1000000 | 3540 | 867:499, 867:128, 867:483 |
| 867:571 | EFR | lo | 146741/500000 | 146741/500000 | 3562 | 867:186, 867:166, 867:490 |
| 867:573 | EPR | lo | 152351/500000 | 152351/500000 | 3571 | 867:186, 867:493, 867:224 |
| 867:574 | FQR | lo | 72169/200000 | 72169/200000 | 3582 | 867:490, 867:467, 867:226 |
| 867:575 | HQR | lo | 204919/500000 | 204919/500000 | 3586 | 867:491, 867:519, 867:226 |
| 867:576 | PQR | lo | 33821/100000 | 33821/100000 | 3587 | 867:224, 867:520, 867:226 |
| 867:578 | BER | lo | 16871/125000 | 63705093/472000000 | 56 | 867:544, 867:130, 867:551, 867:72, 867:17 |
| 867:579 | ACQ | lo | 6021/62500 | 22059321/228983000 | 77 | 867:505, 867:138, 867:552, 867:80, 867:241 |
| 867:580 | BFQ | lo | 164821/1000000 | 22059321/133838000 | 77 | 867:505, 867:138, 867:552, 867:80, 867:25 |
| 867:581 | EFQ | lo | 19869/125000 | 75025797/472000000 | 138 | 867:549, 867:92, 867:36, 867:564, 867:3 |
| 867:582 | ABR | lo | 65439/250000 | 43994989681/168075915000 | 141 | 867:544, 867:553, 867:4, 867:551, 867:31 |
| 867:584 | BFS | lo | 98117/500000 | 54970494521/280126525000 | 149 | 867:4, 867:166, 867:555, 867:564, 867:31 |
| 867:585 | AES | lo | 37643/250000 | 10628994793/70590500000 | 150 | 867:510, 867:166, 867:555, 867:527, 867:529 |
| 867:586 | EHQ | lo | 104769/500000 | 59927991/286000000 | 160 | 867:36, 867:506, 867:558, 867:92, 867:11 |
| 867:588 | ACP | lo | 23377/250000 | 55188711/590198000 | 357 | 867:547, 867:64, 867:511, 867:44, 867:521 |
| 867:589 | AEP | lo | 11631/125000 | 22556406/242414653 | 421 | 867:549, 867:62, 867:551, 867:44, 867:49 |
| 867:593 | CFH | lo | 42591/250000 | 80464232127/472306928000 | 575 | 867:562, 867:455, 867:98, 867:569, 867:89 |
| 867:594 | CHQ | lo | 10247/100000 | 46928079/457966000 | 643 | 867:80, 867:465, 867:506, 867:138, 867:241 |
| 867:595 | EFH | lo | 77603/500000 | 15053619375/96991060574 | 705 | 867:564, 867:192, 867:98, 867:571, 867:105 |
| 867:596 | EHS | lo | 108281/1000000 | 5728946812/52907971375 | 709 | 867:88, 867:166, 867:527, 867:595, 867:87 |
| 867:597 | BPR | lo | 19707/125000 | 88432114963/560918000000 | 721 | 867:565, 867:480, 867:100, 867:573, 867:479 |
| 867:598 | EHP | lo | 83029/500000 | 368016717/2216192000 | 736 | 867:88, 867:509, 867:108, 867:586, 867:111 |
| 867:599 | HPR | lo | 142443/1000000 | 358729401/2518400000 | 790 | 867:108, 867:575, 867:567, 867:509, 867:111 |
| 867:600 | CFP | lo | 115233/1000000 | 20563973481/178455472000 | 798 | 867:568, 867:144, 867:570, 867:593, 867:125 |
| 867:601 | FPR | lo | 88249/500000 | 288892507/1636800000 | 2084 | 867:574, 867:475 |
| 867:603 | AQR | hi | 622509/1000000 | 1175295173531477/1888000000000000 | 2102 | 867:3, 867:92, 867:36, 867:505, 867:13, 867:39 |
| 867:606 | FHQ | lo | 151211/1000000 | 7137183469/47200000000 | 2121 | 867:3, 867:92, 867:36, 867:505, 867:42, 867:98, 867:595 |
| 867:608 | FQS | lo | 6443/40000 | 76027593/472000000 | 2125 | 867:3, 867:92, 867:36, 867:505, 867:555, 867:584, 867:166 |
| 867:610 | FPQ | lo | 31237/250000 | 25124367797/201077500000 | 2287 | 867:548, 867:144, 867:52, 867:588, 867:552, 867:138, 867:606 |
| 867:614 | PQR | hi | 261309/500000 | 326646670689/625021000000 | 2464 | 867:47, 867:610, 867:60, 867:44, 867:603, 867:203 |
| 867:618 | EFP | hi | 560881/1000000 | 6620614869117/11803960000000 | 2528 | 867:521, 867:481, 867:64, 867:44, 867:31, 867:166 |
| 867:619 | FPS | lo | 29943/200000 | 95641875797/638823000000 | 2579 | 867:55, 867:509, 867:60, 867:52, 867:555, 867:538, 867:608 |
| 867:620 | BCP | lo | 124903/1000000 | 44785173/358557500 | 2640 | 867:487, 867:518, 867:64, 867:52, 867:0, 867:562, 867:84 |
| 867:621 | EPQ | lo | 108113/1000000 | 77529729/717115000 | 2654 | 867:487, 867:518, 867:64, 867:52, 867:36, 867:586, 867:184 |
| 867:625 | AHS | hi | 89639/125000 | 5952113409/8300120000 | 2676 | 867:603, 867:226, 867:70, 867:512, 867:55, 867:57 |
| 867:628 | FRS | lo | 53961/500000 | 2799269/25937875 | 2699 | 867:603, 867:226, 867:70, 867:512, 867:553, 867:574 |
| 867:629 | HRS | lo | 5497/50000 | 22812993/207503000 | 2703 | 867:603, 867:226, 867:70, 867:512, 867:559, 867:575 |
| 867:630 | EFP | lo | 51943/250000 | 27394906703/131850500000 | 2735 | 867:563, 867:144, 867:108, 867:620, 867:564, 867:568, 867:595 |
| 867:631 | EPS | lo | 29771/250000 | 31402769981/263701000000 | 2740 | 867:563, 867:144, 867:108, 867:620, 867:527, 867:524, 867:596 |
| 867:637 | CPQ | lo | 94481/1000000 | 28084419/297248000 | 2930 | 867:99, 867:188, 867:108, 867:100, 867:80, 867:138, 867:594 |
| 867:643 | ABQ | lo | 16371/100000 | 11912705823/72766736000 | 3065 | 867:123, 867:581, 867:138, 867:128, 867:0, 867:544, 867:4 |
| 867:644 | BHQ | lo | 176913/500000 | 201146769/568490125 | 3077 | 867:123, 867:581, 867:138, 867:128, 867:562, 867:88, 867:98 |
| 867:645 | BPQ | lo | 141543/1000000 | 514981839/3638336800 | 3078 | 867:123, 867:581, 867:138, 867:128, 867:620, 867:565, 867:100 |
| 867:647 | HPQ | lo | 104671/1000000 | 3808302849/36383368000 | 3096 | 867:123, 867:581, 867:138, 867:128, 867:144, 867:598, 867:188 |
| 867:648 | ABS | lo | 283081/1000000 | 10511222271/37131500000 | 3179 | 867:165, 867:628, 867:186, 867:166, 867:544, 867:4, 867:582 |
| 867:649 | ACS | lo | 73529/250000 | 30578736379/103968200000 | 3180 | 867:165, 867:628, 867:186, 867:166, 867:546, 867:547, 867:26 |
| 867:650 | AQS | lo | 180937/1000000 | 11757339/64980125 | 3185 | 867:165, 867:628, 867:186, 867:166, 867:36, 867:552, 867:561 |
| 867:656 | HPS | lo | 29253/250000 | 2172427767/18565750000 | 3208 | 867:165, 867:628, 867:186, 867:166, 867:598, 867:188, 867:599 |
| 867:657 | HQS | lo | 52397/250000 | 21790550989/103968200000 | 3209 | 867:165, 867:628, 867:186, 867:166, 867:586, 867:606, 867:575 |
| 867:658 | PQS | lo | 152289/1000000 | 11309463719/74263000000 | 3212 | 867:165, 867:628, 867:186, 867:166, 867:621, 867:610, 867:576 |
| 867:659 | BCS | lo | 60553/500000 | 43658943/360500000 | 3227 | 867:173, 867:629, 867:186, 867:596, 867:72, 867:562, 867:82 |
| 867:660 | AFS | hi | 590119/1000000 | 338538792786963/573679000000000 | 3299 | 867:203, 867:226, 867:628, 867:608, 867:47, 867:49 |
| 867:663 | CES | lo | 6677/50000 | 38304747/286839500 | 3310 | 867:203, 867:226, 867:628, 867:608, 867:568, 867:128, 867:130 |
| 867:666 | BES | lo | 175711/1000000 | 1071857353/6100109375 | 3345 | 867:215, 867:226, 867:629, 867:657, 867:88, 867:92, 867:578 |
| 867:668 | BFS | hi | 564721/1000000 | 3074305548191561/5443937500000000 | 3385 | 867:614, 867:226, 867:224, 867:658, 867:100, 867:241, 867:105 |
| 867:677 | FHS | lo | 51679/500000 | 18005699/174206000 | 3398 | 867:614, 867:226, 867:224, 867:658, 867:188, 867:606, 867:192 |
| 867:683 | ABE | lo | 34971/100000 | 34971/100000 | 3423 | 867:36, 867:643, 867:92 |
| 867:685 | ACE | lo | 8823/31250 | 8823/31250 | 3441 | 867:36, 867:579, 867:128 |
| 867:686 | ACF | lo | 301741/1000000 | 301741/1000000 | 3445 | 867:44, 867:588, 867:600 |
| 867:688 | ACH | hi | 804029/1000000 | 804029/1000000 | 3450 | 867:55, 867:25, 867:594 |
| 867:689 | AEF | lo | 19691/50000 | 19691/50000 | 3457 | 867:44, 867:589, 867:630 |
| 867:691 | AER | lo | 84143/250000 | 84143/250000 | 3470 | 867:70, 867:585, 867:186 |
| 867:692 | AFQ | lo | 77737/250000 | 77737/250000 | 3475 | 867:44, 867:60, 867:610 |
| 867:693 | AFR | lo | 181249/500000 | 181249/500000 | 3476 | 867:44, 867:62, 867:601 |
| 867:695 | AFS | lo | 67143/200000 | 67143/200000 | 3477 | 867:44, 867:64, 867:619 |
| 867:698 | AHQ | lo | 290671/1000000 | 290671/1000000 | 3481 | 867:52, 867:60, 867:647 |
| 867:699 | AHR | lo | 328443/1000000 | 328443/1000000 | 3482 | 867:52, 867:62, 867:599 |
| 867:701 | AQR | lo | 366937/1000000 | 366937/1000000 | 3490 | 867:70, 867:650, 867:226 |
| 867:702 | BCH | lo | 310903/1000000 | 310903/1000000 | 3502 | 867:108, 867:620, 867:144 |
| 867:703 | BCH | hi | 395411/500000 | 395410829/500000000 | 3503 | 867:111, 867:81, 867:594 |
| 867:704 | BEF | lo | 416773/1000000 | 416773/1000000 | 3511 | 867:580, 867:92, 867:581 |
| 867:705 | BEP | lo | 5354/15625 | 5354/15625 | 3518 | 867:645, 867:92, 867:621 |
| 867:707 | BHR | lo | 393099/1000000 | 393099/1000000 | 3529 | 867:108, 867:597, 867:599 |
| 867:708 | CEF | lo | 43119/125000 | 43119/125000 | 3533 | 867:138, 867:128, 867:581 |
| 867:709 | CEH | lo | 25313/62500 | 25313/62500 | 3537 | 867:594, 867:128, 867:586 |
| 867:710 | CEP | lo | 147797/500000 | 147797/500000 | 3540 | 867:637, 867:128, 867:621 |
| 867:711 | EFR | lo | 146961/500000 | 146961/500000 | 3562 | 867:186, 867:166, 867:628 |
| 867:713 | EPR | lo | 76271/250000 | 76271/250000 | 3571 | 867:186, 867:631, 867:224 |
| 867:714 | FQR | lo | 361997/1000000 | 361997/1000000 | 3582 | 867:628, 867:608, 867:226 |
| 867:715 | HQR | lo | 25783/62500 | 25783/62500 | 3586 | 867:629, 867:657, 867:226 |
| 867:716 | PQR | lo | 338289/1000000 | 338289/1000000 | 3587 | 867:224, 867:658, 867:226 |
| 867:718 | BER | lo | 6761/50000 | 31912113/236000000 | 56 | 867:683, 867:130, 867:691, 867:72, 867:17 |
| 867:719 | ACQ | lo | 96389/1000000 | 22071597/228983000 | 77 | 867:643, 867:138, 867:692, 867:80, 867:241 |
| 867:720 | BFQ | lo | 10307/62500 | 22071597/133838000 | 77 | 867:643, 867:138, 867:692, 867:80, 867:25 |
| 867:721 | EFQ | lo | 79857/500000 | 75385149/472000000 | 138 | 867:689, 867:92, 867:36, 867:704, 867:3 |
| 867:722 | ABR | lo | 262587/1000000 | 3677879393/14006326250 | 141 | 867:683, 867:693, 867:4, 867:691, 867:31 |
| 867:724 | BFS | lo | 197367/1000000 | 11057596513/56025305000 | 149 | 867:4, 867:166, 867:695, 867:704, 867:31 |
| 867:725 | AES | lo | 6043/40000 | 17063070273/112944200000 | 150 | 867:648, 867:166, 867:695, 867:666, 867:668 |
| 867:726 | EHQ | lo | 104787/500000 | 59938221/286000000 | 160 | 867:36, 867:644, 867:698, 867:92, 867:11 |
| 867:728 | ACP | lo | 5869/62500 | 55414701/590119000 | 357 | 867:686, 867:64, 867:649, 867:44, 867:660 |
| 867:729 | AEP | lo | 46701/500000 | 1741704/18647281 | 421 | 867:689, 867:62, 867:691, 867:44, 867:49 |
| 867:730 | FRS | lo | 27059/250000 | 4491869/41500600 | 544 | 867:693, 867:226, 867:70, 867:714, 867:603 |
| 867:733 | CFH | lo | 34141/200000 | 80625621509/472306928000 | 575 | 867:702, 867:595, 867:98, 867:709, 867:89 |
| 867:734 | CHQ | lo | 51279/500000 | 46968441/457966000 | 643 | 867:80, 867:606, 867:644, 867:138, 867:241 |
| 867:735 | EFH | lo | 77819/500000 | 15095515875/96991060574 | 705 | 867:704, 867:192, 867:98, 867:711, 867:105 |
| 867:736 | EHS | lo | 54211/500000 | 45891179309/423263771000 | 709 | 867:88, 867:166, 867:666, 867:735, 867:87 |
| 867:737 | BPR | lo | 158413/1000000 | 2776590959/17527531250 | 721 | 867:705, 867:601, 867:100, 867:713, 867:618 |
| 867:738 | EHP | lo | 166071/1000000 | 1840233687/11080960000 | 736 | 867:88, 867:647, 867:108, 867:726, 867:111 |
| 867:739 | HPR | lo | 143509/1000000 | 79511169429/554048000000 | 790 | 867:108, 867:715, 867:707, 867:647, 867:111 |
| 867:740 | CFP | lo | 11563/100000 | 8253990977/71382188800 | 798 | 867:708, 867:144, 867:710, 867:733, 867:125 |
| 867:741 | FPR | lo | 22133/125000 | 30189463809/170500000000 | 2084 | 867:714, 867:614 |
| 867:743 | AQR | hi | 622507/1000000 | 587645874879029/944000000000000 | 2102 | 867:3, 867:92, 867:36, 867:643, 867:13, 867:39 |
| 867:746 | FHQ | lo | 151373/1000000 | 3572423349/23600000000 | 2121 | 867:3, 867:92, 867:36, 867:643, 867:42, 867:98, 867:735 |
| 867:748 | FQS | lo | 80693/500000 | 38087313/236000000 | 2125 | 867:3, 867:92, 867:36, 867:643, 867:695, 867:724, 867:166 |
| 867:750 | FPQ | lo | 62513/500000 | 12565664899/100503625000 | 2287 | 867:688, 867:144, 867:52, 867:728, 867:692, 867:138, 867:746 |
| 867:754 | PQR | hi | 65327/125000 | 326645792647/625021000000 | 2464 | 867:47, 867:750, 867:60, 867:44, 867:743, 867:203 |
| 867:758 | EFP | hi | 140211/250000 | 13238574138777/23604760000000 | 2528 | 867:660, 867:619, 867:64, 867:44, 867:31, 867:166 |
| 867:759 | FPS | lo | 149877/1000000 | 95745111181/638823000000 | 2579 | 867:55, 867:647, 867:60, 867:52, 867:695, 867:677, 867:748 |
| 867:760 | BCP | lo | 15613/125000 | 89570253/717112000 | 2640 | 867:625, 867:656, 867:64, 867:52, 867:0, 867:702, 867:659 |
| 867:761 | EPQ | lo | 54059/500000 | 38766399/358556000 | 2654 | 867:625, 867:656, 867:64, 867:52, 867:36, 867:726, 867:184 |
| 867:767 | HRS | lo | 55349/500000 | 68910303/622507000 | 2703 | 867:743, 867:226, 867:70, 867:650, 867:699, 867:715 |
| 867:768 | EFP | lo | 20861/100000 | 41243427859/197705500000 | 2735 | 867:703, 867:144, 867:108, 867:760, 867:704, 867:708, 867:735 |
| 867:769 | EPS | lo | 14911/125000 | 23584088471/197705500000 | 2740 | 867:703, 867:144, 867:108, 867:760, 867:666, 867:663, 867:736 |
| 867:775 | CPQ | lo | 18899/200000 | 28088511/297248000 | 2930 | 867:99, 867:188, 867:108, 867:100, 867:80, 867:138, 867:734 |
| 867:781 | ABQ | lo | 81863/500000 | 5956905099/36383368000 | 3065 | 867:123, 867:721, 867:138, 867:128, 867:0, 867:683, 867:4 |
| 867:782 | BHQ | lo | 88467/250000 | 102999380247/291066944000 | 3077 | 867:123, 867:721, 867:138, 867:128, 867:702, 867:88, 867:98 |
| 867:783 | BPQ | lo | 141637/1000000 | 128831211/909584200 | 3078 | 867:123, 867:721, 867:138, 867:128, 867:760, 867:705, 867:100 |
| 867:785 | HPQ | lo | 104673/1000000 | 7616756823/72766736000 | 3096 | 867:123, 867:721, 867:138, 867:128, 867:144, 867:738, 867:188 |
| 867:786 | ABS | lo | 283663/1000000 | 29491948539/103968200000 | 3179 | 867:165, 867:730, 867:186, 867:166, 867:683, 867:4, 867:722 |
| 867:787 | ACS | lo | 29451/100000 | 9568654911/32490062500 | 3180 | 867:165, 867:730, 867:186, 867:166, 867:685, 867:686, 867:26 |
| 867:788 | AQS | lo | 90499/500000 | 47045259/259920500 | 3185 | 867:165, 867:730, 867:186, 867:166, 867:36, 867:692, 867:701 |
| 867:794 | HPS | lo | 469/4000 | 15237865689/129960250000 | 3208 | 867:165, 867:730, 867:186, 867:166, 867:738, 867:188, 867:739 |
| 867:795 | HQS | lo | 210211/1000000 | 109276750129/519841000000 | 3209 | 867:165, 867:730, 867:186, 867:166, 867:726, 867:746, 867:715 |
| 867:796 | PQS | lo | 476/3125 | 5655894017/37131500000 | 3212 | 867:165, 867:730, 867:186, 867:166, 867:761, 867:750, 867:716 |
| 867:797 | AFS | hi | 590063/1000000 | 338506694777837/573679000000000 | 3299 | 867:203, 867:226, 867:730, 867:748, 867:47, 867:49 |
| 867:800 | CES | lo | 33461/250000 | 76783683/573679000 | 3310 | 867:203, 867:226, 867:730, 867:748, 867:708, 867:128, 867:130 |
| 867:803 | BES | lo | 43953/250000 | 6863843021/39040700000 | 3345 | 867:215, 867:226, 867:767, 867:795, 867:88, 867:92, 867:718 |
| 867:812 | FHS | lo | 103387/1000000 | 54031977/522616000 | 3398 | 867:754, 867:226, 867:224, 867:796, 867:188, 867:746, 867:192 |
| 867:818 | ABE | lo | 174863/500000 | 174863/500000 | 3423 | 867:36, 867:781, 867:92 |
| 867:820 | ACE | lo | 282389/1000000 | 282389/1000000 | 3441 | 867:36, 867:719, 867:128 |
| 867:821 | ACF | lo | 151267/500000 | 151267/500000 | 3445 | 867:44, 867:728, 867:740 |
| 867:823 | ACH | hi | 803941/1000000 | 803941/1000000 | 3450 | 867:55, 867:25, 867:734 |
| 867:824 | AEF | lo | 98753/250000 | 98753/250000 | 3457 | 867:44, 867:729, 867:768 |
| 867:826 | AER | lo | 13483/40000 | 13483/40000 | 3470 | 867:70, 867:725, 867:186 |
| 867:827 | AFQ | lo | 155513/500000 | 155513/500000 | 3475 | 867:44, 867:60, 867:750 |
| 867:828 | AFR | lo | 45383/125000 | 45383/125000 | 3476 | 867:44, 867:62, 867:741 |
| 867:830 | AFS | lo | 335877/1000000 | 335877/1000000 | 3477 | 867:44, 867:64, 867:759 |
| 867:833 | AHQ | lo | 290673/1000000 | 290673/1000000 | 3481 | 867:52, 867:60, 867:785 |
| 867:834 | AHR | lo | 329509/1000000 | 329509/1000000 | 3482 | 867:52, 867:62, 867:739 |
| 867:836 | AQR | lo | 183499/500000 | 183499/500000 | 3490 | 867:70, 867:788, 867:226 |
| 867:837 | BCH | lo | 38863/125000 | 38863/125000 | 3502 | 867:108, 867:760, 867:144 |
| 867:838 | BCH | hi | 395367/500000 | 395366829/500000000 | 3503 | 867:111, 867:81, 867:734 |
| 867:839 | BEF | lo | 208813/500000 | 208813/500000 | 3511 | 867:720, 867:92, 867:721 |
| 867:840 | BEP | lo | 68551/200000 | 68551/200000 | 3518 | 867:783, 867:92, 867:761 |
| 867:842 | BHR | lo | 197461/500000 | 197461/500000 | 3529 | 867:108, 867:737, 867:739 |
| 867:843 | CEF | lo | 172857/500000 | 172857/500000 | 3533 | 867:138, 867:128, 867:721 |
| 867:844 | CEH | lo | 101283/250000 | 101283/250000 | 3537 | 867:734, 867:128, 867:726 |
| 867:845 | CEP | lo | 295613/1000000 | 295613/1000000 | 3540 | 867:775, 867:128, 867:761 |
| 867:846 | EFR | lo | 73559/250000 | 73559/250000 | 3562 | 867:186, 867:166, 867:730 |
| 867:848 | EPR | lo | 38161/125000 | 38161/125000 | 3571 | 867:186, 867:769, 867:224 |
| 867:849 | FQR | lo | 181311/500000 | 181311/500000 | 3582 | 867:730, 867:748, 867:226 |
| 867:850 | HQR | lo | 413909/1000000 | 413909/1000000 | 3586 | 867:767, 867:795, 867:226 |
| 867:851 | PQR | lo | 4229/12500 | 4229/12500 | 3587 | 867:224, 867:796, 867:226 |
| 867:853 | BER | lo | 135323/1000000 | 63872493/472000000 | 56 | 867:818, 867:130, 867:826, 867:72, 867:17 |
| 867:854 | ACQ | lo | 12051/125000 | 2759496/28622875 | 77 | 867:781, 867:138, 867:827, 867:80, 867:241 |
| 867:855 | BFQ | lo | 32989/200000 | 1379748/8364875 | 77 | 867:781, 867:138, 867:827, 867:80, 867:25 |
| 867:856 | EFQ | lo | 160117/1000000 | 37787667/236000000 | 138 | 867:824, 867:92, 867:36, 867:839, 867:3 |
| 867:857 | ABR | lo | 65749/250000 | 27627105683/105047446875 | 141 | 867:818, 867:828, 867:4, 867:826, 867:31 |
| 867:859 | BFS | lo | 197789/1000000 | 27702994667/140063262500 | 149 | 867:4, 867:166, 867:830, 867:839, 867:31 |
| 867:860 | AES | lo | 151281/1000000 | 21357966531/141180250000 | 150 | 867:786, 867:166, 867:830, 867:803, 867:668 |
| 867:861 | EHQ | lo | 52397/250000 | 59942313/286000000 | 160 | 867:36, 867:782, 867:833, 867:92, 867:11 |
| 867:864 | ACP | lo | 941/10000 | 13881273/147515750 | 357 | 867:821, 867:64, 867:787, 867:44, 867:797 |
| 867:865 | AEP | lo | 93619/1000000 | 22694697/242414653 | 421 | 867:824, 867:62, 867:826, 867:44, 867:49 |
| 867:866 | FRS | lo | 54207/500000 | 33744399/311253500 | 544 | 867:828, 867:226, 867:70, 867:849, 867:743 |
| 867:867 | HRS | lo | 111063/1000000 | 34568937/311253500 | 564 | 867:834, 867:226, 867:70, 867:850, 867:743 |
| 867:869 | CFH | lo | 42721/250000 | 10088769047/59038366000 | 575 | 867:837, 867:735, 867:98, 867:844, 867:89 |
| 867:870 | CHQ | lo | 513/5000 | 46987413/457966000 | 643 | 867:80, 867:746, 867:782, 867:138, 867:241 |
| 867:871 | EFH | lo | 155853/1000000 | 7558191375/48495530287 | 705 | 867:839, 867:192, 867:98, 867:846, 867:105 |
| 867:872 | EHS | lo | 21697/200000 | 22958969409/211631885500 | 709 | 867:88, 867:166, 867:803, 867:871, 867:87 |
| 867:873 | BPR | lo | 79417/500000 | 2227033883/14021100000 | 721 | 867:840, 867:741, 867:100, 867:848, 867:758 |
| 867:874 | EHP | lo | 41519/250000 | 1840287441/11080960000 | 736 | 867:88, 867:785, 867:108, 867:861, 867:111 |
| 867:875 | HPR | lo | 144087/1000000 | 39915603753/277024000000 | 790 | 867:108, 867:850, 867:842, 867:785, 867:111 |
| 867:876 | CFP | lo | 3619/31250 | 20666733473/178455472000 | 798 | 867:843, 867:144, 867:845, 867:869, 867:125 |
| 867:877 | FPR | lo | 17737/100000 | 945053369/5328125000 | 2084 | 867:849, 867:754 |
| 867:879 | AQR | hi | 311253/500000 | 2938227932806337/4720000000000000 | 2102 | 867:3, 867:92, 867:36, 867:781, 867:13, 867:39 |
| 867:882 | FHQ | lo | 3029/20000 | 35742335139/236000000000 | 2121 | 867:3, 867:92, 867:36, 867:781, 867:42, 867:98, 867:871 |
| 867:884 | FQS | lo | 161501/1000000 | 38114469/236000000 | 2125 | 867:3, 867:92, 867:36, 867:781, 867:830, 867:859, 867:166 |
| 867:886 | FPQ | lo | 62531/500000 | 25135769/200985250 | 2287 | 867:823, 867:144, 867:52, 867:864, 867:827, 867:138, 867:882 |
| 867:893 | EFP | hi | 560817/1000000 | 13236691688529/23602520000000 | 2528 | 867:797, 867:759, 867:64, 867:44, 867:31, 867:166 |
| 867:894 | FPS | lo | 149941/1000000 | 31928673757/212941000000 | 2579 | 867:55, 867:785, 867:60, 867:52, 867:830, 867:812, 867:884 |
| 867:895 | EPQ | lo | 108119/1000000 | 775341/7171120 | 2654 | 867:625, 867:794, 867:64, 867:52, 867:36, 867:861, 867:184 |
| 867:896 | AHS | hi | 717111/1000000 | 2976038973/4150040000 | 2676 | 867:879, 867:226, 867:70, 867:788, 867:55, 867:57 |
| 867:898 | EFP | lo | 20897/100000 | 27540038017/131789000000 | 2735 | 867:838, 867:144, 867:108, 867:760, 867:839, 867:843, 867:871 |
| 867:899 | EPS | lo | 59693/500000 | 3146752533/26357800000 | 2740 | 867:838, 867:144, 867:108, 867:760, 867:803, 867:800, 867:872 |
| 867:905 | CPQ | lo | 94501/1000000 | 877827/9289000 | 2930 | 867:99, 867:188, 867:108, 867:100, 867:80, 867:138, 867:870 |
| 867:911 | ABQ | lo | 10233/62500 | 5956998099/36383368000 | 3065 | 867:123, 867:856, 867:138, 867:128, 867:0, 867:818, 867:4 |
| 867:912 | BHQ | lo | 35389/100000 | 2575147219/7276673600 | 3077 | 867:123, 867:856, 867:138, 867:128, 867:837, 867:88, 867:98 |
| 867:913 | BPQ | lo | 5667/40000 | 10309254919/72766736000 | 3078 | 867:123, 867:856, 867:138, 867:128, 867:760, 867:840, 867:100 |
| 867:915 | HPQ | lo | 52337/500000 | 1904203737/18191684000 | 3096 | 867:123, 867:856, 867:138, 867:128, 867:144, 867:874, 867:188 |
| 867:916 | ABS | lo | 141973/500000 | 4612725683/16245031250 | 3179 | 867:165, 867:866, 867:186, 867:166, 867:818, 867:4, 867:857 |
| 867:917 | ACS | lo | 147343/500000 | 153189921149/519841000000 | 3180 | 867:165, 867:866, 867:186, 867:166, 867:820, 867:821, 867:26 |
| 867:918 | AQS | lo | 181023/1000000 | 18820689/103968200 | 3185 | 867:165, 867:866, 867:186, 867:166, 867:36, 867:827, 867:836 |
| 867:924 | HPS | lo | 117379/1000000 | 7627345683/64980125000 | 3208 | 867:165, 867:866, 867:186, 867:166, 867:874, 867:188, 867:875 |
| 867:925 | HQS | lo | 6579/31250 | 54720789791/259920500000 | 3209 | 867:165, 867:866, 867:186, 867:166, 867:861, 867:882, 867:850 |
| 867:926 | PQS | lo | 152333/1000000 | 79189081079/519841000000 | 3212 | 867:165, 867:866, 867:186, 867:166, 867:895, 867:886, 867:851 |
| 867:927 | AFS | hi | 36877/62500 | 67697699818227/114735800000000 | 3299 | 867:203, 867:226, 867:866, 867:884, 867:47, 867:49 |
| 867:930 | CES | lo | 133967/1000000 | 76854549/573679000 | 3310 | 867:203, 867:226, 867:866, 867:884, 867:843, 867:128, 867:130 |
| 867:933 | BES | lo | 175857/1000000 | 4290997767/24400437500 | 3345 | 867:215, 867:226, 867:867, 867:925, 867:88, 867:92, 867:853 |
| 867:941 | FHS | lo | 103401/1000000 | 27019569/261308000 | 3398 | 867:754, 867:226, 867:224, 867:926, 867:188, 867:882, 867:192 |
| 867:945 | ABE | lo | 10929/31250 | 10929/31250 | 3423 | 867:36, 867:911, 867:92 |
| 867:947 | ACE | lo | 35301/125000 | 35301/125000 | 3441 | 867:36, 867:854, 867:128 |
| 867:948 | ACF | lo | 75727/250000 | 75727/250000 | 3445 | 867:44, 867:864, 867:876 |
| 867:950 | ACH | hi | 803899/1000000 | 803899/1000000 | 3450 | 867:55, 867:25, 867:870 |
| 867:951 | AEF | lo | 395589/1000000 | 395589/1000000 | 3457 | 867:44, 867:865, 867:898 |
| 867:953 | AER | lo | 337281/1000000 | 337281/1000000 | 3470 | 867:70, 867:860, 867:186 |
| 867:954 | AFQ | lo | 155531/500000 | 155531/500000 | 3475 | 867:44, 867:60, 867:886 |
| 867:955 | AFR | lo | 36337/100000 | 36337/100000 | 3476 | 867:44, 867:62, 867:877 |
| 867:957 | AFS | lo | 335941/1000000 | 335941/1000000 | 3477 | 867:44, 867:64, 867:894 |
| 867:960 | AHQ | lo | 145337/500000 | 145337/500000 | 3481 | 867:52, 867:60, 867:915 |
| 867:961 | AHR | lo | 330087/1000000 | 330087/1000000 | 3482 | 867:52, 867:62, 867:875 |
| 867:963 | AQR | lo | 367023/1000000 | 367023/1000000 | 3490 | 867:70, 867:918, 867:226 |
| 867:964 | BCH | hi | 197673/250000 | 395345829/500000000 | 3503 | 867:111, 867:81, 867:870 |
| 867:965 | BEF | lo | 209031/500000 | 209031/500000 | 3511 | 867:855, 867:92, 867:856 |
| 867:966 | BEP | lo | 171397/500000 | 171397/500000 | 3518 | 867:913, 867:92, 867:895 |
| 867:968 | BHR | lo | 395921/1000000 | 395921/1000000 | 3529 | 867:108, 867:873, 867:875 |
| 867:969 | CEF | lo | 346117/1000000 | 346117/1000000 | 3533 | 867:138, 867:128, 867:856 |
| 867:970 | CEH | lo | 101297/250000 | 101297/250000 | 3537 | 867:870, 867:128, 867:861 |
| 867:971 | CEP | lo | 14781/50000 | 14781/50000 | 3540 | 867:905, 867:128, 867:895 |
| 867:972 | EFR | lo | 147207/500000 | 147207/500000 | 3562 | 867:186, 867:166, 867:866 |
| 867:974 | EPR | lo | 152693/500000 | 152693/500000 | 3571 | 867:186, 867:899, 867:224 |
| 867:975 | FQR | lo | 72583/200000 | 72583/200000 | 3582 | 867:866, 867:884, 867:226 |
| 867:976 | HQR | lo | 414591/1000000 | 414591/1000000 | 3586 | 867:867, 867:925, 867:226 |
| 867:977 | PQR | lo | 338333/1000000 | 338333/1000000 | 3587 | 867:224, 867:926, 867:226 |
| 867:979 | BER | lo | 33841/250000 | 63891837/472000000 | 56 | 867:945, 867:130, 867:953, 867:72, 867:17 |
| 867:980 | ACQ | lo | 3013/31250 | 4415547/45796600 | 77 | 867:911, 867:138, 867:954, 867:80, 867:241 |
| 867:981 | BFQ | lo | 82479/500000 | 4415547/26767600 | 77 | 867:911, 867:138, 867:954, 867:80, 867:25 |
| 867:982 | EFQ | lo | 40079/250000 | 75669543/472000000 | 138 | 867:951, 867:92, 867:36, 867:965, 867:3 |
| 867:983 | ABR | lo | 263193/1000000 | 263311979/1000451875 | 141 | 867:945, 867:955, 867:4, 867:953, 867:31 |
| 867:985 | BFS | lo | 39599/200000 | 27731861057/140063262500 | 149 | 867:4, 867:166, 867:957, 867:965, 867:31 |
| 867:986 | AES | lo | 75687/500000 | 85484554437/564721000000 | 150 | 867:916, 867:166, 867:957, 867:933, 867:668 |
| 867:987 | EHQ | lo | 41919/200000 | 14986113/71500000 | 160 | 867:36, 867:912, 867:960, 867:92, 867:11 |
| 867:990 | ACP | lo | 94191/1000000 | 27788121/295016000 | 357 | 867:948, 867:64, 867:917, 867:44, 867:927 |
| 867:991 | AEP | lo | 93719/1000000 | 22718970/242414653 | 421 | 867:951, 867:62, 867:953, 867:44, 867:49 |
| 867:992 | FRS | lo | 13563/125000 | 4502967/41500400 | 544 | 867:955, 867:226, 867:70, 867:975, 867:879 |
| 867:993 | HRS | lo | 27813/250000 | 11542509/103751000 | 564 | 867:961, 867:226, 867:70, 867:976, 867:879 |
| 867:995 | CFH | lo | 42743/250000 | 20187846639/118076732000 | 575 | 867:837, 867:871, 867:98, 867:970, 867:89 |
| 867:996 | CHQ | lo | 5131/50000 | 2349831/22898300 | 643 | 867:80, 867:882, 867:912, 867:138, 867:241 |
| 867:997 | EFH | lo | 155969/1000000 | 7563829500/48495530287 | 705 | 867:965, 867:192, 867:98, 867:972, 867:105 |
| 867:998 | EHS | lo | 108517/1000000 | 91863290433/846527542000 | 709 | 867:88, 867:166, 867:933, 867:997, 867:87 |
| 867:999 | BPR | lo | 159057/1000000 | 4460113489/28040850000 | 721 | 867:966, 867:877, 867:100, 867:974, 867:893 |
| 867:1000 | EHP | lo | 83039/500000 | 920157159/5540480000 | 736 | 867:88, 867:915, 867:108, 867:987, 867:111 |
| 867:1001 | HPR | lo | 144391/1000000 | 39999798877/277024000000 | 790 | 867:108, 867:976, 867:968, 867:915, 867:111 |
| 867:1002 | CFP | lo | 115899/1000000 | 2068290591/17845547200 | 798 | 867:969, 867:144, 867:971, 867:995, 867:125 |
| 867:1003 | FPR | lo | 88757/500000 | 1134980371/6393750000 | 2084 | 867:975, 867:754 |
| 867:1007 | FHQ | lo | 151491/1000000 | 4468986777/29500000000 | 2121 | 867:3, 867:92, 867:36, 867:911, 867:42, 867:98, 867:997 |
| 867:1009 | FQS | lo | 32311/200000 | 2382939/14750000 | 2125 | 867:3, 867:92, 867:36, 867:911, 867:957, 867:985, 867:166 |
| 867:1011 | FPQ | lo | 3127/25000 | 100551698781/803899000000 | 2287 | 867:950, 867:144, 867:52, 867:990, 867:954, 867:138, 867:1007 |
| 867:1018 | EFP | hi | 560803/1000000 | 206807025279/368770000000 | 2528 | 867:927, 867:894, 867:64, 867:44, 867:31, 867:166 |
| 867:1019 | FPS | lo | 149969/1000000 | 95804150983/638823000000 | 2579 | 867:55, 867:915, 867:60, 867:52, 867:957, 867:941, 867:1009 |
| 867:1020 | EPQ | lo | 2703/25000 | 4307481/39839500 | 2654 | 867:896, 867:924, 867:64, 867:52, 867:36, 867:987, 867:184 |
| 867:1021 | EFP | lo | 5229/25000 | 13781821129/65891000000 | 2735 | 867:964, 867:144, 867:108, 867:760, 867:965, 867:969, 867:997 |
| 867:1022 | EPS | lo | 11943/100000 | 7869416147/65891000000 | 2740 | 867:964, 867:144, 867:108, 867:760, 867:933, 867:930, 867:998 |
| 867:1028 | CPQ | lo | 11813/125000 | 14045697/148624000 | 2930 | 867:99, 867:188, 867:108, 867:100, 867:80, 867:138, 867:996 |
| 867:1034 | BHQ | lo | 353901/1000000 | 12876132901/36383368000 | 3077 | 867:123, 867:982, 867:138, 867:128, 867:837, 867:88, 867:98 |
| 867:1035 | BPQ | lo | 35423/250000 | 5155250953/36383368000 | 3078 | 867:123, 867:982, 867:138, 867:128, 867:760, 867:966, 867:100 |
| 867:1037 | ABS | lo | 142041/500000 | 147677956953/519841000000 | 3179 | 867:165, 867:992, 867:186, 867:166, 867:945, 867:4, 867:983 |
| 867:1038 | ACS | lo | 58953/200000 | 9576940383/32490062500 | 3180 | 867:165, 867:992, 867:186, 867:166, 867:947, 867:948, 867:26 |
| 867:1039 | AQS | lo | 90517/500000 | 47054559/259920500 | 3185 | 867:165, 867:992, 867:186, 867:166, 867:36, 867:954, 867:963 |
| 867:1045 | HPS | lo | 117447/1000000 | 3815864457/32490062500 | 3208 | 867:165, 867:992, 867:186, 867:166, 867:1000, 867:188, 867:1001 |
| 867:1046 | HQS | lo | 210687/1000000 | 109524049347/519841000000 | 3209 | 867:165, 867:992, 867:186, 867:166, 867:987, 867:1007, 867:976 |
| 867:1047 | PQS | lo | 152339/1000000 | 247475931/1624503125 | 3212 | 867:165, 867:992, 867:186, 867:166, 867:1020, 867:1011, 867:977 |
| 867:1048 | AFS | hi | 9219/15625 | 13539171960993/22947160000000 | 3299 | 867:203, 867:226, 867:992, 867:1009, 867:47, 867:49 |
| 867:1051 | CES | lo | 134033/1000000 | 19223007/143419750 | 3310 | 867:203, 867:226, 867:992, 867:1009, 867:969, 867:128, 867:130 |
| 867:1054 | BES | lo | 175877/1000000 | 34331824017/195203500000 | 3345 | 867:215, 867:226, 867:993, 867:1046, 867:88, 867:92, 867:979 |
| 867:1062 | FHS | lo | 6463/62500 | 54042951/522616000 | 3398 | 867:754, 867:226, 867:224, 867:1047, 867:188, 867:1007, 867:192 |
| 867:1066 | ACE | lo | 17651/62500 | 17651/62500 | 3441 | 867:36, 867:980, 867:128 |
| 867:1067 | ACF | lo | 30309/100000 | 30309/100000 | 3445 | 867:44, 867:990, 867:1002 |
| 867:1069 | ACH | hi | 803879/1000000 | 803879/1000000 | 3450 | 867:55, 867:25, 867:996 |
| 867:1070 | AEF | lo | 395879/1000000 | 395879/1000000 | 3457 | 867:44, 867:991, 867:1021 |
| 867:1072 | AER | lo | 168687/500000 | 168687/500000 | 3470 | 867:70, 867:986, 867:186 |
| 867:1073 | AFQ | lo | 7777/25000 | 7777/25000 | 3475 | 867:44, 867:60, 867:1011 |
| 867:1074 | AFR | lo | 181757/500000 | 181757/500000 | 3476 | 867:44, 867:62, 867:1003 |
| 867:1076 | AFS | lo | 335969/1000000 | 335969/1000000 | 3477 | 867:44, 867:64, 867:1019 |
| 867:1078 | AHR | lo | 330391/1000000 | 330391/1000000 | 3482 | 867:52, 867:62, 867:1001 |
| 867:1080 | AQR | lo | 183517/500000 | 183517/500000 | 3490 | 867:70, 867:1039, 867:226 |
| 867:1081 | BCH | hi | 49417/62500 | 395335829/500000000 | 3503 | 867:111, 867:81, 867:996 |
| 867:1082 | BEF | lo | 209137/500000 | 209137/500000 | 3511 | 867:981, 867:92, 867:982 |
| 867:1083 | BEP | lo | 85703/250000 | 85703/250000 | 3518 | 867:1035, 867:92, 867:1020 |
| 867:1085 | BHR | lo | 12389/31250 | 12389/31250 | 3529 | 867:108, 867:999, 867:1001 |
| 867:1086 | CEF | lo | 86579/250000 | 86579/250000 | 3533 | 867:138, 867:128, 867:982 |
| 867:1087 | CEH | lo | 81043/200000 | 81043/200000 | 3537 | 867:996, 867:128, 867:987 |
| 867:1088 | CEP | lo | 36953/125000 | 36953/125000 | 3540 | 867:1028, 867:128, 867:1020 |
| 867:1089 | EFR | lo | 36813/125000 | 36813/125000 | 3562 | 867:186, 867:166, 867:992 |
| 867:1091 | EPR | lo | 30543/100000 | 30543/100000 | 3571 | 867:186, 867:1022, 867:224 |
| 867:1092 | FQR | lo | 363059/1000000 | 363059/1000000 | 3582 | 867:992, 867:1009, 867:226 |
| 867:1093 | HQR | lo | 414939/1000000 | 414939/1000000 | 3586 | 867:993, 867:1046, 867:226 |
| 867:1094 | PQR | lo | 338339/1000000 | 338339/1000000 | 3587 | 867:224, 867:1047, 867:226 |
| 867:1096 | BER | lo | 67691/500000 | 31950243/236000000 | 56 | 867:945, 867:130, 867:1072, 867:72, 867:17 |
| 867:1097 | ACQ | lo | 4821/50000 | 5519643/57245750 | 77 | 867:911, 867:138, 867:1073, 867:80, 867:241 |
| 867:1098 | BFQ | lo | 41241/250000 | 5519643/33459500 | 77 | 867:911, 867:138, 867:1073, 867:80, 867:25 |
| 867:1099 | EFQ | lo | 32083/200000 | 75716229/472000000 | 138 | 867:1070, 867:92, 867:36, 867:1082, 867:3 |
| 867:1100 | ABR | lo | 263283/1000000 | 9219098758/35015815625 | 141 | 867:945, 867:1074, 867:4, 867:1072, 867:31 |
| 867:1102 | BFS | lo | 198093/1000000 | 83237048753/420189787500 | 149 | 867:4, 867:166, 867:1076, 867:1082, 867:31 |
| 867:1103 | AES | lo | 151417/1000000 | 85508845813/564721000000 | 150 | 867:1037, 867:166, 867:1076, 867:1054, 867:668 |
| 867:1104 | EHQ | lo | 209599/1000000 | 2397819/11440000 | 160 | 867:36, 867:1034, 867:960, 867:92, 867:11 |
| 867:1107 | ACP | lo | 18847/200000 | 3706701/39334400 | 357 | 867:1067, 867:64, 867:1038, 867:44, 867:1048 |
| 867:1108 | AEP | lo | 11721/125000 | 22730843/242414653 | 421 | 867:1070, 867:62, 867:1072, 867:44, 867:49 |
| 867:1109 | FRS | lo | 108547/1000000 | 22523763/207502000 | 544 | 867:1074, 867:226, 867:70, 867:1092, 867:879 |
| 867:1110 | HRS | lo | 111349/1000000 | 2310523/20750200 | 564 | 867:1078, 867:226, 867:70, 867:1093, 867:879 |
| 867:1112 | CFH | lo | 85509/500000 | 5048324093/29519183000 | 575 | 867:837, 867:997, 867:98, 867:1087, 867:89 |
| 867:1113 | CHQ | lo | 10263/100000 | 2937591/28622875 | 643 | 867:80, 867:1007, 867:1034, 867:138, 867:241 |
| 867:1114 | EFH | lo | 156027/1000000 | 7566631125/48495530287 | 705 | 867:1082, 867:192, 867:98, 867:1089, 867:105 |
| 867:1115 | EHS | lo | 108533/1000000 | 13125230097/120932506000 | 709 | 867:88, 867:166, 867:1054, 867:1114, 867:87 |
| 867:1116 | BPR | lo | 79581/500000 | 11157364921/70100375000 | 721 | 867:1083, 867:1003, 867:100, 867:1091, 867:1018 |
| 867:1118 | HPR | lo | 144549/1000000 | 10010890619/69256000000 | 790 | 867:108, 867:1093, 867:1085, 867:915, 867:111 |
| 867:1119 | CFP | lo | 23189/200000 | 5172775827/44613868000 | 798 | 867:1086, 867:144, 867:1088, 867:1112, 867:125 |
| 867:1120 | FPR | lo | 11099/62500 | 5677153583/31968750000 | 2084 | 867:1092, 867:754 |
| 867:1124 | FHQ | lo | 151511/1000000 | 4469580291/29500000000 | 2121 | 867:3, 867:92, 867:36, 867:911, 867:42, 867:98, 867:1114 |
| 867:1126 | FQS | lo | 8079/50000 | 38132883/236000000 | 2125 | 867:3, 867:92, 867:36, 867:911, 867:1076, 867:1102, 867:166 |
| 867:1128 | FPQ | lo | 3909/31250 | 20111194217/160775800000 | 2287 | 867:1069, 867:144, 867:52, 867:1107, 867:1073, 867:138, 867:1124 |
| 867:1135 | EFP | hi | 112159/200000 | 275731495311/491680000000 | 2528 | 867:1048, 867:1019, 867:64, 867:44, 867:31, 867:166 |
| 867:1136 | FPS | lo | 74991/500000 | 47906247449/319411500000 | 2579 | 867:55, 867:915, 867:60, 867:52, 867:1076, 867:1062, 867:1126 |
| 867:1137 | EPQ | lo | 108121/1000000 | 2584501/23903700 | 2654 | 867:896, 867:1045, 867:64, 867:52, 867:36, 867:1104, 867:184 |
| 867:1138 | EFP | lo | 104627/500000 | 10340751759/49417000000 | 2735 | 867:1081, 867:144, 867:108, 867:760, 867:1082, 867:1086, 867:1114 |
| 867:1139 | EPS | lo | 119453/1000000 | 5903031011/49417000000 | 2740 | 867:1081, 867:144, 867:108, 867:760, 867:1054, 867:1051, 867:1115 |
| 867:1145 | CPQ | lo | 47253/500000 | 28091859/297248000 | 2930 | 867:99, 867:188, 867:108, 867:100, 867:80, 867:138, 867:1113 |
| 867:1148 | BHQ | lo | 353907/1000000 | 12876330307/36383368000 | 3077 | 867:123, 867:1099, 867:138, 867:128, 867:837, 867:88, 867:98 |
| 867:1149 | BPQ | lo | 1417/10000 | 644444123/4547921000 | 3078 | 867:123, 867:1099, 867:138, 867:128, 867:760, 867:1083, 867:100 |
| 867:1151 | ABS | lo | 56829/200000 | 73855162209/259920500000 | 3179 | 867:165, 867:1109, 867:186, 867:166, 867:945, 867:4, 867:1100 |
| 867:1152 | ACS | lo | 147401/500000 | 19156330357/64980125000 | 3180 | 867:165, 867:1109, 867:186, 867:166, 867:1066, 867:1067, 867:26 |
| 867:1153 | AQS | lo | 181039/1000000 | 2688909/14852600 | 3185 | 867:165, 867:1109, 867:186, 867:166, 867:36, 867:1073, 867:1080 |
| 867:1160 | HQS | lo | 210767/1000000 | 109565711887/519841000000 | 3209 | 867:165, 867:1109, 867:186, 867:166, 867:1104, 867:1124, 867:1093 |
| 867:1161 | PQS | lo | 76171/500000 | 79193933761/519841000000 | 3212 | 867:165, 867:1109, 867:186, 867:166, 867:1137, 867:1128, 867:1094 |
| 867:1162 | AFS | hi | 73751/125000 | 84618725859397/143419750000000 | 3299 | 867:203, 867:226, 867:1109, 867:1126, 867:47, 867:49 |
| 867:1165 | CES | lo | 26813/200000 | 15382107/114735800 | 3310 | 867:203, 867:226, 867:1109, 867:1126, 867:1086, 867:128, 867:130 |
| 867:1168 | BES | lo | 87943/500000 | 68667239497/390407000000 | 3345 | 867:215, 867:226, 867:1110, 867:1160, 867:88, 867:92, 867:1096 |
| 867:1176 | FHS | lo | 25853/250000 | 54044811/522616000 | 3398 | 867:754, 867:226, 867:224, 867:1161, 867:188, 867:1124, 867:192 |
| 867:1180 | ACE | lo | 14121/50000 | 14121/50000 | 3441 | 867:36, 867:1097, 867:128 |
| 867:1181 | ACF | lo | 15159/50000 | 15159/50000 | 3445 | 867:44, 867:1107, 867:1119 |
| 867:1183 | ACH | hi | 803869/1000000 | 803869/1000000 | 3450 | 867:55, 867:25, 867:1113 |
| 867:1184 | AEF | lo | 198011/500000 | 198011/500000 | 3457 | 867:44, 867:1108, 867:1138 |
| 867:1186 | AER | lo | 337417/1000000 | 337417/1000000 | 3470 | 867:70, 867:1103, 867:186 |
| 867:1187 | AFQ | lo | 19443/62500 | 19443/62500 | 3475 | 867:44, 867:60, 867:1128 |
| 867:1188 | AFR | lo | 5681/15625 | 5681/15625 | 3476 | 867:44, 867:62, 867:1120 |
| 867:1190 | AFS | lo | 167991/500000 | 167991/500000 | 3477 | 867:44, 867:64, 867:1136 |
| 867:1192 | AHR | lo | 330549/1000000 | 330549/1000000 | 3482 | 867:52, 867:62, 867:1118 |
| 867:1194 | AQR | lo | 367039/1000000 | 367039/1000000 | 3490 | 867:70, 867:1153, 867:226 |
| 867:1195 | BCH | hi | 395331/500000 | 395330829/500000000 | 3503 | 867:111, 867:81, 867:1113 |
| 867:1196 | BEF | lo | 418379/1000000 | 418379/1000000 | 3511 | 867:1098, 867:92, 867:1099 |
| 867:1197 | BEP | lo | 342821/1000000 | 342821/1000000 | 3518 | 867:1149, 867:92, 867:1137 |
| 867:1199 | BHR | lo | 396711/1000000 | 396711/1000000 | 3529 | 867:108, 867:1116, 867:1118 |
| 867:1200 | CEF | lo | 69283/200000 | 69283/200000 | 3533 | 867:138, 867:128, 867:1099 |
| 867:1201 | CEH | lo | 405229/1000000 | 405229/1000000 | 3537 | 867:1113, 867:128, 867:1104 |
| 867:1202 | CEP | lo | 295627/1000000 | 295627/1000000 | 3540 | 867:1145, 867:128, 867:1137 |
| 867:1203 | EFR | lo | 294547/1000000 | 294547/1000000 | 3562 | 867:186, 867:166, 867:1109 |
| 867:1205 | EPR | lo | 305453/1000000 | 305453/1000000 | 3571 | 867:186, 867:1139, 867:224 |
| 867:1206 | FQR | lo | 363127/1000000 | 363127/1000000 | 3582 | 867:1109, 867:1126, 867:226 |
| 867:1207 | HQR | lo | 103779/250000 | 103779/250000 | 3586 | 867:1110, 867:1160, 867:226 |
| 867:1208 | PQR | lo | 169171/500000 | 169171/500000 | 3587 | 867:224, 867:1161, 867:226 |
| 867:1210 | BER | lo | 13539/100000 | 12780897/94400000 | 56 | 867:945, 867:130, 867:1186, 867:72, 867:17 |
| 867:1211 | ACQ | lo | 96421/1000000 | 2759868/28622875 | 77 | 867:911, 867:138, 867:1187, 867:80, 867:241 |
| 867:1212 | BFQ | lo | 164967/1000000 | 1379934/8364875 | 77 | 867:911, 867:138, 867:1187, 867:80, 867:25 |
| 867:1213 | EFQ | lo | 10029/62500 | 75739293/472000000 | 138 | 867:1184, 867:92, 867:36, 867:1196, 867:3 |
| 867:1214 | ABR | lo | 263327/1000000 | 1317231239/5002259375 | 141 | 867:945, 867:1188, 867:4, 867:1186, 867:31 |
| 867:1216 | BFS | lo | 99071/500000 | 3964638409/20009037500 | 149 | 867:4, 867:166, 867:1190, 867:1196, 867:31 |
| 867:1217 | AES | lo | 151437/1000000 | 21380003763/141180250000 | 150 | 867:1151, 867:166, 867:1190, 867:1168, 867:668 |
| 867:1218 | EHQ | lo | 209601/1000000 | 59946033/286000000 | 160 | 867:36, 867:1148, 867:960, 867:92, 867:11 |
| 867:1221 | ACP | lo | 5891/62500 | 27806163/295004000 | 357 | 867:1181, 867:64, 867:1152, 867:44, 867:1162 |
| 867:1222 | AEP | lo | 2931/31250 | 22736609/242414653 | 421 | 867:1184, 867:62, 867:1186, 867:44, 867:49 |
| 867:1223 | FRS | lo | 108567/1000000 | 22528041/207502000 | 544 | 867:1188, 867:226, 867:70, 867:1206, 867:879 |
| 867:1224 | HRS | lo | 111399/1000000 | 4623123/41500400 | 564 | 867:1192, 867:226, 867:70, 867:1207, 867:879 |
| 867:1226 | CFH | lo | 171041/1000000 | 5049009669/29519183000 | 575 | 867:837, 867:1114, 867:98, 867:1201, 867:89 |
| 867:1227 | CHQ | lo | 25659/250000 | 23501937/228983000 | 643 | 867:80, 867:1124, 867:1148, 867:138, 867:241 |
| 867:1228 | EFH | lo | 31211/200000 | 7567991250/48495530287 | 705 | 867:1196, 867:192, 867:98, 867:1203, 867:105 |
| 867:1229 | EHS | lo | 5427/50000 | 9188293973/84652754200 | 709 | 867:88, 867:166, 867:1168, 867:1228, 867:87 |
| 867:1230 | BPR | lo | 79607/500000 | 11160831683/70099375000 | 721 | 867:1197, 867:1120, 867:100, 867:1205, 867:1135 |
| 867:1231 | HPR | lo | 36157/250000 | 40065557607/277024000000 | 790 | 867:108, 867:1207, 867:1199, 867:915, 867:111 |
| 867:1232 | CFP | lo | 1812/15625 | 82780932707/713821888000 | 798 | 867:1200, 867:144, 867:1202, 867:1226, 867:125 |
| 867:1233 | FPR | lo | 177617/1000000 | 5678216899/31968750000 | 2084 | 867:1206, 867:754 |
| 867:1236 | FHQ | lo | 947/6250 | 893973363/5900000000 | 2121 | 867:3, 867:92, 867:36, 867:911, 867:42, 867:98, 867:1228 |
| 867:1238 | FQS | lo | 20199/125000 | 19067883/118000000 | 2125 | 867:3, 867:92, 867:36, 867:911, 867:1190, 867:1216, 867:166 |
| 867:1240 | FPQ | lo | 31273/250000 | 2513946553/20096725000 | 2287 | 867:1183, 867:144, 867:52, 867:1221, 867:1187, 867:138, 867:1236 |
| 867:1247 | EFP | hi | 560791/1000000 | 1654355356683/2950040000000 | 2528 | 867:1162, 867:1136, 867:64, 867:44, 867:31, 867:166 |
| 867:1248 | FPS | lo | 149989/1000000 | 1497136504/9981609375 | 2579 | 867:55, 867:915, 867:60, 867:52, 867:1190, 867:1176, 867:1238 |
| 867:1249 | EFP | lo | 209301/1000000 | 5516212347/26355400000 | 2735 | 867:1195, 867:144, 867:108, 867:760, 867:1196, 867:1200, 867:1228 |
| 867:1250 | EPS | lo | 119463/1000000 | 196782201/1647212500 | 2740 | 867:1195, 867:144, 867:108, 867:760, 867:1168, 867:1165, 867:1229 |
| 867:1255 | CPQ | lo | 94507/1000000 | 14046069/148624000 | 2930 | 867:99, 867:188, 867:108, 867:100, 867:80, 867:138, 867:1227 |
| 867:1257 | BHQ | lo | 353909/1000000 | 12876428013/36383368000 | 3077 | 867:123, 867:1213, 867:138, 867:128, 867:837, 867:88, 867:98 |
| 867:1258 | BPQ | lo | 17713/125000 | 2062281201/14553347200 | 3078 | 867:123, 867:1213, 867:138, 867:128, 867:760, 867:1197, 867:100 |
| 867:1260 | ABS | lo | 11367/40000 | 10551861241/37131500000 | 3179 | 867:165, 867:1223, 867:186, 867:166, 867:945, 867:4, 867:1214 |
| 867:1261 | ACS | lo | 294821/1000000 | 1094716773/3713150000 | 3180 | 867:165, 867:1223, 867:186, 867:166, 867:1180, 867:1181, 867:26 |
| 867:1262 | AQS | lo | 181041/1000000 | 11764128/64980125 | 3185 | 867:165, 867:1223, 867:186, 867:166, 867:36, 867:1187, 867:1194 |
| 867:1269 | HQS | lo | 210807/1000000 | 15655202321/74263000000 | 3209 | 867:165, 867:1223, 867:186, 867:166, 867:1218, 867:1236, 867:1207 |
| 867:1270 | PQS | lo | 152343/1000000 | 79194584761/519841000000 | 3212 | 867:165, 867:1223, 867:186, 867:166, 867:1137, 867:1240, 867:1208 |
| 867:1271 | AFS | hi | 147501/250000 | 42309107372301/71709875000000 | 3299 | 867:203, 867:226, 867:1223, 867:1238, 867:47, 867:49 |
| 867:1274 | CES | lo | 134081/1000000 | 38459871/286839500 | 3310 | 867:203, 867:226, 867:1223, 867:1238, 867:1200, 867:128, 867:130 |
| 867:1277 | BES | lo | 17589/100000 | 13733786073/78081400000 | 3345 | 867:215, 867:226, 867:1224, 867:1269, 867:88, 867:92, 867:1210 |
| 867:1284 | FHS | lo | 103413/1000000 | 3377853/32663500 | 3398 | 867:754, 867:226, 867:224, 867:1270, 867:188, 867:1236, 867:192 |
| 867:1288 | ACE | lo | 282421/1000000 | 282421/1000000 | 3441 | 867:36, 867:1211, 867:128 |
| 867:1289 | ACF | lo | 37903/125000 | 37903/125000 | 3445 | 867:44, 867:1221, 867:1232 |
| 867:1291 | ACH | hi | 803863/1000000 | 803863/1000000 | 3450 | 867:55, 867:25, 867:1227 |
| 867:1292 | AEF | lo | 396093/1000000 | 396093/1000000 | 3457 | 867:44, 867:1222, 867:1249 |
| 867:1294 | AER | lo | 337437/1000000 | 337437/1000000 | 3470 | 867:70, 867:1217, 867:186 |
| 867:1295 | AFQ | lo | 77773/250000 | 77773/250000 | 3475 | 867:44, 867:60, 867:1240 |
| 867:1296 | AFR | lo | 363617/1000000 | 363617/1000000 | 3476 | 867:44, 867:62, 867:1233 |
| 867:1298 | AFS | lo | 335989/1000000 | 335989/1000000 | 3477 | 867:44, 867:64, 867:1248 |
| 867:1300 | AHR | lo | 82657/250000 | 82657/250000 | 3482 | 867:52, 867:62, 867:1231 |
| 867:1302 | AQR | lo | 367041/1000000 | 367041/1000000 | 3490 | 867:70, 867:1262, 867:226 |
| 867:1303 | BCH | hi | 12354/15625 | 395327829/500000000 | 3503 | 867:111, 867:81, 867:1227 |
| 867:1304 | BEF | lo | 418431/1000000 | 418431/1000000 | 3511 | 867:1212, 867:92, 867:1213 |
| 867:1305 | BEP | lo | 13713/40000 | 13713/40000 | 3518 | 867:1258, 867:92, 867:1137 |
| 867:1307 | BHR | lo | 198421/500000 | 198421/500000 | 3529 | 867:108, 867:1230, 867:1231 |
| 867:1308 | CEF | lo | 10827/31250 | 10827/31250 | 3533 | 867:138, 867:128, 867:1213 |
| 867:1309 | CEH | lo | 405237/1000000 | 405237/1000000 | 3537 | 867:1227, 867:128, 867:1218 |
| 867:1310 | CEP | lo | 73907/250000 | 73907/250000 | 3540 | 867:1255, 867:128, 867:1137 |
| 867:1311 | EFR | lo | 294567/1000000 | 294567/1000000 | 3562 | 867:186, 867:166, 867:1223 |
| 867:1313 | EPR | lo | 305463/1000000 | 305463/1000000 | 3571 | 867:186, 867:1250, 867:224 |
| 867:1314 | FQR | lo | 363159/1000000 | 363159/1000000 | 3582 | 867:1223, 867:1238, 867:226 |
| 867:1315 | HQR | lo | 207603/500000 | 207603/500000 | 3586 | 867:1224, 867:1269, 867:226 |
| 867:1316 | PQR | lo | 338343/1000000 | 338343/1000000 | 3587 | 867:224, 867:1270, 867:226 |
| 867:1318 | BER | lo | 67697/500000 | 12781269/94400000 | 56 | 867:945, 867:130, 867:1294, 867:72, 867:17 |
| 867:1319 | ACQ | lo | 48211/500000 | 2207913/22898300 | 77 | 867:911, 867:138, 867:1295, 867:80, 867:241 |
| 867:1320 | BFQ | lo | 164969/1000000 | 2207913/13383800 | 77 | 867:911, 867:138, 867:1295, 867:80, 867:25 |
| 867:1321 | EFQ | lo | 20061/125000 | 18937683/118000000 | 138 | 867:1292, 867:92, 867:36, 867:1304, 867:3 |
| 867:1322 | ABR | lo | 263347/1000000 | 9221332049/35015815625 | 141 | 867:945, 867:1296, 867:4, 867:1294, 867:31 |
| 867:1324 | BFS | lo | 99083/500000 | 55511737753/280126525000 | 149 | 867:4, 867:166, 867:1298, 867:1304, 867:31 |
| 867:1325 | AES | lo | 151447/1000000 | 8552538021/56472100000 | 150 | 867:1260, 867:166, 867:1298, 867:1277, 867:668 |
| 867:1326 | EHQ | lo | 104801/500000 | 59946219/286000000 | 160 | 867:36, 867:1257, 867:960, 867:92, 867:11 |
| 867:1329 | ACP | lo | 94267/1000000 | 3707879/39333600 | 357 | 867:1289, 867:64, 867:1261, 867:44, 867:1271 |
| 867:1330 | AEP | lo | 93803/1000000 | 22739430/242414653 | 421 | 867:1292, 867:62, 867:1294, 867:44, 867:49 |
| 867:1331 | FRS | lo | 108577/1000000 | 2816257/25937750 | 544 | 867:1296, 867:226, 867:70, 867:1314, 867:879 |
| 867:1332 | HRS | lo | 1741/15625 | 11560427/103751000 | 564 | 867:1300, 867:226, 867:70, 867:1315, 867:879 |
| 867:1334 | CFH | lo | 171053/1000000 | 252467573/1475959150 | 575 | 867:837, 867:1228, 867:98, 867:1309, 867:89 |
| 867:1335 | CHQ | lo | 51319/500000 | 47004897/457966000 | 643 | 867:80, 867:1236, 867:1257, 867:138, 867:241 |
| 867:1336 | EFH | lo | 39017/250000 | 7568642250/48495530287 | 705 | 867:1304, 867:192, 867:98, 867:1311, 867:105 |
| 867:1337 | EHS | lo | 1696/15625 | 2297146263/21163188550 | 709 | 867:88, 867:166, 867:1277, 867:1336, 867:87 |
| 867:1338 | BPR | lo | 79619/500000 | 3571984281/22431640000 | 721 | 867:1305, 867:1233, 867:100, 867:1313, 867:1247 |
| 867:1339 | EHP | lo | 519/3125 | 920163669/5540480000 | 736 | 867:88, 867:915, 867:108, 867:1326, 867:111 |
| 867:1340 | HPR | lo | 36167/250000 | 20038299377/138512000000 | 790 | 867:108, 867:1315, 867:1307, 867:915, 867:111 |
| 867:1341 | CFP | lo | 5799/50000 | 20697302071/178455472000 | 798 | 867:1308, 867:144, 867:1310, 867:1334, 867:125 |
| 867:1342 | FPR | lo | 177633/1000000 | 1892905761/10656250000 | 2084 | 867:1314, 867:754 |
| 867:1345 | FHQ | lo | 6061/40000 | 1117499961/7375000000 | 2121 | 867:3, 867:92, 867:36, 867:911, 867:42, 867:98, 867:1336 |
| 867:1347 | FQS | lo | 80799/500000 | 15254883/94400000 | 2125 | 867:3, 867:92, 867:36, 867:911, 867:1298, 867:1324, 867:166 |
| 867:1349 | FPQ | lo | 62547/500000 | 4022351647/32154520000 | 2287 | 867:1291, 867:144, 867:52, 867:1329, 867:1295, 867:138, 867:1345 |
| 867:1356 | EFP | hi | 560789/1000000 | 122543596229/218520000000 | 2528 | 867:1271, 867:1248, 867:64, 867:44, 867:31, 867:166 |
| 867:1357 | FPS | lo | 18749/125000 | 95818468123/638823000000 | 2579 | 867:55, 867:915, 867:60, 867:52, 867:1298, 867:1284, 867:1347 |
| 867:1358 | EFP | lo | 209323/1000000 | 6895945317/32944000000 | 2735 | 867:1303, 867:144, 867:108, 867:760, 867:1304, 867:1308, 867:1336 |
| 867:1359 | EPS | lo | 119469/1000000 | 3935795161/32944000000 | 2740 | 867:1303, 867:144, 867:108, 867:760, 867:1277, 867:1274, 867:1337 |
| 867:1366 | BHQ | lo | 353911/1000000 | 12876475869/36383368000 | 3077 | 867:123, 867:1321, 867:138, 867:128, 867:837, 867:88, 867:98 |
| 867:1367 | BPQ | lo | 70853/500000 | 10311548217/72766736000 | 3078 | 867:123, 867:1321, 867:138, 867:128, 867:760, 867:1305, 867:100 |
| 867:1369 | HPQ | lo | 4187/40000 | 136015383/1299406000 | 3096 | 867:123, 867:1321, 867:138, 867:128, 867:144, 867:1339, 867:188 |
| 867:1370 | ABS | lo | 284189/1000000 | 18466660833/64980125000 | 3179 | 867:165, 867:1331, 867:186, 867:166, 867:945, 867:4, 867:1322 |
| 867:1371 | ACS | lo | 29483/100000 | 21894967723/74263000000 | 3180 | 867:165, 867:1331, 867:186, 867:166, 867:1288, 867:1289, 867:26 |
| 867:1372 | AQS | lo | 181043/1000000 | 47056791/259920500 | 3185 | 867:165, 867:1331, 867:186, 867:166, 867:36, 867:1295, 867:1302 |
| 867:1379 | HQS | lo | 52707/250000 | 54798533477/259920500000 | 3209 | 867:165, 867:1331, 867:186, 867:166, 867:1326, 867:1345, 867:1315 |
| 867:1380 | PQS | lo | 19043/125000 | 79194863761/519841000000 | 3212 | 867:165, 867:1331, 867:186, 867:166, 867:1137, 867:1349, 867:1316 |
| 867:1381 | AFS | hi | 590003/1000000 | 169235918374409/286839500000000 | 3299 | 867:203, 867:226, 867:1331, 867:1347, 867:47, 867:49 |
| 867:1384 | CES | lo | 134089/1000000 | 76924299/573679000 | 3310 | 867:203, 867:226, 867:1331, 867:1347, 867:1308, 867:128, 867:130 |
| 867:1387 | BES | lo | 43973/250000 | 17167449279/97601750000 | 3345 | 867:215, 867:226, 867:1332, 867:1379, 867:88, 867:92, 867:1318 |
| 867:1392 | FHS | lo | 51707/500000 | 54046113/522616000 | 3398 | 867:754, 867:226, 867:224, 867:1380, 867:188, 867:1345, 867:192 |
| 867:1397 | ACE | lo | 141211/500000 | 141211/500000 | 3441 | 867:36, 867:1319, 867:128 |
| 867:1398 | ACF | lo | 303247/1000000 | 303247/1000000 | 3445 | 867:44, 867:1329, 867:1341 |
| 867:1400 | ACH | hi | 803861/1000000 | 803861/1000000 | 3450 | 867:55, 867:25, 867:1335 |
| 867:1401 | AEF | lo | 198063/500000 | 198063/500000 | 3457 | 867:44, 867:1330, 867:1358 |
| 867:1403 | AER | lo | 337447/1000000 | 337447/1000000 | 3470 | 867:70, 867:1325, 867:186 |
| 867:1404 | AFQ | lo | 155547/500000 | 155547/500000 | 3475 | 867:44, 867:60, 867:1349 |
| 867:1405 | AFR | lo | 363633/1000000 | 363633/1000000 | 3476 | 867:44, 867:62, 867:1342 |
| 867:1407 | AFS | lo | 41999/125000 | 41999/125000 | 3477 | 867:44, 867:64, 867:1357 |
| 867:1410 | AHQ | lo | 11627/40000 | 11627/40000 | 3481 | 867:52, 867:60, 867:1369 |
| 867:1411 | AHR | lo | 82667/250000 | 82667/250000 | 3482 | 867:52, 867:62, 867:1340 |
| 867:1413 | AQR | lo | 367043/1000000 | 367043/1000000 | 3490 | 867:70, 867:1372, 867:226 |
| 867:1414 | BCH | hi | 395327/500000 | 395326829/500000000 | 3503 | 867:111, 867:81, 867:1335 |
| 867:1415 | BEF | lo | 418457/1000000 | 418457/1000000 | 3511 | 867:1320, 867:92, 867:1321 |
| 867:1416 | BEP | lo | 342827/1000000 | 342827/1000000 | 3518 | 867:1367, 867:92, 867:1137 |
| 867:1418 | BHR | lo | 198453/500000 | 198453/500000 | 3529 | 867:108, 867:1338, 867:1340 |
| 867:1419 | CEF | lo | 43311/125000 | 43311/125000 | 3533 | 867:138, 867:128, 867:1321 |
| 867:1420 | CEH | lo | 10131/25000 | 10131/25000 | 3537 | 867:1335, 867:128, 867:1326 |
| 867:1421 | EFR | lo | 294577/1000000 | 294577/1000000 | 3562 | 867:186, 867:166, 867:1331 |
| 867:1423 | EPR | lo | 305469/1000000 | 305469/1000000 | 3571 | 867:186, 867:1359, 867:224 |
| 867:1424 | FQR | lo | 14527/40000 | 14527/40000 | 3582 | 867:1331, 867:1347, 867:226 |
| 867:1425 | HQR | lo | 103813/250000 | 103813/250000 | 3586 | 867:1332, 867:1379, 867:226 |
| 867:1426 | PQR | lo | 42293/125000 | 42293/125000 | 3587 | 867:224, 867:1380, 867:226 |
| 867:1428 | BER | lo | 33849/250000 | 2556291/18880000 | 56 | 867:945, 867:130, 867:1403, 867:72, 867:17 |
| 867:1429 | EFQ | lo | 321/2000 | 75756219/472000000 | 138 | 867:1401, 867:92, 867:36, 867:1415, 867:3 |
| 867:1430 | ABR | lo | 263357/1000000 | 9221681451/35015815625 | 141 | 867:945, 867:1405, 867:4, 867:1403, 867:31 |
| 867:1432 | BFS | lo | 99089/500000 | 20818150543/105047446875 | 149 | 867:4, 867:166, 867:1407, 867:1415, 867:31 |
| 867:1433 | AES | lo | 151451/1000000 | 10690985233/70590125000 | 150 | 867:1370, 867:166, 867:1407, 867:1387, 867:668 |
| 867:1434 | EHQ | lo | 209603/1000000 | 29973249/143000000 | 160 | 867:36, 867:1366, 867:1410, 867:92, 867:11 |
| 867:1437 | ACP | lo | 1473/15625 | 55621161/590003000 | 357 | 867:1398, 867:64, 867:1371, 867:44, 867:1381 |
| 867:1438 | AEP | lo | 93809/1000000 | 22740763/242414653 | 421 | 867:1401, 867:62, 867:1403, 867:44, 867:49 |
| 867:1439 | FRS | lo | 54291/500000 | 2816381/25937750 | 544 | 867:1405, 867:226, 867:70, 867:1424, 867:879 |
| 867:1440 | HRS | lo | 111437/1000000 | 289044/2593775 | 564 | 867:1411, 867:226, 867:70, 867:1425, 867:879 |
| 867:1442 | CFH | lo | 85529/500000 | 5049503921/29519183000 | 575 | 867:837, 867:1336, 867:98, 867:1420, 867:89 |
| 867:1443 | CHQ | lo | 102639/1000000 | 11751387/114491500 | 643 | 867:80, 867:1345, 867:1366, 867:138, 867:241 |
| 867:1444 | EFH | lo | 6243/40000 | 7568967750/48495530287 | 705 | 867:1415, 867:192, 867:98, 867:1421, 867:105 |
| 867:1445 | EHS | lo | 54273/500000 | 918873939/8465275420 | 709 | 867:88, 867:166, 867:1387, 867:1444, 867:87 |
| 867:1446 | BPR | lo | 637/4000 | 89306005491/560789000000 | 721 | 867:1416, 867:1342, 867:100, 867:1423, 867:1356 |
| 867:1447 | EHP | lo | 166081/1000000 | 368068611/2216192000 | 736 | 867:88, 867:1369, 867:108, 867:1434, 867:111 |
| 867:1448 | HPR | lo | 9043/62500 | 1603291431/11080960000 | 790 | 867:108, 867:1425, 867:1418, 867:1369, 867:111 |
| 867:1449 | CFP | lo | 23197/200000 | 10349114803/89227736000 | 798 | 867:1419, 867:144, 867:1310, 867:1442, 867:125 |
| 867:1450 | FPR | lo | 177641/1000000 | 227158699/1278750000 | 2084 | 867:1424, 867:754 |
| 867:1453 | FHQ | lo | 151527/1000000 | 178802859/1180000000 | 2121 | 867:3, 867:92, 867:36, 867:911, 867:42, 867:98, 867:1444 |
| 867:1455 | FQS | lo | 161601/1000000 | 7627581/47200000 | 2125 | 867:3, 867:92, 867:36, 867:911, 867:1407, 867:1432, 867:166 |
| 867:1457 | FPQ | lo | 25019/200000 | 12569909043/100482625000 | 2287 | 867:1400, 867:144, 867:52, 867:1437, 867:1404, 867:138, 867:1453 |
| 867:1464 | FPS | lo | 74997/500000 | 3992488953/26617625000 | 2579 | 867:55, 867:1369, 867:60, 867:52, 867:1407, 867:1392, 867:1455 |
| 867:1465 | EFP | lo | 104667/500000 | 3310225161/15813080000 | 2735 | 867:1414, 867:144, 867:108, 867:760, 867:1415, 867:1419, 867:1444 |
| 867:1466 | EPS | lo | 119471/1000000 | 23615251521/197663500000 | 2740 | 867:1414, 867:144, 867:108, 867:760, 867:1387, 867:1384, 867:1445 |
| 867:1476 | BPQ | lo | 141707/1000000 | 10311619323/72766736000 | 3078 | 867:123, 867:1429, 867:138, 867:128, 867:760, 867:1416, 867:100 |
| 867:1478 | ABS | lo | 71049/250000 | 147736901159/519841000000 | 3179 | 867:165, 867:1439, 867:186, 867:166, 867:945, 867:4, 867:1430 |
| 867:1479 | ACS | lo | 147417/500000 | 1563951499/5304500000 | 3180 | 867:165, 867:1439, 867:186, 867:166, 867:1397, 867:1398, 867:26 |
| 867:1486 | HQS | lo | 105419/500000 | 109602380439/519841000000 | 3209 | 867:165, 867:1439, 867:186, 867:166, 867:1434, 867:1453, 867:1425 |
| 867:1487 | AFS | hi | 295001/500000 | 338471325634023/573679000000000 | 3299 | 867:203, 867:226, 867:1439, 867:1455, 867:47, 867:49 |
| 867:1490 | CES | lo | 134093/1000000 | 76926531/573679000 | 3310 | 867:203, 867:226, 867:1439, 867:1455, 867:1419, 867:128, 867:130 |
| 867:1493 | BES | lo | 175893/1000000 | 17167554981/97601750000 | 3345 | 867:215, 867:226, 867:1440, 867:1486, 867:88, 867:92, 867:1428 |
| 867:1499 | ACF | lo | 303257/1000000 | 303257/1000000 | 3445 | 867:44, 867:1437, 867:1449 |
| 867:1502 | AEF | lo | 396143/1000000 | 396143/1000000 | 3457 | 867:44, 867:1438, 867:1465 |
| 867:1504 | AER | lo | 337451/1000000 | 337451/1000000 | 3470 | 867:70, 867:1433, 867:186 |
| 867:1505 | AFQ | lo | 62219/200000 | 62219/200000 | 3475 | 867:44, 867:60, 867:1457 |
| 867:1506 | AFR | lo | 363641/1000000 | 363641/1000000 | 3476 | 867:44, 867:62, 867:1450 |
| 867:1508 | AFS | lo | 167997/500000 | 167997/500000 | 3477 | 867:44, 867:64, 867:1464 |
| 867:1510 | AHR | lo | 5167/15625 | 5167/15625 | 3482 | 867:52, 867:62, 867:1448 |
| 867:1512 | BCH | hi | 790653/1000000 | 395326329/500000000 | 3503 | 867:111, 867:81, 867:1443 |
| 867:1513 | BEF | lo | 418469/1000000 | 418469/1000000 | 3511 | 867:1320, 867:92, 867:1429 |
| 867:1514 | BEP | lo | 85707/250000 | 85707/250000 | 3518 | 867:1476, 867:92, 867:1137 |
| 867:1516 | BHR | lo | 198469/500000 | 198469/500000 | 3529 | 867:108, 867:1446, 867:1448 |
| 867:1517 | CEF | lo | 693/2000 | 693/2000 | 3533 | 867:138, 867:128, 867:1429 |
| 867:1518 | CEH | lo | 202621/500000 | 202621/500000 | 3537 | 867:1443, 867:128, 867:1434 |
| 867:1519 | EFR | lo | 147291/500000 | 147291/500000 | 3562 | 867:186, 867:166, 867:1439 |
| 867:1521 | EPR | lo | 305471/1000000 | 305471/1000000 | 3571 | 867:186, 867:1466, 867:224 |
| 867:1522 | FQR | lo | 363183/1000000 | 363183/1000000 | 3582 | 867:1439, 867:1455, 867:226 |
| 867:1523 | HQR | lo | 16611/40000 | 16611/40000 | 3586 | 867:1440, 867:1486, 867:226 |
| 867:1525 | BER | lo | 135397/1000000 | 63907647/472000000 | 56 | 867:945, 867:130, 867:1504, 867:72, 867:17 |
| 867:1526 | ACQ | lo | 96423/1000000 | 44158539/457966000 | 77 | 867:911, 867:138, 867:1505, 867:80, 867:241 |
| 867:1527 | BFQ | lo | 16497/100000 | 44158539/267676000 | 77 | 867:911, 867:138, 867:1505, 867:80, 867:25 |
| 867:1528 | EFQ | lo | 80253/500000 | 18939729/118000000 | 138 | 867:1502, 867:92, 867:36, 867:1513, 867:3 |
| 867:1529 | ABR | lo | 131681/500000 | 1317406361/5002259375 | 141 | 867:945, 867:1506, 867:4, 867:1504, 867:31 |
| 867:1531 | BFS | lo | 24773/125000 | 3965477933/20009037500 | 149 | 867:4, 867:166, 867:1508, 867:1513, 867:31 |
| 867:1532 | AES | lo | 151453/1000000 | 42764610321/282360500000 | 150 | 867:1478, 867:166, 867:1508, 867:1493, 867:668 |
| 867:1535 | ACP | lo | 3771/40000 | 55622463/590002000 | 357 | 867:1499, 867:64, 867:1479, 867:44, 867:1487 |
| 867:1536 | AEP | lo | 23453/250000 | 22741414/242414653 | 421 | 867:1502, 867:62, 867:1504, 867:44, 867:49 |
| 867:1537 | FRS | lo | 13573/125000 | 2816443/25937750 | 544 | 867:1506, 867:226, 867:70, 867:1522, 867:879 |
| 867:1538 | HRS | lo | 27861/250000 | 23124853/207502000 | 564 | 867:1510, 867:226, 867:70, 867:1523, 867:879 |
| 867:1540 | CFH | lo | 171061/1000000 | 807934299/4723069280 | 575 | 867:837, 867:1444, 867:98, 867:1518, 867:89 |
| 867:1541 | CHQ | lo | 1283/12500 | 23502867/228983000 | 643 | 867:80, 867:1453, 867:1366, 867:138, 867:241 |
| 867:1542 | EFH | lo | 78039/500000 | 15138249375/96991060574 | 705 | 867:1513, 867:192, 867:98, 867:1519, 867:105 |
| 867:1543 | EHS | lo | 108547/1000000 | 45944038827/423263771000 | 709 | 867:88, 867:166, 867:1493, 867:1542, 867:87 |
| 867:1544 | BPR | lo | 19907/125000 | 22327277937/140197250000 | 721 | 867:1514, 867:1450, 867:100, 867:1521, 867:1356 |
| 867:1545 | HPR | lo | 72349/500000 | 1603401203/11080960000 | 790 | 867:108, 867:1523, 867:1516, 867:1369, 867:111 |
| 867:1546 | CFP | lo | 28997/250000 | 20698730327/178455472000 | 798 | 867:1517, 867:144, 867:1310, 867:1540, 867:125 |
| 867:1547 | FPR | lo | 35529/200000 | 1893030857/10656250000 | 2084 | 867:1522, 867:754 |
| 867:1551 | FHQ | lo | 18941/125000 | 2235051087/14750000000 | 2121 | 867:3, 867:92, 867:36, 867:911, 867:42, 867:98, 867:1542 |
| 867:1552 | FQS | lo | 80801/500000 | 38138277/236000000 | 2125 | 867:3, 867:92, 867:36, 867:911, 867:1508, 867:1531, 867:166 |
| 867:1560 | EFP | hi | 140197/250000 | 6617320581183/11800040000000 | 2528 | 867:1487, 867:1464, 867:64, 867:44, 867:31, 867:166 |
| 867:1561 | EFP | lo | 209339/1000000 | 27585857989/131775500000 | 2735 | 867:1512, 867:144, 867:108, 867:760, 867:1513, 867:1517, 867:1542 |
| 867:1562 | EPS | lo | 119473/1000000 | 31487322397/263551000000 | 2740 | 867:1512, 867:144, 867:108, 867:760, 867:1493, 867:1490, 867:1543 |
| 867:1566 | CPQ | lo | 23627/250000 | 7023081/74312000 | 2930 | 867:99, 867:188, 867:108, 867:100, 867:80, 867:138, 867:1541 |
| 867:1568 | BHQ | lo | 44239/125000 | 12876511761/36383368000 | 3077 | 867:123, 867:1528, 867:138, 867:128, 867:837, 867:88, 867:98 |
| 867:1569 | BPQ | lo | 35427/250000 | 2577913719/18191684000 | 3078 | 867:123, 867:1528, 867:138, 867:128, 867:760, 867:1514, 867:100 |
| 867:1570 | ABS | lo | 284199/1000000 | 10552761799/37131500000 | 3179 | 867:165, 867:1537, 867:186, 867:166, 867:945, 867:4, 867:1529 |
| 867:1571 | ACS | lo | 73709/250000 | 76634088451/259920500000 | 3180 | 867:165, 867:1537, 867:186, 867:166, 867:1397, 867:1499, 867:26 |
| 867:1578 | HQS | lo | 210843/1000000 | 13700619231/64980125000 | 3209 | 867:165, 867:1537, 867:186, 867:166, 867:1434, 867:1551, 867:1523 |
| 867:1579 | AFS | hi | 590001/1000000 | 67694224237621/114735800000000 | 3299 | 867:203, 867:226, 867:1537, 867:1552, 867:47, 867:49 |
| 867:1585 | BES | lo | 87947/500000 | 137340862671/780814000000 | 3345 | 867:215, 867:226, 867:1538, 867:1578, 867:88, 867:92, 867:1525 |
| 867:1590 | FHS | lo | 20683/200000 | 6755799/65327000 | 3398 | 867:754, 867:226, 867:224, 867:1380, 867:188, 867:1551, 867:192 |
| 867:1591 | ACE | lo | 282423/1000000 | 282423/1000000 | 3441 | 867:36, 867:1526, 867:128 |
| 867:1592 | ACF | lo | 303263/1000000 | 303263/1000000 | 3445 | 867:44, 867:1535, 867:1546 |
| 867:1594 | ACH | hi | 803859/1000000 | 803859/1000000 | 3450 | 867:55, 867:25, 867:1541 |
| 867:1595 | AEF | lo | 396151/1000000 | 396151/1000000 | 3457 | 867:44, 867:1536, 867:1561 |
| 867:1597 | AER | lo | 337453/1000000 | 337453/1000000 | 3470 | 867:70, 867:1532, 867:186 |
| 867:1598 | AFR | lo | 72729/200000 | 72729/200000 | 3476 | 867:44, 867:62, 867:1547 |
| 867:1601 | AHR | lo | 165349/500000 | 165349/500000 | 3482 | 867:52, 867:62, 867:1545 |
| 867:1603 | BCH | hi | 197663/250000 | 395325829/500000000 | 3503 | 867:111, 867:81, 867:1541 |
| 867:1604 | BEF | lo | 104619/250000 | 104619/250000 | 3511 | 867:1527, 867:92, 867:1528 |
| 867:1605 | BEP | lo | 342829/1000000 | 342829/1000000 | 3518 | 867:1569, 867:92, 867:1137 |
| 867:1607 | BHR | lo | 198477/500000 | 198477/500000 | 3529 | 867:108, 867:1544, 867:1545 |
| 867:1608 | CEF | lo | 173253/500000 | 173253/500000 | 3533 | 867:138, 867:128, 867:1528 |
| 867:1609 | CEH | lo | 405243/1000000 | 405243/1000000 | 3537 | 867:1541, 867:128, 867:1434 |
| 867:1610 | CEP | lo | 295629/1000000 | 295629/1000000 | 3540 | 867:1566, 867:128, 867:1137 |
| 867:1611 | EFR | lo | 36823/125000 | 36823/125000 | 3562 | 867:186, 867:166, 867:1537 |
| 867:1613 | EPR | lo | 305473/1000000 | 305473/1000000 | 3571 | 867:186, 867:1562, 867:224 |
| 867:1614 | FQR | lo | 181593/500000 | 181593/500000 | 3582 | 867:1537, 867:1552, 867:226 |
| 867:1615 | HQR | lo | 415287/1000000 | 415287/1000000 | 3586 | 867:1538, 867:1578, 867:226 |
| 867:1617 | EFQ | lo | 160509/1000000 | 75760311/472000000 | 138 | 867:1595, 867:92, 867:36, 867:1604, 867:3 |
| 867:1620 | BFS | lo | 198187/1000000 | 991383483/5002259375 | 149 | 867:4, 867:166, 867:1508, 867:1604, 867:31 |
| 867:1621 | AES | lo | 30291/200000 | 21382458909/141180250000 | 150 | 867:1570, 867:166, 867:1508, 867:1585, 867:668 |
| 867:1623 | ACP | lo | 23569/250000 | 18541069/196667000 | 357 | 867:1592, 867:64, 867:1571, 867:44, 867:1579 |
| 867:1624 | AEP | lo | 93813/1000000 | 22741724/242414653 | 421 | 867:1595, 867:62, 867:1597, 867:44, 867:49 |
| 867:1625 | FRS | lo | 21717/200000 | 22531761/207502000 | 544 | 867:1598, 867:226, 867:70, 867:1614, 867:879 |
| 867:1626 | HRS | lo | 111447/1000000 | 4625107/41500400 | 564 | 867:1601, 867:226, 867:70, 867:1615, 867:879 |
| 867:1628 | CFH | lo | 85531/500000 | 20198508939/118076732000 | 575 | 867:837, 867:1542, 867:98, 867:1609, 867:89 |
| 867:1629 | EFH | lo | 1951/12500 | 7569200250/48495530287 | 705 | 867:1604, 867:192, 867:98, 867:1611, 867:105 |
| 867:1630 | BPR | lo | 159259/1000000 | 17862169341/112157600000 | 721 | 867:1605, 867:1547, 867:100, 867:1613, 867:1560 |
| 867:1631 | HPR | lo | 144703/1000000 | 1603457019/11080960000 | 790 | 867:108, 867:1615, 867:1607, 867:1369, 867:111 |
| 867:1632 | CFP | lo | 115989/1000000 | 41397972999/356910944000 | 798 | 867:1608, 867:144, 867:1610, 867:1628, 867:125 |
| 867:1633 | FPR | lo | 88823/500000 | 946523247/5328125000 | 2084 | 867:1614, 867:754 |
| 867:1635 | FHQ | lo | 151529/1000000 | 55876533/368750000 | 2121 | 867:3, 867:92, 867:36, 867:911, 867:42, 867:98, 867:1629 |
| 867:1636 | FQS | lo | 161603/1000000 | 76276833/472000000 | 2125 | 867:3, 867:92, 867:36, 867:911, 867:1508, 867:1620, 867:166 |
| 867:1638 | FPQ | lo | 15637/125000 | 25139900501/200964750000 | 2287 | 867:1594, 867:144, 867:52, 867:1623, 867:1505, 867:138, 867:1635 |
| 867:1643 | FPS | lo | 29999/200000 | 9582057137/63882300000 | 2579 | 867:55, 867:1369, 867:60, 867:52, 867:1508, 867:1590, 867:1636 |
| 867:1644 | EFP | lo | 104671/500000 | 2068967627/9883150000 | 2735 | 867:1603, 867:144, 867:108, 867:760, 867:1604, 867:1608, 867:1629 |
| 867:1651 | ACS | lo | 147419/500000 | 21895581249/74263000000 | 3180 | 867:165, 867:1625, 867:186, 867:166, 867:1591, 867:1592, 867:26 |
| 867:1658 | HQS | lo | 105423/500000 | 109606446179/519841000000 | 3209 | 867:165, 867:1625, 867:186, 867:166, 867:1434, 867:1635, 867:1615 |
| 867:1666 | ACF | lo | 60653/200000 | 60653/200000 | 3445 | 867:44, 867:1623, 867:1632 |
| 867:1668 | AEF | lo | 79231/200000 | 79231/200000 | 3457 | 867:44, 867:1624, 867:1644 |
| 867:1670 | AER | lo | 67491/200000 | 67491/200000 | 3470 | 867:70, 867:1621, 867:186 |
| 867:1671 | AFQ | lo | 38887/125000 | 38887/125000 | 3475 | 867:44, 867:60, 867:1638 |
| 867:1672 | AFR | lo | 181823/500000 | 181823/500000 | 3476 | 867:44, 867:62, 867:1633 |
| 867:1674 | AFS | lo | 67199/200000 | 67199/200000 | 3477 | 867:44, 867:64, 867:1643 |
| 867:1675 | AHR | lo | 330703/1000000 | 330703/1000000 | 3482 | 867:52, 867:62, 867:1631 |
| 867:1677 | BEF | lo | 418479/1000000 | 418479/1000000 | 3511 | 867:1527, 867:92, 867:1617 |
| 867:1678 | BHR | lo | 198481/500000 | 198481/500000 | 3529 | 867:108, 867:1630, 867:1631 |
| 867:1679 | CEF | lo | 346509/1000000 | 346509/1000000 | 3533 | 867:138, 867:128, 867:1617 |
| 867:1680 | EFR | lo | 58917/200000 | 58917/200000 | 3562 | 867:186, 867:166, 867:1625 |
| 867:1682 | FQR | lo | 90797/250000 | 90797/250000 | 3582 | 867:1625, 867:1636, 867:226 |
| 867:1683 | HQR | lo | 415293/1000000 | 415293/1000000 | 3586 | 867:1626, 867:1658, 867:226 |
| 867:1684 | BER | lo | 67699/500000 | 63908019/472000000 | 56 | 867:945, 867:130, 867:1670, 867:72, 867:17 |
| 867:1685 | EFQ | lo | 16051/100000 | 37880481/236000000 | 138 | 867:1668, 867:92, 867:36, 867:1677, 867:3 |
| 867:1691 | ACP | lo | 94277/1000000 | 18541193/196667000 | 357 | 867:1666, 867:64, 867:1651, 867:44, 867:1579 |
| 867:1692 | AEP | lo | 46907/500000 | 22741910/242414653 | 421 | 867:1668, 867:62, 867:1670, 867:44, 867:49 |
| 867:1693 | FRS | lo | 54293/500000 | 11265927/103751000 | 544 | 867:1672, 867:226, 867:70, 867:1682, 867:879 |
| 867:1694 | HRS | lo | 13931/125000 | 5781469/51875500 | 564 | 867:1675, 867:226, 867:70, 867:1683, 867:879 |
| 867:1696 | CFH | lo | 171063/1000000 | 4039717333/23615346400 | 575 | 867:837, 867:1629, 867:98, 867:1609, 867:89 |
| 867:1697 | EFH | lo | 156081/1000000 | 7569235125/48495530287 | 705 | 867:1677, 867:192, 867:98, 867:1680, 867:105 |
| 867:1698 | BPR | lo | 7963/50000 | 44655594767/280394000000 | 721 | 867:1605, 867:1633, 867:100, 867:1613, 867:1560 |
| 867:1699 | HPR | lo | 72353/500000 | 145771357/1007360000 | 790 | 867:108, 867:1683, 867:1678, 867:1369, 867:111 |
| 867:1700 | CFP | lo | 11599/100000 | 82796520627/713821888000 | 798 | 867:1679, 867:144, 867:1610, 867:1696, 867:125 |
| 867:1706 | EFP | lo | 3271/15625 | 41379643203/197663000000 | 2735 | 867:1603, 867:144, 867:108, 867:760, 867:1677, 867:1679, 867:1697 |
| 867:1707 | AQS | lo | 45261/250000 | 4705707/25992050 | 3185 | 867:165, 867:1693, 867:186, 867:166, 867:36, 867:1671, 867:1413 |
| 867:1713 | HPS | lo | 23503/200000 | 30544722233/259920500000 | 3208 | 867:165, 867:1693, 867:186, 867:166, 867:1447, 867:188, 867:1699 |
| 867:1714 | HQS | lo | 210847/1000000 | 109607062253/519841000000 | 3209 | 867:165, 867:1693, 867:186, 867:166, 867:1434, 867:1635, 867:1683 |
| 867:1718 | ACF | lo | 303267/1000000 | 303267/1000000 | 3445 | 867:44, 867:1691, 867:1700 |
| 867:1720 | AEF | lo | 198079/500000 | 198079/500000 | 3457 | 867:44, 867:1692, 867:1706 |
| 867:1723 | AHR | lo | 165353/500000 | 165353/500000 | 3482 | 867:52, 867:62, 867:1699 |
| 867:1725 | AQR | lo | 91761/250000 | 91761/250000 | 3490 | 867:70, 867:1707, 867:226 |
| 867:1726 | BEF | lo | 5231/12500 | 5231/12500 | 3511 | 867:1527, 867:92, 867:1685 |
| 867:1727 | BHR | lo | 198483/500000 | 198483/500000 | 3529 | 867:108, 867:1698, 867:1699 |
| 867:1729 | EFR | lo | 147293/500000 | 147293/500000 | 3562 | 867:186, 867:166, 867:1693 |
| 867:1731 | FQR | lo | 363189/1000000 | 363189/1000000 | 3582 | 867:1693, 867:1636, 867:226 |
| 867:1732 | HQR | lo | 83059/200000 | 83059/200000 | 3586 | 867:1694, 867:1714, 867:226 |
| 867:1733 | EFQ | lo | 160511/1000000 | 37880667/236000000 | 138 | 867:1720, 867:92, 867:36, 867:1726, 867:3 |
| 867:1736 | BFS | lo | 198189/1000000 | 832770938/4201897875 | 149 | 867:4, 867:166, 867:1674, 867:1726, 867:31 |
| 867:1738 | HRS | lo | 111449/1000000 | 23126031/207502000 | 564 | 867:1723, 867:226, 867:70, 867:1732, 867:879 |
| 867:1739 | HPR | lo | 144707/1000000 | 1603497021/11080960000 | 790 | 867:108, 867:1732, 867:1727, 867:1369, 867:111 |
| 867:1740 | FPR | lo | 11103/62500 | 1893062131/10656250000 | 2084 | 867:1731, 867:754 |
| 867:1743 | FQS | lo | 40401/250000 | 9534639/59000000 | 2125 | 867:3, 867:92, 867:36, 867:911, 867:1674, 867:1736, 867:166 |
| 867:1753 | AFR | lo | 5682/15625 | 5682/15625 | 3476 | 867:44, 867:62, 867:1740 |
| 867:1754 | AHR | lo | 330707/1000000 | 330707/1000000 | 3482 | 867:52, 867:62, 867:1739 |
| 867:1755 | BEF | lo | 418481/1000000 | 418481/1000000 | 3511 | 867:1527, 867:92, 867:1733 |
| 867:1757 | CEF | lo | 346511/1000000 | 346511/1000000 | 3533 | 867:138, 867:128, 867:1733 |
| 867:1759 | FQR | lo | 36319/100000 | 36319/100000 | 3582 | 867:1693, 867:1743, 867:226 |
| 867:1760 | HQR | lo | 6489/15625 | 6489/15625 | 3586 | 867:1738, 867:1714, 867:226 |
| 867:1763 | BPR | lo | 159261/1000000 | 11163984399/70098500000 | 721 | 867:1605, 867:1740, 867:100, 867:1613, 867:1560 |
| 867:1765 | CES | lo | 134097/1000000 | 7692867/57367900 | 3310 | 867:203, 867:226, 867:1693, 867:1743, 867:1757, 867:128, 867:130 |
| 867:1766 | BHR | lo | 49621/125000 | 49621/125000 | 3529 | 867:108, 867:1763, 867:1739 |

## Stage 868

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS-/HEQ-/CFQ-/PQR+/PQS+/QRS+/AEQ-/BEQ+/BFP+ |
| Packet | forest:root/AFP-/APR-/ARS-/HEQ-/CFQ-/PQR+/PQS+/QRS+/AEQ-/BEQ+/BFP+ |
| Index | 1 |
| Context | 539 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 867 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 4537/40000 | 59/125 | 18171/100000 | 59/125 |
| b | 52449/500000 | 145431/250000 | 113651/1000000 | 578793/1000000 |
| c | 135501/250000 | 1/1 | 135501/250000 | 49413/50000 |
| e | 279/1000 | 59/125 | 279/1000 | 59/125 |
| f | 279/1000 | 9289/15625 | 279/1000 | 23083/40000 |
| h | 718731/1000000 | 1/1 | 45073/62500 | 1/1 |
| p | 114797/1000000 | 124653/250000 | 117169/1000000 | 485793/1000000 |
| q | 276019/1000000 | 19353/25000 | 67249/200000 | 386027/500000 |
| u | 21413/40000 | 830823/1000000 | 21413/40000 | 830823/1000000 |
| v | 84991/500000 | 379/1000 | 43021/250000 | 379/1000 |
| r | 351607/500000 | 1/1 | 717679/1000000 | 1/1 |
| w | 85563/125000 | 1/1 | 687579/1000000 | 1/1 |
| j | 138879/250000 | 871013/1000000 | 558591/1000000 | 871013/1000000 |
| k | 268487/500000 | 852471/1000000 | 268487/500000 | 212349/250000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 7 | A_ABH | bitt ["actual-area","ABH",[]] | `1/1 * b * h + -1/1 * a * b + -93/1000` |
| 43 | A_APR | bitt ["actual-area","APR",[]] | `-1/1 * p * w + 1/1 * a * p + 1/1 * q * r + -1/1 * a * r + -93/1000` |
| 44 | A_APS | bitt ["actual-area","APS",[]] | `-1/1 * p * k + 1/1 * a * p + 1/1 * q * j + -1/1 * a * j + -93/1000` |
| 59 | A_BEH | bitt ["actual-area","BEH",["P","Q"]] | `1/1 * h + -1/1 * b * h + 1/1 * b * e + -13857/20000` |
| 62 | A_BEQ | bitt ["actual-area","BEQ",[]] | `1/1 * v + -1/1 * b * v + -1/1 * e * u + 1/1 * b * e + -93/1000` |
| 67 | A_BFP | bitt ["actual-area","BFP",[]] | `1/1 * f * q + -1/1 * b * q + -1/1 * p + 1/1 * b + -93/1000` |
| 103 | A_EFS | bitt ["actual-area","EFS",[]] | `-1/1 * f * k + 1/1 * e * f + 1/1 * k + 1/1 * j + -1093/1000 + -1/1 * e * j` |
| 137 | fb | bitt ["contact-order","fb"] | `1/1 * f + -1/1 * b` |
| 150 | central-x | bitt ["central-lower-x"] | `1/1 * c * h * p + -1/1 * b * h * p + -93/1000 * c + -93/1000 * b` |
| 1676 | AREA_lo_ABE | bitt ["earlier-area",{"direction":"lo","ref":"867:945","triangle":"ABE","value":"10929/31250"}] | `1/1 * b * e + -1/1 * a * b + 1/1 * a + -10929/31250` |
| 1705 | AREA_lo_AEP | bitt ["earlier-area",{"direction":"lo","ref":"867:1692","triangle":"AEP","value":"46907/500000"}] | `1/1 * q + -1/1 * a + -1/1 * e * p + 1/1 * a * p + -46907/500000` |
| 1749 | AREA_lo_BEP | bitt ["earlier-area",{"direction":"lo","ref":"867:1605","triangle":"BEP","value":"342829/1000000"}] | `1/1 * q + -1/1 * b * q + -1/1 * e * p + 1/1 * b * e + -342829/1000000` |
| 1777 | AREA_lo_CEF | bitt ["earlier-area",{"direction":"lo","ref":"867:1757","triangle":"CEF","value":"346511/1000000"}] | `653489/1000000 + -1/1 * c + -1/1 * e * f + 1/1 * c * e` |
| 1815 | AREA_lo_EFR | bitt ["earlier-area",{"direction":"lo","ref":"867:1729","triangle":"EFR","value":"147293/500000"}] | `-1/1 * f * w + 1/1 * e * f + 1/1 * w + 1/1 * r + -647293/500000 + -1/1 * e * r` |
| 1818 | AREA_lo_EHP | bitt ["earlier-area",{"direction":"lo","ref":"867:1447","triangle":"EHP","value":"166081/1000000"}] | `-1/1 * q + -1/1 * h * p + 1/1 * h + 1/1 * e * p + -166081/1000000` |
| 1848 | AREA_lo_FQR | bitt ["earlier-area",{"direction":"lo","ref":"867:1759","triangle":"FQR","value":"36319/100000"}] | `1/1 * u * w + -1/1 * u + -1/1 * f * w + -1/1 * v * r + 1/1 * f * v + 1/1 * r + -36319/100000` |
| 1852 | AREA_lo_FRS | bitt ["earlier-area",{"direction":"lo","ref":"867:1693","triangle":"FRS","value":"54293/500000"}] | `-1/1 * r * k + 1/1 * r + 1/1 * f * k + 1/1 * w * j + -1/1 * f * w + -1/1 * j + -54293/500000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 1676 | a | 4537/40000 | 59/125 | 2348571/13071125 | 59/125 | 44919/250000 | 59/125 | `(447551/500000, -160230729/500000000); (104569/250000, -46856751/250000000); (447551/500000, -18763509/62500000); (104569/250000, -2348571/31250000)` |
| 1 | 1705 | q | 276019/1000000 | 19353/25000 | 71223024307/250000000000 | 19353/25000 | 71223/250000 | 19353/25000 | `(1/1, -71223024307/250000000000); (1/1, -543658179/1000000000); (1/1, -76761979557/250000000000); (1/1, -282907/500000); (1/1, -20188383643/62500000000); (1/1, -117395471/250000000); (1/1, -26202890893/62500000000)` |
| 2 | 1749 | q | 71223/250000 | 19353/25000 | 3826233/13071125 | 19353/25000 | 73181/250000 | 19353/25000 | `(447551/500000, -345590821/1000000000); (104569/250000, -212556367/1000000000); (447551/500000, -21718833/62500000); (104569/250000, -3826233/31250000); (447551/500000, -226337603/500000000); (104569/250000, -19977547/62500000); (447551/500000, -66082751/125000000); (104569/250000, -37950017/125000000)` |
| 3 | 1777 | c | 135501/250000 | 1/1 | 135501/250000 | 521801/528000 | 135501/250000 | 49413/50000 | `(-721/1000, 17989/31250); (-66/125, 521801/1000000); (-721/1000, 60953077/125000000); (-66/125, 46610861/125000000)` |
| 4 | 1815 | f | 279/1000 | 9289/15625 | 279/1000 | 213207/360500 | 279/1000 | 591421/1000000 | `(-6336/15625, -51532353/500000000); (-26563/125000, -14924063/62500000); (-6336/15625, 55459/500000); (-26563/125000, -41041/500000); (-721/1000, 106215647/500000000); (-66/125, 4794437/62500000); (-721/1000, 213207/500000); (-66/125, 116707/500000)` |
| 5 | 1815 | w | 85563/125000 | 1/1 | 99149/144200 | 1/1 | 687579/1000000 | 1/1 | `(721/1000, -354863853/500000000); (721/1000, -49475063/62500000); (408579/1000000, -622562247/1000000000); (408579/1000000, -80517287/125000000); (721/1000, -99149/200000); (721/1000, -317449/500000); (408579/1000000, -408579541/1000000000); (408579/1000000, -60929411/125000000)` |
| 6 | 1818 | q | 73181/250000 | 19353/25000 | 73181/250000 | 96663273/125000000 | 73181/250000 | 773307/1000000 | `(-1/1, 502170200393/1000000000000); (-1/1, 524326021393/1000000000000); (-1/1, 751150363/1000000000); (-1/1, 96663273/125000000); (-1/1, 83348711657/250000000000); (-1/1, 107406740657/250000000000); (-1/1, 118604937/250000000); (-1/1, 71331483/125000000)` |
| 7 | 1848 | f | 279/1000 | 591421/1000000 | 279/1000 | 11983249127/20703880000 | 279/1000 | 578793/1000000 | `(-517597/1000000, 53243506027/1000000000000); (-517597/1000000, -39076274631/1000000000000); (-308579/1000000, -3749635113/40000000000); (-308579/1000000, -186060658483/1000000000000); (-517597/1000000, 11983249127/40000000000); (-517597/1000000, 207261447517/1000000000000); (-308579/1000000, 3622529127/40000000000); (-308579/1000000, -1756552483/1000000000000); (-415009/500000, 55122569463/250000000000); (-621/1000, 36752947/500000000); (-415009/500000, 116707/250000); (-621/1000, 25781/100000)` |
| 8 | 1848 | r | 351607/500000 | 1/1 | 297382511/415009000 | 1/1 | 89571/125000 | 1/1 | `(415009/500000, -26993853393/40000000000); (415009/500000, -415009146123/500000000000); (415009/500000, -767166115483/1000000000000); (415009/500000, -115292259113/125000000000); (621/1000, -24661212513/40000000000); (621/1000, -177260034243/250000000000); (621/1000, -708850093483/1000000000000); (621/1000, -80135991763/100000000000); (415009/500000, -297382511/500000000); (415009/500000, -421799304137/500000000000); (621/1000, -536449/1000000); (621/1000, -722620453/1000000000)` |
| 9 | 1852 | k | 268487/500000 | 852471/1000000 | 268487/500000 | 306207/360500 | 268487/500000 | 212349/250000 | `(-6837/15625, 60648148691/250000000000); (-5511/40000, 36461223617/1000000000000); (-721/1000, 131506148691/250000000000); (-421207/1000000, 319893223617/1000000000000); (-6837/15625, 164491/500000); (-5511/40000, 29189/1000000); (-721/1000, 306207/500000); (-421207/1000000, 312621/1000000); (-6837/15625, 144024706527/1000000000000); (-5511/40000, -3105333231/50000000000); (-721/1000, 427456706527/1000000000000); (-421207/1000000, 11066266769/50000000000)` |
| 10 | 7 | b | 52449/500000 | 145431/250000 | 23250/205081 | 145431/250000 | 113369/1000000 | 145431/250000 | `(107811/200000, -93/1000); (246731/1000000, -93/1000); (205081/250000, -93/1000); (66/125, -93/1000)` |
| 11 | 43 | q | 73181/250000 | 773307/1000000 | 330981740691/1000000000000 | 773307/1000000 | 330981/1000000 | 773307/1000000 | `(89571/125000, -280055812659/1000000000000); (89571/125000, -455967918463/1000000000000); (89571/125000, -118749150651/250000000000); (89571/125000, -134677593087/250000000000); (1/1, -330981740691/1000000000000); (1/1, -589747822463/1000000000000); (1/1, -131480632659/250000000000); (1/1, -168122569087/250000000000); (89571/125000, -78980201549/250000000000); (89571/125000, -30739557/62500000); (89571/125000, -39423341391/62500000000); (89571/125000, -10851363/15625000); (1/1, -91711683557/250000000000); (1/1, -39100801/62500000); (1/1, -42606211893/62500000000); (1/1, -6470837/7812500)` |
| 12 | 44 | q | 330981/1000000 | 773307/1000000 | 145258435147/435506500000 | 773307/1000000 | 333539/1000000 | 773307/1000000 | `(138879/250000, -116914815661/500000000000); (138879/250000, -181331186139/500000000000); (138879/250000, -46370745399/125000000000); (138879/250000, -48450046011/125000000000); (871013/1000000, -145258435147/500000000000); (871013/1000000, -255788478139/500000000000); (871013/1000000, -106913300541/250000000000); (871013/1000000, -67064369011/125000000000); (138879/250000, -33711842457/125000000000); (138879/250000, -99631870153/250000000000); (138879/250000, -32921457591/62500000000); (138879/250000, -33961107897/62500000000); (871013/1000000, -81595494657/250000000000); (871013/1000000, -136860516153/250000000000); (871013/1000000, -145857640107/250000000000); (871013/1000000, -43268269397/62500000000)` |
| 13 | 59 | h | 718731/1000000 | 1/1 | 79917479/110828875 | 1/1 | 11267/15625 | 1/1 | `(886631/1000000, -661220049/1000000000); (104569/250000, -132637251/250000000); (886631/1000000, -79917479/125000000); (104569/250000, -26142267/62500000)` |
| 14 | 67 | p | 114797/1000000 | 124653/250000 | 114797/1000000 | 487746397191/1000000000000 | 114797/1000000 | 487747/1000000 | `(-1/1, 75613398109/1000000000000); (-1/1, 96938434941/250000000000); (-1/1, 10975378471/62500000000); (-1/1, 487746397191/1000000000000); (-1/1, 148452611717/1000000000000); (-1/1, 63656352933/250000000000); (-1/1, 23767789823/62500000000); (-1/1, 486457437183/1000000000000)` |
| 15 | 103 | j | 138879/250000 | 871013/1000000 | 100686121/180250000 | 871013/1000000 | 558591/1000000 | 871013/1000000 | `(721/1000, -314000373/500000000); (66/125, -287076873/500000000); (721/1000, -352669772691/500000000000); (66/125, -296816248191/500000000000); (721/1000, -100686121/250000000); (66/125, -87224371/250000000); (721/1000, -143436303007/250000000000); (66/125, -115509540757/250000000000)` |
| 16 | 137 | b | 113369/1000000 | 145431/250000 | 113369/1000000 | 578793/1000000 | 113369/1000000 | 578793/1000000 | `(-1/1, 279/1000); (-1/1, 578793/1000000)` |
| 17 | 150 | p | 114797/1000000 | 487747/1000000 | 102451497/874891000 | 487747/1000000 | 58551/500000 | 487747/1000000 | `(965886109/3125000000, -60949689/1000000000); (-414501663/15625000000, -104234121/1000000000); (9857396897/15625000000, -102451497/1000000000); (4613464689/15625000000, -145735929/1000000000); (85727/200000, -60949689/1000000000); (-36789/1000000, -104234121/1000000000); (874891/1000000, -102451497/1000000000); (409467/1000000, -145735929/1000000000)` |
| 18 | 1676 | a | 44919/250000 | 59/125 | 9567213/52650875 | 59/125 | 18171/100000 | 59/125 | `(886631/1000000, -318098049/1000000000); (421207/1000000, -188244753/1000000000); (886631/1000000, -37027229/125000000); (421207/1000000, -9567213/125000000)` |
| 19 | 1818 | q | 333539/1000000 | 773307/1000000 | 333539/1000000 | 96511143/125000000 | 333539/1000000 | 77209/100000 | `(-1/1, 31452350689/62500000000); (-1/1, 8216223391/15625000000); (-1/1, 374744229/500000000); (-1/1, 96511143/125000000); (-1/1, 42422488033/125000000000); (-1/1, 6773673051/15625000000); (-1/1, 482253413/1000000000); (-1/1, 72048573/125000000)` |
| 20 | 7 | b | 113369/1000000 | 578793/1000000 | 9300/81829 | 578793/1000000 | 113651/1000000 | 578793/1000000 | `(269689/500000, -93/1000); (3892/15625, -93/1000); (81829/100000, -93/1000); (66/125, -93/1000)` |
| 21 | 43 | q | 333539/1000000 | 77209/100000 | 166974135819/500000000000 | 77209/100000 | 83487/250000 | 77209/100000 | `(89571/125000, -141222921459/500000000000); (89571/125000, -228232414029/500000000000); (89571/125000, -469943658423/1000000000000); (89571/125000, -536368106513/1000000000000); (1/1, -166974135819/500000000000); (1/1, -295122366029/500000000000); (1/1, -521446087143/1000000000000); (1/1, -670148010513/1000000000000); (89571/125000, -15951548343/50000000000); (89571/125000, -15407811/31250000); (89571/125000, -62232606391/100000000000); (89571/125000, -43046907/62500000); (1/1, -18526669779/50000000000); (1/1, -19588433/31250000); (1/1, -67382849263/100000000000); (1/1, -51408151/62500000)` |
| 22 | 44 | q | 83487/250000 | 77209/100000 | 146436948579/435506500000 | 77209/100000 | 67249/200000 | 77209/100000 | `(558591/1000000, -118051847769/500000000000); (558591/1000000, -91065884337/250000000000); (558591/1000000, -183890260409/500000000000); (558591/1000000, -194172912789/500000000000); (871013/1000000, -146436948579/500000000000); (871013/1000000, -127931680337/250000000000); (871013/1000000, -212275361219/500000000000); (871013/1000000, -267904504789/500000000000); (558591/1000000, -136344468291/500000000000); (558591/1000000, -50106097299/125000000000); (558591/1000000, -130040853513/250000000000); (558591/1000000, -135182179703/250000000000); (871013/1000000, -164729569101/500000000000); (871013/1000000, -68538995299/125000000000); (871013/1000000, -72116701959/125000000000); (871013/1000000, -172047975703/250000000000)` |
| 23 | 59 | h | 11267/15625 | 1/1 | 79900841/110793625 | 1/1 | 45073/62500 | 1/1 | `(886349/1000000, -661141371/1000000000); (421207/1000000, -531366753/1000000000); (886349/1000000, -79900841/125000000); (421207/1000000, -52457463/125000000)` |
| 24 | 62 | v | 84991/500000 | 379/1000 | 9060388/52650875 | 379/1000 | 43021/250000 | 379/1000 | `(886349/1000000, -105323523/500000000); (421207/1000000, -20218107/250000000); (886349/1000000, -18251883/62500000); (421207/1000000, -2265097/31250000); (886349/1000000, -73272747/250000000); (421207/1000000, -16331637/100000000); (886349/1000000, -13484537/31250000); (421207/1000000, -2649477/12500000)` |
| 25 | 67 | p | 58551/500000 | 487747/1000000 | 58551/500000 | 485793/1000000 | 58551/500000 | 485793/1000000 | `(-1/1, 15249754901/200000000000); (-1/1, 76997820543/200000000000); (-1/1, 17705267179/100000000000); (-1/1, 485793/1000000); (-1/1, 14831530941/100000000000); (-1/1, 25432582263/100000000000); (-1/1, 18989124339/50000000000)` |
| 26 | 150 | p | 58551/500000 | 485793/1000000 | 102477723/874609000 | 485793/1000000 | 117169/1000000 | 485793/1000000 | `(19307154769/62500000000, -12195183/200000000); (-1658190597/62500000000, -104234121/1000000000); (39421251457/62500000000, -102477723/1000000000); (18455906091/62500000000, -145735929/1000000000); (428353/1000000, -12195183/200000000); (-36789/1000000, -104234121/1000000000); (874609/1000000, -102477723/1000000000); (409467/1000000, -145735929/1000000000)` |
| 27 | 1818 | q | 67249/200000 | 77209/100000 | 67249/200000 | 96506721/125000000 | 67249/200000 | 386027/500000 | `(-1/1, 62909827201/125000000000); (-1/1, 32868264663/62500000000); (-1/1, 749440151/1000000000); (-1/1, 96506721/125000000); (-1/1, 42535610097/125000000000); (-1/1, 27127683111/62500000000); (-1/1, 483662247/1000000000); (-1/1, 72177537/125000000)` |
| 28 | 1848 | f | 279/1000 | 578793/1000000 | 279/1000 | 11899169127/20619800000 | 279/1000 | 23083/40000 | `(-103099/200000, 62821340463/1000000000000); (-103099/200000, -5899688039/200000000000); (-308579/1000000, -3417921753/40000000000); (-308579/1000000, -177767824483/1000000000000); (-103099/200000, 11899169127/40000000000); (-103099/200000, 205159447517/1000000000000); (-308579/1000000, 3622529127/40000000000); (-308579/1000000, -1756552483/1000000000000); (-206979/250000, 7189628509/31250000000); (-621/1000, 10224841/125000000); (-206979/250000, 232363/500000); (-621/1000, 25781/100000)` |
| 29 | 1848 | r | 89571/125000 | 1/1 | 148544641/206979000 | 1/1 | 717679/1000000 | 1/1 | `(206979/250000, -26970395073/40000000000); (206979/250000, -16558320979/20000000000); (206979/250000, -766579657483/1000000000000); (206979/250000, -115029478701/125000000000); (621/1000, -24661212513/40000000000); (621/1000, -2834039993/4000000000); (621/1000, -708850093483/1000000000000); (621/1000, -200207444727/250000000000); (206979/250000, -148544641/250000000); (206979/250000, -8409596257/10000000000); (621/1000, -536449/1000000); (621/1000, -28862143/40000000)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 868:0 | ABC | lo | 93/1000 | occupants none |
| 868:2 | ABE | lo | 10929/31250 | earlier 867:945; ABE; lo; 10929/31250 |
| 868:3 | ABE | hi | 59/125 | vertex maximum 59/125 |
| 868:4 | ABF | lo | 279/1000 | occupants P |
| 868:5 | ABF | hi | 23083/40000 | anchor cap ABF; expression {"f":1} |
| 868:6 | ABH | lo | 93/1000 | occupants none |
| 868:7 | ABH | hi | 47362052397/100000000000 | vertex maximum 47362052397/100000000000 |
| 868:10 | ABQ | lo | 10233/62500 | earlier 867:911; ABQ; lo; 10233/62500 |
| 868:11 | ABQ | hi | 143/500 | earlier 867:11; ABQ; hi; 143/500 |
| 868:13 | ABR | hi | 48600169/62500000 | vertex maximum 48600169/62500000 |
| 868:16 | ACE | lo | 282423/1000000 | earlier 867:1591; ACE; lo; 282423/1000000 |
| 868:17 | ACE | hi | 59/125 | vertex maximum 59/125 |
| 868:18 | ACF | lo | 303267/1000000 | earlier 867:1718; ACF; lo; 303267/1000000 |
| 868:21 | ACH | hi | 803859/1000000 | earlier 867:1594; ACH; hi; 803859/1000000 |
| 868:22 | ACP | lo | 94277/1000000 | earlier 867:1691; ACP; lo; 94277/1000000 |
| 868:25 | ACQ | hi | 66919/250000 | earlier 867:25; ACQ; hi; 66919/250000 |
| 868:30 | AEF | lo | 198079/500000 | earlier 867:1720; AEF; lo; 198079/500000 |
| 868:31 | AEF | hi | 79114609/100000000 | vertex maximum 79114609/100000000 |
| 868:33 | AEH | hi | 81829/100000 | vertex maximum 81829/100000 |
| 868:36 | AEQ | lo | 93/1000 | occupants none |
| 868:38 | AER | lo | 67491/200000 | earlier 867:1670; AER; lo; 67491/200000 |
| 868:39 | AER | hi | 74846701009/100000000000 | vertex maximum 74846701009/100000000000 |
| 868:42 | AFH | lo | 93/1000 | occupants none |
| 868:44 | AFP | lo | 93/1000 | occupants none |
| 868:46 | AFQ | lo | 38887/125000 | earlier 867:1671; AFQ; lo; 38887/125000 |
| 868:48 | AFR | lo | 5682/15625 | earlier 867:1753; AFR; lo; 5682/15625 |
| 868:49 | AFR | hi | 677152549/1000000000 | vertex maximum 677152549/1000000000 |
| 868:50 | AFS | lo | 67199/200000 | earlier 867:1674; AFS; lo; 67199/200000 |
| 868:51 | AFS | hi | 590001/1000000 | earlier 867:1579; AFS; hi; 590001/1000000 |
| 868:52 | AHP | lo | 93/1000 | occupants none |
| 868:56 | AHR | lo | 330707/1000000 | earlier 867:1754; AHR; lo; 330707/1000000 |
| 868:57 | AHR | hi | 81829/100000 | vertex maximum 81829/100000 |
| 868:59 | AHS | hi | 71274122777/100000000000 | vertex maximum 71274122777/100000000000 |
| 868:62 | APR | lo | 93/1000 | occupants none |
| 868:64 | APS | lo | 93/1000 | occupants none |
| 868:66 | AQR | lo | 91761/250000 | earlier 867:1725; AQR; lo; 91761/250000 |
| 868:68 | AQS | lo | 45261/250000 | earlier 867:1707; AQS; lo; 45261/250000 |
| 868:70 | ARS | lo | 93/1000 | occupants none |
| 868:72 | BCE | lo | 93/1000 | occupants none |
| 868:76 | BCH | lo | 38863/125000 | earlier 867:837; BCH; lo; 38863/125000 |
| 868:77 | BCH | hi | 197663/250000 | earlier 867:1603; BCH; hi; 197663/250000 |
| 868:80 | BCQ | lo | 93/1000 | occupants none |
| 868:81 | BCQ | hi | 331476811/1000000000 | vertex maximum 331476811/1000000000 |
| 868:82 | BCR | lo | 93/1000 | occupants none |
| 868:84 | BCS | lo | 60553/500000 | earlier 867:659; BCS; lo; 60553/500000 |
| 868:86 | BEF | lo | 418481/1000000 | earlier 867:1755; BEF; lo; 418481/1000000 |
| 868:87 | BEF | hi | 840216629/1000000000 | vertex maximum 840216629/1000000000 |
| 868:88 | BEH | lo | 13857/20000 | occupants P, Q |
| 868:89 | BEH | hi | 58749517/62500000 | vertex maximum 58749517/62500000 |
| 868:90 | BEP | lo | 342829/1000000 | earlier 867:1605; BEP; lo; 342829/1000000 |
| 868:92 | BEQ | lo | 93/1000 | occupants none |
| 868:94 | BER | lo | 67699/500000 | earlier 867:1684; BER; lo; 67699/500000 |
| 868:96 | BES | lo | 87947/500000 | earlier 867:1585; BES; lo; 87947/500000 |
| 868:98 | BFH | lo | 279/1000 | occupants P |
| 868:99 | BFH | hi | 23083/40000 | anchor cap BFH; expression {"f":1} |
| 868:100 | BFP | lo | 93/1000 | occupants none |
| 868:105 | BFR | hi | 772658499929/1000000000000 | vertex maximum 772658499929/1000000000000 |
| 868:108 | BHP | lo | 93/1000 | occupants none |
| 868:110 | BHQ | lo | 44239/125000 | earlier 867:1568; BHQ; lo; 44239/125000 |
| 868:112 | BHR | lo | 49621/125000 | earlier 867:1766; BHR; lo; 49621/125000 |
| 868:116 | BPQ | lo | 35427/250000 | earlier 867:1569; BPQ; lo; 35427/250000 |
| 868:118 | BPR | lo | 159261/1000000 | earlier 867:1763; BPR; lo; 159261/1000000 |
| 868:122 | CEF | lo | 346511/1000000 | earlier 867:1757; CEF; lo; 346511/1000000 |
| 868:123 | CEF | hi | 4547921/7812500 | vertex maximum 4547921/7812500 |
| 868:124 | CEH | lo | 405243/1000000 | earlier 867:1609; CEH; lo; 405243/1000000 |
| 868:125 | CEH | hi | 11153467/15625000 | vertex maximum 11153467/15625000 |
| 868:126 | CEP | lo | 295629/1000000 | earlier 867:1610; CEP; lo; 295629/1000000 |
| 868:128 | CEQ | lo | 93/1000 | occupants none |
| 868:130 | CER | lo | 93/1000 | occupants none |
| 868:131 | CER | hi | 16359307/40000000 | vertex maximum 16359307/40000000 |
| 868:132 | CES | lo | 134097/1000000 | earlier 867:1765; CES; lo; 134097/1000000 |
| 868:138 | CFQ | lo | 93/1000 | occupants none |
| 868:144 | CHP | lo | 93/1000 | occupants none |
| 868:146 | CHQ | lo | 1283/12500 | earlier 867:1541; CHQ; lo; 1283/12500 |
| 868:158 | EFH | lo | 156081/1000000 | earlier 867:1697; EFH; lo; 156081/1000000 |
| 868:162 | EFQ | lo | 160511/1000000 | earlier 867:1733; EFQ; lo; 160511/1000000 |
| 868:163 | EFQ | hi | 198067/500000 | earlier 867:163; EFQ; hi; 198067/500000 |
| 868:164 | EFR | lo | 147293/500000 | earlier 867:1729; EFR; lo; 147293/500000 |
| 868:165 | EFR | hi | 519841/1000000 | vertex maximum 519841/1000000 |
| 868:166 | EFS | lo | 93/1000 | occupants none |
| 868:170 | EHQ | lo | 209603/1000000 | earlier 867:1434; EHQ; lo; 209603/1000000 |
| 868:173 | EHR | hi | 721/1000 | vertex maximum 721/1000 |
| 868:184 | EQS | lo | 93/1000 | occupants none |
| 868:186 | ERS | lo | 93/1000 | occupants none |
| 868:188 | FHP | lo | 93/1000 | occupants none |
| 868:192 | FHR | lo | 93/1000 | occupants none |
| 868:194 | FHS | lo | 20683/200000 | earlier 867:1590; FHS; lo; 20683/200000 |
| 868:200 | FPS | lo | 29999/200000 | earlier 867:1643; FPS; lo; 29999/200000 |
| 868:202 | FQR | lo | 36319/100000 | earlier 867:1759; FQR; lo; 36319/100000 |
| 868:203 | FQR | hi | 573679/1000000 | earlier 867:203; FQR; hi; 573679/1000000 |
| 868:208 | HPQ | lo | 4187/40000 | earlier 867:1369; HPQ; lo; 4187/40000 |
| 868:212 | HPS | lo | 23503/200000 | earlier 867:1713; HPS; lo; 23503/200000 |
| 868:214 | HQR | lo | 6489/15625 | earlier 867:1760; HQR; lo; 6489/15625 |
| 868:215 | HQR | hi | 390407/500000 | earlier 867:215; HQR; hi; 390407/500000 |
| 868:220 | PQR | lo | 42293/125000 | earlier 867:1426; PQR; lo; 42293/125000 |
| 868:224 | PRS | lo | 93/1000 | occupants none |
| 868:226 | QRS | lo | 93/1000 | occupants none |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 56 | plu | ACE * BER = ABE * CER + AER * BCE | circuit EABCR |
| 77 | plu | ACQ * BFQ = ABQ * CFQ + AFQ * BCQ | circuit QABCF |
| 138 | plu | ABE * EFQ = AEF * BEQ + AEQ * BEF | circuit EABFQ |
| 141 | plu | ABR * AEF = ABE * AFR + ABF * AER | circuit ABEFR |
| 149 | plu | AEF * BFS = ABF * EFS + AFS * BEF | circuit FABES |
| 150 | plu | AES * BFS = ABS * EFS + AFS * BES | circuit SABEF |
| 160 | plu | ABQ * EHQ = AEQ * BHQ + AHQ * BEQ | circuit QABEH |
| 222 | plu | ABP * AFS = ABF * APS + ABS * AFP | circuit ABFPS |
| 357 | plu | ACP * AFS = ACF * APS + ACS * AFP | circuit ACFPS |
| 421 | plu | AEP * AFR = AEF * APR + AER * AFP | circuit AEFPR |
| 526 | plu | AFR * APQ = AFP * AQR + AFQ * APR | circuit AFPQR |
| 544 | plu | AQR * FRS = AFR * QRS + ARS * FQR | circuit RAFQS |
| 564 | plu | AQR * HRS = AHR * QRS + ARS * HQR | circuit RAHQS |
| 575 | plu | BEH * CFH = BCH * EFH + BFH * CEH | circuit HBCEF |
| 643 | plu | BFQ * CHQ = BCQ * FHQ + BHQ * CFQ | circuit QBCFH |
| 705 | plu | BFR * EFH = BEF * FHR + BFH * EFR | circuit FBEHR |
| 709 | plu | BEF * EHS = BEH * EFS + BES * EFH | circuit EBFHS |
| 721 | plu | BPR * EFP = BEP * FPR + BFP * EPR | circuit PBEFR |
| 736 | plu | BHQ * EHP = BEH * HPQ + BHP * EHQ | circuit HBEPQ |
| 777 | plu | BFR * FHQ = BFH * FQR + BFQ * FHR | circuit FBHQR |
| 790 | plu | BHQ * HPR = BHP * HQR + BHR * HPQ | circuit HBPQR |
| 798 | plu | CEH * CFP = CEF * CHP + CEP * CFH | circuit CEFHP |
| 1154 | quad | CER + ACR >= 93/125 | quadrilateral CERA; occupants Q, S |
| 2098 | bary | outer ABE; fans BEQ, AEQ, ABQ; target AFQ; sign -1; vertices none 0; ABF -1; AEF -1 | container ABE; inner Q; line AF |
| 2099 | bary | outer ABE; fans BEQ, AEQ, ABQ; target AHQ; sign -1; vertices none 0; ABH -1; AEH -1 | container ABE; inner Q; line AH |
| 2102 | bary | outer ABE; fans BEQ, AEQ, ABQ; target AQR; sign -1; vertices none 0; ABR -1; AER -1 | container ABE; inner Q; line AR |
| 2106 | bary | outer ABE; fans BEQ, AEQ, ABQ; target BFQ; sign -1; vertices ABF 1; none 0; BEF -1 | container ABE; inner Q; line BF |
| 2107 | bary | outer ABE; fans BEQ, AEQ, ABQ; target BHQ; sign -1; vertices ABH 1; none 0; BEH -1 | container ABE; inner Q; line BH |
| 2121 | bary | outer ABE; fans BEQ, AEQ, ABQ; target FHQ; sign 1; vertices AFH 1; BFH 1; EFH 1 | container ABE; inner Q; line FH |
| 2125 | bary | outer ABE; fans BEQ, AEQ, ABQ; target FQS; sign -1; vertices AFS -1; BFS -1; EFS -1 | container ABE; inner Q; line FS |
| 2279 | bary | outer ACH; fans CHP, AHP, ACP; target EFP; sign 1; vertices AEF 1; CEF 1; EFH 1 | container ACH; inner P; line EF |
| 2287 | bary | outer ACH; fans CHP, AHP, ACP; target FPQ; sign -1; vertices AFQ -1; CFQ -1; FHQ -1 | container ACH; inner P; line FQ |
| 2464 | bary | outer AFQ; fans FPQ, APQ, AFP; target PQR; sign 1; vertices AQR 1; FQR 1; none 0 | container AFQ; inner P; line QR |
| 2528 | bary | outer AFS; fans FPS, APS, AFP; target EFP; sign 1; vertices AEF 1; none 0; EFS -1 | container AFS; inner P; line EF |
| 2558 | bary | outer AHQ; fans HPQ, APQ, AHP; target BCP; sign 1; vertices ABC 1; BCH 1; BCQ 1 | container AHQ; inner P; line BC |
| 2578 | bary | outer AHQ; fans HPQ, APQ, AHP; target FPR; sign -1; vertices AFR -1; FHR -1; FQR -1 | container AHQ; inner P; line FR |
| 2579 | bary | outer AHQ; fans HPQ, APQ, AHP; target FPS; sign -1; vertices AFS -1; FHS -1; FQS -1 | container AHQ; inner P; line FS |
| 2640 | bary | outer AHS; fans HPS, APS, AHP; target BCP; sign 1; vertices ABC 1; BCH 1; BCS 1 | container AHS; inner P; line BC |
| 2654 | bary | outer AHS; fans HPS, APS, AHP; target EPQ; sign -1; vertices AEQ -1; EHQ -1; EQS -1 | container AHS; inner P; line EQ |
| 2676 | bary | outer AQR; fans QRS, ARS, AQS; target AHS; sign -1; vertices none 0; AHQ -1; AHR -1 | container AQR; inner S; line AH |
| 2699 | bary | outer AQR; fans QRS, ARS, AQS; target FRS; sign -1; vertices AFR -1; FQR -1; none 0 | container AQR; inner S; line FR |
| 2703 | bary | outer AQR; fans QRS, ARS, AQS; target HRS; sign -1; vertices AHR -1; HQR -1; none 0 | container AQR; inner S; line HR |
| 2735 | bary | outer BCH; fans CHP, BHP, BCP; target EFP; sign 1; vertices BEF 1; CEF 1; EFH 1 | container BCH; inner P; line EF |
| 2740 | bary | outer BCH; fans CHP, BHP, BCP; target EPS; sign 1; vertices BES 1; CES 1; EHS 1 | container BCH; inner P; line ES |
| 2930 | bary | outer BFH; fans FHP, BHP, BFP; target CPQ; sign 1; vertices BCQ 1; CFQ 1; CHQ 1 | container BFH; inner P; line CQ |
| 2972 | bary | outer BHQ; fans HPQ, BPQ, BHP; target EHP; sign 1; vertices BEH 1; none 0; EHQ 1 | container BHQ; inner P; line EH |
| 2984 | bary | outer BHQ; fans HPQ, BPQ, BHP; target HPR; sign -1; vertices BHR -1; none 0; HQR -1 | container BHQ; inner P; line HR |
| 3065 | bary | outer CEF; fans EFQ, CFQ, CEQ; target ABQ; sign 1; vertices ABC 1; ABE 1; ABF 1 | container CEF; inner Q; line AB |
| 3077 | bary | outer CEF; fans EFQ, CFQ, CEQ; target BHQ; sign -1; vertices BCH -1; BEH -1; BFH -1 | container CEF; inner Q; line BH |
| 3078 | bary | outer CEF; fans EFQ, CFQ, CEQ; target BPQ; sign -1; vertices BCP -1; BEP -1; BFP -1 | container CEF; inner Q; line BP |
| 3096 | bary | outer CEF; fans EFQ, CFQ, CEQ; target HPQ; sign 1; vertices CHP 1; EHP 1; FHP 1 | container CEF; inner Q; line HP |
| 3179 | bary | outer EFR; fans FRS, ERS, EFS; target ABS; sign 1; vertices ABE 1; ABF 1; ABR 1 | container EFR; inner S; line AB |
| 3180 | bary | outer EFR; fans FRS, ERS, EFS; target ACS; sign 1; vertices ACE 1; ACF 1; ACR 1 | container EFR; inner S; line AC |
| 3185 | bary | outer EFR; fans FRS, ERS, EFS; target AQS; sign 1; vertices AEQ 1; AFQ 1; AQR 1 | container EFR; inner S; line AQ |
| 3208 | bary | outer EFR; fans FRS, ERS, EFS; target HPS; sign 1; vertices EHP 1; FHP 1; HPR 1 | container EFR; inner S; line HP |
| 3209 | bary | outer EFR; fans FRS, ERS, EFS; target HQS; sign 1; vertices EHQ 1; FHQ 1; HQR 1 | container EFR; inner S; line HQ |
| 3212 | bary | outer EFR; fans FRS, ERS, EFS; target PQS; sign 1; vertices EPQ 1; FPQ 1; PQR 1 | container EFR; inner S; line PQ |
| 3227 | bary | outer EHR; fans HRS, ERS, EHS; target BCS; sign 1; vertices BCE 1; BCH 1; BCR 1 | container EHR; inner S; line BC |
| 3299 | bary | outer FQR; fans QRS, FRS, FQS; target AFS; sign -1; vertices none 0; AFQ -1; AFR -1 | container FQR; inner S; line AF |
| 3310 | bary | outer FQR; fans QRS, FRS, FQS; target CES; sign 1; vertices CEF 1; CEQ 1; CER 1 | container FQR; inner S; line CE |
| 3345 | bary | outer HQR; fans QRS, HRS, HQS; target BES; sign 1; vertices BEH 1; BEQ 1; BER 1 | container HQR; inner S; line BE |
| 3385 | bary | outer PQR; fans QRS, PRS, PQS; target BFS; sign -1; vertices BFP 1; BFQ -1; BFR -1 | container PQR; inner S; line BF |
| 3398 | bary | outer PQR; fans QRS, PRS, PQS; target FHS; sign 1; vertices FHP 1; FHQ 1; FHR 1 | container PQR; inner S; line FH |
| 3423 | four | 1 * ABE + -1 * AEQ + -1 * ABQ + -1 * BEQ = 0 | vertices ABEQ |
| 3427 | four | 1 * ABF + -1 * AFP + -1 * ABP + -1 * BFP = 0 | vertices ABFP |
| 3441 | four | 1 * ACE + -1 * AEQ + -1 * ACQ + -1 * CEQ = 0 | vertices ACEQ |
| 3445 | four | 1 * ACF + -1 * AFP + -1 * ACP + -1 * CFP = 0 | vertices ACFP |
| 3450 | four | 1 * ACH + -1 * AHQ + -1 * ACQ + 1 * CHQ = 0 | vertices ACHQ |
| 3457 | four | 1 * AEF + -1 * AFP + -1 * AEP + -1 * EFP = 0 | vertices AEFP |
| 3470 | four | 1 * AER + -1 * ARS + -1 * AES + -1 * ERS = 0 | vertices AERS |
| 3475 | four | -1 * AFP + -1 * APQ + 1 * AFQ + -1 * FPQ = 0 | vertices AFPQ |
| 3476 | four | -1 * AFP + -1 * APR + 1 * AFR + -1 * FPR = 0 | vertices AFPR |
| 3477 | four | -1 * AFP + -1 * APS + 1 * AFS + -1 * FPS = 0 | vertices AFPS |
| 3481 | four | -1 * AHP + -1 * APQ + 1 * AHQ + -1 * HPQ = 0 | vertices AHPQ |
| 3482 | four | -1 * AHP + -1 * APR + 1 * AHR + -1 * HPR = 0 | vertices AHPR |
| 3490 | four | 1 * AQR + -1 * ARS + -1 * AQS + -1 * QRS = 0 | vertices AQRS |
| 3502 | four | 1 * BCH + -1 * BHP + -1 * BCP + -1 * CHP = 0 | vertices BCHP |
| 3503 | four | 1 * BCH + -1 * BHQ + -1 * BCQ + 1 * CHQ = 0 | vertices BCHQ |
| 3511 | four | 1 * BEF + -1 * BFQ + -1 * BEQ + -1 * EFQ = 0 | vertices BEFQ |
| 3518 | four | 1 * BEP + -1 * BPQ + -1 * BEQ + -1 * EPQ = 0 | vertices BEPQ |
| 3529 | four | -1 * BHP + -1 * BPR + 1 * BHR + -1 * HPR = 0 | vertices BHPR |
| 3533 | four | 1 * CEF + -1 * CFQ + -1 * CEQ + -1 * EFQ = 0 | vertices CEFQ |
| 3537 | four | 1 * CEH + -1 * CHQ + -1 * CEQ + -1 * EHQ = 0 | vertices CEHQ |
| 3540 | four | 1 * CEP + -1 * CPQ + -1 * CEQ + -1 * EPQ = 0 | vertices CEPQ |
| 3562 | four | -1 * EFR + 1 * ERS + 1 * EFS + 1 * FRS = 0 | vertices EFRS |
| 3571 | four | -1 * EPR + 1 * ERS + 1 * EPS + 1 * PRS = 0 | vertices EPRS |
| 3582 | four | 1 * FQR + -1 * FRS + -1 * FQS + -1 * QRS = 0 | vertices FQRS |
| 3586 | four | 1 * HQR + -1 * HRS + -1 * HQS + -1 * QRS = 0 | vertices HQRS |
| 3587 | four | 1 * PQR + -1 * PRS + -1 * PQS + -1 * QRS = 0 | vertices PQRS |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 868:231 | ABR | lo | 55951/200000 | 27665979093/98893261250 | 141 | 868:2, 868:48, 868:4, 868:38, 868:31 |
| 868:233 | BFS | lo | 210523/1000000 | 33310904719/158229218000 | 149 | 868:4, 868:166, 868:50, 868:86, 868:31 |
| 868:235 | AEP | lo | 50377/500000 | 68226009/677152549 | 421 | 868:30, 868:62, 868:38, 868:44, 868:49 |
| 868:236 | APQ | lo | 18627/200000 | 63067020/677152549 | 526 | 868:44, 868:66, 868:46, 868:62, 868:49 |
| 868:237 | CFH | lo | 2686/15625 | 2524828191/14687379250 | 575 | 868:76, 868:158, 868:98, 868:124, 868:89 |
| 868:238 | EFH | lo | 78371/500000 | 121108227000/772658499929 | 705 | 868:86, 868:192, 868:98, 868:164, 868:105 |
| 868:239 | EHS | lo | 109501/1000000 | 23001256837/210054157250 | 709 | 868:88, 868:166, 868:96, 868:238, 868:87 |
| 868:240 | CFP | lo | 116339/1000000 | 10380666327/89227736000 | 798 | 868:122, 868:144, 868:126, 868:237, 868:125 |
| 868:241 | ACR | lo | 335017/1000000 | 13400693/40000000 | 1154 | 868:131 |
| 868:245 | AFQ | hi | 118617/200000 | 13996787837/23600000000 | 2098 | 868:3, 868:92, 868:36, 868:10, 868:5, 868:31 |
| 868:246 | AHQ | hi | 147287/250000 | 27807764872921/47200000000000 | 2099 | 868:3, 868:92, 868:36, 868:10, 868:7, 868:33 |
| 868:247 | AQR | hi | 307141/500000 | 1812131849521897/2950000000000000 | 2102 | 868:3, 868:92, 868:36, 868:10, 868:13, 868:39 |
| 868:248 | BFQ | hi | 227071/500000 | 107177477947/236000000000 | 2106 | 868:3, 868:92, 868:36, 868:10, 868:4, 868:87 |
| 868:249 | BHQ | hi | 34453/62500 | 137811859/250000000 | 2107 | 868:3, 868:92, 868:36, 868:10, 868:6, 868:89 |
| 868:250 | FHQ | lo | 151759/1000000 | 2238448443/14750000000 | 2121 | 868:3, 868:92, 868:36, 868:10, 868:42, 868:98, 868:238 |
| 868:251 | FQS | lo | 82017/500000 | 38712087/236000000 | 2125 | 868:3, 868:92, 868:36, 868:10, 868:50, 868:233, 868:166 |
| 868:259 | FPQ | lo | 125123/1000000 | 14368776749/114837000000 | 2287 | 868:21, 868:144, 868:52, 868:22, 868:46, 868:138, 868:250 |
| 868:269 | PQR | hi | 511583/1000000 | 20227443571/39539000000 | 2464 | 868:245, 868:259, 868:236, 868:44, 868:247, 868:203 |
| 868:277 | EFP | hi | 131769/250000 | 10365827050203/19666700000000 | 2528 | 868:51, 868:200, 868:64, 868:44, 868:31, 868:166 |
| 868:281 | BCP | lo | 127447/1000000 | 134080809/1052050000 | 2558 | 868:246, 868:208, 868:236, 868:52, 868:0, 868:76, 868:80 |
| 868:282 | FPR | lo | 183737/1000000 | 541242567/2945740000 | 2578 | 868:246, 868:208, 868:236, 868:52, 868:48, 868:192, 868:202 |
| 868:283 | FPS | lo | 77153/500000 | 2272740473/14728700000 | 2579 | 868:246, 868:208, 868:236, 868:52, 868:50, 868:194, 868:251 |
| 868:284 | EPQ | lo | 54107/500000 | 7712901318261/71274122777000 | 2654 | 868:59, 868:212, 868:64, 868:52, 868:36, 868:170, 868:184 |
| 868:289 | AHS | hi | 659713/1000000 | 20262482089/30714100000 | 2676 | 868:247, 868:226, 868:70, 868:68, 868:246, 868:57 |
| 868:295 | FRS | lo | 2751/25000 | 33797967/307141000 | 2699 | 868:247, 868:226, 868:70, 868:68, 868:48, 868:202 |
| 868:297 | HRS | lo | 56471/500000 | 69378279/614282000 | 2703 | 868:247, 868:226, 868:70, 868:68, 868:56, 868:214 |
| 868:298 | EFP | lo | 4197/20000 | 20739827473/98831500000 | 2735 | 868:77, 868:144, 868:108, 868:281, 868:86, 868:122, 868:238 |
| 868:299 | EPS | lo | 120203/1000000 | 23759790413/197663000000 | 2740 | 868:77, 868:144, 868:108, 868:281, 868:96, 868:132, 868:239 |
| 868:305 | CPQ | lo | 94553/1000000 | 10912899/115415000 | 2930 | 868:99, 868:188, 868:108, 868:100, 868:80, 868:138, 868:146 |
| 868:312 | EHP | lo | 6677/40000 | 368068611/2204992000 | 2972 | 868:249, 868:208, 868:116, 868:108, 868:88, 868:170 |
| 868:314 | HPR | lo | 72721/500000 | 400875767/2756240000 | 2984 | 868:249, 868:208, 868:116, 868:108, 868:112, 868:214 |
| 868:315 | BPQ | lo | 142409/1000000 | 82901671001/582133888000 | 3078 | 868:123, 868:162, 868:138, 868:128, 868:281, 868:90, 868:100 |
| 868:317 | HPQ | lo | 10481/100000 | 7626684573/72766736000 | 3096 | 868:123, 868:162, 868:138, 868:128, 868:144, 868:312, 868:188 |
| 868:318 | ABS | lo | 147053/500000 | 1911109539/6498012500 | 3179 | 868:165, 868:295, 868:186, 868:166, 868:2, 868:4, 868:231 |
| 868:319 | ACS | lo | 295561/1000000 | 153644788743/519841000000 | 3180 | 868:165, 868:295, 868:186, 868:166, 868:16, 868:18, 868:241 |
| 868:325 | HPS | lo | 11803/100000 | 30678513/259920500 | 3208 | 868:165, 868:295, 868:186, 868:166, 868:312, 868:188, 868:314 |
| 868:326 | HQS | lo | 4223/20000 | 109764645079/519841000000 | 3209 | 868:165, 868:295, 868:186, 868:166, 868:170, 868:250, 868:214 |
| 868:327 | PQS | lo | 152409/1000000 | 39614350487/259920500000 | 3212 | 868:165, 868:295, 868:186, 868:166, 868:284, 868:259, 868:220 |
| 868:329 | AFS | hi | 551253/1000000 | 316242217008811/573679000000000 | 3299 | 868:203, 868:226, 868:295, 868:251, 868:245, 868:49 |
| 868:334 | BES | lo | 175911/1000000 | 1373540897/7808140000 | 3345 | 868:215, 868:226, 868:297, 868:326, 868:88, 868:92, 868:94 |
| 868:336 | BFS | hi | 557389/1000000 | 285150678382383607/511583000000000000 | 3385 | 868:269, 868:226, 868:224, 868:327, 868:100, 868:248, 868:105 |
| 868:345 | FHS | lo | 103681/1000000 | 26520903/255791500 | 3398 | 868:269, 868:226, 868:224, 868:327, 868:188, 868:250, 868:192 |
| 868:352 | ACF | lo | 4744/15625 | 4744/15625 | 3445 | 868:44, 868:22, 868:240 |
| 868:354 | ACH | hi | 94273/125000 | 94273/125000 | 3450 | 868:246, 868:25, 868:146 |
| 868:356 | AEF | lo | 100901/250000 | 100901/250000 | 3457 | 868:44, 868:235, 868:298 |
| 868:358 | AFQ | lo | 155629/500000 | 155629/500000 | 3475 | 868:44, 868:236, 868:259 |
| 868:359 | AFR | lo | 369737/1000000 | 369737/1000000 | 3476 | 868:44, 868:62, 868:282 |
| 868:361 | AFS | lo | 170153/500000 | 170153/500000 | 3477 | 868:44, 868:64, 868:283 |
| 868:364 | AHQ | lo | 58189/200000 | 58189/200000 | 3481 | 868:52, 868:236, 868:317 |
| 868:365 | AHR | lo | 165721/500000 | 165721/500000 | 3482 | 868:52, 868:62, 868:314 |
| 868:368 | BCH | lo | 313447/1000000 | 313447/1000000 | 3502 | 868:108, 868:281, 868:144 |
| 868:369 | BCH | hi | 156017/200000 | 780084811/1000000000 | 3503 | 868:249, 868:81, 868:146 |
| 868:370 | BEP | lo | 343623/1000000 | 343623/1000000 | 3518 | 868:315, 868:92, 868:284 |
| 868:372 | BHR | lo | 397703/1000000 | 397703/1000000 | 3529 | 868:108, 868:118, 868:314 |
| 868:373 | CEP | lo | 295767/1000000 | 295767/1000000 | 3540 | 868:305, 868:128, 868:284 |
| 868:375 | EFR | lo | 7401/25000 | 7401/25000 | 3562 | 868:186, 868:166, 868:295 |
| 868:377 | EPR | lo | 306203/1000000 | 306203/1000000 | 3571 | 868:186, 868:299, 868:224 |
| 868:378 | FQR | lo | 183537/500000 | 183537/500000 | 3582 | 868:295, 868:251, 868:226 |
| 868:379 | HQR | lo | 104273/250000 | 104273/250000 | 3586 | 868:297, 868:326, 868:226 |
| 868:380 | PQR | lo | 338409/1000000 | 338409/1000000 | 3587 | 868:224, 868:327, 868:226 |
| 868:382 | ACQ | lo | 24317/250000 | 22086849/227071000 | 77 | 868:10, 868:138, 868:358, 868:80, 868:248 |
| 868:383 | BFQ | lo | 82513/500000 | 22086849/133838000 | 77 | 868:10, 868:138, 868:358, 868:80, 868:25 |
| 868:384 | EFQ | lo | 80989/500000 | 15290781/94400000 | 138 | 868:356, 868:92, 868:36, 868:86, 868:3 |
| 868:385 | ABR | lo | 282447/1000000 | 27932165817/98893261250 | 141 | 868:2, 868:359, 868:4, 868:38, 868:31 |
| 868:387 | BFS | lo | 212803/1000000 | 84179297593/395573045000 | 149 | 868:4, 868:166, 868:361, 868:86, 868:31 |
| 868:388 | AES | lo | 156471/1000000 | 43607713383/278694500000 | 150 | 868:318, 868:166, 868:361, 868:334, 868:336 |
| 868:389 | EHQ | lo | 209691/1000000 | 59971701/286000000 | 160 | 868:36, 868:110, 868:364, 868:92, 868:11 |
| 868:390 | ABP | lo | 48343/500000 | 8883143/91875500 | 222 | 868:4, 868:64, 868:318, 868:44, 868:329 |
| 868:392 | ACP | lo | 20217/200000 | 18574487/183751000 | 357 | 868:352, 868:64, 868:319, 868:44, 868:329 |
| 868:393 | AEP | lo | 6361/62500 | 68918487/677152549 | 421 | 868:356, 868:62, 868:38, 868:44, 868:49 |
| 868:394 | APQ | lo | 93157/1000000 | 63082086/677152549 | 526 | 868:44, 868:66, 868:358, 868:62, 868:49 |
| 868:395 | FRS | lo | 2231/20000 | 68523423/614282000 | 544 | 868:359, 868:226, 868:70, 868:378, 868:247 |
| 868:396 | HRS | lo | 4533/40000 | 34806831/307141000 | 564 | 868:365, 868:226, 868:70, 868:379, 868:247 |
| 868:398 | CFH | lo | 172547/1000000 | 81096553337/469996136000 | 575 | 868:368, 868:238, 868:98, 868:124, 868:89 |
| 868:399 | CHQ | lo | 1618/15625 | 47027403/454142000 | 643 | 868:80, 868:250, 868:110, 868:138, 868:248 |
| 868:400 | EFH | lo | 157267/1000000 | 121513893000/772658499929 | 705 | 868:86, 868:192, 868:98, 868:375, 868:105 |
| 868:401 | EHS | lo | 54807/500000 | 92100045237/840216629000 | 709 | 868:88, 868:166, 868:334, 868:400, 868:87 |
| 868:402 | BPR | lo | 173813/1000000 | 30537712717/175692000000 | 721 | 868:370, 868:282, 868:100, 868:377, 868:277 |
| 868:403 | EHP | lo | 167109/1000000 | 184237743/1102496000 | 736 | 868:88, 868:317, 868:108, 868:389, 868:249 |
| 868:404 | FHQ | lo | 15241/100000 | 117761064000/772658499929 | 777 | 868:98, 868:378, 868:383, 868:192, 868:105 |
| 868:405 | HPR | lo | 72991/500000 | 8047280743/55124800000 | 790 | 868:108, 868:379, 868:372, 868:317, 868:249 |
| 868:406 | CFP | lo | 58319/500000 | 6404556273/54909376000 | 798 | 868:122, 868:144, 868:373, 868:398, 868:125 |
| 868:411 | FQS | lo | 41333/250000 | 78037137/472000000 | 2125 | 868:3, 868:92, 868:36, 868:10, 868:361, 868:387, 868:166 |
| 868:416 | EFP | lo | 210979/1000000 | 2486207627/11784125000 | 2279 | 868:354, 868:144, 868:52, 868:392, 868:356, 868:122, 868:400 |
| 868:417 | FPQ | lo | 31969/250000 | 1928851317/15083680000 | 2287 | 868:354, 868:144, 868:52, 868:392, 868:358, 868:138, 868:404 |
| 868:422 | PQR | hi | 511581/1000000 | 303410760299/593085000000 | 2464 | 868:245, 868:417, 868:394, 868:44, 868:247, 868:203 |
| 868:427 | EFP | hi | 254257/500000 | 9343982760359/18375100000000 | 2528 | 868:329, 868:283, 868:64, 868:44, 868:31, 868:166 |
| 868:432 | FPR | lo | 37099/200000 | 10928445097/58914800000 | 2578 | 868:246, 868:317, 868:394, 868:52, 868:359, 868:192, 868:378 |
| 868:433 | FPS | lo | 38877/250000 | 45808831519/294574000000 | 2579 | 868:246, 868:317, 868:394, 868:52, 868:361, 868:345, 868:411 |
| 868:434 | BCP | lo | 64019/500000 | 42234369/329856500 | 2640 | 868:289, 868:325, 868:64, 868:52, 868:0, 868:368, 868:84 |
| 868:435 | EPQ | lo | 109449/1000000 | 18051393/164928250 | 2654 | 868:289, 868:325, 868:64, 868:52, 868:36, 868:389, 868:184 |
| 868:436 | EPS | lo | 30109/250000 | 105562671/876500000 | 2740 | 868:369, 868:144, 868:108, 868:434, 868:334, 868:132, 868:401 |
| 868:440 | CPQ | lo | 947/10000 | 54649311/577075000 | 2930 | 868:99, 868:188, 868:108, 868:100, 868:80, 868:138, 868:399 |
| 868:446 | BHQ | lo | 3547/10000 | 103241530459/291066944000 | 3077 | 868:123, 868:384, 868:138, 868:128, 868:368, 868:88, 868:98 |
| 868:447 | BPQ | lo | 35697/250000 | 20780443937/145533472000 | 3078 | 868:123, 868:384, 868:138, 868:128, 868:434, 868:370, 868:100 |
| 868:449 | HPQ | lo | 104839/1000000 | 1089831939/10395248000 | 3096 | 868:123, 868:384, 868:138, 868:128, 868:144, 868:403, 868:188 |
| 868:450 | ABS | lo | 294793/1000000 | 95778699/324900625 | 3179 | 868:165, 868:395, 868:186, 868:166, 868:2, 868:4, 868:385 |
| 868:451 | ACS | lo | 295623/1000000 | 21953892249/74263000000 | 3180 | 868:165, 868:395, 868:186, 868:166, 868:16, 868:352, 868:241 |
| 868:452 | AQS | lo | 181073/1000000 | 94129299/519841000 | 3185 | 868:165, 868:395, 868:186, 868:166, 868:36, 868:358, 868:66 |
| 868:458 | HPS | lo | 118381/1000000 | 1230787959/10396820000 | 3208 | 868:165, 868:395, 868:186, 868:166, 868:403, 868:188, 868:405 |
| 868:459 | HQS | lo | 212053/1000000 | 2755852209/12996025000 | 3209 | 868:165, 868:395, 868:186, 868:166, 868:389, 868:404, 868:379 |
| 868:460 | PQS | lo | 76853/500000 | 11414724087/74263000000 | 3212 | 868:165, 868:395, 868:186, 868:166, 868:435, 868:417, 868:380 |
| 868:461 | BCS | lo | 60717/500000 | 87554571/721000000 | 3227 | 868:173, 868:396, 868:186, 868:401, 868:72, 868:368, 868:82 |
| 868:463 | AFS | hi | 68879/125000 | 316115275009821/573679000000000 | 3299 | 868:203, 868:226, 868:395, 868:411, 868:245, 868:49 |
| 868:468 | BES | lo | 4399/25000 | 68696187547/390407000000 | 3345 | 868:215, 868:226, 868:396, 868:459, 868:88, 868:92, 868:94 |
| 868:478 | FHS | lo | 519/5000 | 17700721/170527000 | 3398 | 868:422, 868:226, 868:224, 868:460, 868:188, 868:404, 868:192 |
| 868:484 | ABF | lo | 141343/500000 | 141343/500000 | 3427 | 868:44, 868:390, 868:100 |
| 868:485 | ACE | lo | 70817/250000 | 70817/250000 | 3441 | 868:36, 868:382, 868:128 |
| 868:486 | ACF | lo | 310723/1000000 | 310723/1000000 | 3445 | 868:44, 868:392, 868:406 |
| 868:488 | ACH | hi | 94159/125000 | 94159/125000 | 3450 | 868:246, 868:25, 868:399 |
| 868:489 | AEF | lo | 81151/200000 | 81151/200000 | 3457 | 868:44, 868:393, 868:416 |
| 868:491 | AER | lo | 342471/1000000 | 342471/1000000 | 3470 | 868:70, 868:388, 868:186 |
| 868:492 | AFQ | lo | 314033/1000000 | 314033/1000000 | 3475 | 868:44, 868:394, 868:417 |
| 868:493 | AFR | lo | 74299/200000 | 74299/200000 | 3476 | 868:44, 868:62, 868:432 |
| 868:495 | AFS | lo | 85377/250000 | 85377/250000 | 3477 | 868:44, 868:64, 868:433 |
| 868:498 | AHQ | lo | 72749/250000 | 72749/250000 | 3481 | 868:52, 868:394, 868:449 |
| 868:499 | AHR | lo | 165991/500000 | 165991/500000 | 3482 | 868:52, 868:62, 868:405 |
| 868:501 | AQR | lo | 367073/1000000 | 367073/1000000 | 3490 | 868:70, 868:452, 868:226 |
| 868:502 | BCH | lo | 157019/500000 | 157019/500000 | 3502 | 868:108, 868:434, 868:144 |
| 868:503 | BCH | hi | 779173/1000000 | 779172811/1000000000 | 3503 | 868:249, 868:81, 868:399 |
| 868:504 | BEF | lo | 105001/250000 | 105001/250000 | 3511 | 868:383, 868:92, 868:384 |
| 868:505 | BEP | lo | 345237/1000000 | 345237/1000000 | 3518 | 868:447, 868:92, 868:435 |
| 868:507 | BHR | lo | 82559/200000 | 82559/200000 | 3529 | 868:108, 868:402, 868:405 |
| 868:508 | CEF | lo | 173989/500000 | 173989/500000 | 3533 | 868:138, 868:128, 868:384 |
| 868:509 | CEH | lo | 406243/1000000 | 406243/1000000 | 3537 | 868:399, 868:128, 868:389 |
| 868:510 | CEP | lo | 297149/1000000 | 297149/1000000 | 3540 | 868:440, 868:128, 868:435 |
| 868:511 | EFR | lo | 5951/20000 | 5951/20000 | 3562 | 868:186, 868:166, 868:395 |
| 868:513 | EPR | lo | 76609/250000 | 76609/250000 | 3571 | 868:186, 868:436, 868:224 |
| 868:514 | FQR | lo | 184941/500000 | 184941/500000 | 3582 | 868:395, 868:411, 868:226 |
| 868:515 | HQR | lo | 209189/500000 | 209189/500000 | 3586 | 868:396, 868:459, 868:226 |
| 868:516 | PQR | lo | 169853/500000 | 169853/500000 | 3587 | 868:224, 868:460, 868:226 |
| 868:517 | BER | lo | 68193/500000 | 64374507/472000000 | 56 | 868:2, 868:130, 868:491, 868:72, 868:17 |
| 868:518 | ACQ | lo | 24459/250000 | 44431773/454142000 | 77 | 868:10, 868:138, 868:492, 868:80, 868:248 |
| 868:519 | BFQ | lo | 16599/100000 | 44431773/267676000 | 77 | 868:10, 868:138, 868:492, 868:80, 868:25 |
| 868:520 | EFQ | lo | 81351/500000 | 76795587/472000000 | 138 | 868:489, 868:92, 868:36, 868:504, 868:3 |
| 868:521 | ABR | lo | 286589/1000000 | 113366980233/395573045000 | 141 | 868:2, 868:493, 868:484, 868:491, 868:31 |
| 868:523 | BFS | lo | 214529/1000000 | 1515397536/7063804375 | 149 | 868:484, 868:166, 868:495, 868:504, 868:31 |
| 868:524 | AES | lo | 31399/200000 | 2187687417/13934725000 | 150 | 868:450, 868:166, 868:495, 868:468, 868:336 |
| 868:525 | EHQ | lo | 52491/250000 | 938277/4468750 | 160 | 868:36, 868:446, 868:498, 868:92, 868:11 |
| 868:527 | ABP | lo | 97463/1000000 | 53705547/551032000 | 222 | 868:484, 868:64, 868:450, 868:44, 868:463 |
| 868:529 | ACP | lo | 20467/200000 | 28195089/275516000 | 357 | 868:486, 868:64, 868:451, 868:44, 868:463 |
| 868:530 | AEP | lo | 102761/1000000 | 69585018/677152549 | 421 | 868:489, 868:62, 868:491, 868:44, 868:49 |
| 868:531 | APQ | lo | 46771/500000 | 63342858/677152549 | 526 | 868:44, 868:501, 868:492, 868:62, 868:49 |
| 868:532 | FRS | lo | 112241/1000000 | 68948061/614282000 | 544 | 868:493, 868:226, 868:70, 868:514, 868:247 |
| 868:533 | HRS | lo | 113601/1000000 | 1744587/15357050 | 564 | 868:499, 868:226, 868:70, 868:515, 868:247 |
| 868:535 | CFH | lo | 86559/500000 | 81364805573/469996136000 | 575 | 868:502, 868:400, 868:98, 868:509, 868:89 |
| 868:536 | CHQ | lo | 51923/500000 | 4716123/45414200 | 643 | 868:80, 868:404, 868:446, 868:138, 868:248 |
| 868:537 | EFH | lo | 31599/200000 | 122076822000/772658499929 | 705 | 868:504, 868:192, 868:98, 868:511, 868:105 |
| 868:538 | EHS | lo | 6861/62500 | 461179251/4201083145 | 709 | 868:88, 868:166, 868:468, 868:537, 868:87 |
| 868:539 | BPR | lo | 181977/1000000 | 18507657063/101702800000 | 721 | 868:505, 868:432, 868:100, 868:513, 868:427 |
| 868:540 | EHP | lo | 20899/125000 | 1843287063/11024960000 | 736 | 868:88, 868:449, 868:108, 868:525, 868:249 |
| 868:541 | FHQ | lo | 7677/50000 | 118634148000/772658499929 | 777 | 868:98, 868:514, 868:519, 868:192, 868:105 |
| 868:542 | HPR | lo | 149091/1000000 | 16437233801/110249600000 | 790 | 868:108, 868:515, 868:507, 868:449, 868:249 |
| 868:543 | CFP | lo | 117401/1000000 | 41901897291/356910944000 | 798 | 868:508, 868:144, 868:510, 868:535, 868:125 |
| 868:545 | BFQ | hi | 56677/125000 | 107006078947/236000000000 | 2106 | 868:3, 868:92, 868:36, 868:10, 868:484, 868:87 |
| 868:549 | FQS | lo | 165909/1000000 | 78309441/472000000 | 2125 | 868:3, 868:92, 868:36, 868:10, 868:495, 868:523, 868:166 |
| 868:552 | EFP | lo | 212039/1000000 | 998270679/4707950000 | 2279 | 868:488, 868:144, 868:52, 868:529, 868:489, 868:508, 868:537 |
| 868:553 | FPQ | lo | 128513/1000000 | 74465943/579440000 | 2287 | 868:488, 868:144, 868:52, 868:529, 868:492, 868:138, 868:541 |
| 868:557 | PQR | hi | 102311/200000 | 18962195509/37067812500 | 2464 | 868:245, 868:553, 868:531, 868:44, 868:247, 868:203 |
| 868:561 | EFP | hi | 1271/2500 | 3501807994061/6887900000000 | 2528 | 868:463, 868:433, 868:64, 868:44, 868:31, 868:166 |
| 868:565 | FPR | lo | 37253/200000 | 21947585461/117829600000 | 2578 | 868:246, 868:449, 868:531, 868:52, 868:493, 868:192, 868:514 |
| 868:566 | FPS | lo | 2436/15625 | 22962692103/147287000000 | 2579 | 868:246, 868:449, 868:531, 868:52, 868:495, 868:478, 868:549 |
| 868:567 | BCP | lo | 16021/125000 | 16910841/131942600 | 2640 | 868:289, 868:458, 868:64, 868:52, 868:0, 868:502, 868:461 |
| 868:568 | EPQ | lo | 6843/62500 | 72230961/659713000 | 2654 | 868:289, 868:458, 868:64, 868:52, 868:36, 868:525, 868:184 |
| 868:569 | EPS | lo | 60289/500000 | 11743932531/97396625000 | 2740 | 868:503, 868:144, 868:108, 868:567, 868:468, 868:132, 868:538 |
| 868:574 | CPQ | lo | 94747/1000000 | 54676653/577075000 | 2930 | 868:99, 868:188, 868:108, 868:100, 868:80, 868:138, 868:536 |
| 868:580 | ABQ | lo | 164317/1000000 | 5978434599/36383368000 | 3065 | 868:123, 868:520, 868:138, 868:128, 868:0, 868:2, 868:484 |
| 868:581 | BHQ | lo | 88727/250000 | 51651039357/145533472000 | 3077 | 868:123, 868:520, 868:138, 868:128, 868:502, 868:88, 868:98 |
| 868:582 | BPQ | lo | 229/1600 | 2082959913/14553347200 | 3078 | 868:123, 868:520, 868:138, 868:128, 868:567, 868:505, 868:100 |
| 868:584 | HPQ | lo | 26213/250000 | 238430889/2273960500 | 3096 | 868:123, 868:520, 868:138, 868:128, 868:144, 868:540, 868:188 |
| 868:585 | ABS | lo | 297859/1000000 | 19354951631/64980125000 | 3179 | 868:165, 868:532, 868:186, 868:166, 868:2, 868:484, 868:521 |
| 868:586 | ACS | lo | 297437/1000000 | 38655073097/129960250000 | 3180 | 868:165, 868:532, 868:186, 868:166, 868:485, 868:486, 868:241 |
| 868:587 | AQS | lo | 90787/500000 | 94390071/519841000 | 3185 | 868:165, 868:532, 868:186, 868:166, 868:36, 868:492, 868:501 |
| 868:593 | HPS | lo | 119053/1000000 | 3868066267/32490062500 | 3208 | 868:165, 868:532, 868:186, 868:166, 868:540, 868:188, 868:542 |
| 868:594 | HQS | lo | 106551/500000 | 27694851831/129960250000 | 3209 | 868:165, 868:532, 868:186, 868:166, 868:525, 868:541, 868:515 |
| 868:595 | PQS | lo | 154077/1000000 | 10011993801/64980125000 | 3212 | 868:165, 868:532, 868:186, 868:166, 868:568, 868:553, 868:516 |
| 868:596 | BCS | lo | 121511/1000000 | 425289/3500000 | 3227 | 868:173, 868:533, 868:186, 868:538, 868:72, 868:502, 868:82 |
| 868:598 | AFS | hi | 550931/1000000 | 158028592166731/286839500000000 | 3299 | 868:203, 868:226, 868:532, 868:549, 868:245, 868:49 |
| 868:601 | CES | lo | 67167/500000 | 77065101/573679000 | 3310 | 868:203, 868:226, 868:532, 868:549, 868:508, 868:128, 868:130 |
| 868:604 | BES | lo | 176287/1000000 | 34411848843/195203500000 | 3345 | 868:215, 868:226, 868:533, 868:594, 868:88, 868:92, 868:517 |
| 868:606 | BFS | hi | 278623/500000 | 57012305188877119/102311000000000000 | 3385 | 868:557, 868:226, 868:224, 868:595, 868:100, 868:545, 868:105 |
| 868:615 | FHS | lo | 52003/500000 | 10640967/102311000 | 3398 | 868:557, 868:226, 868:224, 868:595, 868:188, 868:541, 868:192 |
| 868:621 | ABE | lo | 350317/1000000 | 350317/1000000 | 3423 | 868:36, 868:580, 868:92 |
| 868:623 | ABF | lo | 283463/1000000 | 283463/1000000 | 3427 | 868:44, 868:527, 868:100 |
| 868:624 | ACE | lo | 70959/250000 | 70959/250000 | 3441 | 868:36, 868:518, 868:128 |
| 868:625 | ACF | lo | 9773/31250 | 9773/31250 | 3445 | 868:44, 868:529, 868:543 |
| 868:627 | ACH | hi | 376489/500000 | 376489/500000 | 3450 | 868:246, 868:25, 868:536 |
| 868:628 | AEF | lo | 2039/5000 | 2039/5000 | 3457 | 868:44, 868:530, 868:552 |
| 868:630 | AER | lo | 68599/200000 | 68599/200000 | 3470 | 868:70, 868:524, 868:186 |
| 868:631 | AFQ | lo | 63011/200000 | 63011/200000 | 3475 | 868:44, 868:531, 868:553 |
| 868:632 | AFR | lo | 74453/200000 | 74453/200000 | 3476 | 868:44, 868:62, 868:565 |
| 868:634 | AFS | lo | 21369/62500 | 21369/62500 | 3477 | 868:44, 868:64, 868:566 |
| 868:637 | AHQ | lo | 145697/500000 | 145697/500000 | 3481 | 868:52, 868:531, 868:584 |
| 868:638 | AHR | lo | 335091/1000000 | 335091/1000000 | 3482 | 868:52, 868:62, 868:542 |
| 868:640 | AQR | lo | 183787/500000 | 183787/500000 | 3490 | 868:70, 868:587, 868:226 |
| 868:642 | BCH | lo | 39271/125000 | 39271/125000 | 3502 | 868:108, 868:567, 868:144 |
| 868:643 | BCH | hi | 778879/1000000 | 778878811/1000000000 | 3503 | 868:249, 868:81, 868:536 |
| 868:644 | BEF | lo | 105423/250000 | 105423/250000 | 3511 | 868:519, 868:92, 868:520 |
| 868:645 | BEP | lo | 345613/1000000 | 345613/1000000 | 3518 | 868:582, 868:92, 868:568 |
| 868:647 | BHR | lo | 106017/250000 | 106017/250000 | 3529 | 868:108, 868:539, 868:542 |
| 868:648 | CEF | lo | 174351/500000 | 174351/500000 | 3533 | 868:138, 868:128, 868:520 |
| 868:649 | CEH | lo | 40681/100000 | 40681/100000 | 3537 | 868:536, 868:128, 868:525 |
| 868:650 | CEP | lo | 59447/200000 | 59447/200000 | 3540 | 868:574, 868:128, 868:568 |
| 868:651 | EFR | lo | 298241/1000000 | 298241/1000000 | 3562 | 868:186, 868:166, 868:532 |
| 868:653 | EPR | lo | 153289/500000 | 153289/500000 | 3571 | 868:186, 868:569, 868:224 |
| 868:654 | FQR | lo | 7423/20000 | 7423/20000 | 3582 | 868:532, 868:549, 868:226 |
| 868:655 | HQR | lo | 419703/1000000 | 419703/1000000 | 3586 | 868:533, 868:594, 868:226 |
| 868:656 | PQR | lo | 340077/1000000 | 340077/1000000 | 3587 | 868:224, 868:595, 868:226 |
| 868:657 | BER | lo | 27321/200000 | 1007469/7375000 | 56 | 868:621, 868:130, 868:630, 868:72, 868:17 |
| 868:658 | ACQ | lo | 98323/1000000 | 11145399/113354000 | 77 | 868:580, 868:138, 868:631, 868:80, 868:545 |
| 868:659 | BFQ | lo | 3331/20000 | 11145399/66919000 | 77 | 868:580, 868:138, 868:631, 868:80, 868:25 |
| 868:660 | EFQ | lo | 81719/500000 | 19285689/118000000 | 138 | 868:628, 868:92, 868:36, 868:644, 868:3 |
| 868:661 | ABR | lo | 28773/100000 | 22763714969/79114609000 | 141 | 868:621, 868:632, 868:623, 868:630, 868:31 |
| 868:663 | BFS | lo | 5389/25000 | 21317530071/98893261250 | 149 | 868:623, 868:166, 868:634, 868:644, 868:31 |
| 868:664 | AES | lo | 157873/1000000 | 10996764681/69655750000 | 150 | 868:585, 868:166, 868:634, 868:604, 868:606 |
| 868:665 | EHQ | lo | 210161/1000000 | 30053043/143000000 | 160 | 868:36, 868:581, 868:637, 868:92, 868:11 |
| 868:667 | ABP | lo | 9813/100000 | 27031473/275465500 | 222 | 868:623, 868:64, 868:585, 868:44, 868:598 |
| 868:669 | ACP | lo | 103/1000 | 56746089/550931000 | 357 | 868:625, 868:64, 868:586, 868:44, 868:598 |
| 868:670 | AEP | lo | 51557/500000 | 69823935/677152549 | 421 | 868:628, 868:62, 868:630, 868:44, 868:49 |
| 868:671 | APQ | lo | 11719/125000 | 63484497/677152549 | 526 | 868:44, 868:640, 868:631, 868:62, 868:49 |
| 868:675 | CFH | lo | 173551/1000000 | 4078424079/23499806800 | 575 | 868:642, 868:537, 868:98, 868:649, 868:89 |
| 868:676 | CHQ | lo | 104287/1000000 | 1477677/14169250 | 643 | 868:80, 868:541, 868:581, 868:138, 868:545 |
| 868:677 | EFH | lo | 9903/62500 | 122426595000/772658499929 | 705 | 868:644, 868:192, 868:98, 868:651, 868:105 |
| 868:678 | EHS | lo | 27483/250000 | 11545921572/105027078625 | 709 | 868:88, 868:166, 868:604, 868:677, 868:87 |
| 868:679 | BPR | lo | 36541/200000 | 18577471889/101680000000 | 721 | 868:645, 868:565, 868:100, 868:653, 868:561 |
| 868:680 | EHP | lo | 167241/1000000 | 230479203/1378120000 | 736 | 868:88, 868:584, 868:108, 868:665, 868:249 |
| 868:681 | FHQ | lo | 30813/200000 | 119040000000/772658499929 | 777 | 868:98, 868:654, 868:659, 868:192, 868:105 |
| 868:682 | HPR | lo | 37867/250000 | 10437094617/68906000000 | 790 | 868:108, 868:655, 868:647, 868:584, 868:249 |
| 868:683 | CFP | lo | 117697/1000000 | 16802943497/142764377600 | 798 | 868:648, 868:144, 868:650, 868:675, 868:125 |
| 868:685 | AQR | hi | 307123/500000 | 28992393499979053/47200000000000000 | 2102 | 868:3, 868:92, 868:36, 868:580, 868:13, 868:39 |
| 868:686 | BFQ | hi | 453263/1000000 | 106969948447/236000000000 | 2106 | 868:3, 868:92, 868:36, 868:580, 868:623, 868:87 |
| 868:690 | FQS | lo | 166191/1000000 | 166191/1000000 | 2125 | 868:3, 868:92, 868:36, 868:580, 868:634, 868:663, 868:166 |
| 868:694 | EFP | lo | 212743/1000000 | 10011951009/47061125000 | 2279 | 868:627, 868:144, 868:52, 868:669, 868:628, 868:648, 868:677 |
| 868:695 | FPQ | lo | 128779/1000000 | 24241941/188244500 | 2287 | 868:627, 868:144, 868:52, 868:669, 868:631, 868:138, 868:681 |
| 868:699 | PQR | hi | 127879/250000 | 151685986763/296542500000 | 2464 | 868:245, 868:695, 868:671, 868:44, 868:685, 868:203 |
| 868:703 | EFP | hi | 508349/1000000 | 28006473376979/55093100000000 | 2528 | 868:598, 868:566, 868:64, 868:44, 868:31, 868:166 |
| 868:707 | FPR | lo | 11663/62500 | 5497010389/29457400000 | 2578 | 868:246, 868:584, 868:671, 868:52, 868:632, 868:192, 868:654 |
| 868:708 | FPS | lo | 156161/1000000 | 11500276623/73643500000 | 2579 | 868:246, 868:584, 868:671, 868:52, 868:634, 868:615, 868:690 |
| 868:709 | BCP | lo | 128197/1000000 | 10571682/82464125 | 2640 | 868:289, 868:593, 868:64, 868:52, 868:0, 868:642, 868:596 |
| 868:710 | EPQ | lo | 27379/250000 | 36124641/329856500 | 2654 | 868:289, 868:593, 868:64, 868:52, 868:36, 868:665, 868:184 |
| 868:714 | AHS | hi | 82463/125000 | 20261009167/30712300000 | 2676 | 868:685, 868:226, 868:70, 868:587, 868:246, 868:57 |
| 868:717 | FRS | lo | 28139/250000 | 13827519/122849200 | 2699 | 868:685, 868:226, 868:70, 868:587, 868:632, 868:654 |
| 868:718 | HRS | lo | 114279/1000000 | 35097921/307123000 | 2703 | 868:685, 868:226, 868:70, 868:587, 868:638, 868:655 |
| 868:719 | EPS | lo | 1887/15625 | 23516031807/194719750000 | 2740 | 868:643, 868:144, 868:108, 868:709, 868:604, 868:601, 868:678 |
| 868:724 | CPQ | lo | 47409/500000 | 27358833/288537500 | 2930 | 868:99, 868:188, 868:108, 868:100, 868:80, 868:138, 868:676 |
| 868:730 | ABQ | lo | 20567/125000 | 2993187237/18191684000 | 3065 | 868:123, 868:660, 868:138, 868:128, 868:0, 868:621, 868:623 |
| 868:731 | BHQ | lo | 354989/1000000 | 12915699521/36383368000 | 3077 | 868:123, 868:660, 868:138, 868:128, 868:642, 868:88, 868:98 |
| 868:732 | BPQ | lo | 71619/500000 | 8338398787/58213388800 | 3078 | 868:123, 868:660, 868:138, 868:128, 868:709, 868:645, 868:100 |
| 868:734 | HPQ | lo | 5243/50000 | 7630358073/72766736000 | 3096 | 868:123, 868:660, 868:138, 868:128, 868:144, 868:680, 868:188 |
| 868:735 | ABS | lo | 298701/1000000 | 155277339207/519841000000 | 3179 | 868:165, 868:717, 868:186, 868:166, 868:621, 868:623, 868:661 |
| 868:736 | ACS | lo | 149081/500000 | 38749280769/129960250000 | 3180 | 868:165, 868:717, 868:186, 868:166, 868:624, 868:625, 868:241 |
| 868:737 | AQS | lo | 181847/1000000 | 1350453/7426300 | 3185 | 868:165, 868:717, 868:186, 868:166, 868:36, 868:631, 868:640 |
| 868:743 | HPS | lo | 59767/500000 | 15534751749/129960250000 | 3208 | 868:165, 868:717, 868:186, 868:166, 868:680, 868:188, 868:682 |
| 868:744 | HQS | lo | 213733/1000000 | 111107579041/519841000000 | 3209 | 868:165, 868:717, 868:186, 868:166, 868:665, 868:681, 868:655 |
| 868:745 | PQS | lo | 154209/1000000 | 20041134739/129960250000 | 3212 | 868:165, 868:717, 868:186, 868:166, 868:710, 868:695, 868:656 |
| 868:748 | AFS | hi | 110177/200000 | 316030703055527/573679000000000 | 3299 | 868:203, 868:226, 868:717, 868:690, 868:245, 868:49 |
| 868:751 | CES | lo | 33613/250000 | 77132433/573679000 | 3310 | 868:203, 868:226, 868:717, 868:690, 868:648, 868:128, 868:130 |
| 868:754 | BES | lo | 88191/500000 | 27544315893/156162800000 | 3345 | 868:215, 868:226, 868:718, 868:744, 868:88, 868:92, 868:657 |
| 868:756 | BFS | hi | 557201/1000000 | 71254290815722091/127879000000000000 | 3385 | 868:699, 868:226, 868:224, 868:745, 868:100, 868:686, 868:105 |
| 868:765 | FHS | lo | 52051/500000 | 53250033/511516000 | 3398 | 868:699, 868:226, 868:224, 868:745, 868:188, 868:681, 868:192 |
| 868:771 | ABE | lo | 43817/125000 | 43817/125000 | 3423 | 868:36, 868:730, 868:92 |
| 868:773 | ABF | lo | 28413/100000 | 28413/100000 | 3427 | 868:44, 868:667, 868:100 |
| 868:774 | ACE | lo | 284323/1000000 | 284323/1000000 | 3441 | 868:36, 868:658, 868:128 |
| 868:775 | ACF | lo | 313697/1000000 | 313697/1000000 | 3445 | 868:44, 868:669, 868:683 |
| 868:777 | ACH | hi | 752537/1000000 | 752537/1000000 | 3450 | 868:246, 868:25, 868:676 |
| 868:778 | AEF | lo | 408857/1000000 | 408857/1000000 | 3457 | 868:44, 868:670, 868:694 |
| 868:780 | AER | lo | 343873/1000000 | 343873/1000000 | 3470 | 868:70, 868:664, 868:186 |
| 868:781 | AFQ | lo | 315531/1000000 | 315531/1000000 | 3475 | 868:44, 868:671, 868:695 |
| 868:782 | AFR | lo | 5822/15625 | 5822/15625 | 3476 | 868:44, 868:62, 868:707 |
| 868:784 | AFS | lo | 342161/1000000 | 342161/1000000 | 3477 | 868:44, 868:64, 868:708 |
| 868:787 | AHQ | lo | 72903/250000 | 72903/250000 | 3481 | 868:52, 868:671, 868:734 |
| 868:788 | AHR | lo | 84367/250000 | 84367/250000 | 3482 | 868:52, 868:62, 868:682 |
| 868:790 | AQR | lo | 367847/1000000 | 367847/1000000 | 3490 | 868:70, 868:737, 868:226 |
| 868:792 | BCH | lo | 314197/1000000 | 314197/1000000 | 3502 | 868:108, 868:709, 868:144 |
| 868:793 | BCH | hi | 389219/500000 | 778437811/1000000000 | 3503 | 868:249, 868:81, 868:676 |
| 868:794 | BEF | lo | 105747/250000 | 105747/250000 | 3511 | 868:659, 868:92, 868:660 |
| 868:795 | BEP | lo | 172877/500000 | 172877/500000 | 3518 | 868:732, 868:92, 868:710 |
| 868:797 | BHR | lo | 427173/1000000 | 427173/1000000 | 3529 | 868:108, 868:679, 868:682 |
| 868:798 | CEF | lo | 174719/500000 | 174719/500000 | 3533 | 868:138, 868:128, 868:660 |
| 868:799 | CEH | lo | 50931/125000 | 50931/125000 | 3537 | 868:676, 868:128, 868:665 |
| 868:800 | CEP | lo | 148667/500000 | 148667/500000 | 3540 | 868:724, 868:128, 868:710 |
| 868:801 | EFR | lo | 74639/250000 | 74639/250000 | 3562 | 868:186, 868:166, 868:717 |
| 868:803 | EPR | lo | 19173/62500 | 19173/62500 | 3571 | 868:186, 868:719, 868:224 |
| 868:804 | FQR | lo | 371747/1000000 | 371747/1000000 | 3582 | 868:717, 868:690, 868:226 |
| 868:805 | HQR | lo | 105253/250000 | 105253/250000 | 3586 | 868:718, 868:744, 868:226 |
| 868:806 | PQR | lo | 340209/1000000 | 340209/1000000 | 3587 | 868:224, 868:745, 868:226 |
| 868:807 | BER | lo | 68411/500000 | 64580037/472000000 | 56 | 868:771, 868:130, 868:780, 868:72, 868:17 |
| 868:808 | ACQ | lo | 98499/1000000 | 44646231/453263000 | 77 | 868:730, 868:138, 868:781, 868:80, 868:686 |
| 868:809 | BFQ | lo | 20849/125000 | 44646231/267676000 | 77 | 868:730, 868:138, 868:781, 868:80, 868:25 |
| 868:810 | EFQ | lo | 163901/1000000 | 15472317/94400000 | 138 | 868:778, 868:92, 868:36, 868:794, 868:3 |
| 868:811 | ABR | lo | 28859/100000 | 114158576689/395573045000 | 141 | 868:771, 868:782, 868:773, 868:780, 868:31 |
| 868:813 | BFS | lo | 13521/62500 | 42788521767/197786522500 | 149 | 868:773, 868:166, 868:784, 868:794, 868:31 |
| 868:814 | AES | lo | 31633/200000 | 44065117251/278600500000 | 150 | 868:735, 868:166, 868:784, 868:754, 868:756 |
| 868:815 | EHQ | lo | 105129/500000 | 60133893/286000000 | 160 | 868:36, 868:731, 868:787, 868:92, 868:11 |
| 868:817 | ABP | lo | 98393/1000000 | 54203283/550885000 | 222 | 868:773, 868:64, 868:735, 868:44, 868:748 |
| 868:819 | ACP | lo | 103293/1000000 | 56902887/550885000 | 357 | 868:775, 868:64, 868:736, 868:44, 868:748 |
| 868:820 | AEP | lo | 103379/1000000 | 70003890/677152549 | 421 | 868:778, 868:62, 868:780, 868:44, 868:49 |
| 868:821 | APQ | lo | 18771/200000 | 63554154/677152549 | 526 | 868:44, 868:790, 868:781, 868:62, 868:49 |
| 868:825 | CFH | lo | 173897/1000000 | 10216367391/58749517000 | 575 | 868:792, 868:677, 868:98, 868:799, 868:89 |
| 868:826 | CHQ | lo | 104447/1000000 | 23671011/226631500 | 643 | 868:80, 868:681, 868:731, 868:138, 868:686 |
| 868:827 | EFH | lo | 79359/500000 | 122635008000/772658499929 | 705 | 868:794, 868:192, 868:98, 868:801, 868:105 |
| 868:828 | EHS | lo | 110007/1000000 | 23107512069/210054157250 | 709 | 868:88, 868:166, 868:754, 868:827, 868:87 |
| 868:829 | BPR | lo | 183043/1000000 | 2907808951/15885906250 | 721 | 868:795, 868:707, 868:100, 868:803, 868:703 |
| 868:830 | EHP | lo | 41817/250000 | 18441249/110249600 | 736 | 868:88, 868:734, 868:108, 868:815, 868:249 |
| 868:831 | FHQ | lo | 15431/100000 | 119229069000/772658499929 | 777 | 868:98, 868:804, 868:809, 868:192, 868:105 |
| 868:832 | HPR | lo | 76143/500000 | 4197373839/27562400000 | 790 | 868:108, 868:805, 868:797, 868:734, 868:249 |
| 868:833 | CFP | lo | 117961/1000000 | 42101612299/356910944000 | 798 | 868:798, 868:144, 868:800, 868:825, 868:125 |
| 868:835 | AQR | hi | 614233/1000000 | 3623969428535303/5900000000000000 | 2102 | 868:3, 868:92, 868:36, 868:730, 868:13, 868:39 |
| 868:836 | BFQ | hi | 113283/250000 | 106938932947/236000000000 | 2106 | 868:3, 868:92, 868:36, 868:730, 868:773, 868:87 |
| 868:840 | FQS | lo | 83197/500000 | 78538221/472000000 | 2125 | 868:3, 868:92, 868:36, 868:730, 868:784, 868:813, 868:166 |
| 868:844 | EFP | lo | 533/2500 | 80220527283/376268500000 | 2279 | 868:777, 868:144, 868:52, 868:819, 868:778, 868:798, 868:827 |
| 868:845 | FPQ | lo | 32229/250000 | 9701421783/75253700000 | 2287 | 868:777, 868:144, 868:52, 868:819, 868:781, 868:138, 868:831 |
| 868:849 | PQR | hi | 1023/2000 | 20224167609/39539000000 | 2464 | 868:245, 868:845, 868:821, 868:44, 868:835, 868:203 |
| 868:853 | EFP | hi | 20333/40000 | 5600566820993/11017700000000 | 2528 | 868:748, 868:708, 868:64, 868:44, 868:31, 868:166 |
| 868:856 | BCP | lo | 64119/500000 | 15110241687/117829600000 | 2558 | 868:246, 868:734, 868:821, 868:52, 868:0, 868:792, 868:80 |
| 868:857 | FPR | lo | 186767/1000000 | 392978321/2104100000 | 2578 | 868:246, 868:734, 868:821, 868:52, 868:782, 868:192, 868:804 |
| 868:858 | FPS | lo | 78153/500000 | 23021876959/147287000000 | 2579 | 868:246, 868:734, 868:821, 868:52, 868:784, 868:765, 868:840 |
| 868:859 | EPQ | lo | 10953/100000 | 36128733/329852000 | 2654 | 868:714, 868:743, 868:64, 868:52, 868:36, 868:815, 868:184 |
| 868:863 | AHS | hi | 659701/1000000 | 40520954557/61423300000 | 2676 | 868:835, 868:226, 868:70, 868:737, 868:246, 868:57 |
| 868:866 | FRS | lo | 112701/1000000 | 13845003/122846600 | 2699 | 868:835, 868:226, 868:70, 868:737, 868:782, 868:804 |
| 868:867 | HRS | lo | 2871/25000 | 1763466/15355825 | 2703 | 868:835, 868:226, 868:70, 868:737, 868:788, 868:805 |
| 868:868 | EPS | lo | 120857/1000000 | 47039944533/389219000000 | 2740 | 868:793, 868:144, 868:108, 868:856, 868:754, 868:751, 868:828 |
| 868:873 | CPQ | lo | 23711/250000 | 27366273/288537500 | 2930 | 868:99, 868:188, 868:108, 868:100, 868:80, 868:138, 868:826 |
| 868:879 | ABQ | lo | 164677/1000000 | 5991524349/36383368000 | 3065 | 868:123, 868:810, 868:138, 868:128, 868:0, 868:771, 868:773 |
| 868:880 | BHQ | lo | 14201/40000 | 206672228249/582133888000 | 3077 | 868:123, 868:810, 868:138, 868:128, 868:792, 868:88, 868:98 |
| 868:881 | BPQ | lo | 1433/10000 | 41710058511/291066944000 | 3078 | 868:123, 868:810, 868:138, 868:128, 868:856, 868:795, 868:100 |
| 868:883 | HPQ | lo | 3277/31250 | 1907667987/18191684000 | 3096 | 868:123, 868:810, 868:138, 868:128, 868:144, 868:830, 868:188 |
| 868:884 | ABS | lo | 74831/250000 | 9725076621/32490062500 | 3179 | 868:165, 868:866, 868:186, 868:166, 868:771, 868:773, 868:811 |
| 868:885 | ACS | lo | 298647/1000000 | 155249076643/519841000000 | 3180 | 868:165, 868:866, 868:186, 868:166, 868:774, 868:775, 868:241 |
| 868:886 | AQS | lo | 181981/1000000 | 13514481/74263000 | 3185 | 868:165, 868:866, 868:186, 868:166, 868:36, 868:781, 868:790 |
| 868:892 | HPS | lo | 119707/1000000 | 15557222217/129960250000 | 3208 | 868:165, 868:866, 868:186, 868:166, 868:830, 868:188, 868:832 |
| 868:893 | HQS | lo | 26769/125000 | 1135972921/5304500000 | 3209 | 868:165, 868:866, 868:186, 868:166, 868:815, 868:831, 868:805 |
| 868:894 | PQS | lo | 77133/500000 | 8019422973/51984100000 | 3212 | 868:165, 868:866, 868:186, 868:166, 868:859, 868:845, 868:806 |
| 868:897 | AFS | hi | 550863/1000000 | 158009256630461/286839500000000 | 3299 | 868:203, 868:226, 868:866, 868:840, 868:245, 868:49 |
| 868:900 | CES | lo | 134571/1000000 | 77200881/573679000 | 3310 | 868:203, 868:226, 868:866, 868:840, 868:798, 868:128, 868:130 |
| 868:903 | BES | lo | 11029/62500 | 8611645059/48800875000 | 3345 | 868:215, 868:226, 868:867, 868:893, 868:88, 868:92, 868:807 |
| 868:905 | BFS | hi | 557171/1000000 | 6128873499503/11000000000000 | 3385 | 868:849, 868:226, 868:224, 868:894, 868:100, 868:836, 868:105 |
| 868:914 | FHS | lo | 104147/1000000 | 57281/550000 | 3398 | 868:849, 868:226, 868:224, 868:894, 868:188, 868:831, 868:192 |
| 868:920 | ABE | lo | 350677/1000000 | 350677/1000000 | 3423 | 868:36, 868:879, 868:92 |
| 868:922 | ABF | lo | 284393/1000000 | 284393/1000000 | 3427 | 868:44, 868:817, 868:100 |
| 868:923 | ACE | lo | 284499/1000000 | 284499/1000000 | 3441 | 868:36, 868:808, 868:128 |
| 868:924 | ACF | lo | 157127/500000 | 157127/500000 | 3445 | 868:44, 868:819, 868:833 |
| 868:926 | ACH | hi | 752377/1000000 | 752377/1000000 | 3450 | 868:246, 868:25, 868:826 |
| 868:927 | AEF | lo | 409579/1000000 | 409579/1000000 | 3457 | 868:44, 868:820, 868:844 |
| 868:929 | AER | lo | 68833/200000 | 68833/200000 | 3470 | 868:70, 868:814, 868:186 |
| 868:930 | AFQ | lo | 315771/1000000 | 315771/1000000 | 3475 | 868:44, 868:821, 868:845 |
| 868:931 | AFR | lo | 372767/1000000 | 372767/1000000 | 3476 | 868:44, 868:62, 868:857 |
| 868:933 | AFS | lo | 171153/500000 | 171153/500000 | 3477 | 868:44, 868:64, 868:858 |
| 868:936 | AHQ | lo | 291719/1000000 | 291719/1000000 | 3481 | 868:52, 868:821, 868:883 |
| 868:937 | AHR | lo | 169143/500000 | 169143/500000 | 3482 | 868:52, 868:62, 868:832 |
| 868:939 | AQR | lo | 367981/1000000 | 367981/1000000 | 3490 | 868:70, 868:886, 868:226 |
| 868:941 | BCH | lo | 157119/500000 | 157119/500000 | 3502 | 868:108, 868:856, 868:144 |
| 868:942 | BCH | hi | 389139/500000 | 778277811/1000000000 | 3503 | 868:249, 868:81, 868:826 |
| 868:943 | BEF | lo | 423693/1000000 | 423693/1000000 | 3511 | 868:809, 868:92, 868:810 |
| 868:944 | BEP | lo | 34583/100000 | 34583/100000 | 3518 | 868:881, 868:92, 868:859 |
| 868:946 | BHR | lo | 428329/1000000 | 428329/1000000 | 3529 | 868:108, 868:829, 868:832 |
| 868:947 | CEF | lo | 349901/1000000 | 349901/1000000 | 3533 | 868:138, 868:128, 868:810 |
| 868:948 | CEH | lo | 81541/200000 | 81541/200000 | 3537 | 868:826, 868:128, 868:815 |
| 868:949 | CEP | lo | 148687/500000 | 148687/500000 | 3540 | 868:873, 868:128, 868:859 |
| 868:950 | EFR | lo | 298701/1000000 | 298701/1000000 | 3562 | 868:186, 868:166, 868:866 |
| 868:952 | EPR | lo | 306857/1000000 | 306857/1000000 | 3571 | 868:186, 868:868, 868:224 |
| 868:953 | FQR | lo | 74419/200000 | 74419/200000 | 3582 | 868:866, 868:840, 868:226 |
| 868:954 | HQR | lo | 52749/125000 | 52749/125000 | 3586 | 868:867, 868:893, 868:226 |
| 868:955 | PQR | lo | 170133/500000 | 170133/500000 | 3587 | 868:224, 868:894, 868:226 |
| 868:956 | BER | lo | 136907/1000000 | 32310153/236000000 | 56 | 868:920, 868:130, 868:929, 868:72, 868:17 |
| 868:957 | ACQ | lo | 49303/500000 | 465434/4720125 | 77 | 868:879, 868:138, 868:930, 868:80, 868:836 |
| 868:958 | BFQ | lo | 41731/250000 | 1396302/8364875 | 77 | 868:879, 868:138, 868:930, 868:80, 868:25 |
| 868:959 | EFQ | lo | 82091/500000 | 9686787/59000000 | 138 | 868:927, 868:92, 868:36, 868:943, 868:3 |
| 868:960 | ABR | lo | 144473/500000 | 28574866263/98893261250 | 141 | 868:920, 868:931, 868:922, 868:929, 868:31 |
| 868:962 | BFS | lo | 867/4000 | 85740602529/395573045000 | 149 | 868:922, 868:166, 868:933, 868:943, 868:31 |
| 868:963 | AES | lo | 79187/500000 | 1378778406/8705796875 | 150 | 868:884, 868:166, 868:933, 868:903, 868:905 |
| 868:964 | EHQ | lo | 3286/15625 | 7518399/35750000 | 160 | 868:36, 868:880, 868:936, 868:92, 868:11 |
| 868:966 | ABP | lo | 49273/500000 | 18095227/183621000 | 222 | 868:922, 868:64, 868:884, 868:44, 868:897 |
| 868:968 | ACP | lo | 103473/1000000 | 18999931/183621000 | 357 | 868:924, 868:64, 868:885, 868:44, 868:897 |
| 868:969 | AEP | lo | 103519/1000000 | 70098192/677152549 | 421 | 868:927, 868:62, 868:929, 868:44, 868:49 |
| 868:970 | APQ | lo | 46953/500000 | 63588936/677152549 | 526 | 868:44, 868:939, 868:930, 868:62, 868:49 |
| 868:974 | CFH | lo | 17407/100000 | 40906230471/234998068000 | 575 | 868:941, 868:827, 868:98, 868:948, 868:89 |
| 868:975 | CHQ | lo | 20907/200000 | 3157877/30208800 | 643 | 868:80, 868:831, 868:880, 868:138, 868:836 |
| 868:976 | EFH | lo | 31771/200000 | 122741028000/772658499929 | 705 | 868:943, 868:192, 868:98, 868:950, 868:105 |
| 868:977 | EHS | lo | 110051/1000000 | 2311680968/21005415725 | 709 | 868:88, 868:166, 868:903, 868:976, 868:87 |
| 868:978 | BPR | lo | 45801/250000 | 9312733261/50832500000 | 721 | 868:944, 868:857, 868:100, 868:952, 868:853 |
| 868:979 | EHP | lo | 2091/12500 | 57633309/344530000 | 736 | 868:88, 868:883, 868:108, 868:964, 868:249 |
| 868:980 | FHQ | lo | 154451/1000000 | 119338437000/772658499929 | 777 | 868:98, 868:953, 868:958, 868:192, 868:105 |
| 868:981 | HPR | lo | 76337/500000 | 2630048383/17226500000 | 790 | 868:108, 868:954, 868:946, 868:883, 868:249 |
| 868:982 | CFP | lo | 118103/1000000 | 4215234259/35691094400 | 798 | 868:947, 868:144, 868:949, 868:974, 868:125 |
| 868:984 | AQR | hi | 38389/62500 | 28991344614998293/47200000000000000 | 2102 | 868:3, 868:92, 868:36, 868:879, 868:13, 868:39 |
| 868:985 | BFQ | hi | 11327/25000 | 106926703447/236000000000 | 2106 | 868:3, 868:92, 868:36, 868:879, 868:922, 868:87 |
| 868:989 | FQS | lo | 20813/125000 | 306993/1843750 | 2125 | 868:3, 868:92, 868:36, 868:879, 868:933, 868:962, 868:166 |
| 868:993 | EFP | lo | 213461/1000000 | 32120691667/150475400000 | 2279 | 868:926, 868:144, 868:52, 868:968, 868:927, 868:947, 868:976 |
| 868:994 | FPQ | lo | 128987/1000000 | 97047283323/752377000000 | 2287 | 868:926, 868:144, 868:52, 868:968, 868:930, 868:138, 868:980 |
| 868:998 | PQR | hi | 51149/100000 | 10111893009/19769500000 | 2464 | 868:245, 868:994, 868:970, 868:44, 868:984, 868:203 |
| 868:1002 | EFP | hi | 254157/500000 | 9333697861189/18362100000000 | 2528 | 868:897, 868:858, 868:64, 868:44, 868:31, 868:166 |
| 868:1005 | BCP | lo | 128263/1000000 | 18891584907/147287000000 | 2558 | 868:246, 868:883, 868:970, 868:52, 868:0, 868:941, 868:80 |
| 868:1006 | FPR | lo | 186853/1000000 | 13760510711/73643500000 | 2578 | 868:246, 868:883, 868:970, 868:52, 868:931, 868:192, 868:953 |
| 868:1007 | FPS | lo | 7819/50000 | 23032875783/147287000000 | 2579 | 868:246, 868:883, 868:970, 868:52, 868:933, 868:914, 868:989 |
| 868:1008 | EPQ | lo | 3423/31250 | 14452293/131940200 | 2654 | 868:863, 868:892, 868:64, 868:52, 868:36, 868:964, 868:184 |
| 868:1012 | AHS | hi | 329849/500000 | 2532513631/3838900000 | 2676 | 868:984, 868:226, 868:70, 868:886, 868:246, 868:57 |
| 868:1015 | FRS | lo | 112779/1000000 | 34636083/307112000 | 2699 | 868:984, 868:226, 868:70, 868:886, 868:931, 868:953 |
| 868:1016 | HRS | lo | 57557/500000 | 35352927/307112000 | 2703 | 868:984, 868:226, 868:70, 868:886, 868:937, 868:954 |
| 868:1017 | EPS | lo | 120917/1000000 | 15684506863/129713000000 | 2740 | 868:942, 868:144, 868:108, 868:1005, 868:903, 868:900, 868:977 |
| 868:1022 | CPQ | lo | 47429/500000 | 5474073/57707500 | 2930 | 868:99, 868:188, 868:108, 868:100, 868:80, 868:138, 868:975 |
| 868:1028 | ABQ | lo | 82371/500000 | 5993872599/36383368000 | 3065 | 868:123, 868:959, 868:138, 868:128, 868:0, 868:920, 868:922 |
| 868:1029 | BHQ | lo | 355053/1000000 | 51672212517/145533472000 | 3077 | 868:123, 868:959, 868:138, 868:128, 868:941, 868:88, 868:98 |
| 868:1030 | BPQ | lo | 17917/125000 | 1668823829/11642677760 | 3078 | 868:123, 868:959, 868:138, 868:128, 868:1005, 868:944, 868:100 |
| 868:1032 | HPQ | lo | 52433/500000 | 953851431/9095842000 | 3096 | 868:123, 868:959, 868:138, 868:128, 868:144, 868:979, 868:188 |
| 868:1033 | ABS | lo | 299587/1000000 | 155738013749/519841000000 | 3179 | 868:165, 868:1015, 868:186, 868:166, 868:920, 868:922, 868:960 |
| 868:1034 | ACS | lo | 298859/1000000 | 155359633659/519841000000 | 3180 | 868:165, 868:1015, 868:186, 868:166, 868:923, 868:924, 868:241 |
| 868:1035 | AQS | lo | 5689/31250 | 94636149/519841000 | 3185 | 868:165, 868:1015, 868:186, 868:166, 868:36, 868:930, 868:939 |
| 868:1041 | HPS | lo | 11979/100000 | 778401489/6498012500 | 3208 | 868:165, 868:1015, 868:186, 868:166, 868:979, 868:188, 868:981 |
| 868:1042 | HQS | lo | 214431/1000000 | 55735160389/259920500000 | 3209 | 868:165, 868:1015, 868:186, 868:166, 868:964, 868:980, 868:954 |
| 868:1043 | PQS | lo | 154293/1000000 | 10026017097/64980125000 | 3212 | 868:165, 868:1015, 868:186, 868:166, 868:1008, 868:994, 868:955 |
| 868:1046 | AFS | hi | 137713/250000 | 3160119559921/5736790000000 | 3299 | 868:203, 868:226, 868:1015, 868:989, 868:245, 868:49 |
| 868:1049 | CES | lo | 67323/500000 | 3862197/28683950 | 3310 | 868:203, 868:226, 868:1015, 868:989, 868:947, 868:128, 868:130 |
| 868:1052 | BES | lo | 176503/1000000 | 137816773917/780814000000 | 3345 | 868:215, 868:226, 868:1016, 868:1042, 868:88, 868:92, 868:956 |
| 868:1054 | BFS | hi | 557157/1000000 | 28498005514189021/51149000000000000 | 3385 | 868:998, 868:226, 868:224, 868:1043, 868:100, 868:985, 868:105 |
| 868:1063 | FHS | lo | 104173/1000000 | 53283513/511490000 | 3398 | 868:998, 868:226, 868:224, 868:1043, 868:188, 868:980, 868:192 |
| 868:1069 | ABE | lo | 175371/500000 | 175371/500000 | 3423 | 868:36, 868:1028, 868:92 |
| 868:1071 | ABF | lo | 142273/500000 | 142273/500000 | 3427 | 868:44, 868:966, 868:100 |
| 868:1072 | ACE | lo | 142303/500000 | 142303/500000 | 3441 | 868:36, 868:957, 868:128 |
| 868:1073 | ACF | lo | 19661/62500 | 19661/62500 | 3445 | 868:44, 868:968, 868:982 |
| 868:1075 | ACH | hi | 752289/1000000 | 752289/1000000 | 3450 | 868:246, 868:25, 868:975 |
| 868:1076 | AEF | lo | 20499/50000 | 20499/50000 | 3457 | 868:44, 868:969, 868:993 |
| 868:1078 | AER | lo | 172187/500000 | 172187/500000 | 3470 | 868:70, 868:963, 868:186 |
| 868:1079 | AFQ | lo | 315893/1000000 | 315893/1000000 | 3475 | 868:44, 868:970, 868:994 |
| 868:1080 | AFR | lo | 372853/1000000 | 372853/1000000 | 3476 | 868:44, 868:62, 868:1006 |
| 868:1082 | AFS | lo | 17119/50000 | 17119/50000 | 3477 | 868:44, 868:64, 868:1007 |
| 868:1085 | AHQ | lo | 72943/250000 | 72943/250000 | 3481 | 868:52, 868:970, 868:1032 |
| 868:1086 | AHR | lo | 169337/500000 | 169337/500000 | 3482 | 868:52, 868:62, 868:981 |
| 868:1088 | AQR | lo | 23003/62500 | 23003/62500 | 3490 | 868:70, 868:1035, 868:226 |
| 868:1090 | BCH | lo | 314263/1000000 | 314263/1000000 | 3502 | 868:108, 868:1005, 868:144 |
| 868:1091 | BCH | hi | 77819/100000 | 778189811/1000000000 | 3503 | 868:249, 868:81, 868:975 |
| 868:1092 | BEF | lo | 212053/500000 | 212053/500000 | 3511 | 868:958, 868:92, 868:959 |
| 868:1093 | BEP | lo | 21617/62500 | 21617/62500 | 3518 | 868:1030, 868:92, 868:1008 |
| 868:1095 | BHR | lo | 214439/500000 | 214439/500000 | 3529 | 868:108, 868:978, 868:981 |
| 868:1096 | CEF | lo | 175091/500000 | 175091/500000 | 3533 | 868:138, 868:128, 868:959 |
| 868:1097 | CEH | lo | 407839/1000000 | 407839/1000000 | 3537 | 868:975, 868:128, 868:964 |
| 868:1098 | CEP | lo | 148697/500000 | 148697/500000 | 3540 | 868:1022, 868:128, 868:1008 |
| 868:1099 | EFR | lo | 298779/1000000 | 298779/1000000 | 3562 | 868:186, 868:166, 868:1015 |
| 868:1101 | EPR | lo | 306917/1000000 | 306917/1000000 | 3571 | 868:186, 868:1017, 868:224 |
| 868:1102 | FQR | lo | 372283/1000000 | 372283/1000000 | 3582 | 868:1015, 868:989, 868:226 |
| 868:1103 | HQR | lo | 84509/200000 | 84509/200000 | 3586 | 868:1016, 868:1042, 868:226 |
| 868:1104 | PQR | lo | 340293/1000000 | 340293/1000000 | 3587 | 868:224, 868:1043, 868:226 |
| 868:1105 | BER | lo | 136961/1000000 | 16161447/118000000 | 56 | 868:1069, 868:130, 868:1078, 868:72, 868:17 |
| 868:1106 | ACQ | lo | 19731/200000 | 8939811/90616000 | 77 | 868:1028, 868:138, 868:1079, 868:80, 868:985 |
| 868:1107 | BFQ | lo | 166989/1000000 | 8939811/53535200 | 77 | 868:1028, 868:138, 868:1079, 868:80, 868:25 |
| 868:1108 | EFQ | lo | 164343/1000000 | 38784999/236000000 | 138 | 868:1076, 868:92, 868:36, 868:1092, 868:3 |
| 868:1109 | ABR | lo | 289157/1000000 | 22876545113/79114609000 | 141 | 868:1069, 868:1080, 868:1071, 868:1078, 868:31 |
| 868:1111 | BFS | lo | 108493/500000 | 4291704757/19778652250 | 149 | 868:1071, 868:166, 868:1082, 868:1092, 868:31 |
| 868:1112 | AES | lo | 15847/100000 | 4414634407/27857850000 | 150 | 868:1033, 868:166, 868:1082, 868:1052, 868:1054 |
| 868:1113 | EHQ | lo | 210331/1000000 | 2406189/11440000 | 160 | 868:36, 868:1029, 868:1085, 868:92, 868:11 |
| 868:1115 | ABP | lo | 49309/500000 | 54324369/550852000 | 222 | 868:1071, 868:64, 868:1033, 868:44, 868:1046 |
| 868:1117 | ACP | lo | 20713/200000 | 11409891/110170400 | 357 | 868:1073, 868:64, 868:1034, 868:44, 868:1046 |
| 868:1118 | AEP | lo | 51801/500000 | 70154922/677152549 | 421 | 868:1076, 868:62, 868:1078, 868:44, 868:49 |
| 868:1119 | APQ | lo | 23483/250000 | 63606513/677152549 | 526 | 868:44, 868:1088, 868:1079, 868:62, 868:49 |
| 868:1123 | CFH | lo | 2177/12500 | 32741865973/187998454400 | 575 | 868:1090, 868:976, 868:98, 868:1097, 868:89 |
| 868:1124 | CHQ | lo | 104581/1000000 | 740373/7079375 | 643 | 868:80, 868:980, 868:1029, 868:138, 868:985 |
| 868:1125 | EFH | lo | 158933/1000000 | 122801199000/772658499929 | 705 | 868:1092, 868:192, 868:98, 868:1099, 868:105 |
| 868:1126 | EHS | lo | 4403/40000 | 92487201299/840216629000 | 709 | 868:88, 868:166, 868:1052, 868:1125, 868:87 |
| 868:1127 | BPR | lo | 183293/1000000 | 11646312727/63539250000 | 721 | 868:1093, 868:1006, 868:100, 868:1101, 868:1002 |
| 868:1128 | EHP | lo | 20911/125000 | 922171911/5512480000 | 736 | 868:88, 868:1032, 868:108, 868:1113, 868:249 |
| 868:1129 | FHQ | lo | 154527/1000000 | 119396934000/772658499929 | 777 | 868:98, 868:1102, 868:1107, 868:192, 868:105 |
| 868:1130 | HPR | lo | 152873/1000000 | 21067851337/137812000000 | 790 | 868:108, 868:1103, 868:1095, 868:1032, 868:249 |
| 868:1131 | CFP | lo | 59091/500000 | 1054513313/8922773600 | 798 | 868:1096, 868:144, 868:1098, 868:1123, 868:125 |
| 868:1133 | AQR | hi | 30711/50000 | 14495577616493939/23600000000000000 | 2102 | 868:3, 868:92, 868:36, 868:1028, 868:13, 868:39 |
| 868:1134 | BFQ | hi | 9061/20000 | 106919588947/236000000000 | 2106 | 868:3, 868:92, 868:36, 868:1028, 868:1071, 868:87 |
| 868:1138 | FQS | lo | 33313/200000 | 39309519/236000000 | 2125 | 868:3, 868:92, 868:36, 868:1028, 868:1082, 868:1111, 868:166 |
| 868:1141 | EFP | lo | 21361/100000 | 53565691879/250763000000 | 2279 | 868:1075, 868:144, 868:52, 868:1117, 868:1076, 868:1096, 868:1125 |
| 868:1142 | FPQ | lo | 2016/15625 | 6470931317/50152600000 | 2287 | 868:1075, 868:144, 868:52, 868:1117, 868:1079, 868:138, 868:1129 |
| 868:1146 | PQR | hi | 255743/500000 | 4739907992/9266953125 | 2464 | 868:245, 868:1142, 868:1119, 868:44, 868:1133, 868:203 |
| 868:1150 | EFP | hi | 127077/250000 | 7000055830717/13771300000000 | 2528 | 868:1046, 868:1007, 868:64, 868:44, 868:31, 868:166 |
| 868:1153 | BCP | lo | 128277/1000000 | 2699087147/21041000000 | 2558 | 868:246, 868:1032, 868:1119, 868:52, 868:0, 868:1090, 868:80 |
| 868:1154 | FPR | lo | 93449/500000 | 55055573849/294574000000 | 2578 | 868:246, 868:1032, 868:1119, 868:52, 868:1080, 868:192, 868:1102 |
| 868:1155 | FPS | lo | 156421/1000000 | 46077792933/294574000000 | 2579 | 868:246, 868:1032, 868:1119, 868:52, 868:1082, 868:1063, 868:1138 |
| 868:1156 | EPQ | lo | 5477/50000 | 72263697/659698000 | 2654 | 868:1012, 868:1041, 868:64, 868:52, 868:36, 868:1113, 868:184 |
| 868:1160 | AHS | hi | 659697/1000000 | 675331513/1023700000 | 2676 | 868:1133, 868:226, 868:70, 868:1035, 868:246, 868:57 |
| 868:1163 | FRS | lo | 56411/500000 | 1443701/12796250 | 2699 | 868:1133, 868:226, 868:70, 868:1035, 868:1080, 868:1102 |
| 868:1164 | HRS | lo | 115257/1000000 | 23597789/204740000 | 2703 | 868:1133, 868:226, 868:70, 868:1035, 868:1086, 868:1103 |
| 868:1165 | EPS | lo | 2419/20000 | 75297737/622552000 | 2740 | 868:1091, 868:144, 868:108, 868:1153, 868:1052, 868:1049, 868:1126 |
| 868:1170 | CPQ | lo | 47433/500000 | 6843126/72134375 | 2930 | 868:99, 868:188, 868:108, 868:100, 868:80, 868:138, 868:1124 |
| 868:1176 | ABQ | lo | 20597/125000 | 214112133/1299406000 | 3065 | 868:123, 868:1108, 868:138, 868:128, 868:0, 868:1069, 868:1071 |
| 868:1177 | BHQ | lo | 35507/100000 | 206698631961/582133888000 | 3077 | 868:123, 868:1108, 868:138, 868:128, 868:1090, 868:88, 868:98 |
| 868:1178 | BPQ | lo | 143357/1000000 | 16690615119/116426777600 | 3078 | 868:123, 868:1108, 868:138, 868:128, 868:1153, 868:1093, 868:100 |
| 868:1180 | HPQ | lo | 26217/250000 | 59616441/568490125 | 3096 | 868:123, 868:1108, 868:138, 868:128, 868:144, 868:1128, 868:188 |
| 868:1181 | ABS | lo | 299737/1000000 | 77907932649/259920500000 | 3179 | 868:165, 868:1163, 868:186, 868:166, 868:1069, 868:1071, 868:1109 |
| 868:1182 | ACS | lo | 149493/500000 | 11101807189/37131500000 | 3180 | 868:165, 868:1163, 868:186, 868:166, 868:1072, 868:1073, 868:241 |
| 868:1183 | AQS | lo | 91041/500000 | 47326863/259920500 | 3185 | 868:165, 868:1163, 868:186, 868:166, 868:36, 868:1079, 868:1088 |
| 868:1189 | HPS | lo | 59917/500000 | 3893420171/32490062500 | 3208 | 868:165, 868:1163, 868:186, 868:166, 868:1128, 868:188, 868:1130 |
| 868:1190 | HQS | lo | 107293/500000 | 22310212619/103968200000 | 3209 | 868:165, 868:1163, 868:186, 868:166, 868:1113, 868:1129, 868:1103 |
| 868:1191 | PQS | lo | 154307/1000000 | 4010771207/25992050000 | 3212 | 868:165, 868:1163, 868:186, 868:166, 868:1156, 868:1142, 868:1104 |
| 868:1194 | AFS | hi | 275423/500000 | 316008341087493/573679000000000 | 3299 | 868:203, 868:226, 868:1163, 868:1138, 868:245, 868:49 |
| 868:1197 | CES | lo | 33673/250000 | 77270073/573679000 | 3310 | 868:203, 868:226, 868:1163, 868:1138, 868:1096, 868:128, 868:130 |
| 868:1200 | BES | lo | 176527/1000000 | 68917583573/390407000000 | 3345 | 868:215, 868:226, 868:1164, 868:1190, 868:88, 868:92, 868:1105 |
| 868:1202 | BFS | hi | 11143/20000 | 142487087253945247/255743000000000000 | 3385 | 868:1146, 868:226, 868:224, 868:1191, 868:100, 868:1134, 868:105 |
| 868:1211 | FHS | lo | 104187/1000000 | 53290209/511486000 | 3398 | 868:1146, 868:226, 868:224, 868:1191, 868:188, 868:1129, 868:192 |
| 868:1217 | ABE | lo | 43847/125000 | 43847/125000 | 3423 | 868:36, 868:1176, 868:92 |
| 868:1219 | ABF | lo | 142309/500000 | 142309/500000 | 3427 | 868:44, 868:1115, 868:100 |
| 868:1220 | ACE | lo | 56931/200000 | 56931/200000 | 3441 | 868:36, 868:1106, 868:128 |
| 868:1221 | ACF | lo | 314747/1000000 | 314747/1000000 | 3445 | 868:44, 868:1117, 868:1131 |
| 868:1223 | ACH | hi | 752243/1000000 | 752243/1000000 | 3450 | 868:246, 868:25, 868:1124 |
| 868:1224 | AEF | lo | 102553/250000 | 102553/250000 | 3457 | 868:44, 868:1118, 868:1141 |
| 868:1226 | AER | lo | 34447/100000 | 34447/100000 | 3470 | 868:70, 868:1112, 868:186 |
| 868:1227 | AFQ | lo | 78989/250000 | 78989/250000 | 3475 | 868:44, 868:1119, 868:1142 |
| 868:1228 | AFR | lo | 186449/500000 | 186449/500000 | 3476 | 868:44, 868:62, 868:1154 |
| 868:1230 | AFS | lo | 342421/1000000 | 342421/1000000 | 3477 | 868:44, 868:64, 868:1155 |
| 868:1233 | AHQ | lo | 1459/5000 | 1459/5000 | 3481 | 868:52, 868:1119, 868:1180 |
| 868:1234 | AHR | lo | 338873/1000000 | 338873/1000000 | 3482 | 868:52, 868:62, 868:1130 |
| 868:1236 | AQR | lo | 184041/500000 | 184041/500000 | 3490 | 868:70, 868:1183, 868:226 |
| 868:1238 | BCH | lo | 314277/1000000 | 314277/1000000 | 3502 | 868:108, 868:1153, 868:144 |
| 868:1239 | BCH | hi | 24317/31250 | 778143811/1000000000 | 3503 | 868:249, 868:81, 868:1124 |
| 868:1240 | BEF | lo | 106083/250000 | 106083/250000 | 3511 | 868:1107, 868:92, 868:1108 |
| 868:1241 | BEP | lo | 345897/1000000 | 345897/1000000 | 3518 | 868:1178, 868:92, 868:1156 |
| 868:1243 | BHR | lo | 214583/500000 | 214583/500000 | 3529 | 868:108, 868:1127, 868:1130 |
| 868:1244 | CEF | lo | 350343/1000000 | 350343/1000000 | 3533 | 868:138, 868:128, 868:1108 |
| 868:1245 | CEH | lo | 50989/125000 | 50989/125000 | 3537 | 868:1124, 868:128, 868:1113 |
| 868:1246 | CEP | lo | 148703/500000 | 148703/500000 | 3540 | 868:1170, 868:128, 868:1156 |
| 868:1247 | EFR | lo | 149411/500000 | 149411/500000 | 3562 | 868:186, 868:166, 868:1163 |
| 868:1249 | EPR | lo | 6139/20000 | 6139/20000 | 3571 | 868:186, 868:1165, 868:224 |
| 868:1250 | FQR | lo | 372387/1000000 | 372387/1000000 | 3582 | 868:1163, 868:1138, 868:226 |
| 868:1251 | HQR | lo | 422843/1000000 | 422843/1000000 | 3586 | 868:1164, 868:1190, 868:226 |
| 868:1252 | PQR | lo | 340307/1000000 | 340307/1000000 | 3587 | 868:224, 868:1191, 868:226 |
| 868:1253 | BER | lo | 136987/1000000 | 32328939/236000000 | 56 | 868:1217, 868:130, 868:1226, 868:72, 868:17 |
| 868:1254 | ACQ | lo | 49341/500000 | 11177019/113262500 | 77 | 868:1176, 868:138, 868:1227, 868:80, 868:1134 |
| 868:1255 | BFQ | lo | 167023/1000000 | 11177019/66919000 | 77 | 868:1176, 868:138, 868:1227, 868:80, 868:25 |
| 868:1256 | EFQ | lo | 164433/1000000 | 4850787/29500000 | 138 | 868:1224, 868:92, 868:36, 868:1240, 868:3 |
| 868:1257 | ABR | lo | 144629/500000 | 57211507827/197786522500 | 141 | 868:1217, 868:1228, 868:1219, 868:1226, 868:31 |
| 868:1259 | BFS | lo | 108557/500000 | 42942415443/197786522500 | 149 | 868:1219, 868:166, 868:1230, 868:1240, 868:31 |
| 868:1260 | AES | lo | 39631/250000 | 88322092867/557150000000 | 150 | 868:1181, 868:166, 868:1230, 868:1200, 868:1202 |
| 868:1261 | EHQ | lo | 42069/200000 | 6015891/28600000 | 160 | 868:36, 868:1177, 868:1233, 868:92, 868:11 |
| 868:1263 | ABP | lo | 98657/1000000 | 10869003/110169200 | 222 | 868:1219, 868:64, 868:1181, 868:44, 868:1194 |
| 868:1265 | ACP | lo | 103617/1000000 | 57077169/550846000 | 357 | 868:1221, 868:64, 868:1182, 868:44, 868:1194 |
| 868:1266 | AEP | lo | 103647/1000000 | 70185426/677152549 | 421 | 868:1224, 868:62, 868:1226, 868:44, 868:49 |
| 868:1267 | APQ | lo | 18789/200000 | 63615534/677152549 | 526 | 868:44, 868:1236, 868:1227, 868:62, 868:49 |
| 868:1269 | HRS | lo | 28833/250000 | 5903299/51185000 | 564 | 868:1234, 868:226, 868:70, 868:1251, 868:1133 |
| 868:1271 | CFH | lo | 17421/100000 | 163756434441/939992272000 | 575 | 868:1238, 868:1125, 868:98, 868:1245, 868:89 |
| 868:1272 | CHQ | lo | 104607/1000000 | 47392521/453050000 | 643 | 868:80, 868:1129, 868:1177, 868:138, 868:1134 |
| 868:1273 | EFH | lo | 2484/15625 | 5340618000/33593847823 | 705 | 868:1240, 868:192, 868:98, 868:1247, 868:105 |
| 868:1274 | EHS | lo | 13761/125000 | 11562325794/105027078625 | 709 | 868:88, 868:166, 868:1200, 868:1273, 868:87 |
| 868:1275 | BPR | lo | 183341/1000000 | 15532301251/84718000000 | 721 | 868:1241, 868:1154, 868:100, 868:1249, 868:1150 |
| 868:1276 | EHP | lo | 41823/250000 | 230549697/1378120000 | 736 | 868:88, 868:1180, 868:108, 868:1261, 868:249 |
| 868:1277 | FHQ | lo | 154569/1000000 | 119429112000/772658499929 | 777 | 868:98, 868:1250, 868:1255, 868:192, 868:105 |
| 868:1278 | HPR | lo | 7649/50000 | 5270636193/34453000000 | 790 | 868:108, 868:1251, 868:1243, 868:1180, 868:249 |
| 868:1279 | CFP | lo | 59113/500000 | 4219649913/35691094400 | 798 | 868:1244, 868:144, 868:1246, 868:1271, 868:125 |
| 868:1281 | AQR | hi | 307109/500000 | 3623882021453573/5900000000000000 | 2102 | 868:3, 868:92, 868:36, 868:1176, 868:13, 868:39 |
| 868:1282 | BFQ | hi | 90607/200000 | 106916240947/236000000000 | 2106 | 868:3, 868:92, 868:36, 868:1176, 868:1219, 868:87 |
| 868:1286 | FQS | lo | 166599/1000000 | 15726951/94400000 | 2125 | 868:3, 868:92, 868:36, 868:1176, 868:1230, 868:1259, 868:166 |
| 868:1290 | EFP | lo | 42739/200000 | 20093832771/94030375000 | 2279 | 868:1223, 868:144, 868:52, 868:1265, 868:1224, 868:1244, 868:1273 |
| 868:1291 | FPQ | lo | 32261/250000 | 97073102073/752243000000 | 2287 | 868:1223, 868:144, 868:52, 868:1265, 868:1227, 868:138, 868:1277 |
| 868:1295 | PQR | hi | 511483/1000000 | 4044703629/7907800000 | 2464 | 868:245, 868:1291, 868:1267, 868:44, 868:1281, 868:203 |
| 868:1299 | EFP | hi | 101661/200000 | 13999874317607/27542300000000 | 2528 | 868:1194, 868:1155, 868:64, 868:44, 868:31, 868:166 |
| 868:1302 | BCP | lo | 32071/250000 | 2159389479/16832800000 | 2558 | 868:246, 868:1180, 868:1267, 868:52, 868:0, 868:1238, 868:80 |
| 868:1303 | FPR | lo | 46731/250000 | 3441440577/18410875000 | 2578 | 868:246, 868:1180, 868:1267, 868:52, 868:1228, 868:192, 868:1250 |
| 868:1304 | FPS | lo | 39111/250000 | 23042250447/147287000000 | 2579 | 868:246, 868:1180, 868:1267, 868:52, 868:1230, 868:1211, 868:1286 |
| 868:1305 | EPQ | lo | 54771/500000 | 12044151/109949500 | 2654 | 868:1160, 868:1189, 868:64, 868:52, 868:36, 868:1261, 868:184 |
| 868:1310 | FRS | lo | 22569/200000 | 13862301/122843600 | 2699 | 868:1281, 868:226, 868:70, 868:1183, 868:1228, 868:1250 |
| 868:1311 | EPS | lo | 120969/1000000 | 11766414459/97268000000 | 2740 | 868:1239, 868:144, 868:108, 868:1302, 868:1200, 868:1197, 868:1274 |
| 868:1316 | CPQ | lo | 9487/100000 | 27373713/288537500 | 2930 | 868:99, 868:188, 868:108, 868:100, 868:80, 868:138, 868:1272 |
| 868:1322 | ABQ | lo | 164793/1000000 | 5995755849/36383368000 | 3065 | 868:123, 868:1256, 868:138, 868:128, 868:0, 868:1217, 868:1219 |
| 868:1323 | BHQ | lo | 8877/25000 | 206704107693/582133888000 | 3077 | 868:123, 868:1256, 868:138, 868:128, 868:1238, 868:88, 868:98 |
| 868:1324 | BPQ | lo | 17921/125000 | 20864931639/145533472000 | 3078 | 868:123, 868:1256, 868:138, 868:128, 868:1302, 868:1241, 868:100 |
| 868:1326 | ABS | lo | 299809/1000000 | 695773327/2320718750 | 3179 | 868:165, 868:1310, 868:186, 868:166, 868:1217, 868:1219, 868:1257 |
| 868:1327 | ACS | lo | 37381/125000 | 31091512371/103968200000 | 3180 | 868:165, 868:1310, 868:186, 868:166, 868:1220, 868:1221, 868:241 |
| 868:1328 | AQS | lo | 182099/1000000 | 94662747/519841000 | 3185 | 868:165, 868:1310, 868:186, 868:166, 868:36, 868:1227, 868:1236 |
| 868:1334 | HPS | lo | 119857/1000000 | 3115341687/25992050000 | 3208 | 868:165, 868:1310, 868:186, 868:166, 868:1276, 868:188, 868:1278 |
| 868:1335 | HQS | lo | 214671/1000000 | 111594828249/519841000000 | 3209 | 868:165, 868:1310, 868:186, 868:166, 868:1261, 868:1277, 868:1251 |
| 868:1336 | PQS | lo | 77157/500000 | 40109626911/259920500000 | 3212 | 868:165, 868:1310, 868:186, 868:166, 868:1305, 868:1291, 868:1252 |
| 868:1339 | AFS | hi | 275421/500000 | 158003203766933/286839500000000 | 3299 | 868:203, 868:226, 868:1310, 868:1286, 868:245, 868:49 |
| 868:1342 | CES | lo | 67359/500000 | 38642523/286839500 | 3310 | 868:203, 868:226, 868:1310, 868:1286, 868:1244, 868:128, 868:130 |
| 868:1345 | BES | lo | 176539/1000000 | 137844485277/780814000000 | 3345 | 868:215, 868:226, 868:1269, 868:1335, 868:88, 868:92, 868:1253 |
| 868:1347 | BFS | hi | 278573/500000 | 284970461532390707/511483000000000000 | 3385 | 868:1295, 868:226, 868:224, 868:1336, 868:100, 868:1282, 868:105 |
| 868:1356 | FHS | lo | 52097/500000 | 13323459/127870750 | 3398 | 868:1295, 868:226, 868:224, 868:1336, 868:188, 868:1277, 868:192 |
| 868:1362 | ABE | lo | 350793/1000000 | 350793/1000000 | 3423 | 868:36, 868:1322, 868:92 |
| 868:1364 | ABF | lo | 284657/1000000 | 284657/1000000 | 3427 | 868:44, 868:1263, 868:100 |
| 868:1365 | ACE | lo | 142341/500000 | 142341/500000 | 3441 | 868:36, 868:1254, 868:128 |
| 868:1366 | ACF | lo | 314843/1000000 | 314843/1000000 | 3445 | 868:44, 868:1265, 868:1279 |
| 868:1368 | ACH | hi | 752217/1000000 | 752217/1000000 | 3450 | 868:246, 868:25, 868:1272 |
| 868:1369 | AEF | lo | 205171/500000 | 205171/500000 | 3457 | 868:44, 868:1266, 868:1290 |
| 868:1371 | AER | lo | 86131/250000 | 86131/250000 | 3470 | 868:70, 868:1260, 868:186 |
| 868:1372 | AFQ | lo | 315989/1000000 | 315989/1000000 | 3475 | 868:44, 868:1267, 868:1291 |
| 868:1373 | AFR | lo | 93231/250000 | 93231/250000 | 3476 | 868:44, 868:62, 868:1303 |
| 868:1375 | AFS | lo | 85611/250000 | 85611/250000 | 3477 | 868:44, 868:64, 868:1304 |
| 868:1377 | AHQ | lo | 291813/1000000 | 291813/1000000 | 3481 | 868:52, 868:1267, 868:1180 |
| 868:1378 | AHR | lo | 16949/50000 | 16949/50000 | 3482 | 868:52, 868:62, 868:1278 |
| 868:1380 | AQR | lo | 368099/1000000 | 368099/1000000 | 3490 | 868:70, 868:1328, 868:226 |
| 868:1382 | BCH | lo | 78571/250000 | 78571/250000 | 3502 | 868:108, 868:1302, 868:144 |
| 868:1383 | BCH | hi | 389059/500000 | 778117811/1000000000 | 3503 | 868:249, 868:81, 868:1272 |
| 868:1384 | BEF | lo | 53057/125000 | 53057/125000 | 3511 | 868:1255, 868:92, 868:1256 |
| 868:1385 | BEP | lo | 34591/100000 | 34591/100000 | 3518 | 868:1324, 868:92, 868:1305 |
| 868:1387 | BHR | lo | 429321/1000000 | 429321/1000000 | 3529 | 868:108, 868:1275, 868:1278 |
| 868:1388 | CEF | lo | 350433/1000000 | 350433/1000000 | 3533 | 868:138, 868:128, 868:1256 |
| 868:1389 | CEH | lo | 25497/62500 | 25497/62500 | 3537 | 868:1272, 868:128, 868:1261 |
| 868:1390 | CEP | lo | 74353/250000 | 74353/250000 | 3540 | 868:1316, 868:128, 868:1305 |
| 868:1391 | EFR | lo | 59769/200000 | 59769/200000 | 3562 | 868:186, 868:166, 868:1310 |
| 868:1393 | EPR | lo | 306969/1000000 | 306969/1000000 | 3571 | 868:186, 868:1311, 868:224 |
| 868:1394 | FQR | lo | 93111/250000 | 93111/250000 | 3582 | 868:1310, 868:1286, 868:226 |
| 868:1395 | HQR | lo | 423003/1000000 | 423003/1000000 | 3586 | 868:1269, 868:1335, 868:226 |
| 868:1396 | PQR | lo | 170157/500000 | 170157/500000 | 3587 | 868:224, 868:1336, 868:226 |
| 868:1397 | BER | lo | 137001/1000000 | 64664481/472000000 | 56 | 868:1362, 868:130, 868:1371, 868:72, 868:17 |
| 868:1398 | ACQ | lo | 19739/200000 | 22356363/226517500 | 77 | 868:1322, 868:138, 868:1372, 868:80, 868:1282 |
| 868:1399 | BFQ | lo | 522/3125 | 22356363/133838000 | 77 | 868:1322, 868:138, 868:1372, 868:80, 868:25 |
| 868:1400 | EFQ | lo | 164483/1000000 | 38818107/236000000 | 138 | 868:1369, 868:92, 868:36, 868:1384, 868:3 |
| 868:1401 | ABR | lo | 144657/500000 | 228890297/791146090 | 141 | 868:1362, 868:1373, 868:1364, 868:1371, 868:31 |
| 868:1403 | BFS | lo | 43437/200000 | 21478188933/98893261250 | 149 | 868:1364, 868:166, 868:1375, 868:1384, 868:31 |
| 868:1404 | AES | lo | 19819/125000 | 22084239579/139286500000 | 150 | 868:1326, 868:166, 868:1375, 868:1345, 868:1347 |
| 868:1405 | EHQ | lo | 210353/1000000 | 4627773/22000000 | 160 | 868:36, 868:1323, 868:1377, 868:92, 868:11 |
| 868:1407 | ABP | lo | 24669/250000 | 9059223/91807000 | 222 | 868:1364, 868:64, 868:1326, 868:44, 868:1339 |
| 868:1409 | ACP | lo | 25911/250000 | 19030621/183614000 | 357 | 868:1366, 868:64, 868:1327, 868:44, 868:1339 |
| 868:1410 | AEP | lo | 103673/1000000 | 70202538/677152549 | 421 | 868:1369, 868:62, 868:1371, 868:44, 868:49 |
| 868:1411 | APQ | lo | 1468/15625 | 63620184/677152549 | 526 | 868:44, 868:1380, 868:1372, 868:62, 868:49 |
| 868:1412 | FRS | lo | 112857/1000000 | 8664903/76777250 | 544 | 868:1373, 868:226, 868:70, 868:1394, 868:1281 |
| 868:1413 | HRS | lo | 115373/1000000 | 70864419/614218000 | 564 | 868:1378, 868:226, 868:70, 868:1395, 868:1281 |
| 868:1415 | CFH | lo | 174237/1000000 | 1279548603/7343689625 | 575 | 868:1382, 868:1273, 868:98, 868:1389, 868:89 |
| 868:1416 | CHQ | lo | 104621/1000000 | 47397357/453035000 | 643 | 868:80, 868:1277, 868:1323, 868:138, 868:1282 |
| 868:1417 | EFH | lo | 158999/1000000 | 122852163000/772658499929 | 705 | 868:1384, 868:192, 868:98, 868:1391, 868:105 |
| 868:1418 | EHS | lo | 6881/62500 | 92504574461/840216629000 | 709 | 868:88, 868:166, 868:1345, 868:1417, 868:87 |
| 868:1419 | BPR | lo | 22921/125000 | 388362491/2117937500 | 721 | 868:1385, 868:1303, 868:100, 868:1393, 868:1299 |
| 868:1420 | EHP | lo | 83647/500000 | 230551557/1378120000 | 736 | 868:88, 868:1180, 868:108, 868:1405, 868:249 |
| 868:1421 | FHQ | lo | 154591/1000000 | 119446596000/772658499929 | 777 | 868:98, 868:1394, 868:1399, 868:192, 868:105 |
| 868:1422 | HPR | lo | 38259/250000 | 21090328407/137812000000 | 790 | 868:108, 868:1395, 868:1387, 868:1180, 868:249 |
| 868:1423 | CFP | lo | 118251/1000000 | 21102610911/178455472000 | 798 | 868:1388, 868:144, 868:1390, 868:1415, 868:125 |
| 868:1425 | AQR | hi | 614217/1000000 | 28991006640948937/47200000000000000 | 2102 | 868:3, 868:92, 868:36, 868:1322, 868:13, 868:39 |
| 868:1426 | BFQ | hi | 113257/250000 | 106914427447/236000000000 | 2106 | 868:3, 868:92, 868:36, 868:1322, 868:1364, 868:87 |
| 868:1430 | FQS | lo | 166617/1000000 | 78643497/472000000 | 2125 | 868:3, 868:92, 868:36, 868:1322, 868:1375, 868:1403, 868:166 |
| 868:1433 | EFP | lo | 213741/1000000 | 53593337261/250739000000 | 2279 | 868:1368, 868:144, 868:52, 868:1409, 868:1369, 868:1388, 868:1417 |
| 868:1434 | FPQ | lo | 25811/200000 | 8089807967/62684750000 | 2287 | 868:1368, 868:144, 868:52, 868:1409, 868:1372, 868:138, 868:1421 |
| 868:1438 | PQR | hi | 255741/500000 | 303352082269/593085000000 | 2464 | 868:245, 868:1434, 868:1411, 868:44, 868:1425, 868:203 |
| 868:1442 | EFP | hi | 508303/1000000 | 4666572029463/9180700000000 | 2528 | 868:1339, 868:1304, 868:64, 868:44, 868:31, 868:166 |
| 868:1445 | BCP | lo | 4009/31250 | 337414457/2630125000 | 2558 | 868:246, 868:1180, 868:1411, 868:52, 868:0, 868:1382, 868:80 |
| 868:1446 | FPR | lo | 186937/1000000 | 983340411/5260250000 | 2578 | 868:246, 868:1180, 868:1411, 868:52, 868:1373, 868:192, 868:1394 |
| 868:1447 | FPS | lo | 19557/125000 | 11521978339/73643500000 | 2579 | 868:246, 868:1180, 868:1411, 868:52, 868:1375, 868:1356, 868:1430 |
| 868:1448 | EPQ | lo | 109543/1000000 | 481771/4397980 | 2654 | 868:1160, 868:1334, 868:64, 868:52, 868:36, 868:1405, 868:184 |
| 868:1449 | AHS | hi | 41231/62500 | 13506548431/20473900000 | 2676 | 868:1425, 868:226, 868:70, 868:1328, 868:246, 868:57 |
| 868:1452 | EPS | lo | 6049/50000 | 11767090541/97264750000 | 2740 | 868:1383, 868:144, 868:108, 868:1445, 868:1345, 868:1342, 868:1418 |
| 868:1457 | CPQ | lo | 11859/125000 | 6843591/72134375 | 2930 | 868:99, 868:188, 868:108, 868:100, 868:80, 868:138, 868:1416 |
| 868:1462 | ABQ | lo | 82401/500000 | 5996081349/36383368000 | 3065 | 868:123, 868:1400, 868:138, 868:128, 868:0, 868:1362, 868:1364 |
| 868:1463 | BHQ | lo | 71017/200000 | 51676755731/145533472000 | 3077 | 868:123, 868:1400, 868:138, 868:128, 868:1382, 868:88, 868:98 |
| 868:1464 | BPQ | lo | 71687/500000 | 10432919711/72766736000 | 3078 | 868:123, 868:1400, 868:138, 868:128, 868:1445, 868:1385, 868:100 |
| 868:1466 | ABS | lo | 37481/125000 | 155873391089/519841000000 | 3179 | 868:165, 868:1412, 868:186, 868:166, 868:1362, 868:1364, 868:1401 |
| 868:1467 | ACS | lo | 149541/500000 | 77737751781/259920500000 | 3180 | 868:165, 868:1412, 868:186, 868:166, 868:1365, 868:1366, 868:241 |
| 868:1468 | AQS | lo | 45527/250000 | 94667397/519841000 | 3185 | 868:165, 868:1412, 868:186, 868:166, 868:36, 868:1372, 868:1380 |
| 868:1474 | HPS | lo | 119869/1000000 | 31156579479/259920500000 | 3208 | 868:165, 868:1412, 868:186, 868:166, 868:1420, 868:188, 868:1422 |
| 868:1475 | HQS | lo | 53679/250000 | 22323637613/103968200000 | 3209 | 868:165, 868:1412, 868:186, 868:166, 868:1405, 868:1421, 868:1395 |
| 868:1476 | PQS | lo | 77159/500000 | 80221261663/519841000000 | 3212 | 868:165, 868:1412, 868:186, 868:166, 868:1448, 868:1434, 868:1396 |
| 868:1478 | AFS | hi | 550841/1000000 | 158002699361639/286839500000000 | 3299 | 868:203, 868:226, 868:1412, 868:1430, 868:245, 868:49 |
| 868:1481 | CES | lo | 33683/250000 | 9661677/71709875 | 3310 | 868:203, 868:226, 868:1412, 868:1430, 868:1388, 868:128, 868:130 |
| 868:1484 | BES | lo | 35309/200000 | 34462367679/195203500000 | 3345 | 868:215, 868:226, 868:1413, 868:1475, 868:88, 868:92, 868:1397 |
| 868:1486 | BFS | hi | 69643/125000 | 47494839645648463/85247000000000000 | 3385 | 868:1438, 868:226, 868:224, 868:1476, 868:100, 868:1426, 868:105 |
| 868:1494 | FHS | lo | 52099/500000 | 17765263/170494000 | 3398 | 868:1438, 868:226, 868:224, 868:1476, 868:188, 868:1421, 868:192 |
| 868:1499 | ABE | lo | 175401/500000 | 175401/500000 | 3423 | 868:36, 868:1462, 868:92 |
| 868:1501 | ABF | lo | 71169/250000 | 71169/250000 | 3427 | 868:44, 868:1407, 868:100 |
| 868:1502 | ACE | lo | 56939/200000 | 56939/200000 | 3441 | 868:36, 868:1398, 868:128 |
| 868:1503 | ACF | lo | 62979/200000 | 62979/200000 | 3445 | 868:44, 868:1409, 868:1423 |
| 868:1505 | ACH | hi | 752203/1000000 | 752203/1000000 | 3450 | 868:246, 868:25, 868:1416 |
| 868:1506 | AEF | lo | 205207/500000 | 205207/500000 | 3457 | 868:44, 868:1410, 868:1433 |
| 868:1508 | AER | lo | 43069/125000 | 43069/125000 | 3470 | 868:70, 868:1404, 868:186 |
| 868:1509 | AFQ | lo | 316007/1000000 | 316007/1000000 | 3475 | 868:44, 868:1411, 868:1434 |
| 868:1510 | AFR | lo | 372937/1000000 | 372937/1000000 | 3476 | 868:44, 868:62, 868:1446 |
| 868:1512 | AFS | lo | 42807/125000 | 42807/125000 | 3477 | 868:44, 868:64, 868:1447 |
| 868:1514 | AHQ | lo | 14591/50000 | 14591/50000 | 3481 | 868:52, 868:1411, 868:1180 |
| 868:1515 | AHR | lo | 84759/250000 | 84759/250000 | 3482 | 868:52, 868:62, 868:1422 |
| 868:1517 | AQR | lo | 92027/250000 | 92027/250000 | 3490 | 868:70, 868:1468, 868:226 |
| 868:1519 | BCH | lo | 19643/62500 | 19643/62500 | 3502 | 868:108, 868:1445, 868:144 |
| 868:1520 | BCH | hi | 97263/125000 | 778103811/1000000000 | 3503 | 868:249, 868:81, 868:1416 |
| 868:1521 | BEF | lo | 424523/1000000 | 424523/1000000 | 3511 | 868:1399, 868:92, 868:1400 |
| 868:1522 | BEP | lo | 345917/1000000 | 345917/1000000 | 3518 | 868:1464, 868:92, 868:1448 |
| 868:1524 | BHR | lo | 107351/250000 | 107351/250000 | 3529 | 868:108, 868:1419, 868:1422 |
| 868:1525 | CEF | lo | 350483/1000000 | 350483/1000000 | 3533 | 868:138, 868:128, 868:1400 |
| 868:1526 | CEH | lo | 203987/500000 | 203987/500000 | 3537 | 868:1416, 868:128, 868:1405 |
| 868:1527 | CEP | lo | 59483/200000 | 59483/200000 | 3540 | 868:1457, 868:128, 868:1448 |
| 868:1528 | EFR | lo | 298857/1000000 | 298857/1000000 | 3562 | 868:186, 868:166, 868:1412 |
| 868:1530 | EPR | lo | 15349/50000 | 15349/50000 | 3571 | 868:186, 868:1452, 868:224 |
| 868:1531 | FQR | lo | 186237/500000 | 186237/500000 | 3582 | 868:1412, 868:1430, 868:226 |
| 868:1532 | HQR | lo | 423089/1000000 | 423089/1000000 | 3586 | 868:1413, 868:1475, 868:226 |
| 868:1533 | PQR | lo | 170159/500000 | 170159/500000 | 3587 | 868:224, 868:1476, 868:226 |
| 868:1534 | BER | lo | 8563/62500 | 32333961/236000000 | 56 | 868:1499, 868:130, 868:1508, 868:72, 868:17 |
| 868:1535 | ACQ | lo | 98703/1000000 | 44715237/453028000 | 77 | 868:1462, 868:138, 868:1509, 868:80, 868:1426 |
| 868:1536 | BFQ | lo | 167049/1000000 | 44715237/267676000 | 77 | 868:1462, 868:138, 868:1509, 868:80, 868:25 |
| 868:1537 | EFQ | lo | 16451/100000 | 77649141/472000000 | 138 | 868:1506, 868:92, 868:36, 868:1521, 868:3 |
| 868:1538 | ABR | lo | 289343/1000000 | 114456365313/395573045000 | 141 | 868:1499, 868:1510, 868:1501, 868:1508, 868:31 |
| 868:1540 | BFS | lo | 217223/1000000 | 21481914561/98893261250 | 149 | 868:1501, 868:166, 868:1512, 868:1521, 868:31 |
| 868:1541 | AES | lo | 158567/1000000 | 2208618963/13928600000 | 150 | 868:1466, 868:166, 868:1512, 868:1484, 868:1486 |
| 868:1542 | EHQ | lo | 210357/1000000 | 12032433/57200000 | 160 | 868:36, 868:1463, 868:1514, 868:92, 868:11 |
| 868:1544 | ABP | lo | 49343/500000 | 13590183/137710250 | 222 | 868:1501, 868:64, 868:1466, 868:44, 868:1478 |
| 868:1546 | ACP | lo | 103659/1000000 | 57099861/550841000 | 357 | 868:1503, 868:64, 868:1467, 868:44, 868:1478 |
| 868:1547 | AEP | lo | 51843/500000 | 70211838/677152549 | 421 | 868:1506, 868:62, 868:1508, 868:44, 868:49 |
| 868:1548 | APQ | lo | 23489/250000 | 63622695/677152549 | 526 | 868:44, 868:1517, 868:1509, 868:62, 868:49 |
| 868:1549 | FRS | lo | 3527/31250 | 23107741/204739000 | 544 | 868:1510, 868:226, 868:70, 868:1531, 868:1425 |
| 868:1550 | HRS | lo | 23079/200000 | 189007/1637912 | 564 | 868:1515, 868:226, 868:70, 868:1532, 868:1425 |
| 868:1552 | CFH | lo | 43563/250000 | 5118631991/29374758500 | 575 | 868:1519, 868:1417, 868:98, 868:1526, 868:89 |
| 868:1553 | CHQ | lo | 104629/1000000 | 11849967/113257000 | 643 | 868:80, 868:1421, 868:1463, 868:138, 868:1426 |
| 868:1554 | EFH | lo | 159011/1000000 | 122861742000/772658499929 | 705 | 868:1521, 868:192, 868:98, 868:1528, 868:105 |
| 868:1555 | EHS | lo | 110099/1000000 | 18501529399/168043325800 | 709 | 868:88, 868:166, 868:1484, 868:1554, 868:87 |
| 868:1556 | BPR | lo | 91691/500000 | 93213826229/508303000000 | 721 | 868:1522, 868:1446, 868:100, 868:1530, 868:1442 |
| 868:1557 | FHQ | lo | 154603/1000000 | 283743000/1835293349 | 777 | 868:98, 868:1531, 868:1536, 868:192, 868:105 |
| 868:1558 | HPR | lo | 153067/1000000 | 10547251959/68906000000 | 790 | 868:108, 868:1532, 868:1524, 868:1180, 868:249 |
| 868:1559 | CFP | lo | 14783/125000 | 4221003879/35691094400 | 798 | 868:1525, 868:144, 868:1527, 868:1552, 868:125 |
| 868:1561 | AQR | hi | 76777/125000 | 14495490209412209/23600000000000000 | 2102 | 868:3, 868:92, 868:36, 868:1462, 868:13, 868:39 |
| 868:1562 | BFQ | hi | 14157/31250 | 106913543947/236000000000 | 2106 | 868:3, 868:92, 868:36, 868:1462, 868:1501, 868:87 |
| 868:1566 | FQS | lo | 166627/1000000 | 78648147/472000000 | 2125 | 868:3, 868:92, 868:36, 868:1462, 868:1512, 868:1540, 868:166 |
| 868:1569 | EFP | lo | 106883/500000 | 160795926233/752203000000 | 2279 | 868:1505, 868:144, 868:52, 868:1546, 868:1506, 868:1525, 868:1554 |
| 868:1570 | FPQ | lo | 129061/1000000 | 97080235377/752203000000 | 2287 | 868:1505, 868:144, 868:52, 868:1546, 868:1509, 868:138, 868:1557 |
| 868:1574 | PQR | hi | 511481/1000000 | 75837878497/148271250000 | 2464 | 868:245, 868:1570, 868:1548, 868:44, 868:1561, 868:203 |
| 868:1578 | EFP | hi | 254151/500000 | 27999353062169/55084100000000 | 2528 | 868:1478, 868:1447, 868:64, 868:44, 868:31, 868:166 |
| 868:1581 | BCP | lo | 12829/100000 | 590485151/4602718750 | 2558 | 868:246, 868:1180, 868:1548, 868:52, 868:0, 868:1519, 868:80 |
| 868:1582 | FPR | lo | 37389/200000 | 27534569829/147287000000 | 2578 | 868:246, 868:1180, 868:1548, 868:52, 868:1510, 868:192, 868:1531 |
| 868:1583 | FPS | lo | 78231/500000 | 1646063933/10520500000 | 2579 | 868:246, 868:1180, 868:1548, 868:52, 868:1512, 868:1494, 868:1566 |
| 868:1584 | EPQ | lo | 13693/125000 | 72265929/659696000 | 2654 | 868:1449, 868:1474, 868:64, 868:52, 868:36, 868:1542, 868:184 |
| 868:1587 | EPS | lo | 15123/125000 | 980612701/8105250000 | 2740 | 868:1520, 868:144, 868:108, 868:1581, 868:1484, 868:1481, 868:1555 |
| 868:1591 | CPQ | lo | 47437/500000 | 6843684/72134375 | 2930 | 868:99, 868:188, 868:108, 868:100, 868:80, 868:138, 868:1553 |
| 868:1596 | ABQ | lo | 164807/1000000 | 5996244099/36383368000 | 3065 | 868:123, 868:1537, 868:138, 868:128, 868:0, 868:1499, 868:1501 |
| 868:1597 | BHQ | lo | 355087/1000000 | 6459644801/18191684000 | 3077 | 868:123, 868:1537, 868:138, 868:128, 868:1519, 868:88, 868:98 |
| 868:1598 | BPQ | lo | 71689/500000 | 20866322621/145533472000 | 3078 | 868:123, 868:1537, 868:138, 868:128, 868:1581, 868:1522, 868:100 |
| 868:1600 | ABS | lo | 299867/1000000 | 7794176619/25992050000 | 3179 | 868:165, 868:1549, 868:186, 868:166, 868:1499, 868:1501, 868:1538 |
| 868:1601 | ACS | lo | 2991/10000 | 31096935899/103968200000 | 3180 | 868:165, 868:1549, 868:186, 868:166, 868:1502, 868:1503, 868:241 |
| 868:1602 | AQS | lo | 182113/1000000 | 23667477/129960250 | 3185 | 868:165, 868:1549, 868:186, 868:166, 868:36, 868:1509, 868:1517 |
| 868:1609 | HQS | lo | 10737/50000 | 111630795579/519841000000 | 3209 | 868:165, 868:1549, 868:186, 868:166, 868:1542, 868:1557, 868:1532 |
| 868:1610 | PQS | lo | 154321/1000000 | 1253476961/8122515625 | 3212 | 868:165, 868:1549, 868:186, 868:166, 868:1584, 868:1570, 868:1533 |
| 868:1613 | AFS | hi | 13771/25000 | 63200962050087/114735800000000 | 3299 | 868:203, 868:226, 868:1549, 868:1566, 868:245, 868:49 |
| 868:1616 | CES | lo | 6737/50000 | 38649033/286839500 | 3310 | 868:203, 868:226, 868:1549, 868:1566, 868:1525, 868:128, 868:130 |
| 868:1619 | BES | lo | 176549/1000000 | 861575187/4880087500 | 3345 | 868:215, 868:226, 868:1550, 868:1609, 868:88, 868:92, 868:1534 |
| 868:1621 | BFS | hi | 557143/1000000 | 284967893215390849/511481000000000000 | 3385 | 868:1574, 868:226, 868:224, 868:1610, 868:100, 868:1562, 868:105 |
| 868:1630 | FHS | lo | 521/5000 | 13324203/127870250 | 3398 | 868:1574, 868:226, 868:224, 868:1610, 868:188, 868:1557, 868:192 |
| 868:1636 | ABE | lo | 350807/1000000 | 350807/1000000 | 3423 | 868:36, 868:1596, 868:92 |
| 868:1638 | ABF | lo | 142343/500000 | 142343/500000 | 3427 | 868:44, 868:1544, 868:100 |
| 868:1639 | ACE | lo | 284703/1000000 | 284703/1000000 | 3441 | 868:36, 868:1535, 868:128 |
| 868:1640 | ACF | lo | 314923/1000000 | 314923/1000000 | 3445 | 868:44, 868:1546, 868:1559 |
| 868:1642 | ACH | hi | 150439/200000 | 150439/200000 | 3450 | 868:246, 868:25, 868:1553 |
| 868:1643 | AEF | lo | 102613/250000 | 102613/250000 | 3457 | 868:44, 868:1547, 868:1569 |
| 868:1645 | AER | lo | 344567/1000000 | 344567/1000000 | 3470 | 868:70, 868:1541, 868:186 |
| 868:1646 | AFQ | lo | 316017/1000000 | 316017/1000000 | 3475 | 868:44, 868:1548, 868:1570 |
| 868:1647 | AFR | lo | 74589/200000 | 74589/200000 | 3476 | 868:44, 868:62, 868:1582 |
| 868:1649 | AFS | lo | 171231/500000 | 171231/500000 | 3477 | 868:44, 868:64, 868:1583 |
| 868:1651 | AHQ | lo | 18239/62500 | 18239/62500 | 3481 | 868:52, 868:1548, 868:1180 |
| 868:1652 | AHR | lo | 339067/1000000 | 339067/1000000 | 3482 | 868:52, 868:62, 868:1558 |
| 868:1654 | AQR | lo | 368113/1000000 | 368113/1000000 | 3490 | 868:70, 868:1602, 868:226 |
| 868:1656 | BCH | lo | 31429/100000 | 31429/100000 | 3502 | 868:108, 868:1581, 868:144 |
| 868:1657 | BCH | hi | 48631/62500 | 778095811/1000000000 | 3503 | 868:249, 868:81, 868:1553 |
| 868:1658 | BEF | lo | 424559/1000000 | 424559/1000000 | 3511 | 868:1536, 868:92, 868:1537 |
| 868:1659 | BEP | lo | 172961/500000 | 172961/500000 | 3518 | 868:1598, 868:92, 868:1584 |
| 868:1661 | BHR | lo | 429449/1000000 | 429449/1000000 | 3529 | 868:108, 868:1556, 868:1558 |
| 868:1662 | CEF | lo | 35051/100000 | 35051/100000 | 3533 | 868:138, 868:128, 868:1537 |
| 868:1663 | CEH | lo | 203993/500000 | 203993/500000 | 3537 | 868:1553, 868:128, 868:1542 |
| 868:1664 | CEP | lo | 148709/500000 | 148709/500000 | 3540 | 868:1591, 868:128, 868:1584 |
| 868:1665 | EFR | lo | 18679/62500 | 18679/62500 | 3562 | 868:186, 868:166, 868:1549 |
| 868:1667 | EPR | lo | 38373/125000 | 38373/125000 | 3571 | 868:186, 868:1587, 868:224 |
| 868:1668 | FQR | lo | 372491/1000000 | 372491/1000000 | 3582 | 868:1549, 868:1566, 868:226 |
| 868:1669 | HQR | lo | 84627/200000 | 84627/200000 | 3586 | 868:1550, 868:1609, 868:226 |
| 868:1670 | PQR | lo | 340321/1000000 | 340321/1000000 | 3587 | 868:224, 868:1610, 868:226 |
| 868:1671 | BER | lo | 34253/250000 | 548049/4000000 | 56 | 868:1636, 868:130, 868:1645, 868:72, 868:17 |
| 868:1672 | ACQ | lo | 49353/500000 | 1863193/18876000 | 77 | 868:1596, 868:138, 868:1646, 868:80, 868:1562 |
| 868:1673 | BFQ | lo | 33411/200000 | 5589579/33459500 | 77 | 868:1596, 868:138, 868:1646, 868:80, 868:25 |
| 868:1674 | EFQ | lo | 6581/40000 | 77656023/472000000 | 138 | 868:1643, 868:92, 868:36, 868:1658, 868:3 |
| 868:1675 | ABR | lo | 144679/500000 | 228925117577/791146090000 | 141 | 868:1636, 868:1647, 868:1638, 868:1645, 868:31 |
| 868:1677 | BFS | lo | 217243/1000000 | 85935561129/395573045000 | 149 | 868:1638, 868:166, 868:1649, 868:1658, 868:31 |
| 868:1678 | AES | lo | 6343/40000 | 44174477319/278571500000 | 150 | 868:1600, 868:166, 868:1649, 868:1619, 868:1621 |
| 868:1679 | EHQ | lo | 210359/1000000 | 60162723/286000000 | 160 | 868:36, 868:1597, 868:1651, 868:92, 868:11 |
| 868:1681 | ABP | lo | 98691/1000000 | 54363429/550840000 | 222 | 868:1638, 868:64, 868:1600, 868:44, 868:1613 |
| 868:1683 | ACP | lo | 103667/1000000 | 57104139/550840000 | 357 | 868:1640, 868:64, 868:1601, 868:44, 868:1613 |
| 868:1684 | AEP | lo | 51847/500000 | 70216767/677152549 | 421 | 868:1643, 868:62, 868:1645, 868:44, 868:49 |
| 868:1685 | APQ | lo | 46979/500000 | 63624090/677152549 | 526 | 868:44, 868:1654, 868:1646, 868:62, 868:49 |
| 868:1686 | FRS | lo | 28217/250000 | 17331387/153554000 | 544 | 868:1647, 868:226, 868:70, 868:1668, 868:1561 |
| 868:1687 | HRS | lo | 57703/500000 | 35442393/307108000 | 564 | 868:1652, 868:226, 868:70, 868:1669, 868:1561 |
| 868:1689 | CFH | lo | 8713/50000 | 16380366119/93999227200 | 575 | 868:1656, 868:1554, 868:98, 868:1663, 868:89 |
| 868:1690 | CHQ | lo | 13079/125000 | 1580039/15100800 | 643 | 868:80, 868:1557, 868:1597, 868:138, 868:1562 |
| 868:1691 | EFH | lo | 79509/500000 | 122867043000/772658499929 | 705 | 868:1658, 868:192, 868:98, 868:1665, 868:105 |
| 868:1692 | EHS | lo | 110101/1000000 | 46254759441/420108314500 | 709 | 868:88, 868:166, 868:1619, 868:1691, 868:87 |
| 868:1693 | BPR | lo | 18339/100000 | 3107263343/16943400000 | 721 | 868:1659, 868:1582, 868:100, 868:1667, 868:1578 |
| 868:1694 | EHP | lo | 33459/200000 | 28819119/172265000 | 736 | 868:88, 868:1180, 868:108, 868:1679, 868:249 |
| 868:1695 | FHQ | lo | 15461/100000 | 119461104000/772658499929 | 777 | 868:98, 868:1668, 868:1673, 868:192, 868:105 |
| 868:1696 | HPR | lo | 153083/1000000 | 21096753183/137812000000 | 790 | 868:108, 868:1669, 868:1661, 868:1180, 868:249 |
| 868:1697 | CFP | lo | 1848/15625 | 2110637267/17845547200 | 798 | 868:1662, 868:144, 868:1664, 868:1689, 868:125 |
| 868:1699 | BFQ | hi | 226511/500000 | 106913078947/236000000000 | 2106 | 868:3, 868:92, 868:36, 868:1596, 868:1638, 868:87 |
| 868:1703 | FQS | lo | 20829/125000 | 15730113/94400000 | 2125 | 868:3, 868:92, 868:36, 868:1596, 868:1649, 868:1677, 868:166 |
| 868:1706 | EFP | lo | 10689/50000 | 16080466251/75219500000 | 2279 | 868:1642, 868:144, 868:52, 868:1683, 868:1643, 868:1662, 868:1691 |
| 868:1707 | FPQ | lo | 16133/125000 | 9708163987/75219500000 | 2287 | 868:1642, 868:144, 868:52, 868:1683, 868:1646, 868:138, 868:1695 |
| 868:1716 | BCP | lo | 128291/1000000 | 3779136491/29457400000 | 2558 | 868:246, 868:1180, 868:1685, 868:52, 868:0, 868:1656, 868:80 |
| 868:1717 | FPR | lo | 186949/1000000 | 5507034963/29457400000 | 2578 | 868:246, 868:1180, 868:1685, 868:52, 868:1647, 868:192, 868:1668 |
| 868:1718 | FPS | lo | 31293/200000 | 11522682127/73643500000 | 2579 | 868:246, 868:1180, 868:1685, 868:52, 868:1649, 868:1630, 868:1703 |
| 868:1719 | EPS | lo | 120987/1000000 | 11767529837/97262000000 | 2740 | 868:1657, 868:144, 868:108, 868:1716, 868:1619, 868:1616, 868:1692 |
| 868:1727 | ABQ | lo | 164809/1000000 | 11992662573/72766736000 | 3065 | 868:123, 868:1674, 868:138, 868:128, 868:0, 868:1636, 868:1638 |
| 868:1728 | BHQ | lo | 355089/1000000 | 103354746001/291066944000 | 3077 | 868:123, 868:1674, 868:138, 868:128, 868:1656, 868:88, 868:98 |
| 868:1729 | BPQ | lo | 7169/50000 | 83466449359/582133888000 | 3078 | 868:123, 868:1674, 868:138, 868:128, 868:1716, 868:1659, 868:100 |
| 868:1731 | HPQ | lo | 104869/1000000 | 7630985823/72766736000 | 3096 | 868:123, 868:1674, 868:138, 868:128, 868:144, 868:1694, 868:188 |
| 868:1732 | ABS | lo | 149939/500000 | 77944447977/259920500000 | 3179 | 868:165, 868:1686, 868:186, 868:166, 868:1636, 868:1638, 868:1675 |
| 868:1733 | ACS | lo | 29911/100000 | 155489954223/519841000000 | 3180 | 868:165, 868:1686, 868:186, 868:166, 868:1639, 868:1640, 868:241 |
| 868:1734 | AQS | lo | 36423/200000 | 94671303/519841000 | 3185 | 868:165, 868:1686, 868:186, 868:166, 868:36, 868:1646, 868:1654 |
| 868:1741 | HQS | lo | 214753/1000000 | 55818860071/259920500000 | 3209 | 868:165, 868:1686, 868:186, 868:166, 868:1679, 868:1695, 868:1669 |
| 868:1742 | PQS | lo | 77161/500000 | 5013942719/32490062500 | 3212 | 868:165, 868:1686, 868:186, 868:166, 868:1584, 868:1707, 868:1670 |
| 868:1743 | AFS | hi | 550839/1000000 | 316004473980239/573679000000000 | 3299 | 868:203, 868:226, 868:1686, 868:1703, 868:245, 868:49 |
| 868:1746 | CES | lo | 26949/200000 | 77300577/573679000 | 3310 | 868:203, 868:226, 868:1686, 868:1703, 868:1662, 868:128, 868:130 |
| 868:1749 | BES | lo | 3531/20000 | 34463365259/195203500000 | 3345 | 868:215, 868:226, 868:1687, 868:1741, 868:88, 868:92, 868:1671 |
| 868:1756 | FHS | lo | 52101/500000 | 53297463/511481000 | 3398 | 868:1574, 868:226, 868:224, 868:1742, 868:188, 868:1695, 868:192 |
| 868:1759 | ABE | lo | 350809/1000000 | 350809/1000000 | 3423 | 868:36, 868:1727, 868:92 |
| 868:1761 | ABF | lo | 284691/1000000 | 284691/1000000 | 3427 | 868:44, 868:1681, 868:100 |
| 868:1762 | ACE | lo | 142353/500000 | 142353/500000 | 3441 | 868:36, 868:1672, 868:128 |
| 868:1763 | ACF | lo | 314939/1000000 | 314939/1000000 | 3445 | 868:44, 868:1683, 868:1697 |
| 868:1765 | ACH | hi | 11753/15625 | 11753/15625 | 3450 | 868:246, 868:25, 868:1690 |
| 868:1766 | AEF | lo | 205237/500000 | 205237/500000 | 3457 | 868:44, 868:1684, 868:1706 |
| 868:1768 | AER | lo | 13783/40000 | 13783/40000 | 3470 | 868:70, 868:1678, 868:186 |
| 868:1769 | AFQ | lo | 158011/500000 | 158011/500000 | 3475 | 868:44, 868:1685, 868:1707 |
| 868:1770 | AFR | lo | 372949/1000000 | 372949/1000000 | 3476 | 868:44, 868:62, 868:1717 |
| 868:1772 | AFS | lo | 68493/200000 | 68493/200000 | 3477 | 868:44, 868:64, 868:1718 |
| 868:1775 | AHQ | lo | 291827/1000000 | 291827/1000000 | 3481 | 868:52, 868:1685, 868:1731 |
| 868:1776 | AHR | lo | 339083/1000000 | 339083/1000000 | 3482 | 868:52, 868:62, 868:1696 |
| 868:1778 | AQR | lo | 73623/200000 | 73623/200000 | 3490 | 868:70, 868:1734, 868:226 |
| 868:1780 | BCH | lo | 314291/1000000 | 314291/1000000 | 3502 | 868:108, 868:1716, 868:144 |
| 868:1781 | BCH | hi | 778093/1000000 | 778092811/1000000000 | 3503 | 868:249, 868:81, 868:1690 |
| 868:1782 | BEF | lo | 21229/50000 | 21229/50000 | 3511 | 868:1673, 868:92, 868:1674 |
| 868:1783 | BEP | lo | 86481/250000 | 86481/250000 | 3518 | 868:1729, 868:92, 868:1584 |
| 868:1785 | BHR | lo | 429473/1000000 | 429473/1000000 | 3529 | 868:108, 868:1693, 868:1696 |
| 868:1786 | CEF | lo | 14021/40000 | 14021/40000 | 3533 | 868:138, 868:128, 868:1674 |
| 868:1787 | CEH | lo | 407991/1000000 | 407991/1000000 | 3537 | 868:1690, 868:128, 868:1679 |
| 868:1788 | EFR | lo | 74717/250000 | 74717/250000 | 3562 | 868:186, 868:166, 868:1686 |
| 868:1790 | EPR | lo | 306987/1000000 | 306987/1000000 | 3571 | 868:186, 868:1719, 868:224 |
| 868:1791 | FQR | lo | 149/400 | 149/400 | 3582 | 868:1686, 868:1703, 868:226 |
| 868:1792 | HQR | lo | 423159/1000000 | 423159/1000000 | 3586 | 868:1687, 868:1741, 868:226 |
| 868:1793 | PQR | lo | 170161/500000 | 170161/500000 | 3587 | 868:224, 868:1742, 868:226 |
| 868:1794 | BER | lo | 68507/500000 | 8083839/59000000 | 56 | 868:1759, 868:130, 868:1768, 868:72, 868:17 |
| 868:1795 | ACQ | lo | 24677/250000 | 44717283/453022000 | 77 | 868:1727, 868:138, 868:1769, 868:80, 868:1699 |
| 868:1796 | BFQ | lo | 167057/1000000 | 44717283/267676000 | 77 | 868:1727, 868:138, 868:1769, 868:80, 868:25 |
| 868:1797 | EFQ | lo | 164533/1000000 | 38830011/236000000 | 138 | 868:1766, 868:92, 868:36, 868:1782, 868:3 |
| 868:1798 | ABR | lo | 144683/500000 | 114465633533/395573045000 | 141 | 868:1759, 868:1770, 868:1761, 868:1768, 868:31 |
| 868:1800 | BFS | lo | 108627/500000 | 1718800527/7911460900 | 149 | 868:1761, 868:166, 868:1772, 868:1782, 868:31 |
| 868:1801 | AES | lo | 79289/500000 | 353403399/2228572000 | 150 | 868:1732, 868:166, 868:1772, 868:1749, 868:1621 |
| 868:1802 | EHQ | lo | 5259/25000 | 15040797/71500000 | 160 | 868:36, 868:1728, 868:1775, 868:92, 868:11 |
| 868:1804 | ABP | lo | 49347/500000 | 584569/5923000 | 222 | 868:1761, 868:64, 868:1732, 868:44, 868:1743 |
| 868:1806 | ACP | lo | 103671/1000000 | 614049/5923000 | 357 | 868:1763, 868:64, 868:1733, 868:44, 868:1743 |
| 868:1807 | AEP | lo | 51849/500000 | 70219557/677152549 | 421 | 868:1766, 868:62, 868:1768, 868:44, 868:49 |
| 868:1808 | APQ | lo | 93959/1000000 | 63624741/677152549 | 526 | 868:44, 868:1778, 868:1769, 868:62, 868:49 |
| 868:1809 | FRS | lo | 11287/100000 | 69326757/614216000 | 544 | 868:1770, 868:226, 868:70, 868:1791, 868:1561 |
| 868:1810 | HRS | lo | 28853/250000 | 35444253/307108000 | 564 | 868:1776, 868:226, 868:70, 868:1792, 868:1561 |
| 868:1812 | CFH | lo | 21783/125000 | 81903707619/469996136000 | 575 | 868:1780, 868:1691, 868:98, 868:1787, 868:89 |
| 868:1813 | CHQ | lo | 20927/200000 | 47402007/453022000 | 643 | 868:80, 868:1695, 868:1728, 868:138, 868:1699 |
| 868:1814 | EFH | lo | 79511/500000 | 122870112000/772658499929 | 705 | 868:1782, 868:192, 868:98, 868:1788, 868:105 |
| 868:1815 | EHS | lo | 110103/1000000 | 925103841/8402166290 | 709 | 868:88, 868:166, 868:1749, 868:1814, 868:87 |
| 868:1816 | BPR | lo | 91697/500000 | 2589442691/14119500000 | 721 | 868:1783, 868:1717, 868:100, 868:1790, 868:1578 |
| 868:1817 | EHP | lo | 2614/15625 | 1844439333/11024960000 | 736 | 868:88, 868:1731, 868:108, 868:1802, 868:249 |
| 868:1818 | FHQ | lo | 154613/1000000 | 119463801000/772658499929 | 777 | 868:98, 868:1791, 868:1796, 868:192, 868:105 |
| 868:1819 | HPR | lo | 38273/250000 | 84392191037/551248000000 | 790 | 868:108, 868:1792, 868:1785, 868:1731, 868:249 |
| 868:1820 | CFP | lo | 29569/250000 | 10553509419/89227736000 | 798 | 868:1786, 868:144, 868:1664, 868:1812, 868:125 |
| 868:1822 | BFQ | hi | 453021/1000000 | 106912846447/236000000000 | 2106 | 868:3, 868:92, 868:36, 868:1727, 868:1761, 868:87 |
| 868:1825 | FQS | lo | 33327/200000 | 78651867/472000000 | 2125 | 868:3, 868:92, 868:36, 868:1727, 868:1772, 868:1800, 868:166 |
| 868:1828 | EFP | lo | 53447/250000 | 20101236403/94024000000 | 2279 | 868:1765, 868:144, 868:52, 868:1806, 868:1766, 868:1786, 868:1814 |
| 868:1829 | FPQ | lo | 25813/200000 | 97082383323/752192000000 | 2287 | 868:1765, 868:144, 868:52, 868:1806, 868:1769, 868:138, 868:1818 |
| 868:1836 | EFP | hi | 508301/1000000 | 301066611107/592300000000 | 2528 | 868:1743, 868:1718, 868:64, 868:44, 868:31, 868:166 |
| 868:1839 | BCP | lo | 32073/250000 | 10797577867/84164000000 | 2558 | 868:246, 868:1731, 868:1808, 868:52, 868:0, 868:1780, 868:80 |
| 868:1840 | FPR | lo | 186951/1000000 | 110142235681/589148000000 | 2578 | 868:246, 868:1731, 868:1808, 868:52, 868:1770, 868:192, 868:1791 |
| 868:1841 | FPS | lo | 39117/250000 | 92183071443/589148000000 | 2579 | 868:246, 868:1731, 868:1808, 868:52, 868:1772, 868:1756, 868:1825 |
| 868:1842 | EPS | lo | 12099/100000 | 94141650579/778093000000 | 2740 | 868:1781, 868:144, 868:108, 868:1839, 868:1749, 868:1746, 868:1815 |
| 868:1846 | CPQ | lo | 759/8000 | 5475003/57707500 | 2930 | 868:99, 868:188, 868:108, 868:100, 868:80, 868:138, 868:1813 |
| 868:1852 | ABQ | lo | 16481/100000 | 2998185987/18191684000 | 3065 | 868:123, 868:1797, 868:138, 868:128, 868:0, 868:1759, 868:1761 |
| 868:1853 | BHQ | lo | 35509/100000 | 5905998253/16632396800 | 3077 | 868:123, 868:1797, 868:138, 868:128, 868:1780, 868:88, 868:98 |
| 868:1854 | BPQ | lo | 143381/1000000 | 4173354111/29106694400 | 3078 | 868:123, 868:1797, 868:138, 868:128, 868:1839, 868:1783, 868:100 |
| 868:1856 | ABS | lo | 299883/1000000 | 155891567791/519841000000 | 3179 | 868:165, 868:1809, 868:186, 868:166, 868:1759, 868:1761, 868:1798 |
| 868:1857 | ACS | lo | 59823/200000 | 77746221873/259920500000 | 3180 | 868:165, 868:1809, 868:186, 868:166, 868:1762, 868:1763, 868:241 |
| 868:1858 | AQS | lo | 182117/1000000 | 47335977/259920500 | 3185 | 868:165, 868:1809, 868:186, 868:166, 868:36, 868:1769, 868:1778 |
| 868:1865 | HQS | lo | 5369/25000 | 111641118423/519841000000 | 3209 | 868:165, 868:1809, 868:186, 868:166, 868:1802, 868:1818, 868:1792 |
| 868:1871 | BES | lo | 176551/1000000 | 1723177483/9760175000 | 3345 | 868:215, 868:226, 868:1810, 868:1865, 868:88, 868:92, 868:1794 |
| 868:1875 | ABE | lo | 35081/100000 | 35081/100000 | 3423 | 868:36, 868:1852, 868:92 |
| 868:1877 | ABF | lo | 142347/500000 | 142347/500000 | 3427 | 868:44, 868:1804, 868:100 |
| 868:1878 | ACE | lo | 71177/250000 | 71177/250000 | 3441 | 868:36, 868:1795, 868:128 |
| 868:1879 | ACF | lo | 314947/1000000 | 314947/1000000 | 3445 | 868:44, 868:1806, 868:1820 |
| 868:1881 | ACH | hi | 752189/1000000 | 752189/1000000 | 3450 | 868:246, 868:25, 868:1813 |
| 868:1882 | AEF | lo | 205243/500000 | 205243/500000 | 3457 | 868:44, 868:1807, 868:1828 |
| 868:1884 | AER | lo | 172289/500000 | 172289/500000 | 3470 | 868:70, 868:1801, 868:186 |
| 868:1885 | AFQ | lo | 39503/125000 | 39503/125000 | 3475 | 868:44, 868:1808, 868:1829 |
| 868:1886 | AFR | lo | 372951/1000000 | 372951/1000000 | 3476 | 868:44, 868:62, 868:1840 |
| 868:1888 | AFS | lo | 85617/250000 | 85617/250000 | 3477 | 868:44, 868:64, 868:1841 |
| 868:1889 | AHQ | lo | 72957/250000 | 72957/250000 | 3481 | 868:52, 868:1808, 868:1731 |
| 868:1890 | AHR | lo | 84773/250000 | 84773/250000 | 3482 | 868:52, 868:62, 868:1819 |
| 868:1892 | AQR | lo | 368117/1000000 | 368117/1000000 | 3490 | 868:70, 868:1858, 868:226 |
| 868:1894 | BCH | lo | 78573/250000 | 78573/250000 | 3502 | 868:108, 868:1839, 868:144 |
| 868:1896 | BEF | lo | 42459/100000 | 42459/100000 | 3511 | 868:1796, 868:92, 868:1797 |
| 868:1897 | BEP | lo | 13837/40000 | 13837/40000 | 3518 | 868:1854, 868:92, 868:1584 |
| 868:1899 | BHR | lo | 214743/500000 | 214743/500000 | 3529 | 868:108, 868:1816, 868:1819 |
| 868:1900 | CEF | lo | 350533/1000000 | 350533/1000000 | 3533 | 868:138, 868:128, 868:1797 |
| 868:1901 | CEH | lo | 81599/200000 | 81599/200000 | 3537 | 868:1813, 868:128, 868:1802 |
| 868:1902 | CEP | lo | 297419/1000000 | 297419/1000000 | 3540 | 868:1846, 868:128, 868:1584 |
| 868:1903 | EFR | lo | 29887/100000 | 29887/100000 | 3562 | 868:186, 868:166, 868:1809 |
| 868:1905 | EPR | lo | 30699/100000 | 30699/100000 | 3571 | 868:186, 868:1842, 868:224 |
| 868:1906 | FQR | lo | 74501/200000 | 74501/200000 | 3582 | 868:1809, 868:1825, 868:226 |
| 868:1907 | HQR | lo | 105793/250000 | 105793/250000 | 3586 | 868:1810, 868:1865, 868:226 |
| 868:1908 | BER | lo | 27403/200000 | 16167771/118000000 | 56 | 868:1875, 868:130, 868:1884, 868:72, 868:17 |
| 868:1909 | ACQ | lo | 98709/1000000 | 7452927/75503500 | 77 | 868:1852, 868:138, 868:1885, 868:80, 868:1822 |
| 868:1910 | BFQ | lo | 83529/500000 | 22358781/133838000 | 77 | 868:1852, 868:138, 868:1885, 868:80, 868:25 |
| 868:1911 | EFQ | lo | 82269/500000 | 19415517/118000000 | 138 | 868:1882, 868:92, 868:36, 868:1896, 868:3 |
| 868:1912 | ABR | lo | 28937/100000 | 114467114721/395573045000 | 141 | 868:1875, 868:1886, 868:1877, 868:1884, 868:31 |
| 868:1914 | BFS | lo | 10863/50000 | 4297125753/19778652250 | 149 | 868:1877, 868:166, 868:1888, 868:1896, 868:31 |
| 868:1915 | AES | lo | 7929/50000 | 22088046717/139285750000 | 150 | 868:1856, 868:166, 868:1888, 868:1871, 868:1621 |
| 868:1916 | EHQ | lo | 210361/1000000 | 30081687/143000000 | 160 | 868:36, 868:1853, 868:1889, 868:92, 868:11 |
| 868:1918 | ABP | lo | 12337/125000 | 584577/5923000 | 222 | 868:1877, 868:64, 868:1856, 868:44, 868:1743 |
| 868:1920 | ACP | lo | 51837/500000 | 307031/2961500 | 357 | 868:1879, 868:64, 868:1857, 868:44, 868:1743 |
| 868:1921 | AEP | lo | 1037/10000 | 70220952/677152549 | 421 | 868:1882, 868:62, 868:1884, 868:44, 868:49 |
| 868:1922 | FRS | lo | 112871/1000000 | 4332963/38388500 | 544 | 868:1886, 868:226, 868:70, 868:1906, 868:1561 |
| 868:1923 | HRS | lo | 14427/125000 | 8861319/76777000 | 564 | 868:1890, 868:226, 868:70, 868:1907, 868:1561 |
| 868:1925 | CFH | lo | 174267/1000000 | 5119060857/29374758500 | 575 | 868:1894, 868:1814, 868:98, 868:1901, 868:89 |
| 868:1926 | CHQ | lo | 26159/250000 | 15800793/151007000 | 643 | 868:80, 868:1818, 868:1853, 868:138, 868:1822 |
| 868:1927 | EFH | lo | 9939/62500 | 122871600000/772658499929 | 705 | 868:1896, 868:192, 868:98, 868:1903, 868:105 |
| 868:1928 | BPR | lo | 183397/1000000 | 3728843787/20332040000 | 721 | 868:1897, 868:1840, 868:100, 868:1905, 868:1836 |
| 868:1929 | FHQ | lo | 30923/200000 | 5194143000/33593847823 | 777 | 868:98, 868:1906, 868:1910, 868:192, 868:105 |
| 868:1930 | HPR | lo | 153097/1000000 | 42197381667/275624000000 | 790 | 868:108, 868:1907, 868:1899, 868:1731, 868:249 |
| 868:1931 | CFP | lo | 59139/500000 | 84429885873/713821888000 | 798 | 868:1900, 868:144, 868:1902, 868:1925, 868:125 |
| 868:1933 | BFQ | hi | 22651/50000 | 106912706947/236000000000 | 2106 | 868:3, 868:92, 868:36, 868:1852, 868:1877, 868:87 |
| 868:1937 | FQS | lo | 166637/1000000 | 2457897/14750000 | 2125 | 868:3, 868:92, 868:36, 868:1852, 868:1888, 868:1914, 868:166 |
| 868:1939 | EFP | lo | 6681/31250 | 20101550817/94023625000 | 2279 | 868:1881, 868:144, 868:52, 868:1920, 868:1882, 868:1900, 868:1927 |
| 868:1940 | FPQ | lo | 64533/500000 | 9708268251/75218900000 | 2287 | 868:1881, 868:144, 868:52, 868:1920, 868:1885, 868:138, 868:1929 |
| 868:1946 | FPR | lo | 23369/125000 | 110142910419/589148000000 | 2578 | 868:246, 868:1731, 868:1808, 868:52, 868:1886, 868:192, 868:1906 |
| 868:1947 | FPS | lo | 156469/1000000 | 1843671441/11782960000 | 2579 | 868:246, 868:1731, 868:1808, 868:52, 868:1888, 868:1756, 868:1937 |
| 868:1952 | ABQ | lo | 164811/1000000 | 749549403/4547921000 | 3065 | 868:123, 868:1911, 868:138, 868:128, 868:0, 868:1875, 868:1877 |
| 868:1953 | ABS | lo | 149943/500000 | 15589306069/51984100000 | 3179 | 868:165, 868:1922, 868:186, 868:166, 868:1875, 868:1877, 868:1912 |
| 868:1954 | ACS | lo | 149559/500000 | 38873463857/129960250000 | 3180 | 868:165, 868:1922, 868:186, 868:166, 868:1878, 868:1879, 868:241 |
| 868:1961 | HQS | lo | 214763/1000000 | 111643123981/519841000000 | 3209 | 868:165, 868:1922, 868:186, 868:166, 868:1916, 868:1929, 868:1907 |
| 868:1964 | CES | lo | 134749/1000000 | 19325679/143419750 | 3310 | 868:203, 868:226, 868:1922, 868:1937, 868:1900, 868:128, 868:130 |
| 868:1967 | BES | lo | 22069/125000 | 27570909089/156162800000 | 3345 | 868:215, 868:226, 868:1923, 868:1961, 868:88, 868:92, 868:1908 |
| 868:1968 | BFS | hi | 278571/500000 | 284967521215390849/511481000000000000 | 3385 | 868:1574, 868:226, 868:224, 868:1742, 868:100, 868:1933, 868:105 |
| 868:1973 | FHS | lo | 104203/1000000 | 6662241/63935125 | 3398 | 868:1574, 868:226, 868:224, 868:1742, 868:188, 868:1929, 868:192 |
| 868:1975 | ABE | lo | 350811/1000000 | 350811/1000000 | 3423 | 868:36, 868:1952, 868:92 |
| 868:1977 | ABF | lo | 35587/125000 | 35587/125000 | 3427 | 868:44, 868:1918, 868:100 |
| 868:1978 | ACE | lo | 284709/1000000 | 284709/1000000 | 3441 | 868:36, 868:1909, 868:128 |
| 868:1979 | ACF | lo | 39369/125000 | 39369/125000 | 3445 | 868:44, 868:1920, 868:1931 |
| 868:1981 | ACH | hi | 188047/250000 | 188047/250000 | 3450 | 868:246, 868:25, 868:1926 |
| 868:1982 | AEF | lo | 102623/250000 | 102623/250000 | 3457 | 868:44, 868:1921, 868:1939 |
| 868:1984 | AER | lo | 17229/50000 | 17229/50000 | 3470 | 868:70, 868:1915, 868:186 |
| 868:1985 | AFQ | lo | 12641/40000 | 12641/40000 | 3475 | 868:44, 868:1808, 868:1940 |
| 868:1986 | AFR | lo | 46619/125000 | 46619/125000 | 3476 | 868:44, 868:62, 868:1946 |
| 868:1988 | AFS | lo | 342469/1000000 | 342469/1000000 | 3477 | 868:44, 868:64, 868:1947 |
| 868:1989 | AHR | lo | 339097/1000000 | 339097/1000000 | 3482 | 868:52, 868:62, 868:1930 |
| 868:1992 | BCH | hi | 778089/1000000 | 778088811/1000000000 | 3503 | 868:249, 868:81, 868:1926 |
| 868:1993 | BEF | lo | 106149/250000 | 106149/250000 | 3511 | 868:1910, 868:92, 868:1911 |
| 868:1994 | BHR | lo | 214747/500000 | 214747/500000 | 3529 | 868:108, 868:1928, 868:1930 |
| 868:1995 | CEF | lo | 175269/500000 | 175269/500000 | 3533 | 868:138, 868:128, 868:1911 |
| 868:1996 | CEH | lo | 407997/1000000 | 407997/1000000 | 3537 | 868:1926, 868:128, 868:1916 |
| 868:1997 | EFR | lo | 298871/1000000 | 298871/1000000 | 3562 | 868:186, 868:166, 868:1922 |
| 868:1999 | FQR | lo | 93127/250000 | 93127/250000 | 3582 | 868:1922, 868:1937, 868:226 |
| 868:2000 | HQR | lo | 423179/1000000 | 423179/1000000 | 3586 | 868:1923, 868:1961, 868:226 |
| 868:2001 | ACQ | lo | 9871/100000 | 11179437/113255000 | 77 | 868:1952, 868:138, 868:1985, 868:80, 868:1933 |
| 868:2002 | BFQ | lo | 167059/1000000 | 11179437/66919000 | 77 | 868:1952, 868:138, 868:1985, 868:80, 868:25 |
| 868:2003 | EFQ | lo | 8227/50000 | 4853949/29500000 | 138 | 868:1982, 868:92, 868:36, 868:1993, 868:3 |
| 868:2004 | ABR | lo | 72343/250000 | 28617026469/98893261250 | 141 | 868:1975, 868:1986, 868:1977, 868:1984, 868:31 |
| 868:2006 | BFS | lo | 13579/62500 | 42971923881/197786522500 | 149 | 868:1977, 868:166, 868:1988, 868:1993, 868:31 |
| 868:2007 | AES | lo | 79291/500000 | 11044123111/69642750000 | 150 | 868:1953, 868:166, 868:1988, 868:1967, 868:1968 |
| 868:2009 | ACP | lo | 4147/40000 | 61407/592300 | 357 | 868:1979, 868:64, 868:1954, 868:44, 868:1743 |
| 868:2010 | AEP | lo | 103701/1000000 | 70221696/677152549 | 421 | 868:1982, 868:62, 868:1984, 868:44, 868:49 |
| 868:2011 | HRS | lo | 57709/500000 | 17722917/153554000 | 564 | 868:1989, 868:226, 868:70, 868:2000, 868:1561 |
| 868:2013 | CFH | lo | 43567/250000 | 20476391751/117499034000 | 575 | 868:1894, 868:1927, 868:98, 868:1996, 868:89 |
| 868:2014 | EFH | lo | 6361/40000 | 122872437000/772658499929 | 705 | 868:1993, 868:192, 868:98, 868:1997, 868:105 |
| 868:2015 | EHS | lo | 13763/125000 | 462556159/4201083145 | 709 | 868:88, 868:166, 868:1967, 868:2014, 868:87 |
| 868:2016 | BPR | lo | 91699/500000 | 466107203/2541505000 | 721 | 868:1897, 868:1946, 868:100, 868:1905, 868:1836 |
| 868:2017 | FHQ | lo | 154617/1000000 | 119466219000/772658499929 | 777 | 868:98, 868:1999, 868:2002, 868:192, 868:105 |
| 868:2018 | HPR | lo | 1531/10000 | 42198126643/275624000000 | 790 | 868:108, 868:2000, 868:1994, 868:1731, 868:249 |
| 868:2019 | CFP | lo | 118279/1000000 | 21107662073/178455472000 | 798 | 868:1995, 868:144, 868:1902, 868:2013, 868:125 |
| 868:2022 | FQS | lo | 83319/500000 | 78653169/472000000 | 2125 | 868:3, 868:92, 868:36, 868:1952, 868:1988, 868:2006, 868:166 |
| 868:2024 | EFP | lo | 106897/500000 | 1608138367/7521880000 | 2279 | 868:1981, 868:144, 868:52, 868:2009, 868:1982, 868:1995, 868:2014 |
| 868:2025 | FPQ | lo | 129067/1000000 | 3883318059/30087520000 | 2287 | 868:1981, 868:144, 868:52, 868:2009, 868:1985, 868:138, 868:2017 |
| 868:2030 | FPR | lo | 186953/1000000 | 6883955893/36821750000 | 2578 | 868:246, 868:1731, 868:1808, 868:52, 868:1986, 868:192, 868:1999 |
| 868:2031 | FPS | lo | 15647/100000 | 46092080599/294574000000 | 2579 | 868:246, 868:1731, 868:1808, 868:52, 868:1988, 868:1973, 868:2022 |
| 868:2032 | EPS | lo | 120991/1000000 | 6905983/57078125 | 2740 | 868:1992, 868:144, 868:108, 868:1839, 868:1967, 868:1964, 868:2015 |
| 868:2035 | ABS | lo | 299887/1000000 | 3181509949/10609000000 | 3179 | 868:165, 868:1922, 868:186, 868:166, 868:1975, 868:1977, 868:2004 |
| 868:2036 | ACS | lo | 299119/1000000 | 155494654269/519841000000 | 3180 | 868:165, 868:1922, 868:186, 868:166, 868:1978, 868:1979, 868:241 |
| 868:2037 | AQS | lo | 91059/500000 | 94672419/519841000 | 3185 | 868:165, 868:1922, 868:186, 868:166, 868:36, 868:1985, 868:1892 |
| 868:2042 | HQS | lo | 107383/500000 | 111644402921/519841000000 | 3209 | 868:165, 868:1922, 868:186, 868:166, 868:1916, 868:2017, 868:2000 |
| 868:2043 | PQS | lo | 154323/1000000 | 5013965969/32490062500 | 3212 | 868:165, 868:1922, 868:186, 868:166, 868:1584, 868:2025, 868:1793 |
| 868:2049 | ACE | lo | 28471/100000 | 28471/100000 | 3441 | 868:36, 868:2001, 868:128 |
| 868:2050 | ACF | lo | 157477/500000 | 157477/500000 | 3445 | 868:44, 868:2009, 868:2019 |
| 868:2052 | AEF | lo | 82099/200000 | 82099/200000 | 3457 | 868:44, 868:2010, 868:2024 |
| 868:2054 | AER | lo | 172291/500000 | 172291/500000 | 3470 | 868:70, 868:2007, 868:186 |
| 868:2055 | AFQ | lo | 158013/500000 | 158013/500000 | 3475 | 868:44, 868:1808, 868:2025 |
| 868:2056 | AFR | lo | 372953/1000000 | 372953/1000000 | 3476 | 868:44, 868:62, 868:2030 |
| 868:2058 | AFS | lo | 34247/100000 | 34247/100000 | 3477 | 868:44, 868:64, 868:2031 |
| 868:2059 | AHR | lo | 3391/10000 | 3391/10000 | 3482 | 868:52, 868:62, 868:2018 |
| 868:2061 | AQR | lo | 184059/500000 | 184059/500000 | 3490 | 868:70, 868:2037, 868:226 |
| 868:2062 | BEF | lo | 424599/1000000 | 424599/1000000 | 3511 | 868:2002, 868:92, 868:2003 |
| 868:2063 | BHR | lo | 214749/500000 | 214749/500000 | 3529 | 868:108, 868:2016, 868:2018 |
| 868:2064 | CEF | lo | 17527/50000 | 17527/50000 | 3533 | 868:138, 868:128, 868:2003 |
| 868:2066 | EPR | lo | 306991/1000000 | 306991/1000000 | 3571 | 868:186, 868:2032, 868:224 |
| 868:2067 | FQR | lo | 372509/1000000 | 372509/1000000 | 3582 | 868:1922, 868:2022, 868:226 |
| 868:2068 | HQR | lo | 26449/62500 | 26449/62500 | 3586 | 868:2011, 868:2042, 868:226 |
| 868:2069 | PQR | lo | 340323/1000000 | 340323/1000000 | 3587 | 868:224, 868:2043, 868:226 |
| 868:2070 | EFQ | lo | 164541/1000000 | 38831871/236000000 | 138 | 868:2052, 868:92, 868:36, 868:2062, 868:3 |
| 868:2074 | AES | lo | 158583/1000000 | 2208831361/13928550000 | 150 | 868:2035, 868:166, 868:2058, 868:1967, 868:1968 |
| 868:2075 | ABP | lo | 98697/1000000 | 584583/5923000 | 222 | 868:1977, 868:64, 868:2035, 868:44, 868:1743 |
| 868:2077 | ACP | lo | 25919/250000 | 614073/5923000 | 357 | 868:2050, 868:64, 868:2036, 868:44, 868:1743 |
| 868:2078 | AEP | lo | 51851/500000 | 70222161/677152549 | 421 | 868:2052, 868:62, 868:2054, 868:44, 868:49 |
| 868:2079 | APQ | lo | 2349/25000 | 63625392/677152549 | 526 | 868:44, 868:2061, 868:2055, 868:62, 868:49 |
| 868:2080 | FRS | lo | 14109/125000 | 34663983/307108000 | 544 | 868:2056, 868:226, 868:70, 868:2067, 868:1561 |
| 868:2081 | HRS | lo | 115419/1000000 | 17723103/153554000 | 564 | 868:2059, 868:226, 868:70, 868:2068, 868:1561 |
| 868:2083 | CHQ | lo | 104637/1000000 | 47402751/453020000 | 643 | 868:80, 868:2017, 868:1853, 868:138, 868:1933 |
| 868:2084 | HPR | lo | 153101/1000000 | 42198568881/275624000000 | 790 | 868:108, 868:2068, 868:2063, 868:1731, 868:249 |
| 868:2085 | EFP | lo | 42759/200000 | 1608143017/7521880000 | 2279 | 868:1981, 868:144, 868:52, 868:2077, 868:2052, 868:2064, 868:2014 |
| 868:2096 | HQS | lo | 214767/1000000 | 22328984733/103968200000 | 3209 | 868:165, 868:2080, 868:186, 868:166, 868:1916, 868:2017, 868:2068 |
| 868:2097 | AFS | hi | 275419/500000 | 316004137710043/573679000000000 | 3299 | 868:203, 868:226, 868:2080, 868:2022, 868:245, 868:49 |
| 868:2099 | CES | lo | 539/4000 | 77303367/573679000 | 3310 | 868:203, 868:226, 868:2080, 868:2022, 868:2064, 868:128, 868:130 |
| 868:2101 | ABF | lo | 284697/1000000 | 284697/1000000 | 3427 | 868:44, 868:2075, 868:100 |
| 868:2104 | ACH | hi | 752187/1000000 | 752187/1000000 | 3450 | 868:246, 868:25, 868:2083 |
| 868:2105 | AEF | lo | 410497/1000000 | 410497/1000000 | 3457 | 868:44, 868:2078, 868:2085 |
| 868:2107 | AER | lo | 344583/1000000 | 344583/1000000 | 3470 | 868:70, 868:2074, 868:186 |
| 868:2108 | AFQ | lo | 316027/1000000 | 316027/1000000 | 3475 | 868:44, 868:2079, 868:2025 |
| 868:2113 | BCH | hi | 97261/125000 | 778087811/1000000000 | 3503 | 868:249, 868:81, 868:2083 |
| 868:2114 | BEF | lo | 2123/5000 | 2123/5000 | 3511 | 868:2002, 868:92, 868:2070 |
| 868:2115 | BHR | lo | 429499/1000000 | 429499/1000000 | 3529 | 868:108, 868:2016, 868:2084 |
| 868:2116 | CEF | lo | 350541/1000000 | 350541/1000000 | 3533 | 868:138, 868:128, 868:2070 |
| 868:2117 | CEH | lo | 203999/500000 | 203999/500000 | 3537 | 868:2083, 868:128, 868:1916 |
| 868:2118 | EFR | lo | 37359/125000 | 37359/125000 | 3562 | 868:186, 868:166, 868:2080 |
| 868:2120 | FQR | lo | 37251/100000 | 37251/100000 | 3582 | 868:2080, 868:2022, 868:226 |
| 868:2121 | HQR | lo | 211593/500000 | 211593/500000 | 3586 | 868:2081, 868:2096, 868:226 |
| 868:2122 | BER | lo | 17127/125000 | 32335821/236000000 | 56 | 868:1975, 868:130, 868:2107, 868:72, 868:17 |
| 868:2123 | EFQ | lo | 82271/500000 | 77664021/472000000 | 138 | 868:2105, 868:92, 868:36, 868:2114, 868:3 |
| 868:2126 | CFH | lo | 174269/1000000 | 1638117273/9399922720 | 575 | 868:1894, 868:2014, 868:98, 868:2117, 868:89 |
| 868:2127 | EFH | lo | 79513/500000 | 122873088000/772658499929 | 705 | 868:2114, 868:192, 868:98, 868:2118, 868:105 |
| 868:2128 | HPR | lo | 76551/500000 | 84397428631/551248000000 | 790 | 868:108, 868:2121, 868:2115, 868:1731, 868:249 |
| 868:2129 | CFP | lo | 2957/25000 | 84431224711/713821888000 | 798 | 868:2116, 868:144, 868:1902, 868:2126, 868:125 |
| 868:2131 | EFP | lo | 53449/250000 | 26802497977/125364500000 | 2279 | 868:2104, 868:144, 868:52, 868:2077, 868:2105, 868:2116, 868:2127 |
| 868:2133 | FPR | lo | 93477/500000 | 110143585157/589148000000 | 2578 | 868:246, 868:1731, 868:2079, 868:52, 868:2056, 868:192, 868:2120 |
| 868:2135 | ABQ | lo | 41203/250000 | 2998209237/18191684000 | 3065 | 868:123, 868:2123, 868:138, 868:128, 868:0, 868:1975, 868:2101 |
| 868:2140 | ABE | lo | 87703/250000 | 87703/250000 | 3423 | 868:36, 868:2135, 868:92 |
| 868:2142 | ACF | lo | 78739/250000 | 78739/250000 | 3445 | 868:44, 868:2077, 868:2129 |
| 868:2143 | AEF | lo | 205249/500000 | 205249/500000 | 3457 | 868:44, 868:2078, 868:2131 |
| 868:2144 | AFR | lo | 186477/500000 | 186477/500000 | 3476 | 868:44, 868:62, 868:2133 |
| 868:2150 | BFQ | lo | 8353/50000 | 44718027/267676000 | 77 | 868:2135, 868:138, 868:2108, 868:80, 868:25 |
| 868:2160 | BEF | lo | 212301/500000 | 212301/500000 | 3511 | 868:2150, 868:92, 868:2123 |
| 868:2162 | EFQ | lo | 164543/1000000 | 776643/4720000 | 138 | 868:2143, 868:92, 868:36, 868:2160, 868:3 |
| 868:2165 | BPQ | lo | 71691/500000 | 4173376407/29106694400 | 3078 | 868:123, 868:2162, 868:138, 868:128, 868:1839, 868:1897, 868:100 |
| 868:2167 | BEF | lo | 424603/1000000 | 424603/1000000 | 3511 | 868:2150, 868:92, 868:2162 |
| 868:2168 | BEP | lo | 172963/500000 | 172963/500000 | 3518 | 868:2165, 868:92, 868:1584 |
| 868:2170 | CEF | lo | 350543/1000000 | 350543/1000000 | 3533 | 868:138, 868:128, 868:2162 |
| 868:2172 | BPR | lo | 917/5000 | 23305603101/127075250000 | 721 | 868:2168, 868:2133, 868:100, 868:2066, 868:1836 |
| 868:2175 | BHR | lo | 214751/500000 | 214751/500000 | 3529 | 868:108, 868:2172, 868:2128 |
| 868:2176 | HPR | lo | 153103/1000000 | 42198871619/275624000000 | 790 | 868:108, 868:2121, 868:2175, 868:1731, 868:249 |
| 868:2177 | AHR | lo | 339103/1000000 | 339103/1000000 | 3482 | 868:52, 868:62, 868:2176 |
| 868:2178 | BHR | lo | 429503/1000000 | 429503/1000000 | 3529 | 868:108, 868:2172, 868:2176 |
| 868:2179 | HRS | lo | 5771/50000 | 70892877/614216000 | 564 | 868:2177, 868:226, 868:70, 868:2121, 868:1561 |
| 868:2181 | HQR | lo | 423187/1000000 | 423187/1000000 | 3586 | 868:2179, 868:2096, 868:226 |

## Stage 869

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR-/ARS-/HEQ-/CFQ-/PQR+/PQS+/QRS+/AEQ-/BEQ+/BFP+ |
| Packet | forest:root/AFP-/APR-/ARS-/HEQ-/CFQ-/PQR+/PQS+/QRS+/AEQ-/BEQ+/BFP+ |
| Index | 2 |
| Context | 539 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 868 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 18171/100000 | 59/125 | 198009/1000000 | 59/125 |
| b | 113651/1000000 | 578793/1000000 | 28967/250000 | 557693/1000000 |
| c | 135501/250000 | 49413/50000 | 135501/250000 | 61289/62500 |
| e | 279/1000 | 59/125 | 279/1000 | 59/125 |
| f | 279/1000 | 23083/40000 | 279/1000 | 35/64 |
| h | 45073/62500 | 1/1 | 721793/1000000 | 1/1 |
| p | 117169/1000000 | 485793/1000000 | 117921/1000000 | 93073/200000 |
| q | 67249/200000 | 386027/500000 | 69991/200000 | 385221/500000 |
| u | 21413/40000 | 830823/1000000 | 21413/40000 | 830823/1000000 |
| v | 43021/250000 | 379/1000 | 92861/500000 | 379/1000 |
| r | 717679/1000000 | 1/1 | 92059/125000 | 1/1 |
| w | 687579/1000000 | 1/1 | 173381/250000 | 1/1 |
| j | 558591/1000000 | 871013/1000000 | 70567/125000 | 871013/1000000 |
| k | 268487/500000 | 212349/250000 | 268487/500000 | 843451/1000000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 7 | A_ABH | bitt ["actual-area","ABH",[]] | `1/1 * b * h + -1/1 * a * b + -93/1000` |
| 43 | A_APR | bitt ["actual-area","APR",[]] | `-1/1 * p * w + 1/1 * a * p + 1/1 * q * r + -1/1 * a * r + -93/1000` |
| 44 | A_APS | bitt ["actual-area","APS",[]] | `-1/1 * p * k + 1/1 * a * p + 1/1 * q * j + -1/1 * a * j + -93/1000` |
| 59 | A_BEH | bitt ["actual-area","BEH",["P","Q"]] | `1/1 * h + -1/1 * b * h + 1/1 * b * e + -13857/20000` |
| 62 | A_BEQ | bitt ["actual-area","BEQ",[]] | `1/1 * v + -1/1 * b * v + -1/1 * e * u + 1/1 * b * e + -93/1000` |
| 67 | A_BFP | bitt ["actual-area","BFP",[]] | `1/1 * f * q + -1/1 * b * q + -1/1 * p + 1/1 * b + -93/1000` |
| 103 | A_EFS | bitt ["actual-area","EFS",[]] | `-1/1 * f * k + 1/1 * e * f + 1/1 * k + 1/1 * j + -1093/1000 + -1/1 * e * j` |
| 137 | fb | bitt ["contact-order","fb"] | `1/1 * f + -1/1 * b` |
| 151 | central-x | bitt ["central-lower-x"] | `1/1 * c * h * p + -1/1 * b * h * p + -93/1000 * c + -93/1000 * b` |
| 1683 | AREA_lo_ABE | bitt ["earlier-area",{"direction":"lo","ref":"868:2140","triangle":"ABE","value":"87703/250000"}] | `1/1 * b * e + -1/1 * a * b + 1/1 * a + -87703/250000` |
| 1787 | AREA_lo_CEF | bitt ["earlier-area",{"direction":"lo","ref":"868:2170","triangle":"CEF","value":"350543/1000000"}] | `649457/1000000 + -1/1 * c + -1/1 * e * f + 1/1 * c * e` |
| 1825 | AREA_lo_EFR | bitt ["earlier-area",{"direction":"lo","ref":"868:2118","triangle":"EFR","value":"37359/125000"}] | `-1/1 * f * w + 1/1 * e * f + 1/1 * w + 1/1 * r + -162359/125000 + -1/1 * e * r` |
| 1828 | AREA_lo_EHP | bitt ["earlier-area",{"direction":"lo","ref":"868:1817","triangle":"EHP","value":"2614/15625"}] | `-1/1 * q + -1/1 * h * p + 1/1 * h + 1/1 * e * p + -2614/15625` |
| 1858 | AREA_lo_FQR | bitt ["earlier-area",{"direction":"lo","ref":"868:2120","triangle":"FQR","value":"37251/100000"}] | `1/1 * u * w + -1/1 * u + -1/1 * f * w + -1/1 * v * r + 1/1 * f * v + 1/1 * r + -37251/100000` |
| 1862 | AREA_lo_FRS | bitt ["earlier-area",{"direction":"lo","ref":"868:2080","triangle":"FRS","value":"14109/125000"}] | `-1/1 * r * k + 1/1 * r + 1/1 * f * k + 1/1 * w * j + -1/1 * f * w + -1/1 * j + -14109/125000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 44 | q | 67249/200000 | 386027/500000 | 146448849923/435506500000 | 386027/500000 | 21017/62500 | 386027/500000 | `(558591/1000000, -118063749113/500000000000); (558591/1000000, -182133945303/500000000000); (558591/1000000, -183543167481/500000000000); (558591/1000000, -194109433191/500000000000); (871013/1000000, -146448849923/500000000000); (871013/1000000, -255865537303/500000000000); (871013/1000000, -211928268291/500000000000); (871013/1000000, -267841025191/500000000000); (558591/1000000, -34091708943/125000000000); (558591/1000000, -100218515981/250000000000); (558591/1000000, -64857344451/125000000000); (558591/1000000, -134997821757/250000000000); (871013/1000000, -82375968291/250000000000); (871013/1000000, -137084311981/250000000000); (871013/1000000, -143907239307/250000000000); (871013/1000000, -171863617757/250000000000)` |
| 1 | 67 | p | 117169/1000000 | 485793/1000000 | 117169/1000000 | 15162977647/31250000000 | 117169/1000000 | 15163/31250 | `(-1/1, 4765827433/62500000000); (-1/1, 24061313019/62500000000); (-1/1, 2757617427/15625000000); (-1/1, 15162977647/31250000000); (-1/1, 74154678423/500000000000); (-1/1, 127168307589/500000000000); (-1/1, 5913114889/15625000000); (-1/1, 121116652807/250000000000)` |
| 2 | 137 | b | 113651/1000000 | 578793/1000000 | 113651/1000000 | 23083/40000 | 113651/1000000 | 23083/40000 | `(-1/1, 279/1000); (-1/1, 23083/40000)` |
| 3 | 1683 | a | 18171/100000 | 59/125 | 130721/704875 | 59/125 | 46363/250000 | 59/125 | `(886349/1000000, -319103371/1000000000); (16917/40000, -7592323/40000000); (886349/1000000, -37146091/125000000); (16917/40000, -392163/5000000)` |
| 4 | 1787 | c | 135501/250000 | 49413/50000 | 135501/250000 | 517769/528000 | 135501/250000 | 61289/62500 | `(-721/1000, 17863/31250); (-66/125, 517769/1000000); (-721/1000, 19538123/40000000); (-66/125, 471347/1250000)` |
| 5 | 1825 | w | 687579/1000000 | 1/1 | 71433/103000 | 1/1 | 173381/250000 | 1/1 | `(721/1000, -703584441/1000000000); (721/1000, -49265593/62500000); (16917/40000, -155105379/250000000); (16917/40000, -80944761/125000000); (721/1000, -500031/1000000); (721/1000, -39949/62500); (16917/40000, -16674723/40000000); (16917/40000, -2492463/5000000)` |
| 6 | 1828 | q | 21017/62500 | 386027/500000 | 21017/62500 | 48177423/62500000 | 21017/62500 | 770839/1000000 | `(-1/1, 62757952201/125000000000); (-1/1, 32792327163/62500000000); (-1/1, 748225151/1000000000); (-1/1, 48177423/62500000); (-1/1, 1325488327/3906250000); (-1/1, 845647851/1953125000); (-1/1, 15089477/31250000); (-1/1, 1125996/1953125)` |
| 7 | 1858 | f | 279/1000 | 23083/40000 | 279/1000 | 2913417353/5214400000 | 279/1000 | 279363/500000 | `(-3259/6250, 7200457783/125000000000); (-3259/6250, -128747589/3906250000); (-78631/250000, -908956057/10000000000); (-78631/250000, -45364662687/250000000000); (-3259/6250, 2913417353/10000000000); (-3259/6250, 50194672563/250000000000); (-78631/250000, 844257353/10000000000); (-78631/250000, -1534327437/250000000000); (-206979/250000, 55416981741/250000000000); (-621/1000, 73168659/1000000000); (-206979/250000, 227703/500000); (-621/1000, 24849/100000)` |
| 8 | 1858 | r | 717679/1000000 | 1/1 | 50291547/68993000 | 1/1 | 91117/125000 | 1/1 | `(206979/250000, -6820560247/10000000000); (206979/250000, -41395817507/50000000000); (206979/250000, -193154767437/250000000000); (206979/250000, -229619848797/250000000000); (621/1000, -6243264607/10000000000); (621/1000, -178076750281/250000000000); (621/1000, -178722376437/250000000000); (621/1000, -200717511543/250000000000); (206979/250000, -150874641/250000000); (206979/250000, -104386024377/125000000000); (621/1000, -545769/1000000); (621/1000, -359739423/500000000)` |
| 9 | 1862 | k | 268487/500000 | 212349/250000 | 268487/500000 | 76016/90125 | 268487/500000 | 843451/1000000 | `(-28121/62500, 62844017171/250000000000); (-17021/100000, 2868968713/50000000000); (-721/1000, 130610017171/250000000000); (-220637/500000, 16422168713/50000000000); (-28121/62500, 42133/125000); (-17021/100000, 28669/500000); (-721/1000, 9502/15625); (-220637/500000, 164201/500000); (-28121/62500, 38906555953/250000000000); (-17021/100000, -9592617653/250000000000); (-721/1000, 106672555953/250000000000); (-220637/500000, 58173382347/250000000000)` |
| 10 | 7 | b | 113651/1000000 | 23083/40000 | 7750/67879 | 23083/40000 | 114173/1000000 | 23083/40000 | `(133929/250000, -93/1000); (15573/62500, -93/1000); (203637/250000, -93/1000); (66/125, -93/1000)` |
| 11 | 43 | q | 21017/62500 | 770839/1000000 | 42247786021/125000000000 | 770839/1000000 | 168991/500000 | 770839/1000000 | `(91117/125000, -7192823181/25000000000); (91117/125000, -115753384389/250000000000); (91117/125000, -14834603207/31250000000); (91117/125000, -4254256103/7812500000); (1/1, -42247786021/125000000000); (1/1, -147738936389/250000000000); (1/1, -512672523/976562500); (1/1, -5253804603/7812500000); (91117/125000, -80905603421/250000000000); (91117/125000, -31182689/62500000); (91117/125000, -3896339759/6250000000); (91117/125000, -541603/781250); (1/1, -93472943653/250000000000); (1/1, -39179077/62500000); (1/1, -5263154081/7812500000); (1/1, -12831157/15625000)` |
| 12 | 44 | q | 168991/500000 | 770839/1000000 | 147859292047/435506500000 | 770839/1000000 | 339511/1000000 | 770839/1000000 | `(558591/1000000, -4755585987/20000000000); (558591/1000000, -182133945303/500000000000); (558591/1000000, -91788979221/250000000000); (558591/1000000, -3032667003/7812500000); (871013/1000000, -147859292047/500000000000); (871013/1000000, -255865537303/500000000000); (871013/1000000, -106273800407/250000000000); (871013/1000000, -523090391/976562500); (558591/1000000, -273688902963/1000000000000); (558591/1000000, -400177494219/1000000000000); (558591/1000000, -128965865229/250000000000); (558591/1000000, -16777778763/31250000000); (871013/1000000, -331628187707/1000000000000); (871013/1000000, -547640678219/1000000000000); (871013/1000000, -28690137283/50000000000); (871013/1000000, -21386003263/31250000000)` |
| 13 | 59 | h | 45073/62500 | 1/1 | 79870043/110728375 | 1/1 | 144263/200000 | 1/1 | `(885827/1000000, -660995733/1000000000); (16917/40000, -21273843/40000000); (885827/1000000, -79870043/125000000); (16917/40000, -2102353/5000000)` |
| 14 | 62 | v | 43021/250000 | 379/1000 | 73294/422925 | 379/1000 | 86651/500000 | 379/1000 | `(885827/1000000, -6578169/31250000); (16917/40000, -325407/4000000); (885827/1000000, -4559121/15625000); (16917/40000, -36647/500000); (885827/1000000, -5858907/20000000); (16917/40000, -40948923/250000000); (885827/1000000, -1078147/2500000); (16917/40000, -6649033/31250000)` |
| 15 | 67 | p | 117169/1000000 | 15163/31250 | 117169/1000000 | 477845312661/1000000000000 | 117169/1000000 | 238923/500000 | `(-1/1, 77133579597/1000000000000); (-1/1, 15315010347/40000000000); (-1/1, 172103633583/1000000000000); (-1/1, 477845312661/1000000000000); (-1/1, 148228079853/1000000000000); (-1/1, 10172286603/40000000000); (-1/1, 363851789967/1000000000000); (-1/1, 469930875189/1000000000000)` |
| 16 | 103 | j | 558591/1000000 | 871013/1000000 | 407030829/721000000 | 871013/1000000 | 70567/125000 | 871013/1000000 | `(721/1000, -314000373/500000000); (66/125, -287076873/500000000); (721/1000, -175040695281/250000000000); (66/125, -148082165781/250000000000); (721/1000, -407030829/1000000000); (66/125, -353183829/1000000000); (721/1000, -282461224713/500000000000); (66/125, -228544165713/500000000000)` |
| 17 | 137 | b | 114173/1000000 | 23083/40000 | 114173/1000000 | 279363/500000 | 114173/1000000 | 279363/500000 | `(-1/1, 279/1000); (-1/1, 279363/500000)` |
| 18 | 151 | p | 117169/1000000 | 238923/500000 | 33938707/288817000 | 238923/500000 | 117509/1000000 | 238923/500000 | `(61720183553/200000000000, -61024461/1000000000); (-1206182943/100000000000, -10236789/100000000); (124996820613/200000000000, -101816121/1000000000); (30432135587/100000000000, -2863191/20000000); (427831/1000000, -61024461/1000000000); (-8361/500000, -10236789/100000000); (866451/1000000, -101816121/1000000000); (210949/500000, -2863191/20000000)` |
| 19 | 1683 | a | 46363/250000 | 59/125 | 5443333/27579625 | 59/125 | 197367/1000000 | 59/125 | `(885827/1000000, -318957733/1000000000); (220637/500000, -97463723/500000000); (885827/1000000, -37115293/125000000); (220637/500000, -5443333/62500000)` |
| 20 | 1828 | q | 339511/1000000 | 770839/1000000 | 339511/1000000 | 48166203/62500000 | 339511/1000000 | 38533/50000 | `(-1/1, 100408601333/200000000000); (-1/1, 104944448733/200000000000); (-1/1, 747980011/1000000000); (-1/1, 48166203/62500000); (-1/1, 34266054651/100000000000); (-1/1, 43488482451/100000000000); (-1/1, 244088517/500000000); (-1/1, 18137541/31250000)` |
| 21 | 1858 | f | 279/1000 | 279363/500000 | 279/1000 | 2901237353/5202220000 | 279/1000 | 557693/1000000 | `(-260111/500000, 16508917157/250000000000); (-260111/500000, -1226368821/50000000000); (-78631/250000, -839050087/10000000000); (-78631/250000, -43617013437/250000000000); (-260111/500000, 2901237353/10000000000); (-260111/500000, 49890172563/250000000000); (-78631/250000, 844257353/10000000000); (-78631/250000, -1534327437/250000000000); (-413349/500000, 14381245833/62500000000); (-621/1000, 10019907/125000000); (-413349/500000, 113547/250000); (-621/1000, 24849/100000)` |
| 22 | 1858 | r | 91117/125000 | 1/1 | 100526457/137783000 | 1/1 | 729599/1000000 | 1/1 | `(413349/500000, -6817162027/10000000000); (413349/500000, -413349216273/500000000000); (413349/500000, -193069811937/250000000000); (413349/500000, -458630738797/500000000000); (621/1000, -6243264607/10000000000); (621/1000, -88997762229/125000000000); (621/1000, -178722376437/250000000000); (621/1000, -5015907143/6250000000); (413349/500000, -301579371/500000000); (413349/500000, -416776843857/500000000000); (621/1000, -545769/1000000); (621/1000, -718837353/1000000000)` |
| 23 | 7 | b | 114173/1000000 | 279363/500000 | 93000/802633 | 279363/500000 | 28967/250000 | 279363/500000 | `(130987/250000, -93/1000); (49863/200000, -93/1000); (802633/1000000, -93/1000); (66/125, -93/1000)` |
| 24 | 43 | q | 339511/1000000 | 38533/50000 | 348669912913/1000000000000 | 38533/50000 | 348669/1000000 | 38533/50000 | `(729599/1000000, -147650839373/500000000000); (729599/1000000, -115850447929/250000000000); (729599/1000000, -94817080731/200000000000); (729599/1000000, -67903135663/125000000000); (1/1, -348669912913/1000000000000); (1/1, -147757765929/250000000000); (1/1, -263726818911/500000000000); (1/1, -83856794663/125000000000); (729599/1000000, -33131536703/100000000000); (729599/1000000, -12485387/25000000); (729599/1000000, -620533734351/1000000000000); (729599/1000000, -86209177/125000000); (1/1, -384683601197/1000000000000); (1/1, -39190297/62500000); (1/1, -336950984259/500000000000); (1/1, -25540709/31250000)` |
| 25 | 44 | q | 348669/1000000 | 38533/50000 | 152408050867/435506500000 | 38533/50000 | 69991/200000 | 38533/50000 | `(70567/125000, -9773106227/40000000000); (70567/125000, -183548010883/500000000000); (70567/125000, -183350311617/500000000000); (70567/125000, -97627139501/250000000000); (871013/1000000, -152408050867/500000000000); (871013/1000000, -255876582883/500000000000); (871013/1000000, -427189069293/1000000000000); (871013/1000000, -133791425501/250000000000); (70567/125000, -70085365367/250000000000); (70567/125000, -403109827559/1000000000000); (70567/125000, -16035919743/31250000000); (70567/125000, -268478683273/500000000000); (871013/1000000, -340829907527/1000000000000); (871013/1000000, -547766971559/1000000000000); (871013/1000000, -114727575567/200000000000); (871013/1000000, -340807255273/500000000000)` |
| 26 | 59 | h | 144263/200000 | 1/1 | 39885019/55258250 | 1/1 | 721793/1000000 | 1/1 | `(221033/250000, -165130707/250000000); (220637/500000, -268482723/500000000); (221033/250000, -39885019/62500000); (220637/500000, -6705177/15625000)` |
| 27 | 62 | v | 86651/500000 | 379/1000 | 10244341/55159250 | 379/1000 | 92861/500000 | 379/1000 | `(221033/250000, -210028503/1000000000); (220637/500000, -86471121/1000000000); (221033/250000, -36372963/125000000); (220637/500000, -10244341/125000000); (221033/250000, -58494489/200000000); (220637/500000, -168915063/1000000000); (221033/250000, -10761469/25000000); (220637/500000, -27678723/125000000)` |
| 28 | 67 | p | 117509/1000000 | 238923/500000 | 117509/1000000 | 93072899297/200000000000 | 117509/1000000 | 93073/200000 | `(-1/1, 3997842953/50000000000); (-1/1, 36783448767/100000000000); (-1/1, 1419894943/8000000000); (-1/1, 93072899297/200000000000); (-1/1, 1857341339/12500000000); (-1/1, 6253809021/25000000000); (-1/1, 726729709/2000000000); (-1/1, 23246495411/50000000000)` |
| 29 | 137 | b | 28967/250000 | 279363/500000 | 28967/250000 | 557693/1000000 | 28967/250000 | 557693/1000000 | `(-1/1, 279/1000); (-1/1, 557693/1000000)` |
| 30 | 151 | p | 117509/1000000 | 93073/200000 | 8497813/72063000 | 93073/200000 | 117921/1000000 | 93073/200000 | `(38447747731/125000000000, -3823881/62500000); (-11324210377/1000000000000, -102271821/1000000000); (156043706877/250000000000, -25493439/250000000); (305268635283/1000000000000, -143063481/1000000000); (53267/125000, -3823881/62500000); (-15689/1000000, -102271821/1000000000); (216189/250000, -25493439/250000000); (422931/1000000, -143063481/1000000000)` |
| 31 | 1683 | a | 197367/1000000 | 59/125 | 10947613/55288375 | 59/125 | 198009/1000000 | 59/125 | `(221033/250000, -79621207/250000000); (442307/1000000, -195215653/1000000000); (221033/250000, -4626911/15625000); (442307/1000000, -10947613/125000000)` |
| 32 | 1828 | q | 69991/200000 | 38533/50000 | 69991/200000 | 48152607/62500000 | 69991/200000 | 385221/500000 | `(-1/1, 502282406647/1000000000000); (-1/1, 525041159647/1000000000000); (-1/1, 747682959/1000000000); (-1/1, 48152607/62500000); (-1/1, 69687327111/200000000000); (-1/1, 87650416111/200000000000); (-1/1, 99435167/200000000); (-1/1, 7337391/12500000)` |
| 33 | 1858 | f | 279/1000 | 557693/1000000 | 279/1000 | 2777037353/5078020000 | 279/1000 | 35/64 | `(-253901/500000, 28761074911/500000000000); (-253901/500000, -16520447613/500000000000); (-78631/250000, -834932857/10000000000); (-78631/250000, -43514082687/250000000000); (-253901/500000, 2777037353/10000000000); (-253901/500000, 46785172563/250000000000); (-78631/250000, 844257353/10000000000); (-78631/250000, -1534327437/250000000000); (-407139/500000, 110793207261/500000000000); (-621/1000, 80570979/1000000000); (-407139/500000, 55221/125000); (-621/1000, 24849/100000)` |
| 34 | 1858 | r | 729599/1000000 | 1/1 | 99948927/135713000 | 1/1 | 92059/125000 | 1/1 | `(407139/500000, -6782510227/10000000000); (407139/500000, -16285569669/20000000000); (407139/500000, -192203516937/250000000000); (407139/500000, -452420764249/500000000000); (621/1000, -6243264607/10000000000); (621/1000, -1771448943/2500000000); (621/1000, -178722376437/250000000000); (621/1000, -99892827781/125000000000); (407139/500000, -299846781/500000000); (407139/500000, -5234037/6400000); (621/1000, -545769/1000000); (621/1000, -1139391/1600000)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 869:0 | ABC | lo | 93/1000 | occupants none |
| 869:2 | ABE | lo | 87703/250000 | earlier 868:2140; ABE; lo; 87703/250000 |
| 869:3 | ABE | hi | 59/125 | vertex maximum 59/125 |
| 869:4 | ABF | lo | 284697/1000000 | earlier 868:2101; ABF; lo; 284697/1000000 |
| 869:5 | ABF | hi | 35/64 | anchor cap ABF; expression {"f":1} |
| 869:6 | ABH | lo | 93/1000 | occupants none |
| 869:7 | ABH | hi | 447264766763/1000000000000 | vertex maximum 447264766763/1000000000000 |
| 869:10 | ABQ | lo | 41203/250000 | earlier 868:2135; ABQ; lo; 41203/250000 |
| 869:11 | ABQ | hi | 143/500 | earlier 868:11; ABQ; hi; 143/500 |
| 869:13 | ABR | hi | 47903869/62500000 | vertex maximum 47903869/62500000 |
| 869:16 | ACE | lo | 28471/100000 | earlier 868:2049; ACE; lo; 28471/100000 |
| 869:17 | ACE | hi | 59/125 | vertex maximum 59/125 |
| 869:18 | ACF | lo | 78739/250000 | earlier 868:2142; ACF; lo; 78739/250000 |
| 869:21 | ACH | hi | 752187/1000000 | earlier 868:2104; ACH; hi; 752187/1000000 |
| 869:22 | ACP | lo | 25919/250000 | earlier 868:2077; ACP; lo; 25919/250000 |
| 869:25 | ACQ | hi | 66919/250000 | earlier 868:25; ACQ; hi; 66919/250000 |
| 869:30 | AEF | lo | 205249/500000 | earlier 868:2143; AEF; lo; 205249/500000 |
| 869:31 | AEF | hi | 779394511/1000000000 | vertex maximum 779394511/1000000000 |
| 869:33 | AEH | hi | 801991/1000000 | vertex maximum 801991/1000000 |
| 869:36 | AEQ | lo | 93/1000 | occupants none |
| 869:38 | AER | lo | 344583/1000000 | earlier 868:2107; AER; lo; 344583/1000000 |
| 869:39 | AER | hi | 92792924531/125000000000 | vertex maximum 92792924531/125000000000 |
| 869:44 | AFP | lo | 93/1000 | occupants none |
| 869:46 | AFQ | lo | 316027/1000000 | earlier 868:2108; AFQ; lo; 316027/1000000 |
| 869:48 | AFR | lo | 186477/500000 | earlier 868:2144; AFR; lo; 186477/500000 |
| 869:49 | AFR | hi | 132748463/200000000 | vertex maximum 132748463/200000000 |
| 869:50 | AFS | lo | 34247/100000 | earlier 868:2058; AFS; lo; 34247/100000 |
| 869:51 | AFS | hi | 275419/500000 | earlier 868:2097; AFS; hi; 275419/500000 |
| 869:52 | AHP | lo | 93/1000 | occupants none |
| 869:56 | AHR | lo | 339103/1000000 | earlier 868:2177; AHR; lo; 339103/1000000 |
| 869:57 | AHR | hi | 801991/1000000 | vertex maximum 801991/1000000 |
| 869:62 | APR | lo | 93/1000 | occupants none |
| 869:64 | APS | lo | 93/1000 | occupants none |
| 869:66 | AQR | lo | 184059/500000 | earlier 868:2061; AQR; lo; 184059/500000 |
| 869:68 | AQS | lo | 91059/500000 | earlier 868:2037; AQS; lo; 91059/500000 |
| 869:70 | ARS | lo | 93/1000 | occupants none |
| 869:72 | BCE | lo | 93/1000 | occupants none |
| 869:76 | BCH | lo | 78573/250000 | earlier 868:1894; BCH; lo; 78573/250000 |
| 869:77 | BCH | hi | 97261/125000 | earlier 868:2113; BCH; hi; 97261/125000 |
| 869:80 | BCQ | lo | 93/1000 | occupants none |
| 869:81 | BCQ | hi | 81935631/250000000 | vertex maximum 81935631/250000000 |
| 869:86 | BEF | lo | 424603/1000000 | earlier 868:2167; BEF; lo; 424603/1000000 |
| 869:87 | BEF | hi | 209654543/250000000 | vertex maximum 209654543/250000000 |
| 869:88 | BEH | lo | 13857/20000 | occupants P, Q |
| 869:89 | BEH | hi | 14669089/15625000 | vertex maximum 14669089/15625000 |
| 869:90 | BEP | lo | 172963/500000 | earlier 868:2168; BEP; lo; 172963/500000 |
| 869:92 | BEQ | lo | 93/1000 | occupants none |
| 869:94 | BER | lo | 17127/125000 | earlier 868:2122; BER; lo; 17127/125000 |
| 869:96 | BES | lo | 22069/125000 | earlier 868:1967; BES; lo; 22069/125000 |
| 869:98 | BFH | lo | 279/1000 | occupants P |
| 869:99 | BFH | hi | 35/64 | anchor cap BFH; expression {"f":1} |
| 869:100 | BFP | lo | 93/1000 | occupants none |
| 869:102 | BFQ | lo | 8353/50000 | earlier 868:2150; BFQ; lo; 8353/50000 |
| 869:105 | BFR | hi | 48187252677/62500000000 | vertex maximum 48187252677/62500000000 |
| 869:108 | BHP | lo | 93/1000 | occupants none |
| 869:110 | BHQ | lo | 35509/100000 | earlier 868:1853; BHQ; lo; 35509/100000 |
| 869:112 | BHR | lo | 429503/1000000 | earlier 868:2178; BHR; lo; 429503/1000000 |
| 869:116 | BPQ | lo | 71691/500000 | earlier 868:2165; BPQ; lo; 71691/500000 |
| 869:118 | BPR | lo | 917/5000 | earlier 868:2172; BPR; lo; 917/5000 |
| 869:122 | CEF | lo | 350543/1000000 | earlier 868:2170; CEF; lo; 350543/1000000 |
| 869:123 | CEF | hi | 4547921/7812500 | vertex maximum 4547921/7812500 |
| 869:124 | CEH | lo | 203999/500000 | earlier 868:2117; CEH; lo; 203999/500000 |
| 869:125 | CEH | hi | 11153467/15625000 | vertex maximum 11153467/15625000 |
| 869:126 | CEP | lo | 297419/1000000 | earlier 868:1902; CEP; lo; 297419/1000000 |
| 869:128 | CEQ | lo | 93/1000 | occupants none |
| 869:130 | CER | lo | 93/1000 | occupants none |
| 869:131 | CER | hi | 100934857/250000000 | vertex maximum 100934857/250000000 |
| 869:132 | CES | lo | 539/4000 | earlier 868:2099; CES; lo; 539/4000 |
| 869:138 | CFQ | lo | 93/1000 | occupants none |
| 869:144 | CHP | lo | 93/1000 | occupants none |
| 869:146 | CHQ | lo | 104637/1000000 | earlier 868:2083; CHQ; lo; 104637/1000000 |
| 869:158 | EFH | lo | 79513/500000 | earlier 868:2127; EFH; lo; 79513/500000 |
| 869:162 | EFQ | lo | 164543/1000000 | earlier 868:2162; EFQ; lo; 164543/1000000 |
| 869:163 | EFQ | hi | 198067/500000 | earlier 868:163; EFQ; hi; 198067/500000 |
| 869:164 | EFR | lo | 37359/125000 | earlier 868:2118; EFR; lo; 37359/125000 |
| 869:165 | EFR | hi | 519841/1000000 | vertex maximum 519841/1000000 |
| 869:166 | EFS | lo | 93/1000 | occupants none |
| 869:170 | EHQ | lo | 210361/1000000 | earlier 868:1916; EHQ; lo; 210361/1000000 |
| 869:176 | EPQ | lo | 13693/125000 | earlier 868:1584; EPQ; lo; 13693/125000 |
| 869:184 | EQS | lo | 93/1000 | occupants none |
| 869:186 | ERS | lo | 93/1000 | occupants none |
| 869:188 | FHP | lo | 93/1000 | occupants none |
| 869:192 | FHR | lo | 93/1000 | occupants none |
| 869:194 | FHS | lo | 104203/1000000 | earlier 868:1973; FHS; lo; 104203/1000000 |
| 869:200 | FPS | lo | 15647/100000 | earlier 868:2031; FPS; lo; 15647/100000 |
| 869:202 | FQR | lo | 37251/100000 | earlier 868:2120; FQR; lo; 37251/100000 |
| 869:203 | FQR | hi | 573679/1000000 | earlier 868:203; FQR; hi; 573679/1000000 |
| 869:208 | HPQ | lo | 104869/1000000 | earlier 868:1731; HPQ; lo; 104869/1000000 |
| 869:214 | HQR | lo | 423187/1000000 | earlier 868:2181; HQR; lo; 423187/1000000 |
| 869:215 | HQR | hi | 390407/500000 | earlier 868:215; HQR; hi; 390407/500000 |
| 869:220 | PQR | lo | 340323/1000000 | earlier 868:2069; PQR; lo; 340323/1000000 |
| 869:224 | PRS | lo | 93/1000 | occupants none |
| 869:226 | QRS | lo | 93/1000 | occupants none |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 56 | plu | ACE * BER = ABE * CER + AER * BCE | circuit EABCR |
| 77 | plu | ACQ * BFQ = ABQ * CFQ + AFQ * BCQ | circuit QABCF |
| 138 | plu | ABE * EFQ = AEF * BEQ + AEQ * BEF | circuit EABFQ |
| 141 | plu | ABR * AEF = ABE * AFR + ABF * AER | circuit ABEFR |
| 149 | plu | AEF * BFS = ABF * EFS + AFS * BEF | circuit FABES |
| 150 | plu | AES * BFS = ABS * EFS + AFS * BES | circuit SABEF |
| 160 | plu | ABQ * EHQ = AEQ * BHQ + AHQ * BEQ | circuit QABEH |
| 222 | plu | ABP * AFS = ABF * APS + ABS * AFP | circuit ABFPS |
| 357 | plu | ACP * AFS = ACF * APS + ACS * AFP | circuit ACFPS |
| 421 | plu | AEP * AFR = AEF * APR + AER * AFP | circuit AEFPR |
| 526 | plu | AFR * APQ = AFP * AQR + AFQ * APR | circuit AFPQR |
| 544 | plu | AQR * FRS = AFR * QRS + ARS * FQR | circuit RAFQS |
| 564 | plu | AQR * HRS = AHR * QRS + ARS * HQR | circuit RAHQS |
| 575 | plu | BEH * CFH = BCH * EFH + BFH * CEH | circuit HBCEF |
| 643 | plu | BFQ * CHQ = BCQ * FHQ + BHQ * CFQ | circuit QBCFH |
| 705 | plu | BFR * EFH = BEF * FHR + BFH * EFR | circuit FBEHR |
| 709 | plu | BEF * EHS = BEH * EFS + BES * EFH | circuit EBFHS |
| 721 | plu | BPR * EFP = BEP * FPR + BFP * EPR | circuit PBEFR |
| 736 | plu | BHQ * EHP = BEH * HPQ + BHP * EHQ | circuit HBEPQ |
| 777 | plu | BFR * FHQ = BFH * FQR + BFQ * FHR | circuit FBHQR |
| 790 | plu | BHQ * HPR = BHP * HQR + BHR * HPQ | circuit HBPQR |
| 798 | plu | CEH * CFP = CEF * CHP + CEP * CFH | circuit CEFHP |
| 1154 | quad | CER + ACR >= 93/125 | quadrilateral CERA; occupants Q, S |
| 2084 | support | FQR * PQR >= 1023/1000 * (FQR - FPR) | pentagon ears ["RFHPQ",[[],[],[]],"11/1"] |
| 2098 | bary | outer ABE; fans BEQ, AEQ, ABQ; target AFQ; sign -1; vertices none 0; ABF -1; AEF -1 | container ABE; inner Q; line AF |
| 2099 | bary | outer ABE; fans BEQ, AEQ, ABQ; target AHQ; sign -1; vertices none 0; ABH -1; AEH -1 | container ABE; inner Q; line AH |
| 2102 | bary | outer ABE; fans BEQ, AEQ, ABQ; target AQR; sign -1; vertices none 0; ABR -1; AER -1 | container ABE; inner Q; line AR |
| 2106 | bary | outer ABE; fans BEQ, AEQ, ABQ; target BFQ; sign -1; vertices ABF 1; none 0; BEF -1 | container ABE; inner Q; line BF |
| 2107 | bary | outer ABE; fans BEQ, AEQ, ABQ; target BHQ; sign -1; vertices ABH 1; none 0; BEH -1 | container ABE; inner Q; line BH |
| 2125 | bary | outer ABE; fans BEQ, AEQ, ABQ; target FQS; sign -1; vertices AFS -1; BFS -1; EFS -1 | container ABE; inner Q; line FS |
| 2279 | bary | outer ACH; fans CHP, AHP, ACP; target EFP; sign 1; vertices AEF 1; CEF 1; EFH 1 | container ACH; inner P; line EF |
| 2287 | bary | outer ACH; fans CHP, AHP, ACP; target FPQ; sign -1; vertices AFQ -1; CFQ -1; FHQ -1 | container ACH; inner P; line FQ |
| 2464 | bary | outer AFQ; fans FPQ, APQ, AFP; target PQR; sign 1; vertices AQR 1; FQR 1; none 0 | container AFQ; inner P; line QR |
| 2528 | bary | outer AFS; fans FPS, APS, AFP; target EFP; sign 1; vertices AEF 1; none 0; EFS -1 | container AFS; inner P; line EF |
| 2558 | bary | outer AHQ; fans HPQ, APQ, AHP; target BCP; sign 1; vertices ABC 1; BCH 1; BCQ 1 | container AHQ; inner P; line BC |
| 2578 | bary | outer AHQ; fans HPQ, APQ, AHP; target FPR; sign -1; vertices AFR -1; FHR -1; FQR -1 | container AHQ; inner P; line FR |
| 2579 | bary | outer AHQ; fans HPQ, APQ, AHP; target FPS; sign -1; vertices AFS -1; FHS -1; FQS -1 | container AHQ; inner P; line FS |
| 2654 | bary | outer AHS; fans HPS, APS, AHP; target EPQ; sign -1; vertices AEQ -1; EHQ -1; EQS -1 | container AHS; inner P; line EQ |
| 2676 | bary | outer AQR; fans QRS, ARS, AQS; target AHS; sign -1; vertices none 0; AHQ -1; AHR -1 | container AQR; inner S; line AH |
| 2699 | bary | outer AQR; fans QRS, ARS, AQS; target FRS; sign -1; vertices AFR -1; FQR -1; none 0 | container AQR; inner S; line FR |
| 2703 | bary | outer AQR; fans QRS, ARS, AQS; target HRS; sign -1; vertices AHR -1; HQR -1; none 0 | container AQR; inner S; line HR |
| 2740 | bary | outer BCH; fans CHP, BHP, BCP; target EPS; sign 1; vertices BES 1; CES 1; EHS 1 | container BCH; inner P; line ES |
| 2930 | bary | outer BFH; fans FHP, BHP, BFP; target CPQ; sign 1; vertices BCQ 1; CFQ 1; CHQ 1 | container BFH; inner P; line CQ |
| 2972 | bary | outer BHQ; fans HPQ, BPQ, BHP; target EHP; sign 1; vertices BEH 1; none 0; EHQ 1 | container BHQ; inner P; line EH |
| 2984 | bary | outer BHQ; fans HPQ, BPQ, BHP; target HPR; sign -1; vertices BHR -1; none 0; HQR -1 | container BHQ; inner P; line HR |
| 3065 | bary | outer CEF; fans EFQ, CFQ, CEQ; target ABQ; sign 1; vertices ABC 1; ABE 1; ABF 1 | container CEF; inner Q; line AB |
| 3077 | bary | outer CEF; fans EFQ, CFQ, CEQ; target BHQ; sign -1; vertices BCH -1; BEH -1; BFH -1 | container CEF; inner Q; line BH |
| 3078 | bary | outer CEF; fans EFQ, CFQ, CEQ; target BPQ; sign -1; vertices BCP -1; BEP -1; BFP -1 | container CEF; inner Q; line BP |
| 3096 | bary | outer CEF; fans EFQ, CFQ, CEQ; target HPQ; sign 1; vertices CHP 1; EHP 1; FHP 1 | container CEF; inner Q; line HP |
| 3179 | bary | outer EFR; fans FRS, ERS, EFS; target ABS; sign 1; vertices ABE 1; ABF 1; ABR 1 | container EFR; inner S; line AB |
| 3180 | bary | outer EFR; fans FRS, ERS, EFS; target ACS; sign 1; vertices ACE 1; ACF 1; ACR 1 | container EFR; inner S; line AC |
| 3185 | bary | outer EFR; fans FRS, ERS, EFS; target AQS; sign 1; vertices AEQ 1; AFQ 1; AQR 1 | container EFR; inner S; line AQ |
| 3208 | bary | outer EFR; fans FRS, ERS, EFS; target HPS; sign 1; vertices EHP 1; FHP 1; HPR 1 | container EFR; inner S; line HP |
| 3209 | bary | outer EFR; fans FRS, ERS, EFS; target HQS; sign 1; vertices EHQ 1; FHQ 1; HQR 1 | container EFR; inner S; line HQ |
| 3212 | bary | outer EFR; fans FRS, ERS, EFS; target PQS; sign 1; vertices EPQ 1; FPQ 1; PQR 1 | container EFR; inner S; line PQ |
| 3299 | bary | outer FQR; fans QRS, FRS, FQS; target AFS; sign -1; vertices none 0; AFQ -1; AFR -1 | container FQR; inner S; line AF |
| 3310 | bary | outer FQR; fans QRS, FRS, FQS; target CES; sign 1; vertices CEF 1; CEQ 1; CER 1 | container FQR; inner S; line CE |
| 3345 | bary | outer HQR; fans QRS, HRS, HQS; target BES; sign 1; vertices BEH 1; BEQ 1; BER 1 | container HQR; inner S; line BE |
| 3385 | bary | outer PQR; fans QRS, PRS, PQS; target BFS; sign -1; vertices BFP 1; BFQ -1; BFR -1 | container PQR; inner S; line BF |
| 3398 | bary | outer PQR; fans QRS, PRS, PQS; target FHS; sign 1; vertices FHP 1; FHQ 1; FHR 1 | container PQR; inner S; line FH |
| 3423 | four | 1 * ABE + -1 * AEQ + -1 * ABQ + -1 * BEQ = 0 | vertices ABEQ |
| 3427 | four | 1 * ABF + -1 * AFP + -1 * ABP + -1 * BFP = 0 | vertices ABFP |
| 3441 | four | 1 * ACE + -1 * AEQ + -1 * ACQ + -1 * CEQ = 0 | vertices ACEQ |
| 3445 | four | 1 * ACF + -1 * AFP + -1 * ACP + -1 * CFP = 0 | vertices ACFP |
| 3450 | four | 1 * ACH + -1 * AHQ + -1 * ACQ + 1 * CHQ = 0 | vertices ACHQ |
| 3457 | four | 1 * AEF + -1 * AFP + -1 * AEP + -1 * EFP = 0 | vertices AEFP |
| 3470 | four | 1 * AER + -1 * ARS + -1 * AES + -1 * ERS = 0 | vertices AERS |
| 3475 | four | -1 * AFP + -1 * APQ + 1 * AFQ + -1 * FPQ = 0 | vertices AFPQ |
| 3476 | four | -1 * AFP + -1 * APR + 1 * AFR + -1 * FPR = 0 | vertices AFPR |
| 3477 | four | -1 * AFP + -1 * APS + 1 * AFS + -1 * FPS = 0 | vertices AFPS |
| 3481 | four | -1 * AHP + -1 * APQ + 1 * AHQ + -1 * HPQ = 0 | vertices AHPQ |
| 3482 | four | -1 * AHP + -1 * APR + 1 * AHR + -1 * HPR = 0 | vertices AHPR |
| 3490 | four | 1 * AQR + -1 * ARS + -1 * AQS + -1 * QRS = 0 | vertices AQRS |
| 3502 | four | 1 * BCH + -1 * BHP + -1 * BCP + -1 * CHP = 0 | vertices BCHP |
| 3503 | four | 1 * BCH + -1 * BHQ + -1 * BCQ + 1 * CHQ = 0 | vertices BCHQ |
| 3511 | four | 1 * BEF + -1 * BFQ + -1 * BEQ + -1 * EFQ = 0 | vertices BEFQ |
| 3518 | four | 1 * BEP + -1 * BPQ + -1 * BEQ + -1 * EPQ = 0 | vertices BEPQ |
| 3529 | four | -1 * BHP + -1 * BPR + 1 * BHR + -1 * HPR = 0 | vertices BHPR |
| 3533 | four | 1 * CEF + -1 * CFQ + -1 * CEQ + -1 * EFQ = 0 | vertices CEFQ |
| 3537 | four | 1 * CEH + -1 * CHQ + -1 * CEQ + -1 * EHQ = 0 | vertices CEHQ |
| 3540 | four | 1 * CEP + -1 * CPQ + -1 * CEQ + -1 * EPQ = 0 | vertices CEPQ |
| 3562 | four | -1 * EFR + 1 * ERS + 1 * EFS + 1 * FRS = 0 | vertices EFRS |
| 3571 | four | -1 * EPR + 1 * ERS + 1 * EPS + 1 * PRS = 0 | vertices EPRS |
| 3582 | four | 1 * FQR + -1 * FRS + -1 * FQS + -1 * QRS = 0 | vertices FQRS |
| 3586 | four | 1 * HQR + -1 * HRS + -1 * HQS + -1 * QRS = 0 | vertices HQRS |
| 3587 | four | 1 * PQR + -1 * PRS + -1 * PQS + -1 * QRS = 0 | vertices PQRS |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 869:229 | ABR | lo | 146869/500000 | 32705497857/111342073000 | 141 | 869:2, 869:48, 869:4, 869:38, 869:31 |
| 869:231 | BFS | lo | 220543/1000000 | 17189061041/77939451100 | 149 | 869:4, 869:166, 869:50, 869:86, 869:31 |
| 869:233 | AEP | lo | 105797/1000000 | 70222533/663742315 | 421 | 869:30, 869:62, 869:38, 869:44, 869:49 |
| 869:234 | APQ | lo | 47929/500000 | 12725097/132748463 | 526 | 869:44, 869:66, 869:46, 869:62, 869:49 |
| 869:235 | CFH | lo | 87243/500000 | 20476505199/117352712000 | 575 | 869:76, 869:158, 869:98, 869:124, 869:89 |
| 869:236 | EFH | lo | 159369/1000000 | 5119723625/32124835118 | 705 | 869:86, 869:192, 869:98, 869:164, 869:105 |
| 869:237 | EHS | lo | 55193/500000 | 11571495711/104827271500 | 709 | 869:88, 869:166, 869:96, 869:236, 869:87 |
| 869:238 | FHQ | lo | 154951/1000000 | 2488893125/16062417559 | 777 | 869:98, 869:202, 869:102, 869:192, 869:105 |
| 869:239 | CFP | lo | 118371/1000000 | 42247975317/356910944000 | 798 | 869:122, 869:144, 869:126, 869:235, 869:125 |
| 869:240 | ACR | lo | 17013/50000 | 85065143/250000000 | 1154 | 869:131 |
| 869:245 | AFQ | hi | 290007/500000 | 136883102573/236000000000 | 2098 | 869:3, 869:92, 869:36, 869:10, 869:5, 869:31 |
| 869:246 | AHQ | hi | 574079/1000000 | 270965049308959/472000000000000 | 2099 | 869:3, 869:92, 869:36, 869:10, 869:7, 869:33 |
| 869:247 | AQR | hi | 303511/500000 | 8953563816136793/14750000000000000 | 2102 | 869:3, 869:92, 869:36, 869:10, 869:13, 869:39 |
| 869:248 | BFQ | hi | 452051/1000000 | 833468657/1843750000 | 2106 | 869:3, 869:92, 869:36, 869:10, 869:4, 869:87 |
| 869:249 | BHQ | hi | 550539/1000000 | 4060218829/7375000000 | 2107 | 869:3, 869:92, 869:36, 869:10, 869:6, 869:89 |
| 869:251 | FQS | lo | 41821/250000 | 78958209/472000000 | 2125 | 869:3, 869:92, 869:36, 869:10, 869:50, 869:231, 869:166 |
| 869:257 | EFP | lo | 42811/200000 | 53669823001/250729000000 | 2279 | 869:21, 869:144, 869:52, 869:22, 869:30, 869:122, 869:236 |
| 869:258 | FPQ | lo | 129113/1000000 | 24279433469/188046750000 | 2287 | 869:21, 869:144, 869:52, 869:22, 869:46, 869:138, 869:238 |
| 869:265 | PQR | hi | 504181/1000000 | 146216009507/290007000000 | 2464 | 869:245, 869:258, 869:234, 869:44, 869:247, 869:203 |
| 869:273 | EFP | hi | 500517/1000000 | 137851867302109/275419000000000 | 2528 | 869:51, 869:200, 869:64, 869:44, 869:31, 869:166 |
| 869:278 | BCP | lo | 2599/20000 | 4662622221/35879937500 | 2558 | 869:246, 869:208, 869:234, 869:52, 869:0, 869:76, 869:80 |
| 869:279 | FPR | lo | 9471/50000 | 54371136513/287039500000 | 2578 | 869:246, 869:208, 869:234, 869:52, 869:48, 869:192, 869:202 |
| 869:280 | FPS | lo | 157947/1000000 | 4533705453/28703950000 | 2579 | 869:246, 869:208, 869:234, 869:52, 869:50, 869:194, 869:251 |
| 869:285 | AHS | hi | 644203/1000000 | 195522600901/303511000000 | 2676 | 869:247, 869:226, 869:70, 869:68, 869:246, 869:57 |
| 869:290 | FRS | lo | 11421/100000 | 8666019/75877750 | 2699 | 869:247, 869:226, 869:70, 869:68, 869:48, 869:202 |
| 869:292 | HRS | lo | 29197/250000 | 7089297/60702200 | 2703 | 869:247, 869:226, 869:70, 869:68, 869:56, 869:214 |
| 869:293 | EPS | lo | 60603/500000 | 2947165999/24315250000 | 2740 | 869:77, 869:144, 869:108, 869:278, 869:96, 869:132, 869:237 |
| 869:298 | CPQ | lo | 47489/500000 | 6492702/68359375 | 2930 | 869:99, 869:188, 869:108, 869:100, 869:80, 869:138, 869:146 |
| 869:304 | EHP | lo | 20939/125000 | 614813731/3670260000 | 2972 | 869:249, 869:208, 869:116, 869:108, 869:88, 869:170 |
| 869:306 | HPR | lo | 1533/10000 | 84397941107/550539000000 | 2984 | 869:249, 869:208, 869:116, 869:108, 869:112, 869:214 |
| 869:307 | BPQ | lo | 2877/20000 | 5981459531/41580992000 | 3078 | 869:123, 869:162, 869:138, 869:128, 869:278, 869:90, 869:100 |
| 869:309 | HPQ | lo | 104903/1000000 | 238547139/2273960500 | 3096 | 869:123, 869:162, 869:138, 869:128, 869:144, 869:304, 869:188 |
| 869:310 | ABS | lo | 7521/25000 | 156388980327/519841000000 | 3179 | 869:165, 869:290, 869:186, 869:166, 869:2, 869:4, 869:229 |
| 869:311 | ACS | lo | 150029/500000 | 15598295911/51984100000 | 3180 | 869:165, 869:290, 869:186, 869:166, 869:16, 869:18, 869:240 |
| 869:317 | HPS | lo | 60079/500000 | 1561578213/12996025000 | 3208 | 869:165, 869:290, 869:186, 869:166, 869:304, 869:188, 869:306 |
| 869:318 | HQS | lo | 26889/125000 | 111824206891/519841000000 | 3209 | 869:165, 869:290, 869:186, 869:166, 869:170, 869:238, 869:214 |
| 869:319 | PQS | lo | 154331/1000000 | 1432639759/9282875000 | 3212 | 869:165, 869:290, 869:186, 869:166, 869:176, 869:258, 869:220 |
| 869:321 | AFS | hi | 269737/500000 | 61896876275147/114735800000000 | 3299 | 869:203, 869:226, 869:290, 869:251, 869:245, 869:49 |
| 869:326 | BES | lo | 44143/250000 | 2154220653/12200218750 | 3345 | 869:215, 869:226, 869:292, 869:318, 869:88, 869:92, 869:94 |
| 869:328 | BFS | hi | 276397/500000 | 17419252181520537/31511312500000000 | 3385 | 869:265, 869:226, 869:224, 869:319, 869:100, 869:248, 869:105 |
| 869:337 | FHS | lo | 104427/1000000 | 13162569/126045250 | 3398 | 869:265, 869:226, 869:224, 869:319, 869:188, 869:238, 869:192 |
| 869:343 | ACF | lo | 315047/1000000 | 315047/1000000 | 3445 | 869:44, 869:22, 869:239 |
| 869:345 | ACH | hi | 368559/500000 | 368559/500000 | 3450 | 869:246, 869:25, 869:146 |
| 869:346 | AEF | lo | 103213/250000 | 103213/250000 | 3457 | 869:44, 869:233, 869:257 |
| 869:348 | AFQ | lo | 317971/1000000 | 317971/1000000 | 3475 | 869:44, 869:234, 869:258 |
| 869:349 | AFR | lo | 18771/50000 | 18771/50000 | 3476 | 869:44, 869:62, 869:279 |
| 869:351 | AFS | lo | 343947/1000000 | 343947/1000000 | 3477 | 869:44, 869:64, 869:280 |
| 869:353 | AHQ | lo | 293761/1000000 | 293761/1000000 | 3481 | 869:52, 869:234, 869:309 |
| 869:354 | AHR | lo | 3393/10000 | 3393/10000 | 3482 | 869:52, 869:62, 869:306 |
| 869:357 | BCH | lo | 6319/20000 | 6319/20000 | 3502 | 869:108, 869:278, 869:144 |
| 869:358 | BCH | hi | 154729/200000 | 193411131/250000000 | 3503 | 869:249, 869:81, 869:146 |
| 869:359 | BEP | lo | 173197/500000 | 173197/500000 | 3518 | 869:307, 869:92, 869:176 |
| 869:361 | BHR | lo | 4297/10000 | 4297/10000 | 3529 | 869:108, 869:118, 869:306 |
| 869:362 | CEP | lo | 148761/500000 | 148761/500000 | 3540 | 869:298, 869:128, 869:176 |
| 869:363 | EFR | lo | 30021/100000 | 30021/100000 | 3562 | 869:186, 869:166, 869:290 |
| 869:365 | EPR | lo | 153603/500000 | 153603/500000 | 3571 | 869:186, 869:293, 869:224 |
| 869:366 | FQR | lo | 187247/500000 | 187247/500000 | 3582 | 869:290, 869:251, 869:226 |
| 869:367 | HQR | lo | 4249/10000 | 4249/10000 | 3586 | 869:292, 869:318, 869:226 |
| 869:368 | PQR | lo | 340331/1000000 | 340331/1000000 | 3587 | 869:224, 869:319, 869:226 |
| 869:369 | ACQ | lo | 49661/500000 | 44898819/452051000 | 77 | 869:10, 869:138, 869:348, 869:80, 869:248 |
| 869:370 | BFQ | lo | 33547/200000 | 44898819/267676000 | 77 | 869:10, 869:138, 869:348, 869:80, 869:25 |
| 869:371 | EFQ | lo | 165007/1000000 | 15576663/94400000 | 138 | 869:346, 869:92, 869:36, 869:86, 869:3 |
| 869:372 | ABR | lo | 4607/15625 | 32829083913/111342073000 | 141 | 869:2, 869:349, 869:4, 869:38, 869:31 |
| 869:374 | BFS | lo | 55337/250000 | 172517749041/779394511000 | 149 | 869:4, 869:166, 869:351, 869:86, 869:31 |
| 869:375 | AES | lo | 80237/500000 | 22177382421/138198500000 | 150 | 869:310, 869:166, 869:351, 869:326, 869:328 |
| 869:376 | EHQ | lo | 21099/100000 | 60343143/286000000 | 160 | 869:36, 869:110, 869:353, 869:92, 869:11 |
| 869:377 | ABP | lo | 5047/50000 | 54454941/539474000 | 222 | 869:4, 869:64, 869:310, 869:44, 869:321 |
| 869:379 | ACP | lo | 53019/500000 | 11440953/107894800 | 357 | 869:343, 869:64, 869:311, 869:44, 869:321 |
| 869:380 | AEP | lo | 106127/1000000 | 14088291/132748463 | 421 | 869:346, 869:62, 869:38, 869:44, 869:49 |
| 869:381 | APQ | lo | 96131/1000000 | 63806277/663742315 | 526 | 869:44, 869:66, 869:348, 869:62, 869:49 |
| 869:382 | FRS | lo | 28723/250000 | 34871001/303511000 | 544 | 869:349, 869:226, 869:70, 869:366, 869:247 |
| 869:383 | HRS | lo | 2927/25000 | 355353/3035110 | 564 | 869:354, 869:226, 869:70, 869:367, 869:247 |
| 869:384 | CFH | lo | 174883/1000000 | 3283681551/18776433920 | 575 | 869:357, 869:236, 869:98, 869:124, 869:89 |
| 869:385 | CHQ | lo | 10493/100000 | 47433813/452051000 | 643 | 869:80, 869:238, 869:110, 869:138, 869:248 |
| 869:386 | EFH | lo | 159853/1000000 | 5135277875/32124835118 | 705 | 869:86, 869:192, 869:98, 869:363, 869:105 |
| 869:387 | EHS | lo | 27623/250000 | 23165153479/209654543000 | 709 | 869:88, 869:166, 869:326, 869:386, 869:87 |
| 869:388 | BPR | lo | 188173/1000000 | 784867579/4170975000 | 721 | 869:359, 869:279, 869:100, 869:365, 869:273 |
| 869:389 | EHP | lo | 167661/1000000 | 55941887/333660000 | 736 | 869:88, 869:309, 869:108, 869:376, 869:249 |
| 869:390 | FHQ | lo | 623/4000 | 5003465875/32124835118 | 777 | 869:98, 869:366, 869:370, 869:192, 869:105 |
| 869:391 | HPR | lo | 153653/1000000 | 845925191/5505390000 | 790 | 869:108, 869:367, 869:361, 869:309, 869:249 |
| 869:392 | CFP | lo | 118561/1000000 | 42316019463/356910944000 | 798 | 869:122, 869:144, 869:362, 869:384, 869:125 |
| 869:399 | FQS | lo | 167733/1000000 | 15834087/94400000 | 2125 | 869:3, 869:92, 869:36, 869:10, 869:351, 869:374, 869:166 |
| 869:404 | EFP | lo | 215831/1000000 | 855341939/3963000000 | 2279 | 869:345, 869:144, 869:52, 869:379, 869:346, 869:122, 869:386 |
| 869:405 | FPQ | lo | 13041/100000 | 64085441/491412000 | 2287 | 869:345, 869:144, 869:52, 869:379, 869:348, 869:138, 869:390 |
| 869:409 | PQR | hi | 252083/500000 | 2339383331/4640112000 | 2464 | 869:245, 869:405, 869:381, 869:44, 869:247, 869:203 |
| 869:414 | EFP | hi | 494643/1000000 | 10263334437739/20749000000000 | 2528 | 869:321, 869:280, 869:64, 869:44, 869:31, 869:166 |
| 869:417 | BCP | lo | 130333/1000000 | 1496435069/11481580000 | 2558 | 869:246, 869:309, 869:381, 869:52, 869:0, 869:357, 869:80 |
| 869:418 | FPR | lo | 190209/1000000 | 496340883/2609450000 | 2578 | 869:246, 869:309, 869:381, 869:52, 869:349, 869:192, 869:366 |
| 869:419 | FPS | lo | 3169/20000 | 90963172293/574079000000 | 2579 | 869:246, 869:309, 869:381, 869:52, 869:351, 869:337, 869:399 |
| 869:420 | EPQ | lo | 110033/1000000 | 70883949/644203000 | 2654 | 869:285, 869:317, 869:64, 869:52, 869:36, 869:376, 869:184 |
| 869:421 | EPS | lo | 121351/1000000 | 4694150867/38682250000 | 2740 | 869:358, 869:144, 869:108, 869:417, 869:326, 869:132, 869:387 |
| 869:426 | CPQ | lo | 23757/250000 | 10393773/109375000 | 2930 | 869:99, 869:188, 869:108, 869:100, 869:80, 869:138, 869:385 |
| 869:430 | BHQ | lo | 355589/1000000 | 103500206701/291066944000 | 3077 | 869:123, 869:371, 869:138, 869:128, 869:357, 869:88, 869:98 |
| 869:431 | BPQ | lo | 144063/1000000 | 16772859983/116426777600 | 3078 | 869:123, 869:371, 869:138, 869:128, 869:417, 869:359, 869:100 |
| 869:433 | HPQ | lo | 104927/1000000 | 7635240573/72766736000 | 3096 | 869:123, 869:371, 869:138, 869:128, 869:144, 869:389, 869:188 |
| 869:434 | ABS | lo | 2409/8000 | 1519779619/5047000000 | 3179 | 869:165, 869:382, 869:186, 869:166, 869:2, 869:4, 869:372 |
| 869:435 | ACS | lo | 12003/40000 | 15599142211/51984100000 | 3180 | 869:165, 869:382, 869:186, 869:166, 869:16, 869:343, 869:240 |
| 869:436 | AQS | lo | 91233/500000 | 9485349/51984100 | 3185 | 869:165, 869:382, 869:186, 869:166, 869:36, 869:348, 869:66 |
| 869:442 | HPS | lo | 120351/1000000 | 15640973403/129960250000 | 3208 | 869:165, 869:382, 869:186, 869:166, 869:389, 869:188, 869:391 |
| 869:443 | HQS | lo | 216109/1000000 | 11234281983/51984100000 | 3209 | 869:165, 869:382, 869:186, 869:166, 869:376, 869:390, 869:367 |
| 869:444 | PQS | lo | 77439/500000 | 80512439753/519841000000 | 3212 | 869:165, 869:382, 869:186, 869:166, 869:420, 869:405, 869:368 |
| 869:446 | AFS | hi | 269687/500000 | 61885455732981/114735800000000 | 3299 | 869:203, 869:226, 869:382, 869:399, 869:245, 869:49 |
| 869:451 | BES | lo | 44157/250000 | 8619625359/48800875000 | 3345 | 869:215, 869:226, 869:383, 869:443, 869:88, 869:92, 869:94 |
| 869:453 | BFS | hi | 138197/250000 | 669943437412707/1211937500000000 | 3385 | 869:409, 869:226, 869:224, 869:444, 869:100, 869:248, 869:105 |
| 869:462 | FHS | lo | 4183/40000 | 13180797/126041500 | 3398 | 869:409, 869:226, 869:224, 869:444, 869:188, 869:390, 869:192 |
| 869:468 | ABF | lo | 14347/50000 | 14347/50000 | 3427 | 869:44, 869:377, 869:100 |
| 869:469 | ACE | lo | 142661/500000 | 142661/500000 | 3441 | 869:36, 869:369, 869:128 |
| 869:470 | ACF | lo | 317599/1000000 | 317599/1000000 | 3445 | 869:44, 869:379, 869:392 |
| 869:472 | ACH | hi | 29473/40000 | 29473/40000 | 3450 | 869:246, 869:25, 869:385 |
| 869:473 | AEF | lo | 207479/500000 | 207479/500000 | 3457 | 869:44, 869:380, 869:404 |
| 869:475 | AER | lo | 173237/500000 | 173237/500000 | 3470 | 869:70, 869:375, 869:186 |
| 869:476 | AFQ | lo | 319541/1000000 | 319541/1000000 | 3475 | 869:44, 869:381, 869:405 |
| 869:477 | AFR | lo | 376209/1000000 | 376209/1000000 | 3476 | 869:44, 869:62, 869:418 |
| 869:479 | AFS | lo | 6889/20000 | 6889/20000 | 3477 | 869:44, 869:64, 869:419 |
| 869:481 | AHQ | lo | 147029/500000 | 147029/500000 | 3481 | 869:52, 869:381, 869:433 |
| 869:482 | AHR | lo | 339653/1000000 | 339653/1000000 | 3482 | 869:52, 869:62, 869:391 |
| 869:484 | AQR | lo | 184233/500000 | 184233/500000 | 3490 | 869:70, 869:436, 869:226 |
| 869:485 | BCH | lo | 316333/1000000 | 316333/1000000 | 3502 | 869:108, 869:417, 869:144 |
| 869:486 | BCH | hi | 96669/125000 | 193337881/250000000 | 3503 | 869:249, 869:81, 869:385 |
| 869:487 | BEF | lo | 212871/500000 | 212871/500000 | 3511 | 869:370, 869:92, 869:371 |
| 869:488 | BEP | lo | 43387/125000 | 43387/125000 | 3518 | 869:431, 869:92, 869:420 |
| 869:490 | BHR | lo | 217413/500000 | 217413/500000 | 3529 | 869:108, 869:388, 869:391 |
| 869:491 | CEF | lo | 351007/1000000 | 351007/1000000 | 3533 | 869:138, 869:128, 869:371 |
| 869:492 | CEH | lo | 10223/25000 | 10223/25000 | 3537 | 869:385, 869:128, 869:376 |
| 869:493 | CEP | lo | 298061/1000000 | 298061/1000000 | 3540 | 869:426, 869:128, 869:420 |
| 869:494 | EFR | lo | 75223/250000 | 75223/250000 | 3562 | 869:186, 869:166, 869:382 |
| 869:496 | EPR | lo | 307351/1000000 | 307351/1000000 | 3571 | 869:186, 869:421, 869:224 |
| 869:497 | FQR | lo | 601/1600 | 601/1600 | 3582 | 869:382, 869:399, 869:226 |
| 869:498 | HQR | lo | 426189/1000000 | 426189/1000000 | 3586 | 869:383, 869:443, 869:226 |
| 869:499 | PQR | lo | 170439/500000 | 170439/500000 | 3587 | 869:224, 869:444, 869:226 |
| 869:500 | BER | lo | 34347/250000 | 32423799/236000000 | 56 | 869:2, 869:130, 869:475, 869:72, 869:17 |
| 869:501 | ACQ | lo | 19929/200000 | 45044829/452051000 | 77 | 869:10, 869:138, 869:476, 869:80, 869:248 |
| 869:502 | BFQ | lo | 168281/1000000 | 45044829/267676000 | 77 | 869:10, 869:138, 869:476, 869:80, 869:25 |
| 869:503 | EFQ | lo | 82823/500000 | 781851/4720000 | 138 | 869:473, 869:92, 869:36, 869:487, 869:3 |
| 869:504 | ABR | lo | 296891/1000000 | 57848970317/194848627750 | 141 | 869:2, 869:477, 869:468, 869:475, 869:31 |
| 869:506 | BFS | lo | 222393/1000000 | 1733322519/7793945110 | 149 | 869:468, 869:166, 869:479, 869:487, 869:31 |
| 869:507 | AES | lo | 2009/12500 | 222110349/1381970000 | 150 | 869:434, 869:166, 869:479, 869:451, 869:453 |
| 869:508 | EHQ | lo | 13203/62500 | 60417171/286000000 | 160 | 869:36, 869:430, 869:481, 869:92, 869:11 |
| 869:510 | ABP | lo | 20279/200000 | 10938009/107874800 | 222 | 869:468, 869:64, 869:434, 869:44, 869:446 |
| 869:512 | ACP | lo | 213/2000 | 28721841/269687000 | 357 | 869:470, 869:64, 869:435, 869:44, 869:446 |
| 869:513 | AEP | lo | 106687/1000000 | 70813176/663742315 | 421 | 869:473, 869:62, 869:475, 869:44, 869:49 |
| 869:514 | APQ | lo | 96399/1000000 | 63984651/663742315 | 526 | 869:44, 869:484, 869:476, 869:62, 869:49 |
| 869:515 | FRS | lo | 57593/500000 | 34960281/303511000 | 544 | 869:477, 869:226, 869:70, 869:497, 869:247 |
| 869:516 | HRS | lo | 29333/250000 | 35611653/303511000 | 564 | 869:482, 869:226, 869:70, 869:498, 869:247 |
| 869:517 | CFH | lo | 35077/200000 | 164655459049/938821696000 | 575 | 869:485, 869:386, 869:98, 869:492, 869:89 |
| 869:518 | CHQ | lo | 105197/1000000 | 47554527/452051000 | 643 | 869:80, 869:390, 869:430, 869:138, 869:248 |
| 869:519 | EFH | lo | 80119/500000 | 2573809875/16062417559 | 705 | 869:487, 869:192, 869:98, 869:494, 869:105 |
| 869:520 | EHS | lo | 110583/1000000 | 11592195933/104827271500 | 709 | 869:88, 869:166, 869:451, 869:519, 869:87 |
| 869:521 | BPR | lo | 191257/1000000 | 1970925543/10305062500 | 721 | 869:488, 869:418, 869:100, 869:496, 869:414 |
| 869:522 | EHP | lo | 33547/200000 | 615631573/3670260000 | 736 | 869:88, 869:433, 869:108, 869:508, 869:249 |
| 869:523 | FHQ | lo | 6249/40000 | 2509364750/16062417559 | 777 | 869:98, 869:497, 869:502, 869:192, 869:105 |
| 869:524 | HPR | lo | 154867/1000000 | 4736698039/30585500000 | 790 | 869:108, 869:498, 869:490, 869:433, 869:249 |
| 869:525 | CFP | lo | 118963/1000000 | 16983815897/142764377600 | 798 | 869:491, 869:144, 869:493, 869:517, 869:125 |
| 869:529 | BFQ | hi | 451609/1000000 | 26644922149/59000000000 | 2106 | 869:3, 869:92, 869:36, 869:10, 869:468, 869:87 |
| 869:533 | FQS | lo | 84019/500000 | 79314399/472000000 | 2125 | 869:3, 869:92, 869:36, 869:10, 869:479, 869:506, 869:166 |
| 869:536 | EFP | lo | 108233/500000 | 3189956827/14736500000 | 2279 | 869:472, 869:144, 869:52, 869:512, 869:473, 869:491, 869:519 |
| 869:537 | FPQ | lo | 130731/1000000 | 192653001/1473650000 | 2287 | 869:472, 869:144, 869:52, 869:512, 869:476, 869:138, 869:523 |
| 869:541 | PQR | hi | 10083/20000 | 97471326817/193338000000 | 2464 | 869:245, 869:537, 869:514, 869:44, 869:247, 869:203 |
| 869:546 | EFP | hi | 49459/100000 | 133384377965057/269687000000000 | 2528 | 869:446, 869:419, 869:64, 869:44, 869:31, 869:166 |
| 869:548 | BCP | lo | 130501/1000000 | 6810765897/52189000000 | 2558 | 869:246, 869:433, 869:514, 869:52, 869:0, 869:485, 869:80 |
| 869:549 | FPR | lo | 47637/250000 | 109389742743/574079000000 | 2578 | 869:246, 869:433, 869:514, 869:52, 869:477, 869:192, 869:497 |
| 869:550 | FPS | lo | 79349/500000 | 1822114691/11481580000 | 2579 | 869:246, 869:433, 869:514, 869:52, 869:479, 869:462, 869:533 |
| 869:551 | EPQ | lo | 11007/100000 | 70907943/644203000 | 2654 | 869:285, 869:442, 869:64, 869:52, 869:36, 869:508, 869:184 |
| 869:552 | EPS | lo | 121431/1000000 | 3912887509/32223000000 | 2740 | 869:486, 869:144, 869:108, 869:548, 869:451, 869:132, 869:520 |
| 869:557 | CPQ | lo | 47537/500000 | 6499212/68359375 | 2930 | 869:99, 869:188, 869:108, 869:100, 869:80, 869:138, 869:518 |
| 869:561 | ABQ | lo | 16517/100000 | 214623633/1299406000 | 3065 | 869:123, 869:503, 869:138, 869:128, 869:0, 869:2, 869:468 |
| 869:562 | BHQ | lo | 177869/500000 | 20708746687/58213388800 | 3077 | 869:123, 869:503, 869:138, 869:128, 869:485, 869:88, 869:98 |
| 869:563 | BPQ | lo | 18033/125000 | 8398127023/58213388800 | 3078 | 869:123, 869:503, 869:138, 869:128, 869:548, 869:488, 869:100 |
| 869:565 | HPQ | lo | 104939/1000000 | 7636100823/72766736000 | 3096 | 869:123, 869:503, 869:138, 869:128, 869:144, 869:522, 869:188 |
| 869:566 | ABS | lo | 37859/125000 | 39361444933/129960250000 | 3179 | 869:165, 869:515, 869:186, 869:166, 869:2, 869:468, 869:504 |
| 869:567 | ACS | lo | 75231/250000 | 78216534401/259920500000 | 3180 | 869:165, 869:515, 869:186, 869:166, 869:469, 869:470, 869:240 |
| 869:568 | AQS | lo | 182809/1000000 | 11878983/64980125 | 3185 | 869:165, 869:515, 869:186, 869:166, 869:36, 869:476, 869:484 |
| 869:574 | HPS | lo | 120627/1000000 | 6270726971/51984100000 | 3208 | 869:165, 869:515, 869:186, 869:166, 869:522, 869:188, 869:524 |
| 869:575 | HQS | lo | 216713/1000000 | 112656691503/519841000000 | 3209 | 869:165, 869:515, 869:186, 869:166, 869:508, 869:523, 869:498 |
| 869:576 | PQS | lo | 77529/500000 | 8060551587/51984100000 | 3212 | 869:165, 869:515, 869:186, 869:166, 869:551, 869:537, 869:499 |
| 869:578 | AFS | hi | 539331/1000000 | 61880532508059/114735800000000 | 3299 | 869:203, 869:226, 869:515, 869:533, 869:245, 869:49 |
| 869:581 | CES | lo | 5393/40000 | 38673399/286839500 | 3310 | 869:203, 869:226, 869:515, 869:533, 869:491, 869:128, 869:130 |
| 869:584 | BES | lo | 35353/200000 | 34505302161/195203500000 | 3345 | 869:215, 869:226, 869:516, 869:575, 869:88, 869:92, 869:500 |
| 869:586 | BFS | hi | 552699/1000000 | 116101261677917/210062500000000 | 3385 | 869:541, 869:226, 869:224, 869:576, 869:100, 869:529, 869:105 |
| 869:595 | FHS | lo | 104663/1000000 | 140709/1344400 | 3398 | 869:541, 869:226, 869:224, 869:576, 869:188, 869:523, 869:192 |
| 869:601 | ABE | lo | 35117/100000 | 35117/100000 | 3423 | 869:36, 869:561, 869:92 |
| 869:603 | ABF | lo | 57479/200000 | 57479/200000 | 3427 | 869:44, 869:510, 869:100 |
| 869:604 | ACE | lo | 57129/200000 | 57129/200000 | 3441 | 869:36, 869:501, 869:128 |
| 869:605 | ACF | lo | 318463/1000000 | 318463/1000000 | 3445 | 869:44, 869:512, 869:525 |
| 869:607 | ACH | hi | 368279/500000 | 368279/500000 | 3450 | 869:246, 869:25, 869:518 |
| 869:608 | AEF | lo | 416153/1000000 | 416153/1000000 | 3457 | 869:44, 869:513, 869:536 |
| 869:610 | AER | lo | 2167/6250 | 2167/6250 | 3470 | 869:70, 869:507, 869:186 |
| 869:611 | AFQ | lo | 32013/100000 | 32013/100000 | 3475 | 869:44, 869:514, 869:537 |
| 869:612 | AFR | lo | 94137/250000 | 94137/250000 | 3476 | 869:44, 869:62, 869:549 |
| 869:614 | AFS | lo | 172349/500000 | 172349/500000 | 3477 | 869:44, 869:64, 869:550 |
| 869:616 | AHQ | lo | 147169/500000 | 147169/500000 | 3481 | 869:52, 869:514, 869:565 |
| 869:617 | AHR | lo | 340867/1000000 | 340867/1000000 | 3482 | 869:52, 869:62, 869:524 |
| 869:619 | AQR | lo | 368809/1000000 | 368809/1000000 | 3490 | 869:70, 869:568, 869:226 |
| 869:621 | BCH | lo | 316501/1000000 | 316501/1000000 | 3502 | 869:108, 869:548, 869:144 |
| 869:622 | BCH | hi | 154617/200000 | 193271131/250000000 | 3503 | 869:249, 869:81, 869:518 |
| 869:623 | BEF | lo | 426927/1000000 | 426927/1000000 | 3511 | 869:502, 869:92, 869:503 |
| 869:624 | BEP | lo | 173667/500000 | 173667/500000 | 3518 | 869:563, 869:92, 869:551 |
| 869:626 | BHR | lo | 109781/250000 | 109781/250000 | 3529 | 869:108, 869:521, 869:524 |
| 869:627 | CEF | lo | 175823/500000 | 175823/500000 | 3533 | 869:138, 869:128, 869:503 |
| 869:628 | CEH | lo | 81889/200000 | 81889/200000 | 3537 | 869:518, 869:128, 869:508 |
| 869:629 | CEP | lo | 9317/31250 | 9317/31250 | 3540 | 869:557, 869:128, 869:551 |
| 869:630 | EFR | lo | 150593/500000 | 150593/500000 | 3562 | 869:186, 869:166, 869:515 |
| 869:632 | EPR | lo | 307431/1000000 | 307431/1000000 | 3571 | 869:186, 869:552, 869:224 |
| 869:633 | FQR | lo | 11757/31250 | 11757/31250 | 3582 | 869:515, 869:533, 869:226 |
| 869:634 | HQR | lo | 85409/200000 | 85409/200000 | 3586 | 869:516, 869:575, 869:226 |
| 869:635 | PQR | lo | 170529/500000 | 170529/500000 | 3587 | 869:224, 869:576, 869:226 |
| 869:636 | BER | lo | 137507/1000000 | 6490377/47200000 | 56 | 869:601, 869:130, 869:610, 869:72, 869:17 |
| 869:637 | ACQ | lo | 99937/1000000 | 451329/4516090 | 77 | 869:561, 869:138, 869:611, 869:80, 869:529 |
| 869:638 | BFQ | lo | 16861/100000 | 451329/2676760 | 77 | 869:561, 869:138, 869:611, 869:80, 869:25 |
| 869:639 | EFQ | lo | 33223/200000 | 1960161/11800000 | 138 | 869:608, 869:92, 869:36, 869:623, 869:3 |
| 869:640 | ABR | lo | 29751/100000 | 5796948889/19484862775 | 141 | 869:601, 869:612, 869:603, 869:610, 869:31 |
| 869:642 | BFS | lo | 223107/1000000 | 86944309023/389697255500 | 149 | 869:603, 869:166, 869:614, 869:623, 869:31 |
| 869:643 | AES | lo | 40301/250000 | 8909763797/55269900000 | 150 | 869:566, 869:166, 869:614, 869:584, 869:586 |
| 869:644 | EHQ | lo | 52847/250000 | 15114267/71500000 | 160 | 869:36, 869:562, 869:616, 869:92, 869:11 |
| 869:646 | ABP | lo | 101783/1000000 | 18298277/179777000 | 222 | 869:603, 869:64, 869:566, 869:44, 869:578 |
| 869:648 | ACP | lo | 26701/250000 | 19200997/179777000 | 357 | 869:605, 869:64, 869:567, 869:44, 869:578 |
| 869:649 | AEP | lo | 106889/1000000 | 70947189/663742315 | 421 | 869:608, 869:62, 869:610, 869:44, 869:49 |
| 869:650 | APQ | lo | 9653/100000 | 64071327/663742315 | 526 | 869:44, 869:619, 869:611, 869:62, 869:49 |
| 869:653 | CFH | lo | 175699/1000000 | 82475321119/469410848000 | 575 | 869:621, 869:519, 869:98, 869:628, 869:89 |
| 869:654 | CHQ | lo | 26357/250000 | 47612559/451609000 | 643 | 869:80, 869:523, 869:562, 869:138, 869:529 |
| 869:655 | EFH | lo | 160487/1000000 | 5155629375/32124835118 | 705 | 869:623, 869:192, 869:98, 869:630, 869:105 |
| 869:656 | EHS | lo | 55331/500000 | 18560706911/167723634400 | 709 | 869:88, 869:166, 869:584, 869:655, 869:87 |
| 869:657 | BPR | lo | 191623/1000000 | 5923430127/30911875000 | 721 | 869:624, 869:549, 869:100, 869:632, 869:546 |
| 869:658 | EHP | lo | 167773/1000000 | 615773801/3670260000 | 736 | 869:88, 869:565, 869:108, 869:644, 869:249 |
| 869:659 | FHQ | lo | 78241/500000 | 2513483875/16062417559 | 777 | 869:98, 869:633, 869:638, 869:192, 869:105 |
| 869:660 | HPR | lo | 487/3125 | 21449104609/137634750000 | 790 | 869:108, 869:634, 869:626, 869:565, 869:249 |
| 869:661 | CFP | lo | 59599/500000 | 5317917541/44613868000 | 798 | 869:627, 869:144, 869:629, 869:653, 869:125 |
| 869:663 | FPR | lo | 38163/200000 | 40667463/213125000 | 2084 | 869:633, 869:541 |
| 869:665 | AQR | hi | 607003/1000000 | 3581317596132527/5900000000000000 | 2102 | 869:3, 869:92, 869:36, 869:561, 869:13, 869:39 |
| 869:666 | BFQ | hi | 1411/3125 | 13319816387/29500000000 | 2106 | 869:3, 869:92, 869:36, 869:561, 869:603, 869:87 |
| 869:670 | FQS | lo | 42057/250000 | 15880773/94400000 | 2125 | 869:3, 869:92, 869:36, 869:561, 869:614, 869:642, 869:166 |
| 869:674 | EFP | lo | 27113/125000 | 79881354373/368279000000 | 2279 | 869:607, 869:144, 869:52, 869:648, 869:608, 869:627, 869:655 |
| 869:675 | FPQ | lo | 130883/1000000 | 12050389441/92069750000 | 2287 | 869:607, 869:144, 869:52, 869:648, 869:611, 869:138, 869:659 |
| 869:679 | PQR | hi | 50413/100000 | 48733698887/96669000000 | 2464 | 869:245, 869:675, 869:650, 869:44, 869:665, 869:203 |
| 869:684 | EFP | hi | 494567/1000000 | 6839365178619/13829000000000 | 2528 | 869:578, 869:550, 869:64, 869:44, 869:31, 869:166 |
| 869:686 | BCP | lo | 130581/1000000 | 7496389853/57407900000 | 2558 | 869:246, 869:565, 869:650, 869:52, 869:0, 869:621, 869:80 |
| 869:687 | FPS | lo | 158837/1000000 | 45592704121/287039500000 | 2579 | 869:246, 869:565, 869:650, 869:52, 869:614, 869:595, 869:670 |
| 869:688 | EPQ | lo | 110091/1000000 | 70920963/644203000 | 2654 | 869:285, 869:574, 869:64, 869:52, 869:36, 869:644, 869:184 |
| 869:692 | AHS | hi | 322099/500000 | 391029963973/607003000000 | 2676 | 869:665, 869:226, 869:70, 869:568, 869:246, 869:57 |
| 869:695 | FRS | lo | 115333/1000000 | 17501949/151750750 | 2699 | 869:665, 869:226, 869:70, 869:568, 869:612, 869:633 |
| 869:696 | HRS | lo | 117653/1000000 | 8926977/75875375 | 2703 | 869:665, 869:226, 869:70, 869:568, 869:617, 869:634 |
| 869:697 | EPS | lo | 1519/12500 | 3131529009/25769500000 | 2740 | 869:622, 869:144, 869:108, 869:686, 869:584, 869:581, 869:656 |
| 869:702 | CPQ | lo | 95113/1000000 | 52015179/546875000 | 2930 | 869:99, 869:188, 869:108, 869:100, 869:80, 869:138, 869:654 |
| 869:706 | ABQ | lo | 1653/10000 | 12028374573/72766736000 | 3065 | 869:123, 869:639, 869:138, 869:128, 869:0, 869:601, 869:603 |
| 869:707 | BHQ | lo | 44477/125000 | 207132883367/582133888000 | 3077 | 869:123, 869:639, 869:138, 869:128, 869:621, 869:88, 869:98 |
| 869:708 | BPQ | lo | 28871/200000 | 84034281399/582133888000 | 3078 | 869:123, 869:639, 869:138, 869:128, 869:686, 869:624, 869:100 |
| 869:710 | HPQ | lo | 20989/200000 | 7636542573/72766736000 | 3096 | 869:123, 869:639, 869:138, 869:128, 869:144, 869:658, 869:188 |
| 869:711 | ABS | lo | 303353/1000000 | 15769576127/51984100000 | 3179 | 869:165, 869:695, 869:186, 869:166, 869:601, 869:603, 869:640 |
| 869:712 | ACS | lo | 150643/500000 | 31324250289/103968200000 | 3180 | 869:165, 869:695, 869:186, 869:166, 869:604, 869:605, 869:240 |
| 869:713 | AQS | lo | 2859/15625 | 4755927/25992050 | 3185 | 869:165, 869:695, 869:186, 869:166, 869:36, 869:611, 869:619 |
| 869:719 | HPS | lo | 120831/1000000 | 62813127409/519841000000 | 3208 | 869:165, 869:695, 869:186, 869:166, 869:658, 869:188, 869:660 |
| 869:720 | HQS | lo | 217067/1000000 | 806004229/3713150000 | 3209 | 869:165, 869:695, 869:186, 869:166, 869:644, 869:659, 869:634 |
| 869:721 | PQS | lo | 15513/100000 | 80643402531/519841000000 | 3212 | 869:165, 869:695, 869:186, 869:166, 869:688, 869:675, 869:635 |
| 869:723 | AFS | hi | 53931/100000 | 30939035447799/57367900000000 | 3299 | 869:203, 869:226, 869:695, 869:670, 869:245, 869:49 |
| 869:726 | CES | lo | 134929/1000000 | 3096249/22947160 | 3310 | 869:203, 869:226, 869:695, 869:670, 869:627, 869:128, 869:130 |
| 869:729 | BES | lo | 176819/1000000 | 138062752969/780814000000 | 3345 | 869:215, 869:226, 869:696, 869:720, 869:88, 869:92, 869:636 |
| 869:731 | BFS | hi | 276337/500000 | 158306438128491/286437500000000 | 3385 | 869:679, 869:226, 869:224, 869:721, 869:100, 869:666, 869:105 |
| 869:740 | FHS | lo | 10471/100000 | 13196979/126032500 | 3398 | 869:679, 869:226, 869:224, 869:721, 869:188, 869:659, 869:192 |
| 869:746 | ABE | lo | 3513/10000 | 3513/10000 | 3423 | 869:36, 869:706, 869:92 |
| 869:748 | ABF | lo | 287783/1000000 | 287783/1000000 | 3427 | 869:44, 869:646, 869:100 |
| 869:749 | ACE | lo | 285937/1000000 | 285937/1000000 | 3441 | 869:36, 869:637, 869:128 |
| 869:750 | ACF | lo | 159501/500000 | 159501/500000 | 3445 | 869:44, 869:648, 869:661 |
| 869:752 | ACH | hi | 736327/1000000 | 736327/1000000 | 3450 | 869:246, 869:25, 869:654 |
| 869:753 | AEF | lo | 416793/1000000 | 416793/1000000 | 3457 | 869:44, 869:649, 869:674 |
| 869:755 | AER | lo | 86801/250000 | 86801/250000 | 3470 | 869:70, 869:643, 869:186 |
| 869:756 | AFQ | lo | 320413/1000000 | 320413/1000000 | 3475 | 869:44, 869:650, 869:675 |
| 869:757 | AFR | lo | 75363/200000 | 75363/200000 | 3476 | 869:44, 869:62, 869:663 |
| 869:759 | AFS | lo | 344837/1000000 | 344837/1000000 | 3477 | 869:44, 869:64, 869:687 |
| 869:761 | AHQ | lo | 11779/40000 | 11779/40000 | 3481 | 869:52, 869:650, 869:710 |
| 869:762 | AHR | lo | 4273/12500 | 4273/12500 | 3482 | 869:52, 869:62, 869:660 |
| 869:764 | AQR | lo | 23061/62500 | 23061/62500 | 3490 | 869:70, 869:713, 869:226 |
| 869:766 | BCH | lo | 316581/1000000 | 316581/1000000 | 3502 | 869:108, 869:686, 869:144 |
| 869:767 | BCH | hi | 386427/500000 | 193213381/250000000 | 3503 | 869:249, 869:81, 869:654 |
| 869:768 | BEF | lo | 17109/40000 | 17109/40000 | 3511 | 869:638, 869:92, 869:639 |
| 869:769 | BEP | lo | 173723/500000 | 173723/500000 | 3518 | 869:708, 869:92, 869:688 |
| 869:771 | BHR | lo | 440463/1000000 | 440463/1000000 | 3529 | 869:108, 869:657, 869:660 |
| 869:772 | CEF | lo | 70423/200000 | 70423/200000 | 3533 | 869:138, 869:128, 869:639 |
| 869:773 | CEH | lo | 51227/125000 | 51227/125000 | 3537 | 869:654, 869:128, 869:644 |
| 869:774 | CEP | lo | 74551/250000 | 74551/250000 | 3540 | 869:702, 869:128, 869:688 |
| 869:775 | EFR | lo | 301333/1000000 | 301333/1000000 | 3562 | 869:186, 869:166, 869:695 |
| 869:777 | EPR | lo | 961/3125 | 961/3125 | 3571 | 869:186, 869:697, 869:224 |
| 869:778 | FQR | lo | 376561/1000000 | 376561/1000000 | 3582 | 869:695, 869:670, 869:226 |
| 869:779 | HQR | lo | 10693/25000 | 10693/25000 | 3586 | 869:696, 869:720, 869:226 |
| 869:780 | PQR | lo | 34113/100000 | 34113/100000 | 3587 | 869:224, 869:721, 869:226 |
| 869:781 | BER | lo | 34407/250000 | 8120109/59000000 | 56 | 869:746, 869:130, 869:755, 869:72, 869:17 |
| 869:782 | ACQ | lo | 50021/500000 | 45171309/451520000 | 77 | 869:706, 869:138, 869:756, 869:80, 869:666 |
| 869:783 | BFQ | lo | 168753/1000000 | 45171309/267676000 | 77 | 869:706, 869:138, 869:756, 869:80, 869:25 |
| 869:784 | EFQ | lo | 83199/500000 | 39270087/236000000 | 138 | 869:753, 869:92, 869:36, 869:768, 869:3 |
| 869:785 | ABR | lo | 74511/250000 | 4148116397/13917759125 | 141 | 869:746, 869:757, 869:748, 869:755, 869:31 |
| 869:787 | BFS | lo | 111791/500000 | 995766999/4453682920 | 149 | 869:748, 869:166, 869:759, 869:768, 869:31 |
| 869:788 | AES | lo | 161371/1000000 | 89185562503/552674000000 | 150 | 869:711, 869:166, 869:759, 869:729, 869:731 |
| 869:789 | EHQ | lo | 105729/500000 | 60477063/286000000 | 160 | 869:36, 869:707, 869:761, 869:92, 869:11 |
| 869:791 | ABP | lo | 101937/1000000 | 1145326/11235625 | 222 | 869:748, 869:64, 869:711, 869:44, 869:723 |
| 869:793 | ACP | lo | 26741/250000 | 1201808/11235625 | 357 | 869:750, 869:64, 869:712, 869:44, 869:723 |
| 869:794 | AEP | lo | 107047/1000000 | 71051721/663742315 | 421 | 869:753, 869:62, 869:755, 869:44, 869:49 |
| 869:795 | APQ | lo | 96593/1000000 | 64113177/663742315 | 526 | 869:44, 869:764, 869:756, 869:62, 869:49 |
| 869:798 | CFH | lo | 175907/1000000 | 165145798947/938821696000 | 575 | 869:766, 869:655, 869:98, 869:773, 869:89 |
| 869:799 | CHQ | lo | 52759/500000 | 23821857/225760000 | 643 | 869:80, 869:659, 869:707, 869:138, 869:666 |
| 869:800 | EFH | lo | 40159/250000 | 2580215250/16062417559 | 705 | 869:768, 869:192, 869:98, 869:775, 869:105 |
| 869:801 | EHS | lo | 6919/62500 | 23209636721/209654543000 | 709 | 869:88, 869:166, 869:729, 869:800, 869:87 |
| 869:802 | BPR | lo | 191879/1000000 | 9489726849/49456700000 | 721 | 869:769, 869:663, 869:100, 869:777, 869:684 |
| 869:803 | EHP | lo | 167793/1000000 | 123168983/734052000 | 736 | 869:88, 869:710, 869:108, 869:789, 869:249 |
| 869:804 | FHQ | lo | 156621/1000000 | 2515719750/16062417559 | 777 | 869:98, 869:778, 869:783, 869:192, 869:105 |
| 869:805 | HPR | lo | 78107/500000 | 1911163323/12234200000 | 790 | 869:108, 869:779, 869:771, 869:710, 869:249 |
| 869:806 | CFP | lo | 119361/1000000 | 21300716507/178455472000 | 798 | 869:772, 869:144, 869:774, 869:798, 869:125 |
| 869:808 | FPR | lo | 190993/1000000 | 1776238237/9300000000 | 2084 | 869:778, 869:679 |
| 869:810 | AQR | hi | 606997/1000000 | 358127840355743/590000000000000 | 2102 | 869:3, 869:92, 869:36, 869:706, 869:13, 869:39 |
| 869:811 | BFQ | hi | 451443/1000000 | 13317561137/29500000000 | 2106 | 869:3, 869:92, 869:36, 869:706, 869:748, 869:87 |
| 869:815 | FQS | lo | 168349/1000000 | 79460967/472000000 | 2125 | 869:3, 869:92, 869:36, 869:706, 869:759, 869:787, 869:166 |
| 869:819 | EFP | lo | 217173/1000000 | 39977692993/184081750000 | 2279 | 869:752, 869:144, 869:52, 869:793, 869:753, 869:772, 869:800 |
| 869:820 | FPQ | lo | 32741/250000 | 24108244161/184081750000 | 2287 | 869:752, 869:144, 869:52, 869:793, 869:756, 869:138, 869:804 |
| 869:824 | PQR | hi | 252061/500000 | 12183239641/24167250000 | 2464 | 869:245, 869:820, 869:795, 869:44, 869:810, 869:203 |
| 869:829 | EFP | hi | 123639/250000 | 8890629156047/17977000000000 | 2528 | 869:723, 869:687, 869:64, 869:44, 869:31, 869:166 |
| 869:831 | BCP | lo | 130619/1000000 | 74985706533/574079000000 | 2558 | 869:246, 869:710, 869:795, 869:52, 869:0, 869:766, 869:80 |
| 869:832 | FPS | lo | 39729/250000 | 18246073421/114815800000 | 2579 | 869:246, 869:710, 869:795, 869:52, 869:759, 869:740, 869:815 |
| 869:833 | EPQ | lo | 110101/1000000 | 4432938/40262375 | 2654 | 869:692, 869:719, 869:64, 869:52, 869:36, 869:789, 869:184 |
| 869:837 | AHS | hi | 644197/1000000 | 391025152027/606997000000 | 2676 | 869:810, 869:226, 869:70, 869:713, 869:246, 869:57 |
| 869:840 | FRS | lo | 115427/1000000 | 8757996/75874625 | 2699 | 869:810, 869:226, 869:70, 869:713, 869:757, 869:778 |
| 869:841 | HRS | lo | 58953/500000 | 1789227/15174925 | 2703 | 869:810, 869:226, 869:70, 869:713, 869:762, 869:779 |
| 869:842 | EPS | lo | 60787/500000 | 489373173/4025281250 | 2740 | 869:767, 869:144, 869:108, 869:831, 869:729, 869:726, 869:801 |
| 869:847 | CPQ | lo | 11891/125000 | 52023549/546875000 | 2930 | 869:99, 869:188, 869:108, 869:100, 869:80, 869:138, 869:799 |
| 869:851 | ABQ | lo | 165383/1000000 | 12034396323/72766736000 | 3065 | 869:123, 869:784, 869:138, 869:128, 869:0, 869:746, 869:748 |
| 869:852 | BHQ | lo | 355857/1000000 | 20715680799/58213388800 | 3077 | 869:123, 869:784, 869:138, 869:128, 869:766, 869:88, 869:98 |
| 869:853 | BPQ | lo | 72201/500000 | 42030827973/291066944000 | 3078 | 869:123, 869:784, 869:138, 869:128, 869:831, 869:769, 869:100 |
| 869:855 | HPQ | lo | 26237/250000 | 7636775073/72766736000 | 3096 | 869:123, 869:784, 869:138, 869:128, 869:144, 869:803, 869:188 |
| 869:856 | ABS | lo | 151861/500000 | 78943626131/259920500000 | 3179 | 869:165, 869:840, 869:186, 869:166, 869:746, 869:748, 869:785 |
| 869:857 | ACS | lo | 30157/100000 | 22395551431/74263000000 | 3180 | 869:165, 869:840, 869:186, 869:166, 869:749, 869:750, 869:240 |
| 869:858 | AQS | lo | 11441/62500 | 9516039/51984100 | 3185 | 869:165, 869:840, 869:186, 869:166, 869:36, 869:756, 869:764 |
| 869:864 | HPS | lo | 30229/250000 | 62857246611/519841000000 | 3208 | 869:165, 869:840, 869:186, 869:166, 869:803, 869:188, 869:805 |
| 869:865 | HQS | lo | 217297/1000000 | 5647994733/25992050000 | 3209 | 869:165, 869:840, 869:186, 869:166, 869:789, 869:804, 869:779 |
| 869:866 | PQS | lo | 38791/250000 | 80660969941/519841000000 | 3212 | 869:165, 869:840, 869:186, 869:166, 869:833, 869:820, 869:780 |
| 869:868 | AFS | hi | 16853/31250 | 15469124200819/28683950000000 | 3299 | 869:203, 869:226, 869:840, 869:815, 869:245, 869:49 |
| 869:871 | CES | lo | 27001/200000 | 38724921/286839500 | 3310 | 869:203, 869:226, 869:840, 869:815, 869:772, 869:128, 869:130 |
| 869:874 | BES | lo | 35373/200000 | 34524820629/195203500000 | 3345 | 869:215, 869:226, 869:841, 869:865, 869:88, 869:92, 869:781 |
| 869:876 | BFS | hi | 34541/62500 | 280852824735687/508187500000000 | 3385 | 869:824, 869:226, 869:224, 869:866, 869:100, 869:811, 869:105 |
| 869:885 | FHS | lo | 3273/31250 | 1703229/16262000 | 3398 | 869:824, 869:226, 869:224, 869:866, 869:188, 869:804, 869:192 |
| 869:891 | ABE | lo | 351383/1000000 | 351383/1000000 | 3423 | 869:36, 869:851, 869:92 |
| 869:893 | ABF | lo | 287937/1000000 | 287937/1000000 | 3427 | 869:44, 869:791, 869:100 |
| 869:894 | ACE | lo | 143021/500000 | 143021/500000 | 3441 | 869:36, 869:782, 869:128 |
| 869:895 | ACF | lo | 12773/40000 | 12773/40000 | 3445 | 869:44, 869:793, 869:806 |
| 869:897 | ACH | hi | 736237/1000000 | 736237/1000000 | 3450 | 869:246, 869:25, 869:799 |
| 869:898 | AEF | lo | 20861/50000 | 20861/50000 | 3457 | 869:44, 869:794, 869:819 |
| 869:900 | AER | lo | 347371/1000000 | 347371/1000000 | 3470 | 869:70, 869:788, 869:186 |
| 869:901 | AFQ | lo | 320557/1000000 | 320557/1000000 | 3475 | 869:44, 869:795, 869:820 |
| 869:902 | AFR | lo | 376993/1000000 | 376993/1000000 | 3476 | 869:44, 869:62, 869:808 |
| 869:904 | AFS | lo | 86229/250000 | 86229/250000 | 3477 | 869:44, 869:64, 869:832 |
| 869:906 | AHQ | lo | 294541/1000000 | 294541/1000000 | 3481 | 869:52, 869:795, 869:855 |
| 869:907 | AHR | lo | 171107/500000 | 171107/500000 | 3482 | 869:52, 869:62, 869:805 |
| 869:909 | AQR | lo | 11533/31250 | 11533/31250 | 3490 | 869:70, 869:858, 869:226 |
| 869:911 | BCH | lo | 316619/1000000 | 316619/1000000 | 3502 | 869:108, 869:831, 869:144 |
| 869:912 | BCH | hi | 193191/250000 | 193190881/250000000 | 3503 | 869:249, 869:81, 869:799 |
| 869:913 | BEF | lo | 428151/1000000 | 428151/1000000 | 3511 | 869:783, 869:92, 869:784 |
| 869:914 | BEP | lo | 347503/1000000 | 347503/1000000 | 3518 | 869:853, 869:92, 869:833 |
| 869:916 | BHR | lo | 441093/1000000 | 441093/1000000 | 3529 | 869:108, 869:802, 869:805 |
| 869:917 | CEF | lo | 176199/500000 | 176199/500000 | 3533 | 869:138, 869:128, 869:784 |
| 869:918 | CEH | lo | 51247/125000 | 51247/125000 | 3537 | 869:799, 869:128, 869:789 |
| 869:919 | CEP | lo | 298229/1000000 | 298229/1000000 | 3540 | 869:847, 869:128, 869:833 |
| 869:920 | EFR | lo | 301427/1000000 | 301427/1000000 | 3562 | 869:186, 869:166, 869:840 |
| 869:922 | EPR | lo | 153787/500000 | 153787/500000 | 3571 | 869:186, 869:842, 869:224 |
| 869:923 | FQR | lo | 47097/125000 | 47097/125000 | 3582 | 869:840, 869:815, 869:226 |
| 869:924 | HQR | lo | 428203/1000000 | 428203/1000000 | 3586 | 869:841, 869:865, 869:226 |
| 869:925 | PQR | lo | 85291/250000 | 85291/250000 | 3587 | 869:224, 869:866, 869:226 |
| 869:926 | BER | lo | 68839/500000 | 32492061/236000000 | 56 | 869:891, 869:130, 869:900, 869:72, 869:17 |
| 869:927 | ACQ | lo | 50053/500000 | 753207/7524050 | 77 | 869:851, 869:138, 869:901, 869:80, 869:811 |
| 869:928 | BFQ | lo | 2638/15625 | 2259621/13383800 | 77 | 869:851, 869:138, 869:901, 869:80, 869:25 |
| 869:929 | EFQ | lo | 83283/500000 | 78619503/472000000 | 138 | 869:898, 869:92, 869:36, 869:913, 869:3 |
| 869:930 | ABR | lo | 59659/200000 | 116244947473/389697255500 | 141 | 869:891, 869:902, 869:893, 869:900, 869:31 |
| 869:932 | BFS | lo | 223833/1000000 | 43613567829/194848627750 | 149 | 869:893, 869:166, 869:904, 869:913, 869:31 |
| 869:933 | AES | lo | 40373/250000 | 4462485717/27632800000 | 150 | 869:856, 869:166, 869:904, 869:874, 869:876 |
| 869:934 | EHQ | lo | 211493/1000000 | 30243507/143000000 | 160 | 869:36, 869:852, 869:906, 869:92, 869:11 |
| 869:936 | ABP | lo | 102029/1000000 | 55024287/539296000 | 222 | 869:893, 869:64, 869:856, 869:44, 869:868 |
| 869:938 | ACP | lo | 107071/1000000 | 11548647/107859200 | 357 | 869:895, 869:64, 869:857, 869:44, 869:868 |
| 869:939 | AEP | lo | 10713/100000 | 71106963/663742315 | 421 | 869:898, 869:62, 869:900, 869:44, 869:49 |
| 869:940 | APQ | lo | 6039/62500 | 64134009/663742315 | 526 | 869:44, 869:909, 869:901, 869:62, 869:49 |
| 869:942 | HRS | lo | 59019/500000 | 71648781/606997000 | 564 | 869:907, 869:226, 869:70, 869:924, 869:810 |
| 869:943 | CFH | lo | 176011/1000000 | 41310928421/234705424000 | 575 | 869:911, 869:800, 869:98, 869:918, 869:89 |
| 869:944 | CHQ | lo | 105573/1000000 | 7943409/75240500 | 643 | 869:80, 869:804, 869:852, 869:138, 869:811 |
| 869:945 | EFH | lo | 80361/500000 | 2581587000/16062417559 | 705 | 869:913, 869:192, 869:98, 869:920, 869:105 |
| 869:946 | EHS | lo | 110731/1000000 | 9286114653/83861817200 | 709 | 869:88, 869:166, 869:874, 869:945, 869:87 |
| 869:947 | BPR | lo | 4801/25000 | 94975022479/494556000000 | 721 | 869:914, 869:808, 869:100, 869:922, 869:829 |
| 869:948 | EHP | lo | 83901/500000 | 76985059/458782500 | 736 | 869:88, 869:855, 869:108, 869:934, 869:249 |
| 869:949 | FHQ | lo | 39177/250000 | 2517122500/16062417559 | 777 | 869:98, 869:923, 869:928, 869:192, 869:105 |
| 869:950 | HPR | lo | 78209/500000 | 2392075199/15292750000 | 790 | 869:108, 869:924, 869:916, 869:855, 869:249 |
| 869:951 | CFP | lo | 14931/125000 | 85264598519/713821888000 | 798 | 869:917, 869:144, 869:919, 869:943, 869:125 |
| 869:953 | FPR | lo | 38221/200000 | 131384931/687500000 | 2084 | 869:923, 869:824 |
| 869:955 | AQR | hi | 606993/1000000 | 35812533806056373/59000000000000000 | 2102 | 869:3, 869:92, 869:36, 869:851, 869:13, 869:39 |
| 869:956 | BFQ | hi | 451413/1000000 | 3329166503/7375000000 | 2106 | 869:3, 869:92, 869:36, 869:851, 869:893, 869:87 |
| 869:960 | FQS | lo | 84207/500000 | 79491657/472000000 | 2125 | 869:3, 869:92, 869:36, 869:851, 869:904, 869:932, 869:166 |
| 869:964 | EFP | lo | 108667/500000 | 80004832557/368118500000 | 2279 | 869:897, 869:144, 869:52, 869:938, 869:898, 869:917, 869:945 |
| 869:965 | FPQ | lo | 131009/1000000 | 24113530317/184059250000 | 2287 | 869:897, 869:144, 869:52, 869:938, 869:901, 869:138, 869:949 |
| 869:969 | PQR | hi | 252059/500000 | 5414725129/10741000000 | 2464 | 869:245, 869:965, 869:940, 869:44, 869:955, 869:203 |
| 869:974 | EFP | hi | 494549/1000000 | 16669247697391/33706000000000 | 2528 | 869:868, 869:832, 869:64, 869:44, 869:31, 869:166 |
| 869:976 | BCP | lo | 130637/1000000 | 852230787/6523625000 | 2558 | 869:246, 869:855, 869:940, 869:52, 869:0, 869:911, 869:80 |
| 869:977 | FPS | lo | 158959/1000000 | 2851725087/17939968750 | 2579 | 869:246, 869:855, 869:940, 869:52, 869:904, 869:885, 869:960 |
| 869:978 | EPQ | lo | 55053/500000 | 7093017/64419700 | 2654 | 869:837, 869:864, 869:64, 869:52, 869:36, 869:934, 869:184 |
| 869:982 | AHS | hi | 161049/250000 | 130340648021/202331000000 | 2676 | 869:955, 869:226, 869:70, 869:858, 869:246, 869:57 |
| 869:985 | FRS | lo | 3609/31250 | 23366839/202331000 | 2699 | 869:955, 869:226, 869:70, 869:858, 869:902, 869:923 |
| 869:986 | EPS | lo | 121611/1000000 | 7831406207/64397000000 | 2740 | 869:912, 869:144, 869:108, 869:976, 869:874, 869:871, 869:946 |
| 869:991 | CPQ | lo | 47569/500000 | 6503583/68359375 | 2930 | 869:99, 869:188, 869:108, 869:100, 869:80, 869:138, 869:944 |
| 869:995 | ABQ | lo | 165421/1000000 | 214949133/1299406000 | 3065 | 869:123, 869:929, 869:138, 869:128, 869:0, 869:891, 869:893 |
| 869:996 | BHQ | lo | 355879/1000000 | 103584725553/291066944000 | 3077 | 869:123, 869:929, 869:138, 869:128, 869:911, 869:88, 869:98 |
| 869:997 | BPQ | lo | 144427/1000000 | 42038137563/291066944000 | 3078 | 869:123, 869:929, 869:138, 869:128, 869:976, 869:914, 869:100 |
| 869:999 | HPQ | lo | 2099/20000 | 545491407/5197624000 | 3096 | 869:123, 869:929, 869:138, 869:128, 869:144, 869:948, 869:188 |
| 869:1000 | ABS | lo | 60777/200000 | 4513485819/14852600000 | 3179 | 869:165, 869:985, 869:186, 869:166, 869:891, 869:893, 869:930 |
| 869:1001 | ACS | lo | 4714/15625 | 78416976161/259920500000 | 3180 | 869:165, 869:985, 869:186, 869:166, 869:894, 869:895, 869:240 |
| 869:1002 | AQS | lo | 22887/125000 | 47590611/259920500 | 3185 | 869:165, 869:985, 869:186, 869:166, 869:36, 869:901, 869:909 |
| 869:1008 | HPS | lo | 120963/1000000 | 7860227547/64980125000 | 3208 | 869:165, 869:985, 869:186, 869:166, 869:948, 869:188, 869:950 |
| 869:1009 | HQS | lo | 217449/1000000 | 28259822127/129960250000 | 3209 | 869:165, 869:985, 869:186, 869:166, 869:934, 869:949, 869:924 |
| 869:1010 | PQS | lo | 77591/500000 | 40334993073/259920500000 | 3212 | 869:165, 869:985, 869:186, 869:166, 869:978, 869:965, 869:925 |
| 869:1012 | AFS | hi | 539287/1000000 | 61875475317833/114735800000000 | 3299 | 869:203, 869:226, 869:985, 869:960, 869:245, 869:49 |
| 869:1015 | CES | lo | 135051/1000000 | 77476161/573679000 | 3310 | 869:203, 869:226, 869:985, 869:960, 869:917, 869:128, 869:130 |
| 869:1018 | BES | lo | 22111/125000 | 69058469211/390407000000 | 3345 | 869:215, 869:226, 869:942, 869:1009, 869:88, 869:92, 869:926 |
| 869:1020 | BFS | hi | 552649/1000000 | 8706254004800943/15753687500000000 | 3385 | 869:969, 869:226, 869:224, 869:1010, 869:100, 869:956, 869:105 |
| 869:1029 | FHS | lo | 6547/62500 | 26403909/252059000 | 3398 | 869:969, 869:226, 869:224, 869:1010, 869:188, 869:949, 869:192 |
| 869:1035 | ABE | lo | 351421/1000000 | 351421/1000000 | 3423 | 869:36, 869:995, 869:92 |
| 869:1037 | ABF | lo | 288029/1000000 | 288029/1000000 | 3427 | 869:44, 869:936, 869:100 |
| 869:1038 | ACE | lo | 143053/500000 | 143053/500000 | 3441 | 869:36, 869:927, 869:128 |
| 869:1039 | ACF | lo | 319519/1000000 | 319519/1000000 | 3445 | 869:44, 869:938, 869:951 |
| 869:1041 | ACH | hi | 368091/500000 | 368091/500000 | 3450 | 869:246, 869:25, 869:944 |
| 869:1042 | AEF | lo | 52183/125000 | 52183/125000 | 3457 | 869:44, 869:939, 869:964 |
| 869:1044 | AER | lo | 86873/250000 | 86873/250000 | 3470 | 869:70, 869:933, 869:186 |
| 869:1045 | AFQ | lo | 320633/1000000 | 320633/1000000 | 3475 | 869:44, 869:940, 869:965 |
| 869:1046 | AFR | lo | 75421/200000 | 75421/200000 | 3476 | 869:44, 869:62, 869:953 |
| 869:1048 | AFS | lo | 344959/1000000 | 344959/1000000 | 3477 | 869:44, 869:64, 869:977 |
| 869:1050 | AHQ | lo | 147287/500000 | 147287/500000 | 3481 | 869:52, 869:940, 869:999 |
| 869:1051 | AHR | lo | 171209/500000 | 171209/500000 | 3482 | 869:52, 869:62, 869:950 |
| 869:1053 | AQR | lo | 46137/125000 | 46137/125000 | 3490 | 869:70, 869:1002, 869:226 |
| 869:1055 | BCH | lo | 316637/1000000 | 316637/1000000 | 3502 | 869:108, 869:976, 869:144 |
| 869:1056 | BCH | hi | 772709/1000000 | 193177131/250000000 | 3503 | 869:249, 869:81, 869:944 |
| 869:1057 | BEF | lo | 214199/500000 | 214199/500000 | 3511 | 869:928, 869:92, 869:929 |
| 869:1058 | BEP | lo | 347533/1000000 | 347533/1000000 | 3518 | 869:997, 869:92, 869:978 |
| 869:1060 | BHR | lo | 220729/500000 | 220729/500000 | 3529 | 869:108, 869:947, 869:950 |
| 869:1061 | CEF | lo | 176283/500000 | 176283/500000 | 3533 | 869:138, 869:128, 869:929 |
| 869:1062 | CEH | lo | 205033/500000 | 205033/500000 | 3537 | 869:944, 869:128, 869:934 |
| 869:1063 | CEP | lo | 74561/250000 | 74561/250000 | 3540 | 869:991, 869:128, 869:978 |
| 869:1064 | EFR | lo | 18843/62500 | 18843/62500 | 3562 | 869:186, 869:166, 869:985 |
| 869:1066 | EPR | lo | 307611/1000000 | 307611/1000000 | 3571 | 869:186, 869:986, 869:224 |
| 869:1067 | FQR | lo | 188451/500000 | 188451/500000 | 3582 | 869:985, 869:960, 869:226 |
| 869:1068 | HQR | lo | 428487/1000000 | 428487/1000000 | 3586 | 869:942, 869:1009, 869:226 |
| 869:1069 | PQR | lo | 170591/500000 | 170591/500000 | 3587 | 869:224, 869:1010, 869:226 |
| 869:1070 | BER | lo | 137709/1000000 | 64998909/472000000 | 56 | 869:1035, 869:130, 869:1044, 869:72, 869:17 |
| 869:1071 | ACQ | lo | 12517/125000 | 279031/2786500 | 77 | 869:995, 869:138, 869:1045, 869:80, 869:956 |
| 869:1072 | BFQ | lo | 21109/125000 | 22601511/133838000 | 77 | 869:995, 869:138, 869:1045, 869:80, 869:25 |
| 869:1073 | EFQ | lo | 166663/1000000 | 39332583/236000000 | 138 | 869:1042, 869:92, 869:36, 869:1057, 869:3 |
| 869:1074 | ABR | lo | 5969/20000 | 33230055639/111342073000 | 141 | 869:1035, 869:1046, 869:1037, 869:1044, 869:31 |
| 869:1076 | BFS | lo | 27997/125000 | 87283221341/389697255500 | 149 | 869:1037, 869:166, 869:1048, 869:1057, 869:31 |
| 869:1077 | AES | lo | 161549/1000000 | 5580025787/34540562500 | 150 | 869:1000, 869:166, 869:1048, 869:1018, 869:1020 |
| 869:1078 | EHQ | lo | 21151/100000 | 60492129/286000000 | 160 | 869:36, 869:996, 869:1050, 869:92, 869:11 |
| 869:1080 | ABP | lo | 4083/40000 | 27524001/269643500 | 222 | 869:1037, 869:64, 869:1000, 869:44, 869:1012 |
| 869:1082 | ACP | lo | 13391/125000 | 1650657/15408200 | 357 | 869:1039, 869:64, 869:1001, 869:44, 869:1012 |
| 869:1083 | AEP | lo | 107181/1000000 | 71140908/663742315 | 421 | 869:1042, 869:62, 869:1044, 869:44, 869:49 |
| 869:1084 | APQ | lo | 96641/1000000 | 64144797/663742315 | 526 | 869:44, 869:1053, 869:1045, 869:62, 869:49 |
| 869:1087 | CFH | lo | 17607/100000 | 82649472957/469410848000 | 575 | 869:1055, 869:945, 869:98, 869:1062, 869:89 |
| 869:1088 | CHQ | lo | 105603/1000000 | 15890197/150471000 | 643 | 869:80, 869:949, 869:996, 869:138, 869:956 |
| 869:1089 | EFH | lo | 80387/500000 | 2582420125/16062417559 | 705 | 869:1057, 869:192, 869:98, 869:1064, 869:105 |
| 869:1090 | EHS | lo | 55373/500000 | 2902313791/26206817875 | 709 | 869:88, 869:166, 869:1018, 869:1089, 869:87 |
| 869:1091 | BPR | lo | 9607/50000 | 19004623393/98909800000 | 721 | 869:1058, 869:953, 869:100, 869:1066, 869:974 |
| 869:1092 | EHP | lo | 2622/15625 | 2463601/14681040 | 736 | 869:88, 869:999, 869:108, 869:1078, 869:249 |
| 869:1093 | FHQ | lo | 156759/1000000 | 2517932375/16062417559 | 777 | 869:98, 869:1067, 869:1072, 869:192, 869:105 |
| 869:1094 | HPR | lo | 78269/500000 | 861803081/5505390000 | 790 | 869:108, 869:1068, 869:1060, 869:999, 869:249 |
| 869:1095 | CFP | lo | 59749/500000 | 2132511477/17845547200 | 798 | 869:1061, 869:144, 869:1063, 869:1087, 869:125 |
| 869:1097 | FPR | lo | 19117/100000 | 16297305297/85250000000 | 2084 | 869:1067, 869:969 |
| 869:1099 | AQR | hi | 606991/1000000 | 35812419243144551/59000000000000000 | 2102 | 869:3, 869:92, 869:36, 869:995, 869:13, 869:39 |
| 869:1100 | BFQ | hi | 90279/200000 | 6658065631/14750000000 | 2106 | 869:3, 869:92, 869:36, 869:995, 869:1037, 869:87 |
| 869:1104 | FQS | lo | 168451/1000000 | 15901791/94400000 | 2125 | 869:3, 869:92, 869:36, 869:995, 869:1048, 869:1076, 869:166 |
| 869:1108 | EFP | lo | 217429/1000000 | 4446326413/20449500000 | 2279 | 869:1041, 869:144, 869:52, 869:1082, 869:1042, 869:1061, 869:1089 |
| 869:1109 | FPQ | lo | 65517/500000 | 83737126/639046875 | 2287 | 869:1041, 869:144, 869:52, 869:1082, 869:1045, 869:138, 869:1093 |
| 869:1113 | PQR | hi | 126029/250000 | 5414700183/10741000000 | 2464 | 869:245, 869:1109, 869:1084, 869:44, 869:1099, 869:203 |
| 869:1118 | EFP | hi | 30909/62500 | 266700948607657/539287000000000 | 2528 | 869:1012, 869:977, 869:64, 869:44, 869:31, 869:166 |
| 869:1120 | BCP | lo | 130647/1000000 | 75001850317/574079000000 | 2558 | 869:246, 869:999, 869:1084, 869:52, 869:0, 869:1055, 869:80 |
| 869:1121 | FPS | lo | 19873/125000 | 45634827529/287039500000 | 2579 | 869:246, 869:999, 869:1084, 869:52, 869:1048, 869:1029, 869:1104 |
| 869:1122 | EPQ | lo | 27527/250000 | 1688849/15338000 | 2654 | 869:982, 869:1008, 869:64, 869:52, 869:36, 869:1078, 869:184 |
| 869:1126 | AHS | hi | 128839/200000 | 55860048583/86713000000 | 2676 | 869:1099, 869:226, 869:70, 869:1002, 869:246, 869:57 |
| 869:1128 | FRS | lo | 4621/40000 | 70122651/606991000 | 2699 | 869:1099, 869:226, 869:70, 869:1002, 869:1046, 869:1067 |
| 869:1129 | HRS | lo | 59057/500000 | 14338833/121398200 | 2703 | 869:1099, 869:226, 869:70, 869:1002, 869:1051, 869:1068 |
| 869:1130 | EPS | lo | 121631/1000000 | 6713285851/55193500000 | 2740 | 869:1056, 869:144, 869:108, 869:1120, 869:1018, 869:1015, 869:1090 |
| 869:1135 | CPQ | lo | 95143/1000000 | 26015727/273437500 | 2930 | 869:99, 869:188, 869:108, 869:100, 869:80, 869:138, 869:1088 |
| 869:1139 | ABQ | lo | 165441/1000000 | 6019331349/36383368000 | 3065 | 869:123, 869:1073, 869:138, 869:128, 869:0, 869:1035, 869:1037 |
| 869:1140 | BHQ | lo | 35589/100000 | 207176100083/582133888000 | 3077 | 869:123, 869:1073, 869:138, 869:128, 869:1055, 869:88, 869:98 |
| 869:1141 | BPQ | lo | 144441/1000000 | 16816876509/116426777600 | 3078 | 869:123, 869:1073, 869:138, 869:128, 869:1120, 869:1058, 869:100 |
| 869:1143 | HPQ | lo | 104951/1000000 | 954618681/9095842000 | 3096 | 869:123, 869:1073, 869:138, 869:128, 869:144, 869:1092, 869:188 |
| 869:1144 | ABS | lo | 303981/1000000 | 158021797189/519841000000 | 3179 | 869:165, 869:1128, 869:186, 869:166, 869:1035, 869:1037, 869:1074 |
| 869:1145 | ACS | lo | 301771/1000000 | 78436680073/259920500000 | 3180 | 869:165, 869:1128, 869:186, 869:166, 869:1038, 869:1039, 869:240 |
| 869:1146 | AQS | lo | 183117/1000000 | 9519201/51984100 | 3185 | 869:165, 869:1128, 869:186, 869:166, 869:36, 869:1045, 869:1053 |
| 869:1152 | HPS | lo | 120991/1000000 | 157241103/1299602500 | 3208 | 869:165, 869:1128, 869:186, 869:166, 869:1092, 869:188, 869:1094 |
| 869:1153 | HQS | lo | 108769/500000 | 56542784297/259920500000 | 3209 | 869:165, 869:1128, 869:186, 869:166, 869:1078, 869:1093, 869:1068 |
| 869:1154 | PQS | lo | 155191/1000000 | 2881237601/18565750000 | 3212 | 869:165, 869:1128, 869:186, 869:166, 869:1122, 869:1109, 869:1069 |
| 869:1156 | AFS | hi | 269641/500000 | 30937427864151/57367900000000 | 3299 | 869:203, 869:226, 869:1128, 869:1104, 869:245, 869:49 |
| 869:1159 | CES | lo | 67539/500000 | 15498357/114735800 | 3310 | 869:203, 869:226, 869:1128, 869:1104, 869:1061, 869:128, 869:130 |
| 869:1162 | BES | lo | 88451/500000 | 69063829221/390407000000 | 3345 | 869:215, 869:226, 869:1129, 869:1153, 869:88, 869:92, 869:1070 |
| 869:1164 | BFS | hi | 110529/200000 | 4353076752524133/7876812500000000 | 3385 | 869:1113, 869:226, 869:224, 869:1154, 869:100, 869:1100, 869:105 |
| 869:1173 | FHS | lo | 52381/500000 | 422499/4032928 | 3398 | 869:1113, 869:226, 869:224, 869:1154, 869:188, 869:1093, 869:192 |
| 869:1179 | ABE | lo | 351441/1000000 | 351441/1000000 | 3423 | 869:36, 869:1139, 869:92 |
| 869:1181 | ABF | lo | 11523/40000 | 11523/40000 | 3427 | 869:44, 869:1080, 869:100 |
| 869:1182 | ACE | lo | 35767/125000 | 35767/125000 | 3441 | 869:36, 869:1071, 869:128 |
| 869:1183 | ACF | lo | 159813/500000 | 159813/500000 | 3445 | 869:44, 869:1082, 869:1095 |
| 869:1185 | ACH | hi | 92019/125000 | 92019/125000 | 3450 | 869:246, 869:25, 869:1088 |
| 869:1186 | AEF | lo | 41761/100000 | 41761/100000 | 3457 | 869:44, 869:1083, 869:1108 |
| 869:1188 | AER | lo | 347549/1000000 | 347549/1000000 | 3470 | 869:70, 869:1077, 869:186 |
| 869:1189 | AFQ | lo | 12827/40000 | 12827/40000 | 3475 | 869:44, 869:1084, 869:1109 |
| 869:1190 | AFR | lo | 37717/100000 | 37717/100000 | 3476 | 869:44, 869:62, 869:1097 |
| 869:1192 | AFS | lo | 43123/125000 | 43123/125000 | 3477 | 869:44, 869:64, 869:1121 |
| 869:1194 | AHQ | lo | 4603/15625 | 4603/15625 | 3481 | 869:52, 869:1084, 869:1143 |
| 869:1195 | AHR | lo | 171269/500000 | 171269/500000 | 3482 | 869:52, 869:62, 869:1094 |
| 869:1197 | AQR | lo | 369117/1000000 | 369117/1000000 | 3490 | 869:70, 869:1146, 869:226 |
| 869:1199 | BCH | lo | 316647/1000000 | 316647/1000000 | 3502 | 869:108, 869:1120, 869:144 |
| 869:1200 | BCH | hi | 772679/1000000 | 193169631/250000000 | 3503 | 869:249, 869:81, 869:1088 |
| 869:1201 | BEF | lo | 85707/200000 | 85707/200000 | 3511 | 869:1072, 869:92, 869:1073 |
| 869:1202 | BEP | lo | 347549/1000000 | 347549/1000000 | 3518 | 869:1141, 869:92, 869:1122 |
| 869:1204 | BHR | lo | 220839/500000 | 220839/500000 | 3529 | 869:108, 869:1091, 869:1094 |
| 869:1205 | CEF | lo | 352663/1000000 | 352663/1000000 | 3533 | 869:138, 869:128, 869:1073 |
| 869:1206 | CEH | lo | 410113/1000000 | 410113/1000000 | 3537 | 869:1088, 869:128, 869:1078 |
| 869:1207 | CEP | lo | 298251/1000000 | 298251/1000000 | 3540 | 869:1135, 869:128, 869:1122 |
| 869:1208 | EFR | lo | 12061/40000 | 12061/40000 | 3562 | 869:186, 869:166, 869:1128 |
| 869:1210 | EPR | lo | 307631/1000000 | 307631/1000000 | 3571 | 869:186, 869:1130, 869:224 |
| 869:1211 | FQR | lo | 23561/62500 | 23561/62500 | 3582 | 869:1128, 869:1104, 869:226 |
| 869:1212 | HQR | lo | 107163/250000 | 107163/250000 | 3586 | 869:1129, 869:1153, 869:226 |
| 869:1213 | PQR | lo | 341191/1000000 | 341191/1000000 | 3587 | 869:224, 869:1154, 869:226 |
| 869:1214 | BER | lo | 34431/250000 | 6500607/47200000 | 56 | 869:1179, 869:130, 869:1188, 869:72, 869:17 |
| 869:1215 | ACQ | lo | 100153/1000000 | 3767399/37616250 | 77 | 869:1139, 869:138, 869:1189, 869:80, 869:1100 |
| 869:1216 | BFQ | lo | 168893/1000000 | 11302197/66919000 | 77 | 869:1139, 869:138, 869:1189, 869:80, 869:25 |
| 869:1217 | EFQ | lo | 166719/1000000 | 15738297/94400000 | 138 | 869:1186, 869:92, 869:36, 869:1201, 869:3 |
| 869:1218 | ABR | lo | 29853/100000 | 6647805147/22268414600 | 141 | 869:1179, 869:1190, 869:1181, 869:1188, 869:31 |
| 869:1220 | BFS | lo | 28007/125000 | 4365717336/19484862775 | 149 | 869:1181, 869:166, 869:1192, 869:1201, 869:31 |
| 869:1221 | AES | lo | 10099/62500 | 11162324071/69080625000 | 150 | 869:1144, 869:166, 869:1192, 869:1162, 869:1164 |
| 869:1222 | EHQ | lo | 661/3125 | 30247413/143000000 | 160 | 869:36, 869:1140, 869:1194, 869:92, 869:11 |
| 869:1224 | ABP | lo | 1021/10000 | 6882651/67410250 | 222 | 869:1181, 869:64, 869:1144, 869:44, 869:1156 |
| 869:1226 | ACP | lo | 2679/25000 | 57789921/539282000 | 357 | 869:1183, 869:64, 869:1145, 869:44, 869:1156 |
| 869:1227 | AEP | lo | 107209/1000000 | 71159787/663742315 | 421 | 869:1186, 869:62, 869:1188, 869:44, 869:49 |
| 869:1228 | APQ | lo | 96649/1000000 | 64150656/663742315 | 526 | 869:44, 869:1197, 869:1189, 869:62, 869:49 |
| 869:1229 | FRS | lo | 57773/500000 | 35067789/303495500 | 544 | 869:1190, 869:226, 869:70, 869:1211, 869:1099 |
| 869:1230 | HRS | lo | 118157/1000000 | 1024581/8671300 | 564 | 869:1195, 869:226, 869:70, 869:1212, 869:1099 |
| 869:1231 | CFH | lo | 176103/1000000 | 82665065889/469410848000 | 575 | 869:1199, 869:1089, 869:98, 869:1206, 869:89 |
| 869:1232 | CHQ | lo | 5281/50000 | 5297373/50155000 | 643 | 869:80, 869:1093, 869:1140, 869:138, 869:1100 |
| 869:1233 | EFH | lo | 160803/1000000 | 2582900625/16062417559 | 705 | 869:1201, 869:192, 869:98, 869:1208, 869:105 |
| 869:1234 | EHS | lo | 22151/200000 | 46440711153/419309086000 | 709 | 869:88, 869:166, 869:1162, 869:1233, 869:87 |
| 869:1235 | BPR | lo | 96099/500000 | 9505062533/49454400000 | 721 | 869:1202, 869:1097, 869:100, 869:1210, 869:1118 |
| 869:1236 | EHP | lo | 167811/1000000 | 615911069/3670260000 | 736 | 869:88, 869:1143, 869:108, 869:1222, 869:249 |
| 869:1237 | FHQ | lo | 39197/250000 | 5036806375/32124835118 | 777 | 869:98, 869:1211, 869:1216, 869:192, 869:105 |
| 869:1238 | HPR | lo | 2447/15625 | 14369863963/91756500000 | 790 | 869:108, 869:1212, 869:1204, 869:1143, 869:249 |
| 869:1239 | CFP | lo | 59763/500000 | 85320554853/713821888000 | 798 | 869:1205, 869:144, 869:1207, 869:1231, 869:125 |
| 869:1241 | FPR | lo | 191209/1000000 | 3056356481/15984375000 | 2084 | 869:1211, 869:1113 |
| 869:1243 | AQR | hi | 60699/100000 | 35812358946875171/59000000000000000 | 2102 | 869:3, 869:92, 869:36, 869:1139, 869:13, 869:39 |
| 869:1244 | BFQ | hi | 225693/500000 | 13315863887/29500000000 | 2106 | 869:3, 869:92, 869:36, 869:1139, 869:1181, 869:87 |
| 869:1248 | FQS | lo | 168471/1000000 | 31062/184375 | 2125 | 869:3, 869:92, 869:36, 869:1139, 869:1192, 869:1220, 869:166 |
| 869:1251 | EFP | lo | 54371/250000 | 1667723761/7668250000 | 2279 | 869:1185, 869:144, 869:52, 869:1226, 869:1186, 869:1205, 869:1233 |
| 869:1252 | FPQ | lo | 16381/125000 | 803928609/6134600000 | 2287 | 869:1185, 869:144, 869:52, 869:1226, 869:1189, 869:138, 869:1237 |
| 869:1256 | PQR | hi | 252057/500000 | 292393153021/580014000000 | 2464 | 869:245, 869:1252, 869:1228, 869:44, 869:1243, 869:203 |
| 869:1261 | EFP | hi | 494541/1000000 | 133348525817551/269641000000000 | 2528 | 869:1156, 869:1121, 869:64, 869:44, 869:31, 869:166 |
| 869:1263 | BCP | lo | 32663/250000 | 75004605903/574079000000 | 2558 | 869:246, 869:1143, 869:1228, 869:52, 869:0, 869:1199, 869:80 |
| 869:1264 | FPS | lo | 158999/1000000 | 570488377/3587993750 | 2579 | 869:246, 869:1143, 869:1228, 869:52, 869:1192, 869:1173, 869:1248 |
| 869:1265 | EPQ | lo | 11011/100000 | 14186499/128839000 | 2654 | 869:1126, 869:1152, 869:64, 869:52, 869:36, 869:1222, 869:184 |
| 869:1268 | EPS | lo | 30411/250000 | 18798354529/154535800000 | 2740 | 869:1200, 869:144, 869:108, 869:1263, 869:1162, 869:1159, 869:1234 |
| 869:1272 | CPQ | lo | 47573/500000 | 10406607/109375000 | 2930 | 869:99, 869:188, 869:108, 869:100, 869:80, 869:138, 869:1232 |
| 869:1276 | ABQ | lo | 41363/250000 | 429979641/2598812000 | 3065 | 869:123, 869:1217, 869:138, 869:128, 869:0, 869:1179, 869:1181 |
| 869:1277 | BHQ | lo | 355897/1000000 | 41435974989/116426777600 | 3077 | 869:123, 869:1217, 869:138, 869:128, 869:1199, 869:88, 869:98 |
| 869:1278 | BPQ | lo | 144449/1000000 | 21022203093/145533472000 | 3078 | 869:123, 869:1217, 869:138, 869:128, 869:1263, 869:1202, 869:100 |
| 869:1280 | ABS | lo | 304029/1000000 | 3225453039/10609000000 | 3179 | 869:165, 869:1229, 869:186, 869:166, 869:1179, 869:1181, 869:1218 |
| 869:1281 | ACS | lo | 30181/100000 | 19611665797/64980125000 | 3180 | 869:165, 869:1229, 869:186, 869:166, 869:1182, 869:1183, 869:240 |
| 869:1282 | AQS | lo | 22891/125000 | 95197869/519841000 | 3185 | 869:165, 869:1229, 869:186, 869:166, 869:36, 869:1189, 869:1197 |
| 869:1288 | HPS | lo | 121007/1000000 | 31452434403/259920500000 | 3208 | 869:165, 869:1229, 869:186, 869:166, 869:1236, 869:188, 869:1238 |
| 869:1289 | HQS | lo | 21759/100000 | 807944617/3713150000 | 3209 | 869:165, 869:1229, 869:186, 869:166, 869:1222, 869:1237, 869:1212 |
| 869:1290 | PQS | lo | 38799/250000 | 8067745951/51984100000 | 3212 | 869:165, 869:1229, 869:186, 869:166, 869:1265, 869:1252, 869:1213 |
| 869:1292 | AFS | hi | 539279/1000000 | 61874504069379/114735800000000 | 3299 | 869:203, 869:226, 869:1229, 869:1248, 869:245, 869:49 |
| 869:1295 | CES | lo | 67547/500000 | 38750403/286839500 | 3310 | 869:203, 869:226, 869:1229, 869:1248, 869:1205, 869:128, 869:130 |
| 869:1298 | BES | lo | 176909/1000000 | 3453331179/19520350000 | 3345 | 869:215, 869:226, 869:1230, 869:1289, 869:88, 869:92, 869:1214 |
| 869:1300 | BFS | hi | 276321/500000 | 2902026387181863/5251187500000000 | 3385 | 869:1256, 869:226, 869:224, 869:1290, 869:100, 869:1244, 869:105 |
| 869:1309 | FHS | lo | 104767/1000000 | 8802481/84019000 | 3398 | 869:1256, 869:226, 869:224, 869:1290, 869:188, 869:1237, 869:192 |
| 869:1315 | ABE | lo | 87863/250000 | 87863/250000 | 3423 | 869:36, 869:1276, 869:92 |
| 869:1317 | ABF | lo | 2881/10000 | 2881/10000 | 3427 | 869:44, 869:1224, 869:100 |
| 869:1318 | ACE | lo | 286153/1000000 | 286153/1000000 | 3441 | 869:36, 869:1215, 869:128 |
| 869:1319 | ACF | lo | 159843/500000 | 159843/500000 | 3445 | 869:44, 869:1226, 869:1239 |
| 869:1321 | ACH | hi | 147227/200000 | 147227/200000 | 3450 | 869:246, 869:25, 869:1232 |
| 869:1322 | AEF | lo | 417693/1000000 | 417693/1000000 | 3457 | 869:44, 869:1227, 869:1251 |
| 869:1324 | AER | lo | 5431/15625 | 5431/15625 | 3470 | 869:70, 869:1221, 869:186 |
| 869:1325 | AFQ | lo | 320697/1000000 | 320697/1000000 | 3475 | 869:44, 869:1228, 869:1252 |
| 869:1326 | AFR | lo | 377209/1000000 | 377209/1000000 | 3476 | 869:44, 869:62, 869:1241 |
| 869:1328 | AFS | lo | 344999/1000000 | 344999/1000000 | 3477 | 869:44, 869:64, 869:1264 |
| 869:1330 | AHQ | lo | 1473/5000 | 1473/5000 | 3481 | 869:52, 869:1228, 869:1143 |
| 869:1331 | AHR | lo | 21413/62500 | 21413/62500 | 3482 | 869:52, 869:62, 869:1238 |
| 869:1333 | AQR | lo | 46141/125000 | 46141/125000 | 3490 | 869:70, 869:1282, 869:226 |
| 869:1335 | BCH | lo | 79163/250000 | 79163/250000 | 3502 | 869:108, 869:1263, 869:144 |
| 869:1336 | BCH | hi | 386331/500000 | 193165381/250000000 | 3503 | 869:249, 869:81, 869:1232 |
| 869:1337 | BEF | lo | 107153/250000 | 107153/250000 | 3511 | 869:1216, 869:92, 869:1217 |
| 869:1338 | BEP | lo | 347559/1000000 | 347559/1000000 | 3518 | 869:1278, 869:92, 869:1265 |
| 869:1340 | BHR | lo | 220903/500000 | 220903/500000 | 3529 | 869:108, 869:1235, 869:1238 |
| 869:1341 | CEF | lo | 352719/1000000 | 352719/1000000 | 3533 | 869:138, 869:128, 869:1217 |
| 869:1342 | CEH | lo | 20507/50000 | 20507/50000 | 3537 | 869:1232, 869:128, 869:1222 |
| 869:1343 | CEP | lo | 18641/62500 | 18641/62500 | 3540 | 869:1272, 869:128, 869:1265 |
| 869:1344 | EFR | lo | 150773/500000 | 150773/500000 | 3562 | 869:186, 869:166, 869:1229 |
| 869:1346 | EPR | lo | 76911/250000 | 76911/250000 | 3571 | 869:186, 869:1268, 869:224 |
| 869:1347 | FQR | lo | 377017/1000000 | 377017/1000000 | 3582 | 869:1229, 869:1248, 869:226 |
| 869:1348 | HQR | lo | 428747/1000000 | 428747/1000000 | 3586 | 869:1230, 869:1289, 869:226 |
| 869:1349 | PQR | lo | 85299/250000 | 85299/250000 | 3587 | 869:224, 869:1290, 869:226 |
| 869:1350 | BER | lo | 137733/1000000 | 16252587/118000000 | 56 | 869:1315, 869:130, 869:1324, 869:72, 869:17 |
| 869:1351 | ACQ | lo | 50081/500000 | 15070619/150462000 | 77 | 869:1276, 869:138, 869:1325, 869:80, 869:1244 |
| 869:1352 | BFQ | lo | 33781/200000 | 45211857/267676000 | 77 | 869:1276, 869:138, 869:1325, 869:80, 869:25 |
| 869:1353 | EFQ | lo | 667/4000 | 15741273/94400000 | 138 | 869:1322, 869:92, 869:36, 869:1337, 869:3 |
| 869:1354 | ABR | lo | 298577/1000000 | 58177451967/194848627750 | 141 | 869:1315, 869:1326, 869:1317, 869:1324, 869:31 |
| 869:1356 | BFS | lo | 112051/500000 | 43666002847/194848627750 | 149 | 869:1317, 869:166, 869:1328, 869:1337, 869:31 |
| 869:1357 | AES | lo | 80801/500000 | 89308125091/552642000000 | 150 | 869:1280, 869:166, 869:1328, 869:1298, 869:1300 |
| 869:1358 | EHQ | lo | 8461/40000 | 60496221/286000000 | 160 | 869:36, 869:1277, 869:1330, 869:92, 869:11 |
| 869:1360 | ABP | lo | 51057/500000 | 55067997/539279000 | 222 | 869:1317, 869:64, 869:1280, 869:44, 869:1292 |
| 869:1362 | ACP | lo | 53589/500000 | 7224891/67409875 | 357 | 869:1319, 869:64, 869:1281, 869:44, 869:1292 |
| 869:1363 | AEP | lo | 53613/500000 | 71170761/663742315 | 421 | 869:1322, 869:62, 869:1324, 869:44, 869:49 |
| 869:1364 | APQ | lo | 48327/500000 | 12830745/132748463 | 526 | 869:44, 869:1333, 869:1325, 869:62, 869:49 |
| 869:1365 | FRS | lo | 57779/500000 | 11690503/101165000 | 544 | 869:1326, 869:226, 869:70, 869:1347, 869:1243 |
| 869:1366 | HRS | lo | 118183/1000000 | 4782401/40466000 | 564 | 869:1331, 869:226, 869:70, 869:1348, 869:1243 |
| 869:1367 | CFH | lo | 88061/500000 | 41336912889/234705424000 | 575 | 869:1335, 869:1233, 869:98, 869:1342, 869:89 |
| 869:1368 | CHQ | lo | 105629/1000000 | 353183/3343600 | 643 | 869:80, 869:1237, 869:1277, 869:138, 869:1244 |
| 869:1369 | EFH | lo | 8041/50000 | 2583171875/16062417559 | 705 | 869:1337, 869:192, 869:98, 869:1344, 869:105 |
| 869:1370 | EHS | lo | 2769/25000 | 4644277769/41930908600 | 709 | 869:88, 869:166, 869:1298, 869:1369, 869:87 |
| 869:1371 | BPR | lo | 192233/1000000 | 31689100277/164847000000 | 721 | 869:1338, 869:1241, 869:100, 869:1346, 869:1261 |
| 869:1373 | FHQ | lo | 39201/250000 | 2518664750/16062417559 | 777 | 869:98, 869:1347, 869:1352, 869:192, 869:105 |
| 869:1374 | HPR | lo | 156649/1000000 | 3920066023/25024500000 | 790 | 869:108, 869:1348, 869:1340, 869:1143, 869:249 |
| 869:1375 | CFP | lo | 59771/500000 | 820502983/6863672000 | 798 | 869:1341, 869:144, 869:1343, 869:1367, 869:125 |
| 869:1377 | FPR | lo | 19123/100000 | 32604807177/170500000000 | 2084 | 869:1347, 869:1256 |
| 869:1379 | AQR | hi | 606989/1000000 | 8953081445981753/14750000000000000 | 2102 | 869:3, 869:92, 869:36, 869:1276, 869:13, 869:39 |
| 869:1380 | BFQ | hi | 451381/1000000 | 26631437149/59000000000 | 2106 | 869:3, 869:92, 869:36, 869:1276, 869:1317, 869:87 |
| 869:1384 | FQS | lo | 168483/1000000 | 79524393/472000000 | 2125 | 869:3, 869:92, 869:36, 869:1276, 869:1328, 869:1356, 869:166 |
| 869:1387 | EFP | lo | 43503/200000 | 1601210267/7361350000 | 2279 | 869:1321, 869:144, 869:52, 869:1362, 869:1322, 869:1341, 869:1369 |
| 869:1388 | FPQ | lo | 26211/200000 | 12059345139/92016875000 | 2287 | 869:1321, 869:144, 869:52, 869:1362, 869:1325, 869:138, 869:1373 |
| 869:1392 | PQR | hi | 504113/1000000 | 16244033117/32223000000 | 2464 | 869:245, 869:1388, 869:1364, 869:44, 869:1379, 869:203 |
| 869:1397 | EFP | hi | 24727/50000 | 20514977957813/41483000000000 | 2528 | 869:1292, 869:1264, 869:64, 869:44, 869:31, 869:166 |
| 869:1399 | BCP | lo | 65327/500000 | 426171633/3261812500 | 2558 | 869:246, 869:1143, 869:1364, 869:52, 869:0, 869:1335, 869:80 |
| 869:1400 | FPS | lo | 159007/1000000 | 3651308449/22963160000 | 2579 | 869:246, 869:1143, 869:1364, 869:52, 869:1328, 869:1309, 869:1384 |
| 869:1401 | EPQ | lo | 110111/1000000 | 1773324/16104875 | 2654 | 869:1126, 869:1288, 869:64, 869:52, 869:36, 869:1358, 869:184 |
| 869:1405 | EPS | lo | 2433/20000 | 783291351/6438850000 | 2740 | 869:1336, 869:144, 869:108, 869:1399, 869:1298, 869:1295, 869:1370 |
| 869:1410 | CPQ | lo | 95147/1000000 | 6504234/68359375 | 2930 | 869:99, 869:188, 869:108, 869:100, 869:80, 869:138, 869:1368 |
| 869:1413 | ABQ | lo | 82729/500000 | 94061316/568490125 | 3065 | 869:123, 869:1353, 869:138, 869:128, 869:0, 869:1315, 869:1317 |
| 869:1414 | BHQ | lo | 3559/10000 | 25897734469/72766736000 | 3077 | 869:123, 869:1353, 869:138, 869:128, 869:1335, 869:88, 869:98 |
| 869:1415 | BPQ | lo | 144453/1000000 | 21022810771/145533472000 | 3078 | 869:123, 869:1353, 869:138, 869:128, 869:1399, 869:1338, 869:100 |
| 869:1417 | ABS | lo | 304057/1000000 | 39515345879/129960250000 | 3179 | 869:165, 869:1365, 869:186, 869:166, 869:1315, 869:1317, 869:1354 |
| 869:1418 | ACS | lo | 301831/1000000 | 22414940239/74263000000 | 3180 | 869:165, 869:1365, 869:186, 869:166, 869:1318, 869:1319, 869:240 |
| 869:1419 | AQS | lo | 91567/500000 | 6800067/37131500 | 3185 | 869:165, 869:1365, 869:186, 869:166, 869:36, 869:1325, 869:1333 |
| 869:1426 | HQS | lo | 217619/1000000 | 56563648241/259920500000 | 3209 | 869:165, 869:1365, 869:186, 869:166, 869:1358, 869:1373, 869:1348 |
| 869:1427 | PQS | lo | 155199/1000000 | 80678909351/519841000000 | 3212 | 869:165, 869:1365, 869:186, 869:166, 869:1401, 869:1388, 869:1349 |
| 869:1429 | AFS | hi | 539277/1000000 | 61874303121423/114735800000000 | 3299 | 869:203, 869:226, 869:1365, 869:1384, 869:245, 869:49 |
| 869:1432 | CES | lo | 135103/1000000 | 38753007/286839500 | 3310 | 869:203, 869:226, 869:1365, 869:1384, 869:1341, 869:128, 869:130 |
| 869:1435 | BES | lo | 176913/1000000 | 138136502727/780814000000 | 3345 | 869:215, 869:226, 869:1366, 869:1426, 869:88, 869:92, 869:1350 |
| 869:1437 | BFS | hi | 552641/1000000 | 17412081073338501/31507062500000000 | 3385 | 869:1392, 869:226, 869:224, 869:1427, 869:100, 869:1380, 869:105 |
| 869:1445 | FHS | lo | 10477/100000 | 52816281/504113000 | 3398 | 869:1392, 869:226, 869:224, 869:1427, 869:188, 869:1373, 869:192 |
| 869:1451 | ABE | lo | 175729/500000 | 175729/500000 | 3423 | 869:36, 869:1413, 869:92 |
| 869:1453 | ABF | lo | 144057/500000 | 144057/500000 | 3427 | 869:44, 869:1360, 869:100 |
| 869:1454 | ACE | lo | 143081/500000 | 143081/500000 | 3441 | 869:36, 869:1351, 869:128 |
| 869:1455 | ACF | lo | 7993/25000 | 7993/25000 | 3445 | 869:44, 869:1362, 869:1375 |
| 869:1457 | ACH | hi | 368063/500000 | 368063/500000 | 3450 | 869:246, 869:25, 869:1368 |
| 869:1458 | AEF | lo | 417741/1000000 | 417741/1000000 | 3457 | 869:44, 869:1363, 869:1387 |
| 869:1460 | AER | lo | 173801/500000 | 173801/500000 | 3470 | 869:70, 869:1357, 869:186 |
| 869:1461 | AFQ | lo | 320709/1000000 | 320709/1000000 | 3475 | 869:44, 869:1364, 869:1388 |
| 869:1462 | AFR | lo | 37723/100000 | 37723/100000 | 3476 | 869:44, 869:62, 869:1377 |
| 869:1464 | AFS | lo | 345007/1000000 | 345007/1000000 | 3477 | 869:44, 869:64, 869:1400 |
| 869:1466 | AHQ | lo | 58921/200000 | 58921/200000 | 3481 | 869:52, 869:1364, 869:1143 |
| 869:1467 | AHR | lo | 342649/1000000 | 342649/1000000 | 3482 | 869:52, 869:62, 869:1374 |
| 869:1469 | AQR | lo | 184567/500000 | 184567/500000 | 3490 | 869:70, 869:1419, 869:226 |
| 869:1471 | BCH | lo | 158327/500000 | 158327/500000 | 3502 | 869:108, 869:1399, 869:144 |
| 869:1472 | BCH | hi | 772653/1000000 | 193163131/250000000 | 3503 | 869:249, 869:81, 869:1368 |
| 869:1473 | BEF | lo | 85731/200000 | 85731/200000 | 3511 | 869:1352, 869:92, 869:1353 |
| 869:1474 | BEP | lo | 86891/250000 | 86891/250000 | 3518 | 869:1415, 869:92, 869:1401 |
| 869:1476 | BHR | lo | 220941/500000 | 220941/500000 | 3529 | 869:108, 869:1371, 869:1374 |
| 869:1477 | CEF | lo | 1411/4000 | 1411/4000 | 3533 | 869:138, 869:128, 869:1353 |
| 869:1478 | CEH | lo | 205077/500000 | 205077/500000 | 3537 | 869:1368, 869:128, 869:1358 |
| 869:1479 | CEP | lo | 149129/500000 | 149129/500000 | 3540 | 869:1410, 869:128, 869:1401 |
| 869:1480 | EFR | lo | 150779/500000 | 150779/500000 | 3562 | 869:186, 869:166, 869:1365 |
| 869:1482 | EPR | lo | 6153/20000 | 6153/20000 | 3571 | 869:186, 869:1405, 869:224 |
| 869:1483 | FQR | lo | 377041/1000000 | 377041/1000000 | 3582 | 869:1365, 869:1384, 869:226 |
| 869:1484 | HQR | lo | 214401/500000 | 214401/500000 | 3586 | 869:1366, 869:1426, 869:226 |
| 869:1485 | PQR | lo | 341199/1000000 | 341199/1000000 | 3587 | 869:224, 869:1427, 869:226 |
| 869:1486 | BER | lo | 68869/500000 | 3250629/23600000 | 56 | 869:1451, 869:130, 869:1460, 869:72, 869:17 |
| 869:1487 | ACQ | lo | 100167/1000000 | 45213531/451381000 | 77 | 869:1413, 869:138, 869:1461, 869:80, 869:1380 |
| 869:1488 | BFQ | lo | 168911/1000000 | 45213531/267676000 | 77 | 869:1413, 869:138, 869:1461, 869:80, 869:25 |
| 869:1489 | EFQ | lo | 10423/62500 | 19678707/118000000 | 138 | 869:1458, 869:92, 869:36, 869:1473, 869:3 |
| 869:1490 | ABR | lo | 149301/500000 | 29091187996/97424313875 | 141 | 869:1451, 869:1462, 869:1453, 869:1460, 869:31 |
| 869:1492 | BFS | lo | 224127/1000000 | 34936715517/155878902200 | 149 | 869:1453, 869:166, 869:1464, 869:1473, 869:31 |
| 869:1493 | AES | lo | 40403/250000 | 89313524391/552641000000 | 150 | 869:1417, 869:166, 869:1464, 869:1435, 869:1437 |
| 869:1494 | EHQ | lo | 211527/1000000 | 12099393/57200000 | 160 | 869:36, 869:1414, 869:1466, 869:92, 869:11 |
| 869:1496 | ABP | lo | 102121/1000000 | 18357301/179759000 | 222 | 869:1453, 869:64, 869:1417, 869:44, 869:1429 |
| 869:1498 | ACP | lo | 26797/250000 | 19268081/179759000 | 357 | 869:1455, 869:64, 869:1418, 869:44, 869:1429 |
| 869:1499 | AEP | lo | 21447/200000 | 71176899/663742315 | 421 | 869:1458, 869:62, 869:1460, 869:44, 869:49 |
| 869:1500 | APQ | lo | 96657/1000000 | 64155399/663742315 | 526 | 869:44, 869:1469, 869:1461, 869:62, 869:49 |
| 869:1501 | FRS | lo | 23113/200000 | 70147203/606989000 | 544 | 869:1462, 869:226, 869:70, 869:1483, 869:1379 |
| 869:1502 | HRS | lo | 59099/500000 | 71744943/606989000 | 564 | 869:1467, 869:226, 869:70, 869:1484, 869:1379 |
| 869:1503 | CFH | lo | 44033/250000 | 4133931557/23470542400 | 575 | 869:1471, 869:1369, 869:98, 869:1478, 869:89 |
| 869:1504 | CHQ | lo | 52817/500000 | 5960184/56422625 | 643 | 869:80, 869:1373, 869:1414, 869:138, 869:1380 |
| 869:1505 | EFH | lo | 16083/100000 | 5166649875/32124835118 | 705 | 869:1473, 869:192, 869:98, 869:1480, 869:105 |
| 869:1506 | EHS | lo | 110763/1000000 | 90182493/814192400 | 709 | 869:88, 869:166, 869:1435, 869:1505, 869:87 |
| 869:1507 | BPR | lo | 192251/1000000 | 2376902843/12363500000 | 721 | 869:1474, 869:1377, 869:100, 869:1482, 869:1397 |
| 869:1508 | FHQ | lo | 78407/500000 | 2518815875/16062417559 | 777 | 869:98, 869:1483, 869:1488, 869:192, 869:105 |
| 869:1509 | HPR | lo | 2448/15625 | 435629009/2780500000 | 790 | 869:108, 869:1484, 869:1476, 869:1143, 869:249 |
| 869:1510 | CFP | lo | 119551/1000000 | 10667316007/89227736000 | 798 | 869:1477, 869:144, 869:1479, 869:1503, 869:125 |
| 869:1512 | FPR | lo | 191243/1000000 | 195641673367/1023000000000 | 2084 | 869:1483, 869:1392 |
| 869:1514 | BFQ | hi | 225689/500000 | 26631274399/59000000000 | 2106 | 869:3, 869:92, 869:36, 869:1413, 869:1453, 869:87 |
| 869:1518 | FQS | lo | 16849/100000 | 39763731/236000000 | 2125 | 869:3, 869:92, 869:36, 869:1413, 869:1464, 869:1492, 869:166 |
| 869:1521 | EFP | lo | 217533/1000000 | 258278109/1187300000 | 2279 | 869:1457, 869:144, 869:52, 869:1498, 869:1458, 869:1477, 869:1505 |
| 869:1522 | FPQ | lo | 6553/50000 | 6029796877/46007875000 | 2287 | 869:1457, 869:144, 869:52, 869:1498, 869:1461, 869:138, 869:1508 |
| 869:1530 | EFP | hi | 494539/1000000 | 88897718220849/179759000000000 | 2528 | 869:1429, 869:1400, 869:64, 869:44, 869:31, 869:166 |
| 869:1532 | BCP | lo | 4083/31250 | 3409412349/26094500000 | 2558 | 869:246, 869:1143, 869:1500, 869:52, 869:0, 869:1471, 869:80 |
| 869:1533 | FPS | lo | 159011/1000000 | 91285330217/574079000000 | 2579 | 869:246, 869:1143, 869:1500, 869:52, 869:1464, 869:1445, 869:1518 |
| 869:1534 | EPS | lo | 60827/500000 | 31332311413/257551000000 | 2740 | 869:1472, 869:144, 869:108, 869:1532, 869:1435, 869:1432, 869:1506 |
| 869:1538 | CPQ | lo | 23787/250000 | 52034337/546875000 | 2930 | 869:99, 869:188, 869:108, 869:100, 869:80, 869:138, 869:1504 |
| 869:1541 | ABQ | lo | 165461/1000000 | 430002891/2598812000 | 3065 | 869:123, 869:1489, 869:138, 869:128, 869:0, 869:1451, 869:1453 |
| 869:1542 | BHQ | lo | 177951/500000 | 12948930439/36383368000 | 3077 | 869:123, 869:1489, 869:138, 869:128, 869:1471, 869:88, 869:98 |
| 869:1543 | BPQ | lo | 28891/200000 | 2627897481/18191684000 | 3078 | 869:123, 869:1489, 869:138, 869:128, 869:1532, 869:1474, 869:100 |
| 869:1545 | ABS | lo | 38009/125000 | 79034601617/259920500000 | 3179 | 869:165, 869:1501, 869:186, 869:166, 869:1451, 869:1453, 869:1490 |
| 869:1546 | ACS | lo | 301843/1000000 | 78455374121/259920500000 | 3180 | 869:165, 869:1501, 869:186, 869:166, 869:1454, 869:1455, 869:240 |
| 869:1547 | AQS | lo | 183137/1000000 | 23800653/129960250 | 3185 | 869:165, 869:1501, 869:186, 869:166, 869:36, 869:1461, 869:1469 |
| 869:1554 | HQS | lo | 54409/250000 | 113136138419/519841000000 | 3209 | 869:165, 869:1501, 869:186, 869:166, 869:1494, 869:1508, 869:1484 |
| 869:1555 | PQS | lo | 97/625 | 80679653351/519841000000 | 3212 | 869:165, 869:1501, 869:186, 869:166, 869:1401, 869:1522, 869:1485 |
| 869:1556 | AFS | hi | 134819/250000 | 30937092950891/57367900000000 | 3299 | 869:203, 869:226, 869:1501, 869:1518, 869:245, 869:49 |
| 869:1559 | CES | lo | 33777/250000 | 77508897/573679000 | 3310 | 869:203, 869:226, 869:1501, 869:1518, 869:1477, 869:128, 869:130 |
| 869:1562 | BES | lo | 35383/200000 | 17267293921/97601750000 | 3345 | 869:215, 869:226, 869:1502, 869:1554, 869:88, 869:92, 869:1486 |
| 869:1568 | FHS | lo | 26193/250000 | 52817211/504113000 | 3398 | 869:1392, 869:226, 869:224, 869:1555, 869:188, 869:1508, 869:192 |
| 869:1572 | ABE | lo | 351461/1000000 | 351461/1000000 | 3423 | 869:36, 869:1541, 869:92 |
| 869:1574 | ABF | lo | 288121/1000000 | 288121/1000000 | 3427 | 869:44, 869:1496, 869:100 |
| 869:1575 | ACE | lo | 286167/1000000 | 286167/1000000 | 3441 | 869:36, 869:1487, 869:128 |
| 869:1576 | ACF | lo | 319739/1000000 | 319739/1000000 | 3445 | 869:44, 869:1498, 869:1510 |
| 869:1578 | ACH | hi | 736121/1000000 | 736121/1000000 | 3450 | 869:246, 869:25, 869:1504 |
| 869:1579 | AEF | lo | 52221/125000 | 52221/125000 | 3457 | 869:44, 869:1499, 869:1521 |
| 869:1581 | AER | lo | 86903/250000 | 86903/250000 | 3470 | 869:70, 869:1493, 869:186 |
| 869:1582 | AFQ | lo | 320717/1000000 | 320717/1000000 | 3475 | 869:44, 869:1500, 869:1522 |
| 869:1583 | AFR | lo | 377243/1000000 | 377243/1000000 | 3476 | 869:44, 869:62, 869:1512 |
| 869:1585 | AFS | lo | 345011/1000000 | 345011/1000000 | 3477 | 869:44, 869:64, 869:1533 |
| 869:1587 | AHQ | lo | 18413/62500 | 18413/62500 | 3481 | 869:52, 869:1500, 869:1143 |
| 869:1588 | AHR | lo | 21417/62500 | 21417/62500 | 3482 | 869:52, 869:62, 869:1509 |
| 869:1590 | AQR | lo | 369137/1000000 | 369137/1000000 | 3490 | 869:70, 869:1547, 869:226 |
| 869:1592 | BCH | lo | 19791/62500 | 19791/62500 | 3502 | 869:108, 869:1532, 869:144 |
| 869:1593 | BCH | hi | 96581/125000 | 193161881/250000000 | 3503 | 869:249, 869:81, 869:1504 |
| 869:1594 | BEF | lo | 428679/1000000 | 428679/1000000 | 3511 | 869:1488, 869:92, 869:1489 |
| 869:1595 | BEP | lo | 173783/500000 | 173783/500000 | 3518 | 869:1543, 869:92, 869:1401 |
| 869:1597 | BHR | lo | 441923/1000000 | 441923/1000000 | 3529 | 869:108, 869:1507, 869:1509 |
| 869:1598 | CEF | lo | 5512/15625 | 5512/15625 | 3533 | 869:138, 869:128, 869:1489 |
| 869:1599 | CEH | lo | 410161/1000000 | 410161/1000000 | 3537 | 869:1504, 869:128, 869:1494 |
| 869:1600 | CEP | lo | 298259/1000000 | 298259/1000000 | 3540 | 869:1538, 869:128, 869:1401 |
| 869:1601 | EFR | lo | 60313/200000 | 60313/200000 | 3562 | 869:186, 869:166, 869:1501 |
| 869:1603 | EPR | lo | 153827/500000 | 153827/500000 | 3571 | 869:186, 869:1534, 869:224 |
| 869:1604 | FQR | lo | 75411/200000 | 75411/200000 | 3582 | 869:1501, 869:1518, 869:226 |
| 869:1605 | HQR | lo | 214417/500000 | 214417/500000 | 3586 | 869:1502, 869:1554, 869:226 |
| 869:1606 | PQR | lo | 853/2500 | 853/2500 | 3587 | 869:224, 869:1555, 869:226 |
| 869:1607 | BER | lo | 137741/1000000 | 65013789/472000000 | 56 | 869:1572, 869:130, 869:1581, 869:72, 869:17 |
| 869:1608 | ACQ | lo | 10017/100000 | 22607277/225689000 | 77 | 869:1541, 869:138, 869:1582, 869:80, 869:1514 |
| 869:1609 | BFQ | lo | 33783/200000 | 22607277/133838000 | 77 | 869:1541, 869:138, 869:1582, 869:80, 869:25 |
| 869:1610 | EFQ | lo | 83389/500000 | 78719571/472000000 | 138 | 869:1579, 869:92, 869:36, 869:1594, 869:3 |
| 869:1611 | ABR | lo | 298617/1000000 | 9309620763/31175780440 | 141 | 869:1572, 869:1583, 869:1574, 869:1581, 869:31 |
| 869:1613 | BFS | lo | 11207/50000 | 174694223469/779394511000 | 149 | 869:1574, 869:166, 869:1585, 869:1594, 869:31 |
| 869:1614 | AES | lo | 161617/1000000 | 17863263413/110528200000 | 150 | 869:1545, 869:166, 869:1585, 869:1562, 869:1437 |
| 869:1615 | EHQ | lo | 211529/1000000 | 6049743/28600000 | 160 | 869:36, 869:1542, 869:1587, 869:92, 869:11 |
| 869:1617 | ABP | lo | 817/8000 | 1776579/17396000 | 222 | 869:1574, 869:64, 869:1545, 869:44, 869:1556 |
| 869:1619 | ACP | lo | 107193/1000000 | 932373/8698000 | 357 | 869:1576, 869:64, 869:1546, 869:44, 869:1556 |
| 869:1620 | AEP | lo | 2681/25000 | 14236068/132748463 | 421 | 869:1579, 869:62, 869:1581, 869:44, 869:49 |
| 869:1621 | APQ | lo | 48329/500000 | 64156422/663742315 | 526 | 869:44, 869:1590, 869:1582, 869:62, 869:49 |
| 869:1622 | FRS | lo | 115569/1000000 | 35074857/303494500 | 544 | 869:1583, 869:226, 869:70, 869:1604, 869:1379 |
| 869:1623 | HRS | lo | 59103/500000 | 35875029/303494500 | 564 | 869:1588, 869:226, 869:70, 869:1605, 869:1379 |
| 869:1624 | CFH | lo | 88069/500000 | 4134067587/23470542400 | 575 | 869:1592, 869:1505, 869:98, 869:1599, 869:89 |
| 869:1625 | CHQ | lo | 105637/1000000 | 11920647/112844500 | 643 | 869:80, 869:1508, 869:1542, 869:138, 869:1514 |
| 869:1626 | EFH | lo | 32167/200000 | 2583412125/16062417559 | 705 | 869:1594, 869:192, 869:98, 869:1601, 869:105 |
| 869:1627 | EHS | lo | 27691/250000 | 3715566961/33544726880 | 709 | 869:88, 869:166, 869:1562, 869:1626, 869:87 |
| 869:1628 | BPR | lo | 96131/500000 | 47540693269/247269500000 | 721 | 869:1595, 869:1512, 869:100, 869:1603, 869:1530 |
| 869:1629 | FHQ | lo | 156819/1000000 | 2518905000/16062417559 | 777 | 869:98, 869:1604, 869:1609, 869:192, 869:105 |
| 869:1630 | HPR | lo | 78343/500000 | 86261822773/550539000000 | 790 | 869:108, 869:1605, 869:1597, 869:1143, 869:249 |
| 869:1631 | CFP | lo | 29889/250000 | 3282391067/27454688000 | 798 | 869:1598, 869:144, 869:1600, 869:1624, 869:125 |
| 869:1633 | FPR | lo | 153/800 | 13043262519/68200000000 | 2084 | 869:1604, 869:1392 |
| 869:1635 | BFQ | hi | 451377/1000000 | 416112391/921875000 | 2106 | 869:3, 869:92, 869:36, 869:1541, 869:1574, 869:87 |
| 869:1639 | FQS | lo | 168493/1000000 | 79529043/472000000 | 2125 | 869:3, 869:92, 869:36, 869:1541, 869:1585, 869:1613, 869:166 |
| 869:1642 | EFP | lo | 217543/1000000 | 32027711807/147224200000 | 2279 | 869:1578, 869:144, 869:52, 869:1619, 869:1579, 869:1598, 869:1626 |
| 869:1643 | FPQ | lo | 65531/500000 | 96477884067/736121000000 | 2287 | 869:1578, 869:144, 869:52, 869:1619, 869:1582, 869:138, 869:1629 |
| 869:1651 | EFP | hi | 247269/500000 | 2150744961839/4349000000000 | 2528 | 869:1556, 869:1533, 869:64, 869:44, 869:31, 869:166 |
| 869:1653 | BCP | lo | 130657/1000000 | 9375936081/71759875000 | 2558 | 869:246, 869:1143, 869:1621, 869:52, 869:0, 869:1592, 869:80 |
| 869:1654 | FPS | lo | 79507/500000 | 91286781277/574079000000 | 2579 | 869:246, 869:1143, 869:1621, 869:52, 869:1585, 869:1568, 869:1639 |
| 869:1655 | EPS | lo | 15207/125000 | 11749702259/96581000000 | 2740 | 869:1593, 869:144, 869:108, 869:1653, 869:1562, 869:1559, 869:1627 |
| 869:1659 | CPQ | lo | 95149/1000000 | 6504327/68359375 | 2930 | 869:99, 869:188, 869:108, 869:100, 869:80, 869:138, 869:1625 |
| 869:1661 | ABQ | lo | 82731/500000 | 6020098599/36383368000 | 3065 | 869:123, 869:1610, 869:138, 869:128, 869:0, 869:1572, 869:1574 |
| 869:1662 | BHQ | lo | 355903/1000000 | 647448741/1819168400 | 3077 | 869:123, 869:1610, 869:138, 869:128, 869:1592, 869:88, 869:98 |
| 869:1663 | BPQ | lo | 144457/1000000 | 8409344873/58213388800 | 3078 | 869:123, 869:1610, 869:138, 869:128, 869:1653, 869:1595, 869:100 |
| 869:1664 | ABS | lo | 3801/12500 | 158073377221/519841000000 | 3179 | 869:165, 869:1622, 869:186, 869:166, 869:1572, 869:1574, 869:1611 |
| 869:1665 | ACS | lo | 6037/20000 | 156914184447/519841000000 | 3180 | 869:165, 869:1622, 869:186, 869:166, 869:1575, 869:1576, 869:240 |
| 869:1666 | AQS | lo | 183139/1000000 | 19040727/103968200 | 3185 | 869:165, 869:1622, 869:186, 869:166, 869:36, 869:1582, 869:1590 |
| 869:1673 | HQS | lo | 43529/200000 | 113141120769/519841000000 | 3209 | 869:165, 869:1622, 869:186, 869:166, 869:1615, 869:1629, 869:1605 |
| 869:1674 | PQS | lo | 155201/1000000 | 80679932351/519841000000 | 3212 | 869:165, 869:1622, 869:186, 869:166, 869:1401, 869:1643, 869:1606 |
| 869:1675 | AFS | hi | 21571/40000 | 6187411891913/11473580000000 | 3299 | 869:203, 869:226, 869:1622, 869:1639, 869:245, 869:49 |
| 869:1678 | CES | lo | 135111/1000000 | 77510571/573679000 | 3310 | 869:203, 869:226, 869:1622, 869:1639, 869:1598, 869:128, 869:130 |
| 869:1681 | BES | lo | 176917/1000000 | 27627881389/156162800000 | 3345 | 869:215, 869:226, 869:1623, 869:1673, 869:88, 869:92, 869:1607 |
| 869:1683 | BFS | hi | 1727/3125 | 17412057823338501/31507062500000000 | 3385 | 869:1392, 869:226, 869:224, 869:1674, 869:100, 869:1635, 869:105 |
| 869:1687 | FHS | lo | 104773/1000000 | 13204419/126028250 | 3398 | 869:1392, 869:226, 869:224, 869:1674, 869:188, 869:1629, 869:192 |
| 869:1690 | ABE | lo | 175731/500000 | 175731/500000 | 3423 | 869:36, 869:1661, 869:92 |
| 869:1692 | ABF | lo | 461/1600 | 461/1600 | 3427 | 869:44, 869:1617, 869:100 |
| 869:1693 | ACE | lo | 28617/100000 | 28617/100000 | 3441 | 869:36, 869:1608, 869:128 |
| 869:1694 | ACF | lo | 319749/1000000 | 319749/1000000 | 3445 | 869:44, 869:1619, 869:1631 |
| 869:1696 | ACH | hi | 368059/500000 | 368059/500000 | 3450 | 869:246, 869:25, 869:1625 |
| 869:1697 | AEF | lo | 417783/1000000 | 417783/1000000 | 3457 | 869:44, 869:1620, 869:1642 |
| 869:1699 | AER | lo | 347617/1000000 | 347617/1000000 | 3470 | 869:70, 869:1614, 869:186 |
| 869:1700 | AFQ | lo | 4009/12500 | 4009/12500 | 3475 | 869:44, 869:1621, 869:1643 |
| 869:1701 | AFR | lo | 1509/4000 | 1509/4000 | 3476 | 869:44, 869:62, 869:1633 |
| 869:1703 | AFS | lo | 172507/500000 | 172507/500000 | 3477 | 869:44, 869:64, 869:1654 |
| 869:1705 | AHQ | lo | 294609/1000000 | 294609/1000000 | 3481 | 869:52, 869:1621, 869:1143 |
| 869:1706 | AHR | lo | 171343/500000 | 171343/500000 | 3482 | 869:52, 869:62, 869:1630 |
| 869:1708 | AQR | lo | 369139/1000000 | 369139/1000000 | 3490 | 869:70, 869:1666, 869:226 |
| 869:1710 | BCH | lo | 316657/1000000 | 316657/1000000 | 3502 | 869:108, 869:1653, 869:144 |
| 869:1711 | BCH | hi | 154529/200000 | 193161131/250000000 | 3503 | 869:249, 869:81, 869:1625 |
| 869:1712 | BEF | lo | 428693/1000000 | 428693/1000000 | 3511 | 869:1609, 869:92, 869:1610 |
| 869:1713 | BEP | lo | 21723/62500 | 21723/62500 | 3518 | 869:1663, 869:92, 869:1401 |
| 869:1715 | BHR | lo | 110487/250000 | 110487/250000 | 3529 | 869:108, 869:1628, 869:1630 |
| 869:1716 | CEF | lo | 176389/500000 | 176389/500000 | 3533 | 869:138, 869:128, 869:1610 |
| 869:1717 | CEH | lo | 205083/500000 | 205083/500000 | 3537 | 869:1625, 869:128, 869:1615 |
| 869:1718 | CEP | lo | 14913/50000 | 14913/50000 | 3540 | 869:1659, 869:128, 869:1401 |
| 869:1719 | EFR | lo | 301569/1000000 | 301569/1000000 | 3562 | 869:186, 869:166, 869:1622 |
| 869:1721 | EPR | lo | 38457/125000 | 38457/125000 | 3571 | 869:186, 869:1655, 869:224 |
| 869:1722 | FQR | lo | 188531/500000 | 188531/500000 | 3582 | 869:1622, 869:1639, 869:226 |
| 869:1723 | HQR | lo | 428851/1000000 | 428851/1000000 | 3586 | 869:1623, 869:1673, 869:226 |
| 869:1724 | PQR | lo | 341201/1000000 | 341201/1000000 | 3587 | 869:224, 869:1674, 869:226 |
| 869:1726 | ACQ | lo | 100171/1000000 | 7535821/75229500 | 77 | 869:1661, 869:138, 869:1700, 869:80, 869:1635 |
| 869:1727 | BFQ | lo | 42229/250000 | 22607463/133838000 | 77 | 869:1661, 869:138, 869:1700, 869:80, 869:25 |
| 869:1728 | EFQ | lo | 2606/15625 | 19680567/118000000 | 138 | 869:1697, 869:92, 869:36, 869:1712, 869:3 |
| 869:1729 | ABR | lo | 4666/15625 | 265995643/890736584 | 141 | 869:1690, 869:1701, 869:1692, 869:1699, 869:31 |
| 869:1731 | BFS | lo | 224149/1000000 | 87350355851/389697255500 | 149 | 869:1692, 869:166, 869:1703, 869:1712, 869:31 |
| 869:1732 | AES | lo | 161621/1000000 | 44659140919/276320000000 | 150 | 869:1664, 869:166, 869:1703, 869:1681, 869:1683 |
| 869:1733 | EHQ | lo | 21153/100000 | 3781101/17875000 | 160 | 869:36, 869:1662, 869:1705, 869:92, 869:11 |
| 869:1735 | ABP | lo | 102127/1000000 | 11015013/107855000 | 222 | 869:1692, 869:64, 869:1664, 869:44, 869:1675 |
| 869:1737 | ACP | lo | 107197/1000000 | 5255337/49025000 | 357 | 869:1694, 869:64, 869:1665, 869:44, 869:1675 |
| 869:1738 | AEP | lo | 107243/1000000 | 14236440/132748463 | 421 | 869:1697, 869:62, 869:1699, 869:44, 869:49 |
| 869:1739 | APQ | lo | 96659/1000000 | 64156887/663742315 | 526 | 869:44, 869:1708, 869:1700, 869:62, 869:49 |
| 869:1740 | FRS | lo | 28893/250000 | 8768877/75873625 | 544 | 869:1701, 869:226, 869:70, 869:1722, 869:1379 |
| 869:1741 | HRS | lo | 118211/1000000 | 71752941/606989000 | 564 | 869:1706, 869:226, 869:70, 869:1723, 869:1379 |
| 869:1742 | CFH | lo | 176141/1000000 | 33073168519/187764339200 | 575 | 869:1710, 869:1626, 869:98, 869:1717, 869:89 |
| 869:1743 | CHQ | lo | 105639/1000000 | 7947191/75229500 | 643 | 869:80, 869:1629, 869:1662, 869:138, 869:1635 |
| 869:1744 | EFH | lo | 80419/500000 | 2583462500/16062417559 | 705 | 869:1712, 869:192, 869:98, 869:1719, 869:105 |
| 869:1745 | EHS | lo | 22153/200000 | 6635001889/59901298000 | 709 | 869:88, 869:166, 869:1681, 869:1744, 869:87 |
| 869:1746 | BPR | lo | 192269/1000000 | 7923699/41211500 | 721 | 869:1713, 869:1633, 869:100, 869:1721, 869:1651 |
| 869:1747 | FHQ | lo | 78411/500000 | 2518947625/16062417559 | 777 | 869:98, 869:1722, 869:1727, 869:192, 869:105 |
| 869:1748 | HPR | lo | 156693/1000000 | 2396278543/15292750000 | 790 | 869:108, 869:1723, 869:1715, 869:1143, 869:249 |
| 869:1749 | CFP | lo | 119559/1000000 | 4267208433/35691094400 | 798 | 869:1716, 869:144, 869:1718, 869:1742, 869:125 |
| 869:1750 | FPR | lo | 191253/1000000 | 97826284997/511500000000 | 2084 | 869:1722, 869:1392 |
| 869:1751 | BFQ | hi | 28211/62500 | 6657786631/14750000000 | 2106 | 869:3, 869:92, 869:36, 869:1661, 869:1692, 869:87 |
| 869:1755 | FQS | lo | 10531/62500 | 79530159/472000000 | 2125 | 869:3, 869:92, 869:36, 869:1661, 869:1703, 869:1731, 869:166 |
| 869:1758 | EFP | lo | 217549/1000000 | 40035512971/184029500000 | 2279 | 869:1696, 869:144, 869:52, 869:1737, 869:1697, 869:1716, 869:1744 |
| 869:1759 | FPQ | lo | 131063/1000000 | 48239230467/368059000000 | 2287 | 869:1696, 869:144, 869:52, 869:1737, 869:1700, 869:138, 869:1747 |
| 869:1767 | FPS | lo | 19877/125000 | 4149443239/26094500000 | 2579 | 869:246, 869:1143, 869:1739, 869:52, 869:1703, 869:1687, 869:1755 |
| 869:1768 | EPS | lo | 121657/1000000 | 3759933497/30905800000 | 2740 | 869:1711, 869:144, 869:108, 869:1653, 869:1681, 869:1678, 869:1745 |
| 869:1773 | ABQ | lo | 165463/1000000 | 12040255323/72766736000 | 3065 | 869:123, 869:1728, 869:138, 869:128, 869:0, 869:1690, 869:1692 |
| 869:1774 | BHQ | lo | 5561/15625 | 2589799873/7276673600 | 3077 | 869:123, 869:1728, 869:138, 869:128, 869:1710, 869:88, 869:98 |
| 869:1776 | ABS | lo | 76021/250000 | 158075578889/519841000000 | 3179 | 869:165, 869:1740, 869:186, 869:166, 869:1690, 869:1692, 869:1729 |
| 869:1777 | ACS | lo | 150927/500000 | 15691611597/51984100000 | 3180 | 869:165, 869:1740, 869:186, 869:166, 869:1693, 869:1694, 869:240 |
| 869:1778 | AQS | lo | 9157/50000 | 952041/5198410 | 3185 | 869:165, 869:1740, 869:186, 869:166, 869:36, 869:1700, 869:1708 |
| 869:1785 | HQS | lo | 217651/1000000 | 56571957639/259920500000 | 3209 | 869:165, 869:1740, 869:186, 869:166, 869:1733, 869:1747, 869:1723 |
| 869:1788 | CES | lo | 135113/1000000 | 77511501/573679000 | 3310 | 869:203, 869:226, 869:1740, 869:1755, 869:1716, 869:128, 869:130 |
| 869:1794 | FHS | lo | 52387/500000 | 10563591/100822600 | 3398 | 869:1392, 869:226, 869:224, 869:1674, 869:188, 869:1747, 869:192 |
| 869:1796 | ABE | lo | 351463/1000000 | 351463/1000000 | 3423 | 869:36, 869:1773, 869:92 |
| 869:1798 | ABF | lo | 288127/1000000 | 288127/1000000 | 3427 | 869:44, 869:1735, 869:100 |
| 869:1799 | ACE | lo | 286171/1000000 | 286171/1000000 | 3441 | 869:36, 869:1726, 869:128 |
| 869:1800 | ACF | lo | 79939/250000 | 79939/250000 | 3445 | 869:44, 869:1737, 869:1749 |
| 869:1802 | ACH | hi | 184029/250000 | 184029/250000 | 3450 | 869:246, 869:25, 869:1743 |
| 869:1803 | AEF | lo | 6528/15625 | 6528/15625 | 3457 | 869:44, 869:1738, 869:1758 |
| 869:1805 | AER | lo | 347621/1000000 | 347621/1000000 | 3470 | 869:70, 869:1732, 869:186 |
| 869:1806 | AFQ | lo | 160361/500000 | 160361/500000 | 3475 | 869:44, 869:1739, 869:1759 |
| 869:1807 | AFR | lo | 377253/1000000 | 377253/1000000 | 3476 | 869:44, 869:62, 869:1750 |
| 869:1809 | AFS | lo | 43127/125000 | 43127/125000 | 3477 | 869:44, 869:64, 869:1767 |
| 869:1811 | AHR | lo | 342693/1000000 | 342693/1000000 | 3482 | 869:52, 869:62, 869:1748 |
| 869:1813 | AQR | lo | 18457/50000 | 18457/50000 | 3490 | 869:70, 869:1778, 869:226 |
| 869:1815 | BCH | hi | 772643/1000000 | 193160631/250000000 | 3503 | 869:249, 869:81, 869:1743 |
| 869:1816 | BEF | lo | 4287/10000 | 4287/10000 | 3511 | 869:1727, 869:92, 869:1728 |
| 869:1817 | BHR | lo | 220981/500000 | 220981/500000 | 3529 | 869:108, 869:1746, 869:1748 |
| 869:1818 | CEF | lo | 22049/62500 | 22049/62500 | 3533 | 869:138, 869:128, 869:1728 |
| 869:1819 | CEH | lo | 410169/1000000 | 410169/1000000 | 3537 | 869:1743, 869:128, 869:1733 |
| 869:1820 | EFR | lo | 75393/250000 | 75393/250000 | 3562 | 869:186, 869:166, 869:1740 |
| 869:1822 | EPR | lo | 307657/1000000 | 307657/1000000 | 3571 | 869:186, 869:1768, 869:224 |
| 869:1823 | FQR | lo | 94267/250000 | 94267/250000 | 3582 | 869:1740, 869:1755, 869:226 |
| 869:1824 | HQR | lo | 214431/500000 | 214431/500000 | 3586 | 869:1741, 869:1785, 869:226 |
| 869:1825 | BER | lo | 137743/1000000 | 16253703/118000000 | 56 | 869:1796, 869:130, 869:1805, 869:72, 869:17 |
| 869:1826 | BFQ | lo | 168917/1000000 | 9043041/53535200 | 77 | 869:1773, 869:138, 869:1806, 869:80, 869:25 |
| 869:1827 | EFQ | lo | 166787/1000000 | 19680939/118000000 | 138 | 869:1803, 869:92, 869:36, 869:1816, 869:3 |
| 869:1830 | BFS | lo | 224153/1000000 | 124788693/556710365 | 149 | 869:1798, 869:166, 869:1809, 869:1816, 869:31 |
| 869:1831 | AES | lo | 80811/500000 | 11164875959/69080000000 | 150 | 869:1776, 869:166, 869:1809, 869:1681, 869:1683 |
| 869:1833 | ABP | lo | 102129/1000000 | 55075623/539275000 | 222 | 869:1798, 869:64, 869:1776, 869:44, 869:1675 |
| 869:1835 | ACP | lo | 53599/500000 | 525543/4902500 | 357 | 869:1800, 869:64, 869:1777, 869:44, 869:1675 |
| 869:1836 | AEP | lo | 21449/200000 | 71183409/663742315 | 421 | 869:1803, 869:62, 869:1805, 869:44, 869:49 |
| 869:1837 | FRS | lo | 115573/1000000 | 70151853/606989000 | 544 | 869:1807, 869:226, 869:70, 869:1823, 869:1379 |
| 869:1838 | HRS | lo | 59107/500000 | 14350923/121397800 | 564 | 869:1811, 869:226, 869:70, 869:1824, 869:1379 |
| 869:1839 | CFH | lo | 176143/1000000 | 82683814783/469410848000 | 575 | 869:1710, 869:1744, 869:98, 869:1819, 869:89 |
| 869:1840 | CHQ | lo | 2641/25000 | 23841759/225688000 | 643 | 869:80, 869:1747, 869:1774, 869:138, 869:1751 |
| 869:1841 | EFH | lo | 4021/25000 | 2583493500/16062417559 | 705 | 869:1816, 869:192, 869:98, 869:1820, 869:105 |
| 869:1842 | BPR | lo | 192271/1000000 | 3961896821/20605750000 | 721 | 869:1713, 869:1750, 869:100, 869:1822, 869:1651 |
| 869:1843 | FHQ | lo | 19603/125000 | 5037968875/32124835118 | 777 | 869:98, 869:1823, 869:1826, 869:192, 869:105 |
| 869:1844 | HPR | lo | 78349/500000 | 43134259931/275269500000 | 790 | 869:108, 869:1824, 869:1817, 869:1143, 869:249 |
| 869:1845 | CFP | lo | 119561/1000000 | 328251243/2745468800 | 798 | 869:1818, 869:144, 869:1718, 869:1839, 869:125 |
| 869:1846 | FPR | lo | 23907/125000 | 48913920829/255750000000 | 2084 | 869:1823, 869:1392 |
| 869:1847 | BFQ | hi | 3611/8000 | 13315561637/29500000000 | 2106 | 869:3, 869:92, 869:36, 869:1773, 869:1798, 869:87 |
| 869:1850 | FQS | lo | 168497/1000000 | 79530717/472000000 | 2125 | 869:3, 869:92, 869:36, 869:1773, 869:1809, 869:1830, 869:166 |
| 869:1853 | EFP | lo | 13597/62500 | 333633803/1533575000 | 2279 | 869:1802, 869:144, 869:52, 869:1835, 869:1803, 869:1818, 869:1841 |
| 869:1854 | FPQ | lo | 16383/125000 | 6029921197/46007250000 | 2287 | 869:1802, 869:144, 869:52, 869:1835, 869:1806, 869:138, 869:1843 |
| 869:1861 | FPS | lo | 159017/1000000 | 518684263/3261812500 | 2579 | 869:246, 869:1143, 869:1739, 869:52, 869:1809, 869:1794, 869:1850 |
| 869:1862 | EPS | lo | 60829/500000 | 18799660379/154528600000 | 2740 | 869:1815, 869:144, 869:108, 869:1653, 869:1681, 869:1788, 869:1745 |
| 869:1866 | ABQ | lo | 20683/125000 | 6020145099/36383368000 | 3065 | 869:123, 869:1827, 869:138, 869:128, 869:0, 869:1796, 869:1798 |
| 869:1867 | BPQ | lo | 72229/500000 | 84093973643/582133888000 | 3078 | 869:123, 869:1827, 869:138, 869:128, 869:1653, 869:1713, 869:100 |
| 869:1869 | ACS | lo | 60371/200000 | 156917100811/519841000000 | 3180 | 869:165, 869:1837, 869:186, 869:166, 869:1799, 869:1800, 869:240 |
| 869:1870 | AQS | lo | 183141/1000000 | 95204379/519841000 | 3185 | 869:165, 869:1837, 869:186, 869:166, 869:36, 869:1806, 869:1813 |
| 869:1877 | HQS | lo | 108827/500000 | 56572807761/259920500000 | 3209 | 869:165, 869:1837, 869:186, 869:166, 869:1733, 869:1843, 869:1824 |
| 869:1882 | BES | lo | 88459/500000 | 69070122461/390407000000 | 3345 | 869:215, 869:226, 869:1838, 869:1877, 869:88, 869:92, 869:1825 |
| 869:1885 | ABE | lo | 43933/125000 | 43933/125000 | 3423 | 869:36, 869:1866, 869:92 |
| 869:1887 | ABF | lo | 288129/1000000 | 288129/1000000 | 3427 | 869:44, 869:1833, 869:100 |
| 869:1888 | ACF | lo | 319759/1000000 | 319759/1000000 | 3445 | 869:44, 869:1835, 869:1845 |
| 869:1890 | ACH | hi | 147223/200000 | 147223/200000 | 3450 | 869:246, 869:25, 869:1840 |
| 869:1891 | AEF | lo | 417797/1000000 | 417797/1000000 | 3457 | 869:44, 869:1836, 869:1853 |
| 869:1893 | AER | lo | 173811/500000 | 173811/500000 | 3470 | 869:70, 869:1831, 869:186 |
| 869:1894 | AFQ | lo | 320723/1000000 | 320723/1000000 | 3475 | 869:44, 869:1739, 869:1854 |
| 869:1895 | AFR | lo | 47157/125000 | 47157/125000 | 3476 | 869:44, 869:62, 869:1846 |
| 869:1897 | AFS | lo | 345017/1000000 | 345017/1000000 | 3477 | 869:44, 869:64, 869:1861 |
| 869:1898 | AHR | lo | 171349/500000 | 171349/500000 | 3482 | 869:52, 869:62, 869:1844 |
| 869:1900 | AQR | lo | 369141/1000000 | 369141/1000000 | 3490 | 869:70, 869:1870, 869:226 |
| 869:1902 | BCH | hi | 386321/500000 | 193160381/250000000 | 3503 | 869:249, 869:81, 869:1840 |
| 869:1903 | BEF | lo | 13397/31250 | 13397/31250 | 3511 | 869:1826, 869:92, 869:1827 |
| 869:1904 | BEP | lo | 347569/1000000 | 347569/1000000 | 3518 | 869:1867, 869:92, 869:1401 |
| 869:1906 | BHR | lo | 441969/1000000 | 441969/1000000 | 3529 | 869:108, 869:1842, 869:1844 |
| 869:1907 | CEF | lo | 352787/1000000 | 352787/1000000 | 3533 | 869:138, 869:128, 869:1827 |
| 869:1909 | EFR | lo | 301573/1000000 | 301573/1000000 | 3562 | 869:186, 869:166, 869:1837 |
| 869:1911 | EPR | lo | 153829/500000 | 153829/500000 | 3571 | 869:186, 869:1862, 869:224 |
| 869:1912 | FQR | lo | 37707/100000 | 37707/100000 | 3582 | 869:1837, 869:1850, 869:226 |
| 869:1913 | HQR | lo | 107217/250000 | 107217/250000 | 3586 | 869:1838, 869:1877, 869:226 |
| 869:1914 | ACQ | lo | 25043/250000 | 45215391/451375000 | 77 | 869:1866, 869:138, 869:1894, 869:80, 869:1847 |
| 869:1915 | BFQ | lo | 84459/500000 | 45215391/267676000 | 77 | 869:1866, 869:138, 869:1894, 869:80, 869:25 |
| 869:1916 | EFQ | lo | 166789/1000000 | 78724593/472000000 | 138 | 869:1891, 869:92, 869:36, 869:1903, 869:3 |
| 869:1917 | ABR | lo | 298631/1000000 | 116375941011/389697255500 | 141 | 869:1885, 869:1895, 869:1887, 869:1893, 869:31 |
| 869:1919 | BFS | lo | 56039/250000 | 21838270621/97424313875 | 149 | 869:1887, 869:166, 869:1897, 869:1903, 869:31 |
| 869:1922 | ACP | lo | 107199/1000000 | 28905051/269637500 | 357 | 869:1888, 869:64, 869:1869, 869:44, 869:1675 |
| 869:1923 | AEP | lo | 53623/500000 | 71183967/663742315 | 421 | 869:1891, 869:62, 869:1893, 869:44, 869:49 |
| 869:1924 | APQ | lo | 4833/50000 | 64157352/663742315 | 526 | 869:44, 869:1900, 869:1894, 869:62, 869:49 |
| 869:1925 | FRS | lo | 57787/500000 | 35076159/303494500 | 544 | 869:1895, 869:226, 869:70, 869:1912, 869:1379 |
| 869:1926 | HRS | lo | 23643/200000 | 35877819/303494500 | 564 | 869:1898, 869:226, 869:70, 869:1913, 869:1379 |
| 869:1928 | EFH | lo | 160841/1000000 | 5167014125/32124835118 | 705 | 869:1903, 869:192, 869:98, 869:1909, 869:105 |
| 869:1929 | EHS | lo | 55383/500000 | 46445359019/419309086000 | 709 | 869:88, 869:166, 869:1882, 869:1928, 869:87 |
| 869:1930 | BPR | lo | 96137/500000 | 3961952111/20605750000 | 721 | 869:1904, 869:1846, 869:100, 869:1911, 869:1651 |
| 869:1931 | FHQ | lo | 6273/40000 | 2518998000/16062417559 | 777 | 869:98, 869:1912, 869:1915, 869:192, 869:105 |
| 869:1932 | HPR | lo | 1567/10000 | 2614236743/16683000000 | 790 | 869:108, 869:1913, 869:1906, 869:1143, 869:249 |
| 869:1934 | AQR | hi | 151747/250000 | 4476536200770673/7375000000000000 | 2102 | 869:3, 869:92, 869:36, 869:1866, 869:13, 869:39 |
| 869:1936 | FQS | lo | 84249/500000 | 79531089/472000000 | 2125 | 869:3, 869:92, 869:36, 869:1866, 869:1897, 869:1919, 869:166 |
| 869:1939 | EFP | lo | 108777/500000 | 32029071743/147223000000 | 2279 | 869:1890, 869:144, 869:52, 869:1922, 869:1891, 869:1907, 869:1928 |
| 869:1942 | PQR | hi | 31507/62500 | 24366000491/48334500000 | 2464 | 869:245, 869:1854, 869:1924, 869:44, 869:1934, 869:203 |
| 869:1946 | BCP | lo | 65329/500000 | 3750401631/28703950000 | 2558 | 869:246, 869:1143, 869:1924, 869:52, 869:0, 869:1710, 869:80 |
| 869:1951 | EPS | lo | 121659/1000000 | 23499717693/193160500000 | 2740 | 869:1902, 869:144, 869:108, 869:1946, 869:1882, 869:1788, 869:1929 |
| 869:1953 | ABS | lo | 38011/125000 | 158077832779/519841000000 | 3179 | 869:165, 869:1925, 869:186, 869:166, 869:1885, 869:1887, 869:1917 |
| 869:1954 | ACS | lo | 9433/31250 | 156917379811/519841000000 | 3180 | 869:165, 869:1925, 869:186, 869:166, 869:1799, 869:1888, 869:240 |
| 869:1959 | HQS | lo | 27207/125000 | 22629307899/103968200000 | 3209 | 869:165, 869:1925, 869:186, 869:166, 869:1733, 869:1931, 869:1913 |
| 869:1972 | ACE | lo | 71543/250000 | 71543/250000 | 3441 | 869:36, 869:1914, 869:128 |
| 869:1973 | ACF | lo | 3997/12500 | 3997/12500 | 3445 | 869:44, 869:1922, 869:1845 |
| 869:1975 | AEF | lo | 2089/5000 | 2089/5000 | 3457 | 869:44, 869:1923, 869:1939 |
| 869:1978 | AFQ | lo | 80181/250000 | 80181/250000 | 3475 | 869:44, 869:1924, 869:1854 |
| 869:1980 | AHQ | lo | 294611/1000000 | 294611/1000000 | 3481 | 869:52, 869:1924, 869:1143 |
| 869:1981 | AHR | lo | 3427/10000 | 3427/10000 | 3482 | 869:52, 869:62, 869:1932 |
| 869:1982 | BCH | lo | 158329/500000 | 158329/500000 | 3502 | 869:108, 869:1946, 869:144 |
| 869:1983 | BEF | lo | 428707/1000000 | 428707/1000000 | 3511 | 869:1915, 869:92, 869:1916 |
| 869:1984 | BHR | lo | 220987/500000 | 220987/500000 | 3529 | 869:108, 869:1930, 869:1932 |
| 869:1985 | CEF | lo | 352789/1000000 | 352789/1000000 | 3533 | 869:138, 869:128, 869:1916 |
| 869:1986 | EFR | lo | 150787/500000 | 150787/500000 | 3562 | 869:186, 869:166, 869:1925 |
| 869:1988 | EPR | lo | 307659/1000000 | 307659/1000000 | 3571 | 869:186, 869:1951, 869:224 |
| 869:1989 | FQR | lo | 23567/62500 | 23567/62500 | 3582 | 869:1925, 869:1936, 869:226 |
| 869:1990 | HQR | lo | 428871/1000000 | 428871/1000000 | 3586 | 869:1926, 869:1959, 869:226 |
| 869:1991 | EFQ | lo | 16679/100000 | 78725151/472000000 | 138 | 869:1975, 869:92, 869:36, 869:1983, 869:3 |
| 869:1995 | AES | lo | 20203/125000 | 44659950803/276320000000 | 150 | 869:1953, 869:166, 869:1897, 869:1882, 869:1683 |
| 869:1996 | EHQ | lo | 211531/1000000 | 12099579/57200000 | 160 | 869:36, 869:1774, 869:1980, 869:92, 869:11 |
| 869:1997 | ABP | lo | 10213/100000 | 55076181/539275000 | 222 | 869:1887, 869:64, 869:1953, 869:44, 869:1675 |
| 869:1999 | ACP | lo | 67/625 | 7226286/67409375 | 357 | 869:1973, 869:64, 869:1954, 869:44, 869:1675 |
| 869:2000 | HRS | lo | 14777/125000 | 71756103/606988000 | 564 | 869:1981, 869:226, 869:70, 869:1990, 869:1934 |
| 869:2002 | CHQ | lo | 105641/1000000 | 47683797/451375000 | 643 | 869:80, 869:1931, 869:1774, 869:138, 869:1847 |
| 869:2003 | EFH | lo | 80421/500000 | 5167037375/32124835118 | 705 | 869:1983, 869:192, 869:98, 869:1986, 869:105 |
| 869:2004 | EHP | lo | 167813/1000000 | 205305963/1223420000 | 736 | 869:88, 869:1143, 869:108, 869:1996, 869:249 |
| 869:2005 | FHQ | lo | 78413/500000 | 2519009625/16062417559 | 777 | 869:98, 869:1989, 869:1915, 869:192, 869:105 |
| 869:2006 | HPR | lo | 78351/500000 | 43135308137/275269500000 | 790 | 869:108, 869:1990, 869:1984, 869:1143, 869:249 |
| 869:2009 | FPR | lo | 191259/1000000 | 1528579187/7992187500 | 2084 | 869:1989, 869:1942 |
| 869:2011 | EFP | lo | 54389/250000 | 16014637383/73611500000 | 2279 | 869:1890, 869:144, 869:52, 869:1999, 869:1975, 869:1985, 869:2003 |
| 869:2012 | FPQ | lo | 26213/200000 | 482395871/3680575000 | 2287 | 869:1890, 869:144, 869:52, 869:1999, 869:1978, 869:138, 869:2005 |
| 869:2016 | BHQ | lo | 71181/200000 | 51796095643/145533472000 | 3077 | 869:123, 869:1991, 869:138, 869:128, 869:1982, 869:88, 869:98 |
| 869:2022 | HQS | lo | 217657/1000000 | 14143405667/64980125000 | 3209 | 869:165, 869:1925, 869:186, 869:166, 869:1996, 869:2005, 869:1990 |
| 869:2025 | ABF | lo | 28813/100000 | 28813/100000 | 3427 | 869:44, 869:1997, 869:100 |
| 869:2028 | ACH | hi | 368057/500000 | 368057/500000 | 3450 | 869:246, 869:25, 869:2002 |
| 869:2029 | AEF | lo | 208901/500000 | 208901/500000 | 3457 | 869:44, 869:1923, 869:2011 |
| 869:2031 | AER | lo | 43453/125000 | 43453/125000 | 3470 | 869:70, 869:1995, 869:186 |
| 869:2032 | AFQ | lo | 12829/40000 | 12829/40000 | 3475 | 869:44, 869:1924, 869:2012 |
| 869:2033 | AFR | lo | 377259/1000000 | 377259/1000000 | 3476 | 869:44, 869:62, 869:2009 |
| 869:2034 | AHR | lo | 171351/500000 | 171351/500000 | 3482 | 869:52, 869:62, 869:2006 |
| 869:2036 | BCH | hi | 772641/1000000 | 193160131/250000000 | 3503 | 869:249, 869:81, 869:2002 |
| 869:2037 | BEF | lo | 107177/250000 | 107177/250000 | 3511 | 869:1915, 869:92, 869:1991 |
| 869:2039 | CEF | lo | 35279/100000 | 35279/100000 | 3533 | 869:138, 869:128, 869:1991 |
| 869:2040 | CEH | lo | 102543/250000 | 102543/250000 | 3537 | 869:2002, 869:128, 869:1996 |
| 869:2042 | HQR | lo | 428873/1000000 | 428873/1000000 | 3586 | 869:2000, 869:2022, 869:226 |
| 869:2043 | BER | lo | 8609/62500 | 4063449/29500000 | 56 | 869:1885, 869:130, 869:2031, 869:72, 869:17 |
| 869:2044 | BFQ | lo | 168919/1000000 | 45215577/267676000 | 77 | 869:1866, 869:138, 869:2032, 869:80, 869:25 |
| 869:2045 | EFQ | lo | 166791/1000000 | 7872543/47200000 | 138 | 869:2029, 869:92, 869:36, 869:2037, 869:3 |
| 869:2049 | AEP | lo | 107247/1000000 | 71184618/663742315 | 421 | 869:2029, 869:62, 869:2031, 869:44, 869:49 |
| 869:2050 | FRS | lo | 4623/40000 | 70152783/606988000 | 544 | 869:2033, 869:226, 869:70, 869:1989, 869:1934 |
| 869:2051 | HRS | lo | 118217/1000000 | 2870259/24279520 | 564 | 869:2034, 869:226, 869:70, 869:2042, 869:1934 |
| 869:2052 | CFH | lo | 88073/500000 | 41342473509/234705424000 | 575 | 869:1982, 869:2003, 869:98, 869:2040, 869:89 |
| 869:2053 | BPR | lo | 48069/250000 | 31695995457/164846000000 | 721 | 869:1904, 869:2009, 869:100, 869:1988, 869:1651 |
| 869:2054 | CFP | lo | 119563/1000000 | 2133669399/17845547200 | 798 | 869:2039, 869:144, 869:1718, 869:2052, 869:125 |
| 869:2059 | AQS | lo | 91571/500000 | 95204751/519841000 | 3185 | 869:165, 869:2050, 869:186, 869:166, 869:36, 869:2032, 869:1900 |
| 869:2065 | AFS | hi | 269637/500000 | 1933563076411/3585493750000 | 3299 | 869:203, 869:226, 869:2050, 869:1936, 869:245, 869:49 |
| 869:2068 | ACF | lo | 319763/1000000 | 319763/1000000 | 3445 | 869:44, 869:1999, 869:2054 |
| 869:2069 | AEF | lo | 417803/1000000 | 417803/1000000 | 3457 | 869:44, 869:2049, 869:2011 |
| 869:2073 | AQR | lo | 184571/500000 | 184571/500000 | 3490 | 869:70, 869:2059, 869:226 |
| 869:2074 | BEF | lo | 42871/100000 | 42871/100000 | 3511 | 869:2044, 869:92, 869:2045 |
| 869:2075 | BHR | lo | 220989/500000 | 220989/500000 | 3529 | 869:108, 869:2053, 869:2006 |
| 869:2076 | CEF | lo | 352791/1000000 | 352791/1000000 | 3533 | 869:138, 869:128, 869:2045 |
| 869:2077 | EFR | lo | 12063/40000 | 12063/40000 | 3562 | 869:186, 869:166, 869:2050 |
| 869:2079 | FQR | lo | 377073/1000000 | 377073/1000000 | 3582 | 869:2050, 869:1936, 869:226 |
| 869:2080 | HQR | lo | 214437/500000 | 214437/500000 | 3586 | 869:2051, 869:2022, 869:226 |
| 869:2084 | EFH | lo | 160843/1000000 | 5167060625/32124835118 | 705 | 869:2074, 869:192, 869:98, 869:2077, 869:105 |
| 869:2085 | HPR | lo | 156703/1000000 | 14378552513/91756500000 | 790 | 869:108, 869:2080, 869:2075, 869:1143, 869:249 |
| 869:2086 | EFP | lo | 217557/1000000 | 80073614051/368057000000 | 2279 | 869:2028, 869:144, 869:52, 869:1999, 869:2069, 869:2076, 869:2084 |
| 869:2093 | HQS | lo | 108829/500000 | 16163939863/74263000000 | 3209 | 869:165, 869:2050, 869:186, 869:166, 869:1996, 869:2005, 869:2080 |
| 869:2095 | CES | lo | 27023/200000 | 7751271/57367900 | 3310 | 869:203, 869:226, 869:2050, 869:1936, 869:2076, 869:128, 869:130 |
| 869:2097 | AEF | lo | 104451/250000 | 104451/250000 | 3457 | 869:44, 869:2049, 869:2086 |
| 869:2098 | AHR | lo | 342703/1000000 | 342703/1000000 | 3482 | 869:52, 869:62, 869:2085 |
| 869:2099 | BHR | lo | 441979/1000000 | 441979/1000000 | 3529 | 869:108, 869:2053, 869:2085 |
| 869:2100 | HQR | lo | 3431/8000 | 3431/8000 | 3586 | 869:2051, 869:2093, 869:226 |
