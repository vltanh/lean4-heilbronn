# BITT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 240

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS+/HEQ+/CFQ+/PQR-/PQS-/QRS-/AFQ-/BFQ-/BFP- |
| Packet | forest:root/AFP-/APR+/ARS+/HEQ+/CFQ+/PQR-/PQS-/QRS-/AFQ-/BFQ-/BFP- |
| Index | 7 |
| Context | 92 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 239 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 105801/1000000 | 283823/1000000 | 105801/1000000 | 283823/1000000 |
| b | 104003/1000000 | 58031/200000 | 104003/1000000 | 58031/200000 |
| c | 796853/1000000 | 196601/200000 | 796853/1000000 | 196601/200000 |
| e | 105801/1000000 | 59/125 | 105801/1000000 | 59/125 |
| f | 105801/1000000 | 505259/1000000 | 105801/1000000 | 505259/1000000 |
| h | 275687/500000 | 1/1 | 275687/500000 | 1/1 |
| p | 339737/1000000 | 694583/1000000 | 339737/1000000 | 694583/1000000 |
| q | 198801/1000000 | 279891/500000 | 198801/1000000 | 279891/500000 |
| u | 98929/500000 | 642519/1000000 | 98929/500000 | 642519/1000000 |
| v | 475733/1000000 | 907/1000 | 475733/1000000 | 907/1000 |
| r | 410989/500000 | 1/1 | 410989/500000 | 1/1 |
| w | 126077/250000 | 1/1 | 126077/250000 | 1/1 |
| j | 383823/1000000 | 879587/1000000 | 383823/1000000 | 879587/1000000 |
| k | 57059/125000 | 13669/15625 | 57059/125000 | 13669/15625 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 2 | AC_ABC_ABC_1 | bitt ["anchor-cap","ABC","ABC",1,[]] | `-93/1000 + 1/1 * c + -1/1 * b` |
| 6 | AC_ABF_ABF_0 | bitt ["anchor-cap","ABF","ABF",0,[]] | `-93/1000 + 1/1 * f` |
| 21 | AC_ACP_ACF_0 | bitt ["anchor-cap","ACP","ACF",0,[]] | `-93/1000 + 1/1 * c` |
| 28 | AC_AEP_AEF_0 | bitt ["anchor-cap","AEP","AEF",0,[]] | `907/1000 + -1/1 * a` |
| 54 | AC_BCP_BCH_0 | bitt ["anchor-cap","BCP","BCH",0,[]] | `-93/1000 + 1/1 * h` |
| 62 | AC_BEP_BEF_0 | bitt ["anchor-cap","BEP","BEF",0,[]] | `907/1000 + -1/1 * b` |
| 83 | AC_CEF_CEF_0 | bitt ["anchor-cap","CEF","CEF",0,[]] | `907/1000 + -1/1 * f` |
| 108 | AC_EFQ_EFH_0 | bitt ["anchor-cap","EFQ","EFH",0,[]] | `907/1000 + -1/1 * e` |
| 138 | ea | bitt ["contact-order","ea"] | `1/1 * e + -1/1 * a` |
| 139 | he | bitt ["contact-order","he"] | `1/1 * h + -1/1 * e` |
| 140 | fb | bitt ["contact-order","fb"] | `1/1 * f + -1/1 * b` |
| 142 | sym | bitt ["contact-order","sym"] | `1/1 * f + -1/1 * e` |
| 143 | lower-area | bitt ["endpoint-lower","135501/250000"] | `1/1 * c * h + -135501/250000` |
| 144 | lower-quad | bitt ["lower-quad","BITT"] | `1/1 * c * h + -1/1 * a * b + -279/625` |
| 146 | top-area | bitt ["top-hull","-"] | `721/1000 + -1/1 * f + -1/1 * e + 1/1 * e * f` |
| 152 | central-p-floor | bitt ["central-floor",0,"6318234/54937625"] | `1/1 * p + -6318234/54937625` |
| 156 | WBARY_RS_0 | bitt ["weighted-barycentric","R","S",["1/1","1/1","1/1"],"799591851601/93000000000",0] | `799591851601/93000000000 * j + -1/1 + -613591851601/93000000000 * f + -1/1 * r` |
| 321 | SUP_BCE_CEH_BCH | bitt ["support-envelope",["quad","CEHB",["P"],"12/1"],"BCE","CEH","BCH","25930559/62500000"] | `25930559/62500000 * h + 43819441/62500000 * c * h + -43819441/62500000 * c * e + 279/250 * b * e + -279/250 * b * h` |
| 370 | SUP_EFH_BFH_BEF | bitt ["support-envelope",["quad","FHBE",["P","Q"],"199/10"],"EFH","BFH","BEF","673755768407/1000000000000"] | `-1176944231593/1000000000000 * f * h + -673755768407/1000000000000 * b * h + -1176944231593/1000000000000 * b + 18507/10000 * h + 18507/10000 * b * e` |
| 497 | SUP_ABP_AEP_ABE | bitt ["support-envelope",["pentagon","ABCEP"],"ABP","AEP","ABE","138604757227/500000000000"] | `138604757227/500000000000 * q + 372895242773/500000000000 * a + -138604757227/500000000000 * e * p + -372895242773/500000000000 * a * p + -1023/1000 * b * q + 1023/1000 * b * e` |
| 513 | SUP_ABH_AFH_ABF | bitt ["support-envelope",["pentagon","ABCFH"],"ABH","AFH","ABF","51891262169/200000000000"] | `51891262169/200000000000 * f * h + 152708737831/200000000000 * a * f + -1023/1000 * b * h + 1023/1000 * b` |
| 573 | SUP_AFH_FHP_AHP | bitt ["support-envelope",["pentagon","HABPF"],"AFH","FHP","AHP","451802092541/1000000000000"] | `-451802092541/1000000000000 * f * q + 571197907459/1000000000000 * h * p + -571197907459/1000000000000 * f * h + 451802092541/1000000000000 * p + 1023/1000 * a * f + -1023/1000 * a * p` |
| 674 | SUP_BCE_BCS_CES | bitt ["support-envelope",["pentagon","CERSB"],"BCE","BCS","CES","25930559/62500000"] | `-38006941/62500000 * c * k + -25930559/62500000 * b * k + 1023/1000 * b * e + 1023/1000 * k + -1023/1000 * e * j` |
| 728 | SUP_CFS_CPS_FPS | bitt ["support-envelope",["pentagon","SFHPC"],"CFS","CPS","FPS","5369354269/7812500000"] | `2622833231/7812500000 * p * k + -2622833231/7812500000 * c * k + -2622833231/7812500000 * q * j + -5369354269/7812500000 * c * q + 1023/1000 * c + -1023/1000 * p + 1023/1000 * f * q` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |


### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 240:0 | ABC | lo | 93/1000 | occupants none |
| 240:1 | ABC | hi | 124740492323/500000000000 | vertex maximum 124740492323/500000000000 |
| 240:2 | ABE | lo | 93/1000 | occupants none |
| 240:3 | ABE | hi | 67684699487/200000000000 | vertex maximum 67684699487/200000000000 |
| 240:4 | ABF | lo | 93/1000 | occupants none |
| 240:5 | ABF | hi | 2743800489/7812500000 | vertex maximum 2743800489/7812500000 |
| 240:6 | ABH | lo | 93/1000 | occupants none |
| 240:7 | ABH | hi | 51891262169/200000000000 | vertex maximum 51891262169/200000000000 |
| 240:8 | ABP | lo | 93/1000 | occupants none |
| 240:10 | ABQ | lo | 93/1000 | occupants none |
| 240:12 | ABR | lo | 31739/250000 | earlier 239:12; ABR; lo; 31739/250000 |
| 240:13 | ABR | hi | 98325067487/200000000000 | vertex maximum 98325067487/200000000000 |
| 240:14 | ABS | lo | 99059/1000000 | earlier 239:14; ABS; lo; 99059/1000000 |
| 240:15 | ABS | hi | 389337/1000000 | earlier 239:15; ABS; hi; 389337/1000000 |
| 240:17 | ACE | hi | 93760386377/200000000000 | vertex maximum 93760386377/200000000000 |
| 240:18 | ACF | lo | 13857/20000 | occupants P, Q |
| 240:19 | ACF | hi | 466229497727/500000000000 | vertex maximum 466229497727/500000000000 |
| 240:20 | ACH | lo | 351699/1000000 | earlier 239:20; ACH; lo; 351699/1000000 |
| 240:22 | ACP | lo | 621/6250 | earlier 239:22; ACP; lo; 621/6250 |
| 240:23 | ACP | hi | 47491/100000 | earlier 239:247; ACP; hi; 47491/100000 |
| 240:24 | ACQ | lo | 174879/500000 | earlier 239:24; ACQ; lo; 174879/500000 |
| 240:26 | ACR | lo | 378971/1000000 | earlier 239:26; ACR; lo; 378971/1000000 |
| 240:30 | AEF | lo | 13857/20000 | occupants P, Q |
| 240:31 | AEF | hi | 894199/1000000 | vertex maximum 894199/1000000 |
| 240:33 | AEH | hi | 894199/1000000 | vertex maximum 894199/1000000 |
| 240:34 | AEP | lo | 93/1000 | occupants none |
| 240:35 | AEP | hi | 408373/1000000 | earlier 239:35; AEP; hi; 408373/1000000 |
| 240:36 | AEQ | lo | 92483/250000 | earlier 239:36; AEQ; lo; 92483/250000 |
| 240:37 | AEQ | hi | 137061/200000 | earlier 239:37; AEQ; hi; 137061/200000 |
| 240:39 | AER | hi | 894199/1000000 | vertex maximum 894199/1000000 |
| 240:40 | AES | lo | 350671/1000000 | earlier 239:40; AES; lo; 350671/1000000 |
| 240:41 | AES | hi | 727007/1000000 | earlier 239:41; AES; hi; 727007/1000000 |
| 240:42 | AFH | lo | 93/1000 | occupants none |
| 240:43 | AFH | hi | 451802092541/1000000000000 | vertex maximum 451802092541/1000000000000 |
| 240:44 | AFP | lo | 262503/1000000 | earlier 239:44; AFP; lo; 262503/1000000 |
| 240:46 | AFQ | lo | 93/1000 | occupants none |
| 240:47 | AFQ | hi | 431267/1000000 | earlier 239:47; AFQ; hi; 431267/1000000 |
| 240:48 | AFR | lo | 13857/20000 | occupants Q, S |
| 240:49 | AFR | hi | 852036560893/1000000000000 | vertex maximum 852036560893/1000000000000 |
| 240:50 | AFS | lo | 140247/500000 | earlier 239:50; AFS; lo; 140247/500000 |
| 240:51 | AFS | hi | 159227/250000 | earlier 239:51; AFS; hi; 159227/250000 |
| 240:52 | AHP | lo | 159339/1000000 | earlier 239:52; AHP; lo; 159339/1000000 |
| 240:54 | AHQ | lo | 12037/100000 | earlier 239:54; AHQ; lo; 12037/100000 |
| 240:55 | AHQ | hi | 113701/200000 | earlier 239:252; AHQ; hi; 113701/200000 |
| 240:56 | AHR | lo | 313443/1000000 | earlier 239:248; AHR; lo; 313443/1000000 |
| 240:57 | AHR | hi | 894199/1000000 | vertex maximum 894199/1000000 |
| 240:59 | AHS | hi | 710687/1000000 | earlier 239:240; AHS; hi; 710687/1000000 |
| 240:60 | APQ | lo | 153309/1000000 | earlier 239:60; APQ; lo; 153309/1000000 |
| 240:62 | APR | lo | 15079/125000 | earlier 239:62; APR; lo; 15079/125000 |
| 240:63 | APR | hi | 13097/25000 | earlier 239:63; APR; hi; 13097/25000 |
| 240:64 | APS | lo | 12357/100000 | earlier 239:64; APS; lo; 12357/100000 |
| 240:66 | AQR | lo | 140247/500000 | earlier 239:66; AQR; lo; 140247/500000 |
| 240:67 | AQR | hi | 123643/200000 | earlier 239:67; AQR; hi; 123643/200000 |
| 240:68 | AQS | lo | 47247/500000 | earlier 239:68; AQS; lo; 47247/500000 |
| 240:69 | AQS | hi | 86443/200000 | earlier 239:69; AQS; hi; 86443/200000 |
| 240:70 | ARS | lo | 93/1000 | occupants none |
| 240:72 | BCE | lo | 93/1000 | occupants none |
| 240:73 | BCE | hi | 25930559/62500000 | vertex maximum 25930559/62500000 |
| 240:74 | BCF | lo | 13857/20000 | occupants P, Q |
| 240:75 | BCF | hi | 439501/500000 | vertex maximum 439501/500000 |
| 240:76 | BCH | lo | 6851/20000 | earlier 239:76; BCH; lo; 6851/20000 |
| 240:77 | BCH | hi | 439501/500000 | vertex maximum 439501/500000 |
| 240:78 | BCP | lo | 77693/500000 | earlier 239:78; BCP; lo; 77693/500000 |
| 240:79 | BCP | hi | 469077/1000000 | earlier 239:79; BCP; hi; 469077/1000000 |
| 240:80 | BCQ | lo | 379311/1000000 | earlier 239:80; BCQ; lo; 379311/1000000 |
| 240:81 | BCQ | hi | 346501/500000 | earlier 239:81; BCQ; hi; 346501/500000 |
| 240:82 | BCR | lo | 18591/50000 | earlier 239:82; BCR; lo; 18591/50000 |
| 240:83 | BCR | hi | 439501/500000 | vertex maximum 439501/500000 |
| 240:85 | BCS | hi | 365067/500000 | earlier 239:85; BCS; hi; 365067/500000 |
| 240:86 | BEF | lo | 13857/20000 | occupants P, Q |
| 240:87 | BEF | hi | 447903384901/500000000000 | vertex maximum 447903384901/500000000000 |
| 240:89 | BEH | hi | 59067901/62500000 | vertex maximum 59067901/62500000 |
| 240:90 | BEP | lo | 46703/500000 | earlier 239:90; BEP; lo; 46703/500000 |
| 240:91 | BEP | hi | 445953/1000000 | earlier 239:91; BEP; hi; 445953/1000000 |
| 240:92 | BEQ | lo | 68773/200000 | earlier 239:92; BEQ; lo; 68773/200000 |
| 240:93 | BEQ | hi | 174103/250000 | earlier 239:93; BEQ; hi; 174103/250000 |
| 240:94 | BER | lo | 184439/500000 | earlier 239:94; BER; lo; 184439/500000 |
| 240:96 | BES | lo | 13269/40000 | earlier 239:96; BES; lo; 13269/40000 |
| 240:98 | BFH | lo | 4043/40000 | earlier 239:98; BFH; lo; 4043/40000 |
| 240:100 | BFP | lo | 195783/1000000 | earlier 239:100; BFP; lo; 195783/1000000 |
| 240:102 | BFQ | lo | 93/1000 | occupants none |
| 240:103 | BFQ | hi | 406691/1000000 | earlier 239:103; BFQ; hi; 406691/1000000 |
| 240:104 | BFR | lo | 13857/20000 | occupants Q, S |
| 240:105 | BFR | hi | 111886281777/125000000000 | vertex maximum 111886281777/125000000000 |
| 240:106 | BFS | lo | 279/1000 | occupants Q |
| 240:107 | BFS | hi | 655761/1000000 | earlier 239:107; BFS; hi; 655761/1000000 |
| 240:108 | BHP | lo | 23541/250000 | earlier 239:108; BHP; lo; 23541/250000 |
| 240:112 | BHR | lo | 160759/500000 | earlier 239:249; BHR; lo; 160759/500000 |
| 240:113 | BHR | hi | 1/1 | vertex maximum 1/1 |
| 240:114 | BHS | lo | 160727/1000000 | earlier 239:253; BHS; lo; 160727/1000000 |
| 240:116 | BPQ | lo | 31709/250000 | earlier 239:116; BPQ; lo; 31709/250000 |
| 240:117 | BPQ | hi | 433103/1000000 | earlier 239:117; BPQ; hi; 433103/1000000 |
| 240:118 | BPR | lo | 93/1000 | occupants none |
| 240:120 | BPS | lo | 52109/500000 | earlier 239:120; BPS; lo; 52109/500000 |
| 240:122 | BQR | lo | 139911/500000 | earlier 239:122; BQR; lo; 139911/500000 |
| 240:123 | BQR | hi | 666347/1000000 | earlier 239:123; BQR; hi; 666347/1000000 |
| 240:126 | BRS | lo | 46911/500000 | earlier 239:126; BRS; lo; 46911/500000 |
| 240:129 | CEF | hi | 66165443/125000000 | vertex maximum 66165443/125000000 |
| 240:130 | CEH | lo | 93/1000 | occupants none |
| 240:131 | CEH | hi | 36203851/62500000 | vertex maximum 36203851/62500000 |
| 240:132 | CEP | lo | 93/1000 | occupants none |
| 240:133 | CEP | hi | 164738392977/500000000000 | vertex maximum 164738392977/500000000000 |
| 240:134 | CEQ | lo | 100303/1000000 | earlier 239:134; CEQ; lo; 100303/1000000 |
| 240:136 | CER | lo | 93/1000 | occupants none |
| 240:138 | CES | lo | 95879/1000000 | earlier 239:138; CES; lo; 95879/1000000 |
| 240:139 | CES | hi | 358163/1000000 | earlier 239:139; CES; hi; 358163/1000000 |
| 240:140 | CFH | lo | 279/1000 | occupants Q |
| 240:141 | CFH | hi | 179897069249/250000000000 | vertex maximum 179897069249/250000000000 |
| 240:142 | CFP | lo | 981/8000 | earlier 239:142; CFP; lo; 981/8000 |
| 240:144 | CFQ | lo | 93/1000 | occupants none |
| 240:146 | CFR | lo | 67873/200000 | earlier 239:146; CFR; lo; 67873/200000 |
| 240:147 | CFR | hi | 894199/1000000 | vertex maximum 894199/1000000 |
| 240:148 | CFS | lo | 10819/100000 | earlier 239:148; CFS; lo; 10819/100000 |
| 240:150 | CHP | lo | 93/1000 | occupants none |
| 240:151 | CHP | hi | 89569124599/200000000000 | vertex maximum 89569124599/200000000000 |
| 240:152 | CHQ | lo | 93/1000 | occupants none |
| 240:153 | CHQ | hi | 531079/1000000 | earlier 239:244; CHQ; hi; 531079/1000000 |
| 240:154 | CHR | lo | 271593/1000000 | earlier 239:232; CHR; lo; 271593/1000000 |
| 240:155 | CHR | hi | 1/1 | vertex maximum 1/1 |
| 240:157 | CHS | hi | 726119/1000000 | earlier 239:157; CHS; hi; 726119/1000000 |
| 240:158 | CPQ | lo | 97089/1000000 | earlier 239:158; CPQ; lo; 97089/1000000 |
| 240:159 | CPQ | hi | 397833/1000000 | earlier 239:251; CPQ; hi; 397833/1000000 |
| 240:160 | CPR | lo | 61717/500000 | earlier 239:160; CPR; lo; 61717/500000 |
| 240:165 | CQR | hi | 395067/500000 | earlier 239:165; CQR; hi; 395067/500000 |
| 240:170 | EFH | lo | 279/1000 | occupants Q |
| 240:171 | EFH | hi | 673755768407/1000000000000 | vertex maximum 673755768407/1000000000000 |
| 240:173 | EFP | hi | 67337/125000 | earlier 239:173; EFP; hi; 67337/125000 |
| 240:174 | EFQ | lo | 93/1000 | occupants none |
| 240:175 | EFQ | hi | 431267/1000000 | earlier 239:175; EFQ; hi; 431267/1000000 |
| 240:176 | EFR | lo | 322803/1000000 | earlier 239:176; EFR; lo; 322803/1000000 |
| 240:177 | EFR | hi | 799591851601/1000000000000 | vertex maximum 799591851601/1000000000000 |
| 240:178 | EFS | lo | 93/1000 | occupants none |
| 240:179 | EFS | hi | 110201/250000 | earlier 239:179; EFS; hi; 110201/250000 |
| 240:180 | EHP | lo | 93/1000 | occupants none |
| 240:182 | EHQ | lo | 93/1000 | occupants none |
| 240:183 | EHQ | hi | 15237/31250 | earlier 239:245; EHQ; hi; 15237/31250 |
| 240:184 | EHR | lo | 271593/1000000 | earlier 239:233; EHR; lo; 271593/1000000 |
| 240:185 | EHR | hi | 894199/1000000 | vertex maximum 894199/1000000 |
| 240:186 | EHS | lo | 145329/1000000 | earlier 239:186; EHS; lo; 145329/1000000 |
| 240:187 | EHS | hi | 161641/250000 | earlier 239:187; EHS; hi; 161641/250000 |
| 240:188 | EPQ | lo | 123623/1000000 | earlier 239:188; EPQ; lo; 123623/1000000 |
| 240:189 | EPQ | hi | 403179/1000000 | earlier 239:189; EPQ; hi; 403179/1000000 |
| 240:190 | EPR | lo | 22809/125000 | earlier 239:190; EPR; lo; 22809/125000 |
| 240:193 | EPS | hi | 91887/200000 | earlier 239:193; EPS; hi; 91887/200000 |
| 240:194 | EQR | lo | 15983/50000 | earlier 239:194; EQR; lo; 15983/50000 |
| 240:195 | EQR | hi | 358637287129/500000000000 | vertex maximum 358637287129/500000000000 |
| 240:196 | EQS | lo | 59493/500000 | earlier 239:196; EQS; lo; 59493/500000 |
| 240:197 | EQS | hi | 445821/1000000 | earlier 239:197; EQS; hi; 445821/1000000 |
| 240:198 | ERS | lo | 53837/500000 | earlier 239:198; ERS; lo; 53837/500000 |
| 240:200 | FHP | lo | 134609/1000000 | earlier 239:200; FHP; lo; 134609/1000000 |
| 240:201 | FHP | hi | 97949734873/200000000000 | vertex maximum 97949734873/200000000000 |
| 240:202 | FHQ | lo | 93/1000 | occupants none |
| 240:204 | FHR | lo | 93/1000 | occupants none |
| 240:205 | FHR | hi | 236203260047/500000000000 | vertex maximum 236203260047/500000000000 |
| 240:206 | FHS | lo | 29279/250000 | earlier 239:206; FHS; lo; 29279/250000 |
| 240:207 | FHS | hi | 41789/100000 | earlier 239:237; FHS; hi; 41789/100000 |
| 240:208 | FPR | lo | 42871/125000 | earlier 239:208; FPR; lo; 42871/125000 |
| 240:209 | FPR | hi | 716431344601/1000000000000 | vertex maximum 716431344601/1000000000000 |
| 240:212 | FQR | lo | 119001/1000000 | earlier 239:212; FQR; lo; 119001/1000000 |
| 240:213 | FQR | hi | 468799027133/1000000000000 | vertex maximum 468799027133/1000000000000 |
| 240:214 | FQS | lo | 93/1000 | occupants none |
| 240:216 | FRS | lo | 122129/1000000 | earlier 239:216; FRS; lo; 122129/1000000 |
| 240:217 | FRS | hi | 478543/1000000 | earlier 239:217; FRS; hi; 478543/1000000 |
| 240:218 | HPQ | lo | 93/1000 | occupants none |
| 240:219 | HPQ | hi | 13151/31250 | earlier 239:235; HPQ; hi; 13151/31250 |
| 240:220 | HPR | lo | 271593/1000000 | earlier 239:234; HPR; lo; 271593/1000000 |
| 240:221 | HPR | hi | 791527/1000000 | earlier 239:221; HPR; hi; 791527/1000000 |
| 240:223 | HPS | hi | 592721/1000000 | earlier 239:223; HPS; hi; 592721/1000000 |
| 240:224 | PQR | lo | 279/1000 | occupants S |
| 240:225 | PQR | hi | 594963/1000000 | earlier 239:225; PQR; hi; 594963/1000000 |
| 240:226 | PQS | lo | 93/1000 | occupants none |
| 240:227 | PQS | hi | 381017/1000000 | earlier 239:227; PQS; hi; 381017/1000000 |
| 240:228 | PRS | lo | 93/1000 | occupants none |
| 240:229 | PRS | hi | 123/320 | earlier 239:229; PRS; hi; 123/320 |
| 240:230 | QRS | lo | 93/1000 | occupants none |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |


### Coordinate certificate sources

