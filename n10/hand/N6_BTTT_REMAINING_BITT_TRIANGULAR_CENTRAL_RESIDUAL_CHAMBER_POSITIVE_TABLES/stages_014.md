# BITT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 70

| Property | Value |
| --- | --- |
| Scope | root/AFP+/CFQ+/AEQ+/HEQ-/PQR+/PQS+/PRS+ |
| Packet | forest:root/AFP+/CFQ+/AEQ+/HEQ-/PQR+/PQS+/PRS+ |
| Index | 1 |
| Context | 25 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 69 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 145431/250000 | 103767/1000000 | 145431/250000 |
| c | 135501/250000 | 1/1 | 135501/250000 | 1/1 |
| e | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| f | 155651/500000 | 344349/500000 | 155651/500000 | 344349/500000 |
| h | 796617/1000000 | 1/1 | 796617/1000000 | 1/1 |
| p | 22907/200000 | 425453/1000000 | 22907/200000 | 425453/1000000 |
| q | 387853/1000000 | 158493/200000 | 387853/1000000 | 158493/200000 |
| u | 17473/50000 | 845747/1000000 | 17473/50000 | 845747/1000000 |
| v | 196767/1000000 | 7987/12500 | 196767/1000000 | 638959/1000000 |
| r | 82331/125000 | 1/1 | 82331/125000 | 1/1 |
| w | 508879/1000000 | 1/1 | 508879/1000000 | 1/1 |
| j | 247401/500000 | 896233/1000000 | 247401/500000 | 896233/1000000 |
| k | 544857/1000000 | 8033/8963 | 544857/1000000 | 8033/8963 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 121 | A_FQR | bitt ["actual-area","FQR",["S"]] | `1/1 * u * w + -1/1 * u + -1/1 * f * w + -1/1 * v * r + 1/1 * f * v + 1/1 * r + -279/1000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 121 | v | 196767/1000000 | 7987/12500 | 196767/1000000 | 99454452899/155651000000 | 196767/1000000 | 638959/1000000 | `(-173673/500000, 24802902441/500000000000); (601/20000, -71221547101/500000000000); (-173673/500000, -38826232569/200000000000); (601/20000, -386180061929/1000000000000); (-344349/500000, 195478902441/500000000000); (-155651/500000, 99454452899/500000000000); (-344349/500000, 29444167431/200000000000); (-155651/500000, -44828061929/1000000000000); (-173673/500000, 34173/500000); (601/20000, -6181/20000); (-344349/500000, 204849/500000); (-155651/500000, 16151/500000)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 70:9 | ABP | hi | 220541/500000 | earlier 69:396; ABP; hi; 220541/500000 |
| 70:15 | ABS | hi | 76611/125000 | earlier 69:256; ABS; hi; 76611/125000 |
| 70:16 | ACE | lo | 95621/1000000 | earlier 69:16; ACE; lo; 95621/1000000 |
| 70:20 | ACH | lo | 141899/500000 | earlier 69:20; ACH; lo; 141899/500000 |
| 70:23 | ACP | hi | 700583/1000000 | earlier 69:23; ACP; hi; 700583/1000000 |
| 70:26 | ACR | lo | 9471/100000 | earlier 69:340; ACR; lo; 9471/100000 |
| 70:30 | AEF | lo | 296663/1000000 | earlier 69:334; AEF; lo; 296663/1000000 |
| 70:34 | AEP | lo | 37273/250000 | earlier 69:341; AEP; lo; 37273/250000 |
| 70:37 | AEQ | hi | 503073/1000000 | earlier 69:37; AEQ; hi; 503073/1000000 |
| 70:38 | AER | lo | 122613/1000000 | earlier 69:38; AER; lo; 122613/1000000 |
| 70:41 | AES | hi | 190299/250000 | earlier 69:41; AES; hi; 190299/250000 |
| 70:47 | AFQ | hi | 340641/500000 | earlier 69:47; AFQ; hi; 340641/500000 |
| 70:55 | AHQ | hi | 710233/1000000 | earlier 69:55; AHQ; hi; 710233/1000000 |
| 70:60 | APQ | lo | 98963/1000000 | earlier 69:361; APQ; lo; 98963/1000000 |
| 70:62 | APR | lo | 18727/200000 | earlier 69:252; APR; lo; 18727/200000 |
| 70:67 | ARS | hi | 20783/40000 | earlier 69:301; ARS; hi; 20783/40000 |
| 70:72 | BCH | lo | 349719/1000000 | earlier 69:72; BCH; lo; 349719/1000000 |
| 70:75 | BCP | hi | 710233/1000000 | earlier 69:75; BCP; hi; 710233/1000000 |
| 70:89 | BEQ | hi | 67527/125000 | earlier 69:89; BEQ; hi; 67527/125000 |
| 70:90 | BER | lo | 60863/500000 | earlier 69:90; BER; lo; 60863/500000 |
| 70:93 | BES | hi | 29499/40000 | earlier 69:303; BES; hi; 29499/40000 |
| 70:99 | BFQ | hi | 640059/1000000 | earlier 69:99; BFQ; hi; 640059/1000000 |
| 70:108 | BHR | lo | 344993/1000000 | earlier 69:445; BHR; lo; 344993/1000000 |
| 70:114 | BPR | lo | 158993/1000000 | earlier 69:438; BPR; lo; 158993/1000000 |
| 70:115 | BPR | hi | 780767/1000000 | earlier 69:115; BPR; hi; 780767/1000000 |
| 70:116 | BPS | lo | 65959/500000 | earlier 69:439; BPS; lo; 65959/500000 |
| 70:120 | CEF | lo | 10961/100000 | earlier 69:436; CEF; lo; 10961/100000 |
| 70:124 | CEP | lo | 62679/500000 | earlier 69:419; CEP; lo; 62679/500000 |
| 70:132 | CFH | lo | 308203/1000000 | earlier 69:452; CFH; lo; 308203/1000000 |
| 70:137 | CFQ | hi | 536809/1000000 | earlier 69:453; CFQ; hi; 536809/1000000 |
| 70:138 | CFR | lo | 58027/200000 | earlier 69:339; CFR; lo; 58027/200000 |
| 70:146 | CHR | lo | 85613/250000 | earlier 69:247; CHR; lo; 85613/250000 |
| 70:149 | CHS | hi | 379673/500000 | earlier 69:321; CHS; hi; 379673/500000 |
| 70:155 | CPS | hi | 685329/1000000 | earlier 69:421; CPS; hi; 685329/1000000 |
| 70:157 | CQR | hi | 157253/250000 | earlier 69:157; CQR; hi; 157253/250000 |
| 70:160 | CRS | lo | 20827/200000 | earlier 69:244; CRS; lo; 20827/200000 |
| 70:162 | EFH | lo | 147063/1000000 | earlier 69:162; EFH; lo; 147063/1000000 |
| 70:164 | EFP | lo | 15743/100000 | earlier 69:437; EFP; lo; 15743/100000 |
| 70:166 | EFQ | lo | 110663/1000000 | earlier 69:248; EFQ; lo; 110663/1000000 |
| 70:172 | EHP | lo | 102901/1000000 | earlier 69:172; EHP; lo; 102901/1000000 |
| 70:175 | EHQ | hi | 51827/100000 | earlier 69:387; EHQ; hi; 51827/100000 |
| 70:176 | EHR | lo | 120731/500000 | earlier 69:176; EHR; lo; 120731/500000 |
| 70:178 | EHS | lo | 20439/200000 | earlier 69:388; EHS; lo; 20439/200000 |
| 70:180 | EPR | lo | 164083/1000000 | earlier 69:180; EPR; lo; 164083/1000000 |
| 70:182 | EPS | lo | 22091/200000 | earlier 69:422; EPS; lo; 22091/200000 |
| 70:187 | EQS | hi | 9603/20000 | earlier 69:332; EQS; hi; 9603/20000 |
| 70:197 | FHS | hi | 342331/1000000 | earlier 69:327; FHS; hi; 342331/1000000 |
| 70:211 | HPQ | hi | 2663/6250 | earlier 69:404; HPQ; hi; 2663/6250 |
| 70:213 | HPR | hi | 306073/500000 | earlier 69:213; HPR; hi; 306073/500000 |
| 70:215 | HPS | hi | 117023/250000 | earlier 69:329; HPS; hi; 117023/250000 |
| 70:217 | HQR | hi | 741163/1000000 | earlier 69:217; HQR; hi; 741163/1000000 |
| 70:221 | PQR | hi | 123443/200000 | earlier 69:289; PQR; hi; 123443/200000 |
| 70:223 | PQS | hi | 123159/250000 | earlier 69:424; PQS; hi; 123159/250000 |
| 70:225 | PRS | hi | 328343/1000000 | earlier 69:333; PRS; hi; 328343/1000000 |
| 70:227 | QRS | hi | 183121/500000 | earlier 69:309; QRS; hi; 183121/500000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |


## Stage 71

| Property | Value |
| --- | --- |
| Scope | root/AFP+/CFQ+/AEQ+/HEQ-/PQR+/PQS+/PRS+ |
| Packet | forest:root/AFP+/CFQ+/AEQ+/HEQ-/PQR+/PQS+/PRS+ |
| Index | 2 |
| Context | 25 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 70 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 145431/250000 | 103767/1000000 | 145431/250000 |
| c | 135501/250000 | 1/1 | 135501/250000 | 1/1 |
| e | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| f | 155651/500000 | 344349/500000 | 155651/500000 | 344349/500000 |
| h | 796617/1000000 | 1/1 | 796617/1000000 | 1/1 |
| p | 22907/200000 | 425453/1000000 | 22907/200000 | 425453/1000000 |
| q | 387853/1000000 | 158493/200000 | 387853/1000000 | 158493/200000 |
| u | 17473/50000 | 845747/1000000 | 17473/50000 | 845747/1000000 |
| v | 196767/1000000 | 638959/1000000 | 196767/1000000 | 638959/1000000 |
| r | 82331/125000 | 1/1 | 82331/125000 | 1/1 |
| w | 508879/1000000 | 1/1 | 508879/1000000 | 1/1 |
| j | 247401/500000 | 896233/1000000 | 247401/500000 | 896233/1000000 |
| k | 544857/1000000 | 8033/8963 | 544857/1000000 | 8033/8963 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 1 | AC_ABC_ABC_0 | bitt ["anchor-cap","ABC","ABC",0,[]] | `-93/1000 + 1/1 * a` |
| 20 | AC_ACP_ACH_1 | bitt ["anchor-cap","ACP","ACH",1,[]] | `-93/1000 + 1/1 * c` |
| 29 | AC_AEQ_AEF_0 | bitt ["anchor-cap","AEQ","AEF",0,[]] | `907/1000 + -1/1 * a` |
| 51 | AC_BCP_BCH_0 | bitt ["anchor-cap","BCP","BCH",0,[]] | `-93/1000 + 1/1 * h` |
| 58 | AC_BEH_BEH_0 | bitt ["anchor-cap","BEH","BEH",0,["P","Q"]] | `-13857/20000 + 1/1 * h` |
| 61 | AC_BEQ_BEF_0 | bitt ["anchor-cap","BEQ","BEF",0,[]] | `907/1000 + -1/1 * b` |
| 78 | AC_CEF_CEF_0 | bitt ["anchor-cap","CEF","CEF",0,[]] | `907/1000 + -1/1 * f` |
| 100 | AC_EFH_EFH_0 | bitt ["anchor-cap","EFH","EFH",0,[]] | `907/1000 + -1/1 * e` |
| 134 | ea | bitt ["contact-order","ea"] | `1/1 * e + -1/1 * a` |
| 135 | he | bitt ["contact-order","he"] | `1/1 * h + -1/1 * e` |
| 138 | sym | bitt ["contact-order","sym"] | `1/1 * f + -1/1 * e` |
| 141 | upper-quad | bitt ["upper-quad","BITT"] | `346/625 + -1/1 * c * h + 1/1 * f * h + 1/1 * c * e + -1/1 * e * f` |
| 145 | lower-sum | bitt ["lower-sum"] | `907/1000 + -1/1 * p + -1/1 * q` |
| 147 | central-p-floor | bitt ["central-floor",0,"102650331/896233000"] | `1/1 * p + -102650331/896233000` |
| 148 | central-q-floor | bitt ["central-floor",1,"102650331/896233000"] | `1/1 * q + -102650331/896233000` |
| 149 | central-x | bitt ["central-lower-x"] | `1/1 * c * h * p + -1/1 * b * h * p + -93/1000 * c + -93/1000 * b` |
| 151 | WBARY_RS_0 | bitt ["weighted-barycentric","R","S",["1/1","1/1","1/1"],"102872312439/15500000000",0] | `102872312439/15500000000 * j + -1/1 + -71872312439/15500000000 * f + -1/1 * r` |
| 154 | WBARY_RS_3 | bitt ["weighted-barycentric","R","S",["1/1","1/1","1/1"],"102872312439/15500000000",3] | `71872312439/15500000000 + 1/1 * e + 1/1 * w + -102872312439/15500000000 * k` |
| 168 | SUP_ABE_BEH_ABH | bitt ["support-envelope",["quad","BEHA",["P","Q"],"139/10"],"ABE","BEH","ABH","2015236007/5000000000"] | `2015236007/5000000000 * h + 4448263993/5000000000 * b * h + -4448263993/5000000000 * b * e + -12927/10000 * a` |
| 256 | SUP_AES_EHS_AEH | bitt ["support-envelope",["quad","ESHA",["P","Q"],"199/10"],"AES","EHS","AEH","7102936379/8963000000"] | `-9484887721/8963000000 * k + 7102936379/8963000000 * h * j + 9484887721/8963000000 * h + 9484887721/8963000000 * e * j + -18507/10000 * a * j` |
| 257 | SUP_EHS_AHS_AES | bitt ["support-envelope",["quad","SHAE",["P","Q"],"139/10"],"EHS","AHS","AES","129170835983803/179260000000000"] | `-102558566016197/179260000000000 * h * j + 102558566016197/179260000000000 * a * j + 12927/10000 * h + -12927/10000 * a` |
| 409 | SUP_FHP_CHP_CFH | bitt ["support-envelope",["quad","HPCF",["Q"],"12/1"],"FHP","CHP","CFH","210792207303/500000000000"] | `-210792207303/500000000000 * c * q + 347207792697/500000000000 * h * p + -347207792697/500000000000 * c * h + 279/250 * f * q + -279/250 * p + 279/250 * c` |
| 533 | SUP_ABE_ABP_BEP | bitt ["support-envelope",["pentagon","BEFPA"],"ABE","ABP","BEP","2015236007/5000000000"] | `-3099763993/5000000000 * b * q + 3099763993/5000000000 * a * b + 2015236007/5000000000 * a * p + -1023/1000 * a + 1023/1000 * q + -1023/1000 * e * p` |
| 548 | SUP_APR_EPR_AEP | bitt ["support-envelope",["pentagon","PABER"],"APR","EPR","AEP","16057462427/25000000000"] | `9517537573/25000000000 * p * w + -9517537573/25000000000 * e * p + 16057462427/25000000000 * w + -9517537573/25000000000 * q * r + 9517537573/25000000000 * q + -16057462427/25000000000 * e * r + 1023/1000 * a * r + -1023/1000 * a` |
| 620 | SUP_EFS_AES_AFS | bitt ["support-envelope",["pentagon","SFHAE"],"EFS","AES","AFS","4058224369104849/8963000000000000"] | `-5110924630895151/8963000000000000 * k + -4058224369104849/8963000000000000 * a + 5110924630895151/8963000000000000 * e * j + -5110924630895151/8963000000000000 * a * j + -1023/1000 * e * f + 1023/1000 + 1023/1000 * a * f` |
| 690 | SUP_CHP_HPR_CPR | bitt ["support-envelope",["pentagon","PCERH"],"CHP","HPR","CPR","124403/250000"] | `-131347/250000 * p * w + 131347/250000 * h * p + 131347/250000 * q * r + 124403/250000 * h * r + -1023/1000 * c * h + 1023/1000 * c * w` |
| 694 | SUP_CPS_PRS_CPR | bitt ["support-envelope",["pentagon","PCERS"],"CPS","PRS","CPR","6752212379404287/8963000000000000"] | `6752212379404287/8963000000000000 * r * k + 2416936620595713/8963000000000000 * q * r + 2416936620595713/8963000000000000 * p * k + -6752212379404287/8963000000000000 * w * j + -2416936620595713/8963000000000000 * p * w + -2416936620595713/8963000000000000 * q * j + -1023/1000 * c * k + 1023/1000 * c * w` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |


### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 71:0 | ABC | lo | 93/1000 | occupants none |
| 71:2 | ABE | lo | 93/1000 | occupants none |
| 71:4 | ABF | lo | 93/1000 | occupants none |
| 71:6 | ABH | lo | 93/1000 | occupants none |
| 71:7 | ABH | hi | 130340061423/250000000000 | vertex maximum 130340061423/250000000000 |
| 71:8 | ABP | lo | 93/1000 | occupants none |
| 71:9 | ABP | hi | 220541/500000 | earlier 70:9; ABP; hi; 220541/500000 |
| 71:10 | ABQ | lo | 93/1000 | occupants none |
| 71:12 | ABR | lo | 93/1000 | occupants none |
| 71:13 | ABR | hi | 3550987367/5000000000 | vertex maximum 3550987367/5000000000 |
| 71:14 | ABS | lo | 93/1000 | occupants none |
| 71:15 | ABS | hi | 76611/125000 | earlier 70:15; ABS; hi; 76611/125000 |
| 71:16 | ACE | lo | 95621/1000000 | earlier 70:16; ACE; lo; 95621/1000000 |
| 71:18 | ACF | lo | 279/1000 | occupants Q |
| 71:19 | ACF | hi | 483848562683/500000000000 | vertex maximum 483848562683/500000000000 |
| 71:20 | ACH | lo | 141899/500000 | earlier 70:20; ACH; lo; 141899/500000 |
| 71:23 | ACP | hi | 700583/1000000 | earlier 70:23; ACP; hi; 700583/1000000 |
| 71:24 | ACQ | lo | 93/1000 | occupants none |
| 71:26 | ACR | lo | 9471/100000 | earlier 70:26; ACR; lo; 9471/100000 |
| 71:30 | AEF | lo | 296663/1000000 | earlier 70:30; AEF; lo; 296663/1000000 |
| 71:31 | AEF | hi | 896233/1000000 | vertex maximum 896233/1000000 |
| 71:32 | AEH | lo | 13857/20000 | occupants P, Q |
| 71:33 | AEH | hi | 896233/1000000 | vertex maximum 896233/1000000 |
| 71:34 | AEP | lo | 37273/250000 | earlier 70:34; AEP; lo; 37273/250000 |
| 71:35 | AEP | hi | 344349/500000 | vertex maximum 344349/500000 |
| 71:36 | AEQ | lo | 93/1000 | occupants none |
| 71:37 | AEQ | hi | 503073/1000000 | earlier 70:37; AEQ; hi; 503073/1000000 |
| 71:38 | AER | lo | 122613/1000000 | earlier 70:38; AER; lo; 122613/1000000 |
| 71:39 | AER | hi | 896233/1000000 | vertex maximum 896233/1000000 |
| 71:41 | AES | hi | 190299/250000 | earlier 70:41; AES; hi; 190299/250000 |
| 71:42 | AFH | lo | 279/1000 | occupants P |
| 71:43 | AFH | hi | 308616937317/500000000000 | vertex maximum 308616937317/500000000000 |
| 71:44 | AFP | lo | 93/1000 | occupants none |
| 71:46 | AFQ | lo | 93/1000 | occupants none |
| 71:47 | AFQ | hi | 340641/500000 | earlier 70:47; AFQ; hi; 340641/500000 |
| 71:48 | AFR | lo | 279/1000 | occupants S |
| 71:49 | AFR | hi | 48132551511/62500000000 | vertex maximum 48132551511/62500000000 |
| 71:50 | AFS | lo | 93/1000 | occupants none |
| 71:52 | AHP | lo | 93/1000 | occupants none |
| 71:53 | AHP | hi | 381305018549/1000000000000 | vertex maximum 381305018549/1000000000000 |
| 71:55 | AHQ | hi | 710233/1000000 | earlier 70:55; AHQ; hi; 710233/1000000 |
| 71:60 | APQ | lo | 98963/1000000 | earlier 70:60; APQ; lo; 98963/1000000 |
| 71:62 | APR | lo | 18727/200000 | earlier 70:62; APR; lo; 18727/200000 |
| 71:66 | ARS | lo | 93/1000 | occupants none |
| 71:67 | ARS | hi | 20783/40000 | earlier 70:67; ARS; hi; 20783/40000 |
| 71:68 | BCE | lo | 93/1000 | occupants none |
| 71:71 | BCF | hi | 896233/1000000 | vertex maximum 896233/1000000 |
| 71:72 | BCH | lo | 349719/1000000 | earlier 70:72; BCH; lo; 349719/1000000 |
| 71:75 | BCP | hi | 710233/1000000 | earlier 70:75; BCP; hi; 710233/1000000 |
| 71:79 | BCR | hi | 896233/1000000 | vertex maximum 896233/1000000 |
| 71:83 | BEF | hi | 174939543131/200000000000 | vertex maximum 174939543131/200000000000 |
| 71:84 | BEH | lo | 13857/20000 | occupants P, Q |
| 71:85 | BEH | hi | 59075689/62500000 | vertex maximum 59075689/62500000 |
| 71:89 | BEQ | hi | 67527/125000 | earlier 70:89; BEQ; hi; 67527/125000 |
| 71:90 | BER | lo | 60863/500000 | earlier 70:90; BER; lo; 60863/500000 |
| 71:93 | BES | hi | 29499/40000 | earlier 70:93; BES; hi; 29499/40000 |
| 71:94 | BFH | lo | 279/1000 | occupants P |
| 71:95 | BFH | hi | 344349/500000 | vertex maximum 344349/500000 |
| 71:99 | BFQ | hi | 640059/1000000 | earlier 70:99; BFQ; hi; 640059/1000000 |
| 71:100 | BFR | lo | 279/1000 | occupants S |
| 71:101 | BFR | hi | 158124559347/200000000000 | vertex maximum 158124559347/200000000000 |
| 71:104 | BHP | lo | 93/1000 | occupants none |
| 71:105 | BHP | hi | 80783543131/200000000000 | vertex maximum 80783543131/200000000000 |
| 71:108 | BHR | lo | 344993/1000000 | earlier 70:108; BHR; lo; 344993/1000000 |
| 71:109 | BHR | hi | 1/1 | vertex maximum 1/1 |
| 71:114 | BPR | lo | 158993/1000000 | earlier 70:114; BPR; lo; 158993/1000000 |
| 71:115 | BPR | hi | 780767/1000000 | earlier 70:115; BPR; hi; 780767/1000000 |
| 71:116 | BPS | lo | 65959/500000 | earlier 70:116; BPS; lo; 65959/500000 |
| 71:118 | BRS | lo | 93/1000 | occupants none |
| 71:120 | CEF | lo | 10961/100000 | earlier 70:120; CEF; lo; 10961/100000 |
| 71:122 | CEH | lo | 279/1000 | occupants Q |
| 71:124 | CEP | lo | 62679/500000 | earlier 70:124; CEP; lo; 62679/500000 |
| 71:126 | CEQ | lo | 93/1000 | occupants none |
| 71:128 | CER | lo | 93/1000 | occupants none |
| 71:131 | CES | hi | 242423226767/560187500000 | vertex maximum 242423226767/560187500000 |
| 71:132 | CFH | lo | 308203/1000000 | earlier 70:132; CFH; lo; 308203/1000000 |
| 71:136 | CFQ | lo | 93/1000 | occupants none |
| 71:137 | CFQ | hi | 536809/1000000 | earlier 70:137; CFQ; hi; 536809/1000000 |
| 71:138 | CFR | lo | 58027/200000 | earlier 70:138; CFR; lo; 58027/200000 |
| 71:140 | CFS | lo | 93/1000 | occupants none |
| 71:142 | CHP | lo | 93/1000 | occupants none |
| 71:144 | CHQ | lo | 93/1000 | occupants none |
| 71:146 | CHR | lo | 85613/250000 | earlier 70:146; CHR; lo; 85613/250000 |
| 71:147 | CHR | hi | 1/1 | vertex maximum 1/1 |
| 71:149 | CHS | hi | 379673/500000 | earlier 70:149; CHS; hi; 379673/500000 |
| 71:150 | CPQ | lo | 93/1000 | occupants none |
| 71:152 | CPR | lo | 279/1000 | occupants Q |
| 71:155 | CPS | hi | 685329/1000000 | earlier 70:155; CPS; hi; 685329/1000000 |
| 71:156 | CQR | lo | 93/1000 | occupants none |
| 71:157 | CQR | hi | 157253/250000 | earlier 70:157; CQR; hi; 157253/250000 |
| 71:158 | CQS | lo | 93/1000 | occupants none |
| 71:160 | CRS | lo | 20827/200000 | earlier 70:160; CRS; lo; 20827/200000 |
| 71:162 | EFH | lo | 147063/1000000 | earlier 70:162; EFH; lo; 147063/1000000 |
| 71:164 | EFP | lo | 15743/100000 | earlier 70:164; EFP; lo; 15743/100000 |
| 71:165 | EFP | hi | 705146413373/1000000000000 | vertex maximum 705146413373/1000000000000 |
| 71:166 | EFQ | lo | 110663/1000000 | earlier 70:166; EFQ; lo; 110663/1000000 |
| 71:168 | EFR | lo | 279/1000 | occupants S |
| 71:169 | EFR | hi | 308616937317/500000000000 | vertex maximum 308616937317/500000000000 |
| 71:170 | EFS | lo | 93/1000 | occupants none |
| 71:172 | EHP | lo | 102901/1000000 | earlier 70:172; EHP; lo; 102901/1000000 |
| 71:173 | EHP | hi | 13791813/25000000 | vertex maximum 13791813/25000000 |
| 71:174 | EHQ | lo | 93/1000 | occupants none |
| 71:175 | EHQ | hi | 51827/100000 | earlier 70:175; EHQ; hi; 51827/100000 |
| 71:176 | EHR | lo | 120731/500000 | earlier 70:176; EHR; lo; 120731/500000 |
| 71:178 | EHS | lo | 20439/200000 | earlier 70:178; EHS; lo; 20439/200000 |
| 71:180 | EPR | lo | 164083/1000000 | earlier 70:180; EPR; lo; 164083/1000000 |
| 71:182 | EPS | lo | 22091/200000 | earlier 70:182; EPS; lo; 22091/200000 |
| 71:185 | EQR | hi | 29151770791/50000000000 | vertex maximum 29151770791/50000000000 |
| 71:187 | EQS | hi | 9603/20000 | earlier 70:187; EQS; hi; 9603/20000 |
| 71:188 | ERS | lo | 93/1000 | occupants none |
| 71:190 | FHP | lo | 93/1000 | occupants none |
| 71:191 | FHP | hi | 210792207303/500000000000 | vertex maximum 210792207303/500000000000 |
| 71:194 | FHR | lo | 93/1000 | occupants none |
| 71:195 | FHR | hi | 100386896281/250000000000 | vertex maximum 100386896281/250000000000 |
| 71:196 | FHS | lo | 93/1000 | occupants none |
| 71:197 | FHS | hi | 342331/1000000 | earlier 70:197; FHS; hi; 342331/1000000 |
| 71:198 | FPQ | lo | 93/1000 | occupants none |
| 71:200 | FPR | lo | 279/1000 | occupants S |
| 71:201 | FPR | hi | 518220820413/1000000000000 | vertex maximum 518220820413/1000000000000 |
| 71:202 | FPS | lo | 93/1000 | occupants none |
| 71:208 | FRS | lo | 93/1000 | occupants none |
| 71:210 | HPQ | lo | 93/1000 | occupants none |
| 71:211 | HPQ | hi | 2663/6250 | earlier 70:211; HPQ; hi; 2663/6250 |
| 71:213 | HPR | hi | 306073/500000 | earlier 70:213; HPR; hi; 306073/500000 |
| 71:215 | HPS | hi | 117023/250000 | earlier 70:215; HPS; hi; 117023/250000 |
| 71:217 | HQR | hi | 741163/1000000 | earlier 70:217; HQR; hi; 741163/1000000 |
| 71:221 | PQR | hi | 123443/200000 | earlier 70:221; PQR; hi; 123443/200000 |
| 71:223 | PQS | hi | 123159/250000 | earlier 70:223; PQS; hi; 123159/250000 |
| 71:224 | PRS | lo | 93/1000 | occupants none |
| 71:225 | PRS | hi | 328343/1000000 | earlier 70:225; PRS; hi; 328343/1000000 |
| 71:226 | QRS | lo | 93/1000 | occupants none |
| 71:227 | QRS | hi | 183121/500000 | earlier 70:227; QRS; hi; 183121/500000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |


### Coordinate certificate sources

| Source | Kind | Source witness | Polynomial |
| --- | --- | --- | --- |
| 0 | bound | `{"direction":"lo","ref":"71:0","triangle":"ABC","value":"93/1000"}` | `-1 * a * b + 1 * a * c + -93/1000` |
| 2 | bound | `{"direction":"lo","ref":"71:2","triangle":"ABE","value":"93/1000"}` | `1 * b * e + -1 * a * b + 1 * a + -93/1000` |
| 4 | bound | `{"direction":"lo","ref":"71:4","triangle":"ABF","value":"93/1000"}` | `1 * b + -1 * a * b + 1 * a * f + -93/1000` |
| 6 | bound | `{"direction":"lo","ref":"71:6","triangle":"ABH","value":"93/1000"}` | `1 * b * h + -1 * a * b + -93/1000` |
| 7 | bound | `{"direction":"hi","ref":"71:7","triangle":"ABH","value":"130340061423/250000000000"}` | `130340061423/250000000000 + -1 * b * h + 1 * a * b` |
| 8 | bound | `{"direction":"lo","ref":"71:8","triangle":"ABP","value":"93/1000"}` | `1 * b * q + -1 * a * b + 1 * a * p + -93/1000` |
| 9 | bound | `{"direction":"hi","ref":"71:9","triangle":"ABP","value":"220541/500000"}` | `220541/500000 + -1 * b * q + 1 * a * b + -1 * a * p` |
| 10 | bound | `{"direction":"lo","ref":"71:10","triangle":"ABQ","value":"93/1000"}` | `1 * b * v + -1 * a * b + 1 * a * u + -93/1000` |
| 12 | bound | `{"direction":"lo","ref":"71:12","triangle":"ABR","value":"93/1000"}` | `1 * b * w + -1 * a * b + 1 * a * r + -93/1000` |
| 13 | bound | `{"direction":"hi","ref":"71:13","triangle":"ABR","value":"3550987367/5000000000"}` | `3550987367/5000000000 + -1 * b * w + 1 * a * b + -1 * a * r` |
| 14 | bound | `{"direction":"lo","ref":"71:14","triangle":"ABS","value":"93/1000"}` | `1 * b * k + -1 * a * b + 1 * a * j + -93/1000` |
| 15 | bound | `{"direction":"hi","ref":"71:15","triangle":"ABS","value":"76611/125000"}` | `76611/125000 + -1 * b * k + 1 * a * b + -1 * a * j` |
| 16 | bound | `{"direction":"lo","ref":"71:16","triangle":"ACE","value":"95621/1000000"}` | `1 * c * e + -1 * a * c + 1 * a + -95621/1000000` |
| 18 | bound | `{"direction":"lo","ref":"71:18","triangle":"ACF","value":"279/1000"}` | `1 * c + -1 * a * c + 1 * a * f + -279/1000` |
| 19 | bound | `{"direction":"hi","ref":"71:19","triangle":"ACF","value":"483848562683/500000000000"}` | `483848562683/500000000000 + -1 * c + 1 * a * c + -1 * a * f` |
| 20 | bound | `{"direction":"lo","ref":"71:20","triangle":"ACH","value":"141899/500000"}` | `1 * c * h + -1 * a * c + -141899/500000` |
| 23 | bound | `{"direction":"hi","ref":"71:23","triangle":"ACP","value":"700583/1000000"}` | `700583/1000000 + -1 * c * q + 1 * a * c + -1 * a * p` |
| 24 | bound | `{"direction":"lo","ref":"71:24","triangle":"ACQ","value":"93/1000"}` | `1 * c * v + -1 * a * c + 1 * a * u + -93/1000` |
| 26 | bound | `{"direction":"lo","ref":"71:26","triangle":"ACR","value":"9471/100000"}` | `1 * c * w + -1 * a * c + 1 * a * r + -9471/100000` |
| 30 | bound | `{"direction":"lo","ref":"71:30","triangle":"AEF","value":"296663/1000000"}` | `703337/1000000 + -1 * a + -1 * e * f + 1 * a * f` |
| 31 | bound | `{"direction":"hi","ref":"71:31","triangle":"AEF","value":"896233/1000000"}` | `-103767/1000000 + 1 * a + 1 * e * f + -1 * a * f` |
| 32 | bound | `{"direction":"lo","ref":"71:32","triangle":"AEH","value":"13857/20000"}` | `1 * h + -1 * a + -13857/20000` |
| 33 | bound | `{"direction":"hi","ref":"71:33","triangle":"AEH","value":"896233/1000000"}` | `896233/1000000 + -1 * h + 1 * a` |
| 34 | bound | `{"direction":"lo","ref":"71:34","triangle":"AEP","value":"37273/250000"}` | `1 * q + -1 * a + -1 * e * p + 1 * a * p + -37273/250000` |
| 35 | bound | `{"direction":"hi","ref":"71:35","triangle":"AEP","value":"344349/500000"}` | `344349/500000 + -1 * q + 1 * a + 1 * e * p + -1 * a * p` |
| 36 | bound | `{"direction":"lo","ref":"71:36","triangle":"AEQ","value":"93/1000"}` | `1 * v + -1 * a + -1 * e * u + 1 * a * u + -93/1000` |
| 37 | bound | `{"direction":"hi","ref":"71:37","triangle":"AEQ","value":"503073/1000000"}` | `503073/1000000 + -1 * v + 1 * a + 1 * e * u + -1 * a * u` |
| 38 | bound | `{"direction":"lo","ref":"71:38","triangle":"AER","value":"122613/1000000"}` | `1 * w + -1 * a + -1 * e * r + 1 * a * r + -122613/1000000` |
| 39 | bound | `{"direction":"hi","ref":"71:39","triangle":"AER","value":"896233/1000000"}` | `896233/1000000 + -1 * w + 1 * a + 1 * e * r + -1 * a * r` |
| 41 | bound | `{"direction":"hi","ref":"71:41","triangle":"AES","value":"190299/250000"}` | `190299/250000 + -1 * k + 1 * a + 1 * e * j + -1 * a * j` |
| 42 | bound | `{"direction":"lo","ref":"71:42","triangle":"AFH","value":"279/1000"}` | `1 * f * h + -1 * a * f + -279/1000` |
| 43 | bound | `{"direction":"hi","ref":"71:43","triangle":"AFH","value":"308616937317/500000000000"}` | `308616937317/500000000000 + -1 * f * h + 1 * a * f` |
| 44 | bound | `{"direction":"lo","ref":"71:44","triangle":"AFP","value":"93/1000"}` | `1 * f * q + -1 * a * f + -1 * p + 1 * a * p + -93/1000` |
| 46 | bound | `{"direction":"lo","ref":"71:46","triangle":"AFQ","value":"93/1000"}` | `-1 * f * v + 1 * a * f + 1 * u + -1 * a * u + -93/1000` |
| 47 | bound | `{"direction":"hi","ref":"71:47","triangle":"AFQ","value":"340641/500000"}` | `340641/500000 + 1 * f * v + -1 * a * f + -1 * u + 1 * a * u` |
| 48 | bound | `{"direction":"lo","ref":"71:48","triangle":"AFR","value":"279/1000"}` | `-1 * f * w + 1 * a * f + 1 * r + -1 * a * r + -279/1000` |
| 49 | bound | `{"direction":"hi","ref":"71:49","triangle":"AFR","value":"48132551511/62500000000"}` | `48132551511/62500000000 + 1 * f * w + -1 * a * f + -1 * r + 1 * a * r` |
| 50 | bound | `{"direction":"lo","ref":"71:50","triangle":"AFS","value":"93/1000"}` | `-1 * f * k + 1 * a * f + 1 * j + -1 * a * j + -93/1000` |
| 52 | bound | `{"direction":"lo","ref":"71:52","triangle":"AHP","value":"93/1000"}` | `1 * h * p + -1 * a * p + -93/1000` |
| 53 | bound | `{"direction":"hi","ref":"71:53","triangle":"AHP","value":"381305018549/1000000000000"}` | `381305018549/1000000000000 + -1 * h * p + 1 * a * p` |
| 55 | bound | `{"direction":"hi","ref":"71:55","triangle":"AHQ","value":"710233/1000000"}` | `710233/1000000 + -1 * h * u + 1 * a * u` |
| 60 | bound | `{"direction":"lo","ref":"71:60","triangle":"APQ","value":"98963/1000000"}` | `-1 * p * v + 1 * a * p + 1 * q * u + -1 * a * u + -98963/1000000` |
| 62 | bound | `{"direction":"lo","ref":"71:62","triangle":"APR","value":"18727/200000"}` | `-1 * p * w + 1 * a * p + 1 * q * r + -1 * a * r + -18727/200000` |
| 66 | bound | `{"direction":"lo","ref":"71:66","triangle":"ARS","value":"93/1000"}` | `1 * r * k + -1 * a * r + -1 * w * j + 1 * a * j + -93/1000` |
| 67 | bound | `{"direction":"hi","ref":"71:67","triangle":"ARS","value":"20783/40000"}` | `20783/40000 + -1 * r * k + 1 * a * r + 1 * w * j + -1 * a * j` |
| 68 | bound | `{"direction":"lo","ref":"71:68","triangle":"BCE","value":"93/1000"}` | `1 * c * e + -1 * b * e + -93/1000` |
| 71 | bound | `{"direction":"hi","ref":"71:71","triangle":"BCF","value":"896233/1000000"}` | `896233/1000000 + -1 * c + 1 * b` |
| 72 | bound | `{"direction":"lo","ref":"71:72","triangle":"BCH","value":"349719/1000000"}` | `1 * c * h + -1 * b * h + -349719/1000000` |
| 75 | bound | `{"direction":"hi","ref":"71:75","triangle":"BCP","value":"710233/1000000"}` | `710233/1000000 + -1 * c * q + 1 * b * q` |
| 79 | bound | `{"direction":"hi","ref":"71:79","triangle":"BCR","value":"896233/1000000"}` | `896233/1000000 + -1 * c * w + 1 * b * w` |
| 83 | bound | `{"direction":"hi","ref":"71:83","triangle":"BEF","value":"174939543131/200000000000"}` | `-25060456869/200000000000 + 1 * b + 1 * e * f + -1 * b * e` |
| 84 | bound | `{"direction":"lo","ref":"71:84","triangle":"BEH","value":"13857/20000"}` | `1 * h + -1 * b * h + 1 * b * e + -13857/20000` |
| 85 | bound | `{"direction":"hi","ref":"71:85","triangle":"BEH","value":"59075689/62500000"}` | `59075689/62500000 + -1 * h + 1 * b * h + -1 * b * e` |
| 89 | bound | `{"direction":"hi","ref":"71:89","triangle":"BEQ","value":"67527/125000"}` | `67527/125000 + -1 * v + 1 * b * v + 1 * e * u + -1 * b * e` |
| 90 | bound | `{"direction":"lo","ref":"71:90","triangle":"BER","value":"60863/500000"}` | `1 * w + -1 * b * w + -1 * e * r + 1 * b * e + -60863/500000` |
| 93 | bound | `{"direction":"hi","ref":"71:93","triangle":"BES","value":"29499/40000"}` | `29499/40000 + -1 * k + 1 * b * k + 1 * e * j + -1 * b * e` |
| 94 | bound | `{"direction":"lo","ref":"71:94","triangle":"BFH","value":"279/1000"}` | `1 * f * h + -1 * b * h + 1 * b + -279/1000` |
| 95 | bound | `{"direction":"hi","ref":"71:95","triangle":"BFH","value":"344349/500000"}` | `344349/500000 + -1 * f * h + 1 * b * h + -1 * b` |
| 99 | bound | `{"direction":"hi","ref":"71:99","triangle":"BFQ","value":"640059/1000000"}` | `640059/1000000 + 1 * f * v + -1 * b * v + -1 * u + 1 * b` |
| 100 | bound | `{"direction":"lo","ref":"71:100","triangle":"BFR","value":"279/1000"}` | `-1 * f * w + 1 * b * w + 1 * r + -1 * b + -279/1000` |
| 101 | bound | `{"direction":"hi","ref":"71:101","triangle":"BFR","value":"158124559347/200000000000"}` | `158124559347/200000000000 + 1 * f * w + -1 * b * w + -1 * r + 1 * b` |
| 104 | bound | `{"direction":"lo","ref":"71:104","triangle":"BHP","value":"93/1000"}` | `1 * b * q + 1 * h * p + -1 * b * h + -93/1000` |
| 105 | bound | `{"direction":"hi","ref":"71:105","triangle":"BHP","value":"80783543131/200000000000"}` | `80783543131/200000000000 + -1 * b * q + -1 * h * p + 1 * b * h` |
| 108 | bound | `{"direction":"lo","ref":"71:108","triangle":"BHR","value":"344993/1000000"}` | `1 * b * w + 1 * h * r + -1 * b * h + -344993/1000000` |
| 109 | bound | `{"direction":"hi","ref":"71:109","triangle":"BHR","value":"1/1"}` | `1 + -1 * b * w + -1 * h * r + 1 * b * h` |
| 114 | bound | `{"direction":"lo","ref":"71:114","triangle":"BPR","value":"158993/1000000"}` | `-1 * p * w + 1 * b * w + 1 * q * r + -1 * b * q + -158993/1000000` |
| 115 | bound | `{"direction":"hi","ref":"71:115","triangle":"BPR","value":"780767/1000000"}` | `780767/1000000 + 1 * p * w + -1 * b * w + -1 * q * r + 1 * b * q` |
| 116 | bound | `{"direction":"lo","ref":"71:116","triangle":"BPS","value":"65959/500000"}` | `-1 * p * k + 1 * b * k + 1 * q * j + -1 * b * q + -65959/500000` |
| 118 | bound | `{"direction":"lo","ref":"71:118","triangle":"BRS","value":"93/1000"}` | `1 * r * k + -1 * b * k + -1 * w * j + 1 * b * w + -93/1000` |
| 120 | bound | `{"direction":"lo","ref":"71:120","triangle":"CEF","value":"10961/100000"}` | `89039/100000 + -1 * c + -1 * e * f + 1 * c * e` |
| 122 | bound | `{"direction":"lo","ref":"71:122","triangle":"CEH","value":"279/1000"}` | `1 * h + -1 * c * h + 1 * c * e + -279/1000` |
| 124 | bound | `{"direction":"lo","ref":"71:124","triangle":"CEP","value":"62679/500000"}` | `1 * q + -1 * c * q + -1 * e * p + 1 * c * e + -62679/500000` |
| 126 | bound | `{"direction":"lo","ref":"71:126","triangle":"CEQ","value":"93/1000"}` | `1 * v + -1 * c * v + -1 * e * u + 1 * c * e + -93/1000` |
| 128 | bound | `{"direction":"lo","ref":"71:128","triangle":"CER","value":"93/1000"}` | `1 * w + -1 * c * w + -1 * e * r + 1 * c * e + -93/1000` |
| 131 | bound | `{"direction":"hi","ref":"71:131","triangle":"CES","value":"242423226767/560187500000"}` | `242423226767/560187500000 + -1 * k + 1 * c * k + 1 * e * j + -1 * c * e` |
| 132 | bound | `{"direction":"lo","ref":"71:132","triangle":"CFH","value":"308203/1000000"}` | `1 * f * h + -1 * c * h + 1 * c + -308203/1000000` |
| 136 | bound | `{"direction":"lo","ref":"71:136","triangle":"CFQ","value":"93/1000"}` | `1 * f * v + -1 * c * v + -1 * u + 1 * c + -93/1000` |
| 137 | bound | `{"direction":"hi","ref":"71:137","triangle":"CFQ","value":"536809/1000000"}` | `536809/1000000 + -1 * f * v + 1 * c * v + 1 * u + -1 * c` |
| 138 | bound | `{"direction":"lo","ref":"71:138","triangle":"CFR","value":"58027/200000"}` | `-1 * f * w + 1 * c * w + 1 * r + -1 * c + -58027/200000` |
| 140 | bound | `{"direction":"lo","ref":"71:140","triangle":"CFS","value":"93/1000"}` | `-1 * f * k + 1 * c * k + 1 * j + -1 * c + -93/1000` |
| 142 | bound | `{"direction":"lo","ref":"71:142","triangle":"CHP","value":"93/1000"}` | `-1 * c * q + -1 * h * p + 1 * c * h + -93/1000` |
| 144 | bound | `{"direction":"lo","ref":"71:144","triangle":"CHQ","value":"93/1000"}` | `1 * c * v + 1 * h * u + -1 * c * h + -93/1000` |
| 146 | bound | `{"direction":"lo","ref":"71:146","triangle":"CHR","value":"85613/250000"}` | `1 * c * w + 1 * h * r + -1 * c * h + -85613/250000` |
| 147 | bound | `{"direction":"hi","ref":"71:147","triangle":"CHR","value":"1/1"}` | `1 + -1 * c * w + -1 * h * r + 1 * c * h` |
| 149 | bound | `{"direction":"hi","ref":"71:149","triangle":"CHS","value":"379673/500000"}` | `379673/500000 + -1 * c * k + -1 * h * j + 1 * c * h` |
| 150 | bound | `{"direction":"lo","ref":"71:150","triangle":"CPQ","value":"93/1000"}` | `-1 * p * v + 1 * c * v + 1 * q * u + -1 * c * q + -93/1000` |
| 152 | bound | `{"direction":"lo","ref":"71:152","triangle":"CPR","value":"279/1000"}` | `-1 * p * w + 1 * c * w + 1 * q * r + -1 * c * q + -279/1000` |
| 155 | bound | `{"direction":"hi","ref":"71:155","triangle":"CPS","value":"685329/1000000"}` | `685329/1000000 + 1 * p * k + -1 * c * k + -1 * q * j + 1 * c * q` |
| 156 | bound | `{"direction":"lo","ref":"71:156","triangle":"CQR","value":"93/1000"}` | `-1 * u * w + 1 * c * w + 1 * v * r + -1 * c * v + -93/1000` |
| 157 | bound | `{"direction":"hi","ref":"71:157","triangle":"CQR","value":"157253/250000"}` | `157253/250000 + 1 * u * w + -1 * c * w + -1 * v * r + 1 * c * v` |
| 158 | bound | `{"direction":"lo","ref":"71:158","triangle":"CQS","value":"93/1000"}` | `-1 * u * k + 1 * c * k + 1 * v * j + -1 * c * v + -93/1000` |
| 160 | bound | `{"direction":"lo","ref":"71:160","triangle":"CRS","value":"20827/200000"}` | `1 * r * k + -1 * c * k + -1 * w * j + 1 * c * w + -20827/200000` |
| 162 | bound | `{"direction":"lo","ref":"71:162","triangle":"EFH","value":"147063/1000000"}` | `1 * f * h + -1 * e * f + -1 * h + 852937/1000000` |
| 164 | bound | `{"direction":"lo","ref":"71:164","triangle":"EFP","value":"15743/100000"}` | `1 * f * q + -1 * e * f + -1 * q + -1 * p + 84257/100000 + 1 * e * p` |
| 165 | bound | `{"direction":"hi","ref":"71:165","triangle":"EFP","value":"705146413373/1000000000000"}` | `-294853586627/1000000000000 + -1 * f * q + 1 * e * f + 1 * q + 1 * p + -1 * e * p` |
| 166 | bound | `{"direction":"lo","ref":"71:166","triangle":"EFQ","value":"110663/1000000"}` | `1 * f * v + -1 * e * f + -1 * v + -1 * u + 889337/1000000 + 1 * e * u` |
| 168 | bound | `{"direction":"lo","ref":"71:168","triangle":"EFR","value":"279/1000"}` | `-1 * f * w + 1 * e * f + 1 * w + 1 * r + -1279/1000 + -1 * e * r` |
| 169 | bound | `{"direction":"hi","ref":"71:169","triangle":"EFR","value":"308616937317/500000000000"}` | `808616937317/500000000000 + 1 * f * w + -1 * e * f + -1 * w + -1 * r + 1 * e * r` |
| 170 | bound | `{"direction":"lo","ref":"71:170","triangle":"EFS","value":"93/1000"}` | `-1 * f * k + 1 * e * f + 1 * k + 1 * j + -1093/1000 + -1 * e * j` |
| 172 | bound | `{"direction":"lo","ref":"71:172","triangle":"EHP","value":"102901/1000000"}` | `-1 * q + -1 * h * p + 1 * h + 1 * e * p + -102901/1000000` |
| 173 | bound | `{"direction":"hi","ref":"71:173","triangle":"EHP","value":"13791813/25000000"}` | `13791813/25000000 + 1 * q + 1 * h * p + -1 * h + -1 * e * p` |
| 174 | bound | `{"direction":"lo","ref":"71:174","triangle":"EHQ","value":"93/1000"}` | `-1 * v + -1 * h * u + 1 * h + 1 * e * u + -93/1000` |
| 175 | bound | `{"direction":"hi","ref":"71:175","triangle":"EHQ","value":"51827/100000"}` | `51827/100000 + 1 * v + 1 * h * u + -1 * h + -1 * e * u` |
| 176 | bound | `{"direction":"lo","ref":"71:176","triangle":"EHR","value":"120731/500000"}` | `1 * w + 1 * h * r + -1 * h + -1 * e * r + -120731/500000` |
| 178 | bound | `{"direction":"lo","ref":"71:178","triangle":"EHS","value":"20439/200000"}` | `1 * k + 1 * h * j + -1 * h + -1 * e * j + -20439/200000` |
| 180 | bound | `{"direction":"lo","ref":"71:180","triangle":"EPR","value":"164083/1000000"}` | `-1 * p * w + 1 * e * p + 1 * w + 1 * q * r + -1 * q + -1 * e * r + -164083/1000000` |
| 182 | bound | `{"direction":"lo","ref":"71:182","triangle":"EPS","value":"22091/200000"}` | `-1 * p * k + 1 * e * p + 1 * k + 1 * q * j + -1 * q + -1 * e * j + -22091/200000` |
| 185 | bound | `{"direction":"hi","ref":"71:185","triangle":"EQR","value":"29151770791/50000000000"}` | `29151770791/50000000000 + 1 * u * w + -1 * e * u + -1 * w + -1 * v * r + 1 * v + 1 * e * r` |
| 187 | bound | `{"direction":"hi","ref":"71:187","triangle":"EQS","value":"9603/20000"}` | `9603/20000 + 1 * u * k + -1 * e * u + -1 * k + -1 * v * j + 1 * v + 1 * e * j` |
| 188 | bound | `{"direction":"lo","ref":"71:188","triangle":"ERS","value":"93/1000"}` | `1 * r * k + -1 * e * r + -1 * k + -1 * w * j + 1 * w + 1 * e * j + -93/1000` |
| 190 | bound | `{"direction":"lo","ref":"71:190","triangle":"FHP","value":"93/1000"}` | `-1 * f * q + -1 * h * p + 1 * f * h + 1 * p + -93/1000` |
| 191 | bound | `{"direction":"hi","ref":"71:191","triangle":"FHP","value":"210792207303/500000000000"}` | `210792207303/500000000000 + 1 * f * q + 1 * h * p + -1 * f * h + -1 * p` |
| 194 | bound | `{"direction":"lo","ref":"71:194","triangle":"FHR","value":"93/1000"}` | `-1 * f * w + -1 * h * r + 1 * f * h + 1 * r + -93/1000` |
| 195 | bound | `{"direction":"hi","ref":"71:195","triangle":"FHR","value":"100386896281/250000000000"}` | `100386896281/250000000000 + 1 * f * w + 1 * h * r + -1 * f * h + -1 * r` |
| 196 | bound | `{"direction":"lo","ref":"71:196","triangle":"FHS","value":"93/1000"}` | `-1 * f * k + -1 * h * j + 1 * f * h + 1 * j + -93/1000` |
| 197 | bound | `{"direction":"hi","ref":"71:197","triangle":"FHS","value":"342331/1000000"}` | `342331/1000000 + 1 * f * k + 1 * h * j + -1 * f * h + -1 * j` |
| 198 | bound | `{"direction":"lo","ref":"71:198","triangle":"FPQ","value":"93/1000"}` | `1 * p * v + -1 * p + -1 * f * v + -1 * q * u + 1 * f * q + 1 * u + -93/1000` |
| 200 | bound | `{"direction":"lo","ref":"71:200","triangle":"FPR","value":"279/1000"}` | `1 * p * w + -1 * p + -1 * f * w + -1 * q * r + 1 * f * q + 1 * r + -279/1000` |
| 201 | bound | `{"direction":"hi","ref":"71:201","triangle":"FPR","value":"518220820413/1000000000000"}` | `518220820413/1000000000000 + -1 * p * w + 1 * p + 1 * f * w + 1 * q * r + -1 * f * q + -1 * r` |
| 202 | bound | `{"direction":"lo","ref":"71:202","triangle":"FPS","value":"93/1000"}` | `1 * p * k + -1 * p + -1 * f * k + -1 * q * j + 1 * f * q + 1 * j + -93/1000` |
| 208 | bound | `{"direction":"lo","ref":"71:208","triangle":"FRS","value":"93/1000"}` | `-1 * r * k + 1 * r + 1 * f * k + 1 * w * j + -1 * f * w + -1 * j + -93/1000` |
| 210 | bound | `{"direction":"lo","ref":"71:210","triangle":"HPQ","value":"93/1000"}` | `1 * p * v + -1 * h * p + -1 * q * u + 1 * h * u + -93/1000` |
| 211 | bound | `{"direction":"hi","ref":"71:211","triangle":"HPQ","value":"2663/6250"}` | `2663/6250 + -1 * p * v + 1 * h * p + 1 * q * u + -1 * h * u` |
| 213 | bound | `{"direction":"hi","ref":"71:213","triangle":"HPR","value":"306073/500000"}` | `306073/500000 + -1 * p * w + 1 * h * p + 1 * q * r + -1 * h * r` |
| 215 | bound | `{"direction":"hi","ref":"71:215","triangle":"HPS","value":"117023/250000"}` | `117023/250000 + -1 * p * k + 1 * h * p + 1 * q * j + -1 * h * j` |
| 217 | bound | `{"direction":"hi","ref":"71:217","triangle":"HQR","value":"741163/1000000"}` | `741163/1000000 + -1 * u * w + 1 * h * u + 1 * v * r + -1 * h * r` |
| 221 | bound | `{"direction":"hi","ref":"71:221","triangle":"PQR","value":"123443/200000"}` | `123443/200000 + -1 * u * w + 1 * q * u + 1 * p * w + 1 * v * r + -1 * p * v + -1 * q * r` |
| 223 | bound | `{"direction":"hi","ref":"71:223","triangle":"PQS","value":"123159/250000"}` | `123159/250000 + -1 * u * k + 1 * q * u + 1 * p * k + 1 * v * j + -1 * p * v + -1 * q * j` |
| 224 | bound | `{"direction":"lo","ref":"71:224","triangle":"PRS","value":"93/1000"}` | `1 * r * k + -1 * q * r + -1 * p * k + -1 * w * j + 1 * p * w + 1 * q * j + -93/1000` |
| 225 | bound | `{"direction":"hi","ref":"71:225","triangle":"PRS","value":"328343/1000000"}` | `328343/1000000 + -1 * r * k + 1 * q * r + 1 * p * k + 1 * w * j + -1 * p * w + -1 * q * j` |
| 226 | bound | `{"direction":"lo","ref":"71:226","triangle":"QRS","value":"93/1000"}` | `1 * r * k + -1 * v * r + -1 * u * k + -1 * w * j + 1 * u * w + 1 * v * j + -93/1000` |
| 227 | bound | `{"direction":"hi","ref":"71:227","triangle":"QRS","value":"183121/500000"}` | `183121/500000 + -1 * r * k + 1 * v * r + 1 * u * k + 1 * w * j + -1 * u * w + -1 * v * j` |
| 228 | coordinate | `{"box":71,"direction":"lo","value":"103767/1000000","variable":"a"}` | `1 * a + -103767/1000000` |
| 229 | coordinate | `{"box":71,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 230 | coordinate | `{"box":71,"direction":"lo","value":"103767/1000000","variable":"b"}` | `1 * b + -103767/1000000` |
| 231 | coordinate | `{"box":71,"direction":"hi","value":"145431/250000","variable":"b"}` | `145431/250000 + -1 * b` |
| 233 | coordinate | `{"box":71,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 234 | coordinate | `{"box":71,"direction":"lo","value":"103767/1000000","variable":"e"}` | `1 * e + -103767/1000000` |
| 235 | coordinate | `{"box":71,"direction":"hi","value":"59/125","variable":"e"}` | `59/125 + -1 * e` |
| 236 | coordinate | `{"box":71,"direction":"lo","value":"155651/500000","variable":"f"}` | `1 * f + -155651/500000` |
| 237 | coordinate | `{"box":71,"direction":"hi","value":"344349/500000","variable":"f"}` | `344349/500000 + -1 * f` |
| 238 | coordinate | `{"box":71,"direction":"lo","value":"796617/1000000","variable":"h"}` | `1 * h + -796617/1000000` |
| 239 | coordinate | `{"box":71,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 241 | coordinate | `{"box":71,"direction":"hi","value":"425453/1000000","variable":"p"}` | `425453/1000000 + -1 * p` |
| 242 | coordinate | `{"box":71,"direction":"lo","value":"387853/1000000","variable":"q"}` | `1 * q + -387853/1000000` |
| 243 | coordinate | `{"box":71,"direction":"hi","value":"158493/200000","variable":"q"}` | `158493/200000 + -1 * q` |
| 248 | coordinate | `{"box":71,"direction":"lo","value":"82331/125000","variable":"r"}` | `1 * r + -82331/125000` |
| 249 | coordinate | `{"box":71,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 250 | coordinate | `{"box":71,"direction":"lo","value":"508879/1000000","variable":"w"}` | `1 * w + -508879/1000000` |
| 251 | coordinate | `{"box":71,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 252 | coordinate | `{"box":71,"direction":"lo","value":"247401/500000","variable":"j"}` | `1 * j + -247401/500000` |
| 254 | coordinate | `{"box":71,"direction":"lo","value":"544857/1000000","variable":"k"}` | `1 * k + -544857/1000000` |
| 255 | coordinate | `{"box":71,"direction":"hi","value":"8033/8963","variable":"k"}` | `8033/8963 + -1 * k` |
| 256 | physical | `{"factor":1}` | `-93/1000 + 1 * a` |
| 264 | physical | `{"factor":20}` | `-93/1000 + 1 * c` |
| 266 | physical | `{"factor":29}` | `907/1000 + -1 * a` |
| 269 | physical | `{"factor":51}` | `-93/1000 + 1 * h` |
| 271 | physical | `{"factor":58}` | `-13857/20000 + 1 * h` |
| 272 | physical | `{"factor":61}` | `907/1000 + -1 * b` |
| 273 | physical | `{"factor":78}` | `907/1000 + -1 * f` |
| 274 | physical | `{"factor":100}` | `907/1000 + -1 * e` |
| 276 | physical | `{"factor":134}` | `1 * e + -1 * a` |
| 277 | physical | `{"factor":135}` | `1 * h + -1 * e` |
| 280 | physical | `{"factor":138}` | `1 * f + -1 * e` |
| 283 | physical | `{"factor":141}` | `346/625 + -1 * c * h + 1 * f * h + 1 * c * e + -1 * e * f` |
| 287 | physical | `{"factor":145}` | `907/1000 + -1 * p + -1 * q` |
| 289 | physical | `{"factor":147}` | `1 * p + -102650331/896233000` |
| 290 | physical | `{"factor":148}` | `1 * q + -102650331/896233000` |
| 291 | physical | `{"factor":149}` | `1 * c * h * p + -1 * b * h * p + -93/1000 * c + -93/1000 * b` |
| 293 | physical | `{"factor":151}` | `102872312439/15500000000 * j + -1 + -71872312439/15500000000 * f + -1 * r` |
| 296 | physical | `{"factor":154}` | `71872312439/15500000000 + 1 * e + 1 * w + -102872312439/15500000000 * k` |
| 310 | physical | `{"factor":168}` | `2015236007/5000000000 * h + 4448263993/5000000000 * b * h + -4448263993/5000000000 * b * e + -12927/10000 * a` |
| 398 | physical | `{"factor":256}` | `-9484887721/8963000000 * k + 7102936379/8963000000 * h * j + 9484887721/8963000000 * h + 9484887721/8963000000 * e * j + -18507/10000 * a * j` |
| 399 | physical | `{"factor":257}` | `-102558566016197/179260000000000 * h * j + 102558566016197/179260000000000 * a * j + 12927/10000 * h + -12927/10000 * a` |
| 551 | physical | `{"factor":409}` | `-210792207303/500000000000 * c * q + 347207792697/500000000000 * h * p + -347207792697/500000000000 * c * h + 279/250 * f * q + -279/250 * p + 279/250 * c` |
| 675 | physical | `{"factor":533}` | `-3099763993/5000000000 * b * q + 3099763993/5000000000 * a * b + 2015236007/5000000000 * a * p + -1023/1000 * a + 1023/1000 * q + -1023/1000 * e * p` |
| 690 | physical | `{"factor":548}` | `9517537573/25000000000 * p * w + -9517537573/25000000000 * e * p + 16057462427/25000000000 * w + -9517537573/25000000000 * q * r + 9517537573/25000000000 * q + -16057462427/25000000000 * e * r + 1023/1000 * a * r + -1023/1000 * a` |
| 762 | physical | `{"factor":620}` | `-5110924630895151/8963000000000000 * k + -4058224369104849/8963000000000000 * a + 5110924630895151/8963000000000000 * e * j + -5110924630895151/8963000000000000 * a * j + -1023/1000 * e * f + 1023/1000 + 1023/1000 * a * f` |
| 832 | physical | `{"factor":690}` | `-131347/250000 * p * w + 131347/250000 * h * p + 131347/250000 * q * r + 124403/250000 * h * r + -1023/1000 * c * h + 1023/1000 * c * w` |
| 836 | physical | `{"factor":694}` | `6752212379404287/8963000000000000 * r * k + 2416936620595713/8963000000000000 * q * r + 2416936620595713/8963000000000000 * p * k + -6752212379404287/8963000000000000 * w * j + -2416936620595713/8963000000000000 * p * w + -2416936620595713/8963000000000000 * q * j + -1023/1000 * c * k + 1023/1000 * c * w` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 579000 | 0, 32 |
| 1 | 4000 | 0, 34 |
| 2 | 4000 | 0, 52 |
| 3 | 332000 | 0, 169 |
| 4 | 165000 | 0, 191 |
| 5 | 10000 | 0, 195 |
| 6 | 210000 | 0, 196 |
| 7 | 200000 | 0, 201 |
| 8 | 3000 | 0, 215 |
| 9 | 3000 | 0, 225 |
| 10 | 8440000 | 0, 238 |
| 11 | 28000 | 0, 241 |
| 12 | 678000 | 0, 250 |
| 13 | 213000 | 0, 254 |
| 14 | 108384000 | 0, 277 |
| 15 | 7000 | 0, 287 |
| 16 | 3400 | 2, 128 |
| 17 | 110600 | 4, 170 |
| 18 | 196300 | 6, 128 |
| 19 | 4000 | 6, 172 |
| 20 | 3400 | 6, 188 |
| 21 | 203000 | 6, 190 |
| 22 | 203000 | 6, 200 |
| 23 | 327939400 | 6, 243 |
| 24 | 99800 | 7, 122 |
| 25 | 199600 | 8, 146 |
| 26 | 3400 | 8, 176 |
| 27 | 3400 | 8, 211 |
| 28 | 583400 | 8, 228 |
| 29 | 583400 | 8, 237 |
| 30 | 208579800 | 8, 238 |
| 31 | 1022300 | 8, 251 |
| 32 | 134500 | 8, 254 |
| 33 | 119542300 | 8, 271 |
| 34 | 20300 | 8, 277 |
| 35 | 93100 | 9, 122 |
| 36 | 3400 | 10, 168 |
| 37 | 199600 | 12, 142 |
| 38 | 3400 | 12, 210 |
| 39 | 320300 | 13, 170 |
| 40 | 335100 | 14, 168 |
| 41 | 6700 | 15, 122 |
| 42 | 96500 | 16, 104 |
| 43 | 77600 | 16, 170 |
| 44 | 18200 | 18, 170 |
| 45 | 28200 | 18, 224 |
| 46 | 15900 | 19, 144 |
| 47 | 94600 | 19, 174 |
| 48 | 583400 | 19, 228 |
| 49 | 103100 | 20, 104 |
| 50 | 194400 | 23, 174 |
| 51 | 35000 | 24, 208 |
| 52 | 3400 | 24, 224 |
| 53 | 15900 | 26, 144 |
| 54 | 117300 | 26, 170 |
| 55 | 58300 | 26, 174 |
| 56 | 18168700 | 30, 224 |
| 57 | 91919000 | 30, 249 |
| 58 | 3400 | 31, 120 |
| 59 | 331700 | 31, 138 |
| 60 | 43800 | 31, 144 |
| 61 | 209700 | 31, 156 |
| 62 | 335100 | 31, 195 |
| 63 | 202396100 | 31, 237 |
| 64 | 380400 | 32, 44 |
| 65 | 134500 | 32, 118 |
| 66 | 3400 | 32, 142 |
| 67 | 31600 | 32, 150 |
| 68 | 762100 | 32, 237 |
| 69 | 17005420 | 32, 293 |
| 70 | 9812000 | 33, 122 |
| 71 | 556400 | 33, 128 |
| 72 | 39000 | 33, 291 |
| 73 | 232700 | 35, 144 |
| 74 | 110500 | 36, 168 |
| 75 | 95800 | 36, 188 |
| 76 | 18200 | 37, 122 |
| 77 | 209700 | 38, 136 |
| 78 | 39100 | 38, 144 |
| 79 | 15795800 | 38, 249 |
| 80 | 14800 | 39, 170 |
| 81 | 16233830 | 39, 293 |
| 82 | 77600 | 41, 122 |
| 83 | 31600 | 41, 150 |
| 84 | 35000 | 42, 104 |
| 85 | 249400 | 42, 168 |
| 86 | 85600 | 42, 188 |
| 87 | 310260700 | 42, 200 |
| 88 | 246100 | 42, 202 |
| 89 | 31600 | 42, 210 |
| 90 | 353500 | 42, 250 |
| 91 | 583400 | 42, 287 |
| 92 | 203000 | 43, 68 |
| 93 | 199600 | 44, 68 |
| 94 | 3400 | 44, 72 |
| 95 | 199600 | 44, 84 |
| 96 | 3400 | 44, 156 |
| 97 | 31600 | 44, 160 |
| 98 | 3400 | 44, 187 |
| 99 | 18418200 | 44, 188 |
| 100 | 310506700 | 44, 195 |
| 101 | 3400 | 44, 210 |
| 102 | 28200 | 44, 227 |
| 103 | 182700 | 44, 229 |
| 104 | 338400 | 44, 236 |
| 105 | 435183900 | 44, 250 |
| 106 | 434296000 | 44, 255 |
| 107 | 20300 | 44, 276 |
| 108 | 117200 | 46, 122 |
| 109 | 24900 | 47, 224 |
| 110 | 180300 | 48, 122 |
| 111 | 118400 | 48, 126 |
| 112 | 117300 | 48, 170 |
| 113 | 335100 | 49, 132 |
| 114 | 35000 | 49, 150 |
| 115 | 310506700 | 49, 190 |
| 116 | 583400 | 49, 230 |
| 117 | 202057600 | 49, 236 |
| 118 | 353500 | 49, 239 |
| 119 | 338400 | 49, 289 |
| 120 | 128800 | 50, 122 |
| 121 | 230700 | 52, 126 |
| 122 | 3400 | 52, 188 |
| 123 | 40800 | 52, 249 |
| 124 | 38300 | 53, 144 |
| 125 | 18418200 | 53, 208 |
| 126 | 95800 | 55, 170 |
| 127 | 92500 | 55, 208 |
| 128 | 3400 | 55, 224 |
| 129 | 95400 | 60, 122 |
| 130 | 33000 | 62, 126 |
| 131 | 213000 | 66, 84 |
| 132 | 18418200 | 66, 165 |
| 133 | 434161600 | 66, 242 |
| 134 | 31600 | 67, 136 |
| 135 | 3400 | 68, 178 |
| 136 | 203000 | 68, 194 |
| 137 | 206300 | 68, 197 |
| 138 | 9694700 | 68, 239 |
| 139 | 213000 | 68, 255 |
| 140 | 9907700 | 68, 276 |
| 141 | 168643700 | 71, 170 |
| 142 | 59444700 | 71, 208 |
| 143 | 28262400 | 71, 224 |
| 144 | 3400 | 75, 208 |
| 145 | 15900 | 79, 144 |
| 146 | 3400 | 83, 138 |
| 147 | 3400 | 83, 142 |
| 148 | 164700 | 83, 150 |
| 149 | 3400 | 83, 168 |
| 150 | 125400 | 83, 208 |
| 151 | 1261600 | 83, 228 |
| 152 | 168000 | 84, 150 |
| 153 | 580000 | 84, 237 |
| 154 | 28700 | 84, 251 |
| 155 | 9875600 | 84, 276 |
| 156 | 32100 | 84, 296 |
| 157 | 3400 | 85, 226 |
| 158 | 107175200 | 85, 228 |
| 159 | 11400 | 89, 170 |
| 160 | 14800 | 90, 170 |
| 161 | 3400 | 93, 122 |
| 162 | 3400 | 93, 150 |
| 163 | 206300 | 94, 170 |
| 164 | 209700 | 94, 208 |
| 165 | 164700 | 94, 210 |
| 166 | 102400 | 95, 144 |
| 167 | 230000 | 95, 276 |
| 168 | 14800 | 99, 170 |
| 169 | 3400 | 99, 208 |
| 170 | 3400 | 99, 224 |
| 171 | 3400 | 100, 122 |
| 172 | 46400 | 100, 144 |
| 173 | 3400 | 101, 132 |
| 174 | 678200 | 101, 239 |
| 175 | 168000 | 104, 132 |
| 176 | 3400 | 104, 158 |
| 177 | 3400 | 104, 185 |
| 178 | 3400 | 104, 210 |
| 179 | 82327700 | 104, 229 |
| 180 | 99100 | 104, 239 |
| 181 | 583400 | 104, 249 |
| 182 | 1022300 | 104, 250 |
| 183 | 134500 | 104, 255 |
| 184 | 245695300 | 104, 266 |
| 185 | 603700 | 104, 276 |
| 186 | 583400 | 104, 280 |
| 187 | 62200 | 105, 144 |
| 188 | 3400 | 105, 208 |
| 189 | 3400 | 108, 174 |
| 190 | 3400 | 109, 276 |
| 191 | 3400 | 114, 122 |
| 192 | 62200 | 115, 144 |
| 193 | 3400 | 116, 126 |
| 194 | 77600 | 122, 162 |
| 195 | 24900 | 122, 194 |
| 196 | 364100 | 122, 217 |
| 197 | 291400 | 122, 221 |
| 198 | 18200 | 122, 223 |
| 199 | 350100 | 122, 250 |
| 200 | 1134200 | 122, 252 |
| 201 | 213000 | 122, 254 |
| 202 | 107143100 | 122, 256 |
| 203 | 795800 | 122, 273 |
| 204 | 9907700 | 122, 277 |
| 205 | 3400 | 124, 226 |
| 206 | 14800 | 126, 196 |
| 207 | 269800 | 126, 213 |
| 208 | 3400 | 128, 166 |
| 209 | 3400 | 128, 196 |
| 210 | 3400 | 128, 198 |
| 211 | 678200 | 128, 228 |
| 212 | 21500 | 131, 174 |
| 213 | 3400 | 132, 210 |
| 214 | 203000 | 136, 172 |
| 215 | 3400 | 136, 195 |
| 216 | 3400 | 136, 196 |
| 217 | 14800 | 137, 170 |
| 218 | 22600 | 138, 174 |
| 219 | 3400 | 140, 194 |
| 220 | 3400 | 140, 210 |
| 221 | 3400 | 144, 164 |
| 222 | 68700 | 144, 168 |
| 223 | 388900 | 144, 176 |
| 224 | 365000 | 144, 180 |
| 225 | 3400 | 144, 182 |
| 226 | 15900 | 144, 264 |
| 227 | 6700 | 144, 266 |
| 228 | 6700 | 144, 269 |
| 229 | 15900 | 144, 272 |
| 230 | 367400 | 146, 174 |
| 231 | 114000 | 147, 170 |
| 232 | 350100 | 147, 276 |
| 233 | 170900 | 147, 293 |
| 234 | 680200 | 149, 249 |
| 235 | 35000 | 150, 170 |
| 236 | 207100 | 152, 174 |
| 237 | 299400 | 155, 249 |
| 238 | 3400 | 157, 170 |
| 239 | 182747100 | 162, 208 |
| 240 | 231300 | 162, 224 |
| 241 | 99100 | 165, 174 |
| 242 | 6700 | 166, 224 |
| 243 | 241600 | 168, 230 |
| 244 | 49338600 | 168, 234 |
| 245 | 202396100 | 168, 236 |
| 246 | 50370300 | 168, 250 |
| 247 | 1031600 | 168, 276 |
| 248 | 182639800 | 169, 196 |
| 249 | 50370250 | 169, 296 |
| 250 | 182519100 | 170, 194 |
| 251 | 3400 | 170, 213 |
| 252 | 3400 | 170, 221 |
| 253 | 334303500 | 170, 251 |
| 254 | 169774600 | 170, 264 |
| 255 | 188200 | 170, 266 |
| 256 | 188200 | 170, 269 |
| 257 | 168640400 | 170, 272 |
| 258 | 18421500 | 173, 208 |
| 259 | 44013400 | 173, 249 |
| 260 | 18200 | 174, 176 |
| 261 | 99100 | 174, 180 |
| 262 | 85700 | 174, 188 |
| 263 | 100500 | 174, 190 |
| 264 | 3400 | 175, 208 |
| 265 | 180200 | 176, 230 |
| 266 | 163000 | 176, 249 |
| 267 | 45139100 | 176, 289 |
| 268 | 3400 | 190, 210 |
| 269 | 3400 | 190, 226 |
| 270 | 203000 | 190, 239 |
| 271 | 1002100 | 190, 250 |
| 272 | 20260 | 190, 296 |
| 273 | 454000 | 196, 249 |
| 274 | 47697800 | 200, 236 |
| 275 | 10359510 | 200, 293 |
| 276 | 57941800 | 202, 249 |
| 277 | 68755300 | 208, 241 |
| 278 | 10359500 | 208, 248 |
| 279 | 60582300 | 208, 264 |
| 280 | 453145100 | 208, 266 |
| 281 | 18983500 | 208, 269 |
| 282 | 59448000 | 208, 272 |
| 283 | 334303500 | 208, 274 |
| 284 | 18200 | 208, 283 |
| 285 | 434161600 | 208, 290 |
| 286 | 10473400 | 224, 248 |
| 287 | 28265800 | 224, 264 |
| 288 | 434411000 | 224, 266 |
| 289 | 249400 | 224, 269 |
| 290 | 28265800 | 224, 272 |
| 291 | 68755300 | 224, 273 |
| 292 | 14800 | 224, 283 |
| 293 | 113629100 | 229, 249 |
| 294 | 770800 | 231, 276 |
| 295 | 2278000 | 233, 234 |
| 296 | 7827900 | 233, 276 |
| 297 | 74677300 | 235, 249 |
| 298 | 179867100 | 236, 239 |
| 299 | 58378900 | 237, 276 |
| 300 | 8304400 | 239, 289 |
| 301 | 8304400 | 242, 249 |
| 302 | 338400 | 249, 283 |
| 303 | 41787800 | 276, 289 |
| 304 | 7400 | 276, 291 |
| 305 | 24989480 | 276, 293 |
| 306 | 854500 | 249, 310 |
| 307 | 4150600 | 249, 398 |
| 308 | 5749200 | 249, 399 |
| 309 | 710100 | 249, 551 |
| 310 | 941000 | 249, 675 |
| 311 | 428100 | 249, 690 |
| 312 | 181245000 | 249, 762 |
| 313 | 15900 | 249, 832 |
| 314 | 151200 | 249, 836 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `a * b * h` | 1200 |
| `a * a * b` | -400 |
| `a * b` | -1071984902769859/500000000 |
| `a * c * h` | -1400 |
| `a * a * c` | 400 |
| `a * c` | 528267461159/500000000 |
| `h` | 129972866252023020315437/498042055498000000000 |
| `a` | 8927744215364563563886671/40164681895000000000 |
| `1` | -38063454719587753772537939256389681863/249021027749000000000000000000 |
| `a * b * q` | -400 |
| `a * c * q` | 400 |
| `a * c * e * p` | 200 |
| `q` | -40821649987/250000000 |
| `a * c * h * p` | -100 |
| `h * p` | 88919184889018409/694632500000000 |
| `a * b * f * w` | -500 |
| `a * b * e * f` | 200 |
| `a * b * w` | 200 |
| `a * b * r` | 2622082587/5000000 |
| `a * c * f * w` | 600 |
| `a * c * e * f` | -400 |
| `a * c * w` | -500 |
| `a * c * r` | -600 |
| `a * c * e * r` | 300 |
| `f * w` | -25005195286875779334198327/138916115000000000 |
| `e * f` | 21411873121707/155000000000 |
| `w` | 3166508110774086777814421/55566446000000000 |
| `r` | 16804880781912654614720427/138916115000000000 |
| `e * r` | -16718181221199981/1111328920000000 |
| `a * c * f * h` | 100 |
| `f * q` | 35592902764938687/694632500000000 |
| `f * h` | -982179098721/31000000000 |
| `a * c * h * r` | -200 |
| `h * r` | -4208955302917052977/80329363790000000 |
| `a * b * f * k` | 300 |
| `a * b * j` | -300 |
| `a * c * f * k` | -300 |
| `a * c * h * j` | 100 |
| `a * c * j` | 300 |
| `f * k` | 532272391277156529/4481165000000000 |
| `h * j` | 145679186773966351/694632500000000 |
| `j` | -103822739818902500003307/1389161150000000000000 |
| `a * b * r * k` | -400 |
| `a * b * w * j` | 400 |
| `a * c * r * k` | 400 |
| `a * c * w * j` | -400 |
| `r * k` | -190305933967199232032483/1245105138745000000000 |
| `w * j` | 38077671702327109689277/311276284686250000000 |
| `a * b * k` | 100 |
| `a * c * k` | -100 |
| `k` | 44107616181716982504146911/277853000000000000000000 |
| `a * b * e` | -400 |
| `a * c * e` | 600 |
| `e` | 183887833168781141/1792466000000000 |
| `b * e` | -12905017005479753/138926500000000 |
| `a * b * c * w` | 100 |
| `a * b * c * e` | -100 |
| `a * w` | 100 |
| `a * e * r` | -100 |
| `c * w` | 168610833227/1000000000 |
| `c * e` | 3434435245885367/22407500000000 |
| `b * f * k` | 200 |
| `b * k` | -4651/40 |
| `b * j` | -200 |
| `b` | 139007064333299/625000000 |
| `b * e * j` | 100 |
| `a * b * e * j` | -100 |
| `a * e * f * f` | 100 |
| `a * f` | -14340712310210033081923/155638142343125000000 |
| `e * j` | -6032094001548299/55570600000000 |
| `b * h * w` | 300 |
| `b * c * h * w` | -200 |
| `b * e * h * r` | -100 |
| `b * h` | -1680805993298779/17365812500000 |
| `b * h * h * p` | 100 |
| `b * h * h` | -100 |
| `b * h * r * k` | 100 |
| `b * h * k` | 7012292919/155000000 |
| `b * h * w * j` | -100 |
| `b * f * h * w` | -100 |
| `b * h * r` | 916835963/10000000 |
| `c * h` | -3310807828777/10000000000 |
| `b * c * h * h` | 100 |
| `b * q` | 76294034284511/2240750000000 |
| `a * p` | -2115282913482099/22407500000000 |
| `a * p * w` | 100 |
| `a * h * p` | 100 |
| `b * h * q * u` | 100 |
| `a * f * p` | 100 |
| `f` | 141978702255235114157379/1550000000000000 |
| `b * c * e * q` | 100 |
| `a * f * u * w` | -100 |
| `a * e * f * u` | 100 |
| `a * u * r` | 100 |
| `a * u` | -93/10 |
| `b * w` | 55413/2500 |
| `a * r` | -840605150556391355643/10041170473750000000 |
| `c * q` | 190337405139/10000000000 |
| `b * h * u * w` | 100 |
| `a * q * u * r` | -100 |
| `a * h * u * r` | 100 |
| `b * e * f * w` | 100 |
| `b * w * j` | 100 |
| `b * e * w * j` | 100 |
| `a * f * r * k` | -100 |
| `a * e * f * r` | -100 |
| `a * r * j` | -1375774524032799/55570600000000 |
| `b * r * k` | -100 |
| `b * e * r * k` | -100 |
| `a * f * w * j` | 100 |
| `a * j` | 1493254048719177/694632500000000 |
| `b * c * h * k` | -100 |
| `b * c * e * k` | 100 |
| `a * h * j` | -100 |
| `c * e * h * p` | -100 |
| `c * e * f * k` | -100 |
| `c * f * k` | -100 |
| `c * k` | 131/10 |
| `c * j` | 100 |
| `c` | 33618194339/1250000000 |
| `c * r * k` | 388/5 |
| `c * q * r` | -164535941397/5000000000 |
| `c * w * j` | -23281958251/155000000 |
| `a * f * q * r` | 200 |
| `a * f * p * k` | 100 |
| `a * f * p * w` | -200 |
| `a * f * q * j` | -100 |
| `q * r` | 1209148827049567/11203750000000 |
| `p * k` | 21560642190315417/347316250000000 |
| `p * w` | -46520598606916441081/5601875000000 |
| `q * j` | -292928560714757/11203750000000 |
| `c * v` | -4508389349/250000000 |
| `h * u` | -106847626601713/11203750000000 |
| `a * c * h * u` | 100 |
| `a * f * h * u` | -100 |
| `v` | 3830374705817523/89630000000000 |
| `e * u` | -3830374705817523/89630000000000 |
| `a * c * e * u` | -100 |
| `a * f * v` | -100 |
| `a * f * h` | 100 |
| `c * h * q * u` | -100 |
| `c * e * q * u` | 100 |
| `a * p * v` | 100 |
| `a * e * p * u` | -100 |
| `c * v * r` | 100 |
| `c * f * v * w` | -100 |
| `a * f * u * k` | 100 |
| `a * u * j` | -100 |
| `a * q * u * j` | 100 |
| `c * h * u * w` | 100 |
| `a * c * v * r` | 100 |
| `c * f * w * k` | 100 |
| `c * e * f * w` | -100 |
| `c * w * k` | -100 |
| `c * e * w * j` | 100 |
| `c * e * u * w` | -100 |
| `a * h * r` | 100 |
| `a * q * r` | -100 |
| `a * q * j` | 100 |
| `e * f * r * k` | 200 |
| `e * f * q * r` | -100 |
| `e * f * w * j` | -200 |
| `e * f * q * j` | 100 |
| `e * f * r` | -295934161137/1550000000 |
| `a * f * r` | -14065838863/1550000000 |
| `e * f * f * w` | 100 |
| `a * h * u` | -100 |
| `c * e * f * v` | 100 |
| `e * f * h * u` | -100 |
| `c * e * f * h` | 300 |
| `u * w` | 47925227/1250000 |
| `v * r` | -47925227/1250000 |
| `e * f * f * h` | -100 |
| `a * f * f` | 100 |
| `p` | 2935410515351197473601/694632500000000 |
| `h * r * k` | -100 |
| `c * h * h` | 100 |
| `h * p * v` | -200 |
| `h * q * u` | 100 |
| `p * v` | -31362829077/2000000000 |
| `q * u` | 31362829077/2000000000 |
| `h * h` | -100 |
| `c * e * h` | -100 |
| `a * h` | 100 |
| `h * w` | 100 |
| `e * h * r` | -100 |
| `c * h * p` | -46913/1000 |
| `b * h * p` | -53087/1000 |
| `c * e * p * v` | -100 |
| `e * h * p * u` | 100 |
| `e * p` | 12371649987/250000000 |
| `a * c * p * v` | -100 |
| `v * w` | -100 |
| `e * v * r` | 100 |
| `e * u * w` | 100 |
| `e * e * u * r` | -100 |
| `c * e * v` | -100 |
| `c * e * e * u` | 100 |
| `c * e * v * r` | 100 |
| `c * e * r` | 100 |
| `f * v` | -7021638223/1250000000 |
| `u` | 7021638223/1250000000 |
| `h * u * w` | -200 |
| `e * h * u * r` | 100 |
| `c * e * h * r` | -100 |
| `r * w` | 28003350013/250000000 |
| `e * r * r` | -15503350013/250000000 |
| `a * r * r` | 837/10 |
| `f * w * k` | 617477841/62000000 |
| `e * r * j` | 228466004955431/11114120000000 |
| `h * k` | -7012292919/155000000 |
| `c * h * k` | 100 |
| `c * e * h * j` | -100 |
| `p * v * k` | -100 |
| `c * v * k` | 100 |
| `e * q * u * j` | -100 |
| `f * h * h * p` | -100 |
| `f * f * h * w` | -100 |
| `f * h * w` | 60 |
| `f * h * r` | 23281958251/155000000 |
| `f * h * k` | -127152500707/775000000 |
| `f * h * w * j` | 100 |
| `f * h * p * w` | 200 |
| `f * h * p` | -100 |
| `f * h * q * r` | -100 |
| `f * f * h * q` | 100 |
| `a * f * f * q` | -100 |
| `f * h * p * k` | -100 |
| `f * f * h * k` | 100 |
| `f * h * j` | -100 |
| `f * h * p * v` | 100 |
| `f * h * q * u` | -100 |
| `f * h * h * u` | 200 |
| `c * e * f * q` | -100 |
| `p * r * k` | -808396292589757/11203750000000 |
| `e * f * q * u` | 100 |
| `f * q * k` | -27847499293/775000000 |
| `e * p * j` | -100 |
| `u * k` | -2515669/156250 |
| `v * j` | 2515669/156250 |
| `f * q * w` | 40 |
| `e * p * r` | 5328350013/250000000 |
| `a * p * u * k` | -100 |
| `a * p * u * w` | 100 |
| `f * f * q` | -83943494489/1550000000 |
| `f * p` | 83943494489/1550000000 |
| `e * f * q` | 40 |
| `f * h * v` | 100 |
| `c * h * r` | 351035941397/5000000000 |
| `c * f * w` | 23281958251/155000000 |
| `c * r` | -858/5 |
| `b * f * w` | -200 |
| `b * r` | 200 |
| `f * f * w` | -71056505511/1550000000 |
| `f * r` | 71056505511/1550000000 |
| `f * p * w` | -83943494489/1550000000 |
| `p * r` | 408/5 |
| `a * p * r` | -337082587/5000000 |
| `c * h * j` | 7781958251/155000000 |
| `c * h * p * v` | 200 |
| `h * p * r * k` | 100 |
| `h * p * k` | 49652500707/775000000 |
| `h * p * w * j` | -100 |
| `h * p * r` | -290881941397/5000000000 |
| `h * p * j` | 100 |
| `f * h * u * k` | -100 |
| `h * u * j` | 100 |
| `p * v * w` | 100 |
| `e * p * u * w` | -100 |
| `q * v * r` | -100 |
| `e * q * u * r` | 100 |
| `q * r * k` | 100 |
| `e * p * r * k` | -100 |
| `q * w * j` | -100 |
| `e * p * w * j` | 100 |
| `b * e * k` | -7012292919/155000000 |
| `b * e * h` | 100 |
| `b * e * r` | -1916835963/10000000 |
| `b * q * r` | -122082587/5000000 |
| `b * c * v * w` | 100 |
| `b * c * q` | -100 |
| `b * c * h` | 100 |
| `e * f * p * v` | -100 |
| `b * e * p * v` | 100 |
| `b * c * e * v` | -100 |
| `b * e * q * u` | -100 |
| `e * f * f * k` | -100 |
| `e * f * j` | 100 |
| `b * h * p * v` | -100 |
| `b * h * h * u` | -100 |
| `c * f * h * h` | -100 |
| `e * f * h` | -40 |
| `h * p * w` | -160 |
| `e * h * p` | 40 |
| `h * h * u * r` | -100 |
| `h * q * r` | 100 |
| `e * p * u * k` | 100 |
| `q * v * j` | 100 |
| `c * h * h * r` | 100 |
| `h * h * u` | 100 |
| `h * v * r` | 100 |
| `c * h * h * u` | -100 |
| `c * h * v * r` | -200 |
| `h * q * j` | -100 |
| `c * h * u * k` | 100 |
| `c * e * u * k` | -100 |
| `c * f * h` | -7781958251/155000000 |
| `e * h * r * j` | 100 |
| `h * r * j` | -2028400793223219/13892650000000 |
| `c * r * w` | -433/10 |
| `h * r * r` | -30077/2500 |
| `q * r * j` | 2127246658916237/21707265625000 |
| `e * f * w` | 100 |
| `e * e * f` | -50 |
| `e * w` | -50 |
| `e * e * r` | 50 |
| `f * w * w` | -50 |
| `w * w` | 50 |
| `e * r * w` | -50 |
| `e * f * k` | -617477841/62000000 |
| `w * k` | -617477841/62000000 |
| `e * r * k` | 617477841/62000000 |
| `r * j` | -40056505511/1550000000 |
| `f * q * r` | -42536505511/1550000000 |
| `p * w * j` | -40056505511/1550000000 |
| `p * r * w` | 210125668128581/5601875000000 |
| `p * j` | 40056505511/1550000000 |
| `f * w * j` | 40056505511/1550000000 |
| `f * r * w` | 10 |
| `q * r * r` | -210125668128581/5601875000000 |
| `f * q * j` | -40056505511/1550000000 |
| `r * r` | -10 |
| `r * r * k` | -61014707410243/11203750000000 |
| `r * w * j` | 61014707410243/11203750000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `a * b * h` | 1200 | 19770521481620373/1000000000000000000 | 59311564444861119/2500000000000000 |
| `a * b` | -669683802939857289/312500000000 | 97208328531/1000000000000 | 0 |
| `a * h` | -1282745821477/2500000000 | 41364644689/1000000000000 | 0 |
| `a` | -79906258798749602910088546054061/622552569372500000000000000000 | 203383/1000000 | 0 |
| `b * h` | 40553074067557961033/277853000000000000 | 97208328531/1000000000000 | 3942096546901150764980360132523/277853000000000000000000000000 |
| `b` | 1168311850532315174450341/22407500000000000000000 | 477957/1000000 | 558402827144873763834761633337/22407500000000000000000000000 |
| `h` | 9855330002784878103860849074699167/155638142343125000000000000000000 | 203383/1000000 | 2004406581956396863397531067359540681961/155638142343125000000000000000000000000 |
| `1` | -6871829523863988478235406773802257913690039667/155638142343125000000000000000000000000 | 1 | -6871829523863988478235406773802257913690039667/155638142343125000000000000000000000000 |
| `a * a * b` | -400 | 19770521481620373/1000000000000000000 | 0 |
| `a * a` | 438237/2500 | 41364644689/1000000000000 | 18127517794573293/2500000000000000 |
| `a * c * h` | -14276267/10000 | 4736210452245811/250000000000000000 | 0 |
| `a * c` | -284696708223/1250000000 | 23287150117/250000000000 | 0 |
| `c * h` | -4203584825228963883/19375000000000000 | 23287150117/250000000000 | 0 |
| `c` | -4383589418012791454251392589/43414531250000000000000000 | 114499/250000 | 0 |
| `a * a * c` | 400 | 4736210452245811/250000000000000000 | 4736210452245811/625000000000000 |
| `a * b * q` | -400 | 9832914055896243/250000000000000000 | 0 |
| `a * q` | 211372433603/1250000000 | 20572800599/250000000000 | 4348522928639886128197/312500000000000000000 |
| `b * q` | -268352806839526761/5601875000000000 | 48346784421/250000000000 | 0 |
| `q` | -4211190827517891365559303381/86829062500000000000000000 | 101153/250000 | 0 |
| `a * c * q` | 400 | 2355565095784901/62500000000000000 | 2355565095784901/156250000000000 |
| `c * q` | 1327326395968593/625000000000000 | 11581917347/62500000000 | 15372984610599638133882771/39062500000000000000000000 |
| `a * c * e * p` | 200 | 1333076027691561721799/125000000000000000000000 | 1333076027691561721799/625000000000000000000 |
| `a * c * e` | 6506579/10000 | 8575097149033261/250000000000000000 | 55794547032859686324119/2500000000000000000000 |
| `a * c * p` | -15717/200 | 3620197070038703/125000000000000000 | 0 |
| `a * e * p` | 183637/2500 | 11642687077542701/500000000000000000 | 2138028126858708983537/1250000000000000000000 |
| `a * e` | 1213385082889/5000000000 | 74892332239/1000000000000 | 90873238761569541958471/5000000000000000000000 |
| `a * p` | -27514079242269909/1400468750000000 | 31617717797/500000000000 | 0 |
| `c * e * p` | -15717/200 | 6554510591797553/125000000000000000 | 0 |
| `c * e` | 1674456695473107/11203750000000 | 42162310267/250000000000 | 70598962723192671688489569/2800937500000000000000000 |
| `c * p` | -24484683321/1000000000 | 17799900041/125000000000 | 0 |
| `e * p` | 54665158754491/3906250000000 | 57245133947/500000000000 | 3129314335134856982805977/1953125000000000000000000 |
| `e` | 1052025148340127308080232313448793/15563814234312500000000000000000 | 368233/1000000 | 387390376448730099036308185478189392769/15563814234312500000000000000000000000 |
| `p` | -834807178842025636545707479/43414531250000000000000000 | 155459/500000 | 0 |
| `a * c * h * p` | -100 | 736286540695681532249/125000000000000000000000 | 0 |
| `a * h * p` | 114499/2500 | 6430506298707251/500000000000000000 | 736286540695681532249/1250000000000000000000 |
| `c * h * p` | -28313/1000 | 3620197070038703/125000000000000000 | 0 |
| `h * p` | 1382447950907954538377/86829062500000000000 | 31617717797/500000000000 | 43709849180848616516909392395469/43414531250000000000000000000000 |
| `a * b * f * w` | -500 | 4504320469527734758599/250000000000000000000000 | 0 |
| `a * b * f` | -70229/1000 | 9171508588571319/250000000000000000 | 0 |
| `a * b * w` | 1482351/5000 | 47741051516473251/1000000000000000000 | 70768995456495640093101/5000000000000000000000 |
| `a * f * w` | 2649461/10000 | 9424112356399707/250000000000000000 | 24968818147899124107927/2500000000000000000000 |
| `a * f` | 9160013654696582412692993/97273838964453125000000 | 19188982667/250000000000 | 175771343249456043061302883469352331/24318459741113281250000000000000000 |
| `a * w` | -667131568953/5000000000 | 99885662343/1000000000000 | 0 |
| `b * f * w` | -642337/2000 | 22146986078127153/250000000000000000 | 0 |
| `b * f` | -17674767079/500000000 | 45094764993/250000000000 | 0 |
| `b * w` | 877162576493/5000000000 | 234734719797/1000000000000 | 205900511609498933931921/5000000000000000000000 |
| `f * w` | -62512949557341402058494948369/347290287500000000000 | 46336775229/250000000000 | 0 |
| `f` | -814168104216028571575033381091167/12451051387450000000000000000000 | 94349/250000 | 0 |
| `w` | 4903836600267967762065808553489987/155638142343125000000000000000000 | 491121/1000000 | 2408377134960204595273521962598555905427/155638142343125000000000000000000000000 |
| `a * b * e * f` | 200 | 3377252122095382509327/250000000000000000000000 | 3377252122095382509327/1250000000000000000000 |
| `a * b * e` | -2207101/5000 | 35795314439955723/1000000000000000000 | 0 |
| `a * e * f` | -823533/5000 | 7066016654417411/250000000000000000 | 0 |
| `b * e * f` | 716413/10000 | 16605380597667369/250000000000000000 | 11896310530116672827397/2500000000000000000000 |
| `b * e` | -49791925615296284433/277853000000000000 | 175999539981/1000000000000 | 0 |
| `e * f` | 120183103371363799/1550000000000000 | 34742415317/250000000000 | 4175451291413863989556909283/387500000000000000000000000 |
| `a * b * r` | 1532368587/5000000 | 4147782170089239/125000000000000000 | 6355931103163440830335293/625000000000000000000000 |
| `a * r` | -730424947124981230689906831/4980420554980000000000000 | 8678149227/125000000000 | 0 |
| `b * r` | 1252382900139293/5000000000000 | 20393947233/125000000000 | 25541030780952249791926269/625000000000000000000000 |
| `r` | 150621990495369494130905261435777886898261/1245105138745000000000000000000000 | 42669/125000 | 6426889712446920945071596600203206656061898609/155638142343125000000000000000000000000 |
| `a * c * f * w` | 600 | 1079051440695410051793/62500000000000000000000 | 3237154322086230155379/312500000000000000000 |
| `a * c * f` | 450063/2500 | 2197119326388833/62500000000000000 | 988842115392537346479/156250000000000000000 |
| `a * c * w` | -5007629/10000 | 11436808452611157/250000000000000000 | 0 |
| `c * f * w` | 36719295751/155000000 | 5305514426945271/62500000000000000 | 194814753354200689339843521/9687500000000000000000000 |
| `c * f` | -2575171897016119/77500000000000 | 10802866151/62500000000 | 0 |
| `c * w` | 8848029078741/310000000000 | 56232863379/250000000000 | 497550010358261886325839/77500000000000000000000 |
| `a * c * e * f` | -400 | 809051840914139142089/62500000000000000000000 | 0 |
| `c * e * f` | 729961/10000 | 3977971811381183/62500000000000000 | 2903764281407619723863/625000000000000000000 |
| `a * c * r` | -2452869/5000 | 993639408342273/31250000000000000 | 0 |
| `c * r` | -128943284335824173/1250000000000000 | 4885557831/31250000000 | 0 |
| `a * c * e * r` | 300 | 365890820252100213609/31250000000000000000000 | 1097672460756300640827/312500000000000000000 |
| `a * e * r` | 31471/1000 | 3195580924305891/125000000000000000 | 100568127268830695661/125000000000000000000 |
| `c * e * r` | 711451/10000 | 1799023616782623/31250000000000000 | 1279917151183613915973/312500000000000000000 |
| `e * r` | -16544141620739865721087482299/124510513874500000000000000 | 15712133877/125000000000 | 0 |
| `a * c * f * h` | 100 | 446856719958940022039/62500000000000000000000 | 446856719958940022039/625000000000000000000 |
| `a * f * h` | 74534/625 | 3902712861762461/250000000000000000 | 145442400219301634087/78125000000000000000 |
| `c * f * h` | -26043531251/155000000 | 2197119326388833/62500000000000000 | 0 |
| `f * h` | -32938453520758179/775000000000000 | 19188982667/250000000000 | 0 |
| `f * q` | -141520312143955616301/3473162500000000000 | 9543684397/62500000000 | 0 |
| `a * c * h * r` | -200 | 202089363786876509559/31250000000000000000000 | 0 |
| `a * h * r` | 66363/2500 | 1764988024234941/125000000000000000 | 117129900252303389583/312500000000000000000 |
| `c * h * r` | 795235441397/5000000000 | 993639408342273/31250000000000000 | 790177273482521393209275381/156250000000000000000000000 |
| `h * r` | -56333852480379168052825421343/1245105138745000000000000000 | 8678149227/125000000000 | 0 |
| `a * b * f * k` | 300 | 28885177540841175636339171/2240750000000000000000000000 | 86655532622523526909017513/22407500000000000000000000 |
| `a * b * k` | -350343/5000 | 306152450379348754479/8963000000000000000000 | 0 |
| `a * f * k` | -377341/2500 | 60434678309641192903/2240750000000000000000 | 0 |
| `a * k` | 51611315319/2500000000 | 640543920016547/8963000000000000 | 33059314231642322914583493/22407500000000000000000000 |
| `b * f * k` | 2311301/10000 | 142023559200332258037/2240750000000000000000 | 328259194403287148333176137/22407500000000000000000000 |
| `b * k` | -8772357952827/100000000000 | 1505300100693513/8963000000000000 | 0 |
| `f * k` | -163166752533855607591/5601456250000000000 | 297147147547441/2240750000000000 | 0 |
| `k` | 1721719760832238361445055645005433/38909535585781250000000000000000 | 3149446709/8963000000 | 5422464634573360208556682985484233248969997/348746167455357343750000000000000000000000 |
| `a * b * j` | -1068251/10000 | 39022436530527861/1000000000000000000 | 0 |
| `a * j` | 81340993072933663031/6946325000000000000 | 81644241073/1000000000000 | 6641023647563819055839911872263/6946325000000000000000000000000 |
| `b * j` | -1850780016667/10000000000 | 191866756467/1000000000000 | 0 |
| `j` | 22158200169562035649578007215059247/311276284686250000000000000000000 | 401431/1000000 | 8894988452267457532845749014348448582457/311276284686250000000000000000000000000 |
| `a * c * f * k` | -300 | 6919710231775606946200597/560187500000000000000000000 | 0 |
| `a * c * k` | 350343/5000 | 73341638297974614953/2240750000000000000000 | 25694729586227320526478879/11203750000000000000000000 |
| `c * f * k` | -906189/10000 | 34023051247034447059/560187500000000000000 | 0 |
| `c * k` | 296090625759/2500000000 | 360608498733791/2240750000000000 | 106772796044101736348322369/5601875000000000000000000 |
| `a * c * h * j` | 100 | 1901261698055488155541/250000000000000000000000 | 1901261698055488155541/2500000000000000000000 |
| `a * c * j` | 1761101/10000 | 9348183958617427/250000000000000000 | 16463096117705109307127/2500000000000000000000 |
| `a * h * j` | -114499/2500 | 16605050682149959/1000000000000000000 | 0 |
| `c * h * j` | 7781958251/155000000 | 9348183958617427/250000000000000000 | 72747177288628728595040177/38750000000000000000000000 |
| `c * j` | 6110640354375869/77500000000000 | 45963448069/250000000000 | 280866100596691011688246961/19375000000000000000000000 |
| `h * j` | 1658736813442616049/14004687500000000 | 81644241073/1000000000000 | 135426308273368771756334780577/14004687500000000000000000000 |
| `a * b * r * k` | -400 | 13063218905236432004864451/1120375000000000000000000000 | 0 |
| `a * r * k` | 720823/5000 | 27331368523186043943/1120375000000000000000 | 19701079052988533753125089/5601875000000000000000000 |
| `b * r * k` | -361109/5000 | 64229649996491506197/1120375000000000000000 | 0 |
| `r * k` | -1360825039090793781993581147/9727383896445312500000000 | 134383741626321/1120375000000000 | 0 |
| `a * b * w * j` | 400 | 19164738051309373622181/1000000000000000000000000 | 19164738051309373622181/2500000000000000000000 |
| `a * w * j` | -720823/5000 | 40097201320012833/1000000000000000000 | 0 |
| `b * w * j` | 361109/5000 | 94229793302829507/1000000000000000000 | 34027226429791460443263/5000000000000000000000 |
| `w * j` | 4686730094642144026877427547/311276284686250000000000000 | 197151194151/1000000000000 | 923994434822127941909816680598032677597/311276284686250000000000000000000000000 |
| `a * c * r * k` | 400 | 3129414364536278845429557/280093750000000000000000000 | 3129414364536278845429557/700234375000000000000000 |
| `c * r * k` | 297767/2500 | 15386804032472128179/280093750000000000000 | 4581682476337128191476293/700234375000000000000000 |
| `a * c * w * j` | -400 | 4591089453940149365667/250000000000000000000000 | 0 |
| `c * w * j` | -28107123751/155000000 | 22573614579095349/250000000000000000 | 0 |
| `a * b * c * w` | 100 | 5466302657584670766249/250000000000000000000000 | 5466302657584670766249/2500000000000000000000 |
| `a * b * c` | 50639/1250 | 11130256408470969/250000000000000000 | 563625054268561399191/312500000000000000000 |
| `b * c * w` | -12927/100 | 26876890682036703/250000000000000000 | 0 |
| `b * c` | 4272854903/2500000000 | 54725598543/250000000000 | 233834542054067206329/625000000000000000000 |
| `a * b * c * e` | -100 | 4098527708060490327777/250000000000000000000000 | 0 |
| `b * c * e` | 39511/625 | 20151771328284519/250000000000000000 | 796216636951849630209/156250000000000000000 |
| `b * e * j` | 175639/1250 | 70651671334112811/1000000000000000000 | 12409188901452240011229/1250000000000000000000 |
| `e * j` | -71148131471924095839/1389265000000000000 | 147820141423/1000000000000 | 0 |
| `a * b * e * j` | -100 | 14369348870945865839613/1000000000000000000000000 | 0 |
| `a * e * j` | -103767/10000 | 30064103823034009/1000000000000000000 | 0 |
| `a * e * f * f` | 100 | 666671605327628310439/62500000000000000000000 | 666671605327628310439/625000000000000000000 |
| `a * f * f` | 357957/5000 | 1810461325648783/62500000000000000 | 648067304745261416331/312500000000000000000 |
| `e * f * f` | -182207/2500 | 3277912142743633/62500000000000000 | 0 |
| `f * f` | -9130390781987143/775000000000000 | 8901733801/62500000000 | 0 |
| `b * h * w` | 364837/2500 | 47741051516473251/1000000000000000000 | 17417702012115551475087/2500000000000000000000 |
| `h * w` | 358603900413/5000000000 | 99885662343/1000000000000 | 35819388111535716247659/5000000000000000000000 |
| `b * c * h * w` | -200 | 5466302657584670766249/250000000000000000000000 | 0 |
| `b * c * h` | 1030619/10000 | 11130256408470969/250000000000000000 | 11471053729441941599811/2500000000000000000000 |
| `c * h * w` | 70963/5000 | 11436808452611157/250000000000000000 | 811590238222645534191/1250000000000000000000 |
| `b * e * h * r` | -100 | 1527350271838470744687/125000000000000000000000 | 0 |
| `b * e * h` | 42669/1250 | 35795314439955723/1000000000000000000 | 1527350271838470744687/1250000000000000000000 |
| `b * e * r` | -3258309963/10000000 | 7509724371449289/125000000000000000 | 0 |
| `b * h * r` | 1357925963/10000000 | 4147782170089239/125000000000000000 | 5632381097632659665012157/1250000000000000000000000 |
| `e * h * r` | -801509/10000 | 3195580924305891/125000000000000000 | 0 |
| `e * h` | -51730476729/500000000 | 74892332239/1000000000000 | 0 |
| `b * h * h * p` | 100 | 3073505499011221566207/500000000000000000000000 | 3073505499011221566207/5000000000000000000000 |
| `b * h * h` | -692921/10000 | 19770521481620373/1000000000000000000 | 0 |
| `b * h * p` | 865597/10000 | 15111909545100729/500000000000000000 | 13080823566510555720213/5000000000000000000000 |
| `b * p` | 75368561949/10000000000 | 74302717263/500000000000 | 5600088949015447225587/5000000000000000000000 |
| `h * h * p` | -41507/2000 | 6430506298707251/500000000000000000 | 0 |
| `h * h` | -229835040673/10000000000 | 41364644689/1000000000000 | 0 |
| `b * h * r * k` | 100 | 13063218905236432004864451/1120375000000000000000000000 | 13063218905236432004864451/11203750000000000000000000 |
| `b * h * k` | 8820274919/155000000 | 306152450379348754479/8963000000000000000000 | 2700348779471361854685012612201/1389265000000000000000000000000 |
| `h * r * k` | -390849/5000 | 27331368523186043943/1120375000000000000000 | 0 |
| `h * k` | -1768100086589997/24218750000000 | 640543920016547/8963000000000000 | 0 |
| `b * h * w * j` | -100 | 19164738051309373622181/1000000000000000000000000 | 0 |
| `b * h * j` | -508879/10000 | 39022436530527861/1000000000000000000 | 0 |
| `h * w * j` | 93/10 | 40097201320012833/1000000000000000000 | 3729039722761193469/10000000000000000000 |
| `b * f * h * w` | -100 | 4504320469527734758599/250000000000000000000000 | 0 |
| `b * f * h` | -508879/10000 | 9171508588571319/250000000000000000 | 0 |
| `f * h * w` | 597501/10000 | 9424112356399707/250000000000000000 | 5630916557061181332207/2500000000000000000000 |
| `b * c * h * h` | 100 | 2263704939124051088127/250000000000000000000000 | 2263704939124051088127/2500000000000000000000 |
| `c * h * h` | 1101653/10000 | 4736210452245811/250000000000000000 | 5217660453347954425583/2500000000000000000000 |
| `a * p * w` | 90857/1250 | 15528125182180437/500000000000000000 | 1410838869677367964509/625000000000000000000 |
| `p * w` | -721077396150320906356072811/86829062500000000000 | 76349179539/500000000000 | 0 |
| `b * h * q * u` | 100 | 4879947418058578749741/250000000000000000000000 | 4879947418058578749741/2500000000000000000000 |
| `b * h * q` | 17473/500 | 9832914055896243/250000000000000000 | 171810507298675053939/125000000000000000000 |
| `b * h * u` | -348251/5000 | 48243229741664397/1000000000000000000 | 0 |
| `b * q * u` | 13857/200 | 23993880599944827/250000000000000000 | 332483203473435467739/50000000000000000000 |
| `b * u` | 308648193/78125000 | 237203845659/1000000000000 | 73212538335301244187/78125000000000000000 |
| `h * q * u` | 250461/10000 | 10210013490875913/250000000000000000 | 2557210188938272045893/2500000000000000000000 |
| `h * q` | 17905324571/1250000000 | 20572800599/250000000000 | 368362672059558218029/312500000000000000000 |
| `h * u` | 854221516073289/17926000000000 | 100936338921/1000000000000 | 86221992459983947579181169/17926000000000000000000000 |
| `q * u` | 86822609847/2000000000 | 50200918911/250000000000 | 4358574796570637116617/500000000000000000000 |
| `u` | 431307090682544299917/11203750000000000000 | 496287/1000000 | 214052102113567862972908179/11203750000000000000000000 |
| `a * f * p` | 527099/10000 | 2983100056429153/125000000000000000 | 1572389056643750117147/1250000000000000000000 |
| `f * p` | -92611308530862831/1550000000000000 | 14667401191/125000000000 | 0 |
| `b * c * e * q` | 100 | 2038412125169963950407/62500000000000000000000 | 2038412125169963950407/625000000000000000000 |
| `b * c * q` | -896233/10000 | 5535658469420079/62500000000000000 | 0 |
| `b * e * q` | 12034/625 | 17802881467698093/250000000000000000 | 107119937791139425581/78125000000000000000 |
| `c * e * q` | 5677/400 | 4264844170437851/62500000000000000 | 24211520355575680127/25000000000000000000 |
| `e * q` | 70055483617/2500000000 | 37247872649/250000000000 | 2609417732130121891433/625000000000000000000 |
| `a * f * u * w` | -100 | 4677064449020541387909/250000000000000000000000 | 0 |
| `a * f * u` | -82109/1250 | 9523242640857429/250000000000000000 | 0 |
| `a * u * w` | -196767/10000 | 49571955707220441/1000000000000000000 | 0 |
| `a * u` | -109592758341/10000000000 | 100936338921/1000000000000 | 0 |
| `f * u * w` | -103767/10000 | 22996339168074723/250000000000000000 | 0 |
| `f * u` | 25975424781/625000000 | 46824182163/250000000000 | 1216278021706848381303/156250000000000000000 |
| `u * w` | -136035606199/2000000000 | 243736967727/1000000000000 | 0 |
| `a * e * f * u` | 100 | 3506772207370853652957/250000000000000000000000 | 3506772207370853652957/2500000000000000000000 |
| `a * e * u` | -345237/10000 | 37168090889896593/1000000000000000000 | 0 |
| `e * f * u` | -304997/10000 | 17242209070427979/250000000000000000 | 0 |
| `e * u` | 98977338431971/5601875000000 | 182749250871/1000000000000 | 18088034451648138045996741/5601875000000000000000000 |
| `a * u * r` | 352191/2500 | 4306852645420149/125000000000000000 | 1516834740043167696459/312500000000000000000 |
| `u * r` | -150509649/4000000 | 21176070003/125000000000 | 0 |
| `b * h * u * w` | 100 | 23693263233955960319037/1000000000000000000000000 | 23693263233955960319037/10000000000000000000000 |
| `b * u * w` | 796617/10000 | 116495789883893739/1000000000000000000 | 92802526649937778680963/10000000000000000000000 |
| `h * u * w` | -1354229/10000 | 49571955707220441/1000000000000000000 | 0 |
| `a * q * u * r` | -100 | 435651065642184331797/31250000000000000000000 | 0 |
| `a * q * u` | -81923/5000 | 10210013490875913/250000000000000000 | 0 |
| `a * q * r` | -90857/1250 | 877820828758731/31250000000000000 | 0 |
| `q * r` | 55783860220304810011131/347316250000000000000 | 4316097357/31250000000 | 7766728118068226716884827409057/350117187500000000000000000000 |
| `a * h * u * r` | 100 | 875940611583486164067/125000000000000000000000 | 875940611583486164067/1250000000000000000000 |
| `a * h * u` | -2213/200 | 20528735418769743/1000000000000000000 | 0 |
| `h * u * r` | -13857/100 | 4306852645420149/125000000000000000 | 0 |
| `b * e * f * w` | 100 | 8155251124506995930649/250000000000000000000000 | 8155251124506995930649/2500000000000000000000 |
| `b * e * w` | 100763/1250 | 86437070075008701/1000000000000000000 | 8709658491968101738863/1250000000000000000000 |
| `e * f * w` | 194763/10000 | 17062729752900357/250000000000000000 | 3323188434864132230391/2500000000000000000000 |
| `e * w` | -184688006653/5000000000 | 180846959193/1000000000000 | 0 |
| `b * e * w * j` | 100 | 34698519477280817851131/1000000000000000000000000 | 34698519477280817851131/10000000000000000000000 |
| `e * w * j` | 68851/5000 | 72597575675805183/1000000000000000000 | 4998415682854862654733/5000000000000000000000 |
| `a * f * r * k` | -100 | 2578687288794080059978107/280093750000000000000000000 | 0 |
| `a * f * r` | 5631871137/1550000000 | 818774701418223/31250000000000000 | 4611233608623083079529551/48437500000000000000000000 |
| `f * r * k` | 103767/10000 | 12678971638701760029/280093750000000000000 | 1315658850033165532929243/2800937500000000000000000 |
| `f * r` | 181188714521310787/1550000000000000 | 4025777481/31250000000 | 729425446731230660906987547/48437500000000000000000000 |
| `a * e * f * r` | -100 | 301499864627336509959/31250000000000000000000 | 0 |
| `e * f * r` | -203229591137/1550000000 | 1482424119161073/31250000000000000 | 0 |
| `a * r * j` | -1375774524032799/55570600000000 | 3483678122343837/125000000000000000 | 0 |
| `r * j` | -32489053229415663664417/347316250000000000000 | 17128659339/125000000000 | 0 |
| `b * e * r * k` | -100 | 23651476707158056801439901/1120375000000000000000000000 | 0 |
| `b * e * k` | -8820274919/155000000 | 554301171978674372529/8963000000000000000000 | 0 |
| `e * r * k` | 3124150241/62000000 | 49484528330285060793/1120375000000000000000 | 154597101108831400275150601113/69463250000000000000000000000 |
| `e * k` | -406238963484977/38750000000000 | 1159730209995197/8963000000000000 | 0 |
| `a * f * w * j` | 100 | 3783130847341890780717/250000000000000000000000 | 3783130847341890780717/2500000000000000000000 |
| `a * f * j` | 60513/5000 | 7703052500996477/250000000000000000 | 466134815992799812701/1250000000000000000000 |
| `f * w * j` | 147448255511/1550000000 | 18601018016952699/250000000000000000 | 2742687657328356091753074189/387500000000000000000000000 |
| `f * j` | -23947232507887857/775000000000000 | 37874613419/250000000000 | 0 |
| `b * c * h * k` | -100 | 35054149415985053039091021/2240750000000000000000000000 | 0 |
| `b * c * k` | -13857/200 | 172355356229306544987/2240750000000000000000 | 0 |
| `c * h * k` | 1245693/10000 | 73341638297974614953/2240750000000000000000 | 91361165436318892024647429/22407500000000000000000000 |
| `b * c * e * k` | 100 | 63466929890386236980197971/2240750000000000000000000000 | 63466929890386236980197971/22407500000000000000000000 |
| `c * e * k` | -111399/2000 | 132787949314240061303/2240750000000000000000 | 0 |
| `c * e * h * p` | -100 | 1333076027691561721799/125000000000000000000000 | 0 |
| `c * e * h` | -1334079/10000 | 8575097149033261/250000000000000000 | 0 |
| `e * h * p` | 12966/625 | 11642687077542701/500000000000000000 | 75479540323709330583/156250000000000000000 |
| `c * e * f * k` | -100 | 12528410229849235543876747/560187500000000000000000000 | 0 |
| `e * f * k` | 329187759/62000000 | 109419385582836841753/2240750000000000000000 | 36019522331170968799307701527/138926500000000000000000000000 |
| `c * q * r` | -164535941397/5000000000 | 494188831279143/7812500000000000 | 0 |
| `a * f * q * r` | 200 | 82821517372557511119/7812500000000000000000 | 82821517372557511119/39062500000000000000 |
| `a * f * q` | 19989/1000 | 1941023163715051/62500000000000000 | 38799112019500154439/62500000000000000000 |
| `f * q * r` | -149928255511/1550000000 | 407219469535593/7812500000000000 | 0 |
| `a * f * p * k` | 100 | 9395114655338510207507477/1120375000000000000000000000 | 9395114655338510207507477/11203750000000000000000000 |
| `a * p * k` | -19079/5000 | 99578317261852380073/4481500000000000000000 | 0 |
| `f * p * k` | -13857/200 | 46194198410577630419/1120375000000000000000 | 0 |
| `p * k` | 12152650802975655760117/173658125000000000000 | 489609835934431/4481500000000000 | 5950057365813341968203028938276888427/778248887187500000000000000000000000 |
| `a * f * p * w` | -200 | 1465063082813542050513/125000000000000000000000 | 0 |
| `f * p * w` | 130840005511/1550000000 | 7203468740325111/125000000000000000 | 942501889682453751171686721/193750000000000000000000000 |
| `a * f * q * j` | -100 | 779186869633296637981/62500000000000000000000 | 0 |
| `a * q * j` | 519079/5000 | 8258559917257169/250000000000000000 | 4286845023289934027351/1250000000000000000000 |
| `f * q * j` | -40056505511/1550000000 | 3831130771172107/62500000000000000 | 0 |
| `q * j` | -12180590977325843172967/173658125000000000000 | 40605949943/250000000000 | 0 |
| `c * v` | 4067506151/500000000 | 3164408863/15625000000 | 12871252514531416313/7812500000000000000 |
| `v` | 3058024255470055346281/89630000000000000000 | 27637/62500 | 84514616348425919605167997/5601875000000000000000000 |
| `a * c * h * u` | 100 | 2350519676713716803757/250000000000000000000000 | 2350519676713716803757/2500000000000000000000 |
| `a * c * u` | 13857/200 | 11557109870115579/250000000000000000 | 160146871470191578203/50000000000000000000 |
| `c * h * u` | -51474/625 | 11557109870115579/250000000000000000 | 0 |
| `c * u` | -905790519/100000000 | 56824365213/250000000000 | 0 |
| `a * f * h * u` | -100 | 1936865658025506482307/250000000000000000000000 | 0 |
| `f * h * u` | 127889/625 | 9523242640857429/250000000000000000 | 1217917978096615737381/156250000000000000000 |
| `a * c * e * u` | -100 | 4255709238802270001907/250000000000000000000000 | 0 |
| `c * e * u` | -140529/2500 | 20924606475478629/250000000000000000 | 0 |
| `a * f * v` | -100 | 530325913967879/15625000000000000 | 0 |
| `a * v` | 24536105613/2500000000 | 5620895971/62500000000 | 137914897184142185223/156250000000000000000 |
| `f * v` | 248230072259/5000000000 | 2607523313/15625000000 | 647265700403017074067/78125000000000000000 |
| `c * h * q * u` | -100 | 1169036334691801162587/62500000000000000000000 | 0 |
| `c * h * q` | -17473/500 | 2355565095784901/62500000000000000 | 0 |
| `c * q * u` | -13857/200 | 5747955014390589/62500000000000000 | 0 |
| `c * e * q * u` | 100 | 2116586718814089759237/62500000000000000000000 | 2116586718814089759237/625000000000000000000 |
| `e * q * u` | 182677/2000 | 18485634973354263/250000000000000000 | 3376900340027436702051/500000000000000000000 |
| `a * p * v` | 114499/2500 | 873818866755689/31250000000000000 | 100051386424659634811/78125000000000000000 |
| `p * v` | -157482715567/2000000000 | 4296420383/31250000000 | 0 |
| `a * e * p * u` | -100 | 5778114241652434451187/500000000000000000000000 | 0 |
| `a * p * u` | -27949/2000 | 15691462312319739/500000000000000000 | 0 |
| `e * p * u` | 182207/2500 | 28410015791154789/500000000000000000 | 5176503747258940639323/1250000000000000000000 |
| `p * u` | 1437899319/200000000 | 77152280733/500000000000 | 110937211925277520827/100000000000000000000 |
| `c * v * r` | -3857/100 | 135022161775347/1953125000000000 | 0 |
| `v * r` | -199804397/25000000 | 1179243153/7812500000 | 0 |
| `c * f * v * w` | -100 | 146628502217486454627/3906250000000000000000 | 0 |
| `c * f * v` | -50639/1250 | 298558811815187/3906250000000000 | 0 |
| `c * v * w` | -41507/2000 | 1554107645205423/15625000000000000 | 0 |
| `f * v * w` | -135501/2500 | 1280609457003873/15625000000000000 | 0 |
| `v * w` | -49897490007/500000000 | 13573111077/62500000000 | 0 |
| `a * f * u * k` | 100 | 29992945194256898702251161/2240750000000000000000000000 | 29992945194256898702251161/22407500000000000000000000 |
| `a * u * k` | 196767/10000 | 317893620433252060989/8963000000000000000000 | 62550974011789708284622563/89630000000000000000000000 |
| `f * u * k` | -13857/200 | 147470266414876851567/2240750000000000000000 | 0 |
| `u * k` | -11609353/100000000 | 1563029458869483/8963000000000000 | 0 |
| `a * u * j` | -612147/10000 | 40518975469395951/1000000000000000000 | 0 |
| `u * j` | 13857/200 | 199224986697/1000000000000 | 2760660640660329/200000000000000 |
| `a * q * u * j` | 100 | 4098615925655808631503/250000000000000000000000 | 4098615925655808631503/2500000000000000000000 |
| `c * h * u * w` | 100 | 5675939356521033274059/250000000000000000000000 | 5675939356521033274059/2500000000000000000000 |
| `c * u * w` | 13857/200 | 27907639067773773/250000000000000000 | 386716154562141172461/50000000000000000000 |
| `a * c * v * r` | 100 | 27461212328355398901/1953125000000000000000 | 27461212328355398901/19531250000000000000 |
| `a * c * v` | 544113/10000 | 643586967783529/15625000000000000 | 350184035801599314777/156250000000000000000 |
| `a * v * r` | 135501/2500 | 239838010186599/7812500000000000 | 32498290218294351099/19531250000000000000 |
| `c * f * w * k` | 100 | 16709434951494804674063139/560187500000000000000000000 | 16709434951494804674063139/5601875000000000000000000 |
| `c * w * k` | -344349/5000 | 177102406506638169711/2240750000000000000000 | 0 |
| `f * w * k` | 3977902641/62000000 | 145935204250646771361/2240750000000000000000 | 580516034403522217755045064401/138926500000000000000000000000 |
| `w * k` | -1369786796525709/31000000000000 | 1546759417170789/8963000000000000 | 0 |
| `c * e * f * w` | -100 | 1953665493977337976143/62500000000000000000000 | 0 |
| `c * e * w` | -4149/250 | 20706795980639307/250000000000000000 | 0 |
| `c * e * w * j` | 100 | 8312349817304017648317/250000000000000000000000 | 8312349817304017648317/2500000000000000000000 |
| `c * e * j` | -143869/5000 | 16925258372792077/250000000000000000 | 0 |
| `c * e * u * w` | -100 | 10276513656843539753109/250000000000000000000000 | 0 |
| `e * u * w` | 343461/10000 | 89751994837016391/1000000000000000000 | 30826309898716486669251/10000000000000000000000 |
| `e * f * r * k` | 200 | 4668815763434065200758757/280093750000000000000000000 | 4668815763434065200758757/1400468750000000000000000 |
| `e * f * q * r` | -100 | 149951646925500017169/7812500000000000000000 | 0 |
| `e * f * q` | 4361/1000 | 3514299536560501/62500000000000000 | 15325860278940344861/62500000000000000000 |
| `e * q * r` | 19079/5000 | 1589329478060181/31250000000000000 | 30322817111910193299/156250000000000000000 |
| `e * f * w * j` | -200 | 6849508667436543210867/250000000000000000000000 | 0 |
| `e * f * j` | 74019/2000 | 13946682523118627/250000000000000000 | 1032319493678717651913/500000000000000000000 |
| `e * f * q * j` | 100 | 1410748777261018476931/62500000000000000000000 | 1410748777261018476931/625000000000000000000 |
| `e * q * j` | -19079/5000 | 14952450765360719/250000000000000000 | 0 |
| `e * f * f * w` | 100 | 1609851489456395782593/62500000000000000000000 | 1609851489456395782593/625000000000000000000 |
| `f * f * w` | -178448255511/1550000000 | 4371828406080921/62500000000000000 | 0 |
| `c * e * f * v` | 100 | 109939206951141754571/3906250000000000000000 | 109939206951141754571/39062500000000000000 |
| `c * e * v` | -15522/625 | 1165239768849079/15625000000000000 | 0 |
| `e * f * v` | 427469/10000 | 960176132115929/15625000000000000 | 410445531019464053701/156250000000000000000 |
| `e * v` | 500270201367/10000000000 | 10176855421/62500000000 | 5091177510746515560507/625000000000000000000 |
| `e * f * h * u` | -100 | 3506772207370853652957/250000000000000000000000 | 0 |
| `e * f * h` | 63487/2500 | 7066016654417411/250000000000000000 | 448600199338998172157/625000000000000000000 |
| `e * h * u` | 461881/10000 | 37168090889896593/1000000000000000000 | 17167234988316328271433/10000000000000000000000 |
| `c * e * f * h` | 300 | 809051840914139142089/62500000000000000000000 | 2427155522742417426267/625000000000000000000 |
| `e * f * f * h` | -100 | 666671605327628310439/62500000000000000000000 | 0 |
| `f * f * h` | 20004/625 | 1810461325648783/62500000000000000 | 9054117089569563783/9765625000000000000 |
| `h * p * v` | -708457/10000 | 873818866755689/31250000000000000 | 0 |
| `h * v` | 174827176321/10000000000 | 5620895971/62500000000 | 982685371004015502691/625000000000000000000 |
| `c * e * p * v` | -100 | 181147009225508972261/7812500000000000000000 | 0 |
| `c * p * v` | 13857/100 | 491935837433117/7812500000000000 | 6816754899310702269/781250000000000000 |
| `e * p * v` | -749539/10000 | 1582083766893239/31250000000000000 | 0 |
| `e * h * p * u` | 100 | 5778114241652434451187/500000000000000000000000 | 5778114241652434451187/5000000000000000000000 |
| `h * p * u` | 103767/10000 | 15691462312319739/500000000000000000 | 1628255969762482356813/5000000000000000000000 |
| `a * c * p * v` | -100 | 100051386424659634811/7812500000000000000000 | 0 |
| `e * v * r` | 385501/2500 | 434236243958649/7812500000000000 | 167398506282303148149/19531250000000000000 |
| `e * e * u * r` | -100 | 2871380695606610856867/125000000000000000000000 | 0 |
| `e * e * u` | -29161/2500 | 67294304895980943/1000000000000000000 | 0 |
| `e * e * r` | 7527/500 | 5785726193929341/125000000000000000 | 43549161061706149707/62500000000000000000 |
| `e * e` | 1661382347/125000000 | 135595542289/1000000000000 | 225276040290836572283/125000000000000000000 |
| `e * u * r` | 122117/1250 | 7797727785414699/125000000000000000 | 952235123971486797783/156250000000000000000 |
| `c * e * e * u` | 100 | 7705130616284921992557/250000000000000000000000 | 7705130616284921992557/2500000000000000000000 |
| `c * e * e` | 17473/500 | 15525553996548211/250000000000000000 | 271278004981686890803/125000000000000000000 |
| `c * e * v * r` | 100 | 49719615697021351851/1953125000000000000000 | 49719615697021351851/19531250000000000000 |
| `e * h * u * r` | 100 | 1585925270180997726717/125000000000000000000000 | 1585925270180997726717/1250000000000000000000 |
| `c * e * h * r` | -100 | 365890820252100213609/31250000000000000000000 | 0 |
| `r * w` | 261776017664953026639/2800937500000000000 | 20955641949/125000000000 | 5485684497021854672150742879411/350117187500000000000000000000 |
| `e * r * r` | -15503350013/250000000 | 670421040397713/15625000000000000 | 0 |
| `r * r` | -195220600218918104401/5601875000000000000 | 1820643561/15625000000 | 0 |
| `a * r * r` | 837/10 | 370287949366863/15625000000000000 | 309931013620064331/156250000000000000 |
| `e * r * j` | 1113835698159431/11114120000000 | 6307337614377987/125000000000000000 | 7025337795237945129177822845397/1389265000000000000000000000000 |
| `c * e * h * j` | -100 | 3442309823633570996491/250000000000000000000000 | 0 |
| `e * h * j` | 29161/2500 | 30064103823034009/1000000000000000000 | 876699331583494736449/2500000000000000000000 |
| `p * v * k` | -100 | 13531347035719869547/280093750000000000000 | 0 |
| `v * k` | 427469/10000 | 87041258696633/560187500000000 | 37207439813791011877/5601875000000000000 |
| `c * v * k` | 100 | 9966137079505781867/140046875000000000000 | 9966137079505781867/1400468750000000000 |
| `e * q * u * j` | -100 | 7420706932988575150353/250000000000000000000000 | 0 |
| `e * u * j` | -387853/10000 | 73361214526396401/1000000000000000000 | 0 |
| `f * h * h * p` | -100 | 606711838776730424599/125000000000000000000000 | 0 |
| `f * h * h` | 42381/10000 | 3902712861762461/250000000000000000 | 165400873794354859641/2500000000000000000000 |
| `f * h * p` | -961783/5000 | 2983100056429153/125000000000000000 | 0 |
| `f * f * h * w` | -100 | 889155576713955955743/62500000000000000000000 | 0 |
| `f * h * r` | 17270236751/155000000 | 818774701418223/31250000000000000 | 14140432939222046675713473/4843750000000000000000000 |
| `f * h * k` | -114860303207/775000000 | 60434678309641192903/2240750000000000000000 | 0 |
| `f * h * w * j` | 100 | 3783130847341890780717/250000000000000000000000 | 3783130847341890780717/2500000000000000000000 |
| `f * h * j` | -491121/10000 | 7703052500996477/250000000000000000 | 0 |
| `f * h * p * w` | 200 | 1465063082813542050513/125000000000000000000000 | 1465063082813542050513/625000000000000000000 |
| `h * p * w` | -736099/5000 | 15528125182180437/500000000000000000 | 0 |
| `f * h * q * r` | -100 | 82821517372557511119/7812500000000000000000 | 0 |
| `f * h * q` | -24094/625 | 1941023163715051/62500000000000000 | 0 |
| `h * q * r` | 344349/5000 | 877820828758731/31250000000000000 | 302276724562240261119/156250000000000000000 |
| `f * f * h * q` | 100 | 183133594473351346799/15625000000000000000000 | 183133594473351346799/156250000000000000000 |
| `f * f * q` | 23448255511/1550000000 | 900437079172553/15625000000000000 | 681086409806985780715793/781250000000000000000000 |
| `a * f * f * q` | -100 | 183133594473351346799/15625000000000000000000 | 0 |
| `f * h * p * k` | -100 | 9395114655338510207507477/1120375000000000000000000000 | 0 |
| `h * p * k` | 76571815707/775000000 | 99578317261852380073/4481500000000000000000 | 7624892557787737308389075206611/3473162500000000000000000000000 |
| `f * f * h * k` | 100 | 5701951463836336909205147/560187500000000000000000000 | 5701951463836336909205147/5601875000000000000000000 |
| `f * f * k` | 13857/200 | 28035536223953510909/560187500000000000000 | 388488425455323800666013/112037500000000000000000 |
| `f * h * p * v` | 100 | 82443936259532501461/7812500000000000000000 | 82443936259532501461/78125000000000000000 |
| `f * h * v` | 222907/2000 | 530325913967879/15625000000000000 | 118213358504838004253/31250000000000000000 |
| `f * p * v` | 13857/200 | 405362966715667/7812500000000000 | 5617114629778997619/1562500000000000000 |
| `f * h * q * u` | -100 | 963304562850651515637/62500000000000000000000 | 0 |
| `f * q * u` | -13857/200 | 4736406498333939/62500000000000000 | 0 |
| `f * h * h * u` | 200 | 1936865658025506482307/250000000000000000000000 | 1936865658025506482307/1250000000000000000000 |
| `h * h * u` | 63637/2000 | 20528735418769743/1000000000000000000 | 1306387135844250135291/2000000000000000000000 |
| `c * e * f * q` | -100 | 402383782636640803999/15625000000000000000000 | 0 |
| `c * f * q` | -103767/10000 | 1092742319772103/15625000000000000 | 0 |
| `p * r * k` | -32144473839757/11203750000000 | 20891162089486236339/560187500000000000000 | 0 |
| `p * r` | 2150961791234034516169/44815000000000000000 | 6633280071/62500000000 | 14267931983275183653029954967999/2800937500000000000000000000000 |
| `e * f * q * u` | 100 | 1744101174101001359787/62500000000000000000000 | 1744101174101001359787/625000000000000000000 |
| `f * q * k` | -27847499293/775000000 | 30057325415866299473/560187500000000000000 | 0 |
| `q * k` | 683487706049847/12500000000000 | 318575982955477/2240750000000000 | 217742767792814131888143662019/28009375000000000000000000000 |
| `e * p * j` | -491121/10000 | 22979971365478157/500000000000000000 | 0 |
| `p * j` | 72414934694817831/1550000000000000 | 62406061829/500000000000 | 4519130891907798807277672899/775000000000000000000000000 |
| `v * j` | 68606977/1250000 | 11094348547/62500000000 | 761149715594012419/78125000000000000 |
| `f * q * w` | 40 | 4687103824739037/62500000000000000 | 4687103824739037/1562500000000000 |
| `q * w` | -925703/25000 | 49678362513/250000000000 | 0 |
| `e * p * r` | -8293074987/250000000 | 2442592620384543/62500000000000000 | 0 |
| `a * p * u * k` | -100 | 49419424338932932149288951/4481500000000000000000000000 | 0 |
| `a * p * u * w` | 100 | 7706406662288782537419/500000000000000000000000 | 7706406662288782537419/5000000000000000000000 |
| `a * p * r` | -337082587/5000000 | 1349096400680193/62500000000000000 | 0 |
| `c * h * p * v` | 200 | 100051386424659634811/7812500000000000000000 | 100051386424659634811/39062500000000000000 |
| `c * h * v` | -544113/5000 | 643586967783529/15625000000000000 | 0 |
| `h * p * r * k` | 100 | 4248907219245979205334837/560187500000000000000000000 | 4248907219245979205334837/5601875000000000000000000 |
| `h * p * r` | -18453441397/5000000000 | 1349096400680193/62500000000000000 | 0 |
| `h * p * w * j` | -100 | 6233470820007875005347/500000000000000000000000 | 0 |
| `h * p * j` | 491121/10000 | 12692332072967507/500000000000000000 | 6233470820007875005347/5000000000000000000000 |
| `p * w * j` | -147448255511/1550000000 | 30648927491520309/500000000000000000 | 0 |
| `f * h * u * k` | -100 | 29992945194256898702251161/2240750000000000000000000000 | 0 |
| `h * u * k` | 115351/5000 | 317893620433252060989/8963000000000000000000 | 36669347010596058487142139/44815000000000000000000000 |
| `h * u * j` | 100 | 40518975469395951/1000000000000000000 | 40518975469395951/10000000000000000 |
| `p * v * w` | 100 | 2110062274919343/31250000000000000 | 2110062274919343/312500000000000 |
| `e * p * u * w` | -100 | 13952755365367731128469/500000000000000000000000 | 0 |
| `e * p * w` | 72671/5000 | 28114287429184587/500000000000000000 | 2043093381766273121877/2500000000000000000000 |
| `q * v * r` | -100 | 119283982655409/1953125000000000 | 0 |
| `q * v` | -81923/5000 | 2795565461/15625000000 | 0 |
| `e * q * u * r` | 100 | 788763558678053047947/31250000000000000000000 | 788763558678053047947/312500000000000000000 |
| `q * r * k` | 100 | 13593318616727248113/280093750000000000000 | 13593318616727248113/2800937500000000000 |
| `e * p * r * k` | -100 | 7692815289697785265818987/560187500000000000000000000 | 0 |
| `e * p * k` | -77297/2500 | 180290498715643330423/4481500000000000000000 | 0 |
| `q * w * j` | -100 | 19942434741956103/250000000000000000 | 0 |
| `e * p * w * j` | 100 | 11285946516984997943997/500000000000000000000000 | 11285946516984997943997/5000000000000000000000 |
| `b * q * r` | -122082587/5000000 | 2062908944459649/31250000000000000 | 0 |
| `b * c * v * w` | 100 | 742796627779448360811/15625000000000000000000 | 742796627779448360811/156250000000000000000 |
| `b * c * v` | 50639/1250 | 1512451366932891/15625000000000000 | 76589024770114667349/19531250000000000000 |
| `b * v * w` | 135501/2500 | 6487363451029689/62500000000000000 | 879044234977973889189/156250000000000000000 |
| `b * v` | 70108374849/5000000000 | 13209297609/62500000000 | 926082388263771436041/312500000000000000000 |
| `e * f * p * v` | -100 | 149268021322610206411/7812500000000000000000 | 0 |
| `e * f * p` | -196767/10000 | 5401021142765503/125000000000000000 | 0 |
| `b * e * p * v` | 100 | 756168010972991832723/31250000000000000000000 | 756168010972991832723/312500000000000000000 |
| `b * e * p` | 196767/10000 | 27360712485906279/500000000000000000 | 5383685313714320799993/5000000000000000000000 |
| `b * e * v` | -427469/10000 | 4864099286454897/62500000000000000 | 0 |
| `b * p * v` | -13857/200 | 2053504196997531/31250000000000000 | 0 |
| `b * c * e * v` | -100 | 556934504199799251603/15625000000000000000000 | 0 |
| `b * e * q * u` | -100 | 8835338634959483480691/250000000000000000000000 | 0 |
| `b * e * u` | -387853/10000 | 87346283698550547/1000000000000000000 | 0 |
| `e * f * f * k` | -100 | 10323609610355073182553797/560187500000000000000000000 | 0 |
| `b * h * p * v` | -100 | 417647844097948847373/31250000000000000000000 | 0 |
| `b * h * v` | -22907/2000 | 2686546575611247/62500000000000000 | 0 |
| `b * h * h * u` | -100 | 9811852794548930055051/1000000000000000000000000 | 0 |
| `c * f * h * h` | -100 | 446856719958940022039/62500000000000000000000 | 0 |
| `h * h * u * r` | -100 | 875940611583486164067/125000000000000000000000 | 0 |
| `h * h * r` | 12034/625 | 1764988024234941/125000000000000000 | 10619932941821639997/39062500000000000000 |
| `e * p * u * k` | 100 | 89475830736090481525639401/4481500000000000000000000000 | 89475830736090481525639401/44815000000000000000000000 |
| `e * u * k` | -427469/10000 | 575559026727886333539/8963000000000000000000 | 0 |
| `q * v * j` | 100 | 1122226638574691/15625000000000000 | 1122226638574691/156250000000000 |
| `c * h * h * r` | 100 | 202089363786876509559/31250000000000000000000 | 202089363786876509559/312500000000000000000 |
| `h * v * r` | -10501/1250 | 239838010186599/7812500000000000 | 0 |
| `c * h * h * u` | -100 | 2350519676713716803757/250000000000000000000000 | 0 |
| `c * h * v * r` | -200 | 27461212328355398901/1953125000000000000000 | 0 |
| `h * q * j` | -100 | 8258559917257169/250000000000000000 | 0 |
| `c * h * u * k` | 100 | 36398501645986927731179511/2240750000000000000000000000 | 36398501645986927731179511/22407500000000000000000000 |
| `c * u * k` | 13857/200 | 178965310011096934017/2240750000000000000000 | 2479922300823770214673569/448150000000000000000000 |
| `c * e * u * k` | -100 | 65900933001316257303881961/2240750000000000000000000000 | 0 |
| `e * h * r * j` | 100 | 1282805246025038130021/125000000000000000000000 | 1282805246025038130021/1250000000000000000000 |
| `h * r * j` | -1884240931968219/13892650000000 | 3483678122343837/125000000000000000 | 0 |
| `c * r * w` | -433/10 | 2399400047518551/31250000000000000 | 0 |
| `h * r * r` | -30077/2500 | 370287949366863/15625000000000000 | 0 |
| `q * r * j` | 2127246658916237/21707265625000 | 1732615278117867/31250000000000000 | 118893550373014817110173100209/21882324218750000000000000000 |
| `e * e * f` | -50 | 12793303819424861/250000000000000000 | 0 |
| `f * w * w` | -50 | 22756963387241709/250000000000000000 | 0 |
| `w * w` | 344349/10000 | 241199836641/1000000000000 | 83056922547491709/10000000000000000 |
| `e * r * w` | -50 | 7716558901806117/125000000000000000 | 0 |
| `p * r * w` | 210125668128581/5601875000000 | 3257743141749591/62500000000000000 | 684535454251435368511092160371/350117187500000000000000000000 |
| `f * r * w` | 10 | 1977143862246201/31250000000000000 | 1977143862246201/3125000000000000 |
| `q * r * r` | -210125668128581/5601875000000 | 184163558125833/3906250000000000 | 0 |
| `r * r * k` | -61014707410243/11203750000000 | 5734019871453490749/140046875000000000000 | 0 |
| `r * w * j` | 61014707410243/11203750000000 | 8412244303229019/125000000000000000 | 513270624825002087872015441617/1400468750000000000000000000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 71 | -7018206198786730596927244227039385617138473513/2455958925741953125000000000000000000000 |

## Stage 72

| Property | Value |
| --- | --- |
| Scope | root/AFP+/CFQ+/AEQ+/HEQ-/PQR+/PQS+/PRS- |
| Packet | forest:root/AFP+/CFQ+/AEQ+/HEQ-/PQR+/PQS+/PRS- |
| Index | 0 |
| Context | 26 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 68 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 145431/250000 | 103767/1000000 | 145431/250000 |
| c | 135501/250000 | 1/1 | 135501/250000 | 1/1 |
| e | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| f | 155651/500000 | 344349/500000 | 155651/500000 | 344349/500000 |
| h | 796617/1000000 | 1/1 | 796617/1000000 | 1/1 |
| p | 22907/200000 | 425453/1000000 | 22907/200000 | 425453/1000000 |
| q | 387853/1000000 | 158493/200000 | 387853/1000000 | 158493/200000 |
| u | 34029/100000 | 845747/1000000 | 34029/100000 | 845747/1000000 |
| v | 196767/1000000 | 727327/1000000 | 196767/1000000 | 727327/1000000 |
| r | 155651/250000 | 1/1 | 155651/250000 | 1/1 |
| w | 508879/1000000 | 1/1 | 508879/1000000 | 1/1 |
| j | 247401/500000 | 896233/1000000 | 247401/500000 | 896233/1000000 |
| k | 4673/12500 | 8033/8963 | 4673/12500 | 8033/8963 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |


### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |


### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 72:23 | ACP | hi | 700583/1000000 | earlier 68:23; ACP; hi; 700583/1000000 |
| 72:32 | AEH | lo | 13857/20000 | occupants P, Q |
| 72:37 | AEQ | hi | 503073/1000000 | earlier 68:37; AEQ; hi; 503073/1000000 |
| 72:40 | AES | lo | 4109/40000 | earlier 68:40; AES; lo; 4109/40000 |
| 72:42 | AFH | lo | 279/1000 | occupants P |
| 72:48 | AFR | lo | 76253/500000 | earlier 68:48; AFR; lo; 76253/500000 |
| 72:54 | AHQ | lo | 7117/25000 | earlier 68:54; AHQ; lo; 7117/25000 |
| 72:55 | AHQ | hi | 710233/1000000 | earlier 68:55; AHQ; hi; 710233/1000000 |
| 72:57 | AHR | hi | 896233/1000000 | vertex maximum 896233/1000000 |
| 72:60 | APQ | lo | 2467/25000 | earlier 68:60; APQ; lo; 2467/25000 |
| 72:70 | BCH | lo | 349719/1000000 | earlier 68:70; BCH; lo; 349719/1000000 |
| 72:73 | BCP | hi | 710233/1000000 | earlier 68:73; BCP; hi; 710233/1000000 |
| 72:83 | BEH | hi | 59075689/62500000 | vertex maximum 59075689/62500000 |
| 72:84 | BEP | lo | 42281/200000 | earlier 68:84; BEP; lo; 42281/200000 |
| 72:90 | BES | lo | 6399/62500 | earlier 68:90; BES; lo; 6399/62500 |
| 72:104 | BHQ | lo | 77999/250000 | earlier 68:104; BHQ; lo; 77999/250000 |
| 72:106 | BHR | lo | 322553/1000000 | earlier 68:106; BHR; lo; 322553/1000000 |
| 72:110 | BPQ | lo | 31499/250000 | earlier 68:110; BPQ; lo; 31499/250000 |
| 72:112 | BPR | lo | 136553/1000000 | earlier 68:112; BPR; lo; 136553/1000000 |
| 72:119 | CEH | hi | 11153467/15625000 | vertex maximum 11153467/15625000 |
| 72:121 | CEP | hi | 28235558407/50000000000 | vertex maximum 28235558407/50000000000 |
| 72:122 | CEQ | lo | 93/1000 | occupants none |
| 72:125 | CER | hi | 2248161899/5000000000 | vertex maximum 2248161899/5000000000 |
| 72:128 | CFH | lo | 305563/1000000 | earlier 68:128; CFH; lo; 305563/1000000 |
| 72:132 | CFQ | lo | 93/1000 | occupants none |
| 72:136 | CFS | lo | 93/1000 | occupants none |
| 72:140 | CHQ | lo | 93/1000 | occupants none |
| 72:146 | CPQ | lo | 93/1000 | occupants none |
| 72:149 | CPR | hi | 881163/1000000 | earlier 68:149; CPR; hi; 881163/1000000 |
| 72:152 | CQR | lo | 93/1000 | occupants none |
| 72:154 | CQS | lo | 93/1000 | occupants none |
| 72:163 | EFR | hi | 308616937317/500000000000 | vertex maximum 308616937317/500000000000 |
| 72:164 | EFS | lo | 93/1000 | occupants none |
| 72:166 | EHP | lo | 102901/1000000 | earlier 68:166; EHP; lo; 102901/1000000 |
| 72:168 | EHQ | lo | 93/1000 | occupants none |
| 72:170 | EHR | lo | 279/1000 | occupants S |
| 72:175 | EPR | hi | 158716590669/200000000000 | vertex maximum 158716590669/200000000000 |
| 72:176 | EPS | lo | 18893/200000 | earlier 68:176; EPS; lo; 18893/200000 |
| 72:180 | EQS | lo | 93973/1000000 | earlier 68:180; EQS; lo; 93973/1000000 |
| 72:182 | ERS | lo | 93/1000 | occupants none |
| 72:184 | FHP | lo | 93/1000 | occupants none |
| 72:187 | FHQ | hi | 141503/250000 | earlier 68:187; FHQ; hi; 141503/250000 |
| 72:188 | FHR | lo | 93/1000 | occupants none |
| 72:202 | FRS | lo | 93/1000 | occupants none |
| 72:211 | HQR | hi | 741163/1000000 | earlier 68:211; HQR; hi; 741163/1000000 |
| 72:217 | PQR | hi | 318493/500000 | earlier 68:215; PQR; hi; 318493/500000 |
| 72:218 | PQS | lo | 93/1000 | occupants none |
| 72:220 | PRS | lo | 93/1000 | occupants none |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 379 | plu | AHR * EFH = AEH * FHR + AFH * EHR | circuit HAEFR |
| 639 | plu | BEH * HQR = BHQ * EHR + BHR * EHQ | circuit HBEQR |
| 1338 | quad | CER + CPR >= 93/125 | quadrilateral CERP; occupants Q, S |
| 2557 | bary | outer CEH; fans EHQ, CHQ, CEQ; target FQS; sign -1; vertices CFS -1; EFS -1; FHS -1 | container CEH; inner Q; line FS |
| 2768 | bary | outer CPS; fans PQS, CQS, CPQ; target FHQ; sign 1; vertices CFH 1; FHP 1; FHS 1 | container CPS; inner Q; line FH |
| 2809 | bary | outer EFR; fans FRS, ERS, EFS; target HQS; sign 1; vertices EHQ 1; FHQ 1; HQR 1 | container EFR; inner S; line HQ |
| 2863 | bary | outer EPR; fans PRS, ERS, EPS; target CPS; sign -1; vertices CEP -1; none 0; CPR -1 | container EPR; inner S; line CP |
| 2870 | bary | outer EPR; fans PRS, ERS, EPS; target FHS; sign 1; vertices EFH 1; FHP 1; FHR 1 | container EPR; inner S; line FH |
| 2999 | four | 1 * CFH + -1 * CHQ + -1 * CFQ + -1 * FHQ = 0 | vertices CFHQ |
| 3010 | four | -1 * CHQ + -1 * CQR + 1 * CHR + -1 * HQR = 0 | vertices CHQR |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 72:226 | EFH | lo | 39687/250000 | 2845521/17924660 | 379 | 72:32, 72:188, 72:42, 72:170, 72:57 |
| 72:229 | HQR | lo | 30957/250000 | 117044313/945211024 | 639 | 72:104, 72:170, 72:106, 72:168, 72:83 |
| 72:232 | CPR | lo | 294367/1000000 | 1471838101/5000000000 | 1338 | 72:125 |
| 72:245 | CPS | hi | 148163/200000 | 39193183770357349/52905530223000000 | 2863 | 72:175, 72:220, 72:182, 72:176, 72:121, 72:149 |
| 72:248 | FHS | lo | 20141/200000 | 1775950636913/17635176741000 | 2870 | 72:175, 72:220, 72:182, 72:176, 72:226, 72:184, 72:188 |
| 72:251 | CHR | lo | 77457/250000 | 77457/250000 | 3010 | 72:140, 72:152, 72:229 |
| 72:259 | FQS | lo | 94003/1000000 | 8387750073/89227736000 | 2557 | 72:119, 72:168, 72:140, 72:122, 72:136, 72:164, 72:248 |
| 72:260 | FHQ | lo | 120651/1000000 | 89380719/740815000 | 2768 | 72:245, 72:218, 72:154, 72:146, 72:128, 72:184, 72:248 |
| 72:262 | CFH | lo | 306651/1000000 | 306651/1000000 | 2999 | 72:140, 72:132, 72:260 |
| 72:266 | FHQ | lo | 30197/250000 | 89481903/740815000 | 2768 | 72:245, 72:218, 72:154, 72:146, 72:262, 72:184, 72:248 |
| 72:268 | CFH | lo | 76697/250000 | 76697/250000 | 2999 | 72:140, 72:132, 72:266 |
| 72:271 | FHQ | lo | 24161/200000 | 22373661/185203750 | 2768 | 72:245, 72:218, 72:154, 72:146, 72:268, 72:184, 72:248 |
| 72:272 | HQS | lo | 50917/500000 | 10475936556827/102872312439000 | 2809 | 72:163, 72:202, 72:182, 72:164, 72:168, 72:271, 72:229 |
| 72:273 | CFH | lo | 61361/200000 | 61361/200000 | 2999 | 72:140, 72:132, 72:271 |
| 72:276 | FHQ | lo | 120807/1000000 | 3579849/29632600 | 2768 | 72:245, 72:218, 72:154, 72:146, 72:273, 72:184, 72:248 |
| 72:277 | CFH | lo | 306807/1000000 | 306807/1000000 | 2999 | 72:140, 72:132, 72:276 |
| 72:279 | FHQ | lo | 15101/125000 | 89496411/740815000 | 2768 | 72:245, 72:218, 72:154, 72:146, 72:277, 72:184, 72:248 |
| 72:280 | CFH | lo | 38351/125000 | 38351/125000 | 2999 | 72:140, 72:132, 72:279 |

## Stage 73

| Property | Value |
| --- | --- |
| Scope | root/AFP+/CFQ+/AEQ+/HEQ-/PQR+/PQS+/PRS- |
| Packet | forest:root/AFP+/CFQ+/AEQ+/HEQ-/PQR+/PQS+/PRS- |
| Index | 1 |
| Context | 26 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 72 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 145431/250000 | 103767/1000000 | 145431/250000 |
| c | 135501/250000 | 1/1 | 135501/250000 | 1/1 |
| e | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| f | 155651/500000 | 344349/500000 | 155651/500000 | 344349/500000 |
| h | 796617/1000000 | 1/1 | 796617/1000000 | 1/1 |
| p | 22907/200000 | 425453/1000000 | 22907/200000 | 425453/1000000 |
| q | 387853/1000000 | 158493/200000 | 387853/1000000 | 158493/200000 |
| u | 34029/100000 | 845747/1000000 | 34029/100000 | 845747/1000000 |
| v | 196767/1000000 | 727327/1000000 | 196767/1000000 | 727327/1000000 |
| r | 155651/250000 | 1/1 | 155651/250000 | 1/1 |
| w | 508879/1000000 | 1/1 | 508879/1000000 | 1/1 |
| j | 247401/500000 | 896233/1000000 | 247401/500000 | 896233/1000000 |
| k | 4673/12500 | 8033/8963 | 4673/12500 | 8033/8963 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |


### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |


### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 73:23 | ACP | hi | 700583/1000000 | earlier 72:23; ACP; hi; 700583/1000000 |
| 73:37 | AEQ | hi | 503073/1000000 | earlier 72:37; AEQ; hi; 503073/1000000 |
| 73:40 | AES | lo | 4109/40000 | earlier 72:40; AES; lo; 4109/40000 |
| 73:48 | AFR | lo | 76253/500000 | earlier 72:48; AFR; lo; 76253/500000 |
| 73:54 | AHQ | lo | 7117/25000 | earlier 72:54; AHQ; lo; 7117/25000 |
| 73:55 | AHQ | hi | 710233/1000000 | earlier 72:55; AHQ; hi; 710233/1000000 |
| 73:60 | APQ | lo | 2467/25000 | earlier 72:60; APQ; lo; 2467/25000 |
| 73:70 | BCH | lo | 349719/1000000 | earlier 72:70; BCH; lo; 349719/1000000 |
| 73:73 | BCP | hi | 710233/1000000 | earlier 72:73; BCP; hi; 710233/1000000 |
| 73:84 | BEP | lo | 42281/200000 | earlier 72:84; BEP; lo; 42281/200000 |
| 73:90 | BES | lo | 6399/62500 | earlier 72:90; BES; lo; 6399/62500 |
| 73:104 | BHQ | lo | 77999/250000 | earlier 72:104; BHQ; lo; 77999/250000 |
| 73:106 | BHR | lo | 322553/1000000 | earlier 72:106; BHR; lo; 322553/1000000 |
| 73:110 | BPQ | lo | 31499/250000 | earlier 72:110; BPQ; lo; 31499/250000 |
| 73:112 | BPR | lo | 136553/1000000 | earlier 72:112; BPR; lo; 136553/1000000 |
| 73:128 | CFH | lo | 38351/125000 | earlier 72:280; CFH; lo; 38351/125000 |
| 73:142 | CHR | lo | 77457/250000 | earlier 72:251; CHR; lo; 77457/250000 |
| 73:148 | CPR | lo | 294367/1000000 | earlier 72:232; CPR; lo; 294367/1000000 |
| 73:149 | CPR | hi | 881163/1000000 | earlier 72:149; CPR; hi; 881163/1000000 |
| 73:156 | EFH | lo | 39687/250000 | earlier 72:226; EFH; lo; 39687/250000 |
| 73:166 | EHP | lo | 102901/1000000 | earlier 72:166; EHP; lo; 102901/1000000 |
| 73:180 | EQS | lo | 93973/1000000 | earlier 72:180; EQS; lo; 93973/1000000 |
| 73:186 | FHQ | lo | 15101/125000 | earlier 72:279; FHQ; lo; 15101/125000 |
| 73:187 | FHQ | hi | 141503/250000 | earlier 72:187; FHQ; hi; 141503/250000 |
| 73:200 | FQS | lo | 94003/1000000 | earlier 72:259; FQS; lo; 94003/1000000 |
| 73:211 | HQR | hi | 741163/1000000 | earlier 72:211; HQR; hi; 741163/1000000 |
| 73:212 | HQS | lo | 50917/500000 | earlier 72:272; HQS; lo; 50917/500000 |
| 73:217 | PQR | hi | 318493/500000 | earlier 72:217; PQR; hi; 318493/500000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |


## Stage 74

| Property | Value |
| --- | --- |
| Scope | root/AFP+/CFQ+/AEQ+/HEQ-/PQR+/PQS+/PRS-/QRS+ |
| Packet | forest:root/AFP+/CFQ+/AEQ+/HEQ-/PQR+/PQS+/PRS-/QRS+ |
| Index | 0 |
| Context | 27 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 73 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 145431/250000 | 103767/1000000 | 21407/40000 |
| c | 135501/250000 | 1/1 | 135501/250000 | 1/1 |
| e | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| f | 155651/500000 | 344349/500000 | 155651/500000 | 344349/500000 |
| h | 796617/1000000 | 1/1 | 796617/1000000 | 1/1 |
| p | 22907/200000 | 425453/1000000 | 22907/200000 | 6143/20000 |
| q | 387853/1000000 | 158493/200000 | 387853/1000000 | 158493/200000 |
| u | 34029/100000 | 845747/1000000 | 354033/1000000 | 845747/1000000 |
| v | 196767/1000000 | 727327/1000000 | 196767/1000000 | 74361/125000 |
| r | 155651/250000 | 1/1 | 82331/125000 | 1/1 |
| w | 508879/1000000 | 1/1 | 771761/1000000 | 1/1 |
| j | 247401/500000 | 896233/1000000 | 129709/250000 | 896233/1000000 |
| k | 4673/12500 | 8033/8963 | 4673/12500 | 864963/1000000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 92 | A_CPR | bitt ["actual-area","CPR",["Q","S"]] | `-1/1 * p * w + 1/1 * c * w + 1/1 * q * r + -1/1 * c * q + -13857/20000` |
| 102 | A_EFS | bitt ["actual-area","EFS",[]] | `-1/1 * f * k + 1/1 * e * f + 1/1 * k + 1/1 * j + -1093/1000 + -1/1 * e * j` |
| 119 | A_FQR | bitt ["actual-area","FQR",["S"]] | `1/1 * u * w + -1/1 * u + -1/1 * f * w + -1/1 * v * r + 1/1 * f * v + 1/1 * r + -279/1000` |
| 121 | A_FRS | bitt ["actual-area","FRS",[]] | `-1/1 * r * k + 1/1 * r + 1/1 * f * k + 1/1 * w * j + -1/1 * f * w + -1/1 * j + -93/1000` |
| 148 | central-x | bitt ["central-lower-x"] | `1/1 * c * h * p + -1/1 * b * h * p + -93/1000 * c + -93/1000 * b` |
| 752 | AREA_lo_BHQ | bitt ["earlier-area",{"direction":"lo","ref":"73:104","triangle":"BHQ","value":"77999/250000"}] | `1/1 * b * v + 1/1 * h * u + -1/1 * b * h + -77999/250000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 92 | p | 22907/200000 | 425453/1000000 | 22907/200000 | 6143/20000 | 22907/200000 | 6143/20000 | `(-508879/1000000, -96443648671/250000000000); (-508879/1000000, -82586292697/250000000000); (-508879/1000000, -88290716871/250000000000); (-508879/1000000, -24152206057/50000000000); (-508879/1000000, -29925052987/125000000000); (-508879/1000000, -183971/1000000); (-508879/1000000, -6761218293/125000000000); (-1/1, -597925241/5000000000); (-1/1, 40193957303/250000000000); (-1/1, -86973321/1000000000); (-1/1, 403843943/50000000000); (-1/1, 6697280647/250000000000); (-1/1, 6143/20000); (-1/1, 10604990007/50000000000)` |
| 1 | 92 | w | 508879/1000000 | 1/1 | 16495209993/21373450000 | 1/1 | 771761/1000000 | 1/1 | `(427469/1000000, -3307945241/5000000000); (177093/200000, -209806042697/250000000000); (117427/500000, -3307945241/5000000000); (13857/20000, -209806042697/250000000000); (427469/1000000, -628977321/1000000000); (177093/200000, -49596156057/50000000000); (117427/500000, -628977321/1000000000); (13857/20000, -49596156057/50000000000); (427469/1000000, -128803719353/250000000000); (177093/200000, -13857/20000); (117427/500000, -128803719353/250000000000); (13857/20000, -13857/20000); (427469/1000000, -16495209993/50000000000); (117427/500000, -16495209993/50000000000)` |
| 2 | 119 | v | 196767/1000000 | 727327/1000000 | 196767/1000000 | 22761/38261 | 196767/1000000 | 74361/125000 | `(-155651/500000, 6421451967/250000000000); (33047/500000, -33196713311/125000000000); (-155651/500000, -17935838471/200000000000); (33047/500000, -380938706711/1000000000000); (-344349/500000, 100770451967/250000000000); (-155651/500000, 13977786689/125000000000); (-344349/500000, 57543361529/200000000000); (-155651/500000, -3542706711/1000000000000); (-155651/500000, 16151/500000); (33047/500000, -172547/500000); (-344349/500000, 204849/500000)` |
| 3 | 119 | r | 155651/250000 | 1/1 | 264524019683/401616500000 | 1/1 | 82331/125000 | 1/1 | `(803233/1000000, -267832115749/500000000000); (803233/1000000, -376332333561/500000000000); (803233/1000000, -651029231721/1000000000000); (803233/1000000, -173605933469/200000000000); (50639/125000, -102932091989/250000000000); (50639/125000, -59809941333/125000000000); (50639/125000, -527093368179/1000000000000); (50639/125000, -593844530887/1000000000000); (803233/1000000, -264524019683/500000000000); (803233/1000000, -416092480317/500000000000); (50639/125000, -25319510989/62500000000); (50639/125000, -34874989011/62500000000)` |
| 4 | 121 | k | 4673/12500 | 8033/8963 | 4673/12500 | 99283/114783 | 4673/12500 | 864963/1000000 | `(-173673/500000, 424928287/2000000000); (601/20000, -9849421357/125000000000); (-344349/500000, 1107632287/2000000000); (-155651/500000, 32819578643/125000000000); (-173673/500000, 127173/500000); (601/20000, -2461/20000); (-344349/500000, 297849/500000); (-155651/500000, 109151/500000); (-173673/500000, 120841933491/1000000000000); (601/20000, -34083516173/200000000000); (-344349/500000, 462193933491/1000000000000); (-155651/500000, 34186883827/200000000000)` |
| 5 | 148 | b | 103767/1000000 | 145431/250000 | 103767/1000000 | 4283/8003 | 103767/1000000 | 21407/40000 | `(-36848105619/200000000000, -47682040519881/50000000000000000); (-36848105619/200000000000, -351894381/200000000000); (-41507/200000, 583602807/50000000000); (-41507/200000, 4307/200000); (-6753618231/20000000000, 411058303918731/5000000000000000); (-6753618231/20000000000, 3033618231/20000000000); (-8003/20000, 580350783/5000000000); (-8003/20000, 4283/20000)` |
| 6 | 752 | u | 34029/100000 | 845747/1000000 | 44254157113/125000000000 | 845747/1000000 | 354033/1000000 | 845747/1000000 | `(796617/1000000, -7484812699/20000000000); (796617/1000000, -506416579/800000000); (1/1, -395345078711/1000000000000); (1/1, -29674648831/40000000000); (796617/1000000, -332928813143/1000000000000); (796617/1000000, -16798252703/40000000000); (1/1, -44254157113/125000000000); (1/1, -2644009073/5000000000)` |
| 7 | 102 | j | 247401/500000 | 896233/1000000 | 58124854649/112029125000 | 896233/1000000 | 129709/250000 | 896233/1000000 | `(896233/1000000, -401617132523/500000000000); (66/125, -4303766223/6250000000); (896233/1000000, -452579367477/500000000000); (66/125, -4072233777/6250000000); (896233/1000000, -58124854649/125000000000); (66/125, -175183583913/500000000000); (896233/1000000, -94033895351/125000000000); (66/125, -249334916087/500000000000)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 74:8 | ABP | lo | 93/1000 | occupants none |
| 74:12 | ABR | lo | 93/1000 | occupants none |
| 74:23 | ACP | hi | 700583/1000000 | earlier 73:23; ACP; hi; 700583/1000000 |
| 74:32 | AEH | lo | 13857/20000 | occupants P, Q |
| 74:36 | AEQ | lo | 93/1000 | occupants none |
| 74:42 | AFH | lo | 279/1000 | occupants P |
| 74:43 | AFH | hi | 308616937317/500000000000 | vertex maximum 308616937317/500000000000 |
| 74:44 | AFP | lo | 93/1000 | occupants none |
| 74:46 | AFQ | lo | 93/1000 | occupants none |
| 74:49 | AFR | hi | 172071282953/250000000000 | vertex maximum 172071282953/250000000000 |
| 74:52 | AHP | lo | 93/1000 | occupants none |
| 74:55 | AHQ | hi | 710233/1000000 | earlier 73:55; AHQ; hi; 710233/1000000 |
| 74:60 | APQ | lo | 2467/25000 | earlier 73:60; APQ; lo; 2467/25000 |
| 74:63 | APR | hi | 61218930721/100000000000 | vertex maximum 61218930721/100000000000 |
| 74:70 | BCH | lo | 349719/1000000 | earlier 73:70; BCH; lo; 349719/1000000 |
| 74:73 | BCP | hi | 710233/1000000 | earlier 73:73; BCP; hi; 710233/1000000 |
| 74:81 | BEF | hi | 174939543131/200000000000 | vertex maximum 174939543131/200000000000 |
| 74:86 | BEQ | lo | 93/1000 | occupants none |
| 74:92 | BFH | lo | 279/1000 | occupants P |
| 74:96 | BFQ | lo | 93/1000 | occupants none |
| 74:102 | BHP | lo | 93/1000 | occupants none |
| 74:104 | BHQ | lo | 77999/250000 | earlier 73:104; BHQ; lo; 77999/250000 |
| 74:106 | BHR | lo | 322553/1000000 | earlier 73:106; BHR; lo; 322553/1000000 |
| 74:110 | BPQ | lo | 31499/250000 | earlier 73:110; BPQ; lo; 31499/250000 |
| 74:112 | BPR | lo | 136553/1000000 | earlier 73:112; BPR; lo; 136553/1000000 |
| 74:118 | CEH | lo | 279/1000 | occupants Q |
| 74:119 | CEH | hi | 11153467/15625000 | vertex maximum 11153467/15625000 |
| 74:122 | CEQ | lo | 93/1000 | occupants none |
| 74:124 | CER | lo | 93/1000 | occupants none |
| 74:128 | CFH | lo | 38351/125000 | earlier 73:128; CFH; lo; 38351/125000 |
| 74:129 | CFH | hi | 376005767333/500000000000 | vertex maximum 376005767333/500000000000 |
| 74:132 | CFQ | lo | 93/1000 | occupants none |
| 74:134 | CFR | lo | 279/1000 | occupants S |
| 74:135 | CFR | hi | 344349/500000 | vertex maximum 344349/500000 |
| 74:136 | CFS | lo | 93/1000 | occupants none |
| 74:138 | CHP | lo | 93/1000 | occupants none |
| 74:140 | CHQ | lo | 93/1000 | occupants none |
| 74:142 | CHR | lo | 13857/20000 | occupants Q, S |
| 74:146 | CPQ | lo | 93/1000 | occupants none |
| 74:148 | CPR | lo | 13857/20000 | occupants Q, S |
| 74:149 | CPR | hi | 881163/1000000 | earlier 73:149; CPR; hi; 881163/1000000 |
| 74:150 | CPS | lo | 279/1000 | occupants Q |
| 74:159 | EFH | hi | 6805474093/10000000000 | vertex maximum 6805474093/10000000000 |
| 74:164 | EFR | lo | 279/1000 | occupants S |
| 74:165 | EFR | hi | 308616937317/500000000000 | vertex maximum 308616937317/500000000000 |
| 74:166 | EFS | lo | 93/1000 | occupants none |
| 74:168 | EHP | lo | 102901/1000000 | earlier 73:166; EHP; lo; 102901/1000000 |
| 74:170 | EHQ | lo | 93/1000 | occupants none |
| 74:184 | ERS | lo | 93/1000 | occupants none |
| 74:186 | FHP | lo | 93/1000 | occupants none |
| 74:189 | FHQ | hi | 141503/250000 | earlier 73:187; FHQ; hi; 141503/250000 |
| 74:190 | FHR | lo | 93/1000 | occupants none |
| 74:191 | FHR | hi | 13781329843/62500000000 | vertex maximum 13781329843/62500000000 |
| 74:202 | FQS | lo | 94003/1000000 | earlier 73:200; FQS; lo; 94003/1000000 |
| 74:204 | FRS | lo | 93/1000 | occupants none |
| 74:206 | HPQ | lo | 93/1000 | occupants none |
| 74:213 | HQR | hi | 741163/1000000 | earlier 73:211; HQR; hi; 741163/1000000 |
| 74:214 | HQS | lo | 50917/500000 | earlier 73:212; HQS; lo; 50917/500000 |
| 74:216 | HRS | lo | 93/1000 | occupants none |
| 74:218 | PQR | lo | 279/1000 | occupants S |
| 74:219 | PQR | hi | 318493/500000 | earlier 73:217; PQR; hi; 318493/500000 |
| 74:220 | PQS | lo | 93/1000 | occupants none |
| 74:222 | PRS | lo | 93/1000 | occupants none |
| 74:224 | QRS | lo | 93/1000 | occupants none |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 25 | fan | CPR = CPQ + PQR + CQR | point Q |
| 31 | fan | FQR = FQS + QRS + FRS | point S |
| 32 | fan | HQR = HQS + QRS + HRS | point S |
| 378 | plu | AEP * AFH = AEF * AHP + AEH * AFP | circuit AEFHP |
| 390 | plu | AFR * EFH = AEF * FHR + AFH * EFR | circuit FAEHR |
| 452 | plu | AFR * FHQ = AFH * FQR + AFQ * FHR | circuit FAHQR |
| 585 | plu | BCP * HPR = BHP * CPR + BPR * CHP | circuit PBCHR |
| 617 | plu | BFR * EFH = BEF * FHR + BFH * EFR | circuit FBEHR |
| 679 | plu | BFR * FHQ = BFH * FQR + BFQ * FHR | circuit FBHQR |
| 803 | plu | CFH * CQR = CFQ * CHR + CFR * CHQ | circuit CFHQR |
| 820 | plu | CPR * FPQ = CFP * PQR + CPQ * FPR | circuit PCFQR |
| 821 | plu | CQR * FPQ = CFQ * PQR + CPQ * FQR | circuit QCFPR |
| 861 | plu | CRS * PQR = CPR * QRS + CQR * PRS | circuit RCPQS |
| 1142 | quad | AER + APR >= 93/125 | quadrilateral AERP; occupants Q, S |
| 1880 | support | FQR * EFR >= 1023/1000 * (FQR - EFQ) | pentagon FQCER |
| 2152 | bary | outer AFH; fans FHP, AHP, AFP; target BPR; sign 1; vertices ABR 1; BFR 1; BHR 1 | container AFH; inner P; line BR |
| 2205 | bary | outer AHQ; fans HPQ, APQ, AHP; target FPR; sign -1; vertices AFR -1; FHR -1; FQR -1 | container AHQ; inner P; line FR |
| 2371 | bary | outer BEF; fans EFQ, BFQ, BEQ; target APQ; sign -1; vertices ABP -1; AEP -1; AFP -1 | container BEF; inner Q; line AP |
| 2658 | bary | outer CEH; fans EHQ, CHQ, CEQ; target FQS; sign -1; vertices CFS -1; EFS -1; FHS -1 | container CEH; inner Q; line FS |
| 2696 | bary | outer CFH; fans FHQ, CHQ, CFQ; target FQR; sign -1; vertices CFR -1; none 0; FHR -1 | container CFH; inner Q; line FR |
| 2703 | bary | outer CFH; fans FHQ, CHQ, CFQ; target PQR; sign -1; vertices CPR -1; FPR 1; HPR 1 | container CFH; inner Q; line PR |
| 2923 | bary | outer CPR; fans PQR, CQR, CPQ; target FHQ; sign 1; vertices CFH 1; FHP 1; FHR 1 | container CPR; inner Q; line FH |
| 2924 | bary | outer CPR; fans PQR, CQR, CPQ; target FPQ; sign 1; vertices CFP 1; none 0; FPR 1 | container CPR; inner Q; line FP |
| 2961 | bary | outer CPR; fans PRS, CRS, CPS; target FHS; sign 1; vertices CFH 1; FHP 1; FHR 1 | container CPR; inner S; line FH |
| 3028 | bary | outer EFR; fans FRS, ERS, EFS; target CQS; sign -1; vertices CEQ -1; CFQ -1; CQR -1 | container EFR; inner S; line CQ |
| 3043 | bary | outer EFR; fans FRS, ERS, EFS; target HQS; sign 1; vertices EHQ 1; FHQ 1; HQR 1 | container EFR; inner S; line HQ |
| 3175 | bary | outer HQR; fans QRS, HRS, HQS; target CES; sign 1; vertices CEH 1; CEQ 1; CER 1 | container HQR; inner S; line CE |
| 3218 | bary | outer PQR; fans QRS, PRS, PQS; target CRS; sign 1; vertices CPR 1; CQR 1; none 0 | container PQR; inner S; line CR |
| 3284 | four | 1 * AEF + -1 * AFQ + -1 * AEQ + -1 * EFQ = 0 | vertices AEFQ |
| 3323 | four | 1 * BEF + -1 * BFQ + -1 * BEQ + -1 * EFQ = 0 | vertices BEFQ |
| 3340 | four | -1 * BHP + -1 * BPR + 1 * BHR + -1 * HPR = 0 | vertices BHPR |
| 3357 | four | 1 * CFH + -1 * CHQ + -1 * CFQ + -1 * FHQ = 0 | vertices CFHQ |
| 3360 | four | 1 * CFP + -1 * CPQ + -1 * CFQ + -1 * FPQ = 0 | vertices CFPQ |
| 3365 | four | -1 * CFR + 1 * CRS + 1 * CFS + 1 * FRS = 0 | vertices CFRS |
| 3373 | four | -1 * CPQ + -1 * CQS + 1 * CPS + -1 * PQS = 0 | vertices CPQS |
| 3401 | four | 1 * FQR + -1 * FRS + -1 * FQS + -1 * QRS = 0 | vertices FQRS |
| 3405 | four | 1 * HQR + -1 * HRS + -1 * HQS + -1 * QRS = 0 | vertices HQRS |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 74:229 | CQR | hi | 509163/1000000 | 509163/1000000 | 25 | 74:149, 74:146, 74:218 |
| 74:234 | FQR | lo | 280003/1000000 | 280003/1000000 | 31 | 74:202, 74:224, 74:204 |
| 74:237 | HQR | lo | 143917/500000 | 143917/500000 | 32 | 74:214, 74:224, 74:216 |
| 74:252 | AFR | lo | 1533/10000 | 86769837/566012000 | 452 | 74:42, 74:234, 74:46, 74:190, 74:189 |
| 74:253 | FHQ | lo | 63033/500000 | 21692459250/172071282953 | 452 | 74:42, 74:234, 74:46, 74:190, 74:49 |
| 74:257 | HPR | lo | 27151/250000 | 77134479/710233000 | 585 | 74:102, 74:148, 74:112, 74:138, 74:73 |
| 74:258 | BFR | lo | 1533/10000 | 86769837/566012000 | 679 | 74:92, 74:234, 74:96, 74:190, 74:189 |
| 74:262 | CQR | lo | 120187/1000000 | 45191025000/376005767333 | 803 | 74:132, 74:142, 74:134, 74:140, 74:129 |
| 74:265 | FPQ | lo | 102103/1000000 | 17329093/169721000 | 821 | 74:132, 74:218, 74:146, 74:234, 74:229 |
| 74:268 | CRS | lo | 118703/1000000 | 75612441/636986000 | 861 | 74:148, 74:224, 74:262, 74:222, 74:219 |
| 74:270 | AER | lo | 13181/100000 | 13181069279/100000000000 | 1142 | 74:63 |
| 74:271 | EFQ | lo | 111061/1000000 | 18935955400142683/170500000000000000 | 1880 | 74:234, 74:165 |
| 74:274 | BPR | lo | 4271/31250 | 14059846556827/102872312439000 | 2152 | 74:43, 74:186, 74:52, 74:44, 74:12, 74:258, 74:106 |
| 74:278 | FPR | lo | 62691/500000 | 11131356/88779125 | 2205 | 74:55, 74:206, 74:60, 74:52, 74:252, 74:190, 74:234 |
| 74:283 | FQR | hi | 545627/1000000 | 102579407676947217/188002883666500000 | 2696 | 74:129, 74:253, 74:140, 74:132, 74:135, 74:191 |
| 74:284 | PQR | hi | 634283/1000000 | 238493861960448279/376005767333000000 | 2703 | 74:129, 74:253, 74:140, 74:132, 74:149, 74:278, 74:257 |
| 74:302 | FHQ | lo | 160697/1000000 | 15733399/97907000 | 2923 | 74:149, 74:218, 74:262, 74:146, 74:128, 74:186, 74:190 |
| 74:311 | FHS | lo | 23113/200000 | 33944101/293721000 | 2961 | 74:149, 74:222, 74:268, 74:150, 74:128, 74:186, 74:190 |
| 74:321 | CQS | lo | 12137/125000 | 9988523556827/102872312439000 | 3028 | 74:165, 74:204, 74:184, 74:166, 74:122, 74:132, 74:262 |
| 74:324 | HQS | lo | 33139/250000 | 13636355556827/102872312439000 | 3043 | 74:165, 74:204, 74:184, 74:166, 74:170, 74:302, 74:237 |
| 74:348 | CES | lo | 58169/500000 | 86226159/741163000 | 3175 | 74:213, 74:224, 74:216, 74:324, 74:118, 74:122, 74:124 |
| 74:355 | CRS | lo | 119209/1000000 | 75612441/634283000 | 3218 | 74:284, 74:224, 74:222, 74:220, 74:148, 74:262 |
| 74:362 | AEF | lo | 297061/1000000 | 297061/1000000 | 3284 | 74:46, 74:36, 74:271 |
| 74:364 | BEF | lo | 297061/1000000 | 297061/1000000 | 3323 | 74:96, 74:86, 74:271 |
| 74:365 | BHR | lo | 84569/250000 | 84569/250000 | 3340 | 74:102, 74:274, 74:257 |
| 74:366 | CFH | lo | 346697/1000000 | 346697/1000000 | 3357 | 74:140, 74:132, 74:302 |
| 74:368 | CFP | lo | 288103/1000000 | 288103/1000000 | 3360 | 74:146, 74:132, 74:265 |
| 74:369 | CFR | lo | 305209/1000000 | 305209/1000000 | 3365 | 74:355, 74:136, 74:204 |
| 74:370 | CPS | lo | 35387/125000 | 35387/125000 | 3373 | 74:146, 74:321, 74:220 |
| 74:372 | HQR | lo | 79639/250000 | 79639/250000 | 3405 | 74:216, 74:324, 74:224 |
| 74:375 | AEP | lo | 4661/31250 | 1180278500/7913254803 | 378 | 74:362, 74:52, 74:32, 74:44, 74:43 |
| 74:376 | AFR | lo | 77487/500000 | 1054676730/6805474093 | 390 | 74:362, 74:190, 74:42, 74:164, 74:159 |
| 74:380 | HPR | lo | 5431/50000 | 38572773/355116500 | 585 | 74:102, 74:148, 74:274, 74:138, 74:73 |
| 74:381 | BFR | lo | 77487/500000 | 1054676730/6805474093 | 617 | 74:364, 74:190, 74:92, 74:164, 74:159 |
| 74:385 | CQR | lo | 30857/250000 | 46409743500/376005767333 | 803 | 74:132, 74:142, 74:369, 74:140, 74:129 |
| 74:387 | CRS | lo | 29921/250000 | 37956927/317141500 | 861 | 74:148, 74:224, 74:385, 74:222, 74:284 |
| 74:395 | BPR | lo | 69647/500000 | 14329500056827/102872312439000 | 2152 | 74:43, 74:186, 74:52, 74:44, 74:12, 74:381, 74:365 |
| 74:398 | FPR | lo | 125601/1000000 | 8920653/71023300 | 2205 | 74:55, 74:206, 74:60, 74:52, 74:376, 74:190, 74:234 |
| 74:402 | APQ | lo | 9897/100000 | 17313804711183/174939543131000 | 2371 | 74:81, 74:271, 74:96, 74:86, 74:8, 74:375, 74:44 |
| 74:405 | FQS | lo | 95939/1000000 | 8560497573/89227736000 | 2658 | 74:119, 74:170, 74:140, 74:122, 74:136, 74:166, 74:311 |
| 74:407 | PQR | hi | 317127/500000 | 34068990637206897/53715109619000000 | 2703 | 74:129, 74:302, 74:140, 74:132, 74:149, 74:398, 74:380 |
| 74:412 | FHQ | lo | 173327/1000000 | 8484979/48953500 | 2923 | 74:149, 74:218, 74:385, 74:146, 74:366, 74:186, 74:190 |
| 74:413 | FPQ | lo | 104477/1000000 | 1022907/9790700 | 2924 | 74:149, 74:218, 74:385, 74:146, 74:368, 74:398 |
| 74:419 | FHS | lo | 4791/40000 | 1759033/14686050 | 2961 | 74:149, 74:222, 74:387, 74:370, 74:366, 74:186, 74:190 |
| 74:426 | CQS | lo | 6099/62500 | 10038759056827/102872312439000 | 3028 | 74:165, 74:204, 74:184, 74:166, 74:122, 74:132, 74:385 |
| 74:428 | HQS | lo | 8693/62500 | 4769437185609/34290770813000 | 3043 | 74:165, 74:204, 74:184, 74:166, 74:170, 74:412, 74:372 |
| 74:442 | CRS | lo | 119689/1000000 | 12652309/105709000 | 3218 | 74:407, 74:224, 74:222, 74:220, 74:148, 74:385 |
| 74:451 | BHR | lo | 170457/500000 | 170457/500000 | 3340 | 74:102, 74:395, 74:380 |
| 74:452 | CFH | lo | 359327/1000000 | 359327/1000000 | 3357 | 74:140, 74:132, 74:412 |
| 74:454 | CFP | lo | 290477/1000000 | 290477/1000000 | 3360 | 74:146, 74:132, 74:413 |
| 74:455 | CFR | lo | 305689/1000000 | 305689/1000000 | 3365 | 74:442, 74:136, 74:204 |
| 74:456 | CPS | lo | 4431/15625 | 4431/15625 | 3373 | 74:146, 74:426, 74:220 |
| 74:459 | FQR | lo | 281939/1000000 | 281939/1000000 | 3401 | 74:204, 74:405, 74:224 |
| 74:460 | HQR | lo | 10159/31250 | 10159/31250 | 3405 | 74:216, 74:428, 74:224 |
| 74:463 | HPR | lo | 108963/1000000 | 9673674/88779125 | 585 | 74:102, 74:148, 74:395, 74:138, 74:73 |
| 74:467 | CQR | lo | 123487/1000000 | 46432063500/376005767333 | 803 | 74:132, 74:142, 74:455, 74:140, 74:129 |
| 74:469 | CRS | lo | 59849/500000 | 25306447/211418000 | 861 | 74:148, 74:224, 74:467, 74:222, 74:407 |
| 74:470 | EFQ | lo | 111829/1000000 | 19066882603260779/170500000000000000 | 1880 | 74:459, 74:165 |
| 74:473 | BPR | lo | 139691/1000000 | 4790129685609/34290770813000 | 2152 | 74:43, 74:186, 74:52, 74:44, 74:12, 74:381, 74:451 |
| 74:476 | FPR | lo | 25171/200000 | 44693289/355116500 | 2205 | 74:55, 74:206, 74:402, 74:52, 74:376, 74:190, 74:459 |
| 74:481 | FQS | lo | 12061/125000 | 8609438823/89227736000 | 2658 | 74:119, 74:170, 74:140, 74:122, 74:136, 74:166, 74:419 |
| 74:482 | PQR | hi | 31709/50000 | 238455173960448279/376005767333000000 | 2703 | 74:129, 74:412, 74:140, 74:132, 74:149, 74:476, 74:463 |
| 74:486 | FHQ | lo | 88663/500000 | 2170186/12238375 | 2923 | 74:149, 74:218, 74:467, 74:146, 74:452, 74:186, 74:190 |
| 74:487 | FPQ | lo | 21051/200000 | 15457933/146860500 | 2924 | 74:149, 74:218, 74:467, 74:146, 74:454, 74:476 |
| 74:493 | FHS | lo | 30277/250000 | 3557219/29372100 | 2961 | 74:149, 74:222, 74:469, 74:456, 74:452, 74:186, 74:190 |
| 74:500 | CQS | lo | 97593/1000000 | 10039673556827/102872312439000 | 3028 | 74:165, 74:204, 74:184, 74:166, 74:122, 74:132, 74:467 |
| 74:502 | HQS | lo | 70337/500000 | 14471542056827/102872312439000 | 3043 | 74:165, 74:204, 74:184, 74:166, 74:170, 74:486, 74:460 |
| 74:517 | CRS | lo | 3741/31250 | 75919341/634180000 | 3218 | 74:482, 74:224, 74:222, 74:220, 74:148, 74:467 |
| 74:524 | AEF | lo | 297829/1000000 | 297829/1000000 | 3284 | 74:46, 74:36, 74:470 |
| 74:526 | BEF | lo | 297829/1000000 | 297829/1000000 | 3323 | 74:96, 74:86, 74:470 |
| 74:527 | BHR | lo | 170827/500000 | 170827/500000 | 3340 | 74:102, 74:473, 74:463 |
| 74:528 | CFH | lo | 181663/500000 | 181663/500000 | 3357 | 74:140, 74:132, 74:486 |
| 74:530 | CFP | lo | 58251/200000 | 58251/200000 | 3360 | 74:146, 74:132, 74:487 |
| 74:531 | CFR | lo | 19107/62500 | 19107/62500 | 3365 | 74:517, 74:136, 74:204 |
| 74:532 | CPS | lo | 283593/1000000 | 283593/1000000 | 3373 | 74:146, 74:500, 74:220 |
| 74:536 | FQR | lo | 35311/125000 | 35311/125000 | 3401 | 74:204, 74:481, 74:224 |
| 74:537 | HQR | lo | 163337/500000 | 163337/500000 | 3405 | 74:216, 74:502, 74:224 |
| 74:540 | AEP | lo | 149267/1000000 | 15355524500/102872312439 | 378 | 74:524, 74:52, 74:32, 74:44, 74:43 |
| 74:541 | AFR | lo | 155079/1000000 | 1055390970/6805474093 | 390 | 74:524, 74:190, 74:42, 74:164, 74:159 |
| 74:544 | HPR | lo | 21803/200000 | 77426313/710233000 | 585 | 74:102, 74:148, 74:473, 74:138, 74:73 |
| 74:545 | BFR | lo | 155079/1000000 | 1055390970/6805474093 | 617 | 74:526, 74:190, 74:92, 74:164, 74:159 |
| 74:548 | CQR | lo | 12349/100000 | 46433133000/376005767333 | 803 | 74:132, 74:142, 74:531, 74:140, 74:129 |
| 74:550 | CRS | lo | 119713/1000000 | 3795981/31709000 | 861 | 74:148, 74:224, 74:548, 74:222, 74:482 |
| 74:551 | EFQ | lo | 56023/500000 | 2388001275466471/21312500000000000 | 1880 | 74:536, 74:165 |
| 74:554 | BPR | lo | 69909/500000 | 14383486556827/102872312439000 | 2152 | 74:43, 74:186, 74:52, 74:44, 74:12, 74:545, 74:527 |
| 74:557 | FPR | lo | 6297/50000 | 447237/3551165 | 2205 | 74:55, 74:206, 74:402, 74:52, 74:541, 74:190, 74:536 |
| 74:560 | APQ | lo | 49491/500000 | 17315943711183/174939543131000 | 2371 | 74:81, 74:551, 74:96, 74:86, 74:8, 74:540, 74:44 |
| 74:563 | FQS | lo | 48331/500000 | 2156233737/22306934000 | 2658 | 74:119, 74:170, 74:140, 74:122, 74:136, 74:166, 74:493 |
| 74:565 | PQR | hi | 634163/1000000 | 238448803460448279/376005767333000000 | 2703 | 74:129, 74:486, 74:140, 74:132, 74:149, 74:557, 74:544 |
| 74:569 | FHQ | lo | 5581/31250 | 17485457/97907000 | 2923 | 74:149, 74:218, 74:548, 74:146, 74:528, 74:186, 74:190 |
| 74:570 | FPQ | lo | 105511/1000000 | 2066057/19581400 | 2924 | 74:149, 74:218, 74:548, 74:146, 74:530, 74:557 |
| 74:576 | FHS | lo | 12153/100000 | 35696159/293721000 | 2961 | 74:149, 74:222, 74:550, 74:532, 74:528, 74:186, 74:190 |
| 74:584 | HQS | lo | 8819/62500 | 4838582685609/34290770813000 | 3043 | 74:165, 74:204, 74:184, 74:166, 74:170, 74:569, 74:537 |
| 74:599 | CRS | lo | 29929/250000 | 3795981/31708150 | 3218 | 74:565, 74:224, 74:222, 74:220, 74:148, 74:548 |
| 74:606 | AEF | lo | 149023/500000 | 149023/500000 | 3284 | 74:46, 74:36, 74:551 |
| 74:609 | BEF | lo | 149023/500000 | 149023/500000 | 3323 | 74:96, 74:86, 74:551 |
| 74:610 | BHR | lo | 341833/1000000 | 341833/1000000 | 3340 | 74:102, 74:554, 74:544 |
| 74:611 | CFH | lo | 22787/62500 | 22787/62500 | 3357 | 74:140, 74:132, 74:569 |
| 74:613 | CFP | lo | 291511/1000000 | 291511/1000000 | 3360 | 74:146, 74:132, 74:570 |
| 74:618 | FQR | lo | 141331/500000 | 141331/500000 | 3401 | 74:204, 74:563, 74:224 |
| 74:619 | HQR | lo | 5111/15625 | 5111/15625 | 3405 | 74:216, 74:584, 74:224 |
| 74:622 | AEP | lo | 1493/10000 | 15358888000/102872312439 | 378 | 74:606, 74:52, 74:32, 74:44, 74:43 |
| 74:623 | AFR | lo | 155109/1000000 | 95962980/618679463 | 390 | 74:606, 74:190, 74:42, 74:164, 74:159 |
| 74:626 | HPR | lo | 109031/1000000 | 19359531/177558250 | 585 | 74:102, 74:148, 74:554, 74:138, 74:73 |
| 74:627 | BFR | lo | 155109/1000000 | 95962980/618679463 | 617 | 74:609, 74:190, 74:92, 74:164, 74:159 |
| 74:632 | EFQ | lo | 22423/200000 | 9557888710683691/85250000000000000 | 1880 | 74:618, 74:165 |
| 74:636 | BPR | lo | 2797/20000 | 14386726056827/102872312439000 | 2152 | 74:43, 74:186, 74:52, 74:44, 74:12, 74:627, 74:610 |
| 74:639 | FPR | lo | 125967/1000000 | 22366593/177558250 | 2205 | 74:55, 74:206, 74:560, 74:52, 74:623, 74:190, 74:618 |
| 74:642 | APQ | lo | 19797/200000 | 17316557511183/174939543131000 | 2371 | 74:81, 74:632, 74:96, 74:86, 74:8, 74:622, 74:44 |
| 74:645 | FQS | lo | 96717/1000000 | 4314920349/44613868000 | 2658 | 74:119, 74:170, 74:140, 74:122, 74:136, 74:166, 74:576 |
| 74:647 | PQR | hi | 317079/500000 | 34063829137206897/53715109619000000 | 2703 | 74:129, 74:569, 74:140, 74:132, 74:149, 74:639, 74:626 |
| 74:651 | FHQ | lo | 178993/1000000 | 17524703/97907000 | 2923 | 74:149, 74:218, 74:548, 74:146, 74:611, 74:186, 74:190 |
| 74:652 | FPQ | lo | 21119/200000 | 20677/195814 | 2924 | 74:149, 74:218, 74:548, 74:146, 74:613, 74:639 |
| 74:656 | FHS | lo | 1901/15625 | 7147081/58744200 | 2961 | 74:149, 74:222, 74:599, 74:532, 74:611, 74:186, 74:190 |
| 74:663 | HQS | lo | 141229/1000000 | 4842876185609/34290770813000 | 3043 | 74:165, 74:204, 74:184, 74:166, 74:170, 74:651, 74:619 |
| 74:678 | CRS | lo | 119717/1000000 | 25823/215700 | 3218 | 74:647, 74:224, 74:222, 74:220, 74:148, 74:548 |
| 74:685 | AEF | lo | 59623/200000 | 59623/200000 | 3284 | 74:46, 74:36, 74:632 |
| 74:688 | BEF | lo | 59623/200000 | 59623/200000 | 3323 | 74:96, 74:86, 74:632 |
| 74:689 | BHR | lo | 341881/1000000 | 341881/1000000 | 3340 | 74:102, 74:636, 74:626 |
| 74:690 | CFH | lo | 364993/1000000 | 364993/1000000 | 3357 | 74:140, 74:132, 74:651 |
| 74:692 | CFP | lo | 58319/200000 | 58319/200000 | 3360 | 74:146, 74:132, 74:652 |
| 74:693 | CFR | lo | 305717/1000000 | 305717/1000000 | 3365 | 74:678, 74:136, 74:204 |
| 74:697 | FQR | lo | 282717/1000000 | 282717/1000000 | 3401 | 74:204, 74:645, 74:224 |
| 74:698 | HQR | lo | 327229/1000000 | 327229/1000000 | 3405 | 74:216, 74:663, 74:224 |
| 74:701 | AEP | lo | 14931/100000 | 15359957500/102872312439 | 378 | 74:685, 74:52, 74:32, 74:44, 74:43 |
| 74:702 | AFR | lo | 77559/500000 | 1055656950/6805474093 | 390 | 74:685, 74:190, 74:42, 74:164, 74:159 |
| 74:705 | HPR | lo | 27259/250000 | 774411/7102330 | 585 | 74:102, 74:148, 74:636, 74:138, 74:73 |
| 74:706 | BFR | lo | 77559/500000 | 1055656950/6805474093 | 617 | 74:688, 74:190, 74:92, 74:164, 74:159 |
| 74:710 | CQR | lo | 123491/1000000 | 46433365500/376005767333 | 803 | 74:132, 74:142, 74:693, 74:140, 74:129 |
| 74:712 | EFQ | lo | 112137/1000000 | 19119496944183237/170500000000000000 | 1880 | 74:697, 74:165 |
| 74:715 | BPR | lo | 69929/500000 | 1106739196679/7913254803000 | 2152 | 74:43, 74:186, 74:52, 74:44, 74:12, 74:706, 74:689 |
| 74:718 | FPR | lo | 15747/125000 | 22368081/177558250 | 2205 | 74:55, 74:206, 74:642, 74:52, 74:702, 74:190, 74:697 |
| 74:721 | APQ | lo | 98987/1000000 | 17316743511183/174939543131000 | 2371 | 74:81, 74:712, 74:96, 74:86, 74:8, 74:701, 74:44 |
| 74:724 | FQS | lo | 48367/500000 | 539462403/5576733500 | 2658 | 74:119, 74:170, 74:140, 74:122, 74:136, 74:166, 74:656 |
| 74:729 | FHQ | lo | 2239/12500 | 8768567/48953500 | 2923 | 74:149, 74:218, 74:710, 74:146, 74:690, 74:186, 74:190 |
| 74:730 | FPQ | lo | 52811/500000 | 10341197/97907000 | 2924 | 74:149, 74:218, 74:710, 74:146, 74:692, 74:718 |
| 74:733 | FHS | lo | 60853/500000 | 8936959/73430250 | 2961 | 74:149, 74:222, 74:678, 74:532, 74:690, 74:186, 74:190 |
| 74:740 | CQS | lo | 48797/500000 | 10039735556827/102872312439000 | 3028 | 74:165, 74:204, 74:184, 74:166, 74:122, 74:132, 74:710 |
| 74:741 | HQS | lo | 141267/1000000 | 4844178185609/34290770813000 | 3043 | 74:165, 74:204, 74:184, 74:166, 74:170, 74:729, 74:698 |
| 74:759 | AEF | lo | 298137/1000000 | 298137/1000000 | 3284 | 74:46, 74:36, 74:712 |
| 74:762 | BEF | lo | 298137/1000000 | 298137/1000000 | 3323 | 74:96, 74:86, 74:712 |
| 74:763 | BHR | lo | 170947/500000 | 170947/500000 | 3340 | 74:102, 74:715, 74:705 |
| 74:764 | CFH | lo | 1141/3125 | 1141/3125 | 3357 | 74:140, 74:132, 74:729 |
| 74:766 | CFP | lo | 145811/500000 | 145811/500000 | 3360 | 74:146, 74:132, 74:730 |
| 74:767 | CPS | lo | 141797/500000 | 141797/500000 | 3373 | 74:146, 74:740, 74:220 |
| 74:770 | FQR | lo | 141367/500000 | 141367/500000 | 3401 | 74:204, 74:724, 74:224 |
| 74:771 | HQR | lo | 327267/1000000 | 327267/1000000 | 3405 | 74:216, 74:741, 74:224 |
| 74:774 | AFR | lo | 155121/1000000 | 1055677410/6805474093 | 390 | 74:759, 74:190, 74:42, 74:164, 74:159 |
| 74:776 | HPR | lo | 109037/1000000 | 19360461/177558250 | 585 | 74:102, 74:148, 74:715, 74:138, 74:73 |
| 74:777 | BFR | lo | 155121/1000000 | 1055677410/6805474093 | 617 | 74:762, 74:190, 74:92, 74:164, 74:159 |
| 74:781 | FPQ | lo | 105631/1000000 | 5171017/48953500 | 820 | 74:766, 74:218, 74:146, 74:718, 74:149 |
| 74:782 | EFQ | lo | 7009/62500 | 9560323307435887/85250000000000000 | 1880 | 74:770, 74:165 |
| 74:785 | BPR | lo | 139861/1000000 | 14387857556827/102872312439000 | 2152 | 74:43, 74:186, 74:52, 74:44, 74:12, 74:777, 74:763 |
| 74:788 | FPR | lo | 62989/500000 | 11184273/88779125 | 2205 | 74:55, 74:206, 74:721, 74:52, 74:774, 74:190, 74:770 |
| 74:793 | FQS | lo | 96739/1000000 | 4315943349/44613868000 | 2658 | 74:119, 74:170, 74:140, 74:122, 74:136, 74:166, 74:733 |
| 74:797 | FHQ | lo | 4479/25000 | 17541071/97907000 | 2923 | 74:149, 74:218, 74:710, 74:146, 74:764, 74:186, 74:190 |
| 74:798 | FHS | lo | 3043/25000 | 35751773/293721000 | 2961 | 74:149, 74:222, 74:678, 74:767, 74:764, 74:186, 74:190 |
| 74:804 | HQS | lo | 141279/1000000 | 4844581185609/34290770813000 | 3043 | 74:165, 74:204, 74:184, 74:166, 74:170, 74:797, 74:771 |
| 74:814 | AEF | lo | 9317/31250 | 9317/31250 | 3284 | 74:46, 74:36, 74:782 |
| 74:816 | BEF | lo | 9317/31250 | 9317/31250 | 3323 | 74:96, 74:86, 74:782 |
| 74:817 | BHR | lo | 170949/500000 | 170949/500000 | 3340 | 74:102, 74:785, 74:776 |
| 74:818 | CFH | lo | 9129/25000 | 9129/25000 | 3357 | 74:140, 74:132, 74:797 |
| 74:820 | CFP | lo | 291631/1000000 | 291631/1000000 | 3360 | 74:146, 74:132, 74:781 |
| 74:823 | FQR | lo | 282739/1000000 | 282739/1000000 | 3401 | 74:204, 74:793, 74:224 |
| 74:824 | HQR | lo | 327279/1000000 | 327279/1000000 | 3405 | 74:216, 74:804, 74:224 |
| 74:826 | AFR | lo | 77561/500000 | 1055683920/6805474093 | 390 | 74:814, 74:190, 74:42, 74:164, 74:159 |
| 74:828 | BFR | lo | 77561/500000 | 1055683920/6805474093 | 617 | 74:816, 74:190, 74:92, 74:164, 74:159 |
| 74:832 | FPQ | lo | 52817/500000 | 31027001/293721000 | 820 | 74:820, 74:218, 74:146, 74:788, 74:149 |
| 74:833 | EFQ | lo | 56073/500000 | 19120984753309579/170500000000000000 | 1880 | 74:823, 74:165 |
| 74:836 | BPR | lo | 69931/500000 | 14387935056827/102872312439000 | 2152 | 74:43, 74:186, 74:52, 74:44, 74:12, 74:828, 74:817 |
| 74:838 | FPR | lo | 125979/1000000 | 44737371/355116500 | 2205 | 74:55, 74:206, 74:721, 74:52, 74:826, 74:190, 74:823 |
| 74:842 | FQS | lo | 96741/1000000 | 1079006181/11153467000 | 2658 | 74:119, 74:170, 74:140, 74:122, 74:136, 74:166, 74:798 |
| 74:845 | FHQ | lo | 179173/1000000 | 17542311/97907000 | 2923 | 74:149, 74:218, 74:710, 74:146, 74:818, 74:186, 74:190 |
| 74:846 | FHS | lo | 30431/250000 | 11917671/97907000 | 2961 | 74:149, 74:222, 74:678, 74:767, 74:818, 74:186, 74:190 |
| 74:849 | HQS | lo | 141283/1000000 | 14534131056827/102872312439000 | 3043 | 74:165, 74:204, 74:184, 74:166, 74:170, 74:845, 74:824 |
| 74:859 | AEF | lo | 149073/500000 | 149073/500000 | 3284 | 74:46, 74:36, 74:833 |
| 74:861 | BHR | lo | 341899/1000000 | 341899/1000000 | 3340 | 74:102, 74:836, 74:776 |
| 74:862 | CFH | lo | 365173/1000000 | 365173/1000000 | 3357 | 74:140, 74:132, 74:845 |
| 74:864 | CFP | lo | 145817/500000 | 145817/500000 | 3360 | 74:146, 74:132, 74:832 |
| 74:867 | FQR | lo | 282741/1000000 | 282741/1000000 | 3401 | 74:204, 74:842, 74:224 |
| 74:868 | HQR | lo | 327283/1000000 | 327283/1000000 | 3405 | 74:216, 74:849, 74:224 |
| 74:869 | AFR | lo | 155123/1000000 | 1055685780/6805474093 | 390 | 74:859, 74:190, 74:42, 74:164, 74:159 |
| 74:875 | FPQ | lo | 21127/200000 | 10342437/97907000 | 820 | 74:864, 74:218, 74:146, 74:838, 74:149 |
| 74:876 | EFQ | lo | 112147/1000000 | 19121120008684701/170500000000000000 | 1880 | 74:867, 74:165 |
| 74:882 | FQS | lo | 48371/500000 | 2158023987/22306934000 | 2658 | 74:119, 74:170, 74:140, 74:122, 74:136, 74:166, 74:846 |
| 74:884 | FHQ | lo | 179177/1000000 | 8771357/48953500 | 2923 | 74:149, 74:218, 74:710, 74:146, 74:862, 74:186, 74:190 |
| 74:887 | HQS | lo | 35321/250000 | 4844751685609/34290770813000 | 3043 | 74:165, 74:204, 74:184, 74:166, 74:170, 74:884, 74:868 |
| 74:894 | CFH | lo | 365177/1000000 | 365177/1000000 | 3357 | 74:140, 74:132, 74:884 |
| 74:896 | CFP | lo | 58327/200000 | 58327/200000 | 3360 | 74:146, 74:132, 74:875 |
| 74:899 | FQR | lo | 141371/500000 | 141371/500000 | 3401 | 74:204, 74:882, 74:224 |
| 74:900 | HQR | lo | 81821/250000 | 81821/250000 | 3405 | 74:216, 74:887, 74:224 |
| 74:907 | FHQ | lo | 89589/500000 | 8771419/48953500 | 2923 | 74:149, 74:218, 74:710, 74:146, 74:894, 74:186, 74:190 |
| 74:910 | CFH | lo | 182589/500000 | 182589/500000 | 3357 | 74:140, 74:132, 74:907 |
