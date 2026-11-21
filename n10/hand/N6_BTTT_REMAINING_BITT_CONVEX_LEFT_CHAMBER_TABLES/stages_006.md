# BITT convex: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 30

| Property | Value |
| --- | --- |
| Scope | root/AFQ+/BPS+/HQR+/BPR- |
| Packet | forest:root/AFQ+/BPS+/HQR+/BPR- |
| Index | 4 |
| Context | 10 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 29 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| b | 103767/1000000 | 58493/100000 | 103767/1000000 | 58493/100000 |
| c | 135501/250000 | 1/1 | 135501/250000 | 1/1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 155651/500000 | 58493/100000 | 155651/500000 | 58493/100000 |
| h | 580747/1000000 | 1/1 | 580747/1000000 | 1/1 |
| p | 59937/250000 | 158493/200000 | 59937/250000 | 158493/200000 |
| q | 22907/200000 | 632341/1000000 | 22907/200000 | 632341/1000000 |
| u | 103767/1000000 | 75479/200000 | 103767/1000000 | 75479/200000 |
| v | 493737/1000000 | 841007/1000000 | 493737/1000000 | 841007/1000000 |
| r | 710039/1000000 | 1/1 | 710039/1000000 | 1/1 |
| w | 222777/500000 | 104293/125000 | 222777/500000 | 104293/125000 |
| j | 479037/1000000 | 13636/15625 | 479037/1000000 | 13636/15625 |
| k | 561131/1000000 | 1/1 | 561131/1000000 | 1/1 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 4 | AC_ABE_ABE_0 | bitt ["anchor-cap","ABE","ABE",0,[]] | `-93/1000 + 1/1 * e` |
| 6 | AC_ABF_ABF_0 | bitt ["anchor-cap","ABF","ABF",0,[]] | `-93/1000 + 1/1 * f` |
| 8 | AC_ABH_ABH_0 | bitt ["anchor-cap","ABH","ABH",0,[]] | `-93/1000 + 1/1 * b` |
| 18 | AC_ACH_ACH_0 | bitt ["anchor-cap","ACH","ACH",0,["P"]] | `-279/1000 + 1/1 * h + -1/1 * a` |
| 20 | AC_ACP_ACF_0 | bitt ["anchor-cap","ACP","ACF",0,[]] | `-93/1000 + 1/1 * c` |
| 25 | AC_AEF_AEF_0 | bitt ["anchor-cap","AEF","AEF",0,[]] | `907/1000 + -1/1 * a` |
| 47 | AC_BCH_BCH_0 | bitt ["anchor-cap","BCH","BCH",0,["P"]] | `-279/1000 + 1/1 * h` |
| 49 | AC_BCP_BCH_0 | bitt ["anchor-cap","BCP","BCH",0,[]] | `-93/1000 + 1/1 * h` |
| 57 | AC_BEP_BEF_0 | bitt ["anchor-cap","BEP","BEF",0,[]] | `907/1000 + -1/1 * b` |
| 77 | AC_CEF_CEF_0 | bitt ["anchor-cap","CEF","CEF",0,[]] | `907/1000 + -1/1 * f` |
| 102 | AC_EFQ_EFH_0 | bitt ["anchor-cap","EFQ","EFH",0,[]] | `907/1000 + -1/1 * e` |
| 135 | ha | bitt ["contact-order","ha"] | `1/1 * h + -1/1 * a` |
| 136 | ea | bitt ["contact-order","ea"] | `1/1 * e + -1/1 * a` |
| 138 | fb | bitt ["contact-order","fb"] | `1/1 * f + -1/1 * b` |
| 139 | cf | bitt ["contact-order","cf"] | `1/1 * c + -1/1 * f` |
| 140 | sym | bitt ["contact-order","sym"] | `1/1 * f + -1/1 * e` |
| 141 | octagon-ear-sum | bitt ["octagon-ear-sum","ABCERSFH"] | `76277533/62500000 + 2/1 * a * b + -1/1 * b * h + -1/1 * a * c + -2/1 * c * e + 1/1 * b * e + -2/1 * w + 1/1 * c * w + 2/1 * e * r + -2/1 * r * k + 1/1 * k + 2/1 * w * j + -1/1 * e * j + -2/1 * j + 1/1 * r + 2/1 * f * k + -1/1 * f * w + -2/1 * f * h + 1/1 * h * j + 1/1 * a * f` |
| 150 | lower-area | bitt ["endpoint-lower","135501/250000"] | `1/1 * c * h + -135501/250000` |
| 151 | lower-quad | bitt ["lower-quad","BITT"] | `1/1 * c * h + -1/1 * a * b + -279/625` |
| 152 | upper-quad | bitt ["upper-quad","BITT"] | `346/625 + -1/1 * c * h + 1/1 * f * h + 1/1 * c * e + -1/1 * e * f` |
| 153 | top-area | bitt ["top-hull","+"] | `157/250 + -1/1 * f + -1/1 * e + 1/1 * e * f` |
| 156 | lower-sum | bitt ["lower-sum"] | `907/1000 + -1/1 * p + -1/1 * q` |
| 158 | central-p-floor | bitt ["central-floor",0,"102650331/896233000"] | `1/1 * p + -102650331/896233000` |
| 160 | central-x | bitt ["central-lower-x"] | `1/1 * c * h * p + -1/1 * b * h * p + -93/1000 * c + -93/1000 * b` |
| 606 | SUP_FPS_BPS_BFS | bitt ["support-envelope",["pentagon","SFABP"],"FPS","BPS","BFS","132126163589/250000000000"] | `-123623836411/250000000000 * p * k + 123623836411/250000000000 * b * k + 123623836411/250000000000 * q * j + 132126163589/250000000000 * b * q + 1023/1000 * p + -1023/1000 * f * q + -1023/1000 * b` |
| 612 | SUP_FQS_BFS_BFQ | bitt ["support-envelope",["pentagon","FQABS"],"FQS","BFS","BFQ","375297738641/1000000000000"] | `647702261359/1000000000000 * f * k + 375297738641/1000000000000 * b * k + -647702261359/1000000000000 * j + 647702261359/1000000000000 * b + -1023/1000 * u * k + 1023/1000 * v * j + -1023/1000 * b * v` |
| 655 | SUP_ACE_ACS_CES | bitt ["support-envelope",["pentagon","CERSA"],"ACE","ACS","CES","391/1000"] | `-79/125 * c * k + 79/125 * a * c + 391/1000 * a * j + -1023/1000 * a + 1023/1000 * k + -1023/1000 * e * j` |
| 701 | SUP_APS_APQ_PQS | bitt ["support-envelope",["pentagon","PSFQA"],"APS","APQ","PQS","18097082409/25000000000"] | `-7477917591/25000000000 * p * v + 7477917591/25000000000 * a * p + 7477917591/25000000000 * q * u + 18097082409/25000000000 * a * u + -1023/1000 * a * j + -1023/1000 * u * k + 1023/1000 * v * j` |
| 702 | SUP_FQS_FPS_FPQ | bitt ["support-envelope",["pentagon","FQAPS"],"FQS","FPS","FPQ","375297738641/1000000000000"] | `375297738641/1000000000000 * p * k + 647702261359/1000000000000 * p + 647702261359/1000000000000 * f * k + -375297738641/1000000000000 * q * j + -647702261359/1000000000000 * f * q + -647702261359/1000000000000 * j + -1023/1000 * u * k + 1023/1000 * v * j + -1023/1000 * p * v + 1023/1000 * q * u` |
| 737 | SUP_BFH_FHS_BHS | bitt ["support-envelope",["pentagon","HBCSF"],"BFH","FHS","BHS","58493/100000"] | `-58493/100000 * f * k + 43807/100000 * h * j + -43807/100000 * f * h + 58493/100000 * j + -1023/1000 * b + 1023/1000 * b * k` |
| 788 | SUP_CEF_CFS_CES | bitt ["support-envelope",["pentagon","CERSF"],"CEF","CFS","CES","274100241/500000000"] | `-274100241/500000000 * f * k + -237399759/500000000 * c * k + 274100241/500000000 * j + 237399759/500000000 * c + -1023/1000 + 1023/1000 * e * f + 1023/1000 * k + -1023/1000 * e * j` |
| 833 | SUP_EHR_EFH_EFR | bitt ["support-envelope",["pentagon","ERSFH"],"EHR","EFH","EFR","730577/1000000"] | `730577/1000000 * f * h + 292423/1000000 * e * f + 292423/1000000 * h + -292423/1000000 + -1023/1000 * h * r + -1023/1000 * f * w + 1023/1000 * r` |
| 850 | SUP_FHQ_FHS_HQS | bitt ["support-envelope",["pentagon","HQRSF"],"FHQ","FHS","HQS","29612841659/100000000000"] | `-29612841659/100000000000 * f * k + 72687158341/100000000000 * h * j + -72687158341/100000000000 * f * h + 29612841659/100000000000 * j + 1023/1000 * f * v + -1023/1000 * u + 1023/1000 * u * k + -1023/1000 * v * j` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |


### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 30:0 | ABC | lo | 93/1000 | occupants none |
| 30:2 | ABE | lo | 93/1000 | occupants none |
| 30:3 | ABE | hi | 391/1000 | vertex maximum 391/1000 |
| 30:4 | ABF | lo | 93/1000 | occupants none |
| 30:6 | ABH | lo | 93/1000 | occupants none |
| 30:8 | ABP | lo | 93/1000 | occupants none |
| 30:10 | ABQ | lo | 93/1000 | occupants none |
| 30:12 | ABR | lo | 93/1000 | occupants none |
| 30:14 | ABS | lo | 93/1000 | occupants none |
| 30:15 | ABS | hi | 348724817/500000000 | vertex maximum 348724817/500000000 |
| 30:16 | ACE | lo | 93/1000 | occupants none |
| 30:19 | ACF | hi | 95692943131/100000000000 | vertex maximum 95692943131/100000000000 |
| 30:21 | ACH | hi | 896233/1000000 | vertex maximum 896233/1000000 |
| 30:22 | ACP | lo | 93/1000 | occupants none |
| 30:23 | ACP | hi | 565577/1000000 | earlier 29:23; ACP; hi; 565577/1000000 |
| 30:26 | ACR | lo | 107751/1000000 | earlier 29:26; ACR; lo; 107751/1000000 |
| 30:27 | ACR | hi | 104293/125000 | vertex maximum 104293/125000 |
| 30:28 | ACS | lo | 279/1000 | occupants P |
| 30:30 | AEF | lo | 40049/200000 | earlier 29:30; AEF; lo; 40049/200000 |
| 30:31 | AEF | hi | 896233/1000000 | vertex maximum 896233/1000000 |
| 30:33 | AEH | hi | 896233/1000000 | vertex maximum 896233/1000000 |
| 30:34 | AEQ | lo | 190859/1000000 | earlier 29:34; AEQ; lo; 190859/1000000 |
| 30:35 | AEQ | hi | 18431/25000 | vertex maximum 18431/25000 |
| 30:36 | AER | lo | 93/1000 | occupants none |
| 30:37 | AER | hi | 730577/1000000 | vertex maximum 730577/1000000 |
| 30:38 | AES | lo | 20471/100000 | earlier 29:38; AES; lo; 20471/100000 |
| 30:39 | AES | hi | 896233/1000000 | vertex maximum 896233/1000000 |
| 30:40 | AFH | lo | 279/1000 | occupants Q |
| 30:41 | AFH | hi | 52423356869/100000000000 | vertex maximum 52423356869/100000000000 |
| 30:42 | AFP | lo | 22907/200000 | earlier 29:42; AFP; lo; 22907/200000 |
| 30:43 | AFP | hi | 309899/500000 | earlier 29:43; AFP; hi; 309899/500000 |
| 30:44 | AFQ | lo | 93/1000 | occupants none |
| 30:46 | AFR | lo | 177067/1000000 | earlier 29:46; AFR; lo; 177067/1000000 |
| 30:48 | AFS | lo | 93/1000 | occupants none |
| 30:49 | AFS | hi | 79970974513/125000000000 | vertex maximum 79970974513/125000000000 |
| 30:51 | AHP | hi | 621667/1000000 | earlier 29:51; AHP; hi; 621667/1000000 |
| 30:52 | AHQ | lo | 93/1000 | occupants none |
| 30:53 | AHQ | hi | 67646770607/200000000000 | vertex maximum 67646770607/200000000000 |
| 30:54 | AHR | lo | 349547/1000000 | earlier 29:54; AHR; lo; 349547/1000000 |
| 30:55 | AHR | hi | 896233/1000000 | vertex maximum 896233/1000000 |
| 30:56 | AHS | lo | 279/1000 | occupants Q |
| 30:57 | AHS | hi | 3055258297/3906250000 | vertex maximum 3055258297/3906250000 |
| 30:58 | APQ | lo | 22907/200000 | earlier 29:58; APQ; lo; 22907/200000 |
| 30:59 | APQ | hi | 507343/1000000 | earlier 29:59; APQ; hi; 507343/1000000 |
| 30:60 | APS | lo | 93/1000 | occupants none |
| 30:62 | AQR | lo | 12809/125000 | earlier 29:62; AQR; lo; 12809/125000 |
| 30:64 | AQS | lo | 93/1000 | occupants none |
| 30:65 | AQS | hi | 540993/1000000 | earlier 29:65; AQS; hi; 540993/1000000 |
| 30:66 | ARS | lo | 6271/50000 | earlier 29:66; ARS; lo; 6271/50000 |
| 30:68 | BCE | lo | 93/1000 | occupants none |
| 30:70 | BCF | lo | 279/1000 | occupants P |
| 30:71 | BCF | hi | 896233/1000000 | vertex maximum 896233/1000000 |
| 30:72 | BCH | lo | 321453/1000000 | earlier 29:72; BCH; lo; 321453/1000000 |
| 30:73 | BCH | hi | 896233/1000000 | vertex maximum 896233/1000000 |
| 30:74 | BCP | lo | 93/1000 | occupants none |
| 30:75 | BCP | hi | 560207/1000000 | earlier 29:75; BCP; hi; 560207/1000000 |
| 30:77 | BCQ | hi | 376869/500000 | earlier 29:77; BCQ; hi; 376869/500000 |
| 30:79 | BCR | hi | 93470828269/125000000000 | vertex maximum 93470828269/125000000000 |
| 30:80 | BCS | lo | 279/1000 | occupants P |
| 30:81 | BCS | hi | 896233/1000000 | vertex maximum 896233/1000000 |
| 30:82 | BEF | lo | 64659/200000 | earlier 29:82; BEF; lo; 64659/200000 |
| 30:83 | BEF | hi | 174939543131/200000000000 | vertex maximum 174939543131/200000000000 |
| 30:84 | BEH | lo | 321453/1000000 | earlier 29:84; BEH; lo; 321453/1000000 |
| 30:85 | BEH | hi | 936805897/1000000000 | vertex maximum 936805897/1000000000 |
| 30:86 | BEP | lo | 93/1000 | occupants none |
| 30:87 | BEP | hi | 537801/1000000 | earlier 29:87; BEP; hi; 537801/1000000 |
| 30:88 | BEQ | lo | 154469/500000 | earlier 29:88; BEQ; lo; 154469/500000 |
| 30:89 | BEQ | hi | 753738226631/1000000000000 | vertex maximum 753738226631/1000000000000 |
| 30:90 | BER | lo | 27727/250000 | earlier 29:90; BER; lo; 27727/250000 |
| 30:91 | BER | hi | 85606949941/125000000000 | vertex maximum 85606949941/125000000000 |
| 30:92 | BES | lo | 331359/1000000 | earlier 29:92; BES; lo; 331359/1000000 |
| 30:93 | BES | hi | 85729235791/100000000000 | vertex maximum 85729235791/100000000000 |
| 30:94 | BFH | lo | 315117/1000000 | earlier 29:94; BFH; lo; 315117/1000000 |
| 30:95 | BFH | hi | 58493/100000 | vertex maximum 58493/100000 |
| 30:96 | BFP | lo | 93/1000 | occupants none |
| 30:98 | BFQ | lo | 93/1000 | occupants none |
| 30:100 | BFR | lo | 331243/1000000 | earlier 29:100; BFR; lo; 331243/1000000 |
| 30:101 | BFR | hi | 80376495061/100000000000 | vertex maximum 80376495061/100000000000 |
| 30:102 | BFS | lo | 193/1600 | earlier 29:102; BFS; lo; 193/1600 |
| 30:103 | BFS | hi | 130496535583/200000000000 | vertex maximum 130496535583/200000000000 |
| 30:104 | BHP | lo | 135453/1000000 | earlier 29:104; BHP; lo; 135453/1000000 |
| 30:105 | BHP | hi | 601729/1000000 | earlier 29:105; BHP; hi; 601729/1000000 |
| 30:106 | BHQ | lo | 129117/1000000 | earlier 29:106; BHQ; lo; 129117/1000000 |
| 30:107 | BHQ | hi | 360897/1000000 | earlier 29:107; BHQ; hi; 360897/1000000 |
| 30:108 | BHR | lo | 13857/20000 | occupants P, Q |
| 30:109 | BHR | hi | 122851296731/125000000000 | vertex maximum 122851296731/125000000000 |
| 30:110 | BHS | lo | 23061/62500 | earlier 29:110; BHS; lo; 23061/62500 |
| 30:111 | BHS | hi | 13636/15625 | vertex maximum 13636/15625 |
| 30:112 | BPQ | lo | 100531/1000000 | earlier 29:112; BPQ; lo; 100531/1000000 |
| 30:113 | BPQ | hi | 53107/125000 | earlier 29:113; BPQ; hi; 53107/125000 |
| 30:114 | BPR | lo | 93/1000 | occupants none |
| 30:116 | BPS | lo | 93/1000 | occupants none |
| 30:118 | BQR | lo | 295613/1000000 | earlier 29:118; BQR; lo; 295613/1000000 |
| 30:119 | BQR | hi | 179619/250000 | earlier 29:119; BQR; hi; 179619/250000 |
| 30:121 | BQS | hi | 22711/40000 | earlier 29:121; BQS; hi; 22711/40000 |
| 30:122 | BRS | lo | 318659/1000000 | earlier 29:122; BRS; lo; 318659/1000000 |
| 30:123 | BRS | hi | 36451497521/50000000000 | vertex maximum 36451497521/50000000000 |
| 30:124 | CEF | lo | 93/1000 | occupants none |
| 30:125 | CEF | hi | 274100241/500000000 | vertex maximum 274100241/500000000 |
| 30:126 | CEH | lo | 93/1000 | occupants none |
| 30:127 | CEH | hi | 167479891/250000000 | vertex maximum 167479891/250000000 |
| 30:128 | CEP | lo | 93/1000 | occupants none |
| 30:132 | CER | lo | 93/1000 | occupants none |
| 30:134 | CES | lo | 93/1000 | occupants none |
| 30:136 | CFH | lo | 58841/200000 | earlier 29:136; CFH; lo; 58841/200000 |
| 30:138 | CFP | lo | 93/1000 | occupants none |
| 30:140 | CFQ | lo | 21641/200000 | earlier 29:140; CFQ; lo; 21641/200000 |
| 30:142 | CFR | lo | 93/1000 | occupants none |
| 30:143 | CFR | hi | 40655051843/62500000000 | vertex maximum 40655051843/62500000000 |
| 30:144 | CFS | lo | 93/1000 | occupants none |
| 30:145 | CFS | hi | 280701/500000 | vertex maximum 280701/500000 |
| 30:146 | CHP | lo | 93/1000 | occupants none |
| 30:148 | CHQ | lo | 93/1000 | occupants none |
| 30:150 | CHR | lo | 336013/1000000 | earlier 29:150; CHR; lo; 336013/1000000 |
| 30:152 | CHS | lo | 14369/40000 | earlier 29:152; CHS; lo; 14369/40000 |
| 30:157 | CPR | hi | 311057/500000 | earlier 29:157; CPR; hi; 311057/500000 |
| 30:159 | CPS | hi | 655711/1000000 | earlier 29:159; CPS; hi; 655711/1000000 |
| 30:163 | CQS | hi | 5333/8000 | earlier 29:163; CQS; hi; 5333/8000 |
| 30:164 | CRS | lo | 93/1000 | occupants none |
| 30:165 | CRS | hi | 63816517331/125000000000 | vertex maximum 63816517331/125000000000 |
| 30:166 | EFH | lo | 11583/40000 | earlier 29:166; EFH; lo; 11583/40000 |
| 30:167 | EFH | hi | 3491264557/5000000000 | vertex maximum 3491264557/5000000000 |
| 30:169 | EFP | hi | 625829/1000000 | earlier 29:243; EFP; hi; 625829/1000000 |
| 30:170 | EFQ | lo | 4143/40000 | earlier 29:170; EFQ; lo; 4143/40000 |
| 30:171 | EFQ | hi | 506671/1000000 | earlier 29:171; EFQ; hi; 506671/1000000 |
| 30:172 | EFR | lo | 54249/500000 | earlier 29:172; EFR; lo; 54249/500000 |
| 30:173 | EFR | hi | 251573459373/500000000000 | vertex maximum 251573459373/500000000000 |
| 30:174 | EFS | lo | 93/1000 | occupants none |
| 30:175 | EFS | hi | 251573499333/500000000000 | vertex maximum 251573499333/500000000000 |
| 30:176 | EHP | lo | 93/1000 | occupants none |
| 30:177 | EHP | hi | 60837/100000 | earlier 29:244; EHP; hi; 60837/100000 |
| 30:178 | EHQ | lo | 93/1000 | occupants none |
| 30:180 | EHR | lo | 341787/1000000 | earlier 29:180; EHR; lo; 341787/1000000 |
| 30:181 | EHR | hi | 730577/1000000 | vertex maximum 730577/1000000 |
| 30:182 | EHS | lo | 14369/40000 | earlier 29:182; EHS; lo; 14369/40000 |
| 30:183 | EHS | hi | 2610985481/3125000000 | vertex maximum 2610985481/3125000000 |
| 30:184 | EPQ | lo | 115407/1000000 | earlier 29:184; EPQ; lo; 115407/1000000 |
| 30:185 | EPQ | hi | 25391/50000 | earlier 29:253; EPQ; hi; 25391/50000 |
| 30:186 | EPR | lo | 60337/500000 | earlier 29:186; EPR; lo; 60337/500000 |
| 30:187 | EPR | hi | 33867/62500 | earlier 29:245; EPR; hi; 33867/62500 |
| 30:188 | EPS | lo | 145359/1000000 | earlier 29:188; EPS; lo; 145359/1000000 |
| 30:189 | EPS | hi | 125341/200000 | earlier 29:246; EPS; hi; 125341/200000 |
| 30:190 | EQR | lo | 155787/1000000 | earlier 29:190; EQR; lo; 155787/1000000 |
| 30:191 | EQR | hi | 544577/1000000 | earlier 29:191; EQR; hi; 544577/1000000 |
| 30:193 | EQS | hi | 610961/1000000 | earlier 29:193; EQS; hi; 610961/1000000 |
| 30:194 | ERS | lo | 93/1000 | occupants none |
| 30:195 | ERS | hi | 248858189/1000000000 | octagon ["octagon-ear-cap","ABCERSFH","ERS",["FHA","Q"],"248858189/1000000000"] |
| 30:196 | FHP | lo | 280849/1000000 | earlier 29:196; FHP; lo; 280849/1000000 |
| 30:197 | FHP | hi | 507231/1000000 | earlier 29:197; FHP; hi; 507231/1000000 |
| 30:198 | FHQ | lo | 93/1000 | occupants none |
| 30:200 | FHR | lo | 119951/1000000 | earlier 29:200; FHR; lo; 119951/1000000 |
| 30:201 | FHR | hi | 49833144149/100000000000 | vertex maximum 49833144149/100000000000 |
| 30:202 | FHS | lo | 93/1000 | occupants none |
| 30:204 | FPQ | lo | 94849/1000000 | earlier 29:204; FPQ; lo; 94849/1000000 |
| 30:206 | FPR | lo | 145243/1000000 | earlier 29:206; FPR; lo; 145243/1000000 |
| 30:207 | FPR | hi | 293417/500000 | earlier 29:247; FPR; hi; 293417/500000 |
| 30:208 | FPS | lo | 101097/1000000 | earlier 29:208; FPS; lo; 101097/1000000 |
| 30:210 | FQR | lo | 93/1000 | occupants none |
| 30:211 | FQR | hi | 435419/1000000 | earlier 29:211; FQR; hi; 435419/1000000 |
| 30:212 | FQS | lo | 47807/500000 | earlier 29:212; FQS; lo; 47807/500000 |
| 30:214 | FRS | lo | 93/1000 | occupants none |
| 30:216 | HPQ | lo | 93/1000 | occupants none |
| 30:218 | HPR | lo | 144041/500000 | earlier 29:218; HPR; lo; 144041/500000 |
| 30:220 | HPS | lo | 160429/500000 | earlier 29:220; HPS; lo; 160429/500000 |
| 30:222 | HQR | lo | 93/1000 | occupants none |
| 30:224 | HQS | lo | 93/1000 | occupants none |
| 30:225 | HQS | hi | 43541/100000 | earlier 29:256; HQS; hi; 43541/100000 |
| 30:226 | HRS | lo | 63861/500000 | earlier 29:237; HRS; lo; 63861/500000 |
| 30:227 | HRS | hi | 8394319873/15625000000 | vertex maximum 8394319873/15625000000 |
| 30:228 | PQR | lo | 51041/500000 | earlier 29:228; PQR; lo; 51041/500000 |
| 30:230 | PQS | lo | 67429/500000 | earlier 29:230; PQS; lo; 67429/500000 |
| 30:232 | PRS | lo | 132659/1000000 | earlier 29:232; PRS; lo; 132659/1000000 |
| 30:233 | PRS | hi | 54303/100000 | earlier 29:236; PRS; hi; 54303/100000 |
| 30:234 | QRS | lo | 67199/500000 | earlier 29:234; QRS; lo; 67199/500000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |


### Coordinate certificate sources

