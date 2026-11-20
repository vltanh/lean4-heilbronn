# BITT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 150

| Property | Value |
| --- | --- |
| Scope | root/ACP+/HBP-/HEQ-/CFQ+/PQR+/PQS+/PRS-/QRS-/CRS+/EPQ+ |
| Packet | forest:root/ACP+/HBP-/HEQ-/CFQ+/PQR+/PQS+/PRS-/QRS-/CRS+/EPQ+ |
| Index | 6 |
| Context | 58 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 149 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 17183/125000 | 59/125 | 17183/125000 | 59/125 |
| b | 40433/125000 | 667431/1000000 | 40433/125000 | 667431/1000000 |
| c | 13857/20000 | 1/1 | 13857/20000 | 1/1 |
| e | 161077/1000000 | 59/125 | 161077/1000000 | 59/125 |
| f | 40433/125000 | 667431/1000000 | 40433/125000 | 667431/1000000 |
| h | 13857/20000 | 1/1 | 13857/20000 | 1/1 |
| p | 107821/1000000 | 6143/20000 | 107821/1000000 | 6143/20000 |
| q | 213543/1000000 | 349557/500000 | 213543/1000000 | 349557/500000 |
| u | 18881/100000 | 26563/40000 | 18881/100000 | 26563/40000 |
| v | 34553/200000 | 41049/62500 | 34553/200000 | 41049/62500 |
| r | 656033/1000000 | 1/1 | 656033/1000000 | 1/1 |
| w | 776581/1000000 | 1/1 | 776581/1000000 | 1/1 |
| j | 551383/1000000 | 111143/125000 | 551383/1000000 | 111143/125000 |
| k | 218003/500000 | 854839/1000000 | 218003/500000 | 854839/1000000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 4 | AC_ABE_ABE_0 | bitt ["anchor-cap","ABE","ABE",0,[]] | `-93/1000 + 1/1 * e` |
| 6 | AC_ABF_ABF_0 | bitt ["anchor-cap","ABF","ABF",0,[]] | `-93/1000 + 1/1 * f` |
| 9 | AC_ABH_ABH_1 | bitt ["anchor-cap","ABH","ABH",1,["P"]] | `-279/1000 + 1/1 * h + -1/1 * a` |
| 18 | AC_ACF_ACF_0 | bitt ["anchor-cap","ACF","ACF",0,[]] | `-93/1000 + 1/1 * c` |
| 26 | AC_AEF_AEF_0 | bitt ["anchor-cap","AEF","AEF",0,[]] | `907/1000 + -1/1 * a` |
| 38 | AC_BCH_BCH_0 | bitt ["anchor-cap","BCH","BCH",0,[]] | `-93/1000 + 1/1 * h` |
| 44 | AC_BEF_BEF_0 | bitt ["anchor-cap","BEF","BEF",0,[]] | `907/1000 + -1/1 * b` |
| 61 | AC_CEF_CEF_0 | bitt ["anchor-cap","CEF","CEF",0,[]] | `907/1000 + -1/1 * f` |
| 84 | AC_EFH_EFH_0 | bitt ["anchor-cap","EFH","EFH",0,[]] | `907/1000 + -1/1 * e` |
| 120 | ea | bitt ["contact-order","ea"] | `1/1 * e + -1/1 * a` |
| 121 | he | bitt ["contact-order","he"] | `1/1 * h + -1/1 * e` |
| 122 | fb | bitt ["contact-order","fb"] | `1/1 * f + -1/1 * b` |
| 123 | cf | bitt ["contact-order","cf"] | `1/1 * c + -1/1 * f` |
| 124 | sym | bitt ["contact-order","sym"] | `1/1 * f + -1/1 * e` |
| 125 | lower-area | bitt ["endpoint-lower","13857/20000"] | `1/1 * c * h + -13857/20000` |
| 126 | lower-quad | bitt ["lower-quad","BITT"] | `1/1 * c * h + -1/1 * a * b + -279/625` |
| 127 | upper-quad | bitt ["upper-quad","BITT"] | `346/625 + -1/1 * c * h + 1/1 * f * h + 1/1 * c * e + -1/1 * e * f` |
| 128 | top-area | bitt ["top-hull","-"] | `721/1000 + -1/1 * f + -1/1 * e + 1/1 * e * f` |
| 134 | WBARY_RS_2 | bitt ["weighted-barycentric","R","S",["1/1","1/1","1/1"],"23648400447/3875000000",2] | `23648400447/3875000000 * k + -1/1 + -15898400447/3875000000 * e + -1/1 * w` |
| 139 | SUP_ACH_ABH_BCH | bitt ["support-envelope",["quad","HABC",["P"],"1457/250"],"ACH","ABH","BCH","107817/125000"] | `80133/250000 * b * h + -107817/125000 * a * b + 135501/250000 * a * c` |
| 191 | SUP_BEH_BCH_CEH | bitt ["support-envelope",["quad","HBCE",["Q"],"149/20"],"BEH","BCH","CEH","6478211/7812500"] | `8522563/62500000 * c * h + -8522563/62500000 * b * h + -13857/20000 * b * e + 13857/20000 * c * e` |
| 194 | SUP_CEP_BEP_BCE | bitt ["support-envelope",["quad","EPBC",["Q"],"1457/250"],"CEP","BEP","BCE","4908665531/10000000000"] | `-511374469/10000000000 * q + -4908665531/10000000000 * b * q + 511374469/10000000000 * e * p + -511374469/10000000000 * b * e + 135501/250000 * c * q` |
| 209 | SUP_BCR_CHR_BCH | bitt ["support-envelope",["quad","CRHB",["Q","S"],"1142/125"],"BCR","CHR","BCH","84567/125000"] | `-21639/125000 * c * w + 84567/125000 * h * r + 21639/125000 * c * h + 53103/62500 * b * w + -53103/62500 * b * h` |
| 260 | SUP_CEP_CER_CPR | bitt ["support-envelope",["quad","CERP",["Q","S"],"199/10"],"CEP","CER","CPR","4908665531/10000000000"] | `4908665531/10000000000 * w + 13598334469/10000000000 * c * w + -4908665531/10000000000 * e * r + -13598334469/10000000000 * c * e + -18507/10000 * q + 18507/10000 * e * p + -18507/10000 * p * w + 18507/10000 * q * r` |
| 278 | SUP_FHR_CFH_CFR | bitt ["support-envelope",["quad","FHCR",["Q","S"],"199/10"],"FHR","CFH","CFR","35008254477/125000000000"] | `-196329245523/125000000000 * f * h + -35008254477/125000000000 * c * h + -196329245523/125000000000 * c + 18507/10000 * h * r + 18507/10000 * c * w` |
| 297 | SUP_CHR_HPR_CPR | bitt ["support-envelope",["quad","RHPC",["Q","S"],"139/10"],"CHR","HPR","CPR","1/1"] | `-2927/10000 * p * w + -1/1 * h * p + 2927/10000 * q * r + -2927/10000 * h * r + 12927/10000 * c * h + -12927/10000 * c * q` |
| 328 | SUP_ABF_AEF_ABE | bitt ["support-envelope",["pentagon","ABCEF"],"ABF","AEF","ABE","667431/1000000"] | `667431/1000000 + 355569/1000000 * a + -667431/1000000 * e * f + -355569/1000000 * a * f + -1023/1000 * b + 1023/1000 * b * e` |
| 329 | SUP_ABC_ABF_BCF | bitt ["support-envelope",["pentagon","BCEFA"],"ABC","ABF","BCF","4989453/15625000"] | `-5497461/7812500 * b + 5497461/7812500 * a * b + 4989453/15625000 * a * f + -1023/1000 * a * c + 1023/1000 * c` |
| 331 | SUP_CEF_BCE_BEF | bitt ["support-envelope",["pentagon","EFABC"],"CEF","BCE","BEF","15046881/31250000"] | `-16921869/31250000 * c * e + 16921869/31250000 * b * e + 1023/1000 * c + -1023/1000 * b` |
| 349 | SUP_ABF_AFR_ABR | bitt ["support-envelope",["pentagon","ABCRF"],"ABF","AFR","ABR","667431/1000000"] | `-667431/1000000 * f * w + -355569/1000000 * a * f + 667431/1000000 * r + 355569/1000000 * a * r + -1023/1000 * b + 1023/1000 * b * w` |
| 370 | SUP_AFH_EFH_AEH | bitt ["support-envelope",["pentagon","HABEF"],"AFH","EFH","AEH","71960408127/125000000000"] | `-55914591873/125000000000 * f * h + -71960408127/125000000000 * e * f + 55914591873/125000000000 * h + 71960408127/125000000000 + 1023/1000 * a * f + -1023/1000 * a` |
| 378 | SUP_EHR_BER_BHR | bitt ["support-envelope",["pentagon","RHABE"],"EHR","BER","BHR","838923/1000000"] | `-184077/1000000 * w + 184077/1000000 * b * w + 184077/1000000 * e * r + 838923/1000000 * b * e + 1023/1000 * h + -1023/1000 * b * h` |
| 405 | SUP_ACR_ACH_CHR | bitt ["support-envelope",["pentagon","CRFHA"],"ACR","ACH","CHR","1/1"] | `-23/1000 * c * h + 23/1000 * a * c + -1023/1000 * a * r + 1023/1000 * h * r` |
| 445 | SUP_BHP_FHP_BFP | bitt ["support-envelope",["pentagon","PBCFH"],"BHP","FHP","BFP","417084781967/1000000000000"] | `605915218033/1000000000000 * f * q + 605915218033/1000000000000 * h * p + 417084781967/1000000000000 * f * h + -605915218033/1000000000000 * p + -1023/1000 * b * h + 1023/1000 * b` |
| 446 | SUP_BCR_BCH_CHR | bitt ["support-envelope",["pentagon","CRFHB"],"BCR","BCH","CHR","84567/125000"] | `-10827/31250 * c * h + -84567/125000 * b * h + 1023/1000 * b * w + 1023/1000 * h * r` |
| 447 | SUP_BFH_FHR_BHR | bitt ["support-envelope",["pentagon","HBCRF"],"BFH","FHR","BHR","667431/1000000"] | `-667431/1000000 * f * w + 355569/1000000 * h * r + -355569/1000000 * f * h + 667431/1000000 * r + -1023/1000 * b + 1023/1000 * b * w` |
| 458 | SUP_BHP_HPQ_BPQ | bitt ["support-envelope",["pentagon","PBCQH"],"BHP","HPQ","BPQ","417084781967/1000000000000"] | `-605915218033/1000000000000 * p * v + 605915218033/1000000000000 * h * p + 605915218033/1000000000000 * q * u + 417084781967/1000000000000 * h * u + -1023/1000 * b * h + 1023/1000 * b * v` |
| 463 | SUP_BEP_BHP_BEH | bitt ["support-envelope",["pentagon","BEFHP"],"BEP","BHP","BEH","35922455319/62500000000"] | `28015044681/62500000000 * b * q + -35922455319/62500000000 * h * p + -28015044681/62500000000 * b * h + -1023/1000 * q + 1023/1000 * e * p + 1023/1000 * h` |
| 465 | SUP_FHP_EFH_EHP | bitt ["support-envelope",["pentagon","HPBEF"],"FHP","EFH","EHP","524905781967/1000000000000"] | `-498094218033/1000000000000 * f * h + -524905781967/1000000000000 * e * f + 498094218033/1000000000000 * h + 524905781967/1000000000000 + 1023/1000 * f * q + -1023/1000 * p + -1023/1000 * q + 1023/1000 * e * p` |
| 476 | SUP_BPR_BHP_BHR | bitt ["support-envelope",["pentagon","BRFHP"],"BPR","BHP","BHR","396056821933/500000000000"] | `115443178067/500000000000 * b * q + -396056821933/500000000000 * h * p + -115443178067/500000000000 * b * h + 1023/1000 * p * w + -1023/1000 * q * r + 1023/1000 * h * r` |
| 483 | SUP_CEF_CEP_EFP | bitt ["support-envelope",["pentagon","EFHPC"],"CEF","CEP","EFP","15046881/31250000"] | `-16921869/31250000 * q + -15046881/31250000 * c * q + 16921869/31250000 * e * p + -16921869/31250000 * c * e + 1023/1000 * c + 1023/1000 * f * q + -1023/1000 * p` |
| 509 | SUP_EFH_EFQ_FHQ | bitt ["support-envelope",["pentagon","FHPQE"],"EFH","EFQ","FHQ","662071785163/1000000000000"] | `-360928214837/1000000000000 * f * v + 360928214837/1000000000000 * e * f + -662071785163/1000000000000 * v + 360928214837/1000000000000 * u + -360928214837/1000000000000 + 662071785163/1000000000000 * e * u + 1023/1000 * h + -1023/1000 * h * u` |
| 531 | SUP_EHS_EQS_HQS | bitt ["support-envelope",["pentagon","SHPQE"],"EHS","EQS","HQS","79351471539/125000000000"] | `48523528461/125000000000 * u * k + 79351471539/125000000000 * e * u + -48523528461/125000000000 * k + -48523528461/125000000000 * v * j + -79351471539/125000000000 * v + 48523528461/125000000000 * e * j + 1023/1000 * h + -1023/1000 * h * u` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |


### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 150:0 | ABC | lo | 93/1000 | occupants none |
| 150:2 | ABE | lo | 93/1000 | occupants none |
| 150:4 | ABF | lo | 24399/200000 | earlier 149:4; ABF; lo; 24399/200000 |
| 150:5 | ABF | hi | 667431/1000000 | vertex maximum 667431/1000000 |
| 150:6 | ABH | lo | 279/1000 | occupants P |
| 150:7 | ABH | hi | 71960408127/125000000000 | vertex maximum 71960408127/125000000000 |
| 150:13 | ABR | hi | 51525223/62500000 | vertex maximum 51525223/62500000 |
| 150:18 | ACF | lo | 42079/250000 | earlier 149:18; ACF; lo; 42079/250000 |
| 150:19 | ACF | hi | 119285466873/125000000000 | vertex maximum 119285466873/125000000000 |
| 150:21 | ACH | hi | 107817/125000 | vertex maximum 107817/125000 |
| 150:22 | ACP | lo | 93/1000 | occupants none |
| 150:23 | ACP | hi | 8888/15625 | earlier 149:23; ACP; hi; 8888/15625 |
| 150:24 | ACQ | lo | 20987/200000 | earlier 149:24; ACQ; lo; 20987/200000 |
| 150:25 | ACQ | hi | 88467/200000 | earlier 149:25; ACQ; hi; 88467/200000 |
| 150:26 | ACR | lo | 41377/250000 | earlier 149:26; ACR; lo; 41377/250000 |
| 150:27 | ACR | hi | 1/1 | vertex maximum 1/1 |
| 150:29 | ACS | hi | 728021/1000000 | earlier 149:29; ACS; hi; 728021/1000000 |
| 150:30 | AEF | lo | 59467/500000 | earlier 149:30; AEF; lo; 59467/500000 |
| 150:33 | AEH | hi | 107817/125000 | vertex maximum 107817/125000 |
| 150:34 | AER | lo | 95047/1000000 | earlier 149:34; AER; lo; 95047/1000000 |
| 150:35 | AER | hi | 847045092771/1000000000000 | vertex maximum 847045092771/1000000000000 |
| 150:38 | AFH | lo | 93/1000 | occupants none |
| 150:39 | AFH | hi | 71960408127/125000000000 | vertex maximum 71960408127/125000000000 |
| 150:43 | AFS | hi | 41896944981/62500000000 | vertex maximum 41896944981/62500000000 |
| 150:44 | AHP | lo | 93/1000 | occupants none |
| 150:45 | AHP | hi | 662319831/2500000000 | vertex maximum 662319831/2500000000 |
| 150:46 | AHQ | lo | 20357/125000 | earlier 149:46; AHQ; lo; 20357/125000 |
| 150:47 | AHQ | hi | 2863942971/5000000000 | vertex maximum 2863942971/5000000000 |
| 150:48 | AHR | lo | 117443/1000000 | earlier 149:48; AHR; lo; 117443/1000000 |
| 150:49 | AHR | hi | 107817/125000 | vertex maximum 107817/125000 |
| 150:51 | AHS | hi | 11983104831/15625000000 | vertex maximum 11983104831/15625000000 |
| 150:52 | BCE | lo | 93/1000 | occupants none |
| 150:53 | BCE | hi | 4989453/15625000 | vertex maximum 4989453/15625000 |
| 150:54 | BCF | lo | 93/1000 | occupants none |
| 150:55 | BCF | hi | 84567/125000 | vertex maximum 84567/125000 |
| 150:56 | BCH | lo | 11809/100000 | earlier 149:56; BCH; lo; 11809/100000 |
| 150:57 | BCH | hi | 84567/125000 | vertex maximum 84567/125000 |
| 150:58 | BCP | lo | 93/1000 | occupants none |
| 150:59 | BCP | hi | 29560986819/62500000000 | vertex maximum 29560986819/62500000000 |
| 150:62 | BCR | lo | 148887/1000000 | earlier 149:62; BCR; lo; 148887/1000000 |
| 150:63 | BCR | hi | 84567/125000 | vertex maximum 84567/125000 |
| 150:65 | BCS | hi | 502031/1000000 | earlier 149:65; BCS; hi; 502031/1000000 |
| 150:67 | BEF | hi | 84567/125000 | vertex maximum 84567/125000 |
| 150:68 | BEH | lo | 220347/1000000 | earlier 149:68; BEH; lo; 220347/1000000 |
| 150:69 | BEH | hi | 6478211/7812500 | vertex maximum 6478211/7812500 |
| 150:70 | BEP | lo | 5083/40000 | earlier 149:70; BEP; lo; 5083/40000 |
| 150:71 | BEP | hi | 35922455319/62500000000 | vertex maximum 35922455319/62500000000 |
| 150:73 | BER | hi | 622966783187/1000000000000 | vertex maximum 622966783187/1000000000000 |
| 150:74 | BES | lo | 93/1000 | occupants none |
| 150:76 | BFH | lo | 122041/1000000 | earlier 149:76; BFH; lo; 122041/1000000 |
| 150:77 | BFH | hi | 667431/1000000 | vertex maximum 667431/1000000 |
| 150:78 | BFP | lo | 93/1000 | occupants none |
| 150:81 | BFR | hi | 84567/125000 | vertex maximum 84567/125000 |
| 150:84 | BHP | lo | 93/1000 | occupants none |
| 150:86 | BHQ | lo | 93/1000 | occupants none |
| 150:88 | BHR | lo | 240191/1000000 | earlier 149:88; BHR; lo; 240191/1000000 |
| 150:89 | BHR | hi | 1/1 | vertex maximum 1/1 |
| 150:94 | BPR | lo | 116041/1000000 | earlier 149:94; BPR; lo; 116041/1000000 |
| 150:95 | BPR | hi | 396056821933/500000000000 | vertex maximum 396056821933/500000000000 |
| 150:98 | CEF | lo | 133999/1000000 | earlier 149:98; CEF; lo; 133999/1000000 |
| 150:99 | CEF | hi | 15046881/31250000 | vertex maximum 15046881/31250000 |
| 150:100 | CEH | lo | 320341/1000000 | earlier 149:100; CEH; lo; 320341/1000000 |
| 150:101 | CEH | hi | 792719/1250000 | vertex maximum 792719/1250000 |
| 150:102 | CEP | lo | 38621/125000 | earlier 149:102; CEP; lo; 38621/125000 |
| 150:103 | CEP | hi | 4908665531/10000000000 | vertex maximum 4908665531/10000000000 |
| 150:104 | CEQ | lo | 1513/12500 | earlier 149:104; CEQ; lo; 1513/12500 |
| 150:105 | CEQ | hi | 302939/1000000 | earlier 149:105; CEQ; hi; 302939/1000000 |
| 150:106 | CER | lo | 93/1000 | occupants none |
| 150:108 | CES | lo | 93/1000 | occupants none |
| 150:110 | CFH | lo | 84483/250000 | earlier 149:110; CFH; lo; 84483/250000 |
| 150:111 | CFH | hi | 15391591367/20000000000 | vertex maximum 15391591367/20000000000 |
| 150:112 | CFP | lo | 8779/31250 | earlier 149:112; CFP; lo; 8779/31250 |
| 150:113 | CFP | hi | 821161218033/1000000000000 | vertex maximum 821161218033/1000000000000 |
| 150:114 | CFQ | lo | 93/1000 | occupants none |
| 150:115 | CFQ | hi | 468559/1000000 | earlier 149:115; CFQ; hi; 468559/1000000 |
| 150:116 | CFR | lo | 147019/500000 | earlier 149:116; CFR; lo; 147019/500000 |
| 150:117 | CFR | hi | 84567/125000 | vertex maximum 84567/125000 |
| 150:118 | CFS | lo | 54019/500000 | earlier 149:118; CFS; lo; 54019/500000 |
| 150:119 | CFS | hi | 212021/500000 | earlier 149:119; CFS; hi; 212021/500000 |
| 150:120 | CHP | lo | 93/1000 | occupants none |
| 150:121 | CHP | hi | 126277/200000 | earlier 149:121; CHP; hi; 126277/200000 |
| 150:122 | CHQ | lo | 93/1000 | occupants none |
| 150:123 | CHQ | hi | 167357/500000 | earlier 149:123; CHQ; hi; 167357/500000 |
| 150:124 | CHR | lo | 13857/20000 | occupants Q, S |
| 150:125 | CHR | hi | 1/1 | vertex maximum 1/1 |
| 150:126 | CHS | lo | 192131/500000 | earlier 149:126; CHS; lo; 192131/500000 |
| 150:127 | CHS | hi | 70923/100000 | earlier 149:127; CHS; hi; 70923/100000 |
| 150:128 | CPQ | lo | 5933/62500 | earlier 149:128; CPQ; lo; 5933/62500 |
| 150:129 | CPQ | hi | 276827/1000000 | earlier 149:129; CPQ; hi; 276827/1000000 |
| 150:130 | CPR | lo | 13857/20000 | occupants Q, S |
| 150:131 | CPR | hi | 892179/1000000 | vertex maximum 892179/1000000 |
| 150:133 | CPS | hi | 314477/500000 | earlier 149:133; CPS; hi; 314477/500000 |
| 150:134 | CQR | lo | 64189/200000 | earlier 149:134; CQR; lo; 64189/200000 |
| 150:135 | CQR | hi | 33289/62500 | earlier 149:135; CQR; hi; 33289/62500 |
| 150:136 | CQS | lo | 26989/200000 | earlier 149:136; CQS; lo; 26989/200000 |
| 150:138 | CRS | lo | 93/1000 | occupants none |
| 150:140 | EFH | lo | 157781/1000000 | earlier 149:140; EFH; lo; 157781/1000000 |
| 150:142 | EFP | lo | 18941/125000 | earlier 149:142; EFP; lo; 18941/125000 |
| 150:144 | EFQ | lo | 105787/1000000 | earlier 149:144; EFQ; lo; 105787/1000000 |
| 150:146 | EFR | lo | 279/1000 | occupants S |
| 150:147 | EFR | hi | 70945201341/125000000000 | vertex maximum 70945201341/125000000000 |
| 150:148 | EFS | lo | 93/1000 | occupants none |
| 150:149 | EFS | hi | 327493/1000000 | earlier 149:149; EFS; hi; 327493/1000000 |
| 150:150 | EHP | lo | 93/1000 | occupants none |
| 150:151 | EHP | hi | 691239/1000000 | earlier 149:151; EHP; hi; 691239/1000000 |
| 150:152 | EHQ | lo | 106301/1000000 | earlier 149:152; EHQ; lo; 106301/1000000 |
| 150:153 | EHQ | hi | 336681/1000000 | earlier 149:153; EHQ; hi; 336681/1000000 |
| 150:154 | EHR | lo | 376139/1000000 | earlier 149:154; EHR; lo; 376139/1000000 |
| 150:155 | EHR | hi | 838923/1000000 | vertex maximum 838923/1000000 |
| 150:156 | EHS | lo | 29077/250000 | earlier 149:156; EHS; lo; 29077/250000 |
| 150:157 | EHS | hi | 94293/200000 | earlier 149:157; EHS; hi; 94293/200000 |
| 150:158 | EPQ | lo | 93/1000 | occupants none |
| 150:160 | EPR | lo | 355107/1000000 | earlier 149:160; EPR; lo; 355107/1000000 |
| 150:161 | EPR | hi | 748469483217/1000000000000 | vertex maximum 748469483217/1000000000000 |
| 150:162 | EPS | lo | 5311/50000 | earlier 149:162; EPS; lo; 5311/50000 |
| 150:164 | EQR | lo | 35227/125000 | earlier 149:164; EQR; lo; 35227/125000 |
| 150:166 | EQS | lo | 11977/125000 | earlier 149:166; EQS; lo; 11977/125000 |
| 150:167 | EQS | hi | 307129/1000000 | earlier 149:167; EQS; hi; 307129/1000000 |
| 150:168 | ERS | lo | 93/1000 | occupants none |
| 150:171 | FHP | hi | 524905781967/1000000000000 | vertex maximum 524905781967/1000000000000 |
| 150:172 | FHQ | lo | 37983/250000 | earlier 149:172; FHQ; lo; 37983/250000 |
| 150:173 | FHQ | hi | 477063/1000000 | earlier 149:173; FHQ; hi; 477063/1000000 |
| 150:174 | FHR | lo | 93/1000 | occupants none |
| 150:178 | FPQ | lo | 93/1000 | occupants none |
| 150:179 | FPQ | hi | 230959602467/500000000000 | vertex maximum 230959602467/500000000000 |
| 150:180 | FPR | lo | 28669/250000 | earlier 149:180; FPR; lo; 28669/250000 |
| 150:181 | FPR | hi | 580245216369/1000000000000 | vertex maximum 580245216369/1000000000000 |
| 150:182 | FPS | lo | 26261/200000 | earlier 149:182; FPS; lo; 26261/200000 |
| 150:184 | FQR | lo | 45109/250000 | earlier 149:184; FQR; lo; 45109/250000 |
| 150:185 | FQR | hi | 243187/500000 | earlier 149:185; FQR; hi; 243187/500000 |
| 150:188 | FRS | lo | 93/1000 | occupants none |
| 150:190 | HPQ | lo | 93/1000 | occupants none |
| 150:191 | HPQ | hi | 223779/500000 | earlier 149:191; HPQ; hi; 223779/500000 |
| 150:192 | HPR | lo | 47483/500000 | earlier 149:192; HPR; lo; 47483/500000 |
| 150:194 | HPS | lo | 46749/500000 | earlier 149:194; HPS; lo; 46749/500000 |
| 150:196 | HQR | lo | 262617/1000000 | earlier 149:196; HQR; lo; 262617/1000000 |
| 150:197 | HQR | hi | 117211/200000 | earlier 149:197; HQR; hi; 117211/200000 |
| 150:199 | HQS | hi | 182579/500000 | earlier 149:199; HQS; hi; 182579/500000 |
| 150:200 | HRS | lo | 166831/1000000 | earlier 149:200; HRS; lo; 166831/1000000 |
| 150:201 | HRS | hi | 261369/500000 | earlier 149:201; HRS; hi; 261369/500000 |
| 150:202 | PQR | lo | 199941/1000000 | earlier 149:202; PQR; lo; 199941/1000000 |
| 150:203 | PQR | hi | 238153/500000 | earlier 149:203; PQR; hi; 238153/500000 |
| 150:204 | PQS | lo | 110523/1000000 | earlier 149:204; PQS; lo; 110523/1000000 |
| 150:205 | PQS | hi | 146699/500000 | earlier 149:205; PQS; hi; 146699/500000 |
| 150:206 | PRS | lo | 155887/1000000 | earlier 149:206; PRS; lo; 155887/1000000 |
| 150:208 | QRS | lo | 93/1000 | occupants none |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |


### Coordinate certificate sources

| Source | Kind | Source witness | Polynomial |
| --- | --- | --- | --- |
| 0 | bound | `{"direction":"lo","ref":"150:0","triangle":"ABC","value":"93/1000"}` | `-1 * a * b + 1 * a * c + -93/1000` |
| 2 | bound | `{"direction":"lo","ref":"150:2","triangle":"ABE","value":"93/1000"}` | `1 * b * e + -1 * a * b + 1 * a + -93/1000` |
| 4 | bound | `{"direction":"lo","ref":"150:4","triangle":"ABF","value":"24399/200000"}` | `1 * b + -1 * a * b + 1 * a * f + -24399/200000` |
| 5 | bound | `{"direction":"hi","ref":"150:5","triangle":"ABF","value":"667431/1000000"}` | `667431/1000000 + -1 * b + 1 * a * b + -1 * a * f` |
| 6 | bound | `{"direction":"lo","ref":"150:6","triangle":"ABH","value":"279/1000"}` | `1 * b * h + -1 * a * b + -279/1000` |
| 7 | bound | `{"direction":"hi","ref":"150:7","triangle":"ABH","value":"71960408127/125000000000"}` | `71960408127/125000000000 + -1 * b * h + 1 * a * b` |
| 13 | bound | `{"direction":"hi","ref":"150:13","triangle":"ABR","value":"51525223/62500000"}` | `51525223/62500000 + -1 * b * w + 1 * a * b + -1 * a * r` |
| 18 | bound | `{"direction":"lo","ref":"150:18","triangle":"ACF","value":"42079/250000"}` | `1 * c + -1 * a * c + 1 * a * f + -42079/250000` |
| 19 | bound | `{"direction":"hi","ref":"150:19","triangle":"ACF","value":"119285466873/125000000000"}` | `119285466873/125000000000 + -1 * c + 1 * a * c + -1 * a * f` |
| 21 | bound | `{"direction":"hi","ref":"150:21","triangle":"ACH","value":"107817/125000"}` | `107817/125000 + -1 * c * h + 1 * a * c` |
| 22 | bound | `{"direction":"lo","ref":"150:22","triangle":"ACP","value":"93/1000"}` | `1 * c * q + -1 * a * c + 1 * a * p + -93/1000` |
| 23 | bound | `{"direction":"hi","ref":"150:23","triangle":"ACP","value":"8888/15625"}` | `8888/15625 + -1 * c * q + 1 * a * c + -1 * a * p` |
| 24 | bound | `{"direction":"lo","ref":"150:24","triangle":"ACQ","value":"20987/200000"}` | `1 * c * v + -1 * a * c + 1 * a * u + -20987/200000` |
| 25 | bound | `{"direction":"hi","ref":"150:25","triangle":"ACQ","value":"88467/200000"}` | `88467/200000 + -1 * c * v + 1 * a * c + -1 * a * u` |
| 26 | bound | `{"direction":"lo","ref":"150:26","triangle":"ACR","value":"41377/250000"}` | `1 * c * w + -1 * a * c + 1 * a * r + -41377/250000` |
| 27 | bound | `{"direction":"hi","ref":"150:27","triangle":"ACR","value":"1/1"}` | `1 + -1 * c * w + 1 * a * c + -1 * a * r` |
| 29 | bound | `{"direction":"hi","ref":"150:29","triangle":"ACS","value":"728021/1000000"}` | `728021/1000000 + -1 * c * k + 1 * a * c + -1 * a * j` |
| 30 | bound | `{"direction":"lo","ref":"150:30","triangle":"AEF","value":"59467/500000"}` | `440533/500000 + -1 * a + -1 * e * f + 1 * a * f` |
| 33 | bound | `{"direction":"hi","ref":"150:33","triangle":"AEH","value":"107817/125000"}` | `107817/125000 + -1 * h + 1 * a` |
| 34 | bound | `{"direction":"lo","ref":"150:34","triangle":"AER","value":"95047/1000000"}` | `1 * w + -1 * a + -1 * e * r + 1 * a * r + -95047/1000000` |
| 35 | bound | `{"direction":"hi","ref":"150:35","triangle":"AER","value":"847045092771/1000000000000"}` | `847045092771/1000000000000 + -1 * w + 1 * a + 1 * e * r + -1 * a * r` |
| 38 | bound | `{"direction":"lo","ref":"150:38","triangle":"AFH","value":"93/1000"}` | `1 * f * h + -1 * a * f + -93/1000` |
| 39 | bound | `{"direction":"hi","ref":"150:39","triangle":"AFH","value":"71960408127/125000000000"}` | `71960408127/125000000000 + -1 * f * h + 1 * a * f` |
| 43 | bound | `{"direction":"hi","ref":"150:43","triangle":"AFS","value":"41896944981/62500000000"}` | `41896944981/62500000000 + 1 * f * k + -1 * a * f + -1 * j + 1 * a * j` |
| 44 | bound | `{"direction":"lo","ref":"150:44","triangle":"AHP","value":"93/1000"}` | `1 * h * p + -1 * a * p + -93/1000` |
| 45 | bound | `{"direction":"hi","ref":"150:45","triangle":"AHP","value":"662319831/2500000000"}` | `662319831/2500000000 + -1 * h * p + 1 * a * p` |
| 46 | bound | `{"direction":"lo","ref":"150:46","triangle":"AHQ","value":"20357/125000"}` | `1 * h * u + -1 * a * u + -20357/125000` |
| 47 | bound | `{"direction":"hi","ref":"150:47","triangle":"AHQ","value":"2863942971/5000000000"}` | `2863942971/5000000000 + -1 * h * u + 1 * a * u` |
| 48 | bound | `{"direction":"lo","ref":"150:48","triangle":"AHR","value":"117443/1000000"}` | `1 * h * r + -1 * a * r + -117443/1000000` |
| 49 | bound | `{"direction":"hi","ref":"150:49","triangle":"AHR","value":"107817/125000"}` | `107817/125000 + -1 * h * r + 1 * a * r` |
| 51 | bound | `{"direction":"hi","ref":"150:51","triangle":"AHS","value":"11983104831/15625000000"}` | `11983104831/15625000000 + -1 * h * j + 1 * a * j` |
| 52 | bound | `{"direction":"lo","ref":"150:52","triangle":"BCE","value":"93/1000"}` | `1 * c * e + -1 * b * e + -93/1000` |
| 53 | bound | `{"direction":"hi","ref":"150:53","triangle":"BCE","value":"4989453/15625000"}` | `4989453/15625000 + -1 * c * e + 1 * b * e` |
| 54 | bound | `{"direction":"lo","ref":"150:54","triangle":"BCF","value":"93/1000"}` | `1 * c + -1 * b + -93/1000` |
| 55 | bound | `{"direction":"hi","ref":"150:55","triangle":"BCF","value":"84567/125000"}` | `84567/125000 + -1 * c + 1 * b` |
| 56 | bound | `{"direction":"lo","ref":"150:56","triangle":"BCH","value":"11809/100000"}` | `1 * c * h + -1 * b * h + -11809/100000` |
| 57 | bound | `{"direction":"hi","ref":"150:57","triangle":"BCH","value":"84567/125000"}` | `84567/125000 + -1 * c * h + 1 * b * h` |
| 58 | bound | `{"direction":"lo","ref":"150:58","triangle":"BCP","value":"93/1000"}` | `1 * c * q + -1 * b * q + -93/1000` |
| 59 | bound | `{"direction":"hi","ref":"150:59","triangle":"BCP","value":"29560986819/62500000000"}` | `29560986819/62500000000 + -1 * c * q + 1 * b * q` |
| 62 | bound | `{"direction":"lo","ref":"150:62","triangle":"BCR","value":"148887/1000000"}` | `1 * c * w + -1 * b * w + -148887/1000000` |
| 63 | bound | `{"direction":"hi","ref":"150:63","triangle":"BCR","value":"84567/125000"}` | `84567/125000 + -1 * c * w + 1 * b * w` |
| 65 | bound | `{"direction":"hi","ref":"150:65","triangle":"BCS","value":"502031/1000000"}` | `502031/1000000 + -1 * c * k + 1 * b * k` |
| 67 | bound | `{"direction":"hi","ref":"150:67","triangle":"BEF","value":"84567/125000"}` | `-40433/125000 + 1 * b + 1 * e * f + -1 * b * e` |
| 68 | bound | `{"direction":"lo","ref":"150:68","triangle":"BEH","value":"220347/1000000"}` | `1 * h + -1 * b * h + 1 * b * e + -220347/1000000` |
| 69 | bound | `{"direction":"hi","ref":"150:69","triangle":"BEH","value":"6478211/7812500"}` | `6478211/7812500 + -1 * h + 1 * b * h + -1 * b * e` |
| 70 | bound | `{"direction":"lo","ref":"150:70","triangle":"BEP","value":"5083/40000"}` | `1 * q + -1 * b * q + -1 * e * p + 1 * b * e + -5083/40000` |
| 71 | bound | `{"direction":"hi","ref":"150:71","triangle":"BEP","value":"35922455319/62500000000"}` | `35922455319/62500000000 + -1 * q + 1 * b * q + 1 * e * p + -1 * b * e` |
| 73 | bound | `{"direction":"hi","ref":"150:73","triangle":"BER","value":"622966783187/1000000000000"}` | `622966783187/1000000000000 + -1 * w + 1 * b * w + 1 * e * r + -1 * b * e` |
| 74 | bound | `{"direction":"lo","ref":"150:74","triangle":"BES","value":"93/1000"}` | `1 * k + -1 * b * k + -1 * e * j + 1 * b * e + -93/1000` |
| 76 | bound | `{"direction":"lo","ref":"150:76","triangle":"BFH","value":"122041/1000000"}` | `1 * f * h + -1 * b * h + 1 * b + -122041/1000000` |
| 77 | bound | `{"direction":"hi","ref":"150:77","triangle":"BFH","value":"667431/1000000"}` | `667431/1000000 + -1 * f * h + 1 * b * h + -1 * b` |
| 78 | bound | `{"direction":"lo","ref":"150:78","triangle":"BFP","value":"93/1000"}` | `1 * f * q + -1 * b * q + -1 * p + 1 * b + -93/1000` |
| 81 | bound | `{"direction":"hi","ref":"150:81","triangle":"BFR","value":"84567/125000"}` | `84567/125000 + 1 * f * w + -1 * b * w + -1 * r + 1 * b` |
| 84 | bound | `{"direction":"lo","ref":"150:84","triangle":"BHP","value":"93/1000"}` | `-1 * b * q + -1 * h * p + 1 * b * h + -93/1000` |
| 86 | bound | `{"direction":"lo","ref":"150:86","triangle":"BHQ","value":"93/1000"}` | `1 * b * v + 1 * h * u + -1 * b * h + -93/1000` |
| 88 | bound | `{"direction":"lo","ref":"150:88","triangle":"BHR","value":"240191/1000000"}` | `1 * b * w + 1 * h * r + -1 * b * h + -240191/1000000` |
| 89 | bound | `{"direction":"hi","ref":"150:89","triangle":"BHR","value":"1/1"}` | `1 + -1 * b * w + -1 * h * r + 1 * b * h` |
| 94 | bound | `{"direction":"lo","ref":"150:94","triangle":"BPR","value":"116041/1000000"}` | `-1 * p * w + 1 * b * w + 1 * q * r + -1 * b * q + -116041/1000000` |
| 95 | bound | `{"direction":"hi","ref":"150:95","triangle":"BPR","value":"396056821933/500000000000"}` | `396056821933/500000000000 + 1 * p * w + -1 * b * w + -1 * q * r + 1 * b * q` |
| 98 | bound | `{"direction":"lo","ref":"150:98","triangle":"CEF","value":"133999/1000000"}` | `866001/1000000 + -1 * c + -1 * e * f + 1 * c * e` |
| 99 | bound | `{"direction":"hi","ref":"150:99","triangle":"CEF","value":"15046881/31250000"}` | `-16203119/31250000 + 1 * c + 1 * e * f + -1 * c * e` |
| 100 | bound | `{"direction":"lo","ref":"150:100","triangle":"CEH","value":"320341/1000000"}` | `1 * h + -1 * c * h + 1 * c * e + -320341/1000000` |
| 101 | bound | `{"direction":"hi","ref":"150:101","triangle":"CEH","value":"792719/1250000"}` | `792719/1250000 + -1 * h + 1 * c * h + -1 * c * e` |
| 102 | bound | `{"direction":"lo","ref":"150:102","triangle":"CEP","value":"38621/125000"}` | `1 * q + -1 * c * q + -1 * e * p + 1 * c * e + -38621/125000` |
| 103 | bound | `{"direction":"hi","ref":"150:103","triangle":"CEP","value":"4908665531/10000000000"}` | `4908665531/10000000000 + -1 * q + 1 * c * q + 1 * e * p + -1 * c * e` |
| 104 | bound | `{"direction":"lo","ref":"150:104","triangle":"CEQ","value":"1513/12500"}` | `1 * v + -1 * c * v + -1 * e * u + 1 * c * e + -1513/12500` |
| 105 | bound | `{"direction":"hi","ref":"150:105","triangle":"CEQ","value":"302939/1000000"}` | `302939/1000000 + -1 * v + 1 * c * v + 1 * e * u + -1 * c * e` |
| 106 | bound | `{"direction":"lo","ref":"150:106","triangle":"CER","value":"93/1000"}` | `1 * w + -1 * c * w + -1 * e * r + 1 * c * e + -93/1000` |
| 108 | bound | `{"direction":"lo","ref":"150:108","triangle":"CES","value":"93/1000"}` | `1 * k + -1 * c * k + -1 * e * j + 1 * c * e + -93/1000` |
| 110 | bound | `{"direction":"lo","ref":"150:110","triangle":"CFH","value":"84483/250000"}` | `1 * f * h + -1 * c * h + 1 * c + -84483/250000` |
| 111 | bound | `{"direction":"hi","ref":"150:111","triangle":"CFH","value":"15391591367/20000000000"}` | `15391591367/20000000000 + -1 * f * h + 1 * c * h + -1 * c` |
| 112 | bound | `{"direction":"lo","ref":"150:112","triangle":"CFP","value":"8779/31250"}` | `1 * f * q + -1 * c * q + -1 * p + 1 * c + -8779/31250` |
| 113 | bound | `{"direction":"hi","ref":"150:113","triangle":"CFP","value":"821161218033/1000000000000"}` | `821161218033/1000000000000 + -1 * f * q + 1 * c * q + 1 * p + -1 * c` |
| 114 | bound | `{"direction":"lo","ref":"150:114","triangle":"CFQ","value":"93/1000"}` | `1 * f * v + -1 * c * v + -1 * u + 1 * c + -93/1000` |
| 115 | bound | `{"direction":"hi","ref":"150:115","triangle":"CFQ","value":"468559/1000000"}` | `468559/1000000 + -1 * f * v + 1 * c * v + 1 * u + -1 * c` |
| 116 | bound | `{"direction":"lo","ref":"150:116","triangle":"CFR","value":"147019/500000"}` | `-1 * f * w + 1 * c * w + 1 * r + -1 * c + -147019/500000` |
| 117 | bound | `{"direction":"hi","ref":"150:117","triangle":"CFR","value":"84567/125000"}` | `84567/125000 + 1 * f * w + -1 * c * w + -1 * r + 1 * c` |
| 118 | bound | `{"direction":"lo","ref":"150:118","triangle":"CFS","value":"54019/500000"}` | `-1 * f * k + 1 * c * k + 1 * j + -1 * c + -54019/500000` |
| 119 | bound | `{"direction":"hi","ref":"150:119","triangle":"CFS","value":"212021/500000"}` | `212021/500000 + 1 * f * k + -1 * c * k + -1 * j + 1 * c` |
| 120 | bound | `{"direction":"lo","ref":"150:120","triangle":"CHP","value":"93/1000"}` | `-1 * c * q + -1 * h * p + 1 * c * h + -93/1000` |
| 121 | bound | `{"direction":"hi","ref":"150:121","triangle":"CHP","value":"126277/200000"}` | `126277/200000 + 1 * c * q + 1 * h * p + -1 * c * h` |
| 122 | bound | `{"direction":"lo","ref":"150:122","triangle":"CHQ","value":"93/1000"}` | `1 * c * v + 1 * h * u + -1 * c * h + -93/1000` |
| 123 | bound | `{"direction":"hi","ref":"150:123","triangle":"CHQ","value":"167357/500000"}` | `167357/500000 + -1 * c * v + -1 * h * u + 1 * c * h` |
| 124 | bound | `{"direction":"lo","ref":"150:124","triangle":"CHR","value":"13857/20000"}` | `1 * c * w + 1 * h * r + -1 * c * h + -13857/20000` |
| 125 | bound | `{"direction":"hi","ref":"150:125","triangle":"CHR","value":"1/1"}` | `1 + -1 * c * w + -1 * h * r + 1 * c * h` |
| 126 | bound | `{"direction":"lo","ref":"150:126","triangle":"CHS","value":"192131/500000"}` | `1 * c * k + 1 * h * j + -1 * c * h + -192131/500000` |
| 127 | bound | `{"direction":"hi","ref":"150:127","triangle":"CHS","value":"70923/100000"}` | `70923/100000 + -1 * c * k + -1 * h * j + 1 * c * h` |
| 128 | bound | `{"direction":"lo","ref":"150:128","triangle":"CPQ","value":"5933/62500"}` | `-1 * p * v + 1 * c * v + 1 * q * u + -1 * c * q + -5933/62500` |
| 129 | bound | `{"direction":"hi","ref":"150:129","triangle":"CPQ","value":"276827/1000000"}` | `276827/1000000 + 1 * p * v + -1 * c * v + -1 * q * u + 1 * c * q` |
| 130 | bound | `{"direction":"lo","ref":"150:130","triangle":"CPR","value":"13857/20000"}` | `-1 * p * w + 1 * c * w + 1 * q * r + -1 * c * q + -13857/20000` |
| 131 | bound | `{"direction":"hi","ref":"150:131","triangle":"CPR","value":"892179/1000000"}` | `892179/1000000 + 1 * p * w + -1 * c * w + -1 * q * r + 1 * c * q` |
| 133 | bound | `{"direction":"hi","ref":"150:133","triangle":"CPS","value":"314477/500000"}` | `314477/500000 + 1 * p * k + -1 * c * k + -1 * q * j + 1 * c * q` |
| 134 | bound | `{"direction":"lo","ref":"150:134","triangle":"CQR","value":"64189/200000"}` | `-1 * u * w + 1 * c * w + 1 * v * r + -1 * c * v + -64189/200000` |
| 135 | bound | `{"direction":"hi","ref":"150:135","triangle":"CQR","value":"33289/62500"}` | `33289/62500 + 1 * u * w + -1 * c * w + -1 * v * r + 1 * c * v` |
| 136 | bound | `{"direction":"lo","ref":"150:136","triangle":"CQS","value":"26989/200000"}` | `-1 * u * k + 1 * c * k + 1 * v * j + -1 * c * v + -26989/200000` |
| 138 | bound | `{"direction":"lo","ref":"150:138","triangle":"CRS","value":"93/1000"}` | `1 * r * k + -1 * c * k + -1 * w * j + 1 * c * w + -93/1000` |
| 140 | bound | `{"direction":"lo","ref":"150:140","triangle":"EFH","value":"157781/1000000"}` | `1 * f * h + -1 * e * f + -1 * h + 842219/1000000` |
| 142 | bound | `{"direction":"lo","ref":"150:142","triangle":"EFP","value":"18941/125000"}` | `1 * f * q + -1 * e * f + -1 * q + -1 * p + 106059/125000 + 1 * e * p` |
| 144 | bound | `{"direction":"lo","ref":"150:144","triangle":"EFQ","value":"105787/1000000"}` | `1 * f * v + -1 * e * f + -1 * v + -1 * u + 894213/1000000 + 1 * e * u` |
| 146 | bound | `{"direction":"lo","ref":"150:146","triangle":"EFR","value":"279/1000"}` | `-1 * f * w + 1 * e * f + 1 * w + 1 * r + -1279/1000 + -1 * e * r` |
| 147 | bound | `{"direction":"hi","ref":"150:147","triangle":"EFR","value":"70945201341/125000000000"}` | `195945201341/125000000000 + 1 * f * w + -1 * e * f + -1 * w + -1 * r + 1 * e * r` |
| 148 | bound | `{"direction":"lo","ref":"150:148","triangle":"EFS","value":"93/1000"}` | `-1 * f * k + 1 * e * f + 1 * k + 1 * j + -1093/1000 + -1 * e * j` |
| 149 | bound | `{"direction":"hi","ref":"150:149","triangle":"EFS","value":"327493/1000000"}` | `1327493/1000000 + 1 * f * k + -1 * e * f + -1 * k + -1 * j + 1 * e * j` |
| 150 | bound | `{"direction":"lo","ref":"150:150","triangle":"EHP","value":"93/1000"}` | `-1 * q + -1 * h * p + 1 * h + 1 * e * p + -93/1000` |
| 151 | bound | `{"direction":"hi","ref":"150:151","triangle":"EHP","value":"691239/1000000"}` | `691239/1000000 + 1 * q + 1 * h * p + -1 * h + -1 * e * p` |
| 152 | bound | `{"direction":"lo","ref":"150:152","triangle":"EHQ","value":"106301/1000000"}` | `-1 * v + -1 * h * u + 1 * h + 1 * e * u + -106301/1000000` |
| 153 | bound | `{"direction":"hi","ref":"150:153","triangle":"EHQ","value":"336681/1000000"}` | `336681/1000000 + 1 * v + 1 * h * u + -1 * h + -1 * e * u` |
| 154 | bound | `{"direction":"lo","ref":"150:154","triangle":"EHR","value":"376139/1000000"}` | `1 * w + 1 * h * r + -1 * h + -1 * e * r + -376139/1000000` |
| 155 | bound | `{"direction":"hi","ref":"150:155","triangle":"EHR","value":"838923/1000000"}` | `838923/1000000 + -1 * w + -1 * h * r + 1 * h + 1 * e * r` |
| 156 | bound | `{"direction":"lo","ref":"150:156","triangle":"EHS","value":"29077/250000"}` | `1 * k + 1 * h * j + -1 * h + -1 * e * j + -29077/250000` |
| 157 | bound | `{"direction":"hi","ref":"150:157","triangle":"EHS","value":"94293/200000"}` | `94293/200000 + -1 * k + -1 * h * j + 1 * h + 1 * e * j` |
| 158 | bound | `{"direction":"lo","ref":"150:158","triangle":"EPQ","value":"93/1000"}` | `1 * p * v + -1 * e * p + -1 * v + -1 * q * u + 1 * q + 1 * e * u + -93/1000` |
| 160 | bound | `{"direction":"lo","ref":"150:160","triangle":"EPR","value":"355107/1000000"}` | `-1 * p * w + 1 * e * p + 1 * w + 1 * q * r + -1 * q + -1 * e * r + -355107/1000000` |
| 161 | bound | `{"direction":"hi","ref":"150:161","triangle":"EPR","value":"748469483217/1000000000000"}` | `748469483217/1000000000000 + 1 * p * w + -1 * e * p + -1 * w + -1 * q * r + 1 * q + 1 * e * r` |
| 162 | bound | `{"direction":"lo","ref":"150:162","triangle":"EPS","value":"5311/50000"}` | `-1 * p * k + 1 * e * p + 1 * k + 1 * q * j + -1 * q + -1 * e * j + -5311/50000` |
| 164 | bound | `{"direction":"lo","ref":"150:164","triangle":"EQR","value":"35227/125000"}` | `-1 * u * w + 1 * e * u + 1 * w + 1 * v * r + -1 * v + -1 * e * r + -35227/125000` |
| 166 | bound | `{"direction":"lo","ref":"150:166","triangle":"EQS","value":"11977/125000"}` | `-1 * u * k + 1 * e * u + 1 * k + 1 * v * j + -1 * v + -1 * e * j + -11977/125000` |
| 167 | bound | `{"direction":"hi","ref":"150:167","triangle":"EQS","value":"307129/1000000"}` | `307129/1000000 + 1 * u * k + -1 * e * u + -1 * k + -1 * v * j + 1 * v + 1 * e * j` |
| 168 | bound | `{"direction":"lo","ref":"150:168","triangle":"ERS","value":"93/1000"}` | `1 * r * k + -1 * e * r + -1 * k + -1 * w * j + 1 * w + 1 * e * j + -93/1000` |
| 171 | bound | `{"direction":"hi","ref":"150:171","triangle":"FHP","value":"524905781967/1000000000000"}` | `524905781967/1000000000000 + 1 * f * q + 1 * h * p + -1 * f * h + -1 * p` |
| 172 | bound | `{"direction":"lo","ref":"150:172","triangle":"FHQ","value":"37983/250000"}` | `-1 * f * v + -1 * h * u + 1 * f * h + 1 * u + -37983/250000` |
| 173 | bound | `{"direction":"hi","ref":"150:173","triangle":"FHQ","value":"477063/1000000"}` | `477063/1000000 + 1 * f * v + 1 * h * u + -1 * f * h + -1 * u` |
| 174 | bound | `{"direction":"lo","ref":"150:174","triangle":"FHR","value":"93/1000"}` | `-1 * f * w + -1 * h * r + 1 * f * h + 1 * r + -93/1000` |
| 178 | bound | `{"direction":"lo","ref":"150:178","triangle":"FPQ","value":"93/1000"}` | `1 * p * v + -1 * p + -1 * f * v + -1 * q * u + 1 * f * q + 1 * u + -93/1000` |
| 179 | bound | `{"direction":"hi","ref":"150:179","triangle":"FPQ","value":"230959602467/500000000000"}` | `230959602467/500000000000 + -1 * p * v + 1 * p + 1 * f * v + 1 * q * u + -1 * f * q + -1 * u` |
| 180 | bound | `{"direction":"lo","ref":"150:180","triangle":"FPR","value":"28669/250000"}` | `1 * p * w + -1 * p + -1 * f * w + -1 * q * r + 1 * f * q + 1 * r + -28669/250000` |
| 181 | bound | `{"direction":"hi","ref":"150:181","triangle":"FPR","value":"580245216369/1000000000000"}` | `580245216369/1000000000000 + -1 * p * w + 1 * p + 1 * f * w + 1 * q * r + -1 * f * q + -1 * r` |
| 182 | bound | `{"direction":"lo","ref":"150:182","triangle":"FPS","value":"26261/200000"}` | `1 * p * k + -1 * p + -1 * f * k + -1 * q * j + 1 * f * q + 1 * j + -26261/200000` |
| 184 | bound | `{"direction":"lo","ref":"150:184","triangle":"FQR","value":"45109/250000"}` | `1 * u * w + -1 * u + -1 * f * w + -1 * v * r + 1 * f * v + 1 * r + -45109/250000` |
| 185 | bound | `{"direction":"hi","ref":"150:185","triangle":"FQR","value":"243187/500000"}` | `243187/500000 + -1 * u * w + 1 * u + 1 * f * w + 1 * v * r + -1 * f * v + -1 * r` |
| 188 | bound | `{"direction":"lo","ref":"150:188","triangle":"FRS","value":"93/1000"}` | `-1 * r * k + 1 * r + 1 * f * k + 1 * w * j + -1 * f * w + -1 * j + -93/1000` |
| 190 | bound | `{"direction":"lo","ref":"150:190","triangle":"HPQ","value":"93/1000"}` | `1 * p * v + -1 * h * p + -1 * q * u + 1 * h * u + -93/1000` |
| 191 | bound | `{"direction":"hi","ref":"150:191","triangle":"HPQ","value":"223779/500000"}` | `223779/500000 + -1 * p * v + 1 * h * p + 1 * q * u + -1 * h * u` |
| 192 | bound | `{"direction":"lo","ref":"150:192","triangle":"HPR","value":"47483/500000"}` | `1 * p * w + -1 * h * p + -1 * q * r + 1 * h * r + -47483/500000` |
| 194 | bound | `{"direction":"lo","ref":"150:194","triangle":"HPS","value":"46749/500000"}` | `1 * p * k + -1 * h * p + -1 * q * j + 1 * h * j + -46749/500000` |
| 196 | bound | `{"direction":"lo","ref":"150:196","triangle":"HQR","value":"262617/1000000"}` | `1 * u * w + -1 * h * u + -1 * v * r + 1 * h * r + -262617/1000000` |
| 197 | bound | `{"direction":"hi","ref":"150:197","triangle":"HQR","value":"117211/200000"}` | `117211/200000 + -1 * u * w + 1 * h * u + 1 * v * r + -1 * h * r` |
| 199 | bound | `{"direction":"hi","ref":"150:199","triangle":"HQS","value":"182579/500000"}` | `182579/500000 + -1 * u * k + 1 * h * u + 1 * v * j + -1 * h * j` |
| 200 | bound | `{"direction":"lo","ref":"150:200","triangle":"HRS","value":"166831/1000000"}` | `-1 * r * k + 1 * h * r + 1 * w * j + -1 * h * j + -166831/1000000` |
| 201 | bound | `{"direction":"hi","ref":"150:201","triangle":"HRS","value":"261369/500000"}` | `261369/500000 + 1 * r * k + -1 * h * r + -1 * w * j + 1 * h * j` |
| 202 | bound | `{"direction":"lo","ref":"150:202","triangle":"PQR","value":"199941/1000000"}` | `1 * u * w + -1 * q * u + -1 * p * w + -1 * v * r + 1 * p * v + 1 * q * r + -199941/1000000` |
| 203 | bound | `{"direction":"hi","ref":"150:203","triangle":"PQR","value":"238153/500000"}` | `238153/500000 + -1 * u * w + 1 * q * u + 1 * p * w + 1 * v * r + -1 * p * v + -1 * q * r` |
| 204 | bound | `{"direction":"lo","ref":"150:204","triangle":"PQS","value":"110523/1000000"}` | `1 * u * k + -1 * q * u + -1 * p * k + -1 * v * j + 1 * p * v + 1 * q * j + -110523/1000000` |
| 205 | bound | `{"direction":"hi","ref":"150:205","triangle":"PQS","value":"146699/500000"}` | `146699/500000 + -1 * u * k + 1 * q * u + 1 * p * k + 1 * v * j + -1 * p * v + -1 * q * j` |
| 206 | bound | `{"direction":"lo","ref":"150:206","triangle":"PRS","value":"155887/1000000"}` | `-1 * r * k + 1 * q * r + 1 * p * k + 1 * w * j + -1 * p * w + -1 * q * j + -155887/1000000` |
| 208 | bound | `{"direction":"lo","ref":"150:208","triangle":"QRS","value":"93/1000"}` | `-1 * r * k + 1 * v * r + 1 * u * k + 1 * w * j + -1 * u * w + -1 * v * j + -93/1000` |
| 210 | coordinate | `{"box":150,"direction":"lo","value":"17183/125000","variable":"a"}` | `1 * a + -17183/125000` |
| 211 | coordinate | `{"box":150,"direction":"hi","value":"59/125","variable":"a"}` | `59/125 + -1 * a` |
| 212 | coordinate | `{"box":150,"direction":"lo","value":"40433/125000","variable":"b"}` | `1 * b + -40433/125000` |
| 213 | coordinate | `{"box":150,"direction":"hi","value":"667431/1000000","variable":"b"}` | `667431/1000000 + -1 * b` |
| 214 | coordinate | `{"box":150,"direction":"lo","value":"13857/20000","variable":"c"}` | `1 * c + -13857/20000` |
| 215 | coordinate | `{"box":150,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 216 | coordinate | `{"box":150,"direction":"lo","value":"161077/1000000","variable":"e"}` | `1 * e + -161077/1000000` |
| 217 | coordinate | `{"box":150,"direction":"hi","value":"59/125","variable":"e"}` | `59/125 + -1 * e` |
| 218 | coordinate | `{"box":150,"direction":"lo","value":"40433/125000","variable":"f"}` | `1 * f + -40433/125000` |
| 219 | coordinate | `{"box":150,"direction":"hi","value":"667431/1000000","variable":"f"}` | `667431/1000000 + -1 * f` |
| 220 | coordinate | `{"box":150,"direction":"lo","value":"13857/20000","variable":"h"}` | `1 * h + -13857/20000` |
| 221 | coordinate | `{"box":150,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 222 | coordinate | `{"box":150,"direction":"lo","value":"107821/1000000","variable":"p"}` | `1 * p + -107821/1000000` |
| 223 | coordinate | `{"box":150,"direction":"hi","value":"6143/20000","variable":"p"}` | `6143/20000 + -1 * p` |
| 224 | coordinate | `{"box":150,"direction":"lo","value":"213543/1000000","variable":"q"}` | `1 * q + -213543/1000000` |
| 225 | coordinate | `{"box":150,"direction":"hi","value":"349557/500000","variable":"q"}` | `349557/500000 + -1 * q` |
| 227 | coordinate | `{"box":150,"direction":"hi","value":"26563/40000","variable":"u"}` | `26563/40000 + -1 * u` |
| 228 | coordinate | `{"box":150,"direction":"lo","value":"34553/200000","variable":"v"}` | `1 * v + -34553/200000` |
| 229 | coordinate | `{"box":150,"direction":"hi","value":"41049/62500","variable":"v"}` | `41049/62500 + -1 * v` |
| 230 | coordinate | `{"box":150,"direction":"lo","value":"656033/1000000","variable":"r"}` | `1 * r + -656033/1000000` |
| 231 | coordinate | `{"box":150,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 232 | coordinate | `{"box":150,"direction":"lo","value":"776581/1000000","variable":"w"}` | `1 * w + -776581/1000000` |
| 233 | coordinate | `{"box":150,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 235 | coordinate | `{"box":150,"direction":"hi","value":"111143/125000","variable":"j"}` | `111143/125000 + -1 * j` |
| 236 | coordinate | `{"box":150,"direction":"lo","value":"218003/500000","variable":"k"}` | `1 * k + -218003/500000` |
| 237 | coordinate | `{"box":150,"direction":"hi","value":"854839/1000000","variable":"k"}` | `854839/1000000 + -1 * k` |
| 240 | physical | `{"factor":4}` | `-93/1000 + 1 * e` |
| 241 | physical | `{"factor":6}` | `-93/1000 + 1 * f` |
| 243 | physical | `{"factor":9}` | `-279/1000 + 1 * h + -1 * a` |
| 246 | physical | `{"factor":18}` | `-93/1000 + 1 * c` |
| 248 | physical | `{"factor":26}` | `907/1000 + -1 * a` |
| 249 | physical | `{"factor":38}` | `-93/1000 + 1 * h` |
| 250 | physical | `{"factor":44}` | `907/1000 + -1 * b` |
| 251 | physical | `{"factor":61}` | `907/1000 + -1 * f` |
| 253 | physical | `{"factor":84}` | `907/1000 + -1 * e` |
| 255 | physical | `{"factor":120}` | `1 * e + -1 * a` |
| 256 | physical | `{"factor":121}` | `1 * h + -1 * e` |
| 257 | physical | `{"factor":122}` | `1 * f + -1 * b` |
| 258 | physical | `{"factor":123}` | `1 * c + -1 * f` |
| 259 | physical | `{"factor":124}` | `1 * f + -1 * e` |
| 260 | physical | `{"factor":125}` | `1 * c * h + -13857/20000` |
| 261 | physical | `{"factor":126}` | `1 * c * h + -1 * a * b + -279/625` |
| 262 | physical | `{"factor":127}` | `346/625 + -1 * c * h + 1 * f * h + 1 * c * e + -1 * e * f` |
| 263 | physical | `{"factor":128}` | `721/1000 + -1 * f + -1 * e + 1 * e * f` |
| 269 | physical | `{"factor":134}` | `23648400447/3875000000 * k + -1 + -15898400447/3875000000 * e + -1 * w` |
| 274 | physical | `{"factor":139}` | `80133/250000 * b * h + -107817/125000 * a * b + 135501/250000 * a * c` |
| 326 | physical | `{"factor":191}` | `8522563/62500000 * c * h + -8522563/62500000 * b * h + -13857/20000 * b * e + 13857/20000 * c * e` |
| 329 | physical | `{"factor":194}` | `-511374469/10000000000 * q + -4908665531/10000000000 * b * q + 511374469/10000000000 * e * p + -511374469/10000000000 * b * e + 135501/250000 * c * q` |
| 344 | physical | `{"factor":209}` | `-21639/125000 * c * w + 84567/125000 * h * r + 21639/125000 * c * h + 53103/62500 * b * w + -53103/62500 * b * h` |
| 395 | physical | `{"factor":260}` | `4908665531/10000000000 * w + 13598334469/10000000000 * c * w + -4908665531/10000000000 * e * r + -13598334469/10000000000 * c * e + -18507/10000 * q + 18507/10000 * e * p + -18507/10000 * p * w + 18507/10000 * q * r` |
| 413 | physical | `{"factor":278}` | `-196329245523/125000000000 * f * h + -35008254477/125000000000 * c * h + -196329245523/125000000000 * c + 18507/10000 * h * r + 18507/10000 * c * w` |
| 432 | physical | `{"factor":297}` | `-2927/10000 * p * w + -1 * h * p + 2927/10000 * q * r + -2927/10000 * h * r + 12927/10000 * c * h + -12927/10000 * c * q` |
| 463 | physical | `{"factor":328}` | `667431/1000000 + 355569/1000000 * a + -667431/1000000 * e * f + -355569/1000000 * a * f + -1023/1000 * b + 1023/1000 * b * e` |
| 464 | physical | `{"factor":329}` | `-5497461/7812500 * b + 5497461/7812500 * a * b + 4989453/15625000 * a * f + -1023/1000 * a * c + 1023/1000 * c` |
| 466 | physical | `{"factor":331}` | `-16921869/31250000 * c * e + 16921869/31250000 * b * e + 1023/1000 * c + -1023/1000 * b` |
| 484 | physical | `{"factor":349}` | `-667431/1000000 * f * w + -355569/1000000 * a * f + 667431/1000000 * r + 355569/1000000 * a * r + -1023/1000 * b + 1023/1000 * b * w` |
| 505 | physical | `{"factor":370}` | `-55914591873/125000000000 * f * h + -71960408127/125000000000 * e * f + 55914591873/125000000000 * h + 71960408127/125000000000 + 1023/1000 * a * f + -1023/1000 * a` |
| 513 | physical | `{"factor":378}` | `-184077/1000000 * w + 184077/1000000 * b * w + 184077/1000000 * e * r + 838923/1000000 * b * e + 1023/1000 * h + -1023/1000 * b * h` |
| 540 | physical | `{"factor":405}` | `-23/1000 * c * h + 23/1000 * a * c + -1023/1000 * a * r + 1023/1000 * h * r` |
| 580 | physical | `{"factor":445}` | `605915218033/1000000000000 * f * q + 605915218033/1000000000000 * h * p + 417084781967/1000000000000 * f * h + -605915218033/1000000000000 * p + -1023/1000 * b * h + 1023/1000 * b` |
| 581 | physical | `{"factor":446}` | `-10827/31250 * c * h + -84567/125000 * b * h + 1023/1000 * b * w + 1023/1000 * h * r` |
| 582 | physical | `{"factor":447}` | `-667431/1000000 * f * w + 355569/1000000 * h * r + -355569/1000000 * f * h + 667431/1000000 * r + -1023/1000 * b + 1023/1000 * b * w` |
| 593 | physical | `{"factor":458}` | `-605915218033/1000000000000 * p * v + 605915218033/1000000000000 * h * p + 605915218033/1000000000000 * q * u + 417084781967/1000000000000 * h * u + -1023/1000 * b * h + 1023/1000 * b * v` |
| 598 | physical | `{"factor":463}` | `28015044681/62500000000 * b * q + -35922455319/62500000000 * h * p + -28015044681/62500000000 * b * h + -1023/1000 * q + 1023/1000 * e * p + 1023/1000 * h` |
| 600 | physical | `{"factor":465}` | `-498094218033/1000000000000 * f * h + -524905781967/1000000000000 * e * f + 498094218033/1000000000000 * h + 524905781967/1000000000000 + 1023/1000 * f * q + -1023/1000 * p + -1023/1000 * q + 1023/1000 * e * p` |
| 611 | physical | `{"factor":476}` | `115443178067/500000000000 * b * q + -396056821933/500000000000 * h * p + -115443178067/500000000000 * b * h + 1023/1000 * p * w + -1023/1000 * q * r + 1023/1000 * h * r` |
| 618 | physical | `{"factor":483}` | `-16921869/31250000 * q + -15046881/31250000 * c * q + 16921869/31250000 * e * p + -16921869/31250000 * c * e + 1023/1000 * c + 1023/1000 * f * q + -1023/1000 * p` |
| 644 | physical | `{"factor":509}` | `-360928214837/1000000000000 * f * v + 360928214837/1000000000000 * e * f + -662071785163/1000000000000 * v + 360928214837/1000000000000 * u + -360928214837/1000000000000 + 662071785163/1000000000000 * e * u + 1023/1000 * h + -1023/1000 * h * u` |
| 666 | physical | `{"factor":531}` | `48523528461/125000000000 * u * k + 79351471539/125000000000 * e * u + -48523528461/125000000000 * k + -48523528461/125000000000 * v * j + -79351471539/125000000000 * v + 48523528461/125000000000 * e * j + 1023/1000 * h + -1023/1000 * h * u` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 30110800 | 0, 33 |
| 1 | 300 | 0, 53 |
| 2 | 8738600 | 0, 55 |
| 3 | 3900 | 0, 57 |
| 4 | 300 | 0, 59 |
| 5 | 3200 | 0, 63 |
| 6 | 3900 | 0, 76 |
| 7 | 3600 | 0, 88 |
| 8 | 3200 | 0, 95 |
| 9 | 400 | 0, 105 |
| 10 | 3900 | 0, 113 |
| 11 | 100 | 0, 135 |
| 12 | 5000 | 0, 140 |
| 13 | 3300 | 0, 147 |
| 14 | 500 | 0, 161 |
| 15 | 246608600 | 0, 222 |
| 16 | 6107100 | 0, 224 |
| 17 | 8745000 | 0, 246 |
| 18 | 30112500 | 0, 248 |
| 19 | 42892400 | 0, 249 |
| 20 | 7478500 | 0, 253 |
| 21 | 4700 | 0, 263 |
| 22 | 100 | 2, 197 |
| 23 | 3300 | 4, 174 |
| 24 | 3900 | 5, 120 |
| 25 | 5400 | 5, 260 |
| 26 | 300 | 6, 33 |
| 27 | 300 | 6, 52 |
| 28 | 680200 | 6, 54 |
| 29 | 11700 | 6, 58 |
| 30 | 8300 | 6, 77 |
| 31 | 3700 | 6, 89 |
| 32 | 400 | 6, 153 |
| 33 | 1400 | 6, 210 |
| 34 | 8054600 | 6, 214 |
| 35 | 100 | 7, 106 |
| 36 | 6900 | 7, 131 |
| 37 | 8300 | 13, 84 |
| 38 | 600 | 13, 122 |
| 39 | 1400 | 13, 260 |
| 40 | 3800 | 18, 84 |
| 41 | 400 | 18, 138 |
| 42 | 3900 | 18, 168 |
| 43 | 400 | 19, 122 |
| 44 | 3800 | 19, 222 |
| 45 | 112501500 | 21, 148 |
| 46 | 214623100 | 21, 158 |
| 47 | 3600 | 21, 168 |
| 48 | 238471500 | 21, 208 |
| 49 | 20052500 | 21, 222 |
| 50 | 1000 | 22, 231 |
| 51 | 300 | 22, 260 |
| 52 | 400 | 23, 148 |
| 53 | 300 | 23, 208 |
| 54 | 100 | 24, 106 |
| 55 | 800 | 25, 138 |
| 56 | 3800 | 26, 44 |
| 57 | 5100 | 26, 84 |
| 58 | 900 | 26, 122 |
| 59 | 400 | 26, 138 |
| 60 | 112502200 | 26, 148 |
| 61 | 214623600 | 26, 158 |
| 62 | 238472600 | 26, 208 |
| 63 | 800 | 27, 52 |
| 64 | 3700 | 27, 120 |
| 65 | 500 | 27, 190 |
| 66 | 1300 | 27, 210 |
| 67 | 3900 | 29, 146 |
| 68 | 100 | 30, 84 |
| 69 | 16900 | 30, 231 |
| 70 | 7484800 | 33, 67 |
| 71 | 25461100 | 33, 84 |
| 72 | 164165600 | 33, 122 |
| 73 | 80062800 | 33, 138 |
| 74 | 500 | 33, 158 |
| 75 | 900 | 33, 235 |
| 76 | 6813900 | 33, 259 |
| 77 | 600 | 34, 122 |
| 78 | 1900 | 35, 44 |
| 79 | 400 | 35, 164 |
| 80 | 3300 | 38, 174 |
| 81 | 100 | 39, 106 |
| 82 | 400 | 39, 208 |
| 83 | 400 | 43, 134 |
| 84 | 1200 | 44, 56 |
| 85 | 500 | 44, 68 |
| 86 | 10400 | 44, 88 |
| 87 | 400 | 44, 149 |
| 88 | 79297700 | 44, 230 |
| 89 | 266670000 | 44, 246 |
| 90 | 246618300 | 44, 250 |
| 91 | 9204400 | 44, 251 |
| 92 | 2100 | 44, 253 |
| 93 | 300 | 45, 208 |
| 94 | 400 | 46, 188 |
| 95 | 400 | 47, 174 |
| 96 | 112498300 | 48, 148 |
| 97 | 214623100 | 48, 158 |
| 98 | 238472200 | 48, 208 |
| 99 | 400 | 49, 106 |
| 100 | 17200 | 49, 259 |
| 101 | 400 | 51, 114 |
| 102 | 4300 | 52, 215 |
| 103 | 7486100 | 52, 220 |
| 104 | 2200 | 53, 231 |
| 105 | 25654300 | 54, 233 |
| 106 | 2200 | 55, 158 |
| 107 | 105804800 | 55, 174 |
| 108 | 7980800 | 55, 210 |
| 109 | 111649000 | 57, 168 |
| 110 | 8600 | 57, 174 |
| 111 | 300 | 58, 71 |
| 112 | 800 | 58, 152 |
| 113 | 1200 | 58, 259 |
| 114 | 900 | 59, 122 |
| 115 | 4800 | 62, 260 |
| 116 | 100 | 65, 174 |
| 117 | 300 | 69, 122 |
| 118 | 300 | 70, 84 |
| 119 | 62200 | 70, 231 |
| 120 | 384800 | 73, 257 |
| 121 | 8900 | 74, 174 |
| 122 | 111657800 | 76, 168 |
| 123 | 100 | 76, 174 |
| 124 | 1400 | 77, 152 |
| 125 | 18100 | 77, 233 |
| 126 | 5100 | 78, 125 |
| 127 | 400 | 81, 122 |
| 128 | 8700 | 81, 156 |
| 129 | 12000 | 84, 88 |
| 130 | 300 | 84, 121 |
| 131 | 1000 | 84, 153 |
| 132 | 100 | 84, 185 |
| 133 | 4300 | 84, 227 |
| 134 | 92705500 | 84, 230 |
| 135 | 7200 | 84, 232 |
| 136 | 1200 | 84, 240 |
| 137 | 229701700 | 84, 246 |
| 138 | 12687000 | 84, 248 |
| 139 | 25461400 | 84, 249 |
| 140 | 23462700 | 84, 250 |
| 141 | 81899000 | 84, 251 |
| 142 | 100 | 86, 106 |
| 143 | 300 | 88, 122 |
| 144 | 8700 | 88, 148 |
| 145 | 800 | 94, 122 |
| 146 | 100 | 95, 98 |
| 147 | 100 | 95, 104 |
| 148 | 22559400 | 95, 213 |
| 149 | 705600 | 95, 215 |
| 150 | 4300 | 95, 227 |
| 151 | 3900 | 98, 131 |
| 152 | 2300 | 99, 259 |
| 153 | 9300 | 100, 180 |
| 154 | 74009500 | 100, 203 |
| 155 | 1376200 | 100, 210 |
| 156 | 3600 | 100, 263 |
| 157 | 296372100 | 101, 202 |
| 158 | 10300 | 101, 231 |
| 159 | 300 | 102, 190 |
| 160 | 6107000 | 102, 210 |
| 161 | 15993300 | 103, 233 |
| 162 | 4800 | 104, 180 |
| 163 | 400 | 105, 257 |
| 164 | 10700 | 106, 118 |
| 165 | 3900 | 106, 120 |
| 166 | 400 | 106, 134 |
| 167 | 1500 | 106, 150 |
| 168 | 88248000 | 106, 190 |
| 169 | 700 | 106, 203 |
| 170 | 7300 | 106, 214 |
| 171 | 16604700 | 106, 225 |
| 172 | 400 | 108, 116 |
| 173 | 207065100 | 108, 174 |
| 174 | 2300 | 108, 180 |
| 175 | 400 | 108, 260 |
| 176 | 11800 | 110, 164 |
| 177 | 95421700 | 110, 168 |
| 178 | 1900 | 111, 122 |
| 179 | 5100 | 111, 128 |
| 180 | 2000 | 111, 152 |
| 181 | 8500 | 111, 158 |
| 182 | 1400 | 111, 180 |
| 183 | 6600 | 112, 122 |
| 184 | 4800 | 112, 164 |
| 185 | 3400 | 112, 168 |
| 186 | 1400 | 112, 174 |
| 187 | 1100 | 112, 208 |
| 188 | 7800 | 114, 125 |
| 189 | 3500 | 114, 156 |
| 190 | 7300 | 114, 197 |
| 191 | 3400 | 114, 204 |
| 192 | 441500 | 114, 217 |
| 193 | 80500 | 114, 233 |
| 194 | 134710 | 114, 269 |
| 195 | 3400 | 115, 208 |
| 196 | 5500 | 116, 158 |
| 197 | 207086000 | 117, 156 |
| 198 | 400 | 117, 164 |
| 199 | 705300 | 117, 259 |
| 200 | 400 | 119, 158 |
| 201 | 10000 | 120, 134 |
| 202 | 6500 | 120, 146 |
| 203 | 370384300 | 120, 164 |
| 204 | 174080000 | 120, 213 |
| 205 | 2200 | 120, 263 |
| 206 | 300 | 121, 158 |
| 207 | 2500 | 122, 130 |
| 208 | 2800 | 122, 154 |
| 209 | 370383200 | 122, 160 |
| 210 | 4600 | 122, 171 |
| 211 | 3400 | 122, 178 |
| 212 | 16400 | 122, 181 |
| 213 | 1400 | 122, 182 |
| 214 | 3300 | 122, 190 |
| 215 | 158897000 | 122, 202 |
| 216 | 300 | 122, 206 |
| 217 | 22400 | 122, 232 |
| 218 | 3000 | 122, 246 |
| 219 | 164165300 | 122, 248 |
| 220 | 164165100 | 122, 249 |
| 221 | 1097400 | 122, 253 |
| 222 | 10700 | 123, 138 |
| 223 | 94586300 | 124, 148 |
| 224 | 244021700 | 124, 158 |
| 225 | 198060900 | 124, 208 |
| 226 | 800 | 125, 144 |
| 227 | 13000 | 125, 166 |
| 228 | 3400 | 125, 173 |
| 229 | 1700 | 125, 205 |
| 230 | 4800 | 125, 221 |
| 231 | 710300 | 125, 223 |
| 232 | 2300 | 125, 224 |
| 233 | 1300 | 125, 227 |
| 234 | 1800 | 125, 255 |
| 235 | 11400 | 126, 134 |
| 236 | 5500 | 127, 174 |
| 237 | 1000 | 127, 202 |
| 238 | 3400 | 128, 173 |
| 239 | 158900900 | 128, 197 |
| 240 | 2200 | 128, 215 |
| 241 | 500 | 128, 220 |
| 242 | 1300 | 128, 231 |
| 243 | 400 | 128, 263 |
| 244 | 584600 | 129, 233 |
| 245 | 3000 | 130, 148 |
| 246 | 7400 | 130, 260 |
| 247 | 88253900 | 131, 152 |
| 248 | 4800 | 131, 173 |
| 249 | 1400 | 131, 184 |
| 250 | 16604700 | 131, 216 |
| 251 | 2300 | 133, 184 |
| 252 | 400 | 134, 148 |
| 253 | 88249000 | 134, 150 |
| 254 | 400 | 134, 174 |
| 255 | 158900300 | 134, 190 |
| 256 | 3700 | 134, 194 |
| 257 | 436533100 | 134, 201 |
| 258 | 25260 | 134, 269 |
| 259 | 128900 | 136, 233 |
| 260 | 400 | 136, 260 |
| 261 | 400 | 138, 142 |
| 262 | 3600 | 138, 144 |
| 263 | 7700 | 138, 172 |
| 264 | 700 | 138, 180 |
| 265 | 400 | 138, 184 |
| 266 | 436533100 | 138, 196 |
| 267 | 976300 | 138, 229 |
| 268 | 25300 | 138, 232 |
| 269 | 80062800 | 138, 248 |
| 270 | 80062800 | 138, 249 |
| 271 | 10700 | 138, 262 |
| 272 | 400 | 140, 168 |
| 273 | 1100 | 146, 206 |
| 274 | 710900 | 146, 237 |
| 275 | 14700 | 146, 260 |
| 276 | 1500 | 148, 154 |
| 277 | 606900 | 148, 228 |
| 278 | 3900 | 148, 248 |
| 279 | 714900 | 148, 249 |
| 280 | 710900 | 148, 253 |
| 281 | 2428700 | 150, 213 |
| 282 | 2300 | 151, 231 |
| 283 | 3500 | 152, 173 |
| 284 | 2500 | 152, 188 |
| 285 | 4800 | 152, 213 |
| 286 | 500 | 152, 219 |
| 287 | 1500 | 154, 158 |
| 288 | 1100 | 154, 168 |
| 289 | 700 | 155, 164 |
| 290 | 400 | 155, 166 |
| 291 | 5500 | 156, 174 |
| 292 | 688600 | 157, 233 |
| 293 | 700 | 158, 188 |
| 294 | 300 | 158, 191 |
| 295 | 584600 | 158, 232 |
| 296 | 900 | 158, 249 |
| 297 | 500 | 160, 174 |
| 298 | 400 | 162, 174 |
| 299 | 3500 | 164, 172 |
| 300 | 200 | 164, 190 |
| 301 | 4300 | 164, 212 |
| 302 | 900 | 164, 214 |
| 303 | 709300 | 164, 216 |
| 304 | 100 | 164, 218 |
| 305 | 22400 | 164, 236 |
| 306 | 900 | 164, 255 |
| 307 | 200 | 167, 263 |
| 308 | 400 | 168, 192 |
| 309 | 584600 | 168, 228 |
| 310 | 400 | 168, 241 |
| 311 | 111649400 | 168, 246 |
| 312 | 3900 | 168, 248 |
| 313 | 715200 | 168, 249 |
| 314 | 111649000 | 168, 250 |
| 315 | 710600 | 168, 253 |
| 316 | 26056300 | 174, 223 |
| 317 | 500 | 174, 227 |
| 318 | 710900 | 174, 236 |
| 319 | 245300 | 174, 241 |
| 320 | 105804400 | 174, 246 |
| 321 | 10100 | 174, 249 |
| 322 | 702100 | 174, 253 |
| 323 | 400 | 178, 199 |
| 324 | 400 | 178, 208 |
| 325 | 500 | 179, 231 |
| 326 | 82797200 | 180, 213 |
| 327 | 215200 | 188, 229 |
| 328 | 300 | 190, 190 |
| 329 | 2200 | 190, 213 |
| 330 | 400 | 190, 263 |
| 331 | 1400 | 192, 208 |
| 332 | 4300 | 196, 222 |
| 333 | 22400 | 199, 233 |
| 334 | 400 | 200, 202 |
| 335 | 500 | 203, 210 |
| 336 | 25300 | 208, 232 |
| 337 | 400 | 208, 241 |
| 338 | 400 | 208, 246 |
| 339 | 400 | 208, 249 |
| 340 | 22000 | 208, 253 |
| 341 | 3900 | 208, 262 |
| 342 | 23157400 | 210, 215 |
| 343 | 100 | 210, 227 |
| 344 | 8537400 | 211, 231 |
| 345 | 11397400 | 211, 260 |
| 346 | 7342100 | 213, 260 |
| 347 | 12361500 | 214, 217 |
| 348 | 11323500 | 214, 259 |
| 349 | 117058400 | 215, 225 |
| 350 | 55965300 | 217, 231 |
| 351 | 53379600 | 217, 260 |
| 352 | 57016900 | 219, 260 |
| 353 | 1089300 | 220, 263 |
| 354 | 196418200 | 221, 222 |
| 355 | 38914700 | 221, 231 |
| 356 | 32791300 | 221, 259 |
| 357 | 100 | 222, 229 |
| 358 | 700 | 222, 257 |
| 359 | 9968700 | 223, 231 |
| 360 | 126914600 | 223, 233 |
| 361 | 16200400 | 223, 260 |
| 362 | 103456900 | 224, 231 |
| 363 | 800 | 224, 233 |
| 364 | 100 | 225, 227 |
| 365 | 25026500 | 225, 257 |
| 366 | 4300 | 228, 257 |
| 367 | 3600 | 230, 257 |
| 368 | 15700 | 231, 259 |
| 369 | 13700 | 231, 263 |
| 370 | 3500 | 233, 256 |
| 371 | 129512100 | 233, 258 |
| 372 | 800 | 236, 257 |
| 373 | 6380200 | 243, 263 |
| 374 | 21438600 | 248, 257 |
| 375 | 1804100 | 249, 257 |
| 376 | 403000 | 250, 257 |
| 377 | 1100900 | 251, 257 |
| 378 | 2031600 | 253, 257 |
| 379 | 1100500 | 255, 263 |
| 380 | 1099900 | 259, 259 |
| 381 | 1400 | 260, 261 |
| 382 | 3700 | 261, 263 |
| 383 | 1400 | 263, 263 |
| 384 | 10000 | 257, 274 |
| 385 | 4829000 | 257, 326 |
| 386 | 1305000 | 231, 329 |
| 387 | 39000 | 233, 329 |
| 388 | 15250400 | 257, 344 |
| 389 | 2456000 | 257, 395 |
| 390 | 2800 | 257, 413 |
| 391 | 43573000 | 257, 432 |
| 392 | 6842400 | 222, 463 |
| 393 | 4500 | 233, 464 |
| 394 | 4300 | 233, 466 |
| 395 | 19033300 | 222, 484 |
| 396 | 2400 | 233, 505 |
| 397 | 4446500 | 257, 513 |
| 398 | 300 | 257, 540 |
| 399 | 22042200 | 231, 580 |
| 400 | 7522500 | 257, 581 |
| 401 | 686600 | 257, 582 |
| 402 | 4200 | 231, 593 |
| 403 | 21500 | 233, 598 |
| 404 | 22500 | 257, 598 |
| 405 | 1900 | 233, 600 |
| 406 | 3856600 | 257, 611 |
| 407 | 1100 | 257, 618 |
| 408 | 1072900 | 217, 644 |
| 409 | 400 | 263, 666 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `a * b` | 4618147750966979/500000000 |
| `a * b * h` | -200 |
| `a * c` | -2287023098979/500000000 |
| `a * c * h` | 1500 |
| `a * a * c` | -400 |
| `1` | -25782038566609871533041/250000000000000 |
| `h` | -51873188965850757/10000000000 |
| `a` | 20386095746310603/1250000000 |
| `c * e` | 2405895481892014271/77500000000 |
| `b * e` | -75002249/625000 |
| `a * b * c` | -11347/50 |
| `a * b * b` | -201134366/25 |
| `a * c * c` | 2500 |
| `c` | -44448197841962813/5000000000 |
| `b` | -3671769911046949/500000000 |
| `a * b * c * h` | 100 |
| `c * h` | 450932505388903/62500000 |
| `a * b * c * q` | 100 |
| `a * b * b * q` | -100 |
| `a * c * c * q` | -100 |
| `c * q` | 91072170340077783/5000000000 |
| `b * q` | 810517318560229/312500000 |
| `a * b * c * w` | -100 |
| `a * b * b * w` | 100 |
| `a * c * c * w` | -3200 |
| `c * w` | 1150231082831/1250000000 |
| `b * w` | 15642416393637/2000000 |
| `f * h` | -5800080675369/10000000000 |
| `a * b * h * r` | 300 |
| `a * b * b * h` | -100 |
| `a * c * h * r` | -2400 |
| `h * r` | -13212799221/12500000 |
| `b * h` | 141051305517/125000000 |
| `a * b * p * w` | -7200 |
| `a * c * p * w` | -100 |
| `p * w` | 58647559787260751/2500000000 |
| `q * r` | -114616749501/2500000000 |
| `a * b * c * v` | 100 |
| `a * c * v` | -200 |
| `v` | -310398742230269/1250000000000 |
| `c * v` | -2728330047/78125000 |
| `e * u` | 2994998429104491/9687500000000 |
| `a * b * p` | 5800 |
| `a * c * p` | -1200 |
| `f * q` | 195120210784169413/5000000000 |
| `p` | 13918022256351283/5000000000 |
| `a * b * e * f` | -100 |
| `e * f` | 205190457271083/312500000000 |
| `a * b * w` | 11460351/15625 |
| `a * b * e * r` | -3100 |
| `a * c * f * w` | -700 |
| `a * c * w` | 9607/2 |
| `a * c * r` | 1600 |
| `a * c * e * r` | -100 |
| `f * w` | -30709174583317/10000000000 |
| `w` | 110255431943741059/10000000000 |
| `r` | 631665768102270647/10000000000 |
| `e * r` | 1372133024721/2500000000 |
| `a * b * q` | -18881600 |
| `a * c * q` | 100 |
| `e * p` | 6708828989621/8000000 |
| `q` | -107686345849621/8000000 |
| `a * b * e` | 2100 |
| `e` | -104607831004810984937/4843750000000 |
| `a * b * f` | -5634/25 |
| `a * c * f` | 36347/50 |
| `f` | -9362243619110053/1250000000 |
| `b * e * h * u` | -200 |
| `a * b * h * u` | 100 |
| `a * h * u` | -200 |
| `a * h * r` | 1700 |
| `h * u` | -579605898433/5000000000 |
| `b * f * w` | 59376643/10000 |
| `b * h * r` | -10749/5000 |
| `b * f * h` | 16110766290427/2500000000 |
| `b * r` | -143623/5000 |
| `a * f * r` | -69/10 |
| `a * f` | -61273200050420207/10000000000 |
| `h * p` | 17513267058748601/10000000000 |
| `b * c * q` | 14609441/312500 |
| `b * h * p` | -6092878861/2500000000 |
| `b * c * h` | -1457852353661/312500000 |
| `a * b * h * p` | -100 |
| `b * c * e * h` | 400 |
| `b * b * h` | 217859958861/2500000000 |
| `b * c * h * q` | 200 |
| `b * f * h * h` | 200 |
| `b * h * h * r` | -200 |
| `b * h * w` | -195353078717/125000000 |
| `b * c * h * w` | 5900 |
| `b * h * p * w` | -200 |
| `b * b * q * w` | -3700 |
| `a * h * p * r` | -1100 |
| `a * r` | 78219478728575383/10000000000 |
| `c * h * p` | 3700 |
| `c * w * j` | 100 |
| `c * c * w` | -100 |
| `a * c * r * k` | 100 |
| `a * c * w * j` | -100 |
| `a * c * f * k` | -100 |
| `r * k` | 105650571421/625000000 |
| `c * k` | -12712040963/387500000 |
| `w * j` | -43150571421/625000000 |
| `c * e * r` | 1500 |
| `a * e * f * r` | -100 |
| `a * f * w` | 3369923/31250 |
| `k` | -5435663091227373/38750000000000 |
| `e * j` | 38386120270381/312500000000 |
| `c * h * u` | -100 |
| `c * c * h` | 500 |
| `c * p` | -2400 |
| `a * f * p` | 32267/10000 |
| `f * k` | -17412940289/312500000 |
| `j` | 347143/10000 |
| `c * f * h * k` | 100 |
| `c * e * f * h` | -100 |
| `c * h * k` | -100 |
| `c * h * j` | -100 |
| `c * e * h * j` | 100 |
| `a * c * j` | 100 |
| `p * v` | -284927316743/5000000000 |
| `q * u` | 284927316743/5000000000 |
| `c * h * p * v` | -200 |
| `c * e * h * p` | -300 |
| `c * h * v` | -300 |
| `c * h * q` | 3100 |
| `c * e * h * u` | 100 |
| `c * h * r * k` | -100 |
| `c * e * h * r` | -2200 |
| `c * h * w * j` | -100 |
| `c * h * w` | -1300 |
| `v * r` | -60253623217/2500000000 |
| `u * k` | 24659895431311/9687500000000 |
| `u * w` | 85253623217/2500000000 |
| `v * j` | 27347727940119/312500000000 |
| `c * h * u * k` | 100 |
| `c * h * u * w` | 100 |
| `c * h * v * j` | 100 |
| `c * q * r` | -10761/50 |
| `a * p` | -1527754624898762649/10000000000 |
| `a * p * r` | -725310485523/10000 |
| `c * c * h * q` | -2200 |
| `c * q * u * w` | 100 |
| `c * v * w` | 70 |
| `c * e * v * r` | 300 |
| `c * c * e * v` | -300 |
| `a * u` | -349/10 |
| `c * v * r * k` | -100 |
| `c * c * v * k` | 100 |
| `c * v * w * j` | 100 |
| `c * h * p * w` | -4400 |
| `a * a * c * p` | 3800 |
| `a * a * p * r` | -1900 |
| `c * c * h * w` | -200 |
| `c * c * w * k` | -100 |
| `c * f * w * k` | -100 |
| `c * w * k` | 11054764561/193750000 |
| `c * e * w * j` | -100 |
| `c * p * v * w` | -100 |
| `c * e * p * w` | -100 |
| `c * q * w` | 840461/250 |
| `a * e * p * r` | -2400 |
| `c * v * r * w` | -100 |
| `c * u * w * w` | 100 |
| `c * c * e * w` | 6800 |
| `b * c * e * w` | 600 |
| `c * c * q * w` | -2400 |
| `a * a * r` | -1300 |
| `c * e * f * k` | 100 |
| `a * j` | 11261/500 |
| `a * h * p` | -12772600 |
| `b * e * f * h` | 100 |
| `e * f * r` | 67207201/156250 |
| `e * f * h` | 46/5 |
| `b * e * h` | -100 |
| `a * e * f` | 200 |
| `b * h * q` | 200 |
| `h * h * p` | 1200 |
| `h * h * u` | -100 |
| `c * h * h` | 800 |
| `h * r * k` | -100 |
| `h * p * v` | -300 |
| `h * q` | -1100 |
| `e * h * u` | 1859/10 |
| `a * e * p` | -6105400 |
| `a * q` | 6107500 |
| `h * j` | -283181/2500 |
| `e * h` | 310341141/10 |
| `a * e` | 666800 |
| `h * u * w` | -300 |
| `h * p * w` | 407165578717/125000000 |
| `a * p * w` | 2400 |
| `a * a * p` | -1900 |
| `e * h * p * r` | -500 |
| `e * u * w` | 7179764561/193750000 |
| `a * w` | -9724/5 |
| `a * e * r` | -12800 |
| `e * v * r` | -7179764561/193750000 |
| `f * f * h * w` | -2000 |
| `f * f * h * h` | 3400 |
| `f * h * r` | 515843634963/5000000000 |
| `f * h * w` | 46199391782243/10000000000 |
| `c * f * h * w` | 100 |
| `a * c * e * f` | 100 |
| `f * h * v * r` | -100 |
| `f * h * w * j` | -100 |
| `f * v * r * k` | 100 |
| `u * w * j` | 100 |
| `c * v * j` | -100 |
| `c * h * h * p` | 200 |
| `b * h * h * p` | 200 |
| `b * e * h * p` | -100 |
| `h * h * p * r` | -1600 |
| `h * p * r` | 1656710723293/625000000 |
| `f * h * p` | 256092878861/2500000000 |
| `h * p * w * j` | 100 |
| `h * p * v * j` | -100 |
| `h * u * r * k` | -100 |
| `f * h * u * w` | 100 |
| `h * h * u * r` | 100 |
| `h * r * j` | 100 |
| `h * v * r` | 300 |
| `h * q * r` | 100 |
| `h * v * r * r` | -100 |
| `h * u * r * w` | 100 |
| `e * h * r` | 1600 |
| `f * v` | 254251788563793/1250000000000 |
| `u` | -206662988187543/1250000000000 |
| `c * c * e` | -8100 |
| `b * c * e` | -907568281/1250000 |
| `c * e * h` | -44795100 |
| `b * e * r` | 4042421181/10000000 |
| `c * p * v` | 100 |
| `c * e * p` | -600 |
| `c * e * u` | 100 |
| `b * e * p` | -17859309/312500 |
| `b * v` | 873/10 |
| `b * q * u` | -100 |
| `b * e * u` | -100 |
| `c * f * w` | 7075983/1250000 |
| `c * h * r` | 600 |
| `c * f * h` | 20352353661/312500000 |
| `c * r` | -400 |
| `b * h * k` | 100 |
| `b * h * w * j` | 100 |
| `b * e * h * j` | -100 |
| `b * f * h * w` | -8400 |
| `b * c * e * q` | -100 |
| `c * q * v` | -100 |
| `c * e * q * u` | -100 |
| `b * q * v` | -100 |
| `b * h * q * u` | -100 |
| `b * e * q * u` | 100 |
| `c * f * q` | -17601545859441/312500 |
| `c * e * q` | -100 |
| `b * f * q` | -8907121139/2500000000 |
| `b * f * w * k` | 100 |
| `b * f * h * k` | -100 |
| `b * k` | -408/5 |
| `b * c * h * h` | -300 |
| `b * c * e * v` | -200 |
| `b * q * r` | 292703591/2000000 |
| `e * p * r` | 1331263591/2000000 |
| `b * b * w` | 7204603/10000 |
| `b * e * f` | -603061/2000 |
| `b * b * e` | 603061/2000 |
| `f * w * k` | -100 |
| `e * f * w * j` | 200 |
| `e * r * j` | -100 |
| `b * e * f * w` | -100 |
| `b * w * j` | -100 |
| `b * e * j` | 100 |
| `f * h * v` | 100 |
| `f * h * h` | -2300 |
| `e * f * h * u` | -546/5 |
| `b * h * u` | 200 |
| `c * f * q * w` | 200 |
| `f * h * q * r` | 200 |
| `c * f * h * q` | -100 |
| `c * p * w` | 3300 |
| `b * c * w` | -5382075983/1250000 |
| `c * f * v * w` | 100 |
| `h * u * r` | 241219578693/5000000000 |
| `h * h * p * u` | -300 |
| `e * h * p * u` | 300 |
| `b * q * u * w` | 100 |
| `b * f * q * w` | -100 |
| `b * q * v * r` | -100 |
| `b * f * q * v` | 100 |
| `h * p * u` | -100 |
| `f * h * p * w` | -300 |
| `f * h * p * v` | 100 |
| `b * h * v * r` | 100 |
| `b * f * h * v` | -100 |
| `b * q * w` | 576655050159/250000000 |
| `b * b * q` | 6945657121139/2500000000 |
| `e * f * p * w` | -2800 |
| `e * f * q * r` | -100 |
| `c * e * q * r` | 100 |
| `b * c * v * w` | 100 |
| `b * p * w` | -362658498/5 |
| `p * u * w` | 100 |
| `q * u * r` | -224219578693/5000000000 |
| `c * c * q` | 3400 |
| `c * f` | 3758696101531339/312500000 |
| `e * f * f` | -500 |
| `e * e * f` | -27398816986173/10000000000 |
| `c * e * f` | -1092431719/1250000 |
| `c * e * e` | -1300 |
| `f * h * q` | -100 |
| `c * e * p * v` | 200 |
| `a * h` | 1376200 |
| `c * e * e * f` | 3600 |
| `q * w` | -16674395709/10000000 |
| `e * p * w` | 8674395709/10000000 |
| `c * e * w` | -1784167737021/193750000 |
| `f * v * w` | -10 |
| `c * f * q * v` | -100 |
| `e * f * r * k` | -100 |
| `c * c * e * h` | 4300 |
| `c * e * e * p` | 1500 |
| `u * w * w` | -40 |
| `v * r * w` | 40 |
| `p * k` | -140993/10000 |
| `c * u * w` | -100 |
| `c * c * h * v` | 200 |
| `c * c * h * h` | -500 |
| `f * q * u * w` | -100 |
| `f * q * w` | 9563/10 |
| `f * q * v * r` | 100 |
| `p * v * r` | -275780421307/5000000000 |
| `f * f * q * w` | -1400 |
| `f * q * r` | 150405365037/5000000000 |
| `f * p * w` | 4510477/10000 |
| `p * r` | 49848094356134963/5000000000 |
| `c * u * k` | 100 |
| `f * v * k` | -34897578463/387500000 |
| `e * f * v * j` | 13976471539/312500000 |
| `c * v * k` | 51538049341/387500000 |
| `e * u * j` | -100 |
| `q * j` | 140993/10000 |
| `e * f * v` | -1289410816997/12400000000 |
| `c * e * v` | 10461950659/387500000 |
| `f * v * w * j` | -100 |
| `u * r * k` | -100 |
| `f * w * w` | -100 |
| `e * f * r * w` | 100 |
| `r * w` | 100 |
| `e * r * r` | -100 |
| `f * f * w` | 8709377/5000 |
| `e * f * w` | 2789608217757/10000000000 |
| `f * r` | -709377/5000 |
| `e * f * u * k` | 17273528461/312500000 |
| `c * e * u * k` | -100 |
| `h * p * u * v` | 100 |
| `h * q * u * u` | -100 |
| `h * q * u * j` | 100 |
| `h * h * u * u` | 100 |
| `h * q * r * j` | -100 |
| `h * h * r` | 200 |
| `h * u * w * j` | 100 |
| `f * p * w * w` | 200 |
| `p * r * w` | -200 |
| `c * f * w * w` | -100 |
| `c * r * w` | 100 |
| `f * q * r * w` | -200 |
| `q * r * r` | 200 |
| `p * v * r * k` | -100 |
| `q * u * w * j` | -100 |
| `u * w * k` | 8320235439/193750000 |
| `v * r * k` | 11054764561/193750000 |
| `c * w * w` | 40 |
| `v * w * j` | -100 |
| `c * e * u * w` | -300 |
| `p * r * w * k` | 100 |
| `q * r * r * k` | -100 |
| `p * w * w * j` | -100 |
| `q * r * w * j` | 100 |
| `e * e * f * r` | -1100 |
| `e * f * k` | 13976471539/312500000 |
| `e * e * f * j` | -13976471539/312500000 |
| `h * k` | 100 |
| `h * w * j` | 200 |
| `e * h * j` | -100 |
| `w * k` | 100 |
| `e * r * k` | -100 |
| `v * k` | -100 |
| `e * v * j` | 17273528461/312500000 |
| `e * k` | 17273528461/312500000 |
| `e * e * j` | -17273528461/312500000 |
| `h * u * v` | 100 |
| `e * h * u * u` | -100 |
| `h * r * r * k` | 100 |
| `h * r * w * j` | -100 |
| `h * w` | -2144391782243/10000000000 |
| `p * v * w * j` | 100 |
| `q * u * r * k` | 100 |
| `p * v * v` | 100 |
| `q * u * v` | -100 |
| `e * p * u * v` | -100 |
| `e * q * u * u` | 100 |
| `h * p * r * w` | 100 |
| `h * r * w` | -100 |
| `h * q * r * r` | -100 |
| `e * h * r * r` | 100 |
| `b * v * r` | 17/5 |
| `e * e * u` | -76297204123/400000000 |
| `e * w` | 3100 |
| `e * v` | 76297204123/400000000 |
| `e * e * r` | 400 |
| `e * u * k` | 13976471539/312500000 |
| `f * u * k` | 13976471539/312500000 |
| `e * f * u` | -16851471539/312500000 |
| `e * e * f * u` | 16851471539/312500000 |
| `f * v * j` | -13976471539/312500000 |
| `e * f * j` | 13976471539/312500000 |
| `f * f * h` | -1009828281161/312500000 |
| `b * p` | 281633921/5 |
| `e * h * p` | 400 |
| `f * h * u` | 46/5 |
| `f * p` | -4253/10 |
| `b * f` | -22459/5 |
| `b * b` | 5526959/5 |
| `f * f` | 400 |
| `e * e` | 800 |
| `e * e * f * f` | 1400 |
| `b * e * w` | -3340887453/10000000 |
| `e * f * p` | 657023559/312500 |
| `b * c` | 1022648468661/312500000 |
| `a * b * r` | 3069/10 |
| `f * f * q` | 11253/10 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `a * b` | 17148899191971/250000000000 | 14383668039/125000000000 | 246664073211586198114869/31250000000000000000000 |
| `a` | 382406555767778331/10000000000000000 | 41817/125000 | 15991094942541186467427/1250000000000000000000 |
| `b` | -239982194060506417604851/1250000000000000000000 | 343967/1000000 | 0 |
| `1` | -34111218294578048674840951485529220438117/605468750000000000000000000000000 | 1 | -34111218294578048674840951485529220438117/605468750000000000000000000000000 |
| `a * b * h` | 9501/1000 | 88358872763577/2500000000000000 | 839497650126745077/2500000000000000000 |
| `a * h` | 71151661713/10000000000 | 256881831/2500000000 | 18277569139528036503/25000000000000000000 |
| `b * h` | -139211699217137217/500000000000000 | 2112989281/20000000000 | 0 |
| `h` | 309006597989047235946427/2500000000000000000000 | 6143/20000 | 1898227531446717170418901061/50000000000000000000000000 |
| `a * c` | 142828152181/10000000000 | 256881831/2500000000 | 36689957250601923411/25000000000000000000 |
| `c` | 30208924547990385086923/387500000000000000000 | 6143/20000 | 185573423498304935588967989/7750000000000000000000000 |
| `a * c * h` | -26333/625 | 1578025087833/50000000000000 | 0 |
| `c * h` | 133316071113/5000000000 | 37736449/400000000 | 5030875118436097737/2000000000000000000 |
| `a * a * c` | 48599/5000 | 10742027526927/312500000000000 | 522051795781125273/1562500000000000000 |
| `a * a` | -11853632913467/10000000000 | 1748661489/15625000000 | 0 |
| `c * e` | 47020754203379233/387500000000000 | 1909999989/20000000000 | 89809640011226038792828437/7750000000000000000000000 |
| `e` | -5287428446040319279841392701/302734375000000000000000000 | 310923/1000000 | 0 |
| `b * e` | -371722325091017/2500000000000 | 106947251541/1000000000000 | 0 |
| `a * b * c` | -1966823/10000 | 88358872763577/2500000000000000 | 0 |
| `b * c` | -1582835279695017/6250000000000 | 2112989281/20000000000 | 0 |
| `a * b * b` | -20113469053/2500 | 4947507144370713/125000000000000000 | 0 |
| `b * b` | 221935063513479327/2500000000000000 | 118313297089/1000000000000 | 26257869103936363771410779103/2500000000000000000000000000 |
| `a * c * c` | -12827/2000 | 1578025087833/50000000000000 | 0 |
| `c * c` | -621593319177/10000000000 | 37736449/400000000 | 0 |
| `a * b * c * h` | 100 | 542788555386653511/50000000000000000000 | 542788555386653511/500000000000000000 |
| `b * c * h` | -118163697411/312500000 | 12980093153183/400000000000000 | 0 |
| `a * b * c * q` | 100 | 42904506206682847467/2500000000000000000000 | 42904506206682847467/25000000000000000000 |
| `a * b * q` | -94407977039/5000 | 6984292073365269/125000000000000000 | 0 |
| `a * c * q` | -15559/2500 | 124734367560501/2500000000000000 | 0 |
| `a * q` | 38416987651/2500000000 | 20305122507/125000000000 | 780061640603461161057/312500000000000000000 |
| `b * c * q` | 228698639/1250000 | 1026006318164451/20000000000000000 | 234646248569610921882189/25000000000000000000000 |
| `b * q` | 83636790461387009/625000000000000 | 167020400157/1000000000000 | 13969050210708018900421360413/625000000000000000000000000 |
| `c * q` | 403419380963/10000000000 | 2982862653/20000000000 | 1203344604970911874839/200000000000000000000 |
| `q` | -213128722059481563830613/2500000000000000000000 | 485571/1000000 | 0 |
| `a * b * b * q` | -100 | 2402365991599231482123/125000000000000000000000 | 0 |
| `b * b * q` | -272083128861/2500000000 | 57449505980802819/1000000000000000000 | 0 |
| `a * c * c * q` | -100 | 766243219924157643/50000000000000000000 | 0 |
| `c * c * q` | -4527/2500 | 18323725277379/400000000000000 | 0 |
| `a * b * c * w` | -100 | 19741050993965609763/2500000000000000000000 | 0 |
| `a * b * w` | -5930117/125000 | 3213584729605341/125000000000000000 | 0 |
| `a * c * w` | 111421/2500 | 57392281800189/2500000000000000 | 6394705430458858569/6250000000000000000 |
| `a * w` | -109417948659/1250000000 | 9342712323/125000000000 | 0 |
| `b * c * w` | -73543429/625000 | 472081952171739/20000000000000000 | 0 |
| `b * w` | 774881649612103/62500000000000 | 76848763173/1000000000000 | 59548696378144070761482819/62500000000000000000000000 |
| `c * w` | -15945479995167563/96875000000000 | 1372462917/20000000000 | 0 |
| `w` | 131314491797211607746184948203/9687500000000000000000 | 223419/1000000 | 29338152442841220191044894942566057/9687500000000000000000000000 |
| `a * b * b * w` | 100 | 1105367098688160327747/125000000000000000000000 | 1105367098688160327747/1250000000000000000000 |
| `b * b * w` | -34939/625 | 26433438522327291/1000000000000000000 | 0 |
| `a * c * c * w` | -3200 | 352560787098561027/50000000000000000000 | 0 |
| `c * c * w` | -27847/200 | 8431039699131/400000000000000 | 0 |
| `f * h` | -341189197007007079/10000000000000000 | 2112989281/20000000000 | 0 |
| `f` | 58841035743862811575469320013/2421875000000000000000000000 | 343967/1000000 | 20239374541709259709179455596911571/2421875000000000000000000000000000 |
| `a * b * h * r` | 300 | 30392536387869289959/2500000000000000000000 | 91177609163607869877/25000000000000000000 |
| `a * b * r` | 154163/10000 | 4947507144370713/125000000000000000 | 762722543897622228219/1250000000000000000000 |
| `a * h * r` | 155961/10000 | 88358872763577/2500000000000000 | 13780538155080232497/25000000000000000000 |
| `a * r` | 323040692531/2500000000 | 14383668039/125000000000 | 4646510084454570716709/312500000000000000000 |
| `b * h * r` | -2207741/10000 | 726798584017727/20000000000000000 | 0 |
| `b * r` | -94342348288249/5000000000000 | 118313297089/1000000000000 | 0 |
| `h * r` | -887311412953953207/2500000000000000 | 2112989281/20000000000 | 0 |
| `r` | 9957425907176462934803920831049/155000000000000000000000 | 343967/1000000 | 3425025917013766426295700236493431383/155000000000000000000000000000 |
| `a * b * b * h` | -100 | 30392536387869289959/2500000000000000000000 | 0 |
| `b * b * h` | 183493958861/2500000000 | 726798584017727/20000000000000000 | 133363149475981850232728947/50000000000000000000000000 |
| `a * c * h * r` | -2400 | 542788555386653511/50000000000000000000 | 0 |
| `a * c * r` | -353471/10000 | 88358872763577/2500000000000000 | 0 |
| `c * h * r` | -319709/2500 | 12980093153183/400000000000000 | 0 |
| `c * r` | -7286250673/10000000000 | 2112989281/20000000000 | 0 |
| `a * b * p * w` | -7200 | 640560630567503016189/125000000000000000000000 | 0 |
| `a * b * p` | 696659/5000 | 2867082166545831/125000000000000000 | 1997378595063652078629/625000000000000000000 |
| `a * p * w` | 8871/5000 | 1862273504631267/125000000000000000 | 16520228259583969557/625000000000000000000 |
| `a * p` | -525477573547916827/2500000000 | 8335340793/125000000000 | 0 |
| `b * p * w` | -181332069777/2500 | 15318187114510917/1000000000000000000 | 0 |
| `b * p` | 1494455868106243/50000000000000 | 68562598143/1000000000000 | 102463777127416549238506749/50000000000000000000000000 |
| `p * w` | 903888017363469/10000000000000 | 44533885851/1000000000000 | 40253645787351434423377119/10000000000000000000000000 |
| `p` | -53836135163645169360403/1000000000000000000000 | 199329/1000000 | 0 |
| `a * c * p * w` | -100 | 11439946138949873181/2500000000000000000000 | 0 |
| `a * c * p` | -2329317/10000 | 51203998491399/2500000000000000 | 0 |
| `c * p * w` | 1021647/5000 | 273571660782693/20000000000000000 | 279493666523655955371/100000000000000000000 |
| `c * p` | 2327748767957/10000000000 | 1224478047/20000000000 | 2850277265294643539979/200000000000000000000 |
| `q * r` | 126519618792431419/2500000000000000 | 167020400157/1000000000000 | 21131357358422992724359332783/2500000000000000000000000000 |
| `a * b * c * v` | 100 | 42767373236153775963/2500000000000000000000 | 42767373236153775963/25000000000000000000 |
| `a * b * v` | 13857/200 | 6961968620568741/125000000000000000 | 96471999175221044037/25000000000000000000 |
| `a * c * v` | -209567/1250 | 124335686958789/2500000000000000 | 0 |
| `a * v` | -2903969919/25000000 | 20240222523/125000000000 | 0 |
| `b * c * v` | 591891/10000 | 1022726958800339/20000000000000000 | 605342882371291451049/200000000000000000000 |
| `b * v` | 1251256451033/10000000000 | 166486563373/1000000000000 | 208317386430780625814309/10000000000000000000000 |
| `c * v` | 6541628452944289/387500000000000 | 2973328717/20000000000 | 19450411735083537684847213/7750000000000000000000000 |
| `v` | -303567139017293554772471949071/2421875000000000000000000000 | 484019/1000000 | 0 |
| `e * u` | 446129197989134362755487/2421875000000000000000 | 29554163919/200000000000 | 13184975446422882137791271314673553/484375000000000000000000000000000 |
| `u` | -937696766999097204940477480479/4843750000000000000000000000 | 95053/200000 | 0 |
| `f * q` | 113024386951507229/5000000000000000 | 167020400157/1000000000000 | 18877378336140346741858234953/5000000000000000000000000000 |
| `a * b * e * f` | -100 | 1538293763849175198099/125000000000000000000000 | 0 |
| `a * b * e` | 339513/10000 | 4472213217689997/125000000000000000 | 1518374526177583951461/1250000000000000000000 |
| `a * b * f` | -2414677/10000 | 4947507144370713/125000000000000000 | 0 |
| `a * e * f` | 1713353/10000 | 4472213217689997/125000000000000000 | 7662479933168809429941/1250000000000000000000 |
| `a * e` | -129526237581/5000000000 | 13001867091/125000000000 | 0 |
| `a * f` | -1531797230762970621/250000000000 | 14383668039/125000000000 | 0 |
| `b * e * f` | -6473/20 | 36786325270803147/1000000000000000000 | 0 |
| `b * f` | 138707000535711473/2500000000000000 | 118313297089/1000000000000 | 16410882562705713659034802097/2500000000000000000000000000 |
| `e * f` | 2040111206101890925896137/9687500000000000000000 | 106947251541/1000000000000 | 218184286330591822927559554579197117/9687500000000000000000000000000000 |
| `a * b * e * r` | -3100 | 1538293763849175198099/125000000000000000000000 | 0 |
| `a * e * r` | -70815701/5000 | 4472213217689997/125000000000000000 | 0 |
| `b * e * r` | -218962819/10000000 | 36786325270803147/1000000000000000000 | 0 |
| `e * r` | -24307020925403879/310000000000000 | 106947251541/1000000000000 | 0 |
| `a * c * f * w` | -700 | 19741050993965609763/2500000000000000000000 | 0 |
| `a * c * f` | 389601/2500 | 88358872763577/2500000000000000 | 34424705187562362777/6250000000000000000 |
| `a * f * w` | -47144683/125000 | 3213584729605341/125000000000000000 | 0 |
| `c * f * w` | -12516462/78125 | 472081952171739/20000000000000000 | 0 |
| `c * f` | 208762259299071/3125000000000 | 2112989281/20000000000 | 441112416176279596257951/62500000000000000000000 |
| `f * w` | 1321276192928146839/10000000000000000 | 76848763173/1000000000000 | 101538441236458213836079560147/10000000000000000000000000000 |
| `a * c * e * r` | -100 | 27472805796269651571/2500000000000000000000 | 0 |
| `a * c * e` | -332569/10000 | 79870469540013/2500000000000000 | 0 |
| `c * e * r` | 175837/5000 | 656976966216363/20000000000000000 | 115520858808586620831/100000000000000000000 |
| `e * p` | -20743997973139/2500000000000 | 61975970667/1000000000000 | 0 |
| `b * e * h * u` | -200 | 62447631569763952239/4000000000000000000000 | 0 |
| `b * e * h` | 26451/250 | 656976966216363/20000000000000000 | 17377697733389017713/5000000000000000000 |
| `b * e * u` | -2172157/10000 | 10165657100726673/200000000000000000 | 0 |
| `b * h * u` | 1601767/10000 | 200845970126893/4000000000000000 | 321708447032243019931/40000000000000000000 |
| `b * u` | 233848642061/2500000000 | 32695095251/200000000000 | 7645703626501399952311/500000000000000000000 |
| `e * h * u` | 187192789/1250000 | 181551228954417/4000000000000000 | 33985080894354872099013/5000000000000000000000 |
| `e * h` | 1652340236159/125000000000 | 1909999989/20000000000 | 3155969832887947402251/2500000000000000000000 |
| `h * u` | -892446272694283131/5000000000000000 | 583910579/4000000000 | 0 |
| `a * b * h * u` | 100 | 8398775932796284581/500000000000000000000 | 8398775932796284581/5000000000000000000 |
| `a * b * u` | 13857/200 | 1367210798111067/25000000000000000 | 18945440029425055419/5000000000000000000 |
| `a * h * u` | -209567/1250 | 24417388682043/500000000000000 | 0 |
| `a * u` | -3776469919/25000000 | 3974831301/25000000000 | 0 |
| `b * f * w` | 1238629/10000 | 26433438522327291/1000000000000000000 | 32741223523471730124039/10000000000000000000000 |
| `b * f * h` | 383491790427/2500000000 | 726798584017727/20000000000000000 | 278721290264766514336899429/50000000000000000000000000 |
| `a * f * r` | -230077/10000 | 4947507144370713/125000000000000000 | 0 |
| `f * r` | -143344829361525359/5000000000000000 | 118313297089/1000000000000 | 0 |
| `h * p` | 66797208202698527/312500000000000 | 1224478047/20000000000 | 81791715045092672470736769/6250000000000000000000000 |
| `b * h * p` | 223831371139/2500000000 | 421180040392449/20000000000000000 | 94273305937421263332129411/50000000000000000000000000 |
| `a * b * h * p` | -100 | 17612485749091039833/2500000000000000000000 | 0 |
| `a * h * p` | -127733539827/10000 | 51203998491399/2500000000000000 | 0 |
| `b * c * e * h` | 400 | 4035809503467117909/400000000000000000000 | 4035809503467117909/1000000000000000000 |
| `b * c * e` | -6073957/156250 | 656976966216363/20000000000000000 | 0 |
| `c * e * h` | -55988057563/1250 | 11733129932427/400000000000000 | 0 |
| `b * c * h * q` | 200 | 6302756812484222493/400000000000000000000 | 6302756812484222493/2000000000000000000 |
| `b * h * q` | 319689/1000 | 1026006318164451/20000000000000000 | 328002933847675175739/20000000000000000000 |
| `c * h * q` | 52379/625 | 18323725277379/400000000000000 | 959778406303834641/250000000000000000 |
| `h * q` | 380369941793/5000000000 | 2982862653/20000000000 | 1134591293698123556829/100000000000000000000 |
| `b * f * h * h` | 200 | 4464723701620896961/400000000000000000000 | 4464723701620896961/2000000000000000000 |
| `b * h * h` | -1264023/5000 | 12980093153183/400000000000000 | 0 |
| `f * h * h` | -4469/125 | 12980093153183/400000000000000 | 0 |
| `h * h` | -3026711971/1250000000 | 37736449/400000000 | 0 |
| `b * h * h * r` | -200 | 4464723701620896961/400000000000000000000 | 0 |
| `h * h * r` | -91627/5000 | 12980093153183/400000000000000 | 0 |
| `b * h * w` | -19816641217/125000000 | 472081952171739/20000000000000000 | 0 |
| `h * w` | 9972859456230909/1250000000000000 | 1372462917/20000000000 | 13687379780129707191701553/25000000000000000000000000 |
| `b * c * h * w` | 5900 | 2899999432190992677/400000000000000000000 | 171099966499268567943/4000000000000000000 |
| `c * h * w` | -1470257/10000 | 8431039699131/400000000000000 | 0 |
| `b * h * p * w` | -200 | 94099623444440563131/20000000000000000000000 | 0 |
| `h * p * w` | 20974278717/125000000 | 273571660782693/20000000000000000 | 5737968262328781351844881/2500000000000000000000000 |
| `b * b * q * w` | -3700 | 12835311176724985018161/1000000000000000000000000 | 0 |
| `b * q * w` | -25119699841/250000000 | 37315530782676783/1000000000000000000 | 0 |
| `q * w` | 60847030808421/976562500000 | 108485787249/1000000000000 | 6601038039015709083623829/976562500000000000000000 |
| `a * h * p * r` | -1100 | 17612485749091039833/2500000000000000000000 | 0 |
| `a * p * r` | -725327196353/10000 | 2867082166545831/125000000000000000 | 0 |
| `h * p * r` | 174703973293/625000000 | 421180040392449/20000000000000000 | 73581826528267071334864557/12500000000000000000000000 |
| `p * r` | 52203577565420809/1000000000000000 | 68562598143/1000000000000 | 3579212910244877220156957687/1000000000000000000000000000 |
| `c * h * p` | 190923/400 | 7521968642721/400000000000000 | 1436116819174221483/160000000000000000 |
| `c * w * j` | 90687/5000 | 463564447308837/20000000000000000 | 42039269033096501019/100000000000000000000 |
| `c * j` | -177998484003/5000000000 | 2074865823/20000000000 | 0 |
| `w * j` | 32972942139/1250000000 | 75462224859/1000000000000 | 2488211573956014433401/1250000000000000000000 |
| `j` | 18810510279444871542261589/4882812500000000000000000 | 337761/1000000 | 6353456762495579256985816562229/4882812500000000000000000000000 |
| `a * c * r * k` | 100 | 37007611756187245641/2500000000000000000000 | 37007611756187245641/25000000000000000000 |
| `a * c * k` | 332569/10000 | 107590587923223/2500000000000000 | 35781294235038349887/25000000000000000000 |
| `a * r * k` | 13857/200 | 6024354835778487/125000000000000000 | 83479484959382494359/25000000000000000000 |
| `a * k` | 4608408633/200000000 | 17514339561/125000000000 | 80713233634205830113/25000000000000000000 |
| `c * r * k` | -728151/10000 | 884989639529073/20000000000000000 | 0 |
| `c * k` | -53965613144704003/387500000000000 | 2572891119/20000000000 | 0 |
| `r * k` | 3289937557691983/38750000000000 | 144064730511/1000000000000 | 473963967646913046040193313/38750000000000000000000000 |
| `k` | -4856345328816487191373751489/121093750000000000000000000 | 418833/1000000 | 0 |
| `a * c * w * j` | -100 | 19384874493113636829/2500000000000000000000 | 0 |
| `a * c * j` | 223419/10000 | 86764664120391/2500000000000000 | 19384874493113636829/25000000000000000000 |
| `a * w * j` | -13857/200 | 3155603856928803/125000000000000000 | 0 |
| `a * j` | 7600317083/200000000 | 14124151737/125000000000 | 107348031729605223171/25000000000000000000 |
| `a * c * f * k` | -100 | 37007611756187245641/2500000000000000000000 | 0 |
| `a * f * k` | -13857/200 | 6024354835778487/125000000000000000 | 0 |
| `c * f * k` | -30059/5000 | 884989639529073/20000000000000000 | 0 |
| `f * k` | -128164515257446531668433/968750000000000000000 | 144064730511/1000000000000 | 0 |
| `a * e * f * r` | -100 | 1538293763849175198099/125000000000000000000000 | 0 |
| `e * f * r` | 46695929/625000 | 36786325270803147/1000000000000000000 | 1717771633016329525288563/625000000000000000000000 |
| `e * j` | 1073730689226728257457/39062500000000000000 | 105017663403/1000000000000 | 112760688106683746492567950746171/39062500000000000000000000000000 |
| `c * h * u` | 23354/625 | 3586962686797/80000000000000 | 41884963293728569/25000000000000000 |
| `c * u` | 4605139637/125000000 | 583910579/4000000000 | 2688989751816519823/500000000000000000 |
| `c * c * h` | -907767/10000 | 231815006207/8000000000000 | 0 |
| `a * f * p` | 32267/10000 | 2867082166545831/125000000000000000 | 92512140267934328877/1250000000000000000000 |
| `f * p` | -2201405941481243/50000000000000 | 68562598143/1000000000000 | 0 |
| `c * f * h * k` | 100 | 5436491355627095439/400000000000000000000 | 5436491355627095439/4000000000000000000 |
| `c * f * h` | 46538822411/312500000 | 12980093153183/400000000000000 | 604078250134220656384213/125000000000000000000000 |
| `c * h * k` | -1143759/10000 | 15805270144017/400000000000000 | 0 |
| `f * h * k` | 184693/5000 | 884989639529073/20000000000000000 | 163451391493543079589/100000000000000000000 |
| `h * k` | 76862323913/10000000000 | 2572891119/20000000000 | 197758390581459028647/200000000000000000000 |
| `c * e * f * h` | -100 | 4035809503467117909/400000000000000000000 | 0 |
| `c * e * f` | 342338781/1250000 | 656976966216363/20000000000000000 | 224908693759587891673503/25000000000000000000000 |
| `e * f * h` | -12089163/250000 | 656976966216363/20000000000000000 | 0 |
| `c * h * j` | -1442739/10000 | 12745900750689/400000000000000 | 0 |
| `h * j` | -266907493797/5000000000 | 2074865823/20000000000 | 0 |
| `c * e * h * j` | 100 | 3962993699106475947/400000000000000000000 | 3962993699106475947/4000000000000000000 |
| `c * e * j` | -83731/10000 | 645123506284629/20000000000000000 | 0 |
| `e * h * j` | -315307/5000 | 645123506284629/20000000000000000 | 0 |
| `p * v` | -1581074560696795131/5000000000000000 | 96479023251/1000000000000 | 0 |
| `q * u` | 36467813220795131/5000000000000000 | 46154980263/200000000000 | 1683171199440569732471499453/1000000000000000000000000000 |
| `c * h * p * v` | -200 | 3640775740481175699/400000000000000000000 | 0 |
| `c * h * v` | 107141/10000 | 18265158308531/400000000000000 | 1956947326334319871/4000000000000000000 |
| `c * p * v` | -840127/10000 | 592670639830893/20000000000000000 | 0 |
| `h * p * v` | -4424809/10000 | 592670639830893/20000000000000000 | 0 |
| `h * v` | 45739710561/625000000 | 2973328717/20000000000 | 135999194918289480237/12500000000000000000 |
| `c * e * h * p` | -300 | 2338753056300741483/400000000000000000000 | 0 |
| `c * e * p` | -3677291/10000 | 380718387807381/20000000000000000 | 0 |
| `e * h * p` | -1115749/10000 | 380718387807381/20000000000000000 | 0 |
| `c * e * h * u` | 100 | 1115269199466983631/80000000000000000000 | 1115269199466983631/800000000000000000 |
| `c * e * u` | -643221/5000 | 181551228954417/4000000000000000 | 0 |
| `c * h * r * k` | -100 | 5436491355627095439/400000000000000000000 | 0 |
| `h * r * k` | -284797/5000 | 884989639529073/20000000000000000 | 0 |
| `c * e * h * r` | -2200 | 4035809503467117909/400000000000000000000 | 0 |
| `e * h * r` | 1530261/10000 | 656976966216363/20000000000000000 | 1005346229299217860743/200000000000000000000 |
| `c * h * w * j` | -100 | 2847676399818185691/400000000000000000000 | 0 |
| `h * w * j` | 236937/2500 | 463564447308837/20000000000000000 | 109835569452013912269/50000000000000000000 |
| `v * r` | 15010191878309931743/155000000000000000 | 166486563373/1000000000000 | 2498995261389136355266273849139/155000000000000000000000000000 |
| `u * k` | 84192592449594954852231/1210937500000000000000 | 39811333149/200000000000 | 3351819346688806737731782406905419/242187500000000000000000000000000 |
| `u * w` | 807456898075489/48437500000000 | 21236646207/200000000000 | 17147676471830819071520223/9687500000000000000000000 |
| `v * j` | 583178574686767383799/39062500000000000000 | 163482741459/1000000000000 | 95339632149944914114085742222741/39062500000000000000000000000000 |
| `c * h * u * k` | 100 | 1502338342999247901/80000000000000000000 | 1502338342999247901/800000000000000000 |
| `c * u * k` | 1531773/10000 | 244561019534307/4000000000000000 | 374611966575124036311/40000000000000000000 |
| `h * u * k` | 36817/10000 | 244561019534307/4000000000000000 | 9004003056194580819/40000000000000000000 |
| `c * h * u * w` | 100 | 801395616521498943/80000000000000000000 | 801395616521498943/800000000000000000 |
| `c * u * w` | 244081/2500 | 130456717649601/4000000000000000 | 31842006100632261681/10000000000000000000 |
| `h * u * w` | -77627/1000 | 130456717649601/4000000000000000 | 0 |
| `c * h * v * j` | 100 | 6169258135447739091/400000000000000000000 | 6169258135447739091/4000000000000000000 |
| `c * v * j` | 469431/10000 | 1004274480782637/20000000000000000 | 471437573788274069547/200000000000000000000 |
| `h * v * j` | 585029/10000 | 1004274480782637/20000000000000000 | 587529695217785341473/200000000000000000000 |
| `c * q * r` | -1991123/10000 | 1026006318164451/20000000000000000 | 0 |
| `c * c * h * q` | -2200 | 112562644378939197/8000000000000000000 | 0 |
| `c * q * u * w` | 100 | 63345998845834407171/4000000000000000000000 | 63345998845834407171/40000000000000000000 |
| `c * q * u` | 38469/625 | 283530043755609/4000000000000000 | 10907117253234522621/2500000000000000000 |
| `c * q * w` | 598689/5000 | 666428191070607/20000000000000000 | 398983227283870634223/100000000000000000000 |
| `q * u * w` | 141467/10000 | 10311899535379197/200000000000000000 | 1458793491571488861999/2000000000000000000000 |
| `c * v * w` | 1134457/10000 | 664298128623423/20000000000000000 | 753617662103742586311/200000000000000000000 |
| `v * w` | 345790448181/10000000000 | 108139040961/1000000000000 | 37393447439767706941941/10000000000000000000000 |
| `c * e * v * r` | 300 | 317989334211077802897/20000000000000000000000 | 953968002633233408691/200000000000000000000 |
| `c * e * v` | -91074170591/387500000 | 924476284675791/20000000000000000 | 0 |
| `c * v * r` | -182339/2500 | 1022726958800339/20000000000000000 | 0 |
| `e * v * r` | 33092141689/193750000 | 51764501743623279/1000000000000000000 | 1712998226160469100906778231/193750000000000000000000000 |
| `e * v` | 182110161678985457438601/1210937500000000000000 | 150492639537/1000000000000 | 27406238917580349154172435602567737/1210937500000000000000000000000000 |
| `c * c * e * v` | -300 | 5679057816763384113/400000000000000000000 | 0 |
| `c * c * e` | 1081763/10000 | 11733129932427/400000000000000 | 12692465835092028801/4000000000000000000 |
| `c * c * v` | 53539/400 | 18265158308531/400000000000000 | 977898310680441209/160000000000000000 |
| `c * v * r * k` | -100 | 428351800335222384387/20000000000000000000000 | 0 |
| `c * v * k` | 79812645591/387500000 | 1245328186527261/20000000000000000 | 99392937195783023252956251/7750000000000000000000000 |
| `v * r * k` | 226109867/24218750 | 69730066797203709/1000000000000000000 | 15766656129416846613896703/24218750000000000000000000 |
| `v * k` | 3322494606436397/193750000000000 | 202723129827/1000000000000 | 673546505450112978849113319/193750000000000000000000000 |
| `c * c * v * k` | 100 | 7650051049836964323/400000000000000000000 | 7650051049836964323/4000000000000000000 |
| `c * c * k` | -75477/1250 | 15805270144017/400000000000000 | 0 |
| `c * v * w * j` | 100 | 224374000221975975903/20000000000000000000000 | 224374000221975975903/200000000000000000000 |
| `v * w * j` | -522793/10000 | 36525150614028321/1000000000000000000 | 0 |
| `c * h * p * w` | -4400 | 1680550712188083099/400000000000000000000 | 0 |
| `a * a * c * p` | 3800 | 2141197604914831983/312500000000000000000 | 40682754493381807677/1562500000000000000 |
| `a * a * p` | -5136327/10000 | 348558945940881/15625000000000000 | 0 |
| `a * a * p * r` | -1900 | 119892774958447014927/15625000000000000000000 | 0 |
| `a * a * r` | -15048599/10000 | 601481846386863/15625000000000000 | 0 |
| `c * c * h * w` | -200 | 51791876871761733/8000000000000000000 | 0 |
| `c * c * w * k` | -100 | 3531197650306134123/400000000000000000000 | 0 |
| `c * w * k` | -22060287939/193750000 | 574832760915861/20000000000000000 | 0 |
| `w * k` | 2418562967510163/38750000000000 | 93575250027/1000000000000 | 226317634390806580388524401/38750000000000000000000000 |
| `c * f * w * k` | -100 | 197723500273945960587/20000000000000000000000 | 0 |
| `f * w * k` | -684693/5000 | 32186798026037109/1000000000000000000 | 0 |
| `c * e * w * j` | -100 | 144132848650605526551/20000000000000000000000 | 0 |
| `c * e * w` | 55348044229/193750000 | 426730287542391/20000000000000000 | 23618686828750144780411539/3875000000000000000000000 |
| `e * w * j` | -22961/5000 | 23462941339834857/1000000000000000000 | 0 |
| `e * w` | 1261554819406435043/19375000000000000 | 69466105737/1000000000000 | 87635300477909356275260141691/19375000000000000000000000000 |
| `c * p * v * w` | -100 | 132413881680378283167/20000000000000000000000 | 0 |
| `p * v * w` | -141467/10000 | 21555246895715169/1000000000000000000 | 0 |
| `c * e * p * w` | -100 | 85059721485537255639/20000000000000000000000 | 0 |
| `e * p * w` | -1075446291/10000000 | 13846609390450473/1000000000000000000 | 0 |
| `a * e * p * r` | -2400 | 891441788468929412013/125000000000000000000000 | 0 |
| `a * e * p` | -7633718099/1250 | 2591649165381939/125000000000000000 | 0 |
| `e * p * r` | -21413609/2000000 | 21317688702415989/1000000000000000000 | 0 |
| `c * v * r * w` | -100 | 228496634408212939041/20000000000000000000000 | 0 |
| `c * r * w` | 165447/2000 | 472081952171739/20000000000000000 | 78104542740957702333/40000000000000000000 |
| `v * r * w` | -5857/200 | 37196261502232287/1000000000000000000 | 0 |
| `r * w` | 635969094269/10000000000 | 76848763173/1000000000000 | 48873438310825692555537/10000000000000000000000 |
| `c * u * w * w` | 100 | 29146509400556205819/4000000000000000000000 | 29146509400556205819/40000000000000000000 |
| `c * w * w` | 132673/5000 | 306634292453223/20000000000000000 | 40682091482646455079/100000000000000000000 |
| `u * w * w` | 5857/200 | 4744670258921733/200000000000000000 | 27789533706504590181/40000000000000000000 |
| `w * w` | -40968253291/2000000000 | 49916049561/1000000000000 | 0 |
| `c * c * e * w` | 6800 | 2621404156372907913/400000000000000000000 | 44563870658339434521/1000000000000000000 |
| `b * c * e * w` | 600 | 146781136815093605097/20000000000000000000000 | 440343410445280815291/100000000000000000000 |
| `b * e * w` | 492748547/10000000 | 23894047992038679/1000000000000000000 | 11773757430025326645049413/10000000000000000000000000 |
| `c * c * q * w` | -2400 | 4093868377746738801/400000000000000000000 | 0 |
| `c * e * f * k` | 100 | 275163633691297964379/20000000000000000000000 | 275163633691297964379/200000000000000000000 |
| `c * e * k` | 67327/5000 | 799971025392837/20000000000000000 | 53859649226623536699/100000000000000000000 |
| `e * f * k` | 1838841769772141/31250000000000 | 44793038204671653/1000000000000000000 | 82367309645749547779067531819073/31250000000000000000000000000000 |
| `e * k` | 15891930360366852053/3906250000000000000 | 130224812859/1000000000000 | 2069523657147033739188864949527/3906250000000000000000000000000 |
| `b * e * f * h` | 100 | 225978396138543732021/20000000000000000000000 | 225978396138543732021/200000000000000000000 |
| `h * h * p` | 296967/1000 | 7521968642721/400000000000000 | 2233776461922927207/400000000000000000 |
| `h * h * u` | -28981/1000 | 3586962686797/80000000000000 | 0 |
| `c * h * h` | 1267/40 | 231815006207/8000000000000 | 293709612864269/320000000000000 |
| `e * h * p * r` | -500 | 130954561698941420427/20000000000000000000000 | 0 |
| `e * u * w` | -33092141689/193750000 | 6602961748619061/200000000000000000 | 0 |
| `f * f * h * w` | -2000 | 162380612842656548613/20000000000000000000000 | 0 |
| `f * f * h` | -22885156161/312500000 | 726798584017727/20000000000000000 | 0 |
| `f * f * w` | 71519/1250 | 26433438522327291/1000000000000000000 | 1890493089678325525029/1250000000000000000000 |
| `f * f` | 210919580025773/6250000000000 | 118313297089/1000000000000 | 24954590933476391225874797/6250000000000000000000000 |
| `f * h * w` | 6096669782243/10000000000 | 472081952171739/20000000000000000 | 2878127772547726350068630577/200000000000000000000000000 |
| `f * f * h * h` | 3400 | 4464723701620896961/400000000000000000000 | 75900302927555248337/2000000000000000000 |
| `f * h * r` | 643004134963/5000000000 | 726798584017727/20000000000000000 | 467334494808651826692489101/100000000000000000000000000 |
| `c * f * h * w` | 100 | 2899999432190992677/400000000000000000000 | 2899999432190992677/4000000000000000000 |
| `a * c * e * f` | 100 | 27472805796269651571/2500000000000000000000 | 27472805796269651571/25000000000000000000 |
| `f * h * v * r` | -100 | 351784323837676204813/20000000000000000000000 | 0 |
| `f * h * v` | 32081/2500 | 1022726958800339/20000000000000000 | 32810103565273675459/50000000000000000000 |
| `f * v * r` | -43301/10000 | 57265883743720691/1000000000000000000 | 0 |
| `f * v` | 1681105558458897586634869/9687500000000000000000 | 166486563373/1000000000000 | 279881487095069809273002875580053137/9687500000000000000000000000000000 |
| `h * v * r` | 843967/5000 | 1022726958800339/20000000000000000 | 863147803237845704813/100000000000000000000 |
| `f * h * w * j` | -100 | 159450872247478736379/20000000000000000000000 | 0 |
| `f * h * j` | -776581/10000 | 713685372539841/20000000000000000 | 0 |
| `f * w * j` | -543461/10000 | 25956515098075653/1000000000000000000 | 0 |
| `f * j` | -1665730050968141408117/39062500000000000000 | 116178637887/1000000000000 | 0 |
| `f * v * r * k` | 100 | 23984841886033768173603/1000000000000000000000000 | 23984841886033768173603/10000000000000000000000 |
| `f * v * k` | -9476299713/387500000 | 69730066797203709/1000000000000000000 | 0 |
| `f * r * k` | 1461/1250 | 49553513159677137/1000000000000000000 | 72397682726288297157/1250000000000000000000 |
| `u * w * j` | 1479307/10000 | 7172910859522527/200000000000000000 | 10610937244867690848789/2000000000000000000000 |
| `u * j` | 1135677976917/10000000000 | 32105196333/200000000000 | 36461164419984527045361/2000000000000000000000 |
| `c * h * h * p` | 200 | 46207453372235103/8000000000000000000 | 46207453372235103/40000000000000000 |
| `b * h * h * p` | 200 | 2587308988130814207/400000000000000000000 | 2587308988130814207/2000000000000000000 |
| `b * e * h * p` | -100 | 130954561698941420427/20000000000000000000000 | 0 |
| `b * e * p` | -79021743/625000 | 21317688702415989/1000000000000000000 | 0 |
| `h * h * p * r` | -1600 | 2587308988130814207/400000000000000000000 | 0 |
| `f * h * p` | -283151621139/2500000000 | 421180040392449/20000000000000000 | 0 |
| `h * p * w * j` | 100 | 92401837717623170373/20000000000000000000000 | 92401837717623170373/200000000000000000000 |
| `h * p * j` | 75477/1250 | 413580929632767/20000000000000000 | 31215847825892354859/25000000000000000000 |
| `p * w * j` | -687547/10000 | 15041809818919611/1000000000000000000 | 0 |
| `p * j` | -6319764687/1250000000 | 67325562369/1000000000000 | 0 |
| `h * p * v * j` | -100 | 200181027979922250573/20000000000000000000000 | 0 |
| `p * v * j` | 83731/10000 | 32586851372281011/1000000000000000000 | 2728529652252461332041/10000000000000000000000 |
| `h * u * r * k` | -100 | 84120920206156975869/4000000000000000000000 | 0 |
| `h * u * r` | 1104357078693/5000000000 | 200845970126893/4000000000000000 | 221805668836597099996590849/20000000000000000000000000 |
| `u * r * k` | -1479307/10000 | 13693784829262083/200000000000000000 | 0 |
| `u * r` | 305802733858605751/5000000000000000 | 32695095251/200000000000 | 9998249511523317795001388501/1000000000000000000000000000 |
| `f * h * u * w` | 100 | 44872805799780307167/4000000000000000000000 | 44872805799780307167/40000000000000000000 |
| `f * h * u` | 173171229/2500000 | 200845970126893/4000000000000000 | 34780743486571346761497/10000000000000000000000 |
| `f * u * w` | 479307/10000 | 7304705485883169/200000000000000000 | 3501196472322204083883/2000000000000000000000 |
| `f * u` | 14845210944248074887713/312500000000000000000 | 32695095251/200000000000 | 485365585843378459027157664550963/62500000000000000000000000000000 |
| `h * h * u * r` | 100 | 1233796794489503699/80000000000000000000 | 1233796794489503699/800000000000000000 |
| `h * r * j` | 2469/2500 | 713685372539841/20000000000000000 | 1762089184800867429/50000000000000000000 |
| `r * j` | 11599023083/10000000000 | 116178637887/1000000000000 | 1347558702602811345621/10000000000000000000000 |
| `h * q * r` | -216521/10000 | 1026006318164451/20000000000000000 | 0 |
| `h * v * r * r` | -100 | 351784323837676204813/20000000000000000000000 | 0 |
| `h * r * r` | 8431/400 | 726798584017727/20000000000000000 | 6127638861853456337/8000000000000000000 |
| `v * r * r` | -13857/200 | 57265883743720691/1000000000000000000 | 0 |
| `r * r` | 79734607373/2500000000 | 118313297089/1000000000000 | 9433664290396518837197/2500000000000000000000 |
| `h * u * r * w` | 100 | 44872805799780307167/4000000000000000000000 | 44872805799780307167/40000000000000000000 |
| `h * r * w` | -78422/625 | 472081952171739/20000000000000000 | 0 |
| `u * r * w` | 13857/200 | 7304705485883169/200000000000000000 | 101221303917883072833/40000000000000000000 |
| `b * q * u` | -94399/1250 | 15875790096123321/200000000000000000 | 0 |
| `b * h * k` | 84567/1250 | 884989639529073/20000000000000000 | 74840918846055116391/25000000000000000000 |
| `b * k` | -12008254477/1250000000 | 144064730511/1000000000000 | 0 |
| `b * h * w * j` | 100 | 159450872247478736379/20000000000000000000000 | 159450872247478736379/200000000000000000000 |
| `b * h * j` | 38469/625 | 713685372539841/20000000000000000 | 27454762596235143429/12500000000000000000 |
| `b * w * j` | -6143/200 | 25956515098075653/1000000000000000000 | 0 |
| `b * j` | -236315067/12500000 | 116178637887/1000000000000 | 0 |
| `b * e * h * j` | -100 | 221901197086204983243/20000000000000000000000 | 0 |
| `b * e * j` | 6143/200 | 36122610627739701/1000000000000000000 | 221901197086204983243/200000000000000000000 |
| `b * f * h * w` | -8400 | 162380612842656548613/20000000000000000000000 | 0 |
| `b * c * e * q` | -100 | 319008962462645598273/20000000000000000000000 | 0 |
| `b * e * q` | -12601/250 | 51930483878014911/1000000000000000000 | 0 |
| `c * e * q` | -856241/10000 | 927440604658719/20000000000000000 | 0 |
| `e * q` | -354363590611/5000000000 | 150975192033/1000000000000 | 0 |
| `c * q * v` | -165433/1250 | 1443762198442407/20000000000000000 | 0 |
| `q * v` | -82787942069/625000000 | 235025589849/1000000000000 | 0 |
| `c * e * q * u` | -100 | 88156011794625217107/4000000000000000000000 | 0 |
| `e * q * u` | 4117/5000 | 14350644928312749/200000000000000000 | 59081605169863587633/1000000000000000000000 |
| `b * q * v` | -1332569/10000 | 80841047063590983/1000000000000000000 | 0 |
| `b * h * q * u` | -100 | 97524978560485560903/4000000000000000000000 | 0 |
| `h * q * u` | -149701/10000 | 283530043755609/4000000000000000 | 0 |
| `b * e * q * u` | 100 | 4936148284056951335283/200000000000000000000000 | 4936148284056951335283/2000000000000000000000 |
| `c * f * q` | -70406097494389/1250000 | 1026006318164451/20000000000000000 | 0 |
| `b * f * q` | -159861121139/2500000000 | 57449505980802819/1000000000000000000 | 0 |
| `b * f * w * k` | 100 | 11071196356621906271403/1000000000000000000000000 | 11071196356621906271403/10000000000000000000000 |
| `b * f * k` | 83731/10000 | 49553513159677137/1000000000000000000 | 4149165210372926358147/10000000000000000000000 |
| `b * w * k` | 40433/1250 | 32186798026037109/1000000000000000000 | 1301408804586758428197/1250000000000000000000 |
| `b * f * h * k` | -100 | 304407231339896652591/20000000000000000000000 | 0 |
| `b * c * h * h` | -300 | 79736712240003169/8000000000000000000 | 0 |
| `b * c * e * v` | -200 | 317989334211077802897/20000000000000000000000 | 0 |
| `b * e * v` | -13857/100 | 51764501743623279/1000000000000000000 | 0 |
| `b * q * r` | 258150591/2000000 | 57449505980802819/1000000000000000000 | 14830623921602282379316029/2000000000000000000000000 |
| `b * b * e` | 603061/2000 | 36786325270803147/1000000000000000000 | 22184398104135816632967/2000000000000000000000 |
| `e * f * w * j` | 200 | 8070477543838976257719/1000000000000000000000000 | 8070477543838976257719/5000000000000000000000 |
| `e * f * w` | 1205955217757/10000000000 | 23894047992038679/1000000000000000000 | 28815151849335213735811623003/10000000000000000000000000000 |
| `e * f * j` | 60424852932260329/312500000000000 | 36122610627739701/1000000000000000000 | 2182703434710475395604762180621629/312500000000000000000000000000000 |
| `e * r * j` | -100 | 36122610627739701/1000000000000000000 | 0 |
| `b * e * f * w` | -100 | 8218764005677568299593/1000000000000000000000000 | 0 |
| `e * f * h * u` | -546/5 | 62447631569763952239/4000000000000000000000 | 0 |
| `e * f * u` | -6883711694164557/78125000000000 | 10165657100726673/200000000000000000 | 0 |
| `c * f * q * w` | 200 | 229229305597983477969/20000000000000000000000 | 229229305597983477969/100000000000000000000 |
| `f * q * w` | 8421/1250 | 37315530782676783/1000000000000000000 | 314234084720921189643/1250000000000000000000 |
| `f * h * q * r` | 200 | 352912315240071717117/20000000000000000000000 | 352912315240071717117/100000000000000000000 |
| `f * h * q` | -23799/625 | 1026006318164451/20000000000000000 | 0 |
| `f * q * r` | 72518365037/5000000000 | 57449505980802819/1000000000000000000 | 4166144245911173542560639303/5000000000000000000000000000 |
| `c * f * h * q` | -100 | 6302756812484222493/400000000000000000000 | 0 |
| `c * f * v * w` | 100 | 228496634408212939041/20000000000000000000000 | 228496634408212939041/200000000000000000000 |
| `c * f * v` | 281519/5000 | 1022726958800339/20000000000000000 | 287917070714512634941/100000000000000000000 |
| `f * v * w` | 41467/10000 | 37196261502232287/1000000000000000000 | 1542417375713066245029/10000000000000000000000 |
| `h * h * p * u` | -300 | 714985685396559213/80000000000000000000 | 0 |
| `h * p * u` | -281319/625 | 116390311801491/4000000000000000 | 0 |
| `p * u` | -185942801361/2000000000 | 18946819437/200000000000 | 0 |
| `e * h * p * u` | 300 | 36188424916254986193/4000000000000000000000 | 108565274748764958579/40000000000000000000 |
| `e * p * u` | 381157/2000 | 5891001939810351/200000000000000000 | 2245396626372293956107/400000000000000000000 |
| `b * q * u * w` | 100 | 3546953147485776254499/200000000000000000000000 | 3546953147485776254499/2000000000000000000000 |
| `b * u * w` | 213543/10000 | 7304705485883169/200000000000000000 | 1559868723571949557767/2000000000000000000000 |
| `b * f * q * w` | -100 | 12835311176724985018161/1000000000000000000000000 | 0 |
| `b * q * v * r` | -100 | 27806652435322199649561/1000000000000000000000000 | 0 |
| `b * v * r` | 513307/10000 | 57265883743720691/1000000000000000000 | 29394978986838036735137/10000000000000000000000 |
| `b * f * q * v` | 100 | 27806652435322199649561/1000000000000000000000000 | 27806652435322199649561/10000000000000000000000 |
| `b * f * v` | -479307/10000 | 57265883743720691/1000000000000000000 | 0 |
| `f * q * v` | 286647/10000 | 80841047063590983/1000000000000000000 | 23172843617637164504001/10000000000000000000000 |
| `f * h * p * w` | -300 | 94099623444440563131/20000000000000000000000 | 0 |
| `f * p * w` | 205619/2000 | 15318187114510917/1000000000000000000 | 3149710316298620242623/2000000000000000000000 |
| `f * h * p * v` | 100 | 203859141970712772531/20000000000000000000000 | 203859141970712772531/200000000000000000000 |
| `f * p * v` | 13857/200 | 33185600190576717/1000000000000000000 | 459852861840821567469/200000000000000000000 |
| `b * h * v * r` | 100 | 351784323837676204813/20000000000000000000000 | 351784323837676204813/200000000000000000000 |
| `b * h * v` | 332569/10000 | 1022726958800339/20000000000000000 | 340127281961269940891/200000000000000000000 |
| `b * f * h * v` | -100 | 351784323837676204813/20000000000000000000000 | 0 |
| `e * f * p * w` | -2800 | 4762776692205077846391/1000000000000000000000000 | 0 |
| `e * f * p` | -5621204/78125 | 21317688702415989/1000000000000000000 | 0 |
| `e * f * q * r` | -100 | 17862372748069154891937/1000000000000000000000000 | 0 |
| `e * f * q` | -656033/10000 | 51930483878014911/1000000000000000000 | 0 |
| `e * q * r` | 184693/5000 | 51930483878014911/1000000000000000000 | 9591196858882207957323/5000000000000000000000 |
| `c * e * q * r` | 100 | 319008962462645598273/20000000000000000000000 | 319008962462645598273/200000000000000000000 |
| `b * c * v * w` | 100 | 228496634408212939041/20000000000000000000000 | 228496634408212939041/200000000000000000000 |
| `b * v * w` | 13857/200 | 37196261502232287/1000000000000000000 | 515428595636432800959/200000000000000000000 |
| `p * u * w` | 100 | 4233079451795103/200000000000000000 | 4233079451795103/2000000000000000 |
| `q * u * r` | -6216578693/5000000000 | 15875790096123321/200000000000000000 | 0 |
| `e * f * f` | -122461/2500 | 36786325270803147/1000000000000000000 | 0 |
| `e * e * f` | -23761787033216097/312500000000000 | 33252360290882343/1000000000000000000 | 0 |
| `e * e` | 2827798327078503615623/78125000000000000000 | 96673111929/1000000000000 | 273372064186299131602953472066767/78125000000000000000000000000000 |
| `c * e * e` | 262019/10000 | 593862926579847/20000000000000000 | 155603370159524931093/200000000000000000000 |
| `c * e * p * v` | 200 | 184274933348140744239/20000000000000000000000 | 184274933348140744239/100000000000000000000 |
| `e * p * v` | 119689/1000 | 29997547346270673/1000000000000000000 | 3590376444327790580697/1000000000000000000000 |
| `c * e * e * f` | 3600 | 204269249266890233049/20000000000000000000000 | 1838423243402012097441/50000000000000000000 |
| `c * f * q * v` | -100 | 496606552111639408569/20000000000000000000000 | 0 |
| `e * f * r * k` | -100 | 15407326972146294467451/1000000000000000000000000 | 0 |
| `e * r * k` | -165433/1250 | 44793038204671653/1000000000000000000 | 0 |
| `c * c * e * h` | 4300 | 72076617174899061/8000000000000000000 | 3099294538520659623/80000000000000000 |
| `c * e * e * p` | 1500 | 118374103292234322663/20000000000000000000000 | 355122309876702967989/40000000000000000000 |
| `e * e * p` | 41571/40 | 19269754727695641/1000000000000000000 | 801062973785035492011/40000000000000000000 |
| `p * k` | 31891277741/1250000000 | 83485563057/1000000000000 | 2662461278814556014237/1250000000000000000000 |
| `c * c * h * v` | 200 | 112202867489305933/8000000000000000000 | 112202867489305933/40000000000000000 |
| `c * c * h * h` | -500 | 1424039583129601/160000000000000000 | 0 |
| `f * q * u * w` | -100 | 3546953147485776254499/200000000000000000000000 | 0 |
| `f * q * u` | -776581/10000 | 15875790096123321/200000000000000000 | 0 |
| `f * q * v * r` | 100 | 27806652435322199649561/1000000000000000000000000 | 27806652435322199649561/10000000000000000000000 |
| `p * v * r` | -493783421307/5000000000 | 33185600190576717/1000000000000000000 | 0 |
| `f * f * q * w` | -1400 | 12835311176724985018161/1000000000000000000000000 | 0 |
| `f * f * q` | 190433/5000 | 57449505980802819/1000000000000000000 | 10940281772442223230627/5000000000000000000000 |
| `e * f * v * j` | 13976471539/312500000 | 17484029873427942338319/1000000000000000000000000 | 244365045912991408458848612602941/312500000000000000000000000000000 |
| `e * f * v` | -768454147774664703/9687500000000000 | 51764501743623279/1000000000000000000 | 0 |
| `e * v * j` | 2724301731361387/39062500000000 | 50830544422656657/1000000000000000000 | 138477740176685424241043888303259/39062500000000000000000000000000 |
| `f * v * j` | -35993339682912497/312500000000000 | 56232668131427853/1000000000000000000 | 0 |
| `e * u * j` | -100 | 9982243959445359/200000000000000000 | 0 |
| `q * j` | 180114049013/10000000000 | 164006946531/1000000000000 | 29539955205957004323903/10000000000000000000000 |
| `f * v * w * j` | -100 | 12563446481255479489407/1000000000000000000000000 | 0 |
| `f * w * w` | -184651/1250 | 17169473819348487/1000000000000000000 | 0 |
| `e * f * r * w` | 100 | 8218764005677568299593/1000000000000000000000000 | 8218764005677568299593/10000000000000000000000 |
| `e * r * w` | 40433/1250 | 23894047992038679/1000000000000000000 | 966108042462099908007/1250000000000000000000 |
| `f * r * w` | -266009/10000 | 26433438522327291/1000000000000000000 | 0 |
| `e * r * r` | -6143/200 | 36786325270803147/1000000000000000000 | 0 |
| `e * f * u * k` | 17273528461/312500000 | 4257712660468654632609/200000000000000000000000 | 73545720819365335394751060184749/62500000000000000000000000000000 |
| `e * u * k` | -260965793861387/39062500000000 | 12378259136686527/200000000000000000 | 0 |
| `f * u * k` | 16758839682912497/312500000000000 | 13693784829262083/200000000000000000 | 229491944605902528933724768951251/62500000000000000000000000000000 |
| `c * e * u * k` | -100 | 76039645876665335361/4000000000000000000000 | 0 |
| `h * p * u * v` | 100 | 56335122327845872329/4000000000000000000000 | 56335122327845872329/40000000000000000000 |
| `h * u * v` | 1107821/10000 | 282623814537001/4000000000000000 | 313096596844194984821/40000000000000000000 |
| `p * u * v` | 531773/10000 | 9170620597077303/200000000000000000 | 4876688426769588648219/2000000000000000000000 |
| `u * v` | 536643296633/10000000000 | 46007458007/200000000000 | 24689593934580791990431/2000000000000000000000 |
| `h * q * u * u` | -100 | 26950381249101902277/800000000000000000000 | 0 |
| `h * u * u` | 25277/250 | 55502452265687/800000000000000 | 1402935485919770299/200000000000000000 |
| `q * u * u` | -531773/10000 | 4387169338938939/40000000000000000 | 0 |
| `u * u` | 254882521311/10000000000 | 9035072809/40000000000 | 2302882137786379132599/400000000000000000000 |
| `h * q * u * j` | 100 | 95765391108938251449/4000000000000000000000 | 95765391108938251449/40000000000000000000 |
| `h * q * j` | -467223/10000 | 1007494672539933/20000000000000000 | 0 |
| `h * u * j` | 247531/2500 | 197222221073619/4000000000000000 | 48818613604573984689/10000000000000000000 |
| `q * u * j` | -83731/10000 | 15589352288611143/200000000000000000 | 0 |
| `h * h * u * u` | 100 | 340951564268115241/16000000000000000000 | 340951564268115241/160000000000000000 |
| `h * q * r * j` | -100 | 346544920029543134211/20000000000000000000000 | 0 |
| `q * r * j` | 83731/10000 | 56412977377428477/1000000000000000000 | 4723515008789463807687/10000000000000000000000 |
| `h * u * w * j` | 100 | 44063191410046883361/4000000000000000000000 | 44063191410046883361/40000000000000000000 |
| `f * p * w * w` | 200 | 3422374046936914565223/1000000000000000000000000 | 3422374046936914565223/5000000000000000000000 |
| `p * w * w` | 19109/2000 | 9949716242944569/1000000000000000000 | 190129127686427769021/2000000000000000000000 |
| `p * r * w` | -108893/1250 | 15318187114510917/1000000000000000000 | 0 |
| `c * f * w * w` | -100 | 105472077672257755641/20000000000000000000000 | 0 |
| `f * q * r * w` | -200 | 12835311176724985018161/1000000000000000000000000 | 0 |
| `q * r * w` | -19109/2000 | 37315530782676783/1000000000000000000 | 0 |
| `q * r * r` | 108893/1250 | 57449505980802819/1000000000000000000 | 6255849054767561369367/1250000000000000000000 |
| `p * v * r * k` | -100 | 13899224484619818111261/1000000000000000000000000 | 0 |
| `p * v * k` | -656033/10000 | 40408598745286083/1000000000000000000 | 0 |
| `p * r * k` | 75477/1250 | 28716278668027119/1000000000000000000 | 2167418565026682860763/1250000000000000000000 |
| `q * u * w * j` | -100 | 3482957498969212957917/200000000000000000000000 | 0 |
| `q * w * j` | 467223/10000 | 36642267987009489/1000000000000000000 | 17120110375694534479047/10000000000000000000000 |
| `u * w * k` | 8320235439/193750000 | 8894608240816431/200000000000000000 | 74005234701262315499698209/38750000000000000000000000 |
| `c * e * u * w` | -300 | 40561994021766891723/4000000000000000000000 | 0 |
| `p * r * w * k` | 100 | 6415762263731950899861/1000000000000000000000000 | 6415762263731950899861/10000000000000000000000 |
| `p * w * k` | 656033/10000 | 18652261012631883/1000000000000000000 | 12236498748899932100139/10000000000000000000000 |
| `r * w * k` | 107821/10000 | 32186798026037109/1000000000000000000 | 3470412749965347129489/10000000000000000000000 |
| `q * r * r * k` | -100 | 24061748938457587090227/1000000000000000000000000 | 0 |
| `q * r * k` | -140407/1250 | 69953655258956781/1000000000000000000 | 0 |
| `q * k` | -306513706359/10000000000 | 203373158643/1000000000000 | 0 |
| `r * r * k` | 479307/10000 | 49553513159677137/1000000000000000000 | 23751345732025369504059/10000000000000000000000 |
| `p * w * w * j` | -100 | 3360626107933200570009/1000000000000000000000000 | 0 |
| `w * w * j` | -107821/10000 | 16859694815772921/1000000000000000000 | 0 |
| `q * r * w * j` | 100 | 12603730992687692902863/1000000000000000000000000 | 12603730992687692902863/10000000000000000000000 |
| `r * w * j` | -479307/10000 | 25956515098075653/1000000000000000000 | 0 |
| `e * e * f * r` | -1100 | 11437714612173926874681/1000000000000000000000000 | 0 |
| `e * e * r` | 55237/1250 | 33252360290882343/1000000000000000000 | 1836760625387467980291/1250000000000000000000 |
| `e * e * f * j` | -13976471539/312500000 | 11231350464208711054023/1000000000000000000000000 | 0 |
| `e * e * j` | -2724301731361387/39062500000000 | 32652406958250969/1000000000000000000 | 0 |
| `e * h * u * u` | -100 | 17256988965804199101/800000000000000000000 | 0 |
| `e * u * u` | -479307/10000 | 2809211942992707/40000000000000000 | 0 |
| `h * r * r * k` | 100 | 304407231339896652591/20000000000000000000000 | 304407231339896652591/200000000000000000000 |
| `h * r * w * j` | -100 | 159450872247478736379/20000000000000000000000 | 0 |
| `p * v * w * j` | 100 | 7280521746743651196609/1000000000000000000000000 | 7280521746743651196609/10000000000000000000000 |
| `q * u * r * k` | 100 | 6649304793329618904393/200000000000000000000000 | 6649304793329618904393/2000000000000000000000 |
| `q * u * k` | 656033/10000 | 19331228848493079/200000000000000000 | 12681924055163460095607/2000000000000000000000 |
| `p * v * v` | 100 | 46697680354925769/1000000000000000000 | 46697680354925769/10000000000000000 |
| `v * v` | 107821/10000 | 234274392361/1000000000000 | 25259699258755381/10000000000000000 |
| `q * u * v` | -100 | 22339887391916997/200000000000000000 | 0 |
| `e * p * u * v` | -100 | 2851356867905066280669/200000000000000000000000 | 0 |
| `e * u * v` | -107821/10000 | 14304776865910461/200000000000000000 | 0 |
| `e * q * u * u` | 100 | 1364071852370911730697/40000000000000000000000 | 1364071852370911730697/400000000000000000000 |
| `h * p * r * w` | 100 | 94099623444440563131/20000000000000000000000 | 94099623444440563131/200000000000000000000 |
| `h * q * r * r` | -100 | 352912315240071717117/20000000000000000000000 | 0 |
| `e * h * r * r` | 100 | 225978396138543732021/20000000000000000000000 | 225978396138543732021/200000000000000000000 |
| `e * e * u` | -27078173165601327/156250000000000 | 9189069308187237/200000000000000000 | 0 |
| `e * e * f * u` | 16851471539/312500000 | 3160736602729239349179/200000000000000000000000 | 53263062903167326615808801516481/62500000000000000000000000000000 |
| `e * e * f * f` | 1400 | 11437714612173926874681/1000000000000000000000000 | 80064002285217488122767/5000000000000000000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 150 | -151181966031142456846218325727318572860593/4843750000000000000000000000000000 |

## Stage 151

| Property | Value |
| --- | --- |
| Scope | root/ACP+/HBP-/HEQ-/CFQ+/PQR+/PQS+/PRS-/QRS-/CRS+/EPQ- |
| Packet | forest:root/ACP+/HBP-/HEQ-/CFQ+/PQR+/PQS+/PRS-/QRS-/CRS+/EPQ- |
| Index | 0 |
| Context | 59 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 143 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 17183/125000 | 59/125 | 195791/1000000 | 6283/31250 |
| b | 40433/125000 | 84567/125000 | 398381/1000000 | 205409/500000 |
| c | 13857/20000 | 1/1 | 430469/500000 | 6987/8000 |
| e | 17183/125000 | 59/125 | 190071/1000000 | 6283/31250 |
| f | 40433/125000 | 84567/125000 | 398381/1000000 | 67169/125000 |
| h | 13857/20000 | 1/1 | 405871/500000 | 858189/1000000 |
| p | 107821/1000000 | 6143/20000 | 132793/1000000 | 28911/200000 |
| q | 212519/1000000 | 703163/1000000 | 323519/1000000 | 81223/200000 |
| u | 14437/100000 | 84567/125000 | 62959/250000 | 63837/100000 |
| v | 33537/200000 | 82207/100000 | 350989/1000000 | 316901/500000 |
| r | 40433/62500 | 1/1 | 185723/200000 | 1/1 |
| w | 776581/1000000 | 1/1 | 197803/200000 | 1/1 |
| j | 269553/500000 | 892179/1000000 | 23773/40000 | 110647/125000 |
| k | 412393/1000000 | 107817/125000 | 105807/200000 | 166371/200000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 0 | A_ABC | bitt ["actual-area","ABC",[]] | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 7 | A_ABH | bitt ["actual-area","ABH",["P"]] | `1/1 * b * h + -1/1 * a * b + -279/1000` |
| 10 | A_ABP | bitt ["actual-area","ABP",[]] | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 32 | A_AHP | bitt ["actual-area","AHP",[]] | `1/1 * h * p + -1/1 * a * p + -93/1000` |
| 36 | A_BCE | bitt ["actual-area","BCE",[]] | `1/1 * c * e + -1/1 * b * e + -93/1000` |
| 55 | A_BHP | bitt ["actual-area","BHP",[]] | `-1/1 * b * q + -1/1 * h * p + 1/1 * b * h + -93/1000` |
| 75 | A_CHQ | bitt ["actual-area","CHQ",[]] | `1/1 * c * v + 1/1 * h * u + -1/1 * c * h + -93/1000` |
| 79 | A_CPR | bitt ["actual-area","CPR",["Q","S"]] | `-1/1 * p * w + 1/1 * c * w + 1/1 * q * r + -1/1 * c * q + -13857/20000` |
| 88 | A_EFR | bitt ["actual-area","EFR",["S"]] | `-1/1 * f * w + 1/1 * e * f + 1/1 * w + 1/1 * r + -1279/1000 + -1/1 * e * r` |
| 89 | A_EFS | bitt ["actual-area","EFS",[]] | `-1/1 * f * k + 1/1 * e * f + 1/1 * k + 1/1 * j + -1093/1000 + -1/1 * e * j` |
| 90 | A_EHP | bitt ["actual-area","EHP",["Q"]] | `-1/1 * q + -1/1 * h * p + 1/1 * h + 1/1 * e * p + -279/1000` |
| 91 | A_EHQ | bitt ["actual-area","EHQ",[]] | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -93/1000` |
| 94 | A_EPQ | bitt ["actual-area","EPQ",[]] | `-1/1 * p * v + 1/1 * e * p + 1/1 * v + 1/1 * q * u + -1/1 * q + -1/1 * e * u + -93/1000` |
| 95 | A_EPR | bitt ["actual-area","EPR",["Q","S"]] | `-1/1 * p * w + 1/1 * e * p + 1/1 * w + 1/1 * q * r + -1/1 * q + -1/1 * e * r + -13857/20000` |
| 96 | A_EPS | bitt ["actual-area","EPS",["Q"]] | `-1/1 * p * k + 1/1 * e * p + 1/1 * k + 1/1 * q * j + -1/1 * q + -1/1 * e * j + -279/1000` |
| 97 | A_EQR | bitt ["actual-area","EQR",["S"]] | `-1/1 * u * w + 1/1 * e * u + 1/1 * w + 1/1 * v * r + -1/1 * v + -1/1 * e * r + -279/1000` |
| 99 | A_ERS | bitt ["actual-area","ERS",[]] | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 102 | A_FHR | bitt ["actual-area","FHR",[]] | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 104 | A_FPQ | bitt ["actual-area","FPQ",[]] | `1/1 * p * v + -1/1 * p + -1/1 * f * v + -1/1 * q * u + 1/1 * f * q + 1/1 * u + -93/1000` |
| 109 | A_FRS | bitt ["actual-area","FRS",[]] | `-1/1 * r * k + 1/1 * r + 1/1 * f * k + 1/1 * w * j + -1/1 * f * w + -1/1 * j + -93/1000` |
| 110 | A_HPQ | bitt ["actual-area","HPQ",[]] | `1/1 * p * v + -1/1 * h * p + -1/1 * q * u + 1/1 * h * u + -93/1000` |
| 114 | A_HQS | bitt ["actual-area","HQS",[]] | `1/1 * u * k + -1/1 * h * u + -1/1 * v * j + 1/1 * h * j + -93/1000` |
| 118 | A_PRS | bitt ["actual-area","PRS",[]] | `-1/1 * r * k + 1/1 * q * r + 1/1 * p * k + 1/1 * w * j + -1/1 * p * w + -1/1 * q * j + -93/1000` |
| 119 | A_QRS | bitt ["actual-area","QRS",[]] | `-1/1 * r * k + 1/1 * v * r + 1/1 * u * k + 1/1 * w * j + -1/1 * u * w + -1/1 * v * j + -93/1000` |
| 121 | ea | bitt ["contact-order","ea"] | `1/1 * e + -1/1 * a` |
| 123 | fb | bitt ["contact-order","fb"] | `1/1 * f + -1/1 * b` |
| 126 | lower-area | bitt ["endpoint-lower","13857/20000"] | `1/1 * c * h + -13857/20000` |
| 604 | AREA_lo_AHQ | bitt ["earlier-area",{"direction":"lo","ref":"143:46","triangle":"AHQ","value":"4981/40000"}] | `1/1 * h * u + -1/1 * a * u + -4981/40000` |
| 646 | AREA_lo_CEH | bitt ["earlier-area",{"direction":"lo","ref":"143:100","triangle":"CEH","value":"142133/500000"}] | `1/1 * h + -1/1 * c * h + 1/1 * c * e + -142133/500000` |
| 671 | AREA_lo_CQR | bitt ["earlier-area",{"direction":"lo","ref":"143:134","triangle":"CQR","value":"315261/1000000"}] | `-1/1 * u * w + 1/1 * c * w + 1/1 * v * r + -1/1 * c * v + -315261/1000000` |
| 717 | AREA_lo_HQR | bitt ["earlier-area",{"direction":"lo","ref":"143:194","triangle":"HQR","value":"17793/100000"}] | `1/1 * u * w + -1/1 * h * u + -1/1 * v * r + 1/1 * h * r + -17793/100000` |
| 719 | AREA_lo_HQS | bitt ["earlier-area",{"direction":"lo","ref":"143:196","triangle":"HQS","value":"11201/100000"}] | `1/1 * u * k + -1/1 * h * u + -1/1 * v * j + 1/1 * h * j + -11201/100000` |
| 726 | AREA_lo_PRS | bitt ["earlier-area",{"direction":"lo","ref":"143:204","triangle":"PRS","value":"6751/62500"}] | `-1/1 * r * k + 1/1 * q * r + 1/1 * p * k + 1/1 * w * j + -1/1 * p * w + -1/1 * q * j + -6751/62500` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 90 | q | 212519/1000000 | 703163/1000000 | 212519/1000000 | 41504407/62500000 | 212519/1000000 | 664071/1000000 | `(-1/1, 176983863047/500000000000); (-1/1, 7800754643/20000000000); (-1/1, 78500063243/125000000000); (-1/1, 41504407/62500000); (-1/1, 2432631901/10000000000); (-1/1, 138406369/400000000); (-1/1, 1140180169/2500000000); (-1/1, 698531/1250000)` |
| 1 | 94 | v | 33537/200000 | 82207/100000 | 7497502643/27880593750 | 82207/100000 | 134457/500000 | 82207/100000 | `(892179/1000000, -139930901853/500000000000); (892179/1000000, -29208875997/100000000000); (13857/20000, -5049224841/20000000000); (13857/20000, -19800547197/100000000000); (892179/1000000, -333111620733/500000000000); (892179/1000000, -67845019773/100000000000); (13857/20000, -63882267981/100000000000); (13857/20000, -58436690973/100000000000); (892179/1000000, -7497502643/31250000000); (892179/1000000, -53771965727/125000000000); (13857/20000, -5312988073/25000000000); (13857/20000, -42011554727/125000000000); (892179/1000000, -12061903147/31250000000); (892179/1000000, -72029567743/125000000000); (13857/20000, -44822542381/125000000000); (13857/20000, -60269156743/125000000000)` |
| 2 | 95 | e | 17183/125000 | 59/125 | 17183/125000 | 7768405727/33694187500 | 17183/125000 | 230557/1000000 | `(-539107/1000000, -75035248369/1000000000000); (-169889/500000, -114915181259/500000000000); (-539107/1000000, -234465616113/1000000000000); (-169889/500000, -194630365131/500000000000); (-892179/1000000, -740001/1000000000000); (-13857/20000, -3095917083/20000000000); (-539107/1000000, 7768405727/62500000000); (-169889/500000, -4689656773/62500000000); (-539107/1000000, -2195992257/62500000000); (-169889/500000, -14654054757/62500000000); (-892179/1000000, 199329/1000000); (-13857/20000, 0/1)` |
| 3 | 95 | p | 107821/1000000 | 6143/20000 | 107821/1000000 | 28281/143756 | 107821/1000000 | 19673/100000 | `(-639117/1000000, -1002910237/12500000000); (-68253/125000, -4389290227/31250000000); (-639117/1000000, -14978949169/62500000000); (-68253/125000, -9371489219/31250000000); (-639117/1000000, -53733/1000000); (-68253/125000, -73413/500000); (-107817/125000, 1789827263/12500000000); (-769443/1000000, 2592553523/31250000000); (-107817/125000, -1015261669/62500000000); (-769443/1000000, -2389645469/31250000000); (-107817/125000, 84843/500000); (-769443/1000000, 76593/1000000)` |
| 4 | 95 | w | 776581/1000000 | 1/1 | 33978853919/37174125000 | 1/1 | 182809/200000 | 1/1 | `(892179/1000000, -105249039127/125000000000); (892179/1000000, -892179400967/1000000000000); (80327/100000, -5186065789/6250000000); (80327/100000, -435840404327/500000000000); (892179/1000000, -25035567019/25000000000); (892179/1000000, -1051609768711/1000000000000); (80327/100000, -30912527937/31250000000); (80327/100000, -515555588199/500000000000); (892179/1000000, -101936561757/125000000000); (892179/1000000, -898548113703/1000000000000); (80327/100000, -10040883841/12500000000); (80327/100000, -87804952139/100000000000)` |
| 5 | 96 | k | 412393/1000000 | 107817/125000 | 409734999211/892179000000 | 107817/125000 | 114813/250000 | 107817/125000 | `(892179/1000000, -218117446613/500000000000); (892179/1000000, -476384507731/1000000000000); (80327/100000, -8480262129/20000000000); (80327/100000, -227942957709/500000000000); (892179/1000000, -322176250357/500000000000); (892179/1000000, -684502115219/1000000000000); (80327/100000, -316065356969/500000000000); (80327/100000, -332001761453/500000000000); (892179/1000000, -409734999211/1000000000000); (892179/1000000, -96550647701/200000000000); (80327/100000, -79502642487/200000000000); (80327/100000, -28890915387/62500000000); (892179/1000000, -458421787403/1000000000000); (892179/1000000, -531440026697/1000000000000); (80327/100000, -446200000627/1000000000000); (80327/100000, -31933839649/62500000000)` |
| 6 | 102 | h | 13857/20000 | 1/1 | 13857/20000 | 15283483703/16913400000 | 13857/20000 | 56477/62500 | `(-40433/125000, 6456683703/25000000000); (3701/125000, -1611408703/25000000000); (-84567/125000, 15283483703/25000000000); (-40433/125000, 7215391297/25000000000); (-40433/125000, 3601/15625); (3701/125000, -7663/62500); (-84567/125000, 36471/62500)` |
| 7 | 114 | v | 134457/500000 | 82207/100000 | 134457/500000 | 22102139519/27880593750 | 134457/500000 | 792743/1000000 | `(-269553/500000, 6169876221/25000000000); (-269553/500000, 41249786549/125000000000); (-269553/500000, 30620533893/250000000000); (-269553/500000, 730580979/7812500000); (-892179/1000000, 49142167689/100000000000); (-892179/1000000, 81130794191/125000000000); (-892179/1000000, 183554381811/500000000000); (-892179/1000000, 25785151653/62500000000); (-269553/500000, 3812714499/12500000000); (-269553/500000, 24263775217/62500000000); (-269553/500000, 98829569949/250000000000); (-269553/500000, 11448453423/31250000000); (-892179/1000000, 54964378797/100000000000); (-892179/1000000, 22102139519/31250000000); (-892179/1000000, 319972453923/500000000000); (-892179/1000000, 42837410667/62500000000)` |
| 8 | 121 | a | 17183/125000 | 59/125 | 17183/125000 | 230557/1000000 | 17183/125000 | 230557/1000000 | `(-1/1, 17183/125000); (-1/1, 230557/1000000)` |
| 9 | 126 | c | 13857/20000 | 1/1 | 346425/451816 | 1/1 | 766739/1000000 | 1/1 | `(13857/20000, -13857/20000); (56477/62500, -13857/20000)` |
| 10 | 604 | u | 14437/100000 | 84567/125000 | 124525/766168 | 84567/125000 | 162529/1000000 | 84567/125000 | `(277693/500000, -4981/40000); (462293/1000000, -4981/40000); (95771/125000, -4981/40000); (26923/40000, -4981/40000)` |
| 11 | 646 | c | 766739/1000000 | 1/1 | 766739/1000000 | 619366/673075 | 766739/1000000 | 230051/250000 | `(-277693/500000, 51073/125000); (-462293/1000000, 51073/125000); (-95771/125000, 309683/500000); (-26923/40000, 309683/500000)` |
| 12 | 671 | u | 162529/1000000 | 84567/125000 | 162529/1000000 | 167050180107/250000000000 | 162529/1000000 | 668201/1000000 | `(-182809/200000, 353354094001/1000000000000); (-182809/200000, 113089780729/250000000000); (-182809/200000, 145296808841/500000000000); (-182809/200000, 38651153639/125000000000); (-182809/200000, 448300097809/1000000000000); (-182809/200000, 136826281681/250000000000); (-182809/200000, 285244487089/500000000000); (-182809/200000, 73638073201/125000000000); (-1/1, 209629572373/500000000000); (-1/1, 66431907217/125000000000); (-1/1, 356498668427/1000000000000); (-1/1, 97076340983/250000000000); (-1/1, 257102574277/500000000000); (-1/1, 78300157693/125000000000); (-1/1, 636394024923/1000000000000); (-1/1, 167050180107/250000000000)` |
| 13 | 717 | v | 134457/500000 | 792743/1000000 | 134457/500000 | 49380949623/62500000000 | 134457/500000 | 49381/62500 | `(-40433/62500, 61248933391/200000000000); (-40433/62500, 408347256973/1000000000000); (-40433/62500, 83619356999/200000000000); (-40433/62500, 413612819509/1000000000000); (-1/1, 110174120431/200000000000); (-1/1, 727394414477/1000000000000); (-1/1, 132544544039/200000000000); (-1/1, 732659977013/1000000000000); (-40433/62500, 6404296943/20000000000); (-40433/62500, 26394839823/62500000000); (-40433/62500, 9510640039/20000000000); (-40433/62500, 29440502279/62500000000); (-1/1, 11296815647/20000000000); (-1/1, 46335287167/62500000000); (-1/1, 14403158743/20000000000); (-1/1, 49380949623/62500000000)` |
| 14 | 719 | v | 134457/500000 | 49381/62500 | 134457/500000 | 85939025293/111522375000 | 134457/500000 | 770599/1000000 | `(-269553/500000, 111771571379/500000000000); (-269553/500000, 75729698993/250000000000); (-269553/500000, 52709587451/500000000000); (-269553/500000, 19552068153/250000000000); (-892179/1000000, 58521221351/125000000000); (-892179/1000000, 155491714277/250000000000); (-892179/1000000, 43755725369/125000000000); (-892179/1000000, 99314083437/250000000000); (-269553/500000, 144544243997/500000000000); (-269553/500000, 46058017651/125000000000); (-269553/500000, 187446973493/500000000000); (-269553/500000, 43460380587/125000000000); (-892179/1000000, 133428779011/250000000000); (-892179/1000000, 85939025293/125000000000); (-892179/1000000, 154880143759/250000000000); (-892179/1000000, 83341388229/125000000000)` |
| 15 | 0 | a | 17183/125000 | 230557/1000000 | 4650/29837 | 230557/1000000 | 77923/500000 | 230557/1000000 | `(17731/40000, -93/1000); (90203/1000000, -93/1000); (29837/50000, -93/1000); (60917/250000, -93/1000)` |
| 16 | 0 | b | 40433/125000 | 84567/125000 | 40433/125000 | 29789868407/57639250000 | 40433/125000 | 258417/500000 | `(-77923/500000, 13246603097/500000000000); (-230557/1000000, 83777043623/1000000000000); (-77923/500000, 6301264073/125000000000); (-230557/1000000, 29789868407/250000000000)` |
| 17 | 7 | b | 40433/125000 | 258417/500000 | 46500/124631 | 258417/500000 | 373101/1000000 | 258417/500000 | `(134251/250000, -279/1000); (462293/1000000, -279/1000); (373893/500000, -279/1000); (26923/40000, -279/1000)` |
| 18 | 7 | h | 13857/20000 | 56477/62500 | 9987403099/14356500000 | 56477/62500 | 695671/1000000 | 56477/62500 | `(373101/1000000, -168573149223/500000000000); (373101/1000000, -365021047257/1000000000000); (258417/500000, -89886627891/250000000000); (258417/500000, -199079848269/500000000000)` |
| 19 | 10 | q | 212519/1000000 | 664071/1000000 | 8930432999/32302125000 | 664071/1000000 | 55293/200000 | 664071/1000000 | `(373101/1000000, -209910667/1562500000); (373101/1000000, -481756753/3125000000); (258417/500000, -78371519999/500000000000); (258417/500000, -187300810241/1000000000000); (373101/1000000, -60243357433/500000000000); (373101/1000000, -133663568647/1000000000000); (258417/500000, -8930432999/62500000000); (258417/500000, -20850277241/125000000000)` |
| 20 | 32 | p | 107821/1000000 | 19673/100000 | 15500/124631 | 19673/100000 | 124367/1000000 | 19673/100000 | `(21593/40000, -93/1000); (232557/500000, -93/1000); (373893/500000, -93/1000); (26923/40000, -93/1000)` |
| 21 | 36 | c | 766739/1000000 | 230051/250000 | 179021047257/230557000000 | 230051/250000 | 776471/1000000 | 230051/250000 | `(17183/125000, -18035994483/125000000000); (17183/125000, -10252879311/62500000000); (230557/1000000, -179021047257/1000000000000); (230557/1000000, -106079848269/500000000000)` |
| 22 | 36 | e | 17183/125000 | 230557/1000000 | 93000/547103 | 230557/1000000 | 84993/500000 | 230557/1000000 | `(40337/100000, -93/1000); (259637/1000000, -93/1000); (547103/1000000, -93/1000)` |
| 23 | 55 | q | 55293/200000 | 664071/1000000 | 55293/200000 | 16352858759/32302125000 | 55293/200000 | 63281/125000 | `(-373101/1000000, 40018515257/500000000000); (-258417/500000, 180027910357/1000000000000); (-373101/1000000, 4117625059/31250000000); (-258417/500000, 16352858759/62500000000); (-373101/1000000, 29696189941/1000000000000); (-258417/500000, 16210883723/125000000000); (-373101/1000000, 4148404967/62500000000); (-258417/500000, 1533251701/7812500000)` |
| 24 | 88 | f | 40433/125000 | 84567/125000 | 40433/125000 | 275507/415007 | 40433/125000 | 331931/500000 | `(-744059/1000000, 5375134281/31250000000); (-21359/31250, 8301201319/62500000000); (-744059/1000000, 465059/1000000); (-21359/31250, 50561/125000); (-415007/500000, 8061228031/31250000000); (-769443/1000000, 13673388819/62500000000); (-415007/500000, 275507/500000); (-769443/1000000, 490443/1000000)` |
| 25 | 88 | r | 40433/62500 | 1/1 | 34217478031/51875875000 | 1/1 | 329801/500000 | 1/1 | `(415007/500000, -75703912547/125000000000); (769443/1000000, -9156855663/15625000000); (415007/500000, -429453747929/500000000000); (769443/1000000, -1599017013/1953125000); (415007/500000, -34217478031/62500000000); (769443/1000000, -65985888819/125000000000); (415007/500000, -207503688517/250000000000); (769443/1000000, -394901984433/500000000000)` |
| 26 | 89 | j | 269553/500000 | 892179/1000000 | 1136197483/2075035000 | 892179/1000000 | 109511/200000 | 892179/1000000 | `(415007/500000, -45457196089/62500000000); (769443/1000000, -17693064987/25000000000); (415007/500000, -206445176323/250000000000); (769443/1000000, -78556992009/100000000000); (415007/500000, -1136197483/2500000000); (769443/1000000, -54360806907/125000000000); (415007/500000, -6902216281/10000000000); (769443/1000000, -325005421449/500000000000)` |
| 27 | 91 | v | 134457/500000 | 770599/1000000 | 134457/500000 | 28049511733/40000000000 | 134457/500000 | 350619/500000 | `(-1/1, 103446388527/200000000000); (-1/1, 263538243347/500000000000); (-1/1, 345696624633/500000000000); (-1/1, 28049511733/40000000000); (-1/1, 50281551463/200000000000); (-1/1, 145940680043/500000000000); (-1/1, 160204504577/500000000000); (-1/1, 14435304477/40000000000)` |
| 28 | 94 | v | 134457/500000 | 350619/500000 | 25197725169/79603000000 | 350619/500000 | 158271/500000 | 350619/500000 | `(875633/1000000, -331018425747/1000000000000); (875633/1000000, -333329936249/1000000000000); (80327/100000, -318717728829/1000000000000); (80327/100000, -158323070029/500000000000); (875633/1000000, -26172751227/50000000000); (875633/1000000, -262883267521/500000000000); (80327/100000, -255577163811/500000000000); (80327/100000, -509082738851/1000000000000); (875633/1000000, -277174976859/1000000000000); (875633/1000000, -310115546073/1000000000000); (80327/100000, -264874279941/1000000000000); (80327/100000, -146715874941/500000000000); (875633/1000000, -88354186619/250000000000); (875633/1000000, -38635731569/100000000000); (80327/100000, -170558024779/500000000000); (80327/100000, -369673519499/1000000000000)` |
| 29 | 95 | e | 84993/500000 | 230557/1000000 | 84993/500000 | 182783/875633 | 84993/500000 | 26093/125000 | `(-107047/200000, 2681966483/200000000000); (-57859/125000, -329582537/6250000000); (-107047/200000, -64807841219/1000000000000); (-57859/125000, -65475439777/500000000000); (-875633/1000000, 21503593097/200000000000); (-80327/100000, 827498543/20000000000); (-107047/200000, 8867486693/100000000000); (-57859/125000, 1631186693/100000000000); (-107047/200000, 653574581/62500000000); (-57859/125000, -3869112919/62500000000); (-875633/1000000, 182783/1000000); (-80327/100000, 5521/50000)` |
| 30 | 95 | p | 124367/1000000 | 19673/100000 | 124367/1000000 | 68582/415007 | 124367/1000000 | 20657/125000 | `(-744059/1000000, 7481880679/500000000000); (-705301/1000000, -5300546479/500000000000); (-744059/1000000, -15813478069/250000000000); (-705301/1000000, -346948307/3906250000); (-744059/1000000, 51209/1000000); (-705301/1000000, 12451/1000000); (-415007/500000, 50459380679/500000000000); (-98907/125000, 37676953521/500000000000); (-415007/500000, 5675271931/250000000000); (-98907/125000, -44746353/15625000000); (-415007/500000, 34291/250000); (-98907/125000, 49203/500000)` |
| 31 | 95 | r | 329801/500000 | 1/1 | 36270675569/53239500000 | 1/1 | 681273/1000000 | 1/1 | `(106479/1000000, -147806385653/1000000000000); (67721/1000000, -142986169467/1000000000000); (106479/1000000, -22278776763/125000000000); (67721/1000000, -21478152757/125000000000); (168131/500000, -377589385653/1000000000000); (9297/31250, -372769169467/1000000000000); (168131/500000, -51001651763/125000000000); (9297/31250, -50201027757/125000000000); (106479/1000000, -36270675569/500000000000); (67721/1000000, -8465141869/125000000000); (106479/1000000, -6654987099/62500000000); (67721/1000000, -781834387/7812500000); (168131/500000, -151162175569/500000000000); (9297/31250, -37188016869/125000000000); (168131/500000, -21016424599/62500000000); (9297/31250, -5154028149/15625000000)` |
| 32 | 95 | w | 182809/200000 | 1/1 | 420847675569/437816500000 | 1/1 | 480621/500000 | 1/1 | `(875633/1000000, -875633083371/1000000000000); (875633/1000000, -897217646119/1000000000000); (104343/125000, -868682525817/1000000000000); (104343/125000, -888682312703/1000000000000); (875633/1000000, -237217782403/250000000000); (875633/1000000, -24261392309/25000000000); (104343/125000, -470960286029/500000000000); (104343/125000, -30060011217/31250000000); (875633/1000000, -420847675569/500000000000); (875633/1000000, -109454141869/125000000000); (104343/125000, -52171549599/62500000000); (104343/125000, -13548403149/15625000000)` |
| 33 | 96 | k | 114813/250000 | 107817/125000 | 439326023397/875633000000 | 107817/125000 | 501723/1000000 | 107817/125000 | `(875633/1000000, -476021242293/1000000000000); (875633/1000000, -492423162797/1000000000000); (104343/125000, -469070684739/1000000000000); (104343/125000, -483887829381/1000000000000); (875633/1000000, -36249088233/62500000000); (875633/1000000, -74548416529/125000000000); (104343/125000, -286517427087/500000000000); (104343/125000, -18370374963/31250000000); (875633/1000000, -439326023397/1000000000000); (875633/1000000, -469084880893/1000000000000); (104343/125000, -432375465843/1000000000000); (104343/125000, -460549547477/1000000000000); (875633/1000000, -5801268203/12500000000); (875633/1000000, -61732539217/125000000000); (104343/125000, -228575449343/500000000000); (104343/125000, -3033281127/6250000000)` |
| 34 | 97 | u | 162529/1000000 | 668201/1000000 | 162529/1000000 | 275507/415007 | 162529/1000000 | 331931/500000 | `(-98907/125000, 116386161447/250000000000); (-376249/500000, 219569933427/500000000000); (-98907/125000, 85732910949/250000000000); (-376249/500000, 158263432431/500000000000); (-98907/125000, 8004/15625); (-376249/500000, 236749/500000); (-415007/500000, 126075661447/250000000000); (-98907/125000, 238948933427/500000000000); (-415007/500000, 95422410949/250000000000); (-98907/125000, 177642432431/500000000000); (-415007/500000, 275507/500000)` |
| 35 | 99 | j | 109511/200000 | 892179/1000000 | 109511/200000 | 368507/415007 | 109511/200000 | 443977/500000 | `(-98907/125000, 592522461201/1000000000000); (-376249/500000, 566117682267/1000000000000); (-98907/125000, 43641/62500); (-376249/500000, 329749/500000); (-415007/500000, 631280461201/1000000000000); (-98907/125000, 604875682267/1000000000000); (-415007/500000, 368507/500000); (-98907/125000, 9550432323/20000000000); (-376249/500000, 14097401163/31250000000); (-415007/500000, 10325592323/20000000000); (-98907/125000, 15308588663/31250000000)` |
| 36 | 102 | h | 695671/1000000 | 56477/62500 | 695671/1000000 | 37254551107/42283500000 | 695671/1000000 | 440533/500000 | `(-357809/1000000, 17334113607/62500000000); (-17411/1000000, -12464759151/250000000000); (-84567/125000, 37254551107/62500000000); (-168069/500000, 67216990849/250000000000); (-357809/1000000, 264809/1000000); (-17411/1000000, -75589/1000000); (-84567/125000, 36471/62500); (-168069/500000, 121569/500000)` |
| 37 | 110 | u | 162529/1000000 | 331931/500000 | 28841167219/151150250000 | 331931/500000 | 190811/1000000 | 331931/500000 | `(209603/500000, -140151136343/1000000000000); (604601/1000000, -40802039077/250000000000); (209603/500000, -19456667753/125000000000); (604601/1000000, -5821593067/31250000000); (189423/1000000, -140151136343/1000000000000); (187409/500000, -40802039077/250000000000); (189423/1000000, -19456667753/125000000000); (187409/500000, -5821593067/31250000000); (209603/500000, -92307648911/1000000000000); (604601/1000000, -28841167219/250000000000); (209603/500000, -11510002481/125000000000); (604601/1000000, -3834926749/31250000000); (189423/1000000, -92307648911/1000000000000); (187409/500000, -28841167219/250000000000); (189423/1000000, -11510002481/125000000000); (187409/500000, -3834926749/31250000000)` |
| 38 | 121 | a | 77923/500000 | 230557/1000000 | 77923/500000 | 26093/125000 | 77923/500000 | 26093/125000 | `(-1/1, 84993/500000); (-1/1, 26093/125000)` |
| 39 | 123 | f | 40433/125000 | 331931/500000 | 373101/1000000 | 331931/500000 | 373101/1000000 | 331931/500000 | `(1/1, -373101/1000000); (1/1, -258417/500000)` |
| 40 | 126 | c | 776471/1000000 | 230051/250000 | 346425/440533 | 230051/250000 | 98297/125000 | 230051/250000 | `(695671/1000000, -13857/20000); (440533/500000, -13857/20000)` |
| 41 | 126 | h | 695671/1000000 | 440533/500000 | 11175/14842 | 440533/500000 | 75293/100000 | 440533/500000 | `(98297/125000, -13857/20000); (230051/250000, -13857/20000)` |
| 42 | 646 | c | 98297/125000 | 230051/250000 | 98297/125000 | 298400/336161 | 98297/125000 | 88767/100000 | `(-18217/31250, 58583/125000); (-272093/500000, 58583/125000); (-17777/25000, 373/625); (-336161/500000, 373/625)` |
| 43 | 671 | u | 190811/1000000 | 331931/500000 | 190811/1000000 | 32558953227/50000000000 | 190811/1000000 | 32559/50000 | `(-480621/500000, 203683562583/500000000000); (-480621/500000, 236335683483/500000000000); (-480621/500000, 183467210739/500000000000); (-480621/500000, 196635633327/500000000000); (-480621/500000, 635322009/1250000000); (-480621/500000, 573561849/1000000000); (-480621/500000, 18451184547/31250000000); (-480621/500000, 15419368767/25000000000); (-1/1, 218922743087/500000000000); (-1/1, 253537840413/500000000000); (-1/1, 198706391243/500000000000); (-1/1, 213837790257/500000000000); (-1/1, 33670998013/62500000000); (-1/1, 30398308143/50000000000); (-1/1, 38807266657/62500000000); (-1/1, 32558953227/50000000000)` |
| 44 | 0 | a | 77923/500000 | 26093/125000 | 1000/5533 | 26093/125000 | 180733/1000000 | 26093/125000 | `(16531/40000, -93/1000); (134771/500000, -93/1000); (514569/1000000, -93/1000); (92709/250000, -93/1000)` |
| 45 | 0 | b | 373101/1000000 | 258417/500000 | 373101/1000000 | 1153697331/2609300000 | 373101/1000000 | 442149/1000000 | `(-180733/1000000, 6140511701/125000000000); (-26093/125000, 1111738621/15625000000); (-180733/1000000, 6743126211/100000000000); (-26093/125000, 1153697331/12500000000)` |
| 46 | 0 | c | 98297/125000 | 88767/100000 | 21360324393/26093000000 | 88767/100000 | 409311/500000 | 88767/100000 | `(180733/1000000, -160431663033/1000000000000); (26093/125000, -21360324393/125000000000); (180733/1000000, -172910915217/1000000000000); (26093/125000, -23161993857/125000000000)` |
| 47 | 7 | b | 373101/1000000 | 442149/1000000 | 279000/700333 | 442149/1000000 | 398381/1000000 | 442149/1000000 | `(572197/1000000, -279/1000); (272093/500000, -279/1000); (700333/1000000, -279/1000); (336161/500000, -279/1000)` |
| 48 | 7 | h | 75293/100000 | 440533/500000 | 119636971739/147383000000 | 440533/500000 | 405871/500000 | 440533/500000 | `(398381/1000000, -351000593273/1000000000000); (398381/1000000, -45269955433/125000000000); (442149/1000000, -358910915217/1000000000000); (442149/1000000, -46411993857/125000000000)` |
| 49 | 10 | q | 55293/200000 | 63281/125000 | 143043702569/442149000000 | 63281/125000 | 323519/1000000 | 63281/125000 | `(398381/1000000, -71261686131/500000000000); (398381/1000000, -9387423651/62500000000); (442149/1000000, -75216847103/500000000000); (442149/1000000, -9958442863/62500000000); (398381/1000000, -216213409/1600000000); (398381/1000000, -28332689/200000000); (442149/1000000, -143043702569/1000000000000); (442149/1000000, -18849969049/125000000000)` |
| 50 | 32 | p | 124367/1000000 | 20657/125000 | 93000/700333 | 20657/125000 | 132793/1000000 | 20657/125000 | `(631009/1000000, -93/1000); (301499/500000, -93/1000); (700333/1000000, -93/1000); (336161/500000, -93/1000)` |
| 51 | 36 | c | 409311/500000 | 88767/100000 | 22019955433/26093000000 | 88767/100000 | 421951/500000 | 88767/100000 | `(84993/500000, -80359596333/500000000000); (84993/500000, -84079569957/500000000000); (26093/125000, -22019955433/125000000000); (26093/125000, -23161993857/125000000000)` |
| 52 | 36 | e | 84993/500000 | 26093/125000 | 93000/489289 | 26093/125000 | 190071/1000000 | 26093/125000 | `(445521/1000000, -93/1000); (401753/1000000, -93/1000); (489289/1000000, -93/1000)` |
| 53 | 55 | q | 323519/1000000 | 63281/125000 | 323519/1000000 | 22445381687/55268625000 | 323519/1000000 | 81223/200000 | `(-398381/1000000, 15323616787/125000000000); (-442149/1000000, 19764657269/125000000000); (-398381/1000000, 17625069601/125000000000); (-442149/1000000, 22445381687/125000000000); (-398381/1000000, 76989883/800000000); (-442149/1000000, 65882838803/500000000000); (-398381/1000000, 89918809/800000000); (-442149/1000000, 75480503969/500000000000)` |
| 54 | 75 | u | 190811/1000000 | 32559/50000 | 11640909163/50733875000 | 32559/50000 | 4589/20000 | 32559/50000 | `(405871/500000, -319312669/625000000); (405871/500000, -66571773/125000000); (440533/500000, -71175366581/125000000000); (440533/500000, -14852775477/25000000000); (405871/500000, -11640909163/62500000000); (405871/500000, -2388638571/12500000000); (440533/500000, -30594651107/125000000000); (440533/500000, -6315698019/25000000000)` |
| 55 | 79 | r | 681273/1000000 | 1/1 | 3216444439/4621700000 | 1/1 | 86993/125000 | 1/1 | `(323519/1000000, -882251543/3125000000); (323519/1000000, -31801079187/125000000000); (323519/1000000, -156762646403/500000000000); (323519/1000000, -142806716271/500000000000); (81223/200000, -44002927919/125000000000); (81223/200000, -20482914051/62500000000); (81223/200000, -191614111199/500000000000); (81223/200000, -179465711931/500000000000); (323519/1000000, -127379665569/500000000000); (323519/1000000, -22515111073/100000000000); (323519/1000000, -143611165569/500000000000); (323519/1000000, -25761411073/100000000000); (81223/200000, -32446226073/100000000000); (81223/200000, -5969382041/20000000000); (81223/200000, -35692526073/100000000000); (81223/200000, -6618642041/20000000000)` |
| 56 | 88 | f | 373101/1000000 | 331931/500000 | 373101/1000000 | 530929/809929 | 373101/1000000 | 327763/500000 | `(-771171/1000000, 30738403497/125000000000); (-376249/500000, 3639247901/15625000000); (-771171/1000000, 492171/1000000); (-376249/500000, 236749/500000); (-809929/1000000, 35583153497/125000000000); (-98907/125000, 4244841651/15625000000); (-809929/1000000, 530929/1000000); (-98907/125000, 8004/15625)` |
| 57 | 88 | r | 86993/125000 | 1/1 | 581185319829/809929000000 | 1/1 | 28703/40000 | 1/1 | `(809929/1000000, -605482671271/1000000000000); (98907/125000, -299257878149/500000000000); (809929/1000000, -411640320473/500000000000); (98907/125000, -202760000987/250000000000); (809929/1000000, -581185319829/1000000000000); (98907/125000, -71777300607/125000000000); (809929/1000000, -404964758827/500000000000); (98907/125000, -49855555041/62500000000)` |
| 58 | 89 | j | 109511/200000 | 443977/500000 | 96272272793/161985800000 | 443977/500000 | 23773/40000 | 443977/500000 | `(809929/1000000, -176888668213/250000000000); (98907/125000, -700587757879/1000000000000); (809929/1000000, -99446623619/125000000000); (98907/125000, -391666175977/500000000000); (809929/1000000, -96272272793/200000000000); (98907/125000, -14824826531/31250000000); (809929/1000000, -67128229159/100000000000); (98907/125000, -10297525853/15625000000)` |
| 59 | 91 | v | 158271/500000 | 350619/500000 | 158271/500000 | 6338017171/10000000000 | 158271/500000 | 316901/500000 | `(-1/1, 11521991781/20000000000); (-1/1, 5803841089/10000000000); (-1/1, 2518068789/4000000000); (-1/1, 6338017171/10000000000); (-1/1, 15696113911/50000000000); (-1/1, 8152044059/25000000000); (-1/1, 3381038759/10000000000); (-1/1, 8756584001/25000000000)` |
| 60 | 94 | v | 158271/500000 | 316901/500000 | 304380233057/867207000000 | 316901/500000 | 350989/1000000 | 316901/500000 | `(867207/1000000, -360659258097/1000000000000); (867207/1000000, -181232067129/500000000000); (104343/125000, -44311122903/125000000000); (104343/125000, -177843838893/500000000000); (867207/1000000, -424303605897/1000000000000); (867207/1000000, -213054241029/500000000000); (104343/125000, -26133333189/62500000000); (104343/125000, -209666012793/500000000000); (867207/1000000, -304380233057/1000000000000); (867207/1000000, -78515018377/250000000000); (104343/125000, -37276244773/125000000000); (104343/125000, -76820904259/250000000000); (867207/1000000, -333191369777/1000000000000); (867207/1000000, -85717802557/250000000000); (104343/125000, -40877636863/125000000000); (104343/125000, -84023688439/250000000000)` |
| 61 | 95 | e | 190071/1000000 | 26093/125000 | 190071/1000000 | 58119/289069 | 190071/1000000 | 6283/31250 | `(-292391/500000, 49375937519/1000000000000); (-552319/1000000, 18171138473/1000000000000); (-292391/500000, 26048762219/1000000000000); (-552319/1000000, -5156036827/1000000000000); (-867207/1000000, 70372895547/500000000000); (-104343/125000, 6846312003/62500000000); (-292391/500000, 3319485857/40000000000); (-552319/1000000, 2020965857/40000000000); (-292391/500000, 477279769/8000000000); (-552319/1000000, 217575769/8000000000); (-867207/1000000, 174357/1000000); (-104343/125000, 70947/500000)` |
| 62 | 95 | p | 132793/1000000 | 20657/125000 | 132793/1000000 | 117079/809929 | 132793/1000000 | 28911/200000 | `(-771171/1000000, 203159743/5000000000); (-380093/500000, 1309975489/40000000000); (-771171/1000000, 173047733/10000000000); (-380093/500000, 376888477/40000000000); (-771171/1000000, 78321/1000000); (-380093/500000, 8417/125000); (-809929/1000000, 396949743/5000000000); (-24967/31250, 2860295489/40000000000); (-809929/1000000, 560627733/10000000000); (-24967/31250, 1927208477/40000000000); (-809929/1000000, 117079/1000000); (-24967/31250, 53047/500000)` |
| 63 | 95 | r | 28703/40000 | 1/1 | 123921901697/133448000000 | 1/1 | 185723/200000 | 1/1 | `(16681/125000, -157533110603/1000000000000); (122463/1000000, -78037189749/500000000000); (16681/125000, -33320724781/200000000000); (122463/1000000, -16501568723/100000000000); (54011/250000, -240129110603/1000000000000); (205059/1000000, -119335189749/500000000000); (54011/250000, -49839924781/200000000000); (205059/1000000, -24761168723/100000000000); (16681/125000, -123921901697/1000000000000); (122463/1000000, -3826974081/31250000000); (16681/125000, -26689657319/200000000000); (122463/1000000, -824127187/6250000000); (54011/250000, -206517901697/1000000000000); (205059/1000000, -6408099081/31250000000); (54011/250000, -43208857319/200000000000); (205059/1000000, -1340352187/6250000000)` |
| 64 | 95 | w | 480621/500000 | 1/1 | 285893633899/289069000000 | 1/1 | 197803/200000 | 1/1 | `(867207/1000000, -867207087177/1000000000000); (867207/1000000, -875949191847/1000000000000); (171089/200000, -34598858883/40000000000); (171089/200000, -34943374847/40000000000); (867207/1000000, -873103202637/1000000000000); (867207/1000000, -881845307307/1000000000000); (171089/200000, -174173517507/200000000000); (171089/200000, -175896097327/200000000000); (867207/1000000, -857680901697/1000000000000); (867207/1000000, -27100224081/31250000000); (171089/200000, -171089057319/200000000000); (171089/200000, -5405264687/6250000000)` |
| 65 | 96 | k | 501723/1000000 | 107817/125000 | 91756643261/173441400000 | 107817/125000 | 105807/200000 | 107817/125000 | `(867207/1000000, -497967419097/1000000000000); (867207/1000000, -503037348117/1000000000000); (171089/200000, -99146360799/200000000000); (171089/200000, -100134505489/200000000000); (867207/1000000, -531474551397/1000000000000); (867207/1000000, -536544480417/1000000000000); (171089/200000, -105847787259/200000000000); (171089/200000, -106835931949/200000000000); (867207/1000000, -91756643261/200000000000); (867207/1000000, -46707865989/100000000000); (171089/200000, -456547601203/1000000000000); (171089/200000, -232356919609/500000000000); (867207/1000000, -468037767721/1000000000000); (867207/1000000, -238166605653/500000000000); (171089/200000, -465802152619/1000000000000); (171089/200000, -236984195317/500000000000)` |
| 66 | 99 | j | 23773/40000 | 443977/500000 | 23773/40000 | 716929/809929 | 23773/40000 | 110647/125000 | `(-24967/31250, 34087352743/50000000000); (-787959/1000000, 134309243817/200000000000); (-24967/31250, 88243/125000); (-787959/1000000, 694959/1000000); (-809929/1000000, 34636602743/50000000000); (-24967/31250, 136506243817/200000000000); (-809929/1000000, 716929/1000000); (-24967/31250, 26317603439/40000000000); (-787959/1000000, 3238696251/5000000000); (-809929/1000000, 26757003439/40000000000); (-24967/31250, 3293621251/5000000000)` |
| 67 | 102 | f | 373101/1000000 | 327763/500000 | 373101/1000000 | 95258/177273 | 373101/1000000 | 67169/125000 | `(-177273/1000000, 8181920267/100000000000); (-107949/1000000, 1744389641/100000000000); (-177273/1000000, 47629/500000); (-107949/1000000, 12967/500000); (-94129/500000, 8181920267/100000000000); (-59467/500000, 1744389641/100000000000); (-94129/500000, 47629/500000); (-59467/500000, 12967/500000)` |
| 68 | 102 | h | 405871/500000 | 440533/500000 | 405871/500000 | 107599502897/125379800000 | 405871/500000 | 858189/1000000 | `(-277757/500000, 93322502897/200000000000); (-391263/1000000, 7604145293/25000000000); (-626899/1000000, 107599502897/200000000000); (-57831/125000, 9388770293/25000000000); (-277757/500000, 231257/500000); (-391263/1000000, 298263/1000000); (-626899/1000000, 533899/1000000); (-57831/125000, 23103/62500)` |
| 69 | 104 | u | 4589/20000 | 32559/50000 | 149562051371/593885000000 | 32559/50000 | 62959/250000 | 32559/50000 | `(676481/1000000, -189433202193/1000000000000); (676481/1000000, -193945177163/1000000000000); (676481/1000000, -7882674783/40000000000); (676481/1000000, -40315768909/200000000000); (118777/200000, -158616551997/1000000000000); (118777/200000, -149562051371/1000000000000); (118777/200000, -166250219379/1000000000000); (118777/200000, -157195718753/1000000000000); (676481/1000000, -257395428597/1000000000000); (676481/1000000, -30835972163/100000000000); (676481/1000000, -261702649473/1000000000000); (676481/1000000, -156333471253/500000000000); (118777/200000, -226578778401/1000000000000); (118777/200000, -131988297919/500000000000); (118777/200000, -230885999277/1000000000000); (118777/200000, -134141908357/500000000000)` |
| 70 | 109 | k | 105807/200000 | 107817/125000 | 105807/200000 | 533899/626899 | 105807/200000 | 851651/1000000 | `(-277757/500000, 11502096359/25000000000); (-391263/1000000, 59527430319/200000000000); (-626899/1000000, 13286721359/25000000000); (-57831/125000, 73804430319/200000000000); (-277757/500000, 231257/500000); (-391263/1000000, 298263/1000000); (-626899/1000000, 533899/1000000); (-57831/125000, 23103/62500); (-277757/500000, 3655110849/8000000000); (-391263/1000000, 3680526917/12500000000); (-626899/1000000, 4226190849/8000000000); (-57831/125000, 4572839417/12500000000)` |
| 71 | 118 | k | 105807/200000 | 851651/1000000 | 105807/200000 | 135404845897/159164400000 | 105807/200000 | 212681/250000 | `(-397911/500000, 47161123749/100000000000); (-39203/50000, 22998922153/50000000000); (-397911/500000, 49922225433/100000000000); (-39203/50000, 4875894599/10000000000); (-867207/1000000, 98941128261/200000000000); (-171089/200000, 154583311/320000000); (-867207/1000000, 105642554721/200000000000); (-171089/200000, 20663199167/40000000000); (-397911/500000, 47668116651/100000000000); (-39203/50000, 46491916651/100000000000); (-397911/500000, 10085843667/20000000000); (-39203/50000, 9850603667/20000000000); (-867207/1000000, 19991022813/40000000000); (-171089/200000, 19520542813/40000000000); (-867207/1000000, 4266261621/8000000000); (-171089/200000, 4172165621/8000000000); (-397911/500000, 332585707293/500000000000); (-39203/50000, 163384655039/250000000000); (-397911/500000, 66875930223/100000000000); (-39203/50000, 3285632539/5000000000); (-867207/1000000, 688265818401/1000000000000); (-171089/200000, 676633023971/1000000000000); (-867207/1000000, 139549964301/200000000000); (-171089/200000, 27444681083/40000000000); (-397911/500000, 673436341841/1000000000000); (-39203/50000, 661674341841/1000000000000); (-397911/500000, 135404845897/200000000000); (-39203/50000, 133052445897/200000000000); (-867207/1000000, 87066343207/125000000000); (-171089/200000, 85596093207/125000000000); (-867207/1000000, 17650368719/25000000000); (-171089/200000, 17356318719/25000000000)` |
| 72 | 119 | k | 105807/200000 | 212681/250000 | 105807/200000 | 94645287513/112796500000 | 105807/200000 | 839081/1000000 | `(-676779/1000000, 72611774229/200000000000); (-55487/200000, -6379667003/200000000000); (-676779/1000000, 91520085783/200000000000); (-55487/200000, 12528644551/200000000000); (-187041/250000, 38811422091/100000000000); (-17441/50000, -27371941/4000000000); (-187041/250000, 100568876937/200000000000); (-17441/50000, 4315487141/40000000000); (-676779/1000000, 36682111281/100000000000); (-55487/200000, -3252288719/100000000000); (-676779/1000000, 23068133529/50000000000); (-55487/200000, 3100933529/50000000000); (-187041/250000, 15675058503/40000000000); (-17441/50000, -298701497/40000000000); (-187041/250000, 10132132527/20000000000); (-17441/50000, 2145252527/20000000000); (-676779/1000000, 548629371271/1000000000000); (-55487/200000, 153672165111/1000000000000); (-676779/1000000, 280457242589/500000000000); (-55487/200000, 82978639509/500000000000); (-187041/250000, 143421180259/250000000000); (-17441/50000, 44681878719/250000000000); (-187041/250000, 151539610237/250000000000); (-17441/50000, 52800308697/250000000000); (-676779/1000000, 555586611171/1000000000000); (-55487/200000, 156242611171/1000000000000); (-676779/1000000, 283935862539/500000000000); (-55487/200000, 84263862539/500000000000); (-187041/250000, 72580245117/125000000000); (-17441/50000, 22662245117/125000000000); (-187041/250000, 38319730053/62500000000); (-17441/50000, 13360730053/62500000000)` |
| 73 | 121 | a | 180733/1000000 | 26093/125000 | 180733/1000000 | 6283/31250 | 180733/1000000 | 6283/31250 | `(-1/1, 190071/1000000); (-1/1, 6283/31250)` |
| 74 | 123 | f | 373101/1000000 | 67169/125000 | 398381/1000000 | 67169/125000 | 398381/1000000 | 67169/125000 | `(1/1, -398381/1000000); (1/1, -442149/1000000)` |
| 75 | 646 | c | 421951/500000 | 88767/100000 | 421951/500000 | 573923/657133 | 421951/500000 | 6987/8000 | `(-621671/1000000, 131869/250000); (-305343/500000, 131869/250000); (-334059/500000, 573923/1000000); (-657133/1000000, 573923/1000000)` |
| 76 | 671 | u | 62959/250000 | 32559/50000 | 62959/250000 | 2553476713/4000000000 | 62959/250000 | 63837/100000 | `(-197803/200000, 549104067687/1000000000000); (-197803/200000, 113581721597/200000000000); (-197803/200000, 143265501339/250000000000); (-197803/200000, 116706239621/200000000000); (-197803/200000, 143539854363/250000000000); (-197803/200000, 2371855831/4000000000); (-197803/200000, 309152980563/500000000000); (-197803/200000, 5030201231/8000000000); (-1/1, 558374331157/1000000000000); (-1/1, 14437565809/25000000000); (-1/1, 291166134413/500000000000); (-1/1, 7414065281/12500000000); (-1/1, 291714840461/500000000000); (-1/1, 4820463857/8000000000); (-1/1, 156894056149/250000000000); (-1/1, 2553476713/4000000000)` |
| 77 | 726 | k | 105807/200000 | 839081/1000000 | 105807/200000 | 132401645897/159164400000 | 105807/200000 | 166371/200000 | `(-397911/500000, 45659523749/100000000000); (-39203/50000, 22248122153/50000000000); (-397911/500000, 48420625433/100000000000); (-39203/50000, 4725734599/10000000000); (-867207/1000000, 95937928261/200000000000); (-171089/200000, 149778191/320000000); (-867207/1000000, 102639354721/200000000000); (-171089/200000, 20062559167/40000000000); (-397911/500000, 46166516651/100000000000); (-39203/50000, 44990316651/100000000000); (-397911/500000, 9785523667/20000000000); (-39203/50000, 9550283667/20000000000); (-867207/1000000, 19390382813/40000000000); (-171089/200000, 18919902813/40000000000); (-867207/1000000, 4146133621/8000000000); (-171089/200000, 4052037621/8000000000); (-397911/500000, 325077707293/500000000000); (-39203/50000, 159630655039/250000000000); (-397911/500000, 65374330223/100000000000); (-39203/50000, 3210552539/5000000000); (-867207/1000000, 673249818401/1000000000000); (-171089/200000, 661617023971/1000000000000); (-867207/1000000, 136546764301/200000000000); (-171089/200000, 26844041083/40000000000); (-397911/500000, 658420341841/1000000000000); (-39203/50000, 646658341841/1000000000000); (-397911/500000, 132401645897/200000000000); (-39203/50000, 130049245897/200000000000); (-867207/1000000, 85189343207/125000000000); (-171089/200000, 83719093207/125000000000); (-867207/1000000, 17274968719/25000000000); (-171089/200000, 16980918719/25000000000)` |
| 78 | 0 | a | 180733/1000000 | 6283/31250 | 46500/237497 | 6283/31250 | 195791/1000000 | 6283/31250 | `(445521/1000000, -93/1000); (401753/1000000, -93/1000); (237497/500000, -93/1000); (215613/500000, -93/1000)` |
| 79 | 0 | b | 398381/1000000 | 442149/1000000 | 398381/1000000 | 20649321/50264000 | 398381/1000000 | 205409/500000 | `(-195791/1000000, 36114208241/500000000000); (-6283/31250, 1197993133/15625000000); (-195791/1000000, 623991717/8000000000); (-6283/31250, 20649321/250000000)` |
| 80 | 0 | c | 421951/500000 | 6987/8000 | 5409277823/6283000000 | 6987/8000 | 430469/500000 | 6987/8000 | `(195791/1000000, -170999414371/1000000000000); (6283/31250, -5409277823/31250000000); (195791/1000000, -86717233519/500000000000); (6283/31250, -2743709747/15625000000)` |

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
| 7 | a | 195791/1000000 | 6283/31250 | `(-398381/1000000, 22191294851/500000000000); (-205409/500000, 13619556239/250000000000); (-398381/1000000, 62886192009/1000000000000); (-205409/500000, 36779744301/500000000000)` |

## Stage 152

| Property | Value |
| --- | --- |
| Scope | root/ACP+/HBP-/HEQ-/CFQ+/PQR+/PQS+/PRS-/QRS-/CRS- |
| Packet | forest:root/ACP+/HBP-/HEQ-/CFQ+/PQR+/PQS+/PRS-/QRS-/CRS- |
| Index | 0 |
| Context | 60 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 140 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 17183/125000 | 59/125 | 26527/125000 | 36137/100000 |
| b | 40433/125000 | 84567/125000 | 94119/250000 | 471341/1000000 |
| c | 13857/20000 | 1/1 | 90849/125000 | 49201/62500 |
| e | 17183/125000 | 59/125 | 11321/50000 | 444261/1000000 |
| f | 40433/125000 | 84567/125000 | 43623/125000 | 471341/1000000 |
| h | 13857/20000 | 1/1 | 440063/500000 | 476649/500000 |
| p | 107821/1000000 | 235733/500000 | 31373/250000 | 49943/200000 |
| q | 82827/500000 | 703163/1000000 | 50187/200000 | 502179/1000000 |
| u | 34859/250000 | 678129/1000000 | 236861/1000000 | 645843/1000000 |
| v | 81567/500000 | 416689/500000 | 11321/50000 | 286709/500000 |
| r | 40433/62500 | 1/1 | 677621/1000000 | 412749/500000 |
| w | 274929/500000 | 1/1 | 418891/500000 | 898539/1000000 |
| j | 51267/100000 | 892179/1000000 | 373683/500000 | 816347/1000000 |
| k | 412393/1000000 | 8033/8963 | 508367/1000000 | 182271/250000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 0 | A_ABC | bitt ["actual-area","ABC",[]] | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 7 | A_ABH | bitt ["actual-area","ABH",["P"]] | `1/1 * b * h + -1/1 * a * b + -279/1000` |
| 10 | A_ABP | bitt ["actual-area","ABP",[]] | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 21 | A_ACP | bitt ["actual-area","ACP",[]] | `1/1 * c * q + -1/1 * a * c + 1/1 * a * p + -93/1000` |
| 32 | A_AHP | bitt ["actual-area","AHP",[]] | `1/1 * h * p + -1/1 * a * p + -93/1000` |
| 37 | A_BCE | bitt ["actual-area","BCE",[]] | `1/1 * c * e + -1/1 * b * e + -93/1000` |
| 40 | A_BCP | bitt ["actual-area","BCP",[]] | `1/1 * c * q + -1/1 * b * q + -93/1000` |
| 41 | A_BCQ | bitt ["actual-area","BCQ",[]] | `1/1 * c * v + -1/1 * b * v + -93/1000` |
| 54 | A_BHP | bitt ["actual-area","BHP",[]] | `-1/1 * b * q + -1/1 * h * p + 1/1 * b * h + -93/1000` |
| 55 | A_BHQ | bitt ["actual-area","BHQ",[]] | `1/1 * b * v + 1/1 * h * u + -1/1 * b * h + -93/1000` |
| 61 | A_BRS | bitt ["actual-area","BRS",[]] | `-1/1 * r * k + 1/1 * b * k + 1/1 * w * j + -1/1 * b * w + -93/1000` |
| 68 | A_CER | bitt ["actual-area","CER",["S"]] | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -279/1000` |
| 72 | A_CFQ | bitt ["actual-area","CFQ",[]] | `1/1 * f * v + -1/1 * c * v + -1/1 * u + 1/1 * c + -93/1000` |
| 76 | A_CHQ | bitt ["actual-area","CHQ",[]] | `1/1 * c * v + 1/1 * h * u + -1/1 * c * h + -93/1000` |
| 79 | A_CPQ | bitt ["actual-area","CPQ",[]] | `-1/1 * p * v + 1/1 * c * v + 1/1 * q * u + -1/1 * c * q + -93/1000` |
| 84 | A_CRS | bitt ["actual-area","CRS",[]] | `-1/1 * r * k + 1/1 * c * k + 1/1 * w * j + -1/1 * c * w + -93/1000` |
| 89 | A_EFR | bitt ["actual-area","EFR",["S"]] | `-1/1 * f * w + 1/1 * e * f + 1/1 * w + 1/1 * r + -1279/1000 + -1/1 * e * r` |
| 90 | A_EFS | bitt ["actual-area","EFS",[]] | `-1/1 * f * k + 1/1 * e * f + 1/1 * k + 1/1 * j + -1093/1000 + -1/1 * e * j` |
| 97 | A_EQR | bitt ["actual-area","EQR",["S"]] | `-1/1 * u * w + 1/1 * e * u + 1/1 * w + 1/1 * v * r + -1/1 * v + -1/1 * e * r + -279/1000` |
| 99 | A_ERS | bitt ["actual-area","ERS",[]] | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 102 | A_FHR | bitt ["actual-area","FHR",[]] | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 109 | A_FRS | bitt ["actual-area","FRS",[]] | `-1/1 * r * k + 1/1 * r + 1/1 * f * k + 1/1 * w * j + -1/1 * f * w + -1/1 * j + -93/1000` |
| 117 | A_PQS | bitt ["actual-area","PQS",[]] | `1/1 * u * k + -1/1 * q * u + -1/1 * p * k + -1/1 * v * j + 1/1 * p * v + 1/1 * q * j + -93/1000` |
| 121 | ea | bitt ["contact-order","ea"] | `1/1 * e + -1/1 * a` |
| 123 | fb | bitt ["contact-order","fb"] | `1/1 * f + -1/1 * b` |
| 126 | lower-area | bitt ["endpoint-lower","13857/20000"] | `1/1 * c * h + -13857/20000` |
| 671 | AREA_lo_CPR | bitt ["earlier-area",{"direction":"lo","ref":"140:130","triangle":"CPR","value":"207587/500000"}] | `-1/1 * p * w + 1/1 * c * w + 1/1 * q * r + -1/1 * c * q + -207587/500000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 61 | j | 51267/100000 | 892179/1000000 | 68732286169/125000000000 | 892179/1000000 | 274929/500000 | 892179/1000000 | `(274929/500000, -50531694683/125000000000); (274929/500000, -56598574993/125000000000); (274929/500000, -13746449469/25000000000); (274929/500000, -14959825531/25000000000); (1/1, -68732286169/125000000000); (1/1, -94665733507/125000000000); (1/1, -86932838831/125000000000); (1/1, -112866286169/125000000000); (274929/500000, -314131120755491/560187500000000); (274929/500000, -245621410619509/560187500000000); (274929/500000, -491395331755491/560187500000000); (274929/500000, -422885621619509/560187500000000); (1/1, -791394143/1120375000); (1/1, -832438763/1120375000); (1/1, -229184513/224075000); (1/1, -237393437/224075000)` |
| 1 | 68 | c | 13857/20000 | 1/1 | 13857/20000 | 6494531/8250000 | 13857/20000 | 49201/62500 | `(-206197/500000, 710658943/3906250000); (-38929/500000, -2155751/62500000); (-206197/500000, 66697/500000); (-38929/500000, -100571/500000); (-107817/125000, 4938052261/7812500000); (-66/125, 6494531/15625000); (-107817/125000, 36471/62500); (-66/125, 249/1000)` |
| 2 | 68 | r | 40433/62500 | 1/1 | 40433/62500 | 308479831/343660000 | 40433/62500 | 897631/1000000 | `(-17183/125000, -148691829/10000000000); (-17183/125000, -1680786097/31250000000); (-59/125, 2169140847/10000000000); (-59/125, 6548966771/31250000000); (-17183/125000, 308479831/2500000000); (-17183/125000, 328108283/7812500000); (-59/125, 443969/1250000); (-59/125, 4771093/15625000)` |
| 3 | 68 | w | 274929/500000 | 1/1 | 16082801/19196875 | 1/1 | 418891/500000 | 1/1 | `(6143/20000, -17042961137/62500000000); (13299/62500, -507256739/1953125000); (6143/20000, -16082801/62500000); (13299/62500, -3324751/15625000); (6143/20000, -38393751923/125000000000); (13299/62500, -7354452189/25000000000); (6143/20000, -46957079/125000000); (13299/62500, -8277897/25000000)` |
| 4 | 72 | u | 34859/250000 | 678129/1000000 | 34859/250000 | 8452004111/12500000000 | 34859/250000 | 676161/1000000 | `(-1/1, 134897646069/250000000000); (-1/1, 38660142577/62500000000); (-1/1, 149297157981/250000000000); (-1/1, 8452004111/12500000000); (-1/1, 73002958523/250000000000); (-1/1, 19233455359/62500000000); (-1/1, 146563567827/250000000000); (-1/1, 7524721537/12500000000)` |
| 5 | 79 | v | 81567/500000 | 416689/500000 | 47882299803/292514500000 | 416689/500000 | 40923/250000 | 416689/500000 | `(585029/1000000, -46168810689/250000000000); (135879/200000, -5007683703/25000000000); (27673/125000, -46168810689/250000000000); (1263/4000, -5007683703/25000000000); (585029/1000000, -241070124241/500000000000); (135879/200000, -27424746407/50000000000); (27673/125000, -241070124241/500000000000); (1263/4000, -27424746407/50000000000); (585029/1000000, -47882299803/500000000000); (135879/200000, -11139670497/100000000000); (27673/125000, -47882299803/500000000000); (1263/4000, -11139670497/100000000000); (585029/1000000, -104735087307/1000000000000); (135879/200000, -34217953393/200000000000); (27673/125000, -104735087307/1000000000000); (1263/4000, -34217953393/200000000000)` |
| 6 | 84 | j | 274929/500000 | 892179/1000000 | 1668670531/2240750000 | 892179/1000000 | 186173/250000 | 892179/1000000 | `(418891/500000, -327259673677/500000000000); (418891/500000, -21708175179/31250000000); (418891/500000, -757907509633/1000000000000); (418891/500000, -798049768007/1000000000000); (1/1, -383456044327/500000000000); (1/1, -1606176193/1953125000); (1/1, -870300250933/1000000000000); (1/1, -185150074619/200000000000); (418891/500000, -56673059837281/89630000000000); (418891/500000, -175558186893633/280093750000000); (418891/500000, -76812031827281/89630000000000); (418891/500000, -238492474362383/280093750000000); (1/1, -1668670531/2240750000); (1/1, -845305313/1120375000); (1/1, -8688579323/8963000000); (1/1, -8776339703/8963000000)` |
| 7 | 89 | f | 40433/125000 | 84567/125000 | 40433/125000 | 20634960509/35939000000 | 40433/125000 | 574167/1000000 | `(-350159/500000, 57021821/488281250); (-182891/500000, -6227501/62500000); (-350159/500000, 41627631527/125000000000); (-182891/500000, 1022849/31250000); (-107817/125000, 2179677261/7812500000); (-66/125, 977781/15625000); (-107817/125000, 61904881527/125000000000); (-66/125, 12184323/62500000)` |
| 8 | 99 | j | 186173/250000 | 892179/1000000 | 186173/250000 | 9500949223/11000000000 | 186173/250000 | 863723/1000000 | `(-350159/500000, 31890516757/62500000000); (-182891/500000, 18364222669/62500000000); (-350159/500000, 579173793199/1000000000000); (-182891/500000, 278883908983/1000000000000); (-107817/125000, 42029141757/62500000000); (-66/125, 28502847669/62500000000); (-107817/125000, 741391793199/1000000000000); (-66/125, 441101908983/1000000000000); (-350159/500000, 2970879178871/8752929687500); (-182891/500000, 68900093537/560187500000); (-350159/500000, 593398607626501/1120375000000000); (-182891/500000, 128480664299/560187500000); (-107817/125000, 35126095415343/70023437500000); (-66/125, 39943147353/140046875000); (-107817/125000, 775143599376501/1120375000000000); (-66/125, 109676580087/280093750000)` |
| 9 | 109 | k | 412393/1000000 | 8033/8963 | 412393/1000000 | 160389/191389 | 412393/1000000 | 838027/1000000 | `(-40433/125000, 20266654537/125000000000); (-72761/1000000, -958024489/20000000000); (-574167/1000000, 51604529537/125000000000); (-40433/125000, 4056035511/20000000000); (-40433/125000, 3601/15625); (-72761/1000000, -20239/1000000); (-574167/1000000, 481167/1000000); (-40433/125000, 71412132769/500000000000); (-72761/1000000, -8401274401/125000000000); (-574167/1000000, 196763632769/500000000000); (-40433/125000, 22936600599/125000000000)` |
| 10 | 117 | v | 40923/250000 | 416689/500000 | 40923/250000 | 97833388469/136613000000 | 40923/250000 | 89517/125000 | `(-636871/1000000, 20300882119/1000000000000); (-136613/500000, -64831885183/500000000000); (-636871/1000000, 345631429423/1000000000000); (-136613/500000, 97833388469/500000000000); (-636871/1000000, 76365935947/500000000000); (-136613/500000, 2767219409/1000000000000); (-636871/1000000, 189567901173/1000000000000); (-136613/500000, 2475203043/62500000000); (-377951/500000, 40018843393/1000000000000); (-392257/1000000, -27486452273/250000000000); (-377951/500000, 107332406119/250000000000); (-392257/1000000, 279364971991/1000000000000); (-377951/500000, 10778114573/62500000000); (-392257/1000000, 22485180683/1000000000000); (-377951/500000, 136633048113/500000000000); (-392257/1000000, 123301443741/1000000000000); (-636871/1000000, 33757301029/1000000000000); (-136613/500000, -135493513693/500000000000); (-636871/1000000, 359087848333/1000000000000); (-136613/500000, 27171759959/500000000000); (-636871/1000000, 197318349727/500000000000); (-136613/500000, 89892371039/1000000000000); (-636871/1000000, 431472728733/1000000000000); (-136613/500000, 63364200159/500000000000); (-377951/500000, 53475262303/1000000000000); (-392257/1000000, -1963039579/7812500000); (-377951/500000, 221393021693/500000000000); (-392257/1000000, 138041714971/1000000000000); (-377951/500000, 51794332591/125000000000); (-392257/1000000, 109610332313/1000000000000); (-377951/500000, 257585461893/500000000000); (-392257/1000000, 210426595371/1000000000000)` |
| 11 | 123 | b | 40433/125000 | 84567/125000 | 40433/125000 | 574167/1000000 | 40433/125000 | 574167/1000000 | `(-1/1, 40433/125000); (-1/1, 574167/1000000)` |
| 12 | 126 | h | 13857/20000 | 1/1 | 346425/393608 | 1/1 | 440063/500000 | 1/1 | `(13857/20000, -13857/20000); (49201/62500, -13857/20000)` |
| 13 | 671 | p | 107821/1000000 | 235733/500000 | 107821/1000000 | 89936348529/200000000000 | 107821/1000000 | 224841/500000 | `(-418891/500000, 4927377991/31250000000); (-418891/500000, 1381888291/6250000000); (-418891/500000, 66496303707/500000000000); (-418891/500000, 4553001999/31250000000); (-418891/500000, 99603025237/500000000000); (-418891/500000, 131316040661/500000000000); (-418891/500000, 309277681003/1000000000000); (-418891/500000, 321981137557/1000000000000); (-1/1, 67517209253/250000000000); (-1/1, 2725021341/7812500000); (-1/1, 122692674357/500000000000); (-1/1, 2135911477/7812500000); (-1/1, 155799395887/500000000000); (-1/1, 39033268641/100000000000); (-1/1, 421670422303/1000000000000); (-1/1, 89936348529/200000000000)` |
| 14 | 0 | a | 17183/125000 | 59/125 | 3875/19323 | 59/125 | 100269/500000 | 59/125 | `(184693/500000, -93/1000); (118683/1000000, -93/1000); (57969/125000, -93/1000); (213049/1000000, -93/1000)` |
| 15 | 7 | b | 40433/125000 | 574167/1000000 | 139500/399731 | 574167/1000000 | 43623/125000 | 574167/1000000 | `(169897/250000, -279/1000); (204063/500000, -279/1000); (399731/500000, -279/1000); (66/125, -279/1000)` |
| 16 | 21 | q | 82827/500000 | 703163/1000000 | 40172098323/196804000000 | 703163/1000000 | 102061/500000 | 703163/1000000 | `(13857/20000, -105160272801/500000000000); (13857/20000, -46141711/125000000); (49201/62500, -22924451451/100000000000); (49201/62500, -10341861/25000000); (13857/20000, -2215069131/15625000000); (13857/20000, -3246489/15625000); (49201/62500, -40172098323/250000000000); (49201/62500, -15769753/62500000)` |
| 17 | 32 | p | 107821/1000000 | 224841/500000 | 46500/399731 | 224841/500000 | 14541/125000 | 224841/500000 | `(169897/250000, -93/1000); (204063/500000, -93/1000); (399731/500000, -93/1000); (66/125, -93/1000)` |
| 18 | 37 | e | 17183/125000 | 59/125 | 11625/54779 | 59/125 | 26527/125000 | 59/125 | `(171933/500000, -93/1000); (118683/1000000, -93/1000); (54779/125000, -93/1000); (213049/1000000, -93/1000)` |
| 19 | 40 | q | 102061/500000 | 703163/1000000 | 11625/54779 | 703163/1000000 | 26527/125000 | 703163/1000000 | `(171933/500000, -93/1000); (118683/1000000, -93/1000); (54779/125000, -93/1000); (213049/1000000, -93/1000)` |
| 20 | 41 | v | 40923/250000 | 89517/125000 | 11625/54779 | 89517/125000 | 26527/125000 | 89517/125000 | `(171933/500000, -93/1000); (118683/1000000, -93/1000); (54779/125000, -93/1000); (213049/1000000, -93/1000)` |
| 21 | 54 | p | 14541/125000 | 224841/500000 | 14541/125000 | 44914946991/125000000000 | 14541/125000 | 8983/25000 | `(-440063/500000, 1751123793/12500000000); (-440063/500000, 29049188097/100000000000); (-1/1, 2842562679/15625000000); (-1/1, 44914946991/125000000000); (-440063/500000, -3905343051/125000000000); (-440063/500000, 8606314821/1000000000000); (-1/1, 1323920451/125000000000); (-1/1, 77434009779/1000000000000)` |
| 22 | 54 | q | 26527/125000 | 703163/1000000 | 26527/125000 | 121613/191389 | 26527/125000 | 19857/31250 | `(-43623/125000, 3492706083/31250000000); (-574167/1000000, 154978003857/500000000000); (-43623/125000, 17457/125000); (-574167/1000000, 364839/1000000); (-43623/125000, -1595265349/15625000000); (-574167/1000000, 48046215361/500000000000); (-43623/125000, -12917/125000); (-574167/1000000, 121847/1000000)` |
| 23 | 55 | u | 34859/250000 | 676161/1000000 | 1877873577/11001575000 | 676161/1000000 | 170691/1000000 | 676161/1000000 | `(440063/500000, -4076123793/12500000000); (440063/500000, -47649188097/100000000000); (1/1, -5748812679/15625000000); (1/1, -68164946991/125000000000); (440063/500000, -1877873577/12500000000); (440063/500000, -18715764633/100000000000); (1/1, -3000999909/15625000000); (1/1, -31998167661/125000000000)` |
| 24 | 68 | r | 40433/62500 | 897631/1000000 | 40433/62500 | 437959639/530540000 | 40433/62500 | 412749/500000 | `(-26527/125000, 1253585969/10000000000); (-26527/125000, 2072701117/31250000000); (-59/125, 3053499413/10000000000); (-59/125, 8463517409/31250000000); (-26527/125000, 437959639/2500000000); (-26527/125000, 787842427/7812500000); (-59/125, 443969/1250000); (-59/125, 4771093/15625000)` |
| 25 | 72 | u | 170691/1000000 | 676161/1000000 | 170691/1000000 | 81125449177/125000000000 | 170691/1000000 | 162251/250000 | `(-1/1, 32591273789/62500000000); (-1/1, 9309381337/15625000000); (-1/1, 71832946059/125000000000); (-1/1, 81125449177/125000000000); (-1/1, 20957461719/62500000000); (-1/1, 5657914027/15625000000); (-1/1, 64357103889/125000000000); (-1/1, 67705492667/125000000000)` |
| 26 | 76 | u | 170691/1000000 | 162251/250000 | 413240943/1760252000 | 162251/250000 | 117381/500000 | 162251/250000 | `(440063/500000, -1111522887/2000000000); (440063/500000, -3867433991/6250000000); (1/1, -1597040361/2500000000); (1/1, -5571532573/7812500000); (440063/500000, -413240943/2000000000); (440063/500000, -1388097199/6250000000); (1/1, -724187931/2500000000); (1/1, -2472361583/7812500000)` |
| 27 | 84 | j | 186173/250000 | 863723/1000000 | 373683062053/500000000000 | 863723/1000000 | 373683/500000 | 863723/1000000 | `(418891/500000, -327259673677/500000000000); (418891/500000, -21708175179/31250000000); (418891/500000, -182040091341/250000000000); (418891/500000, -384151311869/500000000000); (1/1, -383456044327/500000000000); (1/1, -1606176193/1953125000); (1/1, -105069138333/125000000000); (1/1, -448001614413/500000000000); (418891/500000, -317486691403/500000000000); (418891/500000, -19842195723/31250000000); (418891/500000, -196154966049/250000000000); (418891/500000, -392298372263/500000000000); (1/1, -373683062053/500000000000); (1/1, -1489552477/1953125000); (1/1, -112126575687/125000000000); (1/1, -456148674807/500000000000)` |
| 28 | 89 | e | 26527/125000 | 59/125 | 26527/125000 | 111517/251017 | 26527/125000 | 444261/1000000 | `(-40433/125000, -4080144803/62500000000); (-72761/1000000, -137658388797/500000000000); (-251017/500000, 7080480197/62500000000); (-251331/1000000, -48373388797/500000000000); (-40433/125000, 2779/62500); (-72761/1000000, -206239/1000000); (-251017/500000, 111517/500000); (-251331/1000000, -27669/1000000)` |
| 29 | 89 | f | 40433/125000 | 574167/1000000 | 40433/125000 | 23207132277/49236500000 | 40433/125000 | 471341/1000000 | `(-312783/500000, 33408949/488281250); (-393521/1000000, -5105930013/62500000000); (-312783/500000, 13068507277/62500000000); (-393521/1000000, 8771716511/500000000000); (-98473/125000, 1801871309/7812500000); (-555739/1000000, 5032694987/62500000000); (-98473/125000, 23207132277/62500000000); (-555739/1000000, 89880716511/500000000000)` |
| 30 | 89 | r | 40433/62500 | 412749/500000 | 8340933809/12309125000 | 412749/500000 | 677621/1000000 | 412749/500000 | `(98473/125000, -40222880039/62500000000); (555739/1000000, -71063484593/125000000000); (98473/125000, -368036452003/500000000000); (555739/1000000, -626700581661/1000000000000); (98473/125000, -8340933809/15625000000); (555739/1000000, -57345194987/125000000000); (98473/125000, -81289362293/125000000000); (555739/1000000, -540942575999/1000000000000)` |
| 31 | 90 | k | 412393/1000000 | 838027/1000000 | 42991075493/84567000000 | 838027/1000000 | 508367/1000000 | 838027/1000000 | `(84567/125000, -27224549177/62500000000); (84567/125000, -266978563211/500000000000); (528659/1000000, -2021054607/5000000000); (528659/1000000, -18730445701/40000000000); (84567/125000, -42991075493/125000000000); (84567/125000, -469293003599/1000000000000); (528659/1000000, -19534171157/62500000000); (528659/1000000, -201798509851/500000000000)` |
| 32 | 97 | u | 117381/500000 | 162251/250000 | 117381/500000 | 63598/98473 | 117381/500000 | 645843/1000000 | `(-312783/500000, 173283/500000); (-393521/1000000, 37865487011/200000000000); (-312783/500000, 2301409679/12500000000); (-393521/1000000, 8599747/320000000); (-393521/1000000, 15501331659/100000000000); (-312783/500000, 1616443451/6250000000); (-393521/1000000, 10732523/160000000); (-98473/125000, 31799/62500); (-555739/1000000, 70309087011/200000000000); (-98473/125000, 4329134679/12500000000); (-555739/1000000, 60509507/320000000); (-555739/1000000, 31723131659/100000000000); (-98473/125000, 2630305951/6250000000); (-555739/1000000, 36687403/160000000)` |
| 33 | 99 | j | 373683/500000 | 863723/1000000 | 373683/500000 | 321552529099/393892000000 | 373683/500000 | 816347/1000000 | `(-312783/500000, 437093136771/1000000000000); (-393521/1000000, 139927285913/500000000000); (-312783/500000, 240443529099/500000000000); (-393521/1000000, 72333593697/250000000000); (-98473/125000, 599311136771/1000000000000); (-555739/1000000, 221036285913/500000000000); (-98473/125000, 321552529099/500000000000); (-555739/1000000, 112888093697/250000000000); (-312783/500000, 330817675631/1000000000000); (-393521/1000000, 86789555343/500000000000); (-312783/500000, 211680364439/500000000000); (-393521/1000000, 57952011367/250000000000); (-98473/125000, 493035675631/1000000000000); (-555739/1000000, 167898555343/500000000000); (-98473/125000, 292789364439/500000000000); (-555739/1000000, 98506511367/250000000000)` |
| 34 | 99 | k | 508367/1000000 | 838027/1000000 | 508367/1000000 | 4470410609/5453187500 | 508367/1000000 | 40989/50000 | `(-322379/1000000, 33363305677/250000000000); (-322379/1000000, 149637201233/1000000000000); (-87251/500000, 25517839319/250000000000); (-87251/500000, 10492652167/125000000000); (-322379/1000000, 4360875123/25000000000); (-322379/1000000, 38123796689/200000000000); (-87251/500000, 4470410609/31250000000); (-87251/500000, 31230749887/250000000000); (-322379/1000000, 45150527231/500000000000); (-322379/1000000, 30622932283/250000000000); (-87251/500000, 5891918903/100000000000); (-87251/500000, 11359149047/200000000000); (-322379/1000000, 7505804801/62500000000); (-322379/1000000, 76141775743/500000000000); (-87251/500000, 11088876423/125000000000); (-87251/500000, 86587567589/1000000000000)` |
| 35 | 102 | h | 440063/500000 | 1/1 | 440063/500000 | 168808497169/177078500000 | 440063/500000 | 476649/500000 | `(-354157/1000000, 19601792697/62500000000); (-5157/25000, 94869997169/500000000000); (-251017/500000, 28844105197/62500000000); (-354157/1000000, 168808497169/500000000000); (-354157/1000000, 261157/1000000); (-5157/25000, 354/3125); (-251017/500000, 204517/500000)` |
| 36 | 102 | w | 418891/500000 | 1/1 | 418891/500000 | 72661205929/80866000000 | 418891/500000 | 898539/1000000 | `(-40433/125000, 136459108109/500000000000); (-471341/1000000, 5038357609/12500000000); (-40433/125000, 123501920107/500000000000); (-471341/1000000, 4849683607/12500000000); (-40433/125000, 72661205929/250000000000); (-471341/1000000, 210397608109/500000000000); (-40433/125000, 63477497967/250000000000); (-471341/1000000, 197440420107/500000000000)` |
| 37 | 109 | k | 508367/1000000 | 40989/50000 | 508367/1000000 | 183012239589/251017000000 | 508367/1000000 | 182271/250000 | `(-354157/1000000, 48098116341/250000000000); (-5157/25000, 1370075531/20000000000); (-251017/500000, 85067366341/250000000000); (-354157/1000000, 4327615531/20000000000); (-354157/1000000, 109073739589/500000000000); (-5157/25000, 3410969099/40000000000); (-251017/500000, 183012239589/500000000000); (-354157/1000000, 9326049099/40000000000); (-354157/1000000, 90601252753/500000000000); (-5157/25000, 14328454173/250000000000); (-251017/500000, 164539752753/500000000000); (-354157/1000000, 51297704173/250000000000); (-354157/1000000, 211148597937/1000000000000); (-5157/25000, 39137673117/500000000000); (-251017/500000, 359025597937/1000000000000); (-354157/1000000, 113076173117/500000000000)` |
| 38 | 117 | v | 26527/125000 | 89517/125000 | 26527/125000 | 100350811989/175004750000 | 26527/125000 | 286709/500000 | `(-315519/500000, 37995353871/500000000000); (-194023/500000, -23769203161/500000000000); (-315519/500000, 146464410687/500000000000); (-194023/500000, 16939970731/100000000000); (-315519/500000, 197732756973/1000000000000); (-194023/500000, 74203642909/1000000000000); (-315519/500000, 240698102757/1000000000000); (-194023/500000, 117168988693/1000000000000); (-700019/1000000, 45314789819/500000000000); (-457027/1000000, -16449767213/500000000000); (-700019/1000000, 168380502159/500000000000); (-457027/1000000, 106615945127/500000000000); (-700019/1000000, 212371628869/1000000000000); (-457027/1000000, 17768502961/200000000000); (-700019/1000000, 284530285701/1000000000000); (-457027/1000000, 161001171637/1000000000000); (-315519/500000, 2553277623/25000000000); (-194023/500000, -9378809301/125000000000); (-315519/500000, 39883652319/125000000000); (-194023/500000, 17738454903/125000000000); (-315519/500000, 78651429807/250000000000); (-194023/500000, 1374441399/10000000000); (-315519/500000, 89392766253/250000000000); (-194023/500000, 45102371421/250000000000); (-700019/1000000, 7298123551/62500000000); (-457027/1000000, -3774475157/62500000000); (-700019/1000000, 45362675187/125000000000); (-457027/1000000, 23217477771/125000000000); (-700019/1000000, 82311147781/250000000000); (-457027/1000000, 38020752949/250000000000); (-700019/1000000, 100350811989/250000000000); (-457027/1000000, 56060417157/250000000000)` |
| 39 | 121 | a | 100269/500000 | 59/125 | 100269/500000 | 444261/1000000 | 100269/500000 | 444261/1000000 | `(-1/1, 26527/125000); (-1/1, 444261/1000000)` |
| 40 | 123 | b | 43623/125000 | 574167/1000000 | 43623/125000 | 471341/1000000 | 43623/125000 | 471341/1000000 | `(-1/1, 40433/125000); (-1/1, 471341/1000000)` |
| 41 | 123 | f | 40433/125000 | 471341/1000000 | 43623/125000 | 471341/1000000 | 43623/125000 | 471341/1000000 | `(1/1, -43623/125000); (1/1, -471341/1000000)` |
| 42 | 126 | c | 13857/20000 | 49201/62500 | 115475/158883 | 49201/62500 | 90849/125000 | 49201/62500 | `(440063/500000, -13857/20000); (476649/500000, -13857/20000)` |
| 43 | 671 | p | 14541/125000 | 8983/25000 | 14541/125000 | 19780973687/56158687500 | 14541/125000 | 176117/500000 | `(-418891/500000, 22910547801/125000000000); (-418891/500000, 27635447799/125000000000); (-418891/500000, 2030935273/12500000000); (-418891/500000, 1364860169/7812500000); (-418891/500000, 1341664049/6250000000); (-418891/500000, 15779090489/62500000000); (-418891/500000, 16027463543/62500000000); (-418891/500000, 1679166853/6250000000); (-898539/1000000, 14215130247/62500000000); (-898539/1000000, 33614058113/125000000000); (-898539/1000000, 25829065423/125000000000); (-898539/1000000, 13908186509/62500000000); (-898539/1000000, 32352993673/125000000000); (-898539/1000000, 9384197823/31250000000); (-898539/1000000, 37574639779/125000000000); (-898539/1000000, 19780973687/62500000000)` |
| 44 | 0 | a | 100269/500000 | 444261/1000000 | 11625/54779 | 444261/1000000 | 26527/125000 | 444261/1000000 | `(23613/62500, -93/1000); (255451/1000000, -93/1000); (54779/125000, -93/1000); (2527/8000, -93/1000)` |
| 45 | 7 | a | 26527/125000 | 444261/1000000 | 26527/125000 | 85164216309/235670500000 | 26527/125000 | 36137/100000 | `(-43623/125000, 1759368249/62500000000); (-471341/1000000, 67919734483/500000000000); (-43623/125000, 3355359327/62500000000); (-471341/1000000, 85164216309/500000000000)` |
| 46 | 7 | b | 43623/125000 | 471341/1000000 | 139500/370541 | 471341/1000000 | 94119/250000 | 471341/1000000 | `(66791/100000, -279/1000); (129689/250000, -279/1000); (370541/500000, -279/1000); (73991/125000, -279/1000)` |
| 47 | 10 | q | 26527/125000 | 19857/31250 | 14784551389/58917625000 | 19857/31250 | 50187/200000 | 19857/31250 | `(94119/250000, -4631486499/31250000000); (94119/250000, -4675242069/25000000000); (471341/1000000, -21042429851/125000000000); (471341/1000000, -22129104781/100000000000); (94119/250000, -6134033767/62500000000); (94119/250000, -5088016577/50000000000); (471341/1000000, -14784551389/125000000000); (471341/1000000, -13604169659/100000000000)` |
| 48 | 32 | p | 14541/125000 | 176117/500000 | 46500/370541 | 176117/500000 | 31373/250000 | 176117/500000 | `(66791/100000, -93/1000); (129689/250000, -93/1000); (370541/500000, -93/1000); (73991/125000, -93/1000)` |
| 49 | 37 | e | 26527/125000 | 444261/1000000 | 4650/20537 | 444261/1000000 | 11321/50000 | 444261/1000000 | `(87579/250000, -93/1000); (255451/1000000, -93/1000); (20537/50000, -93/1000); (2527/8000, -93/1000)` |
| 50 | 41 | v | 26527/125000 | 286709/500000 | 4650/20537 | 286709/500000 | 11321/50000 | 286709/500000 | `(87579/250000, -93/1000); (255451/1000000, -93/1000); (20537/50000, -93/1000); (2527/8000, -93/1000)` |
| 51 | 54 | p | 31373/250000 | 176117/500000 | 31373/250000 | 79350826261/317766000000 | 31373/250000 | 49943/200000 | `(-440063/500000, 35968827729/250000000000); (-440063/500000, 203563515131/1000000000000); (-476649/500000, 42855703197/250000000000); (-476649/500000, 238052478783/1000000000000); (-440063/500000, -109446231/125000000000); (-440063/500000, 11169042691/500000000000); (-476649/500000, 3333991503/125000000000); (-476649/500000, 28413524517/500000000000)` |
| 52 | 54 | q | 50187/200000 | 19857/31250 | 50187/200000 | 118348580001/235670500000 | 50187/200000 | 502179/1000000 | `(-94119/250000, 7993596499/62500000000); (-471341/1000000, 105695348487/500000000000); (-94119/250000, 9141409077/62500000000); (-471341/1000000, 118348580001/500000000000); (-94119/250000, 9282825943/500000000000); (-471341/1000000, 25514701219/250000000000); (-94119/250000, 13920503889/500000000000); (-471341/1000000, 29568905637/250000000000)` |
| 53 | 55 | u | 117381/500000 | 645843/1000000 | 13029262563/55007875000 | 645843/1000000 | 236861/1000000 | 645843/1000000 | `(440063/500000, -42388077507/125000000000); (440063/500000, -200559219873/500000000000); (476649/500000, -45831515241/125000000000); (476649/500000, -217803701699/500000000000); (440063/500000, -13029262563/62500000000); (440063/500000, -59391013857/250000000000); (476649/500000, -1475098143/6250000000); (476649/500000, -6801325477/25000000000)` |

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
| 68 | c | 90849/125000 | 49201/62500 | `(-305681/500000, 20267752659/50000000000); (-393521/1000000, 257741416919/1000000000000); (-305681/500000, 9296818571/25000000000); (-393521/1000000, 96022716511/500000000000); (-672119/1000000, 23305602659/50000000000); (-227139/500000, 318498416919/1000000000000); (-672119/1000000, 10815743571/25000000000); (-227139/500000, 126401216511/500000000000)` |

## Stage 153

| Property | Value |
| --- | --- |
| Scope | root/ACP+/HBP-/HEQ-/CFQ+/PQR+/PQS- |
| Packet | forest:root/ACP+/HBP-/HEQ-/CFQ+/PQR+/PQS- |
| Index | 0 |
| Context | 61 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 101 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 17183/125000 | 59/125 | 23287/125000 | 101011/500000 |
| b | 40433/125000 | 84567/125000 | 82609/200000 | 108523/250000 |
| c | 13857/20000 | 1/1 | 87339/100000 | 441661/500000 |
| e | 17183/125000 | 59/125 | 194519/1000000 | 12283/62500 |
| f | 40433/125000 | 84567/125000 | 395233/1000000 | 220067/500000 |
| h | 13857/20000 | 1/1 | 103627/125000 | 169507/200000 |
| p | 107821/1000000 | 235733/500000 | 137681/1000000 | 139831/1000000 |
| q | 82827/500000 | 703163/1000000 | 167859/500000 | 1871/5000 |
| u | 32973/250000 | 107817/125000 | 414167/1000000 | 455367/1000000 |
| v | 17183/125000 | 418681/500000 | 468341/1000000 | 31167/62500 |
| r | 40433/62500 | 1/1 | 123467/125000 | 1/1 |
| w | 274929/500000 | 1/1 | 997991/1000000 | 1/1 |
| j | 51267/100000 | 892179/1000000 | 785713/1000000 | 162039/200000 |
| k | 412393/1000000 | 8033/8963 | 120219/200000 | 633703/1000000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 0 | A_ABC | bitt ["actual-area","ABC",[]] | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 7 | A_ABH | bitt ["actual-area","ABH",["P"]] | `1/1 * b * h + -1/1 * a * b + -279/1000` |
| 10 | A_ABP | bitt ["actual-area","ABP",[]] | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 32 | A_AHP | bitt ["actual-area","AHP",[]] | `1/1 * h * p + -1/1 * a * p + -93/1000` |
| 36 | A_BCE | bitt ["actual-area","BCE",[]] | `1/1 * c * e + -1/1 * b * e + -93/1000` |
| 55 | A_BHP | bitt ["actual-area","BHP",[]] | `-1/1 * b * q + -1/1 * h * p + 1/1 * b * h + -93/1000` |
| 65 | A_CEH | bitt ["actual-area","CEH",["Q"]] | `1/1 * h + -1/1 * c * h + 1/1 * c * e + -279/1000` |
| 69 | A_CES | bitt ["actual-area","CES",[]] | `1/1 * k + -1/1 * c * k + -1/1 * e * j + 1/1 * c * e + -93/1000` |
| 76 | A_CHQ | bitt ["actual-area","CHQ",[]] | `1/1 * c * v + 1/1 * h * u + -1/1 * c * h + -93/1000` |
| 88 | A_EFR | bitt ["actual-area","EFR",["S"]] | `-1/1 * f * w + 1/1 * e * f + 1/1 * w + 1/1 * r + -1279/1000 + -1/1 * e * r` |
| 89 | A_EFS | bitt ["actual-area","EFS",[]] | `-1/1 * f * k + 1/1 * e * f + 1/1 * k + 1/1 * j + -1093/1000 + -1/1 * e * j` |
| 90 | A_EHP | bitt ["actual-area","EHP",["Q"]] | `-1/1 * q + -1/1 * h * p + 1/1 * h + 1/1 * e * p + -279/1000` |
| 91 | A_EHQ | bitt ["actual-area","EHQ",[]] | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -93/1000` |
| 94 | A_EPQ | bitt ["actual-area","EPQ",[]] | `-1/1 * p * v + 1/1 * e * p + 1/1 * v + 1/1 * q * u + -1/1 * q + -1/1 * e * u + -93/1000` |
| 95 | A_EPR | bitt ["actual-area","EPR",["Q","S"]] | `-1/1 * p * w + 1/1 * e * p + 1/1 * w + 1/1 * q * r + -1/1 * q + -1/1 * e * r + -13857/20000` |
| 97 | A_EQR | bitt ["actual-area","EQR",["S"]] | `-1/1 * u * w + 1/1 * e * u + 1/1 * w + 1/1 * v * r + -1/1 * v + -1/1 * e * r + -279/1000` |
| 99 | A_ERS | bitt ["actual-area","ERS",[]] | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 102 | A_FHR | bitt ["actual-area","FHR",[]] | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 104 | A_FPQ | bitt ["actual-area","FPQ",[]] | `1/1 * p * v + -1/1 * p + -1/1 * f * v + -1/1 * q * u + 1/1 * f * q + 1/1 * u + -93/1000` |
| 109 | A_FRS | bitt ["actual-area","FRS",[]] | `-1/1 * r * k + 1/1 * r + 1/1 * f * k + 1/1 * w * j + -1/1 * f * w + -1/1 * j + -93/1000` |
| 110 | A_HPQ | bitt ["actual-area","HPQ",[]] | `1/1 * p * v + -1/1 * h * p + -1/1 * q * u + 1/1 * h * u + -93/1000` |
| 112 | A_HPS | bitt ["actual-area","HPS",["Q"]] | `1/1 * p * k + -1/1 * h * p + -1/1 * q * j + 1/1 * h * j + -279/1000` |
| 114 | A_HQS | bitt ["actual-area","HQS",[]] | `1/1 * u * k + -1/1 * h * u + -1/1 * v * j + 1/1 * h * j + -93/1000` |
| 116 | A_PQR | bitt ["actual-area","PQR",[]] | `1/1 * u * w + -1/1 * q * u + -1/1 * p * w + -1/1 * v * r + 1/1 * p * v + 1/1 * q * r + -93/1000` |
| 117 | A_PQS | bitt ["actual-area","PQS",[]] | `-1/1 * u * k + 1/1 * q * u + 1/1 * p * k + 1/1 * v * j + -1/1 * p * v + -1/1 * q * j + -93/1000` |
| 118 | A_PRS | bitt ["actual-area","PRS",["Q"]] | `-1/1 * r * k + 1/1 * q * r + 1/1 * p * k + 1/1 * w * j + -1/1 * p * w + -1/1 * q * j + -279/1000` |
| 121 | ea | bitt ["contact-order","ea"] | `1/1 * e + -1/1 * a` |
| 123 | fb | bitt ["contact-order","fb"] | `1/1 * f + -1/1 * b` |
| 126 | lower-area | bitt ["endpoint-lower","13857/20000"] | `1/1 * c * h + -13857/20000` |
| 607 | AREA_lo_AHQ | bitt ["earlier-area",{"direction":"lo","ref":"101:46","triangle":"AHQ","value":"56881/500000"}] | `1/1 * h * u + -1/1 * a * u + -56881/500000` |
| 706 | AREA_lo_HQS | bitt ["earlier-area",{"direction":"lo","ref":"101:194","triangle":"HQS","value":"96449/1000000"}] | `1/1 * u * k + -1/1 * h * u + -1/1 * v * j + 1/1 * h * j + -96449/1000000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 90 | q | 82827/500000 | 703163/1000000 | 82827/500000 | 41504407/62500000 | 82827/500000 | 664071/1000000 | `(-1/1, 176983863047/500000000000); (-1/1, 7800754643/20000000000); (-1/1, 78500063243/125000000000); (-1/1, 41504407/62500000); (-1/1, 38001096031/250000000000); (-1/1, 3097267339/10000000000); (-1/1, 19646475139/62500000000); (-1/1, 14752061/31250000)` |
| 1 | 94 | v | 17183/125000 | 418681/500000 | 9565829329/66066750000 | 418681/500000 | 14479/100000 | 418681/500000 | `(892179/1000000, -15007153661/62500000000); (892179/1000000, -31020884329/125000000000); (264267/500000, -23765795287/125000000000); (264267/500000, -9565829329/125000000000); (892179/1000000, -168198560903/250000000000); (892179/1000000, -170211714917/250000000000); (264267/500000, -155701536833/250000000000); (264267/500000, -127301604917/250000000000); (892179/1000000, -27439700527/125000000000); (892179/1000000, -29499808841/62500000000); (264267/500000, -5297797123/31250000000); (264267/500000, -18772281341/62500000000); (892179/1000000, -18001999919/62500000000); (892179/1000000, -67563916993/125000000000); (264267/500000, -29755487803/125000000000); (264267/500000, -46108861993/125000000000)` |
| 2 | 95 | e | 17183/125000 | 59/125 | 17183/125000 | 4401287841/16847093750 | 17183/125000 | 209/800 | `(-539107/1000000, -130383014253/500000000000); (-87731/500000, -115179785229/250000000000); (-539107/1000000, -43674311553/100000000000); (-87731/500000, -31834811397/50000000000); (-892179/1000000, -101139119709/500000000000); (-264267/500000, -100557837957/250000000000); (-539107/1000000, 4401287841/31250000000); (-87731/500000, -6962618409/31250000000); (-539107/1000000, -2195992257/62500000000); (-87731/500000, -24923804757/62500000000); (-892179/1000000, 199329/1000000); (-264267/500000, -41079/250000)` |
| 3 | 95 | p | 107821/1000000 | 235733/500000 | 107821/1000000 | 28281/143756 | 107821/1000000 | 19673/100000 | `(-206197/500000, -1815056873/6250000000); (-9019/31250, -5788902017/15625000000); (-206197/500000, -29149136669/62500000000); (-9019/31250, -34154176007/62500000000); (-206197/500000, -35057/125000); (-9019/31250, -202121/500000); (-107817/125000, 998330627/6250000000); (-591/800, 1244566733/15625000000); (-107817/125000, -1015261669/62500000000); (-591/800, -6020301007/62500000000); (-107817/125000, 84843/500000); (-591/800, 459/10000)` |
| 4 | 95 | w | 274929/500000 | 1/1 | 33978853919/37174125000 | 1/1 | 182809/200000 | 1/1 | `(892179/1000000, -103180699217/125000000000); (892179/1000000, -446089746419/500000000000); (80327/100000, -10165297587/12500000000); (80327/100000, -217238004147/250000000000); (892179/1000000, -25035567019/25000000000); (892179/1000000, -534078289931/500000000000); (80327/100000, -30912527937/31250000000); (80327/100000, -261232275903/250000000000); (892179/1000000, -101936561757/125000000000); (892179/1000000, -740745411/800000000); (80327/100000, -10040883841/12500000000); (80327/100000, -72216343/80000000)` |
| 5 | 97 | u | 32973/250000 | 107817/125000 | 32973/250000 | 521738297/769531250 | 32973/250000 | 135599/200000 | `(-776581/1000000, 15468574829/31250000000); (-130559/200000, 324151379/781250000); (-776581/1000000, 7827081667/31250000000); (-130559/200000, 2662280999/15625000000); (-776581/1000000, 497581/1000000); (-130559/200000, 74759/200000); (-107817/125000, 18154668579/31250000000); (-591/800, 1565214891/3125000000); (-107817/125000, 10513175417/31250000000); (-591/800, 2002663937/7812500000); (-107817/125000, 36471/62500); (-591/800, 1839/4000)` |
| 6 | 102 | h | 13857/20000 | 1/1 | 13857/20000 | 15283483703/16913400000 | 13857/20000 | 56477/62500 | `(-40433/125000, 6456683703/25000000000); (3701/125000, -1611408703/25000000000); (-84567/125000, 15283483703/25000000000); (-40433/125000, 7215391297/25000000000); (-40433/125000, 3601/15625); (3701/125000, -7663/62500); (-84567/125000, 36471/62500)` |
| 7 | 109 | k | 412393/1000000 | 8033/8963 | 412393/1000000 | 24314/28189 | 412393/1000000 | 107817/125000 | `(-40433/125000, 21420079827/100000000000); (3701/125000, -10852289797/100000000000); (-84567/125000, 56727279827/100000000000); (-40433/125000, 24454910203/100000000000); (-40433/125000, 3601/15625); (3701/125000, -7663/62500); (-84567/125000, 36471/62500); (-40433/125000, 7263204087/40000000000); (3701/125000, -28228718813/200000000000); (-84567/125000, 21386084087/40000000000); (-40433/125000, 42385681187/200000000000)` |
| 8 | 112 | q | 82827/500000 | 664071/1000000 | 82827/500000 | 65346310289/111522375000 | 82827/500000 | 146487/250000 | `(-51267/100000, 45964255303/1000000000000); (-51267/100000, 131299137221/1000000000000); (-51267/100000, 2102910389/100000000000); (-51267/100000, 8762356897/100000000000); (-892179/1000000, 308907065953/1000000000000); (-892179/1000000, 474235613909/1000000000000); (-892179/1000000, 14198595727/50000000000); (-892179/1000000, 215280022829/500000000000); (-51267/100000, 47249561853/500000000000); (-51267/100000, 22479250703/125000000000); (-51267/100000, 2739643407/25000000000); (-51267/100000, 2202252517/12500000000); (-892179/1000000, 89360483589/250000000000); (-892179/1000000, 65346310289/125000000000); (-892179/1000000, 37252854693/100000000000); (-892179/1000000, 16222396189/31250000000)` |
| 9 | 114 | v | 14479/100000 | 418681/500000 | 14479/100000 | 14745442927/18587062500 | 14479/100000 | 396659/500000 | `(-51267/100000, 28151671857/125000000000); (-51267/100000, 76368630813/250000000000); (-51267/100000, 14410993157/200000000000); (-51267/100000, 7441486327/200000000000); (-892179/1000000, 244078092753/500000000000); (-892179/1000000, 32420549997/50000000000); (-892179/1000000, 66999555287/200000000000); (-892179/1000000, 380143908323/1000000000000); (-51267/100000, 71145908853/250000000000); (-51267/100000, 5700699747/15625000000); (-51267/100000, 37724966907/100000000000); (-51267/100000, 8560053373/25000000000); (-892179/1000000, 273763223031/500000000000); (-892179/1000000, 44236328781/62500000000); (-892179/1000000, 16004811993/25000000000); (-892179/1000000, 85667326451/125000000000)` |
| 10 | 117 | v | 14479/100000 | 396659/500000 | 16301947353/69544900000 | 396659/500000 | 29301/125000 | 396659/500000 | `(404849/1000000, -33200822143/200000000000); (15797/50000, -64669330739/500000000000); (404849/1000000, -326042819447/1000000000000); (15797/50000, -28937737021/100000000000); (404849/1000000, -18796813677/62500000000); (15797/50000, -52816713919/200000000000); (404849/1000000, -115631956641/500000000000); (15797/50000, -38919692809/200000000000); (392179/500000, -228871294601/1000000000000); (695449/1000000, -48051461341/250000000000); (392179/500000, -548415358979/1000000000000); (695449/1000000, -255874954871/500000000000); (392179/500000, -181808101359/500000000000); (695449/1000000, -326950753481/1000000000000); (392179/500000, -226818226407/500000000000); (695449/1000000, -416971003577/1000000000000); (404849/1000000, -44209875717/250000000000); (15797/50000, -25038072411/250000000000); (404849/1000000, -842195529/2500000000); (15797/50000, -32523874797/125000000000); (404849/1000000, -278704426857/500000000000); (15797/50000, -48072164049/100000000000); (404849/1000000, -121980937041/250000000000); (15797/50000, -20561826747/50000000000); (392179/500000, -119853343377/500000000000); (695449/1000000, -16301947353/100000000000); (392179/500000, -139812687783/250000000000); (695449/1000000, -120640884477/250000000000); (392179/500000, -775345047/1250000000); (695449/1000000, -67948603047/125000000000); (392179/500000, -44393517981/62500000000); (695449/1000000, -79201134309/125000000000)` |
| 11 | 118 | k | 412393/1000000 | 107817/125000 | 412393/1000000 | 232365595423/269553500000 | 412393/1000000 | 862039/1000000 | `(-539107/1000000, 113290578937/1000000000000); (-225099/500000, 1000742251/31250000000); (-539107/1000000, 169718410789/1000000000000); (-225099/500000, 22112895971/250000000000); (-892179/1000000, 6871134721/40000000000); (-80327/100000, 141424283/1562500000); (-892179/1000000, 75320048609/200000000000); (-80327/100000, 14766670807/50000000000); (-539107/1000000, 37022343683/250000000000); (-225099/500000, 14795093683/250000000000); (-539107/1000000, 25564650823/125000000000); (-225099/500000, 14451025823/125000000000); (-892179/1000000, 10328858191/50000000000); (-80327/100000, 5883408191/50000000000); (-892179/1000000, 10284975971/25000000000); (-80327/100000, 8062250971/25000000000); (-539107/1000000, 99327924739/250000000000); (-225099/500000, 316044872051/1000000000000); (-539107/1000000, 147117087581/500000000000); (-225099/500000, 212967348257/1000000000000); (-892179/1000000, 113949872011/250000000000); (-80327/100000, 374532661139/1000000000000); (-892179/1000000, 250558003709/500000000000); (-80327/100000, 419849180513/1000000000000); (-539107/1000000, 232365595423/500000000000); (-225099/500000, 187911095423/500000000000); (-539107/1000000, 90413416763/250000000000); (-225099/500000, 68186166763/250000000000); (-892179/1000000, 261609489967/500000000000); (-80327/100000, 217154989967/500000000000); (-892179/1000000, 142133874827/250000000000); (-80327/100000, 119906624827/250000000000)` |
| 12 | 121 | a | 17183/125000 | 59/125 | 17183/125000 | 209/800 | 17183/125000 | 209/800 | `(-1/1, 17183/125000); (-1/1, 209/800)` |
| 13 | 126 | c | 13857/20000 | 1/1 | 346425/451816 | 1/1 | 766739/1000000 | 1/1 | `(13857/20000, -13857/20000); (56477/62500, -13857/20000)` |
| 14 | 607 | u | 32973/250000 | 135599/200000 | 56881/383084 | 135599/200000 | 148481/1000000 | 135599/200000 | `(277693/500000, -56881/500000); (1079/2500, -56881/500000); (95771/125000, -56881/500000); (321191/500000, -56881/500000)` |
| 15 | 706 | v | 29301/125000 | 396659/500000 | 29301/125000 | 140715344779/178435800000 | 29301/125000 | 157721/200000 | `(-51267/100000, 217111873683/1000000000000); (-51267/100000, 293876359481/1000000000000); (-51267/100000, 13721193157/200000000000); (-51267/100000, 6751686327/200000000000); (-892179/1000000, 480054684333/1000000000000); (-892179/1000000, 636812836169/1000000000000); (-892179/1000000, 66309755287/200000000000); (-892179/1000000, 376694908323/1000000000000); (-51267/100000, 283875761409/1000000000000); (-51267/100000, 360640247207/1000000000000); (-51267/100000, 74692741111/200000000000); (-51267/100000, 67723234281/200000000000); (-892179/1000000, 546818572059/1000000000000); (-892179/1000000, 140715344779/200000000000); (-892179/1000000, 127281303241/200000000000); (-892179/1000000, 681552648093/1000000000000)` |
| 16 | 0 | b | 40433/125000 | 84567/125000 | 40433/125000 | 673/1045 | 40433/125000 | 32201/50000 | `(-17183/125000, 1549876237/125000000000); (-209/800, 85848451/800000000); (-17183/125000, 2779/62500); (-209/800, 673/4000)` |
| 17 | 7 | b | 40433/125000 | 32201/50000 | 34875/95771 | 32201/50000 | 364149/1000000 | 32201/50000 | `(277693/500000, -279/1000); (1079/2500, -279/1000); (95771/125000, -279/1000); (321191/500000, -279/1000)` |
| 18 | 10 | q | 82827/500000 | 146487/250000 | 1931078407/8050250000 | 146487/250000 | 119939/500000 | 146487/250000 | `(364149/1000000, -2003685503/15625000000); (364149/1000000, -15996569/100000000); (32201/50000, -20838507417/125000000000); (32201/50000, -186465591/800000000); (364149/1000000, -14501760677/125000000000); (364149/1000000, -109390571/800000000); (32201/50000, -1931078407/12500000000); (32201/50000, -16788361/80000000)` |
| 19 | 32 | p | 107821/1000000 | 19673/100000 | 11625/95771 | 19673/100000 | 121383/1000000 | 19673/100000 | `(277693/500000, -93/1000); (1079/2500, -93/1000); (95771/125000, -93/1000); (321191/500000, -93/1000)` |
| 20 | 36 | e | 17183/125000 | 209/800 | 93000/635851 | 209/800 | 7313/50000 | 209/800 | `(40259/100000, -93/1000); (122719/1000000, -93/1000); (635851/1000000, -93/1000); (17799/50000, -93/1000)` |
| 21 | 65 | c | 766739/1000000 | 1/1 | 766739/1000000 | 312316/321191 | 766739/1000000 | 972369/1000000 | `(-54659/100000, 8277/20000); (-1079/2500, 8277/20000); (-189343/250000, 78079/125000); (-321191/500000, 78079/125000)` |
| 22 | 88 | f | 40433/125000 | 84567/125000 | 40433/125000 | 103/153 | 40433/125000 | 673203/1000000 | `(-153557/200000, 73184887/390625000); (-130559/200000, 5648153/50000000); (-153557/200000, 97757/200000); (-130559/200000, 74759/200000); (-42687/50000, 854088471/3125000000); (-591/800, 9945903/50000000); (-42687/50000, 28737/50000); (-591/800, 1839/4000)` |
| 23 | 88 | r | 40433/62500 | 1/1 | 12436249/19125000 | 1/1 | 650261/1000000 | 1/1 | `(42687/50000, -15332645181/25000000000); (591/800, -14402767047/25000000000); (42687/50000, -176366033071/200000000000); (591/800, -160883710477/200000000000); (42687/50000, -3469713471/6250000000); (591/800, -51795903/100000000); (42687/50000, -42687016461/50000000000); (591/800, -621062973/800000000)` |
| 24 | 89 | j | 51267/100000 | 892179/1000000 | 19270405769/35572500000 | 892179/1000000 | 541721/1000000 | 892179/1000000 | `(42687/50000, -95836430589/125000000000); (591/800, -91187039919/125000000000); (42687/50000, -859768533999/1000000000000); (591/800, -782356921029/1000000000000); (42687/50000, -57811217307/125000000000); (591/800, -53161826637/125000000000); (42687/50000, -712825570137/1000000000000); (591/800, -635413957167/1000000000000)` |
| 25 | 89 | k | 412393/1000000 | 862039/1000000 | 946670853/2255120000 | 862039/1000000 | 419787/1000000 | 862039/1000000 | `(84567/125000, -29160063441/50000000000); (84567/125000, -486638913/800000000); (326797/1000000, -13301211067/25000000000); (326797/1000000, -206771731/400000000); (84567/125000, -2840012559/10000000000); (84567/125000, -55903647/160000000); (326797/1000000, -727651343/3125000000); (326797/1000000, -806339/3125000)` |
| 26 | 90 | q | 119939/500000 | 146487/250000 | 119939/500000 | 273328872847/500000000000 | 119939/500000 | 273329/500000 | `(-1/1, 34750326603/100000000000); (-1/1, 903652743/2500000000); (-1/1, 133174978631/250000000000); (-1/1, 273328872847/500000000000); (-1/1, 3063193493/10000000000); (-1/1, 82235333/250000000); (-1/1, 11890855161/25000000000); (-1/1, 24912809457/50000000000)` |
| 27 | 91 | v | 29301/125000 | 157721/200000 | 29301/125000 | 357625239129/500000000000 | 29301/125000 | 715251/1000000 | `(-1/1, 51869177021/100000000000); (-1/1, 1339414001/2500000000); (-1/1, 174544162017/250000000000); (-1/1, 357625239129/500000000000); (-1/1, 4585294259/20000000000); (-1/1, 153613679/500000000); (-1/1, 14856878543/50000000000); (-1/1, 37510021591/100000000000)` |
| 28 | 94 | v | 29301/125000 | 715251/1000000 | 25165198651/87861700000 | 715251/1000000 | 143209/500000 | 715251/1000000 | `(878617/1000000, -150612014081/500000000000); (878617/1000000, -152170013591/500000000000); (80327/100000, -145101887971/500000000000); (80327/100000, -35581952929/125000000000); (878617/1000000, -281226513491/500000000000); (878617/1000000, -282784513001/500000000000); (80327/100000, -275716387381/500000000000); (80327/100000, -136471155563/250000000000); (878617/1000000, -25165198651/100000000000); (878617/1000000, -31565680039/100000000000); (80327/100000, -24063173429/100000000000); (80327/100000, -1849827479/6250000000); (878617/1000000, -35043668041/100000000000); (878617/1000000, -41444149429/100000000000); (80327/100000, -33941642819/100000000000); (80327/100000, -19737854527/50000000000)` |
| 29 | 95 | e | 7313/50000 | 209/800 | 7313/50000 | 185767/878617 | 7313/50000 | 26429/125000 | `(-264439/500000, 26350783923/1000000000000); (-453531/1000000, -10629941173/250000000000); (-264439/500000, -80942146497/1000000000000); (-453531/1000000, -18726586889/125000000000); (-878617/1000000, 22049095153/200000000000); (-80327/100000, 827498543/20000000000); (-264439/500000, 50936154079/500000000000); (-453531/1000000, 13262654079/500000000000); (-264439/500000, -2710311131/500000000000); (-453531/1000000, -40383811131/500000000000); (-878617/1000000, 185767/1000000); (-80327/100000, 5521/50000)` |
| 30 | 95 | p | 121383/1000000 | 19673/100000 | 121383/1000000 | 173/918 | 121383/1000000 | 94227/500000 | `(-153557/200000, 21096567149/500000000000); (-702613/1000000, -92837797/500000000000); (-153557/200000, -32549898061/500000000000); (-702613/1000000, -53739303007/500000000000); (-153557/200000, 14987/200000); (-702613/1000000, 9763/1000000); (-42687/50000, 64074067149/500000000000); (-98571/125000, 42884662203/500000000000); (-42687/50000, 10427601939/500000000000); (-98571/125000, -10761803007/500000000000); (-42687/50000, 16089/100000); (-98571/125000, 47859/500000)` |
| 31 | 95 | w | 182809/200000 | 1/1 | 41067826121/43930850000 | 1/1 | 233707/250000 | 1/1 | `(878617/1000000, -427049194061/500000000000); (878617/1000000, -444283212569/500000000000); (405773/500000, -422144291831/500000000000); (405773/500000, -437192734733/500000000000); (878617/1000000, -480695659271/500000000000); (878617/1000000, -497929677779/500000000000); (405773/500000, -475790757041/500000000000); (405773/500000, -490839199943/500000000000); (878617/1000000, -41067826121/50000000000); (878617/1000000, -109827218693/125000000000); (405773/500000, -20288667949/25000000000); (405773/500000, -54027299617/62500000000)` |
| 32 | 97 | u | 148481/1000000 | 135599/200000 | 148481/1000000 | 103/153 | 148481/1000000 | 673203/1000000 | `(-98571/125000, 230274640619/500000000000); (-180849/250000, 209085235673/500000000000); (-98571/125000, 310569656651/1000000000000); (-180849/250000, 268190846759/1000000000000); (-98571/125000, 7962/15625); (-180849/250000, 111099/250000); (-42687/50000, 262860640619/500000000000); (-98571/125000, 241671235673/500000000000); (-42687/50000, 375741656651/1000000000000); (-98571/125000, 333362846759/1000000000000); (-42687/50000, 28737/50000)` |
| 33 | 99 | j | 541721/1000000 | 892179/1000000 | 541721/1000000 | 409/459 | 541721/1000000 | 222767/250000 | `(-98571/125000, 599904940547/1000000000000); (-180849/250000, 111505226131/200000000000); (-98571/125000, 43473/62500); (-180849/250000, 157599/250000); (-42687/50000, 665076940547/1000000000000); (-98571/125000, 124539626131/200000000000); (-42687/50000, 38037/50000); (-98571/125000, 445232168319/1000000000000); (-180849/250000, 402853358427/1000000000000); (-42687/50000, 510404168319/1000000000000); (-98571/125000, 468025358427/1000000000000)` |
| 34 | 102 | h | 13857/20000 | 56477/62500 | 13857/20000 | 6298091623/7047250000 | 13857/20000 | 178739/200000 | `(-326797/1000000, 7964931119/31250000000); (11471/500000, -18017003521/250000000000); (-84567/125000, 18894274869/31250000000); (-326797/1000000, 69417746479/250000000000); (-326797/1000000, 233797/1000000); (11471/500000, -57971/500000); (-84567/125000, 36471/62500)` |
| 35 | 110 | u | 148481/1000000 | 673203/1000000 | 203297993/1159250000 | 673203/1000000 | 17537/100000 | 673203/1000000 | `(113243/250000, -4447935483/31250000000); (653817/1000000, -166713104091/1000000000000); (113243/250000, -2649902127/15625000000); (653817/1000000, -103721889879/500000000000); (9137/62500, -4447935483/31250000000); (347037/1000000, -166713104091/1000000000000); (9137/62500, -2649902127/15625000000); (347037/1000000, -103721889879/500000000000); (113243/250000, -90280899417/1000000000000); (653817/1000000, -28665017013/250000000000); (113243/250000, -44389220973/500000000000); (653817/1000000, -15828560697/125000000000); (9137/62500, -90280899417/1000000000000); (347037/1000000, -28665017013/250000000000); (9137/62500, -44389220973/500000000000); (347037/1000000, -15828560697/125000000000)` |
| 36 | 117 | v | 143209/500000 | 715251/1000000 | 31675160821/87826750000 | 715251/1000000 | 72131/200000 | 715251/1000000 | `(210169/500000, -203542585947/1000000000000); (353267/1000000, -17538705207/100000000000); (210169/500000, -315931745727/1000000000000); (353267/1000000, -5755524237/20000000000); (210169/500000, -36638402893/125000000000); (353267/1000000, -264951689267/1000000000000); (210169/500000, -15798198449/62500000000); (353267/1000000, -224615641307/1000000000000); (153937/200000, -287343245613/1000000000000); (351307/500000, -32398463967/125000000000); (153937/200000, -506905078053/1000000000000); (351307/500000, -29921846511/62500000000); (153937/200000, -37690788281/100000000000); (351307/500000, -348752348933/1000000000000); (153937/200000, -44374450751/100000000000); (351307/500000, -415588973633/1000000000000); (210169/500000, -227418444671/1000000000000); (353267/1000000, -84800313451/500000000000); (210169/500000, -339807604451/1000000000000); (353267/1000000, -140994893341/500000000000); (210169/500000, -67143840223/125000000000); (353267/1000000, -95866580803/200000000000); (210169/500000, -15525458557/31250000000); (353267/1000000, -87799371211/200000000000); (153937/200000, -311219104337/1000000000000); (351307/500000, -31675160821/125000000000); (153937/200000, -530780936777/1000000000000); (351307/500000, -14780097469/31250000000); (153937/200000, -12419027629/20000000000); (351307/500000, -563133563681/1000000000000); (153937/200000, -13755760123/20000000000); (351307/500000, -629970188381/1000000000000)` |
| 37 | 118 | k | 419787/1000000 | 862039/1000000 | 419787/1000000 | 216460349227/264439000000 | 419787/1000000 | 163713/200000 | `(-264439/500000, 1093594453/7812500000); (-461807/1000000, 19320060299/250000000000); (-264439/500000, 10829874449/62500000000); (-461807/1000000, 27644535599/250000000000); (-878617/1000000, 111937390913/500000000000); (-405773/500000, 80587466519/500000000000); (-878617/1000000, 182232806723/500000000000); (-405773/500000, 150882882329/500000000000); (-264439/500000, 4184358953/25000000000); (-461807/1000000, 2507583953/25000000000); (-264439/500000, 5016806483/25000000000); (-461807/1000000, 3340031483/25000000000); (-878617/1000000, 125634524981/500000000000); (-405773/500000, 92099024981/500000000000); (-878617/1000000, 195929940791/500000000000); (-405773/500000, 162394440791/500000000000); (-264439/500000, 191379393817/500000000000); (-461807/1000000, 160029469423/500000000000); (-264439/500000, 154442008087/500000000000); (-461807/1000000, 123092083693/500000000000); (-878617/1000000, 116663369869/250000000000); (-405773/500000, 12623550959/31250000000); (-878617/1000000, 125017909609/250000000000); (-405773/500000, 27335736853/62500000000); (-264439/500000, 216460349227/500000000000); (-461807/1000000, 182924849227/500000000000); (-264439/500000, 179522963497/500000000000); (-461807/1000000, 145987463497/500000000000); (-878617/1000000, 64601923787/125000000000); (-405773/500000, 56218048787/125000000000); (-878617/1000000, 68779193657/125000000000); (-405773/500000, 60395318657/125000000000)` |
| 38 | 121 | a | 17183/125000 | 209/800 | 17183/125000 | 26429/125000 | 17183/125000 | 26429/125000 | `(-1/1, 7313/50000); (-1/1, 26429/125000)` |
| 39 | 123 | f | 40433/125000 | 673203/1000000 | 364149/1000000 | 673203/1000000 | 364149/1000000 | 673203/1000000 | `(1/1, -364149/1000000); (1/1, -32201/50000)` |
| 40 | 126 | c | 766739/1000000 | 972369/1000000 | 138570/178739 | 972369/1000000 | 24227/31250 | 972369/1000000 | `(13857/20000, -13857/20000); (178739/200000, -13857/20000)` |
| 41 | 126 | h | 13857/20000 | 178739/200000 | 230950/324123 | 178739/200000 | 356269/500000 | 178739/200000 | `(24227/31250, -13857/20000); (972369/1000000, -13857/20000)` |
| 42 | 0 | a | 17183/125000 | 26429/125000 | 50/327 | 26429/125000 | 30581/200000 | 26429/125000 | `(82223/200000, -93/1000); (32811/250000, -93/1000); (30411/50000, -93/1000); (328349/1000000, -93/1000)` |
| 43 | 0 | b | 364149/1000000 | 32201/50000 | 364149/1000000 | 14073740301/26429000000 | 364149/1000000 | 16641/31250 | `(-30581/200000, 159635887/6250000000); (-26429/125000, 277014133/3906250000); (-30581/200000, 11136016389/200000000000); (-26429/125000, 14073740301/125000000000)` |
| 44 | 0 | c | 24227/31250 | 972369/1000000 | 21249093921/26429000000 | 972369/1000000 | 402003/500000 | 972369/1000000 | `(30581/200000, -29736040569/200000000000); (26429/125000, -21249093921/125000000000); (30581/200000, -1090148421/6250000000); (26429/125000, -803086239/3906250000)` |
| 45 | 7 | b | 364149/1000000 | 16641/31250 | 3100/8231 | 16641/31250 | 23539/62500 | 16641/31250 | `(559633/1000000, -279/1000); (250553/500000, -279/1000); (74079/100000, -279/1000); (682263/1000000, -279/1000)` |
| 46 | 10 | q | 119939/500000 | 273329/500000 | 1617868761/5916800000 | 273329/500000 | 68359/250000 | 273329/500000 | `(23539/62500, -26405525021/200000000000); (23539/62500, -18370764389/125000000000); (16641/31250, -31172735949/200000000000); (16641/31250, -22490728341/125000000000); (23539/62500, -2435442677/20000000000); (23539/62500, -1659814493/12500000000); (16641/31250, -14560818849/100000000000); (16641/31250, -10359054441/62500000000)` |
| 47 | 32 | p | 121383/1000000 | 94227/500000 | 3100/24693 | 94227/500000 | 125541/1000000 | 94227/500000 | `(559633/1000000, -93/1000); (250553/500000, -93/1000); (74079/100000, -93/1000); (682263/1000000, -93/1000)` |
| 48 | 36 | c | 402003/500000 | 972369/1000000 | 1348674731/1651812500 | 972369/1000000 | 816481/1000000 | 972369/1000000 | `(7313/50000, -462765707/3125000000); (7313/50000, -267008133/1562500000); (26429/125000, -1348674731/7812500000); (26429/125000, -803086239/3906250000)` |
| 49 | 36 | e | 7313/50000 | 26429/125000 | 18600/119149 | 26429/125000 | 156107/1000000 | 26429/125000 | `(439857/1000000, -93/1000); (283969/1000000, -93/1000); (119149/200000, -93/1000)` |
| 50 | 55 | q | 68359/250000 | 273329/500000 | 68359/250000 | 18047196523/35500800000 | 68359/250000 | 508361/1000000 | `(-23539/62500, 42953089327/500000000000); (-16641/31250, 98491151199/500000000000); (-23539/62500, 26278324337/200000000000); (-16641/31250, 54141589569/200000000000); (-23539/62500, 2053913773/50000000000); (-16641/31250, 38038599801/250000000000); (-23539/62500, 1503331763/20000000000); (-16641/31250, 21448291431/100000000000)` |
| 51 | 65 | c | 816481/1000000 | 972369/1000000 | 816481/1000000 | 614695/682263 | 816481/1000000 | 180193/200000 | `(-556431/1000000, 216769/500000); (-250553/500000, 216769/500000); (-184397/250000, 122939/200000); (-682263/1000000, 122939/200000)` |
| 52 | 88 | f | 364149/1000000 | 673203/1000000 | 364149/1000000 | 564893/843893 | 364149/1000000 | 66939/100000 | `(-778721/1000000, 204578706073/1000000000000); (-180849/250000, 21075377031/125000000000); (-778721/1000000, 499721/1000000); (-180849/250000, 111099/250000); (-843893/1000000, 269750706073/1000000000000); (-98571/125000, 29221877031/125000000000); (-843893/1000000, 564893/1000000); (-98571/125000, 7962/15625)` |
| 53 | 88 | r | 650261/1000000 | 1/1 | 586302792057/843893000000 | 1/1 | 694759/1000000 | 1/1 | `(843893/1000000, -627742473429/1000000000000); (98571/125000, -151898982501/250000000000); (843893/1000000, -86544005019/100000000000); (98571/125000, -20710151211/25000000000); (843893/1000000, -586302792057/1000000000000); (98571/125000, -70769531079/125000000000); (843893/1000000, -84389353527/100000000000); (98571/125000, -10085744169/12500000000)` |
| 54 | 89 | j | 541721/1000000 | 222767/250000 | 257834209121/421946500000 | 222767/250000 | 611059/1000000 | 222767/250000 | `(843893/1000000, -2403849401/3125000000); (98571/125000, -149817052979/200000000000); (843893/1000000, -531073597/625000000); (98571/125000, -16253675069/20000000000); (843893/1000000, -257834209121/500000000000); (98571/125000, -495521874817/1000000000000); (843893/1000000, -35893888031/50000000000); (98571/125000, -68084375887/100000000000)` |
| 55 | 89 | k | 419787/1000000 | 163713/200000 | 284187744333/635851000000 | 163713/200000 | 22347/50000 | 163713/200000 | `(635851/1000000, -52048537937/100000000000); (635851/1000000, -6676820939/12500000000); (33061/100000, -472835122583/1000000000000); (33061/100000, -58700995001/125000000000); (635851/1000000, -284187744333/1000000000000); (635851/1000000, -39167442251/125000000000); (33061/100000, -118268743773/500000000000); (33061/100000, -15550113931/62500000000)` |
| 56 | 91 | u | 17537/100000 | 673203/1000000 | 17537/100000 | 146680/227421 | 17537/100000 | 161243/250000 | `(-556431/1000000, 258883/1000000); (-250553/500000, 258883/1000000); (-184397/250000, 11001/25000); (-682263/1000000, 11001/25000); (-556431/1000000, -95713/1000000); (-250553/500000, -95713/1000000); (-184397/250000, 21361/250000); (-682263/1000000, 21361/250000)` |
| 57 | 91 | v | 72131/200000 | 715251/1000000 | 72131/200000 | 68104653769/100000000000 | 72131/200000 | 681047/1000000 | `(-1/1, 52195669553/100000000000); (-1/1, 26582952039/50000000000); (-1/1, 16783604811/25000000000); (-1/1, 68104653769/100000000000); (-1/1, 65163896267/250000000000); (-1/1, 37042332621/125000000000); (-1/1, 20310712029/62500000000); (-1/1, 90163617091/250000000000)` |
| 58 | 95 | e | 156107/1000000 | 26429/125000 | 156107/1000000 | 181609/874459 | 156107/1000000 | 103841/500000 | `(-284609/500000, 5144359997/125000000000); (-101261/200000, -4414488497/250000000000); (-284609/500000, -30553861949/1000000000000); (-101261/200000, -89366695913/1000000000000); (-874459/1000000, 31154689513/250000000000); (-405773/500000, 8225740511/125000000000); (-284609/500000, 24536280481/250000000000); (-101261/200000, 8808030481/250000000000); (-284609/500000, 26436379999/1000000000000); (-101261/200000, -36476620001/1000000000000); (-874459/1000000, 181609/1000000); (-405773/500000, 14837/125000)` |
| 59 | 95 | p | 125541/1000000 | 94227/500000 | 125541/1000000 | 151043/843893 | 125541/1000000 | 22373/125000 | `(-778721/1000000, 50057378711/1000000000000); (-363573/500000, 7112591643/500000000000); (-778721/1000000, -10825681607/500000000000); (-363573/500000, -57483558639/1000000000000); (-778721/1000000, 85871/1000000); (-363573/500000, 4287/125000); (-843893/1000000, 115229378711/1000000000000); (-396159/500000, 39698591643/500000000000); (-843893/1000000, 21760318393/500000000000); (-396159/500000, 7688441361/1000000000000); (-843893/1000000, 151043/1000000); (-396159/500000, 24867/250000)` |
| 60 | 95 | w | 233707/250000 | 1/1 | 829359171113/874459000000 | 1/1 | 37937/40000 | 1/1 | `(874459/1000000, -432586396201/500000000000); (874459/1000000, -13977034543/15625000000); (102627/125000, -856829966001/1000000000000); (102627/125000, -441715530813/500000000000); (874459/1000000, -936881534327/1000000000000); (874459/1000000, -966238952677/1000000000000); (102627/125000, -464269353963/500000000000); (102627/125000, -955139803551/1000000000000); (874459/1000000, -829359171113/1000000000000); (874459/1000000, -437229697019/500000000000); (102627/125000, -102627043089/125000000000); (102627/125000, -53960015307/62500000000)` |
| 61 | 99 | j | 611059/1000000 | 222767/250000 | 611059/1000000 | 750893/843893 | 611059/1000000 | 889797/1000000 | `(-396159/500000, 610543844247/1000000000000); (-740743/1000000, 287355824411/500000000000); (-396159/500000, 349659/500000); (-740743/1000000, 647743/1000000); (-843893/1000000, 662118844247/1000000000000); (-396159/500000, 313143324411/500000000000); (-843893/1000000, 750893/1000000); (-396159/500000, 248554328811/500000000000); (-740743/1000000, 461276462197/1000000000000); (-843893/1000000, 274341828811/500000000000); (-396159/500000, 512851462197/1000000000000)` |
| 62 | 102 | h | 356269/500000 | 178739/200000 | 356269/500000 | 22465279387/25434040000 | 356269/500000 | 883277/1000000 | `(-33061/100000, 10255639387/40000000000); (-25369/1000000, -132428843/4000000000); (-635851/1000000, 22465279387/40000000000); (-33061/100000, 1088535157/4000000000); (-33061/100000, 23761/100000); (-25369/1000000, -67631/1000000); (-635851/1000000, 542851/1000000)` |
| 63 | 110 | u | 17537/100000 | 161243/250000 | 11838815643/60984100000 | 161243/250000 | 194129/1000000 | 161243/250000 | `(219551/500000, -137175743703/1000000000000); (609841/1000000, -79305244251/500000000000); (219551/500000, -19497678359/125000000000); (609841/1000000, -11658811003/62500000000); (204177/1000000, -137175743703/1000000000000); (93729/250000, -79305244251/500000000000); (204177/1000000, -19497678359/125000000000); (93729/250000, -11658811003/62500000000); (219551/500000, -96953411631/1000000000000); (609841/1000000, -11838815643/100000000000); (219551/500000, -12329548143/125000000000); (609841/1000000, -1614949179/12500000000); (204177/1000000, -96953411631/1000000000000); (93729/250000, -11838815643/100000000000); (204177/1000000, -12329548143/125000000000); (93729/250000, -1614949179/12500000000)` |
| 64 | 117 | v | 72131/200000 | 681047/1000000 | 72497395387/177703250000 | 681047/1000000 | 12749/31250 | 681047/1000000 | `(242759/500000, -1188291961/5000000000); (17283/40000, -10688628889/50000000000); (242759/500000, -6712113449/20000000000); (17283/40000, -31171985803/100000000000); (242759/500000, -39485182009/125000000000); (17283/40000, -72998910413/250000000000); (242759/500000, -307914444547/1000000000000); (17283/40000, -284028630127/1000000000000); (23883/31250, -2452151531/7812500000); (710813/1000000, -72497395387/250000000000); (23883/31250, -119326300217/250000000000); (710813/1000000, -28338711653/62500000000); (23883/31250, -1225307687/3125000000); (710813/1000000, -18410632271/50000000000); (23883/31250, -89922794593/200000000000); (710813/1000000, -85145631709/200000000000); (242759/500000, -2631474077/10000000000); (17283/40000, -43880167681/200000000000); (242759/500000, -7221893759/20000000000); (17283/40000, -63469623731/200000000000); (242759/500000, -508915001447/1000000000000); (17283/40000, -58146054019/125000000000); (242759/500000, -250473994961/500000000000); (17283/40000, -457201420627/1000000000000); (23883/31250, -84841102867/250000000000); (710813/1000000, -295617842173/1000000000000); (23883/31250, -31424638523/62500000000); (710813/1000000, -459047647073/1000000000000); (23883/31250, -117026401043/200000000000); (710813/1000000, -6767317949/12500000000); (23883/31250, -32132375917/50000000000); (710813/1000000, -119780189809/200000000000)` |
| 65 | 118 | k | 22347/50000 | 163713/200000 | 22347/50000 | 53990698679/71152250000 | 22347/50000 | 379403/500000 | `(-284609/500000, 4087280047/20000000000); (-20631/40000, 6147093003/40000000000); (-284609/500000, 4480544497/20000000000); (-20631/40000, 6933621903/40000000000); (-874459/1000000, 143913940213/500000000000); (-102627/125000, 237141203151/1000000000000); (-874459/1000000, 379199844851/1000000000000); (-102627/125000, 41064145947/125000000000); (-284609/500000, 573511483/2500000000); (-20631/40000, 439903983/2500000000); (-284609/500000, 2490678157/10000000000); (-20631/40000, 1956248157/10000000000); (-874459/1000000, 78217117819/250000000000); (-102627/125000, 64856367819/250000000000); (-874459/1000000, 404240435701/1000000000000); (-102627/125000, 350797435701/1000000000000); (-284609/500000, 49063635779/125000000000); (-20631/40000, 341822408957/1000000000000); (-284609/500000, 173344892041/500000000000); (-20631/40000, 296003106807/1000000000000); (-874459/1000000, 118993241077/250000000000); (-102627/125000, 425286287033/1000000000000); (-874459/1000000, 501862404083/1000000000000); (-102627/125000, 56396965851/125000000000); (-284609/500000, 53990698679/125000000000); (-20631/40000, 47310323679/125000000000); (-284609/500000, 193053143641/500000000000); (-20631/40000, 166331643641/500000000000); (-874459/1000000, 128847366877/250000000000); (-102627/125000, 115486616877/250000000000); (-874459/1000000, 541278907283/1000000000000); (-102627/125000, 487835907283/1000000000000)` |
| 66 | 121 | a | 30581/200000 | 26429/125000 | 30581/200000 | 103841/500000 | 30581/200000 | 103841/500000 | `(-1/1, 156107/1000000); (-1/1, 103841/500000)` |
| 67 | 123 | f | 364149/1000000 | 66939/100000 | 23539/62500 | 66939/100000 | 23539/62500 | 66939/100000 | `(1/1, -23539/62500); (1/1, -16641/31250)` |
| 68 | 126 | h | 356269/500000 | 883277/1000000 | 138570/180193 | 883277/1000000 | 48063/62500 | 883277/1000000 | `(816481/1000000, -13857/20000); (180193/200000, -13857/20000)` |
| 69 | 0 | a | 30581/200000 | 103841/500000 | 93000/524341 | 103841/500000 | 35473/200000 | 103841/500000 | `(439857/1000000, -93/1000); (283969/1000000, -93/1000); (524341/1000000, -93/1000); (368453/1000000, -93/1000)` |
| 70 | 0 | b | 23539/62500 | 16641/31250 | 23539/62500 | 9411421313/20768200000 | 23539/62500 | 90633/200000 | `(-35473/200000, 10363030513/200000000000); (-103841/500000, 38284203521/500000000000); (-35473/200000, 2671986289/40000000000); (-103841/500000, 9411421313/100000000000)` |
| 71 | 0 | c | 816481/1000000 | 180193/200000 | 5350563299/6490062500 | 180193/200000 | 103053/125000 | 180193/200000 | `(35473/200000, -1997498947/12500000000); (103841/500000, -5350563299/31250000000); (35473/200000, -6935024409/40000000000); (103841/500000, -18711421353/100000000000)` |
| 72 | 7 | b | 23539/62500 | 90633/200000 | 11625/29413 | 90633/200000 | 395233/1000000 | 90633/200000 | `(591643/1000000, -279/1000); (280663/500000, -279/1000); (88239/125000, -279/1000); (135119/200000, -279/1000)` |
| 73 | 7 | h | 48063/62500 | 883277/1000000 | 4791674803/6042200000 | 883277/1000000 | 396517/500000 | 883277/1000000 | `(395233/1000000, -69820100209/200000000000); (395233/1000000, -180541389953/500000000000); (90633/200000, -14375024409/40000000000); (90633/200000, -37311421353/100000000000)` |
| 74 | 10 | q | 68359/250000 | 508361/1000000 | 28326022613/90633000000 | 508361/1000000 | 62507/200000 | 508361/1000000 | `(395233/1000000, -7041696079/50000000000); (395233/1000000, -18626271743/125000000000); (90633/200000, -3777725769/25000000000); (90633/200000, -10065100473/62500000000); (395233/1000000, -26271000777/200000000000); (395233/1000000, -68955512409/500000000000); (90633/200000, -28326022613/200000000000); (90633/200000, -74971229221/500000000000)` |
| 75 | 32 | p | 125541/1000000 | 22373/125000 | 3875/29413 | 22373/125000 | 4117/31250 | 22373/125000 | `(615669/1000000, -93/1000); (73169/125000, -93/1000); (88239/125000, -93/1000); (135119/200000, -93/1000)` |
| 76 | 36 | c | 103053/125000 | 180193/200000 | 87541389953/103841000000 | 180193/200000 | 843033/1000000 | 180193/200000 | `(156107/1000000, -154698637931/1000000000000); (156107/1000000, -32748445731/200000000000); (103841/500000, -87541389953/500000000000); (103841/500000, -18711421353/100000000000)` |
| 77 | 36 | e | 156107/1000000 | 103841/500000 | 23250/126433 | 103841/500000 | 183891/1000000 | 103841/500000 | `(2239/5000, -93/1000); (97467/250000, -93/1000); (126433/250000, -93/1000)` |
| 78 | 55 | q | 62507/200000 | 508361/1000000 | 62507/200000 | 190903776617/453165000000 | 62507/200000 | 105317/250000 | `(-395233/1000000, 57977867813/500000000000); (-90633/200000, 80948890657/500000000000); (-395233/1000000, 139733773453/1000000000000); (-90633/200000, 190903776617/1000000000000); (-395233/1000000, 39246404733/500000000000); (-90633/200000, 62217427577/500000000000); (-395233/1000000, 98007767973/1000000000000); (-90633/200000, 149177771137/1000000000000)` |
| 79 | 65 | c | 843033/1000000 | 180193/200000 | 843033/1000000 | 604277/675595 | 843033/1000000 | 894437/1000000 | `(-609143/1000000, 257017/500000); (-73169/125000, 257017/500000); (-349693/500000, 604277/1000000); (-135119/200000, 604277/1000000)` |
| 80 | 76 | u | 194129/1000000 | 161243/250000 | 187408736571/793034000000 | 161243/250000 | 118159/500000 | 161243/250000 | `(396517/500000, -208811672589/500000000000); (396517/500000, -218708638921/500000000000); (883277/1000000, -493701172197/1000000000000); (883277/1000000, -518133956033/1000000000000); (396517/500000, -187408736571/1000000000000); (396517/500000, -193165316319/1000000000000); (883277/1000000, -26348656359/100000000000); (883277/1000000, -27388199451/100000000000)` |
| 81 | 88 | f | 23539/62500 | 66939/100000 | 23539/62500 | 537109/816109 | 23539/62500 | 329067/500000 | `(-382267/500000, 236424072731/1000000000000); (-740743/1000000, 109947530681/500000000000); (-382267/500000, 242767/500000); (-740743/1000000, 461743/1000000); (-816109/1000000, 287999072731/1000000000000); (-396159/500000, 135735030681/500000000000); (-816109/1000000, 537109/1000000); (-396159/500000, 256659/500000)` |
| 82 | 88 | r | 694759/1000000 | 1/1 | 36647889751/51006812500 | 1/1 | 71849/100000 | 1/1 | `(816109/1000000, -19328651663/31250000000); (396159/500000, -38097286977/62500000000); (816109/1000000, -208435204889/250000000000); (396159/500000, -409041576781/500000000000); (816109/1000000, -36647889751/62500000000); (396159/500000, -18043936701/31250000000); (816109/1000000, -408054540303/500000000000); (396159/500000, -200112853653/250000000000)` |
| 83 | 89 | j | 611059/1000000 | 889797/1000000 | 6884009837/10201362500 | 889797/1000000 | 168703/250000 | 889797/1000000 | `(816109/1000000, -46570660411/62500000000); (396159/500000, -23005322031/31250000000); (816109/1000000, -409590745283/500000000000); (396159/500000, -200880956143/250000000000); (816109/1000000, -6884009837/12500000000); (396159/500000, -8465008209/15625000000); (816109/1000000, -71256510861/100000000000); (396159/500000, -87113430327/125000000000)` |
| 84 | 89 | k | 22347/50000 | 379403/500000 | 297570896143/623376000000 | 379403/500000 | 477353/1000000 | 379403/500000 | `(38961/62500, -118255522377/250000000000); (38961/62500, -60014535027/125000000000); (170933/500000, -210627467049/500000000000); (170933/500000, -105412930099/250000000000); (38961/62500, -297570896143/1000000000000); (38961/62500, -154889897493/500000000000); (170933/500000, -245803740733/1000000000000); (170933/500000, -125657617583/500000000000)` |
| 85 | 91 | u | 118159/500000 | 161243/250000 | 118159/500000 | 382309/675595 | 118159/500000 | 113177/200000 | `(-609143/1000000, 146033/500000); (-73169/125000, 146033/500000); (-349693/500000, 382309/1000000); (-135119/200000, 382309/1000000); (-609143/1000000, 18987/1000000); (-73169/125000, 18987/1000000); (-349693/500000, 10923/100000); (-135119/200000, 10923/100000)` |
| 86 | 91 | v | 12749/31250 | 681047/1000000 | 12749/31250 | 63062174079/100000000000 | 12749/31250 | 315311/500000 | `(-1/1, 278041272263/500000000000); (-1/1, 35106549129/62500000000); (-1/1, 156249874813/250000000000); (-1/1, 63062174079/100000000000); (-1/1, 71065822689/200000000000); (-1/1, 9219802087/25000000000); (-1/1, 39450495339/100000000000); (-1/1, 16318716937/40000000000)` |
| 87 | 95 | e | 183891/1000000 | 103841/500000 | 183891/1000000 | 87703/434128 | 183891/1000000 | 101011/500000 | `(-293373/500000, 852879379/20000000000); (-269753/500000, -43192561/20000000000); (-293373/500000, 300863553/25000000000); (-269753/500000, -204806593/6250000000); (-27133/31250, 163282121/1250000000); (-102627/125000, 429110499/5000000000); (-293373/500000, 1748485443/20000000000); (-269753/500000, 803685443/20000000000); (-293373/500000, 1420371133/25000000000); (-269753/500000, 239371133/25000000000); (-27133/31250, 87703/500000); (-102627/125000, 64083/500000)` |
| 88 | 95 | p | 4117/31250 | 22373/125000 | 4117/31250 | 123259/816109 | 4117/31250 | 151033/1000000 | `(-382267/500000, 886735689/25000000000); (-746403/1000000, 2244248537/100000000000); (-382267/500000, 486000073/100000000000); (-746403/1000000, -408347073/50000000000); (-382267/500000, 17921/250000); (-746403/1000000, 53553/1000000); (-816109/1000000, 2176110689/25000000000); (-398989/500000, 7401748537/100000000000); (-816109/1000000, 5643500073/100000000000); (-398989/500000, 2170402927/50000000000); (-816109/1000000, 123259/1000000); (-398989/500000, 13141/125000)` |
| 89 | 95 | r | 71849/100000 | 1/1 | 3528202003/4020125000 | 1/1 | 438817/500000 | 1/1 | `(32161/250000, -2463793239/15625000000); (110513/1000000, -4852941151/31250000000); (32161/250000, -86214931811/500000000000); (110513/1000000, -169691484299/1000000000000); (237377/1000000, -1040686591/3906250000); (109623/500000, -8250847401/31250000000); (237377/1000000, -140581431811/500000000000); (109623/500000, -278424484299/1000000000000); (32161/250000, -3528202003/31250000000); (110513/1000000, -863389169/7812500000); (32161/250000, -128644390597/1000000000000); (110513/1000000, -62953005637/500000000000); (237377/1000000, -6926108253/31250000000); (109623/500000, -3425731463/15625000000); (237377/1000000, -237377390597/1000000000000); (109623/500000, -117319505637/500000000000)` |
| 90 | 95 | w | 37937/40000 | 1/1 | 26641077003/27133000000 | 1/1 | 981869/1000000 | 1/1 | `(27133/31250, -4341280579/5000000000); (27133/31250, -88177984739/100000000000); (848967/1000000, -864709042301/1000000000000); (848967/1000000, -109735380629/125000000000); (27133/31250, -440780669039/500000000000); (27133/31250, -223771267417/250000000000); (848967/1000000, -878014264579/1000000000000); (848967/1000000, -89118826731/100000000000); (27133/31250, -26641077003/31250000000); (27133/31250, -13566512713/15625000000); (848967/1000000, -848967390597/1000000000000); (848967/1000000, -432180005637/500000000000)` |
| 91 | 99 | j | 168703/250000 | 889797/1000000 | 168703/250000 | 723109/816109 | 168703/250000 | 177209/200000 | `(-398989/500000, 167267057227/250000000000); (-779847/1000000, 326577923427/500000000000); (-398989/500000, 352489/500000); (-779847/1000000, 686847/1000000); (-816109/1000000, 171799807227/250000000000); (-398989/500000, 335643423427/500000000000); (-816109/1000000, 723109/1000000); (-398989/500000, 63462795111/100000000000); (-779847/1000000, 19334861533/31250000000); (-816109/1000000, 65275895111/100000000000); (-398989/500000, 19901455283/31250000000)` |
| 92 | 102 | f | 23539/62500 | 329067/500000 | 23539/62500 | 113966/188835 | 23539/62500 | 301761/500000 | `(-37767/200000, 22160099611/250000000000); (-3081/31250, 4720036691/500000000000); (-37767/200000, 56983/500000); (-3081/31250, 23723/1000000); (-103483/500000, 22160099611/250000000000); (-116723/1000000, 4720036691/500000000000); (-103483/500000, 56983/500000); (-116723/1000000, 23723/1000000)` |
| 93 | 102 | h | 396517/500000 | 883277/1000000 | 396517/500000 | 33575285609/38961000000 | 396517/500000 | 861767/1000000 | `(-50101/100000, 25927410609/62500000000); (-4283/15625, 96027228691/500000000000); (-38961/62500, 33575285609/62500000000); (-198239/500000, 157210228691/500000000000); (-50101/100000, 40801/100000); (-4283/15625, 22639/125000); (-38961/62500, 66297/125000); (-198239/500000, 151739/500000)` |
| 94 | 104 | u | 118159/500000 | 113177/200000 | 20371227651/72341500000 | 113177/200000 | 140799/500000 | 113177/200000 | `(137493/200000, -103469511/500000000); (137493/200000, -114296289417/500000000000); (137493/200000, -13647420453/62500000000); (137493/200000, -120006142041/500000000000); (144683/250000, -2593555697/15625000000); (144683/250000, -20371227651/125000000000); (144683/250000, -5543977183/31250000000); (144683/250000, -21798690807/125000000000); (137493/200000, -3268281669/12500000000); (137493/200000, -166817918823/500000000000); (137493/200000, -134293732881/500000000000); (137493/200000, -10648774059/31250000000); (144683/250000, -6890971129/31250000000); (144683/250000, -13400654001/50000000000); (144683/250000, -22763600837/100000000000); (144683/250000, -137569006131/500000000000)` |
| 95 | 117 | v | 12749/31250 | 315311/500000 | 34423643759/73501200000 | 315311/500000 | 468341/1000000 | 315311/500000 | `(135767/250000, -8982074811/31250000000); (523779/1000000, -55643746387/200000000000); (135767/250000, -165090865907/500000000000); (523779/1000000, -320974069797/1000000000000); (135767/250000, -167141004359/500000000000); (523779/1000000, -325074346701/1000000000000); (135767/250000, -346125968209/1000000000000); (523779/1000000, -21057394137/62500000000); (754301/1000000, -353444099607/1000000000000); (183753/250000, -34423643759/100000000000); (754301/1000000, -209583717629/500000000000); (183753/250000, -409959773241/1000000000000); (754301/1000000, -400299714373/1000000000000); (183753/250000, -97773013089/250000000000); (754301/1000000, -435111671653/1000000000000); (183753/250000, -106476002409/250000000000); (135767/250000, -164801625907/500000000000); (523779/1000000, -984270759/3125000000); (135767/250000, -93089647419/250000000000); (523779/1000000, -178860990371/500000000000); (135767/250000, -456472295591/1000000000000); (523779/1000000, -441835686657/1000000000000); (135767/250000, -234158127541/500000000000); (523779/1000000, -113419911537/250000000000); (754301/1000000, -395620957469/1000000000000); (183753/250000, -76196869707/200000000000); (754301/1000000, -360425229/781250000); (183753/250000, -223353842093/500000000000); (754301/1000000, -261245000623/500000000000); (183753/250000, -63481674039/125000000000); (754301/1000000, -278650979263/500000000000); (183753/250000, -67833168699/125000000000)` |
| 96 | 118 | j | 168703/250000 | 177209/200000 | 198538854629/289366000000 | 177209/200000 | 171529/250000 | 177209/200000 | `(334667/500000, -122529209129/250000000000); (334667/500000, -12496211141/25000000000); (560601/1000000, -197344529397/500000000000); (560601/1000000, -202210333959/500000000000); (334667/500000, -1993300609/3906250000); (334667/500000, -130004141257/250000000000); (560601/1000000, -6274249311/15625000000); (560601/1000000, -102820891257/250000000000); (137493/200000, -24625274349/50000000000); (137493/200000, -502586824963/1000000000000); (144683/250000, -198538854629/500000000000); (144683/250000, -407159047241/1000000000000); (137493/200000, -16021050199/31250000000); (137493/200000, -522754944351/1000000000000); (144683/250000, -12623143949/31250000000); (144683/250000, -414021944351/1000000000000); (334667/500000, -350024907343/500000000000); (334667/500000, -704352476893/1000000000000); (560601/1000000, -151155509241/250000000000); (560601/1000000, -608924699171/1000000000000); (334667/500000, -23583069121/31250000000); (334667/500000, -758960874079/1000000000000); (560601/1000000, -20185162871/31250000000); (560601/1000000, -650227874079/1000000000000); (137493/200000, -14048769303/20000000000); (137493/200000, -88386357027/125000000000); (144683/250000, -151752671857/250000000000); (144683/250000, -305831539247/500000000000); (137493/200000, -1478607153/1953125000); (137493/200000, -380849626701/500000000000); (144683/250000, -10129904099/15625000000); (144683/250000, -326483126701/500000000000)` |
| 97 | 118 | k | 477353/1000000 | 379403/500000 | 477353/1000000 | 31511484541/49726000000 | 477353/1000000 | 633703/1000000 | `(-74589/100000, 162588379699/500000000000); (-726601/1000000, 306237488257/1000000000000); (-74589/100000, 86500271523/250000000000); (-726601/1000000, 327061814951/1000000000000); (-27133/31250, 45427552151/125000000000); (-848967/1000000, 344481146067/1000000000000); (-27133/31250, 19877498309/50000000000); (-848967/1000000, 378610695039/1000000000000); (-74589/100000, 33522807813/100000000000); (-726601/1000000, 31593907813/100000000000); (-74589/100000, 44506550603/125000000000); (-726601/1000000, 42095425603/125000000000); (-27133/31250, 18673586797/50000000000); (-848967/1000000, 17709136797/50000000000); (-27133/31250, 25475080307/62500000000); (-848967/1000000, 24269517807/62500000000); (-74589/100000, 114749009171/250000000000); (-726601/1000000, 440056765543/1000000000000); (-74589/100000, 458081483421/1000000000000); (-726601/1000000, 10978555307/25000000000); (-27133/31250, 248619847247/500000000000); (-848967/1000000, 478300423353/1000000000000); (-27133/31250, 509630363509/1000000000000); (-848967/1000000, 30668193273/62500000000); (-74589/100000, 94534453623/200000000000); (-726601/1000000, 90676653623/200000000000); (-74589/100000, 117939428713/250000000000); (-726601/1000000, 113117178713/250000000000); (-27133/31250, 20436637037/40000000000); (-848967/1000000, 19665077037/40000000000); (-27133/31250, 26165329747/50000000000); (-848967/1000000, 25200879747/50000000000)` |
| 98 | 121 | a | 35473/200000 | 103841/500000 | 35473/200000 | 101011/500000 | 35473/200000 | 101011/500000 | `(-1/1, 183891/1000000); (-1/1, 101011/500000)` |
| 99 | 123 | f | 23539/62500 | 301761/500000 | 395233/1000000 | 301761/500000 | 395233/1000000 | 301761/500000 | `(1/1, -395233/1000000); (1/1, -90633/200000)` |
| 100 | 0 | a | 35473/200000 | 101011/500000 | 23250/124801 | 101011/500000 | 23287/125000 | 101011/500000 | `(2239/5000, -93/1000); (97467/250000, -93/1000); (124801/250000, -93/1000); (55159/125000, -93/1000)` |
| 101 | 0 | b | 395233/1000000 | 90633/200000 | 395233/1000000 | 43847975807/101011000000 | 395233/1000000 | 108523/250000 | `(-23287/125000, 8006709471/125000000000); (-101011/500000, 38655606363/500000000000); (-23287/125000, 9203754419/125000000000); (-101011/500000, 43847975807/500000000000)` |
| 102 | 0 | c | 843033/1000000 | 894437/1000000 | 86422880563/101011000000 | 894437/1000000 | 427789/500000 | 894437/1000000 | `(23287/125000, -20828790871/125000000000); (101011/500000, -86422880563/500000000000); (23287/125000, -5433425101/31250000000); (101011/500000, -22587016753/125000000000)` |
| 103 | 7 | b | 395233/1000000 | 108523/250000 | 93000/225157 | 108523/250000 | 82609/200000 | 108523/250000 | `(303369/500000, -279/1000); (147753/250000, -279/1000); (675471/1000000, -279/1000); (131949/200000, -279/1000)` |
| 104 | 7 | h | 396517/500000 | 861767/1000000 | 11245925101/13565375000 | 861767/1000000 | 103627/125000 | 861767/1000000 | `(82609/200000, -8898715783/25000000000); (82609/200000, -36244417699/100000000000); (108523/250000, -11245925101/31250000000); (108523/250000, -45837016753/125000000000)` |
| 105 | 10 | q | 62507/200000 | 105317/250000 | 18216594933/54261500000 | 105317/250000 | 167859/500000 | 105317/250000 | `(82609/200000, -18175656387/125000000000); (82609/200000, -74914495311/500000000000); (108523/250000, -4666444469/31250000000); (108523/250000, -19260118457/125000000000); (82609/200000, -4431618361/31250000000); (82609/200000, -18241523533/125000000000); (108523/250000, -18216594933/125000000000); (108523/250000, -75092072649/500000000000)` |
| 106 | 32 | p | 4117/31250 | 151033/1000000 | 31000/225157 | 151033/1000000 | 137681/1000000 | 151033/1000000 | `(4017/6250, -93/1000); (313497/500000, -93/1000); (675471/1000000, -93/1000); (131949/200000, -93/1000)` |
| 107 | 36 | c | 427789/500000 | 894437/1000000 | 17644417699/20202200000 | 894437/1000000 | 87339/100000 | 894437/1000000 | `(183891/1000000, -33791051619/200000000000); (183891/1000000, -43206402993/250000000000); (101011/500000, -17644417699/100000000000); (101011/500000, -22587016753/125000000000)` |
| 108 | 36 | e | 183891/1000000 | 101011/500000 | 3875/20058 | 101011/500000 | 193189/1000000 | 101011/500000 | `(92069/200000, -93/1000); (219649/500000, -93/1000); (30087/62500, -93/1000)` |
| 109 | 55 | q | 167859/500000 | 105317/250000 | 167859/500000 | 162437218237/434092000000 | 167859/500000 | 1871/5000 | `(-82609/200000, 4227536307/31250000000); (-108523/250000, 19091182697/125000000000); (-82609/200000, 36074902047/250000000000); (-108523/250000, 162437218237/1000000000000); (-82609/200000, 3881629381/31250000000); (-108523/250000, 17707554993/125000000000); (-82609/200000, 33198323801/250000000000); (-108523/250000, 150930905253/1000000000000)` |
| 110 | 65 | c | 87339/100000 | 894437/1000000 | 87339/100000 | 582767/659745 | 87339/100000 | 441661/500000 | `(-635827/1000000, 8594/15625); (-313497/500000, 8594/15625); (-334289/500000, 582767/1000000); (-131949/200000, 582767/1000000)` |
| 111 | 65 | e | 193189/1000000 | 101011/500000 | 16989168013/87339000000 | 101011/500000 | 194519/1000000 | 101011/500000 | `(87339/100000, -2175478553/12500000000); (441661/500000, -11392004447/62500000000); (87339/100000, -16989168013/100000000000); (441661/500000, -89225374987/500000000000)` |
| 112 | 69 | j | 171529/250000 | 177209/200000 | 171529/250000 | 16367713141/20202200000 | 171529/250000 | 162039/200000 | `(-194519/1000000, 6866430637/50000000000); (-194519/1000000, 33629876363/250000000000); (-101011/500000, 14388165791/100000000000); (-101011/500000, 70573535209/500000000000); (-194519/1000000, 982025539/6250000000); (-194519/1000000, 4773815961/31250000000); (-101011/500000, 16367713141/100000000000); (-101011/500000, 79694837859/500000000000)` |
| 113 | 76 | u | 140799/500000 | 113177/200000 | 13313766783/41450800000 | 113177/200000 | 160597/500000 | 113177/200000 | `(103627/125000, -1632039753/4000000000); (103627/125000, -8231843247/20000000000); (861767/1000000, -21830716707/50000000000); (861767/1000000, -110130460293/250000000000); (103627/125000, -13313766783/50000000000); (103627/125000, -67061446217/250000000000); (861767/1000000, -5897594631/20000000000); (861767/1000000, -29717546369/100000000000)` |
| 114 | 89 | f | 395233/1000000 | 301761/500000 | 395233/1000000 | 38659935759/87836800000 | 395233/1000000 | 220067/500000 | `(-141417/500000, -15748399551/250000000000); (-275331/1000000, -8517690819/125000000000); (-141417/500000, 7389935759/200000000000); (-275331/1000000, 3087078571/100000000000); (-27449/62500, 23339100449/250000000000); (-431681/1000000, 11026059181/125000000000); (-27449/62500, 38659935759/200000000000); (-431681/1000000, 18722078571/100000000000)` |
| 115 | 89 | j | 171529/250000 | 162039/200000 | 39554813117/50342562500 | 162039/200000 | 785713/1000000 | 162039/200000 | `(805481/1000000, -363716165161/500000000000); (398989/500000, -724466897123/1000000000000); (805481/1000000, -185032964939/250000000000); (398989/500000, -368414767177/500000000000); (805481/1000000, -39554813117/62500000000); (398989/500000, -629911576673/1000000000000); (805481/1000000, -20393650333/31250000000); (398989/500000, -324647242627/500000000000)` |
| 116 | 89 | k | 477353/1000000 | 633703/1000000 | 181761496639/302383500000 | 633703/1000000 | 120219/200000 | 633703/1000000 | `(604767/1000000, -4790534739/12500000000); (604767/1000000, -2413578441/6250000000); (279933/500000, -374508681501/1000000000000); (279933/500000, -188550780369/500000000000); (604767/1000000, -181761496639/500000000000); (604767/1000000, -91659113291/250000000000); (279933/500000, -354788895659/1000000000000); (279933/500000, -178782731671/500000000000)` |
| 117 | 91 | u | 160597/500000 | 113177/200000 | 160597/500000 | 100142/219915 | 160597/500000 | 455367/1000000 | `(-634497/1000000, 10707/40000); (-313497/500000, 10707/40000); (-41703/62500, 150213/500000); (-131949/200000, 150213/500000); (-634497/1000000, 52697/500000); (-313497/500000, 52697/500000); (-41703/62500, 27629/200000); (-131949/200000, 27629/200000)` |
| 118 | 91 | v | 468341/1000000 | 315311/500000 | 468341/1000000 | 55686086447/100000000000 | 468341/1000000 | 556861/1000000 | `(-1/1, 266109685291/500000000000); (-1/1, 133657322291/250000000000); (-1/1, 17326592059/31250000000); (-1/1, 55686086447/100000000000); (-1/1, 447087004601/1000000000000); (-1/1, 225251811601/500000000000); (-1/1, 29057767499/62500000000); (-1/1, 93668179717/200000000000)` |
| 119 | 95 | e | 194519/1000000 | 101011/500000 | 194519/1000000 | 169469/862319 | 194519/1000000 | 12283/62500 | `(-739953/1000000, 112753825423/1000000000000); (-726601/1000000, 19928782107/200000000000); (-739953/1000000, 108044937011/1000000000000); (-726601/1000000, 94935022123/1000000000000); (-862319/1000000, 153834294211/1000000000000); (-848967/1000000, 140724379323/1000000000000); (-739953/1000000, 32097132803/250000000000); (-726601/1000000, 28759132803/250000000000); (-739953/1000000, 309199107/2500000000); (-726601/1000000, 275819107/2500000000); (-862319/1000000, 169469/1000000); (-848967/1000000, 156117/1000000)` |
| 120 | 95 | p | 137681/1000000 | 151033/1000000 | 137681/1000000 | 112631/805481 | 137681/1000000 | 139831/1000000 | `(-15747/20000, 38611021583/500000000000); (-785341/1000000, 3772943823/50000000000); (-15747/20000, 36256577377/500000000000); (-785341/1000000, 4421874253/62500000000); (-15747/20000, 189/2000); (-785341/1000000, 92491/1000000); (-805481/1000000, 47676521583/500000000000); (-50217/62500, 4679493823/50000000000); (-805481/1000000, 45322077377/500000000000); (-50217/62500, 5555061753/62500000000); (-805481/1000000, 112631/1000000); (-50217/62500, 55311/500000)` |
| 121 | 95 | r | 438817/500000 | 1/1 | 139467429561/141199000000 | 1/1 | 123467/125000 | 1/1 | `(141199/1000000, -3102042707/20000000000); (13919/100000, -154825534221/1000000000000); (141199/1000000, -3135898757/20000000000); (13919/100000, -156514017371/1000000000000); (179681/1000000, -3871682707/20000000000); (22209/125000, -193307534221/1000000000000); (179681/1000000, -3905538757/20000000000); (22209/125000, -194996017371/1000000000000); (141199/1000000, -139467429561/1000000000000); (13919/100000, -8699426777/62500000000); (141199/1000000, -141199213711/1000000000000); (13919/100000, -8807393327/62500000000); (179681/1000000, -177949429561/1000000000000); (22209/125000, -11104551777/62500000000); (179681/1000000, -179681213711/1000000000000); (22209/125000, -11212518327/62500000000)` |
| 122 | 95 | w | 981869/1000000 | 1/1 | 860587429561/862319000000 | 1/1 | 997991/1000000 | 1/1 | `(862319/1000000, -862319094097/1000000000000); (862319/1000000, -13500419603/15625000000); (860169/1000000, -861900878247/1000000000000); (860169/1000000, -26987634981/31250000000); (862319/1000000, -172558207469/200000000000); (862319/1000000, -10806234973/12500000000); (860169/1000000, -172474564299/200000000000); (860169/1000000, -10800953283/12500000000); (862319/1000000, -860587429561/1000000000000); (862319/1000000, -53894989277/62500000000); (860169/1000000, -860169213711/1000000000000); (860169/1000000, -53868580827/62500000000)` |
| 123 | 102 | h | 103627/125000 | 861767/1000000 | 103627/125000 | 512561023097/604767000000 | 103627/125000 | 169507/200000 | `(-592503/1000000, 500297023097/1000000000000); (-273801/500000, 227743114603/500000000000); (-604767/1000000, 512561023097/1000000000000); (-279933/500000, 233875114603/500000000000); (-592503/1000000, 499503/1000000); (-273801/500000, 227301/500000); (-604767/1000000, 511767/1000000); (-279933/500000, 233433/500000)` |
| 124 | 104 | u | 160597/500000 | 455367/1000000 | 25425871579/78225000000 | 455367/1000000 | 65007/200000 | 455367/1000000 | `(332141/500000, -109308164469/500000000000); (332141/500000, -224571234261/1000000000000); (332141/500000, -54939848947/250000000000); (332141/500000, -225714301111/1000000000000); (3129/5000, -25425871579/125000000000); (3129/5000, -207633997673/1000000000000); (3129/5000, -102275019741/500000000000); (3129/5000, -208777064523/1000000000000); (332141/500000, -120707415989/500000000000); (332141/500000, -251344373821/1000000000000); (332141/500000, -60591895207/250000000000); (332141/500000, -252297122671/1000000000000); (3129/5000, -28275684459/125000000000); (3129/5000, -234407137233/1000000000000); (3129/5000, -113579112261/500000000000); (3129/5000, -235359886083/1000000000000)` |
| 125 | 116 | u | 65007/200000 | 455367/1000000 | 51837159511/125160000000 | 455367/1000000 | 414167/1000000 | 455367/1000000 | `(662273/1000000, -148459626589/500000000000); (662273/1000000, -149029000339/500000000000); (623791/1000000, -129454598213/500000000000); (623791/1000000, -130023971963/500000000000); (662273/1000000, -186083060889/500000000000); (662273/1000000, -186557275639/500000000000); (623791/1000000, -167078032513/500000000000); (623791/1000000, -167552247263/500000000000); (662273/1000000, -5970914833/20000000000); (662273/1000000, -5993689783/20000000000); (623791/1000000, -5201274833/20000000000); (623791/1000000, -5224049783/20000000000); (662273/1000000, -37487821953/100000000000); (662273/1000000, -37582664903/100000000000); (623791/1000000, -33639621953/100000000000); (623791/1000000, -33734464903/100000000000); (332141/500000, -297195854307/1000000000000); (332141/500000, -298338921157/1000000000000); (3129/5000, -51837159511/200000000000); (3129/5000, -52065772881/200000000000); (332141/500000, -372442722907/1000000000000); (332141/500000, -373395471757/1000000000000); (3129/5000, -66886533231/200000000000); (3129/5000, -67077083001/200000000000); (332141/500000, -298822342779/1000000000000); (332141/500000, -299965409629/1000000000000); (3129/5000, -260340342779/1000000000000); (3129/5000, -261483409629/1000000000000); (332141/500000, -375154820659/1000000000000); (332141/500000, -376107569509/1000000000000); (3129/5000, -336672820659/1000000000000); (3129/5000, -337625569509/1000000000000)` |
| 126 | 116 | v | 468341/1000000 | 556861/1000000 | 468341/1000000 | 2119492399/4250275000 | 468341/1000000 | 31167/62500 | `(-170011/200000, 23467998573/62500000000); (-169581/200000, 186671148259/500000000000); (-170011/200000, 198780029713/500000000000); (-169581/200000, 49426797347/125000000000); (-170011/200000, 6293337887/15625000000); (-169581/200000, 200313972059/500000000000); (-170011/200000, 211630124313/500000000000); (-169581/200000, 52639320997/125000000000); (-862319/1000000, 1186266321/3125000000); (-860169/1000000, 37745954207/100000000000); (-862319/1000000, 201074624113/500000000000); (-860169/1000000, 50000445947/125000000000); (-862319/1000000, 5086135879/12500000000); (-860169/1000000, 40474518967/100000000000); (-862319/1000000, 213924718713/500000000000); (-860169/1000000, 53212969597/125000000000); (-170011/200000, 188021718771/500000000000); (-169581/200000, 186946718771/500000000000); (-170011/200000, 1990577599/5000000000); (-169581/200000, 1979827599/5000000000); (-170011/200000, 201705927971/500000000000); (-169581/200000, 200630927971/500000000000); (-170011/200000, 2119492399/5000000000); (-169581/200000, 2108742399/5000000000); (-862319/1000000, 190080341547/500000000000); (-860169/1000000, 189005341547/500000000000); (-862319/1000000, 2013523543/5000000000); (-860169/1000000, 2002773543/5000000000); (-862319/1000000, 203764550747/500000000000); (-860169/1000000, 202689550747/500000000000); (-862319/1000000, 2142438343/5000000000); (-860169/1000000, 2131688343/5000000000)` |

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
| 117 | p | 137681/1000000 | 139831/1000000 | `(66377/500000, -2467669519/25000000000); (66377/500000, -28251153483/250000000000); (66377/500000, -2741007829/25000000000); (66377/500000, -30588171983/250000000000); (102423/1000000, -74875319757/1000000000000); (102423/1000000, -89173152929/1000000000000); (102423/1000000, -85808852157/1000000000000); (102423/1000000, -98521226929/1000000000000); (66377/500000, -47729952237/500000000000); (66377/500000, -11069985397/100000000000); (66377/500000, -53196718437/500000000000); (66377/500000, -12004792797/100000000000); (102423/1000000, -70885879929/1000000000000); (102423/1000000, -3445033177/40000000000); (102423/1000000, -81819412329/1000000000000); (102423/1000000, -3818956137/40000000000); (82681/500000, -14026492287/125000000000); (82681/500000, -31627442867/250000000000); (82681/500000, -15561115037/125000000000); (82681/500000, -34300323767/250000000000); (135031/1000000, -88380477293/1000000000000); (135031/1000000, -20535662093/200000000000); (135031/1000000, -100657459293/1000000000000); (135031/1000000, -22673966813/200000000000); (82681/500000, -10896506201/100000000000); (82681/500000, -62102505753/500000000000); (82681/500000, -12124204401/100000000000); (82681/500000, -67448267553/500000000000); (135031/1000000, -16878207493/200000000000); (135031/1000000, -99630986961/1000000000000); (135031/1000000, -19333603893/200000000000); (135031/1000000, -110322510561/1000000000000)` |

## Stage 154

| Property | Value |
| --- | --- |
| Scope | root/ACP+/HBP-/HEQ-/CFQ+/PQR- |
| Packet | forest:root/ACP+/HBP-/HEQ-/CFQ+/PQR- |
| Index | 0 |
| Context | 62 |
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
| q | 82827/500000 | 703163/1000000 | 82827/500000 | 664071/1000000 |
| u | 107821/1000000 | 107817/125000 | 107821/1000000 | 107817/125000 |
| v | 17183/125000 | 850071/1000000 | 17183/125000 | 850071/1000000 |
| r | 40433/62500 | 1/1 | 40433/62500 | 1/1 |
| w | 274929/500000 | 1/1 | 274929/500000 | 1/1 |
| j | 51267/100000 | 892179/1000000 | 51267/100000 | 892179/1000000 |
| k | 412393/1000000 | 8033/8963 | 412393/1000000 | 8033/8963 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 90 | A_EHP | bitt ["actual-area","EHP",["Q"]] | `-1/1 * q + -1/1 * h * p + 1/1 * h + 1/1 * e * p + -279/1000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 90 | q | 82827/500000 | 703163/1000000 | 82827/500000 | 41504407/62500000 | 82827/500000 | 664071/1000000 | `(-1/1, 176983863047/500000000000); (-1/1, 7800754643/20000000000); (-1/1, 78500063243/125000000000); (-1/1, 41504407/62500000); (-1/1, 38001096031/250000000000); (-1/1, 3097267339/10000000000); (-1/1, 19646475139/62500000000); (-1/1, 14752061/31250000)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 154:0 | ABC | lo | 93/1000 | occupants none |
| 154:3 | ABE | hi | 59/125 | vertex maximum 59/125 |
| 154:4 | ABF | lo | 119853/1000000 | earlier 98:4; ABF; lo; 119853/1000000 |
| 154:7 | ABH | hi | 9117760239/15625000000 | vertex maximum 9117760239/15625000000 |
| 154:8 | ABP | lo | 93/1000 | occupants none |
| 154:9 | ABP | hi | 397537/1000000 | earlier 98:9; ABP; hi; 397537/1000000 |
| 154:16 | ACE | lo | 93/1000 | occupants none |
| 154:17 | ACE | hi | 59/125 | vertex maximum 59/125 |
| 154:18 | ACF | lo | 160463/1000000 | earlier 98:18; ACF; lo; 160463/1000000 |
| 154:22 | ACP | lo | 93/1000 | occupants none |
| 154:23 | ACP | hi | 114557/200000 | earlier 98:23; ACP; hi; 114557/200000 |
| 154:28 | ACS | lo | 103751/1000000 | earlier 98:28; ACS; lo; 103751/1000000 |
| 154:32 | AEH | lo | 34/125 | earlier 98:32; AEH; lo; 34/125 |
| 154:37 | AES | hi | 45317/62500 | earlier 98:37; AES; hi; 45317/62500 |
| 154:44 | AHP | lo | 93/1000 | occupants none |
| 154:45 | AHP | hi | 397537/1000000 | earlier 98:45; AHP; hi; 397537/1000000 |
| 154:52 | BCE | lo | 93/1000 | occupants none |
| 154:58 | BCP | lo | 93/1000 | occupants none |
| 154:62 | BCR | lo | 93/1000 | occupants none |
| 154:68 | BEH | lo | 279/1000 | occupants Q |
| 154:69 | BEH | hi | 6478211/7812500 | vertex maximum 6478211/7812500 |
| 154:70 | BEP | lo | 93/1000 | occupants none |
| 154:71 | BEP | hi | 68881429257/125000000000 | vertex maximum 68881429257/125000000000 |
| 154:72 | BEQ | lo | 93/1000 | occupants none |
| 154:74 | BER | lo | 93/1000 | occupants none |
| 154:86 | BHP | lo | 93/1000 | occupants none |
| 154:87 | BHP | hi | 397537/1000000 | earlier 98:85; BHP; hi; 397537/1000000 |
| 154:88 | BHQ | lo | 93/1000 | occupants none |
| 154:91 | BHR | hi | 1/1 | vertex maximum 1/1 |
| 154:100 | BQR | lo | 93/1000 | occupants none |
| 154:104 | CEH | lo | 279/1000 | occupants Q |
| 154:105 | CEH | hi | 792719/1250000 | vertex maximum 792719/1250000 |
| 154:106 | CEP | lo | 122643/1000000 | earlier 98:102; CEP; lo; 122643/1000000 |
| 154:107 | CEP | hi | 9602061913/20000000000 | vertex maximum 9602061913/20000000000 |
| 154:109 | CEQ | hi | 28011/62500 | earlier 98:105; CEQ; hi; 28011/62500 |
| 154:110 | CER | lo | 93/1000 | occupants none |
| 154:114 | CFH | lo | 279/1000 | occupants Q |
| 154:116 | CFP | lo | 26679/200000 | earlier 98:112; CFP; lo; 26679/200000 |
| 154:120 | CFR | lo | 4733/25000 | earlier 98:116; CFR; lo; 4733/25000 |
| 154:121 | CFR | hi | 84567/125000 | vertex maximum 84567/125000 |
| 154:125 | CHP | hi | 84567/125000 | earlier 98:121; CHP; hi; 84567/125000 |
| 154:126 | CHQ | lo | 93/1000 | occupants none |
| 154:139 | CQR | hi | 173267/250000 | earlier 98:135; CQR; hi; 173267/250000 |
| 154:142 | EFH | lo | 129381/1000000 | earlier 98:138; EFH; lo; 129381/1000000 |
| 154:148 | EFR | lo | 279/1000 | occupants S |
| 154:152 | EHP | lo | 279/1000 | occupants Q |
| 154:153 | EHP | hi | 8997/12500 | earlier 98:149; EHP; hi; 8997/12500 |
| 154:154 | EHQ | lo | 93/1000 | occupants none |
| 154:157 | EHR | hi | 107817/125000 | vertex maximum 107817/125000 |
| 154:160 | EPQ | lo | 93/1000 | occupants none |
| 154:173 | FHP | hi | 553893/1000000 | earlier 98:167; FHP; hi; 553893/1000000 |
| 154:176 | FHR | lo | 93/1000 | occupants none |
| 154:184 | FQR | lo | 134401/1000000 | earlier 98:178; FQR; lo; 134401/1000000 |
| 154:189 | FRS | hi | 397537/1000000 | earlier 98:183; FRS; hi; 397537/1000000 |
| 154:190 | HPQ | lo | 93/1000 | occupants none |
| 154:193 | HPR | hi | 818719/1000000 | earlier 98:187; HPR; hi; 818719/1000000 |
| 154:195 | HPS | hi | 35379/50000 | earlier 98:189; HPS; hi; 35379/50000 |
| 154:196 | HQR | lo | 93/1000 | occupants none |
| 154:200 | PQR | lo | 93/1000 | occupants none |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 18 | plu | ACE * BCH = ABC * CEH + ACH * BCE | circuit CABEH |
| 463 | plu | CEF * EHR = CEH * EFR + CER * EFH | circuit ECFHR |
| 464 | plu | CFR * EFH = CEF * FHR + CFH * EFR | circuit FCEHR |
| 1085 | support | EHP * CEH >= 1023/1000 * (EHP - CHP) | pentagon HPBCE |
| 1276 | support | EHP * FHP >= 1023/1000 * (EHP - EFP) | pentagon PERFH |
| 1304 | bary | outer ABH; fans BHP, AHP, ABP; target CEP; sign 1; vertices ACE 1; BCE 1; CEH 1 | container ABH; inner P; line CE |
| 1352 | bary | outer BEH; fans EHQ, BHQ, BEQ; target ABQ; sign 1; vertices none 0; ABE 1; ABH 1 | container BEH; inner Q; line AB |
| 1393 | bary | outer BHR; fans HQR, BQR, BHQ; target CEQ; sign 1; vertices BCE 1; CEH 1; CER 1 | container BHR; inner Q; line CE |
| 1418 | bary | outer CEH; fans EHQ, CHQ, CEQ; target BEQ; sign 1; vertices BCE -1; none 0; BEH 1 | container CEH; inner Q; line BE |
| 1422 | bary | outer CEH; fans EHQ, CHQ, CEQ; target BQR; sign 1; vertices BCR -1; BER -1; BHR 1 | container CEH; inner Q; line BR |
| 1426 | bary | outer CEH; fans EHQ, CHQ, CEQ; target CPQ; sign -1; vertices none 0; CEP -1; CHP -1 | container CEH; inner Q; line CP |
| 1570 | bary | outer EHP; fans HPQ, EPQ, EHQ; target BCQ; sign 1; vertices BCE 1; BCH 1; BCP 1 | container EHP; inner Q; line BC |
| 1573 | bary | outer EHP; fans HPQ, EPQ, EHQ; target BPQ; sign -1; vertices BEP -1; BHP -1; none 0 | container EHP; inner Q; line BP |
| 1603 | bary | outer HPR; fans PQR, HQR, HPQ; target BEQ; sign 1; vertices BEH 1; BEP 1; BER 1 | container HPR; inner Q; line BE |
| 1608 | bary | outer HPR; fans PQR, HQR, HPQ; target CEQ; sign 1; vertices CEH 1; CEP 1; CER 1 | container HPR; inner Q; line CE |
| 1654 | four | 1 * ACH + -1 * AHP + -1 * ACP + -1 * CHP = 0 | vertices ACHP |
| 1688 | four | 1 * BEH + -1 * BHQ + -1 * BEQ + -1 * EHQ = 0 | vertices BEHQ |
| 1711 | four | 1 * CEH + -1 * CHQ + -1 * CEQ + -1 * EHQ = 0 | vertices CEHQ |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 154:209 | CHP | lo | 106043/1000000 | 1458093/13750000 | 1085 | 154:152, 154:105 |
| 154:210 | EFP | lo | 63969/500000 | 1407321/11000000 | 1276 | 154:152, 154:173 |
| 154:211 | ABQ | hi | 505581/1000000 | 25587963882927777/50611023437500000 | 1352 | 154:69, 154:154, 154:88, 154:72, 154:3, 154:7 |
| 154:215 | CEQ | lo | 55149/500000 | 55149/500000 | 1393 | 154:91, 154:196, 154:100, 154:88, 154:52, 154:104, 154:110 |
| 154:219 | BEQ | hi | 57237/100000 | 886188499396/1548279296875 | 1418 | 154:105, 154:154, 154:126, 154:215, 154:52, 154:69 |
| 154:220 | BQR | hi | 67943/100000 | 1077193/1585438 | 1422 | 154:105, 154:154, 154:126, 154:215, 154:62, 154:74, 154:91 |
| 154:222 | CPQ | hi | 274259/500000 | 6957124900053/12683504000000 | 1426 | 154:105, 154:154, 154:126, 154:215, 154:107, 154:125 |
| 154:233 | BPQ | hi | 92003/200000 | 43111999276267/93718750000000 | 1573 | 154:153, 154:190, 154:160, 154:154, 154:71, 154:87 |
| 154:235 | BEQ | lo | 7133/62500 | 93438867/818719000 | 1603 | 154:193, 154:200, 154:196, 154:190, 154:68, 154:70, 154:74 |
| 154:236 | CEQ | lo | 23499/200000 | 48097833/409359500 | 1608 | 154:193, 154:200, 154:196, 154:190, 154:104, 154:106, 154:110 |
| 154:239 | ACH | lo | 292043/1000000 | 292043/1000000 | 1654 | 154:44, 154:22, 154:209 |
| 154:240 | BEH | lo | 9379/31250 | 9379/31250 | 1688 | 154:88, 154:235, 154:154 |
| 154:241 | CEH | lo | 60699/200000 | 60699/200000 | 1711 | 154:126, 154:236, 154:154 |
| 154:249 | CEF | lo | 2803/25000 | 16117923/143756000 | 463 | 154:241, 154:148, 154:110, 154:142, 154:157 |
| 154:251 | EFH | lo | 13047/100000 | 91946/704725 | 464 | 154:249, 154:176, 154:114, 154:148, 154:121 |
| 154:252 | CEP | lo | 126547/1000000 | 64101513839/506542235500 | 1304 | 154:7, 154:86, 154:44, 154:8, 154:16, 154:52, 154:241 |
| 154:268 | BEQ | lo | 7283/62500 | 95403771/818719000 | 1603 | 154:193, 154:200, 154:196, 154:190, 154:240, 154:70, 154:74 |
| 154:269 | CEQ | lo | 120721/1000000 | 98836773/818719000 | 1608 | 154:193, 154:200, 154:196, 154:190, 154:241, 154:252, 154:110 |
| 154:270 | BEH | lo | 4727/15625 | 4727/15625 | 1688 | 154:88, 154:268, 154:154 |
| 154:271 | CEH | lo | 306721/1000000 | 306721/1000000 | 1711 | 154:126, 154:269, 154:154 |
| 154:277 | CEF | lo | 354/3125 | 32569623/287512000 | 463 | 154:271, 154:148, 154:110, 154:251, 154:157 |
| 154:279 | EFH | lo | 13063/100000 | 736467/5637800 | 464 | 154:277, 154:176, 154:114, 154:148, 154:121 |
| 154:280 | CEP | lo | 127061/1000000 | 48271459598/379906676625 | 1304 | 154:7, 154:86, 154:44, 154:8, 154:16, 154:52, 154:271 |
| 154:294 | BEQ | lo | 73/625 | 8693361/74429000 | 1603 | 154:193, 154:200, 154:196, 154:190, 154:270, 154:70, 154:74 |
| 154:295 | CEQ | lo | 60573/500000 | 99184593/818719000 | 1608 | 154:193, 154:200, 154:196, 154:190, 154:271, 154:280, 154:110 |
| 154:296 | BEH | lo | 757/2500 | 757/2500 | 1688 | 154:88, 154:294, 154:154 |
| 154:297 | CEH | lo | 153573/500000 | 153573/500000 | 1711 | 154:126, 154:295, 154:154 |
| 154:303 | CEF | lo | 22687/200000 | 8153527/71878000 | 463 | 154:297, 154:148, 154:110, 154:279, 154:157 |
| 154:305 | EFH | lo | 130651/1000000 | 5892697/45102400 | 464 | 154:303, 154:176, 154:114, 154:148, 154:121 |
| 154:306 | CEP | lo | 127129/1000000 | 128792512053/1013084471000 | 1304 | 154:7, 154:86, 154:44, 154:8, 154:16, 154:52, 154:297 |
| 154:320 | BEQ | lo | 116831/1000000 | 95652267/818719000 | 1603 | 154:193, 154:200, 154:196, 154:190, 154:296, 154:70, 154:74 |
| 154:321 | CEQ | lo | 60601/500000 | 49615221/409359500 | 1608 | 154:193, 154:200, 154:196, 154:190, 154:297, 154:306, 154:110 |
| 154:322 | BEH | lo | 302831/1000000 | 302831/1000000 | 1688 | 154:88, 154:320, 154:154 |
| 154:323 | CEH | lo | 153601/500000 | 153601/500000 | 1711 | 154:126, 154:321, 154:154 |
| 154:326 | BCH | lo | 118071/1000000 | 11145957/94400000 | 18 | 154:0, 154:323, 154:239, 154:52, 154:17 |
| 154:329 | CEF | lo | 7091/62500 | 32619967/287512000 | 463 | 154:323, 154:148, 154:110, 154:305, 154:157 |
| 154:331 | EFH | lo | 65327/500000 | 3683017/28189000 | 464 | 154:329, 154:176, 154:114, 154:148, 154:121 |
| 154:332 | CEP | lo | 63569/500000 | 386404661159/3039253413000 | 1304 | 154:7, 154:86, 154:44, 154:8, 154:16, 154:52, 154:323 |
| 154:345 | BCQ | lo | 96239/1000000 | 23089761/239920000 | 1570 | 154:153, 154:190, 154:160, 154:154, 154:52, 154:326, 154:58 |
| 154:346 | BEQ | lo | 23367/200000 | 1913103/16374380 | 1603 | 154:193, 154:200, 154:196, 154:190, 154:322, 154:70, 154:74 |
| 154:347 | CEQ | lo | 121209/1000000 | 99236487/818719000 | 1608 | 154:193, 154:200, 154:196, 154:190, 154:323, 154:332, 154:110 |
| 154:348 | BEH | lo | 60567/200000 | 60567/200000 | 1688 | 154:88, 154:346, 154:154 |
| 154:349 | CEH | lo | 307209/1000000 | 307209/1000000 | 1711 | 154:126, 154:347, 154:154 |
| 154:356 | CEP | lo | 127139/1000000 | 16100335491/126635558875 | 1304 | 154:7, 154:86, 154:44, 154:8, 154:16, 154:52, 154:349 |
| 154:365 | CEQ | lo | 12121/100000 | 99237231/818719000 | 1608 | 154:193, 154:200, 154:196, 154:190, 154:349, 154:356, 154:110 |
| 154:366 | CEH | lo | 30721/100000 | 30721/100000 | 1711 | 154:126, 154:365, 154:154 |
