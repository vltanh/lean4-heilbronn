# BRTT convex: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 75

| Property | Value |
| --- | --- |
| Scope | root/ACP+/HBP+/APQ-/AEP+/AFP-/APR-/APS+/BFP-/BPS- |
| Packet | forest:root/ACP+/HBP+/APQ-/AEP+/AFP-/APR-/APS+/BFP-/BPS- |
| Index | 2 |
| Context | 25 |
| Box present | yes |
| Coarse version | 2 |
| Parent box | 74 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 33969/250000 | 259211/500000 | 33969/250000 | 259211/500000 |
| b | 107623/1000000 | 32/125 | 107623/1000000 | 32/125 |
| c | 135501/250000 | 198017/250000 | 135501/250000 | 198017/250000 |
| e | 13027/31250 | 18223/31250 | 13027/31250 | 18223/31250 |
| f | 107623/1000000 | 36207/100000 | 107623/1000000 | 36207/100000 |
| h | 684289/1000000 | 1/1 | 684289/1000000 | 1/1 |
| p | 200623/1000000 | 441031/1000000 | 200623/1000000 | 441031/1000000 |
| q | 325777/1000000 | 39331/62500 | 325777/1000000 | 39331/62500 |
| u | 808203/1000000 | 1/1 | 808203/1000000 | 1/1 |
| v | 33969/250000 | 190039/500000 | 33969/250000 | 190039/500000 |
| r | 581301/1000000 | 194229/200000 | 581303/1000000 | 194229/200000 |
| w | 36973/62500 | 429739/500000 | 36973/62500 | 429739/500000 |
| j | 415869/1000000 | 769437/1000000 | 415869/1000000 | 769437/1000000 |
| k | 730521/1000000 | 1/1 | 730521/1000000 | 1/1 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 937 | AREA_lo_ARS | brtt ["earlier-area",{"direction":"lo","ref":"74:306","triangle":"ARS","value":"31281/100000"}] | `1/1 * r * k + -1/1 * a * r + -1/1 * w * j + 1/1 * a * j + -31281/100000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 937 | r | 581301/1000000 | 194229/200000 | 125579544087/216031000000 | 194229/200000 | 581303/1000000 | 194229/200000 | `(118929/200000, -125579544087/250000000000); (212099/1000000, -171614576937/500000000000); (118929/200000, -306866820069/500000000000); (212099/1000000, -7103822151/15625000000); (118929/200000, -165859071351/250000000000); (212099/1000000, -184545619401/500000000000); (118929/200000, -434788076037/500000000000); (212099/1000000, -8987986023/15625000000); (216031/250000, -125579544087/250000000000); (240789/500000, -171614576937/500000000000); (216031/250000, -306866820069/500000000000); (240789/500000, -7103822151/15625000000); (216031/250000, -165859071351/250000000000); (240789/500000, -184545619401/500000000000); (216031/250000, -434788076037/500000000000); (240789/500000, -8987986023/15625000000)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 75:12 | ABR | lo | 50907/500000 | earlier 74:245; ABR; lo; 50907/500000 |
| 75:20 | ACH | lo | 154123/500000 | earlier 74:20; ACH; lo; 154123/500000 |
| 75:26 | ACR | lo | 50907/500000 | earlier 74:247; ACR; lo; 50907/500000 |
| 75:32 | AEH | lo | 154123/500000 | earlier 74:32; AEH; lo; 154123/500000 |
| 75:38 | AER | lo | 27557/250000 | earlier 74:322; AER; lo; 27557/250000 |
| 75:40 | AES | lo | 311421/1000000 | earlier 74:317; AES; lo; 311421/1000000 |
| 75:46 | AFQ | lo | 314267/1000000 | earlier 74:305; AFQ; lo; 314267/1000000 |
| 75:48 | AFR | lo | 154123/500000 | earlier 74:48; AFR; lo; 154123/500000 |
| 75:50 | AFS | lo | 30181/200000 | earlier 74:246; AFS; lo; 30181/200000 |
| 75:52 | AHP | lo | 61123/500000 | earlier 74:52; AHP; lo; 61123/500000 |
| 75:54 | AHQ | lo | 154123/500000 | earlier 74:54; AHQ; lo; 154123/500000 |
| 75:56 | AHR | lo | 154123/500000 | earlier 74:56; AHR; lo; 154123/500000 |
| 75:58 | AHS | lo | 128561/1000000 | earlier 74:266; AHS; lo; 128561/1000000 |
| 75:70 | ARS | lo | 31281/100000 | earlier 74:306; ARS; lo; 31281/100000 |
| 75:74 | BCF | lo | 75953/250000 | earlier 74:283; BCF; lo; 75953/250000 |
| 75:78 | BCP | lo | 29453/250000 | earlier 74:274; BCP; lo; 29453/250000 |
| 75:86 | BEF | lo | 42973/125000 | earlier 74:318; BEF; lo; 42973/125000 |
| 75:88 | BEH | lo | 308517/1000000 | earlier 74:319; BEH; lo; 308517/1000000 |
| 75:90 | BEP | lo | 122517/1000000 | earlier 74:315; BEP; lo; 122517/1000000 |
| 75:96 | BES | lo | 60689/500000 | earlier 74:326; BES; lo; 60689/500000 |
| 75:104 | BFR | lo | 154123/500000 | earlier 74:104; BFR; lo; 154123/500000 |
| 75:106 | BFS | lo | 154123/500000 | earlier 74:106; BFS; lo; 154123/500000 |
| 75:110 | BHQ | lo | 308517/1000000 | earlier 74:321; BHQ; lo; 308517/1000000 |
| 75:124 | BQS | lo | 60689/500000 | earlier 74:325; BQS; lo; 60689/500000 |
| 75:126 | BRS | lo | 103529/1000000 | earlier 74:311; BRS; lo; 103529/1000000 |
| 75:128 | CEF | lo | 4071/40000 | earlier 74:323; CEF; lo; 4071/40000 |
| 75:130 | CEH | lo | 93557/1000000 | earlier 74:291; CEH; lo; 93557/1000000 |
| 75:132 | CEP | lo | 94233/1000000 | earlier 74:327; CEP; lo; 94233/1000000 |
| 75:158 | CPQ | lo | 94233/1000000 | earlier 74:328; CPQ; lo; 94233/1000000 |
| 75:160 | CPR | lo | 94569/1000000 | earlier 74:249; CPR; lo; 94569/1000000 |
| 75:181 | EHP | hi | 295053/500000 | earlier 74:256; EHP; hi; 295053/500000 |
| 75:192 | EPS | lo | 125421/1000000 | earlier 74:314; EPS; lo; 125421/1000000 |
| 75:210 | FPR | lo | 61123/500000 | earlier 74:210; FPR; lo; 61123/500000 |
| 75:211 | FPR | hi | 27531/50000 | earlier 74:257; FPR; hi; 27531/50000 |
| 75:212 | FPS | lo | 61123/500000 | earlier 74:212; FPS; lo; 61123/500000 |
| 75:223 | HPR | hi | 292811/500000 | earlier 74:258; HPR; hi; 292811/500000 |
| 75:232 | PQR | lo | 9647/100000 | earlier 74:251; PQR; lo; 9647/100000 |
| 75:234 | PQS | lo | 61123/500000 | earlier 74:234; PQS; lo; 61123/500000 |
| 75:236 | PRS | lo | 12681/100000 | earlier 74:297; PRS; lo; 12681/100000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |


## Stage 76

| Property | Value |
| --- | --- |
| Scope | root/ACP+/HBP+/APQ-/AEP+/AFP-/APR-/APS+/BFP-/BPS- |
| Packet | forest:root/ACP+/HBP+/APQ-/AEP+/AFP-/APR-/APS+/BFP-/BPS- |
| Index | 3 |
| Context | 25 |
| Box present | yes |
| Coarse version | 2 |
| Parent box | 75 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 33969/250000 | 259211/500000 | 33969/250000 | 259211/500000 |
| b | 107623/1000000 | 32/125 | 107623/1000000 | 32/125 |
| c | 135501/250000 | 198017/250000 | 135501/250000 | 198017/250000 |
| e | 13027/31250 | 18223/31250 | 13027/31250 | 18223/31250 |
| f | 107623/1000000 | 36207/100000 | 107623/1000000 | 36207/100000 |
| h | 684289/1000000 | 1/1 | 684289/1000000 | 1/1 |
| p | 200623/1000000 | 441031/1000000 | 200623/1000000 | 441031/1000000 |
| q | 325777/1000000 | 39331/62500 | 325777/1000000 | 39331/62500 |
| u | 808203/1000000 | 1/1 | 808203/1000000 | 1/1 |
| v | 33969/250000 | 190039/500000 | 33969/250000 | 190039/500000 |
| r | 581303/1000000 | 194229/200000 | 581303/1000000 | 194229/200000 |
| w | 36973/62500 | 429739/500000 | 36973/62500 | 429739/500000 |
| j | 415869/1000000 | 769437/1000000 | 415869/1000000 | 769437/1000000 |
| k | 730521/1000000 | 1/1 | 730521/1000000 | 1/1 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 2 | AC_ABC_ABC_1 | brtt ["anchor-cap","ABC","ABC",1,[]] | `-93/1000 + 1/1 * c + -1/1 * b` |
| 4 | AC_ABE_ABE_0 | brtt ["anchor-cap","ABE","ABE",0,[]] | `-93/1000 + 1/1 * e` |
| 20 | AC_ACP_ACF_0 | brtt ["anchor-cap","ACP","ACF",0,[]] | `-93/1000 + 1/1 * c` |
| 27 | AC_AEP_AEF_0 | brtt ["anchor-cap","AEP","AEF",0,[]] | `907/1000 + -1/1 * a` |
| 49 | AC_BCH_BCH_0 | brtt ["anchor-cap","BCH","BCH",0,["P"]] | `-279/1000 + 1/1 * h` |
| 51 | AC_BCP_BCH_0 | brtt ["anchor-cap","BCP","BCH",0,[]] | `-93/1000 + 1/1 * h` |
| 59 | AC_BEP_BEF_0 | brtt ["anchor-cap","BEP","BEF",0,[]] | `907/1000 + -1/1 * b` |
| 79 | AC_CEF_CEF_0 | brtt ["anchor-cap","CEF","CEF",0,[]] | `907/1000 + -1/1 * f` |
| 101 | AC_EFH_EFH_0 | brtt ["anchor-cap","EFH","EFH",0,[]] | `907/1000 + -1/1 * e` |
| 136 | ha | brtt ["contact-order","ha"] | `1/1 * h + -1/1 * a` |
| 137 | ea | brtt ["contact-order","ea"] | `1/1 * e + -1/1 * a` |
| 139 | fb | brtt ["contact-order","fb"] | `1/1 * f + -1/1 * b` |
| 141 | lower-area | brtt ["endpoint-lower","135501/250000"] | `1/1 * c * h + -135501/250000` |
| 143 | upper-quad | brtt ["upper-quad","BRTT"] | `407/500 + -1/1 * c * h + 1/1 * f * h + 1/1 * c * e + -1/1 * e * f` |
| 144 | top-area | brtt ["top-hull","+"] | `157/250 + -1/1 * f + -1/1 * e + 1/1 * e * f` |
| 145 | right-support | brtt ["right-support","BCQE",null,"93/250"] | `1/1 * e + -1/1 * b * e + -93/250` |
| 146 | top-right-budget | brtt ["top-right-budget","93/250"] | `-93/250 + -1/1 * b + 1/1 * f + 1/1 * e + -1/1 * e * f` |
| 147 | right-x | brtt ["right-clearance","Q","x"] | `1/1 * u + -1/1 * c + -93/1000` |
| 148 | right-y | brtt ["right-clearance","Q","y"] | `1/1 * e + -1/1 * v + -93/1000` |
| 149 | right-px | brtt ["right-clearance","Q","px"] | `1/1 * e * u + -1/1 * c * e + -93/1000` |
| 150 | right-py | brtt ["right-clearance","Q","py"] | `1/1 * e + -1/1 * v + -1/1 * c * e + 1/1 * c * v + -93/1000` |
| 153 | central-sum | brtt ["central-sum","198017/250000"] | `174767/198017 + -1/1 * p + -1/1 * q` |
| 154 | central-p-floor | brtt ["central-floor",0,"83671263/684445000"] | `1/1 * p + -83671263/684445000` |
| 155 | central-q-floor | brtt ["central-floor",1,"6602279250/42777810527"] | `1/1 * q + -6602279250/42777810527` |
| 156 | central-x | brtt ["central-lower-x"] | `1/1 * c * h * p + -1/1 * b * h * p + -93/1000 * c + -93/1000 * b` |
| 157 | central-y | brtt ["central-lower-y"] | `1/1 * c * h * q + -1/1 * a * c * q + -93/1000 * h + -93/1000 * a` |
| 460 | SUP_ABH_AFH_ABF | brtt ["support-envelope",["pentagon","ABCFH"],"ABH","AFH","ABF","432062/1953125"] | `432062/1953125 * f * h + 12527879/15625000 * a * f + -1023/1000 * b * h + 1023/1000 * b` |
| 467 | SUP_ABF_AFR_ABR | brtt ["support-envelope",["pentagon","ABCRF"],"ABF","AFR","ABR","15549451077/50000000000"] | `-15549451077/50000000000 * f * w + -35600548923/50000000000 * a * f + 15549451077/50000000000 * r + 35600548923/50000000000 * a * r + -1023/1000 * b + 1023/1000 * b * w` |
| 468 | SUP_BCR_ABC_ACR | brtt ["support-envelope",["pentagon","CRFAB"],"BCR","ABC","ACR","58826541971/100000000000"] | `-58826541971/100000000000 * a * b + -43473458029/100000000000 * a * c + 1023/1000 * b * w + 1023/1000 * a * r` |
| 496 | SUP_ABS_ARS_ABR | brtt ["support-envelope",["pentagon","ABCRS"],"ABS","ARS","ABR","261088518207/500000000000"] | `261088518207/500000000000 * r * k + 250411481793/500000000000 * a * r + -261088518207/500000000000 * w * j + -250411481793/500000000000 * a * j + -1023/1000 * b * k + 1023/1000 * b * w` |
| 504 | SUP_BEQ_ABQ_AEQ | brtt ["support-envelope",["pentagon","QEFAB"],"BEQ","ABQ","AEQ","19956226851/50000000000"] | `-31193773149/50000000000 * b * v + -19956226851/50000000000 * a * b + -31193773149/50000000000 * a * u + 1023/1000 * b * e + 1023/1000 * a` |
| 508 | SUP_BER_ABE_AER | brtt ["support-envelope",["pentagon","ERFAB"],"BER","ABE","AER","284759129843/500000000000"] | `-226740870157/500000000000 * b * e + -284759129843/500000000000 * a * b + -226740870157/500000000000 * a + 1023/1000 * b * w + 1023/1000 * a * r` |
| 525 | SUP_EPR_BER_BPR | brtt ["support-envelope",["pentagon","RPABE"],"EPR","BER","BPR","391953305117/1000000000000"] | `-631046694883/1000000000000 * w + 631046694883/1000000000000 * b * w + 631046694883/1000000000000 * e * r + 391953305117/1000000000000 * b * e + -1023/1000 * e * p + 1023/1000 * q + -1023/1000 * b * q` |
| 609 | SUP_FHQ_CFQ_CFH | brtt ["support-envelope",["pentagon","FHACQ"],"FHQ","CFQ","CFH","51427489491/100000000000"] | `50872510509/100000000000 * f * v + 51427489491/100000000000 * c * v + -50872510509/100000000000 * u + 50872510509/100000000000 * c + 1023/1000 * h * u + -1023/1000 * c * h` |
| 662 | SUP_AHP_AFH_AFP | brtt ["support-envelope",["pentagon","APSFH"],"AHP","AFH","AFP","95276367961/250000000000"] | `95276367961/250000000000 * f * h + 160473632039/250000000000 * a * f + -1023/1000 * h * p + -1023/1000 * f * q + 1023/1000 * p` |
| 710 | SUP_BCS_BES_BCE | brtt ["support-envelope",["pentagon","BCQES"],"BCS","BES","BCE","136889/200000"] | `136889/200000 * k + 67711/200000 * b * k + -136889/200000 * e * j + -67711/200000 * b * e + -1023/1000 * c * k + 1023/1000 * c * e` |
| 714 | SUP_BCE_BCS_CES | brtt ["support-envelope",["pentagon","CERSB"],"BCE","BCS","CES","2494528247/6250000000"] | `-3899221753/6250000000 * c * k + -2494528247/6250000000 * b * k + 1023/1000 * b * e + 1023/1000 * k + -1023/1000 * e * j` |
| 773 | SUP_CFH_FHR_CHR | brtt ["support-envelope",["pentagon","HCERF"],"CFH","FHR","CHR","248912549289/500000000000"] | `-248912549289/500000000000 * f * w + 262587450711/500000000000 * h * r + -262587450711/500000000000 * f * h + 248912549289/500000000000 * r + -1023/1000 * c + 1023/1000 * c * w` |
| 784 | SUP_CES_CEP_EPS | brtt ["support-envelope",["pentagon","ESFPC"],"CES","CEP","EPS","3322186621/6250000000"] | `-3071563379/6250000000 * q + -3322186621/6250000000 * c * q + 3071563379/6250000000 * e * p + -3071563379/6250000000 * c * e + 1023/1000 * c * k + -1023/1000 * p * k + 1023/1000 * q * j` |
| 791 | SUP_CFS_EFS_CEF | brtt ["support-envelope",["pentagon","FCQES"],"CFS","EFS","CEF","330907/500000"] | `180593/500000 * f * k + -180593/500000 * e * f + 330907/500000 * k + -180593/500000 * j + 180593/500000 + -330907/500000 * e * j + -1023/1000 * c * k + 1023/1000 * c * e` |
| 796 | SUP_EHP_EHQ_HPQ | brtt ["support-envelope",["pentagon","HPCQE"],"EHP","EHQ","HPQ","18455952929/31250000000"] | `-18455952929/31250000000 * v + 13512797071/31250000000 * h * u + -13512797071/31250000000 * h + 18455952929/31250000000 * e * u + 1023/1000 * q + -1023/1000 * e * p + 1023/1000 * p * v + -1023/1000 * q * u` |
| 814 | SUP_CQS_CRS_CQR | brtt ["support-envelope",["pentagon","CQERS"],"CQS","CRS","CQR","50593713853/100000000000"] | `50593713853/100000000000 * r * k + 51706286147/100000000000 * c * k + -50593713853/100000000000 * w * j + -51706286147/100000000000 * c * w + -1023/1000 * u * k + 1023/1000 * v * j + 1023/1000 * u * w + -1023/1000 * v * r` |
| 846 | SUP_EPS_EHP_EHS | brtt ["support-envelope",["pentagon","ESFHP"],"EPS","EHP","EHS","519352246669/1000000000000"] | `503647753331/1000000000000 * q + -519352246669/1000000000000 * h * p + -503647753331/1000000000000 * h + -503647753331/1000000000000 * e * p + 1023/1000 * p * k + -1023/1000 * q * j + 1023/1000 * h * j` |
| 849 | SUP_FHQ_FHR_HQR | brtt ["support-envelope",["pentagon","HQERF"],"FHQ","FHR","HQR","51427489491/100000000000"] | `-51427489491/100000000000 * f * w + 50872510509/100000000000 * h * r + -50872510509/100000000000 * f * h + 51427489491/100000000000 * r + 1023/1000 * f * v + -1023/1000 * u + 1023/1000 * u * w + -1023/1000 * v * r` |
| 851 | SUP_EQS_EHQ_EHS | brtt ["support-envelope",["pentagon","ESFHQ"],"EQS","EHQ","EHS","85302923917/250000000000"] | `170447076083/250000000000 * v + -85302923917/250000000000 * h * u + -170447076083/250000000000 * h + -170447076083/250000000000 * e * u + 1023/1000 * u * k + -1023/1000 * v * j + 1023/1000 * h * j` |
| 861 | SUP_EPR_EFP_EFR | brtt ["support-envelope",["pentagon","ERSFP"],"EPR","EFP","EFR","391953305117/1000000000000"] | `391953305117/1000000000000 * f * q + 631046694883/1000000000000 * e * f + 631046694883/1000000000000 * q + -391953305117/1000000000000 * p + -631046694883/1000000000000 + -631046694883/1000000000000 * e * p + 1023/1000 * p * w + -1023/1000 * q * r + -1023/1000 * f * w + 1023/1000 * r` |
| 863 | SUP_EFP_FPS_EPS | brtt ["support-envelope",["pentagon","PERSF"],"EFP","FPS","EPS","562892746071/1000000000000"] | `-460107253929/1000000000000 * p * k + 460107253929/1000000000000 * p + -562892746071/1000000000000 * f * k + 460107253929/1000000000000 * q * j + -460107253929/1000000000000 * f * q + 562892746071/1000000000000 * j + 1023/1000 * e * f + -1023/1000 + 1023/1000 * k + -1023/1000 * e * j` |
| 866 | SUP_EFQ_FQS_EQS | brtt ["support-envelope",["pentagon","QERSF"],"EFQ","FQS","EQS","119769450407/250000000000"] | `-135980549593/250000000000 * u * k + 135980549593/250000000000 * u + -119769450407/250000000000 * f * k + 135980549593/250000000000 * v * j + -135980549593/250000000000 * f * v + 119769450407/250000000000 * j + 1023/1000 * e * f + -1023/1000 + 1023/1000 * k + -1023/1000 * e * j` |
| 871 | SUP_EHQ_HQS_EQS | brtt ["support-envelope",["pentagon","QERSH"],"EHQ","HQS","EQS","16475414519/31250000000"] | `-15493335481/31250000000 * u * k + 15493335481/31250000000 * h * u + 15493335481/31250000000 * v * j + 16475414519/31250000000 * h * j + -1023/1000 * h + 1023/1000 * k + -1023/1000 * e * j` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |


### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 76:0 | ABC | lo | 93/1000 | occupants none |
| 76:1 | ABC | hi | 35483134579/100000000000 | vertex maximum 35483134579/100000000000 |
| 76:2 | ABE | lo | 93/1000 | occupants none |
| 76:3 | ABE | hi | 33436799/62500000 | vertex maximum 33436799/62500000 |
| 76:4 | ABF | lo | 93/1000 | occupants none |
| 76:6 | ABH | lo | 93/1000 | occupants none |
| 76:7 | ABH | hi | 432062/1953125 | vertex maximum 432062/1953125 |
| 76:8 | ABP | lo | 93/1000 | occupants none |
| 76:10 | ABQ | lo | 93/1000 | occupants none |
| 76:11 | ABQ | hi | 62941625461/125000000000 | vertex maximum 62941625461/125000000000 |
| 76:12 | ABR | lo | 50907/500000 | earlier 75:12; ABR; lo; 50907/500000 |
| 76:13 | ABR | hi | 59077326919/100000000000 | vertex maximum 59077326919/100000000000 |
| 76:14 | ABS | lo | 279/1000 | occupants P |
| 76:17 | ACE | hi | 71209986069/125000000000 | vertex maximum 71209986069/125000000000 |
| 76:19 | ACF | hi | 91705198969/125000000000 | vertex maximum 91705198969/125000000000 |
| 76:20 | ACH | lo | 154123/500000 | earlier 75:20; ACH; lo; 154123/500000 |
| 76:22 | ACP | lo | 93/1000 | occupants none |
| 76:24 | ACQ | lo | 93/1000 | occupants none |
| 76:25 | ACQ | hi | 13857468707/31250000000 | vertex maximum 13857468707/31250000000 |
| 76:26 | ACR | lo | 50907/500000 | earlier 75:26; ACR; lo; 50907/500000 |
| 76:27 | ACR | hi | 386801238499/500000000000 | vertex maximum 386801238499/500000000000 |
| 76:28 | ACS | lo | 279/1000 | occupants P |
| 76:29 | ACS | hi | 197248247561/250000000000 | vertex maximum 197248247561/250000000000 |
| 76:31 | AEF | hi | 208470807119/250000000000 | vertex maximum 208470807119/250000000000 |
| 76:32 | AEH | lo | 154123/500000 | earlier 75:32; AEH; lo; 154123/500000 |
| 76:33 | AEH | hi | 216031/250000 | vertex maximum 216031/250000 |
| 76:34 | AEP | lo | 93/1000 | occupants none |
| 76:35 | AEP | hi | 109261836119/250000000000 | vertex maximum 109261836119/250000000000 |
| 76:36 | AEQ | lo | 93/1000 | occupants none |
| 76:37 | AEQ | hi | 22363/50000 | vertex maximum 22363/50000 |
| 76:38 | AER | lo | 27557/250000 | earlier 75:38; AER; lo; 27557/250000 |
| 76:40 | AES | lo | 311421/1000000 | earlier 75:40; AES; lo; 311421/1000000 |
| 76:41 | AES | hi | 186817450357/250000000000 | vertex maximum 186817450357/250000000000 |
| 76:42 | AFH | lo | 93/1000 | occupants none |
| 76:43 | AFH | hi | 7821834417/25000000000 | vertex maximum 7821834417/25000000000 |
| 76:46 | AFQ | lo | 314267/1000000 | earlier 75:46; AFQ; lo; 314267/1000000 |
| 76:47 | AFQ | hi | 216031/250000 | vertex maximum 216031/250000 |
| 76:48 | AFR | lo | 154123/500000 | earlier 75:48; AFR; lo; 154123/500000 |
| 76:49 | AFR | hi | 98768345233/125000000000 | vertex maximum 98768345233/125000000000 |
| 76:50 | AFS | lo | 30181/200000 | earlier 75:50; AFS; lo; 30181/200000 |
| 76:52 | AHP | lo | 61123/500000 | earlier 75:52; AHP; lo; 61123/500000 |
| 76:53 | AHP | hi | 95276367961/250000000000 | vertex maximum 95276367961/250000000000 |
| 76:54 | AHQ | lo | 154123/500000 | earlier 75:54; AHQ; lo; 154123/500000 |
| 76:55 | AHQ | hi | 216031/250000 | vertex maximum 216031/250000 |
| 76:56 | AHR | lo | 154123/500000 | earlier 75:56; AHR; lo; 154123/500000 |
| 76:57 | AHR | hi | 41959485099/50000000000 | vertex maximum 41959485099/50000000000 |
| 76:58 | AHS | lo | 128561/1000000 | earlier 75:58; AHS; lo; 128561/1000000 |
| 76:59 | AHS | hi | 166222244547/250000000000 | vertex maximum 166222244547/250000000000 |
| 76:62 | APR | lo | 93/1000 | occupants none |
| 76:64 | APS | lo | 93/1000 | occupants none |
| 76:69 | AQS | hi | 216031/250000 | vertex maximum 216031/250000 |
| 76:70 | ARS | lo | 31281/100000 | earlier 75:70; ARS; lo; 31281/100000 |
| 76:71 | ARS | hi | 5075636919/7812500000 | vertex maximum 5075636919/7812500000 |
| 76:72 | BCE | lo | 93/1000 | occupants none |
| 76:73 | BCE | hi | 2494528247/6250000000 | vertex maximum 2494528247/6250000000 |
| 76:74 | BCF | lo | 75953/250000 | earlier 75:74; BCF; lo; 75953/250000 |
| 76:75 | BCF | hi | 136889/200000 | vertex maximum 136889/200000 |
| 76:77 | BCH | hi | 136889/200000 | vertex maximum 136889/200000 |
| 76:78 | BCP | lo | 29453/250000 | earlier 75:78; BCP; lo; 29453/250000 |
| 76:79 | BCP | hi | 5383981259/12500000000 | vertex maximum 5383981259/12500000000 |
| 76:80 | BCQ | lo | 93/1000 | occupants none |
| 76:82 | BCR | lo | 93/1000 | occupants none |
| 76:83 | BCR | hi | 58826541971/100000000000 | vertex maximum 58826541971/100000000000 |
| 76:85 | BCS | hi | 136889/200000 | vertex maximum 136889/200000 |
| 76:86 | BEF | lo | 42973/125000 | earlier 75:86; BEF; lo; 42973/125000 |
| 76:87 | BEF | hi | 892377/1000000 | vertex maximum 892377/1000000 |
| 76:88 | BEH | lo | 308517/1000000 | earlier 75:88; BEH; lo; 308517/1000000 |
| 76:89 | BEH | hi | 29847995179/31250000000 | vertex maximum 29847995179/31250000000 |
| 76:90 | BEP | lo | 122517/1000000 | earlier 75:90; BEP; lo; 122517/1000000 |
| 76:91 | BEP | hi | 32675057787/62500000000 | vertex maximum 32675057787/62500000000 |
| 76:92 | BEQ | lo | 93/1000 | occupants none |
| 76:94 | BER | lo | 93/1000 | occupants none |
| 76:95 | BER | hi | 284759129843/500000000000 | vertex maximum 284759129843/500000000000 |
| 76:96 | BES | lo | 60689/500000 | earlier 75:96; BES; lo; 60689/500000 |
| 76:97 | BES | hi | 372988447/488281250 | vertex maximum 372988447/488281250 |
| 76:98 | BFH | lo | 93/1000 | occupants none |
| 76:99 | BFH | hi | 36207/100000 | vertex maximum 36207/100000 |
| 76:100 | BFP | lo | 93/1000 | occupants none |
| 76:103 | BFQ | hi | 892377/1000000 | vertex maximum 892377/1000000 |
| 76:104 | BFR | lo | 154123/500000 | earlier 75:104; BFR; lo; 154123/500000 |
| 76:105 | BFR | hi | 431761/500000 | vertex maximum 431761/500000 |
| 76:106 | BFS | lo | 154123/500000 | earlier 75:106; BFS; lo; 154123/500000 |
| 76:107 | BFS | hi | 330907/500000 | vertex maximum 330907/500000 |
| 76:108 | BHP | lo | 93/1000 | occupants none |
| 76:109 | BHP | hi | 25070920213/62500000000 | vertex maximum 25070920213/62500000000 |
| 76:110 | BHQ | lo | 308517/1000000 | earlier 75:110; BHQ; lo; 308517/1000000 |
| 76:112 | BHR | lo | 279/1000 | occupants P |
| 76:113 | BHR | hi | 478010800397/500000000000 | vertex maximum 478010800397/500000000000 |
| 76:114 | BHS | lo | 279/1000 | occupants P |
| 76:118 | BPR | lo | 93/1000 | occupants none |
| 76:119 | BPR | hi | 248816600563/500000000000 | vertex maximum 248816600563/500000000000 |
| 76:120 | BPS | lo | 93/1000 | occupants none |
| 76:122 | BQR | lo | 93/1000 | occupants none |
| 76:124 | BQS | lo | 60689/500000 | earlier 75:124; BQS; lo; 60689/500000 |
| 76:126 | BRS | lo | 103529/1000000 | earlier 75:126; BRS; lo; 103529/1000000 |
| 76:127 | BRS | hi | 21286672821/31250000000 | vertex maximum 21286672821/31250000000 |
| 76:128 | CEF | lo | 4071/40000 | earlier 75:128; CEF; lo; 4071/40000 |
| 76:129 | CEF | hi | 22228099963/31250000000 | vertex maximum 22228099963/31250000000 |
| 76:130 | CEH | lo | 93557/1000000 | earlier 75:130; CEH; lo; 93557/1000000 |
| 76:131 | CEH | hi | 6047328473/7812500000 | vertex maximum 6047328473/7812500000 |
| 76:132 | CEP | lo | 94233/1000000 | earlier 75:132; CEP; lo; 94233/1000000 |
| 76:134 | CEQ | lo | 93/1000 | occupants none |
| 76:136 | CER | lo | 93/1000 | occupants none |
| 76:138 | CES | lo | 93/1000 | occupants none |
| 76:139 | CES | hi | 3322186621/6250000000 | vertex maximum 3322186621/6250000000 |
| 76:141 | CFH | hi | 248912549289/500000000000 | vertex maximum 248912549289/500000000000 |
| 76:142 | CFP | lo | 93/1000 | occupants none |
| 76:146 | CFR | lo | 93/1000 | occupants none |
| 76:147 | CFR | hi | 401240956559/500000000000 | vertex maximum 401240956559/500000000000 |
| 76:148 | CFS | lo | 93/1000 | occupants none |
| 76:149 | CFS | hi | 330907/500000 | vertex maximum 330907/500000 |
| 76:150 | CHP | lo | 93/1000 | occupants none |
| 76:153 | CHQ | hi | 82999974539/125000000000 | vertex maximum 82999974539/125000000000 |
| 76:154 | CHR | lo | 93/1000 | occupants none |
| 76:155 | CHR | hi | 111872689239/125000000000 | vertex maximum 111872689239/125000000000 |
| 76:156 | CHS | lo | 93/1000 | occupants none |
| 76:158 | CPQ | lo | 94233/1000000 | earlier 75:158; CPQ; lo; 94233/1000000 |
| 76:159 | CPQ | hi | 208983229267/500000000000 | vertex maximum 208983229267/500000000000 |
| 76:160 | CPR | lo | 94569/1000000 | earlier 75:160; CPR; lo; 94569/1000000 |
| 76:162 | CPS | lo | 93/1000 | occupants none |
| 76:164 | CQR | lo | 93/1000 | occupants none |
| 76:168 | CRS | lo | 93/1000 | occupants none |
| 76:169 | CRS | hi | 53755125753/100000000000 | vertex maximum 53755125753/100000000000 |
| 76:170 | EFH | lo | 93/1000 | occupants none |
| 76:171 | EFH | hi | 1650150279/4000000000 | vertex maximum 1650150279/4000000000 |
| 76:173 | EFP | hi | 562892746071/1000000000000 | vertex maximum 562892746071/1000000000000 |
| 76:176 | EFR | lo | 93/1000 | occupants none |
| 76:177 | EFR | hi | 189076082099/500000000000 | vertex maximum 189076082099/500000000000 |
| 76:178 | EFS | lo | 93/1000 | occupants none |
| 76:179 | EFS | hi | 6030118261/15625000000 | vertex maximum 6030118261/15625000000 |
| 76:180 | EHP | lo | 93/1000 | occupants none |
| 76:181 | EHP | hi | 295053/500000 | earlier 75:181; EHP; hi; 295053/500000 |
| 76:183 | EHQ | hi | 16475414519/31250000000 | vertex maximum 16475414519/31250000000 |
| 76:184 | EHR | lo | 93/1000 | occupants none |
| 76:185 | EHR | hi | 3479179613/8000000000 | vertex maximum 3479179613/8000000000 |
| 76:186 | EHS | lo | 93/1000 | occupants none |
| 76:187 | EHS | hi | 20859107589/40000000000 | vertex maximum 20859107589/40000000000 |
| 76:188 | EPQ | lo | 93/1000 | occupants none |
| 76:189 | EPQ | hi | 18319135327/50000000000 | vertex maximum 18319135327/50000000000 |
| 76:192 | EPS | lo | 125421/1000000 | earlier 75:192; EPS; lo; 125421/1000000 |
| 76:193 | EPS | hi | 519352246669/1000000000000 | vertex maximum 519352246669/1000000000000 |
| 76:194 | EQR | lo | 93/1000 | occupants none |
| 76:196 | EQS | lo | 93/1000 | occupants none |
| 76:197 | EQS | hi | 85302923917/250000000000 | vertex maximum 85302923917/250000000000 |
| 76:198 | ERS | lo | 93/1000 | occupants none |
| 76:200 | FHP | lo | 93/1000 | occupants none |
| 76:203 | FHQ | hi | 51427489491/100000000000 | vertex maximum 51427489491/100000000000 |
| 76:204 | FHR | lo | 93/1000 | occupants none |
| 76:205 | FHR | hi | 68034530313/200000000000 | vertex maximum 68034530313/200000000000 |
| 76:206 | FHS | lo | 93/1000 | occupants none |
| 76:210 | FPR | lo | 61123/500000 | earlier 75:210; FPR; lo; 61123/500000 |
| 76:211 | FPR | hi | 27531/50000 | earlier 75:211; FPR; hi; 27531/50000 |
| 76:212 | FPS | lo | 61123/500000 | earlier 75:212; FPS; lo; 61123/500000 |
| 76:217 | FQS | hi | 71486170117/125000000000 | vertex maximum 71486170117/125000000000 |
| 76:218 | FRS | lo | 93/1000 | occupants none |
| 76:219 | FRS | hi | 8447062989/31250000000 | vertex maximum 8447062989/31250000000 |
| 76:220 | HPQ | lo | 93/1000 | occupants none |
| 76:223 | HPR | hi | 292811/500000 | earlier 75:223; HPR; hi; 292811/500000 |
| 76:224 | HPS | lo | 93/1000 | occupants none |
| 76:228 | HQS | lo | 93/1000 | occupants none |
| 76:230 | HRS | lo | 93/1000 | occupants none |
| 76:231 | HRS | hi | 94486031793/250000000000 | vertex maximum 94486031793/250000000000 |
| 76:232 | PQR | lo | 9647/100000 | earlier 75:232; PQR; lo; 9647/100000 |
| 76:234 | PQS | lo | 61123/500000 | earlier 75:234; PQS; lo; 61123/500000 |
| 76:236 | PRS | lo | 12681/100000 | earlier 75:236; PRS; lo; 12681/100000 |
| 76:237 | PRS | hi | 23114660241/50000000000 | vertex maximum 23114660241/50000000000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |


### Coordinate certificate sources

| Source | Kind | Source witness | Polynomial |
| --- | --- | --- | --- |
| 0 | bound | `{"direction":"lo","ref":"76:0","triangle":"ABC","value":"93/1000"}` | `-1 * a * b + 1 * a * c + -93/1000` |
| 1 | bound | `{"direction":"hi","ref":"76:1","triangle":"ABC","value":"35483134579/100000000000"}` | `35483134579/100000000000 + 1 * a * b + -1 * a * c` |
| 2 | bound | `{"direction":"lo","ref":"76:2","triangle":"ABE","value":"93/1000"}` | `1 * b * e + -1 * a * b + 1 * a + -93/1000` |
| 3 | bound | `{"direction":"hi","ref":"76:3","triangle":"ABE","value":"33436799/62500000"}` | `33436799/62500000 + -1 * b * e + 1 * a * b + -1 * a` |
| 4 | bound | `{"direction":"lo","ref":"76:4","triangle":"ABF","value":"93/1000"}` | `1 * b + -1 * a * b + 1 * a * f + -93/1000` |
| 6 | bound | `{"direction":"lo","ref":"76:6","triangle":"ABH","value":"93/1000"}` | `1 * b * h + -1 * a * b + -93/1000` |
| 7 | bound | `{"direction":"hi","ref":"76:7","triangle":"ABH","value":"432062/1953125"}` | `432062/1953125 + -1 * b * h + 1 * a * b` |
| 8 | bound | `{"direction":"lo","ref":"76:8","triangle":"ABP","value":"93/1000"}` | `1 * b * q + -1 * a * b + 1 * a * p + -93/1000` |
| 10 | bound | `{"direction":"lo","ref":"76:10","triangle":"ABQ","value":"93/1000"}` | `1 * b * v + -1 * a * b + 1 * a * u + -93/1000` |
| 11 | bound | `{"direction":"hi","ref":"76:11","triangle":"ABQ","value":"62941625461/125000000000"}` | `62941625461/125000000000 + -1 * b * v + 1 * a * b + -1 * a * u` |
| 12 | bound | `{"direction":"lo","ref":"76:12","triangle":"ABR","value":"50907/500000"}` | `1 * b * w + -1 * a * b + 1 * a * r + -50907/500000` |
| 13 | bound | `{"direction":"hi","ref":"76:13","triangle":"ABR","value":"59077326919/100000000000"}` | `59077326919/100000000000 + -1 * b * w + 1 * a * b + -1 * a * r` |
| 14 | bound | `{"direction":"lo","ref":"76:14","triangle":"ABS","value":"279/1000"}` | `1 * b * k + -1 * a * b + 1 * a * j + -279/1000` |
| 17 | bound | `{"direction":"hi","ref":"76:17","triangle":"ACE","value":"71209986069/125000000000"}` | `71209986069/125000000000 + -1 * c * e + 1 * a * c + -1 * a` |
| 19 | bound | `{"direction":"hi","ref":"76:19","triangle":"ACF","value":"91705198969/125000000000"}` | `91705198969/125000000000 + -1 * c + 1 * a * c + -1 * a * f` |
| 20 | bound | `{"direction":"lo","ref":"76:20","triangle":"ACH","value":"154123/500000"}` | `1 * c * h + -1 * a * c + -154123/500000` |
| 22 | bound | `{"direction":"lo","ref":"76:22","triangle":"ACP","value":"93/1000"}` | `1 * c * q + -1 * a * c + 1 * a * p + -93/1000` |
| 24 | bound | `{"direction":"lo","ref":"76:24","triangle":"ACQ","value":"93/1000"}` | `1 * c * v + -1 * a * c + 1 * a * u + -93/1000` |
| 25 | bound | `{"direction":"hi","ref":"76:25","triangle":"ACQ","value":"13857468707/31250000000"}` | `13857468707/31250000000 + -1 * c * v + 1 * a * c + -1 * a * u` |
| 26 | bound | `{"direction":"lo","ref":"76:26","triangle":"ACR","value":"50907/500000"}` | `1 * c * w + -1 * a * c + 1 * a * r + -50907/500000` |
| 27 | bound | `{"direction":"hi","ref":"76:27","triangle":"ACR","value":"386801238499/500000000000"}` | `386801238499/500000000000 + -1 * c * w + 1 * a * c + -1 * a * r` |
| 28 | bound | `{"direction":"lo","ref":"76:28","triangle":"ACS","value":"279/1000"}` | `1 * c * k + -1 * a * c + 1 * a * j + -279/1000` |
| 29 | bound | `{"direction":"hi","ref":"76:29","triangle":"ACS","value":"197248247561/250000000000"}` | `197248247561/250000000000 + -1 * c * k + 1 * a * c + -1 * a * j` |
| 31 | bound | `{"direction":"hi","ref":"76:31","triangle":"AEF","value":"208470807119/250000000000"}` | `-41529192881/250000000000 + 1 * a + 1 * e * f + -1 * a * f` |
| 32 | bound | `{"direction":"lo","ref":"76:32","triangle":"AEH","value":"154123/500000"}` | `1 * h + -1 * a + -154123/500000` |
| 33 | bound | `{"direction":"hi","ref":"76:33","triangle":"AEH","value":"216031/250000"}` | `216031/250000 + -1 * h + 1 * a` |
| 34 | bound | `{"direction":"lo","ref":"76:34","triangle":"AEP","value":"93/1000"}` | `1 * q + -1 * a + -1 * e * p + 1 * a * p + -93/1000` |
| 35 | bound | `{"direction":"hi","ref":"76:35","triangle":"AEP","value":"109261836119/250000000000"}` | `109261836119/250000000000 + -1 * q + 1 * a + 1 * e * p + -1 * a * p` |
| 36 | bound | `{"direction":"lo","ref":"76:36","triangle":"AEQ","value":"93/1000"}` | `-1 * v + 1 * a + 1 * e * u + -1 * a * u + -93/1000` |
| 37 | bound | `{"direction":"hi","ref":"76:37","triangle":"AEQ","value":"22363/50000"}` | `22363/50000 + 1 * v + -1 * a + -1 * e * u + 1 * a * u` |
| 38 | bound | `{"direction":"lo","ref":"76:38","triangle":"AER","value":"27557/250000"}` | `1 * w + -1 * a + -1 * e * r + 1 * a * r + -27557/250000` |
| 40 | bound | `{"direction":"lo","ref":"76:40","triangle":"AES","value":"311421/1000000"}` | `1 * k + -1 * a + -1 * e * j + 1 * a * j + -311421/1000000` |
| 41 | bound | `{"direction":"hi","ref":"76:41","triangle":"AES","value":"186817450357/250000000000"}` | `186817450357/250000000000 + -1 * k + 1 * a + 1 * e * j + -1 * a * j` |
| 42 | bound | `{"direction":"lo","ref":"76:42","triangle":"AFH","value":"93/1000"}` | `1 * f * h + -1 * a * f + -93/1000` |
| 43 | bound | `{"direction":"hi","ref":"76:43","triangle":"AFH","value":"7821834417/25000000000"}` | `7821834417/25000000000 + -1 * f * h + 1 * a * f` |
| 46 | bound | `{"direction":"lo","ref":"76:46","triangle":"AFQ","value":"314267/1000000"}` | `-1 * f * v + 1 * a * f + 1 * u + -1 * a * u + -314267/1000000` |
| 47 | bound | `{"direction":"hi","ref":"76:47","triangle":"AFQ","value":"216031/250000"}` | `216031/250000 + 1 * f * v + -1 * a * f + -1 * u + 1 * a * u` |
| 48 | bound | `{"direction":"lo","ref":"76:48","triangle":"AFR","value":"154123/500000"}` | `-1 * f * w + 1 * a * f + 1 * r + -1 * a * r + -154123/500000` |
| 49 | bound | `{"direction":"hi","ref":"76:49","triangle":"AFR","value":"98768345233/125000000000"}` | `98768345233/125000000000 + 1 * f * w + -1 * a * f + -1 * r + 1 * a * r` |
| 50 | bound | `{"direction":"lo","ref":"76:50","triangle":"AFS","value":"30181/200000"}` | `-1 * f * k + 1 * a * f + 1 * j + -1 * a * j + -30181/200000` |
| 52 | bound | `{"direction":"lo","ref":"76:52","triangle":"AHP","value":"61123/500000"}` | `1 * h * p + -1 * a * p + -61123/500000` |
| 53 | bound | `{"direction":"hi","ref":"76:53","triangle":"AHP","value":"95276367961/250000000000"}` | `95276367961/250000000000 + -1 * h * p + 1 * a * p` |
| 54 | bound | `{"direction":"lo","ref":"76:54","triangle":"AHQ","value":"154123/500000"}` | `1 * h * u + -1 * a * u + -154123/500000` |
| 55 | bound | `{"direction":"hi","ref":"76:55","triangle":"AHQ","value":"216031/250000"}` | `216031/250000 + -1 * h * u + 1 * a * u` |
| 56 | bound | `{"direction":"lo","ref":"76:56","triangle":"AHR","value":"154123/500000"}` | `1 * h * r + -1 * a * r + -154123/500000` |
| 57 | bound | `{"direction":"hi","ref":"76:57","triangle":"AHR","value":"41959485099/50000000000"}` | `41959485099/50000000000 + -1 * h * r + 1 * a * r` |
| 58 | bound | `{"direction":"lo","ref":"76:58","triangle":"AHS","value":"128561/1000000"}` | `1 * h * j + -1 * a * j + -128561/1000000` |
| 59 | bound | `{"direction":"hi","ref":"76:59","triangle":"AHS","value":"166222244547/250000000000"}` | `166222244547/250000000000 + -1 * h * j + 1 * a * j` |
| 62 | bound | `{"direction":"lo","ref":"76:62","triangle":"APR","value":"93/1000"}` | `-1 * p * w + 1 * a * p + 1 * q * r + -1 * a * r + -93/1000` |
| 64 | bound | `{"direction":"lo","ref":"76:64","triangle":"APS","value":"93/1000"}` | `1 * p * k + -1 * a * p + -1 * q * j + 1 * a * j + -93/1000` |
| 69 | bound | `{"direction":"hi","ref":"76:69","triangle":"AQS","value":"216031/250000"}` | `216031/250000 + -1 * u * k + 1 * a * u + 1 * v * j + -1 * a * j` |
| 70 | bound | `{"direction":"lo","ref":"76:70","triangle":"ARS","value":"31281/100000"}` | `1 * r * k + -1 * a * r + -1 * w * j + 1 * a * j + -31281/100000` |
| 71 | bound | `{"direction":"hi","ref":"76:71","triangle":"ARS","value":"5075636919/7812500000"}` | `5075636919/7812500000 + -1 * r * k + 1 * a * r + 1 * w * j + -1 * a * j` |
| 72 | bound | `{"direction":"lo","ref":"76:72","triangle":"BCE","value":"93/1000"}` | `1 * c * e + -1 * b * e + -93/1000` |
| 73 | bound | `{"direction":"hi","ref":"76:73","triangle":"BCE","value":"2494528247/6250000000"}` | `2494528247/6250000000 + -1 * c * e + 1 * b * e` |
| 74 | bound | `{"direction":"lo","ref":"76:74","triangle":"BCF","value":"75953/250000"}` | `1 * c + -1 * b + -75953/250000` |
| 75 | bound | `{"direction":"hi","ref":"76:75","triangle":"BCF","value":"136889/200000"}` | `136889/200000 + -1 * c + 1 * b` |
| 77 | bound | `{"direction":"hi","ref":"76:77","triangle":"BCH","value":"136889/200000"}` | `136889/200000 + -1 * c * h + 1 * b * h` |
| 78 | bound | `{"direction":"lo","ref":"76:78","triangle":"BCP","value":"29453/250000"}` | `1 * c * q + -1 * b * q + -29453/250000` |
| 79 | bound | `{"direction":"hi","ref":"76:79","triangle":"BCP","value":"5383981259/12500000000"}` | `5383981259/12500000000 + -1 * c * q + 1 * b * q` |
| 80 | bound | `{"direction":"lo","ref":"76:80","triangle":"BCQ","value":"93/1000"}` | `1 * c * v + -1 * b * v + -93/1000` |
| 82 | bound | `{"direction":"lo","ref":"76:82","triangle":"BCR","value":"93/1000"}` | `1 * c * w + -1 * b * w + -93/1000` |
| 83 | bound | `{"direction":"hi","ref":"76:83","triangle":"BCR","value":"58826541971/100000000000"}` | `58826541971/100000000000 + -1 * c * w + 1 * b * w` |
| 85 | bound | `{"direction":"hi","ref":"76:85","triangle":"BCS","value":"136889/200000"}` | `136889/200000 + -1 * c * k + 1 * b * k` |
| 86 | bound | `{"direction":"lo","ref":"76:86","triangle":"BEF","value":"42973/125000"}` | `82027/125000 + -1 * b + -1 * e * f + 1 * b * e` |
| 87 | bound | `{"direction":"hi","ref":"76:87","triangle":"BEF","value":"892377/1000000"}` | `-107623/1000000 + 1 * b + 1 * e * f + -1 * b * e` |
| 88 | bound | `{"direction":"lo","ref":"76:88","triangle":"BEH","value":"308517/1000000"}` | `1 * h + -1 * b * h + 1 * b * e + -308517/1000000` |
| 89 | bound | `{"direction":"hi","ref":"76:89","triangle":"BEH","value":"29847995179/31250000000"}` | `29847995179/31250000000 + -1 * h + 1 * b * h + -1 * b * e` |
| 90 | bound | `{"direction":"lo","ref":"76:90","triangle":"BEP","value":"122517/1000000"}` | `1 * q + -1 * b * q + -1 * e * p + 1 * b * e + -122517/1000000` |
| 91 | bound | `{"direction":"hi","ref":"76:91","triangle":"BEP","value":"32675057787/62500000000"}` | `32675057787/62500000000 + -1 * q + 1 * b * q + 1 * e * p + -1 * b * e` |
| 92 | bound | `{"direction":"lo","ref":"76:92","triangle":"BEQ","value":"93/1000"}` | `-1 * v + 1 * b * v + 1 * e * u + -1 * b * e + -93/1000` |
| 94 | bound | `{"direction":"lo","ref":"76:94","triangle":"BER","value":"93/1000"}` | `1 * w + -1 * b * w + -1 * e * r + 1 * b * e + -93/1000` |
| 95 | bound | `{"direction":"hi","ref":"76:95","triangle":"BER","value":"284759129843/500000000000"}` | `284759129843/500000000000 + -1 * w + 1 * b * w + 1 * e * r + -1 * b * e` |
| 96 | bound | `{"direction":"lo","ref":"76:96","triangle":"BES","value":"60689/500000"}` | `1 * k + -1 * b * k + -1 * e * j + 1 * b * e + -60689/500000` |
| 97 | bound | `{"direction":"hi","ref":"76:97","triangle":"BES","value":"372988447/488281250"}` | `372988447/488281250 + -1 * k + 1 * b * k + 1 * e * j + -1 * b * e` |
| 98 | bound | `{"direction":"lo","ref":"76:98","triangle":"BFH","value":"93/1000"}` | `1 * f * h + -1 * b * h + 1 * b + -93/1000` |
| 99 | bound | `{"direction":"hi","ref":"76:99","triangle":"BFH","value":"36207/100000"}` | `36207/100000 + -1 * f * h + 1 * b * h + -1 * b` |
| 100 | bound | `{"direction":"lo","ref":"76:100","triangle":"BFP","value":"93/1000"}` | `-1 * f * q + 1 * b * q + 1 * p + -1 * b + -93/1000` |
| 103 | bound | `{"direction":"hi","ref":"76:103","triangle":"BFQ","value":"892377/1000000"}` | `892377/1000000 + 1 * f * v + -1 * b * v + -1 * u + 1 * b` |
| 104 | bound | `{"direction":"lo","ref":"76:104","triangle":"BFR","value":"154123/500000"}` | `-1 * f * w + 1 * b * w + 1 * r + -1 * b + -154123/500000` |
| 105 | bound | `{"direction":"hi","ref":"76:105","triangle":"BFR","value":"431761/500000"}` | `431761/500000 + 1 * f * w + -1 * b * w + -1 * r + 1 * b` |
| 106 | bound | `{"direction":"lo","ref":"76:106","triangle":"BFS","value":"154123/500000"}` | `-1 * f * k + 1 * b * k + 1 * j + -1 * b + -154123/500000` |
| 107 | bound | `{"direction":"hi","ref":"76:107","triangle":"BFS","value":"330907/500000"}` | `330907/500000 + 1 * f * k + -1 * b * k + -1 * j + 1 * b` |
| 108 | bound | `{"direction":"lo","ref":"76:108","triangle":"BHP","value":"93/1000"}` | `1 * b * q + 1 * h * p + -1 * b * h + -93/1000` |
| 109 | bound | `{"direction":"hi","ref":"76:109","triangle":"BHP","value":"25070920213/62500000000"}` | `25070920213/62500000000 + -1 * b * q + -1 * h * p + 1 * b * h` |
| 110 | bound | `{"direction":"lo","ref":"76:110","triangle":"BHQ","value":"308517/1000000"}` | `1 * b * v + 1 * h * u + -1 * b * h + -308517/1000000` |
| 112 | bound | `{"direction":"lo","ref":"76:112","triangle":"BHR","value":"279/1000"}` | `1 * b * w + 1 * h * r + -1 * b * h + -279/1000` |
| 113 | bound | `{"direction":"hi","ref":"76:113","triangle":"BHR","value":"478010800397/500000000000"}` | `478010800397/500000000000 + -1 * b * w + -1 * h * r + 1 * b * h` |
| 114 | bound | `{"direction":"lo","ref":"76:114","triangle":"BHS","value":"279/1000"}` | `1 * b * k + 1 * h * j + -1 * b * h + -279/1000` |
| 118 | bound | `{"direction":"lo","ref":"76:118","triangle":"BPR","value":"93/1000"}` | `-1 * p * w + 1 * b * w + 1 * q * r + -1 * b * q + -93/1000` |
| 119 | bound | `{"direction":"hi","ref":"76:119","triangle":"BPR","value":"248816600563/500000000000"}` | `248816600563/500000000000 + 1 * p * w + -1 * b * w + -1 * q * r + 1 * b * q` |
| 120 | bound | `{"direction":"lo","ref":"76:120","triangle":"BPS","value":"93/1000"}` | `-1 * p * k + 1 * b * k + 1 * q * j + -1 * b * q + -93/1000` |
| 122 | bound | `{"direction":"lo","ref":"76:122","triangle":"BQR","value":"93/1000"}` | `1 * u * w + -1 * b * w + -1 * v * r + 1 * b * v + -93/1000` |
| 124 | bound | `{"direction":"lo","ref":"76:124","triangle":"BQS","value":"60689/500000"}` | `1 * u * k + -1 * b * k + -1 * v * j + 1 * b * v + -60689/500000` |
| 126 | bound | `{"direction":"lo","ref":"76:126","triangle":"BRS","value":"103529/1000000"}` | `1 * r * k + -1 * b * k + -1 * w * j + 1 * b * w + -103529/1000000` |
| 127 | bound | `{"direction":"hi","ref":"76:127","triangle":"BRS","value":"21286672821/31250000000"}` | `21286672821/31250000000 + -1 * r * k + 1 * b * k + 1 * w * j + -1 * b * w` |
| 128 | bound | `{"direction":"lo","ref":"76:128","triangle":"CEF","value":"4071/40000"}` | `35929/40000 + -1 * c + -1 * e * f + 1 * c * e` |
| 129 | bound | `{"direction":"hi","ref":"76:129","triangle":"CEF","value":"22228099963/31250000000"}` | `-9021900037/31250000000 + 1 * c + 1 * e * f + -1 * c * e` |
| 130 | bound | `{"direction":"lo","ref":"76:130","triangle":"CEH","value":"93557/1000000"}` | `1 * h + -1 * c * h + 1 * c * e + -93557/1000000` |
| 131 | bound | `{"direction":"hi","ref":"76:131","triangle":"CEH","value":"6047328473/7812500000"}` | `6047328473/7812500000 + -1 * h + 1 * c * h + -1 * c * e` |
| 132 | bound | `{"direction":"lo","ref":"76:132","triangle":"CEP","value":"94233/1000000"}` | `1 * q + -1 * c * q + -1 * e * p + 1 * c * e + -94233/1000000` |
| 134 | bound | `{"direction":"lo","ref":"76:134","triangle":"CEQ","value":"93/1000"}` | `-1 * v + 1 * c * v + 1 * e * u + -1 * c * e + -93/1000` |
| 136 | bound | `{"direction":"lo","ref":"76:136","triangle":"CER","value":"93/1000"}` | `1 * w + -1 * c * w + -1 * e * r + 1 * c * e + -93/1000` |
| 138 | bound | `{"direction":"lo","ref":"76:138","triangle":"CES","value":"93/1000"}` | `1 * k + -1 * c * k + -1 * e * j + 1 * c * e + -93/1000` |
| 139 | bound | `{"direction":"hi","ref":"76:139","triangle":"CES","value":"3322186621/6250000000"}` | `3322186621/6250000000 + -1 * k + 1 * c * k + 1 * e * j + -1 * c * e` |
| 141 | bound | `{"direction":"hi","ref":"76:141","triangle":"CFH","value":"248912549289/500000000000"}` | `248912549289/500000000000 + -1 * f * h + 1 * c * h + -1 * c` |
| 142 | bound | `{"direction":"lo","ref":"76:142","triangle":"CFP","value":"93/1000"}` | `1 * f * q + -1 * c * q + -1 * p + 1 * c + -93/1000` |
| 146 | bound | `{"direction":"lo","ref":"76:146","triangle":"CFR","value":"93/1000"}` | `-1 * f * w + 1 * c * w + 1 * r + -1 * c + -93/1000` |
| 147 | bound | `{"direction":"hi","ref":"76:147","triangle":"CFR","value":"401240956559/500000000000"}` | `401240956559/500000000000 + 1 * f * w + -1 * c * w + -1 * r + 1 * c` |
| 148 | bound | `{"direction":"lo","ref":"76:148","triangle":"CFS","value":"93/1000"}` | `-1 * f * k + 1 * c * k + 1 * j + -1 * c + -93/1000` |
| 149 | bound | `{"direction":"hi","ref":"76:149","triangle":"CFS","value":"330907/500000"}` | `330907/500000 + 1 * f * k + -1 * c * k + -1 * j + 1 * c` |
| 150 | bound | `{"direction":"lo","ref":"76:150","triangle":"CHP","value":"93/1000"}` | `-1 * c * q + -1 * h * p + 1 * c * h + -93/1000` |
| 153 | bound | `{"direction":"hi","ref":"76:153","triangle":"CHQ","value":"82999974539/125000000000"}` | `82999974539/125000000000 + -1 * c * v + -1 * h * u + 1 * c * h` |
| 154 | bound | `{"direction":"lo","ref":"76:154","triangle":"CHR","value":"93/1000"}` | `1 * c * w + 1 * h * r + -1 * c * h + -93/1000` |
| 155 | bound | `{"direction":"hi","ref":"76:155","triangle":"CHR","value":"111872689239/125000000000"}` | `111872689239/125000000000 + -1 * c * w + -1 * h * r + 1 * c * h` |
| 156 | bound | `{"direction":"lo","ref":"76:156","triangle":"CHS","value":"93/1000"}` | `1 * c * k + 1 * h * j + -1 * c * h + -93/1000` |
| 158 | bound | `{"direction":"lo","ref":"76:158","triangle":"CPQ","value":"94233/1000000"}` | `-1 * p * v + 1 * c * v + 1 * q * u + -1 * c * q + -94233/1000000` |
| 159 | bound | `{"direction":"hi","ref":"76:159","triangle":"CPQ","value":"208983229267/500000000000"}` | `208983229267/500000000000 + 1 * p * v + -1 * c * v + -1 * q * u + 1 * c * q` |
| 160 | bound | `{"direction":"lo","ref":"76:160","triangle":"CPR","value":"94569/1000000"}` | `-1 * p * w + 1 * c * w + 1 * q * r + -1 * c * q + -94569/1000000` |
| 162 | bound | `{"direction":"lo","ref":"76:162","triangle":"CPS","value":"93/1000"}` | `-1 * p * k + 1 * c * k + 1 * q * j + -1 * c * q + -93/1000` |
| 164 | bound | `{"direction":"lo","ref":"76:164","triangle":"CQR","value":"93/1000"}` | `1 * u * w + -1 * c * w + -1 * v * r + 1 * c * v + -93/1000` |
| 168 | bound | `{"direction":"lo","ref":"76:168","triangle":"CRS","value":"93/1000"}` | `1 * r * k + -1 * c * k + -1 * w * j + 1 * c * w + -93/1000` |
| 169 | bound | `{"direction":"hi","ref":"76:169","triangle":"CRS","value":"53755125753/100000000000"}` | `53755125753/100000000000 + -1 * r * k + 1 * c * k + 1 * w * j + -1 * c * w` |
| 170 | bound | `{"direction":"lo","ref":"76:170","triangle":"EFH","value":"93/1000"}` | `1 * f * h + -1 * e * f + -1 * h + 907/1000` |
| 171 | bound | `{"direction":"hi","ref":"76:171","triangle":"EFH","value":"1650150279/4000000000"}` | `-2349849721/4000000000 + -1 * f * h + 1 * e * f + 1 * h` |
| 173 | bound | `{"direction":"hi","ref":"76:173","triangle":"EFP","value":"562892746071/1000000000000"}` | `-437107253929/1000000000000 + -1 * f * q + 1 * e * f + 1 * q + 1 * p + -1 * e * p` |
| 176 | bound | `{"direction":"lo","ref":"76:176","triangle":"EFR","value":"93/1000"}` | `-1 * f * w + 1 * e * f + 1 * w + 1 * r + -1093/1000 + -1 * e * r` |
| 177 | bound | `{"direction":"hi","ref":"76:177","triangle":"EFR","value":"189076082099/500000000000"}` | `689076082099/500000000000 + 1 * f * w + -1 * e * f + -1 * w + -1 * r + 1 * e * r` |
| 178 | bound | `{"direction":"lo","ref":"76:178","triangle":"EFS","value":"93/1000"}` | `-1 * f * k + 1 * e * f + 1 * k + 1 * j + -1093/1000 + -1 * e * j` |
| 179 | bound | `{"direction":"hi","ref":"76:179","triangle":"EFS","value":"6030118261/15625000000"}` | `21655118261/15625000000 + 1 * f * k + -1 * e * f + -1 * k + -1 * j + 1 * e * j` |
| 180 | bound | `{"direction":"lo","ref":"76:180","triangle":"EHP","value":"93/1000"}` | `-1 * q + -1 * h * p + 1 * h + 1 * e * p + -93/1000` |
| 181 | bound | `{"direction":"hi","ref":"76:181","triangle":"EHP","value":"295053/500000"}` | `295053/500000 + 1 * q + 1 * h * p + -1 * h + -1 * e * p` |
| 183 | bound | `{"direction":"hi","ref":"76:183","triangle":"EHQ","value":"16475414519/31250000000"}` | `16475414519/31250000000 + 1 * v + 1 * h * u + -1 * h + -1 * e * u` |
| 184 | bound | `{"direction":"lo","ref":"76:184","triangle":"EHR","value":"93/1000"}` | `1 * w + 1 * h * r + -1 * h + -1 * e * r + -93/1000` |
| 185 | bound | `{"direction":"hi","ref":"76:185","triangle":"EHR","value":"3479179613/8000000000"}` | `3479179613/8000000000 + -1 * w + -1 * h * r + 1 * h + 1 * e * r` |
| 186 | bound | `{"direction":"lo","ref":"76:186","triangle":"EHS","value":"93/1000"}` | `1 * k + 1 * h * j + -1 * h + -1 * e * j + -93/1000` |
| 187 | bound | `{"direction":"hi","ref":"76:187","triangle":"EHS","value":"20859107589/40000000000"}` | `20859107589/40000000000 + -1 * k + -1 * h * j + 1 * h + 1 * e * j` |
| 188 | bound | `{"direction":"lo","ref":"76:188","triangle":"EPQ","value":"93/1000"}` | `1 * p * v + -1 * e * p + -1 * v + -1 * q * u + 1 * q + 1 * e * u + -93/1000` |
| 189 | bound | `{"direction":"hi","ref":"76:189","triangle":"EPQ","value":"18319135327/50000000000"}` | `18319135327/50000000000 + -1 * p * v + 1 * e * p + 1 * v + 1 * q * u + -1 * q + -1 * e * u` |
| 192 | bound | `{"direction":"lo","ref":"76:192","triangle":"EPS","value":"125421/1000000"}` | `-1 * p * k + 1 * e * p + 1 * k + 1 * q * j + -1 * q + -1 * e * j + -125421/1000000` |
| 193 | bound | `{"direction":"hi","ref":"76:193","triangle":"EPS","value":"519352246669/1000000000000"}` | `519352246669/1000000000000 + 1 * p * k + -1 * e * p + -1 * k + -1 * q * j + 1 * q + 1 * e * j` |
| 194 | bound | `{"direction":"lo","ref":"76:194","triangle":"EQR","value":"93/1000"}` | `-1 * u * w + 1 * e * u + 1 * w + 1 * v * r + -1 * v + -1 * e * r + -93/1000` |
| 196 | bound | `{"direction":"lo","ref":"76:196","triangle":"EQS","value":"93/1000"}` | `-1 * u * k + 1 * e * u + 1 * k + 1 * v * j + -1 * v + -1 * e * j + -93/1000` |
| 197 | bound | `{"direction":"hi","ref":"76:197","triangle":"EQS","value":"85302923917/250000000000"}` | `85302923917/250000000000 + 1 * u * k + -1 * e * u + -1 * k + -1 * v * j + 1 * v + 1 * e * j` |
| 198 | bound | `{"direction":"lo","ref":"76:198","triangle":"ERS","value":"93/1000"}` | `1 * r * k + -1 * e * r + -1 * k + -1 * w * j + 1 * w + 1 * e * j + -93/1000` |
| 200 | bound | `{"direction":"lo","ref":"76:200","triangle":"FHP","value":"93/1000"}` | `-1 * f * q + -1 * h * p + 1 * f * h + 1 * p + -93/1000` |
| 203 | bound | `{"direction":"hi","ref":"76:203","triangle":"FHQ","value":"51427489491/100000000000"}` | `51427489491/100000000000 + 1 * f * v + 1 * h * u + -1 * f * h + -1 * u` |
| 204 | bound | `{"direction":"lo","ref":"76:204","triangle":"FHR","value":"93/1000"}` | `-1 * f * w + -1 * h * r + 1 * f * h + 1 * r + -93/1000` |
| 205 | bound | `{"direction":"hi","ref":"76:205","triangle":"FHR","value":"68034530313/200000000000"}` | `68034530313/200000000000 + 1 * f * w + 1 * h * r + -1 * f * h + -1 * r` |
| 206 | bound | `{"direction":"lo","ref":"76:206","triangle":"FHS","value":"93/1000"}` | `-1 * f * k + -1 * h * j + 1 * f * h + 1 * j + -93/1000` |
| 210 | bound | `{"direction":"lo","ref":"76:210","triangle":"FPR","value":"61123/500000"}` | `1 * p * w + -1 * p + -1 * f * w + -1 * q * r + 1 * f * q + 1 * r + -61123/500000` |
| 211 | bound | `{"direction":"hi","ref":"76:211","triangle":"FPR","value":"27531/50000"}` | `27531/50000 + -1 * p * w + 1 * p + 1 * f * w + 1 * q * r + -1 * f * q + -1 * r` |
| 212 | bound | `{"direction":"lo","ref":"76:212","triangle":"FPS","value":"61123/500000"}` | `1 * p * k + -1 * p + -1 * f * k + -1 * q * j + 1 * f * q + 1 * j + -61123/500000` |
| 217 | bound | `{"direction":"hi","ref":"76:217","triangle":"FQS","value":"71486170117/125000000000"}` | `71486170117/125000000000 + -1 * u * k + 1 * u + 1 * f * k + 1 * v * j + -1 * f * v + -1 * j` |
| 218 | bound | `{"direction":"lo","ref":"76:218","triangle":"FRS","value":"93/1000"}` | `1 * r * k + -1 * r + -1 * f * k + -1 * w * j + 1 * f * w + 1 * j + -93/1000` |
| 219 | bound | `{"direction":"hi","ref":"76:219","triangle":"FRS","value":"8447062989/31250000000"}` | `8447062989/31250000000 + -1 * r * k + 1 * r + 1 * f * k + 1 * w * j + -1 * f * w + -1 * j` |
| 220 | bound | `{"direction":"lo","ref":"76:220","triangle":"HPQ","value":"93/1000"}` | `1 * p * v + -1 * h * p + -1 * q * u + 1 * h * u + -93/1000` |
| 223 | bound | `{"direction":"hi","ref":"76:223","triangle":"HPR","value":"292811/500000"}` | `292811/500000 + -1 * p * w + 1 * h * p + 1 * q * r + -1 * h * r` |
| 224 | bound | `{"direction":"lo","ref":"76:224","triangle":"HPS","value":"93/1000"}` | `1 * p * k + -1 * h * p + -1 * q * j + 1 * h * j + -93/1000` |
| 228 | bound | `{"direction":"lo","ref":"76:228","triangle":"HQS","value":"93/1000"}` | `1 * u * k + -1 * h * u + -1 * v * j + 1 * h * j + -93/1000` |
| 230 | bound | `{"direction":"lo","ref":"76:230","triangle":"HRS","value":"93/1000"}` | `1 * r * k + -1 * h * r + -1 * w * j + 1 * h * j + -93/1000` |
| 231 | bound | `{"direction":"hi","ref":"76:231","triangle":"HRS","value":"94486031793/250000000000"}` | `94486031793/250000000000 + -1 * r * k + 1 * h * r + 1 * w * j + -1 * h * j` |
| 232 | bound | `{"direction":"lo","ref":"76:232","triangle":"PQR","value":"9647/100000"}` | `1 * u * w + -1 * q * u + -1 * p * w + -1 * v * r + 1 * p * v + 1 * q * r + -9647/100000` |
| 234 | bound | `{"direction":"lo","ref":"76:234","triangle":"PQS","value":"61123/500000"}` | `1 * u * k + -1 * q * u + -1 * p * k + -1 * v * j + 1 * p * v + 1 * q * j + -61123/500000` |
| 236 | bound | `{"direction":"lo","ref":"76:236","triangle":"PRS","value":"12681/100000"}` | `1 * r * k + -1 * q * r + -1 * p * k + -1 * w * j + 1 * p * w + 1 * q * j + -12681/100000` |
| 237 | bound | `{"direction":"hi","ref":"76:237","triangle":"PRS","value":"23114660241/50000000000"}` | `23114660241/50000000000 + -1 * r * k + 1 * q * r + 1 * p * k + 1 * w * j + -1 * p * w + -1 * q * j` |
| 240 | coordinate | `{"box":76,"direction":"lo","value":"33969/250000","variable":"a"}` | `1 * a + -33969/250000` |
| 241 | coordinate | `{"box":76,"direction":"hi","value":"259211/500000","variable":"a"}` | `259211/500000 + -1 * a` |
| 242 | coordinate | `{"box":76,"direction":"lo","value":"107623/1000000","variable":"b"}` | `1 * b + -107623/1000000` |
| 243 | coordinate | `{"box":76,"direction":"hi","value":"32/125","variable":"b"}` | `32/125 + -1 * b` |
| 244 | coordinate | `{"box":76,"direction":"lo","value":"135501/250000","variable":"c"}` | `1 * c + -135501/250000` |
| 245 | coordinate | `{"box":76,"direction":"hi","value":"198017/250000","variable":"c"}` | `198017/250000 + -1 * c` |
| 246 | coordinate | `{"box":76,"direction":"lo","value":"13027/31250","variable":"e"}` | `1 * e + -13027/31250` |
| 247 | coordinate | `{"box":76,"direction":"hi","value":"18223/31250","variable":"e"}` | `18223/31250 + -1 * e` |
| 248 | coordinate | `{"box":76,"direction":"lo","value":"107623/1000000","variable":"f"}` | `1 * f + -107623/1000000` |
| 249 | coordinate | `{"box":76,"direction":"hi","value":"36207/100000","variable":"f"}` | `36207/100000 + -1 * f` |
| 250 | coordinate | `{"box":76,"direction":"lo","value":"684289/1000000","variable":"h"}` | `1 * h + -684289/1000000` |
| 251 | coordinate | `{"box":76,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 252 | coordinate | `{"box":76,"direction":"lo","value":"200623/1000000","variable":"p"}` | `1 * p + -200623/1000000` |
| 253 | coordinate | `{"box":76,"direction":"hi","value":"441031/1000000","variable":"p"}` | `441031/1000000 + -1 * p` |
| 254 | coordinate | `{"box":76,"direction":"lo","value":"325777/1000000","variable":"q"}` | `1 * q + -325777/1000000` |
| 255 | coordinate | `{"box":76,"direction":"hi","value":"39331/62500","variable":"q"}` | `39331/62500 + -1 * q` |
| 256 | coordinate | `{"box":76,"direction":"lo","value":"808203/1000000","variable":"u"}` | `1 * u + -808203/1000000` |
| 257 | coordinate | `{"box":76,"direction":"hi","value":"1","variable":"u"}` | `1 + -1 * u` |
| 258 | coordinate | `{"box":76,"direction":"lo","value":"33969/250000","variable":"v"}` | `1 * v + -33969/250000` |
| 259 | coordinate | `{"box":76,"direction":"hi","value":"190039/500000","variable":"v"}` | `190039/500000 + -1 * v` |
| 260 | coordinate | `{"box":76,"direction":"lo","value":"581303/1000000","variable":"r"}` | `1 * r + -581303/1000000` |
| 261 | coordinate | `{"box":76,"direction":"hi","value":"194229/200000","variable":"r"}` | `194229/200000 + -1 * r` |
| 262 | coordinate | `{"box":76,"direction":"lo","value":"36973/62500","variable":"w"}` | `1 * w + -36973/62500` |
| 263 | coordinate | `{"box":76,"direction":"hi","value":"429739/500000","variable":"w"}` | `429739/500000 + -1 * w` |
| 264 | coordinate | `{"box":76,"direction":"lo","value":"415869/1000000","variable":"j"}` | `1 * j + -415869/1000000` |
| 265 | coordinate | `{"box":76,"direction":"hi","value":"769437/1000000","variable":"j"}` | `769437/1000000 + -1 * j` |
| 266 | coordinate | `{"box":76,"direction":"lo","value":"730521/1000000","variable":"k"}` | `1 * k + -730521/1000000` |
| 267 | coordinate | `{"box":76,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 269 | physical | `{"factor":2}` | `-93/1000 + 1 * c + -1 * b` |
| 270 | physical | `{"factor":4}` | `-93/1000 + 1 * e` |
| 276 | physical | `{"factor":20}` | `-93/1000 + 1 * c` |
| 278 | physical | `{"factor":27}` | `907/1000 + -1 * a` |
| 279 | physical | `{"factor":49}` | `-279/1000 + 1 * h` |
| 280 | physical | `{"factor":51}` | `-93/1000 + 1 * h` |
| 282 | physical | `{"factor":59}` | `907/1000 + -1 * b` |
| 283 | physical | `{"factor":79}` | `907/1000 + -1 * f` |
| 284 | physical | `{"factor":101}` | `907/1000 + -1 * e` |
| 285 | physical | `{"factor":136}` | `1 * h + -1 * a` |
| 286 | physical | `{"factor":137}` | `1 * e + -1 * a` |
| 288 | physical | `{"factor":139}` | `1 * f + -1 * b` |
| 290 | physical | `{"factor":141}` | `1 * c * h + -135501/250000` |
| 292 | physical | `{"factor":143}` | `407/500 + -1 * c * h + 1 * f * h + 1 * c * e + -1 * e * f` |
| 293 | physical | `{"factor":144}` | `157/250 + -1 * f + -1 * e + 1 * e * f` |
| 294 | physical | `{"factor":145}` | `1 * e + -1 * b * e + -93/250` |
| 295 | physical | `{"factor":146}` | `-93/250 + -1 * b + 1 * f + 1 * e + -1 * e * f` |
| 296 | physical | `{"factor":147}` | `1 * u + -1 * c + -93/1000` |
| 297 | physical | `{"factor":148}` | `1 * e + -1 * v + -93/1000` |
| 298 | physical | `{"factor":149}` | `1 * e * u + -1 * c * e + -93/1000` |
| 299 | physical | `{"factor":150}` | `1 * e + -1 * v + -1 * c * e + 1 * c * v + -93/1000` |
| 302 | physical | `{"factor":153}` | `174767/198017 + -1 * p + -1 * q` |
| 303 | physical | `{"factor":154}` | `1 * p + -83671263/684445000` |
| 304 | physical | `{"factor":155}` | `1 * q + -6602279250/42777810527` |
| 305 | physical | `{"factor":156}` | `1 * c * h * p + -1 * b * h * p + -93/1000 * c + -93/1000 * b` |
| 306 | physical | `{"factor":157}` | `1 * c * h * q + -1 * a * c * q + -93/1000 * h + -93/1000 * a` |
| 609 | physical | `{"factor":460}` | `432062/1953125 * f * h + 12527879/15625000 * a * f + -1023/1000 * b * h + 1023/1000 * b` |
| 616 | physical | `{"factor":467}` | `-15549451077/50000000000 * f * w + -35600548923/50000000000 * a * f + 15549451077/50000000000 * r + 35600548923/50000000000 * a * r + -1023/1000 * b + 1023/1000 * b * w` |
| 617 | physical | `{"factor":468}` | `-58826541971/100000000000 * a * b + -43473458029/100000000000 * a * c + 1023/1000 * b * w + 1023/1000 * a * r` |
| 645 | physical | `{"factor":496}` | `261088518207/500000000000 * r * k + 250411481793/500000000000 * a * r + -261088518207/500000000000 * w * j + -250411481793/500000000000 * a * j + -1023/1000 * b * k + 1023/1000 * b * w` |
| 653 | physical | `{"factor":504}` | `-31193773149/50000000000 * b * v + -19956226851/50000000000 * a * b + -31193773149/50000000000 * a * u + 1023/1000 * b * e + 1023/1000 * a` |
| 657 | physical | `{"factor":508}` | `-226740870157/500000000000 * b * e + -284759129843/500000000000 * a * b + -226740870157/500000000000 * a + 1023/1000 * b * w + 1023/1000 * a * r` |
| 674 | physical | `{"factor":525}` | `-631046694883/1000000000000 * w + 631046694883/1000000000000 * b * w + 631046694883/1000000000000 * e * r + 391953305117/1000000000000 * b * e + -1023/1000 * e * p + 1023/1000 * q + -1023/1000 * b * q` |
| 758 | physical | `{"factor":609}` | `50872510509/100000000000 * f * v + 51427489491/100000000000 * c * v + -50872510509/100000000000 * u + 50872510509/100000000000 * c + 1023/1000 * h * u + -1023/1000 * c * h` |
| 811 | physical | `{"factor":662}` | `95276367961/250000000000 * f * h + 160473632039/250000000000 * a * f + -1023/1000 * h * p + -1023/1000 * f * q + 1023/1000 * p` |
| 859 | physical | `{"factor":710}` | `136889/200000 * k + 67711/200000 * b * k + -136889/200000 * e * j + -67711/200000 * b * e + -1023/1000 * c * k + 1023/1000 * c * e` |
| 863 | physical | `{"factor":714}` | `-3899221753/6250000000 * c * k + -2494528247/6250000000 * b * k + 1023/1000 * b * e + 1023/1000 * k + -1023/1000 * e * j` |
| 922 | physical | `{"factor":773}` | `-248912549289/500000000000 * f * w + 262587450711/500000000000 * h * r + -262587450711/500000000000 * f * h + 248912549289/500000000000 * r + -1023/1000 * c + 1023/1000 * c * w` |
| 933 | physical | `{"factor":784}` | `-3071563379/6250000000 * q + -3322186621/6250000000 * c * q + 3071563379/6250000000 * e * p + -3071563379/6250000000 * c * e + 1023/1000 * c * k + -1023/1000 * p * k + 1023/1000 * q * j` |
| 940 | physical | `{"factor":791}` | `180593/500000 * f * k + -180593/500000 * e * f + 330907/500000 * k + -180593/500000 * j + 180593/500000 + -330907/500000 * e * j + -1023/1000 * c * k + 1023/1000 * c * e` |
| 945 | physical | `{"factor":796}` | `-18455952929/31250000000 * v + 13512797071/31250000000 * h * u + -13512797071/31250000000 * h + 18455952929/31250000000 * e * u + 1023/1000 * q + -1023/1000 * e * p + 1023/1000 * p * v + -1023/1000 * q * u` |
| 963 | physical | `{"factor":814}` | `50593713853/100000000000 * r * k + 51706286147/100000000000 * c * k + -50593713853/100000000000 * w * j + -51706286147/100000000000 * c * w + -1023/1000 * u * k + 1023/1000 * v * j + 1023/1000 * u * w + -1023/1000 * v * r` |
| 995 | physical | `{"factor":846}` | `503647753331/1000000000000 * q + -519352246669/1000000000000 * h * p + -503647753331/1000000000000 * h + -503647753331/1000000000000 * e * p + 1023/1000 * p * k + -1023/1000 * q * j + 1023/1000 * h * j` |
| 998 | physical | `{"factor":849}` | `-51427489491/100000000000 * f * w + 50872510509/100000000000 * h * r + -50872510509/100000000000 * f * h + 51427489491/100000000000 * r + 1023/1000 * f * v + -1023/1000 * u + 1023/1000 * u * w + -1023/1000 * v * r` |
| 1000 | physical | `{"factor":851}` | `170447076083/250000000000 * v + -85302923917/250000000000 * h * u + -170447076083/250000000000 * h + -170447076083/250000000000 * e * u + 1023/1000 * u * k + -1023/1000 * v * j + 1023/1000 * h * j` |
| 1010 | physical | `{"factor":861}` | `391953305117/1000000000000 * f * q + 631046694883/1000000000000 * e * f + 631046694883/1000000000000 * q + -391953305117/1000000000000 * p + -631046694883/1000000000000 + -631046694883/1000000000000 * e * p + 1023/1000 * p * w + -1023/1000 * q * r + -1023/1000 * f * w + 1023/1000 * r` |
| 1012 | physical | `{"factor":863}` | `-460107253929/1000000000000 * p * k + 460107253929/1000000000000 * p + -562892746071/1000000000000 * f * k + 460107253929/1000000000000 * q * j + -460107253929/1000000000000 * f * q + 562892746071/1000000000000 * j + 1023/1000 * e * f + -1023/1000 + 1023/1000 * k + -1023/1000 * e * j` |
| 1015 | physical | `{"factor":866}` | `-135980549593/250000000000 * u * k + 135980549593/250000000000 * u + -119769450407/250000000000 * f * k + 135980549593/250000000000 * v * j + -135980549593/250000000000 * f * v + 119769450407/250000000000 * j + 1023/1000 * e * f + -1023/1000 + 1023/1000 * k + -1023/1000 * e * j` |
| 1020 | physical | `{"factor":871}` | `-15493335481/31250000000 * u * k + 15493335481/31250000000 * h * u + 15493335481/31250000000 * v * j + 16475414519/31250000000 * h * j + -1023/1000 * h + 1023/1000 * k + -1023/1000 * e * j` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 11847300 | 0, 70 |
| 1 | 685700 | 0, 90 |
| 2 | 26823900 | 0, 126 |
| 3 | 876800 | 0, 185 |
| 4 | 135000 | 0, 254 |
| 5 | 60927200 | 0, 265 |
| 6 | 128800 | 0, 294 |
| 7 | 312200 | 1, 206 |
| 8 | 84100 | 2, 31 |
| 9 | 321000 | 2, 240 |
| 10 | 13825800 | 3, 120 |
| 11 | 11800 | 3, 194 |
| 12 | 254600 | 3, 218 |
| 13 | 4436300 | 4, 62 |
| 14 | 1292000 | 6, 41 |
| 15 | 8333000 | 6, 64 |
| 16 | 3239000 | 6, 71 |
| 17 | 8620000 | 6, 97 |
| 18 | 8750000 | 6, 106 |
| 19 | 4699000 | 6, 120 |
| 20 | 387000 | 6, 150 |
| 21 | 21000 | 6, 159 |
| 22 | 69056000 | 6, 212 |
| 23 | 8326000 | 6, 219 |
| 24 | 15629000 | 6, 237 |
| 25 | 114998000 | 6, 255 |
| 26 | 78000 | 6, 258 |
| 27 | 106626000 | 6, 264 |
| 28 | 131873000 | 6, 267 |
| 29 | 3810000 | 6, 288 |
| 30 | 16265000 | 6, 302 |
| 31 | 3056700 | 7, 198 |
| 32 | 11118400 | 7, 218 |
| 33 | 533000 | 8, 34 |
| 34 | 2363000 | 8, 42 |
| 35 | 1246000 | 8, 49 |
| 36 | 4384000 | 8, 52 |
| 37 | 3851000 | 8, 62 |
| 38 | 15649000 | 8, 71 |
| 39 | 3813000 | 8, 78 |
| 40 | 74000 | 8, 80 |
| 41 | 5577000 | 8, 149 |
| 42 | 8061000 | 8, 150 |
| 43 | 168000 | 8, 179 |
| 44 | 3813000 | 8, 193 |
| 45 | 37260000 | 8, 219 |
| 46 | 86752000 | 8, 231 |
| 47 | 31050000 | 8, 242 |
| 48 | 25552000 | 8, 244 |
| 49 | 509000 | 8, 247 |
| 50 | 7037000 | 8, 249 |
| 51 | 68000 | 8, 256 |
| 52 | 12514000 | 8, 265 |
| 53 | 172795000 | 8, 267 |
| 54 | 20800 | 10, 150 |
| 55 | 74600 | 10, 265 |
| 56 | 32600 | 11, 198 |
| 57 | 4900 | 11, 206 |
| 58 | 40709200 | 12, 267 |
| 59 | 27859300 | 13, 120 |
| 60 | 53400 | 13, 134 |
| 61 | 646100 | 13, 288 |
| 62 | 23659600 | 14, 90 |
| 63 | 7184100 | 14, 118 |
| 64 | 6137100 | 14, 150 |
| 65 | 26823900 | 14, 160 |
| 66 | 156800 | 14, 181 |
| 67 | 7344300 | 14, 184 |
| 68 | 42772000 | 14, 211 |
| 69 | 13605600 | 14, 237 |
| 70 | 172825900 | 14, 254 |
| 71 | 10279300 | 14, 260 |
| 72 | 68729200 | 14, 262 |
| 73 | 15596900 | 14, 294 |
| 74 | 11400 | 14, 298 |
| 75 | 312200 | 17, 218 |
| 76 | 3802000 | 19, 70 |
| 77 | 22504200 | 20, 100 |
| 78 | 299000 | 22, 200 |
| 79 | 20479500 | 22, 261 |
| 80 | 5000 | 24, 200 |
| 81 | 37500 | 25, 120 |
| 82 | 15649300 | 26, 64 |
| 83 | 7741500 | 26, 100 |
| 84 | 21521800 | 27, 120 |
| 85 | 15649300 | 28, 62 |
| 86 | 10435100 | 28, 288 |
| 87 | 37500 | 29, 220 |
| 88 | 494400 | 29, 263 |
| 89 | 597200 | 31, 70 |
| 90 | 255600 | 31, 240 |
| 91 | 137456900 | 32, 100 |
| 92 | 6738600 | 32, 106 |
| 93 | 112366400 | 33, 62 |
| 94 | 175118100 | 33, 64 |
| 95 | 16667800 | 33, 80 |
| 96 | 66360600 | 33, 134 |
| 97 | 39844100 | 33, 150 |
| 98 | 133632400 | 33, 194 |
| 99 | 45582400 | 33, 198 |
| 100 | 5408000 | 33, 200 |
| 101 | 48869300 | 33, 206 |
| 102 | 6012500 | 34, 38 |
| 103 | 6036500 | 34, 97 |
| 104 | 971800 | 34, 105 |
| 105 | 60450400 | 34, 106 |
| 106 | 28300 | 34, 170 |
| 107 | 172500 | 34, 256 |
| 108 | 169298400 | 34, 261 |
| 109 | 10884200 | 34, 264 |
| 110 | 4014000 | 34, 288 |
| 111 | 1749800 | 34, 290 |
| 112 | 6057900 | 35, 198 |
| 113 | 4500 | 36, 198 |
| 114 | 4500 | 37, 218 |
| 115 | 118460700 | 38, 252 |
| 116 | 13605600 | 40, 120 |
| 117 | 57900 | 41, 47 |
| 118 | 75000 | 41, 257 |
| 119 | 549100 | 41, 295 |
| 120 | 25700 | 41, 299 |
| 121 | 58400 | 42, 108 |
| 122 | 31940500 | 42, 120 |
| 123 | 53000 | 42, 158 |
| 124 | 131881200 | 42, 254 |
| 125 | 35300 | 42, 262 |
| 126 | 2680700 | 42, 264 |
| 127 | 4399200 | 43, 64 |
| 128 | 16300 | 43, 194 |
| 129 | 20800 | 46, 62 |
| 130 | 58300 | 46, 150 |
| 131 | 57900 | 46, 198 |
| 132 | 57900 | 47, 70 |
| 133 | 280300 | 47, 263 |
| 134 | 33100 | 47, 267 |
| 135 | 41600 | 48, 134 |
| 136 | 15649300 | 48, 150 |
| 137 | 3551900 | 49, 52 |
| 138 | 1988100 | 49, 108 |
| 139 | 300400 | 50, 136 |
| 140 | 11800 | 50, 164 |
| 141 | 16564500 | 52, 94 |
| 142 | 19173200 | 52, 127 |
| 143 | 4900 | 52, 197 |
| 144 | 4120100 | 52, 205 |
| 145 | 198600 | 52, 240 |
| 146 | 7686800 | 52, 294 |
| 147 | 240200 | 52, 296 |
| 148 | 16660200 | 53, 198 |
| 149 | 7419500 | 53, 206 |
| 150 | 58300 | 54, 100 |
| 151 | 28600 | 54, 288 |
| 152 | 20800 | 55, 62 |
| 153 | 30629900 | 56, 100 |
| 154 | 41042000 | 56, 120 |
| 155 | 20800 | 57, 80 |
| 156 | 7075800 | 57, 206 |
| 157 | 51776900 | 58, 100 |
| 158 | 14600 | 58, 295 |
| 159 | 20800 | 59, 194 |
| 160 | 13605600 | 59, 198 |
| 161 | 1121900 | 62, 88 |
| 162 | 2244500 | 62, 96 |
| 163 | 2003500 | 62, 98 |
| 164 | 95000 | 62, 110 |
| 165 | 88748100 | 62, 114 |
| 166 | 11507600 | 62, 148 |
| 167 | 74200 | 62, 153 |
| 168 | 15628500 | 62, 156 |
| 169 | 3813400 | 62, 181 |
| 170 | 3813400 | 62, 192 |
| 171 | 4101000 | 62, 200 |
| 172 | 32600 | 62, 217 |
| 173 | 1660600 | 62, 264 |
| 174 | 69629300 | 62, 276 |
| 175 | 118378900 | 62, 278 |
| 176 | 115057900 | 62, 280 |
| 177 | 49426900 | 62, 282 |
| 178 | 4160200 | 62, 283 |
| 179 | 971800 | 62, 292 |
| 180 | 26891100 | 64, 83 |
| 181 | 1168300 | 64, 86 |
| 182 | 2527200 | 64, 90 |
| 183 | 13605600 | 64, 96 |
| 184 | 30653200 | 64, 104 |
| 185 | 1286300 | 64, 109 |
| 186 | 91523000 | 64, 112 |
| 187 | 73000 | 64, 131 |
| 188 | 359200 | 64, 132 |
| 189 | 16518000 | 64, 146 |
| 190 | 6522300 | 64, 154 |
| 191 | 37000 | 64, 158 |
| 192 | 3850900 | 64, 160 |
| 193 | 1455600 | 64, 181 |
| 194 | 6062800 | 64, 184 |
| 195 | 4900 | 64, 188 |
| 196 | 4399000 | 64, 200 |
| 197 | 32600 | 64, 220 |
| 198 | 75459500 | 64, 276 |
| 199 | 187539400 | 64, 278 |
| 200 | 176650700 | 64, 280 |
| 201 | 7183300 | 64, 283 |
| 202 | 8281000 | 64, 284 |
| 203 | 171700 | 69, 246 |
| 204 | 7300 | 69, 295 |
| 205 | 47691500 | 70, 240 |
| 206 | 31000 | 70, 302 |
| 207 | 31734000 | 71, 100 |
| 208 | 7633500 | 72, 100 |
| 209 | 286100 | 72, 120 |
| 210 | 82400 | 73, 134 |
| 211 | 318000 | 74, 200 |
| 212 | 61986100 | 75, 80 |
| 213 | 6501100 | 75, 198 |
| 214 | 8013100 | 75, 206 |
| 215 | 14447700 | 75, 267 |
| 216 | 105200 | 77, 134 |
| 217 | 3350500 | 79, 198 |
| 218 | 136500 | 80, 88 |
| 219 | 148900 | 80, 105 |
| 220 | 82500 | 80, 107 |
| 221 | 92300 | 80, 112 |
| 222 | 4900 | 80, 114 |
| 223 | 83600 | 80, 128 |
| 224 | 241600 | 80, 130 |
| 225 | 32600 | 80, 138 |
| 226 | 114400 | 80, 147 |
| 227 | 71500 | 80, 155 |
| 228 | 32600 | 80, 169 |
| 229 | 74200 | 80, 211 |
| 230 | 20800 | 80, 223 |
| 231 | 14426900 | 80, 261 |
| 232 | 105200 | 80, 262 |
| 233 | 17775300 | 80, 266 |
| 234 | 61737200 | 80, 276 |
| 235 | 16879800 | 80, 278 |
| 236 | 16324200 | 80, 280 |
| 237 | 52900 | 80, 292 |
| 238 | 24960000 | 82, 200 |
| 239 | 21467200 | 83, 206 |
| 240 | 38299900 | 85, 150 |
| 241 | 11800 | 85, 194 |
| 242 | 8868500 | 85, 198 |
| 243 | 51857500 | 87, 120 |
| 244 | 7823000 | 87, 295 |
| 245 | 287200 | 88, 198 |
| 246 | 299000 | 89, 251 |
| 247 | 3501600 | 90, 206 |
| 248 | 15900 | 91, 194 |
| 249 | 20800 | 92, 100 |
| 250 | 295900 | 94, 134 |
| 251 | 163600 | 94, 288 |
| 252 | 13049100 | 94, 290 |
| 253 | 4343100 | 95, 150 |
| 254 | 1670800 | 95, 206 |
| 255 | 14643200 | 95, 257 |
| 256 | 4500 | 96, 134 |
| 257 | 18792400 | 97, 100 |
| 258 | 254600 | 97, 176 |
| 259 | 4900 | 97, 194 |
| 260 | 11400 | 97, 299 |
| 261 | 4699200 | 98, 120 |
| 262 | 37000 | 98, 158 |
| 263 | 57800 | 99, 134 |
| 264 | 58000 | 99, 200 |
| 265 | 95601700 | 99, 267 |
| 266 | 466300 | 100, 105 |
| 267 | 3813400 | 100, 119 |
| 268 | 53400 | 100, 122 |
| 269 | 8881800 | 100, 127 |
| 270 | 9006000 | 100, 139 |
| 271 | 45491000 | 100, 156 |
| 272 | 5083800 | 100, 179 |
| 273 | 34491300 | 100, 187 |
| 274 | 586000 | 100, 200 |
| 275 | 160704800 | 100, 250 |
| 276 | 3145400 | 100, 262 |
| 277 | 15156300 | 100, 264 |
| 278 | 5687700 | 100, 267 |
| 279 | 21354000 | 100, 279 |
| 280 | 2764700 | 100, 293 |
| 281 | 136500 | 103, 294 |
| 282 | 187300 | 104, 134 |
| 283 | 12001500 | 104, 150 |
| 284 | 625500 | 105, 288 |
| 285 | 466900 | 106, 136 |
| 286 | 3351300 | 106, 176 |
| 287 | 10376300 | 106, 245 |
| 288 | 13669100 | 106, 262 |
| 289 | 70700 | 106, 299 |
| 290 | 8233100 | 108, 294 |
| 291 | 36700 | 109, 134 |
| 292 | 7134200 | 109, 206 |
| 293 | 7800300 | 112, 150 |
| 294 | 7134200 | 112, 206 |
| 295 | 7413300 | 113, 290 |
| 296 | 20800 | 114, 194 |
| 297 | 4737100 | 114, 198 |
| 298 | 16120700 | 118, 206 |
| 299 | 4210100 | 120, 142 |
| 300 | 5614300 | 120, 147 |
| 301 | 37000 | 120, 158 |
| 302 | 4346800 | 120, 181 |
| 303 | 8609000 | 120, 200 |
| 304 | 37500 | 120, 232 |
| 305 | 67700 | 120, 256 |
| 306 | 7584900 | 120, 269 |
| 307 | 60768700 | 120, 276 |
| 308 | 29029300 | 120, 280 |
| 309 | 185948000 | 120, 285 |
| 310 | 5040600 | 120, 294 |
| 311 | 295900 | 122, 288 |
| 312 | 16600 | 124, 150 |
| 313 | 26571500 | 126, 150 |
| 314 | 11581900 | 127, 290 |
| 315 | 57900 | 128, 194 |
| 316 | 5277000 | 129, 294 |
| 317 | 4500 | 130, 194 |
| 318 | 312200 | 130, 198 |
| 319 | 328300 | 131, 134 |
| 320 | 1678100 | 131, 150 |
| 321 | 7271000 | 131, 206 |
| 322 | 6886600 | 132, 206 |
| 323 | 62400 | 134, 146 |
| 324 | 57900 | 134, 176 |
| 325 | 20800 | 134, 181 |
| 326 | 20800 | 134, 184 |
| 327 | 20800 | 134, 210 |
| 328 | 14557000 | 134, 260 |
| 329 | 113974900 | 134, 262 |
| 330 | 90274900 | 134, 266 |
| 331 | 114600 | 134, 276 |
| 332 | 66174200 | 134, 278 |
| 333 | 66880100 | 134, 280 |
| 334 | 63354500 | 134, 282 |
| 335 | 210000 | 134, 283 |
| 336 | 4954600 | 134, 284 |
| 337 | 34983200 | 136, 252 |
| 338 | 114515800 | 136, 258 |
| 339 | 238000 | 136, 290 |
| 340 | 57900 | 136, 293 |
| 341 | 483900 | 139, 294 |
| 342 | 4500 | 141, 194 |
| 343 | 215800 | 141, 198 |
| 344 | 4051600 | 141, 206 |
| 345 | 10856200 | 141, 267 |
| 346 | 299000 | 142, 200 |
| 347 | 5083800 | 142, 204 |
| 348 | 12443700 | 142, 230 |
| 349 | 21430500 | 148, 150 |
| 350 | 11800 | 148, 194 |
| 351 | 938300 | 148, 288 |
| 352 | 16869300 | 150, 156 |
| 353 | 1989800 | 150, 178 |
| 354 | 20800 | 150, 183 |
| 355 | 1360700 | 150, 186 |
| 356 | 20800 | 150, 228 |
| 357 | 387000 | 150, 230 |
| 358 | 4976700 | 150, 260 |
| 359 | 712000 | 150, 263 |
| 360 | 4425700 | 150, 264 |
| 361 | 485500 | 150, 270 |
| 362 | 21677000 | 150, 276 |
| 363 | 39023400 | 150, 278 |
| 364 | 44601200 | 150, 280 |
| 365 | 36194200 | 150, 282 |
| 366 | 57172500 | 150, 283 |
| 367 | 16854400 | 150, 290 |
| 368 | 1663200 | 150, 292 |
| 369 | 240200 | 150, 296 |
| 370 | 32600 | 153, 206 |
| 371 | 8868500 | 156, 198 |
| 372 | 33000 | 158, 218 |
| 373 | 42000 | 158, 288 |
| 374 | 79000 | 158, 293 |
| 375 | 24157500 | 160, 206 |
| 376 | 21727000 | 162, 288 |
| 377 | 204217600 | 164, 247 |
| 378 | 240200 | 164, 252 |
| 379 | 159000 | 164, 288 |
| 380 | 1371200 | 168, 240 |
| 381 | 548800 | 171, 267 |
| 382 | 196100 | 173, 294 |
| 383 | 3952000 | 176, 200 |
| 384 | 20800 | 176, 220 |
| 385 | 594000 | 176, 252 |
| 386 | 39106400 | 176, 256 |
| 387 | 125898200 | 176, 264 |
| 388 | 2319100 | 177, 206 |
| 389 | 2179300 | 178, 294 |
| 390 | 294500 | 178, 295 |
| 391 | 32965900 | 180, 245 |
| 392 | 2934100 | 184, 252 |
| 393 | 18180200 | 185, 257 |
| 394 | 81042000 | 186, 288 |
| 395 | 93000 | 189, 245 |
| 396 | 67700 | 189, 261 |
| 397 | 4900 | 192, 194 |
| 398 | 20895800 | 194, 264 |
| 399 | 88064100 | 194, 266 |
| 400 | 74200 | 194, 276 |
| 401 | 133997200 | 194, 278 |
| 402 | 133452900 | 194, 280 |
| 403 | 15258600 | 194, 282 |
| 404 | 38783500 | 194, 283 |
| 405 | 172500 | 194, 303 |
| 406 | 88253200 | 196, 263 |
| 407 | 274000 | 198, 200 |
| 408 | 20828100 | 198, 257 |
| 409 | 87070700 | 198, 259 |
| 410 | 1681300 | 198, 276 |
| 411 | 41704200 | 198, 278 |
| 412 | 45065600 | 198, 280 |
| 413 | 37184600 | 198, 283 |
| 414 | 1182500 | 198, 297 |
| 415 | 8742400 | 198, 303 |
| 416 | 58000 | 200, 204 |
| 417 | 4052000 | 200, 206 |
| 418 | 287000 | 200, 210 |
| 419 | 13000 | 200, 243 |
| 420 | 391000 | 200, 288 |
| 421 | 1633000 | 200, 295 |
| 422 | 198100 | 203, 267 |
| 423 | 673200 | 204, 251 |
| 424 | 91832100 | 204, 265 |
| 425 | 1032200 | 206, 211 |
| 426 | 32600 | 206, 220 |
| 427 | 2565000 | 206, 253 |
| 428 | 2211100 | 206, 262 |
| 429 | 2453900 | 206, 270 |
| 430 | 64427300 | 206, 276 |
| 431 | 62429200 | 206, 278 |
| 432 | 56106400 | 206, 280 |
| 433 | 1463900 | 206, 283 |
| 434 | 7282600 | 206, 290 |
| 435 | 198100 | 206, 297 |
| 436 | 206301000 | 206, 304 |
| 437 | 35260600 | 212, 245 |
| 438 | 3535900 | 218, 245 |
| 439 | 10372000 | 218, 253 |
| 440 | 469200 | 218, 286 |
| 441 | 737700 | 218, 295 |
| 442 | 382800 | 220, 245 |
| 443 | 9500 | 220, 247 |
| 444 | 57800 | 220, 293 |
| 445 | 13140800 | 224, 295 |
| 446 | 4300 | 234, 288 |
| 447 | 67700 | 236, 257 |
| 448 | 6411800 | 237, 290 |
| 449 | 116428500 | 240, 265 |
| 450 | 123832900 | 241, 288 |
| 451 | 803000 | 242, 305 |
| 452 | 7672800 | 243, 288 |
| 453 | 49833700 | 244, 251 |
| 454 | 68032700 | 244, 294 |
| 455 | 258200 | 244, 299 |
| 456 | 165500 | 245, 245 |
| 457 | 108820300 | 245, 250 |
| 458 | 214383400 | 245, 258 |
| 459 | 87972600 | 245, 263 |
| 460 | 4358300 | 245, 288 |
| 461 | 437700 | 245, 293 |
| 462 | 3007500 | 246, 251 |
| 463 | 204556300 | 246, 257 |
| 464 | 1815500 | 246, 267 |
| 465 | 2429600 | 247, 258 |
| 466 | 214443100 | 247, 261 |
| 467 | 2555300 | 247, 294 |
| 468 | 5990700 | 251, 288 |
| 469 | 3882400 | 251, 290 |
| 470 | 37662900 | 252, 294 |
| 471 | 5304600 | 253, 288 |
| 472 | 55627100 | 254, 288 |
| 473 | 104046000 | 257, 263 |
| 474 | 668200 | 257, 267 |
| 475 | 63721600 | 257, 294 |
| 476 | 104061100 | 258, 261 |
| 477 | 52300 | 258, 263 |
| 478 | 711800 | 258, 265 |
| 479 | 1429800 | 259, 288 |
| 480 | 13718300 | 260, 267 |
| 481 | 15099900 | 261, 290 |
| 482 | 2766300 | 261, 293 |
| 483 | 77269000 | 262, 288 |
| 484 | 14846000 | 262, 305 |
| 485 | 16858800 | 263, 265 |
| 486 | 245100 | 263, 267 |
| 487 | 510700 | 263, 294 |
| 488 | 22923800 | 264, 294 |
| 489 | 5190900 | 265, 288 |
| 490 | 14421200 | 266, 288 |
| 491 | 8553900 | 288, 293 |
| 492 | 14895200 | 288, 306 |
| 493 | 3934100 | 290, 294 |
| 494 | 8117500 | 293, 293 |
| 495 | 57900 | 293, 296 |
| 496 | 1926000 | 294, 305 |
| 497 | 4266000 | 261, 609 |
| 498 | 47393100 | 267, 616 |
| 499 | 3076800 | 267, 617 |
| 500 | 71616900 | 240, 645 |
| 501 | 38900 | 240, 653 |
| 502 | 9846000 | 267, 657 |
| 503 | 6016300 | 240, 674 |
| 504 | 35000 | 247, 758 |
| 505 | 198879000 | 267, 811 |
| 506 | 87408100 | 258, 859 |
| 507 | 29340200 | 258, 863 |
| 508 | 200300 | 267, 922 |
| 509 | 68700 | 261, 933 |
| 510 | 319700 | 258, 940 |
| 511 | 16000 | 248, 945 |
| 512 | 174159000 | 246, 963 |
| 513 | 194000 | 251, 963 |
| 514 | 30300 | 262, 995 |
| 515 | 184900 | 267, 998 |
| 516 | 53501100 | 261, 1000 |
| 517 | 728000 | 246, 1010 |
| 518 | 30300 | 267, 1010 |
| 519 | 3456300 | 261, 1012 |
| 520 | 72016300 | 261, 1015 |
| 521 | 73531900 | 261, 1020 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `a * b * r * k` | -20675000 |
| `a * a * b * r` | 600 |
| `a * b * w * j` | -300 |
| `a * a * b * j` | -300 |
| `a * b` | -2020064068811234797564000553/24752125000000000000 |
| `a * c` | 1397181727065533/62500000 |
| `r * k` | -43303823351589606850844371192351/33882936391250000000000000 |
| `a * r` | 8622005129358124612334225959/247521250000000000000 |
| `w * j` | -14145982582374773664371282807649/33882936391250000000000000 |
| `a * j` | -301993145449907402049475959/247521250000000000000 |
| `1` | -1182031925777549074556461882265178593283/29279058526152515000000000000000 |
| `a * b * q` | -13111749/10 |
| `a * b * b * q` | -1643700 |
| `a * b * e * p` | -800 |
| `a * b * b * e` | 400 |
| `a * b * c * q` | 300 |
| `a * c * e * p` | -100 |
| `a * b * c * e` | 514900 |
| `q` | 26133866755443874506601/625000000000000 |
| `b * q` | -68137887585335793/10000000000 |
| `e * p` | -45523124003022109506601/625000000000000 |
| `b * e` | -11442026947340853787799/2500000000000000 |
| `a * b * b * k` | 46440000 |
| `a * b * b * w` | -34008000 |
| `a * b * c * k` | 312400 |
| `b * k` | -1168791423316128307/7812500000000 |
| `b * w` | -2557996994815929962201/2500000000000000 |
| `a * b * w` | 59368549304245929/10000000000 |
| `a * b * h * r` | -100 |
| `a * b * h` | 7916300 |
| `a * c * h` | -52300 |
| `w` | -470311896024271124973767311/342222500000000000000 |
| `h * r` | -31386215227237/39062500 |
| `h` | 3324945668177983218211/2500000000000000 |
| `e * r` | 1545868444156682132797767311/342222500000000000000 |
| `a * b * j` | -6069800 |
| `a * c * j` | -5787700 |
| `j` | -77587740033778161635653226802829/85555621054000000000000000 |
| `a * b * e` | -63771966304245929/10000000000 |
| `a * c * e` | -83300 |
| `e` | 60512909088566479/10000000000 |
| `f * k` | -951960259460802883958746773197171/85555621054000000000000000 |
| `h * j` | -14809160477304774304260310258337/2673613157937500000000000 |
| `f * h` | -12993566873401502618888618131/1069445263175000000000 |
| `a * b * f * k` | -17155600 |
| `a * b * h * j` | 200 |
| `a * b * f * h` | 600 |
| `a * c * f * h` | 15091400 |
| `b * e * e * f` | 100 |
| `a * b * e * f` | -200 |
| `a * a * b` | -589812972245039/500000000 |
| `a * a * b * f` | 3693100 |
| `a` | -37026290918254227/2500000000 |
| `a * a` | 67129947/10 |
| `a * e * f` | -181100 |
| `a * a * f` | -397600 |
| `e * f` | 89775376327173195877/31250000000000 |
| `a * f` | 96150248496364167/6250000000 |
| `p * k` | 345205740313651663817/2000000000000000 |
| `q * j` | 4664512629976438536183/2000000000000000 |
| `b * e * p * k` | -6339000 |
| `b * b * e * k` | -62947300 |
| `b * e * q * j` | -500 |
| `b * b * e * q` | 36330200 |
| `a * b * p * k` | 200 |
| `a * p * k` | 500 |
| `a * b * k` | 932340782058021/250000000 |
| `a * q * j` | 100 |
| `u * w` | -17318892177244375857/684445000000000 |
| `e * u` | 287411164709686910364082619/68444500000000000000 |
| `v * r` | -17467510858902081457/684445000000000 |
| `v` | -134476049105966595050082619/68444500000000000000 |
| `b * e * u * w` | -129400 |
| `b * e * e * u` | 350200 |
| `b * e * v` | -105449391/2000 |
| `a * b * u * w` | -11800 |
| `a * b * e * u` | 53800 |
| `a * b * v * r` | -104000 |
| `a * b * v` | 22265622245039/500000000 |
| `a * u * w` | 1300 |
| `a * e * u` | -11200 |
| `a * w` | -2450662304245929/10000000000 |
| `a * v * r` | -281600 |
| `a * v` | 164500 |
| `a * e * r` | 2450662304245929/10000000000 |
| `r` | -14995104872409471/2500000000 |
| `f * w` | 2546868594165947/312500000 |
| `b * e * r * k` | -25027600 |
| `b * e * r` | 12739300 |
| `b * e * f * k` | 56066500 |
| `b * e * w * j` | -32600 |
| `b * e * j` | -3611900 |
| `a * b * r` | 11567300 |
| `a * b * f * w` | 12941000 |
| `a * r * k` | 11125843479525853/5000000000 |
| `a * f * k` | -6046217180942249/500000000 |
| `a * w * j` | -2995788983/5000000000 |
| `a * f * w` | -1392700 |
| `b * p * w` | 998800 |
| `a * b * p` | -1059200 |
| `b * q * r` | 200 |
| `b` | 46307541457152181/10000000000 |
| `a * b * p * w` | 500 |
| `a * a * b * p` | 3896700 |
| `a * b * q * r` | -1100 |
| `a * f * p * w` | -100 |
| `a * a * f * p` | 800 |
| `a * f * q * r` | -287500 |
| `p * w` | 87848162119723/31250000 |
| `a * p` | 414080651497144719/10000000000 |
| `q * r` | 17401339801927/62500000 |
| `b * h` | 8764909460524826429123/495042500000000 |
| `b * h * k` | -19437700 |
| `b * e * h * j` | 200 |
| `a * b * e * j` | 14560100 |
| `k` | 1466364935201076381727/1368890000000000 |
| `e * j` | 80835982586207685447/68444500000000 |
| `b * h * p * k` | 400 |
| `a * b * h * p` | 300 |
| `b * h * q * j` | -400 |
| `b * h * r * k` | 1992900 |
| `b * h * w * j` | 500 |
| `b * b * h * k` | 17369800 |
| `b * b * e * h` | -386900 |
| `b * f * h * k` | -13112900 |
| `b * h * j` | 500 |
| `b * b * h` | -12560000 |
| `a * b * b` | -19136100 |
| `b * b * h * q` | 200 |
| `b * c * h * q` | -22349700 |
| `b * h * h * p` | 7355300 |
| `a * b * c * h` | -14605900 |
| `c * q` | -985996637973531906083/12500000000000 |
| `h * p` | -3784741903139667152589/625000000000000 |
| `c * h` | 1788156042259281/2500000000 |
| `b * h * p * v` | -200 |
| `b * c * h * v` | 168400 |
| `b * h * q * u` | 300 |
| `a * b * c * v` | 400 |
| `a * b * q * u` | 200 |
| `p * v` | -100531084597/20000000 |
| `c * v` | 1357141290064855201/625000000000 |
| `q * u` | 100531084597/20000000 |
| `b * h * p` | -11342188203/1000 |
| `b * f * h * q` | 200 |
| `a * b * f * q` | 1000 |
| `p` | 49334846498779992472311/2000000000000000 |
| `f * q` | 11240535642020007527689/2000000000000000 |
| `b * h * r` | -4833282 |
| `b * f * h * w` | 400 |
| `b * h * q * r` | 400 |
| `b * h * p * w` | -600 |
| `b * h * q` | 12113500 |
| `b * h * v` | -135400 |
| `b * f * h` | 8824100 |
| `a * b * f` | 3873100 |
| `f` | 624858744438869/5000000000 |
| `b * e * h * r` | 8101800 |
| `b * h * w` | -8101800 |
| `b * q * q` | -800 |
| `b * e * p * q` | 800 |
| `a * p * q` | -900 |
| `a * a * p` | -335300 |
| `a * e * p * p` | 900 |
| `a * f * h * p` | 400 |
| `b * f * q * w` | -999000 |
| `a * p * r` | -70998600 |
| `a * a * p * r` | -144700 |
| `b * h * p * q` | -800 |
| `a * h * p * p` | -1300 |
| `b * p * q * w` | -100 |
| `b * q * q * r` | 100 |
| `a * p * p * w` | -100 |
| `a * p * q * r` | 100 |
| `b * q * r * k` | 400 |
| `b * q * w * j` | -300 |
| `a * p * r * k` | 300 |
| `a * p * w * j` | -300 |
| `a * a * p * j` | 300 |
| `b * c * q * q` | -900 |
| `b * b * q * q` | 400 |
| `a * c * p * q` | -900 |
| `a * b * p * q` | 500 |
| `b * c * q * v` | 400 |
| `b * b * q * v` | 200 |
| `a * b * b * v` | 74000 |
| `a * c * p * v` | 300 |
| `b * v` | 1773664573465199620209/125000000000000 |
| `b * f * q * k` | 200 |
| `b * c * q * k` | 100 |
| `b * q * j` | -200 |
| `b * c * q` | 22878700 |
| `a * b * c` | 9551800 |
| `a * f * p * k` | -200 |
| `a * c * p * k` | -200 |
| `a * p * j` | -200 |
| `a * c * p` | -300 |
| `c * k` | -17006525784619901241/15625000000000 |
| `c` | 6461876789758526049/625000000000 |
| `a * c * h * p` | 500 |
| `b * e * f * q` | -27701800 |
| `b * q * k` | 682700 |
| `a * e * f * p` | 200 |
| `a * e * p * j` | -700 |
| `b * p * q * k` | -500 |
| `b * q * q * j` | 500 |
| `a * p * p * k` | -400 |
| `a * p * q * j` | 400 |
| `a * h * p * r` | 700 |
| `b * b * q` | -21268900 |
| `b * e * q` | -6313800 |
| `a * e * p` | -569749/10 |
| `b * f * q` | -7269000 |
| `a * f * p` | 100 |
| `b * q * u` | -400 |
| `a * b * u` | 11600 |
| `a * p * u` | 400 |
| `u` | -440756669936413195289/500000000000000 |
| `a * h * p * u` | -100 |
| `a * u` | 122174840793420209/125000000000000 |
| `b * v * w` | 24200 |
| `a * u * k` | 4000 |
| `b * f * v * k` | -77600 |
| `b * f * h * v` | -57800 |
| `a * f * u * k` | 400 |
| `a * f * h * u` | 100 |
| `b * w * k` | 50461343/10 |
| `b * p * w * k` | -100 |
| `b * b * w * k` | -20675200 |
| `b * b * q * w` | 14644400 |
| `c * e` | 117024079335719278583/12500000000000 |
| `b * c * v * w` | -100 |
| `b * c * e * w` | 162000 |
| `b * f * w` | -209300 |
| `b * b * w` | 14946000 |
| `a * f * r` | 1463880686/15625 |
| `b * b * q * k` | -3169500 |
| `b * c * h * k` | 29430800 |
| `a * c * q * j` | 500 |
| `b * c * w * k` | -779100 |
| `c * w` | 41077407419993696571/3125000000000 |
| `a * e * r * j` | -20675200 |
| `b * p * k` | 2642300 |
| `b * f * w * k` | -1612500 |
| `b * r * k` | 11878100 |
| `a * f * q * j` | 200 |
| `a * r * j` | 8618700 |
| `b * e * k` | 5800495303782911/250000000 |
| `a * e * j` | 10451600 |
| `b * e * u * k` | 44400 |
| `b * c * e * k` | 180100 |
| `a * c * e * j` | 100 |
| `c * e * r` | -596589835958627/62500000 |
| `c * e * f * w` | -100 |
| `c * e * j` | -5035600 |
| `a * c * r` | -34152400 |
| `c * r * k` | -801/10 |
| `c * w * j` | 1841000 |
| `c * f * h * q` | 900 |
| `c * h * p` | -86911797/1000 |
| `b * c * h` | -25208900 |
| `a * c * f * q` | -100 |
| `a * f * p * q` | -1000 |
| `a * p * p` | 1000 |
| `c * q * r` | 26092208627/62500000 |
| `c * f * q * v` | -100 |
| `c * h * p * v` | -100 |
| `c * f * h * v` | -800 |
| `c * p * v` | 8800 |
| `a * f * q * u` | 300 |
| `b * c * v * k` | -500 |
| `c * q * v * j` | -100 |
| `a * b * u * k` | -37500 |
| `c * p * w * k` | 100 |
| `c * q * w * j` | 200 |
| `c * f * q * w` | 100 |
| `b * c * q * w` | -15838800 |
| `c * p * w` | -60643600 |
| `b * c * w` | -7115600 |
| `c * q * r * k` | -300 |
| `c * f * k` | 29910600 |
| `b * c * k` | -19795700 |
| `a * c * f` | -10435100 |
| `a * f * j` | 100 |
| `h * u` | 28613516837916656677/500000000000000 |
| `c * h * p * k` | 100 |
| `c * q * u * k` | 100 |
| `c * h * u * k` | -100 |
| `c * w * k` | 2894931/10 |
| `a * a * r` | -62106559495788983/5000000000 |
| `a * a * j` | 59495788983/5000000000 |
| `e * f * w * j` | -114100 |
| `a * e * f * j` | -100 |
| `f * h * q` | -300 |
| `a * f * q` | 167700 |
| `f * h * k` | 62118201674557729/2500000000 |
| `h * p * w` | 6968636269259293/10000000000 |
| `a * h * p` | 400 |
| `h * p * k` | 342717 |
| `h * q * j` | 100 |
| `c * h * v` | -18200 |
| `a * c * v` | 100 |
| `h * v` | 25400 |
| `e * h * u` | -128505 |
| `c * e * h` | 4305805 |
| `c * h * q` | 52300 |
| `h * h * p` | 3710500 |
| `c * h * h` | -2184900 |
| `h * u * w` | -2662 |
| `h * w` | -1076605269259293/10000000000 |
| `h * v * r` | 2662 |
| `e * h * r` | 92400 |
| `h * r * k` | -537019023901969/2500000000 |
| `h * k` | -631400 |
| `h * w * j` | 91267435243741/50000000 |
| `e * h * j` | 10586000 |
| `a * k` | 140220303782911/250000000 |
| `f * h * h` | -6115100 |
| `a * f * h` | -8180200 |
| `h * h * j` | 33900 |
| `q * w` | -509394730740707/10000000000 |
| `a * q` | 1421749/10 |
| `e * q * r` | -678544 |
| `e * p * w` | 7956834730740707/10000000000 |
| `e * e * p * r` | -66200 |
| `q * k` | 22792851450451/10000000000 |
| `e * q * j` | 159400 |
| `e * p * k` | -1830792851450451/10000000000 |
| `e * e * p * j` | 21400 |
| `b * e * e * p` | 6232600 |
| `f * q * w` | -6399600 |
| `b * q * w` | 5540000 |
| `b * e * p * w` | -2394600 |
| `e * p * r` | 3489835958627/62500000 |
| `b * e * p` | -813100 |
| `f * q * k` | -3630591851450451/10000000000 |
| `e * f * p * k` | 4672000 |
| `e * p * j` | -5332900 |
| `e * f * q` | 149080250765647/125000000 |
| `h * q` | -28300 |
| `a * h` | 28300 |
| `e * f * h * p` | 100 |
| `e * e * f * p` | 28300 |
| `e * h * p` | 756200 |
| `e * f * p` | -3436468 |
| `c * e * h * p` | 207000 |
| `q * w * j` | 31/10 |
| `e * v * r` | 169443 |
| `v * k` | 39435403/10000 |
| `v * w` | 109500 |
| `e * v * j` | 7134597/10000 |
| `e * e * u * r` | -379100 |
| `e * u * k` | -4657 |
| `e * u * w` | 47857 |
| `f * v * k` | -143907679/5000 |
| `f * v * w` | 36300 |
| `v * j` | 64594928103572159/500000000000000 |
| `e * u * r` | 790060622241913/2500000000 |
| `e * f * u * w` | -316600 |
| `f * v` | 87535264799609095289/500000000000000 |
| `u * k` | -3823827028103572159/500000000000000 |
| `a * a * u` | 16815622245039/500000000 |
| `e * k` | -1594300 |
| `e * f * k` | -69713207148549549/10000000000 |
| `a * e` | 574800 |
| `e * f * j` | 7926200 |
| `e * e * j` | -221200 |
| `c * e * k` | -1944910924627/100000000 |
| `c * v * k` | 913363147/31250000 |
| `c * e * e * j` | 279600 |
| `a * c * v * j` | -500 |
| `f * h * h * p` | -24363200 |
| `b * f * h * h` | -400 |
| `f * h * p * k` | -3190300 |
| `f * h * q * j` | 200 |
| `f * h * p * v` | 900 |
| `f * h * q * u` | -900 |
| `a * f * p * v` | -400 |
| `a * c * f * v` | 400 |
| `f * h * w` | 2919100 |
| `f * h * j` | 6510300 |
| `a * f * h * j` | -200 |
| `f * h * v * r` | -20800 |
| `f * h * v` | -119500 |
| `e * f * h * r` | 500 |
| `a * e * f * u` | 50600 |
| `f * p * v * w` | -400 |
| `q * u * r` | -400 |
| `a * a * u * r` | -57900 |
| `c * q * u` | -8700 |
| `c * h * u` | -84300 |
| `c * f * v * w` | 500 |
| `a * c * e * f` | 258800 |
| `c * v * r` | 129600 |
| `f * h * p * w` | -6471000 |
| `c * f * h * w` | -500 |
| `h * p * r` | 4428100 |
| `c * h * r` | 100 |
| `f * w * k` | -500978442461621/625000000 |
| `c * f * w * k` | -1911200 |
| `e * r * j` | 11503407/2 |
| `e * h * p * r` | -600 |
| `b * e * h * p` | 3061700 |
| `h * p * r * k` | 200 |
| `h * p * w * j` | -300 |
| `h * p * u * k` | 100 |
| `h * p * v * j` | -100 |
| `e * h * p * j` | -3190600 |
| `h * h * p * r` | -3235200 |
| `h * h * p * j` | 500 |
| `h * p * j` | 1329400 |
| `b * h * u` | -86900 |
| `f * h * u` | -43518452929/1953125 |
| `a * f * u` | -21300 |
| `f * h * q * r` | 300 |
| `h * q * r * j` | 100 |
| `f * h * r * k` | -200 |
| `h * h * r * j` | -58400 |
| `f * h * h * r` | 400 |
| `h * r * j` | 544744265053439/312500000 |
| `a * f * h * r` | -500 |
| `e * f * h * j` | -10778100 |
| `e * h * r * j` | -3989900 |
| `f * p * w * k` | -100 |
| `p * w * j` | 100 |
| `f * q * r * k` | 100 |
| `q * r * j` | -488017548027/10000000000 |
| `c * h * p * w` | 300 |
| `c * h * q * r` | -100 |
| `h * p * p * w` | 600 |
| `h * p * q * r` | -600 |
| `f * p * q * w` | 600 |
| `p * p * w` | -600 |
| `f * q * q * r` | -600 |
| `p * q * r` | 600 |
| `p * v * w * j` | 400 |
| `q * u * r * k` | 400 |
| `f * p * w` | -5552700 |
| `f * q * r` | -13168312982451973/10000000000 |
| `c * e * p * w` | -992600 |
| `e * f * q * r` | 3254200 |
| `a * c * p * w` | -100 |
| `a * c * w * j` | 100 |
| `e * f * q * j` | -1480900 |
| `p * q * k` | 100 |
| `e * p * p * k` | -100 |
| `q * q * j` | -100 |
| `e * p * q * j` | 100 |
| `p * r * k` | -511982451973/10000000000 |
| `h * p * p * k` | -100 |
| `h * p * q * j` | 100 |
| `c * e * p * k` | 100 |
| `c * h * q * j` | 100 |
| `c * e * q * j` | -100 |
| `c * p * k` | -100 |
| `c * q * j` | -4426000 |
| `a * p * p * v` | -500 |
| `a * p * q * u` | 500 |
| `a * p * v * j` | 500 |
| `a * q * u * j` | -500 |
| `f * p * q * k` | -100 |
| `p * p * k` | 100 |
| `f * q * q * j` | 100 |
| `p * q * j` | -100 |
| `f * p * k` | -2837200 |
| `f * q * j` | 617100 |
| `b * u * k` | 70700 |
| `f * u * k` | -3000 |
| `f * v * j` | 3000 |
| `e * f * v * j` | -7300 |
| `q * r * k` | -31/10 |
| `a * q * r` | 31000 |
| `b * w * j` | 13700 |
| `c * e * f * q` | 946100 |
| `b * c * e * q` | 2721200 |
| `c * e * p` | 572600 |
| `b * c * e` | -8554682 |
| `b * b * e` | 34148718 |
| `c * e * v` | -93191204426437/20000000 |
| `c * e * e * u` | -348300 |
| `c * c * e * e` | 410700 |
| `b * c * e * v` | 97200 |
| `b * c * e * e` | 5389500 |
| `c * f * q` | -395100 |
| `c * f * h` | 890900 |
| `c * p` | 35877600 |
| `b * p` | 2771900 |
| `c * c * v` | 92300 |
| `b * c * v` | -1398700 |
| `b * b * v` | -62587600 |
| `c * h * j` | 6564900 |
| `c * j` | 3189800 |
| `b * f * k` | -11126400 |
| `b * j` | 1161000 |
| `c * c * h * v` | 100 |
| `c * e * h * u` | 202300 |
| `b * e * h * u` | 178900 |
| `b * c * e * h` | 4572200 |
| `c * q * w` | 1704600 |
| `b * b * h * v` | 233700 |
| `b * f * v * w` | -337500 |
| `b * b * v * w` | 56600 |
| `b * v * r` | 14100 |
| `b * b * v * k` | 77600 |
| `c * h * v * j` | 100 |
| `c * e * f * v` | 400 |
| `c * c * v * w` | -156100 |
| `c * v * r * k` | 400 |
| `c * v * w * j` | -400 |
| `b * p * v` | 700 |
| `c * v * w` | -123500 |
| `b * v * k` | -65186969693/7812500 |
| `c * h * w * j` | -2690200 |
| `c * c * q * k` | 100 |
| `c * c * h * k` | -100 |
| `b * b * k` | 21297600 |
| `b * b` | -1316679 |
| `b * f` | 12094300 |
| `b * e * f` | -33186000 |
| `e * f * f` | 436400 |
| `e * e * f` | -712250765647/125000000 |
| `b * e * e` | -5279100 |
| `b * e * e * j` | 1982600 |
| `h * h` | 299000 |
| `b * h * h` | -299000 |
| `b * e * h` | -7934100 |
| `b * e * f * h` | 1830800 |
| `e * q * u` | -11700 |
| `e * p * v` | 11700 |
| `b * e * u` | -377700 |
| `c * e * v * r` | -312200 |
| `e * f * r` | -16873349/5 |
| `c * h * w` | -31629490243741/50000000 |
| `b * c * h * w` | 18672100 |
| `c * e * h * r` | 100 |
| `b * u * w` | 107100 |
| `w * k` | -198600 |
| `e * r * k` | 269340610924627/100000000 |
| `e * w * j` | -199510610924627/100000000 |
| `e * e * r * j` | -254600 |
| `f * f * h * q` | -400 |
| `f * f * h * h` | 400 |
| `f * h * p` | 39500900 |
| `f * f * q * w` | -1253100 |
| `p * r` | 81226312982451973/10000000000 |
| `b * r` | -5885918 |
| `b * f * q * q` | -500 |
| `b * p * q` | 500 |
| `f * q * u * w` | 400 |
| `p * v * r` | 400 |
| `c * f * q * k` | 400 |
| `f * f * q * k` | 400 |
| `e * f * f * q` | 100 |
| `p * j` | 2219700 |
| `f * f * q` | 740700 |
| `f * p` | -6045300 |
| `e * f * v` | 64469142437/20000000 |
| `f * f * w` | 1363200 |
| `f * r` | 1403100 |
| `f * r * k` | 368836277337/10000000000 |
| `f * w * j` | 2380800 |
| `r * j` | -23808368836277337/10000000000 |
| `b * c` | 15598221 |
| `b * h * u * w` | 20800 |
| `b * p * v * k` | 500 |
| `b * q * u * k` | -500 |
| `b * p * q * v` | -500 |
| `b * q * q * u` | 500 |
| `p * v * r * k` | -400 |
| `q * u * w * j` | -400 |
| `q * u * j` | 400 |
| `f * u * w` | 132000 |
| `f * v * r` | -167839463456341/2500000000 |
| `b * f * v` | 295900 |
| `c * h * r * k` | -100 |
| `c * e * u` | 145200 |
| `c * e * e` | -864200 |
| `c * h * k` | 67944490243741/50000000 |
| `c * e * h * j` | -11931000 |
| `c * c * e * q` | 14900 |
| `c * f * h * k` | -42058100 |
| `c * f * h * h` | 20301000 |
| `c * c * e * w` | -62400 |
| `c * c * e` | -310400 |
| `c * e * p * v` | -20800 |
| `c * e * q` | -427300 |
| `c * e * e * p` | 20800 |
| `c * e * w` | 24944910924627/100000000 |
| `c * f * v` | -88000 |
| `e * f * u` | 352049702929/1953125 |
| `c * e * f` | -343500 |
| `e * v` | 2525000 |
| `e * e * u` | -4954600 |
| `c * c * h * w` | -238000 |
| `e * w` | 613900 |
| `c * f * w` | -8720800 |
| `e * e * r` | -1124600 |
| `f * h * w * j` | -3409500 |
| `f * f * h * k` | -400 |
| `f * h * h * j` | -400 |
| `c * r` | 8619700 |
| `c * c * q` | -6300 |
| `c * c * h` | 6300 |
| `f * f * k` | -506600 |
| `f * j` | -4684300 |
| `c * f` | -4801000 |
| `c * e * q * u` | 20800 |
| `c * f * v * k` | -400 |
| `c * v * j` | 400 |
| `f * p * v * k` | 400 |
| `p * v * j` | -400 |
| `f * q * u * k` | -400 |
| `f * p * v` | -132 |
| `f * q * u` | 132 |
| `e * f * p * v` | -400 |
| `e * f * q * u` | 400 |
| `a * c * k` | -2100540210233/62500000 |
| `e * q` | 81937749234353/125000000 |
| `e * e * p` | -81937749234353/125000000 |
| `f * f * h * w` | -945700 |
| `e * f * f * h` | -100 |
| `f * h * r` | 31150564/15625 |
| `h * u * r` | 6040293223/100000000 |
| `u * r` | -162160536543659/2500000000 |
| `v * r * j` | 51093028829/2500000000 |
| `u * w * k` | -527/10 |
| `v * r * k` | 527/10 |
| `u * r * k` | -51093028829/2500000000 |
| `f * f * h` | 560100 |
| `e * f * h` | 4285000 |
| `h * u * k` | 362 |
| `h * h * r` | 673200 |
| `h * v * j` | -362 |
| `e * f * w` | 462156 |
| `e * f * f * w` | -737700 |
| `b * c * h * p` | 803000 |
| `b * b * h * p` | -803000 |
| `c * c` | 165500 |
| `e * h` | -3007500 |
| `e * e` | 5562200 |
| `b * e * w` | 510700 |
| `f * f` | -436400 |
| `f * u` | -57900 |
| `b * c * e * h * p` | -1926000 |
| `b * b * e * h * p` | 1926000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `a * b * r * k` | -20675000 | 1490746551380483549439/250000000000000000000000 | 0 |
| `a * b * r` | -17753082557/5000 | 5531958153995241/250000000000000000 | 0 |
| `a * b * k` | -83683466979/250000000 | 7647952510917159/500000000000000000 | 0 |
| `a * b` | -18980575474342237673907471481/247521250000000000000 | 28380513921/500000000000 | 0 |
| `a * r * k` | 616789025853/5000000000 | 10047019089080407/250000000000000000 | 6196891116680399663118762171/1250000000000000000000000000 |
| `a * r` | 74876977413054952890761/990085000000000000000 | 37283124433/250000000000 | 2791647666057858247293195419063513/247521250000000000000000000000000 |
| `a * k` | 810123030569012289/5000000000000000 | 51544056767/500000000000 | 41757027475903245735336609663/2500000000000000000000000000 |
| `a` | 23223618166582792125467894833/990085000000000000000000000 | 191273/500000 | 4442051117576790398214620648392409/495042500000000000000000000000000 |
| `b * r * k` | -31351/80 | 7793815914323943/500000000000000000 | 0 |
| `b * r` | -477880250263/5000000000 | 28921793217/500000000000 | 0 |
| `b * k` | -11503797497671/100000000000 | 39984485583/1000000000000 | 0 |
| `b` | 1885627909754944013662240807/12376062500000000000000000 | 148377/1000000 | 279783812365709327915162304220239/12376062500000000000000000000000 |
| `r * k` | 147248250483140297683557461/2710634911300000000000000 | 52527116159/500000000000 | 7734525957337438287518061378298112299/1355317455650000000000000000000000000 |
| `r` | 183993357900619377407308350349079/27106349113000000000000000000000 | 194921/500000 | 35864169315346629663609950958392827759/13553174556500000000000000000000000000 |
| `k` | -1351958094400196516192686919944217421539/58558117052305030000000000000000000000 | 269479/1000000 | 0 |
| `1` | -1506367895202191828658265436299803748924633308889319/58558117052305030000000000000000000000000000 | 1 | -1506367895202191828658265436299803748924633308889319/58558117052305030000000000000000000000000000 |
| `a * a * b * r` | 600 | 1058114231989131731793/125000000000000000000000 | 3174342695967395195379/625000000000000000000 |
| `a * a * b` | -85888995039/500000000 | 5428426039211433/250000000000000000 | 0 |
| `a * a * r` | -62485362135788983/5000000000 | 7131255059673209/125000000000000000 | 0 |
| `a * a` | -1586196724159271693711/2500000000000000 | 36585360529/250000000000 | 0 |
| `a * b * w * j` | -300 | 8401022608107039039/1562500000000000000000 | 0 |
| `a * b * w` | -430391754071/10000000000 | 760342348457511/50000000000000000 | 0 |
| `a * b * j` | -1703059/5000 | 313576298313129/15625000000000000 | 0 |
| `a * w * j` | -194362788983/5000000000 | 56619439725207/1562500000000000 | 0 |
| `a * w` | -217413042329525687/10000000000000000 | 5124394943/50000000000 | 0 |
| `a * j` | -65277161571343849832253/247521250000000000000 | 2113375377/15625000000 | 0 |
| `b * w * j` | 1569411/5000 | 43921633519143/3125000000000000 | 68931094782911734773/15625000000000000000 |
| `b * w` | 1035432636413/10000000000 | 3975168207/100000000000 | 4116018896759148121491/1000000000000000000000 |
| `b * j` | 2554993165241/10000000000 | 1639417473/31250000000 | 4188700438491671655993/312500000000000000000 |
| `w * j` | -147552716629215255963837163/1355317455650000000000000 | 296013759/3125000000 | 0 |
| `w` | 19070668368193077680129593858267731/271063491130000000000000000000000 | 26791/100000 | 510922276252260744128351949056850781221/27106349113000000000000000000000000000 |
| `j` | 201791373618463365205748749831495068133/29279058526152515000000000000000000000 | 11049/31250 | 2229592887110401722158317936888189007801517/914970578942266093750000000000000000000000 |
| `a * a * b * j` | -300 | 59978679307247123217/7812500000000000000000 | 0 |
| `a * a * j` | 198995788983/5000000000 | 404231648484921/7812500000000000 | 80440395822155570973425343/39062500000000000000000000 |
| `a * c` | 690514987491107/62500000000000 | 2989405717/31250000000 | 2064229451280098752458719/1953125000000000000000000 |
| `c` | 5403857329532525075249/250000000000000000000 | 15629/62500 | 84456886203263834401066621/15625000000000000000000000 |
| `a * b * q` | -2081352509/1250 | 8614025204787999/500000000000000000 | 0 |
| `a * q` | -31932130519/500000000 | 58054989687/500000000000 | 0 |
| `b * q` | -1506907189819/2500000000 | 45035238663/1000000000000 | 0 |
| `q` | -215240069399355703503129/10000000000000000000000 | 303519/1000000 | 0 |
| `a * b * b * q` | -1643700 | 1278123217810828927623/500000000000000000000000 | 0 |
| `a * b * b` | -58540073893/10000 | 4211015514056217/500000000000000000 | 0 |
| `b * b * q` | 7098759/10000 | 6682193607099951/1000000000000000000 | 47435282008143241060809/10000000000000000000000 |
| `b * b` | -6046823524124031/31250000000000 | 22015734129/1000000000000 | 0 |
| `a * b * e * p` | -800 | 1107868808168122329/488281250000000000000 | 0 |
| `a * b * e` | 3608528754071/10000000000 | 36866287583379/3906250000000000 | 133033058800473800398185909/39062500000000000000000000 |
| `a * b * p` | 1062953/5000 | 852862823839971/62500000000000000 | 906553097189168694363/312500000000000000000 |
| `a * e * p` | -570236611/10000 | 7466580454977/488281250000000 | 0 |
| `a * e` | 1090300071345609/125000000000000 | 248463627/3906250000 | 270899910244888782663843/488281250000000000000000 |
| `a * p` | -84704380629/156250000 | 5747944923/62500000000 | 0 |
| `b * e * p` | 110923487647/250000000 | 5792081517873/976562500000000 | 642477882698202725214831/244140625000000000000000 |
| `b * e` | 5433564754691339/31250000000000 | 192741723/7812500000 | 1047274632851281012037097/244140625000000000000000 |
| `b * p` | 7262205066789313/15625000000000 | 4458877227/125000000000 | 32381280790110881742675051/1953125000000000000000000 |
| `e * p` | -755918803394236312412591/10000000000000000 | 39036249/976562500 | 0 |
| `e` | 2583827928683715315850369207/85555625000000000000000000 | 2598/15625 | 3356392479360146195289629599893/668403320312500000000000000000 |
| `p` | -808068435329419874555499/5000000000000000000000 | 30051/125000 | 0 |
| `a * b * b * e` | 400 | 5470109152759025883/3906250000000000000000 | 5470109152759025883/9765625000000000000 |
| `b * b * e` | -175420898739/500000000 | 28598438633571/7812500000000000 | 0 |
| `a * b * c * q` | 300 | 134628599925631636371/31250000000000000000000 | 403885799776894909113/312500000000000000000 |
| `a * b * c` | 383531/2500 | 443559052071309/31250000000000000 | 170118646799961212079/78125000000000000000 |
| `a * c * q` | 61123/1250 | 907341433818123/31250000000000000 | 55459430459265132129/39062500000000000000 |
| `b * c * q` | -3253645091/5000 | 703855745064027/62500000000000000 | 0 |
| `b * c` | 2781386617774031/31250000000000 | 2318984133/62500000000 | 6449991434356513668450123/1953125000000000000000000 |
| `c * q` | -312203804198987188949/3906250000000 | 4743698451/62500000000 | 0 |
| `a * c * e * p` | -100 | 116695185930835533/30517578125000000000 | 0 |
| `a * c * e` | -105603/10000 | 3883238026383/244140625000000 | 0 |
| `a * c * p` | -2286197/5000 | 89834631201567/3906250000000000 | 0 |
| `c * e * p` | -104255200261/500000000 | 610097535621/61035156250000 | 0 |
| `c * e` | 8814887754349957/250000000000000 | 20302071/488281250 | 178960477045843385860947/122070312500000000000000 |
| `c * p` | 664365354340531/31250000000000 | 469667079/7812500000 | 312030535361917166078949/244140625000000000000000 |
| `a * b * c * e` | 514900 | 576183208640630391/244140625000000000000 | 2966767341290605883259/2441406250000000000 |
| `b * c * e` | 33471048739/500000000 | 3012360388767/488281250000000 | 100826861391853245114813/244140625000000000000000 |
| `a * b * b * k` | 46440000 | 1134780249712355300943/500000000000000000000000 | 1317479869916044504394823/12500000000000000000 |
| `b * b * k` | 155323/400 | 5932778017348791/1000000000000000000 | 921496879988666264493/400000000000000000000 |
| `a * b * b * w` | -34008000 | 112817316637080109647/50000000000000000000000 | 0 |
| `b * b * w` | -98767/2500 | 589823533050039/100000000000000000 | 0 |
| `a * b * c * k` | 312400 | 119529849793124278011/31250000000000000000000 | 93352812688430061126591/78125000000000000000 |
| `a * c * k` | -1708922733/62500000 | 805582063211443/31250000000000000 | 0 |
| `b * c * k` | 715809/10000 | 624917525176707/62500000000000000 | 447321588779213460963/625000000000000000000 |
| `c * k` | -26006371312775687/250000000000000 | 4211687291/62500000000 | 0 |
| `a * b * h * r` | -100 | 1746500040755991531351/250000000000000000000000 | 0 |
| `a * b * h` | -32097/5000 | 8960040430512831/500000000000000000 | 0 |
| `a * h * r` | 758623/10000 | 11770692497866863/250000000000000000 | 8929518054809253209649/2500000000000000000000 |
| `a * h` | 126543916889/10000000000 | 60386990103/500000000000 | 7641606256770897549567/5000000000000000000000 |
| `b * h * r` | 387793/10000 | 9130928258332287/500000000000000000 | 3540910062083452572591/5000000000000000000000 |
| `b * h` | 1148401486525323062419/6188031250000000000 | 46844251047/1000000000000 | 53796007537540221258734487102693/6188031250000000000000000000000 |
| `h * r` | -48410727626832799/625000000000000 | 61538703831/500000000000 | 0 |
| `h` | 4971375989836811557376212344522969/53472263158750000000000000000000 | 315711/1000000 | 1569518085127369613590801375501691065959/53472263158750000000000000000000000000 |
| `a * c * h` | 25639/500 | 943788268319787/31250000000000000 | 24197787411451018893/15625000000000000000 |
| `c * h` | 3686900068549801/250000000000000 | 4934247219/62500000000 | 18192076409972764947253419/15625000000000000000000000 |
| `e * r` | -11575100676986606502137/171111250000000000000 | 253202379/3906250000 | 0 |
| `a * c * j` | -57875042063/10000 | 33029943767133/976562500000000 | 0 |
| `c * j` | 101649102901/10000000000 | 172684821/1953125000 | 17553257139269765721/19531250000000000000 |
| `f * k` | -11791159025334694656351752367/427778105270000000000000000 | 68568123113/1000000000000 | 0 |
| `f` | -58064099281483571669444667521757617/427778105270000000000000000000000 | 254447/1000000 | 0 |
| `h * j` | 855272077120228426521828937/6684032894843750000000000 | 3488290839/31250000000 | 2983437751470994321823480514462208143/208876027963867187500000000000000000 |
| `f * h` | -13428470362013879725685928377/106944526317500000000000000 | 80331716817/1000000000000 | 0 |
| `a * b * f * k` | -17155600 | 1945998572545338356073/500000000000000000000000 | 0 |
| `a * b * f` | 789273/2500 | 7221336625656687/500000000000000000 | 5699606022541930318551/1250000000000000000000 |
| `a * f * k` | -6969244172042249/500000000 | 13115230612192849/500000000000000000 | 0 |
| `a * f` | -124410809259065729/500000000000000 | 48668841031/500000000000 | 0 |
| `b * f * k` | -227242999/10000 | 10173932403137601/1000000000000000000 | 0 |
| `b * f` | 488492453873/5000000000 | 37754082519/1000000000000 | 18442584413430043146087/5000000000000000000000 |
| `a * b * h * j` | 200 | 98999486716736269719/15625000000000000000000 | 98999486716736269719/78125000000000000000 |
| `b * h * j` | 1940053/2500 | 517582129818303/31250000000000000 | 1004136763700388190059/78125000000000000000 |
| `a * b * f * h` | 600 | 2279855407422698309457/500000000000000000000000 | 6839566222268094928371/2500000000000000000000 |
| `a * f * h` | -1872541/2500 | 15365288470738041/500000000000000000 | 0 |
| `b * f * h` | 56069/2000 | 11919379146156009/1000000000000000000 | 668307669345821268621/2000000000000000000000 |
| `a * c * f * h` | 15091400 | 240144093509164842789/31250000000000000000000 | 18120552863921051542329573/156250000000000000000 |
| `a * c * f` | -629619/2000 | 760645316473499/31250000000000000 | 0 |
| `c * f * h` | 655611/1250 | 1255504402132893/62500000000000000 | 823122496586748112623/78125000000000000000 |
| `c * f` | 342396027349/1000000000 | 3976752163/62500000000 | 1361624142362742905887/62500000000000000000 |
| `b * e * e * f` | 100 | 63706276596643119/61035156250000000000 | 63706276596643119/610351562500000000 |
| `b * e * e` | -211999/10000 | 250371498177/61035156250000 | 0 |
| `b * e * f` | -11533/10000 | 49042553192181/7812500000000000 | 0 |
| `e * e * f` | -1201615647/125000000 | 429354122247/61035156250000 | 0 |
| `e * e` | 3605488369767/250000000000 | 6749604/244140625 | 6083904680633205567/15258789062500000000 |
| `e * f` | -399426410179116709/10000000000000000 | 330526653/7812500000 | 0 |
| `a * b * e * f` | -200 | 9380516276728036413/3906250000000000000000 | 0 |
| `a * e * f` | 427201/10000 | 63220824499269/3906250000000000 | 27007999446912216069/39062500000000000000 |
| `a * a * b * f` | 3693100 | 1381246720399231492551/250000000000000000000000 | 51010822631064018251400981/2500000000000000000000 |
| `a * a * f` | 229997/10000 | 9309035230522463/250000000000000000 | 2141050175914474922611/2500000000000000000000 |
| `p * k` | 1450170450325126301/5000000000000000 | 8098113429/125000000000 | 11743644798116882714249196129/625000000000000000000000000 |
| `q * j` | -174902031746029133/5000000000000000 | 3353581431/31250000000 | 0 |
| `b * e * p * k` | -6339000 | 1560844335354898167/976562500000000000000 | 0 |
| `b * e * k` | 645657911/250000000 | 51939846772317/7812500000000000 | 33535372964674286849787/1953125000000000000000000 |
| `b * p * k` | -4329/80 | 1201573776254733/125000000000000000 | 0 |
| `e * p * k` | -3624727503450451/10000000000 | 10519449344271/976562500000000 | 0 |
| `e * k` | 29515649135696321/500000000000000 | 350053221/7812500000 | 10332048049856363243899941/3906250000000000000000000 |
| `b * b * e * k` | -62947300 | 7706678644536079509/7812500000000000000000 | 0 |
| `b * e * q * j` | -500 | 646375063231745613/244140625000000000000 | 0 |
| `b * e * q` | -733487/2000 | 58500775023237/7812500000000000 | 0 |
| `b * e * j` | 1061329/10000 | 2129603297427/244140625000000 | 2260209738054900483/2441406250000000000 |
| `b * q * j` | -533841/1000 | 497594351987487/31250000000000000 | 0 |
| `e * q * j` | -668503/10000 | 4356302278869/244140625000000 | 0 |
| `e * q` | -22865059936272919/125000000000000 | 394271181/7812500000 | 0 |
| `e * j` | -6853663595415432247/427778125000000000 | 14352651/244140625 | 0 |
| `b * b * e * q` | 36330200 | 8680169495622836349/7812500000000000000000 | 1576761469049383845632199/39062500000000000000 |
| `a * b * p * k` | 200 | 229828620905571545109/62500000000000000000000 | 229828620905571545109/312500000000000000000 |
| `a * p * k` | 4054917/10000 | 1548950449905117/62500000000000000 | 6280865511477907310289/625000000000000000000 |
| `a * q * j` | 686743/10000 | 641449581051663/15625000000000000 | 440511009640162203609/156250000000000000000 |
| `u * w` | 3566959995554411/684445000000000 | 5138433427/100000000000 | 18328586473928556879696497/68444500000000000000000000 |
| `u` | 438308369285764230124753319/85555625000000000000000000 | 191797/1000000 | 84066230303901722045237312324243/85555625000000000000000000000000 |
| `e * u` | 1415089254781085073903/171111250000000000000 | 249144303/7812500000 | 352561426065222858321266424609/1336806640625000000000000000000 |
| `v * r` | -26692088009036880274669/171111250000000000000 | 23800049021/250000000000 | 0 |
| `v` | -2339603285589213529096207191/85555625000000000000000000 | 122101/500000 | 0 |
| `b * e * u * w` | -129400 | 990390512240774721/781250000000000000000 | 0 |
| `b * e * u` | -1127903/10000 | 36967284246231/7812500000000000 | 0 |
| `b * e * w` | -229927/5000 | 5163743500893/781250000000000 | 0 |
| `b * u * w` | 82234591/1250 | 762425336597979/100000000000000000 | 62697735723172134491589/125000000000000000000 |
| `b * u` | -1583552490569/10000000000 | 28458263469/1000000000000 | 0 |
| `e * u * w` | -71429/500 | 6674825021673/781250000000000 | 0 |
| `e * w` | -165110118988475039/10000000000000000 | 34801509/781250000 | 0 |
| `b * e * e * u` | 350200 | 48020502235854069/61035156250000000000 | 84083899414980474819/305175781250000000 |
| `e * e * u` | -53260623859/10000 | 323638449597/61035156250000 | 0 |
| `b * e * v` | -419067/10000 | 23533957120023/3906250000000000 | 0 |
| `b * v` | -6894929904640731/15625000000000 | 18116980077/500000000000 | 0 |
| `e * v` | 913132882043503/20000000000000 | 158609199/3906250000 | 144831275001481493984097/78125000000000000000000 |
| `a * b * u * w` | -11800 | 145831381407105237267/50000000000000000000000 | 0 |
| `a * b * u` | -2826013/10000 | 5443297428506037/500000000000000000 | 0 |
| `a * u * w` | 150243/5000 | 982843576882571/50000000000000000 | 147665367521568114753/250000000000000000000 |
| `a * u` | 2582179173679791/125000000000000 | 36685587581/500000000000 | 94728760225864182780275571/62500000000000000000000000 |
| `a * b * e * u` | 53800 | 7070843359629342063/3906250000000000000000 | 1902056863740293014947/19531250000000000000 |
| `a * e * u` | 89603/2500 | 47654578267719/3906250000000000 | 4269993176522425557/9765625000000000000 |
| `a * b * v * r` | -104000 | 675457622560972921341/125000000000000000000000 | 0 |
| `a * b * v` | 110369045039/500000000 | 3465289130268021/250000000000000000 | 382460652091708347890397819/125000000000000000000000000 |
| `a * v * r` | -36599099/125 | 4552306776393733/125000000000000000 | 0 |
| `a * v` | -8940208096867703/500000000000000 | 23354624573/250000000000 | 0 |
| `b * v * r` | -3888/125 | 3531379873588917/250000000000000000 | 0 |
| `a * e * r` | -83531085183754071/10000000000 | 48430778638467/1953125000000000 | 0 |
| `f * w` | -154238970994772041/625000000000000 | 6816889577/100000000000 | 0 |
| `b * e * r * k` | -25027600 | 10124166872706801957/3906250000000000000000 | 0 |
| `b * e * r` | 426203/5000 | 37569409388883/3906250000000000 | 16012194989770101249/19531250000000000000 |
| `e * r * k` | -13928555373/100000000 | 68232723890541/3906250000000000 | 0 |
| `b * e * f * k` | 56066500 | 13215938191675743699/7812500000000000000000 | 1481942797247176168199967/15625000000000000000 |
| `e * f * k` | 348706450451/10000000000 | 89069991923787/7812500000000000 | 31059280725443001683777937/78125000000000000000000000 |
| `b * e * w * j` | -32600 | 57054201941366757/24414062500000000000 | 0 |
| `e * w * j` | -201089440334627/100000000 | 384521872941/24414062500000 | 0 |
| `a * b * f * w` | 12941000 | 193466829537968301417/50000000000000000000000 | 2503654241050847788637397/50000000000000000000 |
| `a * f * w` | 291807/10000 | 1303886920061521/50000000000000000 | 380483330482392258447/500000000000000000000 |
| `b * f * w` | 705461/10000 | 1011469624766529/100000000000000000 | 713552372957420314869/1000000000000000000000 |
| `b * p * w` | 323001/2500 | 119457779788557/12500000000000000 | 38584982329483699557/31250000000000000000 |
| `p * w` | -12219107015736762702779/400000000000000 | 805096341/12500000000 | 0 |
| `b * q * r` | 3408079/5000 | 8778313755430623/500000000000000000 | 29917186765294242203217/2500000000000000000000 |
| `q * r` | -322246621080584681/5000000000000000 | 59162226999/500000000000 | 0 |
| `a * b * p * w` | 500 | 22849047913496663061/6250000000000000000000 | 22849047913496663061/12500000000000000000 |
| `a * p * w` | -352073/2000 | 153993192432093/6250000000000000 | 0 |
| `a * a * b * p` | 3896700 | 163129630904342773083/31250000000000000000000 | 6356672327449524838725261/312500000000000000000 |
| `a * a * p` | 1708591/10000 | 1099426669256979/31250000000000000 | 1878470512252451006589/312500000000000000000 |
| `a * b * q * r` | -1100 | 1679054406942481553079/250000000000000000000000 | 0 |
| `a * q * r` | -79871/2000 | 11316136644779727/250000000000000000 | 0 |
| `a * f * p * w` | -100 | 39183105834768767571/6250000000000000000000 | 0 |
| `a * f * p` | 111377/1250 | 1462547341822581/62500000000000000 | 162894135290173604037/78125000000000000000 |
| `f * p * w` | -99806796429/10000 | 204854348678427/12500000000000000 | 0 |
| `f * p` | 443481545089/2500000000 | 7646386797/125000000000 | 3391031431081689789933/312500000000000000000 |
| `a * a * f * p` | 800 | 279745817712430535613/31250000000000000000000 | 279745817712430535613/39062500000000000000 |
| `a * f * q * r` | -287500 | 2879357020854267195969/250000000000000000000000 | 0 |
| `a * f * q` | 3769109/5000 | 14771917960888089/500000000000000000 | 55676968933644944242701/2500000000000000000000 |
| `a * f * r` | -4916689/15625 | 9486579162603551/250000000000000000 | 0 |
| `f * q * r` | 5505869548027/10000000000 | 15053651173214553/500000000000000000 | 82883439581222929214808836931/5000000000000000000000000000 |
| `f * q` | 734267262155428659/2000000000000000 | 77229498993/1000000000000 | 56707092783225544629723840387/2000000000000000000000000000 |
| `f * r` | -466922758111646077/2500000000000000 | 49597063687/500000000000 | 0 |
| `b * h * k` | 819/1250 | 12623541927894513/1000000000000000000 | 10338680838945606147/1250000000000000000000 |
| `h * k` | -2621755505805481/62500000000000 | 85077484569/1000000000000 | 0 |
| `b * e * h * j` | 200 | 672339186633975597/244140625000000000000 | 672339186633975597/1220703125000000000 |
| `b * e * h` | 16929232329/250000000 | 60850682110053/7812500000000000 | 1030155334819211183503437/1953125000000000000000000 |
| `e * h * j` | -60299/1250 | 4531289799861/244140625000000 | 0 |
| `e * h` | 48791129349204513/500000000000000 | 410108589/7812500000 | 20009661213118751098862157/3906250000000000000000000 |
| `a * b * e * j` | 14560100 | 407335611508754571/122070312500000000000 | 59308472371286174292171/1220703125000000000 |
| `a * e * j` | -511413/10000 | 2745274614723/122070312500000 | 0 |
| `b * h * p * k` | 400 | 379350058475158010163/125000000000000000000000 | 379350058475158010163/312500000000000000000 |
| `b * h * p` | 1214787871/7812500 | 1407716588213397/125000000000000000 | 1710077037167136235307787/976562500000000000000000 |
| `h * p * k` | -378451/1000 | 2556663488783019/125000000000000000 | 0 |
| `h * p` | 6416415707572387/15625000000000 | 9487431261/125000000000 | 60875302967593698844190007/1953125000000000000000000 |
| `a * b * h * p` | 300 | 269258174977341084381/62500000000000000000000 | 807774524932023253143/625000000000000000000 |
| `a * h * p` | 5508101/10000 | 1814689439585253/62500000000000000 | 9995492716868971634553/625000000000000000000 |
| `b * h * q * j` | -400 | 157096010460321508257/31250000000000000000000 | 0 |
| `b * h * q` | 859111/10000 | 14218120233534393/1000000000000000000 | 12214943491951965904623/10000000000000000000000 |
| `h * q * j` | 527171/2500 | 1058762547162441/31250000000000000 | 558148910750171184411/78125000000000000000 |
| `h * q` | 139188868011/10000000000 | 95824287009/1000000000000 | 13337674036743882969099/10000000000000000000000 |
| `b * h * r * k` | 1992900 | 2460593416127126368473/500000000000000000000000 | 49037166189997501397298417/5000000000000000000000 |
| `h * r * k` | -903333151969/2500000000 | 16583388369674049/500000000000000000 | 0 |
| `b * h * w * j` | 500 | 13866542839962155673/3125000000000000000000 | 13866542839962155673/6250000000000000000 |
| `b * h * w` | 20354941207/10000 | 1255004329800177/100000000000000000 | 25545539347613040893193639/1000000000000000000000 |
| `h * w * j` | 15127508741/50000000 | 93454799867649/3125000000000000 | 1413738301886265890619909/156250000000000000000000 |
| `h * w` | -1021599418690067461/10000000000000000 | 8458213401/100000000000 | 0 |
| `b * b * h * k` | 17369800 | 1873043280635204155401/1000000000000000000000000 | 162671935879886845692421449/5000000000000000000000 |
| `b * b * h` | -3794540001/7812500 | 6950609437600719/1000000000000000000 | 0 |
| `b * b * e * h` | -250051/500 | 9028841659443333981/7812500000000000000000 | 0 |
| `b * f * h * k` | -13112900 | 3212022372926975149311/1000000000000000000000000 | 0 |
| `f * h * k` | 306712057729/2500000000 | 21647710716128343/1000000000000000000 | 6639613898865848269589113047/2500000000000000000000000000 |
| `b * b * h * q` | 200 | 2109642025891132630161/1000000000000000000000000 | 2109642025891132630161/5000000000000000000000 |
| `b * c * h * q` | -22349700 | 222215001129909028197/62500000000000000000000 | 0 |
| `b * c * h` | 499231879/31250000 | 732128799613563/62500000000000000 | 365502036301093530374877/1953125000000000000000000 |
| `c * h * q` | -11764807229/5000 | 1497637781663661/62500000000000000 | 0 |
| `b * h * h * p` | 7355300 | 444431611781439780267/125000000000000000000000 | 32689278341360240157978651/1250000000000000000000 |
| `b * h * h` | 11765993027/10000 | 14789245342299417/1000000000000000000 | 174010157572087168568165259/10000000000000000000000 |
| `h * h * p` | -455941/1250 | 2995286410841571/125000000000000000 | 0 |
| `h * h` | -12845424731/156250000 | 99673435521/1000000000000 | 0 |
| `a * b * c * h` | -14605900 | 140036471888485035699/31250000000000000000000 | 0 |
| `b * h * p * v` | -200 | 171883603137443987097/62500000000000000000000 | 0 |
| `b * h * v` | -421351/5000 | 5719729897089747/500000000000000000 | 0 |
| `b * p * v` | 3827571/5000 | 544433368293927/62500000000000000 | 2083857371914154461317/312500000000000000000 |
| `h * p * v` | -12782/625 | 1158424844399361/62500000000000000 | 0 |
| `h * v` | 596999968067/10000000000 | 38548628811/500000000000 | 23013530169193636178337/5000000000000000000000 |
| `p * v` | -3217478931/312500000 | 3669257151/62500000000 | 0 |
| `b * c * h * v` | 168400 | 89393658561615655863/31250000000000000000000 | 37634730254440191118323/78125000000000000000 |
| `b * c * v` | -12431863077/10000 | 283150281623433/31250000000000000 | 0 |
| `c * h * v` | -162299/5000 | 602476519687119/31250000000000000 | 0 |
| `c * v` | 3057379750275781/15625000000000 | 1908316529/31250000000 | 5834448312881165190684149/488281250000000000000000 |
| `b * h * q * u` | 300 | 2726992806431195974221/1000000000000000000000000 | 8180978419293587922663/10000000000000000000000 |
| `b * h * u` | 793171/10000 | 8984586818061459/1000000000000000000 | 7126313711068625496489/10000000000000000000000 |
| `b * q * u` | -258777/1250 | 8637623669847411/1000000000000000000 | 0 |
| `h * q * u` | -322869/5000 | 18378810775465173/1000000000000000000 | 0 |
| `h * u` | -2368221038415383/50000000000000 | 60552422667/1000000000000 | 0 |
| `q * u` | 1056526533501/10000000000 | 58214033643/1000000000000 | 61504671165949380574143/10000000000000000000000 |
| `a * b * c * v` | 400 | 54159003816958900209/15625000000000000000000 | 54159003816958900209/39062500000000000000 |
| `a * c * v` | 95877/2500 | 365009427451417/15625000000000000 | 34996008875759507709/39062500000000000000 |
| `a * b * q * u` | 200 | 1652144192202723844203/500000000000000000000000 | 1652144192202723844203/2500000000000000000000 |
| `a * q * u` | -107623/2000 | 11134772856997539/500000000000000000 | 0 |
| `b * f * h * q` | 200 | 3617758039062125695671/1000000000000000000000000 | 3617758039062125695671/5000000000000000000000 |
| `b * f * q` | -97038832631/5000 | 11459081372084361/1000000000000000000 | 0 |
| `f * h * q` | -1732941/5000 | 24382202356579023/1000000000000000000 | 0 |
| `a * b * f * q` | 1000 | 2191812871282691981553/500000000000000000000000 | 2191812871282691981553/500000000000000000000 |
| `b * f * h * w` | 400 | 319332086704665637119/100000000000000000000000 | 319332086704665637119/250000000000000000000 |
| `f * h * w` | -1645767/2000 | 2152167025244247/100000000000000000 | 0 |
| `b * h * q * r` | 400 | 2771410214040757417953/500000000000000000000000 | 2771410214040757417953/1250000000000000000000 |
| `h * q * r` | -36032/625 | 18678165848081289/500000000000000000 | 0 |
| `b * h * p * w` | -600 | 37714135114825119027/12500000000000000000000 | 0 |
| `h * p * w` | 6492082259293/10000000000 | 254177770913451/12500000000000000 | 1650142997253855548443450143/125000000000000000000000000 |
| `b * e * h * r` | 8101800 | 11861075807573640813/3906250000000000000000 | 480480319889000615693817/19531250000000000000 |
| `e * h * r` | -1737370159/2500 | 79938776276469/3906250000000000 | 0 |
| `b * q * q` | -365844/625 | 13669050603755097/1000000000000000000 | 0 |
| `q * q` | -284556773747/2000000000 | 92123783361/1000000000000 | 0 |
| `b * e * p * q` | 800 | 1758006790223295087/976562500000000000000 | 1758006790223295087/1220703125000000000 |
| `b * p * q` | -1383573/10000 | 1353353957061813/125000000000000000 | 0 |
| `e * p * q` | 1276853/10000 | 11848243260231/976562500000000 | 15128464951555733043/9765625000000000000 |
| `p * q` | 170073080541/2000000000 | 9121049469/125000000000 | 1551244980959682282729/250000000000000000000 |
| `a * p * q` | -8130357/10000 | 1744610495084037/62500000000000000 | 0 |
| `a * e * p * p` | 900 | 224378209252513827/61035156250000000000 | 2019403883272624443/610351562500000000 |
| `a * p * p` | 662987/10000 | 172731492881073/7812500000000000 | 114518734270743945051/78125000000000000000 |
| `e * p * p` | 492363/10000 | 1173078318699/122070312500000 | 577580360229595737/1220703125000000000 |
| `p * p` | -1104397518189/10000000000 | 903062601/15625000000 | 0 |
| `a * f * h * p` | 400 | 461742283834148870091/62500000000000000000000 | 461742283834148870091/156250000000000000000 |
| `f * h * p` | -4388787/10000 | 2414048422067667/125000000000000000 | 0 |
| `b * f * q * w` | -999000 | 307000249039512115551/100000000000000000000000 | 0 |
| `b * q * w` | -255791/1250 | 1206539079020433/100000000000000000 | 0 |
| `f * q * w` | -33881711421/5000 | 2069055507521463/100000000000000000 | 0 |
| `q * w` | 1484052679/62500000 | 8131577529/100000000000 | 12067689416408650191/6250000000000000000 |
| `a * p * r` | -710371917781/10000 | 1120395172336083/31250000000000000 | 0 |
| `p * r` | 68251218540948547/10000000000000000 | 5857570971/62500000000 | 399786356460837183711829137/625000000000000000000000000 |
| `a * a * p * r` | -144700 | 214301345798239603659/15625000000000000000000 | 0 |
| `b * h * p * q` | -800 | 427268731137942044043/125000000000000000000000 | 0 |
| `h * p * q` | -3932933/10000 | 2879615648907459/125000000000000000 | 0 |
| `a * h * p * p` | -1300 | 54533232348976437903/7812500000000000000000 | 0 |
| `h * p * p` | 1052499/10000 | 285106796824311/15625000000000000 | 300074618550790503189/156250000000000000000 |
| `b * p * q * w` | -100 | 36257705863643032083/12500000000000000000000 | 0 |
| `p * q * w` | 107623/2000 | 244362036323979/12500000000000000 | 26298975435295591917/25000000000000000000 |
| `b * q * q * r` | 100 | 2664385012734547262337/500000000000000000000000 | 2664385012734547262337/5000000000000000000000 |
| `q * q * r` | -107623/2000 | 17956859976509481/500000000000000000 | 0 |
| `a * p * p * w` | -100 | 4627649425776826743/781250000000000000000 | 0 |
| `p * p * w` | -1015071/5000 | 24193950143391/1562500000000000 | 0 |
| `a * p * q * r` | 100 | 340061222312275576077/31250000000000000000000 | 340061222312275576077/312500000000000000000 |
| `p * q * r` | 1015071/5000 | 1777884083546949/62500000000000000 | 1804678574570085068379/312500000000000000000 |
| `b * q * r * k` | 400 | 2365571212499688855417/500000000000000000000000 | 2365571212499688855417/1250000000000000000000 |
| `b * q * k` | 1408181/5000 | 12136051079666577/1000000000000000000 | 17089756545415960066437/5000000000000000000000 |
| `q * r * k` | 422783/2000 | 15942977769463521/500000000000000000 | 6740419970307095798943/1000000000000000000000 |
| `q * k` | 1295929574456112027/10000000000000000 | 81791996601/1000000000000 | 105996667349049691336059220227/10000000000000000000000000000 |
| `b * q * w * j` | -300 | 13331050284096764217/3125000000000000000000 | 0 |
| `q * w * j` | -2440673/10000 | 89845800117921/3125000000000000 | 0 |
| `a * p * r * k` | 300 | 301922970645955310757/31250000000000000000000 | 905768911937865932271/312500000000000000000 |
| `p * r * k` | 720719548027/10000000000 | 1578492367694109/62500000000000000 | 1137650305808567334670472943/625000000000000000000000000 |
| `a * p * w * j` | -300 | 1701470783182195557/195312500000000000000 | 0 |
| `a * p * j` | -243438/625 | 63509043454227/1953125000000000 | 0 |
| `p * w * j` | -916991/10000 | 8895509471709/390625000000000 | 0 |
| `p * j` | -32291055243/1000000000 | 332033499/3906250000 | 0 |
| `a * a * p * j` | 300 | 12147565268620360971/976562500000000000000 | 36442695805861082913/9765625000000000000 |
| `b * c * q * q` | -900 | 213633591886088411013/62500000000000000000000 | 0 |
| `c * q * q` | -968607/10000 | 1439802610149069/62500000000000000 | 0 |
| `b * b * q * q` | 400 | 2028172721433370027569/1000000000000000000000000 | 2028172721433370027569/2500000000000000000000 |
| `a * c * p * q` | -900 | 27266517427668414273/3906250000000000000000 | 0 |
| `c * p * q` | -305721/2500 | 142552882151001/7812500000000000 | 0 |
| `a * b * p * q` | 500 | 258860071429084157949/62500000000000000000000 | 258860071429084157949/125000000000000000000 |
| `b * c * q * v` | 400 | 85941490328062760727/31250000000000000000000 | 85941490328062760727/78125000000000000000 |
| `b * q * v` | 1595393/10000 | 5498847675990963/500000000000000000 | 8772823090342250433459/5000000000000000000000 |
| `c * q * v` | -93/10 | 579210324565551/31250000000000000 | 0 |
| `q * v` | -135199197387/10000000000 | 37059973419/500000000000 | 0 |
| `b * b * q * v` | 200 | 815902521620511117051/500000000000000000000000 | 815902521620511117051/2500000000000000000000 |
| `b * b * v` | -623273905029/10000 | 2688143152885029/500000000000000000 | 0 |
| `a * b * b * v` | 74000 | 514169205281778151917/250000000000000000000000 | 19024260595425791620929/125000000000000000000 |
| `a * c * p * v` | 300 | 10968898304342532267/1953125000000000000000 | 32906694913027596801/19531250000000000000 |
| `a * p * v` | 253727/2000 | 701829823043223/31250000000000000 | 178073175511287842121/62500000000000000000 |
| `c * p * v` | 1015627/10000 | 57346820012979/3906250000000000 | 58242978769321822833/39062500000000000000 |
| `b * f * q * k` | 200 | 3087981789067921517919/1000000000000000000000000 | 3087981789067921517919/5000000000000000000000 |
| `f * q * k` | -3630199737450451/10000000000 | 20811728159134647/1000000000000000000 | 0 |
| `b * c * q * k` | 100 | 189674342324108931933/62500000000000000000000 | 189674342324108931933/625000000000000000000 |
| `c * q * k` | 686417/10000 | 1278327114877029/62500000000000000 | 877465463212545615093/625000000000000000000 |
| `a * f * p * k` | -200 | 394125795127007305299/62500000000000000000000 | 0 |
| `f * p * k` | -768190787/250 | 2060540667668763/125000000000000000 | 0 |
| `a * c * p * k` | -200 | 24208546581567073593/3906250000000000000000 | 0 |
| `c * p * k` | 420969/10000 | 126565414781841/7812500000000000 | 53280116095296823929/78125000000000000000 |
| `a * c * h * p` | 500 | 28361781251277919137/3906250000000000000000 | 28361781251277919137/7812500000000000000 |
| `c * h * p` | -9474007121/31250000 | 148279063178169/7812500000000000 | 0 |
| `b * e * f * q` | -27701800 | 14885346702337584939/7812500000000000000000 | 0 |
| `e * f * q` | 30224428147/125000000 | 100321119191907/7812500000000000 | 3032148458642415825406329/976562500000000000000000 |
| `a * e * f * p` | 200 | 1899848997027532719/488281250000000000000 | 1899848997027532719/2441406250000000000 |
| `e * f * p` | 1618681/10000 | 9932656449303/976562500000000 | 16077802274014229343/9765625000000000000 |
| `a * e * p * j` | -700 | 82498247447040873/15258789062500000000 | 0 |
| `e * p * j` | -74984132397/10000 | 431311515201/30517578125000 | 0 |
| `b * p * q * k` | -500 | 364700470995060305427/125000000000000000000000 | 0 |
| `p * q * k` | 177131/5000 | 2457931289856651/125000000000000000 | 435375827303598448281/625000000000000000000 |
| `b * q * q * j` | 500 | 151029340120890066753/31250000000000000000000 | 151029340120890066753/62500000000000000000 |
| `q * q * j` | -177131/5000 | 1017875682355689/31250000000000000 | 0 |
| `a * p * p * k` | -400 | 46547509970098670967/7812500000000000000000 | 0 |
| `p * p * k` | -644657/10000 | 243356406654879/15625000000000000 | 0 |
| `a * p * q * j` | 400 | 19276201360183524813/1953125000000000000000 | 19276201360183524813/4882812500000000000 |
| `p * q * j` | 644657/10000 | 100778475582981/3906250000000000 | 64967549733897782517/39062500000000000000 |
| `a * h * p * r` | 700 | 353721080253397100013/31250000000000000000000 | 2476047561773779700091/312500000000000000000 |
| `h * p * r` | 340109/1250 | 1849299588825381/62500000000000000 | 628963433855811506529/78125000000000000000 |
| `a * p * u` | 1236149/2500 | 1102438592396631/62500000000000000 | 1362778363552503014019/156250000000000000000 |
| `p * u` | 234347882133/2000000000 | 5763691647/125000000000 | 1350708930742112643051/250000000000000000000 |
| `a * h * p * u` | -100 | 348051990444132769641/62500000000000000000000 | 0 |
| `a * h * u` | -93/10 | 11582043540785091/500000000000000000 | 0 |
| `h * p * u` | 118929/2000 | 1819660853566017/125000000000000000 | 216410445653752835793/250000000000000000000 |
| `b * v * w` | 59607/10000 | 485372013242907/50000000000000000 | 28931569593369957549/500000000000000000000 |
| `v * w` | -792147584241/10000000000 | 3271207891/50000000000 | 0 |
| `a * u * k` | 71867/10000 | 9885995455740299/500000000000000000 | 710476835417688068233/5000000000000000000000 |
| `u * k` | -83523617934622491/1250000000000000 | 51685263763/1000000000000 | 0 |
| `b * f * v * k` | -77600 | 1242247320355504219701/500000000000000000000000 | 0 |
| `b * f * v` | 27331/5000 | 4609811229652419/500000000000000000 | 125990750717630263689/2500000000000000000000 |
| `b * v * k` | -5096181897/31250000 | 4882145674169883/500000000000000000 | 0 |
| `f * v * k` | -37269633/1000 | 8372236400220413/500000000000000000 | 0 |
| `f * v` | -65399892312984939/1250000000000000 | 31068233147/500000000000 | 0 |
| `v * k` | 1274191829769507/31250000000000 | 32903655379/500000000000 | 41925568853473291330728153/15625000000000000000000000 |
| `b * f * h * v` | -57800 | 1455368113124794854909/500000000000000000000000 | 0 |
| `f * h * v` | -1380647543/10000 | 9808582955072517/500000000000000000 | 0 |
| `a * f * u * k` | 400 | 2515461885726751859653/500000000000000000000000 | 2515461885726751859653/1250000000000000000000 |
| `a * f * u` | 314611/1250 | 9334537703222707/500000000000000000 | 2936748241348599071977/625000000000000000000 |
| `f * u * k` | -7689901/2500 | 13151160308704061/1000000000000000000 | 0 |
| `f * u` | -342356729395833/1250000000000 | 48802171259/1000000000000 | 0 |
| `a * f * h * u` | 100 | 2947016232822144049677/500000000000000000000000 | 2947016232822144049677/5000000000000000000000 |
| `f * h * u` | -705033112489/31250000 | 15407382290350149/1000000000000000000 | 0 |
| `b * w * k` | 213673/5000 | 1071224353254153/100000000000000000 | 228891721232874633969/500000000000000000000 |
| `w * k` | 500478004525617/625000000000000 | 7219611889/100000000000 | 3613256951656140298260513/62500000000000000000000000 |
| `b * p * w * k` | -100 | 32191363039640551803/12500000000000000000000 | 0 |
| `p * w * k` | 163379/5000 | 216956556876339/12500000000000000 | 35446145305899389481/62500000000000000000 |
| `b * b * w * k` | -20675200 | 158945055862791459681/100000000000000000000000 | 0 |
| `b * b * q * w` | 14644400 | 179022648927814787241/100000000000000000000000 | 6554198199896227175680251/250000000000000000000 |
| `b * c * v * w` | -100 | 7585879194973393503/3125000000000000000000 | 0 |
| `b * c * w` | -173207/5000 | 62127903907203/6250000000000000 | 0 |
| `c * v * w` | -183023092/625 | 51125708128439/3125000000000000 | 0 |
| `c * w` | -4103498165455149/50000000000000 | 418716539/6250000000 | 0 |
| `b * c * e * w` | 162000 | 80704147175456697/48828125000000000000 | 6537035921211992457/24414062500000000 |
| `c * e * w` | 9278394627/100000000 | 543912784161/48828125000000 | 5046637454116033102947/4882812500000000000000 |
| `b * b * q * k` | -3169500 | 1800710851047687695529/1000000000000000000000000 | 0 |
| `b * c * h * k` | 29430800 | 197293336791063343677/62500000000000000000000 | 14516251841076067637722629/156250000000000000000 |
| `c * h * k` | -16269606259/50000000 | 1329676006328901/62500000000000000 | 0 |
| `a * c * q * j` | 500 | 10025215502256441027/976562500000000000000 | 10025215502256441027/1953125000000000000 |
| `c * q * j` | -8851601187/2000 | 52413124185099/1953125000000000 | 0 |
| `b * c * w * k` | -779100 | 16742165417009157237/6250000000000000000000 | 0 |
| `c * w * k` | -124973/5000 | 112835314213181/6250000000000000 | 0 |
| `a * e * r * j` | -20675200 | 535111673176421883/61035156250000000000 | 0 |
| `a * r * j` | -29108/625 | 411941241860217/7812500000000000 | 0 |
| `e * r * j` | -718051/10000 | 2797633085571/122070312500000 | 0 |
| `r * j` | -457550203611879291/10000000000000000 | 2153682129/15625000000 | 0 |
| `b * f * w * k` | -1612500 | 272569823012459468391/100000000000000000000000 | 0 |
| `f * w * k` | -1256878564086621/625000000 | 1837008586320383/100000000000000000 | 0 |
| `a * f * q * j` | 200 | 163214921549852495361/15625000000000000000000 | 163214921549852495361/78125000000000000000 |
| `a * f * j` | -8368/625 | 537742024551519/15625000000000000 | 0 |
| `f * q * j` | -11773/2500 | 853308734373657/31250000000000000 | 0 |
| `f * j` | 1365714525391/10000000000 | 2811384903/31250000000 | 3839549198492067572073/312500000000000000000 |
| `b * e * u * k` | 44400 | 9961906791390083649/7812500000000000000000 | 1105771653844299285039/19531250000000000000 |
| `b * u * k` | 839505231/10000 | 7668904381362651/1000000000000000000 | 6438085344192764422527381/10000000000000000000000 |
| `e * u * k` | 303653/2500 | 67139157628137/7812500000000000 | 20387006631256684461/19531250000000000000 |
| `b * c * e * k` | 180100 | 811767865204542393/488281250000000000000 | 1461993925233380849793/4882812500000000000 |
| `c * e * k` | -4614464627/100000000 | 5470981791009/488281250000000 | 0 |
| `a * c * e * j` | 100 | 42905896953505767/7629394531250000000 | 42905896953505767/76293945312500000 |
| `c * e * j` | -129667607003/10000 | 224317582479/15258789062500 | 0 |
| `c * e * r` | -599236839602377/62500000 | 3957299981391/244140625000000 | 0 |
| `c * r` | 3482342713411201/62500000000000 | 3046420309/31250000000 | 10608679565034049394481109/1953125000000000000000000 |
| `c * e * f * w` | -100 | 138396976191413967/48828125000000000000 | 0 |
| `c * e * f` | -1224779/10000 | 5165801059737/488281250000000 | 0 |
| `c * f * w` | -12646568813/1250 | 106541167198933/6250000000000000 | 0 |
| `e * f * w` | -128973/10000 | 8855139560523/781250000000000 | 0 |
| `a * c * r` | -34152400 | 582697951763357/15625000000000000 | 0 |
| `c * r * k` | -479779/2500 | 820946298449011/31250000000000000 | 0 |
| `c * w * j` | 93828/625 | 4626399039411/195312500000000 | 108521442267463827/30517578125000000 |
| `c * f * h * q` | 900 | 381069440630973550467/62500000000000000000000 | 3429624965678761954203/625000000000000000000 |
| `c * f * q` | 470161/2000 | 1207019839761597/62500000000000000 | 567493654882152207117/125000000000000000000 |
| `a * c * f * q` | -100 | 230870305810719942981/31250000000000000000000 | 0 |
| `a * f * p * q` | -1000 | 443910906642647962539/62500000000000000000000 | 0 |
| `f * p * q` | 1460127/10000 | 2320823674238643/125000000000000000 | 3388697308995047087661/1250000000000000000000 |
| `c * q * r` | 8118133627/62500000 | 924646445767371/31250000000000000 | 7506403404470126334484617/1953125000000000000000000 |
| `c * f * q * v` | -100 | 147378329454730755297/31250000000000000000000 | 0 |
| `c * f * v` | -883553373/10000 | 485565415854463/31250000000000000 | 0 |
| `f * q * v` | -135501/2500 | 9429799056544293/500000000000000000 | 0 |
| `c * h * p * v` | -100 | 18105021893117613069/3906250000000000000000 | 0 |
| `c * f * h * v` | -800 | 153298343004828368193/31250000000000000000000 | 0 |
| `a * f * q * u` | 300 | 2833209549144452805933/500000000000000000000000 | 8499628647433358417799/5000000000000000000000 |
| `f * q * u` | -3319329/10000 | 14812386218360421/1000000000000000000 | 0 |
| `b * c * v * k` | -500 | 76303054741601101407/31250000000000000000000 | 0 |
| `c * v * k` | 1288188443/7812500 | 514251229918391/31250000000000000 | 662452491179407119355213/244140625000000000000000 |
| `c * q * v * j` | -100 | 6399694876124772999/976562500000000000000 | 0 |
| `c * v * j` | 65643/500 | 21084989328921/976562500000000 | 1384081954518361203/488281250000000000 |
| `q * v * j` | -135501/2500 | 409475646306531/15625000000000000 | 0 |
| `v * j` | 280520623545247491/1250000000000000 | 1349093949/15625000000 | 378448675794600317815531959/19531250000000000000000000 |
| `a * b * u * k` | -37500 | 1466854347736378344723/500000000000000000000000 | 0 |
| `c * p * w * k` | 100 | 3390814027420302231/781250000000000000000 | 3390814027420302231/7812500000000000000 |
| `c * p * w` | -76321393069/1250 | 12582850713489/781250000000000 | 0 |
| `c * q * w * j` | 200 | 1404200010042987309/195312500000000000000 | 1404200010042987309/976562500000000000 |
| `c * q * w` | 747637/10000 | 127088425200741/6250000000000000 | 95016008951806399017/62500000000000000000 |
| `c * f * q * w` | 100 | 32337268527052945227/6250000000000000000000 | 32337268527052945227/62500000000000000000 |
| `b * c * q * w` | -15838800 | 18856999266010347357/6250000000000000000000 | 0 |
| `c * q * r * k` | -300 | 249172799558945369709/31250000000000000000000 | 0 |
| `c * f * k` | 1760079/10000 | 1071651196133077/62500000000000000 | 1886190765638710033083/625000000000000000000 |
| `c * h * p * k` | 100 | 39958093666189803951/7812500000000000000000 | 39958093666189803951/78125000000000000000 |
| `c * q * u * k` | 100 | 245179305652069531113/62500000000000000000000 | 245179305652069531113/625000000000000000000 |
| `c * q * u` | 438233/10000 | 909827131806447/62500000000000000 | 398716273452934688151/625000000000000000000 |
| `c * u * k` | -22407/625 | 807788987351927/62500000000000000 | 0 |
| `c * u` | -7177571693/625000000 | 2997595313/62500000000 | 0 |
| `q * u * k` | 1898609/10000 | 15687459572081997/1000000000000000000 | 29784351930691028242173/10000000000000000000000 |
| `c * h * u * k` | -100 | 255027868985864225097/62500000000000000000000 | 0 |
| `c * h * u` | -414649/10000 | 946373813862543/62500000000000000 | 0 |
| `h * u * k` | 3278619/10000 | 16317606307880493/1000000000000000000 | 53499214075536834079167/10000000000000000000000 |
| `e * f * w * j` | -114100 | 97840437004218627/24414062500000000000 | 0 |
| `e * f * j` | -409107/5000 | 3651988988997/244140625000000 | 0 |
| `f * w * j` | 1524721/10000 | 75319812936273/3125000000000000 | 114841700500007104833/31250000000000000000 |
| `a * e * f * j` | -100 | 698526889892423181/122070312500000000000 | 0 |
| `e * h * u` | 3961639/10000 | 78657597044433/7812500000000000 | 311613004097510505687/78125000000000000000 |
| `c * e * h` | -176558211227/500000000 | 6409587137481/488281250000000 | 0 |
| `c * h * h` | -45477/1000 | 1557796123757709/62500000000000000 | 0 |
| `h * u * w` | -264651/625 | 1622259955671597/100000000000000000 | 0 |
| `h * v * r` | 264651/625 | 7513937276468931/250000000000000000 | 1988571014154779058081/156250000000000000000 |
| `f * h * h` | 1035383/2500 | 25361606648011887/1000000000000000000 | 26258976376038491597721/2500000000000000000000 |
| `h * h * j` | 91671/10000 | 1101291789071529/31250000000000000 | 100956519595976134959/312500000000000000000 |
| `e * q * r` | -1641586167/5000 | 76851732871701/3906250000000000 | 0 |
| `e * p * w` | -237331259293/10000000000 | 1045820146959/97656250000000 | 0 |
| `e * e * p * r` | -66200 | 9884071114036371/3814697265625000000 | 0 |
| `e * e * p` | 733503147/125000000 | 50708087451/7629394531250 | 37194541723659708297/953674316406250000000 |
| `e * e * r` | -15501512473/10000 | 328909890321/30517578125000 | 0 |
| `e * p * r` | 14625521127/62500000 | 7608984691329/488281250000000 | 111285366358051863207783/30517578125000000000000 |
| `e * e * p * j` | 21400 | 560273658246099/238418579101562500 | 119898562864665186/2384185791015625 |
| `e * e * j` | 56333/5000 | 37288187298/3814697265625 | 1050277727529117/9536743164062500 |
| `b * e * e * p` | 6232600 | 7523913891717027/7629394531250000000 | 234467728607577712401/38146972656250000 |
| `b * e * p * w` | -2394600 | 155175655945335543/97656250000000000000 | 0 |
| `e * f * p * k` | 4672000 | 2676642327301723137/976562500000000000000 | 195394889893025789001/15258789062500000 |
| `e * f * h * p` | 100 | 3135848900265899433/976562500000000000000 | 3135848900265899433/9765625000000000000 |
| `e * f * h` | 477087/10000 | 104350900145283/7812500000000000 | 49784457897612630621/78125000000000000000 |
| `e * h * p` | -109672400967569/500000000 | 12324173208039/976562500000000 | 0 |
| `e * e * f * p` | 28300 | 12902520727644597/7629394531250000000 | 3651413365923420951/76293945312500000 |
| `c * e * h * p` | -140949/500 | 192614503068441531/61035156250000000000 | 0 |
| `e * v * r` | 286689/1250 | 30916263678279/1953125000000000 | 8863352717662128231/2441406250000000000 |
| `e * v * j` | -360941/5000 | 1752473039751/122070312500000 | 0 |
| `e * e * u * r` | -379100 | 63083930233896837/30517578125000000000 | 0 |
| `e * u * r` | -105089758087/2500000000 | 48563456685063/3906250000000000 | 0 |
| `u * r` | -101361515065266451/1250000000000000 | 37385263037/500000000000 | 0 |
| `f * v * w` | 1679903/10000 | 832349034241277/50000000000000000 | 1398265639669023956131/500000000000000000000 |
| `e * f * u * w` | -316600 | 1698389202289629831/781250000000000000000 | 0 |
| `e * f * u` | -276128909/7812500 | 63394020465441/7812500000000000 | 0 |
| `f * u * w` | 377921/2500 | 1307458970199869/100000000000000000 | 494116201476904692349/250000000000000000000 |
| `a * a * u` | -13099604961/500000000 | 7016962393380613/250000000000000000 | 0 |
| `c * e * e * j` | 279600 | 291388539640221/119209289550781250 | 1629444713668115832/2384185791015625 |
| `c * e * e` | -1093/100 | 26372390229/3814697265625 | 0 |
| `a * c * v * j` | -500 | 4032989163910706433/488281250000000000000 | 0 |
| `a * v * j` | -341381/2000 | 258045246907077/7812500000000000 | 0 |
| `f * h * h * p` | -24363200 | 762141641379405216237/125000000000000000000000 | 0 |
| `b * f * h * h` | -400 | 3763079109612059757399/1000000000000000000000000 | 0 |
| `f * h * p * k` | -3190300 | 650535354730372835493/125000000000000000000000 | 0 |
| `f * h * q * j` | 200 | 269398953837841625127/31250000000000000000000 | 269398953837841625127/156250000000000000000 |
| `f * h * j` | -812127/5000 | 887585139111033/31250000000000000 | 0 |
| `f * h * p * v` | 900 | 294757726382884208367/62500000000000000000000 | 2652819537445957875303/625000000000000000000 |
| `f * p * v` | 3183453/10000 | 933631474300497/62500000000000000 | 2972171917756340076141/625000000000000000000 |
| `f * h * q * u` | -900 | 4676433265384786874331/1000000000000000000000000 | 0 |
| `a * f * p * v` | -400 | 178578492983878962681/31250000000000000000000 | 0 |
| `a * f * v` | 341381/2500 | 5942514158726131/250000000000000000 | 2028661426020085326911/625000000000000000000 |
| `a * c * f * v` | 400 | 92875553786730701399/15625000000000000000000 | 92875553786730701399/39062500000000000000 |
| `a * f * h * j` | -200 | 169771072313184615009/15625000000000000000000 | 0 |
| `f * h * v * r` | -20800 | 1911898798185690086157/250000000000000000000000 | 0 |
| `f * h * r` | -48257651/250000 | 15658338573686457/500000000000000000 | 0 |
| `f * v * r` | -203422491456341/2500000000 | 6055851073246387/250000000000000000 | 0 |
| `e * f * h * r` | 500 | 20340181807218707643/3906250000000000000000 | 20340181807218707643/7812500000000000000 |
| `e * f * r` | -23141841421/10000 | 64426585729413/3906250000000000 | 0 |
| `a * e * f * u` | 50600 | 12125564476486296393/3906250000000000000000 | 3067767812551032987429/19531250000000000000 |
| `f * p * v * w` | -400 | 25012920827984615127/6250000000000000000000 | 0 |
| `p * v * w` | 154123/1250 | 98303068332441/6250000000000000 | 15150763800600804243/7812500000000000000 |
| `q * u * r` | -269479/2500 | 11347137651727203/500000000000000000 | 0 |
| `a * a * u * r` | -57900 | 1367753326680142466573/125000000000000000000000 | 0 |
| `a * u * r` | -19668051/1250 | 7150791416876101/250000000000000000 | 0 |
| `c * f * v * w` | 500 | 13008783056156918233/3125000000000000000000 | 13008783056156918233/6250000000000000000 |
| `a * c * e * f` | 258800 | 988078266099075201/244140625000000000000 | 639286638166101655047/610351562500000000 |
| `c * v * r` | -631831/2500 | 371970966149209/15625000000000000 | 0 |
| `f * h * p * w` | -6471000 | 64674771275614866597/12500000000000000000000 | 0 |
| `c * f * h * w` | -500 | 33636218437542336363/6250000000000000000000 | 0 |
| `c * h * w` | 9965051259/50000000 | 132193417244229/6250000000000000 | 1317314178941116506934311/312500000000000000000000 |
| `c * h * r` | 180283/5000 | 961788402174699/31250000000000000 | 173394098509261259817/156250000000000000000 |
| `c * f * w * k` | -1911200 | 28710607195601265907/6250000000000000000000 | 0 |
| `e * h * p * r` | -600 | 2402240165884169919/488281250000000000000 | 0 |
| `b * e * h * p` | 608091023/250 | 1828623848089202703/976562500000000000000 | 1111969746466759866921635169/244140625000000000000000 |
| `h * p * r * k` | 200 | 498347403897074846499/62500000000000000000000 | 498347403897074846499/312500000000000000000 |
| `h * p * w * j` | -300 | 2808410190822720099/390625000000000000000 | 0 |
| `h * p * j` | -1204697/10000 | 104826628002789/3906250000000000 | 0 |
| `h * p * u * k` | 100 | 490360387158116695143/125000000000000000000000 | 490360387158116695143/1250000000000000000000 |
| `p * u * k` | 684289/10000 | 1553193861341913/125000000000000000 | 1062833474183796304857/1250000000000000000000 |
| `h * p * v * j` | -100 | 12799436105768539689/1953125000000000000000 | 0 |
| `h * v * j` | -3278619/10000 | 425923799732739/15625000000000000 | 0 |
| `p * v * j` | -1638637/10000 | 40541622261399/1953125000000000 | 0 |
| `e * h * p * j` | -3190600 | 136169789775622911/30517578125000000000 | 0 |
| `h * h * p * r` | -3235200 | 583844222487649860891/62500000000000000000000 | 0 |
| `h * h * r` | -9923/100 | 19428445725188841/500000000000000000 | 0 |
| `h * h * p * j` | 500 | 33094919553388517979/3906250000000000000000 | 33094919553388517979/7812500000000000000 |
| `f * h * q * r` | 300 | 4752603265546739742183/500000000000000000000000 | 14257809796640219226549/5000000000000000000000 |
| `h * q * r * j` | 100 | 206375054455450162161/15625000000000000000000 | 206375054455450162161/156250000000000000000 |
| `h * r * j` | 13624084689/312500000 | 679941138628719/15625000000000000 | 9263575656212756983583391/4882812500000000000000000 |
| `q * r * j` | 196271451973/10000000000 | 653683446111951/15625000000000000 | 128299399099106924277829323/156250000000000000000000000 |
| `f * h * r * k` | -200 | 4219593420498452745903/500000000000000000000000 | 0 |
| `f * r * k` | -673964722663/10000000000 | 13365367125309073/500000000000000000 | 0 |
| `h * h * r * j` | -58400 | 214664896817611504209/15625000000000000000000 | 0 |
| `f * h * h * r` | 400 | 4943509729437125025927/500000000000000000000000 | 4943509729437125025927/1250000000000000000000 |
| `a * f * h * r` | -500 | 2995017394004729689761/250000000000000000000000 | 0 |
| `e * f * h * j` | -10778100 | 1152973095705231867/244140625000000000000 | 0 |
| `e * h * r * j` | -3989900 | 883243539078705981/122070312500000000000 | 0 |
| `f * p * w * k` | -100 | 55203945027513829533/12500000000000000000000 | 0 |
| `f * q * r * k` | 100 | 4056642864506684527887/500000000000000000000000 | 4056642864506684527887/5000000000000000000000 |
| `c * h * p * w` | 300 | 3972544381606325679/781250000000000000000 | 11917633144818977037/7812500000000000000 |
| `c * h * q * r` | -100 | 291921054039662465781/31250000000000000000000 | 0 |
| `h * p * p * w` | 600 | 7638296193720116001/1562500000000000000000 | 22914888581160348003/7812500000000000000 |
| `h * p * q * r` | -600 | 561297561900690815739/62500000000000000000000 | 0 |
| `f * p * q * w` | 600 | 62177187056527484613/12500000000000000000000 | 186531561169582453839/62500000000000000000 |
| `f * q * q * r` | -600 | 4569069150442907912007/500000000000000000000000 | 0 |
| `f * q * q` | -225629/625 | 23440620304856367/1000000000000000000 | 0 |
| `p * v * w * j` | 400 | 1086150602005140609/195312500000000000000 | 1086150602005140609/488281250000000000 |
| `v * w * j` | -341381/2500 | 36143575987659/1562500000000000 | 0 |
| `q * u * r * k` | 400 | 3057815307249794937237/500000000000000000000000 | 3057815307249794937237/1250000000000000000000 |
| `u * r * k` | 274683971171/2500000000 | 10074543297947723/500000000000000000 | 2767315560814463607997093633/1250000000000000000000000000 |
| `c * e * p * w` | -992600 | 16345123076822211/6103515625000000000 | 0 |
| `e * f * q * r` | 3254200 | 19554692874005704347/3906250000000000000000 | 318174407752946815430037/19531250000000000000 |
| `a * c * p * w` | -100 | 2406759604521181497/390625000000000000000 | 0 |
| `a * c * w` | 107623/5000 | 80089168564147/3125000000000000 | 8619436588379192581/15625000000000000000 |
| `a * c * w * j` | 100 | 884905223465260203/97656250000000000000 | 884905223465260203/976562500000000000 |
| `e * f * q * j` | -1480900 | 1108448045951380443/244140625000000000000 | 0 |
| `e * p * p * k` | -100 | 316119972244687821/122070312500000000000 | 0 |
| `e * p * q * j` | 100 | 130911239782292319/30517578125000000000 | 130911239782292319/305175781250000000 |
| `h * p * p * k` | -100 | 76830294501418503969/15625000000000000000000 | 0 |
| `h * p * q * j` | 100 | 31816873304778514491/3906250000000000000000 | 31816873304778514491/39062500000000000000 |
| `c * e * p * k` | 100 | 164408473801611459/61035156250000000000 | 164408473801611459/610351562500000000 |
| `c * h * q * j` | 100 | 16547399849601790389/1953125000000000000000 | 16547399849601790389/19531250000000000000 |
| `c * h * j` | -944523/10000 | 54518497522731/1953125000000000 | 0 |
| `c * e * q * j` | -100 | 68084648316443601/15258789062500000000 | 0 |
| `c * e * q` | 1532913/5000 | 6162064287849/488281250000000 | 9445908453679474137/2441406250000000000 |
| `a * p * p * v` | -500 | 21090688012271894373/3906250000000000000000 | 0 |
| `p * p * v` | -33969/500 | 110264846644701/7812500000000000 | 0 |
| `a * p * q * u` | 500 | 334611059125633044489/62500000000000000000000 | 334611059125633044489/125000000000000000000 |
| `p * q * u` | 33969/500 | 1749389925005793/125000000000000000 | 59425026362521782417/62500000000000000000 |
| `a * p * v * j` | 500 | 7754517714804570927/976562500000000000000 | 7754517714804570927/1953125000000000000 |
| `a * q * u * j` | -500 | 123028105296965808411/15625000000000000000000 | 0 |
| `a * u * j` | -325777/2000 | 405339057182469/15625000000000000 | 0 |
| `q * u * j` | 238587/2500 | 643206857721507/31250000000000000 | 153460794563201190609/78125000000000000000 |
| `u * j` | 77726157099/2500000000 | 2119165053/31250000000 | 164714555828188661247/78125000000000000000 |
| `f * p * q * k` | -100 | 625413242910155276997/125000000000000000000000 | 0 |
| `f * q * q * j` | 100 | 258995413748357998983/31250000000000000000000 | 258995413748357998983/312500000000000000000 |
| `f * v * j` | -26942/625 | 343272908041203/15625000000000000 | 0 |
| `e * f * v * j` | -7300 | 445911507545522697/122070312500000000000 | 0 |
| `e * f * v` | 6483316437/20000000 | 40357634857953/3906250000000000 | 261651317433010845073461/78125000000000000000000 |
| `c * e * f * q` | 946100 | 1567918771850314503/488281250000000000000 | 14834079500475825512883/4882812500000000000 |
| `b * c * e * q` | 2721200 | 914308612838171073/488281250000000000000 | 6220041493138077809619/1220703125000000000 |
| `c * e * v` | -96694239430437/20000000 | 2478903171171/244140625000000 | 0 |
| `c * e * e * u` | -348300 | 5058145328751513/3814697265625000000 | 0 |
| `c * e * u` | 203639/10000 | 3893876311587/488281250000000 | 792945078215265093/4882812500000000000 |
| `c * c * e * e` | 410700 | 412174086889041/238418579101562500 | 1692798974853291387/2384185791015625 |
| `c * c * e` | -476763/10000 | 317301067659/30517578125000 | 0 |
| `c * c` | 304852597/100000000 | 244265641/3906250000 | 74465015016719677/390625000000000000 |
| `b * c * e * v` | 97200 | 367812215828839467/244140625000000000000 | 89378368446407990481/610351562500000000 |
| `b * c * e * e` | 5389500 | 3913056145008333/3814697265625000000 | 42178832187044821407/7629394531250000 |
| `c * c * v` | 246641/10000 | 29825079031741/1953125000000000 | 7356087317467631981/19531250000000000000 |
| `c * c * h * v` | 100 | 9416105526189982851/1953125000000000000000 | 9416105526189982851/19531250000000000000 |
| `c * c * h` | -269105297/2000 | 77117349785751/3906250000000000 | 0 |
| `c * e * h * u` | 202300 | 1229339584207443357/488281250000000000000 | 2486953978851657911211/4882812500000000000 |
| `b * e * h * u` | 178900 | 11670978276661835241/7812500000000000000000 | 20879380136948023246149/78125000000000000000 |
| `b * c * e * h` | 2092900051/500 | 951035310698018337/488281250000000000000 | 1990421850262683423106235187/244140625000000000000000 |
| `b * b * h * v` | 233700 | 848676362940485390619/500000000000000000000000 | 1983356660191914357876603/5000000000000000000000 |
| `b * f * v * w` | -337500 | 123501452653617957429/50000000000000000000000 | 0 |
| `b * b * v * w` | 56600 | 72018043208942811939/50000000000000000000000 | 20381106228130815778737/250000000000000000000 |
| `b * b * v * k` | 77600 | 724398128696304729891/500000000000000000000000 | 70266618483541558799427/625000000000000000000 |
| `c * h * v * j` | 100 | 6656763066022977831/976562500000000000000 | 6656763066022977831/9765625000000000000 |
| `c * e * f * v` | 400 | 630749475194947437/244140625000000000000 | 630749475194947437/610351562500000000 |
| `c * c * v * w` | -156100 | 799043692339373131/195312500000000000000 | 0 |
| `c * c * w` | -131302087/625 | 6544120788031/390625000000000 | 0 |
| `c * v * r * k` | 400 | 100238363986922692111/15625000000000000000000 | 100238363986922692111/39062500000000000000 |
| `v * r * k` | 473131/2500 | 6413613410130059/250000000000000000 | 3034479326348244944729/625000000000000000000 |
| `c * v * w * j` | -400 | 564887949111122511/97656250000000000000 | 0 |
| `c * h * w * j` | -2690200 | 1460605067131486221/195312500000000000000 | 0 |
| `c * c * q * k` | 100 | 19978974478413086241/3906250000000000000000 | 19978974478413086241/39062500000000000000 |
| `c * c * q` | -156743/10000 | 74139263090679/3906250000000000 | 0 |
| `c * c * k` | -22407/625 | 65824460671039/3906250000000000 | 0 |
| `c * c * h * k` | -100 | 20781506302914393729/3906250000000000000000 | 0 |
| `e * f * f` | -22228/625 | 84101515275891/7812500000000000 | 0 |
| `f * f` | 27540575533/156250000 | 64743275809/1000000000000 | 1783067077671616181197/156250000000000000000 |
| `b * e * e * j` | 1982600 | 2766354683357673/1907348632812500000 | 27422873976124612449/9536743164062500 |
| `b * e * f * h` | 1830800 | 15483273510856655691/7812500000000000000000 | 70866942859190913097707/19531250000000000000 |
| `e * q * u` | -958169/2500 | 75620029702257/7812500000000000 | 0 |
| `e * p * v` | 958169/2500 | 4766365039149/488281250000000 | 4566983223196358181/1220703125000000000 |
| `c * e * v * r` | -312200 | 483190285027822491/122070312500000000000 | 0 |
| `b * c * h * w` | 18672100 | 19614462670446966333/6250000000000000000000 | 3662432084288528000664093/62500000000000000000 |
| `c * e * h * r` | 100 | 1249363134424934001/244140625000000000000 | 1249363134424934001/2441406250000000000 |
| `e * e * r * j` | -254600 | 3634125378156729/953674316406250000 | 0 |
| `f * f * h * q` | -400 | 6203978243024462665281/1000000000000000000000000 | 0 |
| `f * f * h` | 92171/125 | 20440164348935199/1000000000000000000 | 1883990388205706227029/125000000000000000000 |
| `f * f * q` | -333551/625 | 19650814330271871/1000000000000000000 | 0 |
| `f * f * h * h` | 400 | 6453184726766680611489/1000000000000000000000000 | 6453184726766680611489/2500000000000000000000 |
| `f * f * q * w` | -1253100 | 526464966722313695961/100000000000000000000000 | 0 |
| `f * f * w` | 790403/2500 | 1734537102198919/100000000000000000 | 1370983329189332174357/250000000000000000000 |
| `b * f * q * q` | -500 | 3478048918973673166359/1000000000000000000000000 | 0 |
| `f * q * u * w` | 400 | 396838639176094039011/100000000000000000000000 | 396838639176094039011/250000000000000000000 |
| `q * u * w` | -154123/1250 | 1559612175329613/100000000000000000 | 0 |
| `p * v * r` | 269479/2500 | 715215273130071/31250000000000000 | 192735496587818403009/78125000000000000000 |
| `c * f * q * k` | 400 | 325266499399115397963/62500000000000000000000 | 325266499399115397963/156250000000000000000 |
| `f * f * q * k` | 400 | 5295481794907333525209/1000000000000000000000000 | 5295481794907333525209/2500000000000000000000 |
| `f * f * k` | -316714628/625 | 17446953221733511/1000000000000000000 | 0 |
| `e * f * f * q` | 100 | 25526407815023160429/7812500000000000000000 | 25526407815023160429/78125000000000000000 |
| `b * h * u * w` | 20800 | 240706065442684548069/100000000000000000000000 | 3129178850754899124897/62500000000000000000 |
| `b * p * v * k` | 500 | 146713359654479154033/62500000000000000000000 | 146713359654479154033/125000000000000000000 |
| `p * v * k` | -271321/2000 | 988787747794329/62500000000000000 | 0 |
| `b * q * u * k` | -500 | 2327658188926810468869/1000000000000000000000000 | 0 |
| `b * p * q * v` | -500 | 165245871511204429113/62500000000000000000000 | 0 |
| `p * q * v` | -107623/2000 | 1113689261214369/62500000000000000 | 0 |
| `b * q * q * u` | 500 | 2621682898648416339309/1000000000000000000000000 | 2621682898648416339309/2000000000000000000000 |
| `q * q * u` | 107623/2000 | 17669065277289717/1000000000000000000 | 1901597812337751212691/2000000000000000000000 |
| `p * v * r * k` | -400 | 192735496587818403009/31250000000000000000000 | 0 |
| `q * u * w * j` | -400 | 17232154925216894037/3125000000000000000000 | 0 |
| `u * w * j` | -325777/2500 | 56774550934923/3125000000000000 | 0 |
| `c * h * r * k` | -100 | 259181776829635711821/31250000000000000000000 | 0 |
| `c * e * h * j` | -11931000 | 70819528282027569/15258789062500000000 | 0 |
| `c * c * e * q` | 14900 | 96306902754792021/30517578125000000000 | 14349728510464011129/305175781250000000 |
| `c * f * h * k` | -42058100 | 338332070782369872747/62500000000000000000000 | 0 |
| `c * f * h * h` | 20301000 | 396376550301777781923/62500000000000000000000 | 8046840347676390750818823/62500000000000000000 |
| `c * c * e * w` | -62400 | 8500812903652269/3051757812500000000 | 0 |
| `c * e * p * v` | -20800 | 74493519196859721/30517578125000000000 | 0 |
| `c * e * e * p` | 20800 | 792516698771679/476837158203125000 | 82421736672254616/2384185791015625 |
| `c * c * h * w` | -238000 | 2066050918110055041/390625000000000000000 | 0 |
| `f * h * w * j` | -3409500 | 23779293461923685103/3125000000000000000000 | 0 |
| `f * f * h * k` | -400 | 5508195048586708491321/1000000000000000000000000 | 0 |
| `f * h * h * j` | -400 | 280220391853883339463/31250000000000000000000 | 0 |
| `c * e * q * u` | 20800 | 1181865444216574653/488281250000000000000 | 15364250774815470489/305175781250000000 |
| `c * f * v * k` | -400 | 130849682699044834777/31250000000000000000000 | 0 |
| `f * p * v * k` | 400 | 251594076063023631063/62500000000000000000000 | 251594076063023631063/156250000000000000000 |
| `f * q * u * k` | -400 | 3991627025737547890659/1000000000000000000000000 | 0 |
| `e * f * p * v` | -400 | 1212787285116345603/488281250000000000000 | 0 |
| `e * f * q * u` | 400 | 19241289697650186879/7812500000000000000000 | 19241289697650186879/19531250000000000000 |
| `f * f * h * w` | -945700 | 547612443072322916409/100000000000000000000000 | 0 |
| `e * f * f * h` | -100 | 26551773489266823501/7812500000000000000000 | 0 |
| `h * u * r` | 6040293223/100000000 | 11802938778674307/500000000000000000 | 71293211116310313496321461/50000000000000000000000000 |
| `v * r * j` | 51093028829/2500000000 | 262966741633029/7812500000000000 | 13435767311324545235593041/19531250000000000000000000 |
| `u * w * k` | -527/10 | 1384699901474533/100000000000000000 | 0 |
| `e * f * f * w` | -737700 | 2253163695756395781/781250000000000000000 | 0 |
| `b * c * h * p` | 14992/125 | 22001202557187181713/7812500000000000000000 | 20615126796084389265081/61035156250000000000000 |
| `b * c * p` | 641178793/7812500 | 69687792180783/7812500000000000 | 44682334477309281734919/61035156250000000000000 |
| `b * b * h * p` | -14992/125 | 208872764209339206669/125000000000000000000000 | 0 |
| `b * b * p` | -641178793/7812500 | 661594826310579/125000000000000000 | 0 |
| `b * c * e * h * p` | -1926000 | 28579562121786149045187/61035156250000000000000000 | 0 |
| `b * c * e * p` | -658970307/500 | 90524442042837117/61035156250000000000 | 0 |
| `b * b * e * h * p` | 1926000 | 271325720707931629463031/976562500000000000000000000 | 261286669041738159172898853/488281250000000000000000 |
| `b * b * e * p` | 658970307/500 | 859411679377442121/976562500000000000000 | 566326778198738603350101147/488281250000000000000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 76 | -1446702683973609608409571736284581324409475303035817/58558117052305030000000000000000000000000000 |

## Stage 77

| Property | Value |
| --- | --- |
| Scope | root/ACP+/HBP+/APQ-/AEP+/AFP-/APR-/APS- |
| Packet | forest:root/ACP+/HBP+/APQ-/AEP+/AFP-/APR-/APS- |
| Index | 0 |
| Context | 26 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 61 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 33969/250000 | 18223/31250 | 33969/250000 | 18223/31250 |
| b | 107623/1000000 | 36207/100000 | 107623/1000000 | 36207/100000 |
| c | 135501/250000 | 198017/250000 | 135501/250000 | 198017/250000 |
| e | 13027/31250 | 18223/31250 | 13027/31250 | 18223/31250 |
| f | 107623/1000000 | 36207/100000 | 107623/1000000 | 36207/100000 |
| h | 684289/1000000 | 1/1 | 684289/1000000 | 1/1 |
| p | 61123/500000 | 47297/100000 | 61123/500000 | 214867/500000 |
| q | 142727/500000 | 728249/1000000 | 340039/1000000 | 728249/1000000 |
| u | 808203/1000000 | 1/1 | 808203/1000000 | 1/1 |
| v | 33969/250000 | 190039/500000 | 33969/250000 | 190039/500000 |
| r | 240269/500000 | 971863/1000000 | 240269/500000 | 971863/1000000 |
| w | 564269/1000000 | 860529/1000000 | 116143/200000 | 860529/1000000 |
| j | 321057/1000000 | 30977/40000 | 97301/250000 | 30977/40000 |
| k | 133697/200000 | 1/1 | 133697/200000 | 1/1 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 35 | A_AFS | brtt ["actual-area","AFS",["P"]] | `-1/1 * f * k + 1/1 * a * f + 1/1 * j + -1/1 * a * j + -279/1000` |
| 42 | A_APS | brtt ["actual-area","APS",[]] | `-1/1 * p * k + 1/1 * a * p + 1/1 * q * j + -1/1 * a * j + -93/1000` |
| 88 | A_CHP | brtt ["actual-area","CHP",[]] | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 113 | A_ERS | brtt ["actual-area","ERS",[]] | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 35 | j | 321057/1000000 | 30977/40000 | 336320978407/864124000000 | 30977/40000 | 97301/250000 | 30977/40000 | `(216031/250000, -336320978407/1000000000000); (13027/31250, -288185515427/1000000000000); (216031/250000, -47184174063/100000000000); (13027/31250, -30990231243/100000000000); (216031/250000, -92999904313/250000000000); (13027/31250, -10120754821/31250000000); (216031/250000, -14796834417/25000000000); (13027/31250, -1343543589/3125000000)` |
| 1 | 42 | q | 142727/500000 | 728249/1000000 | 131667545557/387212500000 | 728249/1000000 | 340039/1000000 | 728249/1000000 | `(97301/250000, -105496401259/500000000000); (97301/250000, -165196218799/500000000000); (97301/250000, -198895780717/500000000000); (97301/250000, -180163190137/500000000000); (30977/40000, -131667545557/500000000000); (30977/40000, -277514335327/500000000000); (30977/40000, -45013385003/100000000000); (30977/40000, -58496261333/100000000000); (97301/250000, -31439898151/125000000000); (97301/250000, -5795606567/15625000000); (97301/250000, -69323526373/125000000000); (97301/250000, -8080047341/15625000000); (30977/40000, -75965368451/250000000000); (30977/40000, -18611095417/31250000000); (30977/40000, -30346524979/50000000000); (30977/40000, -4635995393/6250000000)` |
| 2 | 88 | p | 61123/500000 | 47297/100000 | 61123/500000 | 107433497337/250000000000 | 61123/500000 | 214867/500000 | `(-684289/1000000, 93584877/1000000000); (-684289/1000000, 179669409/1000000000); (-1/1, 66175375461/250000000000); (-1/1, 107433497337/250000000000); (-684289/1000000, -730165599/6250000000); (-684289/1000000, -798870683/6250000000); (-1/1, 13572532251/250000000000); (-1/1, 30561317767/250000000000)` |
| 3 | 113 | w | 564269/1000000 | 860529/1000000 | 354698723821/610796000000 | 860529/1000000 | 116143/200000 | 860529/1000000 | `(152699/250000, -239163205823/500000000000); (152699/250000, -246756349247/500000000000); (152699/250000, -354698723821/1000000000000); (152699/250000, -451578601069/1000000000000); (9023/40000, -158870822351/500000000000); (9023/40000, -134438232719/500000000000); (9023/40000, -194113956877/1000000000000); (9023/40000, -226942368013/1000000000000); (152699/250000, -10164622759/15625000000); (152699/250000, -10401908491/15625000000); (152699/250000, -11375830043/31250000000); (152699/250000, -14403326207/31250000000); (9023/40000, -15310971551/31250000000); (9023/40000, -13783934699/31250000000); (9023/40000, -1589389019/7812500000); (9023/40000, -1845860981/7812500000)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 77:0 | ABC | lo | 93/1000 | occupants none |
| 77:2 | ABE | lo | 93/1000 | occupants none |
| 77:10 | ABQ | lo | 93/1000 | occupants none |
| 77:12 | ABR | lo | 93/1000 | occupants none |
| 77:21 | ACH | hi | 42777810527/62500000000 | vertex maximum 42777810527/62500000000 |
| 77:22 | ACP | lo | 93/1000 | occupants none |
| 77:44 | AFP | lo | 93/1000 | occupants none |
| 77:52 | AHP | lo | 93/1000 | occupants none |
| 77:59 | AHS | hi | 6691992287/10000000000 | vertex maximum 6691992287/10000000000 |
| 77:64 | APS | lo | 93/1000 | occupants none |
| 77:76 | BCH | lo | 151081/500000 | earlier 61:74; BCH; lo; 151081/500000 |
| 77:84 | BCS | lo | 93/1000 | occupants none |
| 77:88 | BEH | lo | 151081/500000 | earlier 61:86; BEH; lo; 151081/500000 |
| 77:96 | BES | lo | 93/1000 | occupants none |
| 77:106 | BHP | lo | 93/1000 | occupants none |
| 77:108 | BHQ | lo | 151081/500000 | earlier 61:106; BHQ; lo; 151081/500000 |
| 77:110 | BHR | lo | 279/1000 | occupants P |
| 77:122 | BQS | lo | 93/1000 | occupants none |
| 77:124 | BRS | lo | 93/1000 | occupants none |
| 77:146 | CFS | lo | 93/1000 | occupants none |
| 77:148 | CHP | lo | 93/1000 | occupants none |
| 77:170 | EFP | lo | 61123/500000 | earlier 61:166; EFP; lo; 61123/500000 |
| 77:178 | EHP | lo | 93/1000 | occupants none |
| 77:204 | FHS | lo | 93/1000 | occupants none |
| 77:206 | FPQ | lo | 61123/500000 | earlier 61:202; FPQ; lo; 61123/500000 |
| 77:208 | FPR | lo | 61123/500000 | earlier 61:204; FPR; lo; 61123/500000 |
| 77:210 | FPS | lo | 47419/500000 | earlier 61:206; FPS; lo; 47419/500000 |
| 77:218 | HPQ | lo | 93/1000 | occupants none |
| 77:220 | HPR | lo | 93/1000 | occupants none |
| 77:222 | HPS | lo | 93/1000 | occupants none |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 6 | fan | AFS = AFP + FPS + APS | point P |
| 2643 | bary | outer ACH; fans CHP, AHP, ACP; target FPS; sign -1; vertices AFS -1; CFS -1; FHS -1 | container ACH; inner P; line FS |
| 2967 | bary | outer AHS; fans HPS, APS, AHP; target BCP; sign 1; vertices ABC 1; BCH 1; BCS 1 | container AHS; inner P; line BC |
| 2968 | bary | outer AHS; fans HPS, APS, AHP; target BEP; sign 1; vertices ABE 1; BEH 1; BES 1 | container AHS; inner P; line BE |
| 2971 | bary | outer AHS; fans HPS, APS, AHP; target BPQ; sign 1; vertices ABQ 1; BHQ 1; BQS 1 | container AHS; inner P; line BQ |
| 2972 | bary | outer AHS; fans HPS, APS, AHP; target BPR; sign 1; vertices ABR 1; BHR 1; BRS 1 | container AHS; inner P; line BR |
| 3286 | four | -1 * AFP + -1 * APS + 1 * AFS + -1 * FPS = 0 | vertices AFPS |
| 3310 | four | 1 * BCH + -1 * BHP + -1 * BCP + -1 * CHP = 0 | vertices BCHP |
| 3324 | four | 1 * BEH + -1 * BHP + -1 * BEP + -1 * EHP = 0 | vertices BEHP |
| 3340 | four | -1 * BHP + -1 * BPQ + 1 * BHQ + -1 * HPQ = 0 | vertices BHPQ |
| 3341 | four | -1 * BHP + -1 * BPR + 1 * BHR + -1 * HPR = 0 | vertices BHPR |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 77:238 | AFS | lo | 140419/500000 | 140419/500000 | 6 | 77:44, 77:210, 77:64 |
| 77:242 | FPS | lo | 59261/500000 | 5070144754011/42777810527000 | 2643 | 77:21, 77:148, 77:52, 77:22, 77:238, 77:146, 77:204 |
| 77:255 | BCP | lo | 122067/1000000 | 816875942691/6691992287000 | 2967 | 77:59, 77:222, 77:64, 77:52, 77:0, 77:76, 77:84 |
| 77:256 | BEP | lo | 122067/1000000 | 816875942691/6691992287000 | 2968 | 77:59, 77:222, 77:64, 77:52, 77:2, 77:88, 77:96 |
| 77:257 | BPQ | lo | 122067/1000000 | 816875942691/6691992287000 | 2971 | 77:59, 77:222, 77:64, 77:52, 77:10, 77:108, 77:122 |
| 77:258 | BPR | lo | 1857/15625 | 795335282691/6691992287000 | 2972 | 77:59, 77:222, 77:64, 77:52, 77:12, 77:110, 77:124 |
| 77:259 | AFS | lo | 152261/500000 | 152261/500000 | 3286 | 77:44, 77:64, 77:242 |
| 77:260 | BCH | lo | 308067/1000000 | 308067/1000000 | 3310 | 77:106, 77:255, 77:148 |
| 77:261 | BEH | lo | 308067/1000000 | 308067/1000000 | 3324 | 77:106, 77:256, 77:178 |
| 77:262 | BHQ | lo | 308067/1000000 | 308067/1000000 | 3340 | 77:106, 77:257, 77:218 |
| 77:263 | BHR | lo | 19053/62500 | 19053/62500 | 3341 | 77:106, 77:258, 77:220 |
| 77:273 | FPS | lo | 6087/50000 | 5207808004011/42777810527000 | 2643 | 77:21, 77:148, 77:52, 77:22, 77:259, 77:146, 77:204 |
| 77:279 | BCP | lo | 15361/125000 | 822367592691/6691992287000 | 2967 | 77:59, 77:222, 77:64, 77:52, 77:0, 77:260, 77:84 |
| 77:280 | BEP | lo | 15361/125000 | 822367592691/6691992287000 | 2968 | 77:59, 77:222, 77:64, 77:52, 77:2, 77:261, 77:96 |
| 77:281 | BPQ | lo | 15361/125000 | 822367592691/6691992287000 | 2971 | 77:59, 77:222, 77:64, 77:52, 77:10, 77:262, 77:122 |
| 77:282 | BPR | lo | 3061/25000 | 819373922691/6691992287000 | 2972 | 77:59, 77:222, 77:64, 77:52, 77:12, 77:263, 77:124 |
| 77:285 | AFS | lo | 15387/50000 | 15387/50000 | 3286 | 77:44, 77:64, 77:273 |
| 77:286 | BCH | lo | 38611/125000 | 38611/125000 | 3310 | 77:106, 77:279, 77:148 |
| 77:287 | BEH | lo | 38611/125000 | 38611/125000 | 3324 | 77:106, 77:280, 77:178 |
| 77:288 | BHQ | lo | 38611/125000 | 38611/125000 | 3340 | 77:106, 77:281, 77:218 |
| 77:289 | BHR | lo | 7711/25000 | 7711/25000 | 3341 | 77:106, 77:282, 77:220 |
| 77:298 | FPS | lo | 61089/500000 | 5226512629011/42777810527000 | 2643 | 77:21, 77:148, 77:52, 77:22, 77:285, 77:146, 77:204 |
| 77:304 | BCP | lo | 61501/500000 | 823131122691/6691992287000 | 2967 | 77:59, 77:222, 77:64, 77:52, 77:0, 77:286, 77:84 |
| 77:305 | BEP | lo | 61501/500000 | 823131122691/6691992287000 | 2968 | 77:59, 77:222, 77:64, 77:52, 77:2, 77:287, 77:96 |
| 77:306 | BPQ | lo | 61501/500000 | 823131122691/6691992287000 | 2971 | 77:59, 77:222, 77:64, 77:52, 77:10, 77:288, 77:122 |
| 77:307 | BPR | lo | 6147/50000 | 822714482691/6691992287000 | 2972 | 77:59, 77:222, 77:64, 77:52, 77:12, 77:289, 77:124 |
| 77:310 | AFS | lo | 154089/500000 | 154089/500000 | 3286 | 77:44, 77:64, 77:298 |
| 77:311 | BCH | lo | 154501/500000 | 154501/500000 | 3310 | 77:106, 77:304, 77:148 |
| 77:312 | BEH | lo | 154501/500000 | 154501/500000 | 3324 | 77:106, 77:305, 77:178 |
| 77:313 | BHQ | lo | 154501/500000 | 154501/500000 | 3340 | 77:106, 77:306, 77:218 |
| 77:314 | BHR | lo | 15447/50000 | 15447/50000 | 3341 | 77:106, 77:307, 77:220 |
| 77:323 | FPS | lo | 122237/1000000 | 5229058504011/42777810527000 | 2643 | 77:21, 77:148, 77:52, 77:22, 77:310, 77:146, 77:204 |
| 77:325 | BCP | lo | 61509/500000 | 823237142691/6691992287000 | 2967 | 77:59, 77:222, 77:64, 77:52, 77:0, 77:311, 77:84 |
| 77:326 | BEP | lo | 61509/500000 | 823237142691/6691992287000 | 2968 | 77:59, 77:222, 77:64, 77:52, 77:2, 77:312, 77:96 |
| 77:327 | BPQ | lo | 61509/500000 | 823237142691/6691992287000 | 2971 | 77:59, 77:222, 77:64, 77:52, 77:10, 77:313, 77:122 |
| 77:328 | BPR | lo | 123009/1000000 | 823179482691/6691992287000 | 2972 | 77:59, 77:222, 77:64, 77:52, 77:12, 77:314, 77:124 |
| 77:331 | AFS | lo | 308237/1000000 | 308237/1000000 | 3286 | 77:44, 77:64, 77:323 |
| 77:332 | BCH | lo | 154509/500000 | 154509/500000 | 3310 | 77:106, 77:325, 77:148 |
| 77:333 | BEH | lo | 154509/500000 | 154509/500000 | 3324 | 77:106, 77:326, 77:178 |
| 77:334 | BHQ | lo | 154509/500000 | 154509/500000 | 3340 | 77:106, 77:327, 77:218 |
| 77:335 | BHR | lo | 309009/1000000 | 309009/1000000 | 3341 | 77:106, 77:328, 77:220 |
| 77:344 | FPS | lo | 24449/200000 | 5229401441511/42777810527000 | 2643 | 77:21, 77:148, 77:52, 77:22, 77:331, 77:146, 77:204 |
| 77:346 | BCP | lo | 6151/50000 | 823252022691/6691992287000 | 2967 | 77:59, 77:222, 77:64, 77:52, 77:0, 77:332, 77:84 |
| 77:347 | BEP | lo | 6151/50000 | 823252022691/6691992287000 | 2968 | 77:59, 77:222, 77:64, 77:52, 77:2, 77:333, 77:96 |
| 77:348 | BPQ | lo | 6151/50000 | 823252022691/6691992287000 | 2971 | 77:59, 77:222, 77:64, 77:52, 77:10, 77:334, 77:122 |
| 77:349 | BPR | lo | 123019/1000000 | 823243652691/6691992287000 | 2972 | 77:59, 77:222, 77:64, 77:52, 77:12, 77:335, 77:124 |
| 77:351 | AFS | lo | 61649/200000 | 61649/200000 | 3286 | 77:44, 77:64, 77:344 |
| 77:352 | BCH | lo | 15451/50000 | 15451/50000 | 3310 | 77:106, 77:346, 77:148 |
| 77:353 | BEH | lo | 15451/50000 | 15451/50000 | 3324 | 77:106, 77:347, 77:178 |
| 77:354 | BHQ | lo | 15451/50000 | 15451/50000 | 3340 | 77:106, 77:348, 77:218 |
| 77:355 | BHR | lo | 309019/1000000 | 309019/1000000 | 3341 | 77:106, 77:349, 77:220 |
| 77:363 | FPS | lo | 61123/500000 | 5229447941511/42777810527000 | 2643 | 77:21, 77:148, 77:52, 77:22, 77:351, 77:146, 77:204 |
| 77:364 | BPR | lo | 6151/50000 | 823252952691/6691992287000 | 2972 | 77:59, 77:222, 77:64, 77:52, 77:12, 77:355, 77:124 |
| 77:365 | AFS | lo | 154123/500000 | 154123/500000 | 3286 | 77:44, 77:64, 77:363 |
| 77:366 | BHR | lo | 15451/50000 | 15451/50000 | 3341 | 77:106, 77:364, 77:220 |

## Stage 78

| Property | Value |
| --- | --- |
| Scope | root/ACP+/HBP+/APQ-/AEP+/AFP-/APR-/APS- |
| Packet | forest:root/ACP+/HBP+/APQ-/AEP+/AFP-/APR-/APS- |
| Index | 1 |
| Context | 26 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 77 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 33969/250000 | 18223/31250 | 33969/250000 | 18223/31250 |
| b | 107623/1000000 | 36207/100000 | 107623/1000000 | 36207/100000 |
| c | 135501/250000 | 198017/250000 | 135501/250000 | 198017/250000 |
| e | 13027/31250 | 18223/31250 | 13027/31250 | 18223/31250 |
| f | 107623/1000000 | 36207/100000 | 107623/1000000 | 36207/100000 |
| h | 684289/1000000 | 1/1 | 684289/1000000 | 1/1 |
| p | 61123/500000 | 214867/500000 | 61123/500000 | 214867/500000 |
| q | 340039/1000000 | 728249/1000000 | 340039/1000000 | 728249/1000000 |
| u | 808203/1000000 | 1/1 | 808203/1000000 | 1/1 |
| v | 33969/250000 | 190039/500000 | 33969/250000 | 190039/500000 |
| r | 240269/500000 | 971863/1000000 | 240269/500000 | 971863/1000000 |
| w | 116143/200000 | 860529/1000000 | 590327/1000000 | 860529/1000000 |
| j | 97301/250000 | 30977/40000 | 423049/1000000 | 30977/40000 |
| k | 133697/200000 | 1/1 | 133697/200000 | 1/1 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 113 | A_ERS | brtt ["actual-area","ERS",[]] | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 186 | AREA_lo_AFS | brtt ["earlier-area",{"direction":"lo","ref":"77:365","triangle":"AFS","value":"154123/500000"}] | `-1/1 * f * k + 1/1 * a * f + 1/1 * j + -1/1 * a * j + -154123/500000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 186 | j | 97301/250000 | 30977/40000 | 365566978407/864124000000 | 30977/40000 | 423049/1000000 | 30977/40000 | `(216031/250000, -365566978407/1000000000000); (13027/31250, -317431515427/1000000000000); (216031/250000, -50108774063/100000000000); (13027/31250, -33914831243/100000000000); (216031/250000, -100311404313/250000000000); (13027/31250, -11034692321/31250000000); (216031/250000, -15527984417/25000000000); (13027/31250, -1434937339/3125000000)` |
| 1 | 113 | w | 116143/200000 | 860529/1000000 | 113529987247/192317000000 | 860529/1000000 | 590327/1000000 | 860529/1000000 | `(576951/1000000, -232108824783/500000000000); (576951/1000000, -236888230287/500000000000); (576951/1000000, -340589961741/1000000000000); (576951/1000000, -431842363149/1000000000000); (9023/40000, -158870822351/500000000000); (9023/40000, -134438232719/500000000000); (9023/40000, -194113956877/1000000000000); (9023/40000, -226942368013/1000000000000); (576951/1000000, -19888346703/31250000000); (576951/1000000, -20187059547/31250000000); (576951/1000000, -2733732807/7812500000); (576951/1000000, -3446642193/7812500000); (9023/40000, -15310971551/31250000000); (9023/40000, -13783934699/31250000000); (9023/40000, -1589389019/7812500000); (9023/40000, -1845860981/7812500000)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 78:50 | AFS | lo | 154123/500000 | earlier 77:365; AFS; lo; 154123/500000 |
| 78:76 | BCH | lo | 15451/50000 | earlier 77:352; BCH; lo; 15451/50000 |
| 78:88 | BEH | lo | 15451/50000 | earlier 77:353; BEH; lo; 15451/50000 |
| 78:108 | BHQ | lo | 15451/50000 | earlier 77:354; BHQ; lo; 15451/50000 |
| 78:110 | BHR | lo | 15451/50000 | earlier 77:366; BHR; lo; 15451/50000 |
| 78:170 | EFP | lo | 61123/500000 | earlier 77:170; EFP; lo; 61123/500000 |
| 78:206 | FPQ | lo | 61123/500000 | earlier 77:206; FPQ; lo; 61123/500000 |
| 78:208 | FPR | lo | 61123/500000 | earlier 77:208; FPR; lo; 61123/500000 |
| 78:210 | FPS | lo | 61123/500000 | earlier 77:363; FPS; lo; 61123/500000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |


## Stage 79

| Property | Value |
| --- | --- |
| Scope | root/ACP+/HBP+/APQ-/AEP+/AFP-/APR-/APS- |
| Packet | forest:root/ACP+/HBP+/APQ-/AEP+/AFP-/APR-/APS- |
| Index | 2 |
| Context | 26 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 78 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 33969/250000 | 18223/31250 | 33969/250000 | 18223/31250 |
| b | 107623/1000000 | 36207/100000 | 107623/1000000 | 36207/100000 |
| c | 135501/250000 | 198017/250000 | 135501/250000 | 198017/250000 |
| e | 13027/31250 | 18223/31250 | 13027/31250 | 18223/31250 |
| f | 107623/1000000 | 36207/100000 | 107623/1000000 | 36207/100000 |
| h | 684289/1000000 | 1/1 | 684289/1000000 | 1/1 |
| p | 61123/500000 | 214867/500000 | 61123/500000 | 214867/500000 |
| q | 340039/1000000 | 728249/1000000 | 340039/1000000 | 728249/1000000 |
| u | 808203/1000000 | 1/1 | 808203/1000000 | 1/1 |
| v | 33969/250000 | 190039/500000 | 33969/250000 | 190039/500000 |
| r | 240269/500000 | 971863/1000000 | 240269/500000 | 971863/1000000 |
| w | 590327/1000000 | 860529/1000000 | 590327/1000000 | 860529/1000000 |
| j | 423049/1000000 | 30977/40000 | 423049/1000000 | 30977/40000 |
| k | 133697/200000 | 1/1 | 133697/200000 | 1/1 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |


### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |


### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 79:50 | AFS | lo | 154123/500000 | earlier 78:50; AFS; lo; 154123/500000 |
| 79:76 | BCH | lo | 15451/50000 | earlier 78:76; BCH; lo; 15451/50000 |
| 79:88 | BEH | lo | 15451/50000 | earlier 78:88; BEH; lo; 15451/50000 |
| 79:108 | BHQ | lo | 15451/50000 | earlier 78:108; BHQ; lo; 15451/50000 |
| 79:110 | BHR | lo | 15451/50000 | earlier 78:110; BHR; lo; 15451/50000 |
| 79:170 | EFP | lo | 61123/500000 | earlier 78:170; EFP; lo; 61123/500000 |
| 79:206 | FPQ | lo | 61123/500000 | earlier 78:206; FPQ; lo; 61123/500000 |
| 79:208 | FPR | lo | 61123/500000 | earlier 78:208; FPR; lo; 61123/500000 |
| 79:210 | FPS | lo | 61123/500000 | earlier 78:210; FPS; lo; 61123/500000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
