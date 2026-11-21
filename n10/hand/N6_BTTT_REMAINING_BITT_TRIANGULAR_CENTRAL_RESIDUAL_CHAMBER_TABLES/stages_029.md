# BITT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 145

| Property | Value |
| --- | --- |
| Scope | root/EHQ-/BEP+/BFP+/CFQ+/PQR- |
| Packet | forest:root/EHQ-/BEP+/BFP+/CFQ+/PQR- |
| Index | 8 |
| Context | 59 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 144 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 7469/62500 | 59/125 | 7469/62500 | 59/125 |
| b | 44357/200000 | 59939/100000 | 44357/200000 | 59939/100000 |
| c | 352767/500000 | 1/1 | 352767/500000 | 1/1 |
| e | 279/1000 | 59/125 | 279/1000 | 59/125 |
| f | 279/1000 | 59939/100000 | 279/1000 | 59939/100000 |
| h | 135501/250000 | 1/1 | 135501/250000 | 1/1 |
| p | 28841/125000 | 249851/500000 | 28841/125000 | 249851/500000 |
| q | 152787/1000000 | 379/1000 | 152787/1000000 | 379/1000 |
| u | 359747/1000000 | 606203/1000000 | 359747/1000000 | 606203/1000000 |
| v | 98121/200000 | 907/1000 | 98121/200000 | 907/1000 |
| r | 67961/100000 | 1/1 | 67961/100000 | 1/1 |
| w | 361231/500000 | 1/1 | 361231/500000 | 1/1 |
| j | 589591/1000000 | 871013/1000000 | 589591/1000000 | 871013/1000000 |
| k | 268487/500000 | 171473/200000 | 268487/500000 | 171473/200000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 8 | AC_ABH_ABH_0 | bitt ["anchor-cap","ABH","ABH",0,[]] | `-93/1000 + 1/1 * b` |
| 11 | AC_ABP_ABE_0 | bitt ["anchor-cap","ABP","ABE",0,[]] | `-93/1000 + 1/1 * e` |
| 12 | AC_ABP_ABF_0 | bitt ["anchor-cap","ABP","ABF",0,[]] | `-93/1000 + 1/1 * f` |
| 23 | AC_ACP_ACF_0 | bitt ["anchor-cap","ACP","ACF",0,[]] | `-93/1000 + 1/1 * c` |
| 31 | AC_AEQ_AEF_0 | bitt ["anchor-cap","AEQ","AEF",0,[]] | `907/1000 + -1/1 * a` |
| 53 | AC_BCP_BCH_0 | bitt ["anchor-cap","BCP","BCH",0,[]] | `-93/1000 + 1/1 * h` |
| 62 | AC_BEQ_BEF_0 | bitt ["anchor-cap","BEQ","BEF",0,[]] | `907/1000 + -1/1 * b` |
| 80 | AC_CEF_CEF_0 | bitt ["anchor-cap","CEF","CEF",0,[]] | `907/1000 + -1/1 * f` |
| 104 | AC_EFQ_EFH_0 | bitt ["anchor-cap","EFQ","EFH",0,[]] | `907/1000 + -1/1 * e` |
| 136 | ea | bitt ["contact-order","ea"] | `1/1 * e + -1/1 * a` |
| 137 | he | bitt ["contact-order","he"] | `1/1 * h + -1/1 * e` |
| 138 | fb | bitt ["contact-order","fb"] | `1/1 * f + -1/1 * b` |
| 139 | cf | bitt ["contact-order","cf"] | `1/1 * c + -1/1 * f` |
| 140 | sym | bitt ["contact-order","sym"] | `1/1 * f + -1/1 * e` |
| 141 | lower-area | bitt ["endpoint-lower","135501/250000"] | `1/1 * c * h + -135501/250000` |
| 142 | lower-quad | bitt ["lower-quad","BITT"] | `1/1 * c * h + -1/1 * a * b + -279/625` |
| 143 | upper-quad | bitt ["upper-quad","BITT"] | `346/625 + -1/1 * c * h + 1/1 * f * h + 1/1 * c * e + -1/1 * e * f` |
| 144 | top-area | bitt ["top-hull","-"] | `721/1000 + -1/1 * f + -1/1 * e + 1/1 * e * f` |
| 147 | lower-sum | bitt ["lower-sum"] | `907/1000 + -1/1 * p + -1/1 * q` |
| 148 | central-budget | bitt ["central-budget","1/1"] | `721/1000 * c * h + -907/1000 * b * h + -907/1000 * a * c + 1093/1000 * a * b` |
| 151 | central-x | bitt ["central-lower-x"] | `1/1 * c * h * p + -1/1 * b * h * p + -93/1000 * c + -93/1000 * b` |
| 152 | central-y | bitt ["central-lower-y"] | `1/1 * c * h * q + -1/1 * a * c * q + -93/1000 * h + -93/1000 * a` |
| 155 | WBARY_RS_2 | bitt ["weighted-barycentric","R","S",["1/1","1/1","1/1"],"519841/93000",2] | `519841/93000 * k + -1/1 + -333841/93000 * e + -1/1 * w` |
| 157 | SUP_ABE_ABC_ACE | bitt ["support-envelope",["quad","ABCE",["P"],"149/20"],"ABE","ABC","ACE","59/125"] | `4417/20000 * a * b + -4417/20000 * a * c + -13857/20000 * b * e + 13857/20000 * c * e` |
| 160 | SUP_ACE_ABE_BCE | bitt ["support-envelope",["quad","EABC",["P"],"1457/250"],"ACE","ABE","BCE","59/125"] | `-17501/250000 * b * e + -59/125 * a * b + -17501/250000 * a + 135501/250000 * a * c` |
| 258 | SUP_ACR_CFR_ACF | bitt ["support-envelope",["quad","CRFA",["P","Q"],"139/10"],"ACR","CFR","ACF","1/1"] | `-1/1 * f * w + -2927/10000 * c * w + 1/1 * r + 2927/10000 * c + -12927/10000 * a * r + 12927/10000 * a * f` |
| 335 | SUP_CFP_BFP_BCF | bitt ["support-envelope",["quad","FPBC",["Q"],"149/20"],"CFP","BFP","BCF","70806399993/100000000000"] | `1521399993/100000000000 * f * q + -70806399993/100000000000 * b * q + -1521399993/100000000000 * p + 1521399993/100000000000 * b + 13857/20000 * c * q` |
| 592 | SUP_CEQ_ACE_AEQ | bitt ["support-envelope",["pentagon","EQHAC"],"CEQ","ACE","AEQ","215146063/500000000"] | `-296353937/500000000 * c * e + -215146063/500000000 * a * c + -296353937/500000000 * a + 1023/1000 * c * v + 1023/1000 * a * u` |
| 599 | SUP_ACE_ACQ_CEQ | bitt ["support-envelope",["pentagon","CESQA"],"ACE","ACQ","CEQ","59/125"] | `-551/1000 * c * v + 551/1000 * a * c + 59/125 * a * u + -1023/1000 * a + 1023/1000 * v + -1023/1000 * e * u` |
| 617 | SUP_FHS_EFS_EFH | bitt ["support-envelope",["pentagon","FHAES"],"FHS","EFS","EFH","25120962603/62500000000"] | `38816537397/62500000000 * f * k + -38816537397/62500000000 * e * f + 25120962603/62500000000 * k + -38816537397/62500000000 * j + 38816537397/62500000000 + -25120962603/62500000000 * e * j + 1023/1000 * h * j + -1023/1000 * h` |
| 662 | SUP_BCE_BCF_CEF | bitt ["support-envelope",["pentagon","CERFB"],"BCE","BCF","CEF","9182937/25000000"] | `-16392063/25000000 * c + -9182937/25000000 * b + 1023/1000 * b * e + 1023/1000 + -1023/1000 * e * f` |
| 735 | SUP_CEQ_CEP_EPQ | bitt ["support-envelope",["pentagon","EQHPC"],"CEQ","CEP","EPQ","215146063/500000000"] | `-296353937/500000000 * q + -215146063/500000000 * c * q + 296353937/500000000 * e * p + -296353937/500000000 * c * e + 1023/1000 * c * v + -1023/1000 * p * v + 1023/1000 * q * u` |
| 742 | SUP_CEP_CPQ_CEQ | bitt ["support-envelope",["pentagon","CERQP"],"CEP","CPQ","CEQ","5673381/15625000"] | `-5673381/15625000 * p * v + -5155497/7812500 * c * v + 5673381/15625000 * q * u + 5155497/7812500 * c * q + -1023/1000 * q + 1023/1000 * e * p + 1023/1000 * v + -1023/1000 * e * u` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |


### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 145:0 | ABC | lo | 93/1000 | occupants none |
| 145:1 | ABC | hi | 9182937/25000000 | vertex maximum 9182937/25000000 |
| 145:2 | ABE | lo | 35917/125000 | earlier 144:2; ABE; lo; 35917/125000 |
| 145:3 | ABE | hi | 59/125 | vertex maximum 59/125 |
| 145:4 | ABF | lo | 80003/200000 | earlier 144:4; ABF; lo; 80003/200000 |
| 145:5 | ABF | hi | 59939/100000 | vertex maximum 59939/100000 |
| 145:8 | ABP | lo | 93/1000 | occupants none |
| 145:9 | ABP | hi | 13453480953/62500000000 | vertex maximum 13453480953/62500000000 |
| 145:10 | ABQ | lo | 929/3125 | earlier 144:10; ABQ; lo; 929/3125 |
| 145:12 | ABR | lo | 186499/500000 | earlier 144:12; ABR; lo; 186499/500000 |
| 145:13 | ABR | hi | 4927987/6250000 | vertex maximum 4927987/6250000 |
| 145:14 | ABS | lo | 323087/1000000 | earlier 144:263; ABS; lo; 323087/1000000 |
| 145:16 | ACE | lo | 83607/250000 | earlier 144:283; ACE; lo; 83607/250000 |
| 145:17 | ACE | hi | 59/125 | vertex maximum 59/125 |
| 145:18 | ACF | lo | 13857/20000 | occupants P, Q |
| 145:19 | ACF | hi | 5950784391/6250000000 | vertex maximum 5950784391/6250000000 |
| 145:20 | ACH | lo | 279/1000 | occupants P |
| 145:22 | ACP | lo | 93/1000 | occupants none |
| 145:24 | ACQ | lo | 34989/100000 | earlier 144:24; ACQ; lo; 34989/100000 |
| 145:25 | ACQ | hi | 332721/500000 | earlier 144:25; ACQ; hi; 332721/500000 |
| 145:26 | ACR | lo | 490337/1000000 | earlier 144:284; ACR; lo; 490337/1000000 |
| 145:27 | ACR | hi | 1/1 | vertex maximum 1/1 |
| 145:28 | ACS | lo | 213221/500000 | earlier 144:290; ACS; lo; 213221/500000 |
| 145:30 | AEF | lo | 78667/200000 | earlier 144:30; AEF; lo; 78667/200000 |
| 145:31 | AEF | hi | 104499577/125000000 | vertex maximum 104499577/125000000 |
| 145:33 | AEH | hi | 55031/62500 | vertex maximum 55031/62500 |
| 145:34 | AEP | lo | 93/1000 | occupants none |
| 145:40 | AES | lo | 143453/1000000 | earlier 144:40; AES; lo; 143453/1000000 |
| 145:42 | AFH | lo | 93/1000 | occupants none |
| 145:43 | AFH | hi | 3298503109/6250000000 | vertex maximum 3298503109/6250000000 |
| 145:44 | AFP | lo | 42803/200000 | earlier 144:44; AFP; lo; 42803/200000 |
| 145:46 | AFQ | lo | 19417/125000 | earlier 144:46; AFQ; lo; 19417/125000 |
| 145:48 | AFR | lo | 142517/1000000 | earlier 144:48; AFR; lo; 142517/1000000 |
| 145:50 | AFS | lo | 42667/125000 | earlier 144:50; AFS; lo; 42667/125000 |
| 145:52 | AHP | lo | 93/1000 | occupants none |
| 145:55 | AHQ | hi | 33359957293/62500000000 | vertex maximum 33359957293/62500000000 |
| 145:60 | APQ | lo | 1391/12500 | earlier 144:60; APQ; lo; 1391/12500 |
| 145:61 | APQ | hi | 61589/250000 | earlier 144:248; APQ; hi; 61589/250000 |
| 145:66 | AQS | lo | 93/1000 | occupants none |
| 145:70 | BCE | lo | 93/1000 | occupants none |
| 145:71 | BCE | hi | 9182937/25000000 | vertex maximum 9182937/25000000 |
| 145:72 | BCF | lo | 21627/62500 | earlier 144:72; BCF; lo; 21627/62500 |
| 145:73 | BCF | hi | 744883/1000000 | earlier 144:264; BCF; hi; 744883/1000000 |
| 145:74 | BCH | lo | 283709/1000000 | earlier 144:265; BCH; lo; 283709/1000000 |
| 145:75 | BCH | hi | 155643/200000 | vertex maximum 155643/200000 |
| 145:76 | BCP | lo | 97709/1000000 | earlier 144:231; BCP; lo; 97709/1000000 |
| 145:78 | BCQ | lo | 5001/31250 | earlier 144:78; BCQ; lo; 5001/31250 |
| 145:79 | BCQ | hi | 270111/500000 | earlier 144:279; BCQ; hi; 270111/500000 |
| 145:80 | BCR | lo | 115327/1000000 | earlier 144:80; BCR; lo; 115327/1000000 |
| 145:81 | BCR | hi | 386351/500000 | earlier 144:266; BCR; hi; 386351/500000 |
| 145:84 | BEF | lo | 342451/1000000 | earlier 144:84; BEF; lo; 342451/1000000 |
| 145:86 | BEH | lo | 310671/1000000 | earlier 144:285; BEH; lo; 310671/1000000 |
| 145:87 | BEH | hi | 11036219/12500000 | vertex maximum 11036219/12500000 |
| 145:88 | BEP | lo | 12667/125000 | earlier 144:88; BEP; lo; 12667/125000 |
| 145:89 | BEP | hi | 66919/250000 | earlier 144:89; BEP; hi; 66919/250000 |
| 145:90 | BEQ | lo | 156451/1000000 | earlier 144:90; BEQ; lo; 156451/1000000 |
| 145:91 | BEQ | hi | 531041/1000000 | earlier 144:249; BEQ; hi; 531041/1000000 |
| 145:92 | BER | lo | 129223/1000000 | earlier 144:92; BER; lo; 129223/1000000 |
| 145:96 | BFH | lo | 185141/500000 | earlier 144:96; BFH; lo; 185141/500000 |
| 145:97 | BFH | hi | 59939/100000 | vertex maximum 59939/100000 |
| 145:98 | BFP | lo | 93/1000 | occupants none |
| 145:100 | BFQ | lo | 93/1000 | occupants none |
| 145:103 | BFR | hi | 73687933667/100000000000 | vertex maximum 73687933667/100000000000 |
| 145:106 | BHP | lo | 93/1000 | occupants none |
| 145:108 | BHQ | lo | 333159/1000000 | earlier 144:108; BHQ; lo; 333159/1000000 |
| 145:109 | BHQ | hi | 117115399/200000000 | vertex maximum 117115399/200000000 |
| 145:110 | BHR | lo | 20267/50000 | earlier 144:110; BHR; lo; 20267/50000 |
| 145:111 | BHR | hi | 1/1 | vertex maximum 1/1 |
| 145:114 | BPQ | lo | 93/1000 | occupants none |
| 145:116 | BPR | lo | 109851/1000000 | earlier 144:116; BPR; lo; 109851/1000000 |
| 145:120 | BQR | lo | 112969/1000000 | earlier 144:120; BQR; lo; 112969/1000000 |
| 145:121 | BQR | hi | 134567/250000 | earlier 144:250; BQR; hi; 134567/250000 |
| 145:123 | BQS | hi | 420403/1000000 | earlier 144:267; BQS; hi; 420403/1000000 |
| 145:124 | CEF | lo | 34497/200000 | earlier 144:124; CEF; lo; 34497/200000 |
| 145:125 | CEF | hi | 15493439/31250000 | vertex maximum 15493439/31250000 |
| 145:126 | CEH | lo | 10219/62500 | earlier 144:126; CEH; lo; 10219/62500 |
| 145:127 | CEH | hi | 19608689/31250000 | vertex maximum 19608689/31250000 |
| 145:128 | CEP | lo | 37107/250000 | earlier 144:270; CEP; lo; 37107/250000 |
| 145:129 | CEP | hi | 143/500 | earlier 144:129; CEP; hi; 143/500 |
| 145:130 | CEQ | lo | 138883/1000000 | earlier 144:130; CEQ; lo; 138883/1000000 |
| 145:132 | CER | lo | 93/1000 | occupants none |
| 145:134 | CES | lo | 93/1000 | occupants none |
| 145:135 | CES | hi | 49813/200000 | earlier 144:135; CES; hi; 49813/200000 |
| 145:136 | CFH | lo | 301157/1000000 | earlier 144:286; CFH; lo; 301157/1000000 |
| 145:137 | CFH | hi | 19571694439/25000000000 | vertex maximum 19571694439/25000000000 |
| 145:140 | CFQ | lo | 93/1000 | occupants none |
| 145:142 | CFR | lo | 134393/500000 | earlier 144:142; CFR; lo; 134393/500000 |
| 145:143 | CFR | hi | 721/1000 | vertex maximum 721/1000 |
| 145:146 | CHP | lo | 93/1000 | occupants none |
| 145:149 | CHQ | hi | 62343/125000 | earlier 144:149; CHQ; hi; 62343/125000 |
| 145:150 | CHR | lo | 23551/100000 | earlier 144:150; CHR; lo; 23551/100000 |
| 145:151 | CHR | hi | 1/1 | vertex maximum 1/1 |
| 145:154 | CPQ | lo | 3399/25000 | earlier 144:154; CPQ; lo; 3399/25000 |
| 145:155 | CPQ | hi | 356939/1000000 | earlier 144:155; CPQ; hi; 356939/1000000 |
| 145:157 | CPR | hi | 587609/1000000 | earlier 144:157; CPR; hi; 587609/1000000 |
| 145:164 | EFH | lo | 279/1000 | occupants Q |
| 145:166 | EFP | lo | 9837/31250 | earlier 144:166; EFP; lo; 9837/31250 |
| 145:167 | EFP | hi | 120849/200000 | earlier 144:238; EFP; hi; 120849/200000 |
| 145:168 | EFQ | lo | 93/1000 | occupants none |
| 145:170 | EFR | lo | 7221/25000 | earlier 144:170; EFR; lo; 7221/25000 |
| 145:172 | EFS | lo | 93/1000 | occupants none |
| 145:174 | EHP | lo | 23267/200000 | earlier 144:272; EHP; lo; 23267/200000 |
| 145:176 | EHQ | lo | 93/1000 | occupants none |
| 145:178 | EHR | lo | 336351/1000000 | earlier 144:178; EHR; lo; 336351/1000000 |
| 145:179 | EHR | hi | 721/1000 | vertex maximum 721/1000 |
| 145:180 | EHS | lo | 55043/500000 | earlier 144:180; EHS; lo; 55043/500000 |
| 145:181 | EHS | hi | 223331/500000 | earlier 144:281; EHS; hi; 223331/500000 |
| 145:182 | EPQ | lo | 8049/62500 | earlier 144:182; EPQ; lo; 8049/62500 |
| 145:184 | EPR | lo | 14803/50000 | earlier 144:184; EPR; lo; 14803/50000 |
| 145:188 | EQR | lo | 35491/125000 | earlier 144:188; EQR; lo; 35491/125000 |
| 145:190 | EQS | lo | 12241/125000 | earlier 144:190; EQS; lo; 12241/125000 |
| 145:192 | ERS | lo | 93/1000 | occupants none |
| 145:194 | FHP | lo | 92141/500000 | earlier 144:194; FHP; lo; 92141/500000 |
| 145:195 | FHP | hi | 41339/100000 | earlier 144:230; FHP; hi; 41339/100000 |
| 145:196 | FHQ | lo | 93/1000 | occupants none |
| 145:198 | FHR | lo | 93/1000 | occupants none |
| 145:202 | FPQ | lo | 93/1000 | occupants none |
| 145:204 | FPR | lo | 70673/250000 | earlier 144:204; FPR; lo; 70673/250000 |
| 145:206 | FPS | lo | 17843/62500 | earlier 144:206; FPS; lo; 17843/62500 |
| 145:208 | FQR | lo | 24173/250000 | earlier 144:208; FQR; lo; 24173/250000 |
| 145:209 | FQR | hi | 73454759/200000000 | vertex maximum 73454759/200000000 |
| 145:210 | FQS | lo | 93/1000 | occupants none |
| 145:222 | PQR | lo | 93/1000 | occupants none |
| 145:228 | QRS | lo | 93/1000 | occupants none |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |


### Coordinate certificate sources

| Source | Kind | Source witness | Polynomial |
| --- | --- | --- | --- |
| 0 | bound | `{"direction":"lo","ref":"145:0","triangle":"ABC","value":"93/1000"}` | `-1 * a * b + 1 * a * c + -93/1000` |
| 1 | bound | `{"direction":"hi","ref":"145:1","triangle":"ABC","value":"9182937/25000000"}` | `9182937/25000000 + 1 * a * b + -1 * a * c` |
| 2 | bound | `{"direction":"lo","ref":"145:2","triangle":"ABE","value":"35917/125000"}` | `1 * b * e + -1 * a * b + 1 * a + -35917/125000` |
| 3 | bound | `{"direction":"hi","ref":"145:3","triangle":"ABE","value":"59/125"}` | `59/125 + -1 * b * e + 1 * a * b + -1 * a` |
| 4 | bound | `{"direction":"lo","ref":"145:4","triangle":"ABF","value":"80003/200000"}` | `1 * b + -1 * a * b + 1 * a * f + -80003/200000` |
| 5 | bound | `{"direction":"hi","ref":"145:5","triangle":"ABF","value":"59939/100000"}` | `59939/100000 + -1 * b + 1 * a * b + -1 * a * f` |
| 8 | bound | `{"direction":"lo","ref":"145:8","triangle":"ABP","value":"93/1000"}` | `1 * b * q + -1 * a * b + 1 * a * p + -93/1000` |
| 9 | bound | `{"direction":"hi","ref":"145:9","triangle":"ABP","value":"13453480953/62500000000"}` | `13453480953/62500000000 + -1 * b * q + 1 * a * b + -1 * a * p` |
| 10 | bound | `{"direction":"lo","ref":"145:10","triangle":"ABQ","value":"929/3125"}` | `1 * b * v + -1 * a * b + 1 * a * u + -929/3125` |
| 12 | bound | `{"direction":"lo","ref":"145:12","triangle":"ABR","value":"186499/500000"}` | `1 * b * w + -1 * a * b + 1 * a * r + -186499/500000` |
| 13 | bound | `{"direction":"hi","ref":"145:13","triangle":"ABR","value":"4927987/6250000"}` | `4927987/6250000 + -1 * b * w + 1 * a * b + -1 * a * r` |
| 14 | bound | `{"direction":"lo","ref":"145:14","triangle":"ABS","value":"323087/1000000"}` | `1 * b * k + -1 * a * b + 1 * a * j + -323087/1000000` |
| 16 | bound | `{"direction":"lo","ref":"145:16","triangle":"ACE","value":"83607/250000"}` | `1 * c * e + -1 * a * c + 1 * a + -83607/250000` |
| 17 | bound | `{"direction":"hi","ref":"145:17","triangle":"ACE","value":"59/125"}` | `59/125 + -1 * c * e + 1 * a * c + -1 * a` |
| 18 | bound | `{"direction":"lo","ref":"145:18","triangle":"ACF","value":"13857/20000"}` | `1 * c + -1 * a * c + 1 * a * f + -13857/20000` |
| 19 | bound | `{"direction":"hi","ref":"145:19","triangle":"ACF","value":"5950784391/6250000000"}` | `5950784391/6250000000 + -1 * c + 1 * a * c + -1 * a * f` |
| 20 | bound | `{"direction":"lo","ref":"145:20","triangle":"ACH","value":"279/1000"}` | `1 * c * h + -1 * a * c + -279/1000` |
| 22 | bound | `{"direction":"lo","ref":"145:22","triangle":"ACP","value":"93/1000"}` | `1 * c * q + -1 * a * c + 1 * a * p + -93/1000` |
| 24 | bound | `{"direction":"lo","ref":"145:24","triangle":"ACQ","value":"34989/100000"}` | `1 * c * v + -1 * a * c + 1 * a * u + -34989/100000` |
| 25 | bound | `{"direction":"hi","ref":"145:25","triangle":"ACQ","value":"332721/500000"}` | `332721/500000 + -1 * c * v + 1 * a * c + -1 * a * u` |
| 26 | bound | `{"direction":"lo","ref":"145:26","triangle":"ACR","value":"490337/1000000"}` | `1 * c * w + -1 * a * c + 1 * a * r + -490337/1000000` |
| 27 | bound | `{"direction":"hi","ref":"145:27","triangle":"ACR","value":"1/1"}` | `1 + -1 * c * w + 1 * a * c + -1 * a * r` |
| 28 | bound | `{"direction":"lo","ref":"145:28","triangle":"ACS","value":"213221/500000"}` | `1 * c * k + -1 * a * c + 1 * a * j + -213221/500000` |
| 30 | bound | `{"direction":"lo","ref":"145:30","triangle":"AEF","value":"78667/200000"}` | `121333/200000 + -1 * a + -1 * e * f + 1 * a * f` |
| 31 | bound | `{"direction":"hi","ref":"145:31","triangle":"AEF","value":"104499577/125000000"}` | `-20500423/125000000 + 1 * a + 1 * e * f + -1 * a * f` |
| 33 | bound | `{"direction":"hi","ref":"145:33","triangle":"AEH","value":"55031/62500"}` | `55031/62500 + -1 * h + 1 * a` |
| 34 | bound | `{"direction":"lo","ref":"145:34","triangle":"AEP","value":"93/1000"}` | `-1 * q + 1 * a + 1 * e * p + -1 * a * p + -93/1000` |
| 40 | bound | `{"direction":"lo","ref":"145:40","triangle":"AES","value":"143453/1000000"}` | `1 * k + -1 * a + -1 * e * j + 1 * a * j + -143453/1000000` |
| 42 | bound | `{"direction":"lo","ref":"145:42","triangle":"AFH","value":"93/1000"}` | `1 * f * h + -1 * a * f + -93/1000` |
| 43 | bound | `{"direction":"hi","ref":"145:43","triangle":"AFH","value":"3298503109/6250000000"}` | `3298503109/6250000000 + -1 * f * h + 1 * a * f` |
| 44 | bound | `{"direction":"lo","ref":"145:44","triangle":"AFP","value":"42803/200000"}` | `-1 * f * q + 1 * a * f + 1 * p + -1 * a * p + -42803/200000` |
| 46 | bound | `{"direction":"lo","ref":"145:46","triangle":"AFQ","value":"19417/125000"}` | `-1 * f * v + 1 * a * f + 1 * u + -1 * a * u + -19417/125000` |
| 48 | bound | `{"direction":"lo","ref":"145:48","triangle":"AFR","value":"142517/1000000"}` | `-1 * f * w + 1 * a * f + 1 * r + -1 * a * r + -142517/1000000` |
| 50 | bound | `{"direction":"lo","ref":"145:50","triangle":"AFS","value":"42667/125000"}` | `-1 * f * k + 1 * a * f + 1 * j + -1 * a * j + -42667/125000` |
| 52 | bound | `{"direction":"lo","ref":"145:52","triangle":"AHP","value":"93/1000"}` | `1 * h * p + -1 * a * p + -93/1000` |
| 55 | bound | `{"direction":"hi","ref":"145:55","triangle":"AHQ","value":"33359957293/62500000000"}` | `33359957293/62500000000 + -1 * h * u + 1 * a * u` |
| 60 | bound | `{"direction":"lo","ref":"145:60","triangle":"APQ","value":"1391/12500"}` | `1 * p * v + -1 * a * p + -1 * q * u + 1 * a * u + -1391/12500` |
| 61 | bound | `{"direction":"hi","ref":"145:61","triangle":"APQ","value":"61589/250000"}` | `61589/250000 + -1 * p * v + 1 * a * p + 1 * q * u + -1 * a * u` |
| 66 | bound | `{"direction":"lo","ref":"145:66","triangle":"AQS","value":"93/1000"}` | `-1 * u * k + 1 * a * u + 1 * v * j + -1 * a * j + -93/1000` |
| 70 | bound | `{"direction":"lo","ref":"145:70","triangle":"BCE","value":"93/1000"}` | `1 * c * e + -1 * b * e + -93/1000` |
| 71 | bound | `{"direction":"hi","ref":"145:71","triangle":"BCE","value":"9182937/25000000"}` | `9182937/25000000 + -1 * c * e + 1 * b * e` |
| 72 | bound | `{"direction":"lo","ref":"145:72","triangle":"BCF","value":"21627/62500"}` | `1 * c + -1 * b + -21627/62500` |
| 73 | bound | `{"direction":"hi","ref":"145:73","triangle":"BCF","value":"744883/1000000"}` | `744883/1000000 + -1 * c + 1 * b` |
| 74 | bound | `{"direction":"lo","ref":"145:74","triangle":"BCH","value":"283709/1000000"}` | `1 * c * h + -1 * b * h + -283709/1000000` |
| 75 | bound | `{"direction":"hi","ref":"145:75","triangle":"BCH","value":"155643/200000"}` | `155643/200000 + -1 * c * h + 1 * b * h` |
| 76 | bound | `{"direction":"lo","ref":"145:76","triangle":"BCP","value":"97709/1000000"}` | `1 * c * q + -1 * b * q + -97709/1000000` |
| 78 | bound | `{"direction":"lo","ref":"145:78","triangle":"BCQ","value":"5001/31250"}` | `1 * c * v + -1 * b * v + -5001/31250` |
| 79 | bound | `{"direction":"hi","ref":"145:79","triangle":"BCQ","value":"270111/500000"}` | `270111/500000 + -1 * c * v + 1 * b * v` |
| 80 | bound | `{"direction":"lo","ref":"145:80","triangle":"BCR","value":"115327/1000000"}` | `1 * c * w + -1 * b * w + -115327/1000000` |
| 81 | bound | `{"direction":"hi","ref":"145:81","triangle":"BCR","value":"386351/500000"}` | `386351/500000 + -1 * c * w + 1 * b * w` |
| 84 | bound | `{"direction":"lo","ref":"145:84","triangle":"BEF","value":"342451/1000000"}` | `657549/1000000 + -1 * b + -1 * e * f + 1 * b * e` |
| 86 | bound | `{"direction":"lo","ref":"145:86","triangle":"BEH","value":"310671/1000000"}` | `1 * h + -1 * b * h + 1 * b * e + -310671/1000000` |
| 87 | bound | `{"direction":"hi","ref":"145:87","triangle":"BEH","value":"11036219/12500000"}` | `11036219/12500000 + -1 * h + 1 * b * h + -1 * b * e` |
| 88 | bound | `{"direction":"lo","ref":"145:88","triangle":"BEP","value":"12667/125000"}` | `1 * q + -1 * b * q + -1 * e * p + 1 * b * e + -12667/125000` |
| 89 | bound | `{"direction":"hi","ref":"145:89","triangle":"BEP","value":"66919/250000"}` | `66919/250000 + -1 * q + 1 * b * q + 1 * e * p + -1 * b * e` |
| 90 | bound | `{"direction":"lo","ref":"145:90","triangle":"BEQ","value":"156451/1000000"}` | `1 * v + -1 * b * v + -1 * e * u + 1 * b * e + -156451/1000000` |
| 91 | bound | `{"direction":"hi","ref":"145:91","triangle":"BEQ","value":"531041/1000000"}` | `531041/1000000 + -1 * v + 1 * b * v + 1 * e * u + -1 * b * e` |
| 92 | bound | `{"direction":"lo","ref":"145:92","triangle":"BER","value":"129223/1000000"}` | `1 * w + -1 * b * w + -1 * e * r + 1 * b * e + -129223/1000000` |
| 96 | bound | `{"direction":"lo","ref":"145:96","triangle":"BFH","value":"185141/500000"}` | `1 * f * h + -1 * b * h + 1 * b + -185141/500000` |
| 97 | bound | `{"direction":"hi","ref":"145:97","triangle":"BFH","value":"59939/100000"}` | `59939/100000 + -1 * f * h + 1 * b * h + -1 * b` |
| 98 | bound | `{"direction":"lo","ref":"145:98","triangle":"BFP","value":"93/1000"}` | `1 * f * q + -1 * b * q + -1 * p + 1 * b + -93/1000` |
| 100 | bound | `{"direction":"lo","ref":"145:100","triangle":"BFQ","value":"93/1000"}` | `-1 * f * v + 1 * b * v + 1 * u + -1 * b + -93/1000` |
| 103 | bound | `{"direction":"hi","ref":"145:103","triangle":"BFR","value":"73687933667/100000000000"}` | `73687933667/100000000000 + 1 * f * w + -1 * b * w + -1 * r + 1 * b` |
| 106 | bound | `{"direction":"lo","ref":"145:106","triangle":"BHP","value":"93/1000"}` | `1 * b * q + 1 * h * p + -1 * b * h + -93/1000` |
| 108 | bound | `{"direction":"lo","ref":"145:108","triangle":"BHQ","value":"333159/1000000"}` | `1 * b * v + 1 * h * u + -1 * b * h + -333159/1000000` |
| 109 | bound | `{"direction":"hi","ref":"145:109","triangle":"BHQ","value":"117115399/200000000"}` | `117115399/200000000 + -1 * b * v + -1 * h * u + 1 * b * h` |
| 110 | bound | `{"direction":"lo","ref":"145:110","triangle":"BHR","value":"20267/50000"}` | `1 * b * w + 1 * h * r + -1 * b * h + -20267/50000` |
| 111 | bound | `{"direction":"hi","ref":"145:111","triangle":"BHR","value":"1/1"}` | `1 + -1 * b * w + -1 * h * r + 1 * b * h` |
| 114 | bound | `{"direction":"lo","ref":"145:114","triangle":"BPQ","value":"93/1000"}` | `-1 * p * v + 1 * b * v + 1 * q * u + -1 * b * q + -93/1000` |
| 116 | bound | `{"direction":"lo","ref":"145:116","triangle":"BPR","value":"109851/1000000"}` | `-1 * p * w + 1 * b * w + 1 * q * r + -1 * b * q + -109851/1000000` |
| 120 | bound | `{"direction":"lo","ref":"145:120","triangle":"BQR","value":"112969/1000000"}` | `-1 * u * w + 1 * b * w + 1 * v * r + -1 * b * v + -112969/1000000` |
| 121 | bound | `{"direction":"hi","ref":"145:121","triangle":"BQR","value":"134567/250000"}` | `134567/250000 + 1 * u * w + -1 * b * w + -1 * v * r + 1 * b * v` |
| 123 | bound | `{"direction":"hi","ref":"145:123","triangle":"BQS","value":"420403/1000000"}` | `420403/1000000 + 1 * u * k + -1 * b * k + -1 * v * j + 1 * b * v` |
| 124 | bound | `{"direction":"lo","ref":"145:124","triangle":"CEF","value":"34497/200000"}` | `165503/200000 + -1 * c + -1 * e * f + 1 * c * e` |
| 125 | bound | `{"direction":"hi","ref":"145:125","triangle":"CEF","value":"15493439/31250000"}` | `-15756561/31250000 + 1 * c + 1 * e * f + -1 * c * e` |
| 126 | bound | `{"direction":"lo","ref":"145:126","triangle":"CEH","value":"10219/62500"}` | `1 * h + -1 * c * h + 1 * c * e + -10219/62500` |
| 127 | bound | `{"direction":"hi","ref":"145:127","triangle":"CEH","value":"19608689/31250000"}` | `19608689/31250000 + -1 * h + 1 * c * h + -1 * c * e` |
| 128 | bound | `{"direction":"lo","ref":"145:128","triangle":"CEP","value":"37107/250000"}` | `1 * q + -1 * c * q + -1 * e * p + 1 * c * e + -37107/250000` |
| 129 | bound | `{"direction":"hi","ref":"145:129","triangle":"CEP","value":"143/500"}` | `143/500 + -1 * q + 1 * c * q + 1 * e * p + -1 * c * e` |
| 130 | bound | `{"direction":"lo","ref":"145:130","triangle":"CEQ","value":"138883/1000000"}` | `1 * v + -1 * c * v + -1 * e * u + 1 * c * e + -138883/1000000` |
| 132 | bound | `{"direction":"lo","ref":"145:132","triangle":"CER","value":"93/1000"}` | `1 * w + -1 * c * w + -1 * e * r + 1 * c * e + -93/1000` |
| 134 | bound | `{"direction":"lo","ref":"145:134","triangle":"CES","value":"93/1000"}` | `1 * k + -1 * c * k + -1 * e * j + 1 * c * e + -93/1000` |
| 135 | bound | `{"direction":"hi","ref":"145:135","triangle":"CES","value":"49813/200000"}` | `49813/200000 + -1 * k + 1 * c * k + 1 * e * j + -1 * c * e` |
| 136 | bound | `{"direction":"lo","ref":"145:136","triangle":"CFH","value":"301157/1000000"}` | `1 * f * h + -1 * c * h + 1 * c + -301157/1000000` |
| 137 | bound | `{"direction":"hi","ref":"145:137","triangle":"CFH","value":"19571694439/25000000000"}` | `19571694439/25000000000 + -1 * f * h + 1 * c * h + -1 * c` |
| 140 | bound | `{"direction":"lo","ref":"145:140","triangle":"CFQ","value":"93/1000"}` | `1 * f * v + -1 * c * v + -1 * u + 1 * c + -93/1000` |
| 142 | bound | `{"direction":"lo","ref":"145:142","triangle":"CFR","value":"134393/500000"}` | `-1 * f * w + 1 * c * w + 1 * r + -1 * c + -134393/500000` |
| 143 | bound | `{"direction":"hi","ref":"145:143","triangle":"CFR","value":"721/1000"}` | `721/1000 + 1 * f * w + -1 * c * w + -1 * r + 1 * c` |
| 146 | bound | `{"direction":"lo","ref":"145:146","triangle":"CHP","value":"93/1000"}` | `-1 * c * q + -1 * h * p + 1 * c * h + -93/1000` |
| 149 | bound | `{"direction":"hi","ref":"145:149","triangle":"CHQ","value":"62343/125000"}` | `62343/125000 + -1 * c * v + -1 * h * u + 1 * c * h` |
| 150 | bound | `{"direction":"lo","ref":"145:150","triangle":"CHR","value":"23551/100000"}` | `1 * c * w + 1 * h * r + -1 * c * h + -23551/100000` |
| 151 | bound | `{"direction":"hi","ref":"145:151","triangle":"CHR","value":"1/1"}` | `1 + -1 * c * w + -1 * h * r + 1 * c * h` |
| 154 | bound | `{"direction":"lo","ref":"145:154","triangle":"CPQ","value":"3399/25000"}` | `-1 * p * v + 1 * c * v + 1 * q * u + -1 * c * q + -3399/25000` |
| 155 | bound | `{"direction":"hi","ref":"145:155","triangle":"CPQ","value":"356939/1000000"}` | `356939/1000000 + 1 * p * v + -1 * c * v + -1 * q * u + 1 * c * q` |
| 157 | bound | `{"direction":"hi","ref":"145:157","triangle":"CPR","value":"587609/1000000"}` | `587609/1000000 + 1 * p * w + -1 * c * w + -1 * q * r + 1 * c * q` |
| 164 | bound | `{"direction":"lo","ref":"145:164","triangle":"EFH","value":"279/1000"}` | `1 * f * h + -1 * e * f + -1 * h + 721/1000` |
| 166 | bound | `{"direction":"lo","ref":"145:166","triangle":"EFP","value":"9837/31250"}` | `1 * f * q + -1 * e * f + -1 * q + -1 * p + 21413/31250 + 1 * e * p` |
| 167 | bound | `{"direction":"hi","ref":"145:167","triangle":"EFP","value":"120849/200000"}` | `-79151/200000 + -1 * f * q + 1 * e * f + 1 * q + 1 * p + -1 * e * p` |
| 168 | bound | `{"direction":"lo","ref":"145:168","triangle":"EFQ","value":"93/1000"}` | `1 * f * v + -1 * e * f + -1 * v + -1 * u + 907/1000 + 1 * e * u` |
| 170 | bound | `{"direction":"lo","ref":"145:170","triangle":"EFR","value":"7221/25000"}` | `-1 * f * w + 1 * e * f + 1 * w + 1 * r + -32221/25000 + -1 * e * r` |
| 172 | bound | `{"direction":"lo","ref":"145:172","triangle":"EFS","value":"93/1000"}` | `-1 * f * k + 1 * e * f + 1 * k + 1 * j + -1093/1000 + -1 * e * j` |
| 174 | bound | `{"direction":"lo","ref":"145:174","triangle":"EHP","value":"23267/200000"}` | `-1 * q + -1 * h * p + 1 * h + 1 * e * p + -23267/200000` |
| 176 | bound | `{"direction":"lo","ref":"145:176","triangle":"EHQ","value":"93/1000"}` | `1 * v + 1 * h * u + -1 * h + -1 * e * u + -93/1000` |
| 178 | bound | `{"direction":"lo","ref":"145:178","triangle":"EHR","value":"336351/1000000"}` | `1 * w + 1 * h * r + -1 * h + -1 * e * r + -336351/1000000` |
| 179 | bound | `{"direction":"hi","ref":"145:179","triangle":"EHR","value":"721/1000"}` | `721/1000 + -1 * w + -1 * h * r + 1 * h + 1 * e * r` |
| 180 | bound | `{"direction":"lo","ref":"145:180","triangle":"EHS","value":"55043/500000"}` | `1 * k + 1 * h * j + -1 * h + -1 * e * j + -55043/500000` |
| 181 | bound | `{"direction":"hi","ref":"145:181","triangle":"EHS","value":"223331/500000"}` | `223331/500000 + -1 * k + -1 * h * j + 1 * h + 1 * e * j` |
| 182 | bound | `{"direction":"lo","ref":"145:182","triangle":"EPQ","value":"8049/62500"}` | `-1 * p * v + 1 * e * p + 1 * v + 1 * q * u + -1 * q + -1 * e * u + -8049/62500` |
| 184 | bound | `{"direction":"lo","ref":"145:184","triangle":"EPR","value":"14803/50000"}` | `-1 * p * w + 1 * e * p + 1 * w + 1 * q * r + -1 * q + -1 * e * r + -14803/50000` |
| 188 | bound | `{"direction":"lo","ref":"145:188","triangle":"EQR","value":"35491/125000"}` | `-1 * u * w + 1 * e * u + 1 * w + 1 * v * r + -1 * v + -1 * e * r + -35491/125000` |
| 190 | bound | `{"direction":"lo","ref":"145:190","triangle":"EQS","value":"12241/125000"}` | `-1 * u * k + 1 * e * u + 1 * k + 1 * v * j + -1 * v + -1 * e * j + -12241/125000` |
| 192 | bound | `{"direction":"lo","ref":"145:192","triangle":"ERS","value":"93/1000"}` | `1 * r * k + -1 * e * r + -1 * k + -1 * w * j + 1 * w + 1 * e * j + -93/1000` |
| 194 | bound | `{"direction":"lo","ref":"145:194","triangle":"FHP","value":"92141/500000"}` | `-1 * f * q + -1 * h * p + 1 * f * h + 1 * p + -92141/500000` |
| 195 | bound | `{"direction":"hi","ref":"145:195","triangle":"FHP","value":"41339/100000"}` | `41339/100000 + 1 * f * q + 1 * h * p + -1 * f * h + -1 * p` |
| 196 | bound | `{"direction":"lo","ref":"145:196","triangle":"FHQ","value":"93/1000"}` | `-1 * f * v + -1 * h * u + 1 * f * h + 1 * u + -93/1000` |
| 198 | bound | `{"direction":"lo","ref":"145:198","triangle":"FHR","value":"93/1000"}` | `-1 * f * w + -1 * h * r + 1 * f * h + 1 * r + -93/1000` |
| 202 | bound | `{"direction":"lo","ref":"145:202","triangle":"FPQ","value":"93/1000"}` | `1 * p * v + -1 * p + -1 * f * v + -1 * q * u + 1 * f * q + 1 * u + -93/1000` |
| 204 | bound | `{"direction":"lo","ref":"145:204","triangle":"FPR","value":"70673/250000"}` | `1 * p * w + -1 * p + -1 * f * w + -1 * q * r + 1 * f * q + 1 * r + -70673/250000` |
| 206 | bound | `{"direction":"lo","ref":"145:206","triangle":"FPS","value":"17843/62500"}` | `1 * p * k + -1 * p + -1 * f * k + -1 * q * j + 1 * f * q + 1 * j + -17843/62500` |
| 208 | bound | `{"direction":"lo","ref":"145:208","triangle":"FQR","value":"24173/250000"}` | `1 * u * w + -1 * u + -1 * f * w + -1 * v * r + 1 * f * v + 1 * r + -24173/250000` |
| 209 | bound | `{"direction":"hi","ref":"145:209","triangle":"FQR","value":"73454759/200000000"}` | `73454759/200000000 + -1 * u * w + 1 * u + 1 * f * w + 1 * v * r + -1 * f * v + -1 * r` |
| 210 | bound | `{"direction":"lo","ref":"145:210","triangle":"FQS","value":"93/1000"}` | `1 * u * k + -1 * u + -1 * f * k + -1 * v * j + 1 * f * v + 1 * j + -93/1000` |
| 222 | bound | `{"direction":"lo","ref":"145:222","triangle":"PQR","value":"93/1000"}` | `-1 * u * w + 1 * q * u + 1 * p * w + 1 * v * r + -1 * p * v + -1 * q * r + -93/1000` |
| 228 | bound | `{"direction":"lo","ref":"145:228","triangle":"QRS","value":"93/1000"}` | `-1 * r * k + 1 * v * r + 1 * u * k + 1 * w * j + -1 * u * w + -1 * v * j + -93/1000` |
| 230 | coordinate | `{"box":145,"direction":"lo","value":"7469/62500","variable":"a"}` | `1 * a + -7469/62500` |
| 232 | coordinate | `{"box":145,"direction":"lo","value":"44357/200000","variable":"b"}` | `1 * b + -44357/200000` |
| 233 | coordinate | `{"box":145,"direction":"hi","value":"59939/100000","variable":"b"}` | `59939/100000 + -1 * b` |
| 234 | coordinate | `{"box":145,"direction":"lo","value":"352767/500000","variable":"c"}` | `1 * c + -352767/500000` |
| 235 | coordinate | `{"box":145,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 236 | coordinate | `{"box":145,"direction":"lo","value":"279/1000","variable":"e"}` | `1 * e + -279/1000` |
| 237 | coordinate | `{"box":145,"direction":"hi","value":"59/125","variable":"e"}` | `59/125 + -1 * e` |
| 238 | coordinate | `{"box":145,"direction":"lo","value":"279/1000","variable":"f"}` | `1 * f + -279/1000` |
| 239 | coordinate | `{"box":145,"direction":"hi","value":"59939/100000","variable":"f"}` | `59939/100000 + -1 * f` |
| 241 | coordinate | `{"box":145,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 242 | coordinate | `{"box":145,"direction":"lo","value":"28841/125000","variable":"p"}` | `1 * p + -28841/125000` |
| 243 | coordinate | `{"box":145,"direction":"hi","value":"249851/500000","variable":"p"}` | `249851/500000 + -1 * p` |
| 245 | coordinate | `{"box":145,"direction":"hi","value":"379/1000","variable":"q"}` | `379/1000 + -1 * q` |
| 246 | coordinate | `{"box":145,"direction":"lo","value":"359747/1000000","variable":"u"}` | `1 * u + -359747/1000000` |
| 247 | coordinate | `{"box":145,"direction":"hi","value":"606203/1000000","variable":"u"}` | `606203/1000000 + -1 * u` |
| 248 | coordinate | `{"box":145,"direction":"lo","value":"98121/200000","variable":"v"}` | `1 * v + -98121/200000` |
| 249 | coordinate | `{"box":145,"direction":"hi","value":"907/1000","variable":"v"}` | `907/1000 + -1 * v` |
| 250 | coordinate | `{"box":145,"direction":"lo","value":"67961/100000","variable":"r"}` | `1 * r + -67961/100000` |
| 251 | coordinate | `{"box":145,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 252 | coordinate | `{"box":145,"direction":"lo","value":"361231/500000","variable":"w"}` | `1 * w + -361231/500000` |
| 253 | coordinate | `{"box":145,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 255 | coordinate | `{"box":145,"direction":"hi","value":"871013/1000000","variable":"j"}` | `871013/1000000 + -1 * j` |
| 256 | coordinate | `{"box":145,"direction":"lo","value":"268487/500000","variable":"k"}` | `1 * k + -268487/500000` |
| 262 | physical | `{"factor":8}` | `-93/1000 + 1 * b` |
| 264 | physical | `{"factor":11}` | `-93/1000 + 1 * e` |
| 265 | physical | `{"factor":12}` | `-93/1000 + 1 * f` |
| 269 | physical | `{"factor":23}` | `-93/1000 + 1 * c` |
| 271 | physical | `{"factor":31}` | `907/1000 + -1 * a` |
| 273 | physical | `{"factor":53}` | `-93/1000 + 1 * h` |
| 275 | physical | `{"factor":62}` | `907/1000 + -1 * b` |
| 276 | physical | `{"factor":80}` | `907/1000 + -1 * f` |
| 278 | physical | `{"factor":104}` | `907/1000 + -1 * e` |
| 280 | physical | `{"factor":136}` | `1 * e + -1 * a` |
| 281 | physical | `{"factor":137}` | `1 * h + -1 * e` |
| 282 | physical | `{"factor":138}` | `1 * f + -1 * b` |
| 283 | physical | `{"factor":139}` | `1 * c + -1 * f` |
| 284 | physical | `{"factor":140}` | `1 * f + -1 * e` |
| 285 | physical | `{"factor":141}` | `1 * c * h + -135501/250000` |
| 286 | physical | `{"factor":142}` | `1 * c * h + -1 * a * b + -279/625` |
| 287 | physical | `{"factor":143}` | `346/625 + -1 * c * h + 1 * f * h + 1 * c * e + -1 * e * f` |
| 288 | physical | `{"factor":144}` | `721/1000 + -1 * f + -1 * e + 1 * e * f` |
| 291 | physical | `{"factor":147}` | `907/1000 + -1 * p + -1 * q` |
| 292 | physical | `{"factor":148}` | `721/1000 * c * h + -907/1000 * b * h + -907/1000 * a * c + 1093/1000 * a * b` |
| 295 | physical | `{"factor":151}` | `1 * c * h * p + -1 * b * h * p + -93/1000 * c + -93/1000 * b` |
| 296 | physical | `{"factor":152}` | `1 * c * h * q + -1 * a * c * q + -93/1000 * h + -93/1000 * a` |
| 299 | physical | `{"factor":155}` | `519841/93000 * k + -1 + -333841/93000 * e + -1 * w` |
| 301 | physical | `{"factor":157}` | `4417/20000 * a * b + -4417/20000 * a * c + -13857/20000 * b * e + 13857/20000 * c * e` |
| 304 | physical | `{"factor":160}` | `-17501/250000 * b * e + -59/125 * a * b + -17501/250000 * a + 135501/250000 * a * c` |
| 402 | physical | `{"factor":258}` | `-1 * f * w + -2927/10000 * c * w + 1 * r + 2927/10000 * c + -12927/10000 * a * r + 12927/10000 * a * f` |
| 479 | physical | `{"factor":335}` | `1521399993/100000000000 * f * q + -70806399993/100000000000 * b * q + -1521399993/100000000000 * p + 1521399993/100000000000 * b + 13857/20000 * c * q` |
| 736 | physical | `{"factor":592}` | `-296353937/500000000 * c * e + -215146063/500000000 * a * c + -296353937/500000000 * a + 1023/1000 * c * v + 1023/1000 * a * u` |
| 743 | physical | `{"factor":599}` | `-551/1000 * c * v + 551/1000 * a * c + 59/125 * a * u + -1023/1000 * a + 1023/1000 * v + -1023/1000 * e * u` |
| 761 | physical | `{"factor":617}` | `38816537397/62500000000 * f * k + -38816537397/62500000000 * e * f + 25120962603/62500000000 * k + -38816537397/62500000000 * j + 38816537397/62500000000 + -25120962603/62500000000 * e * j + 1023/1000 * h * j + -1023/1000 * h` |
| 806 | physical | `{"factor":662}` | `-16392063/25000000 * c + -9182937/25000000 * b + 1023/1000 * b * e + 1023/1000 + -1023/1000 * e * f` |
| 879 | physical | `{"factor":735}` | `-296353937/500000000 * q + -215146063/500000000 * c * q + 296353937/500000000 * e * p + -296353937/500000000 * c * e + 1023/1000 * c * v + -1023/1000 * p * v + 1023/1000 * q * u` |
| 886 | physical | `{"factor":742}` | `-5673381/15625000 * p * v + -5155497/7812500 * c * v + 5673381/15625000 * q * u + 5155497/7812500 * c * q + -1023/1000 * q + 1023/1000 * e * p + 1023/1000 * v + -1023/1000 * e * u` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 127800 | 0, 106 |
| 1 | 44700 | 0, 176 |
| 2 | 5300 | 0, 188 |
| 3 | 44700 | 0, 195 |
| 4 | 822100 | 1, 98 |
| 5 | 40600 | 1, 132 |
| 6 | 16101400 | 1, 255 |
| 7 | 12637800 | 2, 72 |
| 8 | 998400 | 2, 76 |
| 9 | 4800 | 2, 140 |
| 10 | 35300 | 2, 188 |
| 11 | 133500 | 2, 202 |
| 12 | 82683500 | 2, 247 |
| 13 | 63700 | 2, 288 |
| 14 | 76700 | 3, 157 |
| 15 | 34319500 | 3, 255 |
| 16 | 580100 | 3, 284 |
| 17 | 34660000 | 4, 129 |
| 18 | 1379200 | 4, 237 |
| 19 | 10698900 | 4, 249 |
| 20 | 4000 | 5, 176 |
| 21 | 40600 | 5, 222 |
| 22 | 127800 | 8, 87 |
| 23 | 35000 | 9, 134 |
| 24 | 3640000 | 10, 72 |
| 25 | 87200 | 10, 172 |
| 26 | 792200 | 12, 140 |
| 27 | 48500 | 13, 98 |
| 28 | 52000 | 13, 134 |
| 29 | 87200 | 14, 140 |
| 30 | 123800 | 16, 74 |
| 31 | 116400 | 16, 76 |
| 32 | 34566500 | 16, 98 |
| 33 | 280200 | 16, 202 |
| 34 | 125900 | 16, 204 |
| 35 | 35300 | 16, 208 |
| 36 | 232200 | 16, 288 |
| 37 | 49200 | 17, 157 |
| 38 | 85200 | 17, 167 |
| 39 | 44700 | 17, 194 |
| 40 | 759245300 | 17, 242 |
| 41 | 11163100 | 17, 251 |
| 42 | 123800 | 17, 285 |
| 43 | 44700 | 18, 108 |
| 44 | 87200 | 18, 123 |
| 45 | 8600 | 18, 157 |
| 46 | 125900 | 18, 192 |
| 47 | 35300 | 18, 210 |
| 48 | 70700 | 18, 288 |
| 49 | 85300 | 19, 222 |
| 50 | 35300 | 19, 228 |
| 51 | 4643200 | 20, 98 |
| 52 | 239600 | 20, 114 |
| 53 | 40600 | 20, 129 |
| 54 | 1154800 | 20, 245 |
| 55 | 232100 | 22, 33 |
| 56 | 34787800 | 22, 84 |
| 57 | 117300 | 22, 121 |
| 58 | 5030735000 | 22, 134 |
| 59 | 5030735000 | 22, 135 |
| 60 | 232100 | 22, 271 |
| 61 | 306600 | 22, 275 |
| 62 | 574200 | 22, 276 |
| 63 | 283500 | 22, 278 |
| 64 | 772000 | 22, 288 |
| 65 | 21637700 | 24, 282 |
| 66 | 40600 | 25, 106 |
| 67 | 338300 | 26, 100 |
| 68 | 57200 | 26, 114 |
| 69 | 161300 | 26, 172 |
| 70 | 48500 | 26, 202 |
| 71 | 26581200 | 27, 247 |
| 72 | 123200 | 28, 282 |
| 73 | 223400 | 30, 100 |
| 74 | 23600 | 30, 132 |
| 75 | 82700 | 30, 140 |
| 76 | 35300 | 31, 172 |
| 77 | 40600 | 31, 176 |
| 78 | 39500 | 33, 132 |
| 79 | 129400 | 33, 140 |
| 80 | 164000 | 34, 74 |
| 81 | 42700 | 34, 125 |
| 82 | 83100 | 34, 127 |
| 83 | 529108000 | 34, 134 |
| 84 | 529143000 | 34, 135 |
| 85 | 40600 | 34, 149 |
| 86 | 799736600 | 34, 269 |
| 87 | 123800 | 34, 273 |
| 88 | 35814700 | 34, 275 |
| 89 | 2705200 | 34, 276 |
| 90 | 225500 | 34, 278 |
| 91 | 38827300 | 40, 251 |
| 92 | 881100 | 42, 129 |
| 93 | 566500 | 43, 76 |
| 94 | 11800 | 43, 132 |
| 95 | 2600 | 44, 284 |
| 96 | 117300 | 46, 157 |
| 97 | 231300 | 46, 237 |
| 98 | 269500 | 48, 100 |
| 99 | 125900 | 48, 114 |
| 100 | 109000 | 48, 134 |
| 101 | 513600 | 48, 140 |
| 102 | 35300 | 50, 124 |
| 103 | 87000 | 50, 134 |
| 104 | 750500 | 52, 284 |
| 105 | 76700 | 55, 76 |
| 106 | 353400 | 60, 284 |
| 107 | 242100 | 61, 288 |
| 108 | 87000 | 66, 135 |
| 109 | 161300 | 66, 142 |
| 110 | 8391100 | 66, 269 |
| 111 | 58165200 | 66, 275 |
| 112 | 23372800 | 66, 276 |
| 113 | 15331300 | 66, 283 |
| 114 | 283000 | 70, 98 |
| 115 | 2406900 | 70, 114 |
| 116 | 50800 | 70, 154 |
| 117 | 15988100 | 70, 282 |
| 118 | 325200 | 71, 140 |
| 119 | 14000 | 72, 74 |
| 120 | 66700 | 72, 76 |
| 121 | 45000 | 72, 128 |
| 122 | 49639900 | 72, 176 |
| 123 | 72802600 | 72, 248 |
| 124 | 10274400 | 73, 253 |
| 125 | 116000 | 73, 296 |
| 126 | 11800 | 74, 120 |
| 127 | 23500 | 74, 182 |
| 128 | 38655700 | 74, 247 |
| 129 | 55732100 | 74, 248 |
| 130 | 119300 | 74, 280 |
| 131 | 180000 | 75, 202 |
| 132 | 2239400 | 76, 90 |
| 133 | 16300 | 76, 116 |
| 134 | 310400 | 76, 120 |
| 135 | 16000 | 76, 128 |
| 136 | 746900 | 76, 176 |
| 137 | 120400 | 76, 236 |
| 138 | 1171600 | 78, 282 |
| 139 | 1811500 | 79, 98 |
| 140 | 51700 | 79, 132 |
| 141 | 175300 | 79, 198 |
| 142 | 15600 | 79, 253 |
| 143 | 11800 | 80, 114 |
| 144 | 48500 | 81, 202 |
| 145 | 2406900 | 84, 100 |
| 146 | 15207800 | 84, 140 |
| 147 | 88500 | 84, 151 |
| 148 | 2419500 | 86, 140 |
| 149 | 60300 | 86, 222 |
| 150 | 187600 | 87, 98 |
| 151 | 11800 | 87, 132 |
| 152 | 2700 | 87, 253 |
| 153 | 3027000 | 88, 140 |
| 154 | 16300 | 88, 222 |
| 155 | 8550600 | 88, 247 |
| 156 | 16300 | 89, 98 |
| 157 | 19700 | 90, 288 |
| 158 | 471900 | 91, 98 |
| 159 | 60300 | 92, 140 |
| 160 | 23500 | 96, 129 |
| 161 | 39900 | 96, 188 |
| 162 | 5500 | 96, 247 |
| 163 | 134300 | 97, 251 |
| 164 | 266500 | 98, 121 |
| 165 | 934100 | 98, 149 |
| 166 | 16300 | 98, 155 |
| 167 | 277986600 | 98, 249 |
| 168 | 201300 | 98, 250 |
| 169 | 1429600 | 98, 269 |
| 170 | 1000800 | 98, 271 |
| 171 | 1176800 | 98, 273 |
| 172 | 86800 | 98, 275 |
| 173 | 1541200 | 98, 276 |
| 174 | 271700 | 98, 278 |
| 175 | 11800 | 100, 110 |
| 176 | 12324700 | 100, 124 |
| 177 | 3299000 | 100, 128 |
| 178 | 1310005000 | 100, 134 |
| 179 | 1310005000 | 100, 135 |
| 180 | 631400 | 100, 142 |
| 181 | 275500 | 100, 150 |
| 182 | 335600 | 100, 166 |
| 183 | 263900 | 100, 174 |
| 184 | 277986600 | 100, 245 |
| 185 | 2325400 | 100, 262 |
| 186 | 16147900 | 100, 269 |
| 187 | 10462400 | 100, 271 |
| 188 | 55451800 | 100, 273 |
| 189 | 2274600 | 100, 287 |
| 190 | 112000 | 103, 176 |
| 191 | 26408000 | 106, 134 |
| 192 | 26408000 | 106, 135 |
| 193 | 8550600 | 106, 247 |
| 194 | 4899200 | 106, 269 |
| 195 | 137400 | 106, 275 |
| 196 | 1816200 | 106, 276 |
| 197 | 125200 | 108, 166 |
| 198 | 60300 | 108, 184 |
| 199 | 17160400 | 108, 234 |
| 200 | 15600 | 109, 253 |
| 201 | 671100 | 110, 140 |
| 202 | 333200 | 111, 282 |
| 203 | 16000 | 114, 128 |
| 204 | 2555344000 | 114, 134 |
| 205 | 2555379000 | 114, 135 |
| 206 | 140500 | 114, 142 |
| 207 | 16300 | 114, 166 |
| 208 | 3340000 | 114, 269 |
| 209 | 401900 | 114, 276 |
| 210 | 808900 | 114, 287 |
| 211 | 52000 | 120, 134 |
| 212 | 49200 | 124, 151 |
| 213 | 31064600 | 124, 253 |
| 214 | 1294300 | 124, 280 |
| 215 | 60300 | 125, 188 |
| 216 | 4455100 | 126, 192 |
| 217 | 1081100 | 127, 251 |
| 218 | 16000 | 128, 132 |
| 219 | 44000 | 128, 170 |
| 220 | 16000 | 128, 202 |
| 221 | 16000 | 128, 208 |
| 222 | 159000 | 128, 288 |
| 223 | 16300 | 129, 157 |
| 224 | 144900 | 129, 196 |
| 225 | 28800 | 129, 251 |
| 226 | 3310300 | 130, 198 |
| 227 | 329390000 | 132, 134 |
| 228 | 329390000 | 132, 135 |
| 229 | 60300 | 132, 166 |
| 230 | 6570700 | 132, 180 |
| 231 | 225800 | 132, 243 |
| 232 | 61026900 | 132, 246 |
| 233 | 246200 | 132, 262 |
| 234 | 202100 | 132, 265 |
| 235 | 92300 | 132, 269 |
| 236 | 51200 | 132, 271 |
| 237 | 967300 | 132, 278 |
| 238 | 595921000 | 134, 140 |
| 239 | 52000 | 134, 170 |
| 240 | 1573769000 | 134, 172 |
| 241 | 6571000 | 134, 179 |
| 242 | 35000 | 134, 182 |
| 243 | 35000 | 134, 188 |
| 244 | 2657953000 | 134, 192 |
| 245 | 720125000 | 134, 202 |
| 246 | 1926551000 | 134, 228 |
| 247 | 123000 | 134, 233 |
| 248 | 8668000 | 134, 239 |
| 249 | 1761000 | 134, 243 |
| 250 | 1761000 | 134, 246 |
| 251 | 269935000 | 134, 249 |
| 252 | 34818000 | 134, 253 |
| 253 | 595921000 | 135, 140 |
| 254 | 1573856000 | 135, 172 |
| 255 | 2658040000 | 135, 192 |
| 256 | 720125000 | 135, 202 |
| 257 | 1926638000 | 135, 228 |
| 258 | 8791000 | 135, 251 |
| 259 | 3371400 | 136, 188 |
| 260 | 11800 | 137, 253 |
| 261 | 51700 | 140, 142 |
| 262 | 2274600 | 140, 164 |
| 263 | 335600 | 140, 204 |
| 264 | 269935000 | 140, 256 |
| 265 | 16960000 | 140, 262 |
| 266 | 116400 | 140, 269 |
| 267 | 55909500 | 140, 273 |
| 268 | 269761800 | 140, 278 |
| 269 | 6229000 | 142, 253 |
| 270 | 3299200 | 143, 176 |
| 271 | 161300 | 143, 190 |
| 272 | 42555400 | 143, 237 |
| 273 | 6229010 | 143, 299 |
| 274 | 545100 | 146, 209 |
| 275 | 355900 | 146, 280 |
| 276 | 1072000 | 146, 288 |
| 277 | 32300 | 149, 253 |
| 278 | 545100 | 150, 202 |
| 279 | 3250000 | 151, 168 |
| 280 | 202100 | 151, 239 |
| 281 | 61026900 | 151, 247 |
| 282 | 47900 | 151, 248 |
| 283 | 111300 | 154, 288 |
| 284 | 625000 | 155, 255 |
| 285 | 60300 | 157, 164 |
| 286 | 484700 | 157, 196 |
| 287 | 109200 | 166, 280 |
| 288 | 39900 | 168, 280 |
| 289 | 2115600 | 170, 181 |
| 290 | 567700 | 170, 232 |
| 291 | 968600 | 170, 236 |
| 292 | 197000 | 170, 242 |
| 293 | 11800 | 170, 285 |
| 294 | 2115600 | 172, 178 |
| 295 | 269935000 | 172, 248 |
| 296 | 34818200 | 172, 252 |
| 297 | 10552400 | 172, 269 |
| 298 | 47900 | 172, 273 |
| 299 | 45085600 | 176, 234 |
| 300 | 8550600 | 176, 242 |
| 301 | 296521300 | 176, 251 |
| 302 | 900 | 176, 284 |
| 303 | 235494400 | 179, 247 |
| 304 | 49474200 | 179, 255 |
| 305 | 2455500 | 182, 282 |
| 306 | 2260400 | 188, 234 |
| 307 | 29838800 | 188, 238 |
| 308 | 57228400 | 190, 232 |
| 309 | 8668300 | 190, 238 |
| 310 | 34187700 | 192, 269 |
| 311 | 47900 | 192, 273 |
| 312 | 849600 | 192, 275 |
| 313 | 2115600 | 192, 287 |
| 314 | 900900 | 198, 235 |
| 315 | 295500 | 202, 262 |
| 316 | 1543800 | 202, 265 |
| 317 | 347100 | 202, 271 |
| 318 | 60300 | 202, 273 |
| 319 | 219900 | 202, 285 |
| 320 | 1760900 | 206, 235 |
| 321 | 47900 | 210, 241 |
| 322 | 28800 | 222, 233 |
| 323 | 197000 | 222, 282 |
| 324 | 25396200 | 228, 269 |
| 325 | 47900 | 228, 273 |
| 326 | 849600 | 228, 275 |
| 327 | 30035800 | 228, 276 |
| 328 | 41300 | 230, 247 |
| 329 | 15449900 | 230, 251 |
| 330 | 119000 | 230, 295 |
| 331 | 17748400 | 232, 237 |
| 332 | 17184000 | 232, 286 |
| 333 | 4915000 | 232, 296 |
| 334 | 19972300 | 235, 253 |
| 335 | 178097000 | 235, 280 |
| 336 | 768600 | 236, 286 |
| 337 | 2555200 | 236, 288 |
| 338 | 370900 | 237, 242 |
| 339 | 54427300 | 237, 251 |
| 340 | 33200 | 237, 285 |
| 341 | 397000 | 237, 295 |
| 342 | 6100000 | 239, 296 |
| 343 | 9200 | 242, 284 |
| 344 | 25954500 | 243, 280 |
| 345 | 357756800 | 245, 282 |
| 346 | 8700 | 245, 284 |
| 347 | 18977300 | 247, 253 |
| 348 | 1545000 | 247, 282 |
| 349 | 9787100 | 247, 285 |
| 350 | 18977300 | 248, 251 |
| 351 | 239072800 | 248, 282 |
| 352 | 124238400 | 251, 281 |
| 353 | 1600 | 251, 284 |
| 354 | 6900 | 251, 285 |
| 355 | 1600 | 251, 288 |
| 356 | 2700 | 253, 264 |
| 357 | 7100 | 253, 285 |
| 358 | 1400 | 253, 288 |
| 359 | 14868300 | 280, 282 |
| 360 | 1555300 | 282, 288 |
| 361 | 26300 | 282, 291 |
| 362 | 10377520 | 282, 299 |
| 363 | 1876000 | 284, 284 |
| 364 | 138000 | 288, 292 |
| 365 | 34113000 | 255, 301 |
| 366 | 249000 | 251, 304 |
| 367 | 30035800 | 255, 402 |
| 368 | 284000 | 251, 479 |
| 369 | 25983600 | 251, 736 |
| 370 | 95700 | 236, 743 |
| 371 | 35255200 | 238, 743 |
| 372 | 48361800 | 251, 761 |
| 373 | 25700 | 253, 806 |
| 374 | 25200 | 235, 879 |
| 375 | 1721300 | 255, 886 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `a * b * h * p` | 300 |
| `a * b` | 248966822453/20000000 |
| `a * b * c * q` | 700 |
| `a * c * h * p` | -300 |
| `a * b * c * h` | 100 |
| `a * c` | 70995368751/4000000 |
| `b * q` | -8322365092789/156250000 |
| `h * p` | 124518582691/2000000 |
| `b * h` | 573055171/10000 |
| `1` | -111795614922975345137929/625000000000000 |
| `a * b * v` | 13000 |
| `a * b * h * u` | -100 |
| `a * b * e * u` | 100 |
| `a * c * v` | -52700 |
| `a * c * h` | -100 |
| `a * c * e * u` | -126400 |
| `v` | -6745151160453/50000000 |
| `h * u` | 129385651/1562500 |
| `h` | -756526533641/25000000 |
| `e * u` | 392222483230453/50000000 |
| `a * c * u * w` | 100 |
| `a * c * v * r` | -100 |
| `a * c * e * r` | 200 |
| `u * w` | 2993531201/15625000 |
| `w` | 17751825773723373/125000000 |
| `v * r` | -1431031201/15625000 |
| `e * r` | -402795914851/363281250 |
| `a * b * p` | 27900 |
| `a * c * f * q` | -300 |
| `a * c * p` | 37600 |
| `f * q` | -7329543497/25000000 |
| `f * h` | -20180947/10000 |
| `p` | -657382456503/25000000 |
| `b` | 261056964803/25000000 |
| `a * b * b` | -35600 |
| `a * b * c` | -200 |
| `c * w` | -70560503093/250000000 |
| `c * e` | 193530420081665873/46500000000 |
| `a * b * c * e` | -200 |
| `j` | -9055658423/312500000 |
| `a * b * j` | 879/20 |
| `a * c * j` | 1121/20 |
| `b * c * e` | 40200 |
| `b * b * e` | -15400 |
| `b * e` | -537286987188769/1860000000 |
| `a` | -15034429557/1000000 |
| `c` | -59241983615871/50000000 |
| `b * c * e * q` | -214000 |
| `b * b * e * q` | 100 |
| `a * c * q` | -27212153/1000 |
| `a * b * q` | -20500 |
| `c * q` | -10735727492441989/156250000000 |
| `b * e * f * v` | 56100 |
| `b * c * e * v` | -600 |
| `b * e * u` | -10700 |
| `a * b * c * v` | -100 |
| `a * b * u` | -8700 |
| `a * f * v` | -77400 |
| `a * u` | -11649071/500 |
| `f * v` | 184300489599/250000 |
| `c * v` | 6548274659410807/78125000000 |
| `u` | -136665280931/62500 |
| `b * e * u * w` | 100 |
| `b * e * e * u` | 35300 |
| `b * e * w` | -911/10 |
| `b * e * v * r` | -100 |
| `b * e * v` | -15600 |
| `b * e * e * r` | -23500 |
| `a * e * u` | 599852/5 |
| `a * v` | 45200 |
| `b * e * p * v` | 900 |
| `b * e * p` | -600 |
| `b * e * q * u` | -200 |
| `b * e * f * q` | -100 |
| `a * b * p * v` | -56800 |
| `a * b * q * u` | 56800 |
| `a * p * v` | 66600 |
| `a * p` | -22137029989/625000 |
| `a * q * u` | -66600 |
| `p * v` | -1206317620863489/156250000000 |
| `q * u` | 1128192620863489/156250000000 |
| `b * e * f` | -74000 |
| `b * e * e` | 496700 |
| `b * e * e * f` | 83400 |
| `a * b * f` | 66 |
| `a * b * e` | -56634 |
| `a * b * e * f` | -66 |
| `a * f` | 1220275294129/50000000 |
| `a * e` | -392011/10 |
| `a * e * f` | 48300 |
| `f` | 481660799/10000 |
| `e` | -21639437407451/9300000 |
| `e * f` | -65895376896015839/29062500000 |
| `p * w` | 123104273/62500000 |
| `q * r` | -18873104273/62500000 |
| `b * e * p * w` | -100 |
| `b * e * q * r` | 100 |
| `a * b * q * r` | -100 |
| `b * e * j` | -6159/20 |
| `a * j` | -370527/10000 |
| `b * c * q` | 59100 |
| `a * e * f * p` | -37500 |
| `a * c * e * f` | -566 |
| `q` | 291657929681/10000000 |
| `e * p` | -289227929681/10000000 |
| `b * v` | 12454351/5000 |
| `b * h * u` | 4600 |
| `a * f * h * u` | 100 |
| `a * f * h` | -100 |
| `a * e * f * u` | -110300 |
| `b * u * w` | -100 |
| `b * q * u` | -6700 |
| `b * p * w` | 100 |
| `b * p * v` | 6700 |
| `b * q * r` | -5245600497/25000000 |
| `a * f * u * w` | -100 |
| `a * f * v * r` | 100 |
| `b * h * q` | 26400 |
| `b * b * h * q` | -59800 |
| `a * b * b * e` | 127800 |
| `k` | 527825753611/29062500000 |
| `c * k` | 58180060597/1162500000 |
| `e * j` | -5313037301/156250000 |
| `a * b * k` | -200 |
| `a * b * c * k` | 200 |
| `a * b * e * j` | 200 |
| `b * c * v` | 200 |
| `a * c * u` | 23500 |
| `b * v * k` | 200 |
| `b * e * v * j` | -200 |
| `a * u * k` | 200 |
| `a * e * u * j` | -200 |
| `f * k` | 9155552828339/29062500000 |
| `b * f * v * w` | 100 |
| `b * c * w` | 100 |
| `b * w` | -179927329/62500 |
| `a * u * r` | -114/5 |
| `a * c * r` | -150638583/1250000 |
| `a * r` | -4967010809/50000000 |
| `b * f * q * w` | -100 |
| `b * b * q * w` | 100 |
| `b * b * w` | 6400 |
| `a * b * r` | 228 |
| `a * r * k` | 300 |
| `a * c * r * k` | -200 |
| `a * e * r * j` | -300 |
| `b * c * v * k` | -200 |
| `b * k` | 479231/2325 |
| `c * h` | 99553021709/2000000 |
| `c * c * e * q` | 100 |
| `a * c * c * q` | -400 |
| `c * e * f * q` | -600 |
| `c * e * p` | -1920298031/1250000 |
| `c * e * f * v` | -647100 |
| `c * e * q * u` | 100 |
| `c * e * u` | -11059900 |
| `a * c * p * v` | -76600 |
| `a * c * f * v` | 100 |
| `a * c * q * u` | 76600 |
| `c * e * p * w` | -200 |
| `c * e * f * w` | 700 |
| `c * e * q * r` | -400 |
| `c * e * r` | -1394606417/1250000 |
| `a * c * f * w` | -100 |
| `a * f * w` | 100 |
| `f * w` | -360097/5000 |
| `r` | 209852414827/312500000 |
| `c * e * u * w` | -500 |
| `c * e * v * r` | 400 |
| `c * e * f` | 189000 |
| `c * e * e` | -64200 |
| `c * e * e * f` | 231100 |
| `a * c * f` | -94/5 |
| `a * c * e` | 458967/10 |
| `c * e * q` | 47600 |
| `c * e * e * p` | 3700 |
| `a * q` | 24000 |
| `a * e * p` | 10400 |
| `c * e * h * p` | -500 |
| `c * e * f * h` | -102 |
| `c * h * u` | -100 |
| `c * v * j` | -8430139/78125 |
| `a * c * u * k` | -200 |
| `u * k` | -6575247477/62500000 |
| `v * j` | 13456497477/62500000 |
| `c * p * w` | -100 |
| `c * q * r` | 3153/5 |
| `c * c * q` | 51429201969/1250000 |
| `c * r * k` | 700 |
| `c * w * j` | 3933/50 |
| `c * e * j` | 159/20 |
| `a * c * k` | -400 |
| `a * c * w * j` | -100 |
| `a * c * e * j` | 100 |
| `a * f * r * k` | -100 |
| `a * f * k` | -500 |
| `a * f * w * j` | 100 |
| `a * e * f * j` | 500 |
| `r * k` | -9305138224553/14531250000 |
| `w * j` | -6417147477/62500000 |
| `c * u` | 3091800 |
| `c * f * k` | -300 |
| `c * f * v` | 902924/5 |
| `a * c * f * k` | 600 |
| `a * f * u` | 154272/5 |
| `a * f * f * v` | 138700 |
| `a * f * j` | 1067/50 |
| `c * f` | -70700 |
| `a * f * f` | -68100 |
| `a * e * f * f` | 100 |
| `c * u * w` | 100 |
| `c * q * u` | -43898/5 |
| `c * v * r` | -114/5 |
| `c * p * v` | 45398/5 |
| `c * f * h * q` | 100 |
| `b * c * h * q` | -500 |
| `c * h * p` | 32878/125 |
| `c * h * q` | 106712153/1000 |
| `c * c * h * q` | -75400 |
| `c * c * e * h` | 8600 |
| `c * q * u * w` | 400 |
| `b * c * q * w` | -100 |
| `c * q * v * r` | -400 |
| `b * c * q * v` | 800 |
| `a * p * v * r` | -100 |
| `c * f * q` | 400 |
| `a * f * p` | 10400 |
| `c * f * v * w` | -100 |
| `a * b * v * r` | 100 |
| `a * q * u * r` | 100 |
| `c * f * w * k` | -300 |
| `c * w * k` | 711259/9300 |
| `a * r * j` | -1067/50 |
| `b * c * k` | -200 |
| `e * f * f * v` | 100 |
| `e * f * u` | 21152/5 |
| `e * f * w` | -1045511/9300 |
| `e * e * f * r` | 23600 |
| `a * k` | 300 |
| `a * e * j` | -300 |
| `e * e * f * f` | 35300 |
| `e * f * k` | 300 |
| `e * e * f * j` | -300 |
| `a * h` | 100 |
| `e * f * v` | 444400 |
| `e * f * h * u` | 16400 |
| `e * f * h` | 7300 |
| `h * w` | -700 |
| `e * h * r` | 3400 |
| `c * e * h` | -11898 |
| `f * h * v` | 100 |
| `c * h * v` | -100 |
| `b * e * h * p` | 500 |
| `e * f * q` | 400 |
| `e * e * f * p` | -160300 |
| `h * q` | -40700 |
| `e * h * p` | 6300 |
| `c * q * v` | -100 |
| `e * f * p` | 106300 |
| `e * q` | -34000 |
| `e * e * p` | 42700 |
| `e * r * j` | 224846068827/312500000 |
| `e * f * h * p` | -22500 |
| `f * h * w` | 100 |
| `c * f * h * w` | 100 |
| `e * f * h * r` | -11800 |
| `f * q * v * r` | -100 |
| `c * f * q * v` | -300 |
| `p * u * w` | -100 |
| `b * r` | -48019399503/25000000 |
| `f * q * u * w` | 100 |
| `p * v * r` | 100 |
| `f * w * k` | 3008741/9300 |
| `e * f * w * j` | -300 |
| `c * e * f * k` | -300 |
| `f * h * p` | 6300 |
| `b * h * q * u` | 100 |
| `e * f * p * v` | -600 |
| `e * f * q * u` | 100 |
| `c * c * e * v` | 324300 |
| `c * c * e` | -216204701969/1250000 |
| `c * c * h` | -35200 |
| `b * b * h` | 17600 |
| `b * b * q` | 32400 |
| `b * b * h * w` | -11800 |
| `b * h * p * v` | -100 |
| `b * e * h * u` | -16400 |
| `b * e * h` | 5866 |
| `b * h * p` | -36132878/125 |
| `b * q * v` | -700 |
| `b * b * q * v` | -100 |
| `b * c * q * q` | -600 |
| `b * q * u * w` | -100 |
| `b * q * v * r` | 100 |
| `c * q * q` | -300 |
| `c * c * q * q` | 300 |
| `c * e * p * q` | 300 |
| `b * q * q` | 600 |
| `b * e * p * q` | -600 |
| `b * e * q` | 151300 |
| `b * f * v` | -15600 |
| `c * v * w` | 100 |
| `h * r` | -5374871/5000 |
| `b * u` | 1300 |
| `b * b` | -5300 |
| `b * c` | -10000 |
| `b * h * r` | 100 |
| `b * e * h * r` | -100 |
| `b * h * w` | 5300 |
| `b * c * e * e` | -11800 |
| `f * q * v` | 500 |
| `e * p * u` | 500 |
| `q * u * w` | -300 |
| `q * v * r` | 300 |
| `e * p * u * w` | 300 |
| `e * p * v * r` | -300 |
| `f * q * q` | -300 |
| `p * q` | 300 |
| `e * f * p * q` | 300 |
| `e * p * p` | -300 |
| `e * v` | 374011/10 |
| `e * e * u` | -374011/10 |
| `f * v * w` | -100 |
| `e * u * r` | -100 |
| `f * h * u * w` | -100 |
| `b * e * r` | 3307749/250 |
| `f * h * u` | -4600 |
| `f * h * r` | 3200 |
| `h * p * u` | -100 |
| `c * f * q * q` | 300 |
| `c * p * q` | -300 |
| `f * q * r` | -519399503/25000000 |
| `p * r` | 519399503/25000000 |
| `c * p` | -4300 |
| `b * p` | 153200 |
| `b * f` | 14100 |
| `h * u * r` | 100 |
| `f * h * p * v` | 100 |
| `b * f * h` | -34 |
| `e * f * u * w` | 100 |
| `b * e * f * h` | 34 |
| `h * p * u * w` | 100 |
| `h * q * u * r` | -100 |
| `c * h * r` | -100 |
| `c * e * h * r` | -200 |
| `c * e * w` | -2757259/9300 |
| `e * e * f` | 2080400 |
| `c * e * e * u` | -60300 |
| `c * e * v` | -2769307/10 |
| `c * e * e * r` | 600 |
| `h * r * k` | -300 |
| `h * k` | 300 |
| `e * h * j` | -300 |
| `c * h * r * k` | 300 |
| `c * h * k` | -300 |
| `c * e * r * k` | -300 |
| `q * w` | -300 |
| `c * q * w` | 600 |
| `e * q * r` | 300 |
| `c * c * q * w` | -300 |
| `e * p * w` | 300 |
| `e * e * p * r` | -300 |
| `c * c * e * w` | 300 |
| `c * c * e * e` | 16000 |
| `f * q * w` | 300 |
| `c * f * q * w` | -300 |
| `e * f * p * w` | -300 |
| `e * p * r` | 300 |
| `w * k` | -100 |
| `e * w * j` | 100 |
| `e * r * k` | 300 |
| `e * h * r * j` | 300 |
| `e * e * r * j` | -300 |
| `h * j` | -20949/250 |
| `e * f * r` | -2093158568827/312500000 |
| `e * e * r` | -1300 |
| `e * u * j` | -1101/10 |
| `p * k` | -100 |
| `c * p * k` | 100 |
| `e * p * j` | 1101/10 |
| `e * f * j` | -300 |
| `c * c * v` | -452398/5 |
| `c * c` | 64700 |
| `c * f * h` | 102 |
| `f * w * w` | -10 |
| `c * w * w` | 10 |
| `r * w` | 10 |
| `f * h * p * w` | -100 |
| `f * h * q * r` | 100 |
| `p * v * j` | -342847/156250 |
| `q * u * j` | 342847/156250 |
| `c * q * j` | 617639/78125 |
| `c * j` | 1067/50 |
| `e * h * u` | -900 |
| `e * h` | 900 |
| `h * r * j` | 393/5 |
| `f * f * v` | -1543800 |
| `f * u` | -1200 |
| `q * j` | -101/10 |
| `f * r * k` | -591431173/312500000 |
| `e * e` | -679200 |
| `f * p` | -17100 |
| `f * f` | 320700 |
| `e * f * f` | 1555300 |
| `r * j` | 591431173/312500000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `a * b * h * p` | 300 | 25620284145303117963/1562500000000000000000 | 76860852435909353889/15625000000000000000 |
| `a * b * h` | 1037971/10000 | 190503796986349/3125000000000000 | 197737416661717657879/31250000000000000000 |
| `a * b * p` | 490593/2500 | 223759894368537/6250000000000000 | 109775037857943672441/15625000000000000000 |
| `a * b` | 19720978277/312500000 | 1663803151/12500000000 | 32811825798075150827/3906250000000000000 |
| `a * h * p` | -1451247/10000 | 339247151723403/7812500000000000 | 0 |
| `a * h` | -142317535021/10000000000 | 2522527469/15625000000 | 0 |
| `a * p` | 242679926971/5000000000 | 2962883097/31250000000 | 719032253603570309187/156250000000000000000 |
| `a` | 6082845173718168033/125000000000000000 | 22031/62500 | 134011162022184959935023/7812500000000000000000 |
| `b * h * p` | -2889367333/10000 | 1162919710648773/25000000000000000 | 0 |
| `b * h` | 1182561810883/10000000000 | 8647078979/50000000000 | 10225705376254562728457/500000000000000000000 |
| `b * p` | -328720442723/2500000000 | 10156592727/100000000000 | 0 |
| `b` | 16884979018721942175653/232500000000000000000 | 75521/200000 | 1275170500472899795047490213/46500000000000000000000000 |
| `h * p` | -131615647539/10000000000 | 15398627013/125000000000 | 0 |
| `h` | 129491031105499199/2000000000000000 | 114499/250000 | 14826593570548552786301/500000000000000000000 |
| `p` | -2975177744477229997/62500000000000000 | 134487/500000 | 0 |
| `1` | -5971594513364632048675561329015963/77500000000000000000000000 | 1 | -5971594513364632048675561329015963/77500000000000000000000000 |
| `a * b * c * q` | 700 | 55414658742194899979/6250000000000000000000 | 387902611195364299853/62500000000000000000 |
| `a * b * c` | -45393/1250 | 244966729331183/6250000000000000 | 0 |
| `a * b * q` | 224714/625 | 376373902197163/12500000000000000 | 42288242529166643191/3906250000000000000 |
| `a * c * q` | -296821/2000 | 733764896415499/31250000000000000 | 0 |
| `a * c` | -740955609819/62500000000 | 3243690223/31250000000 | 0 |
| `a * q` | 649542563367/5000000000 | 4983698603/62500000000 | 3237124365641156876301/312500000000000000000 |
| `b * c * q` | -3282279/5000 | 2515303832880709/100000000000000000 | 0 |
| `b * c` | 38131415263/312500000 | 11119183393/100000000000 | 423990199343936327359/31250000000000000000 |
| `b * q` | 107156778435883/2500000000000 | 17083831973/200000000000 | 1830648397566614925887159/500000000000000000000000 |
| `c * q` | -57835675999693/625000000000 | 33306018629/500000000000 | 0 |
| `c` | -30664280155997647427/14531250000000000000 | 147233/500000 | 0 |
| `q` | -55453848826245990839/2500000000000000000 | 226213/1000000 | 0 |
| `a * c * h * p` | -300 | 49948375889691793899/3906250000000000000000 | 0 |
| `a * c * h` | -1470399/10000 | 371399286843277/7812500000000000 | 0 |
| `a * c * p` | -714721/5000 | 436234167020601/15625000000000000 | 0 |
| `c * h * p` | 109591/1250 | 2267186051005029/62500000000000000 | 248463186515692133139/78125000000000000000 |
| `c * h` | 36026921623/2000000000 | 16858031267/125000000000 | 607342971174292386341/250000000000000000000 |
| `c * p` | -140717859/5000000 | 19800924471/250000000000 | 0 |
| `a * b * c * h` | 100 | 28048445541691122317/1562500000000000000000 | 28048445541691122317/15625000000000000000 |
| `b * c * h` | -644431/10000 | 1273135379315107/25000000000000000 | 0 |
| `a * b * v` | -269857/2500 | 138559862612129/2500000000000000 | 0 |
| `a * v` | 21382452349/312500000 | 1834719649/12500000000 | 39230805468516505501/3906250000000000000 |
| `b * v` | -164267439957/625000000 | 6289313359/40000000000 | 0 |
| `v` | -38179218714584762057/1250000000000000000 | 83279/200000 | 0 |
| `a * b * h * u` | -100 | 5868850473758453643/390625000000000000000 | 0 |
| `a * b * u` | -119997/2500 | 51256783672857/1562500000000000 | 0 |
| `a * h * u` | 11443/2000 | 77711503737483/1953125000000000 | 889252737268017969/3906250000000000000 |
| `a * u` | 27906191297/5000000000 | 678709017/7812500000 | 18940183663400825049/39062500000000000000 |
| `b * h * u` | 277283/10000 | 266390562106053/6250000000000000 | 73865574232452693999/62500000000000000000 |
| `b * u` | -85344697199/5000000000 | 2326575447/25000000000 | 0 |
| `h * u` | -2051531266179/10000000000 | 3527370693/31250000000 | 0 |
| `u` | 79759541319425992393/625000000000000000 | 30807/125000 | 2457152189427556547651151/78125000000000000000000 |
| `a * b * e * u` | 100 | 9892559248861401/1562500000000000000 | 9892559248861401/15625000000000000 |
| `a * b * e` | 486181/10000 | 321114008143/12500000000000 | 156119529592971883/125000000000000000 |
| `a * e * u` | -785373/10000 | 130990840281/7812500000000 | 0 |
| `a * e` | 1491397852293/10000000000 | 4251983/62500000 | 6341398314186347019/625000000000000000 |
| `b * e * u` | 202717/1250 | 449029061271/25000000000000 | 91025824213673307/31250000000000000 |
| `b * e` | 2431892755961/7265625000 | 14575553/200000000 | 35446181754825621433/1453125000000000000 |
| `e * u` | -1428911187773/5000000000 | 5945751/125000000 | 0 |
| `e` | 670937538359684605407/60546875000000000000 | 193/1000 | 129490944903419128843551/60546875000000000000000 |
| `a * c * v` | -704360043/10000 | 270131278081217/6250000000000000 | 0 |
| `c * v` | 56159551911507/312500000000 | 12261417007/100000000000 | 688595684913251288799549/31250000000000000000000 |
| `a * c * e * u` | -126400 | 19286174387092473/3906250000000000000 | 0 |
| `a * c * e` | 4172893/10000 | 626032213039/31250000000000 | 2612365439564951827/312500000000000000 |
| `a * c * u` | -243161/2500 | 99928364699961/3906250000000000 | 0 |
| `c * e * u` | -111089986579/10000 | 875410756983/62500000000000 | 0 |
| `c * e` | -8964202248573313/23250000000000 | 28415969/500000000 | 0 |
| `c * u` | 21042809/3125000 | 4535807031/62500000000 | 95446121014190079/195312500000000000 |
| `a * c * u * w` | 100 | 13866959241048888009/1953125000000000000000 | 13866959241048888009/19531250000000000000 |
| `a * c * w` | -127211/2500 | 450123648555487/15625000000000000 | 0 |
| `a * u * w` | 213267/5000 | 94183771580073/3906250000000000 | 20086290413567428491/19531250000000000000 |
| `a * w` | -1985033337/1250000000 | 3057219839/31250000000 | 0 |
| `c * u * w` | 83913/2500 | 629429405884839/31250000000000000 | 52817309736014495007/78125000000000000000 |
| `c * w` | -80144978469719/930000000000 | 20431376177/250000000000 | 0 |
| `u * w` | 60954987717/400000000 | 4275056583/62500000000 | 260586021506244991011/25000000000000000000 |
| `w` | 11006091865093738369714827/77500000000000000 | 138769/500000 | 1527304362027192979826956827963/38750000000000000000000 |
| `a * c * v * r` | -100 | 8654736018444111463/625000000000000000000 | 0 |
| `a * c * r` | -69114427/312500 | 103924591054697/3125000000000000 | 0 |
| `a * v * r` | -435477/10000 | 58782582834311/1250000000000000 | 0 |
| `a * r` | -141848399508697/1250000000000 | 705851209/6250000000 | 0 |
| `c * v * r` | 39337/2500 | 392843539487273/10000000000000000 | 15453286312810858001/25000000000000000000 |
| `c * r` | 42400820778417/312500000000 | 4717198087/50000000000 | 200013070663178523288279/15625000000000000000000 |
| `v * r` | -69444554457/2000000000 | 2668175881/20000000000 | 0 |
| `r` | 699398743856632286557/93000000000000000000 | 32039/100000 | 22408036354422641828999723/9300000000000000000000000 |
| `a * c * e * r` | 200 | 20057446073556521/3125000000000000000 | 20057446073556521/15625000000000000 |
| `a * e * r` | -71541/2000 | 136229283337/6250000000000 | 0 |
| `c * e * r` | -1114187667/1250000 | 910419230791/50000000000000 | 0 |
| `e * r` | -720867389371602599/29062500000000000 | 6183527/100000000 | 0 |
| `a * c * f * q` | -300 | 23509093516256172461/3125000000000000000000 | 0 |
| `a * c * f` | 382243/5000 | 103924591054697/3125000000000000 | 39724447458520545371/15625000000000000000 |
| `a * f * q` | -1058301/5000 | 159672719541517/6250000000000000 | 0 |
| `a * f` | -29846406847/200000000 | 705851209/6250000000 | 0 |
| `c * f * q` | -212987/10000 | 1067091530854531/50000000000000000 | 0 |
| `c * f` | -459004009967/5000000000 | 4717198087/50000000000 | 0 |
| `f * q` | 490655175870617/2500000000000 | 7247638307/100000000000 | 3556091248167705844925419/250000000000000000000000 |
| `f` | 419581807645378106208683/5812500000000000000000 | 32039/100000 | 13442981535150269144819994637/581250000000000000000000000 |
| `f * h` | 766295909447/5000000000 | 3668433461/25000000000 | 2811105555242800806067/125000000000000000000 |
| `a * b * b` | 281/5 | 125652077766671/2500000000000000 | 35308233852434551/12500000000000000 |
| `b * b` | -414723876109/10000000000 | 5703421441/40000000000 | 0 |
| `a * b * c * e` | -200 | 47278578760918319/6250000000000000000 | 0 |
| `b * c * e` | 3004591/5000 | 2146002394849/100000000000000 | 6447859481541751759/500000000000000000 |
| `j` | 2558161066555350691/78125000000000000 | 140711/500000 | 359961401836069951081301/39062500000000000000000 |
| `a * b * j` | 399/4 | 234115405180361/6250000000000000 | 93412046666964039/25000000000000000 |
| `a * j` | -9125100361/78125000 | 3100004041/31250000000 | 0 |
| `b * j` | -20274657/200000 | 10626635431/100000000000 | 0 |
| `a * c * j` | 58519/5000 | 456422894968553/15625000000000000 | 26709411390664753007/78125000000000000000 |
| `c * j` | 2347995884173/78125000000 | 20717302663/250000000000 | 48644141383890332452699/19531250000000000000000 |
| `b * b * e` | -1121101/10000 | 1100760338113/40000000000000 | 0 |
| `b * c * e * q` | -214000 | 485453639745976837/100000000000000000000 | 0 |
| `b * e * q` | 948779/5000 | 3297179570789/200000000000000 | 3128294735993616631/1000000000000000000 |
| `c * e * q` | -549341/10000 | 6428061595397/500000000000000 | 0 |
| `e * q` | -440980077569/2000000000 | 43659109/1000000000 | 0 |
| `b * b * e * q` | 100 | 249006298365556069/40000000000000000000 | 249006298365556069/400000000000000000 |
| `b * b * q` | 78493/2000 | 1290188074432933/40000000000000000 | 101270732526464209969/80000000000000000000 |
| `b * e * f * v` | 56100 | 38890138966837193/4000000000000000000 | 21817367960395665273/40000000000000000 |
| `b * e * f` | 3462667/62500 | 466986142567/20000000000000 | 1617017505324046189/1250000000000000000 |
| `b * e * v` | -874111/2500 | 1213837478287/40000000000000 | 0 |
| `b * f * v` | 620731/5000 | 201503310709001/4000000000000000 | 125079351559708899731/20000000000000000000 |
| `b * f` | -40137149301/2500000000 | 2419617319/20000000000 | 0 |
| `e * f * v` | 2084503/10000 | 514957945033/20000000000000 | 1073431381295123599/200000000000000000 |
| `e * f` | 124552219691153113/363281250000000 | 6183527/100000000 | 770172013370176935369551/36328125000000000000000 |
| `e * v` | 57986625693/625000000 | 16072847/200000000 | 932010162809857971/125000000000000000 |
| `f * v` | -1111621226197/5000000000 | 2668175881/20000000000 | 0 |
| `b * c * e * v` | -600 | 178716933440629871/20000000000000000000 | 0 |
| `b * c * v` | 88711/2500 | 925994473785647/20000000000000000 | 82145895763998531017/50000000000000000000 |
| `c * e * v` | 1382627/5000 | 2366453482351/100000000000000 | 3271922478942516077/500000000000000000 |
| `a * b * c * v` | -100 | 20400584251971589057/1250000000000000000000 | 0 |
| `a * f * v` | 166393/1250 | 58782582834311/1250000000000000 | 9781010305549510223/1562500000000000000 |
| `b * e * u * w` | 100 | 62311313803515399/12500000000000000000 | 62311313803515399/125000000000000000 |
| `b * e * w` | -781981/10000 | 2022634914257/100000000000000 | 0 |
| `b * u * w` | -873787/10000 | 322856548204743/12500000000000000 | 0 |
| `b * w` | 314751239403/10000000000 | 10479973649/100000000000 | 3298584694933530491547/1000000000000000000000 |
| `e * u * w` | -2334701/10000 | 825085920519/62500000000000 | 0 |
| `e * w` | -11088664603253/310000000000 | 26782417/500000000 | 0 |
| `b * e * e * u` | 35300 | 86662608825303/25000000000000000 | 30591900915331959/250000000000000 |
| `b * e * e` | 5083715329/10000 | 2813081729/200000000000 | 14300906707447123841/2000000000000000 |
| `e * e * u` | -721157897/10000 | 1147529943/125000000000 | 0 |
| `e * e` | -29483497511/400000000 | 37249/1000000 | 0 |
| `b * e * v * r` | -100 | 38890138966837193/4000000000000000000 | 0 |
| `b * e * r` | 150069/5000 | 466986142567/20000000000000 | 70080143428887123/100000000000000000 |
| `b * v * r` | -6709/10000 | 201503310709001/4000000000000000 | 0 |
| `b * r` | -555420840117639/25000000000000 | 2419617319/20000000000 | 0 |
| `e * v * r` | 1908167/10000 | 514957945033/20000000000000 | 982625757099784511/200000000000000000 |
| `b * e * e * r` | -23500 | 90128325515431/20000000000000000 | 0 |
| `e * e * r` | 624193/2500 | 1193420711/100000000000 | 744924853861223/250000000000000 |
| `b * e * p * v` | 900 | 163245360942383769/20000000000000000000 | 1469208248481453921/200000000000000000 |
| `b * e * p` | -513719/10000 | 1960222396311/100000000000000 | 0 |
| `b * p * v` | 272681/2500 | 845830885711833/20000000000000000 | 230642011746788334273/50000000000000000000 |
| `e * p * v` | -343353/2000 | 2161588974489/100000000000000 | 0 |
| `e * p` | -34591144821679/1250000000000 | 25955991/500000000 | 0 |
| `p * v` | 56346141909493/312500000000 | 11199942873/100000000000 | 631073570500272736393389/31250000000000000000000 |
| `b * e * q * u` | -200 | 101576211037296723/25000000000000000000 | 0 |
| `b * q * u` | 69907/5000 | 526301611592211/25000000000000000 | 36792166761576694377/125000000000000000000 |
| `e * q * u` | 135241/2500 | 1345006170963/125000000000000 | 181899979567207083/312500000000000000 |
| `q * u` | -289950597523861/625000000000 | 6968943891/125000000000 | 0 |
| `b * e * f * q` | -100 | 105638336268508771/20000000000000000000 | 0 |
| `b * f * q` | -500731/5000 | 547348892582947/20000000000000000 | 0 |
| `e * f * q` | 298471/5000 | 1398794193251/100000000000000 | 417499501653819221/500000000000000000 |
| `a * b * p * v` | -56800 | 18634500243117392823/1250000000000000000000 | 0 |
| `a * p * v` | -546267/5000 | 246745941435063/6250000000000000 | 0 |
| `a * b * q * u` | 56800 | 11594950804988000541/1562500000000000000000 | 823241507154148038411/1953125000000000000 |
| `a * q * u` | 546267/5000 | 153532802862621/7812500000000000 | 83869903621355385807/39062500000000000000 |
| `b * e * e * f` | 83400 | 90128325515431/20000000000000000 | 37583511739934727/100000000000000 |
| `e * e * f` | 22605193967/10000 | 1193420711/100000000000 | 26977506656390050537/1000000000000000 |
| `a * b * f` | 23793/500 | 53306589154889/1250000000000000 | 1268323675762273977/625000000000000000 |
| `a * b * e * f` | -66 | 10288171706893577/1250000000000000000 | 0 |
| `a * e * f` | -47884327/500000 | 136229283337/6250000000000 | 0 |
| `p * w` | -82753716833/2500000000 | 18662626503/250000000000 | 0 |
| `q * r` | 524746210399671/5000000000000 | 7247638307/100000000000 | 3803170735945737319796997/500000000000000000000000 |
| `b * e * p * w` | -100 | 272018101713681159/50000000000000000000 | 0 |
| `b * p * w` | 721/10 | 1409420216133063/50000000000000000 | 1016191975831938423/500000000000000000 |
| `e * p * w` | 402347/2500 | 3601886915079/250000000000000 | 1449208394621290413/625000000000000000 |
| `b * e * q * r` | 100 | 105638336268508771/20000000000000000000 | 105638336268508771/200000000000000000 |
| `b * q * r` | -3620347997/25000000 | 547348892582947/20000000000000000 | 0 |
| `e * q * r` | 399649/10000 | 1398794193251/100000000000000 | 559026700538568899/1000000000000000000 |
| `a * b * q * r` | -100 | 12058643452494905357/1250000000000000000000 | 0 |
| `a * b * r` | 1308909/5000 | 53306589154889/1250000000000000 | 69773474304136606101/6250000000000000000 |
| `a * q * r` | 68981/5000 | 159672719541517/6250000000000000 | 11014383866693384177/31250000000000000000 |
| `b * e * j` | -1910851/5000 | 2050940638183/100000000000000 | 0 |
| `e * j` | 1044448414257997/31250000000000 | 27157223/500000000 | 28364318498000804062331/15625000000000000000000 |
| `a * e * f * p` | -37500 | 18321067628143119/3125000000000000000 | 0 |
| `a * e * p` | -125/2 | 571836437721/31250000000000 | 0 |
| `a * f * p` | -125/2 | 94927811544783/3125000000000000 | 0 |
| `e * f * p` | -578311/2000 | 831603995649/50000000000000 | 0 |
| `f * p` | -144655066607/2500000000 | 4308828993/50000000000 | 0 |
| `a * c * e * f` | -566 | 20057446073556521/3125000000000000000 | 0 |
| `c * e * f` | 153334957/250000 | 910419230791/50000000000000 | 139599093605311060987/12500000000000000000 |
| `a * f * h * u` | 100 | 2489798868245217837/195312500000000000000 | 2489798868245217837/1953125000000000000 |
| `a * f * h` | -640253/10000 | 80819257579291/1562500000000000 | 0 |
| `a * f * u` | 313271/5000 | 21745158195663/781250000000000 | 6812127453113543673/3906250000000000000 |
| `f * h * u` | -423479/5000 | 113013429633027/3125000000000000 | 0 |
| `f * u` | -145779361043/5000000000 | 987025473/12500000000 | 0 |
| `a * e * f * u` | -110300 | 4196815531762959/781250000000000000 | 0 |
| `e * f * u` | 254993/10000 | 190495916289/12500000000000 | 48575125182280977/125000000000000000 |
| `a * f * u * w` | -100 | 3017553857653958847/390625000000000000000 | 0 |
| `a * f * w` | 52431/1000 | 97950266421721/3125000000000000 | 5135630418757253751/3125000000000000000 |
| `f * u * w` | -229721/10000 | 136968537862737/6250000000000000 | 0 |
| `f * w` | 28749180587579/930000000000 | 4446019991/50000000000 | 127819431617245360291789/46500000000000000000000 |
| `a * f * v * r` | 100 | 1883335171428490129/125000000000000000000 | 1883335171428490129/1250000000000000000 |
| `a * f * r` | -46369/10000 | 22614766885151/625000000000000 | 0 |
| `f * v * r` | -33283/10000 | 85485687051359/2000000000000000 | 0 |
| `f * r` | -53535326900156029/625000000000000 | 1026497521/10000000000 | 0 |
| `b * h * q` | -4422783/10000 | 1956081677076527/50000000000000000 | 0 |
| `h * q` | -858425068379/10000000000 | 25901162287/250000000000 | 0 |
| `b * b * h * q` | -59800 | 147725244334496395567/10000000000000000000000 | 0 |
| `b * b * h` | -308571/5000 | 653036051573059/10000000000000000 | 0 |
| `a * b * b * e` | 127800 | 24250851008967503/2500000000000000000 | 15496293794730234417/12500000000000000 |
| `k` | -3835471131299697919/1937500000000000000 | 320391/1000000 | 0 |
| `c * k` | 99576552280271/465000000000 | 47172128103/500000000000 | 1565745960073340123851971/77500000000000000000000 |
| `a * b * k` | -147233/2500 | 533067555352041/12500000000000000 | 0 |
| `a * k` | 1826994217/19531250 | 7058534121/62500000000 | 12895901019564178257/1220703125000000000 |
| `b * k` | 20197132158569/232500000000 | 24196248711/200000000000 | 162898277652557271284853/15500000000000000000000 |
| `a * b * c * k` | 200 | 78485135377147052553/6250000000000000000000 | 78485135377147052553/31250000000000000000 |
| `a * c * k` | -495143/1250 | 1039249154237193/31250000000000000 | 0 |
| `b * c * k` | -1371101/5000 | 3562486286466663/100000000000000000 | 0 |
| `a * b * e * j` | 200 | 45184273199809673/6250000000000000000 | 45184273199809673/31250000000000000 |
| `a * e * j` | -160711/500 | 598300779913/31250000000000 | 0 |
| `b * v * k` | 147233/2500 | 2015039396403369/40000000000000000 | 296680295450657227977/100000000000000000000 |
| `v * k` | 6530814181/500000000 | 26681842089/200000000000 | 174254152690043864109/100000000000000000000 |
| `b * e * v * j` | -200 | 170800285407242057/20000000000000000000 | 0 |
| `b * v * j` | -279/5 | 884975572058249/20000000000000000 | 0 |
| `e * v * j` | -44357/1000 | 2261626374217/100000000000000 | 0 |
| `v * j` | 9866475971341/78125000000 | 11718271369/100000000000 | 115618042887891704835829/7812500000000000000000 |
| `a * u * k` | 147233/2500 | 217452260665647/7812500000000000 | 32016148694585204751/19531250000000000000 |
| `u * k` | -30676870831/312500000 | 9870285537/125000000000 | 0 |
| `a * e * u * j` | -200 | 18431852126779791/3906250000000000000 | 0 |
| `a * u * j` | -279/5 | 95501824491087/3906250000000000 | 0 |
| `e * u * j` | -167501/1250 | 836632568961/62500000000000 | 0 |
| `u * j` | -5789214810411/156250000000 | 4334883777/62500000000 | 0 |
| `f * k` | 552942764037449971/2906250000000000 | 10265007249/100000000000 | 1891987160375506819929946593/96875000000000000000000000 |
| `b * f * v * w` | 100 | 27962412923777359769/2000000000000000000000 | 27962412923777359769/20000000000000000000 |
| `b * f * w` | 168909/5000 | 335767875740311/10000000000000000 | 56714216123420190699/50000000000000000000 |
| `b * v * w` | 279/10 | 872761725515071/20000000000000000 | 243500521418704809/200000000000000000 |
| `f * v * w` | -1483749/10000 | 370260098830489/10000000000000000 | 0 |
| `v * w` | 291568029/10000000 | 11556543551/100000000000 | 3369518625217730979/1000000000000000000 |
| `b * c * w` | 847213/10000 | 1542997960263217/50000000000000000 | 1307247930908480864221/500000000000000000000 |
| `a * u * r` | -75213/10000 | 21745158195663/781250000000000 | 0 |
| `u * r` | 342409161/20000000 | 987025473/12500000000 | 337966564095558153/250000000000000000 |
| `b * f * q * w` | -100 | 75955058474842972243/10000000000000000000000 | 0 |
| `b * q * w` | -900711/10000 | 2370706279061237/100000000000000000 | 0 |
| `f * q * w` | 12767/125 | 1005747520224083/50000000000000000 | 12840378590700867661/6250000000000000000 |
| `q * w` | -56558009059/2500000000 | 31391351797/500000000000 | 0 |
| `b * b * q * w` | 100 | 179038108900983679477/20000000000000000000000 | 179038108900983679477/200000000000000000000 |
| `b * b * w` | 39263/2000 | 791458089946129/20000000000000000 | 31075018985554862927/40000000000000000000 |
| `a * r * k` | 327483/2500 | 226148374702719/6250000000000000 | 74059748192770526277/15625000000000000000 |
| `r * k` | -4492694492794081/29062500000000 | 10265007249/100000000000 | 0 |
| `a * c * r * k` | -200 | 33296503652605426527/3125000000000000000000 | 0 |
| `c * r * k` | 1887501/2500 | 1511347812292017/50000000000000000 | 2852670507048994379517/125000000000000000000 |
| `a * e * r * j` | -300 | 19168958687632607/3125000000000000000 | 0 |
| `a * r * j` | -2626/25 | 99321029469599/3125000000000000 | 0 |
| `e * r * j` | 212142943827/312500000 | 870090267697/50000000000000 | 184583510784464063656419/15625000000000000000000 |
| `r * j` | 79592937200733/312500000000 | 4508239729/50000000000 | 358824041636146558521357/15625000000000000000000 |
| `b * c * v * k` | -200 | 296680295450657227977/20000000000000000000000 | 0 |
| `c * v * k` | -44357/1000 | 3928447656289737/100000000000000000 | 0 |
| `c * c * e * q` | 100 | 946422792875086501/250000000000000000000 | 946422792875086501/2500000000000000000 |
| `c * c * e` | -49135469/1250000 | 4183768363777/250000000000000 | 0 |
| `c * c * q` | 164114969/1250000 | 4903745040803557/250000000000000000 | 804777965355379492144733/312500000000000000000000 |
| `c * c` | -4973189117693/312500000000 | 21677556289/250000000000 | 0 |
| `a * c * c * q` | -400 | 108034406993943164267/15625000000000000000000 | 0 |
| `a * c * c` | -152787/2500 | 477578242602959/15625000000000000 | 0 |
| `c * e * f * q` | -600 | 205948665454924483/50000000000000000000 | 0 |
| `c * e * p` | 99189547/625000 | 3821578422903/250000000000000 | 379060632592722994941/156250000000000000000 |
| `c * e * f * v` | -647100 | 75818803121043689/10000000000000000000 | 0 |
| `c * f * v` | -622319/10000 | 392843539487273/10000000000000000 | 0 |
| `c * e * q * u` | 100 | 198029293569395379/62500000000000000000 | 198029293569395379/625000000000000000 |
| `c * q * u` | 432057/625 | 1026058515903603/62500000000000000 | 443315764205763001371/39062500000000000000 |
| `a * c * p * v` | -76600 | 36329145195308630679/3125000000000000000000 | 0 |
| `c * p * v` | -46504/625 | 1649001189020409/50000000000000000 | 0 |
| `a * c * f * v` | 100 | 8654736018444111463/625000000000000000000 | 8654736018444111463/6250000000000000000 |
| `a * c * q * u` | 76600 | 22605095163872277693/3906250000000000000000 | 8657751447763082356419/19531250000000000000 |
| `c * e * p * w` | -200 | 530316616167826407/125000000000000000000 | 0 |
| `c * e * w` | 89393309/930000 | 3943255602161/250000000000000 | 352500666509959340749/232500000000000000000 |
| `c * p * w` | -779/5 | 2747754487916199/125000000000000000 | 0 |
| `c * e * f * w` | 700 | 126337966237636279/25000000000000000000 | 884365763663453953/250000000000000000 |
| `c * f * w` | -46097/2500 | 654600861334903/25000000000000000 | 0 |
| `e * f * w` | 39834751/232500 | 858081858263/50000000000000 | 34181477161523897513/11625000000000000000 |
| `c * e * q * r` | -400 | 205948665454924483/50000000000000000000 | 0 |
| `c * q * r` | 161379/500 | 1067091530854531/50000000000000000 | 172206164157773358249/25000000000000000000 |
| `a * c * f * w` | -100 | 14421511576069247993/1562500000000000000000 | 0 |
| `c * e * u * w` | -500 | 121479875335773927/31250000000000000000 | 0 |
| `c * e * v * r` | 400 | 75818803121043689/10000000000000000000 | 75818803121043689/25000000000000000 |
| `c * e * e` | -388719/2000 | 5484282017/500000000000 | 0 |
| `c * e * e * f` | 231100 | 175710911542663/50000000000000000 | 406067916575094193/500000000000000 |
| `c * e * e * p` | 3700 | 737564635620279/250000000000000000 | 27289891517950323/2500000000000000 |
| `e * e * p` | 239308/625 | 5009506263/500000000000 | 299703731196501/78125000000000 |
| `c * e * h * p` | -500 | 437566907843970597/62500000000000000000 | 0 |
| `c * e * h` | -53199/1250 | 3253600034531/125000000000000 | 0 |
| `e * h * p` | -438749/2000 | 2971935013509/125000000000000 | 0 |
| `e * h` | -31300598393/1250000000 | 22098307/250000000 | 0 |
| `c * e * f * h` | -102 | 104242091506338709/12500000000000000000 | 0 |
| `c * f * h` | 1610669/10000 | 540114463763413/12500000000000000 | 869945623235352653297/125000000000000000000 |
| `e * f * h` | -37675489/500000 | 708007657973/25000000000000 | 0 |
| `c * h * u` | -100 | 519345369242469/15625000000000000 | 0 |
| `c * v * j` | -8430139/78125 | 1725316248471977/50000000000000000 | 0 |
| `a * c * u * k` | -200 | 32016148694585204751/3906250000000000000000 | 0 |
| `c * u * k` | -14938/625 | 1453231750469121/62500000000000000 | 0 |
| `c * w * j` | 83387/1250 | 2874919373241847/125000000000000000 | 239730901776517895789/156250000000000000000 |
| `w * j` | -29829129441/625000000 | 19526324759/250000000000 | 0 |
| `c * e * j` | 49751/2500 | 3998439413959/250000000000000 | 198926359283874209/625000000000000000 |
| `a * c * w * j` | -100 | 63337348711891131257/7812500000000000000000 | 0 |
| `a * w * j` | -213267/5000 | 430184460765529/15625000000000000 | 0 |
| `a * c * e * j` | 100 | 88089618728930729/15625000000000000000 | 88089618728930729/156250000000000000 |
| `a * f * r * k` | -100 | 7245567777100414041/625000000000000000000 | 0 |
| `a * f * k` | -723203/5000 | 226148374702719/6250000000000000 | 0 |
| `f * r * k` | -4325931173/312500000 | 328880567250711/10000000000000000 | 0 |
| `a * f * w * j` | 100 | 13782679938466783631/1562500000000000000000 | 13782679938466783631/15625000000000000000 |
| `a * f * j` | 1165431/5000 | 99321029469599/3125000000000000 | 115751806695784232169/15625000000000000000 |
| `f * w * j` | -89687/1250 | 625603918953601/25000000000000000 | 0 |
| `f * j` | -87292272597/625000000 | 4508239729/50000000000 | 0 |
| `a * e * f * j` | 500 | 19168958687632607/3125000000000000000 | 19168958687632607/6250000000000000 |
| `e * f * j` | -3121933/5000 | 870090267697/50000000000000 | 0 |
| `c * f * k` | -2643681/5000 | 1511347812292017/50000000000000000 | 0 |
| `a * c * f * k` | 600 | 33296503652605426527/3125000000000000000000 | 99889510957816279581/15625000000000000000 |
| `a * f * f * v` | 138700 | 1883335171428490129/125000000000000000000 | 2612185882771315808923/1250000000000000000 |
| `a * f * f` | -50373/2000 | 22614766885151/625000000000000 | 0 |
| `f * f * v` | -1908996119/1250 | 85485687051359/2000000000000000 | 0 |
| `f * f` | -2208426999/250000000 | 1026497521/10000000000 | 0 |
| `a * e * f * f` | 100 | 4364650008834143/625000000000000000 | 4364650008834143/6250000000000000 |
| `e * f * f` | 15750584109/10000 | 198114021553/10000000000000 | 3120411559642765301277/100000000000000000 |
| `c * f * h * q` | 100 | 122180913191312944969/12500000000000000000000 | 122180913191312944969/125000000000000000000 |
| `c * h * q` | 2346333/10000 | 3813505827001871/125000000000000000 | 8947754567586780989043/1250000000000000000000 |
| `f * h * q` | 173143/1250 | 829847338513193/25000000000000000 | 143682257732189775599/31250000000000000000 |
| `b * c * h * q` | -500 | 287999773561008299791/25000000000000000000000 | 0 |
| `c * c * h * q` | -75400 | 561473903426966472943/62500000000000000000000 | 0 |
| `c * c * h` | -221603699/5000 | 2482058517534211/62500000000000000 | 0 |
| `c * c * e * h` | 8600 | 479037293884102723/62500000000000000000 | 20598603637016417089/312500000000000000 |
| `c * q * u * w` | 400 | 142385114193427084707/31250000000000000000000 | 142385114193427084707/78125000000000000000 |
| `c * q * w` | 2146999/10000 | 4621842899127701/250000000000000000 | 9923092082584274919299/2500000000000000000000 |
| `q * u * w` | -120649/10000 | 967073374810179/62500000000000000 | 0 |
| `b * c * q * w` | -100 | 349046197585023107221/50000000000000000000000 | 0 |
| `c * q * v * r` | -400 | 88866315598034487149/10000000000000000000000 | 0 |
| `c * q * v` | -69529/250 | 2773691925404491/100000000000000000 | 0 |
| `q * v * r` | 120649/10000 | 603576070568653/20000000000000000 | 72820849338037415797/200000000000000000000 |
| `q * v` | -33788082363/2000000000 | 18838792427/200000000000 | 0 |
| `b * c * q * v` | 800 | 209471987898472564811/20000000000000000000000 | 209471987898472564811/25000000000000000000 |
| `b * q * v` | -139961/1250 | 1422724442879467/40000000000000000 | 0 |
| `a * p * v * r` | -100 | 7905493217637983457/625000000000000000000 | 0 |
| `a * p * r` | -98121/2000 | 94927811544783/3125000000000000 | 0 |
| `p * v * r` | 5437/1250 | 358834969708047/10000000000000000 | 1950985730302651539/12500000000000000000 |
| `p * r` | 20814403907/250000000 | 4308828993/50000000000 | 89685707026494075651/12500000000000000000 |
| `c * f * v * w` | -100 | 54514505131109386937/5000000000000000000000 | 0 |
| `c * v * w` | 721/10 | 1701504576644383/50000000000000000 | 1226784799760600143/500000000000000000 |
| `a * b * v * r` | 100 | 4439319438230001031/250000000000000000000 | 4439319438230001031/2500000000000000000 |
| `a * q * u * r` | 100 | 4919037470915514219/781250000000000000000 | 4919037470915514219/7812500000000000000 |
| `q * u * r` | -169/4 | 223277993323749/12500000000000000 | 0 |
| `c * f * w * k` | -300 | 209728224563950907073/25000000000000000000000 | 0 |
| `c * w * k` | -67151/9300 | 6546029044725207/250000000000000000 | 0 |
| `f * w * k` | 52015057/465000 | 1424464790936481/50000000000000000 | 24697872431684714198139/7750000000000000000000 |
| `w * k` | -22989762439/1550000000 | 44460338679/500000000000 | 0 |
| `e * f * f * v` | 100 | 16498737600912287/2000000000000000000 | 16498737600912287/20000000000000000 |
| `e * e * f * r` | 23600 | 38236006159729/10000000000000000 | 2255924363424011/25000000000000 |
| `e * f * r` | 23451681173/312500000 | 198114021553/10000000000000 | 4646106869361806321669/3125000000000000000000 |
| `e * e * f * f` | 35300 | 38236006159729/10000000000000000 | 13497310174384337/100000000000000 |
| `e * f * k` | 441699/5000 | 1981146399057/100000000000000 | 875070383317077843/500000000000000000 |
| `e * k` | 42341707839/500000000 | 61835463/1000000000 | 2618219108435294457/500000000000000000 |
| `e * e * f * j` | -300 | 167927421665521/50000000000000000 | 0 |
| `e * e * j` | -287583/1000 | 5241344039/500000000000 | 0 |
| `e * f * h * u` | 16400 | 21811591919174211/3125000000000000000 | 894275268686142651/7812500000000000 |
| `e * h * u` | 19163/500 | 680782543749/31250000000000 | 13045835885862087/15625000000000000 |
| `h * w` | -327771503867/5000000000 | 15888911731/125000000000 | 0 |
| `e * h * r` | 15174/125 | 708007657973/25000000000000 | 5371654101041151/1562500000000000 |
| `h * r` | -1630340643541/10000000000 | 3668433461/25000000000 | 0 |
| `f * h * v` | 153841/1250 | 305503470198619/5000000000000000 | 46998959358825745579/6250000000000000000 |
| `h * v` | -10333322437/250000000 | 9535362221/50000000000 | 0 |
| `c * h * v` | -100 | 1403919985884493/25000000000000000 | 0 |
| `b * e * h * p` | 500 | 224443504155213189/25000000000000000000 | 224443504155213189/50000000000000000 |
| `b * e * h` | 115191/5000 | 1668886242947/50000000000000 | 192240675211307877/250000000000000000 |
| `e * e * f * p` | -160300 | 160499571160257/50000000000000000 | 0 |
| `e * f * h * p` | -22500 | 95217825897814851/12500000000000000000 | 0 |
| `f * h * p` | -6857/10000 | 493356610869507/12500000000000000 | 0 |
| `f * h * w` | 1115059/10000 | 509064842949509/12500000000000000 | 567637334714436556031/125000000000000000000 |
| `c * f * h * w` | 100 | 74951144021985058597/6250000000000000000000 | 74951144021985058597/62500000000000000000 |
| `c * h * w` | 279/10 | 2339372140890323/62500000000000000 | 652684827308400117/625000000000000000 |
| `e * f * h * r` | -11800 | 22683857353796947/2500000000000000000 | 0 |
| `f * h * r` | -769213/10000 | 117532939656979/2500000000000000 | 0 |
| `f * q * v * r` | -100 | 19337973724949073467/2000000000000000000000 | 0 |
| `f * q * v` | 550947/2500 | 603576070568653/20000000000000000 | 332538425351587664391/50000000000000000000 |
| `f * q * r` | -390902003/25000000 | 232207083717973/10000000000000000 | 0 |
| `c * f * q * v` | -300 | 88866315598034487149/10000000000000000000000 | 0 |
| `p * u * w` | 94751/2500 | 574939534677921/31250000000000000 | 54476095850267692671/78125000000000000000 |
| `p * u` | 140851498481/1250000000 | 4143141009/62500000000 | 583567619535732307329/78125000000000000000 |
| `f * q * u * w` | 100 | 30984063855543324981/6250000000000000000000 | 30984063855543324981/62500000000000000000 |
| `f * q * u` | 500731/5000 | 223277993323749/12500000000000000 | 111802212874994160519/62500000000000000000 |
| `e * f * w * j` | -300 | 120741556358044993/25000000000000000000 | 0 |
| `e * w * j` | 163/10 | 3768580678487/250000000000000 | 614278650593381/2500000000000000 |
| `c * e * f * k` | -300 | 291690127772359281/50000000000000000000 | 0 |
| `c * e * k` | -287583/1000 | 9104220723879/500000000000000 | 0 |
| `b * h * q * u` | 100 | 60261008225696567289/6250000000000000000000 | 60261008225696567289/62500000000000000000 |
| `h * q * u` | -18313/400 | 797937106575609/31250000000000000 | 0 |
| `e * f * p * v` | -600 | 69255149153653071/10000000000000000000 | 0 |
| `f * p * v` | -282999/2500 | 358834969708047/10000000000000000 | 0 |
| `e * f * q * u` | 100 | 43092652711483557/12500000000000000000 | 43092652711483557/125000000000000000 |
| `c * c * e * v` | 324300 | 348420045566984783/50000000000000000000 | 1129926207773731651269/500000000000000000 |
| `c * c * v` | 1/10 | 1805285210191631/50000000000000000 | 1805285210191631/500000000000000000 |
| `b * b * h * w` | -11800 | 90621159840741824371/5000000000000000000000 | 0 |
| `b * h * w` | 32937/500 | 1199946502836851/25000000000000000 | 39522637963937361387/12500000000000000000 |
| `b * h * p * v` | -100 | 96846790583119166667/5000000000000000000000 | 0 |
| `b * h * v` | -28841/1250 | 720120090292141/10000000000000000 | 0 |
| `h * p * v` | 11443/2000 | 1282382259015627/25000000000000000 | 14674300189915819761/50000000000000000000 |
| `b * e * h * u` | -16400 | 51413378486468229/6250000000000000000 | 0 |
| `b * b * q * v` | -100 | 107445572650700227307/8000000000000000000000 | 0 |
| `b * b * v` | -152787/10000 | 474975234185039/8000000000000000 | 0 |
| `b * c * q * q` | -600 | 568994425947443825017/100000000000000000000000 | 0 |
| `b * q * q` | 441699/2500 | 3864584882108249/200000000000000000 | 1706983277842331475051/500000000000000000000 |
| `c * q * q` | 369747/5000 | 7534254392121977/500000000000000000 | 2785767958723924629819/2500000000000000000000 |
| `q * q` | -59735814459/1250000000 | 51172321369/1000000000000 | 0 |
| `b * q * u * w` | -100 | 73034348339039528259/12500000000000000000000 | 0 |
| `b * q * v * r` | 100 | 45582668425415243213/4000000000000000000000 | 45582668425415243213/40000000000000000000 |
| `c * c * q * q` | 300 | 1109290876915295039641/250000000000000000000000 | 3327872630745885118923/2500000000000000000000 |
| `c * e * p * q` | 300 | 864490719780156339/250000000000000000000 | 2593472159340469017/2500000000000000000 |
| `c * p * q` | -2163/10 | 4479226527358323/250000000000000000 | 0 |
| `e * p * q` | 405723/2500 | 5871582592083/500000000000000 | 2382236104007691009/1250000000000000000 |
| `p * q` | 334046217/2500000 | 30422707731/500000000000 | 10162590428437203627/1250000000000000000 |
| `b * e * p * q` | -600 | 443427788936700243/100000000000000000000 | 0 |
| `b * p * q` | -837/5 | 2297553310552851/100000000000000000 | 0 |
| `b * h * r` | 721/10 | 277043763408181/5000000000000000 | 199748553417298501/50000000000000000 |
| `b * e * h * r` | -100 | 53469446337778933/5000000000000000000 | 0 |
| `b * c * e * e` | -11800 | 414178462205857/100000000000000000 | 0 |
| `e * p * u` | 3583693/5000 | 799626214737/62500000000000 | 2865614868369483741/312500000000000000 |
| `e * p * u * w` | 300 | 110963330192838753/31250000000000000000 | 332889990578516259/312500000000000000 |
| `e * p * v * r` | -300 | 69255149153653071/10000000000000000000 | 0 |
| `e * p * r` | -29163/2000 | 831603995649/50000000000000 | 0 |
| `f * q * q` | -441699/5000 | 1639510004341391/100000000000000000 | 0 |
| `e * f * p * q` | 300 | 188119634667747237/50000000000000000000 | 564358904003241711/500000000000000000 |
| `f * p * q` | 837/10 | 974713132993509/50000000000000000 | 815834892315567033/500000000000000000 |
| `e * p * p` | -300 | 3490743361617/250000000000000 | 0 |
| `p * p` | -837/10 | 18086753169/250000000000 | 0 |
| `e * u * r` | -100 | 190495916289/12500000000000 | 0 |
| `f * h * u * w` | -100 | 15682760616745523763/1562500000000000000000 | 0 |
| `h * u * w` | -3017/625 | 489489703696917/15625000000000000 | 0 |
| `h * p * u` | -138769/5000 | 474385502389491/15625000000000000 | 0 |
| `c * f * q * q` | 300 | 241389976469196021103/50000000000000000000000 | 724169929407588063309/500000000000000000000 |
| `h * u * r` | 847213/10000 | 113013429633027/3125000000000000 | 95746446759685703751/31250000000000000000 |
| `f * h * p * v` | 100 | 41086245196601673453/2500000000000000000000 | 41086245196601673453/25000000000000000000 |
| `b * f * h` | -12257/500 | 277043763408181/5000000000000000 | 0 |
| `e * f * u * w` | 100 | 26434927807508241/6250000000000000000 | 26434927807508241/62500000000000000 |
| `b * e * f * h` | 34 | 53469446337778933/5000000000000000000 | 908980587742241861/2500000000000000000 |
| `h * p * u * w` | 100 | 65830001781087276579/7812500000000000000000 | 65830001781087276579/78125000000000000000 |
| `h * p * w` | 80747/10000 | 2136852071966997/62500000000000000 | 172544394255119106759/625000000000000000000 |
| `h * q * u * r` | -100 | 25565106957575936751/3125000000000000000000 | 0 |
| `h * q * r` | -80747/10000 | 829847338513193/25000000000000000 | 0 |
| `c * h * r` | 26461/5000 | 540114463763413/12500000000000000 | 14291968825643671393/62500000000000000000 |
| `c * e * h * r` | -200 | 104242091506338709/12500000000000000000 | 0 |
| `c * e * e * u` | -60300 | 168954276097719/62500000000000000 | 0 |
| `c * e * e * r` | 600 | 175710911542663/50000000000000000 | 527132734627989/250000000000000 |
| `h * r * k` | -441699/5000 | 1175333065003251/25000000000000000 | 0 |
| `h * k` | 14151594261/500000000 | 36684449109/250000000000 | 519143439478870963449/125000000000000000000 |
| `e * h * j` | -96117/1000 | 3109474876277/125000000000000 | 0 |
| `h * j` | -57195297/1000000 | 16111268789/125000000000 | 0 |
| `c * h * r * k` | 300 | 173047813159623654483/12500000000000000000000 | 519143439478870963449/125000000000000000000 |
| `c * h * k` | -96117/1000 | 5401161495665397/125000000000000000 | 0 |
| `c * e * r * k` | -300 | 291690127772359281/50000000000000000000 | 0 |
| `e * r * k` | 441699/5000 | 1981146399057/100000000000000 | 875070383317077843/500000000000000000 |
| `c * c * q * w` | -300 | 680487795567268801333/125000000000000000000000 | 0 |
| `c * c * w` | 378639/10000 | 3008172808668241/125000000000000000 | 1139011544101334103999/1250000000000000000000 |
| `e * e * p * r` | -300 | 160499571160257/50000000000000000 | 0 |
| `c * c * e * w` | 300 | 580577352072970513/125000000000000000000 | 1741732056218911539/1250000000000000000 |
| `c * c * e * e` | 16000 | 807467294208961/250000000000000000 | 807467294208961/15625000000000 |
| `c * f * q * w` | -300 | 148079224645152412339/25000000000000000000000 | 0 |
| `e * f * p * w` | -300 | 115400854872216081/25000000000000000000 | 0 |
| `f * p * w` | -344751/2500 | 597931890529617/25000000000000000 | 0 |
| `e * h * r * j` | 300 | 99624465561038803/12500000000000000000 | 298873396683116409/125000000000000000 |
| `h * r * j` | 1623/10 | 516188940730771/12500000000000000 | 837774650806041333/125000000000000000 |
| `e * e * r * j` | -300 | 167927421665521/50000000000000000 | 0 |
| `p * k` | -147233/5000 | 43088424417/500000000000 | 0 |
| `c * p * k` | 100 | 6344037992188161/250000000000000000 | 6344037992188161/2500000000000000 |
| `e * p * j` | 1101/10 | 3652293449601/250000000000000 | 4021175088010701/2500000000000000 |
| `p * j` | 926293884513/31250000000 | 18923800257/250000000000 | 17529000449804637719841/7812500000000000000000 |
| `f * w * w` | -10 | 616969748131079/25000000000000000 | 0 |
| `w * w` | 213267/50000 | 19256835361/250000000000 | 4106847506934387/12500000000000000 |
| `c * w * w` | 10 | 2835241640706113/125000000000000000 | 2835241640706113/12500000000000000 |
| `r * w` | 10 | 4446019991/50000000000 | 4446019991/5000000000 |
| `f * h * p * w` | -100 | 68462603533750616883/6250000000000000000000 | 0 |
| `f * h * q * r` | 100 | 26587478878624190527/2500000000000000000000 | 26587478878624190527/25000000000000000000 |
| `p * v * j` | -342847/156250 | 1575955161602703/50000000000000000 | 0 |
| `q * u * j` | 342847/156250 | 980607063846501/62500000000000000 | 336198190018581328347/9765625000000000000000 |
| `q * j` | -583256191839/156250000000 | 31830657443/500000000000 | 0 |
| `c * q * j` | 617639/78125 | 4686523187305219/250000000000000000 | 2894579494884008157941/19531250000000000000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 145 | -116446649611749105763600769363493/3100000000000000000000000 |

## Stage 146

| Property | Value |
| --- | --- |
| Scope | root/EHQ-/BEP+/BFP+/CFQ- |
| Packet | forest:root/EHQ-/BEP+/BFP+/CFQ- |
| Index | 0 |
| Context | 60 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 130 |
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
| p | 157439/1000000 | 260019/500000 | 157439/1000000 | 260019/500000 |
| q | 35701/250000 | 379/1000 | 35701/250000 | 379/1000 |
| u | 304717/1000000 | 415781/500000 | 396459/1000000 | 415781/500000 |
| v | 416299/1000000 | 907/1000 | 416299/1000000 | 907/1000 |
| r | 332981/500000 | 1/1 | 332981/500000 | 1/1 |
| w | 332981/500000 | 1/1 | 332981/500000 | 1/1 |
| j | 268487/500000 | 871013/1000000 | 268487/500000 | 871013/1000000 |
| k | 268487/500000 | 871013/1000000 | 268487/500000 | 871013/1000000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 84 | A_CFQ | bitt ["actual-area","CFQ",[]] | `-1/1 * f * v + 1/1 * c * v + 1/1 * u + -1/1 * c + -93/1000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 84 | u | 304717/1000000 | 415781/500000 | 99114843/250000000 | 415781/500000 | 396459/1000000 | 415781/500000 | `(1/1, -131378924451/250000000000); (1/1, -792848421/1000000000); (1/1, -332287691583/500000000000); (1/1, -465954053181/500000000000); (1/1, -99114843/250000000); (1/1, -439053/1000000); (1/1, -349715919/500000000); (1/1, -371012733/500000000)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 146:0 | ABC | lo | 93/1000 | occupants none |
| 146:2 | ABE | lo | 279/1000 | occupants P |
| 146:3 | ABE | hi | 59/125 | vertex maximum 59/125 |
| 146:5 | ABF | hi | 306519/500000 | vertex maximum 306519/500000 |
| 146:8 | ABP | lo | 93/1000 | occupants none |
| 146:16 | ACE | lo | 161103/500000 | earlier 130:16; ACE; lo; 161103/500000 |
| 146:17 | ACE | hi | 59/125 | vertex maximum 59/125 |
| 146:18 | ACF | lo | 374889/1000000 | earlier 130:18; ACF; lo; 374889/1000000 |
| 146:19 | ACF | hi | 479923057073/500000000000 | vertex maximum 479923057073/500000000000 |
| 146:20 | ACH | lo | 279/1000 | occupants P |
| 146:21 | ACH | hi | 896233/1000000 | vertex maximum 896233/1000000 |
| 146:22 | ACP | lo | 93/1000 | occupants none |
| 146:24 | ACQ | lo | 29989/100000 | earlier 130:24; ACQ; lo; 29989/100000 |
| 146:26 | ACR | lo | 340567/1000000 | earlier 130:26; ACR; lo; 340567/1000000 |
| 146:30 | AEF | lo | 279/1000 | occupants Q |
| 146:32 | AEH | lo | 57859/500000 | earlier 130:32; AEH; lo; 57859/500000 |
| 146:34 | AEP | lo | 93/1000 | occupants none |
| 146:36 | AEQ | lo | 93/1000 | occupants none |
| 146:42 | AFH | lo | 93/1000 | occupants none |
| 146:44 | AFP | lo | 4301/31250 | earlier 130:44; AFP; lo; 4301/31250 |
| 146:47 | AFQ | hi | 72357/125000 | earlier 130:47; AFQ; hi; 72357/125000 |
| 146:50 | AFS | lo | 93/1000 | occupants none |
| 146:52 | AHP | lo | 93/1000 | occupants none |
| 146:56 | AHR | lo | 93/1000 | occupants none |
| 146:60 | APQ | lo | 99703/1000000 | earlier 130:60; APQ; lo; 99703/1000000 |
| 146:62 | APR | lo | 13289/125000 | earlier 130:62; APR; lo; 13289/125000 |
| 146:63 | APR | hi | 131513/250000 | earlier 130:63; APR; hi; 131513/250000 |
| 146:66 | BCE | lo | 93/1000 | occupants none |
| 146:70 | BCH | lo | 279/1000 | occupants P |
| 146:72 | BCP | lo | 93/1000 | occupants none |
| 146:74 | BCQ | lo | 63189/500000 | earlier 130:74; BCQ; lo; 63189/500000 |
| 146:76 | BCR | lo | 93/1000 | occupants none |
| 146:81 | BEF | hi | 802809/1000000 | earlier 130:81; BEF; hi; 802809/1000000 |
| 146:84 | BEP | lo | 93/1000 | occupants none |
| 146:85 | BEP | hi | 66919/250000 | earlier 130:85; BEP; hi; 66919/250000 |
| 146:92 | BFH | lo | 185141/500000 | earlier 130:92; BFH; lo; 185141/500000 |
| 146:94 | BFP | lo | 93/1000 | occupants none |
| 146:102 | BHP | lo | 93/1000 | occupants none |
| 146:104 | BHQ | lo | 162733/500000 | earlier 130:104; BHQ; lo; 162733/500000 |
| 146:108 | BHS | lo | 41401/125000 | earlier 130:108; BHS; lo; 41401/125000 |
| 146:110 | BPQ | lo | 93/1000 | occupants none |
| 146:114 | BPS | lo | 93/1000 | occupants none |
| 146:116 | CEF | lo | 279/1000 | occupants Q |
| 146:117 | CEF | hi | 4547921/7812500 | vertex maximum 4547921/7812500 |
| 146:121 | CEP | hi | 143/500 | earlier 130:121; CEP; hi; 143/500 |
| 146:122 | CEQ | lo | 93/1000 | occupants none |
| 146:124 | CER | lo | 93/1000 | occupants none |
| 146:125 | CER | hi | 211705859/500000000 | vertex maximum 211705859/500000000 |
| 146:130 | CFP | lo | 144257/1000000 | earlier 130:130; CFP; lo; 144257/1000000 |
| 146:132 | CFQ | lo | 93/1000 | occupants none |
| 146:138 | CHP | lo | 93/1000 | occupants none |
| 146:149 | CPR | hi | 587609/1000000 | earlier 130:147; CPR; hi; 587609/1000000 |
| 146:153 | EFH | hi | 77403430769/125000000000 | vertex maximum 77403430769/125000000000 |
| 146:156 | EFQ | lo | 93/1000 | occupants none |
| 146:158 | EFR | lo | 279/1000 | occupants S |
| 146:159 | EFR | hi | 519841/1000000 | vertex maximum 519841/1000000 |
| 146:160 | EFS | lo | 93/1000 | occupants none |
| 146:164 | EHQ | lo | 93/1000 | occupants none |
| 146:166 | EHR | lo | 80147/250000 | earlier 130:164; EHR; lo; 80147/250000 |
| 146:168 | EHS | lo | 53633/500000 | earlier 130:166; EHS; lo; 53633/500000 |
| 146:170 | EPQ | lo | 93/1000 | occupants none |
| 146:173 | EPR | hi | 138943/250000 | earlier 130:171; EPR; hi; 138943/250000 |
| 146:175 | EPS | hi | 486953/1000000 | earlier 130:173; EPS; hi; 486953/1000000 |
| 146:180 | ERS | lo | 93/1000 | occupants none |
| 146:181 | ERS | hi | 333841/1000000 | earlier 130:179; ERS; hi; 333841/1000000 |
| 146:182 | FHP | lo | 92141/500000 | earlier 130:180; FHP; lo; 92141/500000 |
| 146:183 | FHP | hi | 213519/500000 | earlier 130:181; FHP; hi; 213519/500000 |
| 146:184 | FHQ | lo | 93/1000 | occupants none |
| 146:193 | FPR | hi | 151813/250000 | earlier 130:191; FPR; hi; 151813/250000 |
| 146:200 | FRS | lo | 93/1000 | occupants none |
| 146:201 | FRS | hi | 333841/1000000 | earlier 130:199; FRS; hi; 333841/1000000 |
| 146:204 | HPR | lo | 194487/1000000 | earlier 130:202; HPR; lo; 194487/1000000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 19 | fan | CEF = CEQ + EFQ + CFQ | point Q |
| 45 | plu | ACE * BCR = ABC * CER + ACR * BCE | circuit CABER |
| 46 | plu | ACE * BER = ABE * CER + AER * BCE | circuit EABCR |
| 229 | plu | ACF * AEH = ACE * AFH + ACH * AEF | circuit ACEFH |
| 238 | plu | AFP * CEP = ACP * EFP + AEP * CFP | circuit PACEF |
| 242 | plu | AFQ * CEF = ACF * EFQ + AEF * CFQ | circuit FACEQ |
| 246 | plu | AER * CEF = ACE * EFR + AEF * CER | circuit EACFR |
| 279 | plu | ACE * APR = ACP * AER + ACR * AEP | circuit ACEPR |
| 436 | plu | BCF * CEP = BCE * CFP + BCP * CEF | circuit CBEFP |
| 439 | plu | BEP * CFP = BCP * EFP + BFP * CEP | circuit PBCEF |
| 1171 | quad | CER + CFR >= 93/125 | quadrilateral CERF; occupants Q, S |
| 1641 | bary | outer ABE; fans BEP, AEP, ABP; target HPQ; sign -1; vertices AHQ -1; BHQ -1; EHQ -1 | container ABE; inner P; line HQ |
| 1643 | bary | outer ABE; fans BEP, AEP, ABP; target HPS; sign -1; vertices AHS -1; BHS -1; EHS -1 | container ABE; inner P; line HS |
| 1664 | bary | outer ABF; fans BFP, AFP, ABP; target CEP; sign 1; vertices ACE 1; BCE 1; CEF 1 | container ABF; inner P; line CE |
| 1668 | bary | outer ABF; fans BFP, AFP, ABP; target CPQ; sign 1; vertices ACQ 1; BCQ 1; CFQ 1 | container ABF; inner P; line CQ |
| 1669 | bary | outer ABF; fans BFP, AFP, ABP; target CPR; sign 1; vertices ACR 1; BCR 1; CFR 1 | container ABF; inner P; line CR |
| 1803 | bary | outer ACE; fans CEP, AEP, ACP; target CFP; sign 1; vertices ACF 1; none 0; CEF -1 | container ACE; inner P; line CF |
| 1819 | bary | outer ACE; fans CEP, AEP, ACP; target FPS; sign -1; vertices AFS -1; CFS -1; EFS -1 | container ACE; inner P; line FS |
| 1901 | bary | outer ACH; fans CHP, AHP, ACP; target FPQ; sign -1; vertices AFQ -1; CFQ -1; FHQ -1 | container ACH; inner P; line FQ |
| 2297 | bary | outer CEF; fans EFQ, CFQ, CEQ; target AHQ; sign -1; vertices ACH -1; AEH -1; AFH -1 | container CEF; inner Q; line AH |
| 2309 | bary | outer CEF; fans EFQ, CFQ, CEQ; target CPQ; sign -1; vertices none 0; CEP -1; CFP -1 | container CEF; inner Q; line CP |
| 2320 | bary | outer CEF; fans EFQ, CFQ, CEQ; target FQR; sign -1; vertices CFR -1; EFR -1; none 0 | container CEF; inner Q; line FR |
| 2330 | bary | outer EFH; fans FHQ, EHQ, EFQ; target APQ; sign 1; vertices AEP 1; AFP 1; AHP 1 | container EFH; inner Q; line AP |
| 2332 | bary | outer EFH; fans FHQ, EHQ, EFQ; target BCQ; sign 1; vertices BCE 1; BCF 1; BCH 1 | container EFH; inner Q; line BC |
| 2393 | bary | outer EFR; fans FRS, ERS, EFS; target AHS; sign -1; vertices AEH -1; AFH -1; AHR -1 | container EFR; inner S; line AH |
| 2401 | bary | outer EFR; fans FRS, ERS, EFS; target CFS; sign -1; vertices CEF -1; none 0; CFR -1 | container EFR; inner S; line CF |
| 2444 | four | 1 * ACE + -1 * AEP + -1 * ACP + -1 * CEP = 0 | vertices ACEP |
| 2449 | four | 1 * ACF + -1 * AFP + -1 * ACP + -1 * CFP = 0 | vertices ACFP |
| 2457 | four | 1 * ACP + 1 * APQ + -1 * ACQ + 1 * CPQ = 0 | vertices ACPQ |
| 2458 | four | 1 * ACP + 1 * APR + -1 * ACR + 1 * CPR = 0 | vertices ACPR |
| 2462 | four | 1 * AEF + -1 * AFQ + -1 * AEQ + -1 * EFQ = 0 | vertices AEFQ |
| 2519 | four | -1 * BHP + -1 * BPQ + 1 * BHQ + -1 * HPQ = 0 | vertices BHPQ |
| 2521 | four | -1 * BHP + -1 * BPS + 1 * BHS + -1 * HPS = 0 | vertices BHPS |
| 2548 | four | 1 * EFP + -1 * EPQ + -1 * EFQ + -1 * FPQ = 0 | vertices EFPQ |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 146:208 | CEQ | hi | 198067/500000 | 773699/1953125 | 19 | 146:117, 146:156, 146:132 |
| 146:211 | AFQ | lo | 104463/1000000 | 60811677/582133888 | 242 | 146:18, 146:156, 146:30, 146:132, 146:117 |
| 146:214 | BCF | lo | 4301/31250 | 39362901/286000000 | 436 | 146:66, 146:130, 146:72, 146:116, 146:121 |
| 146:215 | CFR | lo | 80147/250000 | 160294141/500000000 | 1171 | 146:125 |
| 146:217 | CEP | lo | 38997/250000 | 7968891/51086500 | 1664 | 146:5, 146:94, 146:44, 146:8, 146:16, 146:66, 146:116 |
| 146:218 | CPQ | lo | 131879/1000000 | 210539544/1596453125 | 1668 | 146:5, 146:94, 146:44, 146:8, 146:24, 146:74, 146:132 |
| 146:219 | CPR | lo | 82541/500000 | 33733983/204346000 | 1669 | 146:5, 146:94, 146:44, 146:8, 146:26, 146:76, 146:215 |
| 146:223 | CFP | hi | 52663/100000 | 62142247161439/118000000000000 | 1803 | 146:17, 146:217, 146:34, 146:22, 146:19, 146:116 |
| 146:226 | FPQ | lo | 94189/1000000 | 10551966/112029125 | 1901 | 146:21, 146:138, 146:52, 146:22, 146:211, 146:132, 146:184 |
| 146:231 | AHQ | lo | 15793/125000 | 4596826599/36383368000 | 2297 | 146:117, 146:156, 146:132, 146:122, 146:20, 146:32, 146:42 |
| 146:235 | CPQ | hi | 80811/200000 | 5742529039/14212253125 | 2309 | 146:117, 146:156, 146:132, 146:122, 146:121, 146:223 |
| 146:240 | FQR | lo | 23947/250000 | 13940421/145533472 | 2320 | 146:117, 146:156, 146:132, 146:122, 146:215, 146:158 |
| 146:241 | BCQ | lo | 127637/1000000 | 9879616061517/77403430769000 | 2332 | 146:153, 146:184, 146:164, 146:156, 146:66, 146:214, 146:70 |
| 146:246 | CFS | lo | 53633/500000 | 13940421/129960250 | 2401 | 146:159, 146:200, 146:180, 146:160, 146:116, 146:215 |
| 146:249 | ACE | lo | 85497/250000 | 85497/250000 | 2444 | 146:34, 146:22, 146:217 |
| 146:250 | ACQ | lo | 162291/500000 | 162291/500000 | 2457 | 146:22, 146:60, 146:218 |
| 146:251 | ACR | lo | 182197/500000 | 182197/500000 | 2458 | 146:22, 146:62, 146:219 |
| 146:253 | AEF | lo | 290463/1000000 | 290463/1000000 | 2462 | 146:211, 146:36, 146:156 |
| 146:255 | EFP | lo | 280189/1000000 | 280189/1000000 | 2548 | 146:170, 146:156, 146:226 |
| 146:256 | AEH | lo | 29391/250000 | 56422030500/479923057073 | 229 | 146:249, 146:42, 146:20, 146:253, 146:19 |
| 146:258 | AFP | lo | 138019/1000000 | 1794249/13000000 | 238 | 146:22, 146:255, 146:34, 146:130, 146:121 |
| 146:259 | AFQ | lo | 53147/500000 | 7734717/72766736 | 242 | 146:18, 146:156, 146:253, 146:132, 146:117 |
| 146:260 | AER | lo | 52577/250000 | 17489673/83161984 | 246 | 146:249, 146:158, 146:253, 146:124, 146:117 |
| 146:263 | APR | lo | 22647/200000 | 26723643/236000000 | 279 | 146:22, 146:260, 146:251, 146:34, 146:17 |
| 146:267 | CFP | lo | 151543/1000000 | 40564461/267676000 | 439 | 146:72, 146:255, 146:94, 146:217, 146:85 |
| 146:269 | HPQ | lo | 145373/1000000 | 6861633/47200000 | 1641 | 146:3, 146:84, 146:34, 146:8, 146:231, 146:104, 146:164 |
| 146:270 | CEP | lo | 158989/1000000 | 16244403/102173000 | 1664 | 146:5, 146:94, 146:258, 146:8, 146:249, 146:66, 146:116 |
| 146:271 | CPQ | lo | 135929/1000000 | 83330224103/613038000000 | 1668 | 146:5, 146:94, 146:258, 146:8, 146:250, 146:241, 146:132 |
| 146:272 | CPR | lo | 168697/1000000 | 1723631/10217300 | 1669 | 146:5, 146:94, 146:258, 146:8, 146:251, 146:76, 146:215 |
| 146:279 | FPS | lo | 9581/100000 | 22611369/236000000 | 1819 | 146:17, 146:270, 146:34, 146:22, 146:50, 146:246, 146:160 |
| 146:281 | FPQ | lo | 94379/1000000 | 84586011/896233000 | 1901 | 146:21, 146:138, 146:52, 146:22, 146:259, 146:132, 146:184 |
| 146:283 | AHQ | lo | 126639/1000000 | 2303778237/18191684000 | 2297 | 146:117, 146:156, 146:132, 146:122, 146:20, 146:256, 146:42 |
| 146:287 | APQ | lo | 99761/1000000 | 7721864936517/77403430769000 | 2330 | 146:153, 146:184, 146:164, 146:156, 146:34, 146:258, 146:52 |
| 146:291 | AHS | lo | 48697/500000 | 10125933/103968200 | 2393 | 146:159, 146:200, 146:180, 146:160, 146:256, 146:42, 146:56 |
| 146:299 | ACE | lo | 344989/1000000 | 344989/1000000 | 2444 | 146:34, 146:22, 146:270 |
| 146:300 | ACF | lo | 191281/500000 | 191281/500000 | 2449 | 146:258, 146:22, 146:267 |
| 146:301 | ACQ | lo | 32869/100000 | 32869/100000 | 2457 | 146:22, 146:287, 146:271 |
| 146:302 | ACR | lo | 93733/250000 | 93733/250000 | 2458 | 146:22, 146:263, 146:272 |
| 146:304 | AEF | lo | 146147/500000 | 146147/500000 | 2462 | 146:259, 146:36, 146:156 |
| 146:306 | BHQ | lo | 331373/1000000 | 331373/1000000 | 2519 | 146:102, 146:110, 146:269 |
| 146:307 | EFP | lo | 280379/1000000 | 280379/1000000 | 2548 | 146:170, 146:156, 146:281 |
| 146:309 | AEH | lo | 118387/1000000 | 2990368500/25259108267 | 229 | 146:299, 146:42, 146:20, 146:304, 146:19 |
| 146:310 | AFP | lo | 2809/20000 | 20084373/143000000 | 238 | 146:22, 146:307, 146:34, 146:267, 146:121 |
| 146:311 | AFQ | lo | 107813/1000000 | 1120743/10395248 | 242 | 146:300, 146:156, 146:304, 146:132, 146:117 |
| 146:312 | AER | lo | 212039/1000000 | 123435273/582133888 | 246 | 146:299, 146:158, 146:304, 146:124, 146:117 |
| 146:314 | APR | lo | 115653/1000000 | 54588303/472000000 | 279 | 146:22, 146:312, 146:302, 146:34, 146:17 |
| 146:317 | BCF | lo | 140001/1000000 | 40040499/286000000 | 436 | 146:66, 146:267, 146:72, 146:116, 146:121 |
| 146:318 | CFP | lo | 152651/1000000 | 5107653/33459500 | 439 | 146:72, 146:307, 146:94, 146:270, 146:85 |
| 146:320 | HPQ | lo | 29319/200000 | 17298279/118000000 | 1641 | 146:3, 146:84, 146:34, 146:8, 146:283, 146:306, 146:164 |
| 146:321 | HPS | lo | 2272/15625 | 34316383/236000000 | 1643 | 146:3, 146:84, 146:34, 146:8, 146:291, 146:108, 146:168 |
| 146:322 | CEP | lo | 39861/250000 | 32581837/204346000 | 1664 | 146:5, 146:94, 146:310, 146:8, 146:299, 146:66, 146:116 |
| 146:323 | CPQ | lo | 13669/100000 | 1675929413/12260760000 | 1668 | 146:5, 146:94, 146:310, 146:8, 146:301, 146:241, 146:132 |
| 146:324 | CPR | lo | 34059/200000 | 17399649/102173000 | 1669 | 146:5, 146:94, 146:310, 146:8, 146:302, 146:76, 146:215 |
| 146:333 | FPQ | lo | 94537/1000000 | 42363639/448116500 | 1901 | 146:21, 146:138, 146:52, 146:22, 146:311, 146:132, 146:184 |
| 146:337 | AHQ | lo | 12677/100000 | 9224680323/72766736000 | 2297 | 146:117, 146:156, 146:132, 146:122, 146:20, 146:309, 146:42 |
| 146:340 | APQ | lo | 50063/500000 | 7750125311517/77403430769000 | 2330 | 146:153, 146:184, 146:164, 146:156, 146:34, 146:310, 146:52 |
| 146:341 | BCQ | lo | 127993/1000000 | 9907155686517/77403430769000 | 2332 | 146:153, 146:184, 146:164, 146:156, 146:66, 146:317, 146:70 |
| 146:345 | AHS | lo | 97541/1000000 | 12676551/129960250 | 2393 | 146:159, 146:200, 146:180, 146:160, 146:309, 146:42, 146:56 |
| 146:354 | ACE | lo | 86361/250000 | 86361/250000 | 2444 | 146:34, 146:22, 146:322 |
| 146:355 | ACF | lo | 386101/1000000 | 386101/1000000 | 2449 | 146:310, 146:22, 146:318 |
| 146:356 | ACQ | lo | 41227/125000 | 41227/125000 | 2457 | 146:22, 146:340, 146:323 |
| 146:357 | ACR | lo | 94737/250000 | 94737/250000 | 2458 | 146:22, 146:314, 146:324 |
| 146:358 | AEF | lo | 293813/1000000 | 293813/1000000 | 2462 | 146:311, 146:36, 146:156 |
| 146:360 | BHQ | lo | 66519/200000 | 66519/200000 | 2519 | 146:102, 146:110, 146:320 |
| 146:361 | BHS | lo | 20713/62500 | 20713/62500 | 2521 | 146:102, 146:114, 146:321 |
| 146:362 | EFP | lo | 280537/1000000 | 280537/1000000 | 2548 | 146:170, 146:156, 146:333 |
| 146:364 | AEH | lo | 118873/1000000 | 57050059500/479923057073 | 229 | 146:354, 146:42, 146:20, 146:358, 146:19 |
| 146:365 | AFP | lo | 140861/1000000 | 10071621/71500000 | 238 | 146:22, 146:362, 146:34, 146:318, 146:121 |
| 146:366 | AFQ | lo | 108621/1000000 | 31616001/291066944 | 242 | 146:355, 146:156, 146:358, 146:132, 146:117 |
| 146:367 | AER | lo | 17/80 | 123703485/582133888 | 246 | 146:354, 146:158, 146:358, 146:124, 146:117 |
| 146:369 | APR | lo | 23307/200000 | 6875583/59000000 | 279 | 146:22, 146:367, 146:357, 146:34, 146:17 |
| 146:372 | BCF | lo | 70181/500000 | 3649413/26000000 | 436 | 146:66, 146:318, 146:72, 146:116, 146:121 |
| 146:373 | CFP | lo | 4777/31250 | 40918233/267676000 | 439 | 146:72, 146:362, 146:94, 146:322, 146:85 |
| 146:375 | HPQ | lo | 73431/500000 | 13863789/94400000 | 1641 | 146:3, 146:84, 146:34, 146:8, 146:337, 146:360, 146:164 |
| 146:376 | HPS | lo | 2274/15625 | 2146669/14750000 | 1643 | 146:3, 146:84, 146:34, 146:8, 146:345, 146:361, 146:168 |
| 146:377 | CEP | lo | 159513/1000000 | 16297971/102173000 | 1664 | 146:5, 146:94, 146:365, 146:8, 146:354, 146:66, 146:116 |
| 146:378 | CPQ | lo | 68483/500000 | 83965570973/613038000000 | 1668 | 146:5, 146:94, 146:365, 146:8, 146:356, 146:341, 146:132 |
| 146:379 | CPR | lo | 34181/200000 | 17461897/102173000 | 1669 | 146:5, 146:94, 146:365, 146:8, 146:357, 146:76, 146:215 |
| 146:388 | FPQ | lo | 4731/50000 | 42401211/448116500 | 1901 | 146:21, 146:138, 146:52, 146:22, 146:366, 146:132, 146:184 |
| 146:392 | AHQ | lo | 1982/15625 | 9230330073/72766736000 | 2297 | 146:117, 146:156, 146:132, 146:122, 146:20, 146:364, 146:42 |
| 146:395 | APQ | lo | 25047/250000 | 7754903186517/77403430769000 | 2330 | 146:153, 146:184, 146:164, 146:156, 146:34, 146:365, 146:52 |
| 146:396 | BCQ | lo | 128047/1000000 | 9911352311517/77403430769000 | 2332 | 146:153, 146:184, 146:164, 146:156, 146:66, 146:372, 146:70 |
| 146:401 | AHS | lo | 24407/250000 | 25375701/259920500 | 2393 | 146:159, 146:200, 146:180, 146:160, 146:364, 146:42, 146:56 |
| 146:410 | ACE | lo | 345513/1000000 | 345513/1000000 | 2444 | 146:34, 146:22, 146:377 |
| 146:411 | ACF | lo | 15469/40000 | 15469/40000 | 2449 | 146:365, 146:22, 146:373 |
| 146:412 | ACQ | lo | 165077/500000 | 165077/500000 | 2457 | 146:22, 146:395, 146:378 |
| 146:413 | ACR | lo | 9511/25000 | 9511/25000 | 2458 | 146:22, 146:369, 146:379 |
| 146:414 | AEF | lo | 294621/1000000 | 294621/1000000 | 2462 | 146:366, 146:36, 146:156 |
| 146:416 | BHQ | lo | 166431/500000 | 166431/500000 | 2519 | 146:102, 146:110, 146:375 |
| 146:417 | BHS | lo | 20721/62500 | 20721/62500 | 2521 | 146:102, 146:114, 146:376 |
| 146:418 | EFP | lo | 14031/50000 | 14031/50000 | 2548 | 146:170, 146:156, 146:388 |
| 146:419 | BCR | lo | 93283/1000000 | 275187/2950000 | 45 | 146:0, 146:124, 146:413, 146:66, 146:17 |
| 146:421 | AEH | lo | 59557/500000 | 3008736000/25259108267 | 229 | 146:410, 146:42, 146:20, 146:414, 146:19 |
| 146:422 | AFP | lo | 70479/500000 | 10078503/71500000 | 238 | 146:22, 146:418, 146:34, 146:373, 146:121 |
| 146:423 | AFQ | lo | 108849/1000000 | 31682589/291066944 | 242 | 146:411, 146:156, 146:414, 146:132, 146:117 |
| 146:424 | AER | lo | 106331/500000 | 15474735/72766736 | 246 | 146:410, 146:158, 146:414, 146:124, 146:117 |
| 146:426 | APR | lo | 116861/1000000 | 27579243/236000000 | 279 | 146:22, 146:424, 146:413, 146:34, 146:17 |
| 146:429 | BCF | lo | 140431/1000000 | 5020419/35750000 | 436 | 146:66, 146:373, 146:72, 146:116, 146:121 |
| 146:430 | CFP | lo | 152917/1000000 | 40932369/267676000 | 439 | 146:72, 146:418, 146:94, 146:377, 146:85 |
| 146:432 | HPQ | lo | 14693/100000 | 6935103/47200000 | 1641 | 146:3, 146:84, 146:34, 146:8, 146:392, 146:416, 146:164 |
| 146:433 | HPS | lo | 72807/500000 | 34365097/236000000 | 1643 | 146:3, 146:84, 146:34, 146:8, 146:401, 146:417, 146:168 |
| 146:434 | CEP | lo | 159523/1000000 | 32598081/204346000 | 1664 | 146:5, 146:94, 146:422, 146:8, 146:410, 146:66, 146:116 |
| 146:435 | CPQ | lo | 27407/200000 | 14001335171/102173000000 | 1668 | 146:5, 146:94, 146:422, 146:8, 146:412, 146:396, 146:132 |
| 146:436 | CPR | lo | 2677/15625 | 17505164959/102173000000 | 1669 | 146:5, 146:94, 146:422, 146:8, 146:413, 146:419, 146:215 |
| 146:446 | FPQ | lo | 23661/250000 | 42411813/448116500 | 1901 | 146:21, 146:138, 146:52, 146:22, 146:423, 146:132, 146:184 |
| 146:450 | AHQ | lo | 63443/500000 | 659509407/5197624000 | 2297 | 146:117, 146:156, 146:132, 146:122, 146:20, 146:421, 146:42 |
| 146:453 | APQ | lo | 50101/500000 | 7756030811517/77403430769000 | 2330 | 146:153, 146:184, 146:164, 146:156, 146:34, 146:422, 146:52 |
| 146:454 | BCQ | lo | 64029/500000 | 9912154436517/77403430769000 | 2332 | 146:153, 146:184, 146:164, 146:156, 146:66, 146:429, 146:70 |
| 146:459 | AHS | lo | 97671/1000000 | 10154763/103968200 | 2393 | 146:159, 146:200, 146:180, 146:160, 146:421, 146:42, 146:56 |
| 146:468 | ACE | lo | 345523/1000000 | 345523/1000000 | 2444 | 146:34, 146:22, 146:434 |
| 146:469 | ACF | lo | 619/1600 | 619/1600 | 2449 | 146:422, 146:22, 146:430 |
| 146:470 | ACQ | lo | 330237/1000000 | 330237/1000000 | 2457 | 146:22, 146:453, 146:435 |
| 146:471 | ACR | lo | 381189/1000000 | 381189/1000000 | 2458 | 146:22, 146:426, 146:436 |
| 146:472 | AEF | lo | 294849/1000000 | 294849/1000000 | 2462 | 146:423, 146:36, 146:156 |
| 146:474 | BHQ | lo | 33293/100000 | 33293/100000 | 2519 | 146:102, 146:110, 146:432 |
| 146:475 | BHS | lo | 165807/500000 | 165807/500000 | 2521 | 146:102, 146:114, 146:433 |
| 146:476 | EFP | lo | 70161/250000 | 70161/250000 | 2548 | 146:170, 146:156, 146:446 |
| 146:477 | BCR | lo | 93431/1000000 | 44099577/472000000 | 45 | 146:0, 146:124, 146:471, 146:66, 146:17 |
| 146:479 | AEH | lo | 59591/500000 | 57198255000/479923057073 | 229 | 146:468, 146:42, 146:20, 146:472, 146:19 |
| 146:480 | AFP | lo | 140983/1000000 | 40321173/286000000 | 238 | 146:22, 146:476, 146:34, 146:430, 146:121 |
| 146:481 | AFQ | lo | 10891/100000 | 15850083/145533472 | 242 | 146:469, 146:156, 146:472, 146:132, 146:117 |
| 146:482 | AER | lo | 212703/1000000 | 61910937/291066944 | 246 | 146:468, 146:158, 146:472, 146:124, 146:117 |
| 146:484 | APR | lo | 14627/125000 | 13807989/118000000 | 279 | 146:22, 146:482, 146:471, 146:34, 146:17 |
| 146:487 | BCF | lo | 4389/31250 | 40168281/286000000 | 436 | 146:66, 146:430, 146:72, 146:116, 146:121 |
| 146:488 | CFP | lo | 152929/1000000 | 40935531/267676000 | 439 | 146:72, 146:476, 146:94, 146:434, 146:85 |
| 146:490 | HPQ | lo | 146951/1000000 | 8670111/59000000 | 1641 | 146:3, 146:84, 146:34, 146:8, 146:450, 146:474, 146:164 |
| 146:491 | HPS | lo | 18207/125000 | 34374873/236000000 | 1643 | 146:3, 146:84, 146:34, 146:8, 146:459, 146:475, 146:168 |
| 146:492 | CEP | lo | 6381/40000 | 32598391/204346000 | 1664 | 146:5, 146:94, 146:480, 146:8, 146:468, 146:66, 146:116 |
| 146:493 | CPQ | lo | 34263/250000 | 14003026169/102173000000 | 1668 | 146:5, 146:94, 146:480, 146:8, 146:470, 146:454, 146:132 |
| 146:494 | CPR | lo | 34309/200000 | 17527308063/102173000000 | 1669 | 146:5, 146:94, 146:480, 146:8, 146:471, 146:477, 146:215 |
| 146:503 | FPQ | lo | 1893/20000 | 84829299/896233000 | 1901 | 146:21, 146:138, 146:52, 146:22, 146:481, 146:132, 146:184 |
| 146:507 | AHQ | lo | 126897/1000000 | 4616961099/36383368000 | 2297 | 146:117, 146:156, 146:132, 146:122, 146:20, 146:479, 146:42 |
| 146:509 | APQ | lo | 50103/500000 | 7756321436517/77403430769000 | 2330 | 146:153, 146:184, 146:164, 146:156, 146:34, 146:480, 146:52 |
| 146:510 | BCQ | lo | 6403/50000 | 9912352061517/77403430769000 | 2332 | 146:153, 146:184, 146:164, 146:156, 146:66, 146:487, 146:70 |
| 146:515 | AHS | lo | 97683/1000000 | 50780139/519841000 | 2393 | 146:159, 146:200, 146:180, 146:160, 146:479, 146:42, 146:56 |
| 146:524 | ACE | lo | 13821/40000 | 13821/40000 | 2444 | 146:34, 146:22, 146:492 |
| 146:525 | ACF | lo | 12091/31250 | 12091/31250 | 2449 | 146:480, 146:22, 146:488 |
| 146:526 | ACQ | lo | 165129/500000 | 165129/500000 | 2457 | 146:22, 146:509, 146:493 |
| 146:527 | ACR | lo | 381561/1000000 | 381561/1000000 | 2458 | 146:22, 146:484, 146:494 |
| 146:528 | AEF | lo | 29491/100000 | 29491/100000 | 2462 | 146:481, 146:36, 146:156 |
| 146:530 | BHQ | lo | 332951/1000000 | 332951/1000000 | 2519 | 146:102, 146:110, 146:490 |
| 146:531 | BHS | lo | 41457/125000 | 41457/125000 | 2521 | 146:102, 146:114, 146:491 |
| 146:532 | EFP | lo | 5613/20000 | 5613/20000 | 2548 | 146:170, 146:156, 146:503 |
| 146:533 | BCR | lo | 1461/15625 | 44134173/472000000 | 45 | 146:0, 146:124, 146:527, 146:66, 146:17 |
| 146:535 | AEH | lo | 149/1250 | 57206857500/479923057073 | 229 | 146:524, 146:42, 146:20, 146:528, 146:19 |
| 146:536 | AFP | lo | 35247/250000 | 40322847/286000000 | 238 | 146:22, 146:532, 146:34, 146:488, 146:121 |
| 146:537 | AFQ | lo | 4357/40000 | 31704723/291066944 | 242 | 146:525, 146:156, 146:528, 146:132, 146:117 |
| 146:538 | AER | lo | 106357/500000 | 123828105/582133888 | 246 | 146:524, 146:158, 146:528, 146:124, 146:117 |
| 146:540 | APR | lo | 29273/250000 | 2210703/18880000 | 279 | 146:22, 146:538, 146:527, 146:34, 146:17 |
| 146:543 | BCF | lo | 35113/250000 | 40169397/286000000 | 436 | 146:66, 146:488, 146:72, 146:116, 146:121 |
| 146:544 | CFP | lo | 38233/250000 | 1637451/10707040 | 439 | 146:72, 146:532, 146:94, 146:492, 146:85 |
| 146:546 | HPQ | lo | 146957/1000000 | 8670483/59000000 | 1641 | 146:3, 146:84, 146:34, 146:8, 146:507, 146:530, 146:164 |
| 146:547 | HPS | lo | 145671/1000000 | 17189271/118000000 | 1643 | 146:3, 146:84, 146:34, 146:8, 146:515, 146:531, 146:168 |
| 146:548 | CPQ | lo | 4283/31250 | 350085697/2554325000 | 1668 | 146:5, 146:94, 146:536, 146:8, 146:526, 146:510, 146:132 |
| 146:549 | CPR | lo | 42913/250000 | 4384567423/25543250000 | 1669 | 146:5, 146:94, 146:536, 146:8, 146:527, 146:533, 146:215 |
| 146:555 | FPQ | lo | 23663/250000 | 3262719/34470500 | 1901 | 146:21, 146:138, 146:52, 146:22, 146:537, 146:132, 146:184 |
| 146:559 | AHQ | lo | 1269/10000 | 1154266431/9095842000 | 2297 | 146:117, 146:156, 146:132, 146:122, 146:20, 146:535, 146:42 |
| 146:560 | APQ | lo | 100207/1000000 | 7756379561517/77403430769000 | 2330 | 146:153, 146:184, 146:164, 146:156, 146:34, 146:536, 146:52 |
| 146:561 | BCQ | lo | 128061/1000000 | 9912398561517/77403430769000 | 2332 | 146:153, 146:184, 146:164, 146:156, 146:66, 146:543, 146:70 |
| 146:564 | AHS | lo | 97687/1000000 | 50781813/519841000 | 2393 | 146:159, 146:200, 146:180, 146:160, 146:535, 146:42, 146:56 |
| 146:573 | ACF | lo | 9673/25000 | 9673/25000 | 2449 | 146:536, 146:22, 146:544 |
| 146:574 | ACQ | lo | 330263/1000000 | 330263/1000000 | 2457 | 146:22, 146:560, 146:548 |
| 146:575 | ACR | lo | 23859/62500 | 23859/62500 | 2458 | 146:22, 146:540, 146:549 |
| 146:576 | AEF | lo | 11797/40000 | 11797/40000 | 2462 | 146:537, 146:36, 146:156 |
| 146:578 | BHQ | lo | 332957/1000000 | 332957/1000000 | 2519 | 146:102, 146:110, 146:546 |
| 146:579 | BHS | lo | 331671/1000000 | 331671/1000000 | 2521 | 146:102, 146:114, 146:547 |
| 146:580 | EFP | lo | 70163/250000 | 70163/250000 | 2548 | 146:170, 146:156, 146:555 |
| 146:581 | BCR | lo | 4677/50000 | 5518899/59000000 | 45 | 146:0, 146:124, 146:575, 146:66, 146:17 |
| 146:582 | BER | lo | 24221/250000 | 22864701/236000000 | 46 | 146:2, 146:124, 146:538, 146:66, 146:17 |
| 146:584 | AFP | lo | 14099/100000 | 2520207/17875000 | 238 | 146:22, 146:580, 146:34, 146:544, 146:121 |
| 146:585 | AFQ | lo | 108929/1000000 | 63411585/582133888 | 242 | 146:573, 146:156, 146:576, 146:132, 146:117 |
| 146:586 | AER | lo | 53179/250000 | 30957375/145533472 | 246 | 146:524, 146:158, 146:576, 146:124, 146:117 |
| 146:588 | APR | lo | 14641/125000 | 2764239/23600000 | 279 | 146:22, 146:586, 146:575, 146:34, 146:17 |
| 146:591 | HPQ | lo | 146959/1000000 | 69364701/472000000 | 1641 | 146:3, 146:84, 146:34, 146:8, 146:559, 146:578, 146:164 |
| 146:592 | HPS | lo | 145677/1000000 | 68759623/472000000 | 1643 | 146:3, 146:84, 146:34, 146:8, 146:564, 146:579, 146:168 |
| 146:593 | CPQ | lo | 137057/1000000 | 2800708113/20434600000 | 1668 | 146:5, 146:94, 146:584, 146:8, 146:574, 146:561, 146:132 |
| 146:594 | CPR | lo | 34341/200000 | 877183421/5108650000 | 1669 | 146:5, 146:94, 146:584, 146:8, 146:575, 146:581, 146:215 |
| 146:609 | ACF | lo | 193461/500000 | 193461/500000 | 2449 | 146:584, 146:22, 146:544 |
| 146:610 | ACQ | lo | 41283/125000 | 41283/125000 | 2457 | 146:22, 146:560, 146:593 |
| 146:611 | ACR | lo | 381833/1000000 | 381833/1000000 | 2458 | 146:22, 146:588, 146:594 |
| 146:612 | AEF | lo | 294929/1000000 | 294929/1000000 | 2462 | 146:585, 146:36, 146:156 |
| 146:613 | BHQ | lo | 332959/1000000 | 332959/1000000 | 2519 | 146:102, 146:110, 146:591 |
| 146:614 | BHS | lo | 331677/1000000 | 331677/1000000 | 2521 | 146:102, 146:114, 146:592 |
| 146:615 | BCR | lo | 46779/500000 | 44159469/472000000 | 45 | 146:0, 146:124, 146:611, 146:66, 146:17 |
| 146:616 | AEH | lo | 23841/200000 | 57209508000/479923057073 | 229 | 146:524, 146:42, 146:20, 146:612, 146:19 |
| 146:617 | AFQ | lo | 10893/100000 | 63412143/582133888 | 242 | 146:609, 146:156, 146:612, 146:132, 146:117 |
| 146:618 | AER | lo | 212717/1000000 | 7739367/36383368 | 246 | 146:524, 146:158, 146:612, 146:124, 146:117 |
| 146:619 | APR | lo | 58573/500000 | 1105863/9440000 | 279 | 146:22, 146:618, 146:611, 146:34, 146:17 |
| 146:620 | HPS | lo | 72839/500000 | 68760181/472000000 | 1643 | 146:3, 146:84, 146:34, 146:8, 146:564, 146:614, 146:168 |
| 146:621 | CPR | lo | 171731/1000000 | 8773164517/51086500000 | 1669 | 146:5, 146:94, 146:584, 146:8, 146:611, 146:615, 146:215 |
| 146:624 | FPQ | lo | 94653/1000000 | 84831159/896233000 | 1901 | 146:21, 146:138, 146:52, 146:22, 146:617, 146:132, 146:184 |
| 146:626 | AHS | lo | 12211/125000 | 25391139/259920500 | 2393 | 146:159, 146:200, 146:180, 146:160, 146:616, 146:42, 146:56 |
| 146:632 | ACR | lo | 381877/1000000 | 381877/1000000 | 2458 | 146:22, 146:619, 146:621 |
| 146:633 | AEF | lo | 29493/100000 | 29493/100000 | 2462 | 146:617, 146:36, 146:156 |
| 146:634 | BHS | lo | 165839/500000 | 165839/500000 | 2521 | 146:102, 146:114, 146:620 |
| 146:635 | EFP | lo | 280653/1000000 | 280653/1000000 | 2548 | 146:170, 146:156, 146:624 |
| 146:636 | BCR | lo | 46783/500000 | 44163561/472000000 | 45 | 146:0, 146:124, 146:632, 146:66, 146:17 |
| 146:637 | APR | lo | 23431/200000 | 27648621/236000000 | 279 | 146:22, 146:618, 146:632, 146:34, 146:17 |
| 146:638 | CFP | lo | 152933/1000000 | 20468277/133838000 | 439 | 146:72, 146:635, 146:94, 146:492, 146:85 |
| 146:639 | HPS | lo | 145679/1000000 | 859507/5900000 | 1643 | 146:3, 146:84, 146:34, 146:8, 146:626, 146:634, 146:168 |
| 146:640 | CPR | lo | 171743/1000000 | 8773790209/51086500000 | 1669 | 146:5, 146:94, 146:584, 146:8, 146:632, 146:636, 146:215 |
| 146:650 | ACR | lo | 190949/500000 | 190949/500000 | 2458 | 146:22, 146:637, 146:640 |
| 146:651 | BHS | lo | 331679/1000000 | 331679/1000000 | 2521 | 146:102, 146:114, 146:639 |
| 146:652 | BCR | lo | 93571/1000000 | 22082757/236000000 | 45 | 146:0, 146:124, 146:650, 146:66, 146:17 |
| 146:653 | AFP | lo | 140991/1000000 | 20161749/143000000 | 238 | 146:22, 146:635, 146:34, 146:638, 146:121 |
| 146:654 | APR | lo | 117159/1000000 | 11059839/94400000 | 279 | 146:22, 146:618, 146:650, 146:34, 146:17 |
| 146:655 | CPR | lo | 687/4000 | 17548261783/102173000000 | 1669 | 146:5, 146:94, 146:653, 146:8, 146:650, 146:652, 146:215 |
| 146:665 | ACR | lo | 381909/1000000 | 381909/1000000 | 2458 | 146:22, 146:654, 146:655 |
| 146:666 | BCR | lo | 93573/1000000 | 44166537/472000000 | 45 | 146:0, 146:124, 146:665, 146:66, 146:17 |
| 146:667 | APR | lo | 117161/1000000 | 27650109/236000000 | 279 | 146:22, 146:618, 146:665, 146:34, 146:17 |
| 146:668 | CPR | lo | 171753/1000000 | 17548574629/102173000000 | 1669 | 146:5, 146:94, 146:653, 146:8, 146:665, 146:666, 146:215 |
| 146:675 | ACR | lo | 190957/500000 | 190957/500000 | 2458 | 146:22, 146:667, 146:668 |
| 146:676 | BCR | lo | 46787/500000 | 22083501/236000000 | 45 | 146:0, 146:124, 146:675, 146:66, 146:17 |
| 146:677 | APR | lo | 58581/500000 | 55300683/472000000 | 279 | 146:22, 146:618, 146:675, 146:34, 146:17 |
| 146:678 | CPR | lo | 85877/500000 | 8774361651/51086500000 | 1669 | 146:5, 146:94, 146:653, 146:8, 146:675, 146:676, 146:215 |
| 146:683 | ACR | lo | 95479/250000 | 95479/250000 | 2458 | 146:22, 146:677, 146:678 |
| 146:684 | CPR | lo | 34351/200000 | 8774377151/51086500000 | 1669 | 146:5, 146:94, 146:653, 146:8, 146:683, 146:676, 146:215 |
| 146:685 | ACR | lo | 381917/1000000 | 381917/1000000 | 2458 | 146:22, 146:677, 146:684 |
| 146:686 | APR | lo | 117163/1000000 | 27650481/236000000 | 279 | 146:22, 146:618, 146:685, 146:34, 146:17 |
| 146:688 | ACR | lo | 190959/500000 | 190959/500000 | 2458 | 146:22, 146:686, 146:684 |

## Stage 147

| Property | Value |
| --- | --- |
| Scope | root/EHQ-/BEP+/BFP+/CFQ- |
| Packet | forest:root/EHQ-/BEP+/BFP+/CFQ- |
| Index | 1 |
| Context | 60 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 146 |
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
| p | 157439/1000000 | 260019/500000 | 157439/1000000 | 260019/500000 |
| q | 35701/250000 | 379/1000 | 35701/250000 | 379/1000 |
| u | 396459/1000000 | 415781/500000 | 396459/1000000 | 415781/500000 |
| v | 416299/1000000 | 907/1000 | 416299/1000000 | 907/1000 |
| r | 332981/500000 | 1/1 | 332981/500000 | 1/1 |
| w | 332981/500000 | 1/1 | 332981/500000 | 1/1 |
| j | 268487/500000 | 871013/1000000 | 268487/500000 | 871013/1000000 |
| k | 268487/500000 | 871013/1000000 | 268487/500000 | 871013/1000000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |


### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |


### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 147:16 | ACE | lo | 13821/40000 | earlier 146:524; ACE; lo; 13821/40000 |
| 147:24 | ACQ | lo | 41283/125000 | earlier 146:610; ACQ; lo; 41283/125000 |
| 147:26 | ACR | lo | 190959/500000 | earlier 146:688; ACR; lo; 190959/500000 |
| 147:30 | AEF | lo | 29493/100000 | earlier 146:633; AEF; lo; 29493/100000 |
| 147:44 | AFP | lo | 140991/1000000 | earlier 146:653; AFP; lo; 140991/1000000 |
| 147:47 | AFQ | hi | 72357/125000 | earlier 146:47; AFQ; hi; 72357/125000 |
| 147:58 | AHS | lo | 12211/125000 | earlier 146:626; AHS; lo; 12211/125000 |
| 147:63 | APR | hi | 131513/250000 | earlier 146:63; APR; hi; 131513/250000 |
| 147:74 | BCQ | lo | 128061/1000000 | earlier 146:561; BCQ; lo; 128061/1000000 |
| 147:81 | BEF | hi | 802809/1000000 | earlier 146:81; BEF; hi; 802809/1000000 |
| 147:85 | BEP | hi | 66919/250000 | earlier 146:85; BEP; hi; 66919/250000 |
| 147:88 | BER | lo | 24221/250000 | earlier 146:582; BER; lo; 24221/250000 |
| 147:92 | BFH | lo | 185141/500000 | earlier 146:92; BFH; lo; 185141/500000 |
| 147:104 | BHQ | lo | 332959/1000000 | earlier 146:613; BHQ; lo; 332959/1000000 |
| 147:108 | BHS | lo | 331679/1000000 | earlier 146:651; BHS; lo; 331679/1000000 |
| 147:120 | CEP | lo | 6381/40000 | earlier 146:492; CEP; lo; 6381/40000 |
| 147:121 | CEP | hi | 143/500 | earlier 146:121; CEP; hi; 143/500 |
| 147:123 | CEQ | hi | 198067/500000 | earlier 146:208; CEQ; hi; 198067/500000 |
| 147:130 | CFP | lo | 152933/1000000 | earlier 146:638; CFP; lo; 152933/1000000 |
| 147:134 | CFR | lo | 80147/250000 | earlier 146:215; CFR; lo; 80147/250000 |
| 147:136 | CFS | lo | 53633/500000 | earlier 146:246; CFS; lo; 53633/500000 |
| 147:147 | CPQ | hi | 80811/200000 | earlier 146:235; CPQ; hi; 80811/200000 |
| 147:148 | CPR | lo | 34351/200000 | earlier 146:684; CPR; lo; 34351/200000 |
| 147:149 | CPR | hi | 587609/1000000 | earlier 146:149; CPR; hi; 587609/1000000 |
| 147:166 | EHR | lo | 80147/250000 | earlier 146:166; EHR; lo; 80147/250000 |
| 147:168 | EHS | lo | 53633/500000 | earlier 146:168; EHS; lo; 53633/500000 |
| 147:173 | EPR | hi | 138943/250000 | earlier 146:173; EPR; hi; 138943/250000 |
| 147:175 | EPS | hi | 486953/1000000 | earlier 146:175; EPS; hi; 486953/1000000 |
| 147:181 | ERS | hi | 333841/1000000 | earlier 146:181; ERS; hi; 333841/1000000 |
| 147:182 | FHP | lo | 92141/500000 | earlier 146:182; FHP; lo; 92141/500000 |
| 147:183 | FHP | hi | 213519/500000 | earlier 146:183; FHP; hi; 213519/500000 |
| 147:190 | FPQ | lo | 94653/1000000 | earlier 146:624; FPQ; lo; 94653/1000000 |
| 147:193 | FPR | hi | 151813/250000 | earlier 146:193; FPR; hi; 151813/250000 |
| 147:194 | FPS | lo | 9581/100000 | earlier 146:279; FPS; lo; 9581/100000 |
| 147:196 | FQR | lo | 23947/250000 | earlier 146:240; FQR; lo; 23947/250000 |
| 147:201 | FRS | hi | 333841/1000000 | earlier 146:201; FRS; hi; 333841/1000000 |
| 147:204 | HPR | lo | 194487/1000000 | earlier 146:204; HPR; lo; 194487/1000000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |


## Stage 148

| Property | Value |
| --- | --- |
| Scope | root/EHQ-/BEP+/BFP+/CFQ-/PQR+ |
| Packet | forest:root/EHQ-/BEP+/BFP+/CFQ-/PQR+ |
| Index | 0 |
| Context | 61 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 147 |
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
| p | 157439/1000000 | 260019/500000 | 157439/1000000 | 260019/500000 |
| q | 35701/250000 | 379/1000 | 35701/250000 | 379/1000 |
| u | 396459/1000000 | 415781/500000 | 396459/1000000 | 415781/500000 |
| v | 416299/1000000 | 907/1000 | 416299/1000000 | 907/1000 |
| r | 332981/500000 | 1/1 | 332981/500000 | 1/1 |
| w | 332981/500000 | 1/1 | 332981/500000 | 1/1 |
| j | 268487/500000 | 871013/1000000 | 268487/500000 | 871013/1000000 |
| k | 268487/500000 | 871013/1000000 | 268487/500000 | 871013/1000000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |


### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |


### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 148:0 | ABC | lo | 93/1000 | occupants none |
| 148:3 | ABE | hi | 59/125 | vertex maximum 59/125 |
| 148:5 | ABF | hi | 306519/500000 | vertex maximum 306519/500000 |
| 148:8 | ABP | lo | 93/1000 | occupants none |
| 148:16 | ACE | lo | 13821/40000 | earlier 147:16; ACE; lo; 13821/40000 |
| 148:17 | ACE | hi | 59/125 | vertex maximum 59/125 |
| 148:19 | ACF | hi | 479923057073/500000000000 | vertex maximum 479923057073/500000000000 |
| 148:20 | ACH | lo | 279/1000 | occupants P |
| 148:21 | ACH | hi | 896233/1000000 | vertex maximum 896233/1000000 |
| 148:22 | ACP | lo | 93/1000 | occupants none |
| 148:30 | AEF | lo | 29493/100000 | earlier 147:30; AEF; lo; 29493/100000 |
| 148:31 | AEF | hi | 847342993/1000000000 | vertex maximum 847342993/1000000000 |
| 148:34 | AEP | lo | 93/1000 | occupants none |
| 148:36 | AEQ | lo | 93/1000 | occupants none |
| 148:39 | AER | hi | 389767240427/500000000000 | vertex maximum 389767240427/500000000000 |
| 148:42 | AFH | lo | 93/1000 | occupants none |
| 148:44 | AFP | lo | 140991/1000000 | earlier 147:44; AFP; lo; 140991/1000000 |
| 148:47 | AFQ | hi | 72357/125000 | earlier 147:47; AFQ; hi; 72357/125000 |
| 148:48 | AFR | lo | 93/1000 | occupants none |
| 148:52 | AHP | lo | 93/1000 | occupants none |
| 148:56 | AHR | lo | 93/1000 | occupants none |
| 148:58 | AHS | lo | 12211/125000 | earlier 147:58; AHS; lo; 12211/125000 |
| 148:66 | AQR | lo | 93/1000 | occupants none |
| 148:68 | BCE | lo | 93/1000 | occupants none |
| 148:73 | BCH | hi | 896233/1000000 | vertex maximum 896233/1000000 |
| 148:74 | BCP | lo | 93/1000 | occupants none |
| 148:83 | BEF | hi | 802809/1000000 | earlier 147:81; BEF; hi; 802809/1000000 |
| 148:86 | BEP | lo | 93/1000 | occupants none |
| 148:87 | BEP | hi | 66919/250000 | earlier 147:85; BEP; hi; 66919/250000 |
| 148:94 | BFH | lo | 185141/500000 | earlier 147:92; BFH; lo; 185141/500000 |
| 148:96 | BFP | lo | 93/1000 | occupants none |
| 148:98 | BFQ | lo | 93/1000 | occupants none |
| 148:104 | BHP | lo | 93/1000 | occupants none |
| 148:106 | BHQ | lo | 332959/1000000 | earlier 147:104; BHQ; lo; 332959/1000000 |
| 148:110 | BHS | lo | 331679/1000000 | earlier 147:108; BHS; lo; 331679/1000000 |
| 148:112 | BPQ | lo | 93/1000 | occupants none |
| 148:116 | BPS | lo | 93/1000 | occupants none |
| 148:118 | CEF | lo | 279/1000 | occupants Q |
| 148:119 | CEF | hi | 4547921/7812500 | vertex maximum 4547921/7812500 |
| 148:122 | CEP | lo | 6381/40000 | earlier 147:120; CEP; lo; 6381/40000 |
| 148:123 | CEP | hi | 143/500 | earlier 147:121; CEP; hi; 143/500 |
| 148:124 | CEQ | lo | 93/1000 | occupants none |
| 148:126 | CER | lo | 93/1000 | occupants none |
| 148:131 | CFH | hi | 98783131019/125000000000 | vertex maximum 98783131019/125000000000 |
| 148:132 | CFP | lo | 152933/1000000 | earlier 147:130; CFP; lo; 152933/1000000 |
| 148:134 | CFQ | lo | 93/1000 | occupants none |
| 148:136 | CFR | lo | 80147/250000 | earlier 147:134; CFR; lo; 80147/250000 |
| 148:138 | CFS | lo | 53633/500000 | earlier 147:136; CFS; lo; 53633/500000 |
| 148:140 | CHP | lo | 93/1000 | occupants none |
| 148:150 | CPR | lo | 34351/200000 | earlier 147:148; CPR; lo; 34351/200000 |
| 148:151 | CPR | hi | 587609/1000000 | earlier 147:149; CPR; hi; 587609/1000000 |
| 148:154 | EFH | lo | 279/1000 | occupants Q |
| 148:155 | EFH | hi | 77403430769/125000000000 | vertex maximum 77403430769/125000000000 |
| 148:158 | EFQ | lo | 93/1000 | occupants none |
| 148:161 | EFR | hi | 519841/1000000 | vertex maximum 519841/1000000 |
| 148:162 | EFS | lo | 93/1000 | occupants none |
| 148:166 | EHQ | lo | 93/1000 | occupants none |
| 148:168 | EHR | lo | 80147/250000 | earlier 147:166; EHR; lo; 80147/250000 |
| 148:169 | EHR | hi | 721/1000 | vertex maximum 721/1000 |
| 148:172 | EPQ | lo | 93/1000 | occupants none |
| 148:174 | EPR | lo | 279/1000 | occupants Q |
| 148:175 | EPR | hi | 138943/250000 | earlier 147:173; EPR; hi; 138943/250000 |
| 148:177 | EPS | hi | 486953/1000000 | earlier 147:175; EPS; hi; 486953/1000000 |
| 148:178 | EQR | lo | 93/1000 | occupants none |
| 148:182 | ERS | lo | 93/1000 | occupants none |
| 148:183 | ERS | hi | 333841/1000000 | earlier 147:181; ERS; hi; 333841/1000000 |
| 148:184 | FHP | lo | 92141/500000 | earlier 147:182; FHP; lo; 92141/500000 |
| 148:188 | FHR | lo | 93/1000 | occupants none |
| 148:196 | FPS | lo | 9581/100000 | earlier 147:194; FPS; lo; 9581/100000 |
| 148:202 | FRS | lo | 93/1000 | occupants none |
| 148:206 | HPR | lo | 194487/1000000 | earlier 147:204; HPR; lo; 194487/1000000 |
| 148:212 | PQR | lo | 93/1000 | occupants none |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 48 | plu | ACE * BCR = ABC * CER + ACR * BCE | circuit CABER |
| 239 | plu | ACF * AEH = ACE * AFH + ACH * AEF | circuit ACEFH |
| 241 | plu | AEF * CEH = ACE * EFH + AEH * CEF | circuit EACFH |
| 243 | plu | AEH * CFH = ACH * EFH + AFH * CEH | circuit HACEF |
| 248 | plu | AFP * CEP = ACP * EFP + AEP * CFP | circuit PACEF |
| 292 | plu | APR * CEP = ACP * EPR + AEP * CPR | circuit PACER |
| 473 | plu | BEF * CFH = BCF * EFH + BFH * CEF | circuit FBCEH |
| 476 | plu | BCF * CEP = BCE * CFP + BCP * CEF | circuit CBEFP |
| 479 | plu | BEP * CFP = BCP * EFP + BFP * CEP | circuit PBCEF |
| 792 | plu | EFR * EHS = EFH * ERS + EFS * EHR | circuit EFHRS |
| 1771 | bary | outer ABE; fans BEP, AEP, ABP; target FHP; sign 1; vertices AFH 1; BFH 1; EFH 1 | container ABE; inner P; line FH |
| 1777 | bary | outer ABE; fans BEP, AEP, ABP; target HPQ; sign -1; vertices AHQ -1; BHQ -1; EHQ -1 | container ABE; inner P; line HQ |
| 1779 | bary | outer ABE; fans BEP, AEP, ABP; target HPS; sign -1; vertices AHS -1; BHS -1; EHS -1 | container ABE; inner P; line HS |
| 1805 | bary | outer ABF; fans BFP, AFP, ABP; target CPR; sign 1; vertices ACR 1; BCR 1; CFR 1 | container ABF; inner P; line CR |
| 1959 | bary | outer ACE; fans CEP, AEP, ACP; target FPQ; sign -1; vertices AFQ -1; CFQ -1; EFQ 1 | container ACE; inner P; line FQ |
| 2035 | bary | outer ACH; fans CHP, AHP, ACP; target EFP; sign 1; vertices AEF 1; CEF 1; EFH 1 | container ACH; inner P; line EF |
| 2214 | bary | outer AER; fans EQR, AQR, AEQ; target FHQ; sign 1; vertices AFH 1; EFH 1; FHR 1 | container AER; inner Q; line FH |
| 2257 | bary | outer BCH; fans CHP, BHP, BCP; target FPQ; sign -1; vertices BFQ -1; CFQ -1; FHQ -1 | container BCH; inner P; line FQ |
| 2492 | bary | outer CEF; fans EFQ, CFQ, CEQ; target AHQ; sign -1; vertices ACH -1; AEH -1; AFH -1 | container CEF; inner Q; line AH |
| 2538 | bary | outer EFH; fans FHQ, EHQ, EFQ; target CFQ; sign -1; vertices CEF -1; none 0; CFH 1 | container EFH; inner Q; line CF |
| 2555 | bary | outer EFH; fans FHQ, EHQ, EFQ; target HQR; sign -1; vertices EHR -1; FHR 1; none 0 | container EFH; inner Q; line HR |
| 2599 | bary | outer EFR; fans FRS, ERS, EFS; target AHS; sign -1; vertices AEH -1; AFH -1; AHR -1 | container EFR; inner S; line AH |
| 2660 | bary | outer EPR; fans PQR, EQR, EPQ; target AFQ; sign -1; vertices AEF -1; AFP -1; AFR -1 | container EPR; inner Q; line AF |
| 2680 | bary | outer EPR; fans PQR, EQR, EPQ; target FHQ; sign 1; vertices EFH 1; FHP 1; FHR 1 | container EPR; inner Q; line FH |
| 2723 | four | 1 * ACF + -1 * AFP + -1 * ACP + -1 * CFP = 0 | vertices ACFP |
| 2732 | four | 1 * ACP + 1 * APR + -1 * ACR + 1 * CPR = 0 | vertices ACPR |
| 2736 | four | 1 * AEF + -1 * AFQ + -1 * AEQ + -1 * EFQ = 0 | vertices AEFQ |
| 2790 | four | 1 * BFH + -1 * BHP + -1 * BFP + -1 * FHP = 0 | vertices BFHP |
| 2797 | four | -1 * BHP + -1 * BPQ + 1 * BHQ + -1 * HPQ = 0 | vertices BHPQ |
| 2799 | four | -1 * BHP + -1 * BPS + 1 * BHS + -1 * HPS = 0 | vertices BHPS |
| 2823 | four | 1 * EFH + -1 * EHQ + -1 * EFQ + -1 * FHQ = 0 | vertices EFHQ |
| 2826 | four | 1 * EFP + -1 * EPQ + -1 * EFQ + -1 * FPQ = 0 | vertices EFPQ |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 148:221 | APR | lo | 73287/500000 | 8384043/57200000 | 292 | 148:22, 148:174, 148:34, 148:150, 148:123 |
| 148:225 | FHQ | lo | 11519/100000 | 44897353359711/389767240427000 | 2214 | 148:39, 148:178, 148:66, 148:36, 148:42, 148:154, 148:188 |
| 148:226 | FPQ | lo | 47651/500000 | 85413339/896233000 | 2257 | 148:73, 148:140, 148:104, 148:74, 148:98, 148:134, 148:225 |
| 148:230 | HQR | hi | 490463/1000000 | 37963498584449/77403430769000 | 2555 | 148:155, 148:225, 148:166, 148:158, 148:169, 148:188 |
| 148:236 | AFQ | lo | 6741/50000 | 10704207/79396000 | 2660 | 148:175, 148:212, 148:178, 148:172, 148:30, 148:44, 148:48 |
| 148:241 | FHQ | lo | 69699/500000 | 38737011/277886000 | 2680 | 148:175, 148:212, 148:178, 148:172, 148:154, 148:184, 148:188 |
| 148:244 | ACR | lo | 411329/1000000 | 411329/1000000 | 2732 | 148:22, 148:221, 148:150 |
| 148:246 | AEF | lo | 16041/50000 | 16041/50000 | 2736 | 148:236, 148:36, 148:158 |
| 148:247 | EFH | lo | 162699/500000 | 162699/500000 | 2823 | 148:166, 148:158, 148:241 |
| 148:249 | EFP | lo | 140651/500000 | 140651/500000 | 2826 | 148:172, 148:158, 148:226 |
| 148:250 | BCR | lo | 99369/1000000 | 46902597/472000000 | 48 | 148:0, 148:126, 148:244, 148:68, 148:17 |
| 148:251 | AEH | lo | 126731/1000000 | 60821302500/479923057073 | 239 | 148:16, 148:42, 148:20, 148:246, 148:19 |
| 148:252 | CEH | lo | 174417/1000000 | 2955821859/16946859860 | 241 | 148:16, 148:247, 148:251, 148:118, 148:31 |
| 148:254 | AEH | lo | 67703/500000 | 13375852875/98783131019 | 243 | 148:20, 148:247, 148:42, 148:252, 148:131 |
| 148:255 | AFP | lo | 70601/500000 | 8076771/57200000 | 248 | 148:22, 148:249, 148:34, 148:132, 148:123 |
| 148:260 | CFP | lo | 76579/500000 | 40996911/267676000 | 479 | 148:74, 148:249, 148:96, 148:122, 148:87 |
| 148:262 | EHS | lo | 115567/1000000 | 30038349/259920500 | 792 | 148:247, 148:182, 148:162, 148:168, 148:161 |
| 148:264 | FHP | lo | 12089/62500 | 1141203/5900000 | 1771 | 148:3, 148:86, 148:34, 148:8, 148:42, 148:94, 148:247 |
| 148:265 | HPS | lo | 73657/500000 | 34766323/236000000 | 1779 | 148:3, 148:86, 148:34, 148:8, 148:58, 148:110, 148:262 |
| 148:267 | CPR | lo | 90127/500000 | 18417103337/102173000000 | 1805 | 148:5, 148:96, 148:255, 148:8, 148:244, 148:250, 148:136 |
| 148:270 | EFP | lo | 144077/500000 | 19865637/68941000 | 2035 | 148:21, 148:140, 148:52, 148:22, 148:246, 148:118, 148:247 |
| 148:275 | AHQ | lo | 129489/1000000 | 4711263099/36383368000 | 2492 | 148:119, 148:158, 148:134, 148:124, 148:20, 148:254, 148:42 |
| 148:283 | AHS | lo | 50293/500000 | 7469853/74263000 | 2599 | 148:161, 148:202, 148:182, 148:162, 148:254, 148:42, 148:56 |
| 148:290 | AFQ | lo | 34797/250000 | 38678421/277886000 | 2660 | 148:175, 148:212, 148:178, 148:172, 148:246, 148:255, 148:48 |
| 148:291 | FHQ | lo | 37173/250000 | 5902803/39698000 | 2680 | 148:175, 148:212, 148:178, 148:172, 148:247, 148:264, 148:188 |
| 148:297 | ACR | lo | 104957/250000 | 104957/250000 | 2732 | 148:22, 148:221, 148:267 |
| 148:298 | AEF | lo | 81297/250000 | 81297/250000 | 2736 | 148:290, 148:36, 148:158 |
| 148:300 | BFH | lo | 11857/31250 | 11857/31250 | 2790 | 148:104, 148:96, 148:264 |
| 148:301 | BHS | lo | 166657/500000 | 166657/500000 | 2799 | 148:104, 148:116, 148:265 |
| 148:302 | EFH | lo | 83673/250000 | 83673/250000 | 2823 | 148:166, 148:158, 148:291 |
| 148:304 | BCR | lo | 25261/250000 | 202089/2000000 | 48 | 148:0, 148:126, 148:297, 148:68, 148:17 |
| 148:305 | CEH | lo | 181063/1000000 | 1534227273/8473429930 | 241 | 148:16, 148:302, 148:254, 148:118, 148:31 |
| 148:306 | AEH | lo | 139469/1000000 | 13777240875/98783131019 | 243 | 148:20, 148:302, 148:42, 148:305, 148:131 |
| 148:307 | AFP | lo | 143503/1000000 | 1282563/8937500 | 248 | 148:22, 148:270, 148:34, 148:260, 148:123 |
| 148:308 | APR | lo | 149337/1000000 | 21355311/143000000 | 292 | 148:22, 148:174, 148:34, 148:267, 148:123 |
| 148:313 | CFP | lo | 155539/1000000 | 41634147/267676000 | 479 | 148:74, 148:270, 148:96, 148:122, 148:87 |
| 148:317 | EHS | lo | 11723/100000 | 1523526/12996025 | 792 | 148:302, 148:182, 148:162, 148:168, 148:161 |
| 148:318 | FHP | lo | 3079/15625 | 23252697/118000000 | 1771 | 148:3, 148:86, 148:34, 148:8, 148:42, 148:300, 148:302 |
| 148:319 | HPQ | lo | 147469/1000000 | 2175177/14750000 | 1777 | 148:3, 148:86, 148:34, 148:8, 148:275, 148:106, 148:166 |
| 148:320 | HPS | lo | 3743/25000 | 17667047/118000000 | 1779 | 148:3, 148:86, 148:34, 148:8, 148:283, 148:301, 148:317 |
| 148:322 | CPR | lo | 18271/100000 | 4667013153/25543250000 | 1805 | 148:5, 148:96, 148:307, 148:8, 148:297, 148:304, 148:136 |
| 148:328 | EFP | lo | 289571/1000000 | 259523847/896233000 | 2035 | 148:21, 148:140, 148:52, 148:22, 148:298, 148:118, 148:302 |
| 148:334 | AHQ | lo | 65069/500000 | 9469758573/72766736000 | 2492 | 148:119, 148:158, 148:134, 148:124, 148:20, 148:306, 148:42 |
| 148:344 | AHS | lo | 101313/1000000 | 5266683/51984100 | 2599 | 148:161, 148:202, 148:182, 148:162, 148:306, 148:42, 148:56 |
| 148:350 | AFQ | lo | 8769/62500 | 77977059/555772000 | 2660 | 148:175, 148:212, 148:178, 148:172, 148:298, 148:307, 148:48 |
| 148:351 | FHQ | lo | 30171/200000 | 1048017/6947150 | 2680 | 148:175, 148:212, 148:178, 148:172, 148:302, 148:318, 148:188 |
| 148:358 | ACR | lo | 425047/1000000 | 425047/1000000 | 2732 | 148:22, 148:308, 148:322 |
| 148:359 | AEF | lo | 10197/31250 | 10197/31250 | 2736 | 148:350, 148:36, 148:158 |
| 148:361 | BFH | lo | 23941/62500 | 23941/62500 | 2790 | 148:104, 148:96, 148:318 |
| 148:362 | BHQ | lo | 333469/1000000 | 333469/1000000 | 2797 | 148:104, 148:112, 148:319 |
| 148:363 | BHS | lo | 8393/25000 | 8393/25000 | 2799 | 148:104, 148:116, 148:320 |
| 148:364 | EFH | lo | 67371/200000 | 67371/200000 | 2823 | 148:166, 148:158, 148:351 |
| 148:366 | BCR | lo | 12759/125000 | 48178371/472000000 | 48 | 148:0, 148:126, 148:358, 148:68, 148:17 |
| 148:367 | CEH | lo | 183283/1000000 | 1242429399/6778743944 | 241 | 148:16, 148:364, 148:306, 148:118, 148:31 |
| 148:368 | AEH | lo | 70247/500000 | 13878483000/98783131019 | 243 | 148:20, 148:364, 148:42, 148:367, 148:131 |
| 148:369 | AFP | lo | 72369/500000 | 4139523/28600000 | 248 | 148:22, 148:328, 148:34, 148:313, 148:123 |
| 148:370 | APR | lo | 18767/125000 | 4293903/28600000 | 292 | 148:22, 148:174, 148:34, 148:322, 148:123 |
| 148:375 | CFP | lo | 156031/1000000 | 5220741/33459500 | 479 | 148:74, 148:328, 148:96, 148:122, 148:87 |
| 148:379 | EHS | lo | 117617/1000000 | 61142199/519841000 | 792 | 148:364, 148:182, 148:162, 148:168, 148:161 |
| 148:380 | FHP | lo | 99099/500000 | 93549723/472000000 | 1771 | 148:3, 148:86, 148:34, 148:8, 148:42, 148:361, 148:364 |
| 148:381 | HPQ | lo | 147697/1000000 | 69713451/472000000 | 1777 | 148:3, 148:86, 148:34, 148:8, 148:334, 148:362, 148:166 |
| 148:382 | HPS | lo | 150711/1000000 | 71135859/472000000 | 1779 | 148:3, 148:86, 148:34, 148:8, 148:344, 148:363, 148:379 |
| 148:384 | CPR | lo | 92109/500000 | 4705528239/25543250000 | 1805 | 148:5, 148:96, 148:369, 148:8, 148:358, 148:366, 148:136 |
| 148:390 | EFP | lo | 36239/125000 | 129914397/448116500 | 2035 | 148:21, 148:140, 148:52, 148:22, 148:359, 148:118, 148:364 |
| 148:396 | AHQ | lo | 65151/500000 | 4740837099/36383368000 | 2492 | 148:119, 148:158, 148:134, 148:124, 148:20, 148:368, 148:42 |
| 148:406 | AHS | lo | 12687/125000 | 10552431/103968200 | 2599 | 148:161, 148:202, 148:182, 148:162, 148:368, 148:42, 148:56 |
| 148:412 | AFQ | lo | 140697/1000000 | 39097851/277886000 | 2660 | 148:175, 148:212, 148:178, 148:172, 148:359, 148:369, 148:48 |
| 148:413 | FHQ | lo | 9463/62500 | 3365949/22230880 | 2680 | 148:175, 148:212, 148:178, 148:172, 148:364, 148:380, 148:188 |
| 148:420 | ACR | lo | 213677/500000 | 213677/500000 | 2732 | 148:22, 148:370, 148:384 |
| 148:421 | AEF | lo | 326697/1000000 | 326697/1000000 | 2736 | 148:412, 148:36, 148:158 |
| 148:423 | BFH | lo | 192099/500000 | 192099/500000 | 2790 | 148:104, 148:96, 148:380 |
| 148:424 | BHQ | lo | 333697/1000000 | 333697/1000000 | 2797 | 148:104, 148:112, 148:381 |
| 148:425 | BHS | lo | 336711/1000000 | 336711/1000000 | 2799 | 148:104, 148:116, 148:382 |
| 148:426 | EFH | lo | 5272/15625 | 5272/15625 | 2823 | 148:166, 148:158, 148:413 |
| 148:428 | BCR | lo | 102527/1000000 | 24196461/236000000 | 48 | 148:0, 148:126, 148:420, 148:68, 148:17 |
| 148:429 | CEH | lo | 91923/500000 | 778903626/4236714965 | 241 | 148:16, 148:426, 148:368, 148:118, 148:31 |
| 148:430 | AEH | lo | 28151/200000 | 13904313750/98783131019 | 243 | 148:20, 148:426, 148:42, 148:429, 148:131 |
| 148:431 | AFP | lo | 145009/1000000 | 41472699/286000000 | 248 | 148:22, 148:390, 148:34, 148:375, 148:123 |
| 148:432 | APR | lo | 75313/500000 | 21539637/143000000 | 292 | 148:22, 148:174, 148:34, 148:384, 148:123 |
| 148:436 | CFP | lo | 3123/20000 | 41797641/267676000 | 479 | 148:74, 148:390, 148:96, 148:122, 148:87 |
| 148:440 | EHS | lo | 29429/250000 | 15298407/129960250 | 792 | 148:426, 148:182, 148:162, 148:168, 148:161 |
| 148:441 | FHP | lo | 49633/250000 | 46853679/236000000 | 1771 | 148:3, 148:86, 148:34, 148:8, 148:42, 148:423, 148:426 |
| 148:442 | HPQ | lo | 5911/40000 | 69749907/472000000 | 1777 | 148:3, 148:86, 148:34, 148:8, 148:396, 148:424, 148:166 |
| 148:443 | HPS | lo | 151037/1000000 | 71289567/472000000 | 1779 | 148:3, 148:86, 148:34, 148:8, 148:406, 148:425, 148:440 |
| 148:445 | CPR | lo | 36977/200000 | 18890255171/102173000000 | 1805 | 148:5, 148:96, 148:431, 148:8, 148:420, 148:428, 148:136 |
| 148:451 | EFP | lo | 29001/100000 | 64979193/224058250 | 2035 | 148:21, 148:140, 148:52, 148:22, 148:421, 148:118, 148:426 |
| 148:457 | AHQ | lo | 16293/125000 | 9484708323/72766736000 | 2492 | 148:119, 148:158, 148:134, 148:124, 148:20, 148:430, 148:42 |
| 148:467 | AHS | lo | 101543/1000000 | 13196607/129960250 | 2599 | 148:161, 148:202, 148:182, 148:162, 148:430, 148:42, 148:56 |
| 148:473 | AFQ | lo | 17601/125000 | 1701249/12082000 | 2660 | 148:175, 148:212, 148:178, 148:172, 148:421, 148:431, 148:48 |
| 148:474 | FHQ | lo | 151557/1000000 | 5264451/34735750 | 2680 | 148:175, 148:212, 148:178, 148:172, 148:426, 148:441, 148:188 |
| 148:481 | ACR | lo | 428511/1000000 | 428511/1000000 | 2732 | 148:22, 148:432, 148:445 |
| 148:482 | AEF | lo | 40851/125000 | 40851/125000 | 2736 | 148:473, 148:36, 148:158 |
| 148:484 | BFH | lo | 96133/250000 | 96133/250000 | 2790 | 148:104, 148:96, 148:441 |
| 148:485 | BHQ | lo | 13351/40000 | 13351/40000 | 2797 | 148:104, 148:112, 148:442 |
| 148:486 | BHS | lo | 337037/1000000 | 337037/1000000 | 2799 | 148:104, 148:116, 148:443 |
| 148:487 | EFH | lo | 337557/1000000 | 337557/1000000 | 2823 | 148:166, 148:158, 148:474 |
| 148:489 | BCR | lo | 20551/200000 | 48500523/472000000 | 48 | 148:0, 148:126, 148:481, 148:68, 148:17 |
| 148:490 | CEH | lo | 22999/125000 | 890885871/4841959960 | 241 | 148:16, 148:487, 148:430, 148:118, 148:31 |
| 148:491 | AEH | lo | 5633/40000 | 13911207375/98783131019 | 243 | 148:20, 148:487, 148:42, 148:490, 148:131 |
| 148:492 | AFP | lo | 3627/25000 | 3627/25000 | 248 | 148:22, 148:451, 148:34, 148:436, 148:123 |
| 148:493 | APR | lo | 150843/1000000 | 8628261/57200000 | 292 | 148:22, 148:174, 148:34, 148:445, 148:123 |
| 148:497 | CFP | lo | 19523/125000 | 8361351/53535200 | 479 | 148:74, 148:451, 148:96, 148:122, 148:87 |
| 148:501 | EHS | lo | 58871/500000 | 12241497/103968200 | 792 | 148:487, 148:182, 148:162, 148:168, 148:161 |
| 148:502 | FHP | lo | 198627/1000000 | 93752277/472000000 | 1771 | 148:3, 148:86, 148:34, 148:8, 148:42, 148:484, 148:487 |
| 148:503 | HPQ | lo | 73899/500000 | 69761067/472000000 | 1777 | 148:3, 148:86, 148:34, 148:8, 148:457, 148:485, 148:166 |
| 148:504 | HPS | lo | 30227/200000 | 14267149/94400000 | 1779 | 148:3, 148:86, 148:34, 148:8, 148:467, 148:486, 148:501 |
| 148:506 | CPR | lo | 185219/1000000 | 3784883223/20434600000 | 1805 | 148:5, 148:96, 148:492, 148:8, 148:481, 148:489, 148:136 |
| 148:512 | EFP | lo | 290037/1000000 | 32492619/112029125 | 2035 | 148:21, 148:140, 148:52, 148:22, 148:482, 148:118, 148:487 |
| 148:518 | AHQ | lo | 26071/200000 | 9485522073/72766736000 | 2492 | 148:119, 148:158, 148:134, 148:124, 148:20, 148:491, 148:42 |
| 148:528 | AHS | lo | 20311/200000 | 26396469/259920500 | 2599 | 148:161, 148:202, 148:182, 148:162, 148:491, 148:42, 148:56 |
| 148:534 | AFQ | lo | 140839/1000000 | 3913719/27788600 | 2660 | 148:175, 148:212, 148:178, 148:172, 148:482, 148:492, 148:48 |
| 148:535 | FHQ | lo | 151597/1000000 | 21063477/138943000 | 2680 | 148:175, 148:212, 148:178, 148:172, 148:487, 148:502, 148:188 |
| 148:542 | ACR | lo | 214531/500000 | 214531/500000 | 2732 | 148:22, 148:493, 148:506 |
| 148:543 | AEF | lo | 326839/1000000 | 326839/1000000 | 2736 | 148:534, 148:36, 148:158 |
| 148:545 | BFH | lo | 384627/1000000 | 384627/1000000 | 2790 | 148:104, 148:96, 148:502 |
| 148:546 | BHQ | lo | 166899/500000 | 166899/500000 | 2797 | 148:104, 148:112, 148:503 |
| 148:547 | BHS | lo | 67427/200000 | 67427/200000 | 2799 | 148:104, 148:116, 148:504 |
| 148:548 | EFH | lo | 337597/1000000 | 337597/1000000 | 2823 | 148:166, 148:158, 148:535 |
| 148:550 | BCR | lo | 102863/1000000 | 24275883/236000000 | 48 | 148:0, 148:126, 148:542, 148:68, 148:17 |
| 148:551 | CEH | lo | 5751/31250 | 6237535137/33893719720 | 241 | 148:16, 148:548, 148:491, 148:118, 148:31 |
| 148:552 | AEH | lo | 35211/250000 | 13913067375/98783131019 | 243 | 148:20, 148:548, 148:42, 148:551, 148:131 |
| 148:553 | AFP | lo | 145099/1000000 | 41498553/286000000 | 248 | 148:22, 148:512, 148:34, 148:497, 148:123 |
| 148:554 | APR | lo | 18869/125000 | 43172367/286000000 | 292 | 148:22, 148:174, 148:34, 148:506, 148:123 |
| 148:557 | BCF | lo | 14151/100000 | 2529507/17875000 | 476 | 148:68, 148:497, 148:74, 148:118, 148:123 |
| 148:558 | CFP | lo | 156193/1000000 | 20904633/133838000 | 479 | 148:74, 148:512, 148:96, 148:122, 148:87 |
| 148:562 | EHS | lo | 117749/1000000 | 12242241/103968200 | 792 | 148:548, 148:182, 148:162, 148:168, 148:161 |
| 148:563 | FHP | lo | 99327/500000 | 2930151/14750000 | 1771 | 148:3, 148:86, 148:34, 148:8, 148:42, 148:545, 148:548 |
| 148:564 | HPQ | lo | 29561/200000 | 69764229/472000000 | 1777 | 148:3, 148:86, 148:34, 148:8, 148:518, 148:546, 148:166 |
| 148:565 | HPS | lo | 151163/1000000 | 35674471/236000000 | 1779 | 148:3, 148:86, 148:34, 148:8, 148:528, 148:547, 148:562 |
| 148:567 | CPR | lo | 92689/500000 | 18940643299/102173000000 | 1805 | 148:5, 148:96, 148:553, 148:8, 148:542, 148:550, 148:136 |
| 148:573 | EFP | lo | 72511/250000 | 51989511/179246600 | 2035 | 148:21, 148:140, 148:52, 148:22, 148:543, 148:118, 148:548 |
| 148:579 | AHQ | lo | 65179/500000 | 2371435737/18191684000 | 2492 | 148:119, 148:158, 148:134, 148:124, 148:20, 148:552, 148:42 |
| 148:589 | AHS | lo | 101559/1000000 | 10558941/103968200 | 2599 | 148:161, 148:202, 148:182, 148:162, 148:552, 148:42, 148:56 |
| 148:595 | AFQ | lo | 140847/1000000 | 7827903/55577200 | 2660 | 148:175, 148:212, 148:178, 148:172, 148:543, 148:553, 148:48 |
| 148:596 | FHQ | lo | 151609/1000000 | 84260139/555772000 | 2680 | 148:175, 148:212, 148:178, 148:172, 148:548, 148:563, 148:188 |
| 148:603 | ACR | lo | 42933/100000 | 42933/100000 | 2732 | 148:22, 148:554, 148:567 |
| 148:604 | AEF | lo | 326847/1000000 | 326847/1000000 | 2736 | 148:595, 148:36, 148:158 |
| 148:606 | BFH | lo | 192327/500000 | 192327/500000 | 2790 | 148:104, 148:96, 148:563 |
| 148:607 | BHQ | lo | 66761/200000 | 66761/200000 | 2797 | 148:104, 148:112, 148:564 |
| 148:608 | BHS | lo | 337163/1000000 | 337163/1000000 | 2799 | 148:104, 148:116, 148:565 |
| 148:609 | EFH | lo | 337609/1000000 | 337609/1000000 | 2823 | 148:166, 148:158, 148:596 |
| 148:611 | BCR | lo | 25729/250000 | 4857669/47200000 | 48 | 148:0, 148:126, 148:603, 148:68, 148:17 |
| 148:612 | CEH | lo | 184043/1000000 | 6237913029/33893719720 | 241 | 148:16, 148:609, 148:552, 148:118, 148:31 |
| 148:613 | AEH | lo | 2817/20000 | 13913613750/98783131019 | 243 | 148:20, 148:609, 148:42, 148:612, 148:131 |
| 148:614 | AFP | lo | 29021/200000 | 3772731/26000000 | 248 | 148:22, 148:573, 148:34, 148:558, 148:123 |
| 148:615 | APR | lo | 37751/250000 | 21593577/143000000 | 292 | 148:22, 148:174, 148:34, 148:567, 148:123 |
| 148:617 | CFH | lo | 48297/250000 | 5169783853/26760300000 | 473 | 148:557, 148:609, 148:606, 148:118, 148:83 |
| 148:619 | CFP | lo | 31239/200000 | 41809917/267676000 | 479 | 148:74, 148:573, 148:96, 148:122, 148:87 |
| 148:623 | EHS | lo | 14719/125000 | 61212321/519841000 | 792 | 148:609, 148:182, 148:162, 148:168, 148:161 |
| 148:624 | FHP | lo | 198661/1000000 | 93768459/472000000 | 1771 | 148:3, 148:86, 148:34, 148:8, 148:42, 148:606, 148:609 |
| 148:625 | HPQ | lo | 147807/1000000 | 69765159/472000000 | 1777 | 148:3, 148:86, 148:34, 148:8, 148:579, 148:607, 148:166 |
| 148:626 | HPS | lo | 151171/1000000 | 71352969/472000000 | 1779 | 148:3, 148:86, 148:34, 148:8, 148:589, 148:608, 148:623 |
| 148:628 | CPR | lo | 37091/200000 | 4737142367/25543250000 | 1805 | 148:5, 148:96, 148:614, 148:8, 148:603, 148:611, 148:136 |
| 148:633 | EFP | lo | 145023/500000 | 51989883/179246600 | 2035 | 148:21, 148:140, 148:52, 148:22, 148:604, 148:118, 148:609 |
| 148:639 | AHQ | lo | 130359/1000000 | 4742906349/36383368000 | 2492 | 148:119, 148:158, 148:134, 148:124, 148:20, 148:613, 148:42 |
| 148:643 | CFQ | hi | 189131/500000 | 228740130485131249/604714302882812500 | 2538 | 148:155, 148:596, 148:166, 148:158, 148:119, 148:617 |
| 148:647 | AHS | lo | 2539/25000 | 52795263/519841000 | 2599 | 148:161, 148:202, 148:182, 148:162, 148:613, 148:42, 148:56 |
| 148:652 | AFQ | lo | 140849/1000000 | 19570083/138943000 | 2660 | 148:175, 148:212, 148:178, 148:172, 148:604, 148:614, 148:48 |
| 148:653 | FHQ | lo | 37903/250000 | 42130953/277886000 | 2680 | 148:175, 148:212, 148:178, 148:172, 148:609, 148:624, 148:188 |
| 148:660 | ACR | lo | 429459/1000000 | 429459/1000000 | 2732 | 148:22, 148:615, 148:628 |
| 148:661 | AEF | lo | 326849/1000000 | 326849/1000000 | 2736 | 148:652, 148:36, 148:158 |
| 148:663 | BFH | lo | 384661/1000000 | 384661/1000000 | 2790 | 148:104, 148:96, 148:624 |
| 148:664 | BHQ | lo | 333807/1000000 | 333807/1000000 | 2797 | 148:104, 148:112, 148:625 |
| 148:665 | BHS | lo | 337171/1000000 | 337171/1000000 | 2799 | 148:104, 148:116, 148:626 |
| 148:666 | EFH | lo | 84403/250000 | 84403/250000 | 2823 | 148:166, 148:158, 148:653 |
| 148:668 | BCR | lo | 51471/500000 | 48588687/472000000 | 48 | 148:0, 148:126, 148:660, 148:68, 148:17 |
| 148:669 | CEH | lo | 92023/500000 | 1559505363/8473429930 | 241 | 148:16, 148:666, 148:613, 148:118, 148:31 |
| 148:670 | AEH | lo | 140851/1000000 | 13913753250/98783131019 | 243 | 148:20, 148:666, 148:42, 148:669, 148:131 |
| 148:671 | AFP | lo | 72553/500000 | 41500413/286000000 | 248 | 148:22, 148:633, 148:34, 148:619, 148:123 |
| 148:672 | APR | lo | 151029/1000000 | 8638863/57200000 | 292 | 148:22, 148:174, 148:34, 148:628, 148:123 |
| 148:675 | BCF | lo | 70757/500000 | 8094627/57200000 | 476 | 148:68, 148:619, 148:74, 148:118, 148:123 |
| 148:680 | FHP | lo | 198663/1000000 | 93769389/472000000 | 1771 | 148:3, 148:86, 148:34, 148:8, 148:42, 148:663, 148:666 |
| 148:681 | HPQ | lo | 4619/31250 | 34882719/236000000 | 1777 | 148:3, 148:86, 148:34, 148:8, 148:639, 148:664, 148:166 |
| 148:682 | HPS | lo | 151173/1000000 | 71353999/472000000 | 1779 | 148:3, 148:86, 148:34, 148:8, 148:647, 148:665, 148:623 |
| 148:684 | CPR | lo | 185493/1000000 | 9476209733/51086500000 | 1805 | 148:5, 148:96, 148:671, 148:8, 148:660, 148:668, 148:136 |
| 148:688 | FPQ | hi | 203477/500000 | 96041091/236000000 | 1959 | 148:17, 148:122, 148:34, 148:22, 148:47, 148:643, 148:158 |
| 148:689 | EFP | lo | 290047/1000000 | 6498747/22405825 | 2035 | 148:21, 148:140, 148:52, 148:22, 148:661, 148:118, 148:666 |
| 148:700 | AFQ | lo | 2817/20000 | 78280611/555772000 | 2660 | 148:175, 148:212, 148:178, 148:172, 148:661, 148:671, 148:48 |
| 148:701 | FHQ | lo | 151613/1000000 | 84262371/555772000 | 2680 | 148:175, 148:212, 148:178, 148:172, 148:666, 148:680, 148:188 |
| 148:707 | ACR | lo | 214761/500000 | 214761/500000 | 2732 | 148:22, 148:672, 148:684 |
| 148:708 | AEF | lo | 6537/20000 | 6537/20000 | 2736 | 148:700, 148:36, 148:158 |
| 148:710 | BFH | lo | 384663/1000000 | 384663/1000000 | 2790 | 148:104, 148:96, 148:680 |
| 148:711 | BHQ | lo | 20863/62500 | 20863/62500 | 2797 | 148:104, 148:112, 148:681 |
| 148:712 | BHS | lo | 337173/1000000 | 337173/1000000 | 2799 | 148:104, 148:116, 148:682 |
| 148:713 | EFH | lo | 337613/1000000 | 337613/1000000 | 2823 | 148:166, 148:158, 148:701 |
| 148:715 | BCR | lo | 51477/500000 | 24297273/236000000 | 48 | 148:0, 148:126, 148:707, 148:68, 148:17 |
| 148:716 | CEH | lo | 184047/1000000 | 6238046433/33893719720 | 241 | 148:16, 148:713, 148:670, 148:118, 148:31 |
| 148:717 | APR | lo | 151041/1000000 | 43197849/286000000 | 292 | 148:22, 148:174, 148:34, 148:684, 148:123 |
| 148:718 | CFH | lo | 96597/500000 | 77548971541/401404500000 | 473 | 148:675, 148:713, 148:710, 148:118, 148:83 |
| 148:719 | CFP | lo | 156197/1000000 | 10452549/66919000 | 479 | 148:74, 148:689, 148:96, 148:122, 148:87 |
| 148:722 | FHP | lo | 24833/125000 | 23442417/118000000 | 1771 | 148:3, 148:86, 148:34, 148:8, 148:42, 148:710, 148:713 |
| 148:723 | HPS | lo | 75587/500000 | 14270837/94400000 | 1779 | 148:3, 148:86, 148:34, 148:8, 148:647, 148:712, 148:623 |
| 148:724 | CPR | lo | 185511/1000000 | 9477125021/51086500000 | 1805 | 148:5, 148:96, 148:671, 148:8, 148:707, 148:715, 148:136 |
| 148:738 | ACR | lo | 26847/62500 | 26847/62500 | 2732 | 148:22, 148:717, 148:724 |
| 148:740 | BFH | lo | 48083/125000 | 48083/125000 | 2790 | 148:104, 148:96, 148:722 |
| 148:741 | BHS | lo | 168587/500000 | 168587/500000 | 2799 | 148:104, 148:116, 148:723 |
| 148:742 | BCR | lo | 1287/12500 | 6074667/59000000 | 48 | 148:0, 148:126, 148:738, 148:68, 148:17 |
| 148:743 | AFP | lo | 145107/1000000 | 10375173/71500000 | 248 | 148:22, 148:689, 148:34, 148:719, 148:123 |
| 148:744 | APR | lo | 151047/1000000 | 43199523/286000000 | 292 | 148:22, 148:174, 148:34, 148:724, 148:123 |
| 148:745 | BCF | lo | 28303/200000 | 40473321/286000000 | 476 | 148:68, 148:719, 148:74, 148:118, 148:123 |
| 148:746 | CPR | lo | 2319/12500 | 59234819/319290625 | 1805 | 148:5, 148:96, 148:743, 148:8, 148:738, 148:742, 148:136 |
| 148:757 | ACF | lo | 6161/15625 | 6161/15625 | 2723 | 148:743, 148:22, 148:719 |
| 148:758 | ACR | lo | 429567/1000000 | 429567/1000000 | 2732 | 148:22, 148:744, 148:746 |
| 148:759 | BCR | lo | 102963/1000000 | 48598731/472000000 | 48 | 148:0, 148:126, 148:758, 148:68, 148:17 |
| 148:760 | APR | lo | 3021/20000 | 1080009/7150000 | 292 | 148:22, 148:174, 148:34, 148:746, 148:123 |
| 148:761 | CPR | lo | 46381/250000 | 18955588099/102173000000 | 1805 | 148:5, 148:96, 148:743, 148:8, 148:758, 148:759, 148:136 |
| 148:767 | ACR | lo | 214787/500000 | 214787/500000 | 2732 | 148:22, 148:760, 148:761 |
| 148:768 | BCR | lo | 25741/250000 | 24299691/236000000 | 48 | 148:0, 148:126, 148:767, 148:68, 148:17 |
| 148:769 | APR | lo | 151051/1000000 | 10800183/71500000 | 292 | 148:22, 148:174, 148:34, 148:761, 148:123 |
| 148:770 | CPR | lo | 92763/500000 | 4738941943/25543250000 | 1805 | 148:5, 148:96, 148:743, 148:8, 148:767, 148:768, 148:136 |
| 148:774 | ACR | lo | 429577/1000000 | 429577/1000000 | 2732 | 148:22, 148:769, 148:770 |
| 148:775 | BCR | lo | 20593/200000 | 48599661/472000000 | 48 | 148:0, 148:126, 148:774, 148:68, 148:17 |
| 148:776 | APR | lo | 37763/250000 | 21600459/143000000 | 292 | 148:22, 148:174, 148:34, 148:770, 148:123 |
| 148:777 | CPR | lo | 185527/1000000 | 3791177089/20434600000 | 1805 | 148:5, 148:96, 148:743, 148:8, 148:774, 148:775, 148:136 |
| 148:780 | ACR | lo | 429579/1000000 | 429579/1000000 | 2732 | 148:22, 148:776, 148:777 |

## Stage 149

| Property | Value |
| --- | --- |
| Scope | root/EHQ-/BEP+/BFP+/CFQ-/PQR+ |
| Packet | forest:root/EHQ-/BEP+/BFP+/CFQ-/PQR+ |
| Index | 1 |
| Context | 62 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 148 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| b | 103767/1000000 | 306519/500000 | 103767/1000000 | 146641/250000 |
| c | 135501/250000 | 1/1 | 135501/250000 | 1/1 |
| e | 279/1000 | 59/125 | 279/1000 | 59/125 |
| f | 279/1000 | 306519/500000 | 279/1000 | 146641/250000 |
| h | 135501/250000 | 1/1 | 135501/250000 | 1/1 |
| p | 157439/1000000 | 260019/500000 | 157439/1000000 | 123391/250000 |
| q | 35701/250000 | 379/1000 | 145551/1000000 | 379/1000 |
| u | 396459/1000000 | 415781/500000 | 118443/250000 | 415781/500000 |
| v | 416299/1000000 | 907/1000 | 416299/1000000 | 306519/500000 |
| r | 332981/500000 | 1/1 | 94623/125000 | 1/1 |
| w | 332981/500000 | 1/1 | 332981/500000 | 1/1 |
| j | 268487/500000 | 871013/1000000 | 268487/500000 | 871013/1000000 |
| k | 268487/500000 | 871013/1000000 | 147981/250000 | 871013/1000000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 21 | A_ACP | bitt ["actual-area","ACP",[]] | `1/1 * c * q + -1/1 * a * c + 1/1 * a * p + -93/1000` |
| 65 | A_BFP | bitt ["actual-area","BFP",[]] | `1/1 * f * q + -1/1 * b * q + -1/1 * p + 1/1 * b + -93/1000` |
| 87 | A_CFQ | bitt ["actual-area","CFQ",[]] | `-1/1 * f * v + 1/1 * c * v + 1/1 * u + -1/1 * c + -93/1000` |
| 108 | A_EHS | bitt ["actual-area","EHS",["Q"]] | `1/1 * k + 1/1 * h * j + -1/1 * h + -1/1 * e * j + -279/1000` |
| 122 | A_FQR | bitt ["actual-area","FQR",["S"]] | `1/1 * u * w + -1/1 * u + -1/1 * f * w + -1/1 * v * r + 1/1 * f * v + 1/1 * r + -279/1000` |
| 137 | fb | bitt ["contact-order","fb"] | `1/1 * f + -1/1 * b` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 108 | k | 268487/500000 | 871013/1000000 | 147981024237/250000000000 | 871013/1000000 | 147981/250000 | 871013/1000000 | `(1/1, -84972211263/125000000000); (1/1, -97926709013/125000000000); (1/1, -445920873/500000000); (1/1, -31108679/31250000); (1/1, -147981024237/250000000000); (1/1, -190007401487/250000000000); (1/1, -650999627/1000000000); (1/1, -51194071/62500000)` |
| 1 | 122 | v | 416299/1000000 | 907/1000 | 416299/1000000 | 442/721 | 416299/1000000 | 306519/500000 | `(-193481/500000, 34363115279/500000000000); (-13231/250000, -76865191999/500000000000); (-193481/500000, -19153676339/250000000000); (-13231/250000, -37383914989/125000000000); (-721/1000, 201382115279/500000000000); (-193481/500000, 90153808001/500000000000); (-721/1000, 64355823661/250000000000); (-193481/500000, 4370835011/125000000000); (-193481/500000, 53981/500000); (-13231/250000, -56519/250000); (-721/1000, 221/500)` |
| 2 | 122 | r | 332981/500000 | 1/1 | 147284193/194567000 | 1/1 | 94623/125000 | 1/1 | `(583701/1000000, -240544174221/500000000000); (583701/1000000, -141121319409/250000000000); (583701/1000000, -156607321089/250000000000); (583701/1000000, -14196524271/20000000000); (193481/500000, -213099083721/500000000000); (193481/500000, -221938397277/500000000000); (193481/500000, -142884775839/250000000000); (193481/500000, -147304432617/250000000000); (583701/1000000, -441852579/1000000000); (583701/1000000, -318415446819/500000000000); (193481/500000, -193481199/500000000); (193481/500000, -129055602639/250000000000)` |
| 3 | 87 | u | 396459/1000000 | 415781/500000 | 59221569231/125000000000 | 415781/500000 | 118443/250000 | 415781/500000 | `(1/1, -131378924451/250000000000); (1/1, -792848421/1000000000); (1/1, -332287691583/500000000000); (1/1, -465954053181/500000000000); (1/1, -59221569231/125000000000); (1/1, -325499801/500000000); (1/1, -169637635323/250000000000); (1/1, -213944397361/250000000000)` |
| 4 | 122 | f | 279/1000 | 306519/500000 | 279/1000 | 6101797861/10402625000 | 279/1000 | 146641/250000 | `(-249663/1000000, 287154153/62500000000); (-249663/1000000, -28730247393/250000000000); (-13231/250000, -18041726091/125000000000); (-13231/250000, -65962316187/250000000000); (-249663/1000000, 18305393583/125000000000); (-249663/1000000, 6731923161/250000000000); (-13231/250000, -6286981417/125000000000); (-13231/250000, -42452826839/250000000000); (-583701/1000000, 20356539723/125000000000); (-193481/500000, 870252663/62500000000); (-583701/1000000, 304701/1000000); (-193481/500000, 53981/500000)` |
| 5 | 137 | b | 103767/1000000 | 306519/500000 | 103767/1000000 | 146641/250000 | 103767/1000000 | 146641/250000 | `(-1/1, 279/1000); (-1/1, 146641/250000)` |
| 6 | 65 | p | 157439/1000000 | 260019/500000 | 157439/1000000 | 123391/250000 | 157439/1000000 | 123391/250000 | `(-1/1, 8947743333/250000000000); (-1/1, 28102664409/62500000000); (-1/1, 19928085697/250000000000); (-1/1, 123391/250000); (-1/1, 77180307/1000000000); (-1/1, 94249311/250000000); (-1/1, 193747063/1000000000)` |
| 7 | 21 | q | 35701/250000 | 379/1000 | 36387836103/250000000000 | 379/1000 | 145551/1000000 | 379/1000 | `(135501/250000, -26581031271/200000000000); (135501/250000, -6862867/25000000); (1/1, -180430027287/1000000000000); (1/1, -61336099/125000000); (135501/250000, -2450661837/25000000000); (135501/250000, -181037/1562500); (1/1, -36387836103/250000000000); (1/1, -10376181/31250000)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 149:0 | ABC | lo | 93/1000 | occupants none |
| 149:3 | ABE | hi | 59/125 | vertex maximum 59/125 |
| 149:5 | ABF | hi | 146641/250000 | vertex maximum 146641/250000 |
| 149:8 | ABP | lo | 93/1000 | occupants none |
| 149:13 | ABR | hi | 12214153/15625000 | vertex maximum 12214153/15625000 |
| 149:15 | ABS | hi | 161291199333/250000000000 | vertex maximum 161291199333/250000000000 |
| 149:16 | ACE | lo | 13821/40000 | earlier 148:16; ACE; lo; 13821/40000 |
| 149:17 | ACE | hi | 59/125 | vertex maximum 59/125 |
| 149:18 | ACF | lo | 6161/15625 | earlier 148:757; ACF; lo; 6161/15625 |
| 149:19 | ACF | hi | 239274746647/250000000000 | vertex maximum 239274746647/250000000000 |
| 149:20 | ACH | lo | 279/1000 | occupants P |
| 149:22 | ACP | lo | 93/1000 | occupants none |
| 149:26 | ACR | lo | 429579/1000000 | earlier 148:780; ACR; lo; 429579/1000000 |
| 149:30 | AEF | lo | 6537/20000 | earlier 148:708; AEF; lo; 6537/20000 |
| 149:31 | AEF | hi | 847342993/1000000000 | vertex maximum 847342993/1000000000 |
| 149:34 | AEP | lo | 93/1000 | occupants none |
| 149:36 | AEQ | lo | 93/1000 | occupants none |
| 149:39 | AER | hi | 95448052841/125000000000 | vertex maximum 95448052841/125000000000 |
| 149:42 | AFH | lo | 93/1000 | occupants none |
| 149:44 | AFP | lo | 145107/1000000 | earlier 148:743; AFP; lo; 145107/1000000 |
| 149:52 | AHP | lo | 93/1000 | occupants none |
| 149:54 | AHQ | lo | 130359/1000000 | earlier 148:639; AHQ; lo; 130359/1000000 |
| 149:56 | AHR | lo | 93/1000 | occupants none |
| 149:58 | AHS | lo | 2539/25000 | earlier 148:647; AHS; lo; 2539/25000 |
| 149:62 | APR | lo | 37763/250000 | earlier 148:776; APR; lo; 37763/250000 |
| 149:67 | AQR | hi | 254345791229/500000000000 | vertex maximum 254345791229/500000000000 |
| 149:70 | BCE | lo | 93/1000 | occupants none |
| 149:72 | BCF | lo | 28303/200000 | earlier 148:745; BCF; lo; 28303/200000 |
| 149:75 | BCH | hi | 896233/1000000 | vertex maximum 896233/1000000 |
| 149:76 | BCP | lo | 93/1000 | occupants none |
| 149:80 | BCR | lo | 20593/200000 | earlier 148:775; BCR; lo; 20593/200000 |
| 149:85 | BEF | hi | 802809/1000000 | earlier 148:83; BEF; hi; 802809/1000000 |
| 149:89 | BEP | hi | 66919/250000 | earlier 148:87; BEP; hi; 66919/250000 |
| 149:96 | BFH | lo | 48083/125000 | earlier 148:740; BFH; lo; 48083/125000 |
| 149:97 | BFH | hi | 146641/250000 | vertex maximum 146641/250000 |
| 149:98 | BFP | lo | 93/1000 | occupants none |
| 149:100 | BFQ | lo | 93/1000 | occupants none |
| 149:103 | BFR | hi | 389767240427/500000000000 | vertex maximum 389767240427/500000000000 |
| 149:106 | BHP | lo | 93/1000 | occupants none |
| 149:108 | BHQ | lo | 20863/62500 | earlier 148:711; BHQ; lo; 20863/62500 |
| 149:112 | BHS | lo | 168587/500000 | earlier 148:741; BHS; lo; 168587/500000 |
| 149:122 | CEF | lo | 279/1000 | occupants Q |
| 149:123 | CEF | hi | 4547921/7812500 | vertex maximum 4547921/7812500 |
| 149:124 | CEH | lo | 184047/1000000 | earlier 148:716; CEH; lo; 184047/1000000 |
| 149:127 | CEP | hi | 143/500 | earlier 148:123; CEP; hi; 143/500 |
| 149:128 | CEQ | lo | 93/1000 | occupants none |
| 149:130 | CER | lo | 93/1000 | occupants none |
| 149:131 | CER | hi | 19900829/50000000 | vertex maximum 19900829/50000000 |
| 149:134 | CFH | lo | 96597/500000 | earlier 148:718; CFH; lo; 96597/500000 |
| 149:135 | CFH | hi | 48494752141/62500000000 | vertex maximum 48494752141/62500000000 |
| 149:138 | CFQ | lo | 93/1000 | occupants none |
| 149:141 | CFR | hi | 721/1000 | vertex maximum 721/1000 |
| 149:142 | CFS | lo | 53633/500000 | earlier 148:138; CFS; lo; 53633/500000 |
| 149:144 | CHP | lo | 93/1000 | occupants none |
| 149:155 | CPR | hi | 587609/1000000 | earlier 148:151; CPR; hi; 587609/1000000 |
| 149:158 | CRS | lo | 93/1000 | occupants none |
| 149:160 | EFH | lo | 337613/1000000 | earlier 148:713; EFH; lo; 337613/1000000 |
| 149:161 | EFH | hi | 38266542391/62500000000 | vertex maximum 38266542391/62500000000 |
| 149:162 | EFP | lo | 290047/1000000 | earlier 148:689; EFP; lo; 290047/1000000 |
| 149:164 | EFQ | lo | 93/1000 | occupants none |
| 149:167 | EFR | hi | 519841/1000000 | vertex maximum 519841/1000000 |
| 149:168 | EFS | lo | 93/1000 | occupants none |
| 149:172 | EHQ | lo | 93/1000 | occupants none |
| 149:175 | EHR | hi | 721/1000 | vertex maximum 721/1000 |
| 149:176 | EHS | lo | 279/1000 | occupants Q |
| 149:182 | EPS | lo | 279/1000 | occupants Q |
| 149:183 | EPS | hi | 486953/1000000 | earlier 148:177; EPS; hi; 486953/1000000 |
| 149:184 | EQR | lo | 93/1000 | occupants none |
| 149:186 | EQS | lo | 93/1000 | occupants none |
| 149:188 | ERS | lo | 93/1000 | occupants none |
| 149:189 | ERS | hi | 333841/1000000 | earlier 148:183; ERS; hi; 333841/1000000 |
| 149:190 | FHP | lo | 24833/125000 | earlier 148:722; FHP; lo; 24833/125000 |
| 149:192 | FHQ | lo | 151613/1000000 | earlier 148:701; FHQ; lo; 151613/1000000 |
| 149:194 | FHR | lo | 93/1000 | occupants none |
| 149:195 | FHR | hi | 211705859/500000000 | vertex maximum 211705859/500000000 |
| 149:196 | FHS | lo | 93/1000 | occupants none |
| 149:199 | FPQ | hi | 203477/500000 | earlier 148:688; FPQ; hi; 203477/500000 |
| 149:202 | FPS | lo | 9581/100000 | earlier 148:196; FPS; lo; 9581/100000 |
| 149:204 | FQR | lo | 279/1000 | occupants S |
| 149:205 | FQR | hi | 420848421/1000000000 | vertex maximum 420848421/1000000000 |
| 149:206 | FQS | lo | 93/1000 | occupants none |
| 149:208 | FRS | lo | 93/1000 | occupants none |
| 149:210 | HPQ | lo | 4619/31250 | earlier 148:681; HPQ; lo; 4619/31250 |
| 149:212 | HPR | lo | 194487/1000000 | earlier 148:206; HPR; lo; 194487/1000000 |
| 149:217 | HQR | hi | 490463/1000000 | earlier 148:230; HQR; hi; 490463/1000000 |
| 149:220 | PQR | lo | 93/1000 | occupants none |
| 149:222 | PQS | lo | 93/1000 | occupants none |
| 149:224 | PRS | lo | 93/1000 | occupants none |
| 149:226 | QRS | lo | 93/1000 | occupants none |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 1 | fan | ABF = ABP + BFP + AFP | point P |
| 17 | fan | BFH = BFP + FHP + BHP | point P |
| 24 | fan | EFH = EFQ + FHQ + EHQ | point Q |
| 31 | fan | FPR = FPS + PRS + FRS | point S |
| 55 | plu | ACE * BCR = ABC * CER + ACR * BCE | circuit CABER |
| 262 | plu | AEF * CEH = ACE * EFH + AEH * CEF | circuit EACFH |
| 263 | plu | AEF * CFH = ACF * EFH + AFH * CEF | circuit FACEH |
| 264 | plu | AEH * CFH = ACH * EFH + AFH * CEH | circuit HACEF |
| 265 | plu | ACE * AFP = ACF * AEP + ACP * AEF | circuit ACEFP |
| 313 | plu | APR * CEP = ACP * EPR + AEP * CPR | circuit PACER |
| 397 | plu | AFP * EHP = AEP * FHP + AHP * EFP | circuit PAEFH |
| 537 | plu | BEF * CFH = BCF * EFH + BFH * CEF | circuit FBCEH |
| 543 | plu | BEP * CFP = BCP * EFP + BFP * CEP | circuit PBCEF |
| 673 | plu | BEP * FHP = BFP * EHP + BHP * EFP | circuit PBEFH |
| 678 | plu | BEQ * FHQ = BFQ * EHQ + BHQ * EFQ | circuit QBEFH |
| 752 | plu | BPR * FHP = BFP * HPR + BHP * FPR | circuit PBFHR |
| 839 | plu | CPS * EHP = CEP * HPS + CHP * EPS | circuit PCEHS |
| 933 | plu | EFR * FPS = EFP * FRS + EFS * FPR | circuit FEPRS |
| 936 | plu | ERS * FPS = EFS * PRS + EPS * FRS | circuit SEFPR |
| 964 | plu | FPQ * HQR = FHQ * PQR + FQR * HPQ | circuit QFHPR |
| 1478 | quad | CER + CFR >= 93/125 | quadrilateral CERF; occupants Q, S |
| 1835 | support | FPR * APR >= 1023/1000 * (FPR - AFR) | pentagon RFHAP |
| 1845 | support | FQR * AQR >= 1023/1000 * (FQR - AFR) | pentagon RFHAQ |
| 2098 | bary | outer ABE; fans BEP, AEP, ABP; target FHP; sign 1; vertices AFH 1; BFH 1; EFH 1 | container ABE; inner P; line FH |
| 2104 | bary | outer ABE; fans BEP, AEP, ABP; target HPQ; sign -1; vertices AHQ -1; BHQ -1; EHQ -1 | container ABE; inner P; line HQ |
| 2105 | bary | outer ABE; fans BEP, AEP, ABP; target HPR; sign -1; vertices AHR -1; BHR -1; EHR -1 | container ABE; inner P; line HR |
| 2106 | bary | outer ABE; fans BEP, AEP, ABP; target HPS; sign -1; vertices AHS -1; BHS -1; EHS -1 | container ABE; inner P; line HS |
| 2127 | bary | outer ABF; fans BFP, AFP, ABP; target CEP; sign 1; vertices ACE 1; BCE 1; CEF 1 | container ABF; inner P; line CE |
| 2132 | bary | outer ABF; fans BFP, AFP, ABP; target CPR; sign 1; vertices ACR 1; BCR 1; CFR 1 | container ABF; inner P; line CR |
| 2284 | bary | outer ACE; fans CEP, AEP, ACP; target CFP; sign 1; vertices ACF 1; none 0; CEF -1 | container ACE; inner P; line CF |
| 2294 | bary | outer ACE; fans CEP, AEP, ACP; target EPR; sign 1; vertices AER 1; CER 1; none 0 | container ACE; inner P; line ER |
| 2298 | bary | outer ACE; fans CEP, AEP, ACP; target FPQ; sign -1; vertices AFQ -1; CFQ -1; EFQ 1 | container ACE; inner P; line FQ |
| 2645 | bary | outer BCH; fans CHP, BHP, BCP; target EPQ; sign 1; vertices BEQ 1; CEQ 1; EHQ 1 | container BCH; inner P; line EQ |
| 2744 | bary | outer BFH; fans FHP, BHP, BFP; target AFP; sign -1; vertices ABF -1; none 0; AFH 1 | container BFH; inner P; line AF |
| 2748 | bary | outer BFH; fans FHP, BHP, BFP; target APR; sign -1; vertices ABR -1; AFR 1; AHR 1 | container BFH; inner P; line AR |
| 2774 | bary | outer BFH; fans FHP, BHP, BFP; target FPR; sign -1; vertices BFR -1; none 0; FHR -1 | container BFH; inner P; line FR |
| 2938 | bary | outer CEF; fans EFQ, CFQ, CEQ; target AHQ; sign -1; vertices ACH -1; AEH -1; AFH -1 | container CEF; inner Q; line AH |
| 2947 | bary | outer CEF; fans EFQ, CFQ, CEQ; target BPQ; sign -1; vertices BCP -1; BEP -1; BFP -1 | container CEF; inner Q; line BP |
| 2977 | bary | outer CFR; fans FRS, CRS, CFS; target AHS; sign -1; vertices ACH -1; AFH -1; AHR -1 | container CFR; inner S; line AH |
| 3013 | bary | outer EFH; fans FHQ, EHQ, EFQ; target AFQ; sign -1; vertices AEF -1; none 0; AFH 1 | container EFH; inner Q; line AF |
| 3026 | bary | outer EFH; fans FHQ, EHQ, EFQ; target CFQ; sign -1; vertices CEF -1; none 0; CFH 1 | container EFH; inner Q; line CF |
| 3043 | bary | outer EFH; fans FHQ, EHQ, EFQ; target HQR; sign -1; vertices EHR -1; FHR 1; none 0 | container EFH; inner Q; line HR |
| 3099 | bary | outer EFR; fans FRS, ERS, EFS; target BES; sign 1; vertices none 0; BEF 1; BER 1 | container EFR; inner S; line BE |
| 3205 | bary | outer EPR; fans PQR, EQR, EPQ; target AFQ; sign -1; vertices AEF -1; AFP -1; AFR -1 | container EPR; inner Q; line AF |
| 3262 | bary | outer EPS; fans PQS, EQS, EPQ; target FHQ; sign 1; vertices EFH 1; FHP 1; FHS 1 | container EPS; inner Q; line FH |
| 3293 | bary | outer FPR; fans PRS, FRS, FPS; target CPS; sign -1; vertices CFP -1; none 0; CPR -1 | container FPR; inner S; line CP |
| 3326 | bary | outer FQR; fans QRS, FRS, FQS; target BPS; sign -1; vertices BFP -1; BPQ -1; BPR -1 | container FQR; inner S; line BP |
| 3343 | bary | outer FQR; fans QRS, FRS, FQS; target HQS; sign 1; vertices FHQ 1; none 0; HQR 1 | container FQR; inner S; line HQ |
| 3364 | four | 1 * ABF + -1 * AFP + -1 * ABP + -1 * BFP = 0 | vertices ABFP |
| 3377 | four | 1 * ACE + -1 * AEP + -1 * ACP + -1 * CEP = 0 | vertices ACEP |
| 3382 | four | 1 * ACF + -1 * AFP + -1 * ACP + -1 * CFP = 0 | vertices ACFP |
| 3391 | four | 1 * ACP + 1 * APR + -1 * ACR + 1 * CPR = 0 | vertices ACPR |
| 3395 | four | 1 * AEF + -1 * AFQ + -1 * AEQ + -1 * EFQ = 0 | vertices AEFQ |
| 3447 | four | 1 * BEH + -1 * BHP + -1 * BEP + -1 * EHP = 0 | vertices BEHP |
| 3452 | four | 1 * BEP + -1 * BPR + -1 * BER + 1 * EPR = 0 | vertices BEPR |
| 3455 | four | 1 * BFH + -1 * BHP + -1 * BFP + -1 * FHP = 0 | vertices BFHP |
| 3463 | four | -1 * BHP + -1 * BPQ + 1 * BHQ + -1 * HPQ = 0 | vertices BHPQ |
| 3464 | four | -1 * BHP + -1 * BPR + 1 * BHR + -1 * HPR = 0 | vertices BHPR |
| 3465 | four | -1 * BHP + -1 * BPS + 1 * BHS + -1 * HPS = 0 | vertices BHPS |
| 3493 | four | 1 * EFH + -1 * EHQ + -1 * EFQ + -1 * FHQ = 0 | vertices EFHQ |
| 3496 | four | 1 * EFP + -1 * EPQ + -1 * EFQ + -1 * FPQ = 0 | vertices EFPQ |
| 3505 | four | -1 * EHQ + -1 * EQR + 1 * EHR + -1 * HQR = 0 | vertices EHQR |
| 3507 | four | -1 * EPQ + -1 * EQR + 1 * EPR + -1 * PQR = 0 | vertices EPQR |
| 3508 | four | -1 * EPQ + -1 * EQS + 1 * EPS + -1 * PQS = 0 | vertices EPQS |
| 3518 | four | 1 * FPR + -1 * FRS + -1 * FPS + -1 * PRS = 0 | vertices FPRS |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 149:228 | AFP | hi | 100141/250000 | 100141/250000 | 1 | 149:5, 149:8, 149:98 |
| 149:231 | FHP | hi | 100141/250000 | 100141/250000 | 17 | 149:97, 149:98, 149:106 |
| 149:236 | FHQ | hi | 85253/200000 | 26641542391/62500000000 | 24 | 149:161, 149:164, 149:172 |
| 149:240 | FPR | lo | 28181/100000 | 28181/100000 | 31 | 149:202, 149:224, 149:208 |
| 149:251 | AEH | lo | 4483/31250 | 6956899875/48494752141 | 264 | 149:20, 149:160, 149:42, 149:124, 149:135 |
| 149:255 | EHP | lo | 22693/200000 | 45450123/400564000 | 397 | 149:34, 149:190, 149:52, 149:162, 149:228 |
| 149:259 | BEP | lo | 23421/250000 | 4690827/50070500 | 673 | 149:98, 149:255, 149:106, 149:162, 149:231 |
| 149:260 | BEQ | lo | 46559/500000 | 4961643/53283125 | 678 | 149:100, 149:172, 149:108, 149:164, 149:236 |
| 149:262 | BPR | lo | 110583/1000000 | 44295621/400564000 | 752 | 149:98, 149:212, 149:106, 149:240, 149:231 |
| 149:265 | FPS | lo | 10363/100000 | 34596/333841 | 936 | 149:168, 149:224, 149:182, 149:208, 149:189 |
| 149:266 | FPQ | lo | 28207/250000 | 55338441/490463000 | 964 | 149:192, 149:220, 149:204, 149:210, 149:217 |
| 149:267 | HQR | lo | 67991/500000 | 55338441/406954000 | 964 | 149:192, 149:220, 149:204, 149:210, 149:199 |
| 149:268 | CFR | lo | 345983/1000000 | 17299171/50000000 | 1478 | 149:131 |
| 149:271 | AFR | lo | 28053/200000 | 771462626313/5500000000000 | 1845 | 149:204, 149:67 |
| 149:273 | HPQ | lo | 73931/500000 | 17447771139/118000000000 | 2104 | 149:3, 149:259, 149:34, 149:8, 149:54, 149:108, 149:172 |
| 149:274 | HPS | lo | 36589/200000 | 43175171/236000000 | 2106 | 149:3, 149:259, 149:34, 149:8, 149:58, 149:112, 149:176 |
| 149:277 | CEP | lo | 5079/31250 | 95333277/586564000 | 2127 | 149:5, 149:98, 149:44, 149:8, 149:16, 149:70, 149:122 |
| 149:279 | CPR | lo | 604/3125 | 5668566913/29328200000 | 2132 | 149:5, 149:98, 149:44, 149:8, 149:26, 149:80, 149:268 |
| 149:285 | CFP | hi | 104993/200000 | 30972913770521/59000000000000 | 2284 | 149:17, 149:277, 149:34, 149:22, 149:19, 149:122 |
| 149:287 | EPR | hi | 33819/62500 | 15962542927513/29500000000000 | 2294 | 149:17, 149:277, 149:34, 149:22, 149:39, 149:131 |
| 149:288 | EPQ | lo | 23253/250000 | 83360643/896233000 | 2645 | 149:75, 149:144, 149:106, 149:76, 149:260, 149:128, 149:172 |
| 149:289 | AFP | hi | 385819/1000000 | 14144213881/36660250000 | 2744 | 149:97, 149:190, 149:106, 149:98, 149:5, 149:42 |
| 149:291 | APR | hi | 248421/500000 | 4553586779167/9165062500000 | 2748 | 149:97, 149:190, 149:106, 149:98, 149:13, 149:271, 149:56 |
| 149:294 | FPR | hi | 149869/250000 | 43953842445350207/73320500000000000 | 2774 | 149:97, 149:190, 149:106, 149:98, 149:103, 149:195 |
| 149:305 | AHQ | lo | 5231/40000 | 1189513431/9095842000 | 2938 | 149:123, 149:164, 149:138, 149:128, 149:20, 149:251, 149:42 |
| 149:306 | BPQ | lo | 93109/1000000 | 1693814487/18191684000 | 2947 | 149:123, 149:164, 149:138, 149:128, 149:76, 149:259, 149:98 |
| 149:307 | AHS | lo | 116991/1000000 | 84351/721000 | 2977 | 149:141, 149:208, 149:158, 149:142, 149:20, 149:42, 149:56 |
| 149:313 | AFQ | hi | 575803/1000000 | 22033961767726316263/38266542391000000000 | 3013 | 149:161, 149:192, 149:172, 149:164, 149:31, 149:42 |
| 149:322 | CFQ | hi | 375943/1000000 | 10217332762350601/27177942039062500 | 3026 | 149:161, 149:192, 149:172, 149:164, 149:123, 149:134 |
| 149:324 | HQR | hi | 243921/500000 | 18667989563911/38266542391000 | 3043 | 149:161, 149:192, 149:172, 149:164, 149:175, 149:194 |
| 149:337 | AFQ | lo | 34633/200000 | 780838863/4509200000 | 3205 | 149:287, 149:220, 149:184, 149:288, 149:30, 149:44, 149:271 |
| 149:344 | FHQ | lo | 159897/1000000 | 7786239/48695300 | 3262 | 149:183, 149:222, 149:186, 149:288, 149:160, 149:190, 149:196 |
| 149:356 | CPS | hi | 121683/250000 | 72945990971/149869000000 | 3293 | 149:294, 149:224, 149:208, 149:265, 149:285, 149:155 |
| 149:367 | BPS | lo | 96909/1000000 | 13594753051/140282807000 | 3326 | 149:205, 149:226, 149:208, 149:206, 149:98, 149:306, 149:262 |
| 149:372 | HQS | hi | 366431/1000000 | 25701928066247/70141403500000 | 3343 | 149:205, 149:226, 149:208, 149:206, 149:236, 149:324 |
| 149:378 | ACE | lo | 21783/62500 | 21783/62500 | 3377 | 149:34, 149:22, 149:277 |
| 149:380 | ACR | lo | 109333/250000 | 109333/250000 | 3391 | 149:22, 149:62, 149:279 |
| 149:382 | AEF | lo | 71833/200000 | 71833/200000 | 3395 | 149:337, 149:36, 149:164 |
| 149:390 | BHQ | lo | 333971/1000000 | 333971/1000000 | 3463 | 149:106, 149:306, 149:273 |
| 149:391 | BHR | lo | 39807/100000 | 39807/100000 | 3464 | 149:106, 149:262, 149:212 |
| 149:392 | BHS | lo | 186427/500000 | 186427/500000 | 3465 | 149:106, 149:367, 149:274 |
| 149:393 | EFH | lo | 345897/1000000 | 345897/1000000 | 3493 | 149:172, 149:164, 149:344 |
| 149:394 | EFP | lo | 7471/25000 | 7471/25000 | 3496 | 149:288, 149:164, 149:266 |
| 149:395 | EHR | lo | 160991/500000 | 160991/500000 | 3505 | 149:172, 149:184, 149:267 |
| 149:396 | EPR | lo | 69753/250000 | 69753/250000 | 3507 | 149:288, 149:184, 149:220 |
| 149:398 | FPR | lo | 28963/100000 | 28963/100000 | 3518 | 149:208, 149:265, 149:224 |
| 149:399 | BCR | lo | 104493/1000000 | 12330219/118000000 | 55 | 149:0, 149:130, 149:380, 149:70, 149:17 |
| 149:401 | CEH | lo | 47377/250000 | 2867482386/15131124875 | 262 | 149:378, 149:393, 149:251, 149:122, 149:31 |
| 149:402 | AEH | lo | 14709/100000 | 14266188375/96989504282 | 264 | 149:20, 149:393, 149:42, 149:401, 149:135 |
| 149:403 | AFP | lo | 74229/500000 | 70072617/472000000 | 265 | 149:18, 149:34, 149:22, 149:382, 149:17 |
| 149:406 | APR | lo | 153577/1000000 | 10980789/71500000 | 313 | 149:22, 149:396, 149:34, 149:279, 149:127 |
| 149:409 | EHP | lo | 119921/1000000 | 826212/6889625 | 397 | 149:34, 149:190, 149:52, 149:394, 149:289 |
| 149:411 | CFH | lo | 38931/200000 | 3472685999/17840200000 | 537 | 149:72, 149:393, 149:96, 149:122, 149:85 |
| 149:412 | CFP | lo | 32059/200000 | 5363403/33459500 | 543 | 149:76, 149:394, 149:98, 149:277, 149:89 |
| 149:414 | BEP | lo | 12153/125000 | 38944773/400564000 | 673 | 149:98, 149:409, 149:106, 149:394, 149:231 |
| 149:415 | BEQ | lo | 46577/500000 | 39708303/426265000 | 678 | 149:100, 149:172, 149:390, 149:164, 149:236 |
| 149:416 | BPR | lo | 56199/500000 | 45022881/400564000 | 752 | 149:98, 149:212, 149:106, 149:398, 149:231 |
| 149:417 | FPS | lo | 105277/1000000 | 5472771/51984100 | 933 | 149:394, 149:208, 149:168, 149:398, 149:167 |
| 149:418 | FPQ | lo | 23009/200000 | 18707973/162614000 | 964 | 149:344, 149:220, 149:204, 149:273, 149:324 |
| 149:419 | HQR | lo | 17239/125000 | 56123919/406954000 | 964 | 149:344, 149:220, 149:204, 149:273, 149:199 |
| 149:421 | AFR | lo | 37241/250000 | 230895669/1550000000 | 1835 | 149:398, 149:291 |
| 149:424 | FHP | lo | 25037/125000 | 94540173/472000000 | 2098 | 149:3, 149:414, 149:34, 149:8, 149:42, 149:96, 149:393 |
| 149:425 | HPQ | lo | 7413/50000 | 174947349/1180000000 | 2104 | 149:3, 149:414, 149:34, 149:8, 149:305, 149:390, 149:172 |
| 149:426 | HPR | lo | 99113/500000 | 23390709/118000000 | 2105 | 149:3, 149:414, 149:34, 149:8, 149:56, 149:391, 149:395 |
| 149:427 | HPS | lo | 7973/40000 | 11760231/59000000 | 2106 | 149:3, 149:414, 149:34, 149:8, 149:307, 149:392, 149:176 |
| 149:428 | CEP | lo | 40751/250000 | 23903139/146641000 | 2127 | 149:5, 149:98, 149:403, 149:8, 149:378, 149:70, 149:122 |
| 149:430 | CPR | lo | 195553/1000000 | 28676107263/146641000000 | 2132 | 149:5, 149:98, 149:403, 149:8, 149:380, 149:399, 149:268 |
| 149:436 | FPQ | hi | 404647/1000000 | 190993357/472000000 | 2298 | 149:17, 149:428, 149:34, 149:22, 149:313, 149:322, 149:164 |
| 149:437 | EPQ | lo | 18603/200000 | 83363991/896233000 | 2645 | 149:75, 149:144, 149:106, 149:76, 149:415, 149:128, 149:172 |
| 149:439 | APR | hi | 495463/1000000 | 567618255599/1145632812500 | 2748 | 149:97, 149:424, 149:106, 149:98, 149:13, 149:421, 149:56 |
| 149:444 | AHQ | lo | 32839/250000 | 4779176349/36383368000 | 2938 | 149:123, 149:164, 149:138, 149:128, 149:20, 149:402, 149:42 |
| 149:445 | BPQ | lo | 46837/500000 | 426025653/4547921000 | 2947 | 149:123, 149:164, 149:138, 149:128, 149:76, 149:414, 149:98 |
| 149:450 | CFQ | hi | 375721/1000000 | 112324316147575361/298957362429687500 | 3026 | 149:161, 149:344, 149:172, 149:164, 149:123, 149:411 |
| 149:459 | AFQ | lo | 184759/1000000 | 16662339037/90184000000 | 3205 | 149:287, 149:220, 149:184, 149:437, 149:382, 149:403, 149:421 |
| 149:462 | FHQ | lo | 16179/100000 | 39392289/243476500 | 3262 | 149:183, 149:222, 149:186, 149:437, 149:393, 149:424, 149:196 |
| 149:470 | BPS | lo | 19487/200000 | 13668533051/140282807000 | 3326 | 149:205, 149:226, 149:208, 149:206, 149:98, 149:445, 149:416 |
| 149:477 | ACE | lo | 87251/250000 | 87251/250000 | 3377 | 149:34, 149:22, 149:428 |
| 149:478 | ACF | lo | 401753/1000000 | 401753/1000000 | 3382 | 149:403, 149:22, 149:412 |
| 149:480 | ACR | lo | 44213/100000 | 44213/100000 | 3391 | 149:22, 149:406, 149:430 |
| 149:482 | AEF | lo | 370759/1000000 | 370759/1000000 | 3395 | 149:459, 149:36, 149:164 |
| 149:488 | BFH | lo | 48287/125000 | 48287/125000 | 3455 | 149:106, 149:98, 149:424 |
| 149:489 | BHQ | lo | 167467/500000 | 167467/500000 | 3463 | 149:106, 149:445, 149:425 |
| 149:490 | BHR | lo | 50453/125000 | 50453/125000 | 3464 | 149:106, 149:416, 149:426 |
| 149:491 | BHS | lo | 1218/3125 | 1218/3125 | 3465 | 149:106, 149:470, 149:427 |
| 149:492 | EFH | lo | 34779/100000 | 34779/100000 | 3493 | 149:172, 149:164, 149:462 |
| 149:493 | EFP | lo | 15053/50000 | 15053/50000 | 3496 | 149:437, 149:164, 149:418 |
| 149:494 | EHR | lo | 40489/125000 | 40489/125000 | 3505 | 149:172, 149:184, 149:419 |
| 149:495 | EPR | lo | 55803/200000 | 55803/200000 | 3507 | 149:437, 149:184, 149:220 |
| 149:497 | FPR | lo | 291277/1000000 | 291277/1000000 | 3518 | 149:208, 149:417, 149:224 |
| 149:498 | BCR | lo | 52719/500000 | 84351/800000 | 55 | 149:0, 149:130, 149:480, 149:70, 149:17 |
| 149:499 | CEH | lo | 191679/1000000 | 4060455279/21183574825 | 262 | 149:477, 149:492, 149:402, 149:122, 149:31 |
| 149:501 | AEH | lo | 14803/100000 | 14357444625/96989504282 | 264 | 149:20, 149:492, 149:42, 149:499, 149:135 |
| 149:502 | AFP | lo | 152211/1000000 | 2245113/14750000 | 265 | 149:478, 149:34, 149:22, 149:482, 149:17 |
| 149:505 | APR | lo | 154317/1000000 | 5516853/35750000 | 313 | 149:22, 149:495, 149:34, 149:430, 149:127 |
| 149:508 | EHP | lo | 120849/1000000 | 11656527/96454750 | 397 | 149:34, 149:424, 149:52, 149:493, 149:289 |
| 149:510 | CFH | lo | 39111/200000 | 149518177/764580000 | 537 | 149:72, 149:492, 149:488, 149:122, 149:85 |
| 149:512 | CFP | lo | 10077/62500 | 1348686/8364875 | 543 | 149:76, 149:493, 149:98, 149:428, 149:89 |
| 149:514 | BEP | lo | 19591/200000 | 39237537/400564000 | 673 | 149:98, 149:508, 149:106, 149:493, 149:231 |
| 149:515 | BEQ | lo | 23341/250000 | 19898931/213132500 | 678 | 149:100, 149:172, 149:489, 149:164, 149:236 |
| 149:516 | BPR | lo | 113649/1000000 | 45523779/400564000 | 752 | 149:98, 149:426, 149:106, 149:497, 149:231 |
| 149:518 | FPS | lo | 105969/1000000 | 55087341/519841000 | 933 | 149:493, 149:208, 149:168, 149:497, 149:167 |
| 149:519 | FPQ | lo | 115633/1000000 | 1880367/16261400 | 964 | 149:462, 149:220, 149:204, 149:425, 149:324 |
| 149:520 | HQR | lo | 139407/1000000 | 5641101/40464700 | 964 | 149:462, 149:220, 149:204, 149:425, 149:436 |
| 149:521 | AFR | lo | 37551/250000 | 153659394749/1023000000000 | 1835 | 149:497, 149:439 |
| 149:523 | FHP | lo | 200991/1000000 | 47433999/236000000 | 2098 | 149:3, 149:514, 149:34, 149:8, 149:42, 149:488, 149:492 |
| 149:524 | HPQ | lo | 148629/1000000 | 3507651199/23600000000 | 2104 | 149:3, 149:514, 149:34, 149:8, 149:444, 149:489, 149:172 |
| 149:525 | HPR | lo | 1997/10000 | 2945589/14750000 | 2105 | 149:3, 149:514, 149:34, 149:8, 149:56, 149:490, 149:494 |
| 149:526 | HPS | lo | 202657/1000000 | 47827053/236000000 | 2106 | 149:3, 149:514, 149:34, 149:8, 149:307, 149:491, 149:176 |
| 149:527 | CEP | lo | 163079/1000000 | 11957103/73320500 | 2127 | 149:5, 149:98, 149:502, 149:8, 149:477, 149:70, 149:122 |
| 149:529 | CPR | lo | 196959/1000000 | 3610286751/18330125000 | 2132 | 149:5, 149:98, 149:502, 149:8, 149:480, 149:498, 149:268 |
| 149:535 | FPQ | hi | 101151/250000 | 190972711/472000000 | 2298 | 149:17, 149:527, 149:34, 149:22, 149:313, 149:450, 149:164 |
| 149:536 | EPQ | lo | 93037/1000000 | 6414117/68941000 | 2645 | 149:75, 149:144, 149:106, 149:76, 149:515, 149:128, 149:172 |
| 149:538 | APR | hi | 495267/1000000 | 141848255306/286408203125 | 2748 | 149:97, 149:523, 149:106, 149:98, 149:13, 149:521, 149:56 |
| 149:541 | AHQ | lo | 65753/500000 | 4784640099/36383368000 | 2938 | 149:123, 149:164, 149:138, 149:128, 149:20, 149:501, 149:42 |
| 149:542 | BPQ | lo | 93791/1000000 | 6824908323/72766736000 | 2947 | 149:123, 149:164, 149:138, 149:128, 149:76, 149:514, 149:98 |
| 149:549 | CFQ | hi | 11737/31250 | 112283447006950361/298957362429687500 | 3026 | 149:161, 149:462, 149:172, 149:164, 149:123, 149:510 |
| 149:557 | AFQ | lo | 37691/200000 | 2124463567/11273000000 | 3205 | 149:287, 149:220, 149:184, 149:536, 149:482, 149:502, 149:521 |
| 149:559 | FHQ | lo | 32457/200000 | 39512631/243476500 | 3262 | 149:183, 149:222, 149:186, 149:536, 149:492, 149:523, 149:196 |
| 149:567 | BPS | lo | 97737/1000000 | 13710941051/140282807000 | 3326 | 149:205, 149:226, 149:208, 149:206, 149:98, 149:542, 149:516 |
| 149:574 | ACE | lo | 349079/1000000 | 349079/1000000 | 3377 | 149:34, 149:22, 149:527 |
| 149:575 | ACF | lo | 406443/1000000 | 406443/1000000 | 3382 | 149:502, 149:22, 149:512 |
| 149:577 | ACR | lo | 111069/250000 | 111069/250000 | 3391 | 149:22, 149:505, 149:529 |
| 149:579 | AEF | lo | 74891/200000 | 74891/200000 | 3395 | 149:557, 149:36, 149:164 |
| 149:585 | BFH | lo | 386991/1000000 | 386991/1000000 | 3455 | 149:106, 149:98, 149:523 |
| 149:587 | BHQ | lo | 16771/50000 | 16771/50000 | 3463 | 149:106, 149:542, 149:524 |
| 149:588 | BHR | lo | 406349/1000000 | 406349/1000000 | 3464 | 149:106, 149:516, 149:525 |
| 149:589 | BHS | lo | 196697/500000 | 196697/500000 | 3465 | 149:106, 149:567, 149:526 |
| 149:590 | EFH | lo | 69657/200000 | 69657/200000 | 3493 | 149:172, 149:164, 149:559 |
| 149:591 | EFP | lo | 30167/100000 | 30167/100000 | 3496 | 149:536, 149:164, 149:519 |
| 149:592 | EHR | lo | 325407/1000000 | 325407/1000000 | 3505 | 149:172, 149:184, 149:520 |
| 149:593 | EPR | lo | 279037/1000000 | 279037/1000000 | 3507 | 149:536, 149:184, 149:220 |
| 149:595 | FPR | lo | 291969/1000000 | 291969/1000000 | 3518 | 149:208, 149:518, 149:224 |
| 149:596 | BCR | lo | 105861/1000000 | 12491667/118000000 | 55 | 149:0, 149:130, 149:577, 149:70, 149:17 |
| 149:597 | CEH | lo | 192223/1000000 | 32575869903/169468598600 | 262 | 149:574, 149:590, 149:501, 149:122, 149:31 |
| 149:598 | CFH | lo | 98841/500000 | 33501000051/169468598600 | 263 | 149:575, 149:590, 149:42, 149:122, 149:31 |
| 149:599 | AEH | lo | 74137/500000 | 7190515875/48494752141 | 264 | 149:20, 149:590, 149:42, 149:597, 149:135 |
| 149:600 | AFP | lo | 153863/1000000 | 36311757/236000000 | 265 | 149:575, 149:34, 149:22, 149:579, 149:17 |
| 149:602 | APR | lo | 154781/1000000 | 11066907/71500000 | 313 | 149:22, 149:593, 149:34, 149:529, 149:127 |
| 149:605 | EHP | lo | 30291/250000 | 46747473/385819000 | 397 | 149:34, 149:523, 149:52, 149:591, 149:289 |
| 149:609 | CFP | lo | 16147/100000 | 43221657/267676000 | 543 | 149:76, 149:591, 149:98, 149:527, 149:89 |
| 149:611 | BEP | lo | 9817/100000 | 19661781/200282000 | 673 | 149:98, 149:605, 149:106, 149:591, 149:231 |
| 149:612 | BEQ | lo | 9347/100000 | 1992153/21313250 | 678 | 149:100, 149:172, 149:587, 149:164, 149:236 |
| 149:613 | BPR | lo | 14269/125000 | 45725217/400564000 | 752 | 149:98, 149:525, 149:106, 149:595, 149:231 |
| 149:616 | FPS | lo | 53101/500000 | 55208427/519841000 | 933 | 149:591, 149:208, 149:168, 149:595, 149:167 |
| 149:617 | FPQ | lo | 115939/1000000 | 4713333/40653500 | 964 | 149:559, 149:220, 149:204, 149:524, 149:324 |
| 149:618 | HQR | lo | 13979/100000 | 1571111/11239000 | 964 | 149:559, 149:220, 149:204, 149:524, 149:535 |
| 149:619 | AFR | lo | 150617/1000000 | 51360558759/341000000000 | 1835 | 149:595, 149:538 |
| 149:621 | FHP | lo | 8049/40000 | 23744667/118000000 | 2098 | 149:3, 149:611, 149:34, 149:8, 149:42, 149:585, 149:590 |
| 149:622 | HPQ | lo | 148773/1000000 | 3511059701/23600000000 | 2104 | 149:3, 149:611, 149:34, 149:8, 149:541, 149:587, 149:172 |
| 149:623 | HPR | lo | 50133/250000 | 23662827/118000000 | 2105 | 149:3, 149:611, 149:34, 149:8, 149:56, 149:588, 149:592 |
| 149:624 | HPS | lo | 203373/1000000 | 23998017/118000000 | 2106 | 149:3, 149:611, 149:34, 149:8, 149:307, 149:589, 149:176 |
| 149:625 | CEP | lo | 163091/1000000 | 8696709/53324000 | 2127 | 149:5, 149:98, 149:600, 149:8, 149:574, 149:70, 149:122 |
| 149:627 | CPR | lo | 49397/250000 | 28974548151/146641000000 | 2132 | 149:5, 149:98, 149:600, 149:8, 149:577, 149:596, 149:268 |
| 149:633 | FPQ | hi | 404577/1000000 | 19095997/47200000 | 2298 | 149:17, 149:625, 149:34, 149:22, 149:313, 149:549, 149:164 |
| 149:634 | EPQ | lo | 11631/125000 | 83393379/896233000 | 2645 | 149:75, 149:144, 149:106, 149:76, 149:612, 149:128, 149:172 |
| 149:636 | APR | hi | 495201/1000000 | 4538544029167/9165062500000 | 2748 | 149:97, 149:621, 149:106, 149:98, 149:13, 149:619, 149:56 |
| 149:639 | AHQ | lo | 26309/200000 | 4786058349/36383368000 | 2938 | 149:123, 149:164, 149:138, 149:128, 149:20, 149:599, 149:42 |
| 149:640 | BPQ | lo | 3753/40000 | 3413703849/36383368000 | 2947 | 149:123, 149:164, 149:138, 149:128, 149:76, 149:611, 149:98 |
| 149:647 | CFQ | hi | 375261/1000000 | 10198805418600601/27177942039062500 | 3026 | 149:161, 149:559, 149:172, 149:164, 149:123, 149:598 |
| 149:654 | AFQ | lo | 94823/500000 | 2137880691/11273000000 | 3205 | 149:287, 149:220, 149:184, 149:634, 149:579, 149:600, 149:619 |
| 149:656 | FHQ | lo | 20303/125000 | 79093059/486953000 | 3262 | 149:183, 149:222, 149:186, 149:634, 149:590, 149:621, 149:196 |
| 149:664 | BPS | lo | 1529/15625 | 13727588051/140282807000 | 3326 | 149:205, 149:226, 149:208, 149:206, 149:98, 149:640, 149:613 |
| 149:671 | ACE | lo | 349091/1000000 | 349091/1000000 | 3377 | 149:34, 149:22, 149:625 |
| 149:672 | ACF | lo | 408333/1000000 | 408333/1000000 | 3382 | 149:600, 149:22, 149:609 |
| 149:674 | ACR | lo | 445369/1000000 | 445369/1000000 | 3391 | 149:22, 149:602, 149:627 |
| 149:676 | AEF | lo | 187823/500000 | 187823/500000 | 3395 | 149:654, 149:36, 149:164 |
| 149:682 | BFH | lo | 15489/40000 | 15489/40000 | 3455 | 149:106, 149:98, 149:621 |
| 149:684 | BHQ | lo | 167799/500000 | 167799/500000 | 3463 | 149:106, 149:640, 149:622 |
| 149:685 | BHR | lo | 101921/250000 | 101921/250000 | 3464 | 149:106, 149:613, 149:623 |
| 149:686 | BHS | lo | 394229/1000000 | 394229/1000000 | 3465 | 149:106, 149:664, 149:624 |
| 149:687 | EFH | lo | 43553/125000 | 43553/125000 | 3493 | 149:172, 149:164, 149:656 |
| 149:688 | EFP | lo | 301987/1000000 | 301987/1000000 | 3496 | 149:634, 149:164, 149:617 |
| 149:689 | EHR | lo | 32579/100000 | 32579/100000 | 3505 | 149:172, 149:184, 149:618 |
| 149:690 | EPR | lo | 34881/125000 | 34881/125000 | 3507 | 149:634, 149:184, 149:220 |
| 149:691 | EPS | lo | 34881/125000 | 34881/125000 | 3508 | 149:634, 149:186, 149:222 |
| 149:692 | FPR | lo | 146101/500000 | 146101/500000 | 3518 | 149:208, 149:616, 149:224 |
| 149:693 | BCR | lo | 26519/250000 | 50068317/472000000 | 55 | 149:0, 149:130, 149:674, 149:70, 149:17 |
| 149:694 | CEH | lo | 96183/500000 | 20375016073/105917874125 | 262 | 149:671, 149:687, 149:599, 149:122, 149:31 |
| 149:695 | CFH | lo | 99263/500000 | 21027502149/105917874125 | 263 | 149:672, 149:687, 149:42, 149:122, 149:31 |
| 149:696 | AEH | lo | 148341/1000000 | 7193770875/48494752141 | 264 | 149:20, 149:687, 149:42, 149:694, 149:135 |
| 149:697 | AFP | lo | 15447/100000 | 72910047/472000000 | 265 | 149:672, 149:34, 149:22, 149:676, 149:17 |
| 149:699 | APR | lo | 15499/100000 | 11081787/71500000 | 313 | 149:22, 149:690, 149:34, 149:627, 149:127 |
| 149:702 | EHP | lo | 121297/1000000 | 11699679/96454750 | 397 | 149:34, 149:621, 149:52, 149:688, 149:289 |
| 149:706 | CFP | lo | 10099/62500 | 21626127/133838000 | 543 | 149:76, 149:688, 149:98, 149:625, 149:89 |
| 149:708 | BEP | lo | 49137/500000 | 9841353/100141000 | 673 | 149:98, 149:702, 149:106, 149:688, 149:231 |
| 149:709 | BEQ | lo | 93509/1000000 | 19929807/213132500 | 678 | 149:100, 149:172, 149:684, 149:164, 149:236 |
| 149:710 | BPR | lo | 114399/1000000 | 22912131/200282000 | 752 | 149:98, 149:623, 149:106, 149:692, 149:231 |
| 149:712 | EHP | lo | 60731/500000 | 19706589981/162244000000 | 839 | 149:625, 149:624, 149:144, 149:691, 149:356 |
| 149:713 | FPS | lo | 1063/10000 | 55259577/519841000 | 933 | 149:688, 149:208, 149:168, 149:692, 149:167 |
| 149:714 | FPQ | lo | 7253/62500 | 18871033/162614000 | 964 | 149:656, 149:220, 149:204, 149:622, 149:324 |
| 149:715 | HQR | lo | 139931/1000000 | 18871033/134859000 | 964 | 149:656, 149:220, 149:204, 149:622, 149:633 |
| 149:716 | AFR | lo | 37689/250000 | 25703987233/170500000000 | 1835 | 149:692, 149:636 |
| 149:718 | FHP | lo | 201299/1000000 | 95013357/472000000 | 2098 | 149:3, 149:708, 149:34, 149:8, 149:42, 149:682, 149:687 |
| 149:719 | HPQ | lo | 5953/40000 | 7024558533/47200000000 | 2104 | 149:3, 149:708, 149:34, 149:8, 149:639, 149:684, 149:172 |
| 149:720 | HPR | lo | 20087/100000 | 47405541/236000000 | 2105 | 149:3, 149:708, 149:34, 149:8, 149:56, 149:685, 149:689 |
| 149:721 | HPS | lo | 203537/1000000 | 96069723/472000000 | 2106 | 149:3, 149:708, 149:34, 149:8, 149:307, 149:686, 149:176 |
| 149:722 | CEP | lo | 163093/1000000 | 19132983/117312800 | 2127 | 149:5, 149:98, 149:697, 149:8, 149:671, 149:70, 149:122 |
| 149:724 | CPR | lo | 49477/250000 | 7255372679/36660250000 | 2132 | 149:5, 149:98, 149:697, 149:8, 149:674, 149:693, 149:268 |
| 149:730 | FPQ | hi | 404513/1000000 | 190929931/472000000 | 2298 | 149:17, 149:722, 149:34, 149:22, 149:313, 149:647, 149:164 |
| 149:731 | EPQ | lo | 23263/250000 | 41698503/448116500 | 2645 | 149:75, 149:144, 149:106, 149:76, 149:709, 149:128, 149:172 |
| 149:733 | APR | hi | 495179/1000000 | 567292755599/1145632812500 | 2748 | 149:97, 149:718, 149:106, 149:98, 149:13, 149:716, 149:56 |
| 149:736 | AHQ | lo | 26311/200000 | 9572895573/72766736000 | 2938 | 149:123, 149:164, 149:138, 149:128, 149:20, 149:696, 149:42 |
| 149:737 | BPQ | lo | 46921/500000 | 3414308349/36383368000 | 2947 | 149:123, 149:164, 149:138, 149:128, 149:76, 149:708, 149:98 |
| 149:744 | CFQ | hi | 375133/1000000 | 112148533432731611/298957362429687500 | 3026 | 149:161, 149:656, 149:172, 149:164, 149:123, 149:695 |
| 149:751 | AFQ | lo | 95023/500000 | 1071196319/5636500000 | 3205 | 149:287, 149:220, 149:184, 149:731, 149:676, 149:697, 149:716 |
| 149:753 | FHQ | lo | 32493/200000 | 19778217/121738250 | 3262 | 149:183, 149:222, 149:186, 149:731, 149:687, 149:718, 149:196 |
| 149:761 | BPS | lo | 48957/500000 | 13735772051/140282807000 | 3326 | 149:205, 149:226, 149:208, 149:206, 149:98, 149:737, 149:710 |
| 149:768 | ACE | lo | 349093/1000000 | 349093/1000000 | 3377 | 149:34, 149:22, 149:722 |
| 149:769 | ACF | lo | 204527/500000 | 204527/500000 | 3382 | 149:697, 149:22, 149:706 |
| 149:771 | ACR | lo | 222949/500000 | 222949/500000 | 3391 | 149:22, 149:699, 149:724 |
| 149:773 | AEF | lo | 188023/500000 | 188023/500000 | 3395 | 149:751, 149:36, 149:164 |
| 149:779 | BFH | lo | 387299/1000000 | 387299/1000000 | 3455 | 149:106, 149:98, 149:718 |
| 149:781 | BHQ | lo | 335667/1000000 | 335667/1000000 | 3463 | 149:106, 149:737, 149:719 |
| 149:782 | BHR | lo | 408269/1000000 | 408269/1000000 | 3464 | 149:106, 149:710, 149:720 |
| 149:783 | BHS | lo | 394451/1000000 | 394451/1000000 | 3465 | 149:106, 149:761, 149:721 |
| 149:784 | EFH | lo | 69693/200000 | 69693/200000 | 3493 | 149:172, 149:164, 149:753 |
| 149:785 | EFP | lo | 3021/10000 | 3021/10000 | 3496 | 149:731, 149:164, 149:714 |
| 149:786 | EHR | lo | 325931/1000000 | 325931/1000000 | 3505 | 149:172, 149:184, 149:715 |
| 149:787 | EPR | lo | 69763/250000 | 69763/250000 | 3507 | 149:731, 149:184, 149:220 |
| 149:788 | EPS | lo | 69763/250000 | 69763/250000 | 3508 | 149:731, 149:186, 149:222 |
| 149:789 | FPR | lo | 2923/10000 | 2923/10000 | 3518 | 149:208, 149:713, 149:224 |
| 149:790 | BCR | lo | 106181/1000000 | 25058757/236000000 | 55 | 149:0, 149:130, 149:771, 149:70, 149:17 |
| 149:791 | CEH | lo | 38481/200000 | 32606766249/169468598600 | 262 | 149:768, 149:784, 149:696, 149:122, 149:31 |
| 149:792 | CFH | lo | 99421/500000 | 16848800211/84734299300 | 263 | 149:769, 149:784, 149:42, 149:122, 149:31 |
| 149:793 | AEH | lo | 3709/25000 | 7194712500/48494752141 | 264 | 149:20, 149:784, 149:42, 149:791, 149:135 |
| 149:794 | AFP | lo | 154691/1000000 | 730143/4720000 | 265 | 149:769, 149:34, 149:22, 149:773, 149:17 |
| 149:796 | APR | lo | 31019/200000 | 25203/162500 | 313 | 149:22, 149:787, 149:34, 149:724, 149:127 |
| 149:802 | CFP | lo | 20203/125000 | 43262949/267676000 | 543 | 149:76, 149:785, 149:98, 149:722, 149:89 |
| 149:804 | BEP | lo | 98339/1000000 | 19695633/200282000 | 673 | 149:98, 149:712, 149:106, 149:785, 149:231 |
| 149:805 | BEQ | lo | 23381/250000 | 39866031/426265000 | 678 | 149:100, 149:172, 149:781, 149:164, 149:236 |
| 149:806 | BPR | lo | 229/2000 | 4586481/40056400 | 752 | 149:98, 149:720, 149:106, 149:789, 149:231 |
| 149:808 | EHP | lo | 121519/1000000 | 59147295941/486732000000 | 839 | 149:722, 149:721, 149:144, 149:788, 149:356 |
| 149:809 | FPS | lo | 53169/500000 | 276396/2599205 | 933 | 149:785, 149:208, 149:168, 149:789, 149:167 |
| 149:810 | FPQ | lo | 23217/200000 | 943857/8130700 | 964 | 149:753, 149:220, 149:204, 149:719, 149:324 |
| 149:811 | HQR | lo | 139999/1000000 | 2831571/20225650 | 964 | 149:753, 149:220, 149:204, 149:719, 149:730 |
| 149:812 | AFR | lo | 150813/1000000 | 1542820783/10230000000 | 1835 | 149:789, 149:733 |
| 149:814 | FHP | lo | 100661/500000 | 23756013/118000000 | 2098 | 149:3, 149:804, 149:34, 149:8, 149:42, 149:779, 149:784 |
| 149:815 | HPQ | lo | 74423/500000 | 14051098229/94400000000 | 2104 | 149:3, 149:804, 149:34, 149:8, 149:736, 149:781, 149:172 |
| 149:816 | HPR | lo | 201013/1000000 | 474393/2360000 | 2105 | 149:3, 149:804, 149:34, 149:8, 149:56, 149:782, 149:786 |
| 149:817 | HPS | lo | 203581/1000000 | 96090369/472000000 | 2106 | 149:3, 149:804, 149:34, 149:8, 149:307, 149:783, 149:176 |
| 149:818 | CEP | lo | 81547/500000 | 95665101/586564000 | 2127 | 149:5, 149:98, 149:794, 149:8, 149:768, 149:70, 149:122 |
| 149:820 | CPR | lo | 12379/62500 | 29044304771/146641000000 | 2132 | 149:5, 149:98, 149:794, 149:8, 149:771, 149:790, 149:268 |
| 149:826 | FPQ | hi | 50561/125000 | 190918027/472000000 | 2298 | 149:17, 149:818, 149:34, 149:22, 149:313, 149:744, 149:164 |
| 149:827 | EPQ | lo | 46527/500000 | 83398401/896233000 | 2645 | 149:75, 149:144, 149:106, 149:76, 149:805, 149:128, 149:172 |
| 149:829 | APR | hi | 49517/100000 | 412569019697/833187500000 | 2748 | 149:97, 149:814, 149:106, 149:98, 149:13, 149:812, 149:56 |
| 149:832 | AHQ | lo | 65779/500000 | 42737127/324851500 | 2938 | 149:123, 149:164, 149:138, 149:128, 149:20, 149:793, 149:42 |
| 149:833 | BPQ | lo | 23463/250000 | 6829372323/72766736000 | 2947 | 149:123, 149:164, 149:138, 149:128, 149:76, 149:804, 149:98 |
| 149:840 | CFQ | hi | 75017/200000 | 16019169117622373/42708194632812500 | 3026 | 149:161, 149:753, 149:172, 149:164, 149:123, 149:792 |
| 149:847 | AFQ | lo | 19019/100000 | 4288035023/22546000000 | 3205 | 149:287, 149:220, 149:184, 149:827, 149:773, 149:794, 149:812 |
| 149:849 | FHQ | lo | 162477/1000000 | 3955941/24347650 | 3262 | 149:183, 149:222, 149:186, 149:827, 149:784, 149:814, 149:196 |
| 149:857 | BPS | lo | 97939/1000000 | 13739213051/140282807000 | 3326 | 149:205, 149:226, 149:208, 149:206, 149:98, 149:833, 149:806 |
| 149:864 | ACE | lo | 174547/500000 | 174547/500000 | 3377 | 149:34, 149:22, 149:818 |
| 149:865 | ACF | lo | 81863/200000 | 81863/200000 | 3382 | 149:794, 149:22, 149:802 |
| 149:867 | ACR | lo | 446159/1000000 | 446159/1000000 | 3391 | 149:22, 149:796, 149:820 |
| 149:869 | AEF | lo | 37619/100000 | 37619/100000 | 3395 | 149:847, 149:36, 149:164 |
| 149:875 | BFH | lo | 193661/500000 | 193661/500000 | 3455 | 149:106, 149:98, 149:814 |
| 149:877 | BHQ | lo | 167849/500000 | 167849/500000 | 3463 | 149:106, 149:833, 149:815 |
| 149:878 | BHR | lo | 408513/1000000 | 408513/1000000 | 3464 | 149:106, 149:806, 149:816 |
| 149:879 | BHS | lo | 9863/25000 | 9863/25000 | 3465 | 149:106, 149:857, 149:817 |
| 149:880 | EFH | lo | 348477/1000000 | 348477/1000000 | 3493 | 149:172, 149:164, 149:849 |
| 149:881 | EFP | lo | 302139/1000000 | 302139/1000000 | 3496 | 149:827, 149:164, 149:810 |
| 149:882 | EHR | lo | 325999/1000000 | 325999/1000000 | 3505 | 149:172, 149:184, 149:811 |
| 149:883 | EPR | lo | 139527/500000 | 139527/500000 | 3507 | 149:827, 149:184, 149:220 |
| 149:884 | EPS | lo | 139527/500000 | 139527/500000 | 3508 | 149:827, 149:186, 149:222 |
| 149:885 | FPR | lo | 146169/500000 | 146169/500000 | 3518 | 149:208, 149:809, 149:224 |
| 149:886 | BCR | lo | 13279/125000 | 50141787/472000000 | 55 | 149:0, 149:130, 149:867, 149:70, 149:17 |
| 149:887 | CEH | lo | 192417/1000000 | 11645976417/60524499500 | 262 | 149:864, 149:880, 149:793, 149:122, 149:31 |
| 149:888 | CFH | lo | 39791/200000 | 33716772651/169468598600 | 263 | 149:865, 149:880, 149:42, 149:122, 149:31 |
| 149:889 | AEH | lo | 74183/500000 | 7194991500/48494752141 | 264 | 149:20, 149:880, 149:42, 149:887, 149:135 |
| 149:890 | AFP | lo | 154771/1000000 | 14610393/94400000 | 265 | 149:865, 149:34, 149:22, 149:869, 149:17 |
| 149:892 | APR | lo | 77573/500000 | 22185987/143000000 | 313 | 149:22, 149:883, 149:34, 149:820, 149:127 |
| 149:898 | CFP | lo | 80819/500000 | 43266669/267676000 | 543 | 149:76, 149:881, 149:98, 149:818, 149:89 |
| 149:900 | BEP | lo | 98361/1000000 | 19700097/200282000 | 673 | 149:98, 149:808, 149:106, 149:881, 149:231 |
| 149:902 | BPR | lo | 57271/500000 | 45881643/400564000 | 752 | 149:98, 149:816, 149:106, 149:885, 149:231 |
| 149:904 | EHP | lo | 60767/500000 | 29577430807/243366000000 | 839 | 149:818, 149:817, 149:144, 149:884, 149:356 |
| 149:905 | FPS | lo | 6647/62500 | 55286361/519841000 | 933 | 149:881, 149:208, 149:168, 149:885, 149:167 |
| 149:906 | FPQ | lo | 116099/1000000 | 3775893/32522800 | 964 | 149:849, 149:220, 149:204, 149:815, 149:324 |
| 149:907 | HQR | lo | 17503/125000 | 365409/2609600 | 964 | 149:849, 149:220, 149:204, 149:815, 149:826 |
| 149:908 | AFR | lo | 30167/200000 | 2571746109/17050000000 | 1835 | 149:885, 149:829 |
| 149:910 | FHP | lo | 201329/1000000 | 95027307/472000000 | 2098 | 149:3, 149:900, 149:34, 149:8, 149:42, 149:875, 149:880 |
| 149:911 | HPQ | lo | 74427/500000 | 35129758719/236000000000 | 2104 | 149:3, 149:900, 149:34, 149:8, 149:832, 149:877, 149:172 |
| 149:912 | HPR | lo | 8043/40000 | 2965863/14750000 | 2105 | 149:3, 149:900, 149:34, 149:8, 149:56, 149:878, 149:882 |
| 149:913 | HPS | lo | 101797/500000 | 48048393/236000000 | 2106 | 149:3, 149:900, 149:34, 149:8, 149:307, 149:879, 149:176 |
| 149:915 | CPR | lo | 9907/50000 | 660351823/3332750000 | 2132 | 149:5, 149:98, 149:890, 149:8, 149:867, 149:886, 149:268 |
| 149:919 | FPQ | hi | 202239/500000 | 190913563/472000000 | 2298 | 149:17, 149:818, 149:34, 149:22, 149:313, 149:840, 149:164 |
| 149:921 | APR | hi | 247583/500000 | 412566113447/833187500000 | 2748 | 149:97, 149:910, 149:106, 149:98, 149:13, 149:908, 149:56 |
| 149:924 | AHQ | lo | 131559/1000000 | 4786593099/36383368000 | 2938 | 149:123, 149:164, 149:138, 149:128, 149:20, 149:889, 149:42 |
| 149:925 | BPQ | lo | 2933/31250 | 6829628073/72766736000 | 2947 | 149:123, 149:164, 149:138, 149:128, 149:76, 149:900, 149:98 |
| 149:932 | CFQ | hi | 93767/250000 | 112129052475700361/298957362429687500 | 3026 | 149:161, 149:849, 149:172, 149:164, 149:123, 149:888 |
| 149:939 | AFQ | lo | 190243/1000000 | 857845707/4509200000 | 3205 | 149:287, 149:220, 149:184, 149:827, 149:869, 149:890, 149:908 |
| 149:940 | FHQ | lo | 2031/12500 | 79120587/486953000 | 3262 | 149:183, 149:222, 149:186, 149:827, 149:880, 149:910, 149:196 |
| 149:948 | BPS | lo | 97949/1000000 | 13740639051/140282807000 | 3326 | 149:205, 149:226, 149:208, 149:206, 149:98, 149:925, 149:902 |
| 149:954 | ACF | lo | 409409/1000000 | 409409/1000000 | 3382 | 149:890, 149:22, 149:898 |
| 149:956 | ACR | lo | 223143/500000 | 223143/500000 | 3391 | 149:22, 149:892, 149:915 |
| 149:958 | AEF | lo | 376243/1000000 | 376243/1000000 | 3395 | 149:939, 149:36, 149:164 |
| 149:964 | BFH | lo | 387329/1000000 | 387329/1000000 | 3455 | 149:106, 149:98, 149:910 |
| 149:966 | BHQ | lo | 33571/100000 | 33571/100000 | 3463 | 149:106, 149:925, 149:911 |
| 149:967 | BHR | lo | 408617/1000000 | 408617/1000000 | 3464 | 149:106, 149:902, 149:912 |
| 149:968 | BHS | lo | 394543/1000000 | 394543/1000000 | 3465 | 149:106, 149:948, 149:913 |
| 149:969 | EFH | lo | 1089/3125 | 1089/3125 | 3493 | 149:172, 149:164, 149:940 |
| 149:970 | EFP | lo | 302153/1000000 | 302153/1000000 | 3496 | 149:827, 149:164, 149:906 |
| 149:971 | EHR | lo | 40753/125000 | 40753/125000 | 3505 | 149:172, 149:184, 149:907 |
| 149:972 | FPR | lo | 4568/15625 | 4568/15625 | 3518 | 149:208, 149:905, 149:224 |
| 149:973 | BCR | lo | 106257/1000000 | 25076799/236000000 | 55 | 149:0, 149:130, 149:956, 149:70, 149:17 |
| 149:974 | CEH | lo | 9621/50000 | 4076159778/21183574825 | 262 | 149:864, 149:969, 149:889, 149:122, 149:31 |
| 149:975 | CFH | lo | 39799/200000 | 4215446208/21183574825 | 263 | 149:954, 149:969, 149:42, 149:122, 149:31 |
| 149:976 | AEH | lo | 148367/1000000 | 7195061250/48494752141 | 264 | 149:20, 149:969, 149:42, 149:974, 149:135 |
| 149:977 | AFP | lo | 387/2500 | 18266409/118000000 | 265 | 149:954, 149:34, 149:22, 149:958, 149:17 |
| 149:979 | APR | lo | 155171/1000000 | 22189521/143000000 | 313 | 149:22, 149:883, 149:34, 149:915, 149:127 |
| 149:985 | CFP | lo | 161643/1000000 | 43267971/267676000 | 543 | 149:76, 149:970, 149:98, 149:818, 149:89 |
| 149:987 | BEP | lo | 1537/15625 | 39402891/400564000 | 673 | 149:98, 149:904, 149:106, 149:970, 149:231 |
| 149:988 | BEQ | lo | 93533/1000000 | 3987003/42626500 | 678 | 149:100, 149:172, 149:966, 149:164, 149:236 |
| 149:989 | BPR | lo | 358/3125 | 45888711/400564000 | 752 | 149:98, 149:912, 149:106, 149:972, 149:231 |
| 149:991 | EHP | lo | 121539/1000000 | 314664797/2589000000 | 839 | 149:818, 149:913, 149:144, 149:884, 149:356 |
| 149:992 | FPS | lo | 106357/1000000 | 11057793/103968200 | 933 | 149:970, 149:208, 149:168, 149:972, 149:167 |
| 149:993 | FPQ | lo | 23221/200000 | 9440151/81307000 | 964 | 149:940, 149:220, 149:204, 149:911, 149:324 |
| 149:994 | HQR | lo | 70017/500000 | 3146717/22471000 | 964 | 149:940, 149:220, 149:204, 149:911, 149:919 |
| 149:995 | AFR | lo | 150843/1000000 | 301393214/1998046875 | 1835 | 149:972, 149:921 |
| 149:996 | FHP | lo | 201331/1000000 | 95028237/472000000 | 2098 | 149:3, 149:987, 149:34, 149:8, 149:42, 149:964, 149:969 |
| 149:997 | HPQ | lo | 74429/500000 | 4391312607/29500000000 | 2104 | 149:3, 149:987, 149:34, 149:8, 149:924, 149:966, 149:172 |
| 149:998 | HPR | lo | 2011/10000 | 1608807/8000000 | 2105 | 149:3, 149:987, 149:34, 149:8, 149:56, 149:967, 149:971 |
| 149:999 | HPS | lo | 203599/1000000 | 3843957/18880000 | 2106 | 149:3, 149:987, 149:34, 149:8, 149:307, 149:968, 149:176 |
| 149:1001 | CPR | lo | 198177/1000000 | 2641903317/13331000000 | 2132 | 149:5, 149:98, 149:977, 149:8, 149:956, 149:973, 149:268 |
| 149:1004 | FPQ | hi | 16179/40000 | 95455991/236000000 | 2298 | 149:17, 149:818, 149:34, 149:22, 149:313, 149:932, 149:164 |
| 149:1005 | EPQ | lo | 18611/200000 | 3207663/34470500 | 2645 | 149:75, 149:144, 149:106, 149:76, 149:988, 149:128, 149:172 |
| 149:1007 | APR | hi | 99033/200000 | 4538215622917/9165062500000 | 2748 | 149:97, 149:996, 149:106, 149:98, 149:13, 149:995, 149:56 |
| 149:1009 | AHQ | lo | 3289/25000 | 1367599689/10395248000 | 2938 | 149:123, 149:164, 149:138, 149:128, 149:20, 149:976, 149:42 |
| 149:1010 | BPQ | lo | 93857/1000000 | 853713681/9095842000 | 2947 | 149:123, 149:164, 149:138, 149:128, 149:76, 149:987, 149:98 |
| 149:1017 | CFQ | hi | 375061/1000000 | 112127236069450361/298957362429687500 | 3026 | 149:161, 149:940, 149:172, 149:164, 149:123, 149:975 |
| 149:1024 | AFQ | lo | 95131/500000 | 4289664653/22546000000 | 3205 | 149:287, 149:220, 149:184, 149:1005, 149:958, 149:977, 149:995 |
| 149:1026 | FHQ | lo | 162481/1000000 | 19780263/121738250 | 3262 | 149:183, 149:222, 149:186, 149:1005, 149:969, 149:996, 149:196 |
| 149:1031 | BPS | lo | 97953/1000000 | 13741228051/140282807000 | 3326 | 149:205, 149:226, 149:208, 149:206, 149:98, 149:1010, 149:989 |
| 149:1037 | ACF | lo | 409443/1000000 | 409443/1000000 | 3382 | 149:977, 149:22, 149:985 |
| 149:1039 | ACR | lo | 111587/250000 | 111587/250000 | 3391 | 149:22, 149:979, 149:1001 |
| 149:1041 | AEF | lo | 188131/500000 | 188131/500000 | 3395 | 149:1024, 149:36, 149:164 |
| 149:1047 | BFH | lo | 387331/1000000 | 387331/1000000 | 3455 | 149:106, 149:98, 149:996 |
| 149:1049 | BHQ | lo | 67143/200000 | 67143/200000 | 3463 | 149:106, 149:1010, 149:997 |
| 149:1050 | BHR | lo | 20433/50000 | 20433/50000 | 3464 | 149:106, 149:989, 149:998 |
| 149:1051 | BHS | lo | 49319/125000 | 49319/125000 | 3465 | 149:106, 149:1031, 149:999 |
| 149:1052 | EFH | lo | 348481/1000000 | 348481/1000000 | 3493 | 149:172, 149:164, 149:1026 |
| 149:1053 | EFP | lo | 3777/12500 | 3777/12500 | 3496 | 149:1005, 149:164, 149:993 |
| 149:1054 | EHR | lo | 163017/500000 | 163017/500000 | 3505 | 149:172, 149:184, 149:994 |
| 149:1055 | EPR | lo | 55811/200000 | 55811/200000 | 3507 | 149:1005, 149:184, 149:220 |
| 149:1056 | EPS | lo | 55811/200000 | 55811/200000 | 3508 | 149:1005, 149:186, 149:222 |
| 149:1057 | FPR | lo | 292357/1000000 | 292357/1000000 | 3518 | 149:208, 149:992, 149:224 |
| 149:1058 | BCR | lo | 106269/1000000 | 12539841/118000000 | 55 | 149:0, 149:130, 149:1039, 149:70, 149:17 |
| 149:1059 | CEH | lo | 192421/1000000 | 81523509607/423671496500 | 262 | 149:864, 149:1052, 149:976, 149:122, 149:31 |
| 149:1060 | CFH | lo | 19901/100000 | 168630106083/847342993000 | 263 | 149:1037, 149:1052, 149:42, 149:122, 149:31 |
| 149:1061 | AEH | lo | 9273/62500 | 7195084500/48494752141 | 264 | 149:20, 149:1052, 149:42, 149:1059, 149:135 |
| 149:1062 | AFP | lo | 15481/100000 | 14614113/94400000 | 265 | 149:1037, 149:34, 149:22, 149:1041, 149:17 |
| 149:1064 | APR | lo | 155183/1000000 | 2773911/17875000 | 313 | 149:22, 149:1055, 149:34, 149:1001, 149:127 |
| 149:1069 | CFP | lo | 32329/200000 | 21634311/133838000 | 543 | 149:76, 149:1053, 149:98, 149:818, 149:89 |
| 149:1071 | BEP | lo | 98371/1000000 | 39404007/400564000 | 673 | 149:98, 149:991, 149:106, 149:1053, 149:231 |
| 149:1073 | BPR | lo | 114567/1000000 | 45891501/400564000 | 752 | 149:98, 149:998, 149:106, 149:1057, 149:231 |
| 149:1074 | EHP | lo | 6077/50000 | 29578945153/243366000000 | 839 | 149:818, 149:999, 149:144, 149:1056, 149:356 |
| 149:1075 | FPS | lo | 106359/1000000 | 1128369/10609000 | 933 | 149:1053, 149:208, 149:168, 149:1057, 149:167 |
| 149:1076 | FPQ | lo | 116107/1000000 | 3776141/32522800 | 964 | 149:1026, 149:220, 149:204, 149:997, 149:324 |
| 149:1077 | HQR | lo | 70019/500000 | 3776141/26965000 | 964 | 149:1026, 149:220, 149:204, 149:997, 149:1004 |
| 149:1078 | AFR | lo | 75423/500000 | 935250043/6200000000 | 1835 | 149:1057, 149:1007 |
| 149:1080 | HPQ | lo | 148859/1000000 | 1756542019/11800000000 | 2104 | 149:3, 149:1071, 149:34, 149:8, 149:1009, 149:1049, 149:172 |
| 149:1081 | HPR | lo | 201111/1000000 | 47462271/236000000 | 2105 | 149:3, 149:1071, 149:34, 149:8, 149:56, 149:1050, 149:1054 |
| 149:1082 | HPS | lo | 203601/1000000 | 48049881/236000000 | 2106 | 149:3, 149:1071, 149:34, 149:8, 149:307, 149:1051, 149:176 |
| 149:1084 | CPR | lo | 39639/200000 | 29063579679/146641000000 | 2132 | 149:5, 149:98, 149:1062, 149:8, 149:1039, 149:1058, 149:268 |
| 149:1088 | FPQ | hi | 202237/500000 | 190911331/472000000 | 2298 | 149:17, 149:818, 149:34, 149:22, 149:313, 149:1017, 149:164 |
| 149:1091 | BPQ | lo | 46929/500000 | 6829744323/72766736000 | 2947 | 149:123, 149:164, 149:138, 149:128, 149:76, 149:1071, 149:98 |
| 149:1096 | CFQ | hi | 375059/1000000 | 16018079273872373/42708194632812500 | 3026 | 149:161, 149:1026, 149:172, 149:164, 149:123, 149:1060 |
| 149:1102 | AFQ | lo | 190269/1000000 | 536227677/2818250000 | 3205 | 149:287, 149:220, 149:184, 149:1005, 149:1041, 149:1062, 149:1078 |
| 149:1103 | FHQ | lo | 81241/500000 | 15824229/97390600 | 3262 | 149:183, 149:222, 149:186, 149:1005, 149:1052, 149:996, 149:196 |
| 149:1114 | ACF | lo | 81891/200000 | 81891/200000 | 3382 | 149:1062, 149:22, 149:1069 |
| 149:1116 | ACR | lo | 223189/500000 | 223189/500000 | 3391 | 149:22, 149:1064, 149:1084 |
| 149:1118 | AEF | lo | 376269/1000000 | 376269/1000000 | 3395 | 149:1102, 149:36, 149:164 |
| 149:1124 | BHQ | lo | 335717/1000000 | 335717/1000000 | 3463 | 149:106, 149:1091, 149:1080 |
| 149:1125 | BHR | lo | 204339/500000 | 204339/500000 | 3464 | 149:106, 149:1073, 149:1081 |
| 149:1127 | EFH | lo | 174241/500000 | 174241/500000 | 3493 | 149:172, 149:164, 149:1103 |
| 149:1128 | EFP | lo | 151081/500000 | 151081/500000 | 3496 | 149:1005, 149:164, 149:1076 |
| 149:1129 | EHR | lo | 163019/500000 | 163019/500000 | 3505 | 149:172, 149:184, 149:1077 |
| 149:1130 | FPR | lo | 292359/1000000 | 292359/1000000 | 3518 | 149:208, 149:1075, 149:224 |
| 149:1131 | BCR | lo | 4251/40000 | 425103/4000000 | 55 | 149:0, 149:130, 149:1116, 149:70, 149:17 |
| 149:1134 | AFP | lo | 77407/500000 | 18268083/118000000 | 265 | 149:1114, 149:34, 149:22, 149:1118, 149:17 |
| 149:1136 | APR | lo | 155189/1000000 | 177537/1144000 | 313 | 149:22, 149:1055, 149:34, 149:1084, 149:127 |
| 149:1140 | CFP | lo | 80823/500000 | 5408601/33459500 | 543 | 149:76, 149:1128, 149:98, 149:818, 149:89 |
| 149:1142 | BEP | lo | 24593/250000 | 19702143/200282000 | 673 | 149:98, 149:1074, 149:106, 149:1128, 149:231 |
| 149:1143 | BPR | lo | 11457/100000 | 4589271/40056400 | 752 | 149:98, 149:1081, 149:106, 149:1130, 149:231 |
| 149:1144 | EHP | lo | 121541/1000000 | 9859702749/81122000000 | 839 | 149:818, 149:1082, 149:144, 149:1056, 149:356 |
| 149:1145 | FPS | lo | 2659/25000 | 55290453/519841000 | 933 | 149:1128, 149:208, 149:168, 149:1130, 149:167 |
| 149:1146 | FPQ | lo | 29027/250000 | 18880829/162614000 | 964 | 149:1103, 149:220, 149:204, 149:1080, 149:324 |
| 149:1147 | HQR | lo | 140039/1000000 | 56642487/404474000 | 964 | 149:1103, 149:220, 149:204, 149:1080, 149:1088 |
| 149:1148 | AFR | lo | 150847/1000000 | 935256441/6200000000 | 1835 | 149:1130, 149:1007 |
| 149:1149 | HPR | lo | 40223/200000 | 23731647/118000000 | 2105 | 149:3, 149:1142, 149:34, 149:8, 149:56, 149:1125, 149:1129 |
| 149:1151 | CPR | lo | 49551/250000 | 1162595121/5865640000 | 2132 | 149:5, 149:98, 149:1134, 149:8, 149:1116, 149:1131, 149:268 |
| 149:1153 | FPQ | hi | 404473/1000000 | 38182229/94400000 | 2298 | 149:17, 149:818, 149:34, 149:22, 149:313, 149:1096, 149:164 |
| 149:1161 | AFQ | lo | 2973/15625 | 4289878837/22546000000 | 3205 | 149:287, 149:220, 149:184, 149:1005, 149:1118, 149:1134, 149:1148 |
| 149:1164 | BPS | lo | 24489/250000 | 1963081293/20040401000 | 3326 | 149:205, 149:226, 149:208, 149:206, 149:98, 149:1091, 149:1143 |
| 149:1170 | ACF | lo | 20473/50000 | 20473/50000 | 3382 | 149:1134, 149:22, 149:1140 |
| 149:1172 | ACR | lo | 446393/1000000 | 446393/1000000 | 3391 | 149:22, 149:1136, 149:1151 |
| 149:1173 | AEF | lo | 23517/62500 | 23517/62500 | 3395 | 149:1161, 149:36, 149:164 |
| 149:1176 | BEH | lo | 312913/1000000 | 312913/1000000 | 3447 | 149:106, 149:1142, 149:1144 |
| 149:1178 | BHR | lo | 81737/200000 | 81737/200000 | 3464 | 149:106, 149:1143, 149:1149 |
| 149:1179 | BHS | lo | 394557/1000000 | 394557/1000000 | 3465 | 149:106, 149:1164, 149:1082 |
| 149:1180 | EFP | lo | 302163/1000000 | 302163/1000000 | 3496 | 149:1005, 149:164, 149:1146 |
| 149:1181 | EHR | lo | 326039/1000000 | 326039/1000000 | 3505 | 149:172, 149:184, 149:1147 |
| 149:1182 | FPR | lo | 7309/25000 | 7309/25000 | 3518 | 149:208, 149:1145, 149:224 |
| 149:1183 | BCR | lo | 53139/500000 | 50163549/472000000 | 55 | 149:0, 149:130, 149:1172, 149:70, 149:17 |
| 149:1185 | AFP | lo | 30963/200000 | 18268269/118000000 | 265 | 149:1170, 149:34, 149:22, 149:1173, 149:17 |
| 149:1187 | APR | lo | 19399/125000 | 44385087/286000000 | 313 | 149:22, 149:1055, 149:34, 149:1151, 149:127 |
| 149:1190 | BPR | lo | 114571/1000000 | 1835727/16022560 | 752 | 149:98, 149:1149, 149:106, 149:1182, 149:231 |
| 149:1191 | HQR | lo | 3501/25000 | 56642487/404473000 | 964 | 149:1103, 149:220, 149:204, 149:1080, 149:1153 |
| 149:1192 | AFR | lo | 2357/15625 | 23381491/155000000 | 1835 | 149:1182, 149:1007 |
| 149:1193 | HPR | lo | 201117/1000000 | 23731833/118000000 | 2105 | 149:3, 149:1142, 149:34, 149:8, 149:56, 149:1178, 149:1181 |
| 149:1194 | HPS | lo | 101801/500000 | 96100227/472000000 | 2106 | 149:3, 149:1142, 149:34, 149:8, 149:307, 149:1179, 149:176 |
| 149:1195 | CPR | lo | 3097/15625 | 14532763599/73320500000 | 2132 | 149:5, 149:98, 149:1185, 149:8, 149:1172, 149:1183, 149:268 |
| 149:1201 | AFQ | lo | 190273/1000000 | 4289909133/22546000000 | 3205 | 149:287, 149:220, 149:184, 149:1005, 149:1173, 149:1185, 149:1192 |
| 149:1206 | ACF | lo | 409461/1000000 | 409461/1000000 | 3382 | 149:1185, 149:22, 149:1140 |
| 149:1207 | ACR | lo | 279/625 | 279/625 | 3391 | 149:22, 149:1187, 149:1195 |
| 149:1208 | AEF | lo | 376273/1000000 | 376273/1000000 | 3395 | 149:1201, 149:36, 149:164 |
| 149:1212 | BHR | lo | 25543/62500 | 25543/62500 | 3464 | 149:106, 149:1190, 149:1193 |
| 149:1213 | BHS | lo | 197279/500000 | 197279/500000 | 3465 | 149:106, 149:1164, 149:1194 |
| 149:1214 | EHR | lo | 8151/25000 | 8151/25000 | 3505 | 149:172, 149:184, 149:1191 |
| 149:1215 | BCR | lo | 2657/25000 | 250821/2360000 | 55 | 149:0, 149:130, 149:1207, 149:70, 149:17 |
| 149:1217 | AFP | lo | 2419/15625 | 36536631/236000000 | 265 | 149:1206, 149:34, 149:22, 149:1208, 149:17 |
| 149:1220 | HPR | lo | 100559/500000 | 11865963/59000000 | 2105 | 149:3, 149:1142, 149:34, 149:8, 149:56, 149:1212, 149:1214 |
| 149:1221 | CPR | lo | 198211/1000000 | 2906589023/14664100000 | 2132 | 149:5, 149:98, 149:1217, 149:8, 149:1207, 149:1215, 149:268 |
| 149:1226 | ABF | lo | 21301/62500 | 21301/62500 | 3364 | 149:1217, 149:8, 149:98 |
| 149:1228 | ACF | lo | 204731/500000 | 204731/500000 | 3382 | 149:1217, 149:22, 149:1140 |
| 149:1232 | APR | lo | 77597/500000 | 22192869/143000000 | 313 | 149:22, 149:1055, 149:34, 149:1221, 149:127 |
| 149:1233 | BPR | lo | 28643/250000 | 22946727/200282000 | 752 | 149:98, 149:1220, 149:106, 149:1182, 149:231 |
| 149:1235 | ACR | lo | 89281/200000 | 89281/200000 | 3391 | 149:22, 149:1232, 149:1221 |
| 149:1237 | BER | hi | 10847/15625 | 10847/15625 | 3452 | 149:89, 149:1233, 149:287 |
| 149:1238 | BHR | lo | 40869/100000 | 40869/100000 | 3464 | 149:106, 149:1233, 149:1220 |
| 149:1239 | BCR | lo | 106281/1000000 | 10032933/94400000 | 55 | 149:0, 149:130, 149:1235, 149:70, 149:17 |
| 149:1240 | CPR | lo | 49553/250000 | 29066106621/146641000000 | 2132 | 149:5, 149:98, 149:1217, 149:8, 149:1235, 149:1239, 149:268 |
| 149:1243 | BES | hi | 639757/1000000 | 332571903369/519841000000 | 3099 | 149:167, 149:208, 149:188, 149:168, 149:85, 149:1237 |
| 149:1247 | APR | lo | 31039/200000 | 44385831/286000000 | 313 | 149:22, 149:1055, 149:34, 149:1240, 149:127 |
| 149:1250 | ACR | lo | 446407/1000000 | 446407/1000000 | 3391 | 149:22, 149:1247, 149:1240 |
| 149:1251 | CPR | lo | 198213/1000000 | 29066153121/146641000000 | 2132 | 149:5, 149:98, 149:1217, 149:8, 149:1250, 149:1239, 149:268 |