| Source | Kind | Source witness | Polynomial |
| --- | --- | --- | --- |
| 0 | bound | `{"direction":"lo","ref":"30:0","triangle":"ABC","value":"93/1000"}` | `-1 * a * b + 1 * a * c + -93/1000` |
| 2 | bound | `{"direction":"lo","ref":"30:2","triangle":"ABE","value":"93/1000"}` | `1 * b * e + -1 * a * b + 1 * a + -93/1000` |
| 3 | bound | `{"direction":"hi","ref":"30:3","triangle":"ABE","value":"391/1000"}` | `391/1000 + -1 * b * e + 1 * a * b + -1 * a` |
| 4 | bound | `{"direction":"lo","ref":"30:4","triangle":"ABF","value":"93/1000"}` | `1 * b + -1 * a * b + 1 * a * f + -93/1000` |
| 6 | bound | `{"direction":"lo","ref":"30:6","triangle":"ABH","value":"93/1000"}` | `1 * b * h + -1 * a * b + -93/1000` |
| 8 | bound | `{"direction":"lo","ref":"30:8","triangle":"ABP","value":"93/1000"}` | `1 * b * q + -1 * a * b + 1 * a * p + -93/1000` |
| 10 | bound | `{"direction":"lo","ref":"30:10","triangle":"ABQ","value":"93/1000"}` | `1 * b * v + -1 * a * b + 1 * a * u + -93/1000` |
| 12 | bound | `{"direction":"lo","ref":"30:12","triangle":"ABR","value":"93/1000"}` | `1 * b * w + -1 * a * b + 1 * a * r + -93/1000` |
| 14 | bound | `{"direction":"lo","ref":"30:14","triangle":"ABS","value":"93/1000"}` | `1 * b * k + -1 * a * b + 1 * a * j + -93/1000` |
| 15 | bound | `{"direction":"hi","ref":"30:15","triangle":"ABS","value":"348724817/500000000"}` | `348724817/500000000 + -1 * b * k + 1 * a * b + -1 * a * j` |
| 16 | bound | `{"direction":"lo","ref":"30:16","triangle":"ACE","value":"93/1000"}` | `1 * c * e + -1 * a * c + 1 * a + -93/1000` |
| 19 | bound | `{"direction":"hi","ref":"30:19","triangle":"ACF","value":"95692943131/100000000000"}` | `95692943131/100000000000 + -1 * c + 1 * a * c + -1 * a * f` |
| 21 | bound | `{"direction":"hi","ref":"30:21","triangle":"ACH","value":"896233/1000000"}` | `896233/1000000 + -1 * c * h + 1 * a * c` |
| 22 | bound | `{"direction":"lo","ref":"30:22","triangle":"ACP","value":"93/1000"}` | `1 * c * q + -1 * a * c + 1 * a * p + -93/1000` |
| 23 | bound | `{"direction":"hi","ref":"30:23","triangle":"ACP","value":"565577/1000000"}` | `565577/1000000 + -1 * c * q + 1 * a * c + -1 * a * p` |
| 26 | bound | `{"direction":"lo","ref":"30:26","triangle":"ACR","value":"107751/1000000"}` | `1 * c * w + -1 * a * c + 1 * a * r + -107751/1000000` |
| 27 | bound | `{"direction":"hi","ref":"30:27","triangle":"ACR","value":"104293/125000"}` | `104293/125000 + -1 * c * w + 1 * a * c + -1 * a * r` |
| 28 | bound | `{"direction":"lo","ref":"30:28","triangle":"ACS","value":"279/1000"}` | `1 * c * k + -1 * a * c + 1 * a * j + -279/1000` |
| 30 | bound | `{"direction":"lo","ref":"30:30","triangle":"AEF","value":"40049/200000"}` | `159951/200000 + -1 * a + -1 * e * f + 1 * a * f` |
| 31 | bound | `{"direction":"hi","ref":"30:31","triangle":"AEF","value":"896233/1000000"}` | `-103767/1000000 + 1 * a + 1 * e * f + -1 * a * f` |
| 33 | bound | `{"direction":"hi","ref":"30:33","triangle":"AEH","value":"896233/1000000"}` | `896233/1000000 + -1 * h + 1 * a` |
| 34 | bound | `{"direction":"lo","ref":"30:34","triangle":"AEQ","value":"190859/1000000"}` | `1 * v + -1 * a + -1 * e * u + 1 * a * u + -190859/1000000` |
| 35 | bound | `{"direction":"hi","ref":"30:35","triangle":"AEQ","value":"18431/25000"}` | `18431/25000 + -1 * v + 1 * a + 1 * e * u + -1 * a * u` |
| 36 | bound | `{"direction":"lo","ref":"30:36","triangle":"AER","value":"93/1000"}` | `1 * w + -1 * a + -1 * e * r + 1 * a * r + -93/1000` |
| 37 | bound | `{"direction":"hi","ref":"30:37","triangle":"AER","value":"730577/1000000"}` | `730577/1000000 + -1 * w + 1 * a + 1 * e * r + -1 * a * r` |
| 38 | bound | `{"direction":"lo","ref":"30:38","triangle":"AES","value":"20471/100000"}` | `1 * k + -1 * a + -1 * e * j + 1 * a * j + -20471/100000` |
| 39 | bound | `{"direction":"hi","ref":"30:39","triangle":"AES","value":"896233/1000000"}` | `896233/1000000 + -1 * k + 1 * a + 1 * e * j + -1 * a * j` |
| 40 | bound | `{"direction":"lo","ref":"30:40","triangle":"AFH","value":"279/1000"}` | `1 * f * h + -1 * a * f + -279/1000` |
| 41 | bound | `{"direction":"hi","ref":"30:41","triangle":"AFH","value":"52423356869/100000000000"}` | `52423356869/100000000000 + -1 * f * h + 1 * a * f` |
| 42 | bound | `{"direction":"lo","ref":"30:42","triangle":"AFP","value":"22907/200000"}` | `-1 * f * q + 1 * a * f + 1 * p + -1 * a * p + -22907/200000` |
| 43 | bound | `{"direction":"hi","ref":"30:43","triangle":"AFP","value":"309899/500000"}` | `309899/500000 + 1 * f * q + -1 * a * f + -1 * p + 1 * a * p` |
| 44 | bound | `{"direction":"lo","ref":"30:44","triangle":"AFQ","value":"93/1000"}` | `1 * f * v + -1 * a * f + -1 * u + 1 * a * u + -93/1000` |
| 46 | bound | `{"direction":"lo","ref":"30:46","triangle":"AFR","value":"177067/1000000"}` | `-1 * f * w + 1 * a * f + 1 * r + -1 * a * r + -177067/1000000` |
| 48 | bound | `{"direction":"lo","ref":"30:48","triangle":"AFS","value":"93/1000"}` | `-1 * f * k + 1 * a * f + 1 * j + -1 * a * j + -93/1000` |
| 49 | bound | `{"direction":"hi","ref":"30:49","triangle":"AFS","value":"79970974513/125000000000"}` | `79970974513/125000000000 + 1 * f * k + -1 * a * f + -1 * j + 1 * a * j` |
| 51 | bound | `{"direction":"hi","ref":"30:51","triangle":"AHP","value":"621667/1000000"}` | `621667/1000000 + -1 * h * p + 1 * a * p` |
| 52 | bound | `{"direction":"lo","ref":"30:52","triangle":"AHQ","value":"93/1000"}` | `1 * h * u + -1 * a * u + -93/1000` |
| 53 | bound | `{"direction":"hi","ref":"30:53","triangle":"AHQ","value":"67646770607/200000000000"}` | `67646770607/200000000000 + -1 * h * u + 1 * a * u` |
| 54 | bound | `{"direction":"lo","ref":"30:54","triangle":"AHR","value":"349547/1000000"}` | `1 * h * r + -1 * a * r + -349547/1000000` |
| 55 | bound | `{"direction":"hi","ref":"30:55","triangle":"AHR","value":"896233/1000000"}` | `896233/1000000 + -1 * h * r + 1 * a * r` |
| 56 | bound | `{"direction":"lo","ref":"30:56","triangle":"AHS","value":"279/1000"}` | `1 * h * j + -1 * a * j + -279/1000` |
| 57 | bound | `{"direction":"hi","ref":"30:57","triangle":"AHS","value":"3055258297/3906250000"}` | `3055258297/3906250000 + -1 * h * j + 1 * a * j` |
| 58 | bound | `{"direction":"lo","ref":"30:58","triangle":"APQ","value":"22907/200000"}` | `1 * p * v + -1 * a * p + -1 * q * u + 1 * a * u + -22907/200000` |
| 59 | bound | `{"direction":"hi","ref":"30:59","triangle":"APQ","value":"507343/1000000"}` | `507343/1000000 + -1 * p * v + 1 * a * p + 1 * q * u + -1 * a * u` |
| 60 | bound | `{"direction":"lo","ref":"30:60","triangle":"APS","value":"93/1000"}` | `1 * p * k + -1 * a * p + -1 * q * j + 1 * a * j + -93/1000` |
| 62 | bound | `{"direction":"lo","ref":"30:62","triangle":"AQR","value":"12809/125000"}` | `-1 * u * w + 1 * a * u + 1 * v * r + -1 * a * r + -12809/125000` |
| 64 | bound | `{"direction":"lo","ref":"30:64","triangle":"AQS","value":"93/1000"}` | `-1 * u * k + 1 * a * u + 1 * v * j + -1 * a * j + -93/1000` |
| 65 | bound | `{"direction":"hi","ref":"30:65","triangle":"AQS","value":"540993/1000000"}` | `540993/1000000 + 1 * u * k + -1 * a * u + -1 * v * j + 1 * a * j` |
| 66 | bound | `{"direction":"lo","ref":"30:66","triangle":"ARS","value":"6271/50000"}` | `1 * r * k + -1 * a * r + -1 * w * j + 1 * a * j + -6271/50000` |
| 68 | bound | `{"direction":"lo","ref":"30:68","triangle":"BCE","value":"93/1000"}` | `1 * c * e + -1 * b * e + -93/1000` |
| 70 | bound | `{"direction":"lo","ref":"30:70","triangle":"BCF","value":"279/1000"}` | `1 * c + -1 * b + -279/1000` |
| 71 | bound | `{"direction":"hi","ref":"30:71","triangle":"BCF","value":"896233/1000000"}` | `896233/1000000 + -1 * c + 1 * b` |
| 72 | bound | `{"direction":"lo","ref":"30:72","triangle":"BCH","value":"321453/1000000"}` | `1 * c * h + -1 * b * h + -321453/1000000` |
| 73 | bound | `{"direction":"hi","ref":"30:73","triangle":"BCH","value":"896233/1000000"}` | `896233/1000000 + -1 * c * h + 1 * b * h` |
| 74 | bound | `{"direction":"lo","ref":"30:74","triangle":"BCP","value":"93/1000"}` | `1 * c * q + -1 * b * q + -93/1000` |
| 75 | bound | `{"direction":"hi","ref":"30:75","triangle":"BCP","value":"560207/1000000"}` | `560207/1000000 + -1 * c * q + 1 * b * q` |
| 77 | bound | `{"direction":"hi","ref":"30:77","triangle":"BCQ","value":"376869/500000"}` | `376869/500000 + -1 * c * v + 1 * b * v` |
| 79 | bound | `{"direction":"hi","ref":"30:79","triangle":"BCR","value":"93470828269/125000000000"}` | `93470828269/125000000000 + -1 * c * w + 1 * b * w` |
| 80 | bound | `{"direction":"lo","ref":"30:80","triangle":"BCS","value":"279/1000"}` | `1 * c * k + -1 * b * k + -279/1000` |
| 81 | bound | `{"direction":"hi","ref":"30:81","triangle":"BCS","value":"896233/1000000"}` | `896233/1000000 + -1 * c * k + 1 * b * k` |
| 82 | bound | `{"direction":"lo","ref":"30:82","triangle":"BEF","value":"64659/200000"}` | `135341/200000 + -1 * b + -1 * e * f + 1 * b * e` |
| 83 | bound | `{"direction":"hi","ref":"30:83","triangle":"BEF","value":"174939543131/200000000000"}` | `-25060456869/200000000000 + 1 * b + 1 * e * f + -1 * b * e` |
| 84 | bound | `{"direction":"lo","ref":"30:84","triangle":"BEH","value":"321453/1000000"}` | `1 * h + -1 * b * h + 1 * b * e + -321453/1000000` |
| 85 | bound | `{"direction":"hi","ref":"30:85","triangle":"BEH","value":"936805897/1000000000"}` | `936805897/1000000000 + -1 * h + 1 * b * h + -1 * b * e` |
| 86 | bound | `{"direction":"lo","ref":"30:86","triangle":"BEP","value":"93/1000"}` | `1 * q + -1 * b * q + -1 * e * p + 1 * b * e + -93/1000` |
| 87 | bound | `{"direction":"hi","ref":"30:87","triangle":"BEP","value":"537801/1000000"}` | `537801/1000000 + -1 * q + 1 * b * q + 1 * e * p + -1 * b * e` |
| 88 | bound | `{"direction":"lo","ref":"30:88","triangle":"BEQ","value":"154469/500000"}` | `1 * v + -1 * b * v + -1 * e * u + 1 * b * e + -154469/500000` |
| 89 | bound | `{"direction":"hi","ref":"30:89","triangle":"BEQ","value":"753738226631/1000000000000"}` | `753738226631/1000000000000 + -1 * v + 1 * b * v + 1 * e * u + -1 * b * e` |
| 90 | bound | `{"direction":"lo","ref":"30:90","triangle":"BER","value":"27727/250000"}` | `1 * w + -1 * b * w + -1 * e * r + 1 * b * e + -27727/250000` |
| 91 | bound | `{"direction":"hi","ref":"30:91","triangle":"BER","value":"85606949941/125000000000"}` | `85606949941/125000000000 + -1 * w + 1 * b * w + 1 * e * r + -1 * b * e` |
| 92 | bound | `{"direction":"lo","ref":"30:92","triangle":"BES","value":"331359/1000000"}` | `1 * k + -1 * b * k + -1 * e * j + 1 * b * e + -331359/1000000` |
| 93 | bound | `{"direction":"hi","ref":"30:93","triangle":"BES","value":"85729235791/100000000000"}` | `85729235791/100000000000 + -1 * k + 1 * b * k + 1 * e * j + -1 * b * e` |
| 94 | bound | `{"direction":"lo","ref":"30:94","triangle":"BFH","value":"315117/1000000"}` | `1 * f * h + -1 * b * h + 1 * b + -315117/1000000` |
| 95 | bound | `{"direction":"hi","ref":"30:95","triangle":"BFH","value":"58493/100000"}` | `58493/100000 + -1 * f * h + 1 * b * h + -1 * b` |
| 96 | bound | `{"direction":"lo","ref":"30:96","triangle":"BFP","value":"93/1000"}` | `-1 * f * q + 1 * b * q + 1 * p + -1 * b + -93/1000` |
| 98 | bound | `{"direction":"lo","ref":"30:98","triangle":"BFQ","value":"93/1000"}` | `1 * f * v + -1 * b * v + -1 * u + 1 * b + -93/1000` |
| 100 | bound | `{"direction":"lo","ref":"30:100","triangle":"BFR","value":"331243/1000000"}` | `-1 * f * w + 1 * b * w + 1 * r + -1 * b + -331243/1000000` |
| 101 | bound | `{"direction":"hi","ref":"30:101","triangle":"BFR","value":"80376495061/100000000000"}` | `80376495061/100000000000 + 1 * f * w + -1 * b * w + -1 * r + 1 * b` |
| 102 | bound | `{"direction":"lo","ref":"30:102","triangle":"BFS","value":"193/1600"}` | `-1 * f * k + 1 * b * k + 1 * j + -1 * b + -193/1600` |
| 103 | bound | `{"direction":"hi","ref":"30:103","triangle":"BFS","value":"130496535583/200000000000"}` | `130496535583/200000000000 + 1 * f * k + -1 * b * k + -1 * j + 1 * b` |
| 104 | bound | `{"direction":"lo","ref":"30:104","triangle":"BHP","value":"135453/1000000"}` | `1 * b * q + 1 * h * p + -1 * b * h + -135453/1000000` |
| 105 | bound | `{"direction":"hi","ref":"30:105","triangle":"BHP","value":"601729/1000000"}` | `601729/1000000 + -1 * b * q + -1 * h * p + 1 * b * h` |
| 106 | bound | `{"direction":"lo","ref":"30:106","triangle":"BHQ","value":"129117/1000000"}` | `1 * b * v + 1 * h * u + -1 * b * h + -129117/1000000` |
| 107 | bound | `{"direction":"hi","ref":"30:107","triangle":"BHQ","value":"360897/1000000"}` | `360897/1000000 + -1 * b * v + -1 * h * u + 1 * b * h` |
| 108 | bound | `{"direction":"lo","ref":"30:108","triangle":"BHR","value":"13857/20000"}` | `1 * b * w + 1 * h * r + -1 * b * h + -13857/20000` |
| 109 | bound | `{"direction":"hi","ref":"30:109","triangle":"BHR","value":"122851296731/125000000000"}` | `122851296731/125000000000 + -1 * b * w + -1 * h * r + 1 * b * h` |
| 110 | bound | `{"direction":"lo","ref":"30:110","triangle":"BHS","value":"23061/62500"}` | `1 * b * k + 1 * h * j + -1 * b * h + -23061/62500` |
| 111 | bound | `{"direction":"hi","ref":"30:111","triangle":"BHS","value":"13636/15625"}` | `13636/15625 + -1 * b * k + -1 * h * j + 1 * b * h` |
| 112 | bound | `{"direction":"lo","ref":"30:112","triangle":"BPQ","value":"100531/1000000"}` | `1 * p * v + -1 * b * v + -1 * q * u + 1 * b * q + -100531/1000000` |
| 113 | bound | `{"direction":"hi","ref":"30:113","triangle":"BPQ","value":"53107/125000"}` | `53107/125000 + -1 * p * v + 1 * b * v + 1 * q * u + -1 * b * q` |
| 114 | bound | `{"direction":"lo","ref":"30:114","triangle":"BPR","value":"93/1000"}` | `-1 * p * w + 1 * b * w + 1 * q * r + -1 * b * q + -93/1000` |
| 116 | bound | `{"direction":"lo","ref":"30:116","triangle":"BPS","value":"93/1000"}` | `1 * p * k + -1 * b * k + -1 * q * j + 1 * b * q + -93/1000` |
| 118 | bound | `{"direction":"lo","ref":"30:118","triangle":"BQR","value":"295613/1000000"}` | `-1 * u * w + 1 * b * w + 1 * v * r + -1 * b * v + -295613/1000000` |
| 119 | bound | `{"direction":"hi","ref":"30:119","triangle":"BQR","value":"179619/250000"}` | `179619/250000 + 1 * u * w + -1 * b * w + -1 * v * r + 1 * b * v` |
| 121 | bound | `{"direction":"hi","ref":"30:121","triangle":"BQS","value":"22711/40000"}` | `22711/40000 + 1 * u * k + -1 * b * k + -1 * v * j + 1 * b * v` |
| 122 | bound | `{"direction":"lo","ref":"30:122","triangle":"BRS","value":"318659/1000000"}` | `1 * r * k + -1 * b * k + -1 * w * j + 1 * b * w + -318659/1000000` |
| 123 | bound | `{"direction":"hi","ref":"30:123","triangle":"BRS","value":"36451497521/50000000000"}` | `36451497521/50000000000 + -1 * r * k + 1 * b * k + 1 * w * j + -1 * b * w` |
| 124 | bound | `{"direction":"lo","ref":"30:124","triangle":"CEF","value":"93/1000"}` | `907/1000 + -1 * c + -1 * e * f + 1 * c * e` |
| 125 | bound | `{"direction":"hi","ref":"30:125","triangle":"CEF","value":"274100241/500000000"}` | `-225899759/500000000 + 1 * c + 1 * e * f + -1 * c * e` |
| 126 | bound | `{"direction":"lo","ref":"30:126","triangle":"CEH","value":"93/1000"}` | `1 * h + -1 * c * h + 1 * c * e + -93/1000` |
| 127 | bound | `{"direction":"hi","ref":"30:127","triangle":"CEH","value":"167479891/250000000"}` | `167479891/250000000 + -1 * h + 1 * c * h + -1 * c * e` |
| 128 | bound | `{"direction":"lo","ref":"30:128","triangle":"CEP","value":"93/1000"}` | `1 * q + -1 * c * q + -1 * e * p + 1 * c * e + -93/1000` |
| 132 | bound | `{"direction":"lo","ref":"30:132","triangle":"CER","value":"93/1000"}` | `1 * w + -1 * c * w + -1 * e * r + 1 * c * e + -93/1000` |
| 134 | bound | `{"direction":"lo","ref":"30:134","triangle":"CES","value":"93/1000"}` | `1 * k + -1 * c * k + -1 * e * j + 1 * c * e + -93/1000` |
| 136 | bound | `{"direction":"lo","ref":"30:136","triangle":"CFH","value":"58841/200000"}` | `1 * f * h + -1 * c * h + 1 * c + -58841/200000` |
| 138 | bound | `{"direction":"lo","ref":"30:138","triangle":"CFP","value":"93/1000"}` | `1 * f * q + -1 * c * q + -1 * p + 1 * c + -93/1000` |
| 140 | bound | `{"direction":"lo","ref":"30:140","triangle":"CFQ","value":"21641/200000"}` | `1 * f * v + -1 * c * v + -1 * u + 1 * c + -21641/200000` |
| 142 | bound | `{"direction":"lo","ref":"30:142","triangle":"CFR","value":"93/1000"}` | `-1 * f * w + 1 * c * w + 1 * r + -1 * c + -93/1000` |
| 143 | bound | `{"direction":"hi","ref":"30:143","triangle":"CFR","value":"40655051843/62500000000"}` | `40655051843/62500000000 + 1 * f * w + -1 * c * w + -1 * r + 1 * c` |
| 144 | bound | `{"direction":"lo","ref":"30:144","triangle":"CFS","value":"93/1000"}` | `-1 * f * k + 1 * c * k + 1 * j + -1 * c + -93/1000` |
| 145 | bound | `{"direction":"hi","ref":"30:145","triangle":"CFS","value":"280701/500000"}` | `280701/500000 + 1 * f * k + -1 * c * k + -1 * j + 1 * c` |
| 146 | bound | `{"direction":"lo","ref":"30:146","triangle":"CHP","value":"93/1000"}` | `-1 * c * q + -1 * h * p + 1 * c * h + -93/1000` |
| 148 | bound | `{"direction":"lo","ref":"30:148","triangle":"CHQ","value":"93/1000"}` | `1 * c * v + 1 * h * u + -1 * c * h + -93/1000` |
| 150 | bound | `{"direction":"lo","ref":"30:150","triangle":"CHR","value":"336013/1000000"}` | `1 * c * w + 1 * h * r + -1 * c * h + -336013/1000000` |
| 152 | bound | `{"direction":"lo","ref":"30:152","triangle":"CHS","value":"14369/40000"}` | `1 * c * k + 1 * h * j + -1 * c * h + -14369/40000` |
| 157 | bound | `{"direction":"hi","ref":"30:157","triangle":"CPR","value":"311057/500000"}` | `311057/500000 + 1 * p * w + -1 * c * w + -1 * q * r + 1 * c * q` |
| 159 | bound | `{"direction":"hi","ref":"30:159","triangle":"CPS","value":"655711/1000000"}` | `655711/1000000 + 1 * p * k + -1 * c * k + -1 * q * j + 1 * c * q` |
| 163 | bound | `{"direction":"hi","ref":"30:163","triangle":"CQS","value":"5333/8000"}` | `5333/8000 + 1 * u * k + -1 * c * k + -1 * v * j + 1 * c * v` |
| 164 | bound | `{"direction":"lo","ref":"30:164","triangle":"CRS","value":"93/1000"}` | `1 * r * k + -1 * c * k + -1 * w * j + 1 * c * w + -93/1000` |
| 165 | bound | `{"direction":"hi","ref":"30:165","triangle":"CRS","value":"63816517331/125000000000"}` | `63816517331/125000000000 + -1 * r * k + 1 * c * k + 1 * w * j + -1 * c * w` |
| 166 | bound | `{"direction":"lo","ref":"30:166","triangle":"EFH","value":"11583/40000"}` | `1 * f * h + -1 * e * f + -1 * h + 28417/40000` |
| 167 | bound | `{"direction":"hi","ref":"30:167","triangle":"EFH","value":"3491264557/5000000000"}` | `-1508735443/5000000000 + -1 * f * h + 1 * e * f + 1 * h` |
| 169 | bound | `{"direction":"hi","ref":"30:169","triangle":"EFP","value":"625829/1000000"}` | `-374171/1000000 + -1 * f * q + 1 * e * f + 1 * q + 1 * p + -1 * e * p` |
| 170 | bound | `{"direction":"lo","ref":"30:170","triangle":"EFQ","value":"4143/40000"}` | `1 * f * v + -1 * e * f + -1 * v + -1 * u + 35857/40000 + 1 * e * u` |
| 171 | bound | `{"direction":"hi","ref":"30:171","triangle":"EFQ","value":"506671/1000000"}` | `-493329/1000000 + -1 * f * v + 1 * e * f + 1 * v + 1 * u + -1 * e * u` |
| 172 | bound | `{"direction":"lo","ref":"30:172","triangle":"EFR","value":"54249/500000"}` | `-1 * f * w + 1 * e * f + 1 * w + 1 * r + -554249/500000 + -1 * e * r` |
| 173 | bound | `{"direction":"hi","ref":"30:173","triangle":"EFR","value":"251573459373/500000000000"}` | `751573459373/500000000000 + 1 * f * w + -1 * e * f + -1 * w + -1 * r + 1 * e * r` |
| 174 | bound | `{"direction":"lo","ref":"30:174","triangle":"EFS","value":"93/1000"}` | `-1 * f * k + 1 * e * f + 1 * k + 1 * j + -1093/1000 + -1 * e * j` |
| 175 | bound | `{"direction":"hi","ref":"30:175","triangle":"EFS","value":"251573499333/500000000000"}` | `751573499333/500000000000 + 1 * f * k + -1 * e * f + -1 * k + -1 * j + 1 * e * j` |
| 176 | bound | `{"direction":"lo","ref":"30:176","triangle":"EHP","value":"93/1000"}` | `-1 * q + -1 * h * p + 1 * h + 1 * e * p + -93/1000` |
| 177 | bound | `{"direction":"hi","ref":"30:177","triangle":"EHP","value":"60837/100000"}` | `60837/100000 + 1 * q + 1 * h * p + -1 * h + -1 * e * p` |
| 178 | bound | `{"direction":"lo","ref":"30:178","triangle":"EHQ","value":"93/1000"}` | `1 * v + 1 * h * u + -1 * h + -1 * e * u + -93/1000` |
| 180 | bound | `{"direction":"lo","ref":"30:180","triangle":"EHR","value":"341787/1000000"}` | `1 * w + 1 * h * r + -1 * h + -1 * e * r + -341787/1000000` |
| 181 | bound | `{"direction":"hi","ref":"30:181","triangle":"EHR","value":"730577/1000000"}` | `730577/1000000 + -1 * w + -1 * h * r + 1 * h + 1 * e * r` |
| 182 | bound | `{"direction":"lo","ref":"30:182","triangle":"EHS","value":"14369/40000"}` | `1 * k + 1 * h * j + -1 * h + -1 * e * j + -14369/40000` |
| 183 | bound | `{"direction":"hi","ref":"30:183","triangle":"EHS","value":"2610985481/3125000000"}` | `2610985481/3125000000 + -1 * k + -1 * h * j + 1 * h + 1 * e * j` |
| 184 | bound | `{"direction":"lo","ref":"30:184","triangle":"EPQ","value":"115407/1000000"}` | `-1 * p * v + 1 * e * p + 1 * v + 1 * q * u + -1 * q + -1 * e * u + -115407/1000000` |
| 185 | bound | `{"direction":"hi","ref":"30:185","triangle":"EPQ","value":"25391/50000"}` | `25391/50000 + 1 * p * v + -1 * e * p + -1 * v + -1 * q * u + 1 * q + 1 * e * u` |
| 186 | bound | `{"direction":"lo","ref":"30:186","triangle":"EPR","value":"60337/500000"}` | `-1 * p * w + 1 * e * p + 1 * w + 1 * q * r + -1 * q + -1 * e * r + -60337/500000` |
| 187 | bound | `{"direction":"hi","ref":"30:187","triangle":"EPR","value":"33867/62500"}` | `33867/62500 + 1 * p * w + -1 * e * p + -1 * w + -1 * q * r + 1 * q + 1 * e * r` |
| 188 | bound | `{"direction":"lo","ref":"30:188","triangle":"EPS","value":"145359/1000000"}` | `-1 * p * k + 1 * e * p + 1 * k + 1 * q * j + -1 * q + -1 * e * j + -145359/1000000` |
| 189 | bound | `{"direction":"hi","ref":"30:189","triangle":"EPS","value":"125341/200000"}` | `125341/200000 + 1 * p * k + -1 * e * p + -1 * k + -1 * q * j + 1 * q + 1 * e * j` |
| 190 | bound | `{"direction":"lo","ref":"30:190","triangle":"EQR","value":"155787/1000000"}` | `-1 * u * w + 1 * e * u + 1 * w + 1 * v * r + -1 * v + -1 * e * r + -155787/1000000` |
| 191 | bound | `{"direction":"hi","ref":"30:191","triangle":"EQR","value":"544577/1000000"}` | `544577/1000000 + 1 * u * w + -1 * e * u + -1 * w + -1 * v * r + 1 * v + 1 * e * r` |
| 193 | bound | `{"direction":"hi","ref":"30:193","triangle":"EQS","value":"610961/1000000"}` | `610961/1000000 + 1 * u * k + -1 * e * u + -1 * k + -1 * v * j + 1 * v + 1 * e * j` |
| 194 | bound | `{"direction":"lo","ref":"30:194","triangle":"ERS","value":"93/1000"}` | `1 * r * k + -1 * e * r + -1 * k + -1 * w * j + 1 * w + 1 * e * j + -93/1000` |
| 195 | bound | `{"direction":"hi","ref":"30:195","triangle":"ERS","value":"248858189/1000000000"}` | `248858189/1000000000 + -1 * r * k + 1 * e * r + 1 * k + 1 * w * j + -1 * w + -1 * e * j` |
| 196 | bound | `{"direction":"lo","ref":"30:196","triangle":"FHP","value":"280849/1000000"}` | `-1 * f * q + -1 * h * p + 1 * f * h + 1 * p + -280849/1000000` |
| 197 | bound | `{"direction":"hi","ref":"30:197","triangle":"FHP","value":"507231/1000000"}` | `507231/1000000 + 1 * f * q + 1 * h * p + -1 * f * h + -1 * p` |
| 198 | bound | `{"direction":"lo","ref":"30:198","triangle":"FHQ","value":"93/1000"}` | `-1 * f * v + -1 * h * u + 1 * f * h + 1 * u + -93/1000` |
| 200 | bound | `{"direction":"lo","ref":"30:200","triangle":"FHR","value":"119951/1000000"}` | `-1 * f * w + -1 * h * r + 1 * f * h + 1 * r + -119951/1000000` |
| 201 | bound | `{"direction":"hi","ref":"30:201","triangle":"FHR","value":"49833144149/100000000000"}` | `49833144149/100000000000 + 1 * f * w + 1 * h * r + -1 * f * h + -1 * r` |
| 202 | bound | `{"direction":"lo","ref":"30:202","triangle":"FHS","value":"93/1000"}` | `-1 * f * k + -1 * h * j + 1 * f * h + 1 * j + -93/1000` |
| 204 | bound | `{"direction":"lo","ref":"30:204","triangle":"FPQ","value":"94849/1000000"}` | `-1 * p * v + 1 * p + 1 * f * v + 1 * q * u + -1 * f * q + -1 * u + -94849/1000000` |
| 206 | bound | `{"direction":"lo","ref":"30:206","triangle":"FPR","value":"145243/1000000"}` | `1 * p * w + -1 * p + -1 * f * w + -1 * q * r + 1 * f * q + 1 * r + -145243/1000000` |
| 207 | bound | `{"direction":"hi","ref":"30:207","triangle":"FPR","value":"293417/500000"}` | `293417/500000 + -1 * p * w + 1 * p + 1 * f * w + 1 * q * r + -1 * f * q + -1 * r` |
| 208 | bound | `{"direction":"lo","ref":"30:208","triangle":"FPS","value":"101097/1000000"}` | `1 * p * k + -1 * p + -1 * f * k + -1 * q * j + 1 * f * q + 1 * j + -101097/1000000` |
| 210 | bound | `{"direction":"lo","ref":"30:210","triangle":"FQR","value":"93/1000"}` | `1 * u * w + -1 * u + -1 * f * w + -1 * v * r + 1 * f * v + 1 * r + -93/1000` |
| 211 | bound | `{"direction":"hi","ref":"30:211","triangle":"FQR","value":"435419/1000000"}` | `435419/1000000 + -1 * u * w + 1 * u + 1 * f * w + 1 * v * r + -1 * f * v + -1 * r` |
| 212 | bound | `{"direction":"lo","ref":"30:212","triangle":"FQS","value":"47807/500000"}` | `1 * u * k + -1 * u + -1 * f * k + -1 * v * j + 1 * f * v + 1 * j + -47807/500000` |
| 214 | bound | `{"direction":"lo","ref":"30:214","triangle":"FRS","value":"93/1000"}` | `1 * r * k + -1 * r + -1 * f * k + -1 * w * j + 1 * f * w + 1 * j + -93/1000` |
| 216 | bound | `{"direction":"lo","ref":"30:216","triangle":"HPQ","value":"93/1000"}` | `1 * p * v + -1 * h * p + -1 * q * u + 1 * h * u + -93/1000` |
| 218 | bound | `{"direction":"lo","ref":"30:218","triangle":"HPR","value":"144041/500000"}` | `1 * p * w + -1 * h * p + -1 * q * r + 1 * h * r + -144041/500000` |
| 220 | bound | `{"direction":"lo","ref":"30:220","triangle":"HPS","value":"160429/500000"}` | `1 * p * k + -1 * h * p + -1 * q * j + 1 * h * j + -160429/500000` |
| 222 | bound | `{"direction":"lo","ref":"30:222","triangle":"HQR","value":"93/1000"}` | `1 * u * w + -1 * h * u + -1 * v * r + 1 * h * r + -93/1000` |
| 224 | bound | `{"direction":"lo","ref":"30:224","triangle":"HQS","value":"93/1000"}` | `1 * u * k + -1 * h * u + -1 * v * j + 1 * h * j + -93/1000` |
| 225 | bound | `{"direction":"hi","ref":"30:225","triangle":"HQS","value":"43541/100000"}` | `43541/100000 + -1 * u * k + 1 * h * u + 1 * v * j + -1 * h * j` |
| 226 | bound | `{"direction":"lo","ref":"30:226","triangle":"HRS","value":"63861/500000"}` | `1 * r * k + -1 * h * r + -1 * w * j + 1 * h * j + -63861/500000` |
| 227 | bound | `{"direction":"hi","ref":"30:227","triangle":"HRS","value":"8394319873/15625000000"}` | `8394319873/15625000000 + -1 * r * k + 1 * h * r + 1 * w * j + -1 * h * j` |
| 228 | bound | `{"direction":"lo","ref":"30:228","triangle":"PQR","value":"51041/500000"}` | `-1 * u * w + 1 * q * u + 1 * p * w + 1 * v * r + -1 * p * v + -1 * q * r + -51041/500000` |
| 230 | bound | `{"direction":"lo","ref":"30:230","triangle":"PQS","value":"67429/500000"}` | `-1 * u * k + 1 * q * u + 1 * p * k + 1 * v * j + -1 * p * v + -1 * q * j + -67429/500000` |
| 232 | bound | `{"direction":"lo","ref":"30:232","triangle":"PRS","value":"132659/1000000"}` | `1 * r * k + -1 * q * r + -1 * p * k + -1 * w * j + 1 * p * w + 1 * q * j + -132659/1000000` |
| 233 | bound | `{"direction":"hi","ref":"30:233","triangle":"PRS","value":"54303/100000"}` | `54303/100000 + -1 * r * k + 1 * q * r + 1 * p * k + 1 * w * j + -1 * p * w + -1 * q * j` |
| 234 | bound | `{"direction":"lo","ref":"30:234","triangle":"QRS","value":"67199/500000"}` | `1 * r * k + -1 * v * r + -1 * u * k + -1 * w * j + 1 * u * w + 1 * v * j + -67199/500000` |
| 236 | coordinate | `{"box":30,"direction":"lo","value":"103767/1000000","variable":"a"}` | `1 * a + -103767/1000000` |
| 237 | coordinate | `{"box":30,"direction":"hi","value":"391/1000","variable":"a"}` | `391/1000 + -1 * a` |
| 238 | coordinate | `{"box":30,"direction":"lo","value":"103767/1000000","variable":"b"}` | `1 * b + -103767/1000000` |
| 241 | coordinate | `{"box":30,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 242 | coordinate | `{"box":30,"direction":"lo","value":"103767/1000000","variable":"e"}` | `1 * e + -103767/1000000` |
| 243 | coordinate | `{"box":30,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 244 | coordinate | `{"box":30,"direction":"lo","value":"155651/500000","variable":"f"}` | `1 * f + -155651/500000` |
| 245 | coordinate | `{"box":30,"direction":"hi","value":"58493/100000","variable":"f"}` | `58493/100000 + -1 * f` |
| 246 | coordinate | `{"box":30,"direction":"lo","value":"580747/1000000","variable":"h"}` | `1 * h + -580747/1000000` |
| 247 | coordinate | `{"box":30,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 248 | coordinate | `{"box":30,"direction":"lo","value":"59937/250000","variable":"p"}` | `1 * p + -59937/250000` |
| 249 | coordinate | `{"box":30,"direction":"hi","value":"158493/200000","variable":"p"}` | `158493/200000 + -1 * p` |
| 250 | coordinate | `{"box":30,"direction":"lo","value":"22907/200000","variable":"q"}` | `1 * q + -22907/200000` |
| 251 | coordinate | `{"box":30,"direction":"hi","value":"632341/1000000","variable":"q"}` | `632341/1000000 + -1 * q` |
| 252 | coordinate | `{"box":30,"direction":"lo","value":"103767/1000000","variable":"u"}` | `1 * u + -103767/1000000` |
| 253 | coordinate | `{"box":30,"direction":"hi","value":"75479/200000","variable":"u"}` | `75479/200000 + -1 * u` |
| 254 | coordinate | `{"box":30,"direction":"lo","value":"493737/1000000","variable":"v"}` | `1 * v + -493737/1000000` |
| 255 | coordinate | `{"box":30,"direction":"hi","value":"841007/1000000","variable":"v"}` | `841007/1000000 + -1 * v` |
| 256 | coordinate | `{"box":30,"direction":"lo","value":"710039/1000000","variable":"r"}` | `1 * r + -710039/1000000` |
| 257 | coordinate | `{"box":30,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 258 | coordinate | `{"box":30,"direction":"lo","value":"222777/500000","variable":"w"}` | `1 * w + -222777/500000` |
| 259 | coordinate | `{"box":30,"direction":"hi","value":"104293/125000","variable":"w"}` | `104293/125000 + -1 * w` |
| 260 | coordinate | `{"box":30,"direction":"lo","value":"479037/1000000","variable":"j"}` | `1 * j + -479037/1000000` |
| 261 | coordinate | `{"box":30,"direction":"hi","value":"13636/15625","variable":"j"}` | `13636/15625 + -1 * j` |
| 262 | coordinate | `{"box":30,"direction":"lo","value":"561131/1000000","variable":"k"}` | `1 * k + -561131/1000000` |
| 263 | coordinate | `{"box":30,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 266 | physical | `{"factor":4}` | `-93/1000 + 1 * e` |
| 267 | physical | `{"factor":6}` | `-93/1000 + 1 * f` |
| 268 | physical | `{"factor":8}` | `-93/1000 + 1 * b` |
| 271 | physical | `{"factor":18}` | `-279/1000 + 1 * h + -1 * a` |
| 272 | physical | `{"factor":20}` | `-93/1000 + 1 * c` |
| 273 | physical | `{"factor":25}` | `907/1000 + -1 * a` |
| 275 | physical | `{"factor":47}` | `-279/1000 + 1 * h` |
| 276 | physical | `{"factor":49}` | `-93/1000 + 1 * h` |
| 278 | physical | `{"factor":57}` | `907/1000 + -1 * b` |
| 279 | physical | `{"factor":77}` | `907/1000 + -1 * f` |
| 281 | physical | `{"factor":102}` | `907/1000 + -1 * e` |
| 282 | physical | `{"factor":135}` | `1 * h + -1 * a` |
| 283 | physical | `{"factor":136}` | `1 * e + -1 * a` |
| 285 | physical | `{"factor":138}` | `1 * f + -1 * b` |
| 286 | physical | `{"factor":139}` | `1 * c + -1 * f` |
| 287 | physical | `{"factor":140}` | `1 * f + -1 * e` |
| 288 | physical | `{"factor":141}` | `76277533/62500000 + 2 * a * b + -1 * b * h + -1 * a * c + -2 * c * e + 1 * b * e + -2 * w + 1 * c * w + 2 * e * r + -2 * r * k + 1 * k + 2 * w * j + -1 * e * j + -2 * j + 1 * r + 2 * f * k + -1 * f * w + -2 * f * h + 1 * h * j + 1 * a * f` |
| 297 | physical | `{"factor":150}` | `1 * c * h + -135501/250000` |
| 298 | physical | `{"factor":151}` | `1 * c * h + -1 * a * b + -279/625` |
| 299 | physical | `{"factor":152}` | `346/625 + -1 * c * h + 1 * f * h + 1 * c * e + -1 * e * f` |
| 300 | physical | `{"factor":153}` | `157/250 + -1 * f + -1 * e + 1 * e * f` |
| 303 | physical | `{"factor":156}` | `907/1000 + -1 * p + -1 * q` |
| 305 | physical | `{"factor":158}` | `1 * p + -102650331/896233000` |
| 307 | physical | `{"factor":160}` | `1 * c * h * p + -1 * b * h * p + -93/1000 * c + -93/1000 * b` |
| 753 | physical | `{"factor":606}` | `-123623836411/250000000000 * p * k + 123623836411/250000000000 * b * k + 123623836411/250000000000 * q * j + 132126163589/250000000000 * b * q + 1023/1000 * p + -1023/1000 * f * q + -1023/1000 * b` |
| 759 | physical | `{"factor":612}` | `647702261359/1000000000000 * f * k + 375297738641/1000000000000 * b * k + -647702261359/1000000000000 * j + 647702261359/1000000000000 * b + -1023/1000 * u * k + 1023/1000 * v * j + -1023/1000 * b * v` |
| 802 | physical | `{"factor":655}` | `-79/125 * c * k + 79/125 * a * c + 391/1000 * a * j + -1023/1000 * a + 1023/1000 * k + -1023/1000 * e * j` |
| 848 | physical | `{"factor":701}` | `-7477917591/25000000000 * p * v + 7477917591/25000000000 * a * p + 7477917591/25000000000 * q * u + 18097082409/25000000000 * a * u + -1023/1000 * a * j + -1023/1000 * u * k + 1023/1000 * v * j` |
| 849 | physical | `{"factor":702}` | `375297738641/1000000000000 * p * k + 647702261359/1000000000000 * p + 647702261359/1000000000000 * f * k + -375297738641/1000000000000 * q * j + -647702261359/1000000000000 * f * q + -647702261359/1000000000000 * j + -1023/1000 * u * k + 1023/1000 * v * j + -1023/1000 * p * v + 1023/1000 * q * u` |
| 884 | physical | `{"factor":737}` | `-58493/100000 * f * k + 43807/100000 * h * j + -43807/100000 * f * h + 58493/100000 * j + -1023/1000 * b + 1023/1000 * b * k` |
| 935 | physical | `{"factor":788}` | `-274100241/500000000 * f * k + -237399759/500000000 * c * k + 274100241/500000000 * j + 237399759/500000000 * c + -1023/1000 + 1023/1000 * e * f + 1023/1000 * k + -1023/1000 * e * j` |
| 980 | physical | `{"factor":833}` | `730577/1000000 * f * h + 292423/1000000 * e * f + 292423/1000000 * h + -292423/1000000 + -1023/1000 * h * r + -1023/1000 * f * w + 1023/1000 * r` |
| 997 | physical | `{"factor":850}` | `-29612841659/100000000000 * f * k + 72687158341/100000000000 * h * j + -72687158341/100000000000 * f * h + 29612841659/100000000000 * j + 1023/1000 * f * v + -1023/1000 * u + 1023/1000 * u * k + -1023/1000 * v * j` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 19500 | 0, 41 |
| 1 | 1464200 | 0, 51 |
| 2 | 19500 | 0, 59 |
| 3 | 435200 | 0, 90 |
| 4 | 435200 | 0, 95 |
| 5 | 160900 | 0, 105 |
| 6 | 7698400 | 0, 109 |
| 7 | 689200 | 0, 111 |
| 8 | 7800 | 0, 113 |
| 9 | 392500 | 0, 119 |
| 10 | 287500 | 0, 165 |
| 11 | 337400 | 0, 167 |
| 12 | 115500 | 0, 184 |
| 13 | 1323900 | 0, 186 |
| 14 | 4837900 | 0, 227 |
| 15 | 720400 | 0, 233 |
| 16 | 5795400 | 0, 249 |
| 17 | 575300 | 0, 253 |
| 18 | 1932400 | 0, 255 |
| 19 | 843800 | 0, 258 |
| 20 | 5119900 | 0, 262 |
| 21 | 1029100 | 0, 287 |
| 22 | 51800 | 0, 300 |
| 23 | 197700 | 2, 6 |
| 24 | 514400 | 2, 19 |
| 25 | 1407600 | 2, 83 |
| 26 | 1520300 | 2, 144 |
| 27 | 4150900 | 2, 146 |
| 28 | 51800 | 2, 178 |
| 29 | 87700 | 2, 230 |
| 30 | 301500 | 3, 16 |
| 31 | 1407600 | 3, 68 |
| 32 | 68800 | 4, 116 |
| 33 | 19500 | 6, 12 |
| 34 | 648300 | 6, 19 |
| 35 | 416200 | 6, 42 |
| 36 | 850300 | 6, 60 |
| 37 | 485800 | 6, 71 |
| 38 | 4526700 | 6, 79 |
| 39 | 3971000 | 6, 81 |
| 40 | 197700 | 6, 91 |
| 41 | 485800 | 6, 100 |
| 42 | 2972600 | 6, 122 |
| 43 | 3122000 | 6, 124 |
| 44 | 5417600 | 6, 134 |
| 45 | 51800 | 6, 226 |
| 46 | 2367900 | 6, 232 |
| 47 | 1052700 | 6, 234 |
| 48 | 6487700 | 6, 245 |
| 49 | 12797400 | 6, 251 |
| 50 | 22532700 | 6, 255 |
| 51 | 39100 | 6, 259 |
| 52 | 8416200 | 6, 261 |
| 53 | 217300 | 8, 15 |
| 54 | 1483800 | 8, 26 |
| 55 | 19500 | 8, 31 |
| 56 | 6733700 | 8, 33 |
| 57 | 1247000 | 8, 54 |
| 58 | 236800 | 8, 62 |
| 59 | 217300 | 8, 65 |
| 60 | 796800 | 8, 72 |
| 61 | 3748300 | 8, 80 |
| 62 | 3286900 | 8, 84 |
| 63 | 467000 | 8, 94 |
| 64 | 536800 | 8, 108 |
| 65 | 4113400 | 8, 110 |
| 66 | 103900 | 8, 118 |
| 67 | 788600 | 8, 121 |
| 68 | 2217700 | 8, 127 |
| 69 | 442500 | 8, 142 |
| 70 | 419800 | 8, 163 |
| 71 | 1084900 | 8, 171 |
| 72 | 198100 | 8, 172 |
| 73 | 1148000 | 8, 180 |
| 74 | 2717000 | 8, 182 |
| 75 | 126500 | 8, 193 |
| 76 | 933400 | 8, 224 |
| 77 | 843800 | 8, 259 |
| 78 | 9940300 | 8, 260 |
| 79 | 9940300 | 8, 262 |
| 80 | 2480700 | 8, 266 |
| 81 | 5846200 | 8, 272 |
| 82 | 5153400 | 8, 273 |
| 83 | 6445800 | 8, 276 |
| 84 | 5846200 | 8, 278 |
| 85 | 335500 | 8, 279 |
| 86 | 19500 | 10, 27 |
| 87 | 400300 | 10, 93 |
| 88 | 1084900 | 12, 98 |
| 89 | 2386700 | 12, 146 |
| 90 | 3321800 | 14, 83 |
| 91 | 4390300 | 14, 132 |
| 92 | 915200 | 14, 216 |
| 93 | 317100 | 15, 114 |
| 94 | 452100 | 16, 83 |
| 95 | 79800 | 16, 85 |
| 96 | 7220200 | 16, 93 |
| 97 | 3657000 | 16, 116 |
| 98 | 19500 | 16, 180 |
| 99 | 392500 | 16, 222 |
| 100 | 619400 | 19, 114 |
| 101 | 7459100 | 19, 178 |
| 102 | 276900 | 19, 184 |
| 103 | 608800 | 21, 114 |
| 104 | 843800 | 22, 257 |
| 105 | 19500 | 23, 44 |
| 106 | 82000 | 23, 178 |
| 107 | 19500 | 26, 44 |
| 108 | 19500 | 27, 31 |
| 109 | 287500 | 27, 134 |
| 110 | 287500 | 28, 132 |
| 111 | 7665100 | 28, 178 |
| 112 | 605000 | 30, 68 |
| 113 | 276900 | 30, 146 |
| 114 | 179600 | 30, 202 |
| 115 | 88772900 | 30, 222 |
| 116 | 348800 | 31, 39 |
| 117 | 2848800 | 31, 93 |
| 118 | 1228400 | 31, 101 |
| 119 | 10300 | 31, 143 |
| 120 | 419800 | 31, 165 |
| 121 | 93200 | 31, 173 |
| 122 | 937100 | 31, 195 |
| 123 | 967100 | 31, 207 |
| 124 | 126900 | 31, 216 |
| 125 | 1168700 | 31, 230 |
| 126 | 5485000 | 31, 238 |
| 127 | 82400 | 31, 244 |
| 128 | 58579600 | 31, 260 |
| 129 | 9300 | 31, 283 |
| 130 | 335500 | 31, 303 |
| 131 | 195689700 | 33, 44 |
| 132 | 11016900 | 33, 98 |
| 133 | 7574000 | 33, 114 |
| 134 | 152977400 | 33, 178 |
| 135 | 246700 | 34, 146 |
| 136 | 13254100 | 34, 202 |
| 137 | 348800 | 35, 57 |
| 138 | 7297800 | 36, 68 |
| 139 | 885700 | 36, 146 |
| 140 | 5558300 | 37, 134 |
| 141 | 14219800 | 37, 198 |
| 142 | 4008200 | 37, 303 |
| 143 | 348800 | 38, 44 |
| 144 | 2911400 | 38, 68 |
| 145 | 251900 | 38, 132 |
| 146 | 5527100 | 38, 146 |
| 147 | 1378700 | 39, 106 |
| 148 | 913000 | 39, 114 |
| 149 | 75283800 | 40, 191 |
| 150 | 1137300 | 43, 283 |
| 151 | 33600 | 44, 73 |
| 152 | 106500 | 44, 75 |
| 153 | 978500 | 44, 87 |
| 154 | 534100 | 44, 100 |
| 155 | 136600 | 44, 103 |
| 156 | 1159800 | 44, 122 |
| 157 | 29800 | 44, 125 |
| 158 | 51400 | 44, 136 |
| 159 | 151000 | 44, 138 |
| 160 | 419800 | 44, 145 |
| 161 | 430100 | 44, 150 |
| 162 | 948700 | 44, 172 |
| 163 | 75385000 | 44, 180 |
| 164 | 1012400 | 44, 182 |
| 165 | 47200 | 44, 188 |
| 166 | 816200 | 44, 206 |
| 167 | 573300 | 44, 218 |
| 168 | 197100 | 44, 232 |
| 169 | 11743100 | 44, 247 |
| 170 | 228719800 | 44, 262 |
| 171 | 315200 | 44, 272 |
| 172 | 194144600 | 44, 273 |
| 173 | 315200 | 44, 278 |
| 174 | 1438500 | 44, 279 |
| 175 | 88432200 | 46, 178 |
| 176 | 128200 | 48, 167 |
| 177 | 1835200 | 48, 222 |
| 178 | 964600 | 48, 300 |
| 179 | 591300 | 49, 68 |
| 180 | 3405700 | 49, 178 |
| 181 | 214300 | 49, 216 |
| 182 | 1847500 | 51, 68 |
| 183 | 462500 | 51, 283 |
| 184 | 137300 | 52, 96 |
| 185 | 2241200 | 52, 116 |
| 186 | 103800 | 52, 128 |
| 187 | 28000 | 52, 134 |
| 188 | 12384600 | 52, 214 |
| 189 | 1196300 | 52, 236 |
| 190 | 637100 | 52, 242 |
| 191 | 58317500 | 52, 245 |
| 192 | 896900 | 52, 263 |
| 193 | 11668400 | 53, 194 |
| 194 | 640700 | 54, 116 |
| 195 | 3164400 | 55, 303 |
| 196 | 2590500 | 56, 128 |
| 197 | 749700 | 57, 68 |
| 198 | 33600 | 57, 89 |
| 199 | 35700 | 57, 196 |
| 200 | 819900 | 57, 204 |
| 201 | 7600 | 57, 247 |
| 202 | 229616800 | 57, 255 |
| 203 | 9940300 | 57, 303 |
| 204 | 430100 | 58, 132 |
| 205 | 391800 | 58, 144 |
| 206 | 1104500 | 58, 202 |
| 207 | 640700 | 59, 214 |
| 208 | 916100 | 60, 132 |
| 209 | 1835200 | 60, 222 |
| 210 | 1028100 | 64, 167 |
| 211 | 56879000 | 64, 245 |
| 212 | 589400 | 65, 114 |
| 213 | 2175900 | 66, 216 |
| 214 | 435200 | 68, 103 |
| 215 | 400300 | 68, 118 |
| 216 | 1734800 | 68, 122 |
| 217 | 287500 | 68, 164 |
| 218 | 836200 | 68, 166 |
| 219 | 1830900 | 68, 189 |
| 220 | 1082800 | 68, 190 |
| 221 | 1047600 | 68, 194 |
| 222 | 3255600 | 68, 196 |
| 223 | 4386500 | 68, 244 |
| 224 | 4647900 | 68, 248 |
| 225 | 575300 | 68, 252 |
| 226 | 1438700 | 68, 256 |
| 227 | 4531700 | 68, 258 |
| 228 | 972400 | 68, 261 |
| 229 | 5213500 | 68, 262 |
| 230 | 1453700 | 68, 267 |
| 231 | 539300 | 68, 283 |
| 232 | 652400 | 68, 287 |
| 233 | 1438700 | 70, 257 |
| 234 | 8700 | 71, 116 |
| 235 | 22997500 | 71, 214 |
| 236 | 1565100 | 73, 122 |
| 237 | 792000 | 74, 202 |
| 238 | 640700 | 75, 214 |
| 239 | 594900 | 77, 116 |
| 240 | 594900 | 77, 214 |
| 241 | 524200 | 79, 116 |
| 242 | 18002800 | 79, 178 |
| 243 | 7242600 | 81, 184 |
| 244 | 7099800 | 81, 216 |
| 245 | 1147500 | 81, 303 |
| 246 | 3255600 | 82, 146 |
| 247 | 798900 | 82, 202 |
| 248 | 21356800 | 82, 222 |
| 249 | 978500 | 83, 198 |
| 250 | 3381900 | 83, 220 |
| 251 | 597300 | 83, 224 |
| 252 | 3614600 | 83, 226 |
| 253 | 972400 | 83, 238 |
| 254 | 113100 | 83, 283 |
| 255 | 2135100 | 84, 114 |
| 256 | 1950600 | 84, 132 |
| 257 | 10403900 | 84, 214 |
| 258 | 32800 | 85, 194 |
| 259 | 289900 | 85, 303 |
| 260 | 1840700 | 86, 257 |
| 261 | 2186900 | 87, 222 |
| 262 | 108800 | 88, 202 |
| 263 | 696300 | 90, 178 |
| 264 | 1151900 | 91, 116 |
| 265 | 1400800 | 91, 184 |
| 266 | 1743200 | 91, 216 |
| 267 | 4871500 | 91, 303 |
| 268 | 7510500 | 92, 132 |
| 269 | 2093800 | 92, 146 |
| 270 | 430100 | 93, 184 |
| 271 | 2742000 | 93, 303 |
| 272 | 1928200 | 94, 114 |
| 273 | 51800 | 94, 178 |
| 274 | 51400 | 94, 198 |
| 275 | 1194000 | 94, 214 |
| 276 | 400 | 94, 224 |
| 277 | 11842600 | 95, 194 |
| 278 | 51400 | 95, 202 |
| 279 | 6769700 | 95, 257 |
| 280 | 175100 | 96, 148 |
| 281 | 335500 | 96, 263 |
| 282 | 761200 | 98, 122 |
| 283 | 175100 | 98, 134 |
| 284 | 18537500 | 98, 178 |
| 285 | 18537500 | 98, 224 |
| 286 | 22588500 | 98, 226 |
| 287 | 18537500 | 98, 234 |
| 288 | 22563700 | 98, 247 |
| 289 | 1742600 | 100, 202 |
| 290 | 2316700 | 101, 116 |
| 291 | 1742600 | 101, 212 |
| 292 | 54100 | 101, 245 |
| 293 | 440300 | 102, 167 |
| 294 | 38117000 | 102, 222 |
| 295 | 21972700 | 102, 257 |
| 296 | 694800 | 102, 300 |
| 297 | 4181700 | 103, 114 |
| 298 | 7623400 | 103, 178 |
| 299 | 5391500 | 104, 132 |
| 300 | 566600 | 106, 116 |
| 301 | 575300 | 106, 132 |
| 302 | 51800 | 106, 181 |
| 303 | 18537500 | 106, 191 |
| 304 | 42026900 | 106, 214 |
| 305 | 861300 | 106, 236 |
| 306 | 11047800 | 106, 263 |
| 307 | 2639100 | 107, 194 |
| 308 | 7336600 | 108, 124 |
| 309 | 140100 | 108, 242 |
| 310 | 53354900 | 108, 245 |
| 311 | 41200 | 108, 300 |
| 312 | 35119900 | 109, 261 |
| 313 | 5704200 | 110, 114 |
| 314 | 661500 | 110, 128 |
| 315 | 2204100 | 110, 132 |
| 316 | 40021500 | 110, 214 |
| 317 | 10800 | 110, 300 |
| 318 | 40021500 | 111, 212 |
| 319 | 40021500 | 111, 234 |
| 320 | 11047800 | 111, 255 |
| 321 | 175100 | 112, 144 |
| 322 | 1846200 | 114, 121 |
| 323 | 4935800 | 114, 152 |
| 324 | 1562000 | 114, 175 |
| 325 | 1211400 | 114, 193 |
| 326 | 67877900 | 114, 260 |
| 327 | 67542400 | 114, 262 |
| 328 | 1010000 | 114, 266 |
| 329 | 7956000 | 114, 272 |
| 330 | 67041100 | 114, 278 |
| 331 | 335500 | 114, 279 |
| 332 | 276900 | 114, 299 |
| 333 | 6376000 | 116, 150 |
| 334 | 3450700 | 116, 173 |
| 335 | 1138800 | 116, 241 |
| 336 | 66418200 | 116, 256 |
| 337 | 67542400 | 116, 258 |
| 338 | 11006500 | 116, 273 |
| 339 | 11393400 | 116, 276 |
| 340 | 57946300 | 116, 278 |
| 341 | 9374100 | 116, 281 |
| 342 | 2946400 | 116, 299 |
| 343 | 39997700 | 118, 202 |
| 344 | 594900 | 122, 148 |
| 345 | 734200 | 122, 184 |
| 346 | 5767400 | 122, 196 |
| 347 | 44419300 | 122, 198 |
| 348 | 2238000 | 122, 216 |
| 349 | 59085100 | 122, 238 |
| 350 | 3381600 | 122, 242 |
| 351 | 38900 | 122, 244 |
| 352 | 61827100 | 122, 303 |
| 353 | 41200 | 123, 300 |
| 354 | 2260400 | 124, 183 |
| 355 | 1152800 | 124, 214 |
| 356 | 575500 | 124, 222 |
| 357 | 11752600 | 124, 263 |
| 358 | 79600 | 126, 236 |
| 359 | 30700 | 126, 242 |
| 360 | 16600 | 126, 259 |
| 361 | 1677800 | 128, 195 |
| 362 | 151400 | 128, 214 |
| 363 | 5226700 | 128, 226 |
| 364 | 4343700 | 128, 236 |
| 365 | 335500 | 128, 245 |
| 366 | 284500 | 128, 246 |
| 367 | 1010000 | 128, 259 |
| 368 | 2742000 | 128, 261 |
| 369 | 2742000 | 128, 263 |
| 370 | 559300 | 132, 167 |
| 371 | 276900 | 132, 169 |
| 372 | 145300 | 132, 171 |
| 373 | 7600 | 132, 174 |
| 374 | 2933600 | 132, 236 |
| 375 | 82400 | 132, 242 |
| 376 | 6150000 | 132, 245 |
| 377 | 830700 | 132, 251 |
| 378 | 5555100 | 132, 260 |
| 379 | 3422800 | 132, 262 |
| 380 | 100400 | 132, 275 |
| 381 | 8116000 | 132, 276 |
| 382 | 7613500 | 132, 303 |
| 383 | 1677800 | 134, 176 |
| 384 | 2211700 | 134, 181 |
| 385 | 430100 | 134, 184 |
| 386 | 3151200 | 134, 236 |
| 387 | 972400 | 134, 238 |
| 388 | 3422800 | 134, 259 |
| 389 | 1384600 | 136, 283 |
| 390 | 967100 | 138, 198 |
| 391 | 594900 | 138, 234 |
| 392 | 268400 | 140, 247 |
| 393 | 18476700 | 142, 178 |
| 394 | 1110000 | 144, 222 |
| 395 | 114800 | 145, 216 |
| 396 | 515100 | 146, 180 |
| 397 | 51800 | 146, 182 |
| 398 | 515100 | 146, 210 |
| 399 | 6769700 | 146, 256 |
| 400 | 9454200 | 146, 258 |
| 401 | 3889500 | 146, 260 |
| 402 | 3889500 | 146, 262 |
| 403 | 335500 | 146, 267 |
| 404 | 3274500 | 146, 273 |
| 405 | 35700 | 146, 276 |
| 406 | 8444200 | 146, 281 |
| 407 | 1664000 | 148, 236 |
| 408 | 7600 | 150, 202 |
| 409 | 7600 | 152, 178 |
| 410 | 5858200 | 152, 283 |
| 411 | 328600 | 157, 178 |
| 412 | 1110000 | 159, 222 |
| 413 | 430100 | 164, 216 |
| 414 | 51800 | 166, 178 |
| 415 | 372800 | 166, 214 |
| 416 | 28100 | 166, 222 |
| 417 | 967100 | 167, 208 |
| 418 | 16100 | 167, 216 |
| 419 | 13358800 | 167, 263 |
| 420 | 556400 | 170, 214 |
| 421 | 661294800 | 170, 222 |
| 422 | 559300 | 172, 178 |
| 423 | 82400 | 172, 300 |
| 424 | 2743500 | 174, 257 |
| 425 | 1636900 | 176, 222 |
| 426 | 542600 | 177, 214 |
| 427 | 1310200 | 178, 206 |
| 428 | 663030600 | 178, 210 |
| 429 | 1660600 | 178, 218 |
| 430 | 1735800 | 178, 228 |
| 431 | 27077900 | 178, 272 |
| 432 | 153029200 | 178, 273 |
| 433 | 153029200 | 178, 276 |
| 434 | 26788000 | 178, 278 |
| 435 | 507500 | 178, 299 |
| 436 | 566900 | 181, 198 |
| 437 | 2175700 | 181, 216 |
| 438 | 8705100 | 181, 261 |
| 439 | 574500 | 181, 303 |
| 440 | 16100 | 183, 198 |
| 441 | 289900 | 184, 241 |
| 442 | 177900 | 185, 214 |
| 443 | 7600 | 187, 202 |
| 444 | 681568100 | 191, 198 |
| 445 | 1735800 | 191, 216 |
| 446 | 284500 | 193, 196 |
| 447 | 594900 | 194, 196 |
| 448 | 9425300 | 194, 247 |
| 449 | 1840700 | 195, 238 |
| 450 | 801800 | 196, 283 |
| 451 | 2684500 | 197, 257 |
| 452 | 1123700 | 198, 232 |
| 453 | 123600 | 200, 283 |
| 454 | 86473500 | 201, 236 |
| 455 | 145851100 | 201, 245 |
| 456 | 16100 | 202, 218 |
| 457 | 116722500 | 202, 237 |
| 458 | 96027400 | 202, 245 |
| 459 | 335500 | 202, 250 |
| 460 | 222027600 | 202, 253 |
| 461 | 228719800 | 202, 254 |
| 462 | 306486400 | 202, 256 |
| 463 | 45796600 | 202, 278 |
| 464 | 43591300 | 202, 279 |
| 465 | 6150000 | 202, 286 |
| 466 | 59400 | 202, 298 |
| 467 | 335500 | 202, 305 |
| 468 | 1735800 | 204, 222 |
| 469 | 678100 | 208, 222 |
| 470 | 1438500 | 211, 245 |
| 471 | 335500 | 214, 249 |
| 472 | 222027600 | 214, 252 |
| 473 | 147285300 | 214, 267 |
| 474 | 22678800 | 214, 268 |
| 475 | 18000300 | 214, 272 |
| 476 | 85859600 | 214, 273 |
| 477 | 2181400 | 214, 282 |
| 478 | 41200 | 214, 297 |
| 479 | 41600 | 214, 298 |
| 480 | 134500 | 214, 299 |
| 481 | 529900 | 216, 236 |
| 482 | 289900 | 216, 241 |
| 483 | 263300 | 216, 242 |
| 484 | 10298000 | 218, 236 |
| 485 | 23700 | 220, 222 |
| 486 | 6632100 | 220, 283 |
| 487 | 222027600 | 222, 260 |
| 488 | 1685500 | 222, 272 |
| 489 | 96966500 | 222, 273 |
| 490 | 51800 | 222, 276 |
| 491 | 1685500 | 222, 278 |
| 492 | 280345100 | 222, 279 |
| 493 | 515100 | 222, 299 |
| 494 | 900400 | 224, 283 |
| 495 | 105017600 | 225, 236 |
| 496 | 5715300 | 226, 303 |
| 497 | 96914700 | 234, 236 |
| 498 | 56879000 | 234, 244 |
| 499 | 6522700 | 236, 241 |
| 500 | 835500 | 236, 288 |
| 501 | 35196400 | 238, 259 |
| 502 | 426800 | 238, 285 |
| 503 | 21050700 | 241, 242 |
| 504 | 17500 | 241, 300 |
| 505 | 65755900 | 243, 257 |
| 506 | 99300 | 244, 245 |
| 507 | 193371400 | 245, 246 |
| 508 | 96102600 | 245, 263 |
| 509 | 60127900 | 245, 283 |
| 510 | 7512700 | 245, 297 |
| 511 | 8700 | 247, 247 |
| 512 | 19700 | 247, 283 |
| 513 | 1129500 | 249, 283 |
| 514 | 208231000 | 252, 283 |
| 515 | 22472800 | 256, 283 |
| 516 | 54200 | 257, 261 |
| 517 | 95568200 | 257, 262 |
| 518 | 12877400 | 257, 271 |
| 519 | 798500 | 257, 300 |
| 520 | 95622400 | 259, 261 |
| 521 | 2921800 | 261, 283 |
| 522 | 136500 | 261, 300 |
| 523 | 45800 | 263, 283 |
| 524 | 42400 | 263, 300 |
| 525 | 51223000 | 279, 283 |
| 526 | 10800 | 283, 300 |
| 527 | 1389400 | 283, 307 |
| 528 | 10800 | 300, 300 |
| 529 | 2952100 | 257, 753 |
| 530 | 13987800 | 236, 759 |
| 531 | 1335200 | 257, 802 |
| 532 | 880100 | 242, 848 |
| 533 | 518000 | 236, 849 |
| 534 | 13361900 | 257, 884 |
| 535 | 9922700 | 257, 935 |
| 536 | 199652400 | 261, 980 |
| 537 | 217035800 | 257, 997 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `a * b` | -169365199282374489/5000000000 |
| `a * a * b * f` | 746500 |
| `a * c` | 304027896199/2000000000 |
| `a * c * f * h` | -100 |
| `1` | -331777492554121350009099882061267/17504550781250000000000000 |
| `f * h` | -213804024767293587077/8962330000000000 |
| `a * f` | -5202635038198233/40000000 |
| `a * b * h * p` | -100 |
| `a * a * b * p` | 100 |
| `a * a * c * p` | -100 |
| `h * p` | -695437774237/10000000000 |
| `a * p` | 42358640611221103/250000000000000 |
| `a * b * q * u` | 100 |
| `a * c * p * v` | 100 |
| `a * c * q * u` | -200 |
| `p * v` | 26171126716178897/250000000000000 |
| `q * u` | -26171126716178897/250000000000000 |
| `a * b * w` | -100 |
| `a * b * b * w` | 200 |
| `a * c * w` | 100 |
| `a * b * c * w` | -200 |
| `a * c * e * r` | -100 |
| `a * b * c * e` | 100 |
| `w` | -120475811389393/500000000 |
| `b * w` | 4688407822296523/2000000000 |
| `e * r` | 1173412045989393/500000000 |
| `b * e` | -45120529493317/2500000000 |
| `a * b * b` | 100 |
| `a * b * c * h` | 100 |
| `a * b * c` | -200 |
| `b * h` | -199730852783/1000000000 |
| `b` | 14792784019072076090533/5000000000000000 |
| `a * b * b * q` | 100 |
| `a * b * c * q` | -100 |
| `b * q` | 1688116472769/10000000000 |
| `a * c * h * r` | -100 |
| `h * r` | 3877526932637/1000000000 |
| `a * b * b * k` | 100 |
| `a * b * h * j` | -100 |
| `a * b * c * k` | -100 |
| `b * k` | 2580297618596236909467/5000000000000000 |
| `h * j` | -15224874932820727059/4481165000000000 |
| `a * b * b * v` | -100 |
| `b * v` | -281952906759/5000000000 |
| `a * b * v * r` | 100 |
| `u * w` | 107191/1250 |
| `v * r` | 17809/1250 |
| `a * b * r * k` | -100 |
| `a * b * w * j` | 100 |
| `r * k` | -135527118243/1000000000 |
| `c * k` | -192990293/5000000 |
| `w * j` | 54203827118243/1000000000 |
| `c * w` | -1187562301/50000000 |
| `a * b * e * f` | 100 |
| `a * b * h` | 100 |
| `a * c * e * f` | 100 |
| `a * c * h` | -100 |
| `e * f` | 6595055459365191/1250000000 |
| `h` | -4014960899741/1250000000 |
| `a * b * v` | -97/5 |
| `a * b * q` | 100 |
| `a * b * e * u` | -100 |
| `a * c * e * p` | -100 |
| `a * c * e * u` | 100 |
| `e * p` | -411593046369/2500000000 |
| `v` | -12665982179/2500000000 |
| `q` | 89017936543/500000000 |
| `e * u` | -15708719033/500000000 |
| `a * c * q * r` | 100 |
| `p * w` | 62198903477/2000000000 |
| `q * r` | -262198903477/2000000000 |
| `a * b * p * k` | -100 |
| `a * c * p * k` | 100 |
| `p * k` | -14563128838757573/500000000000000 |
| `q * j` | 64563128838757573/500000000000000 |
| `a * c * p` | 100 |
| `p` | 37790857089007573/500000000000000 |
| `a * b * u` | -100 |
| `a * c * u` | 100 |
| `u` | 45102729177/10000000000 |
| `a * b * k` | 448542812899/5000000000 |
| `k` | -23941612242757/500000000 |
| `a * b * f` | -154800 |
| `a * b * e` | -100 |
| `a * c * f` | -200 |
| `f` | 3215202287628139/250000000 |
| `e` | -3314970536033447/2000000000 |
| `a * a * b * b` | -100 |
| `a * a * b` | 175000 |
| `a` | 54728218714392077/1250000000 |
| `b * c * e` | 100 |
| `a * a * b * c` | 100 |
| `a * a * c` | -100 |
| `a * a * f` | -77400 |
| `c` | -682751567771/125000000 |
| `a * e * f` | -129100 |
| `b * e * f * k` | -103600 |
| `a * b * f * k` | 100 |
| `a * b * j` | 176400 |
| `a * f * k` | -621802685893089/5000000000 |
| `a * j` | 231719865092799/625000000 |
| `f * k` | 340807462454833351434387279/4481165000000000000000 |
| `j` | -270823248089731344542387279/4481165000000000000000 |
| `b * c * e * h` | 100 |
| `a * h * p` | -100 |
| `c * q` | -400943521/5000000 |
| `c * h` | 188534359/10000 |
| `b * e * h * u` | 100 |
| `a * h * u` | 100 |
| `a * e * u` | -2577718391/250000000 |
| `h * u` | -78712345869/5000000000 |
| `b * e * u * k` | -100 |
| `b * e * q * j` | 100 |
| `a * b * u * k` | -100 |
| `a * b * v * j` | 100 |
| `a * u * k` | -667/5 |
| `a * p * k` | 2114308019/500000000 |
| `a * v * j` | 667/5 |
| `a * p * v` | -114 |
| `a * q * j` | -2114308019/500000000 |
| `u * k` | 13841218111/400000000 |
| `v * j` | -53841218111/400000000 |
| `c * e` | 1785252126891/10000000000 |
| `b * c * e * e` | -100 |
| `a * a` | 38000 |
| `b * b * k` | -972400 |
| `b * q * j` | 100 |
| `b * b * q` | -100 |
| `a * b * f * q` | -100 |
| `b * b * h * w` | -100 |
| `b * f * h * q` | 100 |
| `f * q` | -28241529819807573/500000000000000 |
| `a * a * b * j` | -850300 |
| `b * b * h * k` | -100 |
| `b * h * w` | 100 |
| `b * e * h * r` | -100 |
| `a * b * f * w` | -100 |
| `a * b * r` | 100 |
| `f * w` | 426936897587/625000 |
| `r` | -168519476087/625000 |
| `b * h * r * k` | 100 |
| `b * h * w * j` | -100 |
| `b * h * k` | -100 |
| `e * j` | -9485796862403/500000000 |
| `b * h * p * w` | 100 |
| `b * h * u * k` | 100 |
| `b * f * h` | -100 |
| `b * h * q` | -200 |
| `b * h * v` | 100 |
| `b * h * j` | 200 |
| `b * c * q * w` | -100 |
| `b * e * f * q` | -100 |
| `a * e * f * p` | -100 |
| `a * h * p * r` | 100 |
| `a * p * u * w` | 100 |
| `b * q * u * k` | 100 |
| `b * q * v * j` | -100 |
| `a * p * u * k` | 100 |
| `a * p * v * j` | -100 |
| `b * c * q * k` | 100 |
| `b * b * e * q` | -100 |
| `a * f * h * p` | 100 |
| `b * b * q * w` | 100 |
| `a * h * p * j` | 100 |
| `b * f * q * w` | 100 |
| `b * q * r` | 3524689131/2500000000 |
| `b * c * q` | 100 |
| `a * p * r` | -100 |
| `c * v` | -128271/10000 |
| `b * f * q * v` | 100 |
| `b * q * u` | -100 |
| `a * p * u` | -100 |
| `a * e * p * u` | 100 |
| `b * e * q * r` | 100 |
| `a * e * p * r` | 100 |
| `b * q * k` | -100 |
| `b * h * q * u` | -100 |
| `a * h * p * u` | -200 |
| `a * e * p` | 13152718391/250000000 |
| `a * f * p` | 100 |
| `b * c * v * w` | 100 |
| `a * u` | -10559846360621103/250000000000000 |
| `b * v * k` | 100 |
| `a * e * u * j` | -100 |
| `b * f * v * w` | -100 |
| `b * b * v * w` | 100 |
| `b * u * w` | 100 |
| `a * f * v * r` | -100 |
| `a * u * r` | 100 |
| `a * r` | 508215713/2000 |
| `b * b * e * k` | 100 |
| `b * w * k` | 100 |
| `b * c * w * k` | 100 |
| `b * e * r * k` | 100 |
| `a * h * u * j` | 100 |
| `b * p * w * k` | 200 |
| `b * b * w * k` | -200 |
| `b * q * r * k` | -100 |
| `c * e * e * j` | -100 |
| `a * k` | 110100 |
| `a * e * j` | -423/10 |
| `c * e * p * k` | -100 |
| `c * e * q * j` | 100 |
| `c * e * w` | -200 |
| `c * e * e * r` | 100 |
| `a * w` | -100 |
| `a * h * r` | -100 |
| `a * e * r` | 100 |
| `c * e * h * u` | -100 |
| `a * c * h * u` | 100 |
| `c * q * r` | 100 |
| `a * f * q * r` | 100 |
| `c * h * u` | -100 |
| `a * f * v` | 100 |
| `a * f * h` | 100 |
| `a * e * f * u` | -100 |
| `c * p * v` | -100 |
| `c * e * p` | 100 |
| `c * q * u` | 200 |
| `a * f * q * u` | 100 |
| `a * f * q` | -4885691981/500000000 |
| `c * h * p * w` | -100 |
| `c * h * q * r` | 100 |
| `a * c * r` | -232/5 |
| `f * v` | -45102729177/10000000000 |
| `c * f * q * v` | -100 |
| `a * c * f * q` | 100 |
| `c * q * v` | -100 |
| `c * h * q * u` | -100 |
| `c * h * q` | 100 |
| `c * e * q * u` | 100 |
| `a * a * r` | -19500 |
| `a * e * f * r` | 100 |
| `a * h * j` | -100 |
| `e * f * h * j` | -103600 |
| `e * f * j` | 150365587/2500 |
| `a * f * f * k` | -736000 |
| `e * f * u * w` | 100 |
| `a * f * h * r` | -100 |
| `e * f * k` | 10700 |
| `e * e * f * j` | 100 |
| `e * f * f * w` | 100 |
| `e * f * r` | -74606221/10 |
| `b * e * f` | 58100 |
| `c * e * f` | -100 |
| `e * e * f * r` | -41200 |
| `a * e * f * f` | 207500 |
| `a * q * r` | -100 |
| `e * f * p * w` | -100 |
| `a * f * f * q` | -100 |
| `e * f * p * k` | 100 |
| `e * f * v * j` | -100 |
| `a * f * f` | 391500 |
| `a * e` | 20100 |
| `e * e * f` | 29200 |
| `f * h * v` | -100 |
| `f * v * k` | 100 |
| `e * u * j` | 100 |
| `b * e * w` | 100 |
| `b * e * e * r` | -100 |
| `c * q * w` | 100 |
| `c * e * q * r` | -100 |
| `f * v * w` | -100 |
| `f * h * w` | 25700 |
| `e * u * r` | -100 |
| `a * h * u * r` | 100 |
| `q * w` | -100 |
| `e * p * r` | 100 |
| `e * q * r` | 100 |
| `b * e * k` | 32100 |
| `b * e * e * j` | 100 |
| `h * p * k` | -100 |
| `h * u * k` | 100 |
| `p * w * k` | -100 |
| `q * r * k` | 200 |
| `e * p * w * j` | 200 |
| `b * e * w * j` | -200 |
| `e * q * r * j` | -100 |
| `f * h * u * w` | -100 |
| `b * u * k` | 100 |
| `f * v * r * k` | 100 |
| `f * v * w * j` | -100 |
| `u * r * k` | -617/5 |
| `u * w * j` | 100 |
| `c * f * v` | 100 |
| `c * u` | -100 |
| `f * f * q * v` | 100 |
| `f * p * v` | -100 |
| `f * q * u` | -100 |
| `p * u` | 100 |
| `h * u * r` | 100 |
| `f * h * v * j` | 100 |
| `h * u * j` | -100 |
| `f * p * v * k` | -100 |
| `q * u * j` | -100 |
| `f * p * v * w` | 100 |
| `f * q * v * r` | -100 |
| `p * u * w` | -100 |
| `q * u * r` | 100 |
| `a * q * u * r` | -100 |
| `f * f * h * k` | -114300 |
| `f * h * k` | 71300 |
| `f * h * j` | 26871413/2500 |
| `h * r * j` | -48967828039/500000000 |
| `f * f * k` | 142800 |
| `f * j` | -6300 |
| `c * e * j` | 100 |
| `f * q * u * k` | 100 |
| `p * v * j` | 100 |
| `h * q * u * j` | 100 |
| `h * u * r * k` | -100 |
| `h * q * j` | 100 |
| `c * h * q * j` | -100 |
| `h * p * v * j` | -100 |
| `c * p * w * k` | -100 |
| `e * p * r * k` | -100 |
| `q * w * j` | -100 |
| `c * q * w * j` | 200 |
| `b * u * w * k` | -100 |
| `b * v * w * j` | 100 |
| `b * c * e * v` | -100 |
| `b * e * u * w` | 100 |
| `b * e * v * r` | 100 |
| `c * e * e * p` | 100 |
| `c * e * q` | -100 |
| `c * e * e * u` | -100 |
| `c * e * v` | 100 |
| `b * e * p` | -100 |
| `c * r` | 34113707/5000000 |
| `b * r` | 22 |
| `c * q * j` | -100 |
| `c * r * k` | 197886293/5000000 |
| `b * r * k` | -308524689131/2500000000 |
| `b * f * k` | -1009100 |
| `b * w * j` | -522100 |
| `b * f * w` | -6727100 |
| `b * j` | 223400 |
| `c * f * q * k` | 100 |
| `b * f * q * k` | -100 |
| `c * q * r * k` | -100 |
| `c * f * q * w` | -100 |
| `b * q * w * j` | -100 |
| `b * v * j` | -100 |
| `c * h * u * w` | 100 |
| `b * v * w` | -200 |
| `c * h * p * k` | 100 |
| `b * b` | 545600 |
| `b * e * p * w` | -100 |
| `h * w` | -4000 |
| `e * h * r` | -37300 |
| `h * r * k` | 100 |
| `h * w * j` | -100 |
| `h * k` | -11200 |
| `e * h * j` | 32300 |
| `h * q` | -100 |
| `v * w` | 100 |
| `e * u * w` | -100 |
| `e * v * r` | -100 |
| `e * e * u * r` | 100 |
| `e * p * w` | 100 |
| `e * e * p * r` | -100 |
| `e * p * j` | -100 |
| `f * h * h` | -28100 |
| `f * h * r` | 101567828039/500000000 |
| `f * h * w * j` | 100 |
| `f * f * h * w` | -41300 |
| `f * q * k` | -100 |
| `b * f * w * k` | 100 |
| `p * r * k` | 249274689131/2500000000 |
| `q * r * j` | -249274689131/2500000000 |
| `f * f * w` | 24000 |
| `f * r` | 774500 |
| `b * f` | 1067500 |
| `f * r * k` | 36443542661/500000000 |
| `r * j` | 27060956457339/500000000 |
| `c * h * r` | -100 |
| `h * v * r * j` | 100 |
| `f * q * r` | -17/10 |
| `v * r * k` | -100 |
| `e * u * r * k` | 100 |
| `v * w * j` | 100 |
| `e * u * w * j` | -100 |
| `f * w * j` | 26/5 |
| `e * f * h` | 49600 |
| `e * h` | 11000 |
| `f * q * w` | 100 |
| `c * f * h * w` | 100 |
| `e * r * j` | 1317/10 |
| `c * f * h` | -60100 |
| `c * h * h` | -16100 |
| `c * f * h * k` | -100 |
| `c * f * h * h` | 51800 |
| `p * r` | 17/10 |
| `f * f * h` | 82400 |
| `f * v * r` | -117/5 |
| `u * r` | 117/5 |
| `a * q * u` | 14 |
| `e * p * v` | 11847281609/250000000 |
| `e * q * u` | -11847281609/250000000 |
| `v * r * j` | 117/5 |
| `e * u * k` | 577/10 |
| `e * v * j` | -577/10 |
| `c * f` | 17500 |
| `f * f` | -88500 |
| `h * h` | 8700 |
| `e * k` | -3400 |
| `e * f * f` | -21600 |
| `a * r * j` | -2610316/5 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `a * b` | -169183585943256648671231/5000000000000000 | 138205891979/1000000000000 | 0 |
| `a` | 17437682178422958732151/200000000000000000000 | 287233/1000000 | 5008677765154961705511928183/200000000000000000000000000 |
| `b` | -27923199627285279308741/625000000000000000000 | 481163/1000000 | 0 |
| `1` | -16392074605136454325996588990829613237769/1120291250000000000000000000000000 | 1 | -16392074605136454325996588990829613237769/1120291250000000000000000000000000 |
| `a * a * b * f` | 746500 | 2715572720253796547549/250000000000000000000000 | 4054350071338918245490657/500000000000000000000 |
| `a * a * b` | 1192037/10000 | 39697292970804107/1000000000000000000 | 47320642021038415295959/10000000000000000000000 |
| `a * a * f` | 124131/2000 | 5643768785741623/250000000000000000 | 700566663142893404613/500000000000000000000 |
| `a * a` | 14290079669/2500000000 | 82502796289/1000000000000 | 1178971531885087548341/2500000000000000000000 |
| `a * b * f` | 1346119/10000 | 9454250452607453/250000000000000000 | 12726546165013492024907/2500000000000000000000 |
| `a * f` | -650825668396087904862009/5000000000000000 | 19648747831/250000000000 | 0 |
| `b * f` | -6260240907706277/2500000000 | 32914917341/250000000000 | 0 |
| `f` | -1798878407558131614810651753/112029125000000000000000000 | 68407/250000 | 0 |
| `a * c` | -345660877/5000000000 | 32887891267/250000000000 | 0 |
| `c` | 140684332933725522437/5000000000000000000 | 114499/250000 | 16108215436578638593514063/1250000000000000000000000 |
| `a * c * f * h` | -100 | 943219458521208433257/62500000000000000000000 | 0 |
| `a * c * f` | -472489/2000 | 2249761977901669/62500000000000000 | 0 |
| `a * c * h` | -1813807/10000 | 13788347077363551/250000000000000000 | 0 |
| `a * f * h` | -2459/2000 | 8237796474390243/250000000000000000 | 0 |
| `a * h` | -1755357760497/10000000000 | 120423296949/1000000000000 | 0 |
| `c * f * h` | 108637/2500 | 3283812996839529/62500000000000000 | 356743592537655911973/156250000000000000000 |
| `c * f` | 88724003341/1250000000 | 7832533093/62500000000 | 694933692311825063713/78125000000000000000 |
| `c * h` | 1128044053/12500000 | 48004049247/250000000000 | 54150682272997478091/3125000000000000000 |
| `f * h` | 80814340082042638976393/448116500000000000000 | 28679839971/250000000000 | 2317742340914953896641478486804603/112029125000000000000000000000000 |
| `h` | 699846535938095081784424029/89623300000000000000000000 | 419253/1000000 | 293412759731654177323365127430337/89623300000000000000000000000000 |
| `a * b * h * p` | -100 | 32026210925462189223579/1000000000000000000000000 | 0 |
| `a * b * h` | 823219/10000 | 57943234829871687/1000000000000000000 | 47699971833412140300453/10000000000000000000000 |
| `a * b * p` | -116793/1250 | 76388745996956943/1000000000000000000 | 0 |
| `a * h * p` | 189077/10000 | 66560003419760433/1000000000000000000 | 12584965766598043390341/10000000000000000000000 |
| `a * p` | 82276122883109489/500000000000000 | 158758562061/1000000000000 | 13062038960876600058064496829/500000000000000000000000000 |
| `b * h * p` | 341787/10000 | 111499064959326363/1000000000000000000 | 38108930915253279630681/10000000000000000000000 |
| `b * h` | -478904099749/5000000000 | 201729031239/1000000000000 | 0 |
| `b * p` | 501060005931/10000000000 | 265946969871/1000000000000 | 133255390300894738304901/10000000000000000000000 |
| `h * p` | -1364590114221/10000000000 | 231728260401/1000000000000 | 0 |
| `p` | 121931344406315762229279/2500000000000000000000 | 552717/1000000 | 67393526886225629152080401043/2500000000000000000000000000 |
| `a * a * b * p` | 100 | 21941368678943933608719/1000000000000000000000000 | 21941368678943933608719/10000000000000000000000 |
| `a * a * p` | -438237/10000 | 45600698056467213/1000000000000000000 | 0 |
| `a * a * c * p` | -100 | 5221234326767439421287/250000000000000000000000 | 0 |
| `a * a * c` | -1135981/10000 | 9446487672294211/250000000000000000 | 0 |
| `a * c * p` | 1743567/10000 | 18177696597422439/250000000000000000 | 31694031923278049699913/2500000000000000000000 |
| `c * p` | -85726029713/2000000000 | 63285543783/250000000000 | 0 |
| `a * b * q * u` | 100 | 2447733804931427404059/125000000000000000000000 | 2447733804931427404059/1250000000000000000000 |
| `a * b * q` | 91599/2000 | 35781920051039037/500000000000000000 | 3277588094755124750163/1000000000000000000000 |
| `a * b * u` | -1550363/10000 | 9454250452607453/250000000000000000 | 0 |
| `a * q * u` | -619489/5000 | 5087119759689393/125000000000000000 | 0 |
| `a * q` | -1855910597123393/100000000000000 | 74365485399/500000000000 | 0 |
| `a * u` | 1064045612807/10000000000 | 19648747831/250000000000 | 20907163926726607071617/2500000000000000000000 |
| `b * q * u` | -915849/10000 | 8521770844336923/125000000000000000 | 0 |
| `b * q` | 101380159426886109/2500000000000000 | 124574544189/500000000000 | 12629387150412488500290770601/1250000000000000000000000000 |
| `b * u` | 213289260673/2500000000 | 32914917341/250000000000 | 7020398384774797030493/625000000000000000000 |
| `q * u` | -132323431793/10000000000 | 17710777521/125000000000 | 0 |
| `q` | 17391048253748561862557/250000000000000000000 | 258903/500000 | 4502594566040263911901594971/125000000000000000000000000 |
| `u` | 143198603780128379/10000000000000000 | 68407/250000 | 9795786888787242022253/2500000000000000000000 |
| `a * c * p * v` | 100 | 631256869738689039153/25000000000000000000000 | 631256869738689039153/250000000000000000000 |
| `a * c * v` | 59937/2500 | 1142097800029109/25000000000000000 | 68453915840344706133/62500000000000000000 |
| `a * p * v` | -1077033/10000 | 5513208584692347/100000000000000000 | 0 |
| `a * v` | 563572750541/10000000000 | 9974740391/100000000000 | 5621491878088279801531/1000000000000000000000 |
| `c * p * v` | -896233/10000 | 2197717078952241/25000000000000000 | 0 |
| `c * v` | -1711833289/400000000 | 3976206773/25000000000 | 0 |
| `p * v` | 18488200517/625000000 | 19194203259/100000000000 | 354866278616446884903/62500000000000000000 |
| `v` | -69580843563786763/10000000000000000 | 34727/100000 | 0 |
| `a * c * q * u` | -200 | 582470125364675809107/31250000000000000000000 | 0 |
| `a * c * q` | 17751/250 | 8514773712700101/125000000000000000 | 151145748174139492851/31250000000000000000 |
| `a * c * u` | 363861/2500 | 2249761977901669/62500000000000000 | 818600643041279184009/156250000000000000000 |
| `c * q * u` | 657743/5000 | 2027866315376979/31250000000000000 | 1333814873875000298397/156250000000000000000 |
| `c * q` | 113150076053/5000000000 | 29644134597/125000000000 | 3354236084175918505641/625000000000000000000 |
| `c * u` | -133444582769/1250000000 | 7832533093/62500000000 | 0 |
| `a * b * w` | -300241/2000 | 5373306874251541/100000000000000000 | 0 |
| `a * w` | -610428789097/10000000000 | 11167331807/100000000000 | 0 |
| `b * w` | 75350707617/10000000000 | 18707136277/100000000000 | 1409595955959600921909/1000000000000000000000 |
| `w` | -206609746117501/10000000000000000 | 38879/100000 | 0 |
| `a * b * b * w` | 200 | 2585436455535494222183/100000000000000000000000 | 2585436455535494222183/500000000000000000000 |
| `a * b * b` | 1865503/10000 | 66499561602291577/1000000000000000000 | 124055131667759743768231/10000000000000000000000 |
| `b * b * w` | -887203/10000 | 9001181812450151/100000000000000000 | 0 |
| `b * b` | -1115331426933/10000000000 | 231517832569/1000000000000 | 0 |
| `a * c * w` | 396233/5000 | 1278648324569693/25000000000000000 | 506642661589223166469/125000000000000000000 |
| `c * w` | -27334741387/2500000000 | 4451606621/25000000000 | 0 |
| `a * b * c * w` | -200 | 615238263794927192959/25000000000000000000000 | 0 |
| `a * b * c` | -1337363/5000 | 15824436425703521/250000000000000000 | 0 |
| `b * c * w` | 732799/10000 | 2141948396580223/25000000000000000 | 1569617643065590834177/250000000000000000000 |
| `b * c` | 411485561817/10000000000 | 55092682337/250000000000 | 22669843343445957526329/2500000000000000000000 |
| `a * c * e * r` | -100 | 2739113011946101715771/250000000000000000000000 | 0 |
| `a * c * e` | -430951/10000 | 9446487672294211/250000000000000000 | 0 |
| `a * c * r` | -1033979/10000 | 9536205839670587/250000000000000000 | 0 |
| `a * e * r` | 504523/5000 | 23922593314754729/1000000000000000000 | 12069498546940000139267/5000000000000000000000 |
| `a * e` | 19042250789476571/250000000000000 | 82502796289/1000000000000 | 1571038937768234962151245019/250000000000000000000000000 |
| `a * r` | -755821148501/5000000000 | 83286367913/1000000000000 | 0 |
| `c * e * r` | -673/625 | 9536205839670587/250000000000000000 | 0 |
| `c * e` | 797083700413/5000000000 | 32887891267/250000000000 | 26214402069880746993271/1250000000000000000000 |
| `c * r` | -141033931217117/5000000000000 | 33200244539/250000000000 | 0 |
| `e * r` | 5653908299/156250000 | 83286367913/1000000000000 | 470893486736878009987/156250000000000000000 |
| `e` | 467720937150212323871/15625000000000000000 | 287233/1000000 | 134344887940466936422438943/15625000000000000000000000 |
| `r` | -50672088141332049061687/1250000000000000000000 | 289961/1000000 | 0 |
| `a * b * c * e` | 100 | 4545300347864099447393/250000000000000000000000 | 4545300347864099447393/2500000000000000000000 |
| `a * b * e` | -250461/10000 | 39697292970804107/1000000000000000000 | 0 |
| `b * c * e` | 983243/10000 | 15824436425703521/250000000000000000 | 15559266344518007098603/2500000000000000000000 |
| `b * e` | 23832917353/1250000000 | 138205891979/1000000000000 | 3293849601233152611587/1250000000000000000000 |
| `a * b * c * h` | 100 | 6634442444785478289813/250000000000000000000000 | 6634442444785478289813/2500000000000000000000 |
| `b * c * h` | 103767/5000 | 23097772347834261/250000000000000000 | 2396786543217717761187/1250000000000000000000 |
| `a * b * b * q` | 100 | 17216935997518096160031/500000000000000000000000 | 17216935997518096160031/5000000000000000000000 |
| `b * b * q` | -277223/5000 | 59940661405611807/500000000000000000 | 0 |
| `a * b * c * q` | -100 | 4096994063923918697463/125000000000000000000000 | 0 |
| `b * c * q` | 101181/1000 | 14263660735096311/125000000000000000 | 1443211456837779843291/125000000000000000000 |
| `a * c * h * r` | -100 | 3998082906899412611511/250000000000000000000000 | 0 |
| `a * h * r` | -1509791/10000 | 34918059606628989/1000000000000000000 | 0 |
| `c * h * r` | -61827/625 | 13919302123709367/250000000000000000 | 0 |
| `h * r` | 4874523040705667/100000000000000 | 121567019133/1000000000000 | 592581235753715158010526711/100000000000000000000000000 |
| `a * b * b * k` | 100 | 29184596100836102106413/1000000000000000000000000 | 29184596100836102106413/10000000000000000000000 |
| `a * b * k` | -89818187101/5000000000 | 60654281606931751/1000000000000000000 | 0 |
| `a * k` | 12210493658703631/200000000000000 | 126057659477/1000000000000 | 1539226251674930173861460987/200000000000000000000000000 |
| `b * b * k` | -9725264321/10000 | 101605999661724461/1000000000000000000 | 0 |
| `b * k` | 309658173044613891/2500000000000000 | 211167524647/1000000000000 | 65389749888543494858341071477/2500000000000000000000000000 |
| `k` | -12877460866250944540066055973/2240582500000000000000000000 | 438869/1000000 | 0 |
| `a * b * h * j` | -100 | 22810339425771097406229/1000000000000000000000000 | 0 |
| `a * b * j` | -151529/5000 | 54407098877696993/1000000000000000000 | 0 |
| `a * h * j` | -190063/2500 | 47406678040021983/1000000000000000000 | 0 |
| `a * j` | 7335861460588767/100000000000000 | 113074153411/1000000000000 | 829496324196456770141334237/100000000000000000000000000 |
| `b * h * j` | 1450679/10000 | 79414062540763413/1000000000000000000 | 115204312832572127207427/10000000000000000000000 |
| `b * j` | -72966800273/5000000000 | 189417994721/1000000000000 | 0 |
| `h * j` | -46476218812950553076393/448116500000000000000 | 165046070751/1000000000000 | 0 |
| `j` | 738661263366796962096117227/8962330000000000000000000 | 393667/1000000 | 290786563565816859677492180401409/8962330000000000000000000000000 |
| `a * b * c * k` | -100 | 6944854589712078557749/250000000000000000000000 | 0 |
| `a * c * k` | 135981/10000 | 14433475952457023/250000000000000000 | 1962678493491058444563/2500000000000000000000 |
| `b * c * k` | 228161/5000 | 24178470404556853/250000000000000000 | 5516583985974096137333/1250000000000000000000 |
| `c * k` | -125830121680073/5000000000000 | 50250061631/250000000000 | 0 |
| `a * b * b * v` | -100 | 2309330275762779594479/100000000000000000000000 | 0 |
| `a * b * v` | 393771/5000 | 4799476010754733/100000000000000000 | 1889894468230901968143/500000000000000000000 |
| `b * b * v` | 341787/10000 | 8039919771623663/100000000000000000 | 2747940058983936905781/1000000000000000000000 |
| `b * v` | -151766164471/5000000000 | 16709347501/100000000000 | 0 |
| `a * b * v * r` | 100 | 1391660863554453135413/100000000000000000000000 | 1391660863554453135413/1000000000000000000000 |
| `a * b * r` | 466303/5000 | 40074318644122819/1000000000000000000 | 18686775006710402868157/5000000000000000000000 |
| `a * v * r` | -41507/2000 | 2892285698514751/100000000000000000 | 0 |
| `b * v * r` | 103767/5000 | 4845059110737461/100000000000000000 | 502757248743894115587/500000000000000000000 |
| `b * r` | -3886316176974519/625000000000000 | 139518504643/1000000000000 | 0 |
| `v * r` | -3068727017/400000000 | 10069475647/100000000000 | 0 |
| `u * w` | 1190809777177/10000000000 | 2659595753/25000000000 | 3167072626010825529281/250000000000000000000 |
| `a * b * r * k` | -100 | 17587376149027537451711/1000000000000000000000000 | 0 |
| `a * r * k` | -103767/10000 | 36551804999610397/1000000000000000000 | 0 |
| `b * r * k` | -191971689131/2500000000 | 61230346614168767/1000000000000000000 | 0 |
| `r * k` | -137302270176418379/2500000000000000 | 127254894109/1000000000000 | 0 |
| `a * b * w * j` | 100 | 2115293597265981390847/100000000000000000000000 | 2115293597265981390847/1000000000000000000000 |
| `a * w * j` | 103767/10000 | 4396210010466269/100000000000000000 | 456181524156053335323/1000000000000000000000 |
| `b * w * j` | -326331582/625 | 7364382216757759/100000000000000000 | 0 |
| `w * j` | 347724090569/10000000000 | 15305379293/100000000000 | 5322049095472029187717/1000000000000000000000 |
| `a * b * e * f` | 100 | 2715572720253796547549/250000000000000000000000 | 2715572720253796547549/2500000000000000000000 |
| `a * e * f` | 383119/2000 | 5643768785741623/250000000000000000 | 2162235053424544862137/500000000000000000000 |
| `b * e * f` | -85621/2500 | 9454250452607453/250000000000000000 | 0 |
| `e * f` | 69577750911/2000000000 | 19648747831/250000000000 | 1367115682298369524041/500000000000000000000 |
| `a * c * e * f` | 100 | 646205882198630091877/62500000000000000000000 | 646205882198630091877/625000000000000000000 |
| `c * e * f` | -896233/10000 | 2249761977901669/62500000000000000 | 0 |
| `a * b * e * u` | -100 | 2715572720253796547549/250000000000000000000000 | 0 |
| `a * e * u` | -5386568391/250000000 | 5643768785741623/250000000000000000 | 0 |
| `b * e * u` | 361403/10000 | 9454250452607453/250000000000000000 | 3416794476323691336559/2500000000000000000000 |
| `e * u` | -1842029547380089/31250000000000 | 19648747831/250000000000 | 0 |
| `a * c * e * p` | -100 | 5221234326767439421287/250000000000000000000000 | 0 |
| `a * e * p` | 12165218391/250000000 | 45600698056467213/1000000000000000000 | 554742450638972896076114283/250000000000000000000000000 |
| `c * e * p` | 135659/2500 | 18177696597422439/250000000000000000 | 2465968142709730652301/625000000000000000000 |
| `e * p` | -1419803674011327/25000000000000 | 158758562061/1000000000000 | 0 |
| `a * c * e * u` | 100 | 646205882198630091877/62500000000000000000000 | 646205882198630091877/625000000000000000000 |
| `c * e * u` | -569979/10000 | 2249761977901669/62500000000000000 | 0 |
| `a * c * q * r` | 100 | 2468952300508233986061/125000000000000000000000 | 2468952300508233986061/1250000000000000000000 |
| `a * q * r` | -250461/10000 | 21563090511779439/500000000000000000 | 0 |
| `c * q * r` | 63726/625 | 8595642911880717/125000000000000000 | 273882970101255285771/39062500000000000000 |
| `q * r` | -6078486651944037/250000000000000 | 75071772783/500000000000 | 0 |
| `p * w` | -235753942763/5000000000 | 21489084243/100000000000 | 0 |
| `a * b * p * k` | -100 | 33524652566938496617467/1000000000000000000000000 | 0 |
| `a * p * k` | 29214508019/500000000 | 69674211373149009/1000000000000000000 | 2035497806878362724712403171/500000000000000000000000000 |
| `b * p * k` | 787341/10000 | 116715880720315899/1000000000000000000 | 91895198242214240234559/10000000000000000000000 |
| `p * k` | -158632743008113891/2500000000000000 | 242570357073/1000000000000 | 0 |
| `a * c * p * k` | 100 | 7977627528014188381491/250000000000000000000000 | 7977627528014188381491/2500000000000000000000 |
| `c * p * k` | 135193/10000 | 27774063314501427/250000000000000000 | 3754858941677391420411/2500000000000000000000 |
| `q * j` | 74106908856863891/2500000000000000 | 101921567301/500000000000 | 7553092298523926042353228191/1250000000000000000000000000 |
| `a * a * b * b` | -100 | 19100868577711016536441/1000000000000000000000000 | 0 |
| `a * a * b * c` | 100 | 4545300347864099447393/250000000000000000000000 | 4545300347864099447393/2500000000000000000000 |
| `b * e * f * k` | -103600 | 4149177441885380290657/250000000000000000000000 | 0 |
| `b * e * k` | -347533/5000 | 60654281606931751/1000000000000000000 | 0 |
| `b * f * k` | -5099033913/5000 | 14445336858527329/250000000000000000 | 0 |
| `e * f * k` | -16429/625 | 8623226311843139/250000000000000000 | 0 |
| `e * k` | -432783550633/5000000000 | 126057659477/1000000000000 | 0 |
| `f * k` | -15537997783542287525493/448116500000000000000 | 30021711683/250000000000 | 0 |
| `a * b * f * k` | 100 | 4149177441885380290657/250000000000000000000000 | 4149177441885380290657/2500000000000000000000 |
| `a * f * k` | -2912933522393089/5000000000 | 8623226311843139/250000000000000000 | 0 |
| `b * c * e * h` | 100 | 6634442444785478289813/250000000000000000000000 | 6634442444785478289813/2500000000000000000000 |
| `b * e * h` | -16067/2500 | 57943234829871687/1000000000000000000 | 0 |
| `e * h` | -33299692861/1250000000 | 120423296949/1000000000000 | 0 |
| `b * e * h * u` | 100 | 3963722865007032492609/250000000000000000000000 | 3963722865007032492609/2500000000000000000000 |
| `b * h * u` | 550363/10000 | 13799677839966273/250000000000000000 | 7594832095037357907099/2500000000000000000000 |
| `e * h * u` | -438237/10000 | 8237796474390243/250000000000000000 | 0 |
| `h * u` | 24365192997/10000000000 | 28679839971/250000000000 | 698789836016489883087/2500000000000000000000 |
| `a * h * u` | 140724/625 | 8237796474390243/250000000000000000 | 289813917765523138983/39062500000000000000 |
| `b * e * u * k` | -100 | 4149177441885380290657/250000000000000000000000 | 0 |
| `b * u * k` | 521097/5000 | 14445336858527329/250000000000000000 | 7527421700968015559913/1250000000000000000000 |
| `e * u * k` | 147909/1250 | 8623226311843139/250000000000000000 | 1275452780558406846351/312500000000000000000 |
| `u * k` | -197958444361/10000000000 | 30021711683/250000000000 | 0 |
| `b * e * q * j` | 100 | 14086161120732384578679/500000000000000000000000 | 14086161120732384578679/5000000000000000000000 |
| `b * e * q` | 8378/125 | 35781920051039037/500000000000000000 | 149890463093802525993/31250000000000000000 |
| `b * e * j` | -569039/10000 | 54407098877696993/1000000000000000000 | 0 |
| `b * q * j` | 41119/2500 | 49040887087251063/500000000000000000 | 2016512236140676459497/1250000000000000000000 |
| `e * q * j` | -16067/2500 | 29275237540568133/500000000000000000 | 0 |
| `e * q` | -5247993046071103/250000000000000 | 74365485399/500000000000 | 0 |
| `e * j` | -1305152819851/10000000000 | 113074153411/1000000000000 | 0 |
| `a * b * u * k` | -100 | 4149177441885380290657/250000000000000000000000 | 0 |
| `a * u * k` | -1198019/10000 | 8623226311843139/250000000000000000 | 0 |
| `a * b * v * j` | 100 | 1889395322725783475911/100000000000000000000000 | 1889395322725783475911/1000000000000000000000 |
| `a * v * j` | 1198019/10000 | 3926726125503797/100000000000000000 | 4704292506149933378143/1000000000000000000000 |
| `b * v * j` | -282607/5000 | 6577918702676167/100000000000000000 | 0 |
| `v * j` | -541632839/25000000 | 13670873909/100000000000 | 0 |
| `a * q * j` | -2114308019/500000000 | 29275237540568133/500000000000000000 | 0 |
| `b * c * e * e` | -100 | 4545300347864099447393/250000000000000000000000 | 0 |
| `b * e * e` | -386503/5000 | 39697292970804107/1000000000000000000 | 0 |
| `c * e * e` | 16451/625 | 9446487672294211/250000000000000000 | 155404168696912065161/156250000000000000000 |
| `e * e` | 4388062709/10000000000 | 82502796289/1000000000000 | 362027443783984486901/10000000000000000000000 |
| `a * b * f * q` | -100 | 2447733804931427404059/125000000000000000000000 | 0 |
| `a * f * q` | 26586258019/500000000 | 5087119759689393/125000000000000000 | 135247478504655477595492467/62500000000000000000000000 |
| `b * f * q` | 751373/10000 | 8521770844336923/125000000000000000 | 6403028524621966845279/1250000000000000000000 |
| `f * q` | -842241669057/10000000000 | 17710777521/125000000000 | 0 |
| `b * b * h * w` | -100 | 3773772478415163157203/100000000000000000000000 | 0 |
| `b * b * h` | -201337/2000 | 97064545858050957/1000000000000000000 | 0 |
| `b * h * w` | 553177/10000 | 7843023005541081/100000000000000000 | 4338579937136198564337/1000000000000000000000 |
| `h * w` | -10889857319/500000000 | 16300137387/100000000000 | 0 |
| `b * f * h * q` | 100 | 3572777991800787978519/125000000000000000000000 | 3572777991800787978519/1250000000000000000000 |
| `b * f * h` | -177093/2000 | 13799677839966273/250000000000000000 | 0 |
| `b * h * q` | -358493/2000 | 52228251374870817/500000000000000000 | 0 |
| `f * h * q` | 103767/10000 | 7425296608011813/125000000000000000 | 770500753123561799571/1250000000000000000000 |
| `h * q` | -2892975271/625000000 | 108545859459/500000000000 | 0 |
| `a * a * b * j` | -850300 | 15627514231937540390369/1000000000000000000000000 | 0 |
| `a * a * j` | -882330801/10000 | 32478628306701763/1000000000000000000 | 0 |
| `b * b * h * k` | -100 | 42598620176176965447633/1000000000000000000000000 | 0 |
| `b * h * k` | -24608/625 | 88532618210828691/1000000000000000000 | 0 |
| `h * k` | -94269623097/2500000000 | 183997144857/1000000000000 | 0 |
| `b * e * h * r` | -100 | 16801278314504424234207/1000000000000000000000000 | 0 |
| `b * e * r` | 190561/5000 | 40074318644122819/1000000000000000000 | 7636602235142688511459/5000000000000000000000 |
| `b * h * r` | 114341/2500 | 58493551627091679/1000000000000000000 | 6688211186593289668539/2500000000000000000000 |
| `e * h * r` | -373103767/10000 | 34918059606628989/1000000000000000000 | 0 |
| `a * b * f * w` | -100 | 367571803346925165187/25000000000000000000000 | 0 |
| `a * f * w` | -103767/10000 | 763923666921449/25000000000000000 | 0 |
| `b * f * w` | -33635460919/5000 | 1279699071300739/25000000000000000 | 0 |
| `f * w` | -29101279751/2500000000 | 2659595753/25000000000 | 0 |
| `b * h * r * k` | 100 | 25671006509030098071051/1000000000000000000000000 | 25671006509030098071051/10000000000000000000000 |
| `h * r * k` | 100 | 53351996119880577/1000000000000000000 | 53351996119880577/10000000000000000 |
| `b * h * w * j` | -100 | 3087539337522340734027/100000000000000000000000 | 0 |
| `h * w * j` | -158493/2000 | 6416826184728129/100000000000000000 | 0 |
| `b * h * p * w` | 100 | 4334972146553649667077/100000000000000000000000 | 4334972146553649667077/1000000000000000000000 |
| `b * p * w` | 799621/5000 | 10339752241614609/100000000000000000 | 8267883027192115263189/500000000000000000000 |
| `h * p * w` | -438237/10000 | 9009363036130479/100000000000000000 | 0 |
| `b * h * u * k` | 100 | 6056250813948158265237/250000000000000000000000 | 6056250813948158265237/2500000000000000000000 |
| `h * u * k` | 24608/625 | 12586692688232799/250000000000000000 | 9679166677251022431/4882812500000000000 |
| `b * h * v` | 100 | 7005444067836753/100000000000000000 | 7005444067836753/1000000000000000 |
| `h * v` | 166876965941/10000000000 | 14559398931/100000000000 | 2429628319529918809071/1000000000000000000000 |
| `b * c * q * w` | -100 | 554556865719809475369/12500000000000000000000 | 0 |
| `b * q * w` | -100441/2000 | 4843333703524131/50000000000000000 | 0 |
| `c * q * w` | 308601/2000 | 1152534308996763/12500000000000000 | 355673240290710058563/25000000000000000000 |
| `q * w` | -84514471359/2500000000 | 10065889737/50000000000 | 0 |
| `b * e * f * q` | -100 | 2447733804931427404059/125000000000000000000000 | 0 |
| `e * f * q` | -103767/10000 | 5087119759689393/125000000000000000 | 0 |
| `a * e * f * p` | -100 | 3119406951948752639691/250000000000000000000000 | 0 |
| `a * f * p` | 73849/500 | 10860196954906827/250000000000000000 | 802014684922914267123/125000000000000000000 |
| `e * f * p` | 1181/1000 | 10860196954906827/250000000000000000 | 12825892603744962687/250000000000000000000 |
| `f * p` | -38554677903/1000000000 | 37809711819/250000000000 | 0 |
| `a * h * p * r` | 100 | 19299805151597154913113/1000000000000000000000000 | 19299805151597154913113/10000000000000000000000 |
| `a * p * r` | -157743/5000 | 46033791413769621/1000000000000000000 | 0 |
| `h * p * r` | 103767/10000 | 67192158114134361/1000000000000000000 | 6972328671029380237887/10000000000000000000000 |
| `p * r` | 144634628954767161/2500000000000000 | 160266374037/1000000000000 | 23180067542767424179070598957/2500000000000000000000000000 |
| `a * p * u * w` | 100 | 422233597409822526933/25000000000000000000000 | 422233597409822526933/250000000000000000000 |
| `a * p * u` | -525521/5000 | 10860196954906827/250000000000000000 | 0 |
| `a * p * w` | 103767/10000 | 6172374134369619/100000000000000000 | 640488746801132254773/1000000000000000000000 |
| `a * u * w` | 59937/2500 | 763923666921449/25000000000000000 | 45787292824270888713/62500000000000000000 |
| `p * u * w` | -896233/10000 | 1470003785810901/25000000000000000 | 0 |
| `p * u` | 222691262393/5000000000 | 37809711819/250000000000 | 8419892455688642322867/1250000000000000000000 |
| `b * q * u * k` | 100 | 3739941048683301060087/125000000000000000000000 | 3739941048683301060087/1250000000000000000000 |
| `b * q * k` | -137557/1000 | 54671905633682241/500000000000000000 | 0 |
| `q * u * k` | 415069/10000 | 7772711219863749/125000000000000000 | 3226211473317626433681/1250000000000000000000 |
| `q * k` | 97777881687/1250000000 | 113624500707/500000000000 | 11109962986873493852709/625000000000000000000 |
| `b * q * v * j` | -100 | 1703042885878967664801/50000000000000000000000 | 0 |
| `b * q * v` | -33547/2000 | 4326100196051403/50000000000000000 | 0 |
| `q * v * j` | -103767/10000 | 3539430267661827/50000000000000000 | 0 |
| `q * v` | -852263912527/10000000000 | 8990924481/50000000000 | 0 |
| `a * p * u * k` | 100 | 4766203777403004258663/250000000000000000000000 | 4766203777403004258663/2500000000000000000000 |
| `p * u * k` | 103767/10000 | 16593510416292711/250000000000000000 | 1721858795367445742337/2500000000000000000000 |
| `a * p * v * j` | -100 | 2170368283910082166449/100000000000000000000000 | 0 |
| `a * p * j` | 8701/1000 | 62498006850867687/1000000000000000000 | 543795157609399744587/1000000000000000000000 |
| `p * v * j` | 157743/5000 | 7556124414360753/100000000000000000 | 1191925733494508260479/500000000000000000000 |
| `p * j` | 204730088967/10000000000 | 217586443239/1000000000000 | 44546491882333565644113/10000000000000000000000 |
| `b * c * q * k` | 100 | 6259878523150982912259/125000000000000000000000 | 6259878523150982912259/1250000000000000000000 |
| `c * q * k` | -29497/1000 | 13009891706450793/125000000000000000 | 0 |
| `b * b * e * q` | -100 | 17216935997518096160031/500000000000000000000000 | 0 |
| `b * b * e` | 111649/2500 | 66499561602291577/1000000000000000000 | 7424609553334252280473/2500000000000000000000 |
| `a * f * h * p` | 100 | 4553170153935551940231/250000000000000000000000 | 4553170153935551940231/2500000000000000000000 |
| `f * h * p` | 103767/10000 | 15851835109251207/250000000000000000 | 1644897373781669996769/2500000000000000000000 |
| `b * b * q * w` | 100 | 2330432974788781444353/50000000000000000000000 | 2330432974788781444353/500000000000000000000 |
| `a * h * p * j` | 100 | 26202476866246830377811/1000000000000000000000000 | 26202476866246830377811/10000000000000000000000 |
| `h * p * j` | -38997/1000 | 91223769087280467/1000000000000000000 | 0 |
| `b * f * q * w` | 100 | 331317928656975229317/12500000000000000000000 | 331317928656975229317/125000000000000000000 |
| `f * q * w` | 561763/10000 | 688577319238959/12500000000000000 | 386817260587635324717/125000000000000000000 |
| `b * q * r` | -110816310869/2500000000 | 36121759407586629/500000000000000000 | 0 |
| `b * f * q * v` | 100 | 295935536111288325021/12500000000000000000000 | 295935536111288325021/125000000000000000000 |
| `b * f * v` | -331019/10000 | 1143036334500907/25000000000000000 | 0 |
| `f * q * v` | -65709/1250 | 615042170971767/12500000000000000 | 0 |
| `f * v` | -64749360253/10000000000 | 2375569889/25000000000 | 0 |
| `a * e * p * u` | 100 | 3119406951948752639691/250000000000000000000000 | 3119406951948752639691/2500000000000000000000 |
| `e * p * u` | 103767/10000 | 10860196954906827/250000000000000000 | 1126930057419816717309/2500000000000000000000 |
| `b * e * q * r` | 100 | 10375361319919330207557/500000000000000000000000 | 10375361319919330207557/5000000000000000000000 |
| `e * q * r` | 41363/5000 | 21563090511779439/500000000000000000 | 891914112838732935357/2500000000000000000000 |
| `a * e * p * r` | 100 | 13222424009151289548693/1000000000000000000000000 | 13222424009151289548693/10000000000000000000000 |
| `e * p * r` | 167551/5000 | 46033791413769621/1000000000000000000 | 7713007785168513768171/5000000000000000000000 |
| `b * h * q * u` | -100 | 3572777991800787978519/125000000000000000000000 | 0 |
| `h * q * u` | -83367/5000 | 7425296608011813/125000000000000000 | 0 |
| `a * h * p * u` | -200 | 4553170153935551940231/250000000000000000000000 | 0 |
| `h * p * u` | -103767/5000 | 15851835109251207/250000000000000000 | 0 |
| `b * c * v * w` | 100 | 74383441968041404121/2500000000000000000000 | 74383441968041404121/25000000000000000000 |
| `b * c * v` | 341787/10000 | 1913203579516999/25000000000000000 | 653908111832376537213/250000000000000000000 |
| `b * v * w` | -1082727/10000 | 649642721491379/10000000000000000 | 0 |
| `c * v * w` | 103767/10000 | 154590943127467/2500000000000000 | 16041438395507868189/25000000000000000000 |
| `v * w` | 121265616603/1250000000 | 1350151033/10000000000 | 163726897523922400899/12500000000000000000 |
| `b * v * k` | 100 | 7333214628416369/100000000000000000 | 7333214628416369/1000000000000000 |
| `v * k` | -74283735559/5000000000 | 15240603763/100000000000 | 0 |
| `a * e * u * j` | -100 | 2221765526576547501541/250000000000000000000000 | 0 |
| `a * e * j` | -526767/10000 | 32478628306701763/1000000000000000000 | 0 |
| `a * u * j` | 23849/500 | 7735063612386277/250000000000000000 | 184473532091800320173/125000000000000000000 |
| `e * u * j` | 450679/10000 | 7735063612386277/250000000000000000 | 3486030733766634932083/2500000000000000000000 |
| `u * j` | -76184160613/10000000000 | 26929578469/250000000000 | 0 |
| `b * f * v * w` | -100 | 44440109649060763253/2500000000000000000000 | 0 |
| `f * v * w` | -83941/625 | 92359781714431/2500000000000000 | 0 |
| `b * b * v * w` | 100 | 312584040800956393777/10000000000000000000000 | 312584040800956393777/100000000000000000000 |
| `b * u * w` | 135659/2500 | 1279699071300739/25000000000000000 | 173602696313586952001/62500000000000000000 |
| `a * f * v * r` | -100 | 197852587778298571657/25000000000000000000000 | 0 |
| `a * f * v` | 289961/10000 | 682342065927137/25000000000000000 | 197852587778298571657/250000000000000000000 |
| `a * f * r` | -428091/5000 | 5697370569824591/250000000000000000 | 0 |
| `f * v * r` | 108829/10000 | 688822620584329/25000000000000000 | 74963876975571940741/250000000000000000000 |
| `f * r` | 6286131649143681/125000000000000 | 19835362127/250000000000 | 124687697638760622088769487/31250000000000000000000000 |
| `a * u * r` | 366553/2500 | 5697370569824591/250000000000000000 | 2088388274480913304823/625000000000000000000 |
| `u * r` | 28343092513/10000000000 | 19835362127/250000000000 | 562195503794417455151/2500000000000000000000 |
| `b * b * e * k` | 100 | 29184596100836102106413/1000000000000000000000000 | 29184596100836102106413/10000000000000000000000 |
| `b * w * k` | 1813967/10000 | 8209982190750713/100000000000000000 | 14892636764609498608471/1000000000000000000000 |
| `w * k` | -6397091229/400000000 | 17062787851/100000000000 | 0 |
| `b * c * w * k` | 100 | 940034750858765887787/25000000000000000000000 | 940034750858765887787/250000000000000000000 |
| `c * w * k` | -135981/10000 | 1953672146151649/25000000000000000 | 0 |
| `b * e * r * k` | 100 | 17587376149027537451711/1000000000000000000000000 | 17587376149027537451711/10000000000000000000000 |
| `e * r * k` | -16107/5000 | 36551804999610397/1000000000000000000 | 0 |
| `a * h * u * j` | 100 | 3242948624683783791081/250000000000000000000000 | 3242948624683783791081/2500000000000000000000 |
| `h * u * j` | -390849/5000 | 11290306561863657/250000000000000000 | 0 |
| `b * p * w * k` | 200 | 4537796726525161837221/100000000000000000000000 | 4537796726525161837221/500000000000000000000 |
| `p * w * k` | -133447/1000 | 9430892912641167/100000000000000000 | 0 |
| `b * b * w * k` | -200 | 3950339660848185319219/100000000000000000000000 | 0 |
| `b * q * r * k` | -100 | 15852720429448136282601/500000000000000000000000 | 0 |
| `q * r * k` | 1354229/10000 | 32946673849502427/500000000000000000 | 44617341180537822213783/5000000000000000000000 |
| `c * e * e * j` | -100 | 3718770462489045161737/250000000000000000000000 | 0 |
| `c * e * j` | 907001/10000 | 12946877491406089/250000000000000000 | 11742830831582814129089/2500000000000000000000 |
| `c * j` | 25896560191/10000000000 | 45074477833/250000000000 | 1167273928280179746103/2500000000000000000000 |
| `e * e * j` | -25387/2000 | 32478628306701763/1000000000000000000 | 0 |
| `c * e * p * k` | -100 | 7977627528014188381491/250000000000000000000000 | 0 |
| `c * e * k` | -59937/2500 | 14433475952457023/250000000000000000 | 0 |
| `e * p * k` | -940741/10000 | 69674211373149009/1000000000000000000 | 0 |
| `c * e * q * j` | 100 | 3351985423157510660367/125000000000000000000000 | 3351985423157510660367/1250000000000000000000 |
| `c * e * q` | -225447/2000 | 8514773712700101/125000000000000000 | 0 |
| `c * q * j` | -36617/625 | 11669917534397199/125000000000000000 | 0 |
| `c * e * w` | -200 | 1278648324569693/25000000000000000 | 0 |
| `e * w` | -72322093427/1000000000 | 11167331807/100000000000 | 0 |
| `c * e * e * r` | 100 | 2739113011946101715771/250000000000000000000000 | 2739113011946101715771/2500000000000000000000 |
| `e * e * r` | -15994271/1250 | 23922593314754729/1000000000000000000 | 0 |
| `c * e * h * u` | -100 | 943219458521208433257/62500000000000000000000 | 0 |
| `c * h * u` | -668981/10000 | 3283812996839529/62500000000000000 | 0 |
| `a * c * h * u` | 100 | 943219458521208433257/62500000000000000000000 | 943219458521208433257/625000000000000000000 |
| `a * f * q * r` | 100 | 1475066332639296083673/125000000000000000000000 | 1475066332639296083673/1250000000000000000000 |
| `f * q * r` | -40697/1000 | 5135434760766681/125000000000000000 | 0 |
| `a * e * f * u` | -100 | 386073291326227204561/62500000000000000000000 | 0 |
| `a * f * u` | 673/625 | 1344111892875217/62500000000000000 | 904587303905021041/39062500000000000000 |
| `e * f * u` | 341787/10000 | 1344111892875217/62500000000000000 | 459399971530141792779/625000000000000000000 |
| `f * u` | -261668844779/10000000000 | 4679517649/62500000000 | 0 |
| `a * f * q * u` | 100 | 347994601401072306951/31250000000000000000000 | 347994601401072306951/312500000000000000000 |
| `f * q * u` | -167551/5000 | 1211541157879047/31250000000000000 | 0 |
| `c * h * p * w` | -100 | 1031563058273903715021/25000000000000000000000 | 0 |
| `c * h * p` | 115577/10000 | 26532654087654099/250000000000000000 | 3066564561488797800123/2500000000000000000000 |
| `c * h * w` | 175321/10000 | 1866349430674113/25000000000000000 | 327210248535216165273/250000000000000000000 |
| `c * p * w` | -570939/5000 | 2460478656739257/25000000000000000 | 0 |
| `c * h * q * r` | 100 | 3603749077734726244401/125000000000000000000000 | 3603749077734726244401/1250000000000000000000 |
| `c * h * q` | 225447/2000 | 12428392362196041/125000000000000000 | 2801943772880010855327/250000000000000000000 |
| `h * q * r` | 135501/2500 | 31474065954591099/500000000000000000 | 4264767410913048505599/1250000000000000000000 |
| `c * f * q * v` | -100 | 70421713534096349733/3125000000000000000000 | 0 |
| `c * f * q` | -274393/10000 | 2027866315376979/31250000000000000 | 0 |
| `c * f * v` | 177093/2000 | 272000376720611/6250000000000000 | 48169362714583163823/12500000000000000000 |
| `c * q * v` | -655651/5000 | 1029451862150019/12500000000000000 | 0 |
| `a * c * f * q` | 100 | 582470125364675809107/31250000000000000000000 | 582470125364675809107/312500000000000000000 |
| `c * h * q * u` | -100 | 850189036320744576687/31250000000000000000000 | 0 |
| `c * e * q * u` | 100 | 582470125364675809107/31250000000000000000000 | 582470125364675809107/312500000000000000000 |
| `e * q * u` | 1702818391/250000000 | 5087119759689393/125000000000000000 | 8662441084018598848026663/31250000000000000000000000 |
| `a * a * r` | -19500 | 23922593314754729/1000000000000000000 | 0 |
| `a * e * f * r` | 100 | 1636472840882426746703/250000000000000000000000 | 1636472840882426746703/2500000000000000000000 |
| `e * f * r` | -74691621241/10000 | 5697370569824591/250000000000000000 | 0 |
| `e * f * h * j` | -103600 | 3242948624683783791081/250000000000000000000000 | 0 |
| `e * f * h` | -70583/2500 | 8237796474390243/250000000000000000 | 0 |
| `e * f * j` | -477747/10000 | 7735063612386277/250000000000000000 | 0 |
| `e * h * j` | 61391/1250 | 47406678040021983/1000000000000000000 | 2910343371554989558353/1250000000000000000000 |
| `f * h * j` | 922331/10000 | 11290306561863657/250000000000000000 | 10413399741510268624467/2500000000000000000000 |
| `f * j` | -57939855623/2000000000 | 26929578469/250000000000 | 0 |
| `a * f * f * k` | -736000 | 589889042314253609573/62500000000000000000000 | 0 |
| `a * f * f` | 27783/1000 | 1344111892875217/62500000000000000 | 37343460719752153911/62500000000000000000 |
| `f * f * k` | 481059/10000 | 2053695231098981/62500000000000000 | 987948574177244700879/625000000000000000000 |
| `f * f` | 70371756589/5000000000 | 4679517649/62500000000 | 329305876949357539261/312500000000000000000 |
| `e * f * u * w` | 100 | 52257726283095561743/6250000000000000000000 | 52257726283095561743/62500000000000000000 |
| `e * f * w` | 486623/10000 | 763923666921449/25000000000000000 | 371742826568316276727/250000000000000000000 |
| `e * u * w` | -66498/625 | 763923666921449/25000000000000000 | 0 |
| `f * u * w` | -23849/500 | 181934966675471/6250000000000000 | 0 |
| `a * f * h * r` | -100 | 2388639703510669250523/250000000000000000000000 | 0 |
| `f * h * r` | 96379478039/500000000 | 8316035077831131/250000000000000000 | 801495120155379145965032109/125000000000000000000000000 |
| `e * e * f * j` | 100 | 2221765526576547501541/250000000000000000000000 | 2221765526576547501541/2500000000000000000000 |
| `e * e * f` | -57031/10000 | 5643768785741623/250000000000000000 | 0 |
| `e * f * f * w` | 100 | 52257726283095561743/6250000000000000000000 | 52257726283095561743/62500000000000000000 |
| `e * f * f` | -237921/10000 | 1344111892875217/62500000000000000 | 0 |
| `f * f * w` | 31907/1250 | 181934966675471/6250000000000000 | 5804998981714253197/7812500000000000000 |
| `e * e * f * r` | -41200 | 1636472840882426746703/250000000000000000000000 | 0 |
| `a * e * f * f` | 207500 | 386073291326227204561/62500000000000000000000 | 32044083180076857978563/25000000000000000000 |
| `e * f * p * w` | -100 | 422233597409822526933/25000000000000000000000 | 0 |
| `e * p * w` | 308601/2000 | 6172374134369619/100000000000000000 | 1904800830240598793019/200000000000000000000 |
| `f * p * w` | 38997/1000 | 1470003785810901/25000000000000000 | 57325737635267706297/25000000000000000000 |
| `a * f * f * q` | -100 | 347994601401072306951/31250000000000000000000 | 0 |
| `f * f * q` | 38997/1000 | 1211541157879047/31250000000000000 | 47246470533809195859/31250000000000000000 |
| `e * f * p * k` | 100 | 4766203777403004258663/250000000000000000000000 | 4766203777403004258663/2500000000000000000000 |
| `f * p * k` | -38997/1000 | 16593510416292711/250000000000000000 | 0 |
| `e * f * v * j` | -100 | 268615554067338241379/25000000000000000000000 | 0 |
| `e * f * v` | -479037/10000 | 682342065927137/25000000000000000 | 0 |
| `e * v * j` | -444151/5000 | 3926726125503797/100000000000000000 | 0 |
| `e * v` | -2890709715507617/62500000000000 | 9974740391/100000000000 | 0 |
| `f * v * j` | 15713/5000 | 935183471492963/25000000000000000 | 14694537887568927619/125000000000000000000 |
| `f * h * v` | -520963/10000 | 995964802672917/25000000000000000 | 0 |
| `f * v * k` | 1470291/10000 | 1042563981615541/25000000000000000 | 1532872439093495392431/250000000000000000000 |
| `b * e * w` | -18811/2000 | 5373306874251541/100000000000000000 | 0 |
| `b * e * e * r` | -100 | 11510666767107329669827/1000000000000000000000000 | 0 |
| `c * e * q * r` | -100 | 2468952300508233986061/125000000000000000000000 | 0 |
| `f * h * w` | 390911/5000 | 1115043498232509/25000000000000000 | 435882768937568325699/125000000000000000000 |
| `e * u * r` | -46267/2000 | 5697370569824591/250000000000000000 | 0 |
| `a * h * u * r` | 100 | 2388639703510669250523/250000000000000000000000 | 2388639703510669250523/2500000000000000000000 |
| `h * u * r` | 135659/2500 | 8316035077831131/250000000000000000 | 1128145002623493400329/625000000000000000000 |
| `b * e * e * j` | 100 | 15627514231937540390369/1000000000000000000000000 | 15627514231937540390369/10000000000000000000000 |
| `h * p * k` | -114499/2500 | 101698349913926469/1000000000000000000 | 0 |
| `e * p * w * j` | 200 | 2429860008354884802873/100000000000000000000000 | 2429860008354884802873/500000000000000000000 |
| `e * p * j` | -27223/2500 | 62498006850867687/1000000000000000000 | 0 |
| `e * w * j` | 33639/2000 | 4396210010466269/100000000000000000 | 147884108542074822891/200000000000000000000 |
| `p * w * j` | 103767/5000 | 8459543326689081/100000000000000000 | 877821432380545868127/500000000000000000000 |
| `b * e * w * j` | -200 | 2115293597265981390847/100000000000000000000000 | 0 |
| `e * q * r * j` | -100 | 8488677152500676412813/500000000000000000000000 | 0 |
| `e * r * j` | 240493/2000 | 32787094597206971/1000000000000000000 | 7885066740966096076703/2000000000000000000000 |
| `q * r * j` | -275216439131/2500000000 | 29553279576165261/500000000000000000 | 0 |
| `r * j` | -666105762707779/10000000000000 | 114148076987/1000000000000 | 0 |
| `f * h * u * w` | -100 | 76276780583591243163/6250000000000000000000 | 0 |
| `f * h * u` | -222777/5000 | 1961901812896197/62500000000000000 | 0 |
| `h * u * w` | 115351/5000 | 1115043498232509/25000000000000000 | 128621382564618145659/125000000000000000000 |
| `f * v * r * k` | 100 | 302302894673223883901/25000000000000000000000 | 302302894673223883901/250000000000000000000 |
| `f * r * k` | 61130392661/500000000 | 8705125541314363/250000000000000000 | 532147742503847188229089943/125000000000000000000000000 |
| `v * r * k` | -344349/5000 | 4419180707723243/100000000000000000 | 0 |
| `f * v * w * j` | -100 | 36358998188174908477/2500000000000000000000 | 0 |
| `f * w * j` | 13901/1000 | 1046995081296251/25000000000000000 | 14554278625099185151/25000000000000000000 |
| `v * w * j` | 158493/2000 | 531509906708011/10000000000000000 | 84240599643872787423/20000000000000000000 |
| `u * r * k` | -85549/500 | 8705125541314363/250000000000000000 | 0 |
| `u * w * j` | 896233/10000 | 1046995081296251/25000000000000000 | 938351542695382922483/250000000000000000000 |
| `f * f * q * v` | 100 | 42073189789665665169/3125000000000000000000 | 42073189789665665169/31250000000000000000 |
| `f * f * v` | 22907/2000 | 162505609396823/6250000000000000 | 3722515994453024461/12500000000000000000 |
| `f * p * v` | -1115577/10000 | 1313017862338413/25000000000000000 | 0 |
| `f * h * v * j` | 100 | 392078475973839216639/25000000000000000000000 | 392078475973839216639/250000000000000000000 |
| `h * v * j` | 781593/10000 | 5731554898969977/100000000000000000 | 4479743188150641233361/1000000000000000000000 |
| `f * p * v * k` | -100 | 576242836226596974897/25000000000000000000000 | 0 |
| `p * v * k` | -155651/5000 | 8423740790074071/100000000000000000 | 0 |
| `q * u * j` | -419253/10000 | 6972148654359507/125000000000000000 | 0 |
| `f * p * v * w` | 100 | 51048821469855159027/2500000000000000000000 | 51048821469855159027/25000000000000000000 |
| `p * v * w` | 155651/5000 | 746251428506661/10000000000000000 | 116154781098490291311/50000000000000000000 |
| `f * q * v * r` | -100 | 178338242937144531087/12500000000000000000000 | 0 |
| `q * v * r` | -155651/5000 | 2607017453435241/50000000000000000 | 0 |
| `q * u * r` | 896233/10000 | 5135434760766681/125000000000000000 | 4602546101946204812673/1250000000000000000000 |
| `a * q * u * r` | -100 | 1475066332639296083673/125000000000000000000000 | 0 |
| `f * f * h * k` | -114300 | 861017886723941081193/62500000000000000000000 | 0 |
| `f * f * h` | -277307/2000 | 1961901812896197/62500000000000000 | 0 |
| `f * h * k` | 102703/1250 | 12586692688232799/250000000000000000 | 1292691099159573155697/312500000000000000000 |
| `h * r * j` | -24280978039/500000000 | 47856923721030711/1000000000000000000 | 0 |
| `f * q * u * k` | 100 | 531707856417219477843/31250000000000000000000 | 531707856417219477843/312500000000000000000 |
| `f * q * k` | -114499/2500 | 7772711219863749/125000000000000000 | 0 |
| `f * u * k` | 22907/2000 | 2053695231098981/62500000000000000 | 47043996658784357767/125000000000000000000 |
| `h * q * u * j` | 100 | 2923094239786186388271/125000000000000000000000 | 2923094239786186388271/1250000000000000000000 |
| `h * q * j` | 561763/10000 | 42730922855646153/500000000000000000 | 24004651416156349847739/5000000000000000000000 |
| `h * u * r * k` | -100 | 3649649998572670630839/250000000000000000000000 | 0 |
| `c * h * q * j` | -100 | 4892647936048628872347/125000000000000000000000 | 0 |
| `c * h * j` | -22907/2000 | 18897610054918749/250000000000000000 | 0 |
| `h * p * v * j` | -100 | 3167927829093988777509/100000000000000000000000 | 0 |
| `h * p * v` | -479037/10000 | 8047227298945527/100000000000000000 | 0 |
| `c * p * w * k` | -100 | 1079827807604500980333/25000000000000000000000 | 0 |
| `e * p * r * k` | -100 | 20202804003969659798649/1000000000000000000000000 | 0 |
| `p * r * k` | 223332939131/2500000000 | 70335943307244153/1000000000000000000 | 15708332945358225253304651043/2500000000000000000000000000 |
| `q * w * j` | -19759/10000 | 3962608615095579/50000000000000000 | 0 |
| `c * q * w * j` | 200 | 453714723819828699921/12500000000000000000000 | 453714723819828699921/62500000000000000000 |
| `c * w * j` | 22907/1000 | 1752450623669207/25000000000000000 | 40143386436390524749/25000000000000000000 |
| `b * u * w * k` | -100 | 561620251722684024191/25000000000000000000000 | 0 |
| `u * w * k` | -103767/10000 | 1167214128523357/25000000000000000 | 0 |
| `b * v * w * j` | 100 | 255742901241346696793/10000000000000000000000 | 255742901241346696793/100000000000000000000 |
| `b * c * e * v` | -100 | 549535203755406173767/25000000000000000000000 | 0 |
| `b * e * v` | 33607/2000 | 4799476010754733/100000000000000000 | 161295990293434311931/200000000000000000000 |
| `c * e * v` | 896233/10000 | 1142097800029109/25000000000000000 | 1023585737613488446397/250000000000000000000 |
| `b * e * u * w` | 100 | 367571803346925165187/25000000000000000000000 | 367571803346925165187/250000000000000000000 |
| `b * e * v * r` | 100 | 1391660863554453135413/100000000000000000000000 | 1391660863554453135413/1000000000000000000000 |
| `e * v * r` | -896233/10000 | 2892285698514751/100000000000000000 | 0 |
| `c * e * e * p` | 100 | 5221234326767439421287/250000000000000000000000 | 5221234326767439421287/2500000000000000000000 |
| `e * e * p` | -33607/2000 | 45600698056467213/1000000000000000000 | 0 |
| `c * e * e * u` | -100 | 646205882198630091877/62500000000000000000000 | 0 |
| `e * e * u` | 33607/2000 | 5643768785741623/250000000000000000 | 189670137582418724161/500000000000000000000 |
| `b * e * p` | -722777/5000 | 76388745996956943/1000000000000000000 | 0 |
| `c * r * k` | 140618793/5000000 | 14570558120586391/250000000000000000 | 2048894296253206754646063/1250000000000000000000000 |
| `c * f * q * k` | 100 | 889967661963179396751/31250000000000000000000 | 889967661963179396751/312500000000000000000 |
| `c * f * k` | -116553/2500 | 3437455965991817/62500000000000000 | 0 |
| `b * f * q * k` | -100 | 3739941048683301060087/125000000000000000000000 | 0 |
| `c * q * r * k` | -100 | 3772361209094178389073/125000000000000000000000 | 0 |
| `c * f * q * w` | -100 | 78841414475541566541/3125000000000000000000 | 0 |
| `c * f * w` | 116553/2500 | 304521054122747/6250000000000000 | 35492842421168531091/15625000000000000000 |
| `b * q * w * j` | -100 | 1906660649065234078377/50000000000000000000000 | 0 |
| `c * h * u * w` | 100 | 127671365504124047991/6250000000000000000000 | 127671365504124047991/62500000000000000000 |
| `c * u * w` | 580747/10000 | 304521054122747/6250000000000000 | 176849688618622952009/62500000000000000000 |
| `c * h * p * k` | 100 | 11644359366794666774031/250000000000000000000000 | 11644359366794666774031/2500000000000000000000 |
| `c * h * k` | -35777/5000 | 21067489088981643/250000000000000000 | 0 |
| `b * e * p * w` | -100 | 2969918055615688986897/100000000000000000000000 | 0 |
| `e * e * u * r` | 100 | 1636472840882426746703/250000000000000000000000 | 1636472840882426746703/2500000000000000000000 |
| `e * e * p * r` | -100 | 13222424009151289548693/1000000000000000000000000 | 0 |
| `f * h * h` | -30241/1250 | 12024108947361663/250000000000000000 | 0 |
| `h * h` | -21122291891/625000000 | 175773078009/1000000000000 | 0 |
| `f * h * w * j` | 100 | 438955828818697120503/25000000000000000000000 | 438955828818697120503/250000000000000000000 |
| `f * f * h * w` | -41300 | 76276780583591243163/6250000000000000000000 | 0 |
| `b * f * w * k` | 100 | 561620251722684024191/25000000000000000000000 | 561620251722684024191/250000000000000000000 |
| `f * w * k` | 103767/10000 | 1167214128523357/25000000000000000 | 121118308474483185819/250000000000000000000 |
| `h * v * r * j` | 100 | 1661927390060233500897/100000000000000000000000 | 1661927390060233500897/1000000000000000000000 |
| `h * v * r` | 479037/10000 | 4221657873431691/100000000000000000 | 2022330322715096961567/1000000000000000000000 |
| `v * r * j` | 814747/10000 | 3964020269527549/100000000000000000 | 3229673622536761965103/1000000000000000000000 |
| `e * u * r * k` | 100 | 2500399324608348427579/250000000000000000000000 | 2500399324608348427579/2500000000000000000000 |
| `e * u * w * j` | -100 | 300731538185966063483/25000000000000000000000 | 0 |
| `c * f * h * w` | 100 | 127671365504124047991/6250000000000000000000 | 127671365504124047991/62500000000000000000 |
| `c * h * h` | 63609/2500 | 20125841658952491/250000000000000000 | 1280184662084309000019/625000000000000000000 |
| `c * f * h * k` | -100 | 1441163726109967252701/62500000000000000000000 | 0 |
| `c * f * h * h` | 51800 | 1376748450363963051837/62500000000000000000000 | 356577848644266430425783/312500000000000000000 |
| `e * p * v` | 11847281609/250000000 | 5513208584692347/100000000000000000 | 65316534672006561536146323/25000000000000000000000000 |
| `a * r * j` | -2610316/5 | 32787094597206971/1000000000000000000 | 0 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 30 | -16379026795643614606852789542889149434313/1120291250000000000000000000000000 |

## Stage 31

| Property | Value |
| --- | --- |
| Scope | root/AFQ+/BPS+/HQR- |
| Packet | forest:root/AFQ+/BPS+/HQR- |
| Index | 0 |
| Context | 11 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 14 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| b | 103767/1000000 | 58493/100000 | 103767/1000000 | 58493/100000 |
| c | 135501/250000 | 1/1 | 135501/250000 | 1/1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 155651/500000 | 58493/100000 | 155651/500000 | 58493/100000 |
| h | 580747/1000000 | 1/1 | 580747/1000000 | 1/1 |
| p | 58779/250000 | 158493/200000 | 58779/250000 | 158493/200000 |
| q | 22907/200000 | 317171/500000 | 22907/200000 | 317171/500000 |
| u | 103767/1000000 | 75479/200000 | 103767/1000000 | 75479/200000 |
| v | 493737/1000000 | 841007/1000000 | 133897/250000 | 841007/1000000 |
| r | 108473/200000 | 1/1 | 108473/200000 | 1/1 |
| w | 269423/1000000 | 104293/125000 | 269423/1000000 | 104293/125000 |
| j | 219299/500000 | 13636/15625 | 219299/500000 | 13636/15625 |
| k | 523709/1000000 | 1/1 | 523709/1000000 | 1/1 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 127 | A_HQR | bitt ["actual-area","HQR",[]] | `-1/1 * u * w + 1/1 * h * u + 1/1 * v * r + -1/1 * h * r + -93/1000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 127 | v | 493737/1000000 | 841007/1000000 | 11619389027/21694600000 | 841007/1000000 | 133897/250000 | 841007/1000000 | `(108473/200000, -375671689147/1000000000000); (108473/200000, -559555216441/1000000000000); (108473/200000, -11619389027/40000000000); (108473/200000, -71929778617/200000000000); (1/1, -160360460623/250000000000); (1/1, -1017190216441/1000000000000); (1/1, -27812743951/50000000000); (1/1, -163456778617/200000000000); (108473/200000, -217145923277/500000000000); (108473/200000, -77271921731/125000000000); (108473/200000, -50368308647/100000000000); (108473/200000, -14321181347/25000000000); (1/1, -700061999899/1000000000000); (1/1, -134476296731/125000000000); (1/1, -153890647963/200000000000); (1/1, -25762056347/25000000000)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 31:20 | ACH | lo | 32207/100000 | earlier 14:20; ACH; lo; 32207/100000 |
| 31:42 | AFP | lo | 22907/200000 | earlier 14:42; AFP; lo; 22907/200000 |
| 31:58 | APQ | lo | 22907/200000 | earlier 14:58; APQ; lo; 22907/200000 |
| 31:82 | BEF | lo | 80761/250000 | earlier 14:82; BEF; lo; 80761/250000 |
| 31:92 | BES | lo | 331359/1000000 | earlier 14:92; BES; lo; 331359/1000000 |
| 31:95 | BFH | hi | 58493/100000 | vertex maximum 58493/100000 |
| 31:98 | BFQ | lo | 93/1000 | occupants none |
| 31:106 | BHQ | lo | 93/1000 | occupants none |
| 31:110 | BHS | lo | 39889/125000 | earlier 14:110; BHS; lo; 39889/125000 |
| 31:164 | EFH | lo | 28741/100000 | earlier 14:164; EFH; lo; 28741/100000 |
| 31:165 | EFH | hi | 3491264557/5000000000 | vertex maximum 3491264557/5000000000 |
| 31:166 | EFP | lo | 34261/250000 | earlier 14:166; EFP; lo; 34261/250000 |
| 31:170 | EFR | lo | 93/1000 | occupants none |
| 31:180 | EHS | lo | 14369/40000 | earlier 14:180; EHS; lo; 14369/40000 |
| 31:181 | EHS | hi | 2610985481/3125000000 | vertex maximum 2610985481/3125000000 |
| 31:182 | EPQ | lo | 22907/200000 | earlier 14:182; EPQ; lo; 22907/200000 |
| 31:186 | EPS | lo | 145359/1000000 | earlier 14:186; EPS; lo; 145359/1000000 |
| 31:190 | EQS | lo | 6929/40000 | earlier 14:190; EQS; lo; 6929/40000 |
| 31:192 | ERS | lo | 93/1000 | occupants none |
| 31:196 | FHQ | lo | 93/1000 | occupants none |
| 31:199 | FHR | hi | 15033893683/25000000000 | vertex maximum 15033893683/25000000000 |
| 31:208 | FQR | lo | 93/1000 | occupants none |
| 31:212 | FRS | lo | 93/1000 | occupants none |
| 31:218 | HPS | lo | 39889/125000 | earlier 14:218; HPS; lo; 39889/125000 |
| 31:220 | HQR | lo | 93/1000 | occupants none |
| 31:222 | HQS | lo | 93/1000 | occupants none |
| 31:224 | HRS | lo | 279/1000 | occupants Q |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 767 | plu | BRS * EHS = BES * HRS + BHS * ERS | circuit SBEHR |
| 3035 | bary | outer BFH; fans FHQ, BHQ, BFQ; target QRS; sign 1; vertices BRS 1; FRS 1; HRS 1 | container BFH; inner Q; line RS |
| 3322 | bary | outer FHR; fans HQR, FQR, FHQ; target EFQ; sign 1; vertices none 0; EFH 1; EFR -1 | container FHR; inner Q; line EF |
| 3617 | four | -1 * HQR + 1 * HRS + -1 * HQS + -1 * QRS = 0 | vertices HQRS |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 31:244 | BRS | lo | 146169/1000000 | 3053164425/20887883848 | 767 | 31:92, 31:224, 31:110, 31:192, 31:181 |
| 31:257 | QRS | lo | 65513/500000 | 76641207/584930000 | 3035 | 31:95, 31:196, 31:106, 31:98, 31:244, 31:212, 31:224 |
| 31:261 | EFQ | hi | 467901/1000000 | 35171794979114093431/75169468415000000000 | 3322 | 31:199, 31:220, 31:208, 31:196, 31:165, 31:170 |
| 31:273 | HRS | lo | 158513/500000 | 158513/500000 | 3617 | 31:220, 31:222, 31:257 |
| 31:275 | BRS | lo | 161249/1000000 | 67363417167/417757676960 | 767 | 31:92, 31:273, 31:110, 31:192, 31:181 |
| 31:285 | QRS | lo | 139469/1000000 | 16316013/116986000 | 3035 | 31:95, 31:196, 31:106, 31:98, 31:275, 31:212, 31:273 |
| 31:288 | HRS | lo | 325469/1000000 | 325469/1000000 | 3617 | 31:220, 31:222, 31:285 |
| 31:290 | BRS | lo | 82299/500000 | 10578807567/64270411840 | 767 | 31:92, 31:288, 31:110, 31:192, 31:181 |
| 31:296 | QRS | lo | 4417/31250 | 82676721/584930000 | 3035 | 31:95, 31:196, 31:106, 31:98, 31:290, 31:212, 31:288 |
| 31:299 | HRS | lo | 20459/62500 | 20459/62500 | 3617 | 31:220, 31:222, 31:296 |
| 31:301 | BRS | lo | 82671/500000 | 8634112281/52219709620 | 767 | 31:92, 31:299, 31:110, 31:192, 31:181 |
| 31:305 | QRS | lo | 141761/1000000 | 5182518/36558125 | 3035 | 31:95, 31:196, 31:106, 31:98, 31:301, 31:212, 31:299 |
| 31:308 | HRS | lo | 327761/1000000 | 327761/1000000 | 3617 | 31:220, 31:222, 31:305 |
| 31:310 | BRS | lo | 165507/1000000 | 138283973199/835515353920 | 767 | 31:92, 31:308, 31:110, 31:192, 31:181 |
| 31:314 | QRS | lo | 141853/1000000 | 41487207/292465000 | 3035 | 31:95, 31:196, 31:106, 31:98, 31:310, 31:212, 31:308 |
| 31:317 | HRS | lo | 327853/1000000 | 327853/1000000 | 3617 | 31:220, 31:222, 31:314 |
| 31:319 | BRS | lo | 165543/1000000 | 2609706759/15764440640 | 767 | 31:92, 31:317, 31:110, 31:192, 31:181 |
| 31:323 | QRS | lo | 141873/1000000 | 41493159/292465000 | 3035 | 31:95, 31:196, 31:106, 31:98, 31:319, 31:212, 31:317 |
| 31:326 | HRS | lo | 327873/1000000 | 327873/1000000 | 3617 | 31:220, 31:222, 31:323 |
| 31:328 | BRS | lo | 165551/1000000 | 138321085407/835515353920 | 767 | 31:92, 31:326, 31:110, 31:192, 31:181 |
| 31:332 | QRS | lo | 70939/500000 | 41494461/292465000 | 3035 | 31:95, 31:196, 31:106, 31:98, 31:328, 31:212, 31:326 |
| 31:334 | HRS | lo | 163939/500000 | 163939/500000 | 3617 | 31:220, 31:222, 31:332 |
| 31:336 | BRS | lo | 165553/1000000 | 69161371101/417757676960 | 767 | 31:92, 31:334, 31:110, 31:192, 31:181 |
| 31:339 | QRS | lo | 141879/1000000 | 82989573/584930000 | 3035 | 31:95, 31:196, 31:106, 31:98, 31:336, 31:212, 31:334 |
| 31:341 | HRS | lo | 327879/1000000 | 327879/1000000 | 3617 | 31:220, 31:222, 31:339 |

## Stage 32

| Property | Value |
| --- | --- |
| Scope | root/AFQ+/BPS+/HQR- |
| Packet | forest:root/AFQ+/BPS+/HQR- |
| Index | 1 |
| Context | 11 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 31 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| b | 103767/1000000 | 58493/100000 | 103767/1000000 | 58493/100000 |
| c | 135501/250000 | 1/1 | 135501/250000 | 1/1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 155651/500000 | 58493/100000 | 155651/500000 | 58493/100000 |
| h | 580747/1000000 | 1/1 | 580747/1000000 | 1/1 |
| p | 58779/250000 | 158493/200000 | 58779/250000 | 158493/200000 |
| q | 22907/200000 | 317171/500000 | 22907/200000 | 9856/15625 |
| u | 103767/1000000 | 75479/200000 | 103767/1000000 | 75479/200000 |
| v | 133897/250000 | 841007/1000000 | 53831/100000 | 841007/1000000 |
| r | 108473/200000 | 1/1 | 144287/250000 | 1/1 |
| w | 269423/1000000 | 104293/125000 | 269423/1000000 | 19727/25000 |
| j | 219299/500000 | 13636/15625 | 219299/500000 | 108037/125000 |
| k | 523709/1000000 | 1/1 | 13193/25000 | 1/1 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 102 | A_EFR | bitt ["actual-area","EFR",[]] | `-1/1 * f * w + 1/1 * e * f + 1/1 * w + 1/1 * r + -1093/1000 + -1/1 * e * r` |
| 113 | A_ERS | bitt ["actual-area","ERS",[]] | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 127 | A_HQR | bitt ["actual-area","HQR",[]] | `-1/1 * u * w + 1/1 * h * u + 1/1 * v * r + -1/1 * h * r + -93/1000` |
| 941 | AREA_lo_EHS | bitt ["earlier-area",{"direction":"lo","ref":"31:180","triangle":"EHS","value":"14369/40000"}] | `1/1 * k + 1/1 * h * j + -1/1 * h + -1/1 * e * j + -14369/40000` |
| 965 | AREA_lo_HPS | bitt ["earlier-area",{"direction":"lo","ref":"31:218","triangle":"HPS","value":"39889/125000"}] | `1/1 * p * k + -1/1 * h * p + -1/1 * q * j + 1/1 * h * j + -39889/125000` |
| 969 | AREA_lo_HRS | bitt ["earlier-area",{"direction":"lo","ref":"31:341","triangle":"HRS","value":"327879/1000000"}] | `1/1 * r * k + -1/1 * h * r + -1/1 * w * j + 1/1 * h * j + -327879/1000000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 969 | w | 269423/1000000 | 104293/125000 | 269423/1000000 | 173044236353/219299000000 | 269423/1000000 | 19727/25000 | `(-219299/500000, -26024985541/250000000000); (-219299/500000, -29520913643/200000000000); (-219299/500000, -65101263647/500000000000); (-219299/500000, -91393/250000); (-13636/15625, 74002907509/500000000000); (-13636/15625, 57300286357/200000000000); (-13636/15625, 1904737967/15625000000); (-13636/15625, 34267/500000); (-219299/500000, 154223626051/1000000000000); (-219299/500000, 110719/1000000); (-219299/500000, 173044236353/500000000000); (-13636/15625, 406329383233/1000000000000); (-13636/15625, 21793/40000); (-13636/15625, 4673392421/7812500000)` |
| 1 | 102 | r | 108473/200000 | 1/1 | 19894588751/34470500000 | 1/1 | 144287/250000 | 1/1 | `(896233/1000000, -54696627757/62500000000); (609/1000, -392864918373/500000000000); (896233/1000000, -11505927051/12500000000); (609/1000, -75246296539/100000000000); (896233/1000000, -258629653763/500000000000); (609/1000, -167126211/390625000); (896233/1000000, -70478013309/100000000000); (609/1000, -41935073/78125000)` |
| 2 | 113 | j | 219299/500000 | 13636/15625 | 219299/500000 | 592313/685313 | 219299/500000 | 108037/125000 | `(-20707/125000, -13114664323/125000000000); (121577/1000000, -67673316517/250000000000); (-20707/125000, 4541/62500); (121577/1000000, -214577/1000000); (-685313/1000000, 51842460677/125000000000); (-1244/3125, 62240933483/250000000000); (-685313/1000000, 592313/1000000); (-1244/3125, 7627/25000); (-20707/125000, -76579479129/250000000000); (121577/1000000, -118023467/250000000); (-685313/1000000, 53334770871/250000000000); (-1244/3125, 11890783/250000000)` |
| 3 | 127 | v | 133897/250000 | 841007/1000000 | 4854450759/9017937500 | 841007/1000000 | 53831/100000 | 841007/1000000 | `(144287/250000, -24741988253/62500000000); (144287/250000, -594338216441/1000000000000); (144287/250000, -4854450759/15625000000); (144287/250000, -78886378617/200000000000); (1/1, -160360460623/250000000000); (1/1, -1017190216441/1000000000000); (1/1, -27812743951/50000000000); (1/1, -163456778617/200000000000); (144287/250000, -449795059967/1000000000000); (144287/250000, -16206536609/25000000000); (144287/250000, -506800802091/1000000000000); (144287/250000, -2952739233/5000000000); (1/1, -695365090411/1000000000000); (1/1, -26777836609/25000000000); (1/1, -150474166507/200000000000); (1/1, -5066999233/5000000000)` |
| 4 | 941 | k | 523709/1000000 | 1/1 | 3298250587/6250000000 | 1/1 | 13193/25000 | 1/1 | `(1/1, -18269238149/25000000000); (1/1, -428374672647/500000000000); (1/1, -483069499333/500000000000); (1/1, -546059409/500000000); (1/1, -3298250587/6250000000); (1/1, -96996803361/125000000000); (1/1, -73076800379/125000000000); (1/1, -6506787/7812500)` |
| 5 | 965 | q | 22907/200000 | 317171/500000 | 22907/200000 | 68148/108037 | 22907/200000 | 9856/15625 | `(-219299/500000, -38432511713/500000000000); (-219299/500000, 52783847/6250000000); (-219299/500000, -106419568849/1000000000000); (-219299/500000, -1273896851/5000000000); (-108037/125000, 8517890649/50000000000); (-108037/125000, 2713396347/6250000000); (-108037/125000, 140803267557/1000000000000); (-108037/125000, 854593149/5000000000); (-219299/500000, 17087780527/500000000000); (-219299/500000, 59743/500000); (-219299/500000, 267845801351/1000000000000); (-108037/125000, 14069919873/50000000000); (-108037/125000, 17037/31250); (-108037/125000, 515068637757/1000000000000)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 32:20 | ACH | lo | 32207/100000 | earlier 31:20; ACH; lo; 32207/100000 |
| 32:42 | AFP | lo | 22907/200000 | earlier 31:42; AFP; lo; 22907/200000 |
| 32:58 | APQ | lo | 22907/200000 | earlier 31:58; APQ; lo; 22907/200000 |
| 32:82 | BEF | lo | 80761/250000 | earlier 31:82; BEF; lo; 80761/250000 |
| 32:92 | BES | lo | 331359/1000000 | earlier 31:92; BES; lo; 331359/1000000 |
| 32:95 | BFH | hi | 58493/100000 | vertex maximum 58493/100000 |
| 32:98 | BFQ | lo | 93/1000 | occupants none |
| 32:106 | BHQ | lo | 93/1000 | occupants none |
| 32:110 | BHS | lo | 39889/125000 | earlier 31:110; BHS; lo; 39889/125000 |
| 32:164 | EFH | lo | 28741/100000 | earlier 31:164; EFH; lo; 28741/100000 |
| 32:166 | EFP | lo | 34261/250000 | earlier 31:166; EFP; lo; 34261/250000 |
| 32:169 | EFQ | hi | 467901/1000000 | earlier 31:261; EFQ; hi; 467901/1000000 |
| 32:180 | EHS | lo | 14369/40000 | earlier 31:180; EHS; lo; 14369/40000 |
| 32:181 | EHS | hi | 5196905663/6250000000 | vertex maximum 5196905663/6250000000 |
| 32:182 | EPQ | lo | 22907/200000 | earlier 31:182; EPQ; lo; 22907/200000 |
| 32:186 | EPS | lo | 145359/1000000 | earlier 31:186; EPS; lo; 145359/1000000 |
| 32:190 | EQS | lo | 6929/40000 | earlier 31:190; EQS; lo; 6929/40000 |
| 32:192 | ERS | lo | 93/1000 | occupants none |
| 32:196 | FHQ | lo | 93/1000 | occupants none |
| 32:212 | FRS | lo | 93/1000 | occupants none |
| 32:218 | HPS | lo | 39889/125000 | earlier 31:218; HPS; lo; 39889/125000 |
| 32:220 | HQR | lo | 93/1000 | occupants none |
| 32:222 | HQS | lo | 93/1000 | occupants none |
| 32:224 | HRS | lo | 327879/1000000 | earlier 31:341; HRS; lo; 327879/1000000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 767 | plu | BRS * EHS = BES * HRS + BHS * ERS | circuit SBEHR |
| 3035 | bary | outer BFH; fans FHQ, BHQ, BFQ; target QRS; sign 1; vertices BRS 1; FRS 1; HRS 1 | container BFH; inner Q; line RS |
| 3617 | four | -1 * HQR + 1 * HRS + -1 * HQS + -1 * QRS = 0 | vertices HQRS |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 32:236 | BRS | lo | 10397/62500 | 138323073561/831504906080 | 767 | 32:92, 32:224, 32:110, 32:192, 32:181 |
| 32:242 | QRS | lo | 71003/500000 | 83063973/584930000 | 3035 | 32:95, 32:196, 32:106, 32:98, 32:236, 32:212, 32:224 |
| 32:255 | HRS | lo | 164003/500000 | 164003/500000 | 3617 | 32:220, 32:222, 32:242 |
| 32:257 | BRS | lo | 166403/1000000 | 69182578077/415752453040 | 767 | 32:92, 32:255, 32:110, 32:192, 32:181 |
| 32:262 | QRS | lo | 71017/500000 | 83080527/584930000 | 3035 | 32:95, 32:196, 32:106, 32:98, 32:257, 32:212, 32:255 |
| 32:265 | HRS | lo | 164017/500000 | 164017/500000 | 3617 | 32:220, 32:222, 32:262 |
| 32:267 | BRS | lo | 83207/500000 | 69187217103/415752453040 | 767 | 32:92, 32:265, 32:110, 32:192, 32:181 |
| 32:270 | QRS | lo | 142041/1000000 | 41542077/292465000 | 3035 | 32:95, 32:196, 32:106, 32:98, 32:267, 32:212, 32:265 |
| 32:273 | HRS | lo | 328041/1000000 | 328041/1000000 | 3617 | 32:220, 32:222, 32:270 |
| 32:275 | BRS | lo | 166417/1000000 | 138376753719/831504906080 | 767 | 32:92, 32:273, 32:110, 32:192, 32:181 |
| 32:278 | QRS | lo | 71021/500000 | 20771271/146232500 | 3035 | 32:95, 32:196, 32:106, 32:98, 32:275, 32:212, 32:273 |
| 32:280 | HRS | lo | 164021/500000 | 164021/500000 | 3617 | 32:220, 32:222, 32:278 |

## Stage 33

| Property | Value |
| --- | --- |
| Scope | root/AFQ+/BPS+/HQR- |
| Packet | forest:root/AFQ+/BPS+/HQR- |
| Index | 2 |
| Context | 11 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 32 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| b | 103767/1000000 | 58493/100000 | 103767/1000000 | 58493/100000 |
| c | 135501/250000 | 1/1 | 135501/250000 | 1/1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 155651/500000 | 58493/100000 | 155651/500000 | 58493/100000 |
| h | 580747/1000000 | 1/1 | 580747/1000000 | 1/1 |
| p | 58779/250000 | 158493/200000 | 58779/250000 | 158493/200000 |
| q | 22907/200000 | 9856/15625 | 22907/200000 | 630753/1000000 |
| u | 103767/1000000 | 75479/200000 | 103767/1000000 | 75479/200000 |
| v | 53831/100000 | 841007/1000000 | 538331/1000000 | 841007/1000000 |
| r | 144287/250000 | 1/1 | 288717/500000 | 1/1 |
| w | 269423/1000000 | 19727/25000 | 269423/1000000 | 197177/250000 |
| j | 219299/500000 | 108037/125000 | 219299/500000 | 432111/500000 |
| k | 13193/25000 | 1/1 | 105551/200000 | 1/1 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 102 | A_EFR | bitt ["actual-area","EFR",[]] | `-1/1 * f * w + 1/1 * e * f + 1/1 * w + 1/1 * r + -1093/1000 + -1/1 * e * r` |
| 113 | A_ERS | bitt ["actual-area","ERS",[]] | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 127 | A_HQR | bitt ["actual-area","HQR",[]] | `-1/1 * u * w + 1/1 * h * u + 1/1 * v * r + -1/1 * h * r + -93/1000` |
| 941 | AREA_lo_EHS | bitt ["earlier-area",{"direction":"lo","ref":"32:180","triangle":"EHS","value":"14369/40000"}] | `1/1 * k + 1/1 * h * j + -1/1 * h + -1/1 * e * j + -14369/40000` |
| 965 | AREA_lo_HPS | bitt ["earlier-area",{"direction":"lo","ref":"32:218","triangle":"HPS","value":"39889/125000"}] | `1/1 * p * k + -1/1 * h * p + -1/1 * q * j + 1/1 * h * j + -39889/125000` |
| 969 | AREA_lo_HRS | bitt ["earlier-area",{"direction":"lo","ref":"32:280","triangle":"HRS","value":"164021/500000"}] | `1/1 * r * k + -1/1 * h * r + -1/1 * w * j + 1/1 * h * j + -164021/500000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 969 | w | 269423/1000000 | 19727/25000 | 269423/1000000 | 172962736353/219299000000 | 269423/1000000 | 197177/250000 | `(-219299/500000, -10393195429/100000000000); (-219299/500000, -1012621609/6250000000); (-219299/500000, -63177263647/500000000000); (-219299/500000, -90431/250000); (-108037/125000, 35822720529/250000000000); (-108037/125000, 1647990891/6250000000); (-108037/125000, 15108538639/125000000000); (-108037/125000, 31987/500000); (-219299/500000, 3372870063/20000000000); (-219299/500000, 27639/250000); (-219299/500000, 172962736353/500000000000); (-108037/125000, 103966584889/250000000000); (-108037/125000, 268127/500000); (-108037/125000, 74143538639/125000000000)` |
| 1 | 102 | r | 144287/250000 | 1/1 | 258757751591/448116500000 | 1/1 | 288717/500000 | 1/1 | `(896233/1000000, -54696627757/62500000000); (609/1000, -392864918373/500000000000); (896233/1000000, -11505927051/12500000000); (609/1000, -75246296539/100000000000); (896233/1000000, -258757751591/500000000000); (609/1000, -53512411977/125000000000); (896233/1000000, -70493453913/100000000000); (609/1000, -13423083511/25000000000)` |
| 2 | 113 | j | 219299/500000 | 108037/125000 | 219299/500000 | 591941/684941 | 219299/500000 | 432111/500000 | `(-20707/125000, -53246061699/500000000000); (121577/1000000, -1702188897/6250000000); (-20707/125000, 4541/62500); (121577/1000000, -214577/1000000); (-684941/1000000, 206396438301/500000000000); (-99427/250000, 1543342353/6250000000); (-684941/1000000, 591941/1000000); (-99427/250000, 76177/250000); (-20707/125000, -153030796939/500000000000); (121577/1000000, -235959847/500000000); (-684941/1000000, 106611703061/500000000000); (-99427/250000, 23682653/500000000)` |
| 3 | 127 | v | 53831/100000 | 841007/1000000 | 155425471109/288717000000 | 841007/1000000 | 538331/1000000 | 841007/1000000 | `(288717/500000, -39603790569/100000000000); (288717/500000, -594624216441/1000000000000); (288717/500000, -155425471109/500000000000); (288717/500000, -78943578617/200000000000); (1/1, -160360460623/250000000000); (1/1, -1017190216441/1000000000000); (1/1, -27812743951/50000000000); (1/1, -163456778617/200000000000); (288717/500000, -89984510457/200000000000); (288717/500000, -162127215759/250000000000); (288717/500000, -506826504793/1000000000000); (288717/500000, -29534672783/50000000000); (1/1, -695326489087/1000000000000); (1/1, -267768715759/250000000000); (1/1, -150446088319/200000000000); (1/1, -50662972783/50000000000)` |
| 4 | 941 | k | 13193/25000 | 1/1 | 13193884761/25000000000 | 1/1 | 105551/200000 | 1/1 | `(1/1, -18269238149/25000000000); (1/1, -428374672647/500000000000); (1/1, -483069499333/500000000000); (1/1, -546059409/500000000); (1/1, -13193884761/25000000000); (1/1, -387994234083/500000000000); (1/1, -292340362137/500000000000); (1/1, -416456901/500000000)` |
| 5 | 965 | q | 22907/200000 | 9856/15625 | 22907/200000 | 272555/432111 | 22907/200000 | 630753/1000000 | `(-219299/500000, -38428397183/500000000000); (-219299/500000, 422682229/50000000000); (-219299/500000, -53195916287/500000000000); (-219299/500000, -10190065357/40000000000); (-432111/500000, 85161533381/500000000000); (-432111/500000, 21703882229/50000000000); (-432111/500000, 70394014277/500000000000); (-432111/500000, 6834894643/40000000000); (-219299/500000, 17087780527/500000000000); (-219299/500000, 59743/500000); (-219299/500000, 267845801351/1000000000000); (-432111/500000, 140677711091/500000000000); (-432111/500000, 54511/100000); (-432111/500000, 515025662479/1000000000000)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 33:20 | ACH | lo | 32207/100000 | earlier 32:20; ACH; lo; 32207/100000 |
| 33:42 | AFP | lo | 22907/200000 | earlier 32:42; AFP; lo; 22907/200000 |
| 33:58 | APQ | lo | 22907/200000 | earlier 32:58; APQ; lo; 22907/200000 |
| 33:82 | BEF | lo | 80761/250000 | earlier 32:82; BEF; lo; 80761/250000 |
| 33:92 | BES | lo | 331359/1000000 | earlier 32:92; BES; lo; 331359/1000000 |
| 33:95 | BFH | hi | 58493/100000 | vertex maximum 58493/100000 |
| 33:98 | BFQ | lo | 93/1000 | occupants none |
| 33:106 | BHQ | lo | 93/1000 | occupants none |
| 33:110 | BHS | lo | 39889/125000 | earlier 32:110; BHS; lo; 39889/125000 |
| 33:164 | EFH | lo | 28741/100000 | earlier 32:164; EFH; lo; 28741/100000 |
| 33:166 | EFP | lo | 34261/250000 | earlier 32:166; EFP; lo; 34261/250000 |
| 33:169 | EFQ | hi | 467901/1000000 | earlier 32:169; EFQ; hi; 467901/1000000 |
| 33:180 | EHS | lo | 14369/40000 | earlier 32:180; EHS; lo; 14369/40000 |
| 33:181 | EHS | hi | 20786740239/25000000000 | vertex maximum 20786740239/25000000000 |
| 33:182 | EPQ | lo | 22907/200000 | earlier 32:182; EPQ; lo; 22907/200000 |
| 33:186 | EPS | lo | 145359/1000000 | earlier 32:186; EPS; lo; 145359/1000000 |
| 33:190 | EQS | lo | 6929/40000 | earlier 32:190; EQS; lo; 6929/40000 |
| 33:192 | ERS | lo | 93/1000 | occupants none |
| 33:196 | FHQ | lo | 93/1000 | occupants none |
| 33:212 | FRS | lo | 93/1000 | occupants none |
| 33:218 | HPS | lo | 39889/125000 | earlier 32:218; HPS; lo; 39889/125000 |
| 33:220 | HQR | lo | 93/1000 | occupants none |
| 33:222 | HQS | lo | 93/1000 | occupants none |
| 33:224 | HRS | lo | 164021/500000 | earlier 32:280; HRS; lo; 164021/500000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 767 | plu | BRS * EHS = BES * HRS + BHS * ERS | circuit SBEHR |
| 3035 | bary | outer BFH; fans FHQ, BHQ, BFQ; target QRS; sign 1; vertices BRS 1; FRS 1; HRS 1 | container BFH; inner Q; line RS |
| 3617 | four | -1 * HQR + 1 * HRS + -1 * HQS + -1 * QRS = 0 | vertices HQRS |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 33:236 | BRS | lo | 20803/125000 | 23062847513/138578268260 | 767 | 33:92, 33:224, 33:110, 33:192, 33:181 |
| 33:240 | QRS | lo | 35511/250000 | 20771457/146232500 | 3035 | 33:95, 33:196, 33:106, 33:98, 33:236, 33:212, 33:224 |
| 33:248 | HRS | lo | 82011/250000 | 82011/250000 | 3617 | 33:220, 33:222, 33:240 |

## Stage 34

| Property | Value |
| --- | --- |
| Scope | root/AFQ+/BPS+/HQR- |
| Packet | forest:root/AFQ+/BPS+/HQR- |
| Index | 3 |
| Context | 11 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 33 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| b | 103767/1000000 | 58493/100000 | 103767/1000000 | 58493/100000 |
| c | 135501/250000 | 1/1 | 135501/250000 | 1/1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 155651/500000 | 58493/100000 | 155651/500000 | 58493/100000 |
| h | 580747/1000000 | 1/1 | 580747/1000000 | 1/1 |
| p | 58779/250000 | 158493/200000 | 58779/250000 | 158493/200000 |
| q | 22907/200000 | 630753/1000000 | 22907/200000 | 19711/31250 |
| u | 103767/1000000 | 75479/200000 | 103767/1000000 | 75479/200000 |
| v | 538331/1000000 | 841007/1000000 | 538331/1000000 | 841007/1000000 |
| r | 288717/500000 | 1/1 | 577437/1000000 | 1/1 |
| w | 269423/1000000 | 197177/250000 | 269423/1000000 | 788703/1000000 |
| j | 219299/500000 | 432111/500000 | 219299/500000 | 864221/1000000 |
| k | 105551/200000 | 1/1 | 105551/200000 | 1/1 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 102 | A_EFR | bitt ["actual-area","EFR",[]] | `-1/1 * f * w + 1/1 * e * f + 1/1 * w + 1/1 * r + -1093/1000 + -1/1 * e * r` |
| 113 | A_ERS | bitt ["actual-area","ERS",[]] | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 965 | AREA_lo_HPS | bitt ["earlier-area",{"direction":"lo","ref":"33:218","triangle":"HPS","value":"39889/125000"}] | `1/1 * p * k + -1/1 * h * p + -1/1 * q * j + 1/1 * h * j + -39889/125000` |
| 969 | AREA_lo_HRS | bitt ["earlier-area",{"direction":"lo","ref":"33:248","triangle":"HRS","value":"82011/250000"}] | `1/1 * r * k + -1/1 * h * r + -1/1 * w * j + 1/1 * h * j + -82011/250000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 969 | w | 269423/1000000 | 197177/250000 | 269423/1000000 | 172961736353/219299000000 | 269423/1000000 | 788703/1000000 | `(-219299/500000, -51964454911/500000000000); (-219299/500000, -16213631933/100000000000); (-219299/500000, -63160763647/500000000000); (-219299/500000, -361691/1000000); (-432111/500000, 71625475653/500000000000); (-432111/500000, 26348768067/100000000000); (-432111/500000, 60429166917/500000000000); (-432111/500000, 63933/1000000); (-219299/500000, 42190352377/250000000000); (-219299/500000, 55277/500000); (-219299/500000, 172961736353/500000000000); (-432111/500000, 103985317659/250000000000); (-432111/500000, 268089/500000); (-432111/500000, 296551666917/500000000000)` |
| 1 | 102 | r | 288717/500000 | 1/1 | 2488071859/4308812500 | 1/1 | 577437/1000000 | 1/1 | `(896233/1000000, -54696627757/62500000000); (609/1000, -392864918373/500000000000); (896233/1000000, -11505927051/12500000000); (609/1000, -75246296539/100000000000); (896233/1000000, -32344934167/62500000000); (609/1000, -214051369653/500000000000); (896233/1000000, -8811707681/12500000000); (609/1000, -53692541579/100000000000)` |
| 2 | 113 | j | 219299/500000 | 432111/500000 | 219299/500000 | 24664/28539 | 219299/500000 | 864221/1000000 | `(-20707/125000, -26626410311/250000000000); (121577/1000000, -54472920613/200000000000); (-20707/125000, 4541/62500); (121577/1000000, -214577/1000000); (-85617/125000, 103193589689/250000000000); (-397703/1000000, 49383079387/200000000000); (-85617/125000, 9249/15625); (-397703/1000000, 304703/1000000); (-20707/125000, -306058905179/1000000000000); (121577/1000000, -471917867/1000000000); (-85617/125000, 213221094821/1000000000000); (-397703/1000000, 47362133/1000000000)` |
| 3 | 965 | q | 22907/200000 | 630753/1000000 | 22907/200000 | 545109/864221 | 22907/200000 | 19711/31250 | `(-219299/500000, -38428397183/500000000000); (-219299/500000, 422682229/50000000000); (-219299/500000, -53195916287/500000000000); (-219299/500000, -10190065357/40000000000); (-864221/1000000, 34064497203/200000000000); (-864221/1000000, 21703832229/50000000000); (-864221/1000000, 140787447807/1000000000000); (-864221/1000000, 6834854643/40000000000); (-219299/500000, 17087780527/500000000000); (-219299/500000, 59743/500000); (-219299/500000, 267845801351/1000000000000); (-864221/1000000, 56270968287/200000000000); (-864221/1000000, 545109/1000000); (-864221/1000000, 128756270433/250000000000)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 34:20 | ACH | lo | 32207/100000 | earlier 33:20; ACH; lo; 32207/100000 |
| 34:42 | AFP | lo | 22907/200000 | earlier 33:42; AFP; lo; 22907/200000 |
| 34:58 | APQ | lo | 22907/200000 | earlier 33:58; APQ; lo; 22907/200000 |
| 34:82 | BEF | lo | 80761/250000 | earlier 33:82; BEF; lo; 80761/250000 |
| 34:92 | BES | lo | 331359/1000000 | earlier 33:92; BES; lo; 331359/1000000 |
| 34:110 | BHS | lo | 39889/125000 | earlier 33:110; BHS; lo; 39889/125000 |
| 34:164 | EFH | lo | 28741/100000 | earlier 33:164; EFH; lo; 28741/100000 |
| 34:166 | EFP | lo | 34261/250000 | earlier 33:166; EFP; lo; 34261/250000 |
| 34:169 | EFQ | hi | 467901/1000000 | earlier 33:169; EFQ; hi; 467901/1000000 |
| 34:180 | EHS | lo | 14369/40000 | earlier 33:180; EHS; lo; 14369/40000 |
| 34:182 | EPQ | lo | 22907/200000 | earlier 33:182; EPQ; lo; 22907/200000 |
| 34:186 | EPS | lo | 145359/1000000 | earlier 33:186; EPS; lo; 145359/1000000 |
| 34:190 | EQS | lo | 6929/40000 | earlier 33:190; EQS; lo; 6929/40000 |
| 34:218 | HPS | lo | 39889/125000 | earlier 33:218; HPS; lo; 39889/125000 |
| 34:224 | HRS | lo | 82011/250000 | earlier 33:248; HRS; lo; 82011/250000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
