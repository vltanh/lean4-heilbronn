# BRTT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 80

| Property | Value |
| --- | --- |
| Scope | root/ACP+/HBP+/AEP+/AFP-/APR-/ARS-/BRS-/BFP+/CRS+ |
| Packet | forest:root/ACP+/HBP+/AEP+/AFP-/APR-/ARS-/BRS-/BFP+/CRS+ |
| Index | 3 |
| Context | 27 |
| Box present | yes |
| Coarse version | 2 |
| Parent box | 79 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 33263/250000 | 27753/50000 | 33263/250000 | 277529/500000 |
| b | 13409/125000 | 349/1000 | 13409/125000 | 349/1000 |
| c | 135501/250000 | 161249/200000 | 135501/250000 | 161249/200000 |
| e | 4167/10000 | 306519/500000 | 4167/10000 | 306519/500000 |
| f | 279/1000 | 521687/1000000 | 279/1000 | 521687/1000000 |
| h | 672257/1000000 | 1/1 | 672257/1000000 | 1/1 |
| p | 24309/200000 | 76547/200000 | 24309/200000 | 76547/200000 |
| q | 323347/1000000 | 733897/1000000 | 323347/1000000 | 733897/1000000 |
| u | 793109/1000000 | 1/1 | 793109/1000000 | 1/1 |
| v | 33263/250000 | 20499/50000 | 33263/250000 | 20499/50000 |
| r | 757313/1000000 | 1/1 | 757313/1000000 | 1/1 |
| w | 401831/500000 | 1/1 | 401831/500000 | 1/1 |
| j | 638837/1000000 | 840563/1000000 | 638837/1000000 | 840563/1000000 |
| k | 337337/500000 | 871013/1000000 | 337337/500000 | 871013/1000000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 947 | AREA_lo_AFS | brtt ["earlier-area",{"direction":"lo","ref":"79:356","triangle":"AFS","value":"340629/1000000"}] | `-1/1 * f * k + 1/1 * a * f + 1/1 * j + -1/1 * a * j + -340629/1000000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 947 | a | 33263/250000 | 27753/50000 | 33263/250000 | 155849977/280781500 | 33263/250000 | 277529/500000 | `(-359837/1000000, 54986977/500000000); (-2343/20000, -26880327519/500000000000); (-561563/1000000, 155849977/500000000); (-79719/250000, 73982672481/500000000000); (-359837/1000000, 55195373/1000000000); (-2343/20000, -156188158931/1000000000000); (-561563/1000000, 256921373/1000000000); (-79719/250000, 45537841069/1000000000000)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 80:0 | ABC | lo | 93/1000 | occupants none |
| 80:1 | ABC | hi | 193985277717/500000000000 | vertex maximum 193985277717/500000000000 |
| 80:2 | ABE | lo | 50521/500000 | earlier 79:332; ABE; lo; 50521/500000 |
| 80:5 | ABF | hi | 222425650423/500000000000 | vertex maximum 222425650423/500000000000 |
| 80:8 | ABP | lo | 93/1000 | occupants none |
| 80:9 | ABP | hi | 64713/250000 | earlier 79:240; ABP; hi; 64713/250000 |
| 80:12 | ABR | lo | 200173/1000000 | earlier 79:12; ABR; lo; 200173/1000000 |
| 80:16 | ACE | lo | 39581/250000 | earlier 79:335; ACE; lo; 39581/250000 |
| 80:18 | ACF | lo | 74447/250000 | earlier 79:340; ACF; lo; 74447/250000 |
| 80:19 | ACF | hi | 96047998623/125000000000 | vertex maximum 96047998623/125000000000 |
| 80:20 | ACH | lo | 143239/500000 | earlier 79:341; ACH; lo; 143239/500000 |
| 80:29 | ACS | hi | 658253/1000000 | earlier 79:260; ACS; hi; 658253/1000000 |
| 80:34 | AEP | lo | 9819/100000 | earlier 79:367; AEP; lo; 9819/100000 |
| 80:40 | AES | lo | 21491/125000 | earlier 79:361; AES; lo; 21491/125000 |
| 80:41 | AES | hi | 44197/100000 | earlier 79:41; AES; hi; 44197/100000 |
| 80:44 | AFP | lo | 93/1000 | occupants none |
| 80:46 | AFQ | lo | 326297/1000000 | earlier 79:46; AFQ; lo; 326297/1000000 |
| 80:48 | AFR | lo | 68183/200000 | earlier 79:48; AFR; lo; 68183/200000 |
| 80:50 | AFS | lo | 340629/1000000 | earlier 79:356; AFS; lo; 340629/1000000 |
| 80:54 | AHQ | lo | 144373/500000 | earlier 79:54; AHQ; lo; 144373/500000 |
| 80:56 | AHR | lo | 142667/500000 | earlier 79:326; AHR; lo; 142667/500000 |
| 80:59 | AHS | hi | 182181/250000 | earlier 79:59; AHS; hi; 182181/250000 |
| 80:64 | APS | lo | 23531/250000 | earlier 79:64; APS; lo; 23531/250000 |
| 80:66 | AQR | lo | 424803/1000000 | earlier 79:327; AQR; lo; 424803/1000000 |
| 80:69 | AQS | hi | 305751/500000 | earlier 79:69; AQS; hi; 305751/500000 |
| 80:72 | BCE | lo | 164303/1000000 | earlier 79:72; BCE; lo; 164303/1000000 |
| 80:75 | BCF | hi | 698973/1000000 | vertex maximum 698973/1000000 |
| 80:76 | BCH | lo | 85131/250000 | earlier 79:76; BCH; lo; 85131/250000 |
| 80:82 | BCR | lo | 6547/15625 | earlier 79:82; BCR; lo; 6547/15625 |
| 80:84 | BCS | lo | 14563/62500 | earlier 79:84; BCS; lo; 14563/62500 |
| 80:85 | BCS | hi | 512973/1000000 | earlier 79:85; BCS; hi; 512973/1000000 |
| 80:86 | BEF | lo | 114861/500000 | earlier 79:350; BEF; lo; 114861/500000 |
| 80:88 | BEH | lo | 66889/200000 | earlier 79:343; BEH; lo; 66889/200000 |
| 80:92 | BEQ | lo | 14957/125000 | earlier 79:92; BEQ; lo; 14957/125000 |
| 80:94 | BER | lo | 77383/250000 | earlier 79:302; BER; lo; 77383/250000 |
| 80:97 | BES | hi | 434517/1000000 | earlier 79:97; BES; hi; 434517/1000000 |
| 80:100 | BFP | lo | 93/1000 | occupants none |
| 80:102 | BFQ | lo | 23717/125000 | earlier 79:312; BFQ; lo; 23717/125000 |
| 80:104 | BFR | lo | 247451/1000000 | earlier 79:307; BFR; lo; 247451/1000000 |
| 80:106 | BFS | lo | 81111/500000 | earlier 79:106; BFS; lo; 81111/500000 |
| 80:112 | BHR | lo | 82323/250000 | earlier 79:328; BHR; lo; 82323/250000 |
| 80:114 | BHS | lo | 155907/500000 | earlier 79:287; BHS; lo; 155907/500000 |
| 80:118 | BPR | lo | 68479/500000 | earlier 79:267; BPR; lo; 68479/500000 |
| 80:120 | BPS | lo | 62207/500000 | earlier 79:275; BPS; lo; 62207/500000 |
| 80:122 | BQR | lo | 190993/500000 | earlier 79:122; BQR; lo; 190993/500000 |
| 80:125 | BQS | hi | 579321/1000000 | earlier 79:125; BQS; hi; 579321/1000000 |
| 80:128 | CEF | lo | 182813/1000000 | earlier 79:362; CEF; lo; 182813/1000000 |
| 80:130 | CEH | lo | 168021/1000000 | earlier 79:363; CEH; lo; 168021/1000000 |
| 80:136 | CER | lo | 53269/500000 | earlier 79:313; CER; lo; 53269/500000 |
| 80:139 | CES | hi | 35141/100000 | earlier 79:139; CES; hi; 35141/100000 |
| 80:143 | CFP | hi | 499423/1000000 | earlier 79:143; CFP; hi; 499423/1000000 |
| 80:146 | CFR | lo | 155217/500000 | earlier 79:357; CFR; lo; 155217/500000 |
| 80:152 | CHQ | lo | 110373/1000000 | earlier 79:348; CHQ; lo; 110373/1000000 |
| 80:154 | CHR | lo | 97729/250000 | earlier 79:358; CHR; lo; 97729/250000 |
| 80:160 | CPR | lo | 181899/500000 | earlier 79:331; CPR; lo; 181899/500000 |
| 80:163 | CPS | hi | 131717/250000 | earlier 79:337; CPS; hi; 131717/250000 |
| 80:164 | CQR | lo | 114063/1000000 | earlier 79:292; CQR; lo; 114063/1000000 |
| 80:166 | CQS | lo | 12391/125000 | earlier 79:355; CQS; lo; 12391/125000 |
| 80:172 | EFP | lo | 168671/1000000 | earlier 79:172; EFP; lo; 168671/1000000 |
| 80:184 | EHR | lo | 11273/40000 | earlier 79:345; EHR; lo; 11273/40000 |
| 80:190 | EPR | lo | 151193/500000 | earlier 79:265; EPR; lo; 151193/500000 |
| 80:191 | EPR | hi | 17/32 | earlier 79:191; EPR; hi; 17/32 |
| 80:210 | FPR | lo | 30983/200000 | earlier 79:210; FPR; lo; 30983/200000 |
| 80:211 | FPR | hi | 61731/125000 | earlier 79:211; FPR; hi; 61731/125000 |
| 80:212 | FPS | lo | 30701/200000 | earlier 79:352; FPS; lo; 30701/200000 |
| 80:214 | FQR | lo | 62171/200000 | earlier 79:366; FQR; lo; 62171/200000 |
| 80:216 | FQS | lo | 24971/200000 | earlier 79:360; FQS; lo; 24971/200000 |
| 80:223 | HPR | hi | 308519/500000 | earlier 79:223; HPR; hi; 308519/500000 |
| 80:226 | HQR | lo | 72609/200000 | earlier 79:359; HQR; lo; 72609/200000 |
| 80:228 | HQS | lo | 8711/50000 | earlier 79:354; HQS; lo; 8711/50000 |
| 80:233 | PQR | hi | 357633/500000 | earlier 79:233; PQR; hi; 357633/500000 |
| 80:236 | PRS | lo | 93503/1000000 | earlier 79:236; PRS; lo; 93503/1000000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 2769 | bary | outer ABF; fans BFP, AFP, ABP; target ACP; sign 1; vertices none 0; ABC -1; ACF 1 | container ABF; inner P; line AC |
| 2777 | bary | outer ABF; fans BFP, AFP, ABP; target BCP; sign 1; vertices ABC 1; none 0; BCF 1 | container ABF; inner P; line BC |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 80:240 | ACP | hi | 427667/1000000 | 11890512193609183367529/27803206302875000000000 | 2769 | 80:5, 80:100, 80:44, 80:8, 80:0, 80:19 |
| 80:242 | BCP | hi | 487829/1000000 | 108505665980796579/222425650423000000 | 2777 | 80:5, 80:100, 80:44, 80:8, 80:1, 80:75 |

## Stage 81

| Property | Value |
| --- | --- |
| Scope | root/ACP+/HBP+/AEP+/AFP-/APR-/ARS-/BRS-/BFP+/CRS+ |
| Packet | forest:root/ACP+/HBP+/AEP+/AFP-/APR-/ARS-/BRS-/BFP+/CRS+ |
| Index | 4 |
| Context | 27 |
| Box present | yes |
| Coarse version | 2 |
| Parent box | 80 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 33263/250000 | 277529/500000 | 33263/250000 | 277529/500000 |
| b | 13409/125000 | 349/1000 | 13409/125000 | 349/1000 |
| c | 135501/250000 | 161249/200000 | 135501/250000 | 161249/200000 |
| e | 4167/10000 | 306519/500000 | 4167/10000 | 306519/500000 |
| f | 279/1000 | 521687/1000000 | 279/1000 | 521687/1000000 |
| h | 672257/1000000 | 1/1 | 672257/1000000 | 1/1 |
| p | 24309/200000 | 76547/200000 | 24309/200000 | 76547/200000 |
| q | 323347/1000000 | 733897/1000000 | 323347/1000000 | 733897/1000000 |
| u | 793109/1000000 | 1/1 | 793109/1000000 | 1/1 |
| v | 33263/250000 | 20499/50000 | 33263/250000 | 20499/50000 |
| r | 757313/1000000 | 1/1 | 757313/1000000 | 1/1 |
| w | 401831/500000 | 1/1 | 401831/500000 | 1/1 |
| j | 638837/1000000 | 840563/1000000 | 638837/1000000 | 840563/1000000 |
| k | 337337/500000 | 871013/1000000 | 337337/500000 | 871013/1000000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 4 | AC_ABE_ABE_0 | brtt ["anchor-cap","ABE","ABE",0,[]] | `-93/1000 + 1/1 * e` |
| 11 | AC_ABP_ABF_0 | brtt ["anchor-cap","ABP","ABF",0,[]] | `-93/1000 + 1/1 * f` |
| 21 | AC_ACP_ACF_0 | brtt ["anchor-cap","ACP","ACF",0,[]] | `-93/1000 + 1/1 * c` |
| 28 | AC_AEP_AEF_0 | brtt ["anchor-cap","AEP","AEF",0,[]] | `907/1000 + -1/1 * a` |
| 50 | AC_BCH_BCH_1 | brtt ["anchor-cap","BCH","BCH",1,["P"]] | `-279/1000 + 1/1 * c + -1/1 * b` |
| 52 | AC_BCP_BCH_0 | brtt ["anchor-cap","BCP","BCH",0,[]] | `-93/1000 + 1/1 * h` |
| 57 | AC_BEF_BEF_0 | brtt ["anchor-cap","BEF","BEF",0,[]] | `907/1000 + -1/1 * b` |
| 79 | AC_CEF_CEF_0 | brtt ["anchor-cap","CEF","CEF",0,[]] | `907/1000 + -1/1 * f` |
| 101 | AC_EFH_EFH_0 | brtt ["anchor-cap","EFH","EFH",0,[]] | `907/1000 + -1/1 * e` |
| 137 | ea | brtt ["contact-order","ea"] | `1/1 * e + -1/1 * a` |
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
| 152 | central-budget | brtt ["central-budget","161249/200000"] | `105449/200000 * c * h + -142649/200000 * b * h + -142649/200000 * a * c + 179849/200000 * a * b` |
| 153 | central-sum | brtt ["central-sum","161249/200000"] | `142649/161249 + -1/1 * p + -1/1 * q` |
| 154 | central-p-floor | brtt ["central-floor",0,"2574457/21181000"] | `1/1 * p + -2574457/21181000` |
| 155 | central-q-floor | brtt ["central-floor",1,"5268691800/34948624513"] | `1/1 * q + -5268691800/34948624513` |
| 158 | WBARY_RS_0 | brtt ["weighted-barycentric","R","S",["1/1","1/1","1/1"],"4205593/930000",0] | `4205593/930000 * j + -1/1 + -2345593/930000 * f + -1/1 * r` |
| 159 | WBARY_RS_1 | brtt ["weighted-barycentric","R","S",["1/1","1/1","1/1"],"4205593/930000",1] | `2345593/930000 + 1/1 * f + 1/1 * r + -4205593/930000 * j` |
| 160 | WBARY_RS_2 | brtt ["weighted-barycentric","R","S",["1/1","1/1","1/1"],"4205593/930000",2] | `4205593/930000 * k + -1/1 + -2345593/930000 * e + -1/1 * w` |
| 161 | WBARY_RS_3 | brtt ["weighted-barycentric","R","S",["1/1","1/1","1/1"],"4205593/930000",3] | `2345593/930000 + 1/1 * e + 1/1 * w + -4205593/930000 * k` |
| 188 | SUP_BFH_AFH_ABF | brtt ["support-envelope",["quad","FHAB",["P"],"149/20"],"BFH","AFH","ABF","521687/1000000"] | `-171163/1000000 * f * h + 171163/1000000 * a * f + 13857/20000 * b * h + -13857/20000 * a * b` |
| 276 | SUP_EFR_AFR_AER | brtt ["support-envelope",["quad","RFAE",["P","S"],"12/1"],"EFR","AFR","AER","4205593/10000000"] | `6954407/10000000 * f * w + 4205593/10000000 * a * f + -6954407/10000000 * r + 6954407/10000000 * a * r + -279/250 * e * f + 279/250 + -279/250 * a` |
| 364 | SUP_CHR_BHR_BCR | brtt ["support-envelope",["quad","RHBC",["P","S"],"12/1"],"CHR","BHR","BCR","1/1"] | `-29/250 * b * w + -29/250 * h * r + -1/1 * b * h + 279/250 * c * h` |
| 510 | SUP_ABF_AEF_ABE | brtt ["support-envelope",["pentagon","ABCEF"],"ABF","AEF","ABE","222425650423/500000000000"] | `222425650423/500000000000 + 289074349577/500000000000 * a + -222425650423/500000000000 * e * f + -289074349577/500000000000 * a * f + -1023/1000 * b + 1023/1000 * b * e` |
| 527 | SUP_AEQ_CEQ_ACE | brtt ["support-envelope",["pentagon","EABCQ"],"AEQ","CEQ","ACE","239993/500000"] | `271507/500000 * v + 239993/500000 * c * v + -271507/500000 * e * u + 271507/500000 * c * e + 1023/1000 * a * u + -1023/1000 * a * c` |
| 540 | SUP_ABF_AFQ_ABQ | brtt ["support-envelope",["pentagon","ABCQF"],"ABF","AFQ","ABQ","222425650423/500000000000"] | `-222425650423/500000000000 * f * v + -289074349577/500000000000 * a * f + 222425650423/500000000000 * u + 289074349577/500000000000 * a * u + -1023/1000 * b + 1023/1000 * b * v` |
| 545 | SUP_CFR_BCR_BFR | brtt ["support-envelope",["pentagon","RFABC"],"CFR","BCR","BFR","721/1000"] | `-151/500 * c * w + 151/500 * b * w + 1023/1000 * c + -1023/1000 * b` |
| 551 | SUP_ABH_AHQ_ABQ | brtt ["support-envelope",["pentagon","ABCQH"],"ABH","AHQ","ABQ","75641213/250000000"] | `75641213/250000000 * h * u + 180108787/250000000 * a * u + -1023/1000 * b * h + 1023/1000 * b * v` |
| 585 | SUP_EFR_BER_BFR | brtt ["support-envelope",["pentagon","RFABE"],"EFR","BER","BFR","4205593/10000000"] | `-6024407/10000000 * w + 6024407/10000000 * b * w + 6024407/10000000 * e * r + 4205593/10000000 * b * e + -1023/1000 * e * f + 1023/1000 + -1023/1000 * b` |
| 733 | SUP_FHR_FRS_FHS | brtt ["support-envelope",["pentagon","FHASR"],"FHR","FRS","FHS","58216201/200000000"] | `-58216201/200000000 * r * k + -146383799/200000000 * r + -146383799/200000000 * f * k + 58216201/200000000 * w * j + 146383799/200000000 * f * w + 146383799/200000000 * j + 1023/1000 * h * r + -1023/1000 * h * j` |
| 736 | SUP_BFH_EFH_BEH | brtt ["support-envelope",["pentagon","HBCEF"],"BFH","EFH","BEH","521687/1000000"] | `-501313/1000000 * f * h + -521687/1000000 * e * f + 501313/1000000 * h + 521687/1000000 + -1023/1000 * b + 1023/1000 * b * e` |
| 748 | SUP_BFS_EFS_BEF | brtt ["support-envelope",["pentagon","FBCES"],"BFS","EFS","BEF","19294705729/31250000000"] | `12674044271/31250000000 * f * k + -12674044271/31250000000 * e * f + 19294705729/31250000000 * k + -12674044271/31250000000 * j + 12674044271/31250000000 + -19294705729/31250000000 * e * j + -1023/1000 * b * k + 1023/1000 * b * e` |
| 763 | SUP_BCR_BER_BCE | brtt ["support-envelope",["pentagon","BCQER"],"BCR","BER","BCE","698973/1000000"] | `698973/1000000 * w + 324027/1000000 * b * w + -698973/1000000 * e * r + -324027/1000000 * b * e + -1023/1000 * c * w + 1023/1000 * c * e` |
| 800 | SUP_FPS_EFS_EFP | brtt ["support-envelope",["pentagon","FPBES"],"FPS","EFS","EFP","431207493969/1000000000000"] | `591792506031/1000000000000 * f * k + -591792506031/1000000000000 * e * f + 431207493969/1000000000000 * k + -591792506031/1000000000000 * j + 591792506031/1000000000000 + -431207493969/1000000000000 * e * j + -1023/1000 * p * k + 1023/1000 * q * j + -1023/1000 * q + 1023/1000 * e * p` |
| 824 | SUP_CEQ_CHQ_EHQ | brtt ["support-envelope",["pentagon","QEFHC"],"CEQ","CHQ","EHQ","27478958507/125000000000"] | `-100396041493/125000000000 * c * v + -100396041493/125000000000 * h * u + -27478958507/125000000000 * c * h + 1023/1000 * c * e + 1023/1000 * h` |
| 840 | SUP_CEQ_CFQ_EFQ | brtt ["support-envelope",["pentagon","QERFC"],"CEQ","CFQ","EFQ","27478958507/125000000000"] | `100396041493/125000000000 * f * v + -100396041493/125000000000 * c * v + -100396041493/125000000000 * u + -27478958507/125000000000 * c + 1023/1000 * c * e + -1023/1000 * e * f + 1023/1000` |
| 841 | SUP_CFR_EFR_CEF | brtt ["support-envelope",["pentagon","FCQER"],"CFR","EFR","CEF","721/1000"] | `151/500 * f * w + -151/500 * e * f + 721/1000 * w + -151/500 * r + 151/500 + -721/1000 * e * r + -1023/1000 * c * w + 1023/1000 * c * e` |
| 859 | SUP_CQS_CRS_CQR | brtt ["support-envelope",["pentagon","CQERS"],"CQS","CRS","CQR","1507955647/3906250000"] | `1507955647/3906250000 * r * k + 2488138103/3906250000 * c * k + -1507955647/3906250000 * w * j + -2488138103/3906250000 * c * w + -1023/1000 * u * k + 1023/1000 * v * j + 1023/1000 * u * w + -1023/1000 * v * r` |
| 881 | SUP_EFR_EPR_FPR | brtt ["support-envelope",["pentagon","RFHPE"],"EFR","EPR","FPR","4205593/10000000"] | `6024407/10000000 * p * w + 4205593/10000000 * e * p + -6024407/10000000 * w + -6024407/10000000 * q * r + -4205593/10000000 * q + 6024407/10000000 * e * r + -1023/1000 * e * f + 1023/1000 + -1023/1000 * p + 1023/1000 * f * q` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |


### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 81:0 | ABC | lo | 93/1000 | occupants none |
| 81:2 | ABE | lo | 50521/500000 | earlier 80:2; ABE; lo; 50521/500000 |
| 81:4 | ABF | lo | 279/1000 | occupants P |
| 81:6 | ABH | lo | 93/1000 | occupants none |
| 81:8 | ABP | lo | 93/1000 | occupants none |
| 81:9 | ABP | hi | 64713/250000 | earlier 80:9; ABP; hi; 64713/250000 |
| 81:12 | ABR | lo | 200173/1000000 | earlier 80:12; ABR; lo; 200173/1000000 |
| 81:13 | ABR | hi | 355171379/500000000 | vertex maximum 355171379/500000000 |
| 81:16 | ACE | lo | 39581/250000 | earlier 80:16; ACE; lo; 39581/250000 |
| 81:17 | ACE | hi | 6018040851/10000000000 | vertex maximum 6018040851/10000000000 |
| 81:18 | ACF | lo | 74447/250000 | earlier 80:18; ACF; lo; 74447/250000 |
| 81:19 | ACF | hi | 96047998623/125000000000 | vertex maximum 96047998623/125000000000 |
| 81:20 | ACH | lo | 143239/500000 | earlier 80:20; ACH; lo; 143239/500000 |
| 81:21 | ACH | hi | 34948624513/50000000000 | vertex maximum 34948624513/50000000000 |
| 81:23 | ACP | hi | 427667/1000000 | earlier 80:240; ACP; hi; 427667/1000000 |
| 81:24 | ACQ | lo | 93/1000 | occupants none |
| 81:27 | ACR | hi | 91379026279/100000000000 | vertex maximum 91379026279/100000000000 |
| 81:29 | ACS | hi | 658253/1000000 | earlier 80:29; ACS; hi; 658253/1000000 |
| 81:31 | AEF | hi | 24619069/31250000 | vertex maximum 24619069/31250000 |
| 81:33 | AEH | hi | 216737/250000 | vertex maximum 216737/250000 |
| 81:34 | AEP | lo | 9819/100000 | earlier 80:34; AEP; lo; 9819/100000 |
| 81:37 | AEQ | hi | 239993/500000 | vertex maximum 239993/500000 |
| 81:39 | AER | hi | 2547412821/3906250000 | vertex maximum 2547412821/3906250000 |
| 81:40 | AES | lo | 21491/125000 | earlier 80:40; AES; lo; 21491/125000 |
| 81:41 | AES | hi | 44197/100000 | earlier 80:41; AES; hi; 44197/100000 |
| 81:43 | AFH | hi | 113068875319/250000000000 | vertex maximum 113068875319/250000000000 |
| 81:44 | AFP | lo | 93/1000 | occupants none |
| 81:46 | AFQ | lo | 326297/1000000 | earlier 80:46; AFQ; lo; 326297/1000000 |
| 81:47 | AFQ | hi | 216737/250000 | vertex maximum 216737/250000 |
| 81:48 | AFR | lo | 68183/200000 | earlier 80:48; AFR; lo; 68183/200000 |
| 81:49 | AFR | hi | 67984781/100000000 | vertex maximum 67984781/100000000 |
| 81:50 | AFS | lo | 340629/1000000 | earlier 80:50; AFS; lo; 340629/1000000 |
| 81:52 | AHP | lo | 93/1000 | occupants none |
| 81:54 | AHQ | lo | 144373/500000 | earlier 80:54; AHQ; lo; 144373/500000 |
| 81:55 | AHQ | hi | 216737/250000 | vertex maximum 216737/250000 |
| 81:56 | AHR | lo | 142667/500000 | earlier 80:56; AHR; lo; 142667/500000 |
| 81:57 | AHR | hi | 216737/250000 | vertex maximum 216737/250000 |
| 81:59 | AHS | hi | 182181/250000 | earlier 80:59; AHS; hi; 182181/250000 |
| 81:62 | APR | lo | 93/1000 | occupants none |
| 81:64 | APS | lo | 23531/250000 | earlier 80:64; APS; lo; 23531/250000 |
| 81:66 | AQR | lo | 424803/1000000 | earlier 80:66; AQR; lo; 424803/1000000 |
| 81:67 | AQR | hi | 216737/250000 | vertex maximum 216737/250000 |
| 81:69 | AQS | hi | 305751/500000 | earlier 80:69; AQS; hi; 305751/500000 |
| 81:70 | ARS | lo | 93/1000 | occupants none |
| 81:72 | BCE | lo | 164303/1000000 | earlier 80:72; BCE; lo; 164303/1000000 |
| 81:73 | BCE | hi | 214248504987/500000000000 | vertex maximum 214248504987/500000000000 |
| 81:75 | BCF | hi | 698973/1000000 | vertex maximum 698973/1000000 |
| 81:76 | BCH | lo | 85131/250000 | earlier 80:76; BCH; lo; 85131/250000 |
| 81:77 | BCH | hi | 698973/1000000 | vertex maximum 698973/1000000 |
| 81:79 | BCP | hi | 487829/1000000 | earlier 80:242; BCP; hi; 487829/1000000 |
| 81:80 | BCQ | lo | 93/1000 | occupants none |
| 81:82 | BCR | lo | 6547/15625 | earlier 80:82; BCR; lo; 6547/15625 |
| 81:83 | BCR | hi | 698973/1000000 | vertex maximum 698973/1000000 |
| 81:84 | BCS | lo | 14563/62500 | earlier 80:84; BCS; lo; 14563/62500 |
| 81:85 | BCS | hi | 512973/1000000 | earlier 80:85; BCS; hi; 512973/1000000 |
| 81:86 | BEF | lo | 114861/500000 | earlier 80:86; BEF; lo; 114861/500000 |
| 81:87 | BEF | hi | 513230589/625000000 | vertex maximum 513230589/625000000 |
| 81:88 | BEH | lo | 66889/200000 | earlier 80:88; BEH; lo; 66889/200000 |
| 81:89 | BEH | hi | 59905613271/62500000000 | vertex maximum 59905613271/62500000000 |
| 81:92 | BEQ | lo | 14957/125000 | earlier 80:92; BEQ; lo; 14957/125000 |
| 81:93 | BEQ | hi | 26781058863/62500000000 | vertex maximum 26781058863/62500000000 |
| 81:94 | BER | lo | 77383/250000 | earlier 80:94; BER; lo; 77383/250000 |
| 81:95 | BER | hi | 6218559153/10000000000 | vertex maximum 6218559153/10000000000 |
| 81:97 | BES | hi | 434517/1000000 | earlier 80:97; BES; hi; 434517/1000000 |
| 81:98 | BFH | lo | 279/1000 | occupants P |
| 81:100 | BFP | lo | 93/1000 | occupants none |
| 81:102 | BFQ | lo | 23717/125000 | earlier 80:102; BFQ; lo; 23717/125000 |
| 81:104 | BFR | lo | 247451/1000000 | earlier 80:104; BFR; lo; 247451/1000000 |
| 81:105 | BFR | hi | 23584897877/31250000000 | vertex maximum 23584897877/31250000000 |
| 81:106 | BFS | lo | 81111/500000 | earlier 80:106; BFS; lo; 81111/500000 |
| 81:112 | BHR | lo | 82323/250000 | earlier 80:112; BHR; lo; 82323/250000 |
| 81:114 | BHS | lo | 155907/500000 | earlier 80:114; BHS; lo; 155907/500000 |
| 81:118 | BPR | lo | 68479/500000 | earlier 80:118; BPR; lo; 68479/500000 |
| 81:120 | BPS | lo | 62207/500000 | earlier 80:120; BPS; lo; 62207/500000 |
| 81:122 | BQR | lo | 190993/500000 | earlier 80:122; BQR; lo; 190993/500000 |
| 81:123 | BQR | hi | 201559686217/250000000000 | vertex maximum 201559686217/250000000000 |
| 81:125 | BQS | hi | 579321/1000000 | earlier 80:125; BQS; hi; 579321/1000000 |
| 81:126 | BRS | lo | 93/1000 | occupants none |
| 81:128 | CEF | lo | 182813/1000000 | earlier 80:128; CEF; lo; 182813/1000000 |
| 81:129 | CEF | hi | 77403430769/125000000000 | vertex maximum 77403430769/125000000000 |
| 81:130 | CEH | lo | 168021/1000000 | earlier 80:130; CEH; lo; 168021/1000000 |
| 81:131 | CEH | hi | 98783131019/125000000000 | vertex maximum 98783131019/125000000000 |
| 81:134 | CEQ | lo | 93/1000 | occupants none |
| 81:136 | CER | lo | 53269/500000 | earlier 80:136; CER; lo; 53269/500000 |
| 81:138 | CES | lo | 93/1000 | occupants none |
| 81:139 | CES | hi | 35141/100000 | earlier 80:139; CES; hi; 35141/100000 |
| 81:141 | CFH | hi | 307474446297/500000000000 | vertex maximum 307474446297/500000000000 |
| 81:143 | CFP | hi | 499423/1000000 | earlier 80:143; CFP; hi; 499423/1000000 |
| 81:144 | CFQ | lo | 93/1000 | occupants none |
| 81:145 | CFQ | hi | 7072779749/12500000000 | vertex maximum 7072779749/12500000000 |
| 81:146 | CFR | lo | 155217/500000 | earlier 80:146; CFR; lo; 155217/500000 |
| 81:147 | CFR | hi | 721/1000 | vertex maximum 721/1000 |
| 81:150 | CHP | lo | 93/1000 | occupants none |
| 81:152 | CHQ | lo | 110373/1000000 | earlier 80:152; CHQ; lo; 110373/1000000 |
| 81:154 | CHR | lo | 97729/250000 | earlier 80:154; CHR; lo; 97729/250000 |
| 81:155 | CHR | hi | 1/1 | vertex maximum 1/1 |
| 81:160 | CPR | lo | 181899/500000 | earlier 80:160; CPR; lo; 181899/500000 |
| 81:163 | CPS | hi | 131717/250000 | earlier 80:163; CPS; hi; 131717/250000 |
| 81:164 | CQR | lo | 114063/1000000 | earlier 80:164; CQR; lo; 114063/1000000 |
| 81:165 | CQR | hi | 107337176733/250000000000 | vertex maximum 107337176733/250000000000 |
| 81:166 | CQS | lo | 12391/125000 | earlier 80:166; CQS; lo; 12391/125000 |
| 81:168 | CRS | lo | 93/1000 | occupants none |
| 81:171 | EFH | hi | 461063764659/1000000000000 | vertex maximum 461063764659/1000000000000 |
| 81:172 | EFP | lo | 168671/1000000 | earlier 80:172; EFP; lo; 168671/1000000 |
| 81:175 | EFQ | hi | 213064430571/500000000000 | vertex maximum 213064430571/500000000000 |
| 81:176 | EFR | lo | 279/1000 | occupants S |
| 81:177 | EFR | hi | 4205593/10000000 | vertex maximum 4205593/10000000 |
| 81:178 | EFS | lo | 93/1000 | occupants none |
| 81:183 | EHQ | hi | 280022477571/500000000000 | vertex maximum 280022477571/500000000000 |
| 81:184 | EHR | lo | 11273/40000 | earlier 80:184; EHR; lo; 11273/40000 |
| 81:185 | EHR | hi | 5833/10000 | vertex maximum 5833/10000 |
| 81:190 | EPR | lo | 151193/500000 | earlier 80:190; EPR; lo; 151193/500000 |
| 81:191 | EPR | hi | 17/32 | earlier 80:191; EPR; hi; 17/32 |
| 81:194 | EQR | lo | 93/1000 | occupants none |
| 81:195 | EQR | hi | 49136329381/250000000000 | vertex maximum 49136329381/250000000000 |
| 81:198 | ERS | lo | 93/1000 | occupants none |
| 81:203 | FHQ | hi | 121807847767/200000000000 | vertex maximum 121807847767/200000000000 |
| 81:204 | FHR | lo | 93/1000 | occupants none |
| 81:205 | FHR | hi | 58216201/200000000 | vertex maximum 58216201/200000000 |
| 81:210 | FPR | lo | 30983/200000 | earlier 80:210; FPR; lo; 30983/200000 |
| 81:211 | FPR | hi | 61731/125000 | earlier 80:211; FPR; hi; 61731/125000 |
| 81:212 | FPS | lo | 30701/200000 | earlier 80:212; FPS; lo; 30701/200000 |
| 81:214 | FQR | lo | 62171/200000 | earlier 80:214; FQR; lo; 62171/200000 |
| 81:215 | FQR | hi | 156267377/250000000 | vertex maximum 156267377/250000000 |
| 81:216 | FQS | lo | 24971/200000 | earlier 80:216; FQS; lo; 24971/200000 |
| 81:218 | FRS | lo | 93/1000 | occupants none |
| 81:220 | HPQ | lo | 93/1000 | occupants none |
| 81:223 | HPR | hi | 308519/500000 | earlier 80:223; HPR; hi; 308519/500000 |
| 81:226 | HQR | lo | 72609/200000 | earlier 80:226; HQR; lo; 72609/200000 |
| 81:228 | HQS | lo | 8711/50000 | earlier 80:228; HQS; lo; 8711/50000 |
| 81:233 | PQR | hi | 357633/500000 | earlier 80:233; PQR; hi; 357633/500000 |
| 81:236 | PRS | lo | 93503/1000000 | earlier 80:236; PRS; lo; 93503/1000000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |


### Coordinate certificate sources

| Source | Kind | Source witness | Polynomial |
| --- | --- | --- | --- |
| 0 | bound | `{"direction":"lo","ref":"81:0","triangle":"ABC","value":"93/1000"}` | `-1 * a * b + 1 * a * c + -93/1000` |
| 2 | bound | `{"direction":"lo","ref":"81:2","triangle":"ABE","value":"50521/500000"}` | `1 * b * e + -1 * a * b + 1 * a + -50521/500000` |
| 4 | bound | `{"direction":"lo","ref":"81:4","triangle":"ABF","value":"279/1000"}` | `1 * b + -1 * a * b + 1 * a * f + -279/1000` |
| 6 | bound | `{"direction":"lo","ref":"81:6","triangle":"ABH","value":"93/1000"}` | `1 * b * h + -1 * a * b + -93/1000` |
| 8 | bound | `{"direction":"lo","ref":"81:8","triangle":"ABP","value":"93/1000"}` | `1 * b * q + -1 * a * b + 1 * a * p + -93/1000` |
| 9 | bound | `{"direction":"hi","ref":"81:9","triangle":"ABP","value":"64713/250000"}` | `64713/250000 + -1 * b * q + 1 * a * b + -1 * a * p` |
| 12 | bound | `{"direction":"lo","ref":"81:12","triangle":"ABR","value":"200173/1000000"}` | `1 * b * w + -1 * a * b + 1 * a * r + -200173/1000000` |
| 13 | bound | `{"direction":"hi","ref":"81:13","triangle":"ABR","value":"355171379/500000000"}` | `355171379/500000000 + -1 * b * w + 1 * a * b + -1 * a * r` |
| 16 | bound | `{"direction":"lo","ref":"81:16","triangle":"ACE","value":"39581/250000"}` | `1 * c * e + -1 * a * c + 1 * a + -39581/250000` |
| 17 | bound | `{"direction":"hi","ref":"81:17","triangle":"ACE","value":"6018040851/10000000000"}` | `6018040851/10000000000 + -1 * c * e + 1 * a * c + -1 * a` |
| 18 | bound | `{"direction":"lo","ref":"81:18","triangle":"ACF","value":"74447/250000"}` | `1 * c + -1 * a * c + 1 * a * f + -74447/250000` |
| 19 | bound | `{"direction":"hi","ref":"81:19","triangle":"ACF","value":"96047998623/125000000000"}` | `96047998623/125000000000 + -1 * c + 1 * a * c + -1 * a * f` |
| 20 | bound | `{"direction":"lo","ref":"81:20","triangle":"ACH","value":"143239/500000"}` | `1 * c * h + -1 * a * c + -143239/500000` |
| 21 | bound | `{"direction":"hi","ref":"81:21","triangle":"ACH","value":"34948624513/50000000000"}` | `34948624513/50000000000 + -1 * c * h + 1 * a * c` |
| 23 | bound | `{"direction":"hi","ref":"81:23","triangle":"ACP","value":"427667/1000000"}` | `427667/1000000 + -1 * c * q + 1 * a * c + -1 * a * p` |
| 24 | bound | `{"direction":"lo","ref":"81:24","triangle":"ACQ","value":"93/1000"}` | `1 * c * v + -1 * a * c + 1 * a * u + -93/1000` |
| 27 | bound | `{"direction":"hi","ref":"81:27","triangle":"ACR","value":"91379026279/100000000000"}` | `91379026279/100000000000 + -1 * c * w + 1 * a * c + -1 * a * r` |
| 29 | bound | `{"direction":"hi","ref":"81:29","triangle":"ACS","value":"658253/1000000"}` | `658253/1000000 + -1 * c * k + 1 * a * c + -1 * a * j` |
| 31 | bound | `{"direction":"hi","ref":"81:31","triangle":"AEF","value":"24619069/31250000"}` | `-6630931/31250000 + 1 * a + 1 * e * f + -1 * a * f` |
| 33 | bound | `{"direction":"hi","ref":"81:33","triangle":"AEH","value":"216737/250000"}` | `216737/250000 + -1 * h + 1 * a` |
| 34 | bound | `{"direction":"lo","ref":"81:34","triangle":"AEP","value":"9819/100000"}` | `1 * q + -1 * a + -1 * e * p + 1 * a * p + -9819/100000` |
| 37 | bound | `{"direction":"hi","ref":"81:37","triangle":"AEQ","value":"239993/500000"}` | `239993/500000 + 1 * v + -1 * a + -1 * e * u + 1 * a * u` |
| 39 | bound | `{"direction":"hi","ref":"81:39","triangle":"AER","value":"2547412821/3906250000"}` | `2547412821/3906250000 + -1 * w + 1 * a + 1 * e * r + -1 * a * r` |
| 40 | bound | `{"direction":"lo","ref":"81:40","triangle":"AES","value":"21491/125000"}` | `1 * k + -1 * a + -1 * e * j + 1 * a * j + -21491/125000` |
| 41 | bound | `{"direction":"hi","ref":"81:41","triangle":"AES","value":"44197/100000"}` | `44197/100000 + -1 * k + 1 * a + 1 * e * j + -1 * a * j` |
| 43 | bound | `{"direction":"hi","ref":"81:43","triangle":"AFH","value":"113068875319/250000000000"}` | `113068875319/250000000000 + -1 * f * h + 1 * a * f` |
| 44 | bound | `{"direction":"lo","ref":"81:44","triangle":"AFP","value":"93/1000"}` | `-1 * f * q + 1 * a * f + 1 * p + -1 * a * p + -93/1000` |
| 46 | bound | `{"direction":"lo","ref":"81:46","triangle":"AFQ","value":"326297/1000000"}` | `-1 * f * v + 1 * a * f + 1 * u + -1 * a * u + -326297/1000000` |
| 47 | bound | `{"direction":"hi","ref":"81:47","triangle":"AFQ","value":"216737/250000"}` | `216737/250000 + 1 * f * v + -1 * a * f + -1 * u + 1 * a * u` |
| 48 | bound | `{"direction":"lo","ref":"81:48","triangle":"AFR","value":"68183/200000"}` | `-1 * f * w + 1 * a * f + 1 * r + -1 * a * r + -68183/200000` |
| 49 | bound | `{"direction":"hi","ref":"81:49","triangle":"AFR","value":"67984781/100000000"}` | `67984781/100000000 + 1 * f * w + -1 * a * f + -1 * r + 1 * a * r` |
| 50 | bound | `{"direction":"lo","ref":"81:50","triangle":"AFS","value":"340629/1000000"}` | `-1 * f * k + 1 * a * f + 1 * j + -1 * a * j + -340629/1000000` |
| 52 | bound | `{"direction":"lo","ref":"81:52","triangle":"AHP","value":"93/1000"}` | `1 * h * p + -1 * a * p + -93/1000` |
| 54 | bound | `{"direction":"lo","ref":"81:54","triangle":"AHQ","value":"144373/500000"}` | `1 * h * u + -1 * a * u + -144373/500000` |
| 55 | bound | `{"direction":"hi","ref":"81:55","triangle":"AHQ","value":"216737/250000"}` | `216737/250000 + -1 * h * u + 1 * a * u` |
| 56 | bound | `{"direction":"lo","ref":"81:56","triangle":"AHR","value":"142667/500000"}` | `1 * h * r + -1 * a * r + -142667/500000` |
| 57 | bound | `{"direction":"hi","ref":"81:57","triangle":"AHR","value":"216737/250000"}` | `216737/250000 + -1 * h * r + 1 * a * r` |
| 59 | bound | `{"direction":"hi","ref":"81:59","triangle":"AHS","value":"182181/250000"}` | `182181/250000 + -1 * h * j + 1 * a * j` |
| 62 | bound | `{"direction":"lo","ref":"81:62","triangle":"APR","value":"93/1000"}` | `-1 * p * w + 1 * a * p + 1 * q * r + -1 * a * r + -93/1000` |
| 64 | bound | `{"direction":"lo","ref":"81:64","triangle":"APS","value":"23531/250000"}` | `-1 * p * k + 1 * a * p + 1 * q * j + -1 * a * j + -23531/250000` |
| 66 | bound | `{"direction":"lo","ref":"81:66","triangle":"AQR","value":"424803/1000000"}` | `1 * u * w + -1 * a * u + -1 * v * r + 1 * a * r + -424803/1000000` |
| 67 | bound | `{"direction":"hi","ref":"81:67","triangle":"AQR","value":"216737/250000"}` | `216737/250000 + -1 * u * w + 1 * a * u + 1 * v * r + -1 * a * r` |
| 69 | bound | `{"direction":"hi","ref":"81:69","triangle":"AQS","value":"305751/500000"}` | `305751/500000 + -1 * u * k + 1 * a * u + 1 * v * j + -1 * a * j` |
| 70 | bound | `{"direction":"lo","ref":"81:70","triangle":"ARS","value":"93/1000"}` | `-1 * r * k + 1 * a * r + 1 * w * j + -1 * a * j + -93/1000` |
| 72 | bound | `{"direction":"lo","ref":"81:72","triangle":"BCE","value":"164303/1000000"}` | `1 * c * e + -1 * b * e + -164303/1000000` |
| 73 | bound | `{"direction":"hi","ref":"81:73","triangle":"BCE","value":"214248504987/500000000000"}` | `214248504987/500000000000 + -1 * c * e + 1 * b * e` |
| 75 | bound | `{"direction":"hi","ref":"81:75","triangle":"BCF","value":"698973/1000000"}` | `698973/1000000 + -1 * c + 1 * b` |
| 76 | bound | `{"direction":"lo","ref":"81:76","triangle":"BCH","value":"85131/250000"}` | `1 * c * h + -1 * b * h + -85131/250000` |
| 77 | bound | `{"direction":"hi","ref":"81:77","triangle":"BCH","value":"698973/1000000"}` | `698973/1000000 + -1 * c * h + 1 * b * h` |
| 79 | bound | `{"direction":"hi","ref":"81:79","triangle":"BCP","value":"487829/1000000"}` | `487829/1000000 + -1 * c * q + 1 * b * q` |
| 80 | bound | `{"direction":"lo","ref":"81:80","triangle":"BCQ","value":"93/1000"}` | `1 * c * v + -1 * b * v + -93/1000` |
| 82 | bound | `{"direction":"lo","ref":"81:82","triangle":"BCR","value":"6547/15625"}` | `1 * c * w + -1 * b * w + -6547/15625` |
| 83 | bound | `{"direction":"hi","ref":"81:83","triangle":"BCR","value":"698973/1000000"}` | `698973/1000000 + -1 * c * w + 1 * b * w` |
| 84 | bound | `{"direction":"lo","ref":"81:84","triangle":"BCS","value":"14563/62500"}` | `1 * c * k + -1 * b * k + -14563/62500` |
| 85 | bound | `{"direction":"hi","ref":"81:85","triangle":"BCS","value":"512973/1000000"}` | `512973/1000000 + -1 * c * k + 1 * b * k` |
| 86 | bound | `{"direction":"lo","ref":"81:86","triangle":"BEF","value":"114861/500000"}` | `385139/500000 + -1 * b + -1 * e * f + 1 * b * e` |
| 87 | bound | `{"direction":"hi","ref":"81:87","triangle":"BEF","value":"513230589/625000000"}` | `-111769411/625000000 + 1 * b + 1 * e * f + -1 * b * e` |
| 88 | bound | `{"direction":"lo","ref":"81:88","triangle":"BEH","value":"66889/200000"}` | `1 * h + -1 * b * h + 1 * b * e + -66889/200000` |
| 89 | bound | `{"direction":"hi","ref":"81:89","triangle":"BEH","value":"59905613271/62500000000"}` | `59905613271/62500000000 + -1 * h + 1 * b * h + -1 * b * e` |
| 92 | bound | `{"direction":"lo","ref":"81:92","triangle":"BEQ","value":"14957/125000"}` | `-1 * v + 1 * b * v + 1 * e * u + -1 * b * e + -14957/125000` |
| 93 | bound | `{"direction":"hi","ref":"81:93","triangle":"BEQ","value":"26781058863/62500000000"}` | `26781058863/62500000000 + 1 * v + -1 * b * v + -1 * e * u + 1 * b * e` |
| 94 | bound | `{"direction":"lo","ref":"81:94","triangle":"BER","value":"77383/250000"}` | `1 * w + -1 * b * w + -1 * e * r + 1 * b * e + -77383/250000` |
| 95 | bound | `{"direction":"hi","ref":"81:95","triangle":"BER","value":"6218559153/10000000000"}` | `6218559153/10000000000 + -1 * w + 1 * b * w + 1 * e * r + -1 * b * e` |
| 97 | bound | `{"direction":"hi","ref":"81:97","triangle":"BES","value":"434517/1000000"}` | `434517/1000000 + -1 * k + 1 * b * k + 1 * e * j + -1 * b * e` |
| 98 | bound | `{"direction":"lo","ref":"81:98","triangle":"BFH","value":"279/1000"}` | `1 * f * h + -1 * b * h + 1 * b + -279/1000` |
| 100 | bound | `{"direction":"lo","ref":"81:100","triangle":"BFP","value":"93/1000"}` | `1 * f * q + -1 * b * q + -1 * p + 1 * b + -93/1000` |
| 102 | bound | `{"direction":"lo","ref":"81:102","triangle":"BFQ","value":"23717/125000"}` | `-1 * f * v + 1 * b * v + 1 * u + -1 * b + -23717/125000` |
| 104 | bound | `{"direction":"lo","ref":"81:104","triangle":"BFR","value":"247451/1000000"}` | `-1 * f * w + 1 * b * w + 1 * r + -1 * b + -247451/1000000` |
| 105 | bound | `{"direction":"hi","ref":"81:105","triangle":"BFR","value":"23584897877/31250000000"}` | `23584897877/31250000000 + 1 * f * w + -1 * b * w + -1 * r + 1 * b` |
| 106 | bound | `{"direction":"lo","ref":"81:106","triangle":"BFS","value":"81111/500000"}` | `-1 * f * k + 1 * b * k + 1 * j + -1 * b + -81111/500000` |
| 112 | bound | `{"direction":"lo","ref":"81:112","triangle":"BHR","value":"82323/250000"}` | `1 * b * w + 1 * h * r + -1 * b * h + -82323/250000` |
| 114 | bound | `{"direction":"lo","ref":"81:114","triangle":"BHS","value":"155907/500000"}` | `1 * b * k + 1 * h * j + -1 * b * h + -155907/500000` |
| 118 | bound | `{"direction":"lo","ref":"81:118","triangle":"BPR","value":"68479/500000"}` | `-1 * p * w + 1 * b * w + 1 * q * r + -1 * b * q + -68479/500000` |
| 120 | bound | `{"direction":"lo","ref":"81:120","triangle":"BPS","value":"62207/500000"}` | `-1 * p * k + 1 * b * k + 1 * q * j + -1 * b * q + -62207/500000` |
| 122 | bound | `{"direction":"lo","ref":"81:122","triangle":"BQR","value":"190993/500000"}` | `1 * u * w + -1 * b * w + -1 * v * r + 1 * b * v + -190993/500000` |
| 123 | bound | `{"direction":"hi","ref":"81:123","triangle":"BQR","value":"201559686217/250000000000"}` | `201559686217/250000000000 + -1 * u * w + 1 * b * w + 1 * v * r + -1 * b * v` |
| 125 | bound | `{"direction":"hi","ref":"81:125","triangle":"BQS","value":"579321/1000000"}` | `579321/1000000 + -1 * u * k + 1 * b * k + 1 * v * j + -1 * b * v` |
| 126 | bound | `{"direction":"lo","ref":"81:126","triangle":"BRS","value":"93/1000"}` | `-1 * r * k + 1 * b * k + 1 * w * j + -1 * b * w + -93/1000` |
| 128 | bound | `{"direction":"lo","ref":"81:128","triangle":"CEF","value":"182813/1000000"}` | `817187/1000000 + -1 * c + -1 * e * f + 1 * c * e` |
| 129 | bound | `{"direction":"hi","ref":"81:129","triangle":"CEF","value":"77403430769/125000000000"}` | `-47596569231/125000000000 + 1 * c + 1 * e * f + -1 * c * e` |
| 130 | bound | `{"direction":"lo","ref":"81:130","triangle":"CEH","value":"168021/1000000"}` | `1 * h + -1 * c * h + 1 * c * e + -168021/1000000` |
| 131 | bound | `{"direction":"hi","ref":"81:131","triangle":"CEH","value":"98783131019/125000000000"}` | `98783131019/125000000000 + -1 * h + 1 * c * h + -1 * c * e` |
| 134 | bound | `{"direction":"lo","ref":"81:134","triangle":"CEQ","value":"93/1000"}` | `-1 * v + 1 * c * v + 1 * e * u + -1 * c * e + -93/1000` |
| 136 | bound | `{"direction":"lo","ref":"81:136","triangle":"CER","value":"53269/500000"}` | `1 * w + -1 * c * w + -1 * e * r + 1 * c * e + -53269/500000` |
| 138 | bound | `{"direction":"lo","ref":"81:138","triangle":"CES","value":"93/1000"}` | `1 * k + -1 * c * k + -1 * e * j + 1 * c * e + -93/1000` |
| 139 | bound | `{"direction":"hi","ref":"81:139","triangle":"CES","value":"35141/100000"}` | `35141/100000 + -1 * k + 1 * c * k + 1 * e * j + -1 * c * e` |
| 141 | bound | `{"direction":"hi","ref":"81:141","triangle":"CFH","value":"307474446297/500000000000"}` | `307474446297/500000000000 + -1 * f * h + 1 * c * h + -1 * c` |
| 143 | bound | `{"direction":"hi","ref":"81:143","triangle":"CFP","value":"499423/1000000"}` | `499423/1000000 + -1 * f * q + 1 * c * q + 1 * p + -1 * c` |
| 144 | bound | `{"direction":"lo","ref":"81:144","triangle":"CFQ","value":"93/1000"}` | `-1 * f * v + 1 * c * v + 1 * u + -1 * c + -93/1000` |
| 145 | bound | `{"direction":"hi","ref":"81:145","triangle":"CFQ","value":"7072779749/12500000000"}` | `7072779749/12500000000 + 1 * f * v + -1 * c * v + -1 * u + 1 * c` |
| 146 | bound | `{"direction":"lo","ref":"81:146","triangle":"CFR","value":"155217/500000"}` | `-1 * f * w + 1 * c * w + 1 * r + -1 * c + -155217/500000` |
| 147 | bound | `{"direction":"hi","ref":"81:147","triangle":"CFR","value":"721/1000"}` | `721/1000 + 1 * f * w + -1 * c * w + -1 * r + 1 * c` |
| 150 | bound | `{"direction":"lo","ref":"81:150","triangle":"CHP","value":"93/1000"}` | `-1 * c * q + -1 * h * p + 1 * c * h + -93/1000` |
| 152 | bound | `{"direction":"lo","ref":"81:152","triangle":"CHQ","value":"110373/1000000"}` | `1 * c * v + 1 * h * u + -1 * c * h + -110373/1000000` |
| 154 | bound | `{"direction":"lo","ref":"81:154","triangle":"CHR","value":"97729/250000"}` | `1 * c * w + 1 * h * r + -1 * c * h + -97729/250000` |
| 155 | bound | `{"direction":"hi","ref":"81:155","triangle":"CHR","value":"1/1"}` | `1 + -1 * c * w + -1 * h * r + 1 * c * h` |
| 160 | bound | `{"direction":"lo","ref":"81:160","triangle":"CPR","value":"181899/500000"}` | `-1 * p * w + 1 * c * w + 1 * q * r + -1 * c * q + -181899/500000` |
| 163 | bound | `{"direction":"hi","ref":"81:163","triangle":"CPS","value":"131717/250000"}` | `131717/250000 + 1 * p * k + -1 * c * k + -1 * q * j + 1 * c * q` |
| 164 | bound | `{"direction":"lo","ref":"81:164","triangle":"CQR","value":"114063/1000000"}` | `1 * u * w + -1 * c * w + -1 * v * r + 1 * c * v + -114063/1000000` |
| 165 | bound | `{"direction":"hi","ref":"81:165","triangle":"CQR","value":"107337176733/250000000000"}` | `107337176733/250000000000 + -1 * u * w + 1 * c * w + 1 * v * r + -1 * c * v` |
| 166 | bound | `{"direction":"lo","ref":"81:166","triangle":"CQS","value":"12391/125000"}` | `1 * u * k + -1 * c * k + -1 * v * j + 1 * c * v + -12391/125000` |
| 168 | bound | `{"direction":"lo","ref":"81:168","triangle":"CRS","value":"93/1000"}` | `1 * r * k + -1 * c * k + -1 * w * j + 1 * c * w + -93/1000` |
| 171 | bound | `{"direction":"hi","ref":"81:171","triangle":"EFH","value":"461063764659/1000000000000"}` | `-538936235341/1000000000000 + -1 * f * h + 1 * e * f + 1 * h` |
| 172 | bound | `{"direction":"lo","ref":"81:172","triangle":"EFP","value":"168671/1000000"}` | `1 * f * q + -1 * e * f + -1 * q + -1 * p + 831329/1000000 + 1 * e * p` |
| 175 | bound | `{"direction":"hi","ref":"81:175","triangle":"EFQ","value":"213064430571/500000000000"}` | `-286935569429/500000000000 + -1 * f * v + 1 * e * f + 1 * v + 1 * u + -1 * e * u` |
| 176 | bound | `{"direction":"lo","ref":"81:176","triangle":"EFR","value":"279/1000"}` | `-1 * f * w + 1 * e * f + 1 * w + 1 * r + -1279/1000 + -1 * e * r` |
| 177 | bound | `{"direction":"hi","ref":"81:177","triangle":"EFR","value":"4205593/10000000"}` | `14205593/10000000 + 1 * f * w + -1 * e * f + -1 * w + -1 * r + 1 * e * r` |
| 178 | bound | `{"direction":"lo","ref":"81:178","triangle":"EFS","value":"93/1000"}` | `-1 * f * k + 1 * e * f + 1 * k + 1 * j + -1093/1000 + -1 * e * j` |
| 183 | bound | `{"direction":"hi","ref":"81:183","triangle":"EHQ","value":"280022477571/500000000000"}` | `280022477571/500000000000 + 1 * v + 1 * h * u + -1 * h + -1 * e * u` |
| 184 | bound | `{"direction":"lo","ref":"81:184","triangle":"EHR","value":"11273/40000"}` | `1 * w + 1 * h * r + -1 * h + -1 * e * r + -11273/40000` |
| 185 | bound | `{"direction":"hi","ref":"81:185","triangle":"EHR","value":"5833/10000"}` | `5833/10000 + -1 * w + -1 * h * r + 1 * h + 1 * e * r` |
| 190 | bound | `{"direction":"lo","ref":"81:190","triangle":"EPR","value":"151193/500000"}` | `-1 * p * w + 1 * e * p + 1 * w + 1 * q * r + -1 * q + -1 * e * r + -151193/500000` |
| 191 | bound | `{"direction":"hi","ref":"81:191","triangle":"EPR","value":"17/32"}` | `17/32 + 1 * p * w + -1 * e * p + -1 * w + -1 * q * r + 1 * q + 1 * e * r` |
| 194 | bound | `{"direction":"lo","ref":"81:194","triangle":"EQR","value":"93/1000"}` | `-1 * u * w + 1 * e * u + 1 * w + 1 * v * r + -1 * v + -1 * e * r + -93/1000` |
| 195 | bound | `{"direction":"hi","ref":"81:195","triangle":"EQR","value":"49136329381/250000000000"}` | `49136329381/250000000000 + 1 * u * w + -1 * e * u + -1 * w + -1 * v * r + 1 * v + 1 * e * r` |
| 198 | bound | `{"direction":"lo","ref":"81:198","triangle":"ERS","value":"93/1000"}` | `1 * r * k + -1 * e * r + -1 * k + -1 * w * j + 1 * w + 1 * e * j + -93/1000` |
| 203 | bound | `{"direction":"hi","ref":"81:203","triangle":"FHQ","value":"121807847767/200000000000"}` | `121807847767/200000000000 + 1 * f * v + 1 * h * u + -1 * f * h + -1 * u` |
| 204 | bound | `{"direction":"lo","ref":"81:204","triangle":"FHR","value":"93/1000"}` | `-1 * f * w + -1 * h * r + 1 * f * h + 1 * r + -93/1000` |
| 205 | bound | `{"direction":"hi","ref":"81:205","triangle":"FHR","value":"58216201/200000000"}` | `58216201/200000000 + 1 * f * w + 1 * h * r + -1 * f * h + -1 * r` |
| 210 | bound | `{"direction":"lo","ref":"81:210","triangle":"FPR","value":"30983/200000"}` | `1 * p * w + -1 * p + -1 * f * w + -1 * q * r + 1 * f * q + 1 * r + -30983/200000` |
| 211 | bound | `{"direction":"hi","ref":"81:211","triangle":"FPR","value":"61731/125000"}` | `61731/125000 + -1 * p * w + 1 * p + 1 * f * w + 1 * q * r + -1 * f * q + -1 * r` |
| 212 | bound | `{"direction":"lo","ref":"81:212","triangle":"FPS","value":"30701/200000"}` | `1 * p * k + -1 * p + -1 * f * k + -1 * q * j + 1 * f * q + 1 * j + -30701/200000` |
| 214 | bound | `{"direction":"lo","ref":"81:214","triangle":"FQR","value":"62171/200000"}` | `1 * u * w + -1 * u + -1 * f * w + -1 * v * r + 1 * f * v + 1 * r + -62171/200000` |
| 215 | bound | `{"direction":"hi","ref":"81:215","triangle":"FQR","value":"156267377/250000000"}` | `156267377/250000000 + -1 * u * w + 1 * u + 1 * f * w + 1 * v * r + -1 * f * v + -1 * r` |
| 216 | bound | `{"direction":"lo","ref":"81:216","triangle":"FQS","value":"24971/200000"}` | `1 * u * k + -1 * u + -1 * f * k + -1 * v * j + 1 * f * v + 1 * j + -24971/200000` |
| 218 | bound | `{"direction":"lo","ref":"81:218","triangle":"FRS","value":"93/1000"}` | `-1 * r * k + 1 * r + 1 * f * k + 1 * w * j + -1 * f * w + -1 * j + -93/1000` |
| 220 | bound | `{"direction":"lo","ref":"81:220","triangle":"HPQ","value":"93/1000"}` | `1 * p * v + -1 * h * p + -1 * q * u + 1 * h * u + -93/1000` |
| 223 | bound | `{"direction":"hi","ref":"81:223","triangle":"HPR","value":"308519/500000"}` | `308519/500000 + -1 * p * w + 1 * h * p + 1 * q * r + -1 * h * r` |
| 226 | bound | `{"direction":"lo","ref":"81:226","triangle":"HQR","value":"72609/200000"}` | `1 * u * w + -1 * h * u + -1 * v * r + 1 * h * r + -72609/200000` |
| 228 | bound | `{"direction":"lo","ref":"81:228","triangle":"HQS","value":"8711/50000"}` | `1 * u * k + -1 * h * u + -1 * v * j + 1 * h * j + -8711/50000` |
| 233 | bound | `{"direction":"hi","ref":"81:233","triangle":"PQR","value":"357633/500000"}` | `357633/500000 + -1 * u * w + 1 * q * u + 1 * p * w + 1 * v * r + -1 * p * v + -1 * q * r` |
| 236 | bound | `{"direction":"lo","ref":"81:236","triangle":"PRS","value":"93503/1000000"}` | `-1 * r * k + 1 * q * r + 1 * p * k + 1 * w * j + -1 * p * w + -1 * q * j + -93503/1000000` |
| 240 | coordinate | `{"box":81,"direction":"lo","value":"33263/250000","variable":"a"}` | `1 * a + -33263/250000` |
| 241 | coordinate | `{"box":81,"direction":"hi","value":"277529/500000","variable":"a"}` | `277529/500000 + -1 * a` |
| 242 | coordinate | `{"box":81,"direction":"lo","value":"13409/125000","variable":"b"}` | `1 * b + -13409/125000` |
| 243 | coordinate | `{"box":81,"direction":"hi","value":"349/1000","variable":"b"}` | `349/1000 + -1 * b` |
| 244 | coordinate | `{"box":81,"direction":"lo","value":"135501/250000","variable":"c"}` | `1 * c + -135501/250000` |
| 245 | coordinate | `{"box":81,"direction":"hi","value":"161249/200000","variable":"c"}` | `161249/200000 + -1 * c` |
| 246 | coordinate | `{"box":81,"direction":"lo","value":"4167/10000","variable":"e"}` | `1 * e + -4167/10000` |
| 248 | coordinate | `{"box":81,"direction":"lo","value":"279/1000","variable":"f"}` | `1 * f + -279/1000` |
| 249 | coordinate | `{"box":81,"direction":"hi","value":"521687/1000000","variable":"f"}` | `521687/1000000 + -1 * f` |
| 250 | coordinate | `{"box":81,"direction":"lo","value":"672257/1000000","variable":"h"}` | `1 * h + -672257/1000000` |
| 251 | coordinate | `{"box":81,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 253 | coordinate | `{"box":81,"direction":"hi","value":"76547/200000","variable":"p"}` | `76547/200000 + -1 * p` |
| 254 | coordinate | `{"box":81,"direction":"lo","value":"323347/1000000","variable":"q"}` | `1 * q + -323347/1000000` |
| 255 | coordinate | `{"box":81,"direction":"hi","value":"733897/1000000","variable":"q"}` | `733897/1000000 + -1 * q` |
| 256 | coordinate | `{"box":81,"direction":"lo","value":"793109/1000000","variable":"u"}` | `1 * u + -793109/1000000` |
| 257 | coordinate | `{"box":81,"direction":"hi","value":"1","variable":"u"}` | `1 + -1 * u` |
| 258 | coordinate | `{"box":81,"direction":"lo","value":"33263/250000","variable":"v"}` | `1 * v + -33263/250000` |
| 260 | coordinate | `{"box":81,"direction":"lo","value":"757313/1000000","variable":"r"}` | `1 * r + -757313/1000000` |
| 261 | coordinate | `{"box":81,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 262 | coordinate | `{"box":81,"direction":"lo","value":"401831/500000","variable":"w"}` | `1 * w + -401831/500000` |
| 263 | coordinate | `{"box":81,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 265 | coordinate | `{"box":81,"direction":"hi","value":"840563/1000000","variable":"j"}` | `840563/1000000 + -1 * j` |
| 270 | physical | `{"factor":4}` | `-93/1000 + 1 * e` |
| 274 | physical | `{"factor":11}` | `-93/1000 + 1 * f` |
| 277 | physical | `{"factor":21}` | `-93/1000 + 1 * c` |
| 279 | physical | `{"factor":28}` | `907/1000 + -1 * a` |
| 281 | physical | `{"factor":50}` | `-279/1000 + 1 * c + -1 * b` |
| 282 | physical | `{"factor":52}` | `-93/1000 + 1 * h` |
| 283 | physical | `{"factor":57}` | `907/1000 + -1 * b` |
| 284 | physical | `{"factor":79}` | `907/1000 + -1 * f` |
| 285 | physical | `{"factor":101}` | `907/1000 + -1 * e` |
| 287 | physical | `{"factor":137}` | `1 * e + -1 * a` |
| 289 | physical | `{"factor":139}` | `1 * f + -1 * b` |
| 291 | physical | `{"factor":141}` | `1 * c * h + -135501/250000` |
| 292 | physical | `{"factor":142}` | `1 * c * h + -1 * a * b + -279/625` |
| 293 | physical | `{"factor":143}` | `407/500 + -1 * c * h + 1 * f * h + 1 * c * e + -1 * e * f` |
| 294 | physical | `{"factor":144}` | `721/1000 + -1 * f + -1 * e + 1 * e * f` |
| 295 | physical | `{"factor":145}` | `1 * e + -1 * b * e + -93/250` |
| 296 | physical | `{"factor":146}` | `-93/250 + -1 * b + 1 * f + 1 * e + -1 * e * f` |
| 297 | physical | `{"factor":147}` | `1 * u + -1 * c + -93/1000` |
| 298 | physical | `{"factor":148}` | `1 * e + -1 * v + -93/1000` |
| 299 | physical | `{"factor":149}` | `1 * e * u + -1 * c * e + -93/1000` |
| 300 | physical | `{"factor":150}` | `1 * e + -1 * v + -1 * c * e + 1 * c * v + -93/1000` |
| 302 | physical | `{"factor":152}` | `105449/200000 * c * h + -142649/200000 * b * h + -142649/200000 * a * c + 179849/200000 * a * b` |
| 303 | physical | `{"factor":153}` | `142649/161249 + -1 * p + -1 * q` |
| 304 | physical | `{"factor":154}` | `1 * p + -2574457/21181000` |
| 305 | physical | `{"factor":155}` | `1 * q + -5268691800/34948624513` |
| 308 | physical | `{"factor":158}` | `4205593/930000 * j + -1 + -2345593/930000 * f + -1 * r` |
| 309 | physical | `{"factor":159}` | `2345593/930000 + 1 * f + 1 * r + -4205593/930000 * j` |
| 310 | physical | `{"factor":160}` | `4205593/930000 * k + -1 + -2345593/930000 * e + -1 * w` |
| 311 | physical | `{"factor":161}` | `2345593/930000 + 1 * e + 1 * w + -4205593/930000 * k` |
| 338 | physical | `{"factor":188}` | `-171163/1000000 * f * h + 171163/1000000 * a * f + 13857/20000 * b * h + -13857/20000 * a * b` |
| 426 | physical | `{"factor":276}` | `6954407/10000000 * f * w + 4205593/10000000 * a * f + -6954407/10000000 * r + 6954407/10000000 * a * r + -279/250 * e * f + 279/250 + -279/250 * a` |
| 514 | physical | `{"factor":364}` | `-29/250 * b * w + -29/250 * h * r + -1 * b * h + 279/250 * c * h` |
| 660 | physical | `{"factor":510}` | `222425650423/500000000000 + 289074349577/500000000000 * a + -222425650423/500000000000 * e * f + -289074349577/500000000000 * a * f + -1023/1000 * b + 1023/1000 * b * e` |
| 677 | physical | `{"factor":527}` | `271507/500000 * v + 239993/500000 * c * v + -271507/500000 * e * u + 271507/500000 * c * e + 1023/1000 * a * u + -1023/1000 * a * c` |
| 690 | physical | `{"factor":540}` | `-222425650423/500000000000 * f * v + -289074349577/500000000000 * a * f + 222425650423/500000000000 * u + 289074349577/500000000000 * a * u + -1023/1000 * b + 1023/1000 * b * v` |
| 695 | physical | `{"factor":545}` | `-151/500 * c * w + 151/500 * b * w + 1023/1000 * c + -1023/1000 * b` |
| 701 | physical | `{"factor":551}` | `75641213/250000000 * h * u + 180108787/250000000 * a * u + -1023/1000 * b * h + 1023/1000 * b * v` |
| 735 | physical | `{"factor":585}` | `-6024407/10000000 * w + 6024407/10000000 * b * w + 6024407/10000000 * e * r + 4205593/10000000 * b * e + -1023/1000 * e * f + 1023/1000 + -1023/1000 * b` |
| 883 | physical | `{"factor":733}` | `-58216201/200000000 * r * k + -146383799/200000000 * r + -146383799/200000000 * f * k + 58216201/200000000 * w * j + 146383799/200000000 * f * w + 146383799/200000000 * j + 1023/1000 * h * r + -1023/1000 * h * j` |
| 886 | physical | `{"factor":736}` | `-501313/1000000 * f * h + -521687/1000000 * e * f + 501313/1000000 * h + 521687/1000000 + -1023/1000 * b + 1023/1000 * b * e` |
| 898 | physical | `{"factor":748}` | `12674044271/31250000000 * f * k + -12674044271/31250000000 * e * f + 19294705729/31250000000 * k + -12674044271/31250000000 * j + 12674044271/31250000000 + -19294705729/31250000000 * e * j + -1023/1000 * b * k + 1023/1000 * b * e` |
| 913 | physical | `{"factor":763}` | `698973/1000000 * w + 324027/1000000 * b * w + -698973/1000000 * e * r + -324027/1000000 * b * e + -1023/1000 * c * w + 1023/1000 * c * e` |
| 950 | physical | `{"factor":800}` | `591792506031/1000000000000 * f * k + -591792506031/1000000000000 * e * f + 431207493969/1000000000000 * k + -591792506031/1000000000000 * j + 591792506031/1000000000000 + -431207493969/1000000000000 * e * j + -1023/1000 * p * k + 1023/1000 * q * j + -1023/1000 * q + 1023/1000 * e * p` |
| 974 | physical | `{"factor":824}` | `-100396041493/125000000000 * c * v + -100396041493/125000000000 * h * u + -27478958507/125000000000 * c * h + 1023/1000 * c * e + 1023/1000 * h` |
| 990 | physical | `{"factor":840}` | `100396041493/125000000000 * f * v + -100396041493/125000000000 * c * v + -100396041493/125000000000 * u + -27478958507/125000000000 * c + 1023/1000 * c * e + -1023/1000 * e * f + 1023/1000` |
| 991 | physical | `{"factor":841}` | `151/500 * f * w + -151/500 * e * f + 721/1000 * w + -151/500 * r + 151/500 + -721/1000 * e * r + -1023/1000 * c * w + 1023/1000 * c * e` |
| 1009 | physical | `{"factor":859}` | `1507955647/3906250000 * r * k + 2488138103/3906250000 * c * k + -1507955647/3906250000 * w * j + -2488138103/3906250000 * c * w + -1023/1000 * u * k + 1023/1000 * v * j + 1023/1000 * u * w + -1023/1000 * v * r` |
| 1031 | physical | `{"factor":881}` | `6024407/10000000 * p * w + 4205593/10000000 * e * p + -6024407/10000000 * w + -6024407/10000000 * q * r + -4205593/10000000 * q + 6024407/10000000 * e * r + -1023/1000 * e * f + 1023/1000 + -1023/1000 * p + 1023/1000 * f * q` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 8912100 | 0, 178 |
| 1 | 13048400 | 0, 242 |
| 2 | 17576500 | 0, 295 |
| 3 | 5651800 | 2, 168 |
| 4 | 3260000 | 2, 198 |
| 5 | 7393900 | 4, 118 |
| 6 | 8364200 | 4, 131 |
| 7 | 5652000 | 4, 139 |
| 8 | 2358000 | 4, 141 |
| 9 | 10364300 | 4, 143 |
| 10 | 5668400 | 4, 146 |
| 11 | 10722200 | 4, 154 |
| 12 | 8790400 | 4, 190 |
| 13 | 104992000 | 4, 194 |
| 14 | 9652400 | 4, 211 |
| 15 | 6554000 | 4, 218 |
| 16 | 8364200 | 4, 223 |
| 17 | 58474300 | 4, 262 |
| 18 | 1749700 | 4, 277 |
| 19 | 2979100 | 4, 282 |
| 20 | 9522500 | 4, 284 |
| 21 | 119726100 | 4, 285 |
| 22 | 3488500 | 4, 295 |
| 23 | 2515400 | 4, 299 |
| 24 | 1045000 | 4, 300 |
| 25 | 154827300 | 4, 305 |
| 26 | 1459100 | 4, 309 |
| 27 | 7817500 | 4, 311 |
| 28 | 1045000 | 6, 145 |
| 29 | 2879600 | 6, 147 |
| 30 | 1127400 | 6, 311 |
| 31 | 8364200 | 8, 171 |
| 32 | 2358000 | 8, 218 |
| 33 | 11100100 | 9, 204 |
| 34 | 3843600 | 12, 258 |
| 35 | 5593600 | 12, 295 |
| 36 | 7393900 | 13, 100 |
| 37 | 119968000 | 13, 194 |
| 38 | 169000 | 16, 194 |
| 39 | 858800 | 17, 309 |
| 40 | 17658700 | 18, 100 |
| 41 | 13526000 | 18, 194 |
| 42 | 1875100 | 18, 300 |
| 43 | 3624000 | 19, 198 |
| 44 | 10885000 | 19, 218 |
| 45 | 1215700 | 19, 249 |
| 46 | 3830500 | 19, 294 |
| 47 | 3071500 | 20, 248 |
| 48 | 2412800 | 20, 310 |
| 49 | 1875100 | 21, 134 |
| 50 | 1638700 | 21, 176 |
| 51 | 7225000 | 21, 198 |
| 52 | 2358000 | 23, 204 |
| 53 | 176395000 | 24, 194 |
| 54 | 7294400 | 27, 100 |
| 55 | 131000 | 27, 198 |
| 56 | 6167000 | 27, 294 |
| 57 | 2067000 | 29, 178 |
| 58 | 3798000 | 31, 218 |
| 59 | 1517500 | 31, 249 |
| 60 | 120122800 | 33, 44 |
| 61 | 20476000 | 33, 80 |
| 62 | 231058500 | 33, 126 |
| 63 | 4505200 | 33, 134 |
| 64 | 139870500 | 33, 168 |
| 65 | 209262000 | 33, 178 |
| 66 | 84121000 | 33, 198 |
| 67 | 732400 | 34, 87 |
| 68 | 20742800 | 34, 105 |
| 69 | 2358000 | 34, 147 |
| 70 | 573700 | 34, 248 |
| 71 | 624800 | 34, 310 |
| 72 | 11819800 | 37, 136 |
| 73 | 176395400 | 37, 164 |
| 74 | 154700 | 37, 309 |
| 75 | 17154600 | 39, 100 |
| 76 | 79500 | 39, 216 |
| 77 | 4000 | 39, 218 |
| 78 | 27006100 | 39, 295 |
| 79 | 877200 | 40, 248 |
| 80 | 2067000 | 41, 198 |
| 81 | 2067000 | 41, 218 |
| 82 | 1653400 | 43, 134 |
| 83 | 600200 | 44, 86 |
| 84 | 8364200 | 44, 88 |
| 85 | 13458100 | 44, 112 |
| 86 | 123674000 | 44, 195 |
| 87 | 2358000 | 44, 218 |
| 88 | 44577800 | 44, 260 |
| 89 | 44741700 | 44, 262 |
| 90 | 23822400 | 44, 277 |
| 91 | 164700700 | 44, 279 |
| 92 | 120122800 | 44, 282 |
| 93 | 26705800 | 44, 283 |
| 94 | 2358000 | 44, 293 |
| 95 | 814700 | 44, 310 |
| 96 | 79500 | 46, 126 |
| 97 | 11720800 | 47, 95 |
| 98 | 79500 | 47, 97 |
| 99 | 2358000 | 48, 100 |
| 100 | 3607000 | 48, 194 |
| 101 | 44577800 | 48, 240 |
| 102 | 146500 | 48, 296 |
| 103 | 791400 | 48, 300 |
| 104 | 44577800 | 48, 303 |
| 105 | 5364900 | 49, 80 |
| 106 | 1629000 | 50, 194 |
| 107 | 12645400 | 50, 246 |
| 108 | 2358000 | 52, 147 |
| 109 | 8700 | 52, 309 |
| 110 | 154700 | 54, 309 |
| 111 | 1439100 | 55, 263 |
| 112 | 660000 | 55, 295 |
| 113 | 489600 | 56, 300 |
| 114 | 9611000 | 57, 80 |
| 115 | 94500 | 57, 168 |
| 116 | 2142100 | 57, 178 |
| 117 | 32000 | 57, 198 |
| 118 | 1549000 | 59, 194 |
| 119 | 5029200 | 62, 86 |
| 120 | 13458100 | 62, 88 |
| 121 | 13458100 | 62, 131 |
| 122 | 123674000 | 62, 195 |
| 123 | 163800 | 62, 262 |
| 124 | 44004200 | 62, 274 |
| 125 | 15816100 | 62, 277 |
| 126 | 44577800 | 62, 279 |
| 127 | 18699500 | 62, 283 |
| 128 | 15816100 | 62, 293 |
| 129 | 8700 | 62, 309 |
| 130 | 189800 | 62, 310 |
| 131 | 2358000 | 64, 75 |
| 132 | 176395400 | 66, 134 |
| 133 | 1706400 | 67, 249 |
| 134 | 1875100 | 69, 83 |
| 135 | 2733300 | 70, 242 |
| 136 | 4952100 | 72, 257 |
| 137 | 13371500 | 72, 310 |
| 138 | 2975500 | 73, 134 |
| 139 | 5305300 | 75, 80 |
| 140 | 68236300 | 75, 126 |
| 141 | 145766000 | 75, 198 |
| 142 | 1936000 | 75, 218 |
| 143 | 10999900 | 76, 246 |
| 144 | 2310000 | 77, 198 |
| 145 | 2358000 | 79, 198 |
| 146 | 16103200 | 80, 136 |
| 147 | 82458500 | 80, 138 |
| 148 | 25004600 | 80, 141 |
| 149 | 5350100 | 80, 205 |
| 150 | 68137800 | 80, 261 |
| 151 | 8058200 | 80, 270 |
| 152 | 38676100 | 80, 279 |
| 153 | 29315700 | 80, 282 |
| 154 | 5158000 | 80, 283 |
| 155 | 19656700 | 80, 284 |
| 156 | 32008100 | 80, 293 |
| 157 | 997300 | 80, 308 |
| 158 | 920400 | 80, 310 |
| 159 | 6410100 | 82, 87 |
| 160 | 101345000 | 82, 194 |
| 161 | 2118200 | 82, 204 |
| 162 | 59523500 | 82, 310 |
| 163 | 6163700 | 83, 100 |
| 164 | 90715000 | 83, 198 |
| 165 | 44281000 | 83, 218 |
| 166 | 217705200 | 84, 263 |
| 167 | 3904100 | 85, 176 |
| 168 | 2623000 | 85, 194 |
| 169 | 841000 | 85, 198 |
| 170 | 773000 | 85, 218 |
| 171 | 6365200 | 85, 294 |
| 172 | 63657000 | 86, 198 |
| 173 | 88450000 | 86, 263 |
| 174 | 101127000 | 87, 194 |
| 175 | 1059700 | 87, 309 |
| 176 | 2563500 | 88, 134 |
| 177 | 2342100 | 88, 168 |
| 178 | 761400 | 89, 178 |
| 179 | 1312600 | 92, 204 |
| 180 | 86985000 | 93, 198 |
| 181 | 101527100 | 94, 134 |
| 182 | 1230200 | 95, 100 |
| 183 | 3436700 | 95, 216 |
| 184 | 65386200 | 95, 257 |
| 185 | 462900 | 95, 295 |
| 186 | 32000 | 98, 218 |
| 187 | 2979100 | 98, 241 |
| 188 | 454900 | 98, 310 |
| 189 | 2358000 | 100, 139 |
| 190 | 2358000 | 100, 155 |
| 191 | 103168000 | 100, 195 |
| 192 | 6163700 | 100, 277 |
| 193 | 163191500 | 100, 279 |
| 194 | 8364200 | 100, 282 |
| 195 | 6881300 | 100, 283 |
| 196 | 2576900 | 100, 285 |
| 197 | 2358000 | 100, 293 |
| 198 | 38922000 | 102, 168 |
| 199 | 13458100 | 104, 150 |
| 200 | 117547000 | 106, 194 |
| 201 | 1549000 | 114, 194 |
| 202 | 103168000 | 120, 194 |
| 203 | 46501900 | 122, 168 |
| 204 | 5594500 | 122, 178 |
| 205 | 109041000 | 122, 194 |
| 206 | 262400 | 123, 265 |
| 207 | 353500 | 123, 295 |
| 208 | 109041000 | 125, 194 |
| 209 | 196000 | 125, 249 |
| 210 | 46501900 | 126, 136 |
| 211 | 52659000 | 126, 141 |
| 212 | 2358000 | 126, 143 |
| 213 | 40533700 | 126, 176 |
| 214 | 2118200 | 126, 184 |
| 215 | 328792000 | 126, 195 |
| 216 | 1549000 | 126, 203 |
| 217 | 1660500 | 126, 214 |
| 218 | 68000 | 126, 218 |
| 219 | 49188600 | 126, 262 |
| 220 | 53565000 | 126, 270 |
| 221 | 293981000 | 126, 279 |
| 222 | 256872700 | 126, 282 |
| 223 | 68236300 | 126, 283 |
| 224 | 4776300 | 126, 284 |
| 225 | 55001200 | 126, 293 |
| 226 | 4437100 | 126, 297 |
| 227 | 108500 | 126, 308 |
| 228 | 134200 | 126, 310 |
| 229 | 152393300 | 128, 258 |
| 230 | 8218100 | 129, 134 |
| 231 | 22286000 | 129, 300 |
| 232 | 4995000 | 130, 194 |
| 233 | 1792000 | 130, 198 |
| 234 | 13492700 | 131, 134 |
| 235 | 1073200 | 131, 168 |
| 236 | 82458000 | 134, 139 |
| 237 | 9923600 | 134, 146 |
| 238 | 5984000 | 134, 154 |
| 239 | 109041000 | 134, 195 |
| 240 | 3209000 | 134, 218 |
| 241 | 68449000 | 134, 260 |
| 242 | 336766200 | 134, 262 |
| 243 | 12438500 | 134, 277 |
| 244 | 11021400 | 134, 282 |
| 245 | 86841100 | 134, 283 |
| 246 | 376450900 | 134, 285 |
| 247 | 766000 | 134, 309 |
| 248 | 58190700 | 134, 311 |
| 249 | 15670900 | 136, 294 |
| 250 | 4704000 | 138, 194 |
| 251 | 2135000 | 139, 178 |
| 252 | 70000 | 139, 198 |
| 253 | 280000 | 139, 204 |
| 254 | 167534000 | 139, 246 |
| 255 | 154664000 | 139, 295 |
| 256 | 2358000 | 143, 178 |
| 257 | 4716000 | 143, 198 |
| 258 | 1334000 | 144, 198 |
| 259 | 74698500 | 145, 295 |
| 260 | 62700 | 146, 168 |
| 261 | 16898000 | 146, 194 |
| 262 | 2918300 | 152, 245 |
| 263 | 2310400 | 154, 178 |
| 264 | 424600 | 155, 294 |
| 265 | 103168000 | 160, 194 |
| 266 | 103168000 | 163, 194 |
| 267 | 1504000 | 164, 294 |
| 268 | 1607900 | 165, 295 |
| 269 | 109041000 | 166, 194 |
| 270 | 1983200 | 166, 245 |
| 271 | 130565000 | 168, 195 |
| 272 | 42131500 | 168, 214 |
| 273 | 2212700 | 168, 226 |
| 274 | 370977900 | 168, 270 |
| 275 | 6659000 | 168, 277 |
| 276 | 172706900 | 168, 279 |
| 277 | 163059300 | 168, 282 |
| 278 | 106636300 | 168, 283 |
| 279 | 31880400 | 168, 284 |
| 280 | 1073200 | 168, 293 |
| 281 | 255040300 | 168, 298 |
| 282 | 211600 | 168, 308 |
| 283 | 134200 | 168, 310 |
| 284 | 606700 | 172, 263 |
| 285 | 43300 | 175, 309 |
| 286 | 64100 | 176, 309 |
| 287 | 31800 | 177, 204 |
| 288 | 3224200 | 177, 295 |
| 289 | 113581000 | 178, 195 |
| 290 | 3684000 | 178, 255 |
| 291 | 828100 | 178, 274 |
| 292 | 70832200 | 178, 277 |
| 293 | 143630100 | 178, 279 |
| 294 | 213548800 | 178, 282 |
| 295 | 2728100 | 178, 283 |
| 296 | 31800 | 178, 293 |
| 297 | 80900 | 178, 311 |
| 298 | 2507000 | 183, 198 |
| 299 | 542600 | 183, 261 |
| 300 | 828300 | 183, 265 |
| 301 | 529900 | 183, 310 |
| 302 | 32000 | 185, 218 |
| 303 | 2255500 | 191, 295 |
| 304 | 109040000 | 194, 194 |
| 305 | 20505000 | 194, 211 |
| 306 | 132000 | 194, 261 |
| 307 | 64241000 | 194, 263 |
| 308 | 352296000 | 194, 270 |
| 309 | 64497000 | 194, 283 |
| 310 | 12784000 | 194, 287 |
| 311 | 4381000 | 194, 289 |
| 312 | 2838000 | 194, 291 |
| 313 | 55000 | 194, 293 |
| 314 | 4291000 | 194, 294 |
| 315 | 110000 | 194, 309 |
| 316 | 18251000 | 194, 310 |
| 317 | 109040000 | 195, 198 |
| 318 | 1255000 | 198, 203 |
| 319 | 70000 | 198, 218 |
| 320 | 858000 | 198, 255 |
| 321 | 172089000 | 198, 258 |
| 322 | 78765000 | 198, 262 |
| 323 | 85943000 | 198, 274 |
| 324 | 60892000 | 198, 277 |
| 325 | 27033000 | 198, 279 |
| 326 | 85503000 | 198, 282 |
| 327 | 210346000 | 198, 285 |
| 328 | 9991000 | 198, 291 |
| 329 | 1007000 | 198, 293 |
| 330 | 62496000 | 198, 294 |
| 331 | 5235000 | 198, 297 |
| 332 | 103000 | 198, 309 |
| 333 | 2855600 | 204, 244 |
| 334 | 297000 | 204, 248 |
| 335 | 1296100 | 204, 281 |
| 336 | 165500 | 204, 310 |
| 337 | 551100 | 205, 295 |
| 338 | 627800 | 210, 296 |
| 339 | 1126300 | 212, 246 |
| 340 | 470800 | 215, 310 |
| 341 | 177660000 | 216, 246 |
| 342 | 93666000 | 218, 240 |
| 343 | 224262000 | 218, 246 |
| 344 | 1328000 | 218, 263 |
| 345 | 1915000 | 218, 299 |
| 346 | 8700 | 220, 309 |
| 347 | 3452400 | 228, 295 |
| 348 | 8700 | 233, 309 |
| 349 | 1699200 | 236, 246 |
| 350 | 6783700 | 240, 263 |
| 351 | 47976200 | 240, 295 |
| 352 | 6263900 | 240, 299 |
| 353 | 222801500 | 241, 248 |
| 354 | 6955700 | 241, 309 |
| 355 | 580200 | 242, 292 |
| 356 | 108927600 | 243, 263 |
| 357 | 18380100 | 245, 245 |
| 358 | 6059800 | 245, 250 |
| 359 | 200504500 | 245, 258 |
| 360 | 23880400 | 245, 294 |
| 361 | 119243600 | 246, 257 |
| 362 | 1878300 | 246, 311 |
| 363 | 1958400 | 248, 309 |
| 364 | 27774200 | 248, 310 |
| 365 | 111953100 | 249, 263 |
| 366 | 462800 | 250, 263 |
| 367 | 2696700 | 251, 304 |
| 368 | 9978800 | 253, 263 |
| 369 | 9978800 | 254, 261 |
| 370 | 34838000 | 256, 310 |
| 371 | 3759400 | 257, 295 |
| 372 | 1444300 | 258, 263 |
| 373 | 34354900 | 258, 309 |
| 374 | 1045700 | 258, 311 |
| 375 | 70794300 | 261, 310 |
| 376 | 70816600 | 263, 309 |
| 377 | 89800 | 263, 310 |
| 378 | 3490000 | 287, 289 |
| 379 | 24150000 | 287, 296 |
| 380 | 40190800 | 289, 310 |
| 381 | 1369800 | 291, 300 |
| 382 | 2563500 | 292, 295 |
| 383 | 15100 | 294, 297 |
| 384 | 1063500 | 294, 309 |
| 385 | 8754700 | 295, 308 |
| 386 | 7149700 | 296, 310 |
| 387 | 83100 | 300, 309 |
| 388 | 202500 | 300, 311 |
| 389 | 5526200 | 302, 310 |
| 390 | 9500 | 309, 309 |
| 391 | 12900 | 310, 310 |
| 392 | 1735000 | 248, 338 |
| 393 | 2354000 | 258, 338 |
| 394 | 10696700 | 258, 426 |
| 395 | 10613400 | 263, 514 |
| 396 | 54819200 | 263, 660 |
| 397 | 7971700 | 263, 677 |
| 398 | 3690400 | 263, 690 |
| 399 | 26321100 | 263, 695 |
| 400 | 1039800 | 263, 701 |
| 401 | 6142300 | 263, 735 |
| 402 | 2289000 | 245, 883 |
| 403 | 3289000 | 246, 883 |
| 404 | 1365000 | 263, 883 |
| 405 | 11165000 | 263, 886 |
| 406 | 1927400 | 263, 898 |
| 407 | 70200 | 261, 913 |
| 408 | 839200 | 263, 950 |
| 409 | 815100 | 263, 974 |
| 410 | 88135000 | 263, 990 |
| 411 | 203030900 | 258, 991 |
| 412 | 81087000 | 263, 1009 |
| 413 | 43200 | 263, 1031 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `a * b * f * k` | 100 |
| `a * b * e * f` | -100 |
| `a * b * k` | -34285709211/310000000 |
| `a * b * j` | 14013787463/9300 |
| `a * b` | -1149439600446763243187315261173/5417036799515000000000 |
| `a * b * e * j` | 100 |
| `a * c * f * k` | 5557900 |
| `a * c * e * f` | 3076800 |
| `a * c * k` | -1442903772764767/930000000 |
| `a * c * j` | -3328275671/2325 |
| `a * c` | 987598673693/930000 |
| `a * c * e * j` | 900 |
| `f * k` | 3774861187425885617/148800000000 |
| `e * f` | -70003394740073473/3750000000 |
| `k` | -34506053608058673472703/4650000000000000 |
| `j` | -17555751398559971760269657/432450000000000000 |
| `1` | -1914809657217447707397176003122916490558943/6402394709939418597000000000000000 |
| `e * j` | 11824348845600080383/155000000000 |
| `a * b * b` | -6234700 |
| `a * b * c` | 15400500 |
| `b` | 20444750993488316189677406849/406277759963625000000 |
| `a * b * e` | -5830501959832367/930000000 |
| `a * b * b * e` | 29222100 |
| `a * c * e` | -798367432575233/930000000 |
| `a * b * c * e` | 100 |
| `e` | 730982607072152577882703/4650000000000000 |
| `b * e` | -3689764236708584991/77500000000 |
| `b * e * r * k` | 62861000 |
| `b * c * e * k` | -61154800 |
| `b * e * w * j` | -65586400 |
| `b * c * e * w` | -100 |
| `a * b * r * k` | 200 |
| `a * b * c * k` | -200 |
| `a * b * w * j` | -1875300 |
| `a * b * c * w` | -19162800 |
| `a * r * k` | 3242243/4650 |
| `a * w * j` | -764900 |
| `a * c * w` | 426683619/1000 |
| `a` | 673103427200029/4843750000 |
| `r * k` | 1896065393475918907/744000000000 |
| `c * k` | 14374776463425287/1250000000 |
| `w * j` | -4604907594400843/1190400000 |
| `c * w` | -6489060706862537/1250000000 |
| `b * e * e * r` | -85723700 |
| `b * e * k` | -42178311267/3100 |
| `b * e * w` | 129885917002991/3100000 |
| `b * e * e * j` | -600 |
| `a * b * e * r` | -400 |
| `a * b * w` | 14202292281/1000 |
| `a * e * r` | -251911412243/4650 |
| `a * k` | 910156234/2325 |
| `a * w` | 19945442396413/156250000 |
| `a * e * j` | -15862300 |
| `e * r` | -8767813668109821637/31000000000 |
| `w` | 1653194153259906433/9300000000 |
| `b * p * w` | 100 |
| `b * q * r` | -100 |
| `b * b * q` | -512600 |
| `a * b * b * w` | -7393900 |
| `a * f` | 145173128108971936264183624541/27085183997575000000000 |
| `p * w` | -420450116572009/1250000000 |
| `b * w` | -13271437632482109/1000000000 |
| `q * r` | 419317116572009/1250000000 |
| `b * q` | -137427954766926349/5000000000 |
| `b * h` | 497886882363479/77500000 |
| `b * c * e` | -5434000 |
| `h` | 274161301361211/211810000 |
| `c * e` | 3654134147074554531/31000000000 |
| `b * k` | 598412566369989817/93000000000 |
| `b * c * k` | 25877900 |
| `b * e * j` | 3338768791/62 |
| `a * f * k` | 482290849/2325 |
| `a * e * f * j` | -118500 |
| `b * c` | 7181400 |
| `a * c * f` | -6244500 |
| `f * h` | -60955323596539/15625000 |
| `c` | -1860313249932889/25000000 |
| `b * f * q` | -219800 |
| `b * p` | 219800 |
| `a * b * p` | -100 |
| `a * f * p` | 100 |
| `f * q` | 1151188131603627/1250000000 |
| `c * q` | -73969/10000 |
| `p` | 9459862727146373/1250000000 |
| `b * f * w` | 13461151/60 |
| `b * c * w` | -10883300 |
| `b * r` | 7344400 |
| `a * b * r` | 200 |
| `a * f * f * w` | 9755000 |
| `a * c * f * w` | 1508900 |
| `a * f * r` | -4100 |
| `f * w` | -3765291705482718784269317/2999231400000000000 |
| `r` | 118446710392001049785038159/999743800000000000 |
| `b * h * r` | -1615500 |
| `h * r` | -103053425709/40000 |
| `b * e * p` | -2490200 |
| `b * e * r` | 105699233477/5000 |
| `a * b * e * p` | 100 |
| `a * e * f * p` | -100 |
| `a * f * w` | -3875219294986951/625000000 |
| `a * f * q` | 100 |
| `a * e * f * r` | -300 |
| `e * p` | -129337670668008877/7265625000 |
| `q` | 103709136269957/39062500 |
| `b * u * w` | 1623200 |
| `b * e * u` | -3766500 |
| `b * v * r` | -2311300 |
| `b * v` | -48870084687438581/2500000000 |
| `a * b * u * w` | -1300600 |
| `a * b * e * u` | 300 |
| `a * b * v * r` | 100 |
| `a * b * v` | -12054689/10 |
| `a * f * u * w` | -80000 |
| `a * e * f * u` | 4248800 |
| `a * f * v * r` | 500 |
| `a * f * v` | -46388563369/100000 |
| `u * w` | -3942520149115433/14531250000 |
| `e * u` | 60026221192642237/31000000000 |
| `v * r` | 183354748481771/232500000 |
| `v` | -37059157604489869/31000000000 |
| `b * r * k` | -27873800 |
| `b * f * k` | -21663151/60 |
| `b * w * j` | 1654844849/60 |
| `b * j` | -17546367207/775 |
| `a * f * r * k` | 900 |
| `a * f * f * k` | -5771000 |
| `a * f * w * j` | -500 |
| `a * f * j` | 464452537/9300 |
| `h * p` | 265031/10000 |
| `b * f` | -7003700 |
| `a * b * f` | -2297979/4 |
| `a * f * f` | -211246439/200 |
| `f` | -6945261697717237723/465000000000 |
| `a * e * f` | -10150856171/9300 |
| `b * b * e` | -4718700 |
| `b * c * v` | -55338900 |
| `c * v` | 1262202243556070941/93000000000 |
| `b * f * h * v` | 704200 |
| `b * c * h * v` | 3395000 |
| `b * h * u` | -1045000 |
| `b * c * h` | -8953300 |
| `a * b * f * v` | 4319900 |
| `a * b * u` | 1045000 |
| `f * v` | 2330800290557661587/232500000000 |
| `u` | -234269587482821537/232500000000 |
| `b * f * h * w` | 200 |
| `b * c * h * w` | 10578600 |
| `b * e * h` | 376940344241589/310000000 |
| `b * h * w` | -5734050081/1000 |
| `b * h * k` | -877972595421589/310000000 |
| `b * e * f * q` | 527600 |
| `a * p` | 345153330691/5000000000 |
| `b * v * w` | -370473/5 |
| `a * v * r` | -15047946431/100000 |
| `a * r` | 2820901051143296959264387/124967975000000000 |
| `b * b * e * w` | 100 |
| `b * u * w * w` | -98500 |
| `b * e * u * w` | -700 |
| `b * w * w` | 5011068839/100000 |
| `b * v * r * w` | 98500 |
| `b * e * r * w` | 800 |
| `a * u * r * w` | -99000 |
| `a * e * u * r` | 400 |
| `a * v * r * r` | 99000 |
| `c * e * u * w` | -390600 |
| `c * e * e * u` | -100 |
| `c * e * w` | 2671836045061/155000 |
| `c * e * v * r` | 100 |
| `c * e * v` | -12014468077/1550 |
| `c * e * e * r` | -20165900 |
| `a * c * u * w` | -300 |
| `a * c * e * u` | 300 |
| `a * c * v * r` | 300 |
| `a * c * v` | -300 |
| `a * c * e * r` | -1100 |
| `a * u * w` | 147964046094799/625000000 |
| `a * e * u` | -1185900 |
| `a * v` | -19138586/5 |
| `c * e * f` | 23369400 |
| `c * e * r` | 84036427/5 |
| `c * e * j` | -488290399051/3100 |
| `a * c * r` | -75600 |
| `a * j` | 2239557307903/310000 |
| `c * u * w` | 162500 |
| `c * e * u` | 2408900 |
| `c * c * e` | -34894100 |
| `c * c * v` | -317300 |
| `c * r * k` | 322256884089/200000 |
| `c * w * j` | -8234200644277/18600000 |
| `a * c * r * k` | 500 |
| `a * c * w * j` | 1780100 |
| `c * r` | -1398787484089/200000 |
| `c * f * k` | -759634266444277/18600000 |
| `c * f * w` | -30757853555723/18600000 |
| `c * j` | 15923967484089/200000 |
| `c * f` | 28941700 |
| `a * e * f * f` | -6935200 |
| `c * f * h` | 6798600 |
| `c * h` | -7272936803290557/1250000000 |
| `c * h * k` | -343988562042833/930000000 |
| `c * e * h` | 5103377615382833/930000000 |
| `c * h * w` | 1590211342040557/1250000000 |
| `c * h * v` | -364700 |
| `c * c * h * v` | -100 |
| `c * e * h * u` | 3421600 |
| `c * c * e * h` | -7003400 |
| `c * f * h * w` | -8628000 |
| `c * e * f * h` | -2182900 |
| `c * h * r` | 5326053 |
| `c * e * h * r` | 100 |
| `c * h * r * k` | -2399000 |
| `c * h * w * j` | 800 |
| `c * e * h * j` | -800 |
| `c * u * v * w` | 400 |
| `c * e * u * v` | -400 |
| `c * v * w` | -619764566185007/1250000000 |
| `c * v * v * r` | -400 |
| `c * v * v` | 400 |
| `a * u * u * w` | 400 |
| `a * e * u * u` | -400 |
| `a * u * v * r` | -400 |
| `a * u * v` | 400 |
| `a * u` | 189916091435351/625000000 |
| `c * r * w * k` | -400 |
| `c * w * k` | 17075085040793/242187500 |
| `c * w * w * j` | 400 |
| `c * w * w` | -231563610789/3906250 |
| `c * e * w * j` | 493700 |
| `a * r * r * k` | -500 |
| `a * r * w * j` | 500 |
| `a * e * r * j` | -94100 |
| `c * e * f * w` | -200 |
| `c * f * k * k` | -841000 |
| `c * e * f * k` | -12148900 |
| `c * k * k` | 1079397097/4650 |
| `c * j * k` | -269433697/2325 |
| `c * e * j * k` | -839000 |
| `e * f * r * k` | 9473100 |
| `e * f * r` | -2920700 |
| `e * f * f * k` | 3829800 |
| `e * f * w * j` | -9845300 |
| `e * f * f * w` | -2991900 |
| `e * f * j` | 36864306271/4650 |
| `e * f * f` | 1541200 |
| `a * a * f` | -100 |
| `a * a * p` | 100 |
| `b * h * v` | -30962311/10 |
| `h * r * k` | 2099168717/1860 |
| `h * w * j` | -305 |
| `h * v` | -582000 |
| `e * h * u` | -45262017307/9300 |
| `f * h * k` | -533248419/775 |
| `e * f * h` | 1092410919/775 |
| `h * k` | 4297682693/9300 |
| `h * j` | 231023883877/200000 |
| `e * h * j` | -2770647 |
| `e * h * r` | -771227297/1860 |
| `h * w` | -140381389/200 |
| `e * f * q` | -15992373829/9300 |
| `b * e * q` | -411000 |
| `e * e * f * p` | -732400 |
| `b * e * e * p` | 2987900 |
| `f * q * w` | 4532/5 |
| `e * f * p * w` | -2883300 |
| `e * p * r` | 1000 |
| `e * f * p` | 1811900 |
| `q * k` | -1313734/2325 |
| `e * q` | 1580221234/2325 |
| `q * w` | 3561011/6250 |
| `a * e` | 121848913766/2325 |
| `e * p * k` | 151234/2325 |
| `e * e * p` | -1580221234/2325 |
| `e * p * w` | 233730210301/290625 |
| `a * p * k` | -4205593/9300 |
| `a * e * p` | 2345593/9300 |
| `v * w` | 1676670981/5000 |
| `e * v * r` | -949092837/775 |
| `e * u * w` | 77887766989/155000 |
| `e * e * u * r` | -214300 |
| `v * j` | 35429307706180657/46500000000 |
| `e * f * u` | 783100 |
| `e * u * r` | -39400 |
| `e * u * j` | 537506991/155 |
| `a * u * r` | 79500 |
| `e * f * q * r` | 2882300 |
| `u * k` | -22556302652060219/15500000000 |
| `u * w * k` | 317198171/1550 |
| `f * w * k` | 1503180497018999/23250000000 |
| `v * w * j` | 1499 |
| `f * v * w` | 28325139887/312500000 |
| `a * v * j` | 500 |
| `e * u * r * k` | -1912800 |
| `e * v * r * j` | 1915300 |
| `e * f * v * r` | -500 |
| `e * r * j` | 16073058203/9300 |
| `a * v * r * j` | -500 |
| `a * r * j` | 120722197/3100 |
| `r * w * k` | -203489067123/125000000 |
| `r * w` | 2092060943/40000 |
| `w * w * j` | 203489067123/125000000 |
| `f * w * w` | 857222873/40000 |
| `e * r * r * k` | 800 |
| `e * r * r` | -491160477/5000 |
| `e * r * w * j` | -800 |
| `e * f * r * w` | 2200 |
| `a * r * r` | -12700 |
| `a * f * r * w` | 4000 |
| `e * w` | -53389311461/4650 |
| `e * e * r` | 6234935843/930 |
| `e * r * k` | -146326153773277/18600000 |
| `k * k` | -288413131759093/2883000000 |
| `w * k` | -4629834764450249/23250000000 |
| `e * j * k` | 3365124737/9300 |
| `e * e * r * j` | -1974000 |
| `e * w * j` | 2379342615172543/250000000 |
| `e * e * j * j` | 2000 |
| `f * k * k` | 3383724737/9300 |
| `j * k` | 948036053/9300 |
| `e * f * j * k` | 2000 |
| `e * j * j` | -435036079/930 |
| `f * h * v` | -58558851/500 |
| `e * f * h * u` | -285800 |
| `e * f * f * q` | -2385600 |
| `f * q * u * w` | -1000 |
| `e * f * q * u` | 1000 |
| `f * q * v * r` | 1000 |
| `f * q * v` | -1000 |
| `p * u * w` | 1000 |
| `e * p * u` | -1000 |
| `p * v * r` | -1000 |
| `p * v` | 1000 |
| `f * q * r` | -1201400 |
| `f * q * k` | -1766171/9300 |
| `p * k` | 5771899/46500 |
| `f * v * w * j` | -500 |
| `b * f * v * w` | -100 |
| `u * r * k` | 797400 |
| `u * w * j` | 11888891/9300 |
| `a * u * w * j` | 500 |
| `b * e * f * v` | -52332900 |
| `f * v * k` | 596304539/2325 |
| `e * f * v * j` | 500 |
| `a * e * u * j` | -500 |
| `e * f * u * w` | -1043700 |
| `f * f * w` | -1135400 |
| `e * f * w` | 1062094568618948777/116250000000 |
| `f * r` | 2049300 |
| `c * f * v * w` | 500 |
| `f * p * w` | 1201400 |
| `f * u * w * k` | 500 |
| `e * f * u * k` | -471000 |
| `v * r * j` | -7427708891/9300 |
| `e * f * k` | -14597830734241/6200000 |
| `h * u` | 341360755924012801/116250000000 |
| `f * h * u` | 163400 |
| `h * u * r` | -379200 |
| `h * u * j` | -7287564481/4650 |
| `h * u * w` | 20319467822443/1250000000 |
| `b * e * h * u` | -100 |
| `h * v * r` | -166000 |
| `c * h * v * r` | 700 |
| `b * h * v * r` | 1399300 |
| `a * c * r * w` | 94500 |
| `f * h * r * k` | -200300 |
| `e * f * h * r` | 300 |
| `h * r * j` | 200300 |
| `e * h * r * j` | -480300 |
| `e * h * r * r` | 200 |
| `h * r * w` | 297/5 |
| `p * u * w * w` | -1000 |
| `e * p * u * w` | 1000 |
| `p * w * w` | 6091011/6250 |
| `p * v * r * w` | 1000 |
| `p * v * w` | -1000 |
| `e * p * r * w` | -1000 |
| `q * u * r * w` | 1000 |
| `e * q * u * r` | -1000 |
| `q * r * w` | -6091011/6250 |
| `q * v * r * r` | -1000 |
| `q * v * r` | 1000 |
| `e * q * r * r` | 1000 |
| `a * r * w` | 26000 |
| `p * w * k` | 924683/4650 |
| `q * r * k` | 1407757/4650 |
| `e * q * r` | -3742332757/4650 |
| `q * j` | 8223/125 |
| `f * u * w` | -6300 |
| `a * f * u` | -1706400 |
| `f * v * r` | -37000 |
| `b * u * w * k` | -1913900 |
| `c * v * w * j` | -100 |
| `b * v * w * j` | -500 |
| `c * e * k` | 325622475159/3100 |
| `c * e * e` | -141028985599/1860 |
| `b * e * e` | 61867199599/1860 |
| `c * c * e * v` | 1139500 |
| `c * c * e * e` | 129430300 |
| `b * e * v` | -9322800169/775 |
| `b * c * e * v` | 52802700 |
| `b * e * e * u` | 5939100 |
| `b * c * e * e` | 47597900 |
| `b * b * v` | -147300 |
| `b * b * w` | 983800 |
| `b * h * r * k` | 2118100 |
| `b * e * h * r` | 500 |
| `b * h * w * j` | 100 |
| `b * e * h * j` | -1903800 |
| `c * c * v * w` | -195600 |
| `b * e * v * r` | -200 |
| `c * v * k` | 247673858/775 |
| `c * c * v * k` | -500 |
| `c * e * v * j` | 1333500 |
| `b * v * k` | 637685169/775 |
| `b * c * v * k` | -2965400 |
| `b * e * v * j` | -3231900 |
| `c * f * v` | -212290478989/9300 |
| `b * f * v` | 208022708989/9300 |
| `c * v * j` | -861208529/1550 |
| `b * v * j` | 12526791011/9300 |
| `b * e * f * w` | 200 |
| `c * u * w * w` | 100 |
| `c * v * r * w` | -100 |
| `c * f * w * w` | -31400 |
| `c * r * w` | -541927/5 |
| `b * f * w * w` | 99400 |
| `b * r * w` | -68233477/5000 |
| `b * w * k` | 5195845233/3100 |
| `b * r * w * k` | 100 |
| `b * w * w * j` | -100 |
| `c * f * w * k` | -100 |
| `b * f * w * k` | -568500 |
| `c * e * r * k` | -4000 |
| `b * e * f * k` | -100 |
| `c * e * u * k` | -6513000 |
| `c * v * r * k` | 100 |
| `b * e * u * k` | -1753100 |
| `b * v * r * k` | 1914400 |
| `c * r * k * k` | 2000 |
| `c * w * j * k` | -2000 |
| `b * k * k` | -1088697097/4650 |
| `b * e * j * k` | 841000 |
| `b * f * k * k` | 841000 |
| `b * j * k` | -21020849/60 |
| `e * e * f * r` | -5284900 |
| `e * e * f * j` | -1200 |
| `e * e * f * u` | 100 |
| `e * f * v` | 13051796536/2325 |
| `b * e * f` | 148193690371/9300 |
| `b * c * h * k` | -100 |
| `b * f * h * k` | -200 |
| `b * e * f * h` | -100 |
| `b * h * j` | 793400 |
| `b * e * e * f` | 2462800 |
| `e * h * u * r` | 909400 |
| `v * r * k` | -319521621/1550 |
| `v * k` | -69557954/775 |
| `e * v * j` | -1826400 |
| `e * u * k` | 12322688818/2325 |
| `e * u * w * j` | -2500 |
| `e * e * u * j` | -7197000 |
| `b * b * e * q` | 1230200 |
| `b * b * e * e` | 462900 |
| `f * h * r` | 127800 |
| `f * f * h * k` | 200 |
| `f * f * h * w` | -200 |
| `f * h * j` | -200 |
| `f * h * w` | 943991929/200 |
| `b * b` | -6881300 |
| `c * f * v * k` | -500 |
| `c * u * k` | 1226300 |
| `u * r * w * k` | -1400 |
| `u * w * w * j` | 1400 |
| `v * r * r * k` | 1400 |
| `v * r * w * j` | -1400 |
| `b * f * v * k` | -2385000 |
| `u * u * w * w` | -1000 |
| `e * u * u * w` | 2000 |
| `u * w * w` | 11799 |
| `u * v * r * w` | 2000 |
| `u * v * w` | -2000 |
| `e * u * r * w` | -1000 |
| `e * u * v * r` | -2000 |
| `v * r * w` | -11799 |
| `v * v * r * r` | -1000 |
| `v * v * r` | 2000 |
| `e * v * r * r` | 1000 |
| `b * b * e * v` | 353500 |
| `f * u * k` | 196000 |
| `f * v * j` | -1778231/9300 |
| `f * r * w * k` | -2000 |
| `r * r * k` | 1900 |
| `f * w * w * j` | 2000 |
| `r * w * j` | -1900 |
| `h * u * r * k` | 300 |
| `b * h * u * k` | 1549000 |
| `b * u * k` | 1227600 |
| `h * u * w * j` | -300 |
| `r * r * k * k` | -2000 |
| `f * r * k * k` | 2000 |
| `r * w * j * k` | 4000 |
| `r * j * k` | -14394407/9300 |
| `f * w * j * k` | -2000 |
| `w * w * j * j` | -2000 |
| `w * j * j` | 14394407/9300 |
| `f * r * k` | -35471436383/9300 |
| `f * w * j` | 9541805374/2325 |
| `c * e * e * f` | -16936400 |
| `e * e * f` | 121134972721/9300 |
| `c * h * u * w` | -700 |
| `c * e * e * j` | -77625800 |
| `c * c * e * k` | -82458000 |
| `c * c * e * w` | -15907600 |
| `e * u * v` | 2000 |
| `v * v` | -1000 |
| `e * e * u * u` | -1000 |
| `e * v` | 27988801123/9300 |
| `e * e * u` | -20147041123/9300 |
| `c * f * h * k` | 1549000 |
| `e * f * h * j` | 200 |
| `e * k` | -38411752804135907/1441500000 |
| `e * e * j` | 49275100 |
| `c * c * w * k` | -62700 |
| `c * c * w * w` | 62700 |
| `c * c * k` | -4613100 |
| `c * c * w` | 6596300 |
| `c * h * u` | -2918300 |
| `c * c * h` | 2918300 |
| `c * h * j` | -553 |
| `c * h * u * k` | 2212700 |
| `f * f * v` | -43300 |
| `f * u` | 28200 |
| `u * r` | 43300 |
| `u * j` | -1821021769/9300 |
| `f * r * w` | -500 |
| `r * r` | 41800 |
| `r * j` | -1164949261/3100 |
| `f * f * w * w` | -31800 |
| `f * h * r * w` | 200 |
| `h * r * r` | -200 |
| `e * q * j` | 500 |
| `f * f * k` | -828100 |
| `f * j` | -30733584427/9300 |
| `e * e * f * f` | -31800 |
| `h * u * k` | -12701162693/9300 |
| `e * h * u * j` | 3762000 |
| `e * h` | 12429297307/9300 |
| `w * w` | 2041938997/20000 |
| `e * r * w` | 12061003/20000 |
| `u * r * w` | 13300 |
| `v * r * r` | -13300 |
| `f * h * u * w` | -55000 |
| `f * h * v * r` | 55000 |
| `q * w * j` | -2508/5 |
| `f * f * h` | 6439/200 |
| `b * f * h` | -376021/4 |
| `f * p` | -627800 |
| `f * f * q` | 627800 |
| `c * c` | 18380100 |
| `e * e` | 7957362212306969/961000000 |
| `f * f` | 904400 |
| `j * j` | 336053237151331/1729800000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `a * b * f * k` | 100 | 37974206062752971583/7812500000000000000000 | 37974206062752971583/78125000000000000000 |
| `a * b * f` | 1511911/5000 | 193411426475397/7812500000000000 | 292420863213843953667/39062500000000000000 |
| `a * b * k` | -12287551211/310000000 | 156474001750209/7812500000000000 | 0 |
| `a * b` | -3307894387301397435326967651150523/16251110398545000000000000 | 796958331/7812500000 | 0 |
| `a * f * k` | 58639253/186000 | 10054065677191679/500000000000000000 | 589562900923459194375787/93000000000000000000000 |
| `a * f` | 17242748542621702010832546257/338564799969687500000000000 | 51207685061/500000000000 | 882961236956588851834503439137170366677/169282399984843750000000000000000000000 |
| `a * k` | 18088659164633563/77500000000000 | 41428118017/500000000000 | 749379106641727880523204571/38750000000000000000000000 |
| `a` | -57638603240445303812585971312010461/1015694399909062500000000000000000 | 211003/500000 | 0 |
| `b * f * k` | -4683989/7500 | 179969981766861/15625000000000000 | 0 |
| `b * f` | -35110732657573/232500000000 | 916628799/15625000000 | 0 |
| `b * k` | 189932923602437993/186000000000000 | 741572403/15625000000 | 46949671521558453042502393/968750000000000000000000 |
| `b` | 651876607373468690305776779/14996157000000000000000000 | 3777/15625 | 820712648683197081094972964761/78104984375000000000000000000 |
| `f * k` | -913580082689708701/1937500000000000 | 47648922893/1000000000000 | 0 |
| `f` | -9357026384287653807886940144244721/1015694399909062500000000000000000 | 242687/1000000 | 0 |
| `k` | 59879013775603511923830553/360375000000000000000000 | 196339/1000000 | 11756585685688217927612966945467/360375000000000000000000000000 |
| `1` | -1859061996502840905134182692551845332256597920107/18462453082363125000000000000000000000000 | 1 | -1859061996502840905134182692551845332256597920107/18462453082363125000000000000000000000000 |
| `a * b * e * f` | -100 | 18987006325663248093/3906250000000000000000 | 0 |
| `a * b * e` | 99158872633/930000000 | 78236602395939/3906250000000000 | 2585951097405859312479129/1210937500000000000000000 |
| `a * e * f` | 107559559/930000 | 5027007234753309/250000000000000000 | 180234227086625129943577/77500000000000000000000 |
| `a * e` | -75464441787658439/232500000000000 | 20713953507/250000000000 | 0 |
| `b * e * f` | 2082254475833/186000 | 89984532569031/7812500000000000 | 62456898565868387264575941/484375000000000000000 |
| `b * e` | 8305432016635927/186000000000000 | 370784313/7812500000 | 1026507968152185587937717/484375000000000000000000 |
| `e * f` | 20306565425166816937/58125000000000000 | 23824340103/500000000000 | 161263507004331680739009574837/9687500000000000000000000000 |
| `e` | -9476792224951471755700357/360375000000000000000000 | 98169/500000 | 0 |
| `a * b * j` | -96167399/465000 | 80383608139653/3906250000000000 | 0 |
| `a * j` | -38202001053043/232500000000 | 21282395589/250000000000 | 0 |
| `b * j` | 407882759411557/465000000000 | 380959551/7812500000 | 51795610962022592976969/1210937500000000000000 |
| `j` | -146727749437272931285345781/540562500000000000000000 | 100863/500000 | 0 |
| `a * b * e * j` | 100 | 7891178427461595357/1953125000000000000000 | 7891178427461595357/19531250000000000000 |
| `a * e * j` | -15966522677/1000 | 2089271492576541/125000000000000000 | 0 |
| `b * e * j` | -34949423/31000 | 37398418162119/3906250000000000 | 0 |
| `e * j` | -3640770829059347831/11625000000000000 | 9901619847/250000000000 | 0 |
| `a * c * f * k` | 5557900 | 2656696368606806450639/500000000000000000000000 | 147656527470797695720064981/5000000000000000000000 |
| `a * c * f` | 46941/2500 | 13531169908203701/500000000000000000 | 635166646660989928641/1250000000000000000000 |
| `a * c * k` | -463261811767/930000000 | 10947007332930097/500000000000000000 | 0 |
| `a * c` | 13438718294279657/155000000000000 | 55755643723/500000000000 | 749284389309618824618643011/77500000000000000000000000 |
| `c * f * k` | -841782643031317/18600000 | 12590799034169213/1000000000000000000 | 0 |
| `c * f` | 221034349643879/4650000000000 | 64127855567/1000000000000 | 14174458849308450397624393/4650000000000000000000000 |
| `c * k` | -18362571987688512139/23250000000000000 | 51880813699/1000000000000 | 0 |
| `c` | 33815553216040215534831/968750000000000000000 | 264241/1000000 | 8935455597359682593139278271/968750000000000000000000000 |
| `a * c * e * f` | 3076800 | 1328341418718449123469/250000000000000000000000 | 2554400548195577664430887/156250000000000000000 |
| `a * c * e` | -38907498233/930000000 | 5473475788643187/250000000000000000 | 0 |
| `c * e * f` | -1988627/10000 | 6295367453156823/500000000000000000 | 0 |
| `c * e` | 2479120844494131/62000000000000 | 25940274729/500000000000 | 64309075792568245168115499/31000000000000000000000000 |
| `a * c * j` | -252337567/465000 | 5623681492832949/250000000000000000 | 0 |
| `c * j` | -2532017755349347/9300000000000 | 26652139983/500000000000 | 0 |
| `a * c * e * j` | 900 | 552071188469917770381/125000000000000000000000 | 4968640696229259933429/1250000000000000000000 |
| `c * e * j` | -34440790819027/155000 | 2616413929991127/250000000000000000 | 0 |
| `a * b * b` | -236959/5000 | 3010111616187/122070312500000 | 0 |
| `b * b` | -9970658324877317/1250000000 | 14265729/244140625 | 0 |
| `a * b * c` | -4649/625 | 210589066341771/7812500000000000 | 0 |
| `b * c` | 86534126773/5000000000 | 998038257/15625000000 | 86364369055541954661/78125000000000000000 |
| `a * b * b * e` | 29222100 | 295499647249461603/61035156250000000000 | 86351202418884919090263/610351562500000000 |
| `b * b * e` | 22148/625 | 1400452350201/122070312500000 | 7754304663062937/19073486328125000 |
| `a * b * c * e` | 100 | 20673318053705317299/3906250000000000000000 | 20673318053705317299/39062500000000000000 |
| `b * c * e` | -129479/5000 | 97976417651433/7812500000000000 | 0 |
| `b * e * r * k` | 62861000 | 17667473140070977509/7812500000000000000000 | 1110595029058001717193249/7812500000000000000 |
| `b * e * r` | -78907033437/10000 | 89984532569031/7812500000000000 | 0 |
| `b * e * k` | 72553199/310000 | 72799421230107/7812500000000000 | 5281830895592777962293/2421875000000000000000 |
| `b * r * k` | -8920229/10000 | 179969981766861/15625000000000000 | 0 |
| `b * r` | -3267983315999/5000000000 | 916628799/15625000000 | 0 |
| `e * r * k` | 22457024483/18600000 | 4677647111482917/500000000000000000 | 35015345235135365835085637/3100000000000000000000000 |
| `e * r` | -2717165469577056097429/9300000000000 | 23824340103/500000000000 | 0 |
| `e * k` | -211150404012942091/576600000000000 | 19274403291/500000000000 | 0 |
| `r * k` | 356492399562652757/11625000000000000 | 47648922893/1000000000000 | 16986478858701388140826866001/11625000000000000000000000000 |
| `r` | 9617399991804635874732611047/312419937500000000000000000 | 242687/1000000 | 2334017951811091666531233177163289/312419937500000000000000000000000 |
| `b * c * e * k` | -61154800 | 19236591865264703787/7812500000000000000000 | 0 |
| `b * c * k` | 486031/10000 | 195953833341123/15625000000000000 | 95239637572619352813/156250000000000000000 |
| `c * e * k` | 8000651/77500 | 5093087600017131/500000000000000000 | 40748016400164659152281/38750000000000000000000 |
| `b * e * w * j` | -65586400 | 3671365312557060111/1953125000000000000000 | 0 |
| `b * e * w` | -813391979/3100000 | 36399525222897/3906250000000000 | 0 |
| `b * w * j` | 36664651/30000 | 37398418162119/3906250000000000 | 457066649955384851823/39062500000000000000 |
| `b * w` | -4596621996421241/4650000000000 | 370784313/7812500000 | 0 |
| `e * w * j` | -13447052457/250000000 | 972032118760143/125000000000000000 | 0 |
| `e * w` | 692925873567340763/23250000000000000 | 9637152561/250000000000 | 2225944119010886746701714681/1937500000000000000000000000 |
| `w * j` | -11066464686754911989/11625000000000000 | 9901619847/250000000000 | 0 |
| `w` | 1089136922629655240792235379605231867/6248398750000000000000000000 | 98169/500000 | 106919482557630625333332954980466007151523/3124199375000000000000000000000000 |
| `b * c * e * w` | -100 | 9618246944423526177/3906250000000000000000 | 0 |
| `b * c * w` | -31607263177/5000 | 97976417651433/7812500000000000 | 0 |
| `c * e * w` | -240198193/310000 | 2546530829871201/250000000000000000 | 0 |
| `c * w` | 18513183157388254151/23250000000000000 | 25940274729/500000000000 | 160079019070315652931538216693/3875000000000000000000000000 |
| `a * b * r * k` | 200 | 37974206062752971583/7812500000000000000000 | 37974206062752971583/39062500000000000000 |
| `a * b * r` | 4539/25 | 193411426475397/7812500000000000 | 877894464771826983/195312500000000000 |
| `a * r * k` | 224827481/465000 | 10054065677191679/500000000000000000 | 2260430260011564343730599/232500000000000000000000 |
| `a * r` | 2681939109914234537/14996157000000000 | 51207685061/500000000000 | 137335893293266784891585151757/7498078500000000000000000000 |
| `a * b * c * k` | -200 | 41346846696476976369/7812500000000000000000 | 0 |
| `a * b * w * j` | -1875300 | 7891178427461595357/1953125000000000000000 | 0 |
| `a * b * w` | 1325567/10000 | 78236602395939/3906250000000000 | 103707858328177672413/39062500000000000000 |
| `a * w * j` | -3050751/5000 | 2089271492576541/125000000000000000 | 0 |
| `a * w` | -127057593925888909/625000000000000 | 20713953507/250000000000 | 0 |
| `a * b * c * w` | -19162800 | 20673318053705317299/3906250000000000000000 | 0 |
| `a * c * w` | 5567269/10000 | 5473475788643187/250000000000000000 | 30472312080363767046303/2500000000000000000000 |
| `b * e * e * r` | -85723700 | 8833691577769204239/3906250000000000000000 | 0 |
| `b * e * e` | 77491859/930000 | 36399525222897/3906250000000000 | 940222292079892631841/1210937500000000000000 |
| `e * e * r` | -15184141357231/930000 | 2338811643571407/250000000000000000 | 0 |
| `e * e` | 887622225285367/28830000000000 | 9637152561/250000000000 | 2851383600536464513291629/2402500000000000000000000 |
| `b * e * e * j` | -600 | 3671365312557060111/1953125000000000000000 | 0 |
| `e * e * j` | 4103733/5000 | 972032118760143/125000000000000000 | 3988960282815917913819/625000000000000000000 |
| `a * b * e * r` | -400 | 18987006325663248093/3906250000000000000000 | 0 |
| `a * e * r` | -50438566170709/930000 | 5027007234753309/250000000000000000 | 0 |
| `b * p * w` | 100 | 9684515471247/781250000000000 | 9684515471247/7812500000000 |
| `b * p` | -233576636947/781250 | 98651463/1562500000 | 0 |
| `p * w` | -25441517403083/581250000000 | 2564076111/50000000000 | 0 |
| `p` | -4371327493276875947/145312500000000000 | 26119/100000 | 0 |
| `b * q * r` | -100 | 7526439068589/312500000000000 | 0 |
| `b * q` | -138284554780021549/5000000000 | 31012947/312500000 | 0 |
| `q * r` | 363833808756643/1162500000000 | 1992702957/20000000000 | 241670902188644999831117/7750000000000000000000 |
| `q` | -3090195433069404067/387500000000000000 | 8211/20000 | 0 |
| `b * b * q` | 1217/50 | 117135900819/4882812500000 | 142554391296723/244140625000000 |
| `a * b * b * w` | -7393900 | 295499647249461603/61035156250000000000 | 0 |
| `b * b * w` | 85609/1250 | 1400452350201/122070312500000 | 119891325248357409/152587890625000000 |
| `b * h` | -1203165183142343/155000000000000 | 1237885311/15625000000 | 0 |
| `h` | -22697838948916866244109253731/246229125000000000000000000 | 327743/1000000 | 0 |
| `a * e * f * j` | -118500 | 507039030718923005667/125000000000000000000000 | 0 |
| `a * f * j` | 14912737/93000 | 5164960738307643/250000000000000000 | 25674567035235901716297/7750000000000000000000 |
| `e * f * j` | 69260591/232500 | 2402994415808889/250000000000000000 | 55477604469541131731133/19375000000000000000000 |
| `f * j` | 83914321292/181640625 | 24478138881/500000000000 | 171172200890869279521/7568359375000000000 |
| `f * h` | -17405709865237/155000000000 | 79538965441/1000000000000 | 0 |
| `b * f * q` | 1273/25 | 7526439068589/312500000000000 | 9581156934313797/7812500000000000 |
| `f * q` | 2694087988241/116250000000 | 1992702957/20000000000 | 1789505700195340642879/775000000000000000000 |
| `a * b * p` | -5833/100 | 20815754647389/781250000000000 | 0 |
| `a * p` | -43868830853237/465000000000 | 5511187357/50000000000 | 0 |
| `a * f * p` | 5833/100 | 1337493526108259/50000000000000000 | 7801599737789474747/5000000000000000000 |
| `f * p` | -189025883/50000000 | 6338741753/100000000000 | 0 |
| `c * q` | -73969/10000 | 2169682851/20000000000 | 0 |
| `b * f * w` | 1449074/1875 | 89984532569031/7812500000000000 | 21732374424656004549/2441406250000000000 |
| `f * w` | 317463592939344200265083/2343149531250000000000 | 23824340103/500000000000 | 2521120202835761892298626715841183/390524921875000000000000000000000 |
| `a * f * f * w` | 9755000 | 1219989304780576301283/250000000000000000000000 | 2380199133626904363803133/50000000000000000000 |
| `a * f * f` | 49121/1000 | 12427439464398907/500000000000000000 | 610448253930738710747/500000000000000000000 |
| `a * f * w` | 18798200549/625000000 | 5027007234753309/250000000000000000 | 94498690160166625123366641/156250000000000000000000000 |
| `f * f * w` | -5677249123/5000 | 5781857626576761/500000000000000000 | 0 |
| `f * f` | -258123476977/5000000000 | 58896979969/1000000000000 | 0 |
| `a * c * f * w` | 1508900 | 1328341418718449123469/250000000000000000000000 | 20043343667042678824023741/2500000000000000000000 |
| `c * f * w` | -135848327636243/18600000 | 6295367453156823/500000000000000000 | 0 |
| `a * f * r` | -1683147/5000 | 12427439464398907/500000000000000000 | 0 |
| `f * r` | -95202314612341/465000000000 | 58896979969/1000000000000 | 0 |
| `b * h * r` | -84987/1000 | 300418672470657/15625000000000000 | 0 |
| `h * r` | -101769089768359/465000000000 | 79538965441/1000000000000 | 0 |
| `b * e * p` | -177087/2500 | 9684515471247/781250000000000 | 0 |
| `e * p` | -1746911129694528611/96875000000 | 2564076111/50000000000 | 0 |
| `a * b * e * p` | 100 | 2043461817979530741/390625000000000000000 | 2043461817979530741/3906250000000000000 |
| `a * e * p` | 54647149/232500 | 541027751649333/25000000000000000 | 9855208052505365400539/1937500000000000000000 |
| `a * e * f * p` | -100 | 131300401964521677771/25000000000000000000000 | 0 |
| `e * f * p` | -5578470549/5000 | 622267939150257/50000000000000000 | 0 |
| `a * f * q` | 100 | 420466302035871/10000000000000000 | 420466302035871/100000000000000 |
| `a * q` | 279/10 | 1732545633/10000000000 | 483380231607/100000000000 |
| `a * e * f * r` | -300 | 1219989304780576301283/250000000000000000000000 | 0 |
| `e * f * r` | -175203/5000 | 5781857626576761/500000000000000000 | 0 |
| `b * u * w` | 1404481/5000 | 76711937300883/7812500000000000 | 107740458412281456723/39062500000000000000 |
| `b * u` | 14545555297/312500000 | 781427307/15625000000 | 11366294104554295179/4882812500000000000 |
| `u * w` | 54519031493949371071/116250000000000000 | 20310282579/500000000000 | 369098978525170751723779290703/19375000000000000000000000000 |
| `u` | 1300165241110844370706001/58125000000000000000000 | 206891/1000000 | 268992486898663702699735252891/58125000000000000000000000000 |
| `b * e * u` | -2149229/10000 | 76711937300883/7812500000000000 | 0 |
| `e * u` | 10772339338297/29062500000 | 20310282579/500000000000 | 72929751999229982209321/4843750000000000000000 |
| `b * v * r` | 757979/10000 | 3966252813273/244140625000000 | 3006336341151855267/2441406250000000000 |
| `b * v` | -41127053942084335043/930000000000 | 16343079/244140625 | 0 |
| `v * r` | -752502791810579/2325000000000 | 1050106649/15625000000 | 0 |
| `v` | -394394474277921368713481/14531250000000000000000 | 4327/15625 | 0 |
| `a * b * u * w` | -1300600 | 16186448906298215649/3906250000000000000000 | 0 |
| `a * b * u` | -73617/625 | 164883506058921/7812500000000000 | 0 |
| `a * u * w` | 451142532299/625000000 | 4285530555016737/250000000000000000 | 1933385106834989668508088363/156250000000000000000000000 |
| `a * u` | 89586820915364469/312500000000000 | 43654621673/500000000000 | 3910878773947039447101536637/156250000000000000000000000 |
| `a * b * e * u` | 300 | 16186448906298215649/3906250000000000000000 | 48559346718894646947/39062500000000000000 |
| `a * e * u` | -9409977/10000 | 4285530555016737/250000000000000000 | 0 |
| `a * b * v * r` | 100 | 836891242359042819/122070312500000000000 | 836891242359042819/1220703125000000000 |
| `a * b * v` | -1410687/10000 | 3448438698237/122070312500000 | 0 |
| `a * v * r` | -85532401/100000 | 221575653258947/7812500000000000 | 0 |
| `a * v` | -401411701047802613/100000000000 | 913009981/7812500000 | 0 |
| `a * f * u * w` | -80000 | 1040042553805346852319/250000000000000000000000 | 0 |
| `a * f * u` | -218 | 10594409169955351/500000000000000000 | 0 |
| `f * u * w` | -97762819/200 | 4929041548249773/500000000000000000 | 0 |
| `f * u` | -3961492089/100000000 | 50209756117/1000000000000 | 0 |
| `a * e * f * u` | 4248800 | 1040042553805346852319/250000000000000000000000 | 5523666003260197132666209/312500000000000000000 |
| `e * f * u` | 667453/5000 | 4929041548249773/500000000000000000 | 3289903568503955738169/2500000000000000000000 |
| `a * f * v * r` | 500 | 53773530562454070589/7812500000000000000000 | 53773530562454070589/15625000000000000000 |
| `a * f * v` | -10266439/100000 | 221575653258947/7812500000000000 | 0 |
| `f * v * r` | 77829/500 | 254847232325863/15625000000000000 | 19834505244689591427/7812500000000000000 |
| `f * v` | -789289230135571979/14531250000000000 | 1050106649/15625000000 | 0 |
| `a * f * r * k` | 900 | 2439991037000617001473/500000000000000000000000 | 21959919333005553013257/5000000000000000000000 |
| `f * r * k` | -124743419/930000 | 11563774150133491/1000000000000000000 | 0 |
| `a * f * f * k` | -5771000 | 2439991037000617001473/500000000000000000000000 | 0 |
| `f * f * k` | 345097/5000 | 11563774150133491/1000000000000000000 | 3990623767888617343627/5000000000000000000000 |
| `a * f * w * j` | -500 | 507039030718923005667/125000000000000000000000 | 0 |
| `f * w * j` | 148709297/46500 | 2402994415808889/250000000000000000 | 119115870089955189847011/3875000000000000000000 |
| `h * p` | 265031/10000 | 8560319417/100000000000 | 2268750015406927/1000000000000000 |
| `b * c * v` | -165271903373/5000 | 4318511538039/244140625000000 | 0 |
| `c * v` | 171102965134990519/58125000000000000 | 1143370807/15625000000 | 195634135326486973646378833/908203125000000000000000000 |
| `b * f * h * v` | 704200 | 1299911595780532839/244140625000000000000 | 4576988728743256126119/1220703125000000000 |
| `b * f * h` | -40738/125 | 300418672470657/15625000000000000 | 0 |
| `b * f * v` | -4154653/46500 | 3966252813273/244140625000000 | 0 |
| `b * h * v` | 523609/10000 | 5356329740697/244140625000000 | 2804622459196615473/2441406250000000000 |
| `f * h * v` | 377277/5000 | 344165103463207/15625000000000000 | 129845577739288347339/78125000000000000000 |
| `h * v` | -2315435302438651/2500000000 | 1418143961/15625000000 | 0 |
| `b * c * h * v` | 3395000 | 1415361927011515977/244140625000000000000 | 961030748440819348383/48828125000000000 |
| `b * c * h` | -185471/5000 | 327100052463951/15625000000000000 | 0 |
| `c * h * v` | -898417/10000 | 374731778398601/15625000000000000 | 0 |
| `c * h` | 376457840816846641/3632812500000000 | 86603138063/1000000000000 | 32602430363160246346820796383/3632812500000000000000000000 |
| `b * h * u` | 7089/250 | 256107329878101/15625000000000000 | 1815544861505857989/3906250000000000000 |
| `h * u` | 1869169748772911369/58125000000000000 | 67807077013/1000000000000 | 126742937105414663446006260797/58125000000000000000000000000 |
| `a * b * f * v` | 4319900 | 836891242359042819/122070312500000000000 | 36152864778668290737981/1220703125000000000 |
| `b * f * h * w` | 200 | 29491800657771927033/7812500000000000000000 | 29491800657771927033/39062500000000000000 |
| `b * h * w` | -2868829/10000 | 121521963095559/7812500000000000 | 0 |
| `f * h * w` | -2109/200 | 7808260698377529/500000000000000000 | 0 |
| `h * w` | 39080645321625303/250000000000000 | 32174202567/500000000000 | 1257388599027053364394752801/125000000000000000000000000 |
| `b * c * h * w` | 10578600 | 32111085050333605719/7812500000000000000000 | 1698451621567295407295067/39062500000000000000 |
| `c * h * w` | -374317334443/1250000000 | 8501743460506647/500000000000000000 | 0 |
| `b * e * h` | -3050608411/310000000 | 121521963095559/7812500000000000 | 0 |
| `e * h` | 4318797486487663/77500000000000 | 32174202567/500000000000 | 138953865176104514708430921/38750000000000000000000000 |
| `b * h * k` | 96361407411/310000000 | 243045164076429/15625000000000000 | 23420174074842116411015319/4843750000000000000000000 |
| `h * k` | -14973109766656663/77500000000000 | 64348732877/1000000000000 | 0 |
| `b * e * f * q` | 527600 | 738862996924313541/156250000000000000000 | 974560292943169560579/390625000000000000 |
| `b * e * q` | 82768/625 | 3044509994043/156250000000000 | 15749250199184439/6103515625000000 |
| `e * f * q` | -753841086127/930000 | 195621656585733/10000000000000000 | 0 |
| `e * q` | 3193256554491/38750000000 | 806065659/10000000000 | 2573974448951857324569/387500000000000000000 |
| `b * v * w` | 38353/250 | 1604383722351/122070312500000 | 61532928903327903/30517578125000000 |
| `v * w` | 61260169329589493/312500000000000 | 424777263/7812500000 | 26021927058739569750097659/2441406250000000000000000 |
| `b * b * e * w` | 100 | 137481006766881969/61035156250000000000 | 137481006766881969/610351562500000000 |
| `b * u * w * w` | -98500 | 7530734172890383227/3906250000000000000000 | 0 |
| `b * w * w` | -34183181/100000 | 36399525222897/3906250000000000 | 0 |
| `u * w * w` | 1183793/2500 | 1993840130497851/250000000000000000 | 2360293989602442528843/625000000000000000000 |
| `w * w` | 12165859260439568959/125000000000000 | 9637152561/250000000000 | 117244241728510757978962953999/31250000000000000000000000 |
| `b * e * u * w` | -700 | 7530734172890383227/3906250000000000000000 | 0 |
| `e * u * w` | 28963003/62000 | 1993840130497851/250000000000000000 | 57747597681129650006553/15500000000000000000000 |
| `b * v * r * w` | 98500 | 389363072426197137/122070312500000000000 | 76704525267960835989/244140625000000000 |
| `b * r * w` | -70123/500 | 89984532569031/7812500000000000 | 0 |
| `v * r * w` | -1183793/2500 | 103087919625681/7812500000000000 | 0 |
| `r * w` | 35697789352308549/62500000000000 | 23824340103/500000000000 | 850476274454650959570440547/31250000000000000000000000 |
| `b * e * r * w` | 800 | 8833691577769204239/3906250000000000000000 | 8833691577769204239/4882812500000000000 |
| `e * r * w` | -2461117/20000 | 2338811643571407/250000000000000000 | 0 |
| `a * u * r * w` | -99000 | 1040042553805346852319/250000000000000000000000 | 0 |
| `a * u * r` | 127303/2500 | 10594409169955351/500000000000000000 | 1348700070562826048353/1250000000000000000000 |
| `a * r * w` | 274011/2000 | 5027007234753309/250000000000000000 | 1377455279401988952399/500000000000000000000 |
| `u * r * w` | -3219703/5000 | 4929041548249773/500000000000000000 | 0 |
| `u * r` | -1531873801567/5000000000 | 50209756117/1000000000000 | 0 |
| `a * e * u * r` | 400 | 1040042553805346852319/250000000000000000000000 | 1040042553805346852319/625000000000000000000 |
| `e * u * r` | -2246258559/2500 | 4929041548249773/500000000000000000 | 0 |
| `a * v * r * r` | 99000 | 53773530562454070589/7812500000000000000000 | 5323579525682952988311/7812500000000000000 |
| `a * r * r` | 134811/1000 | 12427439464398907/500000000000000000 | 1675355541635081051577/500000000000000000000 |
| `v * r * r` | 3219703/5000 | 254847232325863/15625000000000000 | 820532398461278078689/78125000000000000000 |
| `r * r` | -139805488651/1250000000 | 58896979969/1000000000000 | 0 |
| `c * e * u * w` | -390600 | 526854309922882646091/250000000000000000000000 | 0 |
| `c * e * u` | 2339417/2500 | 5366809378957539/500000000000000000 | 12555205096892709014763/1250000000000000000000 |
| `c * u * w` | -5595623/10000 | 5366809378957539/500000000000000000 | 0 |
| `c * u` | -269711113373/1250000000 | 54669084731/1000000000000 | 0 |
| `c * e * e * u` | -100 | 526854309922882646091/250000000000000000000000 | 0 |
| `c * e * e` | -9209723/93000 | 2546530829871201/250000000000000000 | 0 |
| `e * e * u` | -5850503479033/930000 | 1993840130497851/250000000000000000 | 0 |
| `c * e * v * r` | 100 | 27240054969809573121/7812500000000000000000 | 27240054969809573121/78125000000000000000 |
| `c * e * v` | -5570293/38750 | 112243568752383/7812500000000000 | 0 |
| `c * e * r` | -17401823/10000 | 6295367453156823/500000000000000000 | 0 |
| `c * v * r` | 4328251/10000 | 277481231038409/15625000000000000 | 1201008415723224792659/156250000000000000000 |
| `c * r` | 15155338003353/100000000000 | 64127855567/1000000000000 | 971879326548087345716151/100000000000000000000000 |
| `e * v * r` | -387425169/310000 | 103087919625681/7812500000000000 | 0 |
| `e * v` | 169332886800247/930000000000 | 424777263/7812500000 | 23976253396965916127987/2421875000000000000000 |
| `c * e * e * r` | -20165900 | 618009927508952157087/250000000000000000000000 | 0 |
| `a * c * u * w` | -300 | 1132412879388177601617/250000000000000000000000 | 0 |
| `a * c * u` | -580443/5000 | 11535340885495193/500000000000000000 | 0 |
| `a * c * e * u` | 300 | 1132412879388177601617/250000000000000000000000 | 3397238638164532804851/2500000000000000000000 |
| `a * c * v * r` | 300 | 58549372192797414227/7812500000000000000000 | 175648116578392242681/78125000000000000000 |
| `a * c * v` | -728061/10000 | 241254670389421/7812500000000000 | 0 |
| `a * c * r` | 331177/1250 | 13531169908203701/500000000000000000 | 4481212256689177086077/625000000000000000000 |
| `a * c * e * r` | -1100 | 1328341418718449123469/250000000000000000000000 | 0 |
| `c * c * e` | 37777/1000 | 6854484134665689/500000000000000000 | 258941847155265733353/500000000000000000000 |
| `c * c` | -278981709/2500000000 | 69823306081/1000000000000 | 0 |
| `c * c * v` | -711999/10000 | 302125445412487/15625000000000000 | 0 |
| `c * r * k` | -133972031/200000 | 12590799034169213/1000000000000000000 | 0 |
| `c * w * j` | -5770132357/18600000 | 2616413929991127/250000000000000000 | 0 |
| `a * c * r * k` | 500 | 2656696368606806450639/500000000000000000000000 | 2656696368606806450639/1000000000000000000000 |
| `a * c * w * j` | 1780100 | 552071188469917770381/125000000000000000000000 | 9827419225953006230552181/1250000000000000000000 |
| `a * e * f * f` | -6935200 | 1219989304780576301283/250000000000000000000000 | 0 |
| `e * f * f` | -154031/5000 | 5781857626576761/500000000000000000 | 0 |
| `c * f * h` | 2993/50 | 21017455767095281/1000000000000000000 | 62905245110916176033/50000000000000000000 |
| `c * h * k` | 370601150167/930000000 | 17003573524151357/1000000000000000000 | 6301543904999642456793826619/930000000000000000000000000 |
| `c * e * h` | -1393940167/930000000 | 8501743460506647/500000000000000000 | 0 |
| `c * c * h * v` | -100 | 99019499855824726841/15625000000000000000000 | 0 |
| `c * c * h` | -75213/2500 | 22884099804905183/1000000000000000000 | 0 |
| `c * e * h * u` | 3421600 | 1758934206287680704477/500000000000000000000000 | 7522961600292410373048129/625000000000000000000 |
| `c * h * u` | -576709/2500 | 17917409836992133/1000000000000000000 | 0 |
| `e * h * u` | -49469489/465000 | 6656552943289197/500000000000000000 | 0 |
| `c * c * e * h` | -7003400 | 2246509193747736909927/500000000000000000000000 | 0 |
| `c * f * h * w` | -8628000 | 2063262615199976640489/500000000000000000000000 | 0 |
| `c * e * f * h` | -2182900 | 2063262615199976640489/500000000000000000000000 | 0 |
| `e * f * h` | 29644193/310000 | 7808260698377529/500000000000000000 | 231469587137018256539097/155000000000000000000000 |
| `c * h * r` | 9269112201/2500 | 21017455767095281/1000000000000000000 | 194813155684760683446623481/2500000000000000000000 |
| `c * e * h * r` | 100 | 2063262615199976640489/500000000000000000000000 | 2063262615199976640489/5000000000000000000000 |
| `e * h * r` | 256720343/930000 | 7808260698377529/500000000000000000 | 668179788240299596124149/155000000000000000000000 |
| `c * h * r * k` | -2399000 | 4126546247855720376259/1000000000000000000000000 | 0 |
| `h * r * k` | -107143793/930000 | 15616600935720499/1000000000000000000 | 0 |
| `c * h * w * j` | 800 | 857511350657081936361/250000000000000000000000 | 857511350657081936361/312500000000000000000 |
| `c * h * j` | -152144/625 | 8735052314448369/500000000000000000 | 0 |
| `h * w * j` | -986023/10000 | 3245186593515321/250000000000000000 | 0 |
| `h * j` | 209845511125741/465000000000 | 33057142209/500000000000 | 2312297634401303972500623/77500000000000000000000 |
| `c * e * h * j` | -800 | 857511350657081936361/250000000000000000000000 | 0 |
| `e * h * j` | -3553106127/10000 | 3245186593515321/250000000000000000 | 0 |
| `c * u * v * w` | 400 | 23222184182749271253/7812500000000000000000 | 23222184182749271253/19531250000000000000 |
| `c * u * v` | 193481/1250 | 236553129631037/15625000000000000 | 45768536074142669797/19531250000000000000 |
| `c * v * w` | -884408111435007/1250000000 | 112243568752383/7812500000000000 | 0 |
| `u * v * w` | -671431/2500 | 87882592719333/7812500000000000 | 0 |
| `u * v` | -113764145949/1250000000 | 895217357/15625000000 | 0 |
| `c * e * u * v` | -400 | 23222184182749271253/7812500000000000000000 | 0 |
| `e * u * v` | 671431/2500 | 87882592719333/7812500000000000 | 59007097112134475523/19531250000000000000 |
| `c * v * v * r` | -400 | 1200661286703195743/244140625000000000000 | 0 |
| `c * v * v` | 242687/2500 | 4947365481889/244140625000000 | 1200661286703195743/610351562500000000 |
| `v * v * r` | 671431/2500 | 4543811470223/244140625000000 | 3050855879263299113/610351562500000000 |
| `v * v` | -31410250349/5000000000 | 18722929/244140625 | 0 |
| `a * u * u * w` | 400 | 886637702057967734667/250000000000000000000000 | 886637702057967734667/625000000000000000000 |
| `a * u * u` | 193481/1250 | 9031748332548643/500000000000000000 | 1747471699129843996283/625000000000000000000 |
| `u * u * w` | -900879/1250 | 4202014673051889/500000000000000000 | 0 |
| `u * u` | -161431452793/1250000000 | 42803885881/1000000000000 | 0 |
| `a * e * u * u` | -400 | 886637702057967734667/250000000000000000000000 | 0 |
| `e * u * u` | 900879/1250 | 4202014673051889/500000000000000000 | 3785506776644312710431/625000000000000000000 |
| `a * u * v * r` | -400 | 45842008478396803777/7812500000000000000000 | 0 |
| `a * u * v` | 242687/2500 | 188893547979071/7812500000000000 | 45842008478396803777/19531250000000000000 |
| `u * v * r` | 900879/1250 | 217257614718259/15625000000000000 | 195722822689770449661/19531250000000000000 |
| `c * r * w * k` | -400 | 1236026150385357470997/500000000000000000000000 | 0 |
| `c * r * w` | -120118951/1250 | 6295367453156823/500000000000000000 | 0 |
| `c * w * k` | 224695784543/242187500 | 5093087600017131/500000000000000000 | 1144395314032074230285006133/121093750000000000000000000 |
| `r * w * k` | -118373942123/125000000 | 4677647111482917/500000000000000000 | 0 |
| `w * k` | -8041979385292600651/11625000000000000 | 19274403291/500000000000 | 0 |
| `c * w * w * j` | 400 | 256850739093298946463/125000000000000000000000 | 256850739093298946463/312500000000000000000 |
| `c * w * w` | 8164466813/31250000 | 2546530829871201/250000000000000000 | 20791066448764769628952413/7812500000000000000000000 |
| `w * w * j` | 118373942123/125000000 | 972032118760143/125000000000000000 | 115063273767810230001203589/15625000000000000000000000 |
| `c * e * w * j` | 493700 | 256850739093298946463/125000000000000000000000 | 1268072098903616898687831/1250000000000000000000 |
| `a * r * r * k` | -500 | 2439991037000617001473/500000000000000000000000 | 0 |
| `r * r * k` | -863973/2500 | 11563774150133491/1000000000000000000 | 0 |
| `a * r * w * j` | 500 | 507039030718923005667/125000000000000000000000 | 507039030718923005667/250000000000000000000 |
| `a * r * j` | 412171/6200 | 5164960738307643/250000000000000000 | 2128847032468999522953/1550000000000000000000 |
| `r * w * j` | 863973/2500 | 2402994415808889/250000000000000000 | 2076122294409653255997/625000000000000000000 |
| `r * j` | 65330931197501/77500000000 | 24478138881/500000000000 | 1599179607077485118136381/38750000000000000000000 |
| `a * e * r * j` | -94100 | 507039030718923005667/125000000000000000000000 | 0 |
| `e * r * j` | 1804724501/930000 | 2402994415808889/250000000000000000 | 1445580965992161237296463/77500000000000000000000 |
| `c * e * f * w` | -200 | 618009927508952157087/250000000000000000000000 | 0 |
| `e * f * w` | 73915093823777/116250000000 | 2338811643571407/250000000000000000 | 57624494023574213284057981413/9687500000000000000000000000 |
| `c * f * k * k` | -841000 | 2472064891569749111207/1000000000000000000000000 | 0 |
| `c * k * k` | -46312421/46500 | 10186227080847961/1000000000000000000 | 0 |
| `f * k * k` | -2948291/11625 | 9355341871888727/1000000000000000000 | 0 |
| `k * k` | 126366920716543/480500000000 | 38549002921/1000000000000 | 4871318795819791520022103/480500000000000000000000 |
| `c * e * f * k` | -12148900 | 1236026150385357470997/500000000000000000000000 | 0 |
| `e * f * k` | -2470300741/6200000 | 4677647111482917/500000000000000000 | 0 |
| `c * j * k` | -5430084989/11625 | 5232854512122237/500000000000000000 | 0 |
| `j * k` | 9349863970479/15500000000 | 19803340557/500000000000 | 185158540369019831416803/7750000000000000000000 |
| `c * e * j * k` | -839000 | 513704094600527884053/250000000000000000000000 | 0 |
| `e * j * k` | -98869901/46500 | 1944074139140133/250000000000000000 | 0 |
| `e * f * r * k` | 9473100 | 1135204144544454677979/500000000000000000000000 | 107539023816840736099628649/5000000000000000000000 |
| `e * f * f * k` | 3829800 | 1135204144544454677979/500000000000000000000000 | 21738024163881762628619871/2500000000000000000000 |
| `e * f * w * j` | -9845300 | 235899558805542824241/125000000000000000000000 | 0 |
| `e * f * f * w` | -2991900 | 567599181343414050609/250000000000000000000000 | 0 |
| `a * a * f` | -100 | 10804975170926183/250000000000000000 | 0 |
| `a * a` | -31491/2000 | 44522266009/250000000000 | 0 |
| `a * a * p` | 100 | 1162877065889071/25000000000000000 | 1162877065889071/250000000000000 |
| `f * h * k` | -30357813/310000 | 15616600935720499/1000000000000000000 | 0 |
| `e * e * f * p` | -732400 | 61087421318441579433/25000000000000000000000 | 0 |
| `e * e * f` | 4888009/58125 | 2338811643571407/250000000000000000 | 3810710787693943186221/4843750000000000000000 |
| `e * e * p` | -65505321677/116250 | 251712787740759/25000000000000000 | 0 |
| `b * e * e * p` | 2987900 | 950719199296846743/390625000000000000000 | 28406538955790483834097/3906250000000000000 |
| `f * q * w` | 113291/1000 | 195621656585733/10000000000000000 | 22162173096254277303/10000000000000000000 |
| `q * w` | 3587819394153/25000000000 | 806065659/10000000000 | 2892018004320918691827/250000000000000000000 |
| `e * f * p * w` | -2883300 | 61087421318441579433/25000000000000000000000 | 0 |
| `e * p * w` | -49964924/290625 | 251712787740759/25000000000000000 | 0 |
| `f * p * w` | -7111/100 | 622267939150257/50000000000000000 | 0 |
| `e * p * r` | 98169/500 | 622267939150257/50000000000000000 | 61087421318441579433/25000000000000000000 |
| `p * r` | 108771252/1953125 | 6338741753/100000000000 | 172368219144621189/48828125000000000 |
| `q * k` | -602578725853/1550000000 | 1612139529/20000000000 | 0 |
| `e * p * k` | 151234/2325 | 503428139557629/50000000000000000 | 12689241876309744031/19375000000000000000 |
| `p * k` | 291644906207/1162500000 | 5128178341/100000000000 | 1495607091273713862587/116250000000000000000 |
| `a * p * k` | -4205593/9300 | 1082061014486023/50000000000000000 | 0 |
| `e * e * u * r` | -214300 | 483879079750131965637/250000000000000000000000 | 0 |
| `v * j` | 1633547857387/2500000000 | 436434201/7812500000 | 712936153933957292787/19531250000000000000 |
| `e * u * j` | -100365857/31000 | 2048556031765677/250000000000000000 | 0 |
| `u * j` | 119472638524377/155000000000 | 20867646933/500000000000 | 2493112838880633349785741/77500000000000000000000 |
| `e * f * q * r` | 2882300 | 47474832971821784571/10000000000000000000000 | 1368367110746819296689933/100000000000000000000 |
| `e * q * r` | 7484041/93000 | 195621656585733/10000000000000000 | 488013499458515262351/310000000000000000000 |
| `f * q * r` | -106269/500 | 483603102525459/20000000000000000 | 0 |
| `u * k` | -757809455290153/930000000000 | 40620772049/1000000000000 | 0 |
| `u * w * k` | -49123769/31000 | 3987700571278281/500000000000000000 | 0 |
| `f * w * k` | 28338185843999/23250000000 | 4677647111482917/500000000000000000 | 44185344385949336910038488361/3875000000000000000000000000 |
| `v * w * j` | 957127/5000 | 42844309077969/3906250000000000 | 41007445014869235063/19531250000000000000 |
| `f * v * w` | 9842733637/312500000 | 103087919625681/7812500000000000 | 1014666934068042827731797/2441406250000000000000000 |
| `a * v * j` | 242687/2000 | 92088925713603/3906250000000000 | 22348785114657171261/7812500000000000000 |
| `e * u * r * k` | -1912800 | 967763088541812181047/500000000000000000000000 | 0 |
| `e * u * k` | 227072339/116250 | 3987700571278281/500000000000000000 | 301832165317265162189753/19375000000000000000000 |
| `u * r * k` | -5872097/10000 | 9858133306255663/1000000000000000000 | 0 |
| `e * v * r * j` | 1915300 | 10397756837205062703/3906250000000000000000 | 199148236702988565950559/39062500000000000000 |
| `e * v * j` | 2910461/10000 | 42844309077969/3906250000000000 | 124696690643374733709/39062500000000000000 |
| `v * r * j` | -102562619/58125 | 105916906938087/7812500000000000 | 0 |
| `e * f * v * r` | -500 | 25018097950197644847/7812500000000000000000 | 0 |
| `e * f * v` | -55371581/232500 | 103087919625681/7812500000000000 | 0 |
| `a * v * r * j` | -500 | 22348785114657171261/3906250000000000000000 | 0 |
| `f * w * w` | -55689719/40000 | 2338811643571407/250000000000000000 | 0 |
| `e * r * r * k` | 800 | 1135204144544454677979/500000000000000000000000 | 1135204144544454677979/625000000000000000000 |
| `e * r * r` | -485507529/5000 | 5781857626576761/500000000000000000 | 0 |
| `e * r * w * j` | -800 | 235899558805542824241/125000000000000000000000 | 0 |
| `e * f * r * w` | 2200 | 567599181343414050609/250000000000000000000000 | 6243590994777554556699/1250000000000000000000 |
| `f * r * w` | -1329743/5000 | 5781857626576761/500000000000000000 | 0 |
| `a * f * r * w` | 4000 | 1219989304780576301283/250000000000000000000000 | 1219989304780576301283/62500000000000000000 |
| `e * e * r * j` | -1974000 | 235899558805542824241/125000000000000000000000 | 0 |
| `e * e * j * j` | 2000 | 98042075594504303409/62500000000000000000000 | 98042075594504303409/31250000000000000000 |
| `e * j * j` | -86697191/186 | 998707082627961/125000000000000000 | 0 |
| `j * j` | -760929795368023/2162250000000 | 10173344769/250000000000 | 0 |
| `e * f * j * k` | 2000 | 471801520605501457371/250000000000000000000000 | 471801520605501457371/125000000000000000000 |
| `f * j * k` | -193481/250 | 4806013309756659/500000000000000000 | 0 |
| `e * f * h * u` | -285800 | 1615458864148025352339/500000000000000000000000 | 0 |
| `f * h * u` | 10573/100 | 16455896099053931/1000000000000000000 | 173988189455297212463/100000000000000000000 |
| `e * f * f * q` | -2385600 | 47474832971821784571/10000000000000000000000 | 0 |
| `f * f * q` | -9156988/25 | 483603102525459/20000000000000000 | 0 |
| `f * q * u * w` | -1000 | 40472360152678886103/10000000000000000000000 | 0 |
| `f * q * u` | -193481/500 | 412272307476687/20000000000000000 | 0 |
| `q * u * w` | 478313/1000 | 166767730256169/10000000000000000 | 79767173362018962897/10000000000000000000 |
| `q * u` | 92544477553/500000000 | 1698782001/20000000000 | 157212892758984923553/10000000000000000000 |
| `e * f * q * u` | 1000 | 40472360152678886103/10000000000000000000000 | 40472360152678886103/10000000000000000000 |
| `e * q * u` | -478313/1000 | 166767730256169/10000000000000000 | 0 |
| `f * q * v * r` | 1000 | 2092550624627661093/312500000000000000000 | 2092550624627661093/312500000000000000 |
| `f * q * v` | -242687/1000 | 8622425694939/312500000000000 | 0 |
| `q * v * r` | -117813/500 | 8622425694939/312500000000000 | 0 |
| `q * v` | 116080347031/1000000000 | 35528997/312500000 | 4124218301423357907/312500000000000000 |
| `p * u * w` | -23828/125 | 530484270680901/50000000000000000 | 0 |
| `p * u` | 18993836289/250000000 | 5403786029/100000000000 | 102638627175611406381/25000000000000000000 |
| `e * p * u` | -98169/500 | 530484270680901/50000000000000000 | 0 |
| `p * v * r` | -98169/500 | 27427735565231/1562500000000000 | 0 |
| `p * v` | 23824340103/500000000 | 113016913/1562500000 | 2692553372703162039/781250000000000000 |
| `f * q * k` | -1766171/9300 | 391245305874423/20000000000000000 | 0 |
| `f * v * w * j` | -500 | 10397756837205062703/3906250000000000000000 | 0 |
| `f * v * j` | -35776043/93000 | 105916906938087/7812500000000000 | 0 |
| `b * f * v * w` | -100 | 389363072426197137/122070312500000000000 | 0 |
| `u * w * j` | 87484277/37200 | 2048556031765677/250000000000000000 | 59738814444336428586843/3100000000000000000000 |
| `a * u * w * j` | 500 | 432251468370653144031/125000000000000000000000 | 432251468370653144031/250000000000000000000 |
| `a * u * j` | 193481/1000 | 4403136105803799/250000000000000000 | 851923176887024834319/250000000000000000000 |
| `b * e * f * v` | -52332900 | 389363072426197137/122070312500000000000 | 0 |
| `b * e * v` | 2628489/310000 | 1604383722351/122070312500000 | 4217104965978657639/37841796875000000000 |
| `f * v * k` | 16756207/46500 | 206176889358011/15625000000000000 | 3454742636698929424277/726562500000000000000 |
| `v * k` | -14927758772473/31000000000 | 849558853/15625000000 | 0 |
| `e * f * v * j` | 500 | 10397756837205062703/3906250000000000000000 | 10397756837205062703/7812500000000000000 |
| `a * e * u * j` | -500 | 432251468370653144031/125000000000000000000000 | 0 |
| `e * f * u * w` | -1043700 | 483879079750131965637/250000000000000000000000 | 0 |
| `c * f * v * w` | 500 | 27240054969809573121/7812500000000000000000 | 27240054969809573121/15625000000000000000 |
| `c * f * v` | -530724697987/23250 | 277481231038409/15625000000000000 | 0 |
| `f * u * w * k` | 500 | 967763088541812181047/500000000000000000000000 | 967763088541812181047/1000000000000000000000 |
| `f * u * k` | 136131/1000 | 9858133306255663/1000000000000000000 | 1341997545113889659853/1000000000000000000000 |
| `e * f * u * k` | -471000 | 967763088541812181047/500000000000000000000000 | 0 |
| `h * u * r` | -253089/5000 | 16455896099053931/1000000000000000000 | 0 |
| `h * u * j` | 77252051/465000 | 6839225208762219/500000000000000000 | 176114724875928196353723/77500000000000000000000 |
| `h * u * w` | 424400447443/1250000000 | 6656552943289197/500000000000000000 | 2825044047559953810948173271/625000000000000000000000000 |
| `b * e * h * u` | -100 | 25141800466803297069/7812500000000000000000 | 0 |
| `h * v * r` | -424719/2500 | 344165103463207/15625000000000000 | 0 |
| `c * h * v * r` | 700 | 90942531104221280887/15625000000000000000000 | 636597717729548966209/156250000000000000000 |
| `b * h * v * r` | 1399300 | 1299911595780532839/244140625000000000000 | 18189662959756996016127/2441406250000000000 |
| `a * c * r * w` | 94500 | 1328341418718449123469/250000000000000000000000 | 251056528137786884335641/500000000000000000000 |
| `f * h * r * k` | -200300 | 3789946031287200740813/1000000000000000000000000 | 0 |
| `f * h * r` | 1332001/5000 | 19303072905979967/1000000000000000000 | 25711712413838222023967/5000000000000000000000 |
| `e * f * h * r` | 300 | 1894963364107147380423/500000000000000000000000 | 5684890092321442141269/5000000000000000000000 |
| `h * r * j` | 15899/100 | 8022538671275583/500000000000000000 | 127550342334610494117/50000000000000000000 |
| `e * h * r * j` | -480300 | 787564598820452707527/250000000000000000000000 | 0 |
| `e * h * r * r` | 200 | 1894963364107147380423/500000000000000000000000 | 1894963364107147380423/2500000000000000000000 |
| `h * r * r` | -5833/50 | 19303072905979967/1000000000000000000 | 0 |
| `h * r * w` | 576/5 | 7808260698377529/500000000000000000 | 70274346285397761/39062500000000000 |
| `p * u * w * w` | -1000 | 52077110368473370269/25000000000000000000000 | 0 |
| `p * w * w` | 4536319/25000 | 251712787740759/25000000000000000 | 1141849501571372126121/625000000000000000000 |
| `e * p * u * w` | 1000 | 52077110368473370269/25000000000000000000000 | 52077110368473370269/25000000000000000000 |
| `p * v * r * w` | 1000 | 2692553372703162039/781250000000000000000 | 2692553372703162039/781250000000000000 |
| `p * v * w` | -242687/1000 | 11094757332297/781250000000000 | 0 |
| `p * r * w` | -35456/125 | 622267939150257/50000000000000000 | 0 |
| `e * p * r * w` | -1000 | 61087421318441579433/25000000000000000000000 | 0 |
| `q * u * r * w` | 1000 | 40472360152678886103/10000000000000000000000 | 40472360152678886103/10000000000000000000 |
| `q * u * r` | 193481/500 | 412272307476687/20000000000000000 | 79766858322896877447/10000000000000000000 |
| `q * r * w` | -4536319/25000 | 195621656585733/10000000000000000 | 0 |
| `e * q * u * r` | -1000 | 40472360152678886103/10000000000000000000000 | 0 |
| `q * v * r * r` | -1000 | 2092550624627661093/312500000000000000000 | 0 |
| `q * r * r` | 35456/125 | 483603102525459/20000000000000000 | 133958059399552143/19531250000000000 |
| `e * q * r * r` | 1000 | 47474832971821784571/10000000000000000000000 | 47474832971821784571/10000000000000000000 |
| `p * w * k` | 924683/4650 | 503428139557629/50000000000000000 | 155170480790189018869/77500000000000000000 |
| `q * r * k` | 1407757/4650 | 391245305874423/20000000000000000 | 183592772687286699737/31000000000000000000 |
| `q * j` | -80614287/625000 | 828186093/10000000000 | 0 |
| `b * u * w * k` | -1913900 | 15061545057718067337/7812500000000000000000 | 0 |
| `b * u * k` | 701553/2500 | 153424656029073/15625000000000000 | 107635527711164250369/39062500000000000000 |
| `b * w * k` | -60136339/155000 | 72799421230107/7812500000000000 | 0 |
| `c * v * w * j` | -100 | 11321223075071606529/3906250000000000000000 | 0 |
| `c * v * j` | -4544911/155000 | 115323809706441/7812500000000000 | 0 |
| `b * v * w * j` | -500 | 161822955387488913/61035156250000000000 | 0 |
| `b * v * j` | -15604063/93000 | 1648411977177/122070312500000 | 0 |
| `c * c * e * v` | 1139500 | 29659352850698436303/7812500000000000000000 | 67593665146741736334537/15625000000000000000 |
| `c * c * e * e` | 129430300 | 672897853015996023441/250000000000000000000000 | 870933709852162701127756623/2500000000000000000000 |
| `b * c * e * v` | 52802700 | 423943959177750591/122070312500000000000 | 223853856932750111313957/1220703125000000000 |
| `b * e * e * u` | 5939100 | 7530734172890383227/3906250000000000000000 | 447257833262132750234757/39062500000000000000 |
| `b * c * e * e` | 47597900 | 9618246944423526177/3906250000000000000000 | 4578083562359765566202283/39062500000000000000 |
| `b * b * v` | 69/20 | 61727809383/3814697265625 | 4259218847427/76293945312500 |
| `b * h * r * k` | 2118100 | 58983901734216324723/15625000000000000000000 | 1249338022632435973957863/156250000000000000000 |
| `b * e * h * r` | 500 | 29491800657771927033/7812500000000000000000 | 29491800657771927033/15625000000000000000 |
| `b * h * w * j` | 100 | 12257069763707367417/3906250000000000000000 | 12257069763707367417/39062500000000000000 |
| `b * h * j` | 834531/5000 | 124856826123393/7812500000000000 | 104196891961581283683/39062500000000000000 |
| `b * e * h * j` | -1903800 | 12257069763707367417/3906250000000000000000 | 0 |
| `c * c * v * w` | -195600 | 29659352850698436303/7812500000000000000000 | 0 |
| `c * c * w` | 276319/5000 | 6854484134665689/500000000000000000 | 1894024201606688518791/2500000000000000000000 |
| `b * e * v * r` | -200 | 389363072426197137/122070312500000000000 | 0 |
| `c * v * k` | 53878627/62000 | 224488280875573/15625000000000000 | 12095120351166231078271/968750000000000000000 |
| `c * c * v * k` | -500 | 59319007826842285093/15625000000000000000000 | 0 |
| `c * c * k` | -195119023667/5000 | 13709038092637459/1000000000000000000 | 0 |
| `c * e * v * j` | 1333500 | 11321223075071606529/3906250000000000000000 | 30193701941215974612843/7812500000000000000 |
| `b * v * k` | -1047829/19375 | 3208783787781/244140625000000 | 0 |
| `b * c * v * k` | -2965400 | 847892236867039221/244140625000000000000 | 0 |
| `b * e * v * j` | -3231900 | 161822955387488913/61035156250000000000 | 0 |
| `b * e * f * w` | 200 | 8833691577769204239/3906250000000000000000 | 8833691577769204239/19531250000000000000 |
| `c * u * w * w` | 100 | 526854309922882646091/250000000000000000000000 | 526854309922882646091/2500000000000000000000 |
| `c * v * r * w` | -100 | 27240054969809573121/7812500000000000000000 | 0 |
| `c * f * w * w` | -31400 | 618009927508952157087/250000000000000000000000 | 0 |
| `b * f * w * w` | 99400 | 8833691577769204239/3906250000000000000000 | 4390344714151294506783/19531250000000000000 |
| `b * r * w * k` | 100 | 17667473140070977509/7812500000000000000000 | 17667473140070977509/78125000000000000000 |
| `b * w * w * j` | -100 | 3671365312557060111/1953125000000000000000 | 0 |
| `c * f * w * k` | -100 | 1236026150385357470997/500000000000000000000000 | 0 |
| `b * f * w * k` | -568500 | 17667473140070977509/7812500000000000000000 | 0 |
| `c * e * r * k` | -4000 | 1236026150385357470997/500000000000000000000000 | 0 |
| `b * e * f * k` | -100 | 17667473140070977509/7812500000000000000000 | 0 |
| `c * e * u * k` | -6513000 | 1053713986655144249721/500000000000000000000000 | 0 |
| `c * u * k` | -1640361/10000 | 10733673426999809/1000000000000000000 | 0 |
| `c * v * r * k` | 100 | 54480387420850184651/15625000000000000000000 | 54480387420850184651/156250000000000000000 |
| `v * r * k` | 53986977/38750 | 206176889358011/15625000000000000 | 11130866983702484622747/605468750000000000000 |
| `b * e * u * k` | -1753100 | 15061545057718067337/7812500000000000000000 | 0 |
| `b * v * r * k` | 1914400 | 778730111105207547/244140625000000000000 | 1863501155874761659971/305175781250000000 |
| `c * r * k * k` | 2000 | 2472064891569749111207/1000000000000000000000000 | 2472064891569749111207/500000000000000000000 |
| `r * k * k` | -346811/250 | 9355341871888727/1000000000000000000 | 0 |
| `c * w * j * k` | -2000 | 513704094600527884053/250000000000000000000000 | 0 |
| `w * j * k` | 346811/250 | 1944074139140133/250000000000000000 | 674226296269328665863/62500000000000000000 |
| `b * k * k` | 2374253/4650 | 145599584032617/15625000000000000 | 115230083062731003367/24218750000000000000 |
| `b * e * j * k` | 841000 | 7342768023532282341/3906250000000000000000 | 6175267907790649448781/3906250000000000000 |
| `b * j * k` | 5833/60 | 74797217283789/7812500000000000 | 145430722805447079/156250000000000000 |
| `b * f * k * k` | 841000 | 35335126250123721879/15625000000000000000000 | 29716841176354050100239/15625000000000000000 |
| `e * e * f * r` | -5284900 | 567599181343414050609/250000000000000000000000 | 0 |
| `e * e * f * j` | -1200 | 235899558805542824241/125000000000000000000000 | 0 |
| `e * e * f * u` | 100 | 483879079750131965637/250000000000000000000000 | 483879079750131965637/2500000000000000000000 |
| `b * c * h * k` | -100 | 64222497200719675389/15625000000000000000000 | 0 |
| `b * f * h * k` | -200 | 58983901734216324723/15625000000000000000000 | 0 |
| `b * e * f * h` | -100 | 29491800657771927033/7812500000000000000000 | 0 |
| `b * e * e * f` | 2462800 | 8833691577769204239/3906250000000000000000 | 54389039044324990499523/9765625000000000000 |
| `e * h * u * r` | 909400 | 1615458864148025352339/500000000000000000000000 | 7345491455281071277085433/2500000000000000000000 |
| `e * u * w * j` | -2500 | 201104697082404745413/125000000000000000000000 | 0 |
| `e * e * u * j` | -7197000 | 201104697082404745413/125000000000000000000000 | 0 |
| `b * b * e * q` | 1230200 | 11499114247500411/2441406250000000000 | 70731051736375028061/12207031250000000 |
| `b * b * e * e` | 462900 | 137481006766881969/61035156250000000000 | 636399580323896634501/610351562500000000 |
| `f * f * h * k` | 200 | 3789946031287200740813/1000000000000000000000000 | 3789946031287200740813/5000000000000000000000 |
| `f * f * h` | 31987/5000 | 19303072905979967/1000000000000000000 | 617447393043581204429/5000000000000000000000 |
| `f * f * h * w` | -200 | 1894963364107147380423/500000000000000000000000 | 0 |
| `f * h * j` | -5833/50 | 8022538671275583/500000000000000000 | 0 |
| `c * f * v * k` | -500 | 54480387420850184651/15625000000000000000000 | 0 |
| `u * r * w * k` | -1400 | 967763088541812181047/500000000000000000000000 | 0 |
| `u * w * w * j` | 1400 | 201104697082404745413/125000000000000000000000 | 1407732879576833217891/625000000000000000000 |
| `v * r * r * k` | 1400 | 50036450747627615557/15625000000000000000000 | 350255155233393308899/78125000000000000000 |
| `v * r * w * j` | -1400 | 10397756837205062703/3906250000000000000000 | 0 |
| `b * f * v * k` | -2385000 | 778730111105207547/244140625000000000000 | 0 |
| `u * u * w * w` | -1000 | 412507578438830891241/250000000000000000000000 | 0 |
| `e * u * u * w` | 2000 | 412507578438830891241/250000000000000000000000 | 412507578438830891241/125000000000000000000 |
| `u * v * r * w` | 2000 | 21327962779276767771/7812500000000000000000 | 21327962779276767771/3906250000000000000 |
| `e * u * r * w` | -1000 | 483879079750131965637/250000000000000000000000 | 0 |
| `e * u * v * r` | -2000 | 21327962779276767771/7812500000000000000000 | 0 |
| `v * v * r * r` | -1000 | 1102723974274009201/244140625000000000000 | 0 |
| `e * v * r * r` | 1000 | 25018097950197644847/7812500000000000000000 | 25018097950197644847/7812500000000000000 |
| `b * b * e * v` | 353500 | 6059757319319727/1907348632812500000 | 4284248424759046989/3814697265625000 |
| `f * r * w * k` | -2000 | 1135204144544454677979/500000000000000000000000 | 0 |
| `f * w * w * j` | 2000 | 235899558805542824241/125000000000000000000000 | 235899558805542824241/62500000000000000000 |
| `h * u * r * k` | 300 | 3230934184192149758609/1000000000000000000000000 | 9692802552576449275827/10000000000000000000000 |
| `h * u * k` | -30360689/930000 | 13313173693655407/1000000000000000000 | 0 |
| `b * h * u * k` | 1549000 | 50283857040936472239/15625000000000000000000 | 77889694556410595498211/15625000000000000000 |
| `h * u * w * j` | -300 | 671399899518978277011/250000000000000000000000 | 0 |
| `r * r * k * k` | -2000 | 2270419852863059489449/1000000000000000000000000 | 0 |
| `f * r * k * k` | 2000 | 2270419852863059489449/1000000000000000000000000 | 2270419852863059489449/500000000000000000000 |
| `r * w * j * k` | 4000 | 471801520605501457371/250000000000000000000000 | 471801520605501457371/62500000000000000000 |
| `r * j * k` | 77509097/46500 | 4806013309756659/500000000000000000 | 124169917269739976275641/7750000000000000000000 |
| `f * w * j * k` | -2000 | 471801520605501457371/250000000000000000000000 | 0 |
| `w * w * j * j` | -2000 | 98042075594504303409/62500000000000000000000 | 0 |
| `w * j * j` | -77509097/46500 | 998707082627961/125000000000000000 | 0 |
| `c * e * e * f` | -16936400 | 618009927508952157087/250000000000000000000000 | 0 |
| `c * h * u * w` | -700 | 1758934206287680704477/500000000000000000000000 | 0 |
| `c * e * e * j` | -77625800 | 256850739093298946463/125000000000000000000000 | 0 |
| `c * c * e * k` | -82458000 | 1345802560516126712571/500000000000000000000000 | 0 |
| `c * c * e * w` | -15907600 | 672897853015996023441/250000000000000000000000 | 0 |
| `e * e * u * u` | -1000 | 412507578438830891241/250000000000000000000000 | 0 |
| `c * f * h * k` | 1549000 | 4126546247855720376259/1000000000000000000000000 | 6392020137928510862825191/1000000000000000000000 |
| `e * f * h * j` | 200 | 787564598820452707527/250000000000000000000000 | 787564598820452707527/1250000000000000000000 |
| `c * c * w * k` | -62700 | 1345802560516126712571/500000000000000000000000 | 0 |
| `c * c * w * w` | 62700 | 672897853015996023441/250000000000000000000000 | 421906953841029506697507/2500000000000000000000 |
| `c * h * u * k` | 2212700 | 3517886329985198401087/1000000000000000000000000 | 77840270823582485020852049/10000000000000000000000 |
| `f * f * v` | -43300 | 254847232325863/15625000000000000 | 0 |
| `f * f * w * w` | -31800 | 567599181343414050609/250000000000000000000000 | 0 |
| `f * h * r * w` | 200 | 1894963364107147380423/500000000000000000000000 | 1894963364107147380423/2500000000000000000000 |
| `e * q * j` | 500 | 81302200563717/5000000000000000 | 81302200563717/10000000000000 |
| `e * e * f * f` | -31800 | 567599181343414050609/250000000000000000000000 | 0 |
| `e * h * u * j` | 3762000 | 671399899518978277011/250000000000000000000000 | 1262903210995198139057691/125000000000000000000 |
| `f * h * u * w` | -55000 | 1615458864148025352339/500000000000000000000000 | 0 |
| `f * h * v * r` | 55000 | 83524396464175317209/15625000000000000000000 | 918768361105928489299/3125000000000000000 |
| `q * w * j` | -2508/5 | 81302200563717/5000000000000000 | 0 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 81 | -519703268050711271954119288855733310518369122437557597/8002993387424273246250000000000000000000000000 |

## Stage 82

| Property | Value |
| --- | --- |
| Scope | root/ACP+/HBP+/AEP+/AFP-/APR-/ARS-/BRS-/BFP+/CRS- |
| Packet | forest:root/ACP+/HBP+/AEP+/AFP-/APR-/ARS-/BRS-/BFP+/CRS- |
| Index | 0 |
| Context | 28 |
| Box present | yes |
| Coarse version | 2 |
| Parent box | 76 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 33263/250000 | 580331/1000000 | 33263/250000 | 580331/1000000 |
| b | 13409/125000 | 349/1000 | 13409/125000 | 349/1000 |
| c | 135501/250000 | 161249/200000 | 135501/250000 | 695059/1000000 |
| e | 4167/10000 | 306519/500000 | 4167/10000 | 50853/100000 |
| f | 279/1000 | 521687/1000000 | 279/1000 | 368371/1000000 |
| h | 672257/1000000 | 1/1 | 672257/1000000 | 1/1 |
| p | 24309/200000 | 76547/200000 | 24309/200000 | 188773/500000 |
| q | 161507/500000 | 733897/1000000 | 161507/500000 | 691329/1000000 |
| u | 793109/1000000 | 1/1 | 849651/1000000 | 971047/1000000 |
| v | 33263/250000 | 20499/50000 | 33263/250000 | 333313/1000000 |
| r | 757313/1000000 | 1/1 | 757313/1000000 | 211671/250000 |
| w | 401831/500000 | 1/1 | 927697/1000000 | 1/1 |
| j | 638837/1000000 | 840563/1000000 | 780267/1000000 | 840563/1000000 |
| k | 337337/500000 | 871013/1000000 | 337337/500000 | 871013/1000000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 83 | A_CER | brtt ["actual-area","CER",["S"]] | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -279/1000` |
| 90 | A_CHP | brtt ["actual-area","CHP",[]] | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 97 | A_CQR | brtt ["actual-area","CQR",["S"]] | `1/1 * u * w + -1/1 * c * w + -1/1 * v * r + 1/1 * c * v + -279/1000` |
| 99 | A_CRS | brtt ["actual-area","CRS",[]] | `-1/1 * r * k + 1/1 * c * k + 1/1 * w * j + -1/1 * c * w + -93/1000` |
| 104 | A_EFR | brtt ["actual-area","EFR",["S"]] | `-1/1 * f * w + 1/1 * e * f + 1/1 * w + 1/1 * r + -1279/1000 + -1/1 * e * r` |
| 113 | A_EQR | brtt ["actual-area","EQR",[]] | `-1/1 * u * w + 1/1 * e * u + 1/1 * w + 1/1 * v * r + -1/1 * v + -1/1 * e * r + -93/1000` |
| 114 | A_EQS | brtt ["actual-area","EQS",[]] | `-1/1 * u * k + 1/1 * e * u + 1/1 * k + 1/1 * v * j + -1/1 * v + -1/1 * e * j + -93/1000` |
| 115 | A_ERS | brtt ["actual-area","ERS",[]] | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 83 | c | 135501/250000 | 161249/200000 | 135501/250000 | 4054276729/5833000000 | 135501/250000 | 695059/1000000 | `(-193481/500000, 2090896729/10000000000); (-5957/31250, 30200176553/500000000000); (-193481/500000, 53981/500000); (-5957/31250, -11047/125000); (-5833/10000, 4054276729/10000000000); (-193481/500000, 128369176553/500000000000); (-5833/10000, 3043/10000)` |
| 1 | 83 | r | 757313/1000000 | 1/1 | 757313/1000000 | 1012122667/1041750000 | 757313/1000000 | 971561/1000000 | `(-4167/10000, 39365881019/125000000000); (-4167/10000, 127850289621/500000000000); (-306519/500000, 1645871209/3906250000); (-306519/500000, 12255221037/31250000000); (-4167/10000, 1012122667/2500000000); (-4167/10000, 3155720853/10000000000); (-306519/500000, 63908131019/125000000000); (-306519/500000, 226019289621/500000000000)` |
| 2 | 83 | w | 401831/500000 | 1/1 | 3687192603/4579960000 | 1/1 | 80507/100000 | 1/1 | `(114499/250000, -3687192603/10000000000); (304941/1000000, -1524706209/5000000000); (114499/250000, -205496299371/500000000000); (304941/1000000, -79291016913/250000000000); (114499/250000, -4579964019/10000000000); (304941/1000000, -1971091917/5000000000); (114499/250000, -271167382083/500000000000); (304941/1000000, -112126558269/250000000000)` |
| 3 | 90 | p | 24309/200000 | 76547/200000 | 24309/200000 | 188772606087/500000000000 | 24309/200000 | 188773/500000 | `(-672257/1000000, 24072775743/250000000000); (-672257/1000000, 149744490337/1000000000000); (-1/1, 34241139993/125000000000); (-1/1, 188772606087/500000000000); (-672257/1000000, -790057041/6250000000); (-672257/1000000, -3396085919/25000000000); (-1/1, 12807222603/250000000000); (-1/1, 91957285077/1000000000000)` |
| 4 | 90 | q | 161507/500000 | 733897/1000000 | 161507/500000 | 480514/695059 | 161507/500000 | 691329/1000000 | `(-135501/250000, 189656505963/1000000000000); (-695059/1000000, 146274400549/500000000000); (-135501/250000, 327459/1000000); (-695059/1000000, 240257/500000); (-135501/250000, 8779020853/500000000000); (-695059/1000000, 120450336841/1000000000000); (-135501/250000, 35729/500000); (-695059/1000000, 224513/1000000)` |
| 5 | 97 | u | 793109/1000000 | 1/1 | 212412823267/250000000000 | 1/1 | 849651/1000000 | 1/1 | `(80507/100000, -185999613337/250000000000); (80507/100000, -423427084169/500000000000); (80507/100000, -8036235441/10000000000); (80507/100000, -17281880881/20000000000); (80507/100000, -193126144561/250000000000); (80507/100000, -437680146617/500000000000); (80507/100000, -44573046957/50000000000); (80507/100000, -95193143909/100000000000); (1/1, -212412823267/250000000000); (1/1, -122792752401/125000000000); (1/1, -45463819191/50000000000); (1/1, -24989547373/25000000000); (1/1, -219539354491/250000000000); (1/1, -126356018013/125000000000); (1/1, -49855688943/50000000000); (1/1, -27185482249/25000000000)` |
| 6 | 99 | r | 757313/1000000 | 971561/1000000 | 757313/1000000 | 71404375837/84334250000 | 757313/1000000 | 211671/250000 | `(-337337/500000, 175316675003/500000000000); (-337337/500000, 165337795113/500000000000); (-337337/500000, 46188625837/125000000000); (-337337/500000, 159858117883/500000000000); (-337337/500000, 256518450413/500000000000); (-337337/500000, 246539570523/500000000000); (-337337/500000, 71404375837/125000000000); (-337337/500000, 260721117883/500000000000); (-871013/1000000, 228524936681/500000000000); (-871013/1000000, 467142779227/1000000000000); (-871013/1000000, 118981382513/250000000000); (-871013/1000000, 456183424767/1000000000000); (-871013/1000000, 309726712091/500000000000); (-871013/1000000, 629546330047/1000000000000); (-871013/1000000, 169412882513/250000000000); (-871013/1000000, 657909424767/1000000000000)` |
| 7 | 99 | j | 638837/1000000 | 840563/1000000 | 390133692133/500000000000 | 840563/1000000 | 780267/1000000 | 840563/1000000 | `(80507/100000, -337307272273/500000000000); (80507/100000, -347286152163/500000000000); (80507/100000, -3674554173/5000000000); (80507/100000, -37743429719/50000000000); (1/1, -390133692133/500000000000); (1/1, -207515038799/250000000000); (1/1, -10507045929/12500000000); (1/1, -3561425781/4000000000); (80507/100000, -716888098297/1000000000000); (80507/100000, -44174699527/62500000000); (80507/100000, -4967071257/6250000000); (80507/100000, -156927699051/200000000000); (1/1, -822540938017/1000000000000); (1/1, -421141521651/500000000000); (1/1, -22509606021/25000000000); (1/1, -7361010769/8000000000)` |
| 8 | 104 | e | 4167/10000 | 306519/500000 | 4167/10000 | 8019/15769 | 4167/10000 | 50853/100000 | `(-478313/1000000, 5876847/100000000); (-117813/500000, -13661155309/100000000000); (-141921/250000, 14813947/100000000); (-324997/1000000, -4724055309/100000000000); (-478313/1000000, 199313/1000000); (-117813/500000, -21687/500000); (-141921/250000, 72171/250000); (-324997/1000000, 45997/1000000)` |
| 9 | 104 | f | 279/1000 | 521687/1000000 | 279/1000 | 537176943/1458250000 | 279/1000 | 368371/1000000 | `(-38837/100000, -321893271/10000000000); (-14827/50000, -10173337989/100000000000); (-38837/100000, 49851943/2500000000); (-14827/50000, -1445255363/25000000000); (-5833/10000, 1627406729/10000000000); (-49147/100000, 9319662011/100000000000); (-5833/10000, 537176943/2500000000); (-49147/100000, 3427994637/25000000000)` |
| 10 | 104 | w | 80507/100000 | 1/1 | 1672174807/1802500000 | 1/1 | 927697/1000000 | 1/1 | `(721/1000, -7210000271/10000000000); (721/1000, -76492350989/100000000000); (631629/1000000, -3418795657/5000000000); (631629/1000000, -35973783763/50000000000); (721/1000, -1672174807/2500000000); (721/1000, -18025008613/25000000000); (631629/1000000, -6316290271/10000000000); (631629/1000000, -67555250989/100000000000)` |
| 11 | 113 | u | 849651/1000000 | 1/1 | 849651/1000000 | 14399812629/14455000000 | 849651/1000000 | 996183/1000000 | `(-510997/1000000, 7606791909/15625000000); (-419167/1000000, 208645314693/500000000000); (-510997/1000000, 327834263/781250000); (-419167/1000000, 7001676077/20000000000); (-510997/1000000, 7210699637/15625000000); (-419167/1000000, 47966723131/125000000000); (-510997/1000000, 1309460261/3125000000); (-419167/1000000, 1706381459/5000000000); (-5833/10000, 2184131571/3906250000); (-49147/100000, 244796814693/500000000000); (-5833/10000, 1537283927/3125000000); (-49147/100000, 8447736077/20000000000); (-5833/10000, 2085108503/3906250000); (-49147/100000, 57004598131/125000000000); (-5833/10000, 47981473/97656250); (-49147/100000, 2067896459/5000000000)` |
| 12 | 114 | u | 849651/1000000 | 996183/1000000 | 849651/1000000 | 175993953687/181241500000 | 849651/1000000 | 971047/1000000 | `(-128987/500000, 1775787703/7812500000); (-2596/15625, 77824453687/500000000000); (-128987/500000, 520158143/3125000000); (-2596/15625, 1895973743/20000000000); (-128987/500000, 1642171767/7812500000); (-2596/15625, 66504542943/500000000000); (-128987/500000, 518891927/3125000000); (-2596/15625, 1777130327/20000000000); (-454313/1000000, 6619372281/15625000000); (-362483/1000000, 175993953687/500000000000); (-454313/1000000, 566858759/1562500000); (-362483/1000000, 5822753743/20000000000); (-454313/1000000, 6352140409/15625000000); (-362483/1000000, 164674042943/500000000000); (-454313/1000000, 566225651/1562500000); (-362483/1000000, 5703910327/20000000000)` |
| 13 | 114 | v | 33263/250000 | 20499/50000 | 33263/250000 | 73239779057/219733000000 | 33263/250000 | 333313/1000000 | `(-219733/1000000, 18674437013/500000000000); (-219733/1000000, 21860203373/500000000000); (-219733/1000000, 3015931161/500000000000); (-219733/1000000, 11775594861/500000000000); (-159437/1000000, 6111765413/500000000000); (-159437/1000000, 6529040933/500000000000); (-159437/1000000, -9546740439/500000000000); (-159437/1000000, -3555567579/500000000000); (-219733/1000000, 66868246337/1000000000000); (-219733/1000000, 73239779057/1000000000000); (-219733/1000000, 11716465389/1000000000000); (-219733/1000000, 29235792789/1000000000000); (-159437/1000000, 41742903137/1000000000000); (-159437/1000000, 42577454177/1000000000000); (-159437/1000000, -13408877811/1000000000000); (-159437/1000000, -1426532091/1000000000000)` |

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
| 115 | e | 4167/10000 | 50853/100000 | `(11477/500000, -52888964137/1000000000000); (-66417/1000000, 7407325917/1000000000000); (11477/500000, -18500804519/500000000000); (-66417/1000000, 2911835127/125000000000); (333/4000, -108825382449/1000000000000); (-6121/1000000, -9705818479/200000000000); (333/4000, -48648804519/500000000000); (-6121/1000000, -4625164873/125000000000); (11477/500000, -10053788703/100000000000); (-66417/1000000, -22694584207/1000000000000); (11477/500000, -84650531931/1000000000000); (-66417/1000000, -1701807277/250000000000); (333/4000, -78237152671/500000000000); (-6121/1000000, -78631002519/1000000000000); (333/4000, -144946531931/1000000000000); (-6121/1000000, -16775807277/250000000000)` |

## Stage 83

| Property | Value |
| --- | --- |
| Scope | root/ACP+/HBP+/AEP+/AFP-/APR-/ARS-/BRS-/BFP- |
| Packet | forest:root/ACP+/HBP+/AEP+/AFP-/APR-/ARS-/BRS-/BFP- |
| Index | 0 |
| Context | 29 |
| Box present | yes |
| Coarse version | 2 |
| Parent box | 72 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 3197/25000 | 640649/1000000 | 3197/25000 | 510947/1000000 |
| b | 26659/250000 | 349/1000 | 26659/250000 | 349/1000 |
| c | 135501/250000 | 6671/8000 | 135501/250000 | 6671/8000 |
| e | 416403/1000000 | 343849/500000 | 416403/1000000 | 343849/500000 |
| f | 26659/250000 | 521931/1000000 | 26659/250000 | 521931/1000000 |
| h | 324991/500000 | 1/1 | 324991/500000 | 1/1 |
| p | 120273/1000000 | 60341/125000 | 49909/250000 | 443623/1000000 |
| q | 38697/125000 | 744239/1000000 | 356471/1000000 | 129813/200000 |
| u | 762403/1000000 | 1/1 | 762403/1000000 | 1/1 |
| v | 3197/25000 | 3029/6250 | 3197/25000 | 3029/6250 |
| r | 116941/200000 | 1/1 | 116941/200000 | 1/1 |
| w | 145741/200000 | 1/1 | 14739/20000 | 1/1 |
| j | 498239/1000000 | 210161/250000 | 498239/1000000 | 210161/250000 |
| k | 156151/250000 | 8959/10000 | 156151/250000 | 8959/10000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 41 | A_APR | brtt ["actual-area","APR",[]] | `-1/1 * p * w + 1/1 * a * p + 1/1 * q * r + -1/1 * a * r + -93/1000` |
| 42 | A_APS | brtt ["actual-area","APS",[]] | `-1/1 * p * k + 1/1 * a * p + 1/1 * q * j + -1/1 * a * j + -93/1000` |
| 64 | A_BFP | brtt ["actual-area","BFP",[]] | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 90 | A_CHP | brtt ["actual-area","CHP",[]] | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 110 | A_EPR | brtt ["actual-area","EPR",["S"]] | `-1/1 * p * w + 1/1 * e * p + 1/1 * w + 1/1 * q * r + -1/1 * q + -1/1 * e * r + -279/1000` |
| 600 | SUP_ABS_ABP_BPS | brtt ["support-envelope",["pentagon","BSRPA"],"ABS","ABP","BPS","156910084239/250000000000"] | `-98839915761/250000000000 * b * q + 98839915761/250000000000 * a * b + 156910084239/250000000000 * a * p + -1023/1000 * a * j + -1023/1000 * p * k + 1023/1000 * q * j` |
| 967 | AREA_lo_EPR | brtt ["earlier-area",{"direction":"lo","ref":"72:186","triangle":"EPR","value":"70361/250000"}] | `-1/1 * p * w + 1/1 * e * p + 1/1 * w + 1/1 * q * r + -1/1 * q + -1/1 * e * r + -70361/250000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 64 | p | 120273/1000000 | 60341/125000 | 49909/250000 | 60341/125000 | 49909/250000 | 60341/125000 | `(1/1, -49909/250000); (1/1, -11467810073/31250000000); (1/1, -8205034123/25000000000); (1/1, -61941910907/125000000000); (1/1, -65405814751/250000000000); (1/1, -101742947101/200000000000); (1/1, -570701994509/1000000000000)` |
| 1 | 90 | q | 38697/125000 | 744239/1000000 | 38697/125000 | 541239/833875 | 38697/125000 | 129813/200000 | `(-135501/250000, 2023953709/15625000000); (-6671/8000, 159621966849/500000000000); (-135501/250000, 31171/125000); (-6671/8000, 541239/1000000); (-135501/250000, -6808958371/125000000000); (-6671/8000, 67619614677/500000000000); (-135501/250000, -8431/250000); (-6671/8000, 258147/1000000)` |
| 2 | 600 | a | 3197/25000 | 640649/1000000 | 3197/25000 | 1680235212432564695771/2885498469429550000000 | 3197/25000 | 18197/31250 | `(-85559829415773/250000000000000, 134198723188534606197/7812500000000000000000); (-15401148018068499/62500000000000000, -390200926727242533/31250000000000000000); (-10284959962096503/62500000000000000, -1278983032015090393803/7812500000000000000000); (-537018828277719/7812500000000000, -6042927947541742533/31250000000000000000); (-85559829415773/250000000000000, 2198771979104256587313/12500000000000000000000); (-15401148018068499/62500000000000000, 5685386691145390143/50000000000000000000); (-10284959962096503/62500000000000000, -62318829221543412687/12500000000000000000000); (-537018828277719/7812500000000000, -3358976542157809857/50000000000000000000); (-173129908165773/250000000000000, 981373557535722106197/7812500000000000000000); (-37293667705568499/62500000000000000, 2998498410661507467/31250000000000000000); (-32177479649596503/62500000000000000, -431808197667902893803/7812500000000000000000); (-3273583789215219/7812500000000000, -2654228610152992533/31250000000000000000); (-173129908165773/250000000000000, 5040705637297694087313/12500000000000000000000); (-37293667705568499/62500000000000000, 17053121323919140143/50000000000000000000); (-32177479649596503/62500000000000000, 2779614828971894087313/12500000000000000000000); (-3273583789215219/7812500000000000, 8008758090615940143/50000000000000000000); (-85559829415773/250000000000000, -298661734357465393803/7812500000000000000000); (-15401148018068499/62500000000000000, -2121642756911242533/31250000000000000000); (-10284959962096503/62500000000000000, -2325657293923090393803/7812500000000000000000); (-537018828277719/7812500000000000, -10229624995173742533/31250000000000000000); (-85559829415773/250000000000000, 1506195247030656587313/12500000000000000000000); (-15401148018068499/62500000000000000, 2915079762850990143/50000000000000000000); (-10284959962096503/62500000000000000, -1736997648274343412687/12500000000000000000000); (-537018828277719/7812500000000000, -10057691818369009857/50000000000000000000); (-173129908165773/250000000000000, 548513099989722106197/7812500000000000000000); (-37293667705568499/62500000000000000, 1267056580477507467/31250000000000000000); (-32177479649596503/62500000000000000, -1478482459575902893803/7812500000000000000000); (-3273583789215219/7812500000000000, -6840925657784992533/31250000000000000000); (-173129908165773/250000000000000, 4348128905224094087313/12500000000000000000000); (-37293667705568499/62500000000000000, 14282814395624740143/50000000000000000000); (-32177479649596503/62500000000000000, 1104936009919094087313/12500000000000000000000); (-3273583789215219/7812500000000000, 1310042814404740143/50000000000000000000)` |
| 3 | 41 | a | 3197/25000 | 18197/31250 | 3197/25000 | 20529462431/40018200000 | 3197/25000 | 128251/250000 | `(-385069/1000000, -574651163/10000000000); (-101977/1000000, -1648472951/6250000000); (-385069/1000000, 28207159889/200000000000); (-101977/1000000, -13050951283/200000000000); (-200091/250000, 3555012431/50000000000); (-64659/125000, -3379757681/25000000000); (-200091/250000, 20529462431/50000000000); (-64659/125000, 5107467319/25000000000); (-385069/1000000, -2790634123/25000000000); (-101977/1000000, -9867934123/25000000000); (-385069/1000000, 3475022033/40000000000); (-101977/1000000, -7848657967/40000000000); (-200091/250000, 847/50000); (-64659/125000, -33269/125000); (-200091/250000, 356429/1000000); (-64659/125000, 73337/1000000)` |
| 4 | 41 | q | 38697/125000 | 129813/200000 | 3408262997/10000000000 | 129813/200000 | 170413/500000 | 129813/200000 | `(116941/200000, -2877183751/10000000000); (116941/200000, -27251105541/62500000000); (116941/200000, -228903563/500000000); (116941/200000, -124270229037/250000000000); (1/1, -3408262997/10000000000); (1/1, -162266421209/250000000000); (1/1, -2554575253/5000000000); (1/1, -88766114041/125000000000); (116941/200000, -8546965593/25000000000); (116941/200000, -122544484319/250000000000); (116941/200000, -14719220469/25000000000); (116941/200000, -157010652227/250000000000); (1/1, -2468665927/6250000000); (1/1, -43951620841/62500000000); (1/1, -2005864823/3125000000); (1/1, -26284081409/31250000000)` |
| 5 | 42 | a | 3197/25000 | 128251/250000 | 3197/25000 | 81984788429/160252000000 | 3197/25000 | 1279/2500 | `(-298603/1000000, -4788063873/100000000000); (-15511/1000000, -112350517149/500000000000); (-298603/1000000, 105696052391/1000000000000); (-15511/1000000, -71124343177/1000000000000); (-40063/62500, 344099439/5000000000); (-89479/250000, -13500063471/125000000000); (-40063/62500, 81984788429/250000000000); (-89479/250000, 37779689537/250000000000); (-298603/1000000, -51020543493/500000000000); (-15511/1000000, -177831604893/500000000000); (-298603/1000000, 10307120827/200000000000); (-15511/1000000, -40417303733/200000000000); (-40063/62500, 1832429943/125000000000); (-89479/250000, -29870335407/125000000000); (-40063/62500, 13688935273/50000000000); (-89479/250000, 1007829133/50000000000)` |
| 6 | 42 | q | 170413/500000 | 129813/200000 | 18729096699/52540250000 | 129813/200000 | 356471/1000000 | 129813/200000 | `(498239/1000000, -31984849473/125000000000); (498239/1000000, -1447104449/3906250000); (498239/1000000, -49562173299/125000000000); (498239/1000000, -25153079207/62500000000); (210161/250000, -18729096699/62500000000); (210161/250000, -34102071059/62500000000); (210161/250000, -6879439653/15625000000); (210161/250000, -18050739541/31250000000); (498239/1000000, -7750981101/25000000000); (498239/1000000, -16586687/39062500); (498239/1000000, -13186489047/25000000000); (498239/1000000, -1333528607/2500000000); (210161/250000, -4422824943/12500000000); (210161/250000, -1499483963/2500000000); (210161/250000, -1785144729/3125000000); (210161/250000, -885732301/1250000000)` |
| 7 | 90 | p | 49909/250000 | 60341/125000 | 49909/250000 | 3548981959/8000000000 | 49909/250000 | 443623/1000000 | `(-324991/500000, 16521034011/250000000000); (-324991/500000, 1214011881/8000000000); (-1/1, 63948823029/250000000000); (-1/1, 3548981959/8000000000); (-324991/500000, -23125745583/250000000000); (-324991/500000, -737882693/8000000000); (-1/1, 4860408687/50000000000); (-1/1, 319417477/1600000000)` |
| 8 | 110 | w | 145741/200000 | 1/1 | 18355765961/25011375000 | 1/1 | 91737/125000 | 1/1 | `(200091/250000, -18355765961/31250000000); (200091/250000, -691851805107/1000000000000); (556377/1000000, -485787591991/1000000000000); (556377/1000000, -524062433181/1000000000000); (200091/250000, -354448667991/500000000000); (200091/250000, -813364630337/1000000000000); (556377/1000000, -607300417221/1000000000000); (556377/1000000, -645575258411/1000000000000); (200091/250000, -153068492673/250000000000); (200091/250000, -103676090259/125000000000); (556377/1000000, -510677051931/1000000000000); (556377/1000000, -330809675073/500000000000)` |
| 9 | 967 | w | 91737/125000 | 1/1 | 6144046987/8337125000 | 1/1 | 14739/20000 | 1/1 | `(200091/250000, -18432140961/31250000000); (200091/250000, -694295805107/1000000000000); (556377/1000000, -488231591991/1000000000000); (556377/1000000, -526506433181/1000000000000); (200091/250000, -355670667991/500000000000); (200091/250000, -815808630337/1000000000000); (556377/1000000, -609744417221/1000000000000); (556377/1000000, -648019258411/1000000000000); (200091/250000, -153679492673/250000000000); (200091/250000, -103981590259/125000000000); (556377/1000000, -513121051931/1000000000000); (556377/1000000, -332031675073/500000000000)` |
| 10 | 41 | a | 3197/25000 | 1279/2500 | 3197/25000 | 681572083/1333940000 | 3197/25000 | 510947/1000000 | `(-385069/1000000, -6338274829/200000000000); (-70541/500000, -42299518759/200000000000); (-385069/1000000, 223023681/1600000000); (-70541/500000, -1616656761/40000000000); (-200091/250000, 581746249/5000000000); (-556377/1000000, -1269139397/20000000000); (-200091/250000, 2044716249/5000000000); (-556377/1000000, 4582740603/20000000000); (-385069/1000000, -16841124789/200000000000); (-70541/500000, -65638524789/200000000000); (-385069/1000000, 3475022033/40000000000); (-70541/500000, -6284457967/40000000000); (-200091/250000, 12767/200000); (-556377/1000000, -22519/125000); (-200091/250000, 356429/1000000); (-556377/1000000, 56221/500000)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 83:0 | ABC | lo | 93/1000 | occupants none |
| 83:2 | ABE | lo | 93/1000 | occupants none |
| 83:6 | ABH | lo | 93/1000 | occupants none |
| 83:10 | ABQ | lo | 93/1000 | occupants none |
| 83:14 | ABS | lo | 93/1000 | occupants none |
| 83:16 | ACE | lo | 93/1000 | occupants none |
| 83:18 | ACF | lo | 279/1000 | occupants P |
| 83:20 | ACH | lo | 279/1000 | occupants P |
| 83:22 | ACP | lo | 93/1000 | occupants none |
| 83:34 | AEP | lo | 93/1000 | occupants none |
| 83:36 | AEQ | lo | 93/1000 | occupants none |
| 83:42 | AFH | lo | 93/1000 | occupants none |
| 83:44 | AFP | lo | 93/1000 | occupants none |
| 83:49 | AFR | hi | 20179280287/25000000000 | vertex maximum 20179280287/25000000000 |
| 83:51 | AFS | hi | 42510861551/62500000000 | vertex maximum 42510861551/62500000000 |
| 83:60 | APQ | lo | 93/1000 | occupants none |
| 83:62 | APR | lo | 93/1000 | occupants none |
| 83:64 | APS | lo | 93/1000 | occupants none |
| 83:70 | ARS | lo | 93/1000 | occupants none |
| 83:72 | BCE | lo | 93/1000 | occupants none |
| 83:75 | BCF | hi | 727239/1000000 | vertex maximum 727239/1000000 |
| 83:77 | BCH | hi | 727239/1000000 | vertex maximum 727239/1000000 |
| 83:78 | BCP | lo | 15713/125000 | earlier 72:78; BCP; lo; 15713/125000 |
| 83:84 | BCS | lo | 33029/250000 | earlier 72:84; BCS; lo; 33029/250000 |
| 83:87 | BEF | hi | 223341/250000 | vertex maximum 223341/250000 |
| 83:90 | BEP | lo | 69249/500000 | earlier 72:90; BEP; lo; 69249/500000 |
| 83:92 | BEQ | lo | 93/1000 | occupants none |
| 83:94 | BER | lo | 288173/1000000 | earlier 72:94; BER; lo; 288173/1000000 |
| 83:100 | BFP | lo | 93/1000 | occupants none |
| 83:103 | BFQ | hi | 223341/250000 | vertex maximum 223341/250000 |
| 83:108 | BHP | lo | 93/1000 | occupants none |
| 83:116 | BPQ | lo | 64093/500000 | earlier 72:114; BPQ; lo; 64093/500000 |
| 83:118 | BPR | lo | 93/1000 | occupants none |
| 83:120 | BPS | lo | 115201/1000000 | earlier 72:118; BPS; lo; 115201/1000000 |
| 83:122 | BQR | lo | 201779/1000000 | earlier 72:120; BQR; lo; 201779/1000000 |
| 83:124 | BQS | lo | 72791/500000 | earlier 72:122; BQS; lo; 72791/500000 |
| 83:126 | BRS | lo | 93/1000 | occupants none |
| 83:128 | CEF | lo | 93/1000 | occupants none |
| 83:132 | CEP | lo | 93/1000 | occupants none |
| 83:137 | CER | hi | 440215175497/1000000000000 | vertex maximum 440215175497/1000000000000 |
| 83:142 | CFP | lo | 93/1000 | occupants none |
| 83:144 | CFQ | lo | 93/1000 | occupants none |
| 83:148 | CFS | lo | 93/1000 | occupants none |
| 83:150 | CHP | lo | 93/1000 | occupants none |
| 83:156 | CHS | lo | 52381/500000 | earlier 72:154; CHS; lo; 52381/500000 |
| 83:168 | EFH | lo | 93/1000 | occupants none |
| 83:170 | EFP | lo | 120273/1000000 | earlier 72:168; EFP; lo; 120273/1000000 |
| 83:174 | EFR | lo | 279/1000 | occupants S |
| 83:175 | EFR | hi | 130341137577/250000000000 | vertex maximum 130341137577/250000000000 |
| 83:176 | EFS | lo | 93/1000 | occupants none |
| 83:178 | EHP | lo | 93/1000 | occupants none |
| 83:186 | EPQ | lo | 93/1000 | occupants none |
| 83:189 | EPR | hi | 15374359039/31250000000 | vertex maximum 15374359039/31250000000 |
| 83:193 | EQR | hi | 76672908651/250000000000 | vertex maximum 76672908651/250000000000 |
| 83:194 | EQS | lo | 93/1000 | occupants none |
| 83:196 | ERS | lo | 93/1000 | occupants none |
| 83:200 | FHQ | lo | 93/1000 | occupants none |
| 83:204 | FHS | lo | 93/1000 | occupants none |
| 83:206 | FPQ | lo | 120273/1000000 | earlier 72:204; FPQ; lo; 120273/1000000 |
| 83:208 | FPR | lo | 137403/1000000 | earlier 72:206; FPR; lo; 137403/1000000 |
| 83:210 | FPS | lo | 120273/1000000 | earlier 72:208; FPS; lo; 120273/1000000 |
| 83:216 | FRS | lo | 93/1000 | occupants none |
| 83:217 | FRS | hi | 67073/200000 | earlier 72:215; FRS; hi; 67073/200000 |
| 83:226 | HQS | lo | 55629/500000 | earlier 72:224; HQS; lo; 55629/500000 |
| 83:234 | PRS | lo | 93/1000 | occupants none |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 11 | fan | BCF = BCP + CFP + BFP | point P |
| 13 | fan | BEF = BEP + EFP + BFP | point P |
| 16 | fan | BFQ = BFP + FPQ + BPQ | point P |
| 17 | fan | BFR = BFP + FPR + BPR | point P |
| 18 | fan | BFS = BFP + FPS + BPS | point P |
| 507 | plu | AES * FRS = AFS * ERS + ARS * EFS | circuit SAEFR |
| 636 | plu | BCR * BEF = BCE * BFR + BCF * BER | circuit BCEFR |
| 826 | plu | BES * EFR = BEF * ERS + BER * EFS | circuit EBFRS |
| 829 | plu | BES * FRS = BFS * ERS + BRS * EFS | circuit SBEFR |
| 1803 | support | AER * CER >= 1023/1000 * (AER - ACR) | pentagon RABCE |
| 1923 | support | AER * EQR >= 1023/1000 * (AER - AQR) | pentagon RABQE |
| 2037 | support | EPR * CER >= 1023/1000 * (EPR - CPR) | pentagon RPACE |
| 2137 | support | EPR * EQR >= 1023/1000 * (EPR - PQR) | pentagon RPAQE |
| 2213 | support | BER * EQR >= 1023/1000 * (BER - BQR) | pentagon RBCQE |
| 2455 | support | EFR * EPR >= 1023/1000 * (EFR - FPR) | pentagon RFHPE |
| 2782 | bary | outer AFR; fans FPR, APR, AFP; target BEP; sign 1; vertices ABE 1; BEF 1; BER 1 | container AFR; inner P; line BE |
| 2788 | bary | outer AFR; fans FPR, APR, AFP; target BPS; sign 1; vertices ABS 1; BFS 1; BRS 1 | container AFR; inner P; line BS |
| 2824 | bary | outer AFS; fans FPS, APS, AFP; target BCP; sign 1; vertices ABC 1; BCF 1; BCS 1 | container AFS; inner P; line BC |
| 2829 | bary | outer AFS; fans FPS, APS, AFP; target BPQ; sign 1; vertices ABQ 1; BFQ 1; BQS 1 | container AFS; inner P; line BQ |
| 2992 | bary | outer BCF; fans CFP, BFP, BCP; target AHP; sign -1; vertices ABH -1; ACH -1; AFH -1 | container BCF; inner P; line AH |
| 3056 | bary | outer BCH; fans CHP, BHP, BCP; target EFP; sign 1; vertices BEF 1; CEF 1; EFH 1 | container BCH; inner P; line EF |
| 3064 | bary | outer BCH; fans CHP, BHP, BCP; target FPQ; sign -1; vertices BFQ -1; CFQ -1; FHQ -1 | container BCH; inner P; line FQ |
| 3066 | bary | outer BCH; fans CHP, BHP, BCP; target FPS; sign -1; vertices BFS -1; CFS -1; FHS -1 | container BCH; inner P; line FS |
| 3236 | bary | outer BFQ; fans FPQ, BPQ, BFP; target EPS; sign 1; vertices BES 1; EFS 1; EQS 1 | container BFQ; inner P; line ES |
| 3468 | bary | outer EFR; fans FRS, ERS, EFS; target ACS; sign 1; vertices ACE 1; ACF 1; ACR 1 | container EFR; inner S; line AC |
| 3473 | bary | outer EFR; fans FRS, ERS, EFS; target AQS; sign 1; vertices AEQ 1; AFQ 1; AQR 1 | container EFR; inner S; line AQ |
| 3476 | bary | outer EFR; fans FRS, ERS, EFS; target BCS; sign 1; vertices BCE 1; BCF 1; BCR 1 | container EFR; inner S; line BC |
| 3481 | bary | outer EFR; fans FRS, ERS, EFS; target BQS; sign 1; vertices BEQ 1; BFQ 1; BQR 1 | container EFR; inner S; line BQ |
| 3487 | bary | outer EFR; fans FRS, ERS, EFS; target CPS; sign -1; vertices CEP -1; CFP -1; CPR -1 | container EFR; inner S; line CP |
| 3504 | bary | outer EFR; fans FRS, ERS, EFS; target PQS; sign 1; vertices EPQ 1; FPQ 1; PQR 1 | container EFR; inner S; line PQ |
| 3629 | four | 1 * ACH + -1 * AHP + -1 * ACP + -1 * CHP = 0 | vertices ACHP |
| 3643 | four | 1 * AEH + -1 * AHP + -1 * AEP + -1 * EHP = 0 | vertices AEHP |
| 3652 | four | 1 * AER + -1 * ARS + -1 * AES + -1 * ERS = 0 | vertices AERS |
| 3657 | four | -1 * AFP + -1 * APQ + 1 * AFQ + -1 * FPQ = 0 | vertices AFPQ |
| 3658 | four | -1 * AFP + -1 * APR + 1 * AFR + -1 * FPR = 0 | vertices AFPR |
| 3659 | four | -1 * AFP + -1 * APS + 1 * AFS + -1 * FPS = 0 | vertices AFPS |
| 3679 | four | 1 * BCF + -1 * BFP + -1 * BCP + -1 * CFP = 0 | vertices BCFP |
| 3683 | four | 1 * BCH + -1 * BHP + -1 * BCP + -1 * CHP = 0 | vertices BCHP |
| 3693 | four | 1 * BEF + -1 * BFP + -1 * BEP + -1 * EFP = 0 | vertices BEFP |
| 3706 | four | 1 * BER + -1 * BRS + -1 * BES + -1 * ERS = 0 | vertices BERS |
| 3711 | four | -1 * BFP + -1 * BPQ + 1 * BFQ + -1 * FPQ = 0 | vertices BFPQ |
| 3712 | four | -1 * BFP + -1 * BPR + 1 * BFR + -1 * FPR = 0 | vertices BFPR |
| 3713 | four | -1 * BFP + -1 * BPS + 1 * BFS + -1 * FPS = 0 | vertices BFPS |
| 3774 | four | -1 * EPR + 1 * ERS + 1 * EPS + 1 * PRS = 0 | vertices EPRS |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 83:236 | BCF | lo | 38963/125000 | 38963/125000 | 11 | 83:78, 83:142, 83:100 |
| 83:238 | BEF | lo | 351771/1000000 | 351771/1000000 | 13 | 83:90, 83:170, 83:100 |
| 83:239 | BFQ | lo | 341459/1000000 | 341459/1000000 | 16 | 83:100, 83:206, 83:116 |
| 83:240 | BFR | lo | 323403/1000000 | 323403/1000000 | 17 | 83:100, 83:208, 83:118 |
| 83:241 | BFS | lo | 164237/500000 | 164237/500000 | 18 | 83:100, 83:210, 83:120 |
| 83:244 | BCR | lo | 134213/1000000 | 7493822237/55835250000 | 636 | 83:72, 83:240, 83:236, 83:94, 83:87 |
| 83:246 | BES | lo | 58439/500000 | 19598541/167682500 | 829 | 83:241, 83:196, 83:126, 83:176, 83:217 |
| 83:247 | FPR | lo | 144823/1000000 | 49783172883/343750000000 | 2455 | 83:174, 83:189 |
| 83:249 | BEP | lo | 72651/500000 | 2932092866691/20179280287000 | 2782 | 83:49, 83:247, 83:62, 83:44, 83:2, 83:238, 83:94 |
| 83:251 | BPS | lo | 12013/100000 | 2424150116691/20179280287000 | 2788 | 83:49, 83:247, 83:62, 83:44, 83:14, 83:241, 83:126 |
| 83:252 | BCP | lo | 128251/1000000 | 5452088874243/42510861551000 | 2824 | 83:51, 83:210, 83:64, 83:44, 83:0, 83:236, 83:84 |
| 83:253 | BPQ | lo | 134161/1000000 | 5703310936743/42510861551000 | 2829 | 83:51, 83:210, 83:64, 83:44, 83:10, 83:239, 83:124 |
| 83:254 | AHP | lo | 23357/200000 | 28310409/242413000 | 2992 | 83:75, 83:142, 83:100, 83:252, 83:6, 83:20, 83:42 |
| 83:257 | EFP | lo | 126091/1000000 | 3056631/24241300 | 3056 | 83:77, 83:150, 83:108, 83:252, 83:238, 83:128, 83:168 |
| 83:258 | FPQ | lo | 124773/1000000 | 15123319/121206500 | 3064 | 83:77, 83:150, 83:108, 83:252, 83:239, 83:144, 83:200 |
| 83:259 | FPS | lo | 15389/125000 | 29844103/242413000 | 3066 | 83:77, 83:150, 83:108, 83:252, 83:241, 83:148, 83:204 |
| 83:265 | BCS | lo | 139363/1000000 | 864990287841/6206720837000 | 3476 | 83:175, 83:216, 83:196, 83:176, 83:72, 83:236, 83:244 |
| 83:267 | BQS | lo | 156723/1000000 | 972738537841/6206720837000 | 3481 | 83:175, 83:216, 83:196, 83:176, 83:92, 83:239, 83:122 |
| 83:282 | ACH | lo | 60557/200000 | 60557/200000 | 3629 | 83:254, 83:22, 83:150 |
| 83:286 | AFR | lo | 330823/1000000 | 330823/1000000 | 3658 | 83:44, 83:62, 83:247 |
| 83:291 | BCF | lo | 314251/1000000 | 314251/1000000 | 3679 | 83:100, 83:252, 83:142 |
| 83:293 | BEF | lo | 364393/1000000 | 364393/1000000 | 3693 | 83:100, 83:249, 83:257 |
| 83:295 | BER | lo | 151439/500000 | 151439/500000 | 3706 | 83:126, 83:246, 83:196 |
| 83:296 | BFQ | lo | 175967/500000 | 175967/500000 | 3711 | 83:100, 83:253, 83:258 |
| 83:297 | BFR | lo | 330823/1000000 | 330823/1000000 | 3712 | 83:100, 83:118, 83:247 |
| 83:298 | BFS | lo | 168121/500000 | 168121/500000 | 3713 | 83:100, 83:251, 83:259 |
| 83:303 | BCR | lo | 140979/1000000 | 62973126689/446682000000 | 636 | 83:72, 83:297, 83:291, 83:295, 83:87 |
| 83:305 | BES | lo | 119033/1000000 | 19959753/167682500 | 829 | 83:298, 83:196, 83:126, 83:176, 83:217 |
| 83:308 | BQR | lo | 53019/250000 | 9039751878933737/42625000000000000 | 2213 | 83:295, 83:193 |
| 83:309 | BEP | lo | 2969/20000 | 2995628141691/20179280287000 | 2782 | 83:49, 83:247, 83:62, 83:44, 83:2, 83:293, 83:295 |
| 83:311 | BPS | lo | 4841/40000 | 2442210716691/20179280287000 | 2788 | 83:49, 83:247, 83:62, 83:44, 83:14, 83:298, 83:126 |
| 83:312 | BCP | lo | 12959/100000 | 5509016499243/42510861551000 | 2824 | 83:51, 83:259, 83:64, 83:44, 83:0, 83:291, 83:265 |
| 83:313 | BPQ | lo | 34279/250000 | 5828953936743/42510861551000 | 2829 | 83:51, 83:259, 83:64, 83:44, 83:10, 83:296, 83:267 |
| 83:314 | AHP | lo | 119827/1000000 | 3630968/30301625 | 2992 | 83:75, 83:142, 83:100, 83:312, 83:6, 83:282, 83:42 |
| 83:315 | EFP | lo | 25541/200000 | 3869699/30301625 | 3056 | 83:77, 83:150, 83:108, 83:312, 83:293, 83:128, 83:168 |
| 83:316 | FPQ | lo | 3941/31250 | 30571363/242413000 | 3064 | 83:77, 83:150, 83:108, 83:312, 83:296, 83:144, 83:200 |
| 83:317 | FPS | lo | 62053/500000 | 30084911/242413000 | 3066 | 83:77, 83:150, 83:108, 83:312, 83:298, 83:148, 83:204 |
| 83:322 | BCS | lo | 4407/31250 | 56211997843/398596751000 | 3476 | 83:175, 83:216, 83:196, 83:176, 83:72, 83:291, 83:303 |
| 83:323 | BQS | lo | 40107/250000 | 6970152764887/43447045859000 | 3481 | 83:175, 83:216, 83:196, 83:176, 83:92, 83:296, 83:308 |
| 83:330 | ACH | lo | 305827/1000000 | 305827/1000000 | 3629 | 83:314, 83:22, 83:150 |
| 83:339 | BCF | lo | 31559/100000 | 31559/100000 | 3679 | 83:100, 83:312, 83:142 |
| 83:341 | BEF | lo | 73831/200000 | 73831/200000 | 3693 | 83:100, 83:309, 83:315 |
| 83:343 | BER | lo | 305033/1000000 | 305033/1000000 | 3706 | 83:126, 83:305, 83:196 |
| 83:344 | BFQ | lo | 89057/250000 | 89057/250000 | 3711 | 83:100, 83:313, 83:316 |
| 83:345 | BFS | lo | 338131/1000000 | 338131/1000000 | 3713 | 83:100, 83:311, 83:317 |
| 83:350 | BCR | lo | 28439/200000 | 12703190347/89336400000 | 636 | 83:72, 83:297, 83:339, 83:343, 83:87 |
| 83:351 | BES | lo | 6013/50000 | 5224957000/43447045859 | 826 | 83:341, 83:196, 83:343, 83:176, 83:175 |
| 83:356 | BQR | lo | 42717/200000 | 18208140801819839/85250000000000000 | 2213 | 83:343, 83:193 |
| 83:357 | BEP | lo | 149247/1000000 | 3011710166691/20179280287000 | 2782 | 83:49, 83:247, 83:62, 83:44, 83:2, 83:341, 83:343 |
| 83:359 | BPS | lo | 121243/1000000 | 2446602641691/20179280287000 | 2788 | 83:49, 83:247, 83:62, 83:44, 83:14, 83:345, 83:126 |
| 83:360 | BCP | lo | 13/100 | 5526453999243/42510861551000 | 2824 | 83:51, 83:317, 83:64, 83:44, 83:0, 83:339, 83:322 |
| 83:361 | BPQ | lo | 13821/100000 | 5875448124243/42510861551000 | 2829 | 83:51, 83:317, 83:64, 83:44, 83:10, 83:344, 83:323 |
| 83:362 | AHP | lo | 15027/125000 | 14571023/121206500 | 2992 | 83:75, 83:142, 83:100, 83:360, 83:6, 83:330, 83:42 |
| 83:363 | EFP | lo | 64157/500000 | 15552607/121206500 | 3056 | 83:77, 83:150, 83:108, 83:360, 83:341, 83:128, 83:168 |
| 83:364 | FPQ | lo | 126661/1000000 | 30704477/242413000 | 3064 | 83:77, 83:150, 83:108, 83:360, 83:344, 83:144, 83:200 |
| 83:365 | FPS | lo | 124347/1000000 | 3014347/24241300 | 3066 | 83:77, 83:150, 83:108, 83:360, 83:345, 83:148, 83:204 |
| 83:370 | BCS | lo | 3537/25000 | 6146909014887/43447045859000 | 3476 | 83:175, 83:216, 83:196, 83:176, 83:72, 83:339, 83:350 |
| 83:371 | BQS | lo | 161463/1000000 | 7015126014887/43447045859000 | 3481 | 83:175, 83:216, 83:196, 83:176, 83:92, 83:344, 83:356 |
| 83:377 | ACH | lo | 38277/125000 | 38277/125000 | 3629 | 83:362, 83:22, 83:150 |
| 83:386 | BCF | lo | 79/250 | 79/250 | 3679 | 83:100, 83:360, 83:142 |
| 83:388 | BEF | lo | 370561/1000000 | 370561/1000000 | 3693 | 83:100, 83:357, 83:363 |
| 83:390 | BER | lo | 15313/50000 | 15313/50000 | 3706 | 83:126, 83:351, 83:196 |
| 83:391 | BFQ | lo | 357871/1000000 | 357871/1000000 | 3711 | 83:100, 83:361, 83:364 |
| 83:392 | BFS | lo | 33859/100000 | 33859/100000 | 3713 | 83:100, 83:359, 83:365 |
| 83:397 | BCR | lo | 142769/1000000 | 127544699/893364000 | 636 | 83:72, 83:297, 83:386, 83:390, 83:87 |
| 83:398 | BES | lo | 12073/100000 | 5245362750/43447045859 | 826 | 83:388, 83:196, 83:390, 83:176, 83:175 |
| 83:403 | BQR | lo | 53611/250000 | 914069166609079/4262500000000000 | 2213 | 83:390, 83:193 |
| 83:404 | BEP | lo | 149551/1000000 | 3017831891691/20179280287000 | 2782 | 83:49, 83:247, 83:62, 83:44, 83:2, 83:388, 83:390 |
| 83:405 | BPS | lo | 7581/62500 | 2447669816691/20179280287000 | 2788 | 83:49, 83:247, 83:62, 83:44, 83:14, 83:392, 83:126 |
| 83:406 | BCP | lo | 130119/1000000 | 5531487624243/42510861551000 | 2824 | 83:51, 83:365, 83:64, 83:44, 83:0, 83:386, 83:370 |
| 83:407 | BPQ | lo | 8661/62500 | 5891013999243/42510861551000 | 2829 | 83:51, 83:365, 83:64, 83:44, 83:10, 83:391, 83:371 |
| 83:408 | AHP | lo | 60133/500000 | 5830821/48482600 | 2992 | 83:75, 83:142, 83:100, 83:406, 83:6, 83:377, 83:42 |
| 83:409 | EFP | lo | 64247/500000 | 155744/1212065 | 3056 | 83:77, 83:150, 83:108, 83:406, 83:388, 83:128, 83:168 |
| 83:410 | FPQ | lo | 126871/1000000 | 3075541/24241300 | 3064 | 83:77, 83:150, 83:108, 83:406, 83:391, 83:144, 83:200 |
| 83:411 | FPS | lo | 62203/500000 | 30157699/242413000 | 3066 | 83:77, 83:150, 83:108, 83:406, 83:392, 83:148, 83:204 |
| 83:416 | BCS | lo | 17707/125000 | 879219287841/6206720837000 | 3476 | 83:175, 83:216, 83:196, 83:176, 83:72, 83:386, 83:397 |
| 83:417 | BQS | lo | 16191/100000 | 7034516514887/43447045859000 | 3481 | 83:175, 83:216, 83:196, 83:176, 83:92, 83:391, 83:403 |
| 83:423 | ACH | lo | 153133/500000 | 153133/500000 | 3629 | 83:408, 83:22, 83:150 |
| 83:428 | AFS | lo | 155203/500000 | 155203/500000 | 3659 | 83:44, 83:64, 83:411 |
| 83:432 | BCF | lo | 316119/1000000 | 316119/1000000 | 3679 | 83:100, 83:406, 83:142 |
| 83:434 | BEF | lo | 74209/200000 | 74209/200000 | 3693 | 83:100, 83:404, 83:409 |
| 83:436 | BER | lo | 30673/100000 | 30673/100000 | 3706 | 83:126, 83:398, 83:196 |
| 83:437 | BFQ | lo | 358447/1000000 | 358447/1000000 | 3711 | 83:100, 83:407, 83:410 |
| 83:438 | BFS | lo | 169351/500000 | 169351/500000 | 3713 | 83:100, 83:405, 83:411 |
| 83:442 | AES | lo | 27967/250000 | 18758379/167682500 | 507 | 83:428, 83:196, 83:70, 83:176, 83:217 |
| 83:443 | BCR | lo | 2234/15625 | 4257657329/29778800000 | 636 | 83:72, 83:297, 83:432, 83:436, 83:87 |
| 83:444 | BES | lo | 1209/10000 | 750393750/6206720837 | 826 | 83:434, 83:196, 83:436, 83:176, 83:175 |
| 83:449 | BQR | lo | 214773/1000000 | 1830943874315959/8525000000000000 | 2213 | 83:436, 83:193 |
| 83:450 | BEP | lo | 7483/50000 | 3020049941691/20179280287000 | 2782 | 83:49, 83:247, 83:62, 83:44, 83:2, 83:434, 83:436 |
| 83:451 | BPS | lo | 121309/1000000 | 2447930216691/20179280287000 | 2788 | 83:49, 83:247, 83:62, 83:44, 83:14, 83:438, 83:126 |
| 83:452 | BCP | lo | 130159/1000000 | 5533202311743/42510861551000 | 2824 | 83:51, 83:411, 83:64, 83:44, 83:0, 83:432, 83:416 |
| 83:453 | BPQ | lo | 34679/250000 | 5896960186743/42510861551000 | 2829 | 83:51, 83:411, 83:64, 83:44, 83:10, 83:437, 83:417 |
| 83:454 | AHP | lo | 7517/62500 | 5831131/48482600 | 2992 | 83:75, 83:142, 83:100, 83:452, 83:6, 83:423, 83:42 |
| 83:455 | EFP | lo | 32139/250000 | 7790951/60603250 | 3056 | 83:77, 83:150, 83:108, 83:452, 83:434, 83:128, 83:168 |
| 83:456 | FPQ | lo | 25389/200000 | 15386633/121206500 | 3064 | 83:77, 83:150, 83:108, 83:452, 83:437, 83:144, 83:200 |
| 83:457 | FPS | lo | 6221/50000 | 30161171/242413000 | 3066 | 83:77, 83:150, 83:108, 83:452, 83:438, 83:148, 83:204 |
| 83:462 | BCS | lo | 70857/500000 | 6157061514887/43447045859000 | 3476 | 83:175, 83:216, 83:196, 83:176, 83:72, 83:432, 83:443 |
| 83:463 | BQS | lo | 162071/1000000 | 7041530264887/43447045859000 | 3481 | 83:175, 83:216, 83:196, 83:176, 83:92, 83:437, 83:449 |
| 83:469 | ACH | lo | 9571/31250 | 9571/31250 | 3629 | 83:454, 83:22, 83:150 |
| 83:472 | AER | lo | 74467/250000 | 74467/250000 | 3652 | 83:70, 83:442, 83:196 |
| 83:474 | AFS | lo | 15521/50000 | 15521/50000 | 3659 | 83:44, 83:64, 83:457 |
| 83:478 | BCF | lo | 316159/1000000 | 316159/1000000 | 3679 | 83:100, 83:452, 83:142 |
| 83:480 | BEF | lo | 23201/62500 | 23201/62500 | 3693 | 83:100, 83:450, 83:455 |
| 83:482 | BER | lo | 3069/10000 | 3069/10000 | 3706 | 83:126, 83:444, 83:196 |
| 83:483 | BFQ | lo | 358661/1000000 | 358661/1000000 | 3711 | 83:100, 83:453, 83:456 |
| 83:484 | BFS | lo | 338729/1000000 | 338729/1000000 | 3713 | 83:100, 83:451, 83:457 |
| 83:488 | AES | lo | 1748/15625 | 1875903/16768250 | 507 | 83:474, 83:196, 83:70, 83:176, 83:217 |
| 83:489 | BCR | lo | 2861/20000 | 425985787/2977880000 | 636 | 83:72, 83:297, 83:478, 83:482, 83:87 |
| 83:490 | BES | lo | 120961/1000000 | 5255399000/43447045859 | 826 | 83:480, 83:196, 83:482, 83:176, 83:175 |
| 83:491 | ACR | lo | 16969/100000 | 43398237526264901/255750000000000000 | 1803 | 83:472, 83:137 |
| 83:495 | BQR | lo | 53723/250000 | 537231274047/2500000000000 | 2213 | 83:482, 83:193 |
| 83:496 | BEP | lo | 1497/10000 | 3020842766691/20179280287000 | 2782 | 83:49, 83:247, 83:62, 83:44, 83:2, 83:480, 83:482 |
| 83:497 | BPS | lo | 3791/31250 | 2447992991691/20179280287000 | 2788 | 83:49, 83:247, 83:62, 83:44, 83:14, 83:484, 83:126 |
| 83:498 | BCP | lo | 130173/1000000 | 5533771936743/42510861551000 | 2824 | 83:51, 83:457, 83:64, 83:44, 83:0, 83:478, 83:462 |
| 83:499 | BPQ | lo | 138767/1000000 | 5899139874243/42510861551000 | 2829 | 83:51, 83:457, 83:64, 83:44, 83:10, 83:483, 83:463 |
| 83:500 | AHP | lo | 120273/1000000 | 29155841/242413000 | 2992 | 83:75, 83:142, 83:100, 83:498, 83:6, 83:469, 83:42 |
| 83:501 | EFP | lo | 64289/500000 | 6233821/48482600 | 3056 | 83:77, 83:150, 83:108, 83:498, 83:480, 83:128, 83:168 |
| 83:502 | FPQ | lo | 31743/250000 | 307799/2424130 | 3064 | 83:77, 83:150, 83:108, 83:498, 83:483, 83:144, 83:200 |
| 83:503 | FPS | lo | 15553/125000 | 3770251/30301625 | 3066 | 83:77, 83:150, 83:108, 83:498, 83:484, 83:148, 83:204 |
| 83:504 | EPS | lo | 48487/500000 | 7219426341/74447000000 | 3236 | 83:103, 83:502, 83:499, 83:100, 83:490, 83:176, 83:194 |
| 83:506 | ACS | lo | 69929/500000 | 55746997843/398596751000 | 3468 | 83:175, 83:216, 83:196, 83:176, 83:16, 83:18, 83:491 |
| 83:508 | BCS | lo | 70867/500000 | 6157945014887/43447045859000 | 3476 | 83:175, 83:216, 83:196, 83:176, 83:72, 83:478, 83:489 |
| 83:509 | BQS | lo | 16213/100000 | 7044111014887/43447045859000 | 3481 | 83:175, 83:216, 83:196, 83:176, 83:92, 83:483, 83:495 |
| 83:515 | ACH | lo | 306273/1000000 | 306273/1000000 | 3629 | 83:500, 83:22, 83:150 |
| 83:517 | AEH | lo | 306273/1000000 | 306273/1000000 | 3643 | 83:500, 83:34, 83:178 |
| 83:518 | AER | lo | 18617/62500 | 18617/62500 | 3652 | 83:70, 83:488, 83:196 |
| 83:524 | BCF | lo | 316173/1000000 | 316173/1000000 | 3679 | 83:100, 83:498, 83:142 |
| 83:526 | BEF | lo | 185639/500000 | 185639/500000 | 3693 | 83:100, 83:496, 83:501 |
| 83:528 | BER | lo | 306961/1000000 | 306961/1000000 | 3706 | 83:126, 83:490, 83:196 |
| 83:529 | BFQ | lo | 358739/1000000 | 358739/1000000 | 3711 | 83:100, 83:499, 83:502 |
| 83:530 | BFS | lo | 21171/62500 | 21171/62500 | 3713 | 83:100, 83:497, 83:503 |
| 83:533 | EPR | lo | 141487/500000 | 141487/500000 | 3774 | 83:196, 83:504, 83:234 |
| 83:535 | BCR | lo | 35769/250000 | 42606439751/297788000000 | 636 | 83:72, 83:297, 83:524, 83:528, 83:87 |
| 83:536 | BES | lo | 60491/500000 | 5256352250/43447045859 | 826 | 83:526, 83:196, 83:528, 83:176, 83:175 |
| 83:538 | AQR | lo | 208571/1000000 | 1111292736548111/5328125000000000 | 1923 | 83:518, 83:193 |
| 83:539 | CPR | lo | 32241/200000 | 82456476464455961/511500000000000000 | 2037 | 83:533, 83:137 |
| 83:541 | BQR | lo | 42987/200000 | 18323227679193463/85250000000000000 | 2213 | 83:528, 83:193 |
| 83:542 | BEP | lo | 74857/500000 | 3021128741691/20179280287000 | 2782 | 83:49, 83:247, 83:62, 83:44, 83:2, 83:526, 83:528 |
| 83:543 | BPS | lo | 121313/1000000 | 2448009266691/20179280287000 | 2788 | 83:49, 83:247, 83:62, 83:44, 83:14, 83:530, 83:126 |
| 83:544 | BCP | lo | 130177/1000000 | 5533969561743/42510861551000 | 2824 | 83:51, 83:503, 83:64, 83:44, 83:0, 83:524, 83:508 |
| 83:545 | BPQ | lo | 69393/500000 | 5899936186743/42510861551000 | 2829 | 83:51, 83:503, 83:64, 83:44, 83:10, 83:529, 83:509 |
| 83:546 | EFP | lo | 64293/500000 | 31171027/242413000 | 3056 | 83:77, 83:150, 83:108, 83:544, 83:526, 83:128, 83:168 |
| 83:547 | FPQ | lo | 63491/500000 | 15391159/121206500 | 3064 | 83:77, 83:150, 83:108, 83:544, 83:529, 83:144, 83:200 |
| 83:548 | EPS | lo | 96977/1000000 | 21659015581/223341000000 | 3236 | 83:103, 83:547, 83:545, 83:100, 83:536, 83:176, 83:194 |
| 83:551 | BCS | lo | 141741/1000000 | 6158255014887/43447045859000 | 3476 | 83:175, 83:216, 83:196, 83:176, 83:72, 83:524, 83:535 |
| 83:552 | BQS | lo | 20269/125000 | 1006435537841/6206720837000 | 3481 | 83:175, 83:216, 83:196, 83:176, 83:92, 83:529, 83:541 |
| 83:553 | CPS | lo | 52583/500000 | 4569164014887/43447045859000 | 3487 | 83:175, 83:216, 83:196, 83:176, 83:132, 83:142, 83:539 |
| 83:560 | BCF | lo | 316177/1000000 | 316177/1000000 | 3679 | 83:100, 83:544, 83:142 |
| 83:562 | BEF | lo | 3713/10000 | 3713/10000 | 3693 | 83:100, 83:542, 83:546 |
| 83:564 | BER | lo | 153491/500000 | 153491/500000 | 3706 | 83:126, 83:536, 83:196 |
| 83:565 | BFQ | lo | 22423/62500 | 22423/62500 | 3711 | 83:100, 83:545, 83:547 |
| 83:566 | BFS | lo | 338737/1000000 | 338737/1000000 | 3713 | 83:100, 83:543, 83:503 |
| 83:569 | EPR | lo | 282977/1000000 | 282977/1000000 | 3774 | 83:196, 83:548, 83:234 |
| 83:571 | BES | lo | 12099/100000 | 5256685500/43447045859 | 826 | 83:562, 83:196, 83:564, 83:176, 83:175 |
| 83:573 | PQR | lo | 198141/1000000 | 16891566026221991/85250000000000000 | 2137 | 83:569, 83:193 |
| 83:574 | BQR | lo | 214949/1000000 | 9162240609416453/42625000000000000 | 2213 | 83:564, 83:193 |
| 83:575 | BEP | lo | 149719/1000000 | 3021228716691/20179280287000 | 2782 | 83:49, 83:247, 83:62, 83:44, 83:2, 83:562, 83:564 |
| 83:576 | BCP | lo | 130179/1000000 | 5534033499243/42510861551000 | 2824 | 83:51, 83:503, 83:64, 83:44, 83:0, 83:560, 83:551 |
| 83:577 | BPQ | lo | 138793/1000000 | 5900232624243/42510861551000 | 2829 | 83:51, 83:503, 83:64, 83:44, 83:10, 83:565, 83:552 |
| 83:578 | EFP | lo | 128589/1000000 | 31171709/242413000 | 3056 | 83:77, 83:150, 83:108, 83:576, 83:562, 83:128, 83:168 |
| 83:579 | FPQ | lo | 63493/500000 | 30783217/242413000 | 3064 | 83:77, 83:150, 83:108, 83:576, 83:565, 83:144, 83:200 |
| 83:580 | FPS | lo | 4977/40000 | 3770282/30301625 | 3066 | 83:77, 83:150, 83:108, 83:576, 83:566, 83:148, 83:204 |
| 83:584 | BQS | lo | 2027/12500 | 7045382014887/43447045859000 | 3481 | 83:175, 83:216, 83:196, 83:176, 83:92, 83:565, 83:574 |
| 83:585 | PQS | lo | 117817/1000000 | 19463154049/165197893000 | 3504 | 83:175, 83:216, 83:196, 83:176, 83:186, 83:579, 83:573 |
| 83:590 | AFQ | lo | 156493/500000 | 156493/500000 | 3657 | 83:44, 83:60, 83:579 |
| 83:592 | BCF | lo | 316179/1000000 | 316179/1000000 | 3679 | 83:100, 83:576, 83:142 |
| 83:594 | BEF | lo | 92827/250000 | 92827/250000 | 3693 | 83:100, 83:575, 83:578 |
| 83:596 | BER | lo | 30699/100000 | 30699/100000 | 3706 | 83:126, 83:571, 83:196 |
| 83:597 | BFQ | lo | 358779/1000000 | 358779/1000000 | 3711 | 83:100, 83:577, 83:579 |
| 83:598 | BFS | lo | 169369/500000 | 169369/500000 | 3713 | 83:100, 83:543, 83:580 |
| 83:602 | BES | lo | 120993/1000000 | 5256809500/43447045859 | 826 | 83:594, 83:196, 83:596, 83:176, 83:175 |
| 83:605 | BQR | lo | 42991/200000 | 1832495875774317/8525000000000000 | 2213 | 83:596, 83:193 |
| 83:606 | BEP | lo | 149721/1000000 | 3021265916691/20179280287000 | 2782 | 83:49, 83:247, 83:62, 83:44, 83:2, 83:594, 83:596 |
| 83:607 | BPQ | lo | 34699/250000 | 5900343061743/42510861551000 | 2829 | 83:51, 83:580, 83:64, 83:44, 83:10, 83:597, 83:584 |
| 83:608 | EFP | lo | 12859/100000 | 31171957/242413000 | 3056 | 83:77, 83:150, 83:108, 83:576, 83:594, 83:128, 83:168 |
| 83:609 | FPQ | lo | 31747/250000 | 15391779/121206500 | 3064 | 83:77, 83:150, 83:108, 83:576, 83:597, 83:144, 83:200 |
| 83:610 | EPS | lo | 96979/1000000 | 7219802257/74447000000 | 3236 | 83:103, 83:609, 83:607, 83:100, 83:602, 83:176, 83:194 |
| 83:611 | AQS | lo | 19107/125000 | 6641142014887/43447045859000 | 3473 | 83:175, 83:216, 83:196, 83:176, 83:36, 83:590, 83:538 |
| 83:613 | BQS | lo | 162163/1000000 | 7045513764887/43447045859000 | 3481 | 83:175, 83:216, 83:196, 83:176, 83:92, 83:597, 83:605 |
| 83:615 | AFQ | lo | 78247/250000 | 78247/250000 | 3657 | 83:44, 83:60, 83:609 |
| 83:616 | BEF | lo | 371311/1000000 | 371311/1000000 | 3693 | 83:100, 83:606, 83:608 |
| 83:618 | BER | lo | 306993/1000000 | 306993/1000000 | 3706 | 83:126, 83:602, 83:196 |
| 83:619 | BFQ | lo | 5606/15625 | 5606/15625 | 3711 | 83:100, 83:607, 83:609 |
| 83:621 | EPR | lo | 282979/1000000 | 282979/1000000 | 3774 | 83:196, 83:610, 83:234 |
| 83:622 | BCR | lo | 143089/1000000 | 42610426249/297788000000 | 636 | 83:72, 83:297, 83:592, 83:618, 83:87 |
| 83:623 | BES | lo | 60497/500000 | 5256856000/43447045859 | 826 | 83:616, 83:196, 83:618, 83:176, 83:175 |
| 83:626 | BPQ | lo | 138797/1000000 | 5900389561743/42510861551000 | 2829 | 83:51, 83:580, 83:64, 83:44, 83:10, 83:619, 83:613 |
| 83:627 | BCS | lo | 28349/200000 | 6158402264887/43447045859000 | 3476 | 83:175, 83:216, 83:196, 83:176, 83:72, 83:592, 83:622 |
| 83:629 | BER | lo | 153497/500000 | 153497/500000 | 3706 | 83:126, 83:623, 83:196 |
| 83:630 | BFQ | lo | 71757/200000 | 71757/200000 | 3711 | 83:100, 83:626, 83:609 |
| 83:634 | BCP | lo | 6509/50000 | 5534068374243/42510861551000 | 2824 | 83:51, 83:580, 83:64, 83:44, 83:0, 83:592, 83:627 |
| 83:635 | BCF | lo | 15809/50000 | 15809/50000 | 3679 | 83:100, 83:634, 83:142 |
| 83:636 | BCH | lo | 15809/50000 | 15809/50000 | 3683 | 83:108, 83:634, 83:150 |

## Stage 84

| Property | Value |
| --- | --- |
| Scope | root/ACP+/HBP+/AEP+/AFP-/APR-/ARS-/BRS-/BFP- |
| Packet | forest:root/ACP+/HBP+/AEP+/AFP-/APR-/ARS-/BRS-/BFP- |
| Index | 1 |
| Context | 29 |
| Box present | yes |
| Coarse version | 2 |
| Parent box | 83 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 3197/25000 | 510947/1000000 | 3197/25000 | 510469/1000000 |
| b | 26659/250000 | 349/1000 | 26659/250000 | 349/1000 |
| c | 135501/250000 | 6671/8000 | 135501/250000 | 6671/8000 |
| e | 416403/1000000 | 343849/500000 | 416403/1000000 | 343849/500000 |
| f | 26659/250000 | 521931/1000000 | 26659/250000 | 521931/1000000 |
| h | 324991/500000 | 1/1 | 324991/500000 | 1/1 |
| p | 49909/250000 | 443623/1000000 | 49909/250000 | 443623/1000000 |
| q | 356471/1000000 | 129813/200000 | 356471/1000000 | 129813/200000 |
| u | 762403/1000000 | 1/1 | 762403/1000000 | 1/1 |
| v | 3197/25000 | 3029/6250 | 3197/25000 | 3029/6250 |
| r | 116941/200000 | 1/1 | 116941/200000 | 1/1 |
| w | 14739/20000 | 1/1 | 184717/250000 | 1/1 |
| j | 498239/1000000 | 210161/250000 | 498239/1000000 | 210161/250000 |
| k | 156151/250000 | 8959/10000 | 156151/250000 | 8959/10000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 41 | A_APR | brtt ["actual-area","APR",[]] | `-1/1 * p * w + 1/1 * a * p + 1/1 * q * r + -1/1 * a * r + -93/1000` |
| 974 | AREA_lo_EPR | brtt ["earlier-area",{"direction":"lo","ref":"83:621","triangle":"EPR","value":"282979/1000000"}] | `-1/1 * p * w + 1/1 * e * p + 1/1 * w + 1/1 * q * r + -1/1 * q + -1/1 * e * r + -282979/1000000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 974 | w | 14739/20000 | 1/1 | 18480109711/25011375000 | 1/1 | 184717/250000 | 1/1 | `(200091/250000, -18480109711/31250000000); (200091/250000, -695830805107/1000000000000); (556377/1000000, -489766591991/1000000000000); (556377/1000000, -528041433181/1000000000000); (200091/250000, -356438167991/500000000000); (200091/250000, -817343630337/1000000000000); (556377/1000000, -611279417221/1000000000000); (556377/1000000, -649554258411/1000000000000); (200091/250000, -154063242673/250000000000); (200091/250000, -104173465259/125000000000); (556377/1000000, -514656051931/1000000000000); (556377/1000000, -332799175073/500000000000)` |
| 1 | 41 | a | 3197/25000 | 510947/1000000 | 3197/25000 | 25535021747/50022750000 | 3197/25000 | 510469/1000000 | `(-385069/1000000, -32074275993/1000000000000); (-70541/500000, -212348462709/1000000000000); (-385069/1000000, 139006898777/1000000000000); (-70541/500000, -41267287939/1000000000000); (-200091/250000, 7247896747/62500000000); (-556377/1000000, -16076959691/250000000000); (-200091/250000, 25535021747/62500000000); (-556377/1000000, 57071540309/250000000000); (-385069/1000000, -16841124789/200000000000); (-70541/500000, -65638524789/200000000000); (-385069/1000000, 3475022033/40000000000); (-70541/500000, -6284457967/40000000000); (-200091/250000, 12767/200000); (-556377/1000000, -22519/125000); (-200091/250000, 356429/1000000); (-556377/1000000, 56221/500000)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 84:2 | ABE | lo | 93/1000 | occupants none |
| 84:14 | ABS | lo | 93/1000 | occupants none |
| 84:20 | ACH | lo | 306273/1000000 | earlier 83:515; ACH; lo; 306273/1000000 |
| 84:28 | ACS | lo | 69929/500000 | earlier 83:506; ACS; lo; 69929/500000 |
| 84:32 | AEH | lo | 306273/1000000 | earlier 83:517; AEH; lo; 306273/1000000 |
| 84:44 | AFP | lo | 93/1000 | occupants none |
| 84:46 | AFQ | lo | 78247/250000 | earlier 83:615; AFQ; lo; 78247/250000 |
| 84:48 | AFR | lo | 330823/1000000 | earlier 83:286; AFR; lo; 330823/1000000 |
| 84:49 | AFR | hi | 50435417727/62500000000 | vertex maximum 50435417727/62500000000 |
| 84:52 | AHP | lo | 120273/1000000 | earlier 83:500; AHP; lo; 120273/1000000 |
| 84:62 | APR | lo | 93/1000 | occupants none |
| 84:68 | AQS | lo | 19107/125000 | earlier 83:611; AQS; lo; 19107/125000 |
| 84:74 | BCF | lo | 15809/50000 | earlier 83:635; BCF; lo; 15809/50000 |
| 84:76 | BCH | lo | 15809/50000 | earlier 83:636; BCH; lo; 15809/50000 |
| 84:77 | BCH | hi | 727239/1000000 | vertex maximum 727239/1000000 |
| 84:78 | BCP | lo | 6509/50000 | earlier 83:634; BCP; lo; 6509/50000 |
| 84:84 | BCS | lo | 28349/200000 | earlier 83:627; BCS; lo; 28349/200000 |
| 84:86 | BEF | lo | 371311/1000000 | earlier 83:616; BEF; lo; 371311/1000000 |
| 84:92 | BEQ | lo | 93/1000 | occupants none |
| 84:94 | BER | lo | 153497/500000 | earlier 83:629; BER; lo; 153497/500000 |
| 84:100 | BFP | lo | 93/1000 | occupants none |
| 84:102 | BFQ | lo | 71757/200000 | earlier 83:630; BFQ; lo; 71757/200000 |
| 84:106 | BFS | lo | 169369/500000 | earlier 83:598; BFS; lo; 169369/500000 |
| 84:108 | BHP | lo | 93/1000 | occupants none |
| 84:126 | BRS | lo | 93/1000 | occupants none |
| 84:128 | CEF | lo | 93/1000 | occupants none |
| 84:148 | CFS | lo | 93/1000 | occupants none |
| 84:150 | CHP | lo | 93/1000 | occupants none |
| 84:156 | CHS | lo | 52381/500000 | earlier 83:156; CHS; lo; 52381/500000 |
| 84:162 | CPS | lo | 52583/500000 | earlier 83:553; CPS; lo; 52583/500000 |
| 84:168 | EFH | lo | 93/1000 | occupants none |
| 84:170 | EFP | lo | 12859/100000 | earlier 83:608; EFP; lo; 12859/100000 |
| 84:175 | EFR | hi | 130341137577/250000000000 | vertex maximum 130341137577/250000000000 |
| 84:176 | EFS | lo | 93/1000 | occupants none |
| 84:193 | EQR | hi | 76672908651/250000000000 | vertex maximum 76672908651/250000000000 |
| 84:196 | ERS | lo | 93/1000 | occupants none |
| 84:204 | FHS | lo | 93/1000 | occupants none |
| 84:206 | FPQ | lo | 31747/250000 | earlier 83:609; FPQ; lo; 31747/250000 |
| 84:208 | FPR | lo | 144823/1000000 | earlier 83:247; FPR; lo; 144823/1000000 |
| 84:210 | FPS | lo | 4977/40000 | earlier 83:580; FPS; lo; 4977/40000 |
| 84:216 | FRS | lo | 93/1000 | occupants none |
| 84:217 | FRS | hi | 67073/200000 | earlier 83:217; FRS; hi; 67073/200000 |
| 84:226 | HQS | lo | 55629/500000 | earlier 83:226; HQS; lo; 55629/500000 |
| 84:232 | PQS | lo | 117817/1000000 | earlier 83:585; PQS; lo; 117817/1000000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 826 | plu | BES * EFR = BEF * ERS + BER * EFS | circuit EBFRS |
| 2213 | support | BER * EQR >= 1023/1000 * (BER - BQR) | pentagon RBCQE |
| 2782 | bary | outer AFR; fans FPR, APR, AFP; target BEP; sign 1; vertices ABE 1; BEF 1; BER 1 | container AFR; inner P; line BE |
| 2788 | bary | outer AFR; fans FPR, APR, AFP; target BPS; sign 1; vertices ABS 1; BFS 1; BRS 1 | container AFR; inner P; line BS |
| 3056 | bary | outer BCH; fans CHP, BHP, BCP; target EFP; sign 1; vertices BEF 1; CEF 1; EFH 1 | container BCH; inner P; line EF |
| 3066 | bary | outer BCH; fans CHP, BHP, BCP; target FPS; sign -1; vertices BFS -1; CFS -1; FHS -1 | container BCH; inner P; line FS |
| 3481 | bary | outer EFR; fans FRS, ERS, EFS; target BQS; sign 1; vertices BEQ 1; BFQ 1; BQR 1 | container EFR; inner S; line BQ |
| 3693 | four | 1 * BEF + -1 * BFP + -1 * BEP + -1 * EFP = 0 | vertices BEFP |
| 3706 | four | 1 * BER + -1 * BRS + -1 * BES + -1 * ERS = 0 | vertices BERS |
| 3713 | four | -1 * BFP + -1 * BPS + 1 * BFS + -1 * FPS = 0 | vertices BFPS |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 84:236 | BEP | lo | 18717/125000 | 2517338887037/16811805909000 | 2782 | 84:49, 84:208, 84:62, 84:44, 84:2, 84:86, 84:94 |
| 84:237 | BPS | lo | 3033/25000 | 2039615324537/16811805909000 | 2788 | 84:49, 84:208, 84:62, 84:44, 84:14, 84:106, 84:126 |
| 84:240 | BEF | lo | 185663/500000 | 185663/500000 | 3693 | 84:100, 84:236, 84:170 |
| 84:242 | BFS | lo | 67749/200000 | 67749/200000 | 3713 | 84:100, 84:237, 84:210 |
| 84:244 | BES | lo | 120997/1000000 | 5256980000/43447045859 | 826 | 84:240, 84:196, 84:94, 84:176, 84:175 |
| 84:245 | BEP | lo | 74869/500000 | 2517367949537/16811805909000 | 2782 | 84:49, 84:208, 84:62, 84:44, 84:2, 84:240, 84:94 |
| 84:246 | BPS | lo | 121321/1000000 | 679876295679/5603935303000 | 2788 | 84:49, 84:208, 84:62, 84:44, 84:14, 84:242, 84:126 |
| 84:247 | EFP | lo | 8037/62500 | 6234503/48482600 | 3056 | 84:77, 84:150, 84:108, 84:78, 84:240, 84:128, 84:168 |
| 84:248 | FPS | lo | 62213/500000 | 3770313/30301625 | 3066 | 84:77, 84:150, 84:108, 84:78, 84:242, 84:148, 84:204 |
| 84:252 | BEF | lo | 37133/100000 | 37133/100000 | 3693 | 84:100, 84:245, 84:247 |
| 84:254 | BER | lo | 306997/1000000 | 306997/1000000 | 3706 | 84:126, 84:244, 84:196 |
| 84:255 | BFS | lo | 338747/1000000 | 338747/1000000 | 3713 | 84:100, 84:246, 84:248 |
| 84:258 | BES | lo | 60499/500000 | 5257034250/43447045859 | 826 | 84:252, 84:196, 84:254, 84:176, 84:175 |
| 84:259 | BQR | lo | 2687/12500 | 18325376604289651/85250000000000000 | 2213 | 84:254, 84:193 |
| 84:260 | EFP | lo | 128593/1000000 | 31172639/242413000 | 3056 | 84:77, 84:150, 84:108, 84:78, 84:252, 84:128, 84:168 |
| 84:261 | BQS | lo | 32433/200000 | 7045599014887/43447045859000 | 3481 | 84:175, 84:216, 84:196, 84:176, 84:92, 84:102, 84:259 |
| 84:264 | BEF | lo | 371331/1000000 | 371331/1000000 | 3693 | 84:100, 84:245, 84:260 |
| 84:265 | BER | lo | 153499/500000 | 153499/500000 | 3706 | 84:126, 84:258, 84:196 |
| 84:266 | BES | lo | 120999/1000000 | 5257049750/43447045859 | 826 | 84:264, 84:196, 84:265, 84:176, 84:175 |
| 84:268 | BEP | lo | 149739/1000000 | 2517385387037/16811805909000 | 2782 | 84:49, 84:208, 84:62, 84:44, 84:2, 84:264, 84:265 |
| 84:269 | BEF | lo | 92833/250000 | 92833/250000 | 3693 | 84:100, 84:268, 84:260 |
| 84:271 | BER | lo | 306999/1000000 | 306999/1000000 | 3706 | 84:126, 84:266, 84:196 |