| Source | Kind | Source witness | Polynomial |
| --- | --- | --- | --- |
| 0 | bound | `{"direction":"lo","ref":"240:0","triangle":"ABC","value":"93/1000"}` | `-1 * a * b + 1 * a * c + -93/1000` |
| 1 | bound | `{"direction":"hi","ref":"240:1","triangle":"ABC","value":"124740492323/500000000000"}` | `124740492323/500000000000 + 1 * a * b + -1 * a * c` |
| 2 | bound | `{"direction":"lo","ref":"240:2","triangle":"ABE","value":"93/1000"}` | `1 * b * e + -1 * a * b + 1 * a + -93/1000` |
| 3 | bound | `{"direction":"hi","ref":"240:3","triangle":"ABE","value":"67684699487/200000000000"}` | `67684699487/200000000000 + -1 * b * e + 1 * a * b + -1 * a` |
| 4 | bound | `{"direction":"lo","ref":"240:4","triangle":"ABF","value":"93/1000"}` | `1 * b + -1 * a * b + 1 * a * f + -93/1000` |
| 5 | bound | `{"direction":"hi","ref":"240:5","triangle":"ABF","value":"2743800489/7812500000"}` | `2743800489/7812500000 + -1 * b + 1 * a * b + -1 * a * f` |
| 6 | bound | `{"direction":"lo","ref":"240:6","triangle":"ABH","value":"93/1000"}` | `1 * b * h + -1 * a * b + -93/1000` |
| 7 | bound | `{"direction":"hi","ref":"240:7","triangle":"ABH","value":"51891262169/200000000000"}` | `51891262169/200000000000 + -1 * b * h + 1 * a * b` |
| 8 | bound | `{"direction":"lo","ref":"240:8","triangle":"ABP","value":"93/1000"}` | `1 * b * q + -1 * a * b + 1 * a * p + -93/1000` |
| 10 | bound | `{"direction":"lo","ref":"240:10","triangle":"ABQ","value":"93/1000"}` | `1 * b * v + -1 * a * b + 1 * a * u + -93/1000` |
| 12 | bound | `{"direction":"lo","ref":"240:12","triangle":"ABR","value":"31739/250000"}` | `1 * b * w + -1 * a * b + 1 * a * r + -31739/250000` |
| 13 | bound | `{"direction":"hi","ref":"240:13","triangle":"ABR","value":"98325067487/200000000000"}` | `98325067487/200000000000 + -1 * b * w + 1 * a * b + -1 * a * r` |
| 14 | bound | `{"direction":"lo","ref":"240:14","triangle":"ABS","value":"99059/1000000"}` | `1 * b * k + -1 * a * b + 1 * a * j + -99059/1000000` |
| 15 | bound | `{"direction":"hi","ref":"240:15","triangle":"ABS","value":"389337/1000000"}` | `389337/1000000 + -1 * b * k + 1 * a * b + -1 * a * j` |
| 17 | bound | `{"direction":"hi","ref":"240:17","triangle":"ACE","value":"93760386377/200000000000"}` | `93760386377/200000000000 + -1 * c * e + 1 * a * c + -1 * a` |
| 18 | bound | `{"direction":"lo","ref":"240:18","triangle":"ACF","value":"13857/20000"}` | `1 * c + -1 * a * c + 1 * a * f + -13857/20000` |
| 19 | bound | `{"direction":"hi","ref":"240:19","triangle":"ACF","value":"466229497727/500000000000"}` | `466229497727/500000000000 + -1 * c + 1 * a * c + -1 * a * f` |
| 20 | bound | `{"direction":"lo","ref":"240:20","triangle":"ACH","value":"351699/1000000"}` | `1 * c * h + -1 * a * c + -351699/1000000` |
| 22 | bound | `{"direction":"lo","ref":"240:22","triangle":"ACP","value":"621/6250"}` | `1 * c * q + -1 * a * c + 1 * a * p + -621/6250` |
| 23 | bound | `{"direction":"hi","ref":"240:23","triangle":"ACP","value":"47491/100000"}` | `47491/100000 + -1 * c * q + 1 * a * c + -1 * a * p` |
| 24 | bound | `{"direction":"lo","ref":"240:24","triangle":"ACQ","value":"174879/500000"}` | `1 * c * v + -1 * a * c + 1 * a * u + -174879/500000` |
| 26 | bound | `{"direction":"lo","ref":"240:26","triangle":"ACR","value":"378971/1000000"}` | `1 * c * w + -1 * a * c + 1 * a * r + -378971/1000000` |
| 30 | bound | `{"direction":"lo","ref":"240:30","triangle":"AEF","value":"13857/20000"}` | `6143/20000 + -1 * a + -1 * e * f + 1 * a * f` |
| 31 | bound | `{"direction":"hi","ref":"240:31","triangle":"AEF","value":"894199/1000000"}` | `-105801/1000000 + 1 * a + 1 * e * f + -1 * a * f` |
| 33 | bound | `{"direction":"hi","ref":"240:33","triangle":"AEH","value":"894199/1000000"}` | `894199/1000000 + -1 * h + 1 * a` |
| 34 | bound | `{"direction":"lo","ref":"240:34","triangle":"AEP","value":"93/1000"}` | `1 * q + -1 * a + -1 * e * p + 1 * a * p + -93/1000` |
| 35 | bound | `{"direction":"hi","ref":"240:35","triangle":"AEP","value":"408373/1000000"}` | `408373/1000000 + -1 * q + 1 * a + 1 * e * p + -1 * a * p` |
| 36 | bound | `{"direction":"lo","ref":"240:36","triangle":"AEQ","value":"92483/250000"}` | `1 * v + -1 * a + -1 * e * u + 1 * a * u + -92483/250000` |
| 37 | bound | `{"direction":"hi","ref":"240:37","triangle":"AEQ","value":"137061/200000"}` | `137061/200000 + -1 * v + 1 * a + 1 * e * u + -1 * a * u` |
| 39 | bound | `{"direction":"hi","ref":"240:39","triangle":"AER","value":"894199/1000000"}` | `894199/1000000 + -1 * w + 1 * a + 1 * e * r + -1 * a * r` |
| 40 | bound | `{"direction":"lo","ref":"240:40","triangle":"AES","value":"350671/1000000"}` | `1 * k + -1 * a + -1 * e * j + 1 * a * j + -350671/1000000` |
| 41 | bound | `{"direction":"hi","ref":"240:41","triangle":"AES","value":"727007/1000000"}` | `727007/1000000 + -1 * k + 1 * a + 1 * e * j + -1 * a * j` |
| 42 | bound | `{"direction":"lo","ref":"240:42","triangle":"AFH","value":"93/1000"}` | `1 * f * h + -1 * a * f + -93/1000` |
| 43 | bound | `{"direction":"hi","ref":"240:43","triangle":"AFH","value":"451802092541/1000000000000"}` | `451802092541/1000000000000 + -1 * f * h + 1 * a * f` |
| 44 | bound | `{"direction":"lo","ref":"240:44","triangle":"AFP","value":"262503/1000000"}` | `-1 * f * q + 1 * a * f + 1 * p + -1 * a * p + -262503/1000000` |
| 46 | bound | `{"direction":"lo","ref":"240:46","triangle":"AFQ","value":"93/1000"}` | `-1 * f * v + 1 * a * f + 1 * u + -1 * a * u + -93/1000` |
| 47 | bound | `{"direction":"hi","ref":"240:47","triangle":"AFQ","value":"431267/1000000"}` | `431267/1000000 + 1 * f * v + -1 * a * f + -1 * u + 1 * a * u` |
| 48 | bound | `{"direction":"lo","ref":"240:48","triangle":"AFR","value":"13857/20000"}` | `-1 * f * w + 1 * a * f + 1 * r + -1 * a * r + -13857/20000` |
| 49 | bound | `{"direction":"hi","ref":"240:49","triangle":"AFR","value":"852036560893/1000000000000"}` | `852036560893/1000000000000 + 1 * f * w + -1 * a * f + -1 * r + 1 * a * r` |
| 50 | bound | `{"direction":"lo","ref":"240:50","triangle":"AFS","value":"140247/500000"}` | `-1 * f * k + 1 * a * f + 1 * j + -1 * a * j + -140247/500000` |
| 51 | bound | `{"direction":"hi","ref":"240:51","triangle":"AFS","value":"159227/250000"}` | `159227/250000 + 1 * f * k + -1 * a * f + -1 * j + 1 * a * j` |
| 52 | bound | `{"direction":"lo","ref":"240:52","triangle":"AHP","value":"159339/1000000"}` | `1 * h * p + -1 * a * p + -159339/1000000` |
| 54 | bound | `{"direction":"lo","ref":"240:54","triangle":"AHQ","value":"12037/100000"}` | `1 * h * u + -1 * a * u + -12037/100000` |
| 55 | bound | `{"direction":"hi","ref":"240:55","triangle":"AHQ","value":"113701/200000"}` | `113701/200000 + -1 * h * u + 1 * a * u` |
| 56 | bound | `{"direction":"lo","ref":"240:56","triangle":"AHR","value":"313443/1000000"}` | `1 * h * r + -1 * a * r + -313443/1000000` |
| 57 | bound | `{"direction":"hi","ref":"240:57","triangle":"AHR","value":"894199/1000000"}` | `894199/1000000 + -1 * h * r + 1 * a * r` |
| 59 | bound | `{"direction":"hi","ref":"240:59","triangle":"AHS","value":"710687/1000000"}` | `710687/1000000 + -1 * h * j + 1 * a * j` |
| 60 | bound | `{"direction":"lo","ref":"240:60","triangle":"APQ","value":"153309/1000000"}` | `1 * p * v + -1 * a * p + -1 * q * u + 1 * a * u + -153309/1000000` |
| 62 | bound | `{"direction":"lo","ref":"240:62","triangle":"APR","value":"15079/125000"}` | `1 * p * w + -1 * a * p + -1 * q * r + 1 * a * r + -15079/125000` |
| 63 | bound | `{"direction":"hi","ref":"240:63","triangle":"APR","value":"13097/25000"}` | `13097/25000 + -1 * p * w + 1 * a * p + 1 * q * r + -1 * a * r` |
| 64 | bound | `{"direction":"lo","ref":"240:64","triangle":"APS","value":"12357/100000"}` | `1 * p * k + -1 * a * p + -1 * q * j + 1 * a * j + -12357/100000` |
| 66 | bound | `{"direction":"lo","ref":"240:66","triangle":"AQR","value":"140247/500000"}` | `-1 * u * w + 1 * a * u + 1 * v * r + -1 * a * r + -140247/500000` |
| 67 | bound | `{"direction":"hi","ref":"240:67","triangle":"AQR","value":"123643/200000"}` | `123643/200000 + 1 * u * w + -1 * a * u + -1 * v * r + 1 * a * r` |
| 68 | bound | `{"direction":"lo","ref":"240:68","triangle":"AQS","value":"47247/500000"}` | `-1 * u * k + 1 * a * u + 1 * v * j + -1 * a * j + -47247/500000` |
| 69 | bound | `{"direction":"hi","ref":"240:69","triangle":"AQS","value":"86443/200000"}` | `86443/200000 + 1 * u * k + -1 * a * u + -1 * v * j + 1 * a * j` |
| 70 | bound | `{"direction":"lo","ref":"240:70","triangle":"ARS","value":"93/1000"}` | `1 * r * k + -1 * a * r + -1 * w * j + 1 * a * j + -93/1000` |
| 72 | bound | `{"direction":"lo","ref":"240:72","triangle":"BCE","value":"93/1000"}` | `1 * c * e + -1 * b * e + -93/1000` |
| 73 | bound | `{"direction":"hi","ref":"240:73","triangle":"BCE","value":"25930559/62500000"}` | `25930559/62500000 + -1 * c * e + 1 * b * e` |
| 74 | bound | `{"direction":"lo","ref":"240:74","triangle":"BCF","value":"13857/20000"}` | `1 * c + -1 * b + -13857/20000` |
| 75 | bound | `{"direction":"hi","ref":"240:75","triangle":"BCF","value":"439501/500000"}` | `439501/500000 + -1 * c + 1 * b` |
| 76 | bound | `{"direction":"lo","ref":"240:76","triangle":"BCH","value":"6851/20000"}` | `1 * c * h + -1 * b * h + -6851/20000` |
| 77 | bound | `{"direction":"hi","ref":"240:77","triangle":"BCH","value":"439501/500000"}` | `439501/500000 + -1 * c * h + 1 * b * h` |
| 78 | bound | `{"direction":"lo","ref":"240:78","triangle":"BCP","value":"77693/500000"}` | `1 * c * q + -1 * b * q + -77693/500000` |
| 79 | bound | `{"direction":"hi","ref":"240:79","triangle":"BCP","value":"469077/1000000"}` | `469077/1000000 + -1 * c * q + 1 * b * q` |
| 80 | bound | `{"direction":"lo","ref":"240:80","triangle":"BCQ","value":"379311/1000000"}` | `1 * c * v + -1 * b * v + -379311/1000000` |
| 81 | bound | `{"direction":"hi","ref":"240:81","triangle":"BCQ","value":"346501/500000"}` | `346501/500000 + -1 * c * v + 1 * b * v` |
| 82 | bound | `{"direction":"lo","ref":"240:82","triangle":"BCR","value":"18591/50000"}` | `1 * c * w + -1 * b * w + -18591/50000` |
| 83 | bound | `{"direction":"hi","ref":"240:83","triangle":"BCR","value":"439501/500000"}` | `439501/500000 + -1 * c * w + 1 * b * w` |
| 85 | bound | `{"direction":"hi","ref":"240:85","triangle":"BCS","value":"365067/500000"}` | `365067/500000 + -1 * c * k + 1 * b * k` |
| 86 | bound | `{"direction":"lo","ref":"240:86","triangle":"BEF","value":"13857/20000"}` | `6143/20000 + -1 * b + -1 * e * f + 1 * b * e` |
| 87 | bound | `{"direction":"hi","ref":"240:87","triangle":"BEF","value":"447903384901/500000000000"}` | `-52096615099/500000000000 + 1 * b + 1 * e * f + -1 * b * e` |
| 89 | bound | `{"direction":"hi","ref":"240:89","triangle":"BEH","value":"59067901/62500000"}` | `59067901/62500000 + -1 * h + 1 * b * h + -1 * b * e` |
| 90 | bound | `{"direction":"lo","ref":"240:90","triangle":"BEP","value":"46703/500000"}` | `1 * q + -1 * b * q + -1 * e * p + 1 * b * e + -46703/500000` |
| 91 | bound | `{"direction":"hi","ref":"240:91","triangle":"BEP","value":"445953/1000000"}` | `445953/1000000 + -1 * q + 1 * b * q + 1 * e * p + -1 * b * e` |
| 92 | bound | `{"direction":"lo","ref":"240:92","triangle":"BEQ","value":"68773/200000"}` | `1 * v + -1 * b * v + -1 * e * u + 1 * b * e + -68773/200000` |
| 93 | bound | `{"direction":"hi","ref":"240:93","triangle":"BEQ","value":"174103/250000"}` | `174103/250000 + -1 * v + 1 * b * v + 1 * e * u + -1 * b * e` |
| 94 | bound | `{"direction":"lo","ref":"240:94","triangle":"BER","value":"184439/500000"}` | `1 * w + -1 * b * w + -1 * e * r + 1 * b * e + -184439/500000` |
| 96 | bound | `{"direction":"lo","ref":"240:96","triangle":"BES","value":"13269/40000"}` | `1 * k + -1 * b * k + -1 * e * j + 1 * b * e + -13269/40000` |
| 98 | bound | `{"direction":"lo","ref":"240:98","triangle":"BFH","value":"4043/40000"}` | `1 * f * h + -1 * b * h + 1 * b + -4043/40000` |
| 100 | bound | `{"direction":"lo","ref":"240:100","triangle":"BFP","value":"195783/1000000"}` | `-1 * f * q + 1 * b * q + 1 * p + -1 * b + -195783/1000000` |
| 102 | bound | `{"direction":"lo","ref":"240:102","triangle":"BFQ","value":"93/1000"}` | `-1 * f * v + 1 * b * v + 1 * u + -1 * b + -93/1000` |
| 103 | bound | `{"direction":"hi","ref":"240:103","triangle":"BFQ","value":"406691/1000000"}` | `406691/1000000 + 1 * f * v + -1 * b * v + -1 * u + 1 * b` |
| 104 | bound | `{"direction":"lo","ref":"240:104","triangle":"BFR","value":"13857/20000"}` | `-1 * f * w + 1 * b * w + 1 * r + -1 * b + -13857/20000` |
| 105 | bound | `{"direction":"hi","ref":"240:105","triangle":"BFR","value":"111886281777/125000000000"}` | `111886281777/125000000000 + 1 * f * w + -1 * b * w + -1 * r + 1 * b` |
| 106 | bound | `{"direction":"lo","ref":"240:106","triangle":"BFS","value":"279/1000"}` | `-1 * f * k + 1 * b * k + 1 * j + -1 * b + -279/1000` |
| 107 | bound | `{"direction":"hi","ref":"240:107","triangle":"BFS","value":"655761/1000000"}` | `655761/1000000 + 1 * f * k + -1 * b * k + -1 * j + 1 * b` |
| 108 | bound | `{"direction":"lo","ref":"240:108","triangle":"BHP","value":"23541/250000"}` | `1 * b * q + 1 * h * p + -1 * b * h + -23541/250000` |
| 112 | bound | `{"direction":"lo","ref":"240:112","triangle":"BHR","value":"160759/500000"}` | `1 * b * w + 1 * h * r + -1 * b * h + -160759/500000` |
| 113 | bound | `{"direction":"hi","ref":"240:113","triangle":"BHR","value":"1/1"}` | `1 + -1 * b * w + -1 * h * r + 1 * b * h` |
| 114 | bound | `{"direction":"lo","ref":"240:114","triangle":"BHS","value":"160727/1000000"}` | `1 * b * k + 1 * h * j + -1 * b * h + -160727/1000000` |
| 116 | bound | `{"direction":"lo","ref":"240:116","triangle":"BPQ","value":"31709/250000"}` | `1 * p * v + -1 * b * v + -1 * q * u + 1 * b * q + -31709/250000` |
| 117 | bound | `{"direction":"hi","ref":"240:117","triangle":"BPQ","value":"433103/1000000"}` | `433103/1000000 + -1 * p * v + 1 * b * v + 1 * q * u + -1 * b * q` |
| 118 | bound | `{"direction":"lo","ref":"240:118","triangle":"BPR","value":"93/1000"}` | `1 * p * w + -1 * b * w + -1 * q * r + 1 * b * q + -93/1000` |
| 120 | bound | `{"direction":"lo","ref":"240:120","triangle":"BPS","value":"52109/500000"}` | `1 * p * k + -1 * b * k + -1 * q * j + 1 * b * q + -52109/500000` |
| 122 | bound | `{"direction":"lo","ref":"240:122","triangle":"BQR","value":"139911/500000"}` | `-1 * u * w + 1 * b * w + 1 * v * r + -1 * b * v + -139911/500000` |
| 123 | bound | `{"direction":"hi","ref":"240:123","triangle":"BQR","value":"666347/1000000"}` | `666347/1000000 + 1 * u * w + -1 * b * w + -1 * v * r + 1 * b * v` |
| 126 | bound | `{"direction":"lo","ref":"240:126","triangle":"BRS","value":"46911/500000"}` | `1 * r * k + -1 * b * k + -1 * w * j + 1 * b * w + -46911/500000` |
| 129 | bound | `{"direction":"hi","ref":"240:129","triangle":"CEF","value":"66165443/125000000"}` | `-58834557/125000000 + 1 * c + 1 * e * f + -1 * c * e` |
| 130 | bound | `{"direction":"lo","ref":"240:130","triangle":"CEH","value":"93/1000"}` | `1 * h + -1 * c * h + 1 * c * e + -93/1000` |
| 131 | bound | `{"direction":"hi","ref":"240:131","triangle":"CEH","value":"36203851/62500000"}` | `36203851/62500000 + -1 * h + 1 * c * h + -1 * c * e` |
| 132 | bound | `{"direction":"lo","ref":"240:132","triangle":"CEP","value":"93/1000"}` | `1 * q + -1 * c * q + -1 * e * p + 1 * c * e + -93/1000` |
| 133 | bound | `{"direction":"hi","ref":"240:133","triangle":"CEP","value":"164738392977/500000000000"}` | `164738392977/500000000000 + -1 * q + 1 * c * q + 1 * e * p + -1 * c * e` |
| 134 | bound | `{"direction":"lo","ref":"240:134","triangle":"CEQ","value":"100303/1000000"}` | `1 * v + -1 * c * v + -1 * e * u + 1 * c * e + -100303/1000000` |
| 136 | bound | `{"direction":"lo","ref":"240:136","triangle":"CER","value":"93/1000"}` | `1 * w + -1 * c * w + -1 * e * r + 1 * c * e + -93/1000` |
| 138 | bound | `{"direction":"lo","ref":"240:138","triangle":"CES","value":"95879/1000000"}` | `1 * k + -1 * c * k + -1 * e * j + 1 * c * e + -95879/1000000` |
| 139 | bound | `{"direction":"hi","ref":"240:139","triangle":"CES","value":"358163/1000000"}` | `358163/1000000 + -1 * k + 1 * c * k + 1 * e * j + -1 * c * e` |
| 140 | bound | `{"direction":"lo","ref":"240:140","triangle":"CFH","value":"279/1000"}` | `1 * f * h + -1 * c * h + 1 * c + -279/1000` |
| 141 | bound | `{"direction":"hi","ref":"240:141","triangle":"CFH","value":"179897069249/250000000000"}` | `179897069249/250000000000 + -1 * f * h + 1 * c * h + -1 * c` |
| 142 | bound | `{"direction":"lo","ref":"240:142","triangle":"CFP","value":"981/8000"}` | `1 * f * q + -1 * c * q + -1 * p + 1 * c + -981/8000` |
| 144 | bound | `{"direction":"lo","ref":"240:144","triangle":"CFQ","value":"93/1000"}` | `1 * f * v + -1 * c * v + -1 * u + 1 * c + -93/1000` |
| 146 | bound | `{"direction":"lo","ref":"240:146","triangle":"CFR","value":"67873/200000"}` | `-1 * f * w + 1 * c * w + 1 * r + -1 * c + -67873/200000` |
| 147 | bound | `{"direction":"hi","ref":"240:147","triangle":"CFR","value":"894199/1000000"}` | `894199/1000000 + 1 * f * w + -1 * c * w + -1 * r + 1 * c` |
| 148 | bound | `{"direction":"lo","ref":"240:148","triangle":"CFS","value":"10819/100000"}` | `-1 * f * k + 1 * c * k + 1 * j + -1 * c + -10819/100000` |
| 150 | bound | `{"direction":"lo","ref":"240:150","triangle":"CHP","value":"93/1000"}` | `-1 * c * q + -1 * h * p + 1 * c * h + -93/1000` |
| 151 | bound | `{"direction":"hi","ref":"240:151","triangle":"CHP","value":"89569124599/200000000000"}` | `89569124599/200000000000 + 1 * c * q + 1 * h * p + -1 * c * h` |
| 152 | bound | `{"direction":"lo","ref":"240:152","triangle":"CHQ","value":"93/1000"}` | `1 * c * v + 1 * h * u + -1 * c * h + -93/1000` |
| 153 | bound | `{"direction":"hi","ref":"240:153","triangle":"CHQ","value":"531079/1000000"}` | `531079/1000000 + -1 * c * v + -1 * h * u + 1 * c * h` |
| 154 | bound | `{"direction":"lo","ref":"240:154","triangle":"CHR","value":"271593/1000000"}` | `1 * c * w + 1 * h * r + -1 * c * h + -271593/1000000` |
| 155 | bound | `{"direction":"hi","ref":"240:155","triangle":"CHR","value":"1/1"}` | `1 + -1 * c * w + -1 * h * r + 1 * c * h` |
| 157 | bound | `{"direction":"hi","ref":"240:157","triangle":"CHS","value":"726119/1000000"}` | `726119/1000000 + -1 * c * k + -1 * h * j + 1 * c * h` |
| 158 | bound | `{"direction":"lo","ref":"240:158","triangle":"CPQ","value":"97089/1000000"}` | `-1 * p * v + 1 * c * v + 1 * q * u + -1 * c * q + -97089/1000000` |
| 159 | bound | `{"direction":"hi","ref":"240:159","triangle":"CPQ","value":"397833/1000000"}` | `397833/1000000 + 1 * p * v + -1 * c * v + -1 * q * u + 1 * c * q` |
| 160 | bound | `{"direction":"lo","ref":"240:160","triangle":"CPR","value":"61717/500000"}` | `-1 * p * w + 1 * c * w + 1 * q * r + -1 * c * q + -61717/500000` |
| 165 | bound | `{"direction":"hi","ref":"240:165","triangle":"CQR","value":"395067/500000"}` | `395067/500000 + 1 * u * w + -1 * c * w + -1 * v * r + 1 * c * v` |
| 170 | bound | `{"direction":"lo","ref":"240:170","triangle":"EFH","value":"279/1000"}` | `1 * f * h + -1 * e * f + -1 * h + 721/1000` |
| 171 | bound | `{"direction":"hi","ref":"240:171","triangle":"EFH","value":"673755768407/1000000000000"}` | `-326244231593/1000000000000 + -1 * f * h + 1 * e * f + 1 * h` |
| 173 | bound | `{"direction":"hi","ref":"240:173","triangle":"EFP","value":"67337/125000"}` | `-57663/125000 + -1 * f * q + 1 * e * f + 1 * q + 1 * p + -1 * e * p` |
| 174 | bound | `{"direction":"lo","ref":"240:174","triangle":"EFQ","value":"93/1000"}` | `1 * f * v + -1 * e * f + -1 * v + -1 * u + 907/1000 + 1 * e * u` |
| 175 | bound | `{"direction":"hi","ref":"240:175","triangle":"EFQ","value":"431267/1000000"}` | `-568733/1000000 + -1 * f * v + 1 * e * f + 1 * v + 1 * u + -1 * e * u` |
| 176 | bound | `{"direction":"lo","ref":"240:176","triangle":"EFR","value":"322803/1000000"}` | `-1 * f * w + 1 * e * f + 1 * w + 1 * r + -1322803/1000000 + -1 * e * r` |
| 177 | bound | `{"direction":"hi","ref":"240:177","triangle":"EFR","value":"799591851601/1000000000000"}` | `1799591851601/1000000000000 + 1 * f * w + -1 * e * f + -1 * w + -1 * r + 1 * e * r` |
| 178 | bound | `{"direction":"lo","ref":"240:178","triangle":"EFS","value":"93/1000"}` | `-1 * f * k + 1 * e * f + 1 * k + 1 * j + -1093/1000 + -1 * e * j` |
| 179 | bound | `{"direction":"hi","ref":"240:179","triangle":"EFS","value":"110201/250000"}` | `360201/250000 + 1 * f * k + -1 * e * f + -1 * k + -1 * j + 1 * e * j` |
| 180 | bound | `{"direction":"lo","ref":"240:180","triangle":"EHP","value":"93/1000"}` | `-1 * q + -1 * h * p + 1 * h + 1 * e * p + -93/1000` |
| 182 | bound | `{"direction":"lo","ref":"240:182","triangle":"EHQ","value":"93/1000"}` | `1 * v + 1 * h * u + -1 * h + -1 * e * u + -93/1000` |
| 183 | bound | `{"direction":"hi","ref":"240:183","triangle":"EHQ","value":"15237/31250"}` | `15237/31250 + -1 * v + -1 * h * u + 1 * h + 1 * e * u` |
| 184 | bound | `{"direction":"lo","ref":"240:184","triangle":"EHR","value":"271593/1000000"}` | `1 * w + 1 * h * r + -1 * h + -1 * e * r + -271593/1000000` |
| 185 | bound | `{"direction":"hi","ref":"240:185","triangle":"EHR","value":"894199/1000000"}` | `894199/1000000 + -1 * w + -1 * h * r + 1 * h + 1 * e * r` |
| 186 | bound | `{"direction":"lo","ref":"240:186","triangle":"EHS","value":"145329/1000000"}` | `1 * k + 1 * h * j + -1 * h + -1 * e * j + -145329/1000000` |
| 187 | bound | `{"direction":"hi","ref":"240:187","triangle":"EHS","value":"161641/250000"}` | `161641/250000 + -1 * k + -1 * h * j + 1 * h + 1 * e * j` |
| 188 | bound | `{"direction":"lo","ref":"240:188","triangle":"EPQ","value":"123623/1000000"}` | `-1 * p * v + 1 * e * p + 1 * v + 1 * q * u + -1 * q + -1 * e * u + -123623/1000000` |
| 189 | bound | `{"direction":"hi","ref":"240:189","triangle":"EPQ","value":"403179/1000000"}` | `403179/1000000 + 1 * p * v + -1 * e * p + -1 * v + -1 * q * u + 1 * q + 1 * e * u` |
| 190 | bound | `{"direction":"lo","ref":"240:190","triangle":"EPR","value":"22809/125000"}` | `-1 * p * w + 1 * e * p + 1 * w + 1 * q * r + -1 * q + -1 * e * r + -22809/125000` |
| 193 | bound | `{"direction":"hi","ref":"240:193","triangle":"EPS","value":"91887/200000"}` | `91887/200000 + 1 * p * k + -1 * e * p + -1 * k + -1 * q * j + 1 * q + 1 * e * j` |
| 194 | bound | `{"direction":"lo","ref":"240:194","triangle":"EQR","value":"15983/50000"}` | `-1 * u * w + 1 * e * u + 1 * w + 1 * v * r + -1 * v + -1 * e * r + -15983/50000` |
| 195 | bound | `{"direction":"hi","ref":"240:195","triangle":"EQR","value":"358637287129/500000000000"}` | `358637287129/500000000000 + 1 * u * w + -1 * e * u + -1 * w + -1 * v * r + 1 * v + 1 * e * r` |
| 196 | bound | `{"direction":"lo","ref":"240:196","triangle":"EQS","value":"59493/500000"}` | `-1 * u * k + 1 * e * u + 1 * k + 1 * v * j + -1 * v + -1 * e * j + -59493/500000` |
| 197 | bound | `{"direction":"hi","ref":"240:197","triangle":"EQS","value":"445821/1000000"}` | `445821/1000000 + 1 * u * k + -1 * e * u + -1 * k + -1 * v * j + 1 * v + 1 * e * j` |
| 198 | bound | `{"direction":"lo","ref":"240:198","triangle":"ERS","value":"53837/500000"}` | `1 * r * k + -1 * e * r + -1 * k + -1 * w * j + 1 * w + 1 * e * j + -53837/500000` |
| 200 | bound | `{"direction":"lo","ref":"240:200","triangle":"FHP","value":"134609/1000000"}` | `-1 * f * q + -1 * h * p + 1 * f * h + 1 * p + -134609/1000000` |
| 201 | bound | `{"direction":"hi","ref":"240:201","triangle":"FHP","value":"97949734873/200000000000"}` | `97949734873/200000000000 + 1 * f * q + 1 * h * p + -1 * f * h + -1 * p` |
| 202 | bound | `{"direction":"lo","ref":"240:202","triangle":"FHQ","value":"93/1000"}` | `-1 * f * v + -1 * h * u + 1 * f * h + 1 * u + -93/1000` |
| 204 | bound | `{"direction":"lo","ref":"240:204","triangle":"FHR","value":"93/1000"}` | `-1 * f * w + -1 * h * r + 1 * f * h + 1 * r + -93/1000` |
| 205 | bound | `{"direction":"hi","ref":"240:205","triangle":"FHR","value":"236203260047/500000000000"}` | `236203260047/500000000000 + 1 * f * w + 1 * h * r + -1 * f * h + -1 * r` |
| 206 | bound | `{"direction":"lo","ref":"240:206","triangle":"FHS","value":"29279/250000"}` | `-1 * f * k + -1 * h * j + 1 * f * h + 1 * j + -29279/250000` |
| 207 | bound | `{"direction":"hi","ref":"240:207","triangle":"FHS","value":"41789/100000"}` | `41789/100000 + 1 * f * k + 1 * h * j + -1 * f * h + -1 * j` |
| 208 | bound | `{"direction":"lo","ref":"240:208","triangle":"FPR","value":"42871/125000"}` | `1 * p * w + -1 * p + -1 * f * w + -1 * q * r + 1 * f * q + 1 * r + -42871/125000` |
| 209 | bound | `{"direction":"hi","ref":"240:209","triangle":"FPR","value":"716431344601/1000000000000"}` | `716431344601/1000000000000 + -1 * p * w + 1 * p + 1 * f * w + 1 * q * r + -1 * f * q + -1 * r` |
| 212 | bound | `{"direction":"lo","ref":"240:212","triangle":"FQR","value":"119001/1000000"}` | `1 * u * w + -1 * u + -1 * f * w + -1 * v * r + 1 * f * v + 1 * r + -119001/1000000` |
| 213 | bound | `{"direction":"hi","ref":"240:213","triangle":"FQR","value":"468799027133/1000000000000"}` | `468799027133/1000000000000 + -1 * u * w + 1 * u + 1 * f * w + 1 * v * r + -1 * f * v + -1 * r` |
| 214 | bound | `{"direction":"lo","ref":"240:214","triangle":"FQS","value":"93/1000"}` | `1 * u * k + -1 * u + -1 * f * k + -1 * v * j + 1 * f * v + 1 * j + -93/1000` |
| 216 | bound | `{"direction":"lo","ref":"240:216","triangle":"FRS","value":"122129/1000000"}` | `-1 * r * k + 1 * r + 1 * f * k + 1 * w * j + -1 * f * w + -1 * j + -122129/1000000` |
| 217 | bound | `{"direction":"hi","ref":"240:217","triangle":"FRS","value":"478543/1000000"}` | `478543/1000000 + 1 * r * k + -1 * r + -1 * f * k + -1 * w * j + 1 * f * w + 1 * j` |
| 218 | bound | `{"direction":"lo","ref":"240:218","triangle":"HPQ","value":"93/1000"}` | `1 * p * v + -1 * h * p + -1 * q * u + 1 * h * u + -93/1000` |
| 219 | bound | `{"direction":"hi","ref":"240:219","triangle":"HPQ","value":"13151/31250"}` | `13151/31250 + -1 * p * v + 1 * h * p + 1 * q * u + -1 * h * u` |
| 220 | bound | `{"direction":"lo","ref":"240:220","triangle":"HPR","value":"271593/1000000"}` | `1 * p * w + -1 * h * p + -1 * q * r + 1 * h * r + -271593/1000000` |
| 221 | bound | `{"direction":"hi","ref":"240:221","triangle":"HPR","value":"791527/1000000"}` | `791527/1000000 + -1 * p * w + 1 * h * p + 1 * q * r + -1 * h * r` |
| 223 | bound | `{"direction":"hi","ref":"240:223","triangle":"HPS","value":"592721/1000000"}` | `592721/1000000 + -1 * p * k + 1 * h * p + 1 * q * j + -1 * h * j` |
| 224 | bound | `{"direction":"lo","ref":"240:224","triangle":"PQR","value":"279/1000"}` | `-1 * u * w + 1 * q * u + 1 * p * w + 1 * v * r + -1 * p * v + -1 * q * r + -279/1000` |
| 225 | bound | `{"direction":"hi","ref":"240:225","triangle":"PQR","value":"594963/1000000"}` | `594963/1000000 + 1 * u * w + -1 * q * u + -1 * p * w + -1 * v * r + 1 * p * v + 1 * q * r` |
| 226 | bound | `{"direction":"lo","ref":"240:226","triangle":"PQS","value":"93/1000"}` | `-1 * u * k + 1 * q * u + 1 * p * k + 1 * v * j + -1 * p * v + -1 * q * j + -93/1000` |
| 227 | bound | `{"direction":"hi","ref":"240:227","triangle":"PQS","value":"381017/1000000"}` | `381017/1000000 + 1 * u * k + -1 * q * u + -1 * p * k + -1 * v * j + 1 * p * v + 1 * q * j` |
| 228 | bound | `{"direction":"lo","ref":"240:228","triangle":"PRS","value":"93/1000"}` | `1 * r * k + -1 * q * r + -1 * p * k + -1 * w * j + 1 * p * w + 1 * q * j + -93/1000` |
| 229 | bound | `{"direction":"hi","ref":"240:229","triangle":"PRS","value":"123/320"}` | `123/320 + -1 * r * k + 1 * q * r + 1 * p * k + 1 * w * j + -1 * p * w + -1 * q * j` |
| 230 | bound | `{"direction":"lo","ref":"240:230","triangle":"QRS","value":"93/1000"}` | `-1 * r * k + 1 * v * r + 1 * u * k + 1 * w * j + -1 * u * w + -1 * v * j + -93/1000` |
| 232 | coordinate | `{"box":240,"direction":"lo","value":"105801/1000000","variable":"a"}` | `1 * a + -105801/1000000` |
| 233 | coordinate | `{"box":240,"direction":"hi","value":"283823/1000000","variable":"a"}` | `283823/1000000 + -1 * a` |
| 234 | coordinate | `{"box":240,"direction":"lo","value":"104003/1000000","variable":"b"}` | `1 * b + -104003/1000000` |
| 235 | coordinate | `{"box":240,"direction":"hi","value":"58031/200000","variable":"b"}` | `58031/200000 + -1 * b` |
| 236 | coordinate | `{"box":240,"direction":"lo","value":"796853/1000000","variable":"c"}` | `1 * c + -796853/1000000` |
| 237 | coordinate | `{"box":240,"direction":"hi","value":"196601/200000","variable":"c"}` | `196601/200000 + -1 * c` |
| 238 | coordinate | `{"box":240,"direction":"lo","value":"105801/1000000","variable":"e"}` | `1 * e + -105801/1000000` |
| 239 | coordinate | `{"box":240,"direction":"hi","value":"59/125","variable":"e"}` | `59/125 + -1 * e` |
| 240 | coordinate | `{"box":240,"direction":"lo","value":"105801/1000000","variable":"f"}` | `1 * f + -105801/1000000` |
| 241 | coordinate | `{"box":240,"direction":"hi","value":"505259/1000000","variable":"f"}` | `505259/1000000 + -1 * f` |
| 242 | coordinate | `{"box":240,"direction":"lo","value":"275687/500000","variable":"h"}` | `1 * h + -275687/500000` |
| 243 | coordinate | `{"box":240,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 244 | coordinate | `{"box":240,"direction":"lo","value":"339737/1000000","variable":"p"}` | `1 * p + -339737/1000000` |
| 245 | coordinate | `{"box":240,"direction":"hi","value":"694583/1000000","variable":"p"}` | `694583/1000000 + -1 * p` |
| 246 | coordinate | `{"box":240,"direction":"lo","value":"198801/1000000","variable":"q"}` | `1 * q + -198801/1000000` |
| 247 | coordinate | `{"box":240,"direction":"hi","value":"279891/500000","variable":"q"}` | `279891/500000 + -1 * q` |
| 252 | coordinate | `{"box":240,"direction":"lo","value":"410989/500000","variable":"r"}` | `1 * r + -410989/500000` |
| 253 | coordinate | `{"box":240,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 254 | coordinate | `{"box":240,"direction":"lo","value":"126077/250000","variable":"w"}` | `1 * w + -126077/250000` |
| 255 | coordinate | `{"box":240,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 256 | coordinate | `{"box":240,"direction":"lo","value":"383823/1000000","variable":"j"}` | `1 * j + -383823/1000000` |
| 257 | coordinate | `{"box":240,"direction":"hi","value":"879587/1000000","variable":"j"}` | `879587/1000000 + -1 * j` |
| 258 | coordinate | `{"box":240,"direction":"lo","value":"57059/125000","variable":"k"}` | `1 * k + -57059/125000` |
| 261 | physical | `{"factor":2}` | `-93/1000 + 1 * c + -1 * b` |
| 263 | physical | `{"factor":6}` | `-93/1000 + 1 * f` |
| 269 | physical | `{"factor":21}` | `-93/1000 + 1 * c` |
| 271 | physical | `{"factor":28}` | `907/1000 + -1 * a` |
| 275 | physical | `{"factor":54}` | `-93/1000 + 1 * h` |
| 277 | physical | `{"factor":62}` | `907/1000 + -1 * b` |
| 279 | physical | `{"factor":83}` | `907/1000 + -1 * f` |
| 281 | physical | `{"factor":108}` | `907/1000 + -1 * e` |
| 283 | physical | `{"factor":138}` | `1 * e + -1 * a` |
| 284 | physical | `{"factor":139}` | `1 * h + -1 * e` |
| 285 | physical | `{"factor":140}` | `1 * f + -1 * b` |
| 287 | physical | `{"factor":142}` | `1 * f + -1 * e` |
| 288 | physical | `{"factor":143}` | `1 * c * h + -135501/250000` |
| 289 | physical | `{"factor":144}` | `1 * c * h + -1 * a * b + -279/625` |
| 291 | physical | `{"factor":146}` | `721/1000 + -1 * f + -1 * e + 1 * e * f` |
| 297 | physical | `{"factor":152}` | `1 * p + -6318234/54937625` |
| 301 | physical | `{"factor":156}` | `799591851601/93000000000 * j + -1 + -613591851601/93000000000 * f + -1 * r` |
| 466 | physical | `{"factor":321}` | `25930559/62500000 * h + 43819441/62500000 * c * h + -43819441/62500000 * c * e + 279/250 * b * e + -279/250 * b * h` |
| 515 | physical | `{"factor":370}` | `-1176944231593/1000000000000 * f * h + -673755768407/1000000000000 * b * h + -1176944231593/1000000000000 * b + 18507/10000 * h + 18507/10000 * b * e` |
| 642 | physical | `{"factor":497}` | `138604757227/500000000000 * q + 372895242773/500000000000 * a + -138604757227/500000000000 * e * p + -372895242773/500000000000 * a * p + -1023/1000 * b * q + 1023/1000 * b * e` |
| 658 | physical | `{"factor":513}` | `51891262169/200000000000 * f * h + 152708737831/200000000000 * a * f + -1023/1000 * b * h + 1023/1000 * b` |
| 718 | physical | `{"factor":573}` | `-451802092541/1000000000000 * f * q + 571197907459/1000000000000 * h * p + -571197907459/1000000000000 * f * h + 451802092541/1000000000000 * p + 1023/1000 * a * f + -1023/1000 * a * p` |
| 819 | physical | `{"factor":674}` | `-38006941/62500000 * c * k + -25930559/62500000 * b * k + 1023/1000 * b * e + 1023/1000 * k + -1023/1000 * e * j` |
| 873 | physical | `{"factor":728}` | `2622833231/7812500000 * p * k + -2622833231/7812500000 * c * k + -2622833231/7812500000 * q * j + -5369354269/7812500000 * c * q + 1023/1000 * c + -1023/1000 * p + 1023/1000 * f * q` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 401200 | 0, 34 |
| 1 | 3457800 | 0, 63 |
| 2 | 10425800 | 0, 72 |
| 3 | 9980500 | 0, 89 |
| 4 | 61839000 | 0, 113 |
| 5 | 13915100 | 0, 116 |
| 6 | 5794200 | 0, 209 |
| 7 | 13304200 | 0, 225 |
| 8 | 15180400 | 0, 234 |
| 9 | 2018100 | 0, 240 |
| 10 | 69753300 | 0, 245 |
| 11 | 6039300 | 0, 283 |
| 12 | 7485100 | 0, 287 |
| 13 | 107286100 | 1, 118 |
| 14 | 4289600 | 2, 150 |
| 15 | 13057600 | 3, 214 |
| 16 | 2292900 | 4, 87 |
| 17 | 1612800 | 4, 230 |
| 18 | 3357000 | 5, 138 |
| 19 | 15538000 | 5, 150 |
| 20 | 50201000 | 6, 12 |
| 21 | 830000 | 6, 34 |
| 22 | 830000 | 6, 37 |
| 23 | 4064000 | 6, 46 |
| 24 | 78574000 | 6, 49 |
| 25 | 5008000 | 6, 64 |
| 26 | 27386000 | 6, 67 |
| 27 | 2527000 | 6, 69 |
| 28 | 67322000 | 6, 83 |
| 29 | 2527000 | 6, 85 |
| 30 | 1971000 | 6, 102 |
| 31 | 1971000 | 6, 116 |
| 32 | 117523000 | 6, 118 |
| 33 | 2527000 | 6, 120 |
| 34 | 830000 | 6, 138 |
| 35 | 132065000 | 6, 142 |
| 36 | 92755000 | 6, 144 |
| 37 | 14472000 | 6, 158 |
| 38 | 8955000 | 6, 165 |
| 39 | 25548000 | 6, 174 |
| 40 | 1974000 | 6, 233 |
| 41 | 4377000 | 6, 234 |
| 42 | 2653000 | 6, 241 |
| 43 | 34044100 | 7, 132 |
| 44 | 13920000 | 8, 10 |
| 45 | 34269000 | 8, 13 |
| 46 | 7567000 | 8, 15 |
| 47 | 6053000 | 8, 23 |
| 48 | 6734000 | 8, 36 |
| 49 | 6774000 | 8, 39 |
| 50 | 65145000 | 8, 43 |
| 51 | 934000 | 8, 55 |
| 52 | 6053000 | 8, 63 |
| 53 | 13224000 | 8, 66 |
| 54 | 38229000 | 8, 76 |
| 55 | 728000 | 8, 92 |
| 56 | 25093000 | 8, 98 |
| 57 | 16135000 | 8, 107 |
| 58 | 34997000 | 8, 112 |
| 59 | 23702000 | 8, 114 |
| 60 | 728000 | 8, 117 |
| 61 | 407000 | 8, 131 |
| 62 | 91430000 | 8, 141 |
| 63 | 124269000 | 8, 146 |
| 64 | 180267000 | 8, 154 |
| 65 | 2643000 | 8, 158 |
| 66 | 85309000 | 8, 160 |
| 67 | 5490000 | 8, 186 |
| 68 | 2398000 | 8, 197 |
| 69 | 9773000 | 8, 213 |
| 70 | 2487000 | 8, 224 |
| 71 | 79353000 | 8, 252 |
| 72 | 4552000 | 8, 257 |
| 73 | 35640000 | 8, 269 |
| 74 | 25187000 | 8, 271 |
| 75 | 13904000 | 8, 275 |
| 76 | 78188000 | 8, 277 |
| 77 | 66330000 | 8, 279 |
| 78 | 7602000 | 10, 34 |
| 79 | 33000 | 10, 48 |
| 80 | 33000 | 10, 64 |
| 81 | 3811000 | 10, 132 |
| 82 | 1765000 | 10, 144 |
| 83 | 4483000 | 10, 150 |
| 84 | 1765000 | 10, 158 |
| 85 | 8133000 | 10, 198 |
| 86 | 79245000 | 10, 202 |
| 87 | 3363000 | 10, 230 |
| 88 | 81319500 | 12, 150 |
| 89 | 19578000 | 12, 158 |
| 90 | 3528300 | 13, 202 |
| 91 | 7567000 | 14, 34 |
| 92 | 1765000 | 14, 136 |
| 93 | 47467000 | 14, 150 |
| 94 | 4178000 | 14, 218 |
| 95 | 3157000 | 14, 230 |
| 96 | 834000 | 14, 234 |
| 97 | 37666200 | 15, 202 |
| 98 | 76813600 | 17, 253 |
| 99 | 9912300 | 18, 34 |
| 100 | 127334900 | 18, 118 |
| 101 | 37751100 | 18, 206 |
| 102 | 24745200 | 18, 218 |
| 103 | 2475600 | 19, 132 |
| 104 | 624400 | 19, 285 |
| 105 | 33191700 | 20, 102 |
| 106 | 45432700 | 20, 118 |
| 107 | 93588400 | 22, 118 |
| 108 | 10626700 | 24, 202 |
| 109 | 10342600 | 24, 218 |
| 110 | 2475600 | 26, 150 |
| 111 | 46719500 | 26, 202 |
| 112 | 75973000 | 30, 230 |
| 113 | 3859200 | 30, 253 |
| 114 | 34774400 | 31, 54 |
| 115 | 84934800 | 31, 78 |
| 116 | 34253400 | 31, 118 |
| 117 | 7534700 | 31, 186 |
| 118 | 36187100 | 31, 205 |
| 119 | 22558700 | 31, 212 |
| 120 | 16662800 | 31, 216 |
| 121 | 3478700 | 31, 228 |
| 122 | 1879400 | 31, 232 |
| 123 | 11573800 | 31, 238 |
| 124 | 11283100 | 31, 246 |
| 125 | 7534700 | 33, 70 |
| 126 | 13863800 | 34, 37 |
| 127 | 17799300 | 34, 46 |
| 128 | 43249300 | 34, 56 |
| 129 | 10713700 | 34, 67 |
| 130 | 125590700 | 34, 74 |
| 131 | 92278400 | 34, 78 |
| 132 | 582000 | 34, 117 |
| 133 | 8333600 | 34, 123 |
| 134 | 1049000 | 34, 154 |
| 135 | 1323300 | 34, 165 |
| 136 | 2478300 | 34, 182 |
| 137 | 11385400 | 34, 184 |
| 138 | 7534700 | 34, 186 |
| 139 | 11385400 | 34, 195 |
| 140 | 4074000 | 34, 212 |
| 141 | 4713800 | 34, 229 |
| 142 | 103622700 | 34, 236 |
| 143 | 105903500 | 34, 253 |
| 144 | 834000 | 34, 256 |
| 145 | 11103700 | 34, 261 |
| 146 | 61075200 | 34, 285 |
| 147 | 13103400 | 34, 289 |
| 148 | 5682100 | 35, 230 |
| 149 | 18668700 | 36, 132 |
| 150 | 1323300 | 36, 144 |
| 151 | 9256900 | 36, 202 |
| 152 | 12876500 | 36, 218 |
| 153 | 32700 | 37, 70 |
| 154 | 11692000 | 37, 118 |
| 155 | 505700 | 40, 136 |
| 156 | 321300 | 40, 230 |
| 157 | 6994900 | 41, 202 |
| 158 | 34807100 | 42, 66 |
| 159 | 66186100 | 42, 78 |
| 160 | 62921000 | 42, 118 |
| 161 | 29192200 | 42, 120 |
| 162 | 42834600 | 42, 134 |
| 163 | 41108100 | 42, 148 |
| 164 | 8238000 | 42, 178 |
| 165 | 13165900 | 43, 136 |
| 166 | 26280100 | 43, 214 |
| 167 | 3034300 | 44, 48 |
| 168 | 6469700 | 44, 283 |
| 169 | 16518000 | 46, 87 |
| 170 | 15810200 | 46, 102 |
| 171 | 3362500 | 46, 230 |
| 172 | 19425600 | 47, 150 |
| 173 | 823400 | 47, 202 |
| 174 | 89821900 | 48, 52 |
| 175 | 4444000 | 48, 72 |
| 176 | 18921200 | 48, 76 |
| 177 | 90963100 | 48, 78 |
| 178 | 37308500 | 48, 102 |
| 179 | 56293300 | 48, 134 |
| 180 | 749400 | 48, 141 |
| 181 | 77079200 | 48, 153 |
| 182 | 3034300 | 48, 201 |
| 183 | 69331100 | 48, 207 |
| 184 | 48573800 | 48, 214 |
| 185 | 968300 | 48, 225 |
| 186 | 27771200 | 48, 235 |
| 187 | 48142900 | 48, 237 |
| 188 | 5255000 | 48, 244 |
| 189 | 39080300 | 48, 288 |
| 190 | 17700 | 48, 291 |
| 191 | 25235900 | 49, 132 |
| 192 | 10590600 | 49, 178 |
| 193 | 37623700 | 49, 182 |
| 194 | 25713500 | 49, 218 |
| 195 | 8331400 | 49, 283 |
| 196 | 3478700 | 50, 230 |
| 197 | 3277000 | 51, 150 |
| 198 | 15660500 | 52, 102 |
| 199 | 3571700 | 54, 78 |
| 200 | 14045100 | 54, 116 |
| 201 | 4336100 | 54, 118 |
| 202 | 5225200 | 54, 134 |
| 203 | 9068400 | 54, 198 |
| 204 | 11595000 | 55, 214 |
| 205 | 70551700 | 56, 78 |
| 206 | 139646300 | 57, 144 |
| 207 | 4804900 | 57, 150 |
| 208 | 35516200 | 57, 214 |
| 209 | 2824900 | 57, 283 |
| 210 | 20260700 | 57, 287 |
| 211 | 4942400 | 59, 132 |
| 212 | 4405200 | 59, 136 |
| 213 | 1765100 | 60, 102 |
| 214 | 6628300 | 60, 136 |
| 215 | 583300 | 60, 140 |
| 216 | 5628800 | 60, 144 |
| 217 | 1726800 | 60, 158 |
| 218 | 2434200 | 60, 196 |
| 219 | 9578900 | 60, 214 |
| 220 | 4713800 | 60, 226 |
| 221 | 21280500 | 62, 102 |
| 222 | 4813400 | 62, 283 |
| 223 | 49977000 | 66, 74 |
| 224 | 30559000 | 66, 147 |
| 225 | 67811400 | 66, 178 |
| 226 | 83353300 | 66, 182 |
| 227 | 25929300 | 66, 185 |
| 228 | 83353300 | 66, 196 |
| 229 | 3257900 | 66, 202 |
| 230 | 70295700 | 66, 214 |
| 231 | 968300 | 66, 226 |
| 232 | 4629600 | 67, 136 |
| 233 | 45583300 | 67, 150 |
| 234 | 701500 | 68, 74 |
| 235 | 40684000 | 68, 177 |
| 236 | 7659400 | 68, 182 |
| 237 | 43401700 | 68, 185 |
| 238 | 11021900 | 68, 202 |
| 239 | 19253400 | 69, 136 |
| 240 | 7567400 | 70, 73 |
| 241 | 21657500 | 70, 77 |
| 242 | 32700 | 70, 103 |
| 243 | 2601900 | 70, 129 |
| 244 | 20702300 | 70, 133 |
| 245 | 5924200 | 70, 140 |
| 246 | 34983800 | 70, 151 |
| 247 | 25929300 | 70, 154 |
| 248 | 103565300 | 70, 174 |
| 249 | 30559000 | 70, 176 |
| 250 | 43277100 | 70, 183 |
| 251 | 25713500 | 70, 200 |
| 252 | 8924200 | 70, 219 |
| 253 | 968300 | 70, 224 |
| 254 | 29926400 | 70, 269 |
| 255 | 35311900 | 70, 277 |
| 256 | 3717600 | 70, 297 |
| 257 | 727900 | 72, 104 |
| 258 | 5951300 | 72, 214 |
| 259 | 1103100 | 72, 237 |
| 260 | 23541000 | 73, 150 |
| 261 | 22765300 | 73, 202 |
| 262 | 8577000 | 73, 253 |
| 263 | 759600 | 74, 86 |
| 264 | 834000 | 74, 106 |
| 265 | 4185100 | 74, 136 |
| 266 | 5614700 | 74, 182 |
| 267 | 25014500 | 74, 206 |
| 268 | 1765100 | 74, 226 |
| 269 | 61454300 | 74, 246 |
| 270 | 1971400 | 75, 132 |
| 271 | 13281300 | 75, 178 |
| 272 | 44346300 | 76, 214 |
| 273 | 21657500 | 77, 230 |
| 274 | 13915100 | 78, 102 |
| 275 | 47202700 | 78, 170 |
| 276 | 5629600 | 78, 182 |
| 277 | 12506200 | 78, 184 |
| 278 | 21657500 | 78, 186 |
| 279 | 88146600 | 78, 190 |
| 280 | 20255700 | 78, 212 |
| 281 | 3277000 | 78, 216 |
| 282 | 54300 | 78, 218 |
| 283 | 834000 | 78, 257 |
| 284 | 23541000 | 79, 136 |
| 285 | 6679700 | 79, 202 |
| 286 | 35072800 | 79, 253 |
| 287 | 11766800 | 80, 214 |
| 288 | 8404300 | 81, 230 |
| 289 | 15499500 | 82, 214 |
| 290 | 409300 | 85, 253 |
| 291 | 907100 | 86, 136 |
| 292 | 66286000 | 86, 150 |
| 293 | 68819000 | 86, 253 |
| 294 | 1040500 | 87, 148 |
| 295 | 20049400 | 87, 216 |
| 296 | 4131800 | 90, 150 |
| 297 | 6469700 | 90, 283 |
| 298 | 14012700 | 91, 202 |
| 299 | 3277000 | 91, 230 |
| 300 | 1323300 | 92, 150 |
| 301 | 8261500 | 92, 202 |
| 302 | 727900 | 93, 118 |
| 303 | 907100 | 93, 136 |
| 304 | 13321700 | 93, 228 |
| 305 | 31045700 | 94, 202 |
| 306 | 6469700 | 94, 287 |
| 307 | 11244300 | 96, 144 |
| 308 | 44109800 | 96, 150 |
| 309 | 3157400 | 96, 230 |
| 310 | 79974600 | 98, 132 |
| 311 | 22512100 | 98, 178 |
| 312 | 46902900 | 100, 136 |
| 313 | 574000 | 100, 214 |
| 314 | 53682400 | 102, 136 |
| 315 | 40612700 | 102, 138 |
| 316 | 2058900 | 102, 141 |
| 317 | 41843900 | 102, 157 |
| 318 | 51817300 | 102, 171 |
| 319 | 840700 | 102, 198 |
| 320 | 11766800 | 102, 212 |
| 321 | 24910400 | 102, 216 |
| 322 | 1765100 | 102, 228 |
| 323 | 20329300 | 103, 132 |
| 324 | 85028500 | 103, 202 |
| 325 | 293800 | 104, 144 |
| 326 | 40389200 | 104, 150 |
| 327 | 15272300 | 104, 214 |
| 328 | 25741000 | 105, 132 |
| 329 | 44921200 | 105, 182 |
| 330 | 3714900 | 108, 132 |
| 331 | 60486200 | 108, 253 |
| 332 | 26778200 | 112, 132 |
| 333 | 21681600 | 113, 196 |
| 334 | 2405800 | 113, 285 |
| 335 | 727900 | 116, 118 |
| 336 | 67440000 | 116, 136 |
| 337 | 10925900 | 116, 155 |
| 338 | 3478700 | 116, 178 |
| 339 | 3757400 | 116, 185 |
| 340 | 1765100 | 118, 138 |
| 341 | 4186100 | 118, 180 |
| 342 | 10939200 | 118, 189 |
| 343 | 8804900 | 118, 214 |
| 344 | 23045500 | 118, 234 |
| 345 | 89255200 | 118, 236 |
| 346 | 36878200 | 118, 240 |
| 347 | 40735100 | 118, 242 |
| 348 | 3717600 | 118, 256 |
| 349 | 35921800 | 118, 283 |
| 350 | 29452100 | 118, 287 |
| 351 | 724600 | 120, 134 |
| 352 | 27427100 | 120, 144 |
| 353 | 5754300 | 120, 188 |
| 354 | 12649500 | 120, 195 |
| 355 | 9032100 | 122, 178 |
| 356 | 48182600 | 126, 144 |
| 357 | 5122100 | 126, 158 |
| 358 | 7534700 | 130, 178 |
| 359 | 13512800 | 132, 182 |
| 360 | 44225300 | 132, 184 |
| 361 | 2175500 | 132, 187 |
| 362 | 44225300 | 132, 195 |
| 363 | 5359200 | 132, 197 |
| 364 | 416900 | 132, 223 |
| 365 | 582000 | 132, 225 |
| 366 | 1457300 | 132, 229 |
| 367 | 69753300 | 132, 234 |
| 368 | 49995900 | 132, 239 |
| 369 | 4804900 | 132, 243 |
| 370 | 72358300 | 132, 254 |
| 371 | 834000 | 132, 257 |
| 372 | 17557500 | 132, 281 |
| 373 | 32329000 | 133, 230 |
| 374 | 3695200 | 134, 255 |
| 375 | 505700 | 136, 179 |
| 376 | 11486500 | 136, 180 |
| 377 | 69372300 | 136, 183 |
| 378 | 11486500 | 136, 189 |
| 379 | 4405200 | 136, 207 |
| 380 | 1765100 | 136, 227 |
| 381 | 62436000 | 136, 235 |
| 382 | 68966200 | 136, 238 |
| 383 | 4602200 | 136, 242 |
| 384 | 12362500 | 136, 244 |
| 385 | 72358300 | 136, 247 |
| 386 | 950200 | 136, 252 |
| 387 | 23541000 | 136, 288 |
| 388 | 1412800 | 136, 291 |
| 389 | 99938300 | 136, 297 |
| 390 | 950210 | 136, 301 |
| 391 | 7534700 | 138, 170 |
| 392 | 834000 | 138, 234 |
| 393 | 29192200 | 139, 202 |
| 394 | 17947900 | 140, 178 |
| 395 | 29192200 | 140, 228 |
| 396 | 70100300 | 140, 230 |
| 397 | 870100 | 140, 283 |
| 398 | 51790300 | 141, 214 |
| 399 | 10104900 | 144, 176 |
| 400 | 9119100 | 144, 182 |
| 401 | 86578700 | 144, 190 |
| 402 | 27810200 | 144, 204 |
| 403 | 16475800 | 144, 216 |
| 404 | 3695200 | 144, 254 |
| 405 | 21065400 | 146, 150 |
| 406 | 163374700 | 146, 202 |
| 407 | 29192200 | 148, 218 |
| 408 | 57115200 | 150, 176 |
| 409 | 4804900 | 150, 184 |
| 410 | 4186100 | 150, 225 |
| 411 | 73724000 | 150, 253 |
| 412 | 646400 | 150, 261 |
| 413 | 24866000 | 150, 269 |
| 414 | 24866000 | 150, 277 |
| 415 | 4804900 | 150, 284 |
| 416 | 26161900 | 152, 178 |
| 417 | 1140100 | 153, 214 |
| 418 | 25929300 | 154, 230 |
| 419 | 20410400 | 155, 214 |
| 420 | 4185100 | 155, 237 |
| 421 | 10442300 | 158, 182 |
| 422 | 14917500 | 158, 198 |
| 423 | 4186100 | 158, 218 |
| 424 | 10626700 | 158, 224 |
| 425 | 1040500 | 158, 228 |
| 426 | 2222400 | 159, 230 |
| 427 | 26734600 | 160, 202 |
| 428 | 4563400 | 170, 230 |
| 429 | 11582200 | 170, 283 |
| 430 | 8500 | 173, 283 |
| 431 | 7659400 | 175, 214 |
| 432 | 28012300 | 176, 214 |
| 433 | 12510800 | 178, 205 |
| 434 | 9170800 | 178, 220 |
| 435 | 3478700 | 178, 226 |
| 436 | 6501700 | 178, 234 |
| 437 | 81766000 | 182, 190 |
| 438 | 3695200 | 182, 254 |
| 439 | 8500 | 182, 287 |
| 440 | 30559000 | 184, 230 |
| 441 | 583300 | 188, 202 |
| 442 | 65378600 | 190, 202 |
| 443 | 61075200 | 190, 287 |
| 444 | 2005900 | 193, 253 |
| 445 | 8500 | 194, 287 |
| 446 | 3478700 | 196, 228 |
| 447 | 53280600 | 198, 218 |
| 448 | 24745200 | 200, 230 |
| 449 | 4804900 | 200, 283 |
| 450 | 89468000 | 202, 213 |
| 451 | 775100 | 202, 217 |
| 452 | 3695200 | 202, 254 |
| 453 | 8500 | 202, 263 |
| 454 | 113643300 | 202, 269 |
| 455 | 113643300 | 202, 277 |
| 456 | 8500 | 202, 281 |
| 457 | 31527300 | 204, 230 |
| 458 | 574000 | 208, 214 |
| 459 | 968300 | 212, 228 |
| 460 | 8500 | 212, 287 |
| 461 | 35086100 | 214, 221 |
| 462 | 14025900 | 214, 224 |
| 463 | 3478700 | 214, 228 |
| 464 | 6501700 | 216, 234 |
| 465 | 9372600 | 218, 230 |
| 466 | 968300 | 220, 230 |
| 467 | 37421000 | 230, 269 |
| 468 | 70864700 | 230, 271 |
| 469 | 70864700 | 230, 275 |
| 470 | 37421000 | 230, 277 |
| 471 | 163100 | 234, 287 |
| 472 | 69901800 | 235, 283 |
| 473 | 12579200 | 237, 255 |
| 474 | 5720500 | 237, 283 |
| 475 | 183200 | 237, 285 |
| 476 | 279200 | 243, 287 |
| 477 | 25760000 | 244, 283 |
| 478 | 7943600 | 246, 285 |
| 479 | 17987600 | 253, 284 |
| 480 | 1488200 | 253, 287 |
| 481 | 5559500 | 253, 288 |
| 482 | 1236600 | 253, 291 |
| 483 | 884200 | 255, 283 |
| 484 | 552600 | 258, 285 |
| 485 | 64754200 | 283, 285 |
| 486 | 29300 | 285, 285 |
| 487 | 18486900 | 253, 466 |
| 488 | 10441800 | 253, 515 |
| 489 | 15841000 | 253, 642 |
| 490 | 6780000 | 253, 658 |
| 491 | 23175400 | 253, 718 |
| 492 | 9946800 | 253, 819 |
| 493 | 5098400 | 253, 873 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `a * b * q` | 1400 |
| `a * a * b` | 61833900 |
| `a * b * e * p` | -1500 |
| `a * a * b * p` | -4400 |
| `a * b` | -10125566362231251/1000000000 |
| `a * a * c` | 3471800 |
| `a * c * e * p` | 200 |
| `a * a * c * p` | -300 |
| `a * c` | 51791121094875571/5000000000 |
| `q` | -65166234619/5000000000 |
| `a` | -32274368546133/2500000 |
| `e * p` | 299575734619/5000000000 |
| `a * p` | -3060768033019/5000000000 |
| `1` | -2611474030287475136782298719/1098752500000000000000 |
| `a * b * p * w` | 300 |
| `a * b * q * r` | 500 |
| `a * a * b * r` | -92350200 |
| `a * c * p * w` | 700 |
| `a * c * q * r` | 200 |
| `a * a * c * r` | -3457800 |
| `p * w` | 461694646103/5000000000 |
| `q * r` | 158713024827/5000000000 |
| `a * r` | 72417012877778207896669/4395010000000000 |
| `a * b * c * e` | 570000 |
| `a * b * b * e` | 21971200 |
| `a * c * c * e` | 12901400 |
| `c * e` | -21669556304988909357251/4395010000000000 |
| `b * e` | 5313630671/10000 |
| `a * b * h` | -500 |
| `a * b * b * h` | 500 |
| `a * c * h` | -16875200 |
| `a * b * c * h` | -600 |
| `h` | -14971222462241433/10000000000 |
| `b * h` | 10088647271847/5000000000 |
| `a * b * b * w` | -46175100 |
| `a * b * h * r` | -300 |
| `a * b * c * w` | 100 |
| `a * c * h * r` | 25009000 |
| `b * w` | 29093476033853897/5000000000 |
| `h * r` | 1247977180979/625000 |
| `a * b * p * v` | 3200 |
| `a * b * b * v` | -4900 |
| `a * b * q * u` | 5800 |
| `a * b * b * q` | -6000 |
| `a * c * p * v` | -200 |
| `a * b * c * v` | 200 |
| `a * b * c * q` | -1000 |
| `p * v` | -288459355689/2000000000 |
| `b * v` | -1380747033789/2000000000 |
| `q * u` | 488459355689/2000000000 |
| `b * q` | -3162547118297/5000000000 |
| `a * b * p` | 600 |
| `a * b * f * w` | 300 |
| `a * b * f * q` | 300 |
| `a * b * r` | 19541600 |
| `a * c * p` | -800 |
| `a * c * f * w` | -7371700 |
| `a * c * f * q` | 100 |
| `a * c * r` | -13057700 |
| `p` | 27827373457/5000000000 |
| `f * w` | -1402124349235370951/930000000000 |
| `f * q` | 66922626543/5000000000 |
| `r` | -10424080835548953/10000000000 |
| `a * b * u * w` | -300 |
| `a * b * v * r` | 100 |
| `a * c * u * w` | -100 |
| `u * w` | -39284003433/500000000 |
| `v * r` | -10715996567/500000000 |
| `a * b * b` | 16246700 |
| `a * b * c` | 1221700 |
| `b` | -8453452266133647/10000000000 |
| `a * b * f` | -1974800 |
| `a * c * f` | 2343400 |
| `f` | 84085800077126381/100000000000 |
| `a * b * e` | -5023900 |
| `a * c * e` | -20620200 |
| `e` | 27244586882619701/5000000000 |
| `b * e * h * p` | 300 |
| `b * c * e * h` | -300 |
| `a * b * h * p` | 100 |
| `a * h * p` | 400 |
| `c * q` | -121962688169/5000000000 |
| `h * p` | 132605446571/10000000000 |
| `c * h` | 16501750947653/31250000 |
| `u * k` | 1510490717109/10000000000 |
| `u` | -357963770329/10000000000 |
| `f * k` | -1108003961121/10000000000 |
| `v * j` | -1510490717109/10000000000 |
| `f * v` | 357963770329/10000000000 |
| `j` | 12175108632589/100000000000 |
| `b * e * u * k` | -100 |
| `b * e * u` | -100 |
| `b * e * v * j` | 300 |
| `b * e * f * v` | 100 |
| `b * e * j` | -100 |
| `a * b * u * k` | -200 |
| `a * b * u` | 500 |
| `a * b * f * k` | -400 |
| `a * b * v * j` | 500 |
| `a * b * f * v` | -200 |
| `a * b * j` | 900 |
| `a * u * k` | -200 |
| `a * u` | -57817740897/62500000 |
| `a * f * k` | 100 |
| `a * f * v` | 100 |
| `a * j` | -15638907230815943/274688125000000 |
| `b * b` | 3915800 |
| `b * b * e` | -2324600 |
| `a * b * e * f` | 200 |
| `a * f` | 87207884902522763/10000000000 |
| `e * f` | -34313519487802479/2500000000 |
| `b * r * k` | 2710653/156250 |
| `b * v * r` | 300 |
| `b * u * k` | -100 |
| `b * w * j` | -100 |
| `b * u * w` | 100 |
| `b * v * j` | -100 |
| `a * b * r * k` | -200 |
| `a * b * w * j` | 200 |
| `a * f * r * k` | 100 |
| `a * f * u * k` | -100 |
| `a * f * w * j` | -100 |
| `a * f * u * w` | -300 |
| `a * f * v * j` | 100 |
| `r * k` | -8576456096996387/549376250000000 |
| `w * j` | 1889807131914031007/102183982500000000 |
| `k` | -13836258647/200000000 |
| `c * k` | 79111428729/5000000000 |
| `e * j` | 13836258647/200000000 |
| `b * k` | 226272344229/1000000000 |
| `b * c * k` | 100 |
| `b * c * e` | -60000 |
| `a * b * k` | 1000 |
| `a * b * e * j` | -600 |
| `a * e * f * j` | -100 |
| `a * c * e * f` | 100 |
| `b * c * q` | -900 |
| `b * h * p` | 100 |
| `b * c * h` | -100 |
| `a * f * h * p` | -200 |
| `a * c * f * h` | 2492200 |
| `a * a * b * b` | 22285000 |
| `b * h * q` | -200 |
| `b * h * v` | 300 |
| `b * e * h * u` | -200 |
| `a * b * h * u` | -500 |
| `a * b * v` | 400 |
| `a * a * b * u` | -5000 |
| `v` | 241288577433/10000000000 |
| `e * u` | -241288577433/10000000000 |
| `b * f * h * v` | 500 |
| `a * b * f * h` | 300 |
| `b * h * u` | -400 |
| `a * a * b * f` | 9332000 |
| `b * f * h * w` | 200 |
| `b * h * r` | -3283087238937/5000000000 |
| `b * h * p * k` | -200 |
| `b * h * q * j` | -500 |
| `a * b * h * j` | 500 |
| `a * b * p * k` | -1000 |
| `a * b * q * j` | 1000 |
| `a * a * b * j` | -1000 |
| `p * k` | -263243861689/5000000000 |
| `q * j` | 263243861689/5000000000 |
| `b * h * u * w` | 200 |
| `b * h * v * r` | -200 |
| `b * h * u * k` | 800 |
| `b * h * v * j` | -500 |
| `b * c * h * w` | -1000 |
| `c * w` | -878172332046355456019/4395010000000000 |
| `b * c * h * k` | 200 |
| `b * b * h` | 200 |
| `b * h * p * v` | -200 |
| `b * h * q * u` | 200 |
| `b * h * p * w` | 400 |
| `b * h * q * r` | -200 |
| `b * h * k` | -500 |
| `b * e * h * j` | 500 |
| `b * f * h * q` | -200 |
| `b * c * h * q` | 600 |
| `c` | -382221352078981/1000000000 |
| `b * c * h * v` | 300 |
| `c * v` | 889359/10000 |
| `b * e * f * h` | -300 |
| `b * f * h` | -300 |
| `b * b * q * v` | 4900 |
| `a * a * p * u` | 4200 |
| `b * b * q * w` | 100 |
| `a * a * p * r` | 600 |
| `b * c * q * q` | 300 |
| `a * a * b * c` | -6053000 |
| `a * c * p * q` | 200 |
| `b * q * v` | -1000 |
| `b * e * q * u` | 300 |
| `a * p * v` | -400 |
| `a * a * p` | -100 |
| `a * e * p * u` | 1000 |
| `b * q * w` | 700 |
| `b * e * q * r` | -600 |
| `a * b * w` | -4814000 |
| `a * b * e * r` | 600 |
| `a * p * w` | 400 |
| `a * e * p * r` | -300 |
| `w` | -978401354208008543981/4395010000000000 |
| `e * r` | -31545813372395495456019/4395010000000000 |
| `a * a * f * p` | 400 |
| `f * h` | -1421884206787283/2000000000 |
| `a * h * p * u` | -100 |
| `h * u` | -331392704557/10000000000 |
| `b * p * q * w` | -500 |
| `b * q * q * r` | 500 |
| `a * p * p * w` | -400 |
| `a * p * q * r` | 400 |
| `b * q * v * r` | -100 |
| `a * p * v * r` | -100 |
| `a * c * h * p` | 100 |
| `b * b * e * q` | 100 |
| `b * b * q` | 600 |
| `b * f * q * k` | 400 |
| `b * q * j` | -800 |
| `a * f * p * k` | 400 |
| `a * p * j` | -800 |
| `a * h * p * r` | 200 |
| `a * h * p * j` | -800 |
| `h * j` | -217647/10000 |
| `b * p * q * v` | 500 |
| `b * q * q * u` | -500 |
| `b * b * q * q` | -100 |
| `a * p * p * v` | 600 |
| `a * p * q * u` | -600 |
| `b * f * q * w` | -200 |
| `b * c * q * w` | 800 |
| `b * q * r` | -357 |
| `a * f * p * w` | -300 |
| `a * p * r` | -149359232907/500000000 |
| `b * q * k` | -400 |
| `a * e * p * j` | 400 |
| `b * q * u * k` | -500 |
| `b * q * v * j` | -100 |
| `a * p * u * k` | 100 |
| `a * p * v * j` | 500 |
| `a * p * u` | -100 |
| `a * f * p * v` | 100 |
| `b * f * q` | 300 |
| `a * f * p` | 200 |
| `b * e * p * v` | 700 |
| `a * q * u` | -600 |
| `a * a * u` | 400 |
| `b * f * v * w` | -400 |
| `a * a * f * u` | 300 |
| `a * u * r` | 300 |
| `a * a * u * r` | -300 |
| `b * p * v * k` | 600 |
| `a * q * u * j` | -600 |
| `a * a * u * j` | 300 |
| `b * c * e * v` | -400 |
| `a * c * e * u` | -200 |
| `b * f * v * v` | -200 |
| `b * u * v` | 200 |
| `b * c * v` | -100 |
| `a * c * h * u` | 400 |
| `b * p * v * v` | 100 |
| `b * q * u * v` | -100 |
| `a * p * u * v` | 100 |
| `a * q * u * u` | -100 |
| `b * v * r * k` | -800 |
| `b * e * v * r` | -200 |
| `b * v * k` | -200 |
| `b * v * w * j` | 400 |
| `b * v * w` | 100 |
| `a * u * r * k` | -300 |
| `a * e * u * r` | -400 |
| `a * u * w * j` | 700 |
| `a * u * w` | 500 |
| `a * e * u * j` | 200 |
| `b * h * u * v` | -100 |
| `b * v * v * r` | 500 |
| `b * u * v * k` | 500 |
| `b * u * v * w` | -500 |
| `b * v * v * j` | -500 |
| `a * u * v * r` | 500 |
| `a * u * u * k` | 500 |
| `a * u * u * w` | -500 |
| `a * u * v * j` | -500 |
| `b * p * v * w` | 100 |
| `b * c * v * w` | 100 |
| `a * q * u * r` | 100 |
| `a * h * u * r` | 100 |
| `a * f * h * r` | 10416200 |
| `b * e * p * k` | 400 |
| `a * q * j` | -400 |
| `a * a * j` | 400 |
| `b * w * k` | -100 |
| `b * c * w * k` | 100 |
| `b * e * r * k` | 200 |
| `b * c * e * k` | -100 |
| `a * e * r * j` | 100 |
| `a * c * e * j` | 100 |
| `b * c * q * k` | -200 |
| `a * c * q * j` | -300 |
| `a * c * h * j` | 300 |
| `a * h * u * j` | 300 |
| `b * r * k * k` | 400 |
| `b * u * k * k` | -400 |
| `b * w * j * k` | -400 |
| `b * u * w * k` | 400 |
| `b * v * j * k` | 400 |
| `a * r * j * k` | 400 |
| `a * v * r * j` | -400 |
| `a * u * j * k` | -400 |
| `a * w * j * j` | -400 |
| `a * v * j * j` | 400 |
| `b * f * v * k` | 200 |
| `c * e * r` | 4982224988229/625000 |
| `a * f * q` | 100 |
| `a * a * f` | -27729300 |
| `a * e * f * p` | -100 |
| `c * p * w` | -100 |
| `b * c * w` | -200 |
| `c * q * r` | 1121318837/9765625 |
| `c * f * k` | -100 |
| `c * f * h` | -263700 |
| `c * j` | 100 |
| `a * c * j` | -100 |
| `c * c * e` | -1365000 |
| `c * f` | -807600 |
| `b * c` | -61400 |
| `a * f * f` | -642100 |
| `c * f * h * v` | 100 |
| `c * h * p * w` | -100 |
| `a * c * c * h` | -2475600 |
| `c * f * v * w` | -100 |
| `a * r * k` | -100 |
| `a * v * r` | -100 |
| `e * f * r * k` | -100 |
| `e * f * v * r` | -100 |
| `e * f * w * j` | 100 |
| `e * f * r` | 107604341330978621/9300000000 |
| `a * f * r` | -124661604124709/10000000 |
| `a * h * u` | -100 |
| `a * q * r` | -100 |
| `a * h` | 25445900 |
| `e * f * h * j` | -100 |
| `a * f * h` | -10547900 |
| `a * f * w` | 5874100 |
| `a * h * r` | -32613800 |
| `e * f * f * w` | -100 |
| `e * f * h * r` | -20984500 |
| `e * f * f * h` | 100 |
| `a * f * f * w` | 100 |
| `a * f * u` | 100 |
| `a * f * f * v` | -100 |
| `a * a` | -11984400 |
| `a * e * f` | -100 |
| `a * e` | 11573800 |
| `e * e * f` | 100 |
| `h * r * k` | 100 |
| `h * w * j` | -100 |
| `a * a * r` | 8998500 |
| `q * v` | -100 |
| `e * q * u` | 100 |
| `a * v` | 100 |
| `a * e * u` | -100 |
| `e * p * v` | 100 |
| `e * e * p * u` | -100 |
| `f * q * v` | -100 |
| `e * f * p * v` | 100 |
| `e * p * u` | -100 |
| `q * u * w` | -200 |
| `q * v * r` | 100 |
| `e * p * u * w` | 100 |
| `e * p * v * r` | -200 |
| `b * q * q` | -100 |
| `b * e * p * q` | 100 |
| `b * e * p * w` | -100 |
| `c * q * w` | -100 |
| `a * c * w` | 780000 |
| `c * e * p * w` | 100 |
| `c * e * h * p` | 100 |
| `c * e * p * v` | -100 |
| `h * q` | 100 |
| `e * h * p * u` | 100 |
| `e * h * p` | -100 |
| `h * q * j` | -100 |
| `a * h * j` | 100 |
| `e * h * p * j` | 100 |
| `e * p * r` | -62040767093/500000000 |
| `q * r * k` | 100 |
| `p * q * k` | -100 |
| `q * w * j` | -100 |
| `q * q * j` | 100 |
| `e * p * r * k` | -100 |
| `e * p * p * k` | 100 |
| `e * p * w * j` | 100 |
| `e * p * q * j` | -100 |
| `q * v * j` | 100 |
| `e * p * u * k` | 100 |
| `c * e * v` | 100 |
| `c * e * q * u` | 100 |
| `c * e * e * u` | -100 |
| `f * v * v` | 100 |
| `c * v * v` | -100 |
| `u * v` | -100 |
| `e * f * u * v` | -100 |
| `c * e * u * v` | 100 |
| `e * u * u` | 100 |
| `c * e * u` | -100 |
| `a * c * u * v` | -100 |
| `f * h * v` | -100 |
| `h * p * v` | -100 |
| `p * v * w` | 100 |
| `b * e * u * w` | 100 |
| `e * q * u * r` | 100 |
| `a * w` | 378500 |
| `a * e * r` | -3767600 |
| `c * e * w * j` | -100 |
| `f * h * k` | 100 |
| `a * a * f * r` | 31772800 |
| `c * f * h * q` | -100 |
| `f * h * p * w` | 100 |
| `f * h * p * k` | -100 |
| `f * h * w` | 3500 |
| `f * h * u` | 100 |
| `f * f * h * v` | -100 |
| `a * a * f * f` | 3034300 |
| `b * f * v` | 100 |
| `b * u` | -100 |
| `f * f * v * v` | 100 |
| `f * u * v` | -200 |
| `u * u` | 100 |
| `f * v * w * j` | -100 |
| `u * r * k` | -100 |
| `f * h * u * v` | 100 |
| `h * u * u` | -100 |
| `h * p * r` | -199922626543/5000000000 |
| `c * e * f * w` | -10488300 |
| `b * e * r` | -1953/50 |
| `a * c * e * r` | -200 |
| `c * h * r` | -697731238229/625000 |
| `f * f * v * w` | 200 |
| `f * u * w` | -200 |
| `f * v * r` | -200 |
| `u * r` | 200 |
| `b * r` | -5166618612761063/5000000000 |
| `f * v * w` | 100 |
| `c * v * r` | 100 |
| `e * u * r` | 100 |
| `f * f * h * w` | -16800 |
| `c * f * w` | 17573831330978621/9300000000 |
| `f * h * r` | 279585618610999/250000000 |
| `c * r` | 2883684/5 |
| `f * f * w * k` | -100 |
| `f * h * w * j` | 100 |
| `f * w * j` | 100 |
| `f * r * k` | 100 |
| `r * j` | -100 |
| `a * h * r * j` | -100 |
| `f * u * w * k` | 100 |
| `v * r * j` | 100 |
| `f * p * v * w` | -200 |
| `q * u * r` | -200 |
| `f * p * w` | 100 |
| `p * r` | -155077373457/5000000000 |
| `f * f * w` | 9200 |
| `e * f * w` | 8357600 |
| `f * r` | -260800 |
| `e * r * j` | -26810978621/9300000000 |
| `h * p * j` | 100 |
| `c * e * h * u` | -100 |
| `h * u * r * k` | -100 |
| `h * u * w` | 100 |
| `f * h * r * k` | -100 |
| `h * v * r * j` | 100 |
| `e * h * r` | 13740800 |
| `c * h * q * j` | 100 |
| `c * e * h * j` | -100 |
| `c * h * w * j` | -100 |
| `c * p * v * w` | 100 |
| `c * q * u * w` | 100 |
| `p * v * k` | -100 |
| `e * q * u * j` | -100 |
| `p * u * w` | 200 |
| `b * p * w` | -100 |
| `f * q * v * r` | 200 |
| `c * u * w * w` | 100 |
| `c * v * r * w` | -100 |
| `a * c * r * w` | 100 |
| `h * v * r` | -100 |
| `u * w * w` | -100 |
| `e * u * r * w` | 100 |
| `v * r * w` | 100 |
| `e * v * r * r` | -100 |
| `a * r * w` | -100 |
| `a * e * r * r` | 100 |
| `p * u * w * k` | -100 |
| `q * u * w * j` | 100 |
| `p * v * r * k` | 100 |
| `q * v * r * j` | -100 |
| `c * e * v * r` | 200 |
| `c * q * v * r` | -200 |
| `c * u * w * k` | -100 |
| `c * v * w * j` | 100 |
| `c * e * v * j` | -100 |
| `c * e * r * k` | 100 |
| `b * e * w * j` | -100 |
| `c * h * r * k` | 100 |
| `c * r * k` | -1808031799/19531250 |
| `c * w * j` | 1122669021379/9300000000 |
| `f * q * r * k` | -100 |
| `p * r * k` | 504131337/9765625 |
| `p * w * j` | -100 |
| `c * e * f * k` | 100 |
| `c * e * j` | -1122669021379/9300000000 |
| `c * e * f` | 49190868669021379/9300000000 |
| `b * f * k` | -100 |
| `b * j` | 100 |
| `c * q * k` | -100 |
| `c * e * q * j` | 200 |
| `c * h * v` | 100 |
| `v * w` | 100 |
| `c * v * w` | -200 |
| `e * v * r` | -100 |
| `e * u * w` | -100 |
| `e * e * u * r` | 100 |
| `c * v * k` | 100 |
| `b * c * v * k` | -100 |
| `f * f * v * k` | -100 |
| `f * v * j` | 100 |
| `f * u * k` | 100 |
| `u * j` | -100 |
| `c * e * h * r` | -14457600 |
| `b * b * w` | -20639700 |
| `p * p * v * w` | -100 |
| `p * q * v * r` | 100 |
| `p * q * u * w` | 100 |
| `q * q * u * r` | -100 |
| `f * p * w * k` | 100 |
| `q * r * j` | 472431163/9765625 |
| `f * q * r` | -344922626543/5000000000 |
| `c * e * p * k` | -100 |
| `c * e * h` | 11883800 |
| `c * p * q * k` | 100 |
| `c * q * q * j` | -100 |
| `c * e * w` | 1109700 |
| `h * w` | -200 |
| `c * h * w` | 100 |
| `r * w` | -10 |
| `c * r * w` | 10 |
| `e * r * r` | 10 |
| `e * f * h` | 17248700 |
| `c * c * h` | 261900 |
| `e * h` | -11294500 |
| `f * f * h` | 8500 |
| `b * f` | 104500 |
| `e * w` | -884200 |
| `f * f` | 29300 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `a * b * q` | 13292397/10000 | 747662749456779/62500000000000000 | 9938230087891040809263/625000000000000000000 |
| `a * b` | 9061831351473/10000000000 | 2071196959/62500000000 | 18768837538141737770607/625000000000000000000 |
| `a * q` | -7442224059/10000000000 | 32131279791/500000000000 | 0 |
| `a` | -29891187228715312919103783501/109875250000000000000000000 | 89011/500000 | 0 |
| `b * q` | -1530393135331/1250000000 | 8399666889/125000000000 | 0 |
| `b` | 124234520073518815921909/1250000000000000000000 | 23269/125000 | 2890813047590709327686900521/156250000000000000000000000 |
| `q` | -317946299398666623759147/2500000000000000000000 | 360981/1000000 | 0 |
| `1` | -110164794431310892859580351698326224301051/34061327500000000000000000000000000 | 1 | -110164794431310892859580351698326224301051/34061327500000000000000000000000000 |
| `a * a * b` | -16599254023/1250 | 184359312517549/31250000000000000 | 0 |
| `a * a` | -5844410700833671/1000000000 | 7922958121/250000000000 | 0 |
| `a * b * e * p` | -1500 | 134570068086369736743/31250000000000000000000 | 0 |
| `a * b * e` | 2220849/10000 | 758470255188841/62500000000000000 | 1684447907765882346009/625000000000000000000 |
| `a * b * p` | 7825531/10000 | 367477978056657/31250000000000000 | 2875710309099689109867/312500000000000000000 |
| `a * e * p` | 487899/5000 | 5783233834129947/250000000000000000 | 2821634004438167011353/1250000000000000000000 |
| `a * e` | 564436645939/10000000000 | 32595739189/500000000000 | 18398229699741580003471/5000000000000000000000 |
| `a * p` | -221438890104765023/250000000000000 | 15792598653/250000000000 | 0 |
| `b * e * p` | 4917619/10000 | 1511836380743613/62500000000000000 | 7434635310836025417447/625000000000000000000 |
| `b * e` | -1218498182157/10000000000 | 8521084531/125000000000 | 0 |
| `b * p` | 3880790251071/10000000000 | 4128455787/62500000000 | 16021670970167252897877/625000000000000000000 |
| `e * p` | -668012416909977/250000000000000 | 64972125177/500000000000 | 0 |
| `e` | -12184813817120892231300195561/851533187500000000000000000 | 366199/1000000 | 0 |
| `p` | -220951945331639890229773/1250000000000000000000 | 177423/500000 | 0 |
| `a * a * b * p` | -4400 | 32709582304801096227/15625000000000000000000 | 0 |
| `a * a * p` | 5698417/10000 | 1405714998702183/125000000000000000 | 8010350245759497544311/1250000000000000000000 |
| `a * a * c` | -135217/2000 | 184359312517549/31250000000000000 | 0 |
| `a * c` | -1919323547/100000000 | 2071196959/62500000000 | 0 |
| `c` | 12035302178345471964176498739/165346250000000000000000000 | 23269/125000 | 280049446387920787134422949157791/20668281250000000000000000000000 |
| `a * c * e * p` | 200 | 134570068086369736743/31250000000000000000000 | 134570068086369736743/156250000000000000000 |
| `a * c * e` | 33241/1000 | 758470255188841/62500000000000000 | 25212309752732263681/62500000000000000000 |
| `a * c * p` | -2447769/5000 | 367477978056657/31250000000000000 | 0 |
| `c * e * p` | 335079/10000 | 1511836380743613/62500000000000000 | 506584622623189100427/625000000000000000000 |
| `c * e` | -37285359154000597186463/681226550000000000000 | 8521084531/125000000000 | 0 |
| `c * p` | -461507271207/5000000000 | 4128455787/62500000000 | 0 |
| `a * a * c * p` | -300 | 32709582304801096227/15625000000000000000000 | 0 |
| `a * b * p * w` | 300 | 45538973474715105411/7812500000000000000000 | 136616920424145316233/78125000000000000000 |
| `a * b * w` | -144184670967/10000 | 256668940750157/15625000000000000 | 0 |
| `a * p * w` | 6854681/10000 | 1957066202875719/62500000000000000 | 13415064516594336390639/625000000000000000000 |
| `a * w` | 2340683076163/10000000000 | 11030510153/125000000000 | 25818928436571243782939/1250000000000000000000 |
| `b * p * w` | 449413/5000 | 511610626492401/15625000000000000 | 229924466483829410613/78125000000000000000 |
| `b * w` | -141631931673/625000000 | 2883564287/31250000000 | 0 |
| `p * w` | 1222975238137/10000000000 | 21986790429/125000000000 | 26889300260774587390773/1250000000000000000000 |
| `w` | -5171237338941316522342140781/681226550000000000000000000 | 123923/250000 | 0 |
| `a * b * q * r` | 500 | 66550208991897355569/31250000000000000000000 | 66550208991897355569/62500000000000000000 |
| `a * b * r` | 333637/5000 | 184359312517549/31250000000000000 | 61509087950417495713/156250000000000000000 |
| `a * q * r` | 2670527/10000 | 2860037345476701/250000000000000000 | 7637806952103857891427/2500000000000000000000 |
| `a * r` | 24064012528295256323591/219750500000000000000 | 7922958121/250000000000 | 190658163484902643374771917332511/54937625000000000000000000000000 |
| `b * q * r` | -204142/625 | 747662749456779/62500000000000000 | 0 |
| `b * r` | 242340321232381281/2500000000000000 | 2071196959/62500000000 | 501934536379591241535724479/156250000000000000000000000 |
| `q * r` | 492444868318132377/5000000000000000 | 32131279791/500000000000 | 15822883845572063003962893207/2500000000000000000000000000 |
| `r` | 105953204853559307605541245791/68122655000000000000000000000 | 89011/500000 | 9431000717220167529276831829102701/34061327500000000000000000000000000 |
| `a * a * b * r` | -92350200 | 16410006766499554039/15625000000000000000000 | 0 |
| `a * a * r` | 455859/2500 | 705230425308331/125000000000000000 | 321485636450630461329/312500000000000000000 |
| `a * c * p * w` | 700 | 45538973474715105411/7812500000000000000000 | 318772814323005737877/78125000000000000000 |
| `a * c * w` | 754793/2000 | 256668940750157/15625000000000000 | 193731919795633252501/31250000000000000000 |
| `c * p * w` | -229233/10000 | 511610626492401/15625000000000000 | 0 |
| `c * w` | 22483366223641792442223/681226550000000000000 | 2883564287/31250000000 | 64832231894035527767060753690001/21288329687500000000000000000000 |
| `a * c * q * r` | 200 | 66550208991897355569/31250000000000000000000 | 66550208991897355569/156250000000000000000 |
| `a * c * q` | 59433/2500 | 747662749456779/62500000000000000 | 44435840188464746307/156250000000000000000 |
| `a * c * r` | 10003/2500 | 184359312517549/31250000000000000 | 1844146203113042647/78125000000000000000 |
| `c * q * r` | 797590799/19531250 | 747662749456779/62500000000000000 | 596328929721769178576421/1220703125000000000000000 |
| `c * q` | -6276370823987687/78125000000000 | 8399666889/125000000000 | 0 |
| `c * r` | -1212914250533379/19531250000000 | 2071196959/62500000000 | 0 |
| `a * a * c * r` | -3457800 | 16410006766499554039/15625000000000000000000 | 0 |
| `a * b * c * e` | 570000 | 17648844367989141229/7812500000000000000000 | 1005984128975381050053/781250000000000000 |
| `a * b * c` | 99452/125 | 48194682038971/7812500000000000 | 1198264379534935973/244140625000000000 |
| `b * c * e` | -473913/5000 | 198277115951839/15625000000000000 | 0 |
| `b * c` | -2708648486143/10000000000 | 541446361/15625000000 | 0 |
| `a * b * b * e` | 21971200 | 17648844367989141229/7812500000000000000000 | 60588482715306721839157/1220703125000000000 |
| `a * b * b` | -28950403/10000 | 48194682038971/7812500000000000 | 0 |
| `b * b * e` | -51887/10000 | 198277115951839/15625000000000000 | 0 |
| `b * b` | -17469927394204607/2500000000 | 541446361/15625000000 | 0 |
| `a * c * c * e` | 12901400 | 17648844367989141229/7812500000000000000000 | 1138474003645875533259103/39062500000000000000 |
| `a * c * c` | -453/1000 | 48194682038971/7812500000000000 | 0 |
| `c * c * e` | -94893/5000 | 198277115951839/15625000000000000 | 0 |
| `c * c` | -13562327853/1000000000 | 541446361/15625000000 | 0 |
| `a * b * h` | -9620057/10000 | 464596403464167/31250000000000000 | 0 |
| `a * h` | 71348604233/2500000000 | 19966324443/250000000000 | 1424569380671281167219/625000000000000000000 |
| `b * h` | 2252534470521271307/2500000000000000 | 5219539197/62500000000 | 11757191961479416609157920479/156250000000000000000000000 |
| `h` | 141033780429108831882121/1250000000000000000000 | 224313/500000 | 31635710389394689405974207873/625000000000000000000000000 |
| `a * b * b * h` | 500 | 10810693712207701923/3906250000000000000000 | 10810693712207701923/7812500000000000000 |
| `b * b * h` | 505801/2000 | 121453457574993/7812500000000000 | 61431280294889034393/15625000000000000000 |
| `a * c * h` | 561713/5000 | 464596403464167/31250000000000000 | 260969839579067638071/156250000000000000000 |
| `c * h` | 3470155706451/1250000000000 | 5219539197/62500000000 | 18112613729514220259847/78125000000000000000000 |
| `a * b * c * h` | -600 | 10810693712207701923/3906250000000000000000 | 0 |
| `b * c * h` | -173117/500 | 121453457574993/7812500000000000 | 0 |
| `a * b * b * w` | -46175100 | 5972429582315403233/1953125000000000000000 | 0 |
| `b * b * w` | -204200415/8 | 67097657394203/3906250000000000 | 0 |
| `a * b * h * r` | -300 | 41354190468748968837/15625000000000000000000 | 0 |
| `a * h * r` | -7239525498/625 | 1777222504995873/125000000000000000 | 0 |
| `b * h * r` | -4116322738937/5000000000 | 464596403464167/31250000000000000 | 0 |
| `h * r` | -172830500172298011/2500000000000000 | 19966324443/250000000000 | 0 |
| `a * b * c * w` | 100 | 5972429582315403233/1953125000000000000000 | 5972429582315403233/19531250000000000000 |
| `b * c * w` | -2442663/5000 | 67097657394203/3906250000000000 | 0 |
| `a * c * h * r` | 25009000 | 41354190468748968837/15625000000000000000000 | 1034226949432942961644533/15625000000000000000 |
| `c * h * r` | 1901362/78125 | 464596403464167/31250000000000000 | 441682973441717747727/1220703125000000000000 |
| `a * b * p * v` | 3200 | 158481125162560294419/31250000000000000000000 | 158481125162560294419/9765625000000000000 |
| `a * b * v` | 8802487/10000 | 893238898917053/62500000000000000 | 7862723795611673110811/625000000000000000000 |
| `a * p * v` | 321203/1000 | 6810826643283351/250000000000000000 | 2187657950302542191253/250000000000000000000 |
| `a * v` | 157470275171/2500000000 | 38387506937/500000000000 | 6044891280498061361227/1250000000000000000000 |
| `b * p * v` | 4106051/5000 | 1780466741892129/62500000000000000 | 7310687246012918172579/312500000000000000000 |
| `b * v` | -2152828363411/10000000000 | 10035151823/125000000000 | 0 |
| `p * v` | -754174037103/10000000000 | 76516684941/500000000000 | 0 |
| `v` | -439370861367808013/10000000000000000 | 431267/1000000 | 0 |
| `a * b * b * v` | -4900 | 20784775938900906257/7812500000000000000000 | 0 |
| `b * b * v` | 4557/10 | 233507947769387/15625000000000000 | 1064095717985096559/156250000000000000 |
| `a * b * q * u` | 5800 | 332456465836200806919/62500000000000000000000 | 9641237509249823400651/312500000000000000000 |
| `a * b * u` | 38381/500 | 920980510985899/62500000000000000 | 35348152992149789519/31250000000000000000 |
| `a * q * u` | -970731/2500 | 14287527003145851/500000000000000000 | 0 |
| `a * u` | -1918049258921/10000000000 | 39579720271/500000000000 | 0 |
| `b * q * u` | 1405253/5000 | 3735004278529629/125000000000000000 | 5248625967416596741137/625000000000000000000 |
| `b * u` | 6915586901/2000000000 | 10346816809/125000000000 | 71554310791367018909/250000000000000000000 |
| `q * u` | -290599025679/10000000000 | 160514172441/1000000000000 | 0 |
| `u` | 31978699067599807/2500000000000000 | 444661/1000000 | 14219680306097997780427/2500000000000000000000 |
| `a * b * b * q` | -6000 | 17397364517109790551/7812500000000000000000 | 0 |
| `b * b * q` | 5793841/2500 | 195451848840141/15625000000000000 | 1132416935335811371581/39062500000000000000 |
| `a * c * p * v` | -200 | 158481125162560294419/31250000000000000000000 | 0 |
| `a * c * v` | -334663/5000 | 893238898917053/62500000000000000 | 0 |
| `c * p * v` | 37381/2000 | 1780466741892129/62500000000000000 | 66555627278669674149/125000000000000000000 |
| `c * v` | 142479207989/2500000000 | 10035151823/125000000000 | 1429800483790409513947/312500000000000000000 |
| `a * b * c * v` | 200 | 20784775938900906257/7812500000000000000000 | 20784775938900906257/39062500000000000000 |
| `b * c * v` | 122589/2500 | 233507947769387/15625000000000000 | 28625505809101382943/39062500000000000000 |
| `a * b * c * q` | -1000 | 17397364517109790551/7812500000000000000000 | 0 |
| `b * c * q` | -30443/125 | 195451848840141/15625000000000000 | 0 |
| `a * b * f * w` | 300 | 51264230867088107453/7812500000000000000000 | 153792692601264322359/78125000000000000000 |
| `a * b * f` | -103663/10000 | 413678097424111/31250000000000000 | 0 |
| `a * f * w` | -1042799/5000 | 2203112762348537/62500000000000000 | 0 |
| `a * f` | 523612259637799/5000000000000 | 17778078019/250000000000 | 9308819603545675303440181/1250000000000000000000000 |
| `b * f * w` | -880383/10000 | 575931411478223/15625000000000000 | 0 |
| `b * f` | 12145988291/2500000000 | 4647494101/62500000000 | 56448408933237571391/156250000000000000000 |
| `f * w` | 623894589179169713/9300000000000000 | 24751016867/125000000000 | 15442025500003665251518549171/1162500000000000000000000000 |
| `f` | -5029240921209809573678023/116250000000000000000000 | 199729/500000 | 0 |
| `a * b * f * q` | 300 | 149329933286253012891/31250000000000000000000 | 447989799858759038673/312500000000000000000 |
| `a * f * q` | 1054431/5000 | 6417548381376639/250000000000000000 | 6766861957323350837409/1250000000000000000000 |
| `b * f * q` | 3031927/10000 | 1677657068073081/62500000000000000 | 5086533761431612257087/625000000000000000000 |
| `f * q` | -108994217052781027/2500000000000000 | 72098374149/500000000000 | 0 |
| `a * c * f * w` | -7371700 | 51264230867088107453/7812500000000000000000 | 0 |
| `a * c * f` | -212703/5000 | 413678097424111/31250000000000000 | 0 |
| `c * f * w` | 54401288621/9300000000 | 575931411478223/15625000000000000 | 31331410941726721679200483/145312500000000000000000000 |
| `c * f` | -746953546542101153/9300000000000000 | 4647494101/62500000000 | 0 |
| `a * c * f * q` | 100 | 149329933286253012891/31250000000000000000000 | 149329933286253012891/312500000000000000000 |
| `c * f * q` | -445573/10000 | 1677657068073081/62500000000000000 | 0 |
| `a * b * u * w` | -300 | 114130667862905561777/15625000000000000000000 | 0 |
| `a * u * w` | 1070479/2500 | 4904837675143133/125000000000000000 | 5250525729649545870707/312500000000000000000 |
| `b * u * w` | 1338369/10000 | 1282208579421707/31250000000000000 | 1716068214232050575883/312500000000000000000 |
| `u * w` | 5257289197/500000000 | 55103725103/250000000000 | 289696218698459612291/125000000000000000000 |
| `a * b * v * r` | 100 | 79508087631505804583/31250000000000000000000 | 79508087631505804583/312500000000000000000 |
| `a * v * r` | -222717/1250 | 3416910379969307/250000000000000000 | 0 |
| `b * v * r` | 674551/2500 | 893238898917053/62500000000000000 | 602535192503397018203/156250000000000000000 |
| `v * r` | 5934000457/125000000 | 38387506937/500000000000 | 227791483707248670209/62500000000000000000 |
| `a * c * u * w` | -100 | 114130667862905561777/15625000000000000000000 | 0 |
| `a * c * u` | 1013853/10000 | 920980510985899/62500000000000000 | 933738854004586658847/625000000000000000000 |
| `c * u * w` | 80643/1250 | 1282208579421707/31250000000000000 | 103401146470304717601/39062500000000000000 |
| `c * u` | 7980204563/625000000 | 10346816809/125000000000 | 82569714711706899467/78125000000000000000 |
| `b * e * h * p` | 300 | 339124554073742062869/31250000000000000000000 | 1017373662221226188607/312500000000000000000 |
| `b * e * h` | -20669/1250 | 1911390034402203/62500000000000000 | 0 |
| `b * h * p` | 788013/5000 | 926066302949331/31250000000000000 | 729752285586011169303/156250000000000000000 |
| `e * h * p` | 690543/10000 | 14574092314828401/250000000000000000 | 10064037429358548511743/2500000000000000000000 |
| `e * h` | 636366303793/10000000000 | 82143196287/500000000000 | 52273162202901071616591/5000000000000000000000 |
| `h * p` | -41888548845281027/2500000000000000 | 39798285399/250000000000 | 0 |
| `b * c * e * h` | -300 | 44476134710504861607/7812500000000000000000 | 0 |
| `c * e * h` | -845281/10000 | 1911390034402203/62500000000000000 | 0 |
| `a * b * h * p` | 100 | 82430087691822901641/15625000000000000000000 | 82430087691822901641/156250000000000000000 |
| `a * h * p` | 191548/625 | 3542485181650389/125000000000000000 | 169638987893692178043/19531250000000000000 |
| `u * k` | -247889660933/10000000000 | 23252657673/125000000000 | 0 |
| `k` | -477730413480519655777127029/17168007812500000000000000 | 52293/125000 | 0 |
| `f * k` | -72726687059/1000000000 | 10444428597/62500000000 | 0 |
| `v * j` | -185106490103/10000000000 | 53451663247/250000000000 | 0 |
| `j` | 54421137842801258202273138329/992077500000000000000000000 | 123941/250000 | 6745010245374630742847935037634589/248019375000000000000000000000000 |
| `f * v` | -298628092523/10000000000 | 86136526643/500000000000 | 0 |
| `b * e * u * k` | -100 | 198137861602038756363/15625000000000000000000 | 0 |
| `b * e * u` | -1458509/10000 | 3788993968638991/125000000000000000 | 0 |
| `b * e * k` | 2008193/10000 | 445593073379583/15625000000000000 | 894836890809364923519/156250000000000000000 |
| `b * u * k` | 568741/2000 | 541066091393037/15625000000000000 | 307726469884967256417/31250000000000000000 |
| `b * k` | 34904669980911/625000000000 | 1216805817/15625000000 | 42472205473237783759287/9765625000000000000000 |
| `e * u * k` | 117867/5000 | 8515099987194927/125000000000000000 | 1003649290190704460709/625000000000000000000 |
| `e * u` | 98803079819/5000000000 | 162834413539/1000000000000 | 16088541558173871269441/5000000000000000000000 |
| `e * k` | 123464901689/2500000000 | 19149644307/125000000000 | 2364308951743073534523/312500000000000000000 |
| `b * e * v * j` | 300 | 455466140850232932157/31250000000000000000000 | 1366398422550698796471/312500000000000000000 |
| `b * e * v` | -1195939/10000 | 3674862562430777/125000000000000000 | 0 |
| `b * e * j` | 408991/2000 | 1056111737856671/31250000000000000 | 431940195777737728961/62500000000000000000 |
| `b * v * j` | -4023473/10000 | 1243766752094443/31250000000000000 | 0 |
| `b * j` | -457932141449/2500000000 | 2883983129/31250000000 | 0 |
| `e * v * j` | -121211/2500 | 19573945629388153/250000000000000000 | 0 |
| `e * v` | -22480085551/1000000000 | 157929544133/1000000000000 | 0 |
| `e * j` | -972400721360967/24800000000000 | 45387070259/250000000000 | 0 |
| `b * e * f * v` | 100 | 733976624731736659433/62500000000000000000000 | 733976624731736659433/625000000000000000000 |
| `b * e * f` | -966787/10000 | 1701907692292099/62500000000000000 | 0 |
| `b * f * v` | 643849/10000 | 2004310838455967/62500000000000000 | 1290473529029035896983/625000000000000000000 |
| `e * f * v` | -36006/625 | 31543109920139957/500000000000000000 | 0 |
| `e * f` | -2566308199907513/24800000000000 | 73140560071/500000000000 | 0 |
| `a * b * u * k` | -200 | 48160833860985616407/7812500000000000000000 | 0 |
| `a * b * k` | 2069877/5000 | 108309102576987/7812500000000000 | 224186520314746120599/39062500000000000000 |
| `a * u * k` | -999179/2500 | 2069742312131403/62500000000000000 | 0 |
| `a * k` | 65431177641/2500000000 | 4654652223/62500000000 | 304559376460188545943/156250000000000000000 |
| `a * b * f * k` | -400 | 21632468748599036523/3906250000000000000000 | 0 |
| `a * f * k` | 160441/625 | 929669033847567/31250000000000000 | 149157029459537497047/19531250000000000000 |
| `b * f * k` | 161733/5000 | 243031409023593/7812500000000000 | 39306198875612766669/39062500000000000000 |
| `a * b * v * j` | 500 | 110708922370678465873/15625000000000000000000 | 110708922370678465873/31250000000000000000 |
| `a * b * j` | 2876267/2000 | 256706222295419/15625000000000000 | 738355635882977920873/31250000000000000000 |
| `a * v * j` | 1117883/10000 | 4757785997278717/125000000000000000 | 5318648083995923996111/1250000000000000000000 |
| `a * j` | -88408103230692401/439501000000000 | 11032112351/125000000000 | 0 |
| `a * b * f * v` | -200 | 178405712041804078637/31250000000000000000000 | 0 |
| `a * f * v` | 81497/625 | 7667098373020073/250000000000000000 | 624845516106016889281/156250000000000000000 |
| `a * b * e * f` | 200 | 151488505598612024089/31250000000000000000000 | 151488505598612024089/156250000000000000000 |
| `a * e * f` | -718701/10000 | 6510314392479781/250000000000000000 | 0 |
| `b * r * k` | 151514/78125 | 108309102576987/7812500000000000 | 8205172683924804159/305175781250000000000 |
| `r * k` | 1361321840961035128389/34336015625000000000 | 4654652223/62500000000 | 6336479733247734616736949258747/2146000976562500000000000000000 |
| `b * w * j` | -163431/2000 | 357391841295067/7812500000000000 | 0 |
| `w * j` | -66155867867768808353213/4087359300000000000000 | 15359140543/62500000000 | 0 |
| `a * b * r * k` | -200 | 9640701529480189857/3906250000000000000000 | 0 |
| `a * r * k` | -160487/10000 | 414315249021453/31250000000000000 | 0 |
| `a * b * w * j` | 200 | 31811805185515208737/3906250000000000000000 | 31811805185515208737/19531250000000000000 |
| `a * w * j` | -1583373/10000 | 1367132458872973/31250000000000000 | 0 |
| `a * f * r * k` | 100 | 82750770371805786237/15625000000000000000000 | 82750770371805786237/156250000000000000000 |
| `a * f * r` | 2951191291/10000000 | 1582444502549209/125000000000000000 | 4670096434414052899738819/1250000000000000000000000 |
| `f * r * k` | 9993/400 | 929669033847567/31250000000000000 | 9290182655238737031/12500000000000000000 |
| `f * r` | 17550943901259955737/155000000000000000 | 17778078019/250000000000 | 312022049983691725492872645003/38750000000000000000000000000 |
| `a * f * u * k` | -100 | 413387562259692989787/31250000000000000000000 | 0 |
| `a * f * u` | -33459/1000 | 7905217950006559/250000000000000000 | 0 |
| `f * u * k` | 1398507/10000 | 4644230064370617/62500000000000000 | 6494988254632758468819/625000000000000000000 |
| `f * u` | -72380156251/1250000000 | 88811696869/500000000000 | 0 |
| `a * f * w * j` | -100 | 273055998878240024317/15625000000000000000000 | 0 |
| `a * f * j` | -16797/1250 | 2203432767752879/62500000000000000 | 0 |
| `f * w * j` | 1075641/10000 | 3067665781512847/31250000000000000 | 3299707088892260259927/312500000000000000000 |
| `f * j` | 499495308193/5000000000 | 24754611989/125000000000 | 12364812544643687725877/625000000000000000000 |
| `a * f * u * w` | -300 | 979638324018662810957/62500000000000000000000 | 0 |
| `f * u * w` | -1860931/10000 | 11005811911097087/125000000000000000 | 0 |
| `a * f * v * j` | 100 | 950267839450480867693/62500000000000000000000 | 950267839450480867693/625000000000000000000 |
| `f * v * j` | 601493/10000 | 10675847248660063/125000000000000000 | 6421447389138287274059/1250000000000000000000 |
| `c * k` | 3452167255013249/156250000000000 | 1216805817/15625000000 | 4200617197157043795269433/2441406250000000000000000 |
| `b * c * k` | 20349/125 | 28313854555773/1953125000000000 | 576158626355424777/244140625000000000 |
| `a * b * e * j` | -600 | 94005561898360142381/15625000000000000000000 | 0 |
| `a * e * j` | 660919/2500 | 4039948510823849/125000000000000000 | 2670078729825187457231/312500000000000000000 |
| `a * e * f * j` | -100 | 806894876118336536921/62500000000000000000000 | 0 |
| `e * f * j` | -152867/10000 | 9065114155759811/125000000000000000 | 0 |
| `a * c * e * f` | 100 | 151488505598612024089/31250000000000000000000 | 151488505598612024089/312500000000000000000 |
| `c * e * f` | 589136391379/9300000000 | 1701907692292099/62500000000000000 | 1002655756297128738053414521/581250000000000000000000000 |
| `a * f * h * p` | -200 | 707537022845850544581/62500000000000000000000 | 0 |
| `a * f * h` | -1324563/10000 | 3987854014675947/125000000000000000 | 0 |
| `a * f * p` | 606639/2500 | 3154239936365037/125000000000000000 | 1913484960756549680643/312500000000000000000 |
| `f * h * p` | -81883/5000 | 7948871744456871/125000000000000000 | 0 |
| `f * h` | -6901849449444489/125000000000000 | 44801811177/250000000000 | 0 |
| `f * p` | 543343764597/10000000000 | 35436518367/250000000000 | 19254211293736514853099/2500000000000000000000 |
| `a * c * f * h` | 2492200 | 92793375067494610743/15625000000000000000000 | 1156298246716050344468523/78125000000000000000 |
| `c * f * h` | 24727/5000 | 1042493344277613/31250000000000000 | 25777732923952536651/156250000000000000000 |
| `a * a * b * b` | 22285000 | 4289856842970847681/3906250000000000000000 | 19119891949121068114217/781250000000000000 |
| `b * h * q` | -597839/10000 | 1884154478872257/62500000000000000 | 0 |
| `h * q` | 775542615249/10000000000 | 80972731053/500000000000 | 62797803604697533627197/5000000000000000000000 |
| `b * h * v` | 1479161/10000 | 2251015010872599/62500000000000000 | 3329613614497324409439/625000000000000000000 |
| `h * v` | 92715810287/10000000000 | 96738794571/500000000000 | 8969215724837901551877/5000000000000000000000 |
| `b * e * h * u` | -200 | 849920604087317988183/62500000000000000000000 | 0 |
| `b * h * u` | -79173/5000 | 2320925518877217/62500000000000000 | 0 |
| `e * h * u` | -332561/5000 | 36525875804173707/500000000000000000 | 0 |
| `h * u` | -12803734909/1250000000 | 99743242893/500000000000 | 0 |
| `a * b * h * u` | -500 | 206587901360779962387/31250000000000000000000 | 0 |
| `a * h * u` | 3301107/10000 | 8878245793148823/250000000000000000 | 29308039335484131647061/2500000000000000000000 |
| `a * a * b * u` | -5000 | 81977396263365855889/31250000000000000000000 | 0 |
| `a * a * u` | 6035871/5000 | 3523030481041981/250000000000000000 | 21264557512637342900451/1250000000000000000000 |
| `b * f * h * v` | 500 | 449592977106573325671/31250000000000000000000 | 449592977106573325671/62500000000000000000 |
| `b * f * h` | -10321/10000 | 1042493344277613/31250000000000000 | 0 |
| `f * h * v` | 75781/2500 | 19321542700871259/250000000000000000 | 1464205827414724878279/625000000000000000000 |
| `a * b * f * h` | 300 | 92793375067494610743/15625000000000000000000 | 278380125202483832229/156250000000000000000 |
| `a * a * b * f` | 9332000 | 36821901129817544221/15625000000000000000000 | 85905495335864330667593/3906250000000000000 |
| `a * a * f` | 36122/625 | 1582444502549209/125000000000000000 | 28580530160541263749/39062500000000000000 |
| `b * f * h * w` | 200 | 129188902702914635799/7812500000000000000000 | 129188902702914635799/39062500000000000000 |
| `b * h * w` | -750283/1250 | 646820955909831/15625000000000000 | 0 |
| `f * h * w` | 38243/1000 | 5551974846487371/62500000000000000 | 212324174054216529153/62500000000000000000 |
| `h * w` | -8636438961/125000000 | 27797539899/125000000000 | 0 |
| `b * h * p * k` | -200 | 48426785180129365983/3906250000000000000000 | 0 |
| `b * h * k` | -312863/1250 | 272945363228721/7812500000000000 | 0 |
| `b * p * k` | 279211/2500 | 215889338469591/7812500000000000 | 60278678083432972701/19531250000000000000 |
| `h * p * k` | -313807/10000 | 2081171738369907/31250000000000000 | 0 |
| `h * k` | 1036919578683/10000000000 | 11729999709/62500000000 | 12163066356207992603247/625000000000000000000 |
| `p * k` | -1785801686925187/78125000000000 | 9277980939/62500000000 | 0 |
| `b * h * q * j` | -500 | 233523990265906404837/15625000000000000000000 | 0 |
| `b * h * j` | -115733/500 | 646914907615377/15625000000000000 | 0 |
| `b * q * j` | -10174593/10000 | 1041063113889549/31250000000000000 | 0 |
| `h * q * j` | -361581/5000 | 10035841259439873/125000000000000000 | 0 |
| `h * j` | -633350537927/10000000000 | 27801577533/125000000000 | 0 |
| `q * j` | -18361218185165251/156250000000000 | 44740346121/250000000000 | 0 |
| `a * b * h * j` | 500 | 57582542841752322147/7812500000000000000000 | 57582542841752322147/15625000000000000000 |
| `a * h * j` | 482137/5000 | 2474646217789863/62500000000000000 | 1193118503506551177231/312500000000000000000 |
| `a * b * p * k` | -1000 | 19216525906516764501/3906250000000000000000 | 0 |
| `a * p * k` | -52371/1250 | 825842361361329/31250000000000000 | 0 |
| `a * b * q * j` | 1000 | 92666068830422646039/15625000000000000000000 | 92666068830422646039/15625000000000000000 |
| `a * q * j` | -6537677/10000 | 3982382948576331/125000000000000000 | 0 |
| `a * a * b * j` | -1000 | 22849677552737540609/7812500000000000000000 | 0 |
| `a * a * j` | 444193/1250 | 981979352474861/62500000000000000 | 436188354513865932173/78125000000000000000 |
| `b * h * u * w` | 200 | 287616053075821362291/15625000000000000000000 | 287616053075821362291/78125000000000000000 |
| `h * u * w` | 604003/5000 | 12360481889029239/125000000000000000 | 7465768142419327443717/625000000000000000000 |
| `b * h * v * r` | -200 | 200365097132780909589/31250000000000000000000 | 0 |
| `h * v * r` | -824183/10000 | 8610816843559281/250000000000000000 | 0 |
| `b * h * u * k` | 800 | 121368158158646308581/7812500000000000000000 | 121368158158646308581/9765625000000000000 |
| `h * u * k` | 5023/5000 | 5215873400603649/62500000000000000 | 26199332091232128927/312500000000000000000 |
| `b * h * v * j` | -500 | 278993051462560792659/15625000000000000000000 | 0 |
| `h * v * j` | 301963/10000 | 11989902937924311/125000000000000000 | 3620507060844438722493/1250000000000000000000 |
| `b * c * h * w` | -1000 | 15050876823065857539/1953125000000000000000 | 0 |
| `c * h * w` | -76359/1000 | 646820955909831/15625000000000000 | 0 |
| `b * c * h * k` | 200 | 6351165656969108949/976562500000000000000 | 6351165656969108949/4882812500000000000 |
| `c * h * k` | 64374/625 | 272945363228721/7812500000000000 | 8785292406242842827/2441406250000000000 |
| `b * h * p * v` | -200 | 399381836274049132377/31250000000000000000000 | 0 |
| `h * p * v` | -604003/5000 | 17163687149170533/250000000000000000 | 0 |
| `b * h * q * u` | 200 | 837810014729816669877/62500000000000000000000 | 837810014729816669877/312500000000000000000 |
| `h * q * u` | 104003/5000 | 36005415562758033/500000000000000000 | 3744671234773523706099/2500000000000000000000 |
| `b * h * p * w` | 400 | 114760914460389945513/7812500000000000000000 | 114760914460389945513/19531250000000000000 |
| `h * p * w` | -3438/125 | 4931922921500277/62500000000000000 | 0 |
| `b * h * q * r` | -200 | 167710474318898467827/31250000000000000000000 | 0 |
| `h * q * r` | -104003/5000 | 7207463763758583/250000000000000000 | 0 |
| `b * e * h * j` | 500 | 236899592253843442023/15625000000000000000000 | 236899592253843442023/31250000000000000000 |
| `e * h * j` | -21451/5000 | 10180909891007067/125000000000000000 | 0 |
| `b * f * h * q` | -200 | 376320289910677018353/31250000000000000000000 | 0 |
| `f * h * q` | -1004859/10000 | 16172602600484637/250000000000000000 | 0 |
| `b * c * h * q` | 600 | 43842390568878548133/7812500000000000000000 | 131527171706635644399/39062500000000000000 |
| `c * h * q` | 22551/250 | 1884154478872257/62500000000000000 | 42489567653048267607/15625000000000000000 |
| `b * c * h * v` | 300 | 52378868287994506131/7812500000000000000000 | 157136604863983518393/78125000000000000000 |
| `c * h * v` | 141781/1000 | 2251015010872599/62500000000000000 | 319151159256527958819/62500000000000000000 |
| `b * e * f * h` | -300 | 381760020181117602987/31250000000000000000000 | 0 |
| `e * f * h` | -36441/250 | 16406378451206223/250000000000000000 | 0 |
| `b * b * q * v` | 4900 | 84291932493741088647/15625000000000000000000 | 4130304692193313343703/156250000000000000000 |
| `b * q * v` | 12183/250 | 3622499140218363/125000000000000000 | 44132907025280316429/31250000000000000000 |
| `q * v` | -1551628638301/10000000000 | 155679192927/1000000000000 | 0 |
| `a * a * p * u` | 4200 | 625066637037911394963/125000000000000000000000 | 13126399377796139294223/625000000000000000000 |
| `a * p * u` | 8133319/10000 | 7022352709641633/250000000000000000 | 57115034718029776869927/2500000000000000000000 |
| `p * u` | 656017261681/5000000000 | 78893088603/500000000000 | 51755227950896569721643/2500000000000000000000 |
| `b * b * q * w` | 100 | 24220979463816793143/3906250000000000000000 | 24220979463816793143/39062500000000000000 |
| `b * q * w` | 11672543/10000 | 1040911919885547/31250000000000000 | 12150089144076602436021/312500000000000000000 |
| `q * w` | -36201629513/5000000000 | 44733848463/250000000000 | 0 |
| `a * a * p * r` | 600 | 125124097749480011013/62500000000000000000000 | 375372293248440033039/312500000000000000000 |
| `a * p * r` | -30637832907/500000000 | 1405714998702183/125000000000000000 | 0 |
| `p * r` | -98868349670265657/2500000000000000 | 15792598653/250000000000 | 0 |
| `b * c * q * q` | 300 | 70554403846162938321/15625000000000000000000 | 211663211538488814963/156250000000000000000 |
| `b * q * q` | 4303153/10000 | 3032120153258109/125000000000000000 | 13047676933853091517677/1250000000000000000000 |
| `c * q * q` | -35907/5000 | 3032120153258109/125000000000000000 | 0 |
| `q * q` | 14947800533/400000000 | 130307282361/1000000000000 | 1947807264729537298413/400000000000000000000 |
| `a * a * b * c` | -6053000 | 4289856842970847681/3906250000000000000000 | 0 |
| `a * c * p * q` | 200 | 132652567996870100517/31250000000000000000000 | 132652567996870100517/156250000000000000000 |
| `a * p * q` | 369447/1000 | 5700828054358593/250000000000000000 | 2106153822198619108071/250000000000000000000 |
| `c * p * q` | 334037/5000 | 1490294098447047/62500000000000000 | 497813369762956238739/312500000000000000000 |
| `p * q` | 744506470779/10000000000 | 64046331963/500000000000 | 47682908576113393209177/5000000000000000000000 |
| `b * e * q * u` | 300 | 1367754831793271610171/125000000000000000000000 | 4103264495379814830513/1250000000000000000000 |
| `b * e * q` | -3790551/10000 | 3075949615084911/125000000000000000 | 0 |
| `e * q * u` | 2547017/10000 | 58780129433721759/1000000000000000000 | 149713988929889693442903/10000000000000000000000 |
| `e * q` | 518471056689/10000000000 | 132190881219/1000000000000 | 68537145870265014423891/10000000000000000000000 |
| `a * e * p * u` | 1000 | 2571578539918056362967/250000000000000000000000 | 2571578539918056362967/250000000000000000000 |
| `a * e * u` | -858301/5000 | 14494053983519929/500000000000000000 | 0 |
| `e * p * u` | 679281/5000 | 28890570153329997/500000000000000000 | 19624815384324153692157/2500000000000000000000 |
| `b * e * q * r` | -600 | 273793351188323013021/62500000000000000000000 | 0 |
| `b * e * r` | -493561/5000 | 758470255188841/62500000000000000 | 0 |
| `e * q * r` | -5327/125 | 11766442528184409/500000000000000000 | 0 |
| `e * r` | -44832630981418055235441/6812265500000000000000 | 32595739189/500000000000 | 0 |
| `a * b * e * r` | 600 | 67512195884613926251/31250000000000000000000 | 202536587653841778753/156250000000000000000 |
| `a * e * r` | -4709594069/1250 | 2901379340952079/250000000000000000 | 0 |
| `a * e * p * r` | -300 | 514771426809740712417/125000000000000000000000 | 0 |
| `e * p * r` | -148307817093/500000000 | 5783233834129947/250000000000000000 | 0 |
| `a * a * f * p` | 400 | 280762050975788308407/62500000000000000000000 | 280762050975788308407/156250000000000000000 |
| `a * h * p * u` | -100 | 1575205003357843623129/125000000000000000000000 | 0 |
| `b * p * q * w` | -500 | 184681715561853405381/15625000000000000000000 | 0 |
| `b * p * q` | -18537/5000 | 1490294098447047/62500000000000000 | 0 |
| `p * q * w` | -322157/10000 | 7936813595850849/125000000000000000 | 0 |
| `b * q * q * r` | 500 | 269892046961657540199/62500000000000000000000 | 269892046961657540199/125000000000000000000 |
| `q * q * r` | 322157/10000 | 11598781510234971/500000000000000000 | 3736628654992767552447/5000000000000000000000 |
| `a * p * p * w` | -400 | 347228556912818692137/31250000000000000000000 | 0 |
| `a * p * p` | 418583/5000 | 2801970230811219/125000000000000000 | 1172857105123652482677/625000000000000000000 |
| `p * p * w` | -898937/10000 | 3900962318284467/62500000000000000 | 0 |
| `p * p` | -51523881863/5000000000 | 31478920929/250000000000 | 0 |
| `a * p * q * r` | 400 | 507436405946512721523/125000000000000000000000 | 507436405946512721523/312500000000000000000 |
| `p * q * r` | 898937/10000 | 5700828054358593/250000000000000000 | 5124685268700950515641/2500000000000000000000 |
| `b * q * v * r` | -100 | 322442270969976708993/62500000000000000000000 | 0 |
| `q * v * r` | -530193/10000 | 13857160641625197/500000000000000000 | 0 |
| `a * p * v * r` | -100 | 606238490345294355861/125000000000000000000000 | 0 |
| `p * v * r` | 33787/1000 | 6810826643283351/250000000000000000 | 230117399796614580237/250000000000000000000 |
| `a * c * h * p` | 100 | 82430087691822901641/15625000000000000000000 | 82430087691822901641/156250000000000000000 |
| `c * h * p` | -146353/5000 | 926066302949331/31250000000000000 | 0 |
| `b * b * e * q` | 100 | 71574271593410794059/15625000000000000000000 | 71574271593410794059/156250000000000000000 |
| `b * f * q * k` | 400 | 87729721060745624733/7812500000000000000000 | 87729721060745624733/19531250000000000000 |
| `b * q * k` | -384987/625 | 439243780626477/15625000000000000 | 0 |
| `f * q * k` | -202983/5000 | 3770240279373657/62500000000000000 | 0 |
| `q * k` | -771494494093/10000000000 | 18876779433/125000000000 | 0 |
| `a * f * p * k` | 400 | 164944668992336879841/15625000000000000000000 | 164944668992336879841/39062500000000000000 |
| `f * p * k` | 188069/5000 | 1853081854965531/31250000000000000 | 348507251381512449639/156250000000000000000 |
| `a * p * j` | -9609123/10000 | 1957350469651473/62500000000000000 | 0 |
| `p * j` | -439464977921/5000000000 | 21989984043/125000000000 | 0 |
| `a * h * p * r` | 200 | 315320148503882775279/62500000000000000000000 | 315320148503882775279/312500000000000000000 |
| `h * p * r` | -94121626543/5000000000 | 3542485181650389/125000000000000000 | 0 |
| `a * h * p * j` | -800 | 439059155898930863049/31250000000000000000000 | 0 |
| `h * p * j` | 259393/10000 | 4932639290637459/62500000000000000 | 1279492103516322402387/625000000000000000000 |
| `b * p * q * v` | 500 | 642714664954962618549/62500000000000000000000 | 642714664954962618549/125000000000000000000 |
| `p * q * v` | 1341993/10000 | 27621069446687121/500000000000000000 | 37067281849967989572153/5000000000000000000000 |
| `b * q * q * u` | -500 | 1348265579467904006049/125000000000000000000000 | 0 |
| `q * q * u` | -1341993/10000 | 57942566481924621/1000000000000000000 | 0 |
| `b * b * q * q` | -100 | 70554403846162938321/15625000000000000000000 | 0 |
| `a * p * p * v` | 600 | 1208397295531261984473/125000000000000000000000 | 3625191886593785953419/625000000000000000000 |
| `p * p * v` | 65249/5000 | 13575819792287043/250000000000000000 | 885808665626937268707/1250000000000000000000 |
| `a * p * q * u` | -600 | 2534935903479146321973/250000000000000000000000 | 0 |
| `p * q * u` | -65249/5000 | 28478906016999543/500000000000000000 | 0 |
| `b * f * q * w` | -200 | 207900296846820416763/15625000000000000000000 | 0 |
| `f * q * w` | -104003/5000 | 8934646819666527/125000000000000000 | 0 |
| `b * c * q * w` | 800 | 24220979463816793143/3906250000000000000000 | 24220979463816793143/4882812500000000000 |
| `c * q * w` | 14941/5000 | 1040911919885547/31250000000000000 | 15552264995009957727/156250000000000000000 |
| `a * f * p * w` | -300 | 390882875634164480151/31250000000000000000000 | 0 |
| `f * p * w` | 738977/10000 | 4391399665593741/62500000000000000 | 3245143350681465942957/625000000000000000000 |
| `a * e * p * j` | 400 | 716779784635899761127/62500000000000000000000 | 716779784635899761127/156250000000000000000 |
| `e * p * j` | 256017/2000 | 8052710166562557/125000000000000000 | 2061630698712846155469/250000000000000000000 |
| `b * q * u * k` | -500 | 195314578737149889297/15625000000000000000000 | 0 |
| `q * u * k` | -104003/2000 | 8393767619457213/125000000000000000 | 0 |
| `b * q * v * j` | -100 | 448976165937804128583/31250000000000000000000 | 0 |
| `q * v * j` | 74019/10000 | 19295034850565307/250000000000000000 | 1428199184603993458833/2500000000000000000000 |
| `a * p * u * k` | 100 | 367219890245289914469/31250000000000000000000 | 367219890245289914469/312500000000000000000 |
| `p * u * k` | -146353/5000 | 4125556282316679/62500000000000000 | 0 |
| `a * p * v * j` | 500 | 844140664995181806291/62500000000000000000000 | 844140664995181806291/125000000000000000000 |
| `p * v * j` | 105801/2000 | 9483554448272481/125000000000000000 | 1003369544181676762281/250000000000000000000 |
| `a * f * p * v` | 100 | 1360319594636340411879/125000000000000000000000 | 1360319594636340411879/1250000000000000000000 |
| `f * p * v` | -398507/5000 | 15282600966580989/250000000000000000 | 0 |
| `b * e * p * v` | 700 | 652005140414155747671/62500000000000000000000 | 4564035982899090233697/625000000000000000000 |
| `e * p * v` | -606987/10000 | 28020333508709259/500000000000000000 | 0 |
| `b * f * v * w` | -400 | 248380212033978798541/15625000000000000000000 | 0 |
| `b * v * w` | 564847/2500 | 1243586119361629/31250000000000000 | 702435888763058055763/78125000000000000000 |
| `f * v * w` | -426479/5000 | 10674296791180489/125000000000000000 | 0 |
| `v * w` | 540529195493/10000000000 | 53443900441/250000000000 | 28887988509381717912413/2500000000000000000000 |
| `a * a * f * u` | 300 | 703651354948033823149/125000000000000000000000 | 2110954064844101469447/1250000000000000000000 |
| `a * u * r` | 1850707/5000 | 3523030481041981/250000000000000000 | 6520097172477761530567/1250000000000000000000 |
| `u * r` | 735648357099/5000000000 | 39579720271/500000000000 | 29116756191799137053829/2500000000000000000000 |
| `a * a * u * r` | -300 | 313588466148027770791/125000000000000000000000 | 0 |
| `b * p * v * k` | 600 | 93105947333765101797/7812500000000000000000 | 279317842001295305391/39062500000000000000 |
| `b * v * k` | -4598071/10000 | 524768194280139/15625000000000000 | 0 |
| `p * v * k` | 111499/2500 | 4001287005619713/62500000000000000 | 446139499839592379787/156250000000000000000 |
| `v * k` | 61741327493/2500000000 | 22552245231/125000000000 | 1392405558509618435883/312500000000000000000 |
| `a * q * u * j` | -600 | 1770810384296899918791/125000000000000000000000 | 0 |
| `a * u * j` | 633327/10000 | 4905550110108011/125000000000000000 | 3106817334584376282597/1250000000000000000000 |
| `q * u * j` | -236299/10000 | 19894287046509981/250000000000000000 | 0 |
| `u * j` | -887351334769/10000000000 | 55111729001/250000000000 | 0 |
| `a * a * u * j` | 300 | 436647920850824167121/62500000000000000000000 | 1309943762552472501363/625000000000000000000 |
| `b * c * e * v` | -400 | 85510376965201750013/15625000000000000000000 | 0 |
| `c * e * v` | 851121/5000 | 3674862562430777/125000000000000000 | 3127752698998645351017/625000000000000000000 |
| `a * c * e * u` | -200 | 337262142142525227901/62500000000000000000000 | 0 |
| `c * e * u` | -325011/2500 | 3788993968638991/125000000000000000 | 0 |
| `b * f * v * v` | -200 | 864393122368389520189/62500000000000000000000 | 0 |
| `b * v * v` | 231891/1000 | 4327829821249741/125000000000000000 | 1003584785079423690231/125000000000000000000 |
| `f * v * v` | 250899/2500 | 37147841435746681/500000000000000000 | 9320356268387406516219/1250000000000000000000 |
| `v * v` | -438684551669/10000000000 | 185991225289/1000000000000 | 0 |
| `b * u * v` | 202129/2000 | 4462240644767003/125000000000000000 | 901948239286109549387/250000000000000000000 |
| `u * v` | -39580955949/500000000 | 191767615487/1000000000000 | 0 |
| `a * c * h * u` | 400 | 206587901360779962387/31250000000000000000000 | 206587901360779962387/78125000000000000000 |
| `c * h * u` | 317403/10000 | 2320925518877217/62500000000000000 | 736668722468185307451/625000000000000000000 |
| `b * p * v * v` | 100 | 767856550375592797443/62500000000000000000000 | 767856550375592797443/625000000000000000000 |
| `p * v * v` | 104003/10000 | 32999121164450247/500000000000000000 | 3432007598466319038741/5000000000000000000000 |
| `b * q * u * v` | -100 | 1610784090188637509943/125000000000000000000000 | 0 |
| `q * u * v` | -104003/10000 | 69224465606112747/1000000000000000000 | 0 |
| `a * p * u * v` | 100 | 3028508986029018139011/250000000000000000000000 | 3028508986029018139011/2500000000000000000000 |
| `a * u * v` | 1733659/10000 | 17069427222113357/500000000000000000 | 29592566128461820383263/5000000000000000000000 |
| `p * u * v` | 105801/10000 | 34023985642550001/500000000000000000 | 3599771704967432655801/5000000000000000000000 |
| `a * q * u * u` | -100 | 6353106044745837251511/500000000000000000000000 | 0 |
| `a * u * u` | -437981/10000 | 17599557995423131/500000000000000000 | 0 |
| `q * u * u` | -105801/10000 | 71374392431787501/1000000000000000000 | 0 |
| `u * u` | 508088172219/10000000000 | 197723404921/1000000000000 | 100460923411228120089699/10000000000000000000000 |
| `b * v * r * k` | -800 | 46710141741069452529/7812500000000000000000 | 0 |
| `v * r * k` | -492287/10000 | 2007397900256541/62500000000000000 | 0 |
| `b * e * v * r` | -200 | 327103191544525891547/62500000000000000000000 | 0 |
| `e * v * r` | -2043531/10000 | 14057466652822463/500000000000000000 | 0 |
| `b * v * w * j` | 400 | 154131307219799659889/7812500000000000000000 | 154131307219799659889/19531250000000000000 |
| `v * w * j` | 138383/1250 | 6623890464557981/62500000000000000 | 916633834156927084723/78125000000000000000 |
| `a * u * r * k` | -300 | 184229832945128312433/31250000000000000000000 | 0 |
| `u * r * k` | -1868777/10000 | 2069742312131403/62500000000000000 | 0 |
| `a * e * u * r` | -400 | 1290130239127092400219/250000000000000000000000 | 0 |
| `e * u * r` | 1491507/10000 | 14494053983519929/500000000000000000 | 21617982974797858743003/5000000000000000000000 |
| `a * u * w * j` | 700 | 607910486294915047153/31250000000000000000000 | 4255373404064405330071/312500000000000000000 |
| `u * w * j` | 58713/625 | 6829610792990923/62500000000000000 | 400986938488876062099/39062500000000000000 |
| `a * e * u * j` | 200 | 1796407544771443520189/125000000000000000000000 | 1796407544771443520189/625000000000000000000 |
| `e * u * j` | 12801/10000 | 20181860048437199/250000000000000000 | 258347990480044584399/2500000000000000000000 |
| `b * h * u * v` | -100 | 1000938585749620743939/62500000000000000000000 | 0 |
| `h * u * v` | 899/5000 | 43015969132735431/500000000000000000 | 38671356250329152469/2500000000000000000000 |
| `b * v * v * r` | 500 | 385224460219260696151/62500000000000000000000 | 385224460219260696151/125000000000000000000 |
| `v * v * r` | 104003/2000 | 16555264954199179/500000000000000000 | 1721797221031577213537/1000000000000000000000 |
| `b * u * v * k` | 500 | 233343950036800887879/15625000000000000000000 | 233343950036800887879/31250000000000000000 |
| `u * v * k` | 104003/2000 | 10028103916661691/125000000000000000 | 1042952891644565849073/250000000000000000000 |
| `b * u * v * w` | -500 | 552974247421461312769/31250000000000000000000 | 0 |
| `u * v * w` | -104003/2000 | 23764418213995501/250000000000000000 | 0 |
| `b * v * v * j` | -500 | 536395555875514149281/31250000000000000000000 | 0 |
| `v * v * j` | -104003/2000 | 23051938453543949/250000000000000000 | 0 |
| `a * u * v * r` | 500 | 1519366786467532019927/250000000000000000000000 | 1519366786467532019927/500000000000000000000 |
| `u * v * r` | 105801/2000 | 17069427222113357/500000000000000000 | 1805962469526815283957/1000000000000000000000 |
| `a * u * u * k` | 500 | 920333686254661789383/62500000000000000000000 | 920333686254661789383/125000000000000000000 |
| `u * u * k` | 105801/2000 | 10339550013533853/125000000000000000 | 1093934730981895181253/250000000000000000000 |
| `a * u * u * w` | -500 | 2180990025466820662913/125000000000000000000000 | 0 |
| `u * u * w` | -105801/2000 | 24502477508025083/250000000000000000 | 0 |
| `a * u * v * j` | -500 | 2115601879335951579937/125000000000000000000000 | 0 |
| `u * v * j` | -105801/2000 | 23767870031074267/250000000000000000 | 0 |
| `b * p * v * w` | 100 | 220640780055498302067/15625000000000000000000 | 220640780055498302067/156250000000000000000 |
| `p * v * w` | 50489/500 | 9482177147943543/125000000000000000 | 478745642022521542527/62500000000000000000 |
| `b * c * v * w` | 100 | 28937005411425745201/3906250000000000000000 | 28937005411425745201/39062500000000000000 |
| `c * v * w` | -262527/1250 | 1243586119361629/31250000000000000 | 0 |
| `a * q * u * r` | 100 | 1271747066077015343361/250000000000000000000000 | 1271747066077015343361/2500000000000000000000 |
| `q * u * r` | -1093/5 | 14287527003145851/500000000000000000 | 0 |
| `a * h * u * r` | 100 | 790261536293969884053/125000000000000000000000 | 790261536293969884053/1250000000000000000000 |
| `h * u * r` | -350671/10000 | 8878245793148823/250000000000000000 | 0 |
| `a * f * h * r` | 10416200 | 354962873700320718417/62500000000000000000000 | 18486821425186403335875777/312500000000000000000 |
| `f * h * r` | 40029735999/250000000 | 3987854014675947/125000000000000000 | 159632743410030429945316053/31250000000000000000000000 |
| `b * e * p * k` | 400 | 79058459858225754609/7812500000000000000000 | 79058459858225754609/19531250000000000000 |
| `e * p * k` | -325487/10000 | 3397587341880861/62500000000000000 | 0 |
| `b * w * k` | -947007/10000 | 150790227260091/3906250000000000 | 0 |
| `w * k` | -277690756247/10000000000 | 6480305439/31250000000 | 0 |
| `b * c * w * k` | 100 | 3508737798115057479/488281250000000000000 | 3508737798115057479/4882812500000000000 |
| `c * w * k` | -18771/2000 | 150790227260091/3906250000000000 | 0 |
| `b * e * r * k` | 200 | 39662685054590062413/7812500000000000000000 | 39662685054590062413/39062500000000000000 |
| `e * r * k` | 559321/10000 | 1704528989410377/62500000000000000 | 953378858886001474017/625000000000000000000 |
| `b * c * e * k` | -100 | 10368505224469516827/1953125000000000000000 | 0 |
| `c * e * k` | 484039/10000 | 445593073379583/15625000000000000 | 215684425645579975737/156250000000000000000 |
| `a * e * r * j` | 100 | 359599856896941623339/62500000000000000000000 | 359599856896941623339/625000000000000000000 |
| `a * r * j` | -522617/10000 | 981979352474861/62500000000000000 | 0 |
| `e * r * j` | 71583951379/9300000000 | 4039948510823849/125000000000000000 | 289195477772477862049637771/1162500000000000000000000000 |
| `r * j` | -2469972009011842207/77500000000000000 | 11032112351/125000000000 | 0 |
| `a * c * e * j` | 100 | 94005561898360142381/15625000000000000000000 | 94005561898360142381/156250000000000000000 |
| `a * c * j` | 2044/125 | 256706222295419/15625000000000000 | 131176879592959109/488281250000000000 |
| `c * e * j` | -2078720181379/9300000000 | 1056111737856671/31250000000000000 | 0 |
| `c * j` | 1311628870185041153/9300000000000000 | 2883983129/31250000000 | 3782715533122989793422707737/290625000000000000000000000 |
| `b * c * q * k` | -200 | 10220763531397493313/1953125000000000000000 | 0 |
| `c * q * k` | -868269/10000 | 439243780626477/15625000000000000 | 0 |
| `a * c * q * j` | -300 | 92666068830422646039/15625000000000000000000 | 0 |
| `c * q * j` | 47971/10000 | 1041063113889549/31250000000000000 | 49940838636395555079/312500000000000000000 |
| `a * c * h * j` | 300 | 57582542841752322147/7812500000000000000000 | 172747628525256966441/78125000000000000000 |
| `c * h * j` | -18781/2000 | 646914907615377/15625000000000000 | 0 |
| `a * h * u * j` | 300 | 1100378661848658271443/62500000000000000000000 | 3301135985545974814329/625000000000000000000 |
| `h * u * j` | 317403/10000 | 12362277267401313/125000000000000000 | 3923823891504978950139/1250000000000000000000 |
| `b * r * k * k` | 400 | 5663807901058381191/976562500000000000000 | 5663807901058381191/2441406250000000000 |
| `b * k * k` | 31206/125 | 63630426588381/1953125000000000 | 992825546058508743/122070312500000000 |
| `r * k * k` | 104003/2500 | 243405728697339/7812500000000000 | 25314926001709348017/19531250000000000000 |
| `k * k` | 1622758809/62500000 | 2734557849/15625000000 | 4437527838184841841/976562500000000000 |
| `b * u * k * k` | -400 | 28293969117216083841/1953125000000000000000 | 0 |
| `u * k * k` | -104003/2500 | 1215951227694189/15625000000000000 | 0 |
| `b * w * j * k` | -400 | 18689091556842938631/976562500000000000000 | 0 |
| `b * j * k` | -1143/100 | 150812129764797/3906250000000000 | 0 |
| `w * j * k` | -104003/2500 | 803175536415099/7812500000000000 | 0 |
| `j * k` | 12612126879/500000000 | 6481246713/31250000000 | 81742305878457698727/15625000000000000000 |
| `b * u * w * k` | 400 | 67050533243699324151/3906250000000000000000 | 67050533243699324151/9765625000000000000 |
| `u * w * k` | -614777/10000 | 2881539096811179/31250000000000000 | 0 |
| `b * v * j * k` | 400 | 65040294767274707799/3906250000000000000000 | 65040294767274707799/9765625000000000000 |
| `v * j * k` | 104003/2500 | 2795147826175371/31250000000000000 | 290703759365717110113/78125000000000000000 |
| `a * r * j * k` | 400 | 51350646278967906273/7812500000000000000000 | 51350646278967906273/19531250000000000000 |
| `a * j * k` | 31206/125 | 576902251170843/15625000000000000 | 9001405825018663329/976562500000000000 |
| `r * j * k` | 105801/2500 | 576902251170843/15625000000000000 | 61036835076126360243/39062500000000000000 |
| `a * v * r * j` | -400 | 423495289403775878887/62500000000000000000000 | 0 |
| `v * r * j` | 929369/10000 | 4757785997278717/125000000000000000 | 4421738814504923939573/1250000000000000000000 |
| `a * u * j * k` | -400 | 256525931907878219223/15625000000000000000000 | 0 |
| `u * j * k` | -105801/2500 | 2881957644649293/31250000000000000 | 0 |
| `a * w * j * j` | -400 | 169443764085175146593/7812500000000000000000 | 0 |
| `a * j * j` | -1143/100 | 1367331036895291/31250000000000000 | 0 |
| `w * j * j` | -105801/2500 | 1903627238039963/15625000000000000 | 0 |
| `j * j` | -120930543/100000000 | 15361371481/62500000000 | 0 |
| `a * v * j * j` | 400 | 589684754288721463697/31250000000000000000000 | 589684754288721463697/78125000000000000000 |
| `v * j * j` | 105801/2500 | 6624852594496427/62500000000000000 | 700916029350316473027/156250000000000000000 |
| `b * f * v * k` | 200 | 104811426675377882331/7812500000000000000000 | 104811426675377882331/39062500000000000000 |
| `f * v * k` | -899/2500 | 4504337387742399/62500000000000000 | 0 |
| `c * e * r` | 84295229/625000 | 758470255188841/62500000000000000 | 63935423850831790339589/39062500000000000000000 |
| `a * e * f * p` | -100 | 1155079510456940184363/125000000000000000000000 | 0 |
| `e * f * p` | 92483/2500 | 12976817589477033/250000000000000000 | 1200135021127604442939/625000000000000000000 |
| `c * f * k` | -894199/10000 | 243031409023593/7812500000000000 | 0 |
| `a * f * f` | -331939/10000 | 3550797744656851/125000000000000000 | 0 |
| `f * f` | -140036881349/10000000000 | 39891673441/250000000000 | 0 |
| `c * f * h * v` | 100 | 449592977106573325671/31250000000000000000000 | 449592977106573325671/312500000000000000000 |
| `c * f * v` | 23533/5000 | 2004310838455967/62500000000000000 | 47167446961384271411/312500000000000000000 |
| `c * h * p * w` | -100 | 114760914460389945513/7812500000000000000000 | 0 |
| `a * c * c * h` | -2475600 | 10810693712207701923/3906250000000000000000 | 0 |
| `c * c * h` | -52389/2500 | 121453457574993/7812500000000000 | 0 |
| `c * f * v * w` | -100 | 248380212033978798541/15625000000000000000000 | 0 |
| `e * f * r * k` | -100 | 340443870525945187833/31250000000000000000000 | 0 |
| `e * f * r` | -387257571379/9300000000 | 6510314392479781/250000000000000000 | 0 |
| `e * f * k` | -201/80 | 3824739307792803/62500000000000000 | 0 |
| `e * f * v * r` | -100 | 2807683757101577712527/250000000000000000000000 | 0 |
| `f * v * r` | -1708199/10000 | 7667098373020073/250000000000000000 | 0 |
| `e * f * w * j` | 100 | 1123376141524223058553/31250000000000000000000 | 1123376141524223058553/312500000000000000000 |
| `e * f * w` | -80489/5000 | 9063797625678533/125000000000000000 | 0 |
| `e * w * j` | -227659/5000 | 5624501907706057/62500000000000000 | 0 |
| `e * w` | 37224702639/500000000 | 45380478677/250000000000 | 1689274824366805128603/125000000000000000000 |
| `e * f * h * j` | -100 | 2033422951620950484843/62500000000000000000000 | 0 |
| `f * h * j` | 398507/10000 | 5552781279088557/62500000000000000 | 2212822209185743584399/625000000000000000000 |
| `e * f * f * w` | -100 | 1810303235979147717557/62500000000000000000000 | 0 |
| `e * f * f` | 23533/5000 | 14608290922420759/250000000000000000 | 343776910277327721547/1250000000000000000000 |
| `f * f * w` | -67919/5000 | 4943495847829043/62500000000000000 | 0 |
| `e * f * h * r` | -20984500 | 1460348152320317115453/125000000000000000000000 | 0 |
| `e * h * r` | 369827/10000 | 7311648044702157/250000000000000000 | 2704044861428064616839/2500000000000000000000 |
| `e * f * f * h` | 100 | 3276829561680967713567/125000000000000000000000 | 3276829561680967713567/1250000000000000000000 |
| `f * f * h` | -23419/2500 | 8948220944571033/125000000000000000 | 0 |
| `a * f * f * w` | 100 | 440025508911110946473/31250000000000000000000 | 440025508911110946473/312500000000000000000 |
| `a * f * f * v` | -100 | 1531341890944926160217/125000000000000000000000 | 0 |
| `f * f * v` | 169287/2000 | 17203962329879747/250000000000000000 | 2912407170938352730389/500000000000000000000 |
| `e * e * f` | 100 | 26783999957440129/500000000000000000 | 26783999957440129/5000000000000000 |
| `e * e` | 5444062363/1250000000 | 134101707601/1000000000000 | 730058059164635121163/1250000000000000000000 |
| `h * r * k` | 746597/5000 | 1044099004097799/31250000000000000 | 779521184162404440003/156250000000000000000 |
| `h * w * j` | -422763/2500 | 3445254892621959/31250000000000000 | 0 |
| `e * e * p * u` | -100 | 10579697899579291571403/500000000000000000000000 | 0 |
| `e * e * p` | -98929/5000 | 23792727267692223/500000000000000000 | 0 |
| `e * e * u` | -78653/2500 | 59629799403568261/1000000000000000000 | 0 |
| `f * q * v` | 160989/2500 | 31093649524116783/500000000000000000 | 5005735543238036778387/1250000000000000000000 |
| `e * f * p * v` | 100 | 5596473191360991590811/250000000000000000000000 | 5596473191360991590811/2500000000000000000000 |
| `q * u * w` | -479587/10000 | 19891397791406043/250000000000000000 | 0 |
| `e * p * u * w` | 100 | 3580206125111113218231/125000000000000000000000 | 3580206125111113218231/1250000000000000000000 |
| `e * p * w` | 1274531/10000 | 8051540668309371/125000000000000000 | 10261938179521010930001/1250000000000000000000 |
| `e * u * w` | 132859/5000 | 20178929028993497/250000000000000000 | 2680952331863047017923/1250000000000000000000 |
| `p * u * w` | 184813/1000 | 9776668218949569/125000000000000000 | 1806855383548726695597/125000000000000000000 |
| `e * p * v * r` | -200 | 2494117905943719852849/250000000000000000000000 | 0 |
| `b * e * p * q` | 100 | 545744208557210164353/62500000000000000000000 | 545744208557210164353/625000000000000000000 |
| `e * p * q` | -13991/500 | 23453702718518637/500000000000000000 | 0 |
| `b * e * p * w` | -100 | 187351299810890753799/15625000000000000000000 | 0 |
| `b * e * w` | -262851/5000 | 1055958358335113/31250000000000000 | 0 |
| `c * e * p * w` | 100 | 187351299810890753799/15625000000000000000000 | 187351299810890753799/156250000000000000000 |
| `c * e * w` | 229631/10000 | 1055958358335113/31250000000000000 | 242480773782850333303/312500000000000000000 |
| `c * e * h * p` | 100 | 339124554073742062869/31250000000000000000000 | 339124554073742062869/312500000000000000000 |
| `c * e * p * v` | -100 | 652005140414155747671/62500000000000000000000 | 0 |
| `e * h * p * u` | 100 | 6480530462803911617061/250000000000000000000000 | 6480530462803911617061/2500000000000000000000 |
| `e * h * p * j` | 100 | 1806327575592146848341/62500000000000000000000 | 1806327575592146848341/625000000000000000000 |
| `q * r * k` | 894199/10000 | 1680241014110763/62500000000000000 | 1502469834576830163837/625000000000000000000 |
| `p * q * k` | -203147/10000 | 3349174837341159/62500000000000000 | 0 |
| `q * w * j` | -401071/5000 | 5544357912352683/62500000000000000 | 0 |
| `q * q * j` | 203147/10000 | 16150414883104701/250000000000000000 | 3280908332258070694047/2500000000000000000000 |
| `e * p * r * k` | -100 | 302422646888157318471/31250000000000000000000 | 0 |
| `p * r * k` | 3461572223/39062500 | 825842361361329/31250000000000000 | 2858712978665104932764367/1220703125000000000000000 |
| `e * p * p * k` | 100 | 602810138958528001203/31250000000000000000000 | 602810138958528001203/312500000000000000000 |
| `e * p * p` | 57059/1250 | 11527549365278871/250000000000000000 | 657750439233447100389/312500000000000000000 |
| `p * p * k` | 105801/10000 | 1646127212140197/31250000000000000 | 174161905171644982797/312500000000000000000 |
| `e * p * w * j` | 100 | 997916001970931751111/31250000000000000000000 | 997916001970931751111/312500000000000000000 |
| `p * w * j` | -894199/10000 | 2725064792560689/31250000000000000 | 0 |
| `e * p * q * j` | -100 | 2906875368635918388417/125000000000000000000000 | 0 |
| `e * q * j` | 1056111/10000 | 16383870009164079/250000000000000000 | 17303185339248284636769/2500000000000000000000 |
| `p * q * j` | -105801/10000 | 7937966429826183/125000000000000000 | 0 |
| `e * p * u * k` | 100 | 1510774585028085533121/62500000000000000000000 | 1510774585028085533121/625000000000000000000 |
| `c * e * q * u` | 100 | 1367754831793271610171/125000000000000000000000 | 1367754831793271610171/1250000000000000000000 |
| `c * e * q` | 60344/625 | 3075949615084911/125000000000000000 | 23201887946585483673/9765625000000000000 |
| `c * q * u` | 610109/10000 | 3735004278529629/125000000000000000 | 2278759725369433419561/1250000000000000000000 |
| `c * e * e * u` | -100 | 1387525802321629865209/125000000000000000000000 | 0 |
| `c * e * e` | -98929/5000 | 3120412634167669/125000000000000000 | 0 |
| `c * v * v` | -100 | 4327829821249741/125000000000000000 | 0 |
| `e * f * u * v` | -100 | 14025990800199353419577/500000000000000000000000 | 0 |
| `e * f * u` | -475733/10000 | 32522754581730931/500000000000000000 | 0 |
| `e * u * v` | 172763/2500 | 70225109023723913/1000000000000000000 | 12132300510265614381619/2500000000000000000000 |
| `f * u * v` | -1554427/10000 | 38301554073603023/500000000000000000 | 0 |
| `c * e * u * v` | 100 | 1634068061873031731597/125000000000000000000000 | 1634068061873031731597/1250000000000000000000 |
| `e * u * u` | 100 | 72406113158665279/1000000000000000000 | 72406113158665279/10000000000000000 |
| `a * c * u * v` | -100 | 397188502031355704033/62500000000000000000000 | 0 |
| `b * e * u * w` | 100 | 469543499575649681693/31250000000000000000000 | 469543499575649681693/312500000000000000000 |
| `e * q * u * r` | 100 | 5232078101025007490349/500000000000000000000000 | 5232078101025007490349/5000000000000000000000 |
| `c * e * w * j` | -100 | 130876534890412240333/7812500000000000000000 | 0 |
| `c * w * j` | 953927961379/9300000000 | 357391841295067/7812500000000000 | 340926070580090370519217393/72656250000000000000000000 |
| `f * h * k` | -32343/2000 | 2342821111878861/31250000000000000 | 0 |
| `a * a * f * r` | 31772800 | 140854967616407642299/62500000000000000000000 | 1398548973463311480386771/19531250000000000000 |
| `c * f * h * q` | -100 | 376320289910677018353/31250000000000000000000 | 0 |
| `f * h * p * w` | 100 | 985048033188328824933/31250000000000000000000 | 985048033188328824933/312500000000000000000 |
| `f * h * p * k` | -100 | 415670350132883155203/15625000000000000000000 | 0 |
| `f * h * u` | 1475733/10000 | 19921618159775997/250000000000000000 | 29398989331780711380801/2500000000000000000000 |
| `f * f * h * v` | -100 | 3859072402102315688811/125000000000000000000000 | 0 |
| `a * a * f * f` | 3034300 | 316060058049650964361/62500000000000000000000 | 9590210341400559211605823/625000000000000000000 |
| `f * f * v * v` | 100 | 7419501222120248849449/250000000000000000000000 | 7419501222120248849449/2500000000000000000000 |
| `f * v * w * j` | -100 | 1322983018595700987149/31250000000000000000000 | 0 |
| `f * h * u * v` | 100 | 8591536498912114898199/250000000000000000000000 | 8591536498912114898199/2500000000000000000000 |
| `h * u * u` | -100 | 44351930128044273/500000000000000000 | 0 |
| `c * e * f * w` | -10488300 | 210905506951913784377/15625000000000000000000 | 0 |
| `a * c * e * r` | -200 | 67512195884613926251/31250000000000000000000 | 0 |
| `f * f * v * w` | 200 | 2131966623805687887481/62500000000000000000000 | 2131966623805687887481/312500000000000000000 |
| `c * v * r` | 77423/2500 | 893238898917053/62500000000000000 | 69157235270854994419/156250000000000000000 |
| `f * f * h * w` | -16800 | 1108890384114076122459/31250000000000000000000 | 0 |
| `f * f * w * k` | -100 | 258510228370524145599/7812500000000000000000 | 0 |
| `f * f * k` | -980041/10000 | 2086055279250213/31250000000000000 | 0 |
| `f * w * k` | 325993/10000 | 1294304925026031/15625000000000000 | 421934345424010923783/156250000000000000000 |
| `f * h * w * j` | 100 | 688117314448491249111/15625000000000000000000 | 688117314448491249111/156250000000000000000 |
| `a * h * r * j` | -100 | 220270734491693495493/31250000000000000000000 | 0 |
| `h * r * j` | 92483/2500 | 2474646217789863/62500000000000000 | 228862706159859899829/156250000000000000000 |
| `f * u * w * k` | 100 | 575526922266999970491/15625000000000000000000 | 575526922266999970491/156250000000000000000 |
| `f * p * v * w` | -200 | 1893865759581615899847/62500000000000000000000 | 0 |
| `c * e * h * u` | -100 | 849920604087317988183/62500000000000000000000 | 0 |
| `h * u * r * k` | -100 | 464270107261131401139/31250000000000000000000 | 0 |
| `f * h * r * k` | -100 | 208536849989449296471/15625000000000000000000 | 0 |
| `h * v * r * j` | 100 | 1067233250407580846421/62500000000000000000000 | 1067233250407580846421/625000000000000000000 |
| `c * h * q * j` | 100 | 233523990265906404837/15625000000000000000000 | 233523990265906404837/156250000000000000000 |
| `c * e * h * j` | -100 | 236899592253843442023/15625000000000000000000 | 0 |
| `c * h * w * j` | -100 | 80167636096420363971/3906250000000000000000 | 0 |
| `c * p * v * w` | 100 | 220640780055498302067/15625000000000000000000 | 220640780055498302067/156250000000000000000 |
| `c * q * u * w` | 100 | 462852935208227214567/31250000000000000000000 | 462852935208227214567/312500000000000000000 |
| `e * q * u * j` | -100 | 7285268022144908532219/250000000000000000000000 | 0 |
| `f * q * v * r` | 200 | 2767676837791158971613/250000000000000000000000 | 2767676837791158971613/1250000000000000000000 |
| `f * q * r` | -97425626543/5000000000 | 6417548381376639/250000000000000000 | 0 |
| `c * u * w * w` | 100 | 158895133787676196561/7812500000000000000000 | 158895133787676196561/78125000000000000000 |
| `c * w * w` | 98929/5000 | 357339937137901/7812500000000000 | 35351282641115408029/39062500000000000000 |
| `u * w * w` | -203147/10000 | 6828618925939069/62500000000000000 | 0 |
| `w * w` | -20097129563/5000000000 | 15356909929/62500000000 | 0 |
| `c * v * r * w` | -100 | 110692844070497958919/15625000000000000000000 | 0 |
| `c * r * w` | -67483/2500 | 256668940750157/15625000000000000 | 0 |
| `v * r * w` | 203147/10000 | 4757095022153851/125000000000000000 | 966389582465488369097/1250000000000000000000 |
| `r * w` | 37884725131/5000000000 | 11030510153/125000000000 | 417887845201109755043/625000000000000000000 |
| `a * c * r * w` | 100 | 22846359085112224727/7812500000000000000000 | 22846359085112224727/78125000000000000000 |
| `a * r * w` | -203147/10000 | 981836739228683/62500000000000000 | 0 |
| `e * u * r * w` | 100 | 1796146651799740161467/125000000000000000000000 | 1796146651799740161467/1250000000000000000000 |
| `e * r * w` | 98929/5000 | 4039361787518447/125000000000000000 | 399610022277412443263/625000000000000000000 |
| `u * r * w` | 105801/10000 | 4904837675143133/125000000000000000 | 518936730867818614533/1250000000000000000000 |
| `e * v * r * r` | -100 | 1251269164234380254093/250000000000000000000000 | 0 |
| `e * r * r` | -67483/2500 | 2901379340952079/250000000000000000 | 0 |
| `v * r * r` | -105801/10000 | 3416910379969307/250000000000000000 | 0 |
| `r * r` | -7139768883/2500000000 | 7922958121/250000000000 | 0 |
| `a * e * r * r` | 100 | 258254676517485503869/125000000000000000000000 | 258254676517485503869/1250000000000000000000 |
| `a * r * r` | 105801/10000 | 705230425308331/125000000000000000 | 74614084228046728131/1250000000000000000000 |
| `p * u * w * k` | -100 | 511251311173529811717/15625000000000000000000 | 0 |
| `p * w * k` | -92057/10000 | 1149755231903697/15625000000000000 | 0 |
| `q * u * w * j` | 100 | 2465359733664656375463/62500000000000000000000 | 2465359733664656375463/625000000000000000000 |
| `p * v * r * k` | 100 | 356158557657216273843/31250000000000000000000 | 356158557657216273843/312500000000000000000 |
| `q * v * r * j` | -100 | 1717470347083668541377/125000000000000000000000 | 0 |
| `q * r * j` | 125570483/156250000 | 3982382948576331/125000000000000000 | 500069750343694046037873/19531250000000000000000000 |
| `c * e * v * r` | 200 | 327103191544525891547/62500000000000000000000 | 327103191544525891547/312500000000000000000 |
| `c * q * v * r` | -200 | 322442270969976708993/62500000000000000000000 | 0 |
| `c * q * v` | -410989/2500 | 3622499140218363/125000000000000000 | 0 |
| `c * u * w * k` | -100 | 67050533243699324151/3906250000000000000000 | 0 |
| `c * u * k` | -126077/2500 | 541066091393037/15625000000000000 | 0 |
| `c * v * w * j` | 100 | 154131307219799659889/7812500000000000000000 | 154131307219799659889/78125000000000000000 |
| `c * v * j` | 398507/10000 | 1243766752094443/31250000000000000 | 495649757076900196601/312500000000000000000 |
| `c * e * v * j` | -100 | 455466140850232932157/31250000000000000000000 | 0 |
| `c * e * r * k` | 100 | 39662685054590062413/7812500000000000000000 | 39662685054590062413/78125000000000000000 |
| `c * r * k` | -4195895017/156250000 | 108309102576987/7812500000000000 | 0 |
| `b * e * w * j` | -100 | 130876534890412240333/7812500000000000000000 | 0 |
| `c * h * r * k` | 100 | 24295139726351684931/3906250000000000000000 | 24295139726351684931/39062500000000000000 |
| `f * q * r * k` | -100 | 335592857507328583227/31250000000000000000000 | 0 |
| `c * e * f * k` | 100 | 88997858953030733007/7812500000000000000000 | 88997858953030733007/78125000000000000000 |
| `c * e * q * j` | 200 | 381236271243238954251/31250000000000000000000 | 381236271243238954251/156250000000000000000 |
| `e * e * u * r` | 100 | 5307708074711014479871/500000000000000000000000 | 5307708074711014479871/5000000000000000000000 |
| `e * e * r` | 98929/5000 | 11936527095272611/500000000000000000 | 1180868689008224133619/2500000000000000000000 |
| `c * v * k` | 895997/10000 | 524768194280139/15625000000000000 | 470190727770421703583/156250000000000000000 |
| `b * c * v * k` | -100 | 12210831112704554391/1953125000000000000000 | 0 |
| `f * f * v * k` | -100 | 899646802116401609871/31250000000000000000000 | 0 |
| `c * e * h * r` | -14457600 | 170134738352174491233/31250000000000000000000 | 0 |
| `p * p * v * w` | -100 | 1682356316119587229689/62500000000000000000000 | 0 |
| `p * q * v * r` | 100 | 2458579012519067327331/250000000000000000000000 | 2458579012519067327331/2500000000000000000000 |
| `p * q * u * w` | 100 | 3529191470344634367189/125000000000000000000000 | 3529191470344634367189/1250000000000000000000 |
| `q * q * u * r` | -100 | 5157525785122592439831/500000000000000000000000 | 0 |
| `f * p * w * k` | 100 | 229639462712893498113/7812500000000000000000 | 229639462712893498113/78125000000000000000 |
| `c * e * p * k` | -100 | 79058459858225754609/7812500000000000000000 | 0 |
| `c * p * k` | 93/10 | 215889338469591/7812500000000000 | 20077708477671963/78125000000000000 |
| `c * p * q * k` | 100 | 77931949290091428771/7812500000000000000000 | 77931949290091428771/78125000000000000000 |
| `c * q * q * j` | -100 | 375804003914963287569/31250000000000000000000 | 0 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 240 | -294166743888387062835637613146624156513589/102183982500000000000000000000000000 |

## Stage 241

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS+/HEQ+/CFQ- |
| Packet | forest:root/AFP-/APR+/ARS+/HEQ+/CFQ- |
| Index | 0 |
| Context | 93 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 154 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 59/125 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 344349/500000 | 103767/1000000 | 344349/500000 |
| c | 135501/250000 | 1/1 | 135501/250000 | 1/1 |
| e | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| f | 103767/1000000 | 344349/500000 | 103767/1000000 | 344349/500000 |
| h | 135501/250000 | 1/1 | 135501/250000 | 1/1 |
| p | 22907/200000 | 710233/1000000 | 22907/200000 | 710233/1000000 |
| q | 196767/1000000 | 158493/200000 | 196767/1000000 | 158493/200000 |
| u | 103767/1000000 | 907/1000 | 237523/1000000 | 907/1000 |
| v | 237523/1000000 | 907/1000 | 237523/1000000 | 907/1000 |
| r | 434843/1000000 | 1/1 | 434843/1000000 | 1/1 |
| w | 211159/500000 | 1/1 | 211159/500000 | 1/1 |
| j | 155647/500000 | 896233/1000000 | 155647/500000 | 896233/1000000 |
| k | 203923/500000 | 8033/8963 | 203923/500000 | 8033/8963 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 25 | AC_AEF_AEF_0 | bitt ["anchor-cap","AEF","AEF",0,["P","Q"]] | `6143/20000 + -1/1 * a` |
| 61 | A_BFQ | bitt ["actual-area","BFQ",[]] | `-1/1 * f * v + 1/1 * b * v + 1/1 * u + -1/1 * b + -93/1000` |
| 79 | A_CFQ | bitt ["actual-area","CFQ",[]] | `-1/1 * f * v + 1/1 * c * v + 1/1 * u + -1/1 * c + -93/1000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 25 | a | 103767/1000000 | 59/125 | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 | `(-1/1, 6143/20000)` |
| 1 | 61 | u | 103767/1000000 | 907/1000 | 196767/1000000 | 907/1000 | 196767/1000000 | 907/1000 | `(1/1, -196767/1000000); (1/1, -642763434087/1000000000000); (1/1, -335701565913/1000000000000); (1/1, -390849/500000); (1/1, -251165583/1000000000); (1/1, -727299417/1000000000)` |
| 2 | 79 | u | 196767/1000000 | 907/1000 | 237523041/1000000000 | 907/1000 | 237523/1000000 | 907/1000 | `(1/1, -530912633049/1000000000000); (1/1, -880124049141/1000000000000); (1/1, -334923599481/500000000000); (1/1, -509529307527/500000000000); (1/1, -237523041/1000000000); (1/1, -280116669/1000000000); (1/1, -384027729/500000000); (1/1, -405324543/500000000)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 241:2 | ABE | lo | 93/1000 | occupants none |
| 241:21 | ACH | hi | 896233/1000000 | vertex maximum 896233/1000000 |
| 241:22 | ACP | lo | 93/1000 | occupants none |
| 241:30 | AEF | lo | 13857/20000 | occupants P, Q |
| 241:31 | AEF | hi | 896233/1000000 | vertex maximum 896233/1000000 |
| 241:32 | AEH | lo | 279/1000 | occupants P |
| 241:34 | AEP | lo | 93/1000 | occupants none |
| 241:38 | AER | lo | 318551/1000000 | earlier 154:38; AER; lo; 318551/1000000 |
| 241:39 | AER | hi | 896233/1000000 | vertex maximum 896233/1000000 |
| 241:40 | AES | lo | 304079/1000000 | earlier 154:40; AES; lo; 304079/1000000 |
| 241:41 | AES | hi | 396233/500000 | earlier 154:41; AES; hi; 396233/500000 |
| 241:48 | AFR | lo | 279/1000 | occupants S |
| 241:52 | AHP | lo | 93/1000 | occupants none |
| 241:60 | APR | lo | 93/1000 | occupants none |
| 241:62 | APS | lo | 93/1000 | occupants none |
| 241:64 | ARS | lo | 93/1000 | occupants none |
| 241:66 | BCE | lo | 93/1000 | occupants none |
| 241:70 | BCH | lo | 60107/200000 | earlier 154:68; BCH; lo; 60107/200000 |
| 241:72 | BCP | lo | 22907/200000 | earlier 154:70; BCP; lo; 22907/200000 |
| 241:81 | BEF | hi | 896233/1000000 | vertex maximum 896233/1000000 |
| 241:92 | BFH | lo | 93/1000 | occupants none |
| 241:110 | CEF | lo | 279/1000 | occupants Q |
| 241:114 | CEP | lo | 93/1000 | occupants none |
| 241:116 | CEQ | lo | 93/1000 | occupants none |
| 241:118 | CER | lo | 93/1000 | occupants none |
| 241:124 | CFP | lo | 93/1000 | occupants none |
| 241:130 | CFS | lo | 93/1000 | occupants none |
| 241:132 | CHP | lo | 93/1000 | occupants none |
| 241:148 | EFH | lo | 279/1000 | occupants Q |
| 241:149 | EFH | hi | 379904472713/500000000000 | vertex maximum 379904472713/500000000000 |
| 241:151 | EFP | hi | 168741/250000 | earlier 154:145; EFP; hi; 168741/250000 |
| 241:152 | EFQ | lo | 93/1000 | occupants none |
| 241:154 | EFR | lo | 279/1000 | occupants S |
| 241:155 | EFR | hi | 803233590289/1000000000000 | vertex maximum 803233590289/1000000000000 |
| 241:156 | EFS | lo | 93/1000 | occupants none |
| 241:160 | EHQ | lo | 93/1000 | occupants none |
| 241:169 | EPR | hi | 710233/1000000 | earlier 154:163; EPR; hi; 710233/1000000 |
| 241:171 | EPS | hi | 303233/500000 | earlier 154:165; EPS; hi; 303233/500000 |
| 241:177 | ERS | hi | 308617/500000 | earlier 154:171; ERS; hi; 308617/500000 |
| 241:178 | FHP | lo | 28707/250000 | earlier 154:172; FHP; lo; 28707/250000 |
| 241:180 | FHQ | lo | 93/1000 | occupants none |
| 241:184 | FHS | lo | 93/1000 | occupants none |
| 241:189 | FPR | hi | 719883921289/1000000000000 | vertex maximum 719883921289/1000000000000 |
| 241:196 | FRS | lo | 93/1000 | occupants none |
| 241:204 | PRS | lo | 93/1000 | occupants none |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 23 | plu | ACE * BEF = ABE * CEF + AEF * BCE | circuit EABCF |
| 318 | plu | AEQ * EFH = AEF * EHQ + AEH * EFQ | circuit EAFHQ |
| 328 | plu | AEF * EHS = AEH * EFS + AES * EFH | circuit EAFHS |
| 334 | plu | AER * AFP = AEF * APR + AEP * AFR | circuit AEFPR |
| 335 | plu | AEF * EPR = AEP * EFR + AER * EFP | circuit EAFPR |
| 350 | plu | AFS * EFR = AEF * FRS + AFR * EFS | circuit FAERS |
| 1516 | bary | outer ACH; fans CHP, AHP, ACP; target EFP; sign 1; vertices AEF 1; CEF 1; EFH 1 | container ACH; inner P; line EF |
| 1519 | bary | outer ACH; fans CHP, AHP, ACP; target EPQ; sign 1; vertices AEQ 1; CEQ 1; EHQ 1 | container ACH; inner P; line EQ |
| 1521 | bary | outer ACH; fans CHP, AHP, ACP; target EPS; sign 1; vertices AES 1; CES 1; EHS 1 | container ACH; inner P; line ES |
| 1526 | bary | outer ACH; fans CHP, AHP, ACP; target FPS; sign -1; vertices AFS -1; CFS -1; FHS -1 | container ACH; inner P; line FS |
| 1602 | bary | outer AEF; fans EFP, AFP, AEP; target AFP; sign -1; vertices none 0; AEF -1; none 0 | container AEF; inner P; line AF |
| 1621 | bary | outer AEF; fans EFP, AFP, AEP; target EPR; sign 1; vertices AER 1; none 0; EFR 1 | container AEF; inner P; line ER |
| 1622 | bary | outer AEF; fans EFP, AFP, AEP; target EPS; sign 1; vertices AES 1; none 0; EFS 1 | container AEF; inner P; line ES |
| 2000 | bary | outer EFH; fans FHQ, EHQ, EFQ; target BFQ; sign -1; vertices BEF -1; none 0; BFH 1 | container EFH; inner Q; line BF |
| 2095 | bary | outer FPR; fans PRS, FRS, FPS; target CES; sign 1; vertices CEF 1; CEP 1; CER 1 | container FPR; inner S; line CE |
| 2145 | four | 1 * ACF + -1 * AFP + -1 * ACP + -1 * CFP = 0 | vertices ACFP |
| 2165 | four | 1 * AEP + 1 * APR + -1 * AER + 1 * EPR = 0 | vertices AEPR |
| 2166 | four | 1 * AEP + 1 * APS + -1 * AES + 1 * EPS = 0 | vertices AEPS |
| 2174 | four | -1 * AFR + 1 * ARS + 1 * AFS + 1 * FRS = 0 | vertices AFRS |
| 2248 | four | 1 * FPR + -1 * FRS + -1 * FPS + -1 * PRS = 0 | vertices FPRS |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 241:218 | ACE | lo | 50423/500000 | 1807641/17924660 | 23 | 241:2, 241:110, 241:30, 241:66, 241:81 |
| 241:223 | AEQ | lo | 118953/1000000 | 45191025000/379904472713 | 318 | 241:30, 241:160, 241:32, 241:152, 241:149 |
| 241:225 | AFP | lo | 50423/500000 | 1807641/17924660 | 334 | 241:30, 241:60, 241:34, 241:48, 241:39 |
| 241:226 | AFS | lo | 56261/500000 | 90382050000/803233590289 | 350 | 241:30, 241:196, 241:48, 241:156, 241:155 |
| 241:229 | EFP | lo | 40243/125000 | 288537057/896233000 | 1516 | 241:21, 241:132, 241:52, 241:22, 241:30, 241:110, 241:148 |
| 241:230 | EPQ | lo | 95693/1000000 | 42881649/448116500 | 1519 | 241:21, 241:132, 241:52, 241:22, 241:223, 241:116, 241:160 |
| 241:232 | FPS | lo | 3801/40000 | 17033043/179246600 | 1526 | 241:21, 241:132, 241:52, 241:22, 241:226, 241:130, 241:184 |
| 241:237 | AFP | hi | 481289/1000000 | 481289/1000000 | 1602 | 241:31, 241:229, 241:225, 241:34, 241:31 |
| 241:244 | EPR | lo | 7169/50000 | 1235601761/8617625000 | 1621 | 241:31, 241:229, 241:225, 241:34, 241:38, 241:154 |
| 241:245 | EPS | lo | 118881/1000000 | 13318176197/112029125000 | 1622 | 241:31, 241:229, 241:225, 241:34, 241:40, 241:156 |
| 241:283 | BFQ | hi | 332727/500000 | 252808756292990129/379904472713000000 | 2000 | 241:149, 241:180, 241:160, 241:152, 241:81, 241:92 |
| 241:296 | CES | lo | 29257/250000 | 84247204679877/719883921289000 | 2095 | 241:189, 241:204, 241:196, 241:232, 241:110, 241:114, 241:118 |
| 241:301 | AER | lo | 16469/50000 | 16469/50000 | 2165 | 241:34, 241:60, 241:244 |
| 241:302 | AES | lo | 304881/1000000 | 304881/1000000 | 2166 | 241:34, 241:62, 241:245 |
| 241:303 | AFR | lo | 149261/500000 | 149261/500000 | 2174 | 241:64, 241:226, 241:196 |
| 241:309 | EHS | lo | 123861/1000000 | 111008799/896233000 | 328 | 241:32, 241:156, 241:302, 241:148, 241:31 |
| 241:311 | EPR | lo | 14727/100000 | 63456209/430881250 | 335 | 241:34, 241:154, 241:301, 241:229, 241:31 |
| 241:313 | AFS | lo | 114783/1000000 | 92197596000/803233590289 | 350 | 241:30, 241:196, 241:303, 241:156, 241:155 |
| 241:315 | EPS | lo | 13723/100000 | 30747538381/224058250000 | 1521 | 241:21, 241:132, 241:52, 241:22, 241:302, 241:296, 241:309 |
| 241:345 | AER | lo | 33327/100000 | 33327/100000 | 2165 | 241:34, 241:60, 241:311 |
| 241:346 | AES | lo | 32323/100000 | 32323/100000 | 2166 | 241:34, 241:62, 241:315 |
| 241:347 | AFR | lo | 300783/1000000 | 300783/1000000 | 2174 | 241:64, 241:313, 241:196 |
| 241:353 | EHS | lo | 129573/1000000 | 11612817/89623300 | 328 | 241:32, 241:156, 241:346, 241:148, 241:31 |
| 241:355 | EPR | lo | 37167/250000 | 1665515961/11202912500 | 335 | 241:34, 241:154, 241:345, 241:229, 241:31 |
| 241:356 | AFS | lo | 28761/250000 | 92407869000/803233590289 | 350 | 241:30, 241:196, 241:347, 241:156, 241:155 |
| 241:358 | EPS | lo | 69863/500000 | 31306956631/224058250000 | 1521 | 241:21, 241:132, 241:52, 241:22, 241:346, 241:296, 241:353 |
| 241:385 | AER | lo | 83667/250000 | 83667/250000 | 2165 | 241:34, 241:60, 241:355 |
| 241:386 | AES | lo | 162863/500000 | 162863/500000 | 2166 | 241:34, 241:62, 241:358 |
| 241:387 | AFR | lo | 75261/250000 | 75261/250000 | 2174 | 241:64, 241:356, 241:196 |
| 241:393 | EHS | lo | 2607/20000 | 58412277/448116500 | 328 | 241:32, 241:156, 241:386, 241:148, 241:31 |
| 241:395 | EPR | lo | 14917/100000 | 4177854831/28007281250 | 335 | 241:34, 241:154, 241:385, 241:229, 241:31 |
| 241:396 | AFS | lo | 4603/40000 | 92432142000/803233590289 | 350 | 241:30, 241:196, 241:387, 241:156, 241:155 |
| 241:398 | EPS | lo | 70033/500000 | 31383053881/224058250000 | 1521 | 241:21, 241:132, 241:52, 241:22, 241:386, 241:296, 241:393 |
| 241:400 | FPS | lo | 9529/100000 | 21350661/224058250 | 1526 | 241:21, 241:132, 241:52, 241:22, 241:396, 241:130, 241:184 |
| 241:422 | AER | lo | 33517/100000 | 33517/100000 | 2165 | 241:34, 241:60, 241:395 |
| 241:423 | AES | lo | 163033/500000 | 163033/500000 | 2166 | 241:34, 241:62, 241:398 |
| 241:424 | AFR | lo | 12043/40000 | 12043/40000 | 2174 | 241:64, 241:396, 241:196 |
| 241:425 | FPR | lo | 28129/100000 | 28129/100000 | 2248 | 241:196, 241:400, 241:204 |
| 241:430 | EHS | lo | 16307/125000 | 58459707/448116500 | 328 | 241:32, 241:156, 241:423, 241:148, 241:31 |
| 241:431 | AFP | lo | 103137/1000000 | 3697401/35849320 | 334 | 241:30, 241:60, 241:34, 241:424, 241:39 |
| 241:432 | EPR | lo | 2987/20000 | 1673162131/11202912500 | 335 | 241:34, 241:154, 241:422, 241:229, 241:31 |
| 241:433 | AFS | lo | 57539/500000 | 92435025000/803233590289 | 350 | 241:30, 241:196, 241:424, 241:156, 241:155 |
| 241:435 | EPS | lo | 8757/62500 | 31393423381/224058250000 | 1521 | 241:21, 241:132, 241:52, 241:22, 241:423, 241:296, 241:430 |
| 241:454 | ACF | lo | 289137/1000000 | 289137/1000000 | 2145 | 241:431, 241:22, 241:124 |
| 241:455 | AER | lo | 6707/20000 | 6707/20000 | 2165 | 241:34, 241:60, 241:432 |
| 241:456 | AES | lo | 10191/31250 | 10191/31250 | 2166 | 241:34, 241:62, 241:435 |
| 241:461 | EHS | lo | 13047/100000 | 14616531/112029125 | 328 | 241:32, 241:156, 241:456, 241:148, 241:31 |
| 241:462 | EPR | lo | 29883/200000 | 334777301/2240582500 | 335 | 241:34, 241:154, 241:455, 241:229, 241:31 |
| 241:463 | EPS | lo | 140119/1000000 | 31394818381/224058250000 | 1521 | 241:21, 241:132, 241:52, 241:22, 241:456, 241:296, 241:461 |
| 241:471 | AER | lo | 67083/200000 | 67083/200000 | 2165 | 241:34, 241:60, 241:462 |
| 241:472 | AES | lo | 326119/1000000 | 326119/1000000 | 2166 | 241:34, 241:62, 241:463 |
| 241:475 | EPR | lo | 74719/500000 | 3348296169/22405825000 | 335 | 241:34, 241:154, 241:471, 241:229, 241:31 |
| 241:481 | AER | lo | 167719/500000 | 167719/500000 | 2165 | 241:34, 241:60, 241:475 |
| 241:483 | EPR | lo | 74723/500000 | 643938709/4308812500 | 335 | 241:34, 241:154, 241:481, 241:229, 241:31 |
| 241:485 | AER | lo | 167723/500000 | 167723/500000 | 2165 | 241:34, 241:60, 241:483 |
| 241:486 | EPR | lo | 149449/1000000 | 8371364189/56014562500 | 335 | 241:34, 241:154, 241:485, 241:229, 241:31 |
| 241:488 | AER | lo | 335449/1000000 | 335449/1000000 | 2165 | 241:34, 241:60, 241:486 |
| 241:490 | EPR | lo | 2989/20000 | 16742849107/112029125000 | 335 | 241:34, 241:154, 241:488, 241:229, 241:31 |
| 241:491 | AER | lo | 6709/20000 | 6709/20000 | 2165 | 241:34, 241:60, 241:490 |
| 241:492 | EPR | lo | 149451/1000000 | 334857787/2240582500 | 335 | 241:34, 241:154, 241:491, 241:229, 241:31 |
| 241:494 | AER | lo | 335451/1000000 | 335451/1000000 | 2165 | 241:34, 241:60, 241:492 |

## Stage 242

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS+/HEQ+/CFQ- |
| Packet | forest:root/AFP-/APR+/ARS+/HEQ+/CFQ- |
| Index | 1 |
| Context | 93 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 241 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 344349/500000 | 103767/1000000 | 344349/500000 |
| c | 135501/250000 | 1/1 | 135501/250000 | 1/1 |
| e | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| f | 103767/1000000 | 344349/500000 | 103767/1000000 | 344349/500000 |
| h | 135501/250000 | 1/1 | 135501/250000 | 1/1 |
| p | 22907/200000 | 710233/1000000 | 22907/200000 | 710233/1000000 |
| q | 196767/1000000 | 158493/200000 | 196767/1000000 | 158493/200000 |
| u | 237523/1000000 | 907/1000 | 237523/1000000 | 907/1000 |
| v | 237523/1000000 | 907/1000 | 237523/1000000 | 907/1000 |
| r | 434843/1000000 | 1/1 | 113491/250000 | 1/1 |
| w | 211159/500000 | 1/1 | 219609/500000 | 1/1 |
| j | 155647/500000 | 896233/1000000 | 155647/500000 | 896233/1000000 |
| k | 203923/500000 | 8033/8963 | 214943/500000 | 8033/8963 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 588 | AREA_lo_AER | bitt ["earlier-area",{"direction":"lo","ref":"241:494","triangle":"AER","value":"335451/1000000"}] | `1/1 * w + -1/1 * a + -1/1 * e * r + 1/1 * a * r + -335451/1000000` |
| 590 | AREA_lo_AES | bitt ["earlier-area",{"direction":"lo","ref":"241:472","triangle":"AES","value":"326119/1000000"}] | `1/1 * k + -1/1 * a + -1/1 * e * j + 1/1 * a * j + -326119/1000000` |
| 694 | AREA_lo_FPR | bitt ["earlier-area",{"direction":"lo","ref":"241:425","triangle":"FPR","value":"28129/100000"}] | `1/1 * p * w + -1/1 * p + -1/1 * f * w + -1/1 * q * r + 1/1 * f * q + 1/1 * r + -28129/100000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 588 | w | 211159/500000 | 1/1 | 219609/500000 | 1/1 | 219609/500000 | 1/1 | `(1/1, -219609/500000); (1/1, -554161326131/1000000000000); (1/1, -599341542419/1000000000000); (1/1, -14285697371/20000000000); (1/1, -807451/1000000)` |
| 1 | 590 | k | 203923/500000 | 8033/8963 | 214943/500000 | 8033/8963 | 214943/500000 | 8033/8963 | `(1/1, -214943/500000); (1/1, -284978546199/500000000000); (1/1, -272257361751/500000000000); (1/1, -6845858159/10000000000); (1/1, -450990443761/1000000000000); (1/1, -759908566289/1000000000000); (1/1, -15620260201/20000000000)` |
| 2 | 694 | r | 434843/1000000 | 1/1 | 364639078711/803233000000 | 1/1 | 113491/250000 | 1/1 | `(803233/1000000, -370677579287/1000000000000); (803233/1000000, -32030917823/62500000000); (803233/1000000, -704734295123/1000000000000); (803233/1000000, -211637850251/250000000000); (41507/200000, -308863784921/1000000000000); (41507/200000, -25559665991/250000000000); (41507/200000, -642920500757/1000000000000); (41507/200000, -2181476899/5000000000); (803233/1000000, -364639078711/1000000000000); (803233/1000000, -417237480317/500000000000); (41507/200000, -60565056869/200000000000); (41507/200000, -42421893943/100000000000)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 242:4 | ABF | lo | 93/1000 | occupants none |
| 242:16 | ACE | lo | 50423/500000 | earlier 241:218; ACE; lo; 50423/500000 |
| 242:18 | ACF | lo | 289137/1000000 | earlier 241:454; ACF; lo; 289137/1000000 |
| 242:41 | AES | hi | 396233/500000 | earlier 241:41; AES; hi; 396233/500000 |
| 242:44 | AFP | lo | 103137/1000000 | earlier 241:431; AFP; lo; 103137/1000000 |
| 242:45 | AFP | hi | 481289/1000000 | earlier 241:237; AFP; hi; 481289/1000000 |
| 242:49 | AFR | hi | 861424256083/1000000000000 | vertex maximum 861424256083/1000000000000 |
| 242:50 | AFS | lo | 57539/500000 | earlier 241:433; AFS; lo; 57539/500000 |
| 242:64 | ARS | lo | 93/1000 | occupants none |
| 242:70 | BCH | lo | 60107/200000 | earlier 241:70; BCH; lo; 60107/200000 |
| 242:72 | BCP | lo | 22907/200000 | earlier 241:72; BCP; lo; 22907/200000 |
| 242:95 | BFQ | hi | 332727/500000 | earlier 241:283; BFQ; hi; 332727/500000 |
| 242:97 | BFR | hi | 896233/1000000 | vertex maximum 896233/1000000 |
| 242:120 | CES | lo | 29257/250000 | earlier 241:296; CES; lo; 29257/250000 |
| 242:150 | EFP | lo | 40243/125000 | earlier 241:229; EFP; lo; 40243/125000 |
| 242:151 | EFP | hi | 168741/250000 | earlier 241:151; EFP; hi; 168741/250000 |
| 242:166 | EPQ | lo | 95693/1000000 | earlier 241:230; EPQ; lo; 95693/1000000 |
| 242:169 | EPR | hi | 710233/1000000 | earlier 241:169; EPR; hi; 710233/1000000 |
| 242:171 | EPS | hi | 303233/500000 | earlier 241:171; EPS; hi; 303233/500000 |
| 242:177 | ERS | hi | 308617/500000 | earlier 241:177; ERS; hi; 308617/500000 |
| 242:178 | FHP | lo | 28707/250000 | earlier 241:178; FHP; lo; 28707/250000 |
| 242:188 | FPR | lo | 28129/100000 | earlier 241:425; FPR; lo; 28129/100000 |
| 242:196 | FRS | lo | 93/1000 | occupants none |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 1776 | bary | outer AFR; fans FRS, ARS, AFS; target BFS; sign -1; vertices ABF 1; none 0; BFR -1 | container AFR; inner S; line BF |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 242:210 | BFS | hi | 692677/1000000 | 596688507302035339/861424256083000000 | 1776 | 242:49, 242:196, 242:64, 242:50, 242:4, 242:97 |

## Stage 243

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS+/HEQ+/CFQ- |
| Packet | forest:root/AFP-/APR+/ARS+/HEQ+/CFQ- |
| Index | 2 |
| Context | 93 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 242 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 344349/500000 | 103767/1000000 | 344349/500000 |
| c | 135501/250000 | 1/1 | 135501/250000 | 1/1 |
| e | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| f | 103767/1000000 | 344349/500000 | 103767/1000000 | 344349/500000 |
| h | 135501/250000 | 1/1 | 135501/250000 | 1/1 |
| p | 22907/200000 | 710233/1000000 | 22907/200000 | 710233/1000000 |
| q | 196767/1000000 | 158493/200000 | 196767/1000000 | 158493/200000 |
| u | 237523/1000000 | 907/1000 | 237523/1000000 | 907/1000 |
| v | 237523/1000000 | 907/1000 | 237523/1000000 | 907/1000 |
| r | 113491/250000 | 1/1 | 113491/250000 | 1/1 |
| w | 219609/500000 | 1/1 | 219609/500000 | 1/1 |
| j | 155647/500000 | 896233/1000000 | 155647/500000 | 896233/1000000 |
| k | 214943/500000 | 8033/8963 | 214943/500000 | 8033/8963 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |


### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |


### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 243:16 | ACE | lo | 50423/500000 | earlier 242:16; ACE; lo; 50423/500000 |
| 243:18 | ACF | lo | 289137/1000000 | earlier 242:18; ACF; lo; 289137/1000000 |
| 243:41 | AES | hi | 396233/500000 | earlier 242:41; AES; hi; 396233/500000 |
| 243:44 | AFP | lo | 103137/1000000 | earlier 242:44; AFP; lo; 103137/1000000 |
| 243:45 | AFP | hi | 481289/1000000 | earlier 242:45; AFP; hi; 481289/1000000 |
| 243:70 | BCH | lo | 60107/200000 | earlier 242:70; BCH; lo; 60107/200000 |
| 243:72 | BCP | lo | 22907/200000 | earlier 242:72; BCP; lo; 22907/200000 |
| 243:95 | BFQ | hi | 332727/500000 | earlier 242:95; BFQ; hi; 332727/500000 |
| 243:99 | BFS | hi | 692677/1000000 | earlier 242:210; BFS; hi; 692677/1000000 |
| 243:120 | CES | lo | 29257/250000 | earlier 242:120; CES; lo; 29257/250000 |
| 243:150 | EFP | lo | 40243/125000 | earlier 242:150; EFP; lo; 40243/125000 |
| 243:151 | EFP | hi | 168741/250000 | earlier 242:151; EFP; hi; 168741/250000 |
| 243:166 | EPQ | lo | 95693/1000000 | earlier 242:166; EPQ; lo; 95693/1000000 |
| 243:169 | EPR | hi | 710233/1000000 | earlier 242:169; EPR; hi; 710233/1000000 |
| 243:171 | EPS | hi | 303233/500000 | earlier 242:171; EPS; hi; 303233/500000 |
| 243:177 | ERS | hi | 308617/500000 | earlier 242:177; ERS; hi; 308617/500000 |
| 243:178 | FHP | lo | 28707/250000 | earlier 242:178; FHP; lo; 28707/250000 |
| 243:188 | FPR | lo | 28129/100000 | earlier 242:188; FPR; lo; 28129/100000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |


## Stage 244

| Property | Value |
| --- | --- |
| Scope | root/AFP-/APR+/ARS+/HEQ+/CFQ-/PQR+ |
| Packet | forest:root/AFP-/APR+/ARS+/HEQ+/CFQ-/PQR+ |
| Index | 0 |
| Context | 94 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 243 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 344349/500000 | 103767/1000000 | 344349/500000 |
| c | 135501/250000 | 1/1 | 135501/250000 | 1/1 |
| e | 103767/1000000 | 59/125 | 103767/1000000 | 105949/250000 |
| f | 103767/1000000 | 344349/500000 | 103767/1000000 | 344349/500000 |
| h | 135501/250000 | 1/1 | 135501/250000 | 1/1 |
| p | 22907/200000 | 710233/1000000 | 22907/200000 | 344377/500000 |
| q | 196767/1000000 | 158493/200000 | 196767/1000000 | 343071/500000 |
| u | 237523/1000000 | 907/1000 | 333191/1000000 | 907/1000 |
| v | 237523/1000000 | 907/1000 | 237523/1000000 | 344349/500000 |
| r | 113491/250000 | 1/1 | 70129/125000 | 1/1 |
| w | 219609/500000 | 1/1 | 796617/1000000 | 1/1 |
| j | 155647/500000 | 896233/1000000 | 155647/500000 | 883471/1000000 |
| k | 214943/500000 | 8033/8963 | 796617/1000000 | 8033/8963 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 29 | A_AER | bitt ["actual-area","AER",["P","Q"]] | `1/1 * w + -1/1 * a + -1/1 * e * r + 1/1 * a * r + -13857/20000` |
| 30 | A_AES | bitt ["actual-area","AES",["P","Q"]] | `1/1 * k + -1/1 * a + -1/1 * e * j + 1/1 * a * j + -13857/20000` |
| 81 | A_CFQ | bitt ["actual-area","CFQ",[]] | `-1/1 * f * v + 1/1 * c * v + 1/1 * u + -1/1 * c + -93/1000` |
| 105 | A_EPR | bitt ["actual-area","EPR",["Q"]] | `-1/1 * p * w + 1/1 * e * p + 1/1 * w + 1/1 * q * r + -1/1 * q + -1/1 * e * r + -279/1000` |
| 115 | A_FPR | bitt ["actual-area","FPR",["S"]] | `1/1 * p * w + -1/1 * p + -1/1 * f * w + -1/1 * q * r + 1/1 * f * q + 1/1 * r + -279/1000` |
| 117 | A_FQR | bitt ["actual-area","FQR",["S"]] | `1/1 * u * w + -1/1 * u + -1/1 * f * w + -1/1 * v * r + 1/1 * f * v + 1/1 * r + -279/1000` |
| 119 | A_FRS | bitt ["actual-area","FRS",[]] | `-1/1 * r * k + 1/1 * r + 1/1 * f * k + 1/1 * w * j + -1/1 * f * w + -1/1 * j + -93/1000` |
| 255 | SUP_AES_AER_ARS | bitt ["support-envelope",["quad","AERS",["P","Q"],"299/31"],"AES","AER","ARS","7102936379/8963000000"] | `7102936379/8963000000 * w + 936874621/8963000000 * a + -7102936379/8963000000 * e * r + -936874621/8963000000 * a * r + -897/1000 * k + 897/1000 * e * j + 897/1000 * r * k + -897/1000 * w * j` |
| 753 | AREA_lo_FPR | bitt ["earlier-area",{"direction":"lo","ref":"243:188","triangle":"FPR","value":"28129/100000"}] | `1/1 * p * w + -1/1 * p + -1/1 * f * w + -1/1 * q * r + 1/1 * f * q + 1/1 * r + -28129/100000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 29 | w | 219609/500000 | 1/1 | 796617/1000000 | 1/1 | 796617/1000000 | 1/1 | `(1/1, -796617/1000000); (1/1, -226917859947/250000000000); (1/1, -240945381403/250000000000); (1/1, -5374179827/5000000000); (1/1, -23297/20000)` |
| 1 | 30 | e | 103767/1000000 | 59/125 | 103767/1000000 | 591222526917787/1395064061000000 | 103767/1000000 | 105949/250000 | `(-155647/500000, -167214477751/500000000000); (-155647/500000, -4745000479/10000000000); (-896233/1000000, -273731590289/1000000000000); (-896233/1000000, -5896720681/20000000000); (-155647/500000, 591222526917787/4481500000000000); (-155647/500000, -730121473277/89630000000000); (-896233/1000000, 1726475538239693/8963000000000000); (-896233/1000000, 30746328176197/179260000000000)` |
| 2 | 30 | k | 214943/500000 | 8033/8963 | 796617/1000000 | 8033/8963 | 796617/1000000 | 8033/8963 | `(1/1, -796617/1000000); (1/1, -468344046199/500000000000); (1/1, -448120053763/500000000000); (1/1, -259077799981/250000000000); (1/1, -817721443761/1000000000000); (1/1, -1083437550757/1000000000000); (1/1, -552270997259/500000000000)` |
| 3 | 115 | q | 196767/1000000 | 158493/200000 | 196767/1000000 | 617233/896233 | 196767/1000000 | 344349/500000 | `(-350197/1000000, 4312935741/62500000000); (117367/500000, -396959006571/1000000000000); (-350197/1000000, -26073937239/500000000000); (117367/500000, -103622770581/200000000000); (-896233/1000000, 38440185741/62500000000); (-155651/500000, 149076993429/1000000000000); (-896233/1000000, 246944062761/500000000000); (-155651/500000, 5584429419/200000000000); (-350197/1000000, 71197/1000000); (117367/500000, -256867/500000); (-896233/1000000, 617233/1000000); (-155651/500000, 16151/500000)` |
| 4 | 117 | v | 237523/1000000 | 907/1000 | 237523/1000000 | 617233/896233 | 237523/1000000 | 344349/500000 | `(-350197/1000000, 10998325863/250000000000); (117367/500000, -16878906999/40000000000); (-350197/1000000, -92166937239/1000000000000); (117367/500000, -279066457833/500000000000); (-896233/1000000, 147507325863/250000000000); (-155651/500000, 4962533001/40000000000); (-896233/1000000, 453869062761/1000000000000); (-155651/500000, -6048457833/500000000000); (-350197/1000000, 71197/1000000); (117367/500000, -256867/500000); (-896233/1000000, 617233/1000000); (-155651/500000, 16151/500000)` |
| 5 | 117 | r | 113491/250000 | 1/1 | 119373316953/254159000000 | 1/1 | 469679/1000000 | 1/1 | `(762477/1000000, -385323647407/1000000000000); (762477/1000000, -712355059921/1000000000000); (762477/1000000, -260741944049/500000000000); (762477/1000000, -212128825153/250000000000); (155651/500000, -169253285591/500000000000); (155651/500000, -401631739771/1000000000000); (155651/500000, -474666811873/1000000000000); (155651/500000, -268895990231/500000000000); (762477/1000000, -358119950859/1000000000000); (762477/1000000, -402058192473/500000000000); (155651/500000, -155651437317/500000000000); (155651/500000, -123348266199/250000000000)` |
| 6 | 119 | r | 469679/1000000 | 1/1 | 114104443761/203383000000 | 1/1 | 70129/125000 | 1/1 | `(203383/1000000, -78155953801/500000000000); (203383/1000000, -114104443761/1000000000000); (203383/1000000, -116534732667/500000000000); (203383/1000000, -275278556239/1000000000000); (930/8963, -1308367808406883/8963000000000000); (930/8963, -196517537512021/2240750000000000); (930/8963, -93006231/896300000); (930/8963, -73702407/448150000); (930/8963, -1187332940070157/4481500000000000); (930/8963, -370473644356303/1792600000000000)` |
| 7 | 255 | j | 155647/500000 | 896233/1000000 | 155647/500000 | 7102936379/8039811000 | 155647/500000 | 883471/1000000 | `(-12429729/20000000, 3095061953631429/11203750000000000); (-12429729/20000000, 319961555546634738253/1120375000000000000000); (-334420437/1000000000, 150092765726883416161/1120375000000000000000); (-334420437/1000000000, 80274062955187627207/560187500000000000000); (-12429729/20000000, 98425389403803/179260000000000); (-334420437/1000000000, 2648123843755159/8963000000000000); (-803921001/1000000000, 19603330362376501/44815000000000000); (-803921001/1000000000, 500538619242904363253/1120375000000000000000); (-129213747/250000000, 330669829423153041161/1120375000000000000000); (-129213747/250000000, 170562594803322439707/560187500000000000000); (-803921001/1000000000, 6365885979760307/8963000000000000); (-129213747/250000000, 1023185088331329/2240750000000000); (-12429729/20000000, 265557219593026977/1120375000000000000); (-12429729/20000000, 276012579776518815253/1120375000000000000000); (-334420437/1000000000, 106143789956767493161/1120375000000000000000); (-334420437/1000000000, 58299575070129665707/560187500000000000000); (-803921001/1000000000, 223067141644648301/560187500000000000); (-803921001/1000000000, 456589643472788440253/1120375000000000000000); (-129213747/250000000, 286720853653037118161/1120375000000000000000); (-129213747/250000000, 148588106918264478207/560187500000000000000)` |
| 8 | 753 | q | 196767/1000000 | 344349/500000 | 196767/1000000 | 614943/896233 | 196767/1000000 | 343071/500000 | `(-91453/200000, 10861560741/62500000000); (63833/500000, -292181006571/1000000000000); (-91453/200000, 26315062761/500000000000); (63833/500000, -82667170581/200000000000); (-896233/1000000, 38297060741/62500000000); (-155651/500000, 146786993429/1000000000000); (-896233/1000000, 245799062761/500000000000); (-155651/500000, 5126429419/200000000000); (-91453/200000, 7039/40000); (63833/500000, -102239/250000); (-896233/1000000, 614943/1000000); (-155651/500000, 7503/250000)` |
| 9 | 81 | u | 237523/1000000 | 907/1000 | 166595527287/500000000000 | 907/1000 | 333191/1000000 | 907/1000 | `(1/1, -530912633049/1000000000000); (1/1, -880124049141/1000000000000); (1/1, -334923599481/500000000000); (1/1, -509529307527/500000000000); (1/1, -166595527287/500000000000); (1/1, -237883062683/500000000000); (1/1, -184007966103/250000000000); (1/1, -219651733801/250000000000)` |
| 10 | 105 | p | 22907/200000 | 710233/1000000 | 22907/200000 | 49607808259/72025500000 | 22907/200000 | 344377/500000 | `(-13857/20000, 46628247/125000000); (-372821/1000000, 24184933259/125000000000); (-13857/20000, 158206011/1000000000); (-372821/1000000, -1333781183/62500000000); (-13857/20000, 8277/20000); (-372821/1000000, 93821/1000000); (-896233/1000000, 36025561/62500000); (-144051/250000, 49607808259/125000000000); (-896233/1000000, 361589011/1000000000); (-144051/250000, 11377656317/62500000000); (-896233/1000000, 617233/1000000); (-144051/250000, 74301/250000)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 244:2 | ABE | lo | 93/1000 | occupants none |
| 244:4 | ABF | lo | 93/1000 | occupants none |
| 244:8 | ABP | lo | 93/1000 | occupants none |
| 244:16 | ACE | lo | 50423/500000 | earlier 243:16; ACE; lo; 50423/500000 |
| 244:18 | ACF | lo | 289137/1000000 | earlier 243:18; ACF; lo; 289137/1000000 |
| 244:21 | ACH | hi | 896233/1000000 | vertex maximum 896233/1000000 |
| 244:22 | ACP | lo | 93/1000 | occupants none |
| 244:30 | AEF | lo | 13857/20000 | occupants P, Q |
| 244:31 | AEF | hi | 896233/1000000 | vertex maximum 896233/1000000 |
| 244:32 | AEH | lo | 279/1000 | occupants P |
| 244:34 | AEP | lo | 93/1000 | occupants none |
| 244:38 | AER | lo | 13857/20000 | occupants P, Q |
| 244:40 | AES | lo | 13857/20000 | occupants P, Q |
| 244:41 | AES | hi | 396233/500000 | earlier 243:41; AES; hi; 396233/500000 |
| 244:42 | AFH | lo | 93/1000 | occupants none |
| 244:49 | AFR | hi | 16486760681/20000000000 | vertex maximum 16486760681/20000000000 |
| 244:52 | AHP | lo | 93/1000 | occupants none |
| 244:62 | APS | lo | 93/1000 | occupants none |
| 244:68 | ARS | lo | 93/1000 | occupants none |
| 244:74 | BCH | lo | 60107/200000 | earlier 243:70; BCH; lo; 60107/200000 |
| 244:115 | CEF | hi | 160929771913/250000000000 | vertex maximum 160929771913/250000000000 |
| 244:120 | CEQ | lo | 93/1000 | occupants none |
| 244:123 | CER | hi | 114005380381/250000000000 | vertex maximum 114005380381/250000000000 |
| 244:125 | CES | hi | 113885750183977/224075000000000 | vertex maximum 113885750183977/224075000000000 |
| 244:130 | CFQ | lo | 93/1000 | occupants none |
| 244:134 | CFS | lo | 93/1000 | occupants none |
| 244:136 | CHP | lo | 93/1000 | occupants none |
| 244:152 | EFH | lo | 279/1000 | occupants Q |
| 244:156 | EFQ | lo | 93/1000 | occupants none |
| 244:158 | EFR | lo | 279/1000 | occupants S |
| 244:159 | EFR | hi | 803233590289/1000000000000 | vertex maximum 803233590289/1000000000000 |
| 244:160 | EFS | lo | 93/1000 | occupants none |
| 244:164 | EHQ | lo | 93/1000 | occupants none |
| 244:170 | EPQ | lo | 95693/1000000 | earlier 243:166; EPQ; lo; 95693/1000000 |
| 244:173 | EPR | hi | 710233/1000000 | earlier 243:169; EPR; hi; 710233/1000000 |
| 244:175 | EPS | hi | 303233/500000 | earlier 243:171; EPS; hi; 303233/500000 |
| 244:178 | EQS | lo | 93/1000 | occupants none |
| 244:181 | ERS | hi | 308617/500000 | earlier 243:177; ERS; hi; 308617/500000 |
| 244:182 | FHP | lo | 28707/250000 | earlier 243:178; FHP; lo; 28707/250000 |
| 244:188 | FHS | lo | 93/1000 | occupants none |
| 244:200 | FRS | lo | 93/1000 | occupants none |
| 244:212 | PQR | lo | 93/1000 | occupants none |
| 244:214 | PQS | lo | 93/1000 | occupants none |
| 244:216 | PRS | lo | 93/1000 | occupants none |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 11 | fan | AFR = AFS + FRS + ARS | point S |
| 123 | plu | ABR * AEF = ABE * AFR + ABF * AER | circuit ABEFR |
| 221 | plu | AFQ * CEF = ACF * EFQ + AEF * CFQ | circuit FACEQ |
| 349 | plu | AEF * AHR = AEH * AFR + AER * AFH | circuit AEFHR |
| 355 | plu | AEF * EHS = AEH * EFS + AES * EFH | circuit EAFHS |
| 372 | plu | AEF * EQR = AEQ * EFR + AER * EFQ | circuit EAFQR |
| 385 | plu | AFS * ERS = AES * FRS + ARS * EFS | circuit SAEFR |
| 412 | plu | AEQ * EPS = AEP * EQS + AES * EPQ | circuit EAPQS |
| 1378 | support | AER * CER >= 1023/1000 * (AER - ACR) | pentagon RABCE |
| 1383 | support | AES * CES >= 1023/1000 * (AES - ACS) | pentagon SABCE |
| 1752 | bary | outer ACH; fans CHP, AHP, ACP; target EPQ; sign 1; vertices AEQ 1; CEQ 1; EHQ 1 | container ACH; inner P; line EQ |
| 1759 | bary | outer ACH; fans CHP, AHP, ACP; target FPS; sign -1; vertices AFS -1; CFS -1; FHS -1 | container ACH; inner P; line FS |
| 1894 | bary | outer AEF; fans EFQ, AFQ, AEQ; target EQR; sign 1; vertices AER 1; none 0; EFR 1 | container AEF; inner Q; line ER |
| 2077 | bary | outer AES; fans EQS, AQS, AEQ; target FHQ; sign 1; vertices AFH 1; EFH 1; FHS 1 | container AES; inner Q; line FH |
| 2415 | bary | outer EFR; fans FRS, ERS, EFS; target AHS; sign -1; vertices AEH -1; AFH -1; AHR -1 | container EFR; inner S; line AH |
| 2521 | bary | outer EPR; fans PQR, EQR, EPQ; target ABQ; sign 1; vertices ABE 1; ABP 1; ABR 1 | container EPR; inner Q; line AB |
| 2527 | bary | outer EPR; fans PQR, EQR, EPQ; target AQS; sign -1; vertices AES -1; APS -1; ARS -1 | container EPR; inner Q; line AS |
| 2557 | bary | outer EPS; fans PQS, EQS, EPQ; target AEQ; sign 1; vertices none 0; AEP 1; AES 1 | container EPS; inner Q; line AE |
| 2575 | bary | outer EPS; fans PQS, EQS, EPQ; target FHQ; sign 1; vertices EFH 1; FHP 1; FHS 1 | container EPS; inner Q; line FH |
| 2722 | four | -1 * AFR + 1 * ARS + 1 * AFS + 1 * FRS = 0 | vertices AFRS |
| 2783 | four | 1 * EFH + -1 * EHQ + -1 * EFQ + -1 * FHQ = 0 | vertices EFHQ |
| 2791 | four | -1 * EFR + 1 * ERS + 1 * EFS + 1 * FRS = 0 | vertices EFRS |
| 2797 | four | -1 * EPQ + -1 * EQR + 1 * EPR + -1 * PQR = 0 | vertices EPQR |
| 2798 | four | -1 * EPQ + -1 * EQS + 1 * EPS + -1 * PQS = 0 | vertices EPQS |
| 2808 | four | 1 * FPR + -1 * FRS + -1 * FPS + -1 * PRS = 0 | vertices FPRS |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 244:223 | AFS | hi | 638339/1000000 | 12766760681/20000000000 | 11 | 244:49, 244:200, 244:68 |
| 244:239 | AFQ | lo | 14187/100000 | 22831197750/160929771913 | 221 | 244:18, 244:156, 244:30, 244:130, 244:115 |
| 244:245 | AFS | lo | 23681/200000 | 1461681/12344680 | 385 | 244:40, 244:200, 244:68, 244:160, 244:181 |
| 244:246 | ERS | lo | 11449/100000 | 112437/982060 | 385 | 244:40, 244:200, 244:68, 244:160, 244:223 |
| 244:249 | AEQ | lo | 1931/15625 | 1498997901/12129320000 | 412 | 244:34, 244:178, 244:40, 244:170, 244:175 |
| 244:257 | ACR | lo | 383999/1000000 | 21119948323231/55000000000000 | 1378 | 244:38, 244:123 |
| 244:258 | ACS | lo | 348627/1000000 | 17186103247587427/49296500000000000 | 1383 | 244:40, 244:125 |
| 244:261 | EPQ | lo | 96173/1000000 | 86193981/896233000 | 1752 | 244:21, 244:136, 244:52, 244:22, 244:249, 244:120, 244:164 |
| 244:263 | FPS | lo | 23909/250000 | 42856167/448116500 | 1759 | 244:21, 244:136, 244:52, 244:22, 244:245, 244:134, 244:188 |
| 244:271 | EQR | lo | 110367/1000000 | 49457493/448116500 | 1894 | 244:31, 244:156, 244:239, 244:249, 244:38, 244:158 |
| 244:328 | AQS | lo | 85773/500000 | 121837719/710233000 | 2527 | 244:173, 244:212, 244:271, 244:261, 244:40, 244:62, 244:68 |
| 244:332 | AEQ | lo | 124133/1000000 | 1505649261/12129320000 | 2557 | 244:175, 244:214, 244:178, 244:261, 244:34, 244:40 |
| 244:338 | FHQ | lo | 124869/1000000 | 37864671/303233000 | 2575 | 244:175, 244:214, 244:178, 244:261, 244:152, 244:182, 244:188 |
| 244:351 | AFR | lo | 60881/200000 | 60881/200000 | 2722 | 244:68, 244:245, 244:200 |
| 244:352 | EFH | lo | 310869/1000000 | 310869/1000000 | 2783 | 244:164, 244:156, 244:338 |
| 244:353 | EFR | lo | 30049/100000 | 30049/100000 | 2791 | 244:246, 244:160, 244:200 |
| 244:356 | FPR | lo | 70409/250000 | 70409/250000 | 2808 | 244:200, 244:263, 244:216 |
| 244:360 | ABR | lo | 51741/500000 | 18548943/179246600 | 123 | 244:2, 244:351, 244:4, 244:38, 244:31 |
| 244:364 | AHR | lo | 166657/1000000 | 29872809/179246600 | 349 | 244:32, 244:351, 244:38, 244:42, 244:31 |
| 244:367 | EQR | lo | 56757/500000 | 10173577517/89623300000 | 372 | 244:332, 244:353, 244:38, 244:156, 244:31 |
| 244:372 | EPQ | lo | 9623/100000 | 43122519/448116500 | 1752 | 244:21, 244:136, 244:52, 244:22, 244:332, 244:120, 244:164 |
| 244:395 | FHQ | lo | 70081/500000 | 55536946737/396233000000 | 2077 | 244:41, 244:178, 244:328, 244:332, 244:42, 244:352, 244:188 |
| 244:403 | AHS | lo | 123063/1000000 | 98848824896877/803233590289000 | 2415 | 244:159, 244:200, 244:246, 244:160, 244:32, 244:42, 244:364 |
| 244:406 | ABQ | lo | 4721/50000 | 3353017593/35511650000 | 2521 | 244:173, 244:212, 244:367, 244:372, 244:2, 244:8, 244:360 |
| 244:410 | AEQ | lo | 62099/500000 | 150643911/1212932000 | 2557 | 244:175, 244:214, 244:178, 244:372, 244:34, 244:40 |
| 244:420 | EFH | lo | 163081/500000 | 163081/500000 | 2783 | 244:164, 244:156, 244:395 |
| 244:435 | EPQ | lo | 96237/1000000 | 86251083/896233000 | 1752 | 244:21, 244:136, 244:52, 244:22, 244:410, 244:120, 244:164 |
| 244:450 | FHQ | lo | 8967/62500 | 28424336613/198116500000 | 2077 | 244:41, 244:178, 244:328, 244:410, 244:42, 244:420, 244:188 |
| 244:461 | AEQ | lo | 62103/500000 | 1506536109/12129320000 | 2557 | 244:175, 244:214, 244:178, 244:435, 244:34, 244:40 |
| 244:467 | EFH | lo | 5148/15625 | 5148/15625 | 2783 | 244:164, 244:156, 244:450 |
| 244:476 | EQR | lo | 113539/1000000 | 5087885547/44811650000 | 372 | 244:461, 244:353, 244:38, 244:156, 244:31 |
| 244:481 | EPQ | lo | 48119/500000 | 86251827/896233000 | 1752 | 244:21, 244:136, 244:52, 244:22, 244:461, 244:120, 244:164 |
| 244:495 | FHQ | lo | 144189/1000000 | 1785393183/12382281250 | 2077 | 244:41, 244:178, 244:328, 244:461, 244:42, 244:467, 244:188 |
| 244:506 | AEQ | lo | 124207/1000000 | 753274983/6064660000 | 2557 | 244:175, 244:214, 244:178, 244:481, 244:34, 244:40 |
| 244:512 | EFH | lo | 330189/1000000 | 330189/1000000 | 2783 | 244:164, 244:156, 244:495 |
| 244:513 | EPR | lo | 302777/1000000 | 302777/1000000 | 2797 | 244:481, 244:476, 244:212 |
| 244:514 | EPS | lo | 141119/500000 | 141119/500000 | 2798 | 244:481, 244:178, 244:214 |
| 244:535 | FHQ | lo | 18043/125000 | 57194081097/396233000000 | 2077 | 244:41, 244:178, 244:328, 244:506, 244:42, 244:512, 244:188 |
| 244:542 | EFH | lo | 41293/125000 | 41293/125000 | 2783 | 244:164, 244:156, 244:535 |
| 244:560 | FHQ | lo | 72189/500000 | 7150921989/49529125000 | 2077 | 244:41, 244:178, 244:328, 244:506, 244:42, 244:542, 244:188 |
| 244:567 | EFH | lo | 165189/500000 | 165189/500000 | 2783 | 244:164, 244:156, 244:560 |
| 244:585 | FHQ | lo | 28877/200000 | 28605146097/198116500000 | 2077 | 244:41, 244:178, 244:328, 244:506, 244:42, 244:567, 244:188 |
| 244:589 | EFH | lo | 66077/200000 | 66077/200000 | 2783 | 244:164, 244:156, 244:585 |
| 244:606 | FHQ | lo | 72193/500000 | 11442178521/79246600000 | 2077 | 244:41, 244:178, 244:328, 244:506, 244:42, 244:589, 244:188 |
| 244:610 | EFH | lo | 165193/500000 | 165193/500000 | 2783 | 244:164, 244:156, 244:606 |
| 244:616 | FHQ | lo | 144387/1000000 | 28605489189/198116500000 | 2077 | 244:41, 244:178, 244:328, 244:506, 244:42, 244:610, 244:188 |
| 244:617 | EFH | lo | 330387/1000000 | 330387/1000000 | 2783 | 244:164, 244:156, 244:616 |
| 244:619 | EHS | lo | 284363/1000000 | 5097112659/17924660000 | 355 | 244:32, 244:160, 244:40, 244:617, 244:31 |
