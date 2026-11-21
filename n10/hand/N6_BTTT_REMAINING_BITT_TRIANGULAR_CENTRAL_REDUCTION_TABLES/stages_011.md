# BITT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 55

| Property | Value |
| --- | --- |
| Scope | root/ACP+/HBP-/HEQ+/CFQ+/PQR-/PQS-/PRS+/QRS- |
| Packet | forest:root/ACP+/HBP-/HEQ+/CFQ+/PQR-/PQS-/PRS+/QRS- |
| Index | 1 |
| Context | 20 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 54 |
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
| q | 82827/500000 | 293803/500000 | 82827/500000 | 293803/500000 |
| u | 107821/1000000 | 271107/500000 | 107821/1000000 | 271107/500000 |
| v | 484711/1000000 | 907/1000 | 484711/1000000 | 907/1000 |
| r | 40433/62500 | 1/1 | 40433/62500 | 1/1 |
| w | 274929/500000 | 1/1 | 274929/500000 | 1/1 |
| j | 51267/100000 | 892179/1000000 | 51267/100000 | 892179/1000000 |
| k | 412393/1000000 | 8033/8963 | 412393/1000000 | 8033/8963 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 4 | AC_ABE_ABE_0 | bitt ["anchor-cap","ABE","ABE",0,[]] | `-93/1000 + 1/1 * e` |
| 6 | AC_ABF_ABF_0 | bitt ["anchor-cap","ABF","ABF",0,[]] | `-93/1000 + 1/1 * f` |
| 18 | AC_ACF_ACF_0 | bitt ["anchor-cap","ACF","ACF",0,[]] | `-93/1000 + 1/1 * c` |
| 26 | AC_AEF_AEF_0 | bitt ["anchor-cap","AEF","AEF",0,[]] | `907/1000 + -1/1 * a` |
| 39 | AC_BCH_BCH_0 | bitt ["anchor-cap","BCH","BCH",0,[]] | `-93/1000 + 1/1 * h` |
| 45 | AC_BEF_BEF_0 | bitt ["anchor-cap","BEF","BEF",0,[]] | `907/1000 + -1/1 * b` |
| 68 | AC_CEF_CEF_0 | bitt ["anchor-cap","CEF","CEF",0,[]] | `907/1000 + -1/1 * f` |
| 93 | AC_EFQ_EFH_0 | bitt ["anchor-cap","EFQ","EFH",0,[]] | `907/1000 + -1/1 * e` |
| 124 | ea | bitt ["contact-order","ea"] | `1/1 * e + -1/1 * a` |
| 125 | he | bitt ["contact-order","he"] | `1/1 * h + -1/1 * e` |
| 126 | fb | bitt ["contact-order","fb"] | `1/1 * f + -1/1 * b` |
| 127 | cf | bitt ["contact-order","cf"] | `1/1 * c + -1/1 * f` |
| 128 | sym | bitt ["contact-order","sym"] | `1/1 * f + -1/1 * e` |
| 129 | lower-area | bitt ["endpoint-lower","13857/20000"] | `1/1 * c * h + -13857/20000` |
| 131 | upper-quad | bitt ["upper-quad","BITT"] | `346/625 + -1/1 * c * h + 1/1 * f * h + 1/1 * c * e + -1/1 * e * f` |
| 132 | top-area | bitt ["top-hull","-"] | `721/1000 + -1/1 * f + -1/1 * e + 1/1 * e * f` |
| 134 | upper-Q-y | bitt ["upper-point-y","42680538931/62500000000","Q"] | `31055538931/62500000000 + -42680538931/62500000000 * v + 93/1000 * e + 93/1000 * h` |
| 135 | lower-sum | bitt ["lower-sum"] | `907/1000 + -1/1 * p + -1/1 * q` |
| 136 | WBARY_RS_0 | bitt ["weighted-barycentric","R","S",["1/1","1/1","1/1"],"3039253413/484375000",0] | `3039253413/484375000 * j + -1/1 + -2070503413/484375000 * f + -1/1 * r` |
| 138 | WBARY_RS_2 | bitt ["weighted-barycentric","R","S",["1/1","1/1","1/1"],"3039253413/484375000",2] | `3039253413/484375000 * k + -1/1 + -2070503413/484375000 * e + -1/1 * w` |
| 139 | WBARY_RS_3 | bitt ["weighted-barycentric","R","S",["1/1","1/1","1/1"],"3039253413/484375000",3] | `2070503413/484375000 + 1/1 * e + 1/1 * w + -3039253413/484375000 * k` |
| 248 | SUP_CEH_CEF_CFH | bitt ["support-envelope",["quad","CEFH",["Q"],"12/1"],"CEH","CEF","CFH","792719/1250000"] | `792719/1250000 + 602281/1250000 * c + -792719/1250000 * e * f + -602281/1250000 * c * e + -279/250 * h + 279/250 * f * h` |
| 326 | SUP_ABC_ABH_BCH | bitt ["support-envelope",["pentagon","BCEHA"],"ABC","ABH","BCH","4989453/15625000"] | `-5497461/7812500 * b * h + 5497461/7812500 * a * b + -1023/1000 * a * c + 1023/1000 * c * h` |
| 327 | SUP_CEH_BCE_BEH | bitt ["support-envelope",["pentagon","EHABC"],"CEH","BCE","BEH","792719/1250000"] | `-486031/1250000 * c * e + 486031/1250000 * b * e + 1023/1000 * c * h + -1023/1000 * b * h` |
| 355 | SUP_CHQ_BCQ_BHQ | bitt ["support-envelope",["pentagon","QHABC"],"CHQ","BCQ","BHQ","5898229699/10000000000"] | `-4331770301/10000000000 * c * v + 4331770301/10000000000 * b * v + 1023/1000 * c * h + -1023/1000 * b * h` |
| 370 | SUP_AFR_EFR_AEF | bitt ["support-envelope",["pentagon","FABER"],"AFR","EFR","AEF","45571336699/62500000000"] | `18366163301/62500000000 * f * w + -18366163301/62500000000 * e * f + 45571336699/62500000000 * w + -18366163301/62500000000 * r + 18366163301/62500000000 + -45571336699/62500000000 * e * r + 1023/1000 * a * r + -1023/1000 * a` |
| 385 | SUP_ABS_ABH_BHS | bitt ["support-envelope",["pentagon","BSFHA"],"ABS","ABH","BHS","793362395331/1120375000000"] | `-352781229669/1120375000000 * b * h + 352781229669/1120375000000 * a * b + -1023/1000 * a * j + 1023/1000 * h * j` |
| 418 | SUP_EFS_AES_AFS | bitt ["support-envelope",["pentagon","SFHAE"],"EFS","AES","AFS","94187652404853/224075000000000"] | `-135041072595147/224075000000000 * k + -94187652404853/224075000000000 * a + 135041072595147/224075000000000 * e * j + -135041072595147/224075000000000 * a * j + -1023/1000 * e * f + 1023/1000 + 1023/1000 * a * f` |
| 428 | SUP_BCE_BCQ_CEQ | bitt ["support-envelope",["pentagon","CEFQB"],"BCE","BCQ","CEQ","4989453/15625000"] | `-5497461/7812500 * c * v + -4989453/15625000 * b * v + 1023/1000 * b * e + 1023/1000 * v + -1023/1000 * e * u` |
| 429 | SUP_EFQ_CEF_CFQ | bitt ["support-envelope",["pentagon","FQBCE"],"EFQ","CEF","CFQ","20537956323/31250000000"] | `-11430793677/31250000000 + 11430793677/31250000000 * c + 11430793677/31250000000 * e * f + 20537956323/31250000000 * c * e + 1023/1000 * v + -1023/1000 * e * u + -1023/1000 * c * v` |
| 433 | SUP_BFR_EFR_BEF | bitt ["support-envelope",["pentagon","FBCER"],"BFR","EFR","BEF","84567/125000"] | `10827/31250 * f * w + -10827/31250 * e * f + 84567/125000 * w + -10827/31250 * r + 10827/31250 + -84567/125000 * e * r + -1023/1000 * b * w + 1023/1000 * b * e` |
| 438 | SUP_BHP_EHP_BEP | bitt ["support-envelope",["pentagon","PBCEH"],"BHP","EHP","BEP","28540256591/62500000000"] | `35397243409/62500000000 * q + 35397243409/62500000000 * h * p + 28540256591/62500000000 * h + -35397243409/62500000000 * e * p + -1023/1000 * b * h + 1023/1000 * b * e` |
| 439 | SUP_BCH_BHQ_BCQ | bitt ["support-envelope",["pentagon","BCEQH"],"BCH","BHQ","BCQ","84567/125000"] | `-10827/31250 * b * v + 84567/125000 * h * u + 10827/31250 * b * h + -1023/1000 * c * h + 1023/1000 * c * v` |
| 466 | SUP_BHP_FHP_BFP | bitt ["support-envelope",["pentagon","PBCFH"],"BHP","FHP","BFP","28540256591/62500000000"] | `35397243409/62500000000 * f * q + 35397243409/62500000000 * h * p + 28540256591/62500000000 * f * h + -35397243409/62500000000 * p + -1023/1000 * b * h + 1023/1000 * b` |
| 484 | SUP_FQS_CFS_CFQ | bitt ["support-envelope",["pentagon","FQBCS"],"FQS","CFS","CFQ","13915605651/31250000000"] | `18053144349/31250000000 * f * k + 13915605651/31250000000 * c * k + -18053144349/31250000000 * j + 18053144349/31250000000 * c + -1023/1000 * u * k + 1023/1000 * v * j + -1023/1000 * c * v` |
| 498 | SUP_BPQ_PQS_BPS | bitt ["support-envelope",["pentagon","PBCSQ"],"BPQ","PQS","BPS","123393382103/250000000000"] | `-123393382103/250000000000 * u * k + -132356617897/250000000000 * q * u + -132356617897/250000000000 * p * k + 123393382103/250000000000 * v * j + 132356617897/250000000000 * p * v + 132356617897/250000000000 * q * j + -1023/1000 * b * v + 1023/1000 * b * k` |
| 499 | SUP_CRS_BCR_BRS | bitt ["support-envelope",["pentagon","RSPBC"],"CRS","BCR","BRS","48733/100000"] | `-53567/100000 * c * w + 53567/100000 * b * w + 1023/1000 * c * k + -1023/1000 * b * k` |
| 510 | SUP_FPQ_EFQ_EPQ | bitt ["support-envelope",["pentagon","QPBEF"],"FPQ","EFQ","EPQ","45543357539/100000000000"] | `-56756642461/100000000000 * f * v + -45543357539/100000000000 * e * f + 56756642461/100000000000 * v + 56756642461/100000000000 * u + 45543357539/100000000000 + -56756642461/100000000000 * e * u + -1023/1000 * p + 1023/1000 * f * q + 1023/1000 * e * p + -1023/1000 * q` |
| 514 | SUP_BES_BEP_EPS | bitt ["support-envelope",["pentagon","ESFPB"],"BES","BEP","EPS","325093431202913/560187500000000"] | `-247978381297087/560187500000000 * q + -325093431202913/560187500000000 * b * q + 247978381297087/560187500000000 * e * p + -247978381297087/560187500000000 * b * e + 1023/1000 * b * k + -1023/1000 * p * k + 1023/1000 * q * j` |
| 552 | SUP_CEP_CPQ_CEQ | bitt ["support-envelope",["pentagon","CEFQP"],"CEP","CPQ","CEQ","4566168709/10000000000"] | `-4566168709/10000000000 * p * v + -5663831291/10000000000 * c * v + 4566168709/10000000000 * q * u + 5663831291/10000000000 * c * q + -1023/1000 * q + 1023/1000 * e * p + 1023/1000 * v + -1023/1000 * e * u` |
| 560 | SUP_CER_CEQ_EQR | bitt ["support-envelope",["pentagon","ERFQC"],"CER","CEQ","EQR","10275787/31250000"] | `-21692963/31250000 * v + -10275787/31250000 * c * v + 21692963/31250000 * e * u + -21692963/31250000 * c * e + 1023/1000 * c * w + -1023/1000 * u * w + 1023/1000 * v * r` |
| 565 | SUP_CHP_HPQ_CPQ | bitt ["support-envelope",["pentagon","PCEQH"],"CHP","HPQ","CPQ","29061/40000"] | `-11859/40000 * p * v + 11859/40000 * h * p + 11859/40000 * q * u + 29061/40000 * h * u + -1023/1000 * c * h + 1023/1000 * c * v` |
| 577 | SUP_CPS_CPQ_CQS | bitt ["support-envelope",["pentagon","CSFQP"],"CPS","CPQ","CQS","3503392971925779/4481500000000000"] | `-3503392971925779/4481500000000000 * p * v + -1081181528074221/4481500000000000 * c * v + 3503392971925779/4481500000000000 * q * u + 1081181528074221/4481500000000000 * c * q + 1023/1000 * p * k + -1023/1000 * q * j + -1023/1000 * u * k + 1023/1000 * v * j` |
| 580 | SUP_EHP_FHP_EFP | bitt ["support-envelope",["pentagon","PERFH"],"EHP","FHP","EFP","12147133/15625000"] | `1918621/7812500 * f * q + 1918621/7812500 * h * p + 12147133/15625000 * f * h + -1918621/7812500 * p + -1023/1000 * h + -1023/1000 * e * f + 1023/1000` |
| 585 | SUP_EPS_EPQ_EQS | bitt ["support-envelope",["pentagon","ESFQP"],"EPS","EPQ","EQS","3020193213701851/4481500000000000"] | `-3020193213701851/4481500000000000 * p * v + -1564381286298149/4481500000000000 * e * p + -1564381286298149/4481500000000000 * v + 3020193213701851/4481500000000000 * q * u + 1564381286298149/4481500000000000 * q + 1564381286298149/4481500000000000 * e * u + 1023/1000 * p * k + -1023/1000 * q * j + -1023/1000 * u * k + 1023/1000 * v * j` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |


### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 55:0 | ABC | lo | 93/1000 | occupants none |
| 55:2 | ABE | lo | 93/1000 | occupants none |
| 55:3 | ABE | hi | 59/125 | vertex maximum 59/125 |
| 55:5 | ABF | hi | 84567/125000 | vertex maximum 84567/125000 |
| 55:6 | ABH | lo | 279/1000 | occupants P |
| 55:7 | ABH | hi | 9117760239/15625000000 | vertex maximum 9117760239/15625000000 |
| 55:8 | ABP | lo | 93/1000 | occupants none |
| 55:10 | ABQ | lo | 155091/1000000 | earlier 54:10; ABQ; lo; 155091/1000000 |
| 55:11 | ABQ | hi | 8918/15625 | earlier 54:11; ABQ; hi; 8918/15625 |
| 55:12 | ABR | lo | 93/1000 | occupants none |
| 55:15 | ABS | hi | 694237/1000000 | earlier 54:15; ABS; hi; 694237/1000000 |
| 55:16 | ACE | lo | 93/1000 | occupants none |
| 55:17 | ACE | hi | 59/125 | vertex maximum 59/125 |
| 55:18 | ACF | lo | 160463/1000000 | earlier 54:18; ACF; lo; 160463/1000000 |
| 55:19 | ACF | hi | 14930239761/15625000000 | vertex maximum 14930239761/15625000000 |
| 55:21 | ACH | hi | 107817/125000 | vertex maximum 107817/125000 |
| 55:22 | ACP | lo | 93/1000 | occupants none |
| 55:23 | ACP | hi | 32184475139/62500000000 | vertex maximum 32184475139/62500000000 |
| 55:24 | ACQ | lo | 155091/1000000 | earlier 54:24; ACQ; lo; 155091/1000000 |
| 55:25 | ACQ | hi | 159723/200000 | earlier 54:25; ACQ; hi; 159723/200000 |
| 55:26 | ACR | lo | 93/1000 | occupants none |
| 55:27 | ACR | hi | 1/1 | vertex maximum 1/1 |
| 55:28 | ACS | lo | 103751/1000000 | earlier 54:28; ACS; lo; 103751/1000000 |
| 55:30 | AEF | lo | 93/1000 | occupants none |
| 55:31 | AEF | hi | 107817/125000 | vertex maximum 107817/125000 |
| 55:33 | AEH | hi | 107817/125000 | vertex maximum 107817/125000 |
| 55:35 | AEQ | hi | 45699/62500 | earlier 54:35; AEQ; hi; 45699/62500 |
| 55:36 | AER | lo | 93/1000 | occupants none |
| 55:37 | AER | hi | 107817/125000 | vertex maximum 107817/125000 |
| 55:39 | AES | hi | 45317/62500 | earlier 54:39; AES; hi; 45317/62500 |
| 55:40 | AFH | lo | 93/1000 | occupants none |
| 55:42 | AFR | lo | 93/1000 | occupants none |
| 55:43 | AFR | hi | 45571336699/62500000000 | vertex maximum 45571336699/62500000000 |
| 55:44 | AFS | lo | 93/1000 | occupants none |
| 55:46 | AHP | lo | 93/1000 | occupants none |
| 55:47 | AHP | hi | 397537/1000000 | earlier 54:47; AHP; hi; 397537/1000000 |
| 55:48 | AHQ | lo | 93/1000 | occupants none |
| 55:49 | AHQ | hi | 45433/100000 | earlier 54:49; AHQ; hi; 45433/100000 |
| 55:50 | AHR | lo | 93/1000 | occupants none |
| 55:51 | AHR | hi | 107817/125000 | vertex maximum 107817/125000 |
| 55:54 | BCE | lo | 93/1000 | occupants none |
| 55:56 | BCF | lo | 93/1000 | occupants none |
| 55:57 | BCF | hi | 84567/125000 | vertex maximum 84567/125000 |
| 55:59 | BCH | hi | 84567/125000 | vertex maximum 84567/125000 |
| 55:60 | BCP | lo | 93/1000 | occupants none |
| 55:61 | BCP | hi | 24846038301/62500000000 | vertex maximum 24846038301/62500000000 |
| 55:64 | BCR | lo | 93/1000 | occupants none |
| 55:67 | BCS | hi | 36471/62500 | earlier 54:67; BCS; hi; 36471/62500 |
| 55:68 | BEF | lo | 119853/1000000 | earlier 54:68; BEF; lo; 119853/1000000 |
| 55:69 | BEF | hi | 84567/125000 | vertex maximum 84567/125000 |
| 55:70 | BEH | lo | 93/1000 | occupants none |
| 55:71 | BEH | hi | 6478211/7812500 | vertex maximum 6478211/7812500 |
| 55:72 | BEP | lo | 93/1000 | occupants none |
| 55:74 | BEQ | lo | 24377/250000 | earlier 54:74; BEQ; lo; 24377/250000 |
| 55:76 | BER | lo | 93/1000 | occupants none |
| 55:79 | BES | hi | 140407/250000 | earlier 54:79; BES; hi; 140407/250000 |
| 55:80 | BFH | lo | 279/1000 | occupants Q |
| 55:81 | BFH | hi | 84567/125000 | vertex maximum 84567/125000 |
| 55:82 | BFP | lo | 93/1000 | occupants none |
| 55:84 | BFQ | lo | 93/1000 | occupants none |
| 55:86 | BFR | lo | 279/1000 | occupants S |
| 55:87 | BFR | hi | 84567/125000 | vertex maximum 84567/125000 |
| 55:88 | BFS | lo | 93/1000 | occupants none |
| 55:89 | BFS | hi | 228983/500000 | earlier 54:237; BFS; hi; 228983/500000 |
| 55:90 | BHP | lo | 93/1000 | occupants none |
| 55:92 | BHQ | lo | 93/1000 | occupants none |
| 55:93 | BHQ | hi | 433737/1000000 | earlier 54:93; BHQ; hi; 433737/1000000 |
| 55:94 | BHR | lo | 34011/100000 | earlier 54:94; BHR; lo; 34011/100000 |
| 55:95 | BHR | hi | 1/1 | vertex maximum 1/1 |
| 55:96 | BHS | lo | 81013/500000 | earlier 54:96; BHS; lo; 81013/500000 |
| 55:97 | BHS | hi | 764361/1000000 | earlier 54:238; BHS; hi; 764361/1000000 |
| 55:98 | BPQ | lo | 93/1000 | occupants none |
| 55:99 | BPQ | hi | 222243/500000 | earlier 54:99; BPQ; hi; 222243/500000 |
| 55:101 | BPR | hi | 47424024199/62500000000 | vertex maximum 47424024199/62500000000 |
| 55:102 | BPS | lo | 93/1000 | occupants none |
| 55:104 | BQR | lo | 315117/1000000 | earlier 54:303; BQR; lo; 315117/1000000 |
| 55:105 | BQR | hi | 403549/500000 | earlier 54:105; BQR; hi; 403549/500000 |
| 55:106 | BQS | lo | 129117/1000000 | earlier 54:298; BQS; lo; 129117/1000000 |
| 55:108 | BRS | lo | 93/1000 | occupants none |
| 55:110 | CEF | lo | 93/1000 | occupants none |
| 55:112 | CEH | lo | 93/1000 | occupants none |
| 55:113 | CEH | hi | 792719/1250000 | vertex maximum 792719/1250000 |
| 55:114 | CEP | lo | 93/1000 | occupants none |
| 55:116 | CEQ | lo | 93/1000 | occupants none |
| 55:118 | CER | lo | 93/1000 | occupants none |
| 55:120 | CES | lo | 93/1000 | occupants none |
| 55:121 | CES | hi | 40369924081/112037500000 | vertex maximum 40369924081/112037500000 |
| 55:124 | CFP | lo | 26679/200000 | earlier 54:124; CFP; lo; 26679/200000 |
| 55:125 | CFP | hi | 833139/1000000 | earlier 54:125; CFP; hi; 833139/1000000 |
| 55:126 | CFQ | lo | 93/1000 | occupants none |
| 55:128 | CFR | lo | 279/1000 | occupants S |
| 55:129 | CFR | hi | 84567/125000 | vertex maximum 84567/125000 |
| 55:130 | CFS | lo | 93/1000 | occupants none |
| 55:132 | CHP | lo | 93/1000 | occupants none |
| 55:133 | CHP | hi | 84567/125000 | earlier 54:133; CHP; hi; 84567/125000 |
| 55:134 | CHQ | lo | 93/1000 | occupants none |
| 55:135 | CHQ | hi | 499727/1000000 | earlier 54:135; CHQ; hi; 499727/1000000 |
| 55:136 | CHR | lo | 34011/100000 | earlier 54:136; CHR; lo; 34011/100000 |
| 55:137 | CHR | hi | 1/1 | vertex maximum 1/1 |
| 55:138 | CHS | lo | 81013/500000 | earlier 54:138; CHS; lo; 81013/500000 |
| 55:142 | CPR | lo | 66191/500000 | earlier 54:142; CPR; lo; 66191/500000 |
| 55:143 | CPR | hi | 892179/1000000 | vertex maximum 892179/1000000 |
| 55:144 | CPS | lo | 52857/500000 | earlier 54:144; CPS; lo; 52857/500000 |
| 55:146 | CQR | lo | 314263/1000000 | earlier 54:304; CQR; lo; 314263/1000000 |
| 55:147 | CQR | hi | 403549/500000 | earlier 54:147; CQR; hi; 403549/500000 |
| 55:148 | CQS | lo | 128263/1000000 | earlier 54:299; CQS; lo; 128263/1000000 |
| 55:150 | CRS | lo | 93/1000 | occupants none |
| 55:151 | CRS | hi | 55759/125000 | earlier 54:151; CRS; hi; 55759/125000 |
| 55:152 | EFH | lo | 279/1000 | occupants Q |
| 55:153 | EFH | hi | 42680538931/62500000000 | vertex maximum 42680538931/62500000000 |
| 55:154 | EFP | lo | 126923/1000000 | earlier 54:154; EFP; lo; 126923/1000000 |
| 55:156 | EFQ | lo | 93/1000 | occupants none |
| 55:158 | EFR | lo | 279/1000 | occupants S |
| 55:159 | EFR | hi | 9117760239/15625000000 | vertex maximum 9117760239/15625000000 |
| 55:160 | EFS | lo | 93/1000 | occupants none |
| 55:162 | EHP | lo | 93/1000 | occupants none |
| 55:163 | EHP | hi | 8997/12500 | earlier 54:163; EHP; hi; 8997/12500 |
| 55:164 | EHQ | lo | 93/1000 | occupants none |
| 55:165 | EHQ | hi | 437957/1000000 | earlier 54:165; EHQ; hi; 437957/1000000 |
| 55:166 | EHR | lo | 34011/100000 | earlier 54:166; EHR; lo; 34011/100000 |
| 55:167 | EHR | hi | 107817/125000 | vertex maximum 107817/125000 |
| 55:168 | EHS | lo | 98669/1000000 | earlier 54:168; EHS; lo; 98669/1000000 |
| 55:169 | EHS | hi | 33327/50000 | earlier 54:246; EHS; hi; 33327/50000 |
| 55:170 | EPQ | lo | 97303/1000000 | earlier 54:311; EPQ; lo; 97303/1000000 |
| 55:176 | EQR | lo | 140149/500000 | earlier 54:220; EQR; lo; 140149/500000 |
| 55:177 | EQR | hi | 28283/40000 | earlier 54:177; EQR; hi; 28283/40000 |
| 55:178 | EQS | lo | 47149/500000 | earlier 54:178; EQS; lo; 47149/500000 |
| 55:179 | EQS | hi | 492427/1000000 | earlier 54:308; EQS; hi; 492427/1000000 |
| 55:180 | ERS | lo | 93/1000 | occupants none |
| 55:182 | FHP | lo | 279/1000 | occupants Q |
| 55:183 | FHP | hi | 553893/1000000 | earlier 54:183; FHP; hi; 553893/1000000 |
| 55:184 | FHQ | lo | 93/1000 | occupants none |
| 55:186 | FHR | lo | 93/1000 | occupants none |
| 55:187 | FHR | hi | 1577692327/3906250000 | vertex maximum 1577692327/3906250000 |
| 55:188 | FHS | lo | 59707/500000 | earlier 54:249; FHS; lo; 59707/500000 |
| 55:190 | FPQ | lo | 93/1000 | occupants none |
| 55:191 | FPQ | hi | 367893/1000000 | earlier 54:191; FPQ; hi; 367893/1000000 |
| 55:192 | FPR | lo | 283209/1000000 | earlier 54:268; FPR; lo; 283209/1000000 |
| 55:193 | FPR | hi | 330767538381/500000000000 | vertex maximum 330767538381/500000000000 |
| 55:194 | FPS | lo | 97209/1000000 | earlier 54:258; FPS; lo; 97209/1000000 |
| 55:196 | FQR | lo | 93/1000 | occupants none |
| 55:197 | FQR | hi | 44568153021/100000000000 | vertex maximum 44568153021/100000000000 |
| 55:198 | FQS | lo | 93/1000 | occupants none |
| 55:200 | FRS | lo | 93/1000 | occupants none |
| 55:201 | FRS | hi | 397537/1000000 | earlier 54:201; FRS; hi; 397537/1000000 |
| 55:202 | HPQ | lo | 93/1000 | occupants none |
| 55:203 | HPQ | hi | 367893/1000000 | earlier 54:203; HPQ; hi; 367893/1000000 |
| 55:204 | HPR | lo | 34011/100000 | earlier 54:204; HPR; lo; 34011/100000 |
| 55:205 | HPR | hi | 818719/1000000 | earlier 54:205; HPR; hi; 818719/1000000 |
| 55:207 | HPS | hi | 319213/500000 | earlier 54:252; HPS; hi; 319213/500000 |
| 55:208 | PQR | lo | 315079/1000000 | earlier 54:314; PQR; lo; 315079/1000000 |
| 55:209 | PQR | hi | 654863/1000000 | earlier 54:209; PQR; hi; 654863/1000000 |
| 55:210 | PQS | lo | 129079/1000000 | earlier 54:312; PQS; lo; 129079/1000000 |
| 55:211 | PQS | hi | 468863/1000000 | earlier 54:223; PQS; hi; 468863/1000000 |
| 55:212 | PRS | lo | 93/1000 | occupants none |
| 55:214 | QRS | lo | 93/1000 | occupants none |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |


### Coordinate certificate sources

| Source | Kind | Source witness | Polynomial |
| --- | --- | --- | --- |
| 0 | bound | `{"direction":"lo","ref":"55:0","triangle":"ABC","value":"93/1000"}` | `-1 * a * b + 1 * a * c + -93/1000` |
| 2 | bound | `{"direction":"lo","ref":"55:2","triangle":"ABE","value":"93/1000"}` | `1 * b * e + -1 * a * b + 1 * a + -93/1000` |
| 3 | bound | `{"direction":"hi","ref":"55:3","triangle":"ABE","value":"59/125"}` | `59/125 + -1 * b * e + 1 * a * b + -1 * a` |
| 5 | bound | `{"direction":"hi","ref":"55:5","triangle":"ABF","value":"84567/125000"}` | `84567/125000 + -1 * b + 1 * a * b + -1 * a * f` |
| 6 | bound | `{"direction":"lo","ref":"55:6","triangle":"ABH","value":"279/1000"}` | `1 * b * h + -1 * a * b + -279/1000` |
| 7 | bound | `{"direction":"hi","ref":"55:7","triangle":"ABH","value":"9117760239/15625000000"}` | `9117760239/15625000000 + -1 * b * h + 1 * a * b` |
| 8 | bound | `{"direction":"lo","ref":"55:8","triangle":"ABP","value":"93/1000"}` | `1 * b * q + -1 * a * b + 1 * a * p + -93/1000` |
| 10 | bound | `{"direction":"lo","ref":"55:10","triangle":"ABQ","value":"155091/1000000"}` | `1 * b * v + -1 * a * b + 1 * a * u + -155091/1000000` |
| 11 | bound | `{"direction":"hi","ref":"55:11","triangle":"ABQ","value":"8918/15625"}` | `8918/15625 + -1 * b * v + 1 * a * b + -1 * a * u` |
| 12 | bound | `{"direction":"lo","ref":"55:12","triangle":"ABR","value":"93/1000"}` | `1 * b * w + -1 * a * b + 1 * a * r + -93/1000` |
| 15 | bound | `{"direction":"hi","ref":"55:15","triangle":"ABS","value":"694237/1000000"}` | `694237/1000000 + -1 * b * k + 1 * a * b + -1 * a * j` |
| 16 | bound | `{"direction":"lo","ref":"55:16","triangle":"ACE","value":"93/1000"}` | `1 * c * e + -1 * a * c + 1 * a + -93/1000` |
| 17 | bound | `{"direction":"hi","ref":"55:17","triangle":"ACE","value":"59/125"}` | `59/125 + -1 * c * e + 1 * a * c + -1 * a` |
| 18 | bound | `{"direction":"lo","ref":"55:18","triangle":"ACF","value":"160463/1000000"}` | `1 * c + -1 * a * c + 1 * a * f + -160463/1000000` |
| 19 | bound | `{"direction":"hi","ref":"55:19","triangle":"ACF","value":"14930239761/15625000000"}` | `14930239761/15625000000 + -1 * c + 1 * a * c + -1 * a * f` |
| 21 | bound | `{"direction":"hi","ref":"55:21","triangle":"ACH","value":"107817/125000"}` | `107817/125000 + -1 * c * h + 1 * a * c` |
| 22 | bound | `{"direction":"lo","ref":"55:22","triangle":"ACP","value":"93/1000"}` | `1 * c * q + -1 * a * c + 1 * a * p + -93/1000` |
| 23 | bound | `{"direction":"hi","ref":"55:23","triangle":"ACP","value":"32184475139/62500000000"}` | `32184475139/62500000000 + -1 * c * q + 1 * a * c + -1 * a * p` |
| 24 | bound | `{"direction":"lo","ref":"55:24","triangle":"ACQ","value":"155091/1000000"}` | `1 * c * v + -1 * a * c + 1 * a * u + -155091/1000000` |
| 25 | bound | `{"direction":"hi","ref":"55:25","triangle":"ACQ","value":"159723/200000"}` | `159723/200000 + -1 * c * v + 1 * a * c + -1 * a * u` |
| 26 | bound | `{"direction":"lo","ref":"55:26","triangle":"ACR","value":"93/1000"}` | `1 * c * w + -1 * a * c + 1 * a * r + -93/1000` |
| 27 | bound | `{"direction":"hi","ref":"55:27","triangle":"ACR","value":"1/1"}` | `1 + -1 * c * w + 1 * a * c + -1 * a * r` |
| 28 | bound | `{"direction":"lo","ref":"55:28","triangle":"ACS","value":"103751/1000000"}` | `1 * c * k + -1 * a * c + 1 * a * j + -103751/1000000` |
| 30 | bound | `{"direction":"lo","ref":"55:30","triangle":"AEF","value":"93/1000"}` | `907/1000 + -1 * a + -1 * e * f + 1 * a * f` |
| 31 | bound | `{"direction":"hi","ref":"55:31","triangle":"AEF","value":"107817/125000"}` | `-17183/125000 + 1 * a + 1 * e * f + -1 * a * f` |
| 33 | bound | `{"direction":"hi","ref":"55:33","triangle":"AEH","value":"107817/125000"}` | `107817/125000 + -1 * h + 1 * a` |
| 35 | bound | `{"direction":"hi","ref":"55:35","triangle":"AEQ","value":"45699/62500"}` | `45699/62500 + -1 * v + 1 * a + 1 * e * u + -1 * a * u` |
| 36 | bound | `{"direction":"lo","ref":"55:36","triangle":"AER","value":"93/1000"}` | `1 * w + -1 * a + -1 * e * r + 1 * a * r + -93/1000` |
| 37 | bound | `{"direction":"hi","ref":"55:37","triangle":"AER","value":"107817/125000"}` | `107817/125000 + -1 * w + 1 * a + 1 * e * r + -1 * a * r` |
| 39 | bound | `{"direction":"hi","ref":"55:39","triangle":"AES","value":"45317/62500"}` | `45317/62500 + -1 * k + 1 * a + 1 * e * j + -1 * a * j` |
| 40 | bound | `{"direction":"lo","ref":"55:40","triangle":"AFH","value":"93/1000"}` | `1 * f * h + -1 * a * f + -93/1000` |
| 42 | bound | `{"direction":"lo","ref":"55:42","triangle":"AFR","value":"93/1000"}` | `-1 * f * w + 1 * a * f + 1 * r + -1 * a * r + -93/1000` |
| 43 | bound | `{"direction":"hi","ref":"55:43","triangle":"AFR","value":"45571336699/62500000000"}` | `45571336699/62500000000 + 1 * f * w + -1 * a * f + -1 * r + 1 * a * r` |
| 44 | bound | `{"direction":"lo","ref":"55:44","triangle":"AFS","value":"93/1000"}` | `-1 * f * k + 1 * a * f + 1 * j + -1 * a * j + -93/1000` |
| 46 | bound | `{"direction":"lo","ref":"55:46","triangle":"AHP","value":"93/1000"}` | `1 * h * p + -1 * a * p + -93/1000` |
| 47 | bound | `{"direction":"hi","ref":"55:47","triangle":"AHP","value":"397537/1000000"}` | `397537/1000000 + -1 * h * p + 1 * a * p` |
| 48 | bound | `{"direction":"lo","ref":"55:48","triangle":"AHQ","value":"93/1000"}` | `1 * h * u + -1 * a * u + -93/1000` |
| 49 | bound | `{"direction":"hi","ref":"55:49","triangle":"AHQ","value":"45433/100000"}` | `45433/100000 + -1 * h * u + 1 * a * u` |
| 50 | bound | `{"direction":"lo","ref":"55:50","triangle":"AHR","value":"93/1000"}` | `1 * h * r + -1 * a * r + -93/1000` |
| 51 | bound | `{"direction":"hi","ref":"55:51","triangle":"AHR","value":"107817/125000"}` | `107817/125000 + -1 * h * r + 1 * a * r` |
| 54 | bound | `{"direction":"lo","ref":"55:54","triangle":"BCE","value":"93/1000"}` | `1 * c * e + -1 * b * e + -93/1000` |
| 56 | bound | `{"direction":"lo","ref":"55:56","triangle":"BCF","value":"93/1000"}` | `1 * c + -1 * b + -93/1000` |
| 57 | bound | `{"direction":"hi","ref":"55:57","triangle":"BCF","value":"84567/125000"}` | `84567/125000 + -1 * c + 1 * b` |
| 59 | bound | `{"direction":"hi","ref":"55:59","triangle":"BCH","value":"84567/125000"}` | `84567/125000 + -1 * c * h + 1 * b * h` |
| 60 | bound | `{"direction":"lo","ref":"55:60","triangle":"BCP","value":"93/1000"}` | `1 * c * q + -1 * b * q + -93/1000` |
| 61 | bound | `{"direction":"hi","ref":"55:61","triangle":"BCP","value":"24846038301/62500000000"}` | `24846038301/62500000000 + -1 * c * q + 1 * b * q` |
| 64 | bound | `{"direction":"lo","ref":"55:64","triangle":"BCR","value":"93/1000"}` | `1 * c * w + -1 * b * w + -93/1000` |
| 67 | bound | `{"direction":"hi","ref":"55:67","triangle":"BCS","value":"36471/62500"}` | `36471/62500 + -1 * c * k + 1 * b * k` |
| 68 | bound | `{"direction":"lo","ref":"55:68","triangle":"BEF","value":"119853/1000000"}` | `880147/1000000 + -1 * b + -1 * e * f + 1 * b * e` |
| 69 | bound | `{"direction":"hi","ref":"55:69","triangle":"BEF","value":"84567/125000"}` | `-40433/125000 + 1 * b + 1 * e * f + -1 * b * e` |
| 70 | bound | `{"direction":"lo","ref":"55:70","triangle":"BEH","value":"93/1000"}` | `1 * h + -1 * b * h + 1 * b * e + -93/1000` |
| 71 | bound | `{"direction":"hi","ref":"55:71","triangle":"BEH","value":"6478211/7812500"}` | `6478211/7812500 + -1 * h + 1 * b * h + -1 * b * e` |
| 72 | bound | `{"direction":"lo","ref":"55:72","triangle":"BEP","value":"93/1000"}` | `1 * q + -1 * b * q + -1 * e * p + 1 * b * e + -93/1000` |
| 74 | bound | `{"direction":"lo","ref":"55:74","triangle":"BEQ","value":"24377/250000"}` | `1 * v + -1 * b * v + -1 * e * u + 1 * b * e + -24377/250000` |
| 76 | bound | `{"direction":"lo","ref":"55:76","triangle":"BER","value":"93/1000"}` | `1 * w + -1 * b * w + -1 * e * r + 1 * b * e + -93/1000` |
| 79 | bound | `{"direction":"hi","ref":"55:79","triangle":"BES","value":"140407/250000"}` | `140407/250000 + -1 * k + 1 * b * k + 1 * e * j + -1 * b * e` |
| 80 | bound | `{"direction":"lo","ref":"55:80","triangle":"BFH","value":"279/1000"}` | `1 * f * h + -1 * b * h + 1 * b + -279/1000` |
| 81 | bound | `{"direction":"hi","ref":"55:81","triangle":"BFH","value":"84567/125000"}` | `84567/125000 + -1 * f * h + 1 * b * h + -1 * b` |
| 82 | bound | `{"direction":"lo","ref":"55:82","triangle":"BFP","value":"93/1000"}` | `1 * f * q + -1 * b * q + -1 * p + 1 * b + -93/1000` |
| 84 | bound | `{"direction":"lo","ref":"55:84","triangle":"BFQ","value":"93/1000"}` | `1 * f * v + -1 * b * v + -1 * u + 1 * b + -93/1000` |
| 86 | bound | `{"direction":"lo","ref":"55:86","triangle":"BFR","value":"279/1000"}` | `-1 * f * w + 1 * b * w + 1 * r + -1 * b + -279/1000` |
| 87 | bound | `{"direction":"hi","ref":"55:87","triangle":"BFR","value":"84567/125000"}` | `84567/125000 + 1 * f * w + -1 * b * w + -1 * r + 1 * b` |
| 88 | bound | `{"direction":"lo","ref":"55:88","triangle":"BFS","value":"93/1000"}` | `-1 * f * k + 1 * b * k + 1 * j + -1 * b + -93/1000` |
| 89 | bound | `{"direction":"hi","ref":"55:89","triangle":"BFS","value":"228983/500000"}` | `228983/500000 + 1 * f * k + -1 * b * k + -1 * j + 1 * b` |
| 90 | bound | `{"direction":"lo","ref":"55:90","triangle":"BHP","value":"93/1000"}` | `-1 * b * q + -1 * h * p + 1 * b * h + -93/1000` |
| 92 | bound | `{"direction":"lo","ref":"55:92","triangle":"BHQ","value":"93/1000"}` | `1 * b * v + 1 * h * u + -1 * b * h + -93/1000` |
| 93 | bound | `{"direction":"hi","ref":"55:93","triangle":"BHQ","value":"433737/1000000"}` | `433737/1000000 + -1 * b * v + -1 * h * u + 1 * b * h` |
| 94 | bound | `{"direction":"lo","ref":"55:94","triangle":"BHR","value":"34011/100000"}` | `1 * b * w + 1 * h * r + -1 * b * h + -34011/100000` |
| 95 | bound | `{"direction":"hi","ref":"55:95","triangle":"BHR","value":"1/1"}` | `1 + -1 * b * w + -1 * h * r + 1 * b * h` |
| 96 | bound | `{"direction":"lo","ref":"55:96","triangle":"BHS","value":"81013/500000"}` | `1 * b * k + 1 * h * j + -1 * b * h + -81013/500000` |
| 97 | bound | `{"direction":"hi","ref":"55:97","triangle":"BHS","value":"764361/1000000"}` | `764361/1000000 + -1 * b * k + -1 * h * j + 1 * b * h` |
| 98 | bound | `{"direction":"lo","ref":"55:98","triangle":"BPQ","value":"93/1000"}` | `-1 * p * v + 1 * b * v + 1 * q * u + -1 * b * q + -93/1000` |
| 99 | bound | `{"direction":"hi","ref":"55:99","triangle":"BPQ","value":"222243/500000"}` | `222243/500000 + 1 * p * v + -1 * b * v + -1 * q * u + 1 * b * q` |
| 101 | bound | `{"direction":"hi","ref":"55:101","triangle":"BPR","value":"47424024199/62500000000"}` | `47424024199/62500000000 + 1 * p * w + -1 * b * w + -1 * q * r + 1 * b * q` |
| 102 | bound | `{"direction":"lo","ref":"55:102","triangle":"BPS","value":"93/1000"}` | `-1 * p * k + 1 * b * k + 1 * q * j + -1 * b * q + -93/1000` |
| 104 | bound | `{"direction":"lo","ref":"55:104","triangle":"BQR","value":"315117/1000000"}` | `-1 * u * w + 1 * b * w + 1 * v * r + -1 * b * v + -315117/1000000` |
| 105 | bound | `{"direction":"hi","ref":"55:105","triangle":"BQR","value":"403549/500000"}` | `403549/500000 + 1 * u * w + -1 * b * w + -1 * v * r + 1 * b * v` |
| 106 | bound | `{"direction":"lo","ref":"55:106","triangle":"BQS","value":"129117/1000000"}` | `-1 * u * k + 1 * b * k + 1 * v * j + -1 * b * v + -129117/1000000` |
| 108 | bound | `{"direction":"lo","ref":"55:108","triangle":"BRS","value":"93/1000"}` | `1 * r * k + -1 * b * k + -1 * w * j + 1 * b * w + -93/1000` |
| 110 | bound | `{"direction":"lo","ref":"55:110","triangle":"CEF","value":"93/1000"}` | `907/1000 + -1 * c + -1 * e * f + 1 * c * e` |
| 112 | bound | `{"direction":"lo","ref":"55:112","triangle":"CEH","value":"93/1000"}` | `1 * h + -1 * c * h + 1 * c * e + -93/1000` |
| 113 | bound | `{"direction":"hi","ref":"55:113","triangle":"CEH","value":"792719/1250000"}` | `792719/1250000 + -1 * h + 1 * c * h + -1 * c * e` |
| 114 | bound | `{"direction":"lo","ref":"55:114","triangle":"CEP","value":"93/1000"}` | `1 * q + -1 * c * q + -1 * e * p + 1 * c * e + -93/1000` |
| 116 | bound | `{"direction":"lo","ref":"55:116","triangle":"CEQ","value":"93/1000"}` | `1 * v + -1 * c * v + -1 * e * u + 1 * c * e + -93/1000` |
| 118 | bound | `{"direction":"lo","ref":"55:118","triangle":"CER","value":"93/1000"}` | `1 * w + -1 * c * w + -1 * e * r + 1 * c * e + -93/1000` |
| 120 | bound | `{"direction":"lo","ref":"55:120","triangle":"CES","value":"93/1000"}` | `1 * k + -1 * c * k + -1 * e * j + 1 * c * e + -93/1000` |
| 121 | bound | `{"direction":"hi","ref":"55:121","triangle":"CES","value":"40369924081/112037500000"}` | `40369924081/112037500000 + -1 * k + 1 * c * k + 1 * e * j + -1 * c * e` |
| 124 | bound | `{"direction":"lo","ref":"55:124","triangle":"CFP","value":"26679/200000"}` | `1 * f * q + -1 * c * q + -1 * p + 1 * c + -26679/200000` |
| 125 | bound | `{"direction":"hi","ref":"55:125","triangle":"CFP","value":"833139/1000000"}` | `833139/1000000 + -1 * f * q + 1 * c * q + 1 * p + -1 * c` |
| 126 | bound | `{"direction":"lo","ref":"55:126","triangle":"CFQ","value":"93/1000"}` | `1 * f * v + -1 * c * v + -1 * u + 1 * c + -93/1000` |
| 128 | bound | `{"direction":"lo","ref":"55:128","triangle":"CFR","value":"279/1000"}` | `-1 * f * w + 1 * c * w + 1 * r + -1 * c + -279/1000` |
| 129 | bound | `{"direction":"hi","ref":"55:129","triangle":"CFR","value":"84567/125000"}` | `84567/125000 + 1 * f * w + -1 * c * w + -1 * r + 1 * c` |
| 130 | bound | `{"direction":"lo","ref":"55:130","triangle":"CFS","value":"93/1000"}` | `-1 * f * k + 1 * c * k + 1 * j + -1 * c + -93/1000` |
| 132 | bound | `{"direction":"lo","ref":"55:132","triangle":"CHP","value":"93/1000"}` | `-1 * c * q + -1 * h * p + 1 * c * h + -93/1000` |
| 133 | bound | `{"direction":"hi","ref":"55:133","triangle":"CHP","value":"84567/125000"}` | `84567/125000 + 1 * c * q + 1 * h * p + -1 * c * h` |
| 134 | bound | `{"direction":"lo","ref":"55:134","triangle":"CHQ","value":"93/1000"}` | `1 * c * v + 1 * h * u + -1 * c * h + -93/1000` |
| 135 | bound | `{"direction":"hi","ref":"55:135","triangle":"CHQ","value":"499727/1000000"}` | `499727/1000000 + -1 * c * v + -1 * h * u + 1 * c * h` |
| 136 | bound | `{"direction":"lo","ref":"55:136","triangle":"CHR","value":"34011/100000"}` | `1 * c * w + 1 * h * r + -1 * c * h + -34011/100000` |
| 137 | bound | `{"direction":"hi","ref":"55:137","triangle":"CHR","value":"1/1"}` | `1 + -1 * c * w + -1 * h * r + 1 * c * h` |
| 138 | bound | `{"direction":"lo","ref":"55:138","triangle":"CHS","value":"81013/500000"}` | `1 * c * k + 1 * h * j + -1 * c * h + -81013/500000` |
| 142 | bound | `{"direction":"lo","ref":"55:142","triangle":"CPR","value":"66191/500000"}` | `-1 * p * w + 1 * c * w + 1 * q * r + -1 * c * q + -66191/500000` |
| 143 | bound | `{"direction":"hi","ref":"55:143","triangle":"CPR","value":"892179/1000000"}` | `892179/1000000 + 1 * p * w + -1 * c * w + -1 * q * r + 1 * c * q` |
| 144 | bound | `{"direction":"lo","ref":"55:144","triangle":"CPS","value":"52857/500000"}` | `-1 * p * k + 1 * c * k + 1 * q * j + -1 * c * q + -52857/500000` |
| 146 | bound | `{"direction":"lo","ref":"55:146","triangle":"CQR","value":"314263/1000000"}` | `-1 * u * w + 1 * c * w + 1 * v * r + -1 * c * v + -314263/1000000` |
| 147 | bound | `{"direction":"hi","ref":"55:147","triangle":"CQR","value":"403549/500000"}` | `403549/500000 + 1 * u * w + -1 * c * w + -1 * v * r + 1 * c * v` |
| 148 | bound | `{"direction":"lo","ref":"55:148","triangle":"CQS","value":"128263/1000000"}` | `-1 * u * k + 1 * c * k + 1 * v * j + -1 * c * v + -128263/1000000` |
| 150 | bound | `{"direction":"lo","ref":"55:150","triangle":"CRS","value":"93/1000"}` | `1 * r * k + -1 * c * k + -1 * w * j + 1 * c * w + -93/1000` |
| 151 | bound | `{"direction":"hi","ref":"55:151","triangle":"CRS","value":"55759/125000"}` | `55759/125000 + -1 * r * k + 1 * c * k + 1 * w * j + -1 * c * w` |
| 152 | bound | `{"direction":"lo","ref":"55:152","triangle":"EFH","value":"279/1000"}` | `1 * f * h + -1 * e * f + -1 * h + 721/1000` |
| 153 | bound | `{"direction":"hi","ref":"55:153","triangle":"EFH","value":"42680538931/62500000000"}` | `-19819461069/62500000000 + -1 * f * h + 1 * e * f + 1 * h` |
| 154 | bound | `{"direction":"lo","ref":"55:154","triangle":"EFP","value":"126923/1000000"}` | `1 * f * q + -1 * e * f + -1 * q + -1 * p + 873077/1000000 + 1 * e * p` |
| 156 | bound | `{"direction":"lo","ref":"55:156","triangle":"EFQ","value":"93/1000"}` | `1 * f * v + -1 * e * f + -1 * v + -1 * u + 907/1000 + 1 * e * u` |
| 158 | bound | `{"direction":"lo","ref":"55:158","triangle":"EFR","value":"279/1000"}` | `-1 * f * w + 1 * e * f + 1 * w + 1 * r + -1279/1000 + -1 * e * r` |
| 159 | bound | `{"direction":"hi","ref":"55:159","triangle":"EFR","value":"9117760239/15625000000"}` | `24742760239/15625000000 + 1 * f * w + -1 * e * f + -1 * w + -1 * r + 1 * e * r` |
| 160 | bound | `{"direction":"lo","ref":"55:160","triangle":"EFS","value":"93/1000"}` | `-1 * f * k + 1 * e * f + 1 * k + 1 * j + -1093/1000 + -1 * e * j` |
| 162 | bound | `{"direction":"lo","ref":"55:162","triangle":"EHP","value":"93/1000"}` | `-1 * q + -1 * h * p + 1 * h + 1 * e * p + -93/1000` |
| 163 | bound | `{"direction":"hi","ref":"55:163","triangle":"EHP","value":"8997/12500"}` | `8997/12500 + 1 * q + 1 * h * p + -1 * h + -1 * e * p` |
| 164 | bound | `{"direction":"lo","ref":"55:164","triangle":"EHQ","value":"93/1000"}` | `1 * v + 1 * h * u + -1 * h + -1 * e * u + -93/1000` |
| 165 | bound | `{"direction":"hi","ref":"55:165","triangle":"EHQ","value":"437957/1000000"}` | `437957/1000000 + -1 * v + -1 * h * u + 1 * h + 1 * e * u` |
| 166 | bound | `{"direction":"lo","ref":"55:166","triangle":"EHR","value":"34011/100000"}` | `1 * w + 1 * h * r + -1 * h + -1 * e * r + -34011/100000` |
| 167 | bound | `{"direction":"hi","ref":"55:167","triangle":"EHR","value":"107817/125000"}` | `107817/125000 + -1 * w + -1 * h * r + 1 * h + 1 * e * r` |
| 168 | bound | `{"direction":"lo","ref":"55:168","triangle":"EHS","value":"98669/1000000"}` | `1 * k + 1 * h * j + -1 * h + -1 * e * j + -98669/1000000` |
| 169 | bound | `{"direction":"hi","ref":"55:169","triangle":"EHS","value":"33327/50000"}` | `33327/50000 + -1 * k + -1 * h * j + 1 * h + 1 * e * j` |
| 170 | bound | `{"direction":"lo","ref":"55:170","triangle":"EPQ","value":"97303/1000000"}` | `-1 * p * v + 1 * e * p + 1 * v + 1 * q * u + -1 * q + -1 * e * u + -97303/1000000` |
| 176 | bound | `{"direction":"lo","ref":"55:176","triangle":"EQR","value":"140149/500000"}` | `-1 * u * w + 1 * e * u + 1 * w + 1 * v * r + -1 * v + -1 * e * r + -140149/500000` |
| 177 | bound | `{"direction":"hi","ref":"55:177","triangle":"EQR","value":"28283/40000"}` | `28283/40000 + 1 * u * w + -1 * e * u + -1 * w + -1 * v * r + 1 * v + 1 * e * r` |
| 178 | bound | `{"direction":"lo","ref":"55:178","triangle":"EQS","value":"47149/500000"}` | `-1 * u * k + 1 * e * u + 1 * k + 1 * v * j + -1 * v + -1 * e * j + -47149/500000` |
| 179 | bound | `{"direction":"hi","ref":"55:179","triangle":"EQS","value":"492427/1000000"}` | `492427/1000000 + 1 * u * k + -1 * e * u + -1 * k + -1 * v * j + 1 * v + 1 * e * j` |
| 180 | bound | `{"direction":"lo","ref":"55:180","triangle":"ERS","value":"93/1000"}` | `1 * r * k + -1 * e * r + -1 * k + -1 * w * j + 1 * w + 1 * e * j + -93/1000` |
| 182 | bound | `{"direction":"lo","ref":"55:182","triangle":"FHP","value":"279/1000"}` | `-1 * f * q + -1 * h * p + 1 * f * h + 1 * p + -279/1000` |
| 183 | bound | `{"direction":"hi","ref":"55:183","triangle":"FHP","value":"553893/1000000"}` | `553893/1000000 + 1 * f * q + 1 * h * p + -1 * f * h + -1 * p` |
| 184 | bound | `{"direction":"lo","ref":"55:184","triangle":"FHQ","value":"93/1000"}` | `-1 * f * v + -1 * h * u + 1 * f * h + 1 * u + -93/1000` |
| 186 | bound | `{"direction":"lo","ref":"55:186","triangle":"FHR","value":"93/1000"}` | `-1 * f * w + -1 * h * r + 1 * f * h + 1 * r + -93/1000` |
| 187 | bound | `{"direction":"hi","ref":"55:187","triangle":"FHR","value":"1577692327/3906250000"}` | `1577692327/3906250000 + 1 * f * w + 1 * h * r + -1 * f * h + -1 * r` |
| 188 | bound | `{"direction":"lo","ref":"55:188","triangle":"FHS","value":"59707/500000"}` | `-1 * f * k + -1 * h * j + 1 * f * h + 1 * j + -59707/500000` |
| 190 | bound | `{"direction":"lo","ref":"55:190","triangle":"FPQ","value":"93/1000"}` | `-1 * p * v + 1 * p + 1 * f * v + 1 * q * u + -1 * f * q + -1 * u + -93/1000` |
| 191 | bound | `{"direction":"hi","ref":"55:191","triangle":"FPQ","value":"367893/1000000"}` | `367893/1000000 + 1 * p * v + -1 * p + -1 * f * v + -1 * q * u + 1 * f * q + 1 * u` |
| 192 | bound | `{"direction":"lo","ref":"55:192","triangle":"FPR","value":"283209/1000000"}` | `1 * p * w + -1 * p + -1 * f * w + -1 * q * r + 1 * f * q + 1 * r + -283209/1000000` |
| 193 | bound | `{"direction":"hi","ref":"55:193","triangle":"FPR","value":"330767538381/500000000000"}` | `330767538381/500000000000 + -1 * p * w + 1 * p + 1 * f * w + 1 * q * r + -1 * f * q + -1 * r` |
| 194 | bound | `{"direction":"lo","ref":"55:194","triangle":"FPS","value":"97209/1000000"}` | `1 * p * k + -1 * p + -1 * f * k + -1 * q * j + 1 * f * q + 1 * j + -97209/1000000` |
| 196 | bound | `{"direction":"lo","ref":"55:196","triangle":"FQR","value":"93/1000"}` | `1 * u * w + -1 * u + -1 * f * w + -1 * v * r + 1 * f * v + 1 * r + -93/1000` |
| 197 | bound | `{"direction":"hi","ref":"55:197","triangle":"FQR","value":"44568153021/100000000000"}` | `44568153021/100000000000 + -1 * u * w + 1 * u + 1 * f * w + 1 * v * r + -1 * f * v + -1 * r` |
| 198 | bound | `{"direction":"lo","ref":"55:198","triangle":"FQS","value":"93/1000"}` | `1 * u * k + -1 * u + -1 * f * k + -1 * v * j + 1 * f * v + 1 * j + -93/1000` |
| 200 | bound | `{"direction":"lo","ref":"55:200","triangle":"FRS","value":"93/1000"}` | `-1 * r * k + 1 * r + 1 * f * k + 1 * w * j + -1 * f * w + -1 * j + -93/1000` |
| 201 | bound | `{"direction":"hi","ref":"55:201","triangle":"FRS","value":"397537/1000000"}` | `397537/1000000 + 1 * r * k + -1 * r + -1 * f * k + -1 * w * j + 1 * f * w + 1 * j` |
| 202 | bound | `{"direction":"lo","ref":"55:202","triangle":"HPQ","value":"93/1000"}` | `1 * p * v + -1 * h * p + -1 * q * u + 1 * h * u + -93/1000` |
| 203 | bound | `{"direction":"hi","ref":"55:203","triangle":"HPQ","value":"367893/1000000"}` | `367893/1000000 + -1 * p * v + 1 * h * p + 1 * q * u + -1 * h * u` |
| 204 | bound | `{"direction":"lo","ref":"55:204","triangle":"HPR","value":"34011/100000"}` | `1 * p * w + -1 * h * p + -1 * q * r + 1 * h * r + -34011/100000` |
| 205 | bound | `{"direction":"hi","ref":"55:205","triangle":"HPR","value":"818719/1000000"}` | `818719/1000000 + -1 * p * w + 1 * h * p + 1 * q * r + -1 * h * r` |
| 207 | bound | `{"direction":"hi","ref":"55:207","triangle":"HPS","value":"319213/500000"}` | `319213/500000 + -1 * p * k + 1 * h * p + 1 * q * j + -1 * h * j` |
| 208 | bound | `{"direction":"lo","ref":"55:208","triangle":"PQR","value":"315079/1000000"}` | `-1 * u * w + 1 * q * u + 1 * p * w + 1 * v * r + -1 * p * v + -1 * q * r + -315079/1000000` |
| 209 | bound | `{"direction":"hi","ref":"55:209","triangle":"PQR","value":"654863/1000000"}` | `654863/1000000 + 1 * u * w + -1 * q * u + -1 * p * w + -1 * v * r + 1 * p * v + 1 * q * r` |
| 210 | bound | `{"direction":"lo","ref":"55:210","triangle":"PQS","value":"129079/1000000"}` | `-1 * u * k + 1 * q * u + 1 * p * k + 1 * v * j + -1 * p * v + -1 * q * j + -129079/1000000` |
| 211 | bound | `{"direction":"hi","ref":"55:211","triangle":"PQS","value":"468863/1000000"}` | `468863/1000000 + 1 * u * k + -1 * q * u + -1 * p * k + -1 * v * j + 1 * p * v + 1 * q * j` |
| 212 | bound | `{"direction":"lo","ref":"55:212","triangle":"PRS","value":"93/1000"}` | `1 * r * k + -1 * q * r + -1 * p * k + -1 * w * j + 1 * p * w + 1 * q * j + -93/1000` |
| 214 | bound | `{"direction":"lo","ref":"55:214","triangle":"QRS","value":"93/1000"}` | `-1 * r * k + 1 * v * r + 1 * u * k + 1 * w * j + -1 * u * w + -1 * v * j + -93/1000` |
| 216 | coordinate | `{"box":55,"direction":"lo","value":"17183/125000","variable":"a"}` | `1 * a + -17183/125000` |
| 218 | coordinate | `{"box":55,"direction":"lo","value":"40433/125000","variable":"b"}` | `1 * b + -40433/125000` |
| 219 | coordinate | `{"box":55,"direction":"hi","value":"84567/125000","variable":"b"}` | `84567/125000 + -1 * b` |
| 220 | coordinate | `{"box":55,"direction":"lo","value":"13857/20000","variable":"c"}` | `1 * c + -13857/20000` |
| 221 | coordinate | `{"box":55,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 222 | coordinate | `{"box":55,"direction":"lo","value":"17183/125000","variable":"e"}` | `1 * e + -17183/125000` |
| 223 | coordinate | `{"box":55,"direction":"hi","value":"59/125","variable":"e"}` | `59/125 + -1 * e` |
| 224 | coordinate | `{"box":55,"direction":"lo","value":"40433/125000","variable":"f"}` | `1 * f + -40433/125000` |
| 225 | coordinate | `{"box":55,"direction":"hi","value":"84567/125000","variable":"f"}` | `84567/125000 + -1 * f` |
| 226 | coordinate | `{"box":55,"direction":"lo","value":"13857/20000","variable":"h"}` | `1 * h + -13857/20000` |
| 227 | coordinate | `{"box":55,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 228 | coordinate | `{"box":55,"direction":"lo","value":"107821/1000000","variable":"p"}` | `1 * p + -107821/1000000` |
| 229 | coordinate | `{"box":55,"direction":"hi","value":"235733/500000","variable":"p"}` | `235733/500000 + -1 * p` |
| 230 | coordinate | `{"box":55,"direction":"lo","value":"82827/500000","variable":"q"}` | `1 * q + -82827/500000` |
| 231 | coordinate | `{"box":55,"direction":"hi","value":"293803/500000","variable":"q"}` | `293803/500000 + -1 * q` |
| 232 | coordinate | `{"box":55,"direction":"lo","value":"107821/1000000","variable":"u"}` | `1 * u + -107821/1000000` |
| 233 | coordinate | `{"box":55,"direction":"hi","value":"271107/500000","variable":"u"}` | `271107/500000 + -1 * u` |
| 234 | coordinate | `{"box":55,"direction":"lo","value":"484711/1000000","variable":"v"}` | `1 * v + -484711/1000000` |
| 235 | coordinate | `{"box":55,"direction":"hi","value":"907/1000","variable":"v"}` | `907/1000 + -1 * v` |
| 236 | coordinate | `{"box":55,"direction":"lo","value":"40433/62500","variable":"r"}` | `1 * r + -40433/62500` |
| 237 | coordinate | `{"box":55,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 238 | coordinate | `{"box":55,"direction":"lo","value":"274929/500000","variable":"w"}` | `1 * w + -274929/500000` |
| 239 | coordinate | `{"box":55,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 240 | coordinate | `{"box":55,"direction":"lo","value":"51267/100000","variable":"j"}` | `1 * j + -51267/100000` |
| 241 | coordinate | `{"box":55,"direction":"hi","value":"892179/1000000","variable":"j"}` | `892179/1000000 + -1 * j` |
| 242 | coordinate | `{"box":55,"direction":"lo","value":"412393/1000000","variable":"k"}` | `1 * k + -412393/1000000` |
| 243 | coordinate | `{"box":55,"direction":"hi","value":"8033/8963","variable":"k"}` | `8033/8963 + -1 * k` |
| 246 | physical | `{"factor":4}` | `-93/1000 + 1 * e` |
| 247 | physical | `{"factor":6}` | `-93/1000 + 1 * f` |
| 252 | physical | `{"factor":18}` | `-93/1000 + 1 * c` |
| 254 | physical | `{"factor":26}` | `907/1000 + -1 * a` |
| 255 | physical | `{"factor":39}` | `-93/1000 + 1 * h` |
| 256 | physical | `{"factor":45}` | `907/1000 + -1 * b` |
| 258 | physical | `{"factor":68}` | `907/1000 + -1 * f` |
| 260 | physical | `{"factor":93}` | `907/1000 + -1 * e` |
| 262 | physical | `{"factor":124}` | `1 * e + -1 * a` |
| 263 | physical | `{"factor":125}` | `1 * h + -1 * e` |
| 264 | physical | `{"factor":126}` | `1 * f + -1 * b` |
| 265 | physical | `{"factor":127}` | `1 * c + -1 * f` |
| 266 | physical | `{"factor":128}` | `1 * f + -1 * e` |
| 267 | physical | `{"factor":129}` | `1 * c * h + -13857/20000` |
| 269 | physical | `{"factor":131}` | `346/625 + -1 * c * h + 1 * f * h + 1 * c * e + -1 * e * f` |
| 270 | physical | `{"factor":132}` | `721/1000 + -1 * f + -1 * e + 1 * e * f` |
| 272 | physical | `{"factor":134}` | `31055538931/62500000000 + -42680538931/62500000000 * v + 93/1000 * e + 93/1000 * h` |
| 273 | physical | `{"factor":135}` | `907/1000 + -1 * p + -1 * q` |
| 274 | physical | `{"factor":136}` | `3039253413/484375000 * j + -1 + -2070503413/484375000 * f + -1 * r` |
| 276 | physical | `{"factor":138}` | `3039253413/484375000 * k + -1 + -2070503413/484375000 * e + -1 * w` |
| 277 | physical | `{"factor":139}` | `2070503413/484375000 + 1 * e + 1 * w + -3039253413/484375000 * k` |
| 386 | physical | `{"factor":248}` | `792719/1250000 + 602281/1250000 * c + -792719/1250000 * e * f + -602281/1250000 * c * e + -279/250 * h + 279/250 * f * h` |
| 464 | physical | `{"factor":326}` | `-5497461/7812500 * b * h + 5497461/7812500 * a * b + -1023/1000 * a * c + 1023/1000 * c * h` |
| 465 | physical | `{"factor":327}` | `-486031/1250000 * c * e + 486031/1250000 * b * e + 1023/1000 * c * h + -1023/1000 * b * h` |
| 493 | physical | `{"factor":355}` | `-4331770301/10000000000 * c * v + 4331770301/10000000000 * b * v + 1023/1000 * c * h + -1023/1000 * b * h` |
| 508 | physical | `{"factor":370}` | `18366163301/62500000000 * f * w + -18366163301/62500000000 * e * f + 45571336699/62500000000 * w + -18366163301/62500000000 * r + 18366163301/62500000000 + -45571336699/62500000000 * e * r + 1023/1000 * a * r + -1023/1000 * a` |
| 523 | physical | `{"factor":385}` | `-352781229669/1120375000000 * b * h + 352781229669/1120375000000 * a * b + -1023/1000 * a * j + 1023/1000 * h * j` |
| 556 | physical | `{"factor":418}` | `-135041072595147/224075000000000 * k + -94187652404853/224075000000000 * a + 135041072595147/224075000000000 * e * j + -135041072595147/224075000000000 * a * j + -1023/1000 * e * f + 1023/1000 + 1023/1000 * a * f` |
| 566 | physical | `{"factor":428}` | `-5497461/7812500 * c * v + -4989453/15625000 * b * v + 1023/1000 * b * e + 1023/1000 * v + -1023/1000 * e * u` |
| 567 | physical | `{"factor":429}` | `-11430793677/31250000000 + 11430793677/31250000000 * c + 11430793677/31250000000 * e * f + 20537956323/31250000000 * c * e + 1023/1000 * v + -1023/1000 * e * u + -1023/1000 * c * v` |
| 571 | physical | `{"factor":433}` | `10827/31250 * f * w + -10827/31250 * e * f + 84567/125000 * w + -10827/31250 * r + 10827/31250 + -84567/125000 * e * r + -1023/1000 * b * w + 1023/1000 * b * e` |
| 576 | physical | `{"factor":438}` | `35397243409/62500000000 * q + 35397243409/62500000000 * h * p + 28540256591/62500000000 * h + -35397243409/62500000000 * e * p + -1023/1000 * b * h + 1023/1000 * b * e` |
| 577 | physical | `{"factor":439}` | `-10827/31250 * b * v + 84567/125000 * h * u + 10827/31250 * b * h + -1023/1000 * c * h + 1023/1000 * c * v` |
| 604 | physical | `{"factor":466}` | `35397243409/62500000000 * f * q + 35397243409/62500000000 * h * p + 28540256591/62500000000 * f * h + -35397243409/62500000000 * p + -1023/1000 * b * h + 1023/1000 * b` |
| 622 | physical | `{"factor":484}` | `18053144349/31250000000 * f * k + 13915605651/31250000000 * c * k + -18053144349/31250000000 * j + 18053144349/31250000000 * c + -1023/1000 * u * k + 1023/1000 * v * j + -1023/1000 * c * v` |
| 636 | physical | `{"factor":498}` | `-123393382103/250000000000 * u * k + -132356617897/250000000000 * q * u + -132356617897/250000000000 * p * k + 123393382103/250000000000 * v * j + 132356617897/250000000000 * p * v + 132356617897/250000000000 * q * j + -1023/1000 * b * v + 1023/1000 * b * k` |
| 637 | physical | `{"factor":499}` | `-53567/100000 * c * w + 53567/100000 * b * w + 1023/1000 * c * k + -1023/1000 * b * k` |
| 648 | physical | `{"factor":510}` | `-56756642461/100000000000 * f * v + -45543357539/100000000000 * e * f + 56756642461/100000000000 * v + 56756642461/100000000000 * u + 45543357539/100000000000 + -56756642461/100000000000 * e * u + -1023/1000 * p + 1023/1000 * f * q + 1023/1000 * e * p + -1023/1000 * q` |
| 652 | physical | `{"factor":514}` | `-247978381297087/560187500000000 * q + -325093431202913/560187500000000 * b * q + 247978381297087/560187500000000 * e * p + -247978381297087/560187500000000 * b * e + 1023/1000 * b * k + -1023/1000 * p * k + 1023/1000 * q * j` |
| 690 | physical | `{"factor":552}` | `-4566168709/10000000000 * p * v + -5663831291/10000000000 * c * v + 4566168709/10000000000 * q * u + 5663831291/10000000000 * c * q + -1023/1000 * q + 1023/1000 * e * p + 1023/1000 * v + -1023/1000 * e * u` |
| 698 | physical | `{"factor":560}` | `-21692963/31250000 * v + -10275787/31250000 * c * v + 21692963/31250000 * e * u + -21692963/31250000 * c * e + 1023/1000 * c * w + -1023/1000 * u * w + 1023/1000 * v * r` |
| 703 | physical | `{"factor":565}` | `-11859/40000 * p * v + 11859/40000 * h * p + 11859/40000 * q * u + 29061/40000 * h * u + -1023/1000 * c * h + 1023/1000 * c * v` |
| 715 | physical | `{"factor":577}` | `-3503392971925779/4481500000000000 * p * v + -1081181528074221/4481500000000000 * c * v + 3503392971925779/4481500000000000 * q * u + 1081181528074221/4481500000000000 * c * q + 1023/1000 * p * k + -1023/1000 * q * j + -1023/1000 * u * k + 1023/1000 * v * j` |
| 718 | physical | `{"factor":580}` | `1918621/7812500 * f * q + 1918621/7812500 * h * p + 12147133/15625000 * f * h + -1918621/7812500 * p + -1023/1000 * h + -1023/1000 * e * f + 1023/1000` |
| 723 | physical | `{"factor":585}` | `-3020193213701851/4481500000000000 * p * v + -1564381286298149/4481500000000000 * e * p + -1564381286298149/4481500000000000 * v + 3020193213701851/4481500000000000 * q * u + 1564381286298149/4481500000000000 * q + 1564381286298149/4481500000000000 * e * u + 1023/1000 * p * k + -1023/1000 * q * j + -1023/1000 * u * k + 1023/1000 * v * j` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 436900 | 0, 19 |
| 1 | 336400 | 0, 21 |
| 2 | 742900 | 0, 28 |
| 3 | 4669400 | 0, 31 |
| 4 | 25571600 | 0, 33 |
| 5 | 742900 | 0, 39 |
| 6 | 226400 | 0, 43 |
| 7 | 5332700 | 0, 47 |
| 8 | 166300 | 0, 50 |
| 9 | 117500 | 0, 57 |
| 10 | 10800 | 0, 79 |
| 11 | 114700 | 0, 80 |
| 12 | 87094300 | 0, 82 |
| 13 | 146600 | 0, 87 |
| 14 | 320500 | 0, 94 |
| 15 | 78200 | 0, 105 |
| 16 | 396500 | 0, 121 |
| 17 | 2804400 | 0, 136 |
| 18 | 8622400 | 0, 143 |
| 19 | 3366800 | 0, 144 |
| 20 | 1496800 | 0, 151 |
| 21 | 5227500 | 0, 154 |
| 22 | 315900 | 0, 165 |
| 23 | 7352700 | 0, 166 |
| 24 | 4958600 | 0, 169 |
| 25 | 512200 | 0, 191 |
| 26 | 8176100 | 0, 201 |
| 27 | 3205800 | 0, 207 |
| 28 | 55000 | 0, 209 |
| 29 | 188800 | 0, 229 |
| 30 | 131300 | 0, 230 |
| 31 | 1998400 | 0, 235 |
| 32 | 336000 | 0, 238 |
| 33 | 5456800 | 0, 242 |
| 34 | 541500 | 0, 252 |
| 35 | 31061700 | 0, 254 |
| 36 | 33133000 | 0, 255 |
| 37 | 79500 | 0, 258 |
| 38 | 5584100 | 0, 260 |
| 39 | 407100 | 2, 90 |
| 40 | 333700 | 2, 118 |
| 41 | 64400 | 2, 130 |
| 42 | 255700 | 2, 134 |
| 43 | 28200 | 2, 160 |
| 44 | 2305200 | 2, 184 |
| 45 | 633400 | 2, 198 |
| 46 | 7749900 | 2, 212 |
| 47 | 319300 | 3, 186 |
| 48 | 5332700 | 5, 22 |
| 49 | 87501400 | 5, 60 |
| 50 | 331100 | 6, 54 |
| 51 | 67800 | 6, 158 |
| 52 | 198200 | 6, 190 |
| 53 | 1787600 | 6, 196 |
| 54 | 15062700 | 6, 200 |
| 55 | 47607700 | 6, 208 |
| 56 | 633400 | 7, 214 |
| 57 | 30400 | 8, 16 |
| 58 | 5332700 | 8, 18 |
| 59 | 47400 | 8, 33 |
| 60 | 60100 | 8, 50 |
| 61 | 14267200 | 8, 56 |
| 62 | 241600 | 8, 68 |
| 63 | 170100 | 8, 74 |
| 64 | 10800 | 8, 94 |
| 65 | 10800 | 8, 97 |
| 66 | 91900 | 8, 105 |
| 67 | 198200 | 8, 126 |
| 68 | 41240000 | 8, 135 |
| 69 | 40851200 | 8, 136 |
| 70 | 41260700 | 8, 147 |
| 71 | 4082000 | 8, 166 |
| 72 | 3700900 | 8, 177 |
| 73 | 8049700 | 8, 187 |
| 74 | 6147300 | 8, 188 |
| 75 | 2167200 | 8, 204 |
| 76 | 23900 | 8, 227 |
| 77 | 25300 | 8, 236 |
| 78 | 41700 | 8, 239 |
| 79 | 72785300 | 8, 252 |
| 80 | 72952700 | 8, 256 |
| 81 | 83300 | 8, 260 |
| 82 | 118300 | 8, 265 |
| 83 | 69900 | 10, 54 |
| 84 | 90800 | 10, 118 |
| 85 | 90800 | 11, 120 |
| 86 | 10800 | 12, 54 |
| 87 | 13300 | 12, 160 |
| 88 | 10800 | 15, 54 |
| 89 | 1942100 | 17, 186 |
| 90 | 329500 | 17, 190 |
| 91 | 398000 | 18, 118 |
| 92 | 503600 | 18, 212 |
| 93 | 329500 | 19, 114 |
| 94 | 13300 | 19, 120 |
| 95 | 100 | 19, 216 |
| 96 | 8164400 | 21, 108 |
| 97 | 96600 | 21, 264 |
| 98 | 2306500 | 22, 94 |
| 99 | 14311700 | 22, 108 |
| 100 | 3140800 | 22, 112 |
| 101 | 1003800 | 22, 118 |
| 102 | 6262000 | 22, 187 |
| 103 | 8164400 | 22, 188 |
| 104 | 17485100 | 22, 200 |
| 105 | 30400 | 22, 264 |
| 106 | 177500 | 23, 184 |
| 107 | 387000 | 23, 214 |
| 108 | 5200 | 24, 54 |
| 109 | 42500 | 24, 118 |
| 110 | 5610600 | 24, 212 |
| 111 | 3141900 | 25, 114 |
| 112 | 42500 | 25, 120 |
| 113 | 133300 | 25, 200 |
| 114 | 374300 | 26, 54 |
| 115 | 4879000 | 26, 90 |
| 116 | 202900 | 26, 118 |
| 117 | 17363600 | 26, 160 |
| 118 | 394800 | 26, 184 |
| 119 | 458400 | 26, 212 |
| 120 | 387000 | 26, 214 |
| 121 | 1757200 | 27, 114 |
| 122 | 5947200 | 27, 120 |
| 123 | 5667600 | 28, 118 |
| 124 | 98600 | 28, 184 |
| 125 | 145100 | 30, 118 |
| 126 | 13300 | 31, 69 |
| 127 | 28200 | 31, 112 |
| 128 | 13300 | 31, 130 |
| 129 | 133300 | 31, 134 |
| 130 | 199300 | 31, 218 |
| 131 | 4011100 | 33, 84 |
| 132 | 1873600 | 33, 118 |
| 133 | 51884100 | 33, 160 |
| 134 | 129257200 | 33, 184 |
| 135 | 75710300 | 33, 212 |
| 136 | 106159800 | 33, 214 |
| 137 | 5610600 | 35, 212 |
| 138 | 119400 | 36, 54 |
| 139 | 863700 | 36, 237 |
| 140 | 45600 | 37, 114 |
| 141 | 17258500 | 37, 130 |
| 142 | 863650 | 37, 274 |
| 143 | 28200 | 39, 118 |
| 144 | 98600 | 39, 184 |
| 145 | 105000 | 40, 160 |
| 146 | 503600 | 40, 212 |
| 147 | 387000 | 40, 214 |
| 148 | 5088800 | 40, 237 |
| 149 | 202900 | 42, 118 |
| 150 | 118400 | 42, 160 |
| 151 | 387000 | 42, 214 |
| 152 | 5551300 | 43, 54 |
| 153 | 14124300 | 43, 90 |
| 154 | 100 | 43, 262 |
| 155 | 6147300 | 44, 54 |
| 156 | 14322500 | 44, 90 |
| 157 | 16950800 | 44, 118 |
| 158 | 4815800 | 46, 54 |
| 159 | 2394700 | 46, 95 |
| 160 | 47160500 | 46, 105 |
| 161 | 60200 | 46, 147 |
| 162 | 3173400 | 46, 200 |
| 163 | 2167200 | 46, 202 |
| 164 | 2167200 | 46, 208 |
| 165 | 17900 | 46, 216 |
| 166 | 11900 | 46, 222 |
| 167 | 22000 | 46, 237 |
| 168 | 87900 | 46, 270 |
| 169 | 641700 | 47, 118 |
| 170 | 375700 | 47, 184 |
| 171 | 387000 | 47, 214 |
| 172 | 2904200 | 48, 60 |
| 173 | 729200 | 48, 72 |
| 174 | 43605400 | 48, 90 |
| 175 | 133300 | 48, 130 |
| 176 | 133300 | 48, 180 |
| 177 | 2750900 | 49, 54 |
| 178 | 133300 | 49, 186 |
| 179 | 394800 | 50, 184 |
| 180 | 458400 | 50, 212 |
| 181 | 1732000 | 51, 54 |
| 182 | 438200 | 51, 69 |
| 183 | 47180900 | 51, 90 |
| 184 | 133300 | 51, 134 |
| 185 | 44400 | 51, 227 |
| 186 | 45600 | 54, 54 |
| 187 | 138300 | 54, 84 |
| 188 | 4700 | 54, 99 |
| 189 | 28200 | 54, 120 |
| 190 | 311300 | 54, 124 |
| 191 | 3305100 | 54, 132 |
| 192 | 1281600 | 54, 142 |
| 193 | 5974700 | 54, 150 |
| 194 | 245800 | 54, 191 |
| 195 | 1281600 | 54, 192 |
| 196 | 211800 | 54, 196 |
| 197 | 12654100 | 54, 200 |
| 198 | 29145800 | 54, 231 |
| 199 | 5200 | 54, 233 |
| 200 | 16835900 | 54, 238 |
| 201 | 8062800 | 54, 243 |
| 202 | 113200 | 54, 266 |
| 203 | 347400 | 54, 273 |
| 204 | 316710 | 54, 277 |
| 205 | 343100 | 59, 184 |
| 206 | 334000 | 60, 221 |
| 207 | 461400 | 60, 226 |
| 208 | 1675100 | 61, 160 |
| 209 | 17200 | 64, 264 |
| 210 | 7500 | 67, 160 |
| 211 | 5229000 | 69, 216 |
| 212 | 5524700 | 70, 214 |
| 213 | 63932100 | 70, 237 |
| 214 | 214300 | 71, 118 |
| 215 | 2195200 | 71, 184 |
| 216 | 73100 | 72, 84 |
| 217 | 10800 | 72, 108 |
| 218 | 1682700 | 72, 130 |
| 219 | 8907900 | 72, 200 |
| 220 | 54600 | 74, 184 |
| 221 | 70700 | 76, 184 |
| 222 | 1917700 | 80, 114 |
| 223 | 345000 | 80, 214 |
| 224 | 95881700 | 80, 230 |
| 225 | 904800 | 80, 262 |
| 226 | 47000 | 81, 200 |
| 227 | 347500 | 81, 202 |
| 228 | 20040800 | 81, 239 |
| 229 | 11200 | 81, 264 |
| 230 | 5200 | 82, 84 |
| 231 | 23700 | 82, 184 |
| 232 | 102082400 | 82, 227 |
| 233 | 177500 | 84, 114 |
| 234 | 54600 | 84, 178 |
| 235 | 298000 | 84, 212 |
| 236 | 18392200 | 84, 222 |
| 237 | 36829100 | 84, 227 |
| 238 | 42745500 | 84, 230 |
| 239 | 33700 | 86, 160 |
| 240 | 5736500 | 87, 164 |
| 241 | 78200 | 87, 190 |
| 242 | 8293300 | 87, 262 |
| 243 | 5983500 | 88, 164 |
| 244 | 165200 | 88, 202 |
| 245 | 15718500 | 89, 227 |
| 246 | 4933100 | 90, 120 |
| 247 | 268500 | 90, 128 |
| 248 | 3231200 | 90, 150 |
| 249 | 2524200 | 90, 158 |
| 250 | 1060800 | 90, 164 |
| 251 | 2439700 | 90, 179 |
| 252 | 42475400 | 90, 184 |
| 253 | 45013700 | 90, 187 |
| 254 | 39309500 | 90, 196 |
| 255 | 3359000 | 90, 198 |
| 256 | 2167200 | 90, 204 |
| 257 | 36510700 | 90, 235 |
| 258 | 2177000 | 90, 238 |
| 259 | 63800 | 90, 270 |
| 260 | 9130100 | 90, 272 |
| 261 | 78200 | 92, 180 |
| 262 | 54600 | 92, 210 |
| 263 | 53600 | 93, 160 |
| 264 | 5446100 | 93, 212 |
| 265 | 2625300 | 94, 160 |
| 266 | 2415900 | 95, 272 |
| 267 | 243400 | 96, 190 |
| 268 | 7500 | 96, 214 |
| 269 | 90800 | 98, 150 |
| 270 | 120000 | 98, 164 |
| 271 | 5567500 | 98, 180 |
| 272 | 657400 | 98, 188 |
| 273 | 2100 | 98, 218 |
| 274 | 3100 | 98, 224 |
| 275 | 124729100 | 98, 238 |
| 276 | 23959960 | 98, 277 |
| 277 | 2993300 | 101, 160 |
| 278 | 7500 | 102, 180 |
| 279 | 4409300 | 102, 216 |
| 280 | 4365700 | 102, 222 |
| 281 | 313400 | 104, 160 |
| 282 | 174600 | 106, 164 |
| 283 | 54600 | 106, 190 |
| 284 | 7739100 | 108, 114 |
| 285 | 7500 | 108, 198 |
| 286 | 5665800 | 108, 202 |
| 287 | 10780400 | 108, 227 |
| 288 | 150338900 | 108, 230 |
| 289 | 220151400 | 108, 272 |
| 290 | 13300 | 110, 130 |
| 291 | 29300 | 110, 134 |
| 292 | 20626700 | 110, 230 |
| 293 | 8000 | 112, 130 |
| 294 | 72100 | 112, 230 |
| 295 | 2141000 | 113, 212 |
| 296 | 3141900 | 114, 134 |
| 297 | 10499800 | 114, 200 |
| 298 | 7488900 | 114, 239 |
| 299 | 1965200 | 114, 272 |
| 300 | 34500 | 116, 130 |
| 301 | 4100 | 116, 186 |
| 302 | 1342000 | 116, 230 |
| 303 | 485600 | 118, 125 |
| 304 | 212300 | 118, 133 |
| 305 | 334900 | 118, 143 |
| 306 | 279500 | 118, 144 |
| 307 | 6200 | 118, 152 |
| 308 | 89600 | 118, 163 |
| 309 | 89600 | 118, 170 |
| 310 | 202900 | 118, 197 |
| 311 | 441600 | 118, 203 |
| 312 | 178800 | 118, 207 |
| 313 | 48900 | 118, 208 |
| 314 | 17900 | 118, 228 |
| 315 | 7664600 | 118, 230 |
| 316 | 345000 | 118, 232 |
| 317 | 10050000 | 118, 242 |
| 318 | 87700 | 118, 252 |
| 319 | 1784300 | 118, 254 |
| 320 | 3191500 | 118, 255 |
| 321 | 162600 | 118, 256 |
| 322 | 247400 | 118, 260 |
| 323 | 228100 | 118, 267 |
| 324 | 15800 | 118, 269 |
| 325 | 138900 | 118, 270 |
| 326 | 8000 | 120, 134 |
| 327 | 198300 | 120, 186 |
| 328 | 279500 | 120, 196 |
| 329 | 5323500 | 120, 216 |
| 330 | 10050000 | 120, 239 |
| 331 | 25800 | 124, 214 |
| 332 | 233400 | 126, 186 |
| 333 | 73000 | 126, 227 |
| 334 | 894700 | 129, 227 |
| 335 | 377100 | 130, 167 |
| 336 | 73100 | 130, 184 |
| 337 | 73100 | 130, 190 |
| 338 | 17300 | 133, 264 |
| 339 | 73000 | 134, 164 |
| 340 | 26600 | 134, 184 |
| 341 | 1925400 | 134, 216 |
| 342 | 5200 | 134, 221 |
| 343 | 1342000 | 134, 222 |
| 344 | 73000 | 135, 160 |
| 345 | 6023400 | 135, 212 |
| 346 | 243900 | 136, 160 |
| 347 | 71400 | 136, 214 |
| 348 | 178800 | 137, 198 |
| 349 | 151100 | 137, 202 |
| 350 | 74500 | 137, 208 |
| 351 | 206900 | 137, 231 |
| 352 | 430500 | 138, 190 |
| 353 | 7500 | 144, 160 |
| 354 | 109900 | 146, 264 |
| 355 | 73000 | 148, 164 |
| 356 | 26600 | 148, 184 |
| 357 | 6700 | 150, 264 |
| 358 | 89803800 | 152, 212 |
| 359 | 6440800 | 152, 214 |
| 360 | 142821500 | 153, 202 |
| 361 | 461400 | 153, 239 |
| 362 | 122616400 | 154, 214 |
| 363 | 1211400 | 154, 237 |
| 364 | 89526200 | 156, 212 |
| 365 | 50821900 | 156, 214 |
| 366 | 55700 | 158, 264 |
| 367 | 43200 | 158, 267 |
| 368 | 927500 | 158, 272 |
| 369 | 9949800 | 159, 190 |
| 370 | 28200 | 160, 166 |
| 371 | 26800 | 160, 186 |
| 372 | 9949800 | 160, 190 |
| 373 | 46470200 | 160, 204 |
| 374 | 38457400 | 160, 208 |
| 375 | 56200 | 160, 229 |
| 376 | 27823100 | 160, 232 |
| 377 | 143329900 | 160, 236 |
| 378 | 8700 | 160, 247 |
| 379 | 13300 | 160, 252 |
| 380 | 57235900 | 160, 254 |
| 381 | 51912300 | 160, 255 |
| 382 | 22000 | 160, 256 |
| 383 | 143482800 | 162, 184 |
| 384 | 72001500 | 163, 200 |
| 385 | 145683700 | 164, 182 |
| 386 | 46400 | 164, 184 |
| 387 | 2394700 | 164, 187 |
| 388 | 73000 | 164, 190 |
| 389 | 48716100 | 164, 193 |
| 390 | 84372700 | 164, 201 |
| 391 | 50821900 | 164, 208 |
| 392 | 38526400 | 164, 210 |
| 393 | 405300 | 164, 220 |
| 394 | 27724600 | 164, 224 |
| 395 | 633400 | 164, 238 |
| 396 | 27766900 | 164, 241 |
| 397 | 22900 | 164, 264 |
| 398 | 78549100 | 165, 212 |
| 399 | 22803700 | 166, 237 |
| 400 | 17900 | 166, 262 |
| 401 | 66397900 | 166, 264 |
| 402 | 2243600 | 167, 182 |
| 403 | 79939100 | 167, 190 |
| 404 | 383800 | 167, 208 |
| 405 | 38491300 | 167, 210 |
| 406 | 22803660 | 167, 274 |
| 407 | 79831400 | 168, 190 |
| 408 | 50793900 | 170, 184 |
| 409 | 89595900 | 170, 198 |
| 410 | 187100 | 170, 237 |
| 411 | 50821900 | 176, 184 |
| 412 | 89541400 | 178, 190 |
| 413 | 48963600 | 178, 205 |
| 414 | 231500 | 180, 184 |
| 415 | 8700 | 180, 264 |
| 416 | 4425290 | 182, 274 |
| 417 | 118555400 | 183, 196 |
| 418 | 48972500 | 183, 198 |
| 419 | 19310500 | 183, 272 |
| 420 | 157559600 | 184, 192 |
| 421 | 9949800 | 184, 194 |
| 422 | 1848800 | 184, 204 |
| 423 | 38802000 | 184, 210 |
| 424 | 29558600 | 184, 230 |
| 425 | 831700 | 184, 238 |
| 426 | 27766900 | 184, 241 |
| 427 | 2153600 | 184, 246 |
| 428 | 18976000 | 184, 247 |
| 429 | 130665700 | 184, 254 |
| 430 | 130764500 | 184, 255 |
| 431 | 70900 | 184, 256 |
| 432 | 507500 | 184, 267 |
| 433 | 59700 | 184, 269 |
| 434 | 59700 | 184, 270 |
| 435 | 128583400 | 186, 190 |
| 436 | 38770800 | 186, 198 |
| 437 | 122247600 | 186, 214 |
| 438 | 796600 | 186, 216 |
| 439 | 125300 | 186, 273 |
| 440 | 1402600 | 187, 262 |
| 441 | 85500 | 187, 264 |
| 442 | 38949600 | 188, 193 |
| 443 | 7500 | 188, 214 |
| 444 | 27766900 | 188, 229 |
| 445 | 143329900 | 188, 237 |
| 446 | 24790800 | 190, 226 |
| 447 | 130700 | 190, 264 |
| 448 | 18823900 | 190, 266 |
| 449 | 237700 | 190, 267 |
| 450 | 8960 | 190, 274 |
| 451 | 37590 | 190, 276 |
| 452 | 279718900 | 194, 214 |
| 453 | 122634600 | 196, 212 |
| 454 | 329600 | 196, 267 |
| 455 | 48963600 | 198, 205 |
| 456 | 279718900 | 198, 212 |
| 457 | 2283200 | 198, 226 |
| 458 | 3319700 | 198, 262 |
| 459 | 122634600 | 200, 209 |
| 460 | 279726400 | 200, 211 |
| 461 | 9326300 | 200, 216 |
| 462 | 3287600 | 200, 222 |
| 463 | 235900 | 200, 230 |
| 464 | 345400 | 200, 272 |
| 465 | 73100 | 202, 221 |
| 466 | 8131500 | 202, 225 |
| 467 | 1451500 | 202, 239 |
| 468 | 1319100 | 202, 262 |
| 469 | 567200 | 202, 270 |
| 470 | 241800 | 203, 264 |
| 471 | 122634600 | 204, 214 |
| 472 | 2482700 | 205, 227 |
| 473 | 219700 | 208, 264 |
| 474 | 329600 | 208, 267 |
| 475 | 6563410 | 208, 274 |
| 476 | 33964600 | 210, 237 |
| 477 | 41347500 | 212, 233 |
| 478 | 150103000 | 212, 234 |
| 479 | 6563400 | 212, 236 |
| 480 | 164800 | 212, 240 |
| 481 | 27710800 | 212, 247 |
| 482 | 91055800 | 212, 254 |
| 483 | 89070800 | 212, 255 |
| 484 | 7737700 | 212, 260 |
| 485 | 41347500 | 214, 229 |
| 486 | 150103000 | 214, 230 |
| 487 | 6563400 | 214, 236 |
| 488 | 164800 | 214, 240 |
| 489 | 27726200 | 214, 247 |
| 490 | 106159800 | 214, 254 |
| 491 | 104510000 | 214, 255 |
| 492 | 15300 | 214, 256 |
| 493 | 633400 | 214, 260 |
| 494 | 107500 | 214, 269 |
| 495 | 65073800 | 216, 221 |
| 496 | 59400 | 216, 239 |
| 497 | 41257400 | 219, 262 |
| 498 | 38783400 | 221, 222 |
| 499 | 28827100 | 221, 230 |
| 500 | 59900 | 221, 267 |
| 501 | 4039700 | 222, 239 |
| 502 | 62200 | 222, 262 |
| 503 | 26328000 | 223, 237 |
| 504 | 33319600 | 224, 227 |
| 505 | 47126400 | 225, 239 |
| 506 | 13300 | 225, 264 |
| 507 | 34200 | 226, 262 |
| 508 | 2615110 | 226, 274 |
| 509 | 68000 | 227, 227 |
| 510 | 47501700 | 227, 264 |
| 511 | 168200 | 227, 267 |
| 512 | 28732600 | 228, 239 |
| 513 | 61805200 | 228, 262 |
| 514 | 60600 | 228, 267 |
| 515 | 28935500 | 231, 237 |
| 516 | 47300 | 231, 262 |
| 517 | 35952000 | 231, 264 |
| 518 | 4447400 | 232, 262 |
| 519 | 1226200 | 235, 264 |
| 520 | 2615100 | 237, 238 |
| 521 | 16408800 | 237, 243 |
| 522 | 34455500 | 237, 263 |
| 523 | 188500 | 237, 266 |
| 524 | 48900 | 237, 267 |
| 525 | 281300 | 237, 269 |
| 526 | 212900 | 237, 270 |
| 527 | 26400 | 237, 273 |
| 528 | 37395800 | 238, 264 |
| 529 | 5852100 | 239, 270 |
| 530 | 2615110 | 239, 274 |
| 531 | 9118600 | 262, 264 |
| 532 | 92900 | 262, 270 |
| 533 | 471210 | 262, 274 |
| 534 | 200 | 264, 265 |
| 535 | 18731880 | 264, 277 |
| 536 | 39400 | 270, 270 |
| 537 | 367600 | 237, 386 |
| 538 | 443300 | 237, 464 |
| 539 | 350700 | 237, 465 |
| 540 | 113800 | 237, 493 |
| 541 | 34300 | 262, 508 |
| 542 | 240800 | 237, 523 |
| 543 | 8583100 | 237, 556 |
| 544 | 154400 | 237, 566 |
| 545 | 19000 | 264, 567 |
| 546 | 372900 | 262, 571 |
| 547 | 2170400 | 237, 576 |
| 548 | 8900 | 264, 577 |
| 549 | 9500 | 237, 604 |
| 550 | 15000 | 264, 622 |
| 551 | 5442600 | 262, 636 |
| 552 | 130300 | 227, 637 |
| 553 | 15800 | 237, 648 |
| 554 | 446900 | 216, 652 |
| 555 | 479500 | 222, 652 |
| 556 | 17500 | 264, 690 |
| 557 | 129100 | 118, 698 |
| 558 | 142200 | 264, 703 |
| 559 | 775400 | 237, 715 |
| 560 | 13412800 | 237, 718 |
| 561 | 25670 | 274, 723 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `a * b` | -147351603751094368797/1400468750000 |
| `a * b * c` | 115200 |
| `a * c` | -10561544530078499/350117187500 |
| `a * c * c` | -12900 |
| `a * a * c * c` | 30400 |
| `1` | -486521800915735112017120767/5601875000000000000 |
| `c` | -1175010663/25000 |
| `a * f` | 113179043239/24218750 |
| `c * h` | 1529626191/10000 |
| `a * b * c * k` | -100 |
| `c * k` | -3676749397/39062500 |
| `a * b * e * f` | 107700 |
| `a * a * c` | -77700 |
| `a * c * e * f` | 100 |
| `a` | 76259986290118323921/2240750000000 |
| `e * f` | -1131347893267723/77500000000 |
| `a * b * h` | -18000 |
| `a * c * h` | -200 |
| `h` | -699710443042961/5000000000 |
| `a * b * k` | -11/10 |
| `a * c * k` | 100 |
| `a * c * e * j` | -100 |
| `k` | -965644109816601/56018750000000 |
| `e * j` | -3947279141440977/69463250000000 |
| `a * c * r` | 151959/10 |
| `a * a * c * r` | 60100 |
| `f * w` | -29049697853799/625000000 |
| `r` | 1815104798195250227033/22407500000000 |
| `a * r` | -265305499968842767/11203750000000 |
| `a * c * h * p` | 100 |
| `a * a * c * p` | -30400 |
| `h * p` | -117247819199991/625000000 |
| `a * p` | 406427967567/19531250 |
| `h * r` | 111957785914907/625000000 |
| `a * b * b` | -11600 |
| `b` | 2712312138947233/193750000 |
| `a * b * b * e` | 100 |
| `a * b * c * e` | 100 |
| `b * e` | 8154081560120808758012683/2713408203125000000 |
| `a * b * b * h` | 28100 |
| `f * h` | 1331755790278911/9687500000 |
| `b * h` | -166995762808912337/5601875000000 |
| `a * b * f * q` | 100 |
| `a * c * f * q` | -100 |
| `a * b * c * q` | 100 |
| `a * c * p` | 8400 |
| `f * q` | -24224152800394266909591872479/217072656250000000000000 |
| `b * q` | 458183701941669707595221/1356704101562500000 |
| `p` | 15611683683239/312500000 |
| `a * b * b * w` | -14600 |
| `a * b * c * w` | -209300 |
| `b * w` | 104328691171501/125000000 |
| `a * c * u * w` | -100 |
| `a * c * v * r` | 100 |
| `u * w` | 27299210883/312500000 |
| `v * r` | -46728703788784817/448150000000000 |
| `c * e` | 138880092919313197841/1389265000000000 |
| `c * w` | -21925076994009/1000000000 |
| `a * b * p * w` | 100 |
| `a * b * q * r` | -152100 |
| `a * c * q * r` | -192000 |
| `a * c * c * q` | 27000 |
| `p * w` | 3455843/125 |
| `q * r` | 103678183883247582077/448150000000000 |
| `c * q` | -1281793531040552687/22407500000000 |
| `p * k` | 1520945478/12109375 |
| `q * j` | 13296875367384834998122479/217072656250000000000000 |
| `a * b * r * k` | 100 |
| `a * b * w * j` | -100 |
| `a * c * r * k` | -100 |
| `a * c * w * j` | 200 |
| `r * k` | 1357520842502461/11203750000000 |
| `w * j` | 6911258987/312500000 |
| `a * b * q` | 550387955954181803/5601875000000 |
| `a * c * q` | 86800 |
| `a * c * e * p` | -200 |
| `q` | -325904652701068343785087/1400468750000000000 |
| `e * p` | 3640276737753721557337697/43414531250000000000 |
| `a * b * v` | -101/5 |
| `a * b * e * u` | -100 |
| `a * c * v` | 100 |
| `v` | 104284984590227466491/1120375000000000000 |
| `h * u` | 457011947493/5000000000 |
| `e * u` | -1194809945394736483/13892650000000000 |
| `a * b * w` | 1543767/10 |
| `a * b * e * r` | 100 |
| `a * c * w` | 67800 |
| `a * c * e * r` | -100 |
| `w` | -1314188384870827/5000000000 |
| `e * r` | -474686109248189/5000000000 |
| `h * j` | -56766222757/19375000000 |
| `a * b * q * u` | 100 |
| `a * c * f * v` | -100 |
| `a * c * u` | 100 |
| `p * v` | 2040676645028431247/13892650000000000 |
| `f * v` | -41090382409377595095627521/217072656250000000000000 |
| `q * u` | -1752370353821310047/13892650000000000 |
| `u` | 500420752643/2500000000 |
| `a * c * f * k` | 100 |
| `a * c * j` | -100 |
| `f * k` | 1182384121879/19375000000 |
| `j` | -4268816942044849/48437500000000 |
| `a * b * f` | -14800 |
| `f` | -38808471601892021/1562500000000 |
| `a * b * e` | -194979237329181803/5601875000000 |
| `a * c * e` | -100 |
| `e` | -6213672584656031/6250000000 |
| `b * b * e * q` | -100 |
| `b * e * h * p` | -100 |
| `b * b * e * h` | 76000 |
| `a * h * p` | -82600 |
| `b * e * w` | -27889926/5 |
| `b * c * e * w` | -100 |
| `a * w` | -30306139987757/625000000 |
| `a * e * r` | 15174202487757/625000000 |
| `b * e * f * k` | -100 |
| `b * c * e * k` | 100 |
| `b * c * e` | 403829863/31250000 |
| `a * f * k` | 100 |
| `a * j` | 1700453372302893/69463250000000 |
| `b * c * e * v` | -100 |
| `c * v` | 2125309327514857/22407500000000 |
| `b * e * e * f` | 14900 |
| `a * e * f` | -21890139987757/625000000 |
| `a * k` | -100 |
| `a * e * j` | 100 |
| `b * e * f * v` | -100 |
| `b * e * f * h` | 100 |
| `b * e * u` | 279/2 |
| `a * f * h` | 100 |
| `a * u` | -191/10 |
| `a * u * k` | 29107168939/1250000000 |
| `a * v * j` | -29107168939/1250000000 |
| `u * k` | -1625276649523/9687500000 |
| `v * j` | -10713671184796309998122479/217072656250000000000000 |
| `b * e * q * r` | -31800 |
| `b * e * w * j` | 100 |
| `b * e * q * j` | -100 |
| `a * q * r` | 182200 |
| `a * p * k` | -27732168939/1250000000 |
| `a * w * j` | -100 |
| `a * p * w` | -100 |
| `a * q * j` | 27732168939/1250000000 |
| `b * e * h * r` | -238600 |
| `b * e * r` | 2132109283/12500 |
| `a * f * w` | 15139987757/625000000 |
| `a * h * r` | -100 |
| `b * c * q` | -46819037/4000000 |
| `b * b * q` | -40500 |
| `b * h * w` | 3699/1000 |
| `b * h * r` | 45911438750507/1400468750 |
| `b * h * p * v` | 100 |
| `b * h * p` | 33248251/200 |
| `b * h * q * u` | -100 |
| `b * h * u` | -665127/5000 |
| `b * f * h * k` | -100 |
| `b * h * j` | 100 |
| `b * h * u * k` | 200 |
| `b * h * v * j` | -100 |
| `a * a * p` | 59900 |
| `b * h * q` | 7/10 |
| `a * a * p * r` | -60100 |
| `b * e * f * q` | 100 |
| `b * q * v` | -36615060769/625000000 |
| `b * b * q * v` | 100 |
| `a * p * v` | -70642831061/1250000000 |
| `a * e * p * u` | 100 |
| `b * b * q * w` | -91900 |
| `b * q * v * r` | 100 |
| `b * f * q * v` | -100 |
| `b * q * u` | 601839037/4000000 |
| `b * c * q * w` | 100 |
| `b * q * w` | -537060 |
| `a * e * p * r` | -223800 |
| `b * q * r` | 25200 |
| `a * p * r` | 47300 |
| `a * b * r` | 35205391811993/1400468750 |
| `b * e * q` | 23161086238906433/1120375000000 |
| `a * e * p` | 811876198516681803/5601875000000 |
| `b * f * q` | 100 |
| `b * v` | 21008704607/310000000 |
| `b * v * w` | -4468821501/125000000 |
| `b * v * k` | 157647324177/9687500000 |
| `b * f * w * k` | 100 |
| `b * w * k` | -100 |
| `a * e * f * r` | -100 |
| `a * r * j` | -1177120255502733/69463250000000 |
| `a * e * r * j` | 100 |
| `b * k` | 1031805633523/9687500000 |
| `c * e * f * w` | -100 |
| `c * e * h * r` | -35500 |
| `c * e * f * h` | -200 |
| `c * e * r` | 403495673/12500 |
| `c * e * p * v` | -100 |
| `c * e * f * v` | 200 |
| `c * e * q * u` | 100 |
| `c * e * u` | -200 |
| `a * q * u` | -54357168939/1250000000 |
| `c * c * w` | -100 |
| `c * c * e` | -87200 |
| `c * q * r` | 731186965656245183/22407500000000 |
| `c * w * j` | 100 |
| `c * p * w` | 100 |
| `c * q * j` | 100 |
| `c * c * q` | -4500 |
| `a * e * f * j` | -100 |
| `c * h * r * k` | 100 |
| `b * c * h * k` | 100 |
| `c * h * w * j` | -100 |
| `c * f * h` | -1081753/10 |
| `b * c * h` | -247/10 |
| `c * q * r * k` | 100 |
| `b * c * q * k` | -200 |
| `c * h * q` | -7318/5 |
| `c * c * h * q` | 1100 |
| `c * c * e * q` | -100 |
| `c * q * w` | 76700 |
| `c * c * q * w` | 100 |
| `c * e * q * r` | -45500 |
| `c * f * q * w` | -237700 |
| `c * f * q * k` | -100 |
| `c * f * q` | 522846819037/4000000 |
| `c * q * u * w` | 100 |
| `c * c * e * v` | 15208983/312500 |
| `c * v * w` | 5206054/78125 |
| `c * c * v * w` | -15208983/312500 |
| `c * e * v * r` | 6447267/312500 |
| `c * v * w * j` | -100 |
| `c * p * v * w` | -100 |
| `c * v * r` | 260323235201167/22407500000000 |
| `c * f * v * w` | 100 |
| `c * c * e * w` | 27271483/312500 |
| `c * h * p * w` | 100 |
| `c * w * w` | 693/10 |
| `c * c * w * w` | -693/10 |
| `c * e * r * w` | -693/10 |
| `c * f * w * k` | -100 |
| `c * e * w * j` | 100 |
| `c * h * u * w` | 100 |
| `c * u * w` | -100 |
| `c * q * r * w` | -100 |
| `c * p * w * k` | -100 |
| `c * p * w * w` | 100 |
| `c * v * r * w` | 307/10 |
| `c * u * w * k` | 100 |
| `c * u * w * w` | -307/10 |
| `c * c * w * k` | 100 |
| `c * e * r * k` | -100 |
| `c * h * u * k` | -100 |
| `c * f * h * k` | 100 |
| `e * f * w` | 72372547512243/625000000 |
| `b * e * f` | -592185079863/31250000 |
| `e * e * f * f` | 52700 |
| `a * e * f * f` | 100 |
| `a * h` | 11900 |
| `e * f * h` | -85319 |
| `c * e * f` | 2721170137/31250000 |
| `a * f * f * k` | -100 |
| `a * f * j` | 100 |
| `f * h * v` | 2594054151/125000000 |
| `b * h * v` | -1001248663/31250000 |
| `h * w` | -1485/2 |
| `c * h * w` | -102199/1000 |
| `e * h * r` | 508819/5 |
| `c * e * h` | -757182/5 |
| `f * h * k` | 111/5 |
| `f * h * h` | -185553/2 |
| `h * r * k` | -42 |
| `h * q * r` | -393300 |
| `h * p * k` | 100 |
| `h * w * j` | 142 |
| `h * q * j` | -100 |
| `h * v * r` | -5859965971/625000000 |
| `v * r * k` | -520133693/31250000 |
| `q * v * r` | 100 |
| `p * v * k` | -9283045119/48437500 |
| `v * w * j` | 520133693/31250000 |
| `p * v * w` | -70 |
| `e * q * u * r` | -100 |
| `e * p * u * w` | 100 |
| `e * q * u * j` | -200 |
| `c * e * w` | -2490233/312500 |
| `c * e * e * r` | 5615233/312500 |
| `r * w` | -80 |
| `e * r * r` | 90 |
| `a * r * r` | -50 |
| `q * w` | 130100 |
| `e * p * w` | -203200 |
| `a * q` | -587801198516681803/5601875000000 |
| `e * q * r` | 118700 |
| `e * e * p * r` | -45600 |
| `f * w * k` | -100 |
| `e * r * j` | -5577914020792627/69463250000000 |
| `e * f * r` | 609651278244051/15500000000 |
| `a * f * r` | 352233999/9687500 |
| `e * r * k` | 58 |
| `e * w * j` | -58 |
| `f * v * k` | 1860203144453/9687500000 |
| `e * f * v * j` | -200 |
| `e * u * j` | 48864086999652334998122479/217072656250000000000000 |
| `e * f * f * h` | 131800 |
| `f * h * j` | -1445148523/48437500 |
| `f * h * q * r` | -100 |
| `f * h * p * k` | 100 |
| `f * h * w * j` | -100 |
| `f * h * p * w` | 100 |
| `f * h * q * j` | -100 |
| `f * h * u * k` | -100 |
| `f * h * u * w` | 200 |
| `f * h * v * j` | 200 |
| `f * h * r` | 164465405341/3875000000 |
| `f * f * w * k` | 100 |
| `e * f * f * w` | -178900 |
| `f * w * j` | -100 |
| `e * f * w * j` | 100 |
| `f * r * k` | -100 |
| `r * j` | 100 |
| `h * p * r` | 17861023209/625000000 |
| `a * a * r` | -351889/10 |
| `h * p * j` | 1445148523/48437500 |
| `c * e * h * p` | 100 |
| `b * h * h * p` | -120000 |
| `h * p * u * w` | -200 |
| `h * p * w * j` | -100 |
| `e * h * p` | -432/5 |
| `f * h * p` | -14636875171/96875000 |
| `h * p * u` | 200 |
| `h * p * v * j` | -100 |
| `h * u * j` | -100 |
| `h * u * w * j` | 100 |
| `h * u * r` | -200 |
| `h * q * r * r` | -100 |
| `h * p * r * w` | 100 |
| `h * q * r * j` | 100 |
| `e * f * h * r` | 100 |
| `c * h * v * r` | -200 |
| `c * h * h * r` | 133300 |
| `h * h * r` | -922787/10 |
| `c * c * e * e` | -5615233/312500 |
| `b * b * e * e` | 45600 |
| `b * b * e` | -65200 |
| `b * e * p * v` | 100 |
| `c * e * p` | 100 |
| `b * e * p` | -205/2 |
| `c * c * e * h` | 125900 |
| `c * e * u * w` | -27271483/312500 |
| `c * e * q` | 147182/5 |
| `c * e * k` | -1194843123/48437500 |
| `b * e * k` | -2287813127/48437500 |
| `c * e * e` | -132/5 |
| `b * e * e` | -38421826151406433/1120375000000 |
| `c * f * h * h` | 78100 |
| `c * q * k` | 100 |
| `c * e * q * j` | -100 |
| `b * q * k` | 848883587/12109375 |
| `c * f * w` | 39300 |
| `b * c * w` | 28800 |
| `b * b * w` | 17200 |
| `f * q * v` | -2594054151/125000000 |
| `e * f * p * v` | -100 |
| `q * r * k` | -200 |
| `b * q * r * k` | 100 |
| `b * q * w * j` | -100 |
| `e * p * w * j` | -200 |
| `f * q * k` | -7834829467/48437500 |
| `e * f * p * k` | 100 |
| `e * p * j` | -48864086999652334998122479/217072656250000000000000 |
| `f * q * w` | 164690 |
| `e * p * r` | 19412154293152417923/448150000000000 |
| `e * f * p * w` | 100 |
| `f * v * v` | -100 |
| `u * v` | 100 |
| `e * f * u * v` | 100 |
| `e * u * u` | -100 |
| `f * v * w` | -25669947301/625000000 |
| `f * h * w` | 48203/10 |
| `b * u * w` | -100 |
| `e * f * v * r` | 100 |
| `e * u * r` | 25985830458401217/448150000000000 |
| `f * h * q` | 353/2 |
| `b * v * r` | 5411636971/50000000 |
| `b * u * k` | -55 |
| `b * e * h` | 105178 |
| `f * f * h * w` | -7600 |
| `b * r` | -53837/2 |
| `b * f * k` | 215566953/6250000 |
| `b * j` | -215566953/6250000 |
| `f * h * q * u` | -200 |
| `b * p * v` | -201839037/4000000 |
| `f * f * h` | -4683429851477/48437500 |
| `b * f * h` | -10294/625 |
| `b * b * h` | -8927206/625 |
| `b * f` | 2300 |
| `b * b` | 16400 |
| `f * q * u` | -15458843425207755220627521/217072656250000000000000 |
| `f * p * v` | 15458843425207755220627521/217072656250000000000000 |
| `b * p` | -57700 |
| `b * f * v` | -52206/625 |
| `b * b * v` | -10294/625 |
| `b * u` | 100 |
| `f * f * h * q` | 100 |
| `f * u * v * k` | -100 |
| `f * v * v * j` | 100 |
| `u * u * k` | 100 |
| `u * v * j` | -100 |
| `f * p * v * k` | -100 |
| `f * p * v * w` | 100 |
| `f * q * v * j` | -100 |
| `b * v * r * k` | -100 |
| `b * p * v * k` | 100 |
| `b * v * w * j` | 100 |
| `b * p * v * w` | -100 |
| `q * u * r` | 29042477302444823/448150000000000 |
| `p * u * k` | -100 |
| `q * u * j` | -30380266587919095498122479/217072656250000000000000 |
| `b * p * w` | 100 |
| `e * f * v` | 30264483097/775000000 |
| `b * e * v` | -99/5 |
| `e * f * u * w` | -100 |
| `f * q * u * w` | -100 |
| `f * u * w` | 3468091833/48437500 |
| `p * v * r` | -29042477302444823/448150000000000 |
| `p * r` | -780501394429/125000000 |
| `f * v * r` | -992771999571/15500000000 |
| `f * q * r` | 126772990573939/3875000000 |
| `b * h * k` | -833/10 |
| `f * q * u * k` | 200 |
| `b * h * p * k` | -100 |
| `b * q * u * k` | -100 |
| `p * v * j` | 52087532212919095498122479/217072656250000000000000 |
| `c * h * p * k` | -100 |
| `b * e * h * j` | 100 |
| `c * h * p` | 209400 |
| `h * p * v` | 3228667119/156250000 |
| `h * h * p` | 717386/5 |
| `b * h * h` | 12978 |
| `h * q * u * j` | 100 |
| `b * f * v * k` | 100 |
| `h * q * u * r` | 200 |
| `h * r * j` | 2355180421/24218750 |
| `e * h * r * j` | -100 |
| `h * v * r * j` | -100 |
| `p * v * v` | 100 |
| `e * p * u * v` | -100 |
| `q * u * v` | -100 |
| `e * q * u * u` | 100 |
| `e * p * v * j` | 200 |
| `q * u * k` | 9283045119/48437500 |
| `q * u * w` | -30 |
| `e * p * v` | -69848439753/7750000000 |
| `e * q * u` | 842208663509/38750000000 |
| `f * p * w * k` | -200 |
| `p * w * k` | 200 |
| `p * w * j` | 4436841833/48437500 |
| `f * q * r * k` | 100 |
| `e * f * q * r` | -237800 |
| `q * r * j` | -4770834979/24218750 |
| `e * q * r * j` | 200 |
| `e * p * k` | 18732168939/1250000000 |
| `e * q * j` | -18732168939/1250000000 |
| `p * u * v * k` | 100 |
| `q * u * u * k` | -100 |
| `p * v * v * j` | -100 |
| `q * u * v * j` | 100 |
| `c * f * k` | -128183047/6250000 |
| `c * c` | 13300 |
| `c * c * h` | -17400 |
| `e * f * q` | 7447665298217/48437500 |
| `c * h * j` | -100 |
| `h * q` | 1274318/5 |
| `q * v` | -1987768003/156250000 |
| `e * q` | -86041236813906433/1120375000000 |
| `c * q * v` | 1987768003/156250000 |
| `e * e * p` | 33047499313906433/1120375000000 |
| `c * e * v` | -4795384503/156250000 |
| `v * w` | 70837959/25000000 |
| `e * u * w` | 5615233/312500 |
| `e * v * r` | -70837959/25000000 |
| `e * e * u * r` | -5615233/312500 |
| `c * e * e * u` | 5615233/312500 |
| `u * w * w` | -693/10 |
| `v * r * w` | 693/10 |
| `e * u * r * w` | 693/10 |
| `e * v * r * r` | -693/10 |
| `c * e * h * j` | 100 |
| `e * w` | 1129717077487757/625000000 |
| `e * e * r` | 3032922512243/625000000 |
| `f * q * w * j` | 100 |
| `p * r * k` | 10539/100 |
| `f * h * u` | 165127/5000 |
| `c * h * r` | -898897/5 |
| `c * r` | 175878761/3125 |
| `c * h * k` | -969/10 |
| `f * p * k` | 74335381357/1562500000 |
| `p * j` | -18463619/1937500 |
| `f * q * j` | -1842806347067/48437500000 |
| `c * p` | -73100 |
| `c * h * h` | -95200 |
| `h * v * r * r` | 100 |
| `h * u * r * w` | -100 |
| `c * h * v * j` | 100 |
| `c * h * h * p` | -151100 |
| `e * f * q * j` | 100 |
| `c * f * v` | -73619037/4000000 |
| `b * c * v` | 73619037/4000000 |
| `b * r * k` | -100 |
| `b * c * k` | 128183047/6250000 |
| `e * f * q * u` | 100 |
| `f * f * w` | 29800 |
| `e * f * f` | -232814920137/31250000 |
| `f * r` | -5400 |
| `e * e * f` | -24323922512243/625000000 |
| `f * u * k` | 11602118643/1562500000 |
| `u * j` | -245889512/12109375 |
| `e * f * p` | 1318733648158492091872479/217072656250000000000000 |
| `e * f * u` | -9350421929408492091872479/217072656250000000000000 |
| `f * f * k` | -215566953/6250000 |
| `f * j` | 215566953/6250000 |
| `h * r * r` | -40 |
| `e * h` | 16300 |
| `f * f * q` | -18463619/1937500 |
| `f * p` | 18463619/1937500 |
| `f * v * j` | 623892370067/48437500000 |
| `f * f * v` | -3702012/12109375 |
| `f * u` | 3702012/12109375 |
| `f * f * h * h` | 59700 |
| `f * p * w` | -3468091833/48437500 |
| `u * r` | -3774754419/500000000 |
| `e * u * k` | -29107168939/1250000000 |
| `e * f * k` | 111/5 |
| `e * v * j` | 29107168939/1250000000 |
| `u * w * j` | 406908167/48437500 |
| `u * r * w` | 10 |
| `p * r * w` | -10 |
| `v * r * j` | -72915021/24218750 |
| `v * r * r` | -10 |
| `q * r * r` | 10 |
| `u * r * k` | -539/100 |
| `p * j * k` | -41804131357/1562500000 |
| `q * j * j` | 41804131357/1562500000 |
| `u * j * k` | 41804131357/1562500000 |
| `v * j * j` | -41804131357/1562500000 |
| `b * v * j` | -45 |
| `e * e` | 8700 |
| `a * e` | -43889/10 |
| `f * f` | 25900 |
| `h * h` | 68000 |
| `c * f` | 247116122549/15625000 |
| `b * c` | -247116122549/15625000 |
| `a * a` | 350889/10 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `a * b` | -58893666398620483065958243/560187500000000000 | 922775739/7812500000 | 0 |
| `a` | 8882862528106084123076169649/347316250000000000000000000 | 41817/125000 | 371454662337812119774676186212233/43414531250000000000000000000000 |
| `b` | 11380444249266204680769093477/694632500000000000000000000 | 22067/62500 | 251132263248557338690531585756959/43414531250000000000000000000000 |
| `1` | -3248621860338286215932796608648627829692943144911/108536328125000000000000000000000000000000 | 1 | -3248621860338286215932796608648627829692943144911/108536328125000000000000000000000000000000 |
| `a * b * c` | 1037931/10000 | 5668611364677/156250000000000 | 5883627462350563287/1562500000000000000 |
| `a * c` | -253974600398979/5601875000000 | 256881831/2500000000 | 0 |
| `b * c` | 25157487487630217/500000000000000 | 135557581/1250000000 | 3410288147860919639025077/625000000000000000000000 |
| `c` | -2227320282314569865343470591/135670410156250000000000000 | 6143/20000 | 0 |
| `a * c * c` | -173827/2500 | 1578025087833/50000000000000 | 0 |
| `c * c` | -717753383585369297/156250000000000000 | 37736449/400000000 | 0 |
| `a * a * c * c` | 30400 | 65988275097912561/6250000000000000000 | 1253777226860338659/3906250000000000 |
| `a * a * c` | 17434/625 | 10742027526927/312500000000000 | 93638253952222659/97656250000000000 |
| `a * a` | 10405647607/625000000 | 1748661489/15625000000 | 18195955238465906823/9765625000000000000 |
| `a * f` | 227723690069755999/9687500000000000 | 922775739/7812500000 | 210137896391926053526908261/75683593750000000000000000 |
| `f` | 767011373153438229473337430050058237/217072656250000000000000000000000000 | 22067/62500 | 16925639971376921409788137068914635115879/13567041015625000000000000000000000000000 |
| `c * h` | -38584356459/1250000000 | 37736449/400000000 | 0 |
| `h` | -94239931796613274616434537/8682906250000000000000000 | 6143/20000 | 0 |
| `a * b * c * k` | -100 | 24583189012752152407257/1400468750000000000000000 | 0 |
| `a * b * k` | -28461/5000 | 4001821424833493799/70023437500000000000 | 0 |
| `a * c * k` | 22067/625 | 1114024969989221571/22407500000000000000 | 24583189012752152407257/14004687500000000000000 |
| `a * k` | -41206647313/1250000000 | 181348684679997/1120375000000000 | 0 |
| `b * c * k` | 354146797/6250000 | 587875481568552321/11203750000000000000 | 208194218832335340409065837/70023437500000000000000000 |
| `b * k` | -75294127126283003/9687500000000000 | 95698434245247/560187500000000 | 0 |
| `c * k` | -965205738845697/48437500000000 | 26640480426363/179260000000000 | 0 |
| `k` | -169492006654264699926972971/8682906250000000000000000 | 4336721541/8963000000 | 0 |
| `a * b * e * f` | 107700 | 851515064486996121/61035156250000000000 | 917081724452494822317/610351562500000000 |
| `a * b * e` | 1226217753255697/5601875000000 | 38587713077763/976562500000000 | 47316938833490022597383765811/5470581054687500000000000000 |
| `a * b * f` | 107191/5000 | 20362892232513/488281250000000 | 2182718781295300983/2441406250000000000 |
| `a * e * f` | -105708237757/625000000 | 38587713077763/976562500000000 | 0 |
| `a * e` | -21083838230507468801/1120375000000000000 | 1748661489/15625000000 | 0 |
| `b * e * f` | -1640079863/31250000 | 20362892232513/488281250000000 | 0 |
| `b * e` | 1221587041945841149023/17365812500000000000 | 922775739/7812500000 | 1127250885384397564266307952997/135670410156250000000000000000 |
| `b * f` | -562616150414581/15625000000000 | 486952489/3906250000 | 0 |
| `e * f` | -1137518843897910623/19375000000000000 | 922775739/7812500000 | 0 |
| `e` | -357061051918760146292829541893/43414531250000000000000000000 | 41817/125000 | 0 |
| `a * c * e * f` | 100 | 237044321436698109/19531250000000000000 | 237044321436698109/195312500000000000 |
| `a * c * e` | -216039/1250 | 10742027526927/312500000000000 | 0 |
| `a * c * f` | -25127/2500 | 5668611364677/156250000000000 | 0 |
| `c * e * f` | 131570137/31250000 | 5668611364677/156250000000000 | 745819973850309850749/4882812500000000000000 |
| `c * e` | 2089044451708279393864227/43414531250000000000000 | 256881831/2500000000 | 536637563795213888555412797159637/108536328125000000000000000000000 |
| `c * f` | -12907489375130217/500000000000000 | 135557581/1250000000 | 0 |
| `a * b * h` | 111673/625 | 5668611364677/156250000000000 | 633030836927574621/97656250000000000 |
| `a * h` | -258694328987/5000000000 | 256881831/2500000000 | 0 |
| `b * h` | 37520763233608774991/280093750000000000 | 135557581/1250000000 | 5086223901221743438153256771/350117187500000000000000000 |
| `a * c * h` | -1892179/10000 | 1578025087833/50000000000000 | 0 |
| `a * c * e * j` | -100 | 4076696124716538843/312500000000000000000 | 0 |
| `a * c * j` | -9437/2500 | 97488966800979/2500000000000000 | 0 |
| `a * e * j` | 315307/5000 | 663632773028901/15625000000000000 | 209248058765423687607/78125000000000000000 |
| `a * j` | -6579014825990456598239/347316250000000000000 | 15869927853/125000000000 | 0 |
| `c * e * j` | 93959/1000 | 97488966800979/2500000000000000 | 9159965831653185861/2500000000000000000 |
| `c * j` | -36532540001/2500000000 | 2331323787/20000000000 | 0 |
| `e * j` | -17473254189940532422161/347316250000000000000 | 15869927853/125000000000 | 0 |
| `j` | -3197878620710278083267406713831308237/217072656250000000000000000000000000 | 379509/1000000 | 0 |
| `a * c * r` | -465049/5000 | 5668611364677/156250000000000 | 0 |
| `a * r` | -4714693002997449192231/173658125000000000000 | 922775739/7812500000 | 0 |
| `c * r` | -136026949746377836673557/2800937500000000000000 | 135557581/1250000000 | 0 |
| `r` | 28159494535959496265058771621243513739/347316250000000000000000000000 | 22067/62500 | 621395565925018204081051913365980617678513/21707265625000000000000000000000000 |
| `a * a * c * r` | 60100 | 237044321436698109/19531250000000000000 | 142463637183455563509/195312500000000000 |
| `a * a * r` | -286571/10000 | 38587713077763/976562500000000 | 0 |
| `f * w` | -66970378477152511/625000000000000 | 4966641757/31250000000 | 0 |
| `w` | 158793391754511498949223/3125000000000000000000 | 225071/500000 | 35739787475579657580000569833/1562500000000000000000000000 |
| `a * c * h * p` | 100 | 114768186613006257/10000000000000000000 | 114768186613006257/100000000000000000 |
| `a * c * p` | 83981/1000 | 18682758686799/500000000000000 | 1568996757276066819/500000000000000000 |
| `a * h * p` | -16506143/200 | 18682758686799/500000000000000 | 0 |
| `a * p` | -39888257247486557909/1120375000000000000 | 3041308593/25000000000 | 0 |
| `c * h * p` | 619693/10000 | 2744534199321/80000000000000 | 1700768631579828453/800000000000000000 |
| `c * p` | 482969296001/5000000000 | 446774247/4000000000 | 215778243544966886247/20000000000000000000 |
| `h * p` | -290746844937502693/4843750000000000 | 446774247/4000000000 | 0 |
| `p` | -13882214169479192147736360506771994261/108536328125000000000000000000000000 | 72729/200000 | 0 |
| `a * a * c * p` | -30400 | 781256920005873783/62500000000000000000 | 0 |
| `a * a * p` | -26883/625 | 127178401433481/3125000000000000 | 0 |
| `h * r` | 1546070898062511090123/21707265625000000000 | 135557581/1250000000 | 209581630995851590162746872463/27134082031250000000000000000 |
| `a * b * b` | -725477/5000 | 20362892232513/488281250000000 | 0 |
| `b * b` | -16806864797/5000000000 | 486952489/3906250000 | 0 |
| `a * b * b * e` | 100 | 851515064486996121/61035156250000000000 | 851515064486996121/610351562500000000 |
| `b * b * e` | -47511/5000 | 20362892232513/488281250000000 | 0 |
| `a * b * c * e` | 100 | 237044321436698109/19531250000000000000 | 237044321436698109/195312500000000000 |
| `b * c * e` | -1110895137/31250000 | 5668611364677/156250000000000 | 0 |
| `a * b * b * h` | 28100 | 125089246984327359/9765625000000000000 | 35150078402595987879/97656250000000000 |
| `b * b * h` | 33091/1250 | 2991349139927/78125000000000 | 98986734389324357/97656250000000000 |
| `f * h` | -219386620582407281/3875000000000000 | 135557581/1250000000 | 0 |
| `a * b * f * q` | 100 | 134252548488958209/7629394531250000000 | 134252548488958209/76293945312500000 |
| `a * b * q` | -194206729505697/5601875000000 | 6083860447227/122070312500000 | 0 |
| `a * f * q` | -184693/5000 | 6083860447227/122070312500000 | 0 |
| `a * q` | -499188570501523702623/11203750000000000000 | 275699481/1953125000 | 0 |
| `b * f * q` | 790217/10000 | 3210477759977/61035156250000 | 2536974104055745009/610351562500000000 |
| `b * q` | -9571000401452359091/77500000000000000 | 145487731/976562500 | 0 |
| `f * q` | 790239888890172902301890840589/7002343750000000000000000000 | 145487731/976562500 | 114970208380323363753586775406976313559/6838226318359375000000000000000000000 |
| `q` | -113919496364144874936533037115726177/108536328125000000000000000000000000 | 6593/15625 | 0 |
| `a * c * f * q` | -100 | 37373154727315461/2441406250000000000 | 0 |
| `a * c * q` | 931/250 | 1693621911783/39062500000000 | 1576761999869973/9765625000000000 |
| `c * f * q` | -178110163/4000000 | 893731131533/19531250000000 | 0 |
| `c * q` | 1066244433718711473/87529296875000000 | 40500799/312500000 | 43183751494910355906966927/27352905273437500000000000 |
| `a * b * c * q` | 100 | 37373154727315461/2441406250000000000 | 37373154727315461/24414062500000000 |
| `b * c * q` | -101804637/4000000 | 893731131533/19531250000000 | 0 |
| `a * b * b * w` | -14600 | 4583096517663933423/244140625000000000000 | 0 |
| `a * b * w` | -1224387/10000 | 207690058352469/3906250000000000 | 0 |
| `a * w` | -168543914371793/9765625000000 | 9411794007/62500000000 | 0 |
| `b * b * w` | -30577/1000 | 109598883651719/1953125000000000 | 0 |
| `b * w` | 10567024037366289/125000000000000 | 4966641757/31250000000 | 52482622831206139251529773/3906250000000000000000000 |
| `a * b * c * w` | -209300 | 1275840028459217067/78125000000000000000 | 0 |
| `a * c * w` | 1907367/10000 | 57816650585001/1250000000000000 | 110277571376361602367/12500000000000000000 |
| `b * c * w` | 158019/5000 | 30510080313251/625000000000000 | 4821172381019609769/3125000000000000000 |
| `c * w` | -2938688136922391413/78125000000000000 | 1382611153/10000000000 | 0 |
| `a * c * u * w` | -100 | 25115148297570339393/1250000000000000000000 | 0 |
| `a * c * u` | 225071/5000 | 111587669213583/2500000000000000 | 25115148297570339393/12500000000000000000 |
| `a * u * w` | -13857/200 | 4088417434082751/62500000000000000 | 0 |
| `a * u` | 21101715357339921/1250000000000000 | 18165012081/125000000000 | 383312914395902896988585601/156250000000000000000000000 |
| `c * u * w` | -633091641507/19531250000 | 600596606585129/10000000000000000 | 0 |
| `c * u` | -1884518033067416141/39062500000000000 | 2668476199/20000000000 | 0 |
| `u * w` | 75060809890013031/12109375000000000 | 97769266903/500000000000 | 7338640356092026101987012993/6054687500000000000000000000 |
| `u` | 1272805025237503566755234979182920497/10853632812500000000000000000000000 | 434393/1000000 | 552897593327994886873506788312206383453321/10853632812500000000000000000000000000000 |
| `a * c * v * r` | 100 | 2393792224578085653/156250000000000000000 | 2393792224578085653/1562500000000000000 |
| `a * c * v` | 165433/1250 | 108478371531159/2500000000000000 | 17945902437514226847/3125000000000000000 |
| `a * v * r` | 13857/200 | 389678044046571/7812500000000000 | 5399768656353334347/1562500000000000000 |
| `a * v` | 83913635062214789/1250000000000000 | 17658859113/125000000000 | 1481819059223347948696022157/156250000000000000000000000 |
| `c * v * r` | -261857466329402481/2800937500000000 | 57244475322909/1250000000000000 | 0 |
| `c * v` | 25396594522689910225429/350117187500000000000 | 2594121327/20000000000 | 65881847484481281523500746624283/7002343750000000000000000000000 |
| `v * r` | -1348099735958889886757389/13892650000000000000000 | 9318651363/62500000000 | 0 |
| `v` | 6818334187906507105770462382365726177/108536328125000000000000000000000000 | 422289/1000000 | 2879307525876850979188702788986840141559153/108536328125000000000000000000000000000000 |
| `a * b * p * w` | 100 | 15105090253916717901/781250000000000000000 | 15105090253916717901/7812500000000000000 |
| `a * b * p` | 274929/5000 | 67112556721731/1562500000000000 | 18451188106948782099/7812500000000000000 |
| `a * p * w` | -84567/1250 | 684510366335103/12500000000000000 | 0 |
| `b * p * w` | 652753/10000 | 361218888344853/6250000000000000 | 235786713023767830309/62500000000000000000 |
| `b * p` | -420795818742907/4000000000000 | 1604910843/12500000000 | 0 |
| `p * w` | -4057112526343527/48437500000000 | 16369188759/100000000000 | 0 |
| `a * b * q * r` | -152100 | 134252548488958209/7629394531250000000 | 0 |
| `a * b * r` | -30206447931/11203750000 | 20362892232513/488281250000000 | 0 |
| `a * q * r` | -32593/1250 | 6083860447227/122070312500000 | 0 |
| `b * q * r` | 12601/1250 | 3210477759977/61035156250000 | 40455230253470177/76293945312500000 |
| `b * r` | -11855178124056931457/448150000000000000 | 486952489/3906250000 | 0 |
| `q * r` | 727843876182247966181373/13892650000000000000000 | 145487731/976562500 | 105892354068000199079092692234663/13567041015625000000000000000000 |
| `a * c * q * r` | -192000 | 37373154727315461/2441406250000000000 | 0 |
| `c * q * r` | -674396792504817/22407500000000 | 893731131533/19531250000000 | 0 |
| `a * c * c * q` | 27000 | 10403919404082969/781250000000000000 | 280905823910240163/781250000000000 |
| `c * c * q` | 9314/625 | 248796408257/6250000000000 | 1158644873252849/1953125000000000 |
| `p * k` | 956897866059114181/6054687500000000 | 315405420955389/1792600000000000 | 301810774255688348442612058271409/10853632812500000000000000000000 |
| `q * j` | -8776218389409147243757584808259/217072656250000000000000000000 | 2502102837/15625000000 | 0 |
| `a * b * r * k` | 100 | 88308193381800707662533/4376464843750000000000000 | 88308193381800707662533/43764648437500000000000 |
| `a * r * k` | -184693/5000 | 4001821424833493799/70023437500000000000 | 0 |
| `b * r * k` | -1181593/10000 | 2111777348489865549/35011718750000000000 | 0 |
| `r * k` | 12561697735047548751/280093750000000000 | 95698434245247/560187500000000 | 1202134804706116015436562122536497/156905017578125000000000000000000 |
| `a * b * w * j` | -100 | 78820246355287157721/3906250000000000000000 | 0 |
| `a * b * j` | -274929/5000 | 350201697932151/7812500000000000 | 0 |
| `a * w * j` | 15559/2500 | 3571860531802563/62500000000000000 | 55574578014316077717/156250000000000000000 |
| `b * w * j` | 319057/10000 | 1884885246557313/31250000000000000 | 601385832110836613841/312500000000000000000 |
| `b * j` | 418974237/100000000 | 8374625103/62500000000 | 3508752162690471411/6250000000000000000 |
| `w * j` | 3009520759486473/31250000000000 | 85416470139/500000000000 | 257062640085376921978929747/15625000000000000000000000 |
| `a * c * r * k` | -100 | 24583189012752152407257/1400468750000000000000000 | 0 |
| `c * r * k` | 72947/1250 | 587875481568552321/11203750000000000000 | 42883752753981186159987/14004687500000000000000 |
| `a * c * w * j` | 200 | 21941939246863144509/1250000000000000000000 | 21941939246863144509/6250000000000000000 |
| `c * w * j` | 234831/10000 | 524713376063877/10000000000000000 | 123218966814456299787/100000000000000000000 |
| `a * c * e * p` | -200 | 781256920005873783/62500000000000000000 | 0 |
| `a * e * p` | 106955672369303/5601875000000 | 127178401433481/3125000000000000 | 13602451436171088838820833743/17505859375000000000000000000 |
| `c * e * p` | 933211/10000 | 18682758686799/500000000000000 | 17434955916866381589/5000000000000000000 |
| `e * p` | 2621823401010574305564494119163/108536328125000000000000000000 | 3041308593/25000000000 | 7973774038821944519378303680308397867659/2713408203125000000000000000000000000000 |
| `a * b * v` | -101/5 | 389678044046571/7812500000000000 | 0 |
| `b * v` | 1775628862923931479/77500000000000000 | 9318651363/62500000000 | 16546466323668234242101955877/4843750000000000000000000000 |
| `a * b * e * u` | -100 | 16762232446988702859/976562500000000000000 | 0 |
| `a * b * u` | 2819/1000 | 400847321591427/7812500000000000 | 1129988599566232713/7812500000000000000 |
| `a * e * u` | -215643/10000 | 759606310191177/15625000000000000 | 0 |
| `b * e * u` | 78596/625 | 400847321591427/7812500000000000 | 7876249021949949123/1220703125000000000 |
| `b * u` | 26980884405199/2000000000000 | 9585750331/62500000000 | 258632021617809052370869/125000000000000000000000 |
| `e * u` | -8485885439419887987629576619163/108536328125000000000000000000 | 18165012081/125000000000 | 0 |
| `h * u` | -7341484793/156250000 | 2668476199/20000000000 | 0 |
| `a * b * e * r` | 100 | 851515064486996121/61035156250000000000 | 851515064486996121/610351562500000000 |
| `a * e * r` | 81478862757/625000000 | 38587713077763/976562500000000 | 3144082977969545545572591/610351562500000000000000 |
| `b * e * r` | 8523/12500 | 20362892232513/488281250000000 | 173552930497708299/6103515625000000000 |
| `e * r` | 1618816096215963405854313/86829062500000000000000 | 922775739/7812500000 | 1493804219490780735434170604912307/678352050781250000000000000000000 |
| `a * c * e * r` | -100 | 237044321436698109/19531250000000000000 | 0 |
| `c * e * r` | 21272277450561/312500000000 | 5668611364677/156250000000000 | 120584273708812364609233797/48828125000000000000000000 |
| `h * j` | 7044554724389223/193750000000000 | 2331323787/20000000000 | 16423137997791824626347501/3875000000000000000000000 |
| `a * b * q * u` | 100 | 2642786391252278211/122070312500000000000 | 2642786391252278211/1220703125000000000 |
| `a * q * u` | -13924168939/1250000000 | 119761924650033/1953125000000000 | 0 |
| `b * q * u` | 214727437/4000000 | 63198851932283/976562500000000 | 13570527496761626148671/3906250000000000000000 |
| `q * u` | -1445601705487050067868880880837/108536328125000000000000000000 | 2863953049/15625000000 | 0 |
| `a * c * f * v` | -100 | 2393792224578085653/156250000000000000000 | 0 |
| `a * f * v` | -13857/200 | 389678044046571/7812500000000000 | 0 |
| `c * f * v` | 201309763/4000000 | 57244475322909/1250000000000000 | 11523871760314159260567/5000000000000000000000 |
| `f * v` | -27179085948728398174414866058259/217072656250000000000000000000 | 9318651363/62500000000 | 0 |
| `p * v` | 13681131393762914976496380880837/108536328125000000000000000000 | 30712656681/200000000000 | 420183891504291432382926530232159152921997/21707265625000000000000000000000000000000 |
| `a * c * f * k` | 100 | 24583189012752152407257/1400468750000000000000000 | 24583189012752152407257/14004687500000000000000 |
| `a * f * k` | 522961/5000 | 4001821424833493799/70023437500000000000 | 2092796534152348750618839/350117187500000000000000 |
| `c * f * k` | -56431797/6250000 | 587875481568552321/11203750000000000000 | 0 |
| `f * k` | 533509716330816883/9687500000000000 | 95698434245247/560187500000000 | 51056044507485059044845070105101/5426816406250000000000000000000 |
| `b * b * e * q` | -100 | 134252548488958209/7629394531250000000 | 0 |
| `b * b * q` | -181994451/2000 | 3210477759977/61035156250000 | 0 |
| `b * e * q` | 18705611481433/1120375000000 | 6083860447227/122070312500000 | 113802329833085477386836291/136764526367187500000000000 |
| `e * q` | -9697255804729266561863/347316250000000000000 | 275699481/1953125000 | 0 |
| `b * e * h * p` | -100 | 412272435941593533/31250000000000000000 | 0 |
| `b * e * h` | 120677/2000 | 5668611364677/156250000000000 | 684071013655126329/312500000000000000 |
| `b * e * p` | -1233139/10000 | 67112556721731/1562500000000000 | 0 |
| `b * h * p` | -123149/2500 | 9858967308549/250000000000000 | 0 |
| `e * h * p` | -247307/5000 | 18682758686799/500000000000000 | 0 |
| `e * h` | -26834553831/1000000000 | 256881831/2500000000 | 0 |
| `b * b * e * h` | 76000 | 125089246984327359/9765625000000000000 | 2376695692702219821/2441406250000000 |
| `b * e * w` | -2789001609/500 | 207690058352469/3906250000000000 | 0 |
| `e * w` | 551443582789065519/6250000000000000 | 9411794007/62500000000 | 5190073407692735196854544633/390625000000000000000000000 |
| `b * c * e * w` | -100 | 1275840028459217067/78125000000000000000 | 0 |
| `c * e * w` | 14153825424557/312500000000 | 57816650585001/1250000000000000 | 818326779012715501241269557/390625000000000000000000000 |
| `b * e * f * k` | -100 | 88308193381800707662533/4376464843750000000000000 | 0 |
| `b * e * k` | -997199379/96875000 | 4001821424833493799/70023437500000000000 | 0 |
| `b * f * k` | 42903291/781250 | 2111777348489865549/35011718750000000000 | 90602198109469112199621759/27352905273437500000000000 |
| `e * f * k` | 6357/10000 | 4001821424833493799/70023437500000000000 | 25439578797666520080243/700234375000000000000000 |
| `e * k` | -434669474456239/24218750000000 | 181348684679997/1120375000000000 | 0 |
| `b * c * e * k` | 100 | 24583189012752152407257/1400468750000000000000000 | 24583189012752152407257/14004687500000000000000 |
| `c * e * k` | -2761621873/48437500 | 1114024969989221571/22407500000000000000 | 0 |
| `b * c * e * v` | -100 | 2393792224578085653/156250000000000000000 | 0 |
| `b * c * v` | 18633437/4000000 | 57244475322909/1250000000000000 | 1066661324527479508233/5000000000000000000000 |
| `b * e * v` | -1106493/10000 | 389678044046571/7812500000000000 | 0 |
| `c * e * v` | 5598520008219/78125000000 | 108478371531159/2500000000000000 | 607318333476208020294595821/195312500000000000000000000 |
| `e * v` | 643540976131054667/193750000000000000 | 17658859113/125000000000 | 11364199430940790188654130371/24218750000000000000000000000 |
| `b * e * e * f` | 14900 | 851515064486996121/61035156250000000000 | 126875744608562422029/610351562500000000 |
| `b * e * e` | 28917720493567/1120375000000 | 38587713077763/976562500000000 | 1115868701268710441012250621/1094116210937500000000000000 |
| `e * e * f` | -3473012243/625000000 | 38587713077763/976562500000000 | 0 |
| `e * e` | -24119857970444083336101/1400468750000000000000 | 1748661489/15625000000 | 0 |
| `b * e * f * v` | -100 | 8599025397975682257/488281250000000000000 | 0 |
| `b * f * v` | -726021/10000 | 205634679627321/3906250000000000 | 0 |
| `e * f * v` | 83260843097/775000000 | 389678044046571/7812500000000000 | 32444922483707402991870387/6054687500000000000000000 |
| `b * e * f * h` | 100 | 125089246984327359/9765625000000000000 | 125089246984327359/97656250000000000 |
| `b * f * h` | -439633/10000 | 2991349139927/78125000000000 | 0 |
| `e * f * h` | -238551/2500 | 5668611364677/156250000000000 | 0 |
| `a * f * h` | 100 | 5668611364677/156250000000000 | 5668611364677/1562500000000 |
| `a * u * k` | 29107168939/1250000000 | 78776599184197936821/1120375000000000000000 | 2292963780894338926264095602919/1400468750000000000000000000000 |
| `u * k` | -1532592401828689737/12109375000000000 | 1883841480359613/8963000000000000 | 0 |
| `a * v * j` | -29107168939/1250000000 | 6701695963115517/125000000000000000 | 0 |
| `v * j` | -12083883818356022024317415191741/217072656250000000000000000000 | 160262476101/1000000000000 | 0 |
| `b * e * q * r` | -31800 | 134252548488958209/7629394531250000000 | 0 |
| `e * q * r` | 24473/400 | 6083860447227/122070312500000 | 148890316724986371/48828125000000000 |
| `b * e * w * j` | 100 | 78820246355287157721/3906250000000000000000 | 78820246355287157721/39062500000000000000 |
| `b * e * j` | 538527/5000 | 350201697932151/7812500000000000 | 188593069782307481577/39062500000000000000 |
| `e * w * j` | 68017/1250 | 3571860531802563/62500000000000000 | 242947237791614927571/78125000000000000000 |
| `b * e * q * j` | -100 | 2308879794466671543/122070312500000000000 | 0 |
| `b * q * j` | -343661/5000 | 55213903304079/976562500000000 | 0 |
| `e * q * j` | 29438331061/1250000000 | 104630434334829/1953125000000000 | 3080145365004917424823569/2441406250000000000000000 |
| `a * p * k` | -27732168939/1250000000 | 13189308488091501813/224075000000000000000 | 0 |
| `a * q * j` | 27732168939/1250000000 | 104630434334829/1953125000000000 | 2901628881134423919676431/2441406250000000000000000 |
| `b * e * h * r` | -238600 | 125089246984327359/9765625000000000000 | 0 |
| `b * h * r` | -22410298743/1400468750 | 2991349139927/78125000000000 | 0 |
| `e * h * r` | -14903/500 | 5668611364677/156250000000000 | 0 |
| `a * f * w` | 15139987757/625000000 | 207690058352469/3906250000000000 | 3144424940706996250722033/2441406250000000000000000 |
| `a * h * r` | -100 | 5668611364677/156250000000000 | 0 |
| `b * h * w` | 3699/1000 | 30510080313251/625000000000000 | 112856787078715449/625000000000000000 |
| `h * w` | -21621695783/5000000000 | 1382611153/10000000000 | 0 |
| `b * h * p * v` | 100 | 4163333445759848661/250000000000000000000 | 4163333445759848661/2500000000000000000 |
| `b * h * v` | -566600447/7812500 | 57244475322909/1250000000000000 | 0 |
| `b * p * v` | 75300563/4000000 | 677736194979627/12500000000000000 | 51033917047443686630001/50000000000000000000000 |
| `h * p * v` | 272323369/156250000 | 188667849991383/4000000000000000 | 51378664531640039529327/625000000000000000000000 |
| `h * v` | -5997604470534653/156250000000000 | 2594121327/20000000000 | 0 |
| `b * h * q * u` | -100 | 388230547420014469/19531250000000000000 | 0 |
| `b * h * q` | -100821/10000 | 893731131533/19531250000000 | 0 |
| `b * h * u` | -335561/5000 | 58885264283333/1250000000000000 | 0 |
| `h * q * u` | 418067/5000 | 17593263580007/312500000000000 | 7355162925102786469/1562500000000000000 |
| `h * q` | -399288874043/5000000000 | 40500799/312500000 | 0 |
| `b * f * h * k` | -100 | 12972648251773244067507/700234375000000000000000 | 0 |
| `b * h * k` | -355793/10000 | 587875481568552321/11203750000000000000 | 0 |
| `f * h * k` | 295693/5000 | 587875481568552321/11203750000000000000 | 173830664771449941453453/56018750000000000000000 |
| `h * k` | -88902272863/2500000000 | 26640480426363/179260000000000 | 0 |
| `b * h * j` | 652753/10000 | 51445322007729/1250000000000000 | 33581088276511127937/12500000000000000000 |
| `b * h * u * k` | 200 | 255368994065008148376153/11203750000000000000000000 | 255368994065008148376153/56018750000000000000000 |
| `b * u * k` | 335023/5000 | 41570729947095580071/560187500000000000000 | 13927150659065802522126633/2800937500000000000000000 |
| `h * u * k` | -184693/5000 | 11572438213849102659/179260000000000000000 | 0 |
| `b * h * v * j` | -100 | 21724793585321871681/1250000000000000000000 | 0 |
| `b * v * j` | -37062/625 | 3536512060120767/62500000000000000 | 0 |
| `h * v * j` | 52313/2000 | 984492390688443/20000000000000000 | 51501750434084518659/40000000000000000000 |
| `a * a * p * r` | -60100 | 2806445784432625227/195312500000000000000 | 0 |
| `a * p * r` | 1548/125 | 67112556721731/1562500000000000 | 25972559451309897/48828125000000000 |
| `p * r` | 22656136573499260042119/448150000000000000000 | 1604910843/12500000000 | 36361079247297828894073419796317/5601875000000000000000000000000 |
| `b * e * f * q` | 100 | 134252548488958209/7629394531250000000 | 134252548488958209/76293945312500000 |
| `e * f * q` | 2551380993/193750000 | 6083860447227/122070312500000 | 15522245909119447356411/23651123046875000000000 |
| `b * q * v` | 24034439231/625000000 | 61437868436259/976562500000000 | 1476624715413439932476829/610351562500000000000000 |
| `q * v` | 1336372494800629/39062500000000 | 2784151377/15625000000 | 3720663321584096570816133/610351562500000000000000 |
| `b * b * q * v` | 100 | 1355749442782927353/61035156250000000000 | 1355749442782927353/610351562500000000 |
| `b * b * v` | 19/200 | 205634679627321/3906250000000000 | 3907058912919099/781250000000000000 |
| `a * p * v` | -70642831061/1250000000 | 1284311164429377/25000000000000000 | 0 |
| `a * e * p * u` | 100 | 55245407333894112033/3125000000000000000000 | 55245407333894112033/31250000000000000000 |
| `a * p * u` | 17183/1250 | 1321123163639049/25000000000000000 | 22700859320809778967/31250000000000000000 |
| `e * p * u` | 202611/10000 | 1321123163639049/25000000000000000 | 267674085308071356939/250000000000000000000 |
| `p * u` | 439111911327/10000000000 | 31592968497/200000000000 | 13872848781211368465519/2000000000000000000000 |
| `b * b * q * w` | -91900 | 722585439915783367/30517578125000000000 | 0 |
| `b * q * w` | -1491236663/2500 | 32745069103901/488281250000000 | 0 |
| `q * w` | -335925524909/5000000000 | 1483893103/7812500000 | 0 |
| `b * q * v * r` | 100 | 1355749442782927353/61035156250000000000 | 1355749442782927353/610351562500000000 |
| `b * v * r` | 4177941971/50000000 | 205634679627321/3906250000000000 | 859129758708123044189691/195312500000000000000000 |
| `q * v * r` | 165433/1250 | 61437868436259/976562500000000 | 10163850889015635147/1220703125000000000 |
| `b * f * q * v` | -100 | 1355749442782927353/61035156250000000000 | 0 |
| `f * q * v` | -13045729151/125000000 | 61437868436259/976562500000000 | 0 |
| `b * c * q * w` | 100 | 201152959505263843/9765625000000000000 | 201152959505263843/97656250000000000 |
| `c * q * w` | -703871/10000 | 9115555331729/156250000000000 | 0 |
| `a * e * p * r` | -223800 | 2806445784432625227/195312500000000000000 | 0 |
| `e * p * r` | 6739439152417923/448150000000000 | 67112556721731/1562500000000000 | 452300992389302551654927984713/700234375000000000000000000000 |
| `b * v * w` | 591790999/125000000 | 2097358180921773/31250000000000000 | 1241197693148518784521227/3906250000000000000000000 |
| `v * w` | 35232906366406381/625000000000000 | 95045007519/500000000000 | 3348711850511317451154578739/312500000000000000000000000 |
| `b * v * k` | -51256832073/9687500000 | 40412396098991110383/560187500000000000000 | 0 |
| `v * k` | 22432537765978103/968750000000000 | 1831349802827349/8963000000000000 | 41081823614641058953529823538947/8682906250000000000000000000000 |
| `b * f * w * k` | 100 | 475299839601962528978979/17505859375000000000000000 | 475299839601962528978979/175058593750000000000000 |
| `b * f * w` | 412393/10000 | 109598883651719/1953125000000000 | 45197812425783353567/19531250000000000000 |
| `b * w * k` | -84567/1250 | 21538942294011987537/280093750000000000000 | 0 |
| `f * w * k` | -9381/100 | 21538942294011987537/280093750000000000000 | 0 |
| `w * k` | -8962853799/2500000000 | 976070253954411/4481500000000000 | 0 |
| `a * e * f * r` | -100 | 851515064486996121/61035156250000000000 | 0 |
| `a * f * r` | 219065749/9687500 | 20362892232513/488281250000000 | 4460812238721742497237/4730224609375000000000 |
| `e * f * r` | 679349994051/15500000000 | 20362892232513/488281250000000 | 13833530717018860658780163/7568359375000000000000000 |
| `f * r` | -263959130507862893/15500000000000000 | 486952489/3906250000 | 0 |
| `a * r * j` | -222250635702733/69463250000000 | 350201697932151/7812500000000000 | 0 |
| `r * j` | 9177128141799861/96875000000000 | 8374625103/62500000000 | 76855007709764859532510683/6054687500000000000000000 |
| `a * e * r * j` | 100 | 14644384402428758367/976562500000000000000 | 14644384402428758367/9765625000000000000 |
| `e * r * j` | -7134432634142627/69463250000000 | 350201697932151/7812500000000000 | 0 |
| `c * e * f * w` | -100 | 1275840028459217067/78125000000000000000 | 0 |
| `c * f * w` | -51544/625 | 30510080313251/625000000000000 | 0 |
| `e * f * w` | 26649262243/625000000 | 207690058352469/3906250000000000 | 5534786830298918907527967/2441406250000000000000000 |
| `c * e * h * r` | -35500 | 34822279613210811/3125000000000000000 | 0 |
| `c * e * h` | 546423/10000 | 1578025087833/50000000000000 | 862269202568971359/500000000000000000 |
| `c * h * r` | -12649/10000 | 832730220083/25000000000000 | 0 |
| `c * e * f * h` | -200 | 34822279613210811/3125000000000000000 | 0 |
| `c * f * h` | 123233/2000 | 832730220083/25000000000000 | 102619843211488339/50000000000000000 |
| `c * e * p * v` | -100 | 7889523483089662911/500000000000000000000 | 0 |
| `c * p * v` | -343661/5000 | 188667849991383/4000000000000000 | 0 |
| `e * p * v` | 104270035247/7750000000 | 1284311164429377/25000000000000000 | 133915170383166752432251119/193750000000000000000000000 |
| `c * e * f * v` | 200 | 2393792224578085653/156250000000000000000 | 2393792224578085653/781250000000000000 |
| `c * e * q * u` | 100 | 735697503125152719/39062500000000000000 | 735697503125152719/390625000000000000 |
| `c * e * q` | -1778789/10000 | 1693621911783/39062500000000 | 0 |
| `c * e * u` | -7077497082119/31250000000 | 111587669213583/2500000000000000 | 0 |
| `c * q * u` | 343661/5000 | 17593263580007/312500000000000 | 6046118555168785627/1562500000000000000 |
| `e * q * u` | -864000336491/38750000000 | 119761924650033/1953125000000000 | 0 |
| `c * c * w` | -40624870094801/312500000000 | 8493380312879/200000000000000 | 0 |
| `c * c * e` | 24964119680103/312500000000 | 1578025087833/50000000000000 | 39394007150868060437486799/15625000000000000000000000 |
| `c * p * w` | 947731/5000 | 100555926546537/2000000000000000 | 95299968821876057547/10000000000000000000 |
| `c * q * j` | 107817/1250 | 15370417727691/312500000000000 | 1657192328146460547/390625000000000000 |
| `a * e * f * j` | -100 | 14644384402428758367/976562500000000000000 | 0 |
| `a * f * j` | 107817/1250 | 350201697932151/7812500000000000 | 37757696465950724367/9765625000000000000 |
| `e * f * j` | -195687/5000 | 350201697932151/7812500000000000 | 0 |
| `f * j` | 450792296265115069/48437500000000000 | 8374625103/62500000000 | 3775216480540845800030977107/3027343750000000000000000000 |
| `c * h * r * k` | 100 | 3611319083275616907903/224075000000000000000000 | 3611319083275616907903/2240750000000000000000 |
| `c * h * k` | 54607/5000 | 163652471259147909/3585200000000000000 | 8936570498048289866763/17926000000000000000000 |
| `h * r * k` | 5457/200 | 587875481568552321/11203750000000000000 | 3208036502919590015697/2240750000000000000000 |
| `b * c * h * k` | 100 | 3611319083275616907903/224075000000000000000000 | 3611319083275616907903/2240750000000000000000 |
| `b * c * h` | 165393/10000 | 832730220083/25000000000000 | 137727749290187619/250000000000000000 |
| `c * h * w * j` | -100 | 3223314269160396411/200000000000000000000 | 0 |
| `c * h * w` | -659509/5000 | 8493380312879/200000000000000 | 0 |
| `c * h * j` | -927683/10000 | 14321322023541/400000000000000 | 0 |
| `h * w * j` | 201843/5000 | 524713376063877/10000000000000000 | 105909721964861125311/50000000000000000000 |
| `c * q * r * k` | 100 | 3875863049981465452353/175058593750000000000000 | 3875863049981465452353/1750585937500000000000 |
| `c * q * k` | 84567/1250 | 175640687451011259/2800937500000000000 | 14853406015669669139853/3501171875000000000000 |
| `q * r * k` | -330111/5000 | 630939776978913471/8752929687500000000 | 0 |
| `q * k` | -9167612226075443/193750000000000 | 28592005119813/140046875000000 | 0 |
| `b * c * q * k` | -200 | 3875863049981465452353/175058593750000000000000 | 0 |
| `b * q * k` | -2820601983/193750000 | 630939776978913471/8752929687500000000 | 0 |
| `c * h * q` | 6067/100 | 248796408257/6250000000000 | 1509447808895219/625000000000000 |
| `c * c * h * q` | 1100 | 1528356335922751/125000000000000000 | 16811919695150261/1250000000000000 |
| `c * c * h` | 88937/1000 | 231815006207/8000000000000 | 20616931207031959/8000000000000000 |
| `c * c * e * q` | -100 | 10403919404082969/781250000000000000 | 0 |
| `c * c * q * w` | 100 | 55996856402811247/3125000000000000000 | 55996856402811247/31250000000000000 |
| `c * e * q * r` | -45500 | 37373154727315461/2441406250000000000 | 0 |
| `c * f * q * w` | -237700 | 201152959505263843/9765625000000000000 | 0 |
| `f * q * w` | 400399/10000 | 32745069103901/488281250000000 | 13111092924132856499/4882812500000000000 |
| `c * f * q * k` | -100 | 3875863049981465452353/175058593750000000000000 | 0 |
| `f * q * k` | -7012748217/48437500 | 630939776978913471/8752929687500000000 | 0 |
| `c * q * u * w` | 100 | 3959733427215755497/156250000000000000000 | 3959733427215755497/1562500000000000000 |
| `q * u * w` | 34693/5000 | 644592776691479/7812500000000000 | 22362857201757480947/39062500000000000000 |
| `c * c * e * v` | 15208983/312500 | 666382636315909737/50000000000000000000 | 10135002187223853819567471/15625000000000000000000000 |
| `c * c * v` | -3136046667651/156250000000 | 15935687311761/400000000000000 | 0 |
| `c * v * w` | -33264999931/3125000000 | 583861481189217/10000000000000000 | 0 |
| `c * c * v * w` | -15208983/312500 | 3586661078945360031/200000000000000000000 | 0 |
| `c * e * v * r` | 6447267/312500 | 2393792224578085653/156250000000000000000 | 15433417614378880553760351/48828125000000000000000000 |
| `e * v * r` | -286606090931/6250000000 | 389678044046571/7812500000000000 | 0 |
| `c * v * w * j` | -100 | 221580686864638554453/10000000000000000000000 | 0 |
| `c * v * j` | 8937/625 | 984492390688443/20000000000000000 | 8798408495582615091/12500000000000000000 |
| `v * w * j` | -634197557/31250000 | 36070435758528171/500000000000000000 | 0 |
| `c * p * v * w` | -100 | 42463661665410563193/2000000000000000000000 | 0 |
| `p * v * w` | -27857/200 | 6912528351849351/100000000000000000 | 0 |
| `c * f * v * w` | 100 | 12884071305402451539/625000000000000000000 | 12884071305402451539/6250000000000000000 |
| `f * v * w` | 24371990199/625000000 | 2097358180921773/31250000000000000 | 51116793029217920341702827/19531250000000000000000000 |
| `c * c * e * w` | 27271483/312500 | 355167684543661143/25000000000000000000 | 9685949471181817619085069/7812500000000000000000000 |
| `c * h * p * w` | 100 | 617715056775376791/40000000000000000000 | 617715056775376791/400000000000000000 |
| `h * p * w` | 93493/1000 | 100555926546537/2000000000000000 | 9401275240615383741/2000000000000000000 |
| `c * w * w` | -192570147/10000000 | 311185674816863/5000000000000000 | 0 |
| `w * w` | 2490526370871/200000000000 | 50656955041/250000000000 | 126162482397637139010711/50000000000000000000000 |
| `c * c * w * w` | -693/10 | 1911613600399989409/100000000000000000000 | 0 |
| `c * e * r * w` | -693/10 | 1275840028459217067/78125000000000000000 | 0 |
| `c * r * w` | -4484411/400000 | 30510080313251/625000000000000 | 0 |
| `e * r * w` | -405425097/10000000 | 207690058352469/3906250000000000 | 0 |
| `r * w` | -265749788707279/5000000000000 | 4966641757/31250000000 | 0 |
| `c * f * w * k` | -100 | 132313722512115639439791/5601875000000000000000000 | 0 |
| `c * w * k` | 265559/2500 | 5995999570041946773/89630000000000000000 | 1592291649820769343091107/224075000000000000000000 |
| `c * e * w * j` | 100 | 21941939246863144509/1250000000000000000000 | 21941939246863144509/12500000000000000000 |
| `c * h * u * w` | 100 | 3689464954252447447/200000000000000000000 | 3689464954252447447/2000000000000000000 |
| `c * h * u` | 27493/2000 | 16392449290457/400000000000000 | 450677608342534301/800000000000000000 |
| `h * u * w` | 494939/5000 | 600596606585129/10000000000000000 | 297258683866637162131/50000000000000000000 |
| `c * q * r * w` | -100 | 201152959505263843/9765625000000000000 | 0 |
| `q * r * w` | -13857/200 | 32745069103901/488281250000000 | 0 |
| `c * p * w * k` | -100 | 436083052729580746853517/17926000000000000000000000 | 0 |
| `c * p * k` | -310677/2500 | 1937535500928954627/35852000000000000000 | 0 |
| `p * w * k` | 330111/5000 | 70988613499850357619/896300000000000000000 | 23434122191049101403965709/4481500000000000000000000 |
| `c * p * w * w` | 100 | 22632222943755629127/1000000000000000000000 | 22632222943755629127/10000000000000000000 |
| `p * w * w` | 13857/200 | 3684229683176889/50000000000000000 | 51052370719782150873/10000000000000000000 |
| `c * v * r * w` | 307/10 | 12884071305402451539/625000000000000000000 | 3955409890758552622473/6250000000000000000000 |
| `v * r * w` | 18114099/200000 | 2097358180921773/31250000000000000 | 37991753727676907377527/6250000000000000000000 |
| `c * u * w * k` | 100 | 2604620241229231384563789/89630000000000000000000000 | 2604620241229231384563789/896300000000000000000000 |
| `c * u * k` | -8937/625 | 11572438213849102659/179260000000000000000 | 0 |
| `u * w * k` | 13857/200 | 423998085826018457523/4481500000000000000000 | 5875341475291137765896211/896300000000000000000000 |
| `c * u * w * w` | -307/10 | 135176878840721569159/5000000000000000000000 | 0 |
| `u * w * w` | -18114099/200000 | 22005026671125113/250000000000000000 | 0 |
| `c * c * w * k` | 100 | 36833425358767679026539/1792600000000000000000000 | 36833425358767679026539/17926000000000000000000 |
| `c * c * k` | 274929/5000 | 163652471259147909/3585200000000000000 | 44992810270806275473461/17926000000000000000000 |
| `c * e * r * k` | -100 | 24583189012752152407257/1400468750000000000000000 | 0 |
| `e * r * k` | -2257/200 | 4001821424833493799/70023437500000000000 | 0 |
| `c * h * u * k` | -100 | 71089487947675037634237/3585200000000000000000000 | 0 |
| `c * f * h * k` | 100 | 3611319083275616907903/224075000000000000000000 | 3611319083275616907903/2240750000000000000000 |
| `e * e * f * f` | 52700 | 851515064486996121/61035156250000000000 | 448748438984646955767/610351562500000000 |
| `e * f * f` | 12761113/31250000 | 20362892232513/488281250000000 | 259853168785920666969/15258789062500000000000 |
| `f * f` | 71522434725922587/968750000000000 | 486952489/3906250000 | 34828027609128036560969043/3784179687500000000000000 |
| `a * e * f * f` | 100 | 851515064486996121/61035156250000000000 | 851515064486996121/610351562500000000 |
| `a * f * f` | -274929/10000 | 20362892232513/488281250000000 | 0 |
| `a * f * f * k` | -100 | 88308193381800707662533/4376464843750000000000000 | 0 |
| `f * f * k` | 42179297/6250000 | 2111777348489865549/35011718750000000000 | 89073283979826540481339053/218823242187500000000000000 |
| `f * h * v` | 15410804151/125000000 | 57244475322909/1250000000000000 | 882183397928103082595259/156250000000000000000000 |
| `f * h * h` | -216567/5000 | 832730220083/25000000000000 | 0 |
| `h * h` | 128991066181/5000000000 | 37736449/400000000 | 4867664790394931269/2000000000000000000 |
| `h * q * r` | -245868063/625 | 893731131533/19531250000000 | 0 |
| `h * p * k` | 6143/200 | 1937535500928954627/35852000000000000000 | 11902280582206568273661/7170400000000000000000 |
| `h * q * j` | -113743/2000 | 15370417727691/312500000000000 | 0 |
| `h * v * r` | -43642090971/625000000 | 57244475322909/1250000000000000 | 0 |
| `v * r * k` | -1530958693/31250000 | 40412396098991110383/560187500000000000000 | 0 |
| `p * v * k` | -35043148601/193750000 | 133192239809830265421/1792600000000000000000 | 0 |
| `e * q * u * r` | -100 | 2642786391252278211/122070312500000000000 | 0 |
| `e * u * r` | 835624068968893577/11203750000000000 | 400847321591427/7812500000000000 | 334957669903510858912623038564379/87529296875000000000000000000000 |
| `q * u * r` | 84982173642444823/448150000000000 | 63198851932283/976562500000000 | 5370775808912433434397759920909/437646484375000000000000000000 |
| `u * r` | -765543894562377657381743/5601875000000000000000 | 9585750331/62500000000 | 0 |
| `e * p * u * w` | 100 | 297346511563404397479/12500000000000000000000 | 297346511563404397479/125000000000000000000 |
| `e * p * w` | -406518811/2000 | 684510366335103/12500000000000000 | 0 |
| `e * u * w` | -120172464931/6250000000 | 4088417434082751/62500000000000000 | 0 |
| `p * u * w` | -312059/2500 | 7110661012588287/100000000000000000 | 0 |
| `e * q * u * j` | -200 | 45450728262009373797/1953125000000000000000 | 0 |
| `e * u * j` | 41672296239964834998122479/217072656250000000000000 | 6893785569848229/125000000000000000 | 287279874481510190744852019850327983239691/27134082031250000000000000000000000000000 |
| `q * u * j` | -10786572295028470498122479/217072656250000000000000 | 1086895957672941/15625000000000000 | 0 |
| `u * j` | -1337167903370256854983757268301/21707265625000000000000000000 | 164856053037/1000000000000 | 0 |
| `c * e * e * r` | 5615233/312500 | 237044321436698109/19531250000000000000 | 1331059096193954632694397/6103515625000000000000000 |
| `c * e * e` | -11792936876583/312500000000 | 10742027526927/312500000000000 | 0 |
| `e * e * r` | -16702919731743/312500000000 | 38587713077763/976562500000000 | 0 |
| `e * r * r` | 564095277/10000000 | 20362892232513/488281250000000 | 11486611334420569141101/4882812500000000000000 |
| `r * r` | -9897033049059/1250000000000 | 486952489/3906250000 | 0 |
| `a * r * r` | -50 | 20362892232513/488281250000000 | 0 |
| `e * e * p * r` | -45600 | 2806445784432625227/195312500000000000000 | 0 |
| `e * e * p` | -3469970893567/1120375000000 | 127178401433481/3125000000000000 | 0 |
| `f * v * k` | 1964655706953/9687500000 | 40412396098991110383/560187500000000000000 | 79396444627528039339575323592999/5426816406250000000000000000000 |
| `e * f * v * j` | -200 | 147886324818070113639/7812500000000000000000 | 0 |
| `e * v * j` | -24803581061/1250000000 | 6701695963115517/125000000000000000 | 0 |
| `f * v * j` | 9897445495067/48437500000 | 3536512060120767/62500000000000000 | 35002435357692400808122756389/3027343750000000000000000000 |
| `e * f * f * h` | 131800 | 125089246984327359/9765625000000000000 | 82433813762671729581/48828125000000000 |
| `f * f * h` | -821003579/96875000 | 2991349139927/78125000000000 | 0 |
| `f * h * j` | -430543921/96875000 | 51445322007729/1250000000000000 | 0 |
| `f * h * q * r` | -100 | 19721964879538711/1220703125000000000 | 0 |
| `f * h * q` | 64793/625 | 893731131533/19531250000000 | 57907521205417669/12207031250000000 |
| `f * h * r` | 153541780341/3875000000 | 2991349139927/78125000000000 | 459297072565910706775107/302734375000000000000000 |
| `f * q * r` | -5325913561/3875000000 | 3210477759977/61035156250000 | 0 |
| `f * h * p * k` | 100 | 42755595898999241754009/2240750000000000000000000 | 42755595898999241754009/22407500000000000000000 |
| `f * h * p` | -10630137217/193750000 | 9858967308549/250000000000000 | 0 |
| `f * p * k` | -43494774893/1562500000 | 6960051424222569063/112037500000000000000 | 0 |
| `f * p` | -9769120255452405112835755215313/217072656250000000000000000000 | 1604910843/12500000000 | 0 |
| `f * h * w * j` | -100 | 11578850069601573759/625000000000000000000 | 0 |
| `f * h * w` | -230547/2000 | 30510080313251/625000000000000 | 0 |
| `f * w * j` | -347433/2500 | 1884885246557313/31250000000000000 | 0 |
| `f * h * p * w` | 100 | 2218967631102431979/125000000000000000000 | 2218967631102431979/1250000000000000000 |
| `f * p * w` | -4373986707/193750000 | 361218888344853/6250000000000000 | 0 |
| `f * h * q * j` | -100 | 339179007996957297/19531250000000000000 | 0 |
| `f * q * j` | -4217401503317/48437500000 | 55213903304079/976562500000000 | 0 |
| `f * h * u * k` | -100 | 255368994065008148376153/11203750000000000000000000 | 0 |
| `f * h * u` | 686269/10000 | 58885264283333/1250000000000000 | 40411131434458654577/12500000000000000000 |
| `f * u * k` | -120624912607/1562500000 | 41570729947095580071/560187500000000000000 | 0 |
| `f * u` | 1270176976114872917026351018301/21707265625000000000000000000 | 9585750331/62500000000 | 12175599369221722158408279809400997807631/1356704101562500000000000000000000000000 |
| `f * h * u * w` | 200 | 13253365317514041643/625000000000000000000 | 13253365317514041643/3125000000000000000 |
| `f * u * w` | 17423696791/96875000 | 2157474412748501/31250000000000000 | 37591180002070666363760291/3027343750000000000000000 |
| `f * h * v * j` | 200 | 21724793585321871681/1250000000000000000000 | 21724793585321871681/6250000000000000000 |
| `f * f * w * k` | 100 | 475299839601962528978979/17505859375000000000000000 | 475299839601962528978979/175058593750000000000000 |
| `f * f * w` | -167303/10000 | 109598883651719/1953125000000000 | 0 |
| `e * f * f * w` | -178900 | 4583096517663933423/244140625000000000000 | 0 |
| `e * f * w * j` | 100 | 78820246355287157721/3906250000000000000000 | 78820246355287157721/39062500000000000000 |
| `f * r * k` | -417173/5000 | 2111777348489865549/35011718750000000000 | 0 |
| `h * p * r` | 52227148209/625000000 | 9858967308549/250000000000000 | 514905746811274455738741/156250000000000000000000 |
| `h * p * j` | -14264180283/193750000 | 169554847704723/4000000000000000 | 0 |
| `p * j` | 8438491804458544586557036465313/217072656250000000000000000000 | 27601310061/200000000000 | 232913428742067671354353815940387584414093/43414531250000000000000000000000000000000 |
| `c * e * h * p` | 100 | 114768186613006257/10000000000000000000 | 114768186613006257/100000000000000000 |
| `b * h * h * p` | -120000 | 60563636176416507/5000000000000000000 | 0 |
| `b * h * h` | 987/25 | 832730220083/25000000000000 | 821904727221921/625000000000000 |
| `h * h * p` | -5623/200 | 2744534199321/80000000000000 | 0 |
| `h * p * u * w` | -200 | 43680790600329847041/2000000000000000000000 | 0 |
| `h * p * u` | 225071/2500 | 194075605477071/4000000000000000 | 43680790600329847041/10000000000000000000 |
| `h * p * w * j` | -100 | 38161879127749710333/2000000000000000000000 | 0 |
| `p * w * j` | -501665709/96875000 | 6212254456739331/100000000000000000 | 0 |
| `h * p * v * j` | -100 | 71601147082379770947/4000000000000000000000 | 0 |
| `p * v * j` | 21972087491669095498122479/217072656250000000000000 | 11655729624349629/200000000000000000 | 256100711085449408580375989050530960210291/43414531250000000000000000000000000000000 |
| `h * u * j` | -35561/1250 | 1012710733806291/20000000000000000 | 0 |
| `h * u * w * j` | 100 | 227931817568515721661/10000000000000000000000 | 227931817568515721661/100000000000000000000 |
| `u * w * j` | 7525800709/96875000 | 37104316713090627/500000000000000000 | 279239693026337990257854543/48437500000000000000000000 |
| `h * u * r` | -44371/200 | 58885264283333/1250000000000000 | 0 |
| `h * q * r * r` | -100 | 19721964879538711/1220703125000000000 | 0 |
| `h * r * r` | -80943/10000 | 2991349139927/78125000000000 | 0 |
| `q * r * r` | -11857/200 | 3210477759977/61035156250000 | 0 |
| `h * p * r * w` | 100 | 2218967631102431979/125000000000000000000 | 2218967631102431979/1250000000000000000 |
| `p * r * w` | 11857/200 | 361218888344853/6250000000000000 | 4282972359104922021/1250000000000000000 |
| `h * q * r * j` | 100 | 339179007996957297/19531250000000000000 | 339179007996957297/195312500000000000 |
| `h * r * j` | 9996348993/193750000 | 51445322007729/1250000000000000 | 514265392846522527366897/242187500000000000000000 |
| `q * r * j` | -9707990541/96875000 | 55213903304079/976562500000000 | 0 |
| `e * f * h * r` | 100 | 125089246984327359/9765625000000000000 | 125089246984327359/97656250000000000 |
| `c * h * v * r` | -200 | 351652811908629987/25000000000000000000 | 0 |
| `c * h * v` | -390593/5000 | 15935687311761/400000000000000 | 0 |
| `c * h * h * r` | 133300 | 5115461741969869/500000000000000000 | 6818910502045835377/5000000000000000 |
| `c * h * h` | 62877/10000 | 231815006207/8000000000000 | 14575832145277539/80000000000000000 |
| `h * h * r` | 15641/200 | 832730220083/25000000000000 | 13024733372318203/5000000000000000 |
| `c * c * e * e` | -5615233/312500 | 65988275097912561/6250000000000000000 | 0 |
| `b * b * e * e` | 45600 | 851515064486996121/61035156250000000000 | 48536358675758778897/76293945312500000 |
| `b * e * p * v` | 100 | 28340894465463062259/1562500000000000000000 | 28340894465463062259/15625000000000000000 |
| `c * c * e * h` | 125900 | 9693808114558119/1000000000000000000 | 12204504416228671821/10000000000000000 |
| `c * e * u * w` | -27271483/312500 | 25115148297570339393/1250000000000000000000 | 0 |
| `c * f * h * h` | 78100 | 5115461741969869/500000000000000000 | 3995175620478467689/5000000000000000 |
| `c * e * q * j` | -100 | 642744758118854547/39062500000000000000 | 0 |
| `e * f * p * v` | -100 | 28340894465463062259/1562500000000000000000 | 0 |
| `e * f * p` | 11684821274720992091872479/217072656250000000000000 | 67112556721731/1562500000000000 | 784198230583001709567005235205540141149/339176025390625000000000000000000000000 |
| `f * p * v` | 15458865132473380220627521/217072656250000000000000 | 677736194979627/12500000000000000 | 10477032433585736190172476419587750514667/2713408203125000000000000000000000000000 |
| `b * q * r * k` | 100 | 13922948058593683564557/547058105468750000000000 | 13922948058593683564557/5470581054687500000000 |
| `b * q * w * j` | -100 | 12427048430552364609/488281250000000000000 | 0 |
| `e * p * w * j` | -200 | 259777844617468604427/12500000000000000000000 | 0 |
| `e * p * j` | -51692413466996084998122479/217072656250000000000000 | 1154203982820837/25000000000000000 | 0 |
| `e * f * p * k` | 100 | 291048470406715170507471/14004687500000000000000000 | 291048470406715170507471/140046875000000000000000 |
| `e * p * k` | 59165168939/1250000000 | 13189308488091501813/224075000000000000000 | 780347664886520374456369786407/280093750000000000000000000000 |
| `e * f * p * w` | 100 | 15105090253916717901/781250000000000000000 | 15105090253916717901/7812500000000000000 |
| `f * v * v` | -48733/1000 | 3935163965429907/62500000000000000 | 0 |
| `v * v` | -10508930319/1000000000 | 178327999521/1000000000000 | 0 |
| `u * v` | 347315321833/10000000000 | 183439385577/1000000000000 | 63711309238523533402641/10000000000000000000000 |
| `e * f * u * v` | 100 | 169273414587522116403/7812500000000000000000 | 169273414587522116403/78125000000000000000 |
| `e * f * u` | -7168689783236617091872479/217072656250000000000000 | 400847321591427/7812500000000000 | 0 |
| `e * u * v` | 215643/10000 | 7670884786673409/125000000000000000 | 1654172608052613936987/1250000000000000000000 |
| `f * u * v` | -274929/10000 | 4047956921527659/62500000000000000 | 0 |
| `e * u * u` | -417173/5000 | 7890754092901833/125000000000000000 | 0 |
| `u * u` | 114692955717/5000000000 | 188697278449/1000000000000 | 21642248601069575442933/5000000000000000000000 |
| `b * u * w` | -100 | 2157474412748501/31250000000000000 | 0 |
| `e * f * v * r` | 100 | 8599025397975682257/488281250000000000000 | 8599025397975682257/4882812500000000000 |
| `f * v * r` | -779702799571/15500000000 | 205634679627321/3906250000000000 | 0 |
| `f * f * h * w` | -7600 | 673265942272509817/39062500000000000000 | 0 |
| `f * h * q * u` | -200 | 388230547420014469/19531250000000000000 | 0 |
| `f * q * u` | -36586698716145255220627521/217072656250000000000000 | 63198851932283/976562500000000 | 0 |
| `f * f * h * q` | 100 | 19721964879538711/1220703125000000000 | 19721964879538711/12207031250000000 |
| `f * f * q` | 231552137/3875000 | 3210477759977/61035156250000 | 743392986113647420849/236511230468750000000 |
| `f * u * v * k` | -100 | 17554861978629045412602519/560187500000000000000000000 | 0 |
| `u * v * k` | -215643/10000 | 795525534899580614157/8963000000000000000000 | 0 |
| `f * v * v * j` | 100 | 1493430141356338575663/62500000000000000000000 | 1493430141356338575663/625000000000000000000 |
| `v * v * j` | 215643/10000 | 67677080770215189/1000000000000000000 | 14594088728531514001527/10000000000000000000000 |
| `u * u * k` | 417173/5000 | 818327552177853369909/8963000000000000000000 | 341384159924691623885047257/44815000000000000000000000 |
| `u * v * j` | -417173/5000 | 69616897780941693/1000000000000000000 | 0 |
| `f * p * v * k` | -100 | 2939153155883524467045207/112037500000000000000000000 | 0 |
| `f * p * v * w` | 100 | 152538763140259628517/6250000000000000000000 | 152538763140259628517/62500000000000000000 |
| `f * q * v * j` | -100 | 23316224012376216831/976562500000000000000 | 0 |
| `q * v * j` | -215643/10000 | 1056610504933893/15625000000000000 | 0 |
| `b * v * r * k` | -100 | 891780344716436832821661/35011718750000000000000000 | 0 |
| `b * p * v * k` | 100 | 2939153155883524467045207/112037500000000000000000000 | 2939153155883524467045207/1120375000000000000000000 |
| `b * p * k` | -208139/10000 | 6960051424222569063/112037500000000000000 | 0 |
| `b * v * w * j` | 100 | 795966305883441149457/31250000000000000000000 | 795966305883441149457/312500000000000000000 |
| `b * p * v * w` | -100 | 152538763140259628517/6250000000000000000000 | 0 |
| `p * u * k` | -515289/10000 | 137009907025074293877/1792600000000000000000 | 0 |
| `e * f * u * w` | -100 | 90219107517904066317/3906250000000000000000 | 0 |
| `f * q * u * w` | -100 | 14224228803250867093/488281250000000000000 | 0 |
| `p * v * r` | -29042477302444823/448150000000000 | 677736194979627/12500000000000000 | 0 |
| `f * q * u * k` | 200 | 274075822541201159408103/8752929687500000000000000 | 274075822541201159408103/43764648437500000000000 |
| `q * u * k` | 19610615863/96875000 | 12420166880010928509/140046875000000000000 | 243567121638249532231954338267/13567041015625000000000000000 |
| `b * h * p * k` | -100 | 42755595898999241754009/2240750000000000000000000 | 0 |
| `b * q * u * k` | -100 | 274075822541201159408103/8752929687500000000000000 | 0 |
| `c * h * p * k` | -100 | 11902280582206568273661/717040000000000000000000 | 0 |
| `b * e * h * j` | 100 | 2151289030397203593/156250000000000000000 | 2151289030397203593/1562500000000000000 |
| `e * h * j` | 184693/5000 | 97488966800979/2500000000000000 | 18005529745373214447/12500000000000000000 |
| `h * q * u * j` | 100 | 6676801867984876563/312500000000000000000 | 6676801867984876563/3125000000000000000 |
| `b * f * v * k` | 100 | 891780344716436832821661/35011718750000000000000000 | 891780344716436832821661/350117187500000000000000 |
| `h * q * u * r` | 200 | 388230547420014469/19531250000000000000 | 388230547420014469/97656250000000000 |
| `e * h * r * j` | -100 | 2151289030397203593/156250000000000000000 | 0 |
| `h * v * r * j` | -100 | 21724793585321871681/1250000000000000000000 | 0 |
| `v * r * j` | -7003644459/96875000 | 3536512060120767/62500000000000000 | 0 |
| `p * v * v` | 48733/1000 | 12969617077162809/200000000000000000 | 632048349021375170997/200000000000000000000 |
| `e * p * u * v` | -100 | 557895779649970363161/25000000000000000000000 | 0 |
| `p * u * v` | 274929/10000 | 13341363073629633/200000000000000000 | 3667927608469921371057/2000000000000000000000 |
| `q * u * v` | -48733/1000 | 1209415869109161/15625000000000000 | 0 |
| `e * q * u * u` | 100 | 52023741734501784969/1953125000000000000000 | 52023741734501784969/19531250000000000000 |
| `q * u * u` | -274929/10000 | 1244081156814257/15625000000000000 | 0 |
| `e * p * v * j` | 200 | 487407645701428435893/25000000000000000000000 | 487407645701428435893/125000000000000000000 |
| `f * p * w * k` | -200 | 1566505734101197841578473/56018750000000000000000000 | 0 |
| `f * q * r * k` | 100 | 13922948058593683564557/547058105468750000000000 | 13922948058593683564557/5470581054687500000000 |
| `e * f * q * r` | -237800 | 134252548488958209/7629394531250000000 | 0 |
| `e * q * r * j` | 200 | 2308879794466671543/122070312500000000000 | 2308879794466671543/610351562500000000 |
| `p * u * v * k` | 100 | 57857776627711598487024453/1792600000000000000000000000 | 57857776627711598487024453/17926000000000000000000000 |
| `q * u * u * k` | -100 | 5395233551508587267810037/140046875000000000000000000 | 0 |
| `p * v * v * j` | -100 | 4922086407336980480781/200000000000000000000000 | 0 |
| `q * u * v * j` | 100 | 458984207069748581949/15625000000000000000000 | 458984207069748581949/156250000000000000000 |
| `c * q * v` | 1987768003/156250000 | 17103041908911/312500000000000 | 33996879460501326374733/48828125000000000000000 |
| `e * e * u * r` | -5615233/312500 | 16762232446988702859/976562500000000000000 | 0 |
| `e * e * u` | 128931364913/156250000000 | 759606310191177/15625000000000000 | 97937078369476112579972601/2441406250000000000000000000 |
| `c * e * e * u` | 5615233/312500 | 4666261563504400311/312500000000000000000 | 26202145918021504271537463/97656250000000000000000000 |
| `e * u * r * w` | 693/10 | 90219107517904066317/3906250000000000000000 | 62521841509907517957681/39062500000000000000000 |
| `u * r * w` | -62198431/1250000 | 2157474412748501/31250000000000000 | 0 |
| `e * v * r * r` | -693/10 | 8599025397975682257/488281250000000000000 | 0 |
| `v * r * r` | 62198431/1250000 | 205634679627321/3906250000000000 | 12790154432007030933351/4882812500000000000000 |
| `c * e * h * j` | 100 | 598874723058413997/50000000000000000000 | 598874723058413997/500000000000000000 |
| `f * q * w * j` | 100 | 12427048430552364609/488281250000000000000 | 12427048430552364609/4882812500000000000 |
| `p * r * k` | 10539/100 | 6960051424222569063/112037500000000000000 | 73351981959881655354957/11203750000000000000000 |
| `h * v * r * r` | 100 | 1263213836950632903/78125000000000000000 | 1263213836950632903/781250000000000000 |
| `h * u * r * w` | -100 | 13253365317514041643/625000000000000000000 | 0 |
| `c * h * v * j` | 100 | 6047736755999105349/400000000000000000000 | 6047736755999105349/4000000000000000000 |
| `c * h * h * p` | -151100 | 16859673586428903/1600000000000000000 | 0 |
| `e * f * q * j` | 100 | 2308879794466671543/122070312500000000000 | 2308879794466671543/1220703125000000000 |
| `e * f * q * u` | 100 | 2642786391252278211/122070312500000000000 | 2642786391252278211/1220703125000000000 |
| `f * f * v` | -3702012/12109375 | 205634679627321/3906250000000000 | 0 |
| `f * f * h * h` | 59700 | 18375857766571561/1562500000000000000 | 10970387086643221917/15625000000000000 |
| `e * u * k` | -29107168939/1250000000 | 78776599184197936821/1120375000000000000000 | 0 |
| `u * r * k` | -539/100 | 41570729947095580071/560187500000000000000 | 0 |
| `p * j * k` | -41804131357/1562500000 | 119699195901358724001/1792600000000000000000 | 0 |
| `q * j * j` | 41804131357/1562500000 | 949570545567033/15625000000000000 | 39695971819622401580753781/24414062500000000000000000 |
| `j * j` | -13337900738370349/1562500000000000 | 144027081081/1000000000000 | 0 |
| `u * j * k` | 41804131357/1562500000 | 714934796369796370017/8963000000000000000000 | 29887228139133014199532444323069/14004687500000000000000000000000 |
| `v * j * j` | -41804131357/1562500000 | 60821052042614409/1000000000000000000 | 0 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 55 | -1257215493976410150947312354326476346338207390133117/972811108984375000000000000000000000000000000 |

## Stage 56

| Property | Value |
| --- | --- |
| Scope | root/ACP+/HBP-/HEQ+/CFQ+/PQR-/PQS-/PRS- |
| Packet | forest:root/ACP+/HBP-/HEQ+/CFQ+/PQR-/PQS-/PRS- |
| Index | 0 |
| Context | 21 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 38 |
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
| u | 107821/1000000 | 795763/1000000 | 107821/1000000 | 84567/125000 |
| v | 171947/500000 | 907/1000 | 410111/1000000 | 907/1000 |
| r | 40433/62500 | 1/1 | 40433/62500 | 1/1 |
| w | 274929/500000 | 1/1 | 274929/500000 | 1/1 |
| j | 51267/100000 | 892179/1000000 | 51267/100000 | 892179/1000000 |
| k | 412393/1000000 | 8033/8963 | 412393/1000000 | 8033/8963 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 93 | A_EHQ | bitt ["actual-area","EHQ",[]] | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 99 | A_EQR | bitt ["actual-area","EQR",["S"]] | `-1/1 * u * w + 1/1 * e * u + 1/1 * w + 1/1 * v * r + -1/1 * v + -1/1 * e * r + -279/1000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 99 | u | 107821/1000000 | 795763/1000000 | 107821/1000000 | 24314/35939 | 107821/1000000 | 84567/125000 | `(-206197/500000, 378183419/6250000000); (-38929/500000, -4872229949/31250000000); (-206197/500000, -1080528239/7812500000); (-38929/500000, -554263/1562500); (-206197/500000, 66697/500000); (-38929/500000, -100571/500000); (-107817/125000, 3191570919/6250000000); (-66/125, 9194707551/31250000000); (-107817/125000, 304525767/976562500); (-66/125, 1192671/12500000); (-107817/125000, 36471/62500); (-66/125, 249/1000)` |
| 1 | 93 | v | 171947/500000 | 907/1000 | 25631961069/62500000000 | 907/1000 | 410111/1000000 | 907/1000 | `(1/1, -362983863047/500000000000); (1/1, -15240754643/20000000000); (1/1, -125000063243/125000000000); (1/1, -64754407/62500000); (1/1, -25631961069/62500000000); (1/1, -1591092561/2500000000); (1/1, -7960364761/15625000000); (1/1, -11496703/15625000)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 56:9 | ABP | hi | 397537/1000000 | earlier 38:9; ABP; hi; 397537/1000000 |
| 56:23 | ACP | hi | 114557/200000 | earlier 38:23; ACP; hi; 114557/200000 |
| 56:77 | BER | hi | 9876114761/15625000000 | vertex maximum 9876114761/15625000000 |
| 56:89 | BHP | hi | 397537/1000000 | earlier 38:89; BHP; hi; 397537/1000000 |
| 56:129 | CHP | hi | 84567/125000 | earlier 38:129; CHP; hi; 84567/125000 |
| 56:153 | EFR | hi | 9117760239/15625000000 | vertex maximum 9117760239/15625000000 |
| 56:154 | EFS | lo | 93/1000 | occupants none |
| 56:155 | EFS | hi | 397537/1000000 | earlier 38:155; EFS; hi; 397537/1000000 |
| 56:160 | EHR | lo | 34011/100000 | earlier 38:160; EHR; lo; 34011/100000 |
| 56:161 | EHR | hi | 107817/125000 | vertex maximum 107817/125000 |
| 56:172 | EQS | lo | 93679/1000000 | earlier 38:172; EQS; lo; 93679/1000000 |
| 56:174 | ERS | lo | 93/1000 | occupants none |
| 56:177 | FHP | hi | 553893/1000000 | earlier 38:177; FHP; hi; 553893/1000000 |
| 56:180 | FHR | lo | 93/1000 | occupants none |
| 56:192 | FRS | lo | 93/1000 | occupants none |
| 56:197 | HPR | hi | 818719/1000000 | earlier 38:197; HPR; hi; 818719/1000000 |
| 56:208 | QRS | lo | 93/1000 | occupants none |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 7 | fan | EQR = EQS + QRS + ERS | point S |
| 1270 | support | EQR * BER >= 1023/1000 * (EQR - BQR) | pentagon RQPBE |
| 1525 | bary | outer EFR; fans FRS, ERS, EFS; target HRS; sign -1; vertices EHR -1; FHR 1; none 0 | container EFR; inner S; line HR |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 56:213 | EQR | lo | 279679/1000000 | 279679/1000000 | 7 | 56:172, 56:208, 56:174 |
| 56:219 | BQR | lo | 26719/250000 | 1708352115383281/15984375000000000 | 1270 | 56:213, 56:77 |
| 56:226 | HRS | hi | 114557/200000 | 72534869034807/126635558875000 | 1525 | 56:153, 56:192, 56:174, 56:154, 56:161, 56:180 |

## Stage 57

| Property | Value |
| --- | --- |
| Scope | root/ACP+/HBP-/HEQ+/CFQ+/PQR-/PQS-/PRS- |
| Packet | forest:root/ACP+/HBP-/HEQ+/CFQ+/PQR-/PQS-/PRS- |
| Index | 1 |
| Context | 21 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 56 |
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
| u | 107821/1000000 | 84567/125000 | 107821/1000000 | 675749/1000000 |
| v | 410111/1000000 | 907/1000 | 102637/250000 | 907/1000 |
| r | 40433/62500 | 1/1 | 40433/62500 | 1/1 |
| w | 274929/500000 | 1/1 | 274929/500000 | 1/1 |
| j | 51267/100000 | 892179/1000000 | 51267/100000 | 892179/1000000 |
| k | 412393/1000000 | 8033/8963 | 412393/1000000 | 8033/8963 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 93 | A_EHQ | bitt ["actual-area","EHQ",[]] | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 634 | AREA_lo_EQR | bitt ["earlier-area",{"direction":"lo","ref":"56:213","triangle":"EQR","value":"279679/1000000"}] | `-1/1 * u * w + 1/1 * e * u + 1/1 * w + 1/1 * v * r + -1/1 * v + -1/1 * e * r + -279679/1000000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 634 | u | 107821/1000000 | 84567/125000 | 107821/1000000 | 582857/862536 | 107821/1000000 | 675749/1000000 | `(-206197/500000, 2278186151/62500000000); (-38929/500000, -11248107937/62500000000); (-206197/500000, -2171665853/15625000000); (-38929/500000, -8885183/25000000); (-206197/500000, 26543/200000); (-38929/500000, -201821/1000000); (-107817/125000, 30412061151/62500000000); (-66/125, 16885767063/62500000000); (-107817/125000, 4861802897/15625000000); (-66/125, 2368367/25000000); (-107817/125000, 582857/1000000); (-66/125, 248321/1000000)` |
| 1 | 93 | v | 410111/1000000 | 907/1000 | 205274232943/500000000000 | 907/1000 | 102637/250000 | 907/1000 | `(1/1, -362983863047/500000000000); (1/1, -15240754643/20000000000); (1/1, -125000063243/125000000000); (1/1, -64754407/62500000); (1/1, -205274232943/500000000000); (1/1, -12732216667/20000000000); (1/1, -63767770067/125000000000); (1/1, -46012783/62500000)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 57:9 | ABP | hi | 397537/1000000 | earlier 56:9; ABP; hi; 397537/1000000 |
| 57:23 | ACP | hi | 114557/200000 | earlier 56:23; ACP; hi; 114557/200000 |
| 57:89 | BHP | hi | 397537/1000000 | earlier 56:89; BHP; hi; 397537/1000000 |
| 57:102 | BQR | lo | 26719/250000 | earlier 56:219; BQR; lo; 26719/250000 |
| 57:129 | CHP | hi | 84567/125000 | earlier 56:129; CHP; hi; 84567/125000 |
| 57:155 | EFS | hi | 397537/1000000 | earlier 56:155; EFS; hi; 397537/1000000 |
| 57:160 | EHR | lo | 34011/100000 | earlier 56:160; EHR; lo; 34011/100000 |
| 57:170 | EQR | lo | 279679/1000000 | earlier 56:213; EQR; lo; 279679/1000000 |
| 57:177 | FHP | hi | 553893/1000000 | earlier 56:177; FHP; hi; 553893/1000000 |
| 57:197 | HPR | hi | 818719/1000000 | earlier 56:197; HPR; hi; 818719/1000000 |
| 57:201 | HRS | hi | 114557/200000 | earlier 56:226; HRS; hi; 114557/200000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |


## Stage 58

| Property | Value |
| --- | --- |
| Scope | root/ACP+/HBP-/HEQ+/CFQ+/PQR-/PQS-/PRS- |
| Packet | forest:root/ACP+/HBP-/HEQ+/CFQ+/PQR-/PQS-/PRS- |
| Index | 2 |
| Context | 21 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 57 |
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
| u | 107821/1000000 | 675749/1000000 | 107821/1000000 | 675749/1000000 |
| v | 102637/250000 | 907/1000 | 102637/250000 | 907/1000 |
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
| 58:9 | ABP | hi | 397537/1000000 | earlier 57:9; ABP; hi; 397537/1000000 |
| 58:23 | ACP | hi | 114557/200000 | earlier 57:23; ACP; hi; 114557/200000 |
| 58:89 | BHP | hi | 397537/1000000 | earlier 57:89; BHP; hi; 397537/1000000 |
| 58:102 | BQR | lo | 26719/250000 | earlier 57:102; BQR; lo; 26719/250000 |
| 58:129 | CHP | hi | 84567/125000 | earlier 57:129; CHP; hi; 84567/125000 |
| 58:155 | EFS | hi | 397537/1000000 | earlier 57:155; EFS; hi; 397537/1000000 |
| 58:160 | EHR | lo | 34011/100000 | earlier 57:160; EHR; lo; 34011/100000 |
| 58:170 | EQR | lo | 279679/1000000 | earlier 57:170; EQR; lo; 279679/1000000 |
| 58:177 | FHP | hi | 553893/1000000 | earlier 57:177; FHP; hi; 553893/1000000 |
| 58:197 | HPR | hi | 818719/1000000 | earlier 57:197; HPR; hi; 818719/1000000 |
| 58:201 | HRS | hi | 114557/200000 | earlier 57:201; HRS; hi; 114557/200000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |


## Stage 59

| Property | Value |
| --- | --- |
| Scope | root/ACP+/HBP-/HEQ+/CFQ+/PQR-/PQS-/PRS-/HQR+ |
| Packet | forest:root/ACP+/HBP-/HEQ+/CFQ+/PQR-/PQS-/PRS-/HQR+ |
| Index | 0 |
| Context | 22 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 58 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 17183/125000 | 59/125 | 17183/125000 | 6143/20000 |
| b | 40433/125000 | 84567/125000 | 40433/125000 | 84567/125000 |
| c | 13857/20000 | 1/1 | 13857/20000 | 1/1 |
| e | 17183/125000 | 59/125 | 17183/125000 | 6143/20000 |
| f | 40433/125000 | 84567/125000 | 40433/125000 | 84567/125000 |
| h | 13857/20000 | 1/1 | 13857/20000 | 1/1 |
| p | 107821/1000000 | 235733/500000 | 107821/1000000 | 235733/500000 |
| q | 82827/500000 | 703163/1000000 | 82827/500000 | 703163/1000000 |
| u | 107821/1000000 | 675749/1000000 | 107821/1000000 | 675749/1000000 |
| v | 102637/250000 | 907/1000 | 102637/250000 | 226411/250000 |
| r | 40433/62500 | 1/1 | 694471/1000000 | 1/1 |
| w | 274929/500000 | 1/1 | 415157/500000 | 1/1 |
| j | 51267/100000 | 892179/1000000 | 269553/500000 | 892179/1000000 |
| k | 412393/1000000 | 8033/8963 | 412393/1000000 | 107817/125000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 91 | A_EFS | bitt ["actual-area","EFS",[]] | `-1/1 * f * k + 1/1 * e * f + 1/1 * k + 1/1 * j + -1093/1000 + -1/1 * e * j` |
| 94 | A_EHR | bitt ["actual-area","EHR",["Q","S"]] | `1/1 * w + 1/1 * h * r + -1/1 * h + -1/1 * e * r + -13857/20000` |
| 110 | A_FRS | bitt ["actual-area","FRS",[]] | `-1/1 * r * k + 1/1 * r + 1/1 * f * k + 1/1 * w * j + -1/1 * f * w + -1/1 * j + -93/1000` |
| 121 | ea | bitt ["contact-order","ea"] | `1/1 * e + -1/1 * a` |
| 131 | upper-Q-y | bitt ["upper-point-y","42680538931/62500000000","Q"] | `31055538931/62500000000 + -42680538931/62500000000 * v + 93/1000 * e + 93/1000 * h` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 94 | e | 17183/125000 | 59/125 | 17183/125000 | 6143/20000 | 17183/125000 | 6143/20000 | `(-40433/62500, -484522419/1250000000); (-40433/62500, -7751/15625); (-1/1, -8937/62500); (-40433/62500, 78155081/1250000000); (-40433/62500, -22961/500000); (-1/1, 6143/20000)` |
| 1 | 94 | r | 40433/62500 | 1/1 | 192850/277693 | 1/1 | 694471/1000000 | 1/1 | `(277693/500000, -417921/500000); (3857/10000, -417921/500000); (107817/125000, -71437/62500); (13857/20000, -71437/62500); (277693/500000, -3857/10000); (3857/10000, -3857/10000); (107817/125000, -13857/20000); (13857/20000, -13857/20000)` |
| 2 | 94 | w | 274929/500000 | 1/1 | 415157/500000 | 1/1 | 415157/500000 | 1/1 | `(1/1, -500000264597/500000000000); (1/1, -11178425353/10000000000); (1/1, -136730470193/125000000000); (1/1, -24233715353/20000000000); (1/1, -415157/500000); (1/1, -1/1)` |
| 3 | 110 | k | 412393/1000000 | 8033/8963 | 412393/1000000 | 24314/28189 | 412393/1000000 | 107817/125000 | `(-371007/1000000, 61475347671/250000000000); (-3587/200000, -11814808481/250000000000); (-84567/125000, 137857597671/250000000000); (-40433/125000, 64567441519/250000000000); (-371007/1000000, 278007/1000000); (-3587/200000, -15013/200000); (-84567/125000, 36471/62500); (-40433/125000, 3601/15625); (-371007/1000000, 18150402651/100000000000); (-3587/200000, -55828299049/500000000000); (-84567/125000, 48703302651/100000000000); (-40433/125000, 96936200951/500000000000)` |
| 4 | 121 | a | 17183/125000 | 59/125 | 17183/125000 | 6143/20000 | 17183/125000 | 6143/20000 | `(-1/1, 17183/125000); (-1/1, 6143/20000)` |
| 5 | 131 | v | 102637/250000 | 907/1000 | 102637/250000 | 38653348306/42680538931 | 102637/250000 | 226411/250000 | `(-42680538931/62500000000, 2242608691/3906250000); (-42680538931/62500000000, 36868038931/62500000000); (-42680538931/62500000000, 37667048431/62500000000); (-42680538931/62500000000, 19326674153/31250000000)` |
| 6 | 91 | j | 51267/100000 | 892179/1000000 | 1210934087/2246187500 | 892179/1000000 | 269553/500000 | 892179/1000000 | `(107817/125000, -96192079257/125000000000); (13857/20000, -89331165219/125000000000); (107817/125000, -108325795743/125000000000); (13857/20000, -93975959781/125000000000); (107817/125000, -3632802261/7812500000); (13857/20000, -25631961069/62500000000); (107817/125000, -5632822739/7812500000); (13857/20000, -37887663931/62500000000)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 59:0 | ABC | lo | 93/1000 | occupants none |
| 59:3 | ABE | hi | 6143/20000 | vertex maximum 6143/20000 |
| 59:6 | ABH | lo | 279/1000 | occupants P |
| 59:7 | ABH | hi | 9117760239/15625000000 | vertex maximum 9117760239/15625000000 |
| 59:8 | ABP | lo | 93/1000 | occupants none |
| 59:9 | ABP | hi | 397537/1000000 | earlier 58:9; ABP; hi; 397537/1000000 |
| 59:16 | ACE | lo | 93/1000 | occupants none |
| 59:17 | ACE | hi | 6143/20000 | vertex maximum 6143/20000 |
| 59:20 | ACH | lo | 279/1000 | occupants P |
| 59:23 | ACP | hi | 114557/200000 | earlier 58:23; ACP; hi; 114557/200000 |
| 59:33 | AEH | hi | 107817/125000 | vertex maximum 107817/125000 |
| 59:37 | AER | hi | 107817/125000 | vertex maximum 107817/125000 |
| 59:40 | AFH | lo | 93/1000 | occupants none |
| 59:46 | AHP | lo | 93/1000 | occupants none |
| 59:50 | AHR | lo | 93/1000 | occupants none |
| 59:54 | BCE | lo | 93/1000 | occupants none |
| 59:70 | BEH | lo | 93/1000 | occupants none |
| 59:71 | BEH | hi | 1939719919/2500000000 | vertex maximum 1939719919/2500000000 |
| 59:77 | BER | hi | 78191986719/125000000000 | vertex maximum 78191986719/125000000000 |
| 59:88 | BHP | lo | 93/1000 | occupants none |
| 59:89 | BHP | hi | 397537/1000000 | earlier 58:89; BHP; hi; 397537/1000000 |
| 59:90 | BHQ | lo | 93/1000 | occupants none |
| 59:93 | BHR | hi | 1/1 | vertex maximum 1/1 |
| 59:102 | BQR | lo | 26719/250000 | earlier 58:102; BQR; lo; 26719/250000 |
| 59:109 | CEH | hi | 207983551/400000000 | vertex maximum 207983551/400000000 |
| 59:114 | CER | lo | 93/1000 | occupants none |
| 59:115 | CER | hi | 38365896357/125000000000 | vertex maximum 38365896357/125000000000 |
| 59:116 | CES | lo | 93/1000 | occupants none |
| 59:118 | CFH | lo | 279/1000 | occupants Q |
| 59:119 | CFH | hi | 1939719919/2500000000 | vertex maximum 1939719919/2500000000 |
| 59:122 | CFQ | lo | 93/1000 | occupants none |
| 59:129 | CHP | hi | 84567/125000 | earlier 58:129; CHP; hi; 84567/125000 |
| 59:130 | CHQ | lo | 93/1000 | occupants none |
| 59:133 | CHR | hi | 1/1 | vertex maximum 1/1 |
| 59:146 | EFH | lo | 279/1000 | occupants Q |
| 59:147 | EFH | hi | 42680538931/62500000000 | vertex maximum 42680538931/62500000000 |
| 59:153 | EFR | hi | 9117760239/15625000000 | vertex maximum 9117760239/15625000000 |
| 59:154 | EFS | lo | 93/1000 | occupants none |
| 59:155 | EFS | hi | 397537/1000000 | earlier 58:155; EFS; hi; 397537/1000000 |
| 59:160 | EHR | lo | 13857/20000 | occupants Q, S |
| 59:167 | EPR | hi | 96192063243/125000000000 | vertex maximum 96192063243/125000000000 |
| 59:170 | EQR | lo | 279679/1000000 | earlier 58:170; EQR; lo; 279679/1000000 |
| 59:174 | ERS | lo | 93/1000 | occupants none |
| 59:177 | FHP | hi | 553893/1000000 | earlier 58:177; FHP; hi; 553893/1000000 |
| 59:178 | FHQ | lo | 93/1000 | occupants none |
| 59:180 | FHR | lo | 93/1000 | occupants none |
| 59:192 | FRS | lo | 93/1000 | occupants none |
| 59:194 | HPQ | lo | 93/1000 | occupants none |
| 59:196 | HPR | lo | 279/1000 | occupants Q |
| 59:197 | HPR | hi | 818719/1000000 | earlier 58:197; HPR; hi; 818719/1000000 |
| 59:200 | HQR | lo | 93/1000 | occupants none |
| 59:203 | HRS | hi | 114557/200000 | earlier 58:201; HRS; hi; 114557/200000 |
| 59:204 | PQR | lo | 93/1000 | occupants none |
| 59:208 | PRS | lo | 93/1000 | occupants none |
| 59:210 | QRS | lo | 93/1000 | occupants none |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 2 | fan | BHR = BHQ + HQR + BQR | point Q |
| 18 | plu | ABE * BCH = ABC * BEH + ABH * BCE | circuit BACEH |
| 19 | plu | ACE * BCH = ABC * CEH + ACH * BCE | circuit CABEH |
| 114 | plu | AEH * BHR = ABH * EHR + AHR * BEH | circuit HABER |
| 184 | plu | AER * CEH = ACE * EHR + AEH * CER | circuit EACHR |
| 185 | plu | AEH * CHR = ACH * EHR + AHR * CEH | circuit HACER |
| 238 | plu | AHR * EFH = AEH * FHR + AFH * EHR | circuit HAEFR |
| 299 | plu | BCR * CEH = BCE * CHR + BCH * CER | circuit CBEHR |
| 300 | plu | BER * CEH = BCE * EHR + BEH * CER | circuit EBCHR |
| 301 | plu | BEH * CHR = BCH * EHR + BHR * CEH | circuit HBCER |
| 645 | plu | EFR * EHS = EFH * ERS + EFS * EHR | circuit EFHRS |
| 674 | plu | EPR * HRS = EHR * PRS + ERS * HPR | circuit REHPS |
| 1243 | support | EQR * CER >= 1023/1000 * (EQR - CQR) | pentagon RQBCE |
| 1342 | support | EQR * BER >= 1023/1000 * (EQR - BQR) | pentagon RQPBE |
| 1457 | bary | outer ABH; fans BHP, AHP, ABP; target CEP; sign 1; vertices ACE 1; BCE 1; CEH 1 | container ABH; inner P; line CE |
| 1465 | bary | outer ABH; fans BHP, AHP, ABP; target EHP; sign 1; vertices AEH 1; BEH 1; none 0 | container ABH; inner P; line EH |
| 1561 | bary | outer CFH; fans FHQ, CHQ, CFQ; target EQS; sign 1; vertices CES 1; EFS 1; EHS 1 | container CFH; inner Q; line ES |
| 1651 | bary | outer EFR; fans FRS, ERS, EFS; target CHS; sign -1; vertices CEH -1; CFH -1; CHR -1 | container EFR; inner S; line CH |
| 1653 | bary | outer EFR; fans FRS, ERS, EFS; target CQS; sign -1; vertices CEQ -1; CFQ -1; CQR -1 | container EFR; inner S; line CQ |
| 1816 | bary | outer HPR; fans PQR, HQR, HPQ; target CEQ; sign 1; vertices CEH 1; CEP 1; CER 1 | container HPR; inner Q; line CE |
| 1918 | four | -1 * BHQ + -1 * BQR + 1 * BHR + -1 * HQR = 0 | vertices BHQR |
| 1928 | four | 1 * CEH + -1 * CHR + -1 * CER + 1 * EHR = 0 | vertices CEHR |
| 1966 | four | -1 * EQR + 1 * ERS + 1 * EQS + 1 * QRS = 0 | vertices EQRS |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 59:212 | BHR | lo | 73219/250000 | 73219/250000 | 2 | 59:90, 59:200, 59:102 |
| 59:219 | BCH | lo | 22527/200000 | 17298/153575 | 18 | 59:0, 59:70, 59:6, 59:54, 59:3 |
| 59:222 | AEH | lo | 100977/500000 | 4039083/20000000 | 114 | 59:6, 59:160, 59:50, 59:70, 59:93 |
| 59:225 | CEH | lo | 96479/1000000 | 6934731/71878000 | 184 | 59:16, 59:160, 59:222, 59:114, 59:37 |
| 59:226 | AEH | lo | 202277/1000000 | 202277697/1000000000 | 185 | 59:20, 59:160, 59:50, 59:225, 59:133 |
| 59:228 | AHR | lo | 121903/1000000 | 10405851375/85361077862 | 238 | 59:226, 59:180, 59:40, 59:160, 59:147 |
| 59:230 | CEH | lo | 58417/500000 | 3045168750/26063995573 | 300 | 59:54, 59:160, 59:70, 59:114, 59:77 |
| 59:231 | BEH | lo | 112257/1000000 | 56128517167/500000000000 | 301 | 59:219, 59:160, 59:212, 59:230, 59:133 |
| 59:236 | EHS | lo | 77443/500000 | 627653125/4052337884 | 645 | 59:146, 59:174, 59:154, 59:160, 59:153 |
| 59:237 | HRS | lo | 117449/1000000 | 1255306250/10688007027 | 674 | 59:160, 59:208, 59:174, 59:196, 59:167 |
| 59:244 | BQR | lo | 108663/1000000 | 421069559739903/3875000000000000 | 1342 | 59:170, 59:77 |
| 59:248 | EHP | hi | 355631/500000 | 1080852233070809/1519626706500000 | 1465 | 59:7, 59:88, 59:46, 59:8, 59:33, 59:71 |
| 59:254 | EQS | lo | 100417/1000000 | 194782447467/1939719919000 | 1561 | 59:119, 59:178, 59:130, 59:122, 59:116, 59:154, 59:236 |
| 59:299 | BHR | lo | 294663/1000000 | 294663/1000000 | 1918 | 59:90, 59:244, 59:200 |
| 59:302 | EQR | lo | 286417/1000000 | 286417/1000000 | 1966 | 59:174, 59:254, 59:210 |
| 59:306 | BCH | lo | 29963/250000 | 18406281/153575000 | 19 | 59:0, 59:230, 59:20, 59:54, 59:17 |
| 59:311 | AEH | lo | 207547/1000000 | 103773782551/500000000000 | 185 | 59:20, 59:160, 59:228, 59:230, 59:133 |
| 59:313 | AHR | lo | 122621/1000000 | 10467115125/85361077862 | 238 | 59:311, 59:180, 59:40, 59:160, 59:147 |
| 59:316 | CEH | lo | 119697/1000000 | 3119789625/26063995573 | 300 | 59:54, 59:160, 59:231, 59:114, 59:77 |
| 59:317 | BEH | lo | 118309/1000000 | 118309735311/1000000000000 | 301 | 59:306, 59:160, 59:299, 59:316, 59:133 |
| 59:323 | CQR | lo | 50121/250000 | 8545642979372377/42625000000000000 | 1243 | 59:302, 59:115 |
| 59:324 | BQR | lo | 111281/1000000 | 431213927724369/3875000000000000 | 1342 | 59:302, 59:77 |
| 59:355 | BHR | lo | 297281/1000000 | 297281/1000000 | 1918 | 59:90, 59:324, 59:200 |
| 59:358 | BCH | lo | 60359/500000 | 37078821/307150000 | 19 | 59:0, 59:316, 59:20, 59:54, 59:17 |
| 59:363 | AEH | lo | 103991/500000 | 207982515837/1000000000000 | 185 | 59:20, 59:160, 59:313, 59:316, 59:133 |
| 59:365 | AHR | lo | 3067/25000 | 5236086000/42680538931 | 238 | 59:363, 59:180, 59:40, 59:160, 59:147 |
| 59:368 | CEH | lo | 120597/1000000 | 3143241125/26063995573 | 300 | 59:54, 59:160, 59:317, 59:114, 59:77 |
| 59:369 | BEH | lo | 11949/100000 | 119490663057/1000000000000 | 301 | 59:358, 59:160, 59:355, 59:368, 59:133 |
| 59:394 | BCH | lo | 120991/1000000 | 37162521/307150000 | 19 | 59:0, 59:368, 59:20, 59:54, 59:17 |
| 59:398 | AEH | lo | 208099/1000000 | 5202499749/25000000000 | 185 | 59:20, 59:160, 59:365, 59:368, 59:133 |
| 59:400 | AHR | lo | 15337/125000 | 10473532125/85361077862 | 238 | 59:398, 59:180, 59:40, 59:160, 59:147 |
| 59:403 | CEH | lo | 30193/250000 | 3147817500/26063995573 | 300 | 59:54, 59:160, 59:369, 59:114, 59:77 |
| 59:404 | BEH | lo | 119731/1000000 | 59865917641/500000000000 | 301 | 59:394, 59:160, 59:355, 59:403, 59:133 |
| 59:427 | BCH | lo | 30261/250000 | 9294699/76787500 | 19 | 59:0, 59:403, 59:20, 59:54, 59:17 |
| 59:431 | AEH | lo | 208123/1000000 | 13007711957/62500000000 | 185 | 59:20, 59:160, 59:400, 59:403, 59:133 |
| 59:433 | AHR | lo | 1227/10000 | 10473811125/85361077862 | 238 | 59:431, 59:180, 59:40, 59:160, 59:147 |
| 59:436 | CEH | lo | 15101/125000 | 40892875/338493449 | 300 | 59:54, 59:160, 59:404, 59:114, 59:77 |
| 59:437 | BEH | lo | 119779/1000000 | 7486203653/62500000000 | 301 | 59:427, 59:160, 59:355, 59:436, 59:133 |
| 59:440 | CEP | lo | 97431/1000000 | 296120067409/3039253413000 | 1457 | 59:7, 59:88, 59:46, 59:8, 59:16, 59:54, 59:436 |
| 59:458 | CEQ | lo | 48331/500000 | 39569547/409359500 | 1816 | 59:197, 59:204, 59:200, 59:194, 59:436, 59:440, 59:114 |
| 59:460 | BCH | lo | 24211/200000 | 2323884/19196875 | 19 | 59:0, 59:436, 59:20, 59:54, 59:17 |
| 59:468 | CEH | lo | 24163/200000 | 3148937375/26063995573 | 300 | 59:54, 59:160, 59:437, 59:114, 59:77 |
| 59:469 | BEH | lo | 29947/250000 | 23957792153/200000000000 | 301 | 59:460, 59:160, 59:355, 59:468, 59:133 |
| 59:480 | CQS | lo | 110713/1000000 | 48069558737/434179059000 | 1653 | 59:153, 59:192, 59:174, 59:154, 59:458, 59:122, 59:323 |
| 59:489 | CHR | lo | 506737/1000000 | 63342228643/125000000000 | 1928 | 59:468, 59:115, 59:160 |
| 59:490 | BCH | lo | 121057/1000000 | 7436559/61430000 | 19 | 59:0, 59:468, 59:20, 59:54, 59:17 |
| 59:493 | AEH | lo | 208129/1000000 | 416258301/2000000000 | 185 | 59:20, 59:160, 59:433, 59:468, 59:133 |
| 59:495 | BCR | lo | 112287/1000000 | 116769684/1039917755 | 299 | 59:54, 59:489, 59:490, 59:114, 59:109 |
| 59:497 | CEH | lo | 7551/62500 | 3148972250/26063995573 | 300 | 59:54, 59:160, 59:469, 59:114, 59:77 |
| 59:498 | BEH | lo | 11979/100000 | 59895321873/500000000000 | 301 | 59:490, 59:160, 59:355, 59:497, 59:133 |
| 59:506 | CHR | lo | 253369/500000 | 63342353643/125000000000 | 1928 | 59:497, 59:115, 59:160 |
| 59:507 | BER | lo | 145349/1000000 | 30230208/207983551 | 300 | 59:54, 59:160, 59:498, 59:114, 59:109 |
| 59:508 | CEH | lo | 120817/1000000 | 3148980000/26063995573 | 300 | 59:54, 59:160, 59:498, 59:114, 59:77 |
| 59:510 | CHS | lo | 51883/250000 | 210247951532807/1013084471000000 | 1651 | 59:153, 59:192, 59:174, 59:154, 59:508, 59:118, 59:506 |
