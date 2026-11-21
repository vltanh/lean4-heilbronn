# BITT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 350

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS+/HEQ-/CFQ-/PQR+/AEQ- |
| Packet | forest:root/AFP-/APR+/ARS+/HEQ-/CFQ-/PQR+/AEQ- |
| Index | 1 |
| Context | 138 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 349 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| b | 103767/1000000 | 306519/500000 | 103767/1000000 | 306519/500000 |
| c | 135501/250000 | 1/1 | 135501/250000 | 1/1 |
| e | 279/1000 | 59/125 | 279/1000 | 59/125 |
| f | 279/1000 | 306519/500000 | 279/1000 | 306519/500000 |
| h | 135501/250000 | 1/1 | 135501/250000 | 1/1 |
| p | 22907/200000 | 690163/1000000 | 22907/200000 | 136503/200000 |
| q | 216837/1000000 | 709323/1000000 | 216837/1000000 | 694771/1000000 |
| u | 21413/40000 | 830823/1000000 | 21413/40000 | 830823/1000000 |
| v | 103767/1000000 | 379/1000 | 103767/1000000 | 379/1000 |
| r | 332981/500000 | 1/1 | 332981/500000 | 1/1 |
| w | 332981/500000 | 1/1 | 332981/500000 | 1/1 |
| j | 268487/500000 | 871013/1000000 | 268487/500000 | 871013/1000000 |
| k | 268487/500000 | 871013/1000000 | 268487/500000 | 871013/1000000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 75 | A_CEP | bitt ["actual-area","CEP",["Q"]] | `1/1 * q + -1/1 * c * q + -1/1 * e * p + 1/1 * c * e + -279/1000` |
| 813 | AREA_lo_FPR | bitt ["earlier-area",{"direction":"lo","ref":"349:996","triangle":"FPR","value":"284631/1000000"}] | `1/1 * p * w + -1/1 * p + -1/1 * f * w + -1/1 * q * r + 1/1 * f * q + 1/1 * r + -284631/1000000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 813 | q | 216837/1000000 | 709323/1000000 | 216837/1000000 | 134424972557/193481000000 | 216837/1000000 | 694771/1000000 | `(-193481/500000, 15726855967/100000000000); (-13231/250000, -32594027443/500000000000); (-193481/500000, -17506533097/500000000000); (-13231/250000, -1029878723/4000000000); (-721/1000, 49130655967/100000000000); (-193481/500000, 134424972557/500000000000); (-721/1000, 149512466903/500000000000); (-193481/500000, 306273277/4000000000); (-193481/500000, 102331/1000000); (-13231/250000, -231707/1000000); (-721/1000, 436369/1000000)` |
| 1 | 75 | p | 22907/200000 | 690163/1000000 | 22907/200000 | 47605363729/69750000000 | 22907/200000 | 136503/200000 | `(-279/1000, -7117601337/250000000000); (-279/1000, 0/1); (-59/125, 19034091663/250000000000); (-59/125, 193/1000); (-279/1000, 47605363729/250000000000); (-59/125, 73757056729/250000000000)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 350:23 | ACP | hi | 312423/500000 | earlier 349:473; ACP; hi; 312423/500000 |
| 350:25 | ACQ | hi | 143/500 | earlier 349:222; ACQ; hi; 143/500 |
| 350:26 | ACR | lo | 70901/200000 | earlier 349:472; ACR; lo; 70901/200000 |
| 350:37 | AEQ | hi | 22909/100000 | earlier 349:353; AEQ; hi; 22909/100000 |
| 350:38 | AER | lo | 351611/1000000 | earlier 349:1058; AER; lo; 351611/1000000 |
| 350:40 | AES | lo | 19703/62500 | earlier 349:1101; AES; lo; 19703/62500 |
| 350:45 | AFP | hi | 256451/500000 | earlier 349:1135; AFP; hi; 256451/500000 |
| 350:46 | AFQ | lo | 60107/200000 | earlier 349:649; AFQ; lo; 60107/200000 |
| 350:47 | AFQ | hi | 720437/1000000 | earlier 349:1134; AFQ; hi; 720437/1000000 |
| 350:48 | AFR | lo | 310549/1000000 | earlier 349:1061; AFR; lo; 310549/1000000 |
| 350:50 | AFS | lo | 124549/1000000 | earlier 349:1031; AFS; lo; 124549/1000000 |
| 350:53 | AHP | hi | 106729/200000 | earlier 349:335; AHP; hi; 106729/200000 |
| 350:55 | AHQ | hi | 143929/200000 | earlier 349:271; AHQ; hi; 143929/200000 |
| 350:56 | AHR | lo | 78319/500000 | earlier 349:1139; AHR; lo; 78319/500000 |
| 350:58 | AHS | lo | 6883/50000 | earlier 349:1118; AHS; lo; 6883/50000 |
| 350:63 | APR | hi | 7441/15625 | earlier 349:1071; APR; hi; 7441/15625 |
| 350:66 | AQR | lo | 70443/250000 | earlier 349:993; AQR; lo; 70443/250000 |
| 350:68 | AQS | lo | 70837/250000 | earlier 349:951; AQS; lo; 70837/250000 |
| 350:78 | BCP | lo | 120603/1000000 | earlier 349:626; BCP; lo; 120603/1000000 |
| 350:90 | BEP | lo | 16363/100000 | earlier 349:269; BEP; lo; 16363/100000 |
| 350:110 | BHS | lo | 72347/500000 | earlier 349:459; BHS; lo; 72347/500000 |
| 350:116 | CEF | lo | 326271/1000000 | earlier 349:1063; CEF; lo; 326271/1000000 |
| 350:118 | CEH | lo | 61393/200000 | earlier 349:408; CEH; lo; 61393/200000 |
| 350:121 | CEP | hi | 198511/500000 | earlier 349:309; CEP; hi; 198511/500000 |
| 350:126 | CES | lo | 155931/1000000 | earlier 349:1052; CES; lo; 155931/1000000 |
| 350:137 | CFS | hi | 490601/1000000 | earlier 349:388; CFS; hi; 490601/1000000 |
| 350:139 | CHP | hi | 2929/5000 | earlier 349:505; CHP; hi; 2929/5000 |
| 350:142 | CHR | lo | 91953/500000 | earlier 349:420; CHR; lo; 91953/500000 |
| 350:148 | CPR | lo | 33701/200000 | earlier 349:422; CPR; lo; 33701/200000 |
| 350:150 | CPS | lo | 139783/1000000 | earlier 349:461; CPS; lo; 139783/1000000 |
| 350:156 | EFP | lo | 99823/500000 | earlier 349:1067; EFP; lo; 99823/500000 |
| 350:157 | EFP | hi | 600363/1000000 | earlier 349:313; EFP; hi; 600363/1000000 |
| 350:158 | EFQ | lo | 140271/1000000 | earlier 349:1030; EFQ; lo; 140271/1000000 |
| 350:159 | EFQ | hi | 198067/500000 | earlier 349:243; EFQ; hi; 198067/500000 |
| 350:165 | EHP | hi | 19867/31250 | earlier 349:314; EHP; hi; 19867/31250 |
| 350:166 | EHQ | lo | 24193/200000 | earlier 349:255; EHQ; lo; 24193/200000 |
| 350:167 | EHQ | hi | 470889/1000000 | earlier 349:343; EHQ; hi; 470889/1000000 |
| 350:168 | EHR | lo | 20247/125000 | earlier 349:421; EHR; lo; 20247/125000 |
| 350:173 | EPQ | hi | 105511/500000 | earlier 349:360; EPQ; hi; 105511/500000 |
| 350:174 | EPR | lo | 165611/1000000 | earlier 349:1034; EPR; lo; 165611/1000000 |
| 350:175 | EPR | hi | 118707/200000 | earlier 349:227; EPR; hi; 118707/200000 |
| 350:176 | EPS | lo | 4039/31250 | earlier 349:1093; EPS; lo; 4039/31250 |
| 350:177 | EPS | hi | 485841/1000000 | earlier 349:786; EPS; hi; 485841/1000000 |
| 350:180 | EQS | lo | 20019/200000 | earlier 349:1019; EQS; lo; 20019/200000 |
| 350:181 | EQS | hi | 162403/500000 | earlier 349:380; EQS; hi; 162403/500000 |
| 350:187 | FHQ | hi | 636691/1000000 | earlier 349:346; FHQ; hi; 636691/1000000 |
| 350:192 | FPQ | lo | 22907/200000 | earlier 349:616; FPQ; lo; 22907/200000 |
| 350:193 | FPQ | hi | 28301/62500 | earlier 349:835; FPQ; hi; 28301/62500 |
| 350:194 | FPR | lo | 284631/1000000 | earlier 349:996; FPR; lo; 284631/1000000 |
| 350:196 | FPS | lo | 98631/1000000 | earlier 349:968; FPS; lo; 98631/1000000 |
| 350:199 | FQR | hi | 573679/1000000 | earlier 349:347; FQR; hi; 573679/1000000 |
| 350:200 | FQS | lo | 103693/1000000 | earlier 349:1005; FQS; lo; 103693/1000000 |
| 350:216 | PQS | lo | 24337/250000 | earlier 349:935; PQS; lo; 24337/250000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |


## Stage 351

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS+/HEQ-/CFQ-/PQR+/AEQ- |
| Packet | forest:root/AFP-/APR+/ARS+/HEQ-/CFQ-/PQR+/AEQ- |
| Index | 2 |
| Context | 138 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 350 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| b | 103767/1000000 | 306519/500000 | 103767/1000000 | 306519/500000 |
| c | 135501/250000 | 1/1 | 135501/250000 | 1/1 |
| e | 279/1000 | 59/125 | 279/1000 | 59/125 |
| f | 279/1000 | 306519/500000 | 279/1000 | 306519/500000 |
| h | 135501/250000 | 1/1 | 135501/250000 | 1/1 |
| p | 22907/200000 | 136503/200000 | 22907/200000 | 136503/200000 |
| q | 216837/1000000 | 694771/1000000 | 216837/1000000 | 694771/1000000 |
| u | 21413/40000 | 830823/1000000 | 21413/40000 | 830823/1000000 |
| v | 103767/1000000 | 379/1000 | 103767/1000000 | 379/1000 |
| r | 332981/500000 | 1/1 | 332981/500000 | 1/1 |
| w | 332981/500000 | 1/1 | 332981/500000 | 1/1 |
| j | 268487/500000 | 871013/1000000 | 268487/500000 | 871013/1000000 |
| k | 268487/500000 | 871013/1000000 | 268487/500000 | 871013/1000000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 4 | AC_ABE_ABE_0 | bitt ["anchor-cap","ABE","ABE",0,[]] | `-93/1000 + 1/1 * e` |
| 6 | AC_ABF_ABF_0 | bitt ["anchor-cap","ABF","ABF",0,[]] | `-93/1000 + 1/1 * f` |
| 21 | AC_ACP_ACF_0 | bitt ["anchor-cap","ACP","ACF",0,[]] | `-93/1000 + 1/1 * c` |
| 28 | AC_AEP_AEF_0 | bitt ["anchor-cap","AEP","AEF",0,[]] | `907/1000 + -1/1 * a` |
| 52 | AC_BCP_BCH_0 | bitt ["anchor-cap","BCP","BCH",0,[]] | `-93/1000 + 1/1 * h` |
| 57 | AC_BEF_BEF_0 | bitt ["anchor-cap","BEF","BEF",0,[]] | `907/1000 + -1/1 * b` |
| 94 | AC_EFH_EFH_0 | bitt ["anchor-cap","EFH","EFH",0,[]] | `907/1000 + -1/1 * e` |
| 129 | ea | bitt ["contact-order","ea"] | `1/1 * e + -1/1 * a` |
| 131 | fb | bitt ["contact-order","fb"] | `1/1 * f + -1/1 * b` |
| 132 | cf | bitt ["contact-order","cf"] | `1/1 * c + -1/1 * f` |
| 133 | sym | bitt ["contact-order","sym"] | `1/1 * f + -1/1 * e` |
| 134 | lower-area | bitt ["endpoint-lower","135501/250000"] | `1/1 * c * h + -135501/250000` |
| 136 | upper-quad | bitt ["upper-quad","BITT"] | `346/625 + -1/1 * c * h + 1/1 * f * h + 1/1 * c * e + -1/1 * e * f` |
| 137 | top-area | bitt ["top-hull","-"] | `721/1000 + -1/1 * f + -1/1 * e + 1/1 * e * f` |
| 139 | upper-Q-y | bitt ["upper-point-y","77403430769/125000000000","Q"] | `54153430769/125000000000 + -77403430769/125000000000 * v + 93/1000 * e + 93/1000 * h` |
| 140 | lower-sum | bitt ["lower-sum"] | `907/1000 + -1/1 * p + -1/1 * q` |
| 141 | central-budget | bitt ["central-budget","1/1"] | `721/1000 * c * h + -907/1000 * b * h + -907/1000 * a * c + 1093/1000 * a * b` |
| 142 | central-p-floor | bitt ["central-floor",0,"102650331/896233000"] | `1/1 * p + -102650331/896233000` |
| 143 | central-q-floor | bitt ["central-floor",1,"102650331/896233000"] | `1/1 * q + -102650331/896233000` |
| 144 | central-x | bitt ["central-lower-x"] | `1/1 * c * h * p + -1/1 * b * h * p + -93/1000 * c + -93/1000 * b` |
| 146 | WBARY_RS_0 | bitt ["weighted-barycentric","R","S",["1/1","1/1","1/1"],"519841/93000",0] | `519841/93000 * j + -1/1 + -333841/93000 * f + -1/1 * r` |
| 148 | WBARY_RS_2 | bitt ["weighted-barycentric","R","S",["1/1","1/1","1/1"],"519841/93000",2] | `519841/93000 * k + -1/1 + -333841/93000 * e + -1/1 * w` |
| 149 | WBARY_RS_3 | bitt ["weighted-barycentric","R","S",["1/1","1/1","1/1"],"519841/93000",3] | `333841/93000 + 1/1 * e + 1/1 * w + -519841/93000 * k` |
| 457 | SUP_CEP_BCE_BEP | bitt ["support-envelope",["pentagon","EPABC"],"CEP","BCE","BEP","129991926729/250000000000"] | `-125758073271/250000000000 * c * e + 125758073271/250000000000 * b * e + 1023/1000 * c * q + -1023/1000 * b * q` |
| 580 | SUP_AHP_AFH_AFP | bitt ["support-envelope",["pentagon","APRFH"],"AHP","AFH","AFP","122338493199/200000000000"] | `122338493199/200000000000 * f * h + 82261506801/200000000000 * a * f + -1023/1000 * h * p + -1023/1000 * f * q + 1023/1000 * p` |
| 618 | SUP_CEF_CEP_EFP | bitt ["support-envelope",["pentagon","EFHPC"],"CEF","CEP","EFP","4547921/7812500"] | `-6888533/15625000 * q + -4547921/7812500 * c * q + 6888533/15625000 * e * p + -6888533/15625000 * c * e + 1023/1000 * c + 1023/1000 * f * q + -1023/1000 * p` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |


### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 351:0 | ABC | lo | 93/1000 | occupants none |
| 351:1 | ABC | hi | 52877747/125000000 | vertex maximum 52877747/125000000 |
| 351:4 | ABF | lo | 93/1000 | occupants none |
| 351:5 | ABF | hi | 306519/500000 | vertex maximum 306519/500000 |
| 351:6 | ABH | lo | 93/1000 | occupants none |
| 351:8 | ABP | lo | 93/1000 | occupants none |
| 351:12 | ABR | lo | 93/1000 | occupants none |
| 351:16 | ACE | lo | 279/1000 | occupants Q |
| 351:17 | ACE | hi | 59/125 | vertex maximum 59/125 |
| 351:20 | ACH | lo | 279/1000 | occupants P |
| 351:21 | ACH | hi | 896233/1000000 | vertex maximum 896233/1000000 |
| 351:22 | ACP | lo | 93/1000 | occupants none |
| 351:23 | ACP | hi | 312423/500000 | earlier 350:23; ACP; hi; 312423/500000 |
| 351:24 | ACQ | lo | 93/1000 | occupants none |
| 351:25 | ACQ | hi | 143/500 | earlier 350:25; ACQ; hi; 143/500 |
| 351:26 | ACR | lo | 70901/200000 | earlier 350:26; ACR; lo; 70901/200000 |
| 351:31 | AEF | hi | 847342993/1000000000 | vertex maximum 847342993/1000000000 |
| 351:32 | AEH | lo | 279/1000 | occupants P |
| 351:33 | AEH | hi | 896233/1000000 | vertex maximum 896233/1000000 |
| 351:34 | AEP | lo | 93/1000 | occupants none |
| 351:36 | AEQ | lo | 93/1000 | occupants none |
| 351:37 | AEQ | hi | 22909/100000 | earlier 350:37; AEQ; hi; 22909/100000 |
| 351:38 | AER | lo | 351611/1000000 | earlier 350:38; AER; lo; 351611/1000000 |
| 351:39 | AER | hi | 389767240427/500000000000 | vertex maximum 389767240427/500000000000 |
| 351:40 | AES | lo | 19703/62500 | earlier 350:40; AES; lo; 19703/62500 |
| 351:41 | AES | hi | 336575217529/500000000000 | vertex maximum 336575217529/500000000000 |
| 351:42 | AFH | lo | 93/1000 | occupants none |
| 351:43 | AFH | hi | 274712442927/500000000000 | vertex maximum 274712442927/500000000000 |
| 351:44 | AFP | lo | 93/1000 | occupants none |
| 351:45 | AFP | hi | 256451/500000 | earlier 350:45; AFP; hi; 256451/500000 |
| 351:46 | AFQ | lo | 60107/200000 | earlier 350:46; AFQ; lo; 60107/200000 |
| 351:47 | AFQ | hi | 720437/1000000 | earlier 350:47; AFQ; hi; 720437/1000000 |
| 351:48 | AFR | lo | 310549/1000000 | earlier 350:48; AFR; lo; 310549/1000000 |
| 351:49 | AFR | hi | 147876119/200000000 | vertex maximum 147876119/200000000 |
| 351:50 | AFS | lo | 124549/1000000 | earlier 350:50; AFS; lo; 124549/1000000 |
| 351:52 | AHP | lo | 93/1000 | occupants none |
| 351:53 | AHP | hi | 106729/200000 | earlier 350:53; AHP; hi; 106729/200000 |
| 351:54 | AHQ | lo | 279/1000 | occupants P |
| 351:55 | AHQ | hi | 143929/200000 | earlier 350:55; AHQ; hi; 143929/200000 |
| 351:56 | AHR | lo | 78319/500000 | earlier 350:56; AHR; lo; 78319/500000 |
| 351:57 | AHR | hi | 896233/1000000 | vertex maximum 896233/1000000 |
| 351:58 | AHS | lo | 6883/50000 | earlier 350:58; AHS; lo; 6883/50000 |
| 351:60 | APQ | lo | 93/1000 | occupants none |
| 351:62 | APR | lo | 93/1000 | occupants none |
| 351:63 | APR | hi | 7441/15625 | earlier 350:63; APR; hi; 7441/15625 |
| 351:64 | APS | lo | 93/1000 | occupants none |
| 351:66 | AQR | lo | 70443/250000 | earlier 350:66; AQR; lo; 70443/250000 |
| 351:68 | AQS | lo | 70837/250000 | earlier 350:68; AQS; lo; 70837/250000 |
| 351:70 | ARS | lo | 93/1000 | occupants none |
| 351:72 | BCE | lo | 93/1000 | occupants none |
| 351:73 | BCE | hi | 52877747/125000000 | vertex maximum 52877747/125000000 |
| 351:75 | BCF | hi | 896233/1000000 | vertex maximum 896233/1000000 |
| 351:78 | BCP | lo | 120603/1000000 | earlier 350:78; BCP; lo; 120603/1000000 |
| 351:79 | BCP | hi | 622676697643/1000000000000 | vertex maximum 622676697643/1000000000000 |
| 351:80 | BCQ | lo | 93/1000 | occupants none |
| 351:87 | BEF | hi | 847342993/1000000000 | vertex maximum 847342993/1000000000 |
| 351:89 | BEH | hi | 59075689/62500000 | vertex maximum 59075689/62500000 |
| 351:90 | BEP | lo | 16363/100000 | earlier 350:90; BEP; lo; 16363/100000 |
| 351:92 | BER | lo | 93/1000 | occupants none |
| 351:96 | BFH | lo | 93/1000 | occupants none |
| 351:102 | BFS | lo | 93/1000 | occupants none |
| 351:104 | BHP | lo | 93/1000 | occupants none |
| 351:110 | BHS | lo | 72347/500000 | earlier 350:110; BHS; lo; 72347/500000 |
| 351:112 | BPQ | lo | 93/1000 | occupants none |
| 351:116 | CEF | lo | 326271/1000000 | earlier 350:116; CEF; lo; 326271/1000000 |
| 351:117 | CEF | hi | 4547921/7812500 | vertex maximum 4547921/7812500 |
| 351:118 | CEH | lo | 61393/200000 | earlier 350:118; CEH; lo; 61393/200000 |
| 351:119 | CEH | hi | 11153467/15625000 | vertex maximum 11153467/15625000 |
| 351:120 | CEP | lo | 279/1000 | occupants Q |
| 351:121 | CEP | hi | 198511/500000 | earlier 350:121; CEP; hi; 198511/500000 |
| 351:122 | CEQ | lo | 93/1000 | occupants none |
| 351:124 | CER | lo | 93/1000 | occupants none |
| 351:125 | CER | hi | 211705859/500000000 | vertex maximum 211705859/500000000 |
| 351:126 | CES | lo | 155931/1000000 | earlier 350:126; CES; lo; 155931/1000000 |
| 351:127 | CES | hi | 100323657487/250000000000 | vertex maximum 100323657487/250000000000 |
| 351:128 | CFH | lo | 93/1000 | occupants none |
| 351:132 | CFQ | lo | 93/1000 | occupants none |
| 351:137 | CFS | hi | 490601/1000000 | earlier 350:137; CFS; hi; 490601/1000000 |
| 351:138 | CHP | lo | 93/1000 | occupants none |
| 351:139 | CHP | hi | 2929/5000 | earlier 350:139; CHP; hi; 2929/5000 |
| 351:140 | CHQ | lo | 93/1000 | occupants none |
| 351:142 | CHR | lo | 91953/500000 | earlier 350:142; CHR; lo; 91953/500000 |
| 351:143 | CHR | hi | 1/1 | vertex maximum 1/1 |
| 351:146 | CPQ | lo | 93/1000 | occupants none |
| 351:148 | CPR | lo | 33701/200000 | earlier 350:148; CPR; lo; 33701/200000 |
| 351:150 | CPS | lo | 139783/1000000 | earlier 350:150; CPS; lo; 139783/1000000 |
| 351:152 | CRS | lo | 93/1000 | occupants none |
| 351:154 | EFH | lo | 93/1000 | occupants none |
| 351:155 | EFH | hi | 77403430769/125000000000 | vertex maximum 77403430769/125000000000 |
| 351:156 | EFP | lo | 99823/500000 | earlier 350:156; EFP; lo; 99823/500000 |
| 351:157 | EFP | hi | 600363/1000000 | earlier 350:157; EFP; hi; 600363/1000000 |
| 351:158 | EFQ | lo | 140271/1000000 | earlier 350:158; EFQ; lo; 140271/1000000 |
| 351:159 | EFQ | hi | 198067/500000 | earlier 350:159; EFQ; hi; 198067/500000 |
| 351:160 | EFR | lo | 279/1000 | occupants S |
| 351:161 | EFR | hi | 519841/1000000 | vertex maximum 519841/1000000 |
| 351:162 | EFS | lo | 93/1000 | occupants none |
| 351:164 | EHP | lo | 93/1000 | occupants none |
| 351:165 | EHP | hi | 19867/31250 | earlier 350:165; EHP; hi; 19867/31250 |
| 351:166 | EHQ | lo | 24193/200000 | earlier 350:166; EHQ; lo; 24193/200000 |
| 351:167 | EHQ | hi | 470889/1000000 | earlier 350:167; EHQ; hi; 470889/1000000 |
| 351:168 | EHR | lo | 20247/125000 | earlier 350:168; EHR; lo; 20247/125000 |
| 351:169 | EHR | hi | 721/1000 | vertex maximum 721/1000 |
| 351:170 | EHS | lo | 93/1000 | occupants none |
| 351:172 | EPQ | lo | 93/1000 | occupants none |
| 351:173 | EPQ | hi | 105511/500000 | earlier 350:173; EPQ; hi; 105511/500000 |
| 351:174 | EPR | lo | 165611/1000000 | earlier 350:174; EPR; lo; 165611/1000000 |
| 351:175 | EPR | hi | 118707/200000 | earlier 350:175; EPR; hi; 118707/200000 |
| 351:176 | EPS | lo | 4039/31250 | earlier 350:176; EPS; lo; 4039/31250 |
| 351:177 | EPS | hi | 485841/1000000 | earlier 350:177; EPS; hi; 485841/1000000 |
| 351:178 | EQR | lo | 93/1000 | occupants none |
| 351:180 | EQS | lo | 20019/200000 | earlier 350:180; EQS; lo; 20019/200000 |
| 351:181 | EQS | hi | 162403/500000 | earlier 350:181; EQS; hi; 162403/500000 |
| 351:182 | ERS | lo | 93/1000 | occupants none |
| 351:184 | FHP | lo | 93/1000 | occupants none |
| 351:187 | FHQ | hi | 636691/1000000 | earlier 350:187; FHQ; hi; 636691/1000000 |
| 351:188 | FHR | lo | 93/1000 | occupants none |
| 351:189 | FHR | hi | 211705859/500000000 | vertex maximum 211705859/500000000 |
| 351:190 | FHS | lo | 93/1000 | occupants none |
| 351:192 | FPQ | lo | 22907/200000 | earlier 350:192; FPQ; lo; 22907/200000 |
| 351:193 | FPQ | hi | 28301/62500 | earlier 350:193; FPQ; hi; 28301/62500 |
| 351:194 | FPR | lo | 284631/1000000 | earlier 350:194; FPR; lo; 284631/1000000 |
| 351:196 | FPS | lo | 98631/1000000 | earlier 350:196; FPS; lo; 98631/1000000 |
| 351:199 | FQR | hi | 573679/1000000 | earlier 350:199; FQR; hi; 573679/1000000 |
| 351:200 | FQS | lo | 103693/1000000 | earlier 350:200; FQS; lo; 103693/1000000 |
| 351:202 | FRS | lo | 93/1000 | occupants none |
| 351:204 | HPQ | lo | 93/1000 | occupants none |
| 351:206 | HPR | lo | 93/1000 | occupants none |
| 351:208 | HPS | lo | 93/1000 | occupants none |
| 351:216 | PQS | lo | 24337/250000 | earlier 350:216; PQS; lo; 24337/250000 |
| 351:218 | PRS | lo | 93/1000 | occupants none |
| 351:220 | QRS | lo | 93/1000 | occupants none |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |


### Coordinate certificate sources

| Source | Kind | Source witness | Polynomial |
| --- | --- | --- | --- |
| 0 | bound | `{"direction":"lo","ref":"351:0","triangle":"ABC","value":"93/1000"}` | `-1 * a * b + 1 * a * c + -93/1000` |
| 1 | bound | `{"direction":"hi","ref":"351:1","triangle":"ABC","value":"52877747/125000000"}` | `52877747/125000000 + 1 * a * b + -1 * a * c` |
| 4 | bound | `{"direction":"lo","ref":"351:4","triangle":"ABF","value":"93/1000"}` | `1 * b + -1 * a * b + 1 * a * f + -93/1000` |
| 5 | bound | `{"direction":"hi","ref":"351:5","triangle":"ABF","value":"306519/500000"}` | `306519/500000 + -1 * b + 1 * a * b + -1 * a * f` |
| 6 | bound | `{"direction":"lo","ref":"351:6","triangle":"ABH","value":"93/1000"}` | `1 * b * h + -1 * a * b + -93/1000` |
| 8 | bound | `{"direction":"lo","ref":"351:8","triangle":"ABP","value":"93/1000"}` | `1 * b * q + -1 * a * b + 1 * a * p + -93/1000` |
| 12 | bound | `{"direction":"lo","ref":"351:12","triangle":"ABR","value":"93/1000"}` | `1 * b * w + -1 * a * b + 1 * a * r + -93/1000` |
| 16 | bound | `{"direction":"lo","ref":"351:16","triangle":"ACE","value":"279/1000"}` | `1 * c * e + -1 * a * c + 1 * a + -279/1000` |
| 17 | bound | `{"direction":"hi","ref":"351:17","triangle":"ACE","value":"59/125"}` | `59/125 + -1 * c * e + 1 * a * c + -1 * a` |
| 20 | bound | `{"direction":"lo","ref":"351:20","triangle":"ACH","value":"279/1000"}` | `1 * c * h + -1 * a * c + -279/1000` |
| 21 | bound | `{"direction":"hi","ref":"351:21","triangle":"ACH","value":"896233/1000000"}` | `896233/1000000 + -1 * c * h + 1 * a * c` |
| 22 | bound | `{"direction":"lo","ref":"351:22","triangle":"ACP","value":"93/1000"}` | `1 * c * q + -1 * a * c + 1 * a * p + -93/1000` |
| 23 | bound | `{"direction":"hi","ref":"351:23","triangle":"ACP","value":"312423/500000"}` | `312423/500000 + -1 * c * q + 1 * a * c + -1 * a * p` |
| 24 | bound | `{"direction":"lo","ref":"351:24","triangle":"ACQ","value":"93/1000"}` | `1 * c * v + -1 * a * c + 1 * a * u + -93/1000` |
| 25 | bound | `{"direction":"hi","ref":"351:25","triangle":"ACQ","value":"143/500"}` | `143/500 + -1 * c * v + 1 * a * c + -1 * a * u` |
| 26 | bound | `{"direction":"lo","ref":"351:26","triangle":"ACR","value":"70901/200000"}` | `1 * c * w + -1 * a * c + 1 * a * r + -70901/200000` |
| 31 | bound | `{"direction":"hi","ref":"351:31","triangle":"AEF","value":"847342993/1000000000"}` | `-152657007/1000000000 + 1 * a + 1 * e * f + -1 * a * f` |
| 32 | bound | `{"direction":"lo","ref":"351:32","triangle":"AEH","value":"279/1000"}` | `1 * h + -1 * a + -279/1000` |
| 33 | bound | `{"direction":"hi","ref":"351:33","triangle":"AEH","value":"896233/1000000"}` | `896233/1000000 + -1 * h + 1 * a` |
| 34 | bound | `{"direction":"lo","ref":"351:34","triangle":"AEP","value":"93/1000"}` | `1 * q + -1 * a + -1 * e * p + 1 * a * p + -93/1000` |
| 36 | bound | `{"direction":"lo","ref":"351:36","triangle":"AEQ","value":"93/1000"}` | `-1 * v + 1 * a + 1 * e * u + -1 * a * u + -93/1000` |
| 37 | bound | `{"direction":"hi","ref":"351:37","triangle":"AEQ","value":"22909/100000"}` | `22909/100000 + 1 * v + -1 * a + -1 * e * u + 1 * a * u` |
| 38 | bound | `{"direction":"lo","ref":"351:38","triangle":"AER","value":"351611/1000000"}` | `1 * w + -1 * a + -1 * e * r + 1 * a * r + -351611/1000000` |
| 39 | bound | `{"direction":"hi","ref":"351:39","triangle":"AER","value":"389767240427/500000000000"}` | `389767240427/500000000000 + -1 * w + 1 * a + 1 * e * r + -1 * a * r` |
| 40 | bound | `{"direction":"lo","ref":"351:40","triangle":"AES","value":"19703/62500"}` | `1 * k + -1 * a + -1 * e * j + 1 * a * j + -19703/62500` |
| 41 | bound | `{"direction":"hi","ref":"351:41","triangle":"AES","value":"336575217529/500000000000"}` | `336575217529/500000000000 + -1 * k + 1 * a + 1 * e * j + -1 * a * j` |
| 42 | bound | `{"direction":"lo","ref":"351:42","triangle":"AFH","value":"93/1000"}` | `1 * f * h + -1 * a * f + -93/1000` |
| 43 | bound | `{"direction":"hi","ref":"351:43","triangle":"AFH","value":"274712442927/500000000000"}` | `274712442927/500000000000 + -1 * f * h + 1 * a * f` |
| 44 | bound | `{"direction":"lo","ref":"351:44","triangle":"AFP","value":"93/1000"}` | `-1 * f * q + 1 * a * f + 1 * p + -1 * a * p + -93/1000` |
| 45 | bound | `{"direction":"hi","ref":"351:45","triangle":"AFP","value":"256451/500000"}` | `256451/500000 + 1 * f * q + -1 * a * f + -1 * p + 1 * a * p` |
| 46 | bound | `{"direction":"lo","ref":"351:46","triangle":"AFQ","value":"60107/200000"}` | `-1 * f * v + 1 * a * f + 1 * u + -1 * a * u + -60107/200000` |
| 47 | bound | `{"direction":"hi","ref":"351:47","triangle":"AFQ","value":"720437/1000000"}` | `720437/1000000 + 1 * f * v + -1 * a * f + -1 * u + 1 * a * u` |
| 48 | bound | `{"direction":"lo","ref":"351:48","triangle":"AFR","value":"310549/1000000"}` | `-1 * f * w + 1 * a * f + 1 * r + -1 * a * r + -310549/1000000` |
| 49 | bound | `{"direction":"hi","ref":"351:49","triangle":"AFR","value":"147876119/200000000"}` | `147876119/200000000 + 1 * f * w + -1 * a * f + -1 * r + 1 * a * r` |
| 50 | bound | `{"direction":"lo","ref":"351:50","triangle":"AFS","value":"124549/1000000"}` | `-1 * f * k + 1 * a * f + 1 * j + -1 * a * j + -124549/1000000` |
| 52 | bound | `{"direction":"lo","ref":"351:52","triangle":"AHP","value":"93/1000"}` | `1 * h * p + -1 * a * p + -93/1000` |
| 53 | bound | `{"direction":"hi","ref":"351:53","triangle":"AHP","value":"106729/200000"}` | `106729/200000 + -1 * h * p + 1 * a * p` |
| 54 | bound | `{"direction":"lo","ref":"351:54","triangle":"AHQ","value":"279/1000"}` | `1 * h * u + -1 * a * u + -279/1000` |
| 55 | bound | `{"direction":"hi","ref":"351:55","triangle":"AHQ","value":"143929/200000"}` | `143929/200000 + -1 * h * u + 1 * a * u` |
| 56 | bound | `{"direction":"lo","ref":"351:56","triangle":"AHR","value":"78319/500000"}` | `1 * h * r + -1 * a * r + -78319/500000` |
| 57 | bound | `{"direction":"hi","ref":"351:57","triangle":"AHR","value":"896233/1000000"}` | `896233/1000000 + -1 * h * r + 1 * a * r` |
| 58 | bound | `{"direction":"lo","ref":"351:58","triangle":"AHS","value":"6883/50000"}` | `1 * h * j + -1 * a * j + -6883/50000` |
| 60 | bound | `{"direction":"lo","ref":"351:60","triangle":"APQ","value":"93/1000"}` | `-1 * p * v + 1 * a * p + 1 * q * u + -1 * a * u + -93/1000` |
| 62 | bound | `{"direction":"lo","ref":"351:62","triangle":"APR","value":"93/1000"}` | `1 * p * w + -1 * a * p + -1 * q * r + 1 * a * r + -93/1000` |
| 63 | bound | `{"direction":"hi","ref":"351:63","triangle":"APR","value":"7441/15625"}` | `7441/15625 + -1 * p * w + 1 * a * p + 1 * q * r + -1 * a * r` |
| 64 | bound | `{"direction":"lo","ref":"351:64","triangle":"APS","value":"93/1000"}` | `1 * p * k + -1 * a * p + -1 * q * j + 1 * a * j + -93/1000` |
| 66 | bound | `{"direction":"lo","ref":"351:66","triangle":"AQR","value":"70443/250000"}` | `1 * u * w + -1 * a * u + -1 * v * r + 1 * a * r + -70443/250000` |
| 68 | bound | `{"direction":"lo","ref":"351:68","triangle":"AQS","value":"70837/250000"}` | `1 * u * k + -1 * a * u + -1 * v * j + 1 * a * j + -70837/250000` |
| 70 | bound | `{"direction":"lo","ref":"351:70","triangle":"ARS","value":"93/1000"}` | `1 * r * k + -1 * a * r + -1 * w * j + 1 * a * j + -93/1000` |
| 72 | bound | `{"direction":"lo","ref":"351:72","triangle":"BCE","value":"93/1000"}` | `1 * c * e + -1 * b * e + -93/1000` |
| 73 | bound | `{"direction":"hi","ref":"351:73","triangle":"BCE","value":"52877747/125000000"}` | `52877747/125000000 + -1 * c * e + 1 * b * e` |
| 75 | bound | `{"direction":"hi","ref":"351:75","triangle":"BCF","value":"896233/1000000"}` | `896233/1000000 + -1 * c + 1 * b` |
| 78 | bound | `{"direction":"lo","ref":"351:78","triangle":"BCP","value":"120603/1000000"}` | `1 * c * q + -1 * b * q + -120603/1000000` |
| 79 | bound | `{"direction":"hi","ref":"351:79","triangle":"BCP","value":"622676697643/1000000000000"}` | `622676697643/1000000000000 + -1 * c * q + 1 * b * q` |
| 80 | bound | `{"direction":"lo","ref":"351:80","triangle":"BCQ","value":"93/1000"}` | `1 * c * v + -1 * b * v + -93/1000` |
| 87 | bound | `{"direction":"hi","ref":"351:87","triangle":"BEF","value":"847342993/1000000000"}` | `-152657007/1000000000 + 1 * b + 1 * e * f + -1 * b * e` |
| 89 | bound | `{"direction":"hi","ref":"351:89","triangle":"BEH","value":"59075689/62500000"}` | `59075689/62500000 + -1 * h + 1 * b * h + -1 * b * e` |
| 90 | bound | `{"direction":"lo","ref":"351:90","triangle":"BEP","value":"16363/100000"}` | `1 * q + -1 * b * q + -1 * e * p + 1 * b * e + -16363/100000` |
| 92 | bound | `{"direction":"lo","ref":"351:92","triangle":"BER","value":"93/1000"}` | `1 * w + -1 * b * w + -1 * e * r + 1 * b * e + -93/1000` |
| 96 | bound | `{"direction":"lo","ref":"351:96","triangle":"BFH","value":"93/1000"}` | `1 * f * h + -1 * b * h + 1 * b + -93/1000` |
| 102 | bound | `{"direction":"lo","ref":"351:102","triangle":"BFS","value":"93/1000"}` | `-1 * f * k + 1 * b * k + 1 * j + -1 * b + -93/1000` |
| 104 | bound | `{"direction":"lo","ref":"351:104","triangle":"BHP","value":"93/1000"}` | `1 * b * q + 1 * h * p + -1 * b * h + -93/1000` |
| 110 | bound | `{"direction":"lo","ref":"351:110","triangle":"BHS","value":"72347/500000"}` | `1 * b * k + 1 * h * j + -1 * b * h + -72347/500000` |
| 112 | bound | `{"direction":"lo","ref":"351:112","triangle":"BPQ","value":"93/1000"}` | `-1 * p * v + 1 * b * v + 1 * q * u + -1 * b * q + -93/1000` |
| 116 | bound | `{"direction":"lo","ref":"351:116","triangle":"CEF","value":"326271/1000000"}` | `673729/1000000 + -1 * c + -1 * e * f + 1 * c * e` |
| 117 | bound | `{"direction":"hi","ref":"351:117","triangle":"CEF","value":"4547921/7812500"}` | `-3264579/7812500 + 1 * c + 1 * e * f + -1 * c * e` |
| 118 | bound | `{"direction":"lo","ref":"351:118","triangle":"CEH","value":"61393/200000"}` | `1 * h + -1 * c * h + 1 * c * e + -61393/200000` |
| 119 | bound | `{"direction":"hi","ref":"351:119","triangle":"CEH","value":"11153467/15625000"}` | `11153467/15625000 + -1 * h + 1 * c * h + -1 * c * e` |
| 120 | bound | `{"direction":"lo","ref":"351:120","triangle":"CEP","value":"279/1000"}` | `1 * q + -1 * c * q + -1 * e * p + 1 * c * e + -279/1000` |
| 121 | bound | `{"direction":"hi","ref":"351:121","triangle":"CEP","value":"198511/500000"}` | `198511/500000 + -1 * q + 1 * c * q + 1 * e * p + -1 * c * e` |
| 122 | bound | `{"direction":"lo","ref":"351:122","triangle":"CEQ","value":"93/1000"}` | `1 * v + -1 * c * v + -1 * e * u + 1 * c * e + -93/1000` |
| 124 | bound | `{"direction":"lo","ref":"351:124","triangle":"CER","value":"93/1000"}` | `1 * w + -1 * c * w + -1 * e * r + 1 * c * e + -93/1000` |
| 125 | bound | `{"direction":"hi","ref":"351:125","triangle":"CER","value":"211705859/500000000"}` | `211705859/500000000 + -1 * w + 1 * c * w + 1 * e * r + -1 * c * e` |
| 126 | bound | `{"direction":"lo","ref":"351:126","triangle":"CES","value":"155931/1000000"}` | `1 * k + -1 * c * k + -1 * e * j + 1 * c * e + -155931/1000000` |
| 127 | bound | `{"direction":"hi","ref":"351:127","triangle":"CES","value":"100323657487/250000000000"}` | `100323657487/250000000000 + -1 * k + 1 * c * k + 1 * e * j + -1 * c * e` |
| 128 | bound | `{"direction":"lo","ref":"351:128","triangle":"CFH","value":"93/1000"}` | `1 * f * h + -1 * c * h + 1 * c + -93/1000` |
| 132 | bound | `{"direction":"lo","ref":"351:132","triangle":"CFQ","value":"93/1000"}` | `-1 * f * v + 1 * c * v + 1 * u + -1 * c + -93/1000` |
| 137 | bound | `{"direction":"hi","ref":"351:137","triangle":"CFS","value":"490601/1000000"}` | `490601/1000000 + 1 * f * k + -1 * c * k + -1 * j + 1 * c` |
| 138 | bound | `{"direction":"lo","ref":"351:138","triangle":"CHP","value":"93/1000"}` | `-1 * c * q + -1 * h * p + 1 * c * h + -93/1000` |
| 139 | bound | `{"direction":"hi","ref":"351:139","triangle":"CHP","value":"2929/5000"}` | `2929/5000 + 1 * c * q + 1 * h * p + -1 * c * h` |
| 140 | bound | `{"direction":"lo","ref":"351:140","triangle":"CHQ","value":"93/1000"}` | `1 * c * v + 1 * h * u + -1 * c * h + -93/1000` |
| 142 | bound | `{"direction":"lo","ref":"351:142","triangle":"CHR","value":"91953/500000"}` | `1 * c * w + 1 * h * r + -1 * c * h + -91953/500000` |
| 143 | bound | `{"direction":"hi","ref":"351:143","triangle":"CHR","value":"1/1"}` | `1 + -1 * c * w + -1 * h * r + 1 * c * h` |
| 146 | bound | `{"direction":"lo","ref":"351:146","triangle":"CPQ","value":"93/1000"}` | `-1 * p * v + 1 * c * v + 1 * q * u + -1 * c * q + -93/1000` |
| 148 | bound | `{"direction":"lo","ref":"351:148","triangle":"CPR","value":"33701/200000"}` | `-1 * p * w + 1 * c * w + 1 * q * r + -1 * c * q + -33701/200000` |
| 150 | bound | `{"direction":"lo","ref":"351:150","triangle":"CPS","value":"139783/1000000"}` | `-1 * p * k + 1 * c * k + 1 * q * j + -1 * c * q + -139783/1000000` |
| 152 | bound | `{"direction":"lo","ref":"351:152","triangle":"CRS","value":"93/1000"}` | `1 * r * k + -1 * c * k + -1 * w * j + 1 * c * w + -93/1000` |
| 154 | bound | `{"direction":"lo","ref":"351:154","triangle":"EFH","value":"93/1000"}` | `1 * f * h + -1 * e * f + -1 * h + 907/1000` |
| 155 | bound | `{"direction":"hi","ref":"351:155","triangle":"EFH","value":"77403430769/125000000000"}` | `-47596569231/125000000000 + -1 * f * h + 1 * e * f + 1 * h` |
| 156 | bound | `{"direction":"lo","ref":"351:156","triangle":"EFP","value":"99823/500000"}` | `1 * f * q + -1 * e * f + -1 * q + -1 * p + 400177/500000 + 1 * e * p` |
| 157 | bound | `{"direction":"hi","ref":"351:157","triangle":"EFP","value":"600363/1000000"}` | `-399637/1000000 + -1 * f * q + 1 * e * f + 1 * q + 1 * p + -1 * e * p` |
| 158 | bound | `{"direction":"lo","ref":"351:158","triangle":"EFQ","value":"140271/1000000"}` | `1 * f * v + -1 * e * f + -1 * v + -1 * u + 859729/1000000 + 1 * e * u` |
| 159 | bound | `{"direction":"hi","ref":"351:159","triangle":"EFQ","value":"198067/500000"}` | `-301933/500000 + -1 * f * v + 1 * e * f + 1 * v + 1 * u + -1 * e * u` |
| 160 | bound | `{"direction":"lo","ref":"351:160","triangle":"EFR","value":"279/1000"}` | `-1 * f * w + 1 * e * f + 1 * w + 1 * r + -1279/1000 + -1 * e * r` |
| 161 | bound | `{"direction":"hi","ref":"351:161","triangle":"EFR","value":"519841/1000000"}` | `1519841/1000000 + 1 * f * w + -1 * e * f + -1 * w + -1 * r + 1 * e * r` |
| 162 | bound | `{"direction":"lo","ref":"351:162","triangle":"EFS","value":"93/1000"}` | `-1 * f * k + 1 * e * f + 1 * k + 1 * j + -1093/1000 + -1 * e * j` |
| 164 | bound | `{"direction":"lo","ref":"351:164","triangle":"EHP","value":"93/1000"}` | `-1 * q + -1 * h * p + 1 * h + 1 * e * p + -93/1000` |
| 165 | bound | `{"direction":"hi","ref":"351:165","triangle":"EHP","value":"19867/31250"}` | `19867/31250 + 1 * q + 1 * h * p + -1 * h + -1 * e * p` |
| 166 | bound | `{"direction":"lo","ref":"351:166","triangle":"EHQ","value":"24193/200000"}` | `-1 * v + -1 * h * u + 1 * h + 1 * e * u + -24193/200000` |
| 167 | bound | `{"direction":"hi","ref":"351:167","triangle":"EHQ","value":"470889/1000000"}` | `470889/1000000 + 1 * v + 1 * h * u + -1 * h + -1 * e * u` |
| 168 | bound | `{"direction":"lo","ref":"351:168","triangle":"EHR","value":"20247/125000"}` | `1 * w + 1 * h * r + -1 * h + -1 * e * r + -20247/125000` |
| 169 | bound | `{"direction":"hi","ref":"351:169","triangle":"EHR","value":"721/1000"}` | `721/1000 + -1 * w + -1 * h * r + 1 * h + 1 * e * r` |
| 170 | bound | `{"direction":"lo","ref":"351:170","triangle":"EHS","value":"93/1000"}` | `1 * k + 1 * h * j + -1 * h + -1 * e * j + -93/1000` |
| 172 | bound | `{"direction":"lo","ref":"351:172","triangle":"EPQ","value":"93/1000"}` | `1 * p * v + -1 * e * p + -1 * v + -1 * q * u + 1 * q + 1 * e * u + -93/1000` |
| 173 | bound | `{"direction":"hi","ref":"351:173","triangle":"EPQ","value":"105511/500000"}` | `105511/500000 + -1 * p * v + 1 * e * p + 1 * v + 1 * q * u + -1 * q + -1 * e * u` |
| 174 | bound | `{"direction":"lo","ref":"351:174","triangle":"EPR","value":"165611/1000000"}` | `-1 * p * w + 1 * e * p + 1 * w + 1 * q * r + -1 * q + -1 * e * r + -165611/1000000` |
| 175 | bound | `{"direction":"hi","ref":"351:175","triangle":"EPR","value":"118707/200000"}` | `118707/200000 + 1 * p * w + -1 * e * p + -1 * w + -1 * q * r + 1 * q + 1 * e * r` |
| 176 | bound | `{"direction":"lo","ref":"351:176","triangle":"EPS","value":"4039/31250"}` | `-1 * p * k + 1 * e * p + 1 * k + 1 * q * j + -1 * q + -1 * e * j + -4039/31250` |
| 177 | bound | `{"direction":"hi","ref":"351:177","triangle":"EPS","value":"485841/1000000"}` | `485841/1000000 + 1 * p * k + -1 * e * p + -1 * k + -1 * q * j + 1 * q + 1 * e * j` |
| 178 | bound | `{"direction":"lo","ref":"351:178","triangle":"EQR","value":"93/1000"}` | `-1 * u * w + 1 * e * u + 1 * w + 1 * v * r + -1 * v + -1 * e * r + -93/1000` |
| 180 | bound | `{"direction":"lo","ref":"351:180","triangle":"EQS","value":"20019/200000"}` | `-1 * u * k + 1 * e * u + 1 * k + 1 * v * j + -1 * v + -1 * e * j + -20019/200000` |
| 181 | bound | `{"direction":"hi","ref":"351:181","triangle":"EQS","value":"162403/500000"}` | `162403/500000 + 1 * u * k + -1 * e * u + -1 * k + -1 * v * j + 1 * v + 1 * e * j` |
| 182 | bound | `{"direction":"lo","ref":"351:182","triangle":"ERS","value":"93/1000"}` | `1 * r * k + -1 * e * r + -1 * k + -1 * w * j + 1 * w + 1 * e * j + -93/1000` |
| 184 | bound | `{"direction":"lo","ref":"351:184","triangle":"FHP","value":"93/1000"}` | `-1 * f * q + -1 * h * p + 1 * f * h + 1 * p + -93/1000` |
| 187 | bound | `{"direction":"hi","ref":"351:187","triangle":"FHQ","value":"636691/1000000"}` | `636691/1000000 + 1 * f * v + 1 * h * u + -1 * f * h + -1 * u` |
| 188 | bound | `{"direction":"lo","ref":"351:188","triangle":"FHR","value":"93/1000"}` | `-1 * f * w + -1 * h * r + 1 * f * h + 1 * r + -93/1000` |
| 189 | bound | `{"direction":"hi","ref":"351:189","triangle":"FHR","value":"211705859/500000000"}` | `211705859/500000000 + 1 * f * w + 1 * h * r + -1 * f * h + -1 * r` |
| 190 | bound | `{"direction":"lo","ref":"351:190","triangle":"FHS","value":"93/1000"}` | `-1 * f * k + -1 * h * j + 1 * f * h + 1 * j + -93/1000` |
| 192 | bound | `{"direction":"lo","ref":"351:192","triangle":"FPQ","value":"22907/200000"}` | `1 * p * v + -1 * p + -1 * f * v + -1 * q * u + 1 * f * q + 1 * u + -22907/200000` |
| 193 | bound | `{"direction":"hi","ref":"351:193","triangle":"FPQ","value":"28301/62500"}` | `28301/62500 + -1 * p * v + 1 * p + 1 * f * v + 1 * q * u + -1 * f * q + -1 * u` |
| 194 | bound | `{"direction":"lo","ref":"351:194","triangle":"FPR","value":"284631/1000000"}` | `1 * p * w + -1 * p + -1 * f * w + -1 * q * r + 1 * f * q + 1 * r + -284631/1000000` |
| 196 | bound | `{"direction":"lo","ref":"351:196","triangle":"FPS","value":"98631/1000000"}` | `1 * p * k + -1 * p + -1 * f * k + -1 * q * j + 1 * f * q + 1 * j + -98631/1000000` |
| 199 | bound | `{"direction":"hi","ref":"351:199","triangle":"FQR","value":"573679/1000000"}` | `573679/1000000 + -1 * u * w + 1 * u + 1 * f * w + 1 * v * r + -1 * f * v + -1 * r` |
| 200 | bound | `{"direction":"lo","ref":"351:200","triangle":"FQS","value":"103693/1000000"}` | `1 * u * k + -1 * u + -1 * f * k + -1 * v * j + 1 * f * v + 1 * j + -103693/1000000` |
| 202 | bound | `{"direction":"lo","ref":"351:202","triangle":"FRS","value":"93/1000"}` | `-1 * r * k + 1 * r + 1 * f * k + 1 * w * j + -1 * f * w + -1 * j + -93/1000` |
| 204 | bound | `{"direction":"lo","ref":"351:204","triangle":"HPQ","value":"93/1000"}` | `1 * p * v + -1 * h * p + -1 * q * u + 1 * h * u + -93/1000` |
| 206 | bound | `{"direction":"lo","ref":"351:206","triangle":"HPR","value":"93/1000"}` | `1 * p * w + -1 * h * p + -1 * q * r + 1 * h * r + -93/1000` |
| 208 | bound | `{"direction":"lo","ref":"351:208","triangle":"HPS","value":"93/1000"}` | `1 * p * k + -1 * h * p + -1 * q * j + 1 * h * j + -93/1000` |
| 216 | bound | `{"direction":"lo","ref":"351:216","triangle":"PQS","value":"24337/250000"}` | `1 * u * k + -1 * q * u + -1 * p * k + -1 * v * j + 1 * p * v + 1 * q * j + -24337/250000` |
| 218 | bound | `{"direction":"lo","ref":"351:218","triangle":"PRS","value":"93/1000"}` | `1 * r * k + -1 * q * r + -1 * p * k + -1 * w * j + 1 * p * w + 1 * q * j + -93/1000` |
| 220 | bound | `{"direction":"lo","ref":"351:220","triangle":"QRS","value":"93/1000"}` | `1 * r * k + -1 * v * r + -1 * u * k + -1 * w * j + 1 * u * w + 1 * v * j + -93/1000` |
| 222 | coordinate | `{"box":351,"direction":"lo","value":"103767/1000000","variable":"a"}` | `1 * a + -103767/1000000` |
| 224 | coordinate | `{"box":351,"direction":"lo","value":"103767/1000000","variable":"b"}` | `1 * b + -103767/1000000` |
| 225 | coordinate | `{"box":351,"direction":"hi","value":"306519/500000","variable":"b"}` | `306519/500000 + -1 * b` |
| 226 | coordinate | `{"box":351,"direction":"lo","value":"135501/250000","variable":"c"}` | `1 * c + -135501/250000` |
| 227 | coordinate | `{"box":351,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 228 | coordinate | `{"box":351,"direction":"lo","value":"279/1000","variable":"e"}` | `1 * e + -279/1000` |
| 229 | coordinate | `{"box":351,"direction":"hi","value":"59/125","variable":"e"}` | `59/125 + -1 * e` |
| 230 | coordinate | `{"box":351,"direction":"lo","value":"279/1000","variable":"f"}` | `1 * f + -279/1000` |
| 231 | coordinate | `{"box":351,"direction":"hi","value":"306519/500000","variable":"f"}` | `306519/500000 + -1 * f` |
| 232 | coordinate | `{"box":351,"direction":"lo","value":"135501/250000","variable":"h"}` | `1 * h + -135501/250000` |
| 233 | coordinate | `{"box":351,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 235 | coordinate | `{"box":351,"direction":"hi","value":"136503/200000","variable":"p"}` | `136503/200000 + -1 * p` |
| 236 | coordinate | `{"box":351,"direction":"lo","value":"216837/1000000","variable":"q"}` | `1 * q + -216837/1000000` |
| 237 | coordinate | `{"box":351,"direction":"hi","value":"694771/1000000","variable":"q"}` | `694771/1000000 + -1 * q` |
| 238 | coordinate | `{"box":351,"direction":"lo","value":"21413/40000","variable":"u"}` | `1 * u + -21413/40000` |
| 239 | coordinate | `{"box":351,"direction":"hi","value":"830823/1000000","variable":"u"}` | `830823/1000000 + -1 * u` |
| 240 | coordinate | `{"box":351,"direction":"lo","value":"103767/1000000","variable":"v"}` | `1 * v + -103767/1000000` |
| 241 | coordinate | `{"box":351,"direction":"hi","value":"379/1000","variable":"v"}` | `379/1000 + -1 * v` |
| 242 | coordinate | `{"box":351,"direction":"lo","value":"332981/500000","variable":"r"}` | `1 * r + -332981/500000` |
| 243 | coordinate | `{"box":351,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 244 | coordinate | `{"box":351,"direction":"lo","value":"332981/500000","variable":"w"}` | `1 * w + -332981/500000` |
| 245 | coordinate | `{"box":351,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 246 | coordinate | `{"box":351,"direction":"lo","value":"268487/500000","variable":"j"}` | `1 * j + -268487/500000` |
| 247 | coordinate | `{"box":351,"direction":"hi","value":"871013/1000000","variable":"j"}` | `871013/1000000 + -1 * j` |
| 248 | coordinate | `{"box":351,"direction":"lo","value":"268487/500000","variable":"k"}` | `1 * k + -268487/500000` |
| 249 | coordinate | `{"box":351,"direction":"hi","value":"871013/1000000","variable":"k"}` | `871013/1000000 + -1 * k` |
| 252 | physical | `{"factor":4}` | `-93/1000 + 1 * e` |
| 253 | physical | `{"factor":6}` | `-93/1000 + 1 * f` |
| 259 | physical | `{"factor":21}` | `-93/1000 + 1 * c` |
| 261 | physical | `{"factor":28}` | `907/1000 + -1 * a` |
| 264 | physical | `{"factor":52}` | `-93/1000 + 1 * h` |
| 265 | physical | `{"factor":57}` | `907/1000 + -1 * b` |
| 268 | physical | `{"factor":94}` | `907/1000 + -1 * e` |
| 270 | physical | `{"factor":129}` | `1 * e + -1 * a` |
| 272 | physical | `{"factor":131}` | `1 * f + -1 * b` |
| 273 | physical | `{"factor":132}` | `1 * c + -1 * f` |
| 274 | physical | `{"factor":133}` | `1 * f + -1 * e` |
| 275 | physical | `{"factor":134}` | `1 * c * h + -135501/250000` |
| 277 | physical | `{"factor":136}` | `346/625 + -1 * c * h + 1 * f * h + 1 * c * e + -1 * e * f` |
| 278 | physical | `{"factor":137}` | `721/1000 + -1 * f + -1 * e + 1 * e * f` |
| 280 | physical | `{"factor":139}` | `54153430769/125000000000 + -77403430769/125000000000 * v + 93/1000 * e + 93/1000 * h` |
| 281 | physical | `{"factor":140}` | `907/1000 + -1 * p + -1 * q` |
| 282 | physical | `{"factor":141}` | `721/1000 * c * h + -907/1000 * b * h + -907/1000 * a * c + 1093/1000 * a * b` |
| 283 | physical | `{"factor":142}` | `1 * p + -102650331/896233000` |
| 284 | physical | `{"factor":143}` | `1 * q + -102650331/896233000` |
| 285 | physical | `{"factor":144}` | `1 * c * h * p + -1 * b * h * p + -93/1000 * c + -93/1000 * b` |
| 287 | physical | `{"factor":146}` | `519841/93000 * j + -1 + -333841/93000 * f + -1 * r` |
| 289 | physical | `{"factor":148}` | `519841/93000 * k + -1 + -333841/93000 * e + -1 * w` |
| 290 | physical | `{"factor":149}` | `333841/93000 + 1 * e + 1 * w + -519841/93000 * k` |
| 598 | physical | `{"factor":457}` | `-125758073271/250000000000 * c * e + 125758073271/250000000000 * b * e + 1023/1000 * c * q + -1023/1000 * b * q` |
| 721 | physical | `{"factor":580}` | `122338493199/200000000000 * f * h + 82261506801/200000000000 * a * f + -1023/1000 * h * p + -1023/1000 * f * q + 1023/1000 * p` |
| 759 | physical | `{"factor":618}` | `-6888533/15625000 * q + -4547921/7812500 * c * q + 6888533/15625000 * e * p + -6888533/15625000 * c * e + 1023/1000 * c + 1023/1000 * f * q + -1023/1000 * p` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 4780300 | 0, 33 |
| 1 | 15733600 | 0, 34 |
| 2 | 36600 | 0, 57 |
| 3 | 3190800 | 0, 172 |
| 4 | 36600 | 0, 218 |
| 5 | 10780600 | 0, 233 |
| 6 | 10805300 | 0, 236 |
| 7 | 36600 | 1, 62 |
| 8 | 930200 | 4, 34 |
| 9 | 3154200 | 4, 132 |
| 10 | 3154200 | 5, 36 |
| 11 | 36600 | 5, 188 |
| 12 | 36600 | 6, 31 |
| 13 | 7776900 | 6, 34 |
| 14 | 36600 | 6, 196 |
| 15 | 5652900 | 6, 222 |
| 16 | 4900 | 6, 228 |
| 17 | 17125100 | 8, 41 |
| 18 | 36600 | 8, 50 |
| 19 | 7315600 | 8, 52 |
| 20 | 3154200 | 8, 54 |
| 21 | 17161700 | 8, 64 |
| 22 | 3154200 | 8, 122 |
| 23 | 7315600 | 8, 164 |
| 24 | 3117600 | 8, 166 |
| 25 | 7315600 | 8, 177 |
| 26 | 21275100 | 8, 204 |
| 27 | 12711100 | 8, 232 |
| 28 | 2912800 | 8, 238 |
| 29 | 4900 | 8, 274 |
| 30 | 36600 | 12, 202 |
| 31 | 13880100 | 16, 60 |
| 32 | 2682700 | 16, 64 |
| 33 | 36891900 | 16, 132 |
| 34 | 2478200 | 16, 190 |
| 35 | 14035300 | 17, 36 |
| 36 | 83031700 | 17, 172 |
| 37 | 14530600 | 17, 188 |
| 38 | 31968700 | 17, 245 |
| 39 | 9130400 | 17, 270 |
| 40 | 2756800 | 17, 274 |
| 41 | 12986500 | 20, 62 |
| 42 | 36550600 | 21, 132 |
| 43 | 219000 | 21, 188 |
| 44 | 155200 | 22, 60 |
| 45 | 3154200 | 22, 87 |
| 46 | 4783800 | 22, 162 |
| 47 | 341300 | 23, 132 |
| 48 | 17404100 | 24, 60 |
| 49 | 3262800 | 24, 162 |
| 50 | 17404100 | 25, 36 |
| 51 | 873953100 | 25, 172 |
| 52 | 1266600 | 25, 270 |
| 53 | 10838800 | 26, 202 |
| 54 | 3154200 | 31, 132 |
| 55 | 24700200 | 31, 188 |
| 56 | 4194500 | 31, 275 |
| 57 | 772000 | 32, 162 |
| 58 | 9249000 | 34, 56 |
| 59 | 11584800 | 34, 60 |
| 60 | 5664100 | 34, 68 |
| 61 | 135083800 | 34, 70 |
| 62 | 6505200 | 34, 96 |
| 63 | 24477300 | 34, 110 |
| 64 | 4024200 | 34, 125 |
| 65 | 10626200 | 34, 148 |
| 66 | 8156100 | 34, 152 |
| 67 | 33098500 | 34, 162 |
| 68 | 4024200 | 34, 168 |
| 69 | 4792100 | 34, 184 |
| 70 | 9618800 | 34, 190 |
| 71 | 149270700 | 34, 192 |
| 72 | 31192000 | 34, 218 |
| 73 | 193294800 | 34, 238 |
| 74 | 10334400 | 34, 243 |
| 75 | 12284800 | 34, 249 |
| 76 | 7713400 | 34, 272 |
| 77 | 31085700 | 34, 274 |
| 78 | 10570950 | 34, 287 |
| 79 | 851480 | 34, 290 |
| 80 | 3154200 | 36, 44 |
| 81 | 21311700 | 36, 104 |
| 82 | 66361800 | 36, 120 |
| 83 | 13479700 | 36, 122 |
| 84 | 45300 | 36, 124 |
| 85 | 11443800 | 36, 132 |
| 86 | 1010000 | 36, 143 |
| 87 | 920622700 | 36, 146 |
| 88 | 20694100 | 36, 157 |
| 89 | 14559500 | 36, 180 |
| 90 | 277700 | 36, 182 |
| 91 | 3540500 | 36, 190 |
| 92 | 23490100 | 36, 193 |
| 93 | 11562300 | 36, 224 |
| 94 | 6463200 | 36, 226 |
| 95 | 1266600 | 36, 236 |
| 96 | 2731200 | 36, 241 |
| 97 | 1787800 | 36, 273 |
| 98 | 11443800 | 36, 278 |
| 99 | 196207600 | 36, 283 |
| 100 | 1243500 | 37, 274 |
| 101 | 7171700 | 38, 138 |
| 102 | 12407000 | 38, 202 |
| 103 | 1662900 | 38, 274 |
| 104 | 16322100 | 39, 52 |
| 105 | 138787900 | 39, 64 |
| 106 | 137606200 | 40, 62 |
| 107 | 496800 | 42, 52 |
| 108 | 926900 | 42, 146 |
| 109 | 2792200 | 43, 202 |
| 110 | 1118700 | 44, 62 |
| 111 | 3154200 | 44, 80 |
| 112 | 5741100 | 44, 120 |
| 113 | 3262800 | 44, 140 |
| 114 | 133256300 | 44, 172 |
| 115 | 24736800 | 44, 190 |
| 116 | 21944600 | 44, 202 |
| 117 | 6783700 | 44, 249 |
| 118 | 182269200 | 45, 122 |
| 119 | 187759200 | 46, 122 |
| 120 | 34832800 | 46, 172 |
| 121 | 4814200 | 47, 138 |
| 122 | 2237400 | 47, 218 |
| 123 | 344800 | 48, 64 |
| 124 | 97646500 | 49, 218 |
| 125 | 8476800 | 52, 62 |
| 126 | 21311700 | 52, 80 |
| 127 | 496800 | 52, 169 |
| 128 | 21337300 | 52, 196 |
| 129 | 19310300 | 52, 228 |
| 130 | 5558800 | 52, 246 |
| 131 | 11445000 | 52, 272 |
| 132 | 84445600 | 53, 122 |
| 133 | 8040400 | 53, 132 |
| 134 | 15637900 | 53, 218 |
| 135 | 21731800 | 53, 243 |
| 136 | 5795700 | 54, 120 |
| 137 | 11707000 | 54, 122 |
| 138 | 277700 | 55, 188 |
| 139 | 10892400 | 55, 243 |
| 140 | 24240000 | 57, 202 |
| 141 | 1615200 | 58, 64 |
| 142 | 23248700 | 58, 172 |
| 143 | 635200 | 58, 270 |
| 144 | 718040800 | 60, 122 |
| 145 | 1055300 | 60, 125 |
| 146 | 3804200 | 60, 138 |
| 147 | 121677700 | 60, 157 |
| 148 | 12046200 | 60, 159 |
| 149 | 4826800 | 60, 172 |
| 150 | 20223600 | 60, 177 |
| 151 | 14559500 | 60, 181 |
| 152 | 2237400 | 60, 218 |
| 153 | 1266600 | 60, 222 |
| 154 | 2731200 | 60, 240 |
| 155 | 10892400 | 60, 243 |
| 156 | 1464600 | 60, 244 |
| 157 | 14475100 | 60, 272 |
| 158 | 1471400 | 62, 62 |
| 159 | 1670400 | 62, 64 |
| 160 | 1471400 | 62, 70 |
| 161 | 6744900 | 62, 118 |
| 162 | 4441800 | 62, 120 |
| 163 | 7948300 | 62, 126 |
| 164 | 2927100 | 62, 137 |
| 165 | 1373000 | 62, 138 |
| 166 | 24736800 | 62, 155 |
| 167 | 1471400 | 62, 161 |
| 168 | 4272800 | 62, 166 |
| 169 | 3336600 | 62, 172 |
| 170 | 1471400 | 62, 174 |
| 171 | 27374200 | 62, 176 |
| 172 | 51317800 | 62, 202 |
| 173 | 10626200 | 62, 227 |
| 174 | 16631400 | 62, 232 |
| 175 | 1464600 | 62, 240 |
| 176 | 7334400 | 62, 242 |
| 177 | 12532400 | 62, 246 |
| 178 | 10260600 | 62, 249 |
| 179 | 27495300 | 62, 274 |
| 180 | 7334430 | 62, 287 |
| 181 | 1079800 | 63, 122 |
| 182 | 22575800 | 63, 162 |
| 183 | 1615200 | 64, 70 |
| 184 | 24477300 | 64, 90 |
| 185 | 5197400 | 64, 118 |
| 186 | 10875300 | 64, 125 |
| 187 | 2719200 | 64, 138 |
| 188 | 689700 | 64, 161 |
| 189 | 11134400 | 64, 166 |
| 190 | 15905300 | 64, 172 |
| 191 | 23121600 | 64, 184 |
| 192 | 1615200 | 64, 190 |
| 193 | 25703900 | 64, 194 |
| 194 | 1615200 | 64, 202 |
| 195 | 11134400 | 64, 204 |
| 196 | 18012600 | 64, 229 |
| 197 | 53529500 | 64, 243 |
| 198 | 10260600 | 64, 244 |
| 199 | 2720700 | 64, 274 |
| 200 | 1079800 | 66, 122 |
| 201 | 277700 | 66, 202 |
| 202 | 13095900 | 68, 172 |
| 203 | 2102500 | 70, 116 |
| 204 | 6160500 | 70, 166 |
| 205 | 716600 | 70, 172 |
| 206 | 97646500 | 70, 194 |
| 207 | 2620000 | 70, 204 |
| 208 | 371300 | 70, 226 |
| 209 | 16725000 | 70, 229 |
| 210 | 2792200 | 70, 278 |
| 211 | 36600 | 72, 202 |
| 212 | 3085700 | 73, 138 |
| 213 | 6382600 | 75, 132 |
| 214 | 314600 | 78, 119 |
| 215 | 6200 | 78, 162 |
| 216 | 36600 | 78, 190 |
| 217 | 12200 | 78, 229 |
| 218 | 21275100 | 79, 122 |
| 219 | 5961900 | 79, 132 |
| 220 | 3929300 | 80, 117 |
| 221 | 2807700 | 80, 184 |
| 222 | 105100 | 80, 283 |
| 223 | 3929300 | 87, 132 |
| 224 | 8686000 | 89, 226 |
| 225 | 18467400 | 90, 138 |
| 226 | 36600 | 92, 202 |
| 227 | 278000 | 96, 120 |
| 228 | 21311700 | 96, 122 |
| 229 | 2807700 | 96, 132 |
| 230 | 36600 | 96, 146 |
| 231 | 36600 | 102, 138 |
| 232 | 36600 | 104, 127 |
| 233 | 21275100 | 104, 146 |
| 234 | 6200 | 104, 162 |
| 235 | 2807700 | 104, 239 |
| 236 | 7300 | 104, 274 |
| 237 | 2807700 | 112, 138 |
| 238 | 16523100 | 116, 138 |
| 239 | 21373900 | 116, 166 |
| 240 | 689700 | 116, 218 |
| 241 | 855800 | 116, 249 |
| 242 | 1732600 | 116, 270 |
| 243 | 25834200 | 117, 146 |
| 244 | 3136600 | 118, 162 |
| 245 | 2441600 | 118, 218 |
| 246 | 5637600 | 118, 274 |
| 247 | 314600 | 119, 146 |
| 248 | 2771200 | 119, 226 |
| 249 | 6093500 | 120, 132 |
| 250 | 5481200 | 120, 184 |
| 251 | 6665500 | 120, 190 |
| 252 | 1875500 | 120, 202 |
| 253 | 5678900 | 120, 204 |
| 254 | 2719200 | 120, 218 |
| 255 | 7590000 | 120, 220 |
| 256 | 8985400 | 120, 229 |
| 257 | 3580100 | 121, 188 |
| 258 | 34068400 | 121, 245 |
| 259 | 21111200 | 121, 274 |
| 260 | 4309400 | 122, 124 |
| 261 | 7000800 | 122, 128 |
| 262 | 8878400 | 122, 139 |
| 263 | 4309400 | 122, 142 |
| 264 | 6417800 | 122, 157 |
| 265 | 2567700 | 122, 160 |
| 266 | 1648600 | 122, 162 |
| 267 | 80638100 | 122, 165 |
| 268 | 1079800 | 122, 178 |
| 269 | 1614200 | 122, 196 |
| 270 | 6665500 | 122, 208 |
| 271 | 2720700 | 122, 247 |
| 272 | 6814000 | 122, 249 |
| 273 | 32375100 | 122, 253 |
| 274 | 31553500 | 122, 259 |
| 275 | 93988300 | 122, 261 |
| 276 | 80227900 | 122, 264 |
| 277 | 16832900 | 122, 265 |
| 278 | 15349100 | 122, 275 |
| 279 | 8598000 | 122, 277 |
| 280 | 13625100 | 122, 278 |
| 281 | 4410600 | 122, 280 |
| 282 | 2912800 | 122, 283 |
| 283 | 1266600 | 122, 284 |
| 284 | 7633900 | 124, 166 |
| 285 | 10838800 | 124, 202 |
| 286 | 3361100 | 124, 204 |
| 287 | 10626200 | 124, 281 |
| 288 | 1380800 | 132, 155 |
| 289 | 1082100 | 132, 157 |
| 290 | 1463500 | 132, 166 |
| 291 | 164972600 | 132, 172 |
| 292 | 1118700 | 132, 175 |
| 293 | 689700 | 132, 177 |
| 294 | 1463500 | 132, 187 |
| 295 | 1082100 | 132, 194 |
| 296 | 36600 | 132, 206 |
| 297 | 1464600 | 132, 237 |
| 298 | 11624700 | 132, 242 |
| 299 | 1809700 | 132, 245 |
| 300 | 2720700 | 132, 247 |
| 301 | 2720700 | 132, 249 |
| 302 | 22145100 | 132, 252 |
| 303 | 36038100 | 132, 253 |
| 304 | 4587700 | 132, 259 |
| 305 | 44868700 | 132, 261 |
| 306 | 22802400 | 132, 264 |
| 307 | 16273800 | 132, 265 |
| 308 | 22798600 | 132, 275 |
| 309 | 17619400 | 132, 278 |
| 310 | 21337300 | 138, 156 |
| 311 | 7911400 | 138, 173 |
| 312 | 8534100 | 138, 174 |
| 313 | 4272800 | 138, 178 |
| 314 | 2441600 | 138, 182 |
| 315 | 219000 | 138, 188 |
| 316 | 17528000 | 138, 222 |
| 317 | 11457200 | 138, 225 |
| 318 | 55392700 | 138, 228 |
| 319 | 41303900 | 138, 231 |
| 320 | 496800 | 138, 232 |
| 321 | 2807700 | 138, 239 |
| 322 | 44011000 | 138, 242 |
| 323 | 7718700 | 138, 244 |
| 324 | 8343800 | 140, 172 |
| 325 | 11624700 | 140, 243 |
| 326 | 732310 | 140, 290 |
| 327 | 8694200 | 142, 274 |
| 328 | 4494600 | 146, 154 |
| 329 | 189222800 | 146, 159 |
| 330 | 1485600 | 146, 160 |
| 331 | 11707000 | 146, 167 |
| 332 | 6665500 | 146, 170 |
| 333 | 10115000 | 146, 184 |
| 334 | 8371500 | 146, 224 |
| 335 | 3190800 | 146, 226 |
| 336 | 14475100 | 146, 229 |
| 337 | 2731200 | 146, 241 |
| 338 | 1077400 | 146, 244 |
| 339 | 1099200 | 148, 172 |
| 340 | 62415100 | 148, 274 |
| 341 | 7590000 | 150, 172 |
| 342 | 2884600 | 152, 274 |
| 343 | 24700200 | 156, 188 |
| 344 | 1118700 | 156, 218 |
| 345 | 6248300 | 156, 243 |
| 346 | 2792200 | 157, 202 |
| 347 | 1463500 | 158, 200 |
| 348 | 1118700 | 158, 202 |
| 349 | 344800 | 159, 162 |
| 350 | 16157000 | 160, 226 |
| 351 | 1976800 | 160, 274 |
| 352 | 20810200 | 162, 164 |
| 353 | 12288300 | 162, 173 |
| 354 | 2898000 | 162, 228 |
| 355 | 92400 | 162, 230 |
| 356 | 15843100 | 162, 232 |
| 357 | 59088300 | 162, 235 |
| 358 | 17044300 | 162, 236 |
| 359 | 2720700 | 162, 238 |
| 360 | 819800 | 162, 241 |
| 361 | 40562000 | 162, 245 |
| 362 | 3075800 | 162, 275 |
| 363 | 33500 | 162, 282 |
| 364 | 38829800 | 164, 274 |
| 365 | 7633900 | 166, 249 |
| 366 | 11022100 | 166, 274 |
| 367 | 40562000 | 169, 249 |
| 368 | 16583100 | 172, 190 |
| 369 | 5758400 | 172, 202 |
| 370 | 3363200 | 172, 204 |
| 371 | 4587100 | 173, 188 |
| 372 | 23560000 | 175, 202 |
| 373 | 277700 | 178, 202 |
| 374 | 732300 | 178, 270 |
| 375 | 290100 | 178, 274 |
| 376 | 1118700 | 182, 192 |
| 377 | 3540500 | 182, 204 |
| 378 | 5335000 | 182, 226 |
| 379 | 7633900 | 182, 233 |
| 380 | 17056500 | 184, 270 |
| 381 | 12200 | 184, 274 |
| 382 | 36600 | 188, 192 |
| 383 | 277700 | 188, 204 |
| 384 | 21772600 | 188, 222 |
| 385 | 36600 | 188, 224 |
| 386 | 48761900 | 188, 226 |
| 387 | 732300 | 188, 239 |
| 388 | 732300 | 188, 240 |
| 389 | 7570800 | 188, 242 |
| 390 | 4738800 | 188, 244 |
| 391 | 14073600 | 188, 248 |
| 392 | 6837300 | 188, 273 |
| 393 | 7718700 | 188, 281 |
| 394 | 7570840 | 188, 287 |
| 395 | 4738780 | 188, 289 |
| 396 | 8316600 | 189, 274 |
| 397 | 11800 | 190, 222 |
| 398 | 3540500 | 190, 240 |
| 399 | 42318600 | 190, 243 |
| 400 | 42318600 | 190, 274 |
| 401 | 5558800 | 190, 283 |
| 402 | 1463500 | 192, 216 |
| 403 | 10892400 | 192, 243 |
| 404 | 2542000 | 193, 245 |
| 405 | 1464600 | 194, 241 |
| 406 | 442200 | 199, 274 |
| 407 | 3540500 | 200, 270 |
| 408 | 24240000 | 202, 206 |
| 409 | 53529500 | 202, 235 |
| 410 | 35944000 | 202, 253 |
| 411 | 2914000 | 202, 259 |
| 412 | 21655000 | 202, 261 |
| 413 | 56496800 | 202, 268 |
| 414 | 6467000 | 202, 274 |
| 415 | 2792200 | 202, 275 |
| 416 | 2792200 | 202, 277 |
| 417 | 10260600 | 202, 284 |
| 418 | 11754400 | 204, 274 |
| 419 | 968200 | 208, 270 |
| 420 | 2720700 | 216, 274 |
| 421 | 968200 | 218, 233 |
| 422 | 4024200 | 222, 233 |
| 423 | 830300 | 224, 233 |
| 424 | 13375400 | 226, 229 |
| 425 | 3561400 | 226, 243 |
| 426 | 19595900 | 226, 274 |
| 427 | 29684500 | 227, 270 |
| 428 | 64748100 | 229, 243 |
| 429 | 10186600 | 229, 274 |
| 430 | 102036300 | 229, 275 |
| 431 | 13215800 | 233, 243 |
| 432 | 62311100 | 233, 274 |
| 433 | 496800 | 233, 275 |
| 434 | 12200 | 235, 274 |
| 435 | 6820400 | 236, 245 |
| 436 | 4542600 | 236, 274 |
| 437 | 7602300 | 237, 243 |
| 438 | 987900 | 239, 245 |
| 439 | 23106400 | 239, 270 |
| 440 | 20225500 | 239, 274 |
| 441 | 987900 | 240, 243 |
| 442 | 9820700 | 240, 274 |
| 443 | 2792500 | 243, 274 |
| 444 | 1199900 | 243, 278 |
| 445 | 5213480 | 243, 290 |
| 446 | 29196800 | 244, 274 |
| 447 | 21772600 | 245, 275 |
| 448 | 33254700 | 245, 278 |
| 449 | 5213480 | 245, 287 |
| 450 | 8265300 | 246, 270 |
| 451 | 2279800 | 249, 272 |
| 452 | 1615200 | 249, 275 |
| 453 | 918400 | 270, 272 |
| 454 | 1930500 | 270, 285 |
| 455 | 4547500 | 270, 287 |
| 456 | 447530 | 270, 290 |
| 457 | 3098100 | 274, 274 |
| 458 | 10080 | 274, 287 |
| 459 | 1220980 | 274, 290 |
| 460 | 24200 | 233, 598 |
| 461 | 11900 | 224, 721 |
| 462 | 14233200 | 243, 721 |
| 463 | 9127900 | 233, 759 |
| 464 | 57349100 | 243, 759 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `a * b` | 66791095222221/5000000000 |
| `a * c` | -10880423042103/5000000 |
| `a * c * h` | -100 |
| `a * a * c` | 10089100 |
| `1` | 1439303935240388201554344803/208374172500000000000 |
| `h` | -19030434383/10000 |
| `a` | -596811654449959241941/208374172500000 |
| `a * c * q` | -100 |
| `a * c * e * p` | 100 |
| `q` | -3890016400066003/232500000 |
| `e * p` | 3260580147316003/232500000 |
| `a * p` | 955224652455674323/465000000000 |
| `a * c * h * r` | 100 |
| `h * r` | -289936993/5000000 |
| `a * r` | 453501682295999/156250000 |
| `a * c * p * v` | -100 |
| `a * c * e * u` | -11443800 |
| `p * v` | -1085997199/5000000 |
| `v` | -313725033494560860183193/86176250000000000 |
| `q * u` | 85997199/5000000 |
| `e * u` | 493319494399965997859/137882000000000 |
| `a * c * w * j` | -100 |
| `a * c * q * j` | 100 |
| `q * r` | 9502704422046633/1250000000 |
| `p * w` | 76507577367/1250000000 |
| `b * q` | -353960984737/5000000000 |
| `a * b * p` | -117300 |
| `b` | -7131687/5000 |
| `a * f * q` | -100 |
| `a * a * f` | -930200 |
| `a * a * f * p` | 100 |
| `a * f` | -242014084148939743734589/186000000000000000 |
| `a * c * f` | 2756800 |
| `f * v` | 105241654689600167/10000000000 |
| `u` | -4091612689600167/10000000000 |
| `c` | -62797042564503833/10000000000 |
| `a * u` | -7755382960108007291/4481165000000 |
| `b * v` | -862923496249/70018203125 |
| `a * e * f * u` | 100 |
| `f * w` | 141947349086962575864857/208374172500000000 |
| `f * h` | 568576771257400623774261293/137882000000000000000 |
| `r` | -332246129331749451864857/208374172500000000 |
| `b * f * h` | -41719309319/2000000000 |
| `a * f * r` | -3598154696499473/15500000000 |
| `b * h` | 81848234629/1250000000 |
| `b * e * f * h` | 31/2 |
| `a * b * e * f` | 31/2 |
| `e * f` | 19765718582789/930000 |
| `b * h * q` | 283/5 |
| `b * h * p` | 263/10 |
| `b * f * h * k` | -31/2 |
| `b * h * j` | 31/2 |
| `a * b * f * k` | -31/2 |
| `a * b * j` | 31/2 |
| `p` | -23296028422279/10000000 |
| `f * k` | 1501391942417729277226643/208374172500000000 |
| `f * q` | 2101756590649/310000000 |
| `j` | -311697327614660983176643/208374172500000000 |
| `b * e * h` | 33273134209/1250000000 |
| `a * b * k` | 31/2 |
| `a * b * e * j` | -31/2 |
| `a * p * k` | -17867/2325 |
| `a * a * p` | -2653700 |
| `a * e * p * j` | 100 |
| `k` | -18695212911497/9300000 |
| `e * j` | 2893587632147/465000 |
| `a * f * p * k` | -200 |
| `a * p * j` | 29111/775 |
| `h * u` | -14865367/465000 |
| `a * p * p * k` | 100 |
| `a * p * q * j` | -100 |
| `p * k` | -15775426167/5000000000 |
| `q * j` | 2687288211177/155000000000 |
| `a * e * p * u` | -100 |
| `c * e` | 65289029760068164496741/8962330000000000 |
| `a * h * p` | -100 |
| `h * p` | 4908304305939351/5000000000 |
| `a * p * u` | -100 |
| `b * f * q` | 263/10 |
| `a * b * f` | -10880690681/2000000000 |
| `a * f * p` | 1889/775 |
| `a * e * p` | -5345020 |
| `f` | -1805876605125979/232500000 |
| `a * r * r` | -30 |
| `a * f * r * k` | 100 |
| `a * r * j` | -72479/3100 |
| `c * e * p * v` | 100 |
| `c * e * q * u` | -100 |
| `a * q * u` | 100 |
| `c * e * p * k` | 100 |
| `c * e * q * j` | -100 |
| `a * c * e * j` | 14368569/2 |
| `a * a * c * j` | -2682700 |
| `a * q * j` | -100 |
| `a * a * j` | 1357900 |
| `a * j` | 2631953413228753969/465000000000 |
| `c * e * f * v` | 100 |
| `c * c * e * v` | -100 |
| `c * e * u` | 1187500 |
| `c * c * e` | -7202300 |
| `c * v` | 1670346108491357507373733/208374172500000000 |
| `c * e * h * j` | 93/2 |
| `c * e * f * h` | 307/2 |
| `c * e * j` | 1924600 |
| `a * c * f * k` | -567231/2 |
| `a * c * f * h` | -100 |
| `a * c * j` | -2895169/2 |
| `a * f * k` | 153600 |
| `a * h * j` | -100 |
| `a * f * h` | 100 |
| `h * j` | 822025876581499/689410000 |
| `c * e * v` | 37266251243/625000000 |
| `a * c * e` | -9074600 |
| `a * a` | -4904900 |
| `a * e * u` | 6202500 |
| `c * e * q` | -100 |
| `a * q` | 5290800 |
| `c * e * f * w` | -100 |
| `c * e * h * r` | -100 |
| `c * e * r` | 417605428703/156250 |
| `a * c * f * w` | -3910800 |
| `a * c * r` | -2057100 |
| `a * f * w` | 2119800 |
| `w` | -70545431753/10000 |
| `c * e * w` | 100 |
| `a * c * w` | -55830500 |
| `a * w` | 30260390 |
| `e` | -146059421253041/7500000 |
| `c * e * e` | -56838571/5 |
| `a * e` | 14875690 |
| `c * e * f` | -10489200 |
| `a * c * h * p` | 100 |
| `c * h` | -45288663019/930000000 |
| `a * a * c * r` | -12986500 |
| `c * f * h * v` | -100 |
| `c * c * h * v` | 100 |
| `c * c * h` | 100 |
| `c * h * r` | -100 |
| `a * c * p * q` | -100 |
| `c * q` | 107917919803659/5000000 |
| `c * e * f * q` | -100 |
| `a * c * e * f` | -169/2 |
| `b * e` | 27406865791/1250000000 |
| `a * c * k` | 158231/2 |
| `c * c * q` | -105200 |
| `a * p * u * v` | 100 |
| `a * q * u * u` | -100 |
| `c * v * k` | -786271/9300 |
| `a * e * u * j` | -100 |
| `c * v * v` | 40358748757/625000000 |
| `c * e * u * v` | -100 |
| `c * w * j` | -100 |
| `c * w` | 25567641227/2000 |
| `r * k` | -972216187392277631/69458057500000000 |
| `w * j` | -38233934444473167107/208374172500000000 |
| `e * f * f * v` | -28974100 |
| `e * f * u` | 9781900 |
| `e * f * r` | -100 |
| `f * h * k` | 11699/4650 |
| `e * f * h` | -68729057699/4650 |
| `h * k` | -100 |
| `e * h * j` | -4273800 |
| `a * k` | -398404259/9300 |
| `a * e * j` | -21297000 |
| `a * q * r` | -7944600 |
| `a * a * r` | 6726600 |
| `e * h * p * r` | 100 |
| `a * e * p * r` | 100 |
| `a * a * p * r` | -100 |
| `p * q * v` | -100 |
| `a * p * q` | 100 |
| `q * q * u` | 100 |
| `e * p * p * v` | 100 |
| `a * e * p * p` | -100 |
| `e * p * q * u` | -100 |
| `q * u * k` | -100 |
| `a * v * j` | 100 |
| `e * p * v * j` | -100 |
| `a * p * v * j` | -100 |
| `a * a * p * j` | -100 |
| `u * k` | -78581/1000 |
| `v * j` | 78581/1000 |
| `a * r * k` | 100 |
| `a * w * j` | -100 |
| `a * p * w * j` | 200 |
| `f * h * q` | -417/10 |
| `e * f * h * p` | -100 |
| `a * f * h * p` | -100 |
| `h * q * j` | 200 |
| `e * h * p * j` | -100 |
| `a * h * p * j` | 100 |
| `b * k` | 73/10 |
| `c * q * w` | -32238400 |
| `a * p * w` | -20 |
| `p * q * w` | -100 |
| `q * q * r` | 100 |
| `e * p * p * w` | 100 |
| `e * p * q * r` | -100 |
| `a * p * p * w` | -100 |
| `a * p * q * r` | 100 |
| `c * k` | -81443/10 |
| `q * k` | -17867/2325 |
| `e * q * j` | 100 |
| `e * p * k` | -214633/2325 |
| `e * p * j` | -8793/620 |
| `h * q` | -2846293/156250 |
| `e * h * p` | -549684653707/156250 |
| `f * q * v` | 200 |
| `e * f * p * v` | -100 |
| `e * p * u` | 200 |
| `p * q * k` | 100 |
| `q * q * j` | -100 |
| `e * p * p * k` | -100 |
| `e * p * q * j` | 100 |
| `e * p * r` | -3866203/156250 |
| `a * p * r` | -20 |
| `e * f * p` | 8793/620 |
| `e * q` | 16178780 |
| `e * e * p` | -20721380 |
| `q * w` | 17473280 |
| `e * p * w` | -80 |
| `e * f * q * u` | -100 |
| `a * f * q * u` | 100 |
| `e * h * p * u` | 100 |
| `v * v` | 22141251243/625000000 |
| `e * u * v` | -22141251243/625000000 |
| `c * v * w` | 10 |
| `a * e * r` | -9231700 |
| `e * r` | 51632520922/11625 |
| `f * v * v` | -100 |
| `u * v` | 100 |
| `e * f * u * v` | 100 |
| `e * u * u` | -100 |
| `a * f * u * v` | -100 |
| `a * u * u` | 100 |
| `a * c * u` | 3192800 |
| `c * h * v` | -429/5 |
| `p * v * v` | 100 |
| `q * u * v` | -100 |
| `e * p * u * v` | -100 |
| `e * q * u * u` | 100 |
| `e * f * v` | 16167500 |
| `e * e * f * u` | -17530300 |
| `u * v * k` | 100 |
| `v * v * j` | -100 |
| `e * v * j` | 100 |
| `e * u * u * k` | -100 |
| `e * u * v * j` | 100 |
| `e * e * u * j` | -100 |
| `h * v * j` | -100 |
| `f * h * v` | 100 |
| `e * f * u * k` | 100 |
| `e * h * u * j` | 100 |
| `e * f * h * u` | -100 |
| `e * v` | -11277071/5 |
| `e * e * u` | -37826429/5 |
| `h * p * w` | -100 |
| `c * h * w` | 90 |
| `c * e * q * r` | 100 |
| `r * w * k` | -100 |
| `r * w` | 120 |
| `f * w * k` | 918301/4650 |
| `w * w * j` | 100 |
| `f * w * w` | -120 |
| `e * r * r * k` | 100 |
| `e * r * r` | -100 |
| `e * f * r * k` | -100 |
| `e * r * w * j` | -100 |
| `e * f * r * w` | 100 |
| `e * r * j` | 100 |
| `e * w` | 86950 |
| `e * e * r` | 3197500 |
| `a * q * r * j` | -200 |
| `a * a * r * j` | 100 |
| `f * h * h * p` | 100 |
| `a * c * f * v` | 100 |
| `f * h * r` | 3422094498419/46500000000 |
| `f * h * j` | 80911/2325 |
| `a * a * f * r` | 1118700 |
| `c * e * p` | -100 |
| `f * p * q * v` | -100 |
| `f * q * q * u` | 100 |
| `p * p * v` | 100 |
| `p * q * u` | -100 |
| `h * p * j` | -100 |
| `f * h * p` | -100 |
| `f * q * r` | -462149/3100 |
| `p * r` | 657/10 |
| `p * w * j` | 237521/3100 |
| `f * p * w` | 258479/3100 |
| `c * f * v * v` | -100 |
| `c * u * v` | 100 |
| `f * p * v * v` | 100 |
| `f * q * u * v` | -100 |
| `p * u * v` | -100 |
| `q * u * u` | 100 |
| `f * q * v * j` | 100 |
| `a * f * q * j` | 100 |
| `p * u * k` | 100 |
| `a * q * u * j` | 100 |
| `a * a * f * j` | 344800 |
| `q * r * j` | -237521/3100 |
| `f * q * r * w` | -100 |
| `f * p * w * w` | 100 |
| `q * r * r` | 130 |
| `p * r * w` | -130 |
| `h * h * p * r` | -100 |
| `f * h * p * k` | 100 |
| `c * e * h * p` | -100 |
| `h * p * r` | 818/5 |
| `h * q * u` | -100 |
| `c * h * q * u` | 100 |
| `h * r * r` | 40 |
| `h * r * j` | -80911/2325 |
| `h * p * v * j` | 100 |
| `h * q * u * j` | -100 |
| `p * p * v * v` | -100 |
| `p * q * u * v` | 200 |
| `q * q * u * u` | -100 |
| `p * v * k` | 100 |
| `e * q * u * j` | 100 |
| `p * u * v * k` | -100 |
| `p * v * v * j` | 100 |
| `q * u * u * k` | 100 |
| `q * u * v * j` | -100 |
| `p * p * w * k` | 100 |
| `p * q * w * j` | -100 |
| `p * q * r * k` | -100 |
| `q * q * r * j` | 100 |
| `p * r * w * k` | 100 |
| `p * w * w * j` | -100 |
| `q * r * r * k` | -100 |
| `q * r * w * j` | 100 |
| `a * c * e * r` | 17032500 |
| `c * p * q * w` | 100 |
| `c * q * q * r` | -100 |
| `c * p * w * k` | -100 |
| `c * q * r * k` | 100 |
| `c * q * r` | 4262211/78125 |
| `f * h * p * w` | -100 |
| `e * f * p * w` | -100 |
| `a * e * f * p` | 100 |
| `e * f * q * r` | 100 |
| `a * e * f * r` | -100 |
| `e * q * r` | -24293600 |
| `h * p * k` | -100 |
| `f * p * q * k` | 100 |
| `p * p * k` | -100 |
| `f * q * q * j` | -100 |
| `p * q * j` | 100 |
| `a * f * j` | -71500 |
| `u * w` | -198/5 |
| `v * r` | 198/5 |
| `c * r * k` | 100 |
| `c * e * r * k` | -100 |
| `c * e * w * j` | 100 |
| `h * r * k` | 453301/4650 |
| `f * w * j` | -80911/2325 |
| `c * c * e * q` | 100 |
| `c * c * e * h` | -100 |
| `c * f * v` | 100 |
| `c * c * v` | -7394900 |
| `c * u` | -331400 |
| `c * c` | 1794900 |
| `c * h * q` | 259084/78125 |
| `b * c * e` | 100 |
| `b * c * h` | -100 |
| `c * f * h` | 100 |
| `c * f * h * k` | 93/2 |
| `c * h * j` | -93/2 |
| `b * h * k` | 31/2 |
| `b * e * h * j` | -31/2 |
| `c * e * h` | 38706521791/1250000000 |
| `e * f * k` | -25883100 |
| `e * e * f` | -811400 |
| `c * h * k` | -576179/9300 |
| `c * e * e * f` | 18797800 |
| `c * e * e * j` | -4785200 |
| `e * h` | 6821600 |
| `c * e * e * r` | -7956900 |
| `c * c * e * e` | 12907400 |
| `h * v` | -71/5 |
| `e * h * u` | 121/5 |
| `h * u * w` | 10 |
| `e * h * r` | -267301/4650 |
| `e * f * v * j` | -100 |
| `c * f * w` | 405800 |
| `c * r` | -2661293/10 |
| `c * j` | -193300 |
| `f * f * v` | -18860900 |
| `f * u` | -1364600 |
| `c * f` | 1177200 |
| `h * u * k` | 143729/9300 |
| `c * f * k` | 29400 |
| `e * f * f * w` | 1118700 |
| `e * f * j` | -92400 |
| `e * e * f * f` | 344800 |
| `e * e * f * j` | -344800 |
| `f * f * w` | -3754282589/2325 |
| `e * f * w` | -2902332301/4650 |
| `e * f * f` | 2069200 |
| `f * r` | 28051589/2325 |
| `f * q * u * k` | -100 |
| `p * v * j` | -100 |
| `e * k` | 433280659/60 |
| `e * e * j` | -2898000 |
| `f * f * q` | -12200 |
| `f * f * h` | -127411/2325 |
| `f * r * w` | 40 |
| `r * r` | -40 |
| `h * r * w` | -20 |
| `f * h * w` | 20 |
| `f * q * w` | 100 |
| `r * j` | 80911/2325 |
| `e * e` | 12511250 |
| `f * f` | 2372984856/775 |
| `f * j` | 43666644/775 |
| `b * p` | 121737/10 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `a * b` | -130091741063599/2000000000000 | 187530388143/1000000000000 | 0 |
| `a` | 363752257282543284296335127/20837417250000000000000000 | 368233/1000000 | 133945584955922761206292372820591/20837417250000000000000000000000 |
| `b` | -55781752280668300857511289/8962330000000000000000000 | 509271/1000000 | 0 |
| `1` | -3335316760527539203358942206524809201369/6511692890625000000000000000000000 | 1 | -3335316760527539203358942206524809201369/6511692890625000000000000000000000 |
| `a * c` | -198763591107139257/5000000000 | 42162310267/250000000000 | 0 |
| `c` | -427870891709900383366714118621/17364514375000000000000000000 | 114499/250000 | 0 |
| `a * c * h` | -498503/10000 | 4827542363261233/62500000000000000 | 0 |
| `a * h` | -306576283961/5000000000 | 42162310267/250000000000 | 0 |
| `c * h` | 55602599902627/38750000000000 | 13110021001/62500000000 | 728951252433640525069627/2421875000000000000000000 |
| `h` | 53161268189920137151271717/801439125000000000000000 | 114499/250000 | 6086912046477665783683460324783/200359781250000000000000000000 |
| `a * a * c` | 110843/2500 | 15525553996548211/250000000000000000 | 1720898981639393351873/625000000000000000000 |
| `a * a` | 33984825179/2500000000 | 135595542289/1000000000000 | 4608190799743366494731/2500000000000000000000 |
| `a * c * q` | -577561/10000 | 10075400797574189/125000000000000000 | 0 |
| `a * q` | -179317423543/2000000000 | 87995535311/500000000000 | 0 |
| `c * q` | 69824681806463/1250000000000 | 27361482533/125000000000 | 1910506811619820261010779/156250000000000000000000 |
| `q` | 893707724748131996287/38750000000000000000 | 238967/500000 | 213566653859886858756715529/19375000000000000000000000 |
| `a * c * e * p` | 100 | 231091917709598869/12500000000000000000 | 231091917709598869/125000000000000000 |
| `a * c * e` | 7393103/1000000 | 8137325881531/250000000000000 | 60160088386724480693/250000000000000000000 |
| `a * c * p` | 1251/25 | 1197367449272533/12500000000000000 | 1497906679039938783/312500000000000000 |
| `a * e * p` | -10689788091/2000 | 2018287650631/50000000000000 | 0 |
| `a * e` | -64494581505487/1000000000000 | 71068969/1000000000 | 0 |
| `a * p` | 685070682083/10000000000 | 10457448967/50000000000 | 7164091696670853758261/500000000000000000000 |
| `c * e * p` | -99687/1250 | 627569820493/12500000000000 | 0 |
| `c * e` | 5430740642900918136313/70018203125000000000 | 22098307/250000000 | 120010173964201859558112522091/17504550781250000000000000000 |
| `c * p` | -206363223497/5000000000 | 3251657101/12500000000 | 0 |
| `e * p` | 47062258988853/38750000000000 | 5481007/50000000 | 257948570953716214971/1937500000000000000000 |
| `e` | -394469505175511186869786701/1085282148437500000000000000 | 193/1000 | 0 |
| `p` | 3616464492563818163/310000000000000000 | 28399/50000 | 102703975124319872011037/15500000000000000000000 |
| `a * c * h * r` | 100 | 806291297969527874427/31250000000000000000000 | 806291297969527874427/312500000000000000000 |
| `a * c * r` | -592953/5000 | 7041906898484073/125000000000000000 | 0 |
| `a * h * r` | 135501/2500 | 7041906898484073/125000000000000000 | 954185426651490375573/312500000000000000000 |
| `a * r` | 350025552005383/15500000000000 | 61501907427/500000000000 | 21527239096519639471679541/7750000000000000000000000 |
| `c * h * r` | -1175233/10000 | 2189622597566019/31250000000000000 | 0 |
| `c * r` | -26560217899/2441406250 | 19123508481/125000000000 | 0 |
| `h * r` | -1583604464066899/46500000000000 | 19123508481/125000000000 | 0 |
| `r` | -11577030749320605797971855771/208374172500000000000000000 | 167019/500000 | 0 |
| `a * c * p * v` | -100 | 329555035165627075189/12500000000000000000000 | 0 |
| `a * c * v` | 32893/2000 | 11604459141717211/250000000000000000 | 381705474548504221423/500000000000000000000 |
| `a * p * v` | -543653/10000 | 2878235051534311/50000000000000000 | 0 |
| `a * v` | 95314028929/2000000000 | 101349873289/1000000000000 | 9660064754618230377481/2000000000000000000000 |
| `c * p * v` | 175233/10000 | 894963338879533/12500000000000000 | 156827110761877206189/125000000000000000000 |
| `c * v` | -80237980309034807122213/8682257187500000000000 | 31513903267/250000000000 | 0 |
| `p * v` | -2408800418719/10000000000 | 7816341967/50000000000 | 0 |
| `v` | 6997279254621316296272204579/140036406250000000000000000 | 275233/1000000 | 1925882161087188748171887682891907/140036406250000000000000000000000 |
| `a * c * e * u` | -11443800 | 1202281761670323719/125000000000000000000 | 0 |
| `a * c * u` | -101/5 | 6229439179638983/125000000000000000 | 0 |
| `a * e * u` | -1226261/10000 | 10500369100781/500000000000000 | 0 |
| `a * u` | -681080138705976811/8962330000000000 | 54406057517/500000000000 | 0 |
| `c * e * u` | -4171/200 | 3265002760943/125000000000000 | 0 |
| `c * u` | -191028982163/2500000000 | 16917112751/125000000000 | 0 |
| `e * u` | -3750048123818782203521/43088125000000000000 | 28515557/500000000 | 0 |
| `u` | 36708337048356933083685541/1120291250000000000000000 | 147749/500000 | 5423620090557688506181454997209/560145625000000000000000000000 |
| `q * u` | 33374630313/500000000 | 35307135283/250000000000 | 1178362587481203633579/125000000000000000000 |
| `a * c * w * j` | -100 | 2352271538462721260847/125000000000000000000000 | 0 |
| `a * c * w` | -284608334487/5000 | 7041906898484073/125000000000000000 | 0 |
| `a * c * j` | 86253/2500 | 14083855959278413/250000000000000000 | 1214774828055640956489/625000000000000000000 |
| `a * w * j` | -656467/5000 | 20544035655007653/500000000000000000 | 0 |
| `a * w` | -19445215941/10000000000 | 61501907427/500000000000 | 0 |
| `a * j` | -18065403072779/465000000000 | 123004183087/1000000000000 | 0 |
| `c * w * j` | -824767/10000 | 6387997649484759/125000000000000000 | 0 |
| `c * w` | -21848270353/10000000000 | 19123508481/125000000000 | 0 |
| `c * j` | -37957552853/10000000000 | 38247131461/250000000000 | 0 |
| `w * j` | -104861523715071503339/833496690000000000 | 55790859741/500000000000 | 0 |
| `w` | 14102130033662793450606529/833496690000000000000000 | 167019/500000 | 785107885364108699775617289017/138916115000000000000000000000 |
| `j` | 32674294658221554302245873/833496690000000000000000 | 334039/1000000 | 10914488713337669777567909171047/833496690000000000000000000000 |
| `a * c * q * j` | 100 | 3365576807020884519371/125000000000000000000000 | 3365576807020884519371/1250000000000000000000 |
| `a * q * j` | -109013/1000 | 29393940619751129/500000000000000000 | 0 |
| `c * q * j` | -175233/10000 | 9139802263840787/125000000000000000 | 0 |
| `q * j` | 26109911811341/310000000000 | 79824297713/500000000000 | 2084205373688659073763133/155000000000000000000000 |
| `q * r` | 129057583556249/38750000000000 | 39912029373/250000000000 | 5150950065705411885701877/9687500000000000000000000 |
| `p * w` | -1633019704237/19375000000 | 4743172581/25000000000 | 0 |
| `b * q` | -163885352737/5000000000 | 121698963057/500000000000 | 0 |
| `a * b * p` | -117300 | 5325675492873057/50000000000000000 | 0 |
| `b * p` | 40214013/2500000 | 14462787129/50000000000 | 581606709621838677/125000000000000000 |
| `a * f * q` | 72299/10000 | 14696926312107909/250000000000000000 | 1062573075439089712791/2500000000000000000000 |
| `a * f` | 2381041926008670211/23250000000000000 | 61501907427/500000000000 | 48812873371063672972098185699/3875000000000000000000000000 |
| `f * q` | -42922734356129/310000000000 | 39912029373/250000000000 | 0 |
| `f` | -115629699186244897803228101877/6945805750000000000000000000 | 167019/500000 | 0 |
| `a * a * f` | -282219/10000 | 22647031877566491/500000000000000000 | 0 |
| `a * a * f * p` | 100 | 643153058291010777909/25000000000000000000000 | 643153058291010777909/250000000000000000000 |
| `a * a * p` | -1658620246/625 | 3850777805465311/50000000000000000 | 0 |
| `a * f * p` | -17128179/155000 | 1746592669019373/25000000000000000 | 0 |
| `f * p` | 10338567950991/310000000000 | 4743172581/25000000000 | 49037612031945862977771/7750000000000000000000 |
| `a * c * f` | -5738297/1000000 | 7041906898484073/125000000000000000 | 0 |
| `c * f` | 11891255860933/200000000000 | 19123508481/125000000000 | 227402532306293182072773/25000000000000000000000 |
| `f * v` | -319497027271/2500000000 | 45969140427/500000000000 | 0 |
| `b * v` | -862923496249/70018203125 | 140168185143/1000000000000 | 0 |
| `a * e * f * u` | 100 | 1753761146843341839/250000000000000000000 | 1753761146843341839/2500000000000000000 |
| `a * e * f` | -91602299/2000000 | 11869868133411/500000000000000 | 0 |
| `a * f * u` | 39207/1000 | 9086845320431823/250000000000000000 | 356267944478170484361/250000000000000000000 |
| `e * f * u` | -88333/10000 | 4762639814583/250000000000000 | 0 |
| `e * f` | 5525000796604097/62000000000000 | 32234667/500000000 | 178096560853267797630699/31000000000000000000000 |
| `f * u` | -172003521979/5000000000 | 24676890231/250000000000 | 0 |
| `f * w` | 21855955820708282901/138916115000000000 | 27895346361/250000000000 | 609679457669371567864968873261/34729028750000000000000000000 |
| `f * h` | 13287829295919191578983/534292750000000000000 | 19123508481/125000000000 | 254109916234590918851345181854823/66786593750000000000000000000000 |
| `b * f * h` | -49716503319/2000000000 | 9739048287627351/125000000000000000 | 0 |
| `b * f` | -17499818924604603/2000000000000000 | 85057933149/500000000000 | 0 |
| `b * h` | 413785936826483/10000000000000 | 58311020229/250000000000 | 24128280132764766275924607/2500000000000000000000000 |
| `a * f * r` | 853593100527/15500000000 | 10271987076550113/250000000000000000 | 8768097297245685450362209551/3875000000000000000000000000 |
| `f * r` | 1242438027011197303/46500000000000000 | 27895346361/250000000000 | 11552746365184940797498021461/3875000000000000000000000000 |
| `b * e * f * h` | 31/2 | 1879636319512078743/125000000000000000000 | 58268725904874441033/250000000000000000000 |
| `b * e * f` | 20018901/2000000 | 16416181097757/500000000000000 | 328633904194068705057/1000000000000000000000 |
| `b * e * h` | 28274887959/1250000000 | 11254026904197/250000000000000 | 318206349803741801863923/312500000000000000000000 |
| `b * e` | 54981907572853043/625000000000000 | 98289303/1000000000 | 5404133372946147317899029/625000000000000000000000 |
| `e * f * h` | -549831724287907/37200000 | 3690837136833/125000000000000 | 0 |
| `e * h` | -2080286375243823319/116250000000000000 | 22098307/250000000 | 0 |
| `a * b * e * f` | 31/2 | 6044979614170353381/500000000000000000000 | 187394368039280954811/1000000000000000000000 |
| `a * b * e` | -3998597/1000000 | 36193364911599/1000000000000000 | 0 |
| `a * b * f` | -18877884681/2000000000 | 31321137897255717/500000000000000000 | 0 |
| `b * h * q` | 283/5 | 13934409571063443/125000000000000000 | 3943437908610954369/625000000000000000 |
| `h * q` | 19969774936563/625000000000 | 27361482533/125000000000 | 546402648114709707554079/78125000000000000000000 |
| `b * h * p` | 263/10 | 1655974663483371/12500000000000000 | 435521336496126573/125000000000000000 |
| `h * p` | 36559996499/5000000000 | 3251657101/12500000000 | 118880572228508489399/62500000000000000000 |
| `b * f * h * k` | -31/2 | 3253221950950752700689/125000000000000000000000 | 0 |
| `b * f * k` | -20018901/2000000 | 28412666931158811/500000000000000000 | 0 |
| `b * h * k` | 22351/2000 | 19478154886274931/250000000000000000 | 435356239863130982781/500000000000000000000 |
| `b * k` | 29033627621/2000000000 | 170116375569/1000000000000 | 4939095500504527991349/2000000000000000000000 |
| `f * h * k` | 1397388667/37200000 | 6387997649484759/125000000000000000 | 2975505173404213538608751/1550000000000000000000000 |
| `f * k` | -8359506454662633228403/166699338000000000000 | 55790859741/500000000000 | 0 |
| `h * k` | -5927240449/99200000 | 38247131461/250000000000 | 0 |
| `k` | -892104959544926922979823/208374172500000000000000 | 334039/1000000 | 0 |
| `b * h * j` | 22351/2000 | 19478154886274931/250000000000000000 | 435356239863130982781/500000000000000000000 |
| `b * j` | 14433627621/2000000000 | 170116375569/1000000000000 | 2455396417197127991349/2000000000000000000000 |
| `h * j` | -292384645557827383/6411513000000000 | 38247131461/250000000000 | 0 |
| `a * b * f * k` | -31/2 | 10462481582061402450963/500000000000000000000000 | 0 |
| `a * b * k` | 22351/2000 | 62642463324899577/1000000000000000000 | 1400121697774830445527/2000000000000000000000 |
| `a * f * k` | -157309301/2000000 | 20544035655007653/500000000000000000 | 0 |
| `a * k` | 8225052482069/93000000000 | 123004183087/1000000000000 | 1011715861404599060567003/93000000000000000000000 |
| `a * b * j` | 22351/2000 | 62642463324899577/1000000000000000000 | 1400121697774830445527/2000000000000000000000 |
| `a * b * e * j` | -31/2 | 12089995421705618361/1000000000000000000000 | 0 |
| `a * e * j` | -34806265502501/2000000 | 23739807335791/1000000000000000 | 0 |
| `b * e * j` | -20018901/2000000 | 32832460484817/1000000000000000 | 0 |
| `e * j` | -9196121849410891/186000000000000 | 64469527/1000000000 | 0 |
| `a * p * k` | -3773729/93000 | 3493195795487713/50000000000000000 | 0 |
| `p * k` | 2722185634313/310000000000 | 9486373561/50000000000 | 25823669829480857598593/15500000000000000000000 |
| `a * e * p * j` | 100 | 674186788529128609/50000000000000000000 | 674186788529128609/500000000000000000 |
| `a * p * j` | 6201289/31000 | 3493195795487713/50000000000000000 | 21662316661404204262057/1550000000000000000000 |
| `e * p * j` | -14476677/310000 | 1830870097273/50000000000000 | 0 |
| `p * j` | -5897335853461/155000000000 | 9486373561/50000000000 | 0 |
| `a * f * p * k` | -200 | 583430068566562337547/25000000000000000000000 | 0 |
| `f * p * k` | 551307/10000 | 1584404625784659/25000000000000000 | 873493361027462999313/250000000000000000000 |
| `h * u` | -664638519739/31000000000 | 16917112751/125000000000 | 0 |
| `a * p * p * k` | 100 | 99203267396055561487/2500000000000000000000 | 99203267396055561487/25000000000000000000 |
| `a * p * p` | -101997/2500 | 296981093213833/2500000000000000 | 0 |
| `p * p * k` | -509271/10000 | 269403522758839/2500000000000000 | 0 |
| `p * p` | -63767357097/10000000000 | 806503201/2500000000 | 0 |
| `a * p * q * j` | -100 | 834758519660312312471/25000000000000000000000 | 0 |
| `a * p * q` | 73373/1250 | 2498985207297089/25000000000000000 | 183358041615009311197/31250000000000000000 |
| `p * q * j` | 509271/10000 | 2266930230751487/25000000000000000 | 1154481825545040535977/250000000000000000000 |
| `p * q` | -9556627137/200000000 | 6786423833/25000000000 | 0 |
| `a * e * p * u` | -100 | 298199982093079619/25000000000000000000 | 0 |
| `a * p * u` | -1175233/10000 | 1545077627425283/25000000000000000 | 0 |
| `e * p * u` | 2117633/10000 | 809813303243/25000000000000 | 1714887374786383819/250000000000000000 |
| `p * u` | 703471066189/10000000000 | 4195923851/25000000000 | 2951711025110824773839/250000000000000000000 |
| `a * h * p` | -100011/5000 | 1197367449272533/12500000000000000 | 0 |
| `b * f * q` | 263/10 | 20326039110817083/250000000000000000 | 5345748286144892829/2500000000000000000 |
| `a * r * r` | -30 | 10271987076550113/250000000000000000 | 0 |
| `r * r` | -89030242619/5000000000 | 27895346361/250000000000 | 0 |
| `a * f * r * k` | 100 | 3431244291063723196407/250000000000000000000000 | 3431244291063723196407/2500000000000000000000 |
| `a * r * k` | 1279/10 | 20544035655007653/500000000000000000 | 26275821602754788187/5000000000000000000 |
| `f * r * k` | -175233/10000 | 9318133603082079/250000000000000000 | 0 |
| `r * k` | 11665043860983232481/277832230000000000 | 55790859741/500000000000 | 650802825920728625700266447421/138916115000000000000000000000 |
| `a * r * j` | -178228/3875 | 20544035655007653/500000000000000000 | 0 |
| `r * j` | 10200720703571/465000000000 | 55790859741/500000000000 | 189702326010014832945037/77500000000000000000000 |
| `c * e * p * v` | 100 | 172727924403749869/12500000000000000000 | 172727924403749869/125000000000000000 |
| `c * e * v` | -39346123757/625000000 | 6082183330531/250000000000000 | 0 |
| `e * p * v` | -23209/400 | 1508553999631/50000000000000 | 0 |
| `e * v` | -6309515105823003/625000000000000 | 53119969/1000000000 | 0 |
| `c * e * q * u` | -100 | 780227914774265881/62500000000000000000 | 0 |
| `c * e * q` | -601329/10000 | 5280766128869/125000000000000 | 0 |
| `c * q * u` | 65751/2500 | 4042631682768217/62500000000000000 | 265807075773693035967/156250000000000000000 |
| `e * q * u` | 134417/2000 | 6814277109619/250000000000000 | 915954686243657123/500000000000000000 |
| `e * q` | 526810009097/2500000000 | 46120631/500000000 | 24296810036669380207/1250000000000000000 |
| `a * q * u` | 186331/2500 | 13001252346664939/250000000000000000 | 2422536351006424748809/625000000000000000000 |
| `c * e * p * k` | 100 | 209632795267661227/12500000000000000000 | 209632795267661227/125000000000000000 |
| `c * e * k` | -551427/10000 | 7381696371973/250000000000000 | 0 |
| `c * p * k` | -193481/5000 | 1086180286360939/12500000000000000 | 0 |
| `c * k` | 24685613820919/310000000000 | 38247131461/250000000000 | 944153917004167504832659/77500000000000000000000 |
| `e * p * k` | -28375169/465000 | 1830870097273/50000000000000 | 0 |
| `e * k` | -32693021239801/465000000000 | 64469527/1000000000 | 0 |
| `c * e * q * j` | -100 | 1763981836921271891/125000000000000000000 | 0 |
| `c * e * j` | 8066159/400000 | 7381696371973/250000000000000 | 59541936626057361707/100000000000000000000 |
| `e * q * j` | 69241/625 | 15406089458609/500000000000000 | 1066733040203545769/312500000000000000 |
| `a * c * e * j` | 14368569/2 | 2718184200140733709/250000000000000000000 | 39056417234431942008392421/500000000000000000000 |
| `a * a * c * j` | -2682700 | 5186140531452967854229/250000000000000000000000 | 0 |
| `a * a * j` | 1202119/10000 | 45294199350675271/1000000000000000000 | 54449017629234406099249/10000000000000000000000 |
| `c * e * f * v` | 100 | 1015840177681957089/125000000000000000000 | 1015840177681957089/1250000000000000000 |
| `c * e * f` | -12429559/400000 | 3690837136833/125000000000000 | 0 |
| `c * f * v` | 633229/10000 | 5263420609751073/125000000000000000 | 3332950569292062204717/1250000000000000000000 |
| `e * f * v` | -2609/500 | 8872044102411/500000000000000 | 0 |
| `c * c * e * v` | -100 | 696403909162468969/62500000000000000000 | 0 |
| `c * c * e` | -68467/5000 | 2530234053193/62500000000000 | 0 |
| `c * c * v` | -18487184249/2500 | 3608310410168233/62500000000000000 | 0 |
| `c * c` | 183100135767/2500000000 | 13110021001/62500000000 | 2400446625191321242767/156250000000000000000 |
| `c * e * h * j` | 93/2 | 845196852894536527/62500000000000000000 | 78603307319191897011/125000000000000000000 |
| `c * e * h` | -109611864459/1250000000 | 2530234053193/62500000000000 | 0 |
| `c * h * j` | -67053/2000 | 4379258305153039/62500000000000000 | 0 |
| `e * h * j` | -1709493730481/400000 | 7381696371973/250000000000000 | 0 |
| `c * e * f * h` | 307/2 | 422597161330241667/31250000000000000000 | 129737328528384191769/62500000000000000000 |
| `c * f * h` | 147042391/1000000 | 2189622597566019/31250000000000000 | 321967342133738214111429/31250000000000000000000 |
| `a * c * f * k` | -567231/2 | 2352271538462721260847/125000000000000000000000 | 0 |
| `a * c * k` | -26449/2000 | 14083855959278413/250000000000000000 | 0 |
| `c * f * k` | -1890561/400000 | 6387997649484759/125000000000000000 | 0 |
| `a * c * f * h` | -100 | 806291297969527874427/31250000000000000000000 | 0 |
| `a * f * h` | 343461/10000 | 7041906898484073/125000000000000000 | 2418620385260238196653/1250000000000000000000 |
| `a * h * j` | -177093/2000 | 14083855959278413/250000000000000000 | 0 |
| `c * e * f * w` | -100 | 616439927756710827/62500000000000000000 | 0 |
| `c * e * w` | 628987/5000 | 3690837136833/125000000000000 | 2321488578185178171/625000000000000000 |
| `c * f * w` | -99709/2500 | 3193989262988139/62500000000000000 | 0 |
| `e * f * w` | 72594139/930000 | 5383801847673/250000000000000 | 130277486559476862849/77500000000000000000 |
| `e * w` | -692552539867/10000000000 | 32234667/500000000 | 0 |
| `c * e * h * r` | -100 | 422597161330241667/31250000000000000000 | 0 |
| `c * e * r` | 31098187/625000 | 3690837136833/125000000000000 | 114778343467777221771/78125000000000000000 |
| `e * h * r` | -93214817/930000 | 3690837136833/125000000000000 | 0 |
| `e * r` | -3020840511706621/58125000000000 | 32234667/500000000 | 0 |
| `a * c * f * w` | -3910800 | 1176132248277911388387/62500000000000000000000 | 0 |
| `a * f * w` | 81723/625 | 10271987076550113/250000000000000000 | 839457599856904884699/156250000000000000000 |
| `c * e * e` | 379183/5000 | 4264973251/250000000000 | 1617205352233933/1250000000000000 |
| `e * e` | 82619828673/1000000000 | 37249/1000000 | 3077505998240577/1000000000000000 |
| `a * c * h * p` | 100 | 137097375574255755967/3125000000000000000000 | 137097375574255755967/31250000000000000000 |
| `c * h * p` | -175233/10000 | 372311486407399/3125000000000000 | 0 |
| `a * a * c * r` | -12986500 | 2593062502949485653009/125000000000000000000000 | 0 |
| `a * a * r` | 245979/10000 | 22647031877566491/500000000000000000 | 5570694254211927889689/5000000000000000000000 |
| `c * f * h * v` | -100 | 602656396395888107427/31250000000000000000000 | 0 |
| `c * h * v` | -3312/625 | 3608310410168233/62500000000000000 | 0 |
| `f * h * v` | 114499/2500 | 5263420609751073/125000000000000000 | 602656396395888107427/312500000000000000000 |
| `h * v` | -330480947447/5000000000 | 31513903267/250000000000 | 0 |
| `c * c * h * v` | 100 | 413147933653852510267/15625000000000000000000 | 413147933653852510267/156250000000000000000 |
| `c * c * h` | 824767/10000 | 1501084294593499/15625000000000000 | 1238044790398996389733/156250000000000000000 |
| `a * c * p * q` | -100 | 286131307250309393411/6250000000000000000000 | 0 |
| `c * p * q` | 112439/2000 | 777038742454667/6250000000000000 | 87369459162860302813/12500000000000000000 |
| `c * e * f * q` | -100 | 881988278077571511/62500000000000000000 | 0 |
| `c * f * q` | -279/10 | 4569887451179127/62500000000000000 | 0 |
| `e * f * q` | -411367/10000 | 7703021668989/250000000000000 | 0 |
| `a * c * e * f` | -169/2 | 1359088031407426089/125000000000000000000 | 0 |
| `c * c * q` | -1051721/10 | 3132862388545967/31250000000000000 | 0 |
| `a * p * u * v` | 100 | 425256350629142915939/25000000000000000000000 | 425256350629142915939/250000000000000000000 |
| `a * u * v` | -32893/2000 | 14974342428576461/500000000000000000 | 0 |
| `p * u * v` | -1278533/10000 | 1154856709282283/25000000000000000 | 0 |
| `u * v` | 185927370007281/1250000000000 | 40665400517/500000000000 | 7560810968418535071164277/625000000000000000000000 |
| `a * q * u * u` | -100 | 1920922032967398072311/125000000000000000000000 | 0 |
| `a * u * u` | 783163/10000 | 8038440592079233/250000000000000000 | 6295409249414548353979/2500000000000000000000 |
| `q * u * u` | 1278533/10000 | 5216593930927967/125000000000000000 | 6669587488291126432411/1250000000000000000000 |
| `u * u` | -79720131/1000000000 | 21829767001/250000000000 | 0 |
| `c * v * k` | -786271/9300 | 10526872733405413/250000000000000000 | 0 |
| `v * k` | 5212312493/400000000 | 91938556087/1000000000000 | 479212484480651294891/400000000000000000000 |
| `a * e * u * j` | -100 | 3507532794055784459/500000000000000000000 | 0 |
| `a * u * j` | -62163/10000 | 18173745046921163/500000000000000000 | 0 |
| `e * u * j` | 200841/10000 | 9525308144723/500000000000000 | 1913072413094312043/5000000000000000000 |
| `u * j` | 4087279413/2500000000 | 49353928211/500000000000 | 201723294727500220143/1250000000000000000000 |
| `c * v * v` | 22921248757/625000000 | 8673666137886211/250000000000000000 | 198811259181657304491189727/156250000000000000000000000 |
| `v * v` | -531758813018559/78125000000000 | 75753204289/1000000000000 | 0 |
| `c * e * u * v` | -100 | 898636504902624719/125000000000000000000 | 0 |
| `c * u * v` | 721/10 | 4656147693795983/125000000000000000 | 3357082487226903743/1250000000000000000 |
| `e * u * v` | -12176563743/625000000 | 7848422299781/500000000000000 | 0 |
| `e * f * f * v` | -28974100 | 1481799933940582809/250000000000000000000 | 0 |
| `e * f * f` | 546547/10000 | 5383801847673/250000000000000 | 2942500748440135131/2500000000000000000 |
| `f * f * v` | -269446739/10 | 7677719864977113/250000000000000000 | 0 |
| `f * f` | -378748364479/4650000000 | 27895346361/250000000000 | 0 |
| `e * f * r` | -378971/5000 | 5383801847673/250000000000000 | 0 |
| `a * q * r` | -79446959413/10000 | 14696926312107909/250000000000000000 | 0 |
| `e * h * p * r` | 100 | 104816083848920367/6250000000000000000 | 104816083848920367/62500000000000000 |
| `e * h * p` | -4397496816031/1250000 | 627569820493/12500000000000 | 0 |
| `e * p * r` | 11343563/625000 | 915432308133/25000000000000 | 10384264059542097879/15625000000000000000 |
| `h * p * r` | 51937/625 | 543088517351919/6250000000000000 | 28206388325706617103/3906250000000000000 |
| `p * r` | 83373156957/1250000000 | 4743172581/25000000000 | 395453272069851796017/31250000000000000000 |
| `a * e * p * r` | 100 | 337092385120738989/25000000000000000000 | 337092385120738989/250000000000000000 |
| `a * e * r` | -66633/2000 | 11869868133411/500000000000000 | 0 |
| `a * p * r` | 88303/10000 | 1746592669019373/25000000000000000 | 154229372452417694019/250000000000000000000 |
| `a * a * p * r` | -100 | 643153058291010777909/25000000000000000000000 | 0 |
| `p * q * v` | -4167/200 | 1867847790828089/25000000000000000 | 0 |
| `q * v` | -720459757/25000000 | 65771604311/500000000000 | 0 |
| `q * q * u` | 4167/200 | 8437240197172661/125000000000000000 | 35157979901618478387/25000000000000000000 |
| `q * q` | 74786056903/2000000000 | 57105227089/250000000000 | 4270674762536691045367/500000000000000000000 |
| `e * p * p * v` | 100 | 42841425035520769/2500000000000000000 | 42841425035520769/25000000000000000 |
| `e * p * p` | 32247/2500 | 155655117793/2500000000000 | 5019410583470871/6250000000000000 |
| `p * p * v` | 535733/5000 | 221976295520833/2500000000000000 | 118920026728262425589/12500000000000000000 |
| `a * e * p * p` | -100 | 57317350990269769/2500000000000000000 | 0 |
| `e * p * q * u` | -100 | 193518655636069981/12500000000000000000 | 0 |
| `e * p * q` | -664313/10000 | 1309779799769/25000000000000 | 0 |
| `p * q * u` | -535733/5000 | 1002687334901917/12500000000000000 | 0 |
| `q * u * k` | -4167/200 | 11793960162798037/250000000000000000 | 0 |
| `q * k` | -45318169156613/930000000000 | 79824297713/500000000000 | 0 |
| `u * k` | -152335206219/2000000000 | 49353928211/500000000000 | 0 |
| `a * v * j` | 177093/2000 | 33854810323584271/1000000000000000000 | 5995449924634509304203/2000000000000000000000 |
| `v * j` | 18122302373/500000000 | 91938556087/1000000000000 | 1666138313145633694451/500000000000000000000 |
| `e * p * v * j` | -100 | 503915869482739609/50000000000000000000 | 0 |
| `e * v * j` | 114179/1000 | 17744141324791/1000000000000000 | 2026008312323311589/1000000000000000000 |
| `p * v * j` | -633229/10000 | 2610963054314713/50000000000000000 | 0 |
| `a * p * v * j` | -100 | 961442758379469712129/50000000000000000000000 | 0 |
| `a * a * p * j` | -100 | 1286309967359827021129/50000000000000000000000 | 0 |
| `a * p * w * j` | 200 | 583430068566562337547/25000000000000000000000 | 583430068566562337547/125000000000000000000 |
| `a * p * w` | 322439/5000 | 1746592669019373/25000000000000000 | 563169593605937610747/125000000000000000000 |
| `p * w * j` | -17825937/310000 | 1584404625784659/25000000000000000 | 0 |
| `f * h * q` | -417/10 | 4569887451179127/62500000000000000 | 0 |
| `e * f * h * p` | -100 | 104816083848920367/6250000000000000000 | 0 |
| `e * f * p` | -16525223/155000 | 915432308133/25000000000000 | 0 |
| `f * h * p` | -427747/10000 | 543088517351919/6250000000000000 | 0 |
| `a * f * h * p` | -100 | 199983114010049189127/6250000000000000000000 | 0 |
| `h * q * j` | 58587/400 | 9139802263840787/125000000000000000 | 535473595231640187969/50000000000000000000 |
| `e * h * p * j` | -100 | 209632795267661227/12500000000000000000 | 0 |
| `h * p * j` | -535733/5000 | 1086180286360939/12500000000000000 | 0 |
| `a * h * p * j` | 100 | 399967425387547650787/12500000000000000000000 | 399967425387547650787/125000000000000000000 |
| `c * q * w` | -64476777093/2000 | 4569887451179127/62500000000000000 | 0 |
| `q * w` | -140347003981/5000000000 | 39912029373/250000000000 | 0 |
| `p * q * w` | -99497/1000 | 1133461722163827/12500000000000000 | 0 |
| `q * q * r` | 99497/1000 | 9537657923177691/125000000000000000 | 948968350382410721427/125000000000000000000 |
| `e * p * p * w` | 100 | 25997362118669067/1250000000000000000 | 25997362118669067/12500000000000000 |
| `e * p * w` | -84993/1000 | 915432308133/25000000000000 | 0 |
| `p * p * w` | 712207/10000 | 134701358127819/1250000000000000 | 95935250168139586533/12500000000000000000 |
| `e * p * q * r` | -100 | 218758112377618611/12500000000000000000 | 0 |
| `e * q * r` | -242935293531/10000 | 7703021668989/250000000000000 | 0 |
| `p * q * r` | -712207/10000 | 1133461722163827/12500000000000000 | 0 |
| `a * p * p * w` | -100 | 49601485207481173827/1250000000000000000000 | 0 |
| `a * p * q * r` | 100 | 417378010337552507691/12500000000000000000000 | 417378010337552507691/125000000000000000000 |
| `f * q * v` | 943557/5000 | 10985107580418909/250000000000000000 | 10365075153257324519313/1250000000000000000000 |
| `e * f * p * v` | -100 | 251957180464369989/25000000000000000000 | 0 |
| `f * p * v` | -288303/10000 | 1305477618986373/25000000000000000 | 0 |
| `p * q * k` | 306519/5000 | 2266930230751487/25000000000000000 | 694857187399715043753/125000000000000000000 |
| `q * q * j` | -306519/5000 | 19075372951582471/250000000000000000 | 0 |
| `e * p * p * k` | -100 | 51994879892455927/2500000000000000000 | 0 |
| `e * p * q * j` | 100 | 437517534535036991/25000000000000000000 | 437517534535036991/250000000000000000 |
| `e * e * p` | -20721380 | 1057834351/50000000000 | 0 |
| `e * f * q * u` | -100 | 1138113748571455761/125000000000000000000 | 0 |
| `f * q * u` | -3823/100 | 5896962427831377/125000000000000000 | 0 |
| `a * f * q * u` | 100 | 2171456165687631446841/125000000000000000000000 | 2171456165687631446841/1250000000000000000000 |
| `e * h * p * u` | 100 | 92722813408020257/6250000000000000000 | 92722813408020257/62500000000000000 |
| `e * h * u` | 614509/10000 | 3265002760943/125000000000000 | 2006373581624321987/1250000000000000000 |
| `h * p * u` | 279/10 | 480429085015649/6250000000000000 | 134039714719366071/62500000000000000 |
| `c * v * w` | 10 | 5263420609751073/125000000000000000 | 5263420609751073/12500000000000000 |
| `v * w` | 135501/25000 | 45969140427/500000000000 | 6228864496998927/12500000000000000 |
| `f * v * v` | -1427469/10000 | 12652224427144491/500000000000000000 | 0 |
| `e * f * u * v` | 100 | 1310835644087122839/250000000000000000000 | 1310835644087122839/2500000000000000000 |
| `f * u * v` | -10401/2500 | 6791894528948823/250000000000000000 | 0 |
| `e * u * u` | -1320137/10000 | 4213145031193/250000000000000 | 0 |
| `a * f * u * v` | -100 | 2500999698078411939759/250000000000000000000000 | 0 |
| `a * f * v` | 6679/10000 | 16927354486855491/500000000000000000 | 113057800617707824389/5000000000000000000000 |
| `p * v * v` | 198363/1250 | 2151315248603311/50000000000000000 | 426741346658698579893/62500000000000000000 |
| `q * u * v` | -198363/1250 | 9717688765345939/250000000000000000 | 0 |
| `e * p * u * v` | -100 | 222887344891480619/25000000000000000000 | 0 |
| `e * q * u * u` | 100 | 1006802628669097631/125000000000000000000 | 1006802628669097631/1250000000000000000 |
| `e * e * f * u` | -17530300 | 919189484214519/250000000000000000 | 0 |
| `e * e * f` | -150583/2000 | 6221290731/500000000000 | 0 |
| `e * e * u` | -62281465987/5000 | 5503502501/500000000000 | 0 |
| `u * v * k` | 177093/2000 | 13583829723298163/500000000000000000 | 2405601157188041580159/1000000000000000000000 |
| `v * v * j` | -177093/2000 | 25304524607493271/1000000000000000000 | 0 |
| `e * u * u * k` | -100 | 1407354753074678527/250000000000000000000 | 0 |
| `e * u * k` | -15833/200 | 9525308144723/500000000000000 | 0 |
| `u * u * k` | -62163/10000 | 7291993539247039/250000000000000000 | 0 |
| `e * u * v * j` | 100 | 2621679136596545459/500000000000000000000 | 2621679136596545459/5000000000000000000 |
| `u * v * j` | 62163/10000 | 13583829723298163/500000000000000000 | 844411607089383706569/5000000000000000000000 |
| `e * e * u * j` | -100 | 1838384471931539/500000000000000000 | 0 |
| `e * e * j` | -55878502733/10000 | 12442618711/1000000000000 | 0 |
| `h * v * j` | -177093/2000 | 10526872733405413/250000000000000000 | 0 |
| `e * f * u * k` | 100 | 1590907441023490737/250000000000000000000 | 1590907441023490737/2500000000000000000 |
| `e * f * k` | -258831130637/10000 | 10767635930013/500000000000000 | 0 |
| `f * u * k` | 62163/10000 | 8243043735873009/250000000000000000 | 512412327753073858467/2500000000000000000000 |
| `e * h * u * j` | 100 | 1090638257262638777/125000000000000000000 | 1090638257262638777/1250000000000000000 |
| `h * u * j` | 62163/10000 | 5650975426231289/125000000000000000 | 351281585420815618107/1250000000000000000000 |
| `e * f * h * u` | -100 | 545317496129938917/62500000000000000000 | 0 |
| `f * h * u` | -279/10 | 2825479254559269/62500000000000000 | 0 |
| `h * p * w` | -1279/10 | 543088517351919/6250000000000000 | 0 |
| `h * w` | 63490687/2000000 | 19123508481/125000000000 | 1214164691309016447/250000000000000000 |
| `c * h * w` | 90 | 2189622597566019/31250000000000000 | 19706603378094171/3125000000000000 |
| `c * e * q * r` | 100 | 881988278077571511/62500000000000000000 | 881988278077571511/625000000000000000 |
| `c * q * r` | 28995719/312500 | 4569887451179127/62500000000000000 | 132507172396016185157313/19531250000000000000000 |
| `r * w * k` | -177093/2000 | 9318133603082079/250000000000000000 | 0 |
| `r * w` | 8793680927/156250000 | 27895346361/250000000000 | 245302775246784556647/39062500000000000000 |
| `w * k` | -17533120849/2000000000 | 55790859741/500000000000 | 0 |
| `f * w * k` | 918301/4650 | 9318133603082079/250000000000000000 | 2852283801947958742593/387500000000000000000 |
| `w * w * j` | 177093/2000 | 9318133603082079/250000000000000000 | 1650176234170614616347/500000000000000000000 |
| `w * w` | 17262694791/1000000000 | 27895346361/250000000000 | 481548850319175505551/250000000000000000000 |
| `f * w * w` | -217093/2000 | 4659052853867859/125000000000000000 | 0 |
| `e * r * r * k` | 100 | 1798399785394841247/250000000000000000000 | 1798399785394841247/2500000000000000000 |
| `e * r * r` | -231513/5000 | 5383801847673/250000000000000 | 0 |
| `e * r * k` | 12773/250 | 10767635930013/500000000000000 | 137535013734056049/125000000000000000 |
| `r * r * k` | 62163/10000 | 9318133603082079/250000000000000000 | 579243139168391276877/2500000000000000000000 |
| `e * f * r * k` | -100 | 1798399785394841247/250000000000000000000 | 0 |
| `e * r * w * j` | -100 | 1798399785394841247/250000000000000000000 | 0 |
| `e * r * w` | -128987/5000 | 5383801847673/250000000000000 | 0 |
| `e * r * j` | 167019/5000 | 10767635930013/500000000000000 | 1798399785394841247/2500000000000000000 |
| `e * w * j` | -61979/5000 | 10767635930013/500000000000000 | 0 |
| `r * w * j` | -62163/10000 | 9318133603082079/250000000000000000 | 0 |
| `e * f * r * w` | 100 | 899197200796496787/125000000000000000000 | 899197200796496787/1250000000000000000 |
| `f * r * w` | 462163/10000 | 4659052853867859/125000000000000000 | 2153241844102131319017/1250000000000000000000 |
| `e * e * r` | -2787929069/2500 | 6221290731/500000000000 | 0 |
| `a * q * r * j` | -200 | 4909346568370213814451/250000000000000000000000 | 0 |
| `q * r * j` | 1951531/155000 | 13332174379727547/250000000000000000 | 26018151599444079524457/38750000000000000000000 |
| `a * a * r * j` | 100 | 7564991881350433087149/500000000000000000000000 | 7564991881350433087149/5000000000000000000000 |
| `f * h * h * p` | 100 | 62183092148277373581/1562500000000000000000 | 62183092148277373581/15625000000000000000 |
| `f * h * h` | 22907/2000 | 2189622597566019/31250000000000000 | 50157684842444797233/62500000000000000000 |
| `h * h * p` | -193481/5000 | 372311486407399/3125000000000000 | 0 |
| `h * h` | -4432069267/1000000000 | 13110021001/62500000000 | 0 |
| `a * c * f * v` | 100 | 1938165161390466864009/125000000000000000000000 | 1938165161390466864009/1250000000000000000000 |
| `f * h * r` | 3422094498419/46500000000 | 3193989262988139/62500000000000000 | 3643377694960355670783750747/968750000000000000000000000 |
| `f * h * j` | 80911/2325 | 6387997649484759/125000000000000000 | 172286425939153778483/96875000000000000000 |
| `f * j` | 10038411968873/930000000000 | 55790859741/500000000000 | 186683878059256400280631/155000000000000000000000 |
| `a * a * f * r` | 1118700 | 3782484617159277760329/250000000000000000000000 | 42314655412160840304800523/2500000000000000000000 |
| `f * p * q * v` | -100 | 311966070176316596691/12500000000000000000000 | 0 |
| `f * p * q` | 433207/10000 | 1133461722163827/12500000000000000 | 491023552273425003189/125000000000000000000 |
| `f * q * q * u` | 100 | 1409179420491580667559/62500000000000000000000 | 1409179420491580667559/625000000000000000000 |
| `f * q * q` | -1649/10000 | 9537657923177691/125000000000000000 | 0 |
| `f * q * r` | -29105361/155000 | 6666067233849087/125000000000000000 | 0 |
| `f * p * w` | 2084321/15500 | 792199941306039/12500000000000000 | 1651198973862944514519/193750000000000000000 |
| `c * f * v * v` | -100 | 1448667044683617075009/125000000000000000000000 | 0 |
| `f * p * v * v` | 100 | 359310521506476399909/25000000000000000000000 | 359310521506476399909/250000000000000000000 |
| `f * q * u * v` | -100 | 1623038659899313385841/125000000000000000000000 | 0 |
| `f * q * v * j` | 100 | 3669454351055551943451/250000000000000000000000 | 3669454351055551943451/2500000000000000000000 |
| `f * q * j` | -11307/500 | 13332174379727547/250000000000000000 | 0 |
| `f * v * j` | -62163/10000 | 15355485699094653/500000000000000000 | 0 |
| `q * v * j` | -10253/400 | 21970280932442129/500000000000000000 | 0 |
| `a * f * q * j` | 100 | 4909346568370213814451/250000000000000000000000 | 4909346568370213814451/2500000000000000000000 |
| `a * f * j` | 794069/10000 | 20544035655007653/500000000000000000 | 16313381848536272010057/5000000000000000000000 |
| `p * u * k` | 896233/10000 | 1401602207264189/25000000000000000 | 1256162151023005900037/250000000000000000000 |
| `a * q * u * j` | 100 | 4342925332627609558621/250000000000000000000000 | 4342925332627609558621/2500000000000000000000 |
| `q * u * j` | -65751/2500 | 11793960162798037/250000000000000000 | 0 |
| `a * a * f * j` | 344800 | 7564991881350433087149/500000000000000000000000 | 3260511500862036660561219/625000000000000000000 |
| `f * q * r * w` | -100 | 1113359883330240661653/62500000000000000000000 | 0 |
| `f * q * w` | 167019/5000 | 6666067233849087/125000000000000000 | 1113359883330240661653/625000000000000000000 |
| `q * r * w` | 128987/5000 | 6666067233849087/125000000000000000 | 859836014292492184869/625000000000000000000 |
| `f * p * w * w` | 100 | 132312441996993327741/6250000000000000000000 | 132312441996993327741/62500000000000000000 |
| `p * w * w` | -128987/5000 | 792199941306039/12500000000000000 | 0 |
| `q * r * r` | 381513/5000 | 6666067233849087/125000000000000000 | 2543191308587466728631/625000000000000000000 |
| `p * r * w` | -381513/5000 | 792199941306039/12500000000000000 | 0 |
| `h * h * p * r` | -100 | 62183092148277373581/1562500000000000000000 | 0 |
| `h * h * r` | -22907/2000 | 2189622597566019/31250000000000000 | 0 |
| `f * h * p * k` | 100 | 181412745247717670841/6250000000000000000000 | 181412745247717670841/62500000000000000000 |
| `h * p * k` | -721/10 | 1086180286360939/12500000000000000 | 0 |
| `c * e * h * p` | -100 | 71856116876628007/3125000000000000000 | 0 |
| `h * q * u` | -99497/1000 | 4042631682768217/62500000000000000 | 0 |
| `c * h * q * u` | 100 | 462877285045278078283/15625000000000000000000 | 462877285045278078283/156250000000000000000 |
| `c * h * q` | 71060969/1250000 | 3132862388545967/31250000000000000 | 222624237073730916062023/39062500000000000000000 |
| `c * h * u` | 216837/10000 | 1936992492876749/31250000000000000 | 420011641177915622913/312500000000000000000 |
| `h * r * r` | 40 | 3193989262988139/62500000000000000 | 3193989262988139/1562500000000000 |
| `h * r * j` | -80911/2325 | 6387997649484759/125000000000000000 | 0 |
| `h * p * v * j` | 100 | 298952658755980323787/12500000000000000000000 | 298952658755980323787/125000000000000000000 |
| `h * p * v` | 268487/5000 | 894963338879533/12500000000000000 | 240286021965749176571/62500000000000000000 |
| `h * q * u * j` | -100 | 1350396644680212438463/62500000000000000000000 | 0 |
| `p * p * v * v` | -100 | 61095201745085429089/2500000000000000000000 | 0 |
| `p * q * u * v` | 200 | 275972643247059321661/12500000000000000000000 | 275972643247059321661/62500000000000000000 |
| `q * q * u * u` | -100 | 1246593801892063490089/62500000000000000000000 | 0 |
| `p * v * k` | 18587/400 | 2610963054314713/50000000000000000 | 48529970290547570531/20000000000000000000 |
| `e * q * u * j` | 100 | 2276234311420021141/250000000000000000000 | 2276234311420021141/2500000000000000000 |
| `p * u * v * k` | -100 | 385767180311944531037/25000000000000000000000 | 0 |
| `p * v * v * j` | 100 | 718623194328201403129/50000000000000000000000 | 718623194328201403129/500000000000000000000 |
| `q * u * u * k` | 100 | 1742545820093247168713/125000000000000000000000 | 1742545820093247168713/1250000000000000000000 |
| `q * u * v * j` | -100 | 3246087037487392117621/250000000000000000000000 | 0 |
| `p * p * w * k` | 100 | 44995506967658530941/1250000000000000000000 | 44995506967658530941/12500000000000000000 |
| `p * w * k` | 88257/2500 | 1584404625784659/25000000000000000 | 139834799057876649363/62500000000000000000 |
| `p * q * w * j` | -100 | 378620420209882607253/12500000000000000000000 | 0 |
| `q * w * j` | 551427/10000 | 13332174379727547/250000000000000000 | 7351720921690022059569/2500000000000000000000 |
| `p * q * r * k` | -100 | 378620420209882607253/12500000000000000000000 | 0 |
| `p * r * k` | 3593/80 | 1584404625784659/25000000000000000 | 5692765820444279787/2000000000000000000 |
| `q * r * k` | -180891/2000 | 13332174379727547/250000000000000000 | 0 |
| `q * q * r * j` | 100 | 3185949715000352723949/125000000000000000000000 | 3185949715000352723949/1250000000000000000000 |
| `p * r * w * k` | 100 | 264625676193927961521/12500000000000000000000 | 264625676193927961521/125000000000000000000 |
| `p * w * w * j` | -100 | 264625676193927961521/12500000000000000000000 | 0 |
| `q * r * r * k` | -100 | 2226726432727715172393/125000000000000000000000 | 0 |
| `q * r * w * j` | 100 | 2226726432727715172393/125000000000000000000000 | 2226726432727715172393/1250000000000000000000 |
| `a * c * e * r` | 17032500 | 1359088031407426089/125000000000000000000 | 9259466757978793944357/50000000000000000 |
| `c * p * q * w` | 100 | 129780233726036027673/3125000000000000000000 | 129780233726036027673/31250000000000000000 |
| `c * p * w` | -320137/10000 | 543088517351919/6250000000000000 | 0 |
| `c * q * q * r` | -100 | 1092052294545922441809/31250000000000000000000 | 0 |
| `c * q * q` | -332981/5000 | 6538491396463411/62500000000000000 | 0 |
| `c * p * w * k` | -100 | 181412745247717670841/6250000000000000000000 | 0 |
| `c * w * k` | -22907/2000 | 6387997649484759/125000000000000000 | 0 |
| `c * q * r * k` | 100 | 1526520634304424403953/62500000000000000000000 | 1526520634304424403953/625000000000000000000 |
| `c * q * k` | 332981/5000 | 9139802263840787/125000000000000000 | 3043380497615969096047/625000000000000000000 |
| `c * r * k` | 937837/10000 | 6387997649484759/125000000000000000 | 5990900551599837926283/1250000000000000000000 |
| `f * h * p * w` | -100 | 90706101079600159461/3125000000000000000000 | 0 |
| `f * h * w` | 17093/2000 | 3193989262988139/62500000000000000 | 54594858472256259927/125000000000000000000 |
| `e * f * p * w` | -100 | 152894588672065527/12500000000000000000 | 0 |
| `a * e * f * p` | 100 | 337092385120738989/25000000000000000000 | 337092385120738989/250000000000000000 |
| `e * f * q * r` | 100 | 1286550976132873791/125000000000000000000 | 1286550976132873791/1250000000000000000 |
| `a * e * f * r` | -100 | 1982493505774171809/250000000000000000000 | 0 |
| `f * p * q * k` | 100 | 378620420209882607253/12500000000000000000000 | 378620420209882607253/125000000000000000000 |
| `f * q * k` | -42079/1000 | 13332174379727547/250000000000000000 | 0 |
| `f * q * q * j` | -100 | 3185949715000352723949/125000000000000000000000 | 0 |
| `u * w` | -854499/25000 | 24676890231/250000000000 | 0 |
| `v * r` | 198/5 | 45969140427/500000000000 | 4550944902273/1250000000000 |
| `c * e * r * k` | -100 | 1232883546350558487/125000000000000000000 | 0 |
| `c * e * w * j` | 100 | 1232883546350558487/125000000000000000000 | 1232883546350558487/1250000000000000000 |
| `h * r * k` | 453301/4650 | 6387997649484759/125000000000000000 | 965228574169696913153/193750000000000000000 |
| `f * w * j` | -80911/2325 | 9318133603082079/250000000000000000 | 0 |
| `c * c * e * q` | 100 | 604642440989371631/31250000000000000000 | 604642440989371631/312500000000000000 |
| `c * c * e * h` | -100 | 289709268856545307/15625000000000000000 | 0 |
| `b * c * e` | 100 | 11254026904197/250000000000000 | 11254026904197/2500000000000 |
| `b * c` | -65751/2500 | 58311020229/250000000000 | 0 |
| `b * c * h` | -100 | 6676553505200271/62500000000000000 | 0 |
| `c * f * h * k` | 93/2 | 731419342868355420741/31250000000000000000000 | 68021998886757054128913/62500000000000000000000 |
| `c * h * k` | -9110509/186000 | 4379258305153039/62500000000000000 | 0 |
| `b * e * h * j` | -31/2 | 3759283893051061683/250000000000000000000 | 0 |
| `c * e * e * f` | 18797800 | 712331567408769/125000000000000000 | 66951331689182789541/625000000000000 |
| `c * e * e * j` | -4785200 | 1424667399790789/250000000000000000 | 0 |
| `c * e * e * r` | -7956900 | 712331567408769/125000000000000000 | 0 |
| `c * c * e * e` | 12907400 | 488335172266249/62500000000000000 | 31515687012546911713/312500000000000 |
| `h * u * w` | 10 | 2825479254559269/62500000000000000 | 2825479254559269/6250000000000000 |
| `e * f * v * j` | -100 | 2963608739925268029/500000000000000000000 | 0 |
| `e * f * j` | -2848087767/10000 | 10767635930013/500000000000000 | 0 |
| `h * u * k` | 143729/9300 | 5650975426231289/125000000000000000 | 812209047036796936681/1162500000000000000000 |
| `e * f * f * w` | 1118700 | 899197200796496787/125000000000000000000 | 10059319085310409556169/1250000000000000000 |
| `f * f * w` | -6057219733/4650 | 4659052853867859/125000000000000000 | 0 |
| `e * e * f * f` | 344800 | 1039073756600889/250000000000000000 | 447840789094983159/312500000000000 |
| `e * e * f * j` | -344800 | 2078153734492509/500000000000000000 | 0 |
| `f * q * u * k` | -100 | 1969815432430365341703/125000000000000000000000 | 0 |
| `f * f * q` | -12200 | 6666067233849087/125000000000000000 | 0 |
| `f * f * h` | -127411/2325 | 3193989262988139/62500000000000000 | 0 |
| `h * r * w` | -20 | 3193989262988139/62500000000000000 | 0 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 351 | -439922079993269743714395808978025109401/52093543125000000000000000000000000 |

## Stage 352

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS+/HEQ-/CFQ-/PQR- |
| Packet | forest:root/AFP-/APR+/ARS+/HEQ-/CFQ-/PQR- |
| Index | 0 |
| Context | 139 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 321 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 59/125 | 143617/1000000 | 33749/200000 |
| b | 103767/1000000 | 344349/500000 | 111007/1000000 | 111351/1000000 |
| c | 135501/250000 | 1/1 | 13218/15625 | 105787/125000 |
| e | 103767/1000000 | 59/125 | 1581/12500 | 6327/50000 |
| f | 103767/1000000 | 344349/500000 | 14187/125000 | 17173/125000 |
| h | 135501/250000 | 1/1 | 836467/1000000 | 963029/1000000 |
| p | 22907/200000 | 710233/1000000 | 125941/250000 | 283933/500000 |
| q | 196767/1000000 | 158493/200000 | 214061/1000000 | 226919/1000000 |
| u | 77257/250000 | 907/1000 | 337961/1000000 | 630617/1000000 |
| v | 103767/1000000 | 371917/500000 | 397569/1000000 | 626069/1000000 |
| r | 434843/1000000 | 1/1 | 483199/500000 | 1/1 |
| w | 211159/500000 | 1/1 | 220159/250000 | 1/1 |
| j | 155647/500000 | 896233/1000000 | 62269/200000 | 33219/40000 |
| k | 101771/250000 | 8033/8963 | 116521/250000 | 896231/1000000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 0 | A_ABC | bitt ["actual-area","ABC",[]] | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 7 | A_ABH | bitt ["actual-area","ABH",[]] | `1/1 * b * h + -1/1 * a * b + -93/1000` |
| 10 | A_ABP | bitt ["actual-area","ABP",[]] | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 21 | A_ACQ | bitt ["actual-area","ACQ",["P"]] | `1/1 * c * v + -1/1 * a * c + 1/1 * a * u + -279/1000` |
| 25 | AC_AEF_AEF_0 | bitt ["anchor-cap","AEF","AEF",0,["P","Q"]] | `6143/20000 + -1/1 * a` |
| 26 | A_AEH | bitt ["actual-area","AEH",["P","Q"]] | `1/1 * h + -1/1 * a + -13857/20000` |
| 27 | A_AEP | bitt ["actual-area","AEP",[]] | `1/1 * q + -1/1 * a + -1/1 * e * p + 1/1 * a * p + -93/1000` |
| 29 | A_AEQ | bitt ["actual-area","AEQ",["P"]] | `1/1 * v + -1/1 * a + -1/1 * e * u + 1/1 * a * u + -279/1000` |
| 33 | A_AFH | bitt ["actual-area","AFH",[]] | `1/1 * f * h + -1/1 * a * f + -93/1000` |
| 45 | A_ARS | bitt ["actual-area","ARS",[]] | `1/1 * r * k + -1/1 * a * r + -1/1 * w * j + 1/1 * a * j + -93/1000` |
| 46 | A_BCE | bitt ["actual-area","BCE",[]] | `1/1 * c * e + -1/1 * b * e + -93/1000` |
| 57 | A_BEH | bitt ["actual-area","BEH",["P","Q"]] | `1/1 * h + -1/1 * b * h + 1/1 * b * e + -13857/20000` |
| 73 | A_CEF | bitt ["actual-area","CEF",["Q"]] | `721/1000 + -1/1 * c + -1/1 * e * f + 1/1 * c * e` |
| 76 | A_CEP | bitt ["actual-area","CEP",[]] | `1/1 * q + -1/1 * c * q + -1/1 * e * p + 1/1 * c * e + -93/1000` |
| 83 | A_CFQ | bitt ["actual-area","CFQ",[]] | `-1/1 * f * v + 1/1 * c * v + 1/1 * u + -1/1 * c + -93/1000` |
| 84 | A_CFR | bitt ["actual-area","CFR",["Q","S"]] | `-1/1 * f * w + 1/1 * c * w + 1/1 * r + -1/1 * c + -13857/20000` |
| 98 | A_EFQ | bitt ["actual-area","EFQ",[]] | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 100 | A_EFS | bitt ["actual-area","EFS",[]] | `-1/1 * f * k + 1/1 * e * f + 1/1 * k + 1/1 * j + -1093/1000 + -1/1 * e * j` |
| 101 | A_EHP | bitt ["actual-area","EHP",["Q"]] | `-1/1 * q + -1/1 * h * p + 1/1 * h + 1/1 * e * p + -279/1000` |
| 102 | A_EHQ | bitt ["actual-area","EHQ",[]] | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -93/1000` |
| 108 | A_EQR | bitt ["actual-area","EQR",[]] | `-1/1 * u * w + 1/1 * e * u + 1/1 * w + 1/1 * v * r + -1/1 * v + -1/1 * e * r + -93/1000` |
| 113 | A_FHR | bitt ["actual-area","FHR",[]] | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 116 | A_FPR | bitt ["actual-area","FPR",["Q","S"]] | `1/1 * p * w + -1/1 * p + -1/1 * f * w + -1/1 * q * r + 1/1 * f * q + 1/1 * r + -13857/20000` |
| 120 | A_FRS | bitt ["actual-area","FRS",[]] | `-1/1 * r * k + 1/1 * r + 1/1 * f * k + 1/1 * w * j + -1/1 * f * w + -1/1 * j + -93/1000` |
| 129 | ea | bitt ["contact-order","ea"] | `1/1 * e + -1/1 * a` |
| 131 | fb | bitt ["contact-order","fb"] | `1/1 * f + -1/1 * b` |
| 133 | sym | bitt ["contact-order","sym"] | `1/1 * f + -1/1 * e` |
| 138 | upper-Q-x | bitt ["upper-point-x","83105483/125000000","Q"] | `59855483/125000000 + -83105483/125000000 * u + 93/1000 * c + 93/1000 * f` |
| 591 | SUP_EFR_EQR_FQR | bitt ["support-envelope",["pentagon","RFHQE"],"EFR","EQR","FQR","803233590289/1000000000000"] | `219766409711/1000000000000 * u * w + 803233590289/1000000000000 * e * u + -219766409711/1000000000000 * w + -219766409711/1000000000000 * v * r + -803233590289/1000000000000 * v + 219766409711/1000000000000 * e * r + -1023/1000 * e * f + 1023/1000 + -1023/1000 * u + 1023/1000 * f * v` |
| 620 | AREA_lo_AES | bitt ["earlier-area",{"direction":"lo","ref":"321:38","triangle":"AES","value":"303317/1000000"}] | `1/1 * k + -1/1 * a + -1/1 * e * j + 1/1 * a * j + -303317/1000000` |
| 642 | AREA_lo_BCP | bitt ["earlier-area",{"direction":"lo","ref":"321:70","triangle":"BCP","value":"22907/200000"}] | `1/1 * c * q + -1/1 * b * q + -22907/200000` |
| 658 | AREA_hi_BFS | bitt ["earlier-area",{"direction":"hi","ref":"321:95","triangle":"BFS","value":"693091/1000000"}] | `693091/1000000 + 1/1 * f * k + -1/1 * b * k + -1/1 * j + 1/1 * b` |
| 673 | AREA_lo_CES | bitt ["earlier-area",{"direction":"lo","ref":"321:116","triangle":"CES","value":"29257/250000"}] | `1/1 * k + -1/1 * c * k + -1/1 * e * j + 1/1 * c * e + -29257/250000` |
| 691 | AREA_hi_EFP | bitt ["earlier-area",{"direction":"hi","ref":"321:147","triangle":"EFP","value":"168741/250000"}] | `-81259/250000 + -1/1 * f * q + 1/1 * e * f + 1/1 * q + 1/1 * p + -1/1 * e * p` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 21 | v | 103767/1000000 | 371917/500000 | 3335059/16937625 | 371917/500000 | 98451/500000 | 371917/500000 | `(135501/250000, -18948451287/62500000000); (135501/250000, -6077573/15625000); (1/1, -87675022881/250000000000); (1/1, -18910587/31250000); (135501/250000, -60281365017/250000000000); (135501/250000, -3335059/31250000); (1/1, -288650331/1000000000); (1/1, -20181/62500)` |
| 1 | 25 | a | 103767/1000000 | 59/125 | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 | `(-1/1, 6143/20000)` |
| 2 | 26 | h | 135501/250000 | 1/1 | 796617/1000000 | 1/1 | 796617/1000000 | 1/1 | `(1/1, -796617/1000000); (1/1, -1/1)` |
| 3 | 29 | v | 98451/500000 | 371917/500000 | 382767/1000000 | 371917/500000 | 382767/1000000 | 371917/500000 | `(1/1, -382767/1000000); (1/1, -130824739569/250000000000); (1/1, -124140326881/250000000000); (1/1, -3185466329/5000000000); (1/1, -401681619/1000000000); (1/1, -716754331/1000000000); (1/1, -14713379/20000000)` |
| 4 | 57 | b | 103767/1000000 | 344349/500000 | 103767/1000000 | 6143/10560 | 103767/1000000 | 145431/250000 | `(-13857/20000, 103767/1000000); (-324617/1000000, 103767/1000000); (-896233/1000000, 6143/20000); (-66/125, 6143/20000)` |
| 5 | 84 | f | 103767/1000000 | 344349/500000 | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 | `(-211159/500000, -71389119341/125000000000); (-211159/500000, -835689/1000000); (-211159/500000, -744494341/125000000000); (-211159/500000, -67633/250000); (-1/1, -258007/1000000); (-1/1, 6143/20000)` |
| 6 | 84 | r | 434843/1000000 | 1/1 | 796617/1000000 | 1/1 | 796617/1000000 | 1/1 | `(1/1, -524889313317/500000000000); (1/1, -657177335953/500000000000); (1/1, -283917732107/250000000000); (1/1, -14002469737/10000000000); (1/1, -796617/1000000); (1/1, -1/1)` |
| 7 | 84 | w | 211159/500000 | 1/1 | 234854/438237 | 1/1 | 267953/500000 | 1/1 | `(438237/1000000, -438237/1000000); (896233/1000000, -896233/1000000); (117427/500000, -438237/1000000); (13857/20000, -896233/1000000); (438237/1000000, -117427/500000); (896233/1000000, -13857/20000); (117427/500000, -117427/500000); (13857/20000, -13857/20000)` |
| 8 | 101 | q | 196767/1000000 | 158493/200000 | 196767/1000000 | 8256569/12500000 | 196767/1000000 | 330263/500000 | `(-1/1, 1753045701/4000000000); (-1/1, 96087398381/200000000000); (-1/1, 123669990669/200000000000); (-1/1, 8256569/12500000); (-1/1, 510641319/20000000000); (-1/1, 287063294239/1000000000000); (-1/1, 84465747711/1000000000000); (-1/1, 21624811/62500000)` |
| 9 | 108 | u | 77257/250000 | 907/1000 | 77257/250000 | 803233/896233 | 77257/250000 | 896233/1000000 | `(-432139/1000000, 282395143/1000000000); (-31953/500000, -10945524761/1000000000000); (-432139/1000000, 208960253339/1000000000000); (-31953/500000, -42190207211/500000000000); (-432139/1000000, 339139/1000000); (-31953/500000, -14547/500000); (-896233/1000000, 746489143/1000000000); (-66/125, 453148475239/1000000000000); (-896233/1000000, 673054253339/1000000000000); (-66/125, 189856792789/500000000000); (-896233/1000000, 803233/1000000); (-66/125, 87/200)` |
| 10 | 116 | f | 103767/1000000 | 6143/20000 | 103767/1000000 | 5722799371/33913900000 | 103767/1000000 | 33749/200000 | `(-339139/1000000, -106135943529/1000000000000); (-339139/1000000, -382595811141/1000000000000); (6231/50000, -29723390427/62500000000); (6231/50000, -188008528611/250000000000); (-339139/1000000, 5722799371/100000000000); (-339139/1000000, -109615936951/500000000000); (6231/50000, -40653100629/100000000000); (6231/50000, -341495436951/500000000000); (-803233/1000000, -52980937239/1000000000000); (-169737/500000, -211209620271/500000000000); (-803233/1000000, 110383/1000000); (-169737/500000, -11043/31250)` |
| 11 | 116 | q | 196767/1000000 | 330263/500000 | 196767/1000000 | 203383/896233 | 196767/1000000 | 226931/1000000 | `(-13857/20000, -156167631/31250000000); (-19621/31250, -1990973213/50000000000); (-13857/20000, -70364307951/250000000000); (-19621/31250, -9883729121/31250000000); (-896233/1000000, 6199551119/31250000000); (-166251/200000, 8178176787/50000000000); (-896233/1000000, -19518557951/250000000000); (-166251/200000, -3528010371/31250000000); (-13857/20000, 0/1); (-19621/31250, -32489/500000); (-896233/1000000, 203383/1000000); (-166251/200000, 27681/200000)` |
| 12 | 116 | r | 796617/1000000 | 1/1 | 776199078711/803233000000 | 1/1 | 966343/1000000 | 1/1 | `(803233/1000000, -781196442903/1000000000000); (803233/1000000, -160646603369/200000000000); (803233/1000000, -211531262103/200000000000); (803233/1000000, -1079692884457/1000000000000); (773069/1000000, -155613283023/200000000000); (773069/1000000, -159628598533/200000000000); (773069/1000000, -1054526282727/1000000000000); (773069/1000000, -1074602860277/1000000000000); (803233/1000000, -776199078711/1000000000000); (803233/1000000, -165678310517/200000000000); (773069/1000000, -773069050923/1000000000000); (773069/1000000, -164660305681/200000000000)` |
| 13 | 120 | k | 101771/250000 | 8033/8963 | 101771/250000 | 803233/896233 | 101771/250000 | 896233/1000000 | `(-53911/62500, 336631982231/500000000000); (-398799/500000, 319220932197/500000000000); (-896233/1000000, 353460482231/500000000000); (-166251/200000, 336049432197/500000000000); (-53911/62500, 96197/125000); (-398799/500000, 352299/500000); (-896233/1000000, 803233/1000000); (-166251/200000, 147651/200000); (-53911/62500, 100449321049/250000000000); (-398799/500000, 1433496813/3906250000); (-896233/1000000, 108863571049/250000000000); (-166251/200000, 6259877877/15625000000)` |
| 14 | 131 | b | 103767/1000000 | 145431/250000 | 103767/1000000 | 33749/200000 | 103767/1000000 | 33749/200000 | `(-1/1, 103767/1000000); (-1/1, 33749/200000)` |
| 15 | 133 | e | 103767/1000000 | 59/125 | 103767/1000000 | 33749/200000 | 103767/1000000 | 33749/200000 | `(-1/1, 103767/1000000); (-1/1, 33749/200000)` |
| 16 | 138 | u | 77257/250000 | 896233/1000000 | 77257/250000 | 587537149/664843864 | 77257/250000 | 441861/500000 | `(-83105483/125000000, 538900567/1000000000); (-83105483/125000000, 116298839/200000000); (-83105483/125000000, 544943521/1000000000); (-83105483/125000000, 587537149/1000000000)` |
| 17 | 591 | u | 77257/250000 | 441861/500000 | 77257/250000 | 98211424456506382387799/128280701707349921500000 | 77257/250000 | 382799/500000 | `(-821876722473898171/1000000000000000000, 568140261489306603433/1000000000000000000000); (-769684210244099529/1000000000000000000, 287520985314085147163397/500000000000000000000000); (-821876722473898171/1000000000000000000, 586686087315306603433/1000000000000000000000); (-769684210244099529/1000000000000000000, 294634273369519147163397/500000000000000000000000); (-821876722473898171/1000000000000000000, 239767993538326232369509/1000000000000000000000000); (-769684210244099529/1000000000000000000, 246669702677189923263303/1000000000000000000000000); (-821876722473898171/1000000000000000000, 282314843355424232369509/1000000000000000000000000); (-769684210244099529/1000000000000000000, 284897302779155923263303/1000000000000000000000000); (-821876722473898171/1000000000000000000, 566076588312898171/1000000000000000000); (-769684210244099529/1000000000000000000, 573458918798201529/1000000000000000000); (-821876722473898171/1000000000000000000, 584622414138898171/1000000000000000000); (-769684210244099529/1000000000000000000, 587685494909069529/1000000000000000000); (-821876722473898171/1000000000000000000, 235033624007845171/1000000000000000000); (-769684210244099529/1000000000000000000, 242415954493148529/1000000000000000000); (-821876722473898171/1000000000000000000, 277580473824943171/1000000000000000000); (-769684210244099529/1000000000000000000, 280643554595114529/1000000000000000000); (-719884450325481337/1000000000000000000, 466147989340889769433/1000000000000000000000); (-133538387619136539/200000000000000000, 236524849239876730163397/500000000000000000000000); (-719884450325481337/1000000000000000000, 484693815166889769433/1000000000000000000000); (-133538387619136539/200000000000000000, 243638137295310730163397/500000000000000000000000); (-719884450325481337/1000000000000000000, 137775721389909398369509/1000000000000000000000000); (-133538387619136539/200000000000000000, 144677430528773089263303/1000000000000000000000000); (-719884450325481337/1000000000000000000, 180322571207007398369509/1000000000000000000000000); (-133538387619136539/200000000000000000, 182905030630739089263303/1000000000000000000000000); (-719884450325481337/1000000000000000000, 464084316164481337/1000000000000000000); (-133538387619136539/200000000000000000, 94293329329956939/200000000000000000); (-719884450325481337/1000000000000000000, 482630141990481337/1000000000000000000); (-133538387619136539/200000000000000000, 97138644552130539/200000000000000000); (-719884450325481337/1000000000000000000, 133041351859428337/1000000000000000000); (-133538387619136539/200000000000000000, 28084736468946339/200000000000000000); (-719884450325481337/1000000000000000000, 175588201676526337/1000000000000000000); (-133538387619136539/200000000000000000, 35730256489339539/200000000000000000)` |
| 18 | 642 | c | 135501/250000 | 1/1 | 138082949077/226931000000 | 1/1 | 608479/1000000 | 1/1 | `(196767/1000000, -134952921289/1000000000000); (196767/1000000, -29547689483/200000000000); (226931/1000000, -138082949077/1000000000000); (226931/1000000, -30565694319/200000000000)` |
| 19 | 658 | j | 155647/500000 | 896233/1000000 | 155647/500000 | 215459/250000 | 155647/500000 | 215459/250000 | `(-1/1, 398429/500000); (-1/1, 104423061981/125000000000); (-1/1, 102913688019/125000000000); (-1/1, 215459/250000); (-1/1, 401800286063/500000000000); (-1/1, 427546713937/500000000000)` |
| 20 | 673 | c | 608479/1000000 | 1/1 | 608479/1000000 | 72667569397/72748800000 | 608479/1000000 | 249721/250000 | `(-303317/1000000, 128876977751/500000000000); (-238339/1000000, 23752669397/100000000000); (-303317/1000000, 50156465947/250000000000); (-238339/1000000, 7231274209/50000000000); (-396233/500000, 373451477751/500000000000); (-11367/15625, 72667569397/100000000000); (-396233/500000, 172443715947/250000000000); (-11367/15625, 31688724209/50000000000)` |
| 21 | 691 | p | 22907/200000 | 710233/1000000 | 27721339697/224058250000 | 710233/1000000 | 123723/1000000 | 710233/1000000 | `(896233/1000000, -137919331/1000000000); (166251/200000, -65588379437/500000000000); (896233/1000000, -28792457/200000000); (166251/200000, -13299757239/100000000000); (896233/1000000, -27721339697/250000000000); (166251/200000, -52071393331/500000000000); (896233/1000000, -5944415459/50000000000); (166251/200000, -10792359657/100000000000)` |
| 22 | 0 | a | 103767/1000000 | 6143/20000 | 93000/895117 | 6143/20000 | 103897/1000000 | 6143/20000 | `(63089/125000, -93/1000); (219867/500000, -93/1000); (895117/1000000, -93/1000); (830139/1000000, -93/1000)` |
| 23 | 7 | b | 103767/1000000 | 33749/200000 | 31000/298701 | 33749/200000 | 51891/500000 | 33749/200000 | `(8659/12500, -93/1000); (489467/1000000, -93/1000); (896103/1000000, -93/1000); (13857/20000, -93/1000)` |
| 24 | 10 | p | 123723/1000000 | 710233/1000000 | 50662644129/153575000000 | 710233/1000000 | 10309/31250 | 710233/1000000 | `(103897/1000000, -4168088283/50000000000); (6143/20000, -52227884253/500000000000); (103897/1000000, -1546573037/20000000000); (6143/20000, -22325315867/200000000000); (103897/1000000, -20057821353/250000000000); (6143/20000, -50662644129/500000000000); (103897/1000000, -7223862767/100000000000); (6143/20000, -21307311031/200000000000)` |
| 25 | 26 | h | 796617/1000000 | 1/1 | 796747/1000000 | 1/1 | 796747/1000000 | 1/1 | `(1/1, -796747/1000000); (1/1, -1/1)` |
| 26 | 27 | a | 103897/1000000 | 6143/20000 | 103897/1000000 | 60232252289/289767000000 | 103897/1000000 | 41573/200000 | `(-20941/31250, 2172984747/31250000000); (-20941/31250, 300625309/6250000000); (-289767/1000000, 30068252289/1000000000000); (-289767/1000000, -3216253517/200000000000); (-20941/31250, 3115609747/31250000000); (-20941/31250, 489150309/6250000000); (-289767/1000000, 60232252289/1000000000000); (-289767/1000000, 2816546483/200000000000)` |
| 27 | 27 | q | 196767/1000000 | 226931/1000000 | 19680466971/100000000000 | 226931/1000000 | 49201/250000 | 226931/1000000 | `(1/1, -153792277/781250000); (1/1, -1041110621/3906250000); (1/1, -3410774641/15625000000); (1/1, -899874317/3125000000); (1/1, -19680466971/100000000000); (1/1, -113465582583/500000000000); (1/1, -15184636849/62500000000); (1/1, -3413508563/12500000000)` |
| 28 | 29 | v | 382767/1000000 | 371917/500000 | 19139873613/50000000000 | 371917/500000 | 382797/1000000 | 371917/500000 | `(1/1, -9571420659/25000000000); (1/1, -56836975407/125000000000); (1/1, -3147944123/7812500000); (1/1, -370918613/781250000); (1/1, -19139873613/50000000000); (1/1, -101791944849/250000000000); (1/1, -13517015597/31250000000); (1/1, -2855717539/6250000000)` |
| 29 | 33 | f | 103767/1000000 | 33749/200000 | 31000/298701 | 33749/200000 | 51891/500000 | 33749/200000 | `(13857/20000, -93/1000); (294441/500000, -93/1000); (896103/1000000, -93/1000); (158427/200000, -93/1000)` |
| 30 | 46 | c | 608479/1000000 | 249721/250000 | 11051269359/16874500000 | 249721/250000 | 654909/1000000 | 249721/250000 | `(103767/1000000, -51884573397/500000000000); (103767/1000000, -22102032483/200000000000); (33749/200000, -11051269359/100000000000); (33749/200000, -4858995001/40000000000)` |
| 31 | 46 | e | 103767/1000000 | 33749/200000 | 46500/447551 | 33749/200000 | 51949/500000 | 33749/200000 | `(551127/1000000, -93/1000); (121541/250000, -93/1000); (447551/500000, -93/1000); (830139/1000000, -93/1000)` |
| 32 | 73 | c | 654909/1000000 | 249721/250000 | 654909/1000000 | 70348730641/83125500000 | 654909/1000000 | 105787/125000 | `(-448051/500000, 177554314441/250000000000); (-166251/200000, 70348730641/100000000000); (-448051/500000, 70346773199/100000000000); (-166251/200000, 27701004999/40000000000)` |
| 33 | 76 | p | 10309/31250 | 710233/1000000 | 10309/31250 | 47912232463/84372500000 | 10309/31250 | 283933/500000 | `(-51949/500000, 21479512223/500000000000); (-51949/500000, 1573626489/62500000000); (-33749/200000, 85427908369/1000000000000); (-33749/200000, 10007222567/125000000000); (-51949/500000, 53355581003/1000000000000); (-51949/500000, 3726083029/125000000000); (-33749/200000, 47912232463/500000000000); (-33749/200000, 5293026309/62500000000)` |
| 34 | 83 | u | 77257/250000 | 382799/500000 | 168980999541/500000000000 | 382799/500000 | 337961/1000000 | 382799/500000 | `(1/1, -536939237781/1000000000000); (1/1, -327531934171/500000000000); (1/1, -140451719823/250000000000); (1/1, -679931509853/1000000000000); (1/1, -168980999541/500000000000); (1/1, -96747210331/250000000000); (1/1, -48285460903/125000000000); (1/1, -217655264733/500000000000)` |
| 35 | 84 | w | 267953/500000 | 1/1 | 347759/551127 | 1/1 | 157749/250000 | 1/1 | `(551127/1000000, -47677/125000); (371257/500000, -572803/1000000); (121541/250000, -47677/125000); (677551/1000000, -572803/1000000); (551127/1000000, -347759/1000000); (371257/500000, -269573/500000); (121541/250000, -347759/1000000); (677551/1000000, -269573/500000)` |
| 36 | 98 | u | 337961/1000000 | 382799/500000 | 337961/1000000 | 9338720079/13854250000 | 337961/1000000 | 674069/1000000 | `(-448051/500000, 276573848009/500000000000); (-166251/200000, 68302218083/125000000000); (-448051/500000, 114253162351/200000000000); (-166251/200000, 28016160237/50000000000); (-448051/500000, 448398121/1953125000); (-166251/200000, 111424943299/500000000000); (-448051/500000, 847350001/3125000000); (-166251/200000, 52041878661/200000000000)` |
| 37 | 98 | v | 382797/1000000 | 371917/500000 | 382797/1000000 | 622493077/865890625 | 382797/1000000 | 143781/200000 | `(-448109/500000, 296684864871/500000000000); (-448109/500000, 121711107071/200000000000); (-166251/200000, 9165940687/15625000000); (-166251/200000, 1867479231/3125000000); (-448109/500000, 146091339363/500000000000); (-448109/500000, 65832815963/200000000000); (-166251/200000, 35679144119/125000000000); (-166251/200000, 15910094919/50000000000)` |
| 38 | 100 | j | 155647/500000 | 215459/250000 | 27899711097/89610200000 | 215459/250000 | 62269/200000 | 215459/250000 | `(448051/500000, -179345312363/250000000000); (166251/200000, -355325649049/500000000000); (448051/500000, -73707712157/100000000000); (166251/200000, -145226902911/200000000000); (448051/500000, -27899711097/100000000000); (166251/200000, -4254174369/15625000000); (448051/500000, -13218782783/40000000000); (166251/200000, -499260879/1562500000)` |
| 39 | 102 | u | 337961/1000000 | 674069/1000000 | 337961/1000000 | 524203/831255 | 337961/1000000 | 630617/1000000 | `(-692849/1000000, 6419/20000); (-314001/500000, 6419/20000); (-448051/500000, 524203/1000000); (-166251/200000, 524203/1000000); (-692849/1000000, -7579/500000); (-314001/500000, -7579/500000); (-448051/500000, 37619/200000); (-166251/200000, 37619/200000)` |
| 40 | 102 | v | 382797/1000000 | 143781/200000 | 382797/1000000 | 125213645789/200000000000 | 382797/1000000 | 626069/1000000 | `(-1/1, 469591059111/1000000000000); (-1/1, 245753408039/500000000000); (-1/1, 302076235989/500000000000); (-1/1, 125213645789/200000000000); (-1/1, 266824642167/1000000000000); (-1/1, 153859131383/500000000000); (-1/1, 170951422533/500000000000); (-1/1, 76559293133/200000000000)` |
| 41 | 113 | h | 796747/1000000 | 1/1 | 796747/1000000 | 40026128999/41562750000 | 796747/1000000 | 963029/1000000 | `(-862561/1000000, 100982121641/125000000000); (-398799/500000, 38343278999/50000000000); (-448109/500000, 105189246641/125000000000); (-166251/200000, 40026128999/50000000000); (-862561/1000000, 769561/1000000); (-398799/500000, 352299/500000); (-448109/500000, 401609/500000); (-166251/200000, 147651/200000)` |
| 42 | 116 | f | 51891/500000 | 33749/200000 | 51891/500000 | 18391/133866 | 51891/500000 | 17173/125000 | `(-27137/62500, -9604289831/250000000000); (-27137/62500, -31557998309/250000000000); (-80813/200000, -13506034977/200000000000); (-80813/200000, -155345008797/1000000000000); (-27137/62500, -44468717/3906250000); (-27137/62500, -12399853183/125000000000); (-80813/200000, -648609243/15625000000); (-80813/200000, -16165728183/125000000000); (-200799/250000, 20828208057/250000000000); (-773069/1000000, 54199816667/1000000000000); (-200799/250000, 55173/500000); (-773069/1000000, 80219/1000000)` |
| 43 | 116 | q | 49201/250000 | 226931/1000000 | 49201/250000 | 101684/448109 | 49201/250000 | 226919/1000000 | `(-862561/1000000, 10784622697/125000000000); (-828959/1000000, 2033570437/31250000000); (-862561/1000000, -96115771/62500000000); (-828959/1000000, -2842572491/125000000000); (-448109/500000, 14991747697/125000000000); (-107827/125000, 3085351687/31250000000); (-448109/500000, 2007446729/62500000000); (-107827/125000, 1364552509/125000000000); (-862561/1000000, 169711/1000000); (-828959/1000000, 136109/1000000); (-448109/500000, 25421/125000); (-107827/125000, 84883/500000)` |
| 44 | 116 | r | 966343/1000000 | 1/1 | 32341970303/33466500000 | 1/1 | 483199/500000 | 1/1 | `(200799/250000, -26863790803/31250000000); (200799/250000, -1365985977/1562500000); (200799/250000, -118432017451/125000000000); (200799/250000, -120255732399/125000000000); (773081/1000000, -428257955383/500000000000); (773081/1000000, -21752342653/25000000000); (773081/1000000, -472165372339/500000000000); (773081/1000000, -7483660469/7812500000); (200799/250000, -97025910909/125000000000); (200799/250000, -25099883727/31250000000); (773081/1000000, -386540946171/500000000000); (773081/1000000, -99882370013/125000000000)` |
| 45 | 116 | w | 157749/250000 | 1/1 | 24889660909/28263250000 | 1/1 | 220159/250000 | 1/1 | `(113053/500000, -7065821227/31250000000); (24063/125000, -27436658907/125000000000); (116021/250000, -14502633727/31250000000); (215241/500000, -57183908907/125000000000); (113053/500000, -31510495013/125000000000); (24063/125000, -122229513933/500000000000); (116021/250000, -61257745013/125000000000); (215241/500000, -241218513933/500000000000); (113053/500000, -24889660909/125000000000); (24063/125000, -6015758727/31250000000); (116021/250000, -54636910909/125000000000); (215241/500000, -13452571227/31250000000); (113053/500000, -113053446171/500000000000); (24063/125000, -27310245013/125000000000); (116021/250000, -232042446171/500000000000); (215241/500000, -57057495013/125000000000)` |
| 46 | 120 | k | 101771/250000 | 896233/1000000 | 101771/250000 | 401609/448109 | 101771/250000 | 896231/1000000 | `(-107827/125000, 186210112517/250000000000); (-414507/500000, 178812329799/250000000000); (-448109/500000, 194610612517/250000000000); (-107827/125000, 187212829799/250000000000); (-107827/125000, 48101/62500); (-414507/500000, 368007/500000); (-448109/500000, 401609/500000); (-107827/125000, 84891455293/125000000000); (-414507/500000, 40596281967/62500000000); (-448109/500000, 89091705293/125000000000); (-107827/125000, 42696406967/62500000000)` |
| 47 | 129 | a | 103897/1000000 | 41573/200000 | 103897/1000000 | 33749/200000 | 103897/1000000 | 33749/200000 | `(-1/1, 51949/500000); (-1/1, 33749/200000)` |
| 48 | 131 | b | 51891/500000 | 33749/200000 | 51891/500000 | 17173/125000 | 51891/500000 | 17173/125000 | `(-1/1, 51891/500000); (-1/1, 17173/125000)` |
| 49 | 133 | e | 51949/500000 | 33749/200000 | 51949/500000 | 17173/125000 | 51949/500000 | 17173/125000 | `(-1/1, 51891/500000); (-1/1, 17173/125000)` |
| 50 | 133 | f | 51891/500000 | 17173/125000 | 51949/500000 | 17173/125000 | 51949/500000 | 17173/125000 | `(1/1, -51949/500000); (1/1, -17173/125000)` |
| 51 | 620 | k | 101771/250000 | 896231/1000000 | 81442862269/200000000000 | 896231/1000000 | 203607/500000 | 896231/1000000 | `(1/1, -81442862269/200000000000); (1/1, -90374442157/200000000000); (1/1, -83528002003/200000000000); (1/1, -92459581891/200000000000); (1/1, -101803715459/250000000000); (1/1, -104043630227/250000000000); (1/1, -109018575533/250000000000); (1/1, -111258490301/250000000000)` |
| 52 | 658 | j | 62269/200000 | 215459/250000 | 62269/200000 | 33219/40000 | 62269/200000 | 33219/40000 | `(-1/1, 99615029603/125000000000); (-1/1, 204209757999/250000000000); (-1/1, 202639051207/250000000000); (-1/1, 33219/40000); (-1/1, 199244240699/250000000000); (-1/1, 400231904367/500000000000); (-1/1, 413494077031/500000000000)` |
| 53 | 0 | a | 103897/1000000 | 33749/200000 | 46500/371257 | 33749/200000 | 501/4000 | 33749/200000 | `(551127/1000000, -93/1000); (20701/40000, -93/1000); (371257/500000, -93/1000); (44307/62500, -93/1000)` |
| 54 | 7 | b | 51891/500000 | 17173/125000 | 93000/837779 | 17173/125000 | 111007/1000000 | 17173/125000 | `(671497/1000000, -93/1000); (314001/500000, -93/1000); (837779/1000000, -93/1000); (198571/250000, -93/1000)` |
| 55 | 7 | h | 796747/1000000 | 963029/1000000 | 55103673/68692000 | 963029/1000000 | 100273/125000 | 963029/1000000 | `(111007/1000000, -427614507/4000000000); (111007/1000000, -22346375243/200000000000); (17173/125000, -55103673/500000000); (17173/125000, -2904571577/25000000000)` |
| 56 | 10 | a | 501/4000 | 33749/200000 | 7728120013/53810250000 | 33749/200000 | 143617/1000000 | 33749/200000 | `(218881/1000000, -17788344593/250000000000); (24063/125000, -2061321227/31250000000); (456859/1000000, -17788344593/250000000000); (215241/500000, -2061321227/31250000000); (218881/1000000, -67810402567/1000000000000); (24063/125000, -7728120013/125000000000); (456859/1000000, -67810402567/1000000000000); (215241/500000, -7728120013/125000000000)` |
| 57 | 10 | p | 10309/31250 | 283933/500000 | 5312988949/10546562500 | 283933/500000 | 125941/250000 | 283933/500000 | `(143617/1000000, -87095870691/1000000000000); (33749/200000, -89885254587/1000000000000); (143617/1000000, -10711619649/125000000000); (33749/200000, -11143142793/125000000000); (143617/1000000, -41876447443/500000000000); (33749/200000, -43271139391/500000000000); (143617/1000000, -5097227377/62500000000); (33749/200000, -5312988949/62500000000)` |
| 58 | 26 | h | 100273/125000 | 963029/1000000 | 836467/1000000 | 963029/1000000 | 836467/1000000 | 963029/1000000 | `(1/1, -836467/1000000); (1/1, -172319/200000)` |
| 59 | 27 | e | 51949/500000 | 17173/125000 | 51949/500000 | 2763738897/21841000000 | 51949/500000 | 6327/50000 | `(-125941/250000, 8134018597/250000000000); (-125941/250000, 1003332809/50000000000); (-283933/500000, 20871105661/500000000000); (-283933/500000, 3088354817/100000000000); (-125941/250000, 15662768597/250000000000); (-125941/250000, 2509082809/50000000000); (-283933/500000, 35928605661/500000000000); (-283933/500000, 6099854817/100000000000)` |
| 60 | 27 | q | 49201/250000 | 226919/1000000 | 107030965173/500000000000 | 226919/1000000 | 214061/1000000 | 226919/1000000 | `(1/1, -54151999421/250000000000); (1/1, -57269353973/250000000000); (1/1, -57003555543/250000000000); (1/1, -12024182019/50000000000); (1/1, -107030965173/500000000000); (1/1, -112460296749/500000000000); (1/1, -113459776159/500000000000); (1/1, -23777821547/100000000000)` |
| 61 | 29 | v | 382797/1000000 | 626069/1000000 | 397569523377/1000000000000 | 626069/1000000 | 397569/1000000 | 626069/1000000 | `(1/1, -409193527041/1000000000000); (1/1, -425829243033/1000000000000); (1/1, -416845640003/1000000000000); (1/1, -86696271199/200000000000); (1/1, -397569523377/1000000000000); (1/1, -406851379401/1000000000000); (1/1, -411847953491/1000000000000); (1/1, -84225961903/200000000000)` |
| 62 | 33 | f | 51949/500000 | 17173/125000 | 23250/204853 | 17173/125000 | 14187/125000 | 17173/125000 | `(13857/20000, -93/1000); (333861/500000, -93/1000); (204853/250000, -93/1000); (198571/250000, -93/1000)` |
| 63 | 45 | k | 203607/500000 | 896231/1000000 | 93216836111/200000000000 | 896231/1000000 | 116521/250000 | 896231/1000000 | `(483199/500000, -461258362121/1000000000000); (483199/500000, -95543706781/200000000000); (1/1, -93216836111/200000000000); (1/1, -96677740679/200000000000); (483199/500000, -498421746701/1000000000000); (483199/500000, -102976383697/200000000000); (1/1, -100649513027/200000000000); (1/1, -20822083519/40000000000); (483199/500000, -843867035591/1000000000000); (483199/500000, -169456501747/200000000000); (1/1, -33947714161/40000000000); (1/1, -34118107129/40000000000); (483199/500000, -942995853491/1000000000000); (483199/500000, -189282265327/200000000000); (1/1, -37912866877/40000000000); (1/1, -7616651969/8000000000)` |
| 64 | 46 | b | 111007/1000000 | 17173/125000 | 111007/1000000 | 29354783/263625000 | 111007/1000000 | 111351/1000000 | `(-51949/500000, -12478132359/500000000000); (-51949/500000, -316971137/62500000000); (-6327/50000, -506390757/50000000000); (-6327/50000, 88064349/6250000000)` |
| 65 | 46 | c | 654909/1000000 | 105787/125000 | 1784113763/2109000000 | 105787/125000 | 13218/15625 | 105787/125000 | `(51949/500000, -52266702643/500000000000); (51949/500000, -52284573099/500000000000); (6327/50000, -5352341289/50000000000); (6327/50000, -5354517777/50000000000)` |
| 66 | 46 | e | 51949/500000 | 6327/50000 | 3000/23719 | 6327/50000 | 1581/12500 | 6327/50000 | `(146989/200000, -93/1000); (734601/1000000, -93/1000); (735289/1000000, -93/1000)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |


### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |


### Interval contradiction

| Factor | Target | Old lower | Old upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- |
| 73 | c | 13218/15625 | 105787/125000 | `(-10919/12500, 1104132853/1562500000); (-43673/50000, 4416488851/6250000000); (-10919/12500, 1099411987/1562500000); (-43673/50000, 4397596429/6250000000)` |

## Stage 353

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS- |
| Packet | forest:root/AFP-/APR+/ARS- |
| Index | 0 |
| Context | 140 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 148 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| b | 103767/1000000 | 344349/500000 | 103767/1000000 | 344349/500000 |
| c | 135501/250000 | 1/1 | 135501/250000 | 1/1 |
| e | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| f | 103767/1000000 | 344349/500000 | 103767/1000000 | 344349/500000 |
| h | 135501/250000 | 1/1 | 135501/250000 | 1/1 |
| p | 22907/200000 | 710233/1000000 | 22907/200000 | 710233/1000000 |
| q | 196767/1000000 | 158493/200000 | 196767/1000000 | 158493/200000 |
| u | 103767/1000000 | 907/1000 | 103767/1000000 | 907/1000 |
| v | 103767/1000000 | 907/1000 | 103767/1000000 | 907/1000 |
| r | 415069/1000000 | 1/1 | 415069/1000000 | 1/1 |
| w | 211159/500000 | 1/1 | 796617/1000000 | 1/1 |
| j | 155647/500000 | 8033/8963 | 155647/500000 | 8033/8963 |
| k | 155647/500000 | 8033/8963 | 155647/500000 | 8033/8963 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 28 | A_AER | bitt ["actual-area","AER",["P","S"]] | `1/1 * w + -1/1 * a + -1/1 * e * r + 1/1 * a * r + -13857/20000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 28 | w | 211159/500000 | 1/1 | 796617/1000000 | 1/1 | 796617/1000000 | 1/1 | `(1/1, -796617/1000000); (1/1, -1012007896923/1000000000000); (1/1, -949459103077/1000000000000); (1/1, -23297/20000)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 353:2 | ABE | lo | 93/1000 | occupants none |
| 353:17 | ACE | hi | 59/125 | vertex maximum 59/125 |
| 353:21 | ACH | hi | 896233/1000000 | vertex maximum 896233/1000000 |
| 353:22 | ACP | lo | 93/1000 | occupants none |
| 353:30 | AEF | lo | 60107/200000 | earlier 148:30; AEF; lo; 60107/200000 |
| 353:31 | AEF | hi | 896233/1000000 | vertex maximum 896233/1000000 |
| 353:32 | AEH | lo | 279/1000 | occupants P |
| 353:33 | AEH | hi | 896233/1000000 | vertex maximum 896233/1000000 |
| 353:34 | AEP | lo | 93/1000 | occupants none |
| 353:36 | AER | lo | 13857/20000 | occupants P, S |
| 353:37 | AER | hi | 896233/1000000 | vertex maximum 896233/1000000 |
| 353:40 | AFH | lo | 93/1000 | occupants none |
| 353:44 | AFR | lo | 93/1000 | occupants none |
| 353:48 | AHP | lo | 93/1000 | occupants none |
| 353:53 | AHR | hi | 896233/1000000 | vertex maximum 896233/1000000 |
| 353:56 | APR | lo | 93/1000 | occupants none |
| 353:58 | ARS | lo | 93/1000 | occupants none |
| 353:60 | BCE | lo | 93/1000 | occupants none |
| 353:64 | BCH | lo | 60107/200000 | earlier 148:62; BCH; lo; 60107/200000 |
| 353:66 | BCP | lo | 22907/200000 | earlier 148:64; BCP; lo; 22907/200000 |
| 353:89 | BFS | hi | 396233/500000 | earlier 148:87; BFS; hi; 396233/500000 |
| 353:96 | BHS | lo | 22907/200000 | earlier 148:94; BHS; lo; 22907/200000 |
| 353:106 | CER | lo | 93/1000 | occupants none |
| 353:107 | CER | hi | 12947733/25000000 | vertex maximum 12947733/25000000 |
| 353:118 | CHP | lo | 93/1000 | occupants none |
| 353:129 | CPR | hi | 156563/200000 | earlier 148:127; CPR; hi; 156563/200000 |
| 353:134 | EFP | lo | 22907/200000 | earlier 148:132; EFP; lo; 22907/200000 |
| 353:135 | EFP | hi | 340641/500000 | earlier 148:133; EFP; hi; 340641/500000 |
| 353:138 | EFR | lo | 279/1000 | occupants S |
| 353:139 | EFR | hi | 803233590289/1000000000000 | vertex maximum 803233590289/1000000000000 |
| 353:140 | EFS | lo | 93/1000 | occupants none |
| 353:144 | EHR | lo | 279/1000 | occupants S |
| 353:145 | EHR | hi | 896233/1000000 | vertex maximum 896233/1000000 |
| 353:149 | EPR | hi | 710233/1000000 | earlier 148:147; EPR; hi; 710233/1000000 |
| 353:156 | ERS | lo | 93/1000 | occupants none |
| 353:162 | FHR | lo | 93/1000 | occupants none |
| 353:174 | FRS | lo | 93/1000 | occupants none |
| 353:179 | HPR | hi | 793583/1000000 | earlier 148:177; HPR; hi; 793583/1000000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 6 | fan | AER = AES + ERS + ARS | point S |
| 30 | plu | ACE * BER = ABE * CER + AER * BCE | circuit EABCR |
| 225 | plu | AEF * AHR = AEH * AFR + AER * AFH | circuit AEFHR |
| 229 | plu | AFR * EHR = AER * FHR + AHR * EFR | circuit RAEFH |
| 243 | plu | AES * EFR = AEF * ERS + AER * EFS | circuit EAFRS |
| 1035 | bary | outer ACH; fans CHP, AHP, ACP; target EPR; sign 1; vertices AER 1; CER 1; EHR 1 | container ACH; inner P; line ER |
| 1144 | bary | outer AER; fans EPR, APR, AEP; target CEP; sign 1; vertices ACE 1; none 0; CER 1 | container AER; inner P; line CE |
| 1166 | bary | outer AER; fans ERS, ARS, AES; target AHS; sign -1; vertices none 0; AEH -1; AHR -1 | container AER; inner S; line AH |
| 1276 | bary | outer EFR; fans FRS, ERS, EFS; target HRS; sign -1; vertices EHR -1; FHR 1; none 0 | container EFR; inner S; line HR |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 353:184 | AES | hi | 710233/1000000 | 710233/1000000 | 6 | 353:37, 353:156, 353:58 |
| 353:187 | BER | lo | 154839/1000000 | 1461681/9440000 | 30 | 353:2, 353:106, 353:36, 353:60, 353:17 |
| 353:189 | AHR | lo | 50423/500000 | 1807641/17924660 | 225 | 353:32, 353:44, 353:36, 353:40, 353:31 |
| 353:190 | AFR | lo | 103289/1000000 | 23142771/224058250 | 229 | 353:36, 353:162, 353:189, 353:138, 353:145 |
| 353:191 | AES | lo | 14377/125000 | 92384805000/803233590289 | 243 | 353:30, 353:156, 353:36, 353:140, 353:139 |
| 353:198 | EPR | lo | 34909/200000 | 12033363/68941000 | 1035 | 353:21, 353:118, 353:48, 353:22, 353:36, 353:106, 353:144 |
| 353:206 | CEP | hi | 455227/1000000 | 637482210269/1400364062500 | 1144 | 353:37, 353:198, 353:56, 353:34, 353:17, 353:107 |
| 353:212 | AHS | hi | 803233/1000000 | 803233/1000000 | 1166 | 353:37, 353:156, 353:58, 353:191, 353:33, 353:53 |
| 353:228 | HRS | hi | 67793/100000 | 544536112325481337/803233590289000000 | 1276 | 353:139, 353:174, 353:156, 353:140, 353:145, 353:162 |
| 353:230 | AHR | lo | 104049/1000000 | 93252681/896233000 | 225 | 353:32, 353:190, 353:36, 353:40, 353:31 |
| 353:231 | AFR | lo | 52143/500000 | 93464721/896233000 | 229 | 353:36, 353:162, 353:230, 353:138, 353:145 |
| 353:235 | AHR | lo | 104359/1000000 | 23382711/224058250 | 225 | 353:32, 353:231, 353:36, 353:40, 353:31 |
| 353:236 | AFR | lo | 52191/500000 | 7196247/68941000 | 229 | 353:36, 353:162, 353:235, 353:138, 353:145 |
| 353:240 | AHR | lo | 104389/1000000 | 23389407/224058250 | 225 | 353:32, 353:236, 353:36, 353:40, 353:31 |
| 353:241 | AFR | lo | 13049/125000 | 93559581/896233000 | 229 | 353:36, 353:162, 353:240, 353:138, 353:145 |
| 353:245 | AHR | lo | 13049/125000 | 46780209/448116500 | 225 | 353:32, 353:241, 353:36, 353:40, 353:31 |

## Stage 354

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS- |
| Packet | forest:root/AFP-/APR+/ARS- |
| Index | 1 |
| Context | 140 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 353 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| b | 103767/1000000 | 344349/500000 | 103767/1000000 | 344349/500000 |
| c | 135501/250000 | 1/1 | 135501/250000 | 1/1 |
| e | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| f | 103767/1000000 | 344349/500000 | 103767/1000000 | 344349/500000 |
| h | 135501/250000 | 1/1 | 135501/250000 | 1/1 |
| p | 22907/200000 | 710233/1000000 | 22907/200000 | 710233/1000000 |
| q | 196767/1000000 | 158493/200000 | 196767/1000000 | 158493/200000 |
| u | 103767/1000000 | 907/1000 | 103767/1000000 | 907/1000 |
| v | 103767/1000000 | 907/1000 | 103767/1000000 | 907/1000 |
| r | 415069/1000000 | 1/1 | 415069/1000000 | 1/1 |
| w | 796617/1000000 | 1/1 | 796617/1000000 | 1/1 |
| j | 155647/500000 | 8033/8963 | 155647/500000 | 8033/8963 |
| k | 155647/500000 | 8033/8963 | 155647/500000 | 8033/8963 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |


### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |


### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 354:30 | AEF | lo | 60107/200000 | earlier 353:30; AEF; lo; 60107/200000 |
| 354:39 | AES | hi | 710233/1000000 | earlier 353:184; AES; hi; 710233/1000000 |
| 354:44 | AFR | lo | 13049/125000 | earlier 353:241; AFR; lo; 13049/125000 |
| 354:52 | AHR | lo | 13049/125000 | earlier 353:245; AHR; lo; 13049/125000 |
| 354:55 | AHS | hi | 803233/1000000 | earlier 353:212; AHS; hi; 803233/1000000 |
| 354:64 | BCH | lo | 60107/200000 | earlier 353:64; BCH; lo; 60107/200000 |
| 354:66 | BCP | lo | 22907/200000 | earlier 353:66; BCP; lo; 22907/200000 |
| 354:80 | BER | lo | 154839/1000000 | earlier 353:187; BER; lo; 154839/1000000 |
| 354:89 | BFS | hi | 396233/500000 | earlier 353:89; BFS; hi; 396233/500000 |
| 354:96 | BHS | lo | 22907/200000 | earlier 353:96; BHS; lo; 22907/200000 |
| 354:103 | CEP | hi | 455227/1000000 | earlier 353:206; CEP; hi; 455227/1000000 |
| 354:129 | CPR | hi | 156563/200000 | earlier 353:129; CPR; hi; 156563/200000 |
| 354:134 | EFP | lo | 22907/200000 | earlier 353:134; EFP; lo; 22907/200000 |
| 354:135 | EFP | hi | 340641/500000 | earlier 353:135; EFP; hi; 340641/500000 |
| 354:148 | EPR | lo | 34909/200000 | earlier 353:198; EPR; lo; 34909/200000 |
| 354:149 | EPR | hi | 710233/1000000 | earlier 353:149; EPR; hi; 710233/1000000 |
| 354:179 | HPR | hi | 793583/1000000 | earlier 353:179; HPR; hi; 793583/1000000 |
| 354:183 | HRS | hi | 67793/100000 | earlier 353:228; HRS; hi; 67793/100000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
