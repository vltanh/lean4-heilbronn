# BRTT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 155

| Property | Value |
| --- | --- |
| Scope | root/ACP+/HBP+/AEP-/APQ-/BEP+/BFP-/BPR+/BPS+/BRS+/ARS- |
| Packet | forest:root/ACP+/HBP+/AEP-/APQ-/BEP+/BFP-/BPR+/BPS+/BRS+/ARS- |
| Index | 10 |
| Context | 54 |
| Box present | yes |
| Coarse version | 2 |
| Parent box | 154 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 63981/500000 | 267919/500000 | 63981/500000 | 267919/500000 |
| b | 26759/250000 | 349/1000 | 26759/250000 | 349/1000 |
| c | 543729/1000000 | 833809/1000000 | 543729/1000000 | 833809/1000000 |
| e | 430223/1000000 | 343779/500000 | 430223/1000000 | 343779/500000 |
| f | 26759/250000 | 102067/200000 | 26759/250000 | 102067/200000 |
| h | 650033/1000000 | 996827/1000000 | 650033/1000000 | 996827/1000000 |
| p | 308233/1000000 | 555687/1000000 | 308233/1000000 | 555687/1000000 |
| q | 110481/500000 | 45487/100000 | 110481/500000 | 45487/100000 |
| u | 763907/1000000 | 1/1 | 763907/1000000 | 1/1 |
| v | 63981/500000 | 180181/500000 | 63981/500000 | 180181/500000 |
| r | 596701/1000000 | 1/1 | 596701/1000000 | 1/1 |
| w | 205203/250000 | 1/1 | 205203/250000 | 1/1 |
| j | 216739/500000 | 808307/1000000 | 216739/500000 | 808307/1000000 |
| k | 164171/250000 | 895853/1000000 | 164171/250000 | 895853/1000000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 11 | AC_ABP_ABE_0 | brtt ["anchor-cap","ABP","ABE",0,[]] | `-93/1000 + 1/1 * e` |
| 19 | AC_ACH_ACH_0 | brtt ["anchor-cap","ACH","ACH",0,["P"]] | `-279/1000 + 1/1 * h + -1/1 * a` |
| 21 | AC_ACP_ACF_0 | brtt ["anchor-cap","ACP","ACF",0,[]] | `-93/1000 + 1/1 * c` |
| 26 | AC_AEF_AEF_0 | brtt ["anchor-cap","AEF","AEF",0,[]] | `907/1000 + -1/1 * a` |
| 51 | AC_BCP_BCH_0 | brtt ["anchor-cap","BCP","BCH",0,[]] | `-93/1000 + 1/1 * h` |
| 59 | AC_BEP_BEF_0 | brtt ["anchor-cap","BEP","BEF",0,[]] | `907/1000 + -1/1 * b` |
| 79 | AC_CEF_CEF_0 | brtt ["anchor-cap","CEF","CEF",0,[]] | `907/1000 + -1/1 * f` |
| 101 | AC_EFH_EFH_0 | brtt ["anchor-cap","EFH","EFH",0,[]] | `907/1000 + -1/1 * e` |
| 136 | ha | brtt ["contact-order","ha"] | `1/1 * h + -1/1 * a` |
| 137 | ea | brtt ["contact-order","ea"] | `1/1 * e + -1/1 * a` |
| 138 | he | brtt ["contact-order","he"] | `1/1 * h + -1/1 * e` |
| 139 | fb | brtt ["contact-order","fb"] | `1/1 * f + -1/1 * b` |
| 141 | lower-area | brtt ["endpoint-lower","135501/250000"] | `1/1 * c * h + -135501/250000` |
| 142 | lower-quad | brtt ["lower-quad","BRTT"] | `1/1 * c * h + -1/1 * a * b + -279/625` |
| 143 | upper-quad | brtt ["upper-quad","BRTT"] | `407/500 + -1/1 * c * h + 1/1 * f * h + 1/1 * c * e + -1/1 * e * f` |
| 144 | top-area | brtt ["top-hull","-"] | `721/1000 + -1/1 * f + -1/1 * e + 1/1 * e * f` |
| 145 | right-support | brtt ["right-support","BCQE",null,"93/250"] | `1/1 * e + -1/1 * b * e + -93/250` |
| 146 | top-right-budget | brtt ["top-right-budget","93/250"] | `-93/250 + -1/1 * b + 1/1 * f + 1/1 * e + -1/1 * e * f` |
| 147 | right-x | brtt ["right-clearance","Q","x"] | `1/1 * u + -1/1 * c + -93/1000` |
| 148 | right-y | brtt ["right-clearance","Q","y"] | `1/1 * e + -1/1 * v + -93/1000` |
| 149 | right-px | brtt ["right-clearance","Q","px"] | `1/1 * e * u + -1/1 * c * e + -93/1000` |
| 150 | right-py | brtt ["right-clearance","Q","py"] | `1/1 * e + -1/1 * v + -1/1 * c * e + 1/1 * c * v + -93/1000` |
| 151 | lower-sum | brtt ["lower-sum"] | `907/1000 + -1/1 * p + -1/1 * q` |
| 152 | central-budget | brtt ["central-budget","831163324043/1000000000000"] | `552163324043/1000000000000 * c * h + -738163324043/1000000000000 * b * h + -738163324043/1000000000000 * a * c + 924163324043/1000000000000 * a * b` |
| 153 | central-sum | brtt ["central-sum","831163324043/1000000000000"] | `738163324043/831163324043 + -1/1 * p + -1/1 * q` |
| 156 | central-x | brtt ["central-lower-x"] | `1/1 * c * h * p + -1/1 * b * h * p + -93/1000 * c + -93/1000 * b` |
| 157 | central-y | brtt ["central-lower-y"] | `1/1 * c * h * q + -1/1 * a * c * q + -93/1000 * h + -93/1000 * a` |
| 160 | WBARY_RS_2 | brtt ["weighted-barycentric","R","S",["1/1","1/1","1/1"],"127197587257/23250000000",2] | `127197587257/23250000000 * k + -1/1 + -80697587257/23250000000 * e + -1/1 * w` |
| 163 | SUP_ABC_BCE_ABE | brtt ["support-envelope",["quad","BCEA",["P"],"12/1"],"ABC","BCE","ABE","194716295387/500000000000"] | `194716295387/500000000000 * c * e + 363283704613/500000000000 * b * e + -279/250 * a * c + 279/250 * a` |
| 180 | SUP_BCS_ACS_ABC | brtt ["support-envelope",["quad","CSAB",["P"],"1457/250"],"BCS","ACS","ABC","651081772369/1000000000000"] | `109077772369/1000000000000 * c * k + -109077772369/1000000000000 * a * c + 651081772369/1000000000000 * a * j + 135501/250000 * b * k + -135501/250000 * a * b` |
| 221 | SUP_APR_ABR_BPR | brtt ["support-envelope",["quad","RABP",["S"],"1457/250"],"APR","ABR","BPR","286402394647/500000000000"] | `15400394647/500000000000 * b * w + -286402394647/500000000000 * a * b + 15400394647/500000000000 * a * r + 135501/250000 * a * p + 135501/250000 * b * q` |
| 223 | SUP_ABQ_BQR_ABR | brtt ["support-envelope",["quad","BQRA",["P","S"],"199/10"],"ABQ","BQR","ABR","32315984429/62500000000"] | `32315984429/62500000000 * u * w + 83352765571/62500000000 * b * w + -32315984429/62500000000 * v * r + -83352765571/62500000000 * b * v + -18507/10000 * a * u + 18507/10000 * a * r` |
| 316 | SUP_FHQ_AFH_AFQ | brtt ["support-envelope",["quad","FHAQ",["P"],"12/1"],"FHQ","AFH","AFQ","123279620757/200000000000"] | `-99920379243/200000000000 * f * h + 99920379243/200000000000 * a * f + 279/250 * h * u + -279/250 * a * u` |
| 336 | SUP_HQR_AHR_AQR | brtt ["support-envelope",["quad","RHAQ",["P","S"],"199/10"],"HQR","AHR","AQR","436019/500000"] | `-489331/500000 * h * r + 489331/500000 * a * r + 18507/10000 * h * u + -18507/10000 * a * u` |
| 378 | SUP_BCH_BCR_BHR | brtt ["support-envelope",["quad","BCRH",["P","S"],"12/1"],"BCH","BCR","BHR","724466949271/1000000000000"] | `724466949271/1000000000000 * c * w + 391533050729/1000000000000 * b * w + -279/250 * c * h + 279/250 * h * r` |
| 450 | SUP_BFQ_BQR_BFR | brtt ["support-envelope",["quad","BQRF",["P","S"],"12/1"],"BFQ","BQR","BFR","223241/250000"] | `223241/250000 * u * w + 55759/250000 * b * w + -223241/250000 * v * r + -55759/250000 * b * v + 279/250 * f * v + -279/250 * u + -279/250 * f * w + 279/250 * r` |
| 463 | SUP_BQR_HQR_BHQ | brtt ["support-envelope",["quad","QRHB",["P","S"],"12/1"],"BQR","HQR","BHQ","83030548727/100000000000"] | `-28569451273/100000000000 * u * w + 28569451273/100000000000 * h * u + 28569451273/100000000000 * v * r + 83030548727/100000000000 * h * r + 279/250 * b * w + -279/250 * b * h` |
| 543 | SUP_ABH_AEH_ABE | brtt ["support-envelope",["pentagon","ABCEH"],"ABH","AEH","ABE","60646777/200000000"] | `60646777/200000000 * h + 143953223/200000000 * a + -1023/1000 * b * h + 1023/1000 * b * e` |
| 548 | SUP_ABC_ABE_BCE | brtt ["support-envelope",["pentagon","BCQEA"],"ABC","ABE","BCE","194716295387/500000000000"] | `-316783704613/500000000000 * b * e + 316783704613/500000000000 * a * b + 194716295387/500000000000 * a + -1023/1000 * a * c + 1023/1000 * c * e` |
| 560 | SUP_ABH_AFH_ABF | brtt ["support-envelope",["pentagon","ABCFH"],"ABH","AFH","ABF","60646777/200000000"] | `60646777/200000000 * f * h + 143953223/200000000 * a * f + -1023/1000 * b * h + 1023/1000 * b` |
| 623 | SUP_BFP_ABP_AFP | brtt ["support-envelope",["pentagon","PFHAB"],"BFP","ABP","AFP","448651/1000000"] | `-574349/1000000 * b * q + -448651/1000000 * a * b + -574349/1000000 * a * p + 1023/1000 * b + 1023/1000 * a * f` |
| 624 | SUP_FHP_BFP_BFH | brtt ["support-envelope",["pentagon","FHABP"],"FHP","BFP","BFH","206721030557/500000000000"] | `304778969443/500000000000 * f * q + 206721030557/500000000000 * b * q + -304778969443/500000000000 * p + 304778969443/500000000000 * b + 1023/1000 * h * p + -1023/1000 * b * h` |
| 628 | SUP_AFH_FHQ_AHQ | brtt ["support-envelope",["pentagon","HABQF"],"AFH","FHQ","AHQ","17736488791/40000000000"] | `-17736488791/40000000000 * f * v + 23183511209/40000000000 * h * u + -23183511209/40000000000 * f * h + 17736488791/40000000000 * u + 1023/1000 * a * f + -1023/1000 * a * u` |
| 632 | SUP_AFH_FHR_AHR | brtt ["support-envelope",["pentagon","HABRF"],"AFH","FHR","AHR","17736488791/40000000000"] | `-17736488791/40000000000 * f * w + 23183511209/40000000000 * h * r + -23183511209/40000000000 * f * h + 17736488791/40000000000 * r + 1023/1000 * a * f + -1023/1000 * a * r` |
| 710 | SUP_EFR_AER_AFR | brtt ["support-envelope",["pentagon","RFHAE"],"EFR","AER","AFR","127197587257/250000000000"] | `-128552412743/250000000000 * w + -127197587257/250000000000 * a + 128552412743/250000000000 * e * r + -128552412743/250000000000 * a * r + -1023/1000 * e * f + 1023/1000 + 1023/1000 * a * f` |
| 713 | SUP_EFS_AES_AFS | brtt ["support-envelope",["pentagon","SFHAE"],"EFS","AES","AFS","306568564859/1000000000000"] | `-716431435141/1000000000000 * k + -306568564859/1000000000000 * a + 716431435141/1000000000000 * e * j + -716431435141/1000000000000 * a * j + -1023/1000 * e * f + 1023/1000 + 1023/1000 * a * f` |
| 751 | SUP_FRS_ARS_AFR | brtt ["support-envelope",["pentagon","RFHAS"],"FRS","ARS","AFR","19160551789/62500000000"] | `44776948211/62500000000 * r * k + -44776948211/62500000000 * a * r + -44776948211/62500000000 * w * j + -19160551789/62500000000 * a * j + -1023/1000 * f * k + 1023/1000 * j + 1023/1000 * a * f` |
| 760 | SUP_BCE_BCF_CEF | brtt ["support-envelope",["pentagon","CERFB"],"BCE","BCF","CEF","249849295167/500000000000"] | `-261650704833/500000000000 * c + -249849295167/500000000000 * b + 1023/1000 * b * e + 1023/1000 + -1023/1000 * e * f` |
| 794 | SUP_QRS_CQR_CRS | brtt ["support-envelope",["pentagon","RSBCQ"],"QRS","CQR","CRS","123507177959/250000000000"] | `-132242822041/250000000000 * u * w + 132242822041/250000000000 * c * w + 132242822041/250000000000 * v * r + 123507177959/250000000000 * c * v + 1023/1000 * u * k + -1023/1000 * v * j + -1023/1000 * c * k` |
| 820 | SUP_CFH_EFH_CEH | brtt ["support-envelope",["pentagon","HCQEF"],"CFH","EFH","CEH","311770112679/500000000000"] | `-199729887321/500000000000 * f * h + -311770112679/500000000000 * e * f + 199729887321/500000000000 * h + 311770112679/500000000000 + -1023/1000 * c + 1023/1000 * c * e` |
| 838 | SUP_CEQ_CFQ_EFQ | brtt ["support-envelope",["pentagon","QERFC"],"CEQ","CFQ","EFQ","63831856629/250000000000"] | `191918143371/250000000000 * f * v + -191918143371/250000000000 * c * v + -191918143371/250000000000 * u + -63831856629/250000000000 * c + 1023/1000 * c * e + -1023/1000 * e * f + 1023/1000` |
| 841 | SUP_CFS_EFS_CEF | brtt ["support-envelope",["pentagon","FCQES"],"CFS","EFS","CEF","655790734129/1000000000000"] | `367209265871/1000000000000 * f * k + -367209265871/1000000000000 * e * f + 655790734129/1000000000000 * k + -367209265871/1000000000000 * j + 367209265871/1000000000000 + -655790734129/1000000000000 * e * j + -1023/1000 * c * k + 1023/1000 * c * e` |
| 895 | SUP_EPQ_FPQ_EFQ | brtt ["support-envelope",["pentagon","QERFP"],"EPQ","FPQ","EFQ","96777511533/250000000000"] | `-158972488467/250000000000 * p * v + -96777511533/250000000000 * p + 158972488467/250000000000 * f * v + 158972488467/250000000000 * q * u + 96777511533/250000000000 * f * q + -158972488467/250000000000 * u + 1023/1000 * e * p + -1023/1000 * q + -1023/1000 * e * f + 1023/1000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |


### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 155:0 | ABC | lo | 93/1000 | occupants none |
| 155:1 | ABC | hi | 194716295387/500000000000 | vertex maximum 194716295387/500000000000 |
| 155:2 | ABE | lo | 279/1000 | occupants P |
| 155:3 | ABE | hi | 14719707/25000000 | vertex maximum 14719707/25000000 |
| 155:4 | ABF | lo | 93/1000 | occupants none |
| 155:6 | ABH | lo | 93/1000 | occupants none |
| 155:7 | ABH | hi | 60646777/200000000 | vertex maximum 60646777/200000000 |
| 155:8 | ABP | lo | 93/1000 | occupants none |
| 155:9 | ABP | hi | 144545859929/500000000000 | vertex maximum 144545859929/500000000000 |
| 155:12 | ABR | lo | 94111/250000 | earlier 154:12; ABR; lo; 94111/250000 |
| 155:13 | ABR | hi | 348915269/500000000 | vertex maximum 348915269/500000000 |
| 155:14 | ABS | lo | 47611/250000 | earlier 154:14; ABS; lo; 47611/250000 |
| 155:15 | ABS | hi | 502239/1000000 | earlier 154:15; ABS; hi; 502239/1000000 |
| 155:16 | ACE | lo | 313951/1000000 | earlier 154:16; ACE; lo; 313951/1000000 |
| 155:17 | ACE | hi | 16558587537/25000000000 | vertex maximum 16558587537/25000000000 |
| 155:18 | ACF | lo | 191369/500000 | earlier 154:18; ACF; lo; 191369/500000 |
| 155:19 | ACF | hi | 198104155003/250000000000 | vertex maximum 198104155003/250000000000 |
| 155:20 | ACH | lo | 384377/1000000 | earlier 154:20; ACH; lo; 384377/1000000 |
| 155:21 | ACH | hi | 144893491357/200000000000 | vertex maximum 144893491357/200000000000 |
| 155:22 | ACP | lo | 1796/15625 | earlier 154:22; ACP; lo; 1796/15625 |
| 155:24 | ACQ | lo | 105639/1000000 | earlier 154:24; ACQ; lo; 105639/1000000 |
| 155:25 | ACQ | hi | 110106652499/250000000000 | vertex maximum 110106652499/250000000000 |
| 155:26 | ACR | lo | 13857/20000 | occupants P, S |
| 155:27 | ACR | hi | 461430226529/500000000000 | vertex maximum 461430226529/500000000000 |
| 155:28 | ACS | lo | 395781/1000000 | earlier 154:28; ACS; lo; 395781/1000000 |
| 155:29 | ACS | hi | 82171/125000 | earlier 154:29; ACS; hi; 82171/125000 |
| 155:30 | AEF | lo | 41091/200000 | earlier 154:30; AEF; lo; 41091/200000 |
| 155:31 | AEF | hi | 209921297901/250000000000 | vertex maximum 209921297901/250000000000 |
| 155:33 | AEH | hi | 173773/200000 | vertex maximum 173773/200000 |
| 155:34 | AEP | lo | 93/1000 | occupants none |
| 155:35 | AEP | hi | 30323/100000 | earlier 154:35; AEP; hi; 30323/100000 |
| 155:37 | AEQ | hi | 139899/250000 | vertex maximum 139899/250000 |
| 155:38 | AER | lo | 322621/1000000 | earlier 154:38; AER; lo; 322621/1000000 |
| 155:39 | AER | hi | 691678559039/1000000000000 | vertex maximum 691678559039/1000000000000 |
| 155:41 | AES | hi | 17229/40000 | earlier 154:41; AES; hi; 17229/40000 |
| 155:42 | AFH | lo | 93/1000 | occupants none |
| 155:43 | AFH | hi | 17736488791/40000000000 | vertex maximum 17736488791/40000000000 |
| 155:44 | AFP | lo | 87397/500000 | earlier 154:44; AFP; lo; 87397/500000 |
| 155:46 | AFQ | lo | 82123/200000 | earlier 154:46; AFQ; lo; 82123/200000 |
| 155:47 | AFQ | hi | 436019/500000 | vertex maximum 436019/500000 |
| 155:48 | AFR | lo | 8919/62500 | earlier 154:48; AFR; lo; 8919/62500 |
| 155:49 | AFR | hi | 3989390537/5000000000 | vertex maximum 3989390537/5000000000 |
| 155:50 | AFS | lo | 119671/1000000 | earlier 154:50; AFS; lo; 119671/1000000 |
| 155:52 | AHP | lo | 176433/1000000 | earlier 154:52; AHP; lo; 176433/1000000 |
| 155:54 | AHQ | lo | 25387/62500 | earlier 154:54; AHQ; lo; 25387/62500 |
| 155:55 | AHQ | hi | 173773/200000 | vertex maximum 173773/200000 |
| 155:56 | AHR | lo | 30107/200000 | earlier 154:56; AHR; lo; 30107/200000 |
| 155:57 | AHR | hi | 173773/200000 | vertex maximum 173773/200000 |
| 155:59 | AHS | hi | 161763/250000 | earlier 154:59; AHS; hi; 161763/250000 |
| 155:60 | APQ | lo | 93/1000 | occupants none |
| 155:62 | APR | lo | 338897/1000000 | earlier 154:62; APR; lo; 338897/1000000 |
| 155:63 | APR | hi | 10523/20000 | earlier 154:63; APR; hi; 10523/20000 |
| 155:64 | APS | lo | 152897/1000000 | earlier 154:64; APS; lo; 152897/1000000 |
| 155:66 | AQR | lo | 13857/20000 | occupants P, S |
| 155:67 | AQR | hi | 436019/500000 | vertex maximum 436019/500000 |
| 155:69 | AQS | hi | 305937/500000 | earlier 154:69; AQS; hi; 305937/500000 |
| 155:70 | ARS | lo | 93/1000 | occupants none |
| 155:71 | ARS | hi | 280253/1000000 | earlier 154:71; ARS; hi; 280253/1000000 |
| 155:73 | BCE | hi | 249849295167/500000000000 | vertex maximum 249849295167/500000000000 |
| 155:75 | BCF | hi | 726773/1000000 | vertex maximum 726773/1000000 |
| 155:76 | BCH | lo | 347309/1000000 | earlier 154:76; BCH; lo; 347309/1000000 |
| 155:77 | BCH | hi | 724466949271/1000000000000 | vertex maximum 724466949271/1000000000000 |
| 155:78 | BCP | lo | 32193/250000 | earlier 154:78; BCP; lo; 32193/250000 |
| 155:80 | BCQ | lo | 93/1000 | occupants none |
| 155:83 | BCR | hi | 726773/1000000 | vertex maximum 726773/1000000 |
| 155:85 | BCS | hi | 584959/1000000 | earlier 154:85; BCS; hi; 584959/1000000 |
| 155:86 | BEF | lo | 1793/5000 | earlier 154:86; BEF; lo; 1793/5000 |
| 155:87 | BEF | hi | 223241/250000 | vertex maximum 223241/250000 |
| 155:88 | BEH | lo | 383143/1000000 | earlier 154:88; BEH; lo; 383143/1000000 |
| 155:89 | BEH | hi | 240931020829/250000000000 | vertex maximum 240931020829/250000000000 |
| 155:90 | BEP | lo | 93/1000 | occupants none |
| 155:91 | BEP | hi | 162075023493/500000000000 | vertex maximum 162075023493/500000000000 |
| 155:92 | BEQ | lo | 31239/250000 | earlier 154:92; BEQ; lo; 31239/250000 |
| 155:94 | BER | lo | 5753/15625 | earlier 154:94; BER; lo; 5753/15625 |
| 155:96 | BES | lo | 321879/1000000 | earlier 154:96; BES; lo; 321879/1000000 |
| 155:97 | BES | hi | 577987/1000000 | earlier 154:243; BES; hi; 577987/1000000 |
| 155:98 | BFH | lo | 93/1000 | occupants none |
| 155:100 | BFP | lo | 112223/1000000 | earlier 154:100; BFP; lo; 112223/1000000 |
| 155:102 | BFQ | lo | 87011/250000 | earlier 154:102; BFQ; lo; 87011/250000 |
| 155:103 | BFQ | hi | 223241/250000 | vertex maximum 223241/250000 |
| 155:104 | BFR | lo | 34619/100000 | earlier 154:104; BFR; lo; 34619/100000 |
| 155:105 | BFR | hi | 223241/250000 | vertex maximum 223241/250000 |
| 155:107 | BFS | hi | 128031/200000 | earlier 154:107; BFS; hi; 128031/200000 |
| 155:108 | BHP | lo | 125537/1000000 | earlier 154:108; BHP; lo; 125537/1000000 |
| 155:109 | BHP | hi | 495914895697/1000000000000 | vertex maximum 495914895697/1000000000000 |
| 155:110 | BHQ | lo | 11103/31250 | earlier 154:110; BHQ; lo; 11103/31250 |
| 155:112 | BHR | lo | 192749/500000 | earlier 154:112; BHR; lo; 192749/500000 |
| 155:113 | BHR | hi | 997934377/1000000000 | vertex maximum 997934377/1000000000 |
| 155:114 | BHS | lo | 99749/500000 | earlier 154:114; BHS; lo; 99749/500000 |
| 155:115 | BHS | hi | 716371/1000000 | earlier 154:115; BHS; hi; 716371/1000000 |
| 155:118 | BPR | lo | 93/1000 | occupants none |
| 155:119 | BPR | hi | 34045364227/100000000000 | vertex maximum 34045364227/100000000000 |
| 155:120 | BPS | lo | 93/1000 | occupants none |
| 155:122 | BQR | lo | 54861/125000 | earlier 154:122; BQR; lo; 54861/125000 |
| 155:123 | BQR | hi | 83030548727/100000000000 | vertex maximum 83030548727/100000000000 |
| 155:124 | BQS | lo | 86977/250000 | earlier 154:124; BQS; lo; 86977/250000 |
| 155:125 | BQS | hi | 42369/62500 | earlier 154:241; BQS; hi; 42369/62500 |
| 155:126 | BRS | lo | 93/1000 | occupants none |
| 155:128 | CEF | lo | 37213/200000 | earlier 154:128; CEF; lo; 37213/200000 |
| 155:130 | CEH | lo | 191397/1000000 | earlier 154:130; CEH; lo; 191397/1000000 |
| 155:131 | CEH | hi | 828668475899/1000000000000 | vertex maximum 828668475899/1000000000000 |
| 155:133 | CEP | hi | 34439/100000 | earlier 154:133; CEP; hi; 34439/100000 |
| 155:134 | CEQ | lo | 93/1000 | occupants none |
| 155:136 | CER | lo | 15373/125000 | earlier 154:136; CER; lo; 15373/125000 |
| 155:137 | CER | hi | 108370306811/250000000000 | vertex maximum 108370306811/250000000000 |
| 155:141 | CFH | hi | 311770112679/500000000000 | vertex maximum 311770112679/500000000000 |
| 155:142 | CFP | lo | 93/1000 | occupants none |
| 155:143 | CFP | hi | 38751/125000 | earlier 154:143; CFP; hi; 38751/125000 |
| 155:144 | CFQ | lo | 64933/500000 | earlier 154:144; CFQ; lo; 64933/500000 |
| 155:146 | CFR | lo | 370171/1000000 | earlier 154:146; CFR; lo; 370171/1000000 |
| 155:147 | CFR | hi | 223241/250000 | vertex maximum 223241/250000 |
| 155:150 | CHP | lo | 93/1000 | occupants none |
| 155:152 | CHQ | lo | 138941/1000000 | earlier 154:152; CHQ; lo; 138941/1000000 |
| 155:154 | CHR | lo | 412043/1000000 | earlier 154:154; CHR; lo; 412043/1000000 |
| 155:155 | CHR | hi | 999472675957/1000000000000 | vertex maximum 999472675957/1000000000000 |
| 155:157 | CHS | hi | 561769/1000000 | earlier 154:157; CHS; hi; 561769/1000000 |
| 155:158 | CPQ | lo | 98411/1000000 | earlier 154:158; CPQ; lo; 98411/1000000 |
| 155:160 | CPR | lo | 38579/250000 | earlier 154:160; CPR; lo; 38579/250000 |
| 155:161 | CPR | hi | 207111/500000 | earlier 154:161; CPR; hi; 207111/500000 |
| 155:164 | CQR | lo | 132701/1000000 | earlier 154:164; CQR; lo; 132701/1000000 |
| 155:166 | CQS | lo | 27509/250000 | earlier 154:166; CQS; lo; 27509/250000 |
| 155:168 | CRS | lo | 149741/1000000 | earlier 154:168; CRS; lo; 149741/1000000 |
| 155:169 | CRS | hi | 94289/250000 | earlier 154:169; CRS; hi; 94289/250000 |
| 155:170 | EFH | lo | 93/1000 | occupants none |
| 155:173 | EFP | hi | 590639/1000000 | earlier 154:173; EFP; hi; 590639/1000000 |
| 155:174 | EFQ | lo | 189461/1000000 | earlier 154:174; EFQ; lo; 189461/1000000 |
| 155:176 | EFR | lo | 279/1000 | occupants S |
| 155:178 | EFS | lo | 93/1000 | occupants none |
| 155:180 | EHP | lo | 82303/500000 | earlier 154:180; EHP; lo; 82303/500000 |
| 155:181 | EHP | hi | 159657/250000 | earlier 154:181; EHP; hi; 159657/250000 |
| 155:182 | EHQ | lo | 103643/500000 | earlier 154:182; EHQ; lo; 103643/500000 |
| 155:183 | EHQ | hi | 632612246017/1000000000000 | vertex maximum 632612246017/1000000000000 |
| 155:184 | EHR | lo | 279/1000 | occupants S |
| 155:185 | EHR | hi | 569777/1000000 | vertex maximum 569777/1000000 |
| 155:186 | EHS | lo | 93/1000 | occupants none |
| 155:188 | EPQ | lo | 35299/250000 | earlier 154:188; EPQ; lo; 35299/250000 |
| 155:189 | EPQ | hi | 314379/1000000 | earlier 154:189; EPQ; hi; 314379/1000000 |
| 155:190 | EPR | lo | 11387/62500 | earlier 154:190; EPR; lo; 11387/62500 |
| 155:192 | EPS | lo | 135879/1000000 | earlier 154:192; EPS; lo; 135879/1000000 |
| 155:194 | EQR | lo | 93/1000 | occupants none |
| 155:196 | EQS | lo | 71457/500000 | earlier 154:196; EQS; lo; 71457/500000 |
| 155:197 | EQS | hi | 366200436547/1000000000000 | vertex maximum 366200436547/1000000000000 |
| 155:198 | ERS | lo | 93/1000 | occupants none |
| 155:202 | FHQ | lo | 93113/1000000 | earlier 154:202; FHQ; lo; 93113/1000000 |
| 155:203 | FHQ | hi | 123279620757/200000000000 | vertex maximum 123279620757/200000000000 |
| 155:204 | FHR | lo | 93/1000 | occupants none |
| 155:205 | FHR | hi | 82921874739/250000000000 | vertex maximum 82921874739/250000000000 |
| 155:206 | FHS | lo | 23253/250000 | earlier 154:206; FHS; lo; 23253/250000 |
| 155:207 | FHS | hi | 282168879433/1000000000000 | vertex maximum 282168879433/1000000000000 |
| 155:208 | FPQ | lo | 142821/1000000 | earlier 154:208; FPQ; lo; 142821/1000000 |
| 155:209 | FPQ | hi | 398737/1000000 | earlier 154:209; FPQ; hi; 398737/1000000 |
| 155:210 | FPR | lo | 11753/40000 | earlier 154:210; FPR; lo; 11753/40000 |
| 155:211 | FPR | hi | 86956611079/125000000000 | vertex maximum 86956611079/125000000000 |
| 155:214 | FQR | lo | 4853/12500 | earlier 154:214; FQR; lo; 4853/12500 |
| 155:215 | FQR | hi | 97337317579/125000000000 | vertex maximum 97337317579/125000000000 |
| 155:216 | FQS | lo | 32019/250000 | earlier 154:216; FQS; lo; 32019/250000 |
| 155:218 | FRS | lo | 93/1000 | occupants none |
| 155:220 | HPQ | lo | 136759/1000000 | earlier 154:220; HPQ; lo; 136759/1000000 |
| 155:221 | HPQ | hi | 78387/200000 | earlier 154:221; HPQ; hi; 78387/200000 |
| 155:222 | HPR | lo | 336651/1000000 | earlier 154:222; HPR; lo; 336651/1000000 |
| 155:225 | HPS | hi | 465707/1000000 | earlier 154:225; HPS; hi; 465707/1000000 |
| 155:226 | HQR | lo | 109251/250000 | earlier 154:226; HQR; lo; 109251/250000 |
| 155:227 | HQR | hi | 436019/500000 | vertex maximum 436019/500000 |
| 155:228 | HQS | lo | 4421/25000 | earlier 154:228; HQS; lo; 4421/25000 |
| 155:229 | HQS | hi | 467793/1000000 | earlier 154:229; HQS; hi; 467793/1000000 |
| 155:231 | HRS | hi | 342707758111/1000000000000 | vertex maximum 342707758111/1000000000000 |
| 155:232 | PQR | lo | 31611/125000 | earlier 154:232; PQR; lo; 31611/125000 |
| 155:233 | PQR | hi | 440141/1000000 | earlier 154:233; PQR; hi; 440141/1000000 |
| 155:235 | PQS | hi | 67027/250000 | earlier 154:235; PQS; hi; 67027/250000 |
| 155:236 | PRS | lo | 93/1000 | occupants none |
| 155:238 | QRS | lo | 41791/250000 | earlier 154:238; QRS; lo; 41791/250000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |


### Coordinate certificate sources

| Source | Kind | Source witness | Polynomial |
| --- | --- | --- | --- |
| 0 | bound | `{"direction":"lo","ref":"155:0","triangle":"ABC","value":"93/1000"}` | `-1 * a * b + 1 * a * c + -93/1000` |
| 1 | bound | `{"direction":"hi","ref":"155:1","triangle":"ABC","value":"194716295387/500000000000"}` | `194716295387/500000000000 + 1 * a * b + -1 * a * c` |
| 2 | bound | `{"direction":"lo","ref":"155:2","triangle":"ABE","value":"279/1000"}` | `1 * b * e + -1 * a * b + 1 * a + -279/1000` |
| 3 | bound | `{"direction":"hi","ref":"155:3","triangle":"ABE","value":"14719707/25000000"}` | `14719707/25000000 + -1 * b * e + 1 * a * b + -1 * a` |
| 4 | bound | `{"direction":"lo","ref":"155:4","triangle":"ABF","value":"93/1000"}` | `1 * b + -1 * a * b + 1 * a * f + -93/1000` |
| 6 | bound | `{"direction":"lo","ref":"155:6","triangle":"ABH","value":"93/1000"}` | `1 * b * h + -1 * a * b + -93/1000` |
| 7 | bound | `{"direction":"hi","ref":"155:7","triangle":"ABH","value":"60646777/200000000"}` | `60646777/200000000 + -1 * b * h + 1 * a * b` |
| 8 | bound | `{"direction":"lo","ref":"155:8","triangle":"ABP","value":"93/1000"}` | `1 * b * q + -1 * a * b + 1 * a * p + -93/1000` |
| 9 | bound | `{"direction":"hi","ref":"155:9","triangle":"ABP","value":"144545859929/500000000000"}` | `144545859929/500000000000 + -1 * b * q + 1 * a * b + -1 * a * p` |
| 12 | bound | `{"direction":"lo","ref":"155:12","triangle":"ABR","value":"94111/250000"}` | `1 * b * w + -1 * a * b + 1 * a * r + -94111/250000` |
| 13 | bound | `{"direction":"hi","ref":"155:13","triangle":"ABR","value":"348915269/500000000"}` | `348915269/500000000 + -1 * b * w + 1 * a * b + -1 * a * r` |
| 14 | bound | `{"direction":"lo","ref":"155:14","triangle":"ABS","value":"47611/250000"}` | `1 * b * k + -1 * a * b + 1 * a * j + -47611/250000` |
| 15 | bound | `{"direction":"hi","ref":"155:15","triangle":"ABS","value":"502239/1000000"}` | `502239/1000000 + -1 * b * k + 1 * a * b + -1 * a * j` |
| 16 | bound | `{"direction":"lo","ref":"155:16","triangle":"ACE","value":"313951/1000000"}` | `1 * c * e + -1 * a * c + 1 * a + -313951/1000000` |
| 17 | bound | `{"direction":"hi","ref":"155:17","triangle":"ACE","value":"16558587537/25000000000"}` | `16558587537/25000000000 + -1 * c * e + 1 * a * c + -1 * a` |
| 18 | bound | `{"direction":"lo","ref":"155:18","triangle":"ACF","value":"191369/500000"}` | `1 * c + -1 * a * c + 1 * a * f + -191369/500000` |
| 19 | bound | `{"direction":"hi","ref":"155:19","triangle":"ACF","value":"198104155003/250000000000"}` | `198104155003/250000000000 + -1 * c + 1 * a * c + -1 * a * f` |
| 20 | bound | `{"direction":"lo","ref":"155:20","triangle":"ACH","value":"384377/1000000"}` | `1 * c * h + -1 * a * c + -384377/1000000` |
| 21 | bound | `{"direction":"hi","ref":"155:21","triangle":"ACH","value":"144893491357/200000000000"}` | `144893491357/200000000000 + -1 * c * h + 1 * a * c` |
| 22 | bound | `{"direction":"lo","ref":"155:22","triangle":"ACP","value":"1796/15625"}` | `1 * c * q + -1 * a * c + 1 * a * p + -1796/15625` |
| 24 | bound | `{"direction":"lo","ref":"155:24","triangle":"ACQ","value":"105639/1000000"}` | `1 * c * v + -1 * a * c + 1 * a * u + -105639/1000000` |
| 25 | bound | `{"direction":"hi","ref":"155:25","triangle":"ACQ","value":"110106652499/250000000000"}` | `110106652499/250000000000 + -1 * c * v + 1 * a * c + -1 * a * u` |
| 26 | bound | `{"direction":"lo","ref":"155:26","triangle":"ACR","value":"13857/20000"}` | `1 * c * w + -1 * a * c + 1 * a * r + -13857/20000` |
| 27 | bound | `{"direction":"hi","ref":"155:27","triangle":"ACR","value":"461430226529/500000000000"}` | `461430226529/500000000000 + -1 * c * w + 1 * a * c + -1 * a * r` |
| 28 | bound | `{"direction":"lo","ref":"155:28","triangle":"ACS","value":"395781/1000000"}` | `1 * c * k + -1 * a * c + 1 * a * j + -395781/1000000` |
| 29 | bound | `{"direction":"hi","ref":"155:29","triangle":"ACS","value":"82171/125000"}` | `82171/125000 + -1 * c * k + 1 * a * c + -1 * a * j` |
| 30 | bound | `{"direction":"lo","ref":"155:30","triangle":"AEF","value":"41091/200000"}` | `158909/200000 + -1 * a + -1 * e * f + 1 * a * f` |
| 31 | bound | `{"direction":"hi","ref":"155:31","triangle":"AEF","value":"209921297901/250000000000"}` | `-40078702099/250000000000 + 1 * a + 1 * e * f + -1 * a * f` |
| 33 | bound | `{"direction":"hi","ref":"155:33","triangle":"AEH","value":"173773/200000"}` | `173773/200000 + -1 * h + 1 * a` |
| 34 | bound | `{"direction":"lo","ref":"155:34","triangle":"AEP","value":"93/1000"}` | `-1 * q + 1 * a + 1 * e * p + -1 * a * p + -93/1000` |
| 35 | bound | `{"direction":"hi","ref":"155:35","triangle":"AEP","value":"30323/100000"}` | `30323/100000 + 1 * q + -1 * a + -1 * e * p + 1 * a * p` |
| 37 | bound | `{"direction":"hi","ref":"155:37","triangle":"AEQ","value":"139899/250000"}` | `139899/250000 + 1 * v + -1 * a + -1 * e * u + 1 * a * u` |
| 38 | bound | `{"direction":"lo","ref":"155:38","triangle":"AER","value":"322621/1000000"}` | `1 * w + -1 * a + -1 * e * r + 1 * a * r + -322621/1000000` |
| 39 | bound | `{"direction":"hi","ref":"155:39","triangle":"AER","value":"691678559039/1000000000000"}` | `691678559039/1000000000000 + -1 * w + 1 * a + 1 * e * r + -1 * a * r` |
| 41 | bound | `{"direction":"hi","ref":"155:41","triangle":"AES","value":"17229/40000"}` | `17229/40000 + -1 * k + 1 * a + 1 * e * j + -1 * a * j` |
| 42 | bound | `{"direction":"lo","ref":"155:42","triangle":"AFH","value":"93/1000"}` | `1 * f * h + -1 * a * f + -93/1000` |
| 43 | bound | `{"direction":"hi","ref":"155:43","triangle":"AFH","value":"17736488791/40000000000"}` | `17736488791/40000000000 + -1 * f * h + 1 * a * f` |
| 44 | bound | `{"direction":"lo","ref":"155:44","triangle":"AFP","value":"87397/500000"}` | `-1 * f * q + 1 * a * f + 1 * p + -1 * a * p + -87397/500000` |
| 46 | bound | `{"direction":"lo","ref":"155:46","triangle":"AFQ","value":"82123/200000"}` | `-1 * f * v + 1 * a * f + 1 * u + -1 * a * u + -82123/200000` |
| 47 | bound | `{"direction":"hi","ref":"155:47","triangle":"AFQ","value":"436019/500000"}` | `436019/500000 + 1 * f * v + -1 * a * f + -1 * u + 1 * a * u` |
| 48 | bound | `{"direction":"lo","ref":"155:48","triangle":"AFR","value":"8919/62500"}` | `-1 * f * w + 1 * a * f + 1 * r + -1 * a * r + -8919/62500` |
| 49 | bound | `{"direction":"hi","ref":"155:49","triangle":"AFR","value":"3989390537/5000000000"}` | `3989390537/5000000000 + 1 * f * w + -1 * a * f + -1 * r + 1 * a * r` |
| 50 | bound | `{"direction":"lo","ref":"155:50","triangle":"AFS","value":"119671/1000000"}` | `-1 * f * k + 1 * a * f + 1 * j + -1 * a * j + -119671/1000000` |
| 52 | bound | `{"direction":"lo","ref":"155:52","triangle":"AHP","value":"176433/1000000"}` | `1 * h * p + -1 * a * p + -176433/1000000` |
| 54 | bound | `{"direction":"lo","ref":"155:54","triangle":"AHQ","value":"25387/62500"}` | `1 * h * u + -1 * a * u + -25387/62500` |
| 55 | bound | `{"direction":"hi","ref":"155:55","triangle":"AHQ","value":"173773/200000"}` | `173773/200000 + -1 * h * u + 1 * a * u` |
| 56 | bound | `{"direction":"lo","ref":"155:56","triangle":"AHR","value":"30107/200000"}` | `1 * h * r + -1 * a * r + -30107/200000` |
| 57 | bound | `{"direction":"hi","ref":"155:57","triangle":"AHR","value":"173773/200000"}` | `173773/200000 + -1 * h * r + 1 * a * r` |
| 59 | bound | `{"direction":"hi","ref":"155:59","triangle":"AHS","value":"161763/250000"}` | `161763/250000 + -1 * h * j + 1 * a * j` |
| 60 | bound | `{"direction":"lo","ref":"155:60","triangle":"APQ","value":"93/1000"}` | `-1 * p * v + 1 * a * p + 1 * q * u + -1 * a * u + -93/1000` |
| 62 | bound | `{"direction":"lo","ref":"155:62","triangle":"APR","value":"338897/1000000"}` | `1 * p * w + -1 * a * p + -1 * q * r + 1 * a * r + -338897/1000000` |
| 63 | bound | `{"direction":"hi","ref":"155:63","triangle":"APR","value":"10523/20000"}` | `10523/20000 + -1 * p * w + 1 * a * p + 1 * q * r + -1 * a * r` |
| 64 | bound | `{"direction":"lo","ref":"155:64","triangle":"APS","value":"152897/1000000"}` | `1 * p * k + -1 * a * p + -1 * q * j + 1 * a * j + -152897/1000000` |
| 66 | bound | `{"direction":"lo","ref":"155:66","triangle":"AQR","value":"13857/20000"}` | `1 * u * w + -1 * a * u + -1 * v * r + 1 * a * r + -13857/20000` |
| 67 | bound | `{"direction":"hi","ref":"155:67","triangle":"AQR","value":"436019/500000"}` | `436019/500000 + -1 * u * w + 1 * a * u + 1 * v * r + -1 * a * r` |
| 69 | bound | `{"direction":"hi","ref":"155:69","triangle":"AQS","value":"305937/500000"}` | `305937/500000 + -1 * u * k + 1 * a * u + 1 * v * j + -1 * a * j` |
| 70 | bound | `{"direction":"lo","ref":"155:70","triangle":"ARS","value":"93/1000"}` | `-1 * r * k + 1 * a * r + 1 * w * j + -1 * a * j + -93/1000` |
| 71 | bound | `{"direction":"hi","ref":"155:71","triangle":"ARS","value":"280253/1000000"}` | `280253/1000000 + 1 * r * k + -1 * a * r + -1 * w * j + 1 * a * j` |
| 73 | bound | `{"direction":"hi","ref":"155:73","triangle":"BCE","value":"249849295167/500000000000"}` | `249849295167/500000000000 + -1 * c * e + 1 * b * e` |
| 75 | bound | `{"direction":"hi","ref":"155:75","triangle":"BCF","value":"726773/1000000"}` | `726773/1000000 + -1 * c + 1 * b` |
| 76 | bound | `{"direction":"lo","ref":"155:76","triangle":"BCH","value":"347309/1000000"}` | `1 * c * h + -1 * b * h + -347309/1000000` |
| 77 | bound | `{"direction":"hi","ref":"155:77","triangle":"BCH","value":"724466949271/1000000000000"}` | `724466949271/1000000000000 + -1 * c * h + 1 * b * h` |
| 78 | bound | `{"direction":"lo","ref":"155:78","triangle":"BCP","value":"32193/250000"}` | `1 * c * q + -1 * b * q + -32193/250000` |
| 80 | bound | `{"direction":"lo","ref":"155:80","triangle":"BCQ","value":"93/1000"}` | `1 * c * v + -1 * b * v + -93/1000` |
| 83 | bound | `{"direction":"hi","ref":"155:83","triangle":"BCR","value":"726773/1000000"}` | `726773/1000000 + -1 * c * w + 1 * b * w` |
| 85 | bound | `{"direction":"hi","ref":"155:85","triangle":"BCS","value":"584959/1000000"}` | `584959/1000000 + -1 * c * k + 1 * b * k` |
| 86 | bound | `{"direction":"lo","ref":"155:86","triangle":"BEF","value":"1793/5000"}` | `3207/5000 + -1 * b + -1 * e * f + 1 * b * e` |
| 87 | bound | `{"direction":"hi","ref":"155:87","triangle":"BEF","value":"223241/250000"}` | `-26759/250000 + 1 * b + 1 * e * f + -1 * b * e` |
| 88 | bound | `{"direction":"lo","ref":"155:88","triangle":"BEH","value":"383143/1000000"}` | `1 * h + -1 * b * h + 1 * b * e + -383143/1000000` |
| 89 | bound | `{"direction":"hi","ref":"155:89","triangle":"BEH","value":"240931020829/250000000000"}` | `240931020829/250000000000 + -1 * h + 1 * b * h + -1 * b * e` |
| 90 | bound | `{"direction":"lo","ref":"155:90","triangle":"BEP","value":"93/1000"}` | `1 * q + -1 * b * q + -1 * e * p + 1 * b * e + -93/1000` |
| 91 | bound | `{"direction":"hi","ref":"155:91","triangle":"BEP","value":"162075023493/500000000000"}` | `162075023493/500000000000 + -1 * q + 1 * b * q + 1 * e * p + -1 * b * e` |
| 92 | bound | `{"direction":"lo","ref":"155:92","triangle":"BEQ","value":"31239/250000"}` | `-1 * v + 1 * b * v + 1 * e * u + -1 * b * e + -31239/250000` |
| 94 | bound | `{"direction":"lo","ref":"155:94","triangle":"BER","value":"5753/15625"}` | `1 * w + -1 * b * w + -1 * e * r + 1 * b * e + -5753/15625` |
| 96 | bound | `{"direction":"lo","ref":"155:96","triangle":"BES","value":"321879/1000000"}` | `1 * k + -1 * b * k + -1 * e * j + 1 * b * e + -321879/1000000` |
| 97 | bound | `{"direction":"hi","ref":"155:97","triangle":"BES","value":"577987/1000000"}` | `577987/1000000 + -1 * k + 1 * b * k + 1 * e * j + -1 * b * e` |
| 98 | bound | `{"direction":"lo","ref":"155:98","triangle":"BFH","value":"93/1000"}` | `1 * f * h + -1 * b * h + 1 * b + -93/1000` |
| 100 | bound | `{"direction":"lo","ref":"155:100","triangle":"BFP","value":"112223/1000000"}` | `-1 * f * q + 1 * b * q + 1 * p + -1 * b + -112223/1000000` |
| 102 | bound | `{"direction":"lo","ref":"155:102","triangle":"BFQ","value":"87011/250000"}` | `-1 * f * v + 1 * b * v + 1 * u + -1 * b + -87011/250000` |
| 103 | bound | `{"direction":"hi","ref":"155:103","triangle":"BFQ","value":"223241/250000"}` | `223241/250000 + 1 * f * v + -1 * b * v + -1 * u + 1 * b` |
| 104 | bound | `{"direction":"lo","ref":"155:104","triangle":"BFR","value":"34619/100000"}` | `-1 * f * w + 1 * b * w + 1 * r + -1 * b + -34619/100000` |
| 105 | bound | `{"direction":"hi","ref":"155:105","triangle":"BFR","value":"223241/250000"}` | `223241/250000 + 1 * f * w + -1 * b * w + -1 * r + 1 * b` |
| 107 | bound | `{"direction":"hi","ref":"155:107","triangle":"BFS","value":"128031/200000"}` | `128031/200000 + 1 * f * k + -1 * b * k + -1 * j + 1 * b` |
| 108 | bound | `{"direction":"lo","ref":"155:108","triangle":"BHP","value":"125537/1000000"}` | `1 * b * q + 1 * h * p + -1 * b * h + -125537/1000000` |
| 109 | bound | `{"direction":"hi","ref":"155:109","triangle":"BHP","value":"495914895697/1000000000000"}` | `495914895697/1000000000000 + -1 * b * q + -1 * h * p + 1 * b * h` |
| 110 | bound | `{"direction":"lo","ref":"155:110","triangle":"BHQ","value":"11103/31250"}` | `1 * b * v + 1 * h * u + -1 * b * h + -11103/31250` |
| 112 | bound | `{"direction":"lo","ref":"155:112","triangle":"BHR","value":"192749/500000"}` | `1 * b * w + 1 * h * r + -1 * b * h + -192749/500000` |
| 113 | bound | `{"direction":"hi","ref":"155:113","triangle":"BHR","value":"997934377/1000000000"}` | `997934377/1000000000 + -1 * b * w + -1 * h * r + 1 * b * h` |
| 114 | bound | `{"direction":"lo","ref":"155:114","triangle":"BHS","value":"99749/500000"}` | `1 * b * k + 1 * h * j + -1 * b * h + -99749/500000` |
| 115 | bound | `{"direction":"hi","ref":"155:115","triangle":"BHS","value":"716371/1000000"}` | `716371/1000000 + -1 * b * k + -1 * h * j + 1 * b * h` |
| 118 | bound | `{"direction":"lo","ref":"155:118","triangle":"BPR","value":"93/1000"}` | `1 * p * w + -1 * b * w + -1 * q * r + 1 * b * q + -93/1000` |
| 119 | bound | `{"direction":"hi","ref":"155:119","triangle":"BPR","value":"34045364227/100000000000"}` | `34045364227/100000000000 + -1 * p * w + 1 * b * w + 1 * q * r + -1 * b * q` |
| 120 | bound | `{"direction":"lo","ref":"155:120","triangle":"BPS","value":"93/1000"}` | `1 * p * k + -1 * b * k + -1 * q * j + 1 * b * q + -93/1000` |
| 122 | bound | `{"direction":"lo","ref":"155:122","triangle":"BQR","value":"54861/125000"}` | `1 * u * w + -1 * b * w + -1 * v * r + 1 * b * v + -54861/125000` |
| 123 | bound | `{"direction":"hi","ref":"155:123","triangle":"BQR","value":"83030548727/100000000000"}` | `83030548727/100000000000 + -1 * u * w + 1 * b * w + 1 * v * r + -1 * b * v` |
| 124 | bound | `{"direction":"lo","ref":"155:124","triangle":"BQS","value":"86977/250000"}` | `1 * u * k + -1 * b * k + -1 * v * j + 1 * b * v + -86977/250000` |
| 125 | bound | `{"direction":"hi","ref":"155:125","triangle":"BQS","value":"42369/62500"}` | `42369/62500 + -1 * u * k + 1 * b * k + 1 * v * j + -1 * b * v` |
| 126 | bound | `{"direction":"lo","ref":"155:126","triangle":"BRS","value":"93/1000"}` | `1 * r * k + -1 * b * k + -1 * w * j + 1 * b * w + -93/1000` |
| 128 | bound | `{"direction":"lo","ref":"155:128","triangle":"CEF","value":"37213/200000"}` | `162787/200000 + -1 * c + -1 * e * f + 1 * c * e` |
| 130 | bound | `{"direction":"lo","ref":"155:130","triangle":"CEH","value":"191397/1000000"}` | `1 * h + -1 * c * h + 1 * c * e + -191397/1000000` |
| 131 | bound | `{"direction":"hi","ref":"155:131","triangle":"CEH","value":"828668475899/1000000000000"}` | `828668475899/1000000000000 + -1 * h + 1 * c * h + -1 * c * e` |
| 133 | bound | `{"direction":"hi","ref":"155:133","triangle":"CEP","value":"34439/100000"}` | `34439/100000 + -1 * q + 1 * c * q + 1 * e * p + -1 * c * e` |
| 134 | bound | `{"direction":"lo","ref":"155:134","triangle":"CEQ","value":"93/1000"}` | `-1 * v + 1 * c * v + 1 * e * u + -1 * c * e + -93/1000` |
| 136 | bound | `{"direction":"lo","ref":"155:136","triangle":"CER","value":"15373/125000"}` | `1 * w + -1 * c * w + -1 * e * r + 1 * c * e + -15373/125000` |
| 137 | bound | `{"direction":"hi","ref":"155:137","triangle":"CER","value":"108370306811/250000000000"}` | `108370306811/250000000000 + -1 * w + 1 * c * w + 1 * e * r + -1 * c * e` |
| 141 | bound | `{"direction":"hi","ref":"155:141","triangle":"CFH","value":"311770112679/500000000000"}` | `311770112679/500000000000 + -1 * f * h + 1 * c * h + -1 * c` |
| 142 | bound | `{"direction":"lo","ref":"155:142","triangle":"CFP","value":"93/1000"}` | `1 * f * q + -1 * c * q + -1 * p + 1 * c + -93/1000` |
| 143 | bound | `{"direction":"hi","ref":"155:143","triangle":"CFP","value":"38751/125000"}` | `38751/125000 + -1 * f * q + 1 * c * q + 1 * p + -1 * c` |
| 144 | bound | `{"direction":"lo","ref":"155:144","triangle":"CFQ","value":"64933/500000"}` | `-1 * f * v + 1 * c * v + 1 * u + -1 * c + -64933/500000` |
| 146 | bound | `{"direction":"lo","ref":"155:146","triangle":"CFR","value":"370171/1000000"}` | `-1 * f * w + 1 * c * w + 1 * r + -1 * c + -370171/1000000` |
| 147 | bound | `{"direction":"hi","ref":"155:147","triangle":"CFR","value":"223241/250000"}` | `223241/250000 + 1 * f * w + -1 * c * w + -1 * r + 1 * c` |
| 150 | bound | `{"direction":"lo","ref":"155:150","triangle":"CHP","value":"93/1000"}` | `-1 * c * q + -1 * h * p + 1 * c * h + -93/1000` |
| 152 | bound | `{"direction":"lo","ref":"155:152","triangle":"CHQ","value":"138941/1000000"}` | `1 * c * v + 1 * h * u + -1 * c * h + -138941/1000000` |
| 154 | bound | `{"direction":"lo","ref":"155:154","triangle":"CHR","value":"412043/1000000"}` | `1 * c * w + 1 * h * r + -1 * c * h + -412043/1000000` |
| 155 | bound | `{"direction":"hi","ref":"155:155","triangle":"CHR","value":"999472675957/1000000000000"}` | `999472675957/1000000000000 + -1 * c * w + -1 * h * r + 1 * c * h` |
| 157 | bound | `{"direction":"hi","ref":"155:157","triangle":"CHS","value":"561769/1000000"}` | `561769/1000000 + -1 * c * k + -1 * h * j + 1 * c * h` |
| 158 | bound | `{"direction":"lo","ref":"155:158","triangle":"CPQ","value":"98411/1000000"}` | `-1 * p * v + 1 * c * v + 1 * q * u + -1 * c * q + -98411/1000000` |
| 160 | bound | `{"direction":"lo","ref":"155:160","triangle":"CPR","value":"38579/250000"}` | `-1 * p * w + 1 * c * w + 1 * q * r + -1 * c * q + -38579/250000` |
| 161 | bound | `{"direction":"hi","ref":"155:161","triangle":"CPR","value":"207111/500000"}` | `207111/500000 + 1 * p * w + -1 * c * w + -1 * q * r + 1 * c * q` |
| 164 | bound | `{"direction":"lo","ref":"155:164","triangle":"CQR","value":"132701/1000000"}` | `1 * u * w + -1 * c * w + -1 * v * r + 1 * c * v + -132701/1000000` |
| 166 | bound | `{"direction":"lo","ref":"155:166","triangle":"CQS","value":"27509/250000"}` | `1 * u * k + -1 * c * k + -1 * v * j + 1 * c * v + -27509/250000` |
| 168 | bound | `{"direction":"lo","ref":"155:168","triangle":"CRS","value":"149741/1000000"}` | `1 * r * k + -1 * c * k + -1 * w * j + 1 * c * w + -149741/1000000` |
| 169 | bound | `{"direction":"hi","ref":"155:169","triangle":"CRS","value":"94289/250000"}` | `94289/250000 + -1 * r * k + 1 * c * k + 1 * w * j + -1 * c * w` |
| 170 | bound | `{"direction":"lo","ref":"155:170","triangle":"EFH","value":"93/1000"}` | `1 * f * h + -1 * e * f + -1 * h + 907/1000` |
| 173 | bound | `{"direction":"hi","ref":"155:173","triangle":"EFP","value":"590639/1000000"}` | `-409361/1000000 + -1 * f * q + 1 * e * f + 1 * q + 1 * p + -1 * e * p` |
| 174 | bound | `{"direction":"lo","ref":"155:174","triangle":"EFQ","value":"189461/1000000"}` | `1 * f * v + -1 * e * f + -1 * v + -1 * u + 810539/1000000 + 1 * e * u` |
| 176 | bound | `{"direction":"lo","ref":"155:176","triangle":"EFR","value":"279/1000"}` | `-1 * f * w + 1 * e * f + 1 * w + 1 * r + -1279/1000 + -1 * e * r` |
| 178 | bound | `{"direction":"lo","ref":"155:178","triangle":"EFS","value":"93/1000"}` | `-1 * f * k + 1 * e * f + 1 * k + 1 * j + -1093/1000 + -1 * e * j` |
| 180 | bound | `{"direction":"lo","ref":"155:180","triangle":"EHP","value":"82303/500000"}` | `-1 * q + -1 * h * p + 1 * h + 1 * e * p + -82303/500000` |
| 181 | bound | `{"direction":"hi","ref":"155:181","triangle":"EHP","value":"159657/250000"}` | `159657/250000 + 1 * q + 1 * h * p + -1 * h + -1 * e * p` |
| 182 | bound | `{"direction":"lo","ref":"155:182","triangle":"EHQ","value":"103643/500000"}` | `-1 * v + -1 * h * u + 1 * h + 1 * e * u + -103643/500000` |
| 183 | bound | `{"direction":"hi","ref":"155:183","triangle":"EHQ","value":"632612246017/1000000000000"}` | `632612246017/1000000000000 + 1 * v + 1 * h * u + -1 * h + -1 * e * u` |
| 184 | bound | `{"direction":"lo","ref":"155:184","triangle":"EHR","value":"279/1000"}` | `1 * w + 1 * h * r + -1 * h + -1 * e * r + -279/1000` |
| 185 | bound | `{"direction":"hi","ref":"155:185","triangle":"EHR","value":"569777/1000000"}` | `569777/1000000 + -1 * w + -1 * h * r + 1 * h + 1 * e * r` |
| 186 | bound | `{"direction":"lo","ref":"155:186","triangle":"EHS","value":"93/1000"}` | `1 * k + 1 * h * j + -1 * h + -1 * e * j + -93/1000` |
| 188 | bound | `{"direction":"lo","ref":"155:188","triangle":"EPQ","value":"35299/250000"}` | `1 * p * v + -1 * e * p + -1 * v + -1 * q * u + 1 * q + 1 * e * u + -35299/250000` |
| 189 | bound | `{"direction":"hi","ref":"155:189","triangle":"EPQ","value":"314379/1000000"}` | `314379/1000000 + -1 * p * v + 1 * e * p + 1 * v + 1 * q * u + -1 * q + -1 * e * u` |
| 190 | bound | `{"direction":"lo","ref":"155:190","triangle":"EPR","value":"11387/62500"}` | `-1 * p * w + 1 * e * p + 1 * w + 1 * q * r + -1 * q + -1 * e * r + -11387/62500` |
| 192 | bound | `{"direction":"lo","ref":"155:192","triangle":"EPS","value":"135879/1000000"}` | `-1 * p * k + 1 * e * p + 1 * k + 1 * q * j + -1 * q + -1 * e * j + -135879/1000000` |
| 194 | bound | `{"direction":"lo","ref":"155:194","triangle":"EQR","value":"93/1000"}` | `-1 * u * w + 1 * e * u + 1 * w + 1 * v * r + -1 * v + -1 * e * r + -93/1000` |
| 196 | bound | `{"direction":"lo","ref":"155:196","triangle":"EQS","value":"71457/500000"}` | `-1 * u * k + 1 * e * u + 1 * k + 1 * v * j + -1 * v + -1 * e * j + -71457/500000` |
| 197 | bound | `{"direction":"hi","ref":"155:197","triangle":"EQS","value":"366200436547/1000000000000"}` | `366200436547/1000000000000 + 1 * u * k + -1 * e * u + -1 * k + -1 * v * j + 1 * v + 1 * e * j` |
| 198 | bound | `{"direction":"lo","ref":"155:198","triangle":"ERS","value":"93/1000"}` | `1 * r * k + -1 * e * r + -1 * k + -1 * w * j + 1 * w + 1 * e * j + -93/1000` |
| 202 | bound | `{"direction":"lo","ref":"155:202","triangle":"FHQ","value":"93113/1000000"}` | `-1 * f * v + -1 * h * u + 1 * f * h + 1 * u + -93113/1000000` |
| 203 | bound | `{"direction":"hi","ref":"155:203","triangle":"FHQ","value":"123279620757/200000000000"}` | `123279620757/200000000000 + 1 * f * v + 1 * h * u + -1 * f * h + -1 * u` |
| 204 | bound | `{"direction":"lo","ref":"155:204","triangle":"FHR","value":"93/1000"}` | `-1 * f * w + -1 * h * r + 1 * f * h + 1 * r + -93/1000` |
| 205 | bound | `{"direction":"hi","ref":"155:205","triangle":"FHR","value":"82921874739/250000000000"}` | `82921874739/250000000000 + 1 * f * w + 1 * h * r + -1 * f * h + -1 * r` |
| 206 | bound | `{"direction":"lo","ref":"155:206","triangle":"FHS","value":"23253/250000"}` | `-1 * f * k + -1 * h * j + 1 * f * h + 1 * j + -23253/250000` |
| 207 | bound | `{"direction":"hi","ref":"155:207","triangle":"FHS","value":"282168879433/1000000000000"}` | `282168879433/1000000000000 + 1 * f * k + 1 * h * j + -1 * f * h + -1 * j` |
| 208 | bound | `{"direction":"lo","ref":"155:208","triangle":"FPQ","value":"142821/1000000"}` | `1 * p * v + -1 * p + -1 * f * v + -1 * q * u + 1 * f * q + 1 * u + -142821/1000000` |
| 209 | bound | `{"direction":"hi","ref":"155:209","triangle":"FPQ","value":"398737/1000000"}` | `398737/1000000 + -1 * p * v + 1 * p + 1 * f * v + 1 * q * u + -1 * f * q + -1 * u` |
| 210 | bound | `{"direction":"lo","ref":"155:210","triangle":"FPR","value":"11753/40000"}` | `1 * p * w + -1 * p + -1 * f * w + -1 * q * r + 1 * f * q + 1 * r + -11753/40000` |
| 211 | bound | `{"direction":"hi","ref":"155:211","triangle":"FPR","value":"86956611079/125000000000"}` | `86956611079/125000000000 + -1 * p * w + 1 * p + 1 * f * w + 1 * q * r + -1 * f * q + -1 * r` |
| 214 | bound | `{"direction":"lo","ref":"155:214","triangle":"FQR","value":"4853/12500"}` | `1 * u * w + -1 * u + -1 * f * w + -1 * v * r + 1 * f * v + 1 * r + -4853/12500` |
| 215 | bound | `{"direction":"hi","ref":"155:215","triangle":"FQR","value":"97337317579/125000000000"}` | `97337317579/125000000000 + -1 * u * w + 1 * u + 1 * f * w + 1 * v * r + -1 * f * v + -1 * r` |
| 216 | bound | `{"direction":"lo","ref":"155:216","triangle":"FQS","value":"32019/250000"}` | `1 * u * k + -1 * u + -1 * f * k + -1 * v * j + 1 * f * v + 1 * j + -32019/250000` |
| 218 | bound | `{"direction":"lo","ref":"155:218","triangle":"FRS","value":"93/1000"}` | `-1 * r * k + 1 * r + 1 * f * k + 1 * w * j + -1 * f * w + -1 * j + -93/1000` |
| 220 | bound | `{"direction":"lo","ref":"155:220","triangle":"HPQ","value":"136759/1000000"}` | `1 * p * v + -1 * h * p + -1 * q * u + 1 * h * u + -136759/1000000` |
| 221 | bound | `{"direction":"hi","ref":"155:221","triangle":"HPQ","value":"78387/200000"}` | `78387/200000 + -1 * p * v + 1 * h * p + 1 * q * u + -1 * h * u` |
| 222 | bound | `{"direction":"lo","ref":"155:222","triangle":"HPR","value":"336651/1000000"}` | `1 * p * w + -1 * h * p + -1 * q * r + 1 * h * r + -336651/1000000` |
| 225 | bound | `{"direction":"hi","ref":"155:225","triangle":"HPS","value":"465707/1000000"}` | `465707/1000000 + -1 * p * k + 1 * h * p + 1 * q * j + -1 * h * j` |
| 226 | bound | `{"direction":"lo","ref":"155:226","triangle":"HQR","value":"109251/250000"}` | `1 * u * w + -1 * h * u + -1 * v * r + 1 * h * r + -109251/250000` |
| 227 | bound | `{"direction":"hi","ref":"155:227","triangle":"HQR","value":"436019/500000"}` | `436019/500000 + -1 * u * w + 1 * h * u + 1 * v * r + -1 * h * r` |
| 228 | bound | `{"direction":"lo","ref":"155:228","triangle":"HQS","value":"4421/25000"}` | `1 * u * k + -1 * h * u + -1 * v * j + 1 * h * j + -4421/25000` |
| 229 | bound | `{"direction":"hi","ref":"155:229","triangle":"HQS","value":"467793/1000000"}` | `467793/1000000 + -1 * u * k + 1 * h * u + 1 * v * j + -1 * h * j` |
| 231 | bound | `{"direction":"hi","ref":"155:231","triangle":"HRS","value":"342707758111/1000000000000"}` | `342707758111/1000000000000 + 1 * r * k + -1 * h * r + -1 * w * j + 1 * h * j` |
| 232 | bound | `{"direction":"lo","ref":"155:232","triangle":"PQR","value":"31611/125000"}` | `1 * u * w + -1 * q * u + -1 * p * w + -1 * v * r + 1 * p * v + 1 * q * r + -31611/125000` |
| 233 | bound | `{"direction":"hi","ref":"155:233","triangle":"PQR","value":"440141/1000000"}` | `440141/1000000 + -1 * u * w + 1 * q * u + 1 * p * w + 1 * v * r + -1 * p * v + -1 * q * r` |
| 235 | bound | `{"direction":"hi","ref":"155:235","triangle":"PQS","value":"67027/250000"}` | `67027/250000 + -1 * u * k + 1 * q * u + 1 * p * k + 1 * v * j + -1 * p * v + -1 * q * j` |
| 236 | bound | `{"direction":"lo","ref":"155:236","triangle":"PRS","value":"93/1000"}` | `1 * r * k + -1 * q * r + -1 * p * k + -1 * w * j + 1 * p * w + 1 * q * j + -93/1000` |
| 238 | bound | `{"direction":"lo","ref":"155:238","triangle":"QRS","value":"41791/250000"}` | `1 * r * k + -1 * v * r + -1 * u * k + -1 * w * j + 1 * u * w + 1 * v * j + -41791/250000` |
| 240 | coordinate | `{"box":155,"direction":"lo","value":"63981/500000","variable":"a"}` | `1 * a + -63981/500000` |
| 241 | coordinate | `{"box":155,"direction":"hi","value":"267919/500000","variable":"a"}` | `267919/500000 + -1 * a` |
| 242 | coordinate | `{"box":155,"direction":"lo","value":"26759/250000","variable":"b"}` | `1 * b + -26759/250000` |
| 243 | coordinate | `{"box":155,"direction":"hi","value":"349/1000","variable":"b"}` | `349/1000 + -1 * b` |
| 244 | coordinate | `{"box":155,"direction":"lo","value":"543729/1000000","variable":"c"}` | `1 * c + -543729/1000000` |
| 245 | coordinate | `{"box":155,"direction":"hi","value":"833809/1000000","variable":"c"}` | `833809/1000000 + -1 * c` |
| 246 | coordinate | `{"box":155,"direction":"lo","value":"430223/1000000","variable":"e"}` | `1 * e + -430223/1000000` |
| 247 | coordinate | `{"box":155,"direction":"hi","value":"343779/500000","variable":"e"}` | `343779/500000 + -1 * e` |
| 248 | coordinate | `{"box":155,"direction":"lo","value":"26759/250000","variable":"f"}` | `1 * f + -26759/250000` |
| 250 | coordinate | `{"box":155,"direction":"lo","value":"650033/1000000","variable":"h"}` | `1 * h + -650033/1000000` |
| 251 | coordinate | `{"box":155,"direction":"hi","value":"996827/1000000","variable":"h"}` | `996827/1000000 + -1 * h` |
| 252 | coordinate | `{"box":155,"direction":"lo","value":"308233/1000000","variable":"p"}` | `1 * p + -308233/1000000` |
| 253 | coordinate | `{"box":155,"direction":"hi","value":"555687/1000000","variable":"p"}` | `555687/1000000 + -1 * p` |
| 254 | coordinate | `{"box":155,"direction":"lo","value":"110481/500000","variable":"q"}` | `1 * q + -110481/500000` |
| 255 | coordinate | `{"box":155,"direction":"hi","value":"45487/100000","variable":"q"}` | `45487/100000 + -1 * q` |
| 256 | coordinate | `{"box":155,"direction":"lo","value":"763907/1000000","variable":"u"}` | `1 * u + -763907/1000000` |
| 257 | coordinate | `{"box":155,"direction":"hi","value":"1","variable":"u"}` | `1 + -1 * u` |
| 258 | coordinate | `{"box":155,"direction":"lo","value":"63981/500000","variable":"v"}` | `1 * v + -63981/500000` |
| 260 | coordinate | `{"box":155,"direction":"lo","value":"596701/1000000","variable":"r"}` | `1 * r + -596701/1000000` |
| 261 | coordinate | `{"box":155,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 262 | coordinate | `{"box":155,"direction":"lo","value":"205203/250000","variable":"w"}` | `1 * w + -205203/250000` |
| 263 | coordinate | `{"box":155,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 264 | coordinate | `{"box":155,"direction":"lo","value":"216739/500000","variable":"j"}` | `1 * j + -216739/500000` |
| 265 | coordinate | `{"box":155,"direction":"hi","value":"808307/1000000","variable":"j"}` | `808307/1000000 + -1 * j` |
| 266 | coordinate | `{"box":155,"direction":"lo","value":"164171/250000","variable":"k"}` | `1 * k + -164171/250000` |
| 267 | coordinate | `{"box":155,"direction":"hi","value":"895853/1000000","variable":"k"}` | `895853/1000000 + -1 * k` |
| 274 | physical | `{"factor":11}` | `-93/1000 + 1 * e` |
| 276 | physical | `{"factor":19}` | `-279/1000 + 1 * h + -1 * a` |
| 277 | physical | `{"factor":21}` | `-93/1000 + 1 * c` |
| 278 | physical | `{"factor":26}` | `907/1000 + -1 * a` |
| 280 | physical | `{"factor":51}` | `-93/1000 + 1 * h` |
| 282 | physical | `{"factor":59}` | `907/1000 + -1 * b` |
| 283 | physical | `{"factor":79}` | `907/1000 + -1 * f` |
| 284 | physical | `{"factor":101}` | `907/1000 + -1 * e` |
| 285 | physical | `{"factor":136}` | `1 * h + -1 * a` |
| 286 | physical | `{"factor":137}` | `1 * e + -1 * a` |
| 287 | physical | `{"factor":138}` | `1 * h + -1 * e` |
| 288 | physical | `{"factor":139}` | `1 * f + -1 * b` |
| 290 | physical | `{"factor":141}` | `1 * c * h + -135501/250000` |
| 291 | physical | `{"factor":142}` | `1 * c * h + -1 * a * b + -279/625` |
| 292 | physical | `{"factor":143}` | `407/500 + -1 * c * h + 1 * f * h + 1 * c * e + -1 * e * f` |
| 293 | physical | `{"factor":144}` | `721/1000 + -1 * f + -1 * e + 1 * e * f` |
| 294 | physical | `{"factor":145}` | `1 * e + -1 * b * e + -93/250` |
| 295 | physical | `{"factor":146}` | `-93/250 + -1 * b + 1 * f + 1 * e + -1 * e * f` |
| 296 | physical | `{"factor":147}` | `1 * u + -1 * c + -93/1000` |
| 297 | physical | `{"factor":148}` | `1 * e + -1 * v + -93/1000` |
| 298 | physical | `{"factor":149}` | `1 * e * u + -1 * c * e + -93/1000` |
| 299 | physical | `{"factor":150}` | `1 * e + -1 * v + -1 * c * e + 1 * c * v + -93/1000` |
| 300 | physical | `{"factor":151}` | `907/1000 + -1 * p + -1 * q` |
| 301 | physical | `{"factor":152}` | `552163324043/1000000000000 * c * h + -738163324043/1000000000000 * b * h + -738163324043/1000000000000 * a * c + 924163324043/1000000000000 * a * b` |
| 302 | physical | `{"factor":153}` | `738163324043/831163324043 + -1 * p + -1 * q` |
| 305 | physical | `{"factor":156}` | `1 * c * h * p + -1 * b * h * p + -93/1000 * c + -93/1000 * b` |
| 306 | physical | `{"factor":157}` | `1 * c * h * q + -1 * a * c * q + -93/1000 * h + -93/1000 * a` |
| 309 | physical | `{"factor":160}` | `127197587257/23250000000 * k + -1 + -80697587257/23250000000 * e + -1 * w` |
| 312 | physical | `{"factor":163}` | `194716295387/500000000000 * c * e + 363283704613/500000000000 * b * e + -279/250 * a * c + 279/250 * a` |
| 329 | physical | `{"factor":180}` | `109077772369/1000000000000 * c * k + -109077772369/1000000000000 * a * c + 651081772369/1000000000000 * a * j + 135501/250000 * b * k + -135501/250000 * a * b` |
| 370 | physical | `{"factor":221}` | `15400394647/500000000000 * b * w + -286402394647/500000000000 * a * b + 15400394647/500000000000 * a * r + 135501/250000 * a * p + 135501/250000 * b * q` |
| 372 | physical | `{"factor":223}` | `32315984429/62500000000 * u * w + 83352765571/62500000000 * b * w + -32315984429/62500000000 * v * r + -83352765571/62500000000 * b * v + -18507/10000 * a * u + 18507/10000 * a * r` |
| 465 | physical | `{"factor":316}` | `-99920379243/200000000000 * f * h + 99920379243/200000000000 * a * f + 279/250 * h * u + -279/250 * a * u` |
| 485 | physical | `{"factor":336}` | `-489331/500000 * h * r + 489331/500000 * a * r + 18507/10000 * h * u + -18507/10000 * a * u` |
| 527 | physical | `{"factor":378}` | `724466949271/1000000000000 * c * w + 391533050729/1000000000000 * b * w + -279/250 * c * h + 279/250 * h * r` |
| 599 | physical | `{"factor":450}` | `223241/250000 * u * w + 55759/250000 * b * w + -223241/250000 * v * r + -55759/250000 * b * v + 279/250 * f * v + -279/250 * u + -279/250 * f * w + 279/250 * r` |
| 612 | physical | `{"factor":463}` | `-28569451273/100000000000 * u * w + 28569451273/100000000000 * h * u + 28569451273/100000000000 * v * r + 83030548727/100000000000 * h * r + 279/250 * b * w + -279/250 * b * h` |
| 692 | physical | `{"factor":543}` | `60646777/200000000 * h + 143953223/200000000 * a + -1023/1000 * b * h + 1023/1000 * b * e` |
| 697 | physical | `{"factor":548}` | `-316783704613/500000000000 * b * e + 316783704613/500000000000 * a * b + 194716295387/500000000000 * a + -1023/1000 * a * c + 1023/1000 * c * e` |
| 709 | physical | `{"factor":560}` | `60646777/200000000 * f * h + 143953223/200000000 * a * f + -1023/1000 * b * h + 1023/1000 * b` |
| 772 | physical | `{"factor":623}` | `-574349/1000000 * b * q + -448651/1000000 * a * b + -574349/1000000 * a * p + 1023/1000 * b + 1023/1000 * a * f` |
| 773 | physical | `{"factor":624}` | `304778969443/500000000000 * f * q + 206721030557/500000000000 * b * q + -304778969443/500000000000 * p + 304778969443/500000000000 * b + 1023/1000 * h * p + -1023/1000 * b * h` |
| 777 | physical | `{"factor":628}` | `-17736488791/40000000000 * f * v + 23183511209/40000000000 * h * u + -23183511209/40000000000 * f * h + 17736488791/40000000000 * u + 1023/1000 * a * f + -1023/1000 * a * u` |
| 781 | physical | `{"factor":632}` | `-17736488791/40000000000 * f * w + 23183511209/40000000000 * h * r + -23183511209/40000000000 * f * h + 17736488791/40000000000 * r + 1023/1000 * a * f + -1023/1000 * a * r` |
| 859 | physical | `{"factor":710}` | `-128552412743/250000000000 * w + -127197587257/250000000000 * a + 128552412743/250000000000 * e * r + -128552412743/250000000000 * a * r + -1023/1000 * e * f + 1023/1000 + 1023/1000 * a * f` |
| 862 | physical | `{"factor":713}` | `-716431435141/1000000000000 * k + -306568564859/1000000000000 * a + 716431435141/1000000000000 * e * j + -716431435141/1000000000000 * a * j + -1023/1000 * e * f + 1023/1000 + 1023/1000 * a * f` |
| 900 | physical | `{"factor":751}` | `44776948211/62500000000 * r * k + -44776948211/62500000000 * a * r + -44776948211/62500000000 * w * j + -19160551789/62500000000 * a * j + -1023/1000 * f * k + 1023/1000 * j + 1023/1000 * a * f` |
| 909 | physical | `{"factor":760}` | `-261650704833/500000000000 * c + -249849295167/500000000000 * b + 1023/1000 * b * e + 1023/1000 + -1023/1000 * e * f` |
| 943 | physical | `{"factor":794}` | `-132242822041/250000000000 * u * w + 132242822041/250000000000 * c * w + 132242822041/250000000000 * v * r + 123507177959/250000000000 * c * v + 1023/1000 * u * k + -1023/1000 * v * j + -1023/1000 * c * k` |
| 969 | physical | `{"factor":820}` | `-199729887321/500000000000 * f * h + -311770112679/500000000000 * e * f + 199729887321/500000000000 * h + 311770112679/500000000000 + -1023/1000 * c + 1023/1000 * c * e` |
| 987 | physical | `{"factor":838}` | `191918143371/250000000000 * f * v + -191918143371/250000000000 * c * v + -191918143371/250000000000 * u + -63831856629/250000000000 * c + 1023/1000 * c * e + -1023/1000 * e * f + 1023/1000` |
| 990 | physical | `{"factor":841}` | `367209265871/1000000000000 * f * k + -367209265871/1000000000000 * e * f + 655790734129/1000000000000 * k + -367209265871/1000000000000 * j + 367209265871/1000000000000 + -655790734129/1000000000000 * e * j + -1023/1000 * c * k + 1023/1000 * c * e` |
| 1044 | physical | `{"factor":895}` | `-158972488467/250000000000 * p * v + -96777511533/250000000000 * p + 158972488467/250000000000 * f * v + 158972488467/250000000000 * q * u + 96777511533/250000000000 * f * q + -158972488467/250000000000 * u + 1023/1000 * e * p + -1023/1000 * q + -1023/1000 * e * f + 1023/1000` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 1958900 | 0, 142 |
| 1 | 414000 | 0, 253 |
| 2 | 18694200 | 0, 261 |
| 3 | 1974000 | 1, 158 |
| 4 | 1164800 | 1, 194 |
| 5 | 259300 | 1, 196 |
| 6 | 1822400 | 2, 80 |
| 7 | 1614300 | 2, 142 |
| 8 | 1842100 | 2, 178 |
| 9 | 177300 | 2, 186 |
| 10 | 960200 | 3, 157 |
| 11 | 3215400 | 3, 245 |
| 12 | 2624800 | 3, 288 |
| 13 | 316800 | 4, 233 |
| 14 | 2686700 | 6, 210 |
| 15 | 478900 | 6, 295 |
| 16 | 130600 | 7, 136 |
| 17 | 14432900 | 7, 257 |
| 18 | 296700 | 8, 261 |
| 19 | 3900 | 9, 204 |
| 20 | 26862200 | 12, 150 |
| 21 | 1030000 | 12, 158 |
| 22 | 114983200 | 12, 186 |
| 23 | 81300 | 12, 220 |
| 24 | 113015300 | 12, 266 |
| 25 | 747200 | 12, 298 |
| 26 | 155900 | 13, 157 |
| 27 | 916300 | 13, 235 |
| 28 | 1123500 | 13, 257 |
| 29 | 115090800 | 14, 185 |
| 30 | 357200 | 15, 176 |
| 31 | 6700 | 15, 204 |
| 32 | 1648500 | 15, 245 |
| 33 | 9500 | 15, 251 |
| 34 | 5169300 | 16, 118 |
| 35 | 25857100 | 16, 233 |
| 36 | 8248200 | 17, 164 |
| 37 | 1085800 | 17, 245 |
| 38 | 2615900 | 17, 288 |
| 39 | 3330300 | 18, 118 |
| 40 | 208500 | 18, 126 |
| 41 | 262500 | 18, 194 |
| 42 | 289700 | 18, 235 |
| 43 | 300500 | 18, 236 |
| 44 | 78700 | 19, 150 |
| 45 | 701100 | 19, 298 |
| 46 | 12793400 | 20, 118 |
| 47 | 907500 | 20, 120 |
| 48 | 5176000 | 20, 158 |
| 49 | 1186500 | 20, 218 |
| 50 | 273795200 | 20, 233 |
| 51 | 833300 | 20, 236 |
| 52 | 6138800 | 21, 142 |
| 53 | 17247200 | 21, 261 |
| 54 | 4046200 | 21, 288 |
| 55 | 25746200 | 22, 112 |
| 56 | 22998400 | 24, 118 |
| 57 | 5017500 | 25, 204 |
| 58 | 94600 | 26, 178 |
| 59 | 1332400 | 26, 196 |
| 60 | 1388800 | 27, 183 |
| 61 | 22705300 | 27, 189 |
| 62 | 101300 | 27, 190 |
| 63 | 86500 | 27, 227 |
| 64 | 1091900 | 27, 229 |
| 65 | 335500 | 27, 245 |
| 66 | 13406200 | 27, 258 |
| 67 | 63000 | 28, 158 |
| 68 | 789500 | 29, 190 |
| 69 | 2929700 | 30, 118 |
| 70 | 1633600 | 30, 126 |
| 71 | 1118300 | 30, 299 |
| 72 | 1916300 | 31, 134 |
| 73 | 90100 | 31, 150 |
| 74 | 150222300 | 33, 60 |
| 75 | 324798200 | 33, 70 |
| 76 | 10872700 | 33, 105 |
| 77 | 118939400 | 33, 134 |
| 78 | 2686700 | 33, 142 |
| 79 | 154962900 | 33, 150 |
| 80 | 82888800 | 33, 178 |
| 81 | 22522300 | 33, 194 |
| 82 | 51856300 | 33, 204 |
| 83 | 49693100 | 33, 261 |
| 84 | 3504300 | 33, 299 |
| 85 | 916300 | 34, 123 |
| 86 | 2283100 | 34, 147 |
| 87 | 2101600 | 34, 155 |
| 88 | 726100 | 34, 169 |
| 89 | 467700 | 34, 185 |
| 90 | 281500 | 34, 186 |
| 91 | 3900 | 34, 207 |
| 92 | 459800 | 34, 227 |
| 93 | 278500 | 34, 228 |
| 94 | 89200 | 34, 231 |
| 95 | 530200 | 35, 126 |
| 96 | 4156500 | 35, 288 |
| 97 | 800700 | 37, 136 |
| 98 | 24285000 | 38, 158 |
| 99 | 1541400 | 38, 288 |
| 100 | 850400 | 39, 174 |
| 101 | 4301100 | 39, 209 |
| 102 | 158600 | 41, 174 |
| 103 | 606000 | 42, 158 |
| 104 | 1091900 | 42, 168 |
| 105 | 742200 | 43, 80 |
| 106 | 2225900 | 43, 194 |
| 107 | 865000 | 43, 299 |
| 108 | 1281400 | 44, 80 |
| 109 | 500500 | 44, 194 |
| 110 | 3751300 | 44, 263 |
| 111 | 259300 | 46, 236 |
| 112 | 576000 | 47, 294 |
| 113 | 10800 | 48, 194 |
| 114 | 18500 | 48, 196 |
| 115 | 2621400 | 48, 245 |
| 116 | 2294400 | 48, 257 |
| 117 | 2503500 | 48, 263 |
| 118 | 539600 | 48, 299 |
| 119 | 2023600 | 49, 80 |
| 120 | 4848800 | 49, 150 |
| 121 | 1685300 | 50, 194 |
| 122 | 122900 | 52, 218 |
| 123 | 24708600 | 54, 118 |
| 124 | 1224600 | 54, 236 |
| 125 | 27191700 | 54, 245 |
| 126 | 2565400 | 55, 142 |
| 127 | 101300 | 56, 118 |
| 128 | 789500 | 56, 120 |
| 129 | 1360800 | 56, 295 |
| 130 | 510300 | 57, 178 |
| 131 | 112100 | 57, 194 |
| 132 | 6700 | 57, 204 |
| 133 | 1336500 | 59, 194 |
| 134 | 145100 | 59, 261 |
| 135 | 100800 | 60, 88 |
| 136 | 18890700 | 60, 105 |
| 137 | 386100 | 60, 107 |
| 138 | 1096500 | 60, 112 |
| 139 | 23596100 | 60, 137 |
| 140 | 5017500 | 60, 141 |
| 141 | 23871100 | 60, 146 |
| 142 | 285216900 | 60, 154 |
| 143 | 20207900 | 60, 260 |
| 144 | 46392300 | 60, 277 |
| 145 | 150222300 | 60, 278 |
| 146 | 150294100 | 60, 280 |
| 147 | 25655700 | 60, 282 |
| 148 | 6467500 | 60, 283 |
| 149 | 10800 | 60, 293 |
| 150 | 282379700 | 62, 152 |
| 151 | 789500 | 62, 166 |
| 152 | 10800 | 62, 178 |
| 153 | 441950900 | 62, 186 |
| 154 | 112100 | 62, 227 |
| 155 | 19911200 | 63, 257 |
| 156 | 441775400 | 64, 185 |
| 157 | 1705800 | 64, 227 |
| 158 | 282766600 | 66, 150 |
| 159 | 694300 | 66, 178 |
| 160 | 14710900 | 67, 75 |
| 161 | 101300 | 67, 83 |
| 162 | 789500 | 67, 85 |
| 163 | 1196400 | 67, 108 |
| 164 | 2015100 | 67, 128 |
| 165 | 2565400 | 67, 143 |
| 166 | 112100 | 67, 146 |
| 167 | 415800 | 67, 225 |
| 168 | 6890600 | 67, 245 |
| 169 | 19911200 | 67, 252 |
| 170 | 61500 | 67, 295 |
| 171 | 695600 | 69, 176 |
| 172 | 500500 | 69, 190 |
| 173 | 116930300 | 70, 88 |
| 174 | 186900 | 70, 92 |
| 175 | 916300 | 70, 109 |
| 176 | 262600 | 70, 110 |
| 177 | 773400 | 70, 130 |
| 178 | 605200 | 70, 141 |
| 179 | 10800 | 70, 154 |
| 180 | 440953100 | 70, 180 |
| 181 | 314300 | 70, 203 |
| 182 | 270100 | 70, 208 |
| 183 | 105400 | 70, 214 |
| 184 | 734600 | 70, 220 |
| 185 | 21400 | 70, 226 |
| 186 | 3464600 | 70, 277 |
| 187 | 324798200 | 70, 278 |
| 188 | 324807700 | 70, 280 |
| 189 | 1842100 | 70, 282 |
| 190 | 119100 | 70, 283 |
| 191 | 912800 | 70, 292 |
| 192 | 110000 | 70, 297 |
| 193 | 726100 | 71, 80 |
| 194 | 13200 | 73, 134 |
| 195 | 1934000 | 73, 158 |
| 196 | 3015100 | 75, 178 |
| 197 | 63400 | 76, 236 |
| 198 | 11749700 | 77, 258 |
| 199 | 391800 | 77, 288 |
| 200 | 259300 | 78, 238 |
| 201 | 4256300 | 80, 83 |
| 202 | 1060700 | 80, 86 |
| 203 | 691500 | 80, 100 |
| 204 | 275000 | 80, 130 |
| 205 | 4494800 | 80, 141 |
| 206 | 2835800 | 80, 147 |
| 207 | 794500 | 80, 173 |
| 208 | 63400 | 80, 198 |
| 209 | 5228000 | 80, 205 |
| 210 | 86900 | 80, 211 |
| 211 | 3785000 | 80, 277 |
| 212 | 4482600 | 80, 278 |
| 213 | 12332800 | 80, 280 |
| 214 | 2288300 | 80, 282 |
| 215 | 111300 | 80, 283 |
| 216 | 11330000 | 80, 292 |
| 217 | 85000 | 83, 158 |
| 218 | 25600 | 83, 227 |
| 219 | 189700 | 83, 263 |
| 220 | 63000 | 85, 158 |
| 221 | 2619800 | 87, 186 |
| 222 | 17720 | 87, 309 |
| 223 | 121800 | 88, 194 |
| 224 | 958300 | 89, 107 |
| 225 | 500700 | 89, 266 |
| 226 | 1231300 | 90, 98 |
| 227 | 386100 | 90, 112 |
| 228 | 1684200 | 90, 146 |
| 229 | 787500 | 90, 154 |
| 230 | 63400 | 90, 168 |
| 231 | 1451500 | 90, 202 |
| 232 | 63400 | 90, 238 |
| 233 | 2330000 | 90, 244 |
| 234 | 128100 | 90, 256 |
| 235 | 783100 | 90, 260 |
| 236 | 4000 | 90, 287 |
| 237 | 49700 | 90, 290 |
| 238 | 121800 | 91, 194 |
| 239 | 13200 | 91, 299 |
| 240 | 5418200 | 94, 144 |
| 241 | 1306000 | 94, 158 |
| 242 | 149574300 | 94, 206 |
| 243 | 1315400 | 94, 208 |
| 244 | 10600 | 94, 293 |
| 245 | 8400 | 94, 302 |
| 246 | 63400 | 96, 144 |
| 247 | 477000 | 96, 204 |
| 248 | 169900 | 97, 295 |
| 249 | 572200 | 98, 126 |
| 250 | 8432000 | 98, 158 |
| 251 | 5745200 | 102, 150 |
| 252 | 2883100 | 103, 294 |
| 253 | 1239500 | 104, 134 |
| 254 | 150558500 | 105, 186 |
| 255 | 4737800 | 105, 251 |
| 256 | 3175680 | 105, 309 |
| 257 | 110500 | 108, 299 |
| 258 | 1231300 | 110, 118 |
| 259 | 63400 | 110, 178 |
| 260 | 322700 | 110, 236 |
| 261 | 386100 | 112, 120 |
| 262 | 805700 | 112, 134 |
| 263 | 19309000 | 112, 158 |
| 264 | 152191800 | 112, 178 |
| 265 | 418800 | 112, 294 |
| 266 | 211300 | 112, 299 |
| 267 | 383600 | 113, 142 |
| 268 | 628700 | 113, 288 |
| 269 | 1643400 | 113, 302 |
| 270 | 1198600 | 114, 294 |
| 271 | 530200 | 115, 190 |
| 272 | 372800 | 118, 141 |
| 273 | 4305800 | 118, 144 |
| 274 | 3708500 | 118, 282 |
| 275 | 3584300 | 118, 285 |
| 276 | 385900 | 118, 296 |
| 277 | 10800 | 119, 204 |
| 278 | 10800 | 120, 154 |
| 279 | 252200 | 120, 184 |
| 280 | 1739000 | 120, 280 |
| 281 | 22374200 | 122, 150 |
| 282 | 10800 | 122, 204 |
| 283 | 854200 | 124, 204 |
| 284 | 111300 | 125, 295 |
| 285 | 18383900 | 126, 131 |
| 286 | 132035400 | 126, 170 |
| 287 | 126800 | 126, 183 |
| 288 | 126800 | 126, 226 |
| 289 | 2196600 | 126, 277 |
| 290 | 227594900 | 126, 278 |
| 291 | 113362100 | 126, 280 |
| 292 | 19280600 | 126, 292 |
| 293 | 14458400 | 128, 258 |
| 294 | 32514000 | 128, 263 |
| 295 | 1409600 | 131, 134 |
| 296 | 6700 | 131, 204 |
| 297 | 8544000 | 133, 245 |
| 298 | 8775700 | 134, 146 |
| 299 | 2236700 | 134, 176 |
| 300 | 176800 | 134, 210 |
| 301 | 1338500 | 134, 222 |
| 302 | 2338300 | 134, 260 |
| 303 | 19374200 | 134, 277 |
| 304 | 124743600 | 134, 278 |
| 305 | 121171100 | 134, 280 |
| 306 | 594700 | 134, 284 |
| 307 | 13200 | 136, 189 |
| 308 | 2133400 | 136, 220 |
| 309 | 3034800 | 136, 293 |
| 310 | 406800 | 136, 302 |
| 311 | 10800 | 137, 204 |
| 312 | 1934000 | 141, 150 |
| 313 | 259300 | 142, 238 |
| 314 | 1127800 | 143, 194 |
| 315 | 1686400 | 146, 150 |
| 316 | 549000 | 146, 196 |
| 317 | 10800 | 146, 236 |
| 318 | 1186500 | 147, 186 |
| 319 | 3179800 | 150, 214 |
| 320 | 114481400 | 150, 232 |
| 321 | 1332400 | 150, 260 |
| 322 | 6900 | 150, 274 |
| 323 | 8738100 | 150, 277 |
| 324 | 154891100 | 150, 278 |
| 325 | 154962900 | 150, 280 |
| 326 | 1928100 | 150, 282 |
| 327 | 11688700 | 150, 283 |
| 328 | 1934000 | 150, 292 |
| 329 | 294500 | 150, 296 |
| 330 | 604700 | 150, 297 |
| 331 | 1959500 | 152, 288 |
| 332 | 101300 | 154, 194 |
| 333 | 6700 | 154, 204 |
| 334 | 317400 | 154, 288 |
| 335 | 1426300 | 154, 295 |
| 336 | 1550000 | 158, 176 |
| 337 | 3498000 | 158, 184 |
| 338 | 1455000 | 158, 205 |
| 339 | 114481000 | 158, 222 |
| 340 | 618000 | 158, 241 |
| 341 | 14603000 | 158, 245 |
| 342 | 1389000 | 158, 247 |
| 343 | 2106000 | 158, 248 |
| 344 | 122000 | 158, 263 |
| 345 | 4270000 | 158, 276 |
| 346 | 4618000 | 158, 288 |
| 347 | 117000 | 158, 293 |
| 348 | 1069200 | 160, 288 |
| 349 | 114481400 | 161, 220 |
| 350 | 112100 | 164, 210 |
| 351 | 24915700 | 164, 247 |
| 352 | 24547800 | 164, 287 |
| 353 | 8619300 | 164, 293 |
| 354 | 258200 | 164, 302 |
| 355 | 94600 | 168, 204 |
| 356 | 505700 | 168, 288 |
| 357 | 2142800 | 170, 196 |
| 358 | 10412600 | 170, 253 |
| 359 | 3195800 | 170, 261 |
| 360 | 67900 | 176, 188 |
| 361 | 2814100 | 176, 286 |
| 362 | 2161000 | 176, 296 |
| 363 | 122900 | 178, 181 |
| 364 | 158600 | 178, 188 |
| 365 | 1399900 | 178, 226 |
| 366 | 356200 | 178, 260 |
| 367 | 10560400 | 178, 262 |
| 368 | 693000 | 178, 274 |
| 369 | 3448500 | 178, 277 |
| 370 | 85189700 | 178, 278 |
| 371 | 85747300 | 178, 280 |
| 372 | 715700 | 178, 297 |
| 373 | 459000 | 182, 294 |
| 374 | 158600 | 183, 236 |
| 375 | 438400 | 185, 235 |
| 376 | 1336500 | 186, 215 |
| 377 | 990200 | 186, 242 |
| 378 | 696800 | 186, 248 |
| 379 | 335200 | 186, 261 |
| 380 | 285400 | 188, 218 |
| 381 | 349300 | 190, 293 |
| 382 | 45600 | 192, 251 |
| 383 | 53600 | 194, 255 |
| 384 | 715700 | 194, 267 |
| 385 | 27097100 | 194, 277 |
| 386 | 20291800 | 194, 278 |
| 387 | 34832100 | 194, 280 |
| 388 | 37629000 | 194, 282 |
| 389 | 7345800 | 194, 283 |
| 390 | 2236700 | 194, 292 |
| 391 | 42800 | 196, 251 |
| 392 | 47900 | 197, 288 |
| 393 | 47300 | 198, 288 |
| 394 | 763700 | 203, 263 |
| 395 | 154800 | 204, 253 |
| 396 | 690600 | 204, 265 |
| 397 | 1038900 | 204, 266 |
| 398 | 748000 | 204, 274 |
| 399 | 19400000 | 204, 277 |
| 400 | 51853500 | 204, 278 |
| 401 | 51863000 | 204, 280 |
| 402 | 1492400 | 204, 282 |
| 403 | 31507600 | 214, 246 |
| 404 | 16618700 | 214, 286 |
| 405 | 63760 | 215, 309 |
| 406 | 763600 | 216, 246 |
| 407 | 63400 | 216, 294 |
| 408 | 481300 | 218, 286 |
| 409 | 2147700 | 221, 294 |
| 410 | 719900 | 222, 295 |
| 411 | 10212100 | 227, 247 |
| 412 | 415800 | 235, 276 |
| 413 | 311852300 | 236, 278 |
| 414 | 313636900 | 236, 280 |
| 415 | 130806600 | 236, 285 |
| 416 | 103098600 | 240, 261 |
| 417 | 1950100 | 242, 295 |
| 418 | 2690000 | 243, 306 |
| 419 | 2574100 | 245, 250 |
| 420 | 30553900 | 245, 258 |
| 421 | 99470700 | 245, 276 |
| 422 | 133454000 | 245, 287 |
| 423 | 963000 | 245, 306 |
| 424 | 462000 | 246, 251 |
| 425 | 11556700 | 246, 257 |
| 426 | 683100 | 246, 263 |
| 427 | 15574100 | 247, 288 |
| 428 | 7900 | 251, 286 |
| 429 | 8849900 | 251, 288 |
| 430 | 6179600 | 252, 295 |
| 431 | 447000 | 254, 263 |
| 432 | 4620000 | 255, 288 |
| 433 | 2459600 | 256, 288 |
| 434 | 183452100 | 257, 286 |
| 435 | 3855300 | 257, 294 |
| 436 | 1337000 | 257, 306 |
| 437 | 19303600 | 258, 292 |
| 438 | 182500 | 258, 302 |
| 439 | 60427800 | 260, 294 |
| 440 | 3611000 | 260, 306 |
| 441 | 9100 | 261, 265 |
| 442 | 10815400 | 261, 288 |
| 443 | 10063300 | 261, 293 |
| 444 | 387100 | 261, 302 |
| 445 | 93974000 | 262, 288 |
| 446 | 2658000 | 263, 305 |
| 447 | 2284500 | 264, 294 |
| 448 | 553900 | 264, 295 |
| 449 | 1315900 | 267, 295 |
| 450 | 623000 | 276, 295 |
| 451 | 523700 | 277, 299 |
| 452 | 32450800 | 278, 288 |
| 453 | 2849400 | 280, 299 |
| 454 | 8368300 | 283, 299 |
| 455 | 21402800 | 284, 288 |
| 456 | 1712000 | 286, 295 |
| 457 | 892900 | 287, 298 |
| 458 | 6009600 | 288, 300 |
| 459 | 13722000 | 288, 306 |
| 460 | 429900 | 291, 295 |
| 461 | 1210700 | 293, 296 |
| 462 | 949800 | 299, 301 |
| 463 | 5181600 | 263, 312 |
| 464 | 177226000 | 263, 329 |
| 465 | 15000 | 258, 370 |
| 466 | 455900 | 263, 372 |
| 467 | 12014500 | 263, 465 |
| 468 | 1696000 | 263, 485 |
| 469 | 6672100 | 258, 527 |
| 470 | 659500 | 263, 599 |
| 471 | 1999000 | 263, 612 |
| 472 | 6146900 | 263, 692 |
| 473 | 33243200 | 257, 697 |
| 474 | 7725100 | 257, 709 |
| 475 | 356100 | 263, 772 |
| 476 | 6583000 | 245, 773 |
| 477 | 5395000 | 263, 773 |
| 478 | 21571000 | 263, 777 |
| 479 | 15886400 | 258, 781 |
| 480 | 2075300 | 257, 859 |
| 481 | 3224400 | 263, 862 |
| 482 | 358700 | 258, 900 |
| 483 | 2478400 | 258, 909 |
| 484 | 1102200 | 263, 909 |
| 485 | 32000 | 248, 943 |
| 486 | 359000 | 263, 943 |
| 487 | 25342300 | 258, 969 |
| 488 | 5505600 | 263, 987 |
| 489 | 18523000 | 263, 990 |
| 490 | 28300 | 263, 1044 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `a * b * f * q` | 100 |
| `a * b * c * q` | 704500 |
| `a * b * p` | -3861500 |
| `a * b * c` | -15099200 |
| `a * b` | 443995112551855296611/50000000000000 |
| `a * c * f * q` | -700 |
| `a * c * c * q` | -400 |
| `a * c * p` | 6708900 |
| `a * c * c` | 6676400 |
| `a * c` | -116729846801793062749/5000000000000 |
| `f * q` | -48979955457369368379/500000000000000 |
| `c * q` | -4157401167914317/2500000000 |
| `p` | -1134512125723530631621/500000000000000 |
| `c` | -1367469206636560245773/156250000000000 |
| `1` | -20737322516207693238563132813105235450759/129869269381718750000000000000000 |
| `a * b * r` | -100 |
| `r` | 78255978322480777735044133927713/10389541550537500000000000 |
| `p * v` | 2723404760549599/10000000000 |
| `c * v` | 21109625998536604718009306243843/6493463469085937500000000 |
| `q * u` | -3267404760549599/10000000000 |
| `a * b * p * v` | 572900 |
| `a * b * c * v` | -3148374119793/5000000000 |
| `a * b * q * u` | 1111000 |
| `a * c * p * v` | -900 |
| `a * c * c * v` | 1670462374119793/5000000000 |
| `a * c * q * u` | -346100 |
| `u * w` | 22726507990509876949966175178497/25973853876343750000000000 |
| `e * u` | 442306680517584473/930000000000 |
| `w` | 248314947719926703866188126677/2597385387634375000000 |
| `v * r` | 30126492215762020472175489202753/25973853876343750000000000 |
| `v` | -711247441280502660246905298751/4155816620215000000000 |
| `e * r` | -14012807966795407673485872438337/772981891359990000000000 |
| `a * b * u * w` | 18757700 |
| `a * b * e * u` | 100 |
| `a * b * w` | -254100344749/10000 |
| `a * b * v` | -2832811985077257/5000000000 |
| `a * c * u * w` | -24232700 |
| `a * c * e * u` | -100 |
| `a * c * w` | 14257841442934197/500000000 |
| `a * c * v * r` | 800 |
| `a * c * v` | -1814462374119793/5000000000 |
| `u * k` | 835617823605847/232500000000 |
| `k` | 90300553240405042355169991/36328125000000000000 |
| `v * j` | -8804171382179/2500000000 |
| `e * j` | -29649348679556491/1250000000 |
| `a * b * k` | 100 |
| `a * b * e * j` | -100 |
| `a * c * v * j` | -400 |
| `a * c * e * j` | 100 |
| `b * c * e * v` | -300 |
| `b * e` | 662128900758725692466450514701/48311368209999375000000 |
| `a * b * b * v` | 1822400 |
| `a` | 105354725944645909/10000000000 |
| `b * v` | 46263214982901199/5000000000 |
| `b * c * e * q` | 191300 |
| `b * e * p` | -12900 |
| `b * c * e` | 3849300 |
| `a * f * q` | -100 |
| `a * c * q` | 47479811/250 |
| `a * p` | -29860852286618287/10000000000 |
| `b * e * f * k` | -100 |
| `b * e * e * f` | 2022600 |
| `b * e * k` | 163770843845149/581250000 |
| `b * e * j` | -7421900 |
| `b * e * e * j` | 600400 |
| `a * b * e * f` | -100 |
| `a * f * k` | -100 |
| `a * j` | 30999882224731513783/312500000000000 |
| `a * e * j` | -110000 |
| `f * k` | -61936639200667721/5000000000 |
| `e * f` | 3010320060968523833877/2500000000000000 |
| `j` | 52511844200667721/5000000000 |
| `b * e * h` | -869537625880207/5000000000 |
| `a * b * h` | 60200 |
| `a * h` | 16800 |
| `h * j` | -2007708078847811/5000000000 |
| `h` | -21482770971371525666123/2500000000000000 |
| `c * k` | 61814046767097/500000000 |
| `c * h` | 102194839195169924749/5000000000000 |
| `b * c * e * k` | 100 |
| `b * c * e * h` | 37625880207/5000000000 |
| `a * b * c * k` | -100 |
| `a * b * c * h` | 100 |
| `a * c * h` | -85500 |
| `f` | 66805884019638781/10000000000 |
| `b` | 31296343125939915590473/2500000000000000 |
| `b * e * f` | -1740300 |
| `b * b * e` | 184600 |
| `a * b * f` | 1716000 |
| `a * b * b` | -1716000 |
| `a * f` | 363848463431607/400000000 |
| `b * u * w` | 12361000 |
| `b * q * u` | 864000 |
| `b * p * w` | 308400 |
| `b * v * r` | -11623500 |
| `b * p * v` | -606200 |
| `b * q * r` | 263700 |
| `a * b * p * w` | 4562400 |
| `a * f * u * w` | 4188400 |
| `a * f * q * u` | 500 |
| `a * f * p * w` | -100 |
| `a * f * v * r` | -100 |
| `a * f * p * v` | -500 |
| `p * w` | 270019585415611/1250000000 |
| `q * r` | 524505782828771/1250000000 |
| `b * h * p * w` | -1372200 |
| `b * h * p` | 1021500 |
| `b * h * q * r` | -158100 |
| `b * h * r` | 983400 |
| `b * h` | -85847660900815340356126209728207/4155816620215000000000000 |
| `a * b * f * w` | -2099000 |
| `f * w` | 10589327375556151309/12500000000000 |
| `b * b * h` | -541100 |
| `b * f * h` | 7000 |
| `a * b * e` | -155148374119793/5000000000 |
| `e` | 689235994902731756910455009/36328125000000000000 |
| `c * w` | -9996967704063446943457501918506073/4155816620215000000000000000 |
| `c * e` | 92181365270251414106707736679/4155816620215000000000 |
| `b * h * w` | 247335477/10 |
| `b * c * h * w` | -9600200 |
| `a * b * c * w` | 18206100 |
| `a * b * c * e` | 148374119793/5000000000 |
| `u` | -10811076241503583/10000000000 |
| `b * h * u` | 203761773/10 |
| `a * b * u` | -4871846280744301/312500000 |
| `b * q` | 174504416011665918379/500000000000000 |
| `a * p * r` | 100 |
| `h * r` | -6403764753042810109407727390213/10389541550537500000000000 |
| `f * h` | 413209803830768154323/2500000000000000 |
| `b * f * q * w` | -100 |
| `a * b * f * h` | 10600 |
| `a * f * h * p` | 100 |
| `b * c * q * w` | -500 |
| `b * w` | -58626601591864910735028895607673747/4155816620215000000000000000 |
| `a * c * q * r` | -700 |
| `a * r` | -270471032978783157/1250000000000000 |
| `h * p` | 300502597630951/312500000 |
| `b * p * v * w` | -700 |
| `b * c * v * w` | 500 |
| `b * q * u * w` | 700 |
| `a * p * v * r` | -800 |
| `a * q * u * r` | 900 |
| `b * w * k` | -357398394953/12109375 |
| `b * h * w * j` | -1163400 |
| `b * e * w * j` | 100 |
| `a * r * k` | 100 |
| `a * h * r * j` | 200 |
| `a * h * r` | -100 |
| `a * e * r * j` | -200 |
| `b * h * u * w` | -24514800 |
| `a * b * h * u` | -80400 |
| `a * h * u * r` | 100 |
| `h * u` | 62406143899856213/5000000000 |
| `b * e * u * w` | 2729000 |
| `b * c * e * w` | -4741200 |
| `a * e * u * r` | 100 |
| `b * c * w * k` | 145100 |
| `a * c * r * k` | 100 |
| `p * k` | -232636244481/5000000000 |
| `q * j` | 232636244481/5000000000 |
| `a * u * r * k` | -100 |
| `a * u * r` | 98221655479/2500000000 |
| `b * k` | -1943504453097602237/186000000000 |
| `b * h * k` | 1300 |
| `b * e * r * k` | -386200 |
| `a * w * j` | -19736459499923/312500000 |
| `b * f * w * k` | -922400 |
| `b * r * k` | 166200 |
| `a * f * w * j` | -145100 |
| `a * e * f * j` | 100 |
| `b * f * h * k` | -12600 |
| `b * c * k` | -187500 |
| `a * c * j` | -119000 |
| `c * e * p * w` | -954600 |
| `c * e * q * r` | 100 |
| `a * c * p * w` | -8173400 |
| `a * p * w` | 39558256789/10000 |
| `a * b * q` | -1344700 |
| `c * e * u * w` | -2690700 |
| `c * e * q * u` | -665400 |
| `c * e * v * r` | -200 |
| `c * e * p * v` | 1011900 |
| `a * u * w` | 1072013633/100 |
| `a * q * u` | 68900 |
| `a * v * r` | -272623332903/2500000000 |
| `a * p * v` | -3038497/50 |
| `c * c * e * w` | -527500 |
| `a * c * c * w` | -8248200 |
| `c * c * e` | -791300 |
| `c * e * f` | -220700 |
| `a * c * f` | 4040700 |
| `c * p * w` | -667400 |
| `b * c * w` | 5855300 |
| `c * q * r` | -300 |
| `b * c * q` | -86594544156731/500000000 |
| `c * r * k` | 100 |
| `c * w * j` | -100 |
| `a * c * w * j` | 145000 |
| `r * k` | -1504749751084456749431/29062500000000000 |
| `w * j` | -8138126683603795033/312500000000000 |
| `c * u * w` | 321600 |
| `c * e * u` | 7862032/5 |
| `c * v * r` | 300 |
| `c * e * r` | -33976700 |
| `a * f * w` | -94060592830047/400000000 |
| `c * q * u` | 330500 |
| `c * p * v` | -883200 |
| `a * c * q * j` | 400 |
| `c * c * q` | 1314500 |
| `c * h * p` | -2682109 |
| `c * c * h` | -1394300 |
| `a * c * c * h` | 78700 |
| `a * c * f * h` | -100 |
| `a * c * c * e` | 37625880207/5000000000 |
| `a * c * e * f` | -100 |
| `c * h * p * w` | 3267400 |
| `c * h * q * r` | 800 |
| `b * c * h * q` | -100 |
| `c * h * p * v` | 600 |
| `c * c * h * v` | -776374119793/5000000000 |
| `c * h * q * u` | 200 |
| `c * c * h * q` | -200 |
| `c * h * r * k` | -100 |
| `c * h * r` | -100 |
| `c * h * w * j` | 100 |
| `c * f * h * w` | 100 |
| `a * c * f * w` | -4922900 |
| `c * h * u * w` | 32137200 |
| `c * h * v * r` | -800 |
| `c * f * h * q` | 200 |
| `b * c * h` | 7156009 |
| `c * p * v * w` | -500 |
| `c * q * v * r` | 300 |
| `a * p * u * w` | -100 |
| `a * u` | -44100338048431709/5000000000 |
| `c * f * v * w` | 2016400 |
| `c * f * h * v` | 100 |
| `c * v * w` | -3908884509489149/2000000000 |
| `c * h * w` | -24310500 |
| `e * p` | 44267760476426049/10000000000 |
| `q` | 2884425643955951/10000000000 |
| `c * q * u * w` | 200 |
| `c * q * w` | 1741500 |
| `c * w * w` | -50173112719/250000000 |
| `a * r * w` | -22441/500 |
| `a * u * r * w` | -100 |
| `a * v * r * r` | 100 |
| `a * h * r * r` | -100 |
| `a * c * h * j` | -100 |
| `c * c * w` | 335500 |
| `a * p * v * j` | 300 |
| `a * q * u * j` | -400 |
| `a * e * p * j` | 100 |
| `e * f * p * w` | 332500 |
| `b * e * f * w` | 100 |
| `e * f * q * r` | -100 |
| `e * f * r * k` | -777200 |
| `e * f * w * j` | -200 |
| `a * e` | 51000 |
| `a * v` | -1737600 |
| `a * c * e` | 462374119793/5000000000 |
| `e * e * f` | 773641593845149/581250000 |
| `e * f * v` | 435684369583256219/465000000000 |
| `c * e * e * f` | 100 |
| `c * e * f * v` | 1724800 |
| `a * c * f * v` | 600 |
| `a * e * u` | -100 |
| `c * e * f * q` | 100 |
| `h * p * v` | 33900 |
| `h * q * u` | 166000 |
| `a * h * u` | 8700 |
| `h * r * k` | 100 |
| `h * w * j` | 124400 |
| `f * h * w` | 60301995723437/400000000 |
| `h * v` | -1449852765450217/5000000000 |
| `c * h * v` | -3026541625880207/5000000000 |
| `e * h * u` | -857800 |
| `c * e * h` | -4602276374119793/5000000000 |
| `c * h * q` | -154811/250 |
| `f * h * k` | -35200 |
| `e * f * h` | -624200 |
| `h * k` | 3700 |
| `e * h * j` | 694200 |
| `h * u * w` | -2959592107636149/200000000 |
| `h * w` | 21135303264587/2000000 |
| `h * v * r` | 21405672794161/25000000 |
| `e * h * r` | 1169600 |
| `a * w` | -27676240629405351/2500000000 |
| `a * e * r` | 100 |
| `a * f * h` | -1100 |
| `e * h` | -42800 |
| `q * u * w` | 41510785763839/2500000000 |
| `e * p * u * w` | -204600 |
| `e * p * v * r` | 361200 |
| `b * e * p * v` | 500 |
| `f * q * w` | 74612315877809/625000000 |
| `e * p * r` | -700300 |
| `c * e * p` | -7136700 |
| `h * q * r` | 17000 |
| `e * h * p * r` | -2158500 |
| `q * r * k` | -100 |
| `e * p * w * j` | -100 |
| `q * w` | -4862491/10 |
| `h * q` | -136600 |
| `e * q * r` | -1001000 |
| `e * p * w` | 6396491/10 |
| `e * h * p` | 1063300 |
| `e * e * p * r` | 400600 |
| `a * p * k` | -100 |
| `e * h * p * u` | 294300 |
| `a * h * p * u` | -100 |
| `a * v * j` | 21100732857/625000000 |
| `a * p * u * k` | 100 |
| `e * f * p` | -272800 |
| `a * f * p` | -2321800 |
| `v * w` | -640300 |
| `e * v * r` | 65360897956171/290625000 |
| `c * e * v` | -4963271/10 |
| `e * u * w` | 306813477043829/290625000 |
| `e * e * u * r` | -640300 |
| `p * v * w` | -41510785763839/2500000000 |
| `e * q * u * r` | -156600 |
| `e * f * r` | 2640500 |
| `b * e * r` | -18265800 |
| `f * v` | 38505958975908583/10000000000 |
| `f * v * w` | -5725073508675049/5000000000 |
| `e * f * w` | -185885316204510751/93000000000 |
| `e * f * v * r` | -3141700 |
| `e * e * f * r` | -2008400 |
| `e * u * r` | 1463401778344521/2500000000 |
| `f * v * k` | -21037356329/290625000 |
| `e * f * k` | 269667281154851/581250000 |
| `e * e * f * j` | -805500 |
| `f * h * p * v` | -100 |
| `f * h * q * u` | 100 |
| `f * h * w * j` | 100 |
| `e * f * h * u` | 817100 |
| `f * h * v` | 103536206618017/5000000000 |
| `e * f * h * r` | 100 |
| `f * q * u * w` | -157000 |
| `e * f * q * u` | -200 |
| `p * u * w` | 127700 |
| `e * p * u` | -128100 |
| `p * v * r` | -195500 |
| `f * p * v * w` | 157000 |
| `q * u * r` | 67800 |
| `a * u * w * j` | 100 |
| `b * e * f * v` | -100 |
| `b * e * u` | -626372469255699/312500000 |
| `e * f * u * w` | 1666500 |
| `f * w * w` | 62 |
| `r * w` | -62 |
| `f * w * k` | 9190105704510751/93000000000 |
| `e * r * j` | 756400 |
| `c * f * w` | 2906461572041/7812500 |
| `c * r` | 14617600 |
| `f * u * w` | -9519742822041/7812500 |
| `a * f * u` | -6875794229973/2000000 |
| `u * r` | -133400 |
| `b * f * v * w` | 100 |
| `c * f * q * w` | 300 |
| `f * h * p * w` | -489100 |
| `h * p * r` | 954900 |
| `h * p * r * k` | 100 |
| `h * p * u * w` | 204800 |
| `h * q * u * r` | -1000 |
| `b * h * q * u` | -1546900 |
| `h * p * u * k` | -100 |
| `h * q * u * j` | 100 |
| `c * h * u` | -26897200 |
| `a * c * u` | 99835468/5 |
| `b * h * r * w` | -100 |
| `h * q * r * j` | -100 |
| `f * h * r` | -100 |
| `h * r * j` | 500400 |
| `e * h * r * j` | -1163400 |
| `h * v * j` | 5100 |
| `b * h * p * v` | 818900 |
| `a * b * e * p` | 100800 |
| `b * e * q * u` | -500 |
| `b * p * v * k` | 400 |
| `b * q * u * k` | -400 |
| `h * p * v * r` | -203800 |
| `f * p * v` | -128700 |
| `f * q * u` | 128700 |
| `e * p * v` | -765900 |
| `e * f * p * v` | 200 |
| `a * e * p` | -10800 |
| `e * q * u` | 455500 |
| `p * v * w * j` | 100 |
| `q * u * r * k` | 100 |
| `p * w * k` | 100 |
| `e * q * r * j` | 100 |
| `h * p * w` | -1734185 |
| `p * v * r * k` | -100 |
| `q * u * w * j` | -100 |
| `a * h * u * j` | -100 |
| `v * r * k` | 6169839421501/58125000000 |
| `b * u * w * w` | -100 |
| `b * v * r * w` | 100 |
| `b * h * v * r` | -7411200 |
| `f * v * r` | 10561930322041/7812500 |
| `v * w * j` | 170711767143/625000000 |
| `b * w * j` | 756200 |
| `f * r * k` | 315900 |
| `f * w * j` | 18500 |
| `a * f * j` | 119100 |
| `e * r * k` | 124400 |
| `e * w * j` | -659748755985867/5000000000 |
| `c * c * e * e` | 1422800 |
| `b * e * e * u` | -445800 |
| `c * f * k` | -971836 |
| `c * j` | 433400 |
| `c * e * j` | -1007500 |
| `b * f * k` | -2733900 |
| `b * j` | 2461200 |
| `b * h * v` | 5461537625880207/5000000000 |
| `c * c * v * w` | 1598600 |
| `b * b * v * w` | -5487600 |
| `b * c * v` | -5551500 |
| `b * b * v` | 4151800 |
| `b * b * q * v` | 539800 |
| `b * c * h * v` | 28299962374119793/5000000000 |
| `c * c * v` | -1354800 |
| `b * v * w` | 11748103347894733/10000000000 |
| `c * f * v` | -66535867822041/7812500 |
| `c * c * q * w` | -1601400 |
| `b * w * w` | -2909488189/625000000 |
| `b * c * v * k` | -400 |
| `b * c * q * k` | 400 |
| `b * h * j` | 955000 |
| `b * e * e` | -79164093845149/581250000 |
| `b * e * w` | 9690644531294369/19375000000 |
| `b * e * h * u` | 227700 |
| `b * b * e * k` | -240300 |
| `b * h * q` | 1276100 |
| `b * b * q` | -4939800 |
| `b * e * h * p` | -100 |
| `b * b * e * w` | -32700 |
| `e * q` | 332100 |
| `b * e * q` | 119300 |
| `e * e * p` | -332100 |
| `q * v` | 6100 |
| `b * q * w` | -19424081003/100000000 |
| `b * e * q * r` | -374000 |
| `e * e * p * u` | 121800 |
| `b * q * v` | -5778497/50 |
| `e * w` | -1263700 |
| `b * f * w` | 874300 |
| `e * e * r` | 580600 |
| `e * k` | -77100 |
| `b * b * k` | -853400 |
| `e * f * j` | -985600 |
| `e * e * j` | -1238800 |
| `b * b * h * w` | 659100 |
| `b * b * w` | 4909400 |
| `b * e * v` | 16/5 |
| `f * h * u * k` | 47900 |
| `h * u * k` | -5100 |
| `b * b * w * k` | -386100 |
| `f * h * v * j` | -47900 |
| `f * u * k` | -30664 |
| `f * v * j` | 30664 |
| `c * e * w` | 2144223929778401/625000000 |
| `c * e * h * u` | 1205000 |
| `c * c * e * h` | -223625880207/5000000000 |
| `e * v` | 135700 |
| `e * e * u` | -1028600 |
| `c * e * e` | -1547200 |
| `c * e * q` | 487600 |
| `c * c * h * w` | 1686400 |
| `c * p * q * w` | 400 |
| `c * q * q * r` | -400 |
| `h * p * q * u` | 400 |
| `h * p * p * v` | -400 |
| `c * f * q` | -109955843269/500000000 |
| `f * h * p` | 401400 |
| `h * p * u` | -294500 |
| `f * h * u` | -766024170027/2000000 |
| `p * p * v * w` | 400 |
| `p * q * v * r` | -400 |
| `p * q * u * w` | -400 |
| `q * q * u * r` | 400 |
| `c * h * p * q` | -400 |
| `f * p * w` | 154800 |
| `e * e * f * p` | -100 |
| `e * f * q` | 100 |
| `e * f * u` | -18989681/10 |
| `r * j` | -325300 |
| `w * k` | 37748755985867/5000000000 |
| `f * h * j` | 6200 |
| `u * w * k` | -110230168829/290625000 |
| `p * r` | 232300 |
| `b * r` | 9323000 |
| `a * f * v` | 373/10 |
| `u * w * w` | 321371448121/2500000000 |
| `v * r * w` | -321371448121/2500000000 |
| `b * b` | -1950100 |
| `b * f` | 1950100 |
| `b * p` | -170000 |
| `f * p` | 170000 |
| `f * u` | 1248900 |
| `b * u` | -103623773/10 |
| `f * r` | -752100 |
| `f * j` | 553900 |
| `e * e` | 1712000 |
| `c * f` | 1210700 |
| `c * w * k` | -7565642934197/500000000 |
| `h * r * w` | 3008294727/100000000 |
| `c * p` | 2006359955843269/500000000 |
| `b * c` | -2006359955843269/500000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `a * b * f * q` | 100 | 145469234579796808317/15625000000000000000000 | 145469234579796808317/156250000000000000000 |
| `a * b * f` | -149643/10000 | 2487631625763921/62500000000000000 | 0 |
| `a * b * q` | -1129315389/10000 | 360698227815583/15625000000000000 | 0 |
| `a * b` | -63190997976956923691977472683/5000000000000000000000 | 6168206779/62500000000 | 0 |
| `a * f * q` | -219883/2500 | 2404807898361687/62500000000000000 | 0 |
| `a * f` | 7319546458619909/100000000000000 | 41123995731/250000000000 | 301008997317141305867608479/25000000000000000000000000 |
| `a * q` | 141304180137/2000000000 | 5962841213/62500000000 | 842574388890079586181/125000000000000000000 |
| `a` | -2690665041885787166751642681/5000000000000000000000000000 | 101969/250000 | 0 |
| `b * f * q` | -13857/200 | 1426602541750893/62500000000000000 | 0 |
| `b * f` | 271513793371/5000000000 | 24395959809/250000000000 | 6623839590668046626139/1250000000000000000000 |
| `b * q` | 916179611815063/5000000000000 | 3537332207/62500000000 | 3240831648270180077634041/312500000000000000000000 |
| `b` | -1657076640707123107520539688172103891012831/128830315226665000000000000000000000000000 | 60491/250000 | 0 |
| `f * q` | -1550494219218673/156250000000000 | 23583715623/250000000000 | 0 |
| `f` | -992294090555315296887669/77500000000000000000000 | 403299/1000000 | 0 |
| `q` | -89380713220962871862893/625000000000000000000 | 58477/250000 | 0 |
| `1` | -12026654360240329318871822061046684041066916247483792117/128830315226665000000000000000000000000000000000 | 1 | -12026654360240329318871822061046684041066916247483792117/128830315226665000000000000000000000000000000000 |
| `a * b * c * q` | 704500 | 653945887029651979/97656250000000000000 | 921409754824779638411/195312500000000000 |
| `a * b * c` | 923047209822751973/5000000000000000 | 11182958890327/390625000000000 | 10322399001278875938337429865171/1953125000000000000000000000000 |
| `a * c * q` | 918427/5000 | 10810631119169/390625000000000 | 9928775506885027163/1953125000000000000 |
| `a * c` | 261107050814404239063697/2500000000000000000000 | 184869797/1562500000 | 48270807479327596351645134459509/3906250000000000000000000000000 |
| `b * c * q` | -475467556731/500000000 | 6413183291291/390625000000000 | 0 |
| `b * c` | -1057588328808165296083/5000000000000000000000 | 109670183/1562500000 | 0 |
| `c * q` | 1739639171541/10000000000 | 106018801/1562500000 | 184434459139410142341/15625000000000000000 |
| `c` | -219380004844056509330981961746953883116941/2077908310107500000000000000000000000000 | 1813/6250 | 0 |
| `a * b * p` | 48577/1000 | 763173720145333/31250000000000000 | 37072689803499841141/31250000000000000000 |
| `a * p` | -770361721119/5000000000 | 12616318463/125000000000 | 0 |
| `b * p` | -357497740683/10000000000 | 7484369957/125000000000 | 0 |
| `p` | 25782224255694990462773/312500000000000000000 | 123727/500000 | 3189957260484374084987514971/156250000000000000000000000 |
| `a * c * f * q` | -700 | 4359916719729738531/390625000000000000000 | 0 |
| `a * c * f` | -1306583/5000 | 74557804260303/1562500000000000 | 0 |
| `c * f * q` | 54893706731/500000000 | 42757276424499/1562500000000000 | 2347105392662748369602769/781250000000000000000000 |
| `c * f` | -10563480757458189/250000000000000 | 731181087/6250000000 | 0 |
| `a * c * c * q` | -400 | 19599674219053397/2441406250000000000 | 0 |
| `a * c * c` | 10263336177248027/5000000000000000 | 335168941961/9765625000000 | 3439951527518275570264760947/48828125000000000000000000000 |
| `c * c * q` | -647641/5000 | 192212086213/9765625000000 | 0 |
| `c * c` | -178541952452910054703917/5000000000000000000000 | 3286969/39062500 | 0 |
| `a * c * p` | -199833/5000 | 22873385373419/781250000000000 | 0 |
| `c * p` | 70134075819/5000000000 | 224317051/3125000000 | 15732269062328489769/15625000000000000000 |
| `a * b * r` | -100 | 2487631625763921/62500000000000000 | 0 |
| `a * r` | -301713205901003547/2500000000000000 | 41123995731/250000000000 | 0 |
| `b * r` | 152069327273/5000000000 | 24395959809/250000000000 | 3709877196333775570857/1250000000000000000000 |
| `r` | 2829111768165345024129635032515189519/64415157613332500000000000000000000 | 403299/1000000 | 87767534383793498683573667613718724447937/4955012124102500000000000000000000000000 |
| `p * v` | -252012242840915429317/625000000000000 | 71885387/1250000000 | 0 |
| `v` | -21968665168936666646640876293307162181303961575103/128830315226665000000000000000000000000000 | 581/2500 | 0 |
| `c * v` | -733643770503389142113189329238674119/2077908310107500000000000000000000 | 1053353/15625000 | 0 |
| `q * u` | -125183290505508183/625000000000000 | 13806010361/250000000000 | 0 |
| `u` | -4589704075431944696548840400268665113/64415157613332500000000000000000000 | 236093/1000000 | 0 |
| `a * b * p * v` | 572900 | 443403931404438473/78125000000000000000 | 2540261123016028011817/781250000000000000 |
| `a * b * v` | -966354889037928097/5000000000000000 | 3583728138599/156250000000000 | 0 |
| `a * p * v` | -3392071/10000 | 7330081027003/312500000000000 | 0 |
| `a * v` | -9379328779288583198353536779/5000000000000000000000 | 59243989/625000000 | 0 |
| `b * p * v` | -3376649/5000 | 4348418945017/312500000000000 | 0 |
| `b * v` | 1712224291774107107528887/5000000000000000000000 | 35145271/625000000 | 60176586747184065077128873943377/3125000000000000000000000000000 |
| `a * b * c * v` | -3148374119793/5000000000 | 6497299115279987/976562500000000000 | 0 |
| `a * c * v` | 1106108221741346323/2500000000000000 | 107409352057/3906250000000 | 118806367402158488800269436411/9765625000000000000000000000 |
| `b * c * v` | -9361900102812905548697/5000000000000000 | 63718376323/3906250000000 | 0 |
| `a * b * q * u` | 1111000 | 85158326699664437219/15625000000000000000000 | 94610900963327189750309/15625000000000000000 |
| `a * b * u` | -29279650551/312500000 | 1456270443074447/62500000000000000 | 0 |
| `a * q * u` | 123867/2500 | 1407785070500809/62500000000000000 | 174378113327723708403/156250000000000000000 |
| `a * u` | 237110576900425091/2500000000000000 | 24074167117/250000000000 | 5708239653509113509073932647/625000000000000000000000000 |
| `b * q * u` | 908147/1250 | 835139372747251/62500000000000000 | 758429315942297753897/78125000000000000000 |
| `b * u` | 22130147665383311/312500000000000 | 14281501663/250000000000 | 316051740685607323578946193/78125000000000000000000000 |
| `a * c * p * v` | -900 | 13289436901956439/1953125000000000000 | 0 |
| `c * p * v` | -4479928983/10000 | 130328206631/7812500000000 | 0 |
| `a * c * c * v` | 1670462374119793/5000000000 | 194733155279341/24414062500000000 | 325294408887766268885912096413/122070312500000000000000000 |
| `c * c * v` | 1353518905548697/5000000000000000 | 1909728989/97656250000 | 2584854291085899612077333/488281250000000000000000000 |
| `a * c * q * u` | -346100 | 2552314332817966717/390625000000000000000 | 0 |
| `a * c * u` | 846771/10000 | 43646464983121/1562500000000000 | 36958560800222352291/15625000000000000000 |
| `c * q * u` | 1180683/5000 | 25030296784493/1562500000000000 | 29552845898405548719/7812500000000000000 |
| `c * u` | 5124152519/312500000 | 428036609/6250000000 | 2193324868231568071/1953125000000000000 |
| `u * w` | 303607626675553379792659270466288827/128830315226665000000000000000 | 10576258121/250000000000 | 247002509786527512707777685035001743330024159/2477506062051250000000000000000000000000 |
| `w` | 2447518642241697529296024699370275272115039/25766063045333000000000000000000000 | 44797/250000 | 109641492616501324219874018457690221364937402083/6441515761333250000000000000000000000000 |
| `e * u` | 18302104770746029937/232500000000000000 | 12150998431/200000000000 | 222388846353332624463966028847/46500000000000000000000000000 |
| `e` | 5508383749866340321477861759173193157575103/128830315226665000000000000000000000000000 | 51467/200000 | 21807691265720841332730854704566671710839832777/1982004849641000000000000000000000000000000000 |
| `v * r` | 2703464860419524038397415316581/32207578806666250000000000000 | 234316719/2500000000 | 48728232001945833555300951927815862903/6193765155128125000000000000000000000 |
| `e * r` | -7337957967984900082727910059408242747/193245472839997500000000000000 | 20756589633/200000000000 | 0 |
| `a * b * u * w` | 18757700 | 65236547038406002259/15625000000000000000000 | 12236875783823082685736443/156250000000000000000 |
| `a * b * w` | -979189/10000 | 276317159078863/15625000000000000 | 0 |
| `a * u * w` | 1262057/10000 | 1078450464340249/62500000000000000 | 1361065957673861632193/625000000000000000000 |
| `a * w` | 1840176172666711/312500000000000 | 4567905293/62500000000 | 8405750479176751101801323/19531250000000000000000000 |
| `b * u * w` | -87103/1000 | 639768429997411/62500000000000000 | 0 |
| `b * w` | 2778245933464105503819825099919/32207578806666250000000000000 | 2709815327/62500000000 | 7528533412676455298596019102219812658513/2012973675416640625000000000000000000000 |
| `a * b * e * u` | 100 | 74949870893712563749/12500000000000000000000 | 74949870893712563749/125000000000000000000 |
| `a * b * e` | 393429691987928097/5000000000000000 | 317459098294793/12500000000000000 | 124897835260885799752673793498921/62500000000000000000000000000000 |
| `a * e * u` | -104999/1250 | 1239025159010639/50000000000000000 | 0 |
| `a * e` | 103885183249241715536779/5000000000000000000000 | 5248038523/50000000000 | 545193443660934833675623815337417/250000000000000000000000000000000 |
| `b * e * u` | -21234724449/312500000 | 735026046089621/50000000000000000 | 0 |
| `b * e` | -11648185726752757042206823833178103113/386490945679995000000000000000000000 | 3113290297/50000000000 | 0 |
| `a * c * u * w` | -24232700 | 1955230691848871437/390625000000000000000 | 0 |
| `a * c * w` | -47022815803/500000000 | 8281612296209/390625000000000 | 0 |
| `c * u * w` | 33906837873/2000 | 19174755973373/1562500000000000 | 650155342043496615955629/3125000000000000000 |
| `c * w` | 110487427145383206323297013961/1038954155053750000000000000 | 81216961/1562500000 | 8973453061456929198014166974286992521/1623365867271484375000000000000000000 |
| `a * c * e * u` | -100 | 2246352613286288507/312500000000000000000 | 0 |
| `a * c * e` | 150219778258653677/2500000000000000 | 9514693842199/312500000000000 | 1429295199174111359636029115723/781250000000000000000000000000 |
| `c * e * u` | 120507/1250 | 22029760155403/1250000000000000 | 2654740307047149321/1562500000000000000 |
| `c * e` | -176820484309487135033841854602325881/2077908310107500000000000000000000 | 93309671/1250000000 | 0 |
| `a * c * v * r` | 800 | 43318084275236043/3906250000000000000 | 43318084275236043/4882812500000000 |
| `a * c * r` | 66823/5000 | 74557804260303/1562500000000000 | 4982176154086227369/7812500000000000000 |
| `a * v * r` | 469960167097/2500000000 | 23893041519711/625000000000000 | 11228777785058940379148967/1562500000000000000000000 |
| `c * v * r` | -85883/625 | 424816211547/15625000000000 | 0 |
| `c * r` | 9795583091/1000000000 | 731181087/6250000000 | 7162345092276199917/6250000000000000000 |
| `u * k` | -1078787686475171/581250000000000 | 56466126717/1000000000000 | 0 |
| `k` | 290420134195674178273049/3875000000000000000000 | 239169/1000000 | 69459493075445197543386856281/3875000000000000000000000000 |
| `v * j` | -240818981856949/12500000000000 | 217775649/2500000000 | 0 |
| `j` | -97539287141921859293871/1250000000000000000000 | 374829/1000000 | 0 |
| `e * j` | -32403830856322499366001/1250000000000000 | 19291324143/200000000000 | 0 |
| `a * b * k` | 456271/10000 | 1475243847126651/62500000000000000 | 673110985372324178421/625000000000000000000 |
| `a * k` | 334350336309/10000000000 | 24387823761/250000000000 | 8154077076334971238149/2500000000000000000000 |
| `b * k` | -6414375620420782396151/581250000000000 | 14467571979/250000000000 | 0 |
| `a * b * e * j` | -100 | 118992876354738965397/12500000000000000000000 | 0 |
| `a * b * j` | -430223/10000 | 2312022778765791/62500000000000000 | 0 |
| `a * e * j` | -13754268/125 | 1967117031537567/50000000000000000 | 0 |
| `a * j` | 2127112481798753/39062500000000 | 38220938301/250000000000 | 81300234926117123911738653/9765625000000000000000000 |
| `b * e * j` | -34526094683/5000 | 1166951488734213/50000000000000000 | 0 |
| `b * j` | 143264856901/5000000000 | 22673781039/250000000000 | 3248355995956942100139/1250000000000000000000 |
| `a * c * v * j` | -400 | 40260140022173253/3906250000000000000 | 0 |
| `a * c * j` | 32959/1000 | 69294561139713/1562500000000000 | 2283879440603800767/1562500000000000000 |
| `a * v * j` | -57037829643/625000000 | 22206365152881/625000000000000 | 0 |
| `c * v * j` | -63981/1250 | 394827251637/15625000000000 | 0 |
| `c * j` | -92725889703/1250000000 | 679564977/6250000000 | 0 |
| `a * c * e * j` | 100 | 3566383178177608971/312500000000000000000 | 3566383178177608971/3125000000000000000 |
| `c * e * j` | -5037436019/5000 | 34975170671259/1250000000000000 | 0 |
| `b * c * e * v` | -300 | 3279393674215841/781250000000000000 | 0 |
| `b * c * e` | -139275687094451303/5000000000000000 | 5644395308461/312500000000000 | 0 |
| `b * e * v` | -82529/5000 | 1808821662557/125000000000000 | 0 |
| `c * e * v` | 76229/2000 | 54212918851/3125000000000 | 4132596591092879/6250000000000000 |
| `e * v` | -8210692217152962379/116250000000000000 | 29902327/500000000 | 0 |
| `a * b * b * v` | 1822400 | 216783298831992109/39062500000000000000 | 246916177369639012151/24414062500000000 |
| `a * b * b` | -926751282/625 | 373120996268489/15625000000000000 | 0 |
| `b * b * v` | -36737/2500 | 2125972588061/156250000000000 | 0 |
| `b * b` | -276444825019/2500000000 | 3659161081/62500000000 | 0 |
| `b * c * e * q` | 191300 | 330067304452873897/78125000000000000000 | 631418753418347764961/781250000000000000 |
| `b * e * q` | -1163849/5000 | 182055876697669/12500000000000000 | 0 |
| `c * e * q` | -1573573/10000 | 5456469631067/312500000000000 | 0 |
| `e * q` | 1498550260159/10000000000 | 3009635759/50000000000 | 4510090449633279425681/500000000000000000000 |
| `b * e * p` | -24527/10000 | 385198068576919/25000000000000000 | 0 |
| `e * p` | -286770885681/10000000000 | 6367857509/100000000000 | 0 |
| `b * e * f * k` | -100 | 300297454553992693707/50000000000000000000000 | 0 |
| `b * e * f` | 289/10 | 1255586863489803/50000000000000000 | 362864603548553067/500000000000000000 |
| `b * e * k` | -3177548936/36328125 | 744602527043193/50000000000000000 | 0 |
| `b * f * k` | -34992504269/10000 | 5834757311558721/250000000000000000 | 0 |
| `e * f * k` | 102874689851/581250000 | 4964332785934977/200000000000000000 | 170234731890070511309272809/38750000000000000000000000 |
| `e * f` | -866746009487296093/23250000000000000 | 20756589633/200000000000 | 0 |
| `e * k` | -266554272991/2500000000 | 12309310923/200000000000 | 0 |
| `f * k` | -303253036680742576836467/23250000000000000 | 96456618531/1000000000000 | 0 |
| `b * e * e * f` | 2022600 | 64621289103229691001/10000000000000000000000 | 653515096700961865093113/50000000000000000000 |
| `b * e * e` | 3007221101/581250000 | 160231711715699/10000000000000000 | 481852184520798945764599/5812500000000000000000000 |
| `e * e * f` | -40666408601/581250000 | 1068279398641611/40000000000000000 | 0 |
| `e * e` | 292634055187/10000000000 | 2648852089/40000000000 | 775144328394626235643/400000000000000000000 |
| `b * e * e * j` | 600400 | 60059492270683740471/10000000000000000000000 | 90149297898296294446971/25000000000000000000 |
| `e * e * j` | -3151882709/2500 | 992866579667781/40000000000000000 | 0 |
| `a * b * e * f` | -100 | 128030936883191722107/12500000000000000000000 | 0 |
| `a * e * f` | -217287/10000 | 2116528688287377/50000000000000000 | 0 |
| `a * f * k` | -100 | 9835584934987539/250000000000000000 | 0 |
| `b * e * h` | 36835402012071903/5000000000000000 | 539835197628909/25000000000000000 | 19885046524927147978180019443827/125000000000000000000000000000000 |
| `b * h` | 106812071441960992923980373693617369/4155816620215000000000000000000000 | 10488957927/125000000000 | 1120347323450447077154774849046090171877434063/519477077526875000000000000000000000000000000 |
| `e * h` | -573368874578883715536779/5000000000000000000000 | 8924223399/100000000000 | 0 |
| `h` | -43823763206011288732471490185141549720717/4155816620215000000000000000000000000000 | 173397/500000 | 0 |
| `a * b * h` | -291683/10000 | 1069548550858263/31250000000000000 | 0 |
| `a * h` | 112763502923/5000000000 | 17681118693/125000000000 | 1993784879420015439639/625000000000000000000 |
| `h * j` | -4735920121/39062500 | 64994224113/500000000000 | 0 |
| `c * k` | -12354003098564491/125000000000000 | 433613397/6250000000 | 0 |
| `c * h` | -414238096564820419063697/2500000000000000000000 | 314368761/3125000000 | 0 |
| `b * c * e * k` | 100 | 1349964381529308909/312500000000000000000 | 1349964381529308909/3125000000000000000 |
| `b * c * k` | -683327527/10000 | 26229707997927/1562500000000000 | 0 |
| `c * e * k` | 26759/2500 | 22316780703399/1250000000000000 | 597174734842253841/3125000000000000000 |
| `b * c * e * h` | 37625880207/5000000000 | 978721213301212017/156250000000000000000 | 36825247127721098359550847519/781250000000000000000000000000 |
| `b * c * h` | 1537660836177248027/5000000000000000 | 19016480721651/781250000000000 | 29240897647602393648632175932577/3906250000000000000000000000000 |
| `c * e * h` | 12072225741346323/2500000000000000 | 16179617022387/625000000000000 | 195323989102785488169811133001/1562500000000000000000000000000 |
| `a * b * c * k` | -100 | 2674617094840618263/390625000000000000000 | 0 |
| `a * c * k` | 97933/2000 | 44215124478693/1562500000000000 | 4330119785571841569/3125000000000000000 |
| `a * b * c * h` | 100 | 1939091522706030819/195312500000000000000 | 1939091522706030819/1953125000000000000 |
| `a * c * h` | 24748/625 | 32055868190409/781250000000000 | 198329656494060483/122070312500000000 |
| `b * b * e` | -52147/1250 | 188326043355827/12500000000000000 | 0 |
| `b * p * w` | 93108/625 | 335277320963729/31250000000000000 | 7804250200072719933/4882812500000000000 |
| `p * w` | 12864430736566941/1250000000000000 | 5542598419/125000000000 | 71302373461830932674266279/156250000000000000000000000 |
| `b * v * r` | -41102356221/2500 | 14174052649029/625000000000000 | 0 |
| `b * q * r` | 263807/10000 | 1426602541750893/62500000000000000 | 376347736731677829651/625000000000000000000 |
| `q * r` | 62301181261/2000000000 | 23583715623/250000000000 | 1469293341836400540603/500000000000000000000 |
| `a * b * p * w` | 4562400 | 34187893141350482401/7812500000000000000000 | 194973554585121801132903/9765625000000000000 |
| `a * p * w` | -21861/625 | 565173218187011/31250000000000000 | 0 |
| `a * f * u * w` | 4188400 | 434937993817958081451/62500000000000000000000 | 4554235733267839070873421/156250000000000000000 |
| `a * f * u` | 204693627/2000000 | 9709087524118983/250000000000000000 | 1987388340172364609821341/500000000000000000000000 |
| `a * f * w` | 30423009953/400000000 | 1842231636761607/62500000000000000 | 56046231420929850449274471/25000000000000000000000000 |
| `f * u * w` | -9232653789/31250000 | 4265394323941179/250000000000000000 | 0 |
| `f * u` | 13545006236682031/250000000000000 | 95216070807/1000000000000 | 1289702272913172864440569017/250000000000000000000000000 |
| `f * w` | -44872941850010907233/310000000000000000 | 18066585303/250000000000 | 0 |
| `a * f * q * u` | 500 | 567758311147905768891/62500000000000000000000 | 567758311147905768891/125000000000000000000 |
| `f * q * u` | -1245443/10000 | 5567950172580939/250000000000000000 | 0 |
| `a * f * p * w` | -100 | 227933793721603349289/31250000000000000000000 | 0 |
| `a * f * p` | -23218810589/10000 | 5088148619809437/125000000000000000 | 0 |
| `f * p * w` | -951/200 | 2235324399784281/125000000000000000 | 0 |
| `f * p` | -320580416497/10000000000 | 49898975373/500000000000 | 0 |
| `a * f * v * r` | -100 | 9636039751857926589/625000000000000000000 | 0 |
| `a * f * v` | 374377/2500 | 23893041519711/625000000000000 | 8945005205024845047/1562500000000000000 |
| `a * f * r` | -63981/5000 | 16585266354316569/250000000000000000 | 0 |
| `f * v * r` | 8833935039/31250000 | 94499698455981/2500000000000000 | 834804197365224755018259/78125000000000000000000 |
| `f * v` | 2228819192769727361/77500000000000000 | 234316719/2500000000 | 522249600494031037754048559/193750000000000000000000000 |
| `f * r` | 828937623251143/31250000000000 | 162650083401/1000000000000 | 134826773556025125718577343/31250000000000000000000000 |
| `a * f * p * v` | -500 | 2956214348109282897/312500000000000000000 | 0 |
| `f * p * v` | 1245443/10000 | 28991304691713/1250000000000000 | 36107017489161113859/12500000000000000000 |
| `b * h * p * w` | -1372200 | 58136081623147717413/15625000000000000000000 | 0 |
| `b * h * p` | -731669/10000 | 1297767297433929/62500000000000000 | 0 |
| `b * h * w` | 3827879/10000 | 469873848255819/31250000000000000 | 1798620236387636177901/312500000000000000000 |
| `h * p * w` | -1914093/5000 | 961069938059343/62500000000000000 | 0 |
| `h * p` | 655832131179/5000000000 | 21453890619/250000000000 | 14070150806739925509801/1250000000000000000000 |
| `h * w` | -31300167537781523/200000000000000 | 7767665409/125000000000 | 0 |
| `b * h * q * r` | -158100 | 247368600931979593521/31250000000000000000000 | 0 |
| `b * h * q` | 194607/10000 | 613362792697179/31250000000000000 | 119364692998419913653/312500000000000000000 |
| `b * h * r` | 159261/5000 | 4230186243001173/125000000000000000 | 673703691246609813153/625000000000000000000 |
| `h * q * r` | -368329/1250 | 4089345537881331/125000000000000000 | 0 |
| `h * q` | -501269600859/5000000000 | 10139736369/125000000000 | 0 |
| `h * r` | 422644283009478291280465983/20779083101075000000000000 | 69930836703/500000000000 | 2273528333737872599135210417763028773/799195503887500000000000000000000000 |
| `a * b * f * w` | -2099000 | 111438433939346369037/15625000000000000000000 | 0 |
| `b * f * w` | 161627/10000 | 1092865811563773/62500000000000000 | 176636622525617938671/625000000000000000000 |
| `b * b * h` | -257027/2500 | 634487553962157/31250000000000000 | 0 |
| `b * f * h` | 205447/2500 | 4230186243001173/125000000000000000 | 869079073065861989331/312500000000000000000 |
| `f * h` | -3435228725431739/100000000000000 | 69930836703/500000000000 | 0 |
| `b * c * h * w` | -9600200 | 851881286887799847/195312500000000000000 | 0 |
| `b * c * w` | 4514/625 | 4912895187851/390625000000000 | 11088404438979707/122070312500000000 |
| `c * h * w` | 51320719/25 | 14082777386517/781250000000000 | 722738260992993345723/19531250000000000 |
| `a * b * c * w` | 18206100 | 500963009409978619/97656250000000000000 | 91205826456190117353759/976562500000000000 |
| `a * b * c * e` | 148374119793/5000000000 | 575553345208459709/78125000000000000000 | 85397220989221883420179920237/390625000000000000000000000000 |
| `b * h * u` | 27969/10000 | 2476369543859211/125000000000000000 | 69261579772198272459/1250000000000000000000 |
| `h * u` | 7949773882972453/50000000000000 | 40937817921/500000000000 | 325446395734247443172730213/25000000000000000000000000 |
| `a * p * r` | -1481/625 | 5088148619809437/125000000000000000 | 0 |
| `p * r` | 1738279561159/10000000000 | 49898975373/500000000000 | 86738369013662188337307/5000000000000000000000 |
| `b * f * q * w` | -100 | 63907514062814753721/15625000000000000000000 | 0 |
| `b * q * w` | 5792598997/100000000 | 158461870876979/15625000000000000 | 917906074304732065790063/1562500000000000000000000 |
| `f * q * w` | -250799059691/625000000 | 1056479708763531/62500000000000000 | 0 |
| `q * w` | -283867153687812231/2500000000000000 | 2619594169/62500000000 | 0 |
| `a * b * f * h` | 10600 | 431347861012586609637/31250000000000000000000 | 22861436633667090310761/156250000000000000000 |
| `a * f * h` | 1379/125 | 7130777487768207/125000000000000000 | 9833342155632357453/15625000000000000000 |
| `a * f * h * p` | 100 | 882269706229096947489/62500000000000000000000 | 882269706229096947489/625000000000000000000 |
| `a * h * p` | -656871/10000 | 2187631772528811/62500000000000000 | 0 |
| `f * h * p` | -147873/2500 | 8652332632752081/250000000000000000 | 0 |
| `b * c * q * w` | -500 | 287291371899962927/97656250000000000000 | 0 |
| `c * q * w` | 1497131/5000 | 4749324228397/390625000000000 | 7110360531384229007/1953125000000000000 |
| `a * c * q * r` | -700 | 4359916719729738531/390625000000000000000 | 0 |
| `a * q * r` | 153453/500 | 2404807898361687/62500000000000000 | 369024986427295955211/31250000000000000000 |
| `c * q * r` | 350943/10000 | 42757276424499/1562500000000000 | 15005366860242952557/15625000000000000000 |
| `b * p * v * w` | -700 | 194796123479926549/78125000000000000000 | 0 |
| `b * v * w` | 1953026894733/10000000000 | 1574402704987/156250000000000 | 3074850825979996103133471/1562500000000000000000000 |
| `p * v * w` | 358705486161/2500000000 | 3220249681439/312500000000000 | 1155121227540381873065679/781250000000000000000000 |
| `v * w` | -11726193198587845658813/10000000000000000 | 26027057/625000000 | 0 |
| `b * c * v * w` | 500 | 2854392104141431/976562500000000000 | 2854392104141431/1953125000000000 |
| `c * v * w` | -610208089149/2000000000 | 47187054341/3906250000000 | 0 |
| `b * q * u * w` | 700 | 37411738480958603047/15625000000000000000000 | 261882169366710221329/156250000000000000000 |
| `q * u * w` | -458269236161/2500000000 | 618467846141717/62500000000000000 | 0 |
| `a * p * v * r` | -800 | 2956214348109282897/312500000000000000000 | 0 |
| `p * v * r` | -864183003/5000 | 28991304691713/1250000000000000 | 0 |
| `a * q * u * r` | 900 | 567758311147905768891/62500000000000000000000 | 5109824800331151920019/625000000000000000000 |
| `a * u * r` | 496076155479/2500000000 | 9709087524118983/250000000000000000 | 4816446812174067773203357857/625000000000000000000000000 |
| `q * u * r` | 134649/1000 | 5567950172580939/250000000000000000 | 749718922787850855411/250000000000000000000 |
| `u * r` | -171225845322488019/2500000000000000 | 95216070807/1000000000000 | 0 |
| `b * w * k` | -25575449061123/193750000 | 648103821943263/62500000000000000 | 0 |
| `w * k` | -1006420520065237397/15500000000000000 | 10714053693/250000000000 | 0 |
| `b * h * w * j` | -1163400 | 176122344667880379951/31250000000000000000000 | 0 |
| `b * h * j` | 84149/1250 | 3931565610819483/125000000000000000 | 330837314584848674967/156250000000000000000 |
| `b * w * j` | -53699/10000 | 1015717369204083/62500000000000000 | 0 |
| `h * w * j` | -606059/10000 | 2911546257590061/125000000000000000 | 0 |
| `w * j` | 253575485682490843/5000000000000000 | 16791214713/250000000000 | 4257840426047961089469373059/1250000000000000000000000000 |
| `b * e * w * j` | 100 | 52275925840826539761/12500000000000000000000 | 52275925840826539761/125000000000000000000 |
| `b * e * w` | -184767955631/19375000000 | 139466065434709/12500000000000000 | 0 |
| `e * w * j` | -659956390485867/5000000000 | 864193447633971/50000000000000000 | 0 |
| `e * w` | 3916513408086651599/77500000000000000 | 2305567199/50000000000 | 9029784848128285276395301201/3875000000000000000000000000 |
| `a * r * k` | 389911/5000 | 9835584934987539/250000000000000000 | 3835002757585926319029/1250000000000000000000 |
| `r * k` | -63869218759858879/581250000000000 | 96456618531/1000000000000 | 0 |
| `a * h * r * j` | 200 | 2672822194962669261603/125000000000000000000000 | 2672822194962669261603/625000000000000000000 |
| `a * h * r` | -562539/10000 | 7130777487768207/125000000000000000 | 0 |
| `a * h * j` | -57117/5000 | 6627396038578497/125000000000000000 | 0 |
| `a * r * j` | 21981/500 | 15414466195854999/250000000000000000 | 338825381451088733019/125000000000000000000 |
| `h * r * j` | -58971/500 | 26212105590548787/500000000000000000 | 0 |
| `r * j` | 212534311307/5000000000 | 151168160871/1000000000000 | 32128420962263770268397/5000000000000000000000 |
| `a * e * r * j` | -200 | 793336331702069233533/50000000000000000000000 | 0 |
| `a * e * r` | 896951/10000 | 2116528688287377/50000000000000000 | 1898422523488051087527/500000000000000000000 |
| `e * r * j` | 370279/2500 | 7780171735547757/200000000000000000 | 2880834210066887914203/500000000000000000000 |
| `b * h * u * w` | -24514800 | 110933926456261075167/31250000000000000000000 | 0 |
| `h * u * w` | 23025413243851/200000000 | 1833891429407037/125000000000000000 | 42226108006453630983616379487/25000000000000000000000000 |
| `a * b * h * u` | -80400 | 252512926017779886459/31250000000000000000000 | 0 |
| `a * h * u` | 399023/5000 | 4174388355586449/125000000000000000 | 1665676964811171639327/625000000000000000000 |
| `a * h * u * r` | 100 | 1683526649419659295251/125000000000000000000000 | 1683526649419659295251/1250000000000000000000 |
| `h * u * r` | -1040829/5000 | 16510181029721379/500000000000000000 | 0 |
| `b * e * u * w` | 2729000 | 32926961786676751937/12500000000000000000000 | 89857678715840856036073/12500000000000000000 |
| `e * u * w` | 59829517033/581250000 | 544328276713507/50000000000000000 | 32566897903174304317664731/29062500000000000000000000 |
| `b * c * e * w` | -4741200 | 252851976633127417/78125000000000000000 | 0 |
| `c * e * w` | -24173284099/625000000 | 4179993331787/312500000000000 | 0 |
| `a * e * u * r` | 100 | 499697607603831698061/50000000000000000000000 | 499697607603831698061/500000000000000000000 |
| `e * u * r` | -431788655479/2500000000 | 4900485516223869/200000000000000000 | 0 |
| `b * c * w * k` | 145100 | 1175012229183135819/390625000000000000000 | 1704942744544730073369/3906250000000000000 |
| `c * w * k` | 199818865803/500000000 | 19424579345409/1562500000000000 | 3881397413500006555148427/781250000000000000000000 |
| `a * c * r * k` | 100 | 17831915487132408207/1562500000000000000000 | 17831915487132408207/15625000000000000000 |
| `c * r * k` | 477929/10000 | 174875849396703/6250000000000000 | 83578239826316868087/62500000000000000000 |
| `p * k` | 9753513497/500000000 | 29591662863/500000000000 | 288622683132944161911/250000000000000000000 |
| `q * j` | 18190939931/2000000000 | 21918875433/250000000000 | 398724946356774615123/500000000000000000000 |
| `a * u * r * k` | -100 | 2322112754056013045127/250000000000000000000000 | 0 |
| `a * u * k` | -72117/2500 | 5757794475205773/250000000000000000 | 0 |
| `u * r * k` | 93/10 | 22772732438839383/1000000000000000000 | 2117864116812062619/10000000000000000000 |
| `b * h * k` | -60817/1250 | 2508633578442663/125000000000000000 | 0 |
| `h * k` | -60317725803/2000000000 | 41471187093/500000000000 | 0 |
| `b * e * r * k` | -386200 | 300297454553992693707/50000000000000000000000 | 0 |
| `b * e * r` | -11626281968/625 | 1255586863489803/50000000000000000 | 0 |
| `b * r * k` | 239387/5000 | 5834757311558721/250000000000000000 | 1396765048542107544027/1250000000000000000000 |
| `e * r * k` | -157103/1250 | 4964332785934977/200000000000000000 | 0 |
| `a * w * j` | 71719281327/312500000 | 1712183373069897/62500000000000000 | 122796561016611738577913319/19531250000000000000000000 |
| `b * f * w * k` | -922400 | 261379623285896024637/62500000000000000000000 | 0 |
| `f * w * k` | 8215109310751/93000000000 | 4320967140333207/250000000000000000 | 11832405795333483883415802819/7750000000000000000000000000 |
| `a * f * w * j` | -145100 | 690521842175716390203/62500000000000000000000 | 0 |
| `a * f * j` | 432011/10000 | 15414466195854999/250000000000000000 | 6659218955737513972989/2500000000000000000000 |
| `f * w * j` | -35331/400 | 6771880102538187/250000000000000000 | 0 |
| `f * j` | -762462706203/10000000000 | 151168160871/1000000000000 | 0 |
| `a * e * f * j` | 100 | 793336331702069233533/50000000000000000000000 | 793336331702069233533/500000000000000000000 |
| `e * f * j` | -1049275387/625 | 7780171735547757/200000000000000000 | 0 |
| `b * f * h * k` | -12600 | 1011729413552347545237/125000000000000000000000 | 0 |
| `f * h * k` | 424917/10000 | 16725288283419807/500000000000000000 | 7106859321525894131019/5000000000000000000000 |
| `c * e * p * w` | -954600 | 517178034962010149/156250000000000000000 | 0 |
| `c * e * p` | -38953811937/5000 | 11544925663817/625000000000000 | 0 |
| `c * p * w` | -166293/5000 | 10048730933647/781250000000000 | 0 |
| `e * p * w` | -719267/5000 | 285260912830673/25000000000000000 | 0 |
| `c * e * q * r` | 100 | 2200588745739690033/312500000000000000000 | 2200588745739690033/3125000000000000000 |
| `c * e * r` | -169883517481/5000 | 37631697004629/1250000000000000 | 0 |
| `e * q * r` | -11605722831/10000 | 1213783091968941/50000000000000000 | 0 |
| `a * c * p * w` | -8173400 | 1024659044573050943/195312500000000000000 | 0 |
| `c * e * u * w` | -2690700 | 986867165681588191/312500000000000000000 | 0 |
| `c * e * q * u` | -665400 | 1288234284607501231/312500000000000000000 | 0 |
| `e * q * u` | 230527/1250 | 710553935249587/50000000000000000 | 163801867031281542349/62500000000000000000 |
| `c * e * v * r` | -200 | 21864015959689449/3125000000000000000 | 0 |
| `e * v * r` | -22127315977/145312500 | 12059578576773/500000000000000 | 0 |
| `c * e * p * v` | 1011900 | 6707601810677677/1562500000000000000 | 67874222722247413563/15625000000000000 |
| `e * p * v` | -194597/2000 | 3699725212729/250000000000000 | 0 |
| `c * c * e * w` | -527500 | 7578327910529831/1953125000000000000 | 0 |
| `c * c * e` | -319355518905548697/5000000000000000 | 169170433523/7812500000000 | 0 |
| `c * c * w` | 283567/10000 | 147246350293/9765625000000 | 41754205813535131/97656250000000000 |
| `a * c * c * w` | -8248200 | 15014563093026917/2441406250000000000 | 0 |
| `c * e * f` | 521011/5000 | 37631697004629/1250000000000000 | 19606528088078759919/6250000000000000000 |
| `c * w * j` | 185194933/10000 | 30442472274669/1562500000000000 | 5637791613261683052177/15625000000000000000 |
| `a * c * w * j` | 145000 | 3104188455375723261/390625000000000000000 | 90021465205895974569/78125000000000000 |
| `a * c * q * j` | 400 | 4052138051766997101/390625000000000000000 | 4052138051766997101/976562500000000000 |
| `a * q * j` | -110089/1250 | 2235045809027577/62500000000000000 | 0 |
| `c * q * j` | 63981/1250 | 39738921160029/1562500000000000 | 2542535914739815449/1953125000000000000 |
| `c * h * p` | -498697/2500 | 38895903692247/1562500000000000 | 0 |
| `c * c * h` | -476686382177248027/5000000000000000 | 569950563693/19531250000000 | 0 |
| `a * c * c * h` | 78700 | 58117289029211517/4882812500000000000 | 45738306465989463879/48828125000000000 |
| `a * c * f * h` | -100 | 12928099585323759291/781250000000000000000 | 0 |
| `c * f * h` | 78921/625 | 126784606942539/3125000000000000 | 10005967964512120419/1953125000000000000 |
| `a * c * c * e` | 37625880207/5000000000 | 17250139935906787/1953125000000000000 | 649051698782415425580264909/9765625000000000000000000000 |
| `a * c * e * f` | -100 | 3837266511865014501/312500000000000000000 | 0 |
| `c * h * p * w` | 3267400 | 1742419797701588859/390625000000000000000 | 28465912235050857189483/1953125000000000000 |
| `c * h * q * r` | 800 | 7413983460178853103/781250000000000000000 | 7413983460178853103/976562500000000000 |
| `c * h * q` | -319183/1000 | 18383342036997/781250000000000 | 0 |
| `c * h * r` | -228171/2500 | 126784606942539/3125000000000000 | 0 |
| `b * c * h * q` | -100 | 1112026743159985527/195312500000000000000 | 0 |
| `c * h * p * v` | 600 | 22598520045195507/3906250000000000000 | 67795560135586521/19531250000000000 |
| `c * h * v` | 160142774258653677/2500000000000000 | 182648250141/7812500000000 | 29249797491068272630585418457/19531250000000000000000000000 |
| `h * p * v` | 1633/125 | 12464710449639/625000000000000 | 20354872164260487/78125000000000000 |
| `h * v` | -666290482793983476472463221/5000000000000000000000 | 100743657/1250000000 | 0 |
| `c * c * h * v` | -776374119793/5000000000 | 331141277505633/48828125000000000 | 0 |
| `c * h * q * u` | 200 | 4340178371540732721/781250000000000000000 | 4340178371540732721/3906250000000000000 |
| `c * h * u` | -688431/5000 | 74220263890773/3125000000000000 | 0 |
| `h * q * u` | 115401/1000 | 2393920778566317/125000000000000000 | 276260851767331548117/125000000000000000000 |
| `c * c * h * q` | -200 | 33328999113075561/4882812500000000000 | 0 |
| `c * h * r * k` | -100 | 30322947657840110091/3125000000000000000000 | 0 |
| `c * h * k` | -596701/10000 | 75187262199609/3125000000000000 | 0 |
| `h * r * k` | 95563/1250 | 16725288283419807/500000000000000000 | 1598318724228447016341/625000000000000000000 |
| `c * h * w * j` | 100 | 5278633365010780593/781250000000000000000 | 5278633365010780593/7812500000000000000 |
| `c * h * j` | 13857/200 | 117834528316869/3125000000000000 | 1632833058886853733/625000000000000000 |
| `c * f * h * w` | 100 | 5679570037204919583/781250000000000000000 | 5679570037204919583/7812500000000000000 |
| `c * f * w` | 7400628789/31250000 | 32754719154339/1562500000000000 | 242405517549210937665471/48828125000000000000000 |
| `f * h * w` | 38379883437/400000000 | 3132691691784291/125000000000000000 | 120232341974739419127688167/50000000000000000000000000 |
| `a * c * f * w` | -4922900 | 3339965957448793491/390625000000000000000 | 0 |
| `c * h * u * w` | 32137200 | 3324845161514958081/781250000000000000000 | 267128034811596277101783/1953125000000000000 |
| `c * h * v * r` | -800 | 73661856633615159/7812500000000000000 | 0 |
| `h * v * r` | -7279000839/25000000 | 40629816124443/1250000000000000 | 0 |
| `c * f * h * q` | 200 | 7413983460178853103/781250000000000000000 | 7413983460178853103/3906250000000000000 |
| `f * h * q` | 370273/2000 | 4089345537881331/125000000000000000 | 1514174240347934073363/250000000000000000000 |
| `c * p * v * w` | -500 | 5838312672448907/1953125000000000000 | 0 |
| `c * q * v * r` | 300 | 24841977602633919/3906250000000000000 | 74525932807901757/39062500000000000 |
| `c * q * v` | 1790103/10000 | 61596923381/3906250000000 | 110264837335098243/39062500000000000 |
| `q * v * r` | 79651/2000 | 13702138776963/625000000000000 | 1091389055723879913/1250000000000000000 |
| `q * v` | -620506633837/10000000000 | 33975137/625000000 | 0 |
| `a * p * u * w` | -100 | 133433440601425988023/31250000000000000000000 | 0 |
| `a * p * u` | -814161/10000 | 2978624474885059/125000000000000000 | 0 |
| `p * u * w` | 431754879/2500 | 1308568688536967/125000000000000000 | 564980915782466874111993/312500000000000000000 |
| `p * u` | 5781835409/80000000 | 29211078611/500000000000 | 168893648648162336899/40000000000000000000 |
| `c * f * v * w` | 2016400 | 19030491828670959/3906250000000000000 | 95932709308330304319/9765625000000000 |
| `c * f * v` | -191228604797539/31250000 | 424816211547/15625000000000 | 0 |
| `f * v * w` | -1181307675049/5000000000 | 10496686061043/625000000000000 | 0 |
| `c * f * h * v` | 100 | 73661856633615159/7812500000000000000 | 73661856633615159/78125000000000000 |
| `f * h * v` | -164026381983/5000000000 | 40629816124443/1250000000000000 | 0 |
| `c * q * u * w` | 200 | 1121282205054932921/390625000000000000000 | 1121282205054932921/1953125000000000000 |
| `c * w * w` | -50173112719/250000000 | 3638276201917/390625000000000 | 0 |
| `w * w` | -32404352560313979/2500000000000000 | 2006771209/62500000000 | 0 |
| `a * r * w` | -1212727/10000 | 1842231636761607/62500000000000000 | 0 |
| `r * w` | -200001903070059627/2500000000000000 | 18066585303/250000000000 | 0 |
| `a * u * r * w` | -100 | 434937993817958081451/62500000000000000000000 | 0 |
| `u * r * w` | -63981/5000 | 4265394323941179/250000000000000000 | 0 |
| `a * v * r * r` | 100 | 9636039751857926589/625000000000000000000 | 9636039751857926589/6250000000000000000 |
| `a * r * r` | -522071/10000 | 16585266354316569/250000000000000000 | 0 |
| `v * r * r` | 63981/5000 | 94499698455981/2500000000000000 | 6046185206912120361/12500000000000000000 |
| `r * r` | -33402624651/5000000000 | 162650083401/1000000000000 | 0 |
| `a * h * r * r` | -100 | 2875835430039430114893/125000000000000000000000 | 0 |
| `h * r * r` | -63981/5000 | 28203036511483197/500000000000000000 | 0 |
| `a * c * h * j` | -100 | 12015469017942815061/781250000000000000000 | 0 |
| `a * p * v * j` | 300 | 2747526941270507487/312500000000000000000 | 8242580823811522461/3125000000000000000 |
| `a * p * j` | 814109/10000 | 4728962033167827/125000000000000000 | 3849890551860226471143/1250000000000000000000 |
| `p * v * j` | 602349/5000 | 26944727723823/1250000000000000 | 16230129799717060227/6250000000000000000 |
| `p * j` | -71962220037/5000000000 | 46376467683/500000000000 | 0 |
| `a * q * u * j` | -400 | 527678670190747736661/62500000000000000000000 | 0 |
| `a * u * j` | -713069/10000 | 9023695986297993/250000000000000000 | 0 |
| `q * u * j` | -682627/10000 | 5174893057603269/250000000000000000 | 0 |
| `u * j` | -16122675597/1250000000 | 88494503097/1000000000000 | 0 |
| `a * e * p * j` | 100 | 243385488961048552209/25000000000000000000000 | 243385488961048552209/250000000000000000000 |
| `a * e * p` | 162883/5000 | 649324062335221/25000000000000000 | 105763851245347802143/125000000000000000000 |
| `e * p * j` | -13857/200 | 2386857662240961/100000000000000000 | 0 |
| `e * f * p * w` | 332500 | 115045440883697590227/25000000000000000000000 | 15301043637531779500191/10000000000000000000 |
| `e * f * p` | 297689/5000 | 2568150565522191/100000000000000000 | 764510173699735516599/500000000000000000000 |
| `e * f * w` | -57967304076510751/93000000000 | 929832945789501/50000000000000000 | 0 |
| `b * e * f * w` | 100 | 56246524723752704991/12500000000000000000000 | 56246524723752704991/125000000000000000000 |
| `e * f * q * r` | -100 | 489517507207981936359/50000000000000000000000 | 0 |
| `e * f * q` | -290393/5000 | 1213783091968941/50000000000000000 | 0 |
| `e * f * r` | 60281/2000 | 8371111842399267/200000000000000000 | 504618992971670214027/400000000000000000000 |
| `f * q * r` | -430223/10000 | 9511288927040277/250000000000000000 | 0 |
| `e * f * r * k` | -777200 | 2002110448234790289123/200000000000000000000000 | 0 |
| `f * r * k` | -46173289/2500 | 38900857796933769/1000000000000000000 | 0 |
| `e * f * w * j` | -200 | 348528353237332870329/50000000000000000000000 | 0 |
| `e * f * v` | 81293165756219/465000000000 | 12059578576773/500000000000000 | 326787106730585036097900429/77500000000000000000000000 |
| `c * e * e * f` | 100 | 1936790549737240743/250000000000000000000 | 1936790549737240743/2500000000000000000 |
| `c * e * e` | 22973/500 | 4802368837357/250000000000000 | 110324819300602361/125000000000000000 |
| `c * e * f * v` | 1724800 | 21864015959689449/3125000000000000000 | 11784704602272613011/976562500000000 |
| `a * c * f * v` | 600 | 43318084275236043/3906250000000000000 | 129954252825708129/19531250000000000 |
| `c * e * f * q` | 100 | 2200588745739690033/312500000000000000000 | 2200588745739690033/3125000000000000000 |
| `e * h * u` | -623703/10000 | 2106946674940107/100000000000000000 | 0 |
| `e * f * h` | 240399/5000 | 3599130372593301/100000000000000000 | 865227342441056967099/500000000000000000000 |
| `e * h * j` | -9717/5000 | 3345057732423771/100000000000000000 | 0 |
| `e * h * r` | -185321/10000 | 3599130372593301/100000000000000000 | 0 |
| `e * p * u * w` | -204600 | 67348104692932080589/25000000000000000000000 | 0 |
| `e * p * u` | 137799/2000 | 1503406582872337/100000000000000000 | 207167923713225166263/200000000000000000000 |
| `e * p * v * r` | 361200 | 1492095478568392971/250000000000000000000 | 1347362217147258852813/625000000000000000 |
| `e * p * r` | -3424963377/2000 | 2568150565522191/100000000000000000 | 0 |
| `b * e * p * v` | 500 | 223800077843189939/62500000000000000000 | 223800077843189939/125000000000000000 |
| `e * h * p * r` | -2158500 | 445309603609851352827/50000000000000000000000 | 0 |
| `e * h * p` | 64009/500 | 1104167388488073/50000000000000000 | 70676650369733064657/25000000000000000000 |
| `h * p * r` | 2506673/10000 | 8652332632752081/250000000000000000 | 21688568597538557136513/2500000000000000000000 |
| `q * r * k` | -236093/10000 | 5640493681837287/250000000000000000 | 0 |
| `q * k` | -9405792753/400000000 | 13985885613/250000000000 | 0 |
| `e * p * w * j` | -100 | 106924062695408329917/25000000000000000000000 | 0 |
| `p * w * j` | -302261/10000 | 2077526622795351/125000000000000000 | 0 |
| `e * e * p * r` | 400600 | 132175005155730604197/20000000000000000000000 | 264746535326928400206591/100000000000000000000 |
| `e * e * p` | -35513/1250 | 327734522415703/20000000000000000 | 0 |
| `e * e * r` | -226147/10000 | 1068279398641611/40000000000000000 | 0 |
| `a * p * k` | -236093/10000 | 3017432270477247/125000000000000000 | 0 |
| `e * h * p * u` | 294300 | 260686191250314618789/50000000000000000000000 | 767199460849675923096027/500000000000000000000 |
| `h * p * u` | 2268467/10000 | 5065113397911567/250000000000000000 | 11490042594420258657789/2500000000000000000000 |
| `a * h * p * u` | -100 | 516484548071644575423/62500000000000000000000 | 0 |
| `a * p * u * k` | 100 | 712394637033784675971/125000000000000000000000 | 712394637033784675971/1250000000000000000000 |
| `p * u * k` | -522071/10000 | 6986384460314259/500000000000000000 | 0 |
| `e * e * u * r` | -640300 | 252213288063493865823/40000000000000000000000 | 0 |
| `e * e * u` | -14208415197/10000 | 625375436248277/40000000000000000 | 0 |
| `e * q * u * r` | -156600 | 286565691532223187513/50000000000000000000000 | 0 |
| `e * f * v * r` | -3141700 | 4863615980433974127/500000000000000000000 | 0 |
| `e * e * f * r` | -2008400 | 430836013192763074689/40000000000000000000000 | 0 |
| `f * v * k` | -21037356329/290625000 | 56041295366511/2500000000000000 | 0 |
| `v * k` | 1576094089217836901/58125000000000000 | 138957189/2500000000 | 73003201412408608141143763/48437500000000000000000000 |
| `e * e * f * j` | -805500 | 400422098713436409519/40000000000000000000000 | 0 |
| `f * h * p * v` | -100 | 5027005259628959061/625000000000000000000 | 0 |
| `f * h * q * u` | 100 | 965465856075017079783/125000000000000000000000 | 965465856075017079783/1250000000000000000000 |
| `f * h * u` | 776173/2000000 | 16510181029721379/500000000000000000 | 12814756740381931902567/1000000000000000000000000 |
| `f * h * w * j` | 100 | 1174223694139814011239/125000000000000000000000 | 1174223694139814011239/1250000000000000000000 |
| `f * h * j` | 763507/5000 | 26212105590548787/500000000000000000 | 20013126103123132716009/2500000000000000000000 |
| `e * f * h * u` | 817100 | 849729487056670212993/100000000000000000000000 | 6943139638740052310365803/1000000000000000000000 |
| `e * f * u` | 128699/10000 | 4900485516223869/200000000000000000 | 630687585452495716431/2000000000000000000000 |
| `e * f * h * r` | 100 | 1451525680136505699999/100000000000000000000000 | 1451525680136505699999/1000000000000000000000 |
| `f * h * r` | -569777/10000 | 28203036511483197/500000000000000000 | 0 |
| `f * q * u * w` | -157000 | 249427463881108324383/62500000000000000000000 | 0 |
| `e * f * q * u` | -200 | 286565691532223187513/50000000000000000000000 | 0 |
| `f * p * v * w` | 157000 | 1298723476274667261/312500000000000000000 | 203899585775122759977/312500000000000000 |
| `a * u * w * j` | 100 | 404234509098191192421/62500000000000000000000 | 404234509098191192421/625000000000000000000 |
| `u * w * j` | -93/10 | 3964288255236309/250000000000000000 | 0 |
| `b * e * f * v` | -100 | 729495967687575543/125000000000000000000 | 0 |
| `b * f * v` | 390589/10000 | 14174052649029/625000000000000 | 5536229050131588081/6250000000000000000 |
| `e * f * u * w` | 1666500 | 219527049670280659593/50000000000000000000000 | 731683656551045438423469/100000000000000000000 |
| `f * w * w` | 62 | 809328821818491/62500000000000000 | 25089193476373221/31250000000000000 |
| `b * f * v * w` | 100 | 634955036518552113/156250000000000000000 | 634955036518552113/1562500000000000000 |
| `c * f * q * w` | 300 | 1915397711988281703/390625000000000000000 | 5746193135964845109/3906250000000000000 |
| `f * h * p * w` | -489100 | 387598544949394972557/62500000000000000000000 | 0 |
| `h * p * r * k` | 100 | 2069369743442682460689/250000000000000000000000 | 2069369743442682460689/2500000000000000000000 |
| `h * p * k` | -83603/5000 | 5131105565455611/250000000000000000 | 0 |
| `p * r * k` | 522071/10000 | 11934288040985037/500000000000000000 | 6230545691845099251627/5000000000000000000000 |
| `h * p * u * w` | 204800 | 226901884886244466899/62500000000000000000000 | 226901884886244466899/305175781250000000 |
| `h * q * u * r` | -1000 | 965465856075017079783/125000000000000000000000 | 0 |
| `b * h * q * u` | -1546900 | 144810661816255081647/31250000000000000000000 | 0 |
| `h * p * u * k` | -100 | 1211418106265111567823/250000000000000000000000 | 0 |
| `h * u * k` | -37989/10000 | 9791056974347649/500000000000000000 | 0 |
| `h * q * u * j` | 100 | 897310931509234034793/125000000000000000000000 | 897310931509234034793/1250000000000000000000 |
| `h * q * j` | 83603/5000 | 3800667243455901/125000000000000000 | 317747183554643691303/625000000000000000000 |
| `h * u * j` | 93/10 | 15344681353510509/500000000000000000 | 1427055365876477337/5000000000000000000 |
| `b * h * r * w` | -100 | 189499653127723546881/31250000000000000000000 | 0 |
| `b * r * w` | -522071/10000 | 1092865811563773/62500000000000000 | 0 |
| `h * r * w` | 1937934727/100000000 | 3132691691784291/125000000000000000 | 6070952018493158121973557/12500000000000000000000000 |
| `h * q * r * j` | -100 | 1532805298618521417399/125000000000000000000000 | 0 |
| `q * r * j` | -21981/1000 | 8839860543253467/250000000000000000 | 0 |
| `e * h * r * j` | -1163400 | 1349058438428774420529/100000000000000000000000 | 0 |
| `h * v * j` | -67561/2500 | 37761644209653/1250000000000000 | 0 |
| `b * h * p * v` | 818900 | 754002799809112749/156250000000000000000 | 6174528927636824301561/1562500000000000000 |
| `b * h * v` | -244369902012071903/5000000000000000 | 6094084555587/312500000000000 | 0 |
| `a * b * e * p` | 100800 | 39278261854719853511/6250000000000000000000 | 2474530496847350771193/3906250000000000000 |
| `b * e * q * u` | -500 | 42982118097182767217/12500000000000000000000 | 0 |
| `b * p * v * k` | 400 | 1040007010660770873/312500000000000000000 | 1040007010660770873/781250000000000000 |
| `b * p * k` | 63981/1250 | 1790029278245733/125000000000000000 | 114527863251440243073/156250000000000000000 |
| `b * v * k` | -58874/625 | 8405659319799/625000000000000 | 0 |
| `p * v * k` | -168557/10000 | 17192756123403/1250000000000000 | 0 |
| `b * q * u * k` | -400 | 199739448640587274419/62500000000000000000000 | 0 |
| `b * q * k` | -110089/1250 | 846020206615983/62500000000000000 | 0 |
| `b * u * k` | -110481/1250 | 3415692471238047/250000000000000000 | 0 |
| `q * u * k` | 168557/10000 | 3301969692030009/250000000000000000 | 556570105379502227013/2500000000000000000000 |
| `h * p * v * r` | -203800 | 5027005259628959061/625000000000000000000 | 0 |
| `e * f * p * v` | 200 | 1492095478568392971/250000000000000000000 | 1492095478568392971/1250000000000000000 |
| `p * v * w * j` | 100 | 1207042967844098931/312500000000000000000 | 1207042967844098931/3125000000000000000 |
| `v * w * j` | 189976329643/625000000 | 9755695748253/625000000000000 | 1853351271366925469363679/390625000000000000000000 |
| `q * u * r * k` | 100 | 1331681074826010599691/250000000000000000000000 | 1331681074826010599691/2500000000000000000000 |
| `p * w * k` | 100 | 1325617721273811/125000000000000000 | 1325617721273811/1250000000000000 |
| `e * q * r * j` | 100 | 454961102579626186089/50000000000000000000000 | 454961102579626186089/500000000000000000000 |
| `e * q * j` | 596701/10000 | 1128098761910211/50000000000000000 | 673137659330584813911/500000000000000000000 |
| `p * v * r * k` | -100 | 6933821351812306497/1250000000000000000000 | 0 |
| `v * r * k` | 4378235109001/58125000000 | 56041295366511/2500000000000000 | 81787322309184508110021837/48437500000000000000000000 |
| `q * u * w * j` | -100 | 231819684301453641393/62500000000000000000000 | 0 |
| `q * w * j` | -763907/10000 | 981899862772101/62500000000000000 | 0 |
| `a * h * u * j` | -100 | 1564681812936113092221/125000000000000000000000 | 0 |
| `b * u * w * w` | -100 | 28659706358594020567/15625000000000000000000 | 0 |
| `b * w * w` | -50653675689/625000000 | 121391597203619/15625000000000000 | 0 |
| `u * w * w` | 294612448121/2500000000 | 473784635046437/62500000000000000 | 139582851213145339088394877/156250000000000000000000000 |
| `b * v * r * w` | 100 | 634955036518552113/156250000000000000000 | 634955036518552113/1562500000000000000 |
| `v * r * w` | -294612448121/2500000000 | 10496686061043/625000000000000 | 0 |
| `b * h * v * r` | -7411200 | 2457738207183681513/312500000000000000000 | 0 |
| `c * c * e * e` | 1422800 | 8706694702128241/1562500000000000000 | 30969713055470153237/3906250000000000 |
| `b * e * e * u` | -445800 | 37829585514094524007/10000000000000000000000 | 0 |
| `c * f * k` | -971836 | 174875849396703/6250000000000000 | 0 |
| `c * c * v * w` | 1598600 | 85550129520233/24414062500000000 | 683802185255222369/122070312500000 |
| `b * b * v * w` | -5487600 | 95237194027368617/39062500000000000000 | 0 |
| `b * b * w` | 21840092473/5000 | 163919438945557/15625000000000000 | 3580015704693242492492461/78125000000000000000 |
| `b * b * q * v` | 539800 | 124320499032043097/39062500000000000000 | 335541026887484318803/195312500000000000 |
| `b * b * q` | -12176815281/2500 | 213976762533637/15625000000000000 | 0 |
| `b * q * v` | -17343/1250 | 2055190012267/156250000000000 | 0 |
| `b * c * h * v` | 28299962374119793/5000000000 | 11048575299279231/1953125000000000000 | 312674265257231568600480950919183/9765625000000000000000000000 |
| `c * c * q * w` | -1601400 | 8610524826083761/2441406250000000000 | 0 |
| `b * c * v * k` | -400 | 15239460346795587/3906250000000000000 | 0 |
| `c * v * k` | -26759/625 | 251929383657/15625000000000 | 0 |
| `b * c * q * k` | 400 | 1533834634594777179/390625000000000000000 | 1533834634594777179/976562500000000000 |
| `c * q * k` | 26759/625 | 25356410616369/1562500000000000 | 678512191683418071/976562500000000000 |
| `b * e * h * u` | 227700 | 127451311313802012537/25000000000000000000000 | 290206635861527182546749/250000000000000000000 |
| `b * b * e * k` | -240300 | 45041751463369787763/12500000000000000000000 | 0 |
| `b * b * k` | -12736981001/10000 | 875157896581689/62500000000000000 | 0 |
| `b * e * h * p` | -100 | 66792189497032023843/12500000000000000000000 | 0 |
| `b * b * e * w` | -32700 | 8436441764210982119/3125000000000000000000 | 0 |
| `b * e * q * r` | -374000 | 73422953016293210031/12500000000000000000000 | 0 |
| `e * e * p * u` | 121800 | 77375826600690568379/20000000000000000000000 | 47121878399820556142811/100000000000000000000 |
| `b * b * h * w` | 659100 | 28423138954842747129/7812500000000000000000 | 187336908851368546327239/78125000000000000000 |
| `f * h * u * k` | 47900 | 3948723486697432494051/500000000000000000000000 | 1891438550128070164650429/5000000000000000000000 |
| `f * u * k` | 4725807/10000 | 22772732438839383/1000000000000000000 | 107619538368594228057081/10000000000000000000000 |
| `b * b * w * k` | -386100 | 39204448293169922133/15625000000000000000000 | 0 |
| `f * h * v * j` | -47900 | 15229233348108845247/1250000000000000000000 | 0 |
| `f * v * j` | -4725807/10000 | 87828701466051/2500000000000000 | 0 |
| `c * e * h * u` | 1205000 | 3819894321666413991/625000000000000000000 | 920594531521605771831/125000000000000000 |
| `c * c * e * h` | -223625880207/5000000000 | 29333645661587631/3906250000000000000 | 0 |
| `c * c * h * w` | 1686400 | 25532075401755321/4882812500000000000 | 13455403736725054167/1525878906250000 |
| `c * p * q * w` | 400 | 587619638806875619/195312500000000000000 | 587619638806875619/488281250000000000 |
| `c * p * q` | 170779/2500 | 13117388191327/781250000000000 | 2240174437926633733/1953125000000000000 |
| `p * q * w` | -110089/1250 | 324114527747863/31250000000000000 | 0 |
| `p * q` | -14244604003/312500000 | 7235183779/125000000000 | 0 |
| `c * q * q * r` | -400 | 2500317253475428023/390625000000000000000 | 0 |
| `c * q * q` | -596701/2500 | 6199661426077/390625000000000 | 0 |
| `q * q * r` | 110089/1250 | 1379104938486171/62500000000000000 | 151824283573004079219/78125000000000000000 |
| `q * q` | 65690216389/1250000000 | 3419559529/62500000000 | 224631605415076920781/78125000000000000000 |
| `h * p * q * u` | 400 | 296192636169674703459/62500000000000000000000 | 296192636169674703459/156250000000000000000 |
| `h * p * q` | 110089/1250 | 1254559161727263/62500000000000000 | 138113163555392656407/78125000000000000000 |
| `p * q * u` | -170779/2500 | 1708176243935447/125000000000000000 | 0 |
| `h * p * p * v` | -400 | 1542221229802484553/312500000000000000000 | 0 |
| `h * p * p` | -63981/1250 | 2654425524617013/125000000000000000 | 0 |
| `p * p * v` | 170779/2500 | 8894163277349/625000000000000 | 1518936310342384871/1562500000000000000 |
| `p * p` | 10926611199/1250000000 | 15308370529/250000000000 | 167268612860612954271/312500000000000000000 |
| `p * p * v * w` | 400 | 398431832335403153/156250000000000000000 | 398431832335403153/390625000000000000 |
| `p * p * w` | 63981/1250 | 685769074587613/62500000000000000 | 43876191161190067353/78125000000000000000 |
| `p * q * v * r` | -400 | 1695324524457301101/312500000000000000000 | 0 |
| `p * q * v` | -596701/2500 | 4203641775599/312500000000000 | 0 |
| `p * q * r` | -63981/1250 | 2917942382886921/125000000000000000 | 0 |
| `p * q * u * w` | -400 | 76521171199576219259/31250000000000000000000 | 0 |
| `q * q * u * r` | 400 | 325597022242015569903/62500000000000000000000 | 325597022242015569903/156250000000000000000 |
| `q * q * u` | 596701/2500 | 807334067880197/62500000000000000 | 481737045638181430097/156250000000000000000 |
| `c * h * p * q` | -400 | 2274515760211527819/390625000000000000000 | 0 |
| `e * e * f * p` | -100 | 132175005155730604197/20000000000000000000000 | 0 |
| `u * w * k` | -110230168829/290625000 | 2529513078541449/250000000000000000 | 0 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 155 | -3642094761126967083309191111465648031792879411164176813/48311368209999375000000000000000000000000000000 |

## Stage 156

| Property | Value |
| --- | --- |
| Scope | root/ACP+/HBP+/AEP-/APQ-/BEP+/BFP-/BPR+/BPS+/BRS- |
| Packet | forest:root/ACP+/HBP+/AEP-/APQ-/BEP+/BFP-/BPR+/BPS+/BRS- |
| Index | 0 |
| Context | 55 |
| Box present | yes |
| Coarse version | 2 |
| Parent box | 133 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 3197/25000 | 157051/250000 | 3197/25000 | 14079/40000 |
| b | 26659/250000 | 349/1000 | 26659/250000 | 13639/125000 |
| c | 135501/250000 | 6671/8000 | 335719/500000 | 68101/100000 |
| e | 416403/1000000 | 343849/500000 | 416403/1000000 | 16777/40000 |
| f | 26659/250000 | 521931/1000000 | 26659/250000 | 55053/500000 |
| h | 324991/500000 | 1/1 | 397941/500000 | 201807/250000 |
| p | 305231/1000000 | 556689/1000000 | 305231/1000000 | 437589/1000000 |
| q | 2761/12500 | 261217/500000 | 2761/12500 | 83047/200000 |
| u | 762403/1000000 | 1/1 | 56461/62500 | 1/1 |
| v | 3197/25000 | 236/625 | 3197/25000 | 68187/500000 |
| r | 116941/200000 | 1/1 | 116941/200000 | 23527/40000 |
| w | 145741/200000 | 1/1 | 499191/500000 | 1/1 |
| j | 425347/1000000 | 210161/250000 | 498239/1000000 | 694273/1000000 |
| k | 156151/250000 | 8959/10000 | 156151/250000 | 80687/100000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 61 | A_BER | brtt ["actual-area","BER",["P","S"]] | `1/1 * w + -1/1 * b * w + -1/1 * e * r + 1/1 * b * e + -13857/20000` |
| 66 | A_BFR | brtt ["actual-area","BFR",[]] | `-1/1 * f * w + 1/1 * b * w + 1/1 * r + -1/1 * b + -93/1000` |
| 77 | A_BRS | brtt ["actual-area","BRS",[]] | `-1/1 * r * k + 1/1 * b * k + 1/1 * w * j + -1/1 * b * w + -93/1000` |
| 82 | A_CEQ | brtt ["actual-area","CEQ",[]] | `-1/1 * v + 1/1 * c * v + 1/1 * e * u + -1/1 * c * e + -93/1000` |
| 86 | A_CFP | brtt ["actual-area","CFP",[]] | `1/1 * f * q + -1/1 * c * q + -1/1 * p + 1/1 * c + -93/1000` |
| 88 | A_CFR | brtt ["actual-area","CFR",[]] | `-1/1 * f * w + 1/1 * c * w + 1/1 * r + -1/1 * c + -93/1000` |
| 90 | A_CHP | brtt ["actual-area","CHP",[]] | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 103 | A_EFR | brtt ["actual-area","EFR",["S"]] | `-1/1 * f * w + 1/1 * e * f + 1/1 * w + 1/1 * r + -1279/1000 + -1/1 * e * r` |
| 113 | A_EQS | brtt ["actual-area","EQS",[]] | `-1/1 * u * k + 1/1 * e * u + 1/1 * k + 1/1 * v * j + -1/1 * v + -1/1 * e * j + -93/1000` |
| 114 | A_ERS | brtt ["actual-area","ERS",[]] | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 115 | A_FHP | brtt ["actual-area","FHP",[]] | `-1/1 * f * q + -1/1 * h * p + 1/1 * f * h + 1/1 * p + -93/1000` |
| 117 | A_FHR | brtt ["actual-area","FHR",[]] | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 124 | A_FRS | brtt ["actual-area","FRS",[]] | `-1/1 * r * k + 1/1 * r + 1/1 * f * k + 1/1 * w * j + -1/1 * f * w + -1/1 * j + -93/1000` |
| 134 | ea | brtt ["contact-order","ea"] | `1/1 * e + -1/1 * a` |
| 138 | lower-area | brtt ["endpoint-lower","135501/250000"] | `1/1 * c * h + -135501/250000` |
| 147 | right-py | brtt ["right-clearance","Q","py"] | `1/1 * e + -1/1 * v + -1/1 * c * e + 1/1 * c * v + -93/1000` |
| 154 | central-y | brtt ["central-lower-y"] | `1/1 * c * h * q + -1/1 * a * c * q + -93/1000 * h + -93/1000 * a` |
| 827 | AREA_lo_ACH | brtt ["earlier-area",{"direction":"lo","ref":"133:20","triangle":"ACH","value":"19377/62500"}] | `1/1 * c * h + -1/1 * a * c + -19377/62500` |
| 839 | AREA_lo_AEQ | brtt ["earlier-area",{"direction":"lo","ref":"133:36","triangle":"AEQ","value":"155049/500000"}] | `-1/1 * v + 1/1 * a + 1/1 * e * u + -1/1 * a * u + -155049/500000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 61 | b | 26659/250000 | 349/1000 | 26659/250000 | 12735416777/116719400000 | 26659/250000 | 13639/125000 | `(-156151/500000, -41523583223/200000000000); (-41007/1000000, -36624545909/100000000000); (-156151/500000, -95137/250000); (-41007/1000000, -651843/1000000); (-583597/1000000, 12735416777/200000000000); (-156151/500000, -9495045909/100000000000); (-583597/1000000, -109253/1000000)` |
| 1 | 61 | e | 416403/1000000 | 343849/500000 | 416403/1000000 | 200514/478069 | 416403/1000000 | 16777/40000 | `(-478069/1000000, -2092559319/50000000000); (-475593/1000000, -1091386499/25000000000); (-223341/250000, -2092559319/50000000000); (-111361/125000, -1091386499/25000000000); (-478069/1000000, 100257/500000); (-475593/1000000, 99019/500000); (-223341/250000, 100257/500000); (-111361/125000, 99019/500000)` |
| 2 | 61 | r | 116941/200000 | 1/1 | 116941/200000 | 20409795859/34700250000 | 116941/200000 | 23527/40000 | `(-416403/1000000, 319045491/125000000000); (-416403/1000000, 111194011/62500000000); (-16777/40000, 8983181/3125000000); (-16777/40000, 6590127/3125000000); (-416403/1000000, 61229387577/250000000000); (-416403/1000000, 30434070517/125000000000); (-16777/40000, 2452398043/10000000000); (-16777/40000, 1219011503/5000000000)` |
| 3 | 61 | w | 145741/200000 | 1/1 | 297306455269/297788000000 | 1/1 | 499191/500000 | 1/1 | `(223341/250000, -891919365807/1000000000000); (111361/125000, -890888351979/1000000000000); (223341/250000, -35734563613/40000000000); (111361/125000, -35693023761/40000000000); (223341/250000, -893364284217/1000000000000); (111361/125000, -892333270389/1000000000000); (223341/250000, -35792779803/40000000000); (111361/125000, -35751239951/40000000000)` |
| 4 | 66 | f | 26659/250000 | 521931/1000000 | 26659/250000 | 20625102623/41599250000 | 26659/250000 | 99161/200000 | `(-499191/500000, 61441557869/125000000000); (-499191/500000, 30720528549/62500000000); (-499191/500000, 61875307869/125000000000); (-499191/500000, 30937403549/62500000000); (-1/1, 98341/200000); (-1/1, 19807/40000)` |
| 5 | 77 | j | 425347/1000000 | 210161/250000 | 124559952419/250000000000 | 210161/250000 | 498239/1000000 | 210161/250000 | `(499191/500000, -124516818157/250000000000); (499191/500000, -124748186739/250000000000); (499191/500000, -125058662127/250000000000); (499191/500000, -125290030709/250000000000); (1/1, -124559952419/250000000000); (1/1, -124792322543/250000000000); (1/1, -125101796389/250000000000); (1/1, -125334166513/250000000000); (499191/500000, -156941370013/250000000000); (499191/500000, -157004806371/250000000000); (499191/500000, -157718563263/250000000000); (499191/500000, -157781999621/250000000000); (1/1, -6279380171/10000000000); (1/1, -6281957687/10000000000); (1/1, -6310467901/10000000000); (1/1, -6313045417/10000000000)` |
| 6 | 82 | c | 135501/250000 | 6671/8000 | 135501/250000 | 39709/58309 | 135501/250000 | 68101/100000 | `(-288523/1000000, 96586896409/1000000000000); (-58309/200000, 3955635131/40000000000); (-288523/1000000, 195523/1000000); (-58309/200000, 39709/200000); (-38803/1000000, -153133103591/1000000000000); (-1673/40000, -6033164869/40000000000); (-38803/1000000, -54197/1000000); (-1673/40000, -2047/40000)` |
| 7 | 82 | u | 762403/1000000 | 1/1 | 18944927809/20971250000 | 1/1 | 56461/62500 | 1/1 | `(416403/1000000, -94315155023/250000000000); (416403/1000000, -41736704823/100000000000); (16777/40000, -18944927809/50000000000); (16777/40000, -8388501209/20000000000); (416403/1000000, -122907845303/250000000000); (416403/1000000, -49702523103/100000000000); (16777/40000, -4932693173/10000000000); (16777/40000, -1996332973/4000000000)` |
| 8 | 82 | v | 3197/25000 | 236/625 | 3197/25000 | 990949723/4579960000 | 3197/25000 | 216367/1000000 | `(-114499/250000, 14369096229/250000000000); (-31899/100000, -203065251/500000000000); (-114499/250000, 585684511/10000000000); (-31899/100000, 5317191/20000000000); (-114499/250000, 24427727097/250000000000); (-31899/100000, 3982839297/100000000000); (-114499/250000, 990949723/10000000000); (-31899/100000, 163169523/4000000000)` |
| 9 | 86 | p | 305231/1000000 | 556689/1000000 | 305231/1000000 | 1367754799/2500000000 | 305231/1000000 | 273551/500000 | `(-1/1, 551312369/1562500000); (-1/1, 2882139193/6250000000); (-1/1, 5484994561/12500000000); (-1/1, 1367754799/2500000000); (-1/1, 13847059643/62500000000); (-1/1, 71984373421/250000000000); (-1/1, 212434035817/500000000000); (-1/1, 49125261103/100000000000)` |
| 10 | 88 | f | 26659/250000 | 99161/200000 | 26659/250000 | 19807/40000 | 26659/250000 | 19807/40000 | `(-499191/500000, 61353504691/125000000000); (-499191/500000, 24530156291/50000000000); (-499191/500000, 61787254691/125000000000); (-499191/500000, 24703656291/50000000000); (-1/1, 98341/200000); (-1/1, 19807/40000)` |
| 11 | 90 | p | 305231/1000000 | 273551/500000 | 305231/1000000 | 546985639/1250000000 | 305231/1000000 | 437589/1000000 | `(-324991/500000, 17446875051/125000000000); (-324991/500000, 9961137651/50000000000); (-1/1, 1029019239/3125000000); (-1/1, 546985639/1250000000); (-324991/500000, -1491779613/62500000000); (-324991/500000, -153463413/25000000000); (-1/1, 20730335283/125000000000); (-1/1, 11611361083/50000000000)` |
| 12 | 90 | q | 2761/12500 | 261217/500000 | 2761/12500 | 282779/681010 | 2761/12500 | 83047/200000 | `(-135501/250000, 30449094043/500000000000); (-68101/100000, 75624792989/500000000000); (-135501/250000, 143773/1000000); (-68101/100000, 282779/1000000); (-135501/250000, -2513212947/100000000000); (-68101/100000, 32609634211/500000000000); (-135501/250000, 2283/200000); (-68101/100000, 150421/1000000)` |
| 13 | 103 | f | 26659/250000 | 19807/40000 | 26659/250000 | 2570286619/23343880000 | 26659/250000 | 55053/500000 | `(-581979/1000000, 12122816777/200000000000); (-578957/1000000, 470776843/8000000000); (-581979/1000000, 2505566619/40000000000); (-578957/1000000, 97378721/1600000000); (-583597/1000000, 12446416777/200000000000); (-23223/40000, 483720843/8000000000); (-583597/1000000, 2570286619/40000000000); (-23223/40000, 99967521/1600000000)` |
| 14 | 113 | j | 498239/1000000 | 210161/250000 | 498239/1000000 | 611459801/728862500 | 498239/1000000 | 209731/250000 | `(-288523/1000000, 13477513339/62500000000); (-58309/200000, 13648138481/62500000000); (-288523/1000000, 195523/1000000); (-58309/200000, 39709/200000); (-50009/250000, 7947075839/62500000000); (-101529/500000, 8117700981/62500000000); (-50009/250000, 26759/250000); (-101529/500000, 55029/500000); (-288523/1000000, 15115869883/62500000000); (-58309/200000, 611459801/2500000000); (-50009/250000, 9585432383/62500000000); (-101529/500000, 390242301/2500000000)` |
| 15 | 114 | j | 498239/1000000 | 209731/250000 | 498239/1000000 | 5374362111/7741000000 | 498239/1000000 | 694273/1000000 | `(-581979/1000000, 80502833141/200000000000); (-578957/1000000, 80149437439/200000000000); (-581979/1000000, 16129464927/40000000000); (-578957/1000000, 16058366333/40000000000); (-583597/1000000, 80826433141/200000000000); (-23223/40000, 80473037439/200000000000); (-583597/1000000, 16194184927/40000000000); (-23223/40000, 16123086333/40000000000); (-581979/1000000, 57969258677/200000000000); (-578957/1000000, 2304634519/8000000000); (-581979/1000000, 11660405919/40000000000); (-578957/1000000, 463572293/1600000000); (-583597/1000000, 58292858677/200000000000); (-23223/40000, 2317578519/8000000000); (-583597/1000000, 11725125919/40000000000); (-23223/40000, 466161093/1600000000)` |
| 16 | 115 | h | 324991/500000 | 1/1 | 324991/500000 | 667226639/682256250 | 324991/500000 | 977971/1000000 | `(-39719/200000, 73702047/390625000); (-1561/8000, 1174442417/6250000000); (-330953/1000000, 501617563/1562500000); (-327483/1000000, 2001679917/6250000000); (-39719/200000, 8397600027/50000000000); (-1561/8000, 16651113509/100000000000); (-330953/1000000, 15015500027/50000000000); (-327483/1000000, 29886913509/100000000000)` |
| 17 | 117 | h | 324991/500000 | 977971/1000000 | 324991/500000 | 48588942131/60192375000 | 324991/500000 | 201807/250000 | `(-478069/1000000, 48155192131/125000000000); (-474599/1000000, 95444287877/250000000000); (-481539/1000000, 48588942131/125000000000); (-478069/1000000, 96311787877/250000000000); (-478069/1000000, 385069/1000000); (-474599/1000000, 381599/1000000); (-481539/1000000, 388539/1000000)` |
| 18 | 124 | k | 156151/250000 | 8959/10000 | 156151/250000 | 129513/160513 | 156151/250000 | 80687/100000 | `(-478069/1000000, 192217693173/500000000000); (-474599/1000000, 190485500403/500000000000); (-481539/1000000, 193952693173/500000000000); (-478069/1000000, 192220500403/500000000000); (-478069/1000000, 385069/1000000); (-474599/1000000, 381599/1000000); (-481539/1000000, 388539/1000000); (-478069/1000000, 192059101667/500000000000); (-474599/1000000, 190326908897/500000000000); (-481539/1000000, 193794101667/500000000000); (-478069/1000000, 192061908897/500000000000)` |
| 19 | 134 | a | 3197/25000 | 157051/250000 | 3197/25000 | 16777/40000 | 3197/25000 | 16777/40000 | `(-1/1, 416403/1000000); (-1/1, 16777/40000)` |
| 20 | 138 | c | 135501/250000 | 68101/100000 | 45167/67269 | 68101/100000 | 335719/500000 | 68101/100000 | `(324991/500000, -135501/250000); (201807/250000, -135501/250000)` |
| 21 | 138 | h | 324991/500000 | 201807/250000 | 271002/340505 | 201807/250000 | 397941/500000 | 201807/250000 | `(335719/500000, -135501/250000); (68101/100000, -135501/250000)` |
| 22 | 147 | v | 3197/25000 | 216367/1000000 | 3197/25000 | 896142337/6571240000 | 3197/25000 | 68187/500000 | `(-164281/500000, 21907101243/500000000000); (-31899/100000, 3982839297/100000000000); (-164281/500000, 896142337/20000000000); (-31899/100000, 163169523/4000000000)` |
| 23 | 154 | a | 3197/25000 | 16777/40000 | 3197/25000 | 765975369230829/1878895936750000 | 3197/25000 | 203837/500000 | `(-1508170159/6250000000, 137556328742619/3125000000000000); (-304276861/1250000000, 28562955843201/625000000000000); (-1508170159/6250000000, 69758657777313/1562500000000000); (-304276861/1250000000, 14485072987827/312500000000000); (-37180455793/100000000000, 7393925158722213/50000000000000000); (-7515583747/20000000000, 1510418391864927/10000000000000000); (-37180455793/100000000000, 3749666042217951/25000000000000000); (-7515583747/20000000000, 765975369230829/5000000000000000)` |
| 24 | 827 | a | 3197/25000 | 203837/500000 | 3197/25000 | 5992458507/17025250000 | 3197/25000 | 14079/40000 | `(-335719/500000, 56088354579/250000000000); (-68101/100000, 11598580041/50000000000); (-335719/500000, 28996444233/125000000000); (-68101/100000, 5992458507/25000000000)` |

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
| 839 | a | 3197/25000 | 14079/40000 | `(6039/62500, -3863095217/62500000000); (6039/62500, -147698803/2500000000); (0/1, -863/40000); (0/1, -18553/1000000); (6039/62500, -4393970217/62500000000); (6039/62500, -168933803/2500000000); (0/1, -30069/1000000); (0/1, -27047/1000000)` |

## Stage 157

| Property | Value |
| --- | --- |
| Scope | root/ACP+/HBP+/AEP-/APQ-/BEP+/BFP-/BPR+/BPS- |
| Packet | forest:root/ACP+/HBP+/AEP-/APQ-/BEP+/BFP-/BPR+/BPS- |
| Index | 0 |
| Context | 56 |
| Box present | yes |
| Coarse version | 2 |
| Parent box | 130 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 3197/25000 | 79089/125000 | 6539/31250 | 71499/200000 |
| b | 26659/250000 | 349/1000 | 26659/250000 | 13639/125000 |
| c | 135501/250000 | 6671/8000 | 335719/500000 | 68101/100000 |
| e | 416403/1000000 | 343849/500000 | 416403/1000000 | 16777/40000 |
| f | 26659/250000 | 521931/1000000 | 26659/250000 | 55053/500000 |
| h | 324991/500000 | 1/1 | 397941/500000 | 201807/250000 |
| p | 305231/1000000 | 556689/1000000 | 305231/1000000 | 387397/1000000 |
| q | 2761/12500 | 261217/500000 | 147291/500000 | 83047/200000 |
| u | 762403/1000000 | 1/1 | 56461/62500 | 39921/40000 |
| v | 3197/25000 | 94407/250000 | 3197/25000 | 68187/500000 |
| r | 116941/200000 | 1/1 | 116941/200000 | 23527/40000 |
| w | 145741/200000 | 1/1 | 499191/500000 | 1/1 |
| j | 425347/1000000 | 210161/250000 | 684239/1000000 | 694273/1000000 |
| k | 156151/250000 | 8959/10000 | 156151/250000 | 638749/1000000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 61 | A_BER | brtt ["actual-area","BER",["P","S"]] | `1/1 * w + -1/1 * b * w + -1/1 * e * r + 1/1 * b * e + -13857/20000` |
| 66 | A_BFR | brtt ["actual-area","BFR",[]] | `-1/1 * f * w + 1/1 * b * w + 1/1 * r + -1/1 * b + -93/1000` |
| 74 | A_BPS | brtt ["actual-area","BPS",[]] | `-1/1 * p * k + 1/1 * b * k + 1/1 * q * j + -1/1 * b * q + -93/1000` |
| 77 | A_BRS | brtt ["actual-area","BRS",["P"]] | `-1/1 * r * k + 1/1 * b * k + 1/1 * w * j + -1/1 * b * w + -279/1000` |
| 82 | A_CEQ | brtt ["actual-area","CEQ",[]] | `-1/1 * v + 1/1 * c * v + 1/1 * e * u + -1/1 * c * e + -93/1000` |
| 86 | A_CFP | brtt ["actual-area","CFP",[]] | `1/1 * f * q + -1/1 * c * q + -1/1 * p + 1/1 * c + -93/1000` |
| 88 | A_CFR | brtt ["actual-area","CFR",[]] | `-1/1 * f * w + 1/1 * c * w + 1/1 * r + -1/1 * c + -93/1000` |
| 90 | A_CHP | brtt ["actual-area","CHP",[]] | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 103 | A_EFR | brtt ["actual-area","EFR",["S"]] | `-1/1 * f * w + 1/1 * e * f + 1/1 * w + 1/1 * r + -1279/1000 + -1/1 * e * r` |
| 113 | A_EQS | brtt ["actual-area","EQS",[]] | `-1/1 * u * k + 1/1 * e * u + 1/1 * k + 1/1 * v * j + -1/1 * v + -1/1 * e * j + -93/1000` |
| 114 | A_ERS | brtt ["actual-area","ERS",[]] | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 115 | A_FHP | brtt ["actual-area","FHP",[]] | `-1/1 * f * q + -1/1 * h * p + 1/1 * f * h + 1/1 * p + -93/1000` |
| 117 | A_FHR | brtt ["actual-area","FHR",[]] | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 135 | ea | brtt ["contact-order","ea"] | `1/1 * e + -1/1 * a` |
| 139 | lower-area | brtt ["endpoint-lower","135501/250000"] | `1/1 * c * h + -135501/250000` |
| 148 | right-py | brtt ["right-clearance","Q","py"] | `1/1 * e + -1/1 * v + -1/1 * c * e + 1/1 * c * v + -93/1000` |
| 155 | central-y | brtt ["central-lower-y"] | `1/1 * c * h * q + -1/1 * a * c * q + -93/1000 * h + -93/1000 * a` |
| 303 | SUP_AER_APR_EPR | brtt ["support-envelope",["quad","RAPE",["S"],"149/20"],"AER","APR","EPR","140683831857/200000000000"] | `2113831857/200000000000 * p * w + -140683831857/200000000000 * a * p + -2113831857/200000000000 * q * r + 2113831857/200000000000 * a * r + 13857/20000 * a + 13857/20000 * e * p + -13857/20000 * q` |
| 856 | AREA_lo_ACH | brtt ["earlier-area",{"direction":"lo","ref":"130:20","triangle":"ACH","value":"306273/1000000"}] | `1/1 * c * h + -1/1 * a * c + -306273/1000000` |
| 868 | AREA_lo_AEQ | brtt ["earlier-area",{"direction":"lo","ref":"130:36","triangle":"AEQ","value":"31007/100000"}] | `-1/1 * v + 1/1 * a + 1/1 * e * u + -1/1 * a * u + -31007/100000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 61 | b | 26659/250000 | 349/1000 | 26659/250000 | 12735416777/116719400000 | 26659/250000 | 13639/125000 | `(-156151/500000, -41523583223/200000000000); (-41007/1000000, -36624545909/100000000000); (-156151/500000, -95137/250000); (-41007/1000000, -651843/1000000); (-583597/1000000, 12735416777/200000000000); (-156151/500000, -9495045909/100000000000); (-583597/1000000, -109253/1000000)` |
| 1 | 61 | e | 416403/1000000 | 343849/500000 | 416403/1000000 | 200514/478069 | 416403/1000000 | 16777/40000 | `(-478069/1000000, -2092559319/50000000000); (-475593/1000000, -1091386499/25000000000); (-223341/250000, -2092559319/50000000000); (-111361/125000, -1091386499/25000000000); (-478069/1000000, 100257/500000); (-475593/1000000, 99019/500000); (-223341/250000, 100257/500000); (-111361/125000, 99019/500000)` |
| 2 | 61 | r | 116941/200000 | 1/1 | 116941/200000 | 20409795859/34700250000 | 116941/200000 | 23527/40000 | `(-416403/1000000, 319045491/125000000000); (-416403/1000000, 111194011/62500000000); (-16777/40000, 8983181/3125000000); (-16777/40000, 6590127/3125000000); (-416403/1000000, 61229387577/250000000000); (-416403/1000000, 30434070517/125000000000); (-16777/40000, 2452398043/10000000000); (-16777/40000, 1219011503/5000000000)` |
| 3 | 61 | w | 145741/200000 | 1/1 | 297306455269/297788000000 | 1/1 | 499191/500000 | 1/1 | `(223341/250000, -891919365807/1000000000000); (111361/125000, -890888351979/1000000000000); (223341/250000, -35734563613/40000000000); (111361/125000, -35693023761/40000000000); (223341/250000, -893364284217/1000000000000); (111361/125000, -892333270389/1000000000000); (223341/250000, -35792779803/40000000000); (111361/125000, -35751239951/40000000000)` |
| 4 | 66 | f | 26659/250000 | 521931/1000000 | 26659/250000 | 20625102623/41599250000 | 26659/250000 | 99161/200000 | `(-499191/500000, 61441557869/125000000000); (-499191/500000, 30720528549/62500000000); (-499191/500000, 61875307869/125000000000); (-499191/500000, 30937403549/62500000000); (-1/1, 98341/200000); (-1/1, 19807/40000)` |
| 5 | 74 | q | 2761/12500 | 261217/500000 | 17958059323/60961000000 | 261217/500000 | 147291/500000 | 261217/500000 | `(318711/1000000, -10852161569/50000000000); (63247/200000, -53874177969/250000000000); (318711/1000000, -93526226003/250000000000); (63247/200000, -93139596127/250000000000); (91751/125000, -10852161569/50000000000); (182883/250000, -53874177969/250000000000); (91751/125000, -93526226003/250000000000); (182883/250000, -93139596127/250000000000); (318711/1000000, -541842521/2000000000); (63247/200000, -2687030121/10000000000); (318711/1000000, -4962024827/10000000000); (63247/200000, -4939842343/10000000000); (91751/125000, -541842521/2000000000); (182883/250000, -2687030121/10000000000); (91751/125000, -4962024827/10000000000); (182883/250000, -4939842343/10000000000)` |
| 6 | 74 | j | 425347/1000000 | 210161/250000 | 68125132621/130608500000 | 210161/250000 | 260799/500000 | 210161/250000 | `(147291/500000, -62114069383/250000000000); (147291/500000, -12381957153/50000000000); (147291/500000, -101379487541/250000000000); (147291/500000, -101175203923/250000000000); (261217/500000, -68188375851/250000000000); (261217/500000, -68125132621/250000000000); (261217/500000, -107453794009/250000000000); (261217/500000, -107390550779/250000000000); (147291/500000, -75583576663/250000000000); (147291/500000, -75211360821/250000000000); (147291/500000, -131903882213/250000000000); (147291/500000, -131531666371/250000000000); (261217/500000, -81657883131/250000000000); (261217/500000, -81426707677/250000000000); (261217/500000, -137978188681/250000000000); (261217/500000, -137747013227/250000000000)` |
| 7 | 77 | j | 260799/500000 | 210161/250000 | 171059952419/250000000000 | 210161/250000 | 684239/1000000 | 210161/250000 | `(499191/500000, -171016818157/250000000000); (499191/500000, -171248186739/250000000000); (499191/500000, -171558662127/250000000000); (499191/500000, -171790030709/250000000000); (1/1, -171059952419/250000000000); (1/1, -171292322543/250000000000); (1/1, -171601796389/250000000000); (1/1, -171834166513/250000000000); (499191/500000, -203441370013/250000000000); (499191/500000, -203504806371/250000000000); (499191/500000, -204218563263/250000000000); (499191/500000, -204281999621/250000000000); (1/1, -8139380171/10000000000); (1/1, -8141957687/10000000000); (1/1, -8170467901/10000000000); (1/1, -8173045417/10000000000)` |
| 8 | 82 | c | 135501/250000 | 6671/8000 | 135501/250000 | 39709/58309 | 135501/250000 | 68101/100000 | `(-288523/1000000, 96586896409/1000000000000); (-58309/200000, 3955635131/40000000000); (-288523/1000000, 195523/1000000); (-58309/200000, 39709/200000); (-1551/40000, -153161103591/1000000000000); (-41797/1000000, -6034284869/40000000000); (-1551/40000, -2169/40000); (-41797/1000000, -51203/1000000)` |
| 9 | 82 | u | 762403/1000000 | 1/1 | 18944927809/20971250000 | 1/1 | 56461/62500 | 1/1 | `(416403/1000000, -94315155023/250000000000); (416403/1000000, -41736704823/100000000000); (16777/40000, -18944927809/50000000000); (16777/40000, -8388501209/20000000000); (416403/1000000, -4916442051/10000000000); (416403/1000000, -1988136651/4000000000); (16777/40000, -123320535297/250000000000); (16777/40000, -49909217497/100000000000)` |
| 10 | 82 | v | 3197/25000 | 94407/250000 | 3197/25000 | 990949723/4579960000 | 3197/25000 | 216367/1000000 | `(-114499/250000, 14369096229/250000000000); (-31899/100000, -203065251/500000000000); (-114499/250000, 585684511/10000000000); (-31899/100000, 5317191/20000000000); (-114499/250000, 24427727097/250000000000); (-31899/100000, 3982839297/100000000000); (-114499/250000, 990949723/10000000000); (-31899/100000, 163169523/4000000000)` |
| 11 | 86 | p | 305231/1000000 | 556689/1000000 | 305231/1000000 | 53345194069/100000000000 | 305231/1000000 | 133363/250000 | `(-1/1, 20047026489/62500000000); (-1/1, 104702439583/250000000000); (-1/1, 217697303091/500000000000); (-1/1, 53345194069/100000000000); (-1/1, 13847059643/62500000000); (-1/1, 71984373421/250000000000); (-1/1, 212434035817/500000000000); (-1/1, 49125261103/100000000000)` |
| 12 | 88 | f | 26659/250000 | 99161/200000 | 26659/250000 | 19807/40000 | 26659/250000 | 19807/40000 | `(-499191/500000, 61353504691/125000000000); (-499191/500000, 24530156291/50000000000); (-499191/500000, 61787254691/125000000000); (-499191/500000, 24703656291/50000000000); (-1/1, 98341/200000); (-1/1, 19807/40000)` |
| 13 | 90 | c | 135501/250000 | 68101/100000 | 398231/705418 | 68101/100000 | 564531/1000000 | 68101/100000 | `(1777/5000, -145697327921/500000000000); (352709/500000, -398231/1000000); (1777/5000, -54966774733/125000000000); (352709/500000, -156613/250000); (31887/250000, -145697327921/500000000000); (238783/500000, -398231/1000000); (31887/250000, -54966774733/125000000000); (238783/500000, -156613/250000)` |
| 14 | 90 | h | 324991/500000 | 1/1 | 14680664391/18788950000 | 1/1 | 156269/200000 | 1/1 | `(2593/10000, -129650335521/500000000000); (375779/1000000, -14680664391/50000000000); (31079/1000000, -129650335521/500000000000); (73779/500000, -14680664391/50000000000); (2593/10000, -193965094227/500000000000); (375779/1000000, -22439138917/50000000000); (31079/1000000, -193965094227/500000000000); (73779/500000, -22439138917/50000000000)` |
| 15 | 90 | p | 305231/1000000 | 133363/250000 | 305231/1000000 | 19369835609/50000000000 | 305231/1000000 | 387397/1000000 | `(-156269/200000, 181792803153/1000000000000); (-156269/200000, 23849047063/100000000000); (-1/1, 152615164479/500000000000); (-1/1, 19369835609/50000000000); (-156269/200000, 53163285741/1000000000000); (-156269/200000, 8332098011/100000000000); (-1/1, 88300405773/500000000000); (-1/1, 11611361083/50000000000)` |
| 16 | 90 | q | 147291/500000 | 261217/500000 | 147291/500000 | 282779/681010 | 147291/500000 | 83047/200000 | `(-564531/1000000, 219205517/2000000000); (-68101/100000, 40122608551/200000000000); (-564531/1000000, 1663/10000); (-68101/100000, 282779/1000000); (-564531/1000000, 4540276523/100000000000); (-68101/100000, 27282609897/200000000000); (-564531/1000000, 42067/500000); (-68101/100000, 200613/1000000)` |
| 17 | 103 | f | 26659/250000 | 19807/40000 | 26659/250000 | 2570286619/23343880000 | 26659/250000 | 55053/500000 | `(-581979/1000000, 12122816777/200000000000); (-578957/1000000, 470776843/8000000000); (-581979/1000000, 2505566619/40000000000); (-578957/1000000, 97378721/1600000000); (-583597/1000000, 12446416777/200000000000); (-23223/40000, 483720843/8000000000); (-583597/1000000, 2570286619/40000000000); (-23223/40000, 99967521/1600000000)` |
| 18 | 113 | u | 56461/62500 | 1/1 | 56461/62500 | 95106708149/95295000000 | 56461/62500 | 39921/40000 | `(-208201/1000000, 206305311003/1000000000000); (-205179/1000000, 40847508149/200000000000); (-208201/1000000, 44591141849/250000000000); (-205179/1000000, 88148398569/500000000000); (-208201/1000000, 40294717797/250000000000); (-205179/1000000, 7931922251/50000000000); (-208201/1000000, 9192371051/62500000000); (-205179/1000000, 18067188831/125000000000); (-479497/1000000, 477601311003/1000000000000); (-19059/40000, 95106708149/200000000000); (-479497/1000000, 112415141849/250000000000); (-19059/40000, 223796398569/500000000000); (-479497/1000000, 108118717797/250000000000); (-19059/40000, 21496722251/50000000000); (-479497/1000000, 26148371051/62500000000); (-19059/40000, 51979188831/125000000000)` |
| 19 | 113 | j | 684239/1000000 | 210161/250000 | 684239/1000000 | 611459801/728862500 | 684239/1000000 | 209731/250000 | `(-288523/1000000, 13477513339/62500000000); (-58309/200000, 13648138481/62500000000); (-288523/1000000, 7837367879/40000000000); (-58309/200000, 7958009141/40000000000); (-50009/250000, 7947075839/62500000000); (-101529/500000, 8117700981/62500000000); (-50009/250000, 4297887879/40000000000); (-101529/500000, 4418529141/40000000000); (-288523/1000000, 15115869883/62500000000); (-58309/200000, 611459801/2500000000); (-288523/1000000, 7858800263/40000000000); (-58309/200000, 319177661/1600000000); (-50009/250000, 9585432383/62500000000); (-101529/500000, 390242301/2500000000); (-50009/250000, 4319320263/40000000000); (-101529/500000, 177598461/1600000000)` |
| 20 | 114 | j | 684239/1000000 | 209731/250000 | 684239/1000000 | 5374362111/7741000000 | 684239/1000000 | 694273/1000000 | `(-581979/1000000, 80502833141/200000000000); (-578957/1000000, 80149437439/200000000000); (-581979/1000000, 16129464927/40000000000); (-578957/1000000, 16058366333/40000000000); (-583597/1000000, 80826433141/200000000000); (-23223/40000, 80473037439/200000000000); (-583597/1000000, 16194184927/40000000000); (-23223/40000, 16123086333/40000000000); (-581979/1000000, 57969258677/200000000000); (-578957/1000000, 2304634519/8000000000); (-581979/1000000, 11660405919/40000000000); (-578957/1000000, 463572293/1600000000); (-583597/1000000, 58292858677/200000000000); (-23223/40000, 2317578519/8000000000); (-583597/1000000, 11725125919/40000000000); (-23223/40000, 466161093/1600000000)` |
| 21 | 114 | k | 156151/250000 | 8959/10000 | 156151/250000 | 54802634/85796875 | 156151/250000 | 638749/1000000 | `(-83059/200000, 32962044363/125000000000); (-83059/200000, 65999286663/250000000000); (-16473/40000, 131125718247/500000000000); (-16473/40000, 131270870951/500000000000); (-83059/200000, 132103628101/500000000000); (-83059/200000, 5290160959/20000000000); (-16473/40000, 513207691/1953125000); (-16473/40000, 82203951/312500000); (-83059/200000, 128928388809/500000000000); (-83059/200000, 129093946057/500000000000); (-16473/40000, 32051482401/125000000000); (-16473/40000, 64183121841/250000000000); (-83059/200000, 4036741311/15625000000); (-83059/200000, 161676599/625000000); (-16473/40000, 128453262747/500000000000); (-16473/40000, 5144543073/20000000000)` |
| 22 | 115 | h | 156269/200000 | 1/1 | 156269/200000 | 65490438577/69322750000 | 156269/200000 | 472359/500000 | `(-39719/200000, 22602244231/125000000000); (-1561/8000, 44948938577/250000000000); (-280761/1000000, 32872994231/125000000000); (-277291/1000000, 65490438577/250000000000); (-39719/200000, 8397600027/50000000000); (-1561/8000, 16651113509/100000000000); (-280761/1000000, 12505900027/50000000000); (-277291/1000000, 24867713509/100000000000)` |
| 23 | 117 | h | 156269/200000 | 472359/500000 | 156269/200000 | 48588942131/60192375000 | 156269/200000 | 201807/250000 | `(-478069/1000000, 48155192131/125000000000); (-474599/1000000, 95444287877/250000000000); (-481539/1000000, 48588942131/125000000000); (-478069/1000000, 96311787877/250000000000); (-478069/1000000, 385069/1000000); (-474599/1000000, 381599/1000000); (-481539/1000000, 388539/1000000)` |
| 24 | 135 | a | 3197/25000 | 79089/125000 | 3197/25000 | 16777/40000 | 3197/25000 | 16777/40000 | `(-1/1, 416403/1000000); (-1/1, 16777/40000)` |
| 25 | 139 | c | 564531/1000000 | 68101/100000 | 45167/67269 | 68101/100000 | 335719/500000 | 68101/100000 | `(156269/200000, -135501/250000); (201807/250000, -135501/250000)` |
| 26 | 139 | h | 156269/200000 | 201807/250000 | 271002/340505 | 201807/250000 | 397941/500000 | 201807/250000 | `(335719/500000, -135501/250000); (68101/100000, -135501/250000)` |
| 27 | 148 | v | 3197/25000 | 216367/1000000 | 3197/25000 | 896142337/6571240000 | 3197/25000 | 68187/500000 | `(-164281/500000, 21907101243/500000000000); (-31899/100000, 3982839297/100000000000); (-164281/500000, 896142337/20000000000); (-31899/100000, 163169523/4000000000)` |
| 28 | 155 | a | 3197/25000 | 16777/40000 | 3197/25000 | 765975369230829/1878895936750000 | 3197/25000 | 203837/500000 | `(-72698387229/250000000000, 10425412412295489/125000000000000000); (-14680664391/50000000000, 2141186968418931/25000000000000000); (-72698387229/250000000000, 5287017931522803/62500000000000000); (-14680664391/50000000000, 1085855738754537/12500000000000000); (-37180455793/100000000000, 7393925158722213/50000000000000000); (-7515583747/20000000000, 1510418391864927/10000000000000000); (-37180455793/100000000000, 3749666042217951/25000000000000000); (-7515583747/20000000000, 765975369230829/5000000000000000)` |
| 29 | 303 | a | 3197/25000 | 203837/500000 | 595000784048918488389/2843515788201365200000 | 203837/500000 | 6539/31250 | 203837/500000 | `(48432450687201609/100000000000000000, -5732008940272683697569/50000000000000000000000); (48432450687201609/100000000000000000, -5700054418291998697569/50000000000000000000000); (21326368411510239/50000000000000000, -1125848393189871433137/12500000000000000000000); (21326368411510239/50000000000000000, -1115709280557347683137/12500000000000000000000); (48432450687201609/100000000000000000, -39796045224944930502081/200000000000000000000000); (48432450687201609/100000000000000000, -39668227137022190502081/200000000000000000000000); (21326368411510239/50000000000000000, -34881583754892138641997/200000000000000000000000); (21326368411510239/50000000000000000, -34719357952771758641997/200000000000000000000000); (1513628693296047/3125000000000000, -2866274564880324692007/25000000000000000000000); (1513628693296047/3125000000000000, -2850297303889982192007/25000000000000000000000); (42656404321292373/100000000000000000, -4503933762247451418993/50000000000000000000000); (42656404321292373/100000000000000000, -4463377311717356418993/50000000000000000000000); (1513628693296047/3125000000000000, -39799090972234791142731/200000000000000000000000); (1513628693296047/3125000000000000, -39671272884312051142731/200000000000000000000000); (42656404321292373/100000000000000000, -34884629502181999282647/200000000000000000000000); (42656404321292373/100000000000000000, -34722403700061619282647/200000000000000000000000); (48432450687201609/100000000000000000, -2292699181614605665167/20000000000000000000000); (48432450687201609/100000000000000000, -2279917372822331665167/20000000000000000000000); (21326368411510239/50000000000000000, -1801224932358793465167/20000000000000000000000); (21326368411510239/50000000000000000, -1785002352146755465167/20000000000000000000000); (48432450687201609/100000000000000000, -1591800051200010094539/8000000000000000000000); (48432450687201609/100000000000000000, -1586687327683100494539/8000000000000000000000); (21326368411510239/50000000000000000, -1395210351497685214539/8000000000000000000000); (21326368411510239/50000000000000000, -1388721319412870014539/8000000000000000000000); (1513628693296047/3125000000000000, -458583051481958387949/4000000000000000000000); (1513628693296047/3125000000000000, -456026689723503587949/4000000000000000000000); (42656404321292373/100000000000000000, -360288201630795947949/4000000000000000000000); (42656404321292373/100000000000000000, -357043685588388347949/4000000000000000000000); (1513628693296047/3125000000000000, -318384376218320904033/1600000000000000000000); (1513628693296047/3125000000000000, -317361831514938984033/1600000000000000000000); (42656404321292373/100000000000000000, -279066436277855928033/1600000000000000000000); (42656404321292373/100000000000000000, -277768629860892888033/1600000000000000000000)` |
| 30 | 856 | a | 6539/31250 | 203837/500000 | 6539/31250 | 553312137/1547750000 | 6539/31250 | 71499/200000 | `(-335719/500000, 57028104579/250000000000); (-68101/100000, 11786530041/50000000000); (-335719/500000, 29466319233/125000000000); (-68101/100000, 6086433507/25000000000)` |

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
| 868 | a | 6539/31250 | 71499/200000 | `(6039/62500, -3861345217/62500000000); (6039/62500, -147628803/2500000000); (79/40000, -894775837/40000000000); (79/40000, -30965383/1600000000); (6039/62500, -4392220217/62500000000); (6039/62500, -168863803/2500000000); (79/40000, -1234535837/40000000000); (79/40000, -44555783/1600000000)` |

## Stage 158

| Property | Value |
| --- | --- |
| Scope | root/ACP+/HBP+/AEP-/APQ-/BEP+/BFP-/BPR- |
| Packet | forest:root/ACP+/HBP+/AEP-/APQ-/BEP+/BFP-/BPR- |
| Index | 0 |
| Context | 57 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 125 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 3197/25000 | 79089/125000 | 3197/25000 | 79089/125000 |
| b | 26659/250000 | 91813/200000 | 26659/250000 | 91813/200000 |
| c | 135501/250000 | 6671/8000 | 135501/250000 | 6671/8000 |
| e | 416403/1000000 | 343849/500000 | 416403/1000000 | 343849/500000 |
| f | 26659/250000 | 521931/1000000 | 26659/250000 | 521931/1000000 |
| h | 324991/500000 | 1/1 | 324991/500000 | 1/1 |
| p | 49909/250000 | 556689/1000000 | 49909/250000 | 556689/1000000 |
| q | 2761/12500 | 570323/1000000 | 2761/12500 | 570323/1000000 |
| u | 762403/1000000 | 1/1 | 762403/1000000 | 1/1 |
| v | 3197/25000 | 377839/1000000 | 3197/25000 | 377839/1000000 |
| r | 116941/200000 | 1/1 | 116941/200000 | 1/1 |
| w | 145741/200000 | 1/1 | 145741/200000 | 1/1 |
| j | 425347/1000000 | 210161/250000 | 425347/1000000 | 210161/250000 |
| k | 156151/250000 | 8959/10000 | 156151/250000 | 8959/10000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |


### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |


### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 158:3 | ABE | hi | 65795414809/100000000000 | vertex maximum 65795414809/100000000000 |
| 158:8 | ABP | lo | 93/1000 | occupants none |
| 158:10 | ABQ | lo | 63161/500000 | earlier 125:10; ABQ; lo; 63161/500000 |
| 158:13 | ABR | hi | 20033026643/25000000000 | vertex maximum 20033026643/25000000000 |
| 158:16 | ACE | lo | 279/1000 | occupants P |
| 158:20 | ACH | lo | 306273/1000000 | earlier 125:20; ACH; lo; 306273/1000000 |
| 158:22 | ACP | lo | 93/1000 | occupants none |
| 158:30 | AEF | lo | 63169/500000 | earlier 125:30; AEF; lo; 63169/500000 |
| 158:34 | AEP | lo | 93/1000 | occupants none |
| 158:36 | AEQ | lo | 309859/1000000 | earlier 125:36; AEQ; lo; 309859/1000000 |
| 158:39 | AER | hi | 140683831857/200000000000 | vertex maximum 140683831857/200000000000 |
| 158:52 | AHP | lo | 120273/1000000 | earlier 125:52; AHP; lo; 120273/1000000 |
| 158:54 | AHQ | lo | 306273/1000000 | earlier 125:54; AHQ; lo; 306273/1000000 |
| 158:56 | AHR | lo | 93/1000 | occupants none |
| 158:62 | APR | lo | 93/1000 | occupants none |
| 158:70 | BCE | lo | 93/1000 | occupants none |
| 158:72 | BCF | lo | 301201/1000000 | earlier 125:72; BCF; lo; 301201/1000000 |
| 158:74 | BCH | lo | 301201/1000000 | earlier 125:74; BCH; lo; 301201/1000000 |
| 158:75 | BCH | hi | 727239/1000000 | vertex maximum 727239/1000000 |
| 158:76 | BCP | lo | 115201/1000000 | earlier 125:76; BCP; lo; 115201/1000000 |
| 158:84 | BEF | lo | 19457/62500 | earlier 125:84; BEF; lo; 19457/62500 |
| 158:88 | BEP | lo | 93/1000 | occupants none |
| 158:90 | BEQ | lo | 93/1000 | occupants none |
| 158:92 | BER | lo | 95589/1000000 | earlier 125:92; BER; lo; 95589/1000000 |
| 158:98 | BFP | lo | 93/1000 | occupants none |
| 158:100 | BFQ | lo | 306273/1000000 | earlier 125:100; BFQ; lo; 306273/1000000 |
| 158:103 | BFR | hi | 223341/250000 | vertex maximum 223341/250000 |
| 158:106 | BHP | lo | 93/1000 | occupants none |
| 158:115 | BPQ | hi | 121857/250000 | earlier 125:115; BPQ; hi; 121857/250000 |
| 158:116 | BPR | lo | 93/1000 | occupants none |
| 158:130 | CER | lo | 93/1000 | occupants none |
| 158:140 | CFR | lo | 158941/1000000 | earlier 125:138; CFR; lo; 158941/1000000 |
| 158:144 | CHP | lo | 93/1000 | occupants none |
| 158:148 | CHR | lo | 93989/1000000 | earlier 125:146; CHR; lo; 93989/1000000 |
| 158:155 | CPR | hi | 596107/1000000 | earlier 125:153; CPR; hi; 596107/1000000 |
| 158:162 | EFH | lo | 93/1000 | occupants none |
| 158:165 | EFP | hi | 657223/1000000 | earlier 125:163; EFP; hi; 657223/1000000 |
| 158:166 | EFQ | lo | 139603/1000000 | earlier 125:164; EFQ; lo; 139603/1000000 |
| 158:167 | EFQ | hi | 287161633023/500000000000 | vertex maximum 287161633023/500000000000 |
| 158:168 | EFR | lo | 279/1000 | occupants S |
| 158:173 | EHP | hi | 137537/200000 | earlier 125:171; EHP; hi; 137537/200000 |
| 158:176 | EHR | lo | 13097/125000 | earlier 125:174; EHR; lo; 13097/125000 |
| 158:180 | EPQ | lo | 123859/1000000 | earlier 125:178; EPQ; lo; 123859/1000000 |
| 158:181 | EPQ | hi | 186909/500000 | earlier 125:179; EPQ; hi; 186909/500000 |
| 158:186 | EQR | lo | 93/1000 | occupants none |
| 158:196 | FHR | lo | 93/1000 | occupants none |
| 158:213 | HPQ | hi | 141727/250000 | earlier 125:211; HPQ; hi; 141727/250000 |
| 158:214 | HPR | lo | 96523/1000000 | earlier 125:212; HPR; lo; 96523/1000000 |
| 158:223 | PQR | hi | 141727/250000 | earlier 125:221; PQR; hi; 141727/250000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 19 | fan | BHR = BHP + HPR + BPR | point P |
| 275 | plu | AER * CEF = ACE * EFR + AEF * CER | circuit EACFR |
| 697 | plu | BFR * EHR = BER * FHR + BHR * EFR | circuit RBEFH |
| 716 | plu | BER * EFQ = BEF * EQR + BEQ * EFR | circuit EBFQR |
| 2207 | bary | outer ABE; fans BEP, AEP, ABP; target HPR; sign -1; vertices AHR -1; BHR -1; EHR -1 | container ABE; inner P; line HR |
| 2228 | bary | outer ABR; fans BPR, APR, ABP; target CEP; sign 1; vertices ACE 1; BCE 1; CER 1 | container ABR; inner P; line CE |
| 2722 | bary | outer BCH; fans CHP, BHP, BCP; target EFP; sign 1; vertices BEF 1; CEF 1; EFH 1 | container BCH; inner P; line EF |
| 3045 | four | 1 * ACE + -1 * AEP + -1 * ACP + -1 * CEP = 0 | vertices ACEP |
| 3113 | four | 1 * BEF + -1 * BFP + -1 * BEP + -1 * EFP = 0 | vertices BEFP |
| 3134 | four | -1 * BHP + -1 * BPR + 1 * BHR + -1 * HPR = 0 | vertices BHPR |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 158:228 | BHR | lo | 282523/1000000 | 282523/1000000 | 19 | 158:106, 158:214, 158:116 |
| 158:233 | HPR | lo | 121453/1000000 | 7991054277237/65795414809000 | 2207 | 158:3, 158:88, 158:34, 158:8, 158:56, 158:228, 158:176 |
| 158:234 | CEP | lo | 57293/500000 | 2295521477799/20033026643000 | 2228 | 158:13, 158:116, 158:62, 158:8, 158:16, 158:70, 158:130 |
| 158:241 | ACE | lo | 150293/500000 | 150293/500000 | 3045 | 158:34, 158:22, 158:234 |
| 158:244 | BHR | lo | 307453/1000000 | 307453/1000000 | 3134 | 158:106, 158:116, 158:233 |
| 158:245 | CEF | lo | 5437/40000 | 6374195200/46894610619 | 275 | 158:241, 158:168, 158:30, 158:130, 158:39 |
| 158:246 | EHR | lo | 105969/1000000 | 7889097/74447000 | 697 | 158:92, 158:196, 158:244, 158:168, 158:103 |
| 158:250 | HPR | lo | 25029/200000 | 8233998177237/65795414809000 | 2207 | 158:3, 158:88, 158:34, 158:8, 158:56, 158:244, 158:246 |
| 158:252 | CEP | lo | 29273/250000 | 2345708927799/20033026643000 | 2228 | 158:13, 158:116, 158:62, 158:8, 158:241, 158:70, 158:130 |
| 158:254 | EFP | lo | 126407/1000000 | 7660689/60603250 | 2722 | 158:75, 158:144, 158:106, 158:76, 158:84, 158:245, 158:162 |
| 158:257 | ACE | lo | 75773/250000 | 75773/250000 | 3045 | 158:34, 158:22, 158:252 |
| 158:259 | BEF | lo | 312407/1000000 | 312407/1000000 | 3113 | 158:98, 158:88, 158:254 |
| 158:261 | BHR | lo | 62229/200000 | 62229/200000 | 3134 | 158:106, 158:116, 158:250 |
| 158:262 | CEF | lo | 136919/1000000 | 337937200/2468137401 | 275 | 158:257, 158:168, 158:30, 158:130, 158:39 |
| 158:263 | EHR | lo | 53561/500000 | 996867/9305875 | 697 | 158:92, 158:196, 158:261, 158:168, 158:103 |
| 158:264 | BER | lo | 47883/500000 | 9166808500/95720544341 | 716 | 158:259, 158:186, 158:90, 158:168, 158:167 |
| 158:268 | HPR | lo | 12583/100000 | 8279056677237/65795414809000 | 2207 | 158:3, 158:88, 158:34, 158:8, 158:56, 158:261, 158:263 |
| 158:270 | CEP | lo | 58691/500000 | 2351535377799/20033026643000 | 2228 | 158:13, 158:116, 158:62, 158:8, 158:257, 158:70, 158:130 |
| 158:273 | EFP | lo | 63337/500000 | 6141503/48482600 | 2722 | 158:75, 158:144, 158:106, 158:76, 158:259, 158:262, 158:162 |
| 158:276 | ACE | lo | 151691/500000 | 151691/500000 | 3045 | 158:34, 158:22, 158:270 |
| 158:278 | BEF | lo | 156337/500000 | 156337/500000 | 3113 | 158:98, 158:88, 158:273 |
| 158:280 | BHR | lo | 31183/100000 | 31183/100000 | 3134 | 158:106, 158:116, 158:268 |
| 158:281 | CEF | lo | 68517/500000 | 6426200800/46894610619 | 275 | 158:276, 158:168, 158:30, 158:130, 158:39 |
| 158:282 | EHR | lo | 53677/500000 | 3996117/37223500 | 697 | 158:264, 158:196, 158:280, 158:168, 158:103 |
| 158:283 | BER | lo | 95809/1000000 | 9170947000/95720544341 | 716 | 158:278, 158:186, 158:90, 158:168, 158:167 |
| 158:287 | HPR | lo | 125959/1000000 | 8287584777237/65795414809000 | 2207 | 158:3, 158:88, 158:34, 158:8, 158:56, 158:280, 158:282 |
| 158:289 | CEP | lo | 14677/125000 | 2352209627799/20033026643000 | 2228 | 158:13, 158:116, 158:62, 158:8, 158:276, 158:70, 158:130 |
| 158:292 | EFP | lo | 126723/1000000 | 30719357/242413000 | 2722 | 158:75, 158:144, 158:106, 158:76, 158:278, 158:281, 158:162 |
| 158:295 | ACE | lo | 37927/125000 | 37927/125000 | 3045 | 158:34, 158:22, 158:289 |
| 158:297 | BEF | lo | 312723/1000000 | 312723/1000000 | 3113 | 158:98, 158:88, 158:292 |
| 158:299 | BHR | lo | 311959/1000000 | 311959/1000000 | 3134 | 158:106, 158:116, 158:287 |
| 158:300 | CEF | lo | 17131/125000 | 6426833200/46894610619 | 275 | 158:295, 158:168, 158:30, 158:130, 158:39 |
| 158:301 | EHR | lo | 107399/1000000 | 15991133/148894000 | 697 | 158:283, 158:196, 158:299, 158:168, 158:103 |
| 158:302 | BER | lo | 95817/1000000 | 9171706500/95720544341 | 716 | 158:297, 158:186, 158:90, 158:168, 158:167 |
| 158:306 | HPR | lo | 3937/31250 | 8289202977237/65795414809000 | 2207 | 158:3, 158:88, 158:34, 158:8, 158:56, 158:299, 158:301 |
| 158:308 | CEP | lo | 5871/50000 | 2352288677799/20033026643000 | 2228 | 158:13, 158:116, 158:62, 158:8, 158:295, 158:70, 158:130 |
| 158:311 | EFP | lo | 126731/1000000 | 3072131/24241300 | 2722 | 158:75, 158:144, 158:106, 158:76, 158:297, 158:300, 158:162 |
| 158:313 | ACE | lo | 15171/50000 | 15171/50000 | 3045 | 158:34, 158:22, 158:308 |
| 158:314 | BEF | lo | 312731/1000000 | 312731/1000000 | 3113 | 158:98, 158:88, 158:311 |
| 158:316 | BHR | lo | 19499/62500 | 19499/62500 | 3134 | 158:106, 158:116, 158:306 |
| 158:317 | CEF | lo | 2741/20000 | 6426907600/46894610619 | 275 | 158:313, 158:168, 158:30, 158:130, 158:39 |
| 158:318 | EHR | lo | 6713/62500 | 31984839/297788000 | 697 | 158:302, 158:196, 158:316, 158:168, 158:103 |
| 158:319 | BER | lo | 47909/500000 | 9171830500/95720544341 | 716 | 158:314, 158:186, 158:90, 158:168, 158:167 |
| 158:321 | HPR | lo | 125989/1000000 | 8289519177237/65795414809000 | 2207 | 158:3, 158:88, 158:34, 158:8, 158:56, 158:316, 158:318 |
| 158:324 | EFP | lo | 31683/250000 | 1536081/12120650 | 2722 | 158:75, 158:144, 158:106, 158:76, 158:314, 158:317, 158:162 |
| 158:326 | BEF | lo | 78183/250000 | 78183/250000 | 3113 | 158:98, 158:88, 158:324 |
| 158:327 | BHR | lo | 311989/1000000 | 311989/1000000 | 3134 | 158:106, 158:116, 158:321 |
| 158:328 | EHR | lo | 107409/1000000 | 6397067/59557600 | 697 | 158:319, 158:196, 158:327, 158:168, 158:103 |
| 158:331 | HPR | lo | 12599/100000 | 8289574977237/65795414809000 | 2207 | 158:3, 158:88, 158:34, 158:8, 158:56, 158:327, 158:328 |
| 158:334 | BHR | lo | 31199/100000 | 31199/100000 | 3134 | 158:106, 158:116, 158:331 |
| 158:335 | EHR | lo | 10741/100000 | 7996357/74447000 | 697 | 158:319, 158:196, 158:334, 158:168, 158:103 |

## Stage 159

| Property | Value |
| --- | --- |
| Scope | root/ACP+/HBP+/AEP-/APQ-/BEP+/BFP-/BPR- |
| Packet | forest:root/ACP+/HBP+/AEP-/APQ-/BEP+/BFP-/BPR- |
| Index | 1 |
| Context | 57 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 158 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 3197/25000 | 79089/125000 | 3197/25000 | 79089/125000 |
| b | 26659/250000 | 91813/200000 | 26659/250000 | 91813/200000 |
| c | 135501/250000 | 6671/8000 | 135501/250000 | 6671/8000 |
| e | 416403/1000000 | 343849/500000 | 416403/1000000 | 343849/500000 |
| f | 26659/250000 | 521931/1000000 | 26659/250000 | 521931/1000000 |
| h | 324991/500000 | 1/1 | 324991/500000 | 1/1 |
| p | 49909/250000 | 556689/1000000 | 49909/250000 | 556689/1000000 |
| q | 2761/12500 | 570323/1000000 | 2761/12500 | 570323/1000000 |
| u | 762403/1000000 | 1/1 | 762403/1000000 | 1/1 |
| v | 3197/25000 | 377839/1000000 | 3197/25000 | 377839/1000000 |
| r | 116941/200000 | 1/1 | 116941/200000 | 1/1 |
| w | 145741/200000 | 1/1 | 145741/200000 | 1/1 |
| j | 425347/1000000 | 210161/250000 | 425347/1000000 | 210161/250000 |
| k | 156151/250000 | 8959/10000 | 156151/250000 | 8959/10000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |


### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |


### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 159:10 | ABQ | lo | 63161/500000 | earlier 158:10; ABQ; lo; 63161/500000 |
| 159:16 | ACE | lo | 15171/50000 | earlier 158:313; ACE; lo; 15171/50000 |
| 159:20 | ACH | lo | 306273/1000000 | earlier 158:20; ACH; lo; 306273/1000000 |
| 159:30 | AEF | lo | 63169/500000 | earlier 158:30; AEF; lo; 63169/500000 |
| 159:36 | AEQ | lo | 309859/1000000 | earlier 158:36; AEQ; lo; 309859/1000000 |
| 159:52 | AHP | lo | 120273/1000000 | earlier 158:52; AHP; lo; 120273/1000000 |
| 159:54 | AHQ | lo | 306273/1000000 | earlier 158:54; AHQ; lo; 306273/1000000 |
| 159:72 | BCF | lo | 301201/1000000 | earlier 158:72; BCF; lo; 301201/1000000 |
| 159:74 | BCH | lo | 301201/1000000 | earlier 158:74; BCH; lo; 301201/1000000 |
| 159:76 | BCP | lo | 115201/1000000 | earlier 158:76; BCP; lo; 115201/1000000 |
| 159:84 | BEF | lo | 78183/250000 | earlier 158:326; BEF; lo; 78183/250000 |
| 159:92 | BER | lo | 47909/500000 | earlier 158:319; BER; lo; 47909/500000 |
| 159:100 | BFQ | lo | 306273/1000000 | earlier 158:100; BFQ; lo; 306273/1000000 |
| 159:110 | BHR | lo | 31199/100000 | earlier 158:334; BHR; lo; 31199/100000 |
| 159:115 | BPQ | hi | 121857/250000 | earlier 158:115; BPQ; hi; 121857/250000 |
| 159:140 | CFR | lo | 158941/1000000 | earlier 158:140; CFR; lo; 158941/1000000 |
| 159:148 | CHR | lo | 93989/1000000 | earlier 158:148; CHR; lo; 93989/1000000 |
| 159:155 | CPR | hi | 596107/1000000 | earlier 158:155; CPR; hi; 596107/1000000 |
| 159:165 | EFP | hi | 657223/1000000 | earlier 158:165; EFP; hi; 657223/1000000 |
| 159:166 | EFQ | lo | 139603/1000000 | earlier 158:166; EFQ; lo; 139603/1000000 |
| 159:173 | EHP | hi | 137537/200000 | earlier 158:173; EHP; hi; 137537/200000 |
| 159:176 | EHR | lo | 10741/100000 | earlier 158:335; EHR; lo; 10741/100000 |
| 159:180 | EPQ | lo | 123859/1000000 | earlier 158:180; EPQ; lo; 123859/1000000 |
| 159:181 | EPQ | hi | 186909/500000 | earlier 158:181; EPQ; hi; 186909/500000 |
| 159:213 | HPQ | hi | 141727/250000 | earlier 158:213; HPQ; hi; 141727/250000 |
| 159:223 | PQR | hi | 141727/250000 | earlier 158:223; PQR; hi; 141727/250000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
