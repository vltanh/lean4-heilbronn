# BITT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 130

| Property | Value |
| --- | --- |
| Scope | root/ACP+/HBP-/HEQ-/CFQ+/PQR+/PQS+/PRS+/HRS-/BQR-/EPQ- |
| Packet | forest:root/ACP+/HBP-/HEQ-/CFQ+/PQR+/PQS+/PRS+/HRS-/BQR-/EPQ- |
| Index | 5 |
| Context | 53 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 129 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 17183/125000 | 59/125 | 17183/125000 | 59/125 |
| b | 40433/125000 | 674327/1000000 | 40433/125000 | 674327/1000000 |
| c | 13857/20000 | 1/1 | 13857/20000 | 1/1 |
| e | 17183/125000 | 59/125 | 17183/125000 | 59/125 |
| f | 40433/125000 | 674327/1000000 | 40433/125000 | 674327/1000000 |
| h | 13857/20000 | 1/1 | 13857/20000 | 1/1 |
| p | 107821/1000000 | 368091/1000000 | 107821/1000000 | 368091/1000000 |
| q | 100171/500000 | 325237/500000 | 100171/500000 | 325237/500000 |
| u | 79783/500000 | 581327/1000000 | 79783/500000 | 581327/1000000 |
| v | 25787/100000 | 679107/1000000 | 25787/100000 | 679107/1000000 |
| r | 13857/20000 | 1/1 | 13857/20000 | 1/1 |
| w | 278343/500000 | 1/1 | 278343/500000 | 1/1 |
| j | 51267/100000 | 88997/100000 | 51267/100000 | 88997/100000 |
| k | 505751/1000000 | 8033/8963 | 505751/1000000 | 8033/8963 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 6 | AC_ABF_ABF_0 | bitt ["anchor-cap","ABF","ABF",0,[]] | `-93/1000 + 1/1 * f` |
| 9 | AC_ABH_ABH_1 | bitt ["anchor-cap","ABH","ABH",1,["P"]] | `-279/1000 + 1/1 * h + -1/1 * a` |
| 18 | AC_ACF_ACF_0 | bitt ["anchor-cap","ACF","ACF",0,[]] | `-93/1000 + 1/1 * c` |
| 26 | AC_AEF_AEF_0 | bitt ["anchor-cap","AEF","AEF",0,[]] | `907/1000 + -1/1 * a` |
| 38 | AC_BCH_BCH_0 | bitt ["anchor-cap","BCH","BCH",0,[]] | `-93/1000 + 1/1 * h` |
| 44 | AC_BEF_BEF_0 | bitt ["anchor-cap","BEF","BEF",0,[]] | `907/1000 + -1/1 * b` |
| 68 | AC_CEF_CEF_0 | bitt ["anchor-cap","CEF","CEF",0,[]] | `907/1000 + -1/1 * f` |
| 90 | AC_EFH_EFH_0 | bitt ["anchor-cap","EFH","EFH",0,[]] | `907/1000 + -1/1 * e` |
| 125 | ha | bitt ["contact-order","ha"] | `1/1 * h + -1/1 * a` |
| 126 | ea | bitt ["contact-order","ea"] | `1/1 * e + -1/1 * a` |
| 128 | fb | bitt ["contact-order","fb"] | `1/1 * f + -1/1 * b` |
| 129 | cf | bitt ["contact-order","cf"] | `1/1 * c + -1/1 * f` |
| 130 | sym | bitt ["contact-order","sym"] | `1/1 * f + -1/1 * e` |
| 131 | lower-area | bitt ["endpoint-lower","13857/20000"] | `1/1 * c * h + -13857/20000` |
| 132 | lower-quad | bitt ["lower-quad","BITT"] | `1/1 * c * h + -1/1 * a * b + -279/625` |
| 133 | upper-quad | bitt ["upper-quad","BITT"] | `346/625 + -1/1 * c * h + 1/1 * f * h + 1/1 * c * e + -1/1 * e * f` |
| 134 | top-area | bitt ["top-hull","-"] | `721/1000 + -1/1 * f + -1/1 * e + 1/1 * e * f` |
| 138 | WBARY_RS_0 | bitt ["weighted-barycentric","R","S",["1/1","1/1","1/1"],"3039253413/484375000",0] | `3039253413/484375000 * j + -1/1 + -2070503413/484375000 * f + -1/1 * r` |
| 141 | WBARY_RS_3 | bitt ["weighted-barycentric","R","S",["1/1","1/1","1/1"],"3039253413/484375000",3] | `2070503413/484375000 + 1/1 * e + 1/1 * w + -3039253413/484375000 * k` |
| 197 | SUP_BEH_BCH_CEH | bitt ["support-envelope",["quad","HBCE",["Q"],"149/20"],"BEH","BCH","CEH","6478211/7812500"] | `8522563/62500000 * c * h + -8522563/62500000 * b * h + -13857/20000 * b * e + 13857/20000 * c * e` |
| 273 | SUP_BFP_BPR_FPR | bitt ["support-envelope",["quad","PBRF",["Q","S"],"12/1"],"BFP","BPR","FPR","283253/500000"] | `274747/500000 * p * w + 283253/500000 * b * w + -274747/500000 * q * r + 274747/500000 * b * q + -279/250 * b + -279/250 * f * w + 279/250 * r` |
| 310 | SUP_CEH_CER_CHR | bitt ["support-envelope",["quad","CERH",["Q","S"],"199/10"],"CEH","CER","CHR","792719/1250000"] | `792719/1250000 * w + 95041/78125 * c * w + -792719/1250000 * e * r + -95041/78125 * c * e + -18507/10000 * h + 18507/10000 * h * r` |
| 331 | SUP_CFR_FHR_CHR | bitt ["support-envelope",["quad","RFHC",["Q","S"],"199/10"],"CFR","FHR","CHR","84567/125000"] | `293541/250000 * f * w + 293541/250000 * h * r + 84567/125000 * f * h + -293541/250000 * r + 18507/10000 * c + -18507/10000 * c * h` |
| 332 | SUP_FHR_CFH_CFR | bitt ["support-envelope",["quad","FHCR",["Q","S"],"199/10"],"FHR","CFH","CFR","99742265407/250000000000"] | `-362932734593/250000000000 * f * h + -99742265407/250000000000 * c * h + -362932734593/250000000000 * c + 18507/10000 * h * r + 18507/10000 * c * w` |
| 411 | SUP_HPQ_PQR_HPR | bitt ["support-envelope",["quad","PQRH",["S"],"12/1"],"HPQ","PQR","HPR","430263782013/1000000000000"] | `430263782013/1000000000000 * u * w + 685736217987/1000000000000 * q * u + 685736217987/1000000000000 * p * w + -430263782013/1000000000000 * v * r + -685736217987/1000000000000 * p * v + -685736217987/1000000000000 * q * r + -279/250 * h * u + 279/250 * h * r` |
| 417 | SUP_CEF_BCE_BEF | bitt ["support-envelope",["pentagon","EFABC"],"CEF","BCE","BEF","15046881/31250000"] | `-16921869/31250000 * c * e + 16921869/31250000 * b * e + 1023/1000 * c + -1023/1000 * b` |
| 425 | SUP_CER_BCE_BER | bitt ["support-envelope",["pentagon","ERABC"],"CER","BCE","BER","6143/20000"] | `-14317/20000 * c * e + 14317/20000 * b * e + 1023/1000 * c * w + -1023/1000 * b * w` |
| 482 | SUP_CER_ACE_AER | bitt ["support-envelope",["pentagon","ERFAC"],"CER","ACE","AER","6143/20000"] | `-14317/20000 * c * e + -6143/20000 * a * c + -14317/20000 * a + 1023/1000 * c * w + 1023/1000 * a * r` |
| 502 | SUP_EFS_AES_AFS | bitt ["support-envelope",["pentagon","SFHAE"],"EFS","AES","AFS","234401782227063/560187500000000"] | `-338670030272937/560187500000000 * k + -234401782227063/560187500000000 * a + 338670030272937/560187500000000 * e * j + -338670030272937/560187500000000 * a * j + -1023/1000 * e * f + 1023/1000 + 1023/1000 * a * f` |
| 510 | SUP_BFP_EFP_BEP | bitt ["support-envelope",["pentagon","PBCEF"],"BFP","EFP","BEP","283253/500000"] | `-228247/500000 * f * q + -283253/500000 * e * f + 228247/500000 * q + 228247/500000 * p + 283253/500000 + -228247/500000 * e * p + -1023/1000 * b + 1023/1000 * b * e` |
| 535 | SUP_EPS_CES_CPS | bitt ["support-envelope",["pentagon","SPBCE"],"EPS","CES","CPS","1501404754742663/2240750000000000"] | `-790882495257337/2240750000000000 * k + 790882495257337/2240750000000000 * c * k + 790882495257337/2240750000000000 * e * j + 1501404754742663/2240750000000000 * c * e + -1023/1000 * e * p + 1023/1000 * q + -1023/1000 * c * q` |
| 548 | SUP_FHP_CFH_CHP | bitt ["support-envelope",["pentagon","HPBCF"],"FHP","CFH","CHP","269615490083/500000000000"] | `-241884509917/500000000000 * f * h + 241884509917/500000000000 * c * h + 269615490083/500000000000 * c + 1023/1000 * f * q + -1023/1000 * p + -1023/1000 * c * q` |
| 592 | SUP_BES_BEQ_EQS | bitt ["support-envelope",["pentagon","ESFQB"],"BES","BEQ","EQS","325093431202913/560187500000000"] | `-247978381297087/560187500000000 * v + -325093431202913/560187500000000 * b * v + 247978381297087/560187500000000 * e * u + -247978381297087/560187500000000 * b * e + 1023/1000 * b * k + -1023/1000 * u * k + 1023/1000 * v * j` |
| 613 | SUP_CES_CEH_EHS | bitt ["support-envelope",["pentagon","ESFHC"],"CES","CEH","EHS","40369924081/112037500000"] | `-74244438419/112037500000 * h + -40369924081/112037500000 * c * h + -74244438419/112037500000 * c * e + 1023/1000 * c * k + 1023/1000 * h * j` |
| 639 | SUP_EFS_EPS_FPS | bitt ["support-envelope",["pentagon","SFHPE"],"EFS","EPS","FPS","234401782227063/560187500000000"] | `338670030272937/560187500000000 * p * k + 234401782227063/560187500000000 * e * p + -338670030272937/560187500000000 * k + -338670030272937/560187500000000 * q * j + -234401782227063/560187500000000 * q + 338670030272937/560187500000000 * e * j + -1023/1000 * e * f + 1023/1000 + -1023/1000 * p + 1023/1000 * f * q` |
| 645 | SUP_EFS_EQS_FQS | bitt ["support-envelope",["pentagon","SFHQE"],"EFS","EQS","FQS","234401782227063/560187500000000"] | `338670030272937/560187500000000 * u * k + 234401782227063/560187500000000 * e * u + -338670030272937/560187500000000 * k + -338670030272937/560187500000000 * v * j + -234401782227063/560187500000000 * v + 338670030272937/560187500000000 * e * j + -1023/1000 * e * f + 1023/1000 + -1023/1000 * u + 1023/1000 * f * v` |
| 646 | SUP_FHQ_FHS_HQS | bitt ["support-envelope",["pentagon","HQESF"],"FHQ","FHS","HQS","50043829651/100000000000"] | `-50043829651/100000000000 * f * k + 52256170349/100000000000 * h * j + -52256170349/100000000000 * f * h + 50043829651/100000000000 * j + 1023/1000 * f * v + -1023/1000 * u + 1023/1000 * u * k + -1023/1000 * v * j` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |


### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 130:0 | ABC | lo | 93/1000 | occupants none |
| 130:2 | ABE | lo | 93/1000 | occupants none |
| 130:3 | ABE | hi | 59/125 | vertex maximum 59/125 |
| 130:5 | ABF | hi | 674327/1000000 | vertex maximum 674327/1000000 |
| 130:6 | ABH | lo | 279/1000 | occupants P |
| 130:7 | ABH | hi | 72703914159/125000000000 | vertex maximum 72703914159/125000000000 |
| 130:8 | ABP | lo | 93/1000 | occupants none |
| 130:9 | ABP | hi | 24727/62500 | earlier 129:220; ABP; hi; 24727/62500 |
| 130:10 | ABQ | lo | 569/4000 | earlier 129:10; ABQ; lo; 569/4000 |
| 130:12 | ABR | lo | 79721/500000 | earlier 129:12; ABR; lo; 79721/500000 |
| 130:13 | ABR | hi | 51752791/62500000 | vertex maximum 51752791/62500000 |
| 130:15 | ABS | hi | 686509/1000000 | earlier 129:230; ABS; hi; 686509/1000000 |
| 130:16 | ACE | lo | 93/1000 | occupants none |
| 130:17 | ACE | hi | 59/125 | vertex maximum 59/125 |
| 130:18 | ACF | lo | 2537/15625 | earlier 129:226; ACF; lo; 2537/15625 |
| 130:21 | ACH | hi | 107817/125000 | vertex maximum 107817/125000 |
| 130:22 | ACP | lo | 93/1000 | occupants none |
| 130:23 | ACP | hi | 70451157653/125000000000 | vertex maximum 70451157653/125000000000 |
| 130:26 | ACR | lo | 79721/500000 | earlier 129:26; ACR; lo; 79721/500000 |
| 130:27 | ACR | hi | 1/1 | vertex maximum 1/1 |
| 130:30 | AEF | lo | 117353/1000000 | earlier 129:227; AEF; lo; 117353/1000000 |
| 130:31 | AEF | hi | 107817/125000 | vertex maximum 107817/125000 |
| 130:33 | AEH | hi | 107817/125000 | vertex maximum 107817/125000 |
| 130:34 | AER | lo | 93/1000 | occupants none |
| 130:35 | AER | hi | 107817/125000 | vertex maximum 107817/125000 |
| 130:37 | AES | hi | 45317/62500 | earlier 129:37; AES; hi; 45317/62500 |
| 130:38 | AFH | lo | 93/1000 | occupants none |
| 130:39 | AFH | hi | 72703914159/125000000000 | vertex maximum 72703914159/125000000000 |
| 130:40 | AFR | lo | 93/1000 | occupants none |
| 130:43 | AFS | hi | 117733/200000 | earlier 129:43; AFS; hi; 117733/200000 |
| 130:44 | AHP | lo | 93/1000 | occupants none |
| 130:48 | AHR | lo | 193933/1000000 | earlier 129:225; AHR; lo; 193933/1000000 |
| 130:49 | AHR | hi | 107817/125000 | vertex maximum 107817/125000 |
| 130:52 | BCE | lo | 93/1000 | occupants none |
| 130:53 | BCE | hi | 4989453/15625000 | vertex maximum 4989453/15625000 |
| 130:54 | BCF | lo | 93/1000 | occupants none |
| 130:55 | BCF | hi | 84567/125000 | vertex maximum 84567/125000 |
| 130:56 | BCH | lo | 119661/1000000 | earlier 129:56; BCH; lo; 119661/1000000 |
| 130:57 | BCH | hi | 84567/125000 | vertex maximum 84567/125000 |
| 130:58 | BCP | lo | 93/1000 | occupants none |
| 130:60 | BCQ | lo | 96447/1000000 | earlier 129:60; BCQ; lo; 96447/1000000 |
| 130:61 | BCQ | hi | 57430041669/125000000000 | vertex maximum 57430041669/125000000000 |
| 130:62 | BCR | lo | 7447/62500 | earlier 129:62; BCR; lo; 7447/62500 |
| 130:63 | BCR | hi | 84567/125000 | vertex maximum 84567/125000 |
| 130:66 | BEF | lo | 13229/100000 | earlier 129:66; BEF; lo; 13229/100000 |
| 130:68 | BEH | lo | 288833/1000000 | earlier 129:68; BEH; lo; 288833/1000000 |
| 130:70 | BEP | lo | 58469/500000 | earlier 129:70; BEP; lo; 58469/500000 |
| 130:71 | BEP | hi | 33865785879/62500000000 | vertex maximum 33865785879/62500000000 |
| 130:72 | BEQ | lo | 93/1000 | occupants none |
| 130:74 | BER | lo | 25089/250000 | earlier 129:74; BER; lo; 25089/250000 |
| 130:75 | BER | hi | 39109920181/62500000000 | vertex maximum 39109920181/62500000000 |
| 130:76 | BES | lo | 31051/250000 | earlier 129:76; BES; lo; 31051/250000 |
| 130:78 | BFH | lo | 64621/200000 | earlier 129:234; BFH; lo; 64621/200000 |
| 130:79 | BFH | hi | 674327/1000000 | vertex maximum 674327/1000000 |
| 130:80 | BFP | lo | 76559/250000 | earlier 129:80; BFP; lo; 76559/250000 |
| 130:81 | BFP | hi | 283253/500000 | vertex maximum 283253/500000 |
| 130:82 | BFQ | lo | 93/1000 | occupants none |
| 130:83 | BFQ | hi | 168373/500000 | earlier 129:83; BFQ; hi; 168373/500000 |
| 130:84 | BFR | lo | 19247/62500 | earlier 129:84; BFR; lo; 19247/62500 |
| 130:85 | BFR | hi | 84567/125000 | vertex maximum 84567/125000 |
| 130:86 | BFS | lo | 93/1000 | occupants none |
| 130:87 | BFS | hi | 105263/250000 | earlier 129:87; BFS; hi; 105263/250000 |
| 130:88 | BHP | lo | 93/1000 | occupants none |
| 130:90 | BHQ | lo | 102833/1000000 | earlier 129:90; BHQ; lo; 102833/1000000 |
| 130:92 | BHR | lo | 13857/20000 | occupants Q, S |
| 130:93 | BHR | hi | 1/1 | vertex maximum 1/1 |
| 130:96 | BPQ | lo | 30059/250000 | earlier 129:96; BPQ; lo; 30059/250000 |
| 130:97 | BPQ | hi | 183043192071/500000000000 | vertex maximum 183043192071/500000000000 |
| 130:98 | BPR | lo | 44469/125000 | earlier 129:98; BPR; lo; 44469/125000 |
| 130:99 | BPR | hi | 389173909501/500000000000 | vertex maximum 389173909501/500000000000 |
| 130:102 | BQR | lo | 35629/250000 | earlier 129:102; BQR; lo; 35629/250000 |
| 130:103 | BQR | hi | 17121/31250 | earlier 129:103; BQR; hi; 17121/31250 |
| 130:104 | BQS | lo | 100891/1000000 | earlier 129:104; BQS; lo; 100891/1000000 |
| 130:106 | BRS | lo | 3811/31250 | earlier 129:106; BRS; lo; 3811/31250 |
| 130:107 | BRS | hi | 444899/1000000 | earlier 129:107; BRS; hi; 444899/1000000 |
| 130:108 | CEF | lo | 128623/1000000 | earlier 129:108; CEF; lo; 128623/1000000 |
| 130:110 | CEH | lo | 315057/1000000 | earlier 129:110; CEH; lo; 315057/1000000 |
| 130:111 | CEH | hi | 792719/1250000 | vertex maximum 792719/1250000 |
| 130:112 | CEP | lo | 25701/200000 | earlier 129:112; CEP; lo; 25701/200000 |
| 130:114 | CEQ | lo | 129057/1000000 | earlier 129:114; CEQ; lo; 129057/1000000 |
| 130:116 | CER | lo | 93/1000 | occupants none |
| 130:117 | CER | hi | 6143/20000 | vertex maximum 6143/20000 |
| 130:119 | CES | hi | 40369924081/112037500000 | vertex maximum 40369924081/112037500000 |
| 130:120 | CFH | lo | 314937/1000000 | earlier 129:235; CFH; lo; 314937/1000000 |
| 130:121 | CFH | hi | 15487149239/20000000000 | vertex maximum 15487149239/20000000000 |
| 130:124 | CFQ | lo | 18933/200000 | earlier 129:124; CFQ; lo; 18933/200000 |
| 130:125 | CFQ | hi | 84907/200000 | earlier 129:125; CFQ; hi; 84907/200000 |
| 130:126 | CFR | lo | 31529/100000 | earlier 129:126; CFR; lo; 31529/100000 |
| 130:127 | CFR | hi | 84567/125000 | vertex maximum 84567/125000 |
| 130:128 | CFS | lo | 93/1000 | occupants none |
| 130:129 | CFS | hi | 210379/500000 | earlier 129:129; CFS; hi; 210379/500000 |
| 130:130 | CHP | lo | 106259/1000000 | earlier 129:130; CHP; lo; 106259/1000000 |
| 130:131 | CHP | hi | 84567/125000 | earlier 129:131; CHP; hi; 84567/125000 |
| 130:132 | CHQ | lo | 93/1000 | occupants none |
| 130:133 | CHQ | hi | 245781609/625000000 | vertex maximum 245781609/625000000 |
| 130:134 | CHR | lo | 13857/20000 | occupants Q, S |
| 130:135 | CHR | hi | 1/1 | vertex maximum 1/1 |
| 130:136 | CHS | lo | 75037/200000 | earlier 129:236; CHS; lo; 75037/200000 |
| 130:137 | CHS | hi | 755043/1000000 | earlier 129:137; CHS; hi; 755043/1000000 |
| 130:138 | CPQ | lo | 9767/100000 | earlier 129:138; CPQ; lo; 9767/100000 |
| 130:139 | CPQ | hi | 497459/1000000 | earlier 129:232; CPQ; hi; 497459/1000000 |
| 130:140 | CPR | lo | 209427/500000 | earlier 129:140; CPR; lo; 209427/500000 |
| 130:141 | CPR | hi | 892179/1000000 | vertex maximum 892179/1000000 |
| 130:142 | CPS | lo | 324689/1000000 | earlier 129:142; CPS; lo; 324689/1000000 |
| 130:144 | CQR | lo | 28523/125000 | earlier 129:144; CQR; lo; 28523/125000 |
| 130:145 | CQR | hi | 586107/1000000 | earlier 129:145; CQR; hi; 586107/1000000 |
| 130:148 | CRS | lo | 12929/100000 | earlier 129:148; CRS; lo; 12929/100000 |
| 130:149 | CRS | hi | 55759/125000 | earlier 129:149; CRS; hi; 55759/125000 |
| 130:151 | EFH | hi | 340830887611/500000000000 | vertex maximum 340830887611/500000000000 |
| 130:152 | EFP | lo | 12243/40000 | earlier 129:152; EFP; lo; 12243/40000 |
| 130:153 | EFP | hi | 14981176781/20000000000 | vertex maximum 14981176781/20000000000 |
| 130:156 | EFR | lo | 56181/200000 | earlier 129:156; EFR; lo; 56181/200000 |
| 130:157 | EFR | hi | 9117760239/15625000000 | vertex maximum 9117760239/15625000000 |
| 130:158 | EFS | lo | 93/1000 | occupants none |
| 130:160 | EHP | lo | 279/1000 | occupants Q |
| 130:161 | EHP | hi | 719293/1000000 | earlier 129:161; EHP; hi; 719293/1000000 |
| 130:162 | EHQ | lo | 93/1000 | occupants none |
| 130:163 | EHQ | hi | 100613/250000 | earlier 129:163; EHQ; hi; 100613/250000 |
| 130:164 | EHR | lo | 150737/500000 | earlier 129:164; EHR; lo; 150737/500000 |
| 130:165 | EHR | hi | 107817/125000 | vertex maximum 107817/125000 |
| 130:166 | EHS | lo | 55649/500000 | earlier 129:166; EHS; lo; 55649/500000 |
| 130:167 | EHS | hi | 122691/200000 | earlier 129:167; EHS; hi; 122691/200000 |
| 130:168 | EPQ | lo | 93/1000 | occupants none |
| 130:170 | EPR | lo | 368733/1000000 | earlier 129:170; EPR; lo; 368733/1000000 |
| 130:171 | EPR | hi | 96192063243/125000000000 | vertex maximum 96192063243/125000000000 |
| 130:175 | EQR | hi | 583537/1000000 | earlier 129:175; EQR; hi; 583537/1000000 |
| 130:177 | EQS | hi | 228087/500000 | earlier 129:177; EQS; hi; 228087/500000 |
| 130:178 | ERS | lo | 18981/200000 | earlier 129:178; ERS; lo; 18981/200000 |
| 130:179 | ERS | hi | 397537/1000000 | earlier 129:179; ERS; hi; 397537/1000000 |
| 130:180 | FHP | lo | 93/1000 | occupants none |
| 130:182 | FHQ | lo | 15909/125000 | earlier 129:233; FHQ; lo; 15909/125000 |
| 130:184 | FHR | lo | 93/1000 | occupants none |
| 130:186 | FHS | lo | 93/1000 | occupants none |
| 130:187 | FHS | hi | 379829/1000000 | earlier 129:187; FHS; hi; 379829/1000000 |
| 130:188 | FPQ | lo | 93/1000 | occupants none |
| 130:190 | FPR | lo | 56601/200000 | earlier 129:190; FPR; lo; 56601/200000 |
| 130:192 | FPS | lo | 19401/200000 | earlier 129:192; FPS; lo; 19401/200000 |
| 130:194 | FQR | lo | 279517/1000000 | earlier 129:194; FQR; lo; 279517/1000000 |
| 130:195 | FQR | hi | 526391/1000000 | earlier 129:195; FQR; hi; 526391/1000000 |
| 130:196 | FQS | lo | 93517/1000000 | earlier 129:196; FQS; lo; 93517/1000000 |
| 130:198 | FRS | lo | 93/1000 | occupants none |
| 130:200 | HPQ | lo | 93/1000 | occupants none |
| 130:202 | HPR | lo | 174763/500000 | earlier 129:202; HPR; lo; 174763/500000 |
| 130:204 | HPS | lo | 81763/500000 | earlier 129:204; HPS; lo; 81763/500000 |
| 130:206 | HQR | lo | 320893/1000000 | earlier 129:206; HQR; lo; 320893/1000000 |
| 130:208 | HQS | lo | 134893/1000000 | earlier 129:208; HQS; lo; 134893/1000000 |
| 130:210 | HRS | lo | 93/1000 | occupants none |
| 130:211 | HRS | hi | 21093/50000 | earlier 129:211; HRS; hi; 21093/50000 |
| 130:212 | PQR | lo | 93/1000 | occupants none |
| 130:214 | PQS | lo | 93/1000 | occupants none |
| 130:216 | PRS | lo | 93/1000 | occupants none |
| 130:218 | QRS | lo | 93/1000 | occupants none |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |


### Coordinate certificate sources

