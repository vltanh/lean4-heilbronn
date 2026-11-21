# BITT convex: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 70

| Property | Value |
| --- | --- |
| Scope | root/AFQ+/BPS-/HQR+/APR- |
| Packet | forest:root/AFQ+/BPS-/HQR+/APR- |
| Index | 7 |
| Context | 19 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 69 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 105093/1000000 | 6143/20000 | 105093/1000000 | 6143/20000 |
| b | 103921/1000000 | 253527/500000 | 103921/1000000 | 253527/500000 |
| c | 135501/250000 | 61803/62500 | 135501/250000 | 61803/62500 |
| e | 105093/1000000 | 391/1000 | 105093/1000000 | 391/1000 |
| f | 73753/200000 | 116863/200000 | 73753/200000 | 116863/200000 |
| h | 797943/1000000 | 1/1 | 797943/1000000 | 1/1 |
| p | 138897/500000 | 148473/250000 | 138897/500000 | 148473/250000 |
| q | 152681/500000 | 52583/100000 | 152681/500000 | 52583/100000 |
| u | 80461/500000 | 376473/1000000 | 80461/500000 | 376473/1000000 |
| v | 630103/1000000 | 21021/25000 | 630103/1000000 | 21021/25000 |
| r | 387107/500000 | 1/1 | 387107/500000 | 1/1 |
| w | 245621/500000 | 814019/1000000 | 245621/500000 | 814019/1000000 |
| j | 13857/20000 | 54301/62500 | 13857/20000 | 54301/62500 |
| k | 37727/62500 | 1/1 | 37727/62500 | 1/1 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 2 | AC_ABC_ABC_1 | bitt ["anchor-cap","ABC","ABC",1,[]] | `-93/1000 + 1/1 * c + -1/1 * b` |
| 4 | AC_ABE_ABE_0 | bitt ["anchor-cap","ABE","ABE",0,[]] | `-93/1000 + 1/1 * e` |
| 6 | AC_ABF_ABF_0 | bitt ["anchor-cap","ABF","ABF",0,[]] | `-93/1000 + 1/1 * f` |
| 20 | AC_ACP_ACF_0 | bitt ["anchor-cap","ACP","ACF",0,[]] | `-93/1000 + 1/1 * c` |
| 27 | AC_AEP_AEF_0 | bitt ["anchor-cap","AEP","AEF",0,[]] | `907/1000 + -1/1 * a` |
| 51 | AC_BCP_BCH_0 | bitt ["anchor-cap","BCP","BCH",0,[]] | `-93/1000 + 1/1 * h` |
| 59 | AC_BEP_BEF_0 | bitt ["anchor-cap","BEP","BEF",0,[]] | `907/1000 + -1/1 * b` |
| 79 | AC_CEF_CEF_0 | bitt ["anchor-cap","CEF","CEF",0,[]] | `907/1000 + -1/1 * f` |
| 104 | AC_EFQ_EFH_0 | bitt ["anchor-cap","EFQ","EFH",0,[]] | `907/1000 + -1/1 * e` |
| 137 | ha | bitt ["contact-order","ha"] | `1/1 * h + -1/1 * a` |
| 138 | ea | bitt ["contact-order","ea"] | `1/1 * e + -1/1 * a` |
| 139 | he | bitt ["contact-order","he"] | `1/1 * h + -1/1 * e` |
| 140 | fb | bitt ["contact-order","fb"] | `1/1 * f + -1/1 * b` |
| 141 | cf | bitt ["contact-order","cf"] | `1/1 * c + -1/1 * f` |
| 142 | sym | bitt ["contact-order","sym"] | `1/1 * f + -1/1 * e` |
| 143 | octagon-ear-sum | bitt ["octagon-ear-sum","ABCERSFH"] | `76277533/62500000 + 2/1 * a * b + -1/1 * b * h + -1/1 * a * c + -2/1 * c * e + 1/1 * b * e + -2/1 * w + 1/1 * c * w + 2/1 * e * r + -2/1 * r * k + 1/1 * k + 2/1 * w * j + -1/1 * e * j + -2/1 * j + 1/1 * r + 2/1 * f * k + -1/1 * f * w + -2/1 * f * h + 1/1 * h * j + 1/1 * a * f` |
| 151 | octagon-cap-FHA | bitt ["octagon-ear-cap","ABCERSFH","FHA",["FHA","Q"]] | `569722789/1000000000 + 1/1 * a * f + -1/1 * f * h` |
| 152 | lower-area | bitt ["endpoint-lower","135501/250000"] | `1/1 * c * h + -135501/250000` |
| 153 | lower-quad | bitt ["lower-quad","BITT"] | `1/1 * c * h + -1/1 * a * b + -279/625` |
| 154 | upper-quad | bitt ["upper-quad","BITT"] | `346/625 + -1/1 * c * h + 1/1 * f * h + 1/1 * c * e + -1/1 * e * f` |
| 155 | top-area | bitt ["top-hull","+"] | `157/250 + -1/1 * f + -1/1 * e + 1/1 * e * f` |
| 160 | central-sum | bitt ["central-sum","61803/62500"] | `37327/41202 + -1/1 * p + -1/1 * q` |
| 161 | central-p-floor | bitt ["central-floor",0,"101627517/884927000"] | `1/1 * p + -101627517/884927000` |
| 162 | central-q-floor | bitt ["central-floor",1,"4282235375/36871958214"] | `1/1 * q + -4282235375/36871958214` |
| 163 | central-x | bitt ["central-lower-x"] | `1/1 * c * h * p + -1/1 * b * h * p + -93/1000 * c + -93/1000 * b` |
| 164 | central-y | bitt ["central-lower-y"] | `1/1 * c * h * q + -1/1 * a * c * q + -93/1000 * h + -93/1000 * a` |
| 268 | SUP_AFH_AEH_EFH | bitt ["support-envelope",["quad","HAEF",["P","Q"],"12/1"],"AFH","AEH","EFH","104581516741/200000000000"] | `-118618483259/200000000000 * h + -104581516741/200000000000 * a + 279/250 * a * f + -279/250 * e * f + 279/250` |
| 286 | SUP_AER_EHR_AEH | bitt ["support-envelope",["quad","ERHA",["P","Q"],"199/10"],"AER","EHR","AEH","354463/500000"] | `-570887/500000 * w + 354463/500000 * h * r + 570887/500000 * h + 570887/500000 * e * r + -18507/10000 * a * r` |
| 397 | SUP_BEH_BER_BHR | bitt ["support-envelope",["quad","BERH",["P","Q"],"199/10"],"BEH","BER","BHR","936712111/1000000000"] | `936712111/1000000000 * w + 913987889/1000000000 * b * w + -936712111/1000000000 * e * r + -913987889/1000000000 * b * e + -18507/10000 * h + 18507/10000 * h * r` |
| 398 | SUP_BER_EHR_BEH | bitt ["support-envelope",["quad","ERHB",["P","Q"],"199/10"],"BER","EHR","BEH","164745557313/250000000000"] | `-297929442687/250000000000 * w + 164745557313/250000000000 * h * r + 297929442687/250000000000 * h + 297929442687/250000000000 * e * r + 18507/10000 * b * w + -18507/10000 * b * h` |
| 402 | SUP_BES_EHS_BEH | bitt ["support-envelope",["quad","ESHB",["P","Q"],"199/10"],"BES","EHS","BEH","834186684603/1000000000000"] | `-1016513315397/1000000000000 * k + 834186684603/1000000000000 * h * j + 1016513315397/1000000000000 * h + 1016513315397/1000000000000 * e * j + 18507/10000 * b * k + -18507/10000 * b * h` |
| 508 | SUP_FPR_FHR_HPR | bitt ["support-envelope",["quad","RFHP",["Q"],"12/1"],"FPR","FHR","HPR","121190510487/250000000000"] | `157809489513/250000000000 * f * w + 157809489513/250000000000 * h * r + 121190510487/250000000000 * f * h + -157809489513/250000000000 * r + 279/250 * p + -279/250 * f * q + -279/250 * h * p` |
| 607 | SUP_ABE_ABS_BES | bitt ["support-envelope",["pentagon","BERSA"],"ABE","ABS","BES","3496664779/10000000000"] | `-6733335221/10000000000 * b * k + 6733335221/10000000000 * a * b + 3496664779/10000000000 * a * j + -1023/1000 * a + 1023/1000 * k + -1023/1000 * e * j` |
| 613 | SUP_AFH_FHP_AHP | bitt ["support-envelope",["pentagon","HABPF"],"AFH","FHP","AHP","104581516741/200000000000"] | `-104581516741/200000000000 * f * q + 100018483259/200000000000 * h * p + -100018483259/200000000000 * f * h + 104581516741/200000000000 * p + 1023/1000 * a * f + -1023/1000 * a * p` |
| 623 | SUP_FPQ_BFP_BFQ | bitt ["support-envelope",["pentagon","FQABP"],"FPQ","BFP","BFQ","297647370303/1000000000000"] | `725352629697/1000000000000 * f * q + 297647370303/1000000000000 * b * q + -725352629697/1000000000000 * p + 725352629697/1000000000000 * b + 1023/1000 * p * v + -1023/1000 * q * u + -1023/1000 * b * v` |
| 634 | SUP_AFS_FRS_AFR | bitt ["support-envelope",["pentagon","FABRS"],"AFS","FRS","AFR","593665785777/1000000000000"] | `593665785777/1000000000000 * r * k + 429334214223/1000000000000 * r + 429334214223/1000000000000 * f * k + -593665785777/1000000000000 * w * j + -429334214223/1000000000000 * f * w + -429334214223/1000000000000 * j + 1023/1000 * a * j + -1023/1000 * a * r` |
| 732 | SUP_BCP_BPR_BCR | bitt ["support-envelope",["pentagon","BCERP"],"BCP","BPR","BCR","46532116441/100000000000"] | `-46532116441/100000000000 * p * w + -55767883559/100000000000 * b * w + 46532116441/100000000000 * q * r + 55767883559/100000000000 * b * q + -1023/1000 * c * q + 1023/1000 * c * w` |
| 737 | SUP_BPS_EPS_BEP | bitt ["support-envelope",["pentagon","PBCES"],"BPS","EPS","BEP","20974265623/50000000000"] | `30175734377/50000000000 * p * k + -30175734377/50000000000 * e * p + 20974265623/50000000000 * k + -30175734377/50000000000 * q * j + 30175734377/50000000000 * q + -20974265623/50000000000 * e * j + -1023/1000 * b * k + 1023/1000 * b * e` |
| 756 | SUP_BCR_BCP_CPR | bitt ["support-envelope",["pentagon","CRSPB"],"BCR","BCP","CPR","720347391613/1000000000000"] | `-302652608387/1000000000000 * c * q + -720347391613/1000000000000 * b * q + 1023/1000 * b * w + -1023/1000 * p * w + 1023/1000 * q * r` |
| 778 | SUP_CEF_CEP_EFP | bitt ["support-envelope",["pentagon","EFHPC"],"CEF","CEP","EFP","525732449/1000000000"] | `-497267551/1000000000 * q + -525732449/1000000000 * c * q + 497267551/1000000000 * e * p + -497267551/1000000000 * c * e + 1023/1000 * c + 1023/1000 * f * q + -1023/1000 * p` |
| 845 | SUP_EHR_EFH_EFR | bitt ["support-envelope",["pentagon","ERSFH"],"EHR","EFH","EFR","354463/500000"] | `354463/500000 * f * h + 157037/500000 * e * f + 157037/500000 * h + -157037/500000 + -1023/1000 * h * r + -1023/1000 * f * w + 1023/1000 * r` |
| 862 | SUP_FHQ_FHS_HQS | bitt ["support-envelope",["pentagon","HQRSF"],"FHQ","FHS","HQS","43227273111/200000000000"] | `-43227273111/200000000000 * f * k + 161372726889/200000000000 * h * j + -161372726889/200000000000 * f * h + 43227273111/200000000000 * j + 1023/1000 * f * v + -1023/1000 * u + 1023/1000 * u * k + -1023/1000 * v * j` |
| 864 | SUP_QRS_HQR_HRS | bitt ["support-envelope",["pentagon","RSFHQ"],"QRS","HQR","HRS","4086713037/10000000000"] | `-6143286963/10000000000 * u * w + -4086713037/10000000000 * h * u + 6143286963/10000000000 * v * r + -6143286963/10000000000 * h * r + 1023/1000 * u * k + -1023/1000 * v * j + 1023/1000 * h * j` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |


### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 70:0 | ABC | lo | 93/1000 | occupants none |
| 70:2 | ABE | lo | 93/1000 | occupants none |
| 70:4 | ABF | lo | 93/1000 | occupants none |
| 70:5 | ABF | hi | 503163/1000000 | earlier 69:5; ABF; hi; 503163/1000000 |
| 70:6 | ABH | lo | 93/1000 | occupants none |
| 70:8 | ABP | lo | 93/1000 | occupants none |
| 70:10 | ABQ | lo | 93/1000 | occupants none |
| 70:11 | ABQ | hi | 368447/1000000 | earlier 69:11; ABQ; hi; 368447/1000000 |
| 70:12 | ABR | lo | 93/1000 | occupants none |
| 70:14 | ABS | lo | 93/1000 | occupants none |
| 70:16 | ACE | lo | 93/1000 | occupants none |
| 70:17 | ACE | hi | 487581131/1250000000 | vertex maximum 487581131/1250000000 |
| 70:18 | ACF | lo | 285077/1000000 | earlier 69:18; ACF; lo; 285077/1000000 |
| 70:19 | ACF | hi | 946334413431/1000000000000 | vertex maximum 946334413431/1000000000000 |
| 70:21 | ACH | hi | 55307937321/62500000000 | vertex maximum 55307937321/62500000000 |
| 70:24 | ACQ | lo | 315317/1000000 | earlier 69:24; ACQ; lo; 315317/1000000 |
| 70:25 | ACQ | hi | 383553/500000 | earlier 69:25; ACQ; hi; 383553/500000 |
| 70:26 | ACR | lo | 63019/500000 | earlier 69:26; ACR; lo; 63019/500000 |
| 70:27 | ACR | hi | 50522899807/62500000000 | vertex maximum 50522899807/62500000000 |
| 70:28 | ACS | lo | 1197/8000 | earlier 69:28; ACS; lo; 1197/8000 |
| 70:29 | ACS | hi | 30507296157/31250000000 | vertex maximum 30507296157/31250000000 |
| 70:30 | AEF | lo | 345787/1000000 | earlier 69:30; AEF; lo; 345787/1000000 |
| 70:31 | AEF | hi | 894907/1000000 | vertex maximum 894907/1000000 |
| 70:33 | AEH | hi | 894907/1000000 | vertex maximum 894907/1000000 |
| 70:35 | AEP | hi | 420737/1000000 | vertex maximum 420737/1000000 |
| 70:36 | AEQ | lo | 339757/1000000 | earlier 69:36; AEQ; lo; 339757/1000000 |
| 70:37 | AEQ | hi | 735747/1000000 | vertex maximum 735747/1000000 |
| 70:39 | AER | hi | 354463/500000 | vertex maximum 354463/500000 |
| 70:40 | AES | lo | 80611/500000 | earlier 69:40; AES; lo; 80611/500000 |
| 70:41 | AES | hi | 894907/1000000 | vertex maximum 894907/1000000 |
| 70:42 | AFH | lo | 330011/1000000 | earlier 69:42; AFH; lo; 330011/1000000 |
| 70:43 | AFH | hi | 104581516741/200000000000 | vertex maximum 104581516741/200000000000 |
| 70:44 | AFP | lo | 9693/100000 | earlier 69:44; AFP; lo; 9693/100000 |
| 70:45 | AFP | hi | 46801/125000 | earlier 69:45; AFP; hi; 46801/125000 |
| 70:46 | AFQ | lo | 93/1000 | occupants none |
| 70:48 | AFR | lo | 189937/500000 | earlier 69:48; AFR; lo; 189937/500000 |
| 70:49 | AFR | hi | 150501752803/200000000000 | vertex maximum 150501752803/200000000000 |
| 70:50 | AFS | lo | 222287/1000000 | earlier 69:50; AFS; lo; 222287/1000000 |
| 70:51 | AFS | hi | 593665785777/1000000000000 | vertex maximum 593665785777/1000000000000 |
| 70:52 | AHP | lo | 3969/20000 | earlier 69:52; AHP; lo; 3969/20000 |
| 70:53 | AHP | hi | 243021/500000 | earlier 69:53; AHP; hi; 243021/500000 |
| 70:54 | AHQ | lo | 144011/1000000 | earlier 69:54; AHQ; lo; 144011/1000000 |
| 70:55 | AHQ | hi | 84227/250000 | earlier 69:55; AHQ; hi; 84227/250000 |
| 70:56 | AHR | lo | 13857/20000 | occupants P, Q |
| 70:58 | AHS | lo | 406111/1000000 | earlier 69:58; AHS; lo; 406111/1000000 |
| 70:59 | AHS | hi | 48594345007/62500000000 | vertex maximum 48594345007/62500000000 |
| 70:60 | APQ | lo | 61899/500000 | earlier 69:60; APQ; lo; 61899/500000 |
| 70:62 | APR | lo | 93/1000 | occupants none |
| 70:64 | AQR | lo | 346663/1000000 | earlier 69:64; AQR; lo; 346663/1000000 |
| 70:65 | AQR | hi | 643611/1000000 | earlier 69:65; AQR; hi; 643611/1000000 |
| 70:66 | AQS | lo | 36183/250000 | earlier 69:66; AQS; lo; 36183/250000 |
| 70:67 | AQS | hi | 268781/500000 | earlier 69:67; AQS; hi; 268781/500000 |
| 70:68 | ARS | lo | 2257/20000 | earlier 69:68; ARS; lo; 2257/20000 |
| 70:69 | ARS | hi | 12547273307/20000000000 | vertex maximum 12547273307/20000000000 |
| 70:70 | BCE | lo | 93/1000 | occupants none |
| 70:72 | BCF | lo | 321283/1000000 | earlier 69:72; BCF; lo; 321283/1000000 |
| 70:73 | BCF | hi | 884927/1000000 | vertex maximum 884927/1000000 |
| 70:74 | BCH | lo | 191721/500000 | earlier 69:247; BCH; lo; 191721/500000 |
| 70:75 | BCH | hi | 884927/1000000 | vertex maximum 884927/1000000 |
| 70:77 | BCP | hi | 46532116441/100000000000 | vertex maximum 46532116441/100000000000 |
| 70:78 | BCQ | lo | 336091/1000000 | earlier 69:78; BCQ; lo; 336091/1000000 |
| 70:80 | BCR | lo | 119049/1000000 | earlier 69:249; BCR; lo; 119049/1000000 |
| 70:82 | BCS | lo | 137199/1000000 | earlier 69:82; BCS; lo; 137199/1000000 |
| 70:83 | BCS | hi | 884927/1000000 | vertex maximum 884927/1000000 |
| 70:84 | BEF | lo | 4837/12500 | earlier 69:84; BEF; lo; 4837/12500 |
| 70:85 | BEF | hi | 217061437377/250000000000 | vertex maximum 217061437377/250000000000 |
| 70:86 | BEH | lo | 40889/100000 | earlier 69:248; BEH; lo; 40889/100000 |
| 70:89 | BEP | hi | 452912385381/1000000000000 | vertex maximum 452912385381/1000000000000 |
| 70:90 | BEQ | lo | 182749/500000 | earlier 69:90; BEQ; lo; 182749/500000 |
| 70:91 | BEQ | hi | 747468660267/1000000000000 | vertex maximum 747468660267/1000000000000 |
| 70:92 | BER | lo | 61391/500000 | earlier 69:241; BER; lo; 61391/500000 |
| 70:93 | BER | hi | 164745557313/250000000000 | vertex maximum 164745557313/250000000000 |
| 70:94 | BES | lo | 79051/500000 | earlier 69:94; BES; lo; 79051/500000 |
| 70:95 | BES | hi | 834186684603/1000000000000 | vertex maximum 834186684603/1000000000000 |
| 70:96 | BFH | lo | 330531/1000000 | earlier 69:251; BFH; lo; 330531/1000000 |
| 70:97 | BFH | hi | 116863/200000 | vertex maximum 116863/200000 |
| 70:98 | BFP | lo | 93/1000 | occupants none |
| 70:99 | BFP | hi | 299783/1000000 | earlier 69:99; BFP; hi; 299783/1000000 |
| 70:100 | BFQ | lo | 93/1000 | occupants none |
| 70:102 | BFR | lo | 387771/1000000 | earlier 69:102; BFR; lo; 387771/1000000 |
| 70:103 | BFR | hi | 95747062969/125000000000 | vertex maximum 95747062969/125000000000 |
| 70:104 | BFS | lo | 91843/250000 | earlier 69:104; BFS; lo; 91843/250000 |
| 70:105 | BFS | hi | 4726770989/7812500000 | vertex maximum 4726770989/7812500000 |
| 70:107 | BHP | hi | 481293/1000000 | earlier 69:107; BHP; hi; 481293/1000000 |
| 70:108 | BHQ | lo | 144531/1000000 | earlier 69:250; BHQ; lo; 144531/1000000 |
| 70:110 | BHR | lo | 13857/20000 | occupants P, Q |
| 70:111 | BHR | hi | 980672668499/1000000000000 | vertex maximum 980672668499/1000000000000 |
| 70:112 | BHS | lo | 13857/20000 | occupants P, Q |
| 70:113 | BHS | hi | 54301/62500 | vertex maximum 54301/62500 |
| 70:114 | BPQ | lo | 26109/250000 | earlier 69:114; BPQ; lo; 26109/250000 |
| 70:116 | BPR | lo | 104827/1000000 | earlier 69:116; BPR; lo; 104827/1000000 |
| 70:118 | BPS | lo | 93/1000 | occupants none |
| 70:119 | BPS | hi | 66131/200000 | earlier 69:238; BPS; hi; 66131/200000 |
| 70:122 | BQS | lo | 305959/1000000 | earlier 69:122; BQS; lo; 305959/1000000 |
| 70:124 | BRS | lo | 56163/500000 | earlier 69:124; BRS; lo; 56163/500000 |
| 70:125 | BRS | hi | 303386170091/500000000000 | vertex maximum 303386170091/500000000000 |
| 70:126 | CEF | lo | 93/1000 | occupants none |
| 70:128 | CEH | lo | 112201/1000000 | earlier 69:240; CEH; lo; 112201/1000000 |
| 70:129 | CEH | hi | 167479891/250000000 | vertex maximum 167479891/250000000 |
| 70:130 | CEP | lo | 19011/200000 | earlier 69:130; CEP; lo; 19011/200000 |
| 70:132 | CEQ | lo | 100437/1000000 | earlier 69:132; CEQ; lo; 100437/1000000 |
| 70:133 | CEQ | hi | 1317/2500 | earlier 69:245; CEQ; hi; 1317/2500 |
| 70:134 | CER | lo | 93/1000 | occupants none |
| 70:135 | CER | hi | 248858189/1000000000 | octagon ["octagon-ear-cap","ABCERSFH","CER",["FHA","Q"],"248858189/1000000000"] |
| 70:136 | CES | lo | 93/1000 | occupants none |
| 70:138 | CFH | lo | 298711/1000000 | earlier 69:138; CFH; lo; 298711/1000000 |
| 70:139 | CFH | hi | 666053724381/1000000000000 | vertex maximum 666053724381/1000000000000 |
| 70:140 | CFP | lo | 95147/1000000 | earlier 69:140; CFP; lo; 95147/1000000 |
| 70:141 | CFP | hi | 293762497027/500000000000 | vertex maximum 293762497027/500000000000 |
| 70:142 | CFQ | lo | 112711/1000000 | earlier 69:142; CFQ; lo; 112711/1000000 |
| 70:143 | CFQ | hi | 223837/500000 | earlier 69:143; CFQ; hi; 223837/500000 |
| 70:144 | CFR | lo | 8383/62500 | earlier 69:144; CFR; lo; 8383/62500 |
| 70:145 | CFR | hi | 599015837541/1000000000000 | vertex maximum 599015837541/1000000000000 |
| 70:146 | CFS | lo | 105579/1000000 | earlier 69:146; CFS; lo; 105579/1000000 |
| 70:147 | CFS | hi | 500051/1000000 | vertex maximum 500051/1000000 |
| 70:148 | CHP | lo | 93/1000 | occupants none |
| 70:150 | CHQ | lo | 93/1000 | occupants none |
| 70:152 | CHR | lo | 384409/1000000 | earlier 69:152; CHR; lo; 384409/1000000 |
| 70:154 | CHS | lo | 175947/500000 | earlier 69:154; CHS; lo; 175947/500000 |
| 70:155 | CHS | hi | 27908415807/31250000000 | vertex maximum 27908415807/31250000000 |
| 70:156 | CPQ | lo | 98519/1000000 | earlier 69:156; CPQ; lo; 98519/1000000 |
| 70:158 | CPR | lo | 133023/1000000 | earlier 69:158; CPR; lo; 133023/1000000 |
| 70:160 | CPS | lo | 93/1000 | occupants none |
| 70:161 | CPS | hi | 10537512319/15625000000 | vertex maximum 10537512319/15625000000 |
| 70:163 | CQR | hi | 651077/1000000 | earlier 69:163; CQR; hi; 651077/1000000 |
| 70:164 | CQS | lo | 82947/500000 | earlier 69:164; CQS; lo; 82947/500000 |
| 70:165 | CQS | hi | 158589/250000 | earlier 69:165; CQS; hi; 158589/250000 |
| 70:166 | CRS | lo | 93/1000 | occupants none |
| 70:168 | EFH | lo | 152729/500000 | earlier 69:168; EFH; lo; 152729/500000 |
| 70:169 | EFH | hi | 2427598591/4000000000 | vertex maximum 2427598591/4000000000 |
| 70:170 | EFP | lo | 155857/1000000 | earlier 69:170; EFP; lo; 155857/1000000 |
| 70:173 | EFQ | hi | 4209/10000 | earlier 69:173; EFQ; hi; 4209/10000 |
| 70:174 | EFR | lo | 19633/125000 | earlier 69:174; EFR; lo; 19633/125000 |
| 70:175 | EFR | hi | 44749890361/100000000000 | vertex maximum 44749890361/100000000000 |
| 70:176 | EFS | lo | 15289/125000 | earlier 69:176; EFS; lo; 15289/125000 |
| 70:177 | EFS | hi | 447499140257/1000000000000 | vertex maximum 447499140257/1000000000000 |
| 70:178 | EHP | lo | 113481/1000000 | earlier 69:178; EHP; lo; 113481/1000000 |
| 70:179 | EHP | hi | 126437/250000 | earlier 69:179; EHP; hi; 126437/250000 |
| 70:180 | EHQ | lo | 93/1000 | occupants none |
| 70:182 | EHR | lo | 386149/1000000 | earlier 69:182; EHR; lo; 386149/1000000 |
| 70:183 | EHR | hi | 354463/500000 | vertex maximum 354463/500000 |
| 70:184 | EHS | lo | 368879/1000000 | earlier 69:184; EHS; lo; 368879/1000000 |
| 70:185 | EHS | hi | 1005020207/1250000000 | vertex maximum 1005020207/1250000000 |
| 70:186 | EPQ | lo | 122959/1000000 | earlier 69:186; EPQ; lo; 122959/1000000 |
| 70:191 | EPS | hi | 310017558173/500000000000 | vertex maximum 310017558173/500000000000 |
| 70:192 | EQR | lo | 200149/1000000 | earlier 69:192; EQR; lo; 200149/1000000 |
| 70:193 | EQR | hi | 261463/500000 | earlier 69:239; EQR; hi; 261463/500000 |
| 70:194 | EQS | lo | 182879/1000000 | earlier 69:194; EQS; lo; 182879/1000000 |
| 70:195 | EQS | hi | 145217/250000 | earlier 69:195; EQS; hi; 145217/250000 |
| 70:196 | ERS | lo | 93/1000 | occupants none |
| 70:198 | FHP | lo | 279/1000 | occupants Q |
| 70:199 | FHP | hi | 407822502859/1000000000000 | vertex maximum 407822502859/1000000000000 |
| 70:200 | FHQ | lo | 93/1000 | occupants none |
| 70:201 | FHQ | hi | 43227273111/200000000000 | vertex maximum 43227273111/200000000000 |
| 70:202 | FHR | lo | 27081/200000 | earlier 69:202; FHR; lo; 27081/200000 |
| 70:203 | FHR | hi | 76253398963/200000000000 | vertex maximum 76253398963/200000000000 |
| 70:204 | FHS | lo | 93/1000 | occupants none |
| 70:205 | FHS | hi | 248858189/1000000000 | octagon ["octagon-ear-cap","ABCERSFH","SFH",["FHA","Q"],"248858189/1000000000"] |
| 70:206 | FPQ | lo | 93/1000 | occupants none |
| 70:208 | FPR | lo | 23743/125000 | earlier 69:208; FPR; lo; 23743/125000 |
| 70:209 | FPR | hi | 121190510487/250000000000 | vertex maximum 121190510487/250000000000 |
| 70:210 | FPS | lo | 45343/250000 | earlier 69:210; FPS; lo; 45343/250000 |
| 70:211 | FPS | hi | 191706209933/500000000000 | vertex maximum 191706209933/500000000000 |
| 70:212 | FQR | lo | 94399/1000000 | earlier 69:212; FQR; lo; 94399/1000000 |
| 70:214 | FQS | lo | 119019/1000000 | earlier 69:214; FQS; lo; 119019/1000000 |
| 70:215 | FQS | hi | 16581/62500 | earlier 69:215; FQS; hi; 16581/62500 |
| 70:216 | FRS | lo | 93/1000 | occupants none |
| 70:218 | HPQ | lo | 93/1000 | occupants none |
| 70:220 | HPR | lo | 63173/200000 | earlier 69:220; HPR; lo; 63173/200000 |
| 70:222 | HPS | lo | 294523/1000000 | earlier 69:222; HPS; lo; 294523/1000000 |
| 70:224 | HQR | lo | 93/1000 | occupants none |
| 70:227 | HQS | hi | 59661/200000 | earlier 69:227; HQS; hi; 59661/200000 |
| 70:228 | HRS | lo | 24753/200000 | earlier 69:228; HRS; lo; 24753/200000 |
| 70:229 | HRS | hi | 29282733501/62500000000 | vertex maximum 29282733501/62500000000 |
| 70:231 | PQR | hi | 417457/1000000 | earlier 69:231; PQR; hi; 417457/1000000 |
| 70:232 | PQS | lo | 108523/1000000 | earlier 69:232; PQS; lo; 108523/1000000 |
| 70:236 | QRS | lo | 102001/1000000 | earlier 69:236; QRS; lo; 102001/1000000 |
| 70:237 | QRS | hi | 374163/1000000 | earlier 69:237; QRS; hi; 374163/1000000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |


### Coordinate certificate sources

| Source | Kind | Source witness | Polynomial |
| --- | --- | --- | --- |
| 0 | bound | `{"direction":"lo","ref":"70:0","triangle":"ABC","value":"93/1000"}` | `-1 * a * b + 1 * a * c + -93/1000` |
| 2 | bound | `{"direction":"lo","ref":"70:2","triangle":"ABE","value":"93/1000"}` | `1 * b * e + -1 * a * b + 1 * a + -93/1000` |
| 4 | bound | `{"direction":"lo","ref":"70:4","triangle":"ABF","value":"93/1000"}` | `1 * b + -1 * a * b + 1 * a * f + -93/1000` |
| 5 | bound | `{"direction":"hi","ref":"70:5","triangle":"ABF","value":"503163/1000000"}` | `503163/1000000 + -1 * b + 1 * a * b + -1 * a * f` |
| 6 | bound | `{"direction":"lo","ref":"70:6","triangle":"ABH","value":"93/1000"}` | `1 * b * h + -1 * a * b + -93/1000` |
| 8 | bound | `{"direction":"lo","ref":"70:8","triangle":"ABP","value":"93/1000"}` | `1 * b * q + -1 * a * b + 1 * a * p + -93/1000` |
| 10 | bound | `{"direction":"lo","ref":"70:10","triangle":"ABQ","value":"93/1000"}` | `1 * b * v + -1 * a * b + 1 * a * u + -93/1000` |
| 11 | bound | `{"direction":"hi","ref":"70:11","triangle":"ABQ","value":"368447/1000000"}` | `368447/1000000 + -1 * b * v + 1 * a * b + -1 * a * u` |
| 12 | bound | `{"direction":"lo","ref":"70:12","triangle":"ABR","value":"93/1000"}` | `1 * b * w + -1 * a * b + 1 * a * r + -93/1000` |
| 14 | bound | `{"direction":"lo","ref":"70:14","triangle":"ABS","value":"93/1000"}` | `1 * b * k + -1 * a * b + 1 * a * j + -93/1000` |
| 16 | bound | `{"direction":"lo","ref":"70:16","triangle":"ACE","value":"93/1000"}` | `1 * c * e + -1 * a * c + 1 * a + -93/1000` |
| 17 | bound | `{"direction":"hi","ref":"70:17","triangle":"ACE","value":"487581131/1250000000"}` | `487581131/1250000000 + -1 * c * e + 1 * a * c + -1 * a` |
| 18 | bound | `{"direction":"lo","ref":"70:18","triangle":"ACF","value":"285077/1000000"}` | `1 * c + -1 * a * c + 1 * a * f + -285077/1000000` |
| 19 | bound | `{"direction":"hi","ref":"70:19","triangle":"ACF","value":"946334413431/1000000000000"}` | `946334413431/1000000000000 + -1 * c + 1 * a * c + -1 * a * f` |
| 21 | bound | `{"direction":"hi","ref":"70:21","triangle":"ACH","value":"55307937321/62500000000"}` | `55307937321/62500000000 + -1 * c * h + 1 * a * c` |
| 24 | bound | `{"direction":"lo","ref":"70:24","triangle":"ACQ","value":"315317/1000000"}` | `1 * c * v + -1 * a * c + 1 * a * u + -315317/1000000` |
| 25 | bound | `{"direction":"hi","ref":"70:25","triangle":"ACQ","value":"383553/500000"}` | `383553/500000 + -1 * c * v + 1 * a * c + -1 * a * u` |
| 26 | bound | `{"direction":"lo","ref":"70:26","triangle":"ACR","value":"63019/500000"}` | `1 * c * w + -1 * a * c + 1 * a * r + -63019/500000` |
| 27 | bound | `{"direction":"hi","ref":"70:27","triangle":"ACR","value":"50522899807/62500000000"}` | `50522899807/62500000000 + -1 * c * w + 1 * a * c + -1 * a * r` |
| 28 | bound | `{"direction":"lo","ref":"70:28","triangle":"ACS","value":"1197/8000"}` | `1 * c * k + -1 * a * c + 1 * a * j + -1197/8000` |
| 29 | bound | `{"direction":"hi","ref":"70:29","triangle":"ACS","value":"30507296157/31250000000"}` | `30507296157/31250000000 + -1 * c * k + 1 * a * c + -1 * a * j` |
| 30 | bound | `{"direction":"lo","ref":"70:30","triangle":"AEF","value":"345787/1000000"}` | `654213/1000000 + -1 * a + -1 * e * f + 1 * a * f` |
| 31 | bound | `{"direction":"hi","ref":"70:31","triangle":"AEF","value":"894907/1000000"}` | `-105093/1000000 + 1 * a + 1 * e * f + -1 * a * f` |
| 33 | bound | `{"direction":"hi","ref":"70:33","triangle":"AEH","value":"894907/1000000"}` | `894907/1000000 + -1 * h + 1 * a` |
| 35 | bound | `{"direction":"hi","ref":"70:35","triangle":"AEP","value":"420737/1000000"}` | `420737/1000000 + -1 * q + 1 * a + 1 * e * p + -1 * a * p` |
| 36 | bound | `{"direction":"lo","ref":"70:36","triangle":"AEQ","value":"339757/1000000"}` | `1 * v + -1 * a + -1 * e * u + 1 * a * u + -339757/1000000` |
| 37 | bound | `{"direction":"hi","ref":"70:37","triangle":"AEQ","value":"735747/1000000"}` | `735747/1000000 + -1 * v + 1 * a + 1 * e * u + -1 * a * u` |
| 39 | bound | `{"direction":"hi","ref":"70:39","triangle":"AER","value":"354463/500000"}` | `354463/500000 + -1 * w + 1 * a + 1 * e * r + -1 * a * r` |
| 40 | bound | `{"direction":"lo","ref":"70:40","triangle":"AES","value":"80611/500000"}` | `1 * k + -1 * a + -1 * e * j + 1 * a * j + -80611/500000` |
| 41 | bound | `{"direction":"hi","ref":"70:41","triangle":"AES","value":"894907/1000000"}` | `894907/1000000 + -1 * k + 1 * a + 1 * e * j + -1 * a * j` |
| 42 | bound | `{"direction":"lo","ref":"70:42","triangle":"AFH","value":"330011/1000000"}` | `1 * f * h + -1 * a * f + -330011/1000000` |
| 43 | bound | `{"direction":"hi","ref":"70:43","triangle":"AFH","value":"104581516741/200000000000"}` | `104581516741/200000000000 + -1 * f * h + 1 * a * f` |
| 44 | bound | `{"direction":"lo","ref":"70:44","triangle":"AFP","value":"9693/100000"}` | `-1 * f * q + 1 * a * f + 1 * p + -1 * a * p + -9693/100000` |
| 45 | bound | `{"direction":"hi","ref":"70:45","triangle":"AFP","value":"46801/125000"}` | `46801/125000 + 1 * f * q + -1 * a * f + -1 * p + 1 * a * p` |
| 46 | bound | `{"direction":"lo","ref":"70:46","triangle":"AFQ","value":"93/1000"}` | `1 * f * v + -1 * a * f + -1 * u + 1 * a * u + -93/1000` |
| 48 | bound | `{"direction":"lo","ref":"70:48","triangle":"AFR","value":"189937/500000"}` | `-1 * f * w + 1 * a * f + 1 * r + -1 * a * r + -189937/500000` |
| 49 | bound | `{"direction":"hi","ref":"70:49","triangle":"AFR","value":"150501752803/200000000000"}` | `150501752803/200000000000 + 1 * f * w + -1 * a * f + -1 * r + 1 * a * r` |
| 50 | bound | `{"direction":"lo","ref":"70:50","triangle":"AFS","value":"222287/1000000"}` | `-1 * f * k + 1 * a * f + 1 * j + -1 * a * j + -222287/1000000` |
| 51 | bound | `{"direction":"hi","ref":"70:51","triangle":"AFS","value":"593665785777/1000000000000"}` | `593665785777/1000000000000 + 1 * f * k + -1 * a * f + -1 * j + 1 * a * j` |
| 52 | bound | `{"direction":"lo","ref":"70:52","triangle":"AHP","value":"3969/20000"}` | `1 * h * p + -1 * a * p + -3969/20000` |
| 53 | bound | `{"direction":"hi","ref":"70:53","triangle":"AHP","value":"243021/500000"}` | `243021/500000 + -1 * h * p + 1 * a * p` |
| 54 | bound | `{"direction":"lo","ref":"70:54","triangle":"AHQ","value":"144011/1000000"}` | `1 * h * u + -1 * a * u + -144011/1000000` |
| 55 | bound | `{"direction":"hi","ref":"70:55","triangle":"AHQ","value":"84227/250000"}` | `84227/250000 + -1 * h * u + 1 * a * u` |
| 56 | bound | `{"direction":"lo","ref":"70:56","triangle":"AHR","value":"13857/20000"}` | `1 * h * r + -1 * a * r + -13857/20000` |
| 58 | bound | `{"direction":"lo","ref":"70:58","triangle":"AHS","value":"406111/1000000"}` | `1 * h * j + -1 * a * j + -406111/1000000` |
| 59 | bound | `{"direction":"hi","ref":"70:59","triangle":"AHS","value":"48594345007/62500000000"}` | `48594345007/62500000000 + -1 * h * j + 1 * a * j` |
| 60 | bound | `{"direction":"lo","ref":"70:60","triangle":"APQ","value":"61899/500000"}` | `1 * p * v + -1 * a * p + -1 * q * u + 1 * a * u + -61899/500000` |
| 62 | bound | `{"direction":"lo","ref":"70:62","triangle":"APR","value":"93/1000"}` | `-1 * p * w + 1 * a * p + 1 * q * r + -1 * a * r + -93/1000` |
| 64 | bound | `{"direction":"lo","ref":"70:64","triangle":"AQR","value":"346663/1000000"}` | `-1 * u * w + 1 * a * u + 1 * v * r + -1 * a * r + -346663/1000000` |
| 65 | bound | `{"direction":"hi","ref":"70:65","triangle":"AQR","value":"643611/1000000"}` | `643611/1000000 + 1 * u * w + -1 * a * u + -1 * v * r + 1 * a * r` |
| 66 | bound | `{"direction":"lo","ref":"70:66","triangle":"AQS","value":"36183/250000"}` | `-1 * u * k + 1 * a * u + 1 * v * j + -1 * a * j + -36183/250000` |
| 67 | bound | `{"direction":"hi","ref":"70:67","triangle":"AQS","value":"268781/500000"}` | `268781/500000 + 1 * u * k + -1 * a * u + -1 * v * j + 1 * a * j` |
| 68 | bound | `{"direction":"lo","ref":"70:68","triangle":"ARS","value":"2257/20000"}` | `1 * r * k + -1 * a * r + -1 * w * j + 1 * a * j + -2257/20000` |
| 69 | bound | `{"direction":"hi","ref":"70:69","triangle":"ARS","value":"12547273307/20000000000"}` | `12547273307/20000000000 + -1 * r * k + 1 * a * r + 1 * w * j + -1 * a * j` |
| 70 | bound | `{"direction":"lo","ref":"70:70","triangle":"BCE","value":"93/1000"}` | `1 * c * e + -1 * b * e + -93/1000` |
| 72 | bound | `{"direction":"lo","ref":"70:72","triangle":"BCF","value":"321283/1000000"}` | `1 * c + -1 * b + -321283/1000000` |
| 73 | bound | `{"direction":"hi","ref":"70:73","triangle":"BCF","value":"884927/1000000"}` | `884927/1000000 + -1 * c + 1 * b` |
| 74 | bound | `{"direction":"lo","ref":"70:74","triangle":"BCH","value":"191721/500000"}` | `1 * c * h + -1 * b * h + -191721/500000` |
| 75 | bound | `{"direction":"hi","ref":"70:75","triangle":"BCH","value":"884927/1000000"}` | `884927/1000000 + -1 * c * h + 1 * b * h` |
| 77 | bound | `{"direction":"hi","ref":"70:77","triangle":"BCP","value":"46532116441/100000000000"}` | `46532116441/100000000000 + -1 * c * q + 1 * b * q` |
| 78 | bound | `{"direction":"lo","ref":"70:78","triangle":"BCQ","value":"336091/1000000"}` | `1 * c * v + -1 * b * v + -336091/1000000` |
| 80 | bound | `{"direction":"lo","ref":"70:80","triangle":"BCR","value":"119049/1000000"}` | `1 * c * w + -1 * b * w + -119049/1000000` |
| 82 | bound | `{"direction":"lo","ref":"70:82","triangle":"BCS","value":"137199/1000000"}` | `1 * c * k + -1 * b * k + -137199/1000000` |
| 83 | bound | `{"direction":"hi","ref":"70:83","triangle":"BCS","value":"884927/1000000"}` | `884927/1000000 + -1 * c * k + 1 * b * k` |
| 84 | bound | `{"direction":"lo","ref":"70:84","triangle":"BEF","value":"4837/12500"}` | `7663/12500 + -1 * b + -1 * e * f + 1 * b * e` |
| 85 | bound | `{"direction":"hi","ref":"70:85","triangle":"BEF","value":"217061437377/250000000000"}` | `-32938562623/250000000000 + 1 * b + 1 * e * f + -1 * b * e` |
| 86 | bound | `{"direction":"lo","ref":"70:86","triangle":"BEH","value":"40889/100000"}` | `1 * h + -1 * b * h + 1 * b * e + -40889/100000` |
| 89 | bound | `{"direction":"hi","ref":"70:89","triangle":"BEP","value":"452912385381/1000000000000"}` | `452912385381/1000000000000 + -1 * q + 1 * b * q + 1 * e * p + -1 * b * e` |
| 90 | bound | `{"direction":"lo","ref":"70:90","triangle":"BEQ","value":"182749/500000"}` | `1 * v + -1 * b * v + -1 * e * u + 1 * b * e + -182749/500000` |
| 91 | bound | `{"direction":"hi","ref":"70:91","triangle":"BEQ","value":"747468660267/1000000000000"}` | `747468660267/1000000000000 + -1 * v + 1 * b * v + 1 * e * u + -1 * b * e` |
| 92 | bound | `{"direction":"lo","ref":"70:92","triangle":"BER","value":"61391/500000"}` | `1 * w + -1 * b * w + -1 * e * r + 1 * b * e + -61391/500000` |
| 93 | bound | `{"direction":"hi","ref":"70:93","triangle":"BER","value":"164745557313/250000000000"}` | `164745557313/250000000000 + -1 * w + 1 * b * w + 1 * e * r + -1 * b * e` |
| 94 | bound | `{"direction":"lo","ref":"70:94","triangle":"BES","value":"79051/500000"}` | `1 * k + -1 * b * k + -1 * e * j + 1 * b * e + -79051/500000` |
| 95 | bound | `{"direction":"hi","ref":"70:95","triangle":"BES","value":"834186684603/1000000000000"}` | `834186684603/1000000000000 + -1 * k + 1 * b * k + 1 * e * j + -1 * b * e` |
| 96 | bound | `{"direction":"lo","ref":"70:96","triangle":"BFH","value":"330531/1000000"}` | `1 * f * h + -1 * b * h + 1 * b + -330531/1000000` |
| 97 | bound | `{"direction":"hi","ref":"70:97","triangle":"BFH","value":"116863/200000"}` | `116863/200000 + -1 * f * h + 1 * b * h + -1 * b` |
| 98 | bound | `{"direction":"lo","ref":"70:98","triangle":"BFP","value":"93/1000"}` | `-1 * f * q + 1 * b * q + 1 * p + -1 * b + -93/1000` |
| 99 | bound | `{"direction":"hi","ref":"70:99","triangle":"BFP","value":"299783/1000000"}` | `299783/1000000 + 1 * f * q + -1 * b * q + -1 * p + 1 * b` |
| 100 | bound | `{"direction":"lo","ref":"70:100","triangle":"BFQ","value":"93/1000"}` | `1 * f * v + -1 * b * v + -1 * u + 1 * b + -93/1000` |
| 102 | bound | `{"direction":"lo","ref":"70:102","triangle":"BFR","value":"387771/1000000"}` | `-1 * f * w + 1 * b * w + 1 * r + -1 * b + -387771/1000000` |
| 103 | bound | `{"direction":"hi","ref":"70:103","triangle":"BFR","value":"95747062969/125000000000"}` | `95747062969/125000000000 + 1 * f * w + -1 * b * w + -1 * r + 1 * b` |
| 104 | bound | `{"direction":"lo","ref":"70:104","triangle":"BFS","value":"91843/250000"}` | `-1 * f * k + 1 * b * k + 1 * j + -1 * b + -91843/250000` |
| 105 | bound | `{"direction":"hi","ref":"70:105","triangle":"BFS","value":"4726770989/7812500000"}` | `4726770989/7812500000 + 1 * f * k + -1 * b * k + -1 * j + 1 * b` |
| 107 | bound | `{"direction":"hi","ref":"70:107","triangle":"BHP","value":"481293/1000000"}` | `481293/1000000 + -1 * b * q + -1 * h * p + 1 * b * h` |
| 108 | bound | `{"direction":"lo","ref":"70:108","triangle":"BHQ","value":"144531/1000000"}` | `1 * b * v + 1 * h * u + -1 * b * h + -144531/1000000` |
| 110 | bound | `{"direction":"lo","ref":"70:110","triangle":"BHR","value":"13857/20000"}` | `1 * b * w + 1 * h * r + -1 * b * h + -13857/20000` |
| 111 | bound | `{"direction":"hi","ref":"70:111","triangle":"BHR","value":"980672668499/1000000000000"}` | `980672668499/1000000000000 + -1 * b * w + -1 * h * r + 1 * b * h` |
| 112 | bound | `{"direction":"lo","ref":"70:112","triangle":"BHS","value":"13857/20000"}` | `1 * b * k + 1 * h * j + -1 * b * h + -13857/20000` |
| 113 | bound | `{"direction":"hi","ref":"70:113","triangle":"BHS","value":"54301/62500"}` | `54301/62500 + -1 * b * k + -1 * h * j + 1 * b * h` |
| 114 | bound | `{"direction":"lo","ref":"70:114","triangle":"BPQ","value":"26109/250000"}` | `1 * p * v + -1 * b * v + -1 * q * u + 1 * b * q + -26109/250000` |
| 116 | bound | `{"direction":"lo","ref":"70:116","triangle":"BPR","value":"104827/1000000"}` | `-1 * p * w + 1 * b * w + 1 * q * r + -1 * b * q + -104827/1000000` |
| 118 | bound | `{"direction":"lo","ref":"70:118","triangle":"BPS","value":"93/1000"}` | `-1 * p * k + 1 * b * k + 1 * q * j + -1 * b * q + -93/1000` |
| 119 | bound | `{"direction":"hi","ref":"70:119","triangle":"BPS","value":"66131/200000"}` | `66131/200000 + 1 * p * k + -1 * b * k + -1 * q * j + 1 * b * q` |
| 122 | bound | `{"direction":"lo","ref":"70:122","triangle":"BQS","value":"305959/1000000"}` | `-1 * u * k + 1 * b * k + 1 * v * j + -1 * b * v + -305959/1000000` |
| 124 | bound | `{"direction":"lo","ref":"70:124","triangle":"BRS","value":"56163/500000"}` | `1 * r * k + -1 * b * k + -1 * w * j + 1 * b * w + -56163/500000` |
| 125 | bound | `{"direction":"hi","ref":"70:125","triangle":"BRS","value":"303386170091/500000000000"}` | `303386170091/500000000000 + -1 * r * k + 1 * b * k + 1 * w * j + -1 * b * w` |
| 126 | bound | `{"direction":"lo","ref":"70:126","triangle":"CEF","value":"93/1000"}` | `907/1000 + -1 * c + -1 * e * f + 1 * c * e` |
| 128 | bound | `{"direction":"lo","ref":"70:128","triangle":"CEH","value":"112201/1000000"}` | `1 * h + -1 * c * h + 1 * c * e + -112201/1000000` |
| 129 | bound | `{"direction":"hi","ref":"70:129","triangle":"CEH","value":"167479891/250000000"}` | `167479891/250000000 + -1 * h + 1 * c * h + -1 * c * e` |
| 130 | bound | `{"direction":"lo","ref":"70:130","triangle":"CEP","value":"19011/200000"}` | `1 * q + -1 * c * q + -1 * e * p + 1 * c * e + -19011/200000` |
| 132 | bound | `{"direction":"lo","ref":"70:132","triangle":"CEQ","value":"100437/1000000"}` | `1 * v + -1 * c * v + -1 * e * u + 1 * c * e + -100437/1000000` |
| 133 | bound | `{"direction":"hi","ref":"70:133","triangle":"CEQ","value":"1317/2500"}` | `1317/2500 + -1 * v + 1 * c * v + 1 * e * u + -1 * c * e` |
| 134 | bound | `{"direction":"lo","ref":"70:134","triangle":"CER","value":"93/1000"}` | `1 * w + -1 * c * w + -1 * e * r + 1 * c * e + -93/1000` |
| 135 | bound | `{"direction":"hi","ref":"70:135","triangle":"CER","value":"248858189/1000000000"}` | `248858189/1000000000 + -1 * w + 1 * c * w + 1 * e * r + -1 * c * e` |
| 136 | bound | `{"direction":"lo","ref":"70:136","triangle":"CES","value":"93/1000"}` | `1 * k + -1 * c * k + -1 * e * j + 1 * c * e + -93/1000` |
| 138 | bound | `{"direction":"lo","ref":"70:138","triangle":"CFH","value":"298711/1000000"}` | `1 * f * h + -1 * c * h + 1 * c + -298711/1000000` |
| 139 | bound | `{"direction":"hi","ref":"70:139","triangle":"CFH","value":"666053724381/1000000000000"}` | `666053724381/1000000000000 + -1 * f * h + 1 * c * h + -1 * c` |
| 140 | bound | `{"direction":"lo","ref":"70:140","triangle":"CFP","value":"95147/1000000"}` | `1 * f * q + -1 * c * q + -1 * p + 1 * c + -95147/1000000` |
| 141 | bound | `{"direction":"hi","ref":"70:141","triangle":"CFP","value":"293762497027/500000000000"}` | `293762497027/500000000000 + -1 * f * q + 1 * c * q + 1 * p + -1 * c` |
| 142 | bound | `{"direction":"lo","ref":"70:142","triangle":"CFQ","value":"112711/1000000"}` | `1 * f * v + -1 * c * v + -1 * u + 1 * c + -112711/1000000` |
| 143 | bound | `{"direction":"hi","ref":"70:143","triangle":"CFQ","value":"223837/500000"}` | `223837/500000 + -1 * f * v + 1 * c * v + 1 * u + -1 * c` |
| 144 | bound | `{"direction":"lo","ref":"70:144","triangle":"CFR","value":"8383/62500"}` | `-1 * f * w + 1 * c * w + 1 * r + -1 * c + -8383/62500` |
| 145 | bound | `{"direction":"hi","ref":"70:145","triangle":"CFR","value":"599015837541/1000000000000"}` | `599015837541/1000000000000 + 1 * f * w + -1 * c * w + -1 * r + 1 * c` |
| 146 | bound | `{"direction":"lo","ref":"70:146","triangle":"CFS","value":"105579/1000000"}` | `-1 * f * k + 1 * c * k + 1 * j + -1 * c + -105579/1000000` |
| 147 | bound | `{"direction":"hi","ref":"70:147","triangle":"CFS","value":"500051/1000000"}` | `500051/1000000 + 1 * f * k + -1 * c * k + -1 * j + 1 * c` |
| 148 | bound | `{"direction":"lo","ref":"70:148","triangle":"CHP","value":"93/1000"}` | `-1 * c * q + -1 * h * p + 1 * c * h + -93/1000` |
| 150 | bound | `{"direction":"lo","ref":"70:150","triangle":"CHQ","value":"93/1000"}` | `1 * c * v + 1 * h * u + -1 * c * h + -93/1000` |
| 152 | bound | `{"direction":"lo","ref":"70:152","triangle":"CHR","value":"384409/1000000"}` | `1 * c * w + 1 * h * r + -1 * c * h + -384409/1000000` |
| 154 | bound | `{"direction":"lo","ref":"70:154","triangle":"CHS","value":"175947/500000"}` | `1 * c * k + 1 * h * j + -1 * c * h + -175947/500000` |
| 155 | bound | `{"direction":"hi","ref":"70:155","triangle":"CHS","value":"27908415807/31250000000"}` | `27908415807/31250000000 + -1 * c * k + -1 * h * j + 1 * c * h` |
| 156 | bound | `{"direction":"lo","ref":"70:156","triangle":"CPQ","value":"98519/1000000"}` | `-1 * p * v + 1 * c * v + 1 * q * u + -1 * c * q + -98519/1000000` |
| 158 | bound | `{"direction":"lo","ref":"70:158","triangle":"CPR","value":"133023/1000000"}` | `-1 * p * w + 1 * c * w + 1 * q * r + -1 * c * q + -133023/1000000` |
| 160 | bound | `{"direction":"lo","ref":"70:160","triangle":"CPS","value":"93/1000"}` | `-1 * p * k + 1 * c * k + 1 * q * j + -1 * c * q + -93/1000` |
| 161 | bound | `{"direction":"hi","ref":"70:161","triangle":"CPS","value":"10537512319/15625000000"}` | `10537512319/15625000000 + 1 * p * k + -1 * c * k + -1 * q * j + 1 * c * q` |
| 163 | bound | `{"direction":"hi","ref":"70:163","triangle":"CQR","value":"651077/1000000"}` | `651077/1000000 + 1 * u * w + -1 * c * w + -1 * v * r + 1 * c * v` |
| 164 | bound | `{"direction":"lo","ref":"70:164","triangle":"CQS","value":"82947/500000"}` | `-1 * u * k + 1 * c * k + 1 * v * j + -1 * c * v + -82947/500000` |
| 165 | bound | `{"direction":"hi","ref":"70:165","triangle":"CQS","value":"158589/250000"}` | `158589/250000 + 1 * u * k + -1 * c * k + -1 * v * j + 1 * c * v` |
| 166 | bound | `{"direction":"lo","ref":"70:166","triangle":"CRS","value":"93/1000"}` | `1 * r * k + -1 * c * k + -1 * w * j + 1 * c * w + -93/1000` |
| 168 | bound | `{"direction":"lo","ref":"70:168","triangle":"EFH","value":"152729/500000"}` | `1 * f * h + -1 * e * f + -1 * h + 347271/500000` |
| 169 | bound | `{"direction":"hi","ref":"70:169","triangle":"EFH","value":"2427598591/4000000000"}` | `-1572401409/4000000000 + -1 * f * h + 1 * e * f + 1 * h` |
| 170 | bound | `{"direction":"lo","ref":"70:170","triangle":"EFP","value":"155857/1000000"}` | `1 * f * q + -1 * e * f + -1 * q + -1 * p + 844143/1000000 + 1 * e * p` |
| 173 | bound | `{"direction":"hi","ref":"70:173","triangle":"EFQ","value":"4209/10000"}` | `-5791/10000 + -1 * f * v + 1 * e * f + 1 * v + 1 * u + -1 * e * u` |
| 174 | bound | `{"direction":"lo","ref":"70:174","triangle":"EFR","value":"19633/125000"}` | `-1 * f * w + 1 * e * f + 1 * w + 1 * r + -144633/125000 + -1 * e * r` |
| 175 | bound | `{"direction":"hi","ref":"70:175","triangle":"EFR","value":"44749890361/100000000000"}` | `144749890361/100000000000 + 1 * f * w + -1 * e * f + -1 * w + -1 * r + 1 * e * r` |
| 176 | bound | `{"direction":"lo","ref":"70:176","triangle":"EFS","value":"15289/125000"}` | `-1 * f * k + 1 * e * f + 1 * k + 1 * j + -140289/125000 + -1 * e * j` |
| 177 | bound | `{"direction":"hi","ref":"70:177","triangle":"EFS","value":"447499140257/1000000000000"}` | `1447499140257/1000000000000 + 1 * f * k + -1 * e * f + -1 * k + -1 * j + 1 * e * j` |
| 178 | bound | `{"direction":"lo","ref":"70:178","triangle":"EHP","value":"113481/1000000"}` | `-1 * q + -1 * h * p + 1 * h + 1 * e * p + -113481/1000000` |
| 179 | bound | `{"direction":"hi","ref":"70:179","triangle":"EHP","value":"126437/250000"}` | `126437/250000 + 1 * q + 1 * h * p + -1 * h + -1 * e * p` |
| 180 | bound | `{"direction":"lo","ref":"70:180","triangle":"EHQ","value":"93/1000"}` | `1 * v + 1 * h * u + -1 * h + -1 * e * u + -93/1000` |
| 182 | bound | `{"direction":"lo","ref":"70:182","triangle":"EHR","value":"386149/1000000"}` | `1 * w + 1 * h * r + -1 * h + -1 * e * r + -386149/1000000` |
| 183 | bound | `{"direction":"hi","ref":"70:183","triangle":"EHR","value":"354463/500000"}` | `354463/500000 + -1 * w + -1 * h * r + 1 * h + 1 * e * r` |
| 184 | bound | `{"direction":"lo","ref":"70:184","triangle":"EHS","value":"368879/1000000"}` | `1 * k + 1 * h * j + -1 * h + -1 * e * j + -368879/1000000` |
| 185 | bound | `{"direction":"hi","ref":"70:185","triangle":"EHS","value":"1005020207/1250000000"}` | `1005020207/1250000000 + -1 * k + -1 * h * j + 1 * h + 1 * e * j` |
| 186 | bound | `{"direction":"lo","ref":"70:186","triangle":"EPQ","value":"122959/1000000"}` | `-1 * p * v + 1 * e * p + 1 * v + 1 * q * u + -1 * q + -1 * e * u + -122959/1000000` |
| 191 | bound | `{"direction":"hi","ref":"70:191","triangle":"EPS","value":"310017558173/500000000000"}` | `310017558173/500000000000 + 1 * p * k + -1 * e * p + -1 * k + -1 * q * j + 1 * q + 1 * e * j` |
| 192 | bound | `{"direction":"lo","ref":"70:192","triangle":"EQR","value":"200149/1000000"}` | `-1 * u * w + 1 * e * u + 1 * w + 1 * v * r + -1 * v + -1 * e * r + -200149/1000000` |
| 193 | bound | `{"direction":"hi","ref":"70:193","triangle":"EQR","value":"261463/500000"}` | `261463/500000 + 1 * u * w + -1 * e * u + -1 * w + -1 * v * r + 1 * v + 1 * e * r` |
| 194 | bound | `{"direction":"lo","ref":"70:194","triangle":"EQS","value":"182879/1000000"}` | `-1 * u * k + 1 * e * u + 1 * k + 1 * v * j + -1 * v + -1 * e * j + -182879/1000000` |
| 195 | bound | `{"direction":"hi","ref":"70:195","triangle":"EQS","value":"145217/250000"}` | `145217/250000 + 1 * u * k + -1 * e * u + -1 * k + -1 * v * j + 1 * v + 1 * e * j` |
| 196 | bound | `{"direction":"lo","ref":"70:196","triangle":"ERS","value":"93/1000"}` | `1 * r * k + -1 * e * r + -1 * k + -1 * w * j + 1 * w + 1 * e * j + -93/1000` |
| 198 | bound | `{"direction":"lo","ref":"70:198","triangle":"FHP","value":"279/1000"}` | `-1 * f * q + -1 * h * p + 1 * f * h + 1 * p + -279/1000` |
| 199 | bound | `{"direction":"hi","ref":"70:199","triangle":"FHP","value":"407822502859/1000000000000"}` | `407822502859/1000000000000 + 1 * f * q + 1 * h * p + -1 * f * h + -1 * p` |
| 200 | bound | `{"direction":"lo","ref":"70:200","triangle":"FHQ","value":"93/1000"}` | `-1 * f * v + -1 * h * u + 1 * f * h + 1 * u + -93/1000` |
| 201 | bound | `{"direction":"hi","ref":"70:201","triangle":"FHQ","value":"43227273111/200000000000"}` | `43227273111/200000000000 + 1 * f * v + 1 * h * u + -1 * f * h + -1 * u` |
| 202 | bound | `{"direction":"lo","ref":"70:202","triangle":"FHR","value":"27081/200000"}` | `-1 * f * w + -1 * h * r + 1 * f * h + 1 * r + -27081/200000` |
| 203 | bound | `{"direction":"hi","ref":"70:203","triangle":"FHR","value":"76253398963/200000000000"}` | `76253398963/200000000000 + 1 * f * w + 1 * h * r + -1 * f * h + -1 * r` |
| 204 | bound | `{"direction":"lo","ref":"70:204","triangle":"FHS","value":"93/1000"}` | `-1 * f * k + -1 * h * j + 1 * f * h + 1 * j + -93/1000` |
| 205 | bound | `{"direction":"hi","ref":"70:205","triangle":"FHS","value":"248858189/1000000000"}` | `248858189/1000000000 + 1 * f * k + 1 * h * j + -1 * f * h + -1 * j` |
| 206 | bound | `{"direction":"lo","ref":"70:206","triangle":"FPQ","value":"93/1000"}` | `-1 * p * v + 1 * p + 1 * f * v + 1 * q * u + -1 * f * q + -1 * u + -93/1000` |
| 208 | bound | `{"direction":"lo","ref":"70:208","triangle":"FPR","value":"23743/125000"}` | `1 * p * w + -1 * p + -1 * f * w + -1 * q * r + 1 * f * q + 1 * r + -23743/125000` |
| 209 | bound | `{"direction":"hi","ref":"70:209","triangle":"FPR","value":"121190510487/250000000000"}` | `121190510487/250000000000 + -1 * p * w + 1 * p + 1 * f * w + 1 * q * r + -1 * f * q + -1 * r` |
| 210 | bound | `{"direction":"lo","ref":"70:210","triangle":"FPS","value":"45343/250000"}` | `1 * p * k + -1 * p + -1 * f * k + -1 * q * j + 1 * f * q + 1 * j + -45343/250000` |
| 211 | bound | `{"direction":"hi","ref":"70:211","triangle":"FPS","value":"191706209933/500000000000"}` | `191706209933/500000000000 + -1 * p * k + 1 * p + 1 * f * k + 1 * q * j + -1 * f * q + -1 * j` |
| 212 | bound | `{"direction":"lo","ref":"70:212","triangle":"FQR","value":"94399/1000000"}` | `1 * u * w + -1 * u + -1 * f * w + -1 * v * r + 1 * f * v + 1 * r + -94399/1000000` |
| 214 | bound | `{"direction":"lo","ref":"70:214","triangle":"FQS","value":"119019/1000000"}` | `1 * u * k + -1 * u + -1 * f * k + -1 * v * j + 1 * f * v + 1 * j + -119019/1000000` |
| 215 | bound | `{"direction":"hi","ref":"70:215","triangle":"FQS","value":"16581/62500"}` | `16581/62500 + -1 * u * k + 1 * u + 1 * f * k + 1 * v * j + -1 * f * v + -1 * j` |
| 216 | bound | `{"direction":"lo","ref":"70:216","triangle":"FRS","value":"93/1000"}` | `1 * r * k + -1 * r + -1 * f * k + -1 * w * j + 1 * f * w + 1 * j + -93/1000` |
| 218 | bound | `{"direction":"lo","ref":"70:218","triangle":"HPQ","value":"93/1000"}` | `1 * p * v + -1 * h * p + -1 * q * u + 1 * h * u + -93/1000` |
| 220 | bound | `{"direction":"lo","ref":"70:220","triangle":"HPR","value":"63173/200000"}` | `1 * p * w + -1 * h * p + -1 * q * r + 1 * h * r + -63173/200000` |
| 222 | bound | `{"direction":"lo","ref":"70:222","triangle":"HPS","value":"294523/1000000"}` | `1 * p * k + -1 * h * p + -1 * q * j + 1 * h * j + -294523/1000000` |
| 224 | bound | `{"direction":"lo","ref":"70:224","triangle":"HQR","value":"93/1000"}` | `1 * u * w + -1 * h * u + -1 * v * r + 1 * h * r + -93/1000` |
| 227 | bound | `{"direction":"hi","ref":"70:227","triangle":"HQS","value":"59661/200000"}` | `59661/200000 + -1 * u * k + 1 * h * u + 1 * v * j + -1 * h * j` |
| 228 | bound | `{"direction":"lo","ref":"70:228","triangle":"HRS","value":"24753/200000"}` | `1 * r * k + -1 * h * r + -1 * w * j + 1 * h * j + -24753/200000` |
| 229 | bound | `{"direction":"hi","ref":"70:229","triangle":"HRS","value":"29282733501/62500000000"}` | `29282733501/62500000000 + -1 * r * k + 1 * h * r + 1 * w * j + -1 * h * j` |
| 231 | bound | `{"direction":"hi","ref":"70:231","triangle":"PQR","value":"417457/1000000"}` | `417457/1000000 + 1 * u * w + -1 * q * u + -1 * p * w + -1 * v * r + 1 * p * v + 1 * q * r` |
| 232 | bound | `{"direction":"lo","ref":"70:232","triangle":"PQS","value":"108523/1000000"}` | `-1 * u * k + 1 * q * u + 1 * p * k + 1 * v * j + -1 * p * v + -1 * q * j + -108523/1000000` |
| 236 | bound | `{"direction":"lo","ref":"70:236","triangle":"QRS","value":"102001/1000000"}` | `1 * r * k + -1 * v * r + -1 * u * k + -1 * w * j + 1 * u * w + 1 * v * j + -102001/1000000` |
| 237 | bound | `{"direction":"hi","ref":"70:237","triangle":"QRS","value":"374163/1000000"}` | `374163/1000000 + -1 * r * k + 1 * v * r + 1 * u * k + 1 * w * j + -1 * u * w + -1 * v * j` |
| 238 | coordinate | `{"box":70,"direction":"lo","value":"105093/1000000","variable":"a"}` | `1 * a + -105093/1000000` |
| 239 | coordinate | `{"box":70,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 240 | coordinate | `{"box":70,"direction":"lo","value":"103921/1000000","variable":"b"}` | `1 * b + -103921/1000000` |
| 243 | coordinate | `{"box":70,"direction":"hi","value":"61803/62500","variable":"c"}` | `61803/62500 + -1 * c` |
| 244 | coordinate | `{"box":70,"direction":"lo","value":"105093/1000000","variable":"e"}` | `1 * e + -105093/1000000` |
| 246 | coordinate | `{"box":70,"direction":"lo","value":"73753/200000","variable":"f"}` | `1 * f + -73753/200000` |
| 247 | coordinate | `{"box":70,"direction":"hi","value":"116863/200000","variable":"f"}` | `116863/200000 + -1 * f` |
| 248 | coordinate | `{"box":70,"direction":"lo","value":"797943/1000000","variable":"h"}` | `1 * h + -797943/1000000` |
| 249 | coordinate | `{"box":70,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 250 | coordinate | `{"box":70,"direction":"lo","value":"138897/500000","variable":"p"}` | `1 * p + -138897/500000` |
| 251 | coordinate | `{"box":70,"direction":"hi","value":"148473/250000","variable":"p"}` | `148473/250000 + -1 * p` |
| 252 | coordinate | `{"box":70,"direction":"lo","value":"152681/500000","variable":"q"}` | `1 * q + -152681/500000` |
| 253 | coordinate | `{"box":70,"direction":"hi","value":"52583/100000","variable":"q"}` | `52583/100000 + -1 * q` |
| 254 | coordinate | `{"box":70,"direction":"lo","value":"80461/500000","variable":"u"}` | `1 * u + -80461/500000` |
| 255 | coordinate | `{"box":70,"direction":"hi","value":"376473/1000000","variable":"u"}` | `376473/1000000 + -1 * u` |
| 256 | coordinate | `{"box":70,"direction":"lo","value":"630103/1000000","variable":"v"}` | `1 * v + -630103/1000000` |
| 257 | coordinate | `{"box":70,"direction":"hi","value":"21021/25000","variable":"v"}` | `21021/25000 + -1 * v` |
| 258 | coordinate | `{"box":70,"direction":"lo","value":"387107/500000","variable":"r"}` | `1 * r + -387107/500000` |
| 259 | coordinate | `{"box":70,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 260 | coordinate | `{"box":70,"direction":"lo","value":"245621/500000","variable":"w"}` | `1 * w + -245621/500000` |
| 261 | coordinate | `{"box":70,"direction":"hi","value":"814019/1000000","variable":"w"}` | `814019/1000000 + -1 * w` |
| 262 | coordinate | `{"box":70,"direction":"lo","value":"13857/20000","variable":"j"}` | `1 * j + -13857/20000` |
| 263 | coordinate | `{"box":70,"direction":"hi","value":"54301/62500","variable":"j"}` | `54301/62500 + -1 * j` |
| 264 | coordinate | `{"box":70,"direction":"lo","value":"37727/62500","variable":"k"}` | `1 * k + -37727/62500` |
| 265 | coordinate | `{"box":70,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 267 | physical | `{"factor":2}` | `-93/1000 + 1 * c + -1 * b` |
| 268 | physical | `{"factor":4}` | `-93/1000 + 1 * e` |
| 269 | physical | `{"factor":6}` | `-93/1000 + 1 * f` |
| 274 | physical | `{"factor":20}` | `-93/1000 + 1 * c` |
| 276 | physical | `{"factor":27}` | `907/1000 + -1 * a` |
| 279 | physical | `{"factor":51}` | `-93/1000 + 1 * h` |
| 281 | physical | `{"factor":59}` | `907/1000 + -1 * b` |
| 282 | physical | `{"factor":79}` | `907/1000 + -1 * f` |
| 284 | physical | `{"factor":104}` | `907/1000 + -1 * e` |
| 285 | physical | `{"factor":137}` | `1 * h + -1 * a` |
| 286 | physical | `{"factor":138}` | `1 * e + -1 * a` |
| 287 | physical | `{"factor":139}` | `1 * h + -1 * e` |
| 288 | physical | `{"factor":140}` | `1 * f + -1 * b` |
| 289 | physical | `{"factor":141}` | `1 * c + -1 * f` |
| 290 | physical | `{"factor":142}` | `1 * f + -1 * e` |
| 291 | physical | `{"factor":143}` | `76277533/62500000 + 2 * a * b + -1 * b * h + -1 * a * c + -2 * c * e + 1 * b * e + -2 * w + 1 * c * w + 2 * e * r + -2 * r * k + 1 * k + 2 * w * j + -1 * e * j + -2 * j + 1 * r + 2 * f * k + -1 * f * w + -2 * f * h + 1 * h * j + 1 * a * f` |
| 299 | physical | `{"factor":151}` | `569722789/1000000000 + 1 * a * f + -1 * f * h` |
| 300 | physical | `{"factor":152}` | `1 * c * h + -135501/250000` |
| 301 | physical | `{"factor":153}` | `1 * c * h + -1 * a * b + -279/625` |
| 302 | physical | `{"factor":154}` | `346/625 + -1 * c * h + 1 * f * h + 1 * c * e + -1 * e * f` |
| 303 | physical | `{"factor":155}` | `157/250 + -1 * f + -1 * e + 1 * e * f` |
| 308 | physical | `{"factor":160}` | `37327/41202 + -1 * p + -1 * q` |
| 309 | physical | `{"factor":161}` | `1 * p + -101627517/884927000` |
| 310 | physical | `{"factor":162}` | `1 * q + -4282235375/36871958214` |
| 311 | physical | `{"factor":163}` | `1 * c * h * p + -1 * b * h * p + -93/1000 * c + -93/1000 * b` |
| 312 | physical | `{"factor":164}` | `1 * c * h * q + -1 * a * c * q + -93/1000 * h + -93/1000 * a` |
| 416 | physical | `{"factor":268}` | `-118618483259/200000000000 * h + -104581516741/200000000000 * a + 279/250 * a * f + -279/250 * e * f + 279/250` |
| 434 | physical | `{"factor":286}` | `-570887/500000 * w + 354463/500000 * h * r + 570887/500000 * h + 570887/500000 * e * r + -18507/10000 * a * r` |
| 545 | physical | `{"factor":397}` | `936712111/1000000000 * w + 913987889/1000000000 * b * w + -936712111/1000000000 * e * r + -913987889/1000000000 * b * e + -18507/10000 * h + 18507/10000 * h * r` |
| 546 | physical | `{"factor":398}` | `-297929442687/250000000000 * w + 164745557313/250000000000 * h * r + 297929442687/250000000000 * h + 297929442687/250000000000 * e * r + 18507/10000 * b * w + -18507/10000 * b * h` |
| 550 | physical | `{"factor":402}` | `-1016513315397/1000000000000 * k + 834186684603/1000000000000 * h * j + 1016513315397/1000000000000 * h + 1016513315397/1000000000000 * e * j + 18507/10000 * b * k + -18507/10000 * b * h` |
| 656 | physical | `{"factor":508}` | `157809489513/250000000000 * f * w + 157809489513/250000000000 * h * r + 121190510487/250000000000 * f * h + -157809489513/250000000000 * r + 279/250 * p + -279/250 * f * q + -279/250 * h * p` |
| 755 | physical | `{"factor":607}` | `-6733335221/10000000000 * b * k + 6733335221/10000000000 * a * b + 3496664779/10000000000 * a * j + -1023/1000 * a + 1023/1000 * k + -1023/1000 * e * j` |
| 761 | physical | `{"factor":613}` | `-104581516741/200000000000 * f * q + 100018483259/200000000000 * h * p + -100018483259/200000000000 * f * h + 104581516741/200000000000 * p + 1023/1000 * a * f + -1023/1000 * a * p` |
| 771 | physical | `{"factor":623}` | `725352629697/1000000000000 * f * q + 297647370303/1000000000000 * b * q + -725352629697/1000000000000 * p + 725352629697/1000000000000 * b + 1023/1000 * p * v + -1023/1000 * q * u + -1023/1000 * b * v` |
| 782 | physical | `{"factor":634}` | `593665785777/1000000000000 * r * k + 429334214223/1000000000000 * r + 429334214223/1000000000000 * f * k + -593665785777/1000000000000 * w * j + -429334214223/1000000000000 * f * w + -429334214223/1000000000000 * j + 1023/1000 * a * j + -1023/1000 * a * r` |
| 880 | physical | `{"factor":732}` | `-46532116441/100000000000 * p * w + -55767883559/100000000000 * b * w + 46532116441/100000000000 * q * r + 55767883559/100000000000 * b * q + -1023/1000 * c * q + 1023/1000 * c * w` |
| 885 | physical | `{"factor":737}` | `30175734377/50000000000 * p * k + -30175734377/50000000000 * e * p + 20974265623/50000000000 * k + -30175734377/50000000000 * q * j + 30175734377/50000000000 * q + -20974265623/50000000000 * e * j + -1023/1000 * b * k + 1023/1000 * b * e` |
| 904 | physical | `{"factor":756}` | `-302652608387/1000000000000 * c * q + -720347391613/1000000000000 * b * q + 1023/1000 * b * w + -1023/1000 * p * w + 1023/1000 * q * r` |
| 926 | physical | `{"factor":778}` | `-497267551/1000000000 * q + -525732449/1000000000 * c * q + 497267551/1000000000 * e * p + -497267551/1000000000 * c * e + 1023/1000 * c + 1023/1000 * f * q + -1023/1000 * p` |
| 993 | physical | `{"factor":845}` | `354463/500000 * f * h + 157037/500000 * e * f + 157037/500000 * h + -157037/500000 + -1023/1000 * h * r + -1023/1000 * f * w + 1023/1000 * r` |
| 1010 | physical | `{"factor":862}` | `-43227273111/200000000000 * f * k + 161372726889/200000000000 * h * j + -161372726889/200000000000 * f * h + 43227273111/200000000000 * j + 1023/1000 * f * v + -1023/1000 * u + 1023/1000 * u * k + -1023/1000 * v * j` |
| 1012 | physical | `{"factor":864}` | `-6143286963/10000000000 * u * w + -4086713037/10000000000 * h * u + 6143286963/10000000000 * v * r + -6143286963/10000000000 * h * r + 1023/1000 * u * k + -1023/1000 * v * j + 1023/1000 * h * j` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 130000 | 0, 0 |
| 1 | 130000 | 0, 8 |
| 2 | 3512000 | 0, 33 |
| 3 | 436000 | 0, 40 |
| 4 | 1225000 | 0, 45 |
| 5 | 786000 | 0, 51 |
| 6 | 51000 | 0, 53 |
| 7 | 1796000 | 0, 55 |
| 8 | 3262000 | 0, 73 |
| 9 | 1045000 | 0, 91 |
| 10 | 1340000 | 0, 94 |
| 11 | 1343000 | 0, 99 |
| 12 | 3722000 | 0, 105 |
| 13 | 597000 | 0, 107 |
| 14 | 1614000 | 0, 119 |
| 15 | 786000 | 0, 125 |
| 16 | 32000 | 0, 130 |
| 17 | 247000 | 0, 136 |
| 18 | 90000 | 0, 144 |
| 19 | 330000 | 0, 161 |
| 20 | 165000 | 0, 192 |
| 21 | 834000 | 0, 194 |
| 22 | 1072000 | 0, 205 |
| 23 | 236000 | 0, 208 |
| 24 | 630620000 | 0, 214 |
| 25 | 632260000 | 0, 215 |
| 26 | 300000 | 0, 220 |
| 27 | 396000 | 0, 222 |
| 28 | 1364000 | 0, 229 |
| 29 | 5280000 | 0, 251 |
| 30 | 1289000 | 0, 258 |
| 31 | 3965000 | 0, 261 |
| 32 | 2251000 | 0, 262 |
| 33 | 248961000 | 0, 264 |
| 34 | 3377000 | 0, 274 |
| 35 | 6058000 | 0, 276 |
| 36 | 1130000 | 0, 282 |
| 37 | 2700000 | 0, 284 |
| 38 | 131000 | 0, 291 |
| 39 | 7258000 | 0, 310 |
| 40 | 548600 | 2, 136 |
| 41 | 737800 | 2, 198 |
| 42 | 20000 | 2, 308 |
| 43 | 1832400 | 4, 31 |
| 44 | 409100 | 4, 134 |
| 45 | 582800 | 4, 308 |
| 46 | 258000 | 5, 62 |
| 47 | 215800 | 6, 21 |
| 48 | 116400 | 6, 29 |
| 49 | 1214300 | 6, 35 |
| 50 | 30900 | 6, 41 |
| 51 | 7400 | 6, 75 |
| 52 | 195800 | 6, 89 |
| 53 | 1300500 | 6, 95 |
| 54 | 203900 | 6, 104 |
| 55 | 8000 | 6, 111 |
| 56 | 209900 | 6, 178 |
| 57 | 1132700 | 6, 210 |
| 58 | 27332100 | 6, 253 |
| 59 | 462300 | 6, 265 |
| 60 | 129800 | 6, 308 |
| 61 | 1407000 | 8, 18 |
| 62 | 44000 | 8, 40 |
| 63 | 687000 | 8, 48 |
| 64 | 44000 | 8, 50 |
| 65 | 429000 | 8, 65 |
| 66 | 2164000 | 8, 83 |
| 67 | 85000 | 8, 84 |
| 68 | 906000 | 8, 86 |
| 69 | 79000 | 8, 90 |
| 70 | 210000 | 8, 104 |
| 71 | 794000 | 8, 110 |
| 72 | 966000 | 8, 122 |
| 73 | 176000 | 8, 136 |
| 74 | 45000 | 8, 144 |
| 75 | 283000 | 8, 150 |
| 76 | 995000 | 8, 152 |
| 77 | 1576000 | 8, 163 |
| 78 | 744000 | 8, 176 |
| 79 | 144000 | 8, 182 |
| 80 | 303000 | 8, 201 |
| 81 | 476000 | 8, 212 |
| 82 | 158940000 | 8, 214 |
| 83 | 158750000 | 8, 215 |
| 84 | 194000 | 8, 227 |
| 85 | 76000 | 8, 236 |
| 86 | 1268000 | 8, 255 |
| 87 | 27580000 | 8, 258 |
| 88 | 27539000 | 8, 260 |
| 89 | 407000 | 8, 262 |
| 90 | 390000 | 8, 268 |
| 91 | 6940000 | 8, 274 |
| 92 | 4182000 | 8, 279 |
| 93 | 6855000 | 8, 281 |
| 94 | 1518000 | 8, 282 |
| 95 | 1074800 | 10, 29 |
| 96 | 1045100 | 10, 83 |
| 97 | 61600 | 10, 134 |
| 98 | 188100 | 10, 155 |
| 99 | 255179700 | 10, 265 |
| 100 | 23300 | 11, 216 |
| 101 | 871100 | 12, 148 |
| 102 | 898100 | 12, 218 |
| 103 | 27503800 | 12, 308 |
| 104 | 1239800 | 14, 148 |
| 105 | 209900 | 16, 89 |
| 106 | 261300 | 16, 91 |
| 107 | 356300 | 16, 147 |
| 108 | 220700 | 16, 166 |
| 109 | 109200 | 16, 198 |
| 110 | 330500 | 16, 243 |
| 111 | 981900 | 17, 216 |
| 112 | 1263100 | 18, 218 |
| 113 | 1279200 | 18, 224 |
| 114 | 347000 | 18, 259 |
| 115 | 957100 | 19, 41 |
| 116 | 1242800 | 19, 216 |
| 117 | 61800 | 21, 206 |
| 118 | 447000 | 21, 216 |
| 119 | 795900 | 24, 196 |
| 120 | 3791000 | 24, 200 |
| 121 | 1132200 | 25, 216 |
| 122 | 31926200 | 26, 196 |
| 123 | 298200 | 27, 130 |
| 124 | 2083400 | 28, 46 |
| 125 | 314800 | 28, 70 |
| 126 | 443000 | 28, 180 |
| 127 | 392100 | 28, 196 |
| 128 | 469700 | 28, 204 |
| 129 | 2307900 | 28, 218 |
| 130 | 1036900 | 28, 224 |
| 131 | 990900 | 29, 31 |
| 132 | 850800 | 29, 238 |
| 133 | 1002100 | 29, 244 |
| 134 | 1537900 | 30, 204 |
| 135 | 220840100 | 30, 224 |
| 136 | 541300 | 31, 41 |
| 137 | 726400 | 31, 56 |
| 138 | 304200 | 31, 85 |
| 139 | 2150100 | 31, 100 |
| 140 | 214800 | 31, 177 |
| 141 | 505100 | 31, 182 |
| 142 | 371400 | 31, 191 |
| 143 | 40000 | 31, 198 |
| 144 | 611500 | 31, 203 |
| 145 | 432100 | 31, 206 |
| 146 | 1924200 | 31, 209 |
| 147 | 1222200 | 31, 240 |
| 148 | 166626100 | 33, 46 |
| 149 | 1172700 | 33, 196 |
| 150 | 956900 | 33, 206 |
| 151 | 116400 | 35, 196 |
| 152 | 6300 | 35, 286 |
| 153 | 464500 | 36, 134 |
| 154 | 197150000 | 36, 214 |
| 155 | 885400 | 37, 59 |
| 156 | 491800 | 39, 113 |
| 157 | 17100 | 39, 136 |
| 158 | 8600 | 39, 150 |
| 159 | 31926200 | 39, 166 |
| 160 | 161500 | 39, 180 |
| 161 | 251700 | 39, 218 |
| 162 | 17100 | 40, 134 |
| 163 | 277900 | 40, 216 |
| 164 | 288776000 | 40, 259 |
| 165 | 1635700 | 41, 150 |
| 166 | 53100 | 41, 174 |
| 167 | 53600 | 41, 186 |
| 168 | 160900 | 41, 286 |
| 169 | 628300 | 42, 62 |
| 170 | 214231900 | 42, 193 |
| 171 | 20548900 | 42, 252 |
| 172 | 759200 | 43, 156 |
| 173 | 83040800 | 43, 259 |
| 174 | 4853900 | 44, 224 |
| 175 | 405900 | 46, 51 |
| 176 | 780500 | 46, 53 |
| 177 | 2392500 | 46, 102 |
| 178 | 918000 | 46, 107 |
| 179 | 902500 | 46, 144 |
| 180 | 1317800 | 46, 152 |
| 181 | 2700200 | 46, 154 |
| 182 | 4175500 | 46, 174 |
| 183 | 213982400 | 46, 182 |
| 184 | 7973100 | 46, 184 |
| 185 | 2296300 | 46, 208 |
| 186 | 215313000 | 46, 215 |
| 187 | 18096600 | 46, 222 |
| 188 | 20993300 | 46, 249 |
| 189 | 2001400 | 46, 251 |
| 190 | 17875300 | 46, 258 |
| 191 | 445035300 | 46, 264 |
| 192 | 143300 | 46, 274 |
| 193 | 166661700 | 46, 276 |
| 194 | 1039900 | 46, 281 |
| 195 | 589100 | 46, 282 |
| 196 | 786900 | 46, 291 |
| 197 | 571200 | 48, 148 |
| 198 | 219710100 | 48, 180 |
| 199 | 410700 | 48, 204 |
| 200 | 4133600 | 48, 218 |
| 201 | 177900 | 48, 286 |
| 202 | 218756000 | 49, 214 |
| 203 | 347500 | 49, 240 |
| 204 | 385500 | 50, 104 |
| 205 | 1621200 | 50, 148 |
| 206 | 1482300 | 50, 186 |
| 207 | 2432500 | 50, 303 |
| 208 | 2973800 | 51, 70 |
| 209 | 5545000 | 51, 200 |
| 210 | 4498000 | 52, 200 |
| 211 | 40000 | 53, 196 |
| 212 | 2638100 | 54, 193 |
| 213 | 337700 | 54, 216 |
| 214 | 14119000 | 54, 250 |
| 215 | 1574400 | 55, 148 |
| 216 | 536200 | 56, 98 |
| 217 | 3237200 | 56, 104 |
| 218 | 615600 | 56, 126 |
| 219 | 792900 | 56, 139 |
| 220 | 798500 | 56, 143 |
| 221 | 216043000 | 56, 214 |
| 222 | 3270900 | 56, 244 |
| 223 | 105512100 | 56, 247 |
| 224 | 4155500 | 56, 303 |
| 225 | 1265000 | 58, 70 |
| 226 | 3472400 | 58, 98 |
| 227 | 3868600 | 58, 180 |
| 228 | 517300 | 58, 286 |
| 229 | 2086100 | 59, 93 |
| 230 | 469700 | 59, 204 |
| 231 | 20749400 | 59, 206 |
| 232 | 189855700 | 59, 257 |
| 233 | 4513100 | 59, 259 |
| 234 | 200 | 59, 261 |
| 235 | 29700 | 60, 104 |
| 236 | 694300 | 60, 174 |
| 237 | 266000 | 60, 182 |
| 238 | 8428000 | 60, 200 |
| 239 | 18163000 | 60, 214 |
| 240 | 193900 | 62, 74 |
| 241 | 517400 | 62, 86 |
| 242 | 2392500 | 62, 108 |
| 243 | 161900 | 62, 112 |
| 244 | 1674200 | 62, 150 |
| 245 | 1463900 | 62, 177 |
| 246 | 1111800 | 62, 195 |
| 247 | 17875300 | 62, 254 |
| 248 | 407400 | 62, 263 |
| 249 | 495900 | 62, 267 |
| 250 | 2123300 | 62, 279 |
| 251 | 29054200 | 62, 281 |
| 252 | 264000 | 62, 287 |
| 253 | 698200 | 62, 300 |
| 254 | 354100 | 62, 302 |
| 255 | 1190900 | 64, 186 |
| 256 | 1958300 | 66, 148 |
| 257 | 1447200 | 66, 180 |
| 258 | 670000 | 66, 196 |
| 259 | 2638100 | 66, 224 |
| 260 | 590600 | 66, 286 |
| 261 | 1178500 | 67, 70 |
| 262 | 13410000 | 67, 200 |
| 263 | 1190900 | 67, 206 |
| 264 | 31926200 | 68, 134 |
| 265 | 9230000 | 68, 200 |
| 266 | 995800 | 69, 240 |
| 267 | 1504300 | 70, 112 |
| 268 | 220700 | 70, 154 |
| 269 | 77500 | 70, 158 |
| 270 | 295800 | 70, 168 |
| 271 | 8400 | 70, 177 |
| 272 | 409400 | 70, 179 |
| 273 | 503900 | 70, 184 |
| 274 | 303000 | 70, 192 |
| 275 | 55000 | 70, 200 |
| 276 | 1208000 | 70, 215 |
| 277 | 29700 | 70, 237 |
| 278 | 637400 | 70, 269 |
| 279 | 918100 | 70, 279 |
| 280 | 409100 | 70, 288 |
| 281 | 64000 | 72, 263 |
| 282 | 188000 | 74, 214 |
| 283 | 223200 | 75, 148 |
| 284 | 1779900 | 77, 204 |
| 285 | 2999500 | 77, 240 |
| 286 | 1045100 | 78, 118 |
| 287 | 248000 | 78, 200 |
| 288 | 675200 | 80, 98 |
| 289 | 3340200 | 82, 98 |
| 290 | 1655200 | 82, 180 |
| 291 | 50300 | 82, 196 |
| 292 | 601700 | 83, 148 |
| 293 | 49400 | 84, 224 |
| 294 | 65900 | 84, 286 |
| 295 | 41500 | 85, 210 |
| 296 | 1496300 | 86, 118 |
| 297 | 401700 | 92, 98 |
| 298 | 8000 | 93, 113 |
| 299 | 327300 | 93, 128 |
| 300 | 188600 | 93, 150 |
| 301 | 134200 | 93, 156 |
| 302 | 106400 | 93, 178 |
| 303 | 303000 | 93, 186 |
| 304 | 337200 | 93, 218 |
| 305 | 5000 | 93, 308 |
| 306 | 249800 | 94, 134 |
| 307 | 53100 | 94, 196 |
| 308 | 3594300 | 94, 259 |
| 309 | 520200 | 96, 180 |
| 310 | 458871700 | 96, 216 |
| 311 | 433200 | 96, 218 |
| 312 | 51200 | 97, 240 |
| 313 | 5186600 | 97, 265 |
| 314 | 1003600 | 98, 154 |
| 315 | 506000 | 98, 176 |
| 316 | 52000 | 98, 200 |
| 317 | 100000 | 98, 203 |
| 318 | 1268300 | 98, 254 |
| 319 | 149700 | 98, 257 |
| 320 | 407400 | 98, 264 |
| 321 | 7460800 | 98, 276 |
| 322 | 26384100 | 98, 285 |
| 323 | 370000 | 98, 290 |
| 324 | 877800 | 98, 300 |
| 325 | 125800 | 102, 148 |
| 326 | 457706100 | 102, 204 |
| 327 | 652500 | 102, 218 |
| 328 | 1833600 | 102, 263 |
| 329 | 870000 | 103, 214 |
| 330 | 397100 | 103, 240 |
| 331 | 1815900 | 104, 169 |
| 332 | 1406200 | 104, 173 |
| 333 | 1002000 | 104, 178 |
| 334 | 249000 | 104, 186 |
| 335 | 455456100 | 104, 203 |
| 336 | 169900 | 104, 220 |
| 337 | 365900 | 104, 240 |
| 338 | 255179700 | 104, 256 |
| 339 | 1164100 | 104, 286 |
| 340 | 1043100 | 104, 303 |
| 341 | 407400 | 104, 308 |
| 342 | 481000 | 107, 134 |
| 343 | 68300 | 107, 196 |
| 344 | 134600 | 107, 204 |
| 345 | 248000 | 108, 200 |
| 346 | 893400 | 108, 216 |
| 347 | 8000 | 110, 118 |
| 348 | 116200 | 111, 206 |
| 349 | 103500 | 112, 216 |
| 350 | 704900 | 112, 224 |
| 351 | 286800 | 113, 130 |
| 352 | 113800 | 113, 202 |
| 353 | 250900 | 113, 261 |
| 354 | 261300 | 114, 152 |
| 355 | 443700 | 114, 182 |
| 356 | 79100 | 116, 180 |
| 357 | 960400 | 118, 138 |
| 358 | 84700 | 118, 145 |
| 359 | 1097700 | 118, 150 |
| 360 | 165100 | 118, 163 |
| 361 | 900 | 118, 258 |
| 362 | 2977400 | 118, 267 |
| 363 | 321400 | 118, 274 |
| 364 | 728700 | 118, 281 |
| 365 | 1164600 | 118, 285 |
| 366 | 116400 | 118, 302 |
| 367 | 449300 | 122, 148 |
| 368 | 2276000 | 124, 200 |
| 369 | 825800 | 124, 218 |
| 370 | 2800 | 126, 147 |
| 371 | 1043200 | 128, 261 |
| 372 | 1043800 | 128, 265 |
| 373 | 131800 | 129, 224 |
| 374 | 2427900 | 129, 259 |
| 375 | 301200 | 130, 175 |
| 376 | 70200 | 130, 177 |
| 377 | 99800 | 130, 195 |
| 378 | 16700 | 130, 246 |
| 379 | 183900 | 130, 254 |
| 380 | 199500 | 132, 178 |
| 381 | 1179400 | 133, 216 |
| 382 | 151600 | 134, 139 |
| 383 | 77500 | 134, 141 |
| 384 | 675600 | 134, 176 |
| 385 | 166843000 | 134, 214 |
| 386 | 169415000 | 134, 215 |
| 387 | 249800 | 134, 232 |
| 388 | 229100 | 134, 274 |
| 389 | 1626000 | 134, 279 |
| 390 | 1250100 | 134, 282 |
| 391 | 69100 | 134, 300 |
| 392 | 201800 | 134, 309 |
| 393 | 455000 | 135, 200 |
| 394 | 925400 | 136, 183 |
| 395 | 1616100 | 136, 238 |
| 396 | 1800 | 136, 243 |
| 397 | 490800 | 139, 248 |
| 398 | 107800 | 140, 204 |
| 399 | 1674200 | 141, 224 |
| 400 | 582000 | 142, 263 |
| 401 | 220700 | 144, 148 |
| 402 | 6929300 | 144, 204 |
| 403 | 1263100 | 144, 218 |
| 404 | 3327000 | 145, 200 |
| 405 | 4086000 | 145, 214 |
| 406 | 601700 | 146, 148 |
| 407 | 1600 | 146, 180 |
| 408 | 448500 | 146, 196 |
| 409 | 589500 | 146, 286 |
| 410 | 237694600 | 147, 238 |
| 411 | 81300 | 148, 174 |
| 412 | 303400 | 148, 176 |
| 413 | 183900 | 148, 255 |
| 414 | 681900 | 148, 274 |
| 415 | 290800 | 148, 279 |
| 416 | 627000 | 148, 282 |
| 417 | 140400 | 148, 289 |
| 418 | 223200 | 148, 300 |
| 419 | 3341900 | 150, 236 |
| 420 | 964500 | 152, 286 |
| 421 | 232000 | 154, 180 |
| 422 | 227600 | 154, 216 |
| 423 | 924700 | 154, 224 |
| 424 | 1583000 | 154, 286 |
| 425 | 697000 | 155, 214 |
| 426 | 2175200 | 155, 238 |
| 427 | 99800 | 160, 180 |
| 428 | 4039000 | 163, 214 |
| 429 | 4039200 | 164, 224 |
| 430 | 472900 | 165, 202 |
| 431 | 421200 | 165, 228 |
| 432 | 697200 | 165, 236 |
| 433 | 133500 | 166, 178 |
| 434 | 890900 | 166, 185 |
| 435 | 5537500 | 166, 238 |
| 436 | 78700 | 166, 244 |
| 437 | 12900 | 168, 218 |
| 438 | 2902400 | 169, 210 |
| 439 | 938900 | 169, 265 |
| 440 | 628000 | 170, 204 |
| 441 | 171252700 | 174, 204 |
| 442 | 41300 | 174, 265 |
| 443 | 168734000 | 175, 200 |
| 444 | 170827000 | 175, 214 |
| 445 | 187500 | 178, 243 |
| 446 | 99800 | 179, 180 |
| 447 | 11500 | 179, 224 |
| 448 | 53600 | 180, 184 |
| 449 | 440000 | 180, 200 |
| 450 | 2703998000 | 180, 214 |
| 451 | 2992982000 | 180, 215 |
| 452 | 11500 | 180, 231 |
| 453 | 172573700 | 180, 236 |
| 454 | 771000 | 180, 269 |
| 455 | 185500 | 180, 274 |
| 456 | 134300 | 180, 276 |
| 457 | 1015100 | 180, 281 |
| 458 | 1013500 | 180, 300 |
| 459 | 15600 | 180, 310 |
| 460 | 1743400 | 182, 204 |
| 461 | 268109000 | 182, 214 |
| 462 | 17500 | 182, 286 |
| 463 | 202846200 | 183, 263 |
| 464 | 559800 | 184, 216 |
| 465 | 134600 | 184, 218 |
| 466 | 91402700 | 184, 259 |
| 467 | 2825500 | 185, 208 |
| 468 | 173581000 | 193, 200 |
| 469 | 11500 | 194, 218 |
| 470 | 171394300 | 194, 224 |
| 471 | 265855000 | 195, 214 |
| 472 | 167791000 | 196, 200 |
| 473 | 1425648000 | 196, 214 |
| 474 | 1690833000 | 196, 215 |
| 475 | 2391700 | 196, 274 |
| 476 | 487300 | 196, 276 |
| 477 | 4329000 | 196, 281 |
| 478 | 1268000 | 196, 302 |
| 479 | 87300 | 196, 303 |
| 480 | 1216000 | 198, 200 |
| 481 | 115400 | 198, 236 |
| 482 | 1064500 | 198, 255 |
| 483 | 58200 | 198, 303 |
| 484 | 14600 | 199, 259 |
| 485 | 13457000 | 200, 209 |
| 486 | 139321000 | 200, 211 |
| 487 | 140582000 | 200, 216 |
| 488 | 1971000 | 200, 218 |
| 489 | 2659000 | 200, 224 |
| 490 | 2659000 | 200, 228 |
| 491 | 148521000 | 200, 231 |
| 492 | 11521000 | 200, 236 |
| 493 | 187219000 | 200, 239 |
| 494 | 2001000 | 200, 251 |
| 495 | 150000 | 200, 252 |
| 496 | 17875000 | 200, 258 |
| 497 | 185000 | 200, 263 |
| 498 | 189856000 | 200, 264 |
| 499 | 273000 | 200, 286 |
| 500 | 161000 | 200, 303 |
| 501 | 78222700 | 202, 263 |
| 502 | 1608000 | 203, 214 |
| 503 | 222600 | 203, 240 |
| 504 | 155912300 | 204, 208 |
| 505 | 276000 | 204, 215 |
| 506 | 4257400 | 204, 274 |
| 507 | 2254700 | 204, 276 |
| 508 | 220000 | 204, 299 |
| 509 | 100000 | 206, 291 |
| 510 | 138400 | 208, 286 |
| 511 | 156342000 | 209, 214 |
| 512 | 215310000 | 214, 214 |
| 513 | 2182494000 | 214, 216 |
| 514 | 625142000 | 214, 218 |
| 515 | 1902584000 | 214, 224 |
| 516 | 1289000 | 214, 231 |
| 517 | 480471000 | 214, 236 |
| 518 | 272000 | 214, 246 |
| 519 | 100787000 | 214, 258 |
| 520 | 454000 | 214, 262 |
| 521 | 591000 | 214, 286 |
| 522 | 4596000 | 214, 301 |
| 523 | 5154000 | 214, 302 |
| 524 | 2398229000 | 215, 216 |
| 525 | 485675000 | 215, 218 |
| 526 | 2052100000 | 215, 224 |
| 527 | 272400 | 216, 254 |
| 528 | 30700 | 216, 262 |
| 529 | 4328600 | 216, 269 |
| 530 | 7728700 | 216, 276 |
| 531 | 2824400 | 216, 279 |
| 532 | 3714400 | 216, 281 |
| 533 | 2535700 | 216, 302 |
| 534 | 407400 | 216, 309 |
| 535 | 157716800 | 218, 236 |
| 536 | 18571700 | 218, 258 |
| 537 | 76600 | 218, 276 |
| 538 | 249300 | 218, 301 |
| 539 | 249300 | 218, 302 |
| 540 | 696500 | 220, 255 |
| 541 | 407400 | 220, 303 |
| 542 | 158907700 | 224, 232 |
| 543 | 820700 | 224, 274 |
| 544 | 1334300 | 224, 276 |
| 545 | 1334300 | 224, 279 |
| 546 | 820700 | 224, 281 |
| 547 | 272400 | 224, 282 |
| 548 | 18571700 | 224, 309 |
| 549 | 75222300 | 228, 246 |
| 550 | 1636200 | 229, 240 |
| 551 | 82636000 | 238, 243 |
| 552 | 101100 | 238, 308 |
| 553 | 32062400 | 240, 249 |
| 554 | 10577200 | 240, 265 |
| 555 | 147443600 | 243, 244 |
| 556 | 89474700 | 247, 248 |
| 557 | 136572700 | 247, 265 |
| 558 | 12872900 | 248, 263 |
| 559 | 8964000 | 249, 259 |
| 560 | 254000 | 254, 263 |
| 561 | 240414900 | 254, 286 |
| 562 | 88300 | 257, 286 |
| 563 | 595100 | 259, 263 |
| 564 | 163400 | 259, 264 |
| 565 | 503000 | 259, 289 |
| 566 | 3143300 | 259, 303 |
| 567 | 1400 | 259, 308 |
| 568 | 538000 | 259, 312 |
| 569 | 21800 | 263, 263 |
| 570 | 106900 | 263, 288 |
| 571 | 1677900 | 263, 300 |
| 572 | 2200 | 265, 286 |
| 573 | 84462400 | 274, 286 |
| 574 | 258000 | 279, 286 |
| 575 | 1513500 | 281, 286 |
| 576 | 15100 | 286, 287 |
| 577 | 40213800 | 286, 289 |
| 578 | 2178800 | 286, 309 |
| 579 | 629600 | 286, 311 |
| 580 | 1662500 | 259, 416 |
| 581 | 159461400 | 263, 434 |
| 582 | 72100 | 244, 545 |
| 583 | 3657400 | 263, 546 |
| 584 | 236400 | 263, 550 |
| 585 | 5875000 | 238, 656 |
| 586 | 481000 | 244, 656 |
| 587 | 5093900 | 259, 755 |
| 588 | 42000 | 260, 761 |
| 589 | 75000 | 238, 771 |
| 590 | 51800 | 263, 782 |
| 591 | 1059900 | 240, 880 |
| 592 | 673400 | 259, 885 |
| 593 | 23988500 | 238, 904 |
| 594 | 383900 | 259, 926 |
| 595 | 1259300 | 246, 993 |
| 596 | 98787000 | 259, 1010 |
| 597 | 443000 | 263, 1012 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `a * a * b * b` | -2000 |
| `a * a * b * c` | 3000 |
| `a * b` | -5650959338076366134578862323/26337113010000000000 |
| `a * a * c * c` | -1000 |
| `a * c` | 3546593227649360453168173/9217989553500000000 |
| `1` | -3876999384690811645945112313741435201017737/91040712517969804687500000000000000 |
| `a * b * b * q` | 200 |
| `a * a * b * p` | 66300 |
| `a * a * c * p` | -1000 |
| `b * q` | 1521145614347617082821/2000000000000000 |
| `a * p` | -3889053798698877/10000000000 |
| `a * b * h` | 95100 |
| `a * a * b` | -51600 |
| `a * c * h` | 9400 |
| `a * a * c` | -183200 |
| `h` | 758513933668293980496360521/3693104789062500000000 |
| `a` | 576128716695037697283609047/26043401610000000000 |
| `a * b * k` | 691300 |
| `a * b * e * j` | -2119000 |
| `a * a * b * j` | 100 |
| `a * c * k` | -400 |
| `a * c * e * j` | 300 |
| `a * a * c * j` | 264900 |
| `k` | -16074692778940908801/78125000000000 |
| `e * j` | -5485242114961016850287/39062500000000 |
| `a * j` | -25116706264950029/10000000000 |
| `a * b * f * q` | -342900 |
| `a * a * b * f` | 600 |
| `a * b * p` | -13100 |
| `a * c * f * q` | -200 |
| `a * a * c * f` | -600 |
| `a * c * p` | 566500 |
| `f * q` | -5841795780130024791/200000000000000 |
| `a * f` | 8500647946504595537/6437812500000 |
| `p` | -25272057229121975209/200000000000000 |
| `a * b * f * k` | 800 |
| `a * b * j` | 588800 |
| `a * c * f * k` | -1200 |
| `a * c * j` | -583400 |
| `f * k` | 265272165619751576151363434909/271285433437500000000000 |
| `j` | 3691737472081811360161136565091/271285433437500000000000 |
| `a * b * h * p` | -400 |
| `a * c * h * p` | -707600 |
| `h * p` | 17392430039182904381/50000000000000 |
| `a * b * h * u` | -300 |
| `a * a * b * u` | 206800 |
| `a * c * h * u` | -100 |
| `a * a * c * u` | 500 |
| `h * u` | 449325851866184242067255159203459/261450251333656875000000000 |
| `a * u` | -1283850965461909/10000000000 |
| `a * b * b` | -973100 |
| `a * c * c` | -800 |
| `c` | 637832091/2500 |
| `b` | 25122389259706785142157737/824040000000000000 |
| `a * b * v` | -525 |
| `a * b * e * u` | 400 |
| `a * b * b * e` | 300 |
| `a * c * v` | -581400 |
| `a * b * c * v` | -500 |
| `a * c * e * u` | -500 |
| `a * b * c * e` | -300 |
| `v` | -34638095163142325165867/590896766250000000 |
| `e * u` | -798921564145236866246707/590896766250000000 |
| `b * e` | -10110660373109924456561/68670000000000000 |
| `a * b * b * k` | 500 |
| `b * k` | -580724648851732651/1226250000000 |
| `a * b * b * h` | 1218600 |
| `a * b * c * h` | 400 |
| `b * h` | -224256109350677161883/206010000000000 |
| `a * b * p * k` | -500 |
| `a * b * q * j` | 300 |
| `a * c * q * j` | -300 |
| `p * k` | -1174594161047/10000000000 |
| `q * j` | 1174594161047/10000000000 |
| `a * b * r * k` | -548000 |
| `a * b * w * j` | -273200 |
| `a * c * r * k` | 300 |
| `a * c * w * j` | -300 |
| `a * b * c * w` | -300 |
| `r * k` | -7193733260682294542133439/276539687500000000000 |
| `w * j` | -67104740722500480300866561/276539687500000000000 |
| `b * w` | -110124447889268644018705513/6867000000000000000 |
| `a * b * q` | 252740298128549/2000000000 |
| `a * b * e * p` | -600 |
| `a * c * q` | -164192583099/2000000000 |
| `a * c * c * q` | -200 |
| `a * c * e * p` | -10000 |
| `a * c * c * e` | 400 |
| `q` | -2547163068961/1000000000 |
| `c * q` | -553669251101636776793/2000000000000000 |
| `e * p` | 3253169122701/1000000000 |
| `c * e` | 90182468101412744157/2212317500000000 |
| `c * k` | 1239820254587/12500000 |
| `a * b * f * w` | -704200 |
| `a * b * r` | 93760637177481/100000000 |
| `a * c * f * w` | -69400 |
| `a * c * c * w` | 300 |
| `a * c * r` | 200 |
| `f * w` | -380386912816220883300592037/138269843750000000000 |
| `c * w` | -12646734260221193321/4424635000000000 |
| `r` | 343812613517466678599800396141/406928150156250000000000 |
| `a * b * u * w` | 500 |
| `a * b * w` | 897071/2 |
| `a * b * v * r` | -500 |
| `a * b * e * r` | 300 |
| `a * c * w` | 25300 |
| `a * c * v * r` | -200 |
| `u * w` | 834378387780233936307/553079375000000000 |
| `w` | 51161130200746260160576536116567/22787976408750000000000000 |
| `v * r` | -60067262780233936307/553079375000000000 |
| `e * r` | -31506519027585514285376247116567/22787976408750000000000000 |
| `a * b * u * k` | -1200 |
| `a * b * v * j` | 1200 |
| `a * c * u * k` | 1600 |
| `a * c * v * j` | 838300 |
| `u * k` | -926582809/25000000 |
| `v * j` | 3426582809/25000000 |
| `a * b * h * j` | -200 |
| `a * b * f * h` | 768100 |
| `a * c * h * j` | 700 |
| `a * c * f * h` | 506500 |
| `h * j` | 527908002618751229273/156250000000000 |
| `f * h` | 797860841720491018499/250000000000000 |
| `a * b * q * r` | -200 |
| `a * c * q * r` | 300 |
| `p * w` | -46046084596134258561/1000000000000000 |
| `q * r` | 38702425351208258561/1000000000000000 |
| `a * b * u` | -42900 |
| `a * b * f * v` | -1100 |
| `a * c * u` | -1700 |
| `a * c * f * v` | 1700 |
| `u` | -5594604008059117/10000000000 |
| `f * v` | 3799932228059117/10000000000 |
| `a * b * h * r` | -815100 |
| `a * c * h * r` | -300 |
| `h * r` | -507345151479861295362797387/276539687500000000000 |
| `a * b * f` | -161500 |
| `a * c * f` | -370800 |
| `f` | -37165816/25 |
| `a * b * e` | 1468700 |
| `a * c * e` | 2300 |
| `e` | 27243290322061458820069/276539687500000 |
| `b * c * e * e` | -100 |
| `a * k` | 415600 |
| `a * e * j` | -251800 |
| `b * e * f * q` | 400 |
| `b * e * f * h` | 387000 |
| `b * e * p` | 15000 |
| `a * f * q` | 752057889091/40000000 |
| `a * h * p` | 496100 |
| `a * f * h` | 4417553992889/2000000 |
| `b * e * q` | 5000 |
| `a * q` | -6900 |
| `b * e * f` | -308800 |
| `a * b * e * f` | -300 |
| `a * a * f` | 191700 |
| `a * a * f * f` | -2213400 |
| `e * f` | -498382356323357/10000000000 |
| `b * c * w` | -223/10 |
| `b * e * r` | 192059/5 |
| `a * f * w` | -9772621992889/2000000 |
| `a * e * f * r` | -100 |
| `b * p` | -216900 |
| `a * f * p` | -99400 |
| `a * r` | 111522959480672012453/206010000000000 |
| `b * p * w` | 443106097841841/1000000000 |
| `b * q * r` | -373206097841841/1000000000 |
| `a * f * p * w` | 500 |
| `a * a * f * p` | 471200 |
| `a * f * q * r` | 22000 |
| `a * a * f * r` | 1612700 |
| `c * h` | -912984962677767/2500000000 |
| `b * c * h * k` | -100 |
| `b * h * q` | -492500 |
| `b * h * k` | 85400 |
| `b * e * h * j` | -100 |
| `b * b * h * h` | 15400 |
| `b * b * h * q` | 100 |
| `b * b * h * k` | 100 |
| `b * f * h * k` | 400 |
| `b * h * j` | 10737783/50 |
| `b * b * h` | -152700 |
| `b * h * h * r` | -826700 |
| `b * h * h * p` | 100 |
| `b * h * h` | 730100 |
| `b * h * p * k` | 100 |
| `b * h * p` | 270700 |
| `b * h * q * j` | -300 |
| `b * f * h * q` | 1334000 |
| `b * c * q` | 1223/10 |
| `b * q * k` | 500 |
| `b * e * q * j` | -500 |
| `a * p * k` | 700 |
| `a * a * p` | -37700 |
| `a * e * p * j` | -600 |
| `b * f * q * w` | 400 |
| `a * p * r` | 53700 |
| `a * a * p * r` | -258000 |
| `b * f * q * k` | 900 |
| `b * q * j` | -1300 |
| `a * f * p * k` | 600 |
| `a * p * j` | -1100 |
| `b * q * u * w` | -700 |
| `a * b * q * u` | 400 |
| `b * q * v * r` | 600 |
| `a * p * u * w` | -600 |
| `a * a * p * u` | 351500 |
| `a * p * v * r` | 600 |
| `b * c * q * k` | -200 |
| `b * b * q * k` | -200 |
| `b * b * q` | 146683797841841/1000000000 |
| `b * b * e * q` | -24600 |
| `a * e * f * p` | 400 |
| `b * q * v` | -149800 |
| `b * b * q * v` | 100 |
| `b * e * q * u` | 100 |
| `a * p * v` | 25 |
| `a * b * p * v` | 100 |
| `a * e * p * u` | 100 |
| `b * b * q * w` | -290900 |
| `b * h * q * r` | 500 |
| `a * h * p * r` | 400 |
| `b * q * u * k` | -900 |
| `b * q * v * j` | 900 |
| `a * p * u * k` | -600 |
| `a * p * v * j` | 700 |
| `b * c * e * q` | 200 |
| `b * c * q * w` | 200 |
| `b * c * q * v` | 400 |
| `b * h * q * u` | 600 |
| `b * c * h * q` | -600 |
| `a * c * p * v` | 400 |
| `a * h * p * u` | -701200 |
| `c * v` | -504037444310773/1250000000 |
| `b * q * w` | 60900 |
| `b * e * q * r` | -200 |
| `a * p * w` | 997/2 |
| `b * f * q * v` | -1000 |
| `b * q * u` | 1300 |
| `a * f * p * v` | -200 |
| `a * f * h * p` | -600 |
| `a * p * u` | 487200 |
| `a * h * p * j` | -300 |
| `b * q * r * k` | -300 |
| `b * q * w * j` | 300 |
| `a * p * r * k` | -400 |
| `a * p * w * j` | 400 |
| `a * e * p` | 5500 |
| `b * f * q` | -1106500 |
| `b * v` | 283131929972431/625000000 |
| `b * c * v * k` | -100 |
| `a * a * u * j` | 529100 |
| `b * c * v * w` | -100 |
| `b * c * e * v` | 100 |
| `a * u * w` | 100 |
| `a * e * u * r` | -200 |
| `b * h * v * j` | -100 |
| `b * c * h * v` | 100 |
| `a * h * u * j` | -530300 |
| `a * u * k` | -700 |
| `b * v * r * k` | 100 |
| `b * f * v * k` | -300 |
| `b * v * w * j` | -100 |
| `b * f * v * w` | 400 |
| `b * v * j` | 100 |
| `a * u * r * k` | 100 |
| `a * u * r` | -300 |
| `a * f * u * k` | 200 |
| `a * u * w * j` | -100 |
| `a * f * u * w` | 100 |
| `a * u * j` | 312200 |
| `b * h * p * w` | -551200 |
| `b * p * v * w` | 100 |
| `b * h * u * w` | 400 |
| `a * h * u * r` | 200 |
| `p * v` | 265139932213/5000000000 |
| `q * u` | 920734860067787/5000000000 |
| `a * q * r` | -16529/2 |
| `a * v` | -92200 |
| `a * e * u` | 771100 |
| `c * e * f * k` | -600 |
| `c * c * e * k` | -44300 |
| `c * e * j` | 400 |
| `c * c * e` | 26800 |
| `a * f * k` | -1169300 |
| `a * r * k` | 130100 |
| `a * w * j` | 28300 |
| `c * e * f * h` | 238100 |
| `c * e * p` | 1000 |
| `c * e * r` | 10128289/10000000 |
| `c * h * u` | 100 |
| `a * c * q * u` | 100 |
| `a * f * q * u` | -100 |
| `a * f * h * u` | 913800 |
| `c * u * w` | -500 |
| `c * h * r` | 100 |
| `a * f * v * r` | 200 |
| `a * f * h * r` | -200 |
| `c * r` | 703/10 |
| `a * f * r` | -226050 |
| `a * e * f * j` | 2657600 |
| `c * r * k` | -100 |
| `c * f * k` | -281900 |
| `c * w * j` | 300 |
| `c * f * w` | 7300 |
| `c * j` | -364100 |
| `a * f * r * k` | -198000 |
| `a * f * f * k` | -62800 |
| `a * f * f * w` | 6775200 |
| `a * f * j` | 2495300 |
| `c * f * h * v` | -100 |
| `c * h * q * u` | -100 |
| `c * f * h * q` | -940900 |
| `c * h * r * k` | 100 |
| `c * f * h * k` | 353800 |
| `c * f * h * w` | -400 |
| `c * h * j` | 529200 |
| `c * v * r * k` | -200 |
| `c * v * w * j` | -200 |
| `c * e * v * j` | -600 |
| `c * h * u * v` | 200 |
| `a * f * u * v` | 100 |
| `a * h * u * u` | 100 |
| `a * u * u` | -100 |
| `c * f * v * k` | 400 |
| `c * f * v * w` | 500 |
| `c * v * j` | 582200 |
| `a * e * r * j` | -158600 |
| `c * q * w` | -100 |
| `c * e * p * w` | 100 |
| `c * u * k` | -600 |
| `a * f * v * j` | -312400 |
| `c * h * k` | -130500 |
| `c * e * u * k` | 600 |
| `a * v * j` | 600 |
| `a * h * j` | 3012700 |
| `c * r * k * k` | 100 |
| `c * w * j * k` | -100 |
| `a * j * k` | 277900 |
| `a * e * j * j` | -277900 |
| `c * f * k * k` | -300 |
| `c * j * k` | 300 |
| `a * f * j * k` | -831800 |
| `a * h * j * j` | -939400 |
| `a * f * h * j` | -2601000 |
| `a * j * j` | 3894043/5 |
| `c * h * p * k` | 100 |
| `c * q * u * k` | -100 |
| `a * q * u * j` | -100 |
| `c * u * w * k` | 400 |
| `a * h * r * j` | -860600 |
| `a * a * j` | -228800 |
| `c * e * k` | 47900 |
| `e * f * f * k` | 300 |
| `e * f * h * j` | -27800 |
| `e * f * f * h` | 500 |
| `e * f * j` | -87600 |
| `a * f * f * h` | -1231100 |
| `a * h * u` | 224900 |
| `a * v * r` | 100 |
| `a * h * r` | -1275953992889/2000000 |
| `e * f * h * u` | 427200 |
| `e * f * v * r` | 1400 |
| `e * f * h * r` | -800 |
| `a * a` | 374100 |
| `e * f * k` | 150900 |
| `a * e * f` | -1504900 |
| `e * e * f * j` | -100 |
| `a * a * r` | -548500 |
| `e * e * f * f` | 89400 |
| `a * f * v` | 215000 |
| `e * f * f * v` | -650300 |
| `b * e * f * v` | -200 |
| `e * f * u` | -120700 |
| `a * f * f * v` | 800 |
| `a * f * u` | -589900 |
| `a * w` | 860900 |
| `a * h` | -787900 |
| `a * e * r` | 109800 |
| `e * f * w` | -3168635544247/250000000 |
| `e * f * h` | -54532364455753/250000000 |
| `a * q * j` | -100 |
| `e * f * p * k` | 200 |
| `e * f * q * j` | -200 |
| `e * f * q` | 29804 |
| `a * f * q * j` | 100 |
| `e * f * f * q` | -16600 |
| `e * f * h * p` | -100 |
| `e * f * p` | -100 |
| `e * f * r` | 49450 |
| `e * f * q * r` | -22000 |
| `f * h * v` | -443700 |
| `a * a * u` | -626200 |
| `h * r * k` | 11500 |
| `e * h * r` | -13509768044247/250000000 |
| `h * k` | 61800 |
| `h * w * j` | 298300 |
| `h * w` | -862100 |
| `e * h * j` | 55800 |
| `h * q * u` | -134300 |
| `f * h * q` | 371600 |
| `q * r * k` | -100 |
| `e * q * r` | 8200 |
| `q * w * j` | 100 |
| `q * w` | -3200 |
| `e * p * r * k` | 100 |
| `e * e * p * r` | -8200 |
| `e * p * w * j` | -100 |
| `e * p * w` | 3200 |
| `e * q` | -6300 |
| `a * e` | 182300 |
| `e * e * p` | 6300 |
| `u * v * k` | 100 |
| `f * v * k` | -100 |
| `v * v * j` | -100 |
| `e * u * u * k` | -100 |
| `e * f * u * k` | -300 |
| `e * u * v * j` | 100 |
| `e * u * j` | 300 |
| `h * v * j` | -600 |
| `e * h * u * j` | -300 |
| `b * w * k` | 397500 |
| `b * h * w` | 153200 |
| `b * e * r * k` | -63800 |
| `e * h * r * j` | -58700 |
| `b * e * h * r` | -100 |
| `h * u * w` | -900 |
| `c * h * w` | 100 |
| `e * h * u * r` | 1000 |
| `c * e * h * r` | -100 |
| `p * v * w` | 100 |
| `h * p * w` | 5710388148439/100000000 |
| `q * u * w` | -100 |
| `e * p * v * r` | -100 |
| `e * h * p * r` | -36200 |
| `e * q * u * r` | 100 |
| `r * k * k` | -100 |
| `f * k * k` | 280800 |
| `w * j * k` | 100 |
| `f * w * k` | 112400 |
| `j * k` | -101240630600373/2500000000 |
| `e * r * j * k` | 100 |
| `e * r * j` | 19991253461509/312500000 |
| `e * f * j * k` | -280800 |
| `e * w * j * j` | -100 |
| `e * f * w * j` | 100 |
| `e * j * j` | 101240630600373/2500000000 |
| `a * r * j` | 70333830822519/100000000 |
| `h * u * k` | 600 |
| `p * v * k` | -100 |
| `q * u * k` | 100 |
| `e * u * k` | 400 |
| `e * p * v * j` | 100 |
| `e * v * j` | -400 |
| `e * q * u * j` | -100 |
| `e * k` | -75800 |
| `e * e * j` | 73600 |
| `f * h * p * w` | 100 |
| `f * h * u * w` | 1100 |
| `f * h * w` | 402979611851561/100000000 |
| `f * h * v * r` | 200 |
| `a * e * f * u` | -2090700 |
| `f * h * p * v` | 1500 |
| `f * h * q * u` | -500 |
| `f * h * r` | -303245208816357/200000000 |
| `f * q * v * r` | 200 |
| `p * u * w` | 100 |
| `h * p * u` | -507800 |
| `h * p * r` | -14700 |
| `f * f * v * k` | 5900 |
| `f * v * j` | -220900 |
| `f * u * k` | -6300 |
| `u * j` | -32700 |
| `a * a * f * u` | 381000 |
| `f * f * v * w` | 300 |
| `f * v * r` | 299 |
| `b * f * v` | -1104200 |
| `f * u * w` | -300 |
| `b * u * w` | -400 |
| `u * r` | -299 |
| `b * u` | -164100 |
| `b * f * h * v` | 207300 |
| `b * h * u` | 600 |
| `c * f * v` | -200 |
| `c * u` | 200 |
| `h * u * r` | -1100 |
| `f * h * v * j` | 310900 |
| `h * u * j` | 543413875391/10000000 |
| `f * v * w` | -1400 |
| `e * u * r` | -1400 |
| `f * p * v * w` | -200 |
| `f * p * v` | -700 |
| `f * f * q * v` | 300 |
| `p * u` | 204500 |
| `q * u * r` | -100 |
| `f * q * u` | -204100 |
| `f * u * v * k` | -7100 |
| `f * u * v` | 6000 |
| `f * v * v * j` | 7100 |
| `f * f * v * v` | -3000 |
| `u * u * k` | 7100 |
| `u * u` | -3000 |
| `u * v * j` | -7100 |
| `f * p * v * k` | 200 |
| `f * q * v * j` | -100 |
| `p * u * k` | -100 |
| `q * u * j` | 200 |
| `f * f * v` | -156100 |
| `a * f * f` | -1843400 |
| `f * u` | 156100 |
| `c * e * f * v` | 200 |
| `f * v * r * k` | 1200 |
| `f * v * w * j` | 700 |
| `f * f * h * v` | 280200 |
| `c * e * u` | -200 |
| `b * e * u` | 200 |
| `u * r * k` | 999 |
| `u * w * j` | 9476124609/10000000 |
| `f * h * u` | -140300 |
| `c * f * q * w` | 100 |
| `c * q * r` | -713128289/10000000 |
| `f * f * w * k` | 1000 |
| `f * h * w * j` | -808500 |
| `f * f * h * w` | -4703700 |
| `f * w * j` | 3223197561483757/5000000000 |
| `f * r * k` | 5412628816357/200000000 |
| `h * r * j` | 483078474382101/5000000000 |
| `r * j` | -194006640946341/2500000000 |
| `f * u * w * k` | -1900 |
| `v * r * j` | -19466124609/10000000 |
| `b * f * w` | 568400 |
| `b * r` | -568400 |
| `f * f * k * k` | -315500 |
| `b * f * k * k` | -489000 |
| `f * j * k` | 620302438516243/5000000000 |
| `b * f * k` | 1119800 |
| `b * j * k` | 1287363/25 |
| `j * j` | 1066197561483757/5000000000 |
| `b * j` | -158400 |
| `a * b * j * k` | -385500 |
| `f * h * p * k` | -400 |
| `c * q * j` | 100 |
| `h * p * j` | 400 |
| `f * q * u * k` | -100 |
| `p * v * j` | -100 |
| `f * f * k` | -1125000 |
| `f * j` | 1018100 |
| `b * e * f * k` | 100 |
| `b * e * j` | 325700 |
| `f * h * u * k` | 800 |
| `f * f * h * k` | 1000 |
| `f * h * j` | -3186400 |
| `h * h * p * u` | 351700 |
| `f * h * h * p` | 481000 |
| `h * p * r * k` | -100 |
| `h * p * k` | 100 |
| `h * p * w * j` | 100 |
| `e * h * u * u` | 100 |
| `h * u * v` | -100 |
| `h * u * r * k` | 900 |
| `h * u * w * j` | -700 |
| `b * h * r` | 1471700 |
| `f * h * r * k` | -800 |
| `b * h * r * k` | -110400 |
| `f * h * h * r` | 950500 |
| `h * v * r * j` | -200 |
| `h * h * u * j` | 200 |
| `h * h * j` | -2410800 |
| `b * h * w * j` | 100 |
| `f * h * j * k` | -200 |
| `h * h * j * j` | 469700 |
| `f * h * h * j` | 2295500 |
| `h * j * j` | -1625476830600373/2500000000 |
| `h * p * v * j` | -300 |
| `h * q * u * j` | 200 |
| `h * p * v * r` | 200 |
| `h * q * u * r` | -200 |
| `f * p * v * v` | -1000 |
| `h * p * u * v` | -800 |
| `p * u * v` | 1000 |
| `f * q * u * v` | 1000 |
| `h * q * u * u` | 800 |
| `q * u * u` | -1000 |
| `p * u * v * k` | -200 |
| `p * v * v * j` | 200 |
| `q * u * u * k` | 200 |
| `q * u * v * j` | -200 |
| `c * h * p * w` | -100 |
| `b * e * p * w` | -30500 |
| `h * q * r` | 100 |
| `f * p * w * k` | 200 |
| `p * w * j` | -300 |
| `f * q * r * k` | -300 |
| `q * r * j` | 26697647359/250000000 |
| `p * u * w * k` | -200 |
| `p * v * w * j` | 200 |
| `q * u * r * k` | 200 |
| `q * v * r * j` | -200 |
| `h * p * u * k` | 100 |
| `c * q * v * j` | 100 |
| `c * h * v * j` | -840100 |
| `h * u * u * k` | -1800 |
| `h * u * v * j` | 1800 |
| `u * r * k * k` | -600 |
| `e * u * r * k` | 500 |
| `u * w * j * k` | 600 |
| `u * w * k` | -500 |
| `v * r * j * k` | 600 |
| `e * v * r * j` | -500 |
| `v * w * j * j` | -600 |
| `v * w * j` | 500 |
| `u * u * w * k` | 900 |
| `u * v * r * k` | -900 |
| `u * v * w * j` | -900 |
| `v * v * r * j` | 900 |
| `b * e * u * k` | -200 |
| `b * e * v * j` | 200 |
| `b * r * k` | 15218182822519/100000000 |
| `b * w * j` | 1872491/50 |
| `b * c * e * h` | 100 |
| `c * e * h` | -87600 |
| `b * e * h` | -142700 |
| `b * e * w` | 657985267969/10000000 |
| `b * e * e * r` | 100 |
| `c * e * h * u` | -400 |
| `b * e * w * j` | -82800 |
| `c * e * f` | -189700 |
| `b * b * e` | 7400 |
| `b * h * u * k` | -200 |
| `b * b * w` | 88716202158159/1000000000 |
| `c * p * k` | -100 |
| `b * c * k` | 100 |
| `b * r * k * k` | 100 |
| `b * k * k` | 103400 |
| `b * w * j * k` | -100 |
| `b * e * j * k` | -103400 |
| `e * e * f` | -65900 |
| `b * e * e` | 14732031/10000000 |
| `h * q * j` | -100 |
| `f * q * w` | 3788148439/100000000 |
| `e * p * r` | 3838222220067/125000000 |
| `k * k` | -53100 |
| `e * j * k` | 106200 |
| `e * e * j * j` | -53100 |
| `f * h * h * u` | -400 |
| `f * h * h` | -3194400 |
| `b * h * v` | -76500 |
| `b * h * h * u` | -500 |
| `b * f * h * w` | -300 |
| `b * h * p * v` | -100 |
| `b * f * h` | -659900 |
| `b * b` | -20000 |
| `f * h * k` | -192400 |
| `f * f * q * k` | -100 |
| `f * q * j` | 100 |
| `f * p * k` | 100 |
| `p * j` | -100 |
| `f * f * h * q` | -300 |
| `f * h * p` | -767700 |
| `f * q * r` | 703/10 |
| `p * r` | 13297/10 |
| `f * q * v` | -300 |
| `f * f * q` | -311800 |
| `f * p` | 311800 |
| `b * f` | 673100 |
| `b * f * w * k` | -1078000 |
| `b * u * k` | 200 |
| `b * e * k` | 121000 |
| `b * h * h * j` | -134600 |
| `b * f * h * h` | 400 |
| `f * h * u * v` | -1000 |
| `h * u * u` | 1000 |
| `b * h * v * r` | -100 |
| `p * r * k` | 48302352641/250000000 |
| `f * q * w * j` | 100 |
| `c * e * p * k` | -100 |
| `c * c * k` | 4600 |
| `c * c` | -2800 |
| `h * h * u` | -1051900 |
| `h * v * r` | -100 |
| `h * h * r` | 1191000 |
| `c * h * u * w` | 300 |
| `c * q * k` | 100 |
| `e * q * u` | -15700 |
| `q * v` | 15700 |
| `c * e * q * u` | 100 |
| `c * q * v` | -100 |
| `e * e * p * u` | 100 |
| `e * p * v` | -100 |
| `c * f * q` | 750700 |
| `e * p * u` | -183900 |
| `h * v` | 46100 |
| `c * h * v` | 582000 |
| `e * h * p * u` | -100 |
| `e * h * u` | -158100 |
| `c * f * w * k` | -200 |
| `e * f * r * k` | -71200 |
| `c * h * h` | 100 |
| `c * f * h` | -4500 |
| `c * c * q` | 100 |
| `c * c * h` | -100 |
| `f * r * k * k` | 500 |
| `f * w * j * k` | -500 |
| `r * j * k` | -2759438516243/5000000000 |
| `w * j * j` | 2759438516243/5000000000 |
| `c * h * q` | 347000 |
| `h * h * p` | -243100 |
| `c * v * v * r` | 100 |
| `c * u * v * k` | -100 |
| `c * u * v * w` | -100 |
| `c * v * v * j` | 100 |
| `c * u * k * k` | 200 |
| `c * v * j * k` | -200 |
| `h * u * j * k` | 200 |
| `h * v * j * j` | -200 |
| `u * u * w` | -1000 |
| `f * u * v * w` | 1000 |
| `u * v * r` | 1000 |
| `f * v * v * r` | -1000 |
| `u * u * k * k` | -3200 |
| `u * v * j * k` | 6400 |
| `v * v * j * j` | -3200 |
| `e * r * k` | 32700 |
| `e * w * j` | 8600 |
| `w * k` | -41300 |
| `h * q` | -115400 |
| `h * h` | 153400 |
| `e * h * p` | 28604 |
| `h * h * p * r` | 11500 |
| `e * w` | -22630567969/10000000 |
| `e * h` | 12216453/100 |
| `e * e * r` | 22630567969/10000000 |
| `f * u * k * k` | 7000 |
| `u * j * k` | -6189 |
| `f * v * j * k` | -7000 |
| `v * j * j` | 6189 |
| `f * f * h * h` | 996000 |
| `f * f * h` | 3367752559/5000 |
| `e * f * v` | 479000 |
| `f * r` | 6059639/10 |
| `f * f * w` | 30403361/10 |
| `a * q * u` | -125 |
| `e * v` | -88300 |
| `e * e` | -15100 |
| `e * f * f` | 1977566941/5000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `a * a * b * b` | -2000 | 6635054616404027065561/1000000000000000000000000 | 0 |
| `a * a * b` | 7986419/5000 | 16458723588503117/1000000000000000000 | 131446262782969475168023/5000000000000000000000 |
| `a * a` | -1248186956971/5000000000 | 40827031249/1000000000000 | 0 |
| `a * b * b` | -7526159/10000 | 32837538993472273/1000000000000000000 | 0 |
| `a * b` | -562826751805702684370513180499091/2633711301000000000000000 | 81455844581/1000000000000 | 0 |
| `a` | -2233091396563868484751834961618103760093/16314495683220189000000000000000000000 | 202057/1000000 | 0 |
| `b * b` | -2182963055621717627/25000000000000 | 162516215689/1000000000000 | 0 |
| `b` | 16058956418422722212816997335729/921798955350000000000000000000 | 403133/1000000 | 6473895277828007273819554586944438957/921798955350000000000000000000000000 |
| `1` | -394804188160403449104598590972368366960189192925349/13595413069350157500000000000000000000000000 | 1 | -394804188160403449104598590972368366960189192925349/13595413069350157500000000000000000000000000 |
| `a * a * b * c` | 3000 | 1838620470795271703187/250000000000000000000000 | 5515861412385815109561/250000000000000000000 |
| `a * a * c` | -106859/125 | 4560828487857039/250000000000000000 | 0 |
| `a * b * c` | 569729/1250 | 9099513853988091/250000000000000000 | 5184256928518781097339/312500000000000000000 |
| `a * c` | -9692296762791735114699011833/18435979107000000000000000 | 22571989527/250000000000 | 0 |
| `b * c` | -105656165207/5000000000 | 45034390563/250000000000 | 0 |
| `c` | -500136563887247915298852387565132027/9063608712900105000000000000000000 | 111711/250000 | 0 |
| `a * a * c * c` | -1000 | 509494711206997683729/62500000000000000000000 | 0 |
| `a * c * c` | -4409243/5000 | 2521539522050697/62500000000000000 | 0 |
| `c * c` | -369928069369/2500000000 | 12479347521/62500000000 | 0 |
| `a * b * b * q` | 200 | 1809906636703211270941/250000000000000000000000 | 1809906636703211270941/1250000000000000000000 |
| `a * b * q` | 159159928549/2000000000 | 4489601785770977/250000000000000000 | 714564699436771504197922373/500000000000000000000000000 |
| `a * q` | -560412019374719017/2000000000000000 | 11136775669/250000000000 | 0 |
| `b * b * q` | 1239309041841/1000000000 | 8957406260130613/250000000000000000 | 11100994569623045196541978533/250000000000000000000000000 |
| `b * q` | -262921455466729413/1000000000000000 | 22219481561/250000000000 | 0 |
| `q` | 47460608730453204019/500000000000000000 | 55117/250000 | 2615886371396389245915223/125000000000000000000000 |
| `a * a * b * p` | 66300 | 2601284804439329138733/500000000000000000000000 | 1724651825343275218979979/5000000000000000000000 |
| `a * a * p` | -7731027/10000 | 6452671461873201/500000000000000000 | 0 |
| `a * b * p` | 2142931/10000 | 12874014780182469/500000000000000000 | 27588125366911198476639/5000000000000000000000 |
| `a * p` | 1142794558597/5000000000 | 31934906793/500000000000 | 36495037712342771849421/2500000000000000000000 |
| `b * p` | 49490983936628261/500000000000000 | 63714767517/500000000000 | 3153306535709851110466997937/250000000000000000000000000 |
| `p` | -13663373334863977240041/62500000000000000000 | 158049/500000 | 0 |
| `a * a * c * p` | -1000 | 720834381677317156911/125000000000000000000000 | 0 |
| `a * c * p` | 1083073/1250 | 3567480372752823/125000000000000000 | 3863841669758518265079/156250000000000000000 |
| `c * p` | 773099962151/5000000000 | 17655811839/125000000000 | 13649707464476077705689/625000000000000000000 |
| `a * b * h` | 4816637/10000 | 16458723588503117/1000000000000000000 | 79275697009156887957529/10000000000000000000000 |
| `a * h` | -23504756961761/2000000000000 | 40827031249/1000000000000 | 0 |
| `b * h` | -37214546432651321/206010000000000 | 81455844581/1000000000000 | 0 |
| `h` | 252100556636395498886661454028358962039/3137403016003882500000000000000000000 | 202057/1000000 | 50938682172280165318542153416608126792714223/3137403016003882500000000000000000000000000 |
| `a * c * h` | -1093549/10000 | 4560828487857039/250000000000000000 | 0 |
| `c * h` | -825753789281/10000000000 | 22571989527/250000000000 | 0 |
| `a * b * k` | 19913/5000 | 2017905637805113/62500000000000000 | 40182554965613215169/312500000000000000000 |
| `a * k` | -636489720847/10000000000 | 5005558061/62500000000 | 0 |
| `b * k` | 9346301039790194873/49050000000000000 | 9986813809/62500000000 | 93339768287247776620477401257/3065625000000000000000000000 |
| `k` | 23085001786018187085684113892971/1085141733750000000000000000000 | 24773/62500 | 571884749245028548673652553470570583/67821358359375000000000000000000000 |
| `a * b * e * j` | -2119000 | 2049018152247894556561/500000000000000000000000 | 0 |
| `a * b * e` | 939857/2000 | 23288796156619967/1000000000000000000 | 21888138089372372324719/2000000000000000000000 |
| `a * b * j` | -56472/625 | 7166729573770123/500000000000000000 | 0 |
| `a * e * j` | 704097/5000 | 5082734859830117/500000000000000000 | 3578738366601805889349/2500000000000000000000 |
| `a * e` | -865700352621/5000000000 | 57769510699/1000000000000 | 0 |
| `a * j` | 3983140622027533/50000000000000 | 17777581031/500000000000 | 70810605165962211420526523/25000000000000000000000000 |
| `b * e * j` | -1889081/10000 | 10140792708235273/500000000000000000 | 0 |
| `b * e` | -3518740081994203673/68670000000000000 | 115258546631/1000000000000 | 0 |
| `b * j` | -1457842496267/10000000000 | 35468850739/500000000000 | 0 |
| `e * j` | -17540038654547633448543/125000000000000 | 25154955581/500000000000 | 0 |
| `e` | 69559905175540145905825382792817591059/784350754000970625000000000000000000 | 285907/1000000 | 2991075922548226273950491460091156415537/117965220935625000000000000000000000000 |
| `j` | 2362801965800899798062396513151/108514173375000000000000000000 | 87983/500000 | 207886405357060566932923832416564433/54257086687500000000000000000000000 |
| `a * a * b * j` | 100 | 1448087877487269743011/500000000000000000000000 | 1448087877487269743011/5000000000000000000000 |
| `a * a * j` | -689181/10000 | 3592084690380767/500000000000000000 | 0 |
| `a * c * k` | -1763893/5000 | 559175896552371/15625000000000000 | 0 |
| `c * k` | 111942072849/1250000000 | 2767416603/15625000000 | 309790350976558111947/19531250000000000000 |
| `a * c * e * j` | 300 | 567797393926482200187/125000000000000000000000 | 1703392181779446600561/1250000000000000000000 |
| `a * c * e` | 518809/10000 | 6453489809695989/250000000000000000 | 3348128594678566357101/2500000000000000000000 |
| `a * c * j` | 8447231/10000 | 1985951354554041/125000000000000000 | 16775789846680886310471/1250000000000000000000 |
| `c * e * j` | 534661/10000 | 2810085242909091/125000000000000000 | 1502442986059017503151/1250000000000000000000 |
| `c * e` | 420142029267927254621/4424635000000000000 | 31938956877/250000000000 | 219981936967272138762510130797/18133750000000000000000000000 |
| `c * j` | 211722022493/5000000000 | 9828668913/125000000000 | 2080945660674435860109/625000000000000000000 |
| `a * a * c * j` | 264900 | 401275372847125862337/125000000000000000000000 | 1062978462672036409330713/1250000000000000000000 |
| `a * b * f * q` | -342900 | 19354673298458681847/5000000000000000000000 | 0 |
| `a * b * f` | 6431481/10000 | 351156145988691/20000000000000000 | 2258454080959492381371/200000000000000000000 |
| `a * f * q` | 5777453091/40000000 | 48010639909059/5000000000000000 | 277379219943480878451369/200000000000000000000000 |
| `a * f` | -67050853375422338539/412020000000000000 | 871067727/20000000000 | 0 |
| `b * f * q` | -779287279/10000 | 95788185009471/5000000000000000 | 0 |
| `b * f` | -302173071631/5000000000 | 1737906363/20000000000 | 0 |
| `f * q` | 308962118843/10000000000 | 237609387/5000000000 | 73412299664506379241/50000000000000000000 |
| `f` | -93210757478392577125223312614343/3038396854500000000000000000000 | 4311/20000 | 0 |
| `a * a * b * f` | 600 | 70953557390036937387/20000000000000000000000 | 212860672170110812161/100000000000000000000 |
| `a * a * f` | -143137/625 | 176005331714439/20000000000000000 | 0 |
| `a * c * f * q` | -200 | 5363316594880889949/1250000000000000000000 | 0 |
| `a * c * f` | -2872163/5000 | 97307846850897/5000000000000000 | 0 |
| `a * c * q` | -664298983099/2000000000 | 1244100346759659/62500000000000000 | 0 |
| `c * f * q` | -564631/10000 | 26543582231157/1250000000000000 | 0 |
| `c * f` | -744216693/78125000 | 481586121/5000000000 | 0 |
| `c * q` | 430555743301577/5000000000000 | 6157175187/62500000000 | 2651007139276811362369899/312500000000000000000000 |
| `a * a * c * f` | -600 | 19661731611151695129/5000000000000000000000 | 0 |
| `a * b * f * k` | 800 | 8699191204577842143/1250000000000000000000 | 8699191204577842143/1562500000000000000 |
| `a * f * k` | -4863980733/2500 | 21578960800971/1250000000000000 | 0 |
| `b * f * k` | 1942919/5000 | 43053154330599/1250000000000000 | 83648791558853078481/6250000000000000000 |
| `f * k` | 444080387516330910122491511/1085141733750000000000000 | 106796403/1250000000 | 5269576447732249439866486974759437/150714129687500000000000000000000 |
| `a * c * f * k` | -1200 | 2410607290037271381/312500000000000000000 | 0 |
| `c * f * k` | 36699/2500 | 11930332975533/312500000000000 | 437831289869085567/781250000000000000 |
| `a * b * h * p` | -400 | 2601284804439329138733/500000000000000000000000 | 0 |
| `a * h * p` | -526917/1250 | 6452671461873201/500000000000000000 | 0 |
| `b * h * p` | 423139/10000 | 12874014780182469/500000000000000000 | 5447497740071629750191/5000000000000000000000 |
| `h * p` | -1322796951823/10000000000 | 31934906793/500000000000 | 0 |
| `a * c * h * p` | -707600 | 720834381677317156911/125000000000000000000000 | 0 |
| `c * h * p` | -371762839/5000 | 3567480372752823/125000000000000000 | 0 |
| `a * b * h * u` | -300 | 3547694328225435372467/1000000000000000000000000 | 0 |
| `a * b * u` | 25053/2000 | 17557888755279131/1000000000000000000 | 439877786986008068943/2000000000000000000000 |
| `a * h * u` | -2284003/10000 | 8800307412753199/1000000000000000000 | 0 |
| `a * u` | -424114248779/5000000000 | 43553588407/1000000000000 | 0 |
| `b * h * u` | 295167/10000 | 17557888755279131/1000000000000000000 | 5182509350229475259877/10000000000000000000000 |
| `b * u` | -829768926859917/5000000000 | 86895721283/1000000000000 | 0 |
| `h * u` | -344705553385788213998364193903/2091602010669255000000000000 | 43553588407/1000000000000 | 0 |
| `u` | 85343765954227312656439470909659999/697200670223085000000000000000000 | 215551/1000000 | 2627990585028521638629740627721160349207/99600095746155000000000000000000000000 |
| `a * a * b * u` | 206800 | 3547694328225435372467/1000000000000000000000000 | 1834157967692550087565439/2500000000000000000000 |
| `a * a * u` | 1464279/5000 | 8800307412753199/1000000000000000000 | 12886105338038841478521/5000000000000000000000 |
| `a * c * h * u` | -100 | 983091141386072613489/250000000000000000000000 | 0 |
| `a * c * u` | -1827251/2500 | 4865414914534377/250000000000000000 | 0 |
| `c * h * u` | 580621/2000 | 4865414914534377/250000000000000000 | 2824962073091864508117/500000000000000000000 |
| `c * u` | -1257797838763/10000000000 | 24079417761/250000000000 | 0 |
| `a * a * c * u` | 500 | 983091141386072613489/250000000000000000000000 | 983091141386072613489/500000000000000000000 |
| `a * b * v` | -7295511/10000 | 17165760319466197/1000000000000000000 | 0 |
| `a * v` | -918943532720893/10000000000 | 42580886009/1000000000000 | 0 |
| `b * v` | 259598016969/1250000000 | 84955039021/1000000000000 | 22054159661375615147349/1250000000000000000000 |
| `v` | 50941948404178180640363912529352879/1045801005334627500000000000000000 | 210737/1000000 | 10735353380851297253608369834698237661823/1045801005334627500000000000000000000000 |
| `a * b * e * u` | 400 | 5019923300355590506817/1000000000000000000000000 | 5019923300355590506817/2500000000000000000000 |
| `a * e * u` | -93393/400 | 12452275800680149/1000000000000000000 | 0 |
| `b * e * u` | 151847/1000 | 24844094984858681/1000000000000000000 | 3772501291165836133807/1000000000000000000000 |
| `e * u` | -6868351614884075017343261/4727174130000000000 | 61627539757/1000000000000 | 0 |
| `a * b * b * e` | 300 | 9388482261006677156611/1000000000000000000000000 | 28165446783020031469833/10000000000000000000000 |
| `b * b * e` | -803773/10000 | 46464523678994923/1000000000000000000 | 0 |
| `a * c * v` | -263151/5000 | 4756753356951399/250000000000000000 | 0 |
| `c * v` | 808643286807/10000000000 | 23541641007/250000000000 | 19036789960730933294649/2500000000000000000000 |
| `a * b * c * v` | -500 | 1917604251047888333067/250000000000000000000000 | 0 |
| `b * c * v` | 100829/2000 | 9490412364074931/250000000000000000 | 956908788257311217799/500000000000000000000 |
| `a * c * e * u` | -500 | 1391056181969780124939/250000000000000000000000 | 0 |
| `c * e * u` | -1790083/10000 | 6884474093794227/250000000000000000 | 0 |
| `a * b * c * e` | -300 | 2601614707452173133537/250000000000000000000000 | 0 |
| `b * c * e` | 302661/2000 | 12875647502695641/250000000000000000 | 3896956348813365400701/500000000000000000000 |
| `a * b * b * k` | 500 | 813484353485288619029/62500000000000000000000 | 813484353485288619029/125000000000000000000 |
| `b * b * k` | 178171/2500 | 4026014211263597/62500000000000000 | 717318978035046341087/156250000000000000000 |
| `a * b * b * h` | 1218600 | 6635054616404027065561/1000000000000000000000000 | 40427387777749736910463173/5000000000000000000000 |
| `b * b * h` | 21171/625 | 32837538993472273/1000000000000000000 | 695203538030801491683/625000000000000000000 |
| `a * b * c * h` | 400 | 1838620470795271703187/250000000000000000000000 | 1838620470795271703187/625000000000000000000 |
| `b * c * h` | -320059/2500 | 9099513853988091/250000000000000000 | 0 |
| `a * b * p * k` | -500 | 318927968149460304537/31250000000000000000000 | 0 |
| `a * p * k` | 4630597/10000 | 791123445982989/31250000000000000 | 3663373855598490914433/312500000000000000000 |
| `b * p * k` | 136239/5000 | 1578405935698641/31250000000000000 | 215040446273647151199/156250000000000000000 |
| `p * k` | 733103140087087/125000000000000 | 3915347877/31250000000 | 2870353823162009680564299/3906250000000000000000000 |
| `a * b * q * j` | 300 | 395008633917487869391/125000000000000000000000 | 1185025901752463608173/1250000000000000000000 |
| `a * q * j` | -1053203/5000 | 979846933685627/125000000000000000 | 0 |
| `b * q * j` | -4229681/5000 | 1954936646181463/125000000000000000 | 0 |
| `q * j` | 13353691057637913/125000000000000 | 4849359011/125000000000 | 64756842060466533781784043/15625000000000000000000000 |
| `a * c * q * j` | -300 | 109459680808955077797/31250000000000000000000 | 0 |
| `c * q * j` | 164353/1250 | 541726744477821/31250000000000000 | 89034415635163314813/39062500000000000000 |
| `a * b * r * k` | -548000 | 227807421168732621909/31250000000000000000000 | 0 |
| `a * b * r` | -4393189952519/100000000 | 9195794662282833/500000000000000000 | 0 |
| `a * r * k` | 1016989/5000 | 565092466180473/31250000000000000 | 574692822088413055797/156250000000000000000 |
| `a * r` | 119016624492230076401/2060100000000000000 | 22810820901/500000000000 | 904955635177943446289585885767/343350000000000000000000000000 |
| `b * r * k` | -11484827481/100000000 | 1127441371339437/31250000000000000 | 0 |
| `b * r` | -9359400583772127/62500000000000 | 45510893769/500000000000 | 0 |
| `r * k` | -488104963636640761879689/4424635000000000000000 | 2796698289/31250000000 | 0 |
| `r` | 2661238485524304387228136006209347/91151905635000000000000000000000 | 112893/500000 | 100145065448765098395781986049663936957/15191984272500000000000000000000000000 |
| `a * b * w * j` | -273200 | 2313255471632798991571/500000000000000000000000 | 0 |
| `a * b * w` | -1293933/2500 | 26292073146321437/1000000000000000000 | 0 |
| `a * w * j` | -158793/1000 | 5738194272443087/500000000000000000 | 0 |
| `a * w` | -14181994258097/400000000000 | 65219352289/1000000000000 | 0 |
| `b * w * j` | 423707/5000 | 11448529234982203/500000000000000000 | 4850821976566604286521/2500000000000000000000 |
| `b * w` | -107533900319536626332434669/6867000000000000000 | 130122060341/1000000000000 | 0 |
| `w * j` | -774937064706478458606941/4424635000000000000000 | 28398888791/500000000000 | 0 |
| `w` | 160068119745412705299596359880767/4557595281750000000000000000000 | 322777/1000000 | 7380901069580725254069687750462047137/651085040250000000000000000000000000 |
| `a * c * r * k` | 300 | 63127044489486819303/7812500000000000000000 | 189381133468460457909/78125000000000000000 |
| `a * c * r` | 1072947/10000 | 2548219613671611/125000000000000000 | 2734104589830114007617/1250000000000000000000 |
| `c * r * k` | 1507/250 | 312421962562479/7812500000000000 | 470819897581655853/1953125000000000000 |
| `c * r` | 1191878769879259/10000000000000 | 12611389923/125000000000 | 15031247907892922879307057/1250000000000000000000000 |
| `a * c * w * j` | -300 | 641019420368889691857/125000000000000000000000 | 0 |
| `a * c * w` | -2061199/10000 | 7285719063556479/250000000000000000 | 0 |
| `c * w * j` | 820883/10000 | 3172468265731401/125000000000000000 | 2604225267378389647083/1250000000000000000000 |
| `c * w` | -1147970399725324093/8849270000000000 | 36057741447/250000000000 | 0 |
| `a * b * c * w` | -300 | 2937113783248714048707/250000000000000000000000 | 0 |
| `b * c * w` | -278829/5000 | 14536065482753451/250000000000000000 | 0 |
| `a * b * e * p` | -600 | 3680770943757629164383/500000000000000000000000 | 0 |
| `a * e * p` | -586261/2500 | 9130413396466251/500000000000000000 | 0 |
| `b * e * p` | -57421/1250 | 18216498036482919/500000000000000000 | 0 |
| `e * p` | -7414537483005081/62500000000000 | 45187315443/500000000000 | 0 |
| `a * c * c * q` | -200 | 138979693836868266549/15625000000000000000000 | 0 |
| `c * c * q` | 394907/5000 | 687824197314957/15625000000000000 | 271626590289057723999/78125000000000000000 |
| `a * c * e * p` | -10000 | 1019967610932641365461/125000000000000000000000 | 0 |
| `c * e * p` | -62169/1000 | 5047920195452973/125000000000000000 | 0 |
| `a * c * c * e` | 400 | 720925800130948627179/62500000000000000000000 | 720925800130948627179/156250000000000000000 |
| `c * c * e` | 252849/2500 | 3567932811686547/62500000000000000 | 902148243502131722403/156250000000000000000 |
| `a * b * f * w` | -704200 | 113345127333791714907/20000000000000000000000 | 0 |
| `a * f * w` | -77994089/2000000 | 281160627717879/20000000000000000 | 0 |
| `b * f * w` | -312373967/2000 | 560956202130051/20000000000000000 | 0 |
| `f * w` | 90087297513613078624119/1106158750000000000000 | 1391491647/20000000000 | 125355721990996467695415841233993/22123175000000000000000000000000 |
| `a * c * f * w` | -69400 | 31408734882991980969/5000000000000000000000 | 0 |
| `c * f * w` | -877701/10000 | 155444923378017/5000000000000000 | 0 |
| `a * c * c * w` | 300 | 813894962308957825569/62500000000000000000000 | 2441684886926873476707/625000000000000000000 |
| `c * c * w` | 315279/10000 | 4028046354785817/62500000000000000 | 1269958426690517597943/625000000000000000000 |
| `a * b * u * w` | 500 | 5667282658762732066787/1000000000000000000000000 | 5667282658762732066787/2000000000000000000000 |
| `a * u * w` | -117811/2500 | 14058096605246239/1000000000000000000 | 0 |
| `b * u * w` | -2420297/10000 | 28047940228562891/1000000000000000000 | 0 |
| `u * w` | 1660562323291843914731/4424635000000000000 | 69574905127/1000000000000 | 115533466100500742700301602725837/4424635000000000000000000000000 |
| `a * b * v * r` | -500 | 1937894179745497377921/500000000000000000000000 | 0 |
| `a * v * r` | 1800681/10000 | 4807083964214037/500000000000000000 | 8656024759764896359197/5000000000000000000000 |
| `b * v * r` | 278099/2500 | 9590829220197753/500000000000000000 | 2667200015307774911547/1250000000000000000000 |
| `v * r` | -2157595591664676146231/4424635000000000000 | 23790732141/500000000000 | 0 |
| `a * b * e * r` | 300 | 2629142064509297934531/500000000000000000000000 | 7887426193527893803593/5000000000000000000000 |
| `a * e * r` | -619473/5000 | 6521773371342207/500000000000000000 | 0 |
| `b * e * r` | -941209/5000 | 13011883104813483/500000000000000000 | 0 |
| `e * r` | -7926789414061768468014423872123/5696994102187500000000000 | 32276898951/500000000000 | 0 |
| `a * c * v * r` | -200 | 537004156726314287307/125000000000000000000000 | 0 |
| `c * v * r` | -39311/2500 | 2657686478203251/125000000000000000 | 0 |
| `a * b * u * k` | -1200 | 434961578134529912263/62500000000000000000000 | 0 |
| `a * u * k` | 33749/1250 | 1078953045606611/62500000000000000 | 36413586336177514639/78125000000000000000 |
| `b * u * k` | -1907723/5000 | 2152667703343759/62500000000000000 | 0 |
| `u * k` | -4381214585759/5000000000 | 5339844923/62500000000 | 0 |
| `a * b * v * j` | 1200 | 1510295090187594410651/500000000000000000000000 | 4530885270562783231953/1250000000000000000000 |
| `a * v * j` | 1700394641/5000 | 3746394093729847/500000000000000000 | 6370348440052283540549927/2500000000000000000000 |
| `b * v * j` | 31443/80 | 7474599198184643/500000000000000000 | 235023822588519729849/40000000000000000000 |
| `v * j` | 4860949857776837/5000000000000 | 18541273471/500000000000 | 90128200641858890906391227/2500000000000000000000000 |
| `a * c * u * k` | 1600 | 120530923677760121421/15625000000000000000000 | 120530923677760121421/9765625000000000000 |
| `c * u * k` | -243923/10000 | 596519416193253/15625000000000000 | 0 |
| `a * c * v * j` | 838300 | 418513430604654938217/125000000000000000000000 | 3508398088758822347073111/1250000000000000000000 |
| `c * v * j` | -889631/5000 | 2071264200718881/125000000000000000 | 0 |
| `a * b * h * j` | -200 | 1448087877487269743011/500000000000000000000000 | 0 |
| `a * h * j` | 290894/625 | 3592084690380767/500000000000000000 | 522457941961811417849/156250000000000000000 |
| `b * h * j` | -938091/5000 | 7166729573770123/500000000000000000 | 0 |
| `h * j` | 24134887285045983/100000000000000 | 17777581031/500000000000 | 429059914383956557343548473/50000000000000000000000000 |
| `a * b * f * h` | 768100 | 70953557390036937387/20000000000000000000000 | 544994274312873716069547/200000000000000000000 |
| `a * f * h` | -446572111/2000000 | 176005331714439/20000000000000000 | 0 |
| `b * f * h` | 496547/2500 | 351156145988691/20000000000000000 | 174365530822246549977/50000000000000000000 |
| `f * h` | -3402027911389199/100000000000000 | 871067727/20000000000 | 0 |
| `a * c * h * j` | 700 | 401275372847125862337/125000000000000000000000 | 2808927609929881036359/1250000000000000000000 |
| `c * h * j` | -189913/2500 | 1985951354554041/125000000000000000 | 0 |
| `a * c * f * h` | 506500 | 19661731611151695129/5000000000000000000000 | 19917334122096667165677/10000000000000000000 |
| `c * f * h` | -514727/2000 | 97307846850897/5000000000000000 | 0 |
| `a * b * q * r` | -200 | 506844614401042906461/125000000000000000000000 | 0 |
| `a * q * r` | -9853/1000 | 1257264015600417/125000000000000000 | 0 |
| `b * q * r` | -372652191341841/1000000000 | 2508423931865973/125000000000000000 | 0 |
| `q * r` | -61235672808783/1000000000000 | 6222323481/125000000000 | 0 |
| `a * c * q * r` | 300 | 140450220446738183487/31250000000000000000000 | 421350661340214550461/312500000000000000000 |
| `c * q * r` | -397849289/10000000 | 695101978385991/31250000000000000 | 0 |
| `p * w` | -6204368549689023/100000000000000 | 51014582073/500000000000 | 0 |
| `a * b * f * v` | -1100 | 74001592737218775267/20000000000000000000000 | 0 |
| `a * f * v` | 661539/10000 | 183566199584799/20000000000000000 | 121436200107128345661/200000000000000000000 |
| `b * f * v` | -4696064959/5000 | 366241173219531/20000000000000000 | 0 |
| `f * v` | -1419841591017/10000000000 | 908487207/20000000000 | 0 |
| `a * c * f * v` | 1700 | 20506363721817481089/5000000000000000000000 | 348608183270897178513/50000000000000000000 |
| `c * f * v` | 2034781/5000 | 101488014381177/5000000000000000 | 206505883390545717237/25000000000000000000 |
| `a * b * h * r` | -815100 | 1858074682076882387481/500000000000000000000000 | 0 |
| `a * h * r` | -2638085531489/2000000 | 4609086038793357/500000000000000000 | 0 |
| `b * h * r` | 1579281/10000 | 9195794662282833/500000000000000000 | 14522743790044694783073/5000000000000000000000 |
| `h * r` | 1073436307319271696810543/4424635000000000000000 | 22810820901/500000000000 | 24485963354890702101703669301559243/2212317500000000000000000000000000 |
| `a * c * h * r` | -300 | 514885610479644703827/125000000000000000000000 | 0 |
| `c * h * r` | 59163/500 | 2548219613671611/125000000000000000 | 150760317003653521593/62500000000000000000 |
| `b * c * e * e` | -100 | 3681237750553202631387/250000000000000000000000 | 0 |
| `b * e * e` | 246942031/10000000 | 32953225291629317/1000000000000000000 | 8137536381515510839122827/10000000000000000000000000 |
| `c * e * e` | -103921/10000 | 9131571343832439/250000000000000000 | 0 |
| `e * e` | -206547069289083/10000000000000 | 81742812649/1000000000000 | 0 |
| `b * e * f * q` | 400 | 27386512611502825197/5000000000000000000000 | 27386512611502825197/12500000000000000000 |
| `b * e * f` | 57801/2000 | 496879594526241/20000000000000000 | 28720137443211256041/40000000000000000000 |
| `b * e * q` | -171091/500 | 6352705314660827/250000000000000000 | 0 |
| `e * f * q` | 1078231/2500 | 67934187009009/5000000000000000 | 73248746392910783079/12500000000000000000 |
| `e * f` | -6145527284650853/250000000000000 | 1232545077/20000000000 | 0 |
| `e * q` | 204164428539/1250000000 | 15758336119/250000000000 | 3217291688461118100141/312500000000000000000 |
| `b * e * f * h` | 387000 | 100398000231188677737/20000000000000000000000 | 38854026089470018284219/20000000000000000000 |
| `b * e * h` | -80451/1000 | 23288796156619967/1000000000000000000 | 0 |
| `e * f * h` | 86346094247/250000000 | 249044360623389/20000000000000000 | 21504007834071002266543083/5000000000000000000000000 |
| `e * h` | -7005921085876903/250000000000000 | 57769510699/1000000000000 | 0 |
| `a * b * e * f` | -300 | 100398000231188677737/20000000000000000000000 | 0 |
| `a * e * f` | -37891/2000 | 249044360623389/20000000000000000 | 0 |
| `a * a * f * f` | -2213400 | 758758985020946529/400000000000000000000 | 0 |
| `a * f * f` | -229057/2000 | 3755172971097/400000000000000 | 0 |
| `f * f` | -15729978499/10000000000 | 18584721/400000000 | 0 |
| `a * e * f * r` | -100 | 28115365003856254377/10000000000000000000000 | 0 |
| `a * f * r` | 717129/10000 | 98337448904211/10000000000000000 | 70520636395227930219/100000000000000000000 |
| `e * f * r` | -132819/10000 | 139145711377761/10000000000000000 | 0 |
| `f * r` | -4114070882085027/200000000000000 | 486681723/10000000000 | 0 |
| `a * f * p` | -1576529/5000 | 137671383184623/10000000000000000 | 0 |
| `f * p` | 327597660109/2500000000 | 681349239/10000000000 | 223208416413447807051/25000000000000000000 |
| `b * p * w` | 137590041841/1000000000 | 20565661514834709/500000000000000000 | 2829630228313951053509059269/500000000000000000000000000 |
| `a * f * p * w` | 500 | 44437156050183058071/10000000000000000000000 | 44437156050183058071/20000000000000000000 |
| `a * p * w` | 8634693/10000 | 10307853409924161/500000000000000000 | 89005149683698283517573/5000000000000000000000 |
| `f * p * w` | 635233/5000 | 219923863316703/10000000000000000 | 139702895466259196799/50000000000000000000 |
| `a * a * f * p` | 471200 | 27817466672135369511/10000000000000000000000 | 16384487869887732641979/12500000000000000000 |
| `a * f * q * r` | 22000 | 5420065171253397687/2500000000000000000000 | 59620716883787374557/1250000000000000000 |
| `f * q * r` | 15231/1000 | 26824436526591/2500000000000000 | 408562992736507521/2500000000000000000 |
| `a * a * f * r` | 1612700 | 19869769913238162027/10000000000000000000000 | 320439779390791839009429/100000000000000000000 |
| `a * a * r` | -50927073/2000 | 4609086038793357/500000000000000000 | 0 |
| `b * c * h * k` | -100 | 225422256704846978343/15625000000000000000000 | 0 |
| `b * c * k` | -103877/1000 | 1115636957417199/15625000000000000 | 0 |
| `b * h * k` | 22787/625 | 2017905637805113/62500000000000000 | 45982015768665109931/39062500000000000000 |
| `c * h * k` | 638657/10000 | 559175896552371/15625000000000000 | 357121600564447605747/156250000000000000000 |
| `h * k` | -291747287963/2000000000 | 5005558061/62500000000 | 0 |
| `b * h * q` | -596103/1000 | 4489601785770977/250000000000000000 | 0 |
| `h * q` | -98761115871/1250000000 | 11136775669/250000000000 | 0 |
| `b * e * h * j` | -100 | 2049018152247894556561/500000000000000000000000 | 0 |
| `e * h * j` | 17321/400 | 5082734859830117/500000000000000000 | 88038050507117456557/200000000000000000000 |
| `b * b * h * h` | 15400 | 6635054616404027065561/1000000000000000000000000 | 510899205463110084048197/5000000000000000000000 |
| `b * h * h` | 476337/5000 | 16458723588503117/1000000000000000000 | 7839899017976809242429/5000000000000000000000 |
| `h * h` | -1808673637119721/2500000000 | 40827031249/1000000000000 | 0 |
| `b * b * h * q` | 100 | 1809906636703211270941/250000000000000000000000 | 1809906636703211270941/2500000000000000000000 |
| `b * b * h * k` | 100 | 813484353485288619029/62500000000000000000000 | 813484353485288619029/625000000000000000000 |
| `b * f * h * k` | 400 | 8699191204577842143/1250000000000000000000 | 8699191204577842143/3125000000000000000 |
| `f * h * k` | -1500519/2500 | 21578960800971/1250000000000000 | 0 |
| `b * h * h * r` | -826700 | 1858074682076882387481/500000000000000000000000 | 0 |
| `h * h * r` | 1823492841/1250 | 4609086038793357/500000000000000000 | 8404635395292734767857237/625000000000000000000 |
| `b * h * h * p` | 100 | 2601284804439329138733/500000000000000000000000 | 2601284804439329138733/5000000000000000000000 |
| `h * h * p` | -427829/2000 | 6452671461873201/500000000000000000 | 0 |
| `b * h * p * k` | 100 | 318927968149460304537/31250000000000000000000 | 318927968149460304537/312500000000000000000 |
| `h * p * k` | -442427/10000 | 791123445982989/31250000000000000 | 0 |
| `b * h * q * j` | -300 | 395008633917487869391/125000000000000000000000 | 0 |
| `h * q * j` | -989919/10000 | 979846933685627/125000000000000000 | 0 |
| `b * f * h * q` | 1334000 | 19354673298458681847/5000000000000000000000 | 12909567090071940791949/2500000000000000000 |
| `f * h * q` | -53337/1250 | 48010639909059/5000000000000000 | 0 |
| `b * c * q` | -26471/250 | 2482160504660871/62500000000000000 | 0 |
| `b * q * k` | 3048253/10000 | 550443216710653/15625000000000000 | 1677890186667898139209/156250000000000000000 |
| `q * k` | -285501456047/5000000000 | 1365413441/15625000000 | 0 |
| `b * e * q * j` | -500 | 558930071699803541941/125000000000000000000000 | 0 |
| `e * q * j` | -1418057/10000 | 1386465686757977/125000000000000000 | 0 |
| `a * e * p * j` | -600 | 803321161861290161733/250000000000000000000000 | 0 |
| `a * p * j` | -3824349/5000 | 2809728904368519/250000000000000000 | 0 |
| `e * p * j` | -491697/10000 | 3975715574621469/250000000000000000 | 0 |
| `p * j` | -12641822561/312500000 | 13905625167/250000000000 | 0 |
| `b * f * q * w` | 400 | 30918222992802020967/5000000000000000000000 | 30918222992802020967/12500000000000000000 |
| `b * q * w` | 3949393/5000 | 7171937599814897/250000000000000000 | 28324800153145755507521/1250000000000000000000 |
| `f * q * w` | 20293528439/100000000 | 76694845107699/5000000000000000 | 1556409020317789674351861/500000000000000000000000 |
| `q * w` | 1643599596391567/20000000000000 | 17790499909/250000000000 | 29240458470036609441867403/5000000000000000000000000 |
| `a * p * r` | -361009/5000 | 3605227432582149/250000000000000000 | 0 |
| `p * r` | 4188783545747287/125000000000000 | 17842625757/250000000000 | 74738897183848330839071259/31250000000000000000000000 |
| `a * a * p * r` | -258000 | 728461439345251280493/250000000000000000000000 | 0 |
| `b * f * q * k` | 900 | 2372960707239625083/312500000000000000000 | 21356646365156625747/3125000000000000000 |
| `f * q * k` | -457161/2000 | 5886297344151/312500000000000 | 0 |
| `a * f * p * k` | 600 | 3410533175632665579/625000000000000000000 | 10231599526897996737/3125000000000000000 |
| `f * p * k` | 445831/5000 | 16879064697747/625000000000000 | 7525210293261242757/3125000000000000000 |
| `b * q * u * w` | -700 | 1545918321577700863247/250000000000000000000000 | 0 |
| `b * q * u` | 9441741/10000 | 4789431469955111/250000000000000000 | 45220571476565439688251/2500000000000000000000 |
| `q * u * w` | -1727447/10000 | 3834760045884859/250000000000000000 | 0 |
| `q * u` | 51772158259/400000000 | 11880524467/250000000000 | 615080392905445622953/100000000000000000000 |
| `a * b * q * u` | 400 | 967738154524719863327/250000000000000000000000 | 967738154524719863327/625000000000000000000 |
| `a * q * u` | -1353927/10000 | 2400543132228619/250000000000000000 | 0 |
| `b * q * v * r` | 600 | 528617734129639552101/125000000000000000000000 | 1585853202388918656303/625000000000000000000 |
| `b * q * v` | -744215429/5000 | 4682466885720457/250000000000000000 | 0 |
| `q * v * r` | -6161/2500 | 1311273783415497/125000000000000000 | 0 |
| `q * v` | 529140928943/5000000000 | 11615191229/250000000000 | 6146073076763645840947/1250000000000000000000 |
| `a * p * u * w` | -600 | 2221868110362562827711/500000000000000000000000 | 0 |
| `a * p * u` | 9163323/10000 | 6883601094137943/500000000000000000 | 63076660228739378264589/5000000000000000000000 |
| `p * u * w` | -418911/5000 | 10996244180417223/500000000000000000 | 0 |
| `p * u` | 2462038224351/10000000000 | 34067619999/500000000000 | 83875782650202576395649/5000000000000000000000 |
| `a * a * p * u` | 351500 | 1390879786278230348751/500000000000000000000000 | 977788489753595935171953/1000000000000000000000 |
| `a * p * v * r` | 600 | 759754813460064333813/250000000000000000000000 | 2279264440380193001439/1250000000000000000000 |
| `a * p * v` | 11279641/10000 | 6729866452836441/500000000000000000 | 75910477565938486197681/5000000000000000000000 |
| `p * v * r` | 2121351/10000 | 3760101424152909/250000000000000000 | 7976494916228197660059/2500000000000000000000 |
| `p * v` | 424740160869/10000000000 | 33306772113/500000000000 | 14146723745302743046197/5000000000000000000000 |
| `b * c * q * k` | -200 | 61490562181963757283/3906250000000000000000 | 0 |
| `c * q * k` | 157809/2500 | 152531700907551/3906250000000000 | 24070875188519715759/9765625000000000000 |
| `b * b * q * k` | -200 | 221901825282215675849/15625000000000000000000 | 0 |
| `b * b * e * q` | -24600 | 2560985151615163170991/250000000000000000000000 | 0 |
| `a * e * f * p` | 400 | 39361212152166008061/10000000000000000000000 | 39361212152166008061/25000000000000000000 |
| `e * f * p` | -170307/10000 | 194802516874773/10000000000000000 | 0 |
| `b * b * q * v` | 100 | 1887656923041144991781/250000000000000000000000 | 1887656923041144991781/2500000000000000000000 |
| `b * b * v` | 152681/5000 | 34248179745652793/1000000000000000000 | 5229046331746014088033/5000000000000000000000 |
| `b * e * q * u` | 100 | 1369331983280455920677/250000000000000000000000 | 1369331983280455920677/2500000000000000000000 |
| `e * q * u` | -156272711/10000 | 3396725108786569/250000000000000000 | 0 |
| `a * b * p * v` | 100 | 2713031252731312969653/500000000000000000000000 | 2713031252731312969653/5000000000000000000000 |
| `b * p * v` | -25201/1250 | 13427058962230029/500000000000000000 | 0 |
| `a * e * p * u` | 100 | 1968069738021696869301/500000000000000000000000 | 1968069738021696869301/5000000000000000000000 |
| `e * p * u` | -229935333/1250 | 9740171031054093/500000000000000000 | 0 |
| `b * b * q * w` | -290900 | 2891244720426178872301/250000000000000000000000 | 0 |
| `b * b * w` | -113603641841/1000000000 | 52456496551448353/1000000000000000000 | 0 |
| `b * h * q * r` | 500 | 506844614401042906461/125000000000000000000000 | 506844614401042906461/250000000000000000000 |
| `h * q * r` | 1197761/10000 | 1257264015600417/125000000000000000 | 1505901804589571066337/1250000000000000000000 |
| `a * h * p * r` | 400 | 728461439345251280493/250000000000000000000000 | 728461439345251280493/625000000000000000000 |
| `h * p * r` | -43983/1000 | 3605227432582149/250000000000000000 | 0 |
| `b * q * u * k` | -900 | 118648585805197964803/15625000000000000000000 | 0 |
| `q * u * k` | 673029/5000 | 294316232620991/15625000000000000 | 198083359724672951739/78125000000000000000 |
| `b * q * v * j` | 900 | 411977484006342968231/125000000000000000000000 | 3707797356057086714079/1250000000000000000000 |
| `q * v * j` | -47609/625 | 1021939369901107/125000000000000000 | 0 |
| `a * p * u * k` | -600 | 170527449905079261939/31250000000000000000000 | 0 |
| `p * u * k` | -615061/2000 | 843957150235227/31250000000000000 | 0 |
| `a * p * v * j` | 700 | 592113840119908588503/250000000000000000000000 | 4144796880839360119521/2500000000000000000000 |
| `p * v * j` | 949811/10000 | 2930429730818079/250000000000000000 | 2783354393058050433069/2500000000000000000000 |
| `b * c * e * q` | 200 | 709667063406075644997/62500000000000000000000 | 709667063406075644997/312500000000000000000 |
| `c * e * q` | 92191/2500 | 1760379486189609/62500000000000000 | 162291145211306243319/156250000000000000000 |
| `b * c * q * w` | 200 | 801184321212921958767/62500000000000000000000 | 801184321212921958767/312500000000000000000 |
| `c * q * w` | -423393/10000 | 1987394535334299/62500000000000000 | 0 |
| `b * c * q * v` | 400 | 523083058270717971927/62500000000000000000000 | 523083058270717971927/156250000000000000000 |
| `c * q * v` | 54267/5000 | 1297544627382819/62500000000000000 | 70413854294183438673/312500000000000000000 |
| `b * h * q * u` | 600 | 967738154524719863327/250000000000000000000000 | 2903214463574159589981/1250000000000000000000 |
| `h * q * u` | -1342350279/10000 | 2400543132228619/250000000000000000 | 0 |
| `b * c * h * q` | -600 | 501537905090261611647/62500000000000000000000 | 0 |
| `c * h * q` | -494333/10000 | 1244100346759659/62500000000000000 | 0 |
| `a * c * p * v` | 400 | 751800111312811660551/125000000000000000000000 | 751800111312811660551/312500000000000000000 |
| `c * p * v` | 105093/2500 | 3720732819515343/125000000000000000 | 391022974201325941899/312500000000000000000 |
| `a * h * p * u` | -701200 | 1390879786278230348751/500000000000000000000000 | 0 |
| `h * p * u` | -206723339/10000 | 6883601094137943/500000000000000000 | 0 |
| `b * e * q * r` | -200 | 717175961088004742511/125000000000000000000000 | 0 |
| `e * q * r` | 41239/500 | 1779005839482267/125000000000000000 | 73364421814409208813/62500000000000000000 |
| `b * f * q * v` | -1000 | 20186114744340890127/5000000000000000000000 | 0 |
| `f * q * v` | 319089/5000 | 50073089388219/5000000000000000 | 15977772019797412491/25000000000000000000 |
| `a * f * p * v` | -200 | 29012454278177897151/10000000000000000000000 | 0 |
| `f * p * v` | -7618321/10000 | 143585494579143/10000000000000000 | 0 |
| `a * f * h * p` | -600 | 27817466672135369511/10000000000000000000000 | 0 |
| `f * h * p` | 1501067/2500 | 137671383184623/10000000000000000 | 206653970142792492741/25000000000000000000 |
| `a * h * p * j` | -300 | 567725393229989843583/250000000000000000000000 | 0 |
| `h * p * j` | 1142827/5000 | 2809728904368519/250000000000000000 | 3211034054592761463213/1250000000000000000000 |
| `b * q * r * k` | -300 | 62141186064115749129/7812500000000000000000 | 0 |
| `q * r * k` | -1048107/5000 | 154145619594813/7812500000000000 | 0 |
| `b * q * w * j` | 300 | 631008585844514082751/125000000000000000000000 | 1893025757533542248253/1250000000000000000000 |
| `q * w * j` | 105033/625 | 1565261553493547/125000000000000000 | 164404116748087722051/78125000000000000000 |
| `a * p * r * k` | -400 | 89312299187357577177/15625000000000000000000 | 0 |
| `p * r * k` | 20471802641/250000000 | 442015367878161/15625000000000000 | 9048851375490722926023201/3906250000000000000000000 |
| `a * p * w * j` | 400 | 906915866565357457263/250000000000000000000000 | 906915866565357457263/625000000000000000000 |
| `p * w * j` | -156643/2500 | 4488415974528759/250000000000000000 | 0 |
| `b * c * v * k` | -100 | 235105985495228265663/15625000000000000000000 | 0 |
| `b * v * k` | -174817/2000 | 2104591181667233/62500000000000000 | 0 |
| `c * v * k` | -1723911/10000 | 583197072666411/15625000000000000 | 0 |
| `v * k` | -688775265317/2500000000 | 5220587701/62500000000 | 0 |
| `a * a * u * j` | 529100 | 774277447096264707617/500000000000000000000000 | 4096701972586336568001547/5000000000000000000000 |
| `a * u * j` | 1805793/10000 | 3831975368813081/500000000000000000 | 6919754297175079978233/5000000000000000000000 |
| `u * j` | 3615278685965091/10000000000000 | 18964823633/500000000000 | 68563122663471943209795603/5000000000000000000000000 |
| `b * c * v * w` | -100 | 3063286831639014003387/250000000000000000000000 | 0 |
| `b * v * w` | 259/5 | 27421532630081317/1000000000000000000 | 7102176951191061103/5000000000000000000 |
| `c * v * w` | 96641/5000 | 7598700259316439/250000000000000000 | 734345991760599981399/1250000000000000000000 |
| `v * w` | -2119513273783/10000000000 | 68021056649/1000000000000 | 0 |
| `b * c * e * v` | 100 | 2713375327775571297417/250000000000000000000000 | 2713375327775571297417/2500000000000000000000 |
| `b * e * v` | 595087/5000 | 24289240341377047/1000000000000000000 | 14454211167029042768089/5000000000000000000000 |
| `c * e * v` | -3315649/10000 | 6730719955388349/250000000000000000 | 0 |
| `e * v` | -4318243497077/10000000000 | 60251183459/1000000000000 | 0 |
| `a * e * u * r` | -200 | 1405774771966184061057/500000000000000000000000 | 0 |
| `a * u * r` | -252667/2500 | 4916895256031451/500000000000000000 | 0 |
| `e * u * r` | -1453617/5000 | 6957317845787001/500000000000000000 | 0 |
| `u * r` | -95259618961/625000000 | 24334199043/500000000000 | 0 |
| `b * h * v * j` | -100 | 1510295090187594410651/500000000000000000000000 | 0 |
| `b * h * v` | -1753009/10000 | 17165760319466197/1000000000000000000 | 0 |
| `h * v * j` | -1707622877/5000 | 3746394093729847/500000000000000000 | 0 |
| `h * v` | -897333280603/2000000000 | 42580886009/1000000000000 | 0 |
| `b * c * h * v` | 100 | 1917604251047888333067/250000000000000000000000 | 1917604251047888333067/2500000000000000000000 |
| `c * h * v` | -11517/200 | 4756753356951399/250000000000000000 | 0 |
| `a * h * u * j` | -530300 | 774277447096264707617/500000000000000000000000 | 0 |
| `h * u * j` | -1296662609/10000000 | 3831975368813081/500000000000000000 | 0 |
| `b * v * r * k` | 100 | 237593612271958935069/31250000000000000000000 | 237593612271958935069/312500000000000000000 |
| `v * r * k` | 1230779/2000 | 589367807328993/31250000000000000 | 725381520536570675547/62500000000000000000 |
| `b * f * v * k` | -300 | 9072892584167441463/1250000000000000000000 | 0 |
| `f * v * k` | -5708283/10000 | 22505953579011/1250000000000000 | 0 |
| `b * v * w * j` | -100 | 2412628705392444513611/500000000000000000000000 | 0 |
| `v * w * j` | -703371/2500 | 5984696627148967/500000000000000000 | 0 |
| `b * f * v * w` | 400 | 118214227168280557587/20000000000000000000000 | 118214227168280557587/50000000000000000000 |
| `f * v * w` | -689531/2500 | 293238775213839/20000000000000000 | 0 |
| `a * u * r * k` | 100 | 121806246177667135623/31250000000000000000000 | 121806246177667135623/312500000000000000000 |
| `u * r * k` | 2749129/5000 | 602831112892239/31250000000000000 | 1657260494554328109831/156250000000000000000 |
| `a * f * u * k` | 200 | 4651366579610100021/1250000000000000000000 | 4651366579610100021/6250000000000000000 |
| `a * f * u` | -174431/1000 | 187759519622577/20000000000000000 | 0 |
| `f * u * k` | -13294671/5000 | 23020071463053/1250000000000000 | 0 |
| `f * u` | 1280905122251/5000000000 | 929240361/20000000000 | 1190268738207268372611/100000000000000000000 |
| `a * u * w * j` | -100 | 1236873513619379845937/500000000000000000000000 | 0 |
| `u * w * j` | 1736295609/10000000 | 6121408877788841/500000000000000000 | 10628575355398382257499169/5000000000000000000000000 |
| `a * f * u * w` | 100 | 60604454465216536329/20000000000000000000000 | 60604454465216536329/200000000000000000000 |
| `f * u * w` | 89311/1250 | 299937416002497/20000000000000000 | 26787710560599009567/25000000000000000000 |
| `b * h * p * w` | -551200 | 4155435868702956796413/500000000000000000000000 | 0 |
| `b * h * w` | 205943/2000 | 26292073146321437/1000000000000000000 | 5414668419972875700091/2000000000000000000000 |
| `h * p * w` | -12541261561/100000000 | 10307853409924161/500000000000000000 | 0 |
| `h * w` | 14019279694635731/100000000000000 | 65219352289/1000000000000 | 914328341242472083616038259/100000000000000000000000000 |
| `b * p * v * w` | 100 | 4333945810651722070533/500000000000000000000000 | 4333945810651722070533/5000000000000000000000 |
| `p * v * w` | 1752091/10000 | 10750659982317801/500000000000000000 | 18836134599079178271891/5000000000000000000000 |
| `b * h * u * w` | 400 | 5667282658762732066787/1000000000000000000000000 | 5667282658762732066787/2500000000000000000000 |
| `h * u * w` | -7751839/10000 | 14058096605246239/1000000000000000000 | 0 |
| `a * h * u * r` | 200 | 993493104747946894707/500000000000000000000000 | 993493104747946894707/2500000000000000000000 |
| `h * u * r` | -122923/250 | 4916895256031451/500000000000000000 | 0 |
| `c * e * f * k` | -600 | 3410965710035713431/312500000000000000000 | 0 |
| `c * e * f` | 540697/10000 | 137688843096747/5000000000000000 | 74447944395881812659/50000000000000000000 |
| `c * e * k` | -685099/2500 | 791223778713921/15625000000000000 | 0 |
| `e * f * k` | -988625859/10000 | 30533839192521/1250000000000000 | 0 |
| `e * k` | -222876446687/1000000000 | 7082774111/62500000000 | 0 |
| `c * c * e * k` | -44300 | 88388399543910828831/3906250000000000000000 | 0 |
| `c * c * k` | -556199/10000 | 309150876137733/3906250000000000 | 0 |
| `c * e * f * h` | 238100 | 27820994569599408579/5000000000000000000000 | 66241788070216191826599/50000000000000000000 |
| `c * e * h` | 178871/2500 | 6453489809695989/250000000000000000 | 1154342175750131248419/625000000000000000000 |
| `c * e * r` | -787814711/10000000 | 3605684658715161/125000000000000000 | 0 |
| `a * c * q * u` | 100 | 268167073844391257109/62500000000000000000000 | 268167073844391257109/625000000000000000000 |
| `c * q * u` | -1191389/10000 | 1327185268733037/62500000000000000 | 0 |
| `a * f * q * u` | -100 | 10348741443037576509/5000000000000000000000 | 0 |
| `f * q * u` | -203939741/1000 | 51216940977237/5000000000000000 | 0 |
| `a * f * h * u` | 913800 | 37938125256379040889/20000000000000000000000 | 173339294296395837821841/100000000000000000000 |
| `f * h * u` | 144904/625 | 187759519622577/20000000000000000 | 3400888178923737201/1562500000000000000 |
| `c * u * w` | -410873/5000 | 7772282226642297/250000000000000000 | 0 |
| `a * f * v * r` | 200 | 20723338969726713507/10000000000000000000000 | 20723338969726713507/50000000000000000000 |
| `f * v * r` | 759811/5000 | 102561846259851/10000000000000000 | 77927618968543648161/50000000000000000000 |
| `a * f * h * r` | -200 | 19869769913238162027/10000000000000000000000 | 0 |
| `f * h * r` | 40324183643/200000000 | 98337448904211/10000000000000000 | 3965377348597533480020673/2000000000000000000000000 |
| `a * e * f * j` | 2657600 | 21911669980727634387/10000000000000000000000 | 36395283837988600716807/6250000000000000000 |
| `a * f * j` | 144172/625 | 76639151824641/10000000000000000 | 2762304949215535563/1562500000000000000 |
| `e * f * j` | -20491/1000 | 108443013509691/10000000000000000 | 0 |
| `f * j` | -147858826809744923/500000000000000 | 379294713/10000000000 | 0 |
| `a * f * r * k` | -198000 | 2436113621704019103/625000000000000000000 | 0 |
| `f * r * k` | -119619783643/200000000 | 12056566323879/625000000000000 | 0 |
| `a * f * f * k` | -62800 | 93026900012985981/25000000000000000000 | 0 |
| `f * f * k` | -188435481/125 | 460399293333/25000000000000 | 0 |
| `a * f * f * w` | 6775200 | 1212083466091776369/400000000000000000000 | 10265134874331254069061/500000000000000000 |
| `f * f * w` | -648163/5000 | 5998720490217/400000000000000 | 0 |
| `c * f * h * v` | -100 | 20506363721817481089/5000000000000000000000 | 0 |
| `f * h * v` | 2622057/10000 | 183566199584799/20000000000000000 | 481321038584719311543/200000000000000000000 |
| `c * h * q * u` | -100 | 268167073844391257109/62500000000000000000000 | 0 |
| `c * f * h * q` | -940900 | 5363316594880889949/1250000000000000000000 | 0 |
| `c * h * r * k` | 100 | 63127044489486819303/7812500000000000000000 | 63127044489486819303/78125000000000000000 |
| `h * r * k` | -241599/2500 | 565092466180473/31250000000000000 | 0 |
| `c * f * h * k` | 353800 | 2410607290037271381/312500000000000000000 | 4264364296075933072989/1562500000000000000 |
| `c * f * h * w` | -400 | 31408734882991980969/5000000000000000000000 | 0 |
| `c * h * w` | -33761/1250 | 7285719063556479/250000000000000000 | 0 |
| `f * h * w` | 46384821561/100000000 | 281160627717879/20000000000000000 | 13041585546672568064389119/2000000000000000000000000 |
| `c * v * r * k` | -200 | 65838867124529137023/7812500000000000000000 | 0 |
| `c * v * w * j` | -200 | 668556444915438252537/125000000000000000000000 | 0 |
| `c * e * v * j` | -600 | 592188933834933110067/125000000000000000000000 | 0 |
| `e * v * j` | -1309567/1250 | 5301079874273197/500000000000000000 | 0 |
| `c * h * u * v` | 200 | 1025322942844231005849/250000000000000000000000 | 1025322942844231005849/1250000000000000000000 |
| `c * u * v` | 125253/2500 | 5074424260699857/250000000000000000 | 635586861925439188821/625000000000000000000 |
| `h * u * v` | 3322653/5000 | 9178352560125959/1000000000000000000 | 30496480668960198049227/5000000000000000000000 |
| `u * v` | -5250202310971/10000000000 | 45424571087/1000000000000 | 0 |
| `a * f * u * v` | 100 | 39567877886703009249/20000000000000000000000 | 39567877886703009249/200000000000000000000 |
| `a * u * v` | 73753/2000 | 9178352560125959/1000000000000000000 | 676931036366969854127/2000000000000000000000 |
| `f * u * v` | 17233831/10000 | 195825325956057/20000000000000000 | 3374820573046599764367/200000000000000000000 |
| `a * h * u * u` | 100 | 1896915063126364797649/1000000000000000000000000 | 1896915063126364797649/10000000000000000000000 |
| `a * u * u` | -202057/10000 | 9388019534717257/1000000000000000000 | 0 |
| `h * u * u` | 893853/5000 | 9388019534717257/1000000000000000000 | 8391509425165624321221/5000000000000000000000 |
| `u * u` | -1236342433261/5000000000 | 46462233601/1000000000000 | 0 |
| `c * f * v * k` | 400 | 2514162580264897821/312500000000000000000 | 2514162580264897821/781250000000000000 |
| `c * f * v * w` | 500 | 32757996817913168529/5000000000000000000000 | 32757996817913168529/10000000000000000000 |
| `a * e * r * j` | -158600 | 573805186530801398481/250000000000000000000000 | 0 |
| `a * r * j` | -3918737481/100000000 | 2006964455332683/250000000000000000 | 0 |
| `e * r * j` | 65724649009/312500000 | 2839818400405833/250000000000000000 | 186646067615973197081269497/78125000000000000000000000 |
| `r * j` | 901069016341248069/5000000000000000 | 9932664819/250000000000 | 8950016518103650793507984511/1250000000000000000000000000 |
| `c * e * p * w` | 100 | 1629352536927724266021/125000000000000000000000 | 1629352536927724266021/1250000000000000000000 |
| `c * e * w` | 138897/5000 | 10309160683887429/250000000000000000 | 1431911491509912225813/1250000000000000000000 |
| `c * p * w` | -13857/200 | 5698889977956903/125000000000000000 | 0 |
| `e * p * w` | 153249/10000 | 14585426116745211/500000000000000000 | 2235201966965086840539/5000000000000000000000 |
| `e * w` | -3014013826768373/25000000000000 | 92284203739/1000000000000 | 0 |
| `a * f * v * j` | -312400 | 16150704938069370417/10000000000000000000000 | 0 |
| `f * v * j` | -6152027/10000 | 79931429933481/10000000000000000 | 0 |
| `c * e * u * k` | 600 | 170549076725564385471/15625000000000000000000 | 511647230176693156413/78125000000000000000 |
| `e * u * k` | 9487113/10000 | 1526699042400161/62500000000000000 | 14483966332242118625193/625000000000000000000 |
| `c * r * k * k` | 100 | 7739629278560292267/488281250000000000000 | 7739629278560292267/4882812500000000000 |
| `c * k * k` | -10237/10000 | 68557211506119/976562500000000 | 0 |
| `r * k * k` | 262109/5000 | 69282606713397/1953125000000000 | 18159594763041774273/9765625000000000000 |
| `k * k` | -237042686493/2000000000 | 613701529/3906250000 | 0 |
| `c * w * j * k` | -100 | 78591556346963996973/7812500000000000000000 | 0 |
| `c * w * k` | -196673/2500 | 893258428866531/15625000000000000 | 0 |
| `c * j * k` | 156069/1250 | 243485614981749/7812500000000000 | 38000556444586584681/9765625000000000000 |
| `w * j * k` | -262109/5000 | 703525672019443/31250000000000000 | 0 |
| `w * k` | 206074345763/2500000000 | 7996154621/62500000000 | 1647802332142364220823/156250000000000000000 |
| `j * k` | 2240304934913291893/5000000000000000 | 2179602859/31250000000 | 4882975041168819927084322087/156250000000000000000000000 |
| `a * j * k` | -27560109/400 | 440404014880963/31250000000000000 | 0 |
| `a * e * j * j` | -277900 | 447194261172433184011/250000000000000000000000 | 0 |
| `a * j * j` | 156011/10000 | 1564124911850473/250000000000000000 | 244020691622704143203/2500000000000000000000 |
| `e * j * j` | 202266850373/2500000000 | 2213208456883123/250000000000000000 | 447658703792636861789954879/625000000000000000000000000 |
| `j * j` | -578975811104561147/2500000000000000 | 7741008289/250000000000 | 0 |
| `c * f * k * k` | -300 | 295550138802879009/19531250000000000000 | 0 |
| `f * k * k` | -6785621/5000 | 2645667291519/78125000000000 | 0 |
| `a * f * j * k` | -831800 | 1898581708151831493/625000000000000000000 | 0 |
| `f * j * k` | 11590426516243/5000000000 | 9396267925149/625000000000000 | 108906752913370565956695207/3125000000000000000000000 |
| `a * h * j * j` | -939400 | 316042387313771022961/250000000000000000000000 | 0 |
| `h * j * j` | 1366342899627/2500000000 | 1564124911850473/250000000000000000 | 2137130967436601053071473571/625000000000000000000000000 |
| `a * f * h * j` | -2601000 | 15485477100231486537/10000000000000000000000 | 0 |
| `f * h * j` | -7030261/10000 | 76639151824641/10000000000000000 | 0 |
| `c * h * p * k` | 100 | 88377191274205684179/7812500000000000000000 | 88377191274205684179/78125000000000000000 |
| `c * p * k` | -6143/200 | 437387426687547/7812500000000000 | 0 |
| `c * q * u * k` | -100 | 32878360662323525601/3906250000000000000000 | 0 |
| `a * q * u * j` | -100 | 211206986402870585477/125000000000000000000000 | 0 |
| `q * u * j` | 1062747/5000 | 1045284184180061/125000000000000000 | 1110872630884807287567/625000000000000000000 |
| `c * u * w * k` | 400 | 192542747600609623581/15625000000000000000000 | 192542747600609623581/39062500000000000000 |
| `u * w * k` | -3340411/10000 | 1723579124711171/62500000000000000 | 0 |
| `a * h * r * j` | -860600 | 405521216951155928931/250000000000000000000000 | 0 |
| `h * r * j` | -611603117899/5000000000 | 2006964455332683/250000000000000000 | 0 |
| `e * f * f * k` | 300 | 131631380758958031/25000000000000000000 | 394894142276874093/250000000000000000 |
| `e * f * f` | 147719/2500 | 5313501826947/400000000000000 | 784905176374783893/1000000000000000000 |
| `e * f * h * j` | -27800 | 21911669980727634387/10000000000000000000000 | 0 |
| `e * f * f * h` | 500 | 1073630238647429979/400000000000000000000 | 1073630238647429979/800000000000000000 |
| `f * f * h` | 687053/5000 | 3755172971097/400000000000000 | 2580002855311107141/2000000000000000000 |
| `a * f * f * h` | -1231100 | 758758985020946529/400000000000000000000 | 0 |
| `e * f * h * u` | 427200 | 53681760976732122339/20000000000000000000000 | 14333030180787476664513/12500000000000000000 |
| `e * f * u` | 2822249/10000 | 265676323892427/20000000000000000 | 749804739429078208323/200000000000000000000 |
| `e * h * u` | -262037/1250 | 12452275800680149/1000000000000000000 | 0 |
| `e * f * v * r` | 1400 | 29323149778615219857/10000000000000000000000 | 205262048450306538999/50000000000000000000 |
| `e * f * v` | 1389393/2500 | 259742851891749/20000000000000000 | 360884900218432818357/50000000000000000000 |
| `e * v * r` | 710333/5000 | 6801936854236887/500000000000000000 | 4831640211480650653371/2500000000000000000000 |
| `e * f * h * r` | -800 | 28115365003856254377/10000000000000000000000 | 0 |
| `e * h * r` | -26241048119247/250000000 | 6521773371342207/500000000000000000 | 0 |
| `e * e * f * j` | -100 | 31004616663515224737/10000000000000000000000 | 0 |
| `e * e * f` | -34103/1000 | 352393265329839/20000000000000000 | 0 |
| `e * e * j` | -35093/2000 | 7191977885296967/500000000000000000 | 0 |
| `e * e * f * f` | 89400 | 1519167366836935929/400000000000000000000 | 679067812976110360263/2000000000000000000 |
| `e * f * f * v` | -650300 | 1119751434505329939/400000000000000000000 | 0 |
| `f * f * v` | -7544829/10000 | 3916488349377/400000000000000 | 0 |
| `b * e * f * v` | -200 | 104710915111676449617/20000000000000000000000 | 0 |
| `a * f * f * v` | 800 | 791353886410068489/400000000000000000000 | 791353886410068489/500000000000000000 |
| `e * f * w` | -3151314294247/250000000 | 397837202318829/20000000000000000 | 0 |
| `e * f * p * k` | 200 | 4825842750538751529/625000000000000000000 | 4825842750538751529/3125000000000000000 |
| `e * p * k` | 48487/500 | 1119425365469439/31250000000000000 | 54277577695516688793/15625000000000000000 |
| `e * f * q * j` | -200 | 5977053575613638847/2500000000000000000000 | 0 |
| `f * q * j` | 378023/5000 | 20905586696421/2500000000000000 | 7902792599741155683/12500000000000000000 |
| `a * f * q * j` | 100 | 4224120131118737997/2500000000000000000000 | 4224120131118737997/25000000000000000000 |
| `e * f * f * q` | -16600 | 292864280195837799/100000000000000000000 | 0 |
| `f * f * q` | -313655259/1000 | 1024334067357/100000000000000 | 0 |
| `e * f * h * p` | -100 | 39361212152166008061/10000000000000000000000 | 0 |
| `e * h * p` | 1048969/2000 | 9130413396466251/500000000000000000 | 9577520610077806845219/1000000000000000000000 |
| `e * f * q * r` | -22000 | 7669294174008053037/2500000000000000000000 | 0 |
| `h * w * j` | 197559/2500 | 5738194272443087/500000000000000000 | 1133631922269583824633/1250000000000000000000 |
| `e * p * r * k` | 100 | 126375287783941377027/15625000000000000000000 | 126375287783941377027/156250000000000000000 |
| `e * p * r` | 11758607567/125000000 | 5101331602306599/250000000000000000 | 59984556380658609655434633/31250000000000000000000000 |
| `e * r * k` | -5439/625 | 799595617713123/31250000000000000 | 0 |
| `e * e * p * r` | -8200 | 1458506414420672800293/250000000000000000000000 | 0 |
| `e * e * p` | -162313/5000 | 12919369796361801/500000000000000000 | 0 |
| `e * e * r` | -44619031/10000000 | 9228191348383557/500000000000000000 | 0 |
| `e * p * w * j` | -100 | 1283269546029593899413/250000000000000000000000 | 0 |
| `e * w * j` | -1341317/10000 | 8119441097568437/500000000000000000 | 0 |
| `u * v * k` | 11094567/10000 | 1125302899538251/62500000000000000 | 12484748414221394782317/625000000000000000000 |
| `v * v * j` | -11094567/10000 | 3907332347458127/500000000000000000 | 0 |
| `v * v` | 33751550239/2500000000 | 44410083169/1000000000000 | 1498909153196671827391/2500000000000000000000 |
| `e * u * u * k` | -100 | 329081505288397103711/62500000000000000000000 | 0 |
| `e * u * u` | 194311/10000 | 13283877822161107/1000000000000000000 | 2581203583501946862277/10000000000000000000000 |
| `u * u * k` | 22931387/10000 | 1151008912997573/62500000000000000 | 26394230824396676523751/625000000000000000000 |
| `e * f * u * k` | -300 | 6581599571787094071/1250000000000000000000 | 0 |
| `e * u * v * j` | 100 | 1142653067979461886547/500000000000000000000000 | 1142653067979461886547/5000000000000000000000 |
| `e * u * v` | 13857/200 | 12987202845770909/1000000000000000000 | 179963669833847486013/200000000000000000000 |
| `e * u * j` | 58182/625 | 5422175830440131/500000000000000000 | 157736517083333850921/156250000000000000000 |
| `u * v * j` | -22931387/10000 | 3996590037947521/500000000000000000 | 0 |
| `e * h * u * j` | -300 | 1095588581771241549467/500000000000000000000000 | 0 |
| `b * w * k` | -19591/200 | 3223513800827593/62500000000000000 | 0 |
| `b * e * r * k` | -63800 | 322343380155544414359/31250000000000000000000 | 0 |
| `b * e * k` | -308511/10000 | 2855299975689763/62500000000000000 | 0 |
| `e * h * r * j` | -58700 | 573805186530801398481/250000000000000000000000 | 0 |
| `b * e * h * r` | -100 | 2629142064509297934531/500000000000000000000000 | 0 |
| `e * h * u * r` | 1000 | 1405774771966184061057/500000000000000000000000 | 1405774771966184061057/500000000000000000000 |
| `c * e * h * r` | -100 | 728553825086009286177/125000000000000000000000 | 0 |
| `e * p * v * r` | -100 | 1075039317875285753463/250000000000000000000000 | 0 |
| `e * p * v` | -270341/2500 | 9522639294511491/500000000000000000 | 0 |
| `e * h * p * r` | -36200 | 1030759759567264474143/250000000000000000000000 | 0 |
| `e * q * u * r` | 100 | 383466487706242134117/125000000000000000000000 | 383466487706242134117/1250000000000000000000 |
| `q * u * r` | -1283529/10000 | 1341228048653031/125000000000000000 | 0 |
| `f * w * k` | 1014183/2500 | 34471422571131/1250000000000000 | 34960330757457350973/3125000000000000000 |
| `e * r * j * k` | 100 | 70350821233253700909/15625000000000000000000 | 70350821233253700909/156250000000000000000 |
| `e * j * k` | -4008611/500 | 623163714608113/31250000000000000 | 0 |
| `r * j * k` | -816583016243/5000000000 | 246061905561087/15625000000000000 | 0 |
| `e * f * j * k` | -280800 | 2686458773675575143/625000000000000000000 | 0 |
| `e * w * j * j` | -100 | 714372786087363792571/250000000000000000000000 | 0 |
| `w * j * j` | 816583016243/5000000000 | 2498619432498553/250000000000000000 | 2040330192633041346472996379/1250000000000000000000000000 |
| `e * f * w * j` | 100 | 35002910571617531907/10000000000000000000000 | 35002910571617531907/100000000000000000000 |
| `f * w * j` | -1585508016243/5000000000 | 122427609578001/10000000000000000 | 0 |
| `h * u * k` | 5790253/5000 | 1078953045606611/62500000000000000 | 6247411109182816162583/312500000000000000000 |
| `p * v * k` | -292157/5000 | 825108665555349/31250000000000000 | 0 |
| `e * p * v * j` | 100 | 837830373049004512653/250000000000000000000000 | 837830373049004512653/2500000000000000000000 |
| `e * q * u * j` | -100 | 298854065246368700327/125000000000000000000000 | 0 |
| `f * h * p * w` | 100 | 44437156050183058071/10000000000000000000000 | 44437156050183058071/100000000000000000000 |
| `f * h * u * w` | 1100 | 60604454465216536329/20000000000000000000000 | 666648999117381899619/200000000000000000000 |
| `f * h * v * r` | 200 | 20723338969726713507/10000000000000000000000 | 20723338969726713507/50000000000000000000 |
| `h * v * r` | -1196503/10000 | 4807083964214037/500000000000000000 | 0 |
| `a * e * f * u` | -2090700 | 53681760976732122339/20000000000000000000000 | 0 |
| `f * h * p * v` | 1500 | 29012454278177897151/10000000000000000000000 | 87037362834533691453/20000000000000000000 |
| `h * p * v` | 451257/1250 | 6729866452836441/500000000000000000 | 3036899345907613856337/625000000000000000000 |
| `f * h * q * u` | -500 | 10348741443037576509/5000000000000000000000 | 0 |
| `f * q * v * r` | 200 | 5652901280304207567/2500000000000000000000 | 5652901280304207567/12500000000000000000 |
| `f * f * v * k` | 5900 | 97023165879116421/25000000000000000000 | 5724366786867868839/250000000000000000 |
| `a * a * f * u` | 381000 | 37938125256379040889/20000000000000000000000 | 14454425722680414578709/20000000000000000000 |
| `f * f * v * w` | 300 | 1264152359946859929/400000000000000000000 | 3792457079840579787/4000000000000000000 |
| `b * f * h * v` | 207300 | 74001592737218775267/20000000000000000000000 | 153405301744254521128491/200000000000000000000 |
| `f * h * v * j` | 310900 | 16150704938069370417/10000000000000000000000 | 50212541652457672626453/100000000000000000000 |
| `f * p * v * w` | -200 | 46346095183772040111/10000000000000000000000 | 0 |
| `f * f * q * v` | 300 | 215865088352612109/100000000000000000000 | 647595265057836327/1000000000000000000 |
| `f * u * v * k` | -7100 | 4851180799909400061/1250000000000000000000 | 0 |
| `f * v * v * j` | 7100 | 16844509749891985497/10000000000000000000000 | 1195960192242330970287/100000000000000000000 |
| `f * v * v` | 1654637/1000 | 191451868541559/20000000000000000 | 316783345407999559083/20000000000000000000 |
| `f * f * v * v` | -3000 | 825349005282660849/400000000000000000000 | 0 |
| `f * p * v * k` | 200 | 3557043457209109539/625000000000000000000 | 3557043457209109539/3125000000000000000 |
| `f * q * v * j` | -100 | 4405580623643672277/2500000000000000000000 | 0 |
| `c * e * f * v` | 200 | 29016133727679172539/5000000000000000000000 | 29016133727679172539/25000000000000000000 |
| `f * v * r * k` | 1200 | 2540764617395288823/625000000000000000000 | 7622293852185866469/1562500000000000000 |
| `f * v * w * j` | 700 | 25800027159639196737/10000000000000000000000 | 180600190117474377159/100000000000000000000 |
| `f * f * h * v` | 280200 | 791353886410068489/400000000000000000000 | 1108686794860505953089/2000000000000000000 |
| `c * f * q * w` | 100 | 8567657841826162989/1250000000000000000000 | 8567657841826162989/12500000000000000000 |
| `f * f * w * k` | 1000 | 148606302704145741/25000000000000000000 | 148606302704145741/25000000000000000 |
| `f * h * w * j` | -808500 | 24737355508502148057/10000000000000000000000 | 0 |
| `f * f * h * w` | -4703700 | 1212083466091776369/400000000000000000000 | 0 |
| `f * u * w * k` | -1900 | 7430349606629858181/1250000000000000000000 | 0 |
| `v * r * j` | -7234553609/10000000 | 2093179985961603/250000000000000000 | 0 |
| `f * f * k * k` | -315500 | 11405471693738409/1562500000000000000 | 0 |
| `b * f * k * k` | -489000 | 1066555792231929027/78125000000000000000 | 0 |
| `b * k * k` | -192121659/2500 | 247403338490357/3906250000000000 | 0 |
| `b * j * k` | 654281/10000 | 878669839357247/31250000000000000 | 574896981164498924407/312500000000000000000 |
| `a * b * j * k` | -385500 | 177541391731007257079/31250000000000000000000 | 0 |
| `f * h * p * k` | -400 | 3410533175632665579/625000000000000000000 | 0 |
| `f * q * u * k` | -100 | 1268797278829092201/312500000000000000000 | 0 |
| `b * e * f * k` | 100 | 12309198195198568293/1250000000000000000000 | 12309198195198568293/12500000000000000000 |
| `f * h * u * k` | 800 | 4651366579610100021/1250000000000000000000 | 4651366579610100021/1562500000000000000 |
| `f * f * h * k` | 1000 | 93026900012985981/25000000000000000000 | 93026900012985981/25000000000000000 |
| `h * h * p * u` | 351700 | 1390879786278230348751/500000000000000000000000 | 4891724208340536136557267/5000000000000000000000 |
| `h * h * u` | -9542607467/10000 | 8800307412753199/1000000000000000000 | 0 |
| `f * h * h * p` | 481000 | 27817466672135369511/10000000000000000000000 | 13380201469297112734791/10000000000000000000 |
| `f * h * h` | 258939/2500 | 176005331714439/20000000000000000 | 45574644588805120221/50000000000000000000 |
| `h * p * r * k` | -100 | 89312299187357577177/15625000000000000000000 | 0 |
| `h * p * w * j` | 100 | 906915866565357457263/250000000000000000000000 | 906915866565357457263/2500000000000000000000 |
| `e * h * u * u` | 100 | 2684100501112406797099/1000000000000000000000000 | 2684100501112406797099/10000000000000000000000 |
| `h * u * r * k` | 900 | 121806246177667135623/31250000000000000000000 | 1096256215599004220607/312500000000000000000 |
| `h * u * w * j` | -700 | 1236873513619379845937/500000000000000000000000 | 0 |
| `f * h * r * k` | -800 | 2436113621704019103/625000000000000000000 | 0 |
| `b * h * r * k` | -110400 | 227807421168732621909/31250000000000000000000 | 0 |
| `f * h * h * r` | 950500 | 19869769913238162027/10000000000000000000000 | 37772432605065746013327/20000000000000000000 |
| `h * v * r * j` | -200 | 422941668423443617371/250000000000000000000000 | 0 |
| `h * h * u * j` | 200 | 774277447096264707617/500000000000000000000000 | 774277447096264707617/2500000000000000000000 |
| `h * h * j` | -9273922347/10000 | 3592084690380767/500000000000000000 | 0 |
| `b * h * w * j` | 100 | 2313255471632798991571/500000000000000000000000 | 2313255471632798991571/5000000000000000000000 |
| `f * h * j * k` | -200 | 1898581708151831493/625000000000000000000 | 0 |
| `h * j * k` | -207843/5000 | 440404014880963/31250000000000000 | 0 |
| `h * h * j * j` | 469700 | 316042387313771022961/250000000000000000000000 | 1484451093212782494847817/2500000000000000000000 |
| `f * h * h * j` | 2295500 | 15485477100231486537/10000000000000000000000 | 71093825367162754691367/20000000000000000000 |
| `h * p * v * j` | -300 | 592113840119908588503/250000000000000000000000 | 0 |
| `h * q * u * j` | 200 | 211206986402870585477/125000000000000000000000 | 211206986402870585477/625000000000000000000 |
| `h * p * v * r` | 200 | 759754813460064333813/250000000000000000000000 | 759754813460064333813/1250000000000000000000 |
| `h * q * u * r` | -200 | 271004515826685484767/125000000000000000000000 | 0 |
| `f * p * v * v` | -1000 | 30258776371124858391/10000000000000000000000 | 0 |
| `p * v * v` | -46039/200 | 7018969234777281/500000000000000000 | 0 |
| `h * p * u * v` | -800 | 1450629443775347693991/500000000000000000000000 | 0 |
| `p * u * v` | 301149/1250 | 7179308035729263/500000000000000000 | 2162041435651831823187/625000000000000000000 |
| `f * q * u * v` | 1000 | 10793304490719993669/5000000000000000000000 | 10793304490719993669/5000000000000000000 |
| `q * u * v` | 46039/200 | 2503666084602179/250000000000000000 | 115266282868999718981/50000000000000000000 |
| `h * q * u * u` | 800 | 517439472695011054069/250000000000000000000000 | 517439472695011054069/312500000000000000000 |
| `q * u * u` | -301149/1250 | 2560858929386317/250000000000000000 | 0 |
| `p * u * v * k` | -200 | 177852997969121032299/31250000000000000000000 | 0 |
| `p * v * v * j` | 200 | 617549970183409514223/250000000000000000000000 | 617549970183409514223/1250000000000000000000 |
| `q * u * u * k` | 200 | 63440158257687231041/15625000000000000000000 | 63440158257687231041/78125000000000000000 |
| `q * u * v * j` | -200 | 220280053121553514957/125000000000000000000000 | 0 |
| `c * h * p * w` | -100 | 1151500612276037949471/125000000000000000000000 | 0 |
| `b * e * p * w` | -30500 | 5879866586721847146063/500000000000000000000000 | 0 |
| `b * e * w` | -421702031/10000000 | 37202807905914287/1000000000000000000 | 0 |
| `f * p * w * k` | 200 | 5448173865944683419/625000000000000000000 | 5448173865944683419/3125000000000000000 |
| `p * w * k` | 207843/5000 | 1263784241694429/31250000000000000 | 262668708146495206647/156250000000000000000 |
| `f * q * r * k` | -300 | 664521766073238843/156250000000000000000 | 0 |
| `q * r * j` | -4807502641/250000000 | 547458686828823/62500000000000000 | 0 |
| `p * u * w * k` | -200 | 272409957081475865379/31250000000000000000000 | 0 |
| `p * v * w * j` | 200 | 945875317224267085383/250000000000000000000000 | 945875317224267085383/1250000000000000000000 |
| `q * u * r * k` | 200 | 33226242449281536963/7812500000000000000000 | 33226242449281536963/39062500000000000000 |
| `q * v * r * j` | -200 | 115369801286245672551/62500000000000000000000 | 0 |
| `h * p * u * k` | 100 | 170527449905079261939/31250000000000000000000 | 170527449905079261939/312500000000000000000 |
| `c * q * v * j` | 100 | 114161868951022564077/31250000000000000000000 | 114161868951022564077/312500000000000000000 |
| `c * h * v * j` | -840100 | 418513430604654938217/125000000000000000000000 | 0 |
| `h * u * u * k` | -1800 | 232569407933550607661/62500000000000000000000 | 0 |
| `h * u * v * j` | 1800 | 807538993297562250697/500000000000000000000000 | 7267850939678060256273/2500000000000000000000 |
| `u * r * k * k` | -600 | 14933935159679436747/1953125000000000000000 | 0 |
| `u * k * k` | 5976633/5000 | 132283978277479/3906250000000000 | 790612789944464148207/19531250000000000000 |
| `e * u * r * k` | 500 | 172353634993681375773/31250000000000000000000 | 172353634993681375773/62500000000000000000 |
| `u * w * j * k` | 600 | 151645662129462958093/31250000000000000000000 | 454936986388388874279/156250000000000000000 |
| `u * j * k` | -1702007/1000 | 469815575860309/31250000000000000 | 0 |
| `v * r * j * k` | 600 | 51854347792226791119/15625000000000000000000 | 155563043376680373357/78125000000000000000 |
| `v * j * k` | -5976633/5000 | 459322967697083/31250000000000000 | 0 |
| `e * v * r * j` | -500 | 598454810246324028921/250000000000000000000000 | 0 |
| `v * w * j * j` | -600 | 526551563346447563561/250000000000000000000000 | 0 |
| `v * j * j` | 1702007/1000 | 1631316863798993/250000000000000000 | 2776512721403932678951/250000000000000000000 |
| `u * u * w * k` | 900 | 371519203910617620221/62500000000000000000000 | 3343672835195558581989/625000000000000000000 |
| `u * u * w` | -285457/625 | 14996940375029977/1000000000000000000 | 0 |
| `u * v * r * k` | -900 | 127038820237571770143/31250000000000000000000 | 0 |
| `u * v * r` | 285457/625 | 5128116103724691/500000000000000000 | 1463856638620939118787/312500000000000000000 |
| `u * v * w * j` | -900 | 1290007342678586985817/500000000000000000000000 | 0 |
| `u * v * w` | -772501/2500 | 14662006781748599/1000000000000000000 | 0 |
| `v * v * r * j` | 900 | 441110470701590331411/250000000000000000000000 | 3969994236314312982699/2500000000000000000000 |
| `v * v * r` | 772501/2500 | 5013587519197917/500000000000000000 | 3873001372167910080417/1250000000000000000000 |
| `b * e * u * k` | -200 | 615462765059904104413/62500000000000000000000 | 0 |
| `b * e * v * j` | 200 | 2137040232955376726201/500000000000000000000000 | 2137040232955376726201/2500000000000000000000 |
| `b * c * e * h` | 100 | 2601614707452173133537/250000000000000000000000 | 2601614707452173133537/2500000000000000000000 |
| `b * e * e * r` | 100 | 3720188462847908484081/500000000000000000000000 | 3720188462847908484081/5000000000000000000000 |
| `c * e * h * u` | -400 | 1391056181969780124939/250000000000000000000000 | 0 |
| `b * e * w * j` | -82800 | 3273214647986056713121/500000000000000000000000 | 0 |
| `b * h * u * k` | -200 | 434961578134529912263/62500000000000000000000 | 0 |
| `b * r * k * k` | 100 | 27930105092191872801/1953125000000000000000 | 27930105092191872801/19531250000000000000 |
| `b * w * j * k` | -100 | 283614414738214114919/31250000000000000000000 | 0 |
| `b * e * j * k` | -103400 | 251217857761112418029/31250000000000000000000 | 0 |
| `e * e * j * j` | -53100 | 632771790282083047561/250000000000000000000000 | 0 |
| `f * h * h * u` | -400 | 37938125256379040889/20000000000000000000000 | 0 |
| `b * h * h * u` | -500 | 3547694328225435372467/1000000000000000000000000 | 0 |
| `b * f * h * w` | -300 | 113345127333791714907/20000000000000000000000 | 0 |
| `b * h * p * v` | -100 | 2713031252731312969653/500000000000000000000000 | 0 |
| `f * f * q * k` | -100 | 25375827850634961/6250000000000000000 | 0 |
| `f * f * h * q` | -300 | 206973868647953349/100000000000000000000 | 0 |
| `b * f * w * k` | -1078000 | 13896567995367753423/1250000000000000000000 | 0 |
| `b * h * h * j` | -134600 | 1448087877487269743011/500000000000000000000000 | 0 |
| `b * f * h * h` | 400 | 70953557390036937387/20000000000000000000000 | 70953557390036937387/50000000000000000000 |
| `f * h * u * v` | -1000 | 39567877886703009249/20000000000000000000000 | 0 |
| `b * h * v * r` | -100 | 1937894179745497377921/500000000000000000000000 | 0 |
| `f * q * w * j` | 100 | 6747842557110681117/2500000000000000000000 | 6747842557110681117/25000000000000000000 |
| `c * e * p * k` | -100 | 125052127001956500129/7812500000000000000000 | 0 |
| `c * h * u * w` | 300 | 1570444029868662604929/250000000000000000000000 | 4711332089605987814787/2500000000000000000000 |
| `c * e * q * u` | 100 | 379451558627656409559/62500000000000000000000 | 379451558627656409559/625000000000000000000 |
| `e * e * p * u` | 100 | 2784783078975582567351/500000000000000000000000 | 2784783078975582567351/5000000000000000000000 |
| `e * e * u` | 138897/5000 | 17619745009304599/1000000000000000000 | 2447329722557380887303/5000000000000000000000 |
| `e * h * p * u` | -100 | 1968069738021696869301/500000000000000000000000 | 0 |
| `c * f * w * k` | -200 | 3850837086843615141/312500000000000000000 | 0 |
| `e * f * r * k` | -71200 | 3447056707961273253/625000000000000000000 | 0 |
| `c * h * h` | 100 | 4560828487857039/250000000000000000 | 4560828487857039/2500000000000000 |
| `c * c * h` | -100 | 2521539522050697/62500000000000000 | 0 |
| `f * r * k * k` | 500 | 298677317541454467/39062500000000000000 | 298677317541454467/78125000000000000 |
| `f * w * j * k` | -500 | 3032899172075818773/625000000000000000000 | 0 |
| `c * v * v * r` | 100 | 560072875357118505987/125000000000000000000000 | 560072875357118505987/1250000000000000000000 |
| `c * v * v` | 183383/1250 | 4961094800892159/250000000000000000 | 909780447872006793897/312500000000000000000 |
| `c * u * v * k` | -100 | 125708712210317557461/15625000000000000000000 | 0 |
| `c * u * v * w` | -100 | 1637907439595917742889/250000000000000000000000 | 0 |
| `c * v * v * j` | 100 | 436492003866894825297/125000000000000000000000 | 436492003866894825297/1250000000000000000000 |
| `c * u * k * k` | 200 | 14777575497355456569/976562500000000000000 | 14777575497355456569/4882812500000000000 |
| `c * v * j * k` | -200 | 51311428044408839013/7812500000000000000000 | 0 |
| `h * u * j * k` | 200 | 94929525811606455613/31250000000000000000000 | 94929525811606455613/156250000000000000000 |
| `h * v * j * j` | -200 | 329618991548633128601/250000000000000000000000 | 0 |
| `f * u * v * w` | 1000 | 63207911236118210289/20000000000000000000000 | 63207911236118210289/20000000000000000000 |
| `f * v * v * r` | -1000 | 21613575795262220187/10000000000000000000000 | 0 |
| `u * u * k * k` | -3200 | 28513943801688875929/3906250000000000000000 | 0 |
| `u * v * j * k` | 6400 | 99007525010073937733/31250000000000000000000 | 99007525010073937733/4882812500000000000 |
| `v * v * j * j` | -3200 | 343778821926408387841/250000000000000000000000 | 0 |
| `h * h * p * r` | 11500 | 728461439345251280493/250000000000000000000000 | 16754613104940779451339/500000000000000000000 |
| `f * u * k * k` | 7000 | 570276230354211969/78125000000000000000 | 3991933612479483783/78125000000000000 |
| `f * v * j * k` | -7000 | 1980141313742124813/625000000000000000000 | 0 |
| `f * f * h * h` | 996000 | 758758985020946529/400000000000000000000 | 188930987270215685721/100000000000000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 70 | -393508070697857018029518865438279647471965912244361/13595413069350157500000000000000000000000000 |

## Stage 71

| Property | Value |
| --- | --- |
| Scope | root/AFQ+/BPS-/HQR- |
| Packet | forest:root/AFQ+/BPS-/HQR- |
| Index | 0 |
| Context | 20 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 46 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 391/1000 | 2193/20000 | 391/1000 |
| b | 103767/1000000 | 58493/100000 | 6561/62500 | 29117/50000 |
| c | 135501/250000 | 1/1 | 548179/1000000 | 950197/1000000 |
| e | 103767/1000000 | 391/1000 | 109723/1000000 | 391/1000 |
| f | 155651/500000 | 58493/100000 | 19683/62500 | 582153/1000000 |
| h | 580747/1000000 | 1/1 | 588751/1000000 | 197747/200000 |
| p | 220537/1000000 | 158493/200000 | 225971/1000000 | 694907/1000000 |
| q | 22907/200000 | 669143/1000000 | 12229/100000 | 15257/25000 |
| u | 103767/1000000 | 75479/200000 | 6561/62500 | 186823/500000 |
| v | 493737/1000000 | 841007/1000000 | 616077/1000000 | 838711/1000000 |
| r | 84743/125000 | 1/1 | 25439/31250 | 1/1 |
| w | 8131/20000 | 104293/125000 | 206493/500000 | 155899/200000 |
| j | 13857/20000 | 13636/15625 | 86667/125000 | 861297/1000000 |
| k | 253479/500000 | 1/1 | 143273/200000 | 1/1 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 0 | A_ABC | bitt ["actual-area","ABC",[]] | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 7 | A_ABH | bitt ["actual-area","ABH",[]] | `1/1 * b * h + -1/1 * a * b + -93/1000` |
| 29 | A_AFH | bitt ["actual-area","AFH",["Q"]] | `1/1 * f * h + -1/1 * a * f + -279/1000` |
| 32 | A_AFQ | bitt ["actual-area","AFQ",[]] | `1/1 * f * v + -1/1 * a * f + -1/1 * u + 1/1 * a * u + -93/1000` |
| 36 | A_AHQ | bitt ["actual-area","AHQ",[]] | `1/1 * h * u + -1/1 * a * u + -93/1000` |
| 43 | A_BCE | bitt ["actual-area","BCE",[]] | `1/1 * c * e + -1/1 * b * e + -93/1000` |
| 68 | A_BHS | bitt ["actual-area","BHS",["P","Q"]] | `1/1 * b * k + 1/1 * h * j + -1/1 * b * h + -13857/20000` |
| 71 | A_BPS | bitt ["actual-area","BPS",[]] | `-1/1 * p * k + 1/1 * b * k + 1/1 * q * j + -1/1 * b * q + -93/1000` |
| 80 | A_CER | bitt ["actual-area","CER",[]] | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 96 | A_CRS | bitt ["actual-area","CRS",[]] | `1/1 * r * k + -1/1 * c * k + -1/1 * w * j + 1/1 * c * w + -93/1000` |
| 113 | A_ERS | bitt ["actual-area","ERS",[]] | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 114 | A_FHP | bitt ["actual-area","FHP",["Q"]] | `-1/1 * f * q + -1/1 * h * p + 1/1 * f * h + 1/1 * p + -279/1000` |
| 115 | A_FHQ | bitt ["actual-area","FHQ",[]] | `-1/1 * f * v + -1/1 * h * u + 1/1 * f * h + 1/1 * u + -93/1000` |
| 127 | A_HQR | bitt ["actual-area","HQR",[]] | `-1/1 * u * w + 1/1 * h * u + 1/1 * v * r + -1/1 * h * r + -93/1000` |
| 129 | A_HRS | bitt ["actual-area","HRS",["Q"]] | `1/1 * r * k + -1/1 * h * r + -1/1 * w * j + 1/1 * h * j + -279/1000` |
| 137 | fb | bitt ["contact-order","fb"] | `1/1 * f + -1/1 * b` |
| 149 | lower-area | bitt ["endpoint-lower","135501/250000"] | `1/1 * c * h + -135501/250000` |
| 152 | top-area | bitt ["top-hull","+"] | `157/250 + -1/1 * f + -1/1 * e + 1/1 * e * f` |
| 160 | central-y | bitt ["central-lower-y"] | `1/1 * c * h * q + -1/1 * a * c * q + -93/1000 * h + -93/1000 * a` |
| 901 | AREA_lo_BPQ | bitt ["earlier-area",{"direction":"lo","ref":"46:110","triangle":"BPQ","value":"2537/25000"}] | `1/1 * p * v + -1/1 * b * v + -1/1 * q * u + 1/1 * b * q + -2537/25000` |
| 973 | AREA_lo_HPS | bitt ["earlier-area",{"direction":"lo","ref":"46:218","triangle":"HPS","value":"288741/1000000"}] | `1/1 * p * k + -1/1 * h * p + -1/1 * q * j + 1/1 * h * j + -288741/1000000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 127 | v | 493737/1000000 | 841007/1000000 | 121601184637/200000000000 | 841007/1000000 | 121601/200000 | 841007/1000000 | `(84743/125000, -468638044069/1000000000000); (84743/125000, -14187269477/20000000000); (84743/125000, -420972867353/1000000000000); (84743/125000, -2187915749/4000000000); (1/1, -655671099901/1000000000000); (1/1, -20628389477/20000000000); (1/1, -121601184637/200000000000); (1/1, -3476139749/4000000000); (84743/125000, -513028944067/1000000000000); (84743/125000, -94219296731/125000000000); (84743/125000, -582420183983/1000000000000); (84743/125000, -17710656347/25000000000); (1/1, -700061999899/1000000000000); (1/1, -134476296731/125000000000); (1/1, -153890647963/200000000000); (1/1, -25762056347/25000000000)` |
| 1 | 129 | w | 8131/20000 | 104293/125000 | 8131/20000 | 3617490393/4619000000 | 8131/20000 | 783177/1000000 | `(-13857/20000, 36672874567/500000000000); (-13857/20000, 4974695897/62500000000); (-13857/20000, 991631179/20000000000); (-13857/20000, -9899/125000); (-13636/15625, 22224427509/125000000000); (-13636/15625, 16215570897/62500000000); (-13636/15625, 2406737967/15625000000); (-13636/15625, 50331/500000); (-13857/20000, 203800307391/500000000000); (-13857/20000, 8277/20000); (-13857/20000, 10852471179/20000000000); (-13636/15625, 12801257143/25000000000); (-13636/15625, 74213/125000); (-13636/15625, 10110519217/15625000000)` |
| 2 | 129 | k | 253479/500000 | 1/1 | 34299829/52964375 | 1/1 | 647601/1000000 | 1/1 | `(84743/125000, -276010776359/500000000000); (84743/125000, -218308867/400000000); (1/1, -14781092171/20000000000); (1/1, -347131267/400000000); (84743/125000, -203241892417/250000000000); (84743/125000, -16134363689/20000000000); (1/1, -2000001251/2000000000); (1/1, -22575483689/20000000000); (84743/125000, -13017288137/25000000000); (84743/125000, -34299829/78125000); (1/1, -11058196583/15625000000); (1/1, -29730227/39062500); (84743/125000, -106171926861/125000000000); (84743/125000, -2998912893/3906250000); (1/1, -3238776471/3125000000); (1/1, -4256944143/3906250000)` |
| 3 | 901 | p | 220537/1000000 | 158493/200000 | 135153511341/608005000000 | 158493/200000 | 22229/100000 | 158493/200000 | `(121601/200000, -32914170967/200000000000); (121601/200000, -80402072089/200000000000); (121601/200000, -135153511341/1000000000000); (121601/200000, -39182167563/200000000000); (121601/200000, -17334013737/40000000000); (121601/200000, -347667115639/1000000000000); (121601/200000, -63649954429/200000000000); (841007/1000000, -188748773369/1000000000000); (841007/1000000, -107660044061/200000000000); (841007/1000000, -271443371201/1000000000000); (841007/1000000, -220088756349/1000000000000); (841007/1000000, -113928040657/200000000000); (841007/1000000, -371845034173/1000000000000); (841007/1000000, -90907926401/200000000000)` |
| 4 | 71 | p | 22229/100000 | 158493/200000 | 22229/100000 | 244364211979/323800500000 | 22229/100000 | 188669/250000 | `(-647601/1000000, 10417558593/250000000000); (-647601/1000000, 29816187013/100000000000); (-647601/1000000, 92095094709/250000000000); (-647601/1000000, 35801516549/100000000000); (-647601/1000000, 31134906131/500000000000); (-647601/1000000, 15938072401/50000000000); (-647601/1000000, 244364211979/500000000000); (-647601/1000000, 119590802653/250000000000); (-1/1, 15647524281/200000000000); (-1/1, 1260726543/2500000000); (-1/1, 404947765869/1000000000000); (-1/1, 7051798907/12500000000); (-1/1, 19767439859/200000000000); (-1/1, 52489019509/100000000000); (-1/1, 525295810991/1000000000000); (-1/1, 342245978841/500000000000)` |
| 5 | 96 | r | 84743/125000 | 1/1 | 6963304413/10000000000 | 1/1 | 69633/100000 | 1/1 | `(647601/1000000, -63166096713/125000000000); (647601/1000000, -246291667/400000000); (647601/1000000, -281070725073/500000000000); (647601/1000000, -10000963689/20000000000); (647601/1000000, -144612104351/250000000000); (647601/1000000, -430530507/625000000); (647601/1000000, -21968717697/31250000000); (647601/1000000, -2503537893/3906250000); (1/1, -6963304413/10000000000); (1/1, -387251267/400000000); (1/1, -376571558871/500000000000); (1/1, -17048943689/20000000000); (1/1, -153890017/200000000); (1/1, -325389941/312500000); (1/1, -8940006339/10000000000); (1/1, -15520385947/15625000000)` |
| 6 | 113 | r | 69633/100000 | 1/1 | 285435479/362556000 | 1/1 | 393643/500000 | 1/1 | `(271917/500000, -10876684031/20000000000); (256601/1000000, -137929927/400000000); (271917/500000, -856306437/2000000000); (256601/1000000, -4582876689/20000000000); (271917/500000, -9348295863/15625000000); (256601/1000000, -217263467/625000000); (271917/500000, -214979619/390625000); (256601/1000000, -1170618893/3906250000); (896233/1000000, -17924664031/20000000000); (609/1000, -278889527/400000000); (896233/1000000, -1561104437/2000000000); (609/1000, -11630856689/20000000000); (896233/1000000, -7427265119/7812500000); (609/1000, -218756421/312500000); (896233/1000000, -2821083827/3125000000); (609/1000, -10188709947/15625000000)` |
| 7 | 113 | j | 13857/20000 | 13636/15625 | 13857/20000 | 19547/22647 | 13857/20000 | 863117/1000000 | `(-302783/1000000, 23525473631/250000000000); (-311/20000, -66016312557/500000000000); (-302783/1000000, 209783/1000000); (-311/20000, -1549/20000); (-67941/100000, 117682223631/250000000000); (-392177/1000000, 122297187443/500000000000); (-67941/100000, 58641/100000); (-392177/1000000, 299177/1000000); (-302783/1000000, 9570846819/500000000000); (-311/20000, -103496413/500000000); (-67941/100000, 197884346819/500000000000); (-392177/1000000, 84817087/500000000)` |
| 8 | 129 | k | 647601/1000000 | 1/1 | 11081384327/15745720000 | 1/1 | 703771/1000000 | 1/1 | `(393643/500000, -76940198899/125000000000); (393643/500000, -262045667/400000000); (1/1, -14781092171/20000000000); (1/1, -347131267/400000000); (393643/500000, -438233804071/500000000000); (393643/500000, -18321203689/20000000000); (1/1, -2000001251/2000000000); (1/1, -22575483689/20000000000); (393643/500000, -585861590593/1000000000000); (393643/500000, -11081384327/20000000000); (1/1, -709394607951/1000000000000); (1/1, -15335664327/20000000000); (393643/500000, -113866844619/125000000000); (393643/500000, -879142382709/1000000000000); (1/1, -103446777431/100000000000); (1/1, -1091856382709/1000000000000)` |
| 9 | 973 | q | 22907/200000 | 669143/1000000 | 22907/200000 | 574376/863117 | 22907/200000 | 166367/250000 | `(-13857/20000, 14097656391/100000000000); (-13857/20000, 33826025559/100000000000); (-13857/20000, 103236409587/500000000000); (-13857/20000, 45138020799/250000000000); (-863117/1000000, 239858613359/1000000000000); (-863117/1000000, 50852725559/100000000000); (-863117/1000000, 305354868623/1000000000000); (-863117/1000000, 87704770799/250000000000); (-13857/20000, 1292658177/6250000000); (-13857/20000, 404109/1000000); (-13857/20000, 215014867989/500000000000); (-863117/1000000, 305707357769/1000000000000); (-863117/1000000, 71797/125000); (-863117/1000000, 528911785427/1000000000000)` |
| 10 | 71 | p | 22229/100000 | 188669/250000 | 22229/100000 | 251890658773/351885500000 | 22229/100000 | 89479/125000 | `(-703771/1000000, 23749413381/500000000000); (-703771/1000000, 33101738823/100000000000); (-703771/1000000, 372044091201/1000000000000); (-703771/1000000, 39047407759/100000000000); (-703771/1000000, 67000357607/1000000000000); (-703771/1000000, 14020756763/40000000000); (-703771/1000000, 485351331157/1000000000000); (-703771/1000000, 251890658773/500000000000); (-1/1, 15647524281/200000000000); (-1/1, 1260726543/2500000000); (-1/1, 100695721461/250000000000); (-1/1, 1761710333/3125000000); (-1/1, 390956609/4000000000); (-1/1, 104758429609/200000000000); (-1/1, 2580450629/5000000000); (-1/1, 169263636629/250000000000)` |
| 11 | 80 | c | 135501/250000 | 1/1 | 135501/250000 | 191174087/196088500 | 135501/250000 | 487469/500000 | `(-302783/1000000, 115927846819/500000000000); (-311/20000, 2860587/500000000); (-302783/1000000, 209783/1000000); (-311/20000, -1549/20000); (-67941/100000, 304241346819/500000000000); (-392177/1000000, 191174087/500000000); (-67941/100000, 58641/100000); (-392177/1000000, 299177/1000000)` |
| 12 | 113 | r | 393643/500000 | 1/1 | 968646437/1200008000 | 1/1 | 807199/1000000 | 1/1 | `(150001/250000, -12000084031/20000000000); (312771/1000000, -160397927/400000000); (150001/250000, -968646437/2000000000); (312771/1000000, -5706276689/20000000000); (150001/250000, -651558154611/1000000000000); (312771/1000000, -8072849387/20000000000); (150001/250000, -60000432097/100000000000); (312771/1000000, -352088635709/1000000000000); (896233/1000000, -17924664031/20000000000); (609/1000, -278889527/400000000); (896233/1000000, -1561104437/2000000000); (609/1000, -11630856689/20000000000); (896233/1000000, -947787154611/1000000000000); (609/1000, -13997429387/20000000000); (896233/1000000, -89623332097/100000000000); (609/1000, -648317635709/1000000000000)` |
| 13 | 114 | q | 22907/200000 | 166367/250000 | 22907/200000 | 20190241609/31130200000 | 22907/200000 | 25943/40000 | `(-155651/500000, -1254137009/250000000000); (-58493/100000, 1923651151/12500000000); (-155651/500000, 16151/500000); (-58493/100000, 30593/100000); (-155651/500000, 20190241609/100000000000); (-58493/100000, 180405528103/500000000000)` |
| 14 | 129 | k | 703771/1000000 | 1/1 | 709394607951/1000000000000 | 1/1 | 354697/500000 | 1/1 | `(807199/1000000, -627086006203/1000000000000); (807199/1000000, -270010867/400000000); (1/1, -14781092171/20000000000); (1/1, -347131267/400000000); (807199/1000000, -888032023153/1000000000000); (807199/1000000, -18719463689/20000000000); (1/1, -2000001251/2000000000); (1/1, -22575483689/20000000000); (807199/1000000, -149356501401/250000000000); (807199/1000000, -11479644327/20000000000); (1/1, -709394607951/1000000000000); (1/1, -15335664327/20000000000); (807199/1000000, -922499171963/1000000000000); (807199/1000000, -899055382709/1000000000000); (1/1, -103446777431/100000000000); (1/1, -1091856382709/1000000000000)` |
| 15 | 160 | q | 22907/200000 | 25943/40000 | 51325165500/436885804277 | 25943/40000 | 117479/1000000 | 25943/40000 | `(3231563349/12500000000, -31829901/500000000); (25710908247/250000000000, -90372471/1000000000); (11625648181/25000000000, -31829901/500000000); (92495780343/500000000000, -90372471/1000000000); (121440467733/250000000000, -102650331/1000000000); (82520109/250000000, -129363/1000000); (436885804277/500000000000, -102650331/1000000000); (296868621/500000000, -129363/1000000)` |
| 16 | 901 | p | 22229/100000 | 89479/125000 | 188748773369/841007000000 | 89479/125000 | 224431/1000000 | 89479/125000 | `(121601/200000, -32914170967/200000000000); (121601/200000, -400593816573/1000000000000); (121601/200000, -5802002877/40000000000); (121601/200000, -196716398647/1000000000000); (121601/200000, -86547872077/200000000000); (121601/200000, -68407826987/200000000000); (121601/200000, -12900734081/40000000000); (841007/1000000, -188748773369/1000000000000); (841007/1000000, -536883676433/1000000000000); (841007/1000000, -56267986357/200000000000); (841007/1000000, -220894317181/1000000000000); (841007/1000000, -113805844049/200000000000); (841007/1000000, -366217053469/1000000000000); (841007/1000000, -91761642377/200000000000)` |
| 17 | 0 | a | 103767/1000000 | 391/1000 | 93000/871171 | 391/1000 | 1668/15625 | 391/1000 | `(438237/1000000, -93/1000); (-21463/500000, -93/1000); (871171/1000000, -93/1000); (48751/125000, -93/1000)` |
| 18 | 7 | b | 103767/1000000 | 58493/100000 | 11625/111656 | 58493/100000 | 52057/500000 | 58493/100000 | `(94799/200000, -93/1000); (189747/1000000, -93/1000); (13957/15625, -93/1000); (609/1000, -93/1000)` |
| 19 | 29 | f | 155651/500000 | 58493/100000 | 34875/111656 | 58493/100000 | 312343/1000000 | 58493/100000 | `(94799/200000, -279/1000); (189747/1000000, -279/1000); (13957/15625, -279/1000); (609/1000, -279/1000)` |
| 20 | 29 | h | 580747/1000000 | 1/1 | 533503824/913953125 | 1/1 | 145933/250000 | 1/1 | `(312343/1000000, -1220090781/3906250000); (312343/1000000, -401126113/1000000000); (58493/100000, -33343989/97656250); (58493/100000, -50770763/100000000)` |
| 21 | 32 | u | 103767/1000000 | 75479/200000 | 103767/1000000 | 6729755543/17864960000 | 103767/1000000 | 188351/500000 | `(-13957/15625, 63562865779/1000000000000); (-609/1000, -5044001457/200000000000); (-13957/15625, 20019791729/100000000000); (-609/1000, 678654693/20000000000); (-13957/15625, 27267881893/200000000000); (-609/1000, 47556536401/1000000000000); (-13957/15625, 6729755543/20000000000); (-609/1000, 17022259451/100000000000)` |
| 22 | 36 | u | 103767/1000000 | 188351/500000 | 11625/111656 | 188351/500000 | 52057/500000 | 188351/500000 | `(23849/50000, -93/1000); (48183/250000, -93/1000); (13957/15625, -93/1000); (609/1000, -93/1000)` |
| 23 | 43 | e | 103767/1000000 | 391/1000 | 11625/108853 | 391/1000 | 21359/200000 | 391/1000 | `(43789/100000, -93/1000); (-21463/500000, -93/1000); (108853/125000, -93/1000); (48751/125000, -93/1000)` |
| 24 | 71 | p | 224431/1000000 | 89479/125000 | 224431/1000000 | 100474193189/141878800000 | 224431/1000000 | 70817/100000 | `(-354697/500000, 2501098173/50000000000); (-354697/500000, 3346241661/10000000000); (-354697/500000, 90674324529/250000000000); (-354697/500000, 19597002321/50000000000); (-354697/500000, 70024760353/1000000000000); (-354697/500000, 354626962993/1000000000000); (-354697/500000, 473128217641/1000000000000); (-354697/500000, 100474193189/200000000000); (-1/1, 1254345571/15625000000); (-1/1, 6307604171/12500000000); (-1/1, 245595907/625000000); (-1/1, 280962107/500000000); (-1/1, 100280913437/1000000000000); (-1/1, 524611130573/1000000000000); (-1/1, 20135374829/40000000000); (-1/1, 26894205341/40000000000)` |
| 25 | 80 | c | 135501/250000 | 487469/500000 | 135501/250000 | 374562191/392177000 | 135501/250000 | 191017/200000 | `(-59951/200000, 45469036559/200000000000); (-311/20000, -2064809/1000000000); (-59951/200000, 41351/200000); (-311/20000, -1549/20000); (-338191/500000, 120794436559/200000000000); (-392177/1000000, 374562191/1000000000); (-338191/500000, 291691/500000); (-392177/1000000, 299177/1000000)` |
| 26 | 113 | r | 807199/1000000 | 1/1 | 4878482687/6025990000 | 1/1 | 809573/1000000 | 1/1 | `(602599/1000000, -2414117007/4000000000); (159197/500000, -162647127/400000000); (602599/1000000, -4878482687/10000000000); (159197/500000, -5818736689/20000000000); (602599/1000000, -130913527267/200000000000); (159197/500000, -8185309387/20000000000); (602599/1000000, -301506901347/500000000000); (159197/500000, -357711635709/1000000000000); (178641/200000, -3576541007/4000000000); (609/1000, -278889527/400000000); (178641/200000, -7784542687/10000000000); (609/1000, -11630856689/20000000000); (178641/200000, -189034727267/200000000000); (609/1000, -13997429387/20000000000); (178641/200000, -446809901347/500000000000); (609/1000, -648317635709/1000000000000)` |
| 27 | 113 | w | 8131/20000 | 783177/1000000 | 503208337/1228600000 | 783177/1000000 | 204789/500000 | 783177/1000000 | `(6143/20000, -240553204023/1000000000000); (6143/20000, -136863232119/500000000000); (6143/20000, -503208337/4000000000); (6143/20000, -4261913/20000000); (136883/1000000, -111184769879/500000000000); (136883/1000000, -103576033619/500000000000); (136883/1000000, -21523683997/200000000000); (136883/1000000, -146521253/1000000000); (6143/20000, -59178486557/200000000000); (6143/20000, -329065693/1000000000); (136883/1000000, -6942719213/25000000000); (136883/1000000, -8202853/31250000)` |
| 28 | 113 | j | 13857/20000 | 863117/1000000 | 13857/20000 | 291691/338191 | 13857/20000 | 107813/125000 | `(-302783/1000000, 95031880227/1000000000000); (-9289/500000, -67526407119/500000000000); (-302783/1000000, 209783/1000000); (-9289/500000, -37211/500000); (-338191/500000, 468630880227/1000000000000); (-392177/1000000, 119273092881/500000000000); (-338191/500000, 291691/500000); (-392177/1000000, 299177/1000000); (-302783/1000000, 7938530293/200000000000); (-9289/500000, -190392043/1000000000); (-338191/500000, 82658330293/200000000000); (-392177/1000000, 183206957/1000000000)` |
| 29 | 114 | q | 117479/1000000 | 25943/40000 | 117479/1000000 | 49528278409/78085750000 | 117479/1000000 | 634281/1000000 | `(-312343/1000000, -101623513/31250000000); (-58493/100000, 38966450567/250000000000); (-312343/1000000, 33343/1000000); (-58493/100000, 30593/100000); (-312343/1000000, 49528278409/250000000000); (-58493/100000, 2232692927/6250000000)` |
| 30 | 127 | v | 121601/200000 | 841007/1000000 | 152781959973/250000000000 | 841007/1000000 | 611127/1000000 | 841007/1000000 | `(809573/1000000, -6843022461/12500000000); (809573/1000000, -210275450973/250000000000); (809573/1000000, -62496188291/125000000000); (809573/1000000, -170039962939/250000000000); (1/1, -164650032611/250000000000); (1/1, -257882200973/250000000000); (1/1, -152781959973/250000000000); (1/1, -217646712939/250000000000); (809573/1000000, -293169341583/500000000000); (809573/1000000, -439999345089/500000000000); (809573/1000000, -320352498413/500000000000); (809573/1000000, -410447671127/500000000000); (1/1, -69749701673/100000000000); (1/1, -535212845089/500000000000); (1/1, -75186333039/100000000000); (1/1, -505661171127/500000000000)` |
| 31 | 129 | w | 204789/500000 | 783177/1000000 | 204789/500000 | 29124017/37250000 | 204789/500000 | 781853/1000000 | `(-13857/20000, 113585639263/500000000000); (-13857/20000, 89291614381/500000000000); (-13857/20000, 1255503581/5000000000); (-13857/20000, 30811/250000); (-107813/125000, 163101873627/500000000000); (-107813/125000, 174118614381/500000000000); (-107813/125000, 10941662029/31250000000); (-107813/125000, 146449/500000); (-13857/20000, 115609512441/250000000000); (-13857/20000, 8277/20000); (-13857/20000, 2708533581/5000000000); (-107813/125000, 140367629623/250000000000); (-107813/125000, 36469/62500); (-107813/125000, 20023099529/31250000000)` |
| 32 | 129 | k | 354697/500000 | 1/1 | 44532717399/62500000000 | 1/1 | 712523/1000000 | 1/1 | `(809573/1000000, -39431941721/62500000000); (809573/1000000, -6794991173/10000000000); (1/1, -7420694011/10000000000); (1/1, -8699261173/10000000000); (809573/1000000, -444420900643/500000000000); (809573/1000000, -18748597021/20000000000); (1/1, -20000002697/20000000000); (1/1, -22557137021/20000000000); (809573/1000000, -30068257241/50000000000); (809573/1000000, -36208228957/62500000000); (1/1, -44532717399/62500000000); (1/1, -48109916457/62500000000); (809573/1000000, -46122691071/50000000000); (809573/1000000, -112552542489/125000000000); (1/1, -129201519373/125000000000); (1/1, -136355917489/125000000000)` |
| 33 | 152 | f | 312343/1000000 | 58493/100000 | 312343/1000000 | 34747/59547 | 312343/1000000 | 583523/1000000 | `(-178641/200000, 104241/200000); (-609/1000, 237/1000)` |
| 34 | 160 | q | 117479/1000000 | 634281/1000000 | 321649800/2666024269 | 634281/1000000 | 120647/1000000 | 634281/1000000 | `(3231563349/12500000000, -16053753/250000000); (6528844683/62500000000, -22662519/250000000); (4555564433/10000000000, -16053753/250000000); (9203772111/50000000000, -22662519/250000000); (1891187457/3906250000, -1608249/15625000); (82520109/250000000, -129363/1000000); (2666024269/3125000000, -1608249/15625000); (116329353/200000000, -129363/1000000)` |
| 35 | 901 | p | 224431/1000000 | 70817/100000 | 94520301399/420503500000 | 70817/100000 | 112389/500000 | 70817/100000 | `(611127/1000000, -82553438239/500000000000); (611127/1000000, -200468754079/500000000000); (611127/1000000, -76987031407/500000000000); (611127/1000000, -98996900457/500000000000); (611127/1000000, -216912216297/500000000000); (611127/1000000, -169002132853/500000000000); (611127/1000000, -163435726021/500000000000); (841007/1000000, -94520301399/500000000000); (841007/1000000, -267700608279/500000000000); (841007/1000000, -144218885607/500000000000); (841007/1000000, -110963763617/500000000000); (841007/1000000, -284144070497/500000000000); (841007/1000000, -180968996013/500000000000); (841007/1000000, -230667580221/500000000000)` |
| 36 | 0 | a | 1668/15625 | 391/1000 | 31000/283657 | 391/1000 | 54643/500000 | 391/1000 | `(43789/100000, -93/1000); (-21463/500000, -93/1000); (850971/1000000, -93/1000); (74031/200000, -93/1000)` |
| 37 | 7 | b | 52057/500000 | 58493/100000 | 46500/445357 | 58493/100000 | 10441/100000 | 58493/100000 | `(237223/500000, -93/1000); (48183/250000, -93/1000); (445357/500000, -93/1000); (609/1000, -93/1000)` |
| 38 | 29 | f | 312343/1000000 | 583523/1000000 | 139500/445357 | 583523/1000000 | 313231/1000000 | 583523/1000000 | `(237223/500000, -279/1000); (48183/250000, -279/1000); (445357/500000, -279/1000); (609/1000, -279/1000)` |
| 39 | 29 | h | 145933/250000 | 1/1 | 171385447289/291761500000 | 1/1 | 73427/125000 | 1/1 | `(313231/1000000, -156615881533/500000000000); (313231/1000000, -401473321/1000000000); (583523/1000000, -171385447289/500000000000); (583523/1000000, -507157493/1000000000)` |
| 40 | 32 | u | 52057/500000 | 188351/500000 | 52057/500000 | 30361457553/80974000000 | 52057/500000 | 187477/500000 | `(-445357/500000, 64192158271/1000000000000); (-609/1000, -24049399663/1000000000000); (-445357/500000, 199835765843/1000000000000); (-609/1000, 35449167421/1000000000000); (-445357/500000, 136197700551/1000000000000); (-609/1000, 47956142617/1000000000000); (-445357/500000, 333976033083/1000000000000); (-609/1000, 169589434661/1000000000000)` |
| 41 | 36 | u | 52057/500000 | 187477/500000 | 46500/445357 | 187477/500000 | 10441/100000 | 187477/500000 | `(47813/100000, -93/1000); (3069/15625, -93/1000); (445357/500000, -93/1000); (609/1000, -93/1000)` |
| 42 | 43 | e | 21359/200000 | 391/1000 | 3720/34027 | 391/1000 | 27331/250000 | 391/1000 | `(218797/500000, -93/1000); (-21463/500000, -93/1000); (34027/40000, -93/1000); (74031/200000, -93/1000)` |
| 43 | 71 | p | 112389/500000 | 70817/100000 | 112389/500000 | 17851285453/25447250000 | 112389/500000 | 350751/500000 | `(-712523/1000000, 5238804711/100000000000); (-712523/1000000, 33679630263/100000000000); (-712523/1000000, 35463083807/100000000000); (-712523/1000000, 39222768391/100000000000); (-712523/1000000, 569189791/7812500000); (-712523/1000000, 11164517149/31250000000); (-712523/1000000, 115559786711/250000000000); (-712523/1000000, 124958998171/250000000000); (-1/1, 2060088017/25000000000); (-1/1, 6311877803/12500000000); (-1/1, 9616157791/25000000000); (-1/1, 7004770069/12500000000); (-1/1, 51435883409/500000000000); (-1/1, 262709235189/500000000000); (-1/1, 246127310207/500000000000); (-1/1, 333994957147/500000000000)` |
| 44 | 80 | c | 135501/250000 | 191017/200000 | 135501/250000 | 372309957/390853000 | 135501/250000 | 476279/500000 | `(-150127/500000, 57018060337/250000000000); (-9289/500000, 34957/1000000000); (-150127/500000, 103627/500000); (-9289/500000, -37211/500000); (-672529/1000000, 150086810337/250000000000); (-390853/1000000, 372309957/1000000000); (-672529/1000000, 579529/1000000); (-390853/1000000, 297853/1000000)` |
| 45 | 113 | r | 809573/1000000 | 1/1 | 9792634353/12063980000 | 1/1 | 32469/40000 | 1/1 | `(603199/1000000, -6039759839/10000000000); (321523/1000000, -4088167673/10000000000); (603199/1000000, -9792634353/20000000000); (321523/1000000, -5889450021/20000000000); (603199/1000000, -40932204751/62500000000); (321523/1000000, -25748037457/62500000000); (603199/1000000, -75466119077/125000000000); (321523/1000000, -45097784489/125000000000); (222669/250000, -8914529839/10000000000); (609/1000, -6962937673/10000000000); (222669/250000, -15542174353/20000000000); (609/1000, -11638990021/20000000000); (222669/250000, -58899517251/62500000000); (609/1000, -43715349957/62500000000); (222669/250000, -111400744077/125000000000); (609/1000, -81032409489/125000000000)` |
| 46 | 113 | w | 204789/500000 | 781853/1000000 | 632894333/1535750000 | 781853/1000000 | 412107/1000000 | 781853/1000000 | `(6143/20000, -9605846333/40000000000); (6143/20000, -10945215713/40000000000); (6143/20000, -632894333/5000000000); (6143/20000, -4261913/20000000); (17187/125000, -221598904429/1000000000000); (17187/125000, -8291827153/40000000000); (17187/125000, -3375987897/31250000000); (17187/125000, -18345117/125000000); (6143/20000, -588541781/2000000000); (6143/20000, -2622041/8000000); (17187/125000, -68930909151/250000000000); (17187/125000, -261420411/1000000000)` |
| 47 | 113 | j | 13857/20000 | 107813/125000 | 13857/20000 | 579529/672529 | 13857/20000 | 861717/1000000 | `(-302783/1000000, 3848628331/40000000000); (-21107/1000000, -5297109713/40000000000); (-302783/1000000, 209783/1000000); (-21107/1000000, -71893/1000000); (-672529/1000000, 18638468331/40000000000); (-390853/1000000, 9492730287/40000000000); (-672529/1000000, 579529/1000000); (-390853/1000000, 297853/1000000); (-302783/1000000, 420909761/10000000000); (-21107/1000000, -7462099/40000000); (-672529/1000000, 4118369761/10000000000); (-390853/1000000, 7327741/40000000)` |
| 48 | 114 | q | 120647/1000000 | 634281/1000000 | 120647/1000000 | 24303175283/39153875000 | 120647/1000000 | 62071/100000 | `(-313231/1000000, -282911569/125000000000); (-583523/1000000, 3912763823/25000000000); (-313231/1000000, 34231/1000000); (-583523/1000000, 304523/1000000); (-313231/1000000, 24303175283/125000000000); (-583523/1000000, 44149905967/125000000000)` |
| 49 | 115 | v | 611127/1000000 | 841007/1000000 | 611127/1000000 | 490523/583523 | 611127/1000000 | 52539/62500 | `(-313231/1000000, 16759349567/125000000000); (-583523/1000000, 36606080251/125000000000); (-313231/1000000, 220231/1000000); (-583523/1000000, 490523/1000000); (-313231/1000000, 30712115279/125000000000); (-583523/1000000, 50558845963/125000000000)` |
| 50 | 127 | h | 73427/125000 | 1/1 | 73427/125000 | 217417174161/218385500000 | 73427/125000 | 497783/500000 | `(-141463/200000, 72007794441/200000000000); (-436771/1000000, 248545895997/1000000000000); (-141463/200000, 54632742453/100000000000); (-436771/1000000, 217417174161/500000000000); (-89559/100000, 47509890813/100000000000); (-312523/500000, 181802915961/500000000000); (-89559/100000, 70459590813/100000000000); (-312523/500000, 296551415961/500000000000); (-141463/200000, 64286758469/200000000000); (-436771/1000000, 109908154313/1000000000000); (-141463/200000, 50772224467/100000000000); (-436771/1000000, 148098303319/500000000000); (-89559/100000, 43649372827/100000000000); (-312523/500000, 112484045119/500000000000); (-89559/100000, 66599072827/100000000000); (-312523/500000, 227232545119/500000000000)` |
| 51 | 127 | v | 611127/1000000 | 52539/62500 | 307341594607/500000000000 | 52539/62500 | 614683/1000000 | 52539/62500 | `(32469/40000, -55151623991/100000000000); (32469/40000, -21005171429/25000000000); (32469/40000, -252043720907/500000000000); (32469/40000, -85294440683/125000000000); (1/1, -66211198731/100000000000); (1/1, -102764704581/100000000000); (1/1, -307341594607/500000000000); (1/1, -434897857057/500000000000); (32469/40000, -59012141977/100000000000); (32469/40000, -43940601851/50000000000); (32469/40000, -321362591749/500000000000); (32469/40000, -205248316787/250000000000); (1/1, -70071716717/100000000000); (1/1, -106625222567/100000000000); (1/1, -376660465449/500000000000); (1/1, -504216727899/500000000000)` |
| 52 | 129 | w | 412107/1000000 | 781853/1000000 | 412107/1000000 | 450479313/577375000 | 412107/1000000 | 39011/50000 | `(-13857/20000, 9181746207/40000000000); (-13857/20000, 7240992957/40000000000); (-13857/20000, 632745439/2500000000); (-13857/20000, 1277349031/10000000000); (-861717/1000000, 328738832847/1000000000000); (-861717/1000000, 349143067647/1000000000000); (-861717/1000000, 44036669159/125000000000); (-861717/1000000, 147926573411/500000000000); (-13857/20000, 462895923/1000000000); (-13857/20000, 1657508367/4000000000); (-13857/20000, 1351437939/2500000000); (-13857/20000, 4152119031/10000000000); (-861717/1000000, 1097834181/1953125000); (-861717/1000000, 36405958467/62500000000); (-861717/1000000, 79971294159/125000000000); (-861717/1000000, 291665073411/500000000000)` |
| 53 | 129 | k | 712523/1000000 | 1/1 | 715349254447/1000000000000 | 1/1 | 715349/1000000 | 1/1 | `(32469/40000, -12687148239/20000000000); (32469/40000, -106699413/156250000); (1/1, -14899063187/20000000000); (1/1, -17406328637/20000000000); (32469/40000, -111175563/125000000); (32469/40000, -3751693341/4000000000); (1/1, -5000001257/5000000000); (1/1, -11253635239/10000000000); (32469/40000, -604753507047/1000000000000); (32469/40000, -584349272247/1000000000000); (1/1, -715349254447/1000000000000); (1/1, -771789460897/1000000000000); (32469/40000, -230490684267/250000000000); (32469/40000, -225389625567/250000000000); (1/1, -258139621117/250000000000); (1/1, -544499345459/500000000000)` |
| 54 | 137 | b | 10441/100000 | 58493/100000 | 10441/100000 | 583523/1000000 | 10441/100000 | 583523/1000000 | `(-1/1, 313231/1000000); (-1/1, 583523/1000000)` |
| 55 | 149 | c | 135501/250000 | 476279/500000 | 271002/497783 | 476279/500000 | 544417/1000000 | 476279/500000 | `(73427/125000, -135501/250000); (497783/500000, -135501/250000)` |
| 56 | 152 | f | 313231/1000000 | 583523/1000000 | 313231/1000000 | 43223/74223 | 313231/1000000 | 29117/50000 | `(-222669/250000, 129669/250000); (-609/1000, 237/1000)` |
| 57 | 160 | q | 120647/1000000 | 62071/100000 | 1284390450/10552913803 | 62071/100000 | 121709/1000000 | 62071/100000 | `(26030210021/100000000000, -32396643/500000000); (1670815773/15625000000, -5687043/62500000); (22772327827/50000000000, -32396643/500000000); (1461700251/7812500000, -5687043/62500000); (12062647469/25000000000, -25687809/250000000); (164568004011/500000000000, -64475319/500000000); (10552913803/12500000000, -25687809/250000000); (143971044957/250000000000, -64475319/500000000)` |
| 58 | 901 | p | 112389/500000 | 350751/500000 | 1182809699/5253900000 | 350751/500000 | 225129/1000000 | 350751/500000 | `(614683/1000000, -16565905203/100000000000); (614683/1000000, -100462326023/250000000000); (614683/1000000, -162771437979/1000000000000); (614683/1000000, -99293345863/500000000000); (614683/1000000, -108694235947/250000000000); (614683/1000000, -33358841827/100000000000); (614683/1000000, -330700804219/1000000000000); (52539/62500, -1182809699/6250000000); (52539/62500, -106738214847/200000000000); (52539/62500, -147306604061/500000000000); (52539/62500, -13886074471/62500000000); (52539/62500, -566618713931/1000000000000); (52539/62500, -1116184119/3125000000); (52539/62500, -231271287181/500000000000)` |
| 59 | 0 | a | 54643/500000 | 391/1000 | 7750/70679 | 391/1000 | 2193/20000 | 391/1000 | `(440007/1000000, -93/1000); (-19553/500000, -93/1000); (212037/250000, -93/1000); (73807/200000, -93/1000)` |
| 60 | 7 | b | 10441/100000 | 583523/1000000 | 23250/221479 | 583523/1000000 | 6561/62500 | 583523/1000000 | `(238883/500000, -93/1000); (3069/15625, -93/1000); (221479/250000, -93/1000); (302283/500000, -93/1000)` |
| 61 | 29 | f | 313231/1000000 | 29117/50000 | 69750/221479 | 29117/50000 | 19683/62500 | 29117/50000 | `(238883/500000, -279/1000); (3069/15625, -279/1000); (221479/250000, -279/1000); (302283/500000, -279/1000)` |
| 62 | 29 | h | 73427/125000 | 497783/500000 | 342853581/582340000 | 497783/500000 | 588751/1000000 | 497783/500000 | `(19683/62500, -391914819/1250000000); (19683/62500, -25133553/62500000); (29117/50000, -342853581/1000000000); (29117/50000, -25334747/50000000)` |
| 63 | 32 | u | 10441/100000 | 187477/500000 | 10441/100000 | 8316884979/22258750000 | 10441/100000 | 186823/500000 | `(-17807/20000, 4128064539/62500000000); (-609/1000, -1409747511/62500000000); (-17807/20000, 10055045861/50000000000); (-609/1000, 1862977911/50000000000); (-17807/20000, 4287630621/31250000000); (-609/1000, 379681149/7812500000); (-17807/20000, 8316884979/25000000000); (-609/1000, 1055212751/6250000000)` |
| 64 | 36 | u | 10441/100000 | 186823/500000 | 23250/221479 | 186823/500000 | 6561/62500 | 186823/500000 | `(479101/1000000, -93/1000); (197751/1000000, -93/1000); (221479/250000, -93/1000); (302283/500000, -93/1000)` |
| 65 | 43 | e | 27331/250000 | 391/1000 | 46500/423791 | 391/1000 | 109723/1000000 | 391/1000 | `(439441/1000000, -93/1000); (-19553/500000, -93/1000); (423791/500000, -93/1000); (73807/200000, -93/1000)` |
| 66 | 68 | j | 13857/20000 | 861717/1000000 | 5849683551/8437000000 | 861717/1000000 | 86667/125000 | 861717/1000000 | `(588751/1000000, -21236257761/31250000000); (588751/1000000, -309488577623/500000000000); (497783/500000, -45141628737/62500000000); (497783/500000, -856363064491/1000000000000); (588751/1000000, -40604920311/62500000000); (588751/1000000, -452876749773/1000000000000); (497783/500000, -21637016763/31250000000); (497783/500000, -345131329509/500000000000)` |
| 67 | 71 | p | 225129/1000000 | 350751/500000 | 225129/1000000 | 497100392267/715349000000 | 225129/1000000 | 694907/1000000 | `(-715349/1000000, 6712897983/125000000000); (-715349/1000000, 21111739059/62500000000); (-715349/1000000, 84788919/244140625); (-715349/1000000, 392584621757/1000000000000); (-715349/1000000, 74196666993/1000000000000); (-715349/1000000, 358281308073/1000000000000); (-715349/1000000, 225905591367/500000000000); (-715349/1000000, 497100392267/1000000000000); (-1/1, 2089617681/25000000000); (-1/1, 503888230417/1000000000000); (-1/1, 942942339/2500000000); (-1/1, 55868502723/100000000000); (-1/1, 104078190369/1000000000000); (-1/1, 262190856773/500000000000); (-1/1, 48169270611/100000000000); (-1/1, 33160039887/50000000000)` |
| 68 | 80 | c | 544417/1000000 | 476279/500000 | 544417/1000000 | 14793421/15568800 | 544417/1000000 | 950197/1000000 | `(-18899/62500, 9201683913/40000000000); (-21107/1000000, 68901/40000000); (-18899/62500, 26173/125000); (-21107/1000000, -71893/1000000); (-670497/1000000, 23926203913/40000000000); (-19461/50000, 14793421/40000000); (-670497/1000000, 577497/1000000); (-19461/50000, 14811/50000)` |
| 69 | 113 | r | 32469/40000 | 1/1 | 61626088499/75703250000 | 1/1 | 25439/31250 | 1/1 | `(302813/500000, -2366780129/3906250000); (324349/1000000, -51359530369/125000000000); (302813/500000, -61626088499/125000000000); (324349/1000000, -1862432737/6250000000); (302813/500000, -41050714583/62500000000); (324349/1000000, -414430260719/1000000000000); (302813/500000, -605907663349/1000000000000); (324349/1000000, -18176324537/50000000000); (890277/1000000, -13914792391/15625000000); (609/1000, -86940905369/125000000000); (890277/1000000, -97207463499/125000000000); (609/1000, -3641501487/6250000000); (890277/1000000, -58841402083/62500000000); (609/1000, -699081260719/1000000000000); (890277/1000000, -890558663349/1000000000000); (609/1000, -32408874537/50000000000)` |
| 70 | 113 | w | 412107/1000000 | 39011/50000 | 15831011759/38333000000 | 39011/50000 | 206493/500000 | 39011/50000 | `(38333/125000, -29908182503/125000000000); (38333/125000, -8538092789/31250000000); (38333/125000, -15831011759/125000000000); (38333/125000, -26613203/125000000); (138283/1000000, -220790191561/1000000000000); (138283/1000000, -25922749781/125000000000); (138283/1000000, -108172825609/1000000000000); (138283/1000000, -147068653/1000000000); (38333/125000, -36524610347/125000000000); (38333/125000, -40768799/125000000); (138283/1000000, -273721614313/1000000000000); (138283/1000000, -260313421/1000000000)` |
| 71 | 113 | j | 86667/125000 | 861717/1000000 | 86667/125000 | 192499/223499 | 86667/125000 | 861297/1000000 | `(-303263/1000000, 190714129/1953125000); (-10993/500000, -4103979539/31250000000); (-303263/1000000, 210263/1000000); (-10993/500000, -35507/500000); (-670497/1000000, 3631872141/7812500000); (-19461/50000, 7372082961/31250000000); (-670497/1000000, 577497/1000000); (-19461/50000, 14811/50000); (-303263/1000000, 1397319103/31250000000); (-10993/500000, -11516173/62500000); (-670497/1000000, 12873381603/31250000000); (-19461/50000, 714747/3906250)` |
| 72 | 114 | q | 121709/1000000 | 62071/100000 | 121709/1000000 | 64064661257/104976000000 | 121709/1000000 | 15257/25000 | `(-19683/62500, -1001748951/1000000000000); (-29117/50000, 156437333461/1000000000000); (-19683/62500, 17764915617/500000000000); (-29117/50000, 150878063213/500000000000); (-19683/62500, 192193983771/1000000000000); (-29117/50000, 349633066183/1000000000000); (-19683/62500, 18806413443/500000000000); (-29117/50000, 151919561039/500000000000)` |
| 73 | 115 | v | 614683/1000000 | 52539/62500 | 614683/1000000 | 122103662701/145585000000 | 614683/1000000 | 838711/1000000 | `(-19683/62500, 4237045311/31250000000); (-29117/50000, 73256133091/250000000000); (-19683/62500, 3453079263/15625000000); (-29117/50000, 60902921003/125000000000); (-19683/62500, 123037859391/500000000000); (-29117/50000, 201757400597/500000000000); (-19683/62500, 55547088903/250000000000); (-29117/50000, 122103662701/250000000000)` |
| 74 | 127 | h | 588751/1000000 | 497783/500000 | 588751/1000000 | 108860111293/110100500000 | 588751/1000000 | 197747/200000 | `(-44317/62500, 1421983783/3906250000); (-220201/500000, 63267724957/250000000000); (-44317/62500, 4268729639/7812500000); (-220201/500000, 108860111293/250000000000); (-55939/62500, 14947793177/31250000000); (-313177/500000, 91843108261/250000000000); (-55939/62500, 21948668177/31250000000); (-313177/500000, 147850108261/250000000000); (-44317/62500, 10171159127/31250000000); (-220201/500000, 14481923083/125000000000); (-44317/62500, 15870207419/31250000000); (-220201/500000, 37278116251/125000000000); (-55939/62500, 343577051/781250000); (-313177/500000, 5753922947/25000000000); (-55939/62500, 259299463/390625000); (-313177/500000, 11354622947/25000000000)` |
| 75 | 127 | v | 614683/1000000 | 838711/1000000 | 61607711081/100000000000 | 838711/1000000 | 616077/1000000 | 838711/1000000 | `(25439/31250, -34613779213/62500000000); (25439/31250, -52339870141/62500000000); (25439/31250, -253298842429/500000000000); (25439/31250, -341375719213/500000000000); (1/1, -8291248667/12500000000); (1/1, -63830948311/62500000000); (1/1, -61607711081/100000000000); (1/1, -433304344573/500000000000); (25439/31250, -37023201487/62500000000); (25439/31250, -10949858483/12500000000); (25439/31250, -321906600011/500000000000); (25439/31250, -81996695359/100000000000); (1/1, -43865665609/62500000000); (1/1, -13248074117/12500000000); (1/1, -376646312987/500000000000); (1/1, -100382420431/100000000000)` |
| 76 | 129 | w | 206493/500000 | 39011/50000 | 206493/500000 | 22518802639/28889000000 | 206493/500000 | 155899/200000 | `(-86667/125000, 5806477801/25000000000); (-86667/125000, 22997030429/125000000000); (-86667/125000, 31975032917/125000000000); (-86667/125000, 3328489249/25000000000); (-861297/1000000, 331146318751/1000000000000); (-861297/1000000, 350045162767/1000000000000); (-861297/1000000, 354687470047/1000000000000); (-861297/1000000, 59841697859/200000000000); (-86667/125000, 57997336161/125000000000); (-86667/125000, 10392395517/25000000000); (-86667/125000, 67556407917/125000000000); (-86667/125000, 10444764249/25000000000); (-861297/1000000, 562865895999/1000000000000); (-861297/1000000, 116352948003/200000000000); (-861297/1000000, 639338470047/1000000000000); (-861297/1000000, 116771897859/200000000000)` |
| 77 | 129 | k | 715349/1000000 | 1/1 | 143273026559/200000000000 | 1/1 | 143273/200000 | 1/1 | `(25439/31250, -79550921501/125000000000); (25439/31250, -85586280077/125000000000); (1/1, -18647169949/25000000000); (1/1, -108568436417/125000000000); (25439/31250, -27828789251/31250000000); (25439/31250, -5867525779/6250000000); (1/1, -488281583/488281250); (1/1, -1754158399/1562500000); (25439/31250, -606885706843/1000000000000); (25439/31250, -587986862827/1000000000000); (1/1, -143273026559/200000000000); (1/1, -771844113547/1000000000000); (25439/31250, -115319851127/125000000000); (25439/31250, -180731993/200000000); (1/1, -129004779371/125000000000); (1/1, -27187930393/25000000000)` |
| 78 | 137 | b | 6561/62500 | 583523/1000000 | 6561/62500 | 29117/50000 | 6561/62500 | 29117/50000 | `(-1/1, 19683/62500); (-1/1, 29117/50000)` |
| 79 | 149 | c | 544417/1000000 | 950197/1000000 | 542004/988735 | 950197/1000000 | 548179/1000000 | 950197/1000000 | `(588751/1000000, -135501/250000); (197747/200000, -135501/250000)` |
| 80 | 152 | f | 19683/62500 | 29117/50000 | 19683/62500 | 172759/296759 | 19683/62500 | 582153/1000000 | `(-890277/1000000, 518277/1000000); (-609/1000, 237/1000)` |
| 81 | 160 | q | 121709/1000000 | 15257/25000 | 20429961000/167060785949 | 15257/25000 | 12229/100000 | 15257/25000 | `(262633107079/1000000000000, -64951293/1000000000); (108402945429/1000000000000, -91116843/1000000000); (455240332897/1000000000000, -64951293/1000000000); (187902406947/1000000000000, -91116843/1000000000); (96379187243/200000000000, -20429961/200000000); (65533154913/200000000000, -25663071/200000000); (167060785949/200000000000, -20429961/200000000); (113593200759/200000000000, -25663071/200000000)` |
| 82 | 901 | p | 225129/1000000 | 694907/1000000 | 11845282871/52419437500 | 694907/1000000 | 225971/1000000 | 694907/1000000 | `(616077/1000000, -10384581197/62500000000); (616077/1000000, -20093471831/50000000000); (616077/1000000, -8446028913/50000000000); (616077/1000000, -49752238363/250000000000); (616077/1000000, -10868127273/25000000000); (616077/1000000, -1289520417/3906250000); (616077/1000000, -16644225293/50000000000); (838711/1000000, -11845282871/62500000000); (838711/1000000, -26575906009/50000000000); (838711/1000000, -14928463091/50000000000); (838711/1000000, -55595045059/250000000000); (838711/1000000, -7054672181/12500000000); (838711/1000000, -11046514173/31250000000); (838711/1000000, -23126659471/50000000000)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 71:6 | ABH | lo | 93/1000 | occupants none |
| 71:8 | ABP | lo | 93/1000 | occupants none |
| 71:40 | AFH | lo | 279/1000 | occupants Q |
| 71:41 | AFH | hi | 102352394001/200000000000 | vertex maximum 102352394001/200000000000 |
| 71:44 | AFQ | lo | 93/1000 | occupants none |
| 71:66 | BCE | lo | 93/1000 | occupants none |
| 71:70 | BCH | lo | 326803/1000000 | earlier 46:70; BCH; lo; 326803/1000000 |
| 71:71 | BCH | hi | 167139917087/200000000000 | vertex maximum 167139917087/200000000000 |
| 71:72 | BCP | lo | 93/1000 | occupants none |
| 71:76 | BCR | lo | 93/1000 | occupants none |
| 71:80 | BEF | lo | 161663/500000 | earlier 46:80; BEF; lo; 161663/500000 |
| 71:83 | BEH | hi | 11574839633/12500000000 | vertex maximum 11574839633/12500000000 |
| 71:84 | BEP | lo | 93/1000 | occupants none |
| 71:86 | BEQ | lo | 309997/1000000 | earlier 46:86; BEQ; lo; 309997/1000000 |
| 71:90 | BES | lo | 113551/1000000 | earlier 46:90; BES; lo; 113551/1000000 |
| 71:92 | BFH | lo | 156021/500000 | earlier 46:92; BFH; lo; 156021/500000 |
| 71:93 | BFH | hi | 582153/1000000 | anchor cap BFH; expression {"f":1} |
| 71:94 | BFP | lo | 93/1000 | occupants none |
| 71:96 | BFQ | lo | 93/1000 | occupants none |
| 71:100 | BFS | lo | 62533/200000 | earlier 46:100; BFS; lo; 62533/200000 |
| 71:101 | BFS | hi | 3786992097/6250000000 | vertex maximum 3786992097/6250000000 |
| 71:105 | BHQ | hi | 360897/1000000 | earlier 46:105; BHQ; hi; 360897/1000000 |
| 71:106 | BHR | lo | 23167/62500 | earlier 46:106; BHR; lo; 23167/62500 |
| 71:108 | BHS | lo | 13857/20000 | occupants P, Q |
| 71:109 | BHS | hi | 171630909879/200000000000 | vertex maximum 171630909879/200000000000 |
| 71:112 | BPR | lo | 93/1000 | occupants none |
| 71:114 | BPS | lo | 93/1000 | occupants none |
| 71:116 | BQR | lo | 7187/25000 | earlier 46:116; BQR; lo; 7187/25000 |
| 71:117 | BQR | hi | 46916654629/62500000000 | vertex maximum 46916654629/62500000000 |
| 71:118 | BQS | lo | 297221/1000000 | earlier 46:118; BQS; lo; 297221/1000000 |
| 71:128 | CEQ | lo | 93/1000 | occupants none |
| 71:132 | CES | lo | 93/1000 | occupants none |
| 71:136 | CFP | lo | 93/1000 | occupants none |
| 71:144 | CHP | lo | 93/1000 | occupants none |
| 71:146 | CHQ | lo | 93/1000 | occupants none |
| 71:150 | CHS | lo | 10521/31250 | earlier 46:150; CHS; lo; 10521/31250 |
| 71:151 | CHS | hi | 8978570361/10000000000 | vertex maximum 8978570361/10000000000 |
| 71:158 | CQR | lo | 111957/1000000 | earlier 46:158; CQR; lo; 111957/1000000 |
| 71:162 | CRS | lo | 93/1000 | occupants none |
| 71:176 | EHQ | lo | 93/1000 | occupants none |
| 71:180 | EHS | lo | 171237/500000 | earlier 46:180; EHS; lo; 171237/500000 |
| 71:181 | EHS | hi | 205958594829/250000000000 | vertex maximum 205958594829/250000000000 |
| 71:192 | ERS | lo | 93/1000 | occupants none |
| 71:194 | FHP | lo | 279/1000 | occupants Q |
| 71:196 | FHQ | lo | 93/1000 | occupants none |
| 71:198 | FHR | lo | 279/1000 | occupants Q |
| 71:199 | FHR | hi | 102714224409/200000000000 | vertex maximum 102714224409/200000000000 |
| 71:200 | FHS | lo | 93/1000 | occupants none |
| 71:210 | FQS | lo | 93/1000 | occupants none |
| 71:212 | FRS | lo | 93/1000 | occupants none |
| 71:214 | HPQ | lo | 93/1000 | occupants none |
| 71:218 | HPS | lo | 288741/1000000 | earlier 46:218; HPS; lo; 288741/1000000 |
| 71:220 | HQR | lo | 93/1000 | occupants none |
| 71:222 | HQS | lo | 93/1000 | occupants none |
| 71:225 | HRS | hi | 112526973441/200000000000 | vertex maximum 112526973441/200000000000 |
| 71:228 | PQS | lo | 102741/1000000 | earlier 46:226; PQS; lo; 102741/1000000 |
| 71:232 | QRS | lo | 24213/250000 | earlier 46:230; QRS; lo; 24213/250000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 26 | fan | HRS = HQR + QRS + HQS | point Q |
| 189 | plu | AHQ * BFH = ABH * FHQ + AFH * BHQ | circuit HABFQ |
| 194 | plu | AHR * BFH = ABH * FHR + AFH * BHR | circuit HABFR |
| 199 | plu | AHS * BFH = ABH * FHS + AFH * BHS | circuit HABFS |
| 497 | plu | AHQ * HRS = AHR * HQS + AHS * HQR | circuit HAQRS |
| 542 | plu | BCS * BEH = BCE * BHS + BCH * BES | circuit BCEHS |
| 546 | plu | BES * CHS = BCS * EHS + BHS * CES | circuit SBCEH |
| 650 | plu | BHQ * CQS = BCQ * HQS + BQS * CHQ | circuit QBCHS |
| 756 | plu | BRS * EHS = BES * HRS + BHS * ERS | circuit SBEHR |
| 787 | plu | BFS * BHP = BFH * BPS + BFP * BHS | circuit BFHPS |
| 795 | plu | BHQ * FQR = BFQ * HQR + BQR * FHQ | circuit QBFHR |
| 832 | plu | BHP * BQS = BHQ * BPS + BHS * BPQ | circuit BHPQS |
| 835 | plu | BHQ * PQS = BPQ * HQS + BQS * HPQ | circuit QBHPS |
| 843 | plu | BHQ * HRS = BHR * HQS + BHS * HQR | circuit HBQRS |
| 844 | plu | BHQ * QRS = BQR * HQS + BQS * HQR | circuit QBHRS |
| 2193 | support | BEF * BFS >= 1023/1000 * (BEF - BES) | pentagon BERSF |
| 2213 | support | BEQ * BQS >= 1023/1000 * (BEQ - BES) | pentagon BERSQ |
| 2297 | support | CHS * HRS >= 1023/1000 * (CHS - CHR) | pentagon HCERS |
| 2321 | support | FHP * FHR >= 1023/1000 * (FHP - HPR) | pentagon HPCRF |
| 2557 | bary | outer AFH; fans FHQ, AHQ, AFQ; target BHQ; sign -1; vertices ABH 1; BFH -1; none 0 | container AFH; inner Q; line BH |
| 2558 | bary | outer AFH; fans FHQ, AHQ, AFQ; target BPQ; sign 1; vertices ABP 1; BFP 1; BHP 1 | container AFH; inner Q; line BP |
| 2694 | bary | outer BCH; fans CHP, BHP, BCP; target EPQ; sign 1; vertices BEQ 1; CEQ 1; EHQ 1 | container BCH; inner P; line EQ |
| 2709 | bary | outer BCH; fans CHP, BHP, BCP; target PQR; sign -1; vertices BQR -1; CQR -1; HQR -1 | container BCH; inner P; line QR |
| 2881 | bary | outer BFH; fans FHQ, BHQ, BFQ; target AHQ; sign -1; vertices ABH -1; AFH -1; none 0 | container BFH; inner Q; line AH |
| 3063 | bary | outer BHS; fans HPS, BPS, BHP; target CPR; sign 1; vertices BCR 1; CHR 1; CRS 1 | container BHS; inner P; line CR |
| 3107 | bary | outer BHS; fans HQS, BQS, BHQ; target CQR; sign 1; vertices BCR 1; CHR 1; CRS 1 | container BHS; inner Q; line CR |
| 3160 | bary | outer BQR; fans PQR, BPR, BPQ; target FPS; sign -1; vertices BFS -1; FQS -1; FRS -1 | container BQR; inner P; line FS |
| 3179 | bary | outer BQS; fans PQS, BPS, BPQ; target BHP; sign -1; vertices none 0; BHQ -1; BHS -1 | container BQS; inner P; line BH |
| 3450 | bary | outer FHR; fans HQR, FQR, FHQ; target CPQ; sign -1; vertices CFP -1; CHP -1; CPR -1 | container FHR; inner Q; line CP |
| 3531 | bary | outer HRS; fans QRS, HQS, HQR; target BQS; sign 1; vertices BHS 1; BRS -1; none 0 | container HRS; inner Q; line BS |
| 3614 | four | 1 * AFH + -1 * AHQ + -1 * AFQ + -1 * FHQ = 0 | vertices AFHQ |
| 3637 | four | 1 * BCH + -1 * BHP + -1 * BCP + -1 * CHP = 0 | vertices BCHP |
| 3641 | four | 1 * BCP + 1 * BPQ + -1 * BCQ + 1 * CPQ = 0 | vertices BCPQ |
| 3656 | four | 1 * BEP + 1 * BPQ + -1 * BEQ + 1 * EPQ = 0 | vertices BEPQ |
| 3663 | four | 1 * BFH + -1 * BHQ + -1 * BFQ + -1 * FHQ = 0 | vertices BFHQ |
| 3668 | four | -1 * BFP + -1 * BPS + 1 * BFS + -1 * FPS = 0 | vertices BFPS |
| 3673 | four | -1 * BHP + -1 * BPR + 1 * BHR + -1 * HPR = 0 | vertices BHPR |
| 3678 | four | 1 * BPQ + -1 * BQR + 1 * BPR + 1 * PQR = 0 | vertices BPQR |
| 3679 | four | 1 * BPQ + -1 * BQS + 1 * BPS + 1 * PQS = 0 | vertices BPQS |
| 3711 | four | -1 * CHQ + -1 * CQS + 1 * CHS + -1 * HQS = 0 | vertices CHQS |
| 3748 | four | 1 * HPQ + 1 * HQS + -1 * HPS + 1 * PQS = 0 | vertices HPQS |
| 3750 | four | -1 * HQR + 1 * HRS + -1 * HQS + -1 * QRS = 0 | vertices HQRS |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 71:244 | HRS | lo | 70713/250000 | 70713/250000 | 26 | 71:220, 71:232, 71:222 |
| 71:249 | AHR | lo | 222217/1000000 | 490017/2205125 | 194 | 71:6, 71:198, 71:40, 71:106, 71:93 |
| 71:251 | AHS | lo | 346909/1000000 | 1346361/3881020 | 199 | 71:6, 71:200, 71:40, 71:108, 71:93 |
| 71:253 | AHQ | lo | 11759/125000 | 3528581200/37508991147 | 497 | 71:249, 71:222, 71:251, 71:220, 71:225 |
| 71:254 | BCS | lo | 5483/50000 | 101543857453/925987170640 | 542 | 71:66, 71:108, 71:70, 71:90, 71:83 |
| 71:255 | BES | lo | 113593/1000000 | 41459654/364982535 | 546 | 71:254, 71:180, 71:108, 71:132, 71:151 |
| 71:260 | BRS | lo | 58607/500000 | 8047088103/68652864943 | 756 | 71:255, 71:244, 71:108, 71:192, 71:181 |
| 71:261 | BHP | lo | 38559/250000 | 3973425/25761851 | 787 | 71:92, 71:114, 71:94, 71:108, 71:101 |
| 71:263 | FQR | lo | 49023/500000 | 294872/3007475 | 795 | 71:96, 71:220, 71:116, 71:196, 71:105 |
| 71:265 | BHQ | lo | 175793/1000000 | 6593836400/37508991147 | 843 | 71:106, 71:222, 71:108, 71:220, 71:225 |
| 71:267 | QRS | lo | 9417/62500 | 18125731/120299000 | 844 | 71:116, 71:222, 71:118, 71:220, 71:105 |
| 71:273 | BES | lo | 131821/1000000 | 140472100957563/1065625000000000 | 2193 | 71:80, 71:101 |
| 71:274 | CHR | lo | 151507/1000000 | 322900104142413/2131250000000000 | 2297 | 71:150, 71:225 |
| 71:275 | HPR | lo | 27787/200000 | 305657326773/2200000000000 | 2321 | 71:194, 71:199 |
| 71:283 | BHQ | hi | 353669/1000000 | 12066287208288051/34117464667000000 | 2557 | 71:41, 71:196, 71:253, 71:44, 71:6, 71:93 |
| 71:284 | BPQ | lo | 1627/15625 | 3552587414031/34117464667000 | 2558 | 71:41, 71:196, 71:253, 71:44, 71:8, 71:94, 71:261 |
| 71:291 | EPQ | lo | 29287/250000 | 1780014226281/15194537917000 | 2694 | 71:71, 71:144, 71:261, 71:72, 71:86, 71:128, 71:176 |
| 71:294 | PQR | lo | 118141/1000000 | 19746110659491/167139917087000 | 2709 | 71:71, 71:144, 71:261, 71:72, 71:116, 71:158, 71:220 |
| 71:305 | AHQ | lo | 49553/500000 | 836163/8437000 | 2881 | 71:93, 71:196, 71:265, 71:96, 71:6, 71:40 |
| 71:331 | CPR | lo | 4967/50000 | 5683301606249/57210303293000 | 3063 | 71:109, 71:218, 71:114, 71:261, 71:76, 71:274, 71:162 |
| 71:335 | CQR | lo | 113263/1000000 | 19439576428147/171630909879000 | 3107 | 71:109, 71:222, 71:118, 71:265, 71:76, 71:274, 71:162 |
| 71:340 | FPS | lo | 127571/1000000 | 11970428106619/93833309258000 | 3160 | 71:117, 71:294, 71:112, 71:284, 71:100, 71:210, 71:212 |
| 71:366 | CPQ | lo | 23537/250000 | 3223448956679/34238074803000 | 3450 | 71:199, 71:220, 71:263, 71:196, 71:136, 71:144, 71:331 |
| 71:376 | BQS | hi | 111017/200000 | 4164133636703365841213/7501798229400000000000 | 3531 | 71:225, 71:267, 71:222, 71:220, 71:109, 71:260 |
| 71:386 | AFH | lo | 142553/500000 | 142553/500000 | 3614 | 71:305, 71:44, 71:196 |
| 71:389 | BCQ | lo | 72819/250000 | 72819/250000 | 3641 | 71:72, 71:284, 71:366 |
| 71:392 | BEQ | lo | 78569/250000 | 78569/250000 | 3656 | 71:84, 71:284, 71:291 |
| 71:393 | BFH | lo | 361793/1000000 | 361793/1000000 | 3663 | 71:265, 71:96, 71:196 |
| 71:395 | BFS | lo | 313571/1000000 | 313571/1000000 | 3668 | 71:94, 71:114, 71:340 |
| 71:396 | BHR | lo | 386171/1000000 | 386171/1000000 | 3673 | 71:261, 71:112, 71:275 |
| 71:397 | BQR | lo | 315269/1000000 | 315269/1000000 | 3678 | 71:284, 71:112, 71:294 |
| 71:398 | BQS | lo | 299869/1000000 | 299869/1000000 | 3679 | 71:284, 71:114, 71:228 |
| 71:404 | HRS | lo | 10521/31250 | 10521/31250 | 3750 | 71:220, 71:222, 71:267 |
| 71:407 | AHQ | lo | 2019/20000 | 29384319529/291076500000 | 189 | 71:6, 71:196, 71:386, 71:265, 71:93 |
| 71:416 | CQS | lo | 77723/500000 | 10995297/70733800 | 650 | 71:389, 71:222, 71:398, 71:146, 71:283 |
| 71:421 | BRS | lo | 33021/250000 | 9067957476/68652864943 | 756 | 71:273, 71:404, 71:108, 71:192, 71:181 |
| 71:422 | BHP | lo | 10117/62500 | 817348325/5049322796 | 787 | 71:393, 71:114, 71:94, 71:108, 71:101 |
| 71:424 | PQS | lo | 53117/500000 | 37571721/353669000 | 835 | 71:284, 71:222, 71:398, 71:214, 71:283 |
| 71:425 | BHQ | lo | 35671/200000 | 6689930200/37508991147 | 843 | 71:396, 71:222, 71:108, 71:220, 71:225 |
| 71:427 | QRS | lo | 32351/200000 | 28603917/176834500 | 844 | 71:397, 71:222, 71:398, 71:220, 71:283 |
| 71:436 | BES | lo | 35937/250000 | 7352722727/51150000000 | 2213 | 71:392, 71:376 |
| 71:440 | BPQ | lo | 21103/200000 | 3599930614031/34117464667000 | 2558 | 71:41, 71:196, 71:407, 71:44, 71:8, 71:94, 71:422 |
| 71:445 | EPQ | lo | 14703/125000 | 1787249626281/15194537917000 | 2694 | 71:71, 71:144, 71:422, 71:72, 71:392, 71:128, 71:176 |
| 71:448 | PQR | lo | 121659/1000000 | 1564170627407/12856916699000 | 2709 | 71:71, 71:144, 71:422, 71:72, 71:397, 71:335, 71:220 |
| 71:458 | AHQ | lo | 20441/200000 | 540900733/5292300000 | 2881 | 71:93, 71:196, 71:425, 71:96, 71:6, 71:386 |
| 71:464 | CQR | lo | 28361/250000 | 19470561735347/171630909879000 | 3107 | 71:109, 71:222, 71:398, 71:425, 71:76, 71:274, 71:162 |
| 71:466 | FPS | lo | 128747/1000000 | 929292590163/7217946866000 | 3160 | 71:117, 71:448, 71:112, 71:440, 71:395, 71:210, 71:212 |
| 71:484 | BQS | hi | 552627/1000000 | 1381898278901121947071/2500599409800000000000 | 3531 | 71:225, 71:427, 71:222, 71:220, 71:109, 71:421 |
| 71:489 | AFH | lo | 57641/200000 | 57641/200000 | 3614 | 71:458, 71:44, 71:196 |
| 71:491 | BCQ | lo | 292663/1000000 | 292663/1000000 | 3641 | 71:72, 71:440, 71:366 |
| 71:494 | BEQ | lo | 316139/1000000 | 316139/1000000 | 3656 | 71:84, 71:440, 71:445 |
| 71:497 | BFS | lo | 314747/1000000 | 314747/1000000 | 3668 | 71:94, 71:114, 71:466 |
| 71:498 | BHR | lo | 393807/1000000 | 393807/1000000 | 3673 | 71:422, 71:112, 71:275 |
| 71:499 | BQR | lo | 160087/500000 | 160087/500000 | 3678 | 71:440, 71:112, 71:448 |
| 71:500 | BQS | lo | 304749/1000000 | 304749/1000000 | 3679 | 71:440, 71:114, 71:424 |
| 71:504 | CHS | lo | 170723/500000 | 170723/500000 | 3711 | 71:146, 71:416, 71:222 |
| 71:508 | HPS | lo | 146117/500000 | 146117/500000 | 3748 | 71:214, 71:222, 71:424 |
| 71:509 | HRS | lo | 69551/200000 | 69551/200000 | 3750 | 71:220, 71:222, 71:427 |
| 71:513 | AHQ | lo | 51577/500000 | 2402072111/23286120000 | 189 | 71:6, 71:196, 71:489, 71:425, 71:93 |
| 71:522 | CQS | lo | 78547/500000 | 13889829/88417250 | 650 | 71:491, 71:222, 71:500, 71:146, 71:283 |
| 71:526 | BRS | lo | 34723/250000 | 9535344645/68652864943 | 756 | 71:436, 71:509, 71:108, 71:192, 71:181 |
| 71:528 | FQR | lo | 108647/1000000 | 19212591/176834500 | 795 | 71:96, 71:220, 71:499, 71:196, 71:283 |
| 71:529 | BHP | lo | 162303/1000000 | 119590777/736836000 | 832 | 71:425, 71:114, 71:108, 71:440, 71:484 |
| 71:530 | PQS | lo | 53941/500000 | 4769319/44208625 | 835 | 71:440, 71:222, 71:500, 71:214, 71:283 |
| 71:531 | BHQ | lo | 179617/1000000 | 2245757800/12502997049 | 843 | 71:498, 71:222, 71:108, 71:220, 71:225 |
| 71:533 | QRS | lo | 20541/125000 | 1096563/6673000 | 844 | 71:499, 71:222, 71:500, 71:220, 71:283 |
| 71:541 | BES | lo | 145359/1000000 | 49567749949/341000000000 | 2213 | 71:494, 71:484 |
| 71:542 | CHR | lo | 30731/200000 | 5239661104410719/34100000000000000 | 2297 | 71:504, 71:225 |
| 71:545 | BPQ | lo | 52797/500000 | 277123293387/2624420359000 | 2558 | 71:41, 71:196, 71:513, 71:44, 71:8, 71:94, 71:529 |
| 71:549 | EPQ | lo | 117831/1000000 | 19694397689091/167139917087000 | 2694 | 71:71, 71:144, 71:529, 71:72, 71:494, 71:128, 71:176 |
| 71:552 | PQR | lo | 122251/1000000 | 1857552108681/15194537917000 | 2709 | 71:71, 71:144, 71:529, 71:72, 71:499, 71:464, 71:220 |
| 71:561 | AHQ | lo | 103779/1000000 | 12083103497/116430600000 | 2881 | 71:93, 71:196, 71:531, 71:96, 71:6, 71:489 |
| 71:565 | CPR | lo | 99573/1000000 | 5696619206249/57210303293000 | 3063 | 71:109, 71:508, 71:114, 71:529, 71:76, 71:542, 71:162 |
| 71:566 | CQR | lo | 114539/1000000 | 6552861579249/57210303293000 | 3107 | 71:109, 71:222, 71:500, 71:531, 71:76, 71:542, 71:162 |
| 71:568 | FPS | lo | 16139/125000 | 12115096823119/93833309258000 | 3160 | 71:117, 71:552, 71:112, 71:545, 71:497, 71:210, 71:212 |
| 71:570 | BHP | lo | 81307/500000 | 299550613/1842090000 | 3179 | 71:484, 71:530, 71:114, 71:545, 71:531, 71:108 |
| 71:586 | CPQ | lo | 9419/100000 | 1074964518893/11412691601000 | 3450 | 71:199, 71:220, 71:528, 71:196, 71:136, 71:144, 71:565 |
| 71:589 | BQS | hi | 275751/500000 | 4137252916703365841213/7501798229400000000000 | 3531 | 71:225, 71:533, 71:222, 71:220, 71:109, 71:526 |
| 71:594 | AFH | lo | 289779/1000000 | 289779/1000000 | 3614 | 71:561, 71:44, 71:196 |
| 71:597 | BCQ | lo | 18299/62500 | 18299/62500 | 3641 | 71:72, 71:545, 71:586 |
| 71:600 | BEQ | lo | 12657/40000 | 12657/40000 | 3656 | 71:84, 71:545, 71:549 |
| 71:603 | BFS | lo | 39389/125000 | 39389/125000 | 3668 | 71:94, 71:114, 71:568 |
| 71:604 | BHR | lo | 394549/1000000 | 394549/1000000 | 3673 | 71:570, 71:112, 71:275 |
| 71:605 | BQR | lo | 64169/200000 | 64169/200000 | 3678 | 71:545, 71:112, 71:552 |
| 71:606 | BQS | lo | 76619/250000 | 76619/250000 | 3679 | 71:545, 71:114, 71:530 |
| 71:610 | CHS | lo | 171547/500000 | 171547/500000 | 3711 | 71:146, 71:522, 71:222 |
| 71:614 | HPS | lo | 146941/500000 | 146941/500000 | 3748 | 71:214, 71:222, 71:530 |
| 71:615 | HRS | lo | 43791/125000 | 43791/125000 | 3750 | 71:220, 71:222, 71:533 |
| 71:619 | AHQ | lo | 20853/200000 | 20232744881/194051000000 | 189 | 71:6, 71:196, 71:594, 71:531, 71:93 |
| 71:628 | CQS | lo | 7879/50000 | 2786559/17683450 | 650 | 71:597, 71:222, 71:606, 71:146, 71:283 |
| 71:632 | BRS | lo | 70013/500000 | 9613198146/68652864943 | 756 | 71:541, 71:615, 71:108, 71:192, 71:181 |
| 71:633 | FQR | lo | 108823/1000000 | 7697517/70733800 | 795 | 71:96, 71:220, 71:605, 71:196, 71:283 |
| 71:634 | BHP | lo | 81473/500000 | 299550613/1838340000 | 832 | 71:531, 71:114, 71:108, 71:545, 71:589 |
| 71:635 | PQS | lo | 27089/250000 | 3832251/35366900 | 835 | 71:545, 71:222, 71:606, 71:214, 71:283 |
| 71:636 | BHQ | lo | 8987/50000 | 6741873800/37508991147 | 843 | 71:604, 71:222, 71:108, 71:220, 71:225 |
| 71:638 | QRS | lo | 82479/500000 | 58340853/353669000 | 844 | 71:605, 71:222, 71:606, 71:220, 71:283 |
| 71:646 | BES | lo | 145839/1000000 | 994625031/6820000000 | 2213 | 71:600, 71:589 |
| 71:647 | CHR | lo | 154397/1000000 | 5264950495705591/34100000000000000 | 2297 | 71:610, 71:225 |
| 71:650 | BPQ | lo | 10571/100000 | 3606589414031/34117464667000 | 2558 | 71:41, 71:196, 71:619, 71:44, 71:8, 71:94, 71:634 |
| 71:654 | EPQ | lo | 117863/1000000 | 19699717289091/167139917087000 | 2694 | 71:71, 71:144, 71:634, 71:72, 71:600, 71:128, 71:176 |
| 71:657 | PQR | lo | 24511/200000 | 20483868067891/167139917087000 | 2709 | 71:71, 71:144, 71:634, 71:72, 71:605, 71:566, 71:220 |
| 71:666 | AHQ | lo | 52163/500000 | 1012231291/9702550000 | 2881 | 71:93, 71:196, 71:636, 71:96, 71:6, 71:594 |
| 71:670 | CPR | lo | 99653/1000000 | 5701219606249/57210303293000 | 3063 | 71:109, 71:614, 71:114, 71:634, 71:76, 71:647, 71:162 |
| 71:671 | CQR | lo | 57463/500000 | 19725016013147/171630909879000 | 3107 | 71:109, 71:222, 71:606, 71:636, 71:76, 71:647, 71:162 |
| 71:673 | FPS | lo | 64631/500000 | 6064557390497/46916654629000 | 3160 | 71:117, 71:657, 71:112, 71:650, 71:603, 71:210, 71:212 |
| 71:675 | BHP | lo | 20389/125000 | 6663481/40852000 | 3179 | 71:589, 71:635, 71:114, 71:650, 71:636, 71:108 |
| 71:690 | CPQ | lo | 23551/250000 | 3225389556679/34238074803000 | 3450 | 71:199, 71:220, 71:633, 71:196, 71:136, 71:144, 71:670 |
| 71:693 | BQS | hi | 110263/200000 | 4135846756703365841213/7501798229400000000000 | 3531 | 71:225, 71:638, 71:222, 71:220, 71:109, 71:632 |
| 71:698 | AFH | lo | 145163/500000 | 145163/500000 | 3614 | 71:666, 71:44, 71:196 |
| 71:701 | BCQ | lo | 146457/500000 | 146457/500000 | 3641 | 71:72, 71:650, 71:690 |
| 71:704 | BEQ | lo | 316573/1000000 | 316573/1000000 | 3656 | 71:84, 71:650, 71:654 |
| 71:707 | BFS | lo | 157631/500000 | 157631/500000 | 3668 | 71:94, 71:114, 71:673 |
| 71:708 | BHR | lo | 395047/1000000 | 395047/1000000 | 3673 | 71:675, 71:112, 71:275 |
| 71:709 | BQR | lo | 64253/200000 | 64253/200000 | 3678 | 71:650, 71:112, 71:657 |
| 71:710 | BQS | lo | 153533/500000 | 153533/500000 | 3679 | 71:650, 71:114, 71:635 |
| 71:714 | CHS | lo | 17179/50000 | 17179/50000 | 3711 | 71:146, 71:628, 71:222 |
| 71:718 | HPS | lo | 73589/250000 | 73589/250000 | 3748 | 71:214, 71:222, 71:635 |
| 71:719 | HRS | lo | 175479/500000 | 175479/500000 | 3750 | 71:220, 71:222, 71:638 |
| 71:723 | AHQ | lo | 20899/200000 | 1520804881/14553825000 | 189 | 71:6, 71:196, 71:698, 71:636, 71:93 |
| 71:732 | CQS | lo | 157769/1000000 | 2789907/17683450 | 650 | 71:701, 71:222, 71:710, 71:146, 71:283 |
| 71:736 | BRS | lo | 140341/1000000 | 19269735627/137305729886 | 756 | 71:646, 71:719, 71:108, 71:192, 71:181 |
| 71:737 | FQR | lo | 54467/500000 | 7705329/70733800 | 795 | 71:96, 71:220, 71:709, 71:196, 71:283 |
| 71:738 | BHP | lo | 5099/31250 | 179913987/1102630000 | 832 | 71:636, 71:114, 71:108, 71:650, 71:693 |
| 71:739 | PQS | lo | 54271/500000 | 4798521/44208625 | 835 | 71:650, 71:222, 71:710, 71:214, 71:283 |
| 71:740 | BHQ | lo | 89911/500000 | 6744961400/37508991147 | 843 | 71:708, 71:222, 71:108, 71:220, 71:225 |
| 71:742 | QRS | lo | 20653/125000 | 58434783/353669000 | 844 | 71:709, 71:222, 71:710, 71:220, 71:283 |
| 71:750 | BES | lo | 29193/200000 | 29864547101/204600000000 | 2213 | 71:704, 71:693 |
| 71:751 | CHR | lo | 19327/125000 | 527240841085687/3410000000000000 | 2297 | 71:714, 71:225 |
| 71:754 | BPQ | lo | 105751/1000000 | 3607965814031/34117464667000 | 2558 | 71:41, 71:196, 71:723, 71:44, 71:8, 71:94, 71:738 |
| 71:758 | EPQ | lo | 2947/25000 | 19702470089091/167139917087000 | 2694 | 71:71, 71:144, 71:738, 71:72, 71:704, 71:128, 71:176 |
| 71:761 | PQR | lo | 122683/1000000 | 20505265602691/167139917087000 | 2709 | 71:71, 71:144, 71:738, 71:72, 71:709, 71:671, 71:220 |
| 71:770 | AHQ | lo | 13067/125000 | 15214000493/145538250000 | 2881 | 71:93, 71:196, 71:740, 71:96, 71:6, 71:698 |
| 71:774 | CPR | lo | 99677/1000000 | 5702577406249/57210303293000 | 3063 | 71:109, 71:718, 71:114, 71:738, 71:76, 71:751, 71:162 |
| 71:775 | CQR | lo | 115047/1000000 | 19745710349947/171630909879000 | 3107 | 71:109, 71:222, 71:710, 71:740, 71:76, 71:751, 71:162 |
| 71:777 | FPS | lo | 32331/250000 | 3033742219811/23458327314500 | 3160 | 71:117, 71:761, 71:112, 71:754, 71:707, 71:210, 71:212 |
| 71:779 | BHP | lo | 163233/1000000 | 1799860527/11026300000 | 3179 | 71:693, 71:739, 71:114, 71:754, 71:740, 71:108 |
| 71:794 | CPQ | lo | 94209/1000000 | 3225538356679/34238074803000 | 3450 | 71:199, 71:220, 71:737, 71:196, 71:136, 71:144, 71:774 |
| 71:797 | BQS | hi | 275631/500000 | 4135456156703365841213/7501798229400000000000 | 3531 | 71:225, 71:742, 71:222, 71:220, 71:109, 71:736 |
| 71:802 | AFH | lo | 36317/125000 | 36317/125000 | 3614 | 71:770, 71:44, 71:196 |
| 71:805 | BCQ | lo | 1831/6250 | 1831/6250 | 3641 | 71:72, 71:754, 71:794 |
| 71:808 | BEQ | lo | 316631/1000000 | 316631/1000000 | 3656 | 71:84, 71:754, 71:758 |
| 71:811 | BFS | lo | 78831/250000 | 78831/250000 | 3668 | 71:94, 71:114, 71:777 |
| 71:812 | BHR | lo | 12349/31250 | 12349/31250 | 3673 | 71:779, 71:112, 71:275 |
| 71:813 | BQR | lo | 160717/500000 | 160717/500000 | 3678 | 71:754, 71:112, 71:761 |
| 71:814 | BQS | lo | 307293/1000000 | 307293/1000000 | 3679 | 71:754, 71:114, 71:739 |
| 71:818 | CHS | lo | 343769/1000000 | 343769/1000000 | 3711 | 71:146, 71:732, 71:222 |
| 71:822 | HPS | lo | 147271/500000 | 147271/500000 | 3748 | 71:214, 71:222, 71:739 |
| 71:823 | HRS | lo | 43903/125000 | 43903/125000 | 3750 | 71:220, 71:222, 71:742 |
| 71:827 | AHQ | lo | 523/5000 | 3805860287/36384562500 | 189 | 71:6, 71:196, 71:802, 71:740, 71:93 |
| 71:836 | CQS | lo | 157841/1000000 | 55823529/353669000 | 650 | 71:805, 71:222, 71:814, 71:146, 71:283 |
| 71:840 | BRS | lo | 70221/500000 | 9641788430/68652864943 | 756 | 71:750, 71:823, 71:108, 71:192, 71:181 |
| 71:841 | FQR | lo | 54489/500000 | 19271181/176834500 | 795 | 71:96, 71:220, 71:813, 71:196, 71:283 |
| 71:842 | BHP | lo | 163249/1000000 | 599953509/3675080000 | 832 | 71:740, 71:114, 71:108, 71:754, 71:797 |
| 71:843 | PQS | lo | 108613/1000000 | 9603273/88417250 | 835 | 71:754, 71:222, 71:814, 71:214, 71:283 |
| 71:844 | BHQ | lo | 89921/500000 | 6745711600/37508991147 | 843 | 71:812, 71:222, 71:108, 71:220, 71:225 |
| 71:846 | QRS | lo | 10333/62500 | 58471611/353669000 | 844 | 71:813, 71:222, 71:814, 71:220, 71:283 |
| 71:854 | BES | lo | 18251/125000 | 24894479113/170500000000 | 2213 | 71:808, 71:797 |
| 71:855 | CHR | lo | 154701/1000000 | 10550617422386957/68200000000000000 | 2297 | 71:818, 71:225 |
| 71:858 | BPQ | lo | 52883/500000 | 3608468014031/34117464667000 | 2558 | 71:41, 71:196, 71:827, 71:44, 71:8, 71:94, 71:842 |
| 71:862 | EPQ | lo | 58943/500000 | 19703548889091/167139917087000 | 2694 | 71:71, 71:144, 71:842, 71:72, 71:808, 71:128, 71:176 |
| 71:865 | PQR | lo | 122727/1000000 | 20512714829691/167139917087000 | 2709 | 71:71, 71:144, 71:842, 71:72, 71:813, 71:775, 71:220 |
| 71:874 | AHQ | lo | 10461/100000 | 3806223457/36384562500 | 2881 | 71:93, 71:196, 71:844, 71:96, 71:6, 71:802 |
| 71:878 | CPR | lo | 49843/500000 | 5703104406249/57210303293000 | 3063 | 71:109, 71:822, 71:114, 71:842, 71:76, 71:855, 71:162 |
| 71:879 | CQR | lo | 57547/500000 | 6584577232449/57210303293000 | 3107 | 71:109, 71:222, 71:814, 71:844, 71:76, 71:855, 71:162 |
| 71:881 | FPS | lo | 129347/1000000 | 6068571227247/46916654629000 | 3160 | 71:117, 71:865, 71:112, 71:858, 71:811, 71:210, 71:212 |
| 71:883 | BHP | lo | 163271/1000000 | 300017597/1837540000 | 3179 | 71:797, 71:843, 71:114, 71:858, 71:844, 71:108 |
| 71:898 | CPQ | lo | 9421/100000 | 3225594156679/34238074803000 | 3450 | 71:199, 71:220, 71:841, 71:196, 71:136, 71:144, 71:878 |
| 71:901 | BQS | hi | 275623/500000 | 1378443638901121947071/2500599409800000000000 | 3531 | 71:225, 71:846, 71:222, 71:220, 71:109, 71:840 |
| 71:906 | AFH | lo | 29061/100000 | 29061/100000 | 3614 | 71:874, 71:44, 71:196 |
| 71:909 | BCQ | lo | 18311/62500 | 18311/62500 | 3641 | 71:72, 71:858, 71:898 |
| 71:912 | BEQ | lo | 79163/250000 | 79163/250000 | 3656 | 71:84, 71:858, 71:862 |
| 71:915 | BFS | lo | 315347/1000000 | 315347/1000000 | 3668 | 71:94, 71:114, 71:881 |
| 71:916 | BHR | lo | 197603/500000 | 197603/500000 | 3673 | 71:883, 71:112, 71:275 |
| 71:917 | BQR | lo | 321493/1000000 | 321493/1000000 | 3678 | 71:858, 71:112, 71:865 |
| 71:918 | BQS | lo | 307379/1000000 | 307379/1000000 | 3679 | 71:858, 71:114, 71:843 |
| 71:922 | CHS | lo | 343841/1000000 | 343841/1000000 | 3711 | 71:146, 71:836, 71:222 |
| 71:926 | HPS | lo | 294613/1000000 | 294613/1000000 | 3748 | 71:214, 71:222, 71:843 |
| 71:927 | HRS | lo | 10979/31250 | 10979/31250 | 3750 | 71:220, 71:222, 71:846 |
| 71:931 | AHQ | lo | 104633/1000000 | 1015214727/9702550000 | 189 | 71:6, 71:196, 71:906, 71:844, 71:93 |
| 71:940 | CQS | lo | 157867/1000000 | 11166603/70733800 | 650 | 71:909, 71:222, 71:918, 71:146, 71:283 |
| 71:944 | BRS | lo | 140479/1000000 | 28932937156/205958594829 | 756 | 71:854, 71:927, 71:108, 71:192, 71:181 |
| 71:945 | FQR | lo | 54497/500000 | 38547849/353669000 | 795 | 71:96, 71:220, 71:917, 71:196, 71:283 |
| 71:946 | BHP | lo | 40819/250000 | 900052791/5512460000 | 832 | 71:844, 71:114, 71:108, 71:858, 71:901 |
| 71:947 | PQS | lo | 108639/1000000 | 7684497/70733800 | 835 | 71:858, 71:222, 71:918, 71:214, 71:283 |
| 71:948 | BHQ | lo | 22481/125000 | 6745947200/37508991147 | 843 | 71:916, 71:222, 71:108, 71:220, 71:225 |
| 71:950 | QRS | lo | 82683/500000 | 7310637/44208625 | 844 | 71:917, 71:222, 71:918, 71:220, 71:283 |
| 71:957 | BES | lo | 146023/1000000 | 18672730951/127875000000 | 2213 | 71:912, 71:901 |
| 71:958 | CHR | lo | 154733/1000000 | 10552827175024373/68200000000000000 | 2297 | 71:922, 71:225 |
| 71:961 | BPQ | lo | 10577/100000 | 3608635414031/34117464667000 | 2558 | 71:41, 71:196, 71:931, 71:44, 71:8, 71:94, 71:946 |
| 71:964 | EPQ | lo | 1842/15625 | 137789786637/1168810609000 | 2694 | 71:71, 71:144, 71:946, 71:72, 71:912, 71:128, 71:176 |
| 71:967 | PQR | lo | 15343/125000 | 20515466077891/167139917087000 | 2709 | 71:71, 71:144, 71:946, 71:72, 71:917, 71:879, 71:220 |
| 71:976 | AHQ | lo | 26159/250000 | 19523919/186587500 | 2881 | 71:93, 71:196, 71:948, 71:96, 71:6, 71:906 |
| 71:980 | CPR | lo | 9969/100000 | 5703302806249/57210303293000 | 3063 | 71:109, 71:926, 71:114, 71:946, 71:76, 71:958, 71:162 |
| 71:981 | CQR | lo | 115111/1000000 | 19756760180147/171630909879000 | 3107 | 71:109, 71:222, 71:918, 71:948, 71:76, 71:958, 71:162 |
| 71:983 | FPS | lo | 32339/250000 | 6068983890997/46916654629000 | 3160 | 71:117, 71:967, 71:112, 71:961, 71:915, 71:210, 71:212 |
| 71:985 | BHP | lo | 81641/500000 | 180017217/1102492000 | 3179 | 71:901, 71:947, 71:114, 71:961, 71:948, 71:108 |
| 71:1000 | CPQ | lo | 94211/1000000 | 1075206318893/11412691601000 | 3450 | 71:199, 71:220, 71:945, 71:196, 71:136, 71:144, 71:980 |
| 71:1003 | BQS | hi | 13781/25000 | 4135285036703365841213/7501798229400000000000 | 3531 | 71:225, 71:950, 71:222, 71:220, 71:109, 71:944 |
| 71:1008 | AFH | lo | 72659/250000 | 72659/250000 | 3614 | 71:976, 71:44, 71:196 |
| 71:1011 | BCQ | lo | 292981/1000000 | 292981/1000000 | 3641 | 71:72, 71:961, 71:1000 |
| 71:1014 | BEQ | lo | 158329/500000 | 158329/500000 | 3656 | 71:84, 71:961, 71:964 |
| 71:1017 | BFS | lo | 78839/250000 | 78839/250000 | 3668 | 71:94, 71:114, 71:983 |
| 71:1018 | BHR | lo | 395217/1000000 | 395217/1000000 | 3673 | 71:985, 71:112, 71:275 |
| 71:1019 | BQR | lo | 160757/500000 | 160757/500000 | 3678 | 71:961, 71:112, 71:967 |
| 71:1020 | BQS | lo | 307409/1000000 | 307409/1000000 | 3679 | 71:961, 71:114, 71:947 |
| 71:1024 | CHS | lo | 343867/1000000 | 343867/1000000 | 3711 | 71:146, 71:940, 71:222 |
| 71:1029 | HRS | lo | 175683/500000 | 175683/500000 | 3750 | 71:220, 71:222, 71:950 |
| 71:1033 | AHQ | lo | 26161/250000 | 146440633/1399406250 | 189 | 71:6, 71:196, 71:1008, 71:948, 71:93 |
| 71:1041 | CQS | lo | 157877/1000000 | 5583627/35366900 | 650 | 71:1011, 71:222, 71:1020, 71:146, 71:283 |
| 71:1045 | BRS | lo | 35123/250000 | 19290427903/137305729886 | 756 | 71:957, 71:1029, 71:108, 71:192, 71:181 |
| 71:1047 | BHP | lo | 163283/1000000 | 180017217/1102480000 | 832 | 71:948, 71:114, 71:108, 71:961, 71:1003 |
| 71:1048 | PQS | lo | 13581/125000 | 38425647/353669000 | 835 | 71:961, 71:222, 71:1020, 71:214, 71:283 |
| 71:1049 | BHQ | lo | 3597/20000 | 2248671800/12502997049 | 843 | 71:1018, 71:222, 71:108, 71:220, 71:225 |
| 71:1051 | QRS | lo | 8269/50000 | 58489839/353669000 | 844 | 71:1019, 71:222, 71:1020, 71:220, 71:283 |
| 71:1058 | BES | lo | 146027/1000000 | 933666113/6393750000 | 2213 | 71:1014, 71:1003 |
| 71:1059 | CHR | lo | 30949/200000 | 10553625141254551/68200000000000000 | 2297 | 71:1024, 71:225 |
| 71:1062 | BPQ | lo | 26443/250000 | 3608678814031/34117464667000 | 2558 | 71:41, 71:196, 71:1033, 71:44, 71:8, 71:94, 71:1047 |
| 71:1065 | EPQ | lo | 117889/1000000 | 19704051089091/167139917087000 | 2694 | 71:71, 71:144, 71:1047, 71:72, 71:1014, 71:128, 71:176 |
| 71:1068 | PQR | lo | 491/4000 | 20516442771691/167139917087000 | 2709 | 71:71, 71:144, 71:1047, 71:72, 71:1019, 71:981, 71:220 |
| 71:1077 | AHQ | lo | 20929/200000 | 101533141/970255000 | 2881 | 71:93, 71:196, 71:1049, 71:96, 71:6, 71:1008 |
| 71:1082 | CQR | lo | 57559/500000 | 19757868359747/171630909879000 | 3107 | 71:109, 71:222, 71:1020, 71:1049, 71:76, 71:1059, 71:162 |
| 71:1084 | FPS | lo | 129359/1000000 | 6069136317997/46916654629000 | 3160 | 71:117, 71:1068, 71:112, 71:1062, 71:1017, 71:210, 71:212 |
| 71:1086 | BHP | lo | 81643/500000 | 450050901/2756200000 | 3179 | 71:1003, 71:1048, 71:114, 71:1062, 71:1049, 71:108 |
| 71:1103 | BQS | hi | 275619/500000 | 4135268916703365841213/7501798229400000000000 | 3531 | 71:225, 71:1051, 71:222, 71:220, 71:109, 71:1045 |
| 71:1107 | AFH | lo | 58129/200000 | 58129/200000 | 3614 | 71:1077, 71:44, 71:196 |
| 71:1112 | BEQ | lo | 316661/1000000 | 316661/1000000 | 3656 | 71:84, 71:1062, 71:1065 |
| 71:1115 | BFS | lo | 315359/1000000 | 315359/1000000 | 3668 | 71:94, 71:114, 71:1084 |
| 71:1116 | BHR | lo | 395221/1000000 | 395221/1000000 | 3673 | 71:1086, 71:112, 71:275 |
| 71:1117 | BQR | lo | 160761/500000 | 160761/500000 | 3678 | 71:1062, 71:112, 71:1068 |
| 71:1118 | BQS | lo | 15371/50000 | 15371/50000 | 3679 | 71:1062, 71:114, 71:1048 |
| 71:1121 | CHS | lo | 343877/1000000 | 343877/1000000 | 3711 | 71:146, 71:1041, 71:222 |
| 71:1126 | HRS | lo | 17569/50000 | 17569/50000 | 3750 | 71:220, 71:222, 71:1051 |
| 71:1142 | BRS | lo | 8781/62500 | 28936504315/205958594829 | 756 | 71:1058, 71:1126, 71:108, 71:192, 71:181 |
| 71:1144 | BHP | lo | 163287/1000000 | 150016967/918730000 | 832 | 71:1049, 71:114, 71:108, 71:1062, 71:1103 |
| 71:1145 | PQS | lo | 27163/250000 | 4803357/44208625 | 835 | 71:1062, 71:222, 71:1118, 71:214, 71:283 |
| 71:1146 | BHQ | lo | 179851/1000000 | 6746040200/37508991147 | 843 | 71:1116, 71:222, 71:108, 71:220, 71:225 |
| 71:1147 | QRS | lo | 33077/200000 | 29245803/176834500 | 844 | 71:1117, 71:222, 71:1118, 71:220, 71:283 |
| 71:1155 | CHR | lo | 154749/1000000 | 10553932051343081/68200000000000000 | 2297 | 71:1121, 71:225 |
| 71:1160 | PQR | lo | 1918/15625 | 20516837862291/167139917087000 | 2709 | 71:71, 71:144, 71:1144, 71:72, 71:1117, 71:1082, 71:220 |
| 71:1163 | AHQ | lo | 104649/1000000 | 12184358779/116430600000 | 2881 | 71:93, 71:196, 71:1146, 71:96, 71:6, 71:1107 |
| 71:1167 | CQR | lo | 1439/12500 | 6586083378249/57210303293000 | 3107 | 71:109, 71:222, 71:1118, 71:1146, 71:76, 71:1155, 71:162 |
| 71:1169 | FPS | lo | 129361/1000000 | 6069187128497/46916654629000 | 3160 | 71:117, 71:1160, 71:112, 71:1062, 71:1115, 71:210, 71:212 |
| 71:1186 | BQS | hi | 551237/1000000 | 1378421318901121947071/2500599409800000000000 | 3531 | 71:225, 71:1147, 71:222, 71:220, 71:109, 71:1142 |
| 71:1190 | AFH | lo | 290649/1000000 | 290649/1000000 | 3614 | 71:1163, 71:44, 71:196 |
| 71:1195 | BFS | lo | 315361/1000000 | 315361/1000000 | 3668 | 71:94, 71:114, 71:1169 |
| 71:1197 | BQR | lo | 80381/250000 | 80381/250000 | 3678 | 71:1062, 71:112, 71:1160 |
| 71:1198 | BQS | lo | 9607/31250 | 9607/31250 | 3679 | 71:1062, 71:114, 71:1145 |
| 71:1210 | AHQ | lo | 2093/20000 | 20307504433/194051000000 | 189 | 71:6, 71:196, 71:1190, 71:1146, 71:93 |
| 71:1222 | PQS | lo | 108653/1000000 | 9606807/88417250 | 835 | 71:1062, 71:222, 71:1198, 71:214, 71:283 |
| 71:1223 | QRS | lo | 82693/500000 | 14623041/88417250 | 844 | 71:1197, 71:222, 71:1198, 71:220, 71:283 |
| 71:1226 | BES | lo | 14603/100000 | 149388943343/1023000000000 | 2213 | 71:1112, 71:1186 |
| 71:1232 | PQR | lo | 122753/1000000 | 20516940377091/167139917087000 | 2709 | 71:71, 71:144, 71:1144, 71:72, 71:1197, 71:1167, 71:220 |
| 71:1252 | AFH | lo | 5813/20000 | 5813/20000 | 3614 | 71:1210, 71:44, 71:196 |
| 71:1253 | BQR | lo | 12861/40000 | 12861/40000 | 3678 | 71:1062, 71:112, 71:1232 |
| 71:1254 | BQS | lo | 12297/40000 | 12297/40000 | 3679 | 71:1062, 71:114, 71:1222 |
| 71:1259 | HRS | lo | 175693/500000 | 175693/500000 | 3750 | 71:220, 71:222, 71:1223 |
| 71:1269 | BRS | lo | 140499/1000000 | 28936986895/205958594829 | 756 | 71:1226, 71:1259, 71:108, 71:192, 71:181 |
| 71:1270 | QRS | lo | 165387/1000000 | 1169847/7073380 | 844 | 71:1253, 71:222, 71:1254, 71:220, 71:283 |
| 71:1282 | BQS | hi | 137809/250000 | 1378420078901121947071/2500599409800000000000 | 3531 | 71:225, 71:1270, 71:222, 71:220, 71:109, 71:1269 |
| 71:1289 | HRS | lo | 351387/1000000 | 351387/1000000 | 3750 | 71:220, 71:222, 71:1270 |
| 71:1291 | BHP | lo | 20411/125000 | 225025683/1378090000 | 832 | 71:1146, 71:114, 71:108, 71:1062, 71:1282 |
| 71:1293 | BPQ | lo | 105773/1000000 | 156900426697/1483368029000 | 2558 | 71:41, 71:196, 71:1210, 71:44, 71:8, 71:94, 71:1291 |
| 71:1300 | BHP | lo | 163289/1000000 | 1800219321/11024720000 | 3179 | 71:1282, 71:1222, 71:114, 71:1293, 71:1146, 71:108 |
| 71:1313 | BCH | lo | 349289/1000000 | 349289/1000000 | 3637 | 71:1300, 71:72, 71:144 |

## Stage 72

| Property | Value |
| --- | --- |
| Scope | root/AFQ+/BPS-/HQR- |
| Packet | forest:root/AFQ+/BPS-/HQR- |
| Index | 1 |
| Context | 20 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 71 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 2193/20000 | 391/1000 | 323/2500 | 56729/250000 |
| b | 6561/62500 | 29117/50000 | 135561/1000000 | 181567/500000 |
| c | 548179/1000000 | 950197/1000000 | 184299/250000 | 209553/250000 |
| e | 109723/1000000 | 391/1000 | 131251/1000000 | 267901/1000000 |
| f | 19683/62500 | 582153/1000000 | 239801/500000 | 510453/1000000 |
| h | 588751/1000000 | 197747/200000 | 145123/200000 | 735223/1000000 |
| p | 225971/1000000 | 694907/1000000 | 7947/25000 | 542809/1000000 |
| q | 12229/100000 | 15257/25000 | 79129/500000 | 219149/500000 |
| u | 6561/62500 | 186823/500000 | 303009/1000000 | 2007/6250 |
| v | 616077/1000000 | 838711/1000000 | 359827/500000 | 725501/1000000 |
| r | 25439/31250 | 1/1 | 119339/125000 | 1/1 |
| w | 206493/500000 | 155899/200000 | 511883/1000000 | 626637/1000000 |
| j | 86667/125000 | 861297/1000000 | 31593/40000 | 164043/200000 |
| k | 143273/200000 | 1/1 | 985067/1000000 | 1/1 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 0 | A_ABC | bitt ["actual-area","ABC",[]] | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 7 | A_ABH | bitt ["actual-area","ABH",[]] | `1/1 * b * h + -1/1 * a * b + -93/1000` |
| 29 | A_AFH | bitt ["actual-area","AFH",["Q"]] | `1/1 * f * h + -1/1 * a * f + -279/1000` |
| 32 | A_AFQ | bitt ["actual-area","AFQ",[]] | `1/1 * f * v + -1/1 * a * f + -1/1 * u + 1/1 * a * u + -93/1000` |
| 36 | A_AHQ | bitt ["actual-area","AHQ",[]] | `1/1 * h * u + -1/1 * a * u + -93/1000` |
| 43 | A_BCE | bitt ["actual-area","BCE",[]] | `1/1 * c * e + -1/1 * b * e + -93/1000` |
| 61 | A_BFP | bitt ["actual-area","BFP",[]] | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 68 | A_BHS | bitt ["actual-area","BHS",["P","Q"]] | `1/1 * b * k + 1/1 * h * j + -1/1 * b * h + -13857/20000` |
| 71 | A_BPS | bitt ["actual-area","BPS",[]] | `-1/1 * p * k + 1/1 * b * k + 1/1 * q * j + -1/1 * b * q + -93/1000` |
| 80 | A_CER | bitt ["actual-area","CER",[]] | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 87 | A_CHP | bitt ["actual-area","CHP",[]] | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 113 | A_ERS | bitt ["actual-area","ERS",[]] | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 114 | A_FHP | bitt ["actual-area","FHP",["Q"]] | `-1/1 * f * q + -1/1 * h * p + 1/1 * f * h + 1/1 * p + -279/1000` |
| 115 | A_FHQ | bitt ["actual-area","FHQ",[]] | `-1/1 * f * v + -1/1 * h * u + 1/1 * f * h + 1/1 * u + -93/1000` |
| 127 | A_HQR | bitt ["actual-area","HQR",[]] | `-1/1 * u * w + 1/1 * h * u + 1/1 * v * r + -1/1 * h * r + -93/1000` |
| 128 | A_HQS | bitt ["actual-area","HQS",[]] | `1/1 * u * k + -1/1 * h * u + -1/1 * v * j + 1/1 * h * j + -93/1000` |
| 129 | A_HRS | bitt ["actual-area","HRS",["Q"]] | `1/1 * r * k + -1/1 * h * r + -1/1 * w * j + 1/1 * h * j + -279/1000` |
| 135 | ea | bitt ["contact-order","ea"] | `1/1 * e + -1/1 * a` |
| 137 | fb | bitt ["contact-order","fb"] | `1/1 * f + -1/1 * b` |
| 149 | lower-area | bitt ["endpoint-lower","135501/250000"] | `1/1 * c * h + -135501/250000` |
| 152 | top-area | bitt ["top-hull","+"] | `157/250 + -1/1 * f + -1/1 * e + 1/1 * e * f` |
| 161 | central-y | bitt ["central-lower-y"] | `1/1 * c * h * q + -1/1 * a * c * q + -93/1000 * h + -93/1000 * a` |
| 848 | AREA_lo_AFH | bitt ["earlier-area",{"direction":"lo","ref":"71:1252","triangle":"AFH","value":"5813/20000"}] | `1/1 * f * h + -1/1 * a * f + -5813/20000` |
| 858 | AREA_lo_AHQ | bitt ["earlier-area",{"direction":"lo","ref":"71:1210","triangle":"AHQ","value":"2093/20000"}] | `1/1 * h * u + -1/1 * a * u + -2093/20000` |
| 873 | AREA_lo_BCH | bitt ["earlier-area",{"direction":"lo","ref":"71:1313","triangle":"BCH","value":"349289/1000000"}] | `1/1 * c * h + -1/1 * b * h + -349289/1000000` |
| 897 | AREA_lo_BFS | bitt ["earlier-area",{"direction":"lo","ref":"71:1195","triangle":"BFS","value":"315361/1000000"}] | `-1/1 * f * k + 1/1 * b * k + 1/1 * j + -1/1 * b + -315361/1000000` |
| 899 | AREA_lo_BHP | bitt ["earlier-area",{"direction":"lo","ref":"71:1300","triangle":"BHP","value":"163289/1000000"}] | `1/1 * b * q + 1/1 * h * p + -1/1 * b * h + -163289/1000000` |
| 901 | AREA_lo_BHQ | bitt ["earlier-area",{"direction":"lo","ref":"71:1146","triangle":"BHQ","value":"179851/1000000"}] | `1/1 * b * v + 1/1 * h * u + -1/1 * b * h + -179851/1000000` |
| 906 | AREA_lo_BPQ | bitt ["earlier-area",{"direction":"lo","ref":"71:1293","triangle":"BPQ","value":"105773/1000000"}] | `1/1 * p * v + -1/1 * b * v + -1/1 * q * u + 1/1 * b * q + -105773/1000000` |
| 988 | AREA_lo_HRS | bitt ["earlier-area",{"direction":"lo","ref":"71:1289","triangle":"HRS","value":"351387/1000000"}] | `1/1 * r * k + -1/1 * h * r + -1/1 * w * j + 1/1 * h * j + -351387/1000000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 0 | a | 2193/20000 | 391/1000 | 93000/845221 | 391/1000 | 11003/100000 | 391/1000 | `(443203/1000000, -93/1000); (-34161/1000000, -93/1000); (845221/1000000, -93/1000); (367857/1000000, -93/1000)` |
| 1 | 7 | b | 6561/62500 | 29117/50000 | 18600/175741 | 29117/50000 | 105837/1000000 | 29117/50000 | `(478721/1000000, -93/1000); (197751/1000000, -93/1000); (175741/200000, -93/1000); (119547/200000, -93/1000)` |
| 2 | 29 | f | 19683/62500 | 582153/1000000 | 55800/175741 | 582153/1000000 | 39689/125000 | 582153/1000000 | `(478721/1000000, -279/1000); (197751/1000000, -279/1000); (175741/200000, -279/1000); (119547/200000, -279/1000)` |
| 3 | 29 | h | 588751/1000000 | 197747/200000 | 11435143153/19405100000 | 197747/200000 | 117857/200000 | 197747/200000 | `(39689/125000, -3924198067/12500000000); (39689/125000, -50393399/125000000); (582153/1000000, -34305429459/100000000000); (582153/1000000, -506621823/1000000000)` |
| 4 | 32 | u | 6561/62500 | 186823/500000 | 6561/62500 | 331203830193/889970000000 | 6561/62500 | 46519/125000 | `(-88997/100000, 8459499383/125000000000); (-609/1000, -2691918947/125000000000); (-88997/100000, 201596779191/1000000000000); (-609/1000, 38029250781/1000000000000); (-88997/100000, 17295620209/125000000000); (-609/1000, 6144201879/125000000000); (-88997/100000, 331203830193/1000000000000); (-609/1000, 167636301783/1000000000000)` |
| 5 | 36 | u | 6561/62500 | 46519/125000 | 18600/175741 | 46519/125000 | 105837/1000000 | 46519/125000 | `(95851/200000, -93/1000); (39657/200000, -93/1000); (175741/200000, -93/1000); (119547/200000, -93/1000)` |
| 6 | 43 | e | 109723/1000000 | 391/1000 | 2325/21109 | 391/1000 | 55071/500000 | 391/1000 | `(221171/500000, -93/1000); (-34161/1000000, -93/1000); (21109/25000, -93/1000); (367857/1000000, -93/1000)` |
| 7 | 68 | j | 86667/125000 | 861297/1000000 | 6862899399/9887350000 | 861297/1000000 | 694109/1000000 | 861297/1000000 | `(117857/200000, -16985005851/25000000000); (117857/200000, -773557791/1250000000); (197747/200000, -72167682369/100000000000); (197747/200000, -4257309729/5000000000); (117857/200000, -129876231309/200000000000); (117857/200000, -4536742269/10000000000); (197747/200000, -138331549239/200000000000); (197747/200000, -6862899399/10000000000)` |
| 8 | 71 | p | 225971/1000000 | 694907/1000000 | 225971/1000000 | 1901576431/2755250000 | 225971/1000000 | 138033/200000 | `(-143273/200000, 10951541077/200000000000); (-143273/200000, 33783622511/100000000000); (-143273/200000, 68365711733/200000000000); (-143273/200000, 19618918971/50000000000); (-143273/200000, 15040625181/200000000000); (-143273/200000, 35828164563/100000000000); (-143273/200000, 88772010261/200000000000); (-143273/200000, 24720493603/50000000000); (-1/1, 529854893/6250000000); (-1/1, 50300823101/100000000000); (-1/1, 1162023863/3125000000); (-1/1, 13938759633/25000000000); (-1/1, 526111017/5000000000); (-1/1, 52345365153/100000000000); (-1/1, 592348911/1250000000); (-1/1, 16489546949/25000000000)` |
| 9 | 80 | c | 548179/1000000 | 950197/1000000 | 548179/1000000 | 46025279/48561875 | 548179/1000000 | 473883/500000 | `(-75711/250000, 3598830081/15625000000); (-10993/500000, 105827/62500000); (-75711/250000, 52461/250000); (-10993/500000, -35507/500000); (-669353/1000000, 4662766603/7812500000); (-77699/200000, 46025279/125000000); (-669353/1000000, 576353/1000000); (-77699/200000, 59099/200000)` |
| 10 | 113 | r | 25439/31250 | 1/1 | 494473941477/606223000000 | 1/1 | 815663/1000000 | 1/1 | `(606223/1000000, -151646436499/250000000000); (65073/200000, -205819840237/500000000000); (606223/1000000, -494473941477/1000000000000); (65073/200000, -59905575191/200000000000); (606223/1000000, -164304407167/250000000000); (65073/200000, -207657737921/500000000000); (606223/1000000, -606381730841/1000000000000); (65073/200000, -72895915603/200000000000); (444929/500000, -222555186499/250000000000); (609/1000, -347637340237/500000000000); (444929/500000, -778108941477/1000000000000); (609/1000, -116632575191/200000000000); (444929/500000, -235213157167/250000000000); (609/1000, -349475237921/500000000000); (444929/500000, -890016730841/1000000000000); (609/1000, -129622915603/200000000000)` |
| 11 | 113 | w | 206493/500000 | 155899/200000 | 63345723261/152945500000 | 155899/200000 | 414171/1000000 | 155899/200000 | `(305891/1000000, -238440775673/1000000000000); (305891/1000000, -54516037801/200000000000); (305891/1000000, -63345723261/500000000000); (305891/1000000, -212603381/1000000000); (138703/1000000, -220026354977/1000000000000); (138703/1000000, -41441936201/200000000000); (138703/1000000, -54138512913/500000000000); (138703/1000000, -147232873/1000000000); (305891/1000000, -72681300167/250000000000); (305891/1000000, -162432307/500000000); (138703/1000000, -68077694993/250000000000); (138703/1000000, -129747053/500000000)` |
| 12 | 113 | j | 694109/1000000 | 861297/1000000 | 694109/1000000 | 576353/669353 | 694109/1000000 | 43053/50000 | `(-304029/1000000, 99279670849/1000000000000); (-23171/1000000, -25961161601/200000000000); (-304029/1000000, 211029/1000000); (-23171/1000000, -69829/1000000); (-669353/1000000, 464603670849/1000000000000); (-77699/200000, 47103638399/200000000000); (-669353/1000000, 576353/1000000); (-77699/200000, 59099/200000); (-304029/1000000, 23497622927/500000000000); (-23171/1000000, -182090233/1000000000); (-669353/1000000, 206159622927/500000000000); (-77699/200000, 183233767/1000000000)` |
| 13 | 114 | q | 12229/100000 | 15257/25000 | 12229/100000 | 38313235379/63502400000 | 12229/100000 | 75417/125000 | `(-39689/125000, 182947637/200000000000); (-582153/1000000, 15686370987/100000000000); (-39689/125000, 7496158127/200000000000); (-582153/1000000, 29914060977/100000000000); (-39689/125000, 38313235379/200000000000); (-582153/1000000, 17375757429/50000000000); (-39689/125000, 8541987209/200000000000); (-582153/1000000, 15218487759/50000000000)` |
| 14 | 115 | v | 616077/1000000 | 838711/1000000 | 616077/1000000 | 32452489249/38810200000 | 616077/1000000 | 167237/200000 | `(-39689/125000, 1100591219/8000000000); (-582153/1000000, 14676143703/50000000000); (-39689/125000, 1777019849/8000000000); (-582153/1000000, 24189365013/50000000000); (-39689/125000, 617383669/2500000000); (-582153/1000000, 80580487857/200000000000); (-39689/125000, 562818799/2500000000); (-582153/1000000, 97357467747/200000000000)` |
| 15 | 127 | h | 117857/200000 | 197747/200000 | 117857/200000 | 434910599663/443511000000 | 117857/200000 | 980609/1000000 | `(-354913/500000, 91419149481/250000000000); (-443511/1000000, 255376648059/1000000000000); (-354913/500000, 68151318691/125000000000); (-443511/1000000, 434910599663/1000000000000); (-894163/1000000, 479242383873/1000000000000); (-78481/125000, 46117804251/125000000000); (-894163/1000000, 699350383873/1000000000000); (-78481/125000, 73631304251/125000000000); (-354913/500000, 40876475217/125000000000); (-443511/1000000, 119420590811/1000000000000); (-354913/500000, 25327287667/50000000000); (-443511/1000000, 59790908483/200000000000); (-894163/1000000, 88115517537/200000000000); (-78481/125000, 5824659419/25000000000); (-894163/1000000, 132137117537/200000000000); (-78481/125000, 11327359419/25000000000)` |
| 16 | 127 | v | 616077/1000000 | 167237/200000 | 38569748417/62500000000 | 167237/200000 | 123423/200000 | 167237/200000 | `(815663/1000000, -555124430537/1000000000000); (815663/1000000, -832896380161/1000000000000); (815663/1000000, -508488945627/1000000000000); (815663/1000000, -682045444191/1000000000000); (1/1, -331875729791/500000000000); (1/1, -506829450697/500000000000); (1/1, -38569748417/62500000000); (1/1, -53925497839/62500000000); (815663/1000000, -23751569069/40000000000); (815663/1000000, -871561176349/1000000000000); (815663/1000000, -5155560023/8000000000); (815663/1000000, -818001501439/1000000000000); (1/1, -70241625577/100000000000); (1/1, -526161848791/500000000000); (1/1, -9413400399/12500000000); (1/1, -62422751417/62500000000)` |
| 17 | 129 | w | 414171/1000000 | 155899/200000 | 414171/1000000 | 108148604413/138821800000 | 414171/1000000 | 779047/1000000 | `(-694109/1000000, 46736495221/200000000000); (-694109/1000000, 186115478609/1000000000000); (-694109/1000000, 51421604413/200000000000); (-694109/1000000, 137405532381/1000000000000); (-43053/50000, 16603209807/50000000000); (-43053/50000, 43728641471/125000000000); (-43053/50000, 3554897421/10000000000); (-43053/50000, 15055959277/50000000000); (-694109/1000000, 46503305111/100000000000); (-694109/1000000, 208733026807/500000000000); (-694109/1000000, 108148604413/200000000000); (-694109/1000000, 421040532381/1000000000000); (-43053/50000, 112682954229/200000000000); (-43053/50000, 581179706773/1000000000000); (-43053/50000, 6391247421/10000000000); (-43053/50000, 29237709277/50000000000)` |
| 18 | 129 | k | 143273/200000 | 1/1 | 17937533479/25000000000 | 1/1 | 717501/1000000 | 1/1 | `(815663/1000000, -638109767529/1000000000000); (815663/1000000, -27427070601/40000000000); (1/1, -373368398287/500000000000); (1/1, -433219643129/500000000000); (815663/1000000, -891373483013/1000000000000); (815663/1000000, -938940480509/1000000000000); (1/1, -500000256029/500000000000); (1/1, -559851500871/500000000000); (815663/1000000, -121774862023/200000000000); (815663/1000000, -591109374487/1000000000000); (1/1, -17937533479/25000000000); (1/1, -19296797393/25000000000); (815663/1000000, -36922177547/40000000000); (815663/1000000, -905289503047/1000000000000); (1/1, -25792036693/25000000000); (1/1, -27151300607/25000000000)` |
| 19 | 137 | b | 105837/1000000 | 29117/50000 | 105837/1000000 | 582153/1000000 | 105837/1000000 | 582153/1000000 | `(-1/1, 39689/125000); (-1/1, 582153/1000000)` |
| 20 | 149 | c | 548179/1000000 | 473883/500000 | 542004/980609 | 473883/500000 | 552721/1000000 | 473883/500000 | `(117857/200000, -135501/250000); (980609/1000000, -135501/250000)` |
| 21 | 152 | f | 39689/125000 | 582153/1000000 | 39689/125000 | 258929/444929 | 39689/125000 | 145489/250000 | `(-444929/500000, 258929/500000); (-609/1000, 237/1000)` |
| 22 | 161 | q | 12229/100000 | 75417/125000 | 16904904500/137517529419 | 75417/125000 | 122929/1000000 | 75417/125000 | `(52978860571/200000000000, -13007259/200000000); (21919256697/200000000000, -18233301/200000000); (45422159433/100000000000, -13007259/200000000); (18792778131/100000000000, -18233301/200000000); (481187295459/1000000000000, -101429427/1000000000); (325889276089/1000000000000, -127559637/1000000000); (412552588257/500000000000, -101429427/1000000000); (279405681747/500000000000, -127559637/1000000000)` |
| 23 | 848 | f | 39689/125000 | 145489/250000 | 290650/870579 | 145489/250000 | 166929/500000 | 145489/250000 | `(95851/200000, -5813/20000); (39657/200000, -5813/20000); (870579/1000000, -5813/20000); (589609/1000000, -5813/20000)` |
| 24 | 848 | h | 117857/200000 | 980609/1000000 | 8867065467/14548900000 | 980609/1000000 | 304733/500000 | 980609/1000000 | `(166929/500000, -16369219787/50000000000); (166929/500000, -210594239/500000000); (145489/250000, -8867065467/25000000000); (145489/250000, -129548699/250000000)` |
| 25 | 858 | u | 105837/1000000 | 46519/125000 | 104650/870579 | 46519/125000 | 120207/1000000 | 46519/125000 | `(124859/250000, -2093/20000); (109233/500000, -2093/20000); (870579/1000000, -2093/20000); (589609/1000000, -2093/20000)` |
| 26 | 906 | p | 225971/1000000 | 138033/200000 | 7841552063/33447400000 | 138033/200000 | 58611/250000 | 138033/200000 | `(123423/200000, -34570617997/200000000000); (123423/200000, -408241788761/1000000000000); (123423/200000, -7190261543/40000000000); (123423/200000, -186319696739/1000000000000); (123423/200000, -20382443689/100000000000); (123423/200000, -219606567833/500000000000); (123423/200000, -66352805419/200000000000); (123423/200000, -338327185259/1000000000000); (167237/200000, -7841552063/40000000000); (167237/200000, -535774046471/1000000000000); (167237/200000, -40588450033/200000000000); (167237/200000, -313851954449/1000000000000); (167237/200000, -354703357/1562500000); (167237/200000, -17710793543/31250000000); (167237/200000, -70989947737/200000000000); (167237/200000, -465859442969/1000000000000)` |
| 27 | 988 | w | 414171/1000000 | 779047/1000000 | 414171/1000000 | 231091417897/347054500000 | 414171/1000000 | 133173/200000 | `(-694109/1000000, 159768987999/1000000000000); (-694109/1000000, 114655071777/1000000000000); (-694109/1000000, 89841917897/500000000000); (-694109/1000000, 66154532381/1000000000000); (-43053/50000, 52303989233/200000000000); (-43053/50000, 34796090617/125000000000); (-43053/50000, 7035869849/25000000000); (-43053/50000, 11493409277/50000000000); (-694109/1000000, 97548242459/250000000000); (-694109/1000000, 172539526807/500000000000); (-694109/1000000, 231091417897/500000000000); (-694109/1000000, 348653532381/1000000000000); (-43053/50000, 245971964001/500000000000); (-43053/50000, 508792706773/1000000000000); (-43053/50000, 14098344849/25000000000); (-43053/50000, 25618359277/50000000000)` |
| 28 | 988 | k | 717501/1000000 | 1/1 | 7926922873/10000000000 | 1/1 | 198173/250000 | 1/1 | `(815663/1000000, -712949848803/1000000000000); (815663/1000000, -30322550601/40000000000); (1/1, -165059396569/200000000000); (1/1, -469413143129/500000000000); (815663/1000000, -887652919449/1000000000000); (815663/1000000, -932766835671/1000000000000); (1/1, -1000000053491/1000000000000); (1/1, -139191169613/125000000000); (815663/1000000, -340172576629/500000000000); (815663/1000000, -663496374487/1000000000000); (1/1, -7926922873/10000000000); (1/1, -21106472393/25000000000); (815663/1000000, -448534394449/500000000000); (815663/1000000, -880220010127/1000000000000); (1/1, -50470796147/50000000000); (1/1, -6631140821/6250000000)` |
| 29 | 0 | a | 11003/100000 | 391/1000 | 1000/9053 | 391/1000 | 5523/50000 | 391/1000 | `(111721/250000, -93/1000); (-3679/125000, -93/1000); (841929/1000000, -93/1000); (365613/1000000, -93/1000)` |
| 30 | 7 | b | 105837/1000000 | 582153/1000000 | 93000/870149 | 582153/1000000 | 53439/500000 | 582153/1000000 | `(249503/500000, -93/1000); (109233/500000, -93/1000); (870149/1000000, -93/1000); (589609/1000000, -93/1000)` |
| 31 | 32 | u | 120207/1000000 | 46519/125000 | 120207/1000000 | 3293400181/8895400000 | 120207/1000000 | 370237/1000000 | `(-44477/50000, 7615082499/100000000000); (-609/1000, -1750969833/100000000000); (-44477/50000, 10092545859/50000000000); (-609/1000, 1929449047/50000000000); (-44477/50000, 2985781941/20000000000); (-609/1000, 5562857373/100000000000); (-44477/50000, 3293400181/10000000000); (-609/1000, 8303904093/50000000000)` |
| 32 | 43 | e | 55071/500000 | 391/1000 | 3875/35037 | 391/1000 | 110597/1000000 | 391/1000 | `(445843/1000000, -93/1000); (-3679/125000, -93/1000); (105111/125000, -93/1000); (365613/1000000, -93/1000)` |
| 33 | 68 | j | 694109/1000000 | 43053/50000 | 681561471177/980609000000 | 43053/50000 | 347519/500000 | 43053/50000 | `(304733/500000, -168316792893/250000000000); (304733/500000, -293092217211/500000000000); (980609/1000000, -356467096563/500000000000); (980609/1000000, -802246445301/1000000000000); (304733/500000, -162777626787/250000000000); (304733/500000, -232749730149/500000000000); (980609/1000000, -345388764351/500000000000); (980609/1000000, -681561471177/1000000000000)` |
| 34 | 71 | p | 58611/250000 | 138033/200000 | 58611/250000 | 134185664907/198173000000 | 58611/250000 | 338557/500000 | `(-198173/250000, 8002907027/125000000000); (-198173/250000, 382344866041/1000000000000); (-198173/250000, 43322429667/125000000000); (-198173/250000, 109143902559/250000000000); (-198173/250000, 42216087327/500000000000); (-198173/250000, 402753784479/1000000000000); (-198173/250000, 55843310841/125000000000); (-198173/250000, 134185664907/250000000000); (-1/1, 67328063/781250000); (-1/1, 100605968033/200000000000); (-1/1, 576150159/1562500000); (-1/1, 13931514609/25000000000); (-1/1, 53294419539/500000000000); (-1/1, 523438758603/1000000000000); (-1/1, 29306446947/62500000000); (-1/1, 82178454219/125000000000)` |
| 35 | 80 | c | 552721/1000000 | 473883/500000 | 552721/1000000 | 253940767/274865000 | 552721/1000000 | 7391/8000 | `(-151787/500000, 230961119189/1000000000000); (-23171/1000000, 2246767/1000000000); (-151787/500000, 105287/500000); (-23171/1000000, -69829/1000000); (-138817/250000, 482655119189/1000000000000); (-54973/200000, 253940767/1000000000); (-138817/250000, 115567/250000); (-54973/200000, 36373/200000)` |
| 36 | 113 | e | 110597/1000000 | 391/1000 | 110597/1000000 | 3668784071/10165400000 | 110597/1000000 | 360909/1000000 | `(-193/1600, -56408024351/500000000000); (-152481/500000, 16653208251/500000000000); (-193/1600, -18029471537/500000000000); (-152481/500000, 11006352213/100000000000); (45397/1000000, -5674298327/31250000000); (-6947/50000, -1772754063/50000000000); (45397/1000000, -18325897763/125000000000); (-6947/50000, -4847169/10000000000); (-193/1600, -75515291749/500000000000); (-193/1600, -7427347787/100000000000); (45397/1000000, -10989604063/50000000000); (45397/1000000, -1848217169/10000000000)` |
| 37 | 113 | r | 815663/1000000 | 1/1 | 25239973341/28420625000 | 1/1 | 444043/500000 | 1/1 | `(136419/200000, -170629116453/250000000000); (431783/1000000, -127135028489/250000000000); (136419/200000, -75719920023/125000000000); (431783/1000000, -53972876041/125000000000); (136419/200000, -18322910711/25000000000); (431783/1000000, -12934569443/25000000000); (136419/200000, -8724325801/12500000000); (431783/1000000, -6030155167/12500000000); (889403/1000000, -222456116453/250000000000); (639091/1000000, -178962028489/250000000000); (889403/1000000, -101633420023/125000000000); (639091/1000000, -79886376041/125000000000); (889403/1000000, -23505610711/25000000000); (639091/1000000, -18117269443/25000000000); (889403/1000000, -11315675801/12500000000); (639091/1000000, -8621505167/12500000000)` |
| 38 | 113 | w | 414171/1000000 | 133173/200000 | 21121313719/50827000000 | 133173/200000 | 415553/1000000 | 133173/200000 | `(152481/500000, -1586436423/7812500000); (152481/500000, -785581541/3125000000); (152481/500000, -63363941157/500000000000); (152481/500000, -101531765229/500000000000); (6947/50000, -18470232701/100000000000); (6947/50000, -95733629561/500000000000); (6947/50000, -5418317359/50000000000); (6947/50000, -7157234823/50000000000); (152481/500000, -28283066207/125000000000); (152481/500000, -34323345079/125000000000); (6947/50000, -103951497261/500000000000); (6947/50000, -107333963317/500000000000)` |
| 39 | 113 | j | 347519/500000 | 43053/50000 | 347519/500000 | 115567/138817 | 347519/500000 | 416257/500000 | `(-76239/250000, 13562002017/100000000000); (-13661/250000, -43339281331/500000000000); (-76239/250000, 52989/250000); (-13661/250000, -9589/250000); (-138817/250000, 38593202017/100000000000); (-76239/250000, 81816718669/500000000000); (-138817/250000, 115567/250000); (-76239/250000, 56209676329/500000000000); (-13661/250000, -54939615087/500000000000); (-138817/250000, 181365676329/500000000000); (-76239/250000, 70216384913/500000000000)` |
| 40 | 114 | q | 122929/1000000 | 75417/125000 | 122929/1000000 | 85029608593/145489000000 | 122929/1000000 | 584441/1000000 | `(-166929/500000, 4008363231/250000000000); (-145489/250000, 10452546787/62500000000); (-166929/500000, 26465131563/500000000000); (-145489/250000, 37027174351/125000000000); (-166929/500000, 11806946169/62500000000); (-145489/250000, 85029608593/250000000000); (-166929/500000, 7689259637/125000000000); (-145489/250000, 152400604389/500000000000)` |
| 41 | 115 | v | 123423/200000 | 167237/200000 | 123423/200000 | 484850556871/581956000000 | 123423/200000 | 41657/50000 | `(-166929/500000, 78710010183/500000000000); (-145489/250000, 154313658017/500000000000); (-166929/500000, 236715093459/1000000000000); (-145489/250000, 480002225141/1000000000000); (-166929/500000, 127532618193/500000000000); (-145489/250000, 203136266027/500000000000); (-166929/500000, 241563425189/1000000000000); (-145489/250000, 484850556871/1000000000000)` |
| 42 | 127 | h | 304733/500000 | 980609/1000000 | 304733/500000 | 493046873979/517849000000 | 304733/500000 | 476053/500000 | `(-767879/1000000, 405098812419/1000000000000); (-517849/1000000, 301198095829/1000000000000); (-767879/1000000, 596947590569/1000000000000); (-517849/1000000, 493046873979/1000000000000); (-879793/1000000, 474162620529/1000000000000); (-629763/1000000, 370261903939/1000000000000); (-879793/1000000, 690187620529/1000000000000); (-629763/1000000, 586286903939/1000000000000); (-767879/1000000, 75001911567/200000000000); (-517849/1000000, 41704666377/200000000000); (-767879/1000000, 113371667197/200000000000); (-517849/1000000, 80074422007/200000000000); (-879793/1000000, 88814673189/200000000000); (-629763/1000000, 55517427999/200000000000); (-879793/1000000, 132019673189/200000000000); (-629763/1000000, 98722427999/200000000000)` |
| 43 | 127 | v | 123423/200000 | 41657/50000 | 630672232619/1000000000000 | 41657/50000 | 39417/62500 | 41657/50000 | `(444043/500000, -122189704417/200000000000); (444043/500000, -174810916529/200000000000); (444043/500000, -112492890939/200000000000); (444043/500000, -147980047211/200000000000); (1/1, -679156300009/1000000000000); (1/1, -980608573529/1000000000000); (1/1, -630672232619/1000000000000); (1/1, -846454226939/1000000000000); (444043/500000, -641037776669/1000000000000); (444043/500000, -904143837229/1000000000000); (444043/500000, -655139218639/1000000000000); (444043/500000, -832574999999/1000000000000); (1/1, -709245554593/1000000000000); (1/1, -1010697828113/1000000000000); (1/1, -723346996563/1000000000000); (1/1, -939128990883/1000000000000)` |
| 44 | 135 | a | 5523/50000 | 391/1000 | 5523/50000 | 360909/1000000 | 5523/50000 | 360909/1000000 | `(-1/1, 110597/1000000); (-1/1, 360909/1000000)` |
| 45 | 137 | b | 53439/500000 | 582153/1000000 | 53439/500000 | 145489/250000 | 53439/500000 | 145489/250000 | `(-1/1, 166929/500000); (-1/1, 145489/250000)` |
| 46 | 149 | c | 552721/1000000 | 7391/8000 | 271002/476053 | 7391/8000 | 142317/250000 | 7391/8000 | `(304733/500000, -135501/250000); (476053/500000, -135501/250000)` |
| 47 | 152 | f | 166929/500000 | 145489/250000 | 166929/500000 | 517403/889403 | 166929/500000 | 290871/500000 | `(-889403/1000000, 517403/1000000); (-639091/1000000, 267091/1000000)` |
| 48 | 161 | q | 122929/1000000 | 584441/1000000 | 395274552/3110302793 | 584441/1000000 | 25417/200000 | 584441/1000000 | `(35508518451/125000000000, -33476559/500000000); (35373886569/250000000000, -721959/8000000); (1844076673/4000000000, -33476559/500000000); (1837084787/8000000000, -721959/8000000); (59890266891/125000000000, -49409319/500000000); (84137383449/250000000000, -24422079/200000000); (3110302793/4000000000, -49409319/500000000); (4369537027/8000000000, -24422079/200000000)` |
| 49 | 848 | f | 166929/500000 | 290871/500000 | 145325/420823 | 290871/500000 | 69067/200000 | 290871/500000 | `(249503/500000, -5813/20000); (248557/1000000, -5813/20000); (420823/500000, -5813/20000); (591197/1000000, -5813/20000)` |
| 50 | 848 | h | 304733/500000 | 476053/500000 | 8872730533/14543550000 | 476053/500000 | 3813/6250 | 476053/500000 | `(69067/200000, -3287957041/10000000000); (69067/200000, -83056901903/200000000000); (290871/500000, -8872730533/25000000000); (290871/500000, -250302961739/500000000000)` |
| 51 | 858 | u | 120207/1000000 | 370237/1000000 | 4025/32371 | 370237/1000000 | 124339/1000000 | 370237/1000000 | `(24981/50000, -2093/20000); (249171/1000000, -2093/20000); (420823/500000, -2093/20000); (591197/1000000, -2093/20000)` |
| 52 | 873 | b | 53439/500000 | 145489/250000 | 53439/500000 | 49333761/88568000 | 53439/500000 | 69627/125000 | `(-3813/6250, -6218683/3125000000); (-3813/6250, 10717433/50000000); (-476053/500000, 24089309801/125000000000); (-476053/500000, 2121351723/4000000000)` |
| 53 | 906 | p | 58611/250000 | 338557/500000 | 39407273621/166628000000 | 338557/500000 | 118249/500000 | 338557/500000 | `(39417/62500, -175396993201/1000000000000); (39417/62500, -402080638207/1000000000000); (39417/62500, -183382886317/1000000000000); (39417/62500, -40838643239/200000000000); (39417/62500, -206646940531/1000000000000); (39417/62500, -433330585537/1000000000000); (39417/62500, -65419151867/200000000000); (39417/62500, -347906089213/1000000000000); (41657/50000, -39407273621/200000000000); (41657/50000, -102971710739/200000000000); (41657/50000, -205022261221/1000000000000); (41657/50000, -316971131683/1000000000000); (41657/50000, -45657263087/200000000000); (41657/50000, -21844340041/40000000000); (41657/50000, -348735134239/1000000000000); (41657/50000, -460684004701/1000000000000)` |
| 54 | 988 | w | 415553/1000000 | 133173/200000 | 415553/1000000 | 722752786/1085996875 | 415553/1000000 | 665521/1000000 | `(-347519/500000, 29352117959/125000000000); (-347519/500000, 21098688553/125000000000); (-347519/500000, 99708509/390625000); (-347519/500000, 37737212507/250000000000); (-416257/500000, 39836037719/125000000000); (-416257/500000, 3746015411/12500000000); (-416257/500000, 529883033/1562500000); (-416257/500000, 70460143621/250000000000); (-347519/500000, 1309138363/3125000000); (-347519/500000, 22056052557/62500000000); (-347519/500000, 361376393/781250000); (-347519/500000, 89564212507/250000000000); (-416257/500000, 1571236357/3125000000); (-416257/500000, 60473570671/125000000000); (-416257/500000, 853801783/1562500000); (-416257/500000, 122287143621/250000000000)` |
| 55 | 988 | k | 198173/250000 | 1/1 | 399760274561/500000000000 | 1/1 | 4997/6250 | 1/1 | `(444043/500000, -378993424927/500000000000); (444043/500000, -412007142551/500000000000); (1/1, -413131671487/500000000000); (1/1, -465284137993/500000000000); (444043/500000, -465862054319/500000000000); (444043/500000, -498875771943/500000000000); (1/1, -500000300879/500000000000); (1/1, -110430553477/100000000000); (444043/500000, -365622028001/500000000000); (444043/500000, -375125562437/500000000000); (1/1, -399760274561/500000000000); (1/1, -428402557879/500000000000); (444043/500000, -469672957777/500000000000); (444043/500000, -479176492213/500000000000); (1/1, -503811204337/500000000000); (1/1, -106490697531/100000000000)` |
| 56 | 0 | a | 5523/50000 | 360909/1000000 | 93000/816997 | 360909/1000000 | 113831/1000000 | 360909/1000000 | `(46239/100000, -93/1000); (3063/250000, -93/1000); (816997/1000000, -93/1000); (366859/1000000, -93/1000)` |
| 57 | 7 | b | 53439/500000 | 69627/125000 | 1240/11177 | 69627/125000 | 55471/500000 | 69627/125000 | `(496249/1000000, -93/1000); (249171/1000000, -93/1000); (33531/40000, -93/1000); (591197/1000000, -93/1000)` |
| 58 | 32 | u | 124339/1000000 | 370237/1000000 | 124339/1000000 | 162726128139/443084500000 | 124339/1000000 | 183629/500000 | `(-886169/1000000, 17096657347/200000000000); (-639091/1000000, 31721121/200000000000); (-886169/1000000, 103834058511/500000000000); (-639091/1000000, 31966233573/500000000000); (-886169/1000000, 31080514703/200000000000); (-639091/1000000, 14015578477/200000000000); (-886169/1000000, 162726128139/500000000000); (-639091/1000000, 90858303201/500000000000)` |
| 59 | 43 | e | 110597/1000000 | 360909/1000000 | 93000/812933 | 360909/1000000 | 143/1250 | 360909/1000000 | `(229163/500000, -93/1000); (3063/250000, -93/1000); (812933/1000000, -93/1000); (366859/1000000, -93/1000)` |
| 60 | 68 | j | 347519/500000 | 416257/500000 | 41635767231/59506625000 | 416257/500000 | 349841/500000 | 416257/500000 | `(3813/6250, -1049739293/1562500000); (3813/6250, -917701389/1562500000); (476053/500000, -177444549003/250000000000); (476053/500000, -48615177711/62500000000); (3813/6250, -2029973423/3125000000); (3813/6250, -743216127/1562500000); (476053/500000, -171884135963/250000000000); (476053/500000, -41635767231/62500000000)` |
| 61 | 71 | p | 118249/500000 | 338557/500000 | 118249/500000 | 256678879469/399760000000 | 118249/500000 | 642083/1000000 | `(-4997/6250, 3526018537/50000000000); (-4997/6250, 37047614093/100000000000); (-4997/6250, 16989207109/50000000000); (-4997/6250, 217862646013/500000000000); (-4997/6250, 4370066273/50000000000); (-4997/6250, 7747141913/20000000000); (-4997/6250, 104354152273/250000000000); (-4997/6250, 256678879469/500000000000); (-1/1, 927620229/10000000000); (-1/1, 48214670861/100000000000); (-1/1, 18101289717/50000000000); (-1/1, 273697929853/500000000000); (-1/1, 5482148881/50000000000); (-1/1, 49902766333/100000000000); (-1/1, 109914565313/250000000000); (-1/1, 312514163309/500000000000)` |
| 62 | 80 | c | 142317/250000 | 7391/8000 | 142317/250000 | 294327476/344450625 | 142317/250000 | 213621/250000 | `(-301153/1000000, 34524369/156250000); (-13661/250000, 1017384913/500000000000); (-301153/1000000, 208153/1000000); (-13661/250000, -9589/250000); (-551121/1000000, 73581869/156250000); (-76153/250000, 126001384913/500000000000); (-551121/1000000, 458121/1000000); (-76153/250000, 52903/250000)` |
| 63 | 87 | q | 25417/200000 | 584441/1000000 | 25417/200000 | 123847044629/213621000000 | 25417/200000 | 72469/125000 | `(-142317/250000, 68760201/625000000); (-213621/250000, 887565309/3125000000); (-142317/250000, 11191615681/50000000000); (-213621/250000, 123847044629/250000000000); (-142317/250000, -171778719/1250000000); (-213621/250000, 228635013/6250000000); (-142317/250000, -16232759839/100000000000); (-213621/250000, 54614133253/500000000000)` |
| 64 | 113 | e | 143/1250 | 360909/1000000 | 143/1250 | 17811322613/50053000000 | 143/1250 | 7117/20000 | `(-47101/250000, -28839717713/500000000000); (-150159/500000, 15899022927/500000000000); (-47101/250000, 8695227199/500000000000); (-150159/500000, 53433967839/500000000000); (-13893/250000, -56439085761/500000000000); (-83743/500000, -11700345121/500000000000); (-13893/250000, -35506015537/500000000000); (-83743/500000, 9232725103/500000000000); (-47101/250000, -40057977073/500000000000); (-47101/250000, -2523032161/500000000000); (-13893/250000, -67657345121/500000000000); (-13893/250000, -46724274897/500000000000)` |
| 65 | 113 | r | 444043/500000 | 1/1 | 306304221761/342560000000 | 1/1 | 447081/500000 | 1/1 | `(2141/3125, -343839166673/500000000000); (44367/100000, -259370057223/500000000000); (2141/3125, -306304221761/500000000000); (44367/100000, -221835112311/500000000000); (2141/3125, -363840544321/500000000000); (44367/100000, -263335291671/500000000000); (2141/3125, -342907474097/500000000000); (44367/100000, -242402221447/500000000000); (1107/1250, -444079166673/500000000000); (12883/20000, -359610057223/500000000000); (1107/1250, -406544221761/500000000000); (12883/20000, -322075112311/500000000000); (1107/1250, -464080544321/500000000000); (12883/20000, -363575291671/500000000000); (1107/1250, -443147474097/500000000000); (12883/20000, -342642221447/500000000000)` |
| 66 | 113 | w | 415553/1000000 | 665521/1000000 | 26532579/62566250 | 665521/1000000 | 424071/1000000 | 665521/1000000 | `(150159/500000, -624587843/3125000000); (150159/500000, -1542658161/6250000000); (150159/500000, -79597737/625000000); (150159/500000, -1998681603/10000000000); (83743/500000, -577100403/3125000000); (83743/500000, -1247231491/6250000000); (83743/500000, -70100249/625000000); (83743/500000, -1525998931/10000000000); (150159/500000, -13817907/62500000); (150159/500000, -67010927/250000000); (83743/500000, -64340791/312500000); (83743/500000, -275969301/1250000000)` |
| 67 | 113 | j | 349841/500000 | 416257/500000 | 349841/500000 | 152707/183707 | 349841/500000 | 415627/500000 | `(-309671/1000000, 450497717/3125000000); (-68221/1000000, -3586807273/50000000000); (-309671/1000000, 216671/1000000); (-68221/1000000, -24779/1000000); (-551121/1000000, 1205028967/3125000000); (-309671/1000000, 8485692727/50000000000); (-551121/1000000, 458121/1000000); (-309671/1000000, 38419021/312500000); (-68221/1000000, -929545477/10000000000); (-551121/1000000, 56936073/156250000); (-309671/1000000, 1484954523/10000000000)` |
| 68 | 114 | q | 25417/200000 | 72469/125000 | 25417/200000 | 2039188517/3635887500 | 25417/200000 | 560851/1000000 | `(-69067/200000, 149357981/6250000000); (-290871/500000, 65673617/390625000); (-69067/200000, 30561180361/500000000000); (-290871/500000, 35775860483/125000000000); (-69067/200000, 568884313/3125000000); (-290871/500000, 2039188517/6250000000); (-69067/200000, 10068431089/125000000000); (-290871/500000, 152815985927/500000000000)` |
| 69 | 115 | v | 39417/62500 | 41657/50000 | 39417/62500 | 59808687913/72717750000 | 39417/62500 | 411239/500000 | `(-69067/200000, 519263249/3125000000); (-290871/500000, 1939946389/6250000000); (-69067/200000, 30218827197/125000000000); (-290871/500000, 233417570359/500000000000); (-69067/200000, 1630520101/6250000000); (-290871/500000, 316492499/781250000); (-69067/200000, 126692490081/500000000000); (-290871/500000, 59808687913/125000000000)` |
| 70 | 127 | h | 3813/6250 | 476053/500000 | 3813/6250 | 243342553059/263452000000 | 3813/6250 | 92367/100000 | `(-769823/1000000, 83638874559/200000000000); (-65863/125000, 157589734773/500000000000); (-769823/1000000, 589700009367/1000000000000); (-65863/125000, 243342553059/500000000000); (-875661/1000000, 484943435931/1000000000000); (-316371/500000, 190964266341/500000000000); (-875661/1000000, 676749435931/1000000000000); (-316371/500000, 286867266341/500000000000); (-769823/1000000, 77634544249/200000000000); (-65863/125000, 113252512723/500000000000); (-769823/1000000, 559678357817/1000000000000); (-65863/125000, 199005331009/500000000000); (-875661/1000000, 454921784381/1000000000000); (-316371/500000, 146627044291/500000000000); (-875661/1000000, 646727784381/1000000000000); (-316371/500000, 242530044291/500000000000)` |
| 71 | 127 | v | 39417/62500 | 411239/500000 | 317383353339/500000000000 | 411239/500000 | 317383/500000 | 411239/500000 | `(447081/500000, -615382179909/1000000000000); (447081/500000, -856790974479/1000000000000); (447081/500000, -285098529819/500000000000); (447081/500000, -367714442499/500000000000); (1/1, -679951826949/1000000000000); (1/1, -954550359939/1000000000000); (1/1, -317383353339/500000000000); (1/1, -416594135229/500000000000); (447081/500000, -645403831459/1000000000000); (447081/500000, -886812626029/1000000000000); (447081/500000, -329435751869/500000000000); (447081/500000, -412051664549/500000000000); (1/1, -709973478499/1000000000000); (1/1, -984572011489/1000000000000); (1/1, -361720575389/500000000000); (1/1, -460931357279/500000000000)` |
| 72 | 135 | a | 113831/1000000 | 360909/1000000 | 113831/1000000 | 7117/20000 | 113831/1000000 | 7117/20000 | `(-1/1, 143/1250); (-1/1, 7117/20000)` |
| 73 | 149 | c | 142317/250000 | 213621/250000 | 90334/153945 | 213621/250000 | 586793/1000000 | 213621/250000 | `(3813/6250, -135501/250000); (92367/100000, -135501/250000)` |
| 74 | 149 | h | 3813/6250 | 92367/100000 | 1457/2297 | 92367/100000 | 126861/200000 | 92367/100000 | `(586793/1000000, -135501/250000); (213621/250000, -135501/250000)` |
| 75 | 152 | f | 69067/200000 | 290871/500000 | 69067/200000 | 214/369 | 69067/200000 | 289973/500000 | `(-1107/1250, 321/625); (-12883/20000, 5443/20000)` |
| 76 | 161 | q | 25417/200000 | 560851/1000000 | 259375250/1860200183 | 560851/1000000 | 69717/500000 | 560851/1000000 | `(152705249941/500000000000, -8697081/125000000); (32679088963/200000000000, -18416883/200000000); (55592088177/125000000000, -8697081/125000000); (11896767111/50000000000, -18416883/200000000); (475207856327/1000000000000, -96487593/1000000000); (16659640063/50000000000, -743721/6250000); (172998617019/250000000000, -96487593/1000000000); (6064913811/12500000000, -743721/6250000)` |
| 77 | 848 | f | 69067/200000 | 289973/500000 | 290650/809839 | 289973/500000 | 179449/500000 | 289973/500000 | `(260237/500000, -5813/20000); (55691/200000, -5813/20000); (809839/1000000, -5813/20000); (28391/50000, -5813/20000)` |
| 78 | 858 | u | 124339/1000000 | 183629/500000 | 104650/809839 | 183629/500000 | 129223/1000000 | 183629/500000 | `(260237/500000, -2093/20000); (55691/200000, -2093/20000); (809839/1000000, -2093/20000); (28391/50000, -2093/20000)` |
| 79 | 873 | b | 55471/500000 | 69627/125000 | 55471/500000 | 10999305907/23091750000 | 55471/500000 | 476331/1000000 | `(-126861/200000, 4583346773/200000000000); (-126861/200000, 9635723681/50000000000); (-92367/100000, 19271409031/100000000000); (-92367/100000, 10999305907/25000000000)` |
| 80 | 901 | u | 129223/1000000 | 183629/500000 | 90218366737/634305000000 | 183629/500000 | 142231/1000000 | 183629/500000 | `(126861/200000, -89899927869/500000000000); (126861/200000, -179631411409/1000000000000); (92367/100000, -13243911723/62500000000); (92367/100000, -39683116403/125000000000); (126861/200000, -79487355517/500000000000); (126861/200000, -90218366737/1000000000000); (92367/100000, -11942340179/62500000000); (92367/100000, -28506485819/125000000000)` |
| 81 | 906 | p | 118249/500000 | 642083/1000000 | 100691552351/411239000000 | 642083/1000000 | 244849/1000000 | 642083/1000000 | `(317383/500000, -90278979999/500000000000); (317383/500000, -180773412073/500000000000); (317383/500000, -193743676511/1000000000000); (317383/500000, -110375702223/500000000000); (317383/500000, -52983593679/250000000000); (317383/500000, -24557702429/62500000000); (317383/500000, -39993786811/125000000000); (317383/500000, -346958022423/1000000000000); (411239/500000, -100691552351/500000000000); (411239/500000, -225479934409/500000000000); (411239/500000, -42913764243/200000000000); (411239/500000, -155082224559/500000000000); (411239/500000, -11637975971/50000000000); (411239/500000, -30146017721/62500000000); (411239/500000, -42596929899/125000000000); (411239/500000, -87274213419/200000000000)` |
| 82 | 988 | w | 424071/1000000 | 665521/1000000 | 424071/1000000 | 45811979101/69968200000 | 424071/1000000 | 130951/200000 | `(-349841/500000, 3001922073/12500000000); (-349841/500000, 1149237879/6250000000); (-349841/500000, 25763979101/100000000000); (-349841/500000, 8536913647/50000000000); (-415627/500000, 3236105433/10000000000); (-415627/500000, 7635179247/25000000000); (-415627/500000, 34109656847/100000000000); (-415627/500000, 14613369109/50000000000); (-349841/500000, 1048538409/2500000000); (-349841/500000, 453924573/1250000000); (-349841/500000, 45811979101/100000000000); (-349841/500000, 18560913647/50000000000); (-415627/500000, 25143607053/50000000000); (-415627/500000, 12116719191/25000000000); (-415627/500000, 54157656847/100000000000); (-415627/500000, 24637369109/50000000000)` |
| 83 | 988 | k | 4997/6250 | 1/1 | 202733536641/250000000000 | 1/1 | 405467/500000 | 1/1 | `(447081/500000, -385730740911/500000000000); (447081/500000, -413868593511/500000000000); (1/1, -209648763603/250000000000); (1/1, -462748286241/500000000000); (447081/500000, -93286692431/100000000000); (447081/500000, -98914262951/100000000000); (1/1, -10000004969/10000000000); (1/1, -108690201497/100000000000); (447081/500000, -371900286987/500000000000); (447081/500000, -381001973697/500000000000); (1/1, -202733536641/250000000000); (1/1, -429881666427/500000000000); (447081/500000, -93555757171/100000000000); (447081/500000, -95376094513/100000000000); (1/1, -10026911443/10000000000); (1/1, -105152033059/100000000000)` |
| 84 | 0 | a | 113831/1000000 | 7117/20000 | 46500/371771 | 7117/20000 | 31269/250000 | 7117/20000 | `(475851/1000000, -93/1000); (55231/500000, -93/1000); (371771/500000, -93/1000); (378153/1000000, -93/1000)` |
| 85 | 7 | b | 55471/500000 | 476331/1000000 | 15500/133099 | 476331/1000000 | 58227/500000 | 476331/1000000 | `(509229/1000000, -93/1000); (55691/200000, -93/1000); (399297/500000, -93/1000); (28391/50000, -93/1000)` |
| 86 | 32 | u | 142231/1000000 | 183629/500000 | 142231/1000000 | 77863875073/218731000000 | 142231/1000000 | 355981/1000000 | `(-218731/250000, 4496336081/50000000000); (-12883/20000, 887799321/125000000000); (-218731/250000, 10129633837/50000000000); (-12883/20000, 8594527317/125000000000); (-218731/250000, 39324045749/250000000000); (-12883/20000, 9308981993/125000000000); (-218731/250000, 77863875073/250000000000); (-12883/20000, 22202380261/125000000000)` |
| 87 | 43 | e | 143/1250 | 7117/20000 | 3100/24601 | 7117/20000 | 126011/1000000 | 7117/20000 | `(470339/1000000, -93/1000); (55231/500000, -93/1000); (73803/100000, -93/1000); (378153/1000000, -93/1000)` |
| 88 | 68 | j | 349841/500000 | 415627/500000 | 21883055159/30789000000 | 415627/500000 | 355371/500000 | 415627/500000 | `(126861/200000, -336140423217/500000000000); (126861/200000, -608716131801/1000000000000); (92367/100000, -11030914971/15625000000); (92367/100000, -23329676613/31250000000); (126861/200000, -65026335447/100000000000); (126861/200000, -103731626991/200000000000); (92367/100000, -34198053309/50000000000); (92367/100000, -65649165477/100000000000)` |
| 89 | 71 | p | 244849/1000000 | 642083/1000000 | 244849/1000000 | 28960701331/47702000000 | 244849/1000000 | 303559/500000 | `(-405467/500000, 21075115257/250000000000); (-405467/500000, 10186183329/31250000000); (-405467/500000, 83685881781/250000000000); (-405467/500000, 84948529383/200000000000); (-405467/500000, 25275982809/250000000000); (-405467/500000, 10711291773/31250000000); (-405467/500000, 100583200709/250000000000); (-405467/500000, 492331922627/1000000000000); (-1/1, 3322436031/31250000000); (-1/1, 208007931687/500000000000); (-1/1, 22297563693/62500000000); (-1/1, 514800643761/1000000000000); (-1/1, 153901779/1250000000); (-1/1, 216409666791/500000000000); (-1/1, 1060875737/2500000000); (-1/1, 582389919473/1000000000000)` |
| 90 | 80 | c | 586793/1000000 | 213621/250000 | 586793/1000000 | 224540376109/264372000000 | 586793/1000000 | 169867/200000 | `(-14903/50000, 109198376109/500000000000); (-68221/1000000, 128834523/10000000000); (-14903/50000, 10253/50000); (-68221/1000000, -24779/1000000); (-66093/125000, 224540376109/500000000000); (-59781/200000, 2435674523/10000000000); (-66093/125000, 13617/31250); (-59781/200000, 41181/200000)` |
| 91 | 87 | q | 69717/500000 | 560851/1000000 | 69717/500000 | 23267279181/42466750000 | 69717/500000 | 109579/200000 | `(-586793/1000000, 3097419723/25000000000); (-169867/200000, 29042849223/100000000000); (-586793/1000000, 2785542681/12500000000); (-169867/200000, 23267279181/50000000000); (-586793/1000000, -847137993/8000000000); (-169867/200000, 12127890837/200000000000); (-586793/1000000, -447094371/4000000000); (-169867/200000, 13072857639/100000000000)` |
| 92 | 113 | e | 126011/1000000 | 7117/20000 | 126011/1000000 | 9639312179/28925800000 | 126011/1000000 | 333243/1000000 | `(-9171/50000, -28080851687/500000000000); (-144629/500000, 14832964659/500000000000); (-9171/50000, 5282744549/500000000000); (-144629/500000, 9639312179/100000000000); (-15727/250000, -53633673863/500000000000); (-84373/500000, -10719857517/500000000000); (-15727/250000, -34170172731/500000000000); (-84373/500000, 1748728723/100000000000); (-9171/50000, -38086035341/500000000000); (-9171/50000, -944487821/100000000000); (-15727/250000, -63638857517/500000000000); (-15727/250000, -8835071277/100000000000)` |
| 93 | 113 | r | 447081/500000 | 1/1 | 39061223003/42807687500 | 1/1 | 912481/1000000 | 1/1 | `(684923/1000000, -17292669013/25000000000); (477691/1000000, -68052284297/125000000000); (684923/1000000, -39061223003/62500000000); (477691/1000000, -29855692619/62500000000); (684923/1000000, -18190664181/25000000000); (477691/1000000, -69420517289/125000000000); (684923/1000000, -43043722811/62500000000); (477691/1000000, -32277321003/62500000000); (873989/1000000, -22019319013/25000000000); (666757/1000000, -91685534297/125000000000); (873989/1000000, -50877848003/62500000000); (666757/1000000, -41672317619/62500000000); (873989/1000000, -22917314181/25000000000); (666757/1000000, -93053767289/125000000000); (873989/1000000, -54860347811/62500000000); (666757/1000000, -44093946003/62500000000)` |
| 94 | 113 | w | 424071/1000000 | 130951/200000 | 64724844919/144629000000 | 130951/200000 | 447523/1000000 | 130951/200000 | `(144629/500000, -1515147727/8000000000); (144629/500000, -231200242323/1000000000000); (144629/500000, -64724844919/500000000000); (144629/500000, -94696601847/500000000000); (84373/500000, -174207628243/1000000000000); (84373/500000, -191040461907/1000000000000); (84373/500000, -57131926103/500000000000); (84373/500000, -74616711639/500000000000); (144629/500000, -205940333129/1000000000000); (144629/500000, -247747109577/1000000000000); (84373/500000, -190754495497/1000000000000); (84373/500000, -207587329161/1000000000000)` |
| 95 | 113 | j | 355371/500000 | 415627/500000 | 355371/500000 | 18156/22031 | 355371/500000 | 51507/62500 | `(-40189/125000, 168568223963/1000000000000); (-2857/25000, -20527038629/1000000000000); (-40189/125000, 7141/31250); (-2857/25000, 133/6250); (-66093/125000, 375800223963/1000000000000); (-40189/125000, 186704961371/1000000000000); (-66093/125000, 13617/31250); (-40189/125000, 152021356709/1000000000000); (-2857/25000, -37073905883/1000000000000); (-66093/125000, 359253356709/1000000000000); (-40189/125000, 170158094117/1000000000000)` |
| 96 | 114 | q | 69717/500000 | 109579/200000 | 69717/500000 | 15544133227/28997300000 | 69717/500000 | 107211/200000 | `(-179449/500000, 7638170189/200000000000); (-289973/500000, 35680540517/200000000000); (-179449/500000, 7119263983/100000000000); (-289973/500000, 27536804599/100000000000); (-179449/500000, 1706708129/10000000000); (-289973/500000, 15544133227/50000000000); (-179449/500000, 494223163/5000000000); (-289973/500000, 7575500969/25000000000)` |
| 97 | 115 | v | 317383/500000 | 411239/500000 | 317383/500000 | 9397015031/11598920000 | 317383/500000 | 810163/1000000 | `(-179449/500000, 37332792287/200000000000); (-289973/500000, 13075032523/40000000000); (-179449/500000, 24935980789/100000000000); (-289973/500000, 9070704281/20000000000); (-179449/500000, 52966253537/200000000000); (-289973/500000, 16201724773/40000000000); (-179449/500000, 26567534539/100000000000); (-289973/500000, 9397015031/20000000000)` |
| 98 | 127 | h | 126861/200000 | 92367/100000 | 126861/200000 | 8115810989/9275000000 | 126861/200000 | 875021/1000000 | `(-3081/4000, 422560270633/1000000000000); (-1113/2000, 326902229383/1000000000000); (-3081/4000, 58260670059/100000000000); (-1113/2000, 24347432967/50000000000); (-857769/1000000, 478114356187/1000000000000); (-644019/1000000, 382456314937/1000000000000); (-857769/1000000, 653511356187/1000000000000); (-644019/1000000, 557853314937/1000000000000); (-3081/4000, 393085456041/1000000000000); (-1113/2000, 253131574791/1000000000000); (-3081/4000, 276565942999/500000000000); (-1113/2000, 103294501187/250000000000); (-857769/1000000, 89727908319/200000000000); (-644019/1000000, 61737132069/200000000000); (-857769/1000000, 124807308319/200000000000); (-644019/1000000, 96816532069/200000000000)` |
| 99 | 127 | v | 317383/500000 | 810163/1000000 | 330407078429/500000000000 | 810163/1000000 | 330407/500000 | 810163/1000000 | `(912481/1000000, -645225070063/1000000000000); (912481/1000000, -830636569063/1000000000000); (912481/1000000, -605300417563/1000000000000); (912481/1000000, -739258871563/1000000000000); (1/1, -350369404679/500000000000); (1/1, -453608765981/500000000000); (1/1, -330407078429/500000000000); (1/1, -407919917231/500000000000); (912481/1000000, -134939976931/200000000000); (912481/1000000, -172022276731/200000000000); (912481/1000000, -135814214431/200000000000); (912481/1000000, -162605905231/200000000000); (1/1, -14604272479/20000000000); (1/1, -468346173277/500000000000); (1/1, -14691696229/20000000000); (1/1, -444805244527/500000000000)` |
| 100 | 135 | a | 31269/250000 | 7117/20000 | 31269/250000 | 333243/1000000 | 31269/250000 | 333243/1000000 | `(-1/1, 126011/1000000); (-1/1, 333243/1000000)` |
| 101 | 149 | c | 586793/1000000 | 169867/200000 | 542004/875021 | 169867/200000 | 309709/500000 | 169867/200000 | `(126861/200000, -135501/250000); (875021/1000000, -135501/250000)` |
| 102 | 149 | h | 126861/200000 | 875021/1000000 | 542004/849335 | 875021/1000000 | 638151/1000000 | 875021/1000000 | `(309709/500000, -135501/250000); (169867/200000, -135501/250000)` |
| 103 | 152 | f | 179449/500000 | 289973/500000 | 179449/500000 | 501989/873989 | 179449/500000 | 287183/500000 | `(-873989/1000000, 501989/1000000); (-666757/1000000, 294757/1000000)` |
| 104 | 161 | q | 69717/500000 | 107211/200000 | 531480120/3639740209 | 107211/200000 | 146021/1000000 | 107211/200000 | `(6356157807/20000000000, -70980111/1000000000); (23608187943/125000000000, -45169821/500000000); (3486180441/8000000000, -70980111/1000000000); (12948451809/50000000000, -45169821/500000000); (46452943201/100000000000, -93009021/1000000000); (83896761301/250000000000, -14046069/125000000); (25478181463/40000000000, -93009021/1000000000); (46015101763/100000000000, -14046069/125000000)` |
| 105 | 848 | f | 179449/500000 | 287183/500000 | 58130/149989 | 287183/500000 | 387561/1000000 | 287183/500000 | `(20523/40000, -5813/20000); (76227/250000, -5813/20000); (149989/200000, -5813/20000); (270889/500000, -5813/20000)` |
| 106 | 873 | b | 58227/500000 | 476331/1000000 | 58227/500000 | 78779392207/175004200000 | 58227/500000 | 225079/500000 | `(-638151/1000000, 22996608059/500000000000); (-638151/1000000, 38542995917/200000000000); (-875021/1000000, 96357378889/500000000000); (-875021/1000000, 78779392207/200000000000)` |
| 107 | 901 | u | 142231/1000000 | 355981/1000000 | 12802302763/79768875000 | 355981/1000000 | 40123/250000 | 355981/1000000 | `(638151/1000000, -88605901499/500000000000); (638151/1000000, -84824534623/500000000000); (875021/1000000, -102398130989/500000000000); (875021/1000000, -138138997353/500000000000); (638151/1000000, -19977439319/125000000000); (638151/1000000, -12802302763/125000000000); (875021/1000000, -46850993383/250000000000); (875021/1000000, -52261836891/250000000000)` |
| 108 | 906 | p | 244849/1000000 | 303559/500000 | 516375487/2025407500 | 303559/500000 | 63737/250000 | 303559/500000 | `(330407/500000, -94578953177/500000000000); (330407/500000, -180473194813/500000000000); (330407/500000, -103167111823/500000000000); (330407/500000, -123983400491/500000000000); (330407/500000, -217703405623/1000000000000); (330407/500000, -77898377779/200000000000); (330407/500000, -311127079541/1000000000000); (330407/500000, -352759656877/1000000000000); (810163/1000000, -516375487/2500000000); (810163/1000000, -13380532399/31250000000); (810163/1000000, -55931628023/250000000000); (810163/1000000, -78799362031/250000000000); (810163/1000000, -235095694069/1000000000000); (810163/1000000, -456722536037/1000000000000); (810163/1000000, -328519367987/1000000000000); (810163/1000000, -419990304019/1000000000000)` |
| 109 | 988 | w | 447523/1000000 | 130951/200000 | 447523/1000000 | 232011359021/355371000000 | 447523/1000000 | 652871/1000000 | `(-355371/500000, 51966984533/200000000000); (-355371/500000, 42409801147/200000000000); (-355371/500000, 137478359021/500000000000); (-355371/500000, 103220087791/500000000000); (-51507/62500, 66436420307/200000000000); (-51507/62500, 62250027301/200000000000); (-51507/62500, 21706493557/62500000000); (-51507/62500, 19102581647/62500000000); (-355371/500000, 432354055411/1000000000000); (-355371/500000, 384568138481/1000000000000); (-355371/500000, 232011359021/500000000000); (-355371/500000, 197753087791/500000000000); (-51507/62500, 504701234281/1000000000000); (-51507/62500, 483769269251/1000000000000); (-51507/62500, 33523118557/62500000000); (-51507/62500, 30919206647/62500000000)` |
| 110 | 988 | k | 405467/500000 | 1/1 | 13006862151/15625000000 | 1/1 | 832439/1000000 | 1/1 | `(912481/1000000, -159640067331/200000000000); (912481/1000000, -169197250717/200000000000); (1/1, -106756334253/125000000000); (1/1, -230641804121/250000000000); (912481/1000000, -944149784871/1000000000000); (912481/1000000, -991935701801/1000000000000); (1/1, -1562500191/1562500000); (1/1, -10685166647/10000000000); (912481/1000000, -155317768059/200000000000); (912481/1000000, -31900832213/40000000000); (1/1, -13006862151/15625000000); (1/1, -27315680257/31250000000); (912481/1000000, -945818591271/1000000000000); (912481/1000000, -966750556301/1000000000000); (1/1, -1565107701/1562500000); (1/1, -1304164399/1250000000)` |
| 111 | 0 | a | 31269/250000 | 333243/1000000 | 93000/732881 | 333243/1000000 | 7931/62500 | 333243/1000000 | `(125741/250000, -93/1000); (8463/50000, -93/1000); (732881/1000000, -93/1000); (399177/1000000, -93/1000)` |
| 112 | 7 | b | 58227/500000 | 225079/500000 | 248/1995 | 225079/500000 | 12431/100000 | 225079/500000 | `(102251/200000, -93/1000); (76227/250000, -93/1000); (1197/1600, -93/1000); (270889/500000, -93/1000)` |
| 113 | 32 | u | 40123/250000 | 355981/1000000 | 40123/250000 | 149722666861/436552000000 | 40123/250000 | 342967/1000000 | `(-54569/62500, 56962896999/500000000000); (-666757/1000000, 33953744331/1000000000000); (-54569/62500, 53416086497/250000000000); (-666757/1000000, 47572822493/500000000000); (-54569/62500, 171807641787/1000000000000); (-666757/1000000, 2295889803/25000000000); (-54569/62500, 149722666861/500000000000); (-666757/1000000, 2261582909/12500000000)` |
| 114 | 43 | e | 126011/1000000 | 333243/1000000 | 1240/9667 | 333243/1000000 | 128271/1000000 | 333243/1000000 | `(123777/250000, -93/1000); (8463/50000, -93/1000); (29001/40000, -93/1000); (399177/1000000, -93/1000)` |
| 115 | 61 | p | 63737/250000 | 303559/500000 | 255750174271/1000000000000 | 303559/500000 | 1023/4000 | 303559/500000 | `(1/1, -255750174271/1000000000000); (1/1, -534017523463/1000000000000); (1/1, -35378453397/125000000000); (1/1, -35080936023/62500000000); (1/1, -71685402961/200000000000); (1/1, -101920513033/200000000000); (1/1, -11464119227/25000000000); (1/1, -7621753993/12500000000)` |
| 116 | 68 | h | 638151/1000000 | 875021/1000000 | 121346/186977 | 875021/1000000 | 162247/250000 | 875021/1000000 | `(9163/15625, -58936950791/100000000000); (32573/125000, -159060462319/500000000000); (349901/500000, -58936950791/100000000000); (186977/500000, -159060462319/500000000000); (9163/15625, -28427/50000); (32573/125000, -60673/250000); (349901/500000, -28427/50000); (186977/500000, -60673/250000)` |
| 117 | 68 | j | 355371/500000 | 51507/62500 | 318294851659/437510500000 | 51507/62500 | 727513/1000000 | 51507/62500 | `(162247/250000, -67004520619/100000000000); (162247/250000, -305134032371/500000000000); (875021/1000000, -34907168421/50000000000); (875021/1000000, -178004656989/250000000000); (162247/250000, -16230392457/25000000000); (162247/250000, -66854892513/125000000000); (875021/1000000, -67731386051/100000000000); (875021/1000000, -318294851659/500000000000)` |
| 118 | 71 | p | 1023/4000 | 303559/500000 | 1023/4000 | 30136811677/52027437500 | 1023/4000 | 579249/1000000 | `(-832439/1000000, 98560797353/1000000000000); (-832439/1000000, 322228729817/1000000000000); (-832439/1000000, 66766095251/200000000000); (-832439/1000000, 430406609887/1000000000000); (-832439/1000000, 28166569983/250000000000); (-832439/1000000, 84083553099/250000000000); (-832439/1000000, 964032133/2500000000); (-832439/1000000, 30136811677/62500000000); (-1/1, 119390305263/1000000000000); (-1/1, 79531530891/200000000000); (-1/1, 70931996833/200000000000); (-1/1, 20233421381/40000000000); (-1/1, 66747893921/500000000000); (-1/1, 205881568517/500000000000); (-1/1, 40644236111/100000000000); (-1/1, 55761791147/100000000000)` |
| 119 | 80 | c | 309709/500000 | 169867/200000 | 309709/500000 | 442826149649/524600000000 | 309709/500000 | 422061/500000 | `(-79813/250000, 237478149649/1000000000000); (-2857/25000, 50445094117/1000000000000); (-79813/250000, 56563/250000); (-2857/25000, 133/6250); (-2623/5000, 442826149649/1000000000000); (-79907/250000, 255793094117/1000000000000); (-2623/5000, 1079/2500); (-79907/250000, 56657/250000)` |
| 120 | 87 | q | 146021/1000000 | 107211/200000 | 146021/1000000 | 35153154651/70343500000 | 146021/1000000 | 62467/125000 | `(-309709/500000, 8938510499/62500000000); (-422061/500000, 18052897971/62500000000); (-309709/500000, 56304284257/250000000000); (-422061/500000, 105459463953/250000000000); (-309709/500000, -16732700257/250000000000); (-422061/500000, 19724849631/250000000000); (-309709/500000, -57851281451/1000000000000); (-422061/500000, 138769437333/1000000000000)` |
| 121 | 113 | e | 128271/1000000 | 333243/1000000 | 128271/1000000 | 28299620059/90829000000 | 128271/1000000 | 311571/1000000 | `(-23121/125000, -2195501457/50000000000); (-272487/1000000, 28944199701/1000000000000); (-23121/125000, 1505578917/125000000000); (-272487/1000000, 84898860177/1000000000000); (-88369/1000000, -87140303417/1000000000000); (-10993/62500, -892879661/62500000000); (-88369/1000000, -51022054393/1000000000000); (-10993/62500, 1364510903/62500000000); (-23121/125000, -58574800299/1000000000000); (-23121/125000, -2620139823/1000000000000); (-88369/1000000, -6362817161/62500000000); (-88369/1000000, -4105426597/62500000000)` |
| 122 | 113 | r | 912481/1000000 | 1/1 | 3271106599/3520840000 | 1/1 | 929069/1000000 | 1/1 | `(88021/125000, -177543995069/250000000000); (130217/250000, -36051427961/62500000000); (88021/125000, -3271106599/5000000000); (130217/250000, -5208681869/10000000000); (88021/125000, -11578365691/15625000000); (130217/250000, -1152257177/1953125000); (88021/125000, -220280361/312500000); (130217/250000, -346148391/625000000); (871729/1000000, -219434245069/250000000000); (688429/1000000, -46523990461/62500000000); (871729/1000000, -4108911599/5000000000); (688429/1000000, -6884291869/10000000000); (871729/1000000, -3549126579/3906250000); (688429/1000000, -11836198041/15625000000); (871729/1000000, -545286347/625000000); (688429/1000000, -14089813/19531250)` |
| 123 | 113 | w | 447523/1000000 | 652871/1000000 | 42650726659/90829000000 | 652871/1000000 | 469571/1000000 | 652871/1000000 | `(272487/1000000, -35579904077/200000000000); (272487/1000000, -42968947037/200000000000); (272487/1000000, -127952179977/1000000000000); (272487/1000000, -177899047077/1000000000000); (10993/62500, -20688583757/125000000000); (10993/62500, -46186822039/250000000000); (10993/62500, -7222583103/62500000000); (10993/62500, -9237600003/62500000000); (272487/1000000, -47446197419/250000000000); (272487/1000000, -56682501119/250000000000); (10993/62500, -177393939347/1000000000000); (10993/62500, -196632557447/1000000000000)` |
| 124 | 113 | j | 727513/1000000 | 51507/62500 | 727513/1000000 | 2158/2623 | 727513/1000000 | 822723/1000000 | `(-3413/10000, 24794082449/125000000000); (-79/500, 7013577973/250000000000); (-3413/10000, 2483/10000); (-79/500, 13/200); (-2623/5000, 47706582449/125000000000); (-3413/10000, 52838577973/250000000000); (-2623/5000, 1079/2500); (-3413/10000, 186467390301/1000000000000); (-79/500, 16169042601/1000000000000); (-2623/5000, 369767390301/1000000000000); (-3413/10000, 199469042601/1000000000000)` |
| 125 | 115 | v | 330407/500000 | 810163/1000000 | 330407/500000 | 452445984379/574366000000 | 330407/500000 | 196933/250000 | `(-387561/1000000, 53714264043/250000000000); (-287183/500000, 42011407439/125000000000); (-387561/1000000, 266182143449/1000000000000); (-287183/500000, 214820220677/500000000000); (-387561/1000000, 34863496359/125000000000); (-287183/500000, 100035543553/250000000000); (-387561/1000000, 144493843237/500000000000); (-287183/500000, 452445984379/1000000000000)` |
| 126 | 127 | h | 162247/250000 | 875021/1000000 | 162247/250000 | 43437274941/53282000000 | 162247/250000 | 407617/500000 | `(-768577/1000000, 222789706617/500000000000); (-293051/500000, 359894445009/1000000000000); (-768577/1000000, 8804609259/15625000000); (-293051/500000, 477810024351/1000000000000); (-209877/250000, 123112902767/250000000000); (-657033/1000000, 406766642843/1000000000000); (-209877/250000, 154842402767/250000000000); (-657033/1000000, 533684642843/1000000000000); (-768577/1000000, 208080614817/500000000000); (-293051/500000, 297028593909/1000000000000); (-768577/1000000, 33379800561/62500000000); (-293051/500000, 414944173251/1000000000000); (-209877/250000, 115758356867/250000000000); (-657033/1000000, 343900791743/1000000000000); (-209877/250000, 147487856867/250000000000); (-657033/1000000, 470818791743/1000000000000)` |
| 127 | 127 | v | 330407/500000 | 196933/250000 | 680453889761/1000000000000 | 196933/250000 | 680453/1000000 | 196933/250000 | `(929069/1000000, -20848738719/31250000000); (929069/1000000, -15898649819/20000000000); (929069/1000000, -634420521933/1000000000000); (929069/1000000, -29274305401/40000000000); (1/1, -178298251709/250000000000); (1/1, -213189463451/250000000000); (1/1, -680453889761/1000000000000); (1/1, -789682997879/1000000000000); (929069/1000000, -43536113913/62500000000); (929069/1000000, -16487013491/20000000000); (929069/1000000, -697286373033/1000000000000); (929069/1000000, -6357787889/8000000000); (1/1, -185652797609/250000000000); (1/1, -220544009351/250000000000); (1/1, -743319740861/1000000000000); (1/1, -852548848979/1000000000000)` |
| 128 | 128 | v | 680453/1000000 | 196933/250000 | 680453/1000000 | 80135050363/102840375000 | 680453/1000000 | 389609/500000 | `(-727513/1000000, 12768425773/31250000000); (-727513/1000000, 251427298951/500000000000); (-727513/1000000, 442064845961/1000000000000); (-727513/1000000, 505994080277/1000000000000); (-822723/1000000, 58797471527/125000000000); (-822723/1000000, 290236513521/500000000000); (-822723/1000000, 503854993441/1000000000000); (-822723/1000000, 583612509417/1000000000000); (-727513/1000000, 108870456187/250000000000); (-727513/1000000, 264873398957/500000000000); (-727513/1000000, 62441592431/125000000000); (-727513/1000000, 140865493441/250000000000); (-822723/1000000, 124317993057/250000000000); (-822723/1000000, 303682613527/500000000000); (-822723/1000000, 35082680433/62500000000); (-822723/1000000, 80135050363/125000000000)` |
| 129 | 135 | a | 7931/62500 | 333243/1000000 | 7931/62500 | 311571/1000000 | 7931/62500 | 311571/1000000 | `(-1/1, 128271/1000000); (-1/1, 311571/1000000)` |
| 130 | 149 | c | 309709/500000 | 422061/500000 | 271002/407617 | 422061/500000 | 166211/250000 | 422061/500000 | `(162247/250000, -135501/250000); (407617/500000, -135501/250000)` |
| 131 | 152 | f | 387561/1000000 | 287183/500000 | 387561/1000000 | 499729/871729 | 387561/1000000 | 286631/500000 | `(-871729/1000000, 499729/1000000); (-688429/1000000, 316429/1000000)` |
| 132 | 161 | q | 146021/1000000 | 62467/125000 | 1043072500/6917157729 | 62467/125000 | 75397/500000 | 62467/125000 | `(21694358353/62500000000, -18039303/250000000); (56082416987/250000000000, -89331987/1000000000); (55088667903/125000000000, -18039303/250000000); (142410556437/500000000000, -89331987/1000000000); (57204673659/125000000000, -8761809/100000000); (83714330893/250000000000, -20958573/200000000); (145260312309/250000000000, -8761809/100000000); (212576509443/500000000000, -20958573/200000000)` |
| 133 | 848 | a | 7931/62500 | 311571/1000000 | 7931/62500 | 44173168327/143315500000 | 7931/62500 | 4816/15625 | `(-387561/1000000, -9781890433/250000000000); (-286631/500000, 10173769857/125000000000); (-387561/1000000, 12651452137/500000000000); (-286631/500000, 44173168327/250000000000)` |
| 134 | 848 | f | 387561/1000000 | 286631/500000 | 145325/344169 | 286631/500000 | 52781/125000 | 286631/500000 | `(130523/250000, -5813/20000); (85191/250000, -5813/20000); (344169/500000, -5813/20000); (50701/100000, -5813/20000)` |
| 135 | 873 | b | 12431/100000 | 225079/500000 | 12431/100000 | 84716988637/203808500000 | 12431/100000 | 41567/100000 | `(-162247/250000, 5136673617/62500000000); (-162247/250000, 24817006067/125000000000); (-407617/500000, 24089304187/125000000000); (-407617/500000, 84716988637/250000000000)` |
| 136 | 901 | u | 40123/250000 | 342967/1000000 | 1257182959/6489880000 | 342967/1000000 | 96857/500000 | 342967/1000000 | `(162247/250000, -3518791717/20000000000); (162247/250000, -3335438869/20000000000); (407617/500000, -19660562611/100000000000); (407617/500000, -23587541827/100000000000); (162247/250000, -1636621087/10000000000); (162247/250000, -1257182959/10000000000); (407617/500000, -1152050931/6250000000); (407617/500000, -1217636067/6250000000)` |
| 137 | 906 | p | 1023/4000 | 579249/1000000 | 53275824089/194804500000 | 579249/1000000 | 273483/1000000 | 579249/1000000 | `(680453/1000000, -100412909603/500000000000); (680453/1000000, -177573632723/500000000000); (680453/1000000, -112521894887/500000000000); (680453/1000000, -138848747447/500000000000); (680453/1000000, -27916534511/125000000000); (680453/1000000, -47206715291/125000000000); (680453/1000000, -149815443491/500000000000); (680453/1000000, -176142296051/500000000000); (389609/500000, -53275824089/250000000000); (389609/500000, -99050228249/250000000000); (389609/500000, -59330316731/250000000000); (389609/500000, -79687785611/250000000000); (389609/500000, -117804876619/500000000000); (389609/500000, -209353684939/500000000000); (389609/500000, -77977091033/250000000000); (389609/500000, -98334559913/250000000000)` |
| 138 | 988 | w | 469571/1000000 | 652871/1000000 | 469571/1000000 | 44463529527/68560250000 | 469571/1000000 | 648533/1000000 | `(-727513/1000000, 291198843963/1000000000000); (-727513/1000000, 257690965187/1000000000000); (-727513/1000000, 76052801711/250000000000); (-727513/1000000, 129455666521/500000000000); (-822723/1000000, 352988991443/1000000000000); (-822723/1000000, 335309394327/1000000000000); (-822723/1000000, 91500338581/250000000000); (-822723/1000000, 168264881091/500000000000); (-727513/1000000, 27929660917/62500000000); (-727513/1000000, 51670836987/125000000000); (-727513/1000000, 117943051711/250000000000); (-727513/1000000, 213236166521/500000000000); (-822723/1000000, 63583090269/125000000000); (-822723/1000000, 122746281259/250000000000); (-822723/1000000, 133390588581/250000000000); (-822723/1000000, 252045381091/500000000000)` |
| 139 | 988 | k | 832439/1000000 | 1/1 | 852764507509/1000000000000 | 1/1 | 213191/250000 | 1/1 | `(929069/1000000, -823813432251/1000000000000); (929069/1000000, -857321311027/1000000000000); (1/1, -869846800079/1000000000000); (1/1, -915146673881/1000000000000); (929069/1000000, -954010613757/1000000000000); (929069/1000000, -987518492533/1000000000000); (1/1, -200008796317/200000000000); (1/1, -1045343855387/1000000000000); (929069/1000000, -806731139681/1000000000000); (929069/1000000, -824410736797/1000000000000); (1/1, -852764507509/1000000000000); (1/1, -882236099651/1000000000000); (929069/1000000, -953967293207/1000000000000); (929069/1000000, -971646890323/1000000000000); (1/1, -200000132207/200000000000); (1/1, -1029472253177/1000000000000)` |
| 140 | 0 | a | 7931/62500 | 4816/15625 | 23250/179953 | 4816/15625 | 323/2500 | 4816/15625 | `(270267/500000, -93/1000); (124587/500000, -93/1000); (179953/250000, -93/1000); (107113/250000, -93/1000)` |
| 141 | 7 | b | 12431/100000 | 41567/100000 | 15500/114339 | 41567/100000 | 135561/1000000 | 41567/100000 | `(129947/250000, -93/1000); (85191/250000, -93/1000); (343017/500000, -93/1000); (50701/100000, -93/1000)` |
| 142 | 32 | u | 96857/500000 | 342967/1000000 | 96857/500000 | 69907654679/217700000000 | 96857/500000 | 2007/6250 | `(-2177/2500, 17470684593/125000000000); (-10809/15625, 8021618849/125000000000); (-2177/2500, 111506198643/500000000000); (-10809/15625, 60192370499/500000000000); (-2177/2500, 11341800029/62500000000); (-10809/15625, 6617267157/62500000000); (-2177/2500, 69907654679/250000000000); (-10809/15625, 44250740607/250000000000)` |
| 143 | 43 | e | 128271/1000000 | 311571/1000000 | 31000/236187 | 311571/1000000 | 131251/1000000 | 311571/1000000 | `(529283/1000000, -93/1000); (124587/500000, -93/1000); (708561/1000000, -93/1000); (107113/250000, -93/1000)` |
| 144 | 68 | h | 162247/250000 | 407617/500000 | 277180/407053 | 407617/500000 | 680943/1000000 | 407617/500000 | `(36997/62500, -144312114849/250000000000); (311843/1000000, -8459539703/25000000000); (343581/500000, -144312114849/250000000000); (407053/1000000, -8459539703/25000000000); (36997/62500, -557289/1000000); (311843/1000000, -13859/50000); (343581/500000, -557289/1000000); (407053/1000000, -13859/50000)` |
| 145 | 68 | j | 727513/1000000 | 822723/1000000 | 30802415839/40761700000 | 822723/1000000 | 75567/100000 | 822723/1000000 | `(680943/1000000, -669557773419/1000000000000); (680943/1000000, -62142916493/100000000000); (407617/500000, -68776239567/100000000000); (407617/500000, -6772499049/10000000000); (680943/1000000, -649598314023/1000000000000); (680943/1000000, -56022757681/100000000000); (407617/500000, -333901468137/500000000000); (407617/500000, -30802415839/50000000000)` |
| 146 | 68 | k | 213191/250000 | 1/1 | 180503277299/207835000000 | 1/1 | 868493/1000000 | 1/1 | `(135561/1000000, -270591117213/1000000000000); (41567/100000, -23066469/50000000); (135561/1000000, -93658029747/500000000000); (41567/100000, -10391761/25000000); (135561/1000000, -112465923117/500000000000); (41567/100000, -415670109021/1000000000000); (135561/1000000, -33163043523/250000000000); (41567/100000, -180503277299/500000000000)` |
| 147 | 71 | p | 273483/1000000 | 579249/1000000 | 273483/1000000 | 235712761659/434246500000 | 273483/1000000 | 542809/1000000 | `(-868493/1000000, 118242496119/1000000000000); (-868493/1000000, 31927644531/100000000000); (-868493/1000000, 334624570797/1000000000000); (-868493/1000000, 43791672531/100000000000); (-868493/1000000, 128353686201/1000000000000); (-868493/1000000, 5146681803/15625000000); (-868493/1000000, 73626673761/200000000000); (-868493/1000000, 235712761659/500000000000); (-1/1, 68034858273/500000000000); (-1/1, 9348499/25000000); (-1/1, 44056473903/125000000000); (-1/1, 6157253/12500000); (-1/1, 36545226657/250000000000); (-1/1, 192025575041/500000000000); (-1/1, 24122536827/62500000000); (-1/1, 65761129751/125000000000)` |
| 148 | 80 | c | 166211/250000 | 422061/500000 | 166211/250000 | 433591764681/517282000000 | 166211/250000 | 209553/250000 | `(-4229/12500, 254629764681/1000000000000); (-79/500, 87100042601/1000000000000); (-4229/12500, 6133/25000); (-79/500, 13/200); (-258641/500000, 433591764681/1000000000000); (-168481/500000, 266062042601/1000000000000); (-258641/500000, 212141/500000); (-168481/500000, 121981/500000)` |
| 149 | 87 | q | 75397/500000 | 62467/125000 | 75397/500000 | 61231046931/139702000000 | 75397/500000 | 219149/500000 | `(-166211/250000, 173494533423/1000000000000); (-209553/250000, 291548259447/1000000000000); (-166211/250000, 113025396737/500000000000); (-209553/250000, 183693140793/500000000000); (-166211/250000, -1980224199/200000000000); (-209553/250000, 108152605029/1000000000000); (-166211/250000, 648708119/100000000000); (-209553/250000, 73911284651/500000000000)` |
| 150 | 113 | e | 131251/1000000 | 311571/1000000 | 131251/1000000 | 6545606789/24433000000 | 131251/1000000 | 267901/1000000 | `(-173399/1000000, -39872794553/1000000000000); (-24433/100000, 2173028243/100000000000); (-173399/1000000, 3852990907/1000000000000); (-24433/100000, 6545606789/100000000000); (-53173/500000, -1114983419/15625000000); (-177277/1000000, -9755861833/1000000000000); (-53173/500000, -19816546171/500000000000); (-177277/1000000, 21969984641/1000000000000); (-173399/1000000, -4920071757/100000000000); (-173399/1000000, -547493211/100000000000); (-53173/500000, -80686861833/1000000000000); (-53173/500000, -48961015359/1000000000000)` |
| 151 | 113 | r | 929069/1000000 | 1/1 | 35192724447/36862100000 | 1/1 | 119339/125000 | 1/1 | `(368621/500000, -934475343/1250000000); (37537/62500, -6443179689/10000000000); (368621/500000, -35192724447/50000000000); (37537/62500, -7507402293/12500000000); (368621/500000, -9628320567/12500000000); (37537/62500, -65784054741/100000000000); (368621/500000, -369269899443/500000000000); (37537/62500, -78264337617/125000000000); (868749/1000000, -1098859093/1250000000); (732099/1000000, -7758249689/10000000000); (868749/1000000, -41768074447/50000000000); (732099/1000000, -9151239793/12500000000); (868749/1000000, -11272158067/12500000000); (732099/1000000, -78934754741/100000000000); (868749/1000000, -435023399443/500000000000); (732099/1000000, -94702712617/125000000000)` |
| 152 | 113 | w | 469571/1000000 | 648533/1000000 | 12506855683/24433000000 | 648533/1000000 | 511883/1000000 | 648533/1000000 | `(24433/100000, -79228386263/500000000000); (24433/100000, -92827930913/500000000000); (24433/100000, -12506855683/100000000000); (24433/100000, -15845625133/100000000000); (177277/1000000, -149655999223/1000000000000); (177277/1000000, -167692296073/1000000000000); (177277/1000000, -116267783527/1000000000000); (177277/1000000, -140492685577/1000000000000); (24433/100000, -82206230771/500000000000); (24433/100000, -95805775421/500000000000); (177277/1000000, -155611688239/1000000000000); (177277/1000000, -173647985089/1000000000000)` |
| 153 | 113 | j | 75567/100000 | 822723/1000000 | 75567/100000 | 212141/258641 | 75567/100000 | 164043/200000 | `(-47579/125000, 15890236519/62500000000); (-121991/500000, 483524959/3906250000); (-47579/125000, 17977/62500); (-121991/500000, 75491/500000); (-258641/500000, 24430861519/62500000000); (-47579/125000, 2034628043/7812500000); (-258641/500000, 212141/500000); (-47579/125000, 31036011911/125000000000); (-121991/500000, 14728337561/125000000000); (-258641/500000, 48117261911/125000000000); (-47579/125000, 31809587561/125000000000)` |
| 154 | 115 | v | 680453/1000000 | 389609/500000 | 680453/1000000 | 108418682807/143315500000 | 680453/1000000 | 94563/125000 | `(-52781/125000, 128166313781/500000000000); (-286631/500000, 89791138441/250000000000); (-52781/125000, 71755671739/250000000000); (-286631/500000, 51266804279/125000000000); (-52781/125000, 37122800463/125000000000); (-286631/500000, 199907164953/500000000000); (-52781/125000, 19410186497/62500000000); (-286631/500000, 108418682807/250000000000)` |
| 155 | 127 | h | 680943/1000000 | 407617/500000 | 680943/1000000 | 3119550819/4243000000 | 680943/1000000 | 735223/1000000 | `(-380499/500000, 228738870537/500000000000); (-79199/125000, 49032596947/125000000000); (-380499/500000, 265042271693/500000000000); (-79199/125000, 14527111809/31250000000); (-403143/500000, 244147048269/500000000000); (-4243/6250, 2644232069/6250000000); (-403143/500000, 282172548269/500000000000); (-4243/6250, 3119550819/6250000000); (-380499/500000, 215503361487/500000000000); (-79199/125000, 43547465947/125000000000); (-380499/500000, 251806762643/500000000000); (-79199/125000, 13155829059/31250000000); (-403143/500000, 230911539219/500000000000); (-4243/6250, 2369975519/6250000000); (-403143/500000, 268937039219/500000000000); (-4243/6250, 2845294269/6250000000)` |
| 156 | 127 | v | 680453/1000000 | 94563/125000 | 449784033/625000000 | 94563/125000 | 359827/500000 | 94563/125000 | `(119339/125000, -22198598893/31250000000); (119339/125000, -46978883501/62500000000); (119339/125000, -86101988277/125000000000); (119339/125000, -90400909997/125000000000); (1/1, -18529842779/25000000000); (1/1, -19623972881/25000000000); (1/1, -449784033/625000000); (1/1, -472815037/625000000); (119339/125000, -184206545669/250000000000); (119339/125000, -194533288529/250000000000); (119339/125000, -91587119277/125000000000); (119339/125000, -95886040997/125000000000); (1/1, -38383236463/50000000000); (1/1, -40571496667/50000000000); (1/1, -59651211/78125000); (1/1, -125060173/156250000)` |
| 157 | 127 | w | 511883/1000000 | 648533/1000000 | 511883/1000000 | 419219617/669000000 | 511883/1000000 | 626637/1000000 | `(-96857/500000, 37933024267/500000000000); (-96857/500000, 17279538547/500000000000); (-2007/6250, 20327784049/125000000000); (-2007/6250, 16028862329/125000000000); (-96857/500000, 55523592867/500000000000); (-96857/500000, 34870107147/500000000000); (-2007/6250, 24725426199/125000000000); (-2007/6250, 20426504479/125000000000); (-96857/500000, 38809596151/500000000000); (-96857/500000, 16926994111/500000000000); (-2007/6250, 1027346351/6250000000); (-2007/6250, 797036311/6250000000); (-96857/500000, 57234596151/500000000000); (-96857/500000, 35351994111/500000000000); (-2007/6250, 1257658851/6250000000); (-2007/6250, 1027348811/6250000000)` |
| 158 | 128 | h | 680943/1000000 | 735223/1000000 | 12071700187/16636500000 | 735223/1000000 | 145123/200000 | 735223/1000000 | `(140489/250000, -234290842589/500000000000); (8691/20000, -17896523301/50000000000); (140489/250000, -248214062339/500000000000); (8691/20000, -4822211319/12500000000); (626501/1000000, -16094742269/31250000000); (99819/200000, -8087610669/20000000000); (626501/1000000, -272628337679/500000000000); (99819/200000, -2173027281/5000000000); (140489/250000, -22155346909/50000000000); (8691/20000, -15785046909/50000000000); (140489/250000, -5886917221/12500000000); (8691/20000, -4294342221/12500000000); (626501/1000000, -48955700561/100000000000); (99819/200000, -36215100561/100000000000); (626501/1000000, -12994548209/25000000000); (99819/200000, -9809398209/25000000000)` |
| 159 | 128 | u | 96857/500000 | 2007/6250 | 5348671511/17651800000 | 2007/6250 | 303009/1000000 | 2007/6250 | `(71439/500000, -8849545113/100000000000); (13327/100000, -8123497377/100000000000); (71439/500000, -11634189063/100000000000); (13327/100000, -10908141327/100000000000); (71439/500000, -17622139677/200000000000); (13327/100000, -16046014533/200000000000); (71439/500000, -23667124227/200000000000); (13327/100000, -22090999083/200000000000); (54877/200000, -8849545113/100000000000); (264777/1000000, -8123497377/100000000000); (54877/200000, -11634189063/100000000000); (264777/1000000, -10908141327/100000000000); (54877/200000, -17622139677/200000000000); (264777/1000000, -16046014533/200000000000); (54877/200000, -23667124227/200000000000); (264777/1000000, -22090999083/200000000000)` |
| 160 | 128 | v | 359827/500000 | 94563/125000 | 359827/500000 | 39671074879/54681000000 | 359827/500000 | 725501/1000000 | `(-75567/100000, 62327350869/125000000000); (-75567/100000, 6287099673/12500000000); (-75567/100000, 50120647041/100000000000); (-75567/100000, 50538162681/100000000000); (-164043/200000, 545453627127/1000000000000); (-164043/200000, 4403383539/8000000000); (-164043/200000, 109608258117/200000000000); (-164043/200000, 110567319069/200000000000); (-75567/100000, 107693322303/200000000000); (-75567/100000, 542815778403/1000000000000); (-75567/100000, 2173743993/4000000000); (-75567/100000, 10952223093/20000000000); (-164043/200000, 58530143169/100000000000); (-164043/200000, 295135373469/500000000000); (-164043/200000, 23610832737/40000000000); (-164043/200000, 119013224637/200000000000)` |
| 161 | 128 | k | 868493/1000000 | 1/1 | 4217665099/4281600000 | 1/1 | 985067/1000000 | 1/1 | `(303009/1000000, -61672665333/200000000000); (303009/1000000, -304014159777/1000000000000); (2007/6250, -32150493993/100000000000); (2007/6250, -31732978353/100000000000); (303009/1000000, -62556345831/200000000000); (303009/1000000, -308432562267/1000000000000); (2007/6250, -16296167121/50000000000); (2007/6250, -16087409301/50000000000); (303009/1000000, -1924866087/6250000000); (303009/1000000, -18938078667/62500000000); (2007/6250, -64224037437/200000000000); (2007/6250, -12652995297/40000000000); (303009/1000000, -12510974841/40000000000); (303009/1000000, -307805055777/1000000000000); (2007/6250, -32591598429/100000000000); (2007/6250, -32112067953/100000000000)` |
| 162 | 135 | a | 323/2500 | 4816/15625 | 323/2500 | 267901/1000000 | 323/2500 | 267901/1000000 | `(-1/1, 131251/1000000); (-1/1, 267901/1000000)` |
| 163 | 149 | c | 166211/250000 | 209553/250000 | 542004/735223 | 209553/250000 | 184299/250000 | 209553/250000 | `(145123/200000, -135501/250000); (735223/1000000, -135501/250000)` |
| 164 | 152 | f | 52781/125000 | 286631/500000 | 52781/125000 | 165583/289583 | 52781/125000 | 571799/1000000 | `(-868749/1000000, 496749/1000000); (-732099/1000000, 360099/1000000)` |
| 165 | 161 | q | 75397/500000 | 219149/500000 | 6699278250/42331312573 | 219149/500000 | 79129/500000 | 219149/500000 | `(21983737617/50000000000, -15899559/200000000); (42178116243/125000000000, -23099247/250000000); (24996110499/50000000000, -15899559/200000000); (47957670921/125000000000, -23099247/250000000); (111689432877/250000000000, -80391339/1000000000); (43063488639/125000000000, -23322633/250000000); (126993937719/250000000000, -80391339/1000000000); (48964363533/125000000000, -23322633/250000000)` |
| 166 | 848 | a | 323/2500 | 267901/1000000 | 323/2500 | 129749776177/571799000000 | 323/2500 | 56729/250000 | `(-52781/125000, 393487063/25000000000); (-571799/1000000, 24851186277/200000000000); (-52781/125000, 2474555163/125000000000); (-571799/1000000, 129749776177/1000000000000)` |
| 167 | 848 | f | 52781/125000 | 571799/1000000 | 290650/606023 | 571799/1000000 | 239801/500000 | 571799/1000000 | `(119283/200000, -5813/20000); (498699/1000000, -5813/20000); (606023/1000000, -5813/20000); (508307/1000000, -5813/20000)` |
| 168 | 873 | b | 135561/1000000 | 41567/100000 | 135561/1000000 | 66745935319/183805750000 | 135561/1000000 | 181567/500000 | `(-145123/200000, 9281573777/50000000000); (-145123/200000, 12946510019/50000000000); (-735223/1000000, 48178613677/250000000000); (-735223/1000000, 66745935319/250000000000)` |
| 169 | 897 | f | 239801/500000 | 571799/1000000 | 239801/500000 | 502829667587/985067000000 | 239801/500000 | 510453/1000000 | `(-985067/1000000, 438284667587/1000000000000); (-985067/1000000, 217443159989/500000000000); (-985067/1000000, 502829667587/1000000000000); (-985067/1000000, 249715659989/500000000000); (-1/1, 440309/1000000); (-1/1, 252427/500000)` |
| 170 | 897 | j | 75567/100000 | 164043/200000 | 789825435747/1000000000000 | 164043/200000 | 31593/40000 | 164043/200000 | `(1/1, -789825435747/1000000000000); (1/1, -198305945839/250000000000); (1/1, -205053934441/250000000000); (1/1, -823614085373/1000000000000); (1/1, -794963/1000000); (1/1, -412907/500000)` |
| 171 | 899 | p | 273483/1000000 | 542809/1000000 | 8141617997/29408920000 | 542809/1000000 | 276841/1000000 | 542809/1000000 | `(145123/200000, -240200482277/1000000000000); (145123/200000, -184657808419/500000000000); (735223/1000000, -48300590473/200000000000); (735223/1000000, -37280460831/100000000000); (145123/200000, -202237979837/1000000000000); (145123/200000, -133811785739/500000000000); (735223/1000000, -8141617997/40000000000); (735223/1000000, -5422251259/20000000000)` |
| 172 | 906 | p | 276841/1000000 | 542809/1000000 | 46124525329/145100200000 | 542809/1000000 | 7947/25000 | 542809/1000000 | `(359827/500000, -114915000739/500000000000); (359827/500000, -178794286693/500000000000); (359827/500000, -138361069699/500000000000); (359827/500000, -170375584193/500000000000); (359827/500000, -58174053029/250000000000); (359827/500000, -45056848003/125000000000); (359827/500000, -71165038619/250000000000); (359827/500000, -43586147933/125000000000); (725501/1000000, -46124525329/200000000000); (725501/1000000, -89927954471/250000000000); (725501/1000000, -55502952913/200000000000); (725501/1000000, -85718603221/250000000000); (725501/1000000, -233488837283/1000000000000); (725501/1000000, -181289014261/500000000000); (725501/1000000, -285452779643/1000000000000); (725501/1000000, -175406213981/500000000000)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 72:44 | AFQ | lo | 93/1000 | occupants none |
| 72:45 | AFQ | hi | 40523397153/1000000000000 | vertex maximum 40523397153/1000000000000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |


### Area contradiction

| Triangle | Lower reference | Upper reference | Lower value | Upper value |
| --- | --- | --- | --- | --- |
| AFQ | 72:44 | 72:45 | 93/1000 | 40523397153/1000000000000 |

## Stage 73

| Property | Value |
| --- | --- |
| Scope | root/AFQ- |
| Packet | forest:root/AFQ- |
| Index | 0 |
| Context | 21 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 7 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| b | 103767/1000000 | 58493/100000 | 103767/1000000 | 58493/100000 |
| c | 135501/250000 | 1/1 | 135501/250000 | 1/1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 103767/1000000 | 58493/100000 | 103767/1000000 | 58493/100000 |
| h | 135501/250000 | 1/1 | 135501/250000 | 1/1 |
| p | 22907/200000 | 158493/200000 | 22907/200000 | 158493/200000 |
| q | 22907/200000 | 158493/200000 | 22907/200000 | 158493/200000 |
| u | 103767/1000000 | 196623/250000 | 103767/1000000 | 196623/250000 |
| v | 145167/500000 | 907/1000 | 145167/500000 | 907/1000 |
| r | 103767/500000 | 1/1 | 103767/500000 | 1/1 |
| w | 103767/500000 | 1/1 | 103767/500000 | 1/1 |
| j | 103767/500000 | 1/1 | 103767/500000 | 1/1 |
| k | 56847/250000 | 1/1 | 56847/250000 | 1/1 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |


### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |


### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 73:16 | ACE | lo | 93/1000 | occupants none |
| 73:20 | ACH | lo | 279/1000 | occupants P |
| 73:24 | ACQ | lo | 133719/1000000 | earlier 7:24; ACQ; lo; 133719/1000000 |
| 73:31 | AEF | hi | 896233/1000000 | vertex maximum 896233/1000000 |
| 73:40 | AFH | lo | 93/1000 | occupants none |
| 73:42 | AFQ | lo | 93/1000 | occupants none |
| 73:60 | BCF | lo | 15907/100000 | earlier 7:58; BCF; lo; 15907/100000 |
| 73:114 | CFQ | lo | 93/1000 | occupants none |
| 73:126 | CHS | lo | 123621/1000000 | earlier 7:124; CHS; lo; 123621/1000000 |
| 73:141 | EFH | hi | 71433396841/100000000000 | vertex maximum 71433396841/100000000000 |
| 73:144 | EFQ | lo | 93/1000 | occupants none |
| 73:152 | EHQ | lo | 93/1000 | occupants none |
| 73:156 | EHS | lo | 123621/1000000 | earlier 7:154; EHS; lo; 123621/1000000 |
| 73:162 | EPS | lo | 96177/1000000 | earlier 7:160; EPS; lo; 96177/1000000 |
| 73:166 | EQS | lo | 48337/500000 | earlier 7:164; EQS; lo; 48337/500000 |
| 73:172 | FHQ | lo | 93/1000 | occupants none |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 0 | fan | ACF = ACQ + CFQ + AFQ | point Q |
| 2 | fan | AEF = AEQ + EFQ + AFQ | point Q |
| 1359 | bary | outer EFH; fans FHQ, EHQ, EFQ; target ACQ; sign 1; vertices ACE 1; ACF 1; ACH 1 | container EFH; inner Q; line AC |
| 1361 | bary | outer EFH; fans FHQ, EHQ, EFQ; target AFQ; sign -1; vertices AEF -1; none 0; AFH 1 | container EFH; inner Q; line AF |
| 1413 | four | 1 * ACF + -1 * AFQ + -1 * ACQ + -1 * CFQ = 0 | vertices ACFQ |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 73:200 | ACF | lo | 319719/1000000 | 319719/1000000 | 0 | 73:24, 73:114, 73:42 |
| 73:202 | AEQ | hi | 710233/1000000 | 710233/1000000 | 2 | 73:31, 73:144, 73:42 |
| 73:213 | ACQ | lo | 36683/250000 | 10481592606213/71433396841000 | 1359 | 73:141, 73:172, 73:152, 73:144, 73:16, 73:200, 73:20 |
| 73:214 | AFQ | hi | 325381/500000 | 46486133750999953/71433396841000000 | 1361 | 73:141, 73:172, 73:152, 73:144, 73:31, 73:40 |
| 73:215 | ACF | lo | 83183/250000 | 83183/250000 | 1413 | 73:42, 73:213, 73:114 |
| 73:217 | ACQ | lo | 74213/500000 | 10602613506213/71433396841000 | 1359 | 73:141, 73:172, 73:152, 73:144, 73:16, 73:215, 73:20 |
| 73:218 | ACF | lo | 167213/500000 | 167213/500000 | 1413 | 73:42, 73:217, 73:114 |
| 73:219 | ACQ | lo | 148647/1000000 | 10618367706213/71433396841000 | 1359 | 73:141, 73:172, 73:152, 73:144, 73:16, 73:218, 73:20 |
| 73:220 | ACF | lo | 334647/1000000 | 334647/1000000 | 1413 | 73:42, 73:219, 73:114 |
| 73:221 | ACQ | lo | 5947/40000 | 10620423006213/71433396841000 | 1359 | 73:141, 73:172, 73:152, 73:144, 73:16, 73:220, 73:20 |
| 73:222 | ACF | lo | 13387/40000 | 13387/40000 | 1413 | 73:42, 73:221, 73:114 |
| 73:223 | ACQ | lo | 148679/1000000 | 10620683406213/71433396841000 | 1359 | 73:141, 73:172, 73:152, 73:144, 73:16, 73:222, 73:20 |
| 73:224 | ACF | lo | 334679/1000000 | 334679/1000000 | 1413 | 73:42, 73:223, 73:114 |
| 73:225 | ACQ | lo | 3717/25000 | 10620720606213/71433396841000 | 1359 | 73:141, 73:172, 73:152, 73:144, 73:16, 73:224, 73:20 |
| 73:226 | ACF | lo | 8367/25000 | 8367/25000 | 1413 | 73:42, 73:225, 73:114 |

## Stage 74

| Property | Value |
| --- | --- |
| Scope | root/AFQ- |
| Packet | forest:root/AFQ- |
| Index | 1 |
| Context | 21 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 73 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| b | 103767/1000000 | 58493/100000 | 103767/1000000 | 58493/100000 |
| c | 135501/250000 | 1/1 | 135501/250000 | 1/1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 103767/1000000 | 58493/100000 | 103767/1000000 | 58493/100000 |
| h | 135501/250000 | 1/1 | 135501/250000 | 1/1 |
| p | 22907/200000 | 158493/200000 | 22907/200000 | 158493/200000 |
| q | 22907/200000 | 158493/200000 | 22907/200000 | 158493/200000 |
| u | 103767/1000000 | 196623/250000 | 103767/1000000 | 196623/250000 |
| v | 145167/500000 | 907/1000 | 145167/500000 | 907/1000 |
| r | 103767/500000 | 1/1 | 103767/500000 | 1/1 |
| w | 103767/500000 | 1/1 | 103767/500000 | 1/1 |
| j | 103767/500000 | 1/1 | 103767/500000 | 1/1 |
| k | 56847/250000 | 1/1 | 56847/250000 | 1/1 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |


### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |


### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 74:18 | ACF | lo | 8367/25000 | earlier 73:226; ACF; lo; 8367/25000 |
| 74:35 | AEQ | hi | 710233/1000000 | earlier 73:202; AEQ; hi; 710233/1000000 |
| 74:43 | AFQ | hi | 325381/500000 | earlier 73:214; AFQ; hi; 325381/500000 |
| 74:60 | BCF | lo | 15907/100000 | earlier 73:60; BCF; lo; 15907/100000 |
| 74:126 | CHS | lo | 123621/1000000 | earlier 73:126; CHS; lo; 123621/1000000 |
| 74:156 | EHS | lo | 123621/1000000 | earlier 73:156; EHS; lo; 123621/1000000 |
| 74:162 | EPS | lo | 96177/1000000 | earlier 73:162; EPS; lo; 96177/1000000 |
| 74:166 | EQS | lo | 48337/500000 | earlier 73:166; EQS; lo; 48337/500000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