| Source | Kind | Source witness | Polynomial |
| --- | --- | --- | --- |
| 0 | bound | `{"direction":"lo","ref":"130:0","triangle":"ABC","value":"93/1000"}` | `-1 * a * b + 1 * a * c + -93/1000` |
| 2 | bound | `{"direction":"lo","ref":"130:2","triangle":"ABE","value":"93/1000"}` | `1 * b * e + -1 * a * b + 1 * a + -93/1000` |
| 3 | bound | `{"direction":"hi","ref":"130:3","triangle":"ABE","value":"59/125"}` | `59/125 + -1 * b * e + 1 * a * b + -1 * a` |
| 5 | bound | `{"direction":"hi","ref":"130:5","triangle":"ABF","value":"674327/1000000"}` | `674327/1000000 + -1 * b + 1 * a * b + -1 * a * f` |
| 6 | bound | `{"direction":"lo","ref":"130:6","triangle":"ABH","value":"279/1000"}` | `1 * b * h + -1 * a * b + -279/1000` |
| 7 | bound | `{"direction":"hi","ref":"130:7","triangle":"ABH","value":"72703914159/125000000000"}` | `72703914159/125000000000 + -1 * b * h + 1 * a * b` |
| 8 | bound | `{"direction":"lo","ref":"130:8","triangle":"ABP","value":"93/1000"}` | `1 * b * q + -1 * a * b + 1 * a * p + -93/1000` |
| 9 | bound | `{"direction":"hi","ref":"130:9","triangle":"ABP","value":"24727/62500"}` | `24727/62500 + -1 * b * q + 1 * a * b + -1 * a * p` |
| 10 | bound | `{"direction":"lo","ref":"130:10","triangle":"ABQ","value":"569/4000"}` | `1 * b * v + -1 * a * b + 1 * a * u + -569/4000` |
| 12 | bound | `{"direction":"lo","ref":"130:12","triangle":"ABR","value":"79721/500000"}` | `1 * b * w + -1 * a * b + 1 * a * r + -79721/500000` |
| 13 | bound | `{"direction":"hi","ref":"130:13","triangle":"ABR","value":"51752791/62500000"}` | `51752791/62500000 + -1 * b * w + 1 * a * b + -1 * a * r` |
| 15 | bound | `{"direction":"hi","ref":"130:15","triangle":"ABS","value":"686509/1000000"}` | `686509/1000000 + -1 * b * k + 1 * a * b + -1 * a * j` |
| 16 | bound | `{"direction":"lo","ref":"130:16","triangle":"ACE","value":"93/1000"}` | `1 * c * e + -1 * a * c + 1 * a + -93/1000` |
| 17 | bound | `{"direction":"hi","ref":"130:17","triangle":"ACE","value":"59/125"}` | `59/125 + -1 * c * e + 1 * a * c + -1 * a` |
| 18 | bound | `{"direction":"lo","ref":"130:18","triangle":"ACF","value":"2537/15625"}` | `1 * c + -1 * a * c + 1 * a * f + -2537/15625` |
| 21 | bound | `{"direction":"hi","ref":"130:21","triangle":"ACH","value":"107817/125000"}` | `107817/125000 + -1 * c * h + 1 * a * c` |
| 22 | bound | `{"direction":"lo","ref":"130:22","triangle":"ACP","value":"93/1000"}` | `1 * c * q + -1 * a * c + 1 * a * p + -93/1000` |
| 23 | bound | `{"direction":"hi","ref":"130:23","triangle":"ACP","value":"70451157653/125000000000"}` | `70451157653/125000000000 + -1 * c * q + 1 * a * c + -1 * a * p` |
| 26 | bound | `{"direction":"lo","ref":"130:26","triangle":"ACR","value":"79721/500000"}` | `1 * c * w + -1 * a * c + 1 * a * r + -79721/500000` |
| 27 | bound | `{"direction":"hi","ref":"130:27","triangle":"ACR","value":"1/1"}` | `1 + -1 * c * w + 1 * a * c + -1 * a * r` |
| 30 | bound | `{"direction":"lo","ref":"130:30","triangle":"AEF","value":"117353/1000000"}` | `882647/1000000 + -1 * a + -1 * e * f + 1 * a * f` |
| 31 | bound | `{"direction":"hi","ref":"130:31","triangle":"AEF","value":"107817/125000"}` | `-17183/125000 + 1 * a + 1 * e * f + -1 * a * f` |
| 33 | bound | `{"direction":"hi","ref":"130:33","triangle":"AEH","value":"107817/125000"}` | `107817/125000 + -1 * h + 1 * a` |
| 34 | bound | `{"direction":"lo","ref":"130:34","triangle":"AER","value":"93/1000"}` | `1 * w + -1 * a + -1 * e * r + 1 * a * r + -93/1000` |
| 35 | bound | `{"direction":"hi","ref":"130:35","triangle":"AER","value":"107817/125000"}` | `107817/125000 + -1 * w + 1 * a + 1 * e * r + -1 * a * r` |
| 37 | bound | `{"direction":"hi","ref":"130:37","triangle":"AES","value":"45317/62500"}` | `45317/62500 + -1 * k + 1 * a + 1 * e * j + -1 * a * j` |
| 38 | bound | `{"direction":"lo","ref":"130:38","triangle":"AFH","value":"93/1000"}` | `1 * f * h + -1 * a * f + -93/1000` |
| 39 | bound | `{"direction":"hi","ref":"130:39","triangle":"AFH","value":"72703914159/125000000000"}` | `72703914159/125000000000 + -1 * f * h + 1 * a * f` |
| 40 | bound | `{"direction":"lo","ref":"130:40","triangle":"AFR","value":"93/1000"}` | `-1 * f * w + 1 * a * f + 1 * r + -1 * a * r + -93/1000` |
| 43 | bound | `{"direction":"hi","ref":"130:43","triangle":"AFS","value":"117733/200000"}` | `117733/200000 + 1 * f * k + -1 * a * f + -1 * j + 1 * a * j` |
| 44 | bound | `{"direction":"lo","ref":"130:44","triangle":"AHP","value":"93/1000"}` | `1 * h * p + -1 * a * p + -93/1000` |
| 48 | bound | `{"direction":"lo","ref":"130:48","triangle":"AHR","value":"193933/1000000"}` | `1 * h * r + -1 * a * r + -193933/1000000` |
| 49 | bound | `{"direction":"hi","ref":"130:49","triangle":"AHR","value":"107817/125000"}` | `107817/125000 + -1 * h * r + 1 * a * r` |
| 52 | bound | `{"direction":"lo","ref":"130:52","triangle":"BCE","value":"93/1000"}` | `1 * c * e + -1 * b * e + -93/1000` |
| 53 | bound | `{"direction":"hi","ref":"130:53","triangle":"BCE","value":"4989453/15625000"}` | `4989453/15625000 + -1 * c * e + 1 * b * e` |
| 54 | bound | `{"direction":"lo","ref":"130:54","triangle":"BCF","value":"93/1000"}` | `1 * c + -1 * b + -93/1000` |
| 55 | bound | `{"direction":"hi","ref":"130:55","triangle":"BCF","value":"84567/125000"}` | `84567/125000 + -1 * c + 1 * b` |
| 56 | bound | `{"direction":"lo","ref":"130:56","triangle":"BCH","value":"119661/1000000"}` | `1 * c * h + -1 * b * h + -119661/1000000` |
| 57 | bound | `{"direction":"hi","ref":"130:57","triangle":"BCH","value":"84567/125000"}` | `84567/125000 + -1 * c * h + 1 * b * h` |
| 58 | bound | `{"direction":"lo","ref":"130:58","triangle":"BCP","value":"93/1000"}` | `1 * c * q + -1 * b * q + -93/1000` |
| 60 | bound | `{"direction":"lo","ref":"130:60","triangle":"BCQ","value":"96447/1000000"}` | `1 * c * v + -1 * b * v + -96447/1000000` |
| 61 | bound | `{"direction":"hi","ref":"130:61","triangle":"BCQ","value":"57430041669/125000000000"}` | `57430041669/125000000000 + -1 * c * v + 1 * b * v` |
| 62 | bound | `{"direction":"lo","ref":"130:62","triangle":"BCR","value":"7447/62500"}` | `1 * c * w + -1 * b * w + -7447/62500` |
| 63 | bound | `{"direction":"hi","ref":"130:63","triangle":"BCR","value":"84567/125000"}` | `84567/125000 + -1 * c * w + 1 * b * w` |
| 66 | bound | `{"direction":"lo","ref":"130:66","triangle":"BEF","value":"13229/100000"}` | `86771/100000 + -1 * b + -1 * e * f + 1 * b * e` |
| 68 | bound | `{"direction":"lo","ref":"130:68","triangle":"BEH","value":"288833/1000000"}` | `1 * h + -1 * b * h + 1 * b * e + -288833/1000000` |
| 70 | bound | `{"direction":"lo","ref":"130:70","triangle":"BEP","value":"58469/500000"}` | `1 * q + -1 * b * q + -1 * e * p + 1 * b * e + -58469/500000` |
| 71 | bound | `{"direction":"hi","ref":"130:71","triangle":"BEP","value":"33865785879/62500000000"}` | `33865785879/62500000000 + -1 * q + 1 * b * q + 1 * e * p + -1 * b * e` |
| 72 | bound | `{"direction":"lo","ref":"130:72","triangle":"BEQ","value":"93/1000"}` | `1 * v + -1 * b * v + -1 * e * u + 1 * b * e + -93/1000` |
| 74 | bound | `{"direction":"lo","ref":"130:74","triangle":"BER","value":"25089/250000"}` | `1 * w + -1 * b * w + -1 * e * r + 1 * b * e + -25089/250000` |
| 75 | bound | `{"direction":"hi","ref":"130:75","triangle":"BER","value":"39109920181/62500000000"}` | `39109920181/62500000000 + -1 * w + 1 * b * w + 1 * e * r + -1 * b * e` |
| 76 | bound | `{"direction":"lo","ref":"130:76","triangle":"BES","value":"31051/250000"}` | `1 * k + -1 * b * k + -1 * e * j + 1 * b * e + -31051/250000` |
| 78 | bound | `{"direction":"lo","ref":"130:78","triangle":"BFH","value":"64621/200000"}` | `1 * f * h + -1 * b * h + 1 * b + -64621/200000` |
| 79 | bound | `{"direction":"hi","ref":"130:79","triangle":"BFH","value":"674327/1000000"}` | `674327/1000000 + -1 * f * h + 1 * b * h + -1 * b` |
| 80 | bound | `{"direction":"lo","ref":"130:80","triangle":"BFP","value":"76559/250000"}` | `1 * f * q + -1 * b * q + -1 * p + 1 * b + -76559/250000` |
| 81 | bound | `{"direction":"hi","ref":"130:81","triangle":"BFP","value":"283253/500000"}` | `283253/500000 + -1 * f * q + 1 * b * q + 1 * p + -1 * b` |
| 82 | bound | `{"direction":"lo","ref":"130:82","triangle":"BFQ","value":"93/1000"}` | `1 * f * v + -1 * b * v + -1 * u + 1 * b + -93/1000` |
| 83 | bound | `{"direction":"hi","ref":"130:83","triangle":"BFQ","value":"168373/500000"}` | `168373/500000 + -1 * f * v + 1 * b * v + 1 * u + -1 * b` |
| 84 | bound | `{"direction":"lo","ref":"130:84","triangle":"BFR","value":"19247/62500"}` | `-1 * f * w + 1 * b * w + 1 * r + -1 * b + -19247/62500` |
| 85 | bound | `{"direction":"hi","ref":"130:85","triangle":"BFR","value":"84567/125000"}` | `84567/125000 + 1 * f * w + -1 * b * w + -1 * r + 1 * b` |
| 86 | bound | `{"direction":"lo","ref":"130:86","triangle":"BFS","value":"93/1000"}` | `-1 * f * k + 1 * b * k + 1 * j + -1 * b + -93/1000` |
| 87 | bound | `{"direction":"hi","ref":"130:87","triangle":"BFS","value":"105263/250000"}` | `105263/250000 + 1 * f * k + -1 * b * k + -1 * j + 1 * b` |
| 88 | bound | `{"direction":"lo","ref":"130:88","triangle":"BHP","value":"93/1000"}` | `-1 * b * q + -1 * h * p + 1 * b * h + -93/1000` |
| 90 | bound | `{"direction":"lo","ref":"130:90","triangle":"BHQ","value":"102833/1000000"}` | `1 * b * v + 1 * h * u + -1 * b * h + -102833/1000000` |
| 92 | bound | `{"direction":"lo","ref":"130:92","triangle":"BHR","value":"13857/20000"}` | `1 * b * w + 1 * h * r + -1 * b * h + -13857/20000` |
| 93 | bound | `{"direction":"hi","ref":"130:93","triangle":"BHR","value":"1/1"}` | `1 + -1 * b * w + -1 * h * r + 1 * b * h` |
| 96 | bound | `{"direction":"lo","ref":"130:96","triangle":"BPQ","value":"30059/250000"}` | `-1 * p * v + 1 * b * v + 1 * q * u + -1 * b * q + -30059/250000` |
| 97 | bound | `{"direction":"hi","ref":"130:97","triangle":"BPQ","value":"183043192071/500000000000"}` | `183043192071/500000000000 + 1 * p * v + -1 * b * v + -1 * q * u + 1 * b * q` |
| 98 | bound | `{"direction":"lo","ref":"130:98","triangle":"BPR","value":"44469/125000"}` | `-1 * p * w + 1 * b * w + 1 * q * r + -1 * b * q + -44469/125000` |
| 99 | bound | `{"direction":"hi","ref":"130:99","triangle":"BPR","value":"389173909501/500000000000"}` | `389173909501/500000000000 + 1 * p * w + -1 * b * w + -1 * q * r + 1 * b * q` |
| 102 | bound | `{"direction":"lo","ref":"130:102","triangle":"BQR","value":"35629/250000"}` | `-1 * u * w + 1 * b * w + 1 * v * r + -1 * b * v + -35629/250000` |
| 103 | bound | `{"direction":"hi","ref":"130:103","triangle":"BQR","value":"17121/31250"}` | `17121/31250 + 1 * u * w + -1 * b * w + -1 * v * r + 1 * b * v` |
| 104 | bound | `{"direction":"lo","ref":"130:104","triangle":"BQS","value":"100891/1000000"}` | `-1 * u * k + 1 * b * k + 1 * v * j + -1 * b * v + -100891/1000000` |
| 106 | bound | `{"direction":"lo","ref":"130:106","triangle":"BRS","value":"3811/31250"}` | `1 * r * k + -1 * b * k + -1 * w * j + 1 * b * w + -3811/31250` |
| 107 | bound | `{"direction":"hi","ref":"130:107","triangle":"BRS","value":"444899/1000000"}` | `444899/1000000 + -1 * r * k + 1 * b * k + 1 * w * j + -1 * b * w` |
| 108 | bound | `{"direction":"lo","ref":"130:108","triangle":"CEF","value":"128623/1000000"}` | `871377/1000000 + -1 * c + -1 * e * f + 1 * c * e` |
| 110 | bound | `{"direction":"lo","ref":"130:110","triangle":"CEH","value":"315057/1000000"}` | `1 * h + -1 * c * h + 1 * c * e + -315057/1000000` |
| 111 | bound | `{"direction":"hi","ref":"130:111","triangle":"CEH","value":"792719/1250000"}` | `792719/1250000 + -1 * h + 1 * c * h + -1 * c * e` |
| 112 | bound | `{"direction":"lo","ref":"130:112","triangle":"CEP","value":"25701/200000"}` | `1 * q + -1 * c * q + -1 * e * p + 1 * c * e + -25701/200000` |
| 114 | bound | `{"direction":"lo","ref":"130:114","triangle":"CEQ","value":"129057/1000000"}` | `1 * v + -1 * c * v + -1 * e * u + 1 * c * e + -129057/1000000` |
| 116 | bound | `{"direction":"lo","ref":"130:116","triangle":"CER","value":"93/1000"}` | `1 * w + -1 * c * w + -1 * e * r + 1 * c * e + -93/1000` |
| 117 | bound | `{"direction":"hi","ref":"130:117","triangle":"CER","value":"6143/20000"}` | `6143/20000 + -1 * w + 1 * c * w + 1 * e * r + -1 * c * e` |
| 119 | bound | `{"direction":"hi","ref":"130:119","triangle":"CES","value":"40369924081/112037500000"}` | `40369924081/112037500000 + -1 * k + 1 * c * k + 1 * e * j + -1 * c * e` |
| 120 | bound | `{"direction":"lo","ref":"130:120","triangle":"CFH","value":"314937/1000000"}` | `1 * f * h + -1 * c * h + 1 * c + -314937/1000000` |
| 121 | bound | `{"direction":"hi","ref":"130:121","triangle":"CFH","value":"15487149239/20000000000"}` | `15487149239/20000000000 + -1 * f * h + 1 * c * h + -1 * c` |
| 124 | bound | `{"direction":"lo","ref":"130:124","triangle":"CFQ","value":"18933/200000"}` | `1 * f * v + -1 * c * v + -1 * u + 1 * c + -18933/200000` |
| 125 | bound | `{"direction":"hi","ref":"130:125","triangle":"CFQ","value":"84907/200000"}` | `84907/200000 + -1 * f * v + 1 * c * v + 1 * u + -1 * c` |
| 126 | bound | `{"direction":"lo","ref":"130:126","triangle":"CFR","value":"31529/100000"}` | `-1 * f * w + 1 * c * w + 1 * r + -1 * c + -31529/100000` |
| 127 | bound | `{"direction":"hi","ref":"130:127","triangle":"CFR","value":"84567/125000"}` | `84567/125000 + 1 * f * w + -1 * c * w + -1 * r + 1 * c` |
| 128 | bound | `{"direction":"lo","ref":"130:128","triangle":"CFS","value":"93/1000"}` | `-1 * f * k + 1 * c * k + 1 * j + -1 * c + -93/1000` |
| 129 | bound | `{"direction":"hi","ref":"130:129","triangle":"CFS","value":"210379/500000"}` | `210379/500000 + 1 * f * k + -1 * c * k + -1 * j + 1 * c` |
| 130 | bound | `{"direction":"lo","ref":"130:130","triangle":"CHP","value":"106259/1000000"}` | `-1 * c * q + -1 * h * p + 1 * c * h + -106259/1000000` |
| 131 | bound | `{"direction":"hi","ref":"130:131","triangle":"CHP","value":"84567/125000"}` | `84567/125000 + 1 * c * q + 1 * h * p + -1 * c * h` |
| 132 | bound | `{"direction":"lo","ref":"130:132","triangle":"CHQ","value":"93/1000"}` | `1 * c * v + 1 * h * u + -1 * c * h + -93/1000` |
| 133 | bound | `{"direction":"hi","ref":"130:133","triangle":"CHQ","value":"245781609/625000000"}` | `245781609/625000000 + -1 * c * v + -1 * h * u + 1 * c * h` |
| 134 | bound | `{"direction":"lo","ref":"130:134","triangle":"CHR","value":"13857/20000"}` | `1 * c * w + 1 * h * r + -1 * c * h + -13857/20000` |
| 135 | bound | `{"direction":"hi","ref":"130:135","triangle":"CHR","value":"1/1"}` | `1 + -1 * c * w + -1 * h * r + 1 * c * h` |
| 136 | bound | `{"direction":"lo","ref":"130:136","triangle":"CHS","value":"75037/200000"}` | `1 * c * k + 1 * h * j + -1 * c * h + -75037/200000` |
| 137 | bound | `{"direction":"hi","ref":"130:137","triangle":"CHS","value":"755043/1000000"}` | `755043/1000000 + -1 * c * k + -1 * h * j + 1 * c * h` |
| 138 | bound | `{"direction":"lo","ref":"130:138","triangle":"CPQ","value":"9767/100000"}` | `-1 * p * v + 1 * c * v + 1 * q * u + -1 * c * q + -9767/100000` |
| 139 | bound | `{"direction":"hi","ref":"130:139","triangle":"CPQ","value":"497459/1000000"}` | `497459/1000000 + 1 * p * v + -1 * c * v + -1 * q * u + 1 * c * q` |
| 140 | bound | `{"direction":"lo","ref":"130:140","triangle":"CPR","value":"209427/500000"}` | `-1 * p * w + 1 * c * w + 1 * q * r + -1 * c * q + -209427/500000` |
| 141 | bound | `{"direction":"hi","ref":"130:141","triangle":"CPR","value":"892179/1000000"}` | `892179/1000000 + 1 * p * w + -1 * c * w + -1 * q * r + 1 * c * q` |
| 142 | bound | `{"direction":"lo","ref":"130:142","triangle":"CPS","value":"324689/1000000"}` | `-1 * p * k + 1 * c * k + 1 * q * j + -1 * c * q + -324689/1000000` |
| 144 | bound | `{"direction":"lo","ref":"130:144","triangle":"CQR","value":"28523/125000"}` | `-1 * u * w + 1 * c * w + 1 * v * r + -1 * c * v + -28523/125000` |
| 145 | bound | `{"direction":"hi","ref":"130:145","triangle":"CQR","value":"586107/1000000"}` | `586107/1000000 + 1 * u * w + -1 * c * w + -1 * v * r + 1 * c * v` |
| 148 | bound | `{"direction":"lo","ref":"130:148","triangle":"CRS","value":"12929/100000"}` | `1 * r * k + -1 * c * k + -1 * w * j + 1 * c * w + -12929/100000` |
| 149 | bound | `{"direction":"hi","ref":"130:149","triangle":"CRS","value":"55759/125000"}` | `55759/125000 + -1 * r * k + 1 * c * k + 1 * w * j + -1 * c * w` |
| 151 | bound | `{"direction":"hi","ref":"130:151","triangle":"EFH","value":"340830887611/500000000000"}` | `-159169112389/500000000000 + -1 * f * h + 1 * e * f + 1 * h` |
| 152 | bound | `{"direction":"lo","ref":"130:152","triangle":"EFP","value":"12243/40000"}` | `1 * f * q + -1 * e * f + -1 * q + -1 * p + 27757/40000 + 1 * e * p` |
| 153 | bound | `{"direction":"hi","ref":"130:153","triangle":"EFP","value":"14981176781/20000000000"}` | `-5018823219/20000000000 + -1 * f * q + 1 * e * f + 1 * q + 1 * p + -1 * e * p` |
| 156 | bound | `{"direction":"lo","ref":"130:156","triangle":"EFR","value":"56181/200000"}` | `-1 * f * w + 1 * e * f + 1 * w + 1 * r + -256181/200000 + -1 * e * r` |
| 157 | bound | `{"direction":"hi","ref":"130:157","triangle":"EFR","value":"9117760239/15625000000"}` | `24742760239/15625000000 + 1 * f * w + -1 * e * f + -1 * w + -1 * r + 1 * e * r` |
| 158 | bound | `{"direction":"lo","ref":"130:158","triangle":"EFS","value":"93/1000"}` | `-1 * f * k + 1 * e * f + 1 * k + 1 * j + -1093/1000 + -1 * e * j` |
| 160 | bound | `{"direction":"lo","ref":"130:160","triangle":"EHP","value":"279/1000"}` | `-1 * q + -1 * h * p + 1 * h + 1 * e * p + -279/1000` |
| 161 | bound | `{"direction":"hi","ref":"130:161","triangle":"EHP","value":"719293/1000000"}` | `719293/1000000 + 1 * q + 1 * h * p + -1 * h + -1 * e * p` |
| 162 | bound | `{"direction":"lo","ref":"130:162","triangle":"EHQ","value":"93/1000"}` | `-1 * v + -1 * h * u + 1 * h + 1 * e * u + -93/1000` |
| 163 | bound | `{"direction":"hi","ref":"130:163","triangle":"EHQ","value":"100613/250000"}` | `100613/250000 + 1 * v + 1 * h * u + -1 * h + -1 * e * u` |
| 164 | bound | `{"direction":"lo","ref":"130:164","triangle":"EHR","value":"150737/500000"}` | `1 * w + 1 * h * r + -1 * h + -1 * e * r + -150737/500000` |
| 165 | bound | `{"direction":"hi","ref":"130:165","triangle":"EHR","value":"107817/125000"}` | `107817/125000 + -1 * w + -1 * h * r + 1 * h + 1 * e * r` |
| 166 | bound | `{"direction":"lo","ref":"130:166","triangle":"EHS","value":"55649/500000"}` | `1 * k + 1 * h * j + -1 * h + -1 * e * j + -55649/500000` |
| 167 | bound | `{"direction":"hi","ref":"130:167","triangle":"EHS","value":"122691/200000"}` | `122691/200000 + -1 * k + -1 * h * j + 1 * h + 1 * e * j` |
| 168 | bound | `{"direction":"lo","ref":"130:168","triangle":"EPQ","value":"93/1000"}` | `-1 * p * v + 1 * e * p + 1 * v + 1 * q * u + -1 * q + -1 * e * u + -93/1000` |
| 170 | bound | `{"direction":"lo","ref":"130:170","triangle":"EPR","value":"368733/1000000"}` | `-1 * p * w + 1 * e * p + 1 * w + 1 * q * r + -1 * q + -1 * e * r + -368733/1000000` |
| 171 | bound | `{"direction":"hi","ref":"130:171","triangle":"EPR","value":"96192063243/125000000000"}` | `96192063243/125000000000 + 1 * p * w + -1 * e * p + -1 * w + -1 * q * r + 1 * q + 1 * e * r` |
| 175 | bound | `{"direction":"hi","ref":"130:175","triangle":"EQR","value":"583537/1000000"}` | `583537/1000000 + 1 * u * w + -1 * e * u + -1 * w + -1 * v * r + 1 * v + 1 * e * r` |
| 177 | bound | `{"direction":"hi","ref":"130:177","triangle":"EQS","value":"228087/500000"}` | `228087/500000 + 1 * u * k + -1 * e * u + -1 * k + -1 * v * j + 1 * v + 1 * e * j` |
| 178 | bound | `{"direction":"lo","ref":"130:178","triangle":"ERS","value":"18981/200000"}` | `1 * r * k + -1 * e * r + -1 * k + -1 * w * j + 1 * w + 1 * e * j + -18981/200000` |
| 179 | bound | `{"direction":"hi","ref":"130:179","triangle":"ERS","value":"397537/1000000"}` | `397537/1000000 + -1 * r * k + 1 * e * r + 1 * k + 1 * w * j + -1 * w + -1 * e * j` |
| 180 | bound | `{"direction":"lo","ref":"130:180","triangle":"FHP","value":"93/1000"}` | `-1 * f * q + -1 * h * p + 1 * f * h + 1 * p + -93/1000` |
| 182 | bound | `{"direction":"lo","ref":"130:182","triangle":"FHQ","value":"15909/125000"}` | `-1 * f * v + -1 * h * u + 1 * f * h + 1 * u + -15909/125000` |
| 184 | bound | `{"direction":"lo","ref":"130:184","triangle":"FHR","value":"93/1000"}` | `-1 * f * w + -1 * h * r + 1 * f * h + 1 * r + -93/1000` |
| 186 | bound | `{"direction":"lo","ref":"130:186","triangle":"FHS","value":"93/1000"}` | `-1 * f * k + -1 * h * j + 1 * f * h + 1 * j + -93/1000` |
| 187 | bound | `{"direction":"hi","ref":"130:187","triangle":"FHS","value":"379829/1000000"}` | `379829/1000000 + 1 * f * k + 1 * h * j + -1 * f * h + -1 * j` |
| 188 | bound | `{"direction":"lo","ref":"130:188","triangle":"FPQ","value":"93/1000"}` | `1 * p * v + -1 * p + -1 * f * v + -1 * q * u + 1 * f * q + 1 * u + -93/1000` |
| 190 | bound | `{"direction":"lo","ref":"130:190","triangle":"FPR","value":"56601/200000"}` | `1 * p * w + -1 * p + -1 * f * w + -1 * q * r + 1 * f * q + 1 * r + -56601/200000` |
| 192 | bound | `{"direction":"lo","ref":"130:192","triangle":"FPS","value":"19401/200000"}` | `1 * p * k + -1 * p + -1 * f * k + -1 * q * j + 1 * f * q + 1 * j + -19401/200000` |
| 194 | bound | `{"direction":"lo","ref":"130:194","triangle":"FQR","value":"279517/1000000"}` | `1 * u * w + -1 * u + -1 * f * w + -1 * v * r + 1 * f * v + 1 * r + -279517/1000000` |
| 195 | bound | `{"direction":"hi","ref":"130:195","triangle":"FQR","value":"526391/1000000"}` | `526391/1000000 + -1 * u * w + 1 * u + 1 * f * w + 1 * v * r + -1 * f * v + -1 * r` |
| 196 | bound | `{"direction":"lo","ref":"130:196","triangle":"FQS","value":"93517/1000000"}` | `1 * u * k + -1 * u + -1 * f * k + -1 * v * j + 1 * f * v + 1 * j + -93517/1000000` |
| 198 | bound | `{"direction":"lo","ref":"130:198","triangle":"FRS","value":"93/1000"}` | `-1 * r * k + 1 * r + 1 * f * k + 1 * w * j + -1 * f * w + -1 * j + -93/1000` |
| 200 | bound | `{"direction":"lo","ref":"130:200","triangle":"HPQ","value":"93/1000"}` | `1 * p * v + -1 * h * p + -1 * q * u + 1 * h * u + -93/1000` |
| 202 | bound | `{"direction":"lo","ref":"130:202","triangle":"HPR","value":"174763/500000"}` | `1 * p * w + -1 * h * p + -1 * q * r + 1 * h * r + -174763/500000` |
| 204 | bound | `{"direction":"lo","ref":"130:204","triangle":"HPS","value":"81763/500000"}` | `1 * p * k + -1 * h * p + -1 * q * j + 1 * h * j + -81763/500000` |
| 206 | bound | `{"direction":"lo","ref":"130:206","triangle":"HQR","value":"320893/1000000"}` | `1 * u * w + -1 * h * u + -1 * v * r + 1 * h * r + -320893/1000000` |
| 208 | bound | `{"direction":"lo","ref":"130:208","triangle":"HQS","value":"134893/1000000"}` | `1 * u * k + -1 * h * u + -1 * v * j + 1 * h * j + -134893/1000000` |
| 210 | bound | `{"direction":"lo","ref":"130:210","triangle":"HRS","value":"93/1000"}` | `-1 * r * k + 1 * h * r + 1 * w * j + -1 * h * j + -93/1000` |
| 211 | bound | `{"direction":"hi","ref":"130:211","triangle":"HRS","value":"21093/50000"}` | `21093/50000 + 1 * r * k + -1 * h * r + -1 * w * j + 1 * h * j` |
| 212 | bound | `{"direction":"lo","ref":"130:212","triangle":"PQR","value":"93/1000"}` | `1 * u * w + -1 * q * u + -1 * p * w + -1 * v * r + 1 * p * v + 1 * q * r + -93/1000` |
| 214 | bound | `{"direction":"lo","ref":"130:214","triangle":"PQS","value":"93/1000"}` | `1 * u * k + -1 * q * u + -1 * p * k + -1 * v * j + 1 * p * v + 1 * q * j + -93/1000` |
| 216 | bound | `{"direction":"lo","ref":"130:216","triangle":"PRS","value":"93/1000"}` | `1 * r * k + -1 * q * r + -1 * p * k + -1 * w * j + 1 * p * w + 1 * q * j + -93/1000` |
| 218 | bound | `{"direction":"lo","ref":"130:218","triangle":"QRS","value":"93/1000"}` | `1 * r * k + -1 * v * r + -1 * u * k + -1 * w * j + 1 * u * w + 1 * v * j + -93/1000` |
| 220 | coordinate | `{"box":130,"direction":"lo","value":"17183/125000","variable":"a"}` | `1 * a + -17183/125000` |
| 221 | coordinate | `{"box":130,"direction":"hi","value":"59/125","variable":"a"}` | `59/125 + -1 * a` |
| 223 | coordinate | `{"box":130,"direction":"hi","value":"674327/1000000","variable":"b"}` | `674327/1000000 + -1 * b` |
| 224 | coordinate | `{"box":130,"direction":"lo","value":"13857/20000","variable":"c"}` | `1 * c + -13857/20000` |
| 225 | coordinate | `{"box":130,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 226 | coordinate | `{"box":130,"direction":"lo","value":"17183/125000","variable":"e"}` | `1 * e + -17183/125000` |
| 227 | coordinate | `{"box":130,"direction":"hi","value":"59/125","variable":"e"}` | `59/125 + -1 * e` |
| 228 | coordinate | `{"box":130,"direction":"lo","value":"40433/125000","variable":"f"}` | `1 * f + -40433/125000` |
| 229 | coordinate | `{"box":130,"direction":"hi","value":"674327/1000000","variable":"f"}` | `674327/1000000 + -1 * f` |
| 230 | coordinate | `{"box":130,"direction":"lo","value":"13857/20000","variable":"h"}` | `1 * h + -13857/20000` |
| 231 | coordinate | `{"box":130,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 232 | coordinate | `{"box":130,"direction":"lo","value":"107821/1000000","variable":"p"}` | `1 * p + -107821/1000000` |
| 233 | coordinate | `{"box":130,"direction":"hi","value":"368091/1000000","variable":"p"}` | `368091/1000000 + -1 * p` |
| 234 | coordinate | `{"box":130,"direction":"lo","value":"100171/500000","variable":"q"}` | `1 * q + -100171/500000` |
| 235 | coordinate | `{"box":130,"direction":"hi","value":"325237/500000","variable":"q"}` | `325237/500000 + -1 * q` |
| 236 | coordinate | `{"box":130,"direction":"lo","value":"79783/500000","variable":"u"}` | `1 * u + -79783/500000` |
| 237 | coordinate | `{"box":130,"direction":"hi","value":"581327/1000000","variable":"u"}` | `581327/1000000 + -1 * u` |
| 238 | coordinate | `{"box":130,"direction":"lo","value":"25787/100000","variable":"v"}` | `1 * v + -25787/100000` |
| 239 | coordinate | `{"box":130,"direction":"hi","value":"679107/1000000","variable":"v"}` | `679107/1000000 + -1 * v` |
| 240 | coordinate | `{"box":130,"direction":"lo","value":"13857/20000","variable":"r"}` | `1 * r + -13857/20000` |
| 241 | coordinate | `{"box":130,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 242 | coordinate | `{"box":130,"direction":"lo","value":"278343/500000","variable":"w"}` | `1 * w + -278343/500000` |
| 243 | coordinate | `{"box":130,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 244 | coordinate | `{"box":130,"direction":"lo","value":"51267/100000","variable":"j"}` | `1 * j + -51267/100000` |
| 245 | coordinate | `{"box":130,"direction":"hi","value":"88997/100000","variable":"j"}` | `88997/100000 + -1 * j` |
| 247 | coordinate | `{"box":130,"direction":"hi","value":"8033/8963","variable":"k"}` | `8033/8963 + -1 * k` |
| 251 | physical | `{"factor":6}` | `-93/1000 + 1 * f` |
| 253 | physical | `{"factor":9}` | `-279/1000 + 1 * h + -1 * a` |
| 256 | physical | `{"factor":18}` | `-93/1000 + 1 * c` |
| 258 | physical | `{"factor":26}` | `907/1000 + -1 * a` |
| 259 | physical | `{"factor":38}` | `-93/1000 + 1 * h` |
| 260 | physical | `{"factor":44}` | `907/1000 + -1 * b` |
| 263 | physical | `{"factor":68}` | `907/1000 + -1 * f` |
| 264 | physical | `{"factor":90}` | `907/1000 + -1 * e` |
| 265 | physical | `{"factor":125}` | `1 * h + -1 * a` |
| 266 | physical | `{"factor":126}` | `1 * e + -1 * a` |
| 268 | physical | `{"factor":128}` | `1 * f + -1 * b` |
| 269 | physical | `{"factor":129}` | `1 * c + -1 * f` |
| 270 | physical | `{"factor":130}` | `1 * f + -1 * e` |
| 271 | physical | `{"factor":131}` | `1 * c * h + -13857/20000` |
| 272 | physical | `{"factor":132}` | `1 * c * h + -1 * a * b + -279/625` |
| 273 | physical | `{"factor":133}` | `346/625 + -1 * c * h + 1 * f * h + 1 * c * e + -1 * e * f` |
| 274 | physical | `{"factor":134}` | `721/1000 + -1 * f + -1 * e + 1 * e * f` |
| 278 | physical | `{"factor":138}` | `3039253413/484375000 * j + -1 + -2070503413/484375000 * f + -1 * r` |
| 281 | physical | `{"factor":141}` | `2070503413/484375000 + 1 * e + 1 * w + -3039253413/484375000 * k` |
| 337 | physical | `{"factor":197}` | `8522563/62500000 * c * h + -8522563/62500000 * b * h + -13857/20000 * b * e + 13857/20000 * c * e` |
| 413 | physical | `{"factor":273}` | `274747/500000 * p * w + 283253/500000 * b * w + -274747/500000 * q * r + 274747/500000 * b * q + -279/250 * b + -279/250 * f * w + 279/250 * r` |
| 450 | physical | `{"factor":310}` | `792719/1250000 * w + 95041/78125 * c * w + -792719/1250000 * e * r + -95041/78125 * c * e + -18507/10000 * h + 18507/10000 * h * r` |
| 471 | physical | `{"factor":331}` | `293541/250000 * f * w + 293541/250000 * h * r + 84567/125000 * f * h + -293541/250000 * r + 18507/10000 * c + -18507/10000 * c * h` |
| 472 | physical | `{"factor":332}` | `-362932734593/250000000000 * f * h + -99742265407/250000000000 * c * h + -362932734593/250000000000 * c + 18507/10000 * h * r + 18507/10000 * c * w` |
| 551 | physical | `{"factor":411}` | `430263782013/1000000000000 * u * w + 685736217987/1000000000000 * q * u + 685736217987/1000000000000 * p * w + -430263782013/1000000000000 * v * r + -685736217987/1000000000000 * p * v + -685736217987/1000000000000 * q * r + -279/250 * h * u + 279/250 * h * r` |
| 557 | physical | `{"factor":417}` | `-16921869/31250000 * c * e + 16921869/31250000 * b * e + 1023/1000 * c + -1023/1000 * b` |
| 565 | physical | `{"factor":425}` | `-14317/20000 * c * e + 14317/20000 * b * e + 1023/1000 * c * w + -1023/1000 * b * w` |
| 622 | physical | `{"factor":482}` | `-14317/20000 * c * e + -6143/20000 * a * c + -14317/20000 * a + 1023/1000 * c * w + 1023/1000 * a * r` |
| 642 | physical | `{"factor":502}` | `-338670030272937/560187500000000 * k + -234401782227063/560187500000000 * a + 338670030272937/560187500000000 * e * j + -338670030272937/560187500000000 * a * j + -1023/1000 * e * f + 1023/1000 + 1023/1000 * a * f` |
| 650 | physical | `{"factor":510}` | `-228247/500000 * f * q + -283253/500000 * e * f + 228247/500000 * q + 228247/500000 * p + 283253/500000 + -228247/500000 * e * p + -1023/1000 * b + 1023/1000 * b * e` |
| 675 | physical | `{"factor":535}` | `-790882495257337/2240750000000000 * k + 790882495257337/2240750000000000 * c * k + 790882495257337/2240750000000000 * e * j + 1501404754742663/2240750000000000 * c * e + -1023/1000 * e * p + 1023/1000 * q + -1023/1000 * c * q` |
| 688 | physical | `{"factor":548}` | `-241884509917/500000000000 * f * h + 241884509917/500000000000 * c * h + 269615490083/500000000000 * c + 1023/1000 * f * q + -1023/1000 * p + -1023/1000 * c * q` |
| 732 | physical | `{"factor":592}` | `-247978381297087/560187500000000 * v + -325093431202913/560187500000000 * b * v + 247978381297087/560187500000000 * e * u + -247978381297087/560187500000000 * b * e + 1023/1000 * b * k + -1023/1000 * u * k + 1023/1000 * v * j` |
| 753 | physical | `{"factor":613}` | `-74244438419/112037500000 * h + -40369924081/112037500000 * c * h + -74244438419/112037500000 * c * e + 1023/1000 * c * k + 1023/1000 * h * j` |
| 779 | physical | `{"factor":639}` | `338670030272937/560187500000000 * p * k + 234401782227063/560187500000000 * e * p + -338670030272937/560187500000000 * k + -338670030272937/560187500000000 * q * j + -234401782227063/560187500000000 * q + 338670030272937/560187500000000 * e * j + -1023/1000 * e * f + 1023/1000 + -1023/1000 * p + 1023/1000 * f * q` |
| 785 | physical | `{"factor":645}` | `338670030272937/560187500000000 * u * k + 234401782227063/560187500000000 * e * u + -338670030272937/560187500000000 * k + -338670030272937/560187500000000 * v * j + -234401782227063/560187500000000 * v + 338670030272937/560187500000000 * e * j + -1023/1000 * e * f + 1023/1000 + -1023/1000 * u + 1023/1000 * f * v` |
| 786 | physical | `{"factor":646}` | `-50043829651/100000000000 * f * k + 52256170349/100000000000 * h * j + -52256170349/100000000000 * f * h + 50043829651/100000000000 * j + 1023/1000 * f * v + -1023/1000 * u + 1023/1000 * u * k + -1023/1000 * v * j` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 5887000 | 0, 55 |
| 1 | 4017600 | 0, 63 |
| 2 | 1678600 | 0, 75 |
| 3 | 57900 | 0, 84 |
| 4 | 425600 | 0, 92 |
| 5 | 154600 | 0, 117 |
| 6 | 3863000 | 0, 134 |
| 7 | 57900 | 0, 166 |
| 8 | 735400 | 0, 171 |
| 9 | 25935700 | 0, 206 |
| 10 | 53600 | 0, 208 |
| 11 | 1903200 | 0, 232 |
| 12 | 1423400 | 0, 234 |
| 13 | 158800 | 0, 239 |
| 14 | 2568600 | 0, 242 |
| 15 | 118108700 | 0, 259 |
| 16 | 22148300 | 0, 264 |
| 17 | 908000 | 0, 271 |
| 18 | 66400 | 2, 6 |
| 19 | 482700 | 2, 132 |
| 20 | 740300 | 2, 210 |
| 21 | 740300 | 2, 216 |
| 22 | 53600 | 2, 218 |
| 23 | 183300 | 3, 52 |
| 24 | 6900 | 3, 266 |
| 25 | 569800 | 5, 52 |
| 26 | 336600 | 6, 33 |
| 27 | 1122900 | 6, 49 |
| 28 | 741500 | 6, 54 |
| 29 | 6068200 | 6, 62 |
| 30 | 247800 | 6, 117 |
| 31 | 25853000 | 6, 144 |
| 32 | 399400 | 6, 160 |
| 33 | 7946700 | 6, 224 |
| 34 | 36765300 | 6, 226 |
| 35 | 247800 | 7, 96 |
| 36 | 57900 | 7, 158 |
| 37 | 57900 | 7, 198 |
| 38 | 136300 | 7, 212 |
| 39 | 4796700 | 8, 54 |
| 40 | 247800 | 8, 124 |
| 41 | 647900 | 8, 226 |
| 42 | 482700 | 9, 132 |
| 43 | 111500 | 10, 93 |
| 44 | 25989300 | 10, 135 |
| 45 | 111500 | 10, 210 |
| 46 | 247800 | 12, 88 |
| 47 | 26100800 | 12, 132 |
| 48 | 677800 | 13, 52 |
| 49 | 247800 | 13, 82 |
| 50 | 111500 | 15, 212 |
| 51 | 7610 | 16, 278 |
| 52 | 154600 | 17, 52 |
| 53 | 511400 | 17, 271 |
| 54 | 500 | 18, 158 |
| 55 | 151500 | 18, 241 |
| 56 | 283100 | 21, 44 |
| 57 | 69319500 | 21, 82 |
| 58 | 111500 | 21, 212 |
| 59 | 154200 | 22, 229 |
| 60 | 47800 | 22, 245 |
| 61 | 23465900 | 23, 82 |
| 62 | 58500 | 23, 158 |
| 63 | 58500 | 23, 198 |
| 64 | 283100 | 26, 44 |
| 65 | 92785500 | 26, 82 |
| 66 | 116000 | 26, 158 |
| 67 | 116400 | 26, 198 |
| 68 | 57900 | 26, 212 |
| 69 | 53600 | 26, 214 |
| 70 | 57900 | 26, 216 |
| 71 | 2443700 | 27, 271 |
| 72 | 58500 | 30, 44 |
| 73 | 627600 | 30, 52 |
| 74 | 350500 | 31, 82 |
| 75 | 7284300 | 33, 44 |
| 76 | 44315200 | 33, 82 |
| 77 | 10500 | 33, 96 |
| 78 | 108134700 | 33, 132 |
| 79 | 138140000 | 33, 158 |
| 80 | 393191000 | 33, 198 |
| 81 | 169300 | 33, 212 |
| 82 | 9216300 | 33, 216 |
| 83 | 209485400 | 33, 218 |
| 84 | 74200 | 34, 241 |
| 85 | 482600 | 35, 44 |
| 86 | 74180 | 35, 278 |
| 87 | 740300 | 37, 88 |
| 88 | 111500 | 37, 138 |
| 89 | 116400 | 38, 158 |
| 90 | 609700 | 39, 243 |
| 91 | 350500 | 40, 82 |
| 92 | 111500 | 40, 132 |
| 93 | 116000 | 40, 158 |
| 94 | 111500 | 43, 132 |
| 95 | 797300 | 44, 49 |
| 96 | 336100 | 44, 53 |
| 97 | 470600 | 44, 61 |
| 98 | 22659300 | 44, 83 |
| 99 | 647100 | 44, 93 |
| 100 | 336100 | 44, 103 |
| 101 | 740300 | 44, 107 |
| 102 | 340800 | 44, 117 |
| 103 | 58500 | 44, 119 |
| 104 | 259900 | 44, 133 |
| 105 | 53000 | 44, 136 |
| 106 | 222800 | 44, 182 |
| 107 | 336100 | 44, 195 |
| 108 | 687400 | 44, 211 |
| 109 | 60100 | 44, 243 |
| 110 | 1134700 | 44, 244 |
| 111 | 48236100 | 44, 256 |
| 112 | 8141500 | 44, 258 |
| 113 | 6924200 | 44, 259 |
| 114 | 7506500 | 44, 260 |
| 115 | 438600 | 44, 263 |
| 116 | 2138600 | 48, 52 |
| 117 | 92187200 | 48, 82 |
| 118 | 116400 | 48, 198 |
| 119 | 57900 | 48, 218 |
| 120 | 1791400 | 48, 271 |
| 121 | 2481800 | 49, 88 |
| 122 | 111500 | 49, 96 |
| 123 | 66400 | 52, 79 |
| 124 | 677800 | 52, 102 |
| 125 | 131300 | 52, 130 |
| 126 | 30200 | 52, 187 |
| 127 | 221900 | 52, 234 |
| 128 | 36568200 | 52, 236 |
| 129 | 217600 | 52, 242 |
| 130 | 10217200 | 52, 244 |
| 131 | 22992800 | 52, 259 |
| 132 | 7160000 | 52, 263 |
| 133 | 14574000 | 52, 265 |
| 134 | 627600 | 52, 274 |
| 135 | 116400 | 53, 214 |
| 136 | 2798200 | 55, 132 |
| 137 | 25736700 | 55, 210 |
| 138 | 45547500 | 55, 214 |
| 139 | 15794900 | 55, 216 |
| 140 | 2497200 | 56, 58 |
| 141 | 177400 | 56, 116 |
| 142 | 1415300 | 56, 190 |
| 143 | 7554800 | 56, 198 |
| 144 | 7932400 | 56, 216 |
| 145 | 2569500 | 56, 243 |
| 146 | 1183400 | 57, 82 |
| 147 | 79700 | 58, 90 |
| 148 | 2113000 | 58, 92 |
| 149 | 131300 | 58, 116 |
| 150 | 24845900 | 58, 206 |
| 151 | 17879900 | 58, 225 |
| 152 | 2323200 | 58, 241 |
| 153 | 10217200 | 58, 245 |
| 154 | 1605200 | 58, 253 |
| 155 | 227900 | 58, 274 |
| 156 | 1626300 | 60, 80 |
| 157 | 4537600 | 60, 190 |
| 158 | 15400 | 60, 198 |
| 159 | 64400 | 60, 268 |
| 160 | 594600 | 62, 162 |
| 161 | 6620900 | 62, 268 |
| 162 | 116000 | 63, 158 |
| 163 | 405400 | 63, 210 |
| 164 | 7254700 | 63, 214 |
| 165 | 2646400 | 66, 241 |
| 166 | 161500 | 68, 198 |
| 167 | 72800 | 68, 214 |
| 168 | 131200 | 68, 218 |
| 169 | 40717500 | 68, 241 |
| 170 | 93100 | 70, 132 |
| 171 | 27700 | 70, 210 |
| 172 | 4500 | 70, 218 |
| 173 | 19900 | 71, 266 |
| 174 | 28700 | 72, 110 |
| 175 | 677800 | 74, 82 |
| 176 | 169400 | 76, 132 |
| 177 | 609000 | 76, 212 |
| 178 | 7646300 | 78, 141 |
| 179 | 35675200 | 78, 145 |
| 180 | 1120700 | 78, 198 |
| 181 | 25771500 | 78, 212 |
| 182 | 7975000 | 78, 214 |
| 183 | 826800 | 78, 218 |
| 184 | 908700 | 79, 110 |
| 185 | 828300 | 79, 114 |
| 186 | 1587100 | 79, 243 |
| 187 | 1465800 | 79, 271 |
| 188 | 58561900 | 80, 132 |
| 189 | 36740700 | 80, 135 |
| 190 | 7342700 | 80, 210 |
| 191 | 1414500 | 80, 231 |
| 192 | 1573450 | 80, 281 |
| 193 | 7501000 | 81, 243 |
| 194 | 7367100 | 82, 99 |
| 195 | 596300 | 82, 126 |
| 196 | 1562600 | 82, 137 |
| 197 | 7274400 | 82, 148 |
| 198 | 231900 | 82, 151 |
| 199 | 798200 | 82, 164 |
| 200 | 73300 | 82, 167 |
| 201 | 1450900 | 82, 190 |
| 202 | 2138100 | 82, 202 |
| 203 | 698500 | 82, 236 |
| 204 | 226755400 | 82, 242 |
| 205 | 226755400 | 82, 247 |
| 206 | 3319000 | 82, 256 |
| 207 | 44496500 | 82, 258 |
| 208 | 44785000 | 82, 259 |
| 209 | 517500 | 82, 260 |
| 210 | 47000 | 82, 263 |
| 211 | 107800 | 82, 274 |
| 212 | 95287400 | 84, 132 |
| 213 | 1052100 | 85, 96 |
| 214 | 231900 | 85, 182 |
| 215 | 405400 | 85, 210 |
| 216 | 2074200 | 85, 224 |
| 217 | 2943800 | 85, 232 |
| 218 | 7312600 | 86, 200 |
| 219 | 6587700 | 87, 212 |
| 220 | 5820400 | 88, 102 |
| 221 | 38700 | 88, 108 |
| 222 | 1241300 | 88, 126 |
| 223 | 83100 | 88, 132 |
| 224 | 3224600 | 88, 134 |
| 225 | 34519100 | 88, 144 |
| 226 | 37090700 | 88, 224 |
| 227 | 1081300 | 88, 231 |
| 228 | 85830400 | 88, 237 |
| 229 | 798300 | 88, 242 |
| 230 | 97555100 | 88, 244 |
| 231 | 3231500 | 88, 271 |
| 232 | 380100 | 90, 135 |
| 233 | 4500 | 90, 216 |
| 234 | 53400 | 92, 214 |
| 235 | 7129100 | 93, 96 |
| 236 | 83100 | 93, 162 |
| 237 | 38700 | 96, 111 |
| 238 | 1415300 | 96, 121 |
| 239 | 8667600 | 96, 137 |
| 240 | 1676300 | 96, 228 |
| 241 | 79100 | 96, 231 |
| 242 | 698500 | 96, 236 |
| 243 | 100500 | 96, 270 |
| 244 | 73300 | 97, 158 |
| 245 | 57900 | 97, 198 |
| 246 | 5637400 | 98, 132 |
| 247 | 3155600 | 98, 271 |
| 248 | 116000 | 99, 158 |
| 249 | 798200 | 99, 162 |
| 250 | 30200 | 102, 274 |
| 251 | 8667600 | 104, 130 |
| 252 | 798200 | 104, 160 |
| 253 | 84216200 | 104, 232 |
| 254 | 8837000 | 106, 121 |
| 255 | 131300 | 106, 153 |
| 256 | 9872800 | 106, 234 |
| 257 | 226755400 | 106, 238 |
| 258 | 154600 | 110, 110 |
| 259 | 38450000 | 110, 220 |
| 260 | 62700 | 110, 229 |
| 261 | 92700 | 110, 230 |
| 262 | 46200 | 110, 234 |
| 263 | 36560300 | 110, 237 |
| 264 | 87200 | 111, 266 |
| 265 | 9800 | 112, 220 |
| 266 | 31800 | 114, 220 |
| 267 | 1100 | 114, 230 |
| 268 | 30200 | 116, 186 |
| 269 | 4500 | 116, 200 |
| 270 | 23141500 | 120, 212 |
| 271 | 58500 | 125, 158 |
| 272 | 111500 | 125, 198 |
| 273 | 8106300 | 125, 216 |
| 274 | 131300 | 126, 132 |
| 275 | 346800 | 126, 198 |
| 276 | 720400 | 127, 196 |
| 277 | 1203100 | 127, 232 |
| 278 | 33618900 | 127, 247 |
| 279 | 488500 | 128, 184 |
| 280 | 33509000 | 128, 243 |
| 281 | 677700 | 129, 212 |
| 282 | 169400 | 130, 158 |
| 283 | 2392600 | 130, 184 |
| 284 | 23872200 | 130, 194 |
| 285 | 4602300 | 130, 268 |
| 286 | 1351140 | 130, 278 |
| 287 | 8667600 | 131, 218 |
| 288 | 93100 | 132, 152 |
| 289 | 604500 | 132, 164 |
| 290 | 112140600 | 132, 240 |
| 291 | 2929500 | 132, 256 |
| 292 | 108538300 | 132, 258 |
| 293 | 108735800 | 132, 259 |
| 294 | 17500 | 132, 264 |
| 295 | 466800 | 134, 271 |
| 296 | 131300 | 135, 138 |
| 297 | 9900 | 135, 168 |
| 298 | 7820900 | 135, 192 |
| 299 | 112140600 | 135, 236 |
| 300 | 18556500 | 136, 232 |
| 301 | 116400 | 137, 168 |
| 302 | 62600 | 139, 198 |
| 303 | 7985800 | 139, 210 |
| 304 | 231900 | 140, 198 |
| 305 | 231900 | 140, 218 |
| 306 | 1721100 | 140, 271 |
| 307 | 833100 | 141, 182 |
| 308 | 231900 | 141, 206 |
| 309 | 7874400 | 141, 208 |
| 310 | 16647700 | 142, 194 |
| 311 | 131300 | 144, 271 |
| 312 | 578800 | 145, 184 |
| 313 | 7985800 | 145, 186 |
| 314 | 58500 | 149, 184 |
| 315 | 57900 | 149, 194 |
| 316 | 304500 | 151, 243 |
| 317 | 632200 | 152, 210 |
| 318 | 1541000 | 156, 271 |
| 319 | 578800 | 157, 194 |
| 320 | 17212900 | 157, 232 |
| 321 | 462800 | 158, 180 |
| 322 | 53000 | 158, 182 |
| 323 | 462800 | 158, 190 |
| 324 | 30200 | 158, 202 |
| 325 | 1100800 | 158, 235 |
| 326 | 69252900 | 158, 236 |
| 327 | 186759100 | 158, 240 |
| 328 | 109900 | 158, 243 |
| 329 | 10323100 | 158, 256 |
| 330 | 138140000 | 158, 258 |
| 331 | 139240800 | 158, 259 |
| 332 | 9588700 | 158, 260 |
| 333 | 686600 | 158, 263 |
| 334 | 726200 | 160, 241 |
| 335 | 1100800 | 160, 247 |
| 336 | 5438680 | 160, 278 |
| 337 | 740300 | 161, 210 |
| 338 | 93100 | 162, 271 |
| 339 | 11037050 | 162, 278 |
| 340 | 793700 | 163, 216 |
| 341 | 793700 | 164, 198 |
| 342 | 793700 | 164, 218 |
| 343 | 46663600 | 164, 268 |
| 344 | 30200 | 165, 194 |
| 345 | 41013680 | 165, 278 |
| 346 | 6227900 | 166, 232 |
| 347 | 686600 | 166, 268 |
| 348 | 682200 | 168, 184 |
| 349 | 21148500 | 168, 228 |
| 350 | 31800 | 168, 253 |
| 351 | 19900 | 168, 270 |
| 352 | 1024700 | 170, 271 |
| 353 | 15900 | 171, 220 |
| 354 | 4536220 | 171, 278 |
| 355 | 698500 | 175, 232 |
| 356 | 18445700 | 177, 241 |
| 357 | 45549900 | 178, 241 |
| 358 | 184800 | 179, 194 |
| 359 | 1450900 | 180, 194 |
| 360 | 565800 | 180, 206 |
| 361 | 13661700 | 180, 241 |
| 362 | 3502900 | 182, 224 |
| 363 | 99634500 | 182, 241 |
| 364 | 1219000 | 184, 188 |
| 365 | 231900 | 184, 190 |
| 366 | 307500 | 184, 200 |
| 367 | 81664700 | 184, 236 |
| 368 | 975400 | 186, 224 |
| 369 | 257343900 | 186, 241 |
| 370 | 1054000 | 186, 270 |
| 371 | 5946500 | 190, 271 |
| 372 | 212270 | 190, 278 |
| 373 | 8541400 | 194, 204 |
| 374 | 698500 | 194, 237 |
| 375 | 65768600 | 194, 244 |
| 376 | 134600 | 194, 266 |
| 377 | 1131900 | 194, 268 |
| 378 | 555320 | 194, 278 |
| 379 | 242700 | 195, 210 |
| 380 | 139100 | 196, 230 |
| 381 | 1572100 | 198, 233 |
| 382 | 8772000 | 198, 234 |
| 383 | 226755400 | 198, 238 |
| 384 | 367400 | 198, 251 |
| 385 | 12419100 | 198, 256 |
| 386 | 393207900 | 198, 258 |
| 387 | 394430800 | 198, 259 |
| 388 | 10709400 | 198, 260 |
| 389 | 1037100 | 198, 264 |
| 390 | 79100 | 200, 266 |
| 391 | 400100 | 202, 266 |
| 392 | 17889100 | 204, 268 |
| 393 | 103702100 | 206, 224 |
| 394 | 39109300 | 206, 241 |
| 395 | 75789900 | 206, 268 |
| 396 | 161500 | 206, 271 |
| 397 | 52893900 | 208, 224 |
| 398 | 85830400 | 208, 232 |
| 399 | 52695700 | 208, 268 |
| 400 | 28222700 | 210, 233 |
| 401 | 1100800 | 210, 234 |
| 402 | 69252900 | 210, 237 |
| 403 | 70217400 | 210, 251 |
| 404 | 86680000 | 210, 256 |
| 405 | 758000 | 210, 258 |
| 406 | 740300 | 210, 259 |
| 407 | 29000 | 210, 264 |
| 408 | 698500 | 212, 236 |
| 409 | 6387900 | 212, 251 |
| 410 | 85131900 | 212, 256 |
| 411 | 73300 | 212, 273 |
| 412 | 16557300 | 214, 251 |
| 413 | 199400 | 214, 264 |
| 414 | 5447000 | 216, 240 |
| 415 | 88191600 | 216, 256 |
| 416 | 9956600 | 216, 258 |
| 417 | 11057400 | 216, 259 |
| 418 | 901300 | 216, 264 |
| 419 | 40102900 | 218, 240 |
| 420 | 198200 | 218, 256 |
| 421 | 209573700 | 218, 258 |
| 422 | 209678100 | 218, 259 |
| 423 | 164800 | 218, 264 |
| 424 | 172300 | 221, 241 |
| 425 | 46668500 | 221, 268 |
| 426 | 78551100 | 221, 271 |
| 427 | 45252000 | 223, 266 |
| 428 | 41430300 | 223, 271 |
| 429 | 48178500 | 224, 239 |
| 430 | 5451200 | 224, 247 |
| 431 | 411900 | 224, 270 |
| 432 | 11667100 | 225, 266 |
| 433 | 74215400 | 227, 241 |
| 434 | 39386900 | 227, 271 |
| 435 | 103150800 | 229, 243 |
| 436 | 45886400 | 229, 266 |
| 437 | 4529200 | 229, 271 |
| 438 | 421800 | 230, 266 |
| 439 | 57124200 | 231, 232 |
| 440 | 2606800 | 231, 236 |
| 441 | 88641400 | 231, 268 |
| 442 | 283700 | 232, 241 |
| 443 | 7664500 | 233, 266 |
| 444 | 2697300 | 235, 241 |
| 445 | 43280200 | 235, 268 |
| 446 | 26090400 | 236, 266 |
| 447 | 2426300 | 237, 268 |
| 448 | 33844000 | 237, 271 |
| 449 | 905700 | 237, 274 |
| 450 | 145849400 | 239, 268 |
| 451 | 868800 | 241, 242 |
| 452 | 5451200 | 241, 247 |
| 453 | 2686100 | 241, 269 |
| 454 | 8999900 | 241, 270 |
| 455 | 1154600 | 241, 272 |
| 456 | 1677400 | 241, 273 |
| 457 | 8520200 | 241, 274 |
| 458 | 127656400 | 242, 268 |
| 459 | 6200 | 243, 266 |
| 460 | 31584800 | 243, 269 |
| 461 | 163700 | 243, 271 |
| 462 | 868780 | 243, 278 |
| 463 | 203949500 | 247, 268 |
| 464 | 1145000 | 266, 272 |
| 465 | 370100 | 268, 274 |
| 466 | 1730000 | 241, 337 |
| 467 | 1038000 | 266, 337 |
| 468 | 739000 | 271, 337 |
| 469 | 437300 | 266, 413 |
| 470 | 631400 | 268, 450 |
| 471 | 653700 | 241, 471 |
| 472 | 234100 | 271, 472 |
| 473 | 1018600 | 241, 551 |
| 474 | 5409900 | 241, 557 |
| 475 | 1634100 | 268, 565 |
| 476 | 608000 | 268, 622 |
| 477 | 769900 | 241, 642 |
| 478 | 214500 | 268, 650 |
| 479 | 311400 | 243, 675 |
| 480 | 630200 | 271, 688 |
| 481 | 1577900 | 232, 732 |
| 482 | 182100 | 232, 753 |
| 483 | 40273300 | 241, 779 |
| 484 | 17705700 | 241, 785 |
| 485 | 33900 | 266, 786 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `a * b` | 50620095447484723/625000000 |
| `a * b * c` | -9149764/5 |
| `a * b * b` | -43100 |
| `a * c` | 8181921088765277/625000000 |
| `a * c * c` | -5887000 |
| `1` | -632375130143937976303107457/2778530000000000000 |
| `c` | -19085122619628922916803/11203750000000000 |
| `b` | -5271102836634469104509/347316250000000 |
| `b * w` | 16680716947883/200000000 |
| `a * b * b * e` | 181300 |
| `a * c * e * r` | -247800 |
| `a * b * c * e` | 100 |
| `e * r` | -779027313/2500 |
| `b * e` | 36949425558786364400280633/5601875000000000000 |
| `a * c * r` | 159110 |
| `f * w` | -1313283565954161545641/1389265000000000 |
| `r` | 45221481546183393622359/224075000000000 |
| `a * b * h * r` | 100 |
| `a * b * b * h` | -100 |
| `a * c * h * r` | -100 |
| `a * b * c * h` | 2640900 |
| `h * r` | 1697093583641/2000000 |
| `b * h` | 20067034082982849/1250000000 |
| `c * e` | -25892457018128810221/1120375000000000 |
| `a * c * c * h` | 100 |
| `c * h` | 5272423966848718848013/11203750000000000 |
| `a * b * h` | -3650898664803/31250 |
| `a * c * k` | -100 |
| `a * c * h` | -28579460197/31250 |
| `a * c * e * j` | 100 |
| `k` | -10582800339618926855033/173658125000000000 |
| `h * j` | 279469739091/1550000000 |
| `h` | -6687862321136045485171/1120375000000000 |
| `e * j` | 1367752568648233097/22407500000000 |
| `a * b * e * p` | -100 |
| `a * b * q * r` | -1117600 |
| `a * b * q` | -5825968631/5000 |
| `a * c * q * r` | -623900 |
| `a * c * q` | 432300 |
| `p * w` | 11833316659212923/5000000000 |
| `e * p` | 2740982286152513179/5601875000000 |
| `q * r` | -3809936873311323417/44815000000000 |
| `q` | -75687602741250638179/5601875000000 |
| `u * w` | 408557213701/5000000000 |
| `h * u` | 11749003181509/2500000000 |
| `v * r` | -500160417930667/8963000000000 |
| `a * c * p` | -41288400 |
| `p` | 13656149631081147/9687500000 |
| `a * b * v` | 100 |
| `v` | -1041890726304996461469367/5601875000000000000 |
| `a * b * e` | -1175217/10 |
| `a * c * e` | 1718217/10 |
| `e` | -1333315427585079/625000000 |
| `a * a * b * b` | 66400 |
| `a * a * b` | 735100 |
| `a` | -307395218312498890489/11203750000000 |
| `b * c * e * h` | -6323/20 |
| `c * v` | -15672529/10000 |
| `b * e * h * r` | -945400 |
| `a * h * r` | -417800 |
| `a * h * j` | -14841748311/1000000000 |
| `a * q * r` | 3968968631/5000 |
| `a * p * w` | 448531369/5000 |
| `p * k` | 98201562895563396951/173658125000000 |
| `q * j` | -35126374501724551/173658125000000 |
| `b * e * r * k` | 100 |
| `b * e * v * r` | -100 |
| `b * e * u * k` | -100 |
| `b * e * w * j` | -100 |
| `b * e * u * w` | 200 |
| `b * e * v * j` | 100 |
| `a * r * k` | -100 |
| `a * u * k` | 203/10 |
| `a * w * j` | 100 |
| `a * v * j` | -203/10 |
| `r * k` | -1173879573294543/4481500000000 |
| `w * j` | 22656827301819/77500000000 |
| `b * b * e * e` | 183300 |
| `b * e * e` | -1183783/10 |
| `a * e` | -6900 |
| `a * a` | 6900 |
| `b * c * e` | -1973907/25000 |
| `b * b * e` | -15040797/200 |
| `a * c * e * f` | -200 |
| `a * b * e * f` | 100 |
| `a * f` | -1408215071177/48437500 |
| `b * h * h` | -26700 |
| `a * a * b * r` | -1122900 |
| `a * r` | 719348815380533037/5601875000000 |
| `b * c * h` | -363100 |
| `b * b * h` | 441900 |
| `c * w` | 866587502080683/17926000000 |
| `b * h * w` | -120400 |
| `a * b * w` | 334631/5000 |
| `w` | -24732730285187/5000000000 |
| `b * h * u * w` | -100 |
| `b * c * h * v` | -100 |
| `b * h * q` | 1417700 |
| `b * h * h * p` | 247700 |
| `b * e * h * p` | 866800 |
| `a * b * h * p` | 100 |
| `h * p` | 19531165130798299991/5601875000000 |
| `b * e * h` | -28573210197/31250 |
| `p * v` | -1316739673181131/22407500000000 |
| `b * v` | 695704327163988922844367/5601875000000000000 |
| `q * u` | 173153601053/2500000000 |
| `b * q` | 2321016922355019327/155000000000 |
| `b * b * h * v` | -11000 |
| `b * h * q * u` | 100 |
| `b * b * h * q` | -2191400 |
| `e * f` | -652831960590533/5000000000 |
| `b * h * r` | 406476762/3125 |
| `b * h * p * w` | 1117600 |
| `b * h * q * r` | -100 |
| `b * c * q` | -22688300 |
| `b * b * q` | 1518300 |
| `a * p` | -94048796415950294991/5601875000000 |
| `b * f * q * v` | 100 |
| `a * f * p * v` | 100 |
| `a * p * u` | -100 |
| `f * v` | 310877487059764357059/347316250000000 |
| `u` | -18155209446790959389/11203750000000 |
| `b * e * q` | -2794281369/5000 |
| `a * e * p` | 570500 |
| `a * c * h * p` | 558900 |
| `a * u` | 551/5 |
| `b * f * v * w` | -100 |
| `b * u * w` | 200 |
| `b * b * w` | -1157/10 |
| `b * u * w * k` | -100 |
| `b * q * u * k` | 100 |
| `b * p * w * k` | 100 |
| `b * p * v * k` | -100 |
| `b * q * r * k` | -200 |
| `b * k` | 1007644484382207/6200000000 |
| `a * p * w * j` | 100 |
| `a * j` | 177015705498069717791/1389265000000000 |
| `c * e * j` | -7284402707/48437500 |
| `c * e * f` | 886342695039/96875000 |
| `c * e * r` | 14318534781/312500 |
| `a * c * j` | -2403097293/48437500 |
| `a * c * f` | -851902707/48437500 |
| `j` | -79498504482432127346851/3027343750000000000 |
| `f` | -11605486963469743072816736987/27134082031250000000000 |
| `c * c * e * h` | 2323/20 |
| `c * f * k` | -100 |
| `c * k` | 431262107165021/2800937500000 |
| `c * j` | 100 |
| `a * c * f * k` | 100 |
| `a * f * f * k` | -100 |
| `a * e * f * f` | 100 |
| `a * f * k` | 164858251689/1000000000 |
| `a * f * j` | 100 |
| `a * e * f * j` | -100 |
| `f * k` | 65659437949953/2500000000 |
| `c * r` | -18363029/100 |
| `a * f * r` | -421225279/12109375 |
| `c * h * u` | -173900 |
| `a * c * f * v` | -100 |
| `a * b * c * v` | 100 |
| `a * c * u` | 100 |
| `c * h * q * u` | -100 |
| `c * h * p * w` | -100 |
| `c * h * v * r` | 100 |
| `c * h * q * r` | -656000 |
| `c * q` | 3151132813251/100000 |
| `c * f * q` | 19161061572041/24218750 |
| `a * f * p` | 284400 |
| `c * q * j` | -1124072041/24218750 |
| `a * p * j` | -1182500 |
| `a * b * p * v` | -100 |
| `c * q * r` | 548340 |
| `c * f * q * w` | -1421300 |
| `a * p * r * k` | -100 |
| `a * p * r` | 277600 |
| `a * f * p * w` | -277600 |
| `a * a * p * r` | -597800 |
| `c * f * v * w` | 100 |
| `c * u * w` | -200 |
| `b * c * w` | 737133/6250 |
| `c * f * w * k` | -200 |
| `c * w * j` | 100 |
| `a * r * j` | 1051602630184053/173658125000000 |
| `c * r * w * k` | 100 |
| `c * r * w` | -100 |
| `c * w * w * j` | -100 |
| `c * f * w * w` | 100 |
| `a * r * r` | -20 |
| `c * q * u * w` | 100 |
| `c * u * w * k` | 100 |
| `u * k` | -2412445194332807/11203750000000 |
| `v * j` | 61560391413201017/347316250000000 |
| `c * c * h * w` | 4887/100 |
| `a * h * p` | -334100 |
| `a * a * p` | 433100 |
| `a * f * h * p` | -164300 |
| `a * a * f * p` | -58500 |
| `a * f * v` | -797/10 |
| `e * f * f * v` | -100 |
| `b * e * f * v` | -115900 |
| `e * f * u` | 599860967/9687500 |
| `b * e * f` | 14859761/500 |
| `h * h * p` | 721200 |
| `b * h * v` | -186800 |
| `h * h * u` | -3400 |
| `c * h * h` | -305400 |
| `f * h * k` | -100 |
| `e * f * h` | 29085158251689/1000000000 |
| `e * h * j` | -85158251689/1000000000 |
| `h * r * k` | 200 |
| `h * w * j` | -200 |
| `f * h * w` | 1893700 |
| `a * f * w` | 149134/5 |
| `h * u * w` | 100 |
| `h * p * w` | 328600 |
| `h * v * r` | -100 |
| `h * q * r` | -86200 |
| `h * u * k` | -100 |
| `h * v * j` | 100 |
| `r * w` | -140 |
| `e * r * r` | 120 |
| `a * e * p * r` | -823400 |
| `e * r * j` | -11583286305500183/173658125000000 |
| `e * f * r` | 6958963328624/12109375 |
| `b * q * k` | 484403697/9687500 |
| `a * h * p * j` | -100 |
| `p * v * k` | 100 |
| `q * u * k` | -100 |
| `e * p * v * j` | -100 |
| `e * q * u * j` | 100 |
| `e * f * f * h` | 632200 |
| `f * h` | 23978331533160597889/38750000000000 |
| `f * f * v * w` | 100 |
| `f * u * w` | -1986382679/12109375 |
| `b * f * w` | 1157/10 |
| `f * v * r` | 313312233/24218750 |
| `b * v * r` | -100 |
| `u * r` | 511/10 |
| `b * r` | -1421723/10 |
| `c * f * h * w` | -100 |
| `c * v * r` | 100 |
| `h * u * r` | 38/5 |
| `c * h * r` | 4138225577/12500 |
| `f * f * w * k` | 100 |
| `f * w * k` | -100 |
| `f * w * j` | -10208978467/48437500 |
| `e * f * w * j` | 100 |
| `f * r * k` | -100 |
| `r * j` | 10208978467/48437500 |
| `c * f * v * k` | 100 |
| `f * h * u * k` | 100 |
| `c * v * j` | -100 |
| `h * u * j` | -1337639033/9687500 |
| `c * h * j` | 1124072041/24218750 |
| `c * e * h * p` | 241100 |
| `f * h * p * v` | 100 |
| `b * h * p` | -1084600 |
| `h * p * r * k` | 100 |
| `h * h * p * j` | 100 |
| `f * h * h * p` | -2477300 |
| `f * h * p * w` | -2133000 |
| `h * p * r` | -6583580 |
| `h * p * j` | -395958579/12109375 |
| `c * h * p` | -123028156726501/1120375000 |
| `f * h * p` | 112442352307783/24218750 |
| `h * r * r` | -71517/2500 |
| `f * h * r * k` | -100 |
| `f * h * r * w` | 100 |
| `h * r * j` | 2037945254/12109375 |
| `h * v * r * r` | 100 |
| `h * u * r * w` | -100 |
| `h * v * r * j` | -100 |
| `c * h * h * r` | -14415113/100 |
| `h * p * v * r` | -100 |
| `h * q * u * r` | 100 |
| `c * e * f * h` | 100 |
| `b * e * j` | 100 |
| `c * e * q` | 40200 |
| `c * e * u` | 7900 |
| `b * e * u` | -36417700 |
| `c * e * w` | 100248796865673709/11203750000000 |
| `b * e * w` | -334631/5000 |
| `c * e * h` | -808039803/31250 |
| `c * e * e` | 43783/10 |
| `c * e * q * u` | -100 |
| `c * e * p * v` | 100 |
| `b * e * q * j` | -100 |
| `b * c * v` | 100 |
| `c * r * k` | 100 |
| `c * p * k` | -1117/10 |
| `b * p * k` | -15074083/10 |
| `b * p * v` | -572500950764227/5601875000000 |
| `c * p * w` | -1302200 |
| `b * q * r` | 153800 |
| `b * p * w` | -774400 |
| `c * c * h * q` | 527/5 |
| `c * f * h * q` | -527/5 |
| `f * q` | 325364332759539/387500000 |
| `c * h * q * j` | 100 |
| `b * h * q * j` | -100 |
| `b * b * q * v` | -100 |
| `c * q * w` | 2298811/5 |
| `c * e * q * r` | -58000 |
| `b * q * w` | 50 |
| `c * q * v * r` | -100 |
| `b * q * u * w` | -200 |
| `b * q * v * r` | 100 |
| `c * c * q` | -17879900 |
| `c * h * q` | 408000 |
| `b * f * q` | -82037/1000 |
| `b * e * f * q` | 100 |
| `b * b * v` | 7700 |
| `b * p * v * w` | 100 |
| `c * v * r * k` | -100 |
| `b * v * r * k` | 100 |
| `c * f * v` | 4600 |
| `b * f * v` | 16100 |
| `b * v * w` | -100 |
| `e * u` | 65958298687232871461469367/5601875000000000000 |
| `c * f * w` | 1778637867/6250 |
| `b * q * w * j` | 100 |
| `b * e * r` | 204621534369/312500 |
| `a * q` | 77400 |
| `h * v` | 61600 |
| `c * e * v` | 11200 |
| `c * e * e * u` | -28700 |
| `e * f * v * r` | 100 |
| `e * u * r` | -145137027093591/5601875000000 |
| `u * w * k` | 100 |
| `v * r * k` | -100 |
| `e * u * w * j` | -100 |
| `e * v * r * j` | 100 |
| `f * h * q * r` | 1671600 |
| `f * h * r` | -12498665952754/12109375 |
| `f * h * w * j` | -100 |
| `f * f * h * w` | -2571600 |
| `f * h * q * u` | -100 |
| `f * h * q * j` | 100 |
| `f * h * h` | -908700 |
| `c * f * h * h` | 74423659439233/62500000 |
| `b * c * h * h` | 1825943/62500 |
| `f * q * r * k` | 100 |
| `f * q * w * j` | -100 |
| `p * r * k` | -825364410736821/5601875000000 |
| `p * w * j` | 5662659637/48437500 |
| `f * h * q` | -2096700 |
| `e * f * q` | 472650 |
| `f * q * w` | 984650 |
| `f * q * k` | 484346303/9687500 |
| `f * p * v * w` | -200 |
| `q * u * r` | -954558207791/5000000000 |
| `c * u` | 59800 |
| `b * c` | 4796900 |
| `f * h * u` | 3467525139033/9687500 |
| `e * u * j` | 368889033/9687500 |
| `b * p` | 1394982037/1000 |
| `b * u` | 5006100 |
| `b * b` | -596133/2 |
| `f * f * v` | -16912728570179/12109375 |
| `f * u` | -1500787054821/12109375 |
| `b * f` | -8267/2 |
| `e * f * v` | 614797/10 |
| `b * e * v` | 37500 |
| `f * q * u * w` | 200 |
| `p * v * r` | 954558207791/5000000000 |
| `f * r * w * k` | -100 |
| `f * w * w * j` | 100 |
| `r * r * k` | 100 |
| `r * w * j` | -100 |
| `f * p * w` | -181826475159637/48437500 |
| `p * r` | 45345559/10 |
| `p * v * j` | -83/10 |
| `q * r * j` | 5284529402269051/173658125000000 |
| `c * h * h * u` | 125500 |
| `h * u * w * j` | 100 |
| `h * q * r * j` | -100 |
| `h * h * r` | -83100 |
| `e * p * v` | 100 |
| `e * q * u` | -100 |
| `b * f * q * k` | -100 |
| `e * f * p * w` | 100 |
| `e * f * q * r` | -682300 |
| `e * f * u * w` | -100 |
| `p * u * k` | 83/10 |
| `h * h` | 247300 |
| `c * c * h * h` | 2710242767/62500000 |
| `a * h` | 38115400 |
| `c * f * h` | -39960124072041/24218750 |
| `h * q` | 14400 |
| `e * h` | 334600 |
| `e * f * h * r` | -632200 |
| `c * e * f * v` | -34600 |
| `f * r * w` | 597483/2500 |
| `f * f * w * w` | -100 |
| `r * r` | -347483/2500 |
| `c * p` | 1203100 |
| `c * w * k` | -111920115673709/11203750000000 |
| `c * f * q * k` | 100 |
| `c * e * p * w` | -83200 |
| `p * r * w` | 95441792209/5000000000 |
| `q * r * r` | -95441792209/5000000000 |
| `u * r * k` | 251012464593591/5601875000000 |
| `u * w * j` | 1259820179/12109375 |
| `e * f * w` | 366/5 |
| `h * w` | -304500 |
| `u * w * w` | -100 |
| `f * w * w` | 100 |
| `v * r * w` | 100 |
| `e * u * r * w` | 100 |
| `e * f * r * w` | -100 |
| `e * v * r * r` | -100 |
| `e * f * p` | -6042184821/96875000 |
| `e * p * r` | 634140300848236821/5601875000000 |
| `e * q * j` | 100 |
| `f * u * k` | 100 |
| `u * j` | -1259820179/12109375 |
| `w * k` | 111920115673709/11203750000000 |
| `e * w * j` | -111920115673709/11203750000000 |
| `e * f * f` | -438015537/1000 |
| `e * p * k` | -100 |
| `e * p * j` | -13691721370201/24218750 |
| `e * h * p` | -447400 |
| `e * v` | -19900 |
| `e * e * u` | 19900 |
| `a * w` | -9700 |
| `a * e * r` | 15900 |
| `f * q * r` | -51557794996613/48437500 |
| `e * p * u` | -58809013264227/5601875000000 |
| `v * r * j` | -25848215625404521/173658125000000 |
| `f * h * h * u` | -258300 |
| `f * h * h * r` | 565800 |
| `f * f * h * q` | 1450900 |
| `e * f * k` | -64858251689/1000000000 |
| `f * f * h` | 1054000 |
| `p * j` | 11634361552249/48437500 |
| `f * p` | 97386954561127/96875000 |
| `f * f * w` | 86307427728467/48437500 |
| `f * q * j` | 5169697751/48437500 |
| `f * f * q` | -97386954561127/96875000 |
| `f * r` | 20565072271533/48437500 |
| `f * v * j` | 48882679/12109375 |
| `u * r * w` | 66558207791/5000000000 |
| `v * r * r` | -66558207791/5000000000 |
| `f * p * k` | -240300 |
| `e * p * w` | 288279631/5000 |
| `e * q * r` | 1304531369/5000 |
| `e * h * r` | 371100 |
| `e * u * k` | 797/10 |
| `e * v * j` | -797/10 |
| `c * f` | 411900 |
| `a * b * r` | 532616 |
| `e * w` | -6200 |
| `f * f` | -370100 |
| `c * c * h` | -1678060767/62500000 |
| `b * e * p` | -3364326689506110773/5601875000000 |
| `q * w` | -1592811/5 |
| `c * e * p` | -135199122360999/1120375000 |
| `a * f * h` | 17714841748311/1000000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `a * b` | -1340315664/9765625 | 14672038071/125000000000 | 0 |
| `a` | 1211231254976615460411625997/69463250000000000000000000 | 41817/125000 | 50650057389357128708032964316549/8682906250000000000000000000000 |
| `b` | 104348100152370509164290431/694632500000000000000000 | 350863/1000000 | 36611887463761173956910433491953/694632500000000000000000000000 |
| `1` | -1281698920216369102295391632521584043413/13892650000000000000000000000000 | 1 | -1281698920216369102295391632521584043413/13892650000000000000000000000000 |
| `a * b * c` | -207127/1250 | 90130329870153/2500000000000000 | 0 |
| `a * c` | 1067031412613159/96875000000000 | 256881831/2500000000 | 274100983006584778614129/242187500000000000000000 |
| `b * c` | -1734370191476093/25000000000000 | 2155351409/20000000000 | 0 |
| `c` | -115818044059900018363900816149/1736581250000000000000000000 | 6143/20000 | 0 |
| `a * b * b` | 40787/5000 | 5147875293705273/125000000000000000 | 209966389604356969851/625000000000000000000 |
| `b * b` | -37708011069/500000000 | 123104844769/1000000000000 | 0 |
| `a * c * c` | -1177386143/200 | 1578025087833/50000000000000 | 0 |
| `c * c` | -109782230342804239680617/25000000000000000 | 37736449/400000000 | 0 |
| `b * w` | 192244341589/10000000000 | 77771239991/500000000000 | 14951080826629901285699/5000000000000000000000 |
| `w` | -3335888722146271271460329453/138926500000000000000000000 | 221657/500000 | 0 |
| `a * b * b * e` | 181300 | 215268701156873401041/15625000000000000000000 | 390282155197411476087333/156250000000000000000 |
| `a * b * e` | -1428043/10000 | 613540616015007/15625000000000000 | 0 |
| `a * e` | -18526583384923/1250000000 | 1748661489/15625000000 | 0 |
| `b * b * e` | 562703/5000 | 5147875293705273/125000000000000000 | 2896724871393838232919/625000000000000000000 |
| `b * e` | 13284017029821/200000000000 | 14672038071/125000000000 | 194903603597346054315291/25000000000000000000000 |
| `e` | -7843295415664955723748819173/69463250000000000000000000 | 41817/125000 | 0 |
| `a * c * e * r` | -247800 | 65988275097912561/6250000000000000000 | 0 |
| `a * c * e` | 761953/5000 | 10742027526927/312500000000000 | 8184920100224608431/1562500000000000000 |
| `a * c * r` | -8119/500 | 1578025087833/50000000000000 | 0 |
| `a * e * r` | -1222840207/5000 | 10742027526927/312500000000000 | 0 |
| `a * r` | 1391917459526992805921/17365812500000000000 | 256881831/2500000000 | 357558305604162305908814121351/43414531250000000000000000000 |
| `c * e * r` | 42467531/312500 | 1578025087833/50000000000000 | 67014829336325650323/15625000000000000000 |
| `c * e` | -24635632642460702282353/173658125000000000000 | 256881831/2500000000 | 0 |
| `c * r` | 452240044437019/5000000000000 | 37736449/400000000 | 17065933372655301205531/2000000000000000000000 |
| `e * r` | 577821781700389979911/6946325000000000000 | 256881831/2500000000 | 148431917274878471453590897041/17365812500000000000000000000 |
| `r` | 35136698867727896532379359149061953/173658125000000000000000000 | 6143/20000 | 215844741144452468398406403252687577279/3473162500000000000000000000000 |
| `a * b * c * e` | 100 | 3768980004180188001/312500000000000000000 | 3768980004180188001/3125000000000000000 |
| `b * c * e` | -113701763/400000 | 90130329870153/2500000000000000 | 0 |
| `f * w` | -931060896516816921/27134082031250000 | 77771239991/500000000000 | 0 |
| `f` | -13646324710647515753590001283/138926500000000000000000000 | 350863/1000000 | 0 |
| `a * b * h * r` | 100 | 553670616392349879/50000000000000000000 | 553670616392349879/500000000000000000 |
| `a * b * h` | -28749748583599/250000 | 90130329870153/2500000000000000 | 0 |
| `a * b * r` | 332073/5000 | 90130329870153/2500000000000000 | 29929849030971317169/12500000000000000000 |
| `a * h * r` | -2089184693/5000 | 1578025087833/50000000000000 | 0 |
| `a * h` | -11068288068337533/500000000000000 | 256881831/2500000000 | 0 |
| `b * h * r` | 2695261/25000 | 13240323705487/400000000000000 | 35686128110774597107/10000000000000000000 |
| `b * h` | 240501274863157/12500000000000 | 2155351409/20000000000 | 518364761642601722138213/250000000000000000000000 |
| `b * r` | -50761914519693/625000000000 | 2155351409/20000000000 | 0 |
| `h * r` | -34176676350667257/387500000000000 | 37736449/400000000 | 0 |
| `h` | -3274782381428169911645047003/56018750000000000000000000 | 6143/20000 | 0 |
| `a * b * b * h` | -100 | 31623397929231492039/2500000000000000000000 | 0 |
| `b * b * h` | 25281/1250 | 756233061415967/20000000000000000 | 19118328025657061727/25000000000000000000 |
| `a * c * h * r` | -100 | 9693808114558119/1000000000000000000 | 0 |
| `a * c * h` | 5948299/250000 | 1578025087833/50000000000000 | 9386565051931946067/12500000000000000000 |
| `c * h * r` | -104486081/1000000 | 231815006207/8000000000000 | 0 |
| `c * h` | -129767161382562324049/4843750000000000000 | 37736449/400000000 | 0 |
| `a * b * c * h` | 2640900 | 553670616392349879/50000000000000000000 | 14621887308305567954511/500000000000000000 |
| `b * c * h` | -62553310099/625000000 | 13240323705487/400000000000000 | 0 |
| `a * c * c * h` | 100 | 9693808114558119/1000000000000000000 | 9693808114558119/10000000000000000 |
| `c * c * h` | 69546560864819/625000000000 | 231815006207/8000000000000 | 16121936438553519772931533/5000000000000000000000000 |
| `a * c * k` | -84567/1250 | 899074537219943997/22407500000000000000 | 0 |
| `a * k` | -9690896418783663/125000000000000 | 146357567510979/1120375000000000 | 0 |
| `c * k` | 965756952305232065813/5601875000000000000 | 21500216113541/179260000000000 | 20763983187717197466794069592473833/1004192112500000000000000000000000 |
| `k` | 172878774910445111975472313/1736581250000000000000000 | 3499953787/8963000000 | 605067722939732955514193372997999331/15564977743750000000000000000000000 |
| `a * c * e * j` | 100 | 40529669859095571/3125000000000000000 | 40529669859095571/31250000000000000 |
| `a * c * j` | -1737256043/48437500 | 969215148363/25000000000000 | 0 |
| `a * e * j` | 184693/5000 | 6597699797997/156250000000000 | 1218548968791459921/781250000000000000 |
| `a * j` | -989172559174234809887/27785300000000000000 | 157775541/1250000000 | 0 |
| `c * e * j` | -6618561457/48437500 | 969215148363/25000000000000 | 0 |
| `c * j` | 2664743543503203/24218750000000 | 23177539/200000000 | 61762197404543684157417/4843750000000000000000 |
| `e * j` | -52676749145915592475613/694632500000000000000 | 157775541/1250000000 | 0 |
| `j` | 287842957877339759918674131/5426816406250000000000000 | 3773/10000 | 1086031480071202914173157496263/54268164062500000000000000000 |
| `h * j` | 297932526699229/1562500000000 | 23177539/200000000 | 6905342756939921417431/312500000000000000000 |
| `a * b * e * p` | -100 | 15968621613022587189/1562500000000000000000 | 0 |
| `a * b * p` | 74379/2500 | 381869134873917/12500000000000000 | 28403044382787072543/31250000000000000000 |
| `a * e * p` | -62591/2500 | 45512412574203/1562500000000000 | 0 |
| `a * p` | -2048828700783467330961/44815000000000 | 1088371059/12500000000 | 0 |
| `b * e * p` | -128312658110773/5601875000000 | 381869134873917/12500000000000000 | 0 |
| `b * p` | 45843269527761241919/2800937500000000000 | 9131911301/100000000000 | 418636671075351818309911026619/280093750000000000000000000000 |
| `e * p` | 486421089254906246897/21707265625000000000 | 1088371059/12500000000 | 529406636032295832881003353923/271340820312500000000000000000 |
| `p` | -1706833378257705027942550773/86829062500000000000000000 | 26027/100000 | 0 |
| `a * b * q * r` | -1117600 | 10142636411277927549/625000000000000000000 | 0 |
| `a * b * q` | -9697614431/5000 | 1651088460243843/31250000000000000 | 0 |
| `a * q * r` | 13278/625 | 28907683087923/625000000000000 | 191918108020720797/195312500000000000 |
| `a * q` | 22219380077/625000000 | 4705792461/31250000000 | 104559791254440199497/19531250000000000000 |
| `b * q * r` | 127927/5000 | 242548160108997/5000000000000000 | 31028458478263659219/25000000000000000000 |
| `b * q` | -113030851662089/4843750000000 | 39483665979/250000000000 | 0 |
| `q * r` | 164603903101648022010521/694632500000000000000 | 691290219/5000000000 | 113789068223393040396569882394099/3473162500000000000000000000000 |
| `q` | 169259714250039988511724583/6946325000000000000000000 | 112533/250000 | 19047303423699750027189902498739/1736581250000000000000000000000 |
| `a * c * q * r` | -623900 | 177579897209110989/12500000000000000000 | 0 |
| `a * c * q` | 6177/200 | 28907683087923/625000000000000 | 178562758434100371/125000000000000000 |
| `c * q * r` | 339557/5000 | 4246595815317/100000000000000 | 1441961335261594569/500000000000000000 |
| `c * q` | 1149729479166091/96875000000000 | 691290219/5000000000 | 794796743443482984763929/484375000000000000000000 |
| `p * w` | -453407856337250289/3100000000000000 | 5769066739/50000000000 | 0 |
| `u * w` | 94386940329092241/3100000000000000 | 93486277977/500000000000 | 8823883741004029102199876457/1550000000000000000000000000 |
| `u` | 56571539917466469584961569/868290625000000000000000 | 421761/1000000 | 23859669247130575678622976303009/868290625000000000000000000000 |
| `h * u` | -739861889946673/9687500000000 | 2590877823/20000000000 | 0 |
| `v * r` | -125176720746770264884677/1389265000000000000000 | 2587658891/20000000000 | 0 |
| `v` | 1177359209351560009208609169/27785300000000000000000000 | 421237/1000000 | 495947261269623083599006900522053/27785300000000000000000000000000 |
| `a * c * p` | -8180233227/200 | 6685863415437/250000000000000 | 0 |
| `c * p` | -731103485745132107617/140046875000000 | 159883861/2000000000 | 0 |
| `a * b * v` | 1585029/10000 | 6180405300913827/125000000000000000 | 9796121633702142295983/1250000000000000000000 |
| `a * v` | -19204409/5000000 | 17614867629/125000000000 | 0 |
| `b * v` | -777004330584247/17926000000000 | 147796477531/1000000000000 | 0 |
| `a * a * b * b` | 66400 | 215268701156873401041/15625000000000000000000 | 17867302196020492286403/19531250000000000000 |
| `a * a * b` | 273771/5000 | 613540616015007/15625000000000000 | 167969627987044481397/78125000000000000000 |
| `a * a` | -76386944399/2500000000 | 1748661489/15625000000 | 0 |
| `b * c * e * h` | -6323/20 | 553670616392349879/50000000000000000000 | 0 |
| `b * e * h` | -2952245836063/2000000 | 90130329870153/2500000000000000 | 0 |
| `c * e * h` | 1147008577/5000000 | 1578025087833/50000000000000 | 1810008310465629343641/250000000000000000000 |
| `e * h` | 3038997260395033/500000000000000 | 256881831/2500000000 | 780663180654259860345423/1250000000000000000000000 |
| `c * v` | -76574774827/5000000000 | 2587658891/20000000000 | 0 |
| `b * e * h * r` | -945400 | 553670616392349879/50000000000000000000 | 0 |
| `b * e * r` | -258364899/1250000 | 90130329870153/2500000000000000 | 0 |
| `e * h * r` | -86998004/625 | 1578025087833/50000000000000 | 0 |
| `a * h * j` | -25623848311/1000000000 | 969215148363/25000000000000 | 0 |
| `a * p * w` | -22541/625 | 241245063824763/6250000000000000 | 0 |
| `a * w` | 5288319531/312500000 | 9269030769/62500000000 | 49017596449142649339/19531250000000000000 |
| `p * k` | 170835304514501998493/3473162500000000000 | 91093297214249/896300000000000 | 15561951168826264512743940096126757/3112995548750000000000000000000000 |
| `q * j` | -581165180172103058437/3473162500000000000 | 424587009/2500000000 | 0 |
| `b * e * r * k` | 100 | 315451989352601210619411/22407500000000000000000000 | 315451989352601210619411/224075000000000000000000 |
| `b * e * k` | 133321/2500 | 51351455209604624877/1120375000000000000000 | 6846227359999698193226517/2800937500000000000000000 |
| `b * r * k` | -107/200 | 7543630326245335883/179260000000000000000 | 0 |
| `b * k` | -163860927173127/19375000000000 | 1228004285568181/8963000000000000 | 0 |
| `e * r * k` | 40433/1250 | 899074537219943997/22407500000000000000 | 36352280763413995630701/28009375000000000000000 |
| `e * k` | -224272718341337/125000000000000 | 146357567510979/1120375000000000 | 0 |
| `r * k` | -3976098304532642107/1120375000000000000 | 21500216113541/179260000000000 | 0 |
| `b * e * v * r` | -100 | 37966229763513639261/2500000000000000000000 | 0 |
| `b * e * v` | -18739/2500 | 6180405300913827/125000000000000000 | 0 |
| `b * v * r` | -431371/10000 | 907913761472933/20000000000000000 | 0 |
| `e * v * r` | -87303/1000 | 108208131844947/2500000000000000 | 0 |
| `e * v` | -3898164121/100000000 | 17614867629/125000000000 | 0 |
| `b * e * u * k` | -100 | 21658041100658056192748397/1120375000000000000000000000 | 0 |
| `b * e * u` | -364176392379/10000 | 6188093448863031/125000000000000000 | 0 |
| `b * u * k` | -30863/625 | 517924315485521586741/8963000000000000000000 | 0 |
| `b * u` | 39950070647/1250000000 | 147980329743/1000000000000 | 5911824627599205353721/1250000000000000000000 |
| `e * u * k` | 29596/625 | 61727914030998014019/1120375000000000000000 | 456724835915354305726581/175058593750000000000000 |
| `e * u` | 128227509759104168863/3473162500000000000 | 17636779737/125000000000 | 2261520345845338156675184729031/434145312500000000000000000000 |
| `u * k` | -14109299921720624513/112037500000000000 | 1476144009158907/8963000000000000 | 0 |
| `b * e * w * j` | -100 | 12270399463820860131/625000000000000000000 | 0 |
| `b * e * w` | -2157/25 | 3252159942703647/62500000000000000 | 0 |
| `b * e * j` | 250421/5000 | 55357599641883/1250000000000000 | 13862705459919982743/6250000000000000000 |
| `b * w * j` | 31439/5000 | 293430888486043/5000000000000000 | 9225173703112705877/25000000000000000000 |
| `b * j` | 207841883/50000000 | 1323806099/10000000000 | 275142352343044417/500000000000000000 |
| `e * w * j` | -290693872923709/11203750000000 | 34972053091437/625000000000000 | 0 |
| `e * w` | -7471786616965143119/560187500000000000 | 9269030769/62500000000 | 0 |
| `w * j` | 3212087832331848639343/43414531250000000000 | 836311861/5000000000 | 2686307152752904305139262147323/217072656250000000000000000000 |
| `b * e * u * w` | 200 | 1371634229594632862367/62500000000000000000000 | 1371634229594632862367/312500000000000000000 |
| `b * u * w` | 675643/10000 | 32800875949844151/500000000000000000 | 22161682229380551714093/5000000000000000000000 |
| `e * u * w` | 125911/2500 | 3909315686164209/62500000000000000 | 492225847360621719399/156250000000000000000 |
| `b * e * v * j` | 100 | 23318669200347869271/1250000000000000000000 | 23318669200347869271/12500000000000000000 |
| `b * v * j` | 17183/1250 | 557636109724463/10000000000000000 | 9581861273395447729/12500000000000000000 |
| `e * v * j` | 111493/10000 | 66460895564217/1250000000000000 | 7409924629141245981/12500000000000000000 |
| `v * j` | 87757135661653559199/3473162500000000000 | 1589327201/10000000000 | 139474802788913134273434471999/34731625000000000000000000000 |
| `a * r * k` | -1107821/10000 | 899074537219943997/22407500000000000000 | 0 |
| `a * u * k` | 203/10 | 61727914030998014019/1120375000000000000000 | 12530766548292596845857/11203750000000000000000 |
| `a * u` | 1789696453/10000000 | 17636779737/125000000000 | 31564482137651172861/1250000000000000000 |
| `a * w * j` | 1107821/10000 | 34972053091437/625000000000000 | 38742774827808828777/6250000000000000000 |
| `a * v * j` | -203/10 | 66460895564217/1250000000000000 | 0 |
| `b * b * e * e` | 183300 | 215268701156873401041/15625000000000000000000 | 394587529220548944108153/156250000000000000000 |
| `b * e * e` | 254503/1250 | 613540616015007/15625000000000000 | 156147927397667326521/19531250000000000000 |
| `e * e` | -40191747090533/2500000000 | 1748661489/15625000000 | 0 |
| `a * c * e * f` | -200 | 3768980004180188001/312500000000000000000 | 0 |
| `a * c * f` | -3931646453/193750000 | 90130329870153/2500000000000000 | 0 |
| `a * e * f` | -463989/5000 | 613540616015007/15625000000000000 | 0 |
| `a * f` | -4604620168812118541/31000000000000000 | 14672038071/125000000000 | 0 |
| `c * e * f` | 6510827041/24218750 | 90130329870153/2500000000000000 | 586822988932842171207273/60546875000000000000000 |
| `c * f` | -86354082305905743873/775000000000000000 | 2155351409/20000000000 | 0 |
| `e * f` | 7801828095064455821/31000000000000000 | 14672038071/125000000000 | 114468718834183103004609561291/3875000000000000000000000000 |
| `a * b * e * f` | 100 | 215268701156873401041/15625000000000000000000 | 215268701156873401041/156250000000000000000 |
| `a * b * f` | 17183/1250 | 5147875293705273/125000000000000000 | 88455941171737705959/156250000000000000000 |
| `b * e * f` | -83644/625 | 5147875293705273/125000000000000000 | 0 |
| `b * f` | 142309460141/5000000000 | 123104844769/1000000000000 | 17518983999817997852429/5000000000000000000000 |
| `b * h * h` | 34379217151/1250000000 | 13240323705487/400000000000000 | 455191963820470543207537/500000000000000000000000 |
| `h * h` | 40731167870951038067/625000000000000000 | 37736449/400000000 | 1537049639072582429512404083/250000000000000000000000000 |
| `a * a * b * r` | -1122900 | 3768980004180188001/312500000000000000000 | 0 |
| `a * a * r` | -2138365597/5000 | 10742027526927/312500000000000 | 0 |
| `c * w` | -83737305389859203983/11203750000000000000 | 1361638951/10000000000 | 0 |
| `b * h * w` | 84793/1000 | 477748727264713/10000000000000000 | 40509747830956809409/10000000000000000000 |
| `h * w` | -1746127063921/40000000000 | 1361638951/10000000000 | 0 |
| `a * b * w` | 334631/5000 | 3252159942703647/62500000000000000 | 1088273533786864099257/312500000000000000000 |
| `b * h * u * w` | -100 | 201495780959892619593/10000000000000000000000 | 0 |
| `b * h * u` | -44543/1250 | 909043165611249/20000000000000000 | 0 |
| `h * u * w` | 124089/2500 | 574286205612711/10000000000000000 | 71262600968275695279/25000000000000000000 |
| `b * c * h * v` | -100 | 5577314236728227419/400000000000000000000 | 0 |
| `b * c * v` | 222307/5000 | 907913761472933/20000000000000000 | 201835584571763316431/100000000000000000000 |
| `b * h * v` | -193985493/1000 | 907913761472933/20000000000000000 | 0 |
| `c * h * v` | 184693/5000 | 15895988567413/400000000000000 | 2935877816481209209/2000000000000000000 |
| `h * v` | 210410856317/5000000000 | 2587658891/20000000000 | 544471523111608564447/100000000000000000000 |
| `b * h * q` | -413073/5000 | 242548160108997/5000000000000000 | 0 |
| `h * q` | -1370481799573/50000000000 | 691290219/5000000000 | 0 |
| `b * h * h * p` | 247700 | 344605905082710149/40000000000000000000 | 853588826889873039073/400000000000000000 |
| `b * h * p` | -105737/2500 | 56097331122043/2000000000000000 | 0 |
| `h * h * p` | 279663/5000 | 982166558123/40000000000000 | 274675646144352549/200000000000000000 |
| `h * p` | 88614278992593054229/868290625000000000 | 159883861/2000000000 | 14167993065066967911914898169/1736581250000000000000000000 |
| `b * e * h * p` | 866800 | 2345822095530472131/250000000000000000000 | 5083396481014533107877/625000000000000000 |
| `e * h * p` | 123651/5000 | 6685863415437/250000000000000 | 826713697182200487/1250000000000000000 |
| `a * b * h * p` | 100 | 2345822095530472131/250000000000000000000 | 2345822095530472131/2500000000000000000 |
| `a * h * p` | -75477/2500 | 6685863415437/250000000000000 | 0 |
| `p * v` | 964343167400604990213/22407500000000000000 | 10963535399/100000000000 | 10572610452580315624216274049987/2240750000000000000000000000000 |
| `q * u` | -7488080312799887/100000000000000 | 47462030613/250000000000 | 0 |
| `b * b * h * v` | -11000 | 318553346091677691179/20000000000000000000000 | 0 |
| `b * b * v` | 293079/5000 | 51856315495959253/1000000000000000000 | 15197997089240241909987/5000000000000000000000 |
| `b * h * q * u` | 100 | 102297354555730683717/5000000000000000000000 | 102297354555730683717/50000000000000000000 |
| `b * q * u` | 85229/10000 | 16652670446969019/250000000000000000 | 1419290449524722520351/2500000000000000000000 |
| `b * b * h * q` | -2191400 | 85101175100323014411/5000000000000000000000 | 0 |
| `b * b * q` | -37277/1000 | 13853357496389877/250000000000000000 | 0 |
| `b * h * p * w` | 1117600 | 12434366124518685251/1000000000000000000000 | 17370809475952603295647/1250000000000000000 |
| `b * p * w` | 55221/10000 | 2024152063245757/50000000000000000 | 111775701084493947297/500000000000000000000 |
| `h * p * w` | 426847/5000 | 35439376977677/1000000000000000 | 15127191744790494419/5000000000000000000 |
| `b * h * q * r` | -100 | 1489973347549568571/100000000000000000000 | 0 |
| `h * q * r` | -93543/1250 | 4246595815317/100000000000000 | 0 |
| `b * c * q` | -22688300 | 242548160108997/5000000000000000 | 0 |
| `b * f * q * v` | 100 | 5835546751706782617849/250000000000000000000000 | 5835546751706782617849/2500000000000000000000 |
| `b * f * q` | -930787/10000 | 13853357496389877/250000000000000000 | 0 |
| `b * f * v` | 16536/125 | 51856315495959253/1000000000000000000 | 107187004130147775951/15625000000000000000 |
| `b * q * v` | 184693/5000 | 16631981005996023/250000000000000000 | 3071810467940423475939/1250000000000000000000 |
| `f * q * v` | 40433/1250 | 16631981005996023/250000000000000000 | 672480888015437197959/312500000000000000000 |
| `f * q` | 12387651254292003/193750000000000 | 39483665979/250000000000 | 489109884388805836582865937/48437500000000000000000000 |
| `f * v` | 5911613771866596243/217072656250000000 | 147796477531/1000000000000 | 873715692005631551557998516033/217072656250000000000000000000 |
| `q * v` | -2559290901/100000000 | 47403063321/250000000000 | 0 |
| `a * f * p * v` | 100 | 160857408766884175329/12500000000000000000000 | 160857408766884175329/125000000000000000000 |
| `a * f * p` | -35987/1250 | 381869134873917/12500000000000000 | 0 |
| `a * f * v` | -1382029/10000 | 6180405300913827/125000000000000000 | 0 |
| `f * p * v` | -141529/5000 | 3846698920699337/100000000000000000 | 0 |
| `f * p` | -229420713103901/12109375000000 | 9131911301/100000000000 | 0 |
| `a * p * u` | -100 | 459032466214899/12500000000000000 | 0 |
| `p * u` | -7696819933677025041/700234375000000000 | 10977173547/100000000000 | 0 |
| `b * e * q` | -698593993/1250 | 1651088460243843/31250000000000000 | 0 |
| `e * q` | 22865123051/2500000000 | 4705792461/31250000000 | 107598523673233118511/78125000000000000000 |
| `a * c * h * p` | 558900 | 41071258961029491/5000000000000000000 | 229547266333193825199/50000000000000000 |
| `c * h * p` | 59228382887/560187500 | 982166558123/40000000000000 | 58172136963315984041101/22407500000000000000000 |
| `b * f * v * w` | -100 | 11494315323887840142221/500000000000000000000000 | 0 |
| `b * f * w` | 89913/1000 | 27287050576962233/500000000000000000 | 2453460578526405255729/500000000000000000000 |
| `b * v * w` | -1215643/10000 | 32760123820088867/500000000000000000 | 0 |
| `f * v * w` | 50042/625 | 32760123820088867/500000000000000000 | 819691058102443541207/156250000000000000000 |
| `v * w` | 69827727557/1250000000 | 93370129709/500000000000 | 6519823979281803690913/625000000000000000000 |
| `b * b * w` | -1157/10 | 27287050576962233/500000000000000000 | 0 |
| `b * u * w * k` | -100 | 114801549997574258352249837/4481500000000000000000000000 | 0 |
| `b * w * k` | -10349/2000 | 272195745926186295917/4481500000000000000000 | 0 |
| `u * w * k` | 684693/5000 | 327197652638135848899/4481500000000000000000 | 224029942377763148790203007/22407500000000000000000000 |
| `w * k` | -2847176223535385613/224075000000000000 | 775789256565059/4481500000000000 | 0 |
| `b * q * u * k` | 100 | 58283576994532200720724953/2240750000000000000000000000 | 58283576994532200720724953/22407500000000000000000000 |
| `b * q * k` | -2033538731/19375000 | 138191006267844112473/2240750000000000000000 | 0 |
| `q * u * k` | -84567/1250 | 166114913782679281431/2240750000000000000000 | 0 |
| `q * k` | 6930181083/625000000 | 393860299512471/2240750000000000 | 2729523197026040646786093/1400468750000000000000000 |
| `b * p * w * k` | 100 | 7084438679220850723831759/448150000000000000000000000 | 7084438679220850723831759/4481500000000000000000000 |
| `b * p * k` | -1884223023/1250 | 31961267540483046887/896300000000000000000 | 0 |
| `p * w * k` | 40433/1250 | 20191466980618790593/448150000000000000000 | 816401584427359560046769/560187500000000000000000 |
| `b * p * v * k` | -100 | 13463268454950457221539219/896300000000000000000000000 | 0 |
| `b * p * v` | -620973414951727/5601875000000 | 3846698920699337/100000000000000000 | 0 |
| `b * v * k` | 585029/10000 | 517280841239883859897/8963000000000000000000 | 302624293269728014671682013/89630000000000000000000000 |
| `p * v * k` | 84567/1250 | 38371867238638606013/896300000000000000000 | 3244993696769950994701371/1120375000000000000000000 |
| `v * k` | -162930567411/2500000000 | 1474310033374519/8963000000000000 | 0 |
| `b * q * r * k` | -200 | 848907351503366382921639/44815000000000000000000000 | 0 |
| `q * r * k` | -40433/1250 | 2419483819905109353/44815000000000000000 | 0 |
| `a * p * w * j` | 100 | 910217625810830799/62500000000000000000 | 910217625810830799/625000000000000000 |
| `a * p * j` | -2956284041/2500 | 4106424005607/125000000000000 | 0 |
| `p * w * j` | 6328500887/48437500 | 21766688806247/500000000000000 | 137750509417387110641089/24218750000000000000000 |
| `p * j` | 565325166791229/48437500000000 | 98199871/1000000000 | 55514858451952171731459/48437500000000000000000 |
| `c * c * e * h` | 2323/20 | 9693808114558119/1000000000000000000 | 22518716250118510437/20000000000000000000 |
| `c * c * e` | 32189811/400000 | 1578025087833/50000000000000 | 50796329330602669563/20000000000000000000 |
| `c * f * k` | -94856/625 | 7543630326245335883/179260000000000000000 | 0 |
| `f * k` | 520399380283751/9687500000000 | 1228004285568181/8963000000000000 | 639052669195471784162036926931/86829062500000000000000000000 |
| `a * c * f * k` | 100 | 315451989352601210619411/22407500000000000000000000 | 315451989352601210619411/224075000000000000000000 |
| `a * f * k` | 169450451689/1000000000 | 51351455209604624877/1120375000000000000000 | 8701527280154955856511056067253/1120375000000000000000000000000 |
| `a * f * f * k` | -100 | 18017325629207507498218851/1120375000000000000000000000 | 0 |
| `a * f * f` | -368287/10000 | 5147875293705273/125000000000000000 | 0 |
| `f * f * k` | 209611/5000 | 430861267647308690203/8963000000000000000000 | 90313261172820021862141033/44815000000000000000000000 |
| `f * f` | 225894787764943/3875000000000 | 123104844769/1000000000000 | 27808742781929508475133167/3875000000000000000000000 |
| `a * e * f * f` | 100 | 215268701156873401041/15625000000000000000000 | 215268701156873401041/156250000000000000000 |
| `e * f * f` | -19519/2500 | 5147875293705273/125000000000000000 | 0 |
| `a * f * j` | 107817/1250 | 55357599641883/1250000000000000 | 5968490320588899411/1562500000000000000 |
| `f * j` | -38871144245721/484375000000 | 1323806099/10000000000 | 0 |
| `a * e * f * j` | -100 | 2314888744224621411/156250000000000000000 | 0 |
| `e * f * j` | 209611/5000 | 55357599641883/1250000000000000 | 11603561818534737513/6250000000000000000 |
| `a * f * r` | -421225279/12109375 | 90130329870153/2500000000000000 | 0 |
| `f * r` | -10464237301044887/96875000000000 | 2155351409/20000000000 | 0 |
| `c * h * u` | -73421/5000 | 15915762466689/400000000000000 | 0 |
| `c * u` | 136339617979/5000000000 | 2590877823/20000000000 | 353239292618083179717/100000000000000000000 |
| `a * c * f * v` | -100 | 37966229763513639261/2500000000000000000000 | 0 |
| `c * f * v` | -637571/10000 | 907913761472933/20000000000000000 | 0 |
| `a * b * c * v` | 100 | 37966229763513639261/2500000000000000000000 | 37966229763513639261/25000000000000000000 |
| `a * c * u` | 100 | 108342737924391/2500000000000000 | 108342737924391/25000000000000 |
| `c * h * q * u` | -100 | 1791048497663913237/100000000000000000000 | 0 |
| `c * h * q` | -57952912407/1250000 | 4246595815317/100000000000000 | 0 |
| `c * q * u` | -68407/2500 | 291559254055659/5000000000000000 | 0 |
| `c * h * p * w` | -100 | 217704092773869811/20000000000000000000 | 0 |
| `c * h * w` | 24590659/1000000 | 8364548075993/200000000000000 | 205689749425849949387/200000000000000000000 |
| `c * p * w` | -6568531449/5000 | 35439376977677/1000000000000000 | 0 |
| `c * h * v * r` | 100 | 97649057769618059/8000000000000000000 | 97649057769618059/80000000000000000 |
| `c * v * r` | 986757/10000 | 15895988567413/400000000000000 | 15685477990814749641/4000000000000000000 |
| `h * v * r` | 458059/10000 | 15895988567413/400000000000000 | 7281300627200631367/4000000000000000000 |
| `c * h * q * r` | -656000 | 26086838093492331/2000000000000000000 | 0 |
| `c * f * q` | -28616794719/387500000 | 242548160108997/5000000000000000 | 0 |
| `c * q * j` | 2215696211/96875000 | 2608237996287/50000000000000 | 5779063045759337968557/4843750000000000000000 |
| `a * b * p * v` | -100 | 160857408766884175329/12500000000000000000000 | 0 |
| `c * f * q * w` | -1421300 | 53762497525279948029/2500000000000000000000 | 0 |
| `c * f * w` | -2466711/12500 | 477748727264713/10000000000000000 | 0 |
| `c * q * w` | 193867/5000 | 153229316072883/2500000000000000 | 29706107819101608561/12500000000000000000 |
| `f * q * w` | -292647/2500 | 8751830949907203/125000000000000000 | 0 |
| `q * w` | -2033504981/100000000 | 24943727181/125000000000 | 0 |
| `a * p * r * k` | -100 | 23400212980223482409919/2240750000000000000000000 | 0 |
| `a * p * r` | 96089/10000 | 6685863415437/250000000000000 | 642437929725925893/2500000000000000000 |
| `a * p * k` | -13857/200 | 3809248409608250433/112037500000000000000 | 0 |
| `p * r * k` | -514244115861821/5601875000000 | 559586124787131607/17926000000000000000 | 0 |
| `p * r` | -91343263163493459643/5601875000000000000 | 159883861/2000000000 | 0 |
| `a * f * p * w` | -277600 | 84643966828747820469/6250000000000000000000 | 0 |
| `a * f * w` | -130387/1250 | 3252159942703647/62500000000000000 | 0 |
| `f * p * w` | -255259996103387/48437500 | 2024152063245757/50000000000000000 | 0 |
| `a * a * p * r` | -597800 | 279582750443329029/31250000000000000000 | 0 |
| `a * a * p` | -4187/500 | 45512412574203/1562500000000000 | 0 |
| `c * f * v * w` | 100 | 201245440626805909981/10000000000000000000000 | 201245440626805909981/100000000000000000000 |
| `c * v * w` | 40433/1250 | 573572706802387/10000000000000000 | 23191265254140913571/12500000000000000000 |
| `c * u * w` | -1293907/10000 | 574286205612711/10000000000000000 | 0 |
| `b * c * w` | 737133/6250 | 477748727264713/10000000000000000 | 352164352574819687829/62500000000000000000 |
| `c * f * w * k` | -200 | 1672098467224562415818131/89630000000000000000000000 | 0 |
| `c * w * k` | 118303502326291/11203750000000 | 4765673403079157437/89630000000000000000 | 563795854527518248370545733276167/1004192112500000000000000000000000 |
| `f * w * k` | -1215811/5000 | 272195745926186295917/4481500000000000000000 | 0 |
| `c * w * j` | -28343/2500 | 5137463762123/100000000000000 | 0 |
| `a * r * j` | 1051602630184053/173658125000000 | 969215148363/25000000000000 | 1019229199232757950391655239/4341453125000000000000000000 |
| `r * j` | 8807730249606870377713/43414531250000000000 | 23177539/200000000 | 204141511361742972847387788307/8682906250000000000000000000 |
| `c * r * w * k` | 100 | 29275531715115264135491/1792600000000000000000000 | 29275531715115264135491/17926000000000000000000 |
| `c * r * w` | -494249/10000 | 8364548075993/200000000000000 | 0 |
| `c * r * k` | 81176/625 | 132075827585482363/3585200000000000000 | 1340173422509889537361/280093750000000000000 |
| `r * w * k` | 184693/5000 | 4765673403079157437/89630000000000000000 | 880186517834898824511841/448150000000000000000000 |
| `r * w` | -125492692911370941/1000000000000000 | 1361638951/10000000000 | 0 |
| `c * w * w * j` | -100 | 1138754805120897811/50000000000000000000 | 0 |
| `c * w * w` | -94603/5000 | 301816804961807/5000000000000000 | 0 |
| `w * w * j` | -184693/5000 | 185374378173677/2500000000000000 | 0 |
| `w * w` | 23501988121/2500000000 | 49131825649/250000000000 | 1154695582765841115529/625000000000000000000 |
| `c * f * w * w` | 100 | 105896349639314489441/5000000000000000000000 | 105896349639314489441/50000000000000000000 |
| `f * w * w` | 97412/625 | 17238539742685087/250000000000000000 | 419810158353609923711/39062500000000000000 |
| `a * r * r` | -20 | 1578025087833/50000000000000 | 0 |
| `r * r` | -54641909695975081/625000000000000 | 37736449/400000000 | 0 |
| `c * q * u * w` | 100 | 64626149576215206963/2500000000000000000000 | 64626149576215206963/25000000000000000000 |
| `q * u * w` | 13857/200 | 10520291319585741/125000000000000000 | 145779676815499613037/25000000000000000000 |
| `c * u * w * k` | 100 | 2009975180156068519786557/89630000000000000000000000 | 2009975180156068519786557/896300000000000000000000 |
| `c * u * k` | 278343/5000 | 9067952648263165701/179260000000000000000 | 2524001143975514330713443/896300000000000000000000 |
| `c * c * h * w` | 4887/100 | 51383418830824999/4000000000000000000 | 251110767826241770113/400000000000000000000 |
| `c * c * w` | 67719159/2000000 | 8364548075993/200000000000000 | 566440161121314049887/400000000000000000000 |
| `a * f * h * p` | -164300 | 2345822095530472131/250000000000000000000 | 0 |
| `a * f * h` | -148551689/1000000000 | 90130329870153/2500000000000000 | 0 |
| `f * h * p` | 1511474257/96875000 | 56097331122043/2000000000000000 | 84789671877372919747051/193750000000000000000000 |
| `f * h` | 767988175636551617/12500000000000000 | 2155351409/20000000000 | 1655284396453580999602178353/250000000000000000000000000 |
| `a * a * f * p` | -58500 | 15968621613022587189/1562500000000000000000 | 0 |
| `a * a * f` | -12615057/2000 | 613540616015007/15625000000000000 | 0 |
| `e * f * f * v` | -100 | 2168475545094528082701/125000000000000000000000 | 0 |
| `e * f * v` | 111023/5000 | 6180405300913827/125000000000000000 | 686167137723355815021/625000000000000000000 |
| `f * f * v` | -135297767348307/96875000 | 51856315495959253/1000000000000000000 | 0 |
| `b * e * f * v` | -115900 | 2168475545094528082701/125000000000000000000000 | 0 |
| `e * f * u` | 121142809/19375000 | 6188093448863031/125000000000000000 | 749643022749765431594079/2421875000000000000000000 |
| `f * u` | 6819629305348653/96875000000000 | 147980329743/1000000000000 | 1009170993330519704520886179/96875000000000000000000000 |
| `h * h * u` | 9619/5000 | 15915762466689/400000000000000 | 153093719167081491/2000000000000000000 |
| `c * h * h` | -94450425100747/15625000000000 | 231815006207/8000000000000 | 0 |
| `f * h * k` | -383321/2500 | 7543630326245335883/179260000000000000000 | 0 |
| `h * k` | 402437802037/5000000000 | 21500216113541/179260000000000 | 8652499716053930473083017/896300000000000000000000 |
| `e * f * h` | 122554851689/1000000000 | 90130329870153/2500000000000000 | 11045909209917247542738417/2500000000000000000000000 |
| `e * h * j` | -85158251689/1000000000 | 969215148363/25000000000000 | 0 |
| `h * r * k` | 1784357/10000 | 132075827585482363/3585200000000000000 | 235670427482948552795591/35852000000000000000000 |
| `h * w * j` | -1081949/5000 | 5137463762123/100000000000000 | 0 |
| `f * h * w` | 33119/1250 | 477748727264713/10000000000000000 | 15822560098280029847/12500000000000000000 |
| `h * u * k` | -84567/1250 | 9067952648263165701/179260000000000000000 | 0 |
| `h * v * j` | 6143/200 | 9763236995743/200000000000000 | 59975564864849249/40000000000000000 |
| `e * r * r` | 94213/1000 | 1578025087833/50000000000000 | 148670477600010429/50000000000000000 |
| `a * e * p * r` | -823400 | 279582750443329029/31250000000000000000 | 0 |
| `e * p * r` | 76071055236821/5601875000000 | 6685863415437/250000000000000 | 508600685181548735942205777/1400468750000000000000000000 |
| `e * r * j` | -7105164236125183/173658125000000 | 969215148363/25000000000000 | 0 |
| `e * f * r` | -6521321633/96875000 | 90130329870153/2500000000000000 | 0 |
| `a * h * p * j` | -100 | 25225762666443801/2500000000000000000 | 0 |
| `h * p * j` | 4462308809/48437500 | 603241807553/20000000000000 | 2691851231800834634377/968750000000000000000 |
| `e * p * v * j` | -100 | 1729777728849875859/125000000000000000000 | 0 |
| `e * p * v` | 59009/500 | 458462159779983/12500000000000000 | 27053393586457016847/6250000000000000000 |
| `e * p * j` | -54769383596429/96875000 | 4106424005607/125000000000000 | 0 |
| `p * v * j` | -13779/625 | 41365419060427/1000000000000000 | 0 |
| `e * q * u * j` | 100 | 7488347556924636633/312500000000000000000 | 7488347556924636633/3125000000000000000 |
| `e * q * u` | -59009/500 | 1984719734143821/31250000000000000 | 0 |
| `e * q * j` | 418051/5000 | 17754954955353/312500000000000 | 7422476674040277003/1562500000000000000 |
| `e * u * j` | 23680783/9687500 | 66543569947701/1250000000000000 | 1575803839976828729883/12109375000000000000000 |
| `q * u * j` | 17183/1250 | 179074241502849/2500000000000000 | 3077032691743454367/3125000000000000000 |
| `u * j` | -4983389568740889/48437500000000 | 1591304253/10000000000 | 0 |
| `e * f * f * h` | 632200 | 31623397929231492039/2500000000000000000000 | 99961560854300746335279/12500000000000000000 |
| `f * f * h` | 7231/1000 | 756233061415967/20000000000000000 | 5468321267098857377/20000000000000000000 |
| `f * f * v * w` | 100 | 11494315323887840142221/500000000000000000000000 | 11494315323887840142221/5000000000000000000000 |
| `f * f * w` | 12154113243/193750000 | 27287050576962233/500000000000000000 | 331649902779867466816151619/96875000000000000000000000 |
| `f * u * w` | -6670558841/48437500 | 32800875949844151/500000000000000000 | 0 |
| `f * v * r` | 323116429/12109375 | 907913761472933/20000000000000000 | 293361852447091891116257/242187500000000000000000 |
| `u * r` | 38641862905368997159/1400468750000000000 | 2590877823/20000000000 | 100116345640926882371003104857/28009375000000000000000000000 |
| `c * f * h * w` | -100 | 2934810431587131959/200000000000000000000 | 0 |
| `c * f * h` | 627490668452111/19375000000000 | 13240323705487/400000000000000 | 8308179572478368886127433057/7750000000000000000000000000 |
| `h * u * r` | -35043/1250 | 15915762466689/400000000000000 | 0 |
| `f * f * w * k` | 100 | 95503416002899502344326371/4481500000000000000000000000 | 95503416002899502344326371/44815000000000000000000000 |
| `f * w * j` | -4238320171/24218750 | 293430888486043/5000000000000000 | 0 |
| `e * f * w * j` | 100 | 12270399463820860131/625000000000000000000 | 12270399463820860131/6250000000000000000 |
| `e * f * w` | 20003/400 | 3252159942703647/62500000000000000 | 65052955333901050941/25000000000000000000 |
| `f * r * k` | -1024597/5000 | 7543630326245335883/179260000000000000000 | 0 |
| `c * f * v * k` | 100 | 3177656207736606551347271/179260000000000000000000000 | 3177656207736606551347271/1792600000000000000000000 |
| `c * v * k` | -184693/5000 | 9056686535019670217/179260000000000000000 | 0 |
| `f * v * k` | 13857/200 | 517280841239883859897/8963000000000000000000 | 7167960617061070646592729/1792600000000000000000000 |
| `f * h * u * k` | 100 | 3181609070027559107349963/179260000000000000000000000 | 3181609070027559107349963/1792600000000000000000000 |
| `f * h * u` | 1639503507/38750000 | 909043165611249/20000000000000000 | 1490379458034024534150243/775000000000000000000000 |
| `f * u * k` | 33857/200 | 517924315485521586741/8963000000000000000000 | 17535363549393304362290037/1792600000000000000000000 |
| `c * v * j` | -100 | 9763236995743/200000000000000 | 0 |
| `h * u * j` | -1596698941/19375000 | 9775382026179/200000000000000 | 0 |
| `c * h * j` | 6437101289/96875000 | 142379622077/4000000000000 | 916512048799189557253/387500000000000000000 |
| `c * e * h * p` | 241100 | 41071258961029491/5000000000000000000 | 99022805355042102801/50000000000000000 |
| `c * e * p` | 92485422551/1120375000 | 6685863415437/250000000000000 | 618344903094963001319787/280093750000000000000000 |
| `f * h * p * v` | 100 | 23630271469856027191/2000000000000000000000 | 23630271469856027191/20000000000000000000 |
| `f * h * v` | 107821/10000 | 907913761472933/20000000000000000 | 97892169675773108993/200000000000000000000 |
| `h * p * v` | -184693/5000 | 67348997956057/2000000000000000 | 0 |
| `h * p * r * k` | 100 | 3437537564567349461801/358520000000000000000000 | 3437537564567349461801/3585200000000000000000 |
| `h * p * r` | -65835552119/10000 | 982166558123/40000000000000 | 0 |
| `h * p * k` | 13857/200 | 559586124787131607/17926000000000000000 | 7754184931175282678199/3585200000000000000000 |
| `h * h * p * j` | 100 | 3705714423798079/400000000000000000 | 3705714423798079/4000000000000000 |
| `h * h * j` | 107821/10000 | 142379622077/4000000000000 | 15351513231964217/40000000000000000 |
| `f * h * h * p` | -2477300 | 344605905082710149/40000000000000000000 | 0 |
| `f * h * h` | 30734974451681/1250000000000 | 13240323705487/400000000000000 | 406941010820129253956073647/500000000000000000000000000 |
| `f * h * p * w` | -2133000 | 12434366124518685251/1000000000000000000000 | 0 |
| `h * r * r` | -14099/5000 | 231815006207/8000000000000 | 0 |
| `f * h * r * k` | -100 | 46340521094125098329269/3585200000000000000000000 | 0 |
| `f * h * r` | -24567138439/193750000 | 13240323705487/400000000000000 | 0 |
| `f * h * r * w` | 100 | 2934810431587131959/200000000000000000000 | 2934810431587131959/2000000000000000000 |
| `f * r * w` | 2439567/10000 | 477748727264713/10000000000000000 | 1165500029326994099271/100000000000000000000 |
| `h * r * w` | 81949/5000 | 8364548075993/200000000000000 | 685466350279550357/1000000000000000000 |
| `h * r * j` | 5932316641/48437500 | 142379622077/4000000000000 | 844641001386678083357/193750000000000000000 |
| `h * v * r * r` | 100 | 97649057769618059/8000000000000000000 | 97649057769618059/80000000000000000 |
| `v * r * r` | 211134792209/5000000000 | 15895988567413/400000000000000 | 3356196243137383343685317/2000000000000000000000000 |
| `h * u * r * w` | -100 | 3527840161078883673/200000000000000000000 | 0 |
| `u * r * w` | -211134792209/5000000000 | 574286205612711/10000000000000000 | 0 |
| `h * v * r * j` | -100 | 59975564864849249/4000000000000000000 | 0 |
| `v * r * j` | -35492944766529521/173658125000000 | 9763236995743/200000000000000 | 0 |
| `c * h * h * r` | -14415113/100 | 1424039583129601/160000000000000000 | 0 |
| `h * h * r` | 81641559/2000000 | 231815006207/8000000000000 | 18925738506334156713/16000000000000000000 |
| `h * p * v * r` | -100 | 413724894444058151/40000000000000000000 | 0 |
| `p * v * r` | 608133207791/5000000000 | 67348997956057/2000000000000000 | 40957162168526445868040087/10000000000000000000000000 |
| `h * q * u * r` | 100 | 1791048497663913237/100000000000000000000 | 1791048497663913237/1000000000000000000 |
| `q * u * r` | -608133207791/5000000000 | 291559254055659/5000000000000000 | 0 |
| `c * e * f * h` | 100 | 553670616392349879/50000000000000000000 | 553670616392349879/500000000000000000 |
| `c * e * q` | -6283/5000 | 28907683087923/625000000000000 | 0 |
| `c * e * u` | -52339/5000 | 108342737924391/2500000000000000 | 0 |
| `c * e * w` | -256763926326291/11203750000000 | 56939656013967/1250000000000000 | 0 |
| `c * e * e` | -1006221/5000 | 10742027526927/312500000000000 | 0 |
| `c * e * q * u` | -100 | 12192133326845492403/625000000000000000000 | 0 |
| `c * e * p * v` | 100 | 2816333047528435569/250000000000000000000 | 2816333047528435569/2500000000000000000 |
| `c * e * v` | 189277/10000 | 108208131844947/2500000000000000 | 20481310571216033319/25000000000000000000 |
| `c * p * v` | 17183/1250 | 67348997956057/2000000000000000 | 1157257831878927431/2500000000000000000 |
| `b * e * q * j` | -100 | 6229556760500019639/312500000000000000000 | 0 |
| `b * q * j` | -68407/2500 | 148971871738767/2500000000000000 | 0 |
| `c * p * k` | -1117/10 | 559586124787131607/17926000000000000000 | 0 |
| `c * c * h * q` | 527/5 | 26086838093492331/2000000000000000000 | 13747763675270458437/10000000000000000000 |
| `c * c * q` | -1787982697361/100000 | 4246595815317/100000000000000 | 0 |
| `c * f * h * q` | -527/5 | 1489973347549568571/100000000000000000000 | 0 |
| `f * h * q` | 5817921/100000 | 242548160108997/5000000000000000 | 1411126034209495935237/500000000000000000000 |
| `c * h * q * j` | 100 | 16022406011191041/1000000000000000000 | 16022406011191041/10000000000000000 |
| `b * h * q * j` | -100 | 915134208091245681/50000000000000000000 | 0 |
| `b * h * j` | -100171/5000 | 8132140866157/200000000000000 | 0 |
| `b * b * q * v` | -100 | 5835546751706782617849/250000000000000000000000 | 0 |
| `c * e * q * r` | -58000 | 177579897209110989/12500000000000000000 | 0 |
| `e * q * r` | 107433/5000 | 28907683087923/625000000000000 | 3105639117184831659/3125000000000000000 |
| `b * q * w` | 346769/5000 | 8751830949907203/125000000000000000 | 3034863666668370877107/625000000000000000000 |
| `c * q * v * r` | -100 | 1788823281456687129/100000000000000000000 | 0 |
| `c * q * v` | -13857/200 | 291197017980903/5000000000000000 | 0 |
| `q * v * r` | -184693/5000 | 291197017980903/5000000000000000 | 0 |
| `b * q * u * w` | -200 | 3691180973263811844483/125000000000000000000000 | 0 |
| `b * q * v * r` | 100 | 102170259319833569289/5000000000000000000000 | 102170259319833569289/50000000000000000000 |
| `b * e * f * q` | 100 | 579305850426535486509/31250000000000000000000 | 579305850426535486509/312500000000000000000 |
| `e * f * q` | -246043/5000 | 1651088460243843/31250000000000000 | 0 |
| `b * p * v * w` | 100 | 852647742665452941409/50000000000000000000000 | 852647742665452941409/500000000000000000000 |
| `p * v * w` | -40433/1250 | 2430144365936143/50000000000000000 | 0 |
| `c * v * r * k` | -100 | 55635225384625834143031/3585200000000000000000000 | 0 |
| `v * r * k` | -684693/5000 | 9056686535019670217/179260000000000000000 | 0 |
| `b * v * r * k` | 100 | 3177656207736606551347271/179260000000000000000000000 | 3177656207736606551347271/1792600000000000000000000 |
| `b * q * w * j` | 100 | 33020658173999876919/1250000000000000000000 | 33020658173999876919/12500000000000000000 |
| `c * e * e * u` | -28700 | 4530568271784258447/312500000000000000000 | 0 |
| `e * e * u` | 3041/200 | 737517218262129/15625000000000000 | 2242789860735134289/3125000000000000000 |
| `e * f * v * r` | 100 | 37966229763513639261/2500000000000000000000 | 37966229763513639261/25000000000000000000 |
| `e * u * r` | 166711511531409/5601875000000 | 108342737924391/2500000000000000 | 18061981602826533382463696919/14004687500000000000000000000 |
| `e * u * w * j` | -100 | 14749848083897560557/625000000000000000000 | 0 |
| `u * w * j` | 15458863307/96875000 | 352723726807221/5000000000000000 | 5452707877848440979539847/484375000000000000000000 |
| `e * v * r * j` | 100 | 408269281450985031/25000000000000000000 | 408269281450985031/250000000000000000 |
| `f * h * q * r` | 1671600 | 1489973347549568571/100000000000000000000 | 6226598619409647058209/250000000000000000 |
| `f * q * r` | 1541169173/193750000 | 242548160108997/5000000000000000 | 373807747327854496349481/968750000000000000000000 |
| `f * h * w * j` | -100 | 1802545947969762149/100000000000000000000 | 0 |
| `f * h * j` | -44543/1250 | 8132140866157/200000000000000 | 0 |
| `f * f * h * w` | -2571600 | 167624351694278997319/10000000000000000000000 | 0 |
| `f * h * q * u` | -100 | 102297354555730683717/5000000000000000000000 | 0 |
| `f * q * u` | 210261/5000 | 16652670446969019/250000000000000000 | 3501407140850152903959/1250000000000000000000 |
| `f * h * q * j` | 100 | 915134208091245681/50000000000000000000 | 915134208091245681/500000000000000000 |
| `f * q * j` | 2914621063/24218750 | 148971871738767/2500000000000000 | 434196555164344731849321/60546875000000000000000 |
| `c * f * h * h` | 74423659439233/62500000 | 81335308522806641/8000000000000000000 | 6053271301886306741117348346353/500000000000000000000000000 |
| `b * c * h * h` | 1825943/62500 | 81335308522806641/8000000000000000000 | 148513637250059126487463/500000000000000000000000 |
| `f * q * r * k` | 100 | 848907351503366382921639/44815000000000000000000000 | 848907351503366382921639/448150000000000000000000 |
| `f * q * k` | 378346857/2421875 | 138191006267844112473/2240750000000000000000 | 52284132887106120120114047361/5426816406250000000000000000 |
| `f * q * w * j` | -100 | 33020658173999876919/1250000000000000000000 | 0 |
| `f * p * v * w` | -200 | 852647742665452941409/50000000000000000000000 | 0 |
| `f * q * u * w` | 200 | 3691180973263811844483/125000000000000000000000 | 3691180973263811844483/625000000000000000000 |
| `f * r * w * k` | -100 | 1672098467224562415818131/89630000000000000000000000 | 0 |
| `f * w * w * j` | 100 | 65041010449150833251/2500000000000000000000 | 65041010449150833251/25000000000000000000 |
| `r * r * k` | 100 | 132075827585482363/3585200000000000000 | 132075827585482363/35852000000000000 |
| `r * w * j` | -100 | 5137463762123/100000000000000 | 0 |
| `q * r * j` | -6747373788355949/173658125000000 | 2608237996287/50000000000000 | 0 |
| `c * h * h * u` | 125500 | 97770528832870527/8000000000000000000 | 24540402737050502277/16000000000000000 |
| `h * u * w * j` | 100 | 2166781853776758603/100000000000000000000 | 2166781853776758603/1000000000000000000 |
| `h * q * r * j` | -100 | 16022406011191041/1000000000000000000 | 0 |
| `b * f * q * k` | -100 | 48486111032154588834614199/2240750000000000000000000000 | 0 |
| `b * f * k` | -100171/5000 | 430861267647308690203/8963000000000000000000 | 0 |
| `e * f * p * w` | 100 | 84643966828747820469/6250000000000000000000 | 84643966828747820469/62500000000000000000 |
| `e * f * p` | -162322299/24218750 | 381869134873917/12500000000000000 | 0 |
| `e * p * w` | 215763/5000 | 241245063824763/6250000000000000 | 52051758706022339169/31250000000000000000 |
| `e * f * q * r` | -682300 | 10142636411277927549/625000000000000000000 | 0 |
| `e * f * u * w` | -100 | 1371634229594632862367/62500000000000000000000 | 0 |
| `p * u * k` | 83/10 | 38419600126378872489/896300000000000000000 | 3188826810489446416587/8963000000000000000000 |
| `c * c * h * h` | 2710242767/62500000 | 1424039583129601/160000000000000000 | 3859492980098696333845967/10000000000000000000000000 |
| `e * f * h * r` | -632200 | 553670616392349879/50000000000000000000 | 0 |
| `c * e * f * v` | -34600 | 37966229763513639261/2500000000000000000000 | 0 |
| `f * f * w * w` | -100 | 6048365769737717680081/250000000000000000000000 | 0 |
| `c * f * q * k` | 100 | 848907351503366382921639/44815000000000000000000000 | 848907351503366382921639/448150000000000000000000 |
| `c * q * k` | 40433/1250 | 2419483819905109353/44815000000000000000 | 97826989290223286469849/56018750000000000000000 |
| `c * e * p * w` | -83200 | 1481968427075519109/125000000000000000000 | 0 |
| `p * r * w` | 95441792209/5000000000 | 35439376977677/1000000000000000 | 3382397653519866665518493/5000000000000000000000000 |
| `q * r * r` | -95441792209/5000000000 | 4246595815317/100000000000000 | 0 |
| `u * r * k` | 251012464593591/5601875000000 | 9067952648263165701/179260000000000000000 | 2276169143058517623483478055622291/1004192112500000000000000000000000 |
| `u * w * w` | -100 | 20721887917547889/250000000000000000 | 0 |
| `v * r * w` | 100 | 573572706802387/10000000000000000 | 573572706802387/100000000000000 |
| `e * u * r * w` | 100 | 24014926260106735887/1250000000000000000000 | 24014926260106735887/12500000000000000000 |
| `e * r * w` | -81949/5000 | 56939656013967/1250000000000000 | 0 |
| `e * f * r * w` | -100 | 19978018528028503521/1250000000000000000000 | 0 |
| `e * v * r * r` | -100 | 664722553923509421/50000000000000000000 | 0 |
| `e * p * k` | -100 | 3809248409608250433/112037500000000000000 | 0 |
| `e * p * u` | -58809013264227/5601875000000 | 459032466214899/12500000000000000 | 0 |
| `f * h * h * u` | -258300 | 5584252166349902607/400000000000000000000 | 0 |
| `f * h * h * r` | 565800 | 81335308522806641/8000000000000000000 | 230097587811019987389/40000000000000000 |
| `f * f * h * q` | 1450900 | 85101175100323014411/5000000000000000000000 | 1234732949530586616089199/50000000000000000000 |
| `f * f * q` | -693316063/24218750 | 13853357496389877/250000000000000000 | 0 |
| `e * f * k` | -64858251689/1000000000 | 51351455209604624877/1120375000000000000000 | 0 |
| `f * v * j` | 48882679/12109375 | 557636109724463/10000000000000000 | 27258746950469703276377/121093750000000000000000 |
| `f * p * k` | -240300 | 31961267540483046887/896300000000000000000 | 0 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 130 | -240740612758613521145600198579136393585813/8033536900000000000000000000000000 |

## Stage 131

| Property | Value |
| --- | --- |
| Scope | root/ACP+/HBP-/HEQ-/CFQ+/PQR+/PQS+/PRS- |
| Packet | forest:root/ACP+/HBP-/HEQ-/CFQ+/PQR+/PQS+/PRS- |
| Index | 0 |
| Context | 54 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 104 |
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
| 131:4 | ABF | lo | 119853/1000000 | earlier 104:4; ABF; lo; 119853/1000000 |
| 131:9 | ABP | hi | 397537/1000000 | earlier 104:9; ABP; hi; 397537/1000000 |
| 131:10 | ABQ | lo | 30069/250000 | earlier 104:10; ABQ; lo; 30069/250000 |
| 131:20 | ACH | lo | 279/1000 | occupants P |
| 131:23 | ACP | hi | 114557/200000 | earlier 104:23; ACP; hi; 114557/200000 |
| 131:30 | AEF | lo | 58423/500000 | earlier 104:30; AEF; lo; 58423/500000 |
| 131:32 | AEH | lo | 34/125 | earlier 104:32; AEH; lo; 34/125 |
| 131:44 | AHP | lo | 93/1000 | occupants none |
| 131:47 | AHQ | hi | 725709/1000000 | earlier 104:47; AHQ; hi; 725709/1000000 |
| 131:50 | AHS | lo | 121527/1000000 | earlier 104:50; AHS; lo; 121527/1000000 |
| 131:52 | BCE | lo | 93/1000 | occupants none |
| 131:56 | BCH | lo | 13743/125000 | earlier 104:56; BCH; lo; 13743/125000 |
| 131:58 | BCP | lo | 93/1000 | occupants none |
| 131:68 | BEH | lo | 191911/1000000 | earlier 104:68; BEH; lo; 191911/1000000 |
| 131:80 | BFR | lo | 13327/125000 | earlier 104:80; BFR; lo; 13327/125000 |
| 131:98 | CEF | lo | 105333/1000000 | earlier 104:98; CEF; lo; 105333/1000000 |
| 131:100 | CEH | lo | 279/1000 | occupants Q |
| 131:101 | CEH | hi | 792719/1250000 | vertex maximum 792719/1250000 |
| 131:102 | CEP | lo | 122643/1000000 | earlier 104:102; CEP; lo; 122643/1000000 |
| 131:103 | CEP | hi | 9842204069/20000000000 | vertex maximum 9842204069/20000000000 |
| 131:104 | CEQ | lo | 93/1000 | occupants none |
| 131:106 | CER | lo | 93/1000 | occupants none |
| 131:107 | CER | hi | 10275787/31250000 | vertex maximum 10275787/31250000 |
| 131:110 | CFH | lo | 304181/1000000 | earlier 104:110; CFH; lo; 304181/1000000 |
| 131:114 | CFQ | lo | 93/1000 | occupants none |
| 131:117 | CFR | hi | 84567/125000 | vertex maximum 84567/125000 |
| 131:118 | CFS | lo | 93/1000 | occupants none |
| 131:121 | CHP | hi | 84567/125000 | earlier 104:121; CHP; hi; 84567/125000 |
| 131:122 | CHQ | lo | 93/1000 | occupants none |
| 131:128 | CPQ | lo | 93/1000 | occupants none |
| 131:131 | CPR | hi | 892179/1000000 | vertex maximum 892179/1000000 |
| 131:135 | CQR | hi | 173267/250000 | earlier 104:135; CQR; hi; 173267/250000 |
| 131:136 | CQS | lo | 93/1000 | occupants none |
| 131:138 | EFH | lo | 69961/500000 | earlier 104:138; EFH; lo; 69961/500000 |
| 131:144 | EFR | lo | 279/1000 | occupants S |
| 131:145 | EFR | hi | 9117760239/15625000000 | vertex maximum 9117760239/15625000000 |
| 131:146 | EFS | lo | 93/1000 | occupants none |
| 131:149 | EHP | hi | 8997/12500 | earlier 104:149; EHP; hi; 8997/12500 |
| 131:150 | EHQ | lo | 93/1000 | occupants none |
| 131:151 | EHQ | hi | 28011/62500 | earlier 104:151; EHQ; hi; 28011/62500 |
| 131:153 | EHR | hi | 107817/125000 | vertex maximum 107817/125000 |
| 131:157 | EPR | hi | 96192063243/125000000000 | vertex maximum 96192063243/125000000000 |
| 131:158 | EPS | lo | 93/1000 | occupants none |
| 131:161 | EQR | hi | 321691/500000 | earlier 104:161; EQR; hi; 321691/500000 |
| 131:164 | ERS | lo | 93/1000 | occupants none |
| 131:165 | ERS | hi | 397537/1000000 | earlier 104:165; ERS; hi; 397537/1000000 |
| 131:166 | FHP | lo | 93/1000 | occupants none |
| 131:169 | FHQ | hi | 9217/15625 | earlier 104:169; FHQ; hi; 9217/15625 |
| 131:170 | FHR | lo | 93/1000 | occupants none |
| 131:184 | FRS | lo | 93/1000 | occupants none |
| 131:188 | HPR | lo | 93/1000 | occupants none |
| 131:193 | HQR | hi | 93641/125000 | earlier 104:193; HQR; hi; 93641/125000 |
| 131:196 | HRS | lo | 93/1000 | occupants none |
| 131:200 | PQS | lo | 93/1000 | occupants none |
| 131:202 | PRS | lo | 93/1000 | occupants none |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 280 | plu | BCR * CEP = BCE * CPR + BCP * CER | circuit CBEPR |
| 433 | plu | CEF * EHR = CEH * EFR + CER * EFH | circuit ECFHR |
| 434 | plu | CFR * EFH = CEF * FHR + CFH * EFR | circuit FCEHR |
| 837 | quad | CER + CHR >= 93/125 | quadrilateral CERH; occupants Q, S |
| 853 | quad | CER + CPR >= 93/125 | quadrilateral CERP; occupants Q, S |
| 1397 | bary | outer CEH; fans EHQ, CHQ, CEQ; target FQS; sign -1; vertices CFS -1; EFS -1; FHS -1 | container CEH; inner Q; line FS |
| 1560 | bary | outer CPS; fans PQS, CQS, CPQ; target AHQ; sign -1; vertices ACH -1; AHP -1; AHS -1 | container CPS; inner Q; line AH |
| 1574 | bary | outer CPS; fans PQS, CQS, CPQ; target FHQ; sign 1; vertices CFH 1; FHP 1; FHS 1 | container CPS; inner Q; line FH |
| 1581 | bary | outer CPS; fans PQS, CQS, CPQ; target HQR; sign -1; vertices CHR -1; HPR -1; HRS -1 | container CPS; inner Q; line HR |
| 1614 | bary | outer EFR; fans FRS, ERS, EFS; target HQS; sign 1; vertices EHQ 1; FHQ 1; HQR 1 | container EFR; inner S; line HQ |
| 1664 | bary | outer EPR; fans PRS, ERS, EPS; target CPS; sign -1; vertices CEP -1; none 0; CPR -1 | container EPR; inner S; line CP |
| 1671 | bary | outer EPR; fans PRS, ERS, EPS; target FHS; sign 1; vertices EFH 1; FHP 1; FHR 1 | container EPR; inner S; line FH |
| 1766 | four | 1 * CFH + -1 * CHQ + -1 * CFQ + -1 * FHQ = 0 | vertices CFHQ |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 131:207 | CHR | lo | 207587/500000 | 12974213/31250000 | 837 | 131:107 |
| 131:208 | CPR | lo | 207587/500000 | 12974213/31250000 | 853 | 131:107 |
| 131:226 | CPS | hi | 736009/1000000 | 23599386052394249/32064021081000000 | 1664 | 131:157, 131:202, 131:164, 131:158, 131:103, 131:131 |
| 131:229 | FHS | lo | 9867/100000 | 3163776710533/32064021081000 | 1671 | 131:157, 131:202, 131:164, 131:158, 131:138, 131:166, 131:170 |
| 131:238 | BCR | lo | 19207/200000 | 945203640/9842204069 | 280 | 131:52, 131:208, 131:58, 131:106, 131:103 |
| 131:243 | AHQ | lo | 120107/1000000 | 11049981/92001125 | 1560 | 131:226, 131:200, 131:136, 131:128, 131:20, 131:44, 131:50 |
| 131:247 | FHQ | lo | 301/2500 | 4430799/36800450 | 1574 | 131:226, 131:200, 131:136, 131:128, 131:110, 131:166, 131:229 |
| 131:248 | HQR | lo | 33427/250000 | 98411019/736009000 | 1581 | 131:226, 131:200, 131:136, 131:128, 131:207, 131:188, 131:196 |
| 131:253 | CFH | lo | 383/1250 | 383/1250 | 1766 | 131:122, 131:114, 131:247 |
| 131:255 | EFH | lo | 140837/1000000 | 31760523/225512000 | 434 | 131:98, 131:170, 131:253, 131:144, 131:117 |
| 131:256 | FHQ | lo | 120681/1000000 | 88822347/736009000 | 1574 | 131:226, 131:200, 131:136, 131:128, 131:253, 131:166, 131:229 |
| 131:260 | FHS | lo | 98781/1000000 | 3167322335533/32064021081000 | 1671 | 131:157, 131:202, 131:164, 131:158, 131:255, 131:166, 131:170 |
| 131:261 | CFH | lo | 306681/1000000 | 306681/1000000 | 1766 | 131:122, 131:114, 131:256 |
| 131:263 | CEF | lo | 105431/1000000 | 30312947/287512000 | 433 | 131:100, 131:144, 131:106, 131:255, 131:153 |
| 131:264 | EFH | lo | 70483/500000 | 15894847/112756000 | 434 | 131:263, 131:170, 131:261, 131:144, 131:117 |
| 131:270 | FHQ | lo | 12073/100000 | 88858803/736009000 | 1574 | 131:226, 131:200, 131:136, 131:128, 131:261, 131:166, 131:260 |
| 131:274 | FHS | lo | 24699/250000 | 3167822210533/32064021081000 | 1671 | 131:157, 131:202, 131:164, 131:158, 131:264, 131:166, 131:170 |
| 131:275 | CFH | lo | 30673/100000 | 30673/100000 | 1766 | 131:122, 131:114, 131:270 |
| 131:277 | CEF | lo | 21089/200000 | 15158473/143756000 | 433 | 131:100, 131:144, 131:106, 131:264, 131:153 |
| 131:278 | EFH | lo | 35247/250000 | 6358937/45102400 | 434 | 131:277, 131:170, 131:275, 131:144, 131:117 |
| 131:284 | FHQ | lo | 60369/500000 | 17772951/147201800 | 1574 | 131:226, 131:200, 131:136, 131:128, 131:275, 131:166, 131:274 |
| 131:287 | HQS | lo | 25977/250000 | 45114871237/434179059000 | 1614 | 131:145, 131:184, 131:164, 131:146, 131:150, 131:284, 131:248 |
| 131:288 | FHS | lo | 98799/1000000 | 351989717837/3562669009000 | 1671 | 131:157, 131:202, 131:164, 131:158, 131:278, 131:166, 131:170 |
| 131:289 | CFH | lo | 153369/500000 | 153369/500000 | 1766 | 131:122, 131:114, 131:284 |
| 131:291 | CEF | lo | 13181/125000 | 7579407/71878000 | 433 | 131:100, 131:144, 131:106, 131:278, 131:153 |
| 131:296 | FQS | lo | 1877/20000 | 297588003/3170876000 | 1397 | 131:101, 131:150, 131:122, 131:104, 131:118, 131:146, 131:288 |
| 131:297 | FHQ | lo | 6037/50000 | 44432889/368004500 | 1574 | 131:226, 131:200, 131:136, 131:128, 131:289, 131:166, 131:288 |
| 131:300 | CFH | lo | 15337/50000 | 15337/50000 | 1766 | 131:122, 131:114, 131:297 |
| 131:301 | EFH | lo | 140993/1000000 | 1135561/8054000 | 434 | 131:291, 131:170, 131:300, 131:144, 131:117 |

## Stage 132

| Property | Value |
| --- | --- |
| Scope | root/ACP+/HBP-/HEQ-/CFQ+/PQR+/PQS+/PRS- |
| Packet | forest:root/ACP+/HBP-/HEQ-/CFQ+/PQR+/PQS+/PRS- |
| Index | 1 |
| Context | 54 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 131 |
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
| u | 68739/500000 | 107817/125000 | 8703/62500 | 107817/125000 |
| v | 17183/125000 | 208603/250000 | 17183/125000 | 416739/500000 |
| r | 40433/62500 | 1/1 | 40433/62500 | 1/1 |
| w | 274929/500000 | 1/1 | 274929/500000 | 1/1 |
| j | 51267/100000 | 892179/1000000 | 51267/100000 | 892179/1000000 |
| k | 412393/1000000 | 8033/8963 | 412393/1000000 | 8033/8963 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 89 | A_EHQ | bitt ["actual-area","EHQ",[]] | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -93/1000` |
| 540 | AREA_lo_AHQ | bitt ["earlier-area",{"direction":"lo","ref":"131:243","triangle":"AHQ","value":"120107/1000000"}] | `1/1 * h * u + -1/1 * a * u + -120107/1000000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 540 | u | 68739/500000 | 107817/125000 | 120107/862536 | 107817/125000 | 8703/62500 | 107817/125000 | `(277693/500000, -120107/1000000); (4417/20000, -120107/1000000); (107817/125000, -120107/1000000); (66/125, -120107/1000000)` |
| 1 | 89 | v | 17183/125000 | 208603/250000 | 17183/125000 | 13023079/15625000 | 17183/125000 | 416739/500000 | `(-1/1, 16328550321/31250000000); (-1/1, 711371349/1250000000); (-1/1, 6147606149/7812500000); (-1/1, 13023079/15625000); (-1/1, 7550598819/62500000000); (-1/1, 1023397311/2500000000); (-1/1, 2547369511/15625000000); (-1/1, 7055953/15625000)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 132:4 | ABF | lo | 119853/1000000 | earlier 131:4; ABF; lo; 119853/1000000 |
| 132:9 | ABP | hi | 397537/1000000 | earlier 131:9; ABP; hi; 397537/1000000 |
| 132:10 | ABQ | lo | 30069/250000 | earlier 131:10; ABQ; lo; 30069/250000 |
| 132:23 | ACP | hi | 114557/200000 | earlier 131:23; ACP; hi; 114557/200000 |
| 132:30 | AEF | lo | 58423/500000 | earlier 131:30; AEF; lo; 58423/500000 |
| 132:32 | AEH | lo | 34/125 | earlier 131:32; AEH; lo; 34/125 |
| 132:46 | AHQ | lo | 120107/1000000 | earlier 131:243; AHQ; lo; 120107/1000000 |
| 132:47 | AHQ | hi | 725709/1000000 | earlier 131:47; AHQ; hi; 725709/1000000 |
| 132:56 | BCH | lo | 13743/125000 | earlier 131:56; BCH; lo; 13743/125000 |
| 132:62 | BCR | lo | 19207/200000 | earlier 131:238; BCR; lo; 19207/200000 |
| 132:68 | BEH | lo | 191911/1000000 | earlier 131:68; BEH; lo; 191911/1000000 |
| 132:80 | BFR | lo | 13327/125000 | earlier 131:80; BFR; lo; 13327/125000 |
| 132:98 | CEF | lo | 13181/125000 | earlier 131:291; CEF; lo; 13181/125000 |
| 132:102 | CEP | lo | 122643/1000000 | earlier 131:102; CEP; lo; 122643/1000000 |
| 132:110 | CFH | lo | 15337/50000 | earlier 131:300; CFH; lo; 15337/50000 |
| 132:121 | CHP | hi | 84567/125000 | earlier 131:121; CHP; hi; 84567/125000 |
| 132:130 | CPR | lo | 207587/500000 | earlier 131:208; CPR; lo; 207587/500000 |
| 132:133 | CPS | hi | 736009/1000000 | earlier 131:226; CPS; hi; 736009/1000000 |
| 132:135 | CQR | hi | 173267/250000 | earlier 131:135; CQR; hi; 173267/250000 |
| 132:138 | EFH | lo | 140993/1000000 | earlier 131:301; EFH; lo; 140993/1000000 |
| 132:149 | EHP | hi | 8997/12500 | earlier 131:149; EHP; hi; 8997/12500 |
| 132:151 | EHQ | hi | 28011/62500 | earlier 131:151; EHQ; hi; 28011/62500 |
| 132:161 | EQR | hi | 321691/500000 | earlier 131:161; EQR; hi; 321691/500000 |
| 132:165 | ERS | hi | 397537/1000000 | earlier 131:165; ERS; hi; 397537/1000000 |
| 132:168 | FHQ | lo | 6037/50000 | earlier 131:297; FHQ; lo; 6037/50000 |
| 132:169 | FHQ | hi | 9217/15625 | earlier 131:169; FHQ; hi; 9217/15625 |
| 132:182 | FQS | lo | 1877/20000 | earlier 131:296; FQS; lo; 1877/20000 |
| 132:193 | HQR | hi | 93641/125000 | earlier 131:193; HQR; hi; 93641/125000 |
| 132:194 | HQS | lo | 25977/250000 | earlier 131:287; HQS; lo; 25977/250000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |


## Stage 133

| Property | Value |
| --- | --- |
| Scope | root/ACP+/HBP-/HEQ-/CFQ+/PQR+/PQS+/PRS- |
| Packet | forest:root/ACP+/HBP-/HEQ-/CFQ+/PQR+/PQS+/PRS- |
| Index | 2 |
| Context | 54 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 132 |
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
| u | 8703/62500 | 107817/125000 | 8703/62500 | 107817/125000 |
| v | 17183/125000 | 416739/500000 | 17183/125000 | 416739/500000 |
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
| 133:4 | ABF | lo | 119853/1000000 | earlier 132:4; ABF; lo; 119853/1000000 |
| 133:9 | ABP | hi | 397537/1000000 | earlier 132:9; ABP; hi; 397537/1000000 |
| 133:10 | ABQ | lo | 30069/250000 | earlier 132:10; ABQ; lo; 30069/250000 |
| 133:23 | ACP | hi | 114557/200000 | earlier 132:23; ACP; hi; 114557/200000 |
| 133:30 | AEF | lo | 58423/500000 | earlier 132:30; AEF; lo; 58423/500000 |
| 133:32 | AEH | lo | 34/125 | earlier 132:32; AEH; lo; 34/125 |
| 133:46 | AHQ | lo | 120107/1000000 | earlier 132:46; AHQ; lo; 120107/1000000 |
| 133:47 | AHQ | hi | 725709/1000000 | earlier 132:47; AHQ; hi; 725709/1000000 |
| 133:56 | BCH | lo | 13743/125000 | earlier 132:56; BCH; lo; 13743/125000 |
| 133:62 | BCR | lo | 19207/200000 | earlier 132:62; BCR; lo; 19207/200000 |
| 133:68 | BEH | lo | 191911/1000000 | earlier 132:68; BEH; lo; 191911/1000000 |
| 133:80 | BFR | lo | 13327/125000 | earlier 132:80; BFR; lo; 13327/125000 |
| 133:98 | CEF | lo | 13181/125000 | earlier 132:98; CEF; lo; 13181/125000 |
| 133:102 | CEP | lo | 122643/1000000 | earlier 132:102; CEP; lo; 122643/1000000 |
| 133:110 | CFH | lo | 15337/50000 | earlier 132:110; CFH; lo; 15337/50000 |
| 133:121 | CHP | hi | 84567/125000 | earlier 132:121; CHP; hi; 84567/125000 |
| 133:130 | CPR | lo | 207587/500000 | earlier 132:130; CPR; lo; 207587/500000 |
| 133:133 | CPS | hi | 736009/1000000 | earlier 132:133; CPS; hi; 736009/1000000 |
| 133:135 | CQR | hi | 173267/250000 | earlier 132:135; CQR; hi; 173267/250000 |
| 133:138 | EFH | lo | 140993/1000000 | earlier 132:138; EFH; lo; 140993/1000000 |
| 133:149 | EHP | hi | 8997/12500 | earlier 132:149; EHP; hi; 8997/12500 |
| 133:151 | EHQ | hi | 28011/62500 | earlier 132:151; EHQ; hi; 28011/62500 |
| 133:161 | EQR | hi | 321691/500000 | earlier 132:161; EQR; hi; 321691/500000 |
| 133:165 | ERS | hi | 397537/1000000 | earlier 132:165; ERS; hi; 397537/1000000 |
| 133:168 | FHQ | lo | 6037/50000 | earlier 132:168; FHQ; lo; 6037/50000 |
| 133:169 | FHQ | hi | 9217/15625 | earlier 132:169; FHQ; hi; 9217/15625 |
| 133:182 | FQS | lo | 1877/20000 | earlier 132:182; FQS; lo; 1877/20000 |
| 133:193 | HQR | hi | 93641/125000 | earlier 132:193; HQR; hi; 93641/125000 |
| 133:194 | HQS | lo | 25977/250000 | earlier 132:194; HQS; lo; 25977/250000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |


## Stage 134

| Property | Value |
| --- | --- |
| Scope | root/ACP+/HBP-/HEQ-/CFQ+/PQR+/PQS+/PRS-/QRS+ |
| Packet | forest:root/ACP+/HBP-/HEQ-/CFQ+/PQR+/PQS+/PRS-/QRS+ |
| Index | 0 |
| Context | 55 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 133 |
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
| p | 107821/1000000 | 235733/500000 | 107821/1000000 | 6143/20000 |
| q | 82827/500000 | 703163/1000000 | 212519/1000000 | 703163/1000000 |
| u | 8703/62500 | 107817/125000 | 49457/250000 | 107817/125000 |
| v | 17183/125000 | 416739/500000 | 17183/125000 | 78637/125000 |
| r | 40433/62500 | 1/1 | 40433/62500 | 1/1 |
| w | 274929/500000 | 1/1 | 776581/1000000 | 1/1 |
| j | 51267/100000 | 892179/1000000 | 269553/500000 | 892179/1000000 |
| k | 412393/1000000 | 8033/8963 | 412393/1000000 | 107817/125000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 10 | A_ABP | bitt ["actual-area","ABP",[]] | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 74 | A_CHQ | bitt ["actual-area","CHQ",[]] | `1/1 * c * v + 1/1 * h * u + -1/1 * c * h + -93/1000` |
| 75 | A_CHR | bitt ["actual-area","CHR",["Q","S"]] | `1/1 * c * w + 1/1 * h * r + -1/1 * c * h + -13857/20000` |
| 78 | A_CPR | bitt ["actual-area","CPR",["Q","S"]] | `-1/1 * p * w + 1/1 * c * w + 1/1 * q * r + -1/1 * c * q + -13857/20000` |
| 88 | A_EFS | bitt ["actual-area","EFS",[]] | `-1/1 * f * k + 1/1 * e * f + 1/1 * k + 1/1 * j + -1093/1000 + -1/1 * e * j` |
| 105 | A_FQR | bitt ["actual-area","FQR",["S"]] | `1/1 * u * w + -1/1 * u + -1/1 * f * w + -1/1 * v * r + 1/1 * f * v + 1/1 * r + -279/1000` |
| 107 | A_FRS | bitt ["actual-area","FRS",[]] | `-1/1 * r * k + 1/1 * r + 1/1 * f * k + 1/1 * w * j + -1/1 * f * w + -1/1 * j + -93/1000` |
| 108 | A_HPQ | bitt ["actual-area","HPQ",[]] | `1/1 * p * v + -1/1 * h * p + -1/1 * q * u + 1/1 * h * u + -93/1000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 75 | w | 274929/500000 | 1/1 | 7714/13857 | 1/1 | 278343/500000 | 1/1 | `(13857/20000, -7246670577/10000000000); (1/1, -1171844919/1250000000); (13857/20000, -184693/250000); (1/1, -522961/500000); (13857/20000, -192016449/400000000); (1/1, -13857/20000); (13857/20000, -3857/10000)` |
| 1 | 78 | p | 107821/1000000 | 235733/500000 | 107821/1000000 | 6143/20000 | 107821/1000000 | 6143/20000 | `(-278343/500000, -19672329243/62500000000); (-278343/500000, -6082868409/31250000000); (-278343/500000, -169720378093/500000000000); (-278343/500000, -24026947921/62500000000); (-278343/500000, -640673697/2500000000); (-278343/500000, -34041/250000); (-278343/500000, -1823471789/20000000000); (-1/1, -1901790747/250000000000); (-1/1, 7770694091/31250000000); (-1/1, -16145325643/500000000000); (-1/1, 3680177079/62500000000); (-1/1, 508806261/10000000000); (-1/1, 6143/20000); (-1/1, 4319530309/20000000000)` |
| 2 | 78 | w | 278343/500000 | 1/1 | 230950/297393 | 1/1 | 776581/1000000 | 1/1 | `(585029/1000000, -175114290747/250000000000); (892179/1000000, -23479305909/31250000000); (3857/10000, -175114290747/250000000000); (13857/20000, -23479305909/31250000000); (585029/1000000, -362570325643/500000000000); (892179/1000000, -58819822921/62500000000); (3857/10000, -362570325643/500000000000); (13857/20000, -58819822921/62500000000); (585029/1000000, -6419693739/10000000000); (892179/1000000, -13857/20000); (3857/10000, -6419693739/10000000000); (13857/20000, -13857/20000); (585029/1000000, -9537469691/20000000000); (3857/10000, -9537469691/20000000000)` |
| 3 | 105 | v | 17183/125000 | 416739/500000 | 17183/125000 | 18278889771/28189000000 | 17183/125000 | 648441/1000000 | `(-40433/125000, 10702669313/125000000000); (3701/125000, -23570956541/125000000000); (-40433/125000, -1187108237/15625000000); (3701/125000, -175081967/500000000); (-84567/125000, 54836669313/125000000000); (-40433/125000, 20563043459/125000000000); (-84567/125000, 4329641763/15625000000); (-40433/125000, 1454033/500000000); (-40433/125000, 2779/62500); (3701/125000, -4822/15625); (-84567/125000, 12423/31250)` |
| 4 | 107 | k | 412393/1000000 | 8033/8963 | 412393/1000000 | 24314/28189 | 412393/1000000 | 107817/125000 | `(-40433/125000, 94095892343/500000000000); (3701/125000, -42998611073/500000000000); (-84567/125000, 270631892343/500000000000); (-40433/125000, 133537388927/500000000000); (-40433/125000, 3601/15625); (3701/125000, -7663/62500); (-84567/125000, 36471/62500); (-40433/125000, 20680452683/200000000000); (3701/125000, -170786743417/1000000000000); (-84567/125000, 91294852683/200000000000); (-40433/125000, 182285256583/1000000000000)` |
| 5 | 108 | u | 8703/62500 | 107817/125000 | 130905442939/834346000000 | 107817/125000 | 31379/200000 | 107817/125000 | `(131799/250000, -76441136953/500000000000); (417173/500000, -23249936757/125000000000); (131799/250000, -2635868099/10000000000); (417173/500000, -894819831/2500000000); (-10313/1000000, -76441136953/500000000000); (296837/1000000, -23249936757/125000000000); (-10313/1000000, -2635868099/10000000000); (296837/1000000, -894819831/2500000000); (131799/250000, -97788222789/1000000000000); (417173/500000, -130905442939/1000000000000); (131799/250000, -2132804487/20000000000); (417173/500000, -4019626937/20000000000); (-10313/1000000, -97788222789/1000000000000); (296837/1000000, -130905442939/1000000000000); (-10313/1000000, -2132804487/20000000000); (296837/1000000, -4019626937/20000000000)` |
| 6 | 10 | q | 82827/500000 | 703163/1000000 | 8986079819/42283500000 | 703163/1000000 | 212519/1000000 | 703163/1000000 | `(40433/125000, -15330393669/125000000000); (40433/125000, -24347937/125000000); (84567/125000, -4279445969/25000000000); (84567/125000, -9035837/25000000); (40433/125000, -5952661731/62500000000); (40433/125000, -6293763/62500000); (84567/125000, -8986079819/62500000000); (84567/125000, -16709387/62500000)` |
| 7 | 74 | u | 31379/200000 | 107817/125000 | 26616941/149000000 | 107817/125000 | 178637/1000000 | 107817/125000 | `(13857/20000, -4777991901/10000000000); (13857/20000, -324193/500000); (1/1, -1726520169/2500000000); (1/1, -59721/62500); (13857/20000, -2475375513/20000000000); (13857/20000, -137409/1000000); (1/1, -6731553063/20000000000); (1/1, -444559/1000000)` |
| 8 | 88 | j | 51267/100000 | 892179/1000000 | 1210934087/2246187500 | 892179/1000000 | 269553/500000 | 892179/1000000 | `(107817/125000, -96192079257/125000000000); (66/125, -82665785169/125000000000); (107817/125000, -108325795743/125000000000); (66/125, -80035089831/125000000000); (107817/125000, -3632802261/7812500000); (66/125, -5574817761/15625000000); (107817/125000, -5632822739/7812500000); (66/125, -7729307239/15625000000)` |
| 9 | 105 | v | 17183/125000 | 648441/1000000 | 17183/125000 | 143297701171/225512000000 | 17183/125000 | 635433/1000000 | `(-40433/125000, 76821103513/1000000000000); (3701/125000, -197367903319/1000000000000); (-40433/125000, -1187108237/15625000000); (3701/125000, -175081967/500000000); (-84567/125000, 429893103513/1000000000000); (-40433/125000, 155704096681/1000000000000); (-84567/125000, 4329641763/15625000000); (-40433/125000, 1454033/500000000); (-40433/125000, 2779/62500); (3701/125000, -4822/15625); (-84567/125000, 12423/31250)` |
| 10 | 74 | u | 178637/1000000 | 107817/125000 | 28555133/149000000 | 107817/125000 | 38329/200000 | 107817/125000 | `(13857/20000, -4777991901/10000000000); (13857/20000, -324193/500000); (1/1, -1726520169/2500000000); (1/1, -59721/62500); (13857/20000, -2655627369/20000000000); (13857/20000, -150417/1000000); (1/1, -6911804919/20000000000); (1/1, -457567/1000000)` |
| 11 | 105 | v | 17183/125000 | 635433/1000000 | 17183/125000 | 142328956387/225512000000 | 17183/125000 | 631137/1000000 | `(-40433/125000, 73914869161/1000000000000); (3701/125000, -200274137671/1000000000000); (-40433/125000, -1187108237/15625000000); (3701/125000, -175081967/500000000); (-84567/125000, 426986869161/1000000000000); (-40433/125000, 152797862329/1000000000000); (-84567/125000, 4329641763/15625000000); (-40433/125000, 1454033/500000000); (-40433/125000, 2779/62500); (3701/125000, -4822/15625); (-84567/125000, 12423/31250)` |
| 12 | 74 | u | 38329/200000 | 107817/125000 | 29195237/149000000 | 107817/125000 | 195941/1000000 | 107817/125000 | `(13857/20000, -4777991901/10000000000); (13857/20000, -324193/500000); (1/1, -1726520169/2500000000); (1/1, -59721/62500); (13857/20000, -2715157041/20000000000); (13857/20000, -154713/1000000); (1/1, -6971334591/20000000000); (1/1, -461863/1000000)` |
| 13 | 105 | v | 17183/125000 | 631137/1000000 | 17183/125000 | 142009020379/225512000000 | 17183/125000 | 629719/1000000 | `(-40433/125000, 72955061137/1000000000000); (3701/125000, -40246789139/200000000000); (-40433/125000, -1187108237/15625000000); (3701/125000, -175081967/500000000); (-84567/125000, 426027061137/1000000000000); (-40433/125000, 30367610861/200000000000); (-84567/125000, 4329641763/15625000000); (-40433/125000, 1454033/500000000); (-40433/125000, 2779/62500); (3701/125000, -4822/15625); (-84567/125000, 12423/31250)` |
| 14 | 74 | u | 195941/1000000 | 107817/125000 | 29406519/149000000 | 107817/125000 | 197359/1000000 | 107817/125000 | `(13857/20000, -4777991901/10000000000); (13857/20000, -324193/500000); (1/1, -1726520169/2500000000); (1/1, -59721/62500); (13857/20000, -2734806267/20000000000); (13857/20000, -156131/1000000); (1/1, -6990983817/20000000000); (1/1, -463281/1000000)` |
| 15 | 105 | v | 17183/125000 | 629719/1000000 | 17183/125000 | 28380683533/45102400000 | 17183/125000 | 2517/4000 | `(-40433/125000, 14527650599/200000000000); (3701/125000, -201550753837/1000000000000); (-40433/125000, -1187108237/15625000000); (3701/125000, -175081967/500000000); (-84567/125000, 85142050599/200000000000); (-40433/125000, 151521246163/1000000000000); (-84567/125000, 4329641763/15625000000); (-40433/125000, 1454033/500000000); (-40433/125000, 2779/62500); (3701/125000, -4822/15625); (-84567/125000, 12423/31250)` |
| 16 | 74 | u | 197359/1000000 | 107817/125000 | 73691/372500 | 107817/125000 | 49457/250000 | 107817/125000 | `(13857/20000, -4777991901/10000000000); (13857/20000, -324193/500000); (1/1, -1726520169/2500000000); (1/1, -59721/62500); (13857/20000, -6853263/50000000); (13857/20000, -783/5000); (1/1, -27989931/80000000); (1/1, -371/800)` |
| 17 | 105 | v | 17183/125000 | 2517/4000 | 17183/125000 | 35467122457/56378000000 | 17183/125000 | 78637/125000 | `(-40433/125000, 18133367371/250000000000); (3701/125000, -50413884337/250000000000); (-40433/125000, -1187108237/15625000000); (3701/125000, -175081967/500000000); (-84567/125000, 106401367371/250000000000); (-40433/125000, 37854115663/250000000000); (-84567/125000, 4329641763/15625000000); (-40433/125000, 1454033/500000000); (-40433/125000, 2779/62500); (3701/125000, -4822/15625); (-84567/125000, 12423/31250)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 134:0 | ABC | lo | 93/1000 | occupants none |
| 134:4 | ABF | lo | 119853/1000000 | earlier 133:4; ABF; lo; 119853/1000000 |
| 134:6 | ABH | lo | 279/1000 | occupants P |
| 134:7 | ABH | hi | 9117760239/15625000000 | vertex maximum 9117760239/15625000000 |
| 134:8 | ABP | lo | 93/1000 | occupants none |
| 134:9 | ABP | hi | 397537/1000000 | earlier 133:9; ABP; hi; 397537/1000000 |
| 134:10 | ABQ | lo | 30069/250000 | earlier 133:10; ABQ; lo; 30069/250000 |
| 134:20 | ACH | lo | 279/1000 | occupants P |
| 134:21 | ACH | hi | 107817/125000 | vertex maximum 107817/125000 |
| 134:22 | ACP | lo | 93/1000 | occupants none |
| 134:23 | ACP | hi | 114557/200000 | earlier 133:23; ACP; hi; 114557/200000 |
| 134:24 | ACQ | lo | 93/1000 | occupants none |
| 134:27 | ACR | hi | 1/1 | vertex maximum 1/1 |
| 134:30 | AEF | lo | 58423/500000 | earlier 133:30; AEF; lo; 58423/500000 |
| 134:36 | AES | lo | 93/1000 | occupants none |
| 134:38 | AFH | lo | 93/1000 | occupants none |
| 134:40 | AFR | lo | 93/1000 | occupants none |
| 134:42 | AFS | lo | 93/1000 | occupants none |
| 134:44 | AHP | lo | 93/1000 | occupants none |
| 134:47 | AHQ | hi | 725709/1000000 | earlier 133:47; AHQ; hi; 725709/1000000 |
| 134:48 | AHR | lo | 93/1000 | occupants none |
| 134:49 | AHR | hi | 107817/125000 | vertex maximum 107817/125000 |
| 134:52 | BCE | lo | 93/1000 | occupants none |
| 134:55 | BCF | hi | 84567/125000 | vertex maximum 84567/125000 |
| 134:56 | BCH | lo | 13743/125000 | earlier 133:56; BCH; lo; 13743/125000 |
| 134:57 | BCH | hi | 84567/125000 | vertex maximum 84567/125000 |
| 134:58 | BCP | lo | 93/1000 | occupants none |
| 134:59 | BCP | hi | 59464385421/125000000000 | vertex maximum 59464385421/125000000000 |
| 134:60 | BCQ | lo | 93/1000 | occupants none |
| 134:68 | BEH | lo | 191911/1000000 | earlier 133:68; BEH; lo; 191911/1000000 |
| 134:77 | BFH | hi | 84567/125000 | vertex maximum 84567/125000 |
| 134:80 | BFR | lo | 13327/125000 | earlier 133:80; BFR; lo; 13327/125000 |
| 134:81 | BFR | hi | 84567/125000 | vertex maximum 84567/125000 |
| 134:82 | BFS | lo | 93/1000 | occupants none |
| 134:84 | BHP | lo | 93/1000 | occupants none |
| 134:89 | BHR | hi | 1/1 | vertex maximum 1/1 |
| 134:100 | CEH | lo | 279/1000 | occupants Q |
| 134:101 | CEH | hi | 792719/1250000 | vertex maximum 792719/1250000 |
| 134:102 | CEP | lo | 122643/1000000 | earlier 133:102; CEP; lo; 122643/1000000 |
| 134:103 | CEP | hi | 9842204069/20000000000 | vertex maximum 9842204069/20000000000 |
| 134:104 | CEQ | lo | 93/1000 | occupants none |
| 134:106 | CER | lo | 93/1000 | occupants none |
| 134:107 | CER | hi | 10275787/31250000 | vertex maximum 10275787/31250000 |
| 134:110 | CFH | lo | 15337/50000 | earlier 133:110; CFH; lo; 15337/50000 |
| 134:111 | CFH | hi | 1939719919/2500000000 | vertex maximum 1939719919/2500000000 |
| 134:113 | CFP | hi | 102929594273/125000000000 | vertex maximum 102929594273/125000000000 |
| 134:114 | CFQ | lo | 93/1000 | occupants none |
| 134:116 | CFR | lo | 279/1000 | occupants S |
| 134:117 | CFR | hi | 84567/125000 | vertex maximum 84567/125000 |
| 134:118 | CFS | lo | 93/1000 | occupants none |
| 134:120 | CHP | lo | 93/1000 | occupants none |
| 134:121 | CHP | hi | 84567/125000 | earlier 133:121; CHP; hi; 84567/125000 |
| 134:122 | CHQ | lo | 93/1000 | occupants none |
| 134:124 | CHR | lo | 13857/20000 | occupants Q, S |
| 134:125 | CHR | hi | 1/1 | vertex maximum 1/1 |
| 134:128 | CPQ | lo | 93/1000 | occupants none |
| 134:130 | CPR | lo | 13857/20000 | occupants Q, S |
| 134:131 | CPR | hi | 892179/1000000 | vertex maximum 892179/1000000 |
| 134:146 | EFR | lo | 279/1000 | occupants S |
| 134:147 | EFR | hi | 9117760239/15625000000 | vertex maximum 9117760239/15625000000 |
| 134:148 | EFS | lo | 93/1000 | occupants none |
| 134:150 | EHP | lo | 93/1000 | occupants none |
| 134:151 | EHP | hi | 8997/12500 | earlier 133:149; EHP; hi; 8997/12500 |
| 134:152 | EHQ | lo | 93/1000 | occupants none |
| 134:153 | EHQ | hi | 28011/62500 | earlier 133:151; EHQ; hi; 28011/62500 |
| 134:155 | EHR | hi | 107817/125000 | vertex maximum 107817/125000 |
| 134:159 | EPR | hi | 96192063243/125000000000 | vertex maximum 96192063243/125000000000 |
| 134:166 | ERS | lo | 93/1000 | occupants none |
| 134:167 | ERS | hi | 397537/1000000 | earlier 133:165; ERS; hi; 397537/1000000 |
| 134:168 | FHP | lo | 93/1000 | occupants none |
| 134:169 | FHP | hi | 66594905727/125000000000 | vertex maximum 66594905727/125000000000 |
| 134:170 | FHQ | lo | 6037/50000 | earlier 133:168; FHQ; lo; 6037/50000 |
| 134:171 | FHQ | hi | 9217/15625 | earlier 133:169; FHQ; hi; 9217/15625 |
| 134:172 | FHR | lo | 93/1000 | occupants none |
| 134:173 | FHR | hi | 35008254477/125000000000 | vertex maximum 35008254477/125000000000 |
| 134:179 | FPR | hi | 580937989233/1000000000000 | vertex maximum 580937989233/1000000000000 |
| 134:184 | FQS | lo | 1877/20000 | earlier 133:182; FQS; lo; 1877/20000 |
| 134:186 | FRS | lo | 93/1000 | occupants none |
| 134:191 | HPR | hi | 787481/1000000 | vertex maximum 787481/1000000 |
| 134:195 | HQR | hi | 93641/125000 | earlier 133:193; HQR; hi; 93641/125000 |
| 134:196 | HQS | lo | 25977/250000 | earlier 133:194; HQS; lo; 25977/250000 |
| 134:198 | HRS | lo | 93/1000 | occupants none |
| 134:200 | PQR | lo | 279/1000 | occupants S |
| 134:202 | PQS | lo | 93/1000 | occupants none |
| 134:204 | PRS | lo | 93/1000 | occupants none |
| 134:206 | QRS | lo | 93/1000 | occupants none |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 9 | fan | CPR = CPQ + PQR + CQR | point Q |
| 15 | fan | FQR = FQS + QRS + FRS | point S |
| 16 | fan | HQR = HQS + QRS + HRS | point S |
| 45 | plu | ACH * BFH = ABH * CFH + AFH * BCH | circuit HABCF |
| 70 | plu | ABR * BCH = ABC * BHR + ABH * BCR | circuit BACHR |
| 72 | plu | ACH * BHR = ABH * CHR + AHR * BCH | circuit HABCR |
| 82 | plu | ACR * BCP = ABC * CPR + ACP * BCR | circuit CABPR |
| 190 | plu | AHR * CFH = ACH * FHR + AFH * CHR | circuit HACFR |
| 292 | plu | BCR * CEP = BCE * CPR + BCP * CER | circuit CBEPR |
| 449 | plu | CEF * CHR = CEH * CFR + CER * CFH | circuit CEFHR |
| 453 | plu | CFR * EHR = CER * FHR + CHR * EFR | circuit RCEFH |
| 458 | plu | CFS * EHS = CES * FHS + CHS * EFS | circuit SCEFH |
| 463 | plu | CFR * EFP = CEF * FPR + CFP * EFR | circuit FCEPR |
| 465 | plu | CFR * EPR = CER * FPR + CPR * EFR | circuit RCEFP |
| 534 | plu | CFH * HPR = CHP * FHR + CHR * FHP | circuit HCFPR |
| 542 | plu | CFH * CQR = CFQ * CHR + CFR * CHQ | circuit CFHQR |
| 559 | plu | CPR * FPQ = CFP * PQR + CPQ * FPR | circuit PCFQR |
| 560 | plu | CQR * FPQ = CFQ * PQR + CPQ * FQR | circuit QCFPR |
| 600 | plu | CRS * PQR = CPR * QRS + CQR * PRS | circuit RCPQS |
| 1365 | support | FQR * EFR >= 1023/1000 * (FQR - EFQ) | pentagon FQCER |
| 1457 | bary | outer ABH; fans BHP, AHP, ABP; target FPS; sign -1; vertices AFS -1; BFS -1; FHS -1 | container ABH; inner P; line FS |
| 1484 | bary | outer ACH; fans CHP, AHP, ACP; target EPS; sign 1; vertices AES 1; CES 1; EHS 1 | container ACH; inner P; line ES |
| 1486 | bary | outer ACH; fans CHP, AHP, ACP; target FPR; sign -1; vertices AFR -1; CFR -1; FHR -1 | container ACH; inner P; line FR |
| 1514 | bary | outer CEH; fans EHQ, CHQ, CEQ; target FQS; sign -1; vertices CFS -1; EFS -1; FHS -1 | container CEH; inner Q; line FS |
| 1540 | bary | outer CFH; fans FHQ, CHQ, CFQ; target EQR; sign 1; vertices CER 1; EFR 1; EHR 1 | container CFH; inner Q; line ER |
| 1541 | bary | outer CFH; fans FHQ, CHQ, CFQ; target EQS; sign 1; vertices CES 1; EFS 1; EHS 1 | container CFH; inner Q; line ES |
| 1543 | bary | outer CFH; fans FHQ, CHQ, CFQ; target FPQ; sign 1; vertices CFP 1; none 0; FHP -1 | container CFH; inner Q; line FP |
| 1545 | bary | outer CFH; fans FHQ, CHQ, CFQ; target FQR; sign -1; vertices CFR -1; none 0; FHR -1 | container CFH; inner Q; line FR |
| 1547 | bary | outer CFH; fans FHQ, CHQ, CFQ; target HPQ; sign 1; vertices CHP 1; FHP 1; none 0 | container CFH; inner Q; line HP |
| 1552 | bary | outer CFH; fans FHQ, CHQ, CFQ; target PQR; sign -1; vertices CPR -1; FPR 1; HPR 1 | container CFH; inner Q; line PR |
| 1561 | bary | outer CFP; fans FPQ, CPQ, CFQ; target BHQ; sign -1; vertices BCH -1; BFH -1; BHP 1 | container CFP; inner Q; line BH |
| 1596 | bary | outer CFR; fans FRS, CRS, CFS; target BFS; sign -1; vertices BCF -1; none 0; BFR -1 | container CFR; inner S; line BF |
| 1698 | bary | outer CHS; fans HQS, CQS, CHQ; target ABQ; sign 1; vertices ABC 1; ABH 1; ABS 1 | container CHS; inner Q; line AB |
| 1733 | bary | outer CPR; fans PQR, CQR, CPQ; target AHQ; sign -1; vertices ACH -1; AHP -1; AHR -1 | container CPR; inner Q; line AH |
| 1737 | bary | outer CPR; fans PQR, CQR, CPQ; target CEQ; sign 1; vertices none 0; CEP 1; CER 1 | container CPR; inner Q; line CE |
| 1746 | bary | outer CPR; fans PQR, CQR, CPQ; target EQR; sign 1; vertices CER 1; EPR 1; none 0 | container CPR; inner Q; line ER |
| 1748 | bary | outer CPR; fans PQR, CQR, CPQ; target FHQ; sign 1; vertices CFH 1; FHP 1; FHR 1 | container CPR; inner Q; line FH |
| 1749 | bary | outer CPR; fans PQR, CQR, CPQ; target FPQ; sign 1; vertices CFP 1; none 0; FPR 1 | container CPR; inner Q; line FP |
| 1764 | bary | outer CPR; fans PRS, CRS, CPS; target ACS; sign 1; vertices none 0; ACP 1; ACR 1 | container CPR; inner S; line AC |
| 1773 | bary | outer CPR; fans PRS, CRS, CPS; target CHS; sign -1; vertices none 0; CHP 1; CHR -1 | container CPR; inner S; line CH |
| 1774 | bary | outer CPR; fans PRS, CRS, CPS; target CPS; sign -1; vertices none 0; none 0; CPR -1 | container CPR; inner S; line CP |
| 1780 | bary | outer CPR; fans PRS, CRS, CPS; target EPS; sign -1; vertices CEP 1; none 0; EPR -1 | container CPR; inner S; line EP |
| 1783 | bary | outer CPR; fans PRS, CRS, CPS; target FHS; sign 1; vertices CFH 1; FHP 1; FHR 1 | container CPR; inner S; line FH |
| 1820 | bary | outer CPS; fans PQS, CQS, CPQ; target HPQ; sign 1; vertices CHP 1; none 0; HPS 1 | container CPS; inner Q; line HP |
| 1842 | bary | outer EFR; fans FRS, ERS, EFS; target CHS; sign -1; vertices CEH -1; CFH -1; CHR -1 | container EFR; inner S; line CH |
| 1844 | bary | outer EFR; fans FRS, ERS, EFS; target CQS; sign -1; vertices CEQ -1; CFQ -1; CQR -1 | container EFR; inner S; line CQ |
| 1845 | bary | outer EFR; fans FRS, ERS, EFS; target CRS; sign 1; vertices CER -1; CFR 1; none 0 | container EFR; inner S; line CR |
| 1859 | bary | outer EFR; fans FRS, ERS, EFS; target HQS; sign 1; vertices EHQ 1; FHQ 1; HQR 1 | container EFR; inner S; line HQ |
| 1951 | bary | outer FQR; fans QRS, FRS, FQS; target EFS; sign -1; vertices none 0; EFQ 1; EFR -1 | container FQR; inner S; line EF |
| 1956 | bary | outer FQR; fans QRS, FRS, FQS; target FHS; sign 1; vertices none 0; FHQ 1; FHR 1 | container FQR; inner S; line FH |
| 1957 | bary | outer FQR; fans QRS, FRS, FQS; target FPS; sign 1; vertices none 0; FPQ 1; FPR 1 | container FQR; inner S; line FP |
| 1958 | bary | outer FQR; fans QRS, FRS, FQS; target FQS; sign 1; vertices none 0; none 0; FQR 1 | container FQR; inner S; line FQ |
| 1966 | bary | outer FQR; fans QRS, FRS, FQS; target PRS; sign -1; vertices FPR 1; PQR -1; none 0 | container FQR; inner S; line PR |
| 1971 | bary | outer HQR; fans QRS, HRS, HQS; target ABS; sign 1; vertices ABH 1; ABQ 1; ABR 1 | container HQR; inner S; line AB |
| 1972 | bary | outer HQR; fans QRS, HRS, HQS; target ACS; sign 1; vertices ACH 1; ACQ 1; ACR 1 | container HQR; inner S; line AC |
| 1973 | bary | outer HQR; fans QRS, HRS, HQS; target AHS; sign -1; vertices none 0; AHQ -1; AHR -1 | container HQR; inner S; line AH |
| 1974 | bary | outer HQR; fans QRS, HRS, HQS; target BCS; sign 1; vertices BCH 1; BCQ 1; BCR 1 | container HQR; inner S; line BC |
| 1977 | bary | outer HQR; fans QRS, HRS, HQS; target CES; sign 1; vertices CEH 1; CEQ 1; CER 1 | container HQR; inner S; line CE |
| 2008 | bary | outer PQR; fans QRS, PRS, PQS; target BHS; sign -1; vertices BHP 1; BHQ -1; BHR -1 | container PQR; inner S; line BH |
| 2011 | bary | outer PQR; fans QRS, PRS, PQS; target CFS; sign -1; vertices CFP 1; CFQ 1; CFR -1 | container PQR; inner S; line CF |
| 2015 | bary | outer PQR; fans QRS, PRS, PQS; target CRS; sign 1; vertices CPR 1; CQR 1; none 0 | container PQR; inner S; line CR |
| 2018 | bary | outer PQR; fans QRS, PRS, PQS; target EHS; sign -1; vertices EHP 1; EHQ 1; EHR -1 | container PQR; inner S; line EH |
| 2026 | bary | outer PQR; fans QRS, PRS, PQS; target HPS; sign 1; vertices none 0; HPQ 1; HPR 1 | container PQR; inner S; line HP |
| 2030 | bary | outer PQR; fans QRS, PRS, PQS; target PQS; sign 1; vertices none 0; none 0; PQR 1 | container PQR; inner S; line PQ |
| 2120 | four | 1 * CFH + -1 * CHQ + -1 * CFQ + -1 * FHQ = 0 | vertices CFHQ |
| 2123 | four | 1 * CFP + -1 * CPQ + -1 * CFQ + -1 * FPQ = 0 | vertices CFPQ |
| 2128 | four | -1 * CFR + 1 * CRS + 1 * CFS + 1 * FRS = 0 | vertices CFRS |
| 2136 | four | -1 * CPQ + -1 * CQS + 1 * CPS + -1 * PQS = 0 | vertices CPQS |
| 2137 | four | -1 * CPR + 1 * CRS + 1 * CPS + 1 * PRS = 0 | vertices CPRS |
| 2164 | four | 1 * FQR + -1 * FRS + -1 * FQS + -1 * QRS = 0 | vertices FQRS |
| 2168 | four | 1 * HQR + -1 * HRS + -1 * HQS + -1 * QRS = 0 | vertices HQRS |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 134:212 | CQR | hi | 520179/1000000 | 520179/1000000 | 9 | 134:131, 134:128, 134:200 |
| 134:216 | FQR | lo | 5597/20000 | 5597/20000 | 15 | 134:184, 134:206, 134:186 |
| 134:220 | HQR | lo | 72477/250000 | 72477/250000 | 16 | 134:196, 134:206, 134:198 |
| 134:226 | BHR | lo | 117983/500000 | 33921657/143756000 | 72 | 134:6, 134:124, 134:48, 134:56, 134:21 |
| 134:228 | AHR | lo | 14561/125000 | 225955125/1939719919 | 190 | 134:20, 134:172, 134:38, 134:124, 134:111 |
| 134:230 | BCR | lo | 148511/1000000 | 1461681000/9842204069 | 292 | 134:52, 134:130, 134:58, 134:106, 134:103 |
| 134:234 | EHR | lo | 18657/62500 | 1346361/4510240 | 453 | 134:106, 134:172, 134:124, 134:146, 134:117 |
| 134:237 | HPR | lo | 47097/500000 | 182710125/1939719919 | 534 | 134:120, 134:172, 134:124, 134:168, 134:111 |
| 134:238 | CQR | lo | 14561/125000 | 225955125/1939719919 | 542 | 134:114, 134:124, 134:116, 134:122, 134:111 |
| 134:240 | FPQ | lo | 99913/1000000 | 346487/3467860 | 560 | 134:114, 134:200, 134:128, 134:216, 134:212 |
| 134:248 | FPR | lo | 56527/500000 | 4063077/35939000 | 1486 | 134:21, 134:120, 134:44, 134:22, 134:40, 134:116, 134:172 |
| 134:251 | EQR | lo | 139927/1000000 | 271420492467/1939719919000 | 1540 | 134:111, 134:170, 134:122, 134:114, 134:106, 134:146, 134:234 |
| 134:252 | FPQ | hi | 614891/1000000 | 149089510428981423887/242464989875000000000 | 1543 | 134:111, 134:170, 134:122, 134:114, 134:113, 134:168 |
| 134:253 | FQR | hi | 547923/1000000 | 265704117111951/484929979750000 | 1545 | 134:111, 134:170, 134:122, 134:114, 134:117, 134:173 |
| 134:254 | HPQ | hi | 144553/250000 | 280391909943201/484929979750000 | 1547 | 134:111, 134:170, 134:122, 134:114, 134:121, 134:169 |
| 134:255 | PQR | hi | 32673/50000 | 1267528982613501/1939719919000000 | 1552 | 134:111, 134:170, 134:122, 134:114, 134:131, 134:248, 134:237 |
| 134:257 | BHQ | hi | 73703/125000 | 7586214998884791/12866199284125000 | 1561 | 134:113, 134:240, 134:128, 134:114, 134:57, 134:77, 134:84 |
| 134:276 | AHQ | lo | 153613/1000000 | 45683677/297393000 | 1733 | 134:131, 134:200, 134:238, 134:128, 134:20, 134:44, 134:228 |
| 134:277 | CEQ | hi | 321199/1000000 | 1910440904216117/5947860000000000 | 1737 | 134:131, 134:200, 134:238, 134:128, 134:103, 134:107 |
| 134:281 | EQR | hi | 551503/1000000 | 6833874395297833/12391375000000000 | 1746 | 134:131, 134:200, 134:238, 134:128, 134:107, 134:159 |
| 134:283 | FHQ | lo | 999/6250 | 15845123/99131000 | 1748 | 134:131, 134:200, 134:238, 134:128, 134:110, 134:168, 134:172 |
| 134:301 | CQS | lo | 96743/1000000 | 294027567409/3039253413000 | 1844 | 134:147, 134:186, 134:166, 134:148, 134:104, 134:114, 134:238 |
| 134:302 | CRS | hi | 55759/125000 | 56488467584057/126635558875000 | 1845 | 134:147, 134:186, 134:166, 134:148, 134:106, 134:117 |
| 134:304 | HQS | lo | 67517/500000 | 136801168303/1013084471000 | 1859 | 134:147, 134:186, 134:166, 134:148, 134:152, 134:283, 134:220 |
| 134:312 | FQS | hi | 361923/1000000 | 361923/1000000 | 1958 | 134:253, 134:206, 134:186, 134:184, 134:253 |
| 134:319 | AHS | hi | 738471/1000000 | 69151138701/93641000000 | 1973 | 134:195, 134:206, 134:198, 134:304, 134:47, 134:49 |
| 134:322 | CES | lo | 11609/100000 | 10870863/93641000 | 1977 | 134:195, 134:206, 134:198, 134:304, 134:100, 134:104, 134:106 |
| 134:329 | CRS | lo | 7199/62500 | 12544739/108910000 | 2015 | 134:255, 134:206, 134:204, 134:202, 134:130, 134:238 |
| 134:331 | HPS | hi | 1033/1600 | 7031493071/10891000000 | 2026 | 134:255, 134:206, 134:204, 134:202, 134:254, 134:191 |
| 134:335 | CFH | lo | 4323/12500 | 4323/12500 | 2120 | 134:122, 134:114, 134:283 |
| 134:336 | CFP | lo | 285913/1000000 | 285913/1000000 | 2123 | 134:128, 134:114, 134:240 |
| 134:337 | CFR | lo | 4706/15625 | 4706/15625 | 2128 | 134:329, 134:118, 134:186 |
| 134:339 | CPS | lo | 282743/1000000 | 282743/1000000 | 2136 | 134:128, 134:301, 134:202 |
| 134:341 | HQR | lo | 160517/500000 | 160517/500000 | 2168 | 134:198, 134:304, 134:206 |
| 134:344 | ABR | lo | 46841/500000 | 3018067/32216000 | 70 | 134:0, 134:226, 134:6, 134:230, 134:57 |
| 134:345 | BHR | lo | 2987/12500 | 4294006389/17969500000 | 72 | 134:6, 134:124, 134:228, 134:56, 134:21 |
| 134:346 | ACR | lo | 82241/500000 | 3260273875/19821461807 | 82 | 134:0, 134:130, 134:22, 134:230, 134:59 |
| 134:352 | CQR | lo | 119147/1000000 | 231112905/1939719919 | 542 | 134:114, 134:124, 134:337, 134:122, 134:111 |
| 134:354 | CRS | lo | 57781/500000 | 25171907/217820000 | 600 | 134:130, 134:206, 134:352, 134:204, 134:255 |
| 134:360 | FPR | lo | 57723/500000 | 103726/898475 | 1486 | 134:21, 134:120, 134:44, 134:22, 134:40, 134:337, 134:172 |
| 134:363 | PQR | hi | 326587/500000 | 11212149049677/17165663000000 | 1552 | 134:111, 134:283, 134:122, 134:114, 134:131, 134:360, 134:237 |
| 134:372 | FHQ | lo | 172067/1000000 | 17057223/99131000 | 1748 | 134:131, 134:200, 134:352, 134:128, 134:335, 134:168, 134:172 |
| 134:373 | FPQ | lo | 101443/1000000 | 2011249/19826200 | 1749 | 134:131, 134:200, 134:352, 134:128, 134:336, 134:360 |
| 134:376 | CHS | hi | 754187/1000000 | 336434867/446089500 | 1773 | 134:131, 134:204, 134:354, 134:339, 134:120, 134:125 |
| 134:377 | CPS | hi | 683617/1000000 | 683617/1000000 | 1774 | 134:131, 134:204, 134:354, 134:339, 134:131 |
| 134:381 | HPQ | hi | 57659/100000 | 4479166653/7768375000 | 1820 | 134:377, 134:202, 134:301, 134:128, 134:121, 134:331 |
| 134:385 | CQS | lo | 97167/1000000 | 147657760267/1519626706500 | 1844 | 134:147, 134:186, 134:166, 134:148, 134:104, 134:114, 134:352 |
| 134:386 | HQS | lo | 141943/1000000 | 35950217857/253271117750 | 1859 | 134:147, 134:186, 134:166, 134:148, 134:152, 134:372, 134:341 |
| 134:393 | ABS | lo | 119989/1000000 | 5617976581/46820500000 | 1971 | 134:195, 134:206, 134:198, 134:386, 134:6, 134:10, 134:344 |
| 134:400 | CRS | lo | 115613/1000000 | 75515721/653174000 | 2015 | 134:363, 134:206, 134:204, 134:202, 134:130, 134:352 |
| 134:402 | HPS | hi | 161333/250000 | 210756759347/326587000000 | 2026 | 134:363, 134:206, 134:204, 134:202, 134:381, 134:191 |
| 134:405 | CFH | lo | 358067/1000000 | 358067/1000000 | 2120 | 134:122, 134:114, 134:372 |
| 134:406 | CFP | lo | 287443/1000000 | 287443/1000000 | 2123 | 134:128, 134:114, 134:373 |
| 134:407 | CFR | lo | 301613/1000000 | 301613/1000000 | 2128 | 134:400, 134:118, 134:186 |
| 134:409 | CPS | lo | 283167/1000000 | 283167/1000000 | 2136 | 134:128, 134:385, 134:202 |
| 134:412 | HQR | lo | 327943/1000000 | 327943/1000000 | 2168 | 134:198, 134:386, 134:206 |
| 134:415 | ABR | lo | 94093/1000000 | 21219283/225512000 | 70 | 134:0, 134:345, 134:6, 134:230, 134:57 |
| 134:421 | CQR | lo | 59599/500000 | 462425295/3879439838 | 542 | 134:114, 134:124, 134:407, 134:122, 134:111 |
| 134:423 | CRS | lo | 5781/50000 | 4720029/40823375 | 600 | 134:130, 134:206, 134:421, 134:204, 134:363 |
| 134:428 | FPR | lo | 28873/250000 | 33205619/287512000 | 1486 | 134:21, 134:120, 134:44, 134:22, 134:40, 134:407, 134:172 |
| 134:431 | PQR | hi | 40823/62500 | 1266962147613501/1939719919000000 | 1552 | 134:111, 134:372, 134:122, 134:114, 134:131, 134:428, 134:237 |
| 134:436 | ABQ | lo | 120291/1000000 | 9072243/75418700 | 1698 | 134:376, 134:386, 134:385, 134:122, 134:0, 134:6, 134:393 |
| 134:438 | FHQ | lo | 175891/1000000 | 871813/4956550 | 1748 | 134:131, 134:200, 134:421, 134:128, 134:405, 134:168, 134:172 |
| 134:439 | FPQ | lo | 101927/1000000 | 30312451/297393000 | 1749 | 134:131, 134:200, 134:421, 134:128, 134:406, 134:428 |
| 134:440 | ACS | hi | 840397/1000000 | 2499281339/2973930000 | 1764 | 134:131, 134:204, 134:423, 134:409, 134:23, 134:27 |
| 134:442 | CHS | hi | 188529/250000 | 3737813/4956550 | 1773 | 134:131, 134:204, 134:423, 134:409, 134:120, 134:125 |
| 134:443 | CPS | hi | 683559/1000000 | 683559/1000000 | 1774 | 134:131, 134:204, 134:423, 134:409, 134:131 |
| 134:447 | HPQ | hi | 288061/500000 | 4102222147/7120406250 | 1820 | 134:443, 134:202, 134:385, 134:128, 134:121, 134:402 |
| 134:451 | CQS | lo | 3887/40000 | 295340223659/3039253413000 | 1844 | 134:147, 134:186, 134:166, 134:148, 134:104, 134:114, 134:421 |
| 134:452 | HQS | lo | 71827/500000 | 436601411159/3039253413000 | 1859 | 134:147, 134:186, 134:166, 134:148, 134:152, 134:438, 134:412 |
| 134:460 | ABS | lo | 1203/10000 | 5632529119/46820500000 | 1971 | 134:195, 134:206, 134:198, 134:452, 134:6, 134:436, 134:415 |
| 134:463 | BHS | hi | 157189/200000 | 32084627/40823000 | 2008 | 134:431, 134:206, 134:204, 134:202, 134:84, 134:257, 134:89 |
| 134:467 | CRS | lo | 115621/1000000 | 4720029/40823000 | 2015 | 134:431, 134:206, 134:204, 134:202, 134:130, 134:421 |
| 134:468 | EHS | hi | 18451/31250 | 3012900141/5102875000 | 2018 | 134:431, 134:206, 134:204, 134:202, 134:150, 134:152, 134:155 |
| 134:469 | HPS | hi | 40329/62500 | 26341579363/40823000000 | 2026 | 134:431, 134:206, 134:204, 134:202, 134:447, 134:191 |
| 134:471 | PQS | hi | 14599/31250 | 14599/31250 | 2030 | 134:431, 134:206, 134:204, 134:202, 134:431 |
| 134:472 | CFH | lo | 361891/1000000 | 361891/1000000 | 2120 | 134:122, 134:114, 134:438 |
| 134:473 | CFP | lo | 287927/1000000 | 287927/1000000 | 2123 | 134:128, 134:114, 134:439 |
| 134:474 | CFR | lo | 301621/1000000 | 301621/1000000 | 2128 | 134:467, 134:118, 134:186 |
| 134:476 | CPS | lo | 11327/40000 | 11327/40000 | 2136 | 134:128, 134:451, 134:202 |
| 134:477 | CPS | hi | 341779/500000 | 341779/500000 | 2137 | 134:131, 134:467, 134:204 |
| 134:479 | HQR | lo | 164827/500000 | 164827/500000 | 2168 | 134:198, 134:452, 134:206 |
| 134:487 | CQR | lo | 119199/1000000 | 462429015/3879439838 | 542 | 134:114, 134:124, 134:474, 134:122, 134:111 |
| 134:488 | FPQ | lo | 51039/500000 | 30357463/297393000 | 559 | 134:473, 134:200, 134:128, 134:428, 134:131 |
| 134:492 | FPR | lo | 115493/1000000 | 33205867/287512000 | 1486 | 134:21, 134:120, 134:44, 134:22, 134:40, 134:474, 134:172 |
| 134:495 | BFS | hi | 112183/200000 | 112183/200000 | 1596 | 134:117, 134:186, 134:467, 134:118, 134:55, 134:81 |
| 134:499 | ABQ | lo | 60167/500000 | 1374943/11426000 | 1698 | 134:442, 134:452, 134:451, 134:122, 134:0, 134:6, 134:460 |
| 134:501 | FHQ | lo | 88543/500000 | 4388701/24782750 | 1748 | 134:131, 134:200, 134:487, 134:128, 134:472, 134:168, 134:172 |
| 134:502 | CHS | hi | 150823/200000 | 672805247/892179000 | 1773 | 134:131, 134:204, 134:467, 134:476, 134:120, 134:125 |
| 134:503 | EPS | hi | 57681/100000 | 3573729416181033/6195687500000000 | 1780 | 134:131, 134:204, 134:467, 134:476, 134:102, 134:159 |
| 134:505 | HPQ | hi | 115221/200000 | 49225114161/85444750000 | 1820 | 134:477, 134:202, 134:451, 134:128, 134:121, 134:469 |
| 134:509 | HQS | lo | 144117/1000000 | 62572714987/434179059000 | 1859 | 134:147, 134:186, 134:166, 134:148, 134:152, 134:501, 134:479 |
| 134:516 | ABS | lo | 24061/200000 | 11265558113/93641000000 | 1971 | 134:195, 134:206, 134:198, 134:509, 134:6, 134:499, 134:415 |
| 134:520 | HPS | hi | 645261/1000000 | 52682961101/81646000000 | 2026 | 134:431, 134:206, 134:204, 134:202, 134:505, 134:191 |
| 134:521 | CFH | lo | 181543/500000 | 181543/500000 | 2120 | 134:122, 134:114, 134:501 |
| 134:522 | CFP | lo | 144039/500000 | 144039/500000 | 2123 | 134:128, 134:114, 134:488 |
| 134:524 | HQR | lo | 330117/1000000 | 330117/1000000 | 2168 | 134:198, 134:509, 134:206 |
| 134:530 | EPR | lo | 75401/250000 | 68015333/225512000 | 465 | 134:106, 134:492, 134:130, 134:146, 134:117 |
| 134:531 | FPQ | lo | 817/8000 | 30371537/297393000 | 559 | 134:522, 134:200, 134:128, 134:492, 134:131 |
| 134:542 | FHQ | lo | 8873/50000 | 17591849/99131000 | 1748 | 134:131, 134:200, 134:487, 134:128, 134:521, 134:168, 134:172 |
| 134:543 | FHS | lo | 121153/1000000 | 7206043/59478600 | 1783 | 134:131, 134:204, 134:467, 134:476, 134:521, 134:168, 134:172 |
| 134:546 | HQS | lo | 577/4000 | 54801803348/379906676625 | 1859 | 134:147, 134:186, 134:166, 134:148, 134:152, 134:542, 134:524 |
| 134:556 | CFH | lo | 18173/50000 | 18173/50000 | 2120 | 134:122, 134:114, 134:542 |
| 134:557 | CFP | lo | 461/1600 | 461/1600 | 2123 | 134:128, 134:114, 134:531 |
| 134:559 | HQR | lo | 1321/4000 | 1321/4000 | 2168 | 134:198, 134:546, 134:206 |
| 134:565 | FPQ | lo | 5107/50000 | 7593977/74348250 | 559 | 134:557, 134:200, 134:128, 134:492, 134:131 |
| 134:569 | FQS | lo | 12141/125000 | 307982613/3170876000 | 1514 | 134:101, 134:152, 134:122, 134:104, 134:118, 134:148, 134:543 |
| 134:574 | FHQ | lo | 177577/1000000 | 17603443/99131000 | 1748 | 134:131, 134:200, 134:487, 134:128, 134:556, 134:168, 134:172 |
| 134:575 | FHS | lo | 15149/125000 | 36041809/297393000 | 1783 | 134:131, 134:204, 134:467, 134:476, 134:556, 134:168, 134:172 |
| 134:578 | HQS | lo | 14429/100000 | 219267760267/1519626706500 | 1859 | 134:147, 134:186, 134:166, 134:148, 134:152, 134:574, 134:559 |
| 134:581 | FPS | hi | 252253/500000 | 11517927931800951/22830125000000000 | 1957 | 134:253, 134:206, 134:186, 134:569, 134:252, 134:179 |
| 134:588 | CFH | lo | 363577/1000000 | 363577/1000000 | 2120 | 134:122, 134:114, 134:574 |
| 134:589 | CFP | lo | 14407/50000 | 14407/50000 | 2123 | 134:128, 134:114, 134:565 |
| 134:591 | HQR | lo | 33029/100000 | 33029/100000 | 2168 | 134:198, 134:578, 134:206 |
| 134:597 | FPQ | lo | 20429/200000 | 30377303/297393000 | 559 | 134:589, 134:200, 134:128, 134:492, 134:131 |
| 134:601 | FQS | lo | 48567/500000 | 77000187/792719000 | 1514 | 134:101, 134:152, 134:122, 134:104, 134:118, 134:148, 134:575 |
| 134:606 | FHQ | lo | 88807/500000 | 1760707/9913100 | 1748 | 134:131, 134:200, 134:487, 134:128, 134:588, 134:168, 134:172 |
| 134:607 | FHS | lo | 30301/250000 | 9011359/74348250 | 1783 | 134:131, 134:204, 134:467, 134:476, 134:588, 134:168, 134:172 |
| 134:609 | CHS | lo | 71687/200000 | 136172160044/379906676625 | 1842 | 134:147, 134:186, 134:166, 134:148, 134:100, 134:588, 134:124 |
| 134:610 | HQS | lo | 72151/500000 | 438572817409/3039253413000 | 1859 | 134:147, 134:186, 134:166, 134:148, 134:152, 134:606, 134:591 |
| 134:616 | ACS | lo | 6493/50000 | 24320474891/187282000000 | 1972 | 134:195, 134:206, 134:198, 134:610, 134:20, 134:24, 134:346 |
| 134:617 | BCS | lo | 26449/250000 | 39627522161/374564000000 | 1974 | 134:195, 134:206, 134:198, 134:610, 134:56, 134:60, 134:230 |
| 134:618 | CFS | hi | 214807/500000 | 8769060939/20411500000 | 2011 | 134:431, 134:206, 134:204, 134:202, 134:589, 134:114, 134:117 |
| 134:619 | CFH | lo | 181807/500000 | 181807/500000 | 2120 | 134:122, 134:114, 134:606 |
| 134:620 | CFP | lo | 57629/200000 | 57629/200000 | 2123 | 134:128, 134:114, 134:597 |
| 134:621 | FQR | lo | 141567/500000 | 141567/500000 | 2164 | 134:186, 134:601, 134:206 |
| 134:622 | HQR | lo | 165151/500000 | 165151/500000 | 2168 | 134:198, 134:610, 134:206 |
| 134:626 | EHS | lo | 110343/1000000 | 296281421/2685087500 | 458 | 134:322, 134:607, 134:609, 134:148, 134:618 |
| 134:628 | FPQ | lo | 51073/500000 | 3797221/37174125 | 559 | 134:620, 134:200, 134:128, 134:492, 134:131 |
| 134:629 | EFQ | lo | 121629/1000000 | 324028683956829/2664062500000000 | 1365 | 134:621, 134:147 |
| 134:631 | EPS | lo | 97359/1000000 | 27992039/287512000 | 1484 | 134:21, 134:120, 134:44, 134:22, 134:36, 134:322, 134:626 |
| 134:632 | FQS | lo | 6071/62500 | 38500791/396359500 | 1514 | 134:101, 134:152, 134:122, 134:104, 134:118, 134:148, 134:607 |
| 134:636 | FHQ | lo | 1421/8000 | 17608217/99131000 | 1748 | 134:131, 134:200, 134:487, 134:128, 134:619, 134:168, 134:172 |
| 134:637 | FHS | lo | 15151/125000 | 36046583/297393000 | 1783 | 134:131, 134:204, 134:467, 134:476, 134:619, 134:168, 134:172 |
| 134:639 | CHS | lo | 358441/1000000 | 1089395202227/3039253413000 | 1842 | 134:147, 134:186, 134:166, 134:148, 134:100, 134:619, 134:124 |
| 134:640 | HQS | lo | 72153/500000 | 73097326339/506542235500 | 1859 | 134:147, 134:186, 134:166, 134:148, 134:152, 134:636, 134:622 |
| 134:641 | EFS | hi | 364803/1000000 | 1041061666118199/2853765625000000 | 1951 | 134:253, 134:206, 134:186, 134:632, 134:629, 134:147 |
| 134:642 | FHS | hi | 10871/25000 | 1861396502429867/4280648437500000 | 1956 | 134:253, 134:206, 134:186, 134:632, 134:171, 134:173 |
| 134:645 | PRS | hi | 101727/250000 | 27869271277/68490375000 | 1966 | 134:253, 134:206, 134:186, 134:632, 134:492, 134:431 |
| 134:646 | CFH | lo | 2909/8000 | 2909/8000 | 2120 | 134:122, 134:114, 134:636 |
| 134:647 | CFP | lo | 144073/500000 | 144073/500000 | 2123 | 134:128, 134:114, 134:628 |
| 134:648 | FQR | lo | 4424/15625 | 4424/15625 | 2164 | 134:186, 134:632, 134:206 |
| 134:649 | HQR | lo | 165153/500000 | 165153/500000 | 2168 | 134:198, 134:640, 134:206 |
| 134:651 | CEF | lo | 117969/1000000 | 14746173/125000000 | 449 | 134:100, 134:474, 134:106, 134:646, 134:125 |
| 134:653 | EHS | lo | 22069/200000 | 1185151243/10740350000 | 458 | 134:322, 134:637, 134:639, 134:148, 134:618 |
| 134:654 | FPQ | lo | 102147/1000000 | 30377861/297393000 | 559 | 134:647, 134:200, 134:128, 134:492, 134:131 |
| 134:655 | EFQ | lo | 12163/100000 | 1265745987611/10406494140625 | 1365 | 134:648, 134:147 |
| 134:656 | FPS | lo | 19499/200000 | 296313817409/3039253413000 | 1457 | 134:7, 134:84, 134:44, 134:8, 134:42, 134:82, 134:637 |
| 134:657 | EQS | lo | 20073/200000 | 48670017023/484929979750 | 1541 | 134:111, 134:636, 134:122, 134:114, 134:322, 134:148, 134:653 |
| 134:659 | FHQ | lo | 177629/1000000 | 8804279/49565500 | 1748 | 134:131, 134:200, 134:487, 134:128, 134:646, 134:168, 134:172 |
| 134:663 | HQS | lo | 144307/1000000 | 219293916517/1519626706500 | 1859 | 134:147, 134:186, 134:166, 134:148, 134:152, 134:659, 134:649 |
| 134:664 | CFS | hi | 429613/1000000 | 17538087003/40823000000 | 2011 | 134:431, 134:206, 134:204, 134:202, 134:647, 134:114, 134:117 |
| 134:665 | CFH | lo | 363629/1000000 | 363629/1000000 | 2120 | 134:122, 134:114, 134:659 |
| 134:666 | CFP | lo | 288147/1000000 | 288147/1000000 | 2123 | 134:128, 134:114, 134:654 |
| 134:667 | HQR | lo | 330307/1000000 | 330307/1000000 | 2168 | 134:198, 134:663, 134:206 |
| 134:668 | BFH | lo | 5179/40000 | 37225761/287512000 | 45 | 134:6, 134:665, 134:38, 134:56, 134:21 |
| 134:671 | EFP | lo | 138969/1000000 | 31339202239/225512000000 | 463 | 134:651, 134:492, 134:666, 134:146, 134:117 |
| 134:674 | FHQ | lo | 17763/100000 | 8804341/49565500 | 1748 | 134:131, 134:200, 134:487, 134:128, 134:665, 134:168, 134:172 |
| 134:675 | FHS | lo | 12121/100000 | 4505881/37174125 | 1783 | 134:131, 134:204, 134:467, 134:476, 134:665, 134:168, 134:172 |
| 134:677 | CHS | lo | 89611/250000 | 272350616963/759813353250 | 1842 | 134:147, 134:186, 134:166, 134:148, 134:100, 134:665, 134:124 |
| 134:678 | HQS | lo | 36077/250000 | 7831942889/54272382375 | 1859 | 134:147, 134:186, 134:166, 134:148, 134:152, 134:674, 134:667 |
| 134:679 | CFH | lo | 36363/100000 | 36363/100000 | 2120 | 134:122, 134:114, 134:674 |
